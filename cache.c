#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

extern void memaccess(uint8_t *mem, unsigned secret);

static inline uint64_t rdtsc() {
  uint64_t a, d;
  asm volatile("rdtsc" : "=a"(a), "=d"(d));
  return ((unsigned long)a) | (((unsigned long)d) << 32);
}

int main(int argc, char** argv) {
  uint8_t *mem;
  /* get 12 MB, with an address multiple of 4096 */
  posix_memalign((void **)&mem, 4096, 4096 * 3);
  // printf("memory address: %p\n", mem);

  for (unsigned offset = 0; offset < 4096; offset += 64) {
    /* access the memory once to get proper timings */
    memaccess(mem + offset, 0);

    uint64_t aligendAccessTime, unalignedAccessTime = 0;
    for (unsigned secret = 0; secret < 8; secret++) {
      const uint64_t start = rdtsc();
      memaccess(mem + offset, secret);
      const uint64_t end = rdtsc();
      printf("%lu\n", end - start);
    }
  }

  free(mem);

  return 0;
}