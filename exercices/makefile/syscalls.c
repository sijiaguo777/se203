#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <errno.h>

int _kill(int pid, int sig) {
    errno = EINVAL;
    return -1;
}

pid_t _getpid(void) {
    return 1;
}