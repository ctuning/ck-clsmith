// ---atomic_reductions ---fake_divergence -g 58,55,1 -l 2,1,1
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


// Seed: 59

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint64_t  f0;
   uint64_t  f1;
   volatile int64_t  f2;
};

union U1 {
   volatile uint64_t  f0;
};

struct S2 {
    volatile int32_t g_2;
    volatile int32_t g_3[10];
    int32_t g_4;
    int32_t g_9[4];
    int16_t g_23;
    int32_t *g_50;
    int32_t **g_49;
    struct S0 g_55;
    struct S0 *g_54;
    int32_t g_73[7][9];
    struct S0 g_74;
    int64_t g_88;
    int32_t *** volatile g_90;
    volatile struct S0 g_91[4][2];
    volatile struct S0 g_92;
    int32_t *** volatile g_112;
    struct S0 g_113;
    struct S0 g_114;
    struct S0 g_115;
    union U1 g_140;
    uint32_t g_146;
    struct S0 g_169;
    union U1 g_176[10];
    uint64_t g_186;
    uint16_t g_188;
    struct S0 **g_211;
    struct S0 *** volatile g_210;
    int32_t g_215;
    uint8_t g_234;
    volatile int16_t g_237[10];
    volatile int16_t *g_236;
    volatile int16_t ** volatile g_235;
    union U1 *g_272;
    union U1 ** volatile g_271;
    struct S0 g_273[7][10];
    uint32_t g_291[9][8];
    int32_t * volatile g_356;
    int8_t g_395;
    int8_t *g_394[7];
    uint16_t g_397;
    int64_t *g_419;
    int64_t **g_418;
    int64_t ***g_429;
    struct S0 g_439;
    volatile struct S0 g_502;
    volatile struct S0 g_554;
    volatile int32_t g_589;
    union U1 g_611;
    int64_t g_660;
    volatile struct S0 g_663;
    uint32_t g_705;
    struct S0 g_732;
    int32_t * volatile g_745;
    union U1 ** volatile g_747[2][5][7];
    volatile struct S0 g_755;
    uint32_t g_779;
    struct S0 g_783;
    uint8_t g_810[3][4][4];
    volatile struct S0 g_830;
    volatile struct S0 g_831;
    volatile union U1 g_949;
    union U1 g_966;
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
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
};


/* --- FORWARD DECLARATIONS --- */
union U1  func_1(struct S2 * p_967);
struct S0 * func_12(struct S0 * p_13, struct S2 * p_967);
struct S0 * func_14(struct S0 * p_15, int16_t  p_16, struct S2 * p_967);
struct S0 * func_17(int32_t  p_18, uint64_t  p_19, uint32_t  p_20, struct S2 * p_967);
uint16_t  func_28(int32_t ** p_29, uint32_t  p_30, int16_t * p_31, int32_t ** p_32, struct S0 * p_33, struct S2 * p_967);
int32_t ** func_34(int32_t ** p_35, int16_t * p_36, int32_t * p_37, int64_t  p_38, struct S0 * p_39, struct S2 * p_967);
int32_t ** func_40(int32_t ** p_41, uint32_t  p_42, struct S0 * p_43, uint16_t  p_44, uint8_t  p_45, struct S2 * p_967);
int32_t ** func_46(int32_t ** p_47, int32_t * p_48, struct S2 * p_967);
int32_t * func_51(struct S0 * p_52, uint32_t  p_53, struct S2 * p_967);
int8_t  func_62(uint32_t  p_63, struct S0 * p_64, int32_t ** p_65, struct S2 * p_967);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_967->g_4 p_967->g_9 p_967->g_49 p_967->g_50 p_967->g_54 p_967->g_55.f1 p_967->g_73 p_967->g_74 p_967->g_3 p_967->g_55.f2 p_967->g_90 p_967->g_91 p_967->g_112 p_967->g_113 p_967->g_115 p_967->g_92.f2 p_967->g_140 p_967->g_88 p_967->g_55 p_967->g_176 p_967->g_146 p_967->g_169.f1 p_967->g_186 p_967->g_169.f0 p_967->g_210 p_967->g_215 p_967->g_234 p_967->g_169.f2 p_967->g_235 p_967->g_114.f1 p_967->g_23 p_967->g_271 p_967->g_273 p_967->g_732.f1 p_967->g_783 p_967->g_705 p_967->g_439.f0 p_967->g_397 p_967->g_236 p_967->g_237 p_967->g_949 p_967->g_429 p_967->g_966
 * writes: p_967->g_4 p_967->g_9 p_967->g_49 p_967->g_23 p_967->g_73 p_967->g_3 p_967->g_74.f0 p_967->g_88 p_967->g_55.f0 p_967->g_92 p_967->g_114 p_967->g_55 p_967->g_115.f1 p_967->g_74.f1 p_967->g_146 p_967->g_169 p_967->g_186 p_967->g_188 p_967->g_211 p_967->g_215 p_967->g_234 p_967->g_50 p_967->g_235 p_967->g_272 p_967->g_291 p_967->g_705 p_967->g_74 p_967->g_783 p_967->g_397 p_967->g_418
 */
union U1  func_1(struct S2 * p_967)
{ /* block id: 4 */
    int32_t *l_21 = (void*)0;
    int32_t l_240[9] = {(-9L),(-9L),(-9L),(-9L),(-9L),(-9L),(-9L),(-9L),(-9L)};
    uint8_t l_241 = 0xF9L;
    int16_t *l_294 = (void*)0;
    uint8_t l_950 = 0UL;
    uint16_t l_962 = 0x0236L;
    int i;
    for (p_967->g_4 = (-15); (p_967->g_4 == 7); p_967->g_4++)
    { /* block id: 7 */
        int32_t *l_8 = &p_967->g_4;
        int32_t **l_7 = &l_8;
        int32_t l_27 = 0x4CCE1CC0L;
        struct S0 *l_938 = &p_967->g_783;
        int32_t *l_953 = &p_967->g_9[0];
        int32_t *l_954 = &p_967->g_9[1];
        int32_t *l_955 = &p_967->g_9[3];
        int32_t *l_956 = &l_240[7];
        int32_t *l_957 = &p_967->g_73[6][6];
        int32_t *l_958 = &l_240[7];
        int32_t *l_959 = &p_967->g_73[5][1];
        int32_t *l_960[10];
        int32_t l_961 = 0L;
        int64_t **l_965 = &p_967->g_419;
        int i;
        for (i = 0; i < 10; i++)
            l_960[i] = (void*)0;
        (*l_7) = (void*)0;
        for (p_967->g_9[3] = 0; (p_967->g_9[3] != 13); p_967->g_9[3]++)
        { /* block id: 11 */
            int16_t *l_22[6] = {&p_967->g_23,&p_967->g_23,&p_967->g_23,&p_967->g_23,&p_967->g_23,&p_967->g_23};
            int32_t l_24[3][7] = {{0x51D77F17L,0x266FA4BCL,0x1C36B586L,0L,0x266FA4BCL,0L,0x1C36B586L},{0x51D77F17L,0x266FA4BCL,0x1C36B586L,0L,0x266FA4BCL,0L,0x1C36B586L},{0x51D77F17L,0x266FA4BCL,0x1C36B586L,0L,0x266FA4BCL,0L,0x1C36B586L}};
            struct S0 *l_242 = (void*)0;
            uint16_t *l_941 = (void*)0;
            uint16_t *l_942 = &p_967->g_397;
            uint8_t l_951 = 251UL;
            int32_t l_952[6] = {(-1L),0x63765AF0L,(-1L),(-1L),0x63765AF0L,(-1L)};
            int i, j;
            l_938 = func_12(func_14(func_17((((p_967->g_9[3] < ((l_21 == (void*)0) | 8UL)) == (l_24[1][3] = p_967->g_9[1])) , (safe_rshift_func_int16_t_s_u(l_27, func_28(func_34(func_40(func_46(p_967->g_49, (*p_967->g_49), p_967), l_240[7], p_967->g_54, l_241, p_967->g_115.f0, p_967), l_22[5], &p_967->g_9[1], p_967->g_9[3], l_242, p_967), p_967->g_9[3], l_294, &l_21, l_242, p_967)))), p_967->g_9[3], l_241, p_967), p_967->g_732.f1, p_967), p_967);
            l_952[4] &= ((safe_div_func_uint16_t_u_u(((*l_942)--), (*p_967->g_236))) , (((void*)0 == &p_967->g_397) , (((safe_rshift_func_int16_t_s_u(((p_967->g_73[6][6] | 0xD8L) & (((void*)0 != &p_967->g_211) | 0xB3L)), 6)) >= ((safe_div_func_uint64_t_u_u((p_967->g_949 , GROUP_DIVERGE(0, 1)), l_24[2][2])) != l_950)) != l_951)));
            if ((***p_967->g_112))
                continue;
        }
        l_962++;
        (*p_967->g_429) = l_965;
    }
    return p_967->g_966;
}


/* ------------------------------------------ */
/* 
 * reads : p_967->g_705 p_967->g_55 p_967->g_74 p_967->g_783 p_967->g_54 p_967->g_3 p_967->g_439.f0 p_967->g_9
 * writes: p_967->g_705 p_967->g_55 p_967->g_88 p_967->g_3 p_967->g_74 p_967->g_783
 */
struct S0 * func_12(struct S0 * p_13, struct S2 * p_967)
{ /* block id: 399 */
    int32_t l_928[9][8] = {{0x241CD115L,0x07CA63E4L,0x52305AC5L,1L,0x07CA63E4L,1L,0x52305AC5L,0x07CA63E4L},{0x241CD115L,0x07CA63E4L,0x52305AC5L,1L,0x07CA63E4L,1L,0x52305AC5L,0x07CA63E4L},{0x241CD115L,0x07CA63E4L,0x52305AC5L,1L,0x07CA63E4L,1L,0x52305AC5L,0x07CA63E4L},{0x241CD115L,0x07CA63E4L,0x52305AC5L,1L,0x07CA63E4L,1L,0x52305AC5L,0x07CA63E4L},{0x241CD115L,0x07CA63E4L,0x52305AC5L,1L,0x07CA63E4L,1L,0x52305AC5L,0x07CA63E4L},{0x241CD115L,0x07CA63E4L,0x52305AC5L,1L,0x07CA63E4L,1L,0x52305AC5L,0x07CA63E4L},{0x241CD115L,0x07CA63E4L,0x52305AC5L,1L,0x07CA63E4L,1L,0x52305AC5L,0x07CA63E4L},{0x241CD115L,0x07CA63E4L,0x52305AC5L,1L,0x07CA63E4L,1L,0x52305AC5L,0x07CA63E4L},{0x241CD115L,0x07CA63E4L,0x52305AC5L,1L,0x07CA63E4L,1L,0x52305AC5L,0x07CA63E4L}};
    int i, j;
    l_928[4][2] = l_928[4][3];
    for (p_967->g_705 = 2; (p_967->g_705 <= 9); p_967->g_705 += 1)
    { /* block id: 403 */
        (*p_967->g_54) = (*p_13);
        for (p_967->g_55.f1 = 0; (p_967->g_55.f1 <= 9); p_967->g_55.f1 += 1)
        { /* block id: 407 */
            int64_t *l_937 = &p_967->g_88;
            int i;
            p_967->g_3[p_967->g_705] = ((safe_mul_func_uint8_t_u_u((safe_mod_func_int32_t_s_s((-4L), (safe_add_func_uint32_t_u_u(((4294967289UL <= p_967->g_3[p_967->g_705]) <= l_928[3][2]), p_967->g_439.f0)))), (safe_unary_minus_func_int64_t_s(((*l_937) = (safe_unary_minus_func_int64_t_s(l_928[7][5]))))))) < p_967->g_9[3]);
        }
    }
    (*p_13) = (*p_13);
    return p_13;
}


/* ------------------------------------------ */
/* 
 * reads : p_967->g_49
 * writes: p_967->g_50
 */
struct S0 * func_14(struct S0 * p_15, int16_t  p_16, struct S2 * p_967)
{ /* block id: 395 */
    int32_t *l_919 = &p_967->g_73[6][6];
    int32_t *l_920 = (void*)0;
    int32_t *l_921 = &p_967->g_73[1][2];
    int32_t *l_922 = &p_967->g_73[6][6];
    int32_t *l_923[1];
    uint32_t l_924[2][5] = {{0x9BEF2EE7L,0x9BEF2EE7L,0x9BEF2EE7L,0x9BEF2EE7L,0x9BEF2EE7L},{0x9BEF2EE7L,0x9BEF2EE7L,0x9BEF2EE7L,0x9BEF2EE7L,0x9BEF2EE7L}};
    struct S0 *l_927[1][8] = {{&p_967->g_783,&p_967->g_783,&p_967->g_783,&p_967->g_783,&p_967->g_783,&p_967->g_783,&p_967->g_783,&p_967->g_783}};
    int i, j;
    for (i = 0; i < 1; i++)
        l_923[i] = &p_967->g_73[3][1];
    (*p_967->g_49) = l_919;
    l_924[0][4]++;
    return l_927[0][6];
}


/* ------------------------------------------ */
/* 
 * reads : p_967->g_55.f1
 * writes: p_967->g_55.f1
 */
struct S0 * func_17(int32_t  p_18, uint64_t  p_19, uint32_t  p_20, struct S2 * p_967)
{ /* block id: 382 */
    int64_t ***l_889 = &p_967->g_418;
    int32_t l_916 = 4L;
    struct S0 *l_918 = &p_967->g_115;
    for (p_967->g_55.f1 = 0; (p_967->g_55.f1 < 33); p_967->g_55.f1++)
    { /* block id: 385 */
        int8_t l_902[4][6][4] = {{{8L,0x2FL,0x10L,1L},{8L,0x2FL,0x10L,1L},{8L,0x2FL,0x10L,1L},{8L,0x2FL,0x10L,1L},{8L,0x2FL,0x10L,1L},{8L,0x2FL,0x10L,1L}},{{8L,0x2FL,0x10L,1L},{8L,0x2FL,0x10L,1L},{8L,0x2FL,0x10L,1L},{8L,0x2FL,0x10L,1L},{8L,0x2FL,0x10L,1L},{8L,0x2FL,0x10L,1L}},{{8L,0x2FL,0x10L,1L},{8L,0x2FL,0x10L,1L},{8L,0x2FL,0x10L,1L},{8L,0x2FL,0x10L,1L},{8L,0x2FL,0x10L,1L},{8L,0x2FL,0x10L,1L}},{{8L,0x2FL,0x10L,1L},{8L,0x2FL,0x10L,1L},{8L,0x2FL,0x10L,1L},{8L,0x2FL,0x10L,1L},{8L,0x2FL,0x10L,1L},{8L,0x2FL,0x10L,1L}}};
        uint8_t *l_911[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int16_t *l_912 = &p_967->g_23;
        int8_t *l_913 = &p_967->g_395;
        int32_t l_914[4];
        int32_t l_915 = 0L;
        int8_t *l_917 = &l_902[2][3][2];
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_914[i] = (-1L);
        (1 + 1);
    }
    return l_918;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint16_t  func_28(int32_t ** p_29, uint32_t  p_30, int16_t * p_31, int32_t ** p_32, struct S0 * p_33, struct S2 * p_967)
{ /* block id: 164 */
    uint32_t l_301 = 1UL;
    int32_t l_302 = 0L;
    int32_t l_376 = 1L;
    uint8_t l_377[3][2][1] = {{{0x62L},{0x62L}},{{0x62L},{0x62L}},{{0x62L},{0x62L}}};
    int32_t l_410[10] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
    uint32_t l_411 = 0x39423544L;
    int64_t ***l_430 = &p_967->g_418;
    uint32_t l_513 = 0UL;
    uint32_t l_591 = 4294967295UL;
    uint16_t l_702 = 65535UL;
    struct S0 ***l_704 = &p_967->g_211;
    struct S0 ****l_703 = &l_704;
    uint64_t *l_780[10][10] = {{&p_967->g_273[3][7].f0,&p_967->g_273[3][7].f0,&p_967->g_186,&p_967->g_186,&p_967->g_114.f0,(void*)0,&p_967->g_115.f0,&p_967->g_113.f0,&p_967->g_115.f0,(void*)0},{&p_967->g_273[3][7].f0,&p_967->g_273[3][7].f0,&p_967->g_186,&p_967->g_186,&p_967->g_114.f0,(void*)0,&p_967->g_115.f0,&p_967->g_113.f0,&p_967->g_115.f0,(void*)0},{&p_967->g_273[3][7].f0,&p_967->g_273[3][7].f0,&p_967->g_186,&p_967->g_186,&p_967->g_114.f0,(void*)0,&p_967->g_115.f0,&p_967->g_113.f0,&p_967->g_115.f0,(void*)0},{&p_967->g_273[3][7].f0,&p_967->g_273[3][7].f0,&p_967->g_186,&p_967->g_186,&p_967->g_114.f0,(void*)0,&p_967->g_115.f0,&p_967->g_113.f0,&p_967->g_115.f0,(void*)0},{&p_967->g_273[3][7].f0,&p_967->g_273[3][7].f0,&p_967->g_186,&p_967->g_186,&p_967->g_114.f0,(void*)0,&p_967->g_115.f0,&p_967->g_113.f0,&p_967->g_115.f0,(void*)0},{&p_967->g_273[3][7].f0,&p_967->g_273[3][7].f0,&p_967->g_186,&p_967->g_186,&p_967->g_114.f0,(void*)0,&p_967->g_115.f0,&p_967->g_113.f0,&p_967->g_115.f0,(void*)0},{&p_967->g_273[3][7].f0,&p_967->g_273[3][7].f0,&p_967->g_186,&p_967->g_186,&p_967->g_114.f0,(void*)0,&p_967->g_115.f0,&p_967->g_113.f0,&p_967->g_115.f0,(void*)0},{&p_967->g_273[3][7].f0,&p_967->g_273[3][7].f0,&p_967->g_186,&p_967->g_186,&p_967->g_114.f0,(void*)0,&p_967->g_115.f0,&p_967->g_113.f0,&p_967->g_115.f0,(void*)0},{&p_967->g_273[3][7].f0,&p_967->g_273[3][7].f0,&p_967->g_186,&p_967->g_186,&p_967->g_114.f0,(void*)0,&p_967->g_115.f0,&p_967->g_113.f0,&p_967->g_115.f0,(void*)0},{&p_967->g_273[3][7].f0,&p_967->g_273[3][7].f0,&p_967->g_186,&p_967->g_186,&p_967->g_114.f0,(void*)0,&p_967->g_115.f0,&p_967->g_113.f0,&p_967->g_115.f0,(void*)0}};
    uint8_t l_786 = 255UL;
    uint16_t l_835 = 0xE86FL;
    int32_t *l_883 = &p_967->g_9[3];
    int64_t l_884 = 0L;
    int i, j, k;
    if ((safe_mod_func_int16_t_s_s((safe_add_func_int32_t_s_s((safe_lshift_func_int16_t_s_s(l_301, (l_301 <= (l_302 = l_301)))), (-4L))), (-1L))))
    { /* block id: 166 */
        return l_301;
    }
    else
    { /* block id: 168 */
        uint16_t l_327[2][1][5] = {{{0x4A89L,0x4A89L,0x4A89L,0x4A89L,0x4A89L}},{{0x4A89L,0x4A89L,0x4A89L,0x4A89L,0x4A89L}}};
        uint32_t l_328 = 0x336BB514L;
        uint64_t *l_329 = &p_967->g_74.f0;
        int16_t *l_330[2][9][3] = {{{&p_967->g_23,&p_967->g_23,(void*)0},{&p_967->g_23,&p_967->g_23,(void*)0},{&p_967->g_23,&p_967->g_23,(void*)0},{&p_967->g_23,&p_967->g_23,(void*)0},{&p_967->g_23,&p_967->g_23,(void*)0},{&p_967->g_23,&p_967->g_23,(void*)0},{&p_967->g_23,&p_967->g_23,(void*)0},{&p_967->g_23,&p_967->g_23,(void*)0},{&p_967->g_23,&p_967->g_23,(void*)0}},{{&p_967->g_23,&p_967->g_23,(void*)0},{&p_967->g_23,&p_967->g_23,(void*)0},{&p_967->g_23,&p_967->g_23,(void*)0},{&p_967->g_23,&p_967->g_23,(void*)0},{&p_967->g_23,&p_967->g_23,(void*)0},{&p_967->g_23,&p_967->g_23,(void*)0},{&p_967->g_23,&p_967->g_23,(void*)0},{&p_967->g_23,&p_967->g_23,(void*)0},{&p_967->g_23,&p_967->g_23,(void*)0}}};
        int32_t l_375 = 0x65E0AC7FL;
        int64_t *l_416 = &p_967->g_88;
        int64_t **l_415 = &l_416;
        int64_t l_501 = (-2L);
        int32_t l_509[5][7][2] = {{{0x24C196D1L,0x24C196D1L},{0x24C196D1L,0x24C196D1L},{0x24C196D1L,0x24C196D1L},{0x24C196D1L,0x24C196D1L},{0x24C196D1L,0x24C196D1L},{0x24C196D1L,0x24C196D1L},{0x24C196D1L,0x24C196D1L}},{{0x24C196D1L,0x24C196D1L},{0x24C196D1L,0x24C196D1L},{0x24C196D1L,0x24C196D1L},{0x24C196D1L,0x24C196D1L},{0x24C196D1L,0x24C196D1L},{0x24C196D1L,0x24C196D1L},{0x24C196D1L,0x24C196D1L}},{{0x24C196D1L,0x24C196D1L},{0x24C196D1L,0x24C196D1L},{0x24C196D1L,0x24C196D1L},{0x24C196D1L,0x24C196D1L},{0x24C196D1L,0x24C196D1L},{0x24C196D1L,0x24C196D1L},{0x24C196D1L,0x24C196D1L}},{{0x24C196D1L,0x24C196D1L},{0x24C196D1L,0x24C196D1L},{0x24C196D1L,0x24C196D1L},{0x24C196D1L,0x24C196D1L},{0x24C196D1L,0x24C196D1L},{0x24C196D1L,0x24C196D1L},{0x24C196D1L,0x24C196D1L}},{{0x24C196D1L,0x24C196D1L},{0x24C196D1L,0x24C196D1L},{0x24C196D1L,0x24C196D1L},{0x24C196D1L,0x24C196D1L},{0x24C196D1L,0x24C196D1L},{0x24C196D1L,0x24C196D1L},{0x24C196D1L,0x24C196D1L}}};
        int8_t l_511 = 0x45L;
        int32_t l_512 = 0x3381E3BDL;
        struct S0 ***l_694 = &p_967->g_211;
        struct S0 ****l_693 = &l_694;
        uint8_t l_796 = 0UL;
        uint32_t l_872[6][3] = {{4294967295UL,4294967295UL,4294967295UL},{4294967295UL,4294967295UL,4294967295UL},{4294967295UL,4294967295UL,4294967295UL},{4294967295UL,4294967295UL,4294967295UL},{4294967295UL,4294967295UL,4294967295UL},{4294967295UL,4294967295UL,4294967295UL}};
        int i, j, k;
        (1 + 1);
    }
    return l_884;
}


/* ------------------------------------------ */
/* 
 * reads : p_967->g_169.f1 p_967->g_4 p_967->g_215 p_967->g_176 p_967->g_54 p_967->g_55 p_967->g_115.f0 p_967->g_114.f1 p_967->g_50 p_967->g_9 p_967->g_23 p_967->g_271 p_967->g_273 p_967->g_188 p_967->g_90 p_967->g_49 p_967->g_112 p_967->g_91.f1 p_967->g_146 p_967->g_74.f0 p_967->g_73
 * writes: p_967->g_169.f1 p_967->g_188 p_967->g_215 p_967->g_88 p_967->g_50 p_967->g_272 p_967->g_55 p_967->g_291
 */
int32_t ** func_34(int32_t ** p_35, int16_t * p_36, int32_t * p_37, int64_t  p_38, struct S0 * p_39, struct S2 * p_967)
{ /* block id: 126 */
    uint64_t l_243[6][4][6] = {{{18446744073709551615UL,0xFF94884E09EEEB41L,0UL,0x5923DCEDF3DF780BL,0UL,0xFF94884E09EEEB41L},{18446744073709551615UL,0xFF94884E09EEEB41L,0UL,0x5923DCEDF3DF780BL,0UL,0xFF94884E09EEEB41L},{18446744073709551615UL,0xFF94884E09EEEB41L,0UL,0x5923DCEDF3DF780BL,0UL,0xFF94884E09EEEB41L},{18446744073709551615UL,0xFF94884E09EEEB41L,0UL,0x5923DCEDF3DF780BL,0UL,0xFF94884E09EEEB41L}},{{18446744073709551615UL,0xFF94884E09EEEB41L,0UL,0x5923DCEDF3DF780BL,0UL,0xFF94884E09EEEB41L},{18446744073709551615UL,0xFF94884E09EEEB41L,0UL,0x5923DCEDF3DF780BL,0UL,0xFF94884E09EEEB41L},{18446744073709551615UL,0xFF94884E09EEEB41L,0UL,0x5923DCEDF3DF780BL,0UL,0xFF94884E09EEEB41L},{18446744073709551615UL,0xFF94884E09EEEB41L,0UL,0x5923DCEDF3DF780BL,0UL,0xFF94884E09EEEB41L}},{{18446744073709551615UL,0xFF94884E09EEEB41L,0UL,0x5923DCEDF3DF780BL,0UL,0xFF94884E09EEEB41L},{18446744073709551615UL,0xFF94884E09EEEB41L,0UL,0x5923DCEDF3DF780BL,0UL,0xFF94884E09EEEB41L},{18446744073709551615UL,0xFF94884E09EEEB41L,0UL,0x5923DCEDF3DF780BL,0UL,0xFF94884E09EEEB41L},{18446744073709551615UL,0xFF94884E09EEEB41L,0UL,0x5923DCEDF3DF780BL,0UL,0xFF94884E09EEEB41L}},{{18446744073709551615UL,0xFF94884E09EEEB41L,0UL,0x5923DCEDF3DF780BL,0UL,0xFF94884E09EEEB41L},{18446744073709551615UL,0xFF94884E09EEEB41L,0UL,0x5923DCEDF3DF780BL,0UL,0xFF94884E09EEEB41L},{18446744073709551615UL,0xFF94884E09EEEB41L,0UL,0x5923DCEDF3DF780BL,0UL,0xFF94884E09EEEB41L},{18446744073709551615UL,0xFF94884E09EEEB41L,0UL,0x5923DCEDF3DF780BL,0UL,0xFF94884E09EEEB41L}},{{18446744073709551615UL,0xFF94884E09EEEB41L,0UL,0x5923DCEDF3DF780BL,0UL,0xFF94884E09EEEB41L},{18446744073709551615UL,0xFF94884E09EEEB41L,0UL,0x5923DCEDF3DF780BL,0UL,0xFF94884E09EEEB41L},{18446744073709551615UL,0xFF94884E09EEEB41L,0UL,0x5923DCEDF3DF780BL,0UL,0xFF94884E09EEEB41L},{18446744073709551615UL,0xFF94884E09EEEB41L,0UL,0x5923DCEDF3DF780BL,0UL,0xFF94884E09EEEB41L}},{{18446744073709551615UL,0xFF94884E09EEEB41L,0UL,0x5923DCEDF3DF780BL,0UL,0xFF94884E09EEEB41L},{18446744073709551615UL,0xFF94884E09EEEB41L,0UL,0x5923DCEDF3DF780BL,0UL,0xFF94884E09EEEB41L},{18446744073709551615UL,0xFF94884E09EEEB41L,0UL,0x5923DCEDF3DF780BL,0UL,0xFF94884E09EEEB41L},{18446744073709551615UL,0xFF94884E09EEEB41L,0UL,0x5923DCEDF3DF780BL,0UL,0xFF94884E09EEEB41L}}};
    int32_t **l_266 = &p_967->g_50;
    int64_t l_268 = 0x0BCA9C80D5F18405L;
    union U1 *l_270 = &p_967->g_176[1];
    int32_t l_275 = 0x7E15BE1CL;
    int32_t l_276 = 1L;
    int32_t l_278 = 0L;
    int32_t l_279 = (-1L);
    int64_t l_280[6][5] = {{0x6EE88FD73BD415FDL,0x6EE88FD73BD415FDL,0x6EE88FD73BD415FDL,0x6EE88FD73BD415FDL,0x6EE88FD73BD415FDL},{0x6EE88FD73BD415FDL,0x6EE88FD73BD415FDL,0x6EE88FD73BD415FDL,0x6EE88FD73BD415FDL,0x6EE88FD73BD415FDL},{0x6EE88FD73BD415FDL,0x6EE88FD73BD415FDL,0x6EE88FD73BD415FDL,0x6EE88FD73BD415FDL,0x6EE88FD73BD415FDL},{0x6EE88FD73BD415FDL,0x6EE88FD73BD415FDL,0x6EE88FD73BD415FDL,0x6EE88FD73BD415FDL,0x6EE88FD73BD415FDL},{0x6EE88FD73BD415FDL,0x6EE88FD73BD415FDL,0x6EE88FD73BD415FDL,0x6EE88FD73BD415FDL,0x6EE88FD73BD415FDL},{0x6EE88FD73BD415FDL,0x6EE88FD73BD415FDL,0x6EE88FD73BD415FDL,0x6EE88FD73BD415FDL,0x6EE88FD73BD415FDL}};
    int32_t l_281[5][1][1] = {{{0L}},{{0L}},{{0L}},{{0L}},{{0L}}};
    int16_t l_293 = 0x4E1CL;
    int i, j, k;
    for (p_967->g_169.f1 = 0; (p_967->g_169.f1 <= 1); p_967->g_169.f1 += 1)
    { /* block id: 129 */
        uint32_t l_244 = 0UL;
        uint16_t *l_245 = &p_967->g_188;
        int32_t *l_254 = &p_967->g_215;
        int32_t l_255 = 1L;
        int64_t *l_267 = &p_967->g_88;
        int32_t *l_274[8] = {&l_255,&l_255,&l_255,&l_255,&l_255,&l_255,&l_255,&l_255};
        int16_t l_277 = 1L;
        uint8_t l_282[5] = {0xEDL,0xEDL,0xEDL,0xEDL,0xEDL};
        int i;
        if ((l_243[2][1][4] <= (((*l_245) = (l_244 = 1UL)) || (safe_mul_func_int8_t_s_s((safe_mod_func_uint32_t_u_u(0xAD29EC4DL, (safe_mod_func_uint64_t_u_u((safe_mod_func_int8_t_s_s((l_255 = (((*l_254) ^= p_967->g_4) , p_38)), (((*l_245) = (p_967->g_176[8] , (((safe_div_func_uint64_t_u_u(((safe_mul_func_uint16_t_u_u(((~l_244) > (safe_sub_func_uint16_t_u_u((((*l_267) = (((FAKE_DIVERGE(p_967->global_0_offset, get_global_id(0), 10) ^ ((safe_add_func_uint8_t_u_u((safe_sub_func_int16_t_s_s((l_243[2][2][2] , (((*p_967->g_54) , l_266) != &p_37)), p_967->g_115.f0)), (-1L))) > p_967->g_114.f1)) , FAKE_DIVERGE(p_967->global_0_offset, get_global_id(0), 10)) | 0x886B471EL)) , (**l_266)), 0x460FL))), (**l_266))) >= p_38), p_967->g_23)) , (void*)0) == p_967->g_50))) | 3L))), l_268)))), p_38)))))
        { /* block id: 136 */
            for (p_967->g_88 = 1; (p_967->g_88 >= 0); p_967->g_88 -= 1)
            { /* block id: 139 */
                int32_t *l_269 = &p_967->g_9[2];
                (*l_266) = l_269;
            }
            atomic_max(&p_967->l_atomic_reduction[0], (*p_37) + get_linear_global_id());
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            if (get_linear_local_id() == 0)
                p_967->v_collective += p_967->l_atomic_reduction[0];
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        }
        else
        { /* block id: 143 */
            (*p_967->g_271) = l_270;
        }
        (*p_967->g_54) = p_967->g_273[3][7];
        l_282[4]++;
        for (p_967->g_188 = 2; (p_967->g_188 <= 9); p_967->g_188 += 1)
        { /* block id: 150 */
            uint16_t l_285 = 0x511CL;
            int32_t l_292 = 0L;
            for (l_275 = 1; (l_275 <= 4); l_275 += 1)
            { /* block id: 153 */
                uint32_t *l_290 = &p_967->g_291[7][5];
                int i, j;
                (**p_967->g_112) = (**p_967->g_90);
                l_285--;
                l_292 ^= ((*p_36) || (((FAKE_DIVERGE(p_967->global_1_offset, get_global_id(1), 10) < p_967->g_91[3][1].f1) <= ((*l_290) = ((l_280[(l_275 + 1)][l_275] ^= (FAKE_DIVERGE(p_967->group_1_offset, get_group_id(1), 10) >= (-1L))) < (safe_lshift_func_uint16_t_u_s(p_967->g_146, 4))))) & p_967->g_74.f0));
            }
            if (l_293)
                break;
        }
    }
    return l_266;
}


/* ------------------------------------------ */
/* 
 * reads : p_967->g_49 p_967->g_50 p_967->g_90
 * writes: p_967->g_50
 */
int32_t ** func_40(int32_t ** p_41, uint32_t  p_42, struct S0 * p_43, uint16_t  p_44, uint8_t  p_45, struct S2 * p_967)
{ /* block id: 123 */
    (*p_967->g_49) = (*p_967->g_49);
    return (*p_967->g_90);
}


/* ------------------------------------------ */
/* 
 * reads : p_967->g_54 p_967->g_55.f1 p_967->g_23 p_967->g_49 p_967->g_50 p_967->g_9 p_967->g_74 p_967->g_3 p_967->g_55.f2 p_967->g_90 p_967->g_91 p_967->g_73 p_967->g_112 p_967->g_113 p_967->g_115 p_967->g_92.f2 p_967->g_140 p_967->g_88 p_967->g_55 p_967->g_176 p_967->g_146 p_967->g_4 p_967->g_169.f1 p_967->g_186 p_967->g_169.f0 p_967->g_210 p_967->g_215 p_967->g_234 p_967->g_169.f2 p_967->g_235
 * writes: p_967->g_49 p_967->g_23 p_967->g_73 p_967->g_3 p_967->g_74.f0 p_967->g_88 p_967->g_55.f0 p_967->g_92 p_967->g_114 p_967->g_55 p_967->g_115.f1 p_967->g_74.f1 p_967->g_146 p_967->g_169 p_967->g_186 p_967->g_188 p_967->g_211 p_967->g_215 p_967->g_234 p_967->g_50 p_967->g_235
 */
int32_t ** func_46(int32_t ** p_47, int32_t * p_48, struct S2 * p_967)
{ /* block id: 13 */
    uint16_t l_56 = 65527UL;
    volatile int16_t ** volatile *l_238[2][10] = {{&p_967->g_235,&p_967->g_235,(void*)0,&p_967->g_235,&p_967->g_235,&p_967->g_235,&p_967->g_235,(void*)0,&p_967->g_235,&p_967->g_235},{&p_967->g_235,&p_967->g_235,(void*)0,&p_967->g_235,&p_967->g_235,&p_967->g_235,&p_967->g_235,(void*)0,&p_967->g_235,&p_967->g_235}};
    int32_t **l_239 = &p_967->g_50;
    int i, j;
    (*p_47) = func_51(p_967->g_54, l_56, p_967);
    p_967->g_235 = (l_56 , (p_967->g_169.f2 , p_967->g_235));
    return l_239;
}


/* ------------------------------------------ */
/* 
 * reads : p_967->g_55.f1 p_967->g_23 p_967->g_49 p_967->g_50 p_967->g_9 p_967->g_74 p_967->g_3 p_967->g_55.f2 p_967->g_90 p_967->g_91 p_967->g_73 p_967->g_112 p_967->g_113 p_967->g_115 p_967->g_54 p_967->g_92.f2 p_967->g_140 p_967->g_88 p_967->g_55 p_967->g_176 p_967->g_146 p_967->g_4 p_967->g_169.f1 p_967->g_186 p_967->g_169.f0 p_967->g_210 p_967->g_215 p_967->g_234
 * writes: p_967->g_49 p_967->g_23 p_967->g_73 p_967->g_3 p_967->g_74.f0 p_967->g_88 p_967->g_55.f0 p_967->g_92 p_967->g_114 p_967->g_55 p_967->g_115.f1 p_967->g_74.f1 p_967->g_146 p_967->g_169 p_967->g_186 p_967->g_188 p_967->g_211 p_967->g_215 p_967->g_234
 */
int32_t * func_51(struct S0 * p_52, uint32_t  p_53, struct S2 * p_967)
{ /* block id: 14 */
    uint32_t l_61 = 1UL;
    struct S0 *l_66 = (void*)0;
    int32_t ***l_67 = &p_967->g_49;
    int8_t l_118[4][6] = {{0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L}};
    int32_t l_149 = 0L;
    int32_t l_150 = 0x6E3382DDL;
    int32_t l_153 = 1L;
    int32_t l_157 = 0x31746632L;
    int32_t l_161[5][3] = {{0x1D165814L,4L,0x4DD5964DL},{0x1D165814L,4L,0x4DD5964DL},{0x1D165814L,4L,0x4DD5964DL},{0x1D165814L,4L,0x4DD5964DL},{0x1D165814L,4L,0x4DD5964DL}};
    uint8_t l_166[2][8] = {{0x1DL,0x1DL,0x1DL,0x1DL,0x1DL,0x1DL,0x1DL,0x1DL},{0x1DL,0x1DL,0x1DL,0x1DL,0x1DL,0x1DL,0x1DL,0x1DL}};
    int i, j;
    if ((safe_div_func_int32_t_s_s((((safe_mul_func_int8_t_s_s((GROUP_DIVERGE(1, 1) && l_61), func_62(p_967->g_55.f1, l_66, ((*l_67) = &p_967->g_50), p_967))) >= p_53) & (safe_lshift_func_uint16_t_u_s((8L == l_118[0][0]), 14))), (safe_mod_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s(((1UL || l_118[0][0]) , p_53), 3)), p_53)))))
    { /* block id: 57 */
        int32_t **l_127 = &p_967->g_50;
        struct S0 *l_128 = (void*)0;
        int64_t *l_130 = &p_967->g_88;
        uint32_t l_141 = 4294967295UL;
        int8_t l_144 = 0x51L;
        int32_t l_145 = 8L;
        int32_t l_156[8][2] = {{3L,0x5C89B844L},{3L,0x5C89B844L},{3L,0x5C89B844L},{3L,0x5C89B844L},{3L,0x5C89B844L},{3L,0x5C89B844L},{3L,0x5C89B844L},{3L,0x5C89B844L}};
        uint32_t l_205 = 0x7F7F05ABL;
        int i, j;
        for (p_967->g_55.f1 = (-28); (p_967->g_55.f1 != 11); ++p_967->g_55.f1)
        { /* block id: 60 */
            int32_t **l_129[5];
            int64_t *l_135[7];
            int8_t l_204 = 0x1BL;
            int i;
            for (i = 0; i < 5; i++)
                l_129[i] = &p_967->g_50;
            for (i = 0; i < 7; i++)
                l_135[i] = &p_967->g_88;
            for (p_967->g_115.f1 = 0; (p_967->g_115.f1 <= 6); p_967->g_115.f1 += 1)
            { /* block id: 63 */
                int64_t **l_131 = (void*)0;
                int64_t **l_132 = (void*)0;
                int64_t *l_134[4][2][6] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
                int64_t **l_133[5];
                int32_t l_152 = 0x25D48A30L;
                int32_t l_155[5];
                int32_t l_159[10] = {0x09118085L,0x09118085L,0x09118085L,0x09118085L,0x09118085L,0x09118085L,0x09118085L,0x09118085L,0x09118085L,0x09118085L};
                int16_t *l_197 = &p_967->g_23;
                int i, j, k;
                for (i = 0; i < 5; i++)
                    l_133[i] = &l_134[2][1][1];
                for (i = 0; i < 5; i++)
                    l_155[i] = 0x4FD87F62L;
                l_141 ^= ((safe_sub_func_uint64_t_u_u(((+((l_127 != (((~((l_66 = (l_128 = &p_967->g_115)) != (void*)0)) < p_967->g_73[p_967->g_115.f1][(p_967->g_115.f1 + 2)]) , l_129[3])) != (((l_130 = l_130) == (l_135[0] = &p_967->g_88)) >= (safe_add_func_int32_t_s_s(((((safe_rshift_func_uint8_t_u_s((((void*)0 == (*l_67)) || 0x38FFA489413133DCL), p_967->g_73[p_967->g_115.f1][(p_967->g_115.f1 + 2)])) , p_967->g_140) , (void*)0) != &p_967->g_88), (-5L)))))) , 0x49A0EE20FB557DD5L), p_53)) < (**l_127));
                for (p_967->g_74.f1 = 20; (p_967->g_74.f1 != 45); p_967->g_74.f1 = safe_add_func_uint16_t_u_u(p_967->g_74.f1, 2))
                { /* block id: 71 */
                    int32_t l_151 = 0x4F008C42L;
                    int32_t l_154 = (-5L);
                    int32_t l_158 = 1L;
                    int32_t l_160 = 0x521CD3C5L;
                    int32_t l_162 = 0x750D2B45L;
                    int32_t l_163 = (-9L);
                    int32_t l_164 = 0x22463E9BL;
                    int32_t l_165[4][1] = {{0x3F68657EL},{0x3F68657EL},{0x3F68657EL},{0x3F68657EL}};
                    int i, j;
                    p_967->g_73[6][6] ^= ((p_967->g_146 = (l_145 = ((*l_130) &= (p_967->g_3[3] || l_144)))) & (safe_rshift_func_uint8_t_u_s(253UL, p_53)));
                    --l_166[0][7];
                    (*l_67) = (*p_967->g_112);
                }
                for (p_53 = 0; (p_53 <= 1); p_53 += 1)
                { /* block id: 81 */
                    int i, j;
                    p_967->g_169 = (*p_967->g_54);
                    l_156[(p_53 + 4)][p_53] = (safe_mul_func_uint16_t_u_u(65535UL, l_156[(p_53 + 1)][p_53]));
                    if ((***l_67))
                    { /* block id: 84 */
                        int32_t l_172[8][6] = {{0L,(-2L),1L,0x6F4952A9L,1L,(-2L)},{0L,(-2L),1L,0x6F4952A9L,1L,(-2L)},{0L,(-2L),1L,0x6F4952A9L,1L,(-2L)},{0L,(-2L),1L,0x6F4952A9L,1L,(-2L)},{0L,(-2L),1L,0x6F4952A9L,1L,(-2L)},{0L,(-2L),1L,0x6F4952A9L,1L,(-2L)},{0L,(-2L),1L,0x6F4952A9L,1L,(-2L)},{0L,(-2L),1L,0x6F4952A9L,1L,(-2L)}};
                        uint16_t l_173 = 3UL;
                        int i, j;
                        l_173++;
                        l_145 = ((p_967->g_176[8] , &p_967->g_114) == p_52);
                    }
                    else
                    { /* block id: 87 */
                        uint32_t *l_183 = &l_141;
                        l_156[(p_53 + 1)][p_53] ^= ((safe_div_func_uint32_t_u_u((safe_mod_func_uint8_t_u_u(((p_967->g_146 != (p_967->g_186 = ((p_53 , (((p_53 ^ (l_155[2] , FAKE_DIVERGE(p_967->local_0_offset, get_local_id(0), 10))) <= 0xEDBEL) | (((((*l_183) = (safe_mod_func_int64_t_s_s(l_155[3], p_967->g_4))) == (((safe_sub_func_uint64_t_u_u((p_53 > (0x5CL != (**l_127))), p_53)) >= p_53) , (*p_967->g_50))) <= FAKE_DIVERGE(p_967->group_1_offset, get_group_id(1), 10)) && p_53))) && p_967->g_91[3][1].f0))) , 0x2BL), FAKE_DIVERGE(p_967->group_0_offset, get_group_id(0), 10))), (*p_967->g_50))) >= 4294967295UL);
                    }
                }
                for (p_967->g_88 = 6; (p_967->g_88 >= 1); p_967->g_88 -= 1)
                { /* block id: 95 */
                    int16_t l_187[6] = {0x71AFL,0x57ABL,0x71AFL,0x71AFL,0x57ABL,0x71AFL};
                    int32_t ***l_202 = &l_127;
                    int i;
                    if ((**p_967->g_49))
                    { /* block id: 96 */
                        int32_t ****l_203 = &l_202;
                        int i;
                        l_204 ^= ((p_967->g_188 = l_187[5]) , ((safe_rshift_func_uint16_t_u_u((((safe_add_func_int8_t_s_s((safe_mod_func_int64_t_s_s((safe_lshift_func_int8_t_s_s(((((((*p_52) , 0x0D01CEF0L) , 0x625BL) && ((void*)0 != l_197)) , ((safe_mul_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u((((*l_203) = l_202) != (void*)0), p_53)), p_967->g_169.f1)) != p_53)) != p_967->g_186), 0)), p_967->g_55.f0)), 9L)) != 8UL) ^ p_967->g_73[5][2]), 4)) != GROUP_DIVERGE(1, 1)));
                        l_205++;
                    }
                    else
                    { /* block id: 101 */
                        atomic_or(&p_967->g_atomic_reduction[get_linear_group_id()], (!(safe_rshift_func_uint16_t_u_u(0UL, 6))) + get_linear_global_id());
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        if (get_linear_local_id() == 0)
                            p_967->v_collective += p_967->g_atomic_reduction[get_linear_group_id()];
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        l_152 |= (p_967->g_73[p_967->g_115.f1][(p_967->g_115.f1 + 2)] ^= (p_967->g_169.f0 , 7L));
                        if ((*p_967->g_50))
                            break;
                        return (**p_967->g_112);
                    }
                }
            }
        }
        (*p_967->g_210) = &l_66;
    }
    else
    { /* block id: 112 */
        int32_t *l_213 = (void*)0;
        int32_t *l_214 = &p_967->g_215;
        int32_t *l_228 = (void*)0;
        int32_t *l_229[6][2] = {{&l_161[4][0],(void*)0},{&l_161[4][0],(void*)0},{&l_161[4][0],(void*)0},{&l_161[4][0],(void*)0},{&l_161[4][0],(void*)0},{&l_161[4][0],(void*)0}};
        struct S0 ***l_233 = &p_967->g_211;
        struct S0 ****l_232 = &l_233;
        int i, j;
        p_967->g_234 |= (((*l_232) = ((*p_967->g_54) , ((((*l_214) |= (safe_unary_minus_func_int16_t_s(p_53))) , (safe_mod_func_uint8_t_u_u((((safe_sub_func_uint8_t_u_u(((safe_add_func_int64_t_s_s(((***l_67) != (((safe_mod_func_int8_t_s_s((-4L), (safe_mod_func_int16_t_s_s(p_967->g_74.f0, (safe_lshift_func_uint16_t_u_s(((***l_67) == (l_153 = (l_150 ^= (p_53 && p_967->g_73[6][6])))), ((safe_rshift_func_uint16_t_u_u(0x7621L, 3)) & (-10L)))))))) , (-8L)) <= (-1L))), (***l_67))) >= p_967->g_115.f0), 0xEAL)) | 65531UL) | 0xFE5F9FC9L), p_53))) , &p_967->g_211))) == (void*)0);
    }
    return (**l_67);
}


/* ------------------------------------------ */
/* 
 * reads : p_967->g_23 p_967->g_49 p_967->g_50 p_967->g_9 p_967->g_74 p_967->g_3 p_967->g_55.f2 p_967->g_90 p_967->g_91 p_967->g_73 p_967->g_112 p_967->g_113 p_967->g_115 p_967->g_54 p_967->g_92.f2
 * writes: p_967->g_23 p_967->g_73 p_967->g_3 p_967->g_74.f0 p_967->g_88 p_967->g_55.f0 p_967->g_49 p_967->g_92 p_967->g_114 p_967->g_55
 */
int8_t  func_62(uint32_t  p_63, struct S0 * p_64, int32_t ** p_65, struct S2 * p_967)
{ /* block id: 16 */
    uint16_t l_97[5][9] = {{0xC105L,65529UL,65526UL,9UL,65526UL,65529UL,0xC105L,1UL,0xEA89L},{0xC105L,65529UL,65526UL,9UL,65526UL,65529UL,0xC105L,1UL,0xEA89L},{0xC105L,65529UL,65526UL,9UL,65526UL,65529UL,0xC105L,1UL,0xEA89L},{0xC105L,65529UL,65526UL,9UL,65526UL,65529UL,0xC105L,1UL,0xEA89L},{0xC105L,65529UL,65526UL,9UL,65526UL,65529UL,0xC105L,1UL,0xEA89L}};
    int32_t l_103 = 0L;
    int i, j;
    for (p_967->g_23 = 0; (p_967->g_23 <= 27); p_967->g_23 = safe_add_func_uint32_t_u_u(p_967->g_23, 2))
    { /* block id: 19 */
        uint64_t l_109 = 0x913E687FAFF4B716L;
        for (p_63 = (-1); (p_63 < 45); p_63++)
        { /* block id: 22 */
            int32_t *l_72 = &p_967->g_73[6][6];
            int32_t *l_104 = &l_103;
            int32_t *l_105 = &l_103;
            int32_t *l_106 = &p_967->g_73[2][1];
            int32_t *l_107 = &l_103;
            int32_t *l_108[5][9][5] = {{{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]}},{{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]}},{{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]}},{{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]}},{{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]},{&p_967->g_9[1],&p_967->g_9[1],(void*)0,&l_103,&p_967->g_9[3]}}};
            int i, j, k;
            if ((**p_967->g_49))
                break;
            (*l_72) = 0L;
            if ((**p_967->g_49))
            { /* block id: 25 */
                uint16_t l_75 = 65535UL;
                int32_t l_89 = 0x0448041AL;
                int32_t *l_93 = &l_89;
                int32_t *l_94 = &p_967->g_73[3][5];
                int32_t *l_95 = &p_967->g_73[6][6];
                int32_t *l_96[8] = {&p_967->g_9[2],&l_89,&p_967->g_9[2],&p_967->g_9[2],&l_89,&p_967->g_9[2],&p_967->g_9[2],&l_89};
                int i;
                if ((p_967->g_74 , l_75))
                { /* block id: 26 */
                    p_967->g_3[4] ^= (**p_65);
                }
                else
                { /* block id: 28 */
                    for (p_967->g_74.f0 = 0; (p_967->g_74.f0 >= 52); p_967->g_74.f0++)
                    { /* block id: 31 */
                        int32_t l_86 = 0L;
                        int64_t *l_87 = &p_967->g_88;
                        l_89 &= ((p_967->g_55.f0 = (safe_add_func_int32_t_s_s(((*l_72) = 0x249DF3C4L), (((*l_87) = (((safe_sub_func_uint32_t_u_u(((((FAKE_DIVERGE(p_967->group_0_offset, get_group_id(0), 10) <= (safe_rshift_func_int8_t_s_u(((((((void*)0 == &p_967->g_50) >= (l_75 != ((p_967->g_74.f0 , (p_63 , 0x700AL)) > (((safe_rshift_func_int16_t_s_u(p_967->g_9[3], l_86)) || 0xD644770C58F83956L) == p_63)))) | p_63) || p_63) && p_967->g_9[3]), p_63))) < p_967->g_55.f2) & 65535UL) || p_63), p_967->g_9[3])) >= (-3L)) <= p_967->g_9[3])) , p_967->g_74.f1)))) != 18446744073709551614UL);
                        (*p_967->g_90) = &p_967->g_50;
                    }
                    p_967->g_92 = p_967->g_91[3][1];
                }
                l_97[4][0]--;
                if ((**p_967->g_49))
                    break;
            }
            else
            { /* block id: 42 */
                uint16_t *l_102 = &l_97[1][3];
                (*l_72) ^= (l_103 = (safe_div_func_uint32_t_u_u((((p_63 != p_63) , ((*l_102) = p_967->g_91[3][1].f1)) <= 0x66B2L), p_63)));
                if ((**p_65))
                    break;
                return p_967->g_91[3][1].f1;
            }
            --l_109;
        }
        (*p_967->g_112) = p_65;
        if ((*p_967->g_50))
            continue;
        p_967->g_114 = p_967->g_113;
    }
    (*p_967->g_54) = p_967->g_115;
    return p_967->g_92.f2;
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S2 c_968;
    struct S2* p_967 = &c_968;
    struct S2 c_969 = {
        0x2888ADAEL, // p_967->g_2
        {9L,9L,9L,9L,9L,9L,9L,9L,9L,9L}, // p_967->g_3
        1L, // p_967->g_4
        {0x4B24CE55L,0x4B24CE55L,0x4B24CE55L,0x4B24CE55L}, // p_967->g_9
        (-4L), // p_967->g_23
        &p_967->g_9[3], // p_967->g_50
        &p_967->g_50, // p_967->g_49
        {18446744073709551612UL,0xEFCE06DFE53505CEL,0x6C6F9132F4BB0F55L}, // p_967->g_55
        &p_967->g_55, // p_967->g_54
        {{0L,0x55E714ABL,(-1L),0x7C0CB0A7L,(-3L),0x68B3EC6BL,(-1L),(-1L),(-1L)},{0L,0x55E714ABL,(-1L),0x7C0CB0A7L,(-3L),0x68B3EC6BL,(-1L),(-1L),(-1L)},{0L,0x55E714ABL,(-1L),0x7C0CB0A7L,(-3L),0x68B3EC6BL,(-1L),(-1L),(-1L)},{0L,0x55E714ABL,(-1L),0x7C0CB0A7L,(-3L),0x68B3EC6BL,(-1L),(-1L),(-1L)},{0L,0x55E714ABL,(-1L),0x7C0CB0A7L,(-3L),0x68B3EC6BL,(-1L),(-1L),(-1L)},{0L,0x55E714ABL,(-1L),0x7C0CB0A7L,(-3L),0x68B3EC6BL,(-1L),(-1L),(-1L)},{0L,0x55E714ABL,(-1L),0x7C0CB0A7L,(-3L),0x68B3EC6BL,(-1L),(-1L),(-1L)}}, // p_967->g_73
        {0x6AAEF4046227A4C9L,0xF5CA20838156AC6DL,0x2280505B3EA3FEE2L}, // p_967->g_74
        (-10L), // p_967->g_88
        &p_967->g_49, // p_967->g_90
        {{{0UL,0x8BF77F61DB451224L,0x76C37093F07CA432L},{0UL,0x8BF77F61DB451224L,0x76C37093F07CA432L}},{{0UL,0x8BF77F61DB451224L,0x76C37093F07CA432L},{0UL,0x8BF77F61DB451224L,0x76C37093F07CA432L}},{{0UL,0x8BF77F61DB451224L,0x76C37093F07CA432L},{0UL,0x8BF77F61DB451224L,0x76C37093F07CA432L}},{{0UL,0x8BF77F61DB451224L,0x76C37093F07CA432L},{0UL,0x8BF77F61DB451224L,0x76C37093F07CA432L}}}, // p_967->g_91
        {0xCEE854D9B325F0A2L,0UL,0x065AEC415B45A7EAL}, // p_967->g_92
        &p_967->g_49, // p_967->g_112
        {1UL,0x9E5FB73896F98B6AL,0x21C59027B06419DAL}, // p_967->g_113
        {18446744073709551609UL,18446744073709551606UL,0x55B4F6F77BD324CDL}, // p_967->g_114
        {7UL,0x124C238B7C099D7EL,0L}, // p_967->g_115
        {1UL}, // p_967->g_140
        0x4B15D7F0L, // p_967->g_146
        {0xB461A26F64156023L,0x8FA38932FEBF8EEFL,0x2F958129354101DEL}, // p_967->g_169
        {{0xA38E781DF53A70F7L},{0xA38E781DF53A70F7L},{0xA38E781DF53A70F7L},{0xA38E781DF53A70F7L},{0xA38E781DF53A70F7L},{0xA38E781DF53A70F7L},{0xA38E781DF53A70F7L},{0xA38E781DF53A70F7L},{0xA38E781DF53A70F7L},{0xA38E781DF53A70F7L}}, // p_967->g_176
        9UL, // p_967->g_186
        0xC0F7L, // p_967->g_188
        &p_967->g_54, // p_967->g_211
        &p_967->g_211, // p_967->g_210
        0x746EB0CFL, // p_967->g_215
        252UL, // p_967->g_234
        {0x0676L,0x0676L,0x0676L,0x0676L,0x0676L,0x0676L,0x0676L,0x0676L,0x0676L,0x0676L}, // p_967->g_237
        &p_967->g_237[0], // p_967->g_236
        &p_967->g_236, // p_967->g_235
        &p_967->g_140, // p_967->g_272
        &p_967->g_272, // p_967->g_271
        {{{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x2FC2866AC8FD1A81L,9L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x2FC2866AC8FD1A81L,9L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x2FC2866AC8FD1A81L,9L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L}},{{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x2FC2866AC8FD1A81L,9L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x2FC2866AC8FD1A81L,9L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x2FC2866AC8FD1A81L,9L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L}},{{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x2FC2866AC8FD1A81L,9L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x2FC2866AC8FD1A81L,9L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x2FC2866AC8FD1A81L,9L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L}},{{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x2FC2866AC8FD1A81L,9L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x2FC2866AC8FD1A81L,9L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x2FC2866AC8FD1A81L,9L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L}},{{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x2FC2866AC8FD1A81L,9L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x2FC2866AC8FD1A81L,9L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x2FC2866AC8FD1A81L,9L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L}},{{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x2FC2866AC8FD1A81L,9L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x2FC2866AC8FD1A81L,9L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x2FC2866AC8FD1A81L,9L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L}},{{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x2FC2866AC8FD1A81L,9L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x2FC2866AC8FD1A81L,9L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x2FC2866AC8FD1A81L,9L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L},{1UL,0x9FFF2E2D8AA018CEL,0x6CB34F8BCEA9F631L}}}, // p_967->g_273
        {{4294967295UL,0x2673A016L,0x130E7721L,0xD76916E9L,0x2673A016L,0xD76916E9L,0x130E7721L,0x2673A016L},{4294967295UL,0x2673A016L,0x130E7721L,0xD76916E9L,0x2673A016L,0xD76916E9L,0x130E7721L,0x2673A016L},{4294967295UL,0x2673A016L,0x130E7721L,0xD76916E9L,0x2673A016L,0xD76916E9L,0x130E7721L,0x2673A016L},{4294967295UL,0x2673A016L,0x130E7721L,0xD76916E9L,0x2673A016L,0xD76916E9L,0x130E7721L,0x2673A016L},{4294967295UL,0x2673A016L,0x130E7721L,0xD76916E9L,0x2673A016L,0xD76916E9L,0x130E7721L,0x2673A016L},{4294967295UL,0x2673A016L,0x130E7721L,0xD76916E9L,0x2673A016L,0xD76916E9L,0x130E7721L,0x2673A016L},{4294967295UL,0x2673A016L,0x130E7721L,0xD76916E9L,0x2673A016L,0xD76916E9L,0x130E7721L,0x2673A016L},{4294967295UL,0x2673A016L,0x130E7721L,0xD76916E9L,0x2673A016L,0xD76916E9L,0x130E7721L,0x2673A016L},{4294967295UL,0x2673A016L,0x130E7721L,0xD76916E9L,0x2673A016L,0xD76916E9L,0x130E7721L,0x2673A016L}}, // p_967->g_291
        &p_967->g_73[3][4], // p_967->g_356
        (-8L), // p_967->g_395
        {&p_967->g_395,&p_967->g_395,&p_967->g_395,&p_967->g_395,&p_967->g_395,&p_967->g_395,&p_967->g_395}, // p_967->g_394
        0xA8EAL, // p_967->g_397
        (void*)0, // p_967->g_419
        &p_967->g_419, // p_967->g_418
        &p_967->g_418, // p_967->g_429
        {18446744073709551615UL,0UL,0x35E1BA5065EC5F21L}, // p_967->g_439
        {0xB3B6C23B9AD47817L,0x4A9D61DE256527B4L,1L}, // p_967->g_502
        {1UL,18446744073709551615UL,0x53DABBFB59DBB365L}, // p_967->g_554
        1L, // p_967->g_589
        {18446744073709551615UL}, // p_967->g_611
        (-2L), // p_967->g_660
        {0UL,0x7C114F376A65A385L,0L}, // p_967->g_663
        4294967295UL, // p_967->g_705
        {3UL,18446744073709551612UL,0L}, // p_967->g_732
        &p_967->g_73[6][6], // p_967->g_745
        {{{&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272},{&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272},{&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272},{&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272},{&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272}},{{&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272},{&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272},{&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272},{&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272},{&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272,&p_967->g_272}}}, // p_967->g_747
        {0xADA09FDE8915D6E4L,0x0EFFF85E37D9A928L,6L}, // p_967->g_755
        0xDF669E84L, // p_967->g_779
        {0x8A10302AE495C2BFL,0xAE9E13754318C572L,0L}, // p_967->g_783
        {{{4UL,4UL,1UL,0x5EL},{4UL,4UL,1UL,0x5EL},{4UL,4UL,1UL,0x5EL},{4UL,4UL,1UL,0x5EL}},{{4UL,4UL,1UL,0x5EL},{4UL,4UL,1UL,0x5EL},{4UL,4UL,1UL,0x5EL},{4UL,4UL,1UL,0x5EL}},{{4UL,4UL,1UL,0x5EL},{4UL,4UL,1UL,0x5EL},{4UL,4UL,1UL,0x5EL},{4UL,4UL,1UL,0x5EL}}}, // p_967->g_810
        {0xD7F0B3CBCDFF5B21L,1UL,0x631B4BEC66F41851L}, // p_967->g_830
        {0UL,18446744073709551615UL,0x3118EC2764E06301L}, // p_967->g_831
        {0x28E9D57347478C7AL}, // p_967->g_949
        {0x8B8BE6ACD6ED68FCL}, // p_967->g_966
        0, // p_967->v_collective
        sequence_input[get_global_id(0)], // p_967->global_0_offset
        sequence_input[get_global_id(1)], // p_967->global_1_offset
        sequence_input[get_global_id(2)], // p_967->global_2_offset
        sequence_input[get_local_id(0)], // p_967->local_0_offset
        sequence_input[get_local_id(1)], // p_967->local_1_offset
        sequence_input[get_local_id(2)], // p_967->local_2_offset
        sequence_input[get_group_id(0)], // p_967->group_0_offset
        sequence_input[get_group_id(1)], // p_967->group_1_offset
        sequence_input[get_group_id(2)], // p_967->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_968 = c_969;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_967);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_967->g_2, "p_967->g_2", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_967->g_3[i], "p_967->g_3[i]", print_hash_value);

    }
    transparent_crc(p_967->g_4, "p_967->g_4", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_967->g_9[i], "p_967->g_9[i]", print_hash_value);

    }
    transparent_crc(p_967->g_23, "p_967->g_23", print_hash_value);
    transparent_crc(p_967->g_55.f0, "p_967->g_55.f0", print_hash_value);
    transparent_crc(p_967->g_55.f1, "p_967->g_55.f1", print_hash_value);
    transparent_crc(p_967->g_55.f2, "p_967->g_55.f2", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_967->g_73[i][j], "p_967->g_73[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_967->g_74.f0, "p_967->g_74.f0", print_hash_value);
    transparent_crc(p_967->g_74.f1, "p_967->g_74.f1", print_hash_value);
    transparent_crc(p_967->g_74.f2, "p_967->g_74.f2", print_hash_value);
    transparent_crc(p_967->g_88, "p_967->g_88", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_967->g_91[i][j].f0, "p_967->g_91[i][j].f0", print_hash_value);
            transparent_crc(p_967->g_91[i][j].f1, "p_967->g_91[i][j].f1", print_hash_value);
            transparent_crc(p_967->g_91[i][j].f2, "p_967->g_91[i][j].f2", print_hash_value);

        }
    }
    transparent_crc(p_967->g_92.f0, "p_967->g_92.f0", print_hash_value);
    transparent_crc(p_967->g_92.f1, "p_967->g_92.f1", print_hash_value);
    transparent_crc(p_967->g_92.f2, "p_967->g_92.f2", print_hash_value);
    transparent_crc(p_967->g_113.f0, "p_967->g_113.f0", print_hash_value);
    transparent_crc(p_967->g_113.f1, "p_967->g_113.f1", print_hash_value);
    transparent_crc(p_967->g_113.f2, "p_967->g_113.f2", print_hash_value);
    transparent_crc(p_967->g_114.f0, "p_967->g_114.f0", print_hash_value);
    transparent_crc(p_967->g_114.f1, "p_967->g_114.f1", print_hash_value);
    transparent_crc(p_967->g_114.f2, "p_967->g_114.f2", print_hash_value);
    transparent_crc(p_967->g_115.f0, "p_967->g_115.f0", print_hash_value);
    transparent_crc(p_967->g_115.f1, "p_967->g_115.f1", print_hash_value);
    transparent_crc(p_967->g_115.f2, "p_967->g_115.f2", print_hash_value);
    transparent_crc(p_967->g_140.f0, "p_967->g_140.f0", print_hash_value);
    transparent_crc(p_967->g_146, "p_967->g_146", print_hash_value);
    transparent_crc(p_967->g_169.f0, "p_967->g_169.f0", print_hash_value);
    transparent_crc(p_967->g_169.f1, "p_967->g_169.f1", print_hash_value);
    transparent_crc(p_967->g_169.f2, "p_967->g_169.f2", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_967->g_176[i].f0, "p_967->g_176[i].f0", print_hash_value);

    }
    transparent_crc(p_967->g_186, "p_967->g_186", print_hash_value);
    transparent_crc(p_967->g_188, "p_967->g_188", print_hash_value);
    transparent_crc(p_967->g_215, "p_967->g_215", print_hash_value);
    transparent_crc(p_967->g_234, "p_967->g_234", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_967->g_237[i], "p_967->g_237[i]", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_967->g_273[i][j].f0, "p_967->g_273[i][j].f0", print_hash_value);
            transparent_crc(p_967->g_273[i][j].f1, "p_967->g_273[i][j].f1", print_hash_value);
            transparent_crc(p_967->g_273[i][j].f2, "p_967->g_273[i][j].f2", print_hash_value);

        }
    }
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_967->g_291[i][j], "p_967->g_291[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_967->g_395, "p_967->g_395", print_hash_value);
    transparent_crc(p_967->g_397, "p_967->g_397", print_hash_value);
    transparent_crc(p_967->g_439.f0, "p_967->g_439.f0", print_hash_value);
    transparent_crc(p_967->g_439.f1, "p_967->g_439.f1", print_hash_value);
    transparent_crc(p_967->g_439.f2, "p_967->g_439.f2", print_hash_value);
    transparent_crc(p_967->g_502.f0, "p_967->g_502.f0", print_hash_value);
    transparent_crc(p_967->g_502.f1, "p_967->g_502.f1", print_hash_value);
    transparent_crc(p_967->g_502.f2, "p_967->g_502.f2", print_hash_value);
    transparent_crc(p_967->g_554.f0, "p_967->g_554.f0", print_hash_value);
    transparent_crc(p_967->g_554.f1, "p_967->g_554.f1", print_hash_value);
    transparent_crc(p_967->g_554.f2, "p_967->g_554.f2", print_hash_value);
    transparent_crc(p_967->g_589, "p_967->g_589", print_hash_value);
    transparent_crc(p_967->g_611.f0, "p_967->g_611.f0", print_hash_value);
    transparent_crc(p_967->g_660, "p_967->g_660", print_hash_value);
    transparent_crc(p_967->g_663.f0, "p_967->g_663.f0", print_hash_value);
    transparent_crc(p_967->g_663.f1, "p_967->g_663.f1", print_hash_value);
    transparent_crc(p_967->g_663.f2, "p_967->g_663.f2", print_hash_value);
    transparent_crc(p_967->g_705, "p_967->g_705", print_hash_value);
    transparent_crc(p_967->g_732.f0, "p_967->g_732.f0", print_hash_value);
    transparent_crc(p_967->g_732.f1, "p_967->g_732.f1", print_hash_value);
    transparent_crc(p_967->g_732.f2, "p_967->g_732.f2", print_hash_value);
    transparent_crc(p_967->g_755.f0, "p_967->g_755.f0", print_hash_value);
    transparent_crc(p_967->g_755.f1, "p_967->g_755.f1", print_hash_value);
    transparent_crc(p_967->g_755.f2, "p_967->g_755.f2", print_hash_value);
    transparent_crc(p_967->g_779, "p_967->g_779", print_hash_value);
    transparent_crc(p_967->g_783.f0, "p_967->g_783.f0", print_hash_value);
    transparent_crc(p_967->g_783.f1, "p_967->g_783.f1", print_hash_value);
    transparent_crc(p_967->g_783.f2, "p_967->g_783.f2", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_967->g_810[i][j][k], "p_967->g_810[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_967->g_830.f0, "p_967->g_830.f0", print_hash_value);
    transparent_crc(p_967->g_830.f1, "p_967->g_830.f1", print_hash_value);
    transparent_crc(p_967->g_830.f2, "p_967->g_830.f2", print_hash_value);
    transparent_crc(p_967->g_831.f0, "p_967->g_831.f0", print_hash_value);
    transparent_crc(p_967->g_831.f1, "p_967->g_831.f1", print_hash_value);
    transparent_crc(p_967->g_831.f2, "p_967->g_831.f2", print_hash_value);
    transparent_crc(p_967->g_949.f0, "p_967->g_949.f0", print_hash_value);
    transparent_crc(p_967->g_966.f0, "p_967->g_966.f0", print_hash_value);
    transparent_crc(p_967->v_collective, "p_967->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
