// --atomics 68 ---fake_divergence -g 68,21,3 -l 1,3,1
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


// Seed: 15

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint8_t  f0;
   uint8_t  f1;
   uint64_t  f2;
   int32_t  f3;
};

union U1 {
   int64_t  f0;
   int32_t  f1;
   volatile int32_t  f2;
   volatile int32_t  f3;
};

union U2 {
   int8_t * f0;
};

union U3 {
   volatile int64_t  f0;
   volatile uint64_t  f1;
   int32_t  f2;
   volatile uint64_t  f3;
};

struct S4 {
    int32_t g_2;
    int32_t g_5;
    int32_t g_16;
    union U2 g_27[6];
    int32_t g_28;
    int32_t *g_30;
    int32_t ** volatile g_29;
    volatile int32_t g_31;
    volatile int32_t g_32[8];
    int32_t g_33;
    int8_t g_59[3][1];
    int32_t g_63;
    int32_t g_80;
    int32_t *g_82;
    volatile union U1 g_91;
    uint8_t g_92;
    int32_t *g_94;
    int32_t **g_93;
    union U0 g_110;
    volatile union U3 g_112;
    uint8_t g_114;
    int64_t g_151;
    int8_t g_157[6][9][4];
    uint32_t g_166;
    int16_t g_176;
    uint32_t g_183[8][1][7];
    uint16_t g_199;
    union U3 g_203;
    uint32_t g_207;
    uint16_t g_221[4];
    uint16_t g_264[8][6][1];
    int8_t g_324;
    uint32_t g_328;
    volatile union U1 g_334;
    uint32_t * volatile * volatile g_337;
    uint64_t g_346[7];
    volatile int16_t g_359;
    int16_t g_375;
    int64_t *g_391[5];
    int64_t **g_390[1][8][9];
    int64_t *** volatile g_389;
    volatile union U1 g_402;
    int8_t g_409;
    union U1 g_424;
    int32_t *g_433[8];
    int32_t ** volatile g_432;
    union U0 ** volatile g_443;
    union U0 *g_445[5][2];
    union U0 ** volatile g_444;
    volatile uint32_t g_457;
    volatile int16_t * volatile g_471;
    volatile int16_t * volatile *g_470;
    volatile int16_t g_546;
    int32_t g_564;
    uint16_t g_570;
    int16_t g_592;
    volatile union U3 g_612;
    int32_t * volatile g_638;
    uint64_t g_677;
    union U1 g_683;
    uint32_t *g_742;
    uint64_t g_763;
    int32_t * volatile g_784;
    int32_t * volatile g_798;
    int32_t g_916[8][7][4];
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
uint64_t  func_1(struct S4 * p_933);
uint16_t  func_8(int8_t * p_9, int8_t * p_10, struct S4 * p_933);
int8_t * func_11(int32_t  p_12, int64_t  p_13, uint16_t  p_14, struct S4 * p_933);
uint32_t  func_25(union U2  p_26, struct S4 * p_933);
union U0  func_36(int32_t  p_37, int32_t ** p_38, struct S4 * p_933);
int32_t ** func_39(int32_t  p_40, uint32_t  p_41, uint64_t  p_42, int64_t  p_43, struct S4 * p_933);
int32_t  func_47(uint64_t  p_48, int32_t * p_49, int8_t * p_50, uint64_t  p_51, uint64_t  p_52, struct S4 * p_933);
int32_t ** func_54(int16_t  p_55, int32_t * p_56, int32_t  p_57, struct S4 * p_933);
int32_t * func_66(int32_t  p_67, int32_t * p_68, int32_t ** p_69, struct S4 * p_933);
int32_t  func_70(uint8_t  p_71, uint32_t  p_72, int16_t  p_73, struct S4 * p_933);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_933->g_2 p_933->g_5 p_933->g_33 p_933->g_30 p_933->g_638 p_933->g_63 p_933->g_457
 * writes: p_933->g_2 p_933->g_5 p_933->g_33
 */
uint64_t  func_1(struct S4 * p_933)
{ /* block id: 4 */
    uint32_t l_566 = 0x33FC72DFL;
    int32_t l_917 = (-1L);
    int32_t *l_918 = (void*)0;
    int32_t *l_919 = &p_933->g_916[6][1][2];
    int32_t *l_920[2][2] = {{&p_933->g_33,&p_933->g_33},{&p_933->g_33,&p_933->g_33}};
    uint64_t l_921[9][1][10] = {{{0x68295A013E3E22E4L,0x903E0F9E5AB4EF39L,18446744073709551611UL,0x22DA9CA2DC71A92FL,0UL,18446744073709551608UL,18446744073709551614UL,0xC476D535286E4C0FL,0x2D63A7BA64099304L,0x082DE0656491BE9EL}},{{0x68295A013E3E22E4L,0x903E0F9E5AB4EF39L,18446744073709551611UL,0x22DA9CA2DC71A92FL,0UL,18446744073709551608UL,18446744073709551614UL,0xC476D535286E4C0FL,0x2D63A7BA64099304L,0x082DE0656491BE9EL}},{{0x68295A013E3E22E4L,0x903E0F9E5AB4EF39L,18446744073709551611UL,0x22DA9CA2DC71A92FL,0UL,18446744073709551608UL,18446744073709551614UL,0xC476D535286E4C0FL,0x2D63A7BA64099304L,0x082DE0656491BE9EL}},{{0x68295A013E3E22E4L,0x903E0F9E5AB4EF39L,18446744073709551611UL,0x22DA9CA2DC71A92FL,0UL,18446744073709551608UL,18446744073709551614UL,0xC476D535286E4C0FL,0x2D63A7BA64099304L,0x082DE0656491BE9EL}},{{0x68295A013E3E22E4L,0x903E0F9E5AB4EF39L,18446744073709551611UL,0x22DA9CA2DC71A92FL,0UL,18446744073709551608UL,18446744073709551614UL,0xC476D535286E4C0FL,0x2D63A7BA64099304L,0x082DE0656491BE9EL}},{{0x68295A013E3E22E4L,0x903E0F9E5AB4EF39L,18446744073709551611UL,0x22DA9CA2DC71A92FL,0UL,18446744073709551608UL,18446744073709551614UL,0xC476D535286E4C0FL,0x2D63A7BA64099304L,0x082DE0656491BE9EL}},{{0x68295A013E3E22E4L,0x903E0F9E5AB4EF39L,18446744073709551611UL,0x22DA9CA2DC71A92FL,0UL,18446744073709551608UL,18446744073709551614UL,0xC476D535286E4C0FL,0x2D63A7BA64099304L,0x082DE0656491BE9EL}},{{0x68295A013E3E22E4L,0x903E0F9E5AB4EF39L,18446744073709551611UL,0x22DA9CA2DC71A92FL,0UL,18446744073709551608UL,18446744073709551614UL,0xC476D535286E4C0FL,0x2D63A7BA64099304L,0x082DE0656491BE9EL}},{{0x68295A013E3E22E4L,0x903E0F9E5AB4EF39L,18446744073709551611UL,0x22DA9CA2DC71A92FL,0UL,18446744073709551608UL,18446744073709551614UL,0xC476D535286E4C0FL,0x2D63A7BA64099304L,0x082DE0656491BE9EL}}};
    uint32_t l_926 = 0xF45BA1D3L;
    int i, j, k;
    for (p_933->g_2 = 17; (p_933->g_2 != 24); p_933->g_2 = safe_add_func_int64_t_s_s(p_933->g_2, 1))
    { /* block id: 7 */
        int16_t *l_557 = (void*)0;
        int16_t **l_556 = &l_557;
        int16_t ***l_555[8][2][2] = {{{&l_556,&l_556},{&l_556,&l_556}},{{&l_556,&l_556},{&l_556,&l_556}},{{&l_556,&l_556},{&l_556,&l_556}},{{&l_556,&l_556},{&l_556,&l_556}},{{&l_556,&l_556},{&l_556,&l_556}},{{&l_556,&l_556},{&l_556,&l_556}},{{&l_556,&l_556},{&l_556,&l_556}},{{&l_556,&l_556},{&l_556,&l_556}}};
        uint32_t l_558 = 8UL;
        int32_t l_571 = 0x01050684L;
        int i, j, k;
        for (p_933->g_5 = 18; (p_933->g_5 == 16); --p_933->g_5)
        { /* block id: 10 */
            int32_t *l_15 = &p_933->g_16;
            uint16_t *l_561 = &p_933->g_221[1];
            int32_t l_562 = (-1L);
            int8_t *l_563 = &p_933->g_157[5][0][3];
            uint32_t *l_565 = (void*)0;
            uint16_t *l_567 = (void*)0;
            uint16_t *l_568 = &p_933->g_264[6][3][0];
            uint16_t *l_569 = &p_933->g_199;
            int32_t *l_915[5][9][5] = {{{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0}},{{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0}},{{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0}},{{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0}},{{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0},{(void*)0,(void*)0,&l_562,(void*)0,(void*)0}}};
            int i, j, k;
            (1 + 1);
        }
    }
    --l_921[3][0][9];
    for (p_933->g_33 = 0; (p_933->g_33 >= (-12)); --p_933->g_33)
    { /* block id: 568 */
        (*p_933->g_30) ^= l_926;
        if ((*p_933->g_638))
            continue;
        for (l_917 = 0; (l_917 >= (-18)); l_917--)
        { /* block id: 573 */
            if ((*p_933->g_30))
                break;
        }
    }
    if ((atomic_inc(&p_933->g_atomic_input[68 * get_linear_group_id() + 50]) == 2))
    { /* block id: 578 */
        uint32_t l_929 = 0x99434D61L;
        int32_t l_930[1];
        int8_t l_931 = 0L;
        uint32_t l_932 = 7UL;
        int i;
        for (i = 0; i < 1; i++)
            l_930[i] = 0x64E11BDEL;
        l_930[0] = (l_929 = 0x22BD8FA6L);
        l_932 = l_931;
        unsigned int result = 0;
        result += l_929;
        int l_930_i0;
        for (l_930_i0 = 0; l_930_i0 < 1; l_930_i0++) {
            result += l_930[l_930_i0];
        }
        result += l_931;
        result += l_932;
        atomic_add(&p_933->g_special_values[68 * get_linear_group_id() + 50], result);
    }
    else
    { /* block id: 582 */
        (1 + 1);
    }
    return p_933->g_457;
}


/* ------------------------------------------ */
/* 
 * reads : p_933->g_742 p_933->g_166 p_933->g_207
 * writes: p_933->g_166 p_933->g_207 p_933->g_183
 */
uint16_t  func_8(int8_t * p_9, int8_t * p_10, struct S4 * p_933)
{ /* block id: 553 */
    int32_t **l_905 = &p_933->g_94;
    int16_t *l_907 = &p_933->g_375;
    int16_t **l_906 = &l_907;
    uint32_t *l_908 = &p_933->g_183[0][0][1];
    int32_t l_909 = 0L;
    int16_t **l_911 = &l_907;
    int16_t ***l_910 = &l_911;
    int16_t **l_913 = (void*)0;
    int16_t ***l_912 = &l_913;
    int32_t l_914 = 0x0DDD3EC4L;
    l_914 = (safe_mul_func_uint32_t_u_u((l_905 == &p_933->g_82), (0xEDL >= (l_906 == ((*l_912) = ((l_909 = ((*l_908) = ((*p_933->g_742) = (*p_933->g_742)))) , ((*l_910) = &l_907)))))));
    return l_914;
}


/* ------------------------------------------ */
/* 
 * reads : p_933->g_409 p_933->g_433 p_933->g_30 p_933->g_5 p_933->g_28 p_933->g_92 p_933->g_183 p_933->g_16 p_933->g_166 p_933->g_33 p_933->g_432 p_933->g_151 p_933->g_424.f0 p_933->g_32 p_933->g_612 p_933->g_592 p_933->g_114 p_933->g_638 p_933->g_176 p_933->g_375 p_933->g_389 p_933->g_29 p_933->g_31 p_933->g_59 p_933->g_2 p_933->g_157 p_933->g_110.f0 p_933->g_80 p_933->g_199 p_933->g_91 p_933->g_203 p_933->g_207 p_933->g_221 p_933->g_63 p_933->g_110 p_933->g_328 p_933->g_203.f0 p_933->g_391 p_933->g_683 p_933->g_346 p_933->g_264 p_933->g_444 p_933->g_445 p_933->g_763 p_933->g_546 p_933->g_683.f0 p_933->g_742 p_933->g_110.f1 p_933->g_784 p_933->g_564
 * writes: p_933->g_32 p_933->g_409 p_933->g_433 p_933->g_110.f2 p_933->g_28 p_933->g_92 p_933->g_176 p_933->g_375 p_933->g_592 p_933->g_33 p_933->g_30 p_933->g_151 p_933->g_424.f0 p_933->g_114 p_933->g_221 p_933->g_63 p_933->g_390 p_933->g_110.f0 p_933->g_93 p_933->g_80 p_933->g_157 p_933->g_166 p_933->g_183 p_933->g_31 p_933->g_199 p_933->g_207 p_933->g_264 p_933->g_742 p_933->g_110.f1 p_933->g_564
 */
int8_t * func_11(int32_t  p_12, int64_t  p_13, uint16_t  p_14, struct S4 * p_933)
{ /* block id: 302 */
    int32_t l_573 = (-9L);
    int32_t l_574[3];
    uint32_t l_575 = 4294967286UL;
    int8_t *l_581[9] = {&p_933->g_157[3][2][1],&p_933->g_157[3][2][1],&p_933->g_157[3][2][1],&p_933->g_157[3][2][1],&p_933->g_157[3][2][1],&p_933->g_157[3][2][1],&p_933->g_157[3][2][1],&p_933->g_157[3][2][1],&p_933->g_157[3][2][1]};
    int32_t **l_585 = &p_933->g_30;
    int32_t ***l_584 = &l_585;
    int16_t *l_588 = &p_933->g_176;
    int16_t *l_589 = (void*)0;
    int16_t *l_590 = &p_933->g_375;
    int16_t *l_591[2][2] = {{&p_933->g_592,&p_933->g_592},{&p_933->g_592,&p_933->g_592}};
    int32_t l_599[10];
    union U0 **l_705 = (void*)0;
    union U0 ***l_704 = &l_705;
    uint32_t *l_736 = (void*)0;
    uint32_t *l_740 = &p_933->g_166;
    uint16_t l_800 = 3UL;
    int i, j;
    for (i = 0; i < 3; i++)
        l_574[i] = 0x056AF16AL;
    for (i = 0; i < 10; i++)
        l_599[i] = (-1L);
    for (p_14 = 0; p_14 < 8; p_14 += 1)
    {
        p_933->g_32[p_14] = 7L;
    }
    for (p_933->g_409 = 0; (p_933->g_409 <= 1); p_933->g_409 += 1)
    { /* block id: 306 */
        int32_t *l_572[3][6][6] = {{{&p_933->g_28,&p_933->g_28,&p_933->g_28,&p_933->g_33,&p_933->g_33,(void*)0},{&p_933->g_28,&p_933->g_28,&p_933->g_28,&p_933->g_33,&p_933->g_33,(void*)0},{&p_933->g_28,&p_933->g_28,&p_933->g_28,&p_933->g_33,&p_933->g_33,(void*)0},{&p_933->g_28,&p_933->g_28,&p_933->g_28,&p_933->g_33,&p_933->g_33,(void*)0},{&p_933->g_28,&p_933->g_28,&p_933->g_28,&p_933->g_33,&p_933->g_33,(void*)0},{&p_933->g_28,&p_933->g_28,&p_933->g_28,&p_933->g_33,&p_933->g_33,(void*)0}},{{&p_933->g_28,&p_933->g_28,&p_933->g_28,&p_933->g_33,&p_933->g_33,(void*)0},{&p_933->g_28,&p_933->g_28,&p_933->g_28,&p_933->g_33,&p_933->g_33,(void*)0},{&p_933->g_28,&p_933->g_28,&p_933->g_28,&p_933->g_33,&p_933->g_33,(void*)0},{&p_933->g_28,&p_933->g_28,&p_933->g_28,&p_933->g_33,&p_933->g_33,(void*)0},{&p_933->g_28,&p_933->g_28,&p_933->g_28,&p_933->g_33,&p_933->g_33,(void*)0},{&p_933->g_28,&p_933->g_28,&p_933->g_28,&p_933->g_33,&p_933->g_33,(void*)0}},{{&p_933->g_28,&p_933->g_28,&p_933->g_28,&p_933->g_33,&p_933->g_33,(void*)0},{&p_933->g_28,&p_933->g_28,&p_933->g_28,&p_933->g_33,&p_933->g_33,(void*)0},{&p_933->g_28,&p_933->g_28,&p_933->g_28,&p_933->g_33,&p_933->g_33,(void*)0},{&p_933->g_28,&p_933->g_28,&p_933->g_28,&p_933->g_33,&p_933->g_33,(void*)0},{&p_933->g_28,&p_933->g_28,&p_933->g_28,&p_933->g_33,&p_933->g_33,(void*)0},{&p_933->g_28,&p_933->g_28,&p_933->g_28,&p_933->g_33,&p_933->g_33,(void*)0}}};
        int i, j, k;
        p_933->g_433[p_933->g_409] = p_933->g_433[(p_933->g_409 + 4)];
        l_575--;
        for (l_573 = 0; (l_573 <= 7); l_573 += 1)
        { /* block id: 311 */
            int32_t l_578[6][10] = {{4L,(-1L),(-1L),4L,4L,(-1L),(-1L),4L,4L,(-1L)},{4L,(-1L),(-1L),4L,4L,(-1L),(-1L),4L,4L,(-1L)},{4L,(-1L),(-1L),4L,4L,(-1L),(-1L),4L,4L,(-1L)},{4L,(-1L),(-1L),4L,4L,(-1L),(-1L),4L,4L,(-1L)},{4L,(-1L),(-1L),4L,4L,(-1L),(-1L),4L,4L,(-1L)},{4L,(-1L),(-1L),4L,4L,(-1L),(-1L),4L,4L,(-1L)}};
            int8_t *l_579 = (void*)0;
            int i, j;
            l_578[1][7] = (l_574[0] = (*p_933->g_30));
            for (p_933->g_110.f2 = 0; (p_933->g_110.f2 <= 1); p_933->g_110.f2 += 1)
            { /* block id: 316 */
                int8_t *l_580 = &p_933->g_59[0][0];
                for (p_933->g_28 = 0; (p_933->g_28 <= 6); p_933->g_28 += 1)
                { /* block id: 319 */
                    for (p_933->g_92 = 0; (p_933->g_92 <= 3); p_933->g_92 += 1)
                    { /* block id: 322 */
                        return l_579;
                    }
                    return l_580;
                }
                return l_581[5];
            }
            if (p_12)
                break;
        }
    }
    if ((((+p_12) ^ p_933->g_183[3][0][4]) >= (safe_mul_func_int8_t_s_s((p_13 & (((l_584 != &l_585) & (safe_lshift_func_int8_t_s_s(((p_933->g_592 = ((*l_590) = ((*l_588) = (&p_933->g_346[4] == (void*)0)))) < 0x95A0L), ((safe_lshift_func_int16_t_s_u((((safe_div_func_int8_t_s_s(((((((safe_mod_func_uint32_t_u_u((((p_12 | (-3L)) <= p_14) < p_933->g_16), p_12)) < p_933->g_166) ^ l_599[9]) ^ (**l_585)) <= 0x26DAL) & (**l_585)), (***l_584))) & p_12) | 0xF6L), p_13)) <= 0xC288L)))) != 1UL)), 9UL))))
    { /* block id: 335 */
        uint16_t l_600[4] = {0UL,0UL,0UL,0UL};
        int32_t *l_601 = &p_933->g_33;
        int8_t *l_602 = &p_933->g_157[3][1][3];
        int i;
        (*l_601) |= (l_600[2] = 0x79FD075AL);
        (**l_584) = (*p_933->g_432);
        return l_602;
    }
    else
    { /* block id: 340 */
        uint16_t l_623 = 0UL;
        int64_t l_630 = (-1L);
        int32_t l_639 = (-3L);
        int32_t l_643 = (-1L);
        int32_t l_644 = 9L;
        int32_t l_645 = 0x7ABE829AL;
        int32_t l_646 = (-2L);
        int32_t l_647 = 0L;
        int32_t l_649[2];
        uint32_t l_774 = 0x16F3F4CDL;
        int32_t **l_802 = &p_933->g_433[3];
        int i;
        for (i = 0; i < 2; i++)
            l_649[i] = 0x4B3221FEL;
        if ((1UL ^ (**l_585)))
        { /* block id: 341 */
            int8_t l_607 = (-1L);
            int32_t l_615[6] = {0x2FA9C0A1L,0x2FA9C0A1L,0x2FA9C0A1L,0x2FA9C0A1L,0x2FA9C0A1L,0x2FA9C0A1L};
            union U0 **l_626 = &p_933->g_445[0][0];
            uint64_t l_650 = 1UL;
            union U2 l_658 = {0};
            uint64_t *l_676 = &p_933->g_677;
            int32_t l_703 = 8L;
            uint8_t l_722 = 253UL;
            uint16_t l_723[10] = {0xFA92L,0xFA92L,0xFA92L,0xFA92L,0xFA92L,0xFA92L,0xFA92L,0xFA92L,0xFA92L,0xFA92L};
            int i;
            for (p_933->g_151 = 3; (p_933->g_151 >= 0); p_933->g_151 -= 1)
            { /* block id: 344 */
                int32_t l_606 = 0x08DBF651L;
                union U0 **l_629[1];
                int32_t l_637 = (-6L);
                int32_t *l_640 = &l_639;
                int32_t *l_641 = &p_933->g_28;
                int32_t *l_642[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int64_t l_648 = 0x36F89BC2E4F9AF50L;
                int i;
                for (i = 0; i < 1; i++)
                    l_629[i] = (void*)0;
                for (p_933->g_424.f0 = 7; (p_933->g_424.f0 >= 2); p_933->g_424.f0 -= 1)
                { /* block id: 347 */
                    uint64_t l_608 = 0x0AA7EB13FFB5D01EL;
                    int64_t **l_614[6] = {&p_933->g_391[2],&p_933->g_391[2],&p_933->g_391[2],&p_933->g_391[2],&p_933->g_391[2],&p_933->g_391[2]};
                    int32_t l_616 = 0x261E140DL;
                    union U0 **l_628[2];
                    union U0 ***l_627[10][1];
                    int i, j;
                    for (i = 0; i < 2; i++)
                        l_628[i] = &p_933->g_445[0][0];
                    for (i = 0; i < 10; i++)
                    {
                        for (j = 0; j < 1; j++)
                            l_627[i][j] = &l_628[0];
                    }
                    if ((atomic_inc(&p_933->l_atomic_input[43]) == 7))
                    { /* block id: 349 */
                        int8_t l_603 = (-1L);
                        int i;
                        l_603 &= p_933->g_32[(p_933->g_151 + 1)];
                        unsigned int result = 0;
                        result += l_603;
                        atomic_add(&p_933->l_special_values[43], result);
                    }
                    else
                    { /* block id: 351 */
                        (1 + 1);
                    }
                    for (p_933->g_114 = 0; (p_933->g_114 <= 7); p_933->g_114 += 1)
                    { /* block id: 356 */
                        int32_t *l_604 = (void*)0;
                        int32_t *l_605[9][3][4] = {{{(void*)0,&p_933->g_63,&p_933->g_5,(void*)0},{(void*)0,&p_933->g_63,&p_933->g_5,(void*)0},{(void*)0,&p_933->g_63,&p_933->g_5,(void*)0}},{{(void*)0,&p_933->g_63,&p_933->g_5,(void*)0},{(void*)0,&p_933->g_63,&p_933->g_5,(void*)0},{(void*)0,&p_933->g_63,&p_933->g_5,(void*)0}},{{(void*)0,&p_933->g_63,&p_933->g_5,(void*)0},{(void*)0,&p_933->g_63,&p_933->g_5,(void*)0},{(void*)0,&p_933->g_63,&p_933->g_5,(void*)0}},{{(void*)0,&p_933->g_63,&p_933->g_5,(void*)0},{(void*)0,&p_933->g_63,&p_933->g_5,(void*)0},{(void*)0,&p_933->g_63,&p_933->g_5,(void*)0}},{{(void*)0,&p_933->g_63,&p_933->g_5,(void*)0},{(void*)0,&p_933->g_63,&p_933->g_5,(void*)0},{(void*)0,&p_933->g_63,&p_933->g_5,(void*)0}},{{(void*)0,&p_933->g_63,&p_933->g_5,(void*)0},{(void*)0,&p_933->g_63,&p_933->g_5,(void*)0},{(void*)0,&p_933->g_63,&p_933->g_5,(void*)0}},{{(void*)0,&p_933->g_63,&p_933->g_5,(void*)0},{(void*)0,&p_933->g_63,&p_933->g_5,(void*)0},{(void*)0,&p_933->g_63,&p_933->g_5,(void*)0}},{{(void*)0,&p_933->g_63,&p_933->g_5,(void*)0},{(void*)0,&p_933->g_63,&p_933->g_5,(void*)0},{(void*)0,&p_933->g_63,&p_933->g_5,(void*)0}},{{(void*)0,&p_933->g_63,&p_933->g_5,(void*)0},{(void*)0,&p_933->g_63,&p_933->g_5,(void*)0},{(void*)0,&p_933->g_63,&p_933->g_5,(void*)0}}};
                        int64_t **l_613 = &p_933->g_391[3];
                        int i, j, k;
                        ++l_608;
                        l_616 ^= ((l_615[2] |= (safe_unary_minus_func_int8_t_s(((p_933->g_612 , l_613) == l_614[0])))) | p_14);
                    }
                    (*p_933->g_638) = (safe_add_func_uint8_t_u_u(0xC9L, (safe_sub_func_int64_t_s_s(((p_933->g_592 , (l_630 = (safe_mul_func_uint16_t_u_u((p_933->g_221[p_933->g_151] = (l_623 || (safe_div_func_uint8_t_u_u(((l_629[0] = (l_626 = &p_933->g_445[0][0])) != (void*)0), l_616)))), (0x58L ^ l_608))))) != (((safe_mod_func_int32_t_s_s((safe_sub_func_uint64_t_u_u((safe_add_func_int64_t_s_s((!l_606), p_12)), l_615[2])), l_637)) > 65535UL) >= l_607)), p_933->g_114))));
                    for (p_933->g_176 = 0; (p_933->g_176 <= 3); p_933->g_176 += 1)
                    { /* block id: 368 */
                        return &p_933->g_59[1][0];
                    }
                }
                l_650++;
            }
            for (p_933->g_375 = 2; (p_933->g_375 <= 7); p_933->g_375 += 1)
            { /* block id: 376 */
                int64_t **l_653[1][3];
                int32_t **l_654 = &p_933->g_94;
                union U2 l_656 = {0};
                int8_t l_675 = 0x3CL;
                int16_t **l_684 = &l_588;
                int i, j;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 3; j++)
                        l_653[i][j] = &p_933->g_391[1];
                }
                (**l_584) = &l_615[2];
                (*p_933->g_389) = l_653[0][0];
                for (l_646 = 1; (l_646 >= 0); l_646 -= 1)
                { /* block id: 381 */
                    int32_t l_661 = (-7L);
                    int8_t l_701 = 0L;
                    int32_t l_702 = (-1L);
                    if (((void*)0 != l_654))
                    { /* block id: 382 */
                        union U2 *l_657[8] = {&p_933->g_27[2],&p_933->g_27[0],&p_933->g_27[2],&p_933->g_27[2],&p_933->g_27[0],&p_933->g_27[2],&p_933->g_27[2],&p_933->g_27[0]};
                        uint32_t *l_678[6];
                        int i;
                        for (i = 0; i < 6; i++)
                            l_678[i] = &p_933->g_183[6][0][5];
                        if (l_615[(l_646 + 1)])
                            break;
                        (*p_933->g_30) = l_649[l_646];
                        (*p_933->g_432) = func_66(((p_933->g_592 &= p_14) , (l_649[l_646] == (((((((safe_unary_minus_func_uint8_t_u(((l_658 = l_656) , p_933->g_183[3][0][4]))) ^ ((((+FAKE_DIVERGE(p_933->local_2_offset, get_local_id(2), 10)) , &p_13) != &p_13) | l_643)) || ((((safe_lshift_func_int8_t_s_s((((p_12 ^ (p_933->g_166 < p_13)) ^ 0UL) != 1L), 7)) >= l_661) != 0x34FD5BFDL) | l_661)) == p_933->g_33) == p_12) & 7UL) && p_13))), p_933->g_433[p_933->g_375], &p_933->g_30, p_933);
                        (**l_585) = (p_12 & (((*l_588) = (0x94030F26L || (l_643 = (((safe_sub_func_uint16_t_u_u(65535UL, p_933->g_92)) | ((func_36(((safe_sub_func_int32_t_s_s((p_12 , ((((*p_933->g_638) , (safe_sub_func_int32_t_s_s((p_12 != 0x0A8DEF3FL), (safe_rshift_func_int16_t_s_u((safe_unary_minus_func_uint16_t_u(GROUP_DIVERGE(0, 1))), 10))))) < ((safe_sub_func_int16_t_s_s(0x1B2BL, 0x0C2FL)) >= p_14)) != p_13)), 0x71C61262L)) || l_675), &p_933->g_433[6], p_933) , p_933->g_391[1]) != l_676)) == 0x0B6D23DFL)))) < p_933->g_166));
                    }
                    else
                    { /* block id: 391 */
                        int16_t ***l_685 = &l_684;
                        uint32_t *l_686 = &p_933->g_183[3][0][4];
                        l_703 = ((**l_585) &= (((safe_mul_func_int16_t_s_s((((safe_rshift_func_int8_t_s_u(((p_13 == (p_933->g_683 , ((*l_686) &= (((*l_685) = l_684) != (void*)0)))) , ((safe_add_func_uint32_t_u_u(((safe_div_func_int32_t_s_s((safe_div_func_int8_t_s_s((safe_rshift_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), 13)), ((safe_mod_func_uint32_t_u_u((safe_rshift_func_int8_t_s_u((((safe_mod_func_uint32_t_u_u((p_933->g_114 & p_933->g_346[4]), (0x020180A4283A8672L ^ 0x1549748CC73CF0DCL))) , (((p_13 ^ p_14) || p_14) >= 0x557B5606L)) , p_13), l_701)), l_702)) || p_933->g_31))), p_12)) | 0x05L), p_14)) , l_702)), 4)) , 255UL) != l_661), p_13)) ^ 0x0A36L) && 5L));
                    }
                    l_703 = (l_661 < ((void*)0 == l_704));
                }
            }
            l_703 = (safe_sub_func_uint32_t_u_u(((safe_sub_func_uint32_t_u_u((safe_lshift_func_uint8_t_u_s(GROUP_DIVERGE(1, 1), (safe_div_func_int8_t_s_s(((safe_div_func_int32_t_s_s(0x18CD61AFL, p_12)) < 4294967295UL), 0x34L)))), (0x50B2L < ((safe_div_func_uint64_t_u_u((p_14 != 0xEF5CC4167ABCAEAAL), p_12)) == (safe_mod_func_uint16_t_u_u((~(((safe_lshift_func_int8_t_s_u(((p_933->g_264[1][1][0] <= l_646) && l_722), p_13)) != l_703) ^ p_13)), (**l_585))))))) <= 0x2842CC23E5B57307L), l_723[8]));
        }
        else
        { /* block id: 401 */
            uint32_t l_775 = 1UL;
            for (p_933->g_80 = (-20); (p_933->g_80 <= 5); ++p_933->g_80)
            { /* block id: 404 */
                uint8_t l_726 = 255UL;
                uint16_t *l_727 = &p_933->g_264[6][3][0];
                uint16_t *l_728 = (void*)0;
                uint16_t *l_729 = &p_933->g_221[1];
                uint32_t **l_737 = (void*)0;
                uint32_t **l_738 = (void*)0;
                uint32_t **l_739 = &l_736;
                uint32_t **l_741 = (void*)0;
                uint16_t *l_751 = (void*)0;
                int32_t l_752 = 0x541BE7A6L;
                int32_t *l_753 = &l_574[1];
                (*l_753) |= (((*l_729) &= ((*l_727) = l_726)) ^ ((l_643 ^ ((safe_mod_func_int8_t_s_s((9UL > (l_752 = (p_14 = (~(((safe_mod_func_int64_t_s_s((safe_mod_func_uint8_t_u_u((((((p_13 , (((*l_739) = l_736) == (p_933->g_742 = (l_740 = l_740)))) == (((safe_sub_func_int64_t_s_s(((**p_933->g_444) , (safe_rshift_func_int16_t_s_u((((safe_add_func_uint8_t_u_u(((safe_rshift_func_int16_t_s_u(l_726, (p_933->g_32[2] & l_726))) | p_933->g_207), FAKE_DIVERGE(p_933->group_0_offset, get_group_id(0), 10))) , p_933->g_203.f0) >= (-10L)), p_933->g_92))), p_13)) == 1L) >= p_13)) ^ 0UL) || 0UL) | p_14), 3UL)), 0x145F66F0A72372C2L)) > p_933->g_346[3]) , 0xF0FFL))))), p_12)) , p_933->g_199)) >= p_13));
                for (p_933->g_114 = 0; (p_933->g_114 <= 0); p_933->g_114 += 1)
                { /* block id: 415 */
                    uint8_t l_754 = 255UL;
                    l_754--;
                    if ((*p_933->g_30))
                    { /* block id: 417 */
                        (*l_753) ^= (safe_sub_func_int8_t_s_s(l_649[1], p_13));
                        return l_581[3];
                    }
                    else
                    { /* block id: 420 */
                        union U0 l_769 = {0x7EL};
                        int8_t *l_776[5] = {&p_933->g_157[3][1][3],&p_933->g_157[3][1][3],&p_933->g_157[3][1][3],&p_933->g_157[3][1][3],&p_933->g_157[3][1][3]};
                        int i;
                        (*l_753) |= ((safe_rshift_func_uint16_t_u_u(65534UL, ((safe_sub_func_uint32_t_u_u(p_933->g_763, (safe_lshift_func_int8_t_s_s((l_646 = (((((safe_div_func_uint16_t_u_u(0x1083L, (((-7L) & l_643) | (1L <= ((((*p_933->g_742) ^= (safe_unary_minus_func_int8_t_s((l_769 , (l_649[0] = (((safe_lshift_func_int8_t_s_s((safe_div_func_uint64_t_u_u((((0x62B0L >= (0xA28F55D9DB851E1BL >= l_774)) > p_13) <= l_775), p_933->g_546)), p_933->g_683.f0)) <= p_14) > p_14)))))) == p_13) >= (***l_584)))))) == 0x7CB328E0BCAC4409L) == 1UL) > 3UL) <= (-1L))), p_933->g_763)))) <= p_12))) ^ l_769.f0);
                        return l_776[4];
                    }
                }
                if ((**p_933->g_29))
                    continue;
            }
        }
        for (p_933->g_110.f1 = (-9); (p_933->g_110.f1 != 22); ++p_933->g_110.f1)
        { /* block id: 433 */
            uint16_t *l_781 = &p_933->g_264[6][3][0];
            int32_t *l_796 = &p_933->g_80;
            int32_t l_797 = 1L;
            (*p_933->g_784) |= (safe_lshift_func_uint16_t_u_s((p_14 , (++(*l_781))), 10));
            if (l_649[1])
            { /* block id: 436 */
                int32_t *l_795 = &p_933->g_80;
                int32_t *l_799 = &p_933->g_28;
                (*l_799) = ((safe_mod_func_int64_t_s_s(0x6DC01927A18C1676L, (p_13 ^ l_774))) && (safe_lshift_func_int8_t_s_u((safe_div_func_uint64_t_u_u(((safe_rshift_func_uint8_t_u_s(p_13, ((((safe_sub_func_int32_t_s_s(p_14, p_14)) , l_795) != (p_13 , l_796)) <= l_797))) < 1L), 1L)), p_12)));
                if (l_800)
                    break;
                if (l_797)
                    break;
                (**l_584) = l_795;
            }
            else
            { /* block id: 441 */
                int32_t *l_801 = &l_647;
                (*l_801) &= 0x25A5F6A6L;
                if (l_644)
                    continue;
            }
            if (p_12)
                continue;
        }
        (*l_802) = ((*l_585) = &l_647);
    }
    if ((atomic_inc(&p_933->l_atomic_input[62]) == 6))
    { /* block id: 451 */
        int32_t l_803 = 0x1B0CE126L;
        for (l_803 = 4; (l_803 >= 0); l_803 -= 1)
        { /* block id: 454 */
            int32_t l_804 = (-8L);
            union U0 l_868 = {255UL};
            union U0 l_869[3] = {{0xFCL},{0xFCL},{0xFCL}};
            int32_t l_901 = (-7L);
            int8_t l_902 = 0x29L;
            int i;
            for (l_804 = 0; (l_804 <= 6); l_804 += 1)
            { /* block id: 457 */
                uint32_t l_805 = 0x640FCA22L;
                union U0 l_806 = {0x47L};
                union U0 l_807 = {0UL};
                union U0 l_808 = {0xD6L};
                int64_t l_809 = 0L;
                uint8_t l_810 = 252UL;
                int16_t l_811 = 0x4E4EL;
                int i;
                l_811 = ((((l_805 = p_933->g_346[(l_803 + 2)]) , (l_806 , l_807)) , l_808) , ((l_809 = (-1L)) , (l_810 = p_933->g_346[l_804])));
            }
            for (l_804 = 0; (l_804 <= 8); l_804 += 1)
            { /* block id: 465 */
                int32_t l_812 = (-1L);
                int32_t *l_867 = (void*)0;
                for (l_812 = 9; (l_812 >= 3); l_812 -= 1)
                { /* block id: 468 */
                    uint8_t l_813[7];
                    int i;
                    for (i = 0; i < 7; i++)
                        l_813[i] = 0x5FL;
                    ++l_813[1];
                    for (l_813[2] = 1; (l_813[2] <= 8); l_813[2] += 1)
                    { /* block id: 472 */
                        int32_t l_817 = 4L;
                        int32_t *l_816 = &l_817;
                        uint32_t l_818 = 3UL;
                        uint32_t l_819 = 4294967295UL;
                        int8_t l_820 = 0x24L;
                        uint16_t l_821 = 0UL;
                        uint16_t l_822[2][6][2] = {{{8UL,8UL},{8UL,8UL},{8UL,8UL},{8UL,8UL},{8UL,8UL},{8UL,8UL}},{{8UL,8UL},{8UL,8UL},{8UL,8UL},{8UL,8UL},{8UL,8UL},{8UL,8UL}}};
                        uint8_t l_823 = 1UL;
                        uint8_t l_824 = 255UL;
                        int i, j, k;
                        l_816 = (void*)0;
                        l_818 ^= p_933->g_346[(l_803 + 1)];
                        l_819 |= 0x4BCE7DFDL;
                        l_824 = (l_820 , (l_823 |= (l_821 , l_822[1][0][0])));
                    }
                    for (l_813[3] = 1; (l_813[3] <= 9); l_813[3] += 1)
                    { /* block id: 481 */
                        int16_t l_825 = 0x143FL;
                        int32_t l_826[4] = {(-9L),(-9L),(-9L),(-9L)};
                        uint32_t l_827[7][2] = {{0x4723856CL,4294967295UL},{0x4723856CL,4294967295UL},{0x4723856CL,4294967295UL},{0x4723856CL,4294967295UL},{0x4723856CL,4294967295UL},{0x4723856CL,4294967295UL},{0x4723856CL,4294967295UL}};
                        uint32_t l_830 = 0x9D58403CL;
                        int i, j;
                        l_827[6][0]--;
                        ++l_830;
                    }
                }
                for (l_812 = 9; (l_812 >= 0); l_812 -= 1)
                { /* block id: 488 */
                    int32_t l_833 = 0x6F5A77F5L;
                    uint32_t l_843[9][9][3] = {{{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL}},{{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL}},{{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL}},{{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL}},{{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL}},{{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL}},{{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL}},{{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL}},{{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL},{0UL,0x9429B313L,4294967291UL}}};
                    uint16_t l_864 = 0xAFAEL;
                    int i, j, k;
                    for (l_833 = 0; (l_833 <= 5); l_833 += 1)
                    { /* block id: 491 */
                        int8_t l_834 = 0x00L;
                        uint16_t l_835[6][4][4] = {{{0UL,0x7CC3L,0xA191L,65533UL},{0UL,0x7CC3L,0xA191L,65533UL},{0UL,0x7CC3L,0xA191L,65533UL},{0UL,0x7CC3L,0xA191L,65533UL}},{{0UL,0x7CC3L,0xA191L,65533UL},{0UL,0x7CC3L,0xA191L,65533UL},{0UL,0x7CC3L,0xA191L,65533UL},{0UL,0x7CC3L,0xA191L,65533UL}},{{0UL,0x7CC3L,0xA191L,65533UL},{0UL,0x7CC3L,0xA191L,65533UL},{0UL,0x7CC3L,0xA191L,65533UL},{0UL,0x7CC3L,0xA191L,65533UL}},{{0UL,0x7CC3L,0xA191L,65533UL},{0UL,0x7CC3L,0xA191L,65533UL},{0UL,0x7CC3L,0xA191L,65533UL},{0UL,0x7CC3L,0xA191L,65533UL}},{{0UL,0x7CC3L,0xA191L,65533UL},{0UL,0x7CC3L,0xA191L,65533UL},{0UL,0x7CC3L,0xA191L,65533UL},{0UL,0x7CC3L,0xA191L,65533UL}},{{0UL,0x7CC3L,0xA191L,65533UL},{0UL,0x7CC3L,0xA191L,65533UL},{0UL,0x7CC3L,0xA191L,65533UL},{0UL,0x7CC3L,0xA191L,65533UL}}};
                        int32_t *l_836 = (void*)0;
                        int32_t l_838[2];
                        int32_t *l_837 = &l_838[0];
                        uint64_t l_839 = 0xAE0A216F6B550D0DL;
                        union U1 l_841[7] = {{1L},{1L},{1L},{1L},{1L},{1L},{1L}};
                        union U1 *l_840 = &l_841[5];
                        union U1 *l_842 = (void*)0;
                        int i, j, k;
                        for (i = 0; i < 2; i++)
                            l_838[i] = 0x63E636ECL;
                        l_837 = (((l_834 , 0x400626A3L) , l_835[4][2][0]) , l_836);
                        l_842 = (l_839 , l_840);
                    }
                    ++l_843[7][8][1];
                    for (l_833 = 0; (l_833 <= 5); l_833 += 1)
                    { /* block id: 498 */
                        uint32_t l_846[3][3];
                        int64_t l_849 = 9L;
                        int32_t l_850 = 0x5A44F87FL;
                        uint32_t l_851 = 4294967295UL;
                        uint32_t l_852 = 3UL;
                        uint32_t l_853 = 4294967291UL;
                        uint16_t l_854 = 0x418EL;
                        int64_t l_855[6][4] = {{2L,9L,0x3C496F9713A79BFDL,9L},{2L,9L,0x3C496F9713A79BFDL,9L},{2L,9L,0x3C496F9713A79BFDL,9L},{2L,9L,0x3C496F9713A79BFDL,9L},{2L,9L,0x3C496F9713A79BFDL,9L},{2L,9L,0x3C496F9713A79BFDL,9L}};
                        int32_t l_856 = (-7L);
                        int64_t l_857 = 0L;
                        uint32_t l_858 = 0x9E04F36EL;
                        int32_t *l_859 = &l_850;
                        int32_t l_861 = 0x65C84EACL;
                        int32_t *l_860 = &l_861;
                        int8_t l_862[3];
                        int32_t l_863[5] = {0x5F072BEEL,0x5F072BEEL,0x5F072BEEL,0x5F072BEEL,0x5F072BEEL};
                        int i, j;
                        for (i = 0; i < 3; i++)
                        {
                            for (j = 0; j < 3; j++)
                                l_846[i][j] = 1UL;
                        }
                        for (i = 0; i < 3; i++)
                            l_862[i] = (-1L);
                        --l_846[2][0];
                        l_860 = ((l_850 = (l_849 = l_849)) , (((l_857 ^= (l_856 = (l_855[2][0] = ((l_853 ^= (l_852 = l_851)) , l_854)))) , l_858) , l_859));
                        l_863[1] ^= l_862[2];
                    }
                    l_864--;
                }
                l_867 = (void*)0;
            }
            if (((p_933->g_346[(l_803 + 2)] , (l_869[2] = l_868)) , (-1L)))
            { /* block id: 515 */
                uint16_t l_870[6][6][4] = {{{0x7B28L,0xEE91L,4UL,65528UL},{0x7B28L,0xEE91L,4UL,65528UL},{0x7B28L,0xEE91L,4UL,65528UL},{0x7B28L,0xEE91L,4UL,65528UL},{0x7B28L,0xEE91L,4UL,65528UL},{0x7B28L,0xEE91L,4UL,65528UL}},{{0x7B28L,0xEE91L,4UL,65528UL},{0x7B28L,0xEE91L,4UL,65528UL},{0x7B28L,0xEE91L,4UL,65528UL},{0x7B28L,0xEE91L,4UL,65528UL},{0x7B28L,0xEE91L,4UL,65528UL},{0x7B28L,0xEE91L,4UL,65528UL}},{{0x7B28L,0xEE91L,4UL,65528UL},{0x7B28L,0xEE91L,4UL,65528UL},{0x7B28L,0xEE91L,4UL,65528UL},{0x7B28L,0xEE91L,4UL,65528UL},{0x7B28L,0xEE91L,4UL,65528UL},{0x7B28L,0xEE91L,4UL,65528UL}},{{0x7B28L,0xEE91L,4UL,65528UL},{0x7B28L,0xEE91L,4UL,65528UL},{0x7B28L,0xEE91L,4UL,65528UL},{0x7B28L,0xEE91L,4UL,65528UL},{0x7B28L,0xEE91L,4UL,65528UL},{0x7B28L,0xEE91L,4UL,65528UL}},{{0x7B28L,0xEE91L,4UL,65528UL},{0x7B28L,0xEE91L,4UL,65528UL},{0x7B28L,0xEE91L,4UL,65528UL},{0x7B28L,0xEE91L,4UL,65528UL},{0x7B28L,0xEE91L,4UL,65528UL},{0x7B28L,0xEE91L,4UL,65528UL}},{{0x7B28L,0xEE91L,4UL,65528UL},{0x7B28L,0xEE91L,4UL,65528UL},{0x7B28L,0xEE91L,4UL,65528UL},{0x7B28L,0xEE91L,4UL,65528UL},{0x7B28L,0xEE91L,4UL,65528UL},{0x7B28L,0xEE91L,4UL,65528UL}}};
                int32_t *l_873 = (void*)0;
                int32_t l_875 = 0x361DE028L;
                int32_t *l_874 = &l_875;
                int32_t l_876 = 0L;
                uint32_t l_877 = 0x6B4946EEL;
                int i, j, k;
                l_870[2][1][3]--;
                l_873 = (void*)0;
                l_874 = (void*)0;
                ++l_877;
            }
            else
            { /* block id: 520 */
                int32_t l_880 = 0L;
                for (l_880 = 0; (l_880 <= 0); l_880 += 1)
                { /* block id: 523 */
                    int32_t l_881 = 0x58D4DF1CL;
                    for (l_881 = 0; (l_881 <= 0); l_881 += 1)
                    { /* block id: 526 */
                        int32_t l_882 = 0x792CE3F7L;
                        uint8_t l_883 = 1UL;
                        uint32_t l_884 = 4294967295UL;
                        int32_t l_885 = 1L;
                        int32_t l_886 = 0x5F0DB43FL;
                        int32_t l_887 = 0x40DC433FL;
                        union U2 l_888 = {0};
                        union U2 l_889 = {0};
                        union U2 l_890 = {0};
                        union U2 l_891 = {0};
                        uint32_t l_892[7] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL};
                        int i;
                        l_869[2].f3 = (((l_882 , 0x6EFA5FEEL) , l_883) , l_884);
                        l_804 |= ((l_888 = (l_885 , ((l_890 = (l_886 , (l_887 , (l_889 = (FAKE_DIVERGE(p_933->group_2_offset, get_group_id(2), 10) , l_888))))) , l_891))) , l_892[6]);
                    }
                    for (l_881 = 0; (l_881 <= 0); l_881 += 1)
                    { /* block id: 535 */
                        uint32_t l_893[7] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL};
                        uint64_t l_894 = 0xC1E381F4A69190F6L;
                        int32_t l_896 = 0x124BDDAEL;
                        int32_t *l_895 = &l_896;
                        int32_t *l_897[1][2][1];
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 2; j++)
                            {
                                for (k = 0; k < 1; k++)
                                    l_897[i][j][k] = &l_896;
                            }
                        }
                        l_804 |= (l_894 = l_893[4]);
                        l_897[0][1][0] = l_895;
                    }
                    for (l_881 = 0; (l_881 <= 0); l_881 += 1)
                    { /* block id: 542 */
                        uint16_t l_898 = 65533UL;
                        l_898--;
                    }
                }
            }
            l_902 = l_901;
        }
        unsigned int result = 0;
        result += l_803;
        atomic_add(&p_933->l_special_values[62], result);
    }
    else
    { /* block id: 549 */
        (1 + 1);
    }
    return l_581[5];
}


/* ------------------------------------------ */
/* 
 * reads : p_933->g_28 p_933->g_29 p_933->g_409 p_933->g_114 p_933->g_424.f1 p_933->g_59 p_933->g_176
 * writes: p_933->g_28 p_933->g_30 p_933->g_33 p_933->g_424.f1 p_933->g_409 p_933->g_114
 */
uint32_t  func_25(union U2  p_26, struct S4 * p_933)
{ /* block id: 12 */
    uint16_t l_61 = 65527UL;
    int32_t l_429 = 0x4201D22EL;
    int32_t *l_461 = &p_933->g_80;
    uint32_t *l_518[10] = {&p_933->g_183[3][0][4],&p_933->g_183[3][0][4],&p_933->g_183[3][0][4],&p_933->g_183[3][0][4],&p_933->g_183[3][0][4],&p_933->g_183[3][0][4],&p_933->g_183[3][0][4],&p_933->g_183[3][0][4],&p_933->g_183[3][0][4],&p_933->g_183[3][0][4]};
    uint32_t **l_517 = &l_518[8];
    uint32_t ***l_516[10][3][4] = {{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}};
    union U0 *l_531 = (void*)0;
    int32_t l_537 = 1L;
    int32_t l_542 = (-8L);
    int32_t l_543 = (-1L);
    int32_t l_544 = 0x26D4A4CAL;
    int32_t l_545[7][10][3] = {{{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L}},{{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L}},{{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L}},{{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L}},{{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L}},{{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L}},{{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L},{0x4566ACBEL,(-9L),3L}}};
    uint16_t l_548 = 0UL;
    int i, j, k;
    for (p_933->g_28 = 4; (p_933->g_28 >= 1); p_933->g_28 -= 1)
    { /* block id: 15 */
        int32_t **l_53 = &p_933->g_30;
        int8_t *l_408 = &p_933->g_409;
        int32_t l_447 = 0x6423DDEDL;
        int16_t *l_460 = (void*)0;
        int16_t **l_459 = &l_460;
        int8_t *l_474 = &p_933->g_59[2][0];
        int8_t l_534[1];
        int32_t l_535 = 0x51A83C53L;
        int32_t l_536 = 8L;
        int32_t l_539 = 1L;
        int32_t l_541[6][10][4] = {{{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L}},{{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L}},{{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L}},{{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L}},{{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L}},{{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L},{(-2L),0x6BF88785L,0x6B3E6405L,1L}}};
        int16_t l_547 = 0x1C44L;
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_534[i] = 6L;
        (*p_933->g_29) = &p_933->g_5;
        for (p_933->g_33 = 0; (p_933->g_33 <= 5); p_933->g_33 += 1)
        { /* block id: 19 */
            uint16_t l_44 = 0x50BAL;
            int8_t *l_58 = &p_933->g_59[0][0];
            int32_t *l_60 = &p_933->g_2;
            int32_t **l_407[5] = {&p_933->g_30,&p_933->g_30,&p_933->g_30,&p_933->g_30,&p_933->g_30};
            int32_t ***l_406 = &l_407[1];
            int32_t l_475 = 0x3C299780L;
            uint64_t l_513 = 18446744073709551606UL;
            uint32_t ***l_525[6];
            union U0 *l_532 = &p_933->g_110;
            int8_t l_538 = 0x6EL;
            int64_t l_540[3];
            int i;
            for (i = 0; i < 6; i++)
                l_525[i] = (void*)0;
            for (i = 0; i < 3; i++)
                l_540[i] = 0x1664368673F95810L;
            (1 + 1);
        }
        for (p_933->g_424.f1 = 0; (p_933->g_424.f1 >= 0); p_933->g_424.f1 -= 1)
        { /* block id: 280 */
            int i, j;
            for (p_933->g_409 = 0; (p_933->g_409 <= 0); p_933->g_409 += 1)
            { /* block id: 283 */
                for (p_933->g_114 = 0; (p_933->g_114 <= 3); p_933->g_114 += 1)
                { /* block id: 286 */
                    int i, j, k;
                    l_541[(p_933->g_114 + 1)][(p_933->g_424.f1 + 4)][p_933->g_114] = p_933->g_59[(p_933->g_424.f1 + 1)][p_933->g_409];
                    if (p_933->g_59[(p_933->g_409 + 1)][p_933->g_409])
                        continue;
                }
            }
            return p_933->g_59[(p_933->g_424.f1 + 2)][p_933->g_424.f1];
        }
    }
    return p_933->g_176;
}


/* ------------------------------------------ */
/* 
 * reads : p_933->g_328 p_933->g_203.f0
 * writes:
 */
union U0  func_36(int32_t  p_37, int32_t ** p_38, struct S4 * p_933)
{ /* block id: 221 */
    uint32_t l_435 = 0x656725E3L;
    int32_t *l_436 = (void*)0;
    int32_t *l_437[2][7][4] = {{{&p_933->g_28,(void*)0,&p_933->g_28,&p_933->g_28},{&p_933->g_28,(void*)0,&p_933->g_28,&p_933->g_28},{&p_933->g_28,(void*)0,&p_933->g_28,&p_933->g_28},{&p_933->g_28,(void*)0,&p_933->g_28,&p_933->g_28},{&p_933->g_28,(void*)0,&p_933->g_28,&p_933->g_28},{&p_933->g_28,(void*)0,&p_933->g_28,&p_933->g_28},{&p_933->g_28,(void*)0,&p_933->g_28,&p_933->g_28}},{{&p_933->g_28,(void*)0,&p_933->g_28,&p_933->g_28},{&p_933->g_28,(void*)0,&p_933->g_28,&p_933->g_28},{&p_933->g_28,(void*)0,&p_933->g_28,&p_933->g_28},{&p_933->g_28,(void*)0,&p_933->g_28,&p_933->g_28},{&p_933->g_28,(void*)0,&p_933->g_28,&p_933->g_28},{&p_933->g_28,(void*)0,&p_933->g_28,&p_933->g_28},{&p_933->g_28,(void*)0,&p_933->g_28,&p_933->g_28}}};
    int8_t l_438 = 0x44L;
    uint64_t l_439 = 3UL;
    union U0 l_442 = {1UL};
    int i, j, k;
    l_435 = (p_933->g_328 && (p_933->g_203.f0 > p_37));
    l_439--;
    return l_442;
}


/* ------------------------------------------ */
/* 
 * reads : p_933->g_29 p_933->g_30 p_933->g_432
 * writes: p_933->g_110.f3 p_933->g_433
 */
int32_t ** func_39(int32_t  p_40, uint32_t  p_41, uint64_t  p_42, int64_t  p_43, struct S4 * p_933)
{ /* block id: 217 */
    int8_t l_430 = 0x78L;
    int32_t *l_431 = &p_933->g_110.f3;
    int32_t **l_434[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int i;
    (*l_431) = l_430;
    (*p_933->g_432) = (*p_933->g_29);
    return l_434[3];
}


/* ------------------------------------------ */
/* 
 * reads : p_933->g_166 p_933->g_59 p_933->g_221 p_933->g_334.f0 p_933->g_5 p_933->g_110.f0 p_933->g_28 p_933->g_30 p_933->g_176 p_933->g_264 p_933->g_424 p_933->g_63
 * writes: p_933->g_110.f3 p_933->g_207
 */
int32_t  func_47(uint64_t  p_48, int32_t * p_49, int8_t * p_50, uint64_t  p_51, uint64_t  p_52, struct S4 * p_933)
{ /* block id: 207 */
    int8_t l_414 = 0x50L;
    int16_t *l_418[2];
    int32_t l_419 = 0L;
    int32_t l_422 = 0x03FFE33EL;
    int32_t l_423 = (-1L);
    uint32_t *l_425 = &p_933->g_207;
    int16_t **l_426 = &l_418[0];
    uint8_t l_427 = 255UL;
    int32_t *l_428 = &l_422;
    int i;
    for (i = 0; i < 2; i++)
        l_418[i] = &p_933->g_176;
    l_423 = ((((((safe_sub_func_uint8_t_u_u(((p_933->g_110.f3 = ((safe_mod_func_int32_t_s_s(((0x4FD4D226B88F64A4L > l_414) ^ ((4294967294UL || (safe_unary_minus_func_uint16_t_u(((((((safe_mod_func_int8_t_s_s(p_933->g_166, ((p_933->g_59[2][0] & p_933->g_221[1]) || ((l_422 = ((l_419 |= l_414) != (((p_48 , (((safe_sub_func_uint16_t_u_u(p_933->g_334.f0, p_51)) ^ l_414) , &p_933->g_221[1])) == l_418[0]) & (*p_49)))) == p_933->g_110.f0)))) <= l_414) > l_414) || p_933->g_28) <= (*p_49)) , l_419)))) <= p_48)), (*p_933->g_30))) != p_933->g_176)) & l_414), p_933->g_28)) >= p_52) == p_933->g_264[7][5][0]) , &l_414) != &p_933->g_409) && p_52);
    (*l_428) = (((p_933->g_424 , 0x748C148BAC70F6F5L) >= (((((*l_425) = 0UL) , p_933->g_176) < (l_423 ^= (((((*l_426) = &p_933->g_176) != &p_933->g_176) <= l_427) , l_422))) & p_933->g_264[6][3][0])) ^ p_933->g_63);
    return (*p_933->g_30);
}


/* ------------------------------------------ */
/* 
 * reads : p_933->g_29 p_933->g_30 p_933->g_5 p_933->g_63 p_933->g_59 p_933->g_91 p_933->g_92 p_933->g_93 p_933->g_110 p_933->g_112 p_933->g_80 p_933->g_31 p_933->g_33 p_933->g_28 p_933->g_2 p_933->g_157 p_933->g_151 p_933->g_114 p_933->g_110.f0 p_933->g_199 p_933->g_203 p_933->g_207 p_933->g_221 p_933->g_32 p_933->g_176 p_933->g_324 p_933->g_328 p_933->g_334 p_933->g_337 p_933->g_346 p_933->g_359 p_933->g_375 p_933->g_112.f0 p_933->g_166 p_933->g_389 p_933->g_402 p_933->g_391
 * writes: p_933->g_63 p_933->g_59 p_933->g_82 p_933->g_114 p_933->g_31 p_933->g_92 p_933->g_110.f0 p_933->g_93 p_933->g_151 p_933->g_32 p_933->g_80 p_933->g_157 p_933->g_166 p_933->g_176 p_933->g_183 p_933->g_199 p_933->g_207 p_933->g_264 p_933->g_221 p_933->g_324 p_933->g_328 p_933->g_346 p_933->g_375 p_933->g_390
 */
int32_t ** func_54(int16_t  p_55, int32_t * p_56, int32_t  p_57, struct S4 * p_933)
{ /* block id: 22 */
    int32_t *l_62[6][8][3] = {{{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0}},{{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0}},{{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0}},{{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0}},{{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0}},{{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0},{&p_933->g_28,(void*)0,(void*)0}}};
    int64_t l_76 = 0x01FE44AADAB70C68L;
    uint8_t l_354 = 254UL;
    uint32_t l_360[4][4] = {{4294967286UL,4294967286UL,4294967291UL,4294967292UL},{4294967286UL,4294967286UL,4294967291UL,4294967292UL},{4294967286UL,4294967286UL,4294967291UL,4294967292UL},{4294967286UL,4294967286UL,4294967291UL,4294967292UL}};
    uint64_t *l_394 = &p_933->g_346[3];
    int i, j, k;
    p_57 = (**p_933->g_29);
    for (p_933->g_63 = 16; (p_933->g_63 > 22); ++p_933->g_63)
    { /* block id: 26 */
        int8_t *l_77 = (void*)0;
        int8_t *l_78 = &p_933->g_59[0][0];
        int32_t *l_79 = &p_933->g_80;
        int32_t **l_81[9][9] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        int32_t **l_296[1];
        uint64_t *l_380[4] = {&p_933->g_346[4],&p_933->g_346[4],&p_933->g_346[4],&p_933->g_346[4]};
        int i, j;
        for (i = 0; i < 1; i++)
            l_296[i] = &l_62[4][5][1];
        p_56 = func_66(func_70((safe_sub_func_int8_t_s_s(((*l_78) |= l_76), 0x96L)), ((void*)0 != l_62[3][1][1]), ((p_933->g_30 == (p_933->g_82 = l_79)) != ((((safe_mod_func_uint32_t_u_u(0xB26C3A74L, (safe_div_func_int16_t_s_s((safe_div_func_int64_t_s_s((safe_sub_func_int32_t_s_s((((p_57 , p_933->g_91) , p_55) ^ GROUP_DIVERGE(2, 1)), 4294967294UL)), p_933->g_92)), p_933->g_5)))) == p_57) , &l_79) != p_933->g_93)), p_933), l_79, &p_933->g_30, p_933);
        for (p_933->g_207 = 2; (p_933->g_207 != 27); p_933->g_207 = safe_add_func_uint8_t_u_u(p_933->g_207, 7))
        { /* block id: 144 */
            uint32_t l_323 = 0x223F12C4L;
            uint64_t l_340[2];
            int32_t l_347 = 4L;
            int8_t l_348 = (-1L);
            int32_t l_349 = (-1L);
            int32_t **l_387 = &l_62[1][0][0];
            int i;
            for (i = 0; i < 2; i++)
                l_340[i] = 18446744073709551609UL;
            for (p_933->g_176 = 0; (p_933->g_176 < 23); p_933->g_176 = safe_add_func_int64_t_s_s(p_933->g_176, 6))
            { /* block id: 147 */
                int64_t l_301 = 3L;
                union U0 l_317 = {255UL};
                int32_t *l_327 = &p_933->g_63;
                int32_t l_350 = 0x40DA5FFBL;
                int32_t l_351 = 0x3D654926L;
                int8_t l_352[2];
                int32_t l_353 = 0x1FD417F4L;
                int i;
                for (i = 0; i < 2; i++)
                    l_352[i] = (-5L);
                for (p_933->g_110.f0 = 0; (p_933->g_110.f0 <= 8); p_933->g_110.f0 += 1)
                { /* block id: 150 */
                    uint16_t l_325 = 0x741AL;
                    union U0 l_326 = {5UL};
                    int32_t *l_329 = (void*)0;
                    uint32_t *l_343[5][6][5] = {{{&p_933->g_166,&p_933->g_166,&l_323,&p_933->g_183[2][0][6],&p_933->g_183[1][0][5]},{&p_933->g_166,&p_933->g_166,&l_323,&p_933->g_183[2][0][6],&p_933->g_183[1][0][5]},{&p_933->g_166,&p_933->g_166,&l_323,&p_933->g_183[2][0][6],&p_933->g_183[1][0][5]},{&p_933->g_166,&p_933->g_166,&l_323,&p_933->g_183[2][0][6],&p_933->g_183[1][0][5]},{&p_933->g_166,&p_933->g_166,&l_323,&p_933->g_183[2][0][6],&p_933->g_183[1][0][5]},{&p_933->g_166,&p_933->g_166,&l_323,&p_933->g_183[2][0][6],&p_933->g_183[1][0][5]}},{{&p_933->g_166,&p_933->g_166,&l_323,&p_933->g_183[2][0][6],&p_933->g_183[1][0][5]},{&p_933->g_166,&p_933->g_166,&l_323,&p_933->g_183[2][0][6],&p_933->g_183[1][0][5]},{&p_933->g_166,&p_933->g_166,&l_323,&p_933->g_183[2][0][6],&p_933->g_183[1][0][5]},{&p_933->g_166,&p_933->g_166,&l_323,&p_933->g_183[2][0][6],&p_933->g_183[1][0][5]},{&p_933->g_166,&p_933->g_166,&l_323,&p_933->g_183[2][0][6],&p_933->g_183[1][0][5]},{&p_933->g_166,&p_933->g_166,&l_323,&p_933->g_183[2][0][6],&p_933->g_183[1][0][5]}},{{&p_933->g_166,&p_933->g_166,&l_323,&p_933->g_183[2][0][6],&p_933->g_183[1][0][5]},{&p_933->g_166,&p_933->g_166,&l_323,&p_933->g_183[2][0][6],&p_933->g_183[1][0][5]},{&p_933->g_166,&p_933->g_166,&l_323,&p_933->g_183[2][0][6],&p_933->g_183[1][0][5]},{&p_933->g_166,&p_933->g_166,&l_323,&p_933->g_183[2][0][6],&p_933->g_183[1][0][5]},{&p_933->g_166,&p_933->g_166,&l_323,&p_933->g_183[2][0][6],&p_933->g_183[1][0][5]},{&p_933->g_166,&p_933->g_166,&l_323,&p_933->g_183[2][0][6],&p_933->g_183[1][0][5]}},{{&p_933->g_166,&p_933->g_166,&l_323,&p_933->g_183[2][0][6],&p_933->g_183[1][0][5]},{&p_933->g_166,&p_933->g_166,&l_323,&p_933->g_183[2][0][6],&p_933->g_183[1][0][5]},{&p_933->g_166,&p_933->g_166,&l_323,&p_933->g_183[2][0][6],&p_933->g_183[1][0][5]},{&p_933->g_166,&p_933->g_166,&l_323,&p_933->g_183[2][0][6],&p_933->g_183[1][0][5]},{&p_933->g_166,&p_933->g_166,&l_323,&p_933->g_183[2][0][6],&p_933->g_183[1][0][5]},{&p_933->g_166,&p_933->g_166,&l_323,&p_933->g_183[2][0][6],&p_933->g_183[1][0][5]}},{{&p_933->g_166,&p_933->g_166,&l_323,&p_933->g_183[2][0][6],&p_933->g_183[1][0][5]},{&p_933->g_166,&p_933->g_166,&l_323,&p_933->g_183[2][0][6],&p_933->g_183[1][0][5]},{&p_933->g_166,&p_933->g_166,&l_323,&p_933->g_183[2][0][6],&p_933->g_183[1][0][5]},{&p_933->g_166,&p_933->g_166,&l_323,&p_933->g_183[2][0][6],&p_933->g_183[1][0][5]},{&p_933->g_166,&p_933->g_166,&l_323,&p_933->g_183[2][0][6],&p_933->g_183[1][0][5]},{&p_933->g_166,&p_933->g_166,&l_323,&p_933->g_183[2][0][6],&p_933->g_183[1][0][5]}}};
                    uint32_t **l_342 = &l_343[0][5][4];
                    uint32_t ***l_341 = &l_342;
                    uint64_t *l_344 = (void*)0;
                    uint64_t *l_345[2];
                    int i, j, k;
                    for (i = 0; i < 2; i++)
                        l_345[i] = &p_933->g_346[4];
                    if (l_301)
                    { /* block id: 151 */
                        union U2 l_310 = {0};
                        uint16_t *l_311 = &p_933->g_221[1];
                        union U0 l_322 = {0x65L};
                        int i, j;
                        p_56 = (*p_933->g_29);
                        l_325 ^= (safe_add_func_uint16_t_u_u(p_933->g_32[2], (safe_lshift_func_int16_t_s_s(((safe_rshift_func_uint16_t_u_s((safe_div_func_int8_t_s_s(p_57, (((l_310 , ((((p_933->g_264[6][3][0] = (--(*l_311))) <= (p_56 == (void*)0)) , 0x6CL) <= ((safe_sub_func_uint16_t_u_u(((safe_unary_minus_func_int16_t_s((l_317 , (safe_div_func_uint16_t_u_u(((((p_933->g_324 ^= ((((*l_78) ^= ((safe_add_func_uint64_t_u_u((l_322 , (~((((void*)0 == &l_81[p_933->g_110.f0][p_933->g_110.f0]) > l_323) | l_301))), 9L)) > 9UL)) & p_57) & FAKE_DIVERGE(p_933->local_2_offset, get_local_id(2), 10))) && 1UL) < 0x62L) != p_933->g_5), 0x22E6L))))) , FAKE_DIVERGE(p_933->group_0_offset, get_group_id(0), 10)), p_933->g_2)) , l_317.f0))) < 18446744073709551606UL) , 0x08L))), 6)) , 0x47F4L), p_55))));
                        l_322.f3 = (*p_56);
                        l_326.f3 = (p_933->g_328 ^= (((l_326 , l_327) != (l_62[3][6][0] = (*p_933->g_29))) != 0x6FB1DF40L));
                    }
                    else
                    { /* block id: 162 */
                        l_62[0][1][2] = (*p_933->g_29);
                    }
                    l_329 = &p_57;
                    l_347 = (safe_sub_func_uint64_t_u_u((p_933->g_346[4] &= (0xDE12DBA808FF619EL >= ((safe_sub_func_int16_t_s_s((p_933->g_334 , ((p_933->g_337 != ((*l_341) = (((&p_933->g_176 != (void*)0) | ((safe_rshift_func_uint8_t_u_u(0x20L, l_340[0])) & (*l_327))) , (void*)0))) || 0UL)), p_57)) <= 1L))), 0UL));
                }
                l_354--;
                for (p_55 = 0; (p_55 >= 0); p_55++)
                { /* block id: 173 */
                    int64_t *l_367[6][10] = {{&l_301,&l_76,&l_76,&l_301,&l_76,(void*)0,&p_933->g_151,(void*)0,&l_76,(void*)0},{&l_301,&l_76,&l_76,&l_301,&l_76,(void*)0,&p_933->g_151,(void*)0,&l_76,(void*)0},{&l_301,&l_76,&l_76,&l_301,&l_76,(void*)0,&p_933->g_151,(void*)0,&l_76,(void*)0},{&l_301,&l_76,&l_76,&l_301,&l_76,(void*)0,&p_933->g_151,(void*)0,&l_76,(void*)0},{&l_301,&l_76,&l_76,&l_301,&l_76,(void*)0,&p_933->g_151,(void*)0,&l_76,(void*)0},{&l_301,&l_76,&l_76,&l_301,&l_76,(void*)0,&p_933->g_151,(void*)0,&l_76,(void*)0}};
                    uint64_t *l_368 = &l_317.f2;
                    uint64_t *l_369 = &p_933->g_110.f2;
                    uint64_t *l_370 = &l_317.f2;
                    uint64_t *l_371 = &p_933->g_110.f2;
                    uint64_t *l_372 = &p_933->g_110.f2;
                    uint64_t *l_373 = &p_933->g_110.f2;
                    uint64_t *l_374 = &l_317.f2;
                    int32_t l_376 = 1L;
                    int32_t *l_377 = &l_317.f3;
                    int i, j;
                    p_56 = &p_57;
                    (*p_56) = p_933->g_359;
                    if ((l_360[3][2] && (safe_mul_func_int8_t_s_s(((247UL <= ((safe_add_func_int16_t_s_s((((0x7F0529FBBD50D57BL ^ ((p_933->g_151 = (safe_mod_func_uint32_t_u_u(p_55, (~(-1L))))) < ((p_933->g_375 ^= 0x4DF89FAFED6D079DL) , (((((((((void*)0 == &p_933->g_94) ^ p_933->g_112.f0) >= 0x533DL) >= l_348) , p_55) || p_55) , (void*)0) != &l_347)))) == 0L) , p_933->g_157[4][2][1]), l_376)) == p_55)) , p_57), p_55))))
                    { /* block id: 178 */
                        uint64_t *l_381 = &p_933->g_346[4];
                        l_377 = (l_62[5][7][2] = &p_57);
                        (*l_377) = ((safe_sub_func_int8_t_s_s((p_933->g_375 || (l_380[1] != l_381)), p_933->g_166)) <= FAKE_DIVERGE(p_933->global_0_offset, get_global_id(0), 10));
                        p_56 = (void*)0;
                        p_933->g_32[2] = ((*l_377) = (p_933->g_5 > (safe_div_func_int16_t_s_s((p_55 | 0xF1ABL), 6L))));
                    }
                    else
                    { /* block id: 185 */
                        uint64_t l_384[3][3][3] = {{{0x2ECCB1FB2FB07FBAL,0x2ECCB1FB2FB07FBAL,18446744073709551615UL},{0x2ECCB1FB2FB07FBAL,0x2ECCB1FB2FB07FBAL,18446744073709551615UL},{0x2ECCB1FB2FB07FBAL,0x2ECCB1FB2FB07FBAL,18446744073709551615UL}},{{0x2ECCB1FB2FB07FBAL,0x2ECCB1FB2FB07FBAL,18446744073709551615UL},{0x2ECCB1FB2FB07FBAL,0x2ECCB1FB2FB07FBAL,18446744073709551615UL},{0x2ECCB1FB2FB07FBAL,0x2ECCB1FB2FB07FBAL,18446744073709551615UL}},{{0x2ECCB1FB2FB07FBAL,0x2ECCB1FB2FB07FBAL,18446744073709551615UL},{0x2ECCB1FB2FB07FBAL,0x2ECCB1FB2FB07FBAL,18446744073709551615UL},{0x2ECCB1FB2FB07FBAL,0x2ECCB1FB2FB07FBAL,18446744073709551615UL}}};
                        int i, j, k;
                        l_384[0][0][1]--;
                        l_349 |= (*p_56);
                        l_62[3][1][1] = &p_57;
                    }
                    p_56 = &p_57;
                }
            }
            return &p_933->g_30;
        }
    }
    if ((**p_933->g_29))
    { /* block id: 196 */
        int64_t **l_388 = (void*)0;
        union U2 l_392 = {0};
        int32_t l_393[7][5] = {{(-1L),0L,1L,(-5L),1L},{(-1L),0L,1L,(-5L),1L},{(-1L),0L,1L,(-5L),1L},{(-1L),0L,1L,(-5L),1L},{(-1L),0L,1L,(-5L),1L},{(-1L),0L,1L,(-5L),1L},{(-1L),0L,1L,(-5L),1L}};
        int i, j;
        (*p_933->g_389) = l_388;
        l_393[0][0] = ((l_392 , GROUP_DIVERGE(0, 1)) , (p_57 &= 0x0F95343EL));
    }
    else
    { /* block id: 200 */
        uint8_t l_399 = 1UL;
        uint16_t *l_403 = &p_933->g_264[6][3][0];
        int16_t *l_404 = &p_933->g_375;
        int32_t l_405[7] = {0L,(-1L),0L,0L,(-1L),0L,0L};
        int i;
        l_405[6] ^= ((l_394 != (((safe_add_func_uint32_t_u_u((((safe_mul_func_uint8_t_u_u(p_933->g_80, (0x7CB8L ^ l_399))) ^ (((*l_404) = (safe_mod_func_int32_t_s_s((GROUP_DIVERGE(1, 1) | ((*l_403) = (p_933->g_402 , ((p_57 && 0x12F9ACDDL) > ((l_394 != p_933->g_391[0]) > l_399))))), 0x6FE44D65L))) ^ p_933->g_92)) , 0x2940000EL), (*p_56))) <= p_933->g_59[0][0]) , (void*)0)) > p_55);
    }
    return &p_933->g_30;
}


/* ------------------------------------------ */
/* 
 * reads : p_933->g_29 p_933->g_30 p_933->g_92 p_933->g_31 p_933->g_33 p_933->g_28 p_933->g_5 p_933->g_59 p_933->g_2 p_933->g_157 p_933->g_151 p_933->g_114 p_933->g_110.f0 p_933->g_80 p_933->g_199 p_933->g_91 p_933->g_203 p_933->g_207 p_933->g_221 p_933->g_63 p_933->g_110 p_933->g_32 p_933->g_176
 * writes: p_933->g_92 p_933->g_110.f0 p_933->g_93 p_933->g_151 p_933->g_32 p_933->g_80 p_933->g_157 p_933->g_166 p_933->g_176 p_933->g_183 p_933->g_31 p_933->g_199 p_933->g_207 p_933->g_264 p_933->g_221
 */
int32_t * func_66(int32_t  p_67, int32_t * p_68, int32_t ** p_69, struct S4 * p_933)
{ /* block id: 34 */
    uint64_t l_122 = 0x466642384D70BF50L;
    int32_t **l_133 = (void*)0;
    int32_t *l_136 = &p_933->g_5;
    int32_t **l_135 = &l_136;
    int8_t l_181 = 0x67L;
    int16_t l_195 = 0x4380L;
    int32_t l_212 = 0x1A3327E2L;
    uint32_t l_213 = 5UL;
    int32_t l_244 = (-9L);
    int32_t **l_249[4][9][4] = {{{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94},{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94},{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94},{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94},{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94},{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94},{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94},{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94},{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94}},{{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94},{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94},{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94},{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94},{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94},{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94},{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94},{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94},{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94}},{{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94},{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94},{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94},{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94},{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94},{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94},{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94},{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94},{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94}},{{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94},{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94},{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94},{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94},{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94},{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94},{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94},{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94},{(void*)0,&p_933->g_94,(void*)0,&p_933->g_94}}};
    uint8_t l_266 = 0xE5L;
    union U0 l_275[10] = {{0UL},{255UL},{0UL},{0UL},{255UL},{0UL},{0UL},{255UL},{0UL},{0UL}};
    uint64_t *l_276 = &l_122;
    int8_t *l_277 = &l_181;
    uint32_t l_291 = 0x28A5F05DL;
    int32_t *l_292 = &p_933->g_110.f3;
    int32_t *l_293 = &p_933->g_110.f3;
    int32_t *l_294 = &p_933->g_110.f3;
    int32_t *l_295[5][6] = {{&p_933->g_63,&p_933->g_33,&p_933->g_63,&p_933->g_63,&p_933->g_33,&p_933->g_63},{&p_933->g_63,&p_933->g_33,&p_933->g_63,&p_933->g_63,&p_933->g_33,&p_933->g_63},{&p_933->g_63,&p_933->g_33,&p_933->g_63,&p_933->g_63,&p_933->g_33,&p_933->g_63},{&p_933->g_63,&p_933->g_33,&p_933->g_63,&p_933->g_63,&p_933->g_33,&p_933->g_63},{&p_933->g_63,&p_933->g_33,&p_933->g_63,&p_933->g_63,&p_933->g_33,&p_933->g_63}};
    int i, j, k;
    p_68 = (*p_933->g_29);
    for (p_933->g_92 = (-26); (p_933->g_92 != 43); ++p_933->g_92)
    { /* block id: 38 */
        int32_t *l_120 = &p_933->g_110.f3;
        int32_t *l_121[10] = {&p_933->g_110.f3,&p_933->g_110.f3,&p_933->g_110.f3,&p_933->g_110.f3,&p_933->g_110.f3,&p_933->g_110.f3,&p_933->g_110.f3,&p_933->g_110.f3,&p_933->g_110.f3,&p_933->g_110.f3};
        int32_t **l_145 = (void*)0;
        union U0 l_162 = {0xAFL};
        int64_t *l_238[10][4] = {{&p_933->g_151,(void*)0,&p_933->g_151,(void*)0},{&p_933->g_151,(void*)0,&p_933->g_151,(void*)0},{&p_933->g_151,(void*)0,&p_933->g_151,(void*)0},{&p_933->g_151,(void*)0,&p_933->g_151,(void*)0},{&p_933->g_151,(void*)0,&p_933->g_151,(void*)0},{&p_933->g_151,(void*)0,&p_933->g_151,(void*)0},{&p_933->g_151,(void*)0,&p_933->g_151,(void*)0},{&p_933->g_151,(void*)0,&p_933->g_151,(void*)0},{&p_933->g_151,(void*)0,&p_933->g_151,(void*)0},{&p_933->g_151,(void*)0,&p_933->g_151,(void*)0}};
        int64_t **l_237 = &l_238[5][0];
        int8_t *l_262 = &l_181;
        uint16_t l_263 = 0xB3CAL;
        int i, j;
        l_122++;
        for (p_933->g_110.f0 = 0; (p_933->g_110.f0 >= 58); p_933->g_110.f0 = safe_add_func_uint8_t_u_u(p_933->g_110.f0, 7))
        { /* block id: 42 */
            int32_t ***l_134[5];
            int32_t ***l_146 = &p_933->g_93;
            int32_t **l_149[7][8] = {{&p_933->g_94,&p_933->g_94,&p_933->g_82,&p_933->g_82,&p_933->g_94,&p_933->g_82,&p_933->g_82,&p_933->g_94},{&p_933->g_94,&p_933->g_94,&p_933->g_82,&p_933->g_82,&p_933->g_94,&p_933->g_82,&p_933->g_82,&p_933->g_94},{&p_933->g_94,&p_933->g_94,&p_933->g_82,&p_933->g_82,&p_933->g_94,&p_933->g_82,&p_933->g_82,&p_933->g_94},{&p_933->g_94,&p_933->g_94,&p_933->g_82,&p_933->g_82,&p_933->g_94,&p_933->g_82,&p_933->g_82,&p_933->g_94},{&p_933->g_94,&p_933->g_94,&p_933->g_82,&p_933->g_82,&p_933->g_94,&p_933->g_82,&p_933->g_82,&p_933->g_94},{&p_933->g_94,&p_933->g_94,&p_933->g_82,&p_933->g_82,&p_933->g_94,&p_933->g_82,&p_933->g_82,&p_933->g_94},{&p_933->g_94,&p_933->g_94,&p_933->g_82,&p_933->g_82,&p_933->g_94,&p_933->g_82,&p_933->g_82,&p_933->g_94}};
            int64_t *l_150[6][8] = {{&p_933->g_151,&p_933->g_151,(void*)0,&p_933->g_151,&p_933->g_151,&p_933->g_151,&p_933->g_151,(void*)0},{&p_933->g_151,&p_933->g_151,(void*)0,&p_933->g_151,&p_933->g_151,&p_933->g_151,&p_933->g_151,(void*)0},{&p_933->g_151,&p_933->g_151,(void*)0,&p_933->g_151,&p_933->g_151,&p_933->g_151,&p_933->g_151,(void*)0},{&p_933->g_151,&p_933->g_151,(void*)0,&p_933->g_151,&p_933->g_151,&p_933->g_151,&p_933->g_151,(void*)0},{&p_933->g_151,&p_933->g_151,(void*)0,&p_933->g_151,&p_933->g_151,&p_933->g_151,&p_933->g_151,(void*)0},{&p_933->g_151,&p_933->g_151,(void*)0,&p_933->g_151,&p_933->g_151,&p_933->g_151,&p_933->g_151,(void*)0}};
            uint32_t *l_204 = &p_933->g_183[3][0][4];
            int i, j;
            for (i = 0; i < 5; i++)
                l_134[i] = &l_133;
            if ((atomic_inc(&p_933->g_atomic_input[68 * get_linear_group_id() + 34]) == 4))
            { /* block id: 44 */
                int32_t l_128[2];
                int32_t *l_127 = &l_128[1];
                int32_t *l_129[3];
                int32_t *l_130 = &l_128[1];
                uint32_t l_131 = 4294967295UL;
                uint64_t l_132 = 18446744073709551612UL;
                int i;
                for (i = 0; i < 2; i++)
                    l_128[i] = 0x00C6155EL;
                for (i = 0; i < 3; i++)
                    l_129[i] = (void*)0;
                l_130 = (l_129[1] = l_127);
                l_132 ^= l_131;
                unsigned int result = 0;
                int l_128_i0;
                for (l_128_i0 = 0; l_128_i0 < 2; l_128_i0++) {
                    result += l_128[l_128_i0];
                }
                result += l_131;
                result += l_132;
                atomic_add(&p_933->g_special_values[68 * get_linear_group_id() + 34], result);
            }
            else
            { /* block id: 48 */
                (1 + 1);
            }
            l_135 = l_133;
            p_933->g_32[2] = (((safe_add_func_uint32_t_u_u(p_933->g_31, ((((p_933->g_33 | p_933->g_28) , (safe_mod_func_uint16_t_u_u(FAKE_DIVERGE(p_933->local_1_offset, get_local_id(1), 10), ((safe_mod_func_int16_t_s_s(p_933->g_5, ((FAKE_DIVERGE(p_933->local_0_offset, get_local_id(0), 10) || FAKE_DIVERGE(p_933->global_0_offset, get_global_id(0), 10)) & (p_933->g_151 = (safe_add_func_uint8_t_u_u(((((*l_136) <= (((*l_146) = l_145) == ((safe_rshift_func_int16_t_s_s(0x4A43L, 10)) , l_149[6][1]))) <= (p_933->g_5 ^ p_67)) & p_933->g_59[2][0]), (*l_136))))))) && (*p_933->g_30))))) < 0x5947L) < p_67))) == p_67) ^ p_67);
            for (p_67 = 1; (p_67 <= 9); p_67 += 1)
            { /* block id: 57 */
                uint32_t l_177 = 0x5BA2BE6EL;
                int32_t l_179 = (-1L);
                int32_t l_194 = 0x6DB85034L;
                for (p_933->g_151 = 0; (p_933->g_151 <= 5); p_933->g_151 += 1)
                { /* block id: 60 */
                    int64_t *l_173 = &p_933->g_151;
                    int32_t l_178 = 0x535209E3L;
                    uint16_t *l_198[7] = {&p_933->g_199,(void*)0,&p_933->g_199,&p_933->g_199,(void*)0,&p_933->g_199,&p_933->g_199};
                    uint32_t *l_202 = &l_177;
                    uint32_t *l_206 = &p_933->g_166;
                    uint32_t **l_205 = &l_206;
                    int i;
                    for (p_933->g_80 = 1; (p_933->g_80 <= 5); p_933->g_80 += 1)
                    { /* block id: 63 */
                        int8_t *l_156 = &p_933->g_157[3][1][3];
                        int32_t l_165 = 0x675671FDL;
                        int64_t *l_171 = &p_933->g_151;
                        int64_t **l_172 = &l_171;
                        int16_t *l_174 = (void*)0;
                        int16_t *l_175 = &p_933->g_176;
                        int16_t l_180[1];
                        uint32_t *l_182 = &p_933->g_183[3][0][4];
                        int i;
                        for (i = 0; i < 1; i++)
                            l_180[i] = 0x0359L;
                        p_933->g_31 = ((p_67 & p_933->g_2) == ((((safe_mod_func_int8_t_s_s(((*l_156) ^= p_933->g_59[0][0]), (safe_mod_func_uint64_t_u_u((((0x822E894DL & (~((*l_182) = (p_933->g_31 >= (safe_add_func_uint16_t_u_u((l_162 , ((p_933->g_166 = (safe_div_func_uint8_t_u_u(252UL, (l_165 = p_67)))) > (l_181 = (l_180[0] ^= ((safe_mod_func_int16_t_s_s((((l_177 &= ((((safe_rshift_func_int16_t_s_u(((*l_175) = (((*l_172) = ((p_933->g_151 != p_933->g_92) , l_171)) == l_173)), p_933->g_114)) == p_933->g_110.f0) & 0x53253064L) > p_933->g_151)) > 0x7C62FE86L) & l_178), l_179)) <= (*l_136)))))), 1L)))))) , &p_933->g_151) == l_150[5][1]), 0x8F196D43CE4CF2CAL)))) ^ p_67) , 1L) >= 0xB272L));
                        l_121[(p_933->g_80 + 1)] = (void*)0;
                        l_194 = ((l_178 > p_933->g_157[0][7][0]) >= ((safe_add_func_int64_t_s_s(p_933->g_151, ((safe_rshift_func_int8_t_s_s((0x5DL < ((safe_lshift_func_int8_t_s_s(7L, 1)) , (0x21L != p_933->g_31))), 3)) ^ (l_179 = ((((p_933->g_59[0][0] && ((safe_div_func_int8_t_s_s(p_67, p_67)) <= p_67)) == p_933->g_28) > FAKE_DIVERGE(p_933->global_1_offset, get_global_id(1), 10)) , 0x7918L))))) && p_67));
                        l_195 = (*p_68);
                    }
                    p_933->g_207 ^= (0x015B96B6CEE01EBFL && (((((safe_add_func_int16_t_s_s(p_933->g_80, (p_933->g_199--))) & ((p_67 , ((*l_202) = FAKE_DIVERGE(p_933->local_0_offset, get_local_id(0), 10))) ^ p_67)) , ((p_933->g_91 , p_933->g_203) , l_204)) == ((*l_205) = &p_933->g_183[3][0][0])) != 0xC1L));
                }
            }
        }
        for (l_162.f1 = 14; (l_162.f1 != 47); l_162.f1++)
        { /* block id: 88 */
            int32_t *l_210[10] = {&p_933->g_5,&p_933->g_5,&p_933->g_5,&p_933->g_5,&p_933->g_5,&p_933->g_5,&p_933->g_5,&p_933->g_5,&p_933->g_5,&p_933->g_5};
            int32_t **l_211 = &l_120;
            int64_t **l_240[1][10] = {{&l_238[4][1],&l_238[4][1],&l_238[4][1],&l_238[4][1],&l_238[4][1],&l_238[4][1],&l_238[4][1],&l_238[4][1],&l_238[4][1],&l_238[4][1]}};
            uint32_t *l_242 = &p_933->g_183[3][0][4];
            uint32_t **l_241 = &l_242;
            uint16_t l_245[8][7] = {{0xA344L,9UL,65532UL,0xA344L,0xA5C7L,65532UL,65532UL},{0xA344L,9UL,65532UL,0xA344L,0xA5C7L,65532UL,65532UL},{0xA344L,9UL,65532UL,0xA344L,0xA5C7L,65532UL,65532UL},{0xA344L,9UL,65532UL,0xA344L,0xA5C7L,65532UL,65532UL},{0xA344L,9UL,65532UL,0xA344L,0xA5C7L,65532UL,65532UL},{0xA344L,9UL,65532UL,0xA344L,0xA5C7L,65532UL,65532UL},{0xA344L,9UL,65532UL,0xA344L,0xA5C7L,65532UL,65532UL},{0xA344L,9UL,65532UL,0xA344L,0xA5C7L,65532UL,65532UL}};
            int32_t **l_250 = &p_933->g_94;
            int8_t *l_261 = &p_933->g_59[0][0];
            uint16_t l_265 = 1UL;
            int i, j;
            (*l_211) = l_210[5];
            --l_213;
            for (p_933->g_110.f0 = (-12); (p_933->g_110.f0 <= 8); p_933->g_110.f0 = safe_add_func_int32_t_s_s(p_933->g_110.f0, 6))
            { /* block id: 93 */
                int16_t *l_220 = &l_195;
                int32_t *l_222[3][10] = {{&p_933->g_63,&l_212,&p_933->g_63,&p_933->g_63,&l_212,&p_933->g_63,&p_933->g_63,&l_212,&p_933->g_63,&p_933->g_63},{&p_933->g_63,&l_212,&p_933->g_63,&p_933->g_63,&l_212,&p_933->g_63,&p_933->g_63,&l_212,&p_933->g_63,&p_933->g_63},{&p_933->g_63,&l_212,&p_933->g_63,&p_933->g_63,&l_212,&p_933->g_63,&p_933->g_63,&l_212,&p_933->g_63,&p_933->g_63}};
                int i, j;
                if ((p_67 || (((((safe_lshift_func_uint16_t_u_s(2UL, p_67)) | 8L) , p_67) , (~((*l_220) = ((GROUP_DIVERGE(1, 1) || (*l_136)) && (((&p_933->g_59[0][0] != (void*)0) != 0x775CL) >= (**p_69)))))) ^ p_933->g_221[1])))
                { /* block id: 95 */
                    if ((*l_136))
                        break;
                }
                else
                { /* block id: 97 */
                    int8_t l_223[5][8] = {{8L,0x56L,8L,8L,0x56L,8L,8L,0x56L},{8L,0x56L,8L,8L,0x56L,8L,8L,0x56L},{8L,0x56L,8L,8L,0x56L,8L,8L,0x56L},{8L,0x56L,8L,8L,0x56L,8L,8L,0x56L},{8L,0x56L,8L,8L,0x56L,8L,8L,0x56L}};
                    int32_t l_246 = (-4L);
                    int i, j;
                    for (l_195 = 9; (l_195 >= 1); l_195 -= 1)
                    { /* block id: 100 */
                        int16_t *l_236[4];
                        int64_t ***l_239 = &l_237;
                        uint64_t *l_243 = &l_122;
                        int i;
                        for (i = 0; i < 4; i++)
                            l_236[i] = (void*)0;
                        l_223[1][1] = ((l_121[l_195] = l_121[l_195]) != l_222[2][7]);
                        if ((*p_933->g_30))
                            break;
                        l_244 = ((((safe_mod_func_int64_t_s_s((safe_sub_func_uint8_t_u_u(p_67, ((65535UL < 0xBE54L) & ((*l_243) = (0x5C5E032EL > ((safe_mul_func_uint8_t_u_u((0x4022L & (safe_mul_func_uint16_t_u_u((safe_add_func_int32_t_s_s((safe_rshift_func_int16_t_s_s((p_933->g_176 = (*l_120)), 8)), (((*l_239) = l_237) != l_240[0][4]))), ((void*)0 != l_241)))), p_67)) | 0xFA0FL)))))), p_933->g_199)) || 0x7B22F360L) > l_223[1][1]) && (*p_933->g_30));
                    }
                    l_246 ^= l_245[6][2];
                }
                l_212 &= (safe_add_func_int8_t_s_s((l_249[3][7][2] != l_250), (safe_add_func_int16_t_s_s((l_266 = (l_265 ^= (((p_933->g_264[6][3][0] = ((**l_211) >= ((p_67 ^ (safe_lshift_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u((safe_lshift_func_int8_t_s_s(2L, ((&p_933->g_176 != (p_933->g_110 , (void*)0)) != ((p_933->g_151 &= (l_261 == l_262)) > l_263)))), (*l_136))), (*l_120)))) <= p_933->g_110.f0))) > p_67) ^ 0x4858L))), 1UL))));
                if ((atomic_inc(&p_933->l_atomic_input[14]) == 7))
                { /* block id: 117 */
                    uint32_t l_267[8] = {0x9225BA55L,0x9225BA55L,0x9225BA55L,0x9225BA55L,0x9225BA55L,0x9225BA55L,0x9225BA55L,0x9225BA55L};
                    int i;
                    l_267[7] = 0x21734DF6L;
                    for (l_267[7] = 0; (l_267[7] <= 7); l_267[7] += 1)
                    { /* block id: 121 */
                        union U1 l_269 = {0x4DE8078A07811D19L};/* VOLATILE GLOBAL l_269 */
                        union U1 *l_268 = &l_269;
                        union U1 *l_270 = (void*)0;
                        union U1 *l_271[6];
                        uint64_t l_272 = 0x5F5BBE6902670C1BL;
                        int i;
                        for (i = 0; i < 6; i++)
                            l_271[i] = (void*)0;
                        l_271[4] = (l_268 = (GROUP_DIVERGE(2, 1) , (l_270 = l_268)));
                        l_272 ^= p_933->g_32[l_267[7]];
                    }
                    unsigned int result = 0;
                    int l_267_i0;
                    for (l_267_i0 = 0; l_267_i0 < 8; l_267_i0++) {
                        result += l_267[l_267_i0];
                    }
                    atomic_add(&p_933->l_special_values[14], result);
                }
                else
                { /* block id: 127 */
                    (1 + 1);
                }
                if ((**p_69))
                    continue;
            }
            if ((*p_933->g_30))
                continue;
        }
    }
    p_933->g_32[2] |= (safe_div_func_int8_t_s_s(((*l_277) = ((((*l_276) ^= (&p_933->g_264[6][0][0] != (l_275[4] , &p_933->g_221[1]))) ^ p_933->g_176) <= (*p_68))), ((safe_lshift_func_int16_t_s_u(((safe_sub_func_int16_t_s_s((safe_mul_func_int8_t_s_s(((safe_sub_func_int16_t_s_s(((safe_rshift_func_int8_t_s_u(((0x2E7622B3L || ((safe_unary_minus_func_uint16_t_u((p_933->g_221[0] |= (p_933->g_59[2][0] || (safe_mod_func_uint8_t_u_u(((l_212 ^= (18446744073709551615UL && (l_291 || FAKE_DIVERGE(p_933->group_2_offset, get_group_id(2), 10)))) | 0x3B452713L), p_67)))))) , (*p_933->g_30))) , 0x18L), 6)) == p_67), p_933->g_5)) || p_67), 0x19L)), 0x7F8DL)) >= 0x60C5BB3ADCCEB260L), 8)) || 1L)));
    return (*p_933->g_29);
}


/* ------------------------------------------ */
/* 
 * reads : p_933->g_29 p_933->g_30 p_933->g_110 p_933->g_112 p_933->g_5 p_933->g_59 p_933->g_92 p_933->g_80
 * writes: p_933->g_114 p_933->g_31
 */
int32_t  func_70(uint8_t  p_71, uint32_t  p_72, int16_t  p_73, struct S4 * p_933)
{ /* block id: 29 */
    uint8_t l_97 = 0UL;
    int32_t *l_111[8] = {(void*)0,&p_933->g_2,(void*)0,(void*)0,&p_933->g_2,(void*)0,(void*)0,&p_933->g_2};
    int8_t l_113 = 0x28L;
    uint32_t l_115 = 4294967294UL;
    int i;
    p_933->g_31 = ((safe_mul_func_int16_t_s_s(l_97, (safe_div_func_int32_t_s_s((l_97 , (safe_lshift_func_int16_t_s_u((p_933->g_114 = (((safe_div_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_u((((0x6B5E7B382E325606L <= (safe_rshift_func_uint16_t_u_u(((safe_mod_func_uint64_t_u_u((0x89L < (((((((*p_933->g_29) == (p_933->g_110 , l_111[7])) && (p_933->g_112 , ((*p_933->g_30) != (**p_933->g_29)))) ^ p_933->g_59[0][0]) && 0xB5B5L) != 0UL) == (*p_933->g_30))), p_933->g_5)) > p_73), p_933->g_92))) > (*p_933->g_30)) || 0x26L), l_113)), p_71)) < (*p_933->g_30)) | p_73)), 3))), 7UL)))) , p_73);
    l_115--;
    return p_933->g_80;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[68];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 68; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[68];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 68; i++)
            l_special_values[i] = 0;
    struct S4 c_934;
    struct S4* p_933 = &c_934;
    struct S4 c_935 = {
        0x65925EF2L, // p_933->g_2
        1L, // p_933->g_5
        0x1017CA4EL, // p_933->g_16
        {{0},{0},{0},{0},{0},{0}}, // p_933->g_27
        0x1C6FEC1BL, // p_933->g_28
        &p_933->g_5, // p_933->g_30
        &p_933->g_30, // p_933->g_29
        0x74307976L, // p_933->g_31
        {0x7DD9AE65L,0x7DD9AE65L,0x7DD9AE65L,0x7DD9AE65L,0x7DD9AE65L,0x7DD9AE65L,0x7DD9AE65L,0x7DD9AE65L}, // p_933->g_32
        1L, // p_933->g_33
        {{0x12L},{0x12L},{0x12L}}, // p_933->g_59
        0x7C2B42D2L, // p_933->g_63
        7L, // p_933->g_80
        &p_933->g_80, // p_933->g_82
        {0x5EE7B07E043BC77BL}, // p_933->g_91
        9UL, // p_933->g_92
        &p_933->g_80, // p_933->g_94
        &p_933->g_94, // p_933->g_93
        {0x28L}, // p_933->g_110
        {1L}, // p_933->g_112
        255UL, // p_933->g_114
        (-1L), // p_933->g_151
        {{{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L}},{{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L}},{{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L}},{{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L}},{{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L}},{{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L},{0L,0x28L,(-1L),7L}}}, // p_933->g_157
        5UL, // p_933->g_166
        7L, // p_933->g_176
        {{{4294967295UL,4294967288UL,0xF9293DCFL,4294967295UL,4294967288UL,4294967295UL,0xF9293DCFL}},{{4294967295UL,4294967288UL,0xF9293DCFL,4294967295UL,4294967288UL,4294967295UL,0xF9293DCFL}},{{4294967295UL,4294967288UL,0xF9293DCFL,4294967295UL,4294967288UL,4294967295UL,0xF9293DCFL}},{{4294967295UL,4294967288UL,0xF9293DCFL,4294967295UL,4294967288UL,4294967295UL,0xF9293DCFL}},{{4294967295UL,4294967288UL,0xF9293DCFL,4294967295UL,4294967288UL,4294967295UL,0xF9293DCFL}},{{4294967295UL,4294967288UL,0xF9293DCFL,4294967295UL,4294967288UL,4294967295UL,0xF9293DCFL}},{{4294967295UL,4294967288UL,0xF9293DCFL,4294967295UL,4294967288UL,4294967295UL,0xF9293DCFL}},{{4294967295UL,4294967288UL,0xF9293DCFL,4294967295UL,4294967288UL,4294967295UL,0xF9293DCFL}}}, // p_933->g_183
        7UL, // p_933->g_199
        {6L}, // p_933->g_203
        9UL, // p_933->g_207
        {0x46F2L,0x46F2L,0x46F2L,0x46F2L}, // p_933->g_221
        {{{0x82F1L},{0x82F1L},{0x82F1L},{0x82F1L},{0x82F1L},{0x82F1L}},{{0x82F1L},{0x82F1L},{0x82F1L},{0x82F1L},{0x82F1L},{0x82F1L}},{{0x82F1L},{0x82F1L},{0x82F1L},{0x82F1L},{0x82F1L},{0x82F1L}},{{0x82F1L},{0x82F1L},{0x82F1L},{0x82F1L},{0x82F1L},{0x82F1L}},{{0x82F1L},{0x82F1L},{0x82F1L},{0x82F1L},{0x82F1L},{0x82F1L}},{{0x82F1L},{0x82F1L},{0x82F1L},{0x82F1L},{0x82F1L},{0x82F1L}},{{0x82F1L},{0x82F1L},{0x82F1L},{0x82F1L},{0x82F1L},{0x82F1L}},{{0x82F1L},{0x82F1L},{0x82F1L},{0x82F1L},{0x82F1L},{0x82F1L}}}, // p_933->g_264
        0x77L, // p_933->g_324
        5UL, // p_933->g_328
        {0x473A6E8ACB7A4CBBL}, // p_933->g_334
        (void*)0, // p_933->g_337
        {18446744073709551610UL,18446744073709551610UL,18446744073709551610UL,18446744073709551610UL,18446744073709551610UL,18446744073709551610UL,18446744073709551610UL}, // p_933->g_346
        0x1164L, // p_933->g_359
        1L, // p_933->g_375
        {&p_933->g_151,&p_933->g_151,&p_933->g_151,&p_933->g_151,&p_933->g_151}, // p_933->g_391
        {{{&p_933->g_391[2],&p_933->g_391[1],(void*)0,&p_933->g_391[4],&p_933->g_391[1],&p_933->g_391[1],(void*)0,&p_933->g_391[3],&p_933->g_391[0]},{&p_933->g_391[2],&p_933->g_391[1],(void*)0,&p_933->g_391[4],&p_933->g_391[1],&p_933->g_391[1],(void*)0,&p_933->g_391[3],&p_933->g_391[0]},{&p_933->g_391[2],&p_933->g_391[1],(void*)0,&p_933->g_391[4],&p_933->g_391[1],&p_933->g_391[1],(void*)0,&p_933->g_391[3],&p_933->g_391[0]},{&p_933->g_391[2],&p_933->g_391[1],(void*)0,&p_933->g_391[4],&p_933->g_391[1],&p_933->g_391[1],(void*)0,&p_933->g_391[3],&p_933->g_391[0]},{&p_933->g_391[2],&p_933->g_391[1],(void*)0,&p_933->g_391[4],&p_933->g_391[1],&p_933->g_391[1],(void*)0,&p_933->g_391[3],&p_933->g_391[0]},{&p_933->g_391[2],&p_933->g_391[1],(void*)0,&p_933->g_391[4],&p_933->g_391[1],&p_933->g_391[1],(void*)0,&p_933->g_391[3],&p_933->g_391[0]},{&p_933->g_391[2],&p_933->g_391[1],(void*)0,&p_933->g_391[4],&p_933->g_391[1],&p_933->g_391[1],(void*)0,&p_933->g_391[3],&p_933->g_391[0]},{&p_933->g_391[2],&p_933->g_391[1],(void*)0,&p_933->g_391[4],&p_933->g_391[1],&p_933->g_391[1],(void*)0,&p_933->g_391[3],&p_933->g_391[0]}}}, // p_933->g_390
        &p_933->g_390[0][3][6], // p_933->g_389
        {0x6698EA5CE660AFEDL}, // p_933->g_402
        0x6BL, // p_933->g_409
        {0x5BC5B65ADA84E9EAL}, // p_933->g_424
        {&p_933->g_2,(void*)0,&p_933->g_2,&p_933->g_2,(void*)0,&p_933->g_2,&p_933->g_2,(void*)0}, // p_933->g_433
        &p_933->g_433[3], // p_933->g_432
        (void*)0, // p_933->g_443
        {{&p_933->g_110,&p_933->g_110},{&p_933->g_110,&p_933->g_110},{&p_933->g_110,&p_933->g_110},{&p_933->g_110,&p_933->g_110},{&p_933->g_110,&p_933->g_110}}, // p_933->g_445
        &p_933->g_445[0][0], // p_933->g_444
        0x77BBA038L, // p_933->g_457
        (void*)0, // p_933->g_471
        &p_933->g_471, // p_933->g_470
        (-9L), // p_933->g_546
        0x720D3495L, // p_933->g_564
        0x352FL, // p_933->g_570
        0x0B4EL, // p_933->g_592
        {0x56F84280FA954BBAL}, // p_933->g_612
        &p_933->g_63, // p_933->g_638
        0x560BE0221A68CD44L, // p_933->g_677
        {2L}, // p_933->g_683
        &p_933->g_207, // p_933->g_742
        0x7E339FE0AF9D033FL, // p_933->g_763
        &p_933->g_564, // p_933->g_784
        (void*)0, // p_933->g_798
        {{{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L}},{{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L}},{{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L}},{{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L}},{{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L}},{{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L}},{{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L}},{{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L},{0x56BC25B2L,0x56BC25B2L,(-8L),0x1392E5B0L}}}, // p_933->g_916
        sequence_input[get_global_id(0)], // p_933->global_0_offset
        sequence_input[get_global_id(1)], // p_933->global_1_offset
        sequence_input[get_global_id(2)], // p_933->global_2_offset
        sequence_input[get_local_id(0)], // p_933->local_0_offset
        sequence_input[get_local_id(1)], // p_933->local_1_offset
        sequence_input[get_local_id(2)], // p_933->local_2_offset
        sequence_input[get_group_id(0)], // p_933->group_0_offset
        sequence_input[get_group_id(1)], // p_933->group_1_offset
        sequence_input[get_group_id(2)], // p_933->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_934 = c_935;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_933);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_933->g_2, "p_933->g_2", print_hash_value);
    transparent_crc(p_933->g_5, "p_933->g_5", print_hash_value);
    transparent_crc(p_933->g_16, "p_933->g_16", print_hash_value);
    transparent_crc(p_933->g_28, "p_933->g_28", print_hash_value);
    transparent_crc(p_933->g_31, "p_933->g_31", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_933->g_32[i], "p_933->g_32[i]", print_hash_value);

    }
    transparent_crc(p_933->g_33, "p_933->g_33", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_933->g_59[i][j], "p_933->g_59[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_933->g_63, "p_933->g_63", print_hash_value);
    transparent_crc(p_933->g_80, "p_933->g_80", print_hash_value);
    transparent_crc(p_933->g_91.f0, "p_933->g_91.f0", print_hash_value);
    transparent_crc(p_933->g_92, "p_933->g_92", print_hash_value);
    transparent_crc(p_933->g_110.f0, "p_933->g_110.f0", print_hash_value);
    transparent_crc(p_933->g_112.f0, "p_933->g_112.f0", print_hash_value);
    transparent_crc(p_933->g_114, "p_933->g_114", print_hash_value);
    transparent_crc(p_933->g_151, "p_933->g_151", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_933->g_157[i][j][k], "p_933->g_157[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_933->g_166, "p_933->g_166", print_hash_value);
    transparent_crc(p_933->g_176, "p_933->g_176", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_933->g_183[i][j][k], "p_933->g_183[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_933->g_199, "p_933->g_199", print_hash_value);
    transparent_crc(p_933->g_203.f0, "p_933->g_203.f0", print_hash_value);
    transparent_crc(p_933->g_207, "p_933->g_207", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_933->g_221[i], "p_933->g_221[i]", print_hash_value);

    }
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_933->g_264[i][j][k], "p_933->g_264[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_933->g_324, "p_933->g_324", print_hash_value);
    transparent_crc(p_933->g_328, "p_933->g_328", print_hash_value);
    transparent_crc(p_933->g_334.f0, "p_933->g_334.f0", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_933->g_346[i], "p_933->g_346[i]", print_hash_value);

    }
    transparent_crc(p_933->g_359, "p_933->g_359", print_hash_value);
    transparent_crc(p_933->g_375, "p_933->g_375", print_hash_value);
    transparent_crc(p_933->g_402.f0, "p_933->g_402.f0", print_hash_value);
    transparent_crc(p_933->g_409, "p_933->g_409", print_hash_value);
    transparent_crc(p_933->g_424.f0, "p_933->g_424.f0", print_hash_value);
    transparent_crc(p_933->g_457, "p_933->g_457", print_hash_value);
    transparent_crc(p_933->g_546, "p_933->g_546", print_hash_value);
    transparent_crc(p_933->g_564, "p_933->g_564", print_hash_value);
    transparent_crc(p_933->g_570, "p_933->g_570", print_hash_value);
    transparent_crc(p_933->g_592, "p_933->g_592", print_hash_value);
    transparent_crc(p_933->g_612.f0, "p_933->g_612.f0", print_hash_value);
    transparent_crc(p_933->g_677, "p_933->g_677", print_hash_value);
    transparent_crc(p_933->g_683.f0, "p_933->g_683.f0", print_hash_value);
    transparent_crc(p_933->g_763, "p_933->g_763", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_933->g_916[i][j][k], "p_933->g_916[i][j][k]", print_hash_value);

            }
        }
    }
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 68; i++)
            transparent_crc(p_933->g_special_values[i + 68 * get_linear_group_id()], "p_933->g_special_values[i + 68 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 68; i++)
            transparent_crc(p_933->l_special_values[i], "p_933->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
