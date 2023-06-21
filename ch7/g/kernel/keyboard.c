#include "type.h"
#include "const.h"
#include "protect.h"
#include "proto.h"
#include "string.h"
#include "proc.h"
#include "global.h"
#include "keyboard.h"
#include "keymap.h"

PRIVATE KB_INPUT kb_in;

PRIVATE int code_with_E0 = 0;
PRIVATE int shift_l;
PRIVATE int shift_r;
PRIVATE int alt_l;
PRIVATE int alt_r;
PRIVATE int ctrl_l;
PRIVATE int ctrl_r;
PRIVATE int caps_lock;
PRIVATE int num_lock;
PRIVATE int scroll_lock;
PRIVATE int column;

PRIVATE u8 get_byte_from_kbuf();

// void keyboard_handler(int irq)
PUBLIC void keyboard_handler(int irq)
{
  u8 scan_code = in_byte(KB_DATA);
  //disp_int(scan_code);
  if( kb_in.count < KB_IN_BYTES) {
    *(kb_in.p_head) = scan_code;
    kb_in.p_head++;
    if (kb_in.p_head == kb_in.buf + KB_IN_BYTES){
      kb_in.p_head = kb_in.buf;
    }
    kb_in.count++;
  }
}

// void init_keyboard()
PUBLIC void init_keyboard()
{
  kb_in.count = 0;
  kb_in.p_head = kb_in.p_tail = kb_in.buf;
  code_with_E0 = 0;
  shift_l = shift_r = 0;
  alt_l = alt_r = 0;
  ctrl_l = ctrl_r = 0;

  put_irq_handler(KEYBOARD_IRQ, keyboard_handler);
  enable_irq(KEYBOARD_IRQ);
}

// void keyboard_read()
PUBLIC void keyboard_read()
{
  u8 scan_code;
  char output[2]; //string buffer for print
  int make;       //denote make_code or break_code
                  //
  u32 key = 0;
  u32* keyrow;    //pointing to a row in keymap[]

  if(kb_in.count > 0){
    code_with_E0 = 0;

    scan_code = get_byte_from_kbuf();

    if (scan_code == 0xE1){
      u8 pausebrk_scode[] = {0xE1, 0x1D, 0x45, 0xE1, 0x9D, 0xC5};
      int is_pausebreak = 1;
      for(int i = 1; i < 6; i++){
        if(get_byte_from_kbuf() != pausebrk_scode[i]){
          is_pausebreak = 0;
        }
      }
      if (is_pausebreak) {
        key = PAUSEBREAK;
      }
    }
    else if (scan_code == 0xE0){
      scan_code = get_byte_from_kbuf();

      if (scan_code == 0x2A) {
        if (get_byte_from_kbuf() == 0xE0) {
          if(get_byte_from_kbuf() == 0x37) {
            key = PRINTSCREEN;
            make = 1;
          }
        }
      }

      if (scan_code == 0xB7) {
        if(get_byte_from_kbuf() == 0xE0) {
          if(get_byte_from_kbuf() == 0xAA){
            key = PRINTSCREEN;
            make = 0;
          }
        }
      }

      if(key == 0) {
        code_with_E0 = 1;
      }
    }
    
    if ((key != PAUSEBREAK) && (key != PRINTSCREEN)) {
      make = (scan_code & FLAG_BREAK ? 0 : 1);

      keyrow = &keymap[(scan_code & 0x7F) * MAP_COLS];

      column = 0;
      if(shift_l || shift_r) {
        column = 1;
      }
      if (code_with_E0) {
        column = 2;
        code_with_E0 = 0;
      }

      key = keyrow[column];

      switch(key) {
        case SHIFT_L:
          shift_l = make;
          break;
        case SHIFT_R:
          shift_r = make;
          break;
        case CTRL_L:
          ctrl_l = make;
          break;
        case CTRL_R:
          ctrl_r = make;
          break;
        case ALT_L:
          alt_l = make;
          break;
        case ALT_R:
          alt_r = make;
          break;
        default:
          break;
      }

      if(make){
        key |= shift_l ? FLAG_SHIFT_L : 0;
        key |= shift_r ? FLAG_SHIFT_R : 0;
        key |= ctrl_l ? FLAG_CTRL_L : 0;
        key |= ctrl_r ? FLAG_CTRL_R : 0;
        key |= alt_l ? FLAG_ALT_L : 0;
        key |= alt_r ? FLAG_ALT_R : 0;

        in_process(key);
      }
    }
  }
}


PRIVATE u8 get_byte_from_kbuf()
{
  u8 scan_code;
  while (kb_in.count <= 0) {}
  disable_int();
  scan_code = *(kb_in.p_tail);
  kb_in.p_tail++;
  if(kb_in.p_tail == kb_in.buf + KB_IN_BYTES) {
    kb_in.p_tail = kb_in.buf;
  }
  kb_in.count--;
  enable_int();

  return scan_code;
}
