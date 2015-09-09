// ---fake_divergence -g 60,94,1 -l 15,1,1
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


// Seed: 106

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint32_t  f0;
   uint64_t  f1;
   volatile uint16_t  f2;
};

struct S1 {
   volatile int32_t  f0;
   int32_t  f1;
   volatile uint32_t  f2;
   uint64_t  f3;
   int64_t  f4;
   volatile int16_t  f5;
   uint16_t  f6;
   volatile struct S0  f7;
   volatile int64_t  f8;
};

struct S2 {
   uint64_t  f0;
   int64_t  f1;
   volatile int64_t  f2;
   int64_t  f3;
   uint32_t  f4;
   volatile uint32_t  f5;
   int32_t  f6;
   uint16_t  f7;
};

struct S3 {
   volatile int32_t  f0;
   uint32_t  f1;
   int32_t  f2;
   uint64_t  f3;
   uint32_t  f4;
   int32_t  f5;
   int32_t  f6;
   int32_t  f7;
   int64_t  f8;
};

struct S4 {
   struct S3  f0;
   volatile int64_t  f1;
   int32_t  f2;
   int32_t  f3;
   uint16_t  f4;
   volatile uint8_t  f5;
};

struct S5 {
   struct S0  f0;
   volatile int32_t  f1;
   struct S2  f2;
   int32_t  f3;
   uint32_t  f4;
   struct S2  f5;
   volatile int64_t  f6;
   uint64_t  f7;
};

union U6 {
   int32_t  f0;
   uint16_t  f1;
   int64_t  f2;
   int64_t  f3;
};

struct S7 {
    volatile uint64_t g_6;
    uint16_t g_19;
    uint32_t g_26;
    int32_t g_28;
    uint16_t g_31;
    uint16_t *g_30;
    volatile int32_t g_35;
    volatile int32_t *g_34;
    int32_t g_42;
    int16_t g_65[1];
    int32_t g_67;
    int8_t g_78;
    int32_t g_94;
    uint32_t g_97;
    struct S3 g_99;
    struct S3 *g_125;
    struct S3 * volatile *g_124[8][10][3];
    uint16_t g_146;
    uint16_t *g_145;
    uint8_t g_195;
    uint8_t g_198;
    int32_t *g_207;
    uint8_t g_246[5][8];
    uint64_t g_254;
    struct S3 g_256[7][3];
    struct S3 g_258;
    struct S3 g_274;
    uint16_t g_310[5][1][1];
    int16_t g_344[10];
    struct S0 g_405;
    struct S0 *g_404;
    uint32_t g_427;
    struct S0 g_458;
    struct S4 g_497;
    struct S4 g_499[10];
    struct S4 *g_498;
    struct S2 g_510;
    uint16_t * volatile *g_562;
    uint16_t * volatile * volatile *g_561;
    uint64_t *g_591[1][5][2];
    struct S1 g_642;
    struct S1 g_643;
    struct S1 g_644;
    struct S1 g_645;
    struct S1 g_649;
    struct S1 g_651[1];
    union U6 g_657;
    int32_t g_672;
    struct S4 g_677;
    struct S3 g_698;
    volatile struct S2 g_709;
    volatile struct S2 * volatile g_710;
    struct S5 g_711;
    struct S5 * volatile g_712;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
};


/* --- FORWARD DECLARATIONS --- */
struct S4  func_1(struct S7 * p_713);
struct S5  func_2(uint32_t  p_3, struct S7 * p_713);
uint64_t  func_7(uint16_t  p_8, uint64_t  p_9, int32_t  p_10, union U6  p_11, struct S7 * p_713);
uint16_t  func_12(uint32_t  p_13, int64_t  p_14, uint32_t  p_15, int64_t  p_16, struct S7 * p_713);
uint8_t  func_20(uint16_t * p_21, uint16_t * p_22, uint16_t * p_23, struct S7 * p_713);
uint16_t * func_24(uint16_t  p_25, struct S7 * p_713);
int16_t  func_37(int32_t * p_38, uint16_t  p_39, uint32_t  p_40, struct S7 * p_713);
int64_t  func_49(uint32_t  p_50, int16_t  p_51, struct S7 * p_713);
int32_t * func_54(int32_t * p_55, struct S7 * p_713);
int32_t * func_56(int32_t  p_57, int64_t  p_58, uint8_t  p_59, int32_t * p_60, int32_t  p_61, struct S7 * p_713);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_713->g_6 p_713->g_19 p_713->g_26 p_713->g_30 p_713->g_31 p_713->g_42 p_713->g_657 p_713->g_94 p_713->g_195 p_713->g_672 p_713->g_562 p_713->g_145 p_713->g_146 p_713->g_499.f0.f4 p_713->g_256.f2 p_713->g_258.f5 p_713->g_510.f7 p_713->g_97 p_713->g_645.f1 p_713->g_258.f7 p_713->g_677.f0.f3 p_713->g_207 p_713->g_427 p_713->g_99.f1 p_713->g_709 p_713->g_710 p_713->g_711 p_713->g_712 p_713->g_498 p_713->g_499
 * writes: p_713->g_19 p_713->g_28 p_713->g_34 p_713->g_42 p_713->g_195 p_713->g_256.f2 p_713->g_677.f0.f3 p_713->g_427 p_713->g_258.f1 p_713->g_405.f0 p_713->g_99.f1 p_713->g_125 p_713->g_94 p_713->g_709 p_713->g_711
 */
struct S4  func_1(struct S7 * p_713)
{ /* block id: 4 */
    int32_t l_17 = (-1L);
    uint16_t *l_18[10];
    int16_t l_36 = 0x0867L;
    int32_t *l_41 = &p_713->g_42;
    int32_t l_43[10] = {1L,1L,1L,1L,1L,1L,1L,1L,1L,1L};
    int i;
    for (i = 0; i < 10; i++)
        l_18[i] = &p_713->g_19;
    (*p_713->g_712) = func_2(((safe_div_func_uint16_t_u_u(((!p_713->g_6) & ((func_7(func_12(((p_713->g_19 |= l_17) <= ((func_20(func_24(p_713->g_26, p_713), p_713->g_30, &p_713->g_31, p_713) <= (l_36 >= (func_37(l_41, l_43[3], (*l_41), p_713) ^ 1L))) != p_713->g_510.f7)), l_43[3], p_713->g_97, p_713->g_645.f1, p_713), l_43[3], p_713->g_258.f7, p_713->g_657, p_713) , p_713->g_258.f5) ^ 0x1BA8L)), FAKE_DIVERGE(p_713->group_0_offset, get_group_id(0), 10))) & l_36), p_713);
    return (*p_713->g_498);
}


/* ------------------------------------------ */
/* 
 * reads : p_713->g_207 p_713->g_709 p_713->g_710 p_713->g_711
 * writes: p_713->g_94 p_713->g_709
 */
struct S5  func_2(uint32_t  p_3, struct S7 * p_713)
{ /* block id: 297 */
    struct S3 **l_708[5][6][7] = {{{&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125}},{{&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125}},{{&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125}},{{&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125}},{{&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125,&p_713->g_125}}};
    int i, j, k;
    (*p_713->g_207) = (safe_rshift_func_int16_t_s_s((l_708[4][5][0] == &p_713->g_125), 15));
    (*p_713->g_710) = p_713->g_709;
    return p_713->g_711;
}


/* ------------------------------------------ */
/* 
 * reads : p_713->g_677.f0.f3 p_713->g_207 p_713->g_94 p_713->g_427 p_713->g_99.f1 p_713->g_42
 * writes: p_713->g_34 p_713->g_677.f0.f3 p_713->g_427 p_713->g_258.f1 p_713->g_405.f0 p_713->g_99.f1 p_713->g_125 p_713->g_94
 */
uint64_t  func_7(uint16_t  p_8, uint64_t  p_9, int32_t  p_10, union U6  p_11, struct S7 * p_713)
{ /* block id: 283 */
    struct S4 *l_676 = &p_713->g_677;
    struct S4 **l_678 = &l_676;
    uint16_t ***l_679 = (void*)0;
    uint64_t *l_680 = (void*)0;
    uint64_t *l_681 = &p_713->g_677.f0.f3;
    uint64_t *l_684[2][3][7] = {{{(void*)0,(void*)0,&p_713->g_99.f3,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_713->g_99.f3,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_713->g_99.f3,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_713->g_99.f3,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_713->g_99.f3,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_713->g_99.f3,(void*)0,(void*)0,(void*)0,(void*)0}}};
    uint32_t *l_685 = (void*)0;
    uint32_t *l_686 = &p_713->g_427;
    uint32_t *l_689 = (void*)0;
    uint32_t *l_690 = &p_713->g_258.f1;
    uint32_t *l_691 = &p_713->g_405.f0;
    uint32_t *l_692 = &p_713->g_99.f1;
    struct S3 *l_697 = &p_713->g_698;
    struct S3 **l_699 = (void*)0;
    struct S3 **l_700 = (void*)0;
    struct S3 **l_701 = &p_713->g_125;
    int32_t l_704 = 0x340560D2L;
    int32_t *l_705 = &p_713->g_42;
    int i, j, k;
    (*l_678) = l_676;
    p_713->g_34 = (void*)0;
    (*p_713->g_207) = ((((void*)0 != l_679) > FAKE_DIVERGE(p_713->local_0_offset, get_local_id(0), 10)) && ((p_9 &= ((*l_681)++)) ^ (((*p_713->g_207) ^ (p_10 || ((GROUP_DIVERGE(2, 1) ^ ((FAKE_DIVERGE(p_713->local_0_offset, get_local_id(0), 10) , ((*l_692) &= ((*l_691) = ((*l_690) = (++(*l_686)))))) , (((safe_rshift_func_int16_t_s_s(0x087CL, 1)) , ((*l_691) = ((safe_div_func_uint32_t_u_u(((((*l_701) = l_697) == (void*)0) || 0UL), (safe_add_func_uint16_t_u_u(((0x1483692DL != (*p_713->g_207)) & p_8), 65532UL)))) , p_8))) , p_713->g_42))) , 0x1098FA82CE58BE42L))) , l_704)));
    l_705 = &p_713->g_94;
    return (*l_705);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint16_t  func_12(uint32_t  p_13, int64_t  p_14, uint32_t  p_15, int64_t  p_16, struct S7 * p_713)
{ /* block id: 281 */
    return p_13;
}


/* ------------------------------------------ */
/* 
 * reads : p_713->g_31
 * writes: p_713->g_34
 */
uint8_t  func_20(uint16_t * p_21, uint16_t * p_22, uint16_t * p_23, struct S7 * p_713)
{ /* block id: 9 */
    int32_t *l_33 = &p_713->g_28;
    int32_t **l_32[4] = {&l_33,&l_33,&l_33,&l_33};
    int i;
    p_713->g_34 = (void*)0;
    return p_713->g_31;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_713->g_28
 */
uint16_t * func_24(uint16_t  p_25, struct S7 * p_713)
{ /* block id: 6 */
    int32_t *l_27[9][7][4] = {{{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28}},{{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28}},{{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28}},{{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28}},{{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28}},{{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28}},{{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28}},{{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28}},{{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28},{(void*)0,&p_713->g_28,(void*)0,&p_713->g_28}}};
    uint16_t *l_29 = (void*)0;
    int i, j, k;
    p_713->g_28 = p_25;
    return l_29;
}


/* ------------------------------------------ */
/* 
 * reads : p_713->g_657 p_713->g_94 p_713->g_195 p_713->g_42 p_713->g_672 p_713->g_562 p_713->g_145 p_713->g_146 p_713->g_30 p_713->g_31 p_713->g_499.f0.f4 p_713->g_256.f2 p_713->g_258.f5
 * writes: p_713->g_42 p_713->g_195 p_713->g_256.f2
 */
int16_t  func_37(int32_t * p_38, uint16_t  p_39, uint32_t  p_40, struct S7 * p_713)
{ /* block id: 12 */
    int8_t l_44[8][2][7] = {{{(-1L),(-1L),0x79L,2L,7L,0x1DL,0x4CL},{(-1L),(-1L),0x79L,2L,7L,0x1DL,0x4CL}},{{(-1L),(-1L),0x79L,2L,7L,0x1DL,0x4CL},{(-1L),(-1L),0x79L,2L,7L,0x1DL,0x4CL}},{{(-1L),(-1L),0x79L,2L,7L,0x1DL,0x4CL},{(-1L),(-1L),0x79L,2L,7L,0x1DL,0x4CL}},{{(-1L),(-1L),0x79L,2L,7L,0x1DL,0x4CL},{(-1L),(-1L),0x79L,2L,7L,0x1DL,0x4CL}},{{(-1L),(-1L),0x79L,2L,7L,0x1DL,0x4CL},{(-1L),(-1L),0x79L,2L,7L,0x1DL,0x4CL}},{{(-1L),(-1L),0x79L,2L,7L,0x1DL,0x4CL},{(-1L),(-1L),0x79L,2L,7L,0x1DL,0x4CL}},{{(-1L),(-1L),0x79L,2L,7L,0x1DL,0x4CL},{(-1L),(-1L),0x79L,2L,7L,0x1DL,0x4CL}},{{(-1L),(-1L),0x79L,2L,7L,0x1DL,0x4CL},{(-1L),(-1L),0x79L,2L,7L,0x1DL,0x4CL}}};
    int16_t l_508[6];
    int32_t l_654 = 0x3018C5D7L;
    uint8_t *l_659 = &p_713->g_195;
    struct S3 **l_662 = &p_713->g_125;
    int32_t *l_663 = &l_654;
    int32_t *l_675 = &p_713->g_256[6][1].f2;
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_508[i] = 6L;
    for (p_40 = 0; (p_40 <= 1); p_40 += 1)
    { /* block id: 15 */
        int32_t *l_501[10][8][1] = {{{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6}},{{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6}},{{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6}},{{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6}},{{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6}},{{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6}},{{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6}},{{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6}},{{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6}},{{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6},{&p_713->g_497.f0.f6}}};
        int8_t l_579 = 0x6FL;
        uint64_t *l_596 = &p_713->g_258.f3;
        int8_t l_598[8][4] = {{0x5FL,1L,1L,0x5FL},{0x5FL,1L,1L,0x5FL},{0x5FL,1L,1L,0x5FL},{0x5FL,1L,1L,0x5FL},{0x5FL,1L,1L,0x5FL},{0x5FL,1L,1L,0x5FL},{0x5FL,1L,1L,0x5FL},{0x5FL,1L,1L,0x5FL}};
        struct S1 *l_650 = &p_713->g_651[0];
        union U6 l_658 = {0x28A39EBDL};
        uint8_t **l_660 = &l_659;
        uint8_t *l_661 = &p_713->g_195;
        int i, j, k;
        (*p_38) = 0L;
        for (p_713->g_42 = 0; (p_713->g_42 <= 1); p_713->g_42 += 1)
        { /* block id: 19 */
            int32_t **l_500 = &p_713->g_207;
            uint64_t *l_506 = &p_713->g_499[0].f0.f3;
            uint16_t *l_507 = &p_713->g_499[0].f4;
            uint16_t **l_544 = &p_713->g_145;
            uint16_t ***l_543[8];
            int32_t l_552[4][10] = {{0x4D0FD1A0L,0x0A96E930L,0x0A96E930L,0x4D0FD1A0L,(-2L),0x51B01014L,0x51B01014L,(-2L),0x4D0FD1A0L,0x0A96E930L},{0x4D0FD1A0L,0x0A96E930L,0x0A96E930L,0x4D0FD1A0L,(-2L),0x51B01014L,0x51B01014L,(-2L),0x4D0FD1A0L,0x0A96E930L},{0x4D0FD1A0L,0x0A96E930L,0x0A96E930L,0x4D0FD1A0L,(-2L),0x51B01014L,0x51B01014L,(-2L),0x4D0FD1A0L,0x0A96E930L},{0x4D0FD1A0L,0x0A96E930L,0x0A96E930L,0x4D0FD1A0L,(-2L),0x51B01014L,0x51B01014L,(-2L),0x4D0FD1A0L,0x0A96E930L}};
            int32_t l_560 = 0x319D9C05L;
            int8_t *l_570[2];
            struct S1 *l_641[3][4] = {{&p_713->g_642,&p_713->g_642,&p_713->g_642,&p_713->g_642},{&p_713->g_642,&p_713->g_642,&p_713->g_642,&p_713->g_642},{&p_713->g_642,&p_713->g_642,&p_713->g_642,&p_713->g_642}};
            int i, j;
            for (i = 0; i < 8; i++)
                l_543[i] = &l_544;
            for (i = 0; i < 2; i++)
                l_570[i] = &l_44[0][0][5];
            (1 + 1);
        }
        (*p_38) = (((((((((p_713->g_657 , l_658) , ((*l_660) = l_659)) == l_661) , (p_39 >= FAKE_DIVERGE(p_713->global_1_offset, get_global_id(1), 10))) , l_662) == l_662) <= 0x6692E4C5L) != ((*l_661) ^= p_713->g_94)) , (*p_38));
        l_663 = &p_713->g_94;
    }
    (*l_675) &= (safe_add_func_int16_t_s_s(((safe_add_func_int16_t_s_s((safe_mul_func_int16_t_s_s(4L, (safe_mod_func_int32_t_s_s((p_713->g_672 != FAKE_DIVERGE(p_713->group_1_offset, get_group_id(1), 10)), (*p_38))))), ((*l_663) == (!FAKE_DIVERGE(p_713->group_1_offset, get_group_id(1), 10))))) <= ((((**p_713->g_562) || (*p_713->g_30)) ^ p_39) | ((safe_mul_func_uint16_t_u_u(p_39, (0L <= p_713->g_195))) < p_713->g_499[0].f0.f4))), (**p_713->g_562)));
    return p_713->g_258.f5;
}


/* ------------------------------------------ */
/* 
 * reads : p_713->g_195 p_713->g_499.f4 p_713->g_497.f0.f4 p_713->g_256.f8 p_713->g_30 p_713->g_31 p_713->g_499.f0.f1
 * writes: p_713->g_497.f0.f8 p_713->g_195 p_713->g_497.f0.f4 p_713->g_510.f4 p_713->g_499.f0.f6
 */
int64_t  func_49(uint32_t  p_50, int16_t  p_51, struct S7 * p_713)
{ /* block id: 213 */
    struct S2 *l_509 = &p_713->g_510;
    struct S2 **l_511 = &l_509;
    uint16_t *l_514 = &p_713->g_310[4][0][0];
    int64_t *l_517 = &p_713->g_497.f0.f8;
    uint8_t *l_524 = (void*)0;
    int32_t l_529 = 1L;
    uint32_t *l_530 = &p_713->g_497.f0.f4;
    uint32_t *l_535 = &p_713->g_510.f4;
    int32_t l_536 = (-10L);
    uint8_t l_537 = 0UL;
    int32_t *l_538 = &p_713->g_499[0].f0.f6;
    (*l_511) = l_509;
    (*l_538) = ((((safe_mod_func_int32_t_s_s(((((void*)0 == l_514) || ((safe_add_func_int64_t_s_s(((*l_517) = 0x4C8A5B444A66734AL), (safe_sub_func_int16_t_s_s(((safe_add_func_int64_t_s_s((((-1L) ^ ((p_713->g_195--) , ((safe_div_func_uint32_t_u_u(l_529, GROUP_DIVERGE(0, 1))) < ((*l_530) ^= p_713->g_499[0].f4)))) ^ (((safe_sub_func_int16_t_s_s(p_713->g_256[6][1].f8, (l_536 = (((safe_div_func_uint16_t_u_u((0x1E370D4D81558201L | (FAKE_DIVERGE(p_713->global_1_offset, get_global_id(1), 10) < ((*l_535) = (p_51 ^ p_51)))), p_51)) || 9L) >= l_529)))) && FAKE_DIVERGE(p_713->local_0_offset, get_local_id(0), 10)) && l_529)), p_51)) & p_51), (*p_713->g_30))))) != 0x148803729D076037L)) < l_537), l_537)) | 0x75BA0836L) || p_713->g_499[0].f0.f1) < l_537);
    return p_51;
}


/* ------------------------------------------ */
/* 
 * reads : p_713->g_65 p_713->g_67 p_713->g_94 p_713->g_30 p_713->g_31 p_713->g_26 p_713->g_42 p_713->g_99.f7 p_713->g_124 p_713->g_97 p_713->g_99.f6 p_713->g_99.f3 p_713->g_99.f4 p_713->g_78 p_713->g_99.f5 p_713->g_99.f1 p_713->g_207 p_713->g_198 p_713->g_195 p_713->g_246 p_713->g_99.f8 p_713->g_256.f7 p_713->g_258.f6 p_713->g_258.f2 p_713->g_274.f3 p_713->g_310 p_713->g_256.f8 p_713->g_256.f6 p_713->g_258.f1 p_713->g_344 p_713->g_256.f1 p_713->g_258.f7 p_713->g_274.f8 p_713->g_256.f3 p_713->g_258.f4 p_713->g_274.f6 p_713->g_404 p_713->g_405.f0 p_713->g_256.f4 p_713->g_427 p_713->g_145 p_713->g_146 p_713->g_254
 * writes: p_713->g_65 p_713->g_67 p_713->g_78 p_713->g_97 p_713->g_94 p_713->g_99.f2 p_713->g_145 p_713->g_99.f6 p_713->g_99.f3 p_713->g_146 p_713->g_195 p_713->g_198 p_713->g_207 p_713->g_246 p_713->g_125 p_713->g_258.f2 p_713->g_274.f3 p_713->g_256.f8 p_713->g_274.f4 p_713->g_344 p_713->g_404 p_713->g_99.f8 p_713->g_427 p_713->g_498
 */
int32_t * func_54(int32_t * p_55, struct S7 * p_713)
{ /* block id: 20 */
    uint16_t l_62 = 0x9881L;
    int32_t *l_161 = &p_713->g_99.f6;
    int32_t **l_160 = &l_161;
    int64_t l_187[6][7] = {{1L,0x63BBB778705FF088L,1L,1L,0x63BBB778705FF088L,1L,1L},{1L,0x63BBB778705FF088L,1L,1L,0x63BBB778705FF088L,1L,1L},{1L,0x63BBB778705FF088L,1L,1L,0x63BBB778705FF088L,1L,1L},{1L,0x63BBB778705FF088L,1L,1L,0x63BBB778705FF088L,1L,1L},{1L,0x63BBB778705FF088L,1L,1L,0x63BBB778705FF088L,1L,1L},{1L,0x63BBB778705FF088L,1L,1L,0x63BBB778705FF088L,1L,1L}};
    int32_t l_190 = 1L;
    struct S3 *l_257 = &p_713->g_258;
    uint16_t **l_312[7] = {&p_713->g_145,&p_713->g_145,&p_713->g_145,&p_713->g_145,&p_713->g_145,&p_713->g_145,&p_713->g_145};
    int32_t l_321 = 9L;
    int32_t l_408 = (-6L);
    int32_t l_426 = (-4L);
    uint64_t *l_442 = &p_713->g_258.f3;
    int i, j;
lbl_467:
    (*l_160) = func_56(l_62, l_62, l_62, &p_713->g_42, l_62, p_713);
    for (p_713->g_99.f3 = (-25); (p_713->g_99.f3 >= 20); p_713->g_99.f3++)
    { /* block id: 56 */
        int16_t l_185[1];
        int32_t l_188 = (-2L);
        union U6 l_199[10] = {{-1L},{0x365FF730L},{-1L},{-1L},{0x365FF730L},{-1L},{-1L},{0x365FF730L},{-1L},{-1L}};
        struct S3 *l_255 = &p_713->g_256[6][1];
        uint32_t l_313 = 0x3B73B3FDL;
        int32_t l_316 = 0L;
        int32_t l_318 = 1L;
        int32_t l_320[8] = {0x5F65D55BL,0x5F65D55BL,0x5F65D55BL,0x5F65D55BL,0x5F65D55BL,0x5F65D55BL,0x5F65D55BL,0x5F65D55BL};
        uint32_t l_409 = 0x2AC3BA0AL;
        int64_t *l_436 = &p_713->g_258.f8;
        int i;
        for (i = 0; i < 1; i++)
            l_185[i] = 0x1AEFL;
        if (((safe_mod_func_uint8_t_u_u((*l_161), (**l_160))) && ((((void*)0 == &p_713->g_145) | (((p_713->g_65[0] , (void*)0) != &p_713->g_125) ^ 0x22C95388L)) <= (p_713->g_99.f3 ^ 0x33L))))
        { /* block id: 57 */
            int16_t l_170 = 0x41EEL;
            uint16_t *l_186 = &p_713->g_146;
            int16_t *l_189 = (void*)0;
            int32_t *l_212[10];
            struct S3 *l_273 = &p_713->g_274;
            int64_t l_319[7][8] = {{0x587327DD6E504752L,0x587327DD6E504752L,1L,4L,(-6L),0x471116EBA593C795L,0x58D1AE91BE41BA47L,0x5F0E5C4304CCA799L},{0x587327DD6E504752L,0x587327DD6E504752L,1L,4L,(-6L),0x471116EBA593C795L,0x58D1AE91BE41BA47L,0x5F0E5C4304CCA799L},{0x587327DD6E504752L,0x587327DD6E504752L,1L,4L,(-6L),0x471116EBA593C795L,0x58D1AE91BE41BA47L,0x5F0E5C4304CCA799L},{0x587327DD6E504752L,0x587327DD6E504752L,1L,4L,(-6L),0x471116EBA593C795L,0x58D1AE91BE41BA47L,0x5F0E5C4304CCA799L},{0x587327DD6E504752L,0x587327DD6E504752L,1L,4L,(-6L),0x471116EBA593C795L,0x58D1AE91BE41BA47L,0x5F0E5C4304CCA799L},{0x587327DD6E504752L,0x587327DD6E504752L,1L,4L,(-6L),0x471116EBA593C795L,0x58D1AE91BE41BA47L,0x5F0E5C4304CCA799L},{0x587327DD6E504752L,0x587327DD6E504752L,1L,4L,(-6L),0x471116EBA593C795L,0x58D1AE91BE41BA47L,0x5F0E5C4304CCA799L}};
            int8_t l_353 = (-1L);
            int32_t l_354 = (-1L);
            int64_t l_355 = 0x194CD54B43B3CD1FL;
            int32_t l_449 = 0x1544F442L;
            int32_t l_450[9];
            int i, j;
            for (i = 0; i < 10; i++)
                l_212[i] = &p_713->g_99.f6;
            for (i = 0; i < 9; i++)
                l_450[i] = 0x07DC0108L;
            if (((safe_add_func_int8_t_s_s((((safe_sub_func_uint64_t_u_u(l_170, (safe_rshift_func_uint16_t_u_s(((safe_mod_func_uint64_t_u_u(((safe_div_func_uint16_t_u_u((GROUP_DIVERGE(1, 1) , 65529UL), (l_190 &= (l_188 = ((((safe_div_func_int16_t_s_s(((safe_div_func_uint8_t_u_u((0L >= ((((*l_161) = (safe_mul_func_uint16_t_u_u(((p_713->g_99.f3 < 6UL) && (0xBDAB2CB7L | (**l_160))), ((*l_186) = ((((((l_170 , (((safe_mod_func_int16_t_s_s(0L, l_185[0])) > 0x56L) && (*p_713->g_30))) != l_170) <= l_170) >= 0x159AL) , (*p_55)) > 0xFC8DD5CAL))))) <= 0x1AB1BAC2L) < p_713->g_99.f4)), p_713->g_78)) <= l_185[0]), l_187[5][4])) != 4UL) , p_713->g_99.f5) > (*p_55)))))) | 8L), p_713->g_97)) & p_713->g_31), 3)))) || (**l_160)) != l_185[0]), p_713->g_94)) >= l_170))
            { /* block id: 62 */
                int8_t l_193 = 8L;
                uint8_t *l_194 = (void*)0;
                uint8_t *l_196 = (void*)0;
                uint8_t *l_197 = &p_713->g_198;
                int8_t *l_202 = (void*)0;
                int8_t *l_203 = &p_713->g_78;
                int32_t *l_206 = &p_713->g_94;
                int32_t **l_217 = &l_212[1];
                (*l_161) = 0x1C167B5BL;
                if ((safe_add_func_uint8_t_u_u(((*l_197) = (p_713->g_195 = l_193)), (((*l_203) = (((l_199[5] , (p_713->g_99.f7 < (safe_sub_func_uint8_t_u_u(p_713->g_99.f1, p_713->g_97)))) || 0x6424L) <= GROUP_DIVERGE(2, 1))) , ((**l_160) <= ((~((safe_mul_func_int16_t_s_s(((p_713->g_78 >= l_170) >= 6L), l_193)) , p_713->g_78)) , l_193))))))
                { /* block id: 67 */
                    (**l_160) = ((void*)0 != &p_713->g_31);
                    if (l_199[5].f0)
                        break;
                    p_713->g_207 = l_206;
                }
                else
                { /* block id: 71 */
                    if ((*p_55))
                        break;
                    if ((*p_713->g_207))
                        continue;
                    if ((*l_206))
                        break;
                }
                for (p_713->g_99.f6 = 0; (p_713->g_99.f6 >= 0); p_713->g_99.f6 = safe_add_func_int32_t_s_s(p_713->g_99.f6, 1))
                { /* block id: 78 */
                    int32_t l_218 = (-1L);
                    int16_t *l_235 = (void*)0;
                    int16_t *l_236 = (void*)0;
                    int16_t *l_237 = &l_185[0];
                    int16_t *l_244 = &p_713->g_65[0];
                    int8_t *l_245[9];
                    int i;
                    for (i = 0; i < 9; i++)
                        l_245[i] = (void*)0;
                    for (p_713->g_67 = 0; (p_713->g_67 == (-18)); p_713->g_67--)
                    { /* block id: 81 */
                        return l_212[1];
                    }
                    (*l_161) = ((safe_div_func_int16_t_s_s(8L, (safe_mul_func_uint16_t_u_u((p_713->g_99.f3 == 1L), ((void*)0 != l_217))))) < l_218);
                    (*l_206) = (safe_rshift_func_uint8_t_u_s(((safe_div_func_int8_t_s_s(((*l_203) |= (p_55 != (((*l_161) &= 0xD3L) , &p_713->g_42))), (safe_lshift_func_uint16_t_u_s(((safe_rshift_func_int16_t_s_s(p_713->g_198, 3)) < (((safe_sub_func_int32_t_s_s((safe_lshift_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_u((6L != (safe_sub_func_uint16_t_u_u((((p_713->g_246[0][3] = (((*l_237) = (*l_206)) > ((*l_244) &= (l_188 = (safe_sub_func_uint64_t_u_u(((p_713->g_195 >= ((safe_add_func_int32_t_s_s((*p_55), (~((safe_mod_func_uint16_t_u_u(65529UL, 65532UL)) | 18446744073709551606UL)))) , l_218)) && 0L), p_713->g_99.f3)))))) | p_713->g_198) && p_713->g_99.f6), p_713->g_99.f4))), 4)), 6)), l_199[5].f0)) == l_199[5].f0) & 0xDF3C2A6CL)), 9)))) && p_713->g_246[0][0]), 6));
                }
                (**l_160) = (*p_713->g_207);
            }
            else
            { /* block id: 94 */
                uint16_t *l_249 = &l_62;
                int32_t l_252[3];
                uint64_t *l_253[5] = {&p_713->g_254,&p_713->g_254,&p_713->g_254,&p_713->g_254,&p_713->g_254};
                struct S3 **l_259 = (void*)0;
                struct S3 **l_260 = (void*)0;
                union U6 l_265[8] = {{-5L},{0x6491985DL},{-5L},{-5L},{0x6491985DL},{-5L},{-5L},{0x6491985DL}};
                int32_t **l_268 = &p_713->g_207;
                uint32_t l_322[1][3][8] = {{{0x2147C366L,0x42C02545L,0x2147C366L,0x2147C366L,0x42C02545L,0x2147C366L,0x2147C366L,0x42C02545L},{0x2147C366L,0x42C02545L,0x2147C366L,0x2147C366L,0x42C02545L,0x2147C366L,0x2147C366L,0x42C02545L},{0x2147C366L,0x42C02545L,0x2147C366L,0x2147C366L,0x42C02545L,0x2147C366L,0x2147C366L,0x42C02545L}}};
                uint16_t ***l_439 = &l_312[6];
                int i, j, k;
                for (i = 0; i < 3; i++)
                    l_252[i] = 0x5BBCBE84L;
                (**l_160) &= (((safe_add_func_uint32_t_u_u((p_713->g_99.f8 , 0x6486E68AL), 0x66A9968EL)) == (l_249 != &p_713->g_146)) || (l_188 = (safe_add_func_uint8_t_u_u(((l_249 != (void*)0) >= GROUP_DIVERGE(1, 1)), (l_252[2] &= 0xAFL)))));
                if (((l_255 != (p_713->g_125 = l_257)) == (((**l_160) & (((safe_lshift_func_uint16_t_u_s(((safe_div_func_int16_t_s_s((p_713->g_256[6][1].f7 & (l_265[1] , (((safe_sub_func_int64_t_s_s((&l_161 != (l_185[0] , l_268)), (safe_mod_func_uint64_t_u_u((*l_161), (**l_160))))) <= (**l_268)) == (*p_713->g_207)))), l_185[0])) <= (**l_268)), (**l_160))) ^ 0L) & (*l_161))) <= p_713->g_258.f6)))
                { /* block id: 99 */
                    int8_t l_314[6][4][4] = {{{0x48L,0x3BL,0x6AL,0x4DL},{0x48L,0x3BL,0x6AL,0x4DL},{0x48L,0x3BL,0x6AL,0x4DL},{0x48L,0x3BL,0x6AL,0x4DL}},{{0x48L,0x3BL,0x6AL,0x4DL},{0x48L,0x3BL,0x6AL,0x4DL},{0x48L,0x3BL,0x6AL,0x4DL},{0x48L,0x3BL,0x6AL,0x4DL}},{{0x48L,0x3BL,0x6AL,0x4DL},{0x48L,0x3BL,0x6AL,0x4DL},{0x48L,0x3BL,0x6AL,0x4DL},{0x48L,0x3BL,0x6AL,0x4DL}},{{0x48L,0x3BL,0x6AL,0x4DL},{0x48L,0x3BL,0x6AL,0x4DL},{0x48L,0x3BL,0x6AL,0x4DL},{0x48L,0x3BL,0x6AL,0x4DL}},{{0x48L,0x3BL,0x6AL,0x4DL},{0x48L,0x3BL,0x6AL,0x4DL},{0x48L,0x3BL,0x6AL,0x4DL},{0x48L,0x3BL,0x6AL,0x4DL}},{{0x48L,0x3BL,0x6AL,0x4DL},{0x48L,0x3BL,0x6AL,0x4DL},{0x48L,0x3BL,0x6AL,0x4DL},{0x48L,0x3BL,0x6AL,0x4DL}}};
                    int32_t l_317[1];
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                        l_317[i] = 1L;
                    (**l_160) = l_185[0];
                    for (p_713->g_258.f2 = 26; (p_713->g_258.f2 != 3); --p_713->g_258.f2)
                    { /* block id: 103 */
                        struct S3 **l_275 = &p_713->g_125;
                        int32_t l_309 = 0x16A8B989L;
                        int64_t *l_311 = &l_265[1].f3;
                        int32_t l_315 = (-4L);
                        (*l_161) = (-9L);
                        (*l_275) = (l_273 = l_273);
                        l_315 |= (&p_713->g_246[1][5] == (((GROUP_DIVERGE(0, 1) <= ((void*)0 == p_713->g_207)) || (((safe_mul_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s((safe_div_func_int8_t_s_s((p_713->g_78 = (safe_mul_func_uint16_t_u_u(((*l_249) |= (safe_add_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_u(1UL, 6)), ((safe_lshift_func_uint8_t_u_s((((safe_add_func_uint32_t_u_u((safe_sub_func_uint32_t_u_u((((*l_186) = (l_199[5].f0 | (((safe_unary_minus_func_uint64_t_u(((!p_713->g_258.f2) , (((((((safe_div_func_uint8_t_u_u((4L <= ((((0x76B8ADB2L || ((((+(safe_rshift_func_uint16_t_u_s((((p_713->g_256[6][1].f8 |= (safe_lshift_func_uint16_t_u_u((~((safe_rshift_func_int16_t_s_u(((safe_rshift_func_int8_t_s_u(((+(((++p_713->g_274.f3) , (-4L)) > p_713->g_246[0][3])) | p_713->g_99.f7), l_309)) != p_713->g_310[1][0][0]), 10)) > (**l_268))), l_199[5].f0))) ^ (**l_160)) , GROUP_DIVERGE(0, 1)), 8))) <= 0x4442L) , (void*)0) == (void*)0)) , p_55) == &l_309) | (*l_161))), FAKE_DIVERGE(p_713->local_1_offset, get_local_id(1), 10))) , l_312[6]) == (void*)0) , 1L) == 3L) > l_309) | 4UL)))) | p_713->g_256[6][1].f6) && 0x17DB600C3A37E884L))) & l_313), l_314[2][0][3])), (*p_55))) >= 0x8DL) , (**l_160)), 4)) < (**l_268))))), 0x3C53L))), (-6L))), 6)), (*l_161))) ^ 1L) < FAKE_DIVERGE(p_713->local_0_offset, get_local_id(0), 10))) , (void*)0));
                    }
                    l_322[0][0][5]++;
                    (**l_160) ^= 1L;
                }
                else
                { /* block id: 116 */
                    uint8_t *l_332 = &p_713->g_246[0][3];
                    int32_t l_349 = 0x0A55AE19L;
                    int64_t *l_352[9];
                    int32_t l_356 = 6L;
                    int32_t l_357 = (-4L);
                    int32_t l_358 = (-1L);
                    int i;
                    for (i = 0; i < 9; i++)
                        l_352[i] = &p_713->g_256[6][1].f8;
                    for (p_713->g_78 = 0; (p_713->g_78 >= 28); ++p_713->g_78)
                    { /* block id: 119 */
                        uint32_t l_327 = 0xCF0E34C5L;
                        if (l_327)
                            break;
                    }
                    (**l_268) ^= (p_713->g_99.f8 >= FAKE_DIVERGE(p_713->local_2_offset, get_local_id(2), 10));
                    if (((safe_mod_func_uint64_t_u_u((safe_add_func_uint16_t_u_u((((*l_332) = p_713->g_258.f1) ^ ((safe_add_func_uint64_t_u_u(((safe_add_func_uint64_t_u_u((safe_mod_func_uint16_t_u_u(((0x2BF19AEE28D21DE1L >= 0UL) ^ (safe_mod_func_uint32_t_u_u((safe_sub_func_uint64_t_u_u((safe_unary_minus_func_uint8_t_u(p_713->g_344[8])), ((**l_268) = (safe_rshift_func_int16_t_s_u((safe_add_func_uint16_t_u_u((l_349 != ((safe_sub_func_int16_t_s_s(l_185[0], (**l_160))) , ((-7L) < l_199[5].f0))), FAKE_DIVERGE(p_713->group_1_offset, get_group_id(1), 10))), (*p_713->g_30)))))), FAKE_DIVERGE(p_713->group_2_offset, get_group_id(2), 10)))), l_353)), 0UL)) && 65526UL), l_354)) , p_713->g_258.f2)), l_185[0])), (-1L))) , 0L))
                    { /* block id: 125 */
                        uint32_t l_359 = 3UL;
                        uint32_t *l_378 = &l_313;
                        int16_t *l_381 = (void*)0;
                        int16_t *l_382 = &l_170;
                        int8_t *l_383 = &l_353;
                        l_359--;
                        (**l_160) = (safe_mod_func_uint64_t_u_u((((safe_sub_func_uint32_t_u_u((safe_sub_func_int8_t_s_s(((*l_383) ^= (((safe_rshift_func_int8_t_s_u(0L, ((*p_55) >= (safe_lshift_func_uint8_t_u_s(((l_188 = (*l_161)) & (!l_359)), 6))))) || ((safe_sub_func_uint8_t_u_u(((safe_rshift_func_int16_t_s_u((-1L), 4)) , (((((((*l_378) &= p_713->g_99.f1) || 0x58DED385L) > ((*l_382) = ((((safe_add_func_uint64_t_u_u(p_713->g_256[6][1].f1, p_713->g_258.f7)) > l_185[0]) ^ 0xB17A40FEL) & p_713->g_274.f8))) , p_713->g_256[6][1].f3) >= 0x1431B280L) || p_713->g_256[6][1].f8)), p_713->g_26)) || (*p_55))) >= l_358)), l_359)), (*p_713->g_207))) & 4294967295UL) | (-2L)), FAKE_DIVERGE(p_713->global_0_offset, get_global_id(0), 10)));
                        if (l_356)
                            continue;
                    }
                    else
                    { /* block id: 133 */
                        int64_t l_384 = 0x67AC6DC37674FB46L;
                        uint8_t *l_398 = &p_713->g_195;
                        uint16_t l_399[4];
                        uint32_t *l_400 = (void*)0;
                        uint32_t *l_401 = &p_713->g_274.f4;
                        int16_t *l_402 = &l_185[0];
                        int16_t *l_403 = &p_713->g_344[6];
                        struct S0 **l_406 = &p_713->g_404;
                        int32_t l_407 = (-8L);
                        int i;
                        for (i = 0; i < 4; i++)
                            l_399[i] = 0x4159L;
                        (**l_160) = (l_384 >= (safe_rshift_func_int8_t_s_s(((((((l_384 , ((((p_713->g_256[6][1].f3 >= GROUP_DIVERGE(0, 1)) && ((*l_403) = (safe_add_func_uint8_t_u_u(((*l_332) &= l_358), (safe_lshift_func_uint8_t_u_s(((~(((safe_unary_minus_func_int16_t_s(((**l_160) > ((p_713->g_258.f2 , ((p_713->g_258.f4 >= ((l_357 &= ((!((*l_402) = ((safe_rshift_func_uint16_t_u_u((safe_lshift_func_int8_t_s_u((0x3EL == (((*l_401) = ((((*l_398) = (safe_mod_func_uint16_t_u_u(((p_713->g_274.f6 , &l_354) != p_55), (*l_161)))) <= l_399[1]) > (-5L))) && 2L)), GROUP_DIVERGE(1, 1))), GROUP_DIVERGE(1, 1))) >= GROUP_DIVERGE(1, 1)))) >= 1UL)) ^ 65535UL)) < (-3L))) && 0x4559L)))) <= l_358) < 0x17L)) , l_384), 4)))))) < p_713->g_99.f6) == (-2L))) == 0x0184L) , p_713->g_99.f4) , p_713->g_344[4]) == FAKE_DIVERGE(p_713->local_0_offset, get_local_id(0), 10)) >= p_713->g_94), 4)));
                        (*l_406) = p_713->g_404;
                        (*p_713->g_207) &= (l_313 < 253UL);
                        ++l_409;
                    }
                }
                if ((*p_55))
                { /* block id: 146 */
                    uint16_t ***l_416 = &l_312[6];
                    int64_t *l_422 = &p_713->g_99.f8;
                    int64_t *l_423 = &l_355;
                    int32_t l_424 = 1L;
                    int32_t l_425 = 0x4D09B312L;
                    (**l_160) = (((*l_423) = (((**l_268) && (((*l_161) != (0L <= 0x886BL)) | (safe_div_func_uint8_t_u_u((1UL >= ((*l_422) = (((*l_249) = ((*l_186) = (safe_mod_func_int8_t_s_s((((*l_416) = l_312[0]) == (p_713->g_405.f0 , &l_186)), (safe_lshift_func_uint16_t_u_s((safe_unary_minus_func_int32_t_s((safe_lshift_func_uint8_t_u_u(((*p_713->g_207) | (*p_713->g_207)), p_713->g_256[6][1].f4)))), 9)))))) ^ (*l_161)))), (-2L))))) , (**l_268))) | 18446744073709551610UL);
                    (**l_268) = (**l_268);
                    p_713->g_427++;
                    if ((*p_713->g_207))
                        continue;
                }
                else
                { /* block id: 156 */
                    uint16_t *l_444 = &l_62;
                    uint64_t l_446 = 1UL;
                    int32_t l_447 = 4L;
                    int32_t l_448 = 1L;
                    struct S0 *l_457 = &p_713->g_458;
                    if ((~(*p_713->g_207)))
                    { /* block id: 157 */
                        uint16_t ****l_440[8] = {&l_439,&l_439,&l_439,&l_439,&l_439,&l_439,&l_439,&l_439};
                        uint16_t ***l_441 = &l_312[1];
                        int32_t l_443[2][7] = {{1L,0x315B4352L,1L,1L,0x315B4352L,1L,1L},{1L,0x315B4352L,1L,1L,0x315B4352L,1L,1L}};
                        int32_t l_445 = 0x2EF531ACL;
                        uint8_t l_451 = 0x7CL;
                        int i, j;
                        (*l_160) = &l_354;
                        l_445 |= ((**l_160) = (l_249 != ((((safe_sub_func_uint16_t_u_u((((safe_lshift_func_uint8_t_u_u(p_713->g_274.f8, 6)) > (((safe_add_func_uint64_t_u_u((((*p_55) == (((((void*)0 == l_436) && (((&p_713->g_254 == (((((safe_div_func_uint8_t_u_u(p_713->g_258.f7, GROUP_DIVERGE(1, 1))) > ((l_441 = l_439) != (void*)0)) <= 1UL) != GROUP_DIVERGE(0, 1)) , l_442)) >= 4L) >= (*p_55))) , 0x1D27A379L) , (*p_713->g_207))) > (*p_713->g_145)), p_713->g_26)) && (*p_713->g_30)) | l_316)) & l_320[1]), l_443[1][0])) < (-1L)) < 249UL) , l_444)));
                        (*l_268) = ((p_713->g_274.f6 == l_446) , func_56(p_713->g_254, ((l_161 == (void*)0) , (((0xBAB2L != l_446) , ((*l_161) & (*p_713->g_207))) || 0UL)), l_313, &p_713->g_42, (*p_713->g_207), p_713));
                        l_451++;
                    }
                    else
                    { /* block id: 164 */
                        int16_t *l_459[2][10][2] = {{{&p_713->g_65[0],&p_713->g_65[0]},{&p_713->g_65[0],&p_713->g_65[0]},{&p_713->g_65[0],&p_713->g_65[0]},{&p_713->g_65[0],&p_713->g_65[0]},{&p_713->g_65[0],&p_713->g_65[0]},{&p_713->g_65[0],&p_713->g_65[0]},{&p_713->g_65[0],&p_713->g_65[0]},{&p_713->g_65[0],&p_713->g_65[0]},{&p_713->g_65[0],&p_713->g_65[0]},{&p_713->g_65[0],&p_713->g_65[0]}},{{&p_713->g_65[0],&p_713->g_65[0]},{&p_713->g_65[0],&p_713->g_65[0]},{&p_713->g_65[0],&p_713->g_65[0]},{&p_713->g_65[0],&p_713->g_65[0]},{&p_713->g_65[0],&p_713->g_65[0]},{&p_713->g_65[0],&p_713->g_65[0]},{&p_713->g_65[0],&p_713->g_65[0]},{&p_713->g_65[0],&p_713->g_65[0]},{&p_713->g_65[0],&p_713->g_65[0]},{&p_713->g_65[0],&p_713->g_65[0]}}};
                        int32_t l_460 = 6L;
                        int i, j, k;
                        (*l_161) = (((safe_unary_minus_func_uint32_t_u((safe_mul_func_int16_t_s_s((l_460 = (!((void*)0 == l_457))), 0x0D35L)))) | GROUP_DIVERGE(0, 1)) <= (**l_268));
                    }
                    for (p_713->g_99.f8 = 2; (p_713->g_99.f8 <= (-22)); p_713->g_99.f8 = safe_sub_func_uint32_t_u_u(p_713->g_99.f8, 2))
                    { /* block id: 170 */
                        (*l_160) = (void*)0;
                    }
                    for (l_446 = 0; (l_446 >= 32); ++l_446)
                    { /* block id: 175 */
                        (**l_268) |= (*p_55);
                    }
                    for (l_62 = 1; (l_62 <= 9); l_62 += 1)
                    { /* block id: 180 */
                        (*p_713->g_207) ^= (*p_55);
                        if ((*p_713->g_207))
                            break;
                    }
                }
            }
            return p_55;
        }
        else
        { /* block id: 187 */
            uint16_t l_490 = 0UL;
            struct S4 *l_496 = &p_713->g_497;
            (*l_161) ^= (*p_713->g_207);
            for (l_190 = 9; (l_190 >= 1); l_190 = safe_sub_func_uint32_t_u_u(l_190, 4))
            { /* block id: 191 */
                int32_t l_471 = 0x0E1F32FCL;
                uint64_t l_485 = 0UL;
                if (p_713->g_258.f4)
                    goto lbl_467;
                for (l_321 = 0; (l_321 < 15); l_321 = safe_add_func_int8_t_s_s(l_321, 1))
                { /* block id: 195 */
                    int32_t *l_470 = &l_426;
                    int32_t *l_472 = &l_320[4];
                    int32_t *l_473 = &p_713->g_99.f6;
                    int32_t *l_474 = &p_713->g_99.f2;
                    int32_t l_475 = 0x45102F7DL;
                    int32_t *l_476 = &p_713->g_274.f2;
                    int32_t *l_477 = &p_713->g_256[6][1].f6;
                    int32_t *l_478 = (void*)0;
                    int32_t *l_479 = &l_426;
                    int32_t *l_480 = (void*)0;
                    int32_t *l_481 = &l_316;
                    int32_t *l_482 = (void*)0;
                    int32_t *l_483 = (void*)0;
                    int32_t *l_484[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_484[i] = &p_713->g_274.f2;
                    ++l_485;
                    for (p_713->g_99.f8 = 0; (p_713->g_99.f8 >= 22); p_713->g_99.f8 = safe_add_func_uint16_t_u_u(p_713->g_99.f8, 4))
                    { /* block id: 199 */
                        int16_t *l_495 = &l_185[0];
                        if (p_713->g_31)
                            goto lbl_467;
                        (*l_160) = (*l_160);
                    }
                }
                p_713->g_498 = l_496;
            }
        }
        if ((*p_713->g_207))
            continue;
    }
    (*l_160) = p_55;
    return p_55;
}


/* ------------------------------------------ */
/* 
 * reads : p_713->g_65 p_713->g_67 p_713->g_94 p_713->g_30 p_713->g_31 p_713->g_26 p_713->g_42 p_713->g_99.f7 p_713->g_124 p_713->g_97 p_713->g_99.f6
 * writes: p_713->g_65 p_713->g_67 p_713->g_78 p_713->g_97 p_713->g_94 p_713->g_99.f2 p_713->g_145 p_713->g_99.f6
 */
int32_t * func_56(int32_t  p_57, int64_t  p_58, uint8_t  p_59, int32_t * p_60, int32_t  p_61, struct S7 * p_713)
{ /* block id: 21 */
    uint32_t l_63 = 0xD11537C3L;
    int16_t *l_64 = &p_713->g_65[0];
    int32_t *l_66 = &p_713->g_67;
    int32_t *l_93 = &p_713->g_94;
    uint32_t *l_109 = &p_713->g_99.f4;
    (*l_66) = ((l_63 && ((*l_64) = p_59)) > 0xDA35237EL);
    for (l_63 = 18; (l_63 == 21); l_63++)
    { /* block id: 26 */
        int32_t l_76 = 9L;
        int8_t *l_77 = &p_713->g_78;
        int32_t l_79 = 0x0C9FB391L;
        int32_t **l_92 = (void*)0;
        uint32_t l_95 = 0UL;
        uint32_t *l_96[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        uint64_t l_121 = 0x2775F8867BC28BBEL;
        uint16_t *l_142[1];
        int i;
        for (i = 0; i < 1; i++)
            l_142[i] = &p_713->g_31;
        if (((safe_rshift_func_int8_t_s_u(((-9L) ^ ((p_58 , (~(safe_add_func_uint32_t_u_u((safe_sub_func_int32_t_s_s(((l_79 |= ((*l_77) = (p_713->g_65[0] ^ ((*l_66) ^= (p_57 >= l_76))))) ^ (safe_sub_func_int8_t_s_s(((((safe_mod_func_uint16_t_u_u(((l_76 == (p_713->g_97 = (safe_add_func_uint16_t_u_u(((((safe_lshift_func_uint16_t_u_s(((((((((safe_lshift_func_uint16_t_u_u((0x42EBL == ((safe_add_func_int64_t_s_s((&p_61 != (l_93 = &p_61)), 0x086700432F2B5FACL)) && p_713->g_94)), (*p_713->g_30))) , p_713->g_31) ^ l_95) , p_57) >= 0xA9757D9B7243D409L) != 0x1CL) || p_713->g_26) <= 0x02L), p_713->g_26)) && 4294967287UL) > 1L) & 254UL), p_58)))) <= p_713->g_94), p_61)) , l_92) != (void*)0) > l_63), 1L))), 0x70EAEF02L)), (*p_60))))) ^ 0xFC2DDDAE5F053F68L)), p_713->g_42)) & p_713->g_42))
        { /* block id: 32 */
            struct S3 *l_98 = &p_713->g_99;
            struct S3 **l_100 = &l_98;
            int32_t l_114 = 0L;
            int32_t *l_115 = (void*)0;
            int32_t *l_116 = &p_713->g_94;
            (*l_100) = l_98;
            (*l_116) &= (safe_div_func_int8_t_s_s(((~((0xA2DF7CCAC8DB39B4L > (safe_mul_func_uint8_t_u_u(((safe_lshift_func_int8_t_s_u((*l_93), p_57)) > ((((((*l_66) = 0x213EA481L) && ((safe_mod_func_uint64_t_u_u(((((l_109 == p_60) != 0xCDC6EB25L) != (safe_mul_func_uint8_t_u_u((*l_66), (safe_mod_func_int32_t_s_s((l_114 , 0x007783C7L), l_114))))) & p_58), p_713->g_65[0])) != 18446744073709551610UL)) <= p_713->g_42) , 5L) ^ 0x07510376L)), p_713->g_99.f7))) && 0L)) , (-6L)), 5L));
        }
        else
        { /* block id: 36 */
            int32_t *l_117 = &p_713->g_67;
            int32_t *l_118 = &p_713->g_67;
            int32_t *l_119 = &p_713->g_99.f6;
            int32_t *l_120[6];
            int i;
            for (i = 0; i < 6; i++)
                l_120[i] = &l_79;
            l_121++;
        }
        for (p_713->g_78 = 0; (p_713->g_78 >= 0); p_713->g_78 -= 1)
        { /* block id: 41 */
            uint16_t *l_144 = &p_713->g_31;
            uint16_t **l_143[9][5][3] = {{{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0}},{{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0}},{{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0}},{{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0}},{{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0}},{{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0}},{{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0}},{{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0}},{{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0},{&l_144,&l_142[0],(void*)0}}};
            int32_t l_149 = 2L;
            int32_t l_150 = 9L;
            int32_t l_159 = (-6L);
            int i, j, k;
            p_713->g_99.f2 = ((void*)0 == p_713->g_124[6][2][0]);
            p_713->g_99.f6 |= ((safe_div_func_uint32_t_u_u((~(!(safe_lshift_func_int16_t_s_s((safe_add_func_uint64_t_u_u((safe_lshift_func_int16_t_s_u((safe_mul_func_int8_t_s_s((-4L), (safe_sub_func_uint16_t_u_u(((safe_add_func_int64_t_s_s((safe_add_func_uint16_t_u_u((((void*)0 != l_142[0]) <= (((p_713->g_145 = &p_713->g_31) != &p_713->g_146) >= (safe_mul_func_int16_t_s_s(((l_150 = (l_149 = (*l_66))) ^ (safe_mod_func_int32_t_s_s((safe_mul_func_int8_t_s_s(p_713->g_31, (safe_mul_func_uint8_t_u_u((safe_lshift_func_int8_t_s_u((-7L), p_61)), p_61)))), (*l_66)))), l_159)))), (*p_713->g_30))), GROUP_DIVERGE(2, 1))) && 65535UL), p_713->g_97)))), l_159)), p_57)), 2)))), (*l_93))) ^ l_159);
            p_713->g_94 = 0x755FBD20L;
        }
        (*l_66) |= (*l_93);
        (*l_66) ^= (1L || ((p_59 , FAKE_DIVERGE(p_713->local_2_offset, get_local_id(2), 10)) , (*l_93)));
    }
    return &p_713->g_67;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S7 c_714;
    struct S7* p_713 = &c_714;
    struct S7 c_715 = {
        0xE4171B3FE78DE611L, // p_713->g_6
        65535UL, // p_713->g_19
        4294967289UL, // p_713->g_26
        0x7B3486B6L, // p_713->g_28
        1UL, // p_713->g_31
        &p_713->g_31, // p_713->g_30
        (-7L), // p_713->g_35
        &p_713->g_35, // p_713->g_34
        0x4720237AL, // p_713->g_42
        {(-1L)}, // p_713->g_65
        (-4L), // p_713->g_67
        0x2EL, // p_713->g_78
        0x61DE361CL, // p_713->g_94
        0xDDE4B234L, // p_713->g_97
        {0L,1UL,0L,8UL,0x7919FD84L,0L,0x2E73AF25L,0x112EA93CL,0L}, // p_713->g_99
        (void*)0, // p_713->g_125
        {{{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125}},{{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125}},{{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125}},{{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125}},{{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125}},{{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125}},{{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125}},{{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125},{&p_713->g_125,&p_713->g_125,&p_713->g_125}}}, // p_713->g_124
        0x6F27L, // p_713->g_146
        &p_713->g_146, // p_713->g_145
        0x64L, // p_713->g_195
        0x25L, // p_713->g_198
        &p_713->g_94, // p_713->g_207
        {{252UL,8UL,0UL,0UL,0UL,8UL,252UL,0x88L},{252UL,8UL,0UL,0UL,0UL,8UL,252UL,0x88L},{252UL,8UL,0UL,0UL,0UL,8UL,252UL,0x88L},{252UL,8UL,0UL,0UL,0UL,8UL,252UL,0x88L},{252UL,8UL,0UL,0UL,0UL,8UL,252UL,0x88L}}, // p_713->g_246
        0xEB5DBAF204E7C178L, // p_713->g_254
        {{{0x6AFF0F17L,4294967287UL,0x4E62A4A4L,0x37FCBA1A656AFC29L,4294967295UL,1L,0x2C3DA445L,3L,-2L},{0x6AFF0F17L,4294967287UL,0x4E62A4A4L,0x37FCBA1A656AFC29L,4294967295UL,1L,0x2C3DA445L,3L,-2L},{0x6AFF0F17L,4294967287UL,0x4E62A4A4L,0x37FCBA1A656AFC29L,4294967295UL,1L,0x2C3DA445L,3L,-2L}},{{0x6AFF0F17L,4294967287UL,0x4E62A4A4L,0x37FCBA1A656AFC29L,4294967295UL,1L,0x2C3DA445L,3L,-2L},{0x6AFF0F17L,4294967287UL,0x4E62A4A4L,0x37FCBA1A656AFC29L,4294967295UL,1L,0x2C3DA445L,3L,-2L},{0x6AFF0F17L,4294967287UL,0x4E62A4A4L,0x37FCBA1A656AFC29L,4294967295UL,1L,0x2C3DA445L,3L,-2L}},{{0x6AFF0F17L,4294967287UL,0x4E62A4A4L,0x37FCBA1A656AFC29L,4294967295UL,1L,0x2C3DA445L,3L,-2L},{0x6AFF0F17L,4294967287UL,0x4E62A4A4L,0x37FCBA1A656AFC29L,4294967295UL,1L,0x2C3DA445L,3L,-2L},{0x6AFF0F17L,4294967287UL,0x4E62A4A4L,0x37FCBA1A656AFC29L,4294967295UL,1L,0x2C3DA445L,3L,-2L}},{{0x6AFF0F17L,4294967287UL,0x4E62A4A4L,0x37FCBA1A656AFC29L,4294967295UL,1L,0x2C3DA445L,3L,-2L},{0x6AFF0F17L,4294967287UL,0x4E62A4A4L,0x37FCBA1A656AFC29L,4294967295UL,1L,0x2C3DA445L,3L,-2L},{0x6AFF0F17L,4294967287UL,0x4E62A4A4L,0x37FCBA1A656AFC29L,4294967295UL,1L,0x2C3DA445L,3L,-2L}},{{0x6AFF0F17L,4294967287UL,0x4E62A4A4L,0x37FCBA1A656AFC29L,4294967295UL,1L,0x2C3DA445L,3L,-2L},{0x6AFF0F17L,4294967287UL,0x4E62A4A4L,0x37FCBA1A656AFC29L,4294967295UL,1L,0x2C3DA445L,3L,-2L},{0x6AFF0F17L,4294967287UL,0x4E62A4A4L,0x37FCBA1A656AFC29L,4294967295UL,1L,0x2C3DA445L,3L,-2L}},{{0x6AFF0F17L,4294967287UL,0x4E62A4A4L,0x37FCBA1A656AFC29L,4294967295UL,1L,0x2C3DA445L,3L,-2L},{0x6AFF0F17L,4294967287UL,0x4E62A4A4L,0x37FCBA1A656AFC29L,4294967295UL,1L,0x2C3DA445L,3L,-2L},{0x6AFF0F17L,4294967287UL,0x4E62A4A4L,0x37FCBA1A656AFC29L,4294967295UL,1L,0x2C3DA445L,3L,-2L}},{{0x6AFF0F17L,4294967287UL,0x4E62A4A4L,0x37FCBA1A656AFC29L,4294967295UL,1L,0x2C3DA445L,3L,-2L},{0x6AFF0F17L,4294967287UL,0x4E62A4A4L,0x37FCBA1A656AFC29L,4294967295UL,1L,0x2C3DA445L,3L,-2L},{0x6AFF0F17L,4294967287UL,0x4E62A4A4L,0x37FCBA1A656AFC29L,4294967295UL,1L,0x2C3DA445L,3L,-2L}}}, // p_713->g_256
        {0x514B1F9FL,0x2BC33D4BL,0x2B36C4D2L,0x7874170A7DE7840DL,8UL,0x2222A849L,3L,0x6C72AD0EL,0x38C9FC60A11C9E3CL}, // p_713->g_258
        {-1L,0x5DBE1A93L,0x40D96709L,0xDB669D97F4BBE486L,0x00078894L,-1L,-1L,-3L,0x139ED9BC621D0DC9L}, // p_713->g_274
        {{{65535UL}},{{65535UL}},{{65535UL}},{{65535UL}},{{65535UL}}}, // p_713->g_310
        {0x5BD6L,(-1L),0x5BD6L,0x5BD6L,(-1L),0x5BD6L,0x5BD6L,(-1L),0x5BD6L,0x5BD6L}, // p_713->g_344
        {0xF9AAEA8AL,18446744073709551613UL,65533UL}, // p_713->g_405
        &p_713->g_405, // p_713->g_404
        5UL, // p_713->g_427
        {4294967288UL,0x0CA726A1D8C69674L,0UL}, // p_713->g_458
        {{-1L,4294967294UL,0x05FEEE2FL,18446744073709551615UL,0x04D463EBL,0x0C1A2D60L,0x13DAA7EFL,0L,0x0027B496DF1ECDCDL},0x3203E01E3C0347D9L,0x40175571L,6L,0xF81AL,0xA6L}, // p_713->g_497
        {{{-1L,4294967287UL,6L,0UL,1UL,-1L,0x22F7AC46L,-1L,-1L},7L,-4L,0x4BC77511L,0x71DEL,0x7FL},{{-1L,4294967287UL,6L,0UL,1UL,-1L,0x22F7AC46L,-1L,-1L},7L,-4L,0x4BC77511L,0x71DEL,0x7FL},{{-1L,4294967287UL,6L,0UL,1UL,-1L,0x22F7AC46L,-1L,-1L},7L,-4L,0x4BC77511L,0x71DEL,0x7FL},{{-1L,4294967287UL,6L,0UL,1UL,-1L,0x22F7AC46L,-1L,-1L},7L,-4L,0x4BC77511L,0x71DEL,0x7FL},{{-1L,4294967287UL,6L,0UL,1UL,-1L,0x22F7AC46L,-1L,-1L},7L,-4L,0x4BC77511L,0x71DEL,0x7FL},{{-1L,4294967287UL,6L,0UL,1UL,-1L,0x22F7AC46L,-1L,-1L},7L,-4L,0x4BC77511L,0x71DEL,0x7FL},{{-1L,4294967287UL,6L,0UL,1UL,-1L,0x22F7AC46L,-1L,-1L},7L,-4L,0x4BC77511L,0x71DEL,0x7FL},{{-1L,4294967287UL,6L,0UL,1UL,-1L,0x22F7AC46L,-1L,-1L},7L,-4L,0x4BC77511L,0x71DEL,0x7FL},{{-1L,4294967287UL,6L,0UL,1UL,-1L,0x22F7AC46L,-1L,-1L},7L,-4L,0x4BC77511L,0x71DEL,0x7FL},{{-1L,4294967287UL,6L,0UL,1UL,-1L,0x22F7AC46L,-1L,-1L},7L,-4L,0x4BC77511L,0x71DEL,0x7FL}}, // p_713->g_499
        &p_713->g_499[0], // p_713->g_498
        {6UL,0x42EBA1302DD7A8A2L,0x7E7440BA9EDBA2DFL,0x472EE0D27B197927L,0xB03E503EL,0x98ACB851L,0x41096DB0L,3UL}, // p_713->g_510
        &p_713->g_145, // p_713->g_562
        &p_713->g_562, // p_713->g_561
        {{{&p_713->g_99.f3,&p_713->g_99.f3},{&p_713->g_99.f3,&p_713->g_99.f3},{&p_713->g_99.f3,&p_713->g_99.f3},{&p_713->g_99.f3,&p_713->g_99.f3},{&p_713->g_99.f3,&p_713->g_99.f3}}}, // p_713->g_591
        {0x0C7D4D9FL,1L,0x816F2E11L,0x2CDEC9C5B02E8043L,7L,7L,0xE0A3L,{4294967295UL,0xD22535B0AABF7E53L,0x35C3L},0x40A3E5DEABCC89E6L}, // p_713->g_642
        {0x3CC00707L,2L,0xDEA08BB6L,0xFA9371976981D227L,0L,0x4497L,65534UL,{2UL,1UL,0x20F4L},0x59BA2B3B552A5BABL}, // p_713->g_643
        {0x2D082518L,0x2EC2E594L,4294967295UL,0x166503AA34011947L,-1L,1L,5UL,{0xD250ABB1L,1UL,0UL},3L}, // p_713->g_644
        {0x36BBB234L,3L,3UL,0x76B7852D5F306D92L,3L,0x7BE8L,0xD9CDL,{3UL,18446744073709551615UL,0xD06CL},1L}, // p_713->g_645
        {1L,-1L,0x861F3E96L,0x0184CF8F41E5DE15L,0x3199A354DA928E63L,7L,0x0A34L,{4294967295UL,1UL,7UL},-1L}, // p_713->g_649
        {{0x2DFB52CFL,2L,0xEA0B3DECL,0UL,3L,8L,0xF050L,{0x5ECB763EL,18446744073709551615UL,3UL},0x177D60509E7B3C20L}}, // p_713->g_651
        {0x321F0BAAL}, // p_713->g_657
        (-8L), // p_713->g_672
        {{0x414A0DD2L,0x6DB1200AL,0L,0x24291546CC1F49E1L,0x57373F84L,0x235F7781L,-6L,-8L,7L},0x40B53C1660DFD1B0L,1L,0x788C9311L,0x636FL,246UL}, // p_713->g_677
        {6L,0xFB655FB7L,-6L,18446744073709551607UL,5UL,0x4AB17F93L,-4L,-1L,-1L}, // p_713->g_698
        {0x10E88E2B4B083489L,-1L,0x2F42D5FFE4556CA8L,0x7CEB465E8E043E05L,1UL,0x72B29850L,0x1401239AL,0x4CC8L}, // p_713->g_709
        &p_713->g_709, // p_713->g_710
        {{1UL,0xCE87FF2820093B6DL,0xA1BCL},0x46D518EFL,{0x76F093284C78E260L,1L,-2L,-1L,9UL,1UL,-5L,0xB421L},0x0F5041E5L,0x1A491998L,{0UL,0x2080D9DA1E110ECFL,0x691D3DBF8298B007L,0L,0xAB13FCB3L,0x0322000EL,0x7ACB4464L,0xF928L},0x67BD801C514A7D5DL,0x397A8EF7EBE4E529L}, // p_713->g_711
        &p_713->g_711, // p_713->g_712
        sequence_input[get_global_id(0)], // p_713->global_0_offset
        sequence_input[get_global_id(1)], // p_713->global_1_offset
        sequence_input[get_global_id(2)], // p_713->global_2_offset
        sequence_input[get_local_id(0)], // p_713->local_0_offset
        sequence_input[get_local_id(1)], // p_713->local_1_offset
        sequence_input[get_local_id(2)], // p_713->local_2_offset
        sequence_input[get_group_id(0)], // p_713->group_0_offset
        sequence_input[get_group_id(1)], // p_713->group_1_offset
        sequence_input[get_group_id(2)], // p_713->group_2_offset
    };
    c_714 = c_715;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_713);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_713->g_6, "p_713->g_6", print_hash_value);
    transparent_crc(p_713->g_19, "p_713->g_19", print_hash_value);
    transparent_crc(p_713->g_26, "p_713->g_26", print_hash_value);
    transparent_crc(p_713->g_28, "p_713->g_28", print_hash_value);
    transparent_crc(p_713->g_31, "p_713->g_31", print_hash_value);
    transparent_crc(p_713->g_35, "p_713->g_35", print_hash_value);
    transparent_crc(p_713->g_42, "p_713->g_42", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_713->g_65[i], "p_713->g_65[i]", print_hash_value);

    }
    transparent_crc(p_713->g_67, "p_713->g_67", print_hash_value);
    transparent_crc(p_713->g_78, "p_713->g_78", print_hash_value);
    transparent_crc(p_713->g_94, "p_713->g_94", print_hash_value);
    transparent_crc(p_713->g_97, "p_713->g_97", print_hash_value);
    transparent_crc(p_713->g_99.f0, "p_713->g_99.f0", print_hash_value);
    transparent_crc(p_713->g_99.f1, "p_713->g_99.f1", print_hash_value);
    transparent_crc(p_713->g_99.f2, "p_713->g_99.f2", print_hash_value);
    transparent_crc(p_713->g_99.f3, "p_713->g_99.f3", print_hash_value);
    transparent_crc(p_713->g_99.f4, "p_713->g_99.f4", print_hash_value);
    transparent_crc(p_713->g_99.f5, "p_713->g_99.f5", print_hash_value);
    transparent_crc(p_713->g_99.f6, "p_713->g_99.f6", print_hash_value);
    transparent_crc(p_713->g_99.f7, "p_713->g_99.f7", print_hash_value);
    transparent_crc(p_713->g_99.f8, "p_713->g_99.f8", print_hash_value);
    transparent_crc(p_713->g_146, "p_713->g_146", print_hash_value);
    transparent_crc(p_713->g_195, "p_713->g_195", print_hash_value);
    transparent_crc(p_713->g_198, "p_713->g_198", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_713->g_246[i][j], "p_713->g_246[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_713->g_254, "p_713->g_254", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_713->g_256[i][j].f0, "p_713->g_256[i][j].f0", print_hash_value);
            transparent_crc(p_713->g_256[i][j].f1, "p_713->g_256[i][j].f1", print_hash_value);
            transparent_crc(p_713->g_256[i][j].f2, "p_713->g_256[i][j].f2", print_hash_value);
            transparent_crc(p_713->g_256[i][j].f3, "p_713->g_256[i][j].f3", print_hash_value);
            transparent_crc(p_713->g_256[i][j].f4, "p_713->g_256[i][j].f4", print_hash_value);
            transparent_crc(p_713->g_256[i][j].f5, "p_713->g_256[i][j].f5", print_hash_value);
            transparent_crc(p_713->g_256[i][j].f6, "p_713->g_256[i][j].f6", print_hash_value);
            transparent_crc(p_713->g_256[i][j].f7, "p_713->g_256[i][j].f7", print_hash_value);
            transparent_crc(p_713->g_256[i][j].f8, "p_713->g_256[i][j].f8", print_hash_value);

        }
    }
    transparent_crc(p_713->g_258.f0, "p_713->g_258.f0", print_hash_value);
    transparent_crc(p_713->g_258.f1, "p_713->g_258.f1", print_hash_value);
    transparent_crc(p_713->g_258.f2, "p_713->g_258.f2", print_hash_value);
    transparent_crc(p_713->g_258.f3, "p_713->g_258.f3", print_hash_value);
    transparent_crc(p_713->g_258.f4, "p_713->g_258.f4", print_hash_value);
    transparent_crc(p_713->g_258.f5, "p_713->g_258.f5", print_hash_value);
    transparent_crc(p_713->g_258.f6, "p_713->g_258.f6", print_hash_value);
    transparent_crc(p_713->g_258.f7, "p_713->g_258.f7", print_hash_value);
    transparent_crc(p_713->g_258.f8, "p_713->g_258.f8", print_hash_value);
    transparent_crc(p_713->g_274.f0, "p_713->g_274.f0", print_hash_value);
    transparent_crc(p_713->g_274.f1, "p_713->g_274.f1", print_hash_value);
    transparent_crc(p_713->g_274.f2, "p_713->g_274.f2", print_hash_value);
    transparent_crc(p_713->g_274.f3, "p_713->g_274.f3", print_hash_value);
    transparent_crc(p_713->g_274.f4, "p_713->g_274.f4", print_hash_value);
    transparent_crc(p_713->g_274.f5, "p_713->g_274.f5", print_hash_value);
    transparent_crc(p_713->g_274.f6, "p_713->g_274.f6", print_hash_value);
    transparent_crc(p_713->g_274.f7, "p_713->g_274.f7", print_hash_value);
    transparent_crc(p_713->g_274.f8, "p_713->g_274.f8", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_713->g_310[i][j][k], "p_713->g_310[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_713->g_344[i], "p_713->g_344[i]", print_hash_value);

    }
    transparent_crc(p_713->g_405.f0, "p_713->g_405.f0", print_hash_value);
    transparent_crc(p_713->g_405.f1, "p_713->g_405.f1", print_hash_value);
    transparent_crc(p_713->g_405.f2, "p_713->g_405.f2", print_hash_value);
    transparent_crc(p_713->g_427, "p_713->g_427", print_hash_value);
    transparent_crc(p_713->g_458.f0, "p_713->g_458.f0", print_hash_value);
    transparent_crc(p_713->g_458.f1, "p_713->g_458.f1", print_hash_value);
    transparent_crc(p_713->g_458.f2, "p_713->g_458.f2", print_hash_value);
    transparent_crc(p_713->g_497.f0.f0, "p_713->g_497.f0.f0", print_hash_value);
    transparent_crc(p_713->g_497.f0.f1, "p_713->g_497.f0.f1", print_hash_value);
    transparent_crc(p_713->g_497.f0.f2, "p_713->g_497.f0.f2", print_hash_value);
    transparent_crc(p_713->g_497.f0.f3, "p_713->g_497.f0.f3", print_hash_value);
    transparent_crc(p_713->g_497.f0.f4, "p_713->g_497.f0.f4", print_hash_value);
    transparent_crc(p_713->g_497.f0.f5, "p_713->g_497.f0.f5", print_hash_value);
    transparent_crc(p_713->g_497.f0.f6, "p_713->g_497.f0.f6", print_hash_value);
    transparent_crc(p_713->g_497.f0.f7, "p_713->g_497.f0.f7", print_hash_value);
    transparent_crc(p_713->g_497.f0.f8, "p_713->g_497.f0.f8", print_hash_value);
    transparent_crc(p_713->g_497.f1, "p_713->g_497.f1", print_hash_value);
    transparent_crc(p_713->g_497.f2, "p_713->g_497.f2", print_hash_value);
    transparent_crc(p_713->g_497.f3, "p_713->g_497.f3", print_hash_value);
    transparent_crc(p_713->g_497.f4, "p_713->g_497.f4", print_hash_value);
    transparent_crc(p_713->g_497.f5, "p_713->g_497.f5", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_713->g_499[i].f0.f0, "p_713->g_499[i].f0.f0", print_hash_value);
        transparent_crc(p_713->g_499[i].f0.f1, "p_713->g_499[i].f0.f1", print_hash_value);
        transparent_crc(p_713->g_499[i].f0.f2, "p_713->g_499[i].f0.f2", print_hash_value);
        transparent_crc(p_713->g_499[i].f0.f3, "p_713->g_499[i].f0.f3", print_hash_value);
        transparent_crc(p_713->g_499[i].f0.f4, "p_713->g_499[i].f0.f4", print_hash_value);
        transparent_crc(p_713->g_499[i].f0.f5, "p_713->g_499[i].f0.f5", print_hash_value);
        transparent_crc(p_713->g_499[i].f0.f6, "p_713->g_499[i].f0.f6", print_hash_value);
        transparent_crc(p_713->g_499[i].f0.f7, "p_713->g_499[i].f0.f7", print_hash_value);
        transparent_crc(p_713->g_499[i].f0.f8, "p_713->g_499[i].f0.f8", print_hash_value);
        transparent_crc(p_713->g_499[i].f1, "p_713->g_499[i].f1", print_hash_value);
        transparent_crc(p_713->g_499[i].f2, "p_713->g_499[i].f2", print_hash_value);
        transparent_crc(p_713->g_499[i].f3, "p_713->g_499[i].f3", print_hash_value);
        transparent_crc(p_713->g_499[i].f4, "p_713->g_499[i].f4", print_hash_value);
        transparent_crc(p_713->g_499[i].f5, "p_713->g_499[i].f5", print_hash_value);

    }
    transparent_crc(p_713->g_510.f0, "p_713->g_510.f0", print_hash_value);
    transparent_crc(p_713->g_510.f1, "p_713->g_510.f1", print_hash_value);
    transparent_crc(p_713->g_510.f2, "p_713->g_510.f2", print_hash_value);
    transparent_crc(p_713->g_510.f3, "p_713->g_510.f3", print_hash_value);
    transparent_crc(p_713->g_510.f4, "p_713->g_510.f4", print_hash_value);
    transparent_crc(p_713->g_510.f5, "p_713->g_510.f5", print_hash_value);
    transparent_crc(p_713->g_510.f6, "p_713->g_510.f6", print_hash_value);
    transparent_crc(p_713->g_510.f7, "p_713->g_510.f7", print_hash_value);
    transparent_crc(p_713->g_642.f0, "p_713->g_642.f0", print_hash_value);
    transparent_crc(p_713->g_642.f1, "p_713->g_642.f1", print_hash_value);
    transparent_crc(p_713->g_642.f2, "p_713->g_642.f2", print_hash_value);
    transparent_crc(p_713->g_642.f3, "p_713->g_642.f3", print_hash_value);
    transparent_crc(p_713->g_642.f4, "p_713->g_642.f4", print_hash_value);
    transparent_crc(p_713->g_642.f5, "p_713->g_642.f5", print_hash_value);
    transparent_crc(p_713->g_642.f6, "p_713->g_642.f6", print_hash_value);
    transparent_crc(p_713->g_642.f7.f0, "p_713->g_642.f7.f0", print_hash_value);
    transparent_crc(p_713->g_642.f7.f1, "p_713->g_642.f7.f1", print_hash_value);
    transparent_crc(p_713->g_642.f7.f2, "p_713->g_642.f7.f2", print_hash_value);
    transparent_crc(p_713->g_642.f8, "p_713->g_642.f8", print_hash_value);
    transparent_crc(p_713->g_643.f0, "p_713->g_643.f0", print_hash_value);
    transparent_crc(p_713->g_643.f1, "p_713->g_643.f1", print_hash_value);
    transparent_crc(p_713->g_643.f2, "p_713->g_643.f2", print_hash_value);
    transparent_crc(p_713->g_643.f3, "p_713->g_643.f3", print_hash_value);
    transparent_crc(p_713->g_643.f4, "p_713->g_643.f4", print_hash_value);
    transparent_crc(p_713->g_643.f5, "p_713->g_643.f5", print_hash_value);
    transparent_crc(p_713->g_643.f6, "p_713->g_643.f6", print_hash_value);
    transparent_crc(p_713->g_643.f7.f0, "p_713->g_643.f7.f0", print_hash_value);
    transparent_crc(p_713->g_643.f7.f1, "p_713->g_643.f7.f1", print_hash_value);
    transparent_crc(p_713->g_643.f7.f2, "p_713->g_643.f7.f2", print_hash_value);
    transparent_crc(p_713->g_643.f8, "p_713->g_643.f8", print_hash_value);
    transparent_crc(p_713->g_644.f0, "p_713->g_644.f0", print_hash_value);
    transparent_crc(p_713->g_644.f1, "p_713->g_644.f1", print_hash_value);
    transparent_crc(p_713->g_644.f2, "p_713->g_644.f2", print_hash_value);
    transparent_crc(p_713->g_644.f3, "p_713->g_644.f3", print_hash_value);
    transparent_crc(p_713->g_644.f4, "p_713->g_644.f4", print_hash_value);
    transparent_crc(p_713->g_644.f5, "p_713->g_644.f5", print_hash_value);
    transparent_crc(p_713->g_644.f6, "p_713->g_644.f6", print_hash_value);
    transparent_crc(p_713->g_644.f7.f0, "p_713->g_644.f7.f0", print_hash_value);
    transparent_crc(p_713->g_644.f7.f1, "p_713->g_644.f7.f1", print_hash_value);
    transparent_crc(p_713->g_644.f7.f2, "p_713->g_644.f7.f2", print_hash_value);
    transparent_crc(p_713->g_644.f8, "p_713->g_644.f8", print_hash_value);
    transparent_crc(p_713->g_645.f0, "p_713->g_645.f0", print_hash_value);
    transparent_crc(p_713->g_645.f1, "p_713->g_645.f1", print_hash_value);
    transparent_crc(p_713->g_645.f2, "p_713->g_645.f2", print_hash_value);
    transparent_crc(p_713->g_645.f3, "p_713->g_645.f3", print_hash_value);
    transparent_crc(p_713->g_645.f4, "p_713->g_645.f4", print_hash_value);
    transparent_crc(p_713->g_645.f5, "p_713->g_645.f5", print_hash_value);
    transparent_crc(p_713->g_645.f6, "p_713->g_645.f6", print_hash_value);
    transparent_crc(p_713->g_645.f7.f0, "p_713->g_645.f7.f0", print_hash_value);
    transparent_crc(p_713->g_645.f7.f1, "p_713->g_645.f7.f1", print_hash_value);
    transparent_crc(p_713->g_645.f7.f2, "p_713->g_645.f7.f2", print_hash_value);
    transparent_crc(p_713->g_645.f8, "p_713->g_645.f8", print_hash_value);
    transparent_crc(p_713->g_649.f0, "p_713->g_649.f0", print_hash_value);
    transparent_crc(p_713->g_649.f1, "p_713->g_649.f1", print_hash_value);
    transparent_crc(p_713->g_649.f2, "p_713->g_649.f2", print_hash_value);
    transparent_crc(p_713->g_649.f3, "p_713->g_649.f3", print_hash_value);
    transparent_crc(p_713->g_649.f4, "p_713->g_649.f4", print_hash_value);
    transparent_crc(p_713->g_649.f5, "p_713->g_649.f5", print_hash_value);
    transparent_crc(p_713->g_649.f6, "p_713->g_649.f6", print_hash_value);
    transparent_crc(p_713->g_649.f7.f0, "p_713->g_649.f7.f0", print_hash_value);
    transparent_crc(p_713->g_649.f7.f1, "p_713->g_649.f7.f1", print_hash_value);
    transparent_crc(p_713->g_649.f7.f2, "p_713->g_649.f7.f2", print_hash_value);
    transparent_crc(p_713->g_649.f8, "p_713->g_649.f8", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_713->g_651[i].f0, "p_713->g_651[i].f0", print_hash_value);
        transparent_crc(p_713->g_651[i].f1, "p_713->g_651[i].f1", print_hash_value);
        transparent_crc(p_713->g_651[i].f2, "p_713->g_651[i].f2", print_hash_value);
        transparent_crc(p_713->g_651[i].f3, "p_713->g_651[i].f3", print_hash_value);
        transparent_crc(p_713->g_651[i].f4, "p_713->g_651[i].f4", print_hash_value);
        transparent_crc(p_713->g_651[i].f5, "p_713->g_651[i].f5", print_hash_value);
        transparent_crc(p_713->g_651[i].f6, "p_713->g_651[i].f6", print_hash_value);
        transparent_crc(p_713->g_651[i].f7.f0, "p_713->g_651[i].f7.f0", print_hash_value);
        transparent_crc(p_713->g_651[i].f7.f1, "p_713->g_651[i].f7.f1", print_hash_value);
        transparent_crc(p_713->g_651[i].f7.f2, "p_713->g_651[i].f7.f2", print_hash_value);
        transparent_crc(p_713->g_651[i].f8, "p_713->g_651[i].f8", print_hash_value);

    }
    transparent_crc(p_713->g_657.f0, "p_713->g_657.f0", print_hash_value);
    transparent_crc(p_713->g_672, "p_713->g_672", print_hash_value);
    transparent_crc(p_713->g_677.f0.f0, "p_713->g_677.f0.f0", print_hash_value);
    transparent_crc(p_713->g_677.f0.f1, "p_713->g_677.f0.f1", print_hash_value);
    transparent_crc(p_713->g_677.f0.f2, "p_713->g_677.f0.f2", print_hash_value);
    transparent_crc(p_713->g_677.f0.f3, "p_713->g_677.f0.f3", print_hash_value);
    transparent_crc(p_713->g_677.f0.f4, "p_713->g_677.f0.f4", print_hash_value);
    transparent_crc(p_713->g_677.f0.f5, "p_713->g_677.f0.f5", print_hash_value);
    transparent_crc(p_713->g_677.f0.f6, "p_713->g_677.f0.f6", print_hash_value);
    transparent_crc(p_713->g_677.f0.f7, "p_713->g_677.f0.f7", print_hash_value);
    transparent_crc(p_713->g_677.f0.f8, "p_713->g_677.f0.f8", print_hash_value);
    transparent_crc(p_713->g_677.f1, "p_713->g_677.f1", print_hash_value);
    transparent_crc(p_713->g_677.f2, "p_713->g_677.f2", print_hash_value);
    transparent_crc(p_713->g_677.f3, "p_713->g_677.f3", print_hash_value);
    transparent_crc(p_713->g_677.f4, "p_713->g_677.f4", print_hash_value);
    transparent_crc(p_713->g_677.f5, "p_713->g_677.f5", print_hash_value);
    transparent_crc(p_713->g_698.f0, "p_713->g_698.f0", print_hash_value);
    transparent_crc(p_713->g_698.f1, "p_713->g_698.f1", print_hash_value);
    transparent_crc(p_713->g_698.f2, "p_713->g_698.f2", print_hash_value);
    transparent_crc(p_713->g_698.f3, "p_713->g_698.f3", print_hash_value);
    transparent_crc(p_713->g_698.f4, "p_713->g_698.f4", print_hash_value);
    transparent_crc(p_713->g_698.f5, "p_713->g_698.f5", print_hash_value);
    transparent_crc(p_713->g_698.f6, "p_713->g_698.f6", print_hash_value);
    transparent_crc(p_713->g_698.f7, "p_713->g_698.f7", print_hash_value);
    transparent_crc(p_713->g_698.f8, "p_713->g_698.f8", print_hash_value);
    transparent_crc(p_713->g_709.f0, "p_713->g_709.f0", print_hash_value);
    transparent_crc(p_713->g_709.f1, "p_713->g_709.f1", print_hash_value);
    transparent_crc(p_713->g_709.f2, "p_713->g_709.f2", print_hash_value);
    transparent_crc(p_713->g_709.f3, "p_713->g_709.f3", print_hash_value);
    transparent_crc(p_713->g_709.f4, "p_713->g_709.f4", print_hash_value);
    transparent_crc(p_713->g_709.f5, "p_713->g_709.f5", print_hash_value);
    transparent_crc(p_713->g_709.f6, "p_713->g_709.f6", print_hash_value);
    transparent_crc(p_713->g_709.f7, "p_713->g_709.f7", print_hash_value);
    transparent_crc(p_713->g_711.f0.f0, "p_713->g_711.f0.f0", print_hash_value);
    transparent_crc(p_713->g_711.f0.f1, "p_713->g_711.f0.f1", print_hash_value);
    transparent_crc(p_713->g_711.f0.f2, "p_713->g_711.f0.f2", print_hash_value);
    transparent_crc(p_713->g_711.f1, "p_713->g_711.f1", print_hash_value);
    transparent_crc(p_713->g_711.f2.f0, "p_713->g_711.f2.f0", print_hash_value);
    transparent_crc(p_713->g_711.f2.f1, "p_713->g_711.f2.f1", print_hash_value);
    transparent_crc(p_713->g_711.f2.f2, "p_713->g_711.f2.f2", print_hash_value);
    transparent_crc(p_713->g_711.f2.f3, "p_713->g_711.f2.f3", print_hash_value);
    transparent_crc(p_713->g_711.f2.f4, "p_713->g_711.f2.f4", print_hash_value);
    transparent_crc(p_713->g_711.f2.f5, "p_713->g_711.f2.f5", print_hash_value);
    transparent_crc(p_713->g_711.f2.f6, "p_713->g_711.f2.f6", print_hash_value);
    transparent_crc(p_713->g_711.f2.f7, "p_713->g_711.f2.f7", print_hash_value);
    transparent_crc(p_713->g_711.f3, "p_713->g_711.f3", print_hash_value);
    transparent_crc(p_713->g_711.f4, "p_713->g_711.f4", print_hash_value);
    transparent_crc(p_713->g_711.f5.f0, "p_713->g_711.f5.f0", print_hash_value);
    transparent_crc(p_713->g_711.f5.f1, "p_713->g_711.f5.f1", print_hash_value);
    transparent_crc(p_713->g_711.f5.f2, "p_713->g_711.f5.f2", print_hash_value);
    transparent_crc(p_713->g_711.f5.f3, "p_713->g_711.f5.f3", print_hash_value);
    transparent_crc(p_713->g_711.f5.f4, "p_713->g_711.f5.f4", print_hash_value);
    transparent_crc(p_713->g_711.f5.f5, "p_713->g_711.f5.f5", print_hash_value);
    transparent_crc(p_713->g_711.f5.f6, "p_713->g_711.f5.f6", print_hash_value);
    transparent_crc(p_713->g_711.f5.f7, "p_713->g_711.f5.f7", print_hash_value);
    transparent_crc(p_713->g_711.f6, "p_713->g_711.f6", print_hash_value);
    transparent_crc(p_713->g_711.f7, "p_713->g_711.f7", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
