#include <string.h>
#include <stdint.h>
#include <stdio.h>
#include <setjmp.h>
#include <stdlib.h>

extern char _end;
extern char __bss_start;

//extern int main(int argc, const char** argv);
extern void syscalls_init(void);
extern void ets_delay_us(uint32_t us);

void entry()
{
    /* give us a bit of time to connect with miniterm after esptool.py load_ram is done */
    ets_delay_us(4000000);

    /* try to re-initialize everything */
    memset(&__bss_start, 0, &_end - &__bss_start);
    syscalls_init();

    main();
    exit(0);
}

void usleep(uint32_t us)
{
    ets_delay_us(us);
}

void sleep(uint32_t s)
{
    ets_delay_us(s*1000000);
}
