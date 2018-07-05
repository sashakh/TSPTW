#ifndef MTRANDOM_
#define MTRANDOM_
//------------------------------------------------------------------------------
#include "includes.h"
//------------------------------------------------------------------------------
#define MTRANDOM_N 624
#define MTRANDOM_M 397
#define MTRANDOM_MATRIX_A 0x9908b0dfUL   /* constant vector a */
#define MTRANDOM_UPPER_MASK 0x80000000UL /* most significant w-r bits */
#define MTRANDOM_LOWER_MASK 0x7fffffffUL /* least significant r bits */

static unsigned long mtrandom_mt[MTRANDOM_N]; /* the array for the state vector  */
static int mtrandom_mti = MTRANDOM_N+1; /* mti==N+1 means mt[N] is not initialized */

void init_genrand(unsigned long s);
unsigned long genrand_int32(void);

#endif
