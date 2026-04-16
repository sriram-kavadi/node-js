#include <stdio.h>
#include <sys/ipc.h>
#include <sys/shm.h>

int main() {
    int shmid;
    char *str;

    // Create shared memory
    shmid = shmget(1234, 100, 0666 | IPC_CREAT);

    // Attach
    str = (char*) shmat(shmid, NULL, 0);

    // Write
    printf("Enter message: ");
    scanf("%s", str);

    // Read
    printf("Message from shared memory: %s\n", str);

    // Detach
    shmdt(str);

    // Delete shared memory
    shmctl(shmid, IPC_RMID, NULL);

    return 0;
}
