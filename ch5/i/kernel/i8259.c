#include "type.h"
#include "const.h"
#include "protect.h"
#include "proto.h"

//initial 8259A
//==========================

PUBLIC void init_8259A()
{
    out_byte(INT_M_CTL, 0x11);

    out_byte(INT_S_CTL, 0x11);

    out_byte(INT_M_CTLMASK, INT_VECTOR_IRQ0);

    out_byte(INT_S_CTLMASK, INT_VECTOR_IRQ8);

    out_byte(INT_M_CTLMASK, 0x4);

    out_byte(INT_S_CTLMASK, 0x2);

    out_byte(INT_M_CTLMASK, 0x1);

    out_byte(INT_S_CTLMASK, 0x1);

    out_byte(INT_M_CTLMASK, 0xFD);

    out_byte(INT_S_CTLMASK, 0xFF);
}

PUBLIC void spurious_irq(int irq)
{
        disp_str("spurious_irq: ");
        disp_int(irq);
        disp_str("\n");
}
