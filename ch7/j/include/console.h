#ifndef _CONSOLE_H_
#define _CONSOLE_H_

typedef struct s_console
{
  unsigned int current_start_addr;  //place to be display
  unsigned int original_addr;       //current console's display memory position
  unsigned int v_mem_limit;         //size if current display memory
  unsigned int cursor;              //cursor in current console
}CONSOLE;

#define DEFAULT_CHAR_COLOR 0x07

#endif
