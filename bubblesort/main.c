#include <stdio.h>
#include <stdlib.h>
void bubblesort(int *v,int size); 
int main(void) {
	int v[] = {3,2,1,34,23,12,6,9,10,44,53,122};
	int size = 12;
	bubblesort(v, size);
	return 0;
}
