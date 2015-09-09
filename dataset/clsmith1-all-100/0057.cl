// --atomics 76 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 17,50,2 -l 1,50,2
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

__constant uint32_t permutations[10][100] = {
{28,14,50,65,24,73,49,27,45,71,70,96,91,64,82,75,62,21,31,15,94,13,20,55,61,72,89,23,47,32,98,25,8,85,34,12,9,87,86,1,3,69,60,17,40,39,5,53,66,35,36,88,7,19,30,77,57,78,4,42,46,83,56,29,16,33,41,99,58,2,74,67,38,90,54,79,93,59,0,18,76,92,10,95,97,6,68,81,11,63,44,48,52,43,26,22,37,51,80,84}, // permutation 0
{54,69,50,41,27,47,22,26,88,82,57,84,48,21,96,36,15,23,32,31,75,59,93,55,42,74,7,68,0,34,63,83,30,38,85,51,10,89,16,9,97,17,98,62,40,25,11,70,87,81,91,29,24,56,92,2,12,6,72,65,71,43,45,86,60,53,14,19,61,13,35,37,4,5,67,3,66,33,76,58,44,95,99,18,1,94,49,79,64,90,77,28,8,78,52,39,46,80,73,20}, // permutation 1
{90,67,72,80,11,47,85,28,40,68,23,55,25,48,2,4,51,69,41,52,9,32,98,77,78,30,81,34,36,56,43,7,60,46,38,94,12,45,87,35,99,66,10,54,88,89,22,79,44,63,96,57,37,74,86,19,3,92,71,61,65,91,20,6,39,97,16,26,58,15,84,8,73,70,27,1,42,14,53,17,29,24,62,0,21,83,64,31,50,76,93,5,59,75,33,18,49,82,13,95}, // permutation 2
{52,33,97,10,43,23,95,55,60,94,17,64,4,83,51,22,62,89,77,76,99,20,65,3,74,67,72,69,59,25,21,87,18,6,86,16,15,28,82,49,0,36,90,19,70,37,48,78,73,35,39,40,1,44,68,93,26,88,7,58,92,79,63,57,32,75,9,80,84,38,11,14,71,31,41,24,91,61,56,98,34,54,2,46,30,47,13,85,96,8,42,81,66,27,45,29,53,12,5,50}, // permutation 3
{93,43,68,60,18,44,56,9,17,65,27,51,97,61,87,24,38,50,55,88,45,66,0,7,3,64,89,48,49,90,83,72,91,10,14,28,59,84,35,53,92,85,21,22,39,52,75,86,15,41,5,81,26,32,63,37,19,34,71,1,77,80,82,79,20,25,40,76,6,54,70,8,23,99,95,73,11,58,31,33,47,30,57,36,62,12,67,4,46,13,69,98,16,29,94,42,78,74,96,2}, // permutation 4
{31,12,15,20,66,6,1,44,23,75,55,38,98,78,14,99,67,33,62,46,47,65,29,42,88,84,7,79,73,54,9,81,70,41,32,27,40,34,94,11,28,30,52,17,80,87,2,83,71,64,22,39,56,24,4,10,72,36,97,93,95,96,63,82,53,37,21,19,85,60,18,91,5,89,68,3,48,58,92,51,16,43,49,50,57,45,61,0,69,86,8,77,59,35,25,90,74,26,13,76}, // permutation 5
{30,19,65,93,72,13,99,24,49,5,75,36,78,41,66,80,77,16,42,92,31,33,28,70,91,50,35,61,29,64,90,38,71,87,6,96,85,39,0,98,60,20,86,48,22,32,55,18,45,57,14,23,67,58,2,59,83,25,56,97,79,82,68,4,26,3,12,43,9,15,37,21,54,63,69,17,52,62,46,73,95,89,7,51,44,10,1,40,53,94,27,74,34,88,47,76,81,11,84,8}, // permutation 6
{29,32,66,86,25,92,35,39,21,51,72,85,23,64,83,15,3,71,50,38,75,0,5,88,33,81,89,40,46,2,56,84,59,55,26,36,14,54,90,74,16,73,58,47,24,44,60,57,79,30,68,31,6,70,97,45,99,94,63,98,34,10,27,37,22,7,11,8,13,61,9,12,76,1,82,17,52,62,69,4,19,49,20,87,96,43,80,78,67,95,91,18,41,65,42,77,48,28,53,93}, // permutation 7
{70,88,89,63,17,0,16,77,23,22,14,39,1,49,44,98,42,48,26,69,73,80,71,19,75,95,35,37,68,38,10,4,29,66,96,15,13,6,83,51,31,60,2,53,45,21,41,55,46,79,28,50,54,59,90,65,18,76,87,58,27,43,12,36,86,99,32,85,78,72,30,5,91,40,92,34,74,93,64,81,52,7,3,47,94,11,62,25,57,20,97,56,84,24,82,61,8,67,33,9}, // permutation 8
{37,24,97,82,72,29,7,52,34,93,3,14,95,35,45,98,74,53,1,60,56,41,67,26,0,55,33,79,89,44,8,62,42,49,32,47,92,99,43,91,21,22,77,94,71,10,58,54,59,96,57,9,70,17,4,38,48,66,87,46,19,39,85,81,75,28,31,12,6,11,73,2,84,16,13,90,25,15,18,40,86,30,78,51,69,20,5,36,83,23,63,64,50,61,76,68,65,27,80,88} // permutation 9
};

// Seed: 57

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   int64_t  f0;
};

union U1 {
   uint32_t  f0;
   uint64_t  f1;
   uint64_t  f2;
   volatile int32_t  f3;
   uint32_t  f4;
};

union U2 {
   uint32_t  f0;
   int32_t  f1;
};

union U3 {
   volatile int64_t  f0;
   int64_t  f1;
   int32_t  f2;
};

union U4 {
   uint8_t  f0;
   uint32_t  f1;
   int8_t  f2;
   uint16_t  f3;
   int16_t  f4;
};

struct S5 {
    VECTOR(int64_t, 8) g_2;
    uint32_t g_14;
    VECTOR(uint16_t, 4) g_46;
    uint16_t *g_51;
    uint64_t g_60;
    uint64_t *g_59[1][6][8];
    union U2 g_73;
    VECTOR(uint8_t, 8) g_81;
    int32_t g_90;
    int32_t * volatile g_89;
    int32_t *g_94;
    int32_t ** volatile g_93;
    int32_t ** volatile g_95;
    VECTOR(int16_t, 4) g_105;
    VECTOR(int16_t, 2) g_107;
    uint32_t g_109;
    union U2 *g_111[6][2];
    union U2 ** volatile g_110;
    volatile uint16_t g_114;
    volatile union U3 g_126;
    union U1 g_142;
    int8_t g_144;
    int32_t g_146;
    volatile int32_t g_147;
    volatile int32_t g_148[4];
    int32_t * volatile g_153;
    volatile VECTOR(uint16_t, 8) g_170;
    int32_t ** volatile g_178;
    volatile union U1 g_187;
    int32_t ** volatile g_349[3];
    volatile union U0 g_368;
    volatile union U1 g_370[8];
    union U4 g_372;
    volatile union U2 * volatile *g_374;
    volatile union U2 * volatile **g_373;
    int8_t g_378;
    volatile VECTOR(int16_t, 2) g_392;
    uint16_t *g_414;
    volatile union U4 g_419;
    int16_t g_448;
    union U1 g_456;
    union U3 g_487;
    union U3 *g_488;
    volatile VECTOR(int8_t, 4) g_492;
    union U1 g_527;
    union U4 *g_542;
    volatile union U3 g_551;
    volatile VECTOR(int8_t, 16) g_557;
    uint32_t v_collective;
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
    __local volatile uint32_t *l_atomic_input;
    __local volatile uint32_t *l_special_values;
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
uint32_t  func_1(struct S5 * p_560);
int64_t  func_3(int32_t  p_4, int32_t  p_5, uint64_t  p_6, struct S5 * p_560);
uint8_t  func_15(uint16_t * p_16, uint32_t  p_17, struct S5 * p_560);
uint16_t * func_21(uint16_t  p_22, uint16_t  p_23, struct S5 * p_560);
uint16_t * func_29(uint16_t * p_30, uint16_t * p_31, union U2  p_32, uint32_t  p_33, int32_t  p_34, struct S5 * p_560);
uint16_t * func_35(uint16_t * p_36, uint16_t * p_37, uint16_t * p_38, struct S5 * p_560);
uint16_t * func_39(uint16_t * p_40, uint64_t  p_41, uint16_t * p_42, uint8_t  p_43, uint64_t  p_44, struct S5 * p_560);
int32_t  func_54(int64_t  p_55, uint64_t  p_56, uint64_t * p_57, struct S5 * p_560);
union U2 * func_61(uint16_t * p_62, int8_t  p_63, uint16_t  p_64, int16_t  p_65, struct S5 * p_560);
uint16_t * func_66(uint16_t * p_67, union U2 * p_68, union U2 * p_69, int32_t  p_70, union U0  p_71, struct S5 * p_560);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_560->l_comm_values p_560->g_2 p_560->g_14 p_560->g_51 p_560->g_46 p_560->g_59 p_560->g_89 p_560->g_90 p_560->g_93 p_560->g_95 p_560->g_110 p_560->g_114 p_560->g_153 p_560->g_73.f1 p_560->g_142.f0 p_560->g_170 p_560->g_109 p_560->g_94 p_560->g_178 p_560->g_comm_values p_560->g_187 p_560->g_146 p_560->g_60 p_560->g_81 p_560->g_368 p_560->g_370 p_560->g_372 p_560->g_373 p_560->g_378 p_560->g_147 p_560->g_142.f2 p_560->g_419 p_560->g_144 p_560->g_414 p_560->g_105 p_560->g_456 p_560->g_456.f2 p_560->g_187.f0 p_560->g_142.f1 p_560->g_492 p_560->g_374 p_560->g_527 p_560->g_488 p_560->g_487 p_560->g_551 p_560->g_557
 * writes: p_560->g_14 p_560->g_90 p_560->g_94 p_560->g_109 p_560->g_111 p_560->g_114 p_560->g_146 p_560->g_110 p_560->g_73.f1 p_560->g_142.f0 p_560->g_142.f2 p_560->g_378 p_560->g_144 p_560->g_105 p_560->g_372.f0 p_560->g_456.f2 p_560->g_372.f4 p_560->g_142.f1 p_560->g_488 p_560->g_542
 */
uint32_t  func_1(struct S5 * p_560)
{ /* block id: 4 */
    uint32_t l_7[2];
    VECTOR(uint16_t, 2) l_10 = (VECTOR(uint16_t, 2))(0xFD77L, 0xCAEAL);
    uint16_t *l_11 = (void*)0;
    uint16_t *l_12 = (void*)0;
    uint16_t *l_13[4];
    uint32_t l_462[5][1];
    uint16_t **l_463[1][5][1] = {{{&p_560->g_414},{&p_560->g_414},{&p_560->g_414},{&p_560->g_414},{&p_560->g_414}}};
    uint16_t *l_464 = &p_560->g_372.f3;
    uint8_t *l_465 = &p_560->g_372.f0;
    int8_t l_558[2];
    uint16_t l_559 = 0UL;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_7[i] = 8UL;
    for (i = 0; i < 4; i++)
        l_13[i] = (void*)0;
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 1; j++)
            l_462[i][j] = 0x515D100FL;
    }
    for (i = 0; i < 2; i++)
        l_558[i] = 0x08L;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    p_560->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 100)), permutations[(safe_mod_func_uint32_t_u_u((((VECTOR(int64_t, 16))(p_560->l_comm_values[(safe_mod_func_uint32_t_u_u(p_560->tid, 100))], ((VECTOR(int64_t, 8))(hadd(((VECTOR(int64_t, 4))(0x5FE46C2E7CCC8959L, 0x0C13FE662DB8E964L, 0x0D96378555145CCBL, 1L)).zxywywyw, ((VECTOR(int64_t, 8))(p_560->g_2.s66617006))))), func_3(l_7[1], p_560->g_2.s6, (safe_mod_func_uint8_t_u_u(((l_7[1] <= (p_560->g_14 = ((VECTOR(uint16_t, 4))(l_10.xxyy)).x)) , ((*l_465) = ((func_15(l_13[3], l_10.y, p_560) , (l_464 = func_39(func_21(((p_560->g_456 , (+(safe_add_func_int32_t_s_s((safe_unary_minus_func_uint32_t_u((((((((safe_mod_func_int32_t_s_s((((l_7[1] & l_462[0][0]) , p_560->g_14) != FAKE_DIVERGE(p_560->local_1_offset, get_local_id(1), 10)), l_462[0][0])) & 254UL) & l_462[3][0]) != (*p_560->g_153)) || p_560->g_170.s3) != GROUP_DIVERGE(1, 1)) != l_462[0][0]))), 0xFF54B807L)))) > 0xB7L), p_560->g_144, p_560), l_462[0][0], l_11, p_560->g_2.s7, l_10.y, p_560))) == (void*)0))), 254UL)), p_560), 0x042BE963D1901227L, 3L, 0x2A84D56629673465L, l_558[0], 0x203E29EB14DF7A7CL, 0x7870BEEA81C4BE1DL)).sb >= l_559), 10))][(safe_mod_func_uint32_t_u_u(p_560->tid, 100))]));
    return l_7[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_560->g_456.f2 p_560->g_146 p_560->g_187.f0 p_560->g_2 p_560->g_comm_values p_560->g_142.f1 p_560->g_153 p_560->g_492 p_560->g_378 p_560->g_73.f1 p_560->g_373 p_560->g_374 p_560->g_90 p_560->g_178 p_560->g_94 p_560->g_105 p_560->g_527 p_560->g_488 p_560->g_487 p_560->g_144 p_560->g_93 p_560->g_551 p_560->g_557
 * writes: p_560->g_456.f2 p_560->g_372.f4 p_560->g_142.f1 p_560->g_488 p_560->g_90 p_560->g_94 p_560->g_542
 */
int64_t  func_3(int32_t  p_4, int32_t  p_5, uint64_t  p_6, struct S5 * p_560)
{ /* block id: 191 */
    union U4 l_474 = {0UL};
    int32_t l_475[7][2] = {{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}};
    VECTOR(uint64_t, 16) l_493 = (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 1UL), 1UL), 1UL, 1UL, 1UL, (VECTOR(uint64_t, 2))(1UL, 1UL), (VECTOR(uint64_t, 2))(1UL, 1UL), 1UL, 1UL, 1UL, 1UL);
    VECTOR(int64_t, 4) l_499 = (VECTOR(int64_t, 4))(9L, (VECTOR(int64_t, 2))(9L, 7L), 7L);
    int32_t l_507 = (-1L);
    VECTOR(int16_t, 8) l_524 = (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 5L), 5L), 5L, 0L, 5L);
    uint64_t l_535 = 0UL;
    int8_t l_536 = 0L;
    VECTOR(int8_t, 2) l_539 = (VECTOR(int8_t, 2))(0x68L, 0L);
    union U4 *l_541 = &p_560->g_372;
    union U4 **l_540[5][8] = {{&l_541,(void*)0,&l_541,&l_541,(void*)0,&l_541,&l_541,(void*)0},{&l_541,(void*)0,&l_541,&l_541,(void*)0,&l_541,&l_541,(void*)0},{&l_541,(void*)0,&l_541,&l_541,(void*)0,&l_541,&l_541,(void*)0},{&l_541,(void*)0,&l_541,&l_541,(void*)0,&l_541,&l_541,(void*)0},{&l_541,(void*)0,&l_541,&l_541,(void*)0,&l_541,&l_541,(void*)0}};
    VECTOR(int64_t, 4) l_543 = (VECTOR(int64_t, 4))(0x69CBDA69288E918AL, (VECTOR(int64_t, 2))(0x69CBDA69288E918AL, 5L), 5L);
    union U0 l_546 = {0x4193594B6E9C83C5L};
    union U2 **l_553 = &p_560->g_111[4][1];
    union U2 ***l_552 = &l_553;
    union U2 ***l_554 = (void*)0;
    union U2 **l_556 = &p_560->g_111[4][1];
    union U2 ***l_555 = &l_556;
    int i, j;
    for (p_560->g_456.f2 = (-25); (p_560->g_456.f2 != 7); ++p_560->g_456.f2)
    { /* block id: 194 */
        union U2 l_476 = {4294967286UL};
        VECTOR(uint64_t, 16) l_491 = (VECTOR(uint64_t, 16))(0x65A126435A9759ECL, (VECTOR(uint64_t, 4))(0x65A126435A9759ECL, (VECTOR(uint64_t, 2))(0x65A126435A9759ECL, 0x78B215AEFBB02BE1L), 0x78B215AEFBB02BE1L), 0x78B215AEFBB02BE1L, 0x65A126435A9759ECL, 0x78B215AEFBB02BE1L, (VECTOR(uint64_t, 2))(0x65A126435A9759ECL, 0x78B215AEFBB02BE1L), (VECTOR(uint64_t, 2))(0x65A126435A9759ECL, 0x78B215AEFBB02BE1L), 0x65A126435A9759ECL, 0x78B215AEFBB02BE1L, 0x65A126435A9759ECL, 0x78B215AEFBB02BE1L);
        int32_t l_494 = 0x199D0059L;
        union U2 **l_503 = (void*)0;
        uint64_t l_506[5][4] = {{0xAD66D3353D2BFFC8L,0xEC488C9BED7005C5L,0xEC488C9BED7005C5L,0xAD66D3353D2BFFC8L},{0xAD66D3353D2BFFC8L,0xEC488C9BED7005C5L,0xEC488C9BED7005C5L,0xAD66D3353D2BFFC8L},{0xAD66D3353D2BFFC8L,0xEC488C9BED7005C5L,0xEC488C9BED7005C5L,0xAD66D3353D2BFFC8L},{0xAD66D3353D2BFFC8L,0xEC488C9BED7005C5L,0xEC488C9BED7005C5L,0xAD66D3353D2BFFC8L},{0xAD66D3353D2BFFC8L,0xEC488C9BED7005C5L,0xEC488C9BED7005C5L,0xAD66D3353D2BFFC8L}};
        int i, j;
        if (((((safe_add_func_uint32_t_u_u(((safe_lshift_func_int8_t_s_u(p_4, 6)) == (safe_rshift_func_uint8_t_u_u(((((((l_474 , l_475[4][0]) ^ (l_476 , 0x35L)) , ((((((p_560->g_146 >= p_560->g_187.f0) , l_475[4][0]) & (+((!((safe_sub_func_int16_t_s_s((l_474 , 0x74EBL), 4L)) <= 0x6BACL)) >= (-1L)))) , (-1L)) && l_476.f0) < p_5)) < 0x4968471BL) <= p_560->g_2.s2) , p_560->g_comm_values[p_560->tid]), 4))), 0x92BD37FCL)) , p_560->g_456.f2) || 1L) , p_4))
        { /* block id: 195 */
            uint16_t l_485[2][10][9] = {{{0x5825L,0xB281L,2UL,0x0A15L,0xD913L,0xF2D1L,0x689EL,65533UL,0x0A15L},{0x5825L,0xB281L,2UL,0x0A15L,0xD913L,0xF2D1L,0x689EL,65533UL,0x0A15L},{0x5825L,0xB281L,2UL,0x0A15L,0xD913L,0xF2D1L,0x689EL,65533UL,0x0A15L},{0x5825L,0xB281L,2UL,0x0A15L,0xD913L,0xF2D1L,0x689EL,65533UL,0x0A15L},{0x5825L,0xB281L,2UL,0x0A15L,0xD913L,0xF2D1L,0x689EL,65533UL,0x0A15L},{0x5825L,0xB281L,2UL,0x0A15L,0xD913L,0xF2D1L,0x689EL,65533UL,0x0A15L},{0x5825L,0xB281L,2UL,0x0A15L,0xD913L,0xF2D1L,0x689EL,65533UL,0x0A15L},{0x5825L,0xB281L,2UL,0x0A15L,0xD913L,0xF2D1L,0x689EL,65533UL,0x0A15L},{0x5825L,0xB281L,2UL,0x0A15L,0xD913L,0xF2D1L,0x689EL,65533UL,0x0A15L},{0x5825L,0xB281L,2UL,0x0A15L,0xD913L,0xF2D1L,0x689EL,65533UL,0x0A15L}},{{0x5825L,0xB281L,2UL,0x0A15L,0xD913L,0xF2D1L,0x689EL,65533UL,0x0A15L},{0x5825L,0xB281L,2UL,0x0A15L,0xD913L,0xF2D1L,0x689EL,65533UL,0x0A15L},{0x5825L,0xB281L,2UL,0x0A15L,0xD913L,0xF2D1L,0x689EL,65533UL,0x0A15L},{0x5825L,0xB281L,2UL,0x0A15L,0xD913L,0xF2D1L,0x689EL,65533UL,0x0A15L},{0x5825L,0xB281L,2UL,0x0A15L,0xD913L,0xF2D1L,0x689EL,65533UL,0x0A15L},{0x5825L,0xB281L,2UL,0x0A15L,0xD913L,0xF2D1L,0x689EL,65533UL,0x0A15L},{0x5825L,0xB281L,2UL,0x0A15L,0xD913L,0xF2D1L,0x689EL,65533UL,0x0A15L},{0x5825L,0xB281L,2UL,0x0A15L,0xD913L,0xF2D1L,0x689EL,65533UL,0x0A15L},{0x5825L,0xB281L,2UL,0x0A15L,0xD913L,0xF2D1L,0x689EL,65533UL,0x0A15L},{0x5825L,0xB281L,2UL,0x0A15L,0xD913L,0xF2D1L,0x689EL,65533UL,0x0A15L}}};
            union U2 l_502 = {0xC4B9E0F1L};
            int i, j, k;
            for (p_560->g_372.f4 = 22; (p_560->g_372.f4 > (-25)); p_560->g_372.f4 = safe_sub_func_int32_t_s_s(p_560->g_372.f4, 3))
            { /* block id: 198 */
                for (l_476.f0 = (-25); (l_476.f0 == 50); l_476.f0++)
                { /* block id: 201 */
                    if (p_6)
                        break;
                    for (p_560->g_142.f1 = (-1); (p_560->g_142.f1 <= 58); p_560->g_142.f1++)
                    { /* block id: 205 */
                        union U3 *l_486 = &p_560->g_487;
                        if (l_485[1][1][5])
                            break;
                        p_560->g_488 = l_486;
                        if ((*p_560->g_153))
                            continue;
                    }
                }
            }
            l_507 &= (safe_div_func_uint64_t_u_u(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(18446744073709551613UL, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(l_491.s0601)))), 2UL, 0x3BCDA63F2CB8E8C6L, 7UL)).s6, 0x5261EDBD27295088L, 18446744073709551607UL, (GROUP_DIVERGE(2, 1) | ((((VECTOR(int8_t, 16))(mul_hi(((VECTOR(int8_t, 4))(p_560->g_492.xzxw)).zwwywwxwxxzzxyzx, ((VECTOR(int8_t, 2))(0x1AL, 0L)).xxyyxxxxxyyyxyxy))).s5 <= ((l_494 = ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(l_493.s15e45ced53978f66)).s5e)).hi) == ((safe_sub_func_int16_t_s_s(l_475[3][0], p_560->g_378)) , (((safe_mul_func_uint8_t_u_u(p_560->g_456.f2, FAKE_DIVERGE(p_560->local_0_offset, get_local_id(0), 10))) <= ((VECTOR(int64_t, 16))(l_499.xwwxwxzyxzwzyzyz)).s1) & ((safe_mod_func_int32_t_s_s((p_560->g_90 ^= (!((p_560->g_73.f1 , (l_502 , (l_502 , (*p_560->g_373)))) != l_503))), FAKE_DIVERGE(p_560->global_0_offset, get_global_id(0), 10))) , (safe_div_func_int32_t_s_s(l_506[1][1], 0x9E51D9B3L))))))) & p_6)), GROUP_DIVERGE(2, 1), 0x5C59295EFEB37081L, 0x0BC3523A17EFFCA0L, 1UL)).s4, p_5));
        }
        else
        { /* block id: 215 */
            int32_t **l_508 = (void*)0;
            int32_t **l_509 = &p_560->g_94;
            int32_t *l_512 = &l_494;
            union U2 l_530 = {9UL};
            if ((p_5 |= ((*l_512) ^= ((((*l_509) = (*p_560->g_178)) == (FAKE_DIVERGE(p_560->group_1_offset, get_group_id(1), 10) , &p_560->g_90)) , (safe_mul_func_uint16_t_u_u(0xF16BL, 0x3595L))))))
            { /* block id: 219 */
                int64_t l_531 = 0x758CD253606760E6L;
                int8_t *l_534[9] = {&p_560->g_372.f2,&p_560->g_372.f2,&p_560->g_372.f2,&p_560->g_372.f2,&p_560->g_372.f2,&p_560->g_372.f2,&p_560->g_372.f2,&p_560->g_372.f2,&p_560->g_372.f2};
                int i;
                if ((atomic_inc(&p_560->l_atomic_input[73]) == 2))
                { /* block id: 221 */
                    int32_t l_513 = 3L;
                    uint8_t l_514 = 0x70L;
                    int8_t l_515 = (-10L);
                    int8_t l_516[5];
                    int i;
                    for (i = 0; i < 5; i++)
                        l_516[i] = 1L;
                    l_513 = 0L;
                    l_516[1] = (l_515 = l_514);
                    unsigned int result = 0;
                    result += l_513;
                    result += l_514;
                    result += l_515;
                    int l_516_i0;
                    for (l_516_i0 = 0; l_516_i0 < 5; l_516_i0++) {
                        result += l_516[l_516_i0];
                    }
                    atomic_add(&p_560->l_special_values[73], result);
                }
                else
                { /* block id: 225 */
                    (1 + 1);
                }
                (*l_509) = (((((safe_rshift_func_uint16_t_u_u((safe_mul_func_int16_t_s_s(((safe_unary_minus_func_int32_t_s(((safe_add_func_int16_t_s_s(((VECTOR(int16_t, 16))(max(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(l_524.s37147031)).lo)).xwyxzwxy)).s4403102237211321, ((VECTOR(int16_t, 2))((-1L), 0x0899L)).yyxyxxyxxxxyxyyy))).s5, l_506[1][2])) , ((safe_mod_func_int32_t_s_s((((p_560->g_105.z , p_560->g_527) , 0x55L) && ((*p_560->g_488) , (l_494 ^= ((safe_div_func_uint8_t_u_u((l_530 , ((-1L) <= (((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 4))(1L, (-7L), 1L, (-1L))), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x4BD8BA2FL, 0x4C8F7758L)).yxxx)).xzwwwzxw)).lo, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((l_531 , (safe_lshift_func_int16_t_s_s(((p_4 ^ l_531) >= l_475[4][0]), p_560->g_2.s4))) , l_507), 0x50F04F42L, (-3L), (-1L), (-1L), ((VECTOR(int32_t, 2))(0L)), 1L)).s0250567624703617)).s1e)).xyyx, ((VECTOR(int32_t, 4))(1L))))), ((VECTOR(int32_t, 4))(4L)))), 0L, p_5, ((VECTOR(int32_t, 2))(1L)), p_5, 0x27366734L, 0x66748BC6L, 0x6FE9DEBDL)).s05ca))).z | l_531))), p_6)) | p_560->g_144)))), p_6)) | l_535)))) <= p_6), l_493.s8)), 2)) | 3UL) ^ p_4) <= l_531) , (void*)0);
            }
            else
            { /* block id: 230 */
                return l_536;
            }
        }
    }
    (*p_560->g_93) = (((safe_add_func_int8_t_s_s((((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(l_539.xxyyxxxx)))).s1172511316330520)).s1 != (((p_560->g_542 = &l_474) != (void*)0) && (((VECTOR(int64_t, 4))(safe_clamp_func(VECTOR(int64_t, 4),VECTOR(int64_t, 4),((VECTOR(int64_t, 16))(l_543.wyzxywwzxwxxwzwz)).s5260, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(upsample(((VECTOR(int32_t, 4))(0L, (p_5 > ((l_499.z , ((VECTOR(int32_t, 2))(0x16F5A744L, 0x1917C344L)).odd) <= (safe_add_func_int64_t_s_s((((l_546 , (*p_560->g_373)) == (void*)0) | (-3L)), p_5)))), 1L, 0x73880750L)).wyywyzxw, ((VECTOR(uint32_t, 8))(4294967288UL))))).s55)).yxxxxxyx)).lo)), ((VECTOR(int64_t, 4))(9L))))).y != 0x1E351472BA8C41B4L))), p_6)) | FAKE_DIVERGE(p_560->group_2_offset, get_group_id(2), 10)) , &l_475[4][1]);
    (*p_560->g_94) |= (safe_rshift_func_int8_t_s_s(((p_560->g_73.f1 ^ ((p_560->g_551 , ((*l_552) = (void*)0)) == ((*l_555) = &p_560->g_111[4][1]))) && ((VECTOR(int8_t, 8))(p_560->g_557.s54c3deb8)).s1), 5));
    return p_6;
}


/* ------------------------------------------ */
/* 
 * reads : p_560->g_14 p_560->g_2 p_560->g_51 p_560->g_46 p_560->g_59 p_560->g_89 p_560->g_90 p_560->g_93 p_560->g_95 p_560->g_110 p_560->g_114 p_560->g_153 p_560->g_73.f1 p_560->g_142.f0 p_560->l_comm_values p_560->g_170 p_560->g_109 p_560->g_94 p_560->g_178 p_560->g_comm_values p_560->g_187 p_560->g_146 p_560->g_60 p_560->g_81 p_560->g_368 p_560->g_370 p_560->g_372 p_560->g_373 p_560->g_378 p_560->g_147 p_560->g_142.f2 p_560->g_419 p_560->g_144 p_560->g_414 p_560->g_105
 * writes: p_560->g_90 p_560->g_94 p_560->g_109 p_560->g_111 p_560->g_114 p_560->g_146 p_560->g_110 p_560->g_73.f1 p_560->g_142.f0 p_560->g_142.f2 p_560->g_378 p_560->g_144 p_560->g_105
 */
uint8_t  func_15(uint16_t * p_16, uint32_t  p_17, struct S5 * p_560)
{ /* block id: 6 */
    VECTOR(uint64_t, 2) l_20 = (VECTOR(uint64_t, 2))(1UL, 0UL);
    VECTOR(uint8_t, 16) l_28 = (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL, (VECTOR(uint8_t, 2))(1UL, 0UL), (VECTOR(uint8_t, 2))(1UL, 0UL), 1UL, 0UL, 1UL, 0UL);
    uint16_t *l_45[2];
    uint64_t *l_47 = (void*)0;
    uint64_t *l_48 = (void*)0;
    uint64_t *l_49[4][4][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    int32_t l_50 = (-1L);
    uint16_t **l_191 = &l_45[0];
    uint16_t *l_192 = (void*)0;
    union U2 l_193 = {0x88943AF5L};
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_45[i] = (void*)0;
    atomic_min(&p_560->g_atomic_reduction[get_linear_group_id()], ((p_17 != (!((safe_add_func_int32_t_s_s(1L, (((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(l_20.xxxxyxyy)).s6312766505037745)).s3 , ((p_560->g_14 < (((*l_191) = func_21((safe_mod_func_uint32_t_u_u(FAKE_DIVERGE(p_560->local_2_offset, get_local_id(2), 10), p_560->g_14)), (~((((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(0UL, 0UL)).yxxxyyxyyxxxyyxy)).odd, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(l_28.s320b)).zzxyzxzxzywyyzwx)).hi))))).s3 <= ((((((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(0x5D74L, (-3L))))).even >= p_560->g_2.s5) , (void*)0) != ((*l_191) = func_29(((*l_191) = func_35(func_39(l_45[0], (l_50 ^= l_28.se), p_560->g_51, l_28.s3, p_560->g_46.w, p_560), p_16, l_45[0], p_560)), l_192, l_193, l_28.s9, p_560->g_46.w, p_560))) , 0L)) & l_193.f0)), p_560)) != (void*)0)) < 0x0499L)))) > 0x5D25CCA6L))) , p_17) + get_linear_global_id());
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (get_linear_local_id() == 0)
        p_560->v_collective += p_560->g_atomic_reduction[get_linear_group_id()];
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    return l_20.y;
}


/* ------------------------------------------ */
/* 
 * reads : p_560->g_2 p_560->g_73.f1 p_560->g_146 p_560->g_105
 * writes:
 */
uint16_t * func_21(uint16_t  p_22, uint16_t  p_23, struct S5 * p_560)
{ /* block id: 177 */
    int16_t l_428[5] = {0x38FFL,0x38FFL,0x38FFL,0x38FFL,0x38FFL};
    VECTOR(uint64_t, 8) l_431 = (VECTOR(uint64_t, 8))(0x1D2C828B5EAA5F83L, (VECTOR(uint64_t, 4))(0x1D2C828B5EAA5F83L, (VECTOR(uint64_t, 2))(0x1D2C828B5EAA5F83L, 18446744073709551610UL), 18446744073709551610UL), 18446744073709551610UL, 0x1D2C828B5EAA5F83L, 18446744073709551610UL);
    int32_t l_433 = 0L;
    VECTOR(uint16_t, 4) l_442 = (VECTOR(uint16_t, 4))(0x2EABL, (VECTOR(uint16_t, 2))(0x2EABL, 65527UL), 65527UL);
    VECTOR(int32_t, 4) l_445 = (VECTOR(int32_t, 4))(0x3A7181B3L, (VECTOR(int32_t, 2))(0x3A7181B3L, 0x4E929CA0L), 0x4E929CA0L);
    int32_t *l_447[4] = {&p_560->g_146,&p_560->g_146,&p_560->g_146,&p_560->g_146};
    int8_t l_449 = 0x73L;
    int64_t l_450 = 0x6B7182B8907EDFD5L;
    int32_t l_451 = 0x47E50BF7L;
    uint8_t l_452 = 1UL;
    uint16_t *l_455 = (void*)0;
    int i;
    if ((p_560->g_2.s4 & 0x20L))
    { /* block id: 178 */
        int32_t l_443 = 0x292D214EL;
        int32_t *l_444[9][4] = {{&p_560->g_90,&p_560->g_90,&p_560->g_146,(void*)0},{&p_560->g_90,&p_560->g_90,&p_560->g_146,(void*)0},{&p_560->g_90,&p_560->g_90,&p_560->g_146,(void*)0},{&p_560->g_90,&p_560->g_90,&p_560->g_146,(void*)0},{&p_560->g_90,&p_560->g_90,&p_560->g_146,(void*)0},{&p_560->g_90,&p_560->g_90,&p_560->g_146,(void*)0},{&p_560->g_90,&p_560->g_90,&p_560->g_146,(void*)0},{&p_560->g_90,&p_560->g_90,&p_560->g_146,(void*)0},{&p_560->g_90,&p_560->g_90,&p_560->g_146,(void*)0}};
        int i, j;
        l_445.w = (l_428[3] | (safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 4))(mul_hi(((VECTOR(uint64_t, 16))(mul_hi(((VECTOR(uint64_t, 4))(l_431.s3733)).xwywzzwwzyxyyxwx, ((VECTOR(uint64_t, 2))(clz(((VECTOR(uint64_t, 2))(0xEB5DE969655D204FL, 0x79B82C45D0065DB7L))))).xyyyxxxyyxyxxxyy))).sdf34, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(8UL, 0xD268651F1D80B0ECL)), 1UL, 0UL))))).w, (0xE942B4CAL < (0x29L <= ((l_433 = ((safe_unary_minus_func_int16_t_s(p_560->g_73.f1)) || p_22)) == ((VECTOR(uint8_t, 8))(safe_clamp_func(VECTOR(uint8_t, 8),uint8_t,((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(0xA4L, 255UL, 0xD3L, 0xF7L)), (safe_rshift_func_uint8_t_u_u(0xDFL, 0)), 0xD7L, (safe_mul_func_uint16_t_u_u((0x6170235D63E7AE3EL | (safe_add_func_int8_t_s_s(p_560->g_146, ((safe_rshift_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(l_442.zx)).xxyxyxxxyyyxxxxy)).sd, 9)) , p_560->g_105.w)))), p_22)), GROUP_DIVERGE(1, 1), 0xCFL, 0UL, 0xA1L, GROUP_DIVERGE(1, 1), l_443, ((VECTOR(uint8_t, 2))(1UL)), 0UL)))).hi, (uint8_t)l_443, (uint8_t)l_431.s0))).s0))))));
    }
    else
    { /* block id: 181 */
        uint16_t *l_446 = (void*)0;
        return l_446;
    }
    l_452--;
    return l_455;
}


/* ------------------------------------------ */
/* 
 * reads : p_560->g_73.f1 p_560->g_93 p_560->g_94 p_560->g_60 p_560->g_81 p_560->g_368 p_560->g_370 p_560->g_372 p_560->g_373 p_560->g_51 p_560->g_378 p_560->g_14 p_560->g_147 p_560->g_142.f2 p_560->g_146 p_560->g_419 p_560->g_144 p_560->g_414
 * writes: p_560->g_73.f1 p_560->g_142.f2 p_560->g_109 p_560->g_146 p_560->g_378 p_560->g_144 p_560->g_105
 */
uint16_t * func_29(uint16_t * p_30, uint16_t * p_31, union U2  p_32, uint32_t  p_33, int32_t  p_34, struct S5 * p_560)
{ /* block id: 67 */
    int32_t *l_194 = (void*)0;
    int32_t *l_195 = &p_560->g_146;
    int32_t *l_196[1][8][9] = {{{(void*)0,&p_560->g_90,&p_560->g_146,(void*)0,&p_560->g_146,&p_560->g_90,(void*)0,(void*)0,&p_560->g_90},{(void*)0,&p_560->g_90,&p_560->g_146,(void*)0,&p_560->g_146,&p_560->g_90,(void*)0,(void*)0,&p_560->g_90},{(void*)0,&p_560->g_90,&p_560->g_146,(void*)0,&p_560->g_146,&p_560->g_90,(void*)0,(void*)0,&p_560->g_90},{(void*)0,&p_560->g_90,&p_560->g_146,(void*)0,&p_560->g_146,&p_560->g_90,(void*)0,(void*)0,&p_560->g_90},{(void*)0,&p_560->g_90,&p_560->g_146,(void*)0,&p_560->g_146,&p_560->g_90,(void*)0,(void*)0,&p_560->g_90},{(void*)0,&p_560->g_90,&p_560->g_146,(void*)0,&p_560->g_146,&p_560->g_90,(void*)0,(void*)0,&p_560->g_90},{(void*)0,&p_560->g_90,&p_560->g_146,(void*)0,&p_560->g_146,&p_560->g_90,(void*)0,(void*)0,&p_560->g_90},{(void*)0,&p_560->g_90,&p_560->g_146,(void*)0,&p_560->g_146,&p_560->g_90,(void*)0,(void*)0,&p_560->g_90}}};
    int16_t l_197 = 2L;
    int32_t l_198[5];
    uint32_t l_199 = 0x19C88812L;
    VECTOR(uint64_t, 16) l_364 = (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 4UL), 4UL), 4UL, 1UL, 4UL, (VECTOR(uint64_t, 2))(1UL, 4UL), (VECTOR(uint64_t, 2))(1UL, 4UL), 1UL, 4UL, 1UL, 4UL);
    union U0 l_369 = {-10L};
    VECTOR(int16_t, 4) l_393 = (VECTOR(int16_t, 4))(0x5446L, (VECTOR(int16_t, 2))(0x5446L, (-1L)), (-1L));
    VECTOR(int32_t, 2) l_413 = (VECTOR(int32_t, 2))((-8L), 0x31DA6C4BL);
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_198[i] = 0x16C2306FL;
    --l_199;
    for (p_560->g_73.f1 = (-5); (p_560->g_73.f1 < (-22)); p_560->g_73.f1--)
    { /* block id: 71 */
        uint16_t **l_359 = &p_560->g_51;
        union U4 l_384 = {0x13L};
        VECTOR(int32_t, 16) l_391 = (VECTOR(int32_t, 16))(0x7991252DL, (VECTOR(int32_t, 4))(0x7991252DL, (VECTOR(int32_t, 2))(0x7991252DL, 0x29B2E18DL), 0x29B2E18DL), 0x29B2E18DL, 0x7991252DL, 0x29B2E18DL, (VECTOR(int32_t, 2))(0x7991252DL, 0x29B2E18DL), (VECTOR(int32_t, 2))(0x7991252DL, 0x29B2E18DL), 0x7991252DL, 0x29B2E18DL, 0x7991252DL, 0x29B2E18DL);
        VECTOR(int16_t, 8) l_394 = (VECTOR(int16_t, 8))(0x699AL, (VECTOR(int16_t, 4))(0x699AL, (VECTOR(int16_t, 2))(0x699AL, (-1L)), (-1L)), (-1L), 0x699AL, (-1L));
        VECTOR(int32_t, 2) l_412 = (VECTOR(int32_t, 2))(1L, (-6L));
        VECTOR(int32_t, 4) l_416 = (VECTOR(int32_t, 4))(0x23EB6ABDL, (VECTOR(int32_t, 2))(0x23EB6ABDL, (-8L)), (-8L));
        VECTOR(int32_t, 4) l_417 = (VECTOR(int32_t, 4))(0x69B236C8L, (VECTOR(int32_t, 2))(0x69B236C8L, 0x163D97BAL), 0x163D97BAL);
        VECTOR(int32_t, 4) l_418 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-1L)), (-1L));
        union U2 **l_424 = &p_560->g_111[4][1];
        uint16_t l_427 = 0x54A3L;
        int i;
        if ((atomic_inc(&p_560->l_atomic_input[12]) == 5))
        { /* block id: 73 */
            int32_t l_204 = 0x7B0A4E48L;
            VECTOR(uint16_t, 4) l_263 = (VECTOR(uint16_t, 4))(0x579BL, (VECTOR(uint16_t, 2))(0x579BL, 0x205CL), 0x205CL);
            VECTOR(uint8_t, 16) l_264 = (VECTOR(uint8_t, 16))(0x7DL, (VECTOR(uint8_t, 4))(0x7DL, (VECTOR(uint8_t, 2))(0x7DL, 0x96L), 0x96L), 0x96L, 0x7DL, 0x96L, (VECTOR(uint8_t, 2))(0x7DL, 0x96L), (VECTOR(uint8_t, 2))(0x7DL, 0x96L), 0x7DL, 0x96L, 0x7DL, 0x96L);
            VECTOR(uint8_t, 4) l_265 = (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 2UL), 2UL);
            VECTOR(int8_t, 2) l_266 = (VECTOR(int8_t, 2))(0x0EL, 0x1CL);
            VECTOR(int32_t, 2) l_267 = (VECTOR(int32_t, 2))(0L, 0x2D4B5105L);
            union U3 l_268[10] = {{-1L},{-1L},{-1L},{-1L},{-1L},{-1L},{-1L},{-1L},{-1L},{-1L}};
            VECTOR(int8_t, 16) l_269 = (VECTOR(int8_t, 16))(0x06L, (VECTOR(int8_t, 4))(0x06L, (VECTOR(int8_t, 2))(0x06L, 0x0AL), 0x0AL), 0x0AL, 0x06L, 0x0AL, (VECTOR(int8_t, 2))(0x06L, 0x0AL), (VECTOR(int8_t, 2))(0x06L, 0x0AL), 0x06L, 0x0AL, 0x06L, 0x0AL);
            uint64_t l_270 = 18446744073709551607UL;
            VECTOR(int8_t, 2) l_271 = (VECTOR(int8_t, 2))(0x75L, 0x7DL);
            VECTOR(int8_t, 16) l_272 = (VECTOR(int8_t, 16))(0x49L, (VECTOR(int8_t, 4))(0x49L, (VECTOR(int8_t, 2))(0x49L, 0x0DL), 0x0DL), 0x0DL, 0x49L, 0x0DL, (VECTOR(int8_t, 2))(0x49L, 0x0DL), (VECTOR(int8_t, 2))(0x49L, 0x0DL), 0x49L, 0x0DL, 0x49L, 0x0DL);
            VECTOR(int8_t, 4) l_273 = (VECTOR(int8_t, 4))((-8L), (VECTOR(int8_t, 2))((-8L), 0x38L), 0x38L);
            VECTOR(int8_t, 8) l_274 = (VECTOR(int8_t, 8))(0x47L, (VECTOR(int8_t, 4))(0x47L, (VECTOR(int8_t, 2))(0x47L, 0x26L), 0x26L), 0x26L, 0x47L, 0x26L);
            VECTOR(int8_t, 4) l_275 = (VECTOR(int8_t, 4))((-7L), (VECTOR(int8_t, 2))((-7L), (-8L)), (-8L));
            VECTOR(int8_t, 8) l_276 = (VECTOR(int8_t, 8))(0x31L, (VECTOR(int8_t, 4))(0x31L, (VECTOR(int8_t, 2))(0x31L, 1L), 1L), 1L, 0x31L, 1L);
            VECTOR(int8_t, 8) l_277 = (VECTOR(int8_t, 8))(0x56L, (VECTOR(int8_t, 4))(0x56L, (VECTOR(int8_t, 2))(0x56L, (-1L)), (-1L)), (-1L), 0x56L, (-1L));
            VECTOR(int8_t, 4) l_278 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 8L), 8L);
            VECTOR(int8_t, 2) l_279 = (VECTOR(int8_t, 2))(0x3CL, (-1L));
            VECTOR(int8_t, 2) l_280 = (VECTOR(int8_t, 2))(0x7BL, 9L);
            VECTOR(int8_t, 4) l_281 = (VECTOR(int8_t, 4))(0x28L, (VECTOR(int8_t, 2))(0x28L, 0x43L), 0x43L);
            VECTOR(int8_t, 16) l_282 = (VECTOR(int8_t, 16))((-9L), (VECTOR(int8_t, 4))((-9L), (VECTOR(int8_t, 2))((-9L), 0x65L), 0x65L), 0x65L, (-9L), 0x65L, (VECTOR(int8_t, 2))((-9L), 0x65L), (VECTOR(int8_t, 2))((-9L), 0x65L), (-9L), 0x65L, (-9L), 0x65L);
            int64_t l_283 = 1L;
            int8_t l_284 = 0x12L;
            int32_t *l_285 = &l_204;
            int32_t *l_286[3];
            uint8_t l_287 = 255UL;
            int32_t l_288 = (-9L);
            uint16_t l_289 = 65526UL;
            int32_t l_290 = 6L;
            VECTOR(int32_t, 4) l_291 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x0DD89D09L), 0x0DD89D09L);
            VECTOR(int32_t, 16) l_292 = (VECTOR(int32_t, 16))((-10L), (VECTOR(int32_t, 4))((-10L), (VECTOR(int32_t, 2))((-10L), 0x43CFA673L), 0x43CFA673L), 0x43CFA673L, (-10L), 0x43CFA673L, (VECTOR(int32_t, 2))((-10L), 0x43CFA673L), (VECTOR(int32_t, 2))((-10L), 0x43CFA673L), (-10L), 0x43CFA673L, (-10L), 0x43CFA673L);
            VECTOR(int32_t, 8) l_293 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x6F1D806FL), 0x6F1D806FL), 0x6F1D806FL, (-1L), 0x6F1D806FL);
            VECTOR(int32_t, 16) l_294 = (VECTOR(int32_t, 16))(0x67A2E0D5L, (VECTOR(int32_t, 4))(0x67A2E0D5L, (VECTOR(int32_t, 2))(0x67A2E0D5L, 0L), 0L), 0L, 0x67A2E0D5L, 0L, (VECTOR(int32_t, 2))(0x67A2E0D5L, 0L), (VECTOR(int32_t, 2))(0x67A2E0D5L, 0L), 0x67A2E0D5L, 0L, 0x67A2E0D5L, 0L);
            int8_t l_295 = (-2L);
            union U1 l_296 = {4294967295UL};/* VOLATILE GLOBAL l_296 */
            int32_t l_297 = (-1L);
            int i;
            for (i = 0; i < 3; i++)
                l_286[i] = &l_204;
            for (l_204 = 0; (l_204 >= (-14)); l_204 = safe_sub_func_int64_t_s_s(l_204, 5))
            { /* block id: 76 */
                union U3 l_208 = {0x3DAB1411F4792D4BL};/* VOLATILE GLOBAL l_208 */
                union U3 *l_207[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                union U3 *l_209 = &l_208;
                union U1 l_210 = {0x90A924B2L};/* VOLATILE GLOBAL l_210 */
                int32_t l_212 = 1L;
                int32_t *l_211 = &l_212;
                int32_t *l_213 = (void*)0;
                int32_t *l_262 = &l_212;
                int i;
                l_209 = l_207[5];
                l_213 = (l_210 , l_211);
                if (((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x6109F48CL, 0x74F738C1L)), (-5L), 0x786769AAL)).w)
                { /* block id: 79 */
                    VECTOR(int32_t, 8) l_214 = (VECTOR(int32_t, 8))((-9L), (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 0x56835DC9L), 0x56835DC9L), 0x56835DC9L, (-9L), 0x56835DC9L);
                    uint8_t l_215 = 0x79L;
                    uint32_t l_216 = 0x299E1F5FL;
                    int32_t *l_217[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
                    union U1 l_218 = {0x897A3DE9L};/* VOLATILE GLOBAL l_218 */
                    VECTOR(int64_t, 8) l_219 = (VECTOR(int64_t, 8))((-2L), (VECTOR(int64_t, 4))((-2L), (VECTOR(int64_t, 2))((-2L), 7L), 7L), 7L, (-2L), 7L);
                    VECTOR(uint8_t, 16) l_220 = (VECTOR(uint8_t, 16))(0x2BL, (VECTOR(uint8_t, 4))(0x2BL, (VECTOR(uint8_t, 2))(0x2BL, 0x5DL), 0x5DL), 0x5DL, 0x2BL, 0x5DL, (VECTOR(uint8_t, 2))(0x2BL, 0x5DL), (VECTOR(uint8_t, 2))(0x2BL, 0x5DL), 0x2BL, 0x5DL, 0x2BL, 0x5DL);
                    int32_t l_221 = 0x277BDA6FL;
                    VECTOR(uint8_t, 8) l_222 = (VECTOR(uint8_t, 8))(0xDBL, (VECTOR(uint8_t, 4))(0xDBL, (VECTOR(uint8_t, 2))(0xDBL, 0UL), 0UL), 0UL, 0xDBL, 0UL);
                    VECTOR(uint8_t, 2) l_223 = (VECTOR(uint8_t, 2))(0UL, 255UL);
                    VECTOR(uint8_t, 8) l_224 = (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 254UL), 254UL), 254UL, 1UL, 254UL);
                    VECTOR(uint8_t, 8) l_225 = (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x94L), 0x94L), 0x94L, 1UL, 0x94L);
                    int32_t l_226[4][9][6] = {{{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L},{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L},{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L},{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L},{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L},{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L},{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L},{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L},{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L}},{{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L},{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L},{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L},{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L},{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L},{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L},{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L},{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L},{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L}},{{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L},{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L},{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L},{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L},{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L},{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L},{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L},{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L},{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L}},{{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L},{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L},{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L},{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L},{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L},{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L},{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L},{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L},{0x2FF706DEL,4L,0L,0x63B50CB8L,0L,1L}}};
                    uint16_t l_227 = 0x3120L;
                    VECTOR(uint8_t, 16) l_230 = (VECTOR(uint8_t, 16))(0x2CL, (VECTOR(uint8_t, 4))(0x2CL, (VECTOR(uint8_t, 2))(0x2CL, 1UL), 1UL), 1UL, 0x2CL, 1UL, (VECTOR(uint8_t, 2))(0x2CL, 1UL), (VECTOR(uint8_t, 2))(0x2CL, 1UL), 0x2CL, 1UL, 0x2CL, 1UL);
                    int64_t l_231 = 1L;
                    VECTOR(uint8_t, 8) l_232 = (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 255UL), 255UL), 255UL, 1UL, 255UL);
                    int32_t l_233 = 0x10060A83L;
                    VECTOR(uint8_t, 2) l_234 = (VECTOR(uint8_t, 2))(0UL, 1UL);
                    VECTOR(uint8_t, 16) l_235 = (VECTOR(uint8_t, 16))(6UL, (VECTOR(uint8_t, 4))(6UL, (VECTOR(uint8_t, 2))(6UL, 250UL), 250UL), 250UL, 6UL, 250UL, (VECTOR(uint8_t, 2))(6UL, 250UL), (VECTOR(uint8_t, 2))(6UL, 250UL), 6UL, 250UL, 6UL, 250UL);
                    VECTOR(uint8_t, 16) l_236 = (VECTOR(uint8_t, 16))(0x73L, (VECTOR(uint8_t, 4))(0x73L, (VECTOR(uint8_t, 2))(0x73L, 251UL), 251UL), 251UL, 0x73L, 251UL, (VECTOR(uint8_t, 2))(0x73L, 251UL), (VECTOR(uint8_t, 2))(0x73L, 251UL), 0x73L, 251UL, 0x73L, 251UL);
                    VECTOR(uint8_t, 16) l_237 = (VECTOR(uint8_t, 16))(0x69L, (VECTOR(uint8_t, 4))(0x69L, (VECTOR(uint8_t, 2))(0x69L, 0xC1L), 0xC1L), 0xC1L, 0x69L, 0xC1L, (VECTOR(uint8_t, 2))(0x69L, 0xC1L), (VECTOR(uint8_t, 2))(0x69L, 0xC1L), 0x69L, 0xC1L, 0x69L, 0xC1L);
                    int32_t l_238 = (-6L);
                    VECTOR(uint8_t, 8) l_239 = (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x67L), 0x67L), 0x67L, 0UL, 0x67L);
                    VECTOR(uint8_t, 2) l_240 = (VECTOR(uint8_t, 2))(0xB0L, 1UL);
                    VECTOR(uint8_t, 16) l_241 = (VECTOR(uint8_t, 16))(0x0CL, (VECTOR(uint8_t, 4))(0x0CL, (VECTOR(uint8_t, 2))(0x0CL, 9UL), 9UL), 9UL, 0x0CL, 9UL, (VECTOR(uint8_t, 2))(0x0CL, 9UL), (VECTOR(uint8_t, 2))(0x0CL, 9UL), 0x0CL, 9UL, 0x0CL, 9UL);
                    uint16_t l_242 = 1UL;
                    int32_t l_243 = 0x3DA93536L;
                    int64_t l_244 = 6L;
                    union U1 *l_245 = &l_218;
                    int i, j, k;
                    (*l_211) |= ((VECTOR(int32_t, 4))(l_214.s1512)).z;
                    l_217[2] = ((l_216 = l_215) , (void*)0);
                    l_211 = (l_213 = (l_218 , (void*)0));
                    l_245 = (((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(upsample(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(0xF6L, (((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(0x60C032D97033919EL, 2L)))), ((VECTOR(int64_t, 16))(l_219.s2370616321735432)).s8c))).even , 0UL), 0xB1L, 255UL)), ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(l_220.sae)))), 4UL, 0xBAL)))).s07)).yxyx, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(248UL, 0xAEL, 0x9DL, 0xD1L)), l_221, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(4UL, 0UL, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(sub_sat(((VECTOR(uint8_t, 4))(0x45L, ((VECTOR(uint8_t, 2))(8UL, 0xDEL)), 255UL)).odd, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(l_222.s0063656245261053)).sa4bd)).lo))).xyyyxyxxyxxxxxyx)).s62, ((VECTOR(uint8_t, 16))(mul_hi(((VECTOR(uint8_t, 8))(l_223.xyyxxyyx)).s4710476654626016, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(l_224.s77)), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(mad_hi(((VECTOR(uint8_t, 16))(rotate(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(l_225.s6040)).wwzzywwzywxxwwyx)), ((VECTOR(uint8_t, 16))(mad_sat(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(0xB7L, ((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 4))(0x5EL, ((VECTOR(uint8_t, 2))(0UL, 0x52L)), 0x5EL)).odd, ((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 4))(255UL, (l_227++), 8UL, 0x80L)).zwyywwww, ((VECTOR(uint8_t, 4))(l_230.s700e)).zwyyxwyy))).s63))), l_231, ((VECTOR(uint8_t, 2))(safe_clamp_func(VECTOR(uint8_t, 2),uint8_t,((VECTOR(uint8_t, 2))(255UL, 0xF0L)), (uint8_t)((VECTOR(uint8_t, 2))(l_232.s75)).even, (uint8_t)l_233))), ((VECTOR(uint8_t, 8))(rhadd(((VECTOR(uint8_t, 8))(l_234.xyyxxyyx)), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(sub_sat(((VECTOR(uint8_t, 4))(0xF7L, 0xE1L, 0x45L, 0x50L)).hi, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(0x59L, 0xC9L)).yxxyyyyy)).s33))), 250UL, 0UL)).zxxzxxzw))), 0xB0L, 0x02L)).odd)).s1517360662034424, ((VECTOR(uint8_t, 8))(l_235.sb8d93f8c)).s1662067310456104, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(0x52L, 0x35L)).yyxxyxyx)).s2321000617630212)))))).odd, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(0x82L, 0UL, ((VECTOR(uint8_t, 2))(l_236.saf)), ((VECTOR(uint8_t, 2))(0xFEL, 0x92L)), 0x19L, 0x33L)).s53)).yxyyxyxx, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(l_237.s64)).yyyx)).wzxwwwxy))).hi)), 0x02L, (l_238 , 9UL), ((VECTOR(uint8_t, 2))(rhadd(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(l_239.s0763)).wxwyzzzx)).s3052243355655736)).s7f, ((VECTOR(uint8_t, 4))(l_240.yyxx)).hi))), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(l_241.s58b0bcd4)).even)), 0xCFL, 0x7DL))))).s2d))))), 0x6BL, 0x7DL, (l_242 , l_243), 255UL, 0UL, 248UL)).even)))).wyxzwwzw)).s40)), 255UL, l_244, 0x2AL, 0x32L)))), 0x32L, 0x0BL, 0xD0L)).scf6a))).wwzywyywyyzwyxxz)).sa , (void*)0);
                }
                else
                { /* block id: 87 */
                    int32_t l_246 = 1L;
                    int64_t l_258 = 0x5CE8F0860BC748FEL;
                    uint32_t l_259 = 0x06790D0DL;
                    uint32_t l_260[6][9] = {{4UL,8UL,4UL,4UL,8UL,4UL,4UL,8UL,4UL},{4UL,8UL,4UL,4UL,8UL,4UL,4UL,8UL,4UL},{4UL,8UL,4UL,4UL,8UL,4UL,4UL,8UL,4UL},{4UL,8UL,4UL,4UL,8UL,4UL,4UL,8UL,4UL},{4UL,8UL,4UL,4UL,8UL,4UL,4UL,8UL,4UL},{4UL,8UL,4UL,4UL,8UL,4UL,4UL,8UL,4UL}};
                    uint16_t l_261 = 65529UL;
                    int i, j;
                    for (l_246 = 9; (l_246 > 23); ++l_246)
                    { /* block id: 90 */
                        uint32_t l_249[6][6][7] = {{{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL},{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL},{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL},{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL},{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL},{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL}},{{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL},{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL},{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL},{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL},{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL},{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL}},{{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL},{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL},{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL},{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL},{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL},{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL}},{{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL},{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL},{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL},{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL},{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL},{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL}},{{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL},{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL},{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL},{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL},{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL},{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL}},{{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL},{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL},{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL},{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL},{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL},{0xD8D69B9AL,0x8DD55F3FL,0UL,0x96956225L,8UL,0UL,4UL}}};
                        int32_t l_250 = 5L;
                        int32_t l_251 = (-7L);
                        uint8_t l_252 = 0x27L;
                        union U4 *l_255 = (void*)0;
                        union U4 l_257[3] = {{0xB3L},{0xB3L},{0xB3L}};
                        union U4 *l_256[9];
                        int i, j, k;
                        for (i = 0; i < 9; i++)
                            l_256[i] = &l_257[2];
                        (*l_211) = l_249[3][1][6];
                        (*l_211) = l_250;
                        ++l_252;
                        l_256[0] = l_255;
                    }
                    l_261 = ((l_258 , l_259) , l_260[4][7]);
                }
                l_262 = (void*)0;
            }
            l_286[0] = (((VECTOR(uint32_t, 16))(upsample(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(min(((VECTOR(uint16_t, 8))(8UL, ((VECTOR(uint16_t, 4))(hadd(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(l_263.yzzw)), ((VECTOR(uint16_t, 8))(upsample(((VECTOR(uint8_t, 2))(l_264.sb3)).xxyxyyxy, ((VECTOR(uint8_t, 4))(sub_sat(((VECTOR(uint8_t, 8))(clz(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 2))(0x2AL, 0x2EL))))), ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(min(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(l_265.wzywzwxwxywzzxwy)).s5b7c)).yywzywzy)).s6056160256045742, ((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 2))(l_266.yx)).yyxxxxxx, ((VECTOR(int8_t, 16))(l_267.y, 0x55L, (l_270 = (l_268[4] , ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(l_269.sbb220442)).s32)).lo)), ((VECTOR(int8_t, 2))(l_271.xy)), 0x14L, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(l_272.s66bc7413)).even)), (-1L), 0x17L, ((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 16))(rotate(((VECTOR(int8_t, 8))(hadd(((VECTOR(int8_t, 8))(l_273.yxxyxwwx)), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))((-7L), ((VECTOR(int8_t, 4))(l_274.s7130)), ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(l_275.wzyy)), ((VECTOR(int8_t, 8))(l_276.s34121373)), ((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 16))(l_277.s1473150670421353)).sd5, ((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),int8_t,((VECTOR(int8_t, 16))(0x4BL, 1L, 0x30L, 0x06L, ((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 8))(l_278.zzzzxywy)).s0412360042656200, ((VECTOR(int8_t, 16))(l_279.xyyyxyxxyyxxxyxx)), ((VECTOR(int8_t, 16))(mul_hi(((VECTOR(int8_t, 2))(0x3AL, 0x64L)).xyyxyxxyxxyyyxxx, ((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 8))(l_280.xyyyyyyy)).s0060705332322032, ((VECTOR(int8_t, 16))(l_281.xwzwzyxzzywzzwyx))))))).even))))).s0170704143525174)))))).sd9, ((VECTOR(int8_t, 4))(l_282.sd6ba)).lo))).yxyyxyyyxxyxyxxy)))).sca20))), (-1L), 0x6AL, 0x7FL, l_283, (-10L), 0L, 0x2BL, 0x26L)).s43, (int8_t)l_284, (int8_t)0x13L))), ((VECTOR(int8_t, 2))(0x7EL))))), (-1L), 1L)).s2, (-9L), 0L)).odd)).yyzxzywy))).s5037576350675604, ((VECTOR(int8_t, 16))(0x1AL))))).sb6, ((VECTOR(int8_t, 2))(0x6EL))))), 0L, 6L)).even))).s36, ((VECTOR(int8_t, 2))(0x1FL))))).xyyyyyyxyxxyyyxx))).even)).s30))).xxyxyxxx))))))).even, ((VECTOR(uint8_t, 4))(0xCEL))))).wxzxxzyz))), ((VECTOR(uint16_t, 2))(0x384EL)), 0x42EAL, 0xE9B6L)))).s7a10, ((VECTOR(uint16_t, 4))(0xF9E8L))))), ((VECTOR(uint16_t, 2))(65529UL)), 0xE41DL)).hi, ((VECTOR(uint16_t, 4))(0x8F98L))))), 0x3B36L, 4UL, 0xD920L, 1UL)).s6103671746362047)), ((VECTOR(uint16_t, 16))(0xCC54L))))).s9 , l_285);
            if (((VECTOR(int32_t, 16))(9L, l_287, ((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 8))((l_288 = (-3L)), 0L, l_289, l_290, 4L, ((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 16))((-4L), (-1L), (-5L), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0L, 0L)), 0x3BD102BEL, (-6L), 0x7A4FE9C0L, ((VECTOR(int32_t, 2))(l_291.yz)), (-1L))).s04)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(0x5A8C6CA8L, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(1L, 9L)).yxyxyyyxyyyxxyyy, ((VECTOR(int32_t, 2))((-2L), 7L)).yxxxyxxxyyxyxyxy, ((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(0x6E96FCDFL, ((VECTOR(int32_t, 4))(l_292.sb594)), ((VECTOR(int32_t, 2))(7L, 1L)), 0x33E19E8BL)).s50)).yxxyyxxxxyxxxyyy, ((VECTOR(int32_t, 4))(l_293.s2400)).xxyxywzzzxzzyzzy))).even, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(l_294.s04)))).xxyxxyyx, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(0x1A112F7DL, 1L, 9L, 0x73B0AD61L)))).zxwxzyxx))).s6073352757433620))).sbb5c)), ((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 8))(l_295, 0x385BD055L, 0x0E2AC410L, (((((VECTOR(int32_t, 2))(0x7FA3DD42L, 8L)).even , l_296) , 0x12BD4EBEL) , l_297), ((VECTOR(int32_t, 2))(0x21FC3C78L)), (-1L), 0x069B34A2L)).s05, ((VECTOR(int32_t, 2))((-1L)))))), (-1L))).s06)))), 0x3C647758L, 0x236B64D6L, 0L, (-1L))), 0x0A4CF801L, 0L, (-4L), 0x73537DCCL, 0x70A19760L)).s89, ((VECTOR(int32_t, 2))(0x01926C84L))))), 0x780AD2BCL)).s00, ((VECTOR(int32_t, 2))(0x546E1D15L))))), ((VECTOR(int32_t, 2))(0x14175BA6L)), ((VECTOR(int32_t, 2))(0x6232B54BL)), (-1L), ((VECTOR(int32_t, 2))((-1L))), (-2L), ((VECTOR(int32_t, 2))((-1L))), 8L, (-10L))).sf)
            { /* block id: 103 */
                uint32_t l_298 = 0x663AE903L;
                int32_t l_299 = 0x36CDF784L;
                int32_t l_300[8][1][6] = {{{(-3L),1L,(-3L),(-3L),1L,(-3L)}},{{(-3L),1L,(-3L),(-3L),1L,(-3L)}},{{(-3L),1L,(-3L),(-3L),1L,(-3L)}},{{(-3L),1L,(-3L),(-3L),1L,(-3L)}},{{(-3L),1L,(-3L),(-3L),1L,(-3L)}},{{(-3L),1L,(-3L),(-3L),1L,(-3L)}},{{(-3L),1L,(-3L),(-3L),1L,(-3L)}},{{(-3L),1L,(-3L),(-3L),1L,(-3L)}}};
                VECTOR(int32_t, 16) l_339 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L), (VECTOR(int32_t, 2))(0L, (-1L)), (VECTOR(int32_t, 2))(0L, (-1L)), 0L, (-1L), 0L, (-1L));
                int i, j, k;
                l_299 = l_298;
                if (l_300[2][0][2])
                { /* block id: 105 */
                    int16_t l_301 = 1L;
                    VECTOR(int32_t, 2) l_302 = (VECTOR(int32_t, 2))(1L, (-6L));
                    VECTOR(int32_t, 4) l_303 = (VECTOR(int32_t, 4))(0x5C3745FFL, (VECTOR(int32_t, 2))(0x5C3745FFL, 0x73C26EFFL), 0x73C26EFFL);
                    int64_t l_304 = 0L;
                    int32_t l_305 = 0x28967306L;
                    union U0 l_306 = {0L};
                    int32_t *l_307[2][7][4] = {{{(void*)0,&l_305,&l_305,(void*)0},{(void*)0,&l_305,&l_305,(void*)0},{(void*)0,&l_305,&l_305,(void*)0},{(void*)0,&l_305,&l_305,(void*)0},{(void*)0,&l_305,&l_305,(void*)0},{(void*)0,&l_305,&l_305,(void*)0},{(void*)0,&l_305,&l_305,(void*)0}},{{(void*)0,&l_305,&l_305,(void*)0},{(void*)0,&l_305,&l_305,(void*)0},{(void*)0,&l_305,&l_305,(void*)0},{(void*)0,&l_305,&l_305,(void*)0},{(void*)0,&l_305,&l_305,(void*)0},{(void*)0,&l_305,&l_305,(void*)0},{(void*)0,&l_305,&l_305,(void*)0}}};
                    int i, j, k;
                    l_305 = ((*l_285) = (l_304 = ((VECTOR(int32_t, 16))(l_301, ((VECTOR(int32_t, 2))(0L, 0x6FEB815DL)), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(l_302.yxyyxxxyyyxyyyxx)).hi)), ((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x63AB0485L, (-8L))), 0x1B72B2B2L, (-8L))), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(l_303.yxwwwzwwyzxxzzww)).s2f)).xyxx))), 0x1681FEF7L)).s1));
                    l_285 = (l_306 , l_307[0][3][0]);
                }
                else
                { /* block id: 110 */
                    int32_t l_308 = 0x5BB06240L;
                    for (l_308 = 0; (l_308 == 4); ++l_308)
                    { /* block id: 113 */
                        uint32_t l_311[5][10][2] = {{{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L}},{{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L}},{{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L}},{{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L}},{{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L},{0x91914888L,0x91914888L}}};
                        int32_t l_313 = 0x0223CE57L;
                        int32_t *l_312 = &l_313;
                        uint16_t l_314 = 0x6A06L;
                        uint32_t l_315 = 4294967295UL;
                        uint8_t l_316 = 0x8DL;
                        uint64_t l_317 = 0UL;
                        VECTOR(uint16_t, 8) l_318 = (VECTOR(uint16_t, 8))(0x81D8L, (VECTOR(uint16_t, 4))(0x81D8L, (VECTOR(uint16_t, 2))(0x81D8L, 65527UL), 65527UL), 65527UL, 0x81D8L, 65527UL);
                        VECTOR(uint16_t, 16) l_319 = (VECTOR(uint16_t, 16))(0xCEF3L, (VECTOR(uint16_t, 4))(0xCEF3L, (VECTOR(uint16_t, 2))(0xCEF3L, 1UL), 1UL), 1UL, 0xCEF3L, 1UL, (VECTOR(uint16_t, 2))(0xCEF3L, 1UL), (VECTOR(uint16_t, 2))(0xCEF3L, 1UL), 0xCEF3L, 1UL, 0xCEF3L, 1UL);
                        VECTOR(uint16_t, 2) l_320 = (VECTOR(uint16_t, 2))(65535UL, 0xB356L);
                        VECTOR(uint16_t, 4) l_321 = (VECTOR(uint16_t, 4))(0x3945L, (VECTOR(uint16_t, 2))(0x3945L, 0x6476L), 0x6476L);
                        VECTOR(uint16_t, 2) l_322 = (VECTOR(uint16_t, 2))(0x5A0DL, 65534UL);
                        VECTOR(uint16_t, 8) l_323 = (VECTOR(uint16_t, 8))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0xADD3L), 0xADD3L), 0xADD3L, 65535UL, 0xADD3L);
                        int32_t l_324 = 0x6D86A6AAL;
                        uint32_t l_325 = 0xB8DCB250L;
                        int32_t l_326 = 2L;
                        VECTOR(uint16_t, 4) l_327 = (VECTOR(uint16_t, 4))(0x7158L, (VECTOR(uint16_t, 2))(0x7158L, 0x3D80L), 0x3D80L);
                        int32_t l_328[6][7][4];
                        uint32_t l_329 = 0xFD4947CEL;
                        int64_t l_330 = 1L;
                        VECTOR(uint16_t, 2) l_331 = (VECTOR(uint16_t, 2))(0x89F0L, 0UL);
                        VECTOR(uint16_t, 8) l_332 = (VECTOR(uint16_t, 8))(0x0944L, (VECTOR(uint16_t, 4))(0x0944L, (VECTOR(uint16_t, 2))(0x0944L, 0xD57DL), 0xD57DL), 0xD57DL, 0x0944L, 0xD57DL);
                        uint32_t l_333[8] = {4UL,4UL,4UL,4UL,4UL,4UL,4UL,4UL};
                        int32_t l_334 = 0x66E231FAL;
                        int8_t l_335 = (-5L);
                        int32_t l_336 = 0L;
                        union U0 l_337 = {0L};
                        union U0 l_338[4] = {{1L},{1L},{1L},{1L}};
                        int i, j, k;
                        for (i = 0; i < 6; i++)
                        {
                            for (j = 0; j < 7; j++)
                            {
                                for (k = 0; k < 4; k++)
                                    l_328[i][j][k] = (-8L);
                            }
                        }
                        (1 + 1);
                    }
                }
                l_299 ^= (l_300[4][0][4] = ((VECTOR(int32_t, 4))(l_339.s5cbd)).y);
            }
            else
            { /* block id: 127 */
                VECTOR(int32_t, 8) l_340 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x0A5554F3L), 0x0A5554F3L), 0x0A5554F3L, 0L, 0x0A5554F3L);
                uint8_t l_341[6][1][6] = {{{0UL,0x09L,0x09L,0UL,0UL,0x09L}},{{0UL,0x09L,0x09L,0UL,0UL,0x09L}},{{0UL,0x09L,0x09L,0UL,0UL,0x09L}},{{0UL,0x09L,0x09L,0UL,0UL,0x09L}},{{0UL,0x09L,0x09L,0UL,0UL,0x09L}},{{0UL,0x09L,0x09L,0UL,0UL,0x09L}}};
                uint8_t l_342[2][9] = {{8UL,2UL,8UL,8UL,2UL,8UL,8UL,2UL,8UL},{8UL,2UL,8UL,8UL,2UL,8UL,8UL,2UL,8UL}};
                int64_t l_343 = 0L;
                uint16_t l_344 = 6UL;
                int i, j, k;
                (*l_285) = (((VECTOR(int32_t, 16))(l_340.s2716304777270656)).s7 , 0L);
                l_342[1][1] = l_341[2][0][5];
                l_344--;
            }
            unsigned int result = 0;
            result += l_204;
            result += l_263.w;
            result += l_263.z;
            result += l_263.y;
            result += l_263.x;
            result += l_264.sf;
            result += l_264.se;
            result += l_264.sd;
            result += l_264.sc;
            result += l_264.sb;
            result += l_264.sa;
            result += l_264.s9;
            result += l_264.s8;
            result += l_264.s7;
            result += l_264.s6;
            result += l_264.s5;
            result += l_264.s4;
            result += l_264.s3;
            result += l_264.s2;
            result += l_264.s1;
            result += l_264.s0;
            result += l_265.w;
            result += l_265.z;
            result += l_265.y;
            result += l_265.x;
            result += l_266.y;
            result += l_266.x;
            result += l_267.y;
            result += l_267.x;
            int l_268_i0;
            for (l_268_i0 = 0; l_268_i0 < 10; l_268_i0++) {
                result += l_268[l_268_i0].f0;
                result += l_268[l_268_i0].f1;
                result += l_268[l_268_i0].f2;
            }
            result += l_269.sf;
            result += l_269.se;
            result += l_269.sd;
            result += l_269.sc;
            result += l_269.sb;
            result += l_269.sa;
            result += l_269.s9;
            result += l_269.s8;
            result += l_269.s7;
            result += l_269.s6;
            result += l_269.s5;
            result += l_269.s4;
            result += l_269.s3;
            result += l_269.s2;
            result += l_269.s1;
            result += l_269.s0;
            result += l_270;
            result += l_271.y;
            result += l_271.x;
            result += l_272.sf;
            result += l_272.se;
            result += l_272.sd;
            result += l_272.sc;
            result += l_272.sb;
            result += l_272.sa;
            result += l_272.s9;
            result += l_272.s8;
            result += l_272.s7;
            result += l_272.s6;
            result += l_272.s5;
            result += l_272.s4;
            result += l_272.s3;
            result += l_272.s2;
            result += l_272.s1;
            result += l_272.s0;
            result += l_273.w;
            result += l_273.z;
            result += l_273.y;
            result += l_273.x;
            result += l_274.s7;
            result += l_274.s6;
            result += l_274.s5;
            result += l_274.s4;
            result += l_274.s3;
            result += l_274.s2;
            result += l_274.s1;
            result += l_274.s0;
            result += l_275.w;
            result += l_275.z;
            result += l_275.y;
            result += l_275.x;
            result += l_276.s7;
            result += l_276.s6;
            result += l_276.s5;
            result += l_276.s4;
            result += l_276.s3;
            result += l_276.s2;
            result += l_276.s1;
            result += l_276.s0;
            result += l_277.s7;
            result += l_277.s6;
            result += l_277.s5;
            result += l_277.s4;
            result += l_277.s3;
            result += l_277.s2;
            result += l_277.s1;
            result += l_277.s0;
            result += l_278.w;
            result += l_278.z;
            result += l_278.y;
            result += l_278.x;
            result += l_279.y;
            result += l_279.x;
            result += l_280.y;
            result += l_280.x;
            result += l_281.w;
            result += l_281.z;
            result += l_281.y;
            result += l_281.x;
            result += l_282.sf;
            result += l_282.se;
            result += l_282.sd;
            result += l_282.sc;
            result += l_282.sb;
            result += l_282.sa;
            result += l_282.s9;
            result += l_282.s8;
            result += l_282.s7;
            result += l_282.s6;
            result += l_282.s5;
            result += l_282.s4;
            result += l_282.s3;
            result += l_282.s2;
            result += l_282.s1;
            result += l_282.s0;
            result += l_283;
            result += l_284;
            result += l_287;
            result += l_288;
            result += l_289;
            result += l_290;
            result += l_291.w;
            result += l_291.z;
            result += l_291.y;
            result += l_291.x;
            result += l_292.sf;
            result += l_292.se;
            result += l_292.sd;
            result += l_292.sc;
            result += l_292.sb;
            result += l_292.sa;
            result += l_292.s9;
            result += l_292.s8;
            result += l_292.s7;
            result += l_292.s6;
            result += l_292.s5;
            result += l_292.s4;
            result += l_292.s3;
            result += l_292.s2;
            result += l_292.s1;
            result += l_292.s0;
            result += l_293.s7;
            result += l_293.s6;
            result += l_293.s5;
            result += l_293.s4;
            result += l_293.s3;
            result += l_293.s2;
            result += l_293.s1;
            result += l_293.s0;
            result += l_294.sf;
            result += l_294.se;
            result += l_294.sd;
            result += l_294.sc;
            result += l_294.sb;
            result += l_294.sa;
            result += l_294.s9;
            result += l_294.s8;
            result += l_294.s7;
            result += l_294.s6;
            result += l_294.s5;
            result += l_294.s4;
            result += l_294.s3;
            result += l_294.s2;
            result += l_294.s1;
            result += l_294.s0;
            result += l_295;
            result += l_296.f0;
            result += l_296.f1;
            result += l_296.f2;
            result += l_296.f3;
            result += l_296.f4;
            result += l_297;
            atomic_add(&p_560->l_special_values[12], result);
        }
        else
        { /* block id: 132 */
            (1 + 1);
        }
        for (p_560->g_142.f2 = 0; (p_560->g_142.f2 > 6); p_560->g_142.f2 = safe_add_func_uint16_t_u_u(p_560->g_142.f2, 6))
        { /* block id: 137 */
            int32_t **l_350[9][4] = {{&l_194,&l_194,&l_194,&l_196[0][5][5]},{&l_194,&l_194,&l_194,&l_196[0][5][5]},{&l_194,&l_194,&l_194,&l_196[0][5][5]},{&l_194,&l_194,&l_194,&l_196[0][5][5]},{&l_194,&l_194,&l_194,&l_196[0][5][5]},{&l_194,&l_194,&l_194,&l_196[0][5][5]},{&l_194,&l_194,&l_194,&l_196[0][5][5]},{&l_194,&l_194,&l_194,&l_196[0][5][5]},{&l_194,&l_194,&l_194,&l_196[0][5][5]}};
            int i, j;
            l_194 = (*p_560->g_93);
            for (p_32.f0 = (-29); (p_32.f0 == 34); p_32.f0++)
            { /* block id: 141 */
                union U0 l_375 = {0x57B4C5D0B16AB54EL};
                int32_t l_379 = (-1L);
                for (p_560->g_109 = 3; (p_560->g_109 > 49); p_560->g_109 = safe_add_func_int32_t_s_s(p_560->g_109, 4))
                { /* block id: 144 */
                    for (p_560->g_146 = 0; (p_560->g_146 >= 10); p_560->g_146 = safe_add_func_uint8_t_u_u(p_560->g_146, 1))
                    { /* block id: 147 */
                        union U2 ***l_371 = (void*)0;
                        int32_t l_376 = 0x0CC83545L;
                        uint32_t *l_377[9][2] = {{&p_560->g_109,&l_199},{&p_560->g_109,&l_199},{&p_560->g_109,&l_199},{&p_560->g_109,&l_199},{&p_560->g_109,&l_199},{&p_560->g_109,&l_199},{&p_560->g_109,&l_199},{&p_560->g_109,&l_199},{&p_560->g_109,&l_199}};
                        int i, j;
                        l_379 = ((safe_rshift_func_uint8_t_u_u((((void*)0 == l_359) && ((p_560->g_378 ^= (p_560->g_60 , ((p_560->g_81.s6 || ((safe_sub_func_int32_t_s_s((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(l_364.s6791708f)).even)).w < (safe_mul_func_int8_t_s_s(((((safe_unary_minus_func_uint32_t_u((p_560->g_368 , ((((l_369 , ((p_560->g_370[1] , l_371) != (p_560->g_372 , p_560->g_373))) <= p_34) ^ 0x017DA7A8L) < 0x111C8984E935E905L)))) , l_375) , (void*)0) == p_560->g_51), p_33))), GROUP_DIVERGE(2, 1))) >= 0x33A87A30CFE1D11BL)) , l_376))) , 0x4D6EBA19177B9A60L)), 7)) <= l_376);
                    }
                }
            }
            for (p_560->g_144 = 0; (p_560->g_144 >= 28); ++p_560->g_144)
            { /* block id: 155 */
                union U0 l_385 = {0x0BDABC8BC8544304L};
                int16_t *l_386 = (void*)0;
                VECTOR(int32_t, 16) l_390 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0L), 0L), 0L, 0L, 0L, (VECTOR(int32_t, 2))(0L, 0L), (VECTOR(int32_t, 2))(0L, 0L), 0L, 0L, 0L, 0L);
                uint64_t *l_398 = &p_560->g_60;
                int16_t *l_415 = &l_384.f4;
                int i;
                (*l_195) = (safe_div_func_uint32_t_u_u((l_384 , ((l_385 , ((p_560->g_105.w = p_560->g_14) <= p_560->g_147)) || (p_34 ^ p_560->g_142.f2))), (safe_mod_func_uint32_t_u_u(GROUP_DIVERGE(1, 1), p_33))));
                if ((atomic_inc(&p_560->g_atomic_input[76 * get_linear_group_id() + 5]) == 9))
                { /* block id: 159 */
                    int64_t l_389 = 1L;
                    l_389 |= 0x1B032083L;
                    unsigned int result = 0;
                    result += l_389;
                    atomic_add(&p_560->g_special_values[76 * get_linear_group_id() + 5], result);
                }
                else
                { /* block id: 161 */
                    (1 + 1);
                }
                (*l_195) |= ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))((-1L), 0x6A35F2C1L)).xyxy)).ywzxzzzy)), ((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(l_390.se620cf5a)).s66, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_391.s25)), 0x0DF95EB8L, 0x4DF8E7A0L)).zyxxyxxzxzxxyzyz)).odd)).s44, ((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 16))(sub_sat(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 16))(max(((VECTOR(int16_t, 8))(add_sat(((VECTOR(int16_t, 4))(rotate(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(p_560->g_392.xxxxxyxxyxyxxxxy)).s58a1)), ((VECTOR(int16_t, 8))(l_393.wxyxzzwx)).odd))).wxwwxyxw, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(l_394.s2415)).ywwywxywyzyxxzww)).odd))).s5163631160377724, (int16_t)p_34))).even, (int16_t)((*l_415) = ((safe_sub_func_uint16_t_u_u(p_560->g_368.f0, p_560->g_105.x)) || ((safe_unary_minus_func_uint8_t_u((p_32.f0 , ((--(*l_398)) & (p_560->g_368 , p_34))))) ^ (((safe_div_func_int8_t_s_s(((safe_lshift_func_int16_t_s_u(((safe_sub_func_int8_t_s_s(((safe_unary_minus_func_int32_t_s(((safe_rshift_func_int8_t_s_u((p_560->g_378 = ((safe_add_func_uint64_t_u_u(((((*l_359) = (((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 2))(l_412.xy)).yxyxxxxyyyyyyxyx, ((VECTOR(int32_t, 16))(l_413.yxyxxyyxxyxyyxyx))))).sc5)).lo , (void*)0)) == p_560->g_414) ^ (-9L)), p_33)) & FAKE_DIVERGE(p_560->global_1_offset, get_global_id(1), 10))), p_560->g_2.s3)) >= 18446744073709551614UL))) && p_32.f0), l_391.s6)) , 0x01E4L), 4)) | 1L), l_385.f0)) , 0UL) >= l_412.y))))))).s7, 0x3650L, ((VECTOR(int16_t, 4))(0x1244L)), ((VECTOR(int16_t, 2))((-8L))), ((VECTOR(int16_t, 4))(0L)), (-1L), ((VECTOR(int16_t, 2))((-1L))), 1L)).sb22b)).zyxwxzzxxzzyzywz, ((VECTOR(int16_t, 16))(0x71F0L))))).sa754, ((VECTOR(uint16_t, 4))(0x2E83L))))).even)))))).xyyxyxxx))))).s6;
            }
        }
        l_427 = ((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 2))(l_416.ww)).yyyx, ((VECTOR(int32_t, 4))((-7L), 0x2730128DL, 0x0699FC65L, 1L))))).yxzyzwwy)).s1621463547552401, (int32_t)p_33))), ((VECTOR(int32_t, 8))(l_417.xyyxyyzy)).s1203412465120234))))).scd3d, ((VECTOR(int32_t, 16))(l_418.wxxzwyxyxxyzxxyy)).s0912))), ((VECTOR(int32_t, 16))(0x50F3650FL, ((VECTOR(int32_t, 8))((p_560->g_419 , ((l_417.w &= l_418.x) || (safe_mul_func_int8_t_s_s((((&p_560->g_370[7] == (void*)0) , (1UL == (safe_rshift_func_int16_t_s_u((((void*)0 == l_424) ^ (safe_mul_func_int16_t_s_s((p_560->g_368 , p_33), p_560->g_144))), GROUP_DIVERGE(2, 1))))) , (-1L)), 7UL)))), (-1L), 0x0A78509FL, ((VECTOR(int32_t, 4))((-4L))), 0x14BAF11CL)).s0, p_32.f0, ((VECTOR(int32_t, 4))(1L)), ((VECTOR(int32_t, 4))(0x77BC8DB8L)), (-8L), 0x572E0850L, ((VECTOR(int32_t, 2))(0x4F8746B4L)), 0x4975EEF4L)).sed4f))).z;
        l_416.w = (~l_418.w);
    }
    return p_560->g_414;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint16_t * func_35(uint16_t * p_36, uint16_t * p_37, uint16_t * p_38, struct S5 * p_560)
{ /* block id: 63 */
    int32_t *l_189 = &p_560->g_90;
    int32_t **l_190 = &l_189;
    (*l_190) = l_189;
    return p_38;
}


/* ------------------------------------------ */
/* 
 * reads : p_560->g_59 p_560->g_51 p_560->g_89 p_560->g_90 p_560->g_14 p_560->g_93 p_560->g_95 p_560->g_110 p_560->g_114 p_560->g_153 p_560->g_73.f1 p_560->g_142.f0 p_560->l_comm_values p_560->g_170 p_560->g_109 p_560->g_94 p_560->g_178 p_560->g_comm_values p_560->g_187 p_560->g_146
 * writes: p_560->g_90 p_560->g_94 p_560->g_109 p_560->g_111 p_560->g_114 p_560->g_146 p_560->g_110 p_560->g_73.f1 p_560->g_142.f0
 */
uint16_t * func_39(uint16_t * p_40, uint64_t  p_41, uint16_t * p_42, uint8_t  p_43, uint64_t  p_44, struct S5 * p_560)
{ /* block id: 8 */
    int8_t l_58 = 0x2DL;
    int8_t l_188 = 0L;
    for (p_41 = 4; (p_41 >= 47); ++p_41)
    { /* block id: 11 */
        union U2 **l_155 = &p_560->g_111[1][1];
        union U2 ***l_154[5];
        int i;
        for (i = 0; i < 5; i++)
            l_154[i] = &l_155;
        (*p_560->g_153) = func_54((0L && p_43), l_58, p_560->g_59[0][5][5], p_560);
        p_560->g_110 = &p_560->g_111[4][1];
    }
    for (p_560->g_73.f1 = 19; (p_560->g_73.f1 == (-20)); p_560->g_73.f1 = safe_sub_func_int32_t_s_s(p_560->g_73.f1, 9))
    { /* block id: 34 */
        uint32_t l_164[3];
        union U2 **l_173 = (void*)0;
        union U2 **l_174 = (void*)0;
        int i;
        for (i = 0; i < 3; i++)
            l_164[i] = 0x65BE7C3BL;
        for (p_560->g_142.f0 = 8; (p_560->g_142.f0 == 16); ++p_560->g_142.f0)
        { /* block id: 37 */
            union U2 **l_160 = (void*)0;
            union U2 ***l_161 = &l_160;
            (*l_161) = l_160;
        }
        for (p_43 = 8; (p_43 > 23); p_43 = safe_add_func_int16_t_s_s(p_43, 3))
        { /* block id: 42 */
            int32_t *l_165[1][7] = {{&p_560->g_146,&p_560->g_90,&p_560->g_146,&p_560->g_146,&p_560->g_90,&p_560->g_146,&p_560->g_146}};
            union U2 **l_171[9];
            union U2 ***l_172[10][3] = {{&l_171[8],&l_171[8],&l_171[8]},{&l_171[8],&l_171[8],&l_171[8]},{&l_171[8],&l_171[8],&l_171[8]},{&l_171[8],&l_171[8],&l_171[8]},{&l_171[8],&l_171[8],&l_171[8]},{&l_171[8],&l_171[8],&l_171[8]},{&l_171[8],&l_171[8],&l_171[8]},{&l_171[8],&l_171[8],&l_171[8]},{&l_171[8],&l_171[8],&l_171[8]},{&l_171[8],&l_171[8],&l_171[8]}};
            uint16_t l_175 = 0xE6CCL;
            int i, j;
            for (i = 0; i < 9; i++)
                l_171[i] = &p_560->g_111[2][1];
            l_164[1] |= 0L;
            (*p_560->g_89) = 0x14E7EC2FL;
            if ((safe_mul_func_uint16_t_u_u(p_560->l_comm_values[(safe_mod_func_uint32_t_u_u(p_560->tid, 100))], ((safe_rshift_func_uint16_t_u_u(l_58, ((VECTOR(uint16_t, 2))(p_560->g_170.s31)).hi)) | ((~((l_173 = l_171[8]) != (l_174 = &p_560->g_111[4][1]))) == p_43)))))
            { /* block id: 47 */
                int32_t *l_179 = &p_560->g_146;
                int32_t **l_180[10][6][4] = {{{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0}},{{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0}},{{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0}},{{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0}},{{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0}},{{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0}},{{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0}},{{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0}},{{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0}},{{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0},{(void*)0,&p_560->g_94,&p_560->g_94,(void*)0}}};
                int i, j, k;
                l_175 = 0x38A6985CL;
                for (p_560->g_109 = 0; (p_560->g_109 <= 5); p_560->g_109 = safe_add_func_int64_t_s_s(p_560->g_109, 8))
                { /* block id: 51 */
                    (*p_560->g_178) = (*p_560->g_95);
                }
                (*p_560->g_178) = l_179;
                (*l_179) |= (((safe_add_func_int64_t_s_s((safe_mul_func_uint16_t_u_u(p_560->g_comm_values[p_560->tid], 0x5200L)), (safe_rshift_func_uint16_t_u_u((p_41 > (&p_560->g_111[4][1] == (void*)0)), 13)))) , p_560->g_comm_values[p_560->tid]) , (p_560->g_187 , l_188));
            }
            else
            { /* block id: 56 */
                if (p_41)
                    break;
            }
            return p_40;
        }
    }
    return p_560->g_51;
}


/* ------------------------------------------ */
/* 
 * reads : p_560->g_51 p_560->g_81 p_560->g_14 p_560->g_comm_values p_560->g_89 p_560->g_90 p_560->g_93 p_560->g_95 p_560->g_105 p_560->g_107 p_560->g_110 p_560->g_114 p_560->g_73 p_560->g_126 p_560->g_2 p_560->g_46 p_560->g_142
 * writes: p_560->g_90 p_560->g_94 p_560->g_109 p_560->g_111 p_560->g_114 p_560->g_144
 */
int32_t  func_54(int64_t  p_55, uint64_t  p_56, uint64_t * p_57, struct S5 * p_560)
{ /* block id: 12 */
    union U2 *l_72 = &p_560->g_73;
    int32_t l_78 = 1L;
    VECTOR(uint8_t, 4) l_82 = (VECTOR(uint8_t, 4))(0xACL, (VECTOR(uint8_t, 2))(0xACL, 0x26L), 0x26L);
    VECTOR(uint8_t, 16) l_85 = (VECTOR(uint8_t, 16))(0xB5L, (VECTOR(uint8_t, 4))(0xB5L, (VECTOR(uint8_t, 2))(0xB5L, 0xDBL), 0xDBL), 0xDBL, 0xB5L, 0xDBL, (VECTOR(uint8_t, 2))(0xB5L, 0xDBL), (VECTOR(uint8_t, 2))(0xB5L, 0xDBL), 0xB5L, 0xDBL, 0xB5L, 0xDBL);
    VECTOR(uint64_t, 16) l_86 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 5UL), 5UL), 5UL, 0UL, 5UL, (VECTOR(uint64_t, 2))(0UL, 5UL), (VECTOR(uint64_t, 2))(0UL, 5UL), 0UL, 5UL, 0UL, 5UL);
    union U0 l_87[6][5][6] = {{{{-1L},{-1L},{1L},{-8L},{0x1BAC1F96505D7E5BL},{0L}},{{-1L},{-1L},{1L},{-8L},{0x1BAC1F96505D7E5BL},{0L}},{{-1L},{-1L},{1L},{-8L},{0x1BAC1F96505D7E5BL},{0L}},{{-1L},{-1L},{1L},{-8L},{0x1BAC1F96505D7E5BL},{0L}},{{-1L},{-1L},{1L},{-8L},{0x1BAC1F96505D7E5BL},{0L}}},{{{-1L},{-1L},{1L},{-8L},{0x1BAC1F96505D7E5BL},{0L}},{{-1L},{-1L},{1L},{-8L},{0x1BAC1F96505D7E5BL},{0L}},{{-1L},{-1L},{1L},{-8L},{0x1BAC1F96505D7E5BL},{0L}},{{-1L},{-1L},{1L},{-8L},{0x1BAC1F96505D7E5BL},{0L}},{{-1L},{-1L},{1L},{-8L},{0x1BAC1F96505D7E5BL},{0L}}},{{{-1L},{-1L},{1L},{-8L},{0x1BAC1F96505D7E5BL},{0L}},{{-1L},{-1L},{1L},{-8L},{0x1BAC1F96505D7E5BL},{0L}},{{-1L},{-1L},{1L},{-8L},{0x1BAC1F96505D7E5BL},{0L}},{{-1L},{-1L},{1L},{-8L},{0x1BAC1F96505D7E5BL},{0L}},{{-1L},{-1L},{1L},{-8L},{0x1BAC1F96505D7E5BL},{0L}}},{{{-1L},{-1L},{1L},{-8L},{0x1BAC1F96505D7E5BL},{0L}},{{-1L},{-1L},{1L},{-8L},{0x1BAC1F96505D7E5BL},{0L}},{{-1L},{-1L},{1L},{-8L},{0x1BAC1F96505D7E5BL},{0L}},{{-1L},{-1L},{1L},{-8L},{0x1BAC1F96505D7E5BL},{0L}},{{-1L},{-1L},{1L},{-8L},{0x1BAC1F96505D7E5BL},{0L}}},{{{-1L},{-1L},{1L},{-8L},{0x1BAC1F96505D7E5BL},{0L}},{{-1L},{-1L},{1L},{-8L},{0x1BAC1F96505D7E5BL},{0L}},{{-1L},{-1L},{1L},{-8L},{0x1BAC1F96505D7E5BL},{0L}},{{-1L},{-1L},{1L},{-8L},{0x1BAC1F96505D7E5BL},{0L}},{{-1L},{-1L},{1L},{-8L},{0x1BAC1F96505D7E5BL},{0L}}},{{{-1L},{-1L},{1L},{-8L},{0x1BAC1F96505D7E5BL},{0L}},{{-1L},{-1L},{1L},{-8L},{0x1BAC1F96505D7E5BL},{0L}},{{-1L},{-1L},{1L},{-8L},{0x1BAC1F96505D7E5BL},{0L}},{{-1L},{-1L},{1L},{-8L},{0x1BAC1F96505D7E5BL},{0L}},{{-1L},{-1L},{1L},{-8L},{0x1BAC1F96505D7E5BL},{0L}}}};
    int32_t *l_112 = &p_560->g_90;
    int32_t *l_113[6][5][7] = {{{&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,&l_78,(void*)0,&p_560->g_90},{&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,&l_78,(void*)0,&p_560->g_90},{&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,&l_78,(void*)0,&p_560->g_90},{&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,&l_78,(void*)0,&p_560->g_90},{&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,&l_78,(void*)0,&p_560->g_90}},{{&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,&l_78,(void*)0,&p_560->g_90},{&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,&l_78,(void*)0,&p_560->g_90},{&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,&l_78,(void*)0,&p_560->g_90},{&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,&l_78,(void*)0,&p_560->g_90},{&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,&l_78,(void*)0,&p_560->g_90}},{{&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,&l_78,(void*)0,&p_560->g_90},{&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,&l_78,(void*)0,&p_560->g_90},{&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,&l_78,(void*)0,&p_560->g_90},{&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,&l_78,(void*)0,&p_560->g_90},{&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,&l_78,(void*)0,&p_560->g_90}},{{&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,&l_78,(void*)0,&p_560->g_90},{&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,&l_78,(void*)0,&p_560->g_90},{&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,&l_78,(void*)0,&p_560->g_90},{&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,&l_78,(void*)0,&p_560->g_90},{&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,&l_78,(void*)0,&p_560->g_90}},{{&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,&l_78,(void*)0,&p_560->g_90},{&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,&l_78,(void*)0,&p_560->g_90},{&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,&l_78,(void*)0,&p_560->g_90},{&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,&l_78,(void*)0,&p_560->g_90},{&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,&l_78,(void*)0,&p_560->g_90}},{{&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,&l_78,(void*)0,&p_560->g_90},{&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,&l_78,(void*)0,&p_560->g_90},{&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,&l_78,(void*)0,&p_560->g_90},{&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,&l_78,(void*)0,&p_560->g_90},{&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,&l_78,(void*)0,&p_560->g_90}}};
    uint64_t *l_119 = (void*)0;
    int32_t l_141 = 1L;
    int8_t *l_143 = &p_560->g_144;
    uint8_t l_145 = 0x09L;
    int32_t l_149 = 0x12424469L;
    VECTOR(uint8_t, 8) l_150 = (VECTOR(uint8_t, 8))(0x9FL, (VECTOR(uint8_t, 4))(0x9FL, (VECTOR(uint8_t, 2))(0x9FL, 0xA4L), 0xA4L), 0xA4L, 0x9FL, 0xA4L);
    int i, j, k;
    (*p_560->g_110) = func_61(func_66(p_560->g_51, l_72, &p_560->g_73, (safe_lshift_func_uint16_t_u_s(((~((((((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(((l_78 = (safe_add_func_int8_t_s_s(((((VECTOR(int16_t, 2))(0x7EE6L, (-1L))).even ^ GROUP_DIVERGE(0, 1)) || (l_78 , ((safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(p_560->g_81.s5143)), ((VECTOR(uint8_t, 2))(0xE4L, 0xA8L)), ((VECTOR(uint8_t, 4))(l_82.wzxw)), (safe_sub_func_uint16_t_u_u(p_55, (l_82.w <= p_560->g_14))), 0xDAL, ((VECTOR(uint8_t, 4))(l_85.s0a16)))).s21)).lo, 3)) , ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(l_86.s0b)).xyxyyxxxxxxyxxyx)).sf))), (((p_55 , p_560->g_14) != p_560->g_comm_values[p_560->tid]) & FAKE_DIVERGE(p_560->local_1_offset, get_local_id(1), 10))))) != 0x6C13L), ((VECTOR(int16_t, 4))(0x7F14L)), 0x4084L, 0x20B3L, 0x4D92L, ((VECTOR(int16_t, 2))(0x71CFL)), ((VECTOR(int16_t, 2))(0x13D3L)), ((VECTOR(int16_t, 4))((-1L))))).s9c96)).w >= p_56) , l_82.y) , l_86.s1) && 0x96L)) & 0xC586L), l_86.sc)), l_87[3][4][4], p_560), p_55, l_85.s7, p_560->g_14, p_560);
    p_560->g_114--;
    (*l_112) = ((safe_add_func_int32_t_s_s(((VECTOR(int32_t, 16))((((*l_72) , p_57) != l_119), ((safe_mul_func_uint16_t_u_u((((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(0UL, 5UL)).yyxxyxxy)).s6 , (0x78352AC2L >= (safe_sub_func_uint64_t_u_u((safe_lshift_func_int8_t_s_s(((*l_143) = (p_560->g_126 , (p_56 == ((safe_mul_func_uint16_t_u_u((65529UL | (((((safe_div_func_uint8_t_u_u((safe_mul_func_int8_t_s_s(p_560->g_2.s7, (safe_mod_func_uint32_t_u_u((safe_rshift_func_int8_t_s_s(((safe_rshift_func_int16_t_s_s(p_560->g_81.s7, (*l_112))) , p_560->g_46.w), p_56)), p_56)))), l_141)) , p_560->g_142) , 0L) > 8UL) , 0L)), FAKE_DIVERGE(p_560->local_1_offset, get_local_id(1), 10))) != GROUP_DIVERGE(2, 1))))), p_55)), (*l_112))))), l_145)) | p_560->g_46.z), ((VECTOR(int32_t, 2))(0x5ECBAA91L)), 0L, ((VECTOR(int32_t, 2))((-10L))), 0L, ((VECTOR(int32_t, 2))(2L)), ((VECTOR(int32_t, 2))(0x3211C853L)), 0L, 0L, 0x57554994L, 1L)).sd, p_55)) ^ (*l_112));
    l_150.s7--;
    return p_56;
}


/* ------------------------------------------ */
/* 
 * reads : p_560->g_93 p_560->g_95 p_560->g_105 p_560->g_107 p_560->g_89
 * writes: p_560->g_94 p_560->g_90 p_560->g_109
 */
union U2 * func_61(uint16_t * p_62, int8_t  p_63, uint16_t  p_64, int16_t  p_65, struct S5 * p_560)
{ /* block id: 17 */
    int32_t *l_92[2][7][9] = {{{&p_560->g_90,(void*)0,&p_560->g_90,(void*)0,&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,(void*)0},{&p_560->g_90,(void*)0,&p_560->g_90,(void*)0,&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,(void*)0},{&p_560->g_90,(void*)0,&p_560->g_90,(void*)0,&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,(void*)0},{&p_560->g_90,(void*)0,&p_560->g_90,(void*)0,&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,(void*)0},{&p_560->g_90,(void*)0,&p_560->g_90,(void*)0,&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,(void*)0},{&p_560->g_90,(void*)0,&p_560->g_90,(void*)0,&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,(void*)0},{&p_560->g_90,(void*)0,&p_560->g_90,(void*)0,&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,(void*)0}},{{&p_560->g_90,(void*)0,&p_560->g_90,(void*)0,&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,(void*)0},{&p_560->g_90,(void*)0,&p_560->g_90,(void*)0,&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,(void*)0},{&p_560->g_90,(void*)0,&p_560->g_90,(void*)0,&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,(void*)0},{&p_560->g_90,(void*)0,&p_560->g_90,(void*)0,&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,(void*)0},{&p_560->g_90,(void*)0,&p_560->g_90,(void*)0,&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,(void*)0},{&p_560->g_90,(void*)0,&p_560->g_90,(void*)0,&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,(void*)0},{&p_560->g_90,(void*)0,&p_560->g_90,(void*)0,&p_560->g_90,&p_560->g_90,(void*)0,&p_560->g_90,(void*)0}}};
    union U4 l_96 = {251UL};
    VECTOR(int16_t, 4) l_99 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x5A57L), 0x5A57L);
    VECTOR(int16_t, 16) l_106 = (VECTOR(int16_t, 16))(0x076EL, (VECTOR(int16_t, 4))(0x076EL, (VECTOR(int16_t, 2))(0x076EL, 0L), 0L), 0L, 0x076EL, 0L, (VECTOR(int16_t, 2))(0x076EL, 0L), (VECTOR(int16_t, 2))(0x076EL, 0L), 0x076EL, 0L, 0x076EL, 0L);
    VECTOR(int16_t, 4) l_108 = (VECTOR(int16_t, 4))(0x5CC5L, (VECTOR(int16_t, 2))(0x5CC5L, 0x5D9AL), 0x5D9AL);
    int i, j, k;
    (*p_560->g_93) = l_92[0][2][0];
    (*p_560->g_95) = l_92[0][6][8];
    p_560->g_109 = ((*p_560->g_89) = ((l_96 , (safe_lshift_func_int16_t_s_s(((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 8))(clz(((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_99.wz)).xxxy)).y, (safe_unary_minus_func_uint64_t_u((safe_rshift_func_int16_t_s_s((safe_div_func_int16_t_s_s(((!0xE579L) , p_65), p_64)), (+((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(6L, (-2L))), ((VECTOR(int16_t, 2))(p_560->g_105.wy)), ((VECTOR(int16_t, 2))(l_106.sd9)), (-4L), 0x4450L)).s7))))), 0x0DF0L, 0L)))).even, ((VECTOR(int16_t, 4))(p_560->g_107.yyyy)).lo))).xyyxyxyy))).s56, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(rhadd(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))((-1L), 3L)), 0x0226L, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))((-1L), 0x6CF2L)), 0L, 0L)), 8L)).s0264246040224410, ((VECTOR(int16_t, 2))(l_108.xw)).yyyyxxyyxyyxxyxx))).odd)).s6316522125233116)))).sde))).lo, 4))) ^ (0L && 0xDEB9788E8F369350L)));
    return &p_560->g_73;
}


/* ------------------------------------------ */
/* 
 * reads : p_560->g_89 p_560->g_90
 * writes: p_560->g_90
 */
uint16_t * func_66(uint16_t * p_67, union U2 * p_68, union U2 * p_69, int32_t  p_70, union U0  p_71, struct S5 * p_560)
{ /* block id: 14 */
    uint32_t l_88 = 0xD718789BL;
    uint16_t *l_91 = (void*)0;
    (*p_560->g_89) &= l_88;
    return l_91;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[76];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 76; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[76];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 76; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[100];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 100; i++)
            l_comm_values[i] = 1;
    struct S5 c_561;
    struct S5* p_560 = &c_561;
    struct S5 c_562 = {
        (VECTOR(int64_t, 8))((-2L), (VECTOR(int64_t, 4))((-2L), (VECTOR(int64_t, 2))((-2L), 0x7289FFF12F3CCD24L), 0x7289FFF12F3CCD24L), 0x7289FFF12F3CCD24L, (-2L), 0x7289FFF12F3CCD24L), // p_560->g_2
        1UL, // p_560->g_14
        (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 65533UL), 65533UL), // p_560->g_46
        (void*)0, // p_560->g_51
        8UL, // p_560->g_60
        {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}}, // p_560->g_59
        {0x55447BFCL}, // p_560->g_73
        (VECTOR(uint8_t, 8))(0x5BL, (VECTOR(uint8_t, 4))(0x5BL, (VECTOR(uint8_t, 2))(0x5BL, 255UL), 255UL), 255UL, 0x5BL, 255UL), // p_560->g_81
        (-1L), // p_560->g_90
        &p_560->g_90, // p_560->g_89
        &p_560->g_90, // p_560->g_94
        &p_560->g_94, // p_560->g_93
        &p_560->g_94, // p_560->g_95
        (VECTOR(int16_t, 4))((-9L), (VECTOR(int16_t, 2))((-9L), 0x2287L), 0x2287L), // p_560->g_105
        (VECTOR(int16_t, 2))((-1L), 0x7EF1L), // p_560->g_107
        0x5D4ADB4FL, // p_560->g_109
        {{&p_560->g_73,&p_560->g_73},{&p_560->g_73,&p_560->g_73},{&p_560->g_73,&p_560->g_73},{&p_560->g_73,&p_560->g_73},{&p_560->g_73,&p_560->g_73},{&p_560->g_73,&p_560->g_73}}, // p_560->g_111
        &p_560->g_111[4][1], // p_560->g_110
        2UL, // p_560->g_114
        {-1L}, // p_560->g_126
        {0xE69D1332L}, // p_560->g_142
        (-2L), // p_560->g_144
        1L, // p_560->g_146
        0x78AA34D0L, // p_560->g_147
        {0x1998129CL,0x1998129CL,0x1998129CL,0x1998129CL}, // p_560->g_148
        &p_560->g_146, // p_560->g_153
        (VECTOR(uint16_t, 8))(0x81C6L, (VECTOR(uint16_t, 4))(0x81C6L, (VECTOR(uint16_t, 2))(0x81C6L, 1UL), 1UL), 1UL, 0x81C6L, 1UL), // p_560->g_170
        &p_560->g_94, // p_560->g_178
        {0xBBB0D997L}, // p_560->g_187
        {&p_560->g_94,&p_560->g_94,&p_560->g_94}, // p_560->g_349
        {0x51BB2F67ED2C3CD4L}, // p_560->g_368
        {{0x8B2FFF12L},{4294967291UL},{0x8B2FFF12L},{0x8B2FFF12L},{4294967291UL},{0x8B2FFF12L},{0x8B2FFF12L},{4294967291UL}}, // p_560->g_370
        {0x5AL}, // p_560->g_372
        (void*)0, // p_560->g_374
        &p_560->g_374, // p_560->g_373
        (-1L), // p_560->g_378
        (VECTOR(int16_t, 2))(0x27D9L, 0x6A12L), // p_560->g_392
        (void*)0, // p_560->g_414
        {0xD4L}, // p_560->g_419
        (-1L), // p_560->g_448
        {4294967295UL}, // p_560->g_456
        {0x27FD990C76380750L}, // p_560->g_487
        &p_560->g_487, // p_560->g_488
        (VECTOR(int8_t, 4))(0x77L, (VECTOR(int8_t, 2))(0x77L, 1L), 1L), // p_560->g_492
        {1UL}, // p_560->g_527
        &p_560->g_372, // p_560->g_542
        {-2L}, // p_560->g_551
        (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x06L), 0x06L), 0x06L, 1L, 0x06L, (VECTOR(int8_t, 2))(1L, 0x06L), (VECTOR(int8_t, 2))(1L, 0x06L), 1L, 0x06L, 1L, 0x06L), // p_560->g_557
        0, // p_560->v_collective
        sequence_input[get_global_id(0)], // p_560->global_0_offset
        sequence_input[get_global_id(1)], // p_560->global_1_offset
        sequence_input[get_global_id(2)], // p_560->global_2_offset
        sequence_input[get_local_id(0)], // p_560->local_0_offset
        sequence_input[get_local_id(1)], // p_560->local_1_offset
        sequence_input[get_local_id(2)], // p_560->local_2_offset
        sequence_input[get_group_id(0)], // p_560->group_0_offset
        sequence_input[get_group_id(1)], // p_560->group_1_offset
        sequence_input[get_group_id(2)], // p_560->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 100)), permutations[0][get_linear_local_id()])), // p_560->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_561 = c_562;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_560);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_560->g_2.s0, "p_560->g_2.s0", print_hash_value);
    transparent_crc(p_560->g_2.s1, "p_560->g_2.s1", print_hash_value);
    transparent_crc(p_560->g_2.s2, "p_560->g_2.s2", print_hash_value);
    transparent_crc(p_560->g_2.s3, "p_560->g_2.s3", print_hash_value);
    transparent_crc(p_560->g_2.s4, "p_560->g_2.s4", print_hash_value);
    transparent_crc(p_560->g_2.s5, "p_560->g_2.s5", print_hash_value);
    transparent_crc(p_560->g_2.s6, "p_560->g_2.s6", print_hash_value);
    transparent_crc(p_560->g_2.s7, "p_560->g_2.s7", print_hash_value);
    transparent_crc(p_560->g_14, "p_560->g_14", print_hash_value);
    transparent_crc(p_560->g_46.x, "p_560->g_46.x", print_hash_value);
    transparent_crc(p_560->g_46.y, "p_560->g_46.y", print_hash_value);
    transparent_crc(p_560->g_46.z, "p_560->g_46.z", print_hash_value);
    transparent_crc(p_560->g_46.w, "p_560->g_46.w", print_hash_value);
    transparent_crc(p_560->g_60, "p_560->g_60", print_hash_value);
    transparent_crc(p_560->g_73.f1, "p_560->g_73.f1", print_hash_value);
    transparent_crc(p_560->g_81.s0, "p_560->g_81.s0", print_hash_value);
    transparent_crc(p_560->g_81.s1, "p_560->g_81.s1", print_hash_value);
    transparent_crc(p_560->g_81.s2, "p_560->g_81.s2", print_hash_value);
    transparent_crc(p_560->g_81.s3, "p_560->g_81.s3", print_hash_value);
    transparent_crc(p_560->g_81.s4, "p_560->g_81.s4", print_hash_value);
    transparent_crc(p_560->g_81.s5, "p_560->g_81.s5", print_hash_value);
    transparent_crc(p_560->g_81.s6, "p_560->g_81.s6", print_hash_value);
    transparent_crc(p_560->g_81.s7, "p_560->g_81.s7", print_hash_value);
    transparent_crc(p_560->g_90, "p_560->g_90", print_hash_value);
    transparent_crc(p_560->g_105.x, "p_560->g_105.x", print_hash_value);
    transparent_crc(p_560->g_105.y, "p_560->g_105.y", print_hash_value);
    transparent_crc(p_560->g_105.z, "p_560->g_105.z", print_hash_value);
    transparent_crc(p_560->g_105.w, "p_560->g_105.w", print_hash_value);
    transparent_crc(p_560->g_107.x, "p_560->g_107.x", print_hash_value);
    transparent_crc(p_560->g_107.y, "p_560->g_107.y", print_hash_value);
    transparent_crc(p_560->g_109, "p_560->g_109", print_hash_value);
    transparent_crc(p_560->g_114, "p_560->g_114", print_hash_value);
    transparent_crc(p_560->g_126.f0, "p_560->g_126.f0", print_hash_value);
    transparent_crc(p_560->g_144, "p_560->g_144", print_hash_value);
    transparent_crc(p_560->g_146, "p_560->g_146", print_hash_value);
    transparent_crc(p_560->g_147, "p_560->g_147", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_560->g_148[i], "p_560->g_148[i]", print_hash_value);

    }
    transparent_crc(p_560->g_170.s0, "p_560->g_170.s0", print_hash_value);
    transparent_crc(p_560->g_170.s1, "p_560->g_170.s1", print_hash_value);
    transparent_crc(p_560->g_170.s2, "p_560->g_170.s2", print_hash_value);
    transparent_crc(p_560->g_170.s3, "p_560->g_170.s3", print_hash_value);
    transparent_crc(p_560->g_170.s4, "p_560->g_170.s4", print_hash_value);
    transparent_crc(p_560->g_170.s5, "p_560->g_170.s5", print_hash_value);
    transparent_crc(p_560->g_170.s6, "p_560->g_170.s6", print_hash_value);
    transparent_crc(p_560->g_170.s7, "p_560->g_170.s7", print_hash_value);
    transparent_crc(p_560->g_187.f0, "p_560->g_187.f0", print_hash_value);
    transparent_crc(p_560->g_368.f0, "p_560->g_368.f0", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_560->g_370[i].f0, "p_560->g_370[i].f0", print_hash_value);

    }
    transparent_crc(p_560->g_378, "p_560->g_378", print_hash_value);
    transparent_crc(p_560->g_392.x, "p_560->g_392.x", print_hash_value);
    transparent_crc(p_560->g_392.y, "p_560->g_392.y", print_hash_value);
    transparent_crc(p_560->g_419.f0, "p_560->g_419.f0", print_hash_value);
    transparent_crc(p_560->g_448, "p_560->g_448", print_hash_value);
    transparent_crc(p_560->g_456.f2, "p_560->g_456.f2", print_hash_value);
    transparent_crc(p_560->g_487.f0, "p_560->g_487.f0", print_hash_value);
    transparent_crc(p_560->g_492.x, "p_560->g_492.x", print_hash_value);
    transparent_crc(p_560->g_492.y, "p_560->g_492.y", print_hash_value);
    transparent_crc(p_560->g_492.z, "p_560->g_492.z", print_hash_value);
    transparent_crc(p_560->g_492.w, "p_560->g_492.w", print_hash_value);
    transparent_crc(p_560->g_527.f0, "p_560->g_527.f0", print_hash_value);
    transparent_crc(p_560->g_551.f0, "p_560->g_551.f0", print_hash_value);
    transparent_crc(p_560->g_557.s0, "p_560->g_557.s0", print_hash_value);
    transparent_crc(p_560->g_557.s1, "p_560->g_557.s1", print_hash_value);
    transparent_crc(p_560->g_557.s2, "p_560->g_557.s2", print_hash_value);
    transparent_crc(p_560->g_557.s3, "p_560->g_557.s3", print_hash_value);
    transparent_crc(p_560->g_557.s4, "p_560->g_557.s4", print_hash_value);
    transparent_crc(p_560->g_557.s5, "p_560->g_557.s5", print_hash_value);
    transparent_crc(p_560->g_557.s6, "p_560->g_557.s6", print_hash_value);
    transparent_crc(p_560->g_557.s7, "p_560->g_557.s7", print_hash_value);
    transparent_crc(p_560->g_557.s8, "p_560->g_557.s8", print_hash_value);
    transparent_crc(p_560->g_557.s9, "p_560->g_557.s9", print_hash_value);
    transparent_crc(p_560->g_557.sa, "p_560->g_557.sa", print_hash_value);
    transparent_crc(p_560->g_557.sb, "p_560->g_557.sb", print_hash_value);
    transparent_crc(p_560->g_557.sc, "p_560->g_557.sc", print_hash_value);
    transparent_crc(p_560->g_557.sd, "p_560->g_557.sd", print_hash_value);
    transparent_crc(p_560->g_557.se, "p_560->g_557.se", print_hash_value);
    transparent_crc(p_560->g_557.sf, "p_560->g_557.sf", print_hash_value);
    transparent_crc(p_560->v_collective, "p_560->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 76; i++)
            transparent_crc(p_560->g_special_values[i + 76 * get_linear_group_id()], "p_560->g_special_values[i + 76 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 76; i++)
            transparent_crc(p_560->l_special_values[i], "p_560->l_special_values[i]", print_hash_value);
    transparent_crc(p_560->l_comm_values[get_linear_local_id()], "p_560->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_560->g_comm_values[get_linear_group_id() * 100 + get_linear_local_id()], "p_560->g_comm_values[get_linear_group_id() * 100 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
