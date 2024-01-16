#include <sys/alt_stdio.h>
#include <system.h>
#include <altera_avalon_pio_regs.h>
#include <sys/alt_irq.h>
#include <io.h>
#include <alt_types.h>
#include "sys/alt_sys_init.h"
#include "unistd.h"

void delay(){

    for(int j=0;j<100000;j++){};
}


void Chenillard(){

    alt_printf("on entre dans la fonction chenillard \n");
    int val_leds=0x01;
    //IOWR_ALTERA_AVALON_PIO_DIRECTION(PIO_0_BASE,0x01);

    for(int i=0;i<8;i++){
        alt_printf("iter %x\n",i);
        IOWR_ALTERA_AVALON_PIO_DATA(PIO_0_BASE,val_leds);
        usleep(200000);
        val_leds = val_leds << 1;
    }
    IOWR_ALTERA_AVALON_PIO_DATA(PIO_0_BASE,0x00);
}

static void irqhandler (void * context, alt_u32 id)
{
    alt_printf("%x\n",IORD_ALTERA_AVALON_PIO_EDGE_CAP(PIO_1_BASE));
    IOWR_ALTERA_AVALON_PIO_EDGE_CAP(PIO_1_BASE, 0x01);
    alt_printf("%x\n",IORD_ALTERA_AVALON_PIO_EDGE_CAP(PIO_1_BASE));
    Chenillard();


 //   IOWR_ALTERA_AVALON_PIO_DIRECTION(PIO_0_BASE,0x01);
  //  IOWR_ALTERA_AVALON_PIO_DATA(PIO_0_BASE,0x01);
}


static void init_button_pio()
{

    /* Enable all 4 button interrupts. */
    IOWR_ALTERA_AVALON_PIO_IRQ_MASK(PIO_1_BASE, 0x01);
    /* Reset the edge capture register. */
    IOWR_ALTERA_AVALON_PIO_EDGE_CAP(PIO_1_BASE, 0x01);
    /* Register the ISR. */

    alt_irq_register(PIO_1_IRQ,NULL, (void*)irqhandler);
}



int main(){
    alt_printf("Hello NIOS II\n");
    // Initialise le processus d'interruption pour le PIO qui controle les bouttons
    init_button_pio();

    while(1){};
    return 0;
}
