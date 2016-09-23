#include <stdio.h>
#include <string.h>
/*
 * saw some folks saying this was a "hard" programming task to filter job applicants 
 * Decided to give it a while, as I haven't coded it before, and haven't written in C in a while
 *   Ruby and Perl have corrupted me :)
 */
int
main(int argc, char **argv) {
	int i;
	char str[10];
	for (i=1; i<=100; i++) {
		str[0] = '\0';
		
		if (i%3 == 0) {
			strcpy(str, "Fizz");
		}
		if (i%5 == 0) {
			strcat(str,"Buzz");
		}
		if (strlen(str)<=0) {
			sprintf(str, "%d", i);
		}
		printf("%s\n", str);
	}
}
