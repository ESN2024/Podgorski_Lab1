#include <sys/alt_stdio.h>
#include <system.h>
#include <altera_avalon_pio_regs.h>
#include <sys/alt_irq.h>
#include <io.h>
#include <alt_types.h>
#include "sys/alt_sys_init.h"

void delay(){

    for(int j=0;j<100000;j++){};
}


void Chenillard(){

    int val_leds=0x01;
    IOWR_ALTERA_AVALON_PIO_DIRECTION(PIO_0_BASE,0x01);

    for(int i=0;i<8;i++){
        IOWR_ALTERA_AVALON_PIO_DATA(PIO_0_BASE,val_leds);
        delay();
        val_leds = val_leds << 1;
    }
    val_leds=0x01;

}


static void irqhandler (void * context, alt_u32 id)
{
    //Chenillard();
    IOWR_ALTERA_AVALON_PIO_DIRECTION(PIO_0_BASE,0x01);
    IOWR_ALTERA_AVALON_PIO_DATA(PIO_0_BASE,0x01);
}

int main(){

    alt_irq_register( PIO_1_IRQ, NULL, (void*)irqhandler );
    while(1){};
    return 0;
}
