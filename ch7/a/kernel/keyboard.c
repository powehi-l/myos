#include "type.h"
#include "const.h"
#include "protect.h"
#include "proto.h"
#include "string.h"
#include "proc.h"
#include "global.h"

// void keyboard_handler(int irq)
PUBLIC void keyboard_handler(int irq)
{
  disp_str("*");
}

// void init_keyboard()
PUBLIC void init_keyboard()
{
  put_irq_handler(KEYBOARD_IRQ, keyboard_handler);
  enable_irq(KEYBOARD_IRQ);
}
