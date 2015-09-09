// --atomics 85 ---fake_divergence -g 88,2,20 -l 2,2,5
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


// Seed: 58

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int64_t  f0;
   uint64_t  f1;
   uint16_t  f2;
   int64_t  f3;
   uint64_t  f4;
   int32_t  f5;
   volatile uint16_t  f6;
};

struct S1 {
   volatile uint64_t  f0;
   volatile int32_t  f1;
   int32_t  f2;
   int8_t  f3;
};

struct S2 {
   volatile int64_t  f0;
   uint32_t  f1;
   int64_t  f2;
   int64_t  f3;
   volatile int8_t  f4;
   volatile int8_t  f5;
   int32_t  f6;
   int32_t  f7;
   uint64_t  f8;
};

struct S3 {
   struct S1  f0;
   volatile int8_t  f1;
   int32_t  f2;
};

struct S4 {
   uint32_t  f0;
   struct S3  f1;
   volatile uint16_t  f2;
   struct S0  f3;
};

struct S5 {
   uint16_t  f0;
   int64_t  f1;
   struct S2  f2;
   int16_t  f3;
   volatile uint8_t  f4;
   struct S1  f5;
   uint64_t  f6;
   struct S3  f7;
   struct S0  f8;
};

union U6 {
   struct S0  f0;
   volatile uint8_t  f1;
};

struct S7 {
    uint32_t g_7;
    uint8_t g_10;
    uint8_t g_17;
    uint8_t *g_16;
    int16_t g_41;
    uint64_t g_44;
    int32_t g_63[3];
    int32_t g_65;
    uint8_t g_73;
    int8_t g_81;
    uint64_t g_96[8];
    int32_t g_97;
    int16_t g_113;
    volatile struct S4 g_119[3][10];
    int64_t g_121;
    int32_t g_122;
    struct S2 g_128;
    struct S2 * volatile g_129;
    struct S4 g_132;
    struct S4 ** volatile g_133;
    struct S5 g_136;
    struct S5 * volatile g_137;
    int32_t ** volatile g_139[9];
    int32_t *g_141;
    int32_t ** volatile g_140;
    struct S1 * volatile g_144;
    struct S1 g_145;
    uint64_t *g_246;
    int32_t ** volatile g_266;
    struct S3 g_290;
    volatile struct S5 g_296;
    uint32_t g_307[10][5];
    volatile struct S5 g_341[4][3][4];
    struct S4 ** volatile * volatile g_392[4][7];
    struct S4 ** volatile * volatile g_393;
    uint64_t **g_433;
    uint64_t ***g_432;
    struct S4 *g_445;
    struct S4 **g_444;
    struct S4 ***g_443;
    volatile union U6 g_449;
    struct S2 ** volatile g_461;
    struct S2 *g_463;
    struct S2 ** volatile g_462;
    volatile int8_t g_470;
    volatile struct S1 g_475[3];
    struct S0 g_506;
    int32_t ** volatile g_511[3][5];
    struct S0 g_515;
    struct S0 g_516;
    int32_t ** volatile g_520[9];
    int32_t ** volatile g_521;
    int32_t ** volatile g_531;
    int32_t ** volatile g_532;
    struct S3 g_550[9][3][5];
    struct S3 * volatile g_551[9];
    struct S3 * volatile g_552;
    int32_t ** volatile g_566;
    int32_t * volatile g_568;
    uint8_t **g_571;
    uint8_t *** volatile g_570;
    uint32_t g_587;
    uint32_t g_610;
    int32_t g_614;
    struct S1 g_622;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
};


/* --- FORWARD DECLARATIONS --- */
uint32_t  func_1(struct S7 * p_692);
int32_t  func_2(uint8_t  p_3, int32_t  p_4, uint64_t  p_5, int16_t  p_6, struct S7 * p_692);
uint8_t  func_14(uint8_t * p_15, struct S7 * p_692);
uint8_t ** func_18(uint16_t  p_19, uint8_t ** p_20, int64_t  p_21, int64_t  p_22, uint8_t ** p_23, struct S7 * p_692);
uint16_t  func_31(uint64_t  p_32, int32_t  p_33, struct S7 * p_692);
int8_t  func_34(uint8_t * p_35, uint16_t  p_36, uint64_t  p_37, struct S7 * p_692);
int32_t  func_49(uint64_t * p_50, uint64_t * p_51, struct S7 * p_692);
uint64_t * func_52(uint32_t  p_53, int32_t  p_54, int64_t  p_55, uint64_t  p_56, struct S7 * p_692);
int16_t  func_59(uint8_t ** p_60, struct S7 * p_692);
uint8_t  func_85(int32_t  p_86, int32_t  p_87, int32_t  p_88, uint64_t  p_89, uint8_t * p_90, struct S7 * p_692);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_692->g_7 p_692->g_16 p_692->g_41 p_692->g_63 p_692->g_65 p_692->g_73 p_692->g_17 p_692->g_81 p_692->g_119 p_692->g_122 p_692->g_128 p_692->g_129 p_692->g_136 p_692->g_137 p_692->g_140 p_692->g_44 p_692->g_132.f1.f2 p_692->g_141 p_692->g_97 p_692->g_266 p_692->g_132.f0 p_692->g_290 p_692->g_132.f3.f2 p_692->g_296 p_692->g_96 p_692->g_307 p_692->g_341 p_692->g_133 p_692->g_393 p_692->g_132.f1 p_692->g_432 p_692->g_443 p_692->g_449 p_692->g_462 p_692->g_475 p_692->g_449.f0.f2 p_692->g_113 p_692->g_506.f1 p_692->g_515 p_692->g_506.f4 p_692->g_521 p_692->g_532 p_692->g_506.f5 p_692->g_132.f3.f3 p_692->g_132.f2 p_692->g_550 p_692->g_552 p_692->g_433 p_692->g_246 p_692->g_132.f3.f1 p_692->g_568 p_692->g_570 p_692->g_587 p_692->g_506.f2 p_692->g_610 p_692->g_614
 * writes: p_692->g_10 p_692->g_41 p_692->g_44 p_692->g_17 p_692->g_63 p_692->g_65 p_692->g_73 p_692->g_81 p_692->g_96 p_692->g_97 p_692->g_113 p_692->g_121 p_692->g_122 p_692->g_128 p_692->g_136 p_692->g_141 p_692->g_132.f1.f0.f2 p_692->g_145 p_692->g_139 p_692->g_246 p_692->g_132.f0 p_692->g_307 p_692->g_132.f3.f2 p_692->g_290.f2 p_692->g_132.f1.f0.f3 p_692->g_133 p_692->g_443 p_692->g_463 p_692->g_296.f7.f0 p_692->g_506.f1 p_692->g_516 p_692->g_506.f4 p_692->g_506.f5 p_692->g_132.f3 p_692->g_290 p_692->g_515.f1 p_692->g_571 p_692->g_587 p_692->g_610 p_692->g_614
 */
uint32_t  func_1(struct S7 * p_692)
{ /* block id: 4 */
    uint8_t *l_8 = (void*)0;
    uint8_t *l_9 = &p_692->g_10;
    int32_t l_11 = 0x1A652065L;
    uint16_t *l_594 = &p_692->g_132.f3.f2;
    int32_t *l_613 = &p_692->g_614;
    int32_t *l_621 = &p_692->g_63[1];
    int32_t l_642 = 0x465465ADL;
    int16_t l_650 = 0x3784L;
    int8_t l_651[4][5][2] = {{{0x7EL,0x2CL},{0x7EL,0x2CL},{0x7EL,0x2CL},{0x7EL,0x2CL},{0x7EL,0x2CL}},{{0x7EL,0x2CL},{0x7EL,0x2CL},{0x7EL,0x2CL},{0x7EL,0x2CL},{0x7EL,0x2CL}},{{0x7EL,0x2CL},{0x7EL,0x2CL},{0x7EL,0x2CL},{0x7EL,0x2CL},{0x7EL,0x2CL}},{{0x7EL,0x2CL},{0x7EL,0x2CL},{0x7EL,0x2CL},{0x7EL,0x2CL},{0x7EL,0x2CL}}};
    int64_t *l_673 = &p_692->g_121;
    struct S1 *l_681 = &p_692->g_290.f0;
    int8_t *l_682 = &p_692->g_132.f1.f0.f3;
    int32_t *l_689 = (void*)0;
    int32_t *l_690[3][3][8] = {{{&p_692->g_290.f2,&p_692->g_65,&p_692->g_65,&p_692->g_290.f2,&p_692->g_614,&p_692->g_97,&p_692->g_97,&p_692->g_614},{&p_692->g_290.f2,&p_692->g_65,&p_692->g_65,&p_692->g_290.f2,&p_692->g_614,&p_692->g_97,&p_692->g_97,&p_692->g_614},{&p_692->g_290.f2,&p_692->g_65,&p_692->g_65,&p_692->g_290.f2,&p_692->g_614,&p_692->g_97,&p_692->g_97,&p_692->g_614}},{{&p_692->g_290.f2,&p_692->g_65,&p_692->g_65,&p_692->g_290.f2,&p_692->g_614,&p_692->g_97,&p_692->g_97,&p_692->g_614},{&p_692->g_290.f2,&p_692->g_65,&p_692->g_65,&p_692->g_290.f2,&p_692->g_614,&p_692->g_97,&p_692->g_97,&p_692->g_614},{&p_692->g_290.f2,&p_692->g_65,&p_692->g_65,&p_692->g_290.f2,&p_692->g_614,&p_692->g_97,&p_692->g_97,&p_692->g_614}},{{&p_692->g_290.f2,&p_692->g_65,&p_692->g_65,&p_692->g_290.f2,&p_692->g_614,&p_692->g_97,&p_692->g_97,&p_692->g_614},{&p_692->g_290.f2,&p_692->g_65,&p_692->g_65,&p_692->g_290.f2,&p_692->g_614,&p_692->g_97,&p_692->g_97,&p_692->g_614},{&p_692->g_290.f2,&p_692->g_65,&p_692->g_65,&p_692->g_290.f2,&p_692->g_614,&p_692->g_97,&p_692->g_97,&p_692->g_614}}};
    uint8_t l_691 = 4UL;
    int i, j, k;
    (*l_613) |= func_2(((*l_9) = p_692->g_7), l_11, (((l_11 , (safe_lshift_func_uint8_t_u_s((func_14(p_692->g_16, p_692) <= (-1L)), 0))) || (4294967292UL >= (((p_692->g_136.f2.f4 || (((*l_594) = ((-6L) == p_692->g_7)) && l_11)) < l_11) <= l_11))) < p_692->g_515.f2), p_692->g_506.f2, p_692);
    for (p_692->g_132.f1.f0.f3 = 2; (p_692->g_132.f1.f0.f3 >= 0); p_692->g_132.f1.f0.f3 -= 1)
    { /* block id: 362 */
        uint32_t l_632 = 0x9A6B4043L;
        int32_t l_649[2];
        struct S4 ****l_674[7] = {&p_692->g_443,&p_692->g_443,&p_692->g_443,&p_692->g_443,&p_692->g_443,&p_692->g_443,&p_692->g_443};
        int i;
        for (i = 0; i < 2; i++)
            l_649[i] = 0L;
        (1 + 1);
    }
    l_691 &= (~(safe_add_func_uint64_t_u_u((((safe_rshift_func_uint8_t_u_s(FAKE_DIVERGE(p_692->local_0_offset, get_local_id(0), 10), (l_681 == (void*)0))) , (FAKE_DIVERGE(p_692->group_2_offset, get_group_id(2), 10) , (*p_692->g_16))) >= p_692->g_296.f7.f0.f2), (((*p_692->g_16) , ((((*l_682) = 0x5BL) , ((safe_mul_func_int16_t_s_s(p_692->g_550[4][0][4].f0.f2, (*l_613))) != (safe_lshift_func_uint8_t_u_s(((safe_rshift_func_int16_t_s_u(1L, 4)) > (*p_692->g_16)), (*l_621))))) , (*l_621))) , 0xB531E9495ADB64AEL))));
    return (*l_621);
}


/* ------------------------------------------ */
/* 
 * reads : p_692->g_296.f2.f6 p_692->g_610
 * writes: p_692->g_122 p_692->g_610
 */
int32_t  func_2(uint8_t  p_3, int32_t  p_4, uint64_t  p_5, int16_t  p_6, struct S7 * p_692)
{ /* block id: 352 */
    uint64_t ****l_597[4] = {&p_692->g_432,&p_692->g_432,&p_692->g_432,&p_692->g_432};
    uint64_t ***l_602[1][10][5] = {{{&p_692->g_433,&p_692->g_433,&p_692->g_433,&p_692->g_433,&p_692->g_433},{&p_692->g_433,&p_692->g_433,&p_692->g_433,&p_692->g_433,&p_692->g_433},{&p_692->g_433,&p_692->g_433,&p_692->g_433,&p_692->g_433,&p_692->g_433},{&p_692->g_433,&p_692->g_433,&p_692->g_433,&p_692->g_433,&p_692->g_433},{&p_692->g_433,&p_692->g_433,&p_692->g_433,&p_692->g_433,&p_692->g_433},{&p_692->g_433,&p_692->g_433,&p_692->g_433,&p_692->g_433,&p_692->g_433},{&p_692->g_433,&p_692->g_433,&p_692->g_433,&p_692->g_433,&p_692->g_433},{&p_692->g_433,&p_692->g_433,&p_692->g_433,&p_692->g_433,&p_692->g_433},{&p_692->g_433,&p_692->g_433,&p_692->g_433,&p_692->g_433,&p_692->g_433},{&p_692->g_433,&p_692->g_433,&p_692->g_433,&p_692->g_433,&p_692->g_433}}};
    int32_t *l_603 = &p_692->g_122;
    struct S3 * volatile *l_605 = &p_692->g_551[7];
    struct S3 * volatile **l_604 = &l_605;
    int32_t *l_606[8][10] = {{&p_692->g_290.f2,&p_692->g_63[1],&p_692->g_290.f2,&p_692->g_290.f2,&p_692->g_63[1],&p_692->g_290.f2,&p_692->g_290.f2,&p_692->g_63[1],&p_692->g_290.f2,&p_692->g_290.f2},{&p_692->g_290.f2,&p_692->g_63[1],&p_692->g_290.f2,&p_692->g_290.f2,&p_692->g_63[1],&p_692->g_290.f2,&p_692->g_290.f2,&p_692->g_63[1],&p_692->g_290.f2,&p_692->g_290.f2},{&p_692->g_290.f2,&p_692->g_63[1],&p_692->g_290.f2,&p_692->g_290.f2,&p_692->g_63[1],&p_692->g_290.f2,&p_692->g_290.f2,&p_692->g_63[1],&p_692->g_290.f2,&p_692->g_290.f2},{&p_692->g_290.f2,&p_692->g_63[1],&p_692->g_290.f2,&p_692->g_290.f2,&p_692->g_63[1],&p_692->g_290.f2,&p_692->g_290.f2,&p_692->g_63[1],&p_692->g_290.f2,&p_692->g_290.f2},{&p_692->g_290.f2,&p_692->g_63[1],&p_692->g_290.f2,&p_692->g_290.f2,&p_692->g_63[1],&p_692->g_290.f2,&p_692->g_290.f2,&p_692->g_63[1],&p_692->g_290.f2,&p_692->g_290.f2},{&p_692->g_290.f2,&p_692->g_63[1],&p_692->g_290.f2,&p_692->g_290.f2,&p_692->g_63[1],&p_692->g_290.f2,&p_692->g_290.f2,&p_692->g_63[1],&p_692->g_290.f2,&p_692->g_290.f2},{&p_692->g_290.f2,&p_692->g_63[1],&p_692->g_290.f2,&p_692->g_290.f2,&p_692->g_63[1],&p_692->g_290.f2,&p_692->g_290.f2,&p_692->g_63[1],&p_692->g_290.f2,&p_692->g_290.f2},{&p_692->g_290.f2,&p_692->g_63[1],&p_692->g_290.f2,&p_692->g_290.f2,&p_692->g_63[1],&p_692->g_290.f2,&p_692->g_290.f2,&p_692->g_63[1],&p_692->g_290.f2,&p_692->g_290.f2}};
    int8_t l_607 = 0x16L;
    int8_t l_608 = 0x7EL;
    int32_t l_609 = 0x1FF3E067L;
    int i, j, k;
    p_4 &= (((safe_mod_func_uint32_t_u_u(p_3, 1L)) < ((l_597[2] != l_597[2]) && (~p_692->g_296.f2.f6))) || (safe_sub_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_s(GROUP_DIVERGE(1, 1), p_5)), ((l_602[0][9][0] = &p_692->g_433) == &p_692->g_433))));
    (*l_603) = 0x54BB2928L;
    (*l_604) = &p_692->g_552;
    p_692->g_610--;
    return p_3;
}


/* ------------------------------------------ */
/* 
 * reads : p_692->g_41 p_692->g_63 p_692->g_65 p_692->g_73 p_692->g_7 p_692->g_17 p_692->g_81 p_692->g_119 p_692->g_16 p_692->g_122 p_692->g_128 p_692->g_129 p_692->g_136 p_692->g_137 p_692->g_140 p_692->g_44 p_692->g_132.f1.f2 p_692->g_141 p_692->g_97 p_692->g_266 p_692->g_132.f0 p_692->g_290 p_692->g_132.f3.f2 p_692->g_296 p_692->g_96 p_692->g_307 p_692->g_341 p_692->g_133 p_692->g_393 p_692->g_132.f1 p_692->g_432 p_692->g_443 p_692->g_449 p_692->g_462 p_692->g_475 p_692->g_449.f0.f2 p_692->g_113 p_692->g_506.f1 p_692->g_515 p_692->g_506.f4 p_692->g_521 p_692->g_532 p_692->g_506.f5 p_692->g_132.f3.f3 p_692->g_132.f2 p_692->g_550 p_692->g_552 p_692->g_433 p_692->g_246 p_692->g_132.f3.f1 p_692->g_568 p_692->g_570 p_692->g_587
 * writes: p_692->g_41 p_692->g_44 p_692->g_17 p_692->g_63 p_692->g_65 p_692->g_73 p_692->g_81 p_692->g_96 p_692->g_97 p_692->g_113 p_692->g_121 p_692->g_122 p_692->g_128 p_692->g_136 p_692->g_141 p_692->g_132.f1.f0.f2 p_692->g_145 p_692->g_139 p_692->g_246 p_692->g_132.f0 p_692->g_307 p_692->g_132.f3.f2 p_692->g_290.f2 p_692->g_132.f1.f0.f3 p_692->g_133 p_692->g_443 p_692->g_463 p_692->g_296.f7.f0 p_692->g_506.f1 p_692->g_516 p_692->g_506.f4 p_692->g_506.f5 p_692->g_132.f3 p_692->g_290 p_692->g_515.f1 p_692->g_571 p_692->g_587
 */
uint8_t  func_14(uint8_t * p_15, struct S7 * p_692)
{ /* block id: 6 */
    uint32_t l_24[4][1] = {{4294967292UL},{4294967292UL},{4294967292UL},{4294967292UL}};
    uint8_t *l_38[7][1][8] = {{{&p_692->g_17,&p_692->g_17,&p_692->g_17,&p_692->g_17,(void*)0,&p_692->g_17,&p_692->g_17,&p_692->g_17}},{{&p_692->g_17,&p_692->g_17,&p_692->g_17,&p_692->g_17,(void*)0,&p_692->g_17,&p_692->g_17,&p_692->g_17}},{{&p_692->g_17,&p_692->g_17,&p_692->g_17,&p_692->g_17,(void*)0,&p_692->g_17,&p_692->g_17,&p_692->g_17}},{{&p_692->g_17,&p_692->g_17,&p_692->g_17,&p_692->g_17,(void*)0,&p_692->g_17,&p_692->g_17,&p_692->g_17}},{{&p_692->g_17,&p_692->g_17,&p_692->g_17,&p_692->g_17,(void*)0,&p_692->g_17,&p_692->g_17,&p_692->g_17}},{{&p_692->g_17,&p_692->g_17,&p_692->g_17,&p_692->g_17,(void*)0,&p_692->g_17,&p_692->g_17,&p_692->g_17}},{{&p_692->g_17,&p_692->g_17,&p_692->g_17,&p_692->g_17,(void*)0,&p_692->g_17,&p_692->g_17,&p_692->g_17}}};
    int16_t *l_39 = (void*)0;
    int16_t *l_40[1];
    int32_t l_42 = 0L;
    uint64_t *l_43 = &p_692->g_44;
    int8_t *l_323[9][10] = {{&p_692->g_132.f1.f0.f3,(void*)0,&p_692->g_132.f1.f0.f3,&p_692->g_132.f1.f0.f3,(void*)0,&p_692->g_132.f1.f0.f3,&p_692->g_132.f1.f0.f3,(void*)0,&p_692->g_136.f7.f0.f3,&p_692->g_290.f0.f3},{&p_692->g_132.f1.f0.f3,(void*)0,&p_692->g_132.f1.f0.f3,&p_692->g_132.f1.f0.f3,(void*)0,&p_692->g_132.f1.f0.f3,&p_692->g_132.f1.f0.f3,(void*)0,&p_692->g_136.f7.f0.f3,&p_692->g_290.f0.f3},{&p_692->g_132.f1.f0.f3,(void*)0,&p_692->g_132.f1.f0.f3,&p_692->g_132.f1.f0.f3,(void*)0,&p_692->g_132.f1.f0.f3,&p_692->g_132.f1.f0.f3,(void*)0,&p_692->g_136.f7.f0.f3,&p_692->g_290.f0.f3},{&p_692->g_132.f1.f0.f3,(void*)0,&p_692->g_132.f1.f0.f3,&p_692->g_132.f1.f0.f3,(void*)0,&p_692->g_132.f1.f0.f3,&p_692->g_132.f1.f0.f3,(void*)0,&p_692->g_136.f7.f0.f3,&p_692->g_290.f0.f3},{&p_692->g_132.f1.f0.f3,(void*)0,&p_692->g_132.f1.f0.f3,&p_692->g_132.f1.f0.f3,(void*)0,&p_692->g_132.f1.f0.f3,&p_692->g_132.f1.f0.f3,(void*)0,&p_692->g_136.f7.f0.f3,&p_692->g_290.f0.f3},{&p_692->g_132.f1.f0.f3,(void*)0,&p_692->g_132.f1.f0.f3,&p_692->g_132.f1.f0.f3,(void*)0,&p_692->g_132.f1.f0.f3,&p_692->g_132.f1.f0.f3,(void*)0,&p_692->g_136.f7.f0.f3,&p_692->g_290.f0.f3},{&p_692->g_132.f1.f0.f3,(void*)0,&p_692->g_132.f1.f0.f3,&p_692->g_132.f1.f0.f3,(void*)0,&p_692->g_132.f1.f0.f3,&p_692->g_132.f1.f0.f3,(void*)0,&p_692->g_136.f7.f0.f3,&p_692->g_290.f0.f3},{&p_692->g_132.f1.f0.f3,(void*)0,&p_692->g_132.f1.f0.f3,&p_692->g_132.f1.f0.f3,(void*)0,&p_692->g_132.f1.f0.f3,&p_692->g_132.f1.f0.f3,(void*)0,&p_692->g_136.f7.f0.f3,&p_692->g_290.f0.f3},{&p_692->g_132.f1.f0.f3,(void*)0,&p_692->g_132.f1.f0.f3,&p_692->g_132.f1.f0.f3,(void*)0,&p_692->g_132.f1.f0.f3,&p_692->g_132.f1.f0.f3,(void*)0,&p_692->g_136.f7.f0.f3,&p_692->g_290.f0.f3}};
    int32_t l_324 = 0x70F655A4L;
    uint16_t l_591 = 65529UL;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_40[i] = &p_692->g_41;
    (*p_692->g_570) = func_18(l_24[1][0], &p_692->g_16, (~(safe_mod_func_uint8_t_u_u((l_24[1][0] != (safe_add_func_uint32_t_u_u(((safe_add_func_int16_t_s_s((func_31(((l_324 = func_34(p_15, l_24[2][0], ((*l_43) = ((l_42 &= (p_692->g_41 |= ((void*)0 == l_38[5][0][1]))) & ((l_24[1][0] > l_24[1][0]) >= l_24[2][0]))), p_692)) & l_24[1][0]), l_24[2][0], p_692) , l_24[1][0]), GROUP_DIVERGE(0, 1))) != 0x7E30BE2282FED734L), l_24[0][0]))), (-8L)))), l_24[1][0], &l_38[3][0][1], p_692);
    for (p_692->g_128.f1 = 0; (p_692->g_128.f1 == 52); p_692->g_128.f1 = safe_add_func_uint8_t_u_u(p_692->g_128.f1, 3))
    { /* block id: 342 */
        int32_t *l_574[6];
        uint32_t *l_585 = &p_692->g_132.f0;
        uint32_t *l_586[3];
        uint16_t *l_590 = &p_692->g_136.f8.f2;
        uint64_t ***l_592[6][3][9] = {{{&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,(void*)0},{&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,(void*)0},{&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,(void*)0}},{{&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,(void*)0},{&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,(void*)0},{&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,(void*)0}},{{&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,(void*)0},{&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,(void*)0},{&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,(void*)0}},{{&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,(void*)0},{&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,(void*)0},{&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,(void*)0}},{{&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,(void*)0},{&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,(void*)0},{&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,(void*)0}},{{&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,(void*)0},{&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,(void*)0},{&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,&p_692->g_433,&p_692->g_433,(void*)0,(void*)0}}};
        int64_t *l_593 = &p_692->g_516.f3;
        int i, j, k;
        for (i = 0; i < 6; i++)
            l_574[i] = (void*)0;
        for (i = 0; i < 3; i++)
            l_586[i] = &p_692->g_587;
        l_324 |= 0x6BE80E1EL;
        l_42 &= (safe_lshift_func_uint8_t_u_u(((((safe_rshift_func_uint16_t_u_s((2UL | (l_24[1][0] < ((*l_593) = (((safe_rshift_func_int8_t_s_u((&p_692->g_433 != ((safe_mod_func_int16_t_s_s((((*l_590) &= (safe_add_func_uint32_t_u_u(((*l_585) = p_692->g_113), (++p_692->g_587)))) ^ p_692->g_290.f0.f1), l_591)) , &p_692->g_433)), 3)) , l_592[3][1][4]) == l_592[3][1][4])))), l_24[1][0])) == l_591) , 0xD5L) != p_692->g_132.f3.f2), 6));
    }
    return (*p_15);
}


/* ------------------------------------------ */
/* 
 * reads : p_692->g_568 p_692->g_63
 * writes: p_692->g_63
 */
uint8_t ** func_18(uint16_t  p_19, uint8_t ** p_20, int64_t  p_21, int64_t  p_22, uint8_t ** p_23, struct S7 * p_692)
{ /* block id: 335 */
    uint32_t l_567[5] = {4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL};
    uint8_t **l_569 = &p_692->g_16;
    int i;
    (*p_692->g_568) |= (l_567[0] = p_22);
    return l_569;
}


/* ------------------------------------------ */
/* 
 * reads : p_692->g_136.f2.f8 p_692->g_96 p_692->g_307 p_692->g_16 p_692->g_17 p_692->g_128.f6 p_692->g_341 p_692->g_136.f5.f1 p_692->g_136.f7.f2 p_692->g_128.f2 p_692->g_136.f1 p_692->g_119.f3 p_692->g_63 p_692->g_290.f2 p_692->g_65 p_692->g_132.f0 p_692->g_133 p_692->g_393 p_692->g_132.f1 p_692->g_119.f1.f1 p_692->g_432 p_692->g_443 p_692->g_449 p_692->g_136.f8.f3 p_692->g_462 p_692->g_475 p_692->g_449.f0.f2 p_692->g_113 p_692->g_41 p_692->g_128.f3 p_692->g_97 p_692->g_506.f1 p_692->g_515 p_692->g_506.f4 p_692->g_521 p_692->g_128.f8 p_692->g_532 p_692->g_506.f5 p_692->g_296.f8 p_692->g_132.f3.f3 p_692->g_132.f3.f2 p_692->g_132.f2 p_692->g_44 p_692->g_119.f1.f0.f1 p_692->g_550 p_692->g_552 p_692->g_136.f8.f5 p_692->g_296.f2.f2 p_692->g_433 p_692->g_246 p_692->g_73 p_692->g_132.f3.f1 p_692->g_128
 * writes: p_692->g_136.f2.f8 p_692->g_136.f5.f3 p_692->g_136.f5.f2 p_692->g_136.f2.f7 p_692->g_41 p_692->g_290.f2 p_692->g_65 p_692->g_132.f0 p_692->g_132.f1.f0.f3 p_692->g_136.f2.f1 p_692->g_133 p_692->g_141 p_692->g_132.f3.f2 p_692->g_443 p_692->g_463 p_692->g_296.f7.f0 p_692->g_136.f7.f2 p_692->g_97 p_692->g_17 p_692->g_73 p_692->g_121 p_692->g_136.f1 p_692->g_506.f1 p_692->g_516 p_692->g_506.f4 p_692->g_506.f5 p_692->g_132.f3 p_692->g_113 p_692->g_290 p_692->g_136.f8.f5 p_692->g_44 p_692->g_136.f8.f4 p_692->g_515.f1 p_692->g_128
 */
uint16_t  func_31(uint64_t  p_32, int32_t  p_33, struct S7 * p_692)
{ /* block id: 195 */
    int16_t *l_342 = &p_692->g_41;
    int32_t l_345 = (-10L);
    int32_t l_395 = 0x1BCDAE4DL;
    int32_t l_396 = 0x60B0749AL;
    int32_t l_397 = 8L;
    int32_t l_398 = 0L;
    struct S4 *l_416 = &p_692->g_132;
    uint64_t **l_431[10];
    uint64_t ***l_430 = &l_431[6];
    uint64_t l_434 = 0UL;
    uint32_t l_438 = 0x83107AE1L;
    struct S4 ***l_447 = &p_692->g_444;
    struct S1 *l_453 = &p_692->g_136.f7.f0;
    struct S1 **l_452[3];
    int64_t l_503 = 0x720905E86A9352E8L;
    struct S0 *l_505 = &p_692->g_506;
    uint16_t l_508 = 0UL;
    struct S2 *l_535 = &p_692->g_128;
    int32_t *l_559 = &p_692->g_63[0];
    int i;
    for (i = 0; i < 10; i++)
        l_431[i] = &p_692->g_246;
    for (i = 0; i < 3; i++)
        l_452[i] = &l_453;
    for (p_692->g_136.f2.f8 = 0; (p_692->g_136.f2.f8 <= 7); p_692->g_136.f2.f8 += 1)
    { /* block id: 198 */
        int32_t l_343 = (-5L);
        int8_t *l_344 = &p_692->g_136.f5.f3;
        struct S4 *l_351 = &p_692->g_132;
        struct S4 **l_350 = &l_351;
        struct S1 *l_360 = &p_692->g_290.f0;
        uint64_t **l_374[9] = {&p_692->g_246,&p_692->g_246,&p_692->g_246,&p_692->g_246,&p_692->g_246,&p_692->g_246,&p_692->g_246,&p_692->g_246,&p_692->g_246};
        int32_t l_402 = (-2L);
        int i;
        l_345 &= (safe_rshift_func_int16_t_s_s((safe_sub_func_int32_t_s_s(((p_692->g_96[p_692->g_136.f2.f8] || ((*l_344) = ((safe_add_func_int32_t_s_s(((safe_sub_func_int16_t_s_s(p_692->g_307[5][0], (((safe_mod_func_int32_t_s_s((-1L), (safe_div_func_uint8_t_u_u((*p_692->g_16), p_692->g_128.f6)))) ^ (l_343 = ((safe_sub_func_int16_t_s_s(((((0x4DF27FB5L > ((safe_lshift_func_int16_t_s_s((p_32 , ((p_692->g_341[0][0][3] , p_33) == p_33)), p_32)) > p_33)) | GROUP_DIVERGE(0, 1)) , l_342) != (void*)0), 0x6B02L)) , p_692->g_96[p_692->g_136.f2.f8]))) || p_692->g_136.f5.f1))) == p_33), p_692->g_136.f7.f2)) < GROUP_DIVERGE(0, 1)))) && p_692->g_128.f2), GROUP_DIVERGE(1, 1))), p_692->g_96[p_692->g_136.f2.f8]));
        if (p_33)
            continue;
        for (p_692->g_136.f5.f2 = 0; (p_692->g_136.f5.f2 <= 7); p_692->g_136.f5.f2 += 1)
        { /* block id: 205 */
            struct S4 *l_349 = (void*)0;
            struct S4 **l_348 = &l_349;
            uint64_t **l_372 = (void*)0;
            int32_t l_390 = 0x390A7F9BL;
            int32_t **l_408 = &p_692->g_141;
            if (l_345)
                break;
            for (p_692->g_136.f2.f7 = 2; (p_692->g_136.f2.f7 >= 0); p_692->g_136.f2.f7 -= 1)
            { /* block id: 209 */
                int32_t l_389 = 0L;
                int32_t l_401[5][2] = {{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}};
                int i, j;
                if ((((l_345 = (safe_mul_func_int16_t_s_s((l_348 == l_350), (p_692->g_136.f1 >= ((safe_rshift_func_uint8_t_u_u(l_343, (0x37C2L >= (safe_rshift_func_int8_t_s_s((-1L), 5))))) <= ((((safe_rshift_func_int16_t_s_s(((*l_342) = (safe_div_func_uint16_t_u_u(((void*)0 == &p_692->g_73), 0x59D2L))), 10)) & p_32) || p_33) < l_345)))))) & 0x26CBL) , (-1L)))
                { /* block id: 212 */
                    struct S1 **l_361 = &l_360;
                    (*l_361) = l_360;
                }
                else
                { /* block id: 214 */
                    uint64_t ***l_373 = &l_372;
                    int32_t *l_375 = &p_692->g_290.f2;
                    int32_t *l_376 = &p_692->g_65;
                    uint32_t *l_379 = &p_692->g_132.f0;
                    for (p_692->g_136.f5.f3 = 2; (p_692->g_136.f5.f3 <= 7); p_692->g_136.f5.f3 += 1)
                    { /* block id: 217 */
                        if (p_32)
                            break;
                        return p_692->g_136.f2.f8;
                    }
                    (*l_376) &= ((*l_375) &= (p_32 | ((l_345 ^ (safe_add_func_int16_t_s_s((safe_add_func_int64_t_s_s(0L, (p_692->g_119[1][0].f3 , p_692->g_96[p_692->g_136.f2.f8]))), (safe_lshift_func_int16_t_s_u(p_32, ((safe_rshift_func_uint16_t_u_s(p_32, 11)) < (((*l_373) = (p_692->g_63[0] , l_372)) == l_374[8]))))))) == p_692->g_17)));
                    (*l_376) ^= ((safe_mul_func_int16_t_s_s((((((0xD431L | ((*l_375) = p_692->g_96[p_692->g_136.f2.f8])) != 0x1F6CL) || (*l_375)) <= ((*l_379) |= FAKE_DIVERGE(p_692->local_1_offset, get_local_id(1), 10))) != p_33), ((safe_unary_minus_func_int32_t_s((safe_div_func_uint64_t_u_u((((safe_mod_func_int64_t_s_s(p_33, p_692->g_341[0][0][3].f2.f3)) != (((*l_342) = (safe_rshift_func_uint8_t_u_u(((l_345 = ((safe_lshift_func_int16_t_s_s(((l_389 <= p_32) , p_32), 2)) && p_33)) > p_33), p_33))) == l_389)) || l_389), 4UL)))) & l_343))) >= 0x1AL);
                }
                for (p_692->g_290.f2 = 2; (p_692->g_290.f2 >= 0); p_692->g_290.f2 -= 1)
                { /* block id: 232 */
                    int32_t l_399 = 6L;
                    int32_t l_400 = 0x1949C285L;
                    int32_t l_403 = (-1L);
                    int32_t l_404 = (-1L);
                    uint8_t l_405 = 5UL;
                    if (l_390)
                        break;
                    for (p_692->g_132.f1.f0.f3 = 0; (p_692->g_132.f1.f0.f3 <= 2); p_692->g_132.f1.f0.f3 += 1)
                    { /* block id: 236 */
                        int32_t *l_391 = &p_692->g_63[1];
                        l_391 = l_391;
                    }
                    for (p_692->g_136.f2.f1 = 0; (p_692->g_136.f2.f1 <= 2); p_692->g_136.f2.f1 += 1)
                    { /* block id: 241 */
                        int32_t *l_394[3][1];
                        int i, j;
                        for (i = 0; i < 3; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_394[i][j] = &p_692->g_63[1];
                        }
                        if (l_345)
                            break;
                        (*p_692->g_393) = p_692->g_133;
                        l_405--;
                    }
                }
                if (l_401[3][0])
                    break;
            }
            (*l_408) = &l_390;
        }
        if (l_345)
            break;
    }
    if ((!(safe_rshift_func_uint16_t_u_u(p_33, 8))))
    { /* block id: 253 */
        uint64_t l_413[2][8] = {{0xE909CEC6FB6896DBL,0xE909CEC6FB6896DBL,0x6A31024F38A70F43L,3UL,0xD0475A97DBC23F6AL,3UL,0x6A31024F38A70F43L,0xE909CEC6FB6896DBL},{0xE909CEC6FB6896DBL,0xE909CEC6FB6896DBL,0x6A31024F38A70F43L,3UL,0xD0475A97DBC23F6AL,3UL,0x6A31024F38A70F43L,0xE909CEC6FB6896DBL}};
        int32_t l_435 = 0x72D82F55L;
        int8_t l_436 = 0x3BL;
        int32_t *l_437[3];
        int i, j;
        for (i = 0; i < 3; i++)
            l_437[i] = (void*)0;
        l_435 = (safe_div_func_uint64_t_u_u(l_413[0][3], (safe_sub_func_uint8_t_u_u((((void*)0 == l_416) < ((safe_rshift_func_uint16_t_u_s((p_692->g_132.f1 , ((((l_398 , (safe_mod_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_s((safe_unary_minus_func_int64_t_s(((((safe_lshift_func_uint16_t_u_u((p_692->g_119[1][0].f1.f1 >= (p_692->g_132.f3.f2 = (safe_rshift_func_int16_t_s_s((((p_692->g_136.f1 , p_33) < (l_430 != p_692->g_432)) != (-3L)), l_413[0][2])))), 8)) , p_32) || l_398) < (-5L)))), l_434)), p_33))) ^ l_413[0][2]) | 0x5D73L) != p_33)), 2)) , l_395)), p_692->g_136.f2.f8))));
        ++l_438;
    }
    else
    { /* block id: 257 */
        struct S4 ****l_446 = &p_692->g_443;
        int32_t l_448 = 1L;
        struct S1 **l_454[10][5][5] = {{{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0}},{{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0}},{{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0}},{{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0}},{{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0}},{{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0}},{{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0}},{{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0}},{{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0}},{{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0},{&l_453,(void*)0,&l_453,&l_453,(void*)0}}};
        int32_t *l_455 = &l_396;
        int32_t l_471 = 2L;
        uint32_t l_472 = 0UL;
        int16_t *l_485 = &p_692->g_41;
        struct S0 *l_504 = &p_692->g_132.f3;
        int i, j, k;
        if (((((*l_455) = (safe_add_func_uint8_t_u_u((((((*l_446) = p_692->g_443) == l_447) < ((l_448 & p_33) || (0x07L | (((p_692->g_449 , (safe_rshift_func_int16_t_s_u(l_448, ((void*)0 == &l_448)))) , l_452[2]) == l_454[9][4][4])))) | 1L), p_692->g_136.f7.f2))) || p_32) <= p_692->g_136.f8.f3))
        { /* block id: 260 */
            int32_t *l_456 = &p_692->g_63[1];
            uint64_t l_457 = 5UL;
            struct S2 *l_460[1][9] = {{&p_692->g_128,(void*)0,&p_692->g_128,&p_692->g_128,(void*)0,&p_692->g_128,&p_692->g_128,(void*)0,&p_692->g_128}};
            int32_t *l_464 = &p_692->g_122;
            int32_t *l_465 = &p_692->g_63[1];
            int32_t *l_466 = &p_692->g_97;
            int32_t *l_467 = &p_692->g_122;
            int32_t *l_468 = &l_448;
            int32_t *l_469[4][3][9] = {{{&p_692->g_122,&p_692->g_63[1],&p_692->g_63[1],&p_692->g_122,&l_448,&p_692->g_97,&p_692->g_97,&l_448,&p_692->g_122},{&p_692->g_122,&p_692->g_63[1],&p_692->g_63[1],&p_692->g_122,&l_448,&p_692->g_97,&p_692->g_97,&l_448,&p_692->g_122},{&p_692->g_122,&p_692->g_63[1],&p_692->g_63[1],&p_692->g_122,&l_448,&p_692->g_97,&p_692->g_97,&l_448,&p_692->g_122}},{{&p_692->g_122,&p_692->g_63[1],&p_692->g_63[1],&p_692->g_122,&l_448,&p_692->g_97,&p_692->g_97,&l_448,&p_692->g_122},{&p_692->g_122,&p_692->g_63[1],&p_692->g_63[1],&p_692->g_122,&l_448,&p_692->g_97,&p_692->g_97,&l_448,&p_692->g_122},{&p_692->g_122,&p_692->g_63[1],&p_692->g_63[1],&p_692->g_122,&l_448,&p_692->g_97,&p_692->g_97,&l_448,&p_692->g_122}},{{&p_692->g_122,&p_692->g_63[1],&p_692->g_63[1],&p_692->g_122,&l_448,&p_692->g_97,&p_692->g_97,&l_448,&p_692->g_122},{&p_692->g_122,&p_692->g_63[1],&p_692->g_63[1],&p_692->g_122,&l_448,&p_692->g_97,&p_692->g_97,&l_448,&p_692->g_122},{&p_692->g_122,&p_692->g_63[1],&p_692->g_63[1],&p_692->g_122,&l_448,&p_692->g_97,&p_692->g_97,&l_448,&p_692->g_122}},{{&p_692->g_122,&p_692->g_63[1],&p_692->g_63[1],&p_692->g_122,&l_448,&p_692->g_97,&p_692->g_97,&l_448,&p_692->g_122},{&p_692->g_122,&p_692->g_63[1],&p_692->g_63[1],&p_692->g_122,&l_448,&p_692->g_97,&p_692->g_97,&l_448,&p_692->g_122},{&p_692->g_122,&p_692->g_63[1],&p_692->g_63[1],&p_692->g_122,&l_448,&p_692->g_97,&p_692->g_97,&l_448,&p_692->g_122}}};
            int i, j, k;
            l_457--;
            (*p_692->g_462) = l_460[0][2];
            l_472++;
            p_692->g_296.f7.f0 = p_692->g_475[1];
        }
        else
        { /* block id: 265 */
            int64_t l_482 = 1L;
            int32_t *l_490 = &p_692->g_136.f7.f2;
            int32_t *l_491 = &p_692->g_97;
            uint8_t *l_494 = &p_692->g_73;
            struct S2 **l_557 = &p_692->g_463;
            (*l_491) = (safe_sub_func_int16_t_s_s(0x627CL, ((p_33 || (0x23D95CD0L != (safe_add_func_int32_t_s_s((safe_mod_func_uint16_t_u_u((l_482 , (l_398 <= (safe_sub_func_int64_t_s_s((((*l_455) &= (l_485 == l_342)) ^ (p_692->g_449.f0.f2 & (((((*l_490) |= (safe_add_func_uint16_t_u_u(p_33, 0x5113L))) , (void*)0) != &p_692->g_432) <= p_692->g_113))), p_32)))), GROUP_DIVERGE(2, 1))), 4L)))) > p_692->g_41)));
            if ((l_345 ^= ((((((p_692->g_121 = (safe_rshift_func_int16_t_s_u(((*l_342) = ((((p_32 || p_33) , 0UL) || ((*p_692->g_16) &= p_32)) | ((*l_494) = 0xE7L))), (*l_455)))) > (p_692->g_341[0][0][3].f8.f2 & ((safe_sub_func_int16_t_s_s(((p_692->g_128.f3 < ((safe_rshift_func_int16_t_s_s((safe_mul_func_uint16_t_u_u((*l_490), l_503)), 8)) <= GROUP_DIVERGE(0, 1))) && (*l_491)), (*l_490))) , p_33))) , l_504) != l_505) ^ p_33) | (-8L))))
            { /* block id: 274 */
                uint8_t l_524 = 0UL;
                int32_t *l_530[4] = {&l_398,&l_398,&l_398,&l_398};
                int i;
                if (p_33)
                { /* block id: 275 */
                    int32_t *l_507[4] = {&l_345,&l_345,&l_345,&l_345};
                    int i;
                    l_508--;
                    return p_33;
                }
                else
                { /* block id: 278 */
                    int32_t *l_519 = (void*)0;
                    for (p_692->g_136.f1 = 0; (p_692->g_136.f1 <= 8); p_692->g_136.f1 += 1)
                    { /* block id: 281 */
                        uint64_t *l_512 = (void*)0;
                        int i;
                        if (p_32)
                            break;
                        if (l_397)
                            continue;
                        l_491 = l_490;
                        p_692->g_516 = (((--p_692->g_506.f1) < 0x330B05E8601A8FBDL) , p_692->g_515);
                    }
                    (*l_455) = l_398;
                    for (p_692->g_506.f4 = (-29); (p_692->g_506.f4 == 22); ++p_692->g_506.f4)
                    { /* block id: 291 */
                        (*p_692->g_521) = l_519;
                        (*l_491) &= (safe_sub_func_uint16_t_u_u(l_524, ((safe_add_func_int32_t_s_s(0x769C012EL, p_33)) == (p_692->g_128.f8 , ((safe_rshift_func_uint16_t_u_u(0x3E5DL, 15)) || (safe_unary_minus_func_int64_t_s((-1L))))))));
                    }
                }
                (*p_692->g_532) = (l_530[3] = l_491);
            }
            else
            { /* block id: 298 */
                int32_t l_547 = 0x70554B8BL;
                for (p_692->g_506.f5 = 2; (p_692->g_506.f5 >= 0); p_692->g_506.f5 -= 1)
                { /* block id: 301 */
                    int32_t *l_533 = (void*)0;
                    uint64_t ****l_540 = (void*)0;
                    int32_t l_548[10] = {0L,0L,0L,0L,0L,0L,0L,0L,0L,0L};
                    int16_t *l_549 = (void*)0;
                    int i;
                    if (p_33)
                    { /* block id: 302 */
                        int32_t **l_534 = &l_490;
                        if (p_33)
                            break;
                        (*l_534) = l_533;
                        (*l_491) = 0x555F93C7L;
                    }
                    else
                    { /* block id: 306 */
                        (*l_504) = p_692->g_296.f8;
                    }
                    if ((((void*)0 == l_535) , ((safe_div_func_int16_t_s_s((((*l_342) = p_33) , (safe_add_func_int32_t_s_s(((void*)0 == l_540), FAKE_DIVERGE(p_692->group_2_offset, get_group_id(2), 10)))), (p_692->g_113 |= (GROUP_DIVERGE(2, 1) & ((((l_345 && (GROUP_DIVERGE(0, 1) ^ (safe_sub_func_int64_t_s_s(0x77B1BD7AF7CEF352L, ((safe_rshift_func_int8_t_s_u(p_692->g_296.f8.f5, (((safe_rshift_func_int16_t_s_s((l_547 == p_33), p_692->g_132.f3.f3)) <= p_692->g_132.f3.f2) && (*p_692->g_16)))) <= l_548[4]))))) , (*l_491)) , p_692->g_132.f2) == p_692->g_44))))) > l_547)))
                    { /* block id: 311 */
                        struct S2 ***l_558 = &l_557;
                        (*p_692->g_552) = (((*l_455) ^ p_692->g_119[1][0].f1.f0.f1) , p_692->g_550[4][0][4]);
                        (*l_455) ^= (safe_sub_func_uint32_t_u_u((safe_rshift_func_uint8_t_u_s(0x21L, 1)), ((((*l_558) = l_557) != &p_692->g_463) <= ((*p_692->g_16) = l_434))));
                    }
                    else
                    { /* block id: 316 */
                        return p_33;
                    }
                    l_559 = (void*)0;
                    for (p_692->g_136.f8.f5 = 0; (p_692->g_136.f8.f5 <= 2); p_692->g_136.f8.f5 += 1)
                    { /* block id: 322 */
                        uint64_t *l_564 = (void*)0;
                        uint64_t *l_565 = &p_692->g_515.f1;
                        (*l_455) &= ((0x1D65676B5F009C2BL & ((safe_lshift_func_int16_t_s_s(p_692->g_296.f2.f2, 12)) == (safe_rshift_func_int16_t_s_u((((***p_692->g_432) = p_33) , p_32), 10)))) & ((*l_565) = ((((*l_494) ^= 0UL) != p_32) , p_692->g_132.f3.f1)));
                    }
                }
            }
        }
    }
    (*l_535) = (*l_535);
    l_559 = &l_397;
    return p_32;
}


/* ------------------------------------------ */
/* 
 * reads : p_692->g_41 p_692->g_63 p_692->g_65 p_692->g_73 p_692->g_7 p_692->g_17 p_692->g_81 p_692->g_119 p_692->g_16 p_692->g_122 p_692->g_128 p_692->g_129 p_692->g_136 p_692->g_137 p_692->g_140 p_692->g_44 p_692->g_132.f1.f2 p_692->g_141 p_692->g_97 p_692->g_266 p_692->g_132.f0 p_692->g_290 p_692->g_132.f3.f2 p_692->g_296 p_692->g_96
 * writes: p_692->g_41 p_692->g_17 p_692->g_63 p_692->g_65 p_692->g_73 p_692->g_81 p_692->g_96 p_692->g_97 p_692->g_113 p_692->g_121 p_692->g_122 p_692->g_128 p_692->g_136 p_692->g_141 p_692->g_132.f1.f0.f2 p_692->g_145 p_692->g_139 p_692->g_246 p_692->g_132.f0 p_692->g_307 p_692->g_132.f3.f2
 */
int8_t  func_34(uint8_t * p_35, uint16_t  p_36, uint64_t  p_37, struct S7 * p_692)
{ /* block id: 10 */
    int32_t *l_169[5][2][5];
    uint64_t l_267 = 0x9A40909F6F33D91CL;
    uint16_t l_310 = 0x9EEEL;
    int32_t l_311 = (-4L);
    struct S5 *l_312 = &p_692->g_136;
    int i, j, k;
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 5; k++)
                l_169[i][j][k] = &p_692->g_132.f1.f2;
        }
    }
    for (p_692->g_41 = 0; (p_692->g_41 > (-23)); p_692->g_41--)
    { /* block id: 13 */
        int16_t l_170 = 0x74DCL;
        int64_t l_171 = 0x71915A3E27E76A63L;
        uint64_t *l_247 = &p_692->g_44;
        int16_t l_270 = 0x1BD2L;
        int32_t l_271 = 0x4460107AL;
        int32_t l_272 = 1L;
        uint64_t l_273 = 1UL;
        for (p_37 = 0; (p_37 >= 48); ++p_37)
        { /* block id: 16 */
            uint64_t l_156 = 18446744073709551615UL;
            uint64_t *l_245 = &p_692->g_136.f8.f4;
            uint64_t **l_244[10] = {(void*)0,&l_245,&l_245,&l_245,(void*)0,(void*)0,&l_245,&l_245,&l_245,(void*)0};
            int32_t l_264 = 0x6C2D2A07L;
            int i;
            l_264 = func_49((p_692->g_246 = func_52(p_36, (safe_sub_func_int16_t_s_s(func_59(&p_692->g_16, p_692), (((safe_rshift_func_uint8_t_u_s((safe_rshift_func_int16_t_s_s(l_156, ((((safe_add_func_int8_t_s_s(0x16L, 0xF6L)) <= (safe_rshift_func_uint16_t_u_u(((safe_sub_func_int8_t_s_s((safe_sub_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((safe_sub_func_int64_t_s_s(((l_169[4][1][3] == l_169[4][1][3]) > l_170), 4UL)), p_36)), l_171)), l_170)) , l_170), 15))) < 0x2A87EBE3L) || p_37))), l_156)) < p_692->g_44) > l_170))), p_692->g_132.f1.f2, p_692->g_44, p_692)), l_247, p_692);
        }
        for (p_692->g_128.f8 = 0; (p_692->g_128.f8 <= 2); p_692->g_128.f8 += 1)
        { /* block id: 157 */
            int32_t *l_265 = &p_692->g_136.f7.f2;
            int i;
            (*p_692->g_266) = l_265;
            if ((**p_692->g_266))
                continue;
            --l_267;
            for (p_692->g_132.f0 = 0; (p_692->g_132.f0 <= 1); p_692->g_132.f0 += 1)
            { /* block id: 163 */
                return p_37;
            }
        }
        --l_273;
    }
    for (p_692->g_81 = 24; (p_692->g_81 == (-14)); --p_692->g_81)
    { /* block id: 171 */
        int16_t l_287 = (-5L);
        int32_t l_291 = 0x67DB924BL;
        struct S5 *l_293[10];
        struct S5 **l_292 = &l_293[9];
        uint64_t **l_302[2];
        uint64_t ***l_301 = &l_302[1];
        uint64_t ****l_303 = &l_301;
        uint32_t *l_306 = &p_692->g_307[5][2];
        int32_t l_308 = 1L;
        uint32_t l_309 = 2UL;
        int i;
        for (i = 0; i < 10; i++)
            l_293[i] = (void*)0;
        for (i = 0; i < 2; i++)
            l_302[i] = &p_692->g_246;
        (*l_292) = ((((((((safe_mul_func_int8_t_s_s(((l_169[4][1][0] != (void*)0) > p_37), (safe_add_func_int8_t_s_s((safe_unary_minus_func_uint64_t_u((safe_rshift_func_uint8_t_u_s(250UL, 3)))), (safe_add_func_uint64_t_u_u((((l_287 |= p_692->g_128.f7) & ((safe_lshift_func_int8_t_s_s((((GROUP_DIVERGE(1, 1) ^ ((void*)0 != l_169[4][1][3])) & (*p_35)) , ((p_692->g_290 , (void*)0) != (void*)0)), p_692->g_122)) >= p_692->g_132.f3.f2)) <= p_692->g_290.f0.f3), 0x9CE8F9D4D038C0A4L)))))) & 0UL) < l_291) & 0x14F9A1E6L) >= 0L) , p_36) >= 0x132AL) , (void*)0);
        if (p_36)
            break;
        l_310 ^= (safe_sub_func_int64_t_s_s(0x25FE8DCF1E9E9CDCL, ((p_36 & (p_692->g_296 , (safe_add_func_int8_t_s_s(((safe_div_func_uint16_t_u_u(((((*l_303) = l_301) == &l_302[1]) , (((*p_692->g_137) , (safe_lshift_func_int16_t_s_u(((l_309 = ((((*l_306) = ((void*)0 != l_169[4][1][3])) , GROUP_DIVERGE(0, 1)) != (l_308 >= FAKE_DIVERGE(p_692->local_1_offset, get_local_id(1), 10)))) || (*p_35)), 14))) != p_37)), p_37)) , p_37), FAKE_DIVERGE(p_692->global_0_offset, get_global_id(0), 10))))) >= 0x6AD45989L)));
        if (l_311)
            break;
    }
    (*l_312) = (*p_692->g_137);
    for (p_692->g_136.f1 = (-13); (p_692->g_136.f1 > 26); ++p_692->g_136.f1)
    { /* block id: 184 */
        int32_t l_319[6][8][5] = {{{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L}},{{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L}},{{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L}},{{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L}},{{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L}},{{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L},{0x371AA7F2L,0L,0x7615908BL,(-1L),1L}}};
        uint64_t l_320 = 18446744073709551609UL;
        int i, j, k;
        for (p_692->g_132.f3.f2 = 0; (p_692->g_132.f3.f2 <= 7); p_692->g_132.f3.f2 += 1)
        { /* block id: 187 */
            struct S5 **l_317 = &l_312;
            int32_t l_318 = 0x1C489FDDL;
            int i;
            l_318 = ((p_692->g_96[p_692->g_132.f3.f2] == (safe_mul_func_uint16_t_u_u((FAKE_DIVERGE(p_692->group_1_offset, get_group_id(1), 10) < 0x228CE52C00E9E41FL), (l_317 != (void*)0)))) >= FAKE_DIVERGE(p_692->global_2_offset, get_global_id(2), 10));
            l_319[5][4][0] |= p_36;
        }
        l_320++;
    }
    return p_692->g_7;
}


/* ------------------------------------------ */
/* 
 * reads : p_692->g_136.f8.f4 p_692->g_41 p_692->g_141 p_692->g_97
 * writes: p_692->g_136.f8.f4 p_692->g_97 p_692->g_65
 */
int32_t  func_49(uint64_t * p_50, uint64_t * p_51, struct S7 * p_692)
{ /* block id: 141 */
    uint64_t **l_251 = &p_692->g_246;
    int32_t l_263 = (-4L);
    for (p_692->g_136.f8.f4 = 0; (p_692->g_136.f8.f4 != 18); p_692->g_136.f8.f4 = safe_add_func_uint64_t_u_u(p_692->g_136.f8.f4, 1))
    { /* block id: 144 */
        uint64_t l_250 = 0x6C71EAD5D2DFEEF6L;
        uint64_t ***l_252 = &l_251;
        int32_t *l_261 = &p_692->g_65;
        int32_t l_262 = 0x279CABB5L;
        if (l_250)
            break;
        (*l_252) = l_251;
        l_262 ^= ((safe_div_func_uint8_t_u_u((safe_mul_func_int16_t_s_s(0x5716L, (safe_sub_func_uint32_t_u_u(l_250, p_692->g_41)))), (-1L))) == ((*l_261) = ((*p_692->g_141) = (7L != l_250))));
    }
    (*p_692->g_141) ^= l_263;
    return l_263;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint64_t * func_52(uint32_t  p_53, int32_t  p_54, int64_t  p_55, uint64_t  p_56, struct S7 * p_692)
{ /* block id: 77 */
    if ((atomic_inc(&p_692->g_atomic_input[85 * get_linear_group_id() + 82]) == 7))
    { /* block id: 79 */
        int64_t l_172 = 0x766869ADC50922C1L;
        int64_t l_173[4];
        int16_t l_222 = 0x5ECEL;
        uint32_t l_223[6][1] = {{0x90E65BC3L},{0x90E65BC3L},{0x90E65BC3L},{0x90E65BC3L},{0x90E65BC3L},{0x90E65BC3L}};
        uint32_t l_224 = 4294967291UL;
        uint64_t l_225 = 0xF2FACD075D00FB13L;
        int32_t l_226 = 1L;
        struct S5 l_227[9] = {{0xB390L,0x3457E4414D2B7C5AL,{-3L,0UL,0x673A4FAA4DC28CC5L,-10L,0x53L,-9L,0x4B837798L,0L,0x814E99E3B8823D44L},0x7AD1L,255UL,{0UL,0x1A40780AL,-6L,0x40L},0UL,{{0xE0EDD23C691C45DCL,0x4B3B4597L,1L,2L},0x5AL,-1L},{0x371B4ADB113186C1L,0x938308A2CE61AF88L,0xFCCFL,4L,0x622744744C2159E1L,1L,0UL}},{0xB390L,0x3457E4414D2B7C5AL,{-3L,0UL,0x673A4FAA4DC28CC5L,-10L,0x53L,-9L,0x4B837798L,0L,0x814E99E3B8823D44L},0x7AD1L,255UL,{0UL,0x1A40780AL,-6L,0x40L},0UL,{{0xE0EDD23C691C45DCL,0x4B3B4597L,1L,2L},0x5AL,-1L},{0x371B4ADB113186C1L,0x938308A2CE61AF88L,0xFCCFL,4L,0x622744744C2159E1L,1L,0UL}},{0xB390L,0x3457E4414D2B7C5AL,{-3L,0UL,0x673A4FAA4DC28CC5L,-10L,0x53L,-9L,0x4B837798L,0L,0x814E99E3B8823D44L},0x7AD1L,255UL,{0UL,0x1A40780AL,-6L,0x40L},0UL,{{0xE0EDD23C691C45DCL,0x4B3B4597L,1L,2L},0x5AL,-1L},{0x371B4ADB113186C1L,0x938308A2CE61AF88L,0xFCCFL,4L,0x622744744C2159E1L,1L,0UL}},{0xB390L,0x3457E4414D2B7C5AL,{-3L,0UL,0x673A4FAA4DC28CC5L,-10L,0x53L,-9L,0x4B837798L,0L,0x814E99E3B8823D44L},0x7AD1L,255UL,{0UL,0x1A40780AL,-6L,0x40L},0UL,{{0xE0EDD23C691C45DCL,0x4B3B4597L,1L,2L},0x5AL,-1L},{0x371B4ADB113186C1L,0x938308A2CE61AF88L,0xFCCFL,4L,0x622744744C2159E1L,1L,0UL}},{0xB390L,0x3457E4414D2B7C5AL,{-3L,0UL,0x673A4FAA4DC28CC5L,-10L,0x53L,-9L,0x4B837798L,0L,0x814E99E3B8823D44L},0x7AD1L,255UL,{0UL,0x1A40780AL,-6L,0x40L},0UL,{{0xE0EDD23C691C45DCL,0x4B3B4597L,1L,2L},0x5AL,-1L},{0x371B4ADB113186C1L,0x938308A2CE61AF88L,0xFCCFL,4L,0x622744744C2159E1L,1L,0UL}},{0xB390L,0x3457E4414D2B7C5AL,{-3L,0UL,0x673A4FAA4DC28CC5L,-10L,0x53L,-9L,0x4B837798L,0L,0x814E99E3B8823D44L},0x7AD1L,255UL,{0UL,0x1A40780AL,-6L,0x40L},0UL,{{0xE0EDD23C691C45DCL,0x4B3B4597L,1L,2L},0x5AL,-1L},{0x371B4ADB113186C1L,0x938308A2CE61AF88L,0xFCCFL,4L,0x622744744C2159E1L,1L,0UL}},{0xB390L,0x3457E4414D2B7C5AL,{-3L,0UL,0x673A4FAA4DC28CC5L,-10L,0x53L,-9L,0x4B837798L,0L,0x814E99E3B8823D44L},0x7AD1L,255UL,{0UL,0x1A40780AL,-6L,0x40L},0UL,{{0xE0EDD23C691C45DCL,0x4B3B4597L,1L,2L},0x5AL,-1L},{0x371B4ADB113186C1L,0x938308A2CE61AF88L,0xFCCFL,4L,0x622744744C2159E1L,1L,0UL}},{0xB390L,0x3457E4414D2B7C5AL,{-3L,0UL,0x673A4FAA4DC28CC5L,-10L,0x53L,-9L,0x4B837798L,0L,0x814E99E3B8823D44L},0x7AD1L,255UL,{0UL,0x1A40780AL,-6L,0x40L},0UL,{{0xE0EDD23C691C45DCL,0x4B3B4597L,1L,2L},0x5AL,-1L},{0x371B4ADB113186C1L,0x938308A2CE61AF88L,0xFCCFL,4L,0x622744744C2159E1L,1L,0UL}},{0xB390L,0x3457E4414D2B7C5AL,{-3L,0UL,0x673A4FAA4DC28CC5L,-10L,0x53L,-9L,0x4B837798L,0L,0x814E99E3B8823D44L},0x7AD1L,255UL,{0UL,0x1A40780AL,-6L,0x40L},0UL,{{0xE0EDD23C691C45DCL,0x4B3B4597L,1L,2L},0x5AL,-1L},{0x371B4ADB113186C1L,0x938308A2CE61AF88L,0xFCCFL,4L,0x622744744C2159E1L,1L,0UL}}};
        int64_t l_228 = 0x69389F3DD709AE37L;
        uint32_t l_229[2][4] = {{0xF80CCA16L,0xF80CCA16L,0xF80CCA16L,0xF80CCA16L},{0xF80CCA16L,0xF80CCA16L,0xF80CCA16L,0xF80CCA16L}};
        int8_t l_230[5][3][8] = {{{0x2EL,1L,0x71L,(-6L),(-1L),0x20L,0x20L,(-1L)},{0x2EL,1L,0x71L,(-6L),(-1L),0x20L,0x20L,(-1L)},{0x2EL,1L,0x71L,(-6L),(-1L),0x20L,0x20L,(-1L)}},{{0x2EL,1L,0x71L,(-6L),(-1L),0x20L,0x20L,(-1L)},{0x2EL,1L,0x71L,(-6L),(-1L),0x20L,0x20L,(-1L)},{0x2EL,1L,0x71L,(-6L),(-1L),0x20L,0x20L,(-1L)}},{{0x2EL,1L,0x71L,(-6L),(-1L),0x20L,0x20L,(-1L)},{0x2EL,1L,0x71L,(-6L),(-1L),0x20L,0x20L,(-1L)},{0x2EL,1L,0x71L,(-6L),(-1L),0x20L,0x20L,(-1L)}},{{0x2EL,1L,0x71L,(-6L),(-1L),0x20L,0x20L,(-1L)},{0x2EL,1L,0x71L,(-6L),(-1L),0x20L,0x20L,(-1L)},{0x2EL,1L,0x71L,(-6L),(-1L),0x20L,0x20L,(-1L)}},{{0x2EL,1L,0x71L,(-6L),(-1L),0x20L,0x20L,(-1L)},{0x2EL,1L,0x71L,(-6L),(-1L),0x20L,0x20L,(-1L)},{0x2EL,1L,0x71L,(-6L),(-1L),0x20L,0x20L,(-1L)}}};
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_173[i] = (-7L);
        l_173[1] = l_172;
        for (l_172 = 0; (l_172 != 10); l_172++)
        { /* block id: 83 */
            int8_t l_176 = 0x59L;
            int64_t l_177 = 0x4DEB364EF6050ABAL;
            int32_t l_178 = 0L;
            uint64_t l_179 = 0x185F83EBBB2C9FA7L;
            l_178 ^= (l_177 = (l_176 = (-1L)));
            l_179 &= 0x2929E3FCL;
            for (l_177 = 0; (l_177 <= 2); l_177 += 1)
            { /* block id: 90 */
                int32_t l_181[10];
                int32_t *l_180 = &l_181[9];
                int32_t *l_182 = (void*)0;
                uint16_t l_183 = 0x3610L;
                union U6 l_185 = {{0x41646E61053FC6B8L,0UL,0UL,0x1BFE7BB2D01FADEAL,0x1A94851BE001E574L,0x5F73CDD7L,0x04A0L}};/* VOLATILE GLOBAL l_185 */
                union U6 *l_184[3];
                struct S4 l_186[5][1][10] = {{{{0x38279839L,{{18446744073709551615UL,1L,5L,0x28L},0x16L,-1L},0xE010L,{0x1D2B124C91FD1CD5L,18446744073709551615UL,0x1816L,0x5E0BEF41ADA6DF6EL,4UL,1L,65531UL}},{0x38279839L,{{18446744073709551615UL,1L,5L,0x28L},0x16L,-1L},0xE010L,{0x1D2B124C91FD1CD5L,18446744073709551615UL,0x1816L,0x5E0BEF41ADA6DF6EL,4UL,1L,65531UL}},{0UL,{{1UL,0x214F62E6L,0x0BF691D8L,9L},1L,0x2F3E0FC4L},5UL,{0x1AFD536921B34851L,18446744073709551615UL,65535UL,1L,0UL,0x7C336C0EL,1UL}},{0xB8D371C5L,{{0x563AC0A0C228B3F6L,5L,-2L,0L},0L,1L},65535UL,{0x7D95556C42D9E713L,1UL,65535UL,-1L,1UL,0x1DDDDFE6L,1UL}},{6UL,{{0x1E8C80B86B9388DDL,2L,0x2FD82489L,6L},0x04L,0x22340B1CL},1UL,{1L,8UL,0x4DE4L,0x407B6ACC92EB9C0AL,0x9B30A4D82714927AL,0L,0x2F90L}},{4294967287UL,{{0x82F56F0C85766FAAL,-1L,0x41789064L,-8L},0x06L,2L},1UL,{0x68299416B48063A0L,0x6B292DDC86A4F332L,3UL,4L,18446744073709551615UL,0x5861323BL,0UL}},{7UL,{{7UL,1L,0L,0x4CL},0L,0x3F1C7C27L},7UL,{6L,18446744073709551606UL,0UL,0L,6UL,1L,0x8880L}},{4294967289UL,{{18446744073709551610UL,1L,0x2BE3F64EL,3L},0x41L,0x103B8C53L},65526UL,{0x510439C1662457B2L,6UL,0x0642L,0x423DA3CA59413721L,7UL,-1L,0xEAB4L}},{7UL,{{7UL,1L,0L,0x4CL},0L,0x3F1C7C27L},7UL,{6L,18446744073709551606UL,0UL,0L,6UL,1L,0x8880L}},{4294967287UL,{{0x82F56F0C85766FAAL,-1L,0x41789064L,-8L},0x06L,2L},1UL,{0x68299416B48063A0L,0x6B292DDC86A4F332L,3UL,4L,18446744073709551615UL,0x5861323BL,0UL}}}},{{{0x38279839L,{{18446744073709551615UL,1L,5L,0x28L},0x16L,-1L},0xE010L,{0x1D2B124C91FD1CD5L,18446744073709551615UL,0x1816L,0x5E0BEF41ADA6DF6EL,4UL,1L,65531UL}},{0x38279839L,{{18446744073709551615UL,1L,5L,0x28L},0x16L,-1L},0xE010L,{0x1D2B124C91FD1CD5L,18446744073709551615UL,0x1816L,0x5E0BEF41ADA6DF6EL,4UL,1L,65531UL}},{0UL,{{1UL,0x214F62E6L,0x0BF691D8L,9L},1L,0x2F3E0FC4L},5UL,{0x1AFD536921B34851L,18446744073709551615UL,65535UL,1L,0UL,0x7C336C0EL,1UL}},{0xB8D371C5L,{{0x563AC0A0C228B3F6L,5L,-2L,0L},0L,1L},65535UL,{0x7D95556C42D9E713L,1UL,65535UL,-1L,1UL,0x1DDDDFE6L,1UL}},{6UL,{{0x1E8C80B86B9388DDL,2L,0x2FD82489L,6L},0x04L,0x22340B1CL},1UL,{1L,8UL,0x4DE4L,0x407B6ACC92EB9C0AL,0x9B30A4D82714927AL,0L,0x2F90L}},{4294967287UL,{{0x82F56F0C85766FAAL,-1L,0x41789064L,-8L},0x06L,2L},1UL,{0x68299416B48063A0L,0x6B292DDC86A4F332L,3UL,4L,18446744073709551615UL,0x5861323BL,0UL}},{7UL,{{7UL,1L,0L,0x4CL},0L,0x3F1C7C27L},7UL,{6L,18446744073709551606UL,0UL,0L,6UL,1L,0x8880L}},{4294967289UL,{{18446744073709551610UL,1L,0x2BE3F64EL,3L},0x41L,0x103B8C53L},65526UL,{0x510439C1662457B2L,6UL,0x0642L,0x423DA3CA59413721L,7UL,-1L,0xEAB4L}},{7UL,{{7UL,1L,0L,0x4CL},0L,0x3F1C7C27L},7UL,{6L,18446744073709551606UL,0UL,0L,6UL,1L,0x8880L}},{4294967287UL,{{0x82F56F0C85766FAAL,-1L,0x41789064L,-8L},0x06L,2L},1UL,{0x68299416B48063A0L,0x6B292DDC86A4F332L,3UL,4L,18446744073709551615UL,0x5861323BL,0UL}}}},{{{0x38279839L,{{18446744073709551615UL,1L,5L,0x28L},0x16L,-1L},0xE010L,{0x1D2B124C91FD1CD5L,18446744073709551615UL,0x1816L,0x5E0BEF41ADA6DF6EL,4UL,1L,65531UL}},{0x38279839L,{{18446744073709551615UL,1L,5L,0x28L},0x16L,-1L},0xE010L,{0x1D2B124C91FD1CD5L,18446744073709551615UL,0x1816L,0x5E0BEF41ADA6DF6EL,4UL,1L,65531UL}},{0UL,{{1UL,0x214F62E6L,0x0BF691D8L,9L},1L,0x2F3E0FC4L},5UL,{0x1AFD536921B34851L,18446744073709551615UL,65535UL,1L,0UL,0x7C336C0EL,1UL}},{0xB8D371C5L,{{0x563AC0A0C228B3F6L,5L,-2L,0L},0L,1L},65535UL,{0x7D95556C42D9E713L,1UL,65535UL,-1L,1UL,0x1DDDDFE6L,1UL}},{6UL,{{0x1E8C80B86B9388DDL,2L,0x2FD82489L,6L},0x04L,0x22340B1CL},1UL,{1L,8UL,0x4DE4L,0x407B6ACC92EB9C0AL,0x9B30A4D82714927AL,0L,0x2F90L}},{4294967287UL,{{0x82F56F0C85766FAAL,-1L,0x41789064L,-8L},0x06L,2L},1UL,{0x68299416B48063A0L,0x6B292DDC86A4F332L,3UL,4L,18446744073709551615UL,0x5861323BL,0UL}},{7UL,{{7UL,1L,0L,0x4CL},0L,0x3F1C7C27L},7UL,{6L,18446744073709551606UL,0UL,0L,6UL,1L,0x8880L}},{4294967289UL,{{18446744073709551610UL,1L,0x2BE3F64EL,3L},0x41L,0x103B8C53L},65526UL,{0x510439C1662457B2L,6UL,0x0642L,0x423DA3CA59413721L,7UL,-1L,0xEAB4L}},{7UL,{{7UL,1L,0L,0x4CL},0L,0x3F1C7C27L},7UL,{6L,18446744073709551606UL,0UL,0L,6UL,1L,0x8880L}},{4294967287UL,{{0x82F56F0C85766FAAL,-1L,0x41789064L,-8L},0x06L,2L},1UL,{0x68299416B48063A0L,0x6B292DDC86A4F332L,3UL,4L,18446744073709551615UL,0x5861323BL,0UL}}}},{{{0x38279839L,{{18446744073709551615UL,1L,5L,0x28L},0x16L,-1L},0xE010L,{0x1D2B124C91FD1CD5L,18446744073709551615UL,0x1816L,0x5E0BEF41ADA6DF6EL,4UL,1L,65531UL}},{0x38279839L,{{18446744073709551615UL,1L,5L,0x28L},0x16L,-1L},0xE010L,{0x1D2B124C91FD1CD5L,18446744073709551615UL,0x1816L,0x5E0BEF41ADA6DF6EL,4UL,1L,65531UL}},{0UL,{{1UL,0x214F62E6L,0x0BF691D8L,9L},1L,0x2F3E0FC4L},5UL,{0x1AFD536921B34851L,18446744073709551615UL,65535UL,1L,0UL,0x7C336C0EL,1UL}},{0xB8D371C5L,{{0x563AC0A0C228B3F6L,5L,-2L,0L},0L,1L},65535UL,{0x7D95556C42D9E713L,1UL,65535UL,-1L,1UL,0x1DDDDFE6L,1UL}},{6UL,{{0x1E8C80B86B9388DDL,2L,0x2FD82489L,6L},0x04L,0x22340B1CL},1UL,{1L,8UL,0x4DE4L,0x407B6ACC92EB9C0AL,0x9B30A4D82714927AL,0L,0x2F90L}},{4294967287UL,{{0x82F56F0C85766FAAL,-1L,0x41789064L,-8L},0x06L,2L},1UL,{0x68299416B48063A0L,0x6B292DDC86A4F332L,3UL,4L,18446744073709551615UL,0x5861323BL,0UL}},{7UL,{{7UL,1L,0L,0x4CL},0L,0x3F1C7C27L},7UL,{6L,18446744073709551606UL,0UL,0L,6UL,1L,0x8880L}},{4294967289UL,{{18446744073709551610UL,1L,0x2BE3F64EL,3L},0x41L,0x103B8C53L},65526UL,{0x510439C1662457B2L,6UL,0x0642L,0x423DA3CA59413721L,7UL,-1L,0xEAB4L}},{7UL,{{7UL,1L,0L,0x4CL},0L,0x3F1C7C27L},7UL,{6L,18446744073709551606UL,0UL,0L,6UL,1L,0x8880L}},{4294967287UL,{{0x82F56F0C85766FAAL,-1L,0x41789064L,-8L},0x06L,2L},1UL,{0x68299416B48063A0L,0x6B292DDC86A4F332L,3UL,4L,18446744073709551615UL,0x5861323BL,0UL}}}},{{{0x38279839L,{{18446744073709551615UL,1L,5L,0x28L},0x16L,-1L},0xE010L,{0x1D2B124C91FD1CD5L,18446744073709551615UL,0x1816L,0x5E0BEF41ADA6DF6EL,4UL,1L,65531UL}},{0x38279839L,{{18446744073709551615UL,1L,5L,0x28L},0x16L,-1L},0xE010L,{0x1D2B124C91FD1CD5L,18446744073709551615UL,0x1816L,0x5E0BEF41ADA6DF6EL,4UL,1L,65531UL}},{0UL,{{1UL,0x214F62E6L,0x0BF691D8L,9L},1L,0x2F3E0FC4L},5UL,{0x1AFD536921B34851L,18446744073709551615UL,65535UL,1L,0UL,0x7C336C0EL,1UL}},{0xB8D371C5L,{{0x563AC0A0C228B3F6L,5L,-2L,0L},0L,1L},65535UL,{0x7D95556C42D9E713L,1UL,65535UL,-1L,1UL,0x1DDDDFE6L,1UL}},{6UL,{{0x1E8C80B86B9388DDL,2L,0x2FD82489L,6L},0x04L,0x22340B1CL},1UL,{1L,8UL,0x4DE4L,0x407B6ACC92EB9C0AL,0x9B30A4D82714927AL,0L,0x2F90L}},{4294967287UL,{{0x82F56F0C85766FAAL,-1L,0x41789064L,-8L},0x06L,2L},1UL,{0x68299416B48063A0L,0x6B292DDC86A4F332L,3UL,4L,18446744073709551615UL,0x5861323BL,0UL}},{7UL,{{7UL,1L,0L,0x4CL},0L,0x3F1C7C27L},7UL,{6L,18446744073709551606UL,0UL,0L,6UL,1L,0x8880L}},{4294967289UL,{{18446744073709551610UL,1L,0x2BE3F64EL,3L},0x41L,0x103B8C53L},65526UL,{0x510439C1662457B2L,6UL,0x0642L,0x423DA3CA59413721L,7UL,-1L,0xEAB4L}},{7UL,{{7UL,1L,0L,0x4CL},0L,0x3F1C7C27L},7UL,{6L,18446744073709551606UL,0UL,0L,6UL,1L,0x8880L}},{4294967287UL,{{0x82F56F0C85766FAAL,-1L,0x41789064L,-8L},0x06L,2L},1UL,{0x68299416B48063A0L,0x6B292DDC86A4F332L,3UL,4L,18446744073709551615UL,0x5861323BL,0UL}}}}};
                struct S4 l_187 = {4294967288UL,{{1UL,-3L,0x6166C689L,-1L},0x19L,-1L},65535UL,{0x3931D93221E11CBFL,0x7C399B7BAD2B1335L,0UL,-7L,18446744073709551613UL,0x07AE0362L,0x40B8L}};/* VOLATILE GLOBAL l_187 */
                int i, j, k;
                for (i = 0; i < 10; i++)
                    l_181[i] = 1L;
                for (i = 0; i < 3; i++)
                    l_184[i] = &l_185;
                l_180 = (void*)0;
                l_182 = &p_692->g_63[l_177];
                l_184[0] = (l_183 , l_184[2]);
                l_187 = l_186[0][0][0];
            }
            for (l_177 = 0; (l_177 == (-19)); --l_177)
            { /* block id: 98 */
                struct S0 l_191 = {0x3CA9E5370DE612A0L,18446744073709551615UL,65531UL,0x722E6C3A0CFA0C2CL,2UL,-1L,0UL};/* VOLATILE GLOBAL l_191 */
                struct S0 *l_190 = &l_191;
                struct S0 *l_192 = &l_191;
                struct S4 l_193 = {4294967293UL,{{18446744073709551612UL,1L,9L,0L},-3L,0x2B4AFA02L},0xA148L,{0x116AA95A9F53E884L,0UL,65535UL,0x4539A55307FD28B3L,0xB3B758BA4F5CD614L,3L,0UL}};/* VOLATILE GLOBAL l_193 */
                uint32_t l_194 = 4UL;
                uint8_t l_195 = 252UL;
                uint32_t l_196 = 0xDC391DA6L;
                l_190 = (l_192 = l_190);
                l_195 = (l_193 , (l_194 , (l_178 = 0x02CD53D4L)));
                l_178 ^= l_196;
                for (l_191.f2 = 17; (l_191.f2 > 19); l_191.f2++)
                { /* block id: 106 */
                    int32_t l_199 = 1L;
                    int32_t l_209[10];
                    struct S4 l_211 = {0x63ACA23BL,{{1UL,1L,0x1B55BE65L,1L},0x54L,6L},1UL,{0x7112EA49763897DBL,0x34560898B524430BL,1UL,0x79607C9C3BC8424BL,18446744073709551613UL,4L,0x3899L}};/* VOLATILE GLOBAL l_211 */
                    struct S4 *l_210 = &l_211;
                    struct S4 *l_212 = &l_211;
                    uint8_t l_213 = 0xD3L;
                    uint16_t l_214 = 0x6207L;
                    int32_t l_215 = 1L;
                    int32_t l_216 = 1L;
                    int8_t l_217[10][5] = {{0x47L,0x47L,0x4DL,1L,6L},{0x47L,0x47L,0x4DL,1L,6L},{0x47L,0x47L,0x4DL,1L,6L},{0x47L,0x47L,0x4DL,1L,6L},{0x47L,0x47L,0x4DL,1L,6L},{0x47L,0x47L,0x4DL,1L,6L},{0x47L,0x47L,0x4DL,1L,6L},{0x47L,0x47L,0x4DL,1L,6L},{0x47L,0x47L,0x4DL,1L,6L},{0x47L,0x47L,0x4DL,1L,6L}};
                    int32_t l_218 = 0x7A2098EFL;
                    int32_t l_219 = 0x4D83E6EBL;
                    struct S2 l_221 = {3L,0x67F6B025L,0L,8L,-1L,-3L,0x6BD4348BL,0x0128F69EL,0UL};/* VOLATILE GLOBAL l_221 */
                    struct S2 *l_220 = &l_221;
                    int i, j;
                    for (i = 0; i < 10; i++)
                        l_209[i] = (-1L);
                    for (l_199 = 24; (l_199 < (-25)); --l_199)
                    { /* block id: 109 */
                        int16_t l_202 = 0x3E48L;
                        int32_t l_204 = 0x512F2BDFL;
                        int32_t *l_203 = &l_204;
                        int32_t *l_205 = &l_204;
                        int32_t *l_206 = &l_204;
                        int32_t *l_207 = &l_204;
                        int32_t **l_208 = &l_207;
                        l_205 = (l_202 , (l_203 = (void*)0));
                        l_207 = l_206;
                        l_208 = (void*)0;
                    }
                    l_199 &= (l_178 = l_209[2]);
                    l_212 = l_210;
                    l_220 = ((l_213 , (((l_193.f3.f2 = l_214) , (l_216 = (l_215 , 1L))) , l_217[3][2])) , ((l_218 , l_219) , l_220));
                }
            }
        }
        l_223[4][0] &= l_222;
        if ((((l_224 , (l_226 &= (l_225 = 4294967295UL))) , l_227[0]) , (l_230[4][1][4] = (l_229[0][1] = l_228))))
        { /* block id: 129 */
            uint64_t l_233 = 18446744073709551613UL;
            uint64_t *l_232 = &l_233;
            uint64_t **l_231[8];
            uint64_t **l_234 = &l_232;
            int i;
            for (i = 0; i < 8; i++)
                l_231[i] = &l_232;
            l_234 = l_231[3];
        }
        else
        { /* block id: 131 */
            int32_t l_235 = 0x7C694546L;
            int32_t l_236 = (-1L);
            uint8_t l_237[7] = {0xE1L,0UL,0xE1L,0xE1L,0UL,0xE1L,0xE1L};
            uint32_t l_240 = 0UL;
            uint16_t l_243 = 6UL;
            int i;
            l_237[0]++;
            l_240++;
            l_227[0].f5.f1 = l_243;
        }
        unsigned int result = 0;
        result += l_172;
        int l_173_i0;
        for (l_173_i0 = 0; l_173_i0 < 4; l_173_i0++) {
            result += l_173[l_173_i0];
        }
        result += l_222;
        int l_223_i0, l_223_i1;
        for (l_223_i0 = 0; l_223_i0 < 6; l_223_i0++) {
            for (l_223_i1 = 0; l_223_i1 < 1; l_223_i1++) {
                result += l_223[l_223_i0][l_223_i1];
            }
        }
        result += l_224;
        result += l_225;
        result += l_226;
        int l_227_i0;
        for (l_227_i0 = 0; l_227_i0 < 9; l_227_i0++) {
            result += l_227[l_227_i0].f0;
            result += l_227[l_227_i0].f1;
            result += l_227[l_227_i0].f2.f0;
            result += l_227[l_227_i0].f2.f1;
            result += l_227[l_227_i0].f2.f2;
            result += l_227[l_227_i0].f2.f3;
            result += l_227[l_227_i0].f2.f4;
            result += l_227[l_227_i0].f2.f5;
            result += l_227[l_227_i0].f2.f6;
            result += l_227[l_227_i0].f2.f7;
            result += l_227[l_227_i0].f2.f8;
            result += l_227[l_227_i0].f3;
            result += l_227[l_227_i0].f4;
            result += l_227[l_227_i0].f5.f0;
            result += l_227[l_227_i0].f5.f1;
            result += l_227[l_227_i0].f5.f2;
            result += l_227[l_227_i0].f5.f3;
            result += l_227[l_227_i0].f6;
            result += l_227[l_227_i0].f7.f0.f0;
            result += l_227[l_227_i0].f7.f0.f1;
            result += l_227[l_227_i0].f7.f0.f2;
            result += l_227[l_227_i0].f7.f0.f3;
            result += l_227[l_227_i0].f7.f1;
            result += l_227[l_227_i0].f7.f2;
            result += l_227[l_227_i0].f8.f0;
            result += l_227[l_227_i0].f8.f1;
            result += l_227[l_227_i0].f8.f2;
            result += l_227[l_227_i0].f8.f3;
            result += l_227[l_227_i0].f8.f4;
            result += l_227[l_227_i0].f8.f5;
            result += l_227[l_227_i0].f8.f6;
        }
        result += l_228;
        int l_229_i0, l_229_i1;
        for (l_229_i0 = 0; l_229_i0 < 2; l_229_i0++) {
            for (l_229_i1 = 0; l_229_i1 < 4; l_229_i1++) {
                result += l_229[l_229_i0][l_229_i1];
            }
        }
        int l_230_i0, l_230_i1, l_230_i2;
        for (l_230_i0 = 0; l_230_i0 < 5; l_230_i0++) {
            for (l_230_i1 = 0; l_230_i1 < 3; l_230_i1++) {
                for (l_230_i2 = 0; l_230_i2 < 8; l_230_i2++) {
                    result += l_230[l_230_i0][l_230_i1][l_230_i2];
                }
            }
        }
        atomic_add(&p_692->g_special_values[85 * get_linear_group_id() + 82], result);
    }
    else
    { /* block id: 136 */
        (1 + 1);
    }
    return &p_692->g_44;
}


/* ------------------------------------------ */
/* 
 * reads : p_692->g_17 p_692->g_63 p_692->g_65 p_692->g_73 p_692->g_7 p_692->g_41 p_692->g_81 p_692->g_119 p_692->g_16 p_692->g_122 p_692->g_128 p_692->g_129 p_692->g_136 p_692->g_137 p_692->g_140 p_692->g_132.f1.f0.f2
 * writes: p_692->g_17 p_692->g_63 p_692->g_65 p_692->g_73 p_692->g_81 p_692->g_96 p_692->g_97 p_692->g_113 p_692->g_121 p_692->g_122 p_692->g_128 p_692->g_136 p_692->g_141 p_692->g_132.f1.f0.f2 p_692->g_145 p_692->g_139
 */
int16_t  func_59(uint8_t ** p_60, struct S7 * p_692)
{ /* block id: 17 */
    uint32_t l_61[8][2][4] = {{{0UL,1UL,1UL,0UL},{0UL,1UL,1UL,0UL}},{{0UL,1UL,1UL,0UL},{0UL,1UL,1UL,0UL}},{{0UL,1UL,1UL,0UL},{0UL,1UL,1UL,0UL}},{{0UL,1UL,1UL,0UL},{0UL,1UL,1UL,0UL}},{{0UL,1UL,1UL,0UL},{0UL,1UL,1UL,0UL}},{{0UL,1UL,1UL,0UL},{0UL,1UL,1UL,0UL}},{{0UL,1UL,1UL,0UL},{0UL,1UL,1UL,0UL}},{{0UL,1UL,1UL,0UL},{0UL,1UL,1UL,0UL}}};
    int32_t l_70 = (-1L);
    int32_t l_72[6][9][4] = {{{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)}},{{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)}},{{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)}},{{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)}},{{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)}},{{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)},{(-6L),(-4L),0x489503A5L,(-4L)}}};
    uint8_t **l_110[6][8][5] = {{{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0}},{{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0}},{{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0}},{{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0}},{{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0}},{{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0},{&p_692->g_16,&p_692->g_16,&p_692->g_16,&p_692->g_16,(void*)0}}};
    uint32_t l_118 = 1UL;
    int32_t l_123 = 0x76563979L;
    int32_t *l_135 = &p_692->g_63[1];
    int32_t *l_138 = &p_692->g_97;
    int32_t *l_148[7] = {&p_692->g_63[1],&p_692->g_63[1],&p_692->g_63[1],&p_692->g_63[1],&p_692->g_63[1],&p_692->g_63[1],&p_692->g_63[1]};
    uint32_t l_149 = 4294967295UL;
    int i, j, k;
    for (p_692->g_17 = 0; (p_692->g_17 <= 1); p_692->g_17 += 1)
    { /* block id: 20 */
        int32_t *l_62 = &p_692->g_63[1];
        int32_t *l_64 = &p_692->g_65;
        int32_t l_66[1][7] = {{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}};
        uint32_t l_67 = 0x10E27A8DL;
        int32_t *l_71[7];
        uint32_t l_93[9][7] = {{0x82F7292FL,4294967287UL,4294967295UL,4294967287UL,0x82F7292FL,0x82F7292FL,4294967287UL},{0x82F7292FL,4294967287UL,4294967295UL,4294967287UL,0x82F7292FL,0x82F7292FL,4294967287UL},{0x82F7292FL,4294967287UL,4294967295UL,4294967287UL,0x82F7292FL,0x82F7292FL,4294967287UL},{0x82F7292FL,4294967287UL,4294967295UL,4294967287UL,0x82F7292FL,0x82F7292FL,4294967287UL},{0x82F7292FL,4294967287UL,4294967295UL,4294967287UL,0x82F7292FL,0x82F7292FL,4294967287UL},{0x82F7292FL,4294967287UL,4294967295UL,4294967287UL,0x82F7292FL,0x82F7292FL,4294967287UL},{0x82F7292FL,4294967287UL,4294967295UL,4294967287UL,0x82F7292FL,0x82F7292FL,4294967287UL},{0x82F7292FL,4294967287UL,4294967295UL,4294967287UL,0x82F7292FL,0x82F7292FL,4294967287UL},{0x82F7292FL,4294967287UL,4294967295UL,4294967287UL,0x82F7292FL,0x82F7292FL,4294967287UL}};
        int i, j;
        for (i = 0; i < 7; i++)
            l_71[i] = &l_70;
        (*l_62) &= l_61[4][1][1];
        (*l_62) = ((*l_64) ^= (*l_62));
        --l_67;
        p_692->g_73++;
        for (p_692->g_65 = 0; (p_692->g_65 <= 1); p_692->g_65 += 1)
        { /* block id: 28 */
            uint32_t l_82[7][3][1] = {{{0x1AF1E100L},{0x1AF1E100L},{0x1AF1E100L}},{{0x1AF1E100L},{0x1AF1E100L},{0x1AF1E100L}},{{0x1AF1E100L},{0x1AF1E100L},{0x1AF1E100L}},{{0x1AF1E100L},{0x1AF1E100L},{0x1AF1E100L}},{{0x1AF1E100L},{0x1AF1E100L},{0x1AF1E100L}},{{0x1AF1E100L},{0x1AF1E100L},{0x1AF1E100L}},{{0x1AF1E100L},{0x1AF1E100L},{0x1AF1E100L}}};
            int32_t *l_114[5] = {&p_692->g_65,&p_692->g_65,&p_692->g_65,&p_692->g_65,&p_692->g_65};
            struct S4 *l_134 = &p_692->g_132;
            int i, j, k;
            if (l_61[6][1][3])
                break;
            for (l_67 = 0; (l_67 <= 1); l_67 += 1)
            { /* block id: 32 */
                int8_t *l_80 = &p_692->g_81;
                int32_t l_111[5][8] = {{(-7L),(-7L),0x06F2BE0BL,0x1B2A2CB7L,5L,0x1B2A2CB7L,0x06F2BE0BL,(-7L)},{(-7L),(-7L),0x06F2BE0BL,0x1B2A2CB7L,5L,0x1B2A2CB7L,0x06F2BE0BL,(-7L)},{(-7L),(-7L),0x06F2BE0BL,0x1B2A2CB7L,5L,0x1B2A2CB7L,0x06F2BE0BL,(-7L)},{(-7L),(-7L),0x06F2BE0BL,0x1B2A2CB7L,5L,0x1B2A2CB7L,0x06F2BE0BL,(-7L)},{(-7L),(-7L),0x06F2BE0BL,0x1B2A2CB7L,5L,0x1B2A2CB7L,0x06F2BE0BL,(-7L)}};
                int16_t *l_112 = &p_692->g_113;
                int i, j, k;
                l_70 = ((safe_sub_func_int32_t_s_s((-1L), (safe_sub_func_int8_t_s_s(((*l_80) = (-1L)), 255UL)))) == ((l_61[(p_692->g_65 + 5)][l_67][(p_692->g_65 + 2)] , ((*l_62) = ((0x1502L == (&p_692->g_17 == l_80)) >= p_692->g_73))) || (0x6AC6L | l_82[4][0][0])));
                if ((safe_rshift_func_uint8_t_u_s(func_85(((safe_rshift_func_int8_t_s_u((((l_61[(p_692->g_65 + 5)][l_67][(p_692->g_65 + 2)] ^ (p_692->g_97 = (l_93[2][2] < (p_692->g_96[6] = (safe_lshift_func_uint8_t_u_u((((*l_62) |= p_692->g_7) == (1L > (l_82[6][2][0] , l_61[(p_692->g_65 + 5)][l_67][(p_692->g_65 + 2)]))), 0)))))) || (safe_lshift_func_uint8_t_u_s((safe_sub_func_uint32_t_u_u((l_61[(p_692->g_65 + 6)][p_692->g_17][l_67] = 0x5E1620D8L), ((safe_mod_func_int64_t_s_s((safe_lshift_func_uint16_t_u_u(((safe_mul_func_int16_t_s_s((((&p_692->g_65 != ((+((*l_112) = (((safe_rshift_func_int16_t_s_s(((void*)0 == l_110[4][6][3]), 8)) , l_111[1][3]) && 6L))) , l_114[3])) >= l_111[3][1]) < 0xBE84L), p_692->g_63[1])) <= 249UL), GROUP_DIVERGE(2, 1))), p_692->g_7)) > l_72[0][3][0]))), 0))) | p_692->g_7), 5)) || l_111[2][0]), p_692->g_17, p_692->g_41, p_692->g_41, &p_692->g_17, p_692), p_692->g_7)))
                { /* block id: 44 */
                    for (l_70 = 1; (l_70 >= 0); l_70 -= 1)
                    { /* block id: 47 */
                        int64_t *l_120[3];
                        int i;
                        for (i = 0; i < 3; i++)
                            l_120[i] = &p_692->g_121;
                        (*l_62) &= (0L && (safe_add_func_int8_t_s_s(((!(l_118 , (p_692->g_81 && ((*l_64) && p_692->g_65)))) || ((p_692->g_119[1][0] , 0xA4L) > (((**p_60) >= ((p_692->g_122 &= (((p_692->g_121 = (p_692->g_73 & l_111[1][3])) < 0x503927B1F4884385L) | 0L)) >= l_123)) & 0L))), 0xC1L)));
                    }
                    l_70 ^= (safe_lshift_func_int16_t_s_u((safe_mul_func_int8_t_s_s((p_692->g_119[1][0].f3.f0 != p_692->g_41), p_692->g_81)), 10));
                    (*p_692->g_129) = p_692->g_128;
                }
                else
                { /* block id: 54 */
                    for (p_692->g_128.f3 = 0; (p_692->g_128.f3 <= 1); p_692->g_128.f3 += 1)
                    { /* block id: 57 */
                        int32_t **l_130 = &l_114[3];
                        struct S4 *l_131 = &p_692->g_132;
                        (*l_130) = (void*)0;
                        l_134 = l_131;
                        (*l_130) = &p_692->g_97;
                        l_135 = l_114[1];
                    }
                    (*p_692->g_137) = p_692->g_136;
                }
            }
        }
    }
    (*p_692->g_140) = l_138;
    for (p_692->g_132.f1.f0.f2 = 0; (p_692->g_132.f1.f0.f2 >= 4); p_692->g_132.f1.f0.f2 = safe_add_func_int8_t_s_s(p_692->g_132.f1.f0.f2, 2))
    { /* block id: 71 */
        int32_t **l_147 = (void*)0;
        int32_t ***l_146[3];
        int i;
        for (i = 0; i < 3; i++)
            l_146[i] = &l_147;
        p_692->g_145 = p_692->g_136.f7.f0;
        p_692->g_139[8] = &p_692->g_141;
    }
    --l_149;
    return p_692->g_128.f2;
}


/* ------------------------------------------ */
/* 
 * reads : p_692->g_63
 * writes:
 */
uint8_t  func_85(int32_t  p_86, int32_t  p_87, int32_t  p_88, uint64_t  p_89, uint8_t * p_90, struct S7 * p_692)
{ /* block id: 41 */
    int32_t *l_115 = &p_692->g_63[1];
    l_115 = l_115;
    return (*l_115);
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    struct S7 c_693;
    struct S7* p_692 = &c_693;
    struct S7 c_694 = {
        1UL, // p_692->g_7
        0xD1L, // p_692->g_10
        0xCEL, // p_692->g_17
        &p_692->g_17, // p_692->g_16
        (-1L), // p_692->g_41
        6UL, // p_692->g_44
        {0x1BD9535FL,0x1BD9535FL,0x1BD9535FL}, // p_692->g_63
        6L, // p_692->g_65
        0x0EL, // p_692->g_73
        0x68L, // p_692->g_81
        {0xA087AC20A80BABE5L,0xA087AC20A80BABE5L,0xA087AC20A80BABE5L,0xA087AC20A80BABE5L,0xA087AC20A80BABE5L,0xA087AC20A80BABE5L,0xA087AC20A80BABE5L,0xA087AC20A80BABE5L}, // p_692->g_96
        5L, // p_692->g_97
        (-1L), // p_692->g_113
        {{{0xFE7F9DC6L,{{18446744073709551615UL,-7L,0x2ED2A57FL,0x42L},-5L,-1L},0xCA65L,{0x1A8809466F024E21L,0xBFD460A75574C4D6L,0xA853L,-8L,0x30FA3D1AAD7911D4L,0x5938EECFL,2UL}},{0x1B29B62CL,{{1UL,2L,0L,0x33L},0x42L,0x0E2A7017L},0xC975L,{-8L,0xAB2D383E86663A56L,0x110DL,-4L,0xE13D98987753CBC6L,0x7211454EL,0x3AD9L}},{0xFE7F9DC6L,{{18446744073709551615UL,-7L,0x2ED2A57FL,0x42L},-5L,-1L},0xCA65L,{0x1A8809466F024E21L,0xBFD460A75574C4D6L,0xA853L,-8L,0x30FA3D1AAD7911D4L,0x5938EECFL,2UL}},{0xFE7F9DC6L,{{18446744073709551615UL,-7L,0x2ED2A57FL,0x42L},-5L,-1L},0xCA65L,{0x1A8809466F024E21L,0xBFD460A75574C4D6L,0xA853L,-8L,0x30FA3D1AAD7911D4L,0x5938EECFL,2UL}},{0x1B29B62CL,{{1UL,2L,0L,0x33L},0x42L,0x0E2A7017L},0xC975L,{-8L,0xAB2D383E86663A56L,0x110DL,-4L,0xE13D98987753CBC6L,0x7211454EL,0x3AD9L}},{0xFE7F9DC6L,{{18446744073709551615UL,-7L,0x2ED2A57FL,0x42L},-5L,-1L},0xCA65L,{0x1A8809466F024E21L,0xBFD460A75574C4D6L,0xA853L,-8L,0x30FA3D1AAD7911D4L,0x5938EECFL,2UL}},{0xFE7F9DC6L,{{18446744073709551615UL,-7L,0x2ED2A57FL,0x42L},-5L,-1L},0xCA65L,{0x1A8809466F024E21L,0xBFD460A75574C4D6L,0xA853L,-8L,0x30FA3D1AAD7911D4L,0x5938EECFL,2UL}},{0x1B29B62CL,{{1UL,2L,0L,0x33L},0x42L,0x0E2A7017L},0xC975L,{-8L,0xAB2D383E86663A56L,0x110DL,-4L,0xE13D98987753CBC6L,0x7211454EL,0x3AD9L}},{0xFE7F9DC6L,{{18446744073709551615UL,-7L,0x2ED2A57FL,0x42L},-5L,-1L},0xCA65L,{0x1A8809466F024E21L,0xBFD460A75574C4D6L,0xA853L,-8L,0x30FA3D1AAD7911D4L,0x5938EECFL,2UL}},{0xFE7F9DC6L,{{18446744073709551615UL,-7L,0x2ED2A57FL,0x42L},-5L,-1L},0xCA65L,{0x1A8809466F024E21L,0xBFD460A75574C4D6L,0xA853L,-8L,0x30FA3D1AAD7911D4L,0x5938EECFL,2UL}}},{{0xFE7F9DC6L,{{18446744073709551615UL,-7L,0x2ED2A57FL,0x42L},-5L,-1L},0xCA65L,{0x1A8809466F024E21L,0xBFD460A75574C4D6L,0xA853L,-8L,0x30FA3D1AAD7911D4L,0x5938EECFL,2UL}},{0x1B29B62CL,{{1UL,2L,0L,0x33L},0x42L,0x0E2A7017L},0xC975L,{-8L,0xAB2D383E86663A56L,0x110DL,-4L,0xE13D98987753CBC6L,0x7211454EL,0x3AD9L}},{0xFE7F9DC6L,{{18446744073709551615UL,-7L,0x2ED2A57FL,0x42L},-5L,-1L},0xCA65L,{0x1A8809466F024E21L,0xBFD460A75574C4D6L,0xA853L,-8L,0x30FA3D1AAD7911D4L,0x5938EECFL,2UL}},{0xFE7F9DC6L,{{18446744073709551615UL,-7L,0x2ED2A57FL,0x42L},-5L,-1L},0xCA65L,{0x1A8809466F024E21L,0xBFD460A75574C4D6L,0xA853L,-8L,0x30FA3D1AAD7911D4L,0x5938EECFL,2UL}},{0x1B29B62CL,{{1UL,2L,0L,0x33L},0x42L,0x0E2A7017L},0xC975L,{-8L,0xAB2D383E86663A56L,0x110DL,-4L,0xE13D98987753CBC6L,0x7211454EL,0x3AD9L}},{0xFE7F9DC6L,{{18446744073709551615UL,-7L,0x2ED2A57FL,0x42L},-5L,-1L},0xCA65L,{0x1A8809466F024E21L,0xBFD460A75574C4D6L,0xA853L,-8L,0x30FA3D1AAD7911D4L,0x5938EECFL,2UL}},{0xFE7F9DC6L,{{18446744073709551615UL,-7L,0x2ED2A57FL,0x42L},-5L,-1L},0xCA65L,{0x1A8809466F024E21L,0xBFD460A75574C4D6L,0xA853L,-8L,0x30FA3D1AAD7911D4L,0x5938EECFL,2UL}},{0x1B29B62CL,{{1UL,2L,0L,0x33L},0x42L,0x0E2A7017L},0xC975L,{-8L,0xAB2D383E86663A56L,0x110DL,-4L,0xE13D98987753CBC6L,0x7211454EL,0x3AD9L}},{0xFE7F9DC6L,{{18446744073709551615UL,-7L,0x2ED2A57FL,0x42L},-5L,-1L},0xCA65L,{0x1A8809466F024E21L,0xBFD460A75574C4D6L,0xA853L,-8L,0x30FA3D1AAD7911D4L,0x5938EECFL,2UL}},{0xFE7F9DC6L,{{18446744073709551615UL,-7L,0x2ED2A57FL,0x42L},-5L,-1L},0xCA65L,{0x1A8809466F024E21L,0xBFD460A75574C4D6L,0xA853L,-8L,0x30FA3D1AAD7911D4L,0x5938EECFL,2UL}}},{{0xFE7F9DC6L,{{18446744073709551615UL,-7L,0x2ED2A57FL,0x42L},-5L,-1L},0xCA65L,{0x1A8809466F024E21L,0xBFD460A75574C4D6L,0xA853L,-8L,0x30FA3D1AAD7911D4L,0x5938EECFL,2UL}},{0x1B29B62CL,{{1UL,2L,0L,0x33L},0x42L,0x0E2A7017L},0xC975L,{-8L,0xAB2D383E86663A56L,0x110DL,-4L,0xE13D98987753CBC6L,0x7211454EL,0x3AD9L}},{0xFE7F9DC6L,{{18446744073709551615UL,-7L,0x2ED2A57FL,0x42L},-5L,-1L},0xCA65L,{0x1A8809466F024E21L,0xBFD460A75574C4D6L,0xA853L,-8L,0x30FA3D1AAD7911D4L,0x5938EECFL,2UL}},{0xFE7F9DC6L,{{18446744073709551615UL,-7L,0x2ED2A57FL,0x42L},-5L,-1L},0xCA65L,{0x1A8809466F024E21L,0xBFD460A75574C4D6L,0xA853L,-8L,0x30FA3D1AAD7911D4L,0x5938EECFL,2UL}},{0x1B29B62CL,{{1UL,2L,0L,0x33L},0x42L,0x0E2A7017L},0xC975L,{-8L,0xAB2D383E86663A56L,0x110DL,-4L,0xE13D98987753CBC6L,0x7211454EL,0x3AD9L}},{0xFE7F9DC6L,{{18446744073709551615UL,-7L,0x2ED2A57FL,0x42L},-5L,-1L},0xCA65L,{0x1A8809466F024E21L,0xBFD460A75574C4D6L,0xA853L,-8L,0x30FA3D1AAD7911D4L,0x5938EECFL,2UL}},{0xFE7F9DC6L,{{18446744073709551615UL,-7L,0x2ED2A57FL,0x42L},-5L,-1L},0xCA65L,{0x1A8809466F024E21L,0xBFD460A75574C4D6L,0xA853L,-8L,0x30FA3D1AAD7911D4L,0x5938EECFL,2UL}},{0x1B29B62CL,{{1UL,2L,0L,0x33L},0x42L,0x0E2A7017L},0xC975L,{-8L,0xAB2D383E86663A56L,0x110DL,-4L,0xE13D98987753CBC6L,0x7211454EL,0x3AD9L}},{0xFE7F9DC6L,{{18446744073709551615UL,-7L,0x2ED2A57FL,0x42L},-5L,-1L},0xCA65L,{0x1A8809466F024E21L,0xBFD460A75574C4D6L,0xA853L,-8L,0x30FA3D1AAD7911D4L,0x5938EECFL,2UL}},{0xFE7F9DC6L,{{18446744073709551615UL,-7L,0x2ED2A57FL,0x42L},-5L,-1L},0xCA65L,{0x1A8809466F024E21L,0xBFD460A75574C4D6L,0xA853L,-8L,0x30FA3D1AAD7911D4L,0x5938EECFL,2UL}}}}, // p_692->g_119
        0x656F6DE51AEE02A2L, // p_692->g_121
        (-5L), // p_692->g_122
        {0x239741CDAEA04E11L,3UL,-1L,0L,-1L,0x15L,0x4434C76BL,0x484E1C3CL,0x84FE049F0CEA68C7L}, // p_692->g_128
        &p_692->g_128, // p_692->g_129
        {0UL,{{0x5E4669C2BD87208DL,1L,1L,-8L},0x67L,0x4BB3C645L},8UL,{3L,18446744073709551612UL,1UL,-1L,0xD86CB6A13B0C0423L,0x488D01BAL,0xC077L}}, // p_692->g_132
        (void*)0, // p_692->g_133
        {0UL,0x27A5F8AFCD1A432AL,{-9L,4294967294UL,0x696B0A0D92CAEC0EL,0x1BB206E1C7F3327DL,2L,0x4CL,1L,0x0A5A0285L,1UL},-1L,1UL,{0x4FDF7665E0C9667DL,0x04ECE7D4L,0x7F507D8CL,0x1FL},1UL,{{0x1D2B3CBE0EAAB095L,0x4D0C483BL,0x63D2101FL,0x4BL},0x76L,0L},{-1L,0xFAC68DCB929261D2L,0x668DL,0x67BA490F008C3D36L,0xCD47ACA14236E2A3L,-5L,1UL}}, // p_692->g_136
        &p_692->g_136, // p_692->g_137
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_692->g_139
        (void*)0, // p_692->g_141
        &p_692->g_141, // p_692->g_140
        (void*)0, // p_692->g_144
        {0xF628736EE149B324L,-1L,1L,1L}, // p_692->g_145
        &p_692->g_136.f8.f4, // p_692->g_246
        &p_692->g_141, // p_692->g_266
        {{18446744073709551615UL,0x5951E3A4L,-1L,0x7AL},0x1DL,-3L}, // p_692->g_290
        {1UL,1L,{9L,4294967288UL,0x5999DEDE0EA05DB0L,8L,-4L,0x64L,0x23DE209CL,-3L,0x6AB63B21F9E79A50L},0L,0x92L,{0x4FCC782DE1E73F34L,1L,0x176BEA2CL,1L},0x39E3E908E1C891DFL,{{18446744073709551611UL,0x239BC3E9L,0x5A303A25L,4L},1L,-1L},{0x7CCA2D379F7206BCL,0xF23D120513A71641L,0x3A46L,0L,18446744073709551615UL,-5L,0UL}}, // p_692->g_296
        {{4294967295UL,0xBB07578BL,0x704F8887L,0xBB07578BL,4294967295UL},{4294967295UL,0xBB07578BL,0x704F8887L,0xBB07578BL,4294967295UL},{4294967295UL,0xBB07578BL,0x704F8887L,0xBB07578BL,4294967295UL},{4294967295UL,0xBB07578BL,0x704F8887L,0xBB07578BL,4294967295UL},{4294967295UL,0xBB07578BL,0x704F8887L,0xBB07578BL,4294967295UL},{4294967295UL,0xBB07578BL,0x704F8887L,0xBB07578BL,4294967295UL},{4294967295UL,0xBB07578BL,0x704F8887L,0xBB07578BL,4294967295UL},{4294967295UL,0xBB07578BL,0x704F8887L,0xBB07578BL,4294967295UL},{4294967295UL,0xBB07578BL,0x704F8887L,0xBB07578BL,4294967295UL},{4294967295UL,0xBB07578BL,0x704F8887L,0xBB07578BL,4294967295UL}}, // p_692->g_307
        {{{{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}}},{{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}}},{{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}}}},{{{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}}},{{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}}},{{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}}}},{{{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}}},{{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}}},{{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}}}},{{{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}}},{{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}}},{{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}},{0x5DFCL,0x776F6827F0345F46L,{0x5106A1B041698D88L,1UL,0x597E972E4EED9A08L,1L,0x36L,0x7EL,0x7449C447L,0x74FEB101L,0x36D8CD2DE1CC61AEL},0L,0x9FL,{0x93DDF9D1A7B98434L,0x749A3D4BL,-4L,0x14L},1UL,{{0x40093D9BAE1A4044L,8L,0x2E138C7DL,0x21L},0x61L,0x0A9DB2C5L},{3L,0x595ED0CD5047B8A7L,4UL,0x7B26F7878195A593L,0UL,0x4FCE40A3L,0xB3B1L}}}}}, // p_692->g_341
        {{&p_692->g_133,&p_692->g_133,(void*)0,&p_692->g_133,(void*)0,&p_692->g_133,&p_692->g_133},{&p_692->g_133,&p_692->g_133,(void*)0,&p_692->g_133,(void*)0,&p_692->g_133,&p_692->g_133},{&p_692->g_133,&p_692->g_133,(void*)0,&p_692->g_133,(void*)0,&p_692->g_133,&p_692->g_133},{&p_692->g_133,&p_692->g_133,(void*)0,&p_692->g_133,(void*)0,&p_692->g_133,&p_692->g_133}}, // p_692->g_392
        &p_692->g_133, // p_692->g_393
        &p_692->g_246, // p_692->g_433
        &p_692->g_433, // p_692->g_432
        &p_692->g_132, // p_692->g_445
        &p_692->g_445, // p_692->g_444
        &p_692->g_444, // p_692->g_443
        {{0x1489D0964D1F215EL,18446744073709551612UL,0x8A3FL,-8L,0x95C3D56AD2DC52A4L,1L,0x9FA5L}}, // p_692->g_449
        (void*)0, // p_692->g_461
        (void*)0, // p_692->g_463
        &p_692->g_463, // p_692->g_462
        3L, // p_692->g_470
        {{0x1B7B963101311568L,0x64CBEB58L,1L,0x21L},{0x1B7B963101311568L,0x64CBEB58L,1L,0x21L},{0x1B7B963101311568L,0x64CBEB58L,1L,0x21L}}, // p_692->g_475
        {4L,0xDFBFFE980547E500L,0xE7F5L,0x099DC12806C9A9F0L,8UL,0x07E8459BL,0xBEB9L}, // p_692->g_506
        {{&p_692->g_141,&p_692->g_141,&p_692->g_141,&p_692->g_141,&p_692->g_141},{&p_692->g_141,&p_692->g_141,&p_692->g_141,&p_692->g_141,&p_692->g_141},{&p_692->g_141,&p_692->g_141,&p_692->g_141,&p_692->g_141,&p_692->g_141}}, // p_692->g_511
        {0x2CBA295C0227CE15L,18446744073709551613UL,0x3D4BL,-2L,0xCD211079E005C4E8L,0x16000935L,65534UL}, // p_692->g_515
        {0x6C0B07522E0205EEL,0UL,0x16BFL,0x545366B95CB8CB15L,0x186AAD0C221C41A8L,-1L,0xDB46L}, // p_692->g_516
        {&p_692->g_141,&p_692->g_141,&p_692->g_141,&p_692->g_141,&p_692->g_141,&p_692->g_141,&p_692->g_141,&p_692->g_141,&p_692->g_141}, // p_692->g_520
        &p_692->g_141, // p_692->g_521
        (void*)0, // p_692->g_531
        &p_692->g_141, // p_692->g_532
        {{{{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL}},{{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL}},{{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL}}},{{{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL}},{{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL}},{{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL}}},{{{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL}},{{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL}},{{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL}}},{{{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL}},{{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL}},{{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL}}},{{{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL}},{{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL}},{{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL}}},{{{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL}},{{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL}},{{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL}}},{{{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL}},{{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL}},{{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL}}},{{{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL}},{{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL}},{{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL}}},{{{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL}},{{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL}},{{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,1L,0x47A0A830L,0x29L},-1L,0L},{{1UL,0x1E7A2DE4L,0L,0x10L},0x5CL,0x49A627BCL}}}}, // p_692->g_550
        {&p_692->g_290,&p_692->g_290,&p_692->g_290,&p_692->g_290,&p_692->g_290,&p_692->g_290,&p_692->g_290,&p_692->g_290,&p_692->g_290}, // p_692->g_551
        &p_692->g_290, // p_692->g_552
        (void*)0, // p_692->g_566
        &p_692->g_63[1], // p_692->g_568
        &p_692->g_16, // p_692->g_571
        &p_692->g_571, // p_692->g_570
        4294967294UL, // p_692->g_587
        0xAD4126B9L, // p_692->g_610
        (-1L), // p_692->g_614
        {0x6C48D0945E0E8872L,3L,0x64A3EEB8L,-8L}, // p_692->g_622
        sequence_input[get_global_id(0)], // p_692->global_0_offset
        sequence_input[get_global_id(1)], // p_692->global_1_offset
        sequence_input[get_global_id(2)], // p_692->global_2_offset
        sequence_input[get_local_id(0)], // p_692->local_0_offset
        sequence_input[get_local_id(1)], // p_692->local_1_offset
        sequence_input[get_local_id(2)], // p_692->local_2_offset
        sequence_input[get_group_id(0)], // p_692->group_0_offset
        sequence_input[get_group_id(1)], // p_692->group_1_offset
        sequence_input[get_group_id(2)], // p_692->group_2_offset
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_693 = c_694;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_692);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_692->g_7, "p_692->g_7", print_hash_value);
    transparent_crc(p_692->g_10, "p_692->g_10", print_hash_value);
    transparent_crc(p_692->g_17, "p_692->g_17", print_hash_value);
    transparent_crc(p_692->g_41, "p_692->g_41", print_hash_value);
    transparent_crc(p_692->g_44, "p_692->g_44", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_692->g_63[i], "p_692->g_63[i]", print_hash_value);

    }
    transparent_crc(p_692->g_65, "p_692->g_65", print_hash_value);
    transparent_crc(p_692->g_73, "p_692->g_73", print_hash_value);
    transparent_crc(p_692->g_81, "p_692->g_81", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_692->g_96[i], "p_692->g_96[i]", print_hash_value);

    }
    transparent_crc(p_692->g_97, "p_692->g_97", print_hash_value);
    transparent_crc(p_692->g_113, "p_692->g_113", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_692->g_119[i][j].f0, "p_692->g_119[i][j].f0", print_hash_value);
            transparent_crc(p_692->g_119[i][j].f1.f0.f0, "p_692->g_119[i][j].f1.f0.f0", print_hash_value);
            transparent_crc(p_692->g_119[i][j].f1.f0.f1, "p_692->g_119[i][j].f1.f0.f1", print_hash_value);
            transparent_crc(p_692->g_119[i][j].f1.f0.f2, "p_692->g_119[i][j].f1.f0.f2", print_hash_value);
            transparent_crc(p_692->g_119[i][j].f1.f0.f3, "p_692->g_119[i][j].f1.f0.f3", print_hash_value);
            transparent_crc(p_692->g_119[i][j].f1.f1, "p_692->g_119[i][j].f1.f1", print_hash_value);
            transparent_crc(p_692->g_119[i][j].f1.f2, "p_692->g_119[i][j].f1.f2", print_hash_value);
            transparent_crc(p_692->g_119[i][j].f2, "p_692->g_119[i][j].f2", print_hash_value);
            transparent_crc(p_692->g_119[i][j].f3.f0, "p_692->g_119[i][j].f3.f0", print_hash_value);
            transparent_crc(p_692->g_119[i][j].f3.f1, "p_692->g_119[i][j].f3.f1", print_hash_value);
            transparent_crc(p_692->g_119[i][j].f3.f2, "p_692->g_119[i][j].f3.f2", print_hash_value);
            transparent_crc(p_692->g_119[i][j].f3.f3, "p_692->g_119[i][j].f3.f3", print_hash_value);
            transparent_crc(p_692->g_119[i][j].f3.f4, "p_692->g_119[i][j].f3.f4", print_hash_value);
            transparent_crc(p_692->g_119[i][j].f3.f5, "p_692->g_119[i][j].f3.f5", print_hash_value);
            transparent_crc(p_692->g_119[i][j].f3.f6, "p_692->g_119[i][j].f3.f6", print_hash_value);

        }
    }
    transparent_crc(p_692->g_121, "p_692->g_121", print_hash_value);
    transparent_crc(p_692->g_122, "p_692->g_122", print_hash_value);
    transparent_crc(p_692->g_128.f0, "p_692->g_128.f0", print_hash_value);
    transparent_crc(p_692->g_128.f1, "p_692->g_128.f1", print_hash_value);
    transparent_crc(p_692->g_128.f2, "p_692->g_128.f2", print_hash_value);
    transparent_crc(p_692->g_128.f3, "p_692->g_128.f3", print_hash_value);
    transparent_crc(p_692->g_128.f4, "p_692->g_128.f4", print_hash_value);
    transparent_crc(p_692->g_128.f5, "p_692->g_128.f5", print_hash_value);
    transparent_crc(p_692->g_128.f6, "p_692->g_128.f6", print_hash_value);
    transparent_crc(p_692->g_128.f7, "p_692->g_128.f7", print_hash_value);
    transparent_crc(p_692->g_128.f8, "p_692->g_128.f8", print_hash_value);
    transparent_crc(p_692->g_132.f0, "p_692->g_132.f0", print_hash_value);
    transparent_crc(p_692->g_132.f1.f0.f0, "p_692->g_132.f1.f0.f0", print_hash_value);
    transparent_crc(p_692->g_132.f1.f0.f1, "p_692->g_132.f1.f0.f1", print_hash_value);
    transparent_crc(p_692->g_132.f1.f0.f2, "p_692->g_132.f1.f0.f2", print_hash_value);
    transparent_crc(p_692->g_132.f1.f0.f3, "p_692->g_132.f1.f0.f3", print_hash_value);
    transparent_crc(p_692->g_132.f1.f1, "p_692->g_132.f1.f1", print_hash_value);
    transparent_crc(p_692->g_132.f1.f2, "p_692->g_132.f1.f2", print_hash_value);
    transparent_crc(p_692->g_132.f2, "p_692->g_132.f2", print_hash_value);
    transparent_crc(p_692->g_132.f3.f0, "p_692->g_132.f3.f0", print_hash_value);
    transparent_crc(p_692->g_132.f3.f1, "p_692->g_132.f3.f1", print_hash_value);
    transparent_crc(p_692->g_132.f3.f2, "p_692->g_132.f3.f2", print_hash_value);
    transparent_crc(p_692->g_132.f3.f3, "p_692->g_132.f3.f3", print_hash_value);
    transparent_crc(p_692->g_132.f3.f4, "p_692->g_132.f3.f4", print_hash_value);
    transparent_crc(p_692->g_132.f3.f5, "p_692->g_132.f3.f5", print_hash_value);
    transparent_crc(p_692->g_132.f3.f6, "p_692->g_132.f3.f6", print_hash_value);
    transparent_crc(p_692->g_136.f0, "p_692->g_136.f0", print_hash_value);
    transparent_crc(p_692->g_136.f1, "p_692->g_136.f1", print_hash_value);
    transparent_crc(p_692->g_136.f2.f0, "p_692->g_136.f2.f0", print_hash_value);
    transparent_crc(p_692->g_136.f2.f1, "p_692->g_136.f2.f1", print_hash_value);
    transparent_crc(p_692->g_136.f2.f2, "p_692->g_136.f2.f2", print_hash_value);
    transparent_crc(p_692->g_136.f2.f3, "p_692->g_136.f2.f3", print_hash_value);
    transparent_crc(p_692->g_136.f2.f4, "p_692->g_136.f2.f4", print_hash_value);
    transparent_crc(p_692->g_136.f2.f5, "p_692->g_136.f2.f5", print_hash_value);
    transparent_crc(p_692->g_136.f2.f6, "p_692->g_136.f2.f6", print_hash_value);
    transparent_crc(p_692->g_136.f2.f7, "p_692->g_136.f2.f7", print_hash_value);
    transparent_crc(p_692->g_136.f2.f8, "p_692->g_136.f2.f8", print_hash_value);
    transparent_crc(p_692->g_136.f3, "p_692->g_136.f3", print_hash_value);
    transparent_crc(p_692->g_136.f4, "p_692->g_136.f4", print_hash_value);
    transparent_crc(p_692->g_136.f5.f0, "p_692->g_136.f5.f0", print_hash_value);
    transparent_crc(p_692->g_136.f5.f1, "p_692->g_136.f5.f1", print_hash_value);
    transparent_crc(p_692->g_136.f5.f2, "p_692->g_136.f5.f2", print_hash_value);
    transparent_crc(p_692->g_136.f5.f3, "p_692->g_136.f5.f3", print_hash_value);
    transparent_crc(p_692->g_136.f6, "p_692->g_136.f6", print_hash_value);
    transparent_crc(p_692->g_136.f7.f0.f0, "p_692->g_136.f7.f0.f0", print_hash_value);
    transparent_crc(p_692->g_136.f7.f0.f1, "p_692->g_136.f7.f0.f1", print_hash_value);
    transparent_crc(p_692->g_136.f7.f0.f2, "p_692->g_136.f7.f0.f2", print_hash_value);
    transparent_crc(p_692->g_136.f7.f0.f3, "p_692->g_136.f7.f0.f3", print_hash_value);
    transparent_crc(p_692->g_136.f7.f1, "p_692->g_136.f7.f1", print_hash_value);
    transparent_crc(p_692->g_136.f7.f2, "p_692->g_136.f7.f2", print_hash_value);
    transparent_crc(p_692->g_136.f8.f0, "p_692->g_136.f8.f0", print_hash_value);
    transparent_crc(p_692->g_136.f8.f1, "p_692->g_136.f8.f1", print_hash_value);
    transparent_crc(p_692->g_136.f8.f2, "p_692->g_136.f8.f2", print_hash_value);
    transparent_crc(p_692->g_136.f8.f3, "p_692->g_136.f8.f3", print_hash_value);
    transparent_crc(p_692->g_136.f8.f4, "p_692->g_136.f8.f4", print_hash_value);
    transparent_crc(p_692->g_136.f8.f5, "p_692->g_136.f8.f5", print_hash_value);
    transparent_crc(p_692->g_136.f8.f6, "p_692->g_136.f8.f6", print_hash_value);
    transparent_crc(p_692->g_145.f0, "p_692->g_145.f0", print_hash_value);
    transparent_crc(p_692->g_145.f1, "p_692->g_145.f1", print_hash_value);
    transparent_crc(p_692->g_145.f2, "p_692->g_145.f2", print_hash_value);
    transparent_crc(p_692->g_145.f3, "p_692->g_145.f3", print_hash_value);
    transparent_crc(p_692->g_290.f0.f0, "p_692->g_290.f0.f0", print_hash_value);
    transparent_crc(p_692->g_290.f0.f1, "p_692->g_290.f0.f1", print_hash_value);
    transparent_crc(p_692->g_290.f0.f2, "p_692->g_290.f0.f2", print_hash_value);
    transparent_crc(p_692->g_290.f0.f3, "p_692->g_290.f0.f3", print_hash_value);
    transparent_crc(p_692->g_290.f1, "p_692->g_290.f1", print_hash_value);
    transparent_crc(p_692->g_290.f2, "p_692->g_290.f2", print_hash_value);
    transparent_crc(p_692->g_296.f0, "p_692->g_296.f0", print_hash_value);
    transparent_crc(p_692->g_296.f1, "p_692->g_296.f1", print_hash_value);
    transparent_crc(p_692->g_296.f2.f0, "p_692->g_296.f2.f0", print_hash_value);
    transparent_crc(p_692->g_296.f2.f1, "p_692->g_296.f2.f1", print_hash_value);
    transparent_crc(p_692->g_296.f2.f2, "p_692->g_296.f2.f2", print_hash_value);
    transparent_crc(p_692->g_296.f2.f3, "p_692->g_296.f2.f3", print_hash_value);
    transparent_crc(p_692->g_296.f2.f4, "p_692->g_296.f2.f4", print_hash_value);
    transparent_crc(p_692->g_296.f2.f5, "p_692->g_296.f2.f5", print_hash_value);
    transparent_crc(p_692->g_296.f2.f6, "p_692->g_296.f2.f6", print_hash_value);
    transparent_crc(p_692->g_296.f2.f7, "p_692->g_296.f2.f7", print_hash_value);
    transparent_crc(p_692->g_296.f2.f8, "p_692->g_296.f2.f8", print_hash_value);
    transparent_crc(p_692->g_296.f3, "p_692->g_296.f3", print_hash_value);
    transparent_crc(p_692->g_296.f4, "p_692->g_296.f4", print_hash_value);
    transparent_crc(p_692->g_296.f5.f0, "p_692->g_296.f5.f0", print_hash_value);
    transparent_crc(p_692->g_296.f5.f1, "p_692->g_296.f5.f1", print_hash_value);
    transparent_crc(p_692->g_296.f5.f2, "p_692->g_296.f5.f2", print_hash_value);
    transparent_crc(p_692->g_296.f5.f3, "p_692->g_296.f5.f3", print_hash_value);
    transparent_crc(p_692->g_296.f6, "p_692->g_296.f6", print_hash_value);
    transparent_crc(p_692->g_296.f7.f0.f0, "p_692->g_296.f7.f0.f0", print_hash_value);
    transparent_crc(p_692->g_296.f7.f0.f1, "p_692->g_296.f7.f0.f1", print_hash_value);
    transparent_crc(p_692->g_296.f7.f0.f2, "p_692->g_296.f7.f0.f2", print_hash_value);
    transparent_crc(p_692->g_296.f7.f0.f3, "p_692->g_296.f7.f0.f3", print_hash_value);
    transparent_crc(p_692->g_296.f7.f1, "p_692->g_296.f7.f1", print_hash_value);
    transparent_crc(p_692->g_296.f7.f2, "p_692->g_296.f7.f2", print_hash_value);
    transparent_crc(p_692->g_296.f8.f0, "p_692->g_296.f8.f0", print_hash_value);
    transparent_crc(p_692->g_296.f8.f1, "p_692->g_296.f8.f1", print_hash_value);
    transparent_crc(p_692->g_296.f8.f2, "p_692->g_296.f8.f2", print_hash_value);
    transparent_crc(p_692->g_296.f8.f3, "p_692->g_296.f8.f3", print_hash_value);
    transparent_crc(p_692->g_296.f8.f4, "p_692->g_296.f8.f4", print_hash_value);
    transparent_crc(p_692->g_296.f8.f5, "p_692->g_296.f8.f5", print_hash_value);
    transparent_crc(p_692->g_296.f8.f6, "p_692->g_296.f8.f6", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_692->g_307[i][j], "p_692->g_307[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_692->g_341[i][j][k].f0, "p_692->g_341[i][j][k].f0", print_hash_value);
                transparent_crc(p_692->g_341[i][j][k].f1, "p_692->g_341[i][j][k].f1", print_hash_value);
                transparent_crc(p_692->g_341[i][j][k].f2.f0, "p_692->g_341[i][j][k].f2.f0", print_hash_value);
                transparent_crc(p_692->g_341[i][j][k].f2.f1, "p_692->g_341[i][j][k].f2.f1", print_hash_value);
                transparent_crc(p_692->g_341[i][j][k].f2.f2, "p_692->g_341[i][j][k].f2.f2", print_hash_value);
                transparent_crc(p_692->g_341[i][j][k].f2.f3, "p_692->g_341[i][j][k].f2.f3", print_hash_value);
                transparent_crc(p_692->g_341[i][j][k].f2.f4, "p_692->g_341[i][j][k].f2.f4", print_hash_value);
                transparent_crc(p_692->g_341[i][j][k].f2.f5, "p_692->g_341[i][j][k].f2.f5", print_hash_value);
                transparent_crc(p_692->g_341[i][j][k].f2.f6, "p_692->g_341[i][j][k].f2.f6", print_hash_value);
                transparent_crc(p_692->g_341[i][j][k].f2.f7, "p_692->g_341[i][j][k].f2.f7", print_hash_value);
                transparent_crc(p_692->g_341[i][j][k].f2.f8, "p_692->g_341[i][j][k].f2.f8", print_hash_value);
                transparent_crc(p_692->g_341[i][j][k].f3, "p_692->g_341[i][j][k].f3", print_hash_value);
                transparent_crc(p_692->g_341[i][j][k].f4, "p_692->g_341[i][j][k].f4", print_hash_value);
                transparent_crc(p_692->g_341[i][j][k].f5.f0, "p_692->g_341[i][j][k].f5.f0", print_hash_value);
                transparent_crc(p_692->g_341[i][j][k].f5.f1, "p_692->g_341[i][j][k].f5.f1", print_hash_value);
                transparent_crc(p_692->g_341[i][j][k].f5.f2, "p_692->g_341[i][j][k].f5.f2", print_hash_value);
                transparent_crc(p_692->g_341[i][j][k].f5.f3, "p_692->g_341[i][j][k].f5.f3", print_hash_value);
                transparent_crc(p_692->g_341[i][j][k].f6, "p_692->g_341[i][j][k].f6", print_hash_value);
                transparent_crc(p_692->g_341[i][j][k].f7.f0.f0, "p_692->g_341[i][j][k].f7.f0.f0", print_hash_value);
                transparent_crc(p_692->g_341[i][j][k].f7.f0.f1, "p_692->g_341[i][j][k].f7.f0.f1", print_hash_value);
                transparent_crc(p_692->g_341[i][j][k].f7.f0.f2, "p_692->g_341[i][j][k].f7.f0.f2", print_hash_value);
                transparent_crc(p_692->g_341[i][j][k].f7.f0.f3, "p_692->g_341[i][j][k].f7.f0.f3", print_hash_value);
                transparent_crc(p_692->g_341[i][j][k].f7.f1, "p_692->g_341[i][j][k].f7.f1", print_hash_value);
                transparent_crc(p_692->g_341[i][j][k].f7.f2, "p_692->g_341[i][j][k].f7.f2", print_hash_value);
                transparent_crc(p_692->g_341[i][j][k].f8.f0, "p_692->g_341[i][j][k].f8.f0", print_hash_value);
                transparent_crc(p_692->g_341[i][j][k].f8.f1, "p_692->g_341[i][j][k].f8.f1", print_hash_value);
                transparent_crc(p_692->g_341[i][j][k].f8.f2, "p_692->g_341[i][j][k].f8.f2", print_hash_value);
                transparent_crc(p_692->g_341[i][j][k].f8.f3, "p_692->g_341[i][j][k].f8.f3", print_hash_value);
                transparent_crc(p_692->g_341[i][j][k].f8.f4, "p_692->g_341[i][j][k].f8.f4", print_hash_value);
                transparent_crc(p_692->g_341[i][j][k].f8.f5, "p_692->g_341[i][j][k].f8.f5", print_hash_value);
                transparent_crc(p_692->g_341[i][j][k].f8.f6, "p_692->g_341[i][j][k].f8.f6", print_hash_value);

            }
        }
    }
    transparent_crc(p_692->g_449.f0.f0, "p_692->g_449.f0.f0", print_hash_value);
    transparent_crc(p_692->g_449.f0.f1, "p_692->g_449.f0.f1", print_hash_value);
    transparent_crc(p_692->g_449.f0.f2, "p_692->g_449.f0.f2", print_hash_value);
    transparent_crc(p_692->g_449.f0.f3, "p_692->g_449.f0.f3", print_hash_value);
    transparent_crc(p_692->g_449.f0.f4, "p_692->g_449.f0.f4", print_hash_value);
    transparent_crc(p_692->g_449.f0.f5, "p_692->g_449.f0.f5", print_hash_value);
    transparent_crc(p_692->g_449.f0.f6, "p_692->g_449.f0.f6", print_hash_value);
    transparent_crc(p_692->g_470, "p_692->g_470", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_692->g_475[i].f0, "p_692->g_475[i].f0", print_hash_value);
        transparent_crc(p_692->g_475[i].f1, "p_692->g_475[i].f1", print_hash_value);
        transparent_crc(p_692->g_475[i].f2, "p_692->g_475[i].f2", print_hash_value);
        transparent_crc(p_692->g_475[i].f3, "p_692->g_475[i].f3", print_hash_value);

    }
    transparent_crc(p_692->g_506.f0, "p_692->g_506.f0", print_hash_value);
    transparent_crc(p_692->g_506.f1, "p_692->g_506.f1", print_hash_value);
    transparent_crc(p_692->g_506.f2, "p_692->g_506.f2", print_hash_value);
    transparent_crc(p_692->g_506.f3, "p_692->g_506.f3", print_hash_value);
    transparent_crc(p_692->g_506.f4, "p_692->g_506.f4", print_hash_value);
    transparent_crc(p_692->g_506.f5, "p_692->g_506.f5", print_hash_value);
    transparent_crc(p_692->g_506.f6, "p_692->g_506.f6", print_hash_value);
    transparent_crc(p_692->g_515.f0, "p_692->g_515.f0", print_hash_value);
    transparent_crc(p_692->g_515.f1, "p_692->g_515.f1", print_hash_value);
    transparent_crc(p_692->g_515.f2, "p_692->g_515.f2", print_hash_value);
    transparent_crc(p_692->g_515.f3, "p_692->g_515.f3", print_hash_value);
    transparent_crc(p_692->g_515.f4, "p_692->g_515.f4", print_hash_value);
    transparent_crc(p_692->g_515.f5, "p_692->g_515.f5", print_hash_value);
    transparent_crc(p_692->g_515.f6, "p_692->g_515.f6", print_hash_value);
    transparent_crc(p_692->g_516.f0, "p_692->g_516.f0", print_hash_value);
    transparent_crc(p_692->g_516.f1, "p_692->g_516.f1", print_hash_value);
    transparent_crc(p_692->g_516.f2, "p_692->g_516.f2", print_hash_value);
    transparent_crc(p_692->g_516.f3, "p_692->g_516.f3", print_hash_value);
    transparent_crc(p_692->g_516.f4, "p_692->g_516.f4", print_hash_value);
    transparent_crc(p_692->g_516.f5, "p_692->g_516.f5", print_hash_value);
    transparent_crc(p_692->g_516.f6, "p_692->g_516.f6", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_692->g_550[i][j][k].f0.f0, "p_692->g_550[i][j][k].f0.f0", print_hash_value);
                transparent_crc(p_692->g_550[i][j][k].f0.f1, "p_692->g_550[i][j][k].f0.f1", print_hash_value);
                transparent_crc(p_692->g_550[i][j][k].f0.f2, "p_692->g_550[i][j][k].f0.f2", print_hash_value);
                transparent_crc(p_692->g_550[i][j][k].f0.f3, "p_692->g_550[i][j][k].f0.f3", print_hash_value);
                transparent_crc(p_692->g_550[i][j][k].f1, "p_692->g_550[i][j][k].f1", print_hash_value);
                transparent_crc(p_692->g_550[i][j][k].f2, "p_692->g_550[i][j][k].f2", print_hash_value);

            }
        }
    }
    transparent_crc(p_692->g_587, "p_692->g_587", print_hash_value);
    transparent_crc(p_692->g_610, "p_692->g_610", print_hash_value);
    transparent_crc(p_692->g_614, "p_692->g_614", print_hash_value);
    transparent_crc(p_692->g_622.f0, "p_692->g_622.f0", print_hash_value);
    transparent_crc(p_692->g_622.f1, "p_692->g_622.f1", print_hash_value);
    transparent_crc(p_692->g_622.f2, "p_692->g_622.f2", print_hash_value);
    transparent_crc(p_692->g_622.f3, "p_692->g_622.f3", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 85; i++)
            transparent_crc(p_692->g_special_values[i + 85 * get_linear_group_id()], "p_692->g_special_values[i + 85 * get_linear_group_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
