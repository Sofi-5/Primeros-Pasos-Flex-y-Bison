

#include <stdio.h>
#include <ctype.h>

int main(int argc, char *argv[]) {
    int chars = 0, words = 0, lines = 0;
    int in_word = 0;
    int c;

    FILE *fp;

    if (argc > 1) {
        fp = fopen(argv[1], "r");
        if (!fp) {
            perror("Error al abrir el archivo");
            return 1;
        }
    } else {
        fp = stdin;
    }

    while ((c = fgetc(fp)) != EOF) {
        chars++;

        if (c == '\n') {
            lines++;
        }

        if (isspace(c)) {
            in_word = 0;
        } else if (!in_word) {
            words++;
            in_word = 1;
        }
    }

    if (fp != stdin) {
        fclose(fp);
    }

    printf("%8d %8d %8d\n", lines, words, chars);
    return 0;
}


