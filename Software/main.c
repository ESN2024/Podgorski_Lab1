#include <sys/alt_stdio.h>
#include <system.h>
#include <altera_avalon_pio_regs.h>
#include <sys/alt_irq.h>
#include <io.h>
#include <alt_types.h>
#include "sys/alt_sys_init.h"
#include "unistd.h"
#include <stdbool.h>

__uint32_t sleep_time=10000;
bool flag_chenillard = 0;

void Chenillard(){

    alt_printf("on entre dans la fonction chenillard \n");
    __uint8_t val_leds=0x01;
    IOWR_ALTERA_AVALON_PIO_DATA(PIO_0_BASE,val_leds);

    for(__uint8_t i=0;i<7;i++){
        usleep(sleep_time);
        val_leds = val_leds << 1;
        alt_printf("val leds : %x\n",val_leds);
        IOWR_ALTERA_AVALON_PIO_DATA(PIO_0_BASE,val_leds);
    }
    for(__uint8_t j=0;j<7;j++){
        usleep(sleep_time);
        val_leds = val_leds >> 1;
        IOWR_ALTERA_AVALON_PIO_DATA(PIO_0_BASE,val_leds);
        alt_printf("val leds 2nd phase : %x\n",val_leds);
    }
    usleep(sleep_time);
    IOWR_ALTERA_AVALON_PIO_DATA(PIO_0_BASE,0x00);
}

static void irqhandler_button (void * context, alt_u32 id)
{
    IOWR_ALTERA_AVALON_PIO_EDGE_CAP(PIO_1_BASE, 0x01);
    flag_chenillard=!flag_chenillard;
}


static void irqhandler_switchs (void * context, alt_u32 id)
{
    __uint8_t switchs_vals=0;
    IOWR_ALTERA_AVALON_PIO_EDGE_CAP(PIO_2_BASE, 0x0f);

    __uint8_t masque=0x0f;
    switchs_vals=masque & IORD_ALTERA_AVALON_PIO_DATA(PIO_2_BASE);
    alt_printf("switchsvals : %x\n",switchs_vals);
    sleep_time = switchs_vals * 10000 + 10000;


}


static void init_button_pio()
{

    /* Enable the button interrupts. */
    IOWR_ALTERA_AVALON_PIO_IRQ_MASK(PIO_1_BASE, 0x01);
    /* Reset the edge capture register. */
    IOWR_ALTERA_AVALON_PIO_EDGE_CAP(PIO_1_BASE, 0x01);
    /* Register the ISR. */

    alt_irq_register(PIO_1_IRQ,NULL, (void*)irqhandler_button);
}


static void init_switchs_pio()
{
    __uint8_t switchs_vals=0;
    IOWR_ALTERA_AVALON_PIO_EDGE_CAP(PIO_2_BASE, 0x0f);

    __uint8_t masque=0x0f;
    switchs_vals=masque & IORD_ALTERA_AVALON_PIO_DATA(PIO_2_BASE);
    alt_printf("switchsvals : %x\n",switchs_vals);
    sleep_time = switchs_vals * 10000 + 10000;

    // Enable all 4 switchs interrupts.
    IOWR_ALTERA_AVALON_PIO_IRQ_MASK(PIO_2_BASE, 0x0f);
    // Reset the edge capture register.
    IOWR_ALTERA_AVALON_PIO_EDGE_CAP(PIO_2_BASE, 0x0f);
    // Register the ISR.

    alt_irq_register(PIO_2_IRQ, NULL, (void*)irqhandler_switchs);
}



int main(){
    alt_printf("Hello NIOS II\n");

    // Initialise le processus d'interruption pour le PIO qui controle les bouttons
    init_button_pio();
    init_switchs_pio();

    while(1){

        if(flag_chenillard==1){
            Chenillard();
        }
    }
    return 0;
}
