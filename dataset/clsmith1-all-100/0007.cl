// --atomics 81 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 56,5,9 -l 4,1,9
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

__constant uint32_t permutations[10][36] = {
{8,15,14,30,17,7,3,23,21,19,27,13,24,35,32,2,4,18,5,11,9,6,12,25,22,31,33,28,10,1,34,20,26,0,16,29}, // permutation 0
{17,21,29,2,15,24,3,35,4,6,28,18,19,12,14,9,31,33,26,0,32,27,30,13,11,34,10,8,1,20,16,22,23,5,25,7}, // permutation 1
{29,34,14,21,26,27,9,8,19,11,13,31,17,24,23,22,15,32,20,10,16,30,6,5,2,7,18,1,25,3,12,33,4,28,0,35}, // permutation 2
{15,10,18,2,30,17,33,26,20,19,12,7,24,16,8,4,31,13,11,27,21,5,29,25,22,28,6,1,3,0,35,14,9,34,23,32}, // permutation 3
{6,4,7,22,29,26,17,1,3,9,24,15,28,25,13,34,16,33,30,19,23,11,10,32,31,20,35,8,5,12,18,0,27,2,14,21}, // permutation 4
{17,33,21,23,2,3,28,34,30,18,1,6,9,11,15,10,8,29,0,32,13,35,24,16,31,14,27,22,4,7,20,26,12,5,25,19}, // permutation 5
{8,16,15,27,0,4,7,24,33,23,1,25,13,12,34,2,26,22,3,31,32,30,21,19,5,11,14,9,6,17,10,29,18,20,35,28}, // permutation 6
{35,16,7,31,30,3,23,10,8,1,29,33,19,14,17,24,12,11,20,0,15,26,27,13,9,4,25,22,5,6,21,32,18,2,34,28}, // permutation 7
{9,24,31,26,34,23,21,17,1,13,25,16,10,29,20,27,32,18,33,2,15,3,6,5,19,7,35,8,11,22,28,0,4,30,12,14}, // permutation 8
{29,35,2,9,30,5,11,32,21,25,13,22,0,4,23,16,28,18,1,24,6,14,34,15,17,3,19,8,33,20,27,10,12,7,26,31} // permutation 9
};

// Seed: 7

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint16_t  f0;
   volatile int16_t  f1;
   int32_t  f2;
   uint16_t  f3;
   volatile int32_t  f4;
};

struct S1 {
    int32_t g_13;
    volatile VECTOR(uint32_t, 8) g_47;
    uint32_t g_52[6];
    uint64_t g_53;
    int32_t g_55[9];
    struct S0 g_64;
    struct S0 *g_63;
    int32_t *g_70;
    int32_t **g_69;
    int32_t **g_139;
    volatile VECTOR(int32_t, 4) g_141;
    VECTOR(int32_t, 2) g_142;
    int16_t g_145[3];
    volatile struct S0 g_157;
    VECTOR(uint32_t, 2) g_160;
    volatile VECTOR(uint8_t, 16) g_165;
    VECTOR(uint8_t, 8) g_166;
    int8_t g_171;
    int8_t g_173;
    VECTOR(uint32_t, 8) g_186;
    VECTOR(uint32_t, 16) g_188;
    struct S0 ** volatile g_201;
    int32_t *g_208;
    int32_t ** volatile g_207;
    struct S0 **g_223[7];
    struct S0 *** volatile g_222;
    int32_t ** volatile g_225;
    int32_t * volatile g_228;
    int32_t * volatile g_229;
    int32_t * volatile g_230;
    int32_t * volatile g_231;
    int32_t * volatile g_232[6];
    int32_t * volatile g_233[9][3][6];
    int32_t * volatile g_234;
    int32_t * volatile g_235;
    int32_t * volatile g_236;
    int32_t * volatile g_237;
    int32_t * volatile g_239;
    int32_t * volatile g_240;
    VECTOR(uint32_t, 16) g_281;
    VECTOR(int8_t, 4) g_283;
    volatile VECTOR(uint16_t, 2) g_302;
    int32_t * volatile g_310;
    int32_t * volatile g_311;
    int32_t * volatile g_312;
    int32_t * volatile g_315;
    int32_t * volatile g_316;
    int32_t * volatile g_343;
    int32_t * volatile g_344;
    int32_t * volatile g_345;
    int32_t * volatile g_346;
    int32_t * volatile g_347;
    int32_t * volatile g_348;
    int32_t * volatile g_349[6];
    int32_t * volatile g_350;
    int32_t * volatile g_351;
    VECTOR(int32_t, 8) g_360;
    VECTOR(int32_t, 8) g_362;
    volatile VECTOR(uint8_t, 2) g_364;
    struct S0 g_381[4];
    volatile VECTOR(int64_t, 2) g_405;
    VECTOR(int64_t, 2) g_407;
    int64_t g_416;
    volatile VECTOR(uint64_t, 4) g_425;
    volatile VECTOR(uint64_t, 2) g_427;
    VECTOR(uint16_t, 8) g_455;
    int32_t g_486;
    volatile uint16_t g_490;
    volatile uint16_t *g_489;
    int16_t g_749;
    struct S0 * volatile g_753;
    struct S0 * volatile g_755;
    volatile struct S0 g_863;
    struct S0 g_870[1][9];
    struct S0 g_876[5];
    VECTOR(int16_t, 4) g_881;
    VECTOR(uint64_t, 2) g_890;
    volatile struct S0 g_898;
    volatile struct S0 g_899;
    VECTOR(uint32_t, 8) g_914;
    int64_t *g_935;
    int32_t * volatile g_937[2][5][10];
    int32_t * volatile g_938;
    volatile struct S0 g_943;
    volatile struct S0 g_948;
    volatile struct S0 g_949[9][1];
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
uint8_t  func_1(struct S1 * p_962);
int32_t * func_2(uint32_t  p_3, struct S1 * p_962);
int32_t  func_6(int32_t * p_7, int8_t  p_8, uint32_t  p_9, int32_t * p_10, uint32_t  p_11, struct S1 * p_962);
struct S0  func_16(uint32_t  p_17, struct S1 * p_962);
int8_t  func_20(uint16_t  p_21, int32_t * p_22, int64_t  p_23, struct S1 * p_962);
int32_t * func_26(int8_t  p_27, int8_t  p_28, int64_t  p_29, int32_t * p_30, int32_t * p_31, struct S1 * p_962);
int32_t * func_33(int32_t  p_34, int32_t * p_35, int32_t * p_36, int32_t * p_37, struct S1 * p_962);
int8_t  func_42(int16_t  p_43, struct S1 * p_962);
uint32_t  func_48(int32_t  p_49, int64_t  p_50, int32_t  p_51, struct S1 * p_962);
struct S0 * func_57(struct S0 * p_58, int32_t * p_59, int32_t * p_60, int32_t * p_61, int64_t  p_62, struct S1 * p_962);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_962->g_comm_values p_962->g_13 p_962->g_186 p_962->g_166 p_962->g_64.f2 p_962->g_157.f1 p_962->g_486 p_962->g_302 p_962->g_360 p_962->g_201 p_962->g_63 p_962->g_64 p_962->g_755 p_962->g_157.f0 p_962->g_142 p_962->g_53 p_962->g_157.f4 p_962->g_207 p_962->g_208 p_962->g_225 p_962->g_870 p_962->g_69 p_962->g_70 p_962->g_876 p_962->g_347 p_962->g_283 p_962->g_381.f2 p_962->g_898 p_962->g_489 p_962->g_490 p_962->g_881 p_962->g_52 p_962->g_381.f0 p_962->g_943 p_962->g_948 p_962->g_157.f2
 * writes: p_962->g_208 p_962->g_486 p_962->g_173 p_962->g_64.f0 p_962->g_381 p_962->g_64.f3 p_962->g_171 p_962->g_749 p_962->g_53 p_962->g_142 p_962->g_166 p_962->g_64 p_962->g_876.f0 p_962->g_899 p_962->g_935 p_962->g_283 p_962->g_145 p_962->g_949
 */
uint8_t  func_1(struct S1 * p_962)
{ /* block id: 4 */
    int32_t *l_12 = &p_962->g_13;
    uint32_t *l_528[5][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int32_t l_529 = 0x2B6E99ADL;
    int32_t **l_951 = &l_12;
    int32_t *l_952[9][5][4] = {{{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529}},{{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529}},{{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529}},{{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529}},{{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529}},{{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529}},{{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529}},{{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529}},{{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529},{&l_529,&l_529,&p_962->g_486,&l_529}}};
    int64_t l_958 = 0x29926ADB2390F7A2L;
    uint64_t l_959 = 18446744073709551615UL;
    int i, j, k;
    (*l_951) = func_2(((safe_sub_func_int16_t_s_s(((p_962->g_comm_values[p_962->tid] & 65535UL) == func_6(l_12, p_962->g_13, (safe_sub_func_uint8_t_u_u((func_16((l_529 ^= (safe_sub_func_int8_t_s_s(func_20(p_962->g_comm_values[p_962->tid], &p_962->g_13, (*l_12), p_962), p_962->g_166.s4))), p_962) , p_962->g_157.f4), FAKE_DIVERGE(p_962->local_0_offset, get_local_id(0), 10))), l_528[4][2], p_962->g_876[4].f3, p_962)), p_962->g_870[0][3].f2)) , 0x8520A122L), p_962);
    (*l_951) = l_952[3][0][2];
    for (p_962->g_64.f0 = (-1); (p_962->g_64.f0 < 59); p_962->g_64.f0++)
    { /* block id: 526 */
        uint32_t l_955 = 4294967295UL;
        l_955++;
        (*l_951) = func_2((l_955 == (-8L)), p_962);
    }
    l_959--;
    return p_962->g_157.f2;
}


/* ------------------------------------------ */
/* 
 * reads : p_962->g_948
 * writes: p_962->g_949
 */
int32_t * func_2(uint32_t  p_3, struct S1 * p_962)
{ /* block id: 518 */
    uint64_t l_945 = 18446744073709551615UL;
    int32_t *l_950[5][6][8] = {{{(void*)0,&p_962->g_486,(void*)0,(void*)0,(void*)0,&p_962->g_486,(void*)0,(void*)0},{(void*)0,&p_962->g_486,(void*)0,(void*)0,(void*)0,&p_962->g_486,(void*)0,(void*)0},{(void*)0,&p_962->g_486,(void*)0,(void*)0,(void*)0,&p_962->g_486,(void*)0,(void*)0},{(void*)0,&p_962->g_486,(void*)0,(void*)0,(void*)0,&p_962->g_486,(void*)0,(void*)0},{(void*)0,&p_962->g_486,(void*)0,(void*)0,(void*)0,&p_962->g_486,(void*)0,(void*)0},{(void*)0,&p_962->g_486,(void*)0,(void*)0,(void*)0,&p_962->g_486,(void*)0,(void*)0}},{{(void*)0,&p_962->g_486,(void*)0,(void*)0,(void*)0,&p_962->g_486,(void*)0,(void*)0},{(void*)0,&p_962->g_486,(void*)0,(void*)0,(void*)0,&p_962->g_486,(void*)0,(void*)0},{(void*)0,&p_962->g_486,(void*)0,(void*)0,(void*)0,&p_962->g_486,(void*)0,(void*)0},{(void*)0,&p_962->g_486,(void*)0,(void*)0,(void*)0,&p_962->g_486,(void*)0,(void*)0},{(void*)0,&p_962->g_486,(void*)0,(void*)0,(void*)0,&p_962->g_486,(void*)0,(void*)0},{(void*)0,&p_962->g_486,(void*)0,(void*)0,(void*)0,&p_962->g_486,(void*)0,(void*)0}},{{(void*)0,&p_962->g_486,(void*)0,(void*)0,(void*)0,&p_962->g_486,(void*)0,(void*)0},{(void*)0,&p_962->g_486,(void*)0,(void*)0,(void*)0,&p_962->g_486,(void*)0,(void*)0},{(void*)0,&p_962->g_486,(void*)0,(void*)0,(void*)0,&p_962->g_486,(void*)0,(void*)0},{(void*)0,&p_962->g_486,(void*)0,(void*)0,(void*)0,&p_962->g_486,(void*)0,(void*)0},{(void*)0,&p_962->g_486,(void*)0,(void*)0,(void*)0,&p_962->g_486,(void*)0,(void*)0},{(void*)0,&p_962->g_486,(void*)0,(void*)0,(void*)0,&p_962->g_486,(void*)0,(void*)0}},{{(void*)0,&p_962->g_486,(void*)0,(void*)0,(void*)0,&p_962->g_486,(void*)0,(void*)0},{(void*)0,&p_962->g_486,(void*)0,(void*)0,(void*)0,&p_962->g_486,(void*)0,(void*)0},{(void*)0,&p_962->g_486,(void*)0,(void*)0,(void*)0,&p_962->g_486,(void*)0,(void*)0},{(void*)0,&p_962->g_486,(void*)0,(void*)0,(void*)0,&p_962->g_486,(void*)0,(void*)0},{(void*)0,&p_962->g_486,(void*)0,(void*)0,(void*)0,&p_962->g_486,(void*)0,(void*)0},{(void*)0,&p_962->g_486,(void*)0,(void*)0,(void*)0,&p_962->g_486,(void*)0,(void*)0}},{{(void*)0,&p_962->g_486,(void*)0,(void*)0,(void*)0,&p_962->g_486,(void*)0,(void*)0},{(void*)0,&p_962->g_486,(void*)0,(void*)0,(void*)0,&p_962->g_486,(void*)0,(void*)0},{(void*)0,&p_962->g_486,(void*)0,(void*)0,(void*)0,&p_962->g_486,(void*)0,(void*)0},{(void*)0,&p_962->g_486,(void*)0,(void*)0,(void*)0,&p_962->g_486,(void*)0,(void*)0},{(void*)0,&p_962->g_486,(void*)0,(void*)0,(void*)0,&p_962->g_486,(void*)0,(void*)0},{(void*)0,&p_962->g_486,(void*)0,(void*)0,(void*)0,&p_962->g_486,(void*)0,(void*)0}}};
    int i, j, k;
    l_945--;
    p_962->g_949[3][0] = p_962->g_948;
    return l_950[0][5][7];
}


/* ------------------------------------------ */
/* 
 * reads : p_962->g_207 p_962->g_208 p_962->g_943 p_962->g_63
 * writes: p_962->g_208 p_962->g_64
 */
int32_t  func_6(int32_t * p_7, int8_t  p_8, uint32_t  p_9, int32_t * p_10, uint32_t  p_11, struct S1 * p_962)
{ /* block id: 514 */
    int32_t **l_942 = &p_962->g_208;
    int32_t l_944 = 1L;
    (*l_942) = (*p_962->g_207);
    (*p_962->g_63) = p_962->g_943;
    return l_944;
}


/* ------------------------------------------ */
/* 
 * reads : p_962->g_64.f2 p_962->g_157.f1 p_962->g_486 p_962->g_302 p_962->g_360 p_962->g_201 p_962->g_63 p_962->g_64 p_962->g_755 p_962->g_157.f0 p_962->g_142 p_962->g_13 p_962->g_53 p_962->g_157.f4 p_962->g_207 p_962->g_208 p_962->g_225 p_962->g_870 p_962->g_69 p_962->g_70 p_962->g_166 p_962->g_876 p_962->g_347 p_962->g_283 p_962->g_381.f2 p_962->g_898 p_962->g_489 p_962->g_490 p_962->g_881 p_962->g_52 p_962->g_381.f0 p_962->g_comm_values
 * writes: p_962->g_208 p_962->g_486 p_962->g_173 p_962->g_64.f0 p_962->g_381 p_962->g_64.f3 p_962->g_171 p_962->g_749 p_962->g_53 p_962->g_142 p_962->g_166 p_962->g_64 p_962->g_876.f0 p_962->g_899 p_962->g_935 p_962->g_283 p_962->g_145
 */
struct S0  func_16(uint32_t  p_17, struct S1 * p_962)
{ /* block id: 227 */
    int16_t *l_530 = &p_962->g_145[1];
    int32_t *l_533 = (void*)0;
    int32_t **l_534 = &p_962->g_208;
    int32_t **l_535 = &l_533;
    uint64_t l_778 = 0x50B0EFD3CE773344L;
    VECTOR(int32_t, 8) l_856 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0L), 0L), 0L, 1L, 0L);
    int32_t l_858 = (-10L);
    int32_t l_866 = 7L;
    int64_t l_928 = (-1L);
    int8_t *l_931 = &p_962->g_173;
    struct S0 *l_932 = &p_962->g_876[4];
    int64_t *l_934 = (void*)0;
    int64_t **l_933[8] = {&l_934,&l_934,&l_934,&l_934,&l_934,&l_934,&l_934,&l_934};
    int8_t *l_936[1][3];
    int32_t *l_939 = (void*)0;
    int32_t *l_940[10] = {&p_962->g_486,&p_962->g_486,&p_962->g_486,&p_962->g_486,&p_962->g_486,&p_962->g_486,&p_962->g_486,&p_962->g_486,&p_962->g_486,&p_962->g_486};
    uint32_t l_941 = 0x90ECFBB5L;
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
            l_936[i][j] = &p_962->g_171;
    }
    (*l_535) = (((l_530 != &p_962->g_145[1]) <= ((safe_rshift_func_int16_t_s_s(p_962->g_64.f2, p_962->g_157.f1)) & 0x0585L)) , ((*l_534) = l_533));
    for (p_962->g_486 = 2; (p_962->g_486 >= 19); p_962->g_486++)
    { /* block id: 232 */
        uint8_t l_733 = 1UL;
        VECTOR(uint8_t, 2) l_744 = (VECTOR(uint8_t, 2))(255UL, 2UL);
        VECTOR(uint32_t, 2) l_752 = (VECTOR(uint32_t, 2))(0x4077FF9DL, 4294967295UL);
        int32_t **l_772 = &p_962->g_208;
        int32_t *l_857[6][10] = {{&p_962->g_486,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_962->g_486,&p_962->g_13,&p_962->g_486,(void*)0},{&p_962->g_486,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_962->g_486,&p_962->g_13,&p_962->g_486,(void*)0},{&p_962->g_486,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_962->g_486,&p_962->g_13,&p_962->g_486,(void*)0},{&p_962->g_486,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_962->g_486,&p_962->g_13,&p_962->g_486,(void*)0},{&p_962->g_486,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_962->g_486,&p_962->g_13,&p_962->g_486,(void*)0},{&p_962->g_486,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_962->g_486,&p_962->g_13,&p_962->g_486,(void*)0}};
        uint32_t l_922 = 0UL;
        int64_t l_925 = (-9L);
        int i, j;
        if ((atomic_inc(&p_962->l_atomic_input[33]) == 9))
        { /* block id: 234 */
            VECTOR(int32_t, 4) l_538 = (VECTOR(int32_t, 4))(5L, (VECTOR(int32_t, 2))(5L, (-1L)), (-1L));
            VECTOR(int32_t, 4) l_539 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x5836B556L), 0x5836B556L);
            uint32_t l_540 = 0xFF566BC0L;
            uint32_t l_541 = 0x5BD6ED05L;
            int64_t l_542 = 0x7A5BFC5458335C15L;
            int32_t l_543 = 7L;
            uint16_t l_544 = 65532UL;
            int i;
            l_542 = (l_541 = (l_540 = ((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 2))(l_538.zz)).yxyxyyyyxyyxyyxy, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))((-4L), ((VECTOR(int32_t, 2))(l_539.zy)), 1L)), ((VECTOR(int32_t, 2))(0L, 0L)), 1L, 1L)).s0476466753261235))))).se));
            l_543 = ((VECTOR(int32_t, 4))(0x518632FBL, 0x2C02840BL, 0x6756C4A2L, 0x0C58B5CCL)).y;
            if ((l_544 = (-10L)))
            { /* block id: 240 */
                uint32_t l_545 = 0x8BF4B659L;
                uint16_t l_546 = 0x345BL;
                VECTOR(uint16_t, 16) l_547 = (VECTOR(uint16_t, 16))(0xBEC9L, (VECTOR(uint16_t, 4))(0xBEC9L, (VECTOR(uint16_t, 2))(0xBEC9L, 0UL), 0UL), 0UL, 0xBEC9L, 0UL, (VECTOR(uint16_t, 2))(0xBEC9L, 0UL), (VECTOR(uint16_t, 2))(0xBEC9L, 0UL), 0xBEC9L, 0UL, 0xBEC9L, 0UL);
                int32_t l_548 = 0x4C1A933CL;
                uint32_t l_549[1][8][10] = {{{0x6C6EFCEEL,0x6C6EFCEEL,0xAC29A108L,0x3E9B4BBEL,4294967294UL,0x3E9B4BBEL,0xAC29A108L,0x6C6EFCEEL,0x6C6EFCEEL,0xAC29A108L},{0x6C6EFCEEL,0x6C6EFCEEL,0xAC29A108L,0x3E9B4BBEL,4294967294UL,0x3E9B4BBEL,0xAC29A108L,0x6C6EFCEEL,0x6C6EFCEEL,0xAC29A108L},{0x6C6EFCEEL,0x6C6EFCEEL,0xAC29A108L,0x3E9B4BBEL,4294967294UL,0x3E9B4BBEL,0xAC29A108L,0x6C6EFCEEL,0x6C6EFCEEL,0xAC29A108L},{0x6C6EFCEEL,0x6C6EFCEEL,0xAC29A108L,0x3E9B4BBEL,4294967294UL,0x3E9B4BBEL,0xAC29A108L,0x6C6EFCEEL,0x6C6EFCEEL,0xAC29A108L},{0x6C6EFCEEL,0x6C6EFCEEL,0xAC29A108L,0x3E9B4BBEL,4294967294UL,0x3E9B4BBEL,0xAC29A108L,0x6C6EFCEEL,0x6C6EFCEEL,0xAC29A108L},{0x6C6EFCEEL,0x6C6EFCEEL,0xAC29A108L,0x3E9B4BBEL,4294967294UL,0x3E9B4BBEL,0xAC29A108L,0x6C6EFCEEL,0x6C6EFCEEL,0xAC29A108L},{0x6C6EFCEEL,0x6C6EFCEEL,0xAC29A108L,0x3E9B4BBEL,4294967294UL,0x3E9B4BBEL,0xAC29A108L,0x6C6EFCEEL,0x6C6EFCEEL,0xAC29A108L},{0x6C6EFCEEL,0x6C6EFCEEL,0xAC29A108L,0x3E9B4BBEL,4294967294UL,0x3E9B4BBEL,0xAC29A108L,0x6C6EFCEEL,0x6C6EFCEEL,0xAC29A108L}}};
                int32_t *l_552 = (void*)0;
                int32_t *l_553 = &l_548;
                VECTOR(int32_t, 4) l_569 = (VECTOR(int32_t, 4))(0x14589C19L, (VECTOR(int32_t, 2))(0x14589C19L, 0L), 0L);
                int i, j, k;
                l_553 = ((l_546 = l_545) , (((VECTOR(uint16_t, 8))(l_547.sa5c641e4)).s6 , ((++l_549[0][4][7]) , (l_552 = (void*)0))));
                for (l_547.s9 = 0; (l_547.s9 < 22); ++l_547.s9)
                { /* block id: 247 */
                    VECTOR(uint32_t, 2) l_556 = (VECTOR(uint32_t, 2))(4294967286UL, 0xE321BE75L);
                    uint64_t l_557 = 18446744073709551606UL;
                    uint32_t l_558[10] = {0x396CE712L,4294967291UL,0x396CE712L,0x396CE712L,4294967291UL,0x396CE712L,0x396CE712L,4294967291UL,0x396CE712L,0x396CE712L};
                    uint64_t l_559[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_559[i] = 0xCBBA46EB7C7627C1L;
                    l_557 = l_556.x;
                    l_539.x = 0x3FB031EAL;
                    l_559[1] ^= l_558[4];
                }
                for (l_548 = 0; (l_548 <= (-18)); l_548--)
                { /* block id: 254 */
                    int32_t l_562[6][9][4] = {{{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L}},{{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L}},{{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L}},{{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L}},{{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L}},{{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L},{(-1L),0x22CBEEDAL,0L,0x47331C16L}}};
                    uint64_t l_566 = 0x66DCDEE530F9CA8BL;
                    int i, j, k;
                    for (l_562[3][2][0] = 0; (l_562[3][2][0] == (-4)); l_562[3][2][0] = safe_sub_func_int64_t_s_s(l_562[3][2][0], 9))
                    { /* block id: 257 */
                        uint16_t l_565[8][1][6] = {{{0x1512L,0x1512L,65526UL,0x624AL,6UL,0x624AL}},{{0x1512L,0x1512L,65526UL,0x624AL,6UL,0x624AL}},{{0x1512L,0x1512L,65526UL,0x624AL,6UL,0x624AL}},{{0x1512L,0x1512L,65526UL,0x624AL,6UL,0x624AL}},{{0x1512L,0x1512L,65526UL,0x624AL,6UL,0x624AL}},{{0x1512L,0x1512L,65526UL,0x624AL,6UL,0x624AL}},{{0x1512L,0x1512L,65526UL,0x624AL,6UL,0x624AL}},{{0x1512L,0x1512L,65526UL,0x624AL,6UL,0x624AL}}};
                        int i, j, k;
                        l_565[3][0][2] ^= ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))((-1L), 2L)))).odd;
                    }
                    l_566--;
                }
                l_538.z ^= ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_569.xyzw)).wwyyzxxz)).s2;
            }
            else
            { /* block id: 263 */
                int32_t l_570 = 0x78FA399DL;
                VECTOR(int32_t, 8) l_678 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L));
                uint16_t l_679 = 0x7537L;
                int32_t *l_680 = (void*)0;
                int i;
                for (l_570 = (-13); (l_570 < 22); l_570 = safe_add_func_int32_t_s_s(l_570, 8))
                { /* block id: 266 */
                    int32_t l_573 = 8L;
                    int32_t *l_578 = (void*)0;
                    int16_t l_579 = 0x191CL;
                    VECTOR(int8_t, 16) l_596 = (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x74L), 0x74L), 0x74L, 0L, 0x74L, (VECTOR(int8_t, 2))(0L, 0x74L), (VECTOR(int8_t, 2))(0L, 0x74L), 0L, 0x74L, 0L, 0x74L);
                    uint32_t l_597 = 0x628DF192L;
                    VECTOR(int8_t, 8) l_598 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x32L), 0x32L), 0x32L, (-1L), 0x32L);
                    int8_t l_599 = (-1L);
                    VECTOR(int8_t, 4) l_600 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), (-1L)), (-1L));
                    uint64_t l_601 = 0x44AB22FF8479B50AL;
                    VECTOR(int8_t, 2) l_602 = (VECTOR(int8_t, 2))((-8L), 1L);
                    VECTOR(int8_t, 16) l_603 = (VECTOR(int8_t, 16))(0x4EL, (VECTOR(int8_t, 4))(0x4EL, (VECTOR(int8_t, 2))(0x4EL, (-9L)), (-9L)), (-9L), 0x4EL, (-9L), (VECTOR(int8_t, 2))(0x4EL, (-9L)), (VECTOR(int8_t, 2))(0x4EL, (-9L)), 0x4EL, (-9L), 0x4EL, (-9L));
                    VECTOR(int8_t, 2) l_604 = (VECTOR(int8_t, 2))(0x64L, 6L);
                    VECTOR(int8_t, 4) l_605 = (VECTOR(int8_t, 4))(0x47L, (VECTOR(int8_t, 2))(0x47L, 0x62L), 0x62L);
                    VECTOR(int8_t, 2) l_606 = (VECTOR(int8_t, 2))(0x22L, 0x7FL);
                    uint32_t l_607[7] = {4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL};
                    int8_t l_608[9] = {0x13L,0x13L,0x13L,0x13L,0x13L,0x13L,0x13L,0x13L,0x13L};
                    uint64_t l_609 = 0UL;
                    VECTOR(int8_t, 16) l_610 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L, (VECTOR(int8_t, 2))((-1L), 1L), (VECTOR(int8_t, 2))((-1L), 1L), (-1L), 1L, (-1L), 1L);
                    uint8_t l_611 = 0x99L;
                    VECTOR(int8_t, 2) l_612 = (VECTOR(int8_t, 2))(0x4EL, (-10L));
                    int16_t l_613 = 7L;
                    VECTOR(int8_t, 8) l_614 = (VECTOR(int8_t, 8))(0x05L, (VECTOR(int8_t, 4))(0x05L, (VECTOR(int8_t, 2))(0x05L, 0x3CL), 0x3CL), 0x3CL, 0x05L, 0x3CL);
                    VECTOR(int8_t, 2) l_615 = (VECTOR(int8_t, 2))(6L, 0x6AL);
                    VECTOR(int8_t, 8) l_616 = (VECTOR(int8_t, 8))(9L, (VECTOR(int8_t, 4))(9L, (VECTOR(int8_t, 2))(9L, (-1L)), (-1L)), (-1L), 9L, (-1L));
                    VECTOR(int8_t, 4) l_617 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x0EL), 0x0EL);
                    int32_t l_618 = 0x63941AFBL;
                    VECTOR(uint64_t, 8) l_619 = (VECTOR(uint64_t, 8))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL);
                    int16_t l_620 = (-1L);
                    int32_t l_621 = 0x60B3D63EL;
                    int32_t l_622 = 2L;
                    int32_t l_623 = 1L;
                    int i;
                    for (l_573 = 29; (l_573 < (-21)); l_573 = safe_sub_func_uint8_t_u_u(l_573, 5))
                    { /* block id: 269 */
                        uint16_t l_576 = 65535UL;
                        uint32_t l_577 = 0xEAE652FDL;
                        l_577 = l_576;
                    }
                    l_578 = l_578;
                    if (l_579)
                    { /* block id: 273 */
                        int8_t l_580 = 0x7AL;
                        uint32_t l_581 = 4294967295UL;
                        int32_t l_584 = 0x481B30ECL;
                        uint64_t l_585 = 0x0D885ADEA2FB8303L;
                        int64_t l_586 = 7L;
                        uint16_t l_587 = 0x0ED7L;
                        int32_t *l_588 = &l_584;
                        ++l_581;
                        l_588 = (l_584 , ((l_586 = (l_585 = 0x54D7BD10L)) , (l_587 , l_588)));
                    }
                    else
                    { /* block id: 278 */
                        uint16_t l_589 = 0x717FL;
                        int64_t l_592 = (-1L);
                        uint32_t l_593 = 4294967288UL;
                        l_589++;
                        l_593--;
                    }
                    if ((((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(clz(((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 8))(abs_diff(((VECTOR(int8_t, 8))(0x44L, ((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),VECTOR(int8_t, 4),((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 16))(rotate(((VECTOR(int8_t, 16))(l_596.sb378b08b27371334)), ((VECTOR(int8_t, 8))(0x5AL, l_597, 0x5EL, 1L, (l_599 = ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(l_598.s57)), (-1L), (-3L))).x), (-1L), (-6L), 1L)).s3624615042664327))).s683b, ((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),VECTOR(int8_t, 8),((VECTOR(int8_t, 2))(l_600.yx)).xxyxyyyx, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))((-2L), 0L, (l_601 , 0x06L), (-6L), 0x4DL, ((VECTOR(int8_t, 8))(l_602.yxyxxyxy)), 0x0CL, 0x34L, 0L)).sb00a)).yzwwxwxz, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(mad_sat(((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 16))(l_603.s225a973d764a7899)).s90, ((VECTOR(int8_t, 16))(2L, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(l_604.yy)).xyxxxxyx)), ((VECTOR(int8_t, 2))(l_605.wy)), ((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 2))(l_606.xx)).xxyxyyyyyxxxyyxx, ((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(3L, 0x1EL, 0x12L, (-4L))).yzxwwxyxzywyzywy)))))))).s5, l_607[2], (l_609 = l_608[5]), 0x16L, 0L)).s83))).xyyyyxyy, ((VECTOR(int8_t, 16))(0x35L, ((VECTOR(int8_t, 8))(l_610.s806efeaa)), 4L, 0x41L, l_611, (-1L), 0x3AL, 0x66L, 0x0DL)).odd, ((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 4))(rhadd(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 16))(l_612.xyyyyxxyyyxxyxyx)).s8ecd, (int8_t)l_613))).zwzyxyzxyzwwyywz)).s27ee, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 2))((-7L), 0x5EL)), ((VECTOR(int8_t, 8))(l_614.s71164500)).s37))), ((VECTOR(int8_t, 2))(l_615.xy)), ((VECTOR(int8_t, 8))(l_616.s41322750)).s1, ((VECTOR(int8_t, 2))(l_617.xx)), 0x3EL)).hi))))), ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(l_618, ((VECTOR(int8_t, 2))((-3L))), (-10L))).xyxywwwxyyxwxwww)).s829c, ((VECTOR(int8_t, 4))(0x7FL))))).xxzyyzzy))).s53)), l_619.s0, l_620, l_621, ((VECTOR(int8_t, 2))(1L)), 0x66L))))).odd))), ((VECTOR(int8_t, 4))(0L)), ((VECTOR(int8_t, 4))(1L))))).x, l_622, ((VECTOR(int8_t, 2))(0x4DL)), l_623, 0x66L, (-4L))), ((VECTOR(int8_t, 8))(1L))))), ((VECTOR(uint8_t, 8))(248UL))))).hi))).xxwzyzwywyxwzxww)).sc , 1L))
                    { /* block id: 284 */
                        l_578 = (void*)0;
                    }
                    else
                    { /* block id: 286 */
                        int8_t l_624 = (-7L);
                        struct S0 *l_625 = (void*)0;
                        struct S0 l_627 = {0xF4EEL,0x723BL,0x169891F4L,0x97B2L,0x590DAA54L};/* VOLATILE GLOBAL l_627 */
                        struct S0 *l_626 = &l_627;
                        l_543 ^= (((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(0x57F4B94D5F95463CL, 18446744073709551615UL)).xxyxyyyyxxyyyyxy)).sa , l_624);
                        l_626 = l_625;
                    }
                }
                for (l_570 = (-3); (l_570 >= 5); ++l_570)
                { /* block id: 293 */
                    uint8_t l_630 = 0x40L;
                    int64_t l_631 = 0x651077630EE18B7FL;
                    int32_t l_633 = 0x3E0D5A9BL;
                    int32_t *l_632[3];
                    VECTOR(uint32_t, 16) l_634 = (VECTOR(uint32_t, 16))(4UL, (VECTOR(uint32_t, 4))(4UL, (VECTOR(uint32_t, 2))(4UL, 0x305E5CD6L), 0x305E5CD6L), 0x305E5CD6L, 4UL, 0x305E5CD6L, (VECTOR(uint32_t, 2))(4UL, 0x305E5CD6L), (VECTOR(uint32_t, 2))(4UL, 0x305E5CD6L), 4UL, 0x305E5CD6L, 4UL, 0x305E5CD6L);
                    VECTOR(uint32_t, 16) l_635 = (VECTOR(uint32_t, 16))(0x87A79CF0L, (VECTOR(uint32_t, 4))(0x87A79CF0L, (VECTOR(uint32_t, 2))(0x87A79CF0L, 0xA32D2A1FL), 0xA32D2A1FL), 0xA32D2A1FL, 0x87A79CF0L, 0xA32D2A1FL, (VECTOR(uint32_t, 2))(0x87A79CF0L, 0xA32D2A1FL), (VECTOR(uint32_t, 2))(0x87A79CF0L, 0xA32D2A1FL), 0x87A79CF0L, 0xA32D2A1FL, 0x87A79CF0L, 0xA32D2A1FL);
                    VECTOR(uint32_t, 2) l_636 = (VECTOR(uint32_t, 2))(4294967295UL, 7UL);
                    int32_t l_637 = 2L;
                    uint16_t l_666 = 0x6A61L;
                    int i;
                    for (i = 0; i < 3; i++)
                        l_632[i] = &l_633;
                    l_632[1] = ((l_631 = (l_630 = ((VECTOR(int16_t, 2))(0x37BDL, 0x0EF4L)).hi)) , (void*)0);
                    if ((l_538.y = ((l_637 = (FAKE_DIVERGE(p_962->global_2_offset, get_global_id(2), 10) , ((VECTOR(uint32_t, 8))(max(((VECTOR(uint32_t, 16))(l_634.scc3a969b3f0eb62c)).even, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(l_635.sf328272b)), ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(l_636.yxxxxxyxyxxyxxyy)).hi)))).hi))).s7)) , 7L)))
                    { /* block id: 299 */
                        int16_t l_638[3][4] = {{0x48BDL,0x4F79L,0x48BDL,0x48BDL},{0x48BDL,0x4F79L,0x48BDL,0x48BDL},{0x48BDL,0x4F79L,0x48BDL,0x48BDL}};
                        VECTOR(int32_t, 4) l_639 = (VECTOR(int32_t, 4))(0x51330C15L, (VECTOR(int32_t, 2))(0x51330C15L, (-4L)), (-4L));
                        uint32_t l_640 = 0UL;
                        int64_t l_641 = 0x1A9B2194DE8FC2E5L;
                        VECTOR(uint64_t, 4) l_642 = (VECTOR(uint64_t, 4))(0x968D8BE6A35D1B3DL, (VECTOR(uint64_t, 2))(0x968D8BE6A35D1B3DL, 0xD308927CA0535B4EL), 0xD308927CA0535B4EL);
                        VECTOR(uint64_t, 16) l_645 = (VECTOR(uint64_t, 16))(0x7C34EF45A349DCE7L, (VECTOR(uint64_t, 4))(0x7C34EF45A349DCE7L, (VECTOR(uint64_t, 2))(0x7C34EF45A349DCE7L, 0x2B3687D07D92C8A7L), 0x2B3687D07D92C8A7L), 0x2B3687D07D92C8A7L, 0x7C34EF45A349DCE7L, 0x2B3687D07D92C8A7L, (VECTOR(uint64_t, 2))(0x7C34EF45A349DCE7L, 0x2B3687D07D92C8A7L), (VECTOR(uint64_t, 2))(0x7C34EF45A349DCE7L, 0x2B3687D07D92C8A7L), 0x7C34EF45A349DCE7L, 0x2B3687D07D92C8A7L, 0x7C34EF45A349DCE7L, 0x2B3687D07D92C8A7L);
                        int i, j;
                        l_638[0][1] &= 0x1BCDCAC2L;
                        l_641 |= (l_640 = ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(l_639.zwyxyzyw)))).s1);
                        --l_642.y;
                        l_645.s9 = 0x103391BAL;
                    }
                    else
                    { /* block id: 305 */
                        uint8_t l_646 = 7UL;
                        int32_t l_647 = 0L;
                        int16_t l_648 = 0x07A4L;
                        int64_t l_649[5];
                        int16_t l_650 = 0x33CBL;
                        int32_t l_651 = 1L;
                        int64_t l_652 = (-6L);
                        int16_t l_653 = 0x4D50L;
                        int64_t l_654 = (-8L);
                        int16_t l_655 = (-1L);
                        VECTOR(uint32_t, 8) l_656 = (VECTOR(uint32_t, 8))(0xDF575F09L, (VECTOR(uint32_t, 4))(0xDF575F09L, (VECTOR(uint32_t, 2))(0xDF575F09L, 0xA3CCFE0DL), 0xA3CCFE0DL), 0xA3CCFE0DL, 0xDF575F09L, 0xA3CCFE0DL);
                        int32_t l_659[7];
                        VECTOR(int32_t, 8) l_660 = (VECTOR(int32_t, 8))(9L, (VECTOR(int32_t, 4))(9L, (VECTOR(int32_t, 2))(9L, 0x03F82702L), 0x03F82702L), 0x03F82702L, 9L, 0x03F82702L);
                        int16_t l_661 = 1L;
                        int i;
                        for (i = 0; i < 5; i++)
                            l_649[i] = (-6L);
                        for (i = 0; i < 7; i++)
                            l_659[i] = 0L;
                        l_647 = l_646;
                        l_656.s5++;
                        l_659[0] ^= 0x74D0F33FL;
                        l_661 &= ((VECTOR(int32_t, 8))(l_660.s32023117)).s0;
                    }
                    for (l_630 = (-8); (l_630 > 51); l_630 = safe_add_func_int8_t_s_s(l_630, 2))
                    { /* block id: 313 */
                        struct S0 l_664 = {65527UL,4L,0x24E568E0L,65528UL,-7L};/* VOLATILE GLOBAL l_664 */
                        struct S0 l_665 = {0x2F7BL,8L,0x05214CC6L,0xFF17L,9L};/* VOLATILE GLOBAL l_665 */
                        l_665 = l_664;
                    }
                    if (l_666)
                    { /* block id: 316 */
                        int64_t l_667 = 0x315E145820B6EEC4L;
                        uint32_t l_668 = 0x3C78B433L;
                        int16_t l_669 = 1L;
                        int8_t l_670 = 0x6CL;
                        uint32_t l_671[1][4];
                        int i, j;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 4; j++)
                                l_671[i][j] = 0x409916D6L;
                        }
                        l_669 = (l_668 ^= l_667);
                        l_671[0][0]++;
                    }
                    else
                    { /* block id: 320 */
                        uint16_t l_674 = 3UL;
                        int32_t l_677 = 0x4249845CL;
                        ++l_674;
                        l_677 = l_677;
                    }
                }
                l_679 |= ((VECTOR(int32_t, 4))(l_678.s7264)).y;
                l_680 = (void*)0;
            }
            for (l_538.x = (-12); (l_538.x != 29); l_538.x = safe_add_func_uint32_t_u_u(l_538.x, 1))
            { /* block id: 330 */
                int32_t l_684 = (-1L);
                int32_t *l_683 = &l_684;
                int32_t *l_685 = &l_684;
                int64_t l_728 = 0x47C7557587719762L;
                l_685 = l_683;
                for (l_684 = 0; (l_684 != 19); ++l_684)
                { /* block id: 334 */
                    int32_t l_688 = 0x1BBD187CL;
                    int32_t *l_725 = (void*)0;
                    int32_t *l_726 = &l_688;
                    int32_t *l_727 = &l_688;
                    for (l_688 = 0; (l_688 < (-20)); l_688 = safe_sub_func_int32_t_s_s(l_688, 1))
                    { /* block id: 337 */
                        int32_t l_691 = 0x6A4C194CL;
                        uint64_t l_692 = 18446744073709551613UL;
                        uint32_t l_693 = 8UL;
                        struct S0 *l_694 = (void*)0;
                        struct S0 l_696 = {0UL,0x5966L,-2L,0xE7C1L,0x4A947DECL};/* VOLATILE GLOBAL l_696 */
                        struct S0 *l_695 = &l_696;
                        struct S0 *l_697 = &l_696;
                        int32_t l_699 = 0x18E6C7E3L;
                        int32_t *l_698[8];
                        int32_t *l_700 = (void*)0;
                        int i;
                        for (i = 0; i < 8; i++)
                            l_698[i] = &l_699;
                        l_685 = (((l_541 = (l_691 , (l_692 , 0xB1995294L))) , l_693) , (void*)0);
                        l_697 = (l_695 = l_694);
                        l_700 = l_698[3];
                    }
                    for (l_688 = (-20); (l_688 == 17); l_688 = safe_add_func_int8_t_s_s(l_688, 2))
                    { /* block id: 346 */
                        VECTOR(uint16_t, 8) l_703 = (VECTOR(uint16_t, 8))(0xE909L, (VECTOR(uint16_t, 4))(0xE909L, (VECTOR(uint16_t, 2))(0xE909L, 0x7F83L), 0x7F83L), 0x7F83L, 0xE909L, 0x7F83L);
                        VECTOR(uint16_t, 4) l_704 = (VECTOR(uint16_t, 4))(5UL, (VECTOR(uint16_t, 2))(5UL, 65528UL), 65528UL);
                        VECTOR(uint16_t, 16) l_705 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x3B97L), 0x3B97L), 0x3B97L, 1UL, 0x3B97L, (VECTOR(uint16_t, 2))(1UL, 0x3B97L), (VECTOR(uint16_t, 2))(1UL, 0x3B97L), 1UL, 0x3B97L, 1UL, 0x3B97L);
                        VECTOR(uint16_t, 16) l_706 = (VECTOR(uint16_t, 16))(0x7150L, (VECTOR(uint16_t, 4))(0x7150L, (VECTOR(uint16_t, 2))(0x7150L, 7UL), 7UL), 7UL, 0x7150L, 7UL, (VECTOR(uint16_t, 2))(0x7150L, 7UL), (VECTOR(uint16_t, 2))(0x7150L, 7UL), 0x7150L, 7UL, 0x7150L, 7UL);
                        VECTOR(uint16_t, 8) l_707 = (VECTOR(uint16_t, 8))(7UL, (VECTOR(uint16_t, 4))(7UL, (VECTOR(uint16_t, 2))(7UL, 65532UL), 65532UL), 65532UL, 7UL, 65532UL);
                        VECTOR(uint16_t, 16) l_708 = (VECTOR(uint16_t, 16))(0x5742L, (VECTOR(uint16_t, 4))(0x5742L, (VECTOR(uint16_t, 2))(0x5742L, 65527UL), 65527UL), 65527UL, 0x5742L, 65527UL, (VECTOR(uint16_t, 2))(0x5742L, 65527UL), (VECTOR(uint16_t, 2))(0x5742L, 65527UL), 0x5742L, 65527UL, 0x5742L, 65527UL);
                        VECTOR(uint16_t, 2) l_709 = (VECTOR(uint16_t, 2))(0x5834L, 8UL);
                        VECTOR(uint16_t, 8) l_710 = (VECTOR(uint16_t, 8))(0xA447L, (VECTOR(uint16_t, 4))(0xA447L, (VECTOR(uint16_t, 2))(0xA447L, 0x740BL), 0x740BL), 0x740BL, 0xA447L, 0x740BL);
                        VECTOR(uint16_t, 16) l_711 = (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x39CDL), 0x39CDL), 0x39CDL, 65535UL, 0x39CDL, (VECTOR(uint16_t, 2))(65535UL, 0x39CDL), (VECTOR(uint16_t, 2))(65535UL, 0x39CDL), 65535UL, 0x39CDL, 65535UL, 0x39CDL);
                        VECTOR(uint16_t, 4) l_712 = (VECTOR(uint16_t, 4))(0xBC5EL, (VECTOR(uint16_t, 2))(0xBC5EL, 0x5F9CL), 0x5F9CL);
                        VECTOR(uint16_t, 4) l_715 = (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 3UL), 3UL);
                        VECTOR(uint16_t, 16) l_716 = (VECTOR(uint16_t, 16))(65534UL, (VECTOR(uint16_t, 4))(65534UL, (VECTOR(uint16_t, 2))(65534UL, 0xC2D1L), 0xC2D1L), 0xC2D1L, 65534UL, 0xC2D1L, (VECTOR(uint16_t, 2))(65534UL, 0xC2D1L), (VECTOR(uint16_t, 2))(65534UL, 0xC2D1L), 65534UL, 0xC2D1L, 65534UL, 0xC2D1L);
                        VECTOR(uint16_t, 8) l_717 = (VECTOR(uint16_t, 8))(0x1223L, (VECTOR(uint16_t, 4))(0x1223L, (VECTOR(uint16_t, 2))(0x1223L, 0x8AE1L), 0x8AE1L), 0x8AE1L, 0x1223L, 0x8AE1L);
                        VECTOR(uint16_t, 2) l_718 = (VECTOR(uint16_t, 2))(0x3557L, 7UL);
                        VECTOR(uint16_t, 4) l_719 = (VECTOR(uint16_t, 4))(0xD95BL, (VECTOR(uint16_t, 2))(0xD95BL, 0x165FL), 0x165FL);
                        VECTOR(uint16_t, 4) l_720 = (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x54EDL), 0x54EDL);
                        VECTOR(uint16_t, 4) l_721 = (VECTOR(uint16_t, 4))(0x2DD5L, (VECTOR(uint16_t, 2))(0x2DD5L, 0xB9D6L), 0xB9D6L);
                        VECTOR(uint16_t, 4) l_722 = (VECTOR(uint16_t, 4))(0x225EL, (VECTOR(uint16_t, 2))(0x225EL, 0UL), 0UL);
                        uint16_t l_723[9] = {1UL,0x014FL,1UL,1UL,0x014FL,1UL,1UL,0x014FL,1UL};
                        int8_t **l_724 = (void*)0;
                        int i;
                        l_724 = (((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(upsample(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(rotate(((VECTOR(uint16_t, 8))(l_703.s67302100)).s15, ((VECTOR(uint16_t, 8))(min(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(mad_sat(((VECTOR(uint16_t, 2))(l_704.yx)).xyyy, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(l_705.s95c0f1fb)), ((VECTOR(uint16_t, 2))(l_706.s1b)), 0UL, ((VECTOR(uint16_t, 4))(hadd(((VECTOR(uint16_t, 16))(l_707.s4250001417164402)).s796e, ((VECTOR(uint16_t, 2))(l_708.sbb)).xxyx))), 0UL)).lo)).odd, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(0x49A3L, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(add_sat(((VECTOR(uint16_t, 16))(l_709.yxxyxxxxxyxxyyyx)), ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(mad_sat(((VECTOR(uint16_t, 4))(rhadd(((VECTOR(uint16_t, 8))(l_710.s07213141)).odd, ((VECTOR(uint16_t, 2))(l_711.s7d)).yyxy))), ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(rotate(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(l_712.zw)), 1UL, (++l_544), ((VECTOR(uint16_t, 2))(0xB59DL, 65535UL)), 0x291BL, 0xEB8AL)).s16)).xyxyyyxx, ((VECTOR(uint16_t, 2))(l_715.wx)).yxyyxxyx))).s4376277717034055)).sf0a0, ((VECTOR(uint16_t, 4))(l_716.s13c5))))).odd)).yyxyyyxxxyxyxyyx))).sba)), FAKE_DIVERGE(p_962->group_1_offset, get_group_id(1), 10), 0x436FL, ((VECTOR(uint16_t, 2))(l_717.s24)), 65535UL)).s1152472103530043)).s2015))).even)).xyyyyxyx, ((VECTOR(uint16_t, 8))(l_718.yyyxyxyy))))).s06))), 0xC30BL, ((VECTOR(uint16_t, 4))(l_719.yzyz)), 0x3C77L, 0x32FDL, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(l_720.wyyw)))), ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(l_721.wyxxyywz)).s33)), 65535UL)).s6b)).xyxxxxxx, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(65535UL, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_722.zy)), 65535UL, 0UL)), l_723[3], 65529UL, 0xE6CDL)).s7045310520533274)).hi))).s6376022501766521)))).sd , (void*)0);
                    }
                    l_727 = (l_685 = (l_726 = (l_683 = l_725)));
                }
                l_543 |= (l_539.z = l_728);
            }
            unsigned int result = 0;
            result += l_538.w;
            result += l_538.z;
            result += l_538.y;
            result += l_538.x;
            result += l_539.w;
            result += l_539.z;
            result += l_539.y;
            result += l_539.x;
            result += l_540;
            result += l_541;
            result += l_542;
            result += l_543;
            result += l_544;
            atomic_add(&p_962->l_special_values[33], result);
        }
        else
        { /* block id: 358 */
            (1 + 1);
        }
        if (p_17)
            break;
        for (p_962->g_173 = (-29); (p_962->g_173 > 25); p_962->g_173 = safe_add_func_int16_t_s_s(p_962->g_173, 5))
        { /* block id: 364 */
            int32_t l_756 = (-1L);
            VECTOR(int32_t, 8) l_768 = (VECTOR(int32_t, 8))(0x41CBE655L, (VECTOR(int32_t, 4))(0x41CBE655L, (VECTOR(int32_t, 2))(0x41CBE655L, 0x7DDC231CL), 0x7DDC231CL), 0x7DDC231CL, 0x41CBE655L, 0x7DDC231CL);
            VECTOR(uint8_t, 16) l_785 = (VECTOR(uint8_t, 16))(0x3FL, (VECTOR(uint8_t, 4))(0x3FL, (VECTOR(uint8_t, 2))(0x3FL, 3UL), 3UL), 3UL, 0x3FL, 3UL, (VECTOR(uint8_t, 2))(0x3FL, 3UL), (VECTOR(uint8_t, 2))(0x3FL, 3UL), 0x3FL, 3UL, 0x3FL, 3UL);
            uint16_t l_787 = 8UL;
            int i;
            for (p_962->g_64.f0 = (-24); (p_962->g_64.f0 <= 10); p_962->g_64.f0++)
            { /* block id: 367 */
                int16_t *l_748[4];
                uint8_t *l_750 = (void*)0;
                int32_t l_751[1];
                int32_t *l_774 = &p_962->g_13;
                int i;
                for (i = 0; i < 4; i++)
                    l_748[i] = (void*)0;
                for (i = 0; i < 1; i++)
                    l_751[i] = 0x10530488L;
                if ((l_733 <= ((((safe_mod_func_int8_t_s_s((safe_rshift_func_int8_t_s_u(((safe_sub_func_int32_t_s_s((((safe_mul_func_int8_t_s_s(((p_962->g_302.y > (safe_add_func_uint8_t_u_u((GROUP_DIVERGE(1, 1) <= (-1L)), ((VECTOR(uint8_t, 8))(hadd(((VECTOR(uint8_t, 8))(0x2AL, p_962->g_381[1].f0, FAKE_DIVERGE(p_962->local_1_offset, get_local_id(1), 10), ((VECTOR(uint8_t, 2))(l_744.xy)), ((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))((p_962->g_142.y , (0x9C71254BL | ((!(safe_sub_func_uint8_t_u_u(0x4EL, (l_751[0] ^= (0xD3A09142L > (safe_unary_minus_func_int16_t_s((p_962->g_749 = ((*l_530) = 0x72A5L))))))))) | p_962->g_281.s1))), ((VECTOR(uint8_t, 2))(1UL)), 0x4BL)).zwwxzwwwwxywxwww)).s3, ((VECTOR(uint8_t, 2))(0x08L)), ((VECTOR(uint8_t, 8))(0xB3L)), ((VECTOR(uint8_t, 2))(0xD2L)), 0x4CL, 255UL, 0xACL)).s91))), 1UL)), ((VECTOR(uint8_t, 8))(253UL))))).s1))) , l_752.x), p_17)) != p_17) ^ p_17), l_752.x)) | 65529UL), p_962->g_360.s4)), GROUP_DIVERGE(2, 1))) & 0x22F5BEC6L) != 0x6F18A2144DFF78CDL) < p_17)))
                { /* block id: 371 */
                    struct S0 *l_754 = (void*)0;
                    (*p_962->g_755) = (**p_962->g_201);
                    if (l_756)
                        continue;
                }
                else
                { /* block id: 374 */
                    if (p_17)
                        break;
                    for (p_962->g_64.f3 = 0; (p_962->g_64.f3 == 8); p_962->g_64.f3++)
                    { /* block id: 378 */
                        if (p_17)
                            break;
                    }
                    if ((atomic_inc(&p_962->l_atomic_input[14]) == 3))
                    { /* block id: 382 */
                        int16_t l_759 = 3L;
                        int8_t l_760 = 1L;
                        int8_t l_761 = 0x6BL;
                        uint32_t l_762 = 4294967288UL;
                        l_762++;
                        unsigned int result = 0;
                        result += l_759;
                        result += l_760;
                        result += l_761;
                        result += l_762;
                        atomic_add(&p_962->l_special_values[14], result);
                    }
                    else
                    { /* block id: 384 */
                        (1 + 1);
                    }
                }
                for (p_962->g_171 = 0; (p_962->g_171 != 27); p_962->g_171 = safe_add_func_int16_t_s_s(p_962->g_171, 6))
                { /* block id: 390 */
                    int32_t *l_767[2][5];
                    int i, j;
                    for (i = 0; i < 2; i++)
                    {
                        for (j = 0; j < 5; j++)
                            l_767[i][j] = (void*)0;
                    }
                    l_768.s3 = 0L;
                    for (p_962->g_749 = 22; (p_962->g_749 != (-15)); p_962->g_749 = safe_sub_func_int32_t_s_s(p_962->g_749, 2))
                    { /* block id: 394 */
                        int32_t ***l_771 = &l_534;
                        int32_t l_777[7][4][3] = {{{0L,0L,5L},{0L,0L,5L},{0L,0L,5L},{0L,0L,5L}},{{0L,0L,5L},{0L,0L,5L},{0L,0L,5L},{0L,0L,5L}},{{0L,0L,5L},{0L,0L,5L},{0L,0L,5L},{0L,0L,5L}},{{0L,0L,5L},{0L,0L,5L},{0L,0L,5L},{0L,0L,5L}},{{0L,0L,5L},{0L,0L,5L},{0L,0L,5L},{0L,0L,5L}},{{0L,0L,5L},{0L,0L,5L},{0L,0L,5L},{0L,0L,5L}},{{0L,0L,5L},{0L,0L,5L},{0L,0L,5L},{0L,0L,5L}}};
                        int i, j, k;
                        (*l_535) = func_33((((((*l_771) = (void*)0) == l_772) & p_962->g_157.f0) , (0x04CE2844D8FB0B65L | (safe_unary_minus_func_uint64_t_u((((void*)0 == l_774) > (safe_add_func_int32_t_s_s(p_17, (((p_962->g_142.y != l_777[6][1][2]) && (*l_774)) != 0x7CL)))))))), l_774, l_774, &p_962->g_13, p_962);
                        if (p_17)
                            continue;
                        --l_778;
                        if ((*l_774))
                            break;
                    }
                    if (p_17)
                        break;
                }
            }
            for (p_962->g_749 = 0; (p_962->g_749 < (-25)); p_962->g_749 = safe_sub_func_uint32_t_u_u(p_962->g_749, 4))
            { /* block id: 406 */
                int32_t *l_786 = (void*)0;
                (*p_962->g_207) = ((*l_535) = (*p_962->g_225));
                l_787 = (safe_add_func_uint64_t_u_u(l_768.s4, ((p_17 || ((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 16))(l_785.saa10a5f74e233596)).s40))).odd) , 18446744073709551608UL)));
            }
            if ((atomic_inc(&p_962->l_atomic_input[22]) == 7))
            { /* block id: 412 */
                int32_t l_788 = 0x081A8CC8L;
                l_788 = 0L;
                for (l_788 = 26; (l_788 != (-4)); l_788--)
                { /* block id: 416 */
                    int32_t l_792[6][10][4] = {{{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L}},{{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L}},{{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L}},{{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L}},{{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L}},{{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L},{0x7363A8E1L,(-1L),0x7FAAC0EEL,1L}}};
                    int32_t *l_791 = &l_792[1][2][1];
                    int32_t *l_793 = &l_792[2][6][2];
                    int8_t l_797 = 0x7FL;
                    int64_t l_798 = 1L;
                    uint32_t l_799 = 0xC0F65BA2L;
                    int i, j, k;
                    l_793 = l_791;
                    for (l_792[4][6][3] = (-8); (l_792[4][6][3] > (-11)); l_792[4][6][3]--)
                    { /* block id: 420 */
                        uint8_t l_796 = 0x9FL;
                        l_796 ^= 0x6E4F2674L;
                    }
                    l_798 ^= (l_797 = (-8L));
                    l_799--;
                }
                for (l_788 = (-13); (l_788 == 18); l_788 = safe_add_func_int8_t_s_s(l_788, 6))
                { /* block id: 429 */
                    int32_t l_804[6] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
                    struct S0 l_823 = {0UL,0x600CL,1L,65535UL,0x00CFC71DL};/* VOLATILE GLOBAL l_823 */
                    struct S0 l_824 = {0xF888L,0x3F19L,1L,0x2E87L,0x3EC3A648L};/* VOLATILE GLOBAL l_824 */
                    int32_t l_842[6][2][7] = {{{(-2L),0L,0x63C63F1BL,0x06EE840CL,(-5L),(-2L),0x06EE840CL},{(-2L),0L,0x63C63F1BL,0x06EE840CL,(-5L),(-2L),0x06EE840CL}},{{(-2L),0L,0x63C63F1BL,0x06EE840CL,(-5L),(-2L),0x06EE840CL},{(-2L),0L,0x63C63F1BL,0x06EE840CL,(-5L),(-2L),0x06EE840CL}},{{(-2L),0L,0x63C63F1BL,0x06EE840CL,(-5L),(-2L),0x06EE840CL},{(-2L),0L,0x63C63F1BL,0x06EE840CL,(-5L),(-2L),0x06EE840CL}},{{(-2L),0L,0x63C63F1BL,0x06EE840CL,(-5L),(-2L),0x06EE840CL},{(-2L),0L,0x63C63F1BL,0x06EE840CL,(-5L),(-2L),0x06EE840CL}},{{(-2L),0L,0x63C63F1BL,0x06EE840CL,(-5L),(-2L),0x06EE840CL},{(-2L),0L,0x63C63F1BL,0x06EE840CL,(-5L),(-2L),0x06EE840CL}},{{(-2L),0L,0x63C63F1BL,0x06EE840CL,(-5L),(-2L),0x06EE840CL},{(-2L),0L,0x63C63F1BL,0x06EE840CL,(-5L),(-2L),0x06EE840CL}}};
                    uint32_t l_843 = 0x8E0F08C0L;
                    int i, j, k;
                    for (l_804[1] = 5; (l_804[1] > 9); l_804[1]++)
                    { /* block id: 432 */
                        uint16_t l_809[5] = {65535UL,65535UL,65535UL,65535UL,65535UL};
                        uint16_t *l_808 = &l_809[0];
                        uint16_t **l_807 = &l_808;
                        uint16_t **l_810 = &l_808;
                        int64_t l_811 = (-1L);
                        int32_t l_812 = 1L;
                        int64_t l_813 = (-8L);
                        int16_t l_814 = 0x3DF8L;
                        uint16_t l_815 = 65531UL;
                        int64_t l_818[1];
                        int32_t l_819 = 0x35AA6D81L;
                        int64_t *l_821[6][10][3] = {{{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813}},{{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813}},{{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813}},{{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813}},{{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813}},{{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813},{(void*)0,&l_811,&l_813}}};
                        int64_t **l_820 = &l_821[3][1][1];
                        int64_t **l_822 = &l_821[3][1][1];
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                            l_818[i] = 1L;
                        l_810 = l_807;
                        l_815--;
                        l_819 = l_818[0];
                        l_822 = l_820;
                    }
                    l_824 = l_823;
                    for (l_824.f3 = 0; (l_824.f3 <= 5); l_824.f3++)
                    { /* block id: 441 */
                        VECTOR(int8_t, 8) l_827 = (VECTOR(int8_t, 8))(5L, (VECTOR(int8_t, 4))(5L, (VECTOR(int8_t, 2))(5L, 0x43L), 0x43L), 0x43L, 5L, 0x43L);
                        int32_t l_828 = 0L;
                        uint8_t l_829 = 253UL;
                        int16_t l_830 = 0x6504L;
                        int8_t l_831 = 0x6BL;
                        int32_t l_832 = 0L;
                        VECTOR(int8_t, 16) l_833 = (VECTOR(int8_t, 16))(0x52L, (VECTOR(int8_t, 4))(0x52L, (VECTOR(int8_t, 2))(0x52L, 0x7BL), 0x7BL), 0x7BL, 0x52L, 0x7BL, (VECTOR(int8_t, 2))(0x52L, 0x7BL), (VECTOR(int8_t, 2))(0x52L, 0x7BL), 0x52L, 0x7BL, 0x52L, 0x7BL);
                        struct S0 l_834 = {0x2B56L,0x485FL,0x33D7C67DL,65535UL,0L};/* VOLATILE GLOBAL l_834 */
                        uint16_t l_835 = 65535UL;
                        struct S0 l_836[7] = {{0UL,1L,-3L,1UL,-1L},{0UL,1L,-3L,1UL,-1L},{0UL,1L,-3L,1UL,-1L},{0UL,1L,-3L,1UL,-1L},{0UL,1L,-3L,1UL,-1L},{0UL,1L,-3L,1UL,-1L},{0UL,1L,-3L,1UL,-1L}};
                        VECTOR(int8_t, 8) l_837 = (VECTOR(int8_t, 8))((-9L), (VECTOR(int8_t, 4))((-9L), (VECTOR(int8_t, 2))((-9L), 0x5EL), 0x5EL), 0x5EL, (-9L), 0x5EL);
                        int16_t l_838 = 1L;
                        int16_t l_839 = 0x62C3L;
                        uint32_t l_840 = 4294967287UL;
                        int32_t l_841 = 0x1B9B3856L;
                        int i;
                        l_824.f4 = (l_841 = (((VECTOR(uint8_t, 16))(abs_diff(((VECTOR(int8_t, 16))(l_827.s5556236502056704)), ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(0x4FL, (l_830 = (l_829 = l_828)), 0x19L, 0x46L)).ywwzwzzw)), ((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),VECTOR(int8_t, 2),((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 16))(0x04L, (l_832 &= l_831), ((VECTOR(int8_t, 4))(l_833.s6d3a)), 1L, ((l_834 , (l_835 , l_836[2])) , (l_838 = ((VECTOR(int8_t, 2))(l_837.s67)).odd)), 0x0CL, l_839, (-1L), l_840, 0x3DL, l_841, 0L, 1L))))).sb1, ((VECTOR(int8_t, 2))(0x57L)), ((VECTOR(int8_t, 2))(0x7EL))))).yyyxxxxy))).s5137265740256242))))).s0 , 0x4ADF3829L));
                    }
                    l_843 ^= l_842[5][0][5];
                }
                for (l_788 = 0; (l_788 != (-21)); l_788--)
                { /* block id: 453 */
                    VECTOR(int32_t, 2) l_846 = (VECTOR(int32_t, 2))((-1L), (-1L));
                    struct S0 l_847[7][3] = {{{0xB058L,-10L,0x41B20DBAL,0xC280L,0L},{0xB058L,-10L,0x41B20DBAL,0xC280L,0L},{0xB058L,-10L,0x41B20DBAL,0xC280L,0L}},{{0xB058L,-10L,0x41B20DBAL,0xC280L,0L},{0xB058L,-10L,0x41B20DBAL,0xC280L,0L},{0xB058L,-10L,0x41B20DBAL,0xC280L,0L}},{{0xB058L,-10L,0x41B20DBAL,0xC280L,0L},{0xB058L,-10L,0x41B20DBAL,0xC280L,0L},{0xB058L,-10L,0x41B20DBAL,0xC280L,0L}},{{0xB058L,-10L,0x41B20DBAL,0xC280L,0L},{0xB058L,-10L,0x41B20DBAL,0xC280L,0L},{0xB058L,-10L,0x41B20DBAL,0xC280L,0L}},{{0xB058L,-10L,0x41B20DBAL,0xC280L,0L},{0xB058L,-10L,0x41B20DBAL,0xC280L,0L},{0xB058L,-10L,0x41B20DBAL,0xC280L,0L}},{{0xB058L,-10L,0x41B20DBAL,0xC280L,0L},{0xB058L,-10L,0x41B20DBAL,0xC280L,0L},{0xB058L,-10L,0x41B20DBAL,0xC280L,0L}},{{0xB058L,-10L,0x41B20DBAL,0xC280L,0L},{0xB058L,-10L,0x41B20DBAL,0xC280L,0L},{0xB058L,-10L,0x41B20DBAL,0xC280L,0L}}};
                    int i, j;
                    l_847[0][2] = (l_846.y , l_847[2][0]);
                    for (l_847[2][0].f2 = 0; (l_847[2][0].f2 < (-8)); l_847[2][0].f2 = safe_sub_func_uint64_t_u_u(l_847[2][0].f2, 4))
                    { /* block id: 457 */
                        int32_t l_850 = 0x06C8D92BL;
                        uint16_t l_851 = 65535UL;
                        ++l_851;
                    }
                }
                unsigned int result = 0;
                result += l_788;
                atomic_add(&p_962->l_special_values[22], result);
            }
            else
            { /* block id: 461 */
                (1 + 1);
            }
        }
        if (((VECTOR(int32_t, 16))((((((((((safe_add_func_int32_t_s_s(p_17, (((VECTOR(int32_t, 2))(l_856.s76)).lo || (-1L)))) == (l_858 = l_733)) , p_962->g_173) != (safe_mul_func_uint8_t_u_u((((!p_962->g_52[3]) == (p_962->g_863 , ((p_962->g_53 = (safe_sub_func_int32_t_s_s(l_856.s2, (((l_866 = (p_17 > (p_962->g_407.y || p_17))) | p_17) || FAKE_DIVERGE(p_962->group_1_offset, get_group_id(1), 10))))) != p_962->g_283.y))) > p_17), 0x32L))) >= p_962->g_comm_values[p_962->tid]) == p_962->g_407.x) != 0x81548DE5L) ^ 0x04B6L) >= p_962->g_142.x), 0x592B8334L, 0L, ((VECTOR(int32_t, 4))(0L)), (-1L), 0x244FE7CCL, 0x5F68C43CL, 0x422C09DDL, ((VECTOR(int32_t, 4))((-1L))), 0x1CE7DCF3L)).sf)
        { /* block id: 468 */
            uint64_t l_869[4];
            int32_t *l_871[7] = {&p_962->g_55[4],&p_962->g_55[4],&p_962->g_55[4],&p_962->g_55[4],&p_962->g_55[4],&p_962->g_55[4],&p_962->g_55[4]};
            uint8_t *l_872[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t l_875 = 4L;
            int i;
            for (i = 0; i < 4; i++)
                l_869[i] = 18446744073709551615UL;
            l_875 = (safe_rshift_func_uint16_t_u_s(((l_869[3] , ((p_962->g_870[0][3] , (*p_962->g_69)) == l_871[5])) && (++p_962->g_166.s6)), 0));
        }
        else
        { /* block id: 471 */
            uint8_t l_882[6];
            VECTOR(int16_t, 16) l_886 = (VECTOR(int16_t, 16))(3L, (VECTOR(int16_t, 4))(3L, (VECTOR(int16_t, 2))(3L, 1L), 1L), 1L, 3L, 1L, (VECTOR(int16_t, 2))(3L, 1L), (VECTOR(int16_t, 2))(3L, 1L), 3L, 1L, 3L, 1L);
            uint64_t l_902 = 0x006C2FBE822E3465L;
            int i;
            for (i = 0; i < 6; i++)
                l_882[i] = 255UL;
            (*p_962->g_63) = p_962->g_876[4];
            for (p_962->g_53 = (-23); (p_962->g_53 > 18); ++p_962->g_53)
            { /* block id: 475 */
                uint64_t l_885 = 2UL;
                int32_t l_887[7][9];
                uint16_t *l_897 = &p_962->g_876[4].f0;
                int i, j;
                for (i = 0; i < 7; i++)
                {
                    for (j = 0; j < 9; j++)
                        l_887[i][j] = 1L;
                }
                l_856.s1 ^= ((safe_add_func_int32_t_s_s(((!((VECTOR(int16_t, 16))(safe_clamp_func(VECTOR(int16_t, 16),int16_t,((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(1L, 0L, 0x5AC5L, (-1L))).odd)).yyxxyxxxyxyyxyxx, (int16_t)(p_962->g_145[1] |= (((VECTOR(int16_t, 8))(p_962->g_881.wwwwyyyx)).s6 != l_882[5])), (int16_t)(p_962->g_876[4].f3 > p_962->g_142.x)))).s3) >= (safe_sub_func_uint16_t_u_u(l_885, ((((~(l_887[3][6] = ((VECTOR(int16_t, 8))(l_886.s6b22c2d4)).s3)) & (((void*)0 == &l_733) , (safe_sub_func_uint16_t_u_u((((VECTOR(uint64_t, 2))(p_962->g_890.yx)).hi < ((void*)0 != p_962->g_347)), ((*l_897) = ((((safe_rshift_func_uint16_t_u_u((safe_add_func_int8_t_s_s((safe_mul_func_uint16_t_u_u((((VECTOR(uint8_t, 4))(mad_sat(((VECTOR(uint8_t, 8))(mad_sat(((VECTOR(uint8_t, 16))(p_17, ((VECTOR(uint8_t, 2))(1UL)), ((VECTOR(uint8_t, 8))(0UL)), 1UL, p_962->g_188.se, ((VECTOR(uint8_t, 2))(254UL)), 0UL)).odd, ((VECTOR(uint8_t, 8))(6UL)), ((VECTOR(uint8_t, 8))(0x1BL))))).lo, ((VECTOR(uint8_t, 4))(0x70L)), ((VECTOR(uint8_t, 4))(4UL))))).w , 5UL), 0x741FL)), p_962->g_283.x)), p_962->g_381[1].f2)) > 248UL) <= 0x6784D5F6L) || GROUP_DIVERGE(2, 1))))))) < 0x66L) , p_17)))), p_17)) , p_17);
            }
            p_962->g_899 = p_962->g_898;
            for (p_962->g_749 = (-15); (p_962->g_749 <= 5); p_962->g_749++)
            { /* block id: 484 */
                int16_t l_910[8][7] = {{0x5AB4L,0x5AB4L,0x02DAL,0x445EL,0L,0x445EL,0x02DAL},{0x5AB4L,0x5AB4L,0x02DAL,0x445EL,0L,0x445EL,0x02DAL},{0x5AB4L,0x5AB4L,0x02DAL,0x445EL,0L,0x445EL,0x02DAL},{0x5AB4L,0x5AB4L,0x02DAL,0x445EL,0L,0x445EL,0x02DAL},{0x5AB4L,0x5AB4L,0x02DAL,0x445EL,0L,0x445EL,0x02DAL},{0x5AB4L,0x5AB4L,0x02DAL,0x445EL,0L,0x445EL,0x02DAL},{0x5AB4L,0x5AB4L,0x02DAL,0x445EL,0L,0x445EL,0x02DAL},{0x5AB4L,0x5AB4L,0x02DAL,0x445EL,0L,0x445EL,0x02DAL}};
                int i, j;
                if (l_902)
                    break;
                for (p_962->g_171 = 0; (p_962->g_171 == (-14)); --p_962->g_171)
                { /* block id: 488 */
                    int32_t *l_907 = &p_962->g_13;
                    VECTOR(uint64_t, 8) l_915 = (VECTOR(uint64_t, 8))(0x6BC67C3A2EE18C42L, (VECTOR(uint64_t, 4))(0x6BC67C3A2EE18C42L, (VECTOR(uint64_t, 2))(0x6BC67C3A2EE18C42L, 0UL), 0UL), 0UL, 0x6BC67C3A2EE18C42L, 0UL);
                    uint16_t *l_924 = &p_962->g_381[1].f0;
                    uint16_t **l_923 = &l_924;
                    int i;
                    for (p_962->g_64.f0 = (-18); (p_962->g_64.f0 > 19); ++p_962->g_64.f0)
                    { /* block id: 491 */
                        (*l_772) = l_907;
                    }
                    for (p_962->g_64.f0 = 0; (p_962->g_64.f0 < 52); p_962->g_64.f0++)
                    { /* block id: 496 */
                        int32_t *l_911 = (void*)0;
                        uint64_t *l_916[7] = {&l_778,&p_962->g_53,&l_778,&l_778,&p_962->g_53,&l_778,&l_778};
                        uint32_t *l_921 = (void*)0;
                        int i;
                        (*l_535) = l_907;
                    }
                }
            }
        }
    }
    l_941 = ((((*l_530) = (((safe_mod_func_uint8_t_u_u(l_928, (p_962->g_171 = (p_962->g_283.w = ((((safe_mod_func_uint32_t_u_u(GROUP_DIVERGE(1, 1), 0xEB3D24C4L)) , (((*p_962->g_489) && (((void*)0 == l_530) , ((((((VECTOR(int8_t, 4))((-1L), ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(1L, 0x4EL, 0L, ((VECTOR(int8_t, 8))(min(((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 16))(max(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 2))(1L, 0x01L)), (int8_t)(~((l_931 = l_931) != (((l_932 == ((((p_962->g_935 = (p_962->g_876[4].f4 , &l_928)) != (void*)0) || p_962->g_881.x) , (void*)0)) < p_962->g_52[3]) , l_936[0][1])))))).xyyxyxyx)).hi)).xwwyxzxzyywyzzzz)).s3c, ((VECTOR(int8_t, 2))(0x76L))))).xyxyyxxx)).s17)), 0x4DL, (-10L))).xzyzzxzwwxywzzxz)), (int8_t)p_17))), ((VECTOR(int8_t, 16))(0x4BL)), ((VECTOR(int8_t, 16))(0x63L))))).odd, ((VECTOR(int8_t, 8))(0x29L))))), ((VECTOR(int8_t, 4))(0x15L)), 1L)).s46)), 1L)).x > p_17) , p_962->g_881.z) ^ p_17) < (-1L)))) || p_17)) ^ 0x0FL) | p_962->g_876[4].f0))))) < p_962->g_381[1].f0) >= p_962->g_comm_values[p_962->tid])) > GROUP_DIVERGE(1, 1)) , p_17);
    (*l_535) = (*l_535);
    return (*l_932);
}


/* ------------------------------------------ */
/* 
 * reads : p_962->g_186
 * writes:
 */
int8_t  func_20(uint16_t  p_21, int32_t * p_22, int64_t  p_23, struct S1 * p_962)
{ /* block id: 5 */
    uint8_t l_38[6] = {255UL,0x21L,255UL,255UL,0x21L,255UL};
    int32_t *l_39[4][6] = {{&p_962->g_13,&p_962->g_13,&p_962->g_13,&p_962->g_13,&p_962->g_13,&p_962->g_13},{&p_962->g_13,&p_962->g_13,&p_962->g_13,&p_962->g_13,&p_962->g_13,&p_962->g_13},{&p_962->g_13,&p_962->g_13,&p_962->g_13,&p_962->g_13,&p_962->g_13,&p_962->g_13},{&p_962->g_13,&p_962->g_13,&p_962->g_13,&p_962->g_13,&p_962->g_13,&p_962->g_13}};
    VECTOR(uint64_t, 2) l_424 = (VECTOR(uint64_t, 2))(0xB79D96ECEE04306BL, 18446744073709551613UL);
    VECTOR(uint64_t, 4) l_426 = (VECTOR(uint64_t, 4))(18446744073709551606UL, (VECTOR(uint64_t, 2))(18446744073709551606UL, 1UL), 1UL);
    VECTOR(uint64_t, 16) l_441 = (VECTOR(uint64_t, 16))(0x6FBC524AC476CD27L, (VECTOR(uint64_t, 4))(0x6FBC524AC476CD27L, (VECTOR(uint64_t, 2))(0x6FBC524AC476CD27L, 9UL), 9UL), 9UL, 0x6FBC524AC476CD27L, 9UL, (VECTOR(uint64_t, 2))(0x6FBC524AC476CD27L, 9UL), (VECTOR(uint64_t, 2))(0x6FBC524AC476CD27L, 9UL), 0x6FBC524AC476CD27L, 9UL, 0x6FBC524AC476CD27L, 9UL);
    uint64_t l_487 = 18446744073709551615UL;
    int8_t l_495 = 0L;
    VECTOR(int64_t, 4) l_520 = (VECTOR(int64_t, 4))(0x2984FA0875E39D63L, (VECTOR(int64_t, 2))(0x2984FA0875E39D63L, 0x25EEC752383E9C24L), 0x25EEC752383E9C24L);
    uint8_t l_526[5];
    int8_t l_527 = 0x3DL;
    int i, j;
    for (i = 0; i < 5; i++)
        l_526[i] = 0x18L;
    for (p_23 = 0; (p_23 < (-26)); p_23--)
    { /* block id: 8 */
        int32_t *l_32[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t **l_241 = &p_962->g_208;
        uint32_t *l_430 = (void*)0;
        VECTOR(int8_t, 16) l_454 = (VECTOR(int8_t, 16))((-3L), (VECTOR(int8_t, 4))((-3L), (VECTOR(int8_t, 2))((-3L), 4L), 4L), 4L, (-3L), 4L, (VECTOR(int8_t, 2))((-3L), 4L), (VECTOR(int8_t, 2))((-3L), 4L), (-3L), 4L, (-3L), 4L);
        uint64_t *l_519 = &l_487;
        int16_t *l_521 = (void*)0;
        int16_t *l_522 = &p_962->g_145[2];
        uint32_t *l_523[2][2];
        int i, j;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 2; j++)
                l_523[i][j] = (void*)0;
        }
        (1 + 1);
    }
    return p_962->g_186.s2;
}


/* ------------------------------------------ */
/* 
 * reads : p_962->g_171 p_962->g_63 p_962->g_64 p_962->g_53 p_962->l_comm_values p_962->g_166 p_962->g_55 p_962->g_13 p_962->g_360 p_962->g_362 p_962->g_364 p_962->g_222 p_962->g_223 p_962->g_173 p_962->g_186 p_962->g_201 p_962->g_381 p_962->g_405 p_962->g_407 p_962->g_416 p_962->g_145 p_962->g_142
 * writes: p_962->g_171 p_962->g_64 p_962->g_53 p_962->g_166 p_962->l_comm_values p_962->g_362 p_962->g_416 p_962->g_142
 */
int32_t * func_26(int8_t  p_27, int8_t  p_28, int64_t  p_29, int32_t * p_30, int32_t * p_31, struct S1 * p_962)
{ /* block id: 124 */
    uint8_t l_318[7][5][4] = {{{0UL,5UL,5UL,0UL},{0UL,5UL,5UL,0UL},{0UL,5UL,5UL,0UL},{0UL,5UL,5UL,0UL},{0UL,5UL,5UL,0UL}},{{0UL,5UL,5UL,0UL},{0UL,5UL,5UL,0UL},{0UL,5UL,5UL,0UL},{0UL,5UL,5UL,0UL},{0UL,5UL,5UL,0UL}},{{0UL,5UL,5UL,0UL},{0UL,5UL,5UL,0UL},{0UL,5UL,5UL,0UL},{0UL,5UL,5UL,0UL},{0UL,5UL,5UL,0UL}},{{0UL,5UL,5UL,0UL},{0UL,5UL,5UL,0UL},{0UL,5UL,5UL,0UL},{0UL,5UL,5UL,0UL},{0UL,5UL,5UL,0UL}},{{0UL,5UL,5UL,0UL},{0UL,5UL,5UL,0UL},{0UL,5UL,5UL,0UL},{0UL,5UL,5UL,0UL},{0UL,5UL,5UL,0UL}},{{0UL,5UL,5UL,0UL},{0UL,5UL,5UL,0UL},{0UL,5UL,5UL,0UL},{0UL,5UL,5UL,0UL},{0UL,5UL,5UL,0UL}},{{0UL,5UL,5UL,0UL},{0UL,5UL,5UL,0UL},{0UL,5UL,5UL,0UL},{0UL,5UL,5UL,0UL},{0UL,5UL,5UL,0UL}}};
    VECTOR(uint32_t, 16) l_327 = (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x9D980DC2L), 0x9D980DC2L), 0x9D980DC2L, 1UL, 0x9D980DC2L, (VECTOR(uint32_t, 2))(1UL, 0x9D980DC2L), (VECTOR(uint32_t, 2))(1UL, 0x9D980DC2L), 1UL, 0x9D980DC2L, 1UL, 0x9D980DC2L);
    int32_t **l_340 = (void*)0;
    VECTOR(int32_t, 4) l_361 = (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), 0x7EB7C3B7L), 0x7EB7C3B7L);
    struct S0 *l_380 = &p_962->g_381[1];
    int32_t l_388 = 0x62860BD4L;
    VECTOR(int64_t, 16) l_397 = (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L), (VECTOR(int64_t, 2))((-1L), (-1L)), (VECTOR(int64_t, 2))((-1L), (-1L)), (-1L), (-1L), (-1L), (-1L));
    VECTOR(int64_t, 16) l_404 = (VECTOR(int64_t, 16))(0x047683CB2B1A8920L, (VECTOR(int64_t, 4))(0x047683CB2B1A8920L, (VECTOR(int64_t, 2))(0x047683CB2B1A8920L, 0L), 0L), 0L, 0x047683CB2B1A8920L, 0L, (VECTOR(int64_t, 2))(0x047683CB2B1A8920L, 0L), (VECTOR(int64_t, 2))(0x047683CB2B1A8920L, 0L), 0x047683CB2B1A8920L, 0L, 0x047683CB2B1A8920L, 0L);
    VECTOR(int64_t, 4) l_406 = (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-1L)), (-1L));
    int16_t *l_412 = (void*)0;
    int64_t *l_413 = (void*)0;
    int64_t *l_414 = (void*)0;
    int64_t *l_415 = (void*)0;
    int8_t *l_417 = &p_962->g_171;
    uint64_t l_418 = 0x0AF38509B100E5EDL;
    uint64_t l_419 = 18446744073709551615UL;
    int32_t *l_420 = (void*)0;
    int32_t *l_421[7][2] = {{&p_962->g_13,(void*)0},{&p_962->g_13,(void*)0},{&p_962->g_13,(void*)0},{&p_962->g_13,(void*)0},{&p_962->g_13,(void*)0},{&p_962->g_13,(void*)0},{&p_962->g_13,(void*)0}};
    int i, j, k;
    for (p_962->g_171 = (-28); (p_962->g_171 >= (-3)); ++p_962->g_171)
    { /* block id: 127 */
        int32_t l_341 = 0x7978BE6DL;
        int32_t l_352[7] = {0x1F2A6C5EL,0x67AED57EL,0x1F2A6C5EL,0x1F2A6C5EL,0x67AED57EL,0x1F2A6C5EL,0x1F2A6C5EL};
        int i;
        (*p_962->g_63) = (*p_962->g_63);
        for (p_962->g_64.f3 = 0; (p_962->g_64.f3 <= 56); p_962->g_64.f3 = safe_add_func_int32_t_s_s(p_962->g_64.f3, 6))
        { /* block id: 131 */
            int32_t l_342 = 0x4F742FC1L;
            int32_t l_353[10][10] = {{0L,0x62B206D3L,0L,0L,0x62B206D3L,0L,0L,0x62B206D3L,0L,0L},{0L,0x62B206D3L,0L,0L,0x62B206D3L,0L,0L,0x62B206D3L,0L,0L},{0L,0x62B206D3L,0L,0L,0x62B206D3L,0L,0L,0x62B206D3L,0L,0L},{0L,0x62B206D3L,0L,0L,0x62B206D3L,0L,0L,0x62B206D3L,0L,0L},{0L,0x62B206D3L,0L,0L,0x62B206D3L,0L,0L,0x62B206D3L,0L,0L},{0L,0x62B206D3L,0L,0L,0x62B206D3L,0L,0L,0x62B206D3L,0L,0L},{0L,0x62B206D3L,0L,0L,0x62B206D3L,0L,0L,0x62B206D3L,0L,0L},{0L,0x62B206D3L,0L,0L,0x62B206D3L,0L,0L,0x62B206D3L,0L,0L},{0L,0x62B206D3L,0L,0L,0x62B206D3L,0L,0L,0x62B206D3L,0L,0L},{0L,0x62B206D3L,0L,0L,0x62B206D3L,0L,0L,0x62B206D3L,0L,0L}};
            int i, j;
            for (p_27 = 21; (p_27 <= (-18)); p_27 = safe_sub_func_uint8_t_u_u(p_27, 5))
            { /* block id: 134 */
                int32_t *l_313 = (void*)0;
                int32_t *l_314 = (void*)0;
                int32_t *l_317[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int i;
                l_318[3][1][2] ^= (0xC1A542263454B422L ^ p_28);
            }
            for (p_962->g_53 = 7; (p_962->g_53 == 60); p_962->g_53++)
            { /* block id: 139 */
                uint8_t *l_330[6][2][7];
                int32_t l_335 = 4L;
                int i, j, k;
                for (i = 0; i < 6; i++)
                {
                    for (j = 0; j < 2; j++)
                    {
                        for (k = 0; k < 7; k++)
                            l_330[i][j][k] = (void*)0;
                    }
                }
                l_352[4] = (p_962->l_comm_values[(safe_mod_func_uint32_t_u_u(p_962->tid, 36))] < ((safe_mul_func_uint8_t_u_u(((safe_rshift_func_uint16_t_u_s((((!p_962->g_53) > l_318[3][1][2]) || (-3L)), (safe_div_func_int16_t_s_s((((VECTOR(uint32_t, 4))(l_327.s2e94)).z > ((safe_div_func_uint8_t_u_u(250UL, (--p_962->g_166.s6))) >= (GROUP_DIVERGE(0, 1) <= (safe_mod_func_uint16_t_u_u(((((((FAKE_DIVERGE(p_962->local_2_offset, get_local_id(2), 10) || l_335) == p_29) > p_27) | ((VECTOR(int32_t, 4))((safe_lshift_func_int8_t_s_s((safe_mul_func_int8_t_s_s(((((&p_962->g_70 != l_340) , 4294967294UL) , l_341) == 0x3104F90FB49F766BL), l_335)), p_962->g_55[0])), l_342, 0x5D87F214L, (-1L))).z) >= 0x23ABL) && 1L), 0x3D67L))))), l_335)))) , l_341), l_341)) , l_335));
                l_353[0][0] |= (*p_31);
            }
        }
        for (p_962->g_53 = 0; (p_962->g_53 > 42); p_962->g_53 = safe_add_func_int64_t_s_s(p_962->g_53, 2))
        { /* block id: 147 */
            VECTOR(int32_t, 16) l_363 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L, (VECTOR(int32_t, 2))((-1L), 0L), (VECTOR(int32_t, 2))((-1L), 0L), (-1L), 0L, (-1L), 0L);
            struct S0 **l_382 = (void*)0;
            struct S0 **l_383 = &l_380;
            int i, j;
            for (p_28 = 7; (p_28 != (-12)); p_28 = safe_sub_func_uint32_t_u_u(p_28, 1))
            { /* block id: 150 */
                VECTOR(uint8_t, 4) l_365 = (VECTOR(uint8_t, 4))(0xB5L, (VECTOR(uint8_t, 2))(0xB5L, 0x0FL), 0x0FL);
                VECTOR(uint8_t, 4) l_366 = (VECTOR(uint8_t, 4))(0x4EL, (VECTOR(uint8_t, 2))(0x4EL, 1UL), 1UL);
                uint8_t *l_373 = &l_318[3][1][2];
                struct S0 ***l_376 = &p_962->g_223[3];
                int64_t *l_377 = (void*)0;
                int64_t *l_378[9][10][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
                int32_t *l_379 = &l_352[3];
                int i, j, k;
                (*l_379) = ((&p_962->g_145[1] == (void*)0) , (safe_mod_func_int32_t_s_s(((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(p_962->g_360.s3436)).even)).yyyyyyyx)))).s54))).yxxyyyxxxyyyyxyx, ((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_361.zw)), 0x404EB5AAL, (-1L))), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 4))(p_962->g_362.s0253)).wxzwxxyywwwyyzww, ((VECTOR(int32_t, 4))(l_363.s8085)).zwxwxzxzyyxyxyyz, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(6L, 5L)), 7L, 0x162D9AF3L)).wxwzwxwwwwyyzzzw))).s65)).yxyy))).xzyxzzzzyyzyyxwz, ((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(0x06277BF2L, ((VECTOR(int32_t, 2))(0x2EB33C09L, 7L)), ((void*)0 != &p_962->g_70), (p_962->g_362.s2 ^= ((((VECTOR(uint8_t, 16))(mad_sat(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(p_962->g_364.yy)).yxyx)).hi)).yxxxxxxyxyxyxxxy, ((VECTOR(uint8_t, 8))(l_365.zzyywzzz)).s3062153324444533, ((VECTOR(uint8_t, 8))(min(((VECTOR(uint8_t, 4))(l_366.zzyz)).yzywzzyw, (uint8_t)(safe_mod_func_int64_t_s_s((+(p_962->l_comm_values[(safe_mod_func_uint32_t_u_u(p_962->tid, 36))] = ((((safe_sub_func_int8_t_s_s((safe_sub_func_uint8_t_u_u(((*l_373)++), (((***p_962->g_222) , l_376) == &p_962->g_223[4]))), p_29)) ^ p_962->g_173) < 0x66B651E0L) ^ FAKE_DIVERGE(p_962->group_2_offset, get_group_id(2), 10)))), p_962->g_171))))).s1706020352322020))).sc == 0x34L) >= p_962->g_186.s5)), (-1L), (-2L), 0x5B4D3363L)).s2261057656402434)).lo, ((VECTOR(int32_t, 8))(0x01900239L))))).s6622363362663062))).sf, (-1L))));
            }
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            p_962->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 36)), permutations[(safe_mod_func_uint32_t_u_u(((*p_962->g_201) == ((*l_383) = l_380)), 10))][(safe_mod_func_uint32_t_u_u(p_962->tid, 36))]));
            for (p_962->g_64.f3 = 0; (p_962->g_64.f3 != 13); p_962->g_64.f3 = safe_add_func_uint8_t_u_u(p_962->g_64.f3, 3))
            { /* block id: 162 */
                for (p_29 = 0; (p_29 > 25); p_29 = safe_add_func_uint16_t_u_u(p_29, 1))
                { /* block id: 165 */
                    (*l_383) = l_380;
                }
            }
            l_388 |= (*p_31);
        }
    }
    p_962->g_142.y ^= (p_962->g_362.s7 |= (safe_mod_func_int8_t_s_s((safe_sub_func_int8_t_s_s((safe_add_func_int8_t_s_s((safe_add_func_uint8_t_u_u(((((VECTOR(int64_t, 2))(add_sat(((VECTOR(int64_t, 4))(rotate(((VECTOR(int64_t, 16))(0L, ((VECTOR(int64_t, 2))(l_397.s43)), (((65531UL & l_388) < (safe_div_func_int64_t_s_s((safe_add_func_int8_t_s_s((safe_mod_func_int64_t_s_s((((*l_380) , (((((*l_417) = (0x72D957EAD8BA1437L ^ (p_962->g_416 ^= (p_962->l_comm_values[(safe_mod_func_uint32_t_u_u(p_962->tid, 36))] ^= ((VECTOR(int64_t, 8))(add_sat(((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 2))(l_404.s0f)).xxxxyxxy, ((VECTOR(int64_t, 4))(p_962->g_405.xyyy)).ywzzxyzw))).odd, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(l_406.zxyzxyywxwwyzxxz)).s0e)).xyyx))).ywxxyzwz, ((VECTOR(int64_t, 4))(mul_hi(((VECTOR(int64_t, 8))(p_962->g_407.yyxxyyxy)).lo, ((VECTOR(int64_t, 16))(4L, ((safe_rshift_func_int8_t_s_u(((VECTOR(int8_t, 2))(0x1EL, 0x61L)).even, 0)) < (((*l_380) , (safe_add_func_int32_t_s_s((*p_31), ((*l_380) , (l_412 != &p_962->g_145[1]))))) != l_318[0][3][1])), 0L, ((VECTOR(int64_t, 4))(0L)), ((VECTOR(int64_t, 2))((-6L))), (-1L), ((VECTOR(int64_t, 2))(0x3CA335BC6A01FFECL)), 0x602123E1AF7F28C4L, ((VECTOR(int64_t, 2))(0x7D2C4370C2376C29L)), 0x73063E40BD808368L)).sfea2))).xxzxxxzw))).s0)))) == (-8L)) , p_27) , p_962->g_53)) | l_327.s7), p_962->g_145[1])), 0x64L)), l_327.s0))) , l_418), (-9L), 7L, 6L, 0x3A2D6456FFEAEDE3L, (-4L), ((VECTOR(int64_t, 4))((-3L))), 0x61F5BFCE8C952530L, (-1L), (-5L))).sc02d, ((VECTOR(int64_t, 4))(1L))))).odd, ((VECTOR(int64_t, 2))(2L))))).hi , l_340) == &p_962->g_70), p_962->g_186.s0)), l_327.s6)), l_388)), l_419)));
    return l_421[2][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_962->g_53 p_962->g_281 p_962->g_13 p_962->g_283 p_962->g_157.f4 p_962->g_142 p_962->g_222 p_962->g_223 p_962->g_63 p_962->g_64 p_962->g_302 p_962->g_145 p_962->g_52 p_962->g_207 p_962->g_208
 * writes: p_962->g_53 p_962->g_142 p_962->g_145
 */
int32_t * func_33(int32_t  p_34, int32_t * p_35, int32_t * p_36, int32_t * p_37, struct S1 * p_962)
{ /* block id: 98 */
    int32_t l_270[8][1][9] = {{{0x38CA394CL,0L,0L,0x38CA394CL,0L,0x26F7DA1FL,0x26F7DA1FL,0L,0x38CA394CL}},{{0x38CA394CL,0L,0L,0x38CA394CL,0L,0x26F7DA1FL,0x26F7DA1FL,0L,0x38CA394CL}},{{0x38CA394CL,0L,0L,0x38CA394CL,0L,0x26F7DA1FL,0x26F7DA1FL,0L,0x38CA394CL}},{{0x38CA394CL,0L,0L,0x38CA394CL,0L,0x26F7DA1FL,0x26F7DA1FL,0L,0x38CA394CL}},{{0x38CA394CL,0L,0L,0x38CA394CL,0L,0x26F7DA1FL,0x26F7DA1FL,0L,0x38CA394CL}},{{0x38CA394CL,0L,0L,0x38CA394CL,0L,0x26F7DA1FL,0x26F7DA1FL,0L,0x38CA394CL}},{{0x38CA394CL,0L,0L,0x38CA394CL,0L,0x26F7DA1FL,0x26F7DA1FL,0L,0x38CA394CL}},{{0x38CA394CL,0L,0L,0x38CA394CL,0L,0x26F7DA1FL,0x26F7DA1FL,0L,0x38CA394CL}}};
    VECTOR(int8_t, 8) l_275 = (VECTOR(int8_t, 8))(9L, (VECTOR(int8_t, 4))(9L, (VECTOR(int8_t, 2))(9L, (-3L)), (-3L)), (-3L), 9L, (-3L));
    uint64_t *l_276[1];
    int32_t l_277 = 0x5DCEC532L;
    int32_t l_278 = 1L;
    uint64_t l_282 = 1UL;
    VECTOR(int32_t, 2) l_286 = (VECTOR(int32_t, 2))((-6L), 0x25A160AAL);
    VECTOR(int32_t, 4) l_287 = (VECTOR(int32_t, 4))(0x7B63536DL, (VECTOR(int32_t, 2))(0x7B63536DL, 0x4601BA04L), 0x4601BA04L);
    VECTOR(int64_t, 4) l_288 = (VECTOR(int64_t, 4))(0x52DEE9DACAF1DAA0L, (VECTOR(int64_t, 2))(0x52DEE9DACAF1DAA0L, 0x77ED370A6AB0EA90L), 0x77ED370A6AB0EA90L);
    int32_t *l_289 = &l_277;
    int32_t *l_290 = (void*)0;
    struct S0 **l_291 = &p_962->g_63;
    VECTOR(int32_t, 16) l_292 = (VECTOR(int32_t, 16))(0x04B4C836L, (VECTOR(int32_t, 4))(0x04B4C836L, (VECTOR(int32_t, 2))(0x04B4C836L, (-10L)), (-10L)), (-10L), 0x04B4C836L, (-10L), (VECTOR(int32_t, 2))(0x04B4C836L, (-10L)), (VECTOR(int32_t, 2))(0x04B4C836L, (-10L)), 0x04B4C836L, (-10L), 0x04B4C836L, (-10L));
    VECTOR(int16_t, 8) l_297 = (VECTOR(int16_t, 8))(0x08B6L, (VECTOR(int16_t, 4))(0x08B6L, (VECTOR(int16_t, 2))(0x08B6L, 0x3888L), 0x3888L), 0x3888L, 0x08B6L, 0x3888L);
    int16_t *l_301 = &p_962->g_145[1];
    uint64_t l_303[3];
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_276[i] = &p_962->g_53;
    for (i = 0; i < 3; i++)
        l_303[i] = 18446744073709551609UL;
    if ((atomic_inc(&p_962->g_atomic_input[81 * get_linear_group_id() + 76]) == 3))
    { /* block id: 100 */
        int16_t l_242 = 0x0818L;
        struct S0 l_243 = {1UL,0x6E41L,0x5F43E927L,65534UL,0x499EC2D0L};/* VOLATILE GLOBAL l_243 */
        int32_t l_244 = 8L;
        uint32_t l_245 = 0x217AC558L;
        VECTOR(uint32_t, 2) l_246 = (VECTOR(uint32_t, 2))(0xF6C77615L, 1UL);
        VECTOR(uint32_t, 4) l_247 = (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 4294967291UL), 4294967291UL);
        uint16_t l_248 = 65535UL;
        uint32_t l_249 = 5UL;
        int32_t l_250 = (-1L);
        VECTOR(int32_t, 4) l_251 = (VECTOR(int32_t, 4))(0x37A1DBB9L, (VECTOR(int32_t, 2))(0x37A1DBB9L, 1L), 1L);
        int8_t l_252[8][3][2] = {{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}}};
        VECTOR(int32_t, 2) l_268 = (VECTOR(int32_t, 2))(0x1614F371L, 0x5675856FL);
        uint32_t l_269 = 0x0D613D2AL;
        int i, j, k;
        l_250 ^= (((VECTOR(uint32_t, 8))(rhadd(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(mul_hi(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(rhadd(((VECTOR(uint32_t, 8))(l_242, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 4))(0UL, 0x76A6F4B9L, 0x6CDDA463L, 0x5E4DA7F8L)))), (l_243 , l_244), 4294967295UL, 0UL)).lo, ((VECTOR(uint32_t, 16))(clz(((VECTOR(uint32_t, 16))(abs_diff(((VECTOR(uint32_t, 4))(l_245, ((VECTOR(uint32_t, 2))(l_246.yy)), 0x276EC153L)).xzyzxwzzzwwywzzz, ((VECTOR(uint32_t, 16))(l_247.yxwywwwzzyyxzzyx)))))))).s633e))).lo)).xyxx)).hi, ((VECTOR(uint32_t, 4))(0UL, l_248, 0x089C301AL, 0UL)).odd))).yyxxxxxx)), ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(0xA847C415L, 4294967291UL)))).xyxyxyyy))).s4 , l_249);
        l_252[6][1][0] &= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(l_251.yzzzwyxywwzzzyxw)))).s9;
        for (l_243.f3 = 0; (l_243.f3 >= 10); l_243.f3 = safe_add_func_int64_t_s_s(l_243.f3, 2))
        { /* block id: 105 */
            uint32_t l_255 = 0UL;
            uint32_t l_256 = 4294967295UL;
            uint16_t l_257 = 65535UL;
            VECTOR(int16_t, 8) l_258 = (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x301AL), 0x301AL), 0x301AL, 0L, 0x301AL);
            struct S0 l_259 = {0x4D5FL,1L,0x6C9FC870L,0UL,-2L};/* VOLATILE GLOBAL l_259 */
            uint16_t l_262 = 0x257DL;
            int32_t *l_264 = (void*)0;
            int32_t **l_263 = &l_264;
            int32_t **l_265[5][4] = {{&l_264,&l_264,&l_264,&l_264},{&l_264,&l_264,&l_264,&l_264},{&l_264,&l_264,&l_264,&l_264},{&l_264,&l_264,&l_264,&l_264},{&l_264,&l_264,&l_264,&l_264}};
            uint64_t l_266 = 0x09D5F96E83B054FFL;
            int32_t l_267 = 1L;
            int i, j;
            l_265[1][0] = (l_255 , (l_256 , (l_263 = (((l_251.y ^= l_257) , (l_244 = ((VECTOR(int32_t, 2))((-5L), 0x08854FB9L)).hi)) , (((VECTOR(int16_t, 8))(l_258.s41211376)).s0 , ((l_259 , (l_257++)) , (l_262 , (void*)0)))))));
            l_267 = l_266;
        }
        l_269 ^= ((VECTOR(int32_t, 16))(l_268.xyyyyyyxxxxyyxxx)).s7;
        unsigned int result = 0;
        result += l_242;
        result += l_243.f0;
        result += l_243.f1;
        result += l_243.f2;
        result += l_243.f3;
        result += l_243.f4;
        result += l_244;
        result += l_245;
        result += l_246.y;
        result += l_246.x;
        result += l_247.w;
        result += l_247.z;
        result += l_247.y;
        result += l_247.x;
        result += l_248;
        result += l_249;
        result += l_250;
        result += l_251.w;
        result += l_251.z;
        result += l_251.y;
        result += l_251.x;
        int l_252_i0, l_252_i1, l_252_i2;
        for (l_252_i0 = 0; l_252_i0 < 8; l_252_i0++) {
            for (l_252_i1 = 0; l_252_i1 < 3; l_252_i1++) {
                for (l_252_i2 = 0; l_252_i2 < 2; l_252_i2++) {
                    result += l_252[l_252_i0][l_252_i1][l_252_i2];
                }
            }
        }
        result += l_268.y;
        result += l_268.x;
        result += l_269;
        atomic_add(&p_962->g_special_values[81 * get_linear_group_id() + 76], result);
    }
    else
    { /* block id: 114 */
        (1 + 1);
    }
    p_962->g_142.x &= (l_270[6][0][2] > ((safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), (safe_mul_func_int16_t_s_s(((((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(l_275.s0372)).wwzzwzxy)).s0 < (0x4860L != 0xDB9CL)) >= (+(++p_962->g_53))), (0x4741952FADD9ADE9L == (((VECTOR(uint32_t, 8))(p_962->g_281.sb1d94511)).s3 || (l_277 | ((((*p_37) != l_282) == ((VECTOR(int8_t, 8))(p_962->g_283.wywzwyzw)).s1) != l_282)))))))) < ((safe_mul_func_uint8_t_u_u(0xECL, FAKE_DIVERGE(p_962->group_0_offset, get_group_id(0), 10))) == p_962->g_157.f4)));
    l_303[2] = ((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(l_286.xxyyyxxxxxxxyxyy)).s90, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(l_287.zyxwyyzwwyzxwzyz)))).s1cd5)).zzxzxwyyxzzywyxw)).s46, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))((p_34 = ((*l_289) = (((VECTOR(int64_t, 2))(l_288.yw)).odd == 1UL))), (l_291 == (*p_962->g_222)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(l_292.sd4499d4a7d070c08)).sc961)), (-2L), ((*l_289) || (safe_lshift_func_uint16_t_u_s((safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 16))(l_297.s1130256563330054)).sc, ((***p_962->g_222) , ((safe_add_func_int16_t_s_s(((!(((*l_289) != ((*l_301) = (safe_unary_minus_func_uint16_t_u(p_962->g_13)))) | p_962->g_64.f2)) , (((VECTOR(uint32_t, 4))(upsample(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(clz(((VECTOR(uint16_t, 2))(p_962->g_302.xy)).yxyx))))), ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(mad_hi(((VECTOR(uint16_t, 8))(add_sat(((VECTOR(uint16_t, 4))(abs(((VECTOR(uint16_t, 8))(((0xF92105E2EA9B58B7L == 18446744073709551608UL) ^ 0L), ((VECTOR(uint16_t, 4))(0xC774L)), 1UL, 0x7976L, 0xB3E1L)).even))).ywxzzzxz, ((VECTOR(uint16_t, 8))(6UL))))).s0775716470706502, ((VECTOR(uint16_t, 16))(65526UL)), ((VECTOR(uint16_t, 16))(0x40B5L))))).odd)), (*l_289), GROUP_DIVERGE(1, 1), 0xFC45L, 65531UL)).s67ce, ((VECTOR(uint16_t, 4))(0xB31CL))))).y | p_962->g_145[1])), p_962->g_52[3])) , (*l_289))))), (*l_289)))), 0x4205E852L, (*p_35), 0x6DE4937BL, 0L, (*l_289), 0x5EA37452L, 6L, (-1L))).s2adf)), 0x39E0C308L, (*l_289), 1L, 0x3618C888L)).s41))).yyxy, ((VECTOR(int32_t, 4))(0L))))).z;
    return (*p_962->g_207);
}


/* ------------------------------------------ */
/* 
 * reads : p_962->l_comm_values p_962->g_47 p_962->g_comm_values p_962->g_52 p_962->g_53 p_962->g_63 p_962->g_13 p_962->g_64.f0 p_962->g_139 p_962->g_165 p_962->g_166 p_962->g_186 p_962->g_188 p_962->g_142 p_962->g_64.f3 p_962->g_201 p_962->g_64.f4 p_962->g_207 p_962->g_157.f4 p_962->g_141 p_962->g_171 p_962->g_222 p_962->g_64.f1 p_962->g_208 p_962->g_225
 * writes: p_962->g_64.f0 p_962->g_69 p_962->g_139 p_962->g_171 p_962->g_173 p_962->g_64.f3 p_962->g_53 p_962->g_63 p_962->g_208 p_962->g_157.f4 p_962->g_141 p_962->g_223
 */
int8_t  func_42(int16_t  p_43, struct S1 * p_962)
{ /* block id: 9 */
    uint32_t l_44[3][10] = {{0x821C760FL,0x5E9D070FL,0UL,0x5E9D070FL,0x821C760FL,0x821C760FL,0x5E9D070FL,0UL,0x5E9D070FL,0x821C760FL},{0x821C760FL,0x5E9D070FL,0UL,0x5E9D070FL,0x821C760FL,0x821C760FL,0x5E9D070FL,0UL,0x5E9D070FL,0x821C760FL},{0x821C760FL,0x5E9D070FL,0UL,0x5E9D070FL,0x821C760FL,0x821C760FL,0x5E9D070FL,0UL,0x5E9D070FL,0x821C760FL}};
    int32_t *l_54[3][6] = {{&p_962->g_55[6],(void*)0,(void*)0,&p_962->g_55[2],(void*)0,&p_962->g_55[2]},{&p_962->g_55[6],(void*)0,(void*)0,&p_962->g_55[2],(void*)0,&p_962->g_55[2]},{&p_962->g_55[6],(void*)0,(void*)0,&p_962->g_55[2],(void*)0,&p_962->g_55[2]}};
    VECTOR(int32_t, 4) l_56 = (VECTOR(int32_t, 4))(0x2DF38E70L, (VECTOR(int32_t, 2))(0x2DF38E70L, 3L), 3L);
    int32_t *l_202 = (void*)0;
    int32_t *l_203 = (void*)0;
    int32_t *l_204 = (void*)0;
    int32_t *l_205 = (void*)0;
    int32_t *l_206 = (void*)0;
    struct S0 **l_221 = &p_962->g_63;
    int32_t **l_224 = &l_204;
    int32_t *l_226 = (void*)0;
    int32_t *l_227 = (void*)0;
    int32_t *l_238 = (void*)0;
    int i, j;
    if ((l_56.w = (((l_44[0][1] < ((VECTOR(int8_t, 16))(1L, 0L, (safe_mul_func_int8_t_s_s((p_962->l_comm_values[(safe_mod_func_uint32_t_u_u(p_962->tid, 36))] ^ ((((VECTOR(uint32_t, 2))(add_sat(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(p_962->g_47.s71)).xyxyyxyyyyyyyxyx)).sfe, ((VECTOR(uint32_t, 16))(func_48(p_962->g_comm_values[p_962->tid], p_962->g_52[3], (l_56.y = p_962->g_53), p_962), (((p_43 , 0x54FEF44D4CAF2CE7L) , ((~GROUP_DIVERGE(1, 1)) | 0x6CBFL)) >= p_43), p_962->g_64.f4, l_44[0][4], 4UL, p_43, ((VECTOR(uint32_t, 8))(3UL)), 0xC9414DFAL, 4294967289UL)).s17))).lo ^ p_962->g_142.y) & p_962->g_166.s2)), l_44[2][2])), p_962->g_188.s9, 0x7BL, ((VECTOR(int8_t, 2))(0x3FL)), 0x2FL, 4L, 0x0BL, 0x1FL, (-1L), (-6L), 0x20L, 0x69L, 0L)).s3) > l_44[0][1]) & 5L)))
    { /* block id: 64 */
        (*p_962->g_207) = &p_962->g_13;
        if ((atomic_inc(&p_962->g_atomic_input[81 * get_linear_group_id() + 58]) == 7))
        { /* block id: 67 */
            int32_t *l_209 = (void*)0;
            l_209 = (void*)0;
            unsigned int result = 0;
            atomic_add(&p_962->g_special_values[81 * get_linear_group_id() + 58], result);
        }
        else
        { /* block id: 69 */
            (1 + 1);
        }
    }
    else
    { /* block id: 72 */
        VECTOR(int32_t, 16) l_210 = (VECTOR(int32_t, 16))((-4L), (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), 0x75F27348L), 0x75F27348L), 0x75F27348L, (-4L), 0x75F27348L, (VECTOR(int32_t, 2))((-4L), 0x75F27348L), (VECTOR(int32_t, 2))((-4L), 0x75F27348L), (-4L), 0x75F27348L, (-4L), 0x75F27348L);
        int i;
        if (((VECTOR(int32_t, 4))(l_210.scbb6)).z)
        { /* block id: 73 */
            VECTOR(int32_t, 4) l_211 = (VECTOR(int32_t, 4))(0x276325E5L, (VECTOR(int32_t, 2))(0x276325E5L, 0x543575AFL), 0x543575AFL);
            int32_t *l_212[10][10][1] = {{{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13}},{{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13}},{{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13}},{{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13}},{{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13}},{{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13}},{{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13}},{{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13}},{{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13}},{{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13},{&p_962->g_13}}};
            int i, j, k;
            p_962->g_157.f4 |= ((VECTOR(int32_t, 2))(l_211.xy)).odd;
        }
        else
        { /* block id: 75 */
            int32_t *l_217 = &p_962->g_13;
            int32_t **l_218 = &p_962->g_208;
            for (p_962->g_64.f0 = 21; (p_962->g_64.f0 > 10); p_962->g_64.f0 = safe_sub_func_int32_t_s_s(p_962->g_64.f0, 3))
            { /* block id: 78 */
                int32_t l_215 = 1L;
                int32_t *l_216[3][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                int i, j;
                if (l_215)
                    break;
                p_962->g_141.y ^= (l_215 = p_43);
            }
            (*l_218) = l_217;
        }
        l_210.sc ^= p_43;
    }
    for (p_962->g_171 = 26; (p_962->g_171 < 13); p_962->g_171--)
    { /* block id: 89 */
        (*p_962->g_222) = l_221;
        return p_962->g_64.f1;
    }
    (*p_962->g_225) = ((*l_224) = (*p_962->g_207));
    l_56.y ^= p_43;
    return p_962->g_171;
}


/* ------------------------------------------ */
/* 
 * reads : p_962->g_63 p_962->g_13 p_962->g_64.f0 p_962->l_comm_values p_962->g_52 p_962->g_139 p_962->g_165 p_962->g_166 p_962->g_186 p_962->g_188 p_962->g_142 p_962->g_64.f3 p_962->g_53 p_962->g_201
 * writes: p_962->g_64.f0 p_962->g_69 p_962->g_139 p_962->g_171 p_962->g_173 p_962->g_64.f3 p_962->g_53 p_962->g_63
 */
uint32_t  func_48(int32_t  p_49, int64_t  p_50, int32_t  p_51, struct S1 * p_962)
{ /* block id: 11 */
    int32_t *l_65 = &p_962->g_55[3];
    int32_t *l_66 = &p_962->g_13;
    (*p_962->g_201) = func_57(p_962->g_63, l_65, &p_962->g_13, l_66, (*l_66), p_962);
    return p_51;
}


/* ------------------------------------------ */
/* 
 * reads : p_962->g_64.f0 p_962->l_comm_values p_962->g_52 p_962->g_139 p_962->g_165 p_962->g_166 p_962->g_186 p_962->g_188 p_962->g_142 p_962->g_13 p_962->g_64.f3 p_962->g_53
 * writes: p_962->g_64.f0 p_962->g_69 p_962->g_139 p_962->g_171 p_962->g_173 p_962->g_64.f3 p_962->g_53
 */
struct S0 * func_57(struct S0 * p_58, int32_t * p_59, int32_t * p_60, int32_t * p_61, int64_t  p_62, struct S1 * p_962)
{ /* block id: 12 */
    int32_t **l_71 = &p_962->g_70;
    VECTOR(int32_t, 16) l_154 = (VECTOR(int32_t, 16))(0x54BD5290L, (VECTOR(int32_t, 4))(0x54BD5290L, (VECTOR(int32_t, 2))(0x54BD5290L, 1L), 1L), 1L, 0x54BD5290L, 1L, (VECTOR(int32_t, 2))(0x54BD5290L, 1L), (VECTOR(int32_t, 2))(0x54BD5290L, 1L), 0x54BD5290L, 1L, 0x54BD5290L, 1L);
    VECTOR(int32_t, 8) l_155 = (VECTOR(int32_t, 8))(0x57F89DCCL, (VECTOR(int32_t, 4))(0x57F89DCCL, (VECTOR(int32_t, 2))(0x57F89DCCL, 3L), 3L), 3L, 0x57F89DCCL, 3L);
    VECTOR(uint32_t, 16) l_185 = (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x21C67A74L), 0x21C67A74L), 0x21C67A74L, 1UL, 0x21C67A74L, (VECTOR(uint32_t, 2))(1UL, 0x21C67A74L), (VECTOR(uint32_t, 2))(1UL, 0x21C67A74L), 1UL, 0x21C67A74L, 1UL, 0x21C67A74L);
    VECTOR(uint32_t, 4) l_189 = (VECTOR(uint32_t, 4))(0x4D0AC22EL, (VECTOR(uint32_t, 2))(0x4D0AC22EL, 5UL), 5UL);
    int32_t *l_198[8];
    int32_t **l_199[4][7];
    struct S0 *l_200 = &p_962->g_64;
    int i, j;
    for (i = 0; i < 8; i++)
        l_198[i] = &p_962->g_13;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 7; j++)
            l_199[i][j] = (void*)0;
    }
    for (p_962->g_64.f0 = 0; (p_962->g_64.f0 > 42); p_962->g_64.f0 = safe_add_func_int64_t_s_s(p_962->g_64.f0, 9))
    { /* block id: 15 */
        VECTOR(int32_t, 4) l_140 = (VECTOR(int32_t, 4))(0x23BB7C23L, (VECTOR(int32_t, 2))(0x23BB7C23L, 0x374B672EL), 0x374B672EL);
        VECTOR(int32_t, 2) l_152 = (VECTOR(int32_t, 2))(9L, 8L);
        VECTOR(uint32_t, 16) l_187 = (VECTOR(uint32_t, 16))(0x004D9095L, (VECTOR(uint32_t, 4))(0x004D9095L, (VECTOR(uint32_t, 2))(0x004D9095L, 0x8997CAADL), 0x8997CAADL), 0x8997CAADL, 0x004D9095L, 0x8997CAADL, (VECTOR(uint32_t, 2))(0x004D9095L, 0x8997CAADL), (VECTOR(uint32_t, 2))(0x004D9095L, 0x8997CAADL), 0x004D9095L, 0x8997CAADL, 0x004D9095L, 0x8997CAADL);
        int32_t l_197 = 0L;
        int i;
        l_71 = (p_962->g_69 = (p_962->l_comm_values[(safe_mod_func_uint32_t_u_u(p_962->tid, 36))] , &p_59));
        for (p_62 = 0; (p_62 >= 1); p_62 = safe_add_func_int8_t_s_s(p_62, 8))
        { /* block id: 20 */
            int32_t ***l_74[4][6][7] = {{{&p_962->g_69,&p_962->g_69,(void*)0,&l_71,&p_962->g_69,(void*)0,&p_962->g_69},{&p_962->g_69,&p_962->g_69,(void*)0,&l_71,&p_962->g_69,(void*)0,&p_962->g_69},{&p_962->g_69,&p_962->g_69,(void*)0,&l_71,&p_962->g_69,(void*)0,&p_962->g_69},{&p_962->g_69,&p_962->g_69,(void*)0,&l_71,&p_962->g_69,(void*)0,&p_962->g_69},{&p_962->g_69,&p_962->g_69,(void*)0,&l_71,&p_962->g_69,(void*)0,&p_962->g_69},{&p_962->g_69,&p_962->g_69,(void*)0,&l_71,&p_962->g_69,(void*)0,&p_962->g_69}},{{&p_962->g_69,&p_962->g_69,(void*)0,&l_71,&p_962->g_69,(void*)0,&p_962->g_69},{&p_962->g_69,&p_962->g_69,(void*)0,&l_71,&p_962->g_69,(void*)0,&p_962->g_69},{&p_962->g_69,&p_962->g_69,(void*)0,&l_71,&p_962->g_69,(void*)0,&p_962->g_69},{&p_962->g_69,&p_962->g_69,(void*)0,&l_71,&p_962->g_69,(void*)0,&p_962->g_69},{&p_962->g_69,&p_962->g_69,(void*)0,&l_71,&p_962->g_69,(void*)0,&p_962->g_69},{&p_962->g_69,&p_962->g_69,(void*)0,&l_71,&p_962->g_69,(void*)0,&p_962->g_69}},{{&p_962->g_69,&p_962->g_69,(void*)0,&l_71,&p_962->g_69,(void*)0,&p_962->g_69},{&p_962->g_69,&p_962->g_69,(void*)0,&l_71,&p_962->g_69,(void*)0,&p_962->g_69},{&p_962->g_69,&p_962->g_69,(void*)0,&l_71,&p_962->g_69,(void*)0,&p_962->g_69},{&p_962->g_69,&p_962->g_69,(void*)0,&l_71,&p_962->g_69,(void*)0,&p_962->g_69},{&p_962->g_69,&p_962->g_69,(void*)0,&l_71,&p_962->g_69,(void*)0,&p_962->g_69},{&p_962->g_69,&p_962->g_69,(void*)0,&l_71,&p_962->g_69,(void*)0,&p_962->g_69}},{{&p_962->g_69,&p_962->g_69,(void*)0,&l_71,&p_962->g_69,(void*)0,&p_962->g_69},{&p_962->g_69,&p_962->g_69,(void*)0,&l_71,&p_962->g_69,(void*)0,&p_962->g_69},{&p_962->g_69,&p_962->g_69,(void*)0,&l_71,&p_962->g_69,(void*)0,&p_962->g_69},{&p_962->g_69,&p_962->g_69,(void*)0,&l_71,&p_962->g_69,(void*)0,&p_962->g_69},{&p_962->g_69,&p_962->g_69,(void*)0,&l_71,&p_962->g_69,(void*)0,&p_962->g_69},{&p_962->g_69,&p_962->g_69,(void*)0,&l_71,&p_962->g_69,(void*)0,&p_962->g_69}}};
            int32_t l_151 = 0x0A3ED1E9L;
            VECTOR(int32_t, 16) l_153 = (VECTOR(int32_t, 16))(0x498024E2L, (VECTOR(int32_t, 4))(0x498024E2L, (VECTOR(int32_t, 2))(0x498024E2L, 0x0C535739L), 0x0C535739L), 0x0C535739L, 0x498024E2L, 0x0C535739L, (VECTOR(int32_t, 2))(0x498024E2L, 0x0C535739L), (VECTOR(int32_t, 2))(0x498024E2L, 0x0C535739L), 0x498024E2L, 0x0C535739L, 0x498024E2L, 0x0C535739L);
            VECTOR(int32_t, 8) l_156 = (VECTOR(int32_t, 8))(3L, (VECTOR(int32_t, 4))(3L, (VECTOR(int32_t, 2))(3L, 0x5BDCA493L), 0x5BDCA493L), 0x5BDCA493L, 3L, 0x5BDCA493L);
            int8_t *l_169 = (void*)0;
            int8_t *l_170 = &p_962->g_171;
            int8_t *l_172 = &p_962->g_173;
            VECTOR(uint32_t, 4) l_184 = (VECTOR(uint32_t, 4))(8UL, (VECTOR(uint32_t, 2))(8UL, 1UL), 1UL);
            uint16_t *l_192[6][10] = {{(void*)0,&p_962->g_64.f0,&p_962->g_64.f0,(void*)0,&p_962->g_64.f0,(void*)0,(void*)0,&p_962->g_64.f0,(void*)0,(void*)0},{(void*)0,&p_962->g_64.f0,&p_962->g_64.f0,(void*)0,&p_962->g_64.f0,(void*)0,(void*)0,&p_962->g_64.f0,(void*)0,(void*)0},{(void*)0,&p_962->g_64.f0,&p_962->g_64.f0,(void*)0,&p_962->g_64.f0,(void*)0,(void*)0,&p_962->g_64.f0,(void*)0,(void*)0},{(void*)0,&p_962->g_64.f0,&p_962->g_64.f0,(void*)0,&p_962->g_64.f0,(void*)0,(void*)0,&p_962->g_64.f0,(void*)0,(void*)0},{(void*)0,&p_962->g_64.f0,&p_962->g_64.f0,(void*)0,&p_962->g_64.f0,(void*)0,(void*)0,&p_962->g_64.f0,(void*)0,(void*)0},{(void*)0,&p_962->g_64.f0,&p_962->g_64.f0,(void*)0,&p_962->g_64.f0,(void*)0,(void*)0,&p_962->g_64.f0,(void*)0,(void*)0}};
            int32_t *l_193 = (void*)0;
            int32_t *l_194 = &l_151;
            uint64_t *l_195 = (void*)0;
            uint64_t *l_196 = &p_962->g_53;
            int i, j, k;
            if (p_962->g_52[1])
                break;
            if (((p_962->g_69 = &p_59) == l_71))
            { /* block id: 23 */
                uint16_t *l_146 = (void*)0;
                uint16_t *l_147 = (void*)0;
                uint16_t *l_148 = &p_962->g_64.f3;
                int32_t *l_161 = &p_962->g_55[2];
                int32_t l_162 = 0x7515ADF9L;
                if ((atomic_inc(&p_962->g_atomic_input[81 * get_linear_group_id() + 39]) == 8))
                { /* block id: 25 */
                    VECTOR(int32_t, 2) l_75 = (VECTOR(int32_t, 2))(1L, 0x2A37C3ACL);
                    VECTOR(int32_t, 16) l_76 = (VECTOR(int32_t, 16))(0x029B6EDAL, (VECTOR(int32_t, 4))(0x029B6EDAL, (VECTOR(int32_t, 2))(0x029B6EDAL, 0x69983536L), 0x69983536L), 0x69983536L, 0x029B6EDAL, 0x69983536L, (VECTOR(int32_t, 2))(0x029B6EDAL, 0x69983536L), (VECTOR(int32_t, 2))(0x029B6EDAL, 0x69983536L), 0x029B6EDAL, 0x69983536L, 0x029B6EDAL, 0x69983536L);
                    int32_t l_77 = (-1L);
                    int8_t l_78 = (-1L);
                    uint32_t l_79 = 4294967287UL;
                    int16_t l_80[7][2][2] = {{{0x4DA0L,(-1L)},{0x4DA0L,(-1L)}},{{0x4DA0L,(-1L)},{0x4DA0L,(-1L)}},{{0x4DA0L,(-1L)},{0x4DA0L,(-1L)}},{{0x4DA0L,(-1L)},{0x4DA0L,(-1L)}},{{0x4DA0L,(-1L)},{0x4DA0L,(-1L)}},{{0x4DA0L,(-1L)},{0x4DA0L,(-1L)}},{{0x4DA0L,(-1L)},{0x4DA0L,(-1L)}}};
                    VECTOR(int16_t, 8) l_81 = (VECTOR(int16_t, 8))(0x19DBL, (VECTOR(int16_t, 4))(0x19DBL, (VECTOR(int16_t, 2))(0x19DBL, 9L), 9L), 9L, 0x19DBL, 9L);
                    VECTOR(int16_t, 2) l_82 = (VECTOR(int16_t, 2))(1L, 0x73A2L);
                    VECTOR(uint16_t, 8) l_83 = (VECTOR(uint16_t, 8))(0xAFB9L, (VECTOR(uint16_t, 4))(0xAFB9L, (VECTOR(uint16_t, 2))(0xAFB9L, 0x0548L), 0x0548L), 0x0548L, 0xAFB9L, 0x0548L);
                    VECTOR(uint8_t, 4) l_84 = (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 1UL), 1UL);
                    VECTOR(int16_t, 4) l_85 = (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x0527L), 0x0527L);
                    int8_t l_86 = 0x56L;
                    int16_t l_87 = (-1L);
                    uint8_t l_88 = 0xCBL;
                    uint16_t l_89 = 0xE9E1L;
                    uint8_t l_90 = 0x19L;
                    uint32_t l_91[10][8][3] = {{{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L}},{{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L}},{{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L}},{{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L}},{{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L}},{{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L}},{{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L}},{{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L}},{{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L}},{{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L},{0x9CFEDF41L,0x315420A8L,0x315420A8L}}};
                    int32_t l_92 = 0x435FD513L;
                    uint16_t l_93 = 0xBA21L;
                    uint16_t l_94 = 0x8771L;
                    int32_t l_95 = 0x0FF7F8D1L;
                    uint16_t l_96 = 65535UL;
                    int64_t l_97 = 0x32788347750682C5L;
                    int16_t l_98 = 0x23B2L;
                    int8_t l_99 = 1L;
                    uint32_t l_100 = 1UL;
                    VECTOR(int32_t, 16) l_101 = (VECTOR(int32_t, 16))(0x3773156CL, (VECTOR(int32_t, 4))(0x3773156CL, (VECTOR(int32_t, 2))(0x3773156CL, 0x13B7DAF6L), 0x13B7DAF6L), 0x13B7DAF6L, 0x3773156CL, 0x13B7DAF6L, (VECTOR(int32_t, 2))(0x3773156CL, 0x13B7DAF6L), (VECTOR(int32_t, 2))(0x3773156CL, 0x13B7DAF6L), 0x3773156CL, 0x13B7DAF6L, 0x3773156CL, 0x13B7DAF6L);
                    int32_t l_102 = 3L;
                    int8_t l_103 = 0L;
                    VECTOR(int16_t, 4) l_104 = (VECTOR(int16_t, 4))(0x2F7BL, (VECTOR(int16_t, 2))(0x2F7BL, 0x38FDL), 0x38FDL);
                    VECTOR(int16_t, 4) l_105 = (VECTOR(int16_t, 4))(0x04F4L, (VECTOR(int16_t, 2))(0x04F4L, 0x2EDBL), 0x2EDBL);
                    VECTOR(int8_t, 16) l_106 = (VECTOR(int8_t, 16))(0x40L, (VECTOR(int8_t, 4))(0x40L, (VECTOR(int8_t, 2))(0x40L, 0x3DL), 0x3DL), 0x3DL, 0x40L, 0x3DL, (VECTOR(int8_t, 2))(0x40L, 0x3DL), (VECTOR(int8_t, 2))(0x40L, 0x3DL), 0x40L, 0x3DL, 0x40L, 0x3DL);
                    VECTOR(int8_t, 4) l_107 = (VECTOR(int8_t, 4))(0x7FL, (VECTOR(int8_t, 2))(0x7FL, 0x3CL), 0x3CL);
                    VECTOR(int8_t, 8) l_108 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0L), 0L), 0L, 1L, 0L);
                    VECTOR(int8_t, 16) l_109 = (VECTOR(int8_t, 16))(0x2BL, (VECTOR(int8_t, 4))(0x2BL, (VECTOR(int8_t, 2))(0x2BL, 0x3EL), 0x3EL), 0x3EL, 0x2BL, 0x3EL, (VECTOR(int8_t, 2))(0x2BL, 0x3EL), (VECTOR(int8_t, 2))(0x2BL, 0x3EL), 0x2BL, 0x3EL, 0x2BL, 0x3EL);
                    VECTOR(int8_t, 2) l_110 = (VECTOR(int8_t, 2))((-9L), 5L);
                    uint32_t l_111 = 0x7099D399L;
                    VECTOR(int8_t, 2) l_112 = (VECTOR(int8_t, 2))(0x15L, (-5L));
                    VECTOR(int8_t, 2) l_113 = (VECTOR(int8_t, 2))(0L, 0x0FL);
                    VECTOR(int8_t, 16) l_114 = (VECTOR(int8_t, 16))((-5L), (VECTOR(int8_t, 4))((-5L), (VECTOR(int8_t, 2))((-5L), 0L), 0L), 0L, (-5L), 0L, (VECTOR(int8_t, 2))((-5L), 0L), (VECTOR(int8_t, 2))((-5L), 0L), (-5L), 0L, (-5L), 0L);
                    uint32_t l_115 = 0x4A0ED782L;
                    VECTOR(int8_t, 16) l_116 = (VECTOR(int8_t, 16))(0x0AL, (VECTOR(int8_t, 4))(0x0AL, (VECTOR(int8_t, 2))(0x0AL, 1L), 1L), 1L, 0x0AL, 1L, (VECTOR(int8_t, 2))(0x0AL, 1L), (VECTOR(int8_t, 2))(0x0AL, 1L), 0x0AL, 1L, 0x0AL, 1L);
                    VECTOR(int8_t, 8) l_117 = (VECTOR(int8_t, 8))((-9L), (VECTOR(int8_t, 4))((-9L), (VECTOR(int8_t, 2))((-9L), (-10L)), (-10L)), (-10L), (-9L), (-10L));
                    VECTOR(int8_t, 4) l_118 = (VECTOR(int8_t, 4))(3L, (VECTOR(int8_t, 2))(3L, (-1L)), (-1L));
                    VECTOR(int8_t, 16) l_119 = (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x4FL), 0x4FL), 0x4FL, 0L, 0x4FL, (VECTOR(int8_t, 2))(0L, 0x4FL), (VECTOR(int8_t, 2))(0L, 0x4FL), 0L, 0x4FL, 0L, 0x4FL);
                    VECTOR(int8_t, 2) l_120 = (VECTOR(int8_t, 2))(0x68L, (-4L));
                    VECTOR(int8_t, 16) l_121 = (VECTOR(int8_t, 16))(0x31L, (VECTOR(int8_t, 4))(0x31L, (VECTOR(int8_t, 2))(0x31L, 1L), 1L), 1L, 0x31L, 1L, (VECTOR(int8_t, 2))(0x31L, 1L), (VECTOR(int8_t, 2))(0x31L, 1L), 0x31L, 1L, 0x31L, 1L);
                    VECTOR(int8_t, 8) l_122 = (VECTOR(int8_t, 8))(0x55L, (VECTOR(int8_t, 4))(0x55L, (VECTOR(int8_t, 2))(0x55L, 0L), 0L), 0L, 0x55L, 0L);
                    VECTOR(int8_t, 2) l_123 = (VECTOR(int8_t, 2))(1L, 0x11L);
                    VECTOR(int8_t, 16) l_124 = (VECTOR(int8_t, 16))(8L, (VECTOR(int8_t, 4))(8L, (VECTOR(int8_t, 2))(8L, 0x17L), 0x17L), 0x17L, 8L, 0x17L, (VECTOR(int8_t, 2))(8L, 0x17L), (VECTOR(int8_t, 2))(8L, 0x17L), 8L, 0x17L, 8L, 0x17L);
                    VECTOR(int8_t, 4) l_125 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x30L), 0x30L);
                    uint8_t l_126 = 4UL;
                    uint32_t l_127[6];
                    uint32_t l_128 = 0x2E1AEE11L;
                    VECTOR(int8_t, 16) l_129 = (VECTOR(int8_t, 16))(0x72L, (VECTOR(int8_t, 4))(0x72L, (VECTOR(int8_t, 2))(0x72L, 5L), 5L), 5L, 0x72L, 5L, (VECTOR(int8_t, 2))(0x72L, 5L), (VECTOR(int8_t, 2))(0x72L, 5L), 0x72L, 5L, 0x72L, 5L);
                    uint64_t l_130 = 0xF736ED2B4DC35AD3L;
                    VECTOR(int8_t, 8) l_131 = (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x5CL), 0x5CL), 0x5CL, 0L, 0x5CL);
                    int8_t l_132 = 0L;
                    int16_t l_133 = 0x6154L;
                    uint16_t l_134 = 0x7C0CL;
                    uint64_t l_135 = 0x90806AD61A950A55L;
                    uint32_t l_136 = 5UL;
                    uint64_t l_137 = 1UL;
                    int8_t l_138 = 0L;
                    int i, j, k;
                    for (i = 0; i < 6; i++)
                        l_127[i] = 0x566A7C84L;
                    l_100 &= ((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0L, 9L)).yxxxxyxy)).s22, ((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(l_75.xy)).yxyyyyyyxxxyyxyy, ((VECTOR(int32_t, 8))(l_76.sf110b0f3)).s6720356602746574, ((VECTOR(int32_t, 8))((-1L), 0L, l_77, ((VECTOR(int32_t, 2))(1L, 1L)), l_78, 0x42A5DE23L, 7L)).s7346632654645360))).s99)).xyxx, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 8))((-4L), l_79, ((l_98 = (l_97 = (l_96 = ((l_95 = (((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 16))(mad_sat(((VECTOR(int16_t, 4))((-1L), (l_80[4][1][1] , 0L), (-1L), 2L)).yywyzxzxwzxyzwxx, ((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 8))(safe_clamp_func(VECTOR(int16_t, 8),VECTOR(int16_t, 8),((VECTOR(int16_t, 8))(6L, ((VECTOR(int16_t, 4))(l_81.s1403)), ((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(safe_clamp_func(VECTOR(int16_t, 4),VECTOR(int16_t, 4),((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(l_82.xyyyyyyx)).hi)), (-1L), ((VECTOR(int16_t, 2))(9L, 0x26F3L)), 0x0571L, 0x6ABEL, ((((VECTOR(uint32_t, 2))(upsample(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(l_83.s13)), ((VECTOR(uint16_t, 2))(min(((VECTOR(uint16_t, 8))(upsample(((VECTOR(uint8_t, 4))(GROUP_DIVERGE(2, 1), 8UL, 0xB3L, 0xA5L)).yzxxzyyw, ((VECTOR(uint8_t, 16))(l_84.wwzzwwzxywyxzyxx)).odd))).s44, ((VECTOR(uint16_t, 16))(abs(((VECTOR(int16_t, 2))(l_85.yw)).xxyyxyyyxyyxxxyy))).s90))), 65535UL, l_86, 65532UL, 65535UL)).s42, ((VECTOR(uint16_t, 2))(abs(((VECTOR(uint16_t, 8))(safe_clamp_func(VECTOR(uint16_t, 8),VECTOR(uint16_t, 8),((VECTOR(uint16_t, 16))(65528UL, 9UL, ((VECTOR(uint16_t, 2))(0xFEE0L, 65529UL)), 0UL, 65531UL, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(0x3A54L, 1UL)).yyyx)), 65533UL, 0xB645L, ((l_88 &= l_87) , (l_89 , l_90)), ((VECTOR(uint16_t, 2))(0x3A1BL)), 0x5DFEL)).odd, ((VECTOR(uint16_t, 8))(0UL)), ((VECTOR(uint16_t, 8))(65526UL))))).s74)))))).even , l_91[6][0][0]) , l_92), ((VECTOR(int16_t, 4))((-5L))), (-1L), 0x7FABL)).s6c5f, ((VECTOR(int16_t, 4))((-1L))), ((VECTOR(int16_t, 4))(1L))))), l_93, l_94, (-9L), (-9L))).s21, ((VECTOR(int16_t, 2))(0x7CA0L))))), 5L)), ((VECTOR(int16_t, 8))(0x7A6CL)), ((VECTOR(int16_t, 8))(0x1135L))))).s61, ((VECTOR(int16_t, 2))(0x207AL)), ((VECTOR(int16_t, 2))(0x590FL))))).yxyyyyyyxyyxyyyy, ((VECTOR(int16_t, 16))(0L))))).even, ((VECTOR(int16_t, 8))(0L)), ((VECTOR(int16_t, 8))(6L))))).s4 , 0L)) , 18446744073709551611UL)))) , l_99), 0x55DE960EL, (-1L), ((VECTOR(int32_t, 2))(1L)), 0x02F7E15FL)).s5467311115224100, ((VECTOR(int32_t, 16))(0L))))).s28)), 1L, 0x281E9DA6L)), ((VECTOR(int32_t, 4))(1L))))).yxyyyyzy, ((VECTOR(int32_t, 8))(0x2FC398B0L)), ((VECTOR(int32_t, 8))((-1L)))))).s73))).lo;
                    l_136 = (l_135 = ((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 4))(l_101.see45)), ((VECTOR(int32_t, 16))((l_103 = l_102), ((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 16))(0x1FFEL, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(l_104.zxyxwwxy)).hi)))))), ((VECTOR(int16_t, 2))(clz(((VECTOR(int16_t, 16))(l_105.ywzxwwwzzxyzxyzw)).sff))), ((VECTOR(int16_t, 8))(upsample(((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 8))(l_106.s69592194)).s20, ((VECTOR(int8_t, 8))(min(((VECTOR(int8_t, 8))(9L, ((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 4))(l_107.wxxw)), ((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 8))(l_108.s25124024)).even, ((VECTOR(int8_t, 2))(l_109.s33)).yxxy, ((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 2))(0x6BL, 0x1EL)).xxxx, ((VECTOR(int8_t, 8))(mad_sat(((VECTOR(int8_t, 2))(4L, 0x56L)).xxyyyxyy, ((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(l_110.yyyyxyxy)).even)), ((VECTOR(int8_t, 16))((l_111 , 0L), (-4L), 1L, (-3L), 0x0DL, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(l_112.xxxx)).lo)), 0x6AL, (-9L))), ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(l_113.xyxxxyyy)))).hi, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(0x33L, ((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(l_114.sa6)), (-5L), l_115, ((VECTOR(int8_t, 2))(0x6AL, 0x77L)), 0x51L, 9L)).s61, ((VECTOR(int8_t, 2))((-1L), (-1L))), ((VECTOR(int8_t, 2))(l_116.sc8))))), 0x1BL)).wywwwxzx)).odd))).odd, ((VECTOR(int8_t, 8))(l_117.s03201271)).s05))), ((VECTOR(int8_t, 2))(l_118.wx)), (-1L), ((VECTOR(int8_t, 2))((-3L), 0x67L)), 0x14L)), 0x30L, 6L, 0x34L)).sefad))).yyzwxyyy, ((VECTOR(int8_t, 16))(l_119.s902fec5d80e87108)).even))).even, ((VECTOR(int8_t, 16))(l_120.yxyyyyxyxyxyyxxx)).sf944))).even, ((VECTOR(int8_t, 2))(l_121.s97)), ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))((-1L), 6L, 1L, 1L)).wzwwzwxzxxyzwyxz)).s7d))).yyxy))).even, ((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 8))(l_122.s46416321)).odd, ((VECTOR(int8_t, 8))(l_123.xxyyxxyx)).hi))).ywwywwxzwyyzxyzx, ((VECTOR(int8_t, 2))(l_124.s3b)).xyxyxyyxxyyxyxyy, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(l_125.wxzx)), 0x55L, (l_128 = (l_126 , l_127[5])), 0x3EL, 4L)).s4050173376456212))).s20, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(0L, 1L)), (-7L), 0L)).hi))), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(1L, 1L, ((VECTOR(int8_t, 2))(l_129.sfe)).even, 0x7BL, ((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 8))((-1L), l_130, ((VECTOR(int8_t, 2))(0x35L)), 0x74L, l_131.s6, 0x33L, 0x4AL)).lo, ((VECTOR(int8_t, 4))(0x56L))))), 0x4EL, ((VECTOR(int8_t, 4))(0x19L)), (-7L), (-5L), (-9L))).scaa4)).lo))).xxyyyyxx, ((VECTOR(int8_t, 8))(0x73L))))).odd, ((VECTOR(int8_t, 4))(0x3DL))))).w, l_132, ((VECTOR(int8_t, 4))((-10L))), 0x65L)), (int8_t)l_133))).s22))).yyyyyyxy, ((VECTOR(uint8_t, 8))(4UL))))), 0x1E76L)).se4, ((VECTOR(uint16_t, 2))(1UL))))), l_134, ((VECTOR(int32_t, 4))(0x382317CBL)), ((VECTOR(int32_t, 8))(6L)))).sc1d1)))))).wzxyzwwwzzzwxyyy, ((VECTOR(int32_t, 16))(0x5A2E4B3AL))))).sa);
                    l_138 = l_137;
                    unsigned int result = 0;
                    result += l_75.y;
                    result += l_75.x;
                    result += l_76.sf;
                    result += l_76.se;
                    result += l_76.sd;
                    result += l_76.sc;
                    result += l_76.sb;
                    result += l_76.sa;
                    result += l_76.s9;
                    result += l_76.s8;
                    result += l_76.s7;
                    result += l_76.s6;
                    result += l_76.s5;
                    result += l_76.s4;
                    result += l_76.s3;
                    result += l_76.s2;
                    result += l_76.s1;
                    result += l_76.s0;
                    result += l_77;
                    result += l_78;
                    result += l_79;
                    int l_80_i0, l_80_i1, l_80_i2;
                    for (l_80_i0 = 0; l_80_i0 < 7; l_80_i0++) {
                        for (l_80_i1 = 0; l_80_i1 < 2; l_80_i1++) {
                            for (l_80_i2 = 0; l_80_i2 < 2; l_80_i2++) {
                                result += l_80[l_80_i0][l_80_i1][l_80_i2];
                            }
                        }
                    }
                    result += l_81.s7;
                    result += l_81.s6;
                    result += l_81.s5;
                    result += l_81.s4;
                    result += l_81.s3;
                    result += l_81.s2;
                    result += l_81.s1;
                    result += l_81.s0;
                    result += l_82.y;
                    result += l_82.x;
                    result += l_83.s7;
                    result += l_83.s6;
                    result += l_83.s5;
                    result += l_83.s4;
                    result += l_83.s3;
                    result += l_83.s2;
                    result += l_83.s1;
                    result += l_83.s0;
                    result += l_84.w;
                    result += l_84.z;
                    result += l_84.y;
                    result += l_84.x;
                    result += l_85.w;
                    result += l_85.z;
                    result += l_85.y;
                    result += l_85.x;
                    result += l_86;
                    result += l_87;
                    result += l_88;
                    result += l_89;
                    result += l_90;
                    int l_91_i0, l_91_i1, l_91_i2;
                    for (l_91_i0 = 0; l_91_i0 < 10; l_91_i0++) {
                        for (l_91_i1 = 0; l_91_i1 < 8; l_91_i1++) {
                            for (l_91_i2 = 0; l_91_i2 < 3; l_91_i2++) {
                                result += l_91[l_91_i0][l_91_i1][l_91_i2];
                            }
                        }
                    }
                    result += l_92;
                    result += l_93;
                    result += l_94;
                    result += l_95;
                    result += l_96;
                    result += l_97;
                    result += l_98;
                    result += l_99;
                    result += l_100;
                    result += l_101.sf;
                    result += l_101.se;
                    result += l_101.sd;
                    result += l_101.sc;
                    result += l_101.sb;
                    result += l_101.sa;
                    result += l_101.s9;
                    result += l_101.s8;
                    result += l_101.s7;
                    result += l_101.s6;
                    result += l_101.s5;
                    result += l_101.s4;
                    result += l_101.s3;
                    result += l_101.s2;
                    result += l_101.s1;
                    result += l_101.s0;
                    result += l_102;
                    result += l_103;
                    result += l_104.w;
                    result += l_104.z;
                    result += l_104.y;
                    result += l_104.x;
                    result += l_105.w;
                    result += l_105.z;
                    result += l_105.y;
                    result += l_105.x;
                    result += l_106.sf;
                    result += l_106.se;
                    result += l_106.sd;
                    result += l_106.sc;
                    result += l_106.sb;
                    result += l_106.sa;
                    result += l_106.s9;
                    result += l_106.s8;
                    result += l_106.s7;
                    result += l_106.s6;
                    result += l_106.s5;
                    result += l_106.s4;
                    result += l_106.s3;
                    result += l_106.s2;
                    result += l_106.s1;
                    result += l_106.s0;
                    result += l_107.w;
                    result += l_107.z;
                    result += l_107.y;
                    result += l_107.x;
                    result += l_108.s7;
                    result += l_108.s6;
                    result += l_108.s5;
                    result += l_108.s4;
                    result += l_108.s3;
                    result += l_108.s2;
                    result += l_108.s1;
                    result += l_108.s0;
                    result += l_109.sf;
                    result += l_109.se;
                    result += l_109.sd;
                    result += l_109.sc;
                    result += l_109.sb;
                    result += l_109.sa;
                    result += l_109.s9;
                    result += l_109.s8;
                    result += l_109.s7;
                    result += l_109.s6;
                    result += l_109.s5;
                    result += l_109.s4;
                    result += l_109.s3;
                    result += l_109.s2;
                    result += l_109.s1;
                    result += l_109.s0;
                    result += l_110.y;
                    result += l_110.x;
                    result += l_111;
                    result += l_112.y;
                    result += l_112.x;
                    result += l_113.y;
                    result += l_113.x;
                    result += l_114.sf;
                    result += l_114.se;
                    result += l_114.sd;
                    result += l_114.sc;
                    result += l_114.sb;
                    result += l_114.sa;
                    result += l_114.s9;
                    result += l_114.s8;
                    result += l_114.s7;
                    result += l_114.s6;
                    result += l_114.s5;
                    result += l_114.s4;
                    result += l_114.s3;
                    result += l_114.s2;
                    result += l_114.s1;
                    result += l_114.s0;
                    result += l_115;
                    result += l_116.sf;
                    result += l_116.se;
                    result += l_116.sd;
                    result += l_116.sc;
                    result += l_116.sb;
                    result += l_116.sa;
                    result += l_116.s9;
                    result += l_116.s8;
                    result += l_116.s7;
                    result += l_116.s6;
                    result += l_116.s5;
                    result += l_116.s4;
                    result += l_116.s3;
                    result += l_116.s2;
                    result += l_116.s1;
                    result += l_116.s0;
                    result += l_117.s7;
                    result += l_117.s6;
                    result += l_117.s5;
                    result += l_117.s4;
                    result += l_117.s3;
                    result += l_117.s2;
                    result += l_117.s1;
                    result += l_117.s0;
                    result += l_118.w;
                    result += l_118.z;
                    result += l_118.y;
                    result += l_118.x;
                    result += l_119.sf;
                    result += l_119.se;
                    result += l_119.sd;
                    result += l_119.sc;
                    result += l_119.sb;
                    result += l_119.sa;
                    result += l_119.s9;
                    result += l_119.s8;
                    result += l_119.s7;
                    result += l_119.s6;
                    result += l_119.s5;
                    result += l_119.s4;
                    result += l_119.s3;
                    result += l_119.s2;
                    result += l_119.s1;
                    result += l_119.s0;
                    result += l_120.y;
                    result += l_120.x;
                    result += l_121.sf;
                    result += l_121.se;
                    result += l_121.sd;
                    result += l_121.sc;
                    result += l_121.sb;
                    result += l_121.sa;
                    result += l_121.s9;
                    result += l_121.s8;
                    result += l_121.s7;
                    result += l_121.s6;
                    result += l_121.s5;
                    result += l_121.s4;
                    result += l_121.s3;
                    result += l_121.s2;
                    result += l_121.s1;
                    result += l_121.s0;
                    result += l_122.s7;
                    result += l_122.s6;
                    result += l_122.s5;
                    result += l_122.s4;
                    result += l_122.s3;
                    result += l_122.s2;
                    result += l_122.s1;
                    result += l_122.s0;
                    result += l_123.y;
                    result += l_123.x;
                    result += l_124.sf;
                    result += l_124.se;
                    result += l_124.sd;
                    result += l_124.sc;
                    result += l_124.sb;
                    result += l_124.sa;
                    result += l_124.s9;
                    result += l_124.s8;
                    result += l_124.s7;
                    result += l_124.s6;
                    result += l_124.s5;
                    result += l_124.s4;
                    result += l_124.s3;
                    result += l_124.s2;
                    result += l_124.s1;
                    result += l_124.s0;
                    result += l_125.w;
                    result += l_125.z;
                    result += l_125.y;
                    result += l_125.x;
                    result += l_126;
                    int l_127_i0;
                    for (l_127_i0 = 0; l_127_i0 < 6; l_127_i0++) {
                        result += l_127[l_127_i0];
                    }
                    result += l_128;
                    result += l_129.sf;
                    result += l_129.se;
                    result += l_129.sd;
                    result += l_129.sc;
                    result += l_129.sb;
                    result += l_129.sa;
                    result += l_129.s9;
                    result += l_129.s8;
                    result += l_129.s7;
                    result += l_129.s6;
                    result += l_129.s5;
                    result += l_129.s4;
                    result += l_129.s3;
                    result += l_129.s2;
                    result += l_129.s1;
                    result += l_129.s0;
                    result += l_130;
                    result += l_131.s7;
                    result += l_131.s6;
                    result += l_131.s5;
                    result += l_131.s4;
                    result += l_131.s3;
                    result += l_131.s2;
                    result += l_131.s1;
                    result += l_131.s0;
                    result += l_132;
                    result += l_133;
                    result += l_134;
                    result += l_135;
                    result += l_136;
                    result += l_137;
                    result += l_138;
                    atomic_add(&p_962->g_special_values[81 * get_linear_group_id() + 39], result);
                }
                else
                { /* block id: 37 */
                    (1 + 1);
                }
                p_962->g_69 = (p_962->g_139 = p_962->g_139);
                l_162 |= ((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(l_140.yyyw)).yxxywzyy, ((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(p_962->g_141.wwxz)).odd, ((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 8))(p_962->g_142.yxxyxyxx)), ((VECTOR(int32_t, 8))((p_62 && (((void*)0 == &p_59) != (safe_rshift_func_int8_t_s_u(((p_962->g_145[1] &= (&p_962->g_139 != (void*)0)) || ((++(*l_148)) == l_151)), p_62)))), 0x45AFB680L, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(l_152.xxyyyyxyyyxxxyxy)).s5a8a)), 0x19678D91L, (-1L)))))).s32, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(l_153.sdc325ac4a7598e73)))).sd7, ((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))(0L, 0x1B5E5F98L)).yyyxyyyx, ((VECTOR(int32_t, 2))(0x4F20DE4EL, (-1L))).xxyxxyxy, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(l_154.s8be8)).zwxwxzxzxxzxyxwy)).even))))).s46))).xxxxyxyy, ((VECTOR(int32_t, 4))(l_155.s2176)).wzwzyxxz))).s70, ((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_156.s03)).yyyy)).xwwzwxzw, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),int32_t,((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))((p_962->g_157 , (safe_add_func_uint32_t_u_u((((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(mad_sat(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(p_962->g_160.yxyxxxyy)), ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(0xF4103FC8L, ((((*p_962->g_139) = p_60) != l_161) ^ p_962->g_13), l_155.s3, ((VECTOR(uint32_t, 8))(1UL)), ((VECTOR(uint32_t, 4))(0x2CF00CDCL)), 0x3CE81F65L)).lo)))))), ((VECTOR(uint32_t, 16))(0x6F18D495L)), ((VECTOR(uint32_t, 16))(0x4C520DF3L))))).sef87)), ((VECTOR(uint32_t, 4))(0UL)), 4294967295UL, l_152.y, 0x92751E0DL, ((VECTOR(uint32_t, 2))(0x93890007L)), ((VECTOR(uint32_t, 2))(9UL)), 0x42E75D6BL)).sb ^ 0x54241E11L), l_155.s2))), ((VECTOR(int32_t, 2))(0x6FD15D32L)), (-1L), l_155.s2, ((VECTOR(int32_t, 2))(7L)), 1L)).odd)).lo, (int32_t)0x0A8F4C84L, (int32_t)p_962->g_47.s0))))).yyxxxxyx))).even)).lo, ((VECTOR(int32_t, 2))(8L)), ((VECTOR(int32_t, 2))(0x06CF6C5BL))))).xxyxyyyy)).odd, ((VECTOR(int32_t, 4))(0x72AF577FL))))).zzxwwyzxwwzyzxzy, ((VECTOR(int32_t, 16))(0L)), ((VECTOR(int32_t, 16))(0x6E9E9492L))))).s63))), ((VECTOR(int32_t, 2))(0x0F945985L))))), ((VECTOR(int32_t, 2))(0L))))).even, (-9L), (*p_60), ((VECTOR(int32_t, 4))(0x5F825B94L)), 1L)), (int32_t)(*p_60)))).s17, ((VECTOR(int32_t, 2))(8L))))).yyyxyyyy, ((VECTOR(int32_t, 8))(0x09878D38L))))).s1;
            }
            else
            { /* block id: 46 */
                return &p_962->g_64;
            }
            atomic_sub(&p_962->l_atomic_reduction[0], (((*l_196) &= (safe_rshift_func_int8_t_s_u(l_154.s3, (GROUP_DIVERGE(1, 1) && ((VECTOR(int32_t, 8))(((-2L) || (((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(p_962->g_165.s47af)), 0x45L, ((VECTOR(uint8_t, 2))(p_962->g_166.s26)), 0x0BL)).lo)).z > ((safe_lshift_func_int8_t_s_u(((*l_172) = (l_140.y = ((*l_170) = (-1L)))), ((safe_sub_func_int32_t_s_s(((*l_194) = ((l_152.x > (p_962->g_64.f3 &= (safe_rshift_func_int16_t_s_u(l_152.y, (safe_rshift_func_uint8_t_u_s(((safe_sub_func_uint8_t_u_u((((0L || ((safe_sub_func_uint16_t_u_u(0x151BL, (((VECTOR(uint32_t, 8))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(l_184.xzwy)).ywzzzwzyywwwxwzx)).hi, ((VECTOR(uint32_t, 2))(4294967295UL, 4294967295UL)).xyyxyxyx, ((VECTOR(uint32_t, 8))(min(((VECTOR(uint32_t, 4))(l_185.s3f5a)).zwyxzxzx, ((VECTOR(uint32_t, 4))(mad_hi(((VECTOR(uint32_t, 16))(p_962->g_186.s1112207305516611)).s5e1b, ((VECTOR(uint32_t, 2))(l_187.se3)).yyxx, ((VECTOR(uint32_t, 16))(add_sat(((VECTOR(uint32_t, 4))(p_962->g_188.se1e9)).xzzzzywxywwyywxy, ((VECTOR(uint32_t, 4))(l_189.xxxx)).yyxzyxzyzwzzyywz))).se606))).wwwxwyzy)))))).s3 > GROUP_DIVERGE(0, 1)))) & (safe_rshift_func_int16_t_s_u(p_962->g_142.y, ((~(0L && (*p_61))) < 0x3E7AL))))) , p_62) >= 0x1EL), l_151)) , p_962->g_188.sf), 4)))))) , (-1L))), (*p_60))) >= l_152.x))) < (*p_61)))), 0x0B51C1F9L, 0x7E23A00BL, 7L, ((VECTOR(int32_t, 4))(2L)))).s3)))) >= l_152.x) + get_linear_global_id());
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            if (get_linear_local_id() == 0)
                p_962->v_collective += p_962->l_atomic_reduction[0];
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        }
        if (l_197)
            continue;
    }
    p_60 = l_198[5];
    return l_200;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[81];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 81; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[81];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 81; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[36];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 36; i++)
            l_comm_values[i] = 1;
    struct S1 c_963;
    struct S1* p_962 = &c_963;
    struct S1 c_964 = {
        0L, // p_962->g_13
        (VECTOR(uint32_t, 8))(0xECB5CB1BL, (VECTOR(uint32_t, 4))(0xECB5CB1BL, (VECTOR(uint32_t, 2))(0xECB5CB1BL, 0xA424ACDFL), 0xA424ACDFL), 0xA424ACDFL, 0xECB5CB1BL, 0xA424ACDFL), // p_962->g_47
        {1UL,1UL,1UL,1UL,1UL,1UL}, // p_962->g_52
        1UL, // p_962->g_53
        {0x145C66B3L,0x115E3087L,0x145C66B3L,0x145C66B3L,0x115E3087L,0x145C66B3L,0x145C66B3L,0x115E3087L,0x145C66B3L}, // p_962->g_55
        {0x15B6L,0x7429L,0x23EBAA2DL,0x500CL,-6L}, // p_962->g_64
        &p_962->g_64, // p_962->g_63
        &p_962->g_55[5], // p_962->g_70
        &p_962->g_70, // p_962->g_69
        &p_962->g_70, // p_962->g_139
        (VECTOR(int32_t, 4))(0x23239615L, (VECTOR(int32_t, 2))(0x23239615L, 0x72B1258CL), 0x72B1258CL), // p_962->g_141
        (VECTOR(int32_t, 2))(0x3A9EA097L, 1L), // p_962->g_142
        {(-1L),(-1L),(-1L)}, // p_962->g_145
        {0xDC1BL,0x15D8L,1L,0x0963L,8L}, // p_962->g_157
        (VECTOR(uint32_t, 2))(0x187E54C4L, 4294967294UL), // p_962->g_160
        (VECTOR(uint8_t, 16))(0xFEL, (VECTOR(uint8_t, 4))(0xFEL, (VECTOR(uint8_t, 2))(0xFEL, 0UL), 0UL), 0UL, 0xFEL, 0UL, (VECTOR(uint8_t, 2))(0xFEL, 0UL), (VECTOR(uint8_t, 2))(0xFEL, 0UL), 0xFEL, 0UL, 0xFEL, 0UL), // p_962->g_165
        (VECTOR(uint8_t, 8))(0x0DL, (VECTOR(uint8_t, 4))(0x0DL, (VECTOR(uint8_t, 2))(0x0DL, 255UL), 255UL), 255UL, 0x0DL, 255UL), // p_962->g_166
        0x1EL, // p_962->g_171
        0x24L, // p_962->g_173
        (VECTOR(uint32_t, 8))(0x1D0E754DL, (VECTOR(uint32_t, 4))(0x1D0E754DL, (VECTOR(uint32_t, 2))(0x1D0E754DL, 0xA6F8F695L), 0xA6F8F695L), 0xA6F8F695L, 0x1D0E754DL, 0xA6F8F695L), // p_962->g_186
        (VECTOR(uint32_t, 16))(0xBD740177L, (VECTOR(uint32_t, 4))(0xBD740177L, (VECTOR(uint32_t, 2))(0xBD740177L, 0xF09F02BEL), 0xF09F02BEL), 0xF09F02BEL, 0xBD740177L, 0xF09F02BEL, (VECTOR(uint32_t, 2))(0xBD740177L, 0xF09F02BEL), (VECTOR(uint32_t, 2))(0xBD740177L, 0xF09F02BEL), 0xBD740177L, 0xF09F02BEL, 0xBD740177L, 0xF09F02BEL), // p_962->g_188
        &p_962->g_63, // p_962->g_201
        (void*)0, // p_962->g_208
        &p_962->g_208, // p_962->g_207
        {&p_962->g_63,&p_962->g_63,&p_962->g_63,&p_962->g_63,&p_962->g_63,&p_962->g_63,&p_962->g_63}, // p_962->g_223
        &p_962->g_223[4], // p_962->g_222
        &p_962->g_208, // p_962->g_225
        (void*)0, // p_962->g_228
        (void*)0, // p_962->g_229
        (void*)0, // p_962->g_230
        (void*)0, // p_962->g_231
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_962->g_232
        {{{&p_962->g_13,(void*)0,(void*)0,&p_962->g_13,&p_962->g_13,&p_962->g_13},{&p_962->g_13,(void*)0,(void*)0,&p_962->g_13,&p_962->g_13,&p_962->g_13},{&p_962->g_13,(void*)0,(void*)0,&p_962->g_13,&p_962->g_13,&p_962->g_13}},{{&p_962->g_13,(void*)0,(void*)0,&p_962->g_13,&p_962->g_13,&p_962->g_13},{&p_962->g_13,(void*)0,(void*)0,&p_962->g_13,&p_962->g_13,&p_962->g_13},{&p_962->g_13,(void*)0,(void*)0,&p_962->g_13,&p_962->g_13,&p_962->g_13}},{{&p_962->g_13,(void*)0,(void*)0,&p_962->g_13,&p_962->g_13,&p_962->g_13},{&p_962->g_13,(void*)0,(void*)0,&p_962->g_13,&p_962->g_13,&p_962->g_13},{&p_962->g_13,(void*)0,(void*)0,&p_962->g_13,&p_962->g_13,&p_962->g_13}},{{&p_962->g_13,(void*)0,(void*)0,&p_962->g_13,&p_962->g_13,&p_962->g_13},{&p_962->g_13,(void*)0,(void*)0,&p_962->g_13,&p_962->g_13,&p_962->g_13},{&p_962->g_13,(void*)0,(void*)0,&p_962->g_13,&p_962->g_13,&p_962->g_13}},{{&p_962->g_13,(void*)0,(void*)0,&p_962->g_13,&p_962->g_13,&p_962->g_13},{&p_962->g_13,(void*)0,(void*)0,&p_962->g_13,&p_962->g_13,&p_962->g_13},{&p_962->g_13,(void*)0,(void*)0,&p_962->g_13,&p_962->g_13,&p_962->g_13}},{{&p_962->g_13,(void*)0,(void*)0,&p_962->g_13,&p_962->g_13,&p_962->g_13},{&p_962->g_13,(void*)0,(void*)0,&p_962->g_13,&p_962->g_13,&p_962->g_13},{&p_962->g_13,(void*)0,(void*)0,&p_962->g_13,&p_962->g_13,&p_962->g_13}},{{&p_962->g_13,(void*)0,(void*)0,&p_962->g_13,&p_962->g_13,&p_962->g_13},{&p_962->g_13,(void*)0,(void*)0,&p_962->g_13,&p_962->g_13,&p_962->g_13},{&p_962->g_13,(void*)0,(void*)0,&p_962->g_13,&p_962->g_13,&p_962->g_13}},{{&p_962->g_13,(void*)0,(void*)0,&p_962->g_13,&p_962->g_13,&p_962->g_13},{&p_962->g_13,(void*)0,(void*)0,&p_962->g_13,&p_962->g_13,&p_962->g_13},{&p_962->g_13,(void*)0,(void*)0,&p_962->g_13,&p_962->g_13,&p_962->g_13}},{{&p_962->g_13,(void*)0,(void*)0,&p_962->g_13,&p_962->g_13,&p_962->g_13},{&p_962->g_13,(void*)0,(void*)0,&p_962->g_13,&p_962->g_13,&p_962->g_13},{&p_962->g_13,(void*)0,(void*)0,&p_962->g_13,&p_962->g_13,&p_962->g_13}}}, // p_962->g_233
        (void*)0, // p_962->g_234
        (void*)0, // p_962->g_235
        (void*)0, // p_962->g_236
        (void*)0, // p_962->g_237
        (void*)0, // p_962->g_239
        (void*)0, // p_962->g_240
        (VECTOR(uint32_t, 16))(0xC64CD6CFL, (VECTOR(uint32_t, 4))(0xC64CD6CFL, (VECTOR(uint32_t, 2))(0xC64CD6CFL, 4294967286UL), 4294967286UL), 4294967286UL, 0xC64CD6CFL, 4294967286UL, (VECTOR(uint32_t, 2))(0xC64CD6CFL, 4294967286UL), (VECTOR(uint32_t, 2))(0xC64CD6CFL, 4294967286UL), 0xC64CD6CFL, 4294967286UL, 0xC64CD6CFL, 4294967286UL), // p_962->g_281
        (VECTOR(int8_t, 4))(0x65L, (VECTOR(int8_t, 2))(0x65L, 0L), 0L), // p_962->g_283
        (VECTOR(uint16_t, 2))(1UL, 65528UL), // p_962->g_302
        (void*)0, // p_962->g_310
        (void*)0, // p_962->g_311
        (void*)0, // p_962->g_312
        (void*)0, // p_962->g_315
        (void*)0, // p_962->g_316
        (void*)0, // p_962->g_343
        (void*)0, // p_962->g_344
        (void*)0, // p_962->g_345
        (void*)0, // p_962->g_346
        (void*)0, // p_962->g_347
        (void*)0, // p_962->g_348
        {&p_962->g_13,(void*)0,&p_962->g_13,&p_962->g_13,(void*)0,&p_962->g_13}, // p_962->g_349
        (void*)0, // p_962->g_350
        (void*)0, // p_962->g_351
        (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0L), 0L), 0L, 0L, 0L), // p_962->g_360
        (VECTOR(int32_t, 8))(0x4E603787L, (VECTOR(int32_t, 4))(0x4E603787L, (VECTOR(int32_t, 2))(0x4E603787L, 0L), 0L), 0L, 0x4E603787L, 0L), // p_962->g_362
        (VECTOR(uint8_t, 2))(0xE7L, 0xB0L), // p_962->g_364
        {{0x0626L,0x07C0L,-7L,0x517BL,0x73779F66L},{0x0626L,0x07C0L,-7L,0x517BL,0x73779F66L},{0x0626L,0x07C0L,-7L,0x517BL,0x73779F66L},{0x0626L,0x07C0L,-7L,0x517BL,0x73779F66L}}, // p_962->g_381
        (VECTOR(int64_t, 2))((-5L), (-10L)), // p_962->g_405
        (VECTOR(int64_t, 2))(0x640E1F2B49DE33B5L, 0x5A19280C0D01EB2AL), // p_962->g_407
        1L, // p_962->g_416
        (VECTOR(uint64_t, 4))(18446744073709551607UL, (VECTOR(uint64_t, 2))(18446744073709551607UL, 1UL), 1UL), // p_962->g_425
        (VECTOR(uint64_t, 2))(8UL, 0x8257271939D2F84FL), // p_962->g_427
        (VECTOR(uint16_t, 8))(0xB4BEL, (VECTOR(uint16_t, 4))(0xB4BEL, (VECTOR(uint16_t, 2))(0xB4BEL, 0x0CD4L), 0x0CD4L), 0x0CD4L, 0xB4BEL, 0x0CD4L), // p_962->g_455
        0x731CF2AFL, // p_962->g_486
        0x43E1L, // p_962->g_490
        &p_962->g_490, // p_962->g_489
        0x4B24L, // p_962->g_749
        (void*)0, // p_962->g_753
        &p_962->g_381[2], // p_962->g_755
        {0xB1BDL,-7L,0x282DBA82L,65532UL,0x2A8D7C40L}, // p_962->g_863
        {{{65535UL,0x651AL,-2L,1UL,1L},{65535UL,0x651AL,-2L,1UL,1L},{65535UL,0x651AL,-2L,1UL,1L},{65535UL,0x651AL,-2L,1UL,1L},{65535UL,0x651AL,-2L,1UL,1L},{65535UL,0x651AL,-2L,1UL,1L},{65535UL,0x651AL,-2L,1UL,1L},{65535UL,0x651AL,-2L,1UL,1L},{65535UL,0x651AL,-2L,1UL,1L}}}, // p_962->g_870
        {{65531UL,0L,0L,0xFA45L,-1L},{65531UL,0L,0L,0xFA45L,-1L},{65531UL,0L,0L,0xFA45L,-1L},{65531UL,0L,0L,0xFA45L,-1L},{65531UL,0L,0L,0xFA45L,-1L}}, // p_962->g_876
        (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, (-9L)), (-9L)), // p_962->g_881
        (VECTOR(uint64_t, 2))(0x1372A066D1196515L, 18446744073709551610UL), // p_962->g_890
        {0xDAF4L,0x3062L,-5L,65535UL,0x68FEE05BL}, // p_962->g_898
        {65535UL,0L,0L,1UL,0L}, // p_962->g_899
        (VECTOR(uint32_t, 8))(0x46E11C6CL, (VECTOR(uint32_t, 4))(0x46E11C6CL, (VECTOR(uint32_t, 2))(0x46E11C6CL, 0xC78AC167L), 0xC78AC167L), 0xC78AC167L, 0x46E11C6CL, 0xC78AC167L), // p_962->g_914
        &p_962->g_416, // p_962->g_935
        {{{&p_962->g_486,(void*)0,&p_962->g_13,(void*)0,(void*)0,(void*)0,(void*)0,&p_962->g_13,(void*)0,&p_962->g_13},{&p_962->g_486,(void*)0,&p_962->g_13,(void*)0,(void*)0,(void*)0,(void*)0,&p_962->g_13,(void*)0,&p_962->g_13},{&p_962->g_486,(void*)0,&p_962->g_13,(void*)0,(void*)0,(void*)0,(void*)0,&p_962->g_13,(void*)0,&p_962->g_13},{&p_962->g_486,(void*)0,&p_962->g_13,(void*)0,(void*)0,(void*)0,(void*)0,&p_962->g_13,(void*)0,&p_962->g_13},{&p_962->g_486,(void*)0,&p_962->g_13,(void*)0,(void*)0,(void*)0,(void*)0,&p_962->g_13,(void*)0,&p_962->g_13}},{{&p_962->g_486,(void*)0,&p_962->g_13,(void*)0,(void*)0,(void*)0,(void*)0,&p_962->g_13,(void*)0,&p_962->g_13},{&p_962->g_486,(void*)0,&p_962->g_13,(void*)0,(void*)0,(void*)0,(void*)0,&p_962->g_13,(void*)0,&p_962->g_13},{&p_962->g_486,(void*)0,&p_962->g_13,(void*)0,(void*)0,(void*)0,(void*)0,&p_962->g_13,(void*)0,&p_962->g_13},{&p_962->g_486,(void*)0,&p_962->g_13,(void*)0,(void*)0,(void*)0,(void*)0,&p_962->g_13,(void*)0,&p_962->g_13},{&p_962->g_486,(void*)0,&p_962->g_13,(void*)0,(void*)0,(void*)0,(void*)0,&p_962->g_13,(void*)0,&p_962->g_13}}}, // p_962->g_937
        (void*)0, // p_962->g_938
        {0x31DFL,0L,0x4FC07993L,0xFC95L,1L}, // p_962->g_943
        {0x278EL,0x3D0BL,0x2A07CFBCL,1UL,0x3D6BBF0EL}, // p_962->g_948
        {{{0x063EL,0x440EL,1L,0x5D54L,-8L}},{{0x063EL,0x440EL,1L,0x5D54L,-8L}},{{0x063EL,0x440EL,1L,0x5D54L,-8L}},{{0x063EL,0x440EL,1L,0x5D54L,-8L}},{{0x063EL,0x440EL,1L,0x5D54L,-8L}},{{0x063EL,0x440EL,1L,0x5D54L,-8L}},{{0x063EL,0x440EL,1L,0x5D54L,-8L}},{{0x063EL,0x440EL,1L,0x5D54L,-8L}},{{0x063EL,0x440EL,1L,0x5D54L,-8L}}}, // p_962->g_949
        0, // p_962->v_collective
        sequence_input[get_global_id(0)], // p_962->global_0_offset
        sequence_input[get_global_id(1)], // p_962->global_1_offset
        sequence_input[get_global_id(2)], // p_962->global_2_offset
        sequence_input[get_local_id(0)], // p_962->local_0_offset
        sequence_input[get_local_id(1)], // p_962->local_1_offset
        sequence_input[get_local_id(2)], // p_962->local_2_offset
        sequence_input[get_group_id(0)], // p_962->group_0_offset
        sequence_input[get_group_id(1)], // p_962->group_1_offset
        sequence_input[get_group_id(2)], // p_962->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 36)), permutations[0][get_linear_local_id()])), // p_962->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_963 = c_964;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_962);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_962->g_13, "p_962->g_13", print_hash_value);
    transparent_crc(p_962->g_47.s0, "p_962->g_47.s0", print_hash_value);
    transparent_crc(p_962->g_47.s1, "p_962->g_47.s1", print_hash_value);
    transparent_crc(p_962->g_47.s2, "p_962->g_47.s2", print_hash_value);
    transparent_crc(p_962->g_47.s3, "p_962->g_47.s3", print_hash_value);
    transparent_crc(p_962->g_47.s4, "p_962->g_47.s4", print_hash_value);
    transparent_crc(p_962->g_47.s5, "p_962->g_47.s5", print_hash_value);
    transparent_crc(p_962->g_47.s6, "p_962->g_47.s6", print_hash_value);
    transparent_crc(p_962->g_47.s7, "p_962->g_47.s7", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_962->g_52[i], "p_962->g_52[i]", print_hash_value);

    }
    transparent_crc(p_962->g_53, "p_962->g_53", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_962->g_55[i], "p_962->g_55[i]", print_hash_value);

    }
    transparent_crc(p_962->g_64.f0, "p_962->g_64.f0", print_hash_value);
    transparent_crc(p_962->g_64.f1, "p_962->g_64.f1", print_hash_value);
    transparent_crc(p_962->g_64.f2, "p_962->g_64.f2", print_hash_value);
    transparent_crc(p_962->g_64.f3, "p_962->g_64.f3", print_hash_value);
    transparent_crc(p_962->g_64.f4, "p_962->g_64.f4", print_hash_value);
    transparent_crc(p_962->g_141.x, "p_962->g_141.x", print_hash_value);
    transparent_crc(p_962->g_141.y, "p_962->g_141.y", print_hash_value);
    transparent_crc(p_962->g_141.z, "p_962->g_141.z", print_hash_value);
    transparent_crc(p_962->g_141.w, "p_962->g_141.w", print_hash_value);
    transparent_crc(p_962->g_142.x, "p_962->g_142.x", print_hash_value);
    transparent_crc(p_962->g_142.y, "p_962->g_142.y", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_962->g_145[i], "p_962->g_145[i]", print_hash_value);

    }
    transparent_crc(p_962->g_157.f0, "p_962->g_157.f0", print_hash_value);
    transparent_crc(p_962->g_157.f1, "p_962->g_157.f1", print_hash_value);
    transparent_crc(p_962->g_157.f2, "p_962->g_157.f2", print_hash_value);
    transparent_crc(p_962->g_157.f3, "p_962->g_157.f3", print_hash_value);
    transparent_crc(p_962->g_157.f4, "p_962->g_157.f4", print_hash_value);
    transparent_crc(p_962->g_160.x, "p_962->g_160.x", print_hash_value);
    transparent_crc(p_962->g_160.y, "p_962->g_160.y", print_hash_value);
    transparent_crc(p_962->g_165.s0, "p_962->g_165.s0", print_hash_value);
    transparent_crc(p_962->g_165.s1, "p_962->g_165.s1", print_hash_value);
    transparent_crc(p_962->g_165.s2, "p_962->g_165.s2", print_hash_value);
    transparent_crc(p_962->g_165.s3, "p_962->g_165.s3", print_hash_value);
    transparent_crc(p_962->g_165.s4, "p_962->g_165.s4", print_hash_value);
    transparent_crc(p_962->g_165.s5, "p_962->g_165.s5", print_hash_value);
    transparent_crc(p_962->g_165.s6, "p_962->g_165.s6", print_hash_value);
    transparent_crc(p_962->g_165.s7, "p_962->g_165.s7", print_hash_value);
    transparent_crc(p_962->g_165.s8, "p_962->g_165.s8", print_hash_value);
    transparent_crc(p_962->g_165.s9, "p_962->g_165.s9", print_hash_value);
    transparent_crc(p_962->g_165.sa, "p_962->g_165.sa", print_hash_value);
    transparent_crc(p_962->g_165.sb, "p_962->g_165.sb", print_hash_value);
    transparent_crc(p_962->g_165.sc, "p_962->g_165.sc", print_hash_value);
    transparent_crc(p_962->g_165.sd, "p_962->g_165.sd", print_hash_value);
    transparent_crc(p_962->g_165.se, "p_962->g_165.se", print_hash_value);
    transparent_crc(p_962->g_165.sf, "p_962->g_165.sf", print_hash_value);
    transparent_crc(p_962->g_166.s0, "p_962->g_166.s0", print_hash_value);
    transparent_crc(p_962->g_166.s1, "p_962->g_166.s1", print_hash_value);
    transparent_crc(p_962->g_166.s2, "p_962->g_166.s2", print_hash_value);
    transparent_crc(p_962->g_166.s3, "p_962->g_166.s3", print_hash_value);
    transparent_crc(p_962->g_166.s4, "p_962->g_166.s4", print_hash_value);
    transparent_crc(p_962->g_166.s5, "p_962->g_166.s5", print_hash_value);
    transparent_crc(p_962->g_166.s6, "p_962->g_166.s6", print_hash_value);
    transparent_crc(p_962->g_166.s7, "p_962->g_166.s7", print_hash_value);
    transparent_crc(p_962->g_171, "p_962->g_171", print_hash_value);
    transparent_crc(p_962->g_173, "p_962->g_173", print_hash_value);
    transparent_crc(p_962->g_186.s0, "p_962->g_186.s0", print_hash_value);
    transparent_crc(p_962->g_186.s1, "p_962->g_186.s1", print_hash_value);
    transparent_crc(p_962->g_186.s2, "p_962->g_186.s2", print_hash_value);
    transparent_crc(p_962->g_186.s3, "p_962->g_186.s3", print_hash_value);
    transparent_crc(p_962->g_186.s4, "p_962->g_186.s4", print_hash_value);
    transparent_crc(p_962->g_186.s5, "p_962->g_186.s5", print_hash_value);
    transparent_crc(p_962->g_186.s6, "p_962->g_186.s6", print_hash_value);
    transparent_crc(p_962->g_186.s7, "p_962->g_186.s7", print_hash_value);
    transparent_crc(p_962->g_188.s0, "p_962->g_188.s0", print_hash_value);
    transparent_crc(p_962->g_188.s1, "p_962->g_188.s1", print_hash_value);
    transparent_crc(p_962->g_188.s2, "p_962->g_188.s2", print_hash_value);
    transparent_crc(p_962->g_188.s3, "p_962->g_188.s3", print_hash_value);
    transparent_crc(p_962->g_188.s4, "p_962->g_188.s4", print_hash_value);
    transparent_crc(p_962->g_188.s5, "p_962->g_188.s5", print_hash_value);
    transparent_crc(p_962->g_188.s6, "p_962->g_188.s6", print_hash_value);
    transparent_crc(p_962->g_188.s7, "p_962->g_188.s7", print_hash_value);
    transparent_crc(p_962->g_188.s8, "p_962->g_188.s8", print_hash_value);
    transparent_crc(p_962->g_188.s9, "p_962->g_188.s9", print_hash_value);
    transparent_crc(p_962->g_188.sa, "p_962->g_188.sa", print_hash_value);
    transparent_crc(p_962->g_188.sb, "p_962->g_188.sb", print_hash_value);
    transparent_crc(p_962->g_188.sc, "p_962->g_188.sc", print_hash_value);
    transparent_crc(p_962->g_188.sd, "p_962->g_188.sd", print_hash_value);
    transparent_crc(p_962->g_188.se, "p_962->g_188.se", print_hash_value);
    transparent_crc(p_962->g_188.sf, "p_962->g_188.sf", print_hash_value);
    transparent_crc(p_962->g_281.s0, "p_962->g_281.s0", print_hash_value);
    transparent_crc(p_962->g_281.s1, "p_962->g_281.s1", print_hash_value);
    transparent_crc(p_962->g_281.s2, "p_962->g_281.s2", print_hash_value);
    transparent_crc(p_962->g_281.s3, "p_962->g_281.s3", print_hash_value);
    transparent_crc(p_962->g_281.s4, "p_962->g_281.s4", print_hash_value);
    transparent_crc(p_962->g_281.s5, "p_962->g_281.s5", print_hash_value);
    transparent_crc(p_962->g_281.s6, "p_962->g_281.s6", print_hash_value);
    transparent_crc(p_962->g_281.s7, "p_962->g_281.s7", print_hash_value);
    transparent_crc(p_962->g_281.s8, "p_962->g_281.s8", print_hash_value);
    transparent_crc(p_962->g_281.s9, "p_962->g_281.s9", print_hash_value);
    transparent_crc(p_962->g_281.sa, "p_962->g_281.sa", print_hash_value);
    transparent_crc(p_962->g_281.sb, "p_962->g_281.sb", print_hash_value);
    transparent_crc(p_962->g_281.sc, "p_962->g_281.sc", print_hash_value);
    transparent_crc(p_962->g_281.sd, "p_962->g_281.sd", print_hash_value);
    transparent_crc(p_962->g_281.se, "p_962->g_281.se", print_hash_value);
    transparent_crc(p_962->g_281.sf, "p_962->g_281.sf", print_hash_value);
    transparent_crc(p_962->g_283.x, "p_962->g_283.x", print_hash_value);
    transparent_crc(p_962->g_283.y, "p_962->g_283.y", print_hash_value);
    transparent_crc(p_962->g_283.z, "p_962->g_283.z", print_hash_value);
    transparent_crc(p_962->g_283.w, "p_962->g_283.w", print_hash_value);
    transparent_crc(p_962->g_302.x, "p_962->g_302.x", print_hash_value);
    transparent_crc(p_962->g_302.y, "p_962->g_302.y", print_hash_value);
    transparent_crc(p_962->g_360.s0, "p_962->g_360.s0", print_hash_value);
    transparent_crc(p_962->g_360.s1, "p_962->g_360.s1", print_hash_value);
    transparent_crc(p_962->g_360.s2, "p_962->g_360.s2", print_hash_value);
    transparent_crc(p_962->g_360.s3, "p_962->g_360.s3", print_hash_value);
    transparent_crc(p_962->g_360.s4, "p_962->g_360.s4", print_hash_value);
    transparent_crc(p_962->g_360.s5, "p_962->g_360.s5", print_hash_value);
    transparent_crc(p_962->g_360.s6, "p_962->g_360.s6", print_hash_value);
    transparent_crc(p_962->g_360.s7, "p_962->g_360.s7", print_hash_value);
    transparent_crc(p_962->g_362.s0, "p_962->g_362.s0", print_hash_value);
    transparent_crc(p_962->g_362.s1, "p_962->g_362.s1", print_hash_value);
    transparent_crc(p_962->g_362.s2, "p_962->g_362.s2", print_hash_value);
    transparent_crc(p_962->g_362.s3, "p_962->g_362.s3", print_hash_value);
    transparent_crc(p_962->g_362.s4, "p_962->g_362.s4", print_hash_value);
    transparent_crc(p_962->g_362.s5, "p_962->g_362.s5", print_hash_value);
    transparent_crc(p_962->g_362.s6, "p_962->g_362.s6", print_hash_value);
    transparent_crc(p_962->g_362.s7, "p_962->g_362.s7", print_hash_value);
    transparent_crc(p_962->g_364.x, "p_962->g_364.x", print_hash_value);
    transparent_crc(p_962->g_364.y, "p_962->g_364.y", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_962->g_381[i].f0, "p_962->g_381[i].f0", print_hash_value);
        transparent_crc(p_962->g_381[i].f1, "p_962->g_381[i].f1", print_hash_value);
        transparent_crc(p_962->g_381[i].f2, "p_962->g_381[i].f2", print_hash_value);
        transparent_crc(p_962->g_381[i].f3, "p_962->g_381[i].f3", print_hash_value);
        transparent_crc(p_962->g_381[i].f4, "p_962->g_381[i].f4", print_hash_value);

    }
    transparent_crc(p_962->g_405.x, "p_962->g_405.x", print_hash_value);
    transparent_crc(p_962->g_405.y, "p_962->g_405.y", print_hash_value);
    transparent_crc(p_962->g_407.x, "p_962->g_407.x", print_hash_value);
    transparent_crc(p_962->g_407.y, "p_962->g_407.y", print_hash_value);
    transparent_crc(p_962->g_416, "p_962->g_416", print_hash_value);
    transparent_crc(p_962->g_425.x, "p_962->g_425.x", print_hash_value);
    transparent_crc(p_962->g_425.y, "p_962->g_425.y", print_hash_value);
    transparent_crc(p_962->g_425.z, "p_962->g_425.z", print_hash_value);
    transparent_crc(p_962->g_425.w, "p_962->g_425.w", print_hash_value);
    transparent_crc(p_962->g_427.x, "p_962->g_427.x", print_hash_value);
    transparent_crc(p_962->g_427.y, "p_962->g_427.y", print_hash_value);
    transparent_crc(p_962->g_455.s0, "p_962->g_455.s0", print_hash_value);
    transparent_crc(p_962->g_455.s1, "p_962->g_455.s1", print_hash_value);
    transparent_crc(p_962->g_455.s2, "p_962->g_455.s2", print_hash_value);
    transparent_crc(p_962->g_455.s3, "p_962->g_455.s3", print_hash_value);
    transparent_crc(p_962->g_455.s4, "p_962->g_455.s4", print_hash_value);
    transparent_crc(p_962->g_455.s5, "p_962->g_455.s5", print_hash_value);
    transparent_crc(p_962->g_455.s6, "p_962->g_455.s6", print_hash_value);
    transparent_crc(p_962->g_455.s7, "p_962->g_455.s7", print_hash_value);
    transparent_crc(p_962->g_486, "p_962->g_486", print_hash_value);
    transparent_crc(p_962->g_490, "p_962->g_490", print_hash_value);
    transparent_crc(p_962->g_749, "p_962->g_749", print_hash_value);
    transparent_crc(p_962->g_863.f0, "p_962->g_863.f0", print_hash_value);
    transparent_crc(p_962->g_863.f1, "p_962->g_863.f1", print_hash_value);
    transparent_crc(p_962->g_863.f2, "p_962->g_863.f2", print_hash_value);
    transparent_crc(p_962->g_863.f3, "p_962->g_863.f3", print_hash_value);
    transparent_crc(p_962->g_863.f4, "p_962->g_863.f4", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_962->g_870[i][j].f0, "p_962->g_870[i][j].f0", print_hash_value);
            transparent_crc(p_962->g_870[i][j].f1, "p_962->g_870[i][j].f1", print_hash_value);
            transparent_crc(p_962->g_870[i][j].f2, "p_962->g_870[i][j].f2", print_hash_value);
            transparent_crc(p_962->g_870[i][j].f3, "p_962->g_870[i][j].f3", print_hash_value);
            transparent_crc(p_962->g_870[i][j].f4, "p_962->g_870[i][j].f4", print_hash_value);

        }
    }
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_962->g_876[i].f0, "p_962->g_876[i].f0", print_hash_value);
        transparent_crc(p_962->g_876[i].f1, "p_962->g_876[i].f1", print_hash_value);
        transparent_crc(p_962->g_876[i].f2, "p_962->g_876[i].f2", print_hash_value);
        transparent_crc(p_962->g_876[i].f3, "p_962->g_876[i].f3", print_hash_value);
        transparent_crc(p_962->g_876[i].f4, "p_962->g_876[i].f4", print_hash_value);

    }
    transparent_crc(p_962->g_881.x, "p_962->g_881.x", print_hash_value);
    transparent_crc(p_962->g_881.y, "p_962->g_881.y", print_hash_value);
    transparent_crc(p_962->g_881.z, "p_962->g_881.z", print_hash_value);
    transparent_crc(p_962->g_881.w, "p_962->g_881.w", print_hash_value);
    transparent_crc(p_962->g_890.x, "p_962->g_890.x", print_hash_value);
    transparent_crc(p_962->g_890.y, "p_962->g_890.y", print_hash_value);
    transparent_crc(p_962->g_898.f0, "p_962->g_898.f0", print_hash_value);
    transparent_crc(p_962->g_898.f1, "p_962->g_898.f1", print_hash_value);
    transparent_crc(p_962->g_898.f2, "p_962->g_898.f2", print_hash_value);
    transparent_crc(p_962->g_898.f3, "p_962->g_898.f3", print_hash_value);
    transparent_crc(p_962->g_898.f4, "p_962->g_898.f4", print_hash_value);
    transparent_crc(p_962->g_899.f0, "p_962->g_899.f0", print_hash_value);
    transparent_crc(p_962->g_899.f1, "p_962->g_899.f1", print_hash_value);
    transparent_crc(p_962->g_899.f2, "p_962->g_899.f2", print_hash_value);
    transparent_crc(p_962->g_899.f3, "p_962->g_899.f3", print_hash_value);
    transparent_crc(p_962->g_899.f4, "p_962->g_899.f4", print_hash_value);
    transparent_crc(p_962->g_914.s0, "p_962->g_914.s0", print_hash_value);
    transparent_crc(p_962->g_914.s1, "p_962->g_914.s1", print_hash_value);
    transparent_crc(p_962->g_914.s2, "p_962->g_914.s2", print_hash_value);
    transparent_crc(p_962->g_914.s3, "p_962->g_914.s3", print_hash_value);
    transparent_crc(p_962->g_914.s4, "p_962->g_914.s4", print_hash_value);
    transparent_crc(p_962->g_914.s5, "p_962->g_914.s5", print_hash_value);
    transparent_crc(p_962->g_914.s6, "p_962->g_914.s6", print_hash_value);
    transparent_crc(p_962->g_914.s7, "p_962->g_914.s7", print_hash_value);
    transparent_crc(p_962->g_943.f0, "p_962->g_943.f0", print_hash_value);
    transparent_crc(p_962->g_943.f1, "p_962->g_943.f1", print_hash_value);
    transparent_crc(p_962->g_943.f2, "p_962->g_943.f2", print_hash_value);
    transparent_crc(p_962->g_943.f3, "p_962->g_943.f3", print_hash_value);
    transparent_crc(p_962->g_943.f4, "p_962->g_943.f4", print_hash_value);
    transparent_crc(p_962->g_948.f0, "p_962->g_948.f0", print_hash_value);
    transparent_crc(p_962->g_948.f1, "p_962->g_948.f1", print_hash_value);
    transparent_crc(p_962->g_948.f2, "p_962->g_948.f2", print_hash_value);
    transparent_crc(p_962->g_948.f3, "p_962->g_948.f3", print_hash_value);
    transparent_crc(p_962->g_948.f4, "p_962->g_948.f4", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_962->g_949[i][j].f0, "p_962->g_949[i][j].f0", print_hash_value);
            transparent_crc(p_962->g_949[i][j].f1, "p_962->g_949[i][j].f1", print_hash_value);
            transparent_crc(p_962->g_949[i][j].f2, "p_962->g_949[i][j].f2", print_hash_value);
            transparent_crc(p_962->g_949[i][j].f3, "p_962->g_949[i][j].f3", print_hash_value);
            transparent_crc(p_962->g_949[i][j].f4, "p_962->g_949[i][j].f4", print_hash_value);

        }
    }
    transparent_crc(p_962->v_collective, "p_962->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 81; i++)
            transparent_crc(p_962->g_special_values[i + 81 * get_linear_group_id()], "p_962->g_special_values[i + 81 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 81; i++)
            transparent_crc(p_962->l_special_values[i], "p_962->l_special_values[i]", print_hash_value);
    transparent_crc(p_962->l_comm_values[get_linear_local_id()], "p_962->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_962->g_comm_values[get_linear_group_id() * 36 + get_linear_local_id()], "p_962->g_comm_values[get_linear_group_id() * 36 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
