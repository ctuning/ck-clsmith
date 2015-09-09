// ---fake_divergence ---inter_thread_comm -g 39,73,3 -l 39,1,1
#define int64_t long
#define uint64_t ulong
#define int_least64_t long
#define uint_least64_t ulong
#define int_fast64_t long
#define uint_fast64_t ulong
#define intmax_t long
#define uintmax_t ulong
#define int32_t int
#define uint32_t uint
#define int16_t short
#define uint16_t ushort
#define int8_t char
#define uint8_t uchar

#define INT64_MIN LONG_MIN
#define INT64_MAX LONG_MAX
#define INT32_MIN INT_MIN
#define INT32_MAX INT_MAX
#define INT16_MIN SHRT_MIN
#define INT16_MAX SHRT_MAX
#define INT8_MIN CHAR_MIN
#define INT8_MAX CHAR_MAX
#define UINT64_MIN ULONG_MIN
#define UINT64_MAX ULONG_MAX
#define UINT32_MIN UINT_MIN
#define UINT32_MAX UINT_MAX
#define UINT16_MIN USHRT_MIN
#define UINT16_MAX USHRT_MAX
#define UINT8_MIN UCHAR_MIN
#define UINT8_MAX UCHAR_MAX

#define transparent_crc(X, Y, Z) transparent_crc_(&crc64_context, X, Y, Z)

#define VECTOR(X , Y) VECTOR_(X, Y)
#define VECTOR_(X, Y) X##Y

#ifndef NO_GROUP_DIVERGENCE
#define GROUP_DIVERGE(x, y) get_group_id(x)
#else
#define GROUP_DIVERGE(x, y) (y)
#endif

#ifndef NO_FAKE_DIVERGENCE
#define FAKE_DIVERGE(x, y, z) (x - y)
#else
#define FAKE_DIVERGE(x, y, z) (z)
#endif

__constant uint32_t permutations[10][39] = {
{30,17,5,18,12,29,14,38,9,6,11,24,34,25,3,8,23,0,31,26,10,22,16,36,2,1,27,35,13,20,4,21,33,37,7,28,32,15,19}, // permutation 0
{27,0,37,26,6,11,3,4,10,25,33,19,38,34,36,13,16,12,15,21,2,29,22,7,23,5,8,35,9,32,30,14,24,31,18,1,28,20,17}, // permutation 1
{25,13,11,21,6,23,29,16,1,27,17,32,34,4,10,30,24,33,37,7,38,28,35,5,9,12,19,15,36,3,18,22,31,26,2,8,14,0,20}, // permutation 2
{14,22,33,1,11,36,34,27,4,37,5,8,21,30,2,29,38,31,19,15,26,7,13,20,24,9,10,0,32,16,12,6,25,23,3,35,28,18,17}, // permutation 3
{23,27,28,10,6,8,19,18,3,14,12,38,13,29,5,24,37,34,15,17,36,25,20,1,32,11,9,2,21,7,16,31,30,22,4,35,26,0,33}, // permutation 4
{33,35,31,12,28,23,21,6,19,14,15,37,17,7,30,27,38,5,8,22,24,11,16,2,25,34,9,36,10,32,20,3,26,4,0,29,18,13,1}, // permutation 5
{33,20,10,19,7,5,24,30,38,9,34,22,15,21,11,0,14,35,28,13,6,26,17,12,8,18,36,25,16,4,27,3,23,37,32,2,1,31,29}, // permutation 6
{33,36,3,29,15,35,2,5,25,17,7,8,14,21,1,26,20,4,24,11,31,28,30,12,38,18,34,9,32,37,13,23,27,6,19,0,10,22,16}, // permutation 7
{10,36,15,18,27,16,31,23,13,22,29,20,28,2,34,26,32,3,12,0,7,17,5,14,24,25,33,4,30,6,9,38,21,37,35,19,8,11,1}, // permutation 8
{38,5,11,7,33,13,8,25,0,18,1,21,31,27,34,9,28,4,15,35,10,20,32,17,19,24,30,14,37,12,23,16,29,6,26,3,2,22,36} // permutation 9
};

// Seed: 16

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   volatile int64_t  f0;
   volatile int64_t  f1;
   volatile uint64_t  f2;
};

union U1 {
   volatile int64_t  f0;
   volatile int64_t  f1;
   int32_t  f2;
};

union U2 {
   volatile int64_t  f0;
   int64_t  f1;
   uint32_t  f2;
   uint64_t  f3;
   int32_t  f4;
};

struct S3 {
    volatile int32_t g_3;
    int32_t g_5;
    uint32_t g_8[4];
    uint64_t g_24;
    uint16_t g_51[3][7][4];
    uint8_t g_74;
    int16_t g_76[10][3][8];
    uint64_t g_78;
    uint16_t g_83;
    uint16_t *g_85;
    int32_t g_102;
    int32_t * volatile g_101;
    uint8_t g_157;
    uint32_t g_159;
    int32_t ** volatile g_167;
    volatile uint16_t g_168[6];
    volatile union U2 g_171;
    int32_t g_188;
    int32_t *g_190[5];
    int32_t ** volatile g_189;
    volatile union U1 g_203;
    int64_t *g_219;
    int32_t g_246;
    union U0 g_251;
    union U0 g_257;
    int16_t g_261[5][5][7];
    uint32_t g_291[9][6];
    union U2 g_310;
    int32_t ** volatile g_321;
    volatile int16_t g_344;
    volatile union U0 g_376;
    int32_t g_392;
    int8_t g_411;
    int32_t **g_416;
    volatile union U2 g_444;
    int32_t *g_469;
    int32_t **g_468;
    int32_t *** volatile g_467;
    int16_t **g_492;
    int16_t *g_495;
    int16_t **g_494;
    uint16_t *g_510;
    int8_t g_537;
    int64_t g_538[1][1][6];
    int32_t g_539;
    volatile uint16_t *g_546;
    volatile uint16_t ** volatile g_545;
    int32_t ** volatile g_560;
    int64_t **g_568;
    int64_t *** volatile g_567;
    uint64_t *g_606;
    volatile union U1 g_622;
    uint64_t g_634;
    int32_t ** volatile g_637;
    volatile union U1 g_648[2][4][1];
    uint32_t g_653;
    union U1 g_731;
    int16_t g_743;
    union U0 g_764[5][10];
    uint32_t g_771[8][9];
    int64_t g_815;
    union U0 g_846;
    int64_t *** volatile g_852;
    volatile uint32_t g_882;
    volatile uint32_t *g_881[1];
    volatile uint32_t **g_880[5];
    volatile uint32_t ***g_879;
    uint32_t g_885[8];
    union U0 g_911;
    uint32_t g_936[9];
    union U2 *g_943;
    union U2 ** volatile g_942[4];
    union U2 ** volatile g_944;
    volatile union U2 g_947;
    volatile int8_t g_1013;
    int16_t *** volatile g_1034;
    int16_t *** volatile g_1035;
    volatile union U2 g_1094;
    volatile union U0 g_1123[5][1];
    int16_t g_1138;
    volatile union U2 g_1161;
    uint32_t g_1191[3];
    union U0 *g_1258;
    union U0 ** volatile g_1257[4];
    union U0 ** volatile g_1259;
    uint64_t g_1278;
    union U0 g_1324[8][9][3];
    volatile union U0 g_1341;
    volatile union U1 g_1347;
    int32_t ** volatile g_1371;
    volatile int32_t g_1387;
    volatile uint32_t g_1442[3];
    volatile uint32_t *g_1441;
    volatile uint32_t ** volatile g_1440;
    int8_t g_1451;
    volatile union U2 g_1462;
    volatile union U2 g_1523[1][2][9];
    union U0 g_1524;
    int32_t **g_1539;
    int8_t g_1541;
    union U1 g_1552[5];
    union U2 g_1574;
    int32_t ***g_1581[10];
    volatile union U2 g_1588;
    volatile union U0 g_1631[2][9][1];
    volatile union U0 g_1654;
    int64_t * volatile g_1703;
    int64_t * volatile *g_1702;
    union U2 ** volatile g_1727[4][9];
    union U2 ** volatile g_1728;
    volatile uint8_t g_1734;
    int32_t ** volatile g_1808;
    volatile int32_t g_1823;
    uint32_t g_1825[5][6][4];
    volatile union U0 g_1858;
    uint32_t g_1868;
    int32_t ** volatile g_1908;
    volatile int16_t g_1976;
    uint32_t *g_2007;
    uint32_t **g_2006[6][6][7];
    int32_t ** volatile g_2017;
    union U2 ** volatile g_2019;
    int32_t * volatile g_2044;
    union U0 g_2051;
    union U2 g_2064;
    int32_t * volatile g_2092[9];
    int32_t * volatile g_2093[8][7][3];
    int32_t g_2158;
    int32_t ** volatile g_2168;
    int64_t **g_2179;
    volatile union U2 g_2188;
    int32_t ** volatile g_2273;
    union U2 g_2318;
    union U0 ** volatile g_2360[5][5][1];
    union U0 g_2374[3];
    union U0 g_2375;
    union U0 g_2376;
    union U0 g_2377;
    union U0 g_2378[2];
    union U0 g_2379;
    union U0 g_2380;
    union U0 g_2382;
    union U1 *g_2406;
    union U1 g_2415;
    union U1 g_2451;
    union U1 ** volatile g_2537;
    union U1 ** volatile g_2538;
    union U0 g_2540;
    volatile union U1 g_2576[8];
    int32_t ** volatile g_2582;
    volatile int32_t g_2593;
    int8_t g_2606;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    uint32_t tid;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
uint32_t  func_1(struct S3 * p_2607);
uint64_t  func_11(uint32_t  p_12, uint16_t  p_13, int32_t * p_14, uint8_t  p_15, int32_t * p_16, struct S3 * p_2607);
int8_t  func_19(int32_t  p_20, struct S3 * p_2607);
int16_t  func_29(uint64_t * p_30, uint64_t * p_31, struct S3 * p_2607);
uint64_t * func_32(uint64_t * p_33, struct S3 * p_2607);
uint64_t * func_34(int32_t  p_35, struct S3 * p_2607);
int32_t  func_36(int64_t  p_37, int32_t  p_38, int32_t  p_39, uint64_t * p_40, struct S3 * p_2607);
uint64_t  func_44(int32_t * p_45, int32_t * p_46, uint16_t  p_47, int32_t * p_48, struct S3 * p_2607);
int32_t * func_52(uint32_t  p_53, uint16_t * p_54, uint16_t * p_55, struct S3 * p_2607);
uint32_t  func_56(int16_t  p_57, uint64_t * p_58, uint32_t  p_59, int32_t * p_60, int16_t  p_61, struct S3 * p_2607);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2607->g_8 p_2607->g_5 p_2607->l_comm_values p_2607->g_102 p_2607->g_653 p_2607->g_510 p_2607->g_83 p_2607->g_189 p_2607->g_190 p_2607->g_1825 p_2607->g_1574.f1 p_2607->g_1442 p_2607->g_2318 p_2607->g_203 p_2607->g_1035 p_2607->g_494 p_2607->g_495 p_2607->g_261 p_2607->g_1976 p_2607->g_947.f0 p_2607->g_885 p_2607->g_321 p_2607->g_101 p_2607->g_2415 p_2607->g_291 p_2607->g_2451 p_2607->g_2158 p_2607->g_157 p_2607->g_538 p_2607->g_606 p_2607->g_78 p_2607->g_1191 p_2607->g_545 p_2607->g_546 p_2607->g_168 p_2607->g_85 p_2607->g_188 p_2607->g_411 p_2607->g_1462.f0 p_2607->g_74 p_2607->g_2540 p_2607->g_539 p_2607->g_771 p_2607->g_467 p_2607->g_468 p_2607->g_2406 p_2607->g_159 p_2607->g_2576 p_2607->g_2582 p_2607->g_560 p_2607->g_2064.f4 p_2607->g_2606
 * writes: p_2607->g_3 p_2607->g_8 p_2607->g_5 p_2607->g_1541 p_2607->g_83 p_2607->g_1574.f1 p_2607->g_392 p_2607->g_1451 p_2607->g_74 p_2607->g_102 p_2607->g_885 p_2607->g_2406 p_2607->g_538 p_2607->g_2064.f4 p_2607->g_2158 p_2607->g_159 p_2607->g_219 p_2607->g_411 p_2607->g_190 p_2607->g_78 p_2607->g_539 p_2607->g_310.f4
 */
uint32_t  func_1(struct S3 * p_2607)
{ /* block id: 4 */
    uint64_t l_2[4] = {0x565E08CCCDDD1D8FL,0x565E08CCCDDD1D8FL,0x565E08CCCDDD1D8FL,0x565E08CCCDDD1D8FL};
    int32_t *l_4 = &p_2607->g_5;
    int32_t *l_6 = (void*)0;
    int32_t *l_7[4];
    int8_t *l_2295 = &p_2607->g_1541;
    uint32_t l_2605 = 4294967294UL;
    int i;
    for (i = 0; i < 4; i++)
        l_7[i] = &p_2607->g_5;
    for (p_2607->g_3 = 0; p_2607->g_3 < 4; p_2607->g_3 += 1)
    {
        l_2[p_2607->g_3] = 4UL;
    }
    p_2607->g_8[1]++;
    p_2607->g_5 ^= p_2607->g_8[1];
    (*l_4) = ((func_11((p_2607->g_8[1] ^ ((0x4F4CC511EC1FCC8AL || (safe_lshift_func_int8_t_s_u(((*l_2295) = func_19(p_2607->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2607->tid, 39))], p_2607)), 7))) >= p_2607->g_653)), ((*p_2607->g_510)++), (*p_2607->g_189), p_2607->g_1825[0][4][3], l_4, p_2607) & l_2605) || (*p_2607->g_546));
    return p_2607->g_2606;
}


/* ------------------------------------------ */
/* 
 * reads : p_2607->g_1574.f1 p_2607->g_1442 p_2607->g_2318 p_2607->g_203 p_2607->g_5 p_2607->g_1035 p_2607->g_494 p_2607->g_495 p_2607->g_261 p_2607->g_1976 p_2607->g_947.f0 p_2607->g_510 p_2607->g_83 p_2607->g_885 p_2607->g_321 p_2607->g_190 p_2607->g_101 p_2607->g_102 p_2607->g_2415 p_2607->g_291 p_2607->g_2451 p_2607->g_2158 p_2607->g_157 p_2607->g_538 p_2607->g_606 p_2607->g_78 p_2607->g_1191 p_2607->g_545 p_2607->g_546 p_2607->g_168 p_2607->l_comm_values p_2607->g_85 p_2607->g_188 p_2607->g_411 p_2607->g_1462.f0 p_2607->g_74 p_2607->g_2540 p_2607->g_539 p_2607->g_771 p_2607->g_467 p_2607->g_468 p_2607->g_2406 p_2607->g_159 p_2607->g_2576 p_2607->g_189 p_2607->g_2582 p_2607->g_560 p_2607->g_2064.f4
 * writes: p_2607->g_1574.f1 p_2607->g_392 p_2607->g_1451 p_2607->g_5 p_2607->g_74 p_2607->g_102 p_2607->g_885 p_2607->g_2406 p_2607->g_538 p_2607->g_2064.f4 p_2607->g_83 p_2607->g_2158 p_2607->g_159 p_2607->g_219 p_2607->g_411 p_2607->g_190 p_2607->g_78 p_2607->g_539 p_2607->g_1541 p_2607->g_310.f4
 */
uint64_t  func_11(uint32_t  p_12, uint16_t  p_13, int32_t * p_14, uint8_t  p_15, int32_t * p_16, struct S3 * p_2607)
{ /* block id: 1026 */
    int32_t l_2298 = 0x5B922382L;
    uint64_t *l_2315 = &p_2607->g_78;
    int32_t l_2328 = 0x2DE5E301L;
    int32_t l_2329 = 1L;
    int32_t l_2337 = 0x1D18C644L;
    int32_t l_2338 = 0x54522F65L;
    int32_t l_2350 = 0x6F8F58EDL;
    int32_t l_2355 = 0x6D2EA046L;
    uint8_t l_2502 = 1UL;
    int32_t *l_2563 = (void*)0;
    int32_t l_2587 = 0L;
    int32_t l_2588 = (-5L);
    int32_t l_2589 = 0L;
    int32_t l_2590 = 0L;
    int32_t l_2591 = (-1L);
    int32_t l_2592[10][8];
    int32_t **l_2604 = &p_2607->g_190[2];
    int i, j;
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 8; j++)
            l_2592[i][j] = 1L;
    }
    if (l_2298)
    { /* block id: 1027 */
        uint64_t *l_2314 = (void*)0;
        int32_t l_2324 = 1L;
        int32_t l_2343 = 0x4D6933B1L;
        int32_t l_2345 = 3L;
        int32_t l_2354 = 0x419E307FL;
        union U0 *l_2381 = &p_2607->g_2382;
        uint32_t *l_2402 = &p_2607->g_936[0];
        uint32_t **l_2401 = &l_2402;
        int32_t l_2443[10] = {0L,0x1A9C79AAL,0L,0L,0x1A9C79AAL,0L,0L,0x1A9C79AAL,0L,0L};
        uint8_t l_2444 = 0x61L;
        int32_t *l_2583 = (void*)0;
        int32_t *l_2584 = &p_2607->g_2318.f4;
        int32_t *l_2585 = (void*)0;
        int32_t *l_2586[8] = {&p_2607->g_246,&p_2607->g_246,&p_2607->g_246,&p_2607->g_246,&p_2607->g_246,&p_2607->g_246,&p_2607->g_246,&p_2607->g_246};
        uint64_t l_2594 = 18446744073709551608UL;
        int i;
        for (p_2607->g_1574.f1 = 0; (p_2607->g_1574.f1 >= 24); p_2607->g_1574.f1 = safe_add_func_uint64_t_u_u(p_2607->g_1574.f1, 3))
        { /* block id: 1030 */
            int16_t l_2325 = 0x18D2L;
            int32_t l_2330 = 9L;
            int32_t l_2331 = (-10L);
            int32_t l_2332 = 0x7DC50229L;
            int32_t l_2333 = 0x554EEFEBL;
            int32_t l_2334 = 0x50E4FFD1L;
            int32_t l_2336 = 0x19424C8EL;
            int32_t l_2341 = 0x04678F42L;
            int32_t l_2342 = 7L;
            int32_t l_2346 = 1L;
            int32_t l_2347 = 0x69B15F8DL;
            int32_t l_2348 = 0x12EBD036L;
            int32_t l_2353 = 0x0846F0A6L;
            union U0 *l_2359 = &p_2607->g_764[2][3];
            int32_t ****l_2392 = (void*)0;
            int32_t *****l_2391 = &l_2392;
            uint8_t **l_2408 = (void*)0;
            uint8_t *l_2410 = &p_2607->g_74;
            uint8_t **l_2409 = &l_2410;
            uint32_t l_2465 = 0x9AFB550FL;
            uint32_t *l_2479[7][5][5] = {{{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0},{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0},{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0},{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0},{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0}},{{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0},{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0},{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0},{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0},{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0}},{{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0},{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0},{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0},{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0},{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0}},{{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0},{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0},{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0},{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0},{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0}},{{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0},{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0},{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0},{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0},{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0}},{{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0},{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0},{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0},{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0},{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0}},{{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0},{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0},{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0},{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0},{&p_2607->g_936[4],&p_2607->g_936[4],(void*)0,&p_2607->g_936[0],(void*)0}}};
            uint16_t *l_2503 = &p_2607->g_51[2][4][0];
            int64_t l_2529 = 1L;
            int64_t *l_2530 = &p_2607->g_1574.f1;
            int i, j, k;
            for (p_2607->g_392 = 26; (p_2607->g_392 >= (-6)); p_2607->g_392 = safe_sub_func_int16_t_s_s(p_2607->g_392, 8))
            { /* block id: 1033 */
                int16_t l_2305 = 8L;
                int32_t **l_2320 = &p_2607->g_469;
                int32_t l_2335 = (-1L);
                int32_t l_2339 = 0x23448A4DL;
                int32_t l_2344 = 0x3D563365L;
                int32_t l_2352 = 1L;
                uint8_t l_2356 = 0x27L;
                uint8_t *l_2372 = &p_2607->g_74;
                union U0 *l_2373[4][6][4] = {{{&p_2607->g_2375,&p_2607->g_2375,&p_2607->g_2377,&p_2607->g_2374[1]},{&p_2607->g_2375,&p_2607->g_2375,&p_2607->g_2377,&p_2607->g_2374[1]},{&p_2607->g_2375,&p_2607->g_2375,&p_2607->g_2377,&p_2607->g_2374[1]},{&p_2607->g_2375,&p_2607->g_2375,&p_2607->g_2377,&p_2607->g_2374[1]},{&p_2607->g_2375,&p_2607->g_2375,&p_2607->g_2377,&p_2607->g_2374[1]},{&p_2607->g_2375,&p_2607->g_2375,&p_2607->g_2377,&p_2607->g_2374[1]}},{{&p_2607->g_2375,&p_2607->g_2375,&p_2607->g_2377,&p_2607->g_2374[1]},{&p_2607->g_2375,&p_2607->g_2375,&p_2607->g_2377,&p_2607->g_2374[1]},{&p_2607->g_2375,&p_2607->g_2375,&p_2607->g_2377,&p_2607->g_2374[1]},{&p_2607->g_2375,&p_2607->g_2375,&p_2607->g_2377,&p_2607->g_2374[1]},{&p_2607->g_2375,&p_2607->g_2375,&p_2607->g_2377,&p_2607->g_2374[1]},{&p_2607->g_2375,&p_2607->g_2375,&p_2607->g_2377,&p_2607->g_2374[1]}},{{&p_2607->g_2375,&p_2607->g_2375,&p_2607->g_2377,&p_2607->g_2374[1]},{&p_2607->g_2375,&p_2607->g_2375,&p_2607->g_2377,&p_2607->g_2374[1]},{&p_2607->g_2375,&p_2607->g_2375,&p_2607->g_2377,&p_2607->g_2374[1]},{&p_2607->g_2375,&p_2607->g_2375,&p_2607->g_2377,&p_2607->g_2374[1]},{&p_2607->g_2375,&p_2607->g_2375,&p_2607->g_2377,&p_2607->g_2374[1]},{&p_2607->g_2375,&p_2607->g_2375,&p_2607->g_2377,&p_2607->g_2374[1]}},{{&p_2607->g_2375,&p_2607->g_2375,&p_2607->g_2377,&p_2607->g_2374[1]},{&p_2607->g_2375,&p_2607->g_2375,&p_2607->g_2377,&p_2607->g_2374[1]},{&p_2607->g_2375,&p_2607->g_2375,&p_2607->g_2377,&p_2607->g_2374[1]},{&p_2607->g_2375,&p_2607->g_2375,&p_2607->g_2377,&p_2607->g_2374[1]},{&p_2607->g_2375,&p_2607->g_2375,&p_2607->g_2377,&p_2607->g_2374[1]},{&p_2607->g_2375,&p_2607->g_2375,&p_2607->g_2377,&p_2607->g_2374[1]}}};
                union U0 **l_2383 = &l_2381;
                int i, j, k;
                for (l_2298 = 0; (l_2298 <= 2); l_2298 += 1)
                { /* block id: 1036 */
                    int32_t **l_2319 = &p_2607->g_469;
                    int32_t l_2322 = 7L;
                    int32_t l_2340 = 0x3FBCD18AL;
                    int32_t l_2349 = 0x487CD3A2L;
                    union U0 **l_2361 = &l_2359;
                    int i;
                    if (p_2607->g_1442[l_2298])
                    { /* block id: 1037 */
                        int8_t *l_2321 = &p_2607->g_1451;
                        int32_t l_2323[6] = {0x711769AAL,0x711769AAL,0x711769AAL,0x711769AAL,0x711769AAL,0x711769AAL};
                        int32_t *l_2326 = &p_2607->g_5;
                        int32_t *l_2327[9][5];
                        int32_t l_2351 = 0L;
                        int i, j;
                        for (i = 0; i < 9; i++)
                        {
                            for (j = 0; j < 5; j++)
                                l_2327[i][j] = &p_2607->g_2064.f4;
                        }
                        (*p_16) &= ((((safe_lshift_func_uint16_t_u_s(l_2305, ((safe_mul_func_int16_t_s_s((safe_mod_func_int16_t_s_s((safe_div_func_int8_t_s_s(0L, (safe_sub_func_int32_t_s_s(((l_2315 = l_2314) != (l_2305 , (void*)0)), (((safe_lshift_func_int16_t_s_s((((p_2607->g_2318 , p_13) || ((p_2607->g_203 , (l_2322 = ((*l_2321) = (l_2319 == l_2320)))) ^ p_15)) | l_2298), 12)) > p_15) == p_12))))), p_13)), 0x3EBEL)) && l_2323[2]))) || 255UL) & l_2324) & 0xF3B2034EL);
                        l_2356++;
                    }
                    else
                    { /* block id: 1043 */
                        (*p_16) &= ((***p_2607->g_1035) && l_2339);
                    }
                    (*l_2361) = l_2359;
                    for (l_2345 = 0; (l_2345 <= 2); l_2345 += 1)
                    { /* block id: 1049 */
                        (*p_16) = 0x5237A9FFL;
                    }
                }
                if (((safe_sub_func_uint64_t_u_u(((((safe_sub_func_uint16_t_u_u((FAKE_DIVERGE(p_2607->local_1_offset, get_local_id(1), 10) & l_2343), (-1L))) ^ (safe_rshift_func_uint8_t_u_u(p_2607->g_1976, 2))) >= l_2329) == (safe_add_func_uint32_t_u_u((l_2354 == ((*l_2372) = (safe_lshift_func_uint8_t_u_s(GROUP_DIVERGE(2, 1), 5)))), 4294967295UL))), (((l_2373[3][1][3] != ((*l_2383) = l_2381)) >= (safe_mul_func_uint8_t_u_u(((*p_16) <= (*p_14)), 255UL))) >= 0L))) & p_15))
                { /* block id: 1055 */
                    (*p_16) ^= (safe_unary_minus_func_int8_t_s((0x0F57L >= l_2355)));
                }
                else
                { /* block id: 1057 */
                    union U1 *l_2407 = &p_2607->g_1552[1];
                    for (p_2607->g_102 = 0; (p_2607->g_102 <= 3); p_2607->g_102 += 1)
                    { /* block id: 1060 */
                        uint8_t l_2399 = 250UL;
                        uint32_t *l_2400 = &p_2607->g_885[3];
                        int32_t l_2403[2];
                        union U1 *l_2404 = &p_2607->g_731;
                        union U1 **l_2405[3][8][9] = {{{&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404},{&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404},{&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404},{&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404},{&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404},{&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404},{&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404},{&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404}},{{&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404},{&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404},{&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404},{&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404},{&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404},{&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404},{&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404},{&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404}},{{&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404},{&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404},{&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404},{&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404},{&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404},{&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404},{&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404},{&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404,&l_2404}}};
                        int i, j, k;
                        for (i = 0; i < 2; i++)
                            l_2403[i] = 0x211DEE86L;
                        (*p_14) = 0x0BEA6C35L;
                        if (l_2335)
                            break;
                        (*p_14) = (l_2403[1] = ((l_2337 == p_13) & ((safe_lshift_func_uint16_t_u_s(((((safe_add_func_uint8_t_u_u((l_2391 != (void*)0), (safe_rshift_func_int8_t_s_u(p_2607->g_947.f0, 3)))) , (((!(safe_div_func_uint32_t_u_u(((*l_2400) ^= ((safe_sub_func_int64_t_s_s((p_12 != (l_2399 , l_2337)), 0x1D5326D52B07B2EBL)) == (*p_2607->g_510))), (*p_14)))) , (void*)0) != l_2401)) || 0x18B2L) < 1L), p_12)) & 0x71L)));
                        l_2407 = (p_2607->g_2406 = l_2404);
                    }
                }
            }
            (**p_2607->g_321) ^= (((*l_2409) = &p_15) != (void*)0);
            if ((*p_2607->g_101))
                break;
            if ((l_2353 ^= 0x079A24FAL))
            { /* block id: 1075 */
                int8_t l_2420 = 2L;
                int64_t *l_2421 = &p_2607->g_538[0][0][3];
                int64_t l_2426 = 0x2AA7ED42B4A4540CL;
                int32_t l_2428 = 0x56DFD5E3L;
                int32_t l_2440 = 0x1D316B31L;
                int32_t l_2441 = 0x254A45BCL;
                int32_t l_2442[7][9] = {{0x2C4E1F8FL,0x58E8956AL,(-1L),0x31A8A0A4L,(-6L),0x2C4E1F8FL,0x31A8A0A4L,1L,0x31A8A0A4L},{0x2C4E1F8FL,0x58E8956AL,(-1L),0x31A8A0A4L,(-6L),0x2C4E1F8FL,0x31A8A0A4L,1L,0x31A8A0A4L},{0x2C4E1F8FL,0x58E8956AL,(-1L),0x31A8A0A4L,(-6L),0x2C4E1F8FL,0x31A8A0A4L,1L,0x31A8A0A4L},{0x2C4E1F8FL,0x58E8956AL,(-1L),0x31A8A0A4L,(-6L),0x2C4E1F8FL,0x31A8A0A4L,1L,0x31A8A0A4L},{0x2C4E1F8FL,0x58E8956AL,(-1L),0x31A8A0A4L,(-6L),0x2C4E1F8FL,0x31A8A0A4L,1L,0x31A8A0A4L},{0x2C4E1F8FL,0x58E8956AL,(-1L),0x31A8A0A4L,(-6L),0x2C4E1F8FL,0x31A8A0A4L,1L,0x31A8A0A4L},{0x2C4E1F8FL,0x58E8956AL,(-1L),0x31A8A0A4L,(-6L),0x2C4E1F8FL,0x31A8A0A4L,1L,0x31A8A0A4L}};
                int i, j;
                if ((((*l_2421) = (safe_sub_func_uint32_t_u_u(l_2334, (((safe_mod_func_int8_t_s_s(((((l_2343 || 1L) <= (p_2607->g_2415 , (safe_lshift_func_int8_t_s_s((safe_sub_func_int8_t_s_s(0x29L, p_2607->g_291[6][0])), 0)))) != (-1L)) >= (p_12 ^ l_2420)), p_12)) ^ p_15) || 0x12728498L)))) | 0x6879F1D43D414EFDL))
                { /* block id: 1077 */
                    int32_t *l_2427 = &l_2337;
                    int32_t *l_2429 = (void*)0;
                    int32_t *l_2430 = &l_2334;
                    int32_t *l_2431 = &l_2334;
                    int32_t *l_2432 = &l_2342;
                    int32_t *l_2433 = &l_2343;
                    int32_t *l_2434 = &p_2607->g_2158;
                    int32_t *l_2435 = &p_2607->g_5;
                    int32_t *l_2436 = (void*)0;
                    int32_t *l_2437 = &l_2353;
                    int32_t *l_2438 = &l_2332;
                    int32_t *l_2439[10] = {&l_2331,&l_2331,&l_2331,&l_2331,&l_2331,&l_2331,&l_2331,&l_2331,&l_2331,&l_2331};
                    int i;
                    for (p_2607->g_5 = 6; (p_2607->g_5 == 3); p_2607->g_5 = safe_sub_func_int32_t_s_s(p_2607->g_5, 8))
                    { /* block id: 1080 */
                        union U1 **l_2424 = (void*)0;
                        union U1 **l_2425 = &p_2607->g_2406;
                        (*l_2425) = (l_2420 , &p_2607->g_2415);
                    }
                    l_2444++;
                    for (p_2607->g_2064.f4 = (-26); (p_2607->g_2064.f4 == 27); ++p_2607->g_2064.f4)
                    { /* block id: 1086 */
                        int16_t l_2464 = 0x1DF7L;
                        int32_t **l_2482 = &l_2438;
                        int8_t *l_2501 = &l_2420;
                        (*l_2432) = (0x0C82AFD1776A7CECL != (safe_mul_func_uint16_t_u_u(((p_2607->g_2451 , (**p_2607->g_1035)) != (((((safe_add_func_uint32_t_u_u((safe_div_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), (--(*p_2607->g_510)))), (((safe_mul_func_int16_t_s_s((safe_mod_func_int8_t_s_s(((((((((safe_div_func_uint32_t_u_u(l_2464, ((*l_2434) &= l_2355))) >= (((l_2324 |= ((l_2442[1][3] >= ((l_2465 >= ((*l_2421) ^= ((safe_unary_minus_func_uint32_t_u((safe_add_func_uint32_t_u_u((l_2443[4] = 0x66505055L), (safe_rshift_func_uint16_t_u_u((safe_add_func_int32_t_s_s((*p_16), p_13)), 3)))))) < p_2607->g_157))) > (*p_14))) ^ (*p_2607->g_606))) > p_15) | p_12)) , p_2607->g_2158) > p_13) <= (-5L)) | GROUP_DIVERGE(0, 1)) <= p_13) , (-10L)), p_2607->g_1191[0])), p_15)) == p_13) <= 0L))) , l_2464) >= 4294967295UL) ^ p_13) , (void*)0)), p_15)));
                        (*l_2482) = func_52((((*p_2607->g_606) , (safe_mul_func_int16_t_s_s((*l_2430), FAKE_DIVERGE(p_2607->group_1_offset, get_group_id(1), 10)))) , (((safe_mul_func_uint16_t_u_u((((*l_2401) = l_2479[1][2][1]) != l_2479[3][4][1]), (safe_mul_func_uint16_t_u_u((**p_2607->g_545), (l_2443[8] > ((*l_2410) &= 0x38L)))))) != l_2337) && (((*l_2482) = p_14) != p_14))), &p_2607->g_51[2][0][3], &p_2607->g_51[0][5][1], p_2607);
                        (*l_2482) = func_52(((safe_rshift_func_uint8_t_u_s((safe_rshift_func_int16_t_s_u((5UL < l_2328), ((((**l_2482) <= FAKE_DIVERGE(p_2607->group_0_offset, get_group_id(0), 10)) <= (safe_rshift_func_uint8_t_u_s(((**l_2409)++), (safe_sub_func_int32_t_s_s((-2L), ((safe_sub_func_int8_t_s_s((p_13 >= 0x36L), ((*l_2501) = ((*p_16) >= (safe_add_func_uint64_t_u_u((safe_sub_func_int32_t_s_s((safe_rshift_func_uint8_t_u_s(((*p_14) <= l_2346), 2)), l_2443[6])), p_13)))))) && l_2502)))))) , (*l_2438)))), 2)) && 0UL), l_2503, &p_2607->g_51[0][3][1], p_2607);
                        return (*p_2607->g_606);
                    }
                }
                else
                { /* block id: 1102 */
                    return (*p_2607->g_606);
                }
            }
            else
            { /* block id: 1105 */
                uint32_t l_2511[7][8][4] = {{{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL}},{{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL}},{{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL}},{{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL}},{{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL}},{{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL}},{{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL},{0xFBF89066L,4294967286UL,0xB8610ACBL,9UL}}};
                int64_t *l_2531 = &p_2607->g_815;
                int32_t *l_2545 = &l_2354;
                union U0 *l_2580 = &p_2607->g_1324[6][2][2];
                int i, j, k;
                for (l_2354 = 0; (l_2354 < (-25)); --l_2354)
                { /* block id: 1108 */
                    int32_t ***l_2517 = &p_2607->g_1539;
                    uint16_t l_2524 = 0xDAB7L;
                    int64_t *l_2535 = &p_2607->g_2064.f1;
                    for (l_2332 = 0; (l_2332 >= (-21)); l_2332 = safe_sub_func_int64_t_s_s(l_2332, 3))
                    { /* block id: 1111 */
                        int32_t *l_2508 = &l_2443[2];
                        int32_t *l_2509 = &l_2350;
                        int32_t *l_2510[7] = {&l_2355,&l_2355,&l_2355,&l_2355,&l_2355,&l_2355,&l_2355};
                        int32_t ***l_2516 = &p_2607->g_1539;
                        int8_t *l_2518[6][10] = {{&p_2607->g_411,&p_2607->g_1451,(void*)0,&p_2607->g_1451,&p_2607->g_411,&p_2607->g_411,&p_2607->g_1451,(void*)0,&p_2607->g_1451,&p_2607->g_411},{&p_2607->g_411,&p_2607->g_1451,(void*)0,&p_2607->g_1451,&p_2607->g_411,&p_2607->g_411,&p_2607->g_1451,(void*)0,&p_2607->g_1451,&p_2607->g_411},{&p_2607->g_411,&p_2607->g_1451,(void*)0,&p_2607->g_1451,&p_2607->g_411,&p_2607->g_411,&p_2607->g_1451,(void*)0,&p_2607->g_1451,&p_2607->g_411},{&p_2607->g_411,&p_2607->g_1451,(void*)0,&p_2607->g_1451,&p_2607->g_411,&p_2607->g_411,&p_2607->g_1451,(void*)0,&p_2607->g_1451,&p_2607->g_411},{&p_2607->g_411,&p_2607->g_1451,(void*)0,&p_2607->g_1451,&p_2607->g_411,&p_2607->g_411,&p_2607->g_1451,(void*)0,&p_2607->g_1451,&p_2607->g_411},{&p_2607->g_411,&p_2607->g_1451,(void*)0,&p_2607->g_1451,&p_2607->g_411,&p_2607->g_411,&p_2607->g_1451,(void*)0,&p_2607->g_1451,&p_2607->g_411}};
                        int i, j;
                        --l_2511[3][7][0];
                        (*p_14) = (((l_2516 != l_2517) | ((p_2607->g_411 &= l_2443[8]) >= p_12)) , (*p_16));
                    }
                    for (l_2341 = (-16); (l_2341 == (-3)); l_2341++)
                    { /* block id: 1118 */
                        (*p_16) &= (p_2607->g_1462.f0 >= (+(-5L)));
                        if ((*p_16))
                            break;
                        return p_13;
                    }
                    for (p_2607->g_74 = 0; (p_2607->g_74 <= 2); p_2607->g_74 += 1)
                    { /* block id: 1125 */
                        int32_t **l_2521 = &p_2607->g_190[1];
                        int64_t **l_2532 = &l_2531;
                        int64_t *l_2534 = &p_2607->g_815;
                        int64_t **l_2533[7][8][4] = {{{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0}},{{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0}},{{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0}},{{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0}},{{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0}},{{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0}},{{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0},{&l_2534,&l_2534,&l_2534,(void*)0}}};
                        int i, j, k;
                        (*l_2521) = (void*)0;
                        (*p_16) = ((safe_div_func_int16_t_s_s((p_2607->g_1191[p_2607->g_74] >= (GROUP_DIVERGE(1, 1) > ((((((l_2524 | ((*p_2607->g_85) |= 1UL)) >= p_12) <= (~(--(*p_2607->g_606)))) , 0x4BL) >= (safe_add_func_uint8_t_u_u(p_12, (l_2529 && (l_2530 != (l_2535 = ((*l_2532) = l_2531))))))) <= 0UL))), GROUP_DIVERGE(1, 1))) ^ l_2524);
                        return (*p_2607->g_606);
                    }
                    if ((**p_2607->g_321))
                        continue;
                }
                if (l_2443[0])
                { /* block id: 1136 */
                    for (l_2331 = 0; (l_2331 <= 3); l_2331 += 1)
                    { /* block id: 1139 */
                        union U1 *l_2536 = (void*)0;
                        union U1 **l_2539 = &l_2536;
                        (*l_2539) = l_2536;
                        (*p_14) = (l_2345 > (p_2607->g_2540 , 0UL));
                    }
                    (*p_16) ^= (safe_rshift_func_uint16_t_u_u((*p_2607->g_510), (safe_sub_func_uint8_t_u_u(0x58L, p_2607->g_291[6][2]))));
                }
                else
                { /* block id: 1144 */
                    int32_t **l_2546 = &l_2545;
                    int32_t **l_2552 = &p_2607->g_469;
                    (*l_2546) = l_2545;
                    for (p_2607->g_539 = 0; (p_2607->g_539 <= 7); p_2607->g_539 += 1)
                    { /* block id: 1148 */
                        int8_t *l_2549 = (void*)0;
                        uint32_t *l_2555 = &p_2607->g_885[6];
                        int32_t **l_2562 = &p_2607->g_190[1];
                        uint64_t *l_2566 = &p_2607->g_634;
                        uint32_t l_2567 = 0x94806448L;
                        int i, j;
                        l_2328 = (safe_mod_func_uint32_t_u_u(p_2607->g_771[p_2607->g_539][(p_2607->g_539 + 1)], (+((p_2607->g_1541 = 0x30L) ^ p_2607->g_771[p_2607->g_539][p_2607->g_539]))));
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        p_2607->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 39)), permutations[(safe_mod_func_uint32_t_u_u((((safe_sub_func_int16_t_s_s(((((0x044F071D6FA9D9F0L == (+(*p_2607->g_606))) < FAKE_DIVERGE(p_2607->group_2_offset, get_group_id(2), 10)) , (*p_2607->g_467)) == l_2552), (safe_add_func_int32_t_s_s(((--(*l_2555)) ^ GROUP_DIVERGE(0, 1)), ((safe_lshift_func_int16_t_s_s(((((safe_add_func_uint32_t_u_u((((*l_2562) = ((*l_2546) = &p_2607->g_5)) != (l_2563 = &p_2607->g_246)), 0x06238A45L)) >= (((safe_div_func_int64_t_s_s((p_13 < (p_2607->g_2406 != p_2607->g_2406)), l_2298)) , l_2566) != l_2314)) ^ l_2354) , l_2567), 4)) , 0L))))) < p_2607->g_159) & p_12), 10))][(safe_mod_func_uint32_t_u_u(p_2607->tid, 39))]));
                        return p_15;
                    }
                    for (l_2342 = (-27); (l_2342 >= (-21)); l_2342 = safe_add_func_int8_t_s_s(l_2342, 7))
                    { /* block id: 1162 */
                        int8_t *l_2577 = (void*)0;
                        int8_t *l_2578 = &p_2607->g_411;
                        int32_t *l_2579 = &l_2324;
                        union U0 **l_2581 = &l_2580;
                        (**l_2546) = 0x1C52B8A8L;
                        (*l_2545) = (((((((-1L) < (safe_rshift_func_int8_t_s_s(((*l_2545) | (safe_sub_func_uint32_t_u_u(0xB5923747L, (*p_16)))), (p_15 , ((*p_16) || ((*l_2579) = ((safe_rshift_func_int8_t_s_s(((*l_2578) = (p_13 == (((0x6E2F2B7A7B9AB9EAL | (p_2607->g_2576[1] , 0x5478179EF7450375L)) <= l_2343) >= p_15))), 1)) > FAKE_DIVERGE(p_2607->local_2_offset, get_local_id(2), 10)))))))) || (*p_14)) != (*p_2607->g_606)) ^ GROUP_DIVERGE(0, 1)) && p_12) != GROUP_DIVERGE(2, 1));
                        (*l_2581) = l_2580;
                    }
                }
                (*p_2607->g_2582) = (*p_2607->g_189);
            }
        }
        --l_2594;
    }
    else
    { /* block id: 1174 */
        int32_t **l_2597 = (void*)0;
        int32_t **l_2598[3][2] = {{&p_2607->g_190[1],&p_2607->g_190[1]},{&p_2607->g_190[1],&p_2607->g_190[1]},{&p_2607->g_190[1],&p_2607->g_190[1]}};
        int i, j;
        p_16 = (*p_2607->g_560);
    }
    for (p_2607->g_2064.f4 = (-24); (p_2607->g_2064.f4 != (-6)); p_2607->g_2064.f4++)
    { /* block id: 1179 */
        uint8_t l_2603 = 255UL;
        (*p_16) ^= 6L;
        for (p_2607->g_310.f4 = 0; (p_2607->g_310.f4 <= (-22)); --p_2607->g_310.f4)
        { /* block id: 1183 */
            (*p_16) = l_2603;
        }
    }
    (*l_2604) = &l_2588;
    return p_15;
}


/* ------------------------------------------ */
/* 
 * reads : p_2607->g_5 p_2607->g_102
 * writes: p_2607->g_5
 */
int8_t  func_19(int32_t  p_20, struct S3 * p_2607)
{ /* block id: 8 */
    int64_t l_1869 = 0x4198D72A67F8B4DFL;
    int8_t l_1871 = 1L;
    int32_t l_1873 = 0x181C5860L;
    int32_t l_1882 = 0x5F885928L;
    int32_t l_1884[6];
    uint64_t l_1905 = 0xEEA102A83C5EE741L;
    uint32_t l_1935 = 0x19821B11L;
    int64_t **l_1944 = (void*)0;
    uint32_t **l_2010 = &p_2607->g_2007;
    uint64_t l_2016 = 18446744073709551615UL;
    int16_t *l_2084[5] = {&p_2607->g_76[2][1][1],&p_2607->g_76[2][1][1],&p_2607->g_76[2][1][1],&p_2607->g_76[2][1][1],&p_2607->g_76[2][1][1]};
    uint32_t *l_2086 = &p_2607->g_291[1][1];
    int32_t *l_2222 = &p_2607->g_102;
    int16_t ***l_2242 = &p_2607->g_494;
    uint16_t l_2249 = 0xC541L;
    uint8_t l_2278[1][8][9] = {{{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL}}};
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_1884[i] = 0x29025B0DL;
    for (p_2607->g_5 = 0; (p_2607->g_5 != (-21)); p_2607->g_5 = safe_sub_func_int8_t_s_s(p_2607->g_5, 7))
    { /* block id: 11 */
        uint64_t *l_23 = &p_2607->g_24;
        uint32_t *l_1867 = &p_2607->g_1868;
        uint32_t **l_1866 = &l_1867;
        int32_t l_1870 = 3L;
        int32_t l_1885 = 0L;
        int32_t l_1886 = 2L;
        union U2 *l_1945 = &p_2607->g_310;
        int32_t l_1965 = (-2L);
        int32_t l_1966 = 0x6550C97FL;
        int32_t l_1968 = (-10L);
        int32_t l_1969 = 0x18EA977DL;
        int32_t l_1971 = (-3L);
        int32_t l_1972 = (-1L);
        int32_t l_1973 = 0x12FE7324L;
        int32_t l_1974 = 0x1274EEE2L;
        int32_t l_1975 = 0x280CE487L;
        int32_t l_1977 = 0x4BE0A223L;
        int32_t l_1978 = 0x5769E90DL;
        int32_t l_1979 = (-2L);
        int32_t l_1980[4][2] = {{1L,(-1L)},{1L,(-1L)},{1L,(-1L)},{1L,(-1L)}};
        int32_t l_2028 = 0x7DB7F74AL;
        int32_t **l_2067 = &p_2607->g_469;
        int16_t *l_2083[5][7] = {{&p_2607->g_76[9][0][4],&p_2607->g_743,&p_2607->g_743,&p_2607->g_743,&p_2607->g_76[9][0][4],&p_2607->g_76[9][0][4],&p_2607->g_743},{&p_2607->g_76[9][0][4],&p_2607->g_743,&p_2607->g_743,&p_2607->g_743,&p_2607->g_76[9][0][4],&p_2607->g_76[9][0][4],&p_2607->g_743},{&p_2607->g_76[9][0][4],&p_2607->g_743,&p_2607->g_743,&p_2607->g_743,&p_2607->g_76[9][0][4],&p_2607->g_76[9][0][4],&p_2607->g_743},{&p_2607->g_76[9][0][4],&p_2607->g_743,&p_2607->g_743,&p_2607->g_743,&p_2607->g_76[9][0][4],&p_2607->g_76[9][0][4],&p_2607->g_743},{&p_2607->g_76[9][0][4],&p_2607->g_743,&p_2607->g_743,&p_2607->g_743,&p_2607->g_76[9][0][4],&p_2607->g_76[9][0][4],&p_2607->g_743}};
        uint16_t *l_2119 = (void*)0;
        int32_t l_2165 = 0x538C1FD1L;
        int64_t *l_2177 = &p_2607->g_2064.f1;
        int64_t **l_2176 = &l_2177;
        uint32_t l_2217 = 0x97B2D364L;
        uint16_t **l_2224 = &l_2119;
        uint16_t ***l_2223 = &l_2224;
        uint32_t l_2243 = 1UL;
        uint16_t l_2268[1][9];
        int32_t l_2287 = 0L;
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 9; j++)
                l_2268[i][j] = 0x5EDDL;
        }
        (1 + 1);
    }
    return (*l_2222);
}


/* ------------------------------------------ */
/* 
 * reads : p_2607->g_885 p_2607->g_1462 p_2607->g_1191 p_2607->g_771 p_2607->g_606 p_2607->g_78 p_2607->g_879 p_2607->g_880 p_2607->g_881 p_2607->g_882 p_2607->g_510 p_2607->g_83 p_2607->g_102 p_2607->g_1442 p_2607->g_188 p_2607->g_494 p_2607->g_495 p_2607->g_1523 p_2607->g_1524 p_2607->g_469 p_2607->g_392 p_2607->g_1541 p_2607->g_1552 p_2607->g_101 p_2607->g_1371 p_2607->g_190 p_2607->g_5 p_2607->g_1574 p_2607->g_634 p_2607->g_291 p_2607->g_1588 p_2607->g_76 p_2607->l_comm_values p_2607->g_411 p_2607->g_1161.f0 p_2607->g_1631 p_2607->g_51 p_2607->g_251.f0 p_2607->g_1451 p_2607->g_1654 p_2607->g_74 p_2607->g_546 p_2607->g_168 p_2607->g_8 p_2607->g_157 p_2607->g_936 p_2607->g_1574.f2 p_2607->g_261 p_2607->g_1702 p_2607->g_321 p_2607->g_1278 p_2607->g_1728 p_2607->g_1734 p_2607->g_815 p_2607->g_203 p_2607->g_246 p_2607->g_653 p_2607->g_1035 p_2607->g_310.f2 p_2607->g_310.f1 p_2607->g_1808 p_2607->g_1825 p_2607->g_545 p_2607->g_comm_values p_2607->g_539 p_2607->g_1858
 * writes: p_2607->g_885 p_2607->g_1191 p_2607->g_771 p_2607->g_102 p_2607->g_188 p_2607->g_261 p_2607->g_1539 p_2607->g_538 p_2607->g_83 p_2607->g_310.f4 p_2607->g_1581 p_2607->g_78 p_2607->g_310.f3 p_2607->g_411 p_2607->g_157 p_2607->g_1541 p_2607->g_1574.f2 p_2607->g_815 p_2607->g_159 p_2607->g_943 p_2607->g_190 p_2607->g_76 p_2607->g_310.f2 p_2607->g_310.f1 p_2607->g_1825 p_2607->g_1138
 */
int16_t  func_29(uint64_t * p_30, uint64_t * p_31, struct S3 * p_2607)
{ /* block id: 637 */
    int8_t *l_1457[7][5] = {{(void*)0,(void*)0,&p_2607->g_1451,(void*)0,&p_2607->g_1451},{(void*)0,(void*)0,&p_2607->g_1451,(void*)0,&p_2607->g_1451},{(void*)0,(void*)0,&p_2607->g_1451,(void*)0,&p_2607->g_1451},{(void*)0,(void*)0,&p_2607->g_1451,(void*)0,&p_2607->g_1451},{(void*)0,(void*)0,&p_2607->g_1451,(void*)0,&p_2607->g_1451},{(void*)0,(void*)0,&p_2607->g_1451,(void*)0,&p_2607->g_1451},{(void*)0,(void*)0,&p_2607->g_1451,(void*)0,&p_2607->g_1451}};
    int8_t *l_1458 = (void*)0;
    uint32_t *l_1459 = &p_2607->g_885[2];
    int32_t l_1471 = 5L;
    uint32_t *l_1472 = &p_2607->g_1191[2];
    uint64_t l_1477 = 0xF87A79A959592965L;
    int32_t *l_1478 = &l_1471;
    uint32_t *l_1494 = &p_2607->g_936[8];
    uint32_t **l_1493 = &l_1494;
    uint16_t **l_1516 = &p_2607->g_85;
    uint16_t ***l_1515 = &l_1516;
    int64_t l_1619[6];
    int32_t l_1640 = 0x0094C94DL;
    int32_t l_1641 = 0x09A0DDF4L;
    int32_t l_1642[8] = {0x3CBA42BFL,0x3CBA42BFL,0x3CBA42BFL,0x3CBA42BFL,0x3CBA42BFL,0x3CBA42BFL,0x3CBA42BFL,0x3CBA42BFL};
    uint32_t l_1699[8] = {4UL,4UL,4UL,4UL,4UL,4UL,4UL,4UL};
    int64_t *l_1701 = &p_2607->g_815;
    int64_t **l_1700 = &l_1701;
    union U2 *l_1726[2];
    int32_t l_1784 = (-5L);
    int32_t ***l_1850 = &p_2607->g_416;
    int16_t *l_1853 = &p_2607->g_1138;
    int16_t l_1854 = 1L;
    int64_t **l_1857 = &p_2607->g_219;
    int64_t *l_1861 = &l_1619[2];
    int i, j;
    for (i = 0; i < 6; i++)
        l_1619[i] = (-4L);
    for (i = 0; i < 2; i++)
        l_1726[i] = &p_2607->g_310;
    if (((*l_1478) = ((((l_1457[2][4] = l_1457[2][4]) != l_1458) && (((*l_1459) |= 0xC4022B76L) < (safe_add_func_int16_t_s_s((p_2607->g_1462 , (((safe_add_func_int8_t_s_s(0x2BL, (safe_mod_func_uint8_t_u_u(((((safe_sub_func_int64_t_s_s((((+(safe_sub_func_uint32_t_u_u(l_1471, (p_2607->g_771[3][7] &= ((*l_1472) ^= GROUP_DIVERGE(2, 1)))))) , 0xD24DL) & (safe_mod_func_int16_t_s_s(((((*p_2607->g_606) != (((((safe_div_func_uint32_t_u_u(0x68C318F6L, (***p_2607->g_879))) >= l_1471) ^ l_1471) <= l_1471) <= l_1471)) , GROUP_DIVERGE(0, 1)) >= l_1471), (*p_2607->g_510)))), l_1471)) < 9L) >= 4UL) && l_1471), 5L)))) || l_1477) >= 0x707F930841748EA1L)), (-10L))))) <= (*p_2607->g_606))))
    { /* block id: 643 */
        int32_t l_1484 = 1L;
        int32_t l_1495[10] = {(-9L),0x1D246FE0L,0x28479462L,0x1D246FE0L,(-9L),(-9L),0x1D246FE0L,0x28479462L,0x1D246FE0L,(-9L)};
        uint32_t *l_1496 = (void*)0;
        int16_t *l_1617 = &p_2607->g_261[3][4][3];
        uint8_t l_1632 = 252UL;
        int32_t *l_1636[10][5] = {{&l_1471,&p_2607->g_5,&p_2607->g_102,&p_2607->g_5,&l_1471},{&l_1471,&p_2607->g_5,&p_2607->g_102,&p_2607->g_5,&l_1471},{&l_1471,&p_2607->g_5,&p_2607->g_102,&p_2607->g_5,&l_1471},{&l_1471,&p_2607->g_5,&p_2607->g_102,&p_2607->g_5,&l_1471},{&l_1471,&p_2607->g_5,&p_2607->g_102,&p_2607->g_5,&l_1471},{&l_1471,&p_2607->g_5,&p_2607->g_102,&p_2607->g_5,&l_1471},{&l_1471,&p_2607->g_5,&p_2607->g_102,&p_2607->g_5,&l_1471},{&l_1471,&p_2607->g_5,&p_2607->g_102,&p_2607->g_5,&l_1471},{&l_1471,&p_2607->g_5,&p_2607->g_102,&p_2607->g_5,&l_1471},{&l_1471,&p_2607->g_5,&p_2607->g_102,&p_2607->g_5,&l_1471}};
        uint8_t l_1663 = 251UL;
        int64_t l_1664[2][5][7] = {{{0x3DB6F09895B465DAL,2L,0x053C14F52DC1E5C4L,2L,0x3DB6F09895B465DAL,0x3DB6F09895B465DAL,2L},{0x3DB6F09895B465DAL,2L,0x053C14F52DC1E5C4L,2L,0x3DB6F09895B465DAL,0x3DB6F09895B465DAL,2L},{0x3DB6F09895B465DAL,2L,0x053C14F52DC1E5C4L,2L,0x3DB6F09895B465DAL,0x3DB6F09895B465DAL,2L},{0x3DB6F09895B465DAL,2L,0x053C14F52DC1E5C4L,2L,0x3DB6F09895B465DAL,0x3DB6F09895B465DAL,2L},{0x3DB6F09895B465DAL,2L,0x053C14F52DC1E5C4L,2L,0x3DB6F09895B465DAL,0x3DB6F09895B465DAL,2L}},{{0x3DB6F09895B465DAL,2L,0x053C14F52DC1E5C4L,2L,0x3DB6F09895B465DAL,0x3DB6F09895B465DAL,2L},{0x3DB6F09895B465DAL,2L,0x053C14F52DC1E5C4L,2L,0x3DB6F09895B465DAL,0x3DB6F09895B465DAL,2L},{0x3DB6F09895B465DAL,2L,0x053C14F52DC1E5C4L,2L,0x3DB6F09895B465DAL,0x3DB6F09895B465DAL,2L},{0x3DB6F09895B465DAL,2L,0x053C14F52DC1E5C4L,2L,0x3DB6F09895B465DAL,0x3DB6F09895B465DAL,2L},{0x3DB6F09895B465DAL,2L,0x053C14F52DC1E5C4L,2L,0x3DB6F09895B465DAL,0x3DB6F09895B465DAL,2L}}};
        int i, j, k;
        for (p_2607->g_102 = 0; (p_2607->g_102 < (-6)); p_2607->g_102 = safe_sub_func_int64_t_s_s(p_2607->g_102, 2))
        { /* block id: 646 */
            uint32_t l_1483 = 0x2D6925B5L;
            int64_t l_1490 = 7L;
            uint32_t *l_1492 = (void*)0;
            uint32_t **l_1491 = &l_1492;
            int32_t *l_1497 = &p_2607->g_188;
            uint32_t l_1507 = 4294967292UL;
            int64_t l_1620 = (-1L);
            int32_t ***l_1628 = &p_2607->g_416;
            int32_t l_1638 = 0x1BEFCF46L;
            int32_t l_1639[6][9][4] = {{{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL}},{{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL}},{{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL}},{{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL}},{{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL}},{{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL},{1L,0L,0x135F300BL,0x5B1F69DFL}}};
            int i, j, k;
            (*l_1497) &= ((0L || (0xB206962FL >= ((safe_add_func_uint16_t_u_u(l_1483, l_1484)) < ((safe_mul_func_uint16_t_u_u((safe_sub_func_int8_t_s_s(((safe_unary_minus_func_uint32_t_u((((((*l_1478) &= l_1490) , (l_1495[3] = (l_1491 == l_1493))) <= ((void*)0 == l_1496)) > 0x21817F3E41F72314L))) ^ l_1484), p_2607->g_1442[2])), l_1484)) && (*l_1478))))) < GROUP_DIVERGE(2, 1));
            if ((*l_1478))
            { /* block id: 650 */
                uint8_t *l_1500 = (void*)0;
                uint8_t *l_1501[8] = {&p_2607->g_157,&p_2607->g_157,&p_2607->g_157,&p_2607->g_157,&p_2607->g_157,&p_2607->g_157,&p_2607->g_157,&p_2607->g_157};
                int32_t l_1502 = (-5L);
                int32_t l_1508 = 6L;
                uint16_t ****l_1517 = &l_1515;
                int i;
                if (((((safe_rshift_func_uint8_t_u_u((l_1502 = 0x31L), (safe_rshift_func_uint8_t_u_s((l_1507 <= (&p_31 == ((l_1508 >= (0L != (safe_mod_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u(((safe_sub_func_uint32_t_u_u(4294967286UL, 0x3E807E84L)) , ((((*l_1517) = l_1515) != (void*)0) < (*l_1478))), 0x32A9L)), GROUP_DIVERGE(1, 1))))) , &p_31))), 1)))) < (*l_1478)) , 0x2BAAL) != (-3L)))
                { /* block id: 653 */
                    int32_t l_1518 = 0x12FECAE4L;
                    int32_t ***l_1525 = (void*)0;
                    int32_t ***l_1526 = (void*)0;
                    int32_t ***l_1527 = &p_2607->g_468;
                    int32_t ***l_1528 = (void*)0;
                    int32_t ***l_1529 = (void*)0;
                    int32_t ***l_1530 = &p_2607->g_468;
                    int32_t ***l_1531 = &p_2607->g_468;
                    int32_t ***l_1532 = &p_2607->g_468;
                    int32_t ***l_1533 = &p_2607->g_468;
                    int32_t ***l_1534 = &p_2607->g_468;
                    int32_t ***l_1535 = &p_2607->g_468;
                    int32_t ***l_1536 = &p_2607->g_468;
                    int32_t ***l_1537 = &p_2607->g_468;
                    int32_t ***l_1538[1][1][2];
                    int32_t l_1540 = 0x4255257DL;
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 1; j++)
                        {
                            for (k = 0; k < 2; k++)
                                l_1538[i][j][k] = &p_2607->g_468;
                        }
                    }
                    (*l_1478) = (l_1540 = (l_1508 ^ ((((*l_1497) |= l_1518) & (((((**p_2607->g_494) = ((safe_add_func_int64_t_s_s(l_1502, (safe_rshift_func_int8_t_s_s(l_1508, 5)))) || GROUP_DIVERGE(1, 1))) && (((p_2607->g_1523[0][0][1] , p_2607->g_1524) , FAKE_DIVERGE(p_2607->global_1_offset, get_global_id(1), 10)) < (((*p_2607->g_469) , (p_2607->g_1539 = &p_2607->g_469)) != ((0UL & p_2607->g_885[6]) , &p_2607->g_469)))) && (-6L)) > 1UL)) , 2L)));
                    return p_2607->g_1541;
                }
                else
                { /* block id: 660 */
                    int8_t l_1555 = 8L;
                    int64_t *l_1556 = &p_2607->g_538[0][0][0];
                    int32_t *l_1557 = (void*)0;
                    int32_t *l_1558 = &p_2607->g_310.f4;
                    int32_t *l_1559[7][5] = {{(void*)0,&p_2607->g_5,&l_1495[4],(void*)0,&p_2607->g_5},{(void*)0,&p_2607->g_5,&l_1495[4],(void*)0,&p_2607->g_5},{(void*)0,&p_2607->g_5,&l_1495[4],(void*)0,&p_2607->g_5},{(void*)0,&p_2607->g_5,&l_1495[4],(void*)0,&p_2607->g_5},{(void*)0,&p_2607->g_5,&l_1495[4],(void*)0,&p_2607->g_5},{(void*)0,&p_2607->g_5,&l_1495[4],(void*)0,&p_2607->g_5},{(void*)0,&p_2607->g_5,&l_1495[4],(void*)0,&p_2607->g_5}};
                    int i, j;
                    (*l_1558) = (l_1495[7] ^= (safe_sub_func_uint16_t_u_u(((*p_2607->g_510) = (safe_rshift_func_uint8_t_u_u(((*l_1497) = (safe_lshift_func_uint16_t_u_u((*l_1497), (safe_add_func_uint16_t_u_u((safe_sub_func_uint16_t_u_u((*p_2607->g_510), ((*l_1497) || ((*l_1556) = (p_2607->g_1552[0] , (FAKE_DIVERGE(p_2607->local_2_offset, get_local_id(2), 10) > ((~(l_1502 == (safe_add_func_int64_t_s_s(((((void*)0 == l_1492) || 1UL) ^ (l_1555 & (*l_1497))), (*p_2607->g_606))))) | l_1555))))))), (*l_1497)))))), 5))), (*l_1478))));
                    (*l_1497) |= 0x269D7DB2L;
                    if ((*p_2607->g_101))
                        break;
                }
                if ((**p_2607->g_1371))
                    break;
            }
            else
            { /* block id: 670 */
                int32_t ***l_1576[9][9][3] = {{{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539}},{{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539}},{{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539}},{{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539}},{{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539}},{{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539}},{{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539}},{{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539}},{{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539},{&p_2607->g_1539,&p_2607->g_1539,&p_2607->g_1539}}};
                int32_t l_1589 = 0L;
                uint8_t l_1615 = 0x8FL;
                int16_t *l_1618 = &p_2607->g_76[1][0][0];
                int32_t l_1643 = 0x5DD04D16L;
                int i, j, k;
                for (l_1484 = (-9); (l_1484 == 6); l_1484 = safe_add_func_uint8_t_u_u(l_1484, 5))
                { /* block id: 673 */
                    int32_t ***l_1575 = &p_2607->g_1539;
                    int32_t ****l_1577 = (void*)0;
                    int32_t ****l_1578 = (void*)0;
                    int32_t ****l_1579 = (void*)0;
                    int32_t ****l_1580[4];
                    int64_t *l_1582 = &p_2607->g_538[0][0][5];
                    int32_t l_1585 = 0x773ED11CL;
                    uint8_t *l_1616 = &p_2607->g_157;
                    int32_t l_1621 = 0x4303030CL;
                    int i;
                    for (i = 0; i < 4; i++)
                        l_1580[i] = (void*)0;
                    (*l_1478) ^= (safe_sub_func_int8_t_s_s(0x47L, (safe_mul_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s(((((safe_rshift_func_int8_t_s_s((safe_mod_func_int64_t_s_s(((((safe_div_func_int64_t_s_s(((p_2607->g_1574 , (!((*l_1497) <= ((void*)0 != l_1575)))) <= ((p_2607->g_1581[4] = l_1576[0][0][2]) == (((*l_1582) = 0x676ED8452AF2609CL) , &p_2607->g_468))), (--(*p_2607->g_606)))) && (((p_2607->g_1552[1] , &p_2607->g_539) == l_1472) < 0x22B53C495C1EC8FFL)) > 0x57D54E7B32F97043L) > l_1585), l_1585)), (*l_1497))) <= l_1495[1]) ^ 0x14EBCD61L) , p_2607->g_634), (*l_1497))), p_2607->g_291[7][1]))));
                    l_1621 ^= (((safe_sub_func_int16_t_s_s((*l_1497), (p_2607->g_1588 , ((l_1589 <= ((((((((((1UL & (((safe_add_func_uint8_t_u_u(((safe_unary_minus_func_uint32_t_u((safe_sub_func_uint32_t_u_u((safe_add_func_int32_t_s_s((safe_add_func_uint64_t_u_u(((safe_div_func_int16_t_s_s((((safe_mul_func_int16_t_s_s(l_1585, ((((safe_add_func_uint64_t_u_u((FAKE_DIVERGE(p_2607->local_0_offset, get_local_id(0), 10) , ((safe_mul_func_uint16_t_u_u((safe_sub_func_uint32_t_u_u((***p_2607->g_879), (((*l_1478) , (safe_sub_func_int16_t_s_s((safe_sub_func_uint64_t_u_u((safe_lshift_func_int8_t_s_s(l_1589, 3)), ((l_1495[3] < (*p_2607->g_606)) != (*l_1497)))), 0L))) < l_1585))), 65527UL)) > 0x1E1764347335A6D3L)), l_1495[3])) | l_1589) & p_2607->g_76[9][0][4]) == p_2607->g_885[6]))) && 0L) & 0x8EC34ADEB3EF43D5L), GROUP_DIVERGE(0, 1))) , l_1585), l_1615)), l_1484)), p_2607->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2607->tid, 39))])))) ^ 0x429CL), 0x59L)) & 1UL) & 5L)) > l_1615) == p_2607->g_76[9][0][4]) , l_1616) != (void*)0) , l_1617) == l_1618) < FAKE_DIVERGE(p_2607->group_2_offset, get_group_id(2), 10)) > (*l_1497)) <= 0L)) >= l_1619[3])))) <= 6L) ^ l_1620);
                    for (p_2607->g_310.f3 = (-12); (p_2607->g_310.f3 < 17); p_2607->g_310.f3 = safe_add_func_uint8_t_u_u(p_2607->g_310.f3, 8))
                    { /* block id: 681 */
                        int16_t l_1633 = 0x1381L;
                        int32_t l_1637[8][10][2] = {{{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL}},{{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL}},{{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL}},{{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL}},{{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL}},{{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL}},{{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL}},{{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL},{0x67BB9D97L,0x48E2900CL}}};
                        uint8_t l_1644 = 1UL;
                        int i, j, k;
                        (*l_1497) = ((((((*l_1616) = (safe_lshift_func_uint16_t_u_u((((((safe_mul_func_uint16_t_u_u(((l_1628 != ((l_1621 > (safe_add_func_int8_t_s_s(((0x65L < (p_2607->g_411 |= (l_1589 &= 0x42L))) , p_2607->g_1161.f0), (-1L)))) , (p_2607->g_1631[0][1][0] , &p_2607->g_560))) && (((*l_1497) > p_2607->g_76[9][0][4]) > l_1632)), 65535UL)) , 0xB19F1FB3193A3A60L) || l_1633) > l_1615) && l_1633), l_1495[0]))) > p_2607->g_51[2][4][2]) , (void*)0) == (void*)0) & (*l_1478));
                        (*l_1478) = ((safe_lshift_func_int8_t_s_u(p_2607->g_251.f0, 3)) | p_2607->g_1451);
                        l_1636[7][2] = &l_1621;
                        ++l_1644;
                    }
                }
            }
        }
        l_1641 &= ((*l_1478) <= ((p_2607->g_1541 = (safe_lshift_func_int8_t_s_s((*l_1478), ((((((+(safe_unary_minus_func_uint64_t_u((*l_1478)))) , ((((safe_lshift_func_int8_t_s_u((GROUP_DIVERGE(2, 1) ^ (GROUP_DIVERGE(2, 1) | (((((safe_add_func_uint32_t_u_u(((p_2607->g_1654 , (!((void*)0 != l_1496))) && (((((*p_2607->g_510) = GROUP_DIVERGE(0, 1)) , ((safe_mul_func_uint16_t_u_u((((*p_2607->g_606) = (((*l_1478) <= ((safe_add_func_int8_t_s_s((*l_1478), ((safe_add_func_int32_t_s_s((safe_div_func_uint32_t_u_u((***p_2607->g_879), (*l_1478))), (*l_1478))) , 1UL))) == GROUP_DIVERGE(2, 1))) > l_1663)) & (-10L)), 0x7A36L)) & (*l_1478))) & p_2607->g_102) , 0x11L)), (*l_1478))) == (*l_1478)) <= 0x7A847C3AL) < (*l_1478)) && (*l_1478)))), p_2607->g_74)) != l_1664[0][2][0]) == (*l_1478)) >= 255UL)) && (*p_2607->g_546)) && (*l_1478)) >= p_2607->g_8[1]) <= 0xE5L)))) >= (*l_1478)));
    }
    else
    { /* block id: 697 */
        int32_t *l_1672 = (void*)0;
        int32_t l_1673 = 0x30B4FD0BL;
        int64_t l_1704 = 7L;
        union U2 **l_1723 = (void*)0;
        int32_t l_1737 = 0x13165480L;
        int32_t l_1740 = 0x295ED53AL;
        int32_t l_1747 = 0x4F2E026AL;
        uint64_t *l_1756 = &l_1477;
        uint32_t l_1761 = 0UL;
        uint32_t l_1785 = 4294967293UL;
        int32_t l_1820 = (-5L);
        int32_t l_1821 = (-8L);
        int32_t l_1833 = 0x7A52899BL;
        int32_t l_1836[3];
        uint16_t l_1840 = 0x6B9DL;
        int32_t l_1845 = 0x38D43D43L;
        int i;
        for (i = 0; i < 3; i++)
            l_1836[i] = 0x23767328L;
        for (p_2607->g_157 = 3; (p_2607->g_157 <= 8); p_2607->g_157 += 1)
        { /* block id: 700 */
            uint16_t l_1669 = 0x54E7L;
            for (p_2607->g_83 = 0; (p_2607->g_83 <= 7); p_2607->g_83 += 1)
            { /* block id: 703 */
                int32_t *l_1665 = (void*)0;
                int32_t *l_1666 = &p_2607->g_1574.f4;
                int32_t *l_1667 = &p_2607->g_188;
                int32_t *l_1668 = &l_1471;
                int i;
                l_1669--;
                if (p_2607->g_936[p_2607->g_157])
                    break;
            }
            for (p_2607->g_83 = 0; (p_2607->g_83 <= 7); p_2607->g_83 += 1)
            { /* block id: 709 */
                int i;
                (*l_1478) ^= p_2607->g_885[p_2607->g_83];
                for (p_2607->g_1541 = 0; (p_2607->g_1541 <= 5); p_2607->g_1541 += 1)
                { /* block id: 713 */
                    int i;
                    if (l_1619[p_2607->g_1541])
                        break;
                    l_1672 = l_1672;
                }
                if ((*l_1478))
                    continue;
            }
        }
        for (p_2607->g_1574.f2 = 0; (p_2607->g_1574.f2 <= 0); p_2607->g_1574.f2 += 1)
        { /* block id: 722 */
            int64_t l_1674[2][4] = {{0x383469744355D1AAL,0x383469744355D1AAL,0x383469744355D1AAL,0x383469744355D1AAL},{0x383469744355D1AAL,0x383469744355D1AAL,0x383469744355D1AAL,0x383469744355D1AAL}};
            uint8_t l_1683 = 0UL;
            uint8_t *l_1684 = (void*)0;
            uint8_t *l_1685 = &p_2607->g_157;
            int32_t l_1698 = (-1L);
            int32_t l_1745 = 9L;
            int32_t l_1749 = 0x6E1D1DD0L;
            int32_t l_1750 = 0x3068D818L;
            int32_t l_1751 = 1L;
            int32_t l_1752 = 6L;
            uint64_t l_1753 = 0x075AE293470783F1L;
            union U1 *l_1788 = &p_2607->g_1552[0];
            uint16_t l_1812 = 65535UL;
            int32_t l_1835 = (-1L);
            int32_t l_1837 = 0x28E0267BL;
            int32_t l_1838 = 0x351A2203L;
            int32_t l_1839 = 0x5B1A2EC6L;
            int i, j;
            l_1704 = ((((((((l_1673 <= ((*l_1459) = ((FAKE_DIVERGE(p_2607->group_1_offset, get_group_id(1), 10) && l_1674[0][2]) , (((4UL > (safe_rshift_func_uint16_t_u_s((safe_add_func_int16_t_s_s((!((safe_mod_func_uint8_t_u_u(((((*l_1685) ^= l_1683) && ((safe_rshift_func_int16_t_s_u((l_1683 && (1UL >= (safe_mod_func_uint64_t_u_u((65533UL != ((*p_2607->g_510) |= (safe_lshift_func_int16_t_s_u(((*p_2607->g_495) |= (l_1673 || (safe_lshift_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u((((l_1698 ^= ((~(safe_lshift_func_uint16_t_u_u((*l_1478), 0))) == (*l_1478))) == l_1673) >= 0x5B52L), p_2607->g_882)), l_1683)))), 5)))), (*p_2607->g_606))))), FAKE_DIVERGE(p_2607->global_0_offset, get_global_id(0), 10))) <= 65528UL)) && GROUP_DIVERGE(0, 1)), GROUP_DIVERGE(0, 1))) || p_2607->g_1574.f2)), l_1673)), l_1674[0][2]))) ^ l_1699[5]) <= GROUP_DIVERGE(0, 1))))) , l_1700) != p_2607->g_1702) && FAKE_DIVERGE(p_2607->local_2_offset, get_local_id(2), 10)) <= 0xDB2EL) & 6UL) , (*l_1478)) || 0x5BF7B300L);
            (*l_1478) = ((l_1683 == ((((**p_2607->g_321) & 0x6ACB30C9L) <= (safe_mod_func_uint16_t_u_u((safe_mod_func_int64_t_s_s((p_2607->g_76[7][1][0] ^ (safe_div_func_uint16_t_u_u(((safe_sub_func_int8_t_s_s((safe_mod_func_int8_t_s_s((safe_div_func_int32_t_s_s((safe_lshift_func_uint8_t_u_s((((safe_rshift_func_uint8_t_u_s((1UL > (safe_rshift_func_int8_t_s_s(((void*)0 == l_1723), (249UL >= ((safe_div_func_int64_t_s_s((l_1672 == &p_2607->g_936[0]), FAKE_DIVERGE(p_2607->global_1_offset, get_global_id(1), 10))) <= l_1683))))), 6)) > 4294967287UL) <= FAKE_DIVERGE(p_2607->local_2_offset, get_local_id(2), 10)), (*l_1478))), p_2607->g_1278)), GROUP_DIVERGE(2, 1))), l_1683)) , (*p_2607->g_510)), 0x05D8L))), (*l_1478))), 1UL))) , 0x0E7E2E5AL)) > l_1673);
            for (p_2607->g_815 = 0; (p_2607->g_815 >= 0); p_2607->g_815 -= 1)
            { /* block id: 732 */
                int32_t **l_1731 = &p_2607->g_190[1];
                int32_t l_1738 = 0x7C2B654BL;
                int32_t l_1742[10][8][3] = {{{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L}},{{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L}},{{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L}},{{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L}},{{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L}},{{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L}},{{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L}},{{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L}},{{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L}},{{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L},{0x1FE0A0B6L,0x762B0CE9L,1L}}};
                int8_t l_1792 = 0x57L;
                int i, j, k;
                for (p_2607->g_159 = 0; (p_2607->g_159 <= 0); p_2607->g_159 += 1)
                { /* block id: 735 */
                    uint64_t l_1730 = 0x07373C3615385F30L;
                    (*p_2607->g_1728) = l_1726[1];
                    for (p_2607->g_78 = 0; (p_2607->g_78 <= 0); p_2607->g_78 += 1)
                    { /* block id: 739 */
                        int8_t l_1729 = 0x6DL;
                        (*l_1478) |= (-1L);
                        if (l_1729)
                            break;
                    }
                    if (l_1730)
                        break;
                }
                for (l_1641 = 0; (l_1641 >= 0); l_1641 -= 1)
                { /* block id: 747 */
                    uint64_t *l_1733[4];
                    int32_t l_1739 = 0L;
                    int32_t l_1741 = 0x7D6DD93FL;
                    int32_t l_1743 = 8L;
                    int32_t l_1744 = 0L;
                    int32_t l_1746 = 0L;
                    int32_t l_1748[1];
                    int i;
                    for (i = 0; i < 4; i++)
                        l_1733[i] = &p_2607->g_78;
                    for (i = 0; i < 1; i++)
                        l_1748[i] = 1L;
                    for (p_2607->g_83 = 0; (p_2607->g_83 <= 0); p_2607->g_83 += 1)
                    { /* block id: 750 */
                        int32_t *l_1735 = (void*)0;
                        int32_t *l_1736[7][6][4] = {{{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698}},{{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698}},{{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698}},{{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698}},{{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698}},{{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698}},{{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698},{&p_2607->g_102,(void*)0,&p_2607->g_102,&l_1698}}};
                        int i, j, k;
                        (*l_1478) = ((((**p_2607->g_494) = 0x45E1L) > (((((l_1731 != (void*)0) , &p_2607->g_78) == (((((*l_1478) >= (safe_unary_minus_func_int8_t_s((((&p_2607->g_539 != (void*)0) < 0x3419705F9A22C35AL) , (*l_1478))))) | l_1683) & 4294967295UL) , l_1733[3])) != p_2607->g_1734) , 65535UL)) > GROUP_DIVERGE(0, 1));
                        l_1753--;
                        (*l_1731) = &l_1673;
                    }
                    if (l_1674[1][3])
                        break;
                    if (((void*)0 != l_1756))
                    { /* block id: 757 */
                        int64_t l_1757 = 0x2A594F096DBA25A2L;
                        int32_t *l_1758 = &l_1748[0];
                        int32_t *l_1759 = &l_1748[0];
                        int32_t *l_1760[5][8] = {{&l_1748[0],&p_2607->g_5,&l_1749,&p_2607->g_5,&l_1748[0],&l_1748[0],&p_2607->g_5,&l_1749},{&l_1748[0],&p_2607->g_5,&l_1749,&p_2607->g_5,&l_1748[0],&l_1748[0],&p_2607->g_5,&l_1749},{&l_1748[0],&p_2607->g_5,&l_1749,&p_2607->g_5,&l_1748[0],&l_1748[0],&p_2607->g_5,&l_1749},{&l_1748[0],&p_2607->g_5,&l_1749,&p_2607->g_5,&l_1748[0],&l_1748[0],&p_2607->g_5,&l_1749},{&l_1748[0],&p_2607->g_5,&l_1749,&p_2607->g_5,&l_1748[0],&l_1748[0],&p_2607->g_5,&l_1749}};
                        int16_t *l_1786 = &p_2607->g_76[9][0][4];
                        int32_t l_1787 = 9L;
                        int i, j, k;
                        l_1740 = l_1757;
                        l_1761--;
                        l_1751 = ((**l_1731) != (safe_sub_func_int32_t_s_s((!((255UL >= ((safe_lshift_func_int16_t_s_s((p_2607->g_1631[(p_2607->g_1574.f2 + 1)][p_2607->g_815][p_2607->g_815] , ((*l_1478) = ((*l_1786) |= (safe_div_func_int32_t_s_s((safe_mod_func_int16_t_s_s(((l_1747 < ((safe_add_func_int8_t_s_s(((((p_2607->g_203 , l_1746) & ((safe_mod_func_uint16_t_u_u(((4294967293UL != l_1753) || (safe_add_func_uint32_t_u_u((safe_sub_func_int64_t_s_s((safe_lshift_func_int16_t_s_s((safe_mul_func_int16_t_s_s((((l_1749 , GROUP_DIVERGE(1, 1)) <= (*l_1759)) , l_1784), (**p_2607->g_494))), l_1785)), (*p_2607->g_606))), (*l_1478)))), (*p_2607->g_510))) | p_2607->g_246)) <= (**p_2607->g_494)) < 4294967295UL), p_2607->g_653)) >= (*p_2607->g_510))) ^ 3L), FAKE_DIVERGE(p_2607->local_1_offset, get_local_id(1), 10))), 0x4577FD0CL))))), l_1747)) , 0x7CL)) , l_1787)), l_1739)));
                    }
                    else
                    { /* block id: 763 */
                        union U1 **l_1789 = &l_1788;
                        union U1 *l_1791 = &p_2607->g_1552[0];
                        union U1 **l_1790 = &l_1791;
                        (*l_1790) = ((*l_1789) = l_1788);
                        (*l_1731) = (*l_1731);
                        (*l_1478) = ((*p_2607->g_101) |= (*l_1478));
                        return (***p_2607->g_1035);
                    }
                    return l_1792;
                }
            }
            for (l_1751 = 0; (l_1751 <= 0); l_1751 += 1)
            { /* block id: 776 */
                int32_t l_1801 = 0x23D2E3FDL;
                int32_t l_1803 = (-1L);
                int32_t l_1818 = 0x4B34F48FL;
                int32_t l_1824 = 0x15678AECL;
                int32_t l_1834[1];
                int16_t **l_1843[6] = {&p_2607->g_495,&p_2607->g_495,&p_2607->g_495,&p_2607->g_495,&p_2607->g_495,&p_2607->g_495};
                uint32_t l_1844 = 4UL;
                int i;
                for (i = 0; i < 1; i++)
                    l_1834[i] = 1L;
                for (p_2607->g_310.f2 = 0; (p_2607->g_310.f2 <= 0); p_2607->g_310.f2 += 1)
                { /* block id: 779 */
                    return (**p_2607->g_494);
                }
                for (p_2607->g_310.f1 = 0; (p_2607->g_310.f1 <= 0); p_2607->g_310.f1 += 1)
                { /* block id: 784 */
                    int32_t l_1796 = 0x62EC1F46L;
                    int32_t l_1802 = 0L;
                    int32_t l_1804 = 9L;
                    int32_t l_1817 = 1L;
                    int32_t l_1819 = 0L;
                    int32_t l_1822[6][3] = {{(-1L),0x00C1333AL,(-1L)},{(-1L),0x00C1333AL,(-1L)},{(-1L),0x00C1333AL,(-1L)},{(-1L),0x00C1333AL,(-1L)},{(-1L),0x00C1333AL,(-1L)},{(-1L),0x00C1333AL,(-1L)}};
                    int i, j;
                    for (l_1747 = 0; (l_1747 >= 0); l_1747 -= 1)
                    { /* block id: 787 */
                        int32_t *l_1793 = &p_2607->g_102;
                        int32_t *l_1794 = &p_2607->g_102;
                        int32_t *l_1795 = &l_1640;
                        int32_t *l_1797 = &l_1641;
                        int32_t *l_1798 = &p_2607->g_246;
                        int32_t *l_1799 = &l_1673;
                        int32_t *l_1800[4] = {&l_1642[5],&l_1642[5],&l_1642[5],&l_1642[5]};
                        uint64_t l_1805 = 0xD35BDE05E2035028L;
                        int32_t **l_1809 = (void*)0;
                        int32_t **l_1810 = (void*)0;
                        int32_t **l_1811 = &p_2607->g_190[2];
                        int i;
                        l_1805++;
                        (*p_2607->g_1808) = &l_1804;
                        (*l_1811) = &l_1640;
                    }
                    if ((l_1812 ^= l_1801))
                    { /* block id: 793 */
                        int32_t *l_1813 = &l_1471;
                        int32_t *l_1814 = &l_1747;
                        int32_t *l_1815 = (void*)0;
                        int32_t *l_1816[2][8];
                        int i, j;
                        for (i = 0; i < 2; i++)
                        {
                            for (j = 0; j < 8; j++)
                                l_1816[i][j] = &l_1749;
                        }
                        p_2607->g_1825[0][4][3]--;
                        if ((*p_2607->g_101))
                            continue;
                    }
                    else
                    { /* block id: 796 */
                        int32_t *l_1828 = &l_1804;
                        int32_t *l_1829 = &l_1698;
                        int32_t *l_1830 = (void*)0;
                        int32_t *l_1831 = &l_1471;
                        int32_t *l_1832[4] = {&l_1673,&l_1673,&l_1673,&l_1673};
                        int i;
                        l_1840--;
                    }
                    l_1819 = ((void*)0 == l_1843[4]);
                }
                return l_1844;
            }
        }
        l_1845 = ((*l_1478) &= 0x54218370L);
    }
    (*l_1478) = ((((*l_1853) = (((((((((((safe_sub_func_uint8_t_u_u(((~(0x63B20365BAC73767L >= (*l_1478))) != ((((safe_sub_func_int16_t_s_s(((*p_2607->g_495) |= (+(((0x2F03C5DBL ^ (*l_1478)) < ((void*)0 != l_1850)) && ((((((0xB7A7D1B3E24991E6L ^ (((*p_2607->g_606) = (*p_2607->g_606)) <= (safe_add_func_uint64_t_u_u((l_1853 != l_1853), (*l_1478))))) & p_2607->g_634) & 1L) > (***p_2607->g_879)) || (**p_2607->g_545)) , 1L)))), (*l_1478))) != (*l_1478)) & (*l_1478)) > (*l_1478))), (*l_1478))) > (*l_1478)) || (-1L)) , &p_2607->g_1278) != (void*)0) | p_2607->g_771[6][4]) && (*p_2607->g_606)) | p_2607->g_comm_values[p_2607->tid]) <= p_2607->g_83) < p_2607->g_539) ^ (*l_1478))) | l_1854) || (*l_1478));
    (*l_1478) = (safe_sub_func_int32_t_s_s(((l_1857 != (((&l_1701 == (void*)0) && (p_2607->g_1858 , ((((*l_1861) ^= (safe_mul_func_uint8_t_u_u((*l_1478), (*l_1478)))) <= ((((((*l_1478) == (safe_div_func_int64_t_s_s((((*p_2607->g_495) = (((*p_2607->g_101) ^ (*l_1478)) >= (*l_1478))) ^ (*p_2607->g_510)), (*l_1478)))) <= p_2607->g_1191[2]) < 5L) <= (*l_1478)) > (-7L))) && (*l_1478)))) , &l_1861)) <= (*l_1478)), 0x89328A06L));
    return (*p_2607->g_495);
}


/* ------------------------------------------ */
/* 
 * reads : p_2607->g_310.f2 p_2607->g_1138 p_2607->g_539 p_2607->g_469 p_2607->g_392 p_2607->g_606 p_2607->g_78 p_2607->g_1324 p_2607->g_246 p_2607->g_83 p_2607->g_764.f0 p_2607->g_1341 p_2607->g_1347 p_2607->g_494 p_2607->g_495 p_2607->g_8 p_2607->g_321 p_2607->g_190 p_2607->g_1371 p_2607->g_1035 p_2607->g_261 p_2607->g_510 p_2607->g_159 p_2607->g_538 p_2607->g_444.f0 p_2607->g_74 p_2607->g_101 p_2607->g_102 p_2607->g_1123.f0 p_2607->g_1440 p_2607->g_885 p_2607->g_936 p_2607->g_879 p_2607->g_880 p_2607->g_881 p_2607->g_882 p_2607->g_1451 p_2607->g_416 p_2607->g_76
 * writes: p_2607->g_310.f2 p_2607->g_1138 p_2607->g_539 p_2607->g_538 p_2607->g_83 p_2607->g_246 p_2607->g_261 p_2607->g_159 p_2607->g_190 p_2607->g_1451 p_2607->g_102
 */
uint64_t * func_32(uint64_t * p_33, struct S3 * p_2607)
{ /* block id: 273 */
    uint8_t l_594 = 0x01L;
    uint64_t *l_604[4][6][10] = {{{&p_2607->g_78,&p_2607->g_78,(void*)0,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0,(void*)0,&p_2607->g_78},{&p_2607->g_78,&p_2607->g_78,(void*)0,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0,(void*)0,&p_2607->g_78},{&p_2607->g_78,&p_2607->g_78,(void*)0,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0,(void*)0,&p_2607->g_78},{&p_2607->g_78,&p_2607->g_78,(void*)0,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0,(void*)0,&p_2607->g_78},{&p_2607->g_78,&p_2607->g_78,(void*)0,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0,(void*)0,&p_2607->g_78},{&p_2607->g_78,&p_2607->g_78,(void*)0,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0,(void*)0,&p_2607->g_78}},{{&p_2607->g_78,&p_2607->g_78,(void*)0,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0,(void*)0,&p_2607->g_78},{&p_2607->g_78,&p_2607->g_78,(void*)0,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0,(void*)0,&p_2607->g_78},{&p_2607->g_78,&p_2607->g_78,(void*)0,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0,(void*)0,&p_2607->g_78},{&p_2607->g_78,&p_2607->g_78,(void*)0,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0,(void*)0,&p_2607->g_78},{&p_2607->g_78,&p_2607->g_78,(void*)0,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0,(void*)0,&p_2607->g_78},{&p_2607->g_78,&p_2607->g_78,(void*)0,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0,(void*)0,&p_2607->g_78}},{{&p_2607->g_78,&p_2607->g_78,(void*)0,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0,(void*)0,&p_2607->g_78},{&p_2607->g_78,&p_2607->g_78,(void*)0,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0,(void*)0,&p_2607->g_78},{&p_2607->g_78,&p_2607->g_78,(void*)0,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0,(void*)0,&p_2607->g_78},{&p_2607->g_78,&p_2607->g_78,(void*)0,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0,(void*)0,&p_2607->g_78},{&p_2607->g_78,&p_2607->g_78,(void*)0,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0,(void*)0,&p_2607->g_78},{&p_2607->g_78,&p_2607->g_78,(void*)0,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0,(void*)0,&p_2607->g_78}},{{&p_2607->g_78,&p_2607->g_78,(void*)0,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0,(void*)0,&p_2607->g_78},{&p_2607->g_78,&p_2607->g_78,(void*)0,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0,(void*)0,&p_2607->g_78},{&p_2607->g_78,&p_2607->g_78,(void*)0,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0,(void*)0,&p_2607->g_78},{&p_2607->g_78,&p_2607->g_78,(void*)0,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0,(void*)0,&p_2607->g_78},{&p_2607->g_78,&p_2607->g_78,(void*)0,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0,(void*)0,&p_2607->g_78},{&p_2607->g_78,&p_2607->g_78,(void*)0,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0,(void*)0,&p_2607->g_78}}};
    int32_t *l_636[5][8] = {{&p_2607->g_5,&p_2607->g_5,&p_2607->g_188,&p_2607->g_246,&p_2607->g_246,&p_2607->g_5,&p_2607->g_246,&p_2607->g_188},{&p_2607->g_5,&p_2607->g_5,&p_2607->g_188,&p_2607->g_246,&p_2607->g_246,&p_2607->g_5,&p_2607->g_246,&p_2607->g_188},{&p_2607->g_5,&p_2607->g_5,&p_2607->g_188,&p_2607->g_246,&p_2607->g_246,&p_2607->g_5,&p_2607->g_246,&p_2607->g_188},{&p_2607->g_5,&p_2607->g_5,&p_2607->g_188,&p_2607->g_246,&p_2607->g_246,&p_2607->g_5,&p_2607->g_246,&p_2607->g_188},{&p_2607->g_5,&p_2607->g_5,&p_2607->g_188,&p_2607->g_246,&p_2607->g_246,&p_2607->g_5,&p_2607->g_246,&p_2607->g_188}};
    uint32_t l_686 = 4294967295UL;
    int16_t l_694 = 3L;
    uint8_t l_744 = 0x6BL;
    int8_t l_797[7][4] = {{0x0EL,5L,0x2DL,5L},{0x0EL,5L,0x2DL,5L},{0x0EL,5L,0x2DL,5L},{0x0EL,5L,0x2DL,5L},{0x0EL,5L,0x2DL,5L},{0x0EL,5L,0x2DL,5L},{0x0EL,5L,0x2DL,5L}};
    int32_t l_819[2];
    int64_t l_820[2];
    uint8_t l_837 = 1UL;
    uint32_t l_884 = 0x19C3B549L;
    int64_t *l_889 = &p_2607->g_815;
    int32_t *l_1006 = &p_2607->g_246;
    uint32_t l_1017[8] = {4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL};
    uint64_t *l_1119[2][6][5] = {{{&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0},{&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0},{&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0},{&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0},{&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0},{&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0}},{{&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0},{&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0},{&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0},{&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0},{&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0},{&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,(void*)0}}};
    uint16_t **l_1130 = (void*)0;
    uint32_t l_1139 = 0xA2D76BA0L;
    int32_t l_1294 = 0L;
    union U2 *l_1316 = &p_2607->g_310;
    uint32_t *l_1320 = (void*)0;
    uint32_t **l_1319 = &l_1320;
    int32_t l_1326[3];
    union U0 *l_1415 = (void*)0;
    int32_t ***l_1452 = &p_2607->g_416;
    int8_t *l_1453 = (void*)0;
    int8_t *l_1454 = (void*)0;
    int8_t *l_1455 = (void*)0;
    int8_t *l_1456 = &p_2607->g_1451;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_819[i] = 0L;
    for (i = 0; i < 2; i++)
        l_820[i] = 0x57276E324486B2DBL;
    for (i = 0; i < 3; i++)
        l_1326[i] = 0x61376C5FL;
    for (p_2607->g_310.f2 = 0; (p_2607->g_310.f2 <= 28); p_2607->g_310.f2++)
    { /* block id: 276 */
        int32_t *l_576 = (void*)0;
        uint32_t *l_583 = &p_2607->g_159;
        uint8_t *l_588 = &p_2607->g_157;
        int32_t l_591 = 0x54661B5FL;
        uint8_t l_635 = 0x47L;
        int32_t l_638 = 0x1F9565CAL;
        int32_t **l_662 = &p_2607->g_469;
        uint16_t l_688 = 0xFE8EL;
        int8_t l_695 = (-1L);
        int32_t l_698 = 0x130B41F1L;
        int32_t l_702 = (-10L);
        int32_t l_703[5][9][2] = {{{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL}},{{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL}},{{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL}},{{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL}},{{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL},{0x75FB435EL,0x17C58CFAL}}};
        int32_t l_761 = 0x06695A03L;
        int64_t *l_779 = &p_2607->g_538[0][0][3];
        int8_t l_786 = 0x66L;
        uint32_t l_799 = 0x4F6C1930L;
        int16_t l_812[10][4] = {{0x6FEFL,0x6BE2L,0x6BE2L,0x6FEFL},{0x6FEFL,0x6BE2L,0x6BE2L,0x6FEFL},{0x6FEFL,0x6BE2L,0x6BE2L,0x6FEFL},{0x6FEFL,0x6BE2L,0x6BE2L,0x6FEFL},{0x6FEFL,0x6BE2L,0x6BE2L,0x6FEFL},{0x6FEFL,0x6BE2L,0x6BE2L,0x6FEFL},{0x6FEFL,0x6BE2L,0x6BE2L,0x6FEFL},{0x6FEFL,0x6BE2L,0x6BE2L,0x6FEFL},{0x6FEFL,0x6BE2L,0x6BE2L,0x6FEFL},{0x6FEFL,0x6BE2L,0x6BE2L,0x6FEFL}};
        uint32_t l_912[7][1];
        int64_t **l_932[7][10] = {{&l_889,(void*)0,&l_889,(void*)0,&l_889,&l_889,(void*)0,&l_889,(void*)0,&l_889},{&l_889,(void*)0,&l_889,(void*)0,&l_889,&l_889,(void*)0,&l_889,(void*)0,&l_889},{&l_889,(void*)0,&l_889,(void*)0,&l_889,&l_889,(void*)0,&l_889,(void*)0,&l_889},{&l_889,(void*)0,&l_889,(void*)0,&l_889,&l_889,(void*)0,&l_889,(void*)0,&l_889},{&l_889,(void*)0,&l_889,(void*)0,&l_889,&l_889,(void*)0,&l_889,(void*)0,&l_889},{&l_889,(void*)0,&l_889,(void*)0,&l_889,&l_889,(void*)0,&l_889,(void*)0,&l_889},{&l_889,(void*)0,&l_889,(void*)0,&l_889,&l_889,(void*)0,&l_889,(void*)0,&l_889}};
        uint64_t l_953 = 3UL;
        int16_t l_974 = 0L;
        uint32_t l_978 = 0xADD079CDL;
        int64_t l_996 = (-1L);
        int32_t l_1015 = (-1L);
        uint32_t l_1031 = 0x6F7E59BBL;
        int64_t l_1062 = 0x27F5363D89E8C2DFL;
        int32_t l_1096 = (-3L);
        uint32_t l_1143[9] = {0xFD247714L,0xFD247714L,0xFD247714L,0xFD247714L,0xFD247714L,0xFD247714L,0xFD247714L,0xFD247714L,0xFD247714L};
        union U2 *l_1175 = &p_2607->g_310;
        int32_t l_1216 = 0x56F950E5L;
        int8_t l_1218 = 0x65L;
        union U0 *l_1256 = &p_2607->g_257;
        uint32_t ****l_1275 = (void*)0;
        uint32_t l_1301 = 0xE08EEDB1L;
        int i, j, k;
        for (i = 0; i < 7; i++)
        {
            for (j = 0; j < 1; j++)
                l_912[i][j] = 6UL;
        }
        (1 + 1);
    }
    for (p_2607->g_1138 = 0; (p_2607->g_1138 == 9); p_2607->g_1138++)
    { /* block id: 582 */
        union U2 *l_1315 = (void*)0;
        int32_t l_1339 = (-2L);
        int32_t l_1344 = (-4L);
        int32_t l_1369 = 5L;
        int32_t l_1382 = (-1L);
        int32_t l_1383 = (-1L);
        int32_t l_1385[8];
        int i;
        for (i = 0; i < 8; i++)
            l_1385[i] = 0x5D3A4329L;
        for (p_2607->g_539 = 0; (p_2607->g_539 >= (-29)); --p_2607->g_539)
        { /* block id: 585 */
            uint16_t l_1325 = 0x2C14L;
            uint32_t *l_1338 = &p_2607->g_159;
            uint32_t **l_1337 = &l_1338;
            uint32_t ***l_1336 = &l_1337;
            int32_t l_1372 = 4L;
            int32_t l_1375 = 0x189125E0L;
            int8_t l_1376[2][5] = {{0x25L,0x25L,0x25L,0x25L,0x25L},{0x25L,0x25L,0x25L,0x25L,0x25L}};
            int32_t l_1380 = 0x3D5B934CL;
            int32_t l_1381 = 0x0F7A50E6L;
            int32_t l_1392 = 0x7C3159C0L;
            int32_t l_1394 = (-4L);
            int32_t l_1397 = (-1L);
            int32_t l_1398 = 0x4893C00DL;
            int32_t l_1399 = 4L;
            int32_t l_1400 = (-5L);
            int32_t l_1401 = 1L;
            int32_t l_1403 = 4L;
            int32_t l_1404 = (-8L);
            int32_t l_1405[6][10] = {{0x32BC4326L,0x3044A3ACL,(-1L),0x05AC21C4L,4L,0x32BC4326L,0x05AC21C4L,0L,0x05AC21C4L,0x32BC4326L},{0x32BC4326L,0x3044A3ACL,(-1L),0x05AC21C4L,4L,0x32BC4326L,0x05AC21C4L,0L,0x05AC21C4L,0x32BC4326L},{0x32BC4326L,0x3044A3ACL,(-1L),0x05AC21C4L,4L,0x32BC4326L,0x05AC21C4L,0L,0x05AC21C4L,0x32BC4326L},{0x32BC4326L,0x3044A3ACL,(-1L),0x05AC21C4L,4L,0x32BC4326L,0x05AC21C4L,0L,0x05AC21C4L,0x32BC4326L},{0x32BC4326L,0x3044A3ACL,(-1L),0x05AC21C4L,4L,0x32BC4326L,0x05AC21C4L,0L,0x05AC21C4L,0x32BC4326L},{0x32BC4326L,0x3044A3ACL,(-1L),0x05AC21C4L,4L,0x32BC4326L,0x05AC21C4L,0L,0x05AC21C4L,0x32BC4326L}};
            volatile union U1 *l_1439 = &p_2607->g_622;
            volatile union U1 **l_1438 = &l_1439;
            int i, j;
            for (l_744 = 0; (l_744 >= 59); l_744++)
            { /* block id: 588 */
                union U2 **l_1317[1][6][6] = {{{&l_1316,&l_1316,&l_1316,&l_1316,&l_1316,&l_1316},{&l_1316,&l_1316,&l_1316,&l_1316,&l_1316,&l_1316},{&l_1316,&l_1316,&l_1316,&l_1316,&l_1316,&l_1316},{&l_1316,&l_1316,&l_1316,&l_1316,&l_1316,&l_1316},{&l_1316,&l_1316,&l_1316,&l_1316,&l_1316,&l_1316},{&l_1316,&l_1316,&l_1316,&l_1316,&l_1316,&l_1316}}};
                uint8_t *l_1318 = &l_594;
                int64_t *l_1323 = &p_2607->g_538[0][0][4];
                int32_t l_1327 = 0x09952D9CL;
                int32_t l_1368 = (-1L);
                int32_t l_1384 = 0x2177FCB7L;
                int32_t l_1389 = 0x200971C2L;
                int32_t l_1390 = (-1L);
                int32_t l_1391 = 0L;
                int32_t l_1393 = 6L;
                int32_t l_1395 = 0x3D4BB0E8L;
                int32_t l_1396 = 0x27199C60L;
                int32_t l_1402 = 0x64EABA0DL;
                int32_t l_1406 = 0x2FDCACE1L;
                int32_t l_1407[8] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
                uint8_t l_1408 = 0x61L;
                int i, j, k;
                if (((*p_2607->g_469) , (safe_mod_func_int8_t_s_s((safe_unary_minus_func_uint64_t_u((safe_mod_func_int32_t_s_s((((*l_1318) = (l_1315 == (l_1316 = l_1316))) , (((0x4FC8L > (l_1319 == ((((((safe_sub_func_uint64_t_u_u((*p_2607->g_606), ((*l_1323) = (-1L)))) , (((p_2607->g_1324[2][2][2] , ((((l_1325 != l_1325) , (-9L)) ^ l_1326[0]) || l_1327)) | 2L) , GROUP_DIVERGE(1, 1))) , 246UL) | l_1327) && (*l_1006)) , (void*)0))) & l_1327) || (*l_1006))), 1UL)))), 0x5FL))))
                { /* block id: 592 */
                    int16_t l_1328 = (-1L);
                    int32_t l_1340 = 1L;
                    int32_t l_1352 = 0x40381F2CL;
                    if (l_1328)
                        break;
                    for (p_2607->g_83 = (-7); (p_2607->g_83 == 43); ++p_2607->g_83)
                    { /* block id: 596 */
                        int32_t l_1331 = 0x69AB453CL;
                        int32_t l_1353 = 0x38A7D4BCL;
                        (*l_1006) ^= (-8L);
                        l_1331 |= (p_2607->g_764[4][9].f0 >= 0L);
                        l_1353 &= (safe_div_func_uint32_t_u_u(((l_1352 = (((void*)0 != l_1336) < ((((l_1340 = (l_1339 = 0x002DL)) < 0x9981L) != (((*l_1006) |= ((((*l_1323) = (p_2607->g_1341 , ((safe_lshift_func_int8_t_s_u(0x5EL, GROUP_DIVERGE(1, 1))) <= l_1344))) , (l_1327 = (safe_lshift_func_int16_t_s_s((p_2607->g_1347 , ((**p_2607->g_494) = ((safe_add_func_uint64_t_u_u((((safe_mul_func_uint16_t_u_u((l_1325 < l_1325), (-2L))) & (*p_2607->g_606)) || l_1327), l_1344)) && 0x62L))), l_1328)))) >= l_1331)) , l_1328)) >= l_1325))) | l_1344), l_1325));
                    }
                    (*l_1006) = ((safe_rshift_func_uint16_t_u_s((((safe_mul_func_int8_t_s_s((safe_div_func_int8_t_s_s((safe_mul_func_int8_t_s_s(0x16L, (((l_1368 &= (((safe_lshift_func_int8_t_s_s(((p_2607->g_1347 , ((*l_1338) = ((safe_add_func_uint8_t_u_u((++(*l_1318)), l_1339)) < (l_1327 >= l_1339)))) & l_1327), 3)) < (*l_1006)) != (l_1352 ^ p_2607->g_8[2]))) == l_1369) < l_1344))), l_1328)), 0UL)) | 0x1CL) == l_1327), 11)) || (*p_2607->g_606));
                }
                else
                { /* block id: 612 */
                    int32_t **l_1370 = (void*)0;
                    int32_t l_1373 = (-1L);
                    int32_t l_1374 = 1L;
                    int32_t l_1377 = (-1L);
                    int32_t l_1378 = 0x447E99C5L;
                    int32_t l_1379 = 0x3C277718L;
                    int32_t l_1386 = 0x46A3876CL;
                    int32_t l_1388[3];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_1388[i] = 0x047F7F9FL;
                    (*p_2607->g_1371) = (*p_2607->g_321);
                    --l_1408;
                    if ((((***p_2607->g_1035) || ((*p_2607->g_495) |= (safe_sub_func_int32_t_s_s((safe_lshift_func_uint16_t_u_s(((*p_2607->g_510) = l_1344), (l_1385[5] && (((void*)0 != l_1415) , (((*l_1318) |= FAKE_DIVERGE(p_2607->local_2_offset, get_local_id(2), 10)) ^ ((*l_1006) && p_2607->g_78)))))), (safe_div_func_int64_t_s_s((((***l_1336)--) == (&p_2607->g_879 != &p_2607->g_879)), (*p_2607->g_606))))))) > p_2607->g_538[0][0][0]))
                    { /* block id: 619 */
                        return p_33;
                    }
                    else
                    { /* block id: 621 */
                        int32_t ***l_1433 = &l_1370;
                        (*l_1006) = (((safe_lshift_func_uint8_t_u_u(251UL, ((safe_rshift_func_uint16_t_u_u((*p_2607->g_510), (safe_div_func_int8_t_s_s((((safe_mul_func_int8_t_s_s((safe_sub_func_uint32_t_u_u((((*p_2607->g_495) = l_1407[0]) || (safe_unary_minus_func_uint16_t_u(((l_1372 >= (&p_2607->g_637 == (((safe_add_func_uint32_t_u_u(((void*)0 != &p_2607->g_492), 0L)) ^ 0x3A46C8DCL) , l_1433))) <= GROUP_DIVERGE(0, 1))))), 6UL)), l_1396)) , 0xD5BDA14AL) | 0x1CA894B0L), p_2607->g_444.f0)))) < p_2607->g_74))) == l_1385[7]) == l_1405[3][3]);
                    }
                    if ((*p_2607->g_101))
                        continue;
                }
            }
            l_1344 |= (l_1382 || ((safe_add_func_int64_t_s_s(l_1375, (safe_rshift_func_int8_t_s_s(p_2607->g_1123[0][0].f0, 4)))) >= l_1380));
            (*l_1438) = &p_2607->g_622;
        }
        return p_33;
    }
    (*p_2607->g_101) = (((((&l_1320 == p_2607->g_1440) , (safe_lshift_func_int16_t_s_s((((***p_2607->g_1035) , p_2607->g_885[1]) || (((*l_1006) = (safe_div_func_uint8_t_u_u((((p_2607->g_936[0] ^ ((void*)0 != l_1130)) < (&l_636[0][6] == ((((*l_1456) = (((((((safe_mul_func_int8_t_s_s((safe_sub_func_int8_t_s_s((-7L), 0x00L)), (*l_1006))) ^ FAKE_DIVERGE(p_2607->global_0_offset, get_global_id(0), 10)) != (***p_2607->g_879)) & p_2607->g_1451) | (*l_1006)) , l_1452) != &p_2607->g_416)) > p_2607->g_538[0][0][3]) , (*l_1452)))) && p_2607->g_444.f0), 4L))) & p_2607->g_76[9][0][1])), (**p_2607->g_494)))) == p_2607->g_261[2][3][5]) , (**p_2607->g_494)) || 9L);
    return p_33;
}


/* ------------------------------------------ */
/* 
 * reads : p_2607->g_8 p_2607->g_51 p_2607->g_5 p_2607->l_comm_values p_2607->g_comm_values p_2607->g_3 p_2607->g_74 p_2607->g_101 p_2607->g_203 p_2607->g_102 p_2607->g_85 p_2607->g_83 p_2607->g_246 p_2607->g_219 p_2607->g_261 p_2607->g_444 p_2607->g_159 p_2607->g_188 p_2607->g_251.f0 p_2607->g_467 p_2607->g_321 p_2607->g_190 p_2607->g_78 p_2607->g_310.f4 p_2607->g_310.f2 p_2607->g_411 p_2607->g_376.f0 p_2607->g_291 p_2607->g_392 p_2607->g_76 p_2607->g_494 p_2607->g_495 p_2607->g_545 p_2607->g_510 p_2607->g_189 p_2607->g_310.f3 p_2607->g_539 p_2607->g_538 p_2607->g_560 p_2607->g_567
 * writes: p_2607->g_51 p_2607->g_74 p_2607->g_76 p_2607->g_85 p_2607->l_comm_values p_2607->g_102 p_2607->g_159 p_2607->g_219 p_2607->g_188 p_2607->g_246 p_2607->g_310.f4 p_2607->g_411 p_2607->g_468 p_2607->g_78 p_2607->g_190 p_2607->g_310.f2 p_2607->g_537 p_2607->g_538 p_2607->g_539 p_2607->g_83 p_2607->g_310.f3 p_2607->g_392 p_2607->g_568 p_2607->g_416
 */
uint64_t * func_34(int32_t  p_35, struct S3 * p_2607)
{ /* block id: 13 */
    int32_t l_43 = 0L;
    int32_t *l_49 = &p_2607->g_5;
    uint16_t *l_50 = &p_2607->g_51[2][4][2];
    uint32_t l_62 = 4294967294UL;
    uint8_t *l_73 = &p_2607->g_74;
    int16_t *l_75 = &p_2607->g_76[9][0][4];
    uint64_t *l_77 = &p_2607->g_78;
    int32_t l_451 = (-9L);
    uint32_t **l_556 = (void*)0;
    (*p_2607->g_101) = func_36(p_2607->g_8[0], ((safe_sub_func_uint16_t_u_u(((p_2607->g_8[0] ^ l_43) | (l_451 = (func_44(&p_2607->g_5, l_49, ((*l_50) &= 1UL), func_52(func_56((l_62 == ((*l_75) = ((safe_rshift_func_uint8_t_u_s(((*l_73) = (safe_mod_func_uint64_t_u_u((((safe_lshift_func_int8_t_s_s((((((l_49 == ((FAKE_DIVERGE(p_2607->global_1_offset, get_global_id(1), 10) && (safe_sub_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), ((safe_sub_func_int64_t_s_s(p_2607->g_5, (*l_49))) < p_35)))) , l_49)) <= 1UL) & 0x07L) == p_2607->g_8[3]) != p_2607->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2607->tid, 39))]), p_2607->g_8[0])) > p_2607->g_8[1]) || (*l_49)), (*l_49)))), p_35)) <= p_35))), l_77, (*l_49), &p_2607->g_5, (*l_49), p_2607), l_75, l_50, p_2607), p_2607) >= 0x459AEC8519B97B3AL))), p_35)) > 65528UL), p_2607->g_5, l_77, p_2607);
    for (p_2607->g_411 = 0; (p_2607->g_411 <= 11); p_2607->g_411 = safe_add_func_int16_t_s_s(p_2607->g_411, 6))
    { /* block id: 210 */
        int32_t l_534 = 0x34B7CA50L;
        int16_t l_535 = 0x7A7AL;
        uint64_t *l_540 = (void*)0;
        uint8_t l_542 = 254UL;
        uint64_t *l_555 = &p_2607->g_78;
        int32_t *l_558 = &l_534;
        int32_t ***l_563 = (void*)0;
        int32_t *l_573 = &p_2607->g_188;
        for (p_2607->g_102 = 21; (p_2607->g_102 >= 20); p_2607->g_102 = safe_sub_func_uint16_t_u_u(p_2607->g_102, 4))
        { /* block id: 213 */
            int32_t *l_531[1][2][5] = {{{&p_2607->g_246,&p_2607->g_246,&p_2607->g_246,&p_2607->g_246,&p_2607->g_246},{&p_2607->g_246,&p_2607->g_246,&p_2607->g_246,&p_2607->g_246,&p_2607->g_246}}};
            int8_t *l_536 = &p_2607->g_537;
            int i, j, k;
            p_2607->g_539 = (safe_mul_func_int8_t_s_s((p_2607->g_538[0][0][3] = (safe_mod_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((+((((*l_77) = 5UL) < GROUP_DIVERGE(1, 1)) | (l_534 = (safe_lshift_func_uint8_t_u_u((safe_add_func_uint8_t_u_u((((((*l_73) = (safe_lshift_func_uint8_t_u_s((safe_div_func_uint32_t_u_u((((p_35 >= 0x43797CE3A9792B73L) , (l_451 = (-2L))) || ((p_2607->g_376.f0 <= ((((*l_536) = (((((p_2607->g_291[8][5] > (safe_sub_func_int16_t_s_s(0x0304L, l_534))) || (((p_2607->g_392 & p_2607->g_8[1]) == l_535) & 0UL)) , p_2607->g_51[2][4][2]) , 0x55L) != p_2607->g_76[9][0][4])) ^ p_35) , (*l_49))) == l_534)), 0x226A5BD3L)), 2))) && 1L) || 0x61AB4815L) < p_2607->g_76[2][1][2]), p_35)), 3))))), l_535)), (**p_2607->g_494)))), GROUP_DIVERGE(1, 1)));
            for (p_2607->g_83 = 0; (p_2607->g_83 <= 4); p_2607->g_83 += 1)
            { /* block id: 223 */
                for (l_62 = 1; (l_62 <= 4); l_62 += 1)
                { /* block id: 226 */
                    return l_540;
                }
                for (p_35 = 0; (p_35 <= 4); p_35 += 1)
                { /* block id: 231 */
                    int64_t l_541 = 0x2295F0477AA763D0L;
                    uint16_t **l_547 = &p_2607->g_85;
                    uint16_t l_552 = 65535UL;
                    uint32_t ***l_557 = &l_556;
                    int i;
                    for (p_2607->g_246 = 4; (p_2607->g_246 >= 0); p_2607->g_246 -= 1)
                    { /* block id: 234 */
                        int i;
                        ++l_542;
                    }
                    l_451 = (l_541 ^ ((((p_2607->g_545 == l_547) == (safe_mul_func_uint16_t_u_u(((*l_50) = (safe_mul_func_uint16_t_u_u((*p_2607->g_510), ((0x7EBBL ^ l_552) , ((safe_sub_func_uint8_t_u_u(p_35, ((void*)0 != l_555))) , p_35))))), l_534))) , 0x470859DDC02D21D7L) , FAKE_DIVERGE(p_2607->global_0_offset, get_global_id(0), 10)));
                    for (l_534 = 4; (l_534 >= 1); l_534 -= 1)
                    { /* block id: 241 */
                        return l_77;
                    }
                    (*l_557) = l_556;
                }
            }
            l_558 = (*p_2607->g_189);
            for (p_2607->g_310.f3 = 0; (p_2607->g_310.f3 <= 0); p_2607->g_310.f3 += 1)
            { /* block id: 250 */
                int i, j, k;
                for (p_2607->g_539 = 0; (p_2607->g_539 <= 5); p_2607->g_539 += 1)
                { /* block id: 253 */
                    for (p_2607->g_392 = 5; (p_2607->g_392 >= 0); p_2607->g_392 -= 1)
                    { /* block id: 256 */
                        int32_t l_559 = 0x0C7F05EAL;
                        int i, j, k;
                        if (p_2607->g_538[p_2607->g_310.f3][p_2607->g_310.f3][p_2607->g_539])
                            break;
                        p_35 = 0x29CA20CEL;
                        l_559 = p_35;
                    }
                    (*p_2607->g_560) = (*p_2607->g_321);
                    p_35 ^= 0x30F560C3L;
                    if (p_35)
                        break;
                }
                p_35 |= (safe_lshift_func_int16_t_s_s((((((p_2607->g_538[p_2607->g_310.f3][p_2607->g_310.f3][(p_2607->g_310.f3 + 4)] ^ (p_2607->g_392 >= (-10L))) && GROUP_DIVERGE(1, 1)) != (l_563 == (void*)0)) , 4294967295UL) || (safe_sub_func_int8_t_s_s(((p_2607->g_538[p_2607->g_310.f3][p_2607->g_310.f3][(p_2607->g_310.f3 + 4)] > (safe_unary_minus_func_uint16_t_u(0x82DFL))) & 0x695EL), p_2607->g_538[p_2607->g_310.f3][p_2607->g_310.f3][(p_2607->g_310.f3 + 4)]))), 14));
                (*p_2607->g_567) = &p_2607->g_219;
            }
        }
        (*l_573) = ((((p_2607->g_416 = &p_2607->g_190[1]) != &l_558) & 0xAB89L) >= (safe_mul_func_int16_t_s_s(0x5D1EL, (safe_lshift_func_uint16_t_u_u((FAKE_DIVERGE(p_2607->global_1_offset, get_global_id(1), 10) != ((p_35 > (-10L)) && 0xC0528B89C93D9A0BL)), 11)))));
    }
    return &p_2607->g_78;
}


/* ------------------------------------------ */
/* 
 * reads : p_2607->g_188 p_2607->g_251.f0 p_2607->g_467 p_2607->g_321 p_2607->g_190 p_2607->g_5 p_2607->g_78 p_2607->g_310.f4 p_2607->g_246 p_2607->g_102 p_2607->g_310.f2
 * writes: p_2607->g_188 p_2607->g_310.f4 p_2607->g_102 p_2607->g_411 p_2607->g_246 p_2607->g_468 p_2607->g_78 p_2607->g_159 p_2607->g_190 p_2607->g_310.f2
 */
int32_t  func_36(int64_t  p_37, int32_t  p_38, int32_t  p_39, uint64_t * p_40, struct S3 * p_2607)
{ /* block id: 167 */
    int32_t *l_461 = (void*)0;
    uint32_t l_464 = 0x617245D8L;
    int32_t ***l_482 = &p_2607->g_468;
    int32_t l_508 = 0x142C2C6EL;
    int32_t l_509[4][1];
    int i, j;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 1; j++)
            l_509[i][j] = 4L;
    }
    for (p_2607->g_188 = 0; (p_2607->g_188 >= (-3)); p_2607->g_188 = safe_sub_func_uint8_t_u_u(p_2607->g_188, 5))
    { /* block id: 170 */
        int64_t l_456 = 7L;
        int32_t *l_462 = &p_2607->g_310.f4;
        int32_t *l_463 = &p_2607->g_102;
        int8_t *l_465[4][3][1] = {{{&p_2607->g_411},{&p_2607->g_411},{&p_2607->g_411}},{{&p_2607->g_411},{&p_2607->g_411},{&p_2607->g_411}},{{&p_2607->g_411},{&p_2607->g_411},{&p_2607->g_411}},{{&p_2607->g_411},{&p_2607->g_411},{&p_2607->g_411}}};
        int32_t *l_466 = &p_2607->g_246;
        int32_t l_470[3][10][8] = {{{0x7A76F87DL,0x73FFE422L,(-10L),0x1DD57C68L,0x4CBCF081L,0x42BADE8BL,0L,0x62C9E16BL},{0x7A76F87DL,0x73FFE422L,(-10L),0x1DD57C68L,0x4CBCF081L,0x42BADE8BL,0L,0x62C9E16BL},{0x7A76F87DL,0x73FFE422L,(-10L),0x1DD57C68L,0x4CBCF081L,0x42BADE8BL,0L,0x62C9E16BL},{0x7A76F87DL,0x73FFE422L,(-10L),0x1DD57C68L,0x4CBCF081L,0x42BADE8BL,0L,0x62C9E16BL},{0x7A76F87DL,0x73FFE422L,(-10L),0x1DD57C68L,0x4CBCF081L,0x42BADE8BL,0L,0x62C9E16BL},{0x7A76F87DL,0x73FFE422L,(-10L),0x1DD57C68L,0x4CBCF081L,0x42BADE8BL,0L,0x62C9E16BL},{0x7A76F87DL,0x73FFE422L,(-10L),0x1DD57C68L,0x4CBCF081L,0x42BADE8BL,0L,0x62C9E16BL},{0x7A76F87DL,0x73FFE422L,(-10L),0x1DD57C68L,0x4CBCF081L,0x42BADE8BL,0L,0x62C9E16BL},{0x7A76F87DL,0x73FFE422L,(-10L),0x1DD57C68L,0x4CBCF081L,0x42BADE8BL,0L,0x62C9E16BL},{0x7A76F87DL,0x73FFE422L,(-10L),0x1DD57C68L,0x4CBCF081L,0x42BADE8BL,0L,0x62C9E16BL}},{{0x7A76F87DL,0x73FFE422L,(-10L),0x1DD57C68L,0x4CBCF081L,0x42BADE8BL,0L,0x62C9E16BL},{0x7A76F87DL,0x73FFE422L,(-10L),0x1DD57C68L,0x4CBCF081L,0x42BADE8BL,0L,0x62C9E16BL},{0x7A76F87DL,0x73FFE422L,(-10L),0x1DD57C68L,0x4CBCF081L,0x42BADE8BL,0L,0x62C9E16BL},{0x7A76F87DL,0x73FFE422L,(-10L),0x1DD57C68L,0x4CBCF081L,0x42BADE8BL,0L,0x62C9E16BL},{0x7A76F87DL,0x73FFE422L,(-10L),0x1DD57C68L,0x4CBCF081L,0x42BADE8BL,0L,0x62C9E16BL},{0x7A76F87DL,0x73FFE422L,(-10L),0x1DD57C68L,0x4CBCF081L,0x42BADE8BL,0L,0x62C9E16BL},{0x7A76F87DL,0x73FFE422L,(-10L),0x1DD57C68L,0x4CBCF081L,0x42BADE8BL,0L,0x62C9E16BL},{0x7A76F87DL,0x73FFE422L,(-10L),0x1DD57C68L,0x4CBCF081L,0x42BADE8BL,0L,0x62C9E16BL},{0x7A76F87DL,0x73FFE422L,(-10L),0x1DD57C68L,0x4CBCF081L,0x42BADE8BL,0L,0x62C9E16BL},{0x7A76F87DL,0x73FFE422L,(-10L),0x1DD57C68L,0x4CBCF081L,0x42BADE8BL,0L,0x62C9E16BL}},{{0x7A76F87DL,0x73FFE422L,(-10L),0x1DD57C68L,0x4CBCF081L,0x42BADE8BL,0L,0x62C9E16BL},{0x7A76F87DL,0x73FFE422L,(-10L),0x1DD57C68L,0x4CBCF081L,0x42BADE8BL,0L,0x62C9E16BL},{0x7A76F87DL,0x73FFE422L,(-10L),0x1DD57C68L,0x4CBCF081L,0x42BADE8BL,0L,0x62C9E16BL},{0x7A76F87DL,0x73FFE422L,(-10L),0x1DD57C68L,0x4CBCF081L,0x42BADE8BL,0L,0x62C9E16BL},{0x7A76F87DL,0x73FFE422L,(-10L),0x1DD57C68L,0x4CBCF081L,0x42BADE8BL,0L,0x62C9E16BL},{0x7A76F87DL,0x73FFE422L,(-10L),0x1DD57C68L,0x4CBCF081L,0x42BADE8BL,0L,0x62C9E16BL},{0x7A76F87DL,0x73FFE422L,(-10L),0x1DD57C68L,0x4CBCF081L,0x42BADE8BL,0L,0x62C9E16BL},{0x7A76F87DL,0x73FFE422L,(-10L),0x1DD57C68L,0x4CBCF081L,0x42BADE8BL,0L,0x62C9E16BL},{0x7A76F87DL,0x73FFE422L,(-10L),0x1DD57C68L,0x4CBCF081L,0x42BADE8BL,0L,0x62C9E16BL},{0x7A76F87DL,0x73FFE422L,(-10L),0x1DD57C68L,0x4CBCF081L,0x42BADE8BL,0L,0x62C9E16BL}}};
        int32_t ***l_477 = &p_2607->g_468;
        int32_t ****l_478 = &l_477;
        uint32_t *l_483 = &p_2607->g_159;
        int64_t *l_484 = &l_456;
        int16_t **l_496[3][3] = {{&p_2607->g_495,&p_2607->g_495,&p_2607->g_495},{&p_2607->g_495,&p_2607->g_495,&p_2607->g_495},{&p_2607->g_495,&p_2607->g_495,&p_2607->g_495}};
        uint8_t l_507 = 247UL;
        int i, j, k;
        (*l_466) = ((safe_rshift_func_int8_t_s_s(0x75L, (8UL | (l_456 < p_38)))) < (p_2607->g_251.f0 > (p_2607->g_411 = ((-7L) ^ (((safe_add_func_uint8_t_u_u(0xD6L, ((safe_div_func_int32_t_s_s((0x1694FD9AL <= ((*l_463) = ((*l_462) = (&p_2607->g_392 != l_461)))), p_39)) >= l_464))) & p_37) || p_38)))));
        (*p_2607->g_467) = &l_461;
        if ((((((l_470[2][6][6] , ((*l_484) = (safe_add_func_int32_t_s_s((safe_sub_func_uint64_t_u_u(((**p_2607->g_321) ^ p_37), (++(*p_40)))), ((*l_483) = (((*l_478) = l_477) != (((safe_unary_minus_func_uint64_t_u((~(*l_462)))) > (safe_lshift_func_int16_t_s_u(p_39, l_464))) , l_482))))))) < (((safe_mul_func_uint16_t_u_u((safe_unary_minus_func_uint64_t_u((255UL == 0xF0L))), 0x575AL)) , (*l_466)) , 0x51E72DBE2B603D68L)) || (*l_463)) , (*l_466)) <= (*l_463)))
        { /* block id: 180 */
            int16_t ***l_493 = &p_2607->g_492;
            for (p_2607->g_102 = 0; (p_2607->g_102 >= 1); ++p_2607->g_102)
            { /* block id: 183 */
                return l_464;
            }
            (*p_2607->g_321) = (*p_2607->g_321);
        }
        else
        { /* block id: 193 */
            for (p_2607->g_102 = 2; (p_2607->g_102 >= 0); p_2607->g_102 -= 1)
            { /* block id: 196 */
                return p_37;
            }
        }
        for (p_2607->g_310.f2 = (-23); (p_2607->g_310.f2 >= 24); p_2607->g_310.f2++)
        { /* block id: 202 */
            if (l_508)
                break;
        }
    }
    return l_509[2][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_2607->g_85 p_2607->g_83 p_2607->g_5 p_2607->g_8 p_2607->g_246 p_2607->g_219 p_2607->g_261 p_2607->g_444 p_2607->g_51 p_2607->g_74 p_2607->g_159 p_2607->g_203 p_2607->g_102 p_2607->l_comm_values
 * writes: p_2607->g_102 p_2607->g_188 p_2607->g_246 p_2607->g_85 p_2607->g_159 p_2607->g_219
 */
uint64_t  func_44(int32_t * p_45, int32_t * p_46, uint16_t  p_47, int32_t * p_48, struct S3 * p_2607)
{ /* block id: 97 */
    uint8_t l_241 = 0x95L;
    int64_t **l_256 = &p_2607->g_219;
    int16_t l_260 = (-4L);
    int32_t l_277 = 0x6B3C505BL;
    int32_t l_279 = 0x33B5990AL;
    int32_t l_283 = (-8L);
    int32_t l_289 = 0x30E97A36L;
    int32_t l_290 = 0x759B0F3FL;
    int64_t *l_319 = (void*)0;
    uint32_t l_341[2][6] = {{0xB5C68F9EL,0xB5C68F9EL,0xB5C68F9EL,0xB5C68F9EL,0xB5C68F9EL,0xB5C68F9EL},{0xB5C68F9EL,0xB5C68F9EL,0xB5C68F9EL,0xB5C68F9EL,0xB5C68F9EL,0xB5C68F9EL}};
    uint32_t l_382 = 4294967295UL;
    uint16_t **l_417 = &p_2607->g_85;
    int16_t *l_447 = (void*)0;
    int16_t *l_448 = &l_260;
    int32_t **l_449 = &p_2607->g_190[2];
    uint32_t *l_450 = &p_2607->g_159;
    int i, j;
    for (p_47 = 0; (p_47 < 55); p_47 = safe_add_func_uint32_t_u_u(p_47, 4))
    { /* block id: 100 */
        int16_t l_232 = 0x60EAL;
        int16_t l_244 = 0x22A9L;
        int32_t *l_245 = &p_2607->g_246;
        int64_t ***l_258 = (void*)0;
        int64_t **l_259[5] = {&p_2607->g_219,&p_2607->g_219,&p_2607->g_219,&p_2607->g_219,&p_2607->g_219};
        int32_t l_270 = (-2L);
        int32_t l_271 = 0L;
        int32_t l_278 = 0x395FA12AL;
        int32_t l_280 = 9L;
        int32_t l_281 = (-6L);
        int32_t l_282 = 1L;
        int32_t l_284 = (-6L);
        int32_t l_285 = 0x6C76F50CL;
        int32_t l_286 = 0L;
        int32_t l_287 = 8L;
        int32_t l_288 = 0L;
        uint32_t l_365 = 4294967294UL;
        uint16_t **l_366 = &p_2607->g_85;
        int i;
        (*l_245) ^= (safe_add_func_uint32_t_u_u((l_232 ^ ((*p_48) = (((0x50574644L ^ (safe_add_func_int16_t_s_s((((safe_mul_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_u((*p_2607->g_85), ((*p_46) , 0x6E2AL))), (safe_mul_func_uint16_t_u_u((+l_241), (-6L))))) || (p_2607->g_8[1] ^ (safe_div_func_int8_t_s_s(l_232, 0x14L)))) > 18446744073709551615UL), p_47))) | l_232) & l_244))), 0x22A02113L));
    }
    p_48 = func_52(((*l_450) &= (safe_rshift_func_int8_t_s_s((&p_2607->g_74 == &l_241), (safe_mod_func_int32_t_s_s(((((safe_lshift_func_int8_t_s_s((safe_div_func_int8_t_s_s((safe_sub_func_int8_t_s_s((safe_lshift_func_int16_t_s_s((((*l_256) != ((safe_rshift_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), (safe_mod_func_uint32_t_u_u((((safe_mod_func_int16_t_s_s(((safe_rshift_func_int16_t_s_u(((safe_rshift_func_uint16_t_u_u(((GROUP_DIVERGE(2, 1) , (p_47 <= (p_2607->g_261[2][3][5] & ((p_2607->g_444 , (safe_rshift_func_int8_t_s_s((((*l_448) = (p_2607->g_51[1][6][3] , (&p_47 == ((*l_417) = (l_341[1][5] , &p_47))))) >= 1UL), 6))) & 1UL)))) & p_2607->g_261[2][3][5]), 12)) , 0x3B84L), p_2607->g_5)) >= 0x1F03871125067DC0L), 0x3325L)) , l_260) < l_241), p_47)))) , (void*)0)) , l_341[1][5]), l_290)), p_47)), p_2607->g_74)), 0)) < 0x96B56DFF16900822L) , l_449) != &p_46), p_2607->g_51[1][4][1]))))), l_447, &p_2607->g_83, p_2607);
    return p_47;
}


/* ------------------------------------------ */
/* 
 * reads : p_2607->g_203 p_2607->g_102 p_2607->l_comm_values p_2607->g_85 p_2607->g_83
 * writes: p_2607->g_102 p_2607->g_159 p_2607->g_219
 */
int32_t * func_52(uint32_t  p_53, uint16_t * p_54, uint16_t * p_55, struct S3 * p_2607)
{ /* block id: 80 */
    uint32_t l_202[5] = {4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL};
    int64_t *l_211 = (void*)0;
    int32_t l_214[10] = {0x65AF4E9BL,0x65AF4E9BL,0x65AF4E9BL,0x65AF4E9BL,0x65AF4E9BL,0x65AF4E9BL,0x65AF4E9BL,0x65AF4E9BL,0x65AF4E9BL,0x65AF4E9BL};
    int16_t l_220 = 0x076FL;
    int32_t l_221 = (-2L);
    int32_t l_222[2];
    uint8_t l_223 = 0xF4L;
    int32_t *l_227 = &p_2607->g_188;
    int i;
    for (i = 0; i < 2; i++)
        l_222[i] = 0x0A57AAD5L;
    if (((void*)0 == &p_55))
    { /* block id: 81 */
        int32_t *l_208 = &p_2607->g_102;
        int32_t *l_210[5];
        int64_t *l_212 = (void*)0;
        int i;
        for (i = 0; i < 5; i++)
            l_210[i] = (void*)0;
        for (p_53 = (-22); (p_53 >= 8); p_53++)
        { /* block id: 84 */
            int16_t *l_207 = &p_2607->g_76[1][1][6];
            int32_t **l_209[6][7] = {{&l_208,(void*)0,&l_208,&p_2607->g_190[4],&l_208,&l_208,&p_2607->g_190[4]},{&l_208,(void*)0,&l_208,&p_2607->g_190[4],&l_208,&l_208,&p_2607->g_190[4]},{&l_208,(void*)0,&l_208,&p_2607->g_190[4],&l_208,&l_208,&p_2607->g_190[4]},{&l_208,(void*)0,&l_208,&p_2607->g_190[4],&l_208,&l_208,&p_2607->g_190[4]},{&l_208,(void*)0,&l_208,&p_2607->g_190[4],&l_208,&l_208,&p_2607->g_190[4]},{&l_208,(void*)0,&l_208,&p_2607->g_190[4],&l_208,&l_208,&p_2607->g_190[4]}};
            uint32_t *l_213 = &p_2607->g_159;
            int64_t **l_218 = (void*)0;
            int i, j;
            l_214[6] |= (safe_add_func_uint32_t_u_u(((*l_213) = (safe_div_func_uint64_t_u_u((safe_sub_func_uint16_t_u_u((((*l_208) |= (safe_rshift_func_int16_t_s_u(l_202[2], (p_2607->g_203 , (safe_lshift_func_uint8_t_u_u((((safe_unary_minus_func_int16_t_s((GROUP_DIVERGE(2, 1) & p_53))) , l_207) != ((l_208 == (l_210[3] = l_208)) , &p_2607->g_76[9][0][4])), 2)))))) | ((p_53 , l_211) != l_212)), p_53)), p_2607->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2607->tid, 39))]))), 0xF76FED91L));
            (*l_208) |= ((safe_unary_minus_func_uint16_t_u((*p_2607->g_85))) > ((p_2607->g_219 = l_211) != (p_2607->g_203 , l_212)));
        }
        l_223++;
    }
    else
    { /* block id: 93 */
        int32_t *l_226 = &p_2607->g_102;
        return l_226;
    }
    return l_227;
}


/* ------------------------------------------ */
/* 
 * reads : p_2607->g_comm_values p_2607->g_3 p_2607->g_74 p_2607->g_5 p_2607->l_comm_values p_2607->g_8 p_2607->g_101
 * writes: p_2607->g_85 p_2607->l_comm_values p_2607->g_102
 */
uint32_t  func_56(int16_t  p_57, uint64_t * p_58, uint32_t  p_59, int32_t * p_60, int16_t  p_61, struct S3 * p_2607)
{ /* block id: 17 */
    uint16_t *l_82 = &p_2607->g_83;
    uint16_t **l_84[10][1][10] = {{{&l_82,&l_82,&l_82,(void*)0,&l_82,&l_82,&l_82,&l_82,(void*)0,&l_82}},{{&l_82,&l_82,&l_82,(void*)0,&l_82,&l_82,&l_82,&l_82,(void*)0,&l_82}},{{&l_82,&l_82,&l_82,(void*)0,&l_82,&l_82,&l_82,&l_82,(void*)0,&l_82}},{{&l_82,&l_82,&l_82,(void*)0,&l_82,&l_82,&l_82,&l_82,(void*)0,&l_82}},{{&l_82,&l_82,&l_82,(void*)0,&l_82,&l_82,&l_82,&l_82,(void*)0,&l_82}},{{&l_82,&l_82,&l_82,(void*)0,&l_82,&l_82,&l_82,&l_82,(void*)0,&l_82}},{{&l_82,&l_82,&l_82,(void*)0,&l_82,&l_82,&l_82,&l_82,(void*)0,&l_82}},{{&l_82,&l_82,&l_82,(void*)0,&l_82,&l_82,&l_82,&l_82,(void*)0,&l_82}},{{&l_82,&l_82,&l_82,(void*)0,&l_82,&l_82,&l_82,&l_82,(void*)0,&l_82}},{{&l_82,&l_82,&l_82,(void*)0,&l_82,&l_82,&l_82,&l_82,(void*)0,&l_82}}};
    int32_t l_86 = 1L;
    uint64_t *l_95[7] = {&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78,&p_2607->g_78};
    int64_t *l_96 = (void*)0;
    int64_t *l_97 = (void*)0;
    int64_t *l_98 = (void*)0;
    int64_t *l_99[8][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
    int8_t l_100 = 0L;
    volatile int32_t *l_104[1][1];
    volatile int32_t **l_103 = &l_104[0][0];
    uint32_t l_123 = 4294967288UL;
    uint8_t l_138 = 1UL;
    int16_t l_165 = 0x3CF2L;
    int32_t *l_184[1];
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
            l_104[i][j] = &p_2607->g_3;
    }
    for (i = 0; i < 1; i++)
        l_184[i] = &l_86;
    (*p_2607->g_101) = ((((safe_unary_minus_func_uint32_t_u(((safe_rshift_func_uint8_t_u_s((((p_2607->g_85 = l_82) != (l_86 , &p_2607->g_83)) & (safe_sub_func_uint64_t_u_u((safe_mod_func_int8_t_s_s((safe_add_func_int64_t_s_s(((((((p_2607->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2607->tid, 39))] &= ((safe_mod_func_uint32_t_u_u((l_95[0] == p_58), GROUP_DIVERGE(2, 1))) || (p_2607->g_comm_values[p_2607->tid] <= (((((p_2607->g_comm_values[p_2607->tid] & l_86) || p_2607->g_3) | 0xC649L) >= p_2607->g_74) , (*p_60))))) | l_86) | l_100) & 9L) & 1UL) != l_100), p_2607->g_8[1])), 0x62L)), 0x533B9E22A4178B3EL))), 5)) , l_86))) & GROUP_DIVERGE(1, 1)) & (-8L)) || FAKE_DIVERGE(p_2607->group_2_offset, get_group_id(2), 10));
    (*l_103) = &p_2607->g_3;
    for (p_57 = 0; (p_57 == (-23)); p_57--)
    { /* block id: 24 */
        int32_t l_107 = (-10L);
        int32_t l_108 = 6L;
        int32_t l_109 = 1L;
        int32_t l_110[3][1];
        uint64_t l_111[1];
        int32_t l_160 = 0x41F251F0L;
        int i, j;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 1; j++)
                l_110[i][j] = 0x131093E8L;
        }
        for (i = 0; i < 1; i++)
            l_111[i] = 0x2D27105428794F93L;
        ++l_111[0];
    }
    return p_59;
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[39];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 39; i++)
            l_comm_values[i] = 1;
    struct S3 c_2608;
    struct S3* p_2607 = &c_2608;
    struct S3 c_2609 = {
        0x205B2906L, // p_2607->g_3
        2L, // p_2607->g_5
        {0x31C587C7L,0x31C587C7L,0x31C587C7L,0x31C587C7L}, // p_2607->g_8
        0x4353EA3A7221EBC5L, // p_2607->g_24
        {{{0xEA44L,1UL,65532UL,6UL},{0xEA44L,1UL,65532UL,6UL},{0xEA44L,1UL,65532UL,6UL},{0xEA44L,1UL,65532UL,6UL},{0xEA44L,1UL,65532UL,6UL},{0xEA44L,1UL,65532UL,6UL},{0xEA44L,1UL,65532UL,6UL}},{{0xEA44L,1UL,65532UL,6UL},{0xEA44L,1UL,65532UL,6UL},{0xEA44L,1UL,65532UL,6UL},{0xEA44L,1UL,65532UL,6UL},{0xEA44L,1UL,65532UL,6UL},{0xEA44L,1UL,65532UL,6UL},{0xEA44L,1UL,65532UL,6UL}},{{0xEA44L,1UL,65532UL,6UL},{0xEA44L,1UL,65532UL,6UL},{0xEA44L,1UL,65532UL,6UL},{0xEA44L,1UL,65532UL,6UL},{0xEA44L,1UL,65532UL,6UL},{0xEA44L,1UL,65532UL,6UL},{0xEA44L,1UL,65532UL,6UL}}}, // p_2607->g_51
        9UL, // p_2607->g_74
        {{{(-1L),0x55B9L,(-1L),1L,0L,0x0F83L,0x5DCAL,0x5925L},{(-1L),0x55B9L,(-1L),1L,0L,0x0F83L,0x5DCAL,0x5925L},{(-1L),0x55B9L,(-1L),1L,0L,0x0F83L,0x5DCAL,0x5925L}},{{(-1L),0x55B9L,(-1L),1L,0L,0x0F83L,0x5DCAL,0x5925L},{(-1L),0x55B9L,(-1L),1L,0L,0x0F83L,0x5DCAL,0x5925L},{(-1L),0x55B9L,(-1L),1L,0L,0x0F83L,0x5DCAL,0x5925L}},{{(-1L),0x55B9L,(-1L),1L,0L,0x0F83L,0x5DCAL,0x5925L},{(-1L),0x55B9L,(-1L),1L,0L,0x0F83L,0x5DCAL,0x5925L},{(-1L),0x55B9L,(-1L),1L,0L,0x0F83L,0x5DCAL,0x5925L}},{{(-1L),0x55B9L,(-1L),1L,0L,0x0F83L,0x5DCAL,0x5925L},{(-1L),0x55B9L,(-1L),1L,0L,0x0F83L,0x5DCAL,0x5925L},{(-1L),0x55B9L,(-1L),1L,0L,0x0F83L,0x5DCAL,0x5925L}},{{(-1L),0x55B9L,(-1L),1L,0L,0x0F83L,0x5DCAL,0x5925L},{(-1L),0x55B9L,(-1L),1L,0L,0x0F83L,0x5DCAL,0x5925L},{(-1L),0x55B9L,(-1L),1L,0L,0x0F83L,0x5DCAL,0x5925L}},{{(-1L),0x55B9L,(-1L),1L,0L,0x0F83L,0x5DCAL,0x5925L},{(-1L),0x55B9L,(-1L),1L,0L,0x0F83L,0x5DCAL,0x5925L},{(-1L),0x55B9L,(-1L),1L,0L,0x0F83L,0x5DCAL,0x5925L}},{{(-1L),0x55B9L,(-1L),1L,0L,0x0F83L,0x5DCAL,0x5925L},{(-1L),0x55B9L,(-1L),1L,0L,0x0F83L,0x5DCAL,0x5925L},{(-1L),0x55B9L,(-1L),1L,0L,0x0F83L,0x5DCAL,0x5925L}},{{(-1L),0x55B9L,(-1L),1L,0L,0x0F83L,0x5DCAL,0x5925L},{(-1L),0x55B9L,(-1L),1L,0L,0x0F83L,0x5DCAL,0x5925L},{(-1L),0x55B9L,(-1L),1L,0L,0x0F83L,0x5DCAL,0x5925L}},{{(-1L),0x55B9L,(-1L),1L,0L,0x0F83L,0x5DCAL,0x5925L},{(-1L),0x55B9L,(-1L),1L,0L,0x0F83L,0x5DCAL,0x5925L},{(-1L),0x55B9L,(-1L),1L,0L,0x0F83L,0x5DCAL,0x5925L}},{{(-1L),0x55B9L,(-1L),1L,0L,0x0F83L,0x5DCAL,0x5925L},{(-1L),0x55B9L,(-1L),1L,0L,0x0F83L,0x5DCAL,0x5925L},{(-1L),0x55B9L,(-1L),1L,0L,0x0F83L,0x5DCAL,0x5925L}}}, // p_2607->g_76
        18446744073709551615UL, // p_2607->g_78
        65535UL, // p_2607->g_83
        &p_2607->g_83, // p_2607->g_85
        (-10L), // p_2607->g_102
        &p_2607->g_102, // p_2607->g_101
        0x1BL, // p_2607->g_157
        1UL, // p_2607->g_159
        (void*)0, // p_2607->g_167
        {0xC3F2L,1UL,0xC3F2L,0xC3F2L,1UL,0xC3F2L}, // p_2607->g_168
        {1L}, // p_2607->g_171
        0x062E0C10L, // p_2607->g_188
        {&p_2607->g_5,&p_2607->g_5,&p_2607->g_5,&p_2607->g_5,&p_2607->g_5}, // p_2607->g_190
        &p_2607->g_190[1], // p_2607->g_189
        {0x02ED2A023C09FFE9L}, // p_2607->g_203
        (void*)0, // p_2607->g_219
        0x057729BDL, // p_2607->g_246
        {0x66D08C7653ECA8A1L}, // p_2607->g_251
        {0x0A47113E96B69F79L}, // p_2607->g_257
        {{{0x7CE7L,(-1L),(-1L),0x6F31L,0x5765L,1L,1L},{0x7CE7L,(-1L),(-1L),0x6F31L,0x5765L,1L,1L},{0x7CE7L,(-1L),(-1L),0x6F31L,0x5765L,1L,1L},{0x7CE7L,(-1L),(-1L),0x6F31L,0x5765L,1L,1L},{0x7CE7L,(-1L),(-1L),0x6F31L,0x5765L,1L,1L}},{{0x7CE7L,(-1L),(-1L),0x6F31L,0x5765L,1L,1L},{0x7CE7L,(-1L),(-1L),0x6F31L,0x5765L,1L,1L},{0x7CE7L,(-1L),(-1L),0x6F31L,0x5765L,1L,1L},{0x7CE7L,(-1L),(-1L),0x6F31L,0x5765L,1L,1L},{0x7CE7L,(-1L),(-1L),0x6F31L,0x5765L,1L,1L}},{{0x7CE7L,(-1L),(-1L),0x6F31L,0x5765L,1L,1L},{0x7CE7L,(-1L),(-1L),0x6F31L,0x5765L,1L,1L},{0x7CE7L,(-1L),(-1L),0x6F31L,0x5765L,1L,1L},{0x7CE7L,(-1L),(-1L),0x6F31L,0x5765L,1L,1L},{0x7CE7L,(-1L),(-1L),0x6F31L,0x5765L,1L,1L}},{{0x7CE7L,(-1L),(-1L),0x6F31L,0x5765L,1L,1L},{0x7CE7L,(-1L),(-1L),0x6F31L,0x5765L,1L,1L},{0x7CE7L,(-1L),(-1L),0x6F31L,0x5765L,1L,1L},{0x7CE7L,(-1L),(-1L),0x6F31L,0x5765L,1L,1L},{0x7CE7L,(-1L),(-1L),0x6F31L,0x5765L,1L,1L}},{{0x7CE7L,(-1L),(-1L),0x6F31L,0x5765L,1L,1L},{0x7CE7L,(-1L),(-1L),0x6F31L,0x5765L,1L,1L},{0x7CE7L,(-1L),(-1L),0x6F31L,0x5765L,1L,1L},{0x7CE7L,(-1L),(-1L),0x6F31L,0x5765L,1L,1L},{0x7CE7L,(-1L),(-1L),0x6F31L,0x5765L,1L,1L}}}, // p_2607->g_261
        {{0UL,0UL,0xE3A92FD6L,1UL,0x6DDAF213L,1UL},{0UL,0UL,0xE3A92FD6L,1UL,0x6DDAF213L,1UL},{0UL,0UL,0xE3A92FD6L,1UL,0x6DDAF213L,1UL},{0UL,0UL,0xE3A92FD6L,1UL,0x6DDAF213L,1UL},{0UL,0UL,0xE3A92FD6L,1UL,0x6DDAF213L,1UL},{0UL,0UL,0xE3A92FD6L,1UL,0x6DDAF213L,1UL},{0UL,0UL,0xE3A92FD6L,1UL,0x6DDAF213L,1UL},{0UL,0UL,0xE3A92FD6L,1UL,0x6DDAF213L,1UL},{0UL,0UL,0xE3A92FD6L,1UL,0x6DDAF213L,1UL}}, // p_2607->g_291
        {-1L}, // p_2607->g_310
        &p_2607->g_190[1], // p_2607->g_321
        3L, // p_2607->g_344
        {1L}, // p_2607->g_376
        0x4A8E30B5L, // p_2607->g_392
        0x31L, // p_2607->g_411
        (void*)0, // p_2607->g_416
        {-7L}, // p_2607->g_444
        &p_2607->g_392, // p_2607->g_469
        &p_2607->g_469, // p_2607->g_468
        &p_2607->g_468, // p_2607->g_467
        (void*)0, // p_2607->g_492
        &p_2607->g_261[2][3][5], // p_2607->g_495
        &p_2607->g_495, // p_2607->g_494
        &p_2607->g_83, // p_2607->g_510
        (-9L), // p_2607->g_537
        {{{0x718D8DA8A8BE92A3L,0x427499C8A9305C21L,0x718D8DA8A8BE92A3L,0x718D8DA8A8BE92A3L,0x427499C8A9305C21L,0x718D8DA8A8BE92A3L}}}, // p_2607->g_538
        0x5FDC7472L, // p_2607->g_539
        &p_2607->g_168[4], // p_2607->g_546
        &p_2607->g_546, // p_2607->g_545
        &p_2607->g_190[1], // p_2607->g_560
        &p_2607->g_219, // p_2607->g_568
        &p_2607->g_568, // p_2607->g_567
        &p_2607->g_78, // p_2607->g_606
        {0x236DBA307122D5BBL}, // p_2607->g_622
        0x15EC8E3C29101CE6L, // p_2607->g_634
        &p_2607->g_190[1], // p_2607->g_637
        {{{{0x73F0B92987560464L}},{{0x73F0B92987560464L}},{{0x73F0B92987560464L}},{{0x73F0B92987560464L}}},{{{0x73F0B92987560464L}},{{0x73F0B92987560464L}},{{0x73F0B92987560464L}},{{0x73F0B92987560464L}}}}, // p_2607->g_648
        7UL, // p_2607->g_653
        {0x6DDB9F021196F4C5L}, // p_2607->g_731
        1L, // p_2607->g_743
        {{{0L},{0x7416F93825F36D9FL},{1L},{0x7416F93825F36D9FL},{0L},{0L},{0x7416F93825F36D9FL},{1L},{0x7416F93825F36D9FL},{0L}},{{0L},{0x7416F93825F36D9FL},{1L},{0x7416F93825F36D9FL},{0L},{0L},{0x7416F93825F36D9FL},{1L},{0x7416F93825F36D9FL},{0L}},{{0L},{0x7416F93825F36D9FL},{1L},{0x7416F93825F36D9FL},{0L},{0L},{0x7416F93825F36D9FL},{1L},{0x7416F93825F36D9FL},{0L}},{{0L},{0x7416F93825F36D9FL},{1L},{0x7416F93825F36D9FL},{0L},{0L},{0x7416F93825F36D9FL},{1L},{0x7416F93825F36D9FL},{0L}},{{0L},{0x7416F93825F36D9FL},{1L},{0x7416F93825F36D9FL},{0L},{0L},{0x7416F93825F36D9FL},{1L},{0x7416F93825F36D9FL},{0L}}}, // p_2607->g_764
        {{0x36F12360L,0xB5181375L,0x69525A6AL,0xB5181375L,0x36F12360L,0x36F12360L,0xB5181375L,0x69525A6AL,0xB5181375L},{0x36F12360L,0xB5181375L,0x69525A6AL,0xB5181375L,0x36F12360L,0x36F12360L,0xB5181375L,0x69525A6AL,0xB5181375L},{0x36F12360L,0xB5181375L,0x69525A6AL,0xB5181375L,0x36F12360L,0x36F12360L,0xB5181375L,0x69525A6AL,0xB5181375L},{0x36F12360L,0xB5181375L,0x69525A6AL,0xB5181375L,0x36F12360L,0x36F12360L,0xB5181375L,0x69525A6AL,0xB5181375L},{0x36F12360L,0xB5181375L,0x69525A6AL,0xB5181375L,0x36F12360L,0x36F12360L,0xB5181375L,0x69525A6AL,0xB5181375L},{0x36F12360L,0xB5181375L,0x69525A6AL,0xB5181375L,0x36F12360L,0x36F12360L,0xB5181375L,0x69525A6AL,0xB5181375L},{0x36F12360L,0xB5181375L,0x69525A6AL,0xB5181375L,0x36F12360L,0x36F12360L,0xB5181375L,0x69525A6AL,0xB5181375L},{0x36F12360L,0xB5181375L,0x69525A6AL,0xB5181375L,0x36F12360L,0x36F12360L,0xB5181375L,0x69525A6AL,0xB5181375L}}, // p_2607->g_771
        0x53FA7A545FE79AE2L, // p_2607->g_815
        {-1L}, // p_2607->g_846
        &p_2607->g_568, // p_2607->g_852
        1UL, // p_2607->g_882
        {&p_2607->g_882}, // p_2607->g_881
        {&p_2607->g_881[0],&p_2607->g_881[0],&p_2607->g_881[0],&p_2607->g_881[0],&p_2607->g_881[0]}, // p_2607->g_880
        &p_2607->g_880[2], // p_2607->g_879
        {4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL}, // p_2607->g_885
        {0x3B3AD1DAB624852AL}, // p_2607->g_911
        {0x936E33DCL,0x936E33DCL,0x936E33DCL,0x936E33DCL,0x936E33DCL,0x936E33DCL,0x936E33DCL,0x936E33DCL,0x936E33DCL}, // p_2607->g_936
        &p_2607->g_310, // p_2607->g_943
        {&p_2607->g_943,&p_2607->g_943,&p_2607->g_943,&p_2607->g_943}, // p_2607->g_942
        &p_2607->g_943, // p_2607->g_944
        {0x61F2610F9ACD789FL}, // p_2607->g_947
        0L, // p_2607->g_1013
        (void*)0, // p_2607->g_1034
        &p_2607->g_494, // p_2607->g_1035
        {0x0A684106CA501238L}, // p_2607->g_1094
        {{{0x5DC7466A6351E5F8L}},{{0x5DC7466A6351E5F8L}},{{0x5DC7466A6351E5F8L}},{{0x5DC7466A6351E5F8L}},{{0x5DC7466A6351E5F8L}}}, // p_2607->g_1123
        0x0C95L, // p_2607->g_1138
        {1L}, // p_2607->g_1161
        {0x52CEA9F8L,0x52CEA9F8L,0x52CEA9F8L}, // p_2607->g_1191
        &p_2607->g_257, // p_2607->g_1258
        {&p_2607->g_1258,&p_2607->g_1258,&p_2607->g_1258,&p_2607->g_1258}, // p_2607->g_1257
        &p_2607->g_1258, // p_2607->g_1259
        18446744073709551609UL, // p_2607->g_1278
        {{{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}}},{{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}}},{{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}}},{{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}}},{{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}}},{{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}}},{{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}}},{{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}},{{0x1152DAA0D4E94066L},{0x1E3D93B752DBAFCBL},{-1L}}}}, // p_2607->g_1324
        {-8L}, // p_2607->g_1341
        {0L}, // p_2607->g_1347
        &p_2607->g_190[3], // p_2607->g_1371
        (-3L), // p_2607->g_1387
        {0x12CD231BL,0x12CD231BL,0x12CD231BL}, // p_2607->g_1442
        &p_2607->g_1442[2], // p_2607->g_1441
        &p_2607->g_1441, // p_2607->g_1440
        (-1L), // p_2607->g_1451
        {-1L}, // p_2607->g_1462
        {{{{0x3F786BF0C060AE85L},{0x3F786BF0C060AE85L},{0x0D598C3E087C9946L},{0x35CB493395A9A213L},{0x674078B5FF9420D6L},{0x35CB493395A9A213L},{0x0D598C3E087C9946L},{0x3F786BF0C060AE85L},{0x3F786BF0C060AE85L}},{{0x3F786BF0C060AE85L},{0x3F786BF0C060AE85L},{0x0D598C3E087C9946L},{0x35CB493395A9A213L},{0x674078B5FF9420D6L},{0x35CB493395A9A213L},{0x0D598C3E087C9946L},{0x3F786BF0C060AE85L},{0x3F786BF0C060AE85L}}}}, // p_2607->g_1523
        {0L}, // p_2607->g_1524
        &p_2607->g_469, // p_2607->g_1539
        0L, // p_2607->g_1541
        {{0x25234F5BCF5DC239L},{0x25234F5BCF5DC239L},{0x25234F5BCF5DC239L},{0x25234F5BCF5DC239L},{0x25234F5BCF5DC239L}}, // p_2607->g_1552
        {0x0F0B581BC863C138L}, // p_2607->g_1574
        {&p_2607->g_468,&p_2607->g_468,&p_2607->g_468,&p_2607->g_468,&p_2607->g_468,&p_2607->g_468,&p_2607->g_468,&p_2607->g_468,&p_2607->g_468,&p_2607->g_468}, // p_2607->g_1581
        {0x06B39F42D2CD6084L}, // p_2607->g_1588
        {{{{0x7DBEA6CBCCD753DDL}},{{0x7DBEA6CBCCD753DDL}},{{0x7DBEA6CBCCD753DDL}},{{0x7DBEA6CBCCD753DDL}},{{0x7DBEA6CBCCD753DDL}},{{0x7DBEA6CBCCD753DDL}},{{0x7DBEA6CBCCD753DDL}},{{0x7DBEA6CBCCD753DDL}},{{0x7DBEA6CBCCD753DDL}}},{{{0x7DBEA6CBCCD753DDL}},{{0x7DBEA6CBCCD753DDL}},{{0x7DBEA6CBCCD753DDL}},{{0x7DBEA6CBCCD753DDL}},{{0x7DBEA6CBCCD753DDL}},{{0x7DBEA6CBCCD753DDL}},{{0x7DBEA6CBCCD753DDL}},{{0x7DBEA6CBCCD753DDL}},{{0x7DBEA6CBCCD753DDL}}}}, // p_2607->g_1631
        {0x06A6A104A25DE741L}, // p_2607->g_1654
        &p_2607->g_815, // p_2607->g_1703
        &p_2607->g_1703, // p_2607->g_1702
        {{&p_2607->g_943,&p_2607->g_943,(void*)0,&p_2607->g_943,&p_2607->g_943,&p_2607->g_943,(void*)0,&p_2607->g_943,&p_2607->g_943},{&p_2607->g_943,&p_2607->g_943,(void*)0,&p_2607->g_943,&p_2607->g_943,&p_2607->g_943,(void*)0,&p_2607->g_943,&p_2607->g_943},{&p_2607->g_943,&p_2607->g_943,(void*)0,&p_2607->g_943,&p_2607->g_943,&p_2607->g_943,(void*)0,&p_2607->g_943,&p_2607->g_943},{&p_2607->g_943,&p_2607->g_943,(void*)0,&p_2607->g_943,&p_2607->g_943,&p_2607->g_943,(void*)0,&p_2607->g_943,&p_2607->g_943}}, // p_2607->g_1727
        &p_2607->g_943, // p_2607->g_1728
        251UL, // p_2607->g_1734
        &p_2607->g_190[1], // p_2607->g_1808
        1L, // p_2607->g_1823
        {{{0x2BDFA36EL,0x67677A91L,4294967287UL,0xA7E50118L},{0x2BDFA36EL,0x67677A91L,4294967287UL,0xA7E50118L},{0x2BDFA36EL,0x67677A91L,4294967287UL,0xA7E50118L},{0x2BDFA36EL,0x67677A91L,4294967287UL,0xA7E50118L},{0x2BDFA36EL,0x67677A91L,4294967287UL,0xA7E50118L},{0x2BDFA36EL,0x67677A91L,4294967287UL,0xA7E50118L}},{{0x2BDFA36EL,0x67677A91L,4294967287UL,0xA7E50118L},{0x2BDFA36EL,0x67677A91L,4294967287UL,0xA7E50118L},{0x2BDFA36EL,0x67677A91L,4294967287UL,0xA7E50118L},{0x2BDFA36EL,0x67677A91L,4294967287UL,0xA7E50118L},{0x2BDFA36EL,0x67677A91L,4294967287UL,0xA7E50118L},{0x2BDFA36EL,0x67677A91L,4294967287UL,0xA7E50118L}},{{0x2BDFA36EL,0x67677A91L,4294967287UL,0xA7E50118L},{0x2BDFA36EL,0x67677A91L,4294967287UL,0xA7E50118L},{0x2BDFA36EL,0x67677A91L,4294967287UL,0xA7E50118L},{0x2BDFA36EL,0x67677A91L,4294967287UL,0xA7E50118L},{0x2BDFA36EL,0x67677A91L,4294967287UL,0xA7E50118L},{0x2BDFA36EL,0x67677A91L,4294967287UL,0xA7E50118L}},{{0x2BDFA36EL,0x67677A91L,4294967287UL,0xA7E50118L},{0x2BDFA36EL,0x67677A91L,4294967287UL,0xA7E50118L},{0x2BDFA36EL,0x67677A91L,4294967287UL,0xA7E50118L},{0x2BDFA36EL,0x67677A91L,4294967287UL,0xA7E50118L},{0x2BDFA36EL,0x67677A91L,4294967287UL,0xA7E50118L},{0x2BDFA36EL,0x67677A91L,4294967287UL,0xA7E50118L}},{{0x2BDFA36EL,0x67677A91L,4294967287UL,0xA7E50118L},{0x2BDFA36EL,0x67677A91L,4294967287UL,0xA7E50118L},{0x2BDFA36EL,0x67677A91L,4294967287UL,0xA7E50118L},{0x2BDFA36EL,0x67677A91L,4294967287UL,0xA7E50118L},{0x2BDFA36EL,0x67677A91L,4294967287UL,0xA7E50118L},{0x2BDFA36EL,0x67677A91L,4294967287UL,0xA7E50118L}}}, // p_2607->g_1825
        {7L}, // p_2607->g_1858
        0x10E6B6CDL, // p_2607->g_1868
        &p_2607->g_190[3], // p_2607->g_1908
        0L, // p_2607->g_1976
        (void*)0, // p_2607->g_2007
        {{{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007},{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007},{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007},{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007},{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007},{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007}},{{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007},{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007},{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007},{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007},{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007},{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007}},{{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007},{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007},{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007},{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007},{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007},{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007}},{{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007},{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007},{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007},{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007},{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007},{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007}},{{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007},{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007},{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007},{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007},{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007},{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007}},{{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007},{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007},{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007},{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007},{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007},{&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007,&p_2607->g_2007}}}, // p_2607->g_2006
        &p_2607->g_190[1], // p_2607->g_2017
        &p_2607->g_943, // p_2607->g_2019
        &p_2607->g_102, // p_2607->g_2044
        {0x11DC32367D3F51A8L}, // p_2607->g_2051
        {0x519A41C1ADFDEC2FL}, // p_2607->g_2064
        {&p_2607->g_1574.f4,&p_2607->g_1574.f4,&p_2607->g_1574.f4,&p_2607->g_1574.f4,&p_2607->g_1574.f4,&p_2607->g_1574.f4,&p_2607->g_1574.f4,&p_2607->g_1574.f4,&p_2607->g_1574.f4}, // p_2607->g_2092
        {{{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5}},{{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5}},{{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5}},{{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5}},{{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5}},{{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5}},{{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5}},{{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5},{&p_2607->g_5,(void*)0,&p_2607->g_5}}}, // p_2607->g_2093
        (-2L), // p_2607->g_2158
        (void*)0, // p_2607->g_2168
        (void*)0, // p_2607->g_2179
        {-3L}, // p_2607->g_2188
        &p_2607->g_190[1], // p_2607->g_2273
        {-9L}, // p_2607->g_2318
        {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}}, // p_2607->g_2360
        {{0x52C42AD365A8F043L},{0x52C42AD365A8F043L},{0x52C42AD365A8F043L}}, // p_2607->g_2374
        {0L}, // p_2607->g_2375
        {0x4F1F20E9CB7FB8CCL}, // p_2607->g_2376
        {0L}, // p_2607->g_2377
        {{0x5E2E617E127A4874L},{0x5E2E617E127A4874L}}, // p_2607->g_2378
        {0x3A18B2978E518B46L}, // p_2607->g_2379
        {0x264A1A8E61F4B208L}, // p_2607->g_2380
        {0L}, // p_2607->g_2382
        &p_2607->g_1552[0], // p_2607->g_2406
        {1L}, // p_2607->g_2415
        {1L}, // p_2607->g_2451
        (void*)0, // p_2607->g_2537
        (void*)0, // p_2607->g_2538
        {0x6F2F1C2E7E7963B5L}, // p_2607->g_2540
        {{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}}, // p_2607->g_2576
        &p_2607->g_190[1], // p_2607->g_2582
        (-5L), // p_2607->g_2593
        0x4BL, // p_2607->g_2606
        sequence_input[get_global_id(0)], // p_2607->global_0_offset
        sequence_input[get_global_id(1)], // p_2607->global_1_offset
        sequence_input[get_global_id(2)], // p_2607->global_2_offset
        sequence_input[get_local_id(0)], // p_2607->local_0_offset
        sequence_input[get_local_id(1)], // p_2607->local_1_offset
        sequence_input[get_local_id(2)], // p_2607->local_2_offset
        sequence_input[get_group_id(0)], // p_2607->group_0_offset
        sequence_input[get_group_id(1)], // p_2607->group_1_offset
        sequence_input[get_group_id(2)], // p_2607->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 39)), permutations[0][get_linear_local_id()])), // p_2607->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_2608 = c_2609;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2607);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2607->g_3, "p_2607->g_3", print_hash_value);
    transparent_crc(p_2607->g_5, "p_2607->g_5", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2607->g_8[i], "p_2607->g_8[i]", print_hash_value);

    }
    transparent_crc(p_2607->g_24, "p_2607->g_24", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_2607->g_51[i][j][k], "p_2607->g_51[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2607->g_74, "p_2607->g_74", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_2607->g_76[i][j][k], "p_2607->g_76[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2607->g_78, "p_2607->g_78", print_hash_value);
    transparent_crc(p_2607->g_83, "p_2607->g_83", print_hash_value);
    transparent_crc(p_2607->g_102, "p_2607->g_102", print_hash_value);
    transparent_crc(p_2607->g_157, "p_2607->g_157", print_hash_value);
    transparent_crc(p_2607->g_159, "p_2607->g_159", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_2607->g_168[i], "p_2607->g_168[i]", print_hash_value);

    }
    transparent_crc(p_2607->g_171.f0, "p_2607->g_171.f0", print_hash_value);
    transparent_crc(p_2607->g_188, "p_2607->g_188", print_hash_value);
    transparent_crc(p_2607->g_203.f0, "p_2607->g_203.f0", print_hash_value);
    transparent_crc(p_2607->g_246, "p_2607->g_246", print_hash_value);
    transparent_crc(p_2607->g_251.f0, "p_2607->g_251.f0", print_hash_value);
    transparent_crc(p_2607->g_257.f0, "p_2607->g_257.f0", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_2607->g_261[i][j][k], "p_2607->g_261[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_2607->g_291[i][j], "p_2607->g_291[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2607->g_344, "p_2607->g_344", print_hash_value);
    transparent_crc(p_2607->g_376.f0, "p_2607->g_376.f0", print_hash_value);
    transparent_crc(p_2607->g_392, "p_2607->g_392", print_hash_value);
    transparent_crc(p_2607->g_411, "p_2607->g_411", print_hash_value);
    transparent_crc(p_2607->g_444.f0, "p_2607->g_444.f0", print_hash_value);
    transparent_crc(p_2607->g_537, "p_2607->g_537", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_2607->g_538[i][j][k], "p_2607->g_538[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2607->g_539, "p_2607->g_539", print_hash_value);
    transparent_crc(p_2607->g_622.f0, "p_2607->g_622.f0", print_hash_value);
    transparent_crc(p_2607->g_634, "p_2607->g_634", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_2607->g_648[i][j][k].f0, "p_2607->g_648[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_2607->g_653, "p_2607->g_653", print_hash_value);
    transparent_crc(p_2607->g_731.f0, "p_2607->g_731.f0", print_hash_value);
    transparent_crc(p_2607->g_743, "p_2607->g_743", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_2607->g_764[i][j].f0, "p_2607->g_764[i][j].f0", print_hash_value);

        }
    }
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_2607->g_771[i][j], "p_2607->g_771[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2607->g_815, "p_2607->g_815", print_hash_value);
    transparent_crc(p_2607->g_846.f0, "p_2607->g_846.f0", print_hash_value);
    transparent_crc(p_2607->g_882, "p_2607->g_882", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_2607->g_885[i], "p_2607->g_885[i]", print_hash_value);

    }
    transparent_crc(p_2607->g_911.f0, "p_2607->g_911.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_2607->g_936[i], "p_2607->g_936[i]", print_hash_value);

    }
    transparent_crc(p_2607->g_947.f0, "p_2607->g_947.f0", print_hash_value);
    transparent_crc(p_2607->g_1013, "p_2607->g_1013", print_hash_value);
    transparent_crc(p_2607->g_1094.f0, "p_2607->g_1094.f0", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_2607->g_1123[i][j].f0, "p_2607->g_1123[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_2607->g_1138, "p_2607->g_1138", print_hash_value);
    transparent_crc(p_2607->g_1161.f0, "p_2607->g_1161.f0", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_2607->g_1191[i], "p_2607->g_1191[i]", print_hash_value);

    }
    transparent_crc(p_2607->g_1278, "p_2607->g_1278", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_2607->g_1324[i][j][k].f0, "p_2607->g_1324[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_2607->g_1341.f0, "p_2607->g_1341.f0", print_hash_value);
    transparent_crc(p_2607->g_1347.f0, "p_2607->g_1347.f0", print_hash_value);
    transparent_crc(p_2607->g_1387, "p_2607->g_1387", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_2607->g_1442[i], "p_2607->g_1442[i]", print_hash_value);

    }
    transparent_crc(p_2607->g_1451, "p_2607->g_1451", print_hash_value);
    transparent_crc(p_2607->g_1462.f0, "p_2607->g_1462.f0", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_2607->g_1523[i][j][k].f0, "p_2607->g_1523[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_2607->g_1524.f0, "p_2607->g_1524.f0", print_hash_value);
    transparent_crc(p_2607->g_1541, "p_2607->g_1541", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_2607->g_1552[i].f0, "p_2607->g_1552[i].f0", print_hash_value);

    }
    transparent_crc(p_2607->g_1588.f0, "p_2607->g_1588.f0", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_2607->g_1631[i][j][k].f0, "p_2607->g_1631[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_2607->g_1654.f0, "p_2607->g_1654.f0", print_hash_value);
    transparent_crc(p_2607->g_1734, "p_2607->g_1734", print_hash_value);
    transparent_crc(p_2607->g_1823, "p_2607->g_1823", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_2607->g_1825[i][j][k], "p_2607->g_1825[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2607->g_1858.f0, "p_2607->g_1858.f0", print_hash_value);
    transparent_crc(p_2607->g_1868, "p_2607->g_1868", print_hash_value);
    transparent_crc(p_2607->g_1976, "p_2607->g_1976", print_hash_value);
    transparent_crc(p_2607->g_2051.f0, "p_2607->g_2051.f0", print_hash_value);
    transparent_crc(p_2607->g_2158, "p_2607->g_2158", print_hash_value);
    transparent_crc(p_2607->g_2188.f0, "p_2607->g_2188.f0", print_hash_value);
    transparent_crc(p_2607->g_2318.f0, "p_2607->g_2318.f0", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_2607->g_2374[i].f0, "p_2607->g_2374[i].f0", print_hash_value);

    }
    transparent_crc(p_2607->g_2375.f0, "p_2607->g_2375.f0", print_hash_value);
    transparent_crc(p_2607->g_2376.f0, "p_2607->g_2376.f0", print_hash_value);
    transparent_crc(p_2607->g_2377.f0, "p_2607->g_2377.f0", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_2607->g_2378[i].f0, "p_2607->g_2378[i].f0", print_hash_value);

    }
    transparent_crc(p_2607->g_2379.f0, "p_2607->g_2379.f0", print_hash_value);
    transparent_crc(p_2607->g_2380.f0, "p_2607->g_2380.f0", print_hash_value);
    transparent_crc(p_2607->g_2382.f0, "p_2607->g_2382.f0", print_hash_value);
    transparent_crc(p_2607->g_2415.f0, "p_2607->g_2415.f0", print_hash_value);
    transparent_crc(p_2607->g_2451.f0, "p_2607->g_2451.f0", print_hash_value);
    transparent_crc(p_2607->g_2540.f0, "p_2607->g_2540.f0", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_2607->g_2576[i].f0, "p_2607->g_2576[i].f0", print_hash_value);

    }
    transparent_crc(p_2607->g_2593, "p_2607->g_2593", print_hash_value);
    transparent_crc(p_2607->g_2606, "p_2607->g_2606", print_hash_value);
    transparent_crc(p_2607->l_comm_values[get_linear_local_id()], "p_2607->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_2607->g_comm_values[get_linear_group_id() * 39 + get_linear_local_id()], "p_2607->g_comm_values[get_linear_group_id() * 39 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
