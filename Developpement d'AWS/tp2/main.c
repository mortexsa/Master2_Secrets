#include <stdio.h>
#include <stdint.h>

void mystere_product(uint8_t* r, const uint8_t* x, const uint8_t* y);

void main() {
	uint8_t x[] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
	uint8_t y[] = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1};
	uint8_t r[16];
	mystere_product(r,x,y);
	for (int i=0; i<16; i++) printf("%02x", r[i]);
	printf("\n");
}