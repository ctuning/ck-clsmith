// --atomics 19 ---fake_divergence -g 72,10,3 -l 4,10,3
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


// Seed: 114

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   volatile int32_t  f0;
};

union U1 {
   int32_t  f0;
   uint64_t  f1;
};

struct S2 {
    int32_t g_2;
    uint8_t g_45;
    int8_t g_56;
    int32_t *g_60;
    int32_t ** volatile g_59;
    int32_t g_63;
    int32_t g_86[8][10][3];
    volatile int32_t g_87[6];
    uint64_t g_94[10];
    uint64_t * volatile g_93;
    uint64_t g_117;
    int32_t **g_119;
    int32_t *** volatile g_118;
    union U0 g_133;
    uint32_t g_140;
    uint32_t g_148;
    int16_t g_152;
    uint32_t g_153;
    int64_t g_172;
    int16_t g_174;
    volatile union U1 g_175[1][5][8];
    volatile uint16_t g_177;
    volatile uint16_t * volatile g_176;
    volatile uint8_t g_180;
    volatile uint8_t *g_179;
    volatile uint8_t * volatile * volatile g_178;
    union U1 g_197;
    union U1 *g_199;
    union U1 ** volatile g_198;
    int64_t g_211;
    volatile int32_t g_212;
    union U0 g_217;
    uint16_t g_243;
    union U0 g_246;
    union U0 g_251;
    int64_t g_271;
    int8_t g_273[9];
    uint64_t *g_359;
    volatile union U0 g_474;
    volatile union U0 g_506;
    union U1 **g_510;
    union U1 ***g_509;
    int32_t g_548;
    union U0 g_549;
    volatile union U0 g_563;
    uint32_t g_577[8][7];
    uint32_t g_579;
    int32_t *** volatile g_599;
    int32_t *** volatile *g_598;
    int32_t g_600;
    union U0 *g_603;
    int32_t g_651;
    int8_t *g_725;
    int8_t **g_724[1][6][3];
    uint16_t g_790;
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
uint64_t  func_1(struct S2 * p_792);
int32_t * func_5(int32_t  p_6, int16_t  p_7, int32_t  p_8, struct S2 * p_792);
int32_t  func_9(uint64_t  p_10, int32_t * p_11, struct S2 * p_792);
int32_t * func_13(int64_t  p_14, int32_t * p_15, int32_t * p_16, int32_t  p_17, uint32_t  p_18, struct S2 * p_792);
uint8_t  func_19(uint32_t  p_20, int32_t * p_21, struct S2 * p_792);
union U0  func_24(int32_t * p_25, uint32_t  p_26, int32_t * p_27, struct S2 * p_792);
int16_t  func_28(int32_t * p_29, int32_t * p_30, int32_t * p_31, int64_t  p_32, uint64_t  p_33, struct S2 * p_792);
int32_t * func_35(uint32_t  p_36, int64_t  p_37, struct S2 * p_792);
int32_t  func_47(int16_t  p_48, int32_t  p_49, struct S2 * p_792);
int16_t  func_50(uint8_t * p_51, int64_t  p_52, int64_t  p_53, int64_t  p_54, struct S2 * p_792);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_792->g_2 p_792->g_56
 * writes: p_792->g_2
 */
uint64_t  func_1(struct S2 * p_792)
{ /* block id: 4 */
    int8_t l_22 = 0x57L;
    int32_t *l_34 = (void*)0;
    int32_t *l_249[4];
    union U1 **l_494 = &p_792->g_199;
    int32_t l_650[9][2][10] = {{{0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L},{0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L}},{{0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L},{0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L}},{{0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L},{0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L}},{{0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L},{0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L}},{{0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L},{0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L}},{{0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L},{0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L}},{{0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L},{0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L}},{{0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L},{0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L}},{{0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L},{0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L,0x3AF6AE10L}}};
    int64_t l_654 = 0x520F5001292DBCA2L;
    int8_t l_699 = 0L;
    uint8_t l_701 = 250UL;
    union U1 l_731 = {0x518466C6L};
    int16_t *l_733 = &p_792->g_174;
    int16_t **l_732 = &l_733;
    uint8_t l_768 = 1UL;
    uint32_t l_769 = 4294967289UL;
    uint32_t l_772 = 0xC8415F0CL;
    uint16_t *l_788 = &p_792->g_243;
    uint16_t **l_787[4][5] = {{&l_788,&l_788,&l_788,&l_788,&l_788},{&l_788,&l_788,&l_788,&l_788,&l_788},{&l_788,&l_788,&l_788,&l_788,&l_788},{&l_788,&l_788,&l_788,&l_788,&l_788}};
    union U0 *l_791 = (void*)0;
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_249[i] = &p_792->g_2;
    for (p_792->g_2 = (-3); (p_792->g_2 <= 13); p_792->g_2 = safe_add_func_uint64_t_u_u(p_792->g_2, 3))
    { /* block id: 7 */
        int16_t l_12 = 1L;
        int16_t *l_200 = &p_792->g_152;
        int32_t *l_247[7][1][3] = {{{&p_792->g_86[1][6][1],&p_792->g_2,&p_792->g_86[1][6][1]}},{{&p_792->g_86[1][6][1],&p_792->g_2,&p_792->g_86[1][6][1]}},{{&p_792->g_86[1][6][1],&p_792->g_2,&p_792->g_86[1][6][1]}},{{&p_792->g_86[1][6][1],&p_792->g_2,&p_792->g_86[1][6][1]}},{{&p_792->g_86[1][6][1],&p_792->g_2,&p_792->g_86[1][6][1]}},{{&p_792->g_86[1][6][1],&p_792->g_2,&p_792->g_86[1][6][1]}},{{&p_792->g_86[1][6][1],&p_792->g_2,&p_792->g_86[1][6][1]}}};
        int32_t **l_248 = &p_792->g_60;
        uint64_t l_250 = 0x2F686EF7DE8538CDL;
        uint32_t l_410[6][2][8] = {{{4294967287UL,4294967287UL,0x19317DCDL,0UL,4294967293UL,4294967287UL,4294967295UL,1UL},{4294967287UL,4294967287UL,0x19317DCDL,0UL,4294967293UL,4294967287UL,4294967295UL,1UL}},{{4294967287UL,4294967287UL,0x19317DCDL,0UL,4294967293UL,4294967287UL,4294967295UL,1UL},{4294967287UL,4294967287UL,0x19317DCDL,0UL,4294967293UL,4294967287UL,4294967295UL,1UL}},{{4294967287UL,4294967287UL,0x19317DCDL,0UL,4294967293UL,4294967287UL,4294967295UL,1UL},{4294967287UL,4294967287UL,0x19317DCDL,0UL,4294967293UL,4294967287UL,4294967295UL,1UL}},{{4294967287UL,4294967287UL,0x19317DCDL,0UL,4294967293UL,4294967287UL,4294967295UL,1UL},{4294967287UL,4294967287UL,0x19317DCDL,0UL,4294967293UL,4294967287UL,4294967295UL,1UL}},{{4294967287UL,4294967287UL,0x19317DCDL,0UL,4294967293UL,4294967287UL,4294967295UL,1UL},{4294967287UL,4294967287UL,0x19317DCDL,0UL,4294967293UL,4294967287UL,4294967295UL,1UL}},{{4294967287UL,4294967287UL,0x19317DCDL,0UL,4294967293UL,4294967287UL,4294967295UL,1UL},{4294967287UL,4294967287UL,0x19317DCDL,0UL,4294967293UL,4294967287UL,4294967295UL,1UL}}};
        uint8_t l_422 = 0x56L;
        int8_t *l_469 = (void*)0;
        union U1 **l_493 = &p_792->g_199;
        union U1 **l_508 = &p_792->g_199;
        union U1 ***l_507 = &l_508;
        int8_t l_630 = 0L;
        int32_t l_652[7];
        uint64_t l_656[10] = {0xEBEC6F1CEE4465F1L,0xEBEC6F1CEE4465F1L,0xEBEC6F1CEE4465F1L,0xEBEC6F1CEE4465F1L,0xEBEC6F1CEE4465F1L,0xEBEC6F1CEE4465F1L,0xEBEC6F1CEE4465F1L,0xEBEC6F1CEE4465F1L,0xEBEC6F1CEE4465F1L,0xEBEC6F1CEE4465F1L};
        uint8_t l_751 = 0x55L;
        int16_t l_762[1];
        union U1 l_786 = {1L};
        int i, j, k;
        for (i = 0; i < 7; i++)
            l_652[i] = (-9L);
        for (i = 0; i < 1; i++)
            l_762[i] = 8L;
        (1 + 1);
    }
    l_791 = &p_792->g_549;
    return p_792->g_56;
}


/* ------------------------------------------ */
/* 
 * reads : p_792->g_198 p_792->g_56 p_792->g_176 p_792->g_177 p_792->g_94 p_792->g_197.f1 p_792->g_87 p_792->g_273 p_792->g_45 p_792->g_86 p_792->g_179 p_792->g_180 p_792->g_153 p_792->g_2 p_792->g_197 p_792->g_117 p_792->g_243 p_792->g_152 p_792->g_119 p_792->g_271 p_792->g_118
 * writes: p_792->g_199 p_792->g_56 p_792->g_271 p_792->g_273 p_792->g_197.f1 p_792->g_45 p_792->g_152 p_792->g_359 p_792->g_117 p_792->g_63 p_792->g_243 p_792->g_153 p_792->g_60
 */
int32_t * func_5(int32_t  p_6, int16_t  p_7, int32_t  p_8, struct S2 * p_792)
{ /* block id: 103 */
    union U1 **l_268[5][6] = {{&p_792->g_199,&p_792->g_199,&p_792->g_199,&p_792->g_199,&p_792->g_199,&p_792->g_199},{&p_792->g_199,&p_792->g_199,&p_792->g_199,&p_792->g_199,&p_792->g_199,&p_792->g_199},{&p_792->g_199,&p_792->g_199,&p_792->g_199,&p_792->g_199,&p_792->g_199,&p_792->g_199},{&p_792->g_199,&p_792->g_199,&p_792->g_199,&p_792->g_199,&p_792->g_199,&p_792->g_199},{&p_792->g_199,&p_792->g_199,&p_792->g_199,&p_792->g_199,&p_792->g_199,&p_792->g_199}};
    int8_t *l_269 = &p_792->g_56;
    int32_t l_270 = 0x265C909BL;
    int8_t *l_272 = &p_792->g_273[5];
    int32_t l_276 = 0x36A790F0L;
    uint32_t l_281 = 1UL;
    uint8_t l_282 = 247UL;
    int32_t l_283[10][6] = {{1L,1L,(-3L),0x0B66098EL,(-10L),0L},{1L,1L,(-3L),0x0B66098EL,(-10L),0L},{1L,1L,(-3L),0x0B66098EL,(-10L),0L},{1L,1L,(-3L),0x0B66098EL,(-10L),0L},{1L,1L,(-3L),0x0B66098EL,(-10L),0L},{1L,1L,(-3L),0x0B66098EL,(-10L),0L},{1L,1L,(-3L),0x0B66098EL,(-10L),0L},{1L,1L,(-3L),0x0B66098EL,(-10L),0L},{1L,1L,(-3L),0x0B66098EL,(-10L),0L},{1L,1L,(-3L),0x0B66098EL,(-10L),0L}};
    int32_t l_347 = (-1L);
    uint32_t l_349 = 0xD5959697L;
    int32_t **l_387 = &p_792->g_60;
    int32_t *l_388[9][4] = {{&p_792->g_86[4][7][1],&p_792->g_2,&p_792->g_86[4][7][1],&p_792->g_86[4][7][1]},{&p_792->g_86[4][7][1],&p_792->g_2,&p_792->g_86[4][7][1],&p_792->g_86[4][7][1]},{&p_792->g_86[4][7][1],&p_792->g_2,&p_792->g_86[4][7][1],&p_792->g_86[4][7][1]},{&p_792->g_86[4][7][1],&p_792->g_2,&p_792->g_86[4][7][1],&p_792->g_86[4][7][1]},{&p_792->g_86[4][7][1],&p_792->g_2,&p_792->g_86[4][7][1],&p_792->g_86[4][7][1]},{&p_792->g_86[4][7][1],&p_792->g_2,&p_792->g_86[4][7][1],&p_792->g_86[4][7][1]},{&p_792->g_86[4][7][1],&p_792->g_2,&p_792->g_86[4][7][1],&p_792->g_86[4][7][1]},{&p_792->g_86[4][7][1],&p_792->g_2,&p_792->g_86[4][7][1],&p_792->g_86[4][7][1]},{&p_792->g_86[4][7][1],&p_792->g_2,&p_792->g_86[4][7][1],&p_792->g_86[4][7][1]}};
    int32_t *l_389[4] = {&l_283[1][4],&l_283[1][4],&l_283[1][4],&l_283[1][4]};
    int32_t *l_390 = (void*)0;
    int i, j;
    if ((!(((safe_add_func_uint64_t_u_u(((void*)0 != &p_792->g_56), ((safe_div_func_int8_t_s_s((((l_283[1][4] |= ((0x3B2AAA4A64453E61L <= (((GROUP_DIVERGE(2, 1) && ((safe_add_func_int32_t_s_s((p_6 != (safe_lshift_func_int8_t_s_s(((*l_272) = (p_792->g_271 = (l_270 ^= ((*l_269) |= (((*p_792->g_198) = (void*)0) == (void*)0))))), p_7))), (((((safe_lshift_func_int16_t_s_s(l_276, (safe_rshift_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(l_281, FAKE_DIVERGE(p_792->group_2_offset, get_group_id(2), 10))), 15)))) | FAKE_DIVERGE(p_792->local_2_offset, get_local_id(2), 10)) || (-3L)) & l_276) || p_6))) & l_282)) < p_8) && 0xCA4EL)) && (*p_792->g_176))) == l_276) > p_792->g_94[9]), 5UL)) , 0x0C2ECAACA99EF825L))) , (void*)0) != &p_792->g_197)))
    { /* block id: 110 */
        if ((atomic_inc(&p_792->g_atomic_input[19 * get_linear_group_id() + 15]) == 0))
        { /* block id: 112 */
            uint32_t l_284 = 0xD428D75FL;
            uint64_t l_285 = 0x6E8A2D6B44EB88B9L;
            int32_t l_306 = 0L;
            int32_t l_307 = (-6L);
            int32_t l_308 = 0x2382BE0AL;
            int64_t l_309 = 0x2B83F8AA431C9541L;
            uint8_t l_312 = 0xE5L;
            int32_t l_313 = 0x4E969139L;
            union U1 l_314[6] = {{4L},{4L},{4L},{4L},{4L},{4L}};
            uint64_t l_315[6][6][1] = {{{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL}},{{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL}},{{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL}},{{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL}},{{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL}},{{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL}}};
            uint64_t l_316[1][8][9] = {{{0x5215E0B628200B96L,0x5215E0B628200B96L,0xCE0CC70EA9EC9E55L,0x2A087789C42E18E0L,18446744073709551615UL,5UL,0xCE0E03FC564E5E47L,0xB9998859DBF21FD1L,0xCE0E03FC564E5E47L},{0x5215E0B628200B96L,0x5215E0B628200B96L,0xCE0CC70EA9EC9E55L,0x2A087789C42E18E0L,18446744073709551615UL,5UL,0xCE0E03FC564E5E47L,0xB9998859DBF21FD1L,0xCE0E03FC564E5E47L},{0x5215E0B628200B96L,0x5215E0B628200B96L,0xCE0CC70EA9EC9E55L,0x2A087789C42E18E0L,18446744073709551615UL,5UL,0xCE0E03FC564E5E47L,0xB9998859DBF21FD1L,0xCE0E03FC564E5E47L},{0x5215E0B628200B96L,0x5215E0B628200B96L,0xCE0CC70EA9EC9E55L,0x2A087789C42E18E0L,18446744073709551615UL,5UL,0xCE0E03FC564E5E47L,0xB9998859DBF21FD1L,0xCE0E03FC564E5E47L},{0x5215E0B628200B96L,0x5215E0B628200B96L,0xCE0CC70EA9EC9E55L,0x2A087789C42E18E0L,18446744073709551615UL,5UL,0xCE0E03FC564E5E47L,0xB9998859DBF21FD1L,0xCE0E03FC564E5E47L},{0x5215E0B628200B96L,0x5215E0B628200B96L,0xCE0CC70EA9EC9E55L,0x2A087789C42E18E0L,18446744073709551615UL,5UL,0xCE0E03FC564E5E47L,0xB9998859DBF21FD1L,0xCE0E03FC564E5E47L},{0x5215E0B628200B96L,0x5215E0B628200B96L,0xCE0CC70EA9EC9E55L,0x2A087789C42E18E0L,18446744073709551615UL,5UL,0xCE0E03FC564E5E47L,0xB9998859DBF21FD1L,0xCE0E03FC564E5E47L},{0x5215E0B628200B96L,0x5215E0B628200B96L,0xCE0CC70EA9EC9E55L,0x2A087789C42E18E0L,18446744073709551615UL,5UL,0xCE0E03FC564E5E47L,0xB9998859DBF21FD1L,0xCE0E03FC564E5E47L}}};
            int64_t l_317 = (-7L);
            uint16_t l_318 = 0x40ABL;
            int i, j, k;
            l_285 |= l_284;
            for (l_284 = (-4); (l_284 == 35); l_284++)
            { /* block id: 116 */
                int32_t l_288 = 0L;
                for (l_288 = 0; (l_288 >= (-2)); l_288--)
                { /* block id: 119 */
                    uint32_t l_291 = 0xC9611CC5L;
                    uint64_t l_292 = 0UL;
                    int16_t l_293 = (-10L);
                    uint8_t l_294 = 0x54L;
                    l_291 = (-10L);
                    l_293 = (l_292 = (-1L));
                    l_294 &= 0x6CDDEFD4L;
                    for (l_294 = 3; (l_294 <= 9); l_294 += 1)
                    { /* block id: 126 */
                        int8_t l_295 = 8L;
                        int64_t l_296 = 0x131C781FFB4F049EL;
                        uint32_t l_297 = 0UL;
                        uint8_t l_298 = 0xC7L;
                        int64_t l_299 = 0x66C36370E43FEC4FL;
                        int32_t l_301 = 0x0F4922FBL;
                        int32_t *l_300 = &l_301;
                        int i;
                        l_296 = (p_792->g_94[l_294] , l_295);
                        l_298 = l_297;
                        l_300 = (l_299 , (void*)0);
                    }
                }
                for (l_288 = 0; (l_288 != (-3)); --l_288)
                { /* block id: 134 */
                    int32_t l_304 = 8L;
                    int16_t l_305[4][5][10] = {{{0x72F5L,1L,3L,1L,0x72F5L,0x72F5L,1L,3L,1L,0x72F5L},{0x72F5L,1L,3L,1L,0x72F5L,0x72F5L,1L,3L,1L,0x72F5L},{0x72F5L,1L,3L,1L,0x72F5L,0x72F5L,1L,3L,1L,0x72F5L},{0x72F5L,1L,3L,1L,0x72F5L,0x72F5L,1L,3L,1L,0x72F5L},{0x72F5L,1L,3L,1L,0x72F5L,0x72F5L,1L,3L,1L,0x72F5L}},{{0x72F5L,1L,3L,1L,0x72F5L,0x72F5L,1L,3L,1L,0x72F5L},{0x72F5L,1L,3L,1L,0x72F5L,0x72F5L,1L,3L,1L,0x72F5L},{0x72F5L,1L,3L,1L,0x72F5L,0x72F5L,1L,3L,1L,0x72F5L},{0x72F5L,1L,3L,1L,0x72F5L,0x72F5L,1L,3L,1L,0x72F5L},{0x72F5L,1L,3L,1L,0x72F5L,0x72F5L,1L,3L,1L,0x72F5L}},{{0x72F5L,1L,3L,1L,0x72F5L,0x72F5L,1L,3L,1L,0x72F5L},{0x72F5L,1L,3L,1L,0x72F5L,0x72F5L,1L,3L,1L,0x72F5L},{0x72F5L,1L,3L,1L,0x72F5L,0x72F5L,1L,3L,1L,0x72F5L},{0x72F5L,1L,3L,1L,0x72F5L,0x72F5L,1L,3L,1L,0x72F5L},{0x72F5L,1L,3L,1L,0x72F5L,0x72F5L,1L,3L,1L,0x72F5L}},{{0x72F5L,1L,3L,1L,0x72F5L,0x72F5L,1L,3L,1L,0x72F5L},{0x72F5L,1L,3L,1L,0x72F5L,0x72F5L,1L,3L,1L,0x72F5L},{0x72F5L,1L,3L,1L,0x72F5L,0x72F5L,1L,3L,1L,0x72F5L},{0x72F5L,1L,3L,1L,0x72F5L,0x72F5L,1L,3L,1L,0x72F5L},{0x72F5L,1L,3L,1L,0x72F5L,0x72F5L,1L,3L,1L,0x72F5L}}};
                    int i, j, k;
                    l_305[3][2][7] = l_304;
                }
            }
            if (((l_313 = (l_312 &= ((l_309 = (((l_306 , FAKE_DIVERGE(p_792->group_1_offset, get_group_id(1), 10)) , GROUP_DIVERGE(0, 1)) , (l_308 = l_307))) , (l_285++)))) , ((l_317 = (l_314[5] , (l_315[1][0][0] , l_316[0][3][0]))) , l_318)))
            { /* block id: 144 */
                int32_t l_319 = 0x3B8B37F6L;
                int64_t l_320 = 0x0A3A3B24C4F325F4L;
                int32_t l_321 = (-1L);
                uint8_t l_322 = 253UL;
                union U1 l_324 = {2L};
                union U1 *l_323 = &l_324;
                union U1 *l_325 = &l_324;
                l_325 = ((l_317 = (l_309 = l_319)) , ((l_320 , (l_322 = l_321)) , l_323));
            }
            else
            { /* block id: 149 */
                uint64_t l_326 = 0x5BB4543E1A355F2FL;
                uint8_t l_327 = 0x08L;
                l_327 = (l_314[5].f0 = l_326);
            }
            for (l_313 = 28; (l_313 == 24); l_313 = safe_sub_func_uint64_t_u_u(l_313, 6))
            { /* block id: 155 */
                int32_t l_330 = 0x5EE2ECEEL;
                for (l_330 = 0; (l_330 != 29); l_330++)
                { /* block id: 158 */
                    l_314[5].f0 &= 0x13F1C303L;
                }
            }
            unsigned int result = 0;
            result += l_284;
            result += l_285;
            result += l_306;
            result += l_307;
            result += l_308;
            result += l_309;
            result += l_312;
            result += l_313;
            int l_314_i0;
            for (l_314_i0 = 0; l_314_i0 < 6; l_314_i0++) {
                result += l_314[l_314_i0].f0;
                result += l_314[l_314_i0].f1;
            }
            int l_315_i0, l_315_i1, l_315_i2;
            for (l_315_i0 = 0; l_315_i0 < 6; l_315_i0++) {
                for (l_315_i1 = 0; l_315_i1 < 6; l_315_i1++) {
                    for (l_315_i2 = 0; l_315_i2 < 1; l_315_i2++) {
                        result += l_315[l_315_i0][l_315_i1][l_315_i2];
                    }
                }
            }
            int l_316_i0, l_316_i1, l_316_i2;
            for (l_316_i0 = 0; l_316_i0 < 1; l_316_i0++) {
                for (l_316_i1 = 0; l_316_i1 < 8; l_316_i1++) {
                    for (l_316_i2 = 0; l_316_i2 < 9; l_316_i2++) {
                        result += l_316[l_316_i0][l_316_i1][l_316_i2];
                    }
                }
            }
            result += l_317;
            result += l_318;
            atomic_add(&p_792->g_special_values[19 * get_linear_group_id() + 15], result);
        }
        else
        { /* block id: 162 */
            (1 + 1);
        }
    }
    else
    { /* block id: 165 */
        uint64_t l_340[1][10][4] = {{{0x15FBFECCAF806E90L,0x49770B23B8406B6DL,0x15FBFECCAF806E90L,0x15FBFECCAF806E90L},{0x15FBFECCAF806E90L,0x49770B23B8406B6DL,0x15FBFECCAF806E90L,0x15FBFECCAF806E90L},{0x15FBFECCAF806E90L,0x49770B23B8406B6DL,0x15FBFECCAF806E90L,0x15FBFECCAF806E90L},{0x15FBFECCAF806E90L,0x49770B23B8406B6DL,0x15FBFECCAF806E90L,0x15FBFECCAF806E90L},{0x15FBFECCAF806E90L,0x49770B23B8406B6DL,0x15FBFECCAF806E90L,0x15FBFECCAF806E90L},{0x15FBFECCAF806E90L,0x49770B23B8406B6DL,0x15FBFECCAF806E90L,0x15FBFECCAF806E90L},{0x15FBFECCAF806E90L,0x49770B23B8406B6DL,0x15FBFECCAF806E90L,0x15FBFECCAF806E90L},{0x15FBFECCAF806E90L,0x49770B23B8406B6DL,0x15FBFECCAF806E90L,0x15FBFECCAF806E90L},{0x15FBFECCAF806E90L,0x49770B23B8406B6DL,0x15FBFECCAF806E90L,0x15FBFECCAF806E90L},{0x15FBFECCAF806E90L,0x49770B23B8406B6DL,0x15FBFECCAF806E90L,0x15FBFECCAF806E90L}}};
        int32_t l_348 = 0x4A81C343L;
        int8_t *l_382[5];
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_382[i] = &p_792->g_273[5];
        for (p_792->g_197.f1 = 0; (p_792->g_197.f1 <= 2); p_792->g_197.f1 += 1)
        { /* block id: 168 */
            int32_t *l_339[2][7][1] = {{{&l_283[8][4]},{&l_283[8][4]},{&l_283[8][4]},{&l_283[8][4]},{&l_283[8][4]},{&l_283[8][4]},{&l_283[8][4]}},{{&l_283[8][4]},{&l_283[8][4]},{&l_283[8][4]},{&l_283[8][4]},{&l_283[8][4]},{&l_283[8][4]},{&l_283[8][4]}}};
            int64_t *l_341 = &p_792->g_271;
            uint8_t *l_346 = &p_792->g_45;
            int i, j, k;
            l_276 = ((safe_mod_func_uint64_t_u_u(0x6638F292811CBD22L, (p_792->g_87[p_792->g_197.f1] & ((((((p_6 <= ((((safe_sub_func_uint32_t_u_u(4294967295UL, (l_340[0][9][0] &= (-7L)))) , p_792->g_273[7]) | (l_341 != (void*)0)) > (((safe_lshift_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s((((*l_346) &= 0x86L) , 65532UL), p_792->g_86[4][7][1])), FAKE_DIVERGE(p_792->local_2_offset, get_local_id(2), 10))) <= p_6) != 0x4AL))) , l_269) != (void*)0) == 0x79498F9A72F8E175L) < l_347) , p_6)))) != l_348);
            if (l_349)
                continue;
            for (p_792->g_152 = 0; (p_792->g_152 <= 0); p_792->g_152 += 1)
            { /* block id: 175 */
                int8_t l_358[9] = {0x31L,0x40L,0x31L,0x31L,0x40L,0x31L,0x31L,0x40L,0x31L};
                int32_t l_360 = 2L;
                int i;
                if (p_6)
                    break;
                l_276 ^= ((safe_sub_func_int32_t_s_s(((p_7 > (*p_792->g_179)) ^ (((((safe_rshift_func_uint16_t_u_s(((safe_div_func_int16_t_s_s(((&p_792->g_60 == &l_339[1][2][0]) , ((p_792->g_153 || ((l_360 ^= (((((safe_mul_func_int8_t_s_s(((*l_269) = p_792->g_2), l_358[4])) || 0x7A0B05DAL) & ((p_792->g_359 = (p_792->g_197 , (void*)0)) == &l_340[0][9][0])) <= p_7) || p_7)) <= 0UL)) || p_792->g_197.f1)), 2L)) , p_6), 8)) == p_7) < 65531UL) & 1UL) , GROUP_DIVERGE(1, 1))), p_792->g_273[0])) == 0x0002CDC3L);
                for (p_792->g_117 = 0; (p_792->g_117 <= 2); p_792->g_117 += 1)
                { /* block id: 183 */
                    int32_t *l_361 = &l_283[9][5];
                    for (p_792->g_63 = 0; (p_792->g_63 >= 0); p_792->g_63 -= 1)
                    { /* block id: 186 */
                        return &p_792->g_63;
                    }
                    for (p_792->g_243 = 0; (p_792->g_243 <= 2); p_792->g_243 += 1)
                    { /* block id: 191 */
                        uint32_t *l_371 = &p_792->g_153;
                        int i, j, k;
                        (*p_792->g_119) = func_13(p_792->g_86[(p_792->g_117 + 4)][(p_792->g_117 + 5)][p_792->g_197.f1], l_339[0][1][0], &l_270, ((((((((safe_sub_func_int16_t_s_s((safe_sub_func_int32_t_s_s((safe_mod_func_uint64_t_u_u(((safe_unary_minus_func_int64_t_s(0L)) || ((*l_346) |= (safe_sub_func_uint8_t_u_u(p_792->g_273[(p_792->g_243 + 3)], (p_792->g_273[p_792->g_243] != ((*l_371)++)))))), 18446744073709551615UL)), 0x0911154BL)), p_792->g_273[(p_792->g_152 + 2)])) == 0x40F7L) >= p_792->g_273[(p_792->g_152 + 2)]) <= FAKE_DIVERGE(p_792->global_0_offset, get_global_id(0), 10)) , p_7) <= (-5L)) != p_6) <= l_358[4]), p_6, p_792);
                    }
                }
            }
            if (p_8)
                break;
            for (p_792->g_45 = 0; (p_792->g_45 <= 2); p_792->g_45 += 1)
            { /* block id: 201 */
                int8_t **l_380 = (void*)0;
                int8_t **l_381 = (void*)0;
                uint8_t **l_385 = &l_346;
                int32_t *l_386[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int i;
                l_348 = (safe_div_func_uint8_t_u_u((*p_792->g_179), (safe_add_func_uint32_t_u_u(((l_382[4] = ((safe_lshift_func_int16_t_s_u((-4L), 7)) , l_269)) != ((p_792->g_271 >= ((safe_mul_func_uint16_t_u_u(((void*)0 != l_385), p_6)) <= p_8)) , l_346)), 0x644F2DE5L))));
                return l_386[5];
            }
        }
    }
    l_283[0][0] = (l_387 != (*p_792->g_118));
    return l_390;
}


/* ------------------------------------------ */
/* 
 * reads : p_792->g_251 p_792->g_243 p_792->g_2 p_792->g_56
 * writes: p_792->g_243
 */
int32_t  func_9(uint64_t  p_10, int32_t * p_11, struct S2 * p_792)
{ /* block id: 94 */
    uint64_t l_252 = 18446744073709551615UL;
    int32_t l_253 = 0x77840E07L;
    l_253 |= (+((p_792->g_251 , (-1L)) , l_252));
    for (p_792->g_243 = 17; (p_792->g_243 < 24); p_792->g_243 = safe_add_func_uint32_t_u_u(p_792->g_243, 1))
    { /* block id: 98 */
        uint8_t ***l_256 = (void*)0;
        uint8_t *l_259 = &p_792->g_45;
        uint8_t **l_258 = &l_259;
        uint8_t ***l_257 = &l_258;
        if ((*p_11))
            break;
        (*l_257) = (void*)0;
    }
    return p_792->g_56;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_13(int64_t  p_14, int32_t * p_15, int32_t * p_16, int32_t  p_17, uint32_t  p_18, struct S2 * p_792)
{ /* block id: 92 */
    return p_15;
}


/* ------------------------------------------ */
/* 
 * reads : p_792->g_2
 * writes:
 */
uint8_t  func_19(uint32_t  p_20, int32_t * p_21, struct S2 * p_792)
{ /* block id: 8 */
    uint64_t l_23 = 5UL;
    l_23 ^= p_792->g_2;
    return p_20;
}


/* ------------------------------------------ */
/* 
 * reads : p_792->g_63 p_792->g_217 p_792->g_176 p_792->g_177 p_792->g_153 p_792->g_94 p_792->g_243 p_792->g_2 p_792->g_87 p_792->g_117 p_792->g_211 p_792->g_86 p_792->g_197.f0 p_792->g_246
 * writes: p_792->g_63 p_792->g_94 p_792->g_243 p_792->g_197.f0
 */
union U0  func_24(int32_t * p_25, uint32_t  p_26, int32_t * p_27, struct S2 * p_792)
{ /* block id: 76 */
    int64_t l_207 = 0x72B5DE02C90DCB88L;
    int32_t l_208[5] = {0x143DF592L,0x143DF592L,0x143DF592L,0x143DF592L,0x143DF592L};
    uint16_t l_213[1][7] = {{0x1FF6L,65526UL,0x1FF6L,0x1FF6L,65526UL,0x1FF6L,0x1FF6L}};
    int8_t l_216 = (-2L);
    int8_t *l_222 = &l_216;
    int64_t l_223 = 0x7B7C800197DB5B27L;
    int32_t **l_232 = &p_792->g_60;
    int32_t **l_233 = &p_792->g_60;
    int32_t **l_234[3][3][5] = {{{&p_792->g_60,&p_792->g_60,&p_792->g_60,&p_792->g_60,&p_792->g_60},{&p_792->g_60,&p_792->g_60,&p_792->g_60,&p_792->g_60,&p_792->g_60},{&p_792->g_60,&p_792->g_60,&p_792->g_60,&p_792->g_60,&p_792->g_60}},{{&p_792->g_60,&p_792->g_60,&p_792->g_60,&p_792->g_60,&p_792->g_60},{&p_792->g_60,&p_792->g_60,&p_792->g_60,&p_792->g_60,&p_792->g_60},{&p_792->g_60,&p_792->g_60,&p_792->g_60,&p_792->g_60,&p_792->g_60}},{{&p_792->g_60,&p_792->g_60,&p_792->g_60,&p_792->g_60,&p_792->g_60},{&p_792->g_60,&p_792->g_60,&p_792->g_60,&p_792->g_60,&p_792->g_60},{&p_792->g_60,&p_792->g_60,&p_792->g_60,&p_792->g_60,&p_792->g_60}}};
    uint64_t *l_241[5][9] = {{&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1]},{&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1]},{&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1]},{&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1]},{&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1],&p_792->g_94[1]}};
    uint16_t *l_242 = &p_792->g_243;
    int32_t l_244 = 0L;
    union U1 **l_245 = &p_792->g_199;
    int i, j, k;
    for (p_792->g_63 = (-10); (p_792->g_63 != 24); p_792->g_63 = safe_add_func_int8_t_s_s(p_792->g_63, 6))
    { /* block id: 79 */
        int32_t *l_203 = (void*)0;
        int32_t *l_204 = (void*)0;
        int32_t *l_205 = (void*)0;
        int32_t *l_206[4][10][1] = {{{&p_792->g_197.f0},{&p_792->g_197.f0},{&p_792->g_197.f0},{&p_792->g_197.f0},{&p_792->g_197.f0},{&p_792->g_197.f0},{&p_792->g_197.f0},{&p_792->g_197.f0},{&p_792->g_197.f0},{&p_792->g_197.f0}},{{&p_792->g_197.f0},{&p_792->g_197.f0},{&p_792->g_197.f0},{&p_792->g_197.f0},{&p_792->g_197.f0},{&p_792->g_197.f0},{&p_792->g_197.f0},{&p_792->g_197.f0},{&p_792->g_197.f0},{&p_792->g_197.f0}},{{&p_792->g_197.f0},{&p_792->g_197.f0},{&p_792->g_197.f0},{&p_792->g_197.f0},{&p_792->g_197.f0},{&p_792->g_197.f0},{&p_792->g_197.f0},{&p_792->g_197.f0},{&p_792->g_197.f0},{&p_792->g_197.f0}},{{&p_792->g_197.f0},{&p_792->g_197.f0},{&p_792->g_197.f0},{&p_792->g_197.f0},{&p_792->g_197.f0},{&p_792->g_197.f0},{&p_792->g_197.f0},{&p_792->g_197.f0},{&p_792->g_197.f0},{&p_792->g_197.f0}}};
        int16_t l_209 = (-1L);
        int32_t l_210 = 0x0B2242C1L;
        int i, j, k;
        ++l_213[0][3];
        if (l_216)
            continue;
        return p_792->g_217;
    }
    p_792->g_197.f0 ^= (safe_sub_func_uint32_t_u_u(((safe_mul_func_int8_t_s_s(((((((*l_222) ^= l_208[1]) == (l_223 >= (safe_lshift_func_int8_t_s_s((((safe_mod_func_int32_t_s_s((((safe_div_func_uint8_t_u_u(0x16L, (((((1UL > l_213[0][3]) <= ((l_213[0][5] < (((safe_div_func_uint16_t_u_u((*p_792->g_176), (((p_25 = &l_208[2]) != (((safe_div_func_uint16_t_u_u(((*l_242) &= (((p_792->g_94[9] = (safe_mul_func_int16_t_s_s(((safe_mod_func_int64_t_s_s(p_26, p_792->g_63)) & p_26), p_792->g_153))) || p_792->g_94[9]) , p_26)), p_792->g_2)) <= l_244) , p_27)) && (-2L)))) && p_792->g_87[3]) == p_792->g_117)) != p_26)) , p_26) != p_792->g_211) , 0x31L))) , (void*)0) == l_245), p_792->g_86[4][7][1])) ^ (-1L)) != p_26), p_26)))) && (*p_792->g_176)) == p_792->g_86[4][7][1]) > p_26), 0xECL)) <= 0UL), 0x0563B06DL));
    (*p_25) = (-1L);
    return p_792->g_246;
}


/* ------------------------------------------ */
/* 
 * reads : p_792->g_2 p_792->g_45 p_792->g_56 p_792->g_59 p_792->g_63 p_792->g_93 p_792->g_86 p_792->g_94 p_792->g_117 p_792->g_118 p_792->g_133 p_792->g_140 p_792->g_148 p_792->g_152 p_792->g_153 p_792->g_87 p_792->g_172 p_792->g_174 p_792->g_175 p_792->g_176 p_792->g_178 p_792->g_119 p_792->g_60 p_792->g_179 p_792->g_198
 * writes: p_792->g_56 p_792->g_60 p_792->g_63 p_792->g_117 p_792->g_45 p_792->g_119 p_792->g_140 p_792->g_148 p_792->g_152 p_792->g_153 p_792->g_172 p_792->g_174 p_792->g_86 p_792->g_199
 */
int16_t  func_28(int32_t * p_29, int32_t * p_30, int32_t * p_31, int64_t  p_32, uint64_t  p_33, struct S2 * p_792)
{ /* block id: 11 */
    uint8_t *l_44[10][2][8] = {{{&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,(void*)0,&p_792->g_45},{&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,(void*)0,&p_792->g_45}},{{&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,(void*)0,&p_792->g_45},{&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,(void*)0,&p_792->g_45}},{{&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,(void*)0,&p_792->g_45},{&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,(void*)0,&p_792->g_45}},{{&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,(void*)0,&p_792->g_45},{&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,(void*)0,&p_792->g_45}},{{&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,(void*)0,&p_792->g_45},{&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,(void*)0,&p_792->g_45}},{{&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,(void*)0,&p_792->g_45},{&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,(void*)0,&p_792->g_45}},{{&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,(void*)0,&p_792->g_45},{&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,(void*)0,&p_792->g_45}},{{&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,(void*)0,&p_792->g_45},{&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,(void*)0,&p_792->g_45}},{{&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,(void*)0,&p_792->g_45},{&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,(void*)0,&p_792->g_45}},{{&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,(void*)0,&p_792->g_45},{&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,&p_792->g_45,(void*)0,&p_792->g_45}}};
    int32_t l_46 = 0x68EA4716L;
    uint8_t **l_55 = &l_44[8][0][1];
    int8_t l_57 = 0x26L;
    uint64_t *l_58 = (void*)0;
    int32_t *l_61 = &l_46;
    union U1 *l_196 = &p_792->g_197;
    int i, j, k;
    l_61 = func_35((safe_add_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((safe_sub_func_int16_t_s_s(p_792->g_2, (&p_792->g_2 != (void*)0))), (((((0x47L < (l_46 = p_32)) || ((*l_61) = func_47(p_792->g_45, ((p_32 & ((((l_46 = ((func_50(((*l_55) = (void*)0), (((((p_792->g_56 &= p_792->g_2) == p_33) , p_33) & 0L) < p_792->g_45), l_57, p_792->g_2, p_792) == p_792->g_2) <= p_32)) & p_792->g_45) > (-9L)) , 0xAB81L)) <= p_792->g_2), p_792))) , p_792->g_2) , (*l_61)) >= p_33))), p_792->g_2)), p_32, p_792);
    (*p_792->g_119) = &l_46;
    (*p_792->g_198) = l_196;
    return p_33;
}


/* ------------------------------------------ */
/* 
 * reads : p_792->g_63 p_792->g_93 p_792->g_2 p_792->g_86 p_792->g_94 p_792->g_45 p_792->g_56 p_792->g_117 p_792->g_118 p_792->g_133 p_792->g_140 p_792->g_148 p_792->g_152 p_792->g_153 p_792->g_87 p_792->g_172 p_792->g_174 p_792->g_175 p_792->g_176 p_792->g_178 p_792->g_119 p_792->g_60 p_792->g_179 l_650
 * writes: p_792->g_63 p_792->g_117 p_792->g_45 p_792->g_119 p_792->g_140 p_792->g_148 p_792->g_152 p_792->g_153 p_792->g_172 p_792->g_174 p_792->g_86 p_792->g_60
 */
int32_t * func_35(uint32_t  p_36, int64_t  p_37, struct S2 * p_792)
{ /* block id: 22 */
    int32_t *l_62 = &p_792->g_63;
    int32_t *l_64 = &p_792->g_63;
    int32_t *l_65 = &p_792->g_63;
    int32_t *l_66 = &p_792->g_63;
    int32_t *l_67 = &p_792->g_63;
    int32_t *l_68 = (void*)0;
    int32_t *l_69 = &p_792->g_63;
    int32_t *l_70 = &p_792->g_63;
    int32_t *l_71 = &p_792->g_63;
    int32_t *l_72 = &p_792->g_63;
    int32_t *l_73 = &p_792->g_63;
    int32_t *l_74 = &p_792->g_63;
    int32_t *l_75 = &p_792->g_63;
    int32_t *l_76 = &p_792->g_63;
    int32_t *l_77 = &p_792->g_63;
    int32_t *l_78 = &p_792->g_63;
    int32_t *l_79 = &p_792->g_63;
    int32_t *l_80 = &p_792->g_63;
    int32_t *l_81 = &p_792->g_63;
    int32_t *l_82 = &p_792->g_63;
    int32_t *l_83 = (void*)0;
    int32_t *l_84 = &p_792->g_63;
    int32_t *l_85[5] = {&p_792->g_63,&p_792->g_63,&p_792->g_63,&p_792->g_63,&p_792->g_63};
    uint8_t l_88 = 247UL;
    uint16_t l_105 = 0x09EFL;
    int32_t ***l_139 = &p_792->g_119;
    uint8_t *l_170 = &p_792->g_45;
    uint8_t **l_169 = &l_170;
    int32_t l_193 = (-3L);
    int i;
    l_88--;
    for (p_792->g_63 = 2; (p_792->g_63 >= 0); p_792->g_63 -= 1)
    { /* block id: 26 */
        uint8_t l_114 = 0xABL;
        int32_t l_116 = 7L;
        int32_t *l_120 = &p_792->g_86[4][1][1];
        uint32_t l_138 = 0x926641FEL;
        uint16_t *l_146[3];
        int32_t l_147 = 0L;
        int16_t *l_151 = &p_792->g_152;
        int32_t **l_168 = &l_76;
        int64_t *l_171 = &p_792->g_172;
        int16_t *l_173[5] = {&p_792->g_174,&p_792->g_174,&p_792->g_174,&p_792->g_174,&p_792->g_174};
        int i;
        for (i = 0; i < 3; i++)
            l_146[i] = &l_105;
        for (l_88 = 0; (l_88 <= 2); l_88 += 1)
        { /* block id: 29 */
            uint16_t *l_115 = &l_105;
            int32_t ***l_123 = &p_792->g_119;
            uint8_t *l_137 = (void*)0;
            uint8_t **l_136 = &l_137;
            int i;
            l_85[l_88] = l_85[(p_792->g_63 + 2)];
            p_792->g_117 &= (safe_div_func_uint32_t_u_u((p_792->g_93 != &p_792->g_94[2]), (safe_mul_func_uint16_t_u_u((safe_div_func_int32_t_s_s((((safe_lshift_func_int16_t_s_u(p_792->g_2, ((*l_115) = ((l_76 == l_82) < (safe_mul_func_int8_t_s_s(((safe_sub_func_int64_t_s_s((l_105 ^ p_792->g_86[7][1][2]), ((safe_mul_func_int8_t_s_s(0x70L, (safe_sub_func_int16_t_s_s((safe_add_func_uint64_t_u_u((safe_sub_func_uint64_t_u_u(6UL, p_792->g_2)), p_792->g_94[9])), 0xA512L)))) >= p_792->g_45))) , l_114), p_792->g_94[1])))))) != p_36) < p_37), l_116)), p_792->g_56))));
            for (p_792->g_45 = 0; (p_792->g_45 <= 2); p_792->g_45 += 1)
            { /* block id: 35 */
                uint8_t *l_129[4][9];
                uint8_t **l_128 = &l_129[2][3];
                uint8_t ***l_130 = &l_128;
                int i, j, k;
                for (i = 0; i < 4; i++)
                {
                    for (j = 0; j < 9; j++)
                        l_129[i][j] = (void*)0;
                }
                (*p_792->g_118) = &p_792->g_60;
                l_85[p_792->g_45] = l_120;
                p_792->g_140 |= (((safe_mod_func_uint8_t_u_u(p_36, p_37)) , ((l_123 != ((safe_add_func_int32_t_s_s(((safe_sub_func_int32_t_s_s(((p_37 > (((*l_130) = l_128) != ((safe_mod_func_uint32_t_u_u((p_792->g_133 , (p_792->g_45 , ((((safe_add_func_uint8_t_u_u((*l_120), (((p_36 < GROUP_DIVERGE(1, 1)) != p_37) >= p_792->g_117))) ^ 0x93CC16ADBBA81456L) == 0x0599L) , 0xBDFF3717L))), p_36)) , l_136))) , (-4L)), (*l_73))) == l_138), 0x566935DDL)) , l_139)) != 0xCA78L)) , p_36);
            }
        }
        (*l_120) = (((((safe_unary_minus_func_int16_t_s((safe_mul_func_uint8_t_u_u(((p_792->g_153 ^= (safe_rshift_func_uint16_t_u_s((--p_792->g_148), ((*l_151) ^= p_36)))) > ((((((p_792->g_174 &= ((safe_lshift_func_int16_t_s_s((*l_73), 4)) == ((((*l_171) ^= ((((((safe_mul_func_int16_t_s_s(6L, (((safe_mod_func_int32_t_s_s((p_37 && ((safe_mul_func_int16_t_s_s(0x35E8L, (safe_mul_func_uint8_t_u_u((safe_mod_func_int8_t_s_s(p_36, ((safe_add_func_uint16_t_u_u(p_792->g_87[3], ((((*l_139) = &p_792->g_60) != (l_168 = &p_792->g_60)) & 0x4FA680EF530D896AL))) , FAKE_DIVERGE(p_792->local_0_offset, get_local_id(0), 10)))), (*l_120))))) & p_37)), p_792->g_56)) || GROUP_DIVERGE(2, 1)) ^ p_37))) , l_169) == (void*)0) <= (*l_80)) > (-5L)) >= FAKE_DIVERGE(p_792->global_0_offset, get_global_id(0), 10))) ^ (*l_120)) | (*l_78)))) , p_792->g_175[0][4][3]) , p_792->g_86[6][0][2]) , p_792->g_176) != l_146[1]) < (*l_71))), p_792->g_86[0][6][0])))) != 0L) , p_792->g_178) == &l_170) , p_37);
    }
    (**l_139) = (*p_792->g_119);
    for (p_792->g_152 = 0; (p_792->g_152 >= (-3)); p_792->g_152--)
    { /* block id: 54 */
        int64_t l_189 = (-6L);
        int32_t **l_192 = &p_792->g_60;
        for (p_792->g_45 = 0; (p_792->g_45 <= 5); p_792->g_45 += 1)
        { /* block id: 57 */
            (*l_67) = (((((void*)0 != (*p_792->g_178)) , ((((safe_lshift_func_uint16_t_u_u((p_36 , (+(safe_add_func_int64_t_s_s((~(safe_mod_func_uint64_t_u_u(p_36, (*p_792->g_93)))), (l_189 & ((safe_sub_func_int64_t_s_s((&p_792->g_60 == l_192), (4UL != (**l_192)))) , p_36)))))), (**l_192))) <= p_792->g_86[5][6][2]) & p_36) >= p_792->g_56)) <= 1L) & p_792->g_94[9]);
            (*p_792->g_119) = (*l_192);
        }
        l_193 ^= ((*l_75) = (*p_792->g_60));
        for (l_189 = (-27); (l_189 < 8); l_189 = safe_add_func_int8_t_s_s(l_189, 5))
        { /* block id: 65 */
            return (**l_139);
        }
        if ((**p_792->g_119))
            continue;
    }
    return (*p_792->g_119);
}


/* ------------------------------------------ */
/* 
 * reads : p_792->g_59
 * writes: p_792->g_60
 */
int32_t  func_47(int16_t  p_48, int32_t  p_49, struct S2 * p_792)
{ /* block id: 18 */
    (*p_792->g_59) = &p_792->g_2;
    return p_49;
}


/* ------------------------------------------ */
/* 
 * reads : p_792->g_2
 * writes:
 */
int16_t  func_50(uint8_t * p_51, int64_t  p_52, int64_t  p_53, int64_t  p_54, struct S2 * p_792)
{ /* block id: 15 */
    return p_792->g_2;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[19];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 19; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[19];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 19; i++)
            l_special_values[i] = 0;
    struct S2 c_793;
    struct S2* p_792 = &c_793;
    struct S2 c_794 = {
        0x772304B2L, // p_792->g_2
        0UL, // p_792->g_45
        0x07L, // p_792->g_56
        &p_792->g_2, // p_792->g_60
        &p_792->g_60, // p_792->g_59
        0x3153D579L, // p_792->g_63
        {{{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L}},{{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L}},{{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L}},{{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L}},{{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L}},{{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L}},{{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L}},{{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L}}}, // p_792->g_86
        {0x3A83E1A6L,0x3A83E1A6L,0x3A83E1A6L,0x3A83E1A6L,0x3A83E1A6L,0x3A83E1A6L}, // p_792->g_87
        {0xED53B0E2D30B1440L,18446744073709551609UL,0xED53B0E2D30B1440L,0xED53B0E2D30B1440L,18446744073709551609UL,0xED53B0E2D30B1440L,0xED53B0E2D30B1440L,18446744073709551609UL,0xED53B0E2D30B1440L,0xED53B0E2D30B1440L}, // p_792->g_94
        &p_792->g_94[9], // p_792->g_93
        18446744073709551615UL, // p_792->g_117
        &p_792->g_60, // p_792->g_119
        &p_792->g_119, // p_792->g_118
        {-1L}, // p_792->g_133
        0x6D666DE7L, // p_792->g_140
        1UL, // p_792->g_148
        0x0373L, // p_792->g_152
        0x570B09EDL, // p_792->g_153
        (-7L), // p_792->g_172
        0x31A0L, // p_792->g_174
        {{{{0L},{0x40EF6844L},{-9L},{0x40EF6844L},{0L},{0L},{0x40EF6844L},{-9L}},{{0L},{0x40EF6844L},{-9L},{0x40EF6844L},{0L},{0L},{0x40EF6844L},{-9L}},{{0L},{0x40EF6844L},{-9L},{0x40EF6844L},{0L},{0L},{0x40EF6844L},{-9L}},{{0L},{0x40EF6844L},{-9L},{0x40EF6844L},{0L},{0L},{0x40EF6844L},{-9L}},{{0L},{0x40EF6844L},{-9L},{0x40EF6844L},{0L},{0L},{0x40EF6844L},{-9L}}}}, // p_792->g_175
        2UL, // p_792->g_177
        &p_792->g_177, // p_792->g_176
        255UL, // p_792->g_180
        &p_792->g_180, // p_792->g_179
        &p_792->g_179, // p_792->g_178
        {0x6F2AE6F9L}, // p_792->g_197
        &p_792->g_197, // p_792->g_199
        &p_792->g_199, // p_792->g_198
        0x50D2704C2F6CE27EL, // p_792->g_211
        0L, // p_792->g_212
        {0x46094E3DL}, // p_792->g_217
        0x2842L, // p_792->g_243
        {0L}, // p_792->g_246
        {0x2F453972L}, // p_792->g_251
        0x57E2D0E47E0C890DL, // p_792->g_271
        {0x73L,0x73L,0x73L,0x73L,0x73L,0x73L,0x73L,0x73L,0x73L}, // p_792->g_273
        &p_792->g_117, // p_792->g_359
        {0L}, // p_792->g_474
        {0L}, // p_792->g_506
        &p_792->g_199, // p_792->g_510
        &p_792->g_510, // p_792->g_509
        0x43F83C21L, // p_792->g_548
        {-1L}, // p_792->g_549
        {0L}, // p_792->g_563
        {{0x4EFF5680L,0x4EFF5680L,0x4EFF5680L,0x4EFF5680L,0x4EFF5680L,0x4EFF5680L,0x4EFF5680L},{0x4EFF5680L,0x4EFF5680L,0x4EFF5680L,0x4EFF5680L,0x4EFF5680L,0x4EFF5680L,0x4EFF5680L},{0x4EFF5680L,0x4EFF5680L,0x4EFF5680L,0x4EFF5680L,0x4EFF5680L,0x4EFF5680L,0x4EFF5680L},{0x4EFF5680L,0x4EFF5680L,0x4EFF5680L,0x4EFF5680L,0x4EFF5680L,0x4EFF5680L,0x4EFF5680L},{0x4EFF5680L,0x4EFF5680L,0x4EFF5680L,0x4EFF5680L,0x4EFF5680L,0x4EFF5680L,0x4EFF5680L},{0x4EFF5680L,0x4EFF5680L,0x4EFF5680L,0x4EFF5680L,0x4EFF5680L,0x4EFF5680L,0x4EFF5680L},{0x4EFF5680L,0x4EFF5680L,0x4EFF5680L,0x4EFF5680L,0x4EFF5680L,0x4EFF5680L,0x4EFF5680L},{0x4EFF5680L,0x4EFF5680L,0x4EFF5680L,0x4EFF5680L,0x4EFF5680L,0x4EFF5680L,0x4EFF5680L}}, // p_792->g_577
        6UL, // p_792->g_579
        (void*)0, // p_792->g_599
        &p_792->g_599, // p_792->g_598
        7L, // p_792->g_600
        &p_792->g_217, // p_792->g_603
        0x441D1E52L, // p_792->g_651
        (void*)0, // p_792->g_725
        {{{&p_792->g_725,&p_792->g_725,&p_792->g_725},{&p_792->g_725,&p_792->g_725,&p_792->g_725},{&p_792->g_725,&p_792->g_725,&p_792->g_725},{&p_792->g_725,&p_792->g_725,&p_792->g_725},{&p_792->g_725,&p_792->g_725,&p_792->g_725},{&p_792->g_725,&p_792->g_725,&p_792->g_725}}}, // p_792->g_724
        0x8B41L, // p_792->g_790
        sequence_input[get_global_id(0)], // p_792->global_0_offset
        sequence_input[get_global_id(1)], // p_792->global_1_offset
        sequence_input[get_global_id(2)], // p_792->global_2_offset
        sequence_input[get_local_id(0)], // p_792->local_0_offset
        sequence_input[get_local_id(1)], // p_792->local_1_offset
        sequence_input[get_local_id(2)], // p_792->local_2_offset
        sequence_input[get_group_id(0)], // p_792->group_0_offset
        sequence_input[get_group_id(1)], // p_792->group_1_offset
        sequence_input[get_group_id(2)], // p_792->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_793 = c_794;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_792);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_792->g_2, "p_792->g_2", print_hash_value);
    transparent_crc(p_792->g_45, "p_792->g_45", print_hash_value);
    transparent_crc(p_792->g_56, "p_792->g_56", print_hash_value);
    transparent_crc(p_792->g_63, "p_792->g_63", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_792->g_86[i][j][k], "p_792->g_86[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_792->g_87[i], "p_792->g_87[i]", print_hash_value);

    }
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_792->g_94[i], "p_792->g_94[i]", print_hash_value);

    }
    transparent_crc(p_792->g_117, "p_792->g_117", print_hash_value);
    transparent_crc(p_792->g_133.f0, "p_792->g_133.f0", print_hash_value);
    transparent_crc(p_792->g_140, "p_792->g_140", print_hash_value);
    transparent_crc(p_792->g_148, "p_792->g_148", print_hash_value);
    transparent_crc(p_792->g_152, "p_792->g_152", print_hash_value);
    transparent_crc(p_792->g_153, "p_792->g_153", print_hash_value);
    transparent_crc(p_792->g_172, "p_792->g_172", print_hash_value);
    transparent_crc(p_792->g_174, "p_792->g_174", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_792->g_175[i][j][k].f0, "p_792->g_175[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_792->g_177, "p_792->g_177", print_hash_value);
    transparent_crc(p_792->g_180, "p_792->g_180", print_hash_value);
    transparent_crc(p_792->g_197.f0, "p_792->g_197.f0", print_hash_value);
    transparent_crc(p_792->g_211, "p_792->g_211", print_hash_value);
    transparent_crc(p_792->g_212, "p_792->g_212", print_hash_value);
    transparent_crc(p_792->g_217.f0, "p_792->g_217.f0", print_hash_value);
    transparent_crc(p_792->g_243, "p_792->g_243", print_hash_value);
    transparent_crc(p_792->g_246.f0, "p_792->g_246.f0", print_hash_value);
    transparent_crc(p_792->g_251.f0, "p_792->g_251.f0", print_hash_value);
    transparent_crc(p_792->g_271, "p_792->g_271", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_792->g_273[i], "p_792->g_273[i]", print_hash_value);

    }
    transparent_crc(p_792->g_474.f0, "p_792->g_474.f0", print_hash_value);
    transparent_crc(p_792->g_506.f0, "p_792->g_506.f0", print_hash_value);
    transparent_crc(p_792->g_548, "p_792->g_548", print_hash_value);
    transparent_crc(p_792->g_549.f0, "p_792->g_549.f0", print_hash_value);
    transparent_crc(p_792->g_563.f0, "p_792->g_563.f0", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_792->g_577[i][j], "p_792->g_577[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_792->g_579, "p_792->g_579", print_hash_value);
    transparent_crc(p_792->g_600, "p_792->g_600", print_hash_value);
    transparent_crc(p_792->g_651, "p_792->g_651", print_hash_value);
    transparent_crc(p_792->g_790, "p_792->g_790", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 19; i++)
            transparent_crc(p_792->g_special_values[i + 19 * get_linear_group_id()], "p_792->g_special_values[i + 19 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 19; i++)
            transparent_crc(p_792->l_special_values[i], "p_792->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
