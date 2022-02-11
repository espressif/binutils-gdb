#include <stdio.h>
#include <stdlib.h>
#include <sys/reent.h>

// #include "uart_reg.h"

// #define UART_NUM 0

void ets_write_char_uart(char c);

ssize_t _write_r(void* reent, int fildes, const void *buf, size_t nbyte)
{
    const uint8_t* cbuf = (const uint8_t*) buf;
    for (size_t i = 0; i < nbyte; ++i) {
        ets_write_char_uart(cbuf[i]);
        if (cbuf[i] == '\r') {
            ets_write_char_uart('\n');
        }
    }
    return nbyte;
}

int signal(int sig, void (*func)(void))
{
    return 0;
}

static struct _reent s_reent;

struct _reent* __getreent(void) {
    return _GLOBAL_REENT;
}

void syscalls_init(void)
{
    _GLOBAL_REENT = &s_reent;
    _REENT_INIT_PTR(&s_reent);
}

/* this is a hook used to force linking this file */
void include_syscalls(void)
{
}

