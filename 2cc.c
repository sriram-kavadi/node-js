#include <stdio.h>
#include <string.h>

int main()
{
    char data[100], stuffed[200];
    int i, j = 0;

    printf("Enter the data: ");
    scanf("%s", data);

    // Start delimiter
    stuffed[j++] = 'F';

    for (i = 0; i < strlen(data); i++)
    {
        // If character is F or E, add escape character E
        if (data[i] == 'F' || data[i] == 'E')
        {
            stuffed[j++] = 'E';
        }

        stuffed[j++] = data[i];
    }

    // End delimiter
    stuffed[j++] = 'F';

    stuffed[j] = '\0';

    printf("Original Data  : %s\n", data);
    printf("After Stuffing  : %s\n", stuffed);

    return 0;
}




Enter the data: ABCFDE



Original Data  : ABCFDE
After Stuffing  : FABCEFD E F
