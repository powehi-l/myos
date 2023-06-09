#include "type.h"
#include "const.h"
#include "protect.h"
#include "proto.h"
#include "string.h"
#include "proc.h"
#include "global.h"

PUBLIC int kernel_main()
{
    disp_str("-----\"kernel_main\" begins-----\n");

    TASK*   p_task = task_table;
    PROCESS * p_proc = proc_table;
    char*   p_task_stack = task_stack + STACK_SIZE_TOTAL;
    u16     selector_ldt = SELECTOR_LDT_FIRST;

    for(int i = 0; i < NR_TASKS; i++){
        strcpy(p_proc->p_name, p_task->name);
        p_proc->pid = i;

        p_proc->ldt_sel = selector_ldt;
        memcpy(&p_proc->ldts[0], &gdt[SELECTOR_KERNEL_CS>>3], sizeof(DESCRIPTOR));
        p_proc->ldts[0].attr1 = DA_C | PRIVILEGE_TASK << 5; //chage the DPL
        memcpy(&p_proc->ldts[1], &gdt[SELECTOR_KERNEL_DS>>3], sizeof(DESCRIPTOR));
        p_proc->ldts[1].attr1 = DA_DRW | PRIVILEGE_TASK << 5;

        p_proc->regs.cs = (0 & SA_RPL_MASK & SA_TI_MASK) | SA_TIL | RPL_TASK;
        p_proc->regs.ds = (8 & SA_RPL_MASK & SA_TI_MASK) | SA_TIL | RPL_TASK;
        p_proc->regs.es = (8 & SA_RPL_MASK & SA_TI_MASK) | SA_TIL | RPL_TASK;
        p_proc->regs.fs = (8 & SA_RPL_MASK & SA_TI_MASK) | SA_TIL | RPL_TASK;
        p_proc->regs.ss = (8 & SA_RPL_MASK & SA_TI_MASK) | SA_TIL | RPL_TASK;
        p_proc->regs.gs = (SELECTOR_KERNEL_GS & SA_RPL_MASK) | RPL_TASK;
        p_proc->regs.eip = (u32) p_task->initial_eip;
        p_proc->regs.esp = (u32) p_task_stack;
        p_proc->regs.eflags = 0x1202;

        //modify for next proc
        p_task_stack -= p_task->stacksize;
        p_task++;
        p_proc++;
        selector_ldt += 8;
    }

    proc_table[0].ticks = proc_table[0].priority = 150;
    proc_table[1].ticks = proc_table[1].priority = 50;
    proc_table[2].ticks = proc_table[2].priority = 30;



    k_reenter = 0;

    ticks = 0;

    p_proc_ready = proc_table;

    //initial 8523 PIT to generate clock interrupt
    out_byte(TIMER_MODE, RATE_GENERATOR);
    out_byte(TIMER0, (u8) (TIMER_FREQ/HZ));
    out_byte(TIMER0, (u8) ((TIMER_FREQ/HZ) >> 8));

    //initial the irq table for interrupt and enable clock int
    put_irq_handler(CLOCK_IRQ, clock_handler);
    enable_irq(CLOCK_IRQ);

    disp_pos = 0;
    for(int i = 0; i < 80 * 25; i++)
    {
      disp_str(" ");
    }
    disp_pos = 0;

    restart();

    while(1){
    }
}

void TestA()
{
    int i = 0;
    while(1){
        //disp_str("A.");
        disp_color_str("A.", BRIGHT | MAKE_COLOR(BLACK, RED));
        disp_int(get_ticks());
        //disp_str(".");
        milli_delay(200);
    }
}

void TestB()
{
    int i = 0x1000;
    while(1){
        //disp_str("B.");
        disp_color_str("B.", BRIGHT | MAKE_COLOR(BLACK, RED));
        disp_int(get_ticks());
        //disp_int(i++);
        //disp_str(".");
        milli_delay(200);
    }
}

void TestC()
{
  int i = 0x2000;
  while(1){
    //disp_str("C.");
    disp_color_str("C.", BRIGHT | MAKE_COLOR(BLACK, RED));
    disp_int(get_ticks());
    //disp_int(i++);
    //disp_str(".");
    milli_delay(200);
  }
}
