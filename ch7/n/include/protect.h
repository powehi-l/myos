#ifndef _ORANGES_PROTECT_H_
#define _ORANGES_PROTECT_H_

//define for descriptor
typedef struct s_descriptor
{
    u16 limit_low; //limit 
    u16 base_low; // base_low
    u8 base_mid; //base_mid
    u8 attr1; //P(1), DPL(2), DT(1), TYPE(4)
    u8 limit_high_attr2; //G(1), D(1), O(1), AVL(1) limithigh(4)
    u8 base_high; //base high
}DESCRIPTOR;

//definition of gate structure
typedef struct s_gate
{
    u16 offset_low;
    u16 selector;
    u8 dcount;
    u8 attr;
    u16 offset_high;
}GATE;

typedef struct s_tss{
    u32 backlink;
    u32 esp0;
    u32 ss0;
    u32 esp1;
    u32 ss1;
    u32 esp2;
    u32 ss2;

    u32 cr3;
    u32 eip;
    u32 flags;
    u32 eax;
    u32 ecx;
    u32 edx;
    u32 ebx;
    u32 esp;
    u32 ebp;
    u32 esi;
    u32 edi;
    u32 es;
    u32 cs;
    u32 ss;
    u32 ds;
    u32 fs;
    u32 gs;
    u32 ldt;
    u16 trap;
    u16 iobase;
}TSS;

//vector of descriptor in GDT
#define INDEX_DUMMY 0
#define INDEX_FLAT_C 1
#define INDEX_FLAT_RW 2
#define INDEX_VIDEO 3 //define in loader

#define INDEX_TSS 4 //define in kernel for process
#define INDEX_LDT_FIRST 5

//the selector coresponding to the descriptor
#define SELECTOR_DUMMY 0
#define SELECTOR_FLAT_C 0x08
#define SELECTOR_FLAT_RW 0x10
#define SELECTOR_VIDEO (0x18+3) //define in loader
                                //
#define SELECTOR_TSS 0x20
#define SELECTOR_LDT_FIRST 0x28 //define in kernel for process build

//segment descriptor
#define SELECTOR_KERNEL_CS SELECTOR_FLAT_C
#define SELECTOR_KERNEL_DS SELECTOR_FLAT_RW
#define SELECTOR_KERNEL_GS SELECTOR_VIDEO

//descriptor in each LDT
#define LDT_SIZE 2

//type of selector
#define SA_RPL_MASK 0xFFFC
#define SA_RPL0 0
#define SA_RPL1 1
#define SA_RPL2 2
#define SA_RPL3 3

#define SA_TI_MASK 0xFFFB
#define SA_TIG  0
#define SA_TIL  4

//data type
#define DA_32 0x4000
#define DA_LIMIT_4K 0x8000
#define DA_DPL0 0x00
#define DA_DPL1 0x20
#define DA_DPL2 0x40
#define DA_DPL3 0x60

#define DA_DR 0x90
#define DA_DRW 0x92
#define DA_DRWA 0x93
#define DA_C 0x98
#define DA_CR 0x9A
#define DA_CCO 0x9C
#define DA_CCOR 0x9E

#define DA_LDT 0x82
#define DA_TaskGate 0x85
#define DA_386TSS 0x89
#define DA_386Gate 0x8C
#define DA_386IGate 0x8E
#define DA_386TGate 0x8F

#define INT_VECTOR_DIVIDE 0x0
#define INT_VECTOR_DEBUG 0x1
#define INT_VECTOR_NMI 0x2
#define INT_VECTOR_BREAKPOINT 0x3
#define INT_VECTOR_OVERFLOW 0x4
#define INT_VECTOR_BOUNDS 0x5
#define INT_VECTOR_INVAL_OP 0x6
#define INT_VECTOR_COPROC_NOT 0x7
#define INT_VECTOR_DOUBLE_FAULT 0x8
#define INT_VECTOR_COPROC_SEG 0x9
#define INT_VECTOR_INVAL_TSS 0xA
#define INT_VECTOR_SEG_NOT 0xB
#define INT_VECTOR_STACK_FAULT  0xC
#define INT_VECTOR_PROTECTION 0xD
#define INT_VECTOR_PAGE_FAULT   0xE
#define INT_VECTOR_COPROC_ERR 0x10

//interrupt vector
#define INT_VECTOR_IRQ0 0x20
#define INT_VECTOR_IRQ8 0x28

//system call
#define INT_VECTOR_SYS_CALL 0x90

#define vir2phys(seg_base, vir) (u32)(((u32)seg_base) + (u32)(vir))

#endif
