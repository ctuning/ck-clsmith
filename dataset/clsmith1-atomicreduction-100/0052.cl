// ---atomic_reductions ---fake_divergence -g 17,91,3 -l 17,7,1
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


// Seed: 52

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint32_t  f0;
   volatile uint32_t  f1;
   uint16_t  f2;
   int64_t  f3;
};

union U1 {
   volatile int32_t  f0;
   volatile uint32_t  f1;
};

union U2 {
   volatile int8_t  f0;
   int32_t  f1;
   int32_t  f2;
   volatile uint32_t  f3;
   volatile int64_t  f4;
};

union U3 {
   uint16_t  f0;
   struct S0  f1;
};

struct S4 {
    int32_t g_3;
    int32_t *g_2;
    int32_t ** volatile g_31;
    uint32_t g_54;
    int32_t *g_76;
    int32_t **g_75;
    int16_t g_79[6][8];
    uint32_t g_80;
    union U2 g_82;
    int16_t g_83;
    int32_t g_84;
    uint32_t g_106;
    uint32_t g_108;
    int32_t g_112[7];
    uint64_t g_132;
    volatile int32_t * volatile * volatile * volatile g_159;
    volatile int32_t * volatile * volatile * volatile *g_158;
    int8_t g_166;
    uint16_t g_169;
    int64_t g_187;
    uint8_t g_190;
    int16_t g_225;
    uint32_t g_226;
    uint64_t *g_261;
    struct S0 g_266;
    struct S0 g_270;
    volatile struct S0 g_285;
    volatile struct S0 *g_284;
    volatile struct S0 **g_283[5][2];
    uint32_t *g_299;
    struct S0 *g_303;
    uint32_t g_305;
    uint16_t g_320[1];
    volatile int16_t g_356[7][7];
    volatile int16_t *g_355;
    volatile int16_t **g_354;
    union U2 g_365;
    union U2 g_366[5];
    union U2 g_367[4];
    union U2 g_368;
    union U2 g_369;
    union U2 g_370;
    union U2 g_371;
    union U2 g_372;
    union U2 g_373[1][8];
    union U2 g_374;
    union U2 g_375;
    union U2 g_376;
    union U2 g_377;
    union U2 g_378[7];
    union U2 g_379;
    union U2 g_380;
    union U2 g_381;
    union U2 g_382;
    union U2 g_383;
    volatile struct S0 g_420[3][9];
    volatile struct S0 *g_419;
    uint32_t g_429;
    struct S0 g_445;
    volatile uint8_t g_511;
    uint64_t g_579;
    volatile int32_t g_584;
    uint32_t g_610;
    uint32_t *g_609;
    uint8_t g_632;
    int32_t g_634;
    int32_t *g_633;
    int64_t * volatile g_680[1][1][10];
    int64_t * volatile * volatile g_679[10];
    int8_t g_692;
    int8_t g_694[7][3];
    union U1 g_737[2];
    union U1 *g_738;
    volatile struct S0 g_752;
    int8_t g_786;
    volatile uint16_t g_789;
    struct S0 g_816;
    struct S0 g_824;
    union U3 g_839;
    union U1 g_840;
    uint8_t *g_843;
    volatile uint16_t *g_854;
    volatile uint16_t * volatile *g_853;
    uint32_t * volatile * volatile g_874;
    uint32_t * volatile * volatile *g_873[9][4];
    union U1 g_882;
    union U3 g_895;
    volatile union U3 g_913;
    volatile union U2 g_1018[8];
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
uint16_t  func_1(struct S4 * p_1127);
int32_t * func_5(int8_t  p_6, uint64_t  p_7, int64_t  p_8, int32_t * p_9, struct S4 * p_1127);
int8_t  func_10(uint32_t  p_11, struct S4 * p_1127);
int32_t  func_13(uint8_t  p_14, uint32_t  p_15, int32_t  p_16, int32_t * p_17, struct S4 * p_1127);
uint16_t  func_19(int32_t  p_20, int32_t  p_21, int32_t ** p_22, int32_t * p_23, int32_t ** p_24, struct S4 * p_1127);
int8_t  func_25(int64_t  p_26, int32_t  p_27, struct S4 * p_1127);
int64_t  func_28(int64_t  p_29, struct S4 * p_1127);
uint8_t  func_36(int32_t * p_37, int32_t  p_38, uint16_t  p_39, int32_t ** p_40, struct S4 * p_1127);
int32_t * func_41(uint32_t  p_42, int32_t ** p_43, int32_t  p_44, struct S4 * p_1127);
int8_t  func_58(int32_t * p_59, int64_t  p_60, struct S4 * p_1127);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1127->g_2 p_1127->g_3 p_1127->g_31 p_1127->g_79 p_1127->g_80 p_1127->g_83 p_1127->g_84 p_1127->g_75 p_1127->g_82.f2 p_1127->g_132 p_1127->g_108 p_1127->g_106 p_1127->g_54 p_1127->g_158 p_1127->g_169 p_1127->g_112 p_1127->g_76 p_1127->g_190 p_1127->g_226 p_1127->g_283 p_1127->g_305 p_1127->g_166 p_1127->g_270.f2 p_1127->g_320 p_1127->g_354 p_1127->g_266.f2 p_1127->g_225 p_1127->g_380.f1 p_1127->g_419 p_1127->g_270.f0 p_1127->g_371.f1 p_1127->g_285.f3 p_1127->g_579 p_1127->g_445.f2 p_1127->g_609 p_1127->g_270.f3 p_1127->g_445.f3 p_1127->g_632 p_1127->g_633 p_1127->g_376.f0 p_1127->g_634 p_1127->g_377.f1 p_1127->g_377.f2 p_1127->g_913 p_1127->g_355 p_1127->g_266.f0 p_1127->g_694 p_1127->g_382.f2 p_1127->g_843 p_1127->g_816 p_1127->g_610 p_1127->g_738 p_1127->g_840 p_1127->g_853 p_1127->g_854 p_1127->g_285.f2 p_1127->g_356 p_1127->g_429 p_1127->g_1018 p_1127->g_895.f0 p_1127->g_373 p_1127->g_737 p_1127->g_420 p_1127->g_839.f0 p_1127->g_187
 * writes: p_1127->g_2 p_1127->g_3 p_1127->g_54 p_1127->g_75 p_1127->g_79 p_1127->g_80 p_1127->g_83 p_1127->g_84 p_1127->g_106 p_1127->g_82.f2 p_1127->g_112 p_1127->g_132 p_1127->g_76 p_1127->g_166 p_1127->g_169 p_1127->g_187 p_1127->g_190 p_1127->g_226 p_1127->g_108 p_1127->g_261 p_1127->g_266.f0 p_1127->g_299 p_1127->g_266.f2 p_1127->g_303 p_1127->g_305 p_1127->g_320 p_1127->g_354 p_1127->g_82.f1 p_1127->g_380.f1 p_1127->g_266.f3 p_1127->g_284 p_1127->g_429 p_1127->g_371.f1 p_1127->g_579 p_1127->g_609 p_1127->g_632 p_1127->g_634 p_1127->g_610 p_1127->g_377.f1 p_1127->g_377.f2 p_1127->g_382.f2 p_1127->g_738 p_1127->g_370.f2 p_1127->g_225 p_1127->g_372.f2 p_1127->g_895.f0 p_1127->g_633 p_1127->g_839.f1.f0 p_1127->g_270.f0 p_1127->g_420 p_1127->g_381.f2 p_1127->g_376.f1 p_1127->g_692 p_1127->g_694 p_1127->g_378.f1 p_1127->g_368.f1
 */
uint16_t  func_1(struct S4 * p_1127)
{ /* block id: 4 */
    int32_t **l_4 = &p_1127->g_2;
    int16_t **l_605 = (void*)0;
    uint32_t *l_608 = (void*)0;
    uint32_t **l_611[1];
    int32_t l_624 = 4L;
    int64_t l_625 = (-5L);
    int64_t l_626 = 0x729DBD1B4162E51BL;
    int32_t *l_627 = &p_1127->g_378[6].f1;
    int32_t *l_628 = &p_1127->g_376.f1;
    int32_t *l_629 = &p_1127->g_368.f1;
    int32_t *l_630 = &p_1127->g_366[1].f1;
    int32_t *l_631[6] = {&l_624,&l_624,&l_624,&l_624,&l_624,&l_624};
    int32_t **l_1110 = &l_631[2];
    uint32_t l_1119 = 4294967295UL;
    struct S0 *l_1120 = &p_1127->g_266;
    struct S0 *l_1121 = &p_1127->g_445;
    uint64_t *l_1122 = &p_1127->g_579;
    int8_t *l_1123 = &p_1127->g_692;
    int8_t *l_1124 = (void*)0;
    int8_t *l_1125 = &p_1127->g_694[6][0];
    int32_t l_1126 = (-7L);
    int i;
    for (i = 0; i < 1; i++)
        l_611[i] = (void*)0;
    (*l_4) = p_1127->g_2;
    (*l_1110) = ((*l_4) = func_5(func_10(p_1127->g_3, p_1127), (safe_rshift_func_uint16_t_u_s(((((p_1127->g_632 &= ((safe_rshift_func_int16_t_s_u((((safe_sub_func_int32_t_s_s((safe_rshift_func_uint8_t_u_u((safe_div_func_int64_t_s_s(((safe_sub_func_uint16_t_u_u((((safe_unary_minus_func_int8_t_s(0x67L)) , l_605) != l_605), (((~(((safe_rshift_func_int8_t_s_u((l_608 == (p_1127->g_609 = p_1127->g_609)), 3)) | ((safe_mod_func_uint32_t_u_u(((safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_1127->global_0_offset, get_global_id(0), 10), (((safe_mul_func_uint16_t_u_u(((p_1127->g_270.f3 | ((safe_mod_func_int16_t_s_s((((p_1127->g_270.f3 != p_1127->g_270.f3) && GROUP_DIVERGE(1, 1)) < p_1127->g_270.f2), 0x0500L)) <= 0L)) | 0x9EA4L), p_1127->g_445.f3)) <= l_624) && l_624))) , p_1127->g_225), 1UL)) , GROUP_DIVERGE(1, 1))) || p_1127->g_270.f3)) != p_1127->g_445.f2) < 0x573C95D2DD57CF03L))) >= p_1127->g_270.f0), l_624)), p_1127->g_270.f3)), l_625)) , &p_1127->g_610) != (void*)0), l_626)) != (-1L))) == 0UL) && 0xD4L) != p_1127->g_445.f2), p_1127->g_225)), p_1127->g_445.f3, p_1127->g_633, p_1127));
    (**l_1110) = ((*l_627) = (0x4BL < (safe_mod_func_int8_t_s_s(((*l_1125) = (((safe_div_func_int64_t_s_s((0x2BL && (((*l_1123) = (safe_lshift_func_uint8_t_u_u(FAKE_DIVERGE(p_1127->global_2_offset, get_global_id(2), 10), ((*l_628) = (safe_mod_func_int16_t_s_s(l_1119, ((p_1127->g_108 = (((**l_4) < (**l_4)) | ((((l_1120 != l_1121) == ((*p_1127->g_609) = 8UL)) <= (l_1122 == (void*)0)) < 4UL))) | p_1127->g_376.f0))))))) == (*p_1127->g_843))), p_1127->g_187)) , (*p_1127->g_354)) == (void*)0)), 255UL))));
    return l_1126;
}


/* ------------------------------------------ */
/* 
 * reads : p_1127->g_376.f0 p_1127->g_132 p_1127->g_112 p_1127->g_2 p_1127->g_634 p_1127->g_3 p_1127->g_609 p_1127->g_83 p_1127->g_633 p_1127->g_31 p_1127->g_913 p_1127->g_270.f0 p_1127->g_445.f2 p_1127->g_354 p_1127->g_355 p_1127->g_266.f0 p_1127->g_225 p_1127->g_694 p_1127->g_79 p_1127->g_80 p_1127->g_84 p_1127->g_75 p_1127->g_843 p_1127->g_190 p_1127->g_816 p_1127->g_610 p_1127->g_738 p_1127->g_840 p_1127->g_632 p_1127->g_853 p_1127->g_854 p_1127->g_285.f2 p_1127->g_356 p_1127->g_429 p_1127->g_54 p_1127->g_108 p_1127->g_270.f3 p_1127->g_320 p_1127->g_1018 p_1127->g_895.f0 p_1127->g_158 p_1127->g_169 p_1127->g_305 p_1127->g_380.f1 p_1127->g_373 p_1127->g_166 p_1127->g_737 p_1127->g_419 p_1127->g_420 p_1127->g_839.f0 p_1127->g_377.f1 p_1127->g_377.f2 p_1127->g_382.f2
 * writes: p_1127->g_634 p_1127->g_610 p_1127->g_632 p_1127->g_3 p_1127->g_377.f1 p_1127->g_377.f2 p_1127->g_303 p_1127->g_79 p_1127->g_54 p_1127->g_75 p_1127->g_80 p_1127->g_83 p_1127->g_84 p_1127->g_2 p_1127->g_382.f2 p_1127->g_738 p_1127->g_106 p_1127->g_370.f2 p_1127->g_261 p_1127->g_132 p_1127->g_225 p_1127->g_372.f2 p_1127->g_895.f0 p_1127->g_633 p_1127->g_169 p_1127->g_380.f1 p_1127->g_839.f1.f0 p_1127->g_270.f0 p_1127->g_299 p_1127->g_420 p_1127->g_381.f2
 */
int32_t * func_5(int8_t  p_6, uint64_t  p_7, int64_t  p_8, int32_t * p_9, struct S4 * p_1127)
{ /* block id: 253 */
    int64_t l_635 = 0x2E54056596CF2069L;
    int32_t l_636[1];
    int32_t **l_649 = &p_1127->g_2;
    uint8_t *l_663 = (void*)0;
    uint8_t *l_664 = &p_1127->g_632;
    uint64_t l_665 = 0x5952909D06D22335L;
    int8_t l_666 = (-9L);
    uint16_t *l_685 = (void*)0;
    int32_t l_745 = 1L;
    uint16_t l_762 = 0x1777L;
    int32_t l_763[8][8][2] = {{{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L}},{{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L}},{{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L}},{{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L}},{{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L}},{{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L}},{{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L}},{{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L},{(-1L),2L}}};
    uint16_t l_770 = 65529UL;
    int32_t l_832[9] = {0x3AEE248FL,0x3AEE248FL,0x3AEE248FL,0x3AEE248FL,0x3AEE248FL,0x3AEE248FL,0x3AEE248FL,0x3AEE248FL,0x3AEE248FL};
    int64_t **l_896 = (void*)0;
    union U2 *l_921 = (void*)0;
    int32_t ***l_1061[6][2];
    int32_t ****l_1060[1];
    int32_t *****l_1062 = &l_1060[0];
    int16_t *l_1063[5][10] = {{&p_1127->g_225,(void*)0,&p_1127->g_79[2][5],(void*)0,&p_1127->g_79[2][5],(void*)0,&p_1127->g_225,(void*)0,&p_1127->g_225,&p_1127->g_225},{&p_1127->g_225,(void*)0,&p_1127->g_79[2][5],(void*)0,&p_1127->g_79[2][5],(void*)0,&p_1127->g_225,(void*)0,&p_1127->g_225,&p_1127->g_225},{&p_1127->g_225,(void*)0,&p_1127->g_79[2][5],(void*)0,&p_1127->g_79[2][5],(void*)0,&p_1127->g_225,(void*)0,&p_1127->g_225,&p_1127->g_225},{&p_1127->g_225,(void*)0,&p_1127->g_79[2][5],(void*)0,&p_1127->g_79[2][5],(void*)0,&p_1127->g_225,(void*)0,&p_1127->g_225,&p_1127->g_225},{&p_1127->g_225,(void*)0,&p_1127->g_79[2][5],(void*)0,&p_1127->g_79[2][5],(void*)0,&p_1127->g_225,(void*)0,&p_1127->g_225,&p_1127->g_225}};
    uint16_t *l_1064 = &p_1127->g_169;
    int16_t l_1065 = 0x6104L;
    uint64_t **l_1096[9] = {&p_1127->g_261,&p_1127->g_261,&p_1127->g_261,&p_1127->g_261,&p_1127->g_261,&p_1127->g_261,&p_1127->g_261,&p_1127->g_261,&p_1127->g_261};
    struct S0 *l_1104 = (void*)0;
    struct S0 *l_1105 = (void*)0;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_636[i] = 0x2C388A77L;
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 2; j++)
            l_1061[i][j] = &l_649;
    }
    for (i = 0; i < 1; i++)
        l_1060[i] = &l_1061[2][0];
lbl_667:
    l_636[0] = ((*p_9) = l_635);
    if (((**l_649) = (safe_mul_func_int8_t_s_s(0x7AL, (safe_rshift_func_int16_t_s_u((~(((0x6C8FL > (safe_add_func_int8_t_s_s(p_1127->g_376.f0, (((safe_mul_func_int8_t_s_s((safe_mod_func_int16_t_s_s(p_1127->g_132, (safe_add_func_int64_t_s_s(((((void*)0 == l_649) & (safe_rshift_func_uint8_t_u_u(p_1127->g_112[0], (safe_rshift_func_uint16_t_u_u((((safe_unary_minus_func_int8_t_s(((safe_mul_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(((*l_664) = (safe_div_func_int64_t_s_s((((*p_1127->g_609) = (**l_649)) >= (((safe_sub_func_uint16_t_u_u((0xC332L < p_7), 0x5278L)) <= 0x1FE8L) <= (**l_649))), 0x8F9A9C5A5D2223A8L))), l_665)), p_8)) > p_8))) , p_6) <= (**l_649)), 12))))) & (**l_649)), l_666)))), p_1127->g_83)) & (**l_649)) ^ (**l_649))))) || 18446744073709551615UL) , (**l_649))), 6))))))
    { /* block id: 259 */
        int16_t l_688 = 0x5ABFL;
        int32_t l_700 = 0x1FED43BBL;
        struct S0 *l_704 = (void*)0;
        int32_t l_774 = 0L;
        int16_t l_776 = 0x371DL;
        int32_t l_779 = (-1L);
        int32_t l_784 = 1L;
        int32_t l_788 = 0x0D68B289L;
        int16_t *l_831 = &p_1127->g_83;
        int16_t **l_830 = &l_831;
        int16_t ***l_829[4];
        int64_t l_850 = 0x576FB292DB6D412EL;
        uint16_t **l_855 = (void*)0;
        int32_t *l_905 = &p_1127->g_374.f1;
        uint32_t l_906 = 0x80F9819AL;
        int i;
        for (i = 0; i < 4; i++)
            l_829[i] = &l_830;
        for (p_7 = 0; (p_7 <= 6); p_7 += 1)
        { /* block id: 262 */
            uint32_t l_711 = 4294967295UL;
            uint16_t l_725 = 0xA6B9L;
            int32_t l_732 = (-10L);
            union U2 *l_761 = &p_1127->g_370;
            int32_t l_775 = 0x668E88D3L;
            uint32_t l_818 = 0x4A6A34DEL;
            int32_t ***l_883 = (void*)0;
            int32_t **l_892 = &p_1127->g_633;
            (1 + 1);
        }
    }
    else
    { /* block id: 368 */
        uint64_t l_918[7][3][2] = {{{0x3D994034ABDBA09CL,18446744073709551615UL},{0x3D994034ABDBA09CL,18446744073709551615UL},{0x3D994034ABDBA09CL,18446744073709551615UL}},{{0x3D994034ABDBA09CL,18446744073709551615UL},{0x3D994034ABDBA09CL,18446744073709551615UL},{0x3D994034ABDBA09CL,18446744073709551615UL}},{{0x3D994034ABDBA09CL,18446744073709551615UL},{0x3D994034ABDBA09CL,18446744073709551615UL},{0x3D994034ABDBA09CL,18446744073709551615UL}},{{0x3D994034ABDBA09CL,18446744073709551615UL},{0x3D994034ABDBA09CL,18446744073709551615UL},{0x3D994034ABDBA09CL,18446744073709551615UL}},{{0x3D994034ABDBA09CL,18446744073709551615UL},{0x3D994034ABDBA09CL,18446744073709551615UL},{0x3D994034ABDBA09CL,18446744073709551615UL}},{{0x3D994034ABDBA09CL,18446744073709551615UL},{0x3D994034ABDBA09CL,18446744073709551615UL},{0x3D994034ABDBA09CL,18446744073709551615UL}},{{0x3D994034ABDBA09CL,18446744073709551615UL},{0x3D994034ABDBA09CL,18446744073709551615UL},{0x3D994034ABDBA09CL,18446744073709551615UL}}};
        int32_t ***l_966 = (void*)0;
        int32_t l_980 = 0x70B16172L;
        int32_t l_982[10][9][2] = {{{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL}},{{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL}},{{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL}},{{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL}},{{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL}},{{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL}},{{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL}},{{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL}},{{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL}},{{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL},{1L,0x20E41F8BL}}};
        int32_t **l_1020 = &p_1127->g_2;
        int i, j, k;
        if (((*p_1127->g_633) = (*p_1127->g_633)))
        { /* block id: 370 */
lbl_931:
            for (p_1127->g_377.f1 = (-22); (p_1127->g_377.f1 == 25); p_1127->g_377.f1 = safe_add_func_int32_t_s_s(p_1127->g_377.f1, 2))
            { /* block id: 373 */
                return (*p_1127->g_31);
            }
        }
        else
        { /* block id: 376 */
            uint32_t **l_909[6][2];
            int32_t *l_912 = &p_1127->g_634;
            struct S0 **l_922 = &p_1127->g_303;
            int16_t *l_923 = &p_1127->g_79[2][5];
            int i, j;
            for (i = 0; i < 6; i++)
            {
                for (j = 0; j < 2; j++)
                    l_909[i][j] = &p_1127->g_609;
            }
            l_909[4][0] = l_909[4][0];
            for (p_1127->g_377.f2 = 0; (p_1127->g_377.f2 == 10); p_1127->g_377.f2 = safe_add_func_int64_t_s_s(p_1127->g_377.f2, 3))
            { /* block id: 380 */
                return l_912;
            }
            (*l_649) = func_41((((p_1127->g_913 , (*l_912)) ^ ((safe_lshift_func_int16_t_s_s(((p_1127->g_270.f0 | ((((*l_923) = (1UL >= ((safe_rshift_func_uint8_t_u_s(l_918[3][1][1], (p_1127->g_445.f2 || (((*l_922) = ((((void*)0 != (*p_1127->g_354)) != (GROUP_DIVERGE(2, 1) >= ((void*)0 != l_921))) , (void*)0)) != (void*)0)))) , l_918[3][1][1]))) == 0x3A94L) && (*p_9))) , (-4L)), p_6)) & p_1127->g_266.f0)) != p_1127->g_225), &l_912, p_1127->g_694[6][0], p_1127);
        }
        if (p_1127->g_225)
            goto lbl_1066;
        for (p_1127->g_382.f2 = 0; (p_1127->g_382.f2 == (-14)); p_1127->g_382.f2 = safe_sub_func_uint64_t_u_u(p_1127->g_382.f2, 1))
        { /* block id: 389 */
            uint64_t *l_943 = &p_1127->g_132;
            int32_t l_979 = 0x1FE39FA7L;
            int32_t l_1034 = (-3L);
            for (l_665 = 24; (l_665 <= 30); l_665++)
            { /* block id: 392 */
                union U1 *l_928 = &p_1127->g_840;
                struct S0 *l_938 = &p_1127->g_816;
                int32_t l_951 = 0x3B9781EFL;
                int32_t l_983 = 0x27A45A6BL;
                int32_t l_984[10][10][2] = {{{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L}},{{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L}},{{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L}},{{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L}},{{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L}},{{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L}},{{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L}},{{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L}},{{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L}},{{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L},{1L,0x6F2287E4L}}};
                int32_t **l_1017 = &p_1127->g_2;
                int32_t **l_1021 = &p_1127->g_633;
                int i, j, k;
                p_1127->g_738 = l_928;
                for (p_1127->g_106 = 0; (p_1127->g_106 >= 40); p_1127->g_106 = safe_add_func_int32_t_s_s(p_1127->g_106, 5))
                { /* block id: 396 */
                    struct S0 **l_939 = &p_1127->g_303;
                    struct S0 *l_941 = &p_1127->g_816;
                    struct S0 **l_940 = &l_941;
                    int32_t l_978 = 0x5D2198D6L;
                    int32_t l_981 = 0x78924A46L;
                    uint32_t l_985 = 0x0CCF94A0L;
                    if (p_1127->g_266.f0)
                        goto lbl_931;
                    for (p_1127->g_370.f2 = 1; (p_1127->g_370.f2 <= 4); p_1127->g_370.f2 += 1)
                    { /* block id: 400 */
                        (*p_1127->g_2) = ((*p_1127->g_843) >= p_1127->g_79[2][5]);
                    }
                    if ((safe_mul_func_int8_t_s_s(p_1127->g_80, (safe_add_func_int64_t_s_s((p_8 >= ((l_938 == ((*l_938) , ((*l_940) = ((*l_939) = &p_1127->g_824)))) <= ((**l_649) | ((void*)0 == &p_1127->g_169)))), FAKE_DIVERGE(p_1127->group_0_offset, get_group_id(0), 10))))))
                    { /* block id: 405 */
                        uint64_t **l_942 = &p_1127->g_261;
                        int32_t l_946 = 0x259F5183L;
                        if (p_1127->g_80)
                            goto lbl_667;
                        (*l_649) = (((((((((*l_942) = &p_1127->g_132) == l_943) < (p_8 > (*p_1127->g_609))) == (safe_sub_func_uint32_t_u_u((((l_946 |= ((*p_1127->g_738) , (p_6 |= p_1127->g_632))) , (((((safe_mul_func_int8_t_s_s(((((safe_add_func_uint64_t_u_u((((*p_1127->g_843) & (p_8 & p_7)) || p_7), 0x2685FDF71A6B7804L)) || p_7) ^ FAKE_DIVERGE(p_1127->group_2_offset, get_group_id(2), 10)) || (**p_1127->g_853)), l_951)) , 0xDE20L) , 0xB999AFB3L) && 9UL) || (**p_1127->g_354))) & 0x4C58L), 4294967292UL))) <= 0x898D5D66L) & (*p_1127->g_843)) != (-10L)) , (*l_649));
                    }
                    else
                    { /* block id: 411 */
                        uint8_t l_974[3][8][1] = {{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}}};
                        int32_t *l_975 = &p_1127->g_376.f1;
                        int32_t *l_976 = (void*)0;
                        int32_t *l_977[4][6] = {{&p_1127->g_3,&p_1127->g_379.f1,&p_1127->g_379.f1,&p_1127->g_3,&p_1127->g_3,&p_1127->g_379.f1},{&p_1127->g_3,&p_1127->g_379.f1,&p_1127->g_379.f1,&p_1127->g_3,&p_1127->g_3,&p_1127->g_379.f1},{&p_1127->g_3,&p_1127->g_379.f1,&p_1127->g_379.f1,&p_1127->g_3,&p_1127->g_3,&p_1127->g_379.f1},{&p_1127->g_3,&p_1127->g_379.f1,&p_1127->g_379.f1,&p_1127->g_3,&p_1127->g_3,&p_1127->g_379.f1}};
                        int16_t *l_1006 = &p_1127->g_225;
                        int16_t *l_1007 = &p_1127->g_79[2][5];
                        int16_t *l_1008 = (void*)0;
                        int16_t *l_1009 = &p_1127->g_83;
                        int32_t ***l_1014 = &l_649;
                        int i, j, k;
                        l_979 &= (safe_mod_func_int8_t_s_s(p_1127->g_429, (safe_lshift_func_uint16_t_u_s((safe_mod_func_int16_t_s_s((((0x3DB0L || (safe_add_func_int16_t_s_s(((l_978 |= ((((*l_943)--) <= (safe_sub_func_int16_t_s_s((safe_mul_func_int16_t_s_s(((void*)0 == l_966), (safe_mul_func_uint16_t_u_u((0x1B107332L | (safe_add_func_uint16_t_u_u(1UL, p_8))), ((GROUP_DIVERGE(1, 1) | (safe_div_func_int64_t_s_s(p_7, (safe_unary_minus_func_int32_t_s((!((*p_9) = (l_974[2][1][0] ^ 0x14C17A713227D4B3L)))))))) || GROUP_DIVERGE(1, 1)))))), p_8))) ^ 0x005A55A74037D8D8L)) , 0L), 1L))) || p_1127->g_54) , (-1L)), p_7)), 12))));
                        l_985++;
                        (*l_649) = func_41(((safe_mul_func_uint16_t_u_u((**p_1127->g_853), (safe_lshift_func_uint16_t_u_u((((*l_1009) = (((l_981 = 65526UL) , ((safe_div_func_uint32_t_u_u((((&p_1127->g_609 == ((((safe_add_func_int16_t_s_s((-5L), (p_7 | ((*l_664) = ((safe_mul_func_int8_t_s_s(0x1DL, (safe_rshift_func_int8_t_s_u((safe_mod_func_int16_t_s_s(((*l_1007) = ((-1L) >= (safe_mul_func_uint8_t_u_u((((((safe_mul_func_int16_t_s_s(p_1127->g_108, (((*l_1006) = (0x7CL > p_7)) >= p_1127->g_270.f3))) < p_7) & 249UL) , l_985) | l_951), p_7)))), GROUP_DIVERGE(2, 1))), 3)))) > 0xD410L))))) != p_8) == p_1127->g_320[0]) , (void*)0)) , 0x9DA5C90D5B9AD8FCL) == 0x76B5E3DF14EBD41DL), l_979)) == GROUP_DIVERGE(2, 1))) == 0xEB34L)) | 0xEE2BL), p_8)))) != 0x4DD9B19D5EBEB8A3L), &p_1127->g_633, l_984[9][6][1], p_1127);
                        l_979 ^= (((((((**p_1127->g_75) > FAKE_DIVERGE(p_1127->group_0_offset, get_group_id(0), 10)) & l_951) & (safe_div_func_uint16_t_u_u(p_8, (safe_add_func_int32_t_s_s((((*p_1127->g_355) || p_6) > (((&p_1127->g_633 != ((*l_1014) = l_649)) <= p_8) , (((l_978 = ((-9L) ^ 6UL)) != p_1127->g_79[2][2]) ^ p_1127->g_320[0]))), 0x053E27F2L))))) , (-1L)) <= l_983) < 0x68EB6FAB62ED1988L);
                    }
                }
                for (p_1127->g_372.f2 = 25; (p_1127->g_372.f2 <= 8); --p_1127->g_372.f2)
                { /* block id: 430 */
                    int32_t ***l_1019[7];
                    int16_t *l_1024 = (void*)0;
                    uint16_t *l_1031 = &p_1127->g_895.f0;
                    int i;
                    for (i = 0; i < 7; i++)
                        l_1019[i] = (void*)0;
                    (*p_1127->g_2) |= (l_1017 == (l_1021 = (p_1127->g_1018[6] , (l_1020 = &p_1127->g_2))));
                    l_1034 ^= (safe_div_func_int64_t_s_s(p_6, (((**l_1020) |= (*p_1127->g_355)) | (safe_mul_func_int8_t_s_s((4L != (+(((4294967295UL >= l_636[0]) , &p_1127->g_419) != &p_1127->g_284))), (safe_mod_func_uint8_t_u_u((safe_div_func_int32_t_s_s(((0x5B3AL & ((*l_1031)++)) != ((l_984[0][8][1] , p_8) != 0x444D45D6L)), FAKE_DIVERGE(p_1127->group_1_offset, get_group_id(1), 10))), l_979)))))));
                }
                (*l_1021) = p_9;
            }
            return (*p_1127->g_31);
        }
        (*p_1127->g_633) = (**l_649);
    }
lbl_1066:
    (*p_1127->g_633) = (safe_mul_func_uint8_t_u_u((safe_lshift_func_int16_t_s_u((((safe_add_func_int64_t_s_s(((safe_lshift_func_int8_t_s_u((((**l_649) <= (((safe_div_func_int16_t_s_s((safe_lshift_func_int8_t_s_s((safe_div_func_int32_t_s_s(((safe_sub_func_uint8_t_u_u(0xE4L, (safe_div_func_uint64_t_u_u(((((*l_1064) &= ((safe_sub_func_uint16_t_u_u((safe_sub_func_int8_t_s_s(p_7, 0UL)), (!((safe_unary_minus_func_uint32_t_u(((((**l_649) , (**l_649)) <= ((p_1127->g_79[2][5] |= ((safe_rshift_func_int16_t_s_s((*p_1127->g_355), 12)) < (p_1127->g_158 != ((*l_1062) = l_1060[0])))) == FAKE_DIVERGE(p_1127->group_0_offset, get_group_id(0), 10))) ^ p_1127->g_270.f0))) && (**l_649))))) <= p_8)) && l_1065) < 0x6B06B7BAL), FAKE_DIVERGE(p_1127->global_1_offset, get_global_id(1), 10))))) == p_7), (*p_1127->g_609))), p_8)), p_1127->g_305)) , 0x6C78E84FD87D07FFL) , 0x3E92C2EBL)) , p_6), 5)) && p_8), p_1127->g_445.f2)) || 1L) & FAKE_DIVERGE(p_1127->group_2_offset, get_group_id(2), 10)), 3)), (-1L)));
    for (p_1127->g_380.f1 = (-4); (p_1127->g_380.f1 < 29); p_1127->g_380.f1 = safe_add_func_int64_t_s_s(p_1127->g_380.f1, 5))
    { /* block id: 451 */
        uint32_t *l_1086 = &p_1127->g_266.f0;
        int32_t l_1097 = 0x7FD65812L;
        struct S0 *l_1102[7][7] = {{(void*)0,&p_1127->g_445,&p_1127->g_816,&p_1127->g_824,&p_1127->g_445,&p_1127->g_824,&p_1127->g_816},{(void*)0,&p_1127->g_445,&p_1127->g_816,&p_1127->g_824,&p_1127->g_445,&p_1127->g_824,&p_1127->g_816},{(void*)0,&p_1127->g_445,&p_1127->g_816,&p_1127->g_824,&p_1127->g_445,&p_1127->g_824,&p_1127->g_816},{(void*)0,&p_1127->g_445,&p_1127->g_816,&p_1127->g_824,&p_1127->g_445,&p_1127->g_824,&p_1127->g_816},{(void*)0,&p_1127->g_445,&p_1127->g_816,&p_1127->g_824,&p_1127->g_445,&p_1127->g_824,&p_1127->g_816},{(void*)0,&p_1127->g_445,&p_1127->g_816,&p_1127->g_824,&p_1127->g_445,&p_1127->g_824,&p_1127->g_816},{(void*)0,&p_1127->g_445,&p_1127->g_816,&p_1127->g_824,&p_1127->g_445,&p_1127->g_824,&p_1127->g_816}};
        int32_t l_1108 = 2L;
        int i, j;
        for (p_1127->g_839.f1.f0 = 1; (p_1127->g_839.f1.f0 > 23); p_1127->g_839.f1.f0 = safe_add_func_uint8_t_u_u(p_1127->g_839.f1.f0, 6))
        { /* block id: 454 */
            int32_t l_1085 = (-10L);
            int32_t l_1101 = (-4L);
            (*p_1127->g_633) ^= 0L;
            for (p_1127->g_270.f0 = 3; (p_1127->g_270.f0 <= 9); p_1127->g_270.f0 += 1)
            { /* block id: 458 */
                uint32_t **l_1087 = (void*)0;
                uint32_t **l_1088[3];
                int8_t *l_1098 = &l_666;
                int32_t l_1099 = 5L;
                int64_t *l_1100 = &l_635;
                int i;
                for (i = 0; i < 3; i++)
                    l_1088[i] = &p_1127->g_299;
                if (((safe_add_func_uint16_t_u_u(((~(p_6 <= ((((*l_1064) = (safe_add_func_int8_t_s_s(((safe_unary_minus_func_int64_t_s((l_1085 = ((*l_1100) = (l_1097 = ((((safe_unary_minus_func_uint16_t_u((safe_add_func_int8_t_s_s(((*l_1098) = (safe_sub_func_uint64_t_u_u(((safe_rshift_func_int16_t_s_s(((p_1127->g_373[0][3] , p_9) != (p_1127->g_299 = l_1086)), 10)) , ((p_1127->g_54 != (safe_unary_minus_func_int16_t_s((safe_mod_func_int16_t_s_s((safe_add_func_uint32_t_u_u((((safe_add_func_uint8_t_u_u((((+(!0x49CCBF03L)) , l_1096[6]) != &p_1127->g_261), (*p_1127->g_843))) >= 9L) < l_1097), (*p_9))), 0x55CCL))))) || (*p_1127->g_355))), 0x7DCF6CAF4878E8FEL))), FAKE_DIVERGE(p_1127->global_0_offset, get_global_id(0), 10))))) | l_1099) ^ 1L) || 0xE744L)))))) || 4294967292UL), p_1127->g_166))) && p_8) >= p_7))) && 0x0CL), 7L)) != l_1101))
                { /* block id: 465 */
                    return p_9;
                }
                else
                { /* block id: 467 */
                    struct S0 **l_1103[8][10][3] = {{{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303}},{{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303}},{{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303}},{{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303}},{{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303}},{{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303}},{{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303}},{{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303},{&l_1102[0][2],&l_1102[0][1],&p_1127->g_303}}};
                    int i, j, k;
                    (*p_1127->g_633) &= ((*p_1127->g_738) , ((l_1104 = l_1102[0][1]) != l_1105));
                    (*p_1127->g_419) = (*p_1127->g_419);
                }
                if ((*p_9))
                    continue;
                for (p_1127->g_54 = 0; (p_1127->g_54 <= 9); p_1127->g_54 += 1)
                { /* block id: 475 */
                    for (p_1127->g_381.f2 = 9; (p_1127->g_381.f2 >= 0); p_1127->g_381.f2 -= 1)
                    { /* block id: 478 */
                        return p_9;
                    }
                }
                if ((*p_9))
                    continue;
            }
            l_1101 |= (safe_mul_func_int8_t_s_s(0L, (p_8 > (l_1108 |= (+((**l_649) | l_1097))))));
            for (p_1127->g_225 = 0; (p_1127->g_225 >= 0); p_1127->g_225 -= 1)
            { /* block id: 488 */
                int32_t l_1109 = 1L;
                (*p_9) |= (l_1109 & ((*p_1127->g_609) = (p_1127->g_839.f0 == l_1085)));
            }
        }
    }
    return p_9;
}


/* ------------------------------------------ */
/* 
 * reads : p_1127->g_3 p_1127->g_31 p_1127->g_79 p_1127->g_80 p_1127->g_83 p_1127->g_84 p_1127->g_75 p_1127->g_82.f2 p_1127->g_132 p_1127->g_108 p_1127->g_106 p_1127->g_54 p_1127->g_158 p_1127->g_169 p_1127->g_112 p_1127->g_76 p_1127->g_190 p_1127->g_226 p_1127->g_283 p_1127->g_305 p_1127->g_166 p_1127->g_270.f2 p_1127->g_320 p_1127->g_354 p_1127->g_266.f2 p_1127->g_225 p_1127->g_380.f1 p_1127->g_419 p_1127->g_270.f0 p_1127->g_371.f1 p_1127->g_285.f3 p_1127->g_579 p_1127->g_445.f2
 * writes: p_1127->g_3 p_1127->g_2 p_1127->g_54 p_1127->g_75 p_1127->g_79 p_1127->g_80 p_1127->g_83 p_1127->g_84 p_1127->g_106 p_1127->g_82.f2 p_1127->g_112 p_1127->g_132 p_1127->g_76 p_1127->g_166 p_1127->g_169 p_1127->g_187 p_1127->g_190 p_1127->g_226 p_1127->g_108 p_1127->g_261 p_1127->g_266.f0 p_1127->g_299 p_1127->g_266.f2 p_1127->g_303 p_1127->g_305 p_1127->g_320 p_1127->g_354 p_1127->g_82.f1 p_1127->g_380.f1 p_1127->g_266.f3 p_1127->g_284 p_1127->g_429 p_1127->g_371.f1 p_1127->g_579
 */
int8_t  func_10(uint32_t  p_11, struct S4 * p_1127)
{ /* block id: 6 */
    uint32_t l_12[7];
    int32_t l_18 = (-1L);
    int32_t *l_46 = &p_1127->g_3;
    int32_t **l_45 = &l_46;
    int32_t *l_440 = &p_1127->g_3;
    uint64_t *l_577 = (void*)0;
    uint64_t *l_578 = &p_1127->g_579;
    int i;
    for (i = 0; i < 7; i++)
        l_12[i] = 0x23A266D2L;
    for (p_1127->g_3 = 6; (p_1127->g_3 >= 0); p_1127->g_3 -= 1)
    { /* block id: 9 */
        for (p_11 = 0; (p_11 <= 6); p_11 += 1)
        { /* block id: 12 */
            int i;
            if (l_12[p_11])
                break;
        }
    }
    (*l_440) = func_13((((((((*l_578) ^= (((+18446744073709551615UL) && (l_18 <= func_19((((void*)0 == &p_1127->g_3) >= (func_25(func_28(p_1127->g_3, p_1127), p_11, p_1127) | func_36(func_41(l_12[2], l_45, (**l_45), p_1127), (**l_45), p_11, &l_46, p_1127))), p_11, l_45, l_440, &l_440, p_1127))) <= p_1127->g_225)) == FAKE_DIVERGE(p_1127->local_1_offset, get_local_id(1), 10)) & p_1127->g_445.f2) || 0x48L) < p_11) > p_1127->g_445.f2), l_12[3], p_1127->g_445.f2, l_440, p_1127);
    return p_11;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t  func_13(uint8_t  p_14, uint32_t  p_15, int32_t  p_16, int32_t * p_17, struct S4 * p_1127)
{ /* block id: 246 */
    int32_t *l_580 = (void*)0;
    int32_t *l_581[6][6][6] = {{{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3},{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3},{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3},{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3},{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3},{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3}},{{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3},{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3},{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3},{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3},{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3},{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3}},{{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3},{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3},{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3},{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3},{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3},{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3}},{{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3},{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3},{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3},{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3},{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3},{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3}},{{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3},{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3},{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3},{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3},{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3},{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3}},{{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3},{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3},{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3},{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3},{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3},{(void*)0,&p_1127->g_3,&p_1127->g_3,&p_1127->g_3,(void*)0,&p_1127->g_3}}};
    int8_t l_582 = 8L;
    int64_t l_583[1][2][4] = {{{0x118F731ABCCE2CAFL,0x6CDC36DC3161FD81L,0x118F731ABCCE2CAFL,0x118F731ABCCE2CAFL},{0x118F731ABCCE2CAFL,0x6CDC36DC3161FD81L,0x118F731ABCCE2CAFL,0x118F731ABCCE2CAFL}}};
    int64_t l_585 = 1L;
    uint32_t l_586 = 0UL;
    int16_t l_589 = (-1L);
    int i, j, k;
    ++l_586;
    return l_589;
}


/* ------------------------------------------ */
/* 
 * reads : p_1127->g_371.f1 p_1127->g_3 p_1127->g_285.f3
 * writes: p_1127->g_371.f1 p_1127->g_3
 */
uint16_t  func_19(int32_t  p_20, int32_t  p_21, int32_t ** p_22, int32_t * p_23, int32_t ** p_24, struct S4 * p_1127)
{ /* block id: 174 */
    uint32_t l_443 = 0x71E52DDFL;
    int32_t l_456 = 0x7C94B5F1L;
    int16_t *l_460 = (void*)0;
    uint64_t **l_493 = &p_1127->g_261;
    int32_t l_494 = (-1L);
    int32_t l_499 = 0x4C12D44AL;
    int32_t l_502 = 4L;
    int32_t l_503 = 0x6E5A27F5L;
    int32_t l_505 = 1L;
    int64_t l_508 = (-6L);
    int32_t l_509 = 0x5213DF46L;
    struct S0 *l_548 = &p_1127->g_266;
    int64_t *l_572 = (void*)0;
    int64_t **l_571 = &l_572;
    int32_t ***l_574 = &p_1127->g_75;
    int32_t ****l_573 = &l_574;
    int32_t l_575 = 0x201EF845L;
    int32_t l_576 = (-1L);
    for (p_1127->g_371.f1 = 0; (p_1127->g_371.f1 <= 0); p_1127->g_371.f1 += 1)
    { /* block id: 177 */
        uint16_t l_441[2][4] = {{0x5CE0L,0xEA31L,0x5CE0L,0x5CE0L},{0x5CE0L,0xEA31L,0x5CE0L,0x5CE0L}};
        int8_t *l_442 = &p_1127->g_166;
        int32_t l_469 = (-2L);
        int64_t l_470 = 2L;
        int32_t l_472 = (-6L);
        int32_t l_473[5][1];
        int32_t **l_533 = &p_1127->g_2;
        int i, j;
        for (i = 0; i < 5; i++)
        {
            for (j = 0; j < 1; j++)
                l_473[i][j] = (-1L);
        }
        (1 + 1);
    }
    (*p_23) = (**p_24);
    (*p_23) &= (safe_sub_func_uint64_t_u_u(((p_20 != (safe_sub_func_uint8_t_u_u((((*l_571) = &l_508) == &p_1127->g_187), (&p_1127->g_159 != l_573)))) <= (p_1127->g_285.f3 > 0x69L)), (l_575 , ((((((l_576 | p_21) >= p_20) , (void*)0) != (void*)0) , (void*)0) != l_493))));
    return p_21;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t  func_25(int64_t  p_26, int32_t  p_27, struct S4 * p_1127)
{ /* block id: 20 */
    int64_t l_35 = 0x5975123020F620A3L;
    return l_35;
}


/* ------------------------------------------ */
/* 
 * reads : p_1127->g_31
 * writes: p_1127->g_2
 */
int64_t  func_28(int64_t  p_29, struct S4 * p_1127)
{ /* block id: 16 */
    int32_t *l_30 = &p_1127->g_3;
    uint32_t l_32 = 0x50E35260L;
    (*p_1127->g_31) = l_30;
    --l_32;
    return p_29;
}


/* ------------------------------------------ */
/* 
 * reads : p_1127->g_3 p_1127->g_83 p_1127->g_82.f2 p_1127->g_132 p_1127->g_79 p_1127->g_108 p_1127->g_84 p_1127->g_106 p_1127->g_54 p_1127->g_75 p_1127->g_158 p_1127->g_169 p_1127->g_112 p_1127->g_76 p_1127->g_80 p_1127->g_190 p_1127->g_226 p_1127->g_283 p_1127->g_305 p_1127->g_166 p_1127->g_270.f2 p_1127->g_320 p_1127->g_354 p_1127->g_266.f2 p_1127->g_225 p_1127->g_380.f1 p_1127->g_419 p_1127->g_270.f0
 * writes: p_1127->g_106 p_1127->g_82.f2 p_1127->g_112 p_1127->g_132 p_1127->g_79 p_1127->g_54 p_1127->g_76 p_1127->g_166 p_1127->g_169 p_1127->g_187 p_1127->g_75 p_1127->g_80 p_1127->g_83 p_1127->g_84 p_1127->g_190 p_1127->g_226 p_1127->g_108 p_1127->g_261 p_1127->g_266.f0 p_1127->g_299 p_1127->g_266.f2 p_1127->g_303 p_1127->g_305 p_1127->g_320 p_1127->g_354 p_1127->g_82.f1 p_1127->g_380.f1 p_1127->g_266.f3 p_1127->g_284 p_1127->g_429
 */
uint8_t  func_36(int32_t * p_37, int32_t  p_38, uint16_t  p_39, int32_t ** p_40, struct S4 * p_1127)
{ /* block id: 33 */
    uint32_t l_87 = 0xF00AFC62L;
    uint32_t *l_101 = &l_87;
    uint32_t **l_100 = &l_101;
    uint32_t *l_107[2][8] = {{&p_1127->g_108,&p_1127->g_108,&p_1127->g_108,&p_1127->g_108,&p_1127->g_108,&p_1127->g_108,&p_1127->g_108,&p_1127->g_108},{&p_1127->g_108,&p_1127->g_108,&p_1127->g_108,&p_1127->g_108,&p_1127->g_108,&p_1127->g_108,&p_1127->g_108,&p_1127->g_108}};
    int32_t l_109 = 0L;
    int32_t l_167 = 0L;
    int16_t *l_197 = &p_1127->g_79[3][5];
    uint64_t *l_260 = &p_1127->g_132;
    int32_t l_262 = 0x43A37B5FL;
    uint32_t *l_277[6][6] = {{&p_1127->g_80,&p_1127->g_80,&p_1127->g_80,&p_1127->g_54,&p_1127->g_54,&p_1127->g_54},{&p_1127->g_80,&p_1127->g_80,&p_1127->g_80,&p_1127->g_54,&p_1127->g_54,&p_1127->g_54},{&p_1127->g_80,&p_1127->g_80,&p_1127->g_80,&p_1127->g_54,&p_1127->g_54,&p_1127->g_54},{&p_1127->g_80,&p_1127->g_80,&p_1127->g_80,&p_1127->g_54,&p_1127->g_54,&p_1127->g_54},{&p_1127->g_80,&p_1127->g_80,&p_1127->g_80,&p_1127->g_54,&p_1127->g_54,&p_1127->g_54},{&p_1127->g_80,&p_1127->g_80,&p_1127->g_80,&p_1127->g_54,&p_1127->g_54,&p_1127->g_54}};
    int64_t l_404[6];
    int64_t *l_423[6] = {&p_1127->g_187,(void*)0,&p_1127->g_187,&p_1127->g_187,(void*)0,&p_1127->g_187};
    int64_t **l_422 = &l_423[0];
    int64_t **l_424 = (void*)0;
    int64_t *l_426[9] = {&l_404[1],&l_404[1],&l_404[1],&l_404[1],&l_404[1],&l_404[1],&l_404[1],&l_404[1],&l_404[1]};
    int64_t **l_425 = &l_426[3];
    uint64_t l_432[6];
    int8_t l_439 = 0x33L;
    int i, j;
    for (i = 0; i < 6; i++)
        l_404[i] = 0x39A4F89602C3C963L;
    for (i = 0; i < 6; i++)
        l_432[i] = 0xA618006F3F816714L;
    if ((safe_mul_func_int8_t_s_s((~l_87), (safe_sub_func_int8_t_s_s(((((*p_37) >= (l_109 = (safe_rshift_func_int16_t_s_u(((safe_mod_func_int64_t_s_s((safe_rshift_func_uint8_t_u_s((safe_div_func_int64_t_s_s(0L, (safe_mod_func_int8_t_s_s(0x14L, ((0L && ((p_38 != ((((*l_100) = &p_1127->g_80) != &p_1127->g_80) , (safe_lshift_func_uint8_t_u_u((p_1127->g_106 = ((safe_div_func_int8_t_s_s(p_38, (-8L))) <= (-9L))), l_87)))) != p_39)) , l_87))))), 2)), l_87)) >= p_1127->g_83), 4)))) , 2L) | l_87), 0x09L)))))
    { /* block id: 37 */
        (*p_40) = &l_109;
    }
    else
    { /* block id: 39 */
        uint8_t l_117 = 254UL;
        int32_t l_129[7][2][7] = {{{0x4646EC4BL,0x7F5F5FB1L,2L,(-7L),0x2358A988L,0x4646EC4BL,(-7L)},{0x4646EC4BL,0x7F5F5FB1L,2L,(-7L),0x2358A988L,0x4646EC4BL,(-7L)}},{{0x4646EC4BL,0x7F5F5FB1L,2L,(-7L),0x2358A988L,0x4646EC4BL,(-7L)},{0x4646EC4BL,0x7F5F5FB1L,2L,(-7L),0x2358A988L,0x4646EC4BL,(-7L)}},{{0x4646EC4BL,0x7F5F5FB1L,2L,(-7L),0x2358A988L,0x4646EC4BL,(-7L)},{0x4646EC4BL,0x7F5F5FB1L,2L,(-7L),0x2358A988L,0x4646EC4BL,(-7L)}},{{0x4646EC4BL,0x7F5F5FB1L,2L,(-7L),0x2358A988L,0x4646EC4BL,(-7L)},{0x4646EC4BL,0x7F5F5FB1L,2L,(-7L),0x2358A988L,0x4646EC4BL,(-7L)}},{{0x4646EC4BL,0x7F5F5FB1L,2L,(-7L),0x2358A988L,0x4646EC4BL,(-7L)},{0x4646EC4BL,0x7F5F5FB1L,2L,(-7L),0x2358A988L,0x4646EC4BL,(-7L)}},{{0x4646EC4BL,0x7F5F5FB1L,2L,(-7L),0x2358A988L,0x4646EC4BL,(-7L)},{0x4646EC4BL,0x7F5F5FB1L,2L,(-7L),0x2358A988L,0x4646EC4BL,(-7L)}},{{0x4646EC4BL,0x7F5F5FB1L,2L,(-7L),0x2358A988L,0x4646EC4BL,(-7L)},{0x4646EC4BL,0x7F5F5FB1L,2L,(-7L),0x2358A988L,0x4646EC4BL,(-7L)}}};
        uint32_t *l_136 = &p_1127->g_54;
        uint32_t l_138 = 0UL;
        int32_t ***l_161 = &p_1127->g_75;
        int32_t ****l_160 = &l_161;
        struct S0 *l_265 = &p_1127->g_266;
        uint64_t *l_352 = &p_1127->g_132;
        int8_t l_353[2];
        union U2 *l_364[8][10] = {{(void*)0,&p_1127->g_367[3],&p_1127->g_379,&p_1127->g_371,&p_1127->g_380,&p_1127->g_369,&p_1127->g_375,&p_1127->g_379,(void*)0,&p_1127->g_383},{(void*)0,&p_1127->g_367[3],&p_1127->g_379,&p_1127->g_371,&p_1127->g_380,&p_1127->g_369,&p_1127->g_375,&p_1127->g_379,(void*)0,&p_1127->g_383},{(void*)0,&p_1127->g_367[3],&p_1127->g_379,&p_1127->g_371,&p_1127->g_380,&p_1127->g_369,&p_1127->g_375,&p_1127->g_379,(void*)0,&p_1127->g_383},{(void*)0,&p_1127->g_367[3],&p_1127->g_379,&p_1127->g_371,&p_1127->g_380,&p_1127->g_369,&p_1127->g_375,&p_1127->g_379,(void*)0,&p_1127->g_383},{(void*)0,&p_1127->g_367[3],&p_1127->g_379,&p_1127->g_371,&p_1127->g_380,&p_1127->g_369,&p_1127->g_375,&p_1127->g_379,(void*)0,&p_1127->g_383},{(void*)0,&p_1127->g_367[3],&p_1127->g_379,&p_1127->g_371,&p_1127->g_380,&p_1127->g_369,&p_1127->g_375,&p_1127->g_379,(void*)0,&p_1127->g_383},{(void*)0,&p_1127->g_367[3],&p_1127->g_379,&p_1127->g_371,&p_1127->g_380,&p_1127->g_369,&p_1127->g_375,&p_1127->g_379,(void*)0,&p_1127->g_383},{(void*)0,&p_1127->g_367[3],&p_1127->g_379,&p_1127->g_371,&p_1127->g_380,&p_1127->g_369,&p_1127->g_375,&p_1127->g_379,(void*)0,&p_1127->g_383}};
        uint64_t l_402 = 18446744073709551615UL;
        int32_t l_417[1];
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_353[i] = 9L;
        for (i = 0; i < 1; i++)
            l_417[i] = 0x07319399L;
        for (p_1127->g_82.f2 = 0; (p_1127->g_82.f2 > 25); p_1127->g_82.f2 = safe_add_func_uint64_t_u_u(p_1127->g_82.f2, 4))
        { /* block id: 42 */
            uint32_t l_122[8][5][4];
            uint64_t *l_130 = (void*)0;
            uint64_t *l_131 = &p_1127->g_132;
            int16_t *l_135 = &p_1127->g_79[0][5];
            int32_t l_163 = 0x2A58BC82L;
            int32_t l_188 = 0x4EA2A629L;
            int32_t l_191[4] = {0x229AB7E0L,0x229AB7E0L,0x229AB7E0L,0x229AB7E0L};
            int32_t l_192 = 0x2E54040AL;
            int8_t *l_238 = &p_1127->g_166;
            struct S0 **l_282[7];
            uint32_t l_321 = 0x56E5E30FL;
            int i, j, k;
            for (i = 0; i < 8; i++)
            {
                for (j = 0; j < 5; j++)
                {
                    for (k = 0; k < 4; k++)
                        l_122[i][j][k] = 4294967288UL;
                }
            }
            for (i = 0; i < 7; i++)
                l_282[i] = &l_265;
            p_1127->g_112[0] = (-5L);
            if ((4L > (l_87 > (safe_rshift_func_int8_t_s_s((0x41E6BC952145F438L <= (((safe_mul_func_int16_t_s_s(((l_117 , ((l_117 < p_39) < (((~(safe_sub_func_uint8_t_u_u(((safe_lshift_func_int8_t_s_s(l_122[3][2][3], 0)) , (safe_sub_func_int8_t_s_s((((safe_sub_func_uint8_t_u_u((safe_mul_func_int16_t_s_s(((*l_135) |= ((18446744073709551612UL ^ (--(*l_131))) || 0x8AL)), p_39)), (-2L))) >= p_1127->g_108) | p_1127->g_83), p_1127->g_83))), l_122[3][2][3]))) && 0x681BL) | p_1127->g_84))) , l_87), p_39)) == p_1127->g_106) , p_1127->g_3)), l_109)))))
            { /* block id: 46 */
                int32_t *l_137[4][4] = {{&l_129[6][0][3],&l_109,&l_129[6][0][3],&l_129[6][0][3]},{&l_129[6][0][3],&l_109,&l_129[6][0][3],&l_129[6][0][3]},{&l_129[6][0][3],&l_109,&l_129[6][0][3],&l_129[6][0][3]},{&l_129[6][0][3],&l_109,&l_129[6][0][3],&l_129[6][0][3]}};
                int i, j;
                l_109 |= (l_136 == (void*)0);
                for (p_1127->g_54 = 0; (p_1127->g_54 <= 1); p_1127->g_54 += 1)
                { /* block id: 50 */
                    int32_t l_162 = 0x72E8F47DL;
                    if (l_138)
                        break;
                    for (p_38 = 3; (p_38 >= 0); p_38 -= 1)
                    { /* block id: 54 */
                        uint8_t *l_141 = &l_117;
                        int32_t ***l_151 = &p_1127->g_75;
                        int32_t ****l_150 = &l_151;
                        int8_t *l_164 = (void*)0;
                        int8_t *l_165[9][10] = {{(void*)0,&p_1127->g_166,&p_1127->g_166,&p_1127->g_166,(void*)0,(void*)0,&p_1127->g_166,&p_1127->g_166,&p_1127->g_166,(void*)0},{(void*)0,&p_1127->g_166,&p_1127->g_166,&p_1127->g_166,(void*)0,(void*)0,&p_1127->g_166,&p_1127->g_166,&p_1127->g_166,(void*)0},{(void*)0,&p_1127->g_166,&p_1127->g_166,&p_1127->g_166,(void*)0,(void*)0,&p_1127->g_166,&p_1127->g_166,&p_1127->g_166,(void*)0},{(void*)0,&p_1127->g_166,&p_1127->g_166,&p_1127->g_166,(void*)0,(void*)0,&p_1127->g_166,&p_1127->g_166,&p_1127->g_166,(void*)0},{(void*)0,&p_1127->g_166,&p_1127->g_166,&p_1127->g_166,(void*)0,(void*)0,&p_1127->g_166,&p_1127->g_166,&p_1127->g_166,(void*)0},{(void*)0,&p_1127->g_166,&p_1127->g_166,&p_1127->g_166,(void*)0,(void*)0,&p_1127->g_166,&p_1127->g_166,&p_1127->g_166,(void*)0},{(void*)0,&p_1127->g_166,&p_1127->g_166,&p_1127->g_166,(void*)0,(void*)0,&p_1127->g_166,&p_1127->g_166,&p_1127->g_166,(void*)0},{(void*)0,&p_1127->g_166,&p_1127->g_166,&p_1127->g_166,(void*)0,(void*)0,&p_1127->g_166,&p_1127->g_166,&p_1127->g_166,(void*)0},{(void*)0,&p_1127->g_166,&p_1127->g_166,&p_1127->g_166,(void*)0,(void*)0,&p_1127->g_166,&p_1127->g_166,&p_1127->g_166,(void*)0}};
                        int i, j;
                        (*p_1127->g_75) = (l_137[p_38][(p_1127->g_54 + 2)] = l_107[p_1127->g_54][(p_38 + 1)]);
                        if ((*p_37))
                            continue;
                        l_167 ^= (safe_lshift_func_uint8_t_u_u(((*l_141) = p_38), (!(safe_rshift_func_uint16_t_u_s((safe_div_func_int8_t_s_s((p_1127->g_166 = ((safe_add_func_uint8_t_u_u(p_38, (safe_lshift_func_int8_t_s_s((((&p_1127->g_75 != ((*l_150) = &p_1127->g_75)) < ((-1L) != p_1127->g_82.f2)) ^ (safe_mod_func_int64_t_s_s((safe_sub_func_int64_t_s_s((FAKE_DIVERGE(p_1127->global_0_offset, get_global_id(0), 10) || ((0x76L & l_129[3][0][6]) & ((safe_mod_func_uint8_t_u_u((((p_39 < p_1127->g_54) , p_1127->g_158) == l_160), l_87)) , p_39))), l_162)), 8L))), l_163)))) , p_38)), p_39)), 9)))));
                    }
                }
            }
            else
            { /* block id: 64 */
                uint32_t l_184 = 1UL;
                int32_t l_193 = (-7L);
                for (l_167 = 1; (l_167 >= 0); l_167 -= 1)
                { /* block id: 67 */
                    uint16_t l_194 = 0xD6EBL;
                    for (l_109 = 0; (l_109 <= 3); l_109 += 1)
                    { /* block id: 70 */
                        int32_t *l_168[2];
                        uint8_t *l_182 = (void*)0;
                        uint8_t *l_183 = &l_117;
                        uint16_t *l_185[5] = {&p_1127->g_169,&p_1127->g_169,&p_1127->g_169,&p_1127->g_169,&p_1127->g_169};
                        int64_t *l_186 = &p_1127->g_187;
                        uint8_t *l_189[4] = {&p_1127->g_190,&p_1127->g_190,&p_1127->g_190,&p_1127->g_190};
                        int i;
                        for (i = 0; i < 2; i++)
                            l_168[i] = (void*)0;
                        ++p_1127->g_169;
                        l_192 = ((safe_rshift_func_int8_t_s_u(((l_191[2] &= (FAKE_DIVERGE(p_1127->local_0_offset, get_local_id(0), 10) >= (((*l_131) = (((safe_sub_func_int64_t_s_s((l_188 |= ((*l_186) = (safe_lshift_func_int16_t_s_u(p_1127->g_112[0], (GROUP_DIVERGE(1, 1) >= ((safe_mul_func_int8_t_s_s(1L, (((p_39 = ((((((0xAAL != (***l_161)) == l_109) && (l_184 = ((((l_163 = (safe_mul_func_uint8_t_u_u(((*l_183) |= 1UL), 0UL))) | p_38) , ((**p_1127->g_75) , p_39)) != p_1127->g_112[0]))) , p_1127->g_132) < p_1127->g_112[0]) , FAKE_DIVERGE(p_1127->group_0_offset, get_group_id(0), 10))) <= p_38) > (**p_40)))) > (-5L))))))), p_1127->g_82.f2)) == 0L) < p_38)) & p_38))) ^ p_38), 3)) , l_87);
                    }
                    if ((*p_1127->g_76))
                        break;
                    (*p_40) = func_41(p_39, &p_1127->g_76, p_1127->g_79[2][5], p_1127);
                    for (p_1127->g_190 = 0; (p_1127->g_190 <= 1); p_1127->g_190 += 1)
                    { /* block id: 86 */
                        ++l_194;
                        l_109 ^= ((&p_1127->g_79[3][0] == l_197) < GROUP_DIVERGE(0, 1));
                    }
                }
                for (p_1127->g_190 = 0; (p_1127->g_190 <= 1); p_1127->g_190 += 1)
                { /* block id: 93 */
                    int32_t l_208 = 6L;
                    int32_t *l_209 = &l_188;
                    int32_t *l_245 = (void*)0;
                    uint16_t *l_257 = &p_1127->g_169;
                    int i, j;
                    if ((safe_add_func_uint32_t_u_u(((l_193 != (((l_109 |= ((*l_131) = ((safe_sub_func_uint32_t_u_u((safe_lshift_func_int16_t_s_s(l_167, 7)), ((*l_209) |= (l_208 = (safe_lshift_func_uint16_t_u_u((l_107[p_1127->g_190][p_1127->g_190] == ((*p_40) = l_107[p_1127->g_190][(p_1127->g_190 + 6)])), 8)))))) <= 1UL))) , 0x74L) <= l_191[1])) || 0x67738E0F7AC18CACL), 4UL)))
                    { /* block id: 99 */
                        int32_t *l_210 = (void*)0;
                        int32_t *l_211 = &l_188;
                        int32_t *l_212 = &l_192;
                        int32_t *l_213 = (void*)0;
                        int32_t *l_214 = &l_163;
                        int32_t *l_215 = (void*)0;
                        int32_t *l_216 = &l_109;
                        int32_t *l_217 = (void*)0;
                        int32_t *l_218 = (void*)0;
                        int32_t *l_219 = &l_191[2];
                        int32_t *l_220 = &l_208;
                        int32_t *l_221 = (void*)0;
                        int32_t *l_222 = (void*)0;
                        int32_t *l_223 = &l_208;
                        int32_t *l_224[6] = {&l_109,&l_109,&l_109,&l_109,&l_109,&l_109};
                        int8_t *l_237 = (void*)0;
                        int i;
                        --p_1127->g_226;
                        if ((*p_1127->g_76))
                            break;
                        (*l_223) &= (((safe_div_func_int64_t_s_s(((0x2FL & (safe_lshift_func_uint16_t_u_u(FAKE_DIVERGE(p_1127->local_1_offset, get_local_id(1), 10), 2))) ^ ((safe_mod_func_int32_t_s_s(((*p_1127->g_76) , l_191[2]), p_38)) , ((((safe_lshift_func_uint8_t_u_u((l_237 != ((p_39 != 65535UL) , l_238)), GROUP_DIVERGE(2, 1))) | (safe_sub_func_uint32_t_u_u((safe_sub_func_int64_t_s_s(p_1127->g_3, 0xFD5ADA9CF794CBFBL)), 4294967291UL))) | 9L) < 0x4FL))), 0x079F33D5E54CF3BFL)) | l_184) <= l_193);
                    }
                    else
                    { /* block id: 103 */
                        (*p_1127->g_75) = ((safe_rshift_func_int16_t_s_u(0x7132L, 12)) , l_245);
                    }
                    (*l_209) |= (((safe_lshift_func_int16_t_s_s((safe_unary_minus_func_uint64_t_u((~(safe_rshift_func_uint16_t_u_s(p_39, (0x172BL && 1UL)))))), (((((p_1127->g_226 ^ (p_1127->g_108 = p_1127->g_190)) != (safe_div_func_uint32_t_u_u((safe_add_func_int64_t_s_s((safe_div_func_uint8_t_u_u((((*l_257)--) < ((*l_135) = (l_167 || (l_184 < (l_260 != (p_1127->g_261 = (p_1127->g_54 , (void*)0))))))), 4L)), l_262)), (-3L)))) , FAKE_DIVERGE(p_1127->global_2_offset, get_global_id(2), 10)) , (void*)0) != (void*)0))) && p_39) || FAKE_DIVERGE(p_1127->global_2_offset, get_global_id(2), 10));
                    return p_38;
                }
                if ((***l_161))
                    continue;
                if ((l_193 && (l_130 == l_131)))
                { /* block id: 114 */
                    uint8_t l_286 = 7UL;
                    for (p_1127->g_83 = 0; p_1127->g_83 < 2; p_1127->g_83 += 1)
                    {
                        for (p_1127->g_54 = 0; p_1127->g_54 < 8; p_1127->g_54 += 1)
                        {
                            l_107[p_1127->g_83][p_1127->g_54] = &p_1127->g_108;
                        }
                    }
                    for (l_192 = 6; (l_192 < 28); l_192 = safe_add_func_uint64_t_u_u(l_192, 8))
                    { /* block id: 118 */
                        struct S0 **l_267 = &l_265;
                        struct S0 *l_269 = &p_1127->g_270;
                        struct S0 **l_268 = &l_269;
                        (*l_268) = ((*l_267) = l_265);
                    }
                    (*p_40) = func_41(p_1127->g_112[3], &p_37, ((safe_mul_func_uint8_t_u_u((safe_mod_func_int64_t_s_s(((****l_160) != (safe_mul_func_int8_t_s_s(((*l_238) = ((void*)0 != l_277[5][0])), (safe_lshift_func_uint16_t_u_s(65535UL, 5))))), ((p_38 , ((((safe_sub_func_uint8_t_u_u((~((p_1127->g_190 , l_282[0]) == p_1127->g_283[0][1])), p_39)) , l_286) && (**p_1127->g_75)) >= 0x0DF3L)) , 0x64D5B5BBEE72D1E0L))), 1UL)) , 5L), p_1127);
                }
                else
                { /* block id: 124 */
                    int32_t l_290 = 0x45051C77L;
                    for (p_1127->g_266.f0 = 0; (p_1127->g_266.f0 <= 23); ++p_1127->g_266.f0)
                    { /* block id: 127 */
                        uint32_t l_289 = 0x0E2F8F99L;
                        return l_289;
                    }
                    (*p_40) = func_41(p_39, &p_1127->g_76, (((***l_161) && ((1UL || l_290) | 0x3ED4B981L)) , ((safe_mul_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u(((((safe_sub_func_uint64_t_u_u((safe_mod_func_uint32_t_u_u((l_193 , (((p_1127->g_299 = ((*l_100) = &p_1127->g_106)) != &p_1127->g_80) >= 0x4DF2L)), 1UL)), 8L)) > p_1127->g_82.f2) & (**p_40)) | (**p_1127->g_75)), p_39)), p_38)) & l_290)), p_1127);
                    for (p_1127->g_266.f2 = 0; (p_1127->g_266.f2 >= 25); p_1127->g_266.f2 = safe_add_func_uint64_t_u_u(p_1127->g_266.f2, 6))
                    { /* block id: 135 */
                        int16_t l_302[7] = {9L,7L,9L,9L,7L,9L,9L};
                        int32_t *l_304[3];
                        int i;
                        for (i = 0; i < 3; i++)
                            l_304[i] = &l_109;
                        l_302[5] = (&p_1127->g_166 == (void*)0);
                        p_1127->g_303 = l_265;
                        ++p_1127->g_305;
                    }
                }
            }
            l_321 |= (p_38 , ((((safe_rshift_func_int16_t_s_u(l_262, 4)) < 65535UL) , 18446744073709551610UL) >= ((safe_mod_func_uint8_t_u_u((p_38 | (safe_lshift_func_uint8_t_u_s((((safe_sub_func_int8_t_s_s(p_1127->g_166, p_1127->g_169)) & p_39) ^ (((p_1127->g_320[0] = ((safe_div_func_uint8_t_u_u((p_39 <= (-1L)), l_262)) == p_1127->g_169)) && 0UL) , GROUP_DIVERGE(2, 1))), 1))), p_39)) || 0x7DL)));
        }
        l_262 = ((safe_mod_func_uint32_t_u_u(4294967295UL, (safe_mul_func_uint16_t_u_u((safe_lshift_func_int16_t_s_s((safe_div_func_uint32_t_u_u(((l_167 & (safe_div_func_uint32_t_u_u((p_1127->g_305 ^= (((((safe_rshift_func_int8_t_s_s((((safe_rshift_func_uint16_t_u_u((l_260 != &p_1127->g_187), (safe_mul_func_int8_t_s_s((safe_div_func_uint32_t_u_u(((((**p_1127->g_75) , (void*)0) != (((safe_mul_func_int8_t_s_s(((safe_mul_func_int16_t_s_s((safe_sub_func_int64_t_s_s((safe_add_func_int32_t_s_s(((++(*l_260)) || ((safe_add_func_uint8_t_u_u((***l_161), ((GROUP_DIVERGE(0, 1) , p_1127->g_270.f2) > p_39))) > 0x82895629L)), (*p_1127->g_76))), p_39)), p_38)) ^ GROUP_DIVERGE(1, 1)), 255UL)) , l_262) , l_352)) || (***l_161)), l_167)), p_39)))) <= p_38) < 0x62427DBAL), l_167)) | p_39) > 6UL) ^ l_353[1]) | 0UL)), (**p_1127->g_75)))) , 4294967287UL), (*p_1127->g_76))), p_1127->g_320[0])), (-3L))))) < (****l_160));
        if ((*p_37))
        { /* block id: 148 */
            volatile int16_t ***l_357 = &p_1127->g_354;
            int32_t l_358[1][1];
            uint64_t **l_389 = &p_1127->g_261;
            int32_t *l_398 = &p_1127->g_380.f1;
            int64_t *l_403[10][9][2] = {{{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0}},{{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0}},{{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0}},{{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0}},{{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0}},{{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0}},{{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0}},{{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0}},{{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0}},{{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0},{&p_1127->g_266.f3,(void*)0}}};
            int i, j, k;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 1; j++)
                    l_358[i][j] = 0x4C7DBC72L;
            }
            (*l_357) = p_1127->g_354;
            if (p_1127->g_108)
                goto lbl_359;
lbl_359:
            p_1127->g_82.f1 = l_358[0][0];
            l_404[1] &= (((safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_1127->global_1_offset, get_global_id(1), 10), (safe_mod_func_int64_t_s_s((GROUP_DIVERGE(0, 1) > (((void*)0 == l_364[6][7]) >= (safe_unary_minus_func_int64_t_s(((safe_lshift_func_int16_t_s_u((safe_mod_func_int8_t_s_s((((*l_389) = &p_1127->g_132) == ((safe_sub_func_uint8_t_u_u((safe_mod_func_uint32_t_u_u(((p_1127->g_266.f3 = ((safe_mul_func_int16_t_s_s(p_38, (safe_sub_func_uint64_t_u_u(p_1127->g_266.f2, ((((*l_398) = l_109) | (!(*p_1127->g_76))) == p_38))))) <= ((safe_unary_minus_func_int16_t_s(((!(((safe_mod_func_uint64_t_u_u(0xE7DDAC24A831C9E5L, l_262)) == (****l_160)) , l_402)) < (**p_40)))) ^ 1L))) , 0xF2678B39L), p_1127->g_225)), p_1127->g_270.f2)) , (void*)0)), 1UL)), 1)) || 0x30L))))), l_87)))) , p_38) & p_1127->g_80);
            (*l_398) = ((((l_109 ^= (GROUP_DIVERGE(2, 1) >= ((((((safe_sub_func_int64_t_s_s(((safe_mul_func_int16_t_s_s(((safe_div_func_int16_t_s_s(((*l_197) = (((safe_add_func_uint8_t_u_u(p_38, (((safe_sub_func_int8_t_s_s(l_167, ((void*)0 != &p_39))) >= ((p_38 >= p_39) & (p_39 && 1L))) , GROUP_DIVERGE(0, 1)))) > (safe_add_func_int32_t_s_s((-4L), l_404[1]))) && (*l_398))), p_1127->g_225)) | (-8L)), 65535UL)) != 0x62486AC3L), GROUP_DIVERGE(1, 1))) , p_38) > 0x358BL) >= l_417[0]) == p_1127->g_225) || GROUP_DIVERGE(1, 1)))) || 5UL) <= 0x37B5A121L) , (**p_1127->g_75));
        }
        else
        { /* block id: 159 */
            return p_39;
        }
    }
    if ((*p_37))
    { /* block id: 163 */
        return p_39;
    }
    else
    { /* block id: 165 */
        int8_t l_418 = (-6L);
        volatile struct S0 **l_421 = &p_1127->g_284;
        l_418 |= 0x21A6C9B0L;
        (*l_421) = p_1127->g_419;
    }
    l_262 = ((!((((*l_422) = &l_404[3]) != ((*l_425) = &p_1127->g_187)) < ((((safe_lshift_func_uint16_t_u_s(p_38, (p_1127->g_429 = (+p_1127->g_226)))) , (safe_div_func_int8_t_s_s(l_432[0], (safe_add_func_int8_t_s_s(((safe_rshift_func_int8_t_s_s(p_1127->g_305, ((((l_404[1] | p_1127->g_320[0]) | (((safe_lshift_func_int8_t_s_s(l_439, 2)) , &l_197) != &l_197)) != GROUP_DIVERGE(2, 1)) , 0x67L))) == p_39), l_109))))) < (-1L)) == (-2L)))) ^ p_1127->g_270.f0);
    return p_1127->g_320[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1127->g_3 p_1127->g_79 p_1127->g_80 p_1127->g_83 p_1127->g_84 p_1127->g_75 p_1127->g_76 p_1127->g_108 p_1127->g_634 p_1127->g_633
 * writes: p_1127->g_54 p_1127->g_75 p_1127->g_79 p_1127->g_80 p_1127->g_83 p_1127->g_84
 */
int32_t * func_41(uint32_t  p_42, int32_t ** p_43, int32_t  p_44, struct S4 * p_1127)
{ /* block id: 22 */
    uint32_t *l_53 = &p_1127->g_54;
    int32_t l_57 = 1L;
    int32_t **l_74 = (void*)0;
    int32_t ***l_73[9] = {&l_74,&l_74,&l_74,&l_74,&l_74,&l_74,&l_74,&l_74,&l_74};
    int32_t l_77 = 0x46606A86L;
    int16_t *l_78 = &p_1127->g_79[2][5];
    int i;
    p_1127->g_83 |= (safe_div_func_uint64_t_u_u(((safe_div_func_uint8_t_u_u((safe_sub_func_uint8_t_u_u(0x31L, ((((*l_53) = 0x97EEDF66L) , (safe_mul_func_uint8_t_u_u(l_57, (func_58(&p_1127->g_3, (((safe_sub_func_uint32_t_u_u(p_44, (safe_div_func_int8_t_s_s((((p_1127->g_80 = (((*l_78) &= (((safe_mul_func_int8_t_s_s((safe_add_func_int32_t_s_s(p_1127->g_3, (**p_43))), ((safe_mul_func_uint8_t_u_u((safe_add_func_int64_t_s_s(((p_1127->g_75 = p_43) != p_43), l_77)), (-4L))) , p_44))) | p_44) , 0x051AL)) , (**p_43))) >= 0x6EE091E6L) , 0x1FL), 0x29L)))) && p_44) <= 65530UL), p_1127) > p_44)))) & p_1127->g_3))), p_1127->g_3)) && 6L), p_1127->g_3));
    p_1127->g_84 ^= ((0x8FL > (-6L)) , (**p_43));
    return (*p_1127->g_75);
}


/* ------------------------------------------ */
/* 
 * reads : p_1127->g_80
 * writes:
 */
int8_t  func_58(int32_t * p_59, int64_t  p_60, struct S4 * p_1127)
{ /* block id: 27 */
    union U2 *l_81 = &p_1127->g_82;
    l_81 = l_81;
    return p_1127->g_80;
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S4 c_1128;
    struct S4* p_1127 = &c_1128;
    struct S4 c_1129 = {
        1L, // p_1127->g_3
        &p_1127->g_3, // p_1127->g_2
        &p_1127->g_2, // p_1127->g_31
        0x4DBB9A2FL, // p_1127->g_54
        &p_1127->g_3, // p_1127->g_76
        &p_1127->g_76, // p_1127->g_75
        {{(-1L),(-8L),(-1L),(-1L),(-8L),(-1L),(-1L),(-8L)},{(-1L),(-8L),(-1L),(-1L),(-8L),(-1L),(-1L),(-8L)},{(-1L),(-8L),(-1L),(-1L),(-8L),(-1L),(-1L),(-8L)},{(-1L),(-8L),(-1L),(-1L),(-8L),(-1L),(-1L),(-8L)},{(-1L),(-8L),(-1L),(-1L),(-8L),(-1L),(-1L),(-8L)},{(-1L),(-8L),(-1L),(-1L),(-8L),(-1L),(-1L),(-8L)}}, // p_1127->g_79
        0x9D2C4C26L, // p_1127->g_80
        {0x7EL}, // p_1127->g_82
        0x52C8L, // p_1127->g_83
        0x543CBDA1L, // p_1127->g_84
        0x18A5C642L, // p_1127->g_106
        0x18026BCBL, // p_1127->g_108
        {0x63AB8821L,0x63AB8821L,0x63AB8821L,0x63AB8821L,0x63AB8821L,0x63AB8821L,0x63AB8821L}, // p_1127->g_112
        4UL, // p_1127->g_132
        (void*)0, // p_1127->g_159
        &p_1127->g_159, // p_1127->g_158
        0x3BL, // p_1127->g_166
        0xBC10L, // p_1127->g_169
        (-7L), // p_1127->g_187
        248UL, // p_1127->g_190
        0x2AD6L, // p_1127->g_225
        1UL, // p_1127->g_226
        (void*)0, // p_1127->g_261
        {4294967295UL,2UL,0xC326L,-8L}, // p_1127->g_266
        {0x1184B929L,4294967295UL,1UL,0x56030DAD6C18F840L}, // p_1127->g_270
        {4294967295UL,1UL,0UL,-1L}, // p_1127->g_285
        &p_1127->g_285, // p_1127->g_284
        {{(void*)0,&p_1127->g_284},{(void*)0,&p_1127->g_284},{(void*)0,&p_1127->g_284},{(void*)0,&p_1127->g_284},{(void*)0,&p_1127->g_284}}, // p_1127->g_283
        &p_1127->g_270.f0, // p_1127->g_299
        (void*)0, // p_1127->g_303
        0xF321B609L, // p_1127->g_305
        {65535UL}, // p_1127->g_320
        {{0x396CL,0x689CL,0x0A2AL,0x689CL,0x396CL,0x396CL,0x689CL},{0x396CL,0x689CL,0x0A2AL,0x689CL,0x396CL,0x396CL,0x689CL},{0x396CL,0x689CL,0x0A2AL,0x689CL,0x396CL,0x396CL,0x689CL},{0x396CL,0x689CL,0x0A2AL,0x689CL,0x396CL,0x396CL,0x689CL},{0x396CL,0x689CL,0x0A2AL,0x689CL,0x396CL,0x396CL,0x689CL},{0x396CL,0x689CL,0x0A2AL,0x689CL,0x396CL,0x396CL,0x689CL},{0x396CL,0x689CL,0x0A2AL,0x689CL,0x396CL,0x396CL,0x689CL}}, // p_1127->g_356
        &p_1127->g_356[5][5], // p_1127->g_355
        &p_1127->g_355, // p_1127->g_354
        {-1L}, // p_1127->g_365
        {{-6L},{-6L},{-6L},{-6L},{-6L}}, // p_1127->g_366
        {{0L},{0L},{0L},{0L}}, // p_1127->g_367
        {0x70L}, // p_1127->g_368
        {-1L}, // p_1127->g_369
        {0x3DL}, // p_1127->g_370
        {0L}, // p_1127->g_371
        {-8L}, // p_1127->g_372
        {{{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L}}}, // p_1127->g_373
        {-1L}, // p_1127->g_374
        {0x1EL}, // p_1127->g_375
        {0x04L}, // p_1127->g_376
        {-1L}, // p_1127->g_377
        {{7L},{7L},{7L},{7L},{7L},{7L},{7L}}, // p_1127->g_378
        {0x10L}, // p_1127->g_379
        {0x63L}, // p_1127->g_380
        {-10L}, // p_1127->g_381
        {4L}, // p_1127->g_382
        {1L}, // p_1127->g_383
        {{{4294967295UL,4294967287UL,0UL,1L},{4294967295UL,4294967287UL,0UL,1L},{0x23801678L,0xCA0C9B08L,65530UL,0x31613551652D02CCL},{0xB1ACD26AL,0x3D7D3A67L,0x6AFEL,-2L},{8UL,0UL,5UL,0x76B19C9D35091913L},{0UL,0xE3DBFDF3L,1UL,0x60D0823E925FEAA6L},{0x9E0CDC91L,1UL,0xC308L,-1L},{0x214E21D8L,0x20723358L,0x2311L,0x2E68CE1AC964795EL},{0x9E0CDC91L,1UL,0xC308L,-1L}},{{4294967295UL,4294967287UL,0UL,1L},{4294967295UL,4294967287UL,0UL,1L},{0x23801678L,0xCA0C9B08L,65530UL,0x31613551652D02CCL},{0xB1ACD26AL,0x3D7D3A67L,0x6AFEL,-2L},{8UL,0UL,5UL,0x76B19C9D35091913L},{0UL,0xE3DBFDF3L,1UL,0x60D0823E925FEAA6L},{0x9E0CDC91L,1UL,0xC308L,-1L},{0x214E21D8L,0x20723358L,0x2311L,0x2E68CE1AC964795EL},{0x9E0CDC91L,1UL,0xC308L,-1L}},{{4294967295UL,4294967287UL,0UL,1L},{4294967295UL,4294967287UL,0UL,1L},{0x23801678L,0xCA0C9B08L,65530UL,0x31613551652D02CCL},{0xB1ACD26AL,0x3D7D3A67L,0x6AFEL,-2L},{8UL,0UL,5UL,0x76B19C9D35091913L},{0UL,0xE3DBFDF3L,1UL,0x60D0823E925FEAA6L},{0x9E0CDC91L,1UL,0xC308L,-1L},{0x214E21D8L,0x20723358L,0x2311L,0x2E68CE1AC964795EL},{0x9E0CDC91L,1UL,0xC308L,-1L}}}, // p_1127->g_420
        &p_1127->g_420[1][6], // p_1127->g_419
        0x4E1D7CEBL, // p_1127->g_429
        {0xA1A2D6ACL,0x00E61919L,0x4753L,0x5FCB97E76A8AA791L}, // p_1127->g_445
        0x76L, // p_1127->g_511
        0xD80410E8A6C75D04L, // p_1127->g_579
        0x1C6CF7ACL, // p_1127->g_584
        0x892306C2L, // p_1127->g_610
        &p_1127->g_610, // p_1127->g_609
        1UL, // p_1127->g_632
        0L, // p_1127->g_634
        &p_1127->g_634, // p_1127->g_633
        {{{(void*)0,&p_1127->g_187,(void*)0,(void*)0,&p_1127->g_187,(void*)0,(void*)0,&p_1127->g_187,(void*)0,(void*)0}}}, // p_1127->g_680
        {&p_1127->g_680[0][0][2],&p_1127->g_680[0][0][2],&p_1127->g_680[0][0][2],&p_1127->g_680[0][0][2],&p_1127->g_680[0][0][2],&p_1127->g_680[0][0][2],&p_1127->g_680[0][0][2],&p_1127->g_680[0][0][2],&p_1127->g_680[0][0][2],&p_1127->g_680[0][0][2]}, // p_1127->g_679
        (-3L), // p_1127->g_692
        {{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L}}, // p_1127->g_694
        {{1L},{1L}}, // p_1127->g_737
        &p_1127->g_737[1], // p_1127->g_738
        {0x88819643L,0x0E93C201L,0UL,-1L}, // p_1127->g_752
        8L, // p_1127->g_786
        0xA192L, // p_1127->g_789
        {0x34E694DDL,0xAA6E1BB7L,0x5DFBL,-1L}, // p_1127->g_816
        {0UL,0x18732A5DL,65531UL,0x0720C336CF835F7EL}, // p_1127->g_824
        {0UL}, // p_1127->g_839
        {0x20E9CEB8L}, // p_1127->g_840
        &p_1127->g_190, // p_1127->g_843
        &p_1127->g_285.f2, // p_1127->g_854
        &p_1127->g_854, // p_1127->g_853
        (void*)0, // p_1127->g_874
        {{&p_1127->g_874,&p_1127->g_874,&p_1127->g_874,&p_1127->g_874},{&p_1127->g_874,&p_1127->g_874,&p_1127->g_874,&p_1127->g_874},{&p_1127->g_874,&p_1127->g_874,&p_1127->g_874,&p_1127->g_874},{&p_1127->g_874,&p_1127->g_874,&p_1127->g_874,&p_1127->g_874},{&p_1127->g_874,&p_1127->g_874,&p_1127->g_874,&p_1127->g_874},{&p_1127->g_874,&p_1127->g_874,&p_1127->g_874,&p_1127->g_874},{&p_1127->g_874,&p_1127->g_874,&p_1127->g_874,&p_1127->g_874},{&p_1127->g_874,&p_1127->g_874,&p_1127->g_874,&p_1127->g_874},{&p_1127->g_874,&p_1127->g_874,&p_1127->g_874,&p_1127->g_874}}, // p_1127->g_873
        {9L}, // p_1127->g_882
        {0xA03EL}, // p_1127->g_895
        {1UL}, // p_1127->g_913
        {{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}}, // p_1127->g_1018
        0, // p_1127->v_collective
        sequence_input[get_global_id(0)], // p_1127->global_0_offset
        sequence_input[get_global_id(1)], // p_1127->global_1_offset
        sequence_input[get_global_id(2)], // p_1127->global_2_offset
        sequence_input[get_local_id(0)], // p_1127->local_0_offset
        sequence_input[get_local_id(1)], // p_1127->local_1_offset
        sequence_input[get_local_id(2)], // p_1127->local_2_offset
        sequence_input[get_group_id(0)], // p_1127->group_0_offset
        sequence_input[get_group_id(1)], // p_1127->group_1_offset
        sequence_input[get_group_id(2)], // p_1127->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_1128 = c_1129;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1127);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1127->g_3, "p_1127->g_3", print_hash_value);
    transparent_crc(p_1127->g_54, "p_1127->g_54", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1127->g_79[i][j], "p_1127->g_79[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1127->g_80, "p_1127->g_80", print_hash_value);
    transparent_crc(p_1127->g_83, "p_1127->g_83", print_hash_value);
    transparent_crc(p_1127->g_84, "p_1127->g_84", print_hash_value);
    transparent_crc(p_1127->g_106, "p_1127->g_106", print_hash_value);
    transparent_crc(p_1127->g_108, "p_1127->g_108", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1127->g_112[i], "p_1127->g_112[i]", print_hash_value);

    }
    transparent_crc(p_1127->g_132, "p_1127->g_132", print_hash_value);
    transparent_crc(p_1127->g_166, "p_1127->g_166", print_hash_value);
    transparent_crc(p_1127->g_169, "p_1127->g_169", print_hash_value);
    transparent_crc(p_1127->g_187, "p_1127->g_187", print_hash_value);
    transparent_crc(p_1127->g_190, "p_1127->g_190", print_hash_value);
    transparent_crc(p_1127->g_225, "p_1127->g_225", print_hash_value);
    transparent_crc(p_1127->g_226, "p_1127->g_226", print_hash_value);
    transparent_crc(p_1127->g_266.f0, "p_1127->g_266.f0", print_hash_value);
    transparent_crc(p_1127->g_266.f1, "p_1127->g_266.f1", print_hash_value);
    transparent_crc(p_1127->g_266.f2, "p_1127->g_266.f2", print_hash_value);
    transparent_crc(p_1127->g_266.f3, "p_1127->g_266.f3", print_hash_value);
    transparent_crc(p_1127->g_270.f0, "p_1127->g_270.f0", print_hash_value);
    transparent_crc(p_1127->g_270.f1, "p_1127->g_270.f1", print_hash_value);
    transparent_crc(p_1127->g_270.f2, "p_1127->g_270.f2", print_hash_value);
    transparent_crc(p_1127->g_270.f3, "p_1127->g_270.f3", print_hash_value);
    transparent_crc(p_1127->g_285.f0, "p_1127->g_285.f0", print_hash_value);
    transparent_crc(p_1127->g_285.f1, "p_1127->g_285.f1", print_hash_value);
    transparent_crc(p_1127->g_285.f2, "p_1127->g_285.f2", print_hash_value);
    transparent_crc(p_1127->g_285.f3, "p_1127->g_285.f3", print_hash_value);
    transparent_crc(p_1127->g_305, "p_1127->g_305", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1127->g_320[i], "p_1127->g_320[i]", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1127->g_356[i][j], "p_1127->g_356[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1127->g_365.f0, "p_1127->g_365.f0", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1127->g_366[i].f0, "p_1127->g_366[i].f0", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1127->g_367[i].f0, "p_1127->g_367[i].f0", print_hash_value);

    }
    transparent_crc(p_1127->g_369.f0, "p_1127->g_369.f0", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1127->g_373[i][j].f0, "p_1127->g_373[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1127->g_374.f0, "p_1127->g_374.f0", print_hash_value);
    transparent_crc(p_1127->g_375.f0, "p_1127->g_375.f0", print_hash_value);
    transparent_crc(p_1127->g_379.f0, "p_1127->g_379.f0", print_hash_value);
    transparent_crc(p_1127->g_383.f0, "p_1127->g_383.f0", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1127->g_420[i][j].f0, "p_1127->g_420[i][j].f0", print_hash_value);
            transparent_crc(p_1127->g_420[i][j].f1, "p_1127->g_420[i][j].f1", print_hash_value);
            transparent_crc(p_1127->g_420[i][j].f2, "p_1127->g_420[i][j].f2", print_hash_value);
            transparent_crc(p_1127->g_420[i][j].f3, "p_1127->g_420[i][j].f3", print_hash_value);

        }
    }
    transparent_crc(p_1127->g_429, "p_1127->g_429", print_hash_value);
    transparent_crc(p_1127->g_445.f0, "p_1127->g_445.f0", print_hash_value);
    transparent_crc(p_1127->g_445.f1, "p_1127->g_445.f1", print_hash_value);
    transparent_crc(p_1127->g_445.f2, "p_1127->g_445.f2", print_hash_value);
    transparent_crc(p_1127->g_445.f3, "p_1127->g_445.f3", print_hash_value);
    transparent_crc(p_1127->g_511, "p_1127->g_511", print_hash_value);
    transparent_crc(p_1127->g_579, "p_1127->g_579", print_hash_value);
    transparent_crc(p_1127->g_584, "p_1127->g_584", print_hash_value);
    transparent_crc(p_1127->g_610, "p_1127->g_610", print_hash_value);
    transparent_crc(p_1127->g_632, "p_1127->g_632", print_hash_value);
    transparent_crc(p_1127->g_634, "p_1127->g_634", print_hash_value);
    transparent_crc(p_1127->g_692, "p_1127->g_692", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1127->g_694[i][j], "p_1127->g_694[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1127->g_737[i].f0, "p_1127->g_737[i].f0", print_hash_value);

    }
    transparent_crc(p_1127->g_752.f0, "p_1127->g_752.f0", print_hash_value);
    transparent_crc(p_1127->g_752.f1, "p_1127->g_752.f1", print_hash_value);
    transparent_crc(p_1127->g_752.f2, "p_1127->g_752.f2", print_hash_value);
    transparent_crc(p_1127->g_752.f3, "p_1127->g_752.f3", print_hash_value);
    transparent_crc(p_1127->g_786, "p_1127->g_786", print_hash_value);
    transparent_crc(p_1127->g_789, "p_1127->g_789", print_hash_value);
    transparent_crc(p_1127->g_816.f0, "p_1127->g_816.f0", print_hash_value);
    transparent_crc(p_1127->g_816.f1, "p_1127->g_816.f1", print_hash_value);
    transparent_crc(p_1127->g_816.f2, "p_1127->g_816.f2", print_hash_value);
    transparent_crc(p_1127->g_816.f3, "p_1127->g_816.f3", print_hash_value);
    transparent_crc(p_1127->g_824.f0, "p_1127->g_824.f0", print_hash_value);
    transparent_crc(p_1127->g_824.f1, "p_1127->g_824.f1", print_hash_value);
    transparent_crc(p_1127->g_824.f2, "p_1127->g_824.f2", print_hash_value);
    transparent_crc(p_1127->g_824.f3, "p_1127->g_824.f3", print_hash_value);
    transparent_crc(p_1127->g_839.f0, "p_1127->g_839.f0", print_hash_value);
    transparent_crc(p_1127->g_840.f0, "p_1127->g_840.f0", print_hash_value);
    transparent_crc(p_1127->g_882.f0, "p_1127->g_882.f0", print_hash_value);
    transparent_crc(p_1127->g_895.f0, "p_1127->g_895.f0", print_hash_value);
    transparent_crc(p_1127->g_913.f0, "p_1127->g_913.f0", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1127->g_1018[i].f0, "p_1127->g_1018[i].f0", print_hash_value);

    }
    transparent_crc(p_1127->v_collective, "p_1127->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
