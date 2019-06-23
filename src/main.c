#include <stdio.h>


#include "hash_table.h"

int main(void) {
	ht_hash_table *ht = ht_new();
	printf("Hash Table created\n");

	ht_delete_hash_table(ht);
	printf("Hash Table deleted\n");

	return 0;
}

