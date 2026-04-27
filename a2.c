#include <unistd.h>
#include <stdio.h>

int main() {
    int fd[2];
    char msg[] = "Hello";

    pipe(fd);

    write(fd[1], msg, 5);   // write to pipe
    read(fd[0], msg, 5);    // read from pipe

    printf("%s\n", msg);

    return 0;
}
