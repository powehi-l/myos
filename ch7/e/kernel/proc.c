#include "type.h"
#include "const.h"
#include "protect.h"
#include "proto.h"
#include "string.h"
#include "proc.h"
#include "global.h"

// schedule
PUBLIC void schedule()
{
  PROCESS* p;
  int greatest_ticks = 0;
  while(greatest_ticks == 0){
    for(p = proc_table; p < proc_table+NR_TASKS; p++) {
      if (p->ticks > greatest_ticks){
        greatest_ticks = p->ticks;
        p_proc_ready = p;
        //disp_int(p->pid);
      }
    }

    if(greatest_ticks == 0) {
      for( p = proc_table; p < proc_table+NR_TASKS; p++) {
        p->ticks = p->priority;
      }
    }
  }
}

//system call get_ticks()
PUBLIC int sys_get_ticks()
{
  return ticks;
}
