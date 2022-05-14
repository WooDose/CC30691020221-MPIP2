//bruteforce.c
//nota: el key usado es bastante pequenio, cuando sea random speedup variara

#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#include <unistd.h>
#include <rpc/des_crypt.h>

void decrypt(long key, char *ciph, int len){
  //set parity of key and do decrypt
  long k = 0;
  for(int i=0; i<8; ++i){
    key <<= 1;
    k += (key & (0xFE << i*8));
  }
  des_setparity((char *)&k);  //el poder del casteo y &
  ecb_crypt((char *)&k, (char *) ciph, 16, DES_DECRYPT);
}

void encrypt(long key, char *ciph, int len){
  //set parity of key and do decrypt
  long k = 0;
  for(int i=0; i<8; ++i){
    key <<= 1;
    k += (key & (0xFE << i*8));
  }
  des_setparity((char *)&k);  //el poder del casteo y &
  ecb_crypt((char *)&k, (char *) ciph, 16, DES_ENCRYPT);
}
unsigned char tociph[] = "i use arch btw.";
//unsigned char ciphtext[] = "ã´~ÃÉQÂ¤/OG15=ï¿½ï¿½~ï¿½ï¿½Qï¿½ï¿½ï¿½/OG15=2";


int main(int argc, char *argv[]){ //char **argv
  encrypt(36028797018963969, tociph, strlen(tociph));
  printf("%s\n", tociph);
	for (int i=0; i < strlen(tociph); i++){
		printf("%d, ", tociph[i]);
}
printf("\n------\n");

	for (int i=0; i < strlen(tociph); i++){
		printf("%u ", tociph[i]);
}
}
