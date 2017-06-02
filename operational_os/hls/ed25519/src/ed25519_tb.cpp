#include "stdio.h"
#include "string.h"

void ed25519_sign(unsigned char signature[64], unsigned char microblaze_mem[0x100], size_t blocks_in, const unsigned char public_key[32], const unsigned char private_key[64]);

unsigned char mem[0x100] ={0};
unsigned char sig_out[64] = {0};
unsigned char public_key[32] = {0x24,0xdb,0xba,0xfa,0x9c,0x48,0x02,0xe3,0x28,0xd3,0x3d,0x1f,0xa6,0x4b,0x27,0x48,0x92,0xc4,0x93,0x84,0x1a,0x4f,0xa3,0x1e,0x65,0x1e,0x99,0xf2,0xfe,0x16,0x9b,0xa3};
unsigned char private_key[64] = {0x40,0x62,0xc4,0xdb,0x69,0x5f,0x3d,0xc7,0x55,0x16,0xc5,0xcb,0xad,0x6e,0xe3,0x03,0xae,0x86,0x77,0xe6,0x83,0x32,0x15,0x92,0xf5,0x14,0xc1,0x6d,0x9c,0x07,0x99,0x72,0x34,0xbe,0xb2,0xf8,0x3f,0x36,0xe0,0xd2,0x6c,0x80,0xec,0xbc,0x02,0xfa,0xe7,0x19,0xd2,0x83,0x06,0x57,0xa5,0x71,0x38,0xc4,0x62,0xf9,0x89,0x28,0xf4,0xd7,0x76,0x0b};

int main(){
	int i;
	memset(mem, 0, 0x100);
	memcpy(mem, "test", 4);
	memset(sig_out, 0 , 64);
	ed25519_sign(sig_out, mem, 1, public_key, private_key);
	printf("Sig out:\n");
	for(i=0; i<64; i++){
		printf("%02x", sig_out[i]);
	}
	printf("\n");
	return 0;
}
