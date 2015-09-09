// --atomics 75 ---fake_divergence -g 1,58,38 -l 1,2,1
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


// Seed: 113

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint16_t  f0;
   uint32_t  f1;
   int16_t  f2;
   volatile uint8_t  f3;
};

struct S1 {
   int64_t  f0;
   int32_t  f1;
   int32_t  f2;
   int32_t  f3;
   volatile int8_t  f4;
   uint32_t  f5;
   uint64_t  f6;
   volatile int64_t  f7;
};

struct S2 {
    volatile uint16_t g_10;
    int64_t g_14;
    int64_t g_35;
    int64_t *g_34;
    int32_t g_42;
    volatile int32_t g_44;
    int16_t g_46;
    volatile int32_t g_47;
    volatile int64_t g_48;
    volatile uint16_t g_49;
    volatile int8_t g_55;
    volatile int32_t g_56;
    int16_t g_57;
    volatile uint64_t g_58;
    volatile int64_t g_61;
    volatile int32_t g_62;
    volatile int8_t g_63;
    volatile int16_t g_64[1];
    int16_t g_65;
    uint64_t g_77;
    int32_t g_99;
    volatile struct S0 g_100[7];
    volatile struct S0 g_101;
    uint64_t g_108;
    uint64_t *g_107;
    int64_t g_110;
    uint8_t g_135[5][10][5];
    int32_t *g_150;
    int32_t **g_149[10];
    uint16_t g_163;
    uint32_t g_166;
    int8_t g_168;
    int64_t g_170;
    volatile struct S0 g_179;
    volatile struct S0 g_183;
    struct S1 g_185;
    volatile int16_t g_204;
    volatile struct S0 g_205;
    volatile struct S0 g_223;
    uint32_t g_240;
    int64_t g_303[10];
    volatile uint32_t g_344;
    struct S0 g_348;
    volatile uint32_t g_374[10];
    volatile uint32_t *g_373;
    struct S0 g_390;
    volatile struct S0 g_403;
    struct S0 g_421;
    struct S0 * volatile g_422[4];
    struct S0 * volatile g_423;
    struct S1 g_488;
    int32_t ** volatile g_504;
    volatile int32_t g_505[5][6];
    struct S0 * volatile g_511;
    int32_t ** volatile g_512;
    volatile uint16_t g_533;
    int32_t ** volatile g_589;
    uint64_t g_591[2][3][8];
    int64_t g_594[1];
    int64_t *g_593[6][2][3];
    int16_t g_603;
    struct S0 g_605;
    struct S0 g_607;
    int32_t ** volatile g_631;
    uint32_t *g_639;
    uint32_t **g_638;
    int32_t g_667;
    int64_t * volatile * volatile *g_668;
    int32_t g_672;
    int16_t *g_693;
    int32_t g_836;
    int16_t **g_858;
    int16_t *** volatile g_857;
    struct S0 g_859;
    struct S0 * volatile g_860[7][4][8];
    struct S0 * volatile g_861;
    int32_t * volatile g_902;
    struct S0 *g_912[8];
    volatile struct S0 *g_1265;
    volatile struct S0 ** volatile g_1264[4][5];
    struct S0 g_1298;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    __local volatile uint32_t *l_atomic_input;
    __local volatile uint32_t *l_special_values;
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
};


/* --- FORWARD DECLARATIONS --- */
uint32_t  func_1(struct S2 * p_1317);
uint32_t  func_2(int32_t  p_3, uint32_t  p_4, struct S2 * p_1317);
uint32_t  func_6(int16_t  p_7, int64_t  p_8, int32_t  p_9, struct S2 * p_1317);
int64_t  func_15(int64_t * p_16, int64_t * p_17, int64_t  p_18, struct S2 * p_1317);
int64_t * func_19(uint64_t  p_20, int64_t * p_21, uint32_t  p_22, uint16_t  p_23, int64_t * p_24, struct S2 * p_1317);
int8_t  func_29(uint64_t  p_30, uint64_t  p_31, int64_t * p_32, int64_t * p_33, struct S2 * p_1317);
uint16_t  func_71(uint64_t  p_72, int32_t  p_73, int32_t * p_74, uint32_t  p_75, struct S2 * p_1317);
uint16_t  func_80(uint64_t * p_81, uint16_t  p_82, struct S2 * p_1317);
uint16_t  func_83(uint64_t * p_84, int64_t  p_85, int64_t  p_86, struct S2 * p_1317);
uint64_t * func_87(uint64_t  p_88, uint32_t  p_89, int64_t * p_90, struct S2 * p_1317);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1317->g_10 p_1317->g_14 p_1317->g_34 p_1317->g_49 p_1317->g_58 p_1317->g_35 p_1317->g_47 p_1317->g_64 p_1317->g_56 p_1317->g_99 p_1317->g_100 p_1317->g_42 p_1317->g_135 p_1317->g_77 p_1317->g_108 p_1317->g_57 p_1317->g_166 p_1317->g_46 p_1317->g_170 p_1317->g_179 p_1317->g_185 p_1317->g_204 p_1317->g_205 p_1317->g_223 p_1317->g_240 p_1317->g_65 p_1317->g_168 p_1317->g_344 p_1317->g_373 p_1317->g_303 p_1317->g_390 p_1317->g_44 p_1317->g_403 p_1317->g_421 p_1317->g_423 p_1317->g_183.f3 p_1317->g_488.f0 p_1317->g_488 p_1317->g_504 p_1317->g_511 p_1317->g_512 p_1317->g_505 p_1317->g_533 p_1317->g_101.f0 p_1317->g_589 p_1317->g_591 p_1317->g_593 p_1317->g_594 p_1317->g_605 p_1317->g_631 p_1317->g_150 p_1317->g_638 p_1317->g_374 p_1317->g_668 p_1317->g_693 p_1317->g_836 p_1317->g_857 p_1317->g_859 p_1317->g_861 p_1317->g_902 p_1317->g_639 p_1317->g_607.f1 p_1317->g_348 p_1317->g_163 p_1317->g_672 p_1317->g_858 p_1317->g_1298
 * writes: p_1317->g_14 p_1317->g_49 p_1317->g_58 p_1317->g_35 p_1317->g_77 p_1317->g_42 p_1317->g_99 p_1317->g_101 p_1317->g_107 p_1317->g_110 p_1317->g_135 p_1317->g_149 p_1317->g_163 p_1317->g_166 p_1317->g_168 p_1317->g_170 p_1317->g_108 p_1317->g_183 p_1317->g_185 p_1317->g_100 p_1317->g_240 p_1317->g_303 p_1317->g_57 p_1317->g_344 p_1317->g_46 p_1317->g_390 p_1317->g_488 p_1317->g_150 p_1317->g_348.f2 p_1317->g_533 p_1317->g_591 p_1317->g_607 p_1317->g_605.f2 p_1317->g_638 p_1317->g_667 p_1317->g_693 p_1317->g_836 p_1317->g_858 p_1317->g_348 p_1317->g_672 p_1317->g_912 p_1317->g_859.f2 p_1317->g_47 p_1317->g_859.f0 p_1317->g_1265
 */
uint32_t  func_1(struct S2 * p_1317)
{ /* block id: 4 */
    int32_t l_5[4][6][9] = {{{(-1L),(-1L),0L,1L,1L,(-5L),0x45BBBDEBL,4L,0x45BBBDEBL},{(-1L),(-1L),0L,1L,1L,(-5L),0x45BBBDEBL,4L,0x45BBBDEBL},{(-1L),(-1L),0L,1L,1L,(-5L),0x45BBBDEBL,4L,0x45BBBDEBL},{(-1L),(-1L),0L,1L,1L,(-5L),0x45BBBDEBL,4L,0x45BBBDEBL},{(-1L),(-1L),0L,1L,1L,(-5L),0x45BBBDEBL,4L,0x45BBBDEBL},{(-1L),(-1L),0L,1L,1L,(-5L),0x45BBBDEBL,4L,0x45BBBDEBL}},{{(-1L),(-1L),0L,1L,1L,(-5L),0x45BBBDEBL,4L,0x45BBBDEBL},{(-1L),(-1L),0L,1L,1L,(-5L),0x45BBBDEBL,4L,0x45BBBDEBL},{(-1L),(-1L),0L,1L,1L,(-5L),0x45BBBDEBL,4L,0x45BBBDEBL},{(-1L),(-1L),0L,1L,1L,(-5L),0x45BBBDEBL,4L,0x45BBBDEBL},{(-1L),(-1L),0L,1L,1L,(-5L),0x45BBBDEBL,4L,0x45BBBDEBL},{(-1L),(-1L),0L,1L,1L,(-5L),0x45BBBDEBL,4L,0x45BBBDEBL}},{{(-1L),(-1L),0L,1L,1L,(-5L),0x45BBBDEBL,4L,0x45BBBDEBL},{(-1L),(-1L),0L,1L,1L,(-5L),0x45BBBDEBL,4L,0x45BBBDEBL},{(-1L),(-1L),0L,1L,1L,(-5L),0x45BBBDEBL,4L,0x45BBBDEBL},{(-1L),(-1L),0L,1L,1L,(-5L),0x45BBBDEBL,4L,0x45BBBDEBL},{(-1L),(-1L),0L,1L,1L,(-5L),0x45BBBDEBL,4L,0x45BBBDEBL},{(-1L),(-1L),0L,1L,1L,(-5L),0x45BBBDEBL,4L,0x45BBBDEBL}},{{(-1L),(-1L),0L,1L,1L,(-5L),0x45BBBDEBL,4L,0x45BBBDEBL},{(-1L),(-1L),0L,1L,1L,(-5L),0x45BBBDEBL,4L,0x45BBBDEBL},{(-1L),(-1L),0L,1L,1L,(-5L),0x45BBBDEBL,4L,0x45BBBDEBL},{(-1L),(-1L),0L,1L,1L,(-5L),0x45BBBDEBL,4L,0x45BBBDEBL},{(-1L),(-1L),0L,1L,1L,(-5L),0x45BBBDEBL,4L,0x45BBBDEBL},{(-1L),(-1L),0L,1L,1L,(-5L),0x45BBBDEBL,4L,0x45BBBDEBL}}};
    int64_t *l_13 = &p_1317->g_14;
    int8_t *l_592 = &p_1317->g_168;
    uint32_t *l_599 = (void*)0;
    uint32_t *l_600 = (void*)0;
    uint32_t *l_601 = &p_1317->g_240;
    int16_t *l_602[9][9] = {{&p_1317->g_421.f2,(void*)0,&p_1317->g_65,&p_1317->g_421.f2,(void*)0,&p_1317->g_603,&p_1317->g_421.f2,&p_1317->g_603,(void*)0},{&p_1317->g_421.f2,(void*)0,&p_1317->g_65,&p_1317->g_421.f2,(void*)0,&p_1317->g_603,&p_1317->g_421.f2,&p_1317->g_603,(void*)0},{&p_1317->g_421.f2,(void*)0,&p_1317->g_65,&p_1317->g_421.f2,(void*)0,&p_1317->g_603,&p_1317->g_421.f2,&p_1317->g_603,(void*)0},{&p_1317->g_421.f2,(void*)0,&p_1317->g_65,&p_1317->g_421.f2,(void*)0,&p_1317->g_603,&p_1317->g_421.f2,&p_1317->g_603,(void*)0},{&p_1317->g_421.f2,(void*)0,&p_1317->g_65,&p_1317->g_421.f2,(void*)0,&p_1317->g_603,&p_1317->g_421.f2,&p_1317->g_603,(void*)0},{&p_1317->g_421.f2,(void*)0,&p_1317->g_65,&p_1317->g_421.f2,(void*)0,&p_1317->g_603,&p_1317->g_421.f2,&p_1317->g_603,(void*)0},{&p_1317->g_421.f2,(void*)0,&p_1317->g_65,&p_1317->g_421.f2,(void*)0,&p_1317->g_603,&p_1317->g_421.f2,&p_1317->g_603,(void*)0},{&p_1317->g_421.f2,(void*)0,&p_1317->g_65,&p_1317->g_421.f2,(void*)0,&p_1317->g_603,&p_1317->g_421.f2,&p_1317->g_603,(void*)0},{&p_1317->g_421.f2,(void*)0,&p_1317->g_65,&p_1317->g_421.f2,(void*)0,&p_1317->g_603,&p_1317->g_421.f2,&p_1317->g_603,(void*)0}};
    int32_t l_604 = 0L;
    int32_t *l_1308 = &l_604;
    int32_t *l_1309 = &p_1317->g_672;
    int32_t *l_1310 = &p_1317->g_42;
    int32_t *l_1311 = &p_1317->g_667;
    int32_t *l_1312 = (void*)0;
    int32_t *l_1313[6];
    uint64_t l_1314[4];
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_1313[i] = (void*)0;
    for (i = 0; i < 4; i++)
        l_1314[i] = 18446744073709551609UL;
    (*l_1308) = (func_2(l_5[2][0][3], func_6((l_604 |= ((p_1317->g_10 , ((*l_601) = ((((-6L) == (8UL ^ ((p_1317->g_10 || ((safe_rshift_func_uint16_t_u_u((((*l_13) |= l_5[3][5][7]) != (0x8DD2AC30L & (GROUP_DIVERGE(2, 1) & func_15(func_19((safe_div_func_uint32_t_u_u((safe_rshift_func_int16_t_s_u((((*l_592) = (p_1317->g_10 , func_29(l_5[2][1][3], l_5[2][0][3], l_13, p_1317->g_34, p_1317))) || 0x04L), 5)), p_1317->g_421.f0)), p_1317->g_593[4][0][1], l_5[2][0][3], p_1317->g_594[0], &p_1317->g_594[0], p_1317), &p_1317->g_594[0], p_1317->g_421.f0, p_1317)))), l_5[0][4][1])) , 7L)) ^ 0x40DBL))) || l_5[0][5][0]) != l_5[2][3][3]))) && 0x903A1F06L)), l_5[2][0][3], l_5[0][4][5], p_1317), p_1317) <= 0x6B9BF6DDL);
    l_1314[0]--;
    return (*p_1317->g_639);
}


/* ------------------------------------------ */
/* 
 * reads : p_1317->g_390.f1 p_1317->g_403.f0 p_1317->g_185.f2 p_1317->g_64 p_1317->g_240 p_1317->g_693 p_1317->g_46 p_1317->g_34 p_1317->g_373 p_1317->g_374 p_1317->g_836 p_1317->g_857 p_1317->g_504 p_1317->g_859 p_1317->g_861 p_1317->g_902 p_1317->g_512 p_1317->g_150 p_1317->g_303 p_1317->g_42 p_1317->g_638 p_1317->g_639 p_1317->g_607.f1 p_1317->g_348 p_1317->g_163 p_1317->g_488.f6 p_1317->g_672 p_1317->g_168 p_1317->g_421.f0 p_1317->g_390.f0 p_1317->g_668 p_1317->g_35 p_1317->g_858 p_1317->g_505 p_1317->g_108 p_1317->g_591 p_1317->g_135 p_1317->g_14 p_1317->g_488.f5 p_1317->g_185 p_1317->g_99 p_1317->g_1298 p_1317->g_594
 * writes: p_1317->g_390.f1 p_1317->g_693 p_1317->g_185.f2 p_1317->g_240 p_1317->g_35 p_1317->g_185.f0 p_1317->g_836 p_1317->g_858 p_1317->g_150 p_1317->g_348 p_1317->g_672 p_1317->g_912 p_1317->g_42 p_1317->g_390.f0 p_1317->g_488.f5 p_1317->g_168 p_1317->g_107 p_1317->g_859.f2 p_1317->g_488 p_1317->g_14 p_1317->g_47 p_1317->g_859.f0 p_1317->g_1265 p_1317->g_185.f1 p_1317->g_99 p_1317->g_46 p_1317->g_591
 */
uint32_t  func_2(int32_t  p_3, uint32_t  p_4, struct S2 * p_1317)
{ /* block id: 426 */
    int64_t l_677[9][3][4] = {{{0x2C4A0B570DA62500L,0x0AD6DD20B5BEAAF9L,(-5L),0x06AFFB6BBC7182AAL},{0x2C4A0B570DA62500L,0x0AD6DD20B5BEAAF9L,(-5L),0x06AFFB6BBC7182AAL},{0x2C4A0B570DA62500L,0x0AD6DD20B5BEAAF9L,(-5L),0x06AFFB6BBC7182AAL}},{{0x2C4A0B570DA62500L,0x0AD6DD20B5BEAAF9L,(-5L),0x06AFFB6BBC7182AAL},{0x2C4A0B570DA62500L,0x0AD6DD20B5BEAAF9L,(-5L),0x06AFFB6BBC7182AAL},{0x2C4A0B570DA62500L,0x0AD6DD20B5BEAAF9L,(-5L),0x06AFFB6BBC7182AAL}},{{0x2C4A0B570DA62500L,0x0AD6DD20B5BEAAF9L,(-5L),0x06AFFB6BBC7182AAL},{0x2C4A0B570DA62500L,0x0AD6DD20B5BEAAF9L,(-5L),0x06AFFB6BBC7182AAL},{0x2C4A0B570DA62500L,0x0AD6DD20B5BEAAF9L,(-5L),0x06AFFB6BBC7182AAL}},{{0x2C4A0B570DA62500L,0x0AD6DD20B5BEAAF9L,(-5L),0x06AFFB6BBC7182AAL},{0x2C4A0B570DA62500L,0x0AD6DD20B5BEAAF9L,(-5L),0x06AFFB6BBC7182AAL},{0x2C4A0B570DA62500L,0x0AD6DD20B5BEAAF9L,(-5L),0x06AFFB6BBC7182AAL}},{{0x2C4A0B570DA62500L,0x0AD6DD20B5BEAAF9L,(-5L),0x06AFFB6BBC7182AAL},{0x2C4A0B570DA62500L,0x0AD6DD20B5BEAAF9L,(-5L),0x06AFFB6BBC7182AAL},{0x2C4A0B570DA62500L,0x0AD6DD20B5BEAAF9L,(-5L),0x06AFFB6BBC7182AAL}},{{0x2C4A0B570DA62500L,0x0AD6DD20B5BEAAF9L,(-5L),0x06AFFB6BBC7182AAL},{0x2C4A0B570DA62500L,0x0AD6DD20B5BEAAF9L,(-5L),0x06AFFB6BBC7182AAL},{0x2C4A0B570DA62500L,0x0AD6DD20B5BEAAF9L,(-5L),0x06AFFB6BBC7182AAL}},{{0x2C4A0B570DA62500L,0x0AD6DD20B5BEAAF9L,(-5L),0x06AFFB6BBC7182AAL},{0x2C4A0B570DA62500L,0x0AD6DD20B5BEAAF9L,(-5L),0x06AFFB6BBC7182AAL},{0x2C4A0B570DA62500L,0x0AD6DD20B5BEAAF9L,(-5L),0x06AFFB6BBC7182AAL}},{{0x2C4A0B570DA62500L,0x0AD6DD20B5BEAAF9L,(-5L),0x06AFFB6BBC7182AAL},{0x2C4A0B570DA62500L,0x0AD6DD20B5BEAAF9L,(-5L),0x06AFFB6BBC7182AAL},{0x2C4A0B570DA62500L,0x0AD6DD20B5BEAAF9L,(-5L),0x06AFFB6BBC7182AAL}},{{0x2C4A0B570DA62500L,0x0AD6DD20B5BEAAF9L,(-5L),0x06AFFB6BBC7182AAL},{0x2C4A0B570DA62500L,0x0AD6DD20B5BEAAF9L,(-5L),0x06AFFB6BBC7182AAL},{0x2C4A0B570DA62500L,0x0AD6DD20B5BEAAF9L,(-5L),0x06AFFB6BBC7182AAL}}};
    int32_t l_680 = 0x7BFFAFBEL;
    int32_t l_681 = 6L;
    int32_t l_682 = (-1L);
    int32_t l_683[3];
    uint32_t *l_820 = &p_1317->g_240;
    uint64_t l_821 = 8UL;
    int8_t l_840 = 0x66L;
    int64_t l_850[4][6] = {{(-1L),0x096F87E899D1CA9AL,(-1L),(-1L),0x096F87E899D1CA9AL,(-1L)},{(-1L),0x096F87E899D1CA9AL,(-1L),(-1L),0x096F87E899D1CA9AL,(-1L)},{(-1L),0x096F87E899D1CA9AL,(-1L),(-1L),0x096F87E899D1CA9AL,(-1L)},{(-1L),0x096F87E899D1CA9AL,(-1L),(-1L),0x096F87E899D1CA9AL,(-1L)}};
    int32_t l_890 = 0L;
    uint16_t l_899[2];
    int32_t *l_904 = &p_1317->g_42;
    int16_t l_917 = 0x0DE5L;
    uint32_t **l_930[7][1] = {{&p_1317->g_639},{&p_1317->g_639},{&p_1317->g_639},{&p_1317->g_639},{&p_1317->g_639},{&p_1317->g_639},{&p_1317->g_639}};
    int64_t l_1288[10] = {(-6L),0x73D8152534CFE053L,(-6L),(-6L),0x73D8152534CFE053L,(-6L),(-6L),0x73D8152534CFE053L,(-6L),(-6L)};
    int64_t *l_1305 = &p_1317->g_303[4];
    int64_t **l_1304 = &l_1305;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_683[i] = 0x7253DA49L;
    for (i = 0; i < 2; i++)
        l_899[i] = 0x9B9DL;
    for (p_1317->g_390.f1 = (-15); (p_1317->g_390.f1 != 17); p_1317->g_390.f1 = safe_add_func_int8_t_s_s(p_1317->g_390.f1, 4))
    { /* block id: 429 */
        int16_t l_676 = 1L;
        int32_t *l_678 = (void*)0;
        int32_t *l_679[1];
        uint32_t l_684 = 0xCC11B492L;
        int i;
        for (i = 0; i < 1; i++)
            l_679[i] = &p_1317->g_672;
        l_677[3][1][0] = ((FAKE_DIVERGE(p_1317->global_0_offset, get_global_id(0), 10) >= l_676) <= p_3);
        l_684--;
    }
    if (l_680)
    { /* block id: 433 */
        struct S0 *l_691 = &p_1317->g_607;
        int16_t *l_692 = &p_1317->g_390.f2;
        uint8_t *l_694 = (void*)0;
        int32_t l_695 = (-6L);
        l_695 ^= (safe_div_func_uint64_t_u_u((safe_rshift_func_int8_t_s_s((!((p_1317->g_403.f0 , l_691) != ((l_692 == (p_1317->g_693 = &p_1317->g_46)) , l_691))), ((void*)0 == l_694))), l_683[0]));
        if ((atomic_inc(&p_1317->g_atomic_input[75 * get_linear_group_id() + 39]) == 7))
        { /* block id: 437 */
            int32_t l_696[6];
            int8_t l_715[3][2][3] = {{{0x5BL,(-1L),0x5BL},{0x5BL,(-1L),0x5BL}},{{0x5BL,(-1L),0x5BL},{0x5BL,(-1L),0x5BL}},{{0x5BL,(-1L),0x5BL},{0x5BL,(-1L),0x5BL}}};
            int64_t l_783[5][5][6] = {{{0x228ED70537EA6345L,0x10C5AC70A9A62032L,0x59422E2AB10FA54AL,2L,0L,0x6444B4DBE7BEDAE0L},{0x228ED70537EA6345L,0x10C5AC70A9A62032L,0x59422E2AB10FA54AL,2L,0L,0x6444B4DBE7BEDAE0L},{0x228ED70537EA6345L,0x10C5AC70A9A62032L,0x59422E2AB10FA54AL,2L,0L,0x6444B4DBE7BEDAE0L},{0x228ED70537EA6345L,0x10C5AC70A9A62032L,0x59422E2AB10FA54AL,2L,0L,0x6444B4DBE7BEDAE0L},{0x228ED70537EA6345L,0x10C5AC70A9A62032L,0x59422E2AB10FA54AL,2L,0L,0x6444B4DBE7BEDAE0L}},{{0x228ED70537EA6345L,0x10C5AC70A9A62032L,0x59422E2AB10FA54AL,2L,0L,0x6444B4DBE7BEDAE0L},{0x228ED70537EA6345L,0x10C5AC70A9A62032L,0x59422E2AB10FA54AL,2L,0L,0x6444B4DBE7BEDAE0L},{0x228ED70537EA6345L,0x10C5AC70A9A62032L,0x59422E2AB10FA54AL,2L,0L,0x6444B4DBE7BEDAE0L},{0x228ED70537EA6345L,0x10C5AC70A9A62032L,0x59422E2AB10FA54AL,2L,0L,0x6444B4DBE7BEDAE0L},{0x228ED70537EA6345L,0x10C5AC70A9A62032L,0x59422E2AB10FA54AL,2L,0L,0x6444B4DBE7BEDAE0L}},{{0x228ED70537EA6345L,0x10C5AC70A9A62032L,0x59422E2AB10FA54AL,2L,0L,0x6444B4DBE7BEDAE0L},{0x228ED70537EA6345L,0x10C5AC70A9A62032L,0x59422E2AB10FA54AL,2L,0L,0x6444B4DBE7BEDAE0L},{0x228ED70537EA6345L,0x10C5AC70A9A62032L,0x59422E2AB10FA54AL,2L,0L,0x6444B4DBE7BEDAE0L},{0x228ED70537EA6345L,0x10C5AC70A9A62032L,0x59422E2AB10FA54AL,2L,0L,0x6444B4DBE7BEDAE0L},{0x228ED70537EA6345L,0x10C5AC70A9A62032L,0x59422E2AB10FA54AL,2L,0L,0x6444B4DBE7BEDAE0L}},{{0x228ED70537EA6345L,0x10C5AC70A9A62032L,0x59422E2AB10FA54AL,2L,0L,0x6444B4DBE7BEDAE0L},{0x228ED70537EA6345L,0x10C5AC70A9A62032L,0x59422E2AB10FA54AL,2L,0L,0x6444B4DBE7BEDAE0L},{0x228ED70537EA6345L,0x10C5AC70A9A62032L,0x59422E2AB10FA54AL,2L,0L,0x6444B4DBE7BEDAE0L},{0x228ED70537EA6345L,0x10C5AC70A9A62032L,0x59422E2AB10FA54AL,2L,0L,0x6444B4DBE7BEDAE0L},{0x228ED70537EA6345L,0x10C5AC70A9A62032L,0x59422E2AB10FA54AL,2L,0L,0x6444B4DBE7BEDAE0L}},{{0x228ED70537EA6345L,0x10C5AC70A9A62032L,0x59422E2AB10FA54AL,2L,0L,0x6444B4DBE7BEDAE0L},{0x228ED70537EA6345L,0x10C5AC70A9A62032L,0x59422E2AB10FA54AL,2L,0L,0x6444B4DBE7BEDAE0L},{0x228ED70537EA6345L,0x10C5AC70A9A62032L,0x59422E2AB10FA54AL,2L,0L,0x6444B4DBE7BEDAE0L},{0x228ED70537EA6345L,0x10C5AC70A9A62032L,0x59422E2AB10FA54AL,2L,0L,0x6444B4DBE7BEDAE0L},{0x228ED70537EA6345L,0x10C5AC70A9A62032L,0x59422E2AB10FA54AL,2L,0L,0x6444B4DBE7BEDAE0L}}};
            int32_t *l_784 = (void*)0;
            int i, j, k;
            for (i = 0; i < 6; i++)
                l_696[i] = (-4L);
            for (l_696[1] = 7; (l_696[1] == (-22)); l_696[1] = safe_sub_func_int64_t_s_s(l_696[1], 2))
            { /* block id: 440 */
                int32_t l_699[5][8] = {{0x5EBDB564L,0x436F0E1EL,4L,0x5220798AL,0x436F0E1EL,0x5220798AL,4L,0x436F0E1EL},{0x5EBDB564L,0x436F0E1EL,4L,0x5220798AL,0x436F0E1EL,0x5220798AL,4L,0x436F0E1EL},{0x5EBDB564L,0x436F0E1EL,4L,0x5220798AL,0x436F0E1EL,0x5220798AL,4L,0x436F0E1EL},{0x5EBDB564L,0x436F0E1EL,4L,0x5220798AL,0x436F0E1EL,0x5220798AL,4L,0x436F0E1EL},{0x5EBDB564L,0x436F0E1EL,4L,0x5220798AL,0x436F0E1EL,0x5220798AL,4L,0x436F0E1EL}};
                int i, j;
                for (l_699[2][5] = 0; (l_699[2][5] >= 5); l_699[2][5] = safe_add_func_int8_t_s_s(l_699[2][5], 3))
                { /* block id: 443 */
                    int32_t l_702[7][3] = {{0x3785187AL,0x3785187AL,3L},{0x3785187AL,0x3785187AL,3L},{0x3785187AL,0x3785187AL,3L},{0x3785187AL,0x3785187AL,3L},{0x3785187AL,0x3785187AL,3L},{0x3785187AL,0x3785187AL,3L},{0x3785187AL,0x3785187AL,3L}};
                    int i, j;
                    for (l_702[6][0] = 0; (l_702[6][0] != 1); l_702[6][0] = safe_add_func_int16_t_s_s(l_702[6][0], 6))
                    { /* block id: 446 */
                        int8_t l_705 = 5L;
                        uint16_t l_706[7][3][5] = {{{8UL,0x0748L,4UL,1UL,65532UL},{8UL,0x0748L,4UL,1UL,65532UL},{8UL,0x0748L,4UL,1UL,65532UL}},{{8UL,0x0748L,4UL,1UL,65532UL},{8UL,0x0748L,4UL,1UL,65532UL},{8UL,0x0748L,4UL,1UL,65532UL}},{{8UL,0x0748L,4UL,1UL,65532UL},{8UL,0x0748L,4UL,1UL,65532UL},{8UL,0x0748L,4UL,1UL,65532UL}},{{8UL,0x0748L,4UL,1UL,65532UL},{8UL,0x0748L,4UL,1UL,65532UL},{8UL,0x0748L,4UL,1UL,65532UL}},{{8UL,0x0748L,4UL,1UL,65532UL},{8UL,0x0748L,4UL,1UL,65532UL},{8UL,0x0748L,4UL,1UL,65532UL}},{{8UL,0x0748L,4UL,1UL,65532UL},{8UL,0x0748L,4UL,1UL,65532UL},{8UL,0x0748L,4UL,1UL,65532UL}},{{8UL,0x0748L,4UL,1UL,65532UL},{8UL,0x0748L,4UL,1UL,65532UL},{8UL,0x0748L,4UL,1UL,65532UL}}};
                        int i, j, k;
                        l_706[0][0][1] |= l_705;
                    }
                }
                for (l_699[3][7] = 6; (l_699[3][7] != (-18)); l_699[3][7]--)
                { /* block id: 452 */
                    int32_t l_709 = 0x23F10170L;
                    for (l_709 = 18; (l_709 == (-24)); l_709 = safe_sub_func_uint64_t_u_u(l_709, 5))
                    { /* block id: 455 */
                        uint64_t l_712 = 18446744073709551615UL;
                        int32_t l_713[7] = {1L,0x70B4B926L,1L,1L,0x70B4B926L,1L,1L};
                        int32_t l_714 = 0x29C92BF4L;
                        int i;
                        l_714 ^= (l_713[0] = l_712);
                    }
                }
            }
            if (l_715[0][1][2])
            { /* block id: 461 */
                int16_t l_716[8];
                int64_t l_737 = 0x32BB856F0852BF2BL;
                int i;
                for (i = 0; i < 8; i++)
                    l_716[i] = (-7L);
                if (l_716[3])
                { /* block id: 462 */
                    uint32_t l_717[6];
                    uint64_t l_718 = 18446744073709551614UL;
                    uint32_t l_719[9] = {0x00281917L,0x00281917L,0x00281917L,0x00281917L,0x00281917L,0x00281917L,0x00281917L,0x00281917L,0x00281917L};
                    int32_t l_730 = 0x73A5A6FDL;
                    int32_t *l_729 = &l_730;
                    int32_t *l_731[9][1][8] = {{{&l_730,&l_730,(void*)0,&l_730,(void*)0,&l_730,&l_730,&l_730}},{{&l_730,&l_730,(void*)0,&l_730,(void*)0,&l_730,&l_730,&l_730}},{{&l_730,&l_730,(void*)0,&l_730,(void*)0,&l_730,&l_730,&l_730}},{{&l_730,&l_730,(void*)0,&l_730,(void*)0,&l_730,&l_730,&l_730}},{{&l_730,&l_730,(void*)0,&l_730,(void*)0,&l_730,&l_730,&l_730}},{{&l_730,&l_730,(void*)0,&l_730,(void*)0,&l_730,&l_730,&l_730}},{{&l_730,&l_730,(void*)0,&l_730,(void*)0,&l_730,&l_730,&l_730}},{{&l_730,&l_730,(void*)0,&l_730,(void*)0,&l_730,&l_730,&l_730}},{{&l_730,&l_730,(void*)0,&l_730,(void*)0,&l_730,&l_730,&l_730}}};
                    int i, j, k;
                    for (i = 0; i < 6; i++)
                        l_717[i] = 0xB83B943CL;
                    if ((l_717[3] , (l_718 , l_719[7])))
                    { /* block id: 463 */
                        int32_t l_721[4][6][8] = {{{0x53198625L,0x53198625L,0x6FDE5437L,0x1D76F6C9L,0L,0x1D76F6C9L,0x6FDE5437L,0x53198625L},{0x53198625L,0x53198625L,0x6FDE5437L,0x1D76F6C9L,0L,0x1D76F6C9L,0x6FDE5437L,0x53198625L},{0x53198625L,0x53198625L,0x6FDE5437L,0x1D76F6C9L,0L,0x1D76F6C9L,0x6FDE5437L,0x53198625L},{0x53198625L,0x53198625L,0x6FDE5437L,0x1D76F6C9L,0L,0x1D76F6C9L,0x6FDE5437L,0x53198625L},{0x53198625L,0x53198625L,0x6FDE5437L,0x1D76F6C9L,0L,0x1D76F6C9L,0x6FDE5437L,0x53198625L},{0x53198625L,0x53198625L,0x6FDE5437L,0x1D76F6C9L,0L,0x1D76F6C9L,0x6FDE5437L,0x53198625L}},{{0x53198625L,0x53198625L,0x6FDE5437L,0x1D76F6C9L,0L,0x1D76F6C9L,0x6FDE5437L,0x53198625L},{0x53198625L,0x53198625L,0x6FDE5437L,0x1D76F6C9L,0L,0x1D76F6C9L,0x6FDE5437L,0x53198625L},{0x53198625L,0x53198625L,0x6FDE5437L,0x1D76F6C9L,0L,0x1D76F6C9L,0x6FDE5437L,0x53198625L},{0x53198625L,0x53198625L,0x6FDE5437L,0x1D76F6C9L,0L,0x1D76F6C9L,0x6FDE5437L,0x53198625L},{0x53198625L,0x53198625L,0x6FDE5437L,0x1D76F6C9L,0L,0x1D76F6C9L,0x6FDE5437L,0x53198625L},{0x53198625L,0x53198625L,0x6FDE5437L,0x1D76F6C9L,0L,0x1D76F6C9L,0x6FDE5437L,0x53198625L}},{{0x53198625L,0x53198625L,0x6FDE5437L,0x1D76F6C9L,0L,0x1D76F6C9L,0x6FDE5437L,0x53198625L},{0x53198625L,0x53198625L,0x6FDE5437L,0x1D76F6C9L,0L,0x1D76F6C9L,0x6FDE5437L,0x53198625L},{0x53198625L,0x53198625L,0x6FDE5437L,0x1D76F6C9L,0L,0x1D76F6C9L,0x6FDE5437L,0x53198625L},{0x53198625L,0x53198625L,0x6FDE5437L,0x1D76F6C9L,0L,0x1D76F6C9L,0x6FDE5437L,0x53198625L},{0x53198625L,0x53198625L,0x6FDE5437L,0x1D76F6C9L,0L,0x1D76F6C9L,0x6FDE5437L,0x53198625L},{0x53198625L,0x53198625L,0x6FDE5437L,0x1D76F6C9L,0L,0x1D76F6C9L,0x6FDE5437L,0x53198625L}},{{0x53198625L,0x53198625L,0x6FDE5437L,0x1D76F6C9L,0L,0x1D76F6C9L,0x6FDE5437L,0x53198625L},{0x53198625L,0x53198625L,0x6FDE5437L,0x1D76F6C9L,0L,0x1D76F6C9L,0x6FDE5437L,0x53198625L},{0x53198625L,0x53198625L,0x6FDE5437L,0x1D76F6C9L,0L,0x1D76F6C9L,0x6FDE5437L,0x53198625L},{0x53198625L,0x53198625L,0x6FDE5437L,0x1D76F6C9L,0L,0x1D76F6C9L,0x6FDE5437L,0x53198625L},{0x53198625L,0x53198625L,0x6FDE5437L,0x1D76F6C9L,0L,0x1D76F6C9L,0x6FDE5437L,0x53198625L},{0x53198625L,0x53198625L,0x6FDE5437L,0x1D76F6C9L,0L,0x1D76F6C9L,0x6FDE5437L,0x53198625L}}};
                        int32_t *l_720 = &l_721[2][1][0];
                        int32_t *l_722[5];
                        int i, j, k;
                        for (i = 0; i < 5; i++)
                            l_722[i] = (void*)0;
                        l_722[1] = l_720;
                    }
                    else
                    { /* block id: 465 */
                        uint16_t l_723[4];
                        int32_t l_727 = 0x2A5389CCL;
                        int32_t *l_726 = &l_727;
                        int32_t *l_728 = &l_727;
                        int i;
                        for (i = 0; i < 4; i++)
                            l_723[i] = 65535UL;
                        l_723[3]--;
                        l_728 = l_726;
                    }
                    l_729 = (void*)0;
                    l_731[4][0][6] = (void*)0;
                }
                else
                { /* block id: 471 */
                    int32_t l_733[7];
                    int32_t *l_732 = &l_733[4];
                    int32_t *l_734 = &l_733[5];
                    struct S1 l_735 = {0x13B26EDE409829D8L,-1L,-9L,0x567A794AL,0x76L,0x1EB3D8C3L,18446744073709551613UL,0L};/* VOLATILE GLOBAL l_735 */
                    int32_t *l_736[1][3];
                    int i, j;
                    for (i = 0; i < 7; i++)
                        l_733[i] = (-1L);
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 3; j++)
                            l_736[i][j] = (void*)0;
                    }
                    l_734 = l_732;
                    l_736[0][2] = (l_735 , (void*)0);
                }
                l_696[1] ^= l_737;
            }
            else
            { /* block id: 476 */
                int32_t l_738[3][5] = {{(-1L),0x674FFFD7L,(-1L),(-1L),0x674FFFD7L},{(-1L),0x674FFFD7L,(-1L),(-1L),0x674FFFD7L},{(-1L),0x674FFFD7L,(-1L),(-1L),0x674FFFD7L}};
                uint32_t l_739 = 0xCCB87D36L;
                struct S0 l_740 = {1UL,0x003D5F8CL,0x78F9L,0xE7L};/* VOLATILE GLOBAL l_740 */
                uint32_t l_741 = 1UL;
                int8_t l_742[3][6] = {{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL,0x2FL,0x2FL,0x2FL}};
                int8_t l_743 = 4L;
                uint8_t l_744[1];
                int i, j;
                for (i = 0; i < 1; i++)
                    l_744[i] = 4UL;
                l_738[1][0] = (-9L);
                l_742[2][5] ^= (l_739 , (l_696[1] = (l_740 , l_741)));
                ++l_744[0];
                for (l_739 = 0; (l_739 <= 2); l_739 += 1)
                { /* block id: 483 */
                    int32_t l_747 = 0x71581BD9L;
                    int32_t l_758 = 0x21A9312DL;
                    int32_t l_759 = 0x0E668775L;
                    int16_t l_760 = 0x20A4L;
                    uint16_t l_761 = 0x3C6EL;
                    for (l_747 = 0; (l_747 <= 2); l_747 += 1)
                    { /* block id: 486 */
                        int8_t l_748 = (-1L);
                        int8_t l_749 = 0x76L;
                        int32_t l_750 = 1L;
                        int16_t l_751[10] = {0x1EE7L,0x1EE7L,0x1EE7L,0x1EE7L,0x1EE7L,0x1EE7L,0x1EE7L,0x1EE7L,0x1EE7L,0x1EE7L};
                        uint32_t l_752 = 4294967295UL;
                        int32_t l_756 = 0x7D5A6ABEL;
                        int32_t *l_755 = &l_756;
                        int32_t *l_757 = (void*)0;
                        int i, j;
                        l_752++;
                        l_757 = l_755;
                        l_696[4] = l_742[l_739][(l_747 + 1)];
                    }
                    ++l_761;
                    for (l_759 = 0; (l_759 <= 2); l_759 += 1)
                    { /* block id: 494 */
                        struct S1 l_764 = {0x1BB48037BEBCBD1AL,1L,-1L,0x4A8AFC23L,0x14L,0xA3020252L,18446744073709551615UL,-10L};/* VOLATILE GLOBAL l_764 */
                        struct S1 l_765 = {7L,0x268B7558L,0x7F59AE59L,3L,0x2BL,0xCFD46635L,0x255E30F2E6746F08L,0x6A2BE567B687D511L};/* VOLATILE GLOBAL l_765 */
                        l_765 = l_764;
                    }
                }
            }
            for (l_696[1] = 0; (l_696[1] <= 16); l_696[1]++)
            { /* block id: 501 */
                int32_t l_768 = 0x23F2F312L;
                int32_t *l_780 = &l_768;
                int32_t *l_781[7];
                int32_t *l_782 = (void*)0;
                int i;
                for (i = 0; i < 7; i++)
                    l_781[i] = &l_768;
                for (l_768 = 0; (l_768 < (-9)); l_768 = safe_sub_func_int64_t_s_s(l_768, 6))
                { /* block id: 504 */
                    int32_t l_771 = (-1L);
                    int8_t l_772 = (-1L);
                    int32_t *l_773 = &l_771;
                    int64_t **l_774 = (void*)0;
                    int32_t *l_777 = (void*)0;
                    int32_t *l_778 = &l_771;
                    int32_t *l_779 = &l_771;
                    l_773 = ((l_772 |= l_771) , (void*)0);
                    l_774 = l_774;
                    for (l_771 = 0; (l_771 <= 2); l_771 += 1)
                    { /* block id: 510 */
                        uint16_t l_775[10][10] = {{0x2BA0L,0x2BA0L,0xD794L,0xACC3L,65532UL,0xACC3L,0xD794L,0x2BA0L,0x2BA0L,0xD794L},{0x2BA0L,0x2BA0L,0xD794L,0xACC3L,65532UL,0xACC3L,0xD794L,0x2BA0L,0x2BA0L,0xD794L},{0x2BA0L,0x2BA0L,0xD794L,0xACC3L,65532UL,0xACC3L,0xD794L,0x2BA0L,0x2BA0L,0xD794L},{0x2BA0L,0x2BA0L,0xD794L,0xACC3L,65532UL,0xACC3L,0xD794L,0x2BA0L,0x2BA0L,0xD794L},{0x2BA0L,0x2BA0L,0xD794L,0xACC3L,65532UL,0xACC3L,0xD794L,0x2BA0L,0x2BA0L,0xD794L},{0x2BA0L,0x2BA0L,0xD794L,0xACC3L,65532UL,0xACC3L,0xD794L,0x2BA0L,0x2BA0L,0xD794L},{0x2BA0L,0x2BA0L,0xD794L,0xACC3L,65532UL,0xACC3L,0xD794L,0x2BA0L,0x2BA0L,0xD794L},{0x2BA0L,0x2BA0L,0xD794L,0xACC3L,65532UL,0xACC3L,0xD794L,0x2BA0L,0x2BA0L,0xD794L},{0x2BA0L,0x2BA0L,0xD794L,0xACC3L,65532UL,0xACC3L,0xD794L,0x2BA0L,0x2BA0L,0xD794L},{0x2BA0L,0x2BA0L,0xD794L,0xACC3L,65532UL,0xACC3L,0xD794L,0x2BA0L,0x2BA0L,0xD794L}};
                        uint8_t l_776 = 9UL;
                        int i, j;
                        l_775[3][9] = (-1L);
                        l_776 = 0L;
                    }
                    l_779 = (l_778 = l_777);
                }
                l_781[1] = l_780;
                l_782 = l_782;
            }
            l_784 = ((l_783[0][4][4] |= 0x97383FC0L) , (void*)0);
            unsigned int result = 0;
            int l_696_i0;
            for (l_696_i0 = 0; l_696_i0 < 6; l_696_i0++) {
                result += l_696[l_696_i0];
            }
            int l_715_i0, l_715_i1, l_715_i2;
            for (l_715_i0 = 0; l_715_i0 < 3; l_715_i0++) {
                for (l_715_i1 = 0; l_715_i1 < 2; l_715_i1++) {
                    for (l_715_i2 = 0; l_715_i2 < 3; l_715_i2++) {
                        result += l_715[l_715_i0][l_715_i1][l_715_i2];
                    }
                }
            }
            int l_783_i0, l_783_i1, l_783_i2;
            for (l_783_i0 = 0; l_783_i0 < 5; l_783_i0++) {
                for (l_783_i1 = 0; l_783_i1 < 5; l_783_i1++) {
                    for (l_783_i2 = 0; l_783_i2 < 6; l_783_i2++) {
                        result += l_783[l_783_i0][l_783_i1][l_783_i2];
                    }
                }
            }
            atomic_add(&p_1317->g_special_values[75 * get_linear_group_id() + 39], result);
        }
        else
        { /* block id: 522 */
            (1 + 1);
        }
        for (p_1317->g_185.f2 = 0; (p_1317->g_185.f2 >= 0); p_1317->g_185.f2 -= 1)
        { /* block id: 527 */
            int i;
            return p_1317->g_64[p_1317->g_185.f2];
        }
    }
    else
    { /* block id: 530 */
        uint32_t l_785 = 0UL;
        int32_t ***l_788 = &p_1317->g_149[3];
        int32_t l_806 = 0L;
        int32_t l_843 = 0x7F62653EL;
        int32_t l_844 = (-2L);
        uint8_t l_847 = 1UL;
        uint64_t l_851[9][4] = {{18446744073709551608UL,18446744073709551608UL,18446744073709551608UL,18446744073709551608UL},{18446744073709551608UL,18446744073709551608UL,18446744073709551608UL,18446744073709551608UL},{18446744073709551608UL,18446744073709551608UL,18446744073709551608UL,18446744073709551608UL},{18446744073709551608UL,18446744073709551608UL,18446744073709551608UL,18446744073709551608UL},{18446744073709551608UL,18446744073709551608UL,18446744073709551608UL,18446744073709551608UL},{18446744073709551608UL,18446744073709551608UL,18446744073709551608UL,18446744073709551608UL},{18446744073709551608UL,18446744073709551608UL,18446744073709551608UL,18446744073709551608UL},{18446744073709551608UL,18446744073709551608UL,18446744073709551608UL,18446744073709551608UL},{18446744073709551608UL,18446744073709551608UL,18446744073709551608UL,18446744073709551608UL}};
        int16_t **l_856 = &p_1317->g_693;
        int32_t l_870 = (-1L);
        int32_t l_871 = (-1L);
        int32_t l_872 = (-1L);
        int32_t l_873 = (-9L);
        int32_t l_874 = 8L;
        int32_t l_876 = 0x4BE03245L;
        int32_t l_879 = 1L;
        int32_t l_880 = 0L;
        int8_t l_881 = (-2L);
        int32_t l_885[6][9] = {{(-6L),5L,(-6L),(-6L),5L,(-6L),(-6L),5L,(-6L)},{(-6L),5L,(-6L),(-6L),5L,(-6L),(-6L),5L,(-6L)},{(-6L),5L,(-6L),(-6L),5L,(-6L),(-6L),5L,(-6L)},{(-6L),5L,(-6L),(-6L),5L,(-6L),(-6L),5L,(-6L)},{(-6L),5L,(-6L),(-6L),5L,(-6L),(-6L),5L,(-6L)},{(-6L),5L,(-6L),(-6L),5L,(-6L),(-6L),5L,(-6L)}};
        int16_t l_893 = 4L;
        struct S0 *l_910 = &p_1317->g_348;
        int i, j;
        if (l_785)
        { /* block id: 531 */
            int32_t ****l_789 = &l_788;
            int32_t ***l_791 = &p_1317->g_149[3];
            int32_t ****l_790 = &l_791;
            uint32_t ***l_794 = &p_1317->g_638;
            uint32_t ****l_793 = &l_794;
            uint64_t *l_803 = (void*)0;
            uint32_t *l_804 = &p_1317->g_240;
            uint32_t *l_805 = &l_785;
            uint32_t **l_819 = &l_804;
            int64_t *l_822 = (void*)0;
            int64_t *l_823 = &p_1317->g_185.f0;
            int32_t l_838 = 0x1DEA7913L;
            int32_t l_839 = 1L;
            int32_t l_842 = (-8L);
            int32_t l_845 = 0L;
            int32_t l_846 = 1L;
            int32_t l_875[7] = {0L,0L,0L,0L,0L,0L,0L};
            int32_t l_898 = 1L;
            int16_t *l_982 = &p_1317->g_859.f2;
            struct S1 *l_1045 = &p_1317->g_488;
            int i;
            l_806 = (safe_rshift_func_uint16_t_u_s((&p_1317->g_149[2] != ((*l_790) = ((*l_789) = l_788))), (((safe_unary_minus_func_uint8_t_u(0x3AL)) == 0x37L) <= ((*l_805) = ((*l_804) |= ((((l_680 = (((&p_1317->g_638 != ((*l_793) = &p_1317->g_638)) | (safe_add_func_int32_t_s_s(((l_785 >= 0x0DF8L) != (safe_sub_func_int64_t_s_s((+(safe_div_func_uint64_t_u_u((safe_rshift_func_int8_t_s_u((p_3 >= 0x33L), 3)), p_3))), 18446744073709551615UL))), l_785))) ^ l_677[3][1][0])) || 0x1F3323F5F99F7C5AL) , GROUP_DIVERGE(1, 1)) > 0L))))));
            l_680 ^= l_682;
            if (((p_4 == (safe_mod_func_int32_t_s_s((FAKE_DIVERGE(p_1317->local_1_offset, get_local_id(1), 10) ^ ((p_3 || (((*l_823) = ((l_806 = ((*p_1317->g_34) = ((((safe_add_func_uint64_t_u_u((safe_mod_func_uint32_t_u_u(FAKE_DIVERGE(p_1317->global_1_offset, get_global_id(1), 10), p_4)), ((*p_1317->g_693) > ((((p_3 <= (safe_mul_func_int16_t_s_s((safe_sub_func_uint64_t_u_u(((((~p_4) || (((*l_819) = l_804) != (l_820 = &l_785))) | (p_3 , p_4)) || GROUP_DIVERGE(0, 1)), 0x58484AAF93E1743EL)), l_821))) > p_4) < p_4) , (*p_1317->g_693))))) >= p_3) >= 0UL) != l_677[3][1][0]))) , p_3)) > l_785)) ^ p_4)), p_3))) > 0x11FFL))
            { /* block id: 545 */
                int32_t l_824 = 0x5029CF4EL;
                int32_t l_831 = (-1L);
                int32_t l_837 = 1L;
                int32_t l_841 = 0L;
                int16_t l_877 = 0x42F9L;
                int32_t l_887 = 0L;
                int32_t l_888 = 0x73781CF5L;
                int32_t l_889 = 1L;
                int32_t l_891 = 0x0F3DE459L;
                int32_t l_892 = 1L;
                int32_t l_894 = (-1L);
                int32_t l_895 = 0x7CF6EBD2L;
                int32_t l_896 = 0L;
                int32_t l_897 = 0x68FDEE78L;
                if (((-10L) ^ l_824))
                { /* block id: 546 */
                    int32_t *l_825 = &p_1317->g_672;
                    int32_t *l_826 = &l_683[2];
                    int32_t *l_827 = &p_1317->g_667;
                    int32_t *l_828 = &l_681;
                    int32_t *l_829 = &l_680;
                    int32_t *l_830 = &p_1317->g_667;
                    int32_t *l_832 = &p_1317->g_99;
                    int32_t l_833 = (-7L);
                    int32_t *l_834 = &l_682;
                    int32_t *l_835[10];
                    int i;
                    for (i = 0; i < 10; i++)
                        l_835[i] = &l_831;
                    --l_847;
                    l_851[7][3]++;
                    return (*p_1317->g_373);
                }
                else
                { /* block id: 550 */
                    int8_t l_868 = 0x7FL;
                    int32_t l_869 = 0x39CCEBF6L;
                    int32_t l_878 = 0x477AA8DFL;
                    int32_t l_882 = 0x3D10D0ADL;
                    int32_t l_883 = 9L;
                    int32_t l_884 = 1L;
                    int32_t l_886[6] = {0x127B2839L,0x127B2839L,0x127B2839L,0x127B2839L,0x127B2839L,0x127B2839L};
                    int32_t **l_903 = &p_1317->g_150;
                    int i;
                    for (p_1317->g_836 = (-15); (p_1317->g_836 != (-7)); p_1317->g_836 = safe_add_func_uint8_t_u_u(p_1317->g_836, 1))
                    { /* block id: 553 */
                        int32_t *l_862 = (void*)0;
                        int32_t *l_863 = &l_838;
                        int32_t *l_864 = &l_843;
                        int32_t *l_865 = &l_682;
                        int32_t *l_866 = &l_806;
                        int32_t *l_867[8] = {&l_831,&l_831,&l_831,&l_831,&l_831,&l_831,&l_831,&l_831};
                        int i;
                        (*p_1317->g_857) = l_856;
                        (*p_1317->g_504) = &l_843;
                        (*p_1317->g_861) = p_1317->g_859;
                        --l_899[1];
                    }
                    (*p_1317->g_902) = p_3;
                    l_904 = ((*l_903) = &l_869);
                    (**l_903) = (**p_1317->g_512);
                }
            }
            else
            { /* block id: 564 */
                int8_t *l_907 = &l_840;
                struct S0 **l_911[8][3][10] = {{{&l_910,(void*)0,(void*)0,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910},{&l_910,(void*)0,(void*)0,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910},{&l_910,(void*)0,(void*)0,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910}},{{&l_910,(void*)0,(void*)0,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910},{&l_910,(void*)0,(void*)0,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910},{&l_910,(void*)0,(void*)0,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910}},{{&l_910,(void*)0,(void*)0,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910},{&l_910,(void*)0,(void*)0,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910},{&l_910,(void*)0,(void*)0,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910}},{{&l_910,(void*)0,(void*)0,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910},{&l_910,(void*)0,(void*)0,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910},{&l_910,(void*)0,(void*)0,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910}},{{&l_910,(void*)0,(void*)0,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910},{&l_910,(void*)0,(void*)0,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910},{&l_910,(void*)0,(void*)0,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910}},{{&l_910,(void*)0,(void*)0,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910},{&l_910,(void*)0,(void*)0,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910},{&l_910,(void*)0,(void*)0,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910}},{{&l_910,(void*)0,(void*)0,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910},{&l_910,(void*)0,(void*)0,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910},{&l_910,(void*)0,(void*)0,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910}},{{&l_910,(void*)0,(void*)0,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910},{&l_910,(void*)0,(void*)0,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910},{&l_910,(void*)0,(void*)0,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910,&l_910}}};
                int32_t l_913[8] = {0x0C03B5A2L,0x2C3565E3L,0x0C03B5A2L,0x0C03B5A2L,0x2C3565E3L,0x0C03B5A2L,0x0C03B5A2L,0x2C3565E3L};
                uint8_t *l_914[1];
                uint16_t *l_926 = &p_1317->g_390.f0;
                uint32_t l_935 = 0x59C72BCEL;
                uint32_t *l_936 = &p_1317->g_488.f5;
                int32_t l_956 = 1L;
                int64_t ***l_965 = (void*)0;
                int32_t l_1036 = 7L;
                uint32_t l_1039 = 0x6473D852L;
                int i, j, k;
                for (i = 0; i < 1; i++)
                    l_914[i] = &p_1317->g_135[2][9][3];
                (*l_904) = (((*l_907) = 0x5DL) >= ((safe_sub_func_int8_t_s_s((((p_1317->g_912[0] = l_910) == &p_1317->g_205) > ((*p_1317->g_34) = ((void*)0 == &l_904))), (p_4 < p_3))) == (l_874 = (((-1L) | p_1317->g_303[4]) == l_913[1]))));
                l_917 = (safe_add_func_uint16_t_u_u(l_913[1], 0x4D27L));
                if ((safe_mod_func_int8_t_s_s((p_3 ^ (((safe_div_func_int32_t_s_s(((p_4 <= (safe_rshift_func_uint16_t_u_u(p_4, (safe_mul_func_uint16_t_u_u(((*l_926) = (*l_904)), (((*l_907) = (safe_unary_minus_func_int8_t_s((&l_881 != l_914[0])))) || ((((*l_936) = (safe_mod_func_uint64_t_u_u((l_930[4][0] != ((safe_div_func_int16_t_s_s((!((safe_sub_func_int8_t_s_s((((*l_904) <= ((p_3 , p_1317->g_64[0]) , (*p_1317->g_373))) > l_935), (*l_904))) >= p_3)), 0xCA11L)) , (**l_793))), 1L))) , (**p_1317->g_638)) , 1UL))))))) < p_4), 0xEFC159C0L)) , (*l_910)) , l_913[1])), p_1317->g_390.f1)))
                { /* block id: 574 */
                    uint8_t l_953 = 0x3FL;
                    int32_t l_957 = 0x28BA92A9L;
                    int16_t l_958 = (-7L);
                    int32_t *l_961 = &l_873;
                    int32_t *l_962 = &l_875[6];
                    uint64_t l_971 = 0xD1D71BD1B6AC552DL;
                    uint32_t l_975 = 0x143AD417L;
                    int32_t ***l_993 = &p_1317->g_149[3];
                    (*l_904) &= (safe_rshift_func_int8_t_s_u((p_1317->g_168 &= (safe_lshift_func_int16_t_s_s(((GROUP_DIVERGE(1, 1) || (((((safe_lshift_func_int16_t_s_u((~(safe_mod_func_int8_t_s_s((safe_mul_func_int16_t_s_s(0L, (0x4C6F9E1AF24E94D4L ^ ((safe_rshift_func_uint16_t_u_s((safe_div_func_int8_t_s_s((((safe_lshift_func_uint16_t_u_u((((l_913[1] = 0x7AL) ^ l_953) > ((l_935 ^ (0L | (p_1317->g_859.f0 <= p_4))) || (l_956 = (safe_lshift_func_uint16_t_u_u((((*p_1317->g_373) , p_4) , l_953), p_4))))), p_4)) == p_4) , (-1L)), p_1317->g_163)), p_4)) & p_1317->g_488.f6)))), l_953))), p_3)) , l_957) , p_3) | p_4) <= GROUP_DIVERGE(2, 1))) ^ p_1317->g_672), 13))), l_958));
                    for (p_1317->g_672 = 12; (p_1317->g_672 >= 21); ++p_1317->g_672)
                    { /* block id: 581 */
                        int8_t l_972 = 0L;
                        int64_t *l_973[10][1] = {{&p_1317->g_35},{&p_1317->g_35},{&p_1317->g_35},{&p_1317->g_35},{&p_1317->g_35},{&p_1317->g_35},{&p_1317->g_35},{&p_1317->g_35},{&p_1317->g_35},{&p_1317->g_35}};
                        uint64_t **l_974 = &p_1317->g_107;
                        int16_t *l_984[4];
                        int16_t **l_983 = &l_984[3];
                        int32_t ***l_994 = &p_1317->g_149[3];
                        uint8_t **l_1007 = &l_914[0];
                        uint8_t *l_1009 = &l_953;
                        uint8_t **l_1008 = &l_1009;
                        int i, j;
                        for (i = 0; i < 4; i++)
                            l_984[i] = &p_1317->g_348.f2;
                        (*l_962) |= (p_3 , (((((p_3 > ((l_961 = l_961) == l_962)) || (!(((safe_rshift_func_uint16_t_u_u(p_1317->g_421.f0, 14)) , l_965) != ((safe_mul_func_uint16_t_u_u((safe_unary_minus_func_int8_t_s(((&p_1317->g_591[1][1][3] != ((*l_974) = func_19((((*l_907) = p_4) ^ (safe_mod_func_uint8_t_u_u(((((l_971 , l_972) <= p_3) > 249UL) & GROUP_DIVERGE(2, 1)), GROUP_DIVERGE(2, 1)))), &l_850[3][1], p_4, p_1317->g_390.f0, l_973[7][0], p_1317))) < (*p_1317->g_373)))), 65528UL)) , p_1317->g_668)))) != (*p_1317->g_34)) & (*p_1317->g_693)) >= 0x1203E894037FBC49L));
                        --l_975;
                        (*l_962) ^= (((*l_823) = (((safe_add_func_int16_t_s_s(((safe_add_func_int16_t_s_s(0L, ((*l_904) , ((*l_982) = (((*l_926) = (((*p_1317->g_858) = l_982) != ((*l_983) = l_982))) != (safe_lshift_func_int16_t_s_u(p_3, (&p_1317->g_639 == ((((((*p_1317->g_34) |= (safe_lshift_func_int8_t_s_u((safe_mod_func_int8_t_s_s((p_3 | (safe_add_func_int64_t_s_s(p_3, ((((((*l_904) = GROUP_DIVERGE(0, 1)) , l_993) == l_994) | 0x05D833A1AC79D2C8L) | p_1317->g_505[3][4])))), l_972)), p_4))) < FAKE_DIVERGE(p_1317->global_1_offset, get_global_id(1), 10)) == p_3) , (*l_961)) , (void*)0))))))))) , (-7L)), l_935)) ^ GROUP_DIVERGE(2, 1)) & l_683[1])) & p_3);
                        (*l_962) |= (safe_rshift_func_int16_t_s_s(((l_935 >= ((safe_div_func_uint8_t_u_u((safe_div_func_int8_t_s_s((safe_mod_func_uint16_t_u_u((((0xB3L > (safe_lshift_func_int8_t_s_u((+(((*l_1007) = ((safe_add_func_uint64_t_u_u(GROUP_DIVERGE(0, 1), (((*p_1317->g_858) = (*l_983)) == (void*)0))) , l_907)) != ((*l_1008) = &l_847))), 7))) != GROUP_DIVERGE(0, 1)) , ((l_935 > ((safe_mul_func_int8_t_s_s(((safe_lshift_func_int8_t_s_u((*l_904), (safe_mod_func_uint64_t_u_u((safe_div_func_uint64_t_u_u((safe_lshift_func_int16_t_s_s((p_1317->g_348.f2 = (safe_lshift_func_int8_t_s_s((safe_add_func_int32_t_s_s((((*l_982) |= l_913[1]) < (-1L)), p_3)), p_1317->g_108))), (*l_904))), (*p_1317->g_34))), p_3)))) & FAKE_DIVERGE(p_1317->group_1_offset, get_group_id(1), 10)), p_1317->g_591[0][2][0])) >= 0x57FD9521D8EDB0BAL)) || 5UL)), p_4)), p_1317->g_135[4][4][4])), l_913[3])) >= p_4)) < p_1317->g_14), (*l_961)));
                    }
                    if ((atomic_inc(&p_1317->l_atomic_input[23]) == 0))
                    { /* block id: 603 */
                        int32_t l_1025 = 0x2622DEA7L;
                        int32_t *l_1024 = &l_1025;
                        uint16_t l_1026 = 65533UL;
                        uint8_t l_1027[1][10] = {{254UL,1UL,0xA2L,1UL,254UL,254UL,1UL,0xA2L,1UL,254UL}};
                        struct S1 l_1028 = {0L,0x7EEC2368L,-10L,1L,0x0EL,4294967295UL,18446744073709551615UL,0x6EA15EC0F1E3BDD1L};/* VOLATILE GLOBAL l_1028 */
                        struct S1 l_1029[1] = {{1L,0x59A64EE6L,-7L,0x1A01E88BL,6L,0x64608DDCL,0UL,0x288C5E69C5E3B674L}};
                        int i, j;
                        l_1024 = (void*)0;
                        l_1027[0][4] ^= ((l_1026 = 3UL) , 1L);
                        l_1029[0] = l_1028;
                        unsigned int result = 0;
                        result += l_1025;
                        result += l_1026;
                        int l_1027_i0, l_1027_i1;
                        for (l_1027_i0 = 0; l_1027_i0 < 1; l_1027_i0++) {
                            for (l_1027_i1 = 0; l_1027_i1 < 10; l_1027_i1++) {
                                result += l_1027[l_1027_i0][l_1027_i1];
                            }
                        }
                        result += l_1028.f0;
                        result += l_1028.f1;
                        result += l_1028.f2;
                        result += l_1028.f3;
                        result += l_1028.f4;
                        result += l_1028.f5;
                        result += l_1028.f6;
                        result += l_1028.f7;
                        int l_1029_i0;
                        for (l_1029_i0 = 0; l_1029_i0 < 1; l_1029_i0++) {
                            result += l_1029[l_1029_i0].f0;
                            result += l_1029[l_1029_i0].f1;
                            result += l_1029[l_1029_i0].f2;
                            result += l_1029[l_1029_i0].f3;
                            result += l_1029[l_1029_i0].f4;
                            result += l_1029[l_1029_i0].f5;
                            result += l_1029[l_1029_i0].f6;
                            result += l_1029[l_1029_i0].f7;
                        }
                        atomic_add(&p_1317->l_special_values[23], result);
                    }
                    else
                    { /* block id: 608 */
                        (1 + 1);
                    }
                }
                else
                { /* block id: 611 */
                    int16_t l_1035 = 0x0E08L;
                    int32_t l_1037 = 0x046FCFE4L;
                    int32_t l_1038 = 0x13457526L;
                    int32_t *l_1044 = (void*)0;
                    for (p_1317->g_348.f0 = 14; (p_1317->g_348.f0 == 51); ++p_1317->g_348.f0)
                    { /* block id: 614 */
                        int32_t *l_1032 = &l_880;
                        int32_t *l_1033 = &l_875[6];
                        int32_t *l_1034[8][6] = {{&l_913[1],&l_876,&l_838,&l_913[1],&p_1317->g_42,&l_838},{&l_913[1],&l_876,&l_838,&l_913[1],&p_1317->g_42,&l_838},{&l_913[1],&l_876,&l_838,&l_913[1],&p_1317->g_42,&l_838},{&l_913[1],&l_876,&l_838,&l_913[1],&p_1317->g_42,&l_838},{&l_913[1],&l_876,&l_838,&l_913[1],&p_1317->g_42,&l_838},{&l_913[1],&l_876,&l_838,&l_913[1],&p_1317->g_42,&l_838},{&l_913[1],&l_876,&l_838,&l_913[1],&p_1317->g_42,&l_838},{&l_913[1],&l_876,&l_838,&l_913[1],&p_1317->g_42,&l_838}};
                        int i, j;
                        ++l_1039;
                        if (p_3)
                            break;
                    }
                    for (p_1317->g_488.f5 = 8; (p_1317->g_488.f5 != 38); p_1317->g_488.f5 = safe_add_func_int8_t_s_s(p_1317->g_488.f5, 9))
                    { /* block id: 620 */
                        l_1044 = &l_871;
                    }
                }
                (*l_904) ^= l_873;
            }
            (*l_1045) = p_1317->g_185;
        }
        else
        { /* block id: 627 */
            for (p_1317->g_14 = 0; p_1317->g_14 < 4; p_1317->g_14 += 1)
            {
                for (p_1317->g_47 = 0; p_1317->g_47 < 6; p_1317->g_47 += 1)
                {
                    l_850[p_1317->g_14][p_1317->g_47] = 0x76A2898B80A2D2C0L;
                }
            }
        }
        if ((atomic_inc(&p_1317->l_atomic_input[42]) == 8))
        { /* block id: 631 */
            int32_t l_1046 = 0x65BE6964L;
            for (l_1046 = (-18); (l_1046 > (-13)); l_1046++)
            { /* block id: 634 */
                int64_t l_1049[8][1];
                uint32_t l_1131 = 6UL;
                int32_t l_1132[3][9][3] = {{{(-1L),0x3D2ACF57L,0x57E02673L},{(-1L),0x3D2ACF57L,0x57E02673L},{(-1L),0x3D2ACF57L,0x57E02673L},{(-1L),0x3D2ACF57L,0x57E02673L},{(-1L),0x3D2ACF57L,0x57E02673L},{(-1L),0x3D2ACF57L,0x57E02673L},{(-1L),0x3D2ACF57L,0x57E02673L},{(-1L),0x3D2ACF57L,0x57E02673L},{(-1L),0x3D2ACF57L,0x57E02673L}},{{(-1L),0x3D2ACF57L,0x57E02673L},{(-1L),0x3D2ACF57L,0x57E02673L},{(-1L),0x3D2ACF57L,0x57E02673L},{(-1L),0x3D2ACF57L,0x57E02673L},{(-1L),0x3D2ACF57L,0x57E02673L},{(-1L),0x3D2ACF57L,0x57E02673L},{(-1L),0x3D2ACF57L,0x57E02673L},{(-1L),0x3D2ACF57L,0x57E02673L},{(-1L),0x3D2ACF57L,0x57E02673L}},{{(-1L),0x3D2ACF57L,0x57E02673L},{(-1L),0x3D2ACF57L,0x57E02673L},{(-1L),0x3D2ACF57L,0x57E02673L},{(-1L),0x3D2ACF57L,0x57E02673L},{(-1L),0x3D2ACF57L,0x57E02673L},{(-1L),0x3D2ACF57L,0x57E02673L},{(-1L),0x3D2ACF57L,0x57E02673L},{(-1L),0x3D2ACF57L,0x57E02673L},{(-1L),0x3D2ACF57L,0x57E02673L}}};
                uint16_t l_1133 = 65535UL;
                int32_t l_1135 = 0x4E29BFC9L;
                int32_t *l_1134[10] = {(void*)0,&l_1135,(void*)0,(void*)0,&l_1135,(void*)0,(void*)0,&l_1135,(void*)0,(void*)0};
                int32_t *l_1136 = &l_1135;
                int64_t l_1137 = 0x55E0F4FD82DA2CCBL;
                int i, j, k;
                for (i = 0; i < 8; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_1049[i][j] = 0x57ADD823937F93CFL;
                }
                if (l_1049[3][0])
                { /* block id: 635 */
                    uint64_t l_1050 = 0x52A69CE5983492DCL;
                    uint64_t l_1085[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_1085[i] = 0xC66C97AE6A138159L;
                    if ((l_1050 = 0x419B076FL))
                    { /* block id: 637 */
                        int32_t l_1052 = 0x7482C952L;
                        int32_t *l_1051 = &l_1052;
                        int32_t *l_1053 = &l_1052;
                        int8_t l_1054 = 0x77L;
                        int32_t *l_1055 = &l_1052;
                        l_1053 = l_1051;
                        l_1051 = (l_1055 = (GROUP_DIVERGE(0, 1) , (l_1054 , (void*)0)));
                    }
                    else
                    { /* block id: 641 */
                        int8_t l_1056 = (-1L);
                        int16_t l_1057 = 0x7A4EL;
                        uint64_t l_1058 = 0x722F7796AD87D387L;
                        int16_t l_1059 = 0x572AL;
                        int64_t l_1060 = (-2L);
                        int16_t l_1061 = 0x34CBL;
                        int32_t l_1062 = 0x723F888AL;
                        uint16_t l_1063 = 65527UL;
                        int32_t l_1066[2][1];
                        int32_t l_1067 = (-4L);
                        int16_t l_1068 = 1L;
                        int8_t l_1069 = 0x21L;
                        uint32_t l_1070 = 4294967287UL;
                        uint8_t l_1071 = 0xFDL;
                        int32_t *l_1072 = &l_1066[1][0];
                        int32_t *l_1073[5][5] = {{(void*)0,(void*)0,&l_1066[1][0],&l_1066[1][0],(void*)0},{(void*)0,(void*)0,&l_1066[1][0],&l_1066[1][0],(void*)0},{(void*)0,(void*)0,&l_1066[1][0],&l_1066[1][0],(void*)0},{(void*)0,(void*)0,&l_1066[1][0],&l_1066[1][0],(void*)0},{(void*)0,(void*)0,&l_1066[1][0],&l_1066[1][0],(void*)0}};
                        int32_t *l_1074 = &l_1066[1][0];
                        int32_t *l_1075 = &l_1066[1][0];
                        int32_t l_1077 = 0x569F15ACL;
                        int32_t *l_1076 = &l_1077;
                        int32_t *l_1078 = &l_1066[1][0];
                        int32_t *l_1079 = &l_1077;
                        uint16_t l_1080 = 0x8C38L;
                        struct S0 l_1081 = {5UL,0x4A5C11C1L,0x5318L,0x5FL};/* VOLATILE GLOBAL l_1081 */
                        uint8_t l_1082 = 5UL;
                        int32_t *l_1083 = (void*)0;
                        int32_t *l_1084 = &l_1077;
                        int i, j;
                        for (i = 0; i < 2; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_1066[i][j] = (-9L);
                        }
                        l_1076 = ((l_1067 = (l_1056 , (l_1057 , (l_1058 , (l_1066[1][0] = (l_1063++)))))) , (l_1075 = ((l_1069 = l_1068) , (l_1074 = (l_1070 , ((l_1071 &= 0x6B857DFEFAE9C0DCL) , (l_1073[4][2] = l_1072)))))));
                        l_1079 = l_1078;
                        l_1084 = ((l_1080 , (l_1081 , l_1082)) , (l_1083 = (void*)0));
                    }
                    l_1085[1] ^= (-9L);
                }
                else
                { /* block id: 656 */
                    int32_t l_1086 = 0x60108712L;
                    uint32_t l_1109[10] = {0x32D5F233L,0x33A8DFE1L,1UL,0x33A8DFE1L,0x32D5F233L,0x32D5F233L,0x33A8DFE1L,1UL,0x33A8DFE1L,0x32D5F233L};
                    int i;
                    for (l_1086 = 0; (l_1086 > (-21)); --l_1086)
                    { /* block id: 659 */
                        int32_t l_1089 = 1L;
                        uint8_t l_1090 = 0x37L;
                        int32_t l_1091[8];
                        uint32_t l_1092 = 0UL;
                        uint64_t l_1093[7][10] = {{0xB160D0E04E4EFA96L,0x282D25CC5599B89AL,0x282D25CC5599B89AL,0xB160D0E04E4EFA96L,18446744073709551615UL,0x217A33DBAE4079D0L,0xBFD8B9102B65ADC9L,1UL,0x4121E2B3D5CAB096L,18446744073709551611UL},{0xB160D0E04E4EFA96L,0x282D25CC5599B89AL,0x282D25CC5599B89AL,0xB160D0E04E4EFA96L,18446744073709551615UL,0x217A33DBAE4079D0L,0xBFD8B9102B65ADC9L,1UL,0x4121E2B3D5CAB096L,18446744073709551611UL},{0xB160D0E04E4EFA96L,0x282D25CC5599B89AL,0x282D25CC5599B89AL,0xB160D0E04E4EFA96L,18446744073709551615UL,0x217A33DBAE4079D0L,0xBFD8B9102B65ADC9L,1UL,0x4121E2B3D5CAB096L,18446744073709551611UL},{0xB160D0E04E4EFA96L,0x282D25CC5599B89AL,0x282D25CC5599B89AL,0xB160D0E04E4EFA96L,18446744073709551615UL,0x217A33DBAE4079D0L,0xBFD8B9102B65ADC9L,1UL,0x4121E2B3D5CAB096L,18446744073709551611UL},{0xB160D0E04E4EFA96L,0x282D25CC5599B89AL,0x282D25CC5599B89AL,0xB160D0E04E4EFA96L,18446744073709551615UL,0x217A33DBAE4079D0L,0xBFD8B9102B65ADC9L,1UL,0x4121E2B3D5CAB096L,18446744073709551611UL},{0xB160D0E04E4EFA96L,0x282D25CC5599B89AL,0x282D25CC5599B89AL,0xB160D0E04E4EFA96L,18446744073709551615UL,0x217A33DBAE4079D0L,0xBFD8B9102B65ADC9L,1UL,0x4121E2B3D5CAB096L,18446744073709551611UL},{0xB160D0E04E4EFA96L,0x282D25CC5599B89AL,0x282D25CC5599B89AL,0xB160D0E04E4EFA96L,18446744073709551615UL,0x217A33DBAE4079D0L,0xBFD8B9102B65ADC9L,1UL,0x4121E2B3D5CAB096L,18446744073709551611UL}};
                        uint64_t l_1094 = 18446744073709551614UL;
                        int8_t l_1095 = 1L;
                        int32_t l_1096 = 0x6E1003DAL;
                        uint8_t l_1097[9];
                        int32_t *l_1098 = &l_1091[7];
                        uint8_t l_1099[4];
                        uint8_t l_1100 = 0x07L;
                        int16_t l_1101 = (-1L);
                        uint32_t l_1102 = 0xE6098128L;
                        int i, j;
                        for (i = 0; i < 8; i++)
                            l_1091[i] = (-5L);
                        for (i = 0; i < 9; i++)
                            l_1097[i] = 251UL;
                        for (i = 0; i < 4; i++)
                            l_1099[i] = 0xFFL;
                        l_1095 |= ((l_1089 , (l_1093[1][4] = (l_1092 |= (l_1091[7] = l_1090)))) , (l_1094 , (FAKE_DIVERGE(p_1317->group_0_offset, get_group_id(0), 10) , 6L)));
                        l_1098 = ((l_1097[2] &= l_1096) , (void*)0);
                        l_1102 = ((l_1100 = (l_1099[3] , FAKE_DIVERGE(p_1317->group_2_offset, get_group_id(2), 10))) , l_1101);
                    }
                    for (l_1086 = 0; (l_1086 <= 0); l_1086 += 1)
                    { /* block id: 671 */
                        struct S1 l_1103 = {0x06B657315458BF1BL,0x38CE9B73L,0x7B11D87CL,0x74F3025AL,0x45L,0x91DC31DAL,0x42ECAD03DF30242BL,0x2276C8EFF4D48A96L};/* VOLATILE GLOBAL l_1103 */
                        struct S1 l_1104[3][8][5] = {{{{0x04DE4468F89D7645L,0x3476D3F0L,7L,0x4EA4C268L,-9L,0x2E84F3FFL,0xACF04BCA3DF3DC50L,0x133C1602E5D79634L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L}},{{0x04DE4468F89D7645L,0x3476D3F0L,7L,0x4EA4C268L,-9L,0x2E84F3FFL,0xACF04BCA3DF3DC50L,0x133C1602E5D79634L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L}},{{0x04DE4468F89D7645L,0x3476D3F0L,7L,0x4EA4C268L,-9L,0x2E84F3FFL,0xACF04BCA3DF3DC50L,0x133C1602E5D79634L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L}},{{0x04DE4468F89D7645L,0x3476D3F0L,7L,0x4EA4C268L,-9L,0x2E84F3FFL,0xACF04BCA3DF3DC50L,0x133C1602E5D79634L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L}},{{0x04DE4468F89D7645L,0x3476D3F0L,7L,0x4EA4C268L,-9L,0x2E84F3FFL,0xACF04BCA3DF3DC50L,0x133C1602E5D79634L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L}},{{0x04DE4468F89D7645L,0x3476D3F0L,7L,0x4EA4C268L,-9L,0x2E84F3FFL,0xACF04BCA3DF3DC50L,0x133C1602E5D79634L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L}},{{0x04DE4468F89D7645L,0x3476D3F0L,7L,0x4EA4C268L,-9L,0x2E84F3FFL,0xACF04BCA3DF3DC50L,0x133C1602E5D79634L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L}},{{0x04DE4468F89D7645L,0x3476D3F0L,7L,0x4EA4C268L,-9L,0x2E84F3FFL,0xACF04BCA3DF3DC50L,0x133C1602E5D79634L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L}}},{{{0x04DE4468F89D7645L,0x3476D3F0L,7L,0x4EA4C268L,-9L,0x2E84F3FFL,0xACF04BCA3DF3DC50L,0x133C1602E5D79634L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L}},{{0x04DE4468F89D7645L,0x3476D3F0L,7L,0x4EA4C268L,-9L,0x2E84F3FFL,0xACF04BCA3DF3DC50L,0x133C1602E5D79634L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L}},{{0x04DE4468F89D7645L,0x3476D3F0L,7L,0x4EA4C268L,-9L,0x2E84F3FFL,0xACF04BCA3DF3DC50L,0x133C1602E5D79634L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L}},{{0x04DE4468F89D7645L,0x3476D3F0L,7L,0x4EA4C268L,-9L,0x2E84F3FFL,0xACF04BCA3DF3DC50L,0x133C1602E5D79634L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L}},{{0x04DE4468F89D7645L,0x3476D3F0L,7L,0x4EA4C268L,-9L,0x2E84F3FFL,0xACF04BCA3DF3DC50L,0x133C1602E5D79634L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L}},{{0x04DE4468F89D7645L,0x3476D3F0L,7L,0x4EA4C268L,-9L,0x2E84F3FFL,0xACF04BCA3DF3DC50L,0x133C1602E5D79634L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L}},{{0x04DE4468F89D7645L,0x3476D3F0L,7L,0x4EA4C268L,-9L,0x2E84F3FFL,0xACF04BCA3DF3DC50L,0x133C1602E5D79634L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L}},{{0x04DE4468F89D7645L,0x3476D3F0L,7L,0x4EA4C268L,-9L,0x2E84F3FFL,0xACF04BCA3DF3DC50L,0x133C1602E5D79634L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L}}},{{{0x04DE4468F89D7645L,0x3476D3F0L,7L,0x4EA4C268L,-9L,0x2E84F3FFL,0xACF04BCA3DF3DC50L,0x133C1602E5D79634L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L}},{{0x04DE4468F89D7645L,0x3476D3F0L,7L,0x4EA4C268L,-9L,0x2E84F3FFL,0xACF04BCA3DF3DC50L,0x133C1602E5D79634L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L}},{{0x04DE4468F89D7645L,0x3476D3F0L,7L,0x4EA4C268L,-9L,0x2E84F3FFL,0xACF04BCA3DF3DC50L,0x133C1602E5D79634L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L}},{{0x04DE4468F89D7645L,0x3476D3F0L,7L,0x4EA4C268L,-9L,0x2E84F3FFL,0xACF04BCA3DF3DC50L,0x133C1602E5D79634L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L}},{{0x04DE4468F89D7645L,0x3476D3F0L,7L,0x4EA4C268L,-9L,0x2E84F3FFL,0xACF04BCA3DF3DC50L,0x133C1602E5D79634L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L}},{{0x04DE4468F89D7645L,0x3476D3F0L,7L,0x4EA4C268L,-9L,0x2E84F3FFL,0xACF04BCA3DF3DC50L,0x133C1602E5D79634L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L}},{{0x04DE4468F89D7645L,0x3476D3F0L,7L,0x4EA4C268L,-9L,0x2E84F3FFL,0xACF04BCA3DF3DC50L,0x133C1602E5D79634L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L}},{{0x04DE4468F89D7645L,0x3476D3F0L,7L,0x4EA4C268L,-9L,0x2E84F3FFL,0xACF04BCA3DF3DC50L,0x133C1602E5D79634L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x193CB8D2607FB2D1L,-9L,-5L,-4L,7L,4294967288UL,0xA86654D58477714BL,-6L},{0x394CDDC67C4758A0L,-1L,-7L,0L,6L,4294967294UL,0xF57A53CECCD4DCFDL,0x59FB347711BE57A4L}}}};
                        int32_t l_1106 = (-1L);
                        int32_t *l_1105[5][7][4];
                        int32_t l_1107 = (-2L);
                        uint32_t l_1108 = 4294967291UL;
                        int i, j, k;
                        for (i = 0; i < 5; i++)
                        {
                            for (j = 0; j < 7; j++)
                            {
                                for (k = 0; k < 4; k++)
                                    l_1105[i][j][k] = &l_1106;
                            }
                        }
                        l_1104[2][5][2] = l_1103;
                        l_1105[0][3][2] = (void*)0;
                        l_1108 |= l_1107;
                    }
                    if (l_1109[1])
                    { /* block id: 676 */
                        int32_t *l_1110 = (void*)0;
                        int32_t l_1112 = 4L;
                        int32_t *l_1111 = &l_1112;
                        struct S1 l_1113[7] = {{0x23B7BB3D222EB2D1L,0L,-1L,0x2EE0EEA5L,6L,0xF97BD9A8L,0x1AF33254A6F2F09BL,-1L},{0x23B7BB3D222EB2D1L,0L,-1L,0x2EE0EEA5L,6L,0xF97BD9A8L,0x1AF33254A6F2F09BL,-1L},{0x23B7BB3D222EB2D1L,0L,-1L,0x2EE0EEA5L,6L,0xF97BD9A8L,0x1AF33254A6F2F09BL,-1L},{0x23B7BB3D222EB2D1L,0L,-1L,0x2EE0EEA5L,6L,0xF97BD9A8L,0x1AF33254A6F2F09BL,-1L},{0x23B7BB3D222EB2D1L,0L,-1L,0x2EE0EEA5L,6L,0xF97BD9A8L,0x1AF33254A6F2F09BL,-1L},{0x23B7BB3D222EB2D1L,0L,-1L,0x2EE0EEA5L,6L,0xF97BD9A8L,0x1AF33254A6F2F09BL,-1L},{0x23B7BB3D222EB2D1L,0L,-1L,0x2EE0EEA5L,6L,0xF97BD9A8L,0x1AF33254A6F2F09BL,-1L}};
                        struct S1 l_1114 = {0x456201ED21B9DABEL,-1L,0x15E93F83L,7L,0x2BL,0UL,9UL,0x309038BE669BA791L};/* VOLATILE GLOBAL l_1114 */
                        uint32_t l_1115[7];
                        struct S1 l_1116 = {-1L,1L,0x71482E5EL,0L,0x54L,0x09426DB3L,0x2C0E85E580D8D503L,0x55BF157A19FA06DDL};/* VOLATILE GLOBAL l_1116 */
                        int32_t l_1117[5][10][1] = {{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}}};
                        struct S1 l_1118[6][9][4] = {{{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}}},{{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}}},{{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}}},{{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}}},{{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}}},{{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}},{{0L,-1L,-1L,1L,-4L,0xA2E441B9L,1UL,0x540924BE6F78E633L},{0x18EC6F24A323B1E3L,1L,0L,0x5CE581B3L,-1L,0x047550AAL,7UL,0L},{0x70490EE1A2D83357L,0L,0x5D902FCFL,0x3D10AAFAL,0L,0x79EE8DD9L,0UL,0x7B3A9E776C51DCA8L},{-1L,0x27BA31A5L,2L,0x47EFD906L,0x5CL,0UL,0x612601AE62C81181L,5L}}}};
                        struct S1 l_1119 = {1L,0x5B5E18C0L,2L,0x749EE72CL,9L,4294967294UL,0UL,0x4230F36C198B1F02L};/* VOLATILE GLOBAL l_1119 */
                        int i, j, k;
                        for (i = 0; i < 7; i++)
                            l_1115[i] = 0x0B641DF1L;
                        l_1111 = l_1110;
                        l_1114 = l_1113[2];
                        l_1119 = ((l_1115[1] , l_1116) , (l_1117[4][0][0] , l_1118[2][7][0]));
                    }
                    else
                    { /* block id: 680 */
                        int32_t l_1121[1];
                        int32_t *l_1120[4];
                        int32_t *l_1122[1][1][5] = {{{&l_1121[0],&l_1121[0],&l_1121[0],&l_1121[0],&l_1121[0]}}};
                        uint32_t l_1123 = 9UL;
                        struct S0 l_1124 = {0x82CEL,0UL,1L,0UL};/* VOLATILE GLOBAL l_1124 */
                        struct S0 l_1125 = {65531UL,4294967295UL,-1L,4UL};/* VOLATILE GLOBAL l_1125 */
                        uint16_t l_1126[7] = {0x5B91L,0x4CBAL,0x5B91L,0x5B91L,0x4CBAL,0x5B91L,0x5B91L};
                        uint16_t l_1127 = 2UL;
                        uint16_t l_1128[3][6] = {{0xEE45L,0x3929L,0x3929L,0xEE45L,0xEE45L,0x3929L},{0xEE45L,0x3929L,0x3929L,0xEE45L,0xEE45L,0x3929L},{0xEE45L,0x3929L,0x3929L,0xEE45L,0xEE45L,0x3929L}};
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                            l_1121[i] = (-1L);
                        for (i = 0; i < 4; i++)
                            l_1120[i] = &l_1121[0];
                        l_1122[0][0][4] = l_1120[2];
                        l_1125 = (l_1123 , (FAKE_DIVERGE(p_1317->group_2_offset, get_group_id(2), 10) , l_1124));
                        l_1127 |= (l_1086 = l_1126[1]);
                        l_1128[2][1]--;
                    }
                }
                l_1133 = (l_1132[1][3][1] |= (l_1131 |= 0L));
                l_1136 = l_1134[9];
                l_1137 = (-8L);
            }
            for (l_1046 = 0; (l_1046 <= 1); l_1046 += 1)
            { /* block id: 696 */
                uint64_t l_1138 = 0xECA6ED906B2910A3L;
                int32_t l_1139 = (-8L);
                l_1139 = (l_1138 , (-1L));
            }
            for (l_1046 = 27; (l_1046 != (-19)); l_1046--)
            { /* block id: 701 */
                int32_t l_1142[4][4] = {{0x61DF9394L,0x61DF9394L,0x61DF9394L,0x61DF9394L},{0x61DF9394L,0x61DF9394L,0x61DF9394L,0x61DF9394L},{0x61DF9394L,0x61DF9394L,0x61DF9394L,0x61DF9394L},{0x61DF9394L,0x61DF9394L,0x61DF9394L,0x61DF9394L}};
                uint32_t l_1143 = 0UL;
                uint8_t l_1146[4][6][8] = {{{251UL,0x52L,0UL,4UL,255UL,248UL,1UL,1UL},{251UL,0x52L,0UL,4UL,255UL,248UL,1UL,1UL},{251UL,0x52L,0UL,4UL,255UL,248UL,1UL,1UL},{251UL,0x52L,0UL,4UL,255UL,248UL,1UL,1UL},{251UL,0x52L,0UL,4UL,255UL,248UL,1UL,1UL},{251UL,0x52L,0UL,4UL,255UL,248UL,1UL,1UL}},{{251UL,0x52L,0UL,4UL,255UL,248UL,1UL,1UL},{251UL,0x52L,0UL,4UL,255UL,248UL,1UL,1UL},{251UL,0x52L,0UL,4UL,255UL,248UL,1UL,1UL},{251UL,0x52L,0UL,4UL,255UL,248UL,1UL,1UL},{251UL,0x52L,0UL,4UL,255UL,248UL,1UL,1UL},{251UL,0x52L,0UL,4UL,255UL,248UL,1UL,1UL}},{{251UL,0x52L,0UL,4UL,255UL,248UL,1UL,1UL},{251UL,0x52L,0UL,4UL,255UL,248UL,1UL,1UL},{251UL,0x52L,0UL,4UL,255UL,248UL,1UL,1UL},{251UL,0x52L,0UL,4UL,255UL,248UL,1UL,1UL},{251UL,0x52L,0UL,4UL,255UL,248UL,1UL,1UL},{251UL,0x52L,0UL,4UL,255UL,248UL,1UL,1UL}},{{251UL,0x52L,0UL,4UL,255UL,248UL,1UL,1UL},{251UL,0x52L,0UL,4UL,255UL,248UL,1UL,1UL},{251UL,0x52L,0UL,4UL,255UL,248UL,1UL,1UL},{251UL,0x52L,0UL,4UL,255UL,248UL,1UL,1UL},{251UL,0x52L,0UL,4UL,255UL,248UL,1UL,1UL},{251UL,0x52L,0UL,4UL,255UL,248UL,1UL,1UL}}};
                int32_t l_1147 = 1L;
                uint8_t l_1198 = 0xBEL;
                int i, j, k;
                l_1143++;
                if ((l_1146[0][1][4] , l_1147))
                { /* block id: 703 */
                    int32_t l_1152[6] = {(-8L),(-8L),(-8L),(-8L),(-8L),(-8L)};
                    uint64_t l_1153 = 0xCC17F138A8BE8BF1L;
                    struct S1 l_1162 = {-1L,5L,1L,1L,0x04L,0x6C97EC14L,0UL,0L};/* VOLATILE GLOBAL l_1162 */
                    struct S1 l_1163 = {0x731258FE4F50C03BL,0x66CD2E3FL,0x3C36797DL,0L,-2L,9UL,0xDC7624D54473A76AL,0x7594400C12B1CC9DL};/* VOLATILE GLOBAL l_1163 */
                    int i;
                    if ((l_1142[1][3] = 0x1AB1E862L))
                    { /* block id: 705 */
                        struct S1 l_1148 = {-2L,0x0312C75BL,0x69AE7A81L,0x35130D19L,1L,4294967295UL,0x50FD2EF75226712AL,0x1049A95F5715F3E4L};/* VOLATILE GLOBAL l_1148 */
                        struct S1 l_1149 = {6L,8L,0x002B3FC4L,-5L,1L,0UL,0x03520CE54AA0B436L,0x7C03D368CF978802L};/* VOLATILE GLOBAL l_1149 */
                        l_1149 = l_1148;
                    }
                    else
                    { /* block id: 707 */
                        uint8_t l_1150 = 0xE3L;
                        int32_t l_1151 = 0x3D8F204CL;
                        l_1142[2][0] &= (l_1151 = l_1150);
                    }
                    if ((l_1152[4] , l_1153))
                    { /* block id: 711 */
                        int8_t l_1154 = 0x2FL;
                        l_1147 &= l_1154;
                    }
                    else
                    { /* block id: 713 */
                        int64_t l_1155 = 8L;
                        uint32_t l_1156 = 0UL;
                        uint16_t l_1157 = 1UL;
                        int32_t l_1161[9] = {0x55B78E17L,0L,0x55B78E17L,0x55B78E17L,0L,0x55B78E17L,0x55B78E17L,0L,0x55B78E17L};
                        int32_t *l_1160 = &l_1161[7];
                        int i;
                        l_1155 ^= 0x12B6E598L;
                        l_1156 |= 0x2CDED869L;
                        l_1157++;
                        l_1160 = l_1160;
                    }
                    l_1163 = l_1162;
                }
                else
                { /* block id: 720 */
                    uint32_t l_1164 = 0UL;
                    l_1164++;
                }
                for (l_1146[0][1][4] = 0; (l_1146[0][1][4] < 7); l_1146[0][1][4] = safe_add_func_uint16_t_u_u(l_1146[0][1][4], 1))
                { /* block id: 725 */
                    uint16_t l_1169 = 1UL;
                    struct S1 l_1188 = {9L,-1L,1L,0x44855DB2L,0x00L,0x58776A36L,0x0BB5DD3DC2F7DDCCL,0x5D8F17ADB996D512L};/* VOLATILE GLOBAL l_1188 */
                    uint16_t l_1189 = 0xA560L;
                    uint32_t l_1190 = 0xF16CB371L;
                    uint32_t l_1191 = 0x935A2089L;
                    int32_t l_1192 = (-1L);
                    int16_t l_1193 = 0x1FF7L;
                    uint32_t l_1194 = 0x232E1EC4L;
                    struct S1 l_1195 = {0x7DE46C0B807D921AL,0L,0x760EB456L,1L,0x49L,4294967295UL,0UL,0x49C5AC8E4E8D1FABL};/* VOLATILE GLOBAL l_1195 */
                    int32_t *l_1196 = &l_1192;
                    int32_t *l_1197 = &l_1192;
                    if (l_1169)
                    { /* block id: 726 */
                        int8_t l_1170 = 7L;
                        uint64_t l_1171 = 18446744073709551606UL;
                        l_1170 = (-1L);
                        l_1171--;
                    }
                    else
                    { /* block id: 729 */
                        uint32_t l_1174[3];
                        int8_t l_1175 = (-1L);
                        uint32_t l_1176[7][3] = {{0x0D1C639AL,0UL,0x224E7686L},{0x0D1C639AL,0UL,0x224E7686L},{0x0D1C639AL,0UL,0x224E7686L},{0x0D1C639AL,0UL,0x224E7686L},{0x0D1C639AL,0UL,0x224E7686L},{0x0D1C639AL,0UL,0x224E7686L},{0x0D1C639AL,0UL,0x224E7686L}};
                        uint32_t l_1179 = 4294967291UL;
                        uint8_t l_1180 = 0x1DL;
                        int32_t l_1181 = (-5L);
                        struct S0 l_1182 = {0UL,4294967295UL,-4L,1UL};/* VOLATILE GLOBAL l_1182 */
                        uint32_t l_1183 = 0x85611118L;
                        int8_t l_1184 = (-5L);
                        uint16_t l_1185 = 0x7F8FL;
                        int32_t l_1186 = 0x386AD1CAL;
                        int8_t l_1187[8][1][4] = {{{0x54L,3L,5L,0x5EL}},{{0x54L,3L,5L,0x5EL}},{{0x54L,3L,5L,0x5EL}},{{0x54L,3L,5L,0x5EL}},{{0x54L,3L,5L,0x5EL}},{{0x54L,3L,5L,0x5EL}},{{0x54L,3L,5L,0x5EL}},{{0x54L,3L,5L,0x5EL}}};
                        int i, j, k;
                        for (i = 0; i < 3; i++)
                            l_1174[i] = 0UL;
                        l_1147 = l_1174[1];
                        l_1176[5][1]--;
                        l_1142[0][3] |= (l_1187[4][0][1] = (((l_1181 = (GROUP_DIVERGE(2, 1) , ((l_1179 = 0x4C00A32757A8105BL) , l_1180))) , (l_1185 = (l_1182 , (l_1184 ^= l_1183)))) , l_1186));
                    }
                    l_1147 &= ((l_1188 , (l_1190 = l_1189)) , ((l_1194 = (l_1193 = (l_1192 = l_1191))) , (l_1195 , 9L)));
                    l_1197 = (l_1196 = (void*)0);
                }
                if (l_1198)
                { /* block id: 747 */
                    uint8_t l_1199 = 0x92L;
                    int64_t l_1222 = 0x4FA642A762888326L;
                    int32_t l_1223[1][2];
                    int i, j;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 2; j++)
                            l_1223[i][j] = 0x34A06D8AL;
                    }
                    if (l_1199)
                    { /* block id: 748 */
                        uint64_t l_1200 = 18446744073709551615UL;
                        uint32_t l_1203[7][7] = {{6UL,1UL,0UL,6UL,0x1F438DD3L,0UL,0UL},{6UL,1UL,0UL,6UL,0x1F438DD3L,0UL,0UL},{6UL,1UL,0UL,6UL,0x1F438DD3L,0UL,0UL},{6UL,1UL,0UL,6UL,0x1F438DD3L,0UL,0UL},{6UL,1UL,0UL,6UL,0x1F438DD3L,0UL,0UL},{6UL,1UL,0UL,6UL,0x1F438DD3L,0UL,0UL},{6UL,1UL,0UL,6UL,0x1F438DD3L,0UL,0UL}};
                        int i, j;
                        ++l_1200;
                        l_1147 = (l_1203[4][0] = 0x6750536EL);
                    }
                    else
                    { /* block id: 752 */
                        int32_t l_1205 = 0x5581C149L;
                        int32_t *l_1204 = &l_1205;
                        int32_t *l_1206 = (void*)0;
                        int16_t l_1207[9] = {(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L)};
                        int16_t l_1208 = 0x1355L;
                        int8_t l_1209 = 0x55L;
                        uint32_t l_1210 = 0x762E1402L;
                        struct S0 l_1213 = {0UL,0x3F3F72DAL,0x303AL,0x4FL};/* VOLATILE GLOBAL l_1213 */
                        struct S0 l_1214 = {1UL,4294967290UL,0x31DFL,0xB3L};/* VOLATILE GLOBAL l_1214 */
                        int32_t *l_1215 = &l_1205;
                        int32_t *l_1216[1][7] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                        int i, j;
                        l_1206 = l_1204;
                        l_1210++;
                        l_1214 = l_1213;
                        l_1216[0][5] = l_1215;
                    }
                    for (l_1199 = 0; (l_1199 != 34); ++l_1199)
                    { /* block id: 760 */
                        int32_t l_1219 = 0x1C670834L;
                        int16_t l_1220[6] = {0x1949L,0L,0x1949L,0x1949L,0L,0x1949L};
                        int16_t l_1221 = 0x7500L;
                        int i;
                        l_1220[2] = l_1219;
                        l_1147 &= l_1221;
                    }
                    l_1142[2][0] ^= (l_1222 , (l_1147 ^= l_1223[0][1]));
                }
                else
                { /* block id: 766 */
                    uint16_t l_1224 = 0UL;
                    int8_t l_1232 = 0L;
                    int8_t l_1233 = 0x09L;
                    int32_t l_1235 = 0x4394ADD5L;
                    int32_t *l_1234 = &l_1235;
                    int32_t *l_1236 = &l_1235;
                    int64_t l_1237 = 0x7E5C580EF20114A7L;
                    l_1224 = (-2L);
                    for (l_1224 = 0; (l_1224 <= 45); ++l_1224)
                    { /* block id: 770 */
                        struct S0 l_1227 = {3UL,0UL,0x7478L,0x02L};/* VOLATILE GLOBAL l_1227 */
                        struct S0 l_1228 = {0xD02EL,0UL,0x6BB4L,0x7FL};/* VOLATILE GLOBAL l_1228 */
                        int16_t l_1229[3][10][2] = {{{0x1DB7L,0x6052L},{0x1DB7L,0x6052L},{0x1DB7L,0x6052L},{0x1DB7L,0x6052L},{0x1DB7L,0x6052L},{0x1DB7L,0x6052L},{0x1DB7L,0x6052L},{0x1DB7L,0x6052L},{0x1DB7L,0x6052L},{0x1DB7L,0x6052L}},{{0x1DB7L,0x6052L},{0x1DB7L,0x6052L},{0x1DB7L,0x6052L},{0x1DB7L,0x6052L},{0x1DB7L,0x6052L},{0x1DB7L,0x6052L},{0x1DB7L,0x6052L},{0x1DB7L,0x6052L},{0x1DB7L,0x6052L},{0x1DB7L,0x6052L}},{{0x1DB7L,0x6052L},{0x1DB7L,0x6052L},{0x1DB7L,0x6052L},{0x1DB7L,0x6052L},{0x1DB7L,0x6052L},{0x1DB7L,0x6052L},{0x1DB7L,0x6052L},{0x1DB7L,0x6052L},{0x1DB7L,0x6052L},{0x1DB7L,0x6052L}}};
                        struct S1 l_1230 = {0x38BAE2E4B7AC0259L,0L,0L,0x4178C016L,0x3BL,0UL,18446744073709551610UL,0L};/* VOLATILE GLOBAL l_1230 */
                        struct S1 l_1231 = {0x0F02B39CFABA6130L,0x38118094L,0x46C81123L,1L,0x72L,0x26357294L,0x63556453F4C85489L,3L};/* VOLATILE GLOBAL l_1231 */
                        int i, j, k;
                        l_1228 = l_1227;
                        l_1231 = (l_1229[0][6][1] , l_1230);
                    }
                    l_1236 = (l_1232 , (l_1233 , l_1234));
                    if (l_1237)
                    { /* block id: 775 */
                        uint64_t l_1238 = 0x8C4083D5DE4359BCL;
                        struct S0 l_1239 = {1UL,0xEBC4911AL,0x299CL,1UL};/* VOLATILE GLOBAL l_1239 */
                        struct S0 l_1240 = {5UL,0UL,1L,0x87L};/* VOLATILE GLOBAL l_1240 */
                        uint64_t l_1241 = 18446744073709551613UL;
                        l_1147 = ((*l_1234) = l_1238);
                        l_1240 = l_1239;
                        l_1241++;
                    }
                    else
                    { /* block id: 780 */
                        int32_t l_1244 = (-1L);
                        int64_t l_1245 = 0L;
                        uint32_t l_1246 = 4294967295UL;
                        struct S0 l_1249 = {0xA779L,0UL,0x2C7AL,0xF5L};/* VOLATILE GLOBAL l_1249 */
                        uint8_t l_1250[10];
                        uint32_t l_1251 = 0x81EA13A8L;
                        int16_t l_1252 = 0x7C62L;
                        uint32_t l_1253[8] = {8UL,8UL,8UL,8UL,8UL,8UL,8UL,8UL};
                        int64_t l_1254 = 0L;
                        int32_t l_1255 = (-1L);
                        uint32_t l_1256 = 0UL;
                        uint16_t l_1257 = 0xC345L;
                        int16_t l_1258 = 0x0C60L;
                        int32_t *l_1259 = &l_1244;
                        int16_t l_1260[2];
                        int64_t l_1261 = 5L;
                        int i;
                        for (i = 0; i < 10; i++)
                            l_1250[i] = 0xB3L;
                        for (i = 0; i < 2; i++)
                            l_1260[i] = 5L;
                        l_1246++;
                        l_1236 = (((l_1249 , 0xE1AFA93DL) , l_1250[4]) , ((((l_1251 = FAKE_DIVERGE(p_1317->local_1_offset, get_local_id(1), 10)) , 0x5CCDL) , ((l_1254 = ((l_1253[4] = l_1252) , ((*l_1236) = 0x59991438L))) , (l_1256 = l_1255))) , (l_1234 = (l_1257 , ((l_1258 = 0x7281836C63909544L) , l_1259)))));
                        (*l_1236) ^= (l_1260[0] , l_1261);
                    }
                }
            }
            unsigned int result = 0;
            result += l_1046;
            atomic_add(&p_1317->l_special_values[42], result);
        }
        else
        { /* block id: 794 */
            (1 + 1);
        }
        l_681 |= ((p_4 <= p_3) < 5UL);
        for (p_1317->g_859.f0 = 0; (p_1317->g_859.f0 < 33); p_1317->g_859.f0 = safe_add_func_uint64_t_u_u(p_1317->g_859.f0, 7))
        { /* block id: 800 */
            volatile struct S0 **l_1266 = &p_1317->g_1265;
            (*l_1266) = &p_1317->g_100[4];
        }
    }
    for (p_1317->g_185.f1 = 24; (p_1317->g_185.f1 >= 4); --p_1317->g_185.f1)
    { /* block id: 806 */
        uint32_t *l_1269 = (void*)0;
        uint32_t *l_1270[3];
        int32_t *l_1273 = &p_1317->g_99;
        uint16_t l_1291 = 65534UL;
        int16_t l_1299 = 0x2F32L;
        int64_t *l_1303 = &p_1317->g_303[8];
        int64_t **l_1302[6][2][10] = {{{&l_1303,&l_1303,(void*)0,&l_1303,&l_1303,&l_1303,(void*)0,&l_1303,&l_1303,&l_1303},{&l_1303,&l_1303,(void*)0,&l_1303,&l_1303,&l_1303,(void*)0,&l_1303,&l_1303,&l_1303}},{{&l_1303,&l_1303,(void*)0,&l_1303,&l_1303,&l_1303,(void*)0,&l_1303,&l_1303,&l_1303},{&l_1303,&l_1303,(void*)0,&l_1303,&l_1303,&l_1303,(void*)0,&l_1303,&l_1303,&l_1303}},{{&l_1303,&l_1303,(void*)0,&l_1303,&l_1303,&l_1303,(void*)0,&l_1303,&l_1303,&l_1303},{&l_1303,&l_1303,(void*)0,&l_1303,&l_1303,&l_1303,(void*)0,&l_1303,&l_1303,&l_1303}},{{&l_1303,&l_1303,(void*)0,&l_1303,&l_1303,&l_1303,(void*)0,&l_1303,&l_1303,&l_1303},{&l_1303,&l_1303,(void*)0,&l_1303,&l_1303,&l_1303,(void*)0,&l_1303,&l_1303,&l_1303}},{{&l_1303,&l_1303,(void*)0,&l_1303,&l_1303,&l_1303,(void*)0,&l_1303,&l_1303,&l_1303},{&l_1303,&l_1303,(void*)0,&l_1303,&l_1303,&l_1303,(void*)0,&l_1303,&l_1303,&l_1303}},{{&l_1303,&l_1303,(void*)0,&l_1303,&l_1303,&l_1303,(void*)0,&l_1303,&l_1303,&l_1303},{&l_1303,&l_1303,(void*)0,&l_1303,&l_1303,&l_1303,(void*)0,&l_1303,&l_1303,&l_1303}}};
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_1270[i] = &p_1317->g_240;
        (*l_1273) = ((p_1317->g_240--) != (FAKE_DIVERGE(p_1317->group_2_offset, get_group_id(2), 10) >= 0x788E7FC3L));
        for (p_1317->g_35 = 20; (p_1317->g_35 != (-8)); p_1317->g_35 = safe_sub_func_int8_t_s_s(p_1317->g_35, 1))
        { /* block id: 811 */
            int16_t l_1300 = 0x77EFL;
            uint64_t *l_1301 = &l_821;
            int8_t l_1306 = 8L;
            int32_t l_1307 = 0x4B4B5420L;
            l_1307 = (GROUP_DIVERGE(2, 1) , (safe_div_func_uint8_t_u_u(((safe_mul_func_uint16_t_u_u(65532UL, (safe_lshift_func_int16_t_s_s(((safe_lshift_func_int8_t_s_s(((((FAKE_DIVERGE(p_1317->global_0_offset, get_global_id(0), 10) , ((*l_1273) = (safe_sub_func_uint8_t_u_u((safe_mul_func_int16_t_s_s((((p_3 || l_1288[5]) | (!18446744073709551607UL)) < FAKE_DIVERGE(p_1317->global_2_offset, get_global_id(2), 10)), p_1317->g_185.f5)), (FAKE_DIVERGE(p_1317->global_0_offset, get_global_id(0), 10) , (safe_div_func_int64_t_s_s((*l_1273), ((*l_1301) = (p_1317->g_591[1][1][1] ^= (l_1291 , ((safe_lshift_func_int8_t_s_s(7L, 4)) < (((safe_sub_func_int64_t_s_s((l_1299 |= ((safe_sub_func_int16_t_s_s(((**p_1317->g_858) = (((p_1317->g_1298 , p_4) > p_4) || (**p_1317->g_858))), p_3)) < p_3)), l_1300)) != p_1317->g_594[0]) , GROUP_DIVERGE(0, 1))))))))))))) ^ GROUP_DIVERGE(2, 1)) , l_1302[2][0][9]) != l_1304), 1)) , l_1306), 9)))) >= 247UL), l_1306)));
        }
    }
    return (*p_1317->g_373);
}


/* ------------------------------------------ */
/* 
 * reads : p_1317->g_488.f2 p_1317->g_605 p_1317->g_303 p_1317->g_35 p_1317->g_631 p_1317->g_150 p_1317->g_42 p_1317->g_488.f0 p_1317->g_100.f1 p_1317->g_638 p_1317->g_373 p_1317->g_374 p_1317->g_99 p_1317->g_668 p_1317->g_185.f2 p_1317->g_57 p_1317->g_390.f2 p_1317->g_204
 * writes: p_1317->g_488.f2 p_1317->g_110 p_1317->g_607 p_1317->g_488.f6 p_1317->g_77 p_1317->g_150 p_1317->g_605.f2 p_1317->g_488.f0 p_1317->g_42 p_1317->g_638 p_1317->g_99 p_1317->g_667 p_1317->g_135
 */
uint32_t  func_6(int16_t  p_7, int64_t  p_8, int32_t  p_9, struct S2 * p_1317)
{ /* block id: 368 */
    int32_t *l_630 = &p_1317->g_42;
    uint32_t *l_637[10][9][2] = {{{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1}},{{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1}},{{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1}},{{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1}},{{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1}},{{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1}},{{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1}},{{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1}},{{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1}},{{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1},{&p_1317->g_605.f1,&p_1317->g_607.f1}}};
    uint32_t **l_636 = &l_637[4][2][1];
    uint32_t ***l_640[2];
    int64_t **l_651 = &p_1317->g_593[4][0][2];
    int64_t ***l_652 = (void*)0;
    int64_t **l_653 = (void*)0;
    int32_t *l_664 = &p_1317->g_99;
    int32_t l_665 = 0x33920282L;
    int32_t *l_666 = &p_1317->g_667;
    uint8_t *l_669 = (void*)0;
    uint8_t *l_670 = &p_1317->g_135[0][6][0];
    int32_t *l_671[9] = {&p_1317->g_672,&p_1317->g_672,&p_1317->g_672,&p_1317->g_672,&p_1317->g_672,&p_1317->g_672,&p_1317->g_672,&p_1317->g_672,&p_1317->g_672};
    uint64_t l_673[2];
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_640[i] = &p_1317->g_638;
    for (i = 0; i < 2; i++)
        l_673[i] = 0x8F5D500D0A941263L;
    for (p_1317->g_488.f2 = 3; (p_1317->g_488.f2 >= 0); p_1317->g_488.f2 -= 1)
    { /* block id: 371 */
        int8_t l_608 = (-10L);
        int32_t **l_632 = (void*)0;
        int32_t **l_633[9] = {&l_630,&l_630,&l_630,&l_630,&l_630,&l_630,&l_630,&l_630,&l_630};
        int i;
        for (p_1317->g_110 = 4; (p_1317->g_110 >= 0); p_1317->g_110 -= 1)
        { /* block id: 374 */
            struct S0 *l_606[9][10] = {{&p_1317->g_348,&p_1317->g_421,&p_1317->g_421,&p_1317->g_421,&p_1317->g_348,&p_1317->g_348,&p_1317->g_421,&p_1317->g_421,&p_1317->g_421,&p_1317->g_348},{&p_1317->g_348,&p_1317->g_421,&p_1317->g_421,&p_1317->g_421,&p_1317->g_348,&p_1317->g_348,&p_1317->g_421,&p_1317->g_421,&p_1317->g_421,&p_1317->g_348},{&p_1317->g_348,&p_1317->g_421,&p_1317->g_421,&p_1317->g_421,&p_1317->g_348,&p_1317->g_348,&p_1317->g_421,&p_1317->g_421,&p_1317->g_421,&p_1317->g_348},{&p_1317->g_348,&p_1317->g_421,&p_1317->g_421,&p_1317->g_421,&p_1317->g_348,&p_1317->g_348,&p_1317->g_421,&p_1317->g_421,&p_1317->g_421,&p_1317->g_348},{&p_1317->g_348,&p_1317->g_421,&p_1317->g_421,&p_1317->g_421,&p_1317->g_348,&p_1317->g_348,&p_1317->g_421,&p_1317->g_421,&p_1317->g_421,&p_1317->g_348},{&p_1317->g_348,&p_1317->g_421,&p_1317->g_421,&p_1317->g_421,&p_1317->g_348,&p_1317->g_348,&p_1317->g_421,&p_1317->g_421,&p_1317->g_421,&p_1317->g_348},{&p_1317->g_348,&p_1317->g_421,&p_1317->g_421,&p_1317->g_421,&p_1317->g_348,&p_1317->g_348,&p_1317->g_421,&p_1317->g_421,&p_1317->g_421,&p_1317->g_348},{&p_1317->g_348,&p_1317->g_421,&p_1317->g_421,&p_1317->g_421,&p_1317->g_348,&p_1317->g_348,&p_1317->g_421,&p_1317->g_421,&p_1317->g_421,&p_1317->g_348},{&p_1317->g_348,&p_1317->g_421,&p_1317->g_421,&p_1317->g_421,&p_1317->g_348,&p_1317->g_348,&p_1317->g_421,&p_1317->g_421,&p_1317->g_421,&p_1317->g_348}};
            int i, j;
            p_1317->g_607 = p_1317->g_605;
            if (l_608)
                break;
            for (p_1317->g_488.f6 = 0; (p_1317->g_488.f6 <= 4); p_1317->g_488.f6 += 1)
            { /* block id: 379 */
                int32_t *l_628 = &p_1317->g_99;
                for (l_608 = 0; (l_608 <= 6); l_608 += 1)
                { /* block id: 382 */
                    int32_t **l_629 = &l_628;
                    if ((atomic_inc(&p_1317->l_atomic_input[50]) == 2))
                    { /* block id: 384 */
                        int32_t l_610 = 0x086F586FL;
                        int32_t *l_609 = &l_610;
                        int32_t *l_611[8] = {&l_610,&l_610,&l_610,&l_610,&l_610,&l_610,&l_610,&l_610};
                        uint32_t l_612 = 0x5D985BD9L;
                        uint8_t l_613 = 1UL;
                        int32_t l_614 = 0x5B33903AL;
                        int64_t l_615 = 3L;
                        int8_t l_616 = 0x2CL;
                        int64_t l_617[6][4] = {{1L,1L,0x3761592D0358CD0BL,0x65E63577792473D2L},{1L,1L,0x3761592D0358CD0BL,0x65E63577792473D2L},{1L,1L,0x3761592D0358CD0BL,0x65E63577792473D2L},{1L,1L,0x3761592D0358CD0BL,0x65E63577792473D2L},{1L,1L,0x3761592D0358CD0BL,0x65E63577792473D2L},{1L,1L,0x3761592D0358CD0BL,0x65E63577792473D2L}};
                        int64_t l_618 = 0x1050A61237812FE0L;
                        int32_t l_619 = 0x70EFCCDBL;
                        uint8_t l_620 = 0UL;
                        struct S1 l_625 = {-2L,-1L,0x2C7278D5L,-9L,-10L,1UL,18446744073709551615UL,1L};/* VOLATILE GLOBAL l_625 */
                        struct S1 *l_624 = &l_625;
                        struct S1 **l_623[3][10][3] = {{{&l_624,&l_624,&l_624},{&l_624,&l_624,&l_624},{&l_624,&l_624,&l_624},{&l_624,&l_624,&l_624},{&l_624,&l_624,&l_624},{&l_624,&l_624,&l_624},{&l_624,&l_624,&l_624},{&l_624,&l_624,&l_624},{&l_624,&l_624,&l_624},{&l_624,&l_624,&l_624}},{{&l_624,&l_624,&l_624},{&l_624,&l_624,&l_624},{&l_624,&l_624,&l_624},{&l_624,&l_624,&l_624},{&l_624,&l_624,&l_624},{&l_624,&l_624,&l_624},{&l_624,&l_624,&l_624},{&l_624,&l_624,&l_624},{&l_624,&l_624,&l_624},{&l_624,&l_624,&l_624}},{{&l_624,&l_624,&l_624},{&l_624,&l_624,&l_624},{&l_624,&l_624,&l_624},{&l_624,&l_624,&l_624},{&l_624,&l_624,&l_624},{&l_624,&l_624,&l_624},{&l_624,&l_624,&l_624},{&l_624,&l_624,&l_624},{&l_624,&l_624,&l_624},{&l_624,&l_624,&l_624}}};
                        struct S1 **l_626[10][5][3] = {{{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0}},{{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0}},{{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0}},{{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0}},{{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0}},{{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0}},{{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0}},{{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0}},{{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0}},{{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0},{&l_624,&l_624,(void*)0}}};
                        struct S1 **l_627 = &l_624;
                        int i, j, k;
                        l_611[0] = l_609;
                        l_613 = l_612;
                        l_620--;
                        l_627 = (l_626[9][1][0] = l_623[1][7][0]);
                        unsigned int result = 0;
                        result += l_610;
                        result += l_612;
                        result += l_613;
                        result += l_614;
                        result += l_615;
                        result += l_616;
                        int l_617_i0, l_617_i1;
                        for (l_617_i0 = 0; l_617_i0 < 6; l_617_i0++) {
                            for (l_617_i1 = 0; l_617_i1 < 4; l_617_i1++) {
                                result += l_617[l_617_i0][l_617_i1];
                            }
                        }
                        result += l_618;
                        result += l_619;
                        result += l_620;
                        result += l_625.f0;
                        result += l_625.f1;
                        result += l_625.f2;
                        result += l_625.f3;
                        result += l_625.f4;
                        result += l_625.f5;
                        result += l_625.f6;
                        result += l_625.f7;
                        atomic_add(&p_1317->l_special_values[50], result);
                    }
                    else
                    { /* block id: 390 */
                        (1 + 1);
                    }
                    for (p_1317->g_77 = 0; (p_1317->g_77 <= 3); p_1317->g_77 += 1)
                    { /* block id: 395 */
                        int i;
                        return p_1317->g_303[(p_1317->g_488.f2 + 6)];
                    }
                    (*l_629) = l_628;
                }
                return p_1317->g_35;
            }
        }
        (*p_1317->g_631) = l_630;
        l_630 = (*p_1317->g_631);
        for (p_1317->g_605.f2 = 3; (p_1317->g_605.f2 >= 0); p_1317->g_605.f2 -= 1)
        { /* block id: 407 */
            if ((*l_630))
                break;
            for (p_1317->g_488.f0 = 0; (p_1317->g_488.f0 <= 9); p_1317->g_488.f0 += 1)
            { /* block id: 411 */
                int i;
                (*p_1317->g_150) ^= p_8;
                return p_1317->g_100[4].f1;
            }
            return p_1317->g_605.f0;
        }
    }
    l_673[0] &= (safe_sub_func_uint32_t_u_u((l_636 != (p_1317->g_638 = p_1317->g_638)), ((0xBAL == (((*l_630) && (safe_add_func_uint32_t_u_u((safe_sub_func_uint64_t_u_u((*l_630), (safe_rshift_func_int16_t_s_u((((safe_mod_func_int8_t_s_s((!(safe_mul_func_uint16_t_u_u(((l_651 != (l_653 = l_651)) | ((safe_add_func_uint8_t_u_u(((*l_670) = ((((safe_div_func_uint16_t_u_u(((((((safe_add_func_int8_t_s_s((safe_div_func_uint16_t_u_u((((*l_666) = ((*p_1317->g_373) & (l_665 = ((*l_664) &= (safe_mul_func_int16_t_s_s((*l_630), 0xDEFAL)))))) <= 1UL), p_1317->g_35)), 0x58L)) , (void*)0) == p_1317->g_668) <= p_1317->g_185.f2) < p_8) | 4294967287UL), 0x7079L)) & p_8) > p_8) >= 4294967294UL)), 248UL)) > (*l_630))), p_1317->g_57))), 1L)) <= 0xD6L) >= 18446744073709551608UL), 7)))), 0x58F4622AL))) , p_8)) > p_1317->g_390.f2)));
    return p_1317->g_204;
}


/* ------------------------------------------ */
/* 
 * reads : p_1317->g_594
 * writes:
 */
int64_t  func_15(int64_t * p_16, int64_t * p_17, int64_t  p_18, struct S2 * p_1317)
{ /* block id: 363 */
    int32_t *l_597[7][7] = {{&p_1317->g_99,&p_1317->g_42,(void*)0,&p_1317->g_99,&p_1317->g_99,&p_1317->g_99,(void*)0},{&p_1317->g_99,&p_1317->g_42,(void*)0,&p_1317->g_99,&p_1317->g_99,&p_1317->g_99,(void*)0},{&p_1317->g_99,&p_1317->g_42,(void*)0,&p_1317->g_99,&p_1317->g_99,&p_1317->g_99,(void*)0},{&p_1317->g_99,&p_1317->g_42,(void*)0,&p_1317->g_99,&p_1317->g_99,&p_1317->g_99,(void*)0},{&p_1317->g_99,&p_1317->g_42,(void*)0,&p_1317->g_99,&p_1317->g_99,&p_1317->g_99,(void*)0},{&p_1317->g_99,&p_1317->g_42,(void*)0,&p_1317->g_99,&p_1317->g_99,&p_1317->g_99,(void*)0},{&p_1317->g_99,&p_1317->g_42,(void*)0,&p_1317->g_99,&p_1317->g_99,&p_1317->g_99,(void*)0}};
    int32_t **l_598 = &l_597[1][4];
    int i, j;
    (*l_598) = l_597[1][4];
    return (*p_17);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int64_t * func_19(uint64_t  p_20, int64_t * p_21, uint32_t  p_22, uint16_t  p_23, int64_t * p_24, struct S2 * p_1317)
{ /* block id: 360 */
    int32_t *l_595 = &p_1317->g_42;
    int64_t *l_596 = &p_1317->g_594[0];
    l_595 = l_595;
    return l_596;
}


/* ------------------------------------------ */
/* 
 * reads : p_1317->g_49 p_1317->g_58 p_1317->g_35 p_1317->g_47 p_1317->g_64 p_1317->g_34 p_1317->g_56 p_1317->g_99 p_1317->g_100 p_1317->g_42 p_1317->g_135 p_1317->g_77 p_1317->g_108 p_1317->g_57 p_1317->g_166 p_1317->g_46 p_1317->g_170 p_1317->g_179 p_1317->g_185 p_1317->g_204 p_1317->g_205 p_1317->g_223 p_1317->g_240 p_1317->g_65 p_1317->g_168 p_1317->g_344 p_1317->g_373 p_1317->g_303 p_1317->g_390 p_1317->g_44 p_1317->g_403 p_1317->g_421 p_1317->g_423 p_1317->g_183.f3 p_1317->g_488.f0 p_1317->g_488 p_1317->g_504 p_1317->g_511 p_1317->g_512 p_1317->g_505 p_1317->g_533 p_1317->g_101.f0 p_1317->g_589 p_1317->g_591
 * writes: p_1317->g_49 p_1317->g_58 p_1317->g_35 p_1317->g_77 p_1317->g_42 p_1317->g_99 p_1317->g_101 p_1317->g_107 p_1317->g_110 p_1317->g_135 p_1317->g_149 p_1317->g_163 p_1317->g_166 p_1317->g_168 p_1317->g_170 p_1317->g_108 p_1317->g_183 p_1317->g_185 p_1317->g_100 p_1317->g_240 p_1317->g_303 p_1317->g_57 p_1317->g_344 p_1317->g_46 p_1317->g_390 p_1317->g_488 p_1317->g_150 p_1317->g_348.f2 p_1317->g_533 p_1317->g_591
 */
int8_t  func_29(uint64_t  p_30, uint64_t  p_31, int64_t * p_32, int64_t * p_33, struct S2 * p_1317)
{ /* block id: 6 */
    int64_t l_38[5] = {0x0AD385E3970C0F3AL,0x0AD385E3970C0F3AL,0x0AD385E3970C0F3AL,0x0AD385E3970C0F3AL,0x0AD385E3970C0F3AL};
    int32_t l_40 = 0L;
    int32_t l_43 = (-5L);
    int32_t l_45 = 1L;
    int32_t *l_52 = &p_1317->g_42;
    int32_t *l_53 = (void*)0;
    int32_t *l_54[5];
    uint16_t l_66 = 1UL;
    int i;
    for (i = 0; i < 5; i++)
        l_54[i] = &l_40;
    for (p_30 = (-18); (p_30 >= 13); ++p_30)
    { /* block id: 9 */
        int32_t *l_39 = (void*)0;
        int32_t *l_41[1][1];
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 1; j++)
                l_41[i][j] = &l_40;
        }
        --p_1317->g_49;
    }
    p_1317->g_58++;
    l_66++;
    for (p_1317->g_35 = (-14); (p_1317->g_35 >= 23); p_1317->g_35 = safe_add_func_uint32_t_u_u(p_1317->g_35, 7))
    { /* block id: 16 */
        uint64_t *l_76 = &p_1317->g_77;
        int32_t l_91 = 0x68ECBDE3L;
        int64_t *l_281 = &l_38[0];
        p_1317->g_591[1][1][3] &= ((((void*)0 != p_32) == ((&l_45 == (void*)0) | (((0x79BFL ^ func_71((((*l_76) = p_1317->g_47) && (9UL & ((*l_281) = (safe_add_func_uint16_t_u_u(func_80(l_76, func_83(func_87(l_91, p_1317->g_64[0], &l_38[2], p_1317), p_31, p_30, p_1317), p_1317), p_1317->g_240))))), p_30, &l_91, p_30, p_1317)) || p_1317->g_390.f0) == (*p_33)))) != p_1317->g_35);
    }
    return (*l_52);
}


/* ------------------------------------------ */
/* 
 * reads : p_1317->g_166 p_1317->g_240 p_1317->g_185.f2 p_1317->g_185 p_1317->g_46 p_1317->g_135 p_1317->g_65 p_1317->g_57 p_1317->g_168 p_1317->g_163 p_1317->g_344 p_1317->g_100.f0 p_1317->g_108 p_1317->g_373 p_1317->g_303 p_1317->g_58 p_1317->g_390 p_1317->g_99 p_1317->g_44 p_1317->g_403 p_1317->g_64 p_1317->g_421 p_1317->g_423 p_1317->g_183.f3 p_1317->g_488.f0 p_1317->g_488 p_1317->g_504 p_1317->g_511 p_1317->g_512 p_1317->g_170 p_1317->g_505 p_1317->g_348.f2 p_1317->g_533 p_1317->g_101.f0 p_1317->g_223.f3 p_1317->g_589
 * writes: p_1317->g_166 p_1317->g_240 p_1317->g_185.f2 p_1317->g_303 p_1317->g_57 p_1317->g_163 p_1317->g_344 p_1317->g_168 p_1317->g_46 p_1317->g_135 p_1317->g_390 p_1317->g_108 p_1317->g_488 p_1317->g_150 p_1317->g_170 p_1317->g_348.f2 p_1317->g_533
 */
uint16_t  func_71(uint64_t  p_72, int32_t  p_73, int32_t * p_74, uint32_t  p_75, struct S2 * p_1317)
{ /* block id: 135 */
    int16_t l_289 = 0x6770L;
    int32_t l_315 = 0x40A62B4EL;
    int32_t l_318 = (-5L);
    int16_t l_319 = 0x3A45L;
    int32_t l_321 = 0x1C82C021L;
    int32_t l_322 = 0x37CFECE7L;
    int32_t l_325[10] = {(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L)};
    uint32_t l_368 = 0x9D505C4AL;
    uint32_t *l_375 = (void*)0;
    uint16_t l_376 = 65531UL;
    int32_t *l_378 = &l_318;
    int32_t *l_379 = &l_321;
    int32_t *l_380 = &l_325[0];
    int32_t *l_381 = &l_325[7];
    int32_t *l_382 = &p_1317->g_99;
    int32_t *l_383 = &l_318;
    int64_t l_384 = 0x6710E45B4B48D079L;
    int32_t *l_385 = (void*)0;
    int32_t *l_386[4];
    uint32_t l_387[4] = {0xE0C22A59L,0xE0C22A59L,0xE0C22A59L,0xE0C22A59L};
    uint8_t *l_393 = &p_1317->g_135[3][4][3];
    int64_t l_429 = 0x7A573F722F6A5CFFL;
    struct S1 *l_487 = &p_1317->g_488;
    int32_t l_529 = 0x2465239EL;
    int64_t *l_566[6] = {&p_1317->g_303[4],&p_1317->g_303[4],&p_1317->g_303[4],&p_1317->g_303[4],&p_1317->g_303[4],&p_1317->g_303[4]};
    int i;
    for (i = 0; i < 4; i++)
        l_386[i] = &l_322;
    for (p_1317->g_166 = (-2); (p_1317->g_166 <= 18); ++p_1317->g_166)
    { /* block id: 138 */
        uint32_t l_286 = 0x088709E2L;
        int32_t l_290 = 0x59FDBCDAL;
        int32_t l_316 = (-1L);
        int32_t l_320 = 2L;
        int32_t l_323 = 1L;
        int32_t l_326 = 6L;
        int32_t l_329 = 1L;
        int32_t l_332 = (-1L);
        int32_t l_333 = (-9L);
        int8_t l_334 = 1L;
        int32_t l_335 = (-5L);
        int32_t l_337 = 1L;
        int32_t l_339 = 0x27CF92B8L;
        uint16_t l_340 = 2UL;
        int8_t l_343 = 0L;
        struct S0 *l_347 = &p_1317->g_348;
        uint32_t *l_355 = &p_1317->g_240;
        int64_t *l_377[2];
        int i;
        for (i = 0; i < 2; i++)
            l_377[i] = &p_1317->g_185.f0;
        for (p_1317->g_240 = (-30); (p_1317->g_240 == 21); p_1317->g_240 = safe_add_func_uint32_t_u_u(p_1317->g_240, 8))
        { /* block id: 141 */
            int16_t l_287 = 6L;
            int32_t *l_288[9][6] = {{&p_1317->g_99,&p_1317->g_42,&p_1317->g_99,&p_1317->g_42,&p_1317->g_99,&p_1317->g_99},{&p_1317->g_99,&p_1317->g_42,&p_1317->g_99,&p_1317->g_42,&p_1317->g_99,&p_1317->g_99},{&p_1317->g_99,&p_1317->g_42,&p_1317->g_99,&p_1317->g_42,&p_1317->g_99,&p_1317->g_99},{&p_1317->g_99,&p_1317->g_42,&p_1317->g_99,&p_1317->g_42,&p_1317->g_99,&p_1317->g_99},{&p_1317->g_99,&p_1317->g_42,&p_1317->g_99,&p_1317->g_42,&p_1317->g_99,&p_1317->g_99},{&p_1317->g_99,&p_1317->g_42,&p_1317->g_99,&p_1317->g_42,&p_1317->g_99,&p_1317->g_99},{&p_1317->g_99,&p_1317->g_42,&p_1317->g_99,&p_1317->g_42,&p_1317->g_99,&p_1317->g_99},{&p_1317->g_99,&p_1317->g_42,&p_1317->g_99,&p_1317->g_42,&p_1317->g_99,&p_1317->g_99},{&p_1317->g_99,&p_1317->g_42,&p_1317->g_99,&p_1317->g_42,&p_1317->g_99,&p_1317->g_99}};
            uint8_t l_291 = 0UL;
            int32_t l_327 = 0x47159C8BL;
            int i, j;
            (*p_74) &= (p_73 , l_286);
            --l_291;
            for (p_1317->g_185.f2 = 0; (p_1317->g_185.f2 <= 28); p_1317->g_185.f2 = safe_add_func_uint64_t_u_u(p_1317->g_185.f2, 3))
            { /* block id: 146 */
                int64_t *l_302 = &p_1317->g_303[4];
                int32_t l_312 = 1L;
                int32_t l_317 = 1L;
                int32_t l_324 = 0x4DBC6565L;
                int32_t l_328 = 0L;
                int32_t l_330 = 4L;
                int32_t l_331 = (-1L);
                int32_t l_336 = (-7L);
                int32_t l_338 = 0x45464B65L;
                (*p_74) = (safe_mul_func_int16_t_s_s((((safe_div_func_uint16_t_u_u((((p_1317->g_57 ^= (((safe_mod_func_uint8_t_u_u((((((*l_302) = (1L || 0xF9L)) , ((void*)0 == &p_1317->g_149[2])) > ((safe_lshift_func_int8_t_s_u((((safe_mul_func_int16_t_s_s(((p_72 < (p_1317->g_185 , (0x6A55D67176CBD41AL < (safe_lshift_func_uint8_t_u_u(255UL, 2))))) ^ (safe_mul_func_uint16_t_u_u(p_75, 0x6337L))), FAKE_DIVERGE(p_1317->global_2_offset, get_global_id(2), 10))) | l_289) < l_289), p_1317->g_46)) , 0x3201C3AF0021F9A6L)) >= p_1317->g_135[1][2][1]), p_1317->g_65)) ^ p_72) ^ l_312)) || GROUP_DIVERGE(1, 1)) || p_72), 1UL)) > p_73) ^ p_1317->g_168), GROUP_DIVERGE(1, 1)));
                for (p_1317->g_163 = 14; (p_1317->g_163 >= 52); ++p_1317->g_163)
                { /* block id: 152 */
                    l_315 = ((*p_74) = l_290);
                    (*p_74) |= 2L;
                }
                l_340--;
                p_1317->g_344++;
            }
        }
        l_347 = (void*)0;
        (*p_74) = ((safe_mul_func_uint16_t_u_u((safe_add_func_int16_t_s_s(p_1317->g_100[4].f0, (!((safe_mod_func_uint32_t_u_u((++(*l_355)), (safe_rshift_func_uint16_t_u_u(0xE907L, 13)))) || (p_1317->g_108 , ((safe_sub_func_int64_t_s_s((l_332 = ((p_73 && (safe_add_func_int32_t_s_s((safe_mod_func_uint8_t_u_u(1UL, (safe_lshift_func_int8_t_s_u(l_368, (safe_div_func_int8_t_s_s(((((safe_mul_func_int16_t_s_s((p_1317->g_373 != l_375), (((0x993614B3L | l_332) > l_322) ^ 0xFD1FC5C8L))) < p_1317->g_240) >= 0x17L) ^ l_376), p_1317->g_303[4])))))), l_368))) > p_75)), 0x00AF8C7771C0A4F6L)) , GROUP_DIVERGE(0, 1))))))), p_1317->g_135[3][4][3])) >= p_1317->g_185.f5);
    }
    ++l_387[0];
    if ((((*l_381) && p_1317->g_58) || ((*p_74) < (p_1317->g_390 , ((&p_1317->g_34 == (void*)0) > GROUP_DIVERGE(2, 1))))))
    { /* block id: 167 */
        uint8_t *l_394[3][7][2] = {{{&p_1317->g_135[1][4][4],&p_1317->g_135[1][4][4]},{&p_1317->g_135[1][4][4],&p_1317->g_135[1][4][4]},{&p_1317->g_135[1][4][4],&p_1317->g_135[1][4][4]},{&p_1317->g_135[1][4][4],&p_1317->g_135[1][4][4]},{&p_1317->g_135[1][4][4],&p_1317->g_135[1][4][4]},{&p_1317->g_135[1][4][4],&p_1317->g_135[1][4][4]},{&p_1317->g_135[1][4][4],&p_1317->g_135[1][4][4]}},{{&p_1317->g_135[1][4][4],&p_1317->g_135[1][4][4]},{&p_1317->g_135[1][4][4],&p_1317->g_135[1][4][4]},{&p_1317->g_135[1][4][4],&p_1317->g_135[1][4][4]},{&p_1317->g_135[1][4][4],&p_1317->g_135[1][4][4]},{&p_1317->g_135[1][4][4],&p_1317->g_135[1][4][4]},{&p_1317->g_135[1][4][4],&p_1317->g_135[1][4][4]},{&p_1317->g_135[1][4][4],&p_1317->g_135[1][4][4]}},{{&p_1317->g_135[1][4][4],&p_1317->g_135[1][4][4]},{&p_1317->g_135[1][4][4],&p_1317->g_135[1][4][4]},{&p_1317->g_135[1][4][4],&p_1317->g_135[1][4][4]},{&p_1317->g_135[1][4][4],&p_1317->g_135[1][4][4]},{&p_1317->g_135[1][4][4],&p_1317->g_135[1][4][4]},{&p_1317->g_135[1][4][4],&p_1317->g_135[1][4][4]},{&p_1317->g_135[1][4][4],&p_1317->g_135[1][4][4]}}};
        int8_t *l_397 = (void*)0;
        int8_t *l_398 = (void*)0;
        int8_t *l_399 = (void*)0;
        int8_t *l_400 = &p_1317->g_168;
        int32_t l_408 = (-1L);
        int32_t l_413 = (-1L);
        uint8_t l_418 = 248UL;
        int32_t l_432 = 0x2C03F2F6L;
        int32_t l_433 = (-1L);
        int32_t l_434 = (-5L);
        uint32_t l_435 = 4294967295UL;
        int i, j, k;
        if ((safe_sub_func_int32_t_s_s((l_393 == l_394[2][4][0]), (safe_lshift_func_uint8_t_u_s((((*l_382) , ((*l_400) = (p_1317->g_44 < p_1317->g_185.f2))) , (safe_mul_func_uint8_t_u_u(0x50L, (p_1317->g_403 , ((safe_rshift_func_uint8_t_u_u(p_1317->g_64[0], 1)) < (+(safe_add_func_int64_t_s_s(8L, l_408)))))))), p_73)))))
        { /* block id: 169 */
            int16_t *l_414 = &p_1317->g_46;
            int32_t l_417 = 0x281D6DDEL;
            if ((safe_mod_func_int64_t_s_s((l_408 = (1L < (-3L))), (safe_mod_func_int8_t_s_s((0L ^ ((*l_414) ^= (0L | l_413))), (++(*l_393)))))))
            { /* block id: 173 */
                l_418++;
                (*l_381) = (*p_74);
            }
            else
            { /* block id: 176 */
                (*p_1317->g_423) = p_1317->g_421;
                p_74 = &l_413;
            }
        }
        else
        { /* block id: 180 */
            int16_t l_424 = 0x5E28L;
            int32_t l_425 = 0x7450D317L;
            int32_t l_426 = 9L;
            int32_t l_427 = (-1L);
            int32_t l_428 = 0L;
            int32_t l_430 = 0x6E373440L;
            int32_t l_431[7] = {0x3119ABA7L,0x519CB0F0L,0x3119ABA7L,0x3119ABA7L,0x519CB0F0L,0x3119ABA7L,0x3119ABA7L};
            int i;
            --l_435;
        }
        if ((atomic_inc(&p_1317->l_atomic_input[45]) == 1))
        { /* block id: 184 */
            int16_t l_438 = 0x31D4L;
            uint32_t l_439[7][8] = {{4294967295UL,1UL,4294967295UL,1UL,4294967295UL,4294967295UL,1UL,4294967295UL},{4294967295UL,1UL,4294967295UL,1UL,4294967295UL,4294967295UL,1UL,4294967295UL},{4294967295UL,1UL,4294967295UL,1UL,4294967295UL,4294967295UL,1UL,4294967295UL},{4294967295UL,1UL,4294967295UL,1UL,4294967295UL,4294967295UL,1UL,4294967295UL},{4294967295UL,1UL,4294967295UL,1UL,4294967295UL,4294967295UL,1UL,4294967295UL},{4294967295UL,1UL,4294967295UL,1UL,4294967295UL,4294967295UL,1UL,4294967295UL},{4294967295UL,1UL,4294967295UL,1UL,4294967295UL,4294967295UL,1UL,4294967295UL}};
            struct S1 l_440 = {0L,-1L,0L,1L,0x42L,0x8EB9621DL,0xE6752B76D165C002L,0x026B508783C2FE79L};/* VOLATILE GLOBAL l_440 */
            uint8_t l_441[3][6][2] = {{{0x8EL,0x8EL},{0x8EL,0x8EL},{0x8EL,0x8EL},{0x8EL,0x8EL},{0x8EL,0x8EL},{0x8EL,0x8EL}},{{0x8EL,0x8EL},{0x8EL,0x8EL},{0x8EL,0x8EL},{0x8EL,0x8EL},{0x8EL,0x8EL},{0x8EL,0x8EL}},{{0x8EL,0x8EL},{0x8EL,0x8EL},{0x8EL,0x8EL},{0x8EL,0x8EL},{0x8EL,0x8EL},{0x8EL,0x8EL}}};
            uint64_t l_442 = 0UL;
            int i, j, k;
            l_442 &= (l_438 , (((l_439[4][3] = 0x649A4F33L) , l_440) , l_441[1][2][0]));
            for (l_439[3][5] = 0; (l_439[3][5] <= 9); l_439[3][5] += 1)
            { /* block id: 189 */
                int32_t l_443 = 0x582360D5L;
                uint16_t l_444 = 5UL;
                int8_t l_445[10] = {0x2FL,1L,(-1L),1L,0x2FL,0x2FL,1L,(-1L),1L,0x2FL};
                uint32_t l_448 = 0x98BCBC1BL;
                uint32_t *l_447 = &l_448;
                uint32_t **l_446 = &l_447;
                uint32_t **l_449 = (void*)0;
                int i;
                l_444 &= l_443;
                l_449 = (l_445[5] , l_446);
                for (l_448 = 1; (l_448 <= 9); l_448 += 1)
                { /* block id: 194 */
                    int32_t l_450 = 0x52C6664DL;
                    uint8_t l_460 = 248UL;
                    for (l_450 = 0; (l_450 >= 0); l_450 -= 1)
                    { /* block id: 197 */
                        l_443 |= 0L;
                    }
                    for (l_450 = 1; (l_450 >= 0); l_450 -= 1)
                    { /* block id: 202 */
                        l_443 &= 5L;
                    }
                    for (l_450 = 0; (l_450 <= 3); l_450 += 1)
                    { /* block id: 207 */
                        struct S0 l_451 = {0x89EAL,0UL,0x043CL,0xB3L};/* VOLATILE GLOBAL l_451 */
                        struct S0 l_452[1][8][10] = {{{{2UL,0x2ACC4088L,-6L,1UL},{0x5981L,0x1CB09CEFL,-7L,2UL},{2UL,0x2ACC4088L,-6L,1UL},{2UL,0x2ACC4088L,-6L,1UL},{0x5981L,0x1CB09CEFL,-7L,2UL},{2UL,0x2ACC4088L,-6L,1UL},{2UL,0x2ACC4088L,-6L,1UL},{0x5981L,0x1CB09CEFL,-7L,2UL},{2UL,0x2ACC4088L,-6L,1UL},{2UL,0x2ACC4088L,-6L,1UL}},{{2UL,0x2ACC4088L,-6L,1UL},{0x5981L,0x1CB09CEFL,-7L,2UL},{2UL,0x2ACC4088L,-6L,1UL},{2UL,0x2ACC4088L,-6L,1UL},{0x5981L,0x1CB09CEFL,-7L,2UL},{2UL,0x2ACC4088L,-6L,1UL},{2UL,0x2ACC4088L,-6L,1UL},{0x5981L,0x1CB09CEFL,-7L,2UL},{2UL,0x2ACC4088L,-6L,1UL},{2UL,0x2ACC4088L,-6L,1UL}},{{2UL,0x2ACC4088L,-6L,1UL},{0x5981L,0x1CB09CEFL,-7L,2UL},{2UL,0x2ACC4088L,-6L,1UL},{2UL,0x2ACC4088L,-6L,1UL},{0x5981L,0x1CB09CEFL,-7L,2UL},{2UL,0x2ACC4088L,-6L,1UL},{2UL,0x2ACC4088L,-6L,1UL},{0x5981L,0x1CB09CEFL,-7L,2UL},{2UL,0x2ACC4088L,-6L,1UL},{2UL,0x2ACC4088L,-6L,1UL}},{{2UL,0x2ACC4088L,-6L,1UL},{0x5981L,0x1CB09CEFL,-7L,2UL},{2UL,0x2ACC4088L,-6L,1UL},{2UL,0x2ACC4088L,-6L,1UL},{0x5981L,0x1CB09CEFL,-7L,2UL},{2UL,0x2ACC4088L,-6L,1UL},{2UL,0x2ACC4088L,-6L,1UL},{0x5981L,0x1CB09CEFL,-7L,2UL},{2UL,0x2ACC4088L,-6L,1UL},{2UL,0x2ACC4088L,-6L,1UL}},{{2UL,0x2ACC4088L,-6L,1UL},{0x5981L,0x1CB09CEFL,-7L,2UL},{2UL,0x2ACC4088L,-6L,1UL},{2UL,0x2ACC4088L,-6L,1UL},{0x5981L,0x1CB09CEFL,-7L,2UL},{2UL,0x2ACC4088L,-6L,1UL},{2UL,0x2ACC4088L,-6L,1UL},{0x5981L,0x1CB09CEFL,-7L,2UL},{2UL,0x2ACC4088L,-6L,1UL},{2UL,0x2ACC4088L,-6L,1UL}},{{2UL,0x2ACC4088L,-6L,1UL},{0x5981L,0x1CB09CEFL,-7L,2UL},{2UL,0x2ACC4088L,-6L,1UL},{2UL,0x2ACC4088L,-6L,1UL},{0x5981L,0x1CB09CEFL,-7L,2UL},{2UL,0x2ACC4088L,-6L,1UL},{2UL,0x2ACC4088L,-6L,1UL},{0x5981L,0x1CB09CEFL,-7L,2UL},{2UL,0x2ACC4088L,-6L,1UL},{2UL,0x2ACC4088L,-6L,1UL}},{{2UL,0x2ACC4088L,-6L,1UL},{0x5981L,0x1CB09CEFL,-7L,2UL},{2UL,0x2ACC4088L,-6L,1UL},{2UL,0x2ACC4088L,-6L,1UL},{0x5981L,0x1CB09CEFL,-7L,2UL},{2UL,0x2ACC4088L,-6L,1UL},{2UL,0x2ACC4088L,-6L,1UL},{0x5981L,0x1CB09CEFL,-7L,2UL},{2UL,0x2ACC4088L,-6L,1UL},{2UL,0x2ACC4088L,-6L,1UL}},{{2UL,0x2ACC4088L,-6L,1UL},{0x5981L,0x1CB09CEFL,-7L,2UL},{2UL,0x2ACC4088L,-6L,1UL},{2UL,0x2ACC4088L,-6L,1UL},{0x5981L,0x1CB09CEFL,-7L,2UL},{2UL,0x2ACC4088L,-6L,1UL},{2UL,0x2ACC4088L,-6L,1UL},{0x5981L,0x1CB09CEFL,-7L,2UL},{2UL,0x2ACC4088L,-6L,1UL},{2UL,0x2ACC4088L,-6L,1UL}}}};
                        int32_t l_453 = 0x29426266L;
                        uint8_t l_454 = 7UL;
                        int32_t l_456 = 1L;
                        int32_t *l_455[3];
                        uint8_t l_457 = 1UL;
                        int32_t *l_458 = (void*)0;
                        int32_t *l_459 = (void*)0;
                        int i, j, k;
                        for (i = 0; i < 3; i++)
                            l_455[i] = &l_456;
                        l_452[0][7][1] = l_451;
                        l_443 ^= 0x6D0D46C5L;
                        l_455[0] = ((l_454 &= l_453) , (void*)0);
                        l_459 = ((l_457 , 0x7A53D145L) , l_458);
                    }
                    l_450 &= l_460;
                    for (l_450 = 1; (l_450 >= 0); l_450 -= 1)
                    { /* block id: 217 */
                        int32_t l_462[5] = {0L,0L,0L,0L,0L};
                        int32_t *l_461[2][2][3] = {{{(void*)0,&l_462[2],(void*)0},{(void*)0,&l_462[2],(void*)0}},{{(void*)0,&l_462[2],(void*)0},{(void*)0,&l_462[2],(void*)0}}};
                        int32_t *l_463 = &l_462[1];
                        struct S0 l_464 = {65531UL,0xCCE20BB1L,-10L,0x16L};/* VOLATILE GLOBAL l_464 */
                        int32_t *l_465 = &l_462[2];
                        int32_t *l_466 = (void*)0;
                        int32_t *l_467 = (void*)0;
                        int32_t *l_468 = &l_462[4];
                        struct S0 *l_470 = &l_464;
                        struct S0 **l_469 = &l_470;
                        struct S0 **l_471 = &l_470;
                        int i, j, k;
                        l_463 = l_461[1][0][0];
                        l_443 = (l_464 , l_441[l_450][(l_450 + 1)][l_450]);
                        l_468 = (l_467 = (l_466 = l_465));
                        l_471 = l_469;
                    }
                }
                for (l_448 = 0; (l_448 <= 9); l_448 += 1)
                { /* block id: 228 */
                    int32_t l_472 = 0x393DA23FL;
                    uint32_t l_476 = 0UL;
                    uint32_t l_477 = 0xBC043559L;
                    uint8_t l_478 = 1UL;
                    uint8_t l_479 = 0xB5L;
                    uint8_t l_480[8][10][3] = {{{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL}},{{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL}},{{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL}},{{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL}},{{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL}},{{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL}},{{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL}},{{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL},{0x14L,0x14L,252UL}}};
                    struct S0 l_481 = {0UL,0xD9F2DDB2L,-1L,0x62L};/* VOLATILE GLOBAL l_481 */
                    int32_t *l_482 = &l_472;
                    int32_t *l_483 = &l_472;
                    int i, j, k;
                    for (l_472 = 4; (l_472 >= 0); l_472 -= 1)
                    { /* block id: 231 */
                        int32_t l_474 = (-3L);
                        int32_t *l_473[9][3][2] = {{{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474}},{{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474}},{{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474}},{{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474}},{{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474}},{{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474}},{{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474}},{{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474}},{{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474}}};
                        int32_t *l_475[10][9][2] = {{{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474}},{{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474}},{{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474}},{{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474}},{{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474}},{{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474}},{{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474}},{{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474}},{{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474}},{{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474},{&l_474,&l_474}}};
                        int i, j, k;
                        l_443 = 0x7DFA471CL;
                        l_475[8][1][1] = l_473[7][1][0];
                    }
                    l_483 = (l_476 , ((l_444 = l_477) , (((l_478 , l_479) , (l_480[3][7][0] , l_481)) , l_482)));
                }
            }
            unsigned int result = 0;
            result += l_438;
            int l_439_i0, l_439_i1;
            for (l_439_i0 = 0; l_439_i0 < 7; l_439_i0++) {
                for (l_439_i1 = 0; l_439_i1 < 8; l_439_i1++) {
                    result += l_439[l_439_i0][l_439_i1];
                }
            }
            result += l_440.f0;
            result += l_440.f1;
            result += l_440.f2;
            result += l_440.f3;
            result += l_440.f4;
            result += l_440.f5;
            result += l_440.f6;
            result += l_440.f7;
            int l_441_i0, l_441_i1, l_441_i2;
            for (l_441_i0 = 0; l_441_i0 < 3; l_441_i0++) {
                for (l_441_i1 = 0; l_441_i1 < 6; l_441_i1++) {
                    for (l_441_i2 = 0; l_441_i2 < 2; l_441_i2++) {
                        result += l_441[l_441_i0][l_441_i1][l_441_i2];
                    }
                }
            }
            result += l_442;
            atomic_add(&p_1317->l_special_values[45], result);
        }
        else
        { /* block id: 239 */
            (1 + 1);
        }
        for (p_1317->g_163 = 0; (p_1317->g_163 <= 3); p_1317->g_163 += 1)
        { /* block id: 244 */
            struct S1 *l_486 = &p_1317->g_185;
            int32_t l_501 = 0x1D77EB23L;
            int64_t l_506 = 5L;
            uint32_t l_507[1][1];
            int i, j;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 1; j++)
                    l_507[i][j] = 0x0553E51CL;
            }
            for (p_1317->g_108 = 0; (p_1317->g_108 <= 3); p_1317->g_108 += 1)
            { /* block id: 247 */
                uint32_t l_502 = 0xF8BCD272L;
                int32_t **l_503 = (void*)0;
                for (p_1317->g_185.f2 = 0; (p_1317->g_185.f2 <= 3); p_1317->g_185.f2 += 1)
                { /* block id: 250 */
                    int32_t l_498 = 0x3C4B83A4L;
                    int i;
                    (*l_380) |= (safe_add_func_uint64_t_u_u((&p_1317->g_185 != (l_487 = l_486)), ((safe_mod_func_int64_t_s_s((safe_unary_minus_func_uint8_t_u((((*l_486) , (0L && ((safe_lshift_func_int16_t_s_s((safe_div_func_uint8_t_u_u((safe_div_func_uint8_t_u_u((((*l_383) |= ((4294967295UL || ((*p_74) = (((((++p_1317->g_240) , (p_73 & p_1317->g_183.f3)) ^ ((void*)0 != &p_1317->g_422[p_1317->g_108])) , l_501) != l_501))) && p_73)) <= p_73), l_498)), p_72)), 9)) <= 0UL))) == p_1317->g_488.f0))), l_502)) > 0x9C3793062FA1644DL)));
                    for (p_75 = 0; (p_75 <= 3); p_75 += 1)
                    { /* block id: 258 */
                        p_1317->g_488 = p_1317->g_488;
                    }
                    (*l_379) = (*p_74);
                }
                (*p_1317->g_504) = &p_73;
                (*l_380) &= ((*l_378) ^= (*p_74));
            }
            l_507[0][0]--;
            for (l_321 = 0; (l_321 <= 3); l_321 += 1)
            { /* block id: 270 */
                int8_t l_514 = 0x2EL;
                for (p_1317->g_488.f5 = 0; (p_1317->g_488.f5 <= 0); p_1317->g_488.f5 += 1)
                { /* block id: 273 */
                    uint32_t l_515 = 0xAD49E108L;
                    int i, j;
                    for (p_1317->g_170 = 0; (p_1317->g_170 <= 3); p_1317->g_170 += 1)
                    { /* block id: 276 */
                        struct S1 **l_510 = &l_486;
                        int32_t l_513 = (-6L);
                        int i;
                        (*l_378) = (((((*l_510) = (void*)0) != (void*)0) , (void*)0) == (void*)0);
                        (*p_1317->g_511) = (*p_1317->g_423);
                        (*p_1317->g_512) = l_386[l_321];
                        --l_515;
                    }
                    if (p_1317->g_505[p_1317->g_488.f5][(l_321 + 1)])
                        continue;
                    if ((atomic_inc(&p_1317->l_atomic_input[52]) == 2))
                    { /* block id: 285 */
                        int32_t l_518 = 0x1B632092L;
                        uint32_t l_519 = 7UL;
                        struct S0 l_520 = {0x812AL,0x0FA99D5EL,-1L,0UL};/* VOLATILE GLOBAL l_520 */
                        struct S0 l_521[6][2] = {{{0x6D28L,4294967286UL,1L,0x00L},{0x6D28L,4294967286UL,1L,0x00L}},{{0x6D28L,4294967286UL,1L,0x00L},{0x6D28L,4294967286UL,1L,0x00L}},{{0x6D28L,4294967286UL,1L,0x00L},{0x6D28L,4294967286UL,1L,0x00L}},{{0x6D28L,4294967286UL,1L,0x00L},{0x6D28L,4294967286UL,1L,0x00L}},{{0x6D28L,4294967286UL,1L,0x00L},{0x6D28L,4294967286UL,1L,0x00L}},{{0x6D28L,4294967286UL,1L,0x00L},{0x6D28L,4294967286UL,1L,0x00L}}};
                        uint8_t l_522[10][5][5] = {{{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L}},{{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L}},{{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L}},{{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L}},{{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L}},{{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L}},{{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L}},{{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L}},{{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L}},{{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L},{0x4AL,0xB6L,0xB6L,0x4AL,0x48L}}};
                        int64_t l_523 = 0x42A8DDC2EEA0DF2EL;
                        struct S1 l_524[9] = {{0x67447CDC69287419L,0x7663458BL,0L,0x1F70B8FCL,0L,0x248F881DL,0x14C82FBFFFF29273L,0x0E632CFFD9628073L},{0x360D10A58D1E9281L,0L,0x357C8141L,0x4EF5326FL,0x56L,1UL,0x8DCF505FD7190D21L,0x685C2D0A7A8E6A7AL},{0x67447CDC69287419L,0x7663458BL,0L,0x1F70B8FCL,0L,0x248F881DL,0x14C82FBFFFF29273L,0x0E632CFFD9628073L},{0x67447CDC69287419L,0x7663458BL,0L,0x1F70B8FCL,0L,0x248F881DL,0x14C82FBFFFF29273L,0x0E632CFFD9628073L},{0x360D10A58D1E9281L,0L,0x357C8141L,0x4EF5326FL,0x56L,1UL,0x8DCF505FD7190D21L,0x685C2D0A7A8E6A7AL},{0x67447CDC69287419L,0x7663458BL,0L,0x1F70B8FCL,0L,0x248F881DL,0x14C82FBFFFF29273L,0x0E632CFFD9628073L},{0x67447CDC69287419L,0x7663458BL,0L,0x1F70B8FCL,0L,0x248F881DL,0x14C82FBFFFF29273L,0x0E632CFFD9628073L},{0x360D10A58D1E9281L,0L,0x357C8141L,0x4EF5326FL,0x56L,1UL,0x8DCF505FD7190D21L,0x685C2D0A7A8E6A7AL},{0x67447CDC69287419L,0x7663458BL,0L,0x1F70B8FCL,0L,0x248F881DL,0x14C82FBFFFF29273L,0x0E632CFFD9628073L}};
                        struct S0 l_525 = {65529UL,0x0FF21CE2L,0x5E00L,0x93L};/* VOLATILE GLOBAL l_525 */
                        struct S0 l_526 = {0xCA6EL,0UL,0L,0x87L};/* VOLATILE GLOBAL l_526 */
                        int i, j, k;
                        l_521[3][1] = ((l_519 |= l_518) , l_520);
                        l_523 ^= l_522[4][2][0];
                        l_524[1] = l_524[2];
                        l_526 = l_525;
                        unsigned int result = 0;
                        result += l_518;
                        result += l_519;
                        result += l_520.f0;
                        result += l_520.f1;
                        result += l_520.f2;
                        result += l_520.f3;
                        int l_521_i0, l_521_i1;
                        for (l_521_i0 = 0; l_521_i0 < 6; l_521_i0++) {
                            for (l_521_i1 = 0; l_521_i1 < 2; l_521_i1++) {
                                result += l_521[l_521_i0][l_521_i1].f0;
                                result += l_521[l_521_i0][l_521_i1].f1;
                                result += l_521[l_521_i0][l_521_i1].f2;
                                result += l_521[l_521_i0][l_521_i1].f3;
                            }
                        }
                        int l_522_i0, l_522_i1, l_522_i2;
                        for (l_522_i0 = 0; l_522_i0 < 10; l_522_i0++) {
                            for (l_522_i1 = 0; l_522_i1 < 5; l_522_i1++) {
                                for (l_522_i2 = 0; l_522_i2 < 5; l_522_i2++) {
                                    result += l_522[l_522_i0][l_522_i1][l_522_i2];
                                }
                            }
                        }
                        result += l_523;
                        int l_524_i0;
                        for (l_524_i0 = 0; l_524_i0 < 9; l_524_i0++) {
                            result += l_524[l_524_i0].f0;
                            result += l_524[l_524_i0].f1;
                            result += l_524[l_524_i0].f2;
                            result += l_524[l_524_i0].f3;
                            result += l_524[l_524_i0].f4;
                            result += l_524[l_524_i0].f5;
                            result += l_524[l_524_i0].f6;
                            result += l_524[l_524_i0].f7;
                        }
                        result += l_525.f0;
                        result += l_525.f1;
                        result += l_525.f2;
                        result += l_525.f3;
                        result += l_526.f0;
                        result += l_526.f1;
                        result += l_526.f2;
                        result += l_526.f3;
                        atomic_add(&p_1317->l_special_values[52], result);
                    }
                    else
                    { /* block id: 291 */
                        (1 + 1);
                    }
                }
            }
        }
        for (p_1317->g_348.f2 = 0; (p_1317->g_348.f2 <= (-18)); --p_1317->g_348.f2)
        { /* block id: 299 */
            if (l_435)
                break;
            return l_529;
        }
    }
    else
    { /* block id: 303 */
        int64_t l_530 = 0x3FCDE4904C255B82L;
        int32_t l_531 = 0x26F48E3DL;
        int32_t l_532[7][8][4];
        int i, j, k;
        for (i = 0; i < 7; i++)
        {
            for (j = 0; j < 8; j++)
            {
                for (k = 0; k < 4; k++)
                    l_532[i][j][k] = 0L;
            }
        }
        p_1317->g_533--;
        for (l_322 = 24; (l_322 <= (-18)); --l_322)
        { /* block id: 307 */
            int32_t l_590 = 1L;
            for (p_1317->g_166 = 0; (p_1317->g_166 <= 10); ++p_1317->g_166)
            { /* block id: 310 */
                uint32_t l_540 = 7UL;
                int64_t *l_546 = &p_1317->g_303[3];
                int32_t l_565 = 0x468756BAL;
                l_540--;
                for (p_1317->g_488.f3 = (-28); (p_1317->g_488.f3 <= 1); p_1317->g_488.f3++)
                { /* block id: 314 */
                    int64_t *l_545 = &p_1317->g_303[2];
                    (*l_383) ^= ((void*)0 != l_545);
                    for (l_321 = 3; (l_321 >= 0); l_321 -= 1)
                    { /* block id: 318 */
                        int i, j, k;
                        if (l_532[l_321][(l_321 + 1)][l_321])
                            break;
                        (*p_74) = (l_546 == (l_545 = ((safe_rshift_func_uint8_t_u_u(l_387[l_321], 2)) , (((&l_318 == (p_72 , &l_321)) , (safe_mul_func_uint16_t_u_u(65535UL, (safe_mod_func_uint64_t_u_u(((safe_div_func_int64_t_s_s((((safe_mod_func_int32_t_s_s(0x44543D98L, (safe_lshift_func_uint8_t_u_u((((((safe_mod_func_int64_t_s_s((safe_mul_func_uint16_t_u_u(((l_565 ^= ((safe_add_func_uint64_t_u_u((&p_1317->g_403 == ((*l_378) , (void*)0)), (*l_381))) && p_75)) , p_1317->g_185.f0), 0x1E24L)), 18446744073709551615UL)) & p_73) | (*p_74)) , p_1317->g_101.f0) != p_1317->g_488.f5), 5)))) && p_75) == 0UL), p_73)) && p_1317->g_223.f3), p_72))))) , l_566[3]))));
                    }
                    return p_1317->g_421.f0;
                }
                if ((atomic_inc(&p_1317->l_atomic_input[68]) == 8))
                { /* block id: 327 */
                    int32_t l_567 = 0x74979363L;
                    uint32_t l_577[9][2] = {{4294967286UL,1UL},{4294967286UL,1UL},{4294967286UL,1UL},{4294967286UL,1UL},{4294967286UL,1UL},{4294967286UL,1UL},{4294967286UL,1UL},{4294967286UL,1UL},{4294967286UL,1UL}};
                    int64_t l_578 = 0L;
                    int64_t l_579[7][8][2] = {{{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL}},{{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL}},{{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL}},{{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL}},{{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL}},{{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL}},{{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL},{(-3L),0x4C45199AAB555D5DL}}};
                    int i, j, k;
                    for (l_567 = (-6); (l_567 == 21); l_567 = safe_add_func_int16_t_s_s(l_567, 4))
                    { /* block id: 330 */
                        int32_t l_571 = 0x2FAA639AL;
                        int32_t *l_570 = &l_571;
                        int32_t *l_572[1];
                        uint64_t l_573 = 0x3430023D9A0AAF90L;
                        int8_t l_574 = (-1L);
                        uint64_t l_575 = 0xA19E48F5A78C8B12L;
                        int32_t l_576[4][8][8] = {{{0x1C54E68DL,(-1L),(-9L),0x74482497L,0L,0x2058ABA4L,(-2L),(-2L)},{0x1C54E68DL,(-1L),(-9L),0x74482497L,0L,0x2058ABA4L,(-2L),(-2L)},{0x1C54E68DL,(-1L),(-9L),0x74482497L,0L,0x2058ABA4L,(-2L),(-2L)},{0x1C54E68DL,(-1L),(-9L),0x74482497L,0L,0x2058ABA4L,(-2L),(-2L)},{0x1C54E68DL,(-1L),(-9L),0x74482497L,0L,0x2058ABA4L,(-2L),(-2L)},{0x1C54E68DL,(-1L),(-9L),0x74482497L,0L,0x2058ABA4L,(-2L),(-2L)},{0x1C54E68DL,(-1L),(-9L),0x74482497L,0L,0x2058ABA4L,(-2L),(-2L)},{0x1C54E68DL,(-1L),(-9L),0x74482497L,0L,0x2058ABA4L,(-2L),(-2L)}},{{0x1C54E68DL,(-1L),(-9L),0x74482497L,0L,0x2058ABA4L,(-2L),(-2L)},{0x1C54E68DL,(-1L),(-9L),0x74482497L,0L,0x2058ABA4L,(-2L),(-2L)},{0x1C54E68DL,(-1L),(-9L),0x74482497L,0L,0x2058ABA4L,(-2L),(-2L)},{0x1C54E68DL,(-1L),(-9L),0x74482497L,0L,0x2058ABA4L,(-2L),(-2L)},{0x1C54E68DL,(-1L),(-9L),0x74482497L,0L,0x2058ABA4L,(-2L),(-2L)},{0x1C54E68DL,(-1L),(-9L),0x74482497L,0L,0x2058ABA4L,(-2L),(-2L)},{0x1C54E68DL,(-1L),(-9L),0x74482497L,0L,0x2058ABA4L,(-2L),(-2L)},{0x1C54E68DL,(-1L),(-9L),0x74482497L,0L,0x2058ABA4L,(-2L),(-2L)}},{{0x1C54E68DL,(-1L),(-9L),0x74482497L,0L,0x2058ABA4L,(-2L),(-2L)},{0x1C54E68DL,(-1L),(-9L),0x74482497L,0L,0x2058ABA4L,(-2L),(-2L)},{0x1C54E68DL,(-1L),(-9L),0x74482497L,0L,0x2058ABA4L,(-2L),(-2L)},{0x1C54E68DL,(-1L),(-9L),0x74482497L,0L,0x2058ABA4L,(-2L),(-2L)},{0x1C54E68DL,(-1L),(-9L),0x74482497L,0L,0x2058ABA4L,(-2L),(-2L)},{0x1C54E68DL,(-1L),(-9L),0x74482497L,0L,0x2058ABA4L,(-2L),(-2L)},{0x1C54E68DL,(-1L),(-9L),0x74482497L,0L,0x2058ABA4L,(-2L),(-2L)},{0x1C54E68DL,(-1L),(-9L),0x74482497L,0L,0x2058ABA4L,(-2L),(-2L)}},{{0x1C54E68DL,(-1L),(-9L),0x74482497L,0L,0x2058ABA4L,(-2L),(-2L)},{0x1C54E68DL,(-1L),(-9L),0x74482497L,0L,0x2058ABA4L,(-2L),(-2L)},{0x1C54E68DL,(-1L),(-9L),0x74482497L,0L,0x2058ABA4L,(-2L),(-2L)},{0x1C54E68DL,(-1L),(-9L),0x74482497L,0L,0x2058ABA4L,(-2L),(-2L)},{0x1C54E68DL,(-1L),(-9L),0x74482497L,0L,0x2058ABA4L,(-2L),(-2L)},{0x1C54E68DL,(-1L),(-9L),0x74482497L,0L,0x2058ABA4L,(-2L),(-2L)},{0x1C54E68DL,(-1L),(-9L),0x74482497L,0L,0x2058ABA4L,(-2L),(-2L)},{0x1C54E68DL,(-1L),(-9L),0x74482497L,0L,0x2058ABA4L,(-2L),(-2L)}}};
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                            l_572[i] = (void*)0;
                        l_572[0] = l_570;
                        l_576[0][7][7] |= (l_575 = (l_574 = (l_573 = 0x6A671909L)));
                    }
                    l_578 &= (l_577[6][1] = (-7L));
                    if (l_579[0][0][0])
                    { /* block id: 339 */
                        int8_t l_580 = 0x61L;
                        int32_t l_582 = 0x4AD57BFFL;
                        int32_t *l_581[1];
                        int i;
                        for (i = 0; i < 1; i++)
                            l_581[i] = &l_582;
                        l_581[0] = (l_580 , (void*)0);
                    }
                    else
                    { /* block id: 341 */
                        int32_t l_583 = 0x03E918F1L;
                        uint32_t l_586 = 1UL;
                        uint32_t *l_585 = &l_586;
                        uint32_t **l_584 = &l_585;
                        uint32_t **l_587 = &l_585;
                        uint32_t **l_588 = &l_585;
                        l_583 &= 0x2628CEEEL;
                        l_588 = (l_587 = l_584);
                    }
                    unsigned int result = 0;
                    result += l_567;
                    int l_577_i0, l_577_i1;
                    for (l_577_i0 = 0; l_577_i0 < 9; l_577_i0++) {
                        for (l_577_i1 = 0; l_577_i1 < 2; l_577_i1++) {
                            result += l_577[l_577_i0][l_577_i1];
                        }
                    }
                    result += l_578;
                    int l_579_i0, l_579_i1, l_579_i2;
                    for (l_579_i0 = 0; l_579_i0 < 7; l_579_i0++) {
                        for (l_579_i1 = 0; l_579_i1 < 8; l_579_i1++) {
                            for (l_579_i2 = 0; l_579_i2 < 2; l_579_i2++) {
                                result += l_579[l_579_i0][l_579_i1][l_579_i2];
                            }
                        }
                    }
                    atomic_add(&p_1317->l_special_values[68], result);
                }
                else
                { /* block id: 346 */
                    (1 + 1);
                }
                return p_75;
            }
            (*p_1317->g_589) = &l_532[2][1][0];
            if (l_590)
                continue;
        }
    }
    return p_72;
}


/* ------------------------------------------ */
/* 
 * reads : p_1317->g_163 p_1317->g_179 p_1317->g_108 p_1317->g_100 p_1317->g_185 p_1317->g_166 p_1317->g_204 p_1317->g_170 p_1317->g_205 p_1317->g_99 p_1317->g_34 p_1317->g_35 p_1317->g_77 p_1317->g_223 p_1317->g_57 p_1317->g_240 p_1317->g_47 p_1317->g_56 p_1317->g_46
 * writes: p_1317->g_163 p_1317->g_101 p_1317->g_108 p_1317->g_183 p_1317->g_185 p_1317->g_166 p_1317->g_168 p_1317->g_99 p_1317->g_77 p_1317->g_100 p_1317->g_42 p_1317->g_107
 */
uint16_t  func_80(uint64_t * p_81, uint16_t  p_82, struct S2 * p_1317)
{ /* block id: 38 */
    uint64_t l_173 = 18446744073709551610UL;
    int32_t l_176 = 0L;
    int32_t *l_220[9] = {&l_176,&l_176,&l_176,&l_176,&l_176,&l_176,&l_176,&l_176,&l_176};
    uint64_t *l_244 = (void*)0;
    int32_t l_276 = 6L;
    int32_t l_277[1][9] = {{(-6L),0x724C9ECFL,(-6L),(-6L),0x724C9ECFL,(-6L),(-6L),0x724C9ECFL,(-6L)}};
    uint8_t l_278 = 0x18L;
    int i, j;
    for (p_1317->g_163 = 0; (p_1317->g_163 > 21); p_1317->g_163++)
    { /* block id: 41 */
        int32_t *l_174 = (void*)0;
        int32_t *l_175[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t **l_219[2];
        int i;
        for (i = 0; i < 2; i++)
            l_219[i] = (void*)0;
        l_176 &= l_173;
        if ((safe_rshift_func_uint8_t_u_s(4UL, 3)))
        { /* block id: 43 */
            return p_82;
        }
        else
        { /* block id: 45 */
            int32_t *l_215 = (void*)0;
            p_1317->g_101 = p_1317->g_179;
            if ((l_176 = p_82))
            { /* block id: 48 */
                uint16_t l_189 = 0x5359L;
                int32_t *l_213 = &p_1317->g_99;
                uint32_t l_217 = 0xA1277015L;
                if ((safe_mul_func_uint8_t_u_u(1UL, (-9L))))
                { /* block id: 49 */
                    uint64_t l_216 = 0x846C0F3464047758L;
                    int32_t l_218 = 0x5AC2A05BL;
                    for (p_1317->g_108 = 0; (p_1317->g_108 <= 0); p_1317->g_108 += 1)
                    { /* block id: 52 */
                        volatile struct S0 *l_182[3];
                        volatile int32_t l_184 = 0x31BDB072L;/* VOLATILE GLOBAL l_184 */
                        struct S1 *l_186 = &p_1317->g_185;
                        int i;
                        for (i = 0; i < 3; i++)
                            l_182[i] = &p_1317->g_100[5];
                        p_1317->g_183 = p_1317->g_100[(p_1317->g_108 + 4)];
                        l_184 = p_1317->g_100[(p_1317->g_108 + 4)].f0;
                        (*l_186) = p_1317->g_185;
                    }
                    for (p_1317->g_185.f0 = 5; (p_1317->g_185.f0 < 16); p_1317->g_185.f0++)
                    { /* block id: 59 */
                        return l_189;
                    }
                    for (p_1317->g_166 = 0; (p_1317->g_166 <= 6); p_1317->g_166 += 1)
                    { /* block id: 64 */
                        return p_82;
                    }
                    for (p_1317->g_185.f3 = 0; (p_1317->g_185.f3 < 28); p_1317->g_185.f3 = safe_add_func_int8_t_s_s(p_1317->g_185.f3, 6))
                    { /* block id: 69 */
                        int8_t *l_210 = &p_1317->g_168;
                        int32_t **l_214[4][7] = {{(void*)0,(void*)0,&l_175[3],&l_174,&l_175[3],&l_213,&l_174},{(void*)0,(void*)0,&l_175[3],&l_174,&l_175[3],&l_213,&l_174},{(void*)0,(void*)0,&l_175[3],&l_174,&l_175[3],&l_213,&l_174},{(void*)0,(void*)0,&l_175[3],&l_174,&l_175[3],&l_213,&l_174}};
                        int i, j;
                        l_216 |= (safe_mod_func_int8_t_s_s((((((safe_div_func_int64_t_s_s((((&p_1317->g_149[2] != (void*)0) < (safe_mod_func_int8_t_s_s((safe_div_func_uint32_t_u_u((safe_mod_func_uint16_t_u_u((+(safe_div_func_int8_t_s_s((p_1317->g_204 && (((p_1317->g_170 & 0L) , p_1317->g_205) , (safe_add_func_int8_t_s_s(((*l_210) = (safe_rshift_func_uint16_t_u_u(0x142BL, l_176))), (safe_rshift_func_int8_t_s_s(((l_175[6] = l_213) == l_215), 4)))))), 1UL))), p_1317->g_108)), FAKE_DIVERGE(p_1317->group_2_offset, get_group_id(2), 10))), (*l_213)))) , (-6L)), (*p_1317->g_34))) != 18446744073709551615UL) <= l_173) != (*p_1317->g_34)) && p_82), p_82));
                        (*l_213) ^= (l_218 |= l_217);
                    }
                }
                else
                { /* block id: 76 */
                    (*l_213) = p_82;
                }
            }
            else
            { /* block id: 79 */
                return p_1317->g_100[4].f3;
            }
        }
        l_220[7] = &l_176;
        if (p_82)
            continue;
    }
    for (p_1317->g_108 = 0; (p_1317->g_108 == 59); p_1317->g_108++)
    { /* block id: 88 */
        uint64_t *l_236 = &p_1317->g_108;
        int32_t l_239 = 0L;
        for (p_1317->g_77 = 0; (p_1317->g_77 <= 8); p_1317->g_77 += 1)
        { /* block id: 91 */
            volatile struct S0 *l_224 = &p_1317->g_100[4];
            uint64_t *l_235 = &l_173;
            int32_t l_237 = (-1L);
            int32_t l_238 = 0x6482A85EL;
            uint8_t *l_241[2][1][10] = {{{&p_1317->g_135[0][2][2],&p_1317->g_135[2][4][3],&p_1317->g_135[2][4][3],&p_1317->g_135[0][2][2],&p_1317->g_135[0][2][2],&p_1317->g_135[2][4][3],&p_1317->g_135[2][4][3],&p_1317->g_135[0][2][2],&p_1317->g_135[0][2][2],&p_1317->g_135[2][4][3]}},{{&p_1317->g_135[0][2][2],&p_1317->g_135[2][4][3],&p_1317->g_135[2][4][3],&p_1317->g_135[0][2][2],&p_1317->g_135[0][2][2],&p_1317->g_135[2][4][3],&p_1317->g_135[2][4][3],&p_1317->g_135[0][2][2],&p_1317->g_135[0][2][2],&p_1317->g_135[2][4][3]}}};
            int32_t l_242 = (-1L);
            uint64_t **l_243 = &p_1317->g_107;
            uint16_t l_245 = 1UL;
            int i, j, k;
            (*l_224) = p_1317->g_223;
            l_245 = ((((l_238 = ((~((*p_1317->g_34) > ((((*l_243) = func_87((((-4L) > (l_242 &= (((safe_div_func_uint32_t_u_u((safe_div_func_int32_t_s_s((safe_mul_func_uint16_t_u_u((safe_div_func_uint64_t_u_u(((*l_235) |= (safe_rshift_func_int16_t_s_s(0x4238L, 12))), ((((((l_237 &= ((0x023FC29F5B1E060BL >= p_82) <= (((*p_81) != (+(l_236 == p_81))) != 8UL))) == l_238) ^ p_1317->g_57) == p_82) && 0x61L) & 251UL))), l_239)), p_82)), p_1317->g_240)) , p_1317->g_205.f3) , p_1317->g_47))) ^ p_1317->g_108), p_82, p_81, p_1317)) != l_244) , p_82))) <= p_1317->g_185.f1)) || l_239) != p_82) , l_239);
        }
        for (p_82 = 6; (p_82 >= 41); p_82 = safe_add_func_uint64_t_u_u(p_82, 6))
        { /* block id: 102 */
            if ((atomic_inc(&p_1317->l_atomic_input[71]) == 2))
            { /* block id: 104 */
                int32_t l_249 = 0x37BA4540L;
                int32_t *l_248 = &l_249;
                int32_t *l_250 = (void*)0;
                uint32_t l_251 = 0x15D690B8L;
                l_250 = l_248;
                if (l_251)
                { /* block id: 106 */
                    int16_t l_252[8][7][4] = {{{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L}},{{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L}},{{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L}},{{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L}},{{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L}},{{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L}},{{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L}},{{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L},{(-5L),(-5L),0L,1L}}};
                    int64_t *l_260 = (void*)0;
                    int64_t **l_259 = &l_260;
                    int i, j, k;
                    if (((*l_248) = l_252[1][2][1]))
                    { /* block id: 108 */
                        uint32_t l_253 = 0x2039155DL;
                        int64_t l_254 = 4L;
                        (*l_250) |= l_253;
                        (*l_248) ^= l_254;
                    }
                    else
                    { /* block id: 111 */
                        uint16_t l_255 = 65530UL;
                        uint32_t l_256 = 0x872F4CC3L;
                        int32_t l_258 = 0x2F8924D8L;
                        int32_t *l_257 = &l_258;
                        l_256 = ((*l_250) = l_255);
                        l_248 = l_257;
                    }
                    l_259 = (void*)0;
                }
                else
                { /* block id: 117 */
                    int32_t l_261 = (-3L);
                    for (l_261 = 0; (l_261 >= 0); l_261 = safe_add_func_int8_t_s_s(l_261, 2))
                    { /* block id: 120 */
                        uint32_t l_264 = 0x9407355BL;
                        int32_t l_265 = 0x7262E1CAL;
                        int8_t l_266 = 0x7EL;
                        int16_t l_267 = (-2L);
                        int8_t l_268 = 7L;
                        uint16_t l_269 = 3UL;
                        uint32_t l_272 = 0x8BE8490DL;
                        int64_t l_273 = 0L;
                        struct S1 l_274 = {0x5ED9910616E61DC4L,-1L,0x1687AAEBL,-1L,-3L,4294967295UL,0x7E49223293A444A4L,0x0D9F4A77C499EDAFL};/* VOLATILE GLOBAL l_274 */
                        struct S1 l_275 = {1L,0x60A9D3A4L,0x707FA9CBL,-1L,0x7CL,0UL,0x0E11A9F2FD136104L,2L};/* VOLATILE GLOBAL l_275 */
                        (*l_250) &= l_264;
                        ++l_269;
                        l_275 = (l_272 , (l_273 , l_274));
                    }
                }
                unsigned int result = 0;
                result += l_249;
                result += l_251;
                atomic_add(&p_1317->l_special_values[71], result);
            }
            else
            { /* block id: 126 */
                (1 + 1);
            }
        }
        return p_82;
    }
    ++l_278;
    return p_1317->g_46;
}


/* ------------------------------------------ */
/* 
 * reads : p_1317->g_34 p_1317->g_35 p_1317->g_100.f1 p_1317->g_42 p_1317->g_135 p_1317->g_99 p_1317->g_77 p_1317->g_64 p_1317->g_108 p_1317->g_57 p_1317->g_166 p_1317->g_46 p_1317->g_170
 * writes: p_1317->g_77 p_1317->g_107 p_1317->g_110 p_1317->g_42 p_1317->g_99 p_1317->g_135 p_1317->g_149 p_1317->g_163 p_1317->g_166 p_1317->g_168 p_1317->g_170
 */
uint16_t  func_83(uint64_t * p_84, int64_t  p_85, int64_t  p_86, struct S2 * p_1317)
{ /* block id: 23 */
    int32_t *l_103 = &p_1317->g_42;
    int32_t **l_102 = &l_103;
    uint64_t *l_106 = (void*)0;
    int64_t *l_109[10][3][6] = {{{&p_1317->g_110,&p_1317->g_110,&p_1317->g_110,(void*)0,&p_1317->g_110,&p_1317->g_110},{&p_1317->g_110,&p_1317->g_110,&p_1317->g_110,(void*)0,&p_1317->g_110,&p_1317->g_110},{&p_1317->g_110,&p_1317->g_110,&p_1317->g_110,(void*)0,&p_1317->g_110,&p_1317->g_110}},{{&p_1317->g_110,&p_1317->g_110,&p_1317->g_110,(void*)0,&p_1317->g_110,&p_1317->g_110},{&p_1317->g_110,&p_1317->g_110,&p_1317->g_110,(void*)0,&p_1317->g_110,&p_1317->g_110},{&p_1317->g_110,&p_1317->g_110,&p_1317->g_110,(void*)0,&p_1317->g_110,&p_1317->g_110}},{{&p_1317->g_110,&p_1317->g_110,&p_1317->g_110,(void*)0,&p_1317->g_110,&p_1317->g_110},{&p_1317->g_110,&p_1317->g_110,&p_1317->g_110,(void*)0,&p_1317->g_110,&p_1317->g_110},{&p_1317->g_110,&p_1317->g_110,&p_1317->g_110,(void*)0,&p_1317->g_110,&p_1317->g_110}},{{&p_1317->g_110,&p_1317->g_110,&p_1317->g_110,(void*)0,&p_1317->g_110,&p_1317->g_110},{&p_1317->g_110,&p_1317->g_110,&p_1317->g_110,(void*)0,&p_1317->g_110,&p_1317->g_110},{&p_1317->g_110,&p_1317->g_110,&p_1317->g_110,(void*)0,&p_1317->g_110,&p_1317->g_110}},{{&p_1317->g_110,&p_1317->g_110,&p_1317->g_110,(void*)0,&p_1317->g_110,&p_1317->g_110},{&p_1317->g_110,&p_1317->g_110,&p_1317->g_110,(void*)0,&p_1317->g_110,&p_1317->g_110},{&p_1317->g_110,&p_1317->g_110,&p_1317->g_110,(void*)0,&p_1317->g_110,&p_1317->g_110}},{{&p_1317->g_110,&p_1317->g_110,&p_1317->g_110,(void*)0,&p_1317->g_110,&p_1317->g_110},{&p_1317->g_110,&p_1317->g_110,&p_1317->g_110,(void*)0,&p_1317->g_110,&p_1317->g_110},{&p_1317->g_110,&p_1317->g_110,&p_1317->g_110,(void*)0,&p_1317->g_110,&p_1317->g_110}},{{&p_1317->g_110,&p_1317->g_110,&p_1317->g_110,(void*)0,&p_1317->g_110,&p_1317->g_110},{&p_1317->g_110,&p_1317->g_110,&p_1317->g_110,(void*)0,&p_1317->g_110,&p_1317->g_110},{&p_1317->g_110,&p_1317->g_110,&p_1317->g_110,(void*)0,&p_1317->g_110,&p_1317->g_110}},{{&p_1317->g_110,&p_1317->g_110,&p_1317->g_110,(void*)0,&p_1317->g_110,&p_1317->g_110},{&p_1317->g_110,&p_1317->g_110,&p_1317->g_110,(void*)0,&p_1317->g_110,&p_1317->g_110},{&p_1317->g_110,&p_1317->g_110,&p_1317->g_110,(void*)0,&p_1317->g_110,&p_1317->g_110}},{{&p_1317->g_110,&p_1317->g_110,&p_1317->g_110,(void*)0,&p_1317->g_110,&p_1317->g_110},{&p_1317->g_110,&p_1317->g_110,&p_1317->g_110,(void*)0,&p_1317->g_110,&p_1317->g_110},{&p_1317->g_110,&p_1317->g_110,&p_1317->g_110,(void*)0,&p_1317->g_110,&p_1317->g_110}},{{&p_1317->g_110,&p_1317->g_110,&p_1317->g_110,(void*)0,&p_1317->g_110,&p_1317->g_110},{&p_1317->g_110,&p_1317->g_110,&p_1317->g_110,(void*)0,&p_1317->g_110,&p_1317->g_110},{&p_1317->g_110,&p_1317->g_110,&p_1317->g_110,(void*)0,&p_1317->g_110,&p_1317->g_110}}};
    int32_t *l_113 = &p_1317->g_42;
    int32_t *l_114 = &p_1317->g_99;
    uint8_t *l_134 = &p_1317->g_135[3][4][3];
    int32_t ***l_148[9][7] = {{&l_102,&l_102,&l_102,&l_102,&l_102,&l_102,&l_102},{&l_102,&l_102,&l_102,&l_102,&l_102,&l_102,&l_102},{&l_102,&l_102,&l_102,&l_102,&l_102,&l_102,&l_102},{&l_102,&l_102,&l_102,&l_102,&l_102,&l_102,&l_102},{&l_102,&l_102,&l_102,&l_102,&l_102,&l_102,&l_102},{&l_102,&l_102,&l_102,&l_102,&l_102,&l_102,&l_102},{&l_102,&l_102,&l_102,&l_102,&l_102,&l_102,&l_102},{&l_102,&l_102,&l_102,&l_102,&l_102,&l_102,&l_102},{&l_102,&l_102,&l_102,&l_102,&l_102,&l_102,&l_102}};
    uint16_t *l_162 = &p_1317->g_163;
    uint16_t l_164[4];
    uint32_t *l_165 = &p_1317->g_166;
    int8_t *l_167 = &p_1317->g_168;
    uint32_t l_169[6] = {0xD452AC67L,0xD452AC67L,0xD452AC67L,0xD452AC67L,0xD452AC67L,0xD452AC67L};
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_164[i] = 0x494BL;
    (*l_114) = ((((*l_102) = &p_1317->g_42) == ((safe_mul_func_uint64_t_u_u((p_1317->g_77 = 0UL), (p_85 == ((((*p_1317->g_34) ^ (p_1317->g_110 = (((p_1317->g_107 = l_106) != p_84) , (*p_1317->g_34)))) && ((*l_113) = ((((safe_mod_func_uint8_t_u_u((p_1317->g_100[4].f1 , ((&p_1317->g_61 != &p_1317->g_61) , GROUP_DIVERGE(0, 1))), p_86)) , p_85) , 0x379CB2EEL) != 0x1C81CAAAL))) ^ 18446744073709551606UL)))) , &p_1317->g_42)) , (**l_102));
    (*l_102) = (*l_102);
    p_1317->g_170 |= ((safe_sub_func_uint8_t_u_u((safe_div_func_uint32_t_u_u(((safe_sub_func_int64_t_s_s((safe_mod_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), (safe_sub_func_uint64_t_u_u(((safe_sub_func_int8_t_s_s(((*l_167) = ((((0x73L == (((*l_165) |= (((safe_unary_minus_func_int8_t_s((safe_sub_func_uint8_t_u_u(((safe_add_func_int32_t_s_s(((safe_div_func_uint8_t_u_u(((*l_134)--), (safe_lshift_func_uint8_t_u_s((safe_mod_func_uint32_t_u_u(((GROUP_DIVERGE(2, 1) & (safe_rshift_func_int8_t_s_u((&p_1317->g_42 != (*l_102)), 7))) , (safe_add_func_int16_t_s_s((safe_sub_func_uint32_t_u_u(((p_1317->g_149[3] = &l_113) != (void*)0), (*l_114))), ((*l_162) = ((((safe_mod_func_int32_t_s_s((safe_lshift_func_int16_t_s_s((safe_lshift_func_int16_t_s_s((((0xF34DL >= (!((safe_sub_func_int8_t_s_s((safe_unary_minus_func_int32_t_s((safe_add_func_int8_t_s_s(((((*p_84) , (*l_114)) > p_85) != 5UL), p_85)))), 0x59L)) , 0x16BFL))) & (*l_113)) , p_1317->g_64[0]), p_85)), 8)), p_85)) && (*l_113)) & p_1317->g_42) != p_1317->g_35))))), 0x7720CA04L)), 7)))) > p_86), l_164[0])) >= p_85), p_1317->g_108)))) ^ 0x33L) >= p_1317->g_57)) , p_85)) > p_1317->g_46) < (-1L)) != 4L)), (*l_114))) || 0x7C23372F705CCF7FL), (*p_84))))), (-1L))) , l_169[4]), 1UL)), 255UL)) , p_85);
    return p_86;
}


/* ------------------------------------------ */
/* 
 * reads : p_1317->g_34 p_1317->g_35 p_1317->g_56 p_1317->g_99 p_1317->g_100
 * writes: p_1317->g_42 p_1317->g_99 p_1317->g_101
 */
uint64_t * func_87(uint64_t  p_88, uint32_t  p_89, int64_t * p_90, struct S2 * p_1317)
{ /* block id: 18 */
    int64_t l_96 = 0L;
    int32_t *l_97 = &p_1317->g_42;
    int32_t *l_98 = &p_1317->g_99;
    (*l_98) ^= ((*l_97) = ((safe_sub_func_int64_t_s_s((safe_sub_func_int16_t_s_s(l_96, 1UL)), (*p_1317->g_34))) == p_1317->g_56));
    p_1317->g_101 = p_1317->g_100[4];
    return &p_1317->g_77;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[75];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 75; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[75];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 75; i++)
            l_special_values[i] = 0;
    struct S2 c_1318;
    struct S2* p_1317 = &c_1318;
    struct S2 c_1319 = {
        0x7B1BL, // p_1317->g_10
        0x5A26CDEE94CCB090L, // p_1317->g_14
        (-4L), // p_1317->g_35
        &p_1317->g_35, // p_1317->g_34
        (-6L), // p_1317->g_42
        0x764457C1L, // p_1317->g_44
        0x21D5L, // p_1317->g_46
        7L, // p_1317->g_47
        0x75F6F594A39B7B3FL, // p_1317->g_48
        1UL, // p_1317->g_49
        0x50L, // p_1317->g_55
        (-1L), // p_1317->g_56
        (-3L), // p_1317->g_57
        0x6EB766298A20B4D6L, // p_1317->g_58
        2L, // p_1317->g_61
        0x04141EDAL, // p_1317->g_62
        1L, // p_1317->g_63
        {0x673BL}, // p_1317->g_64
        0x65BDL, // p_1317->g_65
        0x63939075E3015D2CL, // p_1317->g_77
        0x3220CCB0L, // p_1317->g_99
        {{65534UL,0x17A55E9DL,0x77BDL,255UL},{65534UL,0x17A55E9DL,0x77BDL,255UL},{65534UL,0x17A55E9DL,0x77BDL,255UL},{65534UL,0x17A55E9DL,0x77BDL,255UL},{65534UL,0x17A55E9DL,0x77BDL,255UL},{65534UL,0x17A55E9DL,0x77BDL,255UL},{65534UL,0x17A55E9DL,0x77BDL,255UL}}, // p_1317->g_100
        {0xF767L,4294967295UL,0x2939L,0x6EL}, // p_1317->g_101
        8UL, // p_1317->g_108
        &p_1317->g_108, // p_1317->g_107
        0x78553EDC7201A7A6L, // p_1317->g_110
        {{{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL}},{{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL}},{{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL}},{{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL}},{{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL},{8UL,0x18L,0x70L,0xEAL,7UL}}}, // p_1317->g_135
        (void*)0, // p_1317->g_150
        {&p_1317->g_150,&p_1317->g_150,&p_1317->g_150,&p_1317->g_150,&p_1317->g_150,&p_1317->g_150,&p_1317->g_150,&p_1317->g_150,&p_1317->g_150,&p_1317->g_150}, // p_1317->g_149
        0x121FL, // p_1317->g_163
        8UL, // p_1317->g_166
        0x71L, // p_1317->g_168
        0L, // p_1317->g_170
        {0UL,0xF0FED554L,1L,0x0EL}, // p_1317->g_179
        {1UL,4294967287UL,0L,250UL}, // p_1317->g_183
        {7L,0x0302DEFCL,0x5C19EB95L,0x22890EE7L,0x76L,0x623DB1C6L,0x30DE6A78DC8BCB83L,0x702C5E9DB9FF8E19L}, // p_1317->g_185
        0x2437L, // p_1317->g_204
        {0xE236L,4294967292UL,-3L,0xD1L}, // p_1317->g_205
        {0x05CFL,0UL,0x5D0EL,0x53L}, // p_1317->g_223
        4294967294UL, // p_1317->g_240
        {0x475DEE242F2EF0FFL,0x475DEE242F2EF0FFL,0x475DEE242F2EF0FFL,0x475DEE242F2EF0FFL,0x475DEE242F2EF0FFL,0x475DEE242F2EF0FFL,0x475DEE242F2EF0FFL,0x475DEE242F2EF0FFL,0x475DEE242F2EF0FFL,0x475DEE242F2EF0FFL}, // p_1317->g_303
        0xA31ED1E8L, // p_1317->g_344
        {0xE664L,0xA68FB3AAL,0x54B2L,7UL}, // p_1317->g_348
        {0x1D74D001L,0x1D74D001L,0x1D74D001L,0x1D74D001L,0x1D74D001L,0x1D74D001L,0x1D74D001L,0x1D74D001L,0x1D74D001L,0x1D74D001L}, // p_1317->g_374
        &p_1317->g_374[2], // p_1317->g_373
        {1UL,0x93958FEEL,0x7BAEL,1UL}, // p_1317->g_390
        {9UL,0x24EDE303L,0x360BL,1UL}, // p_1317->g_403
        {0xB03DL,0x24FB6C1CL,0L,5UL}, // p_1317->g_421
        {&p_1317->g_421,&p_1317->g_421,&p_1317->g_421,&p_1317->g_421}, // p_1317->g_422
        &p_1317->g_390, // p_1317->g_423
        {0x0575F56140A6335BL,0x5673DF16L,-1L,0x4F9C295AL,1L,0xFD6690BCL,18446744073709551611UL,-6L}, // p_1317->g_488
        &p_1317->g_150, // p_1317->g_504
        {{1L,0x2D9DD7C9L,0x495A0AACL,0x2D9DD7C9L,1L,1L},{1L,0x2D9DD7C9L,0x495A0AACL,0x2D9DD7C9L,1L,1L},{1L,0x2D9DD7C9L,0x495A0AACL,0x2D9DD7C9L,1L,1L},{1L,0x2D9DD7C9L,0x495A0AACL,0x2D9DD7C9L,1L,1L},{1L,0x2D9DD7C9L,0x495A0AACL,0x2D9DD7C9L,1L,1L}}, // p_1317->g_505
        &p_1317->g_390, // p_1317->g_511
        &p_1317->g_150, // p_1317->g_512
        0x77DAL, // p_1317->g_533
        &p_1317->g_150, // p_1317->g_589
        {{{5UL,5UL,5UL,5UL,5UL,5UL,5UL,5UL},{5UL,5UL,5UL,5UL,5UL,5UL,5UL,5UL},{5UL,5UL,5UL,5UL,5UL,5UL,5UL,5UL}},{{5UL,5UL,5UL,5UL,5UL,5UL,5UL,5UL},{5UL,5UL,5UL,5UL,5UL,5UL,5UL,5UL},{5UL,5UL,5UL,5UL,5UL,5UL,5UL,5UL}}}, // p_1317->g_591
        {4L}, // p_1317->g_594
        {{{&p_1317->g_594[0],&p_1317->g_594[0],&p_1317->g_594[0]},{&p_1317->g_594[0],&p_1317->g_594[0],&p_1317->g_594[0]}},{{&p_1317->g_594[0],&p_1317->g_594[0],&p_1317->g_594[0]},{&p_1317->g_594[0],&p_1317->g_594[0],&p_1317->g_594[0]}},{{&p_1317->g_594[0],&p_1317->g_594[0],&p_1317->g_594[0]},{&p_1317->g_594[0],&p_1317->g_594[0],&p_1317->g_594[0]}},{{&p_1317->g_594[0],&p_1317->g_594[0],&p_1317->g_594[0]},{&p_1317->g_594[0],&p_1317->g_594[0],&p_1317->g_594[0]}},{{&p_1317->g_594[0],&p_1317->g_594[0],&p_1317->g_594[0]},{&p_1317->g_594[0],&p_1317->g_594[0],&p_1317->g_594[0]}},{{&p_1317->g_594[0],&p_1317->g_594[0],&p_1317->g_594[0]},{&p_1317->g_594[0],&p_1317->g_594[0],&p_1317->g_594[0]}}}, // p_1317->g_593
        0x622FL, // p_1317->g_603
        {0xBAA8L,4294967293UL,0x1DDEL,0x2FL}, // p_1317->g_605
        {0x756FL,0xDD26CDAFL,0x2F60L,0x26L}, // p_1317->g_607
        &p_1317->g_150, // p_1317->g_631
        &p_1317->g_607.f1, // p_1317->g_639
        &p_1317->g_639, // p_1317->g_638
        7L, // p_1317->g_667
        (void*)0, // p_1317->g_668
        0x51C6FE16L, // p_1317->g_672
        &p_1317->g_46, // p_1317->g_693
        0x012BE486L, // p_1317->g_836
        &p_1317->g_693, // p_1317->g_858
        &p_1317->g_858, // p_1317->g_857
        {0xBE09L,0x17323C0FL,0x7378L,1UL}, // p_1317->g_859
        {{{&p_1317->g_859,&p_1317->g_421,&p_1317->g_607,&p_1317->g_421,&p_1317->g_859,&p_1317->g_859,&p_1317->g_421,&p_1317->g_607},{&p_1317->g_859,&p_1317->g_421,&p_1317->g_607,&p_1317->g_421,&p_1317->g_859,&p_1317->g_859,&p_1317->g_421,&p_1317->g_607},{&p_1317->g_859,&p_1317->g_421,&p_1317->g_607,&p_1317->g_421,&p_1317->g_859,&p_1317->g_859,&p_1317->g_421,&p_1317->g_607},{&p_1317->g_859,&p_1317->g_421,&p_1317->g_607,&p_1317->g_421,&p_1317->g_859,&p_1317->g_859,&p_1317->g_421,&p_1317->g_607}},{{&p_1317->g_859,&p_1317->g_421,&p_1317->g_607,&p_1317->g_421,&p_1317->g_859,&p_1317->g_859,&p_1317->g_421,&p_1317->g_607},{&p_1317->g_859,&p_1317->g_421,&p_1317->g_607,&p_1317->g_421,&p_1317->g_859,&p_1317->g_859,&p_1317->g_421,&p_1317->g_607},{&p_1317->g_859,&p_1317->g_421,&p_1317->g_607,&p_1317->g_421,&p_1317->g_859,&p_1317->g_859,&p_1317->g_421,&p_1317->g_607},{&p_1317->g_859,&p_1317->g_421,&p_1317->g_607,&p_1317->g_421,&p_1317->g_859,&p_1317->g_859,&p_1317->g_421,&p_1317->g_607}},{{&p_1317->g_859,&p_1317->g_421,&p_1317->g_607,&p_1317->g_421,&p_1317->g_859,&p_1317->g_859,&p_1317->g_421,&p_1317->g_607},{&p_1317->g_859,&p_1317->g_421,&p_1317->g_607,&p_1317->g_421,&p_1317->g_859,&p_1317->g_859,&p_1317->g_421,&p_1317->g_607},{&p_1317->g_859,&p_1317->g_421,&p_1317->g_607,&p_1317->g_421,&p_1317->g_859,&p_1317->g_859,&p_1317->g_421,&p_1317->g_607},{&p_1317->g_859,&p_1317->g_421,&p_1317->g_607,&p_1317->g_421,&p_1317->g_859,&p_1317->g_859,&p_1317->g_421,&p_1317->g_607}},{{&p_1317->g_859,&p_1317->g_421,&p_1317->g_607,&p_1317->g_421,&p_1317->g_859,&p_1317->g_859,&p_1317->g_421,&p_1317->g_607},{&p_1317->g_859,&p_1317->g_421,&p_1317->g_607,&p_1317->g_421,&p_1317->g_859,&p_1317->g_859,&p_1317->g_421,&p_1317->g_607},{&p_1317->g_859,&p_1317->g_421,&p_1317->g_607,&p_1317->g_421,&p_1317->g_859,&p_1317->g_859,&p_1317->g_421,&p_1317->g_607},{&p_1317->g_859,&p_1317->g_421,&p_1317->g_607,&p_1317->g_421,&p_1317->g_859,&p_1317->g_859,&p_1317->g_421,&p_1317->g_607}},{{&p_1317->g_859,&p_1317->g_421,&p_1317->g_607,&p_1317->g_421,&p_1317->g_859,&p_1317->g_859,&p_1317->g_421,&p_1317->g_607},{&p_1317->g_859,&p_1317->g_421,&p_1317->g_607,&p_1317->g_421,&p_1317->g_859,&p_1317->g_859,&p_1317->g_421,&p_1317->g_607},{&p_1317->g_859,&p_1317->g_421,&p_1317->g_607,&p_1317->g_421,&p_1317->g_859,&p_1317->g_859,&p_1317->g_421,&p_1317->g_607},{&p_1317->g_859,&p_1317->g_421,&p_1317->g_607,&p_1317->g_421,&p_1317->g_859,&p_1317->g_859,&p_1317->g_421,&p_1317->g_607}},{{&p_1317->g_859,&p_1317->g_421,&p_1317->g_607,&p_1317->g_421,&p_1317->g_859,&p_1317->g_859,&p_1317->g_421,&p_1317->g_607},{&p_1317->g_859,&p_1317->g_421,&p_1317->g_607,&p_1317->g_421,&p_1317->g_859,&p_1317->g_859,&p_1317->g_421,&p_1317->g_607},{&p_1317->g_859,&p_1317->g_421,&p_1317->g_607,&p_1317->g_421,&p_1317->g_859,&p_1317->g_859,&p_1317->g_421,&p_1317->g_607},{&p_1317->g_859,&p_1317->g_421,&p_1317->g_607,&p_1317->g_421,&p_1317->g_859,&p_1317->g_859,&p_1317->g_421,&p_1317->g_607}},{{&p_1317->g_859,&p_1317->g_421,&p_1317->g_607,&p_1317->g_421,&p_1317->g_859,&p_1317->g_859,&p_1317->g_421,&p_1317->g_607},{&p_1317->g_859,&p_1317->g_421,&p_1317->g_607,&p_1317->g_421,&p_1317->g_859,&p_1317->g_859,&p_1317->g_421,&p_1317->g_607},{&p_1317->g_859,&p_1317->g_421,&p_1317->g_607,&p_1317->g_421,&p_1317->g_859,&p_1317->g_859,&p_1317->g_421,&p_1317->g_607},{&p_1317->g_859,&p_1317->g_421,&p_1317->g_607,&p_1317->g_421,&p_1317->g_859,&p_1317->g_859,&p_1317->g_421,&p_1317->g_607}}}, // p_1317->g_860
        &p_1317->g_348, // p_1317->g_861
        &p_1317->g_672, // p_1317->g_902
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1317->g_912
        &p_1317->g_403, // p_1317->g_1265
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_1317->g_1264
        {0x511CL,2UL,0L,9UL}, // p_1317->g_1298
        sequence_input[get_global_id(0)], // p_1317->global_0_offset
        sequence_input[get_global_id(1)], // p_1317->global_1_offset
        sequence_input[get_global_id(2)], // p_1317->global_2_offset
        sequence_input[get_local_id(0)], // p_1317->local_0_offset
        sequence_input[get_local_id(1)], // p_1317->local_1_offset
        sequence_input[get_local_id(2)], // p_1317->local_2_offset
        sequence_input[get_group_id(0)], // p_1317->group_0_offset
        sequence_input[get_group_id(1)], // p_1317->group_1_offset
        sequence_input[get_group_id(2)], // p_1317->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_1318 = c_1319;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1317);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1317->g_10, "p_1317->g_10", print_hash_value);
    transparent_crc(p_1317->g_14, "p_1317->g_14", print_hash_value);
    transparent_crc(p_1317->g_35, "p_1317->g_35", print_hash_value);
    transparent_crc(p_1317->g_42, "p_1317->g_42", print_hash_value);
    transparent_crc(p_1317->g_44, "p_1317->g_44", print_hash_value);
    transparent_crc(p_1317->g_46, "p_1317->g_46", print_hash_value);
    transparent_crc(p_1317->g_47, "p_1317->g_47", print_hash_value);
    transparent_crc(p_1317->g_48, "p_1317->g_48", print_hash_value);
    transparent_crc(p_1317->g_49, "p_1317->g_49", print_hash_value);
    transparent_crc(p_1317->g_55, "p_1317->g_55", print_hash_value);
    transparent_crc(p_1317->g_56, "p_1317->g_56", print_hash_value);
    transparent_crc(p_1317->g_57, "p_1317->g_57", print_hash_value);
    transparent_crc(p_1317->g_58, "p_1317->g_58", print_hash_value);
    transparent_crc(p_1317->g_61, "p_1317->g_61", print_hash_value);
    transparent_crc(p_1317->g_62, "p_1317->g_62", print_hash_value);
    transparent_crc(p_1317->g_63, "p_1317->g_63", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1317->g_64[i], "p_1317->g_64[i]", print_hash_value);

    }
    transparent_crc(p_1317->g_65, "p_1317->g_65", print_hash_value);
    transparent_crc(p_1317->g_77, "p_1317->g_77", print_hash_value);
    transparent_crc(p_1317->g_99, "p_1317->g_99", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1317->g_100[i].f0, "p_1317->g_100[i].f0", print_hash_value);
        transparent_crc(p_1317->g_100[i].f1, "p_1317->g_100[i].f1", print_hash_value);
        transparent_crc(p_1317->g_100[i].f2, "p_1317->g_100[i].f2", print_hash_value);
        transparent_crc(p_1317->g_100[i].f3, "p_1317->g_100[i].f3", print_hash_value);

    }
    transparent_crc(p_1317->g_101.f0, "p_1317->g_101.f0", print_hash_value);
    transparent_crc(p_1317->g_101.f1, "p_1317->g_101.f1", print_hash_value);
    transparent_crc(p_1317->g_101.f2, "p_1317->g_101.f2", print_hash_value);
    transparent_crc(p_1317->g_101.f3, "p_1317->g_101.f3", print_hash_value);
    transparent_crc(p_1317->g_108, "p_1317->g_108", print_hash_value);
    transparent_crc(p_1317->g_110, "p_1317->g_110", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1317->g_135[i][j][k], "p_1317->g_135[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1317->g_163, "p_1317->g_163", print_hash_value);
    transparent_crc(p_1317->g_166, "p_1317->g_166", print_hash_value);
    transparent_crc(p_1317->g_168, "p_1317->g_168", print_hash_value);
    transparent_crc(p_1317->g_170, "p_1317->g_170", print_hash_value);
    transparent_crc(p_1317->g_179.f0, "p_1317->g_179.f0", print_hash_value);
    transparent_crc(p_1317->g_179.f1, "p_1317->g_179.f1", print_hash_value);
    transparent_crc(p_1317->g_179.f2, "p_1317->g_179.f2", print_hash_value);
    transparent_crc(p_1317->g_179.f3, "p_1317->g_179.f3", print_hash_value);
    transparent_crc(p_1317->g_183.f0, "p_1317->g_183.f0", print_hash_value);
    transparent_crc(p_1317->g_183.f1, "p_1317->g_183.f1", print_hash_value);
    transparent_crc(p_1317->g_183.f2, "p_1317->g_183.f2", print_hash_value);
    transparent_crc(p_1317->g_183.f3, "p_1317->g_183.f3", print_hash_value);
    transparent_crc(p_1317->g_185.f0, "p_1317->g_185.f0", print_hash_value);
    transparent_crc(p_1317->g_185.f1, "p_1317->g_185.f1", print_hash_value);
    transparent_crc(p_1317->g_185.f2, "p_1317->g_185.f2", print_hash_value);
    transparent_crc(p_1317->g_185.f3, "p_1317->g_185.f3", print_hash_value);
    transparent_crc(p_1317->g_185.f4, "p_1317->g_185.f4", print_hash_value);
    transparent_crc(p_1317->g_185.f5, "p_1317->g_185.f5", print_hash_value);
    transparent_crc(p_1317->g_185.f6, "p_1317->g_185.f6", print_hash_value);
    transparent_crc(p_1317->g_185.f7, "p_1317->g_185.f7", print_hash_value);
    transparent_crc(p_1317->g_204, "p_1317->g_204", print_hash_value);
    transparent_crc(p_1317->g_205.f0, "p_1317->g_205.f0", print_hash_value);
    transparent_crc(p_1317->g_205.f1, "p_1317->g_205.f1", print_hash_value);
    transparent_crc(p_1317->g_205.f2, "p_1317->g_205.f2", print_hash_value);
    transparent_crc(p_1317->g_205.f3, "p_1317->g_205.f3", print_hash_value);
    transparent_crc(p_1317->g_223.f0, "p_1317->g_223.f0", print_hash_value);
    transparent_crc(p_1317->g_223.f1, "p_1317->g_223.f1", print_hash_value);
    transparent_crc(p_1317->g_223.f2, "p_1317->g_223.f2", print_hash_value);
    transparent_crc(p_1317->g_223.f3, "p_1317->g_223.f3", print_hash_value);
    transparent_crc(p_1317->g_240, "p_1317->g_240", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1317->g_303[i], "p_1317->g_303[i]", print_hash_value);

    }
    transparent_crc(p_1317->g_344, "p_1317->g_344", print_hash_value);
    transparent_crc(p_1317->g_348.f0, "p_1317->g_348.f0", print_hash_value);
    transparent_crc(p_1317->g_348.f1, "p_1317->g_348.f1", print_hash_value);
    transparent_crc(p_1317->g_348.f2, "p_1317->g_348.f2", print_hash_value);
    transparent_crc(p_1317->g_348.f3, "p_1317->g_348.f3", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1317->g_374[i], "p_1317->g_374[i]", print_hash_value);

    }
    transparent_crc(p_1317->g_390.f0, "p_1317->g_390.f0", print_hash_value);
    transparent_crc(p_1317->g_390.f1, "p_1317->g_390.f1", print_hash_value);
    transparent_crc(p_1317->g_390.f2, "p_1317->g_390.f2", print_hash_value);
    transparent_crc(p_1317->g_390.f3, "p_1317->g_390.f3", print_hash_value);
    transparent_crc(p_1317->g_403.f0, "p_1317->g_403.f0", print_hash_value);
    transparent_crc(p_1317->g_403.f1, "p_1317->g_403.f1", print_hash_value);
    transparent_crc(p_1317->g_403.f2, "p_1317->g_403.f2", print_hash_value);
    transparent_crc(p_1317->g_403.f3, "p_1317->g_403.f3", print_hash_value);
    transparent_crc(p_1317->g_421.f0, "p_1317->g_421.f0", print_hash_value);
    transparent_crc(p_1317->g_421.f1, "p_1317->g_421.f1", print_hash_value);
    transparent_crc(p_1317->g_421.f2, "p_1317->g_421.f2", print_hash_value);
    transparent_crc(p_1317->g_421.f3, "p_1317->g_421.f3", print_hash_value);
    transparent_crc(p_1317->g_488.f0, "p_1317->g_488.f0", print_hash_value);
    transparent_crc(p_1317->g_488.f1, "p_1317->g_488.f1", print_hash_value);
    transparent_crc(p_1317->g_488.f2, "p_1317->g_488.f2", print_hash_value);
    transparent_crc(p_1317->g_488.f3, "p_1317->g_488.f3", print_hash_value);
    transparent_crc(p_1317->g_488.f4, "p_1317->g_488.f4", print_hash_value);
    transparent_crc(p_1317->g_488.f5, "p_1317->g_488.f5", print_hash_value);
    transparent_crc(p_1317->g_488.f6, "p_1317->g_488.f6", print_hash_value);
    transparent_crc(p_1317->g_488.f7, "p_1317->g_488.f7", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_1317->g_505[i][j], "p_1317->g_505[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1317->g_533, "p_1317->g_533", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_1317->g_591[i][j][k], "p_1317->g_591[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1317->g_594[i], "p_1317->g_594[i]", print_hash_value);

    }
    transparent_crc(p_1317->g_603, "p_1317->g_603", print_hash_value);
    transparent_crc(p_1317->g_605.f0, "p_1317->g_605.f0", print_hash_value);
    transparent_crc(p_1317->g_605.f1, "p_1317->g_605.f1", print_hash_value);
    transparent_crc(p_1317->g_605.f2, "p_1317->g_605.f2", print_hash_value);
    transparent_crc(p_1317->g_605.f3, "p_1317->g_605.f3", print_hash_value);
    transparent_crc(p_1317->g_607.f0, "p_1317->g_607.f0", print_hash_value);
    transparent_crc(p_1317->g_607.f1, "p_1317->g_607.f1", print_hash_value);
    transparent_crc(p_1317->g_607.f2, "p_1317->g_607.f2", print_hash_value);
    transparent_crc(p_1317->g_607.f3, "p_1317->g_607.f3", print_hash_value);
    transparent_crc(p_1317->g_667, "p_1317->g_667", print_hash_value);
    transparent_crc(p_1317->g_672, "p_1317->g_672", print_hash_value);
    transparent_crc(p_1317->g_836, "p_1317->g_836", print_hash_value);
    transparent_crc(p_1317->g_859.f0, "p_1317->g_859.f0", print_hash_value);
    transparent_crc(p_1317->g_859.f1, "p_1317->g_859.f1", print_hash_value);
    transparent_crc(p_1317->g_859.f2, "p_1317->g_859.f2", print_hash_value);
    transparent_crc(p_1317->g_859.f3, "p_1317->g_859.f3", print_hash_value);
    transparent_crc(p_1317->g_1298.f0, "p_1317->g_1298.f0", print_hash_value);
    transparent_crc(p_1317->g_1298.f1, "p_1317->g_1298.f1", print_hash_value);
    transparent_crc(p_1317->g_1298.f2, "p_1317->g_1298.f2", print_hash_value);
    transparent_crc(p_1317->g_1298.f3, "p_1317->g_1298.f3", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 75; i++)
            transparent_crc(p_1317->g_special_values[i + 75 * get_linear_group_id()], "p_1317->g_special_values[i + 75 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 75; i++)
            transparent_crc(p_1317->l_special_values[i], "p_1317->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
