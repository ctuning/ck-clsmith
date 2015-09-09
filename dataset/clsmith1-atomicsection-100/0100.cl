// --atomics 17 ---fake_divergence -g 89,83,1 -l 89,1,1
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


// Seed: 100

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint32_t  f0;
};

struct S2 {
   int64_t  f0;
   volatile uint32_t  f1;
   struct S0  f2;
   uint64_t  f3;
};

union U3 {
   int8_t * volatile  f0;
   int8_t * f1;
};

struct S4 {
    int8_t g_6;
    int8_t *g_5;
    int8_t *g_21;
    int32_t g_25;
    int32_t *g_31;
    int32_t ** volatile g_30;
    int32_t ** volatile * volatile g_32[2];
    int32_t ** volatile * volatile g_33;
    uint64_t g_35;
    int8_t g_36;
    union U3 g_57[3][6];
    struct S0 g_73;
    struct S0 g_75;
    uint16_t g_82;
    int32_t ***g_119[9];
    volatile int32_t g_129;
    volatile int32_t *g_128;
    volatile int32_t * volatile *g_127;
    volatile int32_t * volatile **g_126;
    volatile int32_t * volatile ***g_125[5][3];
    struct S0 *g_144;
    struct S0 ** volatile g_143[9][7];
    struct S0 ** volatile *g_142;
    int64_t g_148;
    int64_t g_150;
    uint32_t g_174;
    uint8_t g_175[9][8];
    int32_t g_178[2];
    uint16_t g_179[8][3];
    struct S2 g_196;
    uint8_t g_225[10][4][4];
    int16_t g_235;
    int8_t g_264;
    int32_t ** volatile g_265;
    struct S2 g_271;
    struct S2 * volatile g_272;
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
uint8_t  func_1(struct S4 * p_300);
int32_t  func_2(int8_t * p_3, int32_t  p_4, struct S4 * p_300);
uint8_t  func_14(uint64_t  p_15, uint64_t  p_16, int8_t * p_17, struct S4 * p_300);
struct S2  func_39(int32_t *** p_40, uint64_t  p_41, int8_t ** p_42, struct S4 * p_300);
int32_t *** func_43(uint8_t * p_44, uint8_t * p_45, struct S4 * p_300);
uint8_t * func_46(uint8_t  p_47, uint8_t * p_48, uint64_t  p_49, struct S4 * p_300);
uint32_t  func_58(uint64_t  p_59, uint8_t  p_60, int64_t  p_61, struct S4 * p_300);
uint8_t  func_64(int32_t  p_65, struct S4 * p_300);
int32_t  func_66(int16_t  p_67, uint8_t * p_68, int8_t ** p_69, struct S4 * p_300);
int32_t * func_101(int32_t  p_102, struct S0 ** p_103, struct S0 * p_104, struct S0  p_105, uint32_t  p_106, struct S4 * p_300);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_300->g_5 p_300->g_6 p_300->g_30 p_300->g_33 p_300->g_36 p_300->g_31 p_300->g_25 p_300->g_225
 * writes: p_300->g_21 p_300->g_30 p_300->g_35 p_300->g_25
 */
uint8_t  func_1(struct S4 * p_300)
{ /* block id: 4 */
    int8_t *l_11[10];
    uint8_t l_18 = 0x96L;
    int8_t *l_20 = &p_300->g_6;
    int8_t **l_19[3];
    uint8_t *l_34[9] = {&l_18,(void*)0,&l_18,&l_18,(void*)0,&l_18,&l_18,(void*)0,&l_18};
    int32_t l_299 = 0x2AD20E9BL;
    int i;
    for (i = 0; i < 10; i++)
        l_11[i] = &p_300->g_6;
    for (i = 0; i < 3; i++)
        l_19[i] = &l_20;
    l_299 ^= func_2(p_300->g_5, ((*p_300->g_31) = (safe_add_func_int16_t_s_s(((safe_mul_func_int16_t_s_s(p_300->g_6, p_300->g_6)) > ((void*)0 == l_11[1])), (safe_mul_func_uint8_t_u_u((p_300->g_35 = func_14(p_300->g_6, l_18, (p_300->g_21 = &p_300->g_6), p_300)), p_300->g_36))))), p_300);
    return p_300->g_225[6][2][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_300->g_33 p_300->g_30 p_300->g_31 p_300->g_25
 * writes:
 */
int32_t  func_2(int8_t * p_3, int32_t  p_4, struct S4 * p_300)
{ /* block id: 22 */
    int32_t l_87 = 0x3FC8A300L;
    uint16_t l_245 = 0UL;
    int32_t l_281 = 0x7CF1142FL;
    int32_t l_294 = 0L;
    int32_t l_295[7][2] = {{0x7A9A2799L,0x7A9A2799L},{0x7A9A2799L,0x7A9A2799L},{0x7A9A2799L,0x7A9A2799L},{0x7A9A2799L,0x7A9A2799L},{0x7A9A2799L,0x7A9A2799L},{0x7A9A2799L,0x7A9A2799L},{0x7A9A2799L,0x7A9A2799L}};
    uint64_t l_296 = 1UL;
    int i, j;
    for (p_4 = 10; (p_4 == (-1)); p_4 = safe_sub_func_int8_t_s_s(p_4, 6))
    { /* block id: 25 */
        uint32_t l_52 = 0xE0AEE481L;
        uint8_t *l_267 = (void*)0;
        uint8_t **l_266 = &l_267;
        int32_t ****l_268 = &p_300->g_119[0];
        int8_t **l_269 = &p_300->g_5;
        int32_t *l_273 = &l_87;
        int32_t *l_274 = &l_87;
        int32_t *l_275 = &l_87;
        int32_t *l_276 = &p_300->g_25;
        int32_t l_277 = 0x60C3F74CL;
        int32_t *l_278 = &l_87;
        int32_t *l_279 = &l_277;
        int32_t *l_280 = &p_300->g_25;
        int32_t *l_282 = (void*)0;
        int32_t *l_283 = &l_281;
        int32_t *l_284 = &p_300->g_25;
        int32_t *l_285 = (void*)0;
        int32_t *l_286 = &p_300->g_25;
        int32_t *l_287 = &p_300->g_25;
        int32_t *l_288 = &l_281;
        int32_t *l_289 = &l_87;
        int32_t *l_290 = &l_281;
        int32_t *l_291 = &l_277;
        int32_t *l_292 = &l_87;
        int32_t *l_293[4][9] = {{&p_300->g_25,&l_87,&p_300->g_25,&p_300->g_25,&l_87,&p_300->g_25,&p_300->g_25,&l_87,&p_300->g_25},{&p_300->g_25,&l_87,&p_300->g_25,&p_300->g_25,&l_87,&p_300->g_25,&p_300->g_25,&l_87,&p_300->g_25},{&p_300->g_25,&l_87,&p_300->g_25,&p_300->g_25,&l_87,&p_300->g_25,&p_300->g_25,&l_87,&p_300->g_25},{&p_300->g_25,&l_87,&p_300->g_25,&p_300->g_25,&l_87,&p_300->g_25,&p_300->g_25,&l_87,&p_300->g_25}};
        int i, j;
        (1 + 1);
    }
    return (***p_300->g_33);
}


/* ------------------------------------------ */
/* 
 * reads : p_300->g_6 p_300->g_30 p_300->g_33
 * writes: p_300->g_30
 */
uint8_t  func_14(uint64_t  p_15, uint64_t  p_16, int8_t * p_17, struct S4 * p_300)
{ /* block id: 6 */
    uint32_t l_22[8][8] = {{4294967295UL,0x38EB16E2L,2UL,1UL,2UL,0x38EB16E2L,4294967295UL,0x04102249L},{4294967295UL,0x38EB16E2L,2UL,1UL,2UL,0x38EB16E2L,4294967295UL,0x04102249L},{4294967295UL,0x38EB16E2L,2UL,1UL,2UL,0x38EB16E2L,4294967295UL,0x04102249L},{4294967295UL,0x38EB16E2L,2UL,1UL,2UL,0x38EB16E2L,4294967295UL,0x04102249L},{4294967295UL,0x38EB16E2L,2UL,1UL,2UL,0x38EB16E2L,4294967295UL,0x04102249L},{4294967295UL,0x38EB16E2L,2UL,1UL,2UL,0x38EB16E2L,4294967295UL,0x04102249L},{4294967295UL,0x38EB16E2L,2UL,1UL,2UL,0x38EB16E2L,4294967295UL,0x04102249L},{4294967295UL,0x38EB16E2L,2UL,1UL,2UL,0x38EB16E2L,4294967295UL,0x04102249L}};
    uint32_t l_27 = 1UL;
    int i, j;
    for (p_15 = 2; (p_15 <= 7); p_15 += 1)
    { /* block id: 9 */
        uint8_t l_23 = 6UL;
        int32_t *l_24 = &p_300->g_25;
        int32_t *l_26[8] = {&p_300->g_25,&p_300->g_25,&p_300->g_25,&p_300->g_25,&p_300->g_25,&p_300->g_25,&p_300->g_25,&p_300->g_25};
        int i;
        if (l_23)
            break;
        if (p_300->g_6)
            continue;
        l_27++;
        for (l_23 = 0; (l_23 <= 7); l_23 += 1)
        { /* block id: 15 */
            (*p_300->g_33) = p_300->g_30;
        }
    }
    return l_22[5][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_300->g_271
 * writes:
 */
struct S2  func_39(int32_t *** p_40, uint64_t  p_41, int8_t ** p_42, struct S4 * p_300)
{ /* block id: 166 */
    uint32_t l_270 = 1UL;
    l_270 ^= p_41;
    return p_300->g_271;
}


/* ------------------------------------------ */
/* 
 * reads : p_300->g_119
 * writes:
 */
int32_t *** func_43(uint8_t * p_44, uint8_t * p_45, struct S4 * p_300)
{ /* block id: 163 */
    return p_300->g_119[2];
}


/* ------------------------------------------ */
/* 
 * reads : p_300->g_196.f3 p_300->g_148 p_300->g_36 p_300->g_235 p_300->g_264 p_300->g_82 p_300->g_128 p_300->g_265
 * writes: p_300->g_196.f3 p_300->g_148 p_300->g_6 p_300->g_235 p_300->g_36 p_300->g_264 p_300->g_129 p_300->g_31
 */
uint8_t * func_46(uint8_t  p_47, uint8_t * p_48, uint64_t  p_49, struct S4 * p_300)
{ /* block id: 142 */
    int32_t l_249 = 0x6E1FDABAL;
    struct S2 *l_254[1][9] = {{&p_300->g_196,&p_300->g_196,&p_300->g_196,&p_300->g_196,&p_300->g_196,&p_300->g_196,&p_300->g_196,&p_300->g_196,&p_300->g_196}};
    struct S0 l_255 = {4294967289UL};
    int8_t l_258[9][8] = {{0x1DL,0x0BL,0x44L,0x63L,(-8L),(-8L),0x63L,0x44L},{0x1DL,0x0BL,0x44L,0x63L,(-8L),(-8L),0x63L,0x44L},{0x1DL,0x0BL,0x44L,0x63L,(-8L),(-8L),0x63L,0x44L},{0x1DL,0x0BL,0x44L,0x63L,(-8L),(-8L),0x63L,0x44L},{0x1DL,0x0BL,0x44L,0x63L,(-8L),(-8L),0x63L,0x44L},{0x1DL,0x0BL,0x44L,0x63L,(-8L),(-8L),0x63L,0x44L},{0x1DL,0x0BL,0x44L,0x63L,(-8L),(-8L),0x63L,0x44L},{0x1DL,0x0BL,0x44L,0x63L,(-8L),(-8L),0x63L,0x44L},{0x1DL,0x0BL,0x44L,0x63L,(-8L),(-8L),0x63L,0x44L}};
    int32_t l_259 = 0x417C14EBL;
    int16_t *l_260 = &p_300->g_235;
    int8_t *l_261 = (void*)0;
    int8_t *l_262 = &p_300->g_36;
    int8_t *l_263[3];
    int i, j;
    for (i = 0; i < 3; i++)
        l_263[i] = &p_300->g_264;
    for (p_300->g_196.f3 = 0; (p_300->g_196.f3 <= 2); p_300->g_196.f3 += 1)
    { /* block id: 145 */
        uint8_t l_246[6] = {0x1AL,0x42L,0x1AL,0x1AL,0x42L,0x1AL};
        int i;
        for (p_300->g_148 = 2; (p_300->g_148 >= 0); p_300->g_148 -= 1)
        { /* block id: 148 */
            ++l_246[5];
        }
        if (l_249)
            break;
        return &p_300->g_225[7][1][3];
    }
    (*p_300->g_128) = (safe_rshift_func_uint8_t_u_u((safe_add_func_int8_t_s_s((p_300->g_264 &= ((*l_262) = (((l_254[0][1] == (l_249 , l_254[0][1])) < ((p_300->g_36 >= 0x171D4E75L) >= (l_255 , ((*l_260) = ((safe_div_func_uint16_t_u_u((l_259 |= l_258[1][3]), l_258[1][3])) < ((*p_48) = p_300->g_235)))))) >= 0x580B2405L))), p_300->g_82)), l_258[1][3]));
    (*p_300->g_265) = &l_259;
    return &p_300->g_175[6][4];
}


/* ------------------------------------------ */
/* 
 * reads : p_300->g_6 p_300->g_31 p_300->g_35 p_300->g_25 p_300->g_36 p_300->g_119 p_300->g_125 p_300->g_75 p_300->g_142 p_300->g_148 p_300->g_82 p_300->g_73.f0 p_300->g_144 p_300->g_174 p_300->g_179 p_300->g_175 p_300->g_21 p_300->g_196.f2.f0 p_300->g_150 p_300->g_235 p_300->g_178 p_300->g_225
 * writes: p_300->g_6 p_300->g_25 p_300->g_35 p_300->g_36 p_300->g_119 p_300->g_148 p_300->g_150 p_300->g_174 p_300->g_175 p_300->g_178 p_300->g_179 p_300->g_75 p_300->g_31 p_300->g_225
 */
uint32_t  func_58(uint64_t  p_59, uint8_t  p_60, int64_t  p_61, struct S4 * p_300)
{ /* block id: 45 */
    uint32_t l_90[7][9][4] = {{{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL}},{{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL}},{{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL}},{{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL}},{{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL}},{{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL}},{{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL},{0x8C86622CL,0xA18A5AF8L,0x9868D596L,1UL}}};
    int32_t l_131 = (-2L);
    int32_t *l_160[5][4][6] = {{{(void*)0,&l_131,&l_131,(void*)0,&l_131,(void*)0},{(void*)0,&l_131,&l_131,(void*)0,&l_131,(void*)0},{(void*)0,&l_131,&l_131,(void*)0,&l_131,(void*)0},{(void*)0,&l_131,&l_131,(void*)0,&l_131,(void*)0}},{{(void*)0,&l_131,&l_131,(void*)0,&l_131,(void*)0},{(void*)0,&l_131,&l_131,(void*)0,&l_131,(void*)0},{(void*)0,&l_131,&l_131,(void*)0,&l_131,(void*)0},{(void*)0,&l_131,&l_131,(void*)0,&l_131,(void*)0}},{{(void*)0,&l_131,&l_131,(void*)0,&l_131,(void*)0},{(void*)0,&l_131,&l_131,(void*)0,&l_131,(void*)0},{(void*)0,&l_131,&l_131,(void*)0,&l_131,(void*)0},{(void*)0,&l_131,&l_131,(void*)0,&l_131,(void*)0}},{{(void*)0,&l_131,&l_131,(void*)0,&l_131,(void*)0},{(void*)0,&l_131,&l_131,(void*)0,&l_131,(void*)0},{(void*)0,&l_131,&l_131,(void*)0,&l_131,(void*)0},{(void*)0,&l_131,&l_131,(void*)0,&l_131,(void*)0}},{{(void*)0,&l_131,&l_131,(void*)0,&l_131,(void*)0},{(void*)0,&l_131,&l_131,(void*)0,&l_131,(void*)0},{(void*)0,&l_131,&l_131,(void*)0,&l_131,(void*)0},{(void*)0,&l_131,&l_131,(void*)0,&l_131,(void*)0}}};
    struct S2 *l_195 = &p_300->g_196;
    uint16_t *l_232 = &p_300->g_82;
    int i, j, k;
    for (p_300->g_6 = 0; (p_300->g_6 > (-12)); p_300->g_6--)
    { /* block id: 48 */
        uint32_t l_134 = 1UL;
        int8_t *l_166 = &p_300->g_6;
        uint32_t l_211 = 0x30439F44L;
        int32_t l_212 = 0x07354037L;
        (*p_300->g_31) = l_90[5][0][3];
        for (p_60 = 12; (p_60 <= 51); ++p_60)
        { /* block id: 52 */
            int8_t l_116 = (-1L);
            int32_t *l_159 = &l_131;
            int32_t ****l_181[3];
            uint16_t l_213 = 0xB537L;
            struct S0 l_214 = {4294967288UL};
            int i;
            for (i = 0; i < 3; i++)
                l_181[i] = &p_300->g_119[6];
            for (p_300->g_35 = (-21); (p_300->g_35 < 28); ++p_300->g_35)
            { /* block id: 55 */
                int32_t l_132 = 0x00D46020L;
                int32_t **l_165 = &p_300->g_31;
                int64_t *l_173 = &p_300->g_148;
                int32_t *l_176 = (void*)0;
                int32_t *l_177 = &p_300->g_178[1];
                struct S0 l_180 = {0UL};
                int32_t ****l_182 = &p_300->g_119[0];
                for (p_61 = (-17); (p_61 < 22); p_61 = safe_add_func_int16_t_s_s(p_61, 7))
                { /* block id: 58 */
                    union U3 *l_98 = (void*)0;
                    union U3 **l_97 = &l_98;
                    uint32_t l_115 = 0x505B8064L;
                    int32_t ***l_124 = (void*)0;
                    int32_t ****l_123[3][3][5] = {{{&l_124,(void*)0,&l_124,(void*)0,(void*)0},{&l_124,(void*)0,&l_124,(void*)0,(void*)0},{&l_124,(void*)0,&l_124,(void*)0,(void*)0}},{{&l_124,(void*)0,&l_124,(void*)0,(void*)0},{&l_124,(void*)0,&l_124,(void*)0,(void*)0},{&l_124,(void*)0,&l_124,(void*)0,(void*)0}},{{&l_124,(void*)0,&l_124,(void*)0,(void*)0},{&l_124,(void*)0,&l_124,(void*)0,(void*)0},{&l_124,(void*)0,&l_124,(void*)0,(void*)0}}};
                    int i, j, k;
                    (*l_97) = (void*)0;
                    for (p_300->g_36 = 7; (p_300->g_36 > 18); ++p_300->g_36)
                    { /* block id: 62 */
                        int32_t ****l_120 = &p_300->g_119[0];
                        int8_t *l_130 = (void*)0;
                        uint16_t *l_133[9][3] = {{(void*)0,&p_300->g_82,&p_300->g_82},{(void*)0,&p_300->g_82,&p_300->g_82},{(void*)0,&p_300->g_82,&p_300->g_82},{(void*)0,&p_300->g_82,&p_300->g_82},{(void*)0,&p_300->g_82,&p_300->g_82},{(void*)0,&p_300->g_82,&p_300->g_82},{(void*)0,&p_300->g_82,&p_300->g_82},{(void*)0,&p_300->g_82,&p_300->g_82},{(void*)0,&p_300->g_82,&p_300->g_82}};
                        struct S0 **l_135 = (void*)0;
                        int i, j;
                        l_160[4][3][1] = (l_159 = func_101(p_300->g_25, ((l_134 = ((safe_mul_func_uint8_t_u_u((safe_mod_func_int8_t_s_s(((safe_rshift_func_uint16_t_u_u((GROUP_DIVERGE(1, 1) < (safe_add_func_uint64_t_u_u(l_115, 0x0F6D1638B9B80995L))), 15)) || l_116), p_300->g_36)), (((safe_mod_func_int64_t_s_s(((0L == ((((*l_120) = p_300->g_119[0]) != ((safe_lshift_func_int8_t_s_u((l_131 = (((l_123[1][2][0] == p_300->g_125[3][1]) ^ GROUP_DIVERGE(1, 1)) != 1UL)), p_59)) , (void*)0)) , p_300->g_6)) < l_116), 0xDE80311F254279C2L)) , GROUP_DIVERGE(2, 1)) , p_59))) <= l_132)) , l_135), &p_300->g_73, p_300->g_75, p_300->g_6, p_300));
                        if (l_132)
                            break;
                        return p_300->g_148;
                    }
                    if ((atomic_inc(&p_300->l_atomic_input[0]) == 6))
                    { /* block id: 80 */
                        uint8_t l_161 = 255UL;
                        uint32_t l_162 = 0x22FD341EL;
                        l_162 = l_161;
                        unsigned int result = 0;
                        result += l_161;
                        result += l_162;
                        atomic_add(&p_300->l_special_values[0], result);
                    }
                    else
                    { /* block id: 82 */
                        (1 + 1);
                    }
                    if (l_132)
                        continue;
                }
                (*p_300->g_144) = (((p_300->g_82 & ((p_300->g_179[2][1] = ((*l_177) = ((p_300->g_175[1][5] = (safe_mul_func_int8_t_s_s(((((void*)0 != l_165) , l_166) == l_166), (safe_rshift_func_int16_t_s_s((p_300->g_174 = (((safe_sub_func_uint32_t_u_u((((0x68A6C423DE851E6AL ^ ((*l_173) ^= (safe_rshift_func_uint16_t_u_s((l_165 == l_165), 14)))) > p_300->g_73.f0) , p_300->g_73.f0), (-1L))) , p_60) , p_300->g_148)), 6))))) >= 0UL))) , 0x2B74649171F469DCL)) && p_300->g_82) , l_180);
                if (((l_181[0] = (void*)0) != l_182))
                { /* block id: 94 */
                    int32_t *l_183 = &p_300->g_25;
                    l_160[4][3][1] = ((*l_165) = l_183);
                    if ((atomic_inc(&p_300->g_atomic_input[17 * get_linear_group_id() + 9]) == 1))
                    { /* block id: 98 */
                        uint16_t l_184 = 0xEFFBL;
                        struct S2 l_188 = {0x0433A3D88CF5AA1CL,4294967288UL,{0x8A552695L},0xC90199EC3F422AACL};/* VOLATILE GLOBAL l_188 */
                        struct S2 *l_187 = &l_188;
                        struct S2 l_190[9][5][5] = {{{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}}},{{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}}},{{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}}},{{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}}},{{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}}},{{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}}},{{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}}},{{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}}},{{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}},{{-2L,0xAB02FD1AL,{1UL},0x96ACBED25AB7275CL},{0x4523401E5B4BAF5FL,0xEEABF480L,{4294967294UL},0UL},{0x137B01EF6679340AL,0xA62F15F6L,{0xF4A846E4L},18446744073709551613UL},{-2L,4294967295UL,{0x90321B15L},0UL},{0x748B296F20496878L,0x94709979L,{4294967291UL},0x2BC74038AB73313EL}}}};
                        struct S2 *l_189 = &l_190[7][0][1];
                        struct S2 l_192[9][2] = {{{0x1E7F25D151C892F8L,0xDF2B2ED5L,{4294967295UL},7UL},{0x6F5FA5D4976ADAB5L,1UL,{0xA58AE6F7L},18446744073709551608UL}},{{0x1E7F25D151C892F8L,0xDF2B2ED5L,{4294967295UL},7UL},{0x6F5FA5D4976ADAB5L,1UL,{0xA58AE6F7L},18446744073709551608UL}},{{0x1E7F25D151C892F8L,0xDF2B2ED5L,{4294967295UL},7UL},{0x6F5FA5D4976ADAB5L,1UL,{0xA58AE6F7L},18446744073709551608UL}},{{0x1E7F25D151C892F8L,0xDF2B2ED5L,{4294967295UL},7UL},{0x6F5FA5D4976ADAB5L,1UL,{0xA58AE6F7L},18446744073709551608UL}},{{0x1E7F25D151C892F8L,0xDF2B2ED5L,{4294967295UL},7UL},{0x6F5FA5D4976ADAB5L,1UL,{0xA58AE6F7L},18446744073709551608UL}},{{0x1E7F25D151C892F8L,0xDF2B2ED5L,{4294967295UL},7UL},{0x6F5FA5D4976ADAB5L,1UL,{0xA58AE6F7L},18446744073709551608UL}},{{0x1E7F25D151C892F8L,0xDF2B2ED5L,{4294967295UL},7UL},{0x6F5FA5D4976ADAB5L,1UL,{0xA58AE6F7L},18446744073709551608UL}},{{0x1E7F25D151C892F8L,0xDF2B2ED5L,{4294967295UL},7UL},{0x6F5FA5D4976ADAB5L,1UL,{0xA58AE6F7L},18446744073709551608UL}},{{0x1E7F25D151C892F8L,0xDF2B2ED5L,{4294967295UL},7UL},{0x6F5FA5D4976ADAB5L,1UL,{0xA58AE6F7L},18446744073709551608UL}}};
                        struct S2 *l_191 = &l_192[1][1];
                        int i, j, k;
                        l_184--;
                        l_191 = (l_189 = l_187);
                        unsigned int result = 0;
                        result += l_184;
                        result += l_188.f0;
                        result += l_188.f1;
                        result += l_188.f2.f0;
                        result += l_188.f3;
                        int l_190_i0, l_190_i1, l_190_i2;
                        for (l_190_i0 = 0; l_190_i0 < 9; l_190_i0++) {
                            for (l_190_i1 = 0; l_190_i1 < 5; l_190_i1++) {
                                for (l_190_i2 = 0; l_190_i2 < 5; l_190_i2++) {
                                    result += l_190[l_190_i0][l_190_i1][l_190_i2].f0;
                                    result += l_190[l_190_i0][l_190_i1][l_190_i2].f1;
                                    result += l_190[l_190_i0][l_190_i1][l_190_i2].f2.f0;
                                    result += l_190[l_190_i0][l_190_i1][l_190_i2].f3;
                                }
                            }
                        }
                        int l_192_i0, l_192_i1;
                        for (l_192_i0 = 0; l_192_i0 < 9; l_192_i0++) {
                            for (l_192_i1 = 0; l_192_i1 < 2; l_192_i1++) {
                                result += l_192[l_192_i0][l_192_i1].f0;
                                result += l_192[l_192_i0][l_192_i1].f1;
                                result += l_192[l_192_i0][l_192_i1].f2.f0;
                                result += l_192[l_192_i0][l_192_i1].f3;
                            }
                        }
                        atomic_add(&p_300->g_special_values[17 * get_linear_group_id() + 9], result);
                    }
                    else
                    { /* block id: 102 */
                        (1 + 1);
                    }
                }
                else
                { /* block id: 105 */
                    if (p_59)
                        break;
                }
            }
            for (p_300->g_174 = 14; (p_300->g_174 != 6); --p_300->g_174)
            { /* block id: 111 */
                (*p_300->g_31) = (l_195 == (void*)0);
                for (p_300->g_150 = 0; p_300->g_150 < 9; p_300->g_150 += 1)
                {
                    p_300->g_119[p_300->g_150] = (void*)0;
                }
                (*p_300->g_31) &= (1L != GROUP_DIVERGE(2, 1));
            }
            for (p_300->g_25 = 2; (p_300->g_25 >= 0); p_300->g_25 -= 1)
            { /* block id: 118 */
                uint8_t *l_199 = &p_300->g_175[4][5];
                int32_t l_210 = 0x3949A14BL;
                int i, j;
                l_213 |= ((p_300->g_179[(p_300->g_25 + 3)][p_300->g_25] < 0x0673L) != (safe_add_func_uint64_t_u_u((((*l_199)++) <= (safe_sub_func_int32_t_s_s((~(l_212 &= (0x34ABC96BL < (((0L && 0L) == ((l_210 &= ((safe_add_func_uint32_t_u_u((safe_rshift_func_int8_t_s_s((*p_300->g_21), p_60)), (((((p_61 <= (((((*p_300->g_21) ^ 0x38L) >= 247UL) , (*p_300->g_144)) , 0xAAL)) == p_300->g_196.f2.f0) || FAKE_DIVERGE(p_300->local_1_offset, get_local_id(1), 10)) & l_134) && p_61))) , p_60)) , l_211)) >= 0x12L)))), (*p_300->g_31)))), p_59)));
                if (l_210)
                    continue;
            }
            (*p_300->g_144) = l_214;
        }
        if (p_60)
            break;
    }
    for (p_300->g_150 = 17; (p_300->g_150 > 21); ++p_300->g_150)
    { /* block id: 131 */
        uint8_t *l_217 = &p_300->g_175[1][1];
        uint16_t *l_218 = &p_300->g_82;
        int32_t l_223[6][6][3] = {{{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L}},{{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L}},{{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L}},{{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L}},{{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L}},{{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L}}};
        uint8_t *l_224 = &p_300->g_225[6][2][1];
        int32_t **l_239 = &l_160[0][0][4];
        int32_t ***l_238 = &l_239;
        int32_t ****l_240 = (void*)0;
        int i, j, k;
        (*p_300->g_31) = (((((*l_217) = p_300->g_150) < 0x6EL) && (&p_300->g_82 != l_218)) != (safe_div_func_int8_t_s_s((((*l_224) = (safe_lshift_func_int8_t_s_u(l_223[1][1][2], 4))) ^ (safe_sub_func_uint16_t_u_u((safe_div_func_uint32_t_u_u((((~((safe_mul_func_int64_t_s_s(((void*)0 != l_232), ((~((safe_add_func_uint8_t_u_u((++p_60), p_61)) && ((((l_238 = l_238) == (void*)0) <= 0x68A62B9273867A1AL) == p_300->g_235))) == p_300->g_150))) , p_300->g_178[0])) >= 18446744073709551615UL) && FAKE_DIVERGE(p_300->local_0_offset, get_local_id(0), 10)), p_59)), p_300->g_178[0]))), 0x92L)));
        (*p_300->g_31) = (safe_lshift_func_uint16_t_u_u(p_61, 14));
        l_223[0][3][2] &= ((*p_300->g_31) ^= (safe_add_func_uint8_t_u_u(p_300->g_175[1][5], p_59)));
    }
    return p_300->g_225[8][3][2];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint8_t  func_64(int32_t  p_65, struct S4 * p_300)
{ /* block id: 42 */
    struct S0 **l_85 = (void*)0;
    struct S0 ***l_86 = &l_85;
    (*l_86) = l_85;
    return p_65;
}


/* ------------------------------------------ */
/* 
 * reads : p_300->g_75 p_300->g_82 p_300->g_31 p_300->g_25
 * writes: p_300->g_73 p_300->g_75.f0 p_300->g_82
 */
int32_t  func_66(int16_t  p_67, uint8_t * p_68, int8_t ** p_69, struct S4 * p_300)
{ /* block id: 26 */
    int32_t l_76[8] = {0x70F9AB13L,0x70F9AB13L,0x70F9AB13L,0x70F9AB13L,0x70F9AB13L,0x70F9AB13L,0x70F9AB13L,0x70F9AB13L};
    int32_t l_80 = (-8L);
    int32_t l_81 = 0x30A093F7L;
    int i;
    for (p_67 = 4; (p_67 > (-18)); p_67 = safe_sub_func_int16_t_s_s(p_67, 1))
    { /* block id: 29 */
        struct S0 *l_72 = &p_300->g_73;
        struct S0 **l_74 = &l_72;
        (*l_74) = l_72;
        (**l_74) = p_300->g_75;
    }
    for (p_300->g_73.f0 = 0; p_300->g_73.f0 < 8; p_300->g_73.f0 += 1)
    {
        l_76[p_300->g_73.f0] = 0x05C6596AL;
    }
    for (p_300->g_75.f0 = (-19); (p_300->g_75.f0 > 14); p_300->g_75.f0 = safe_add_func_uint8_t_u_u(p_300->g_75.f0, 6))
    { /* block id: 36 */
        int32_t *l_79[6][6] = {{&p_300->g_25,&p_300->g_25,(void*)0,&p_300->g_25,&p_300->g_25,&p_300->g_25},{&p_300->g_25,&p_300->g_25,(void*)0,&p_300->g_25,&p_300->g_25,&p_300->g_25},{&p_300->g_25,&p_300->g_25,(void*)0,&p_300->g_25,&p_300->g_25,&p_300->g_25},{&p_300->g_25,&p_300->g_25,(void*)0,&p_300->g_25,&p_300->g_25,&p_300->g_25},{&p_300->g_25,&p_300->g_25,(void*)0,&p_300->g_25,&p_300->g_25,&p_300->g_25},{&p_300->g_25,&p_300->g_25,(void*)0,&p_300->g_25,&p_300->g_25,&p_300->g_25}};
        int i, j;
        p_300->g_82++;
        if ((*p_300->g_31))
            break;
        return p_67;
    }
    return (*p_300->g_31);
}


/* ------------------------------------------ */
/* 
 * reads : p_300->g_142 p_300->g_148 p_300->g_75.f0 p_300->g_31
 * writes: p_300->g_148 p_300->g_150 p_300->g_25
 */
int32_t * func_101(int32_t  p_102, struct S0 ** p_103, struct S0 * p_104, struct S0  p_105, uint32_t  p_106, struct S4 * p_300)
{ /* block id: 66 */
    struct S0 ***l_145 = (void*)0;
    int32_t l_146 = (-1L);
    int64_t *l_147 = &p_300->g_148;
    int64_t *l_149[8][1][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    int32_t l_151 = 0x018F5FB7L;
    int32_t *l_152 = (void*)0;
    int32_t **l_153[10] = {&l_152,&p_300->g_31,&l_152,&l_152,&p_300->g_31,&l_152,&l_152,&p_300->g_31,&l_152,&l_152};
    int32_t *l_154 = &p_300->g_25;
    uint64_t l_155 = 18446744073709551615UL;
    int32_t *l_158 = (void*)0;
    int i, j, k;
    (*p_300->g_31) = (safe_mul_func_int8_t_s_s((safe_lshift_func_int8_t_s_s((safe_add_func_int8_t_s_s((((GROUP_DIVERGE(0, 1) || (p_300->g_150 = ((*l_147) ^= ((p_300->g_142 != l_145) , l_146)))) && p_300->g_75.f0) >= (l_151 = (+p_105.f0))), (l_152 == (l_154 = &l_146)))), 5)), p_106));
    l_155--;
    return l_158;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[17];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 17; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[17];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 17; i++)
            l_special_values[i] = 0;
    struct S4 c_301;
    struct S4* p_300 = &c_301;
    struct S4 c_302 = {
        (-10L), // p_300->g_6
        &p_300->g_6, // p_300->g_5
        (void*)0, // p_300->g_21
        0x5AE89405L, // p_300->g_25
        &p_300->g_25, // p_300->g_31
        &p_300->g_31, // p_300->g_30
        {&p_300->g_30,&p_300->g_30}, // p_300->g_32
        &p_300->g_30, // p_300->g_33
        18446744073709551606UL, // p_300->g_35
        (-1L), // p_300->g_36
        {{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}}}, // p_300->g_57
        {1UL}, // p_300->g_73
        {1UL}, // p_300->g_75
        65531UL, // p_300->g_82
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_300->g_119
        1L, // p_300->g_129
        &p_300->g_129, // p_300->g_128
        &p_300->g_128, // p_300->g_127
        &p_300->g_127, // p_300->g_126
        {{&p_300->g_126,&p_300->g_126,&p_300->g_126},{&p_300->g_126,&p_300->g_126,&p_300->g_126},{&p_300->g_126,&p_300->g_126,&p_300->g_126},{&p_300->g_126,&p_300->g_126,&p_300->g_126},{&p_300->g_126,&p_300->g_126,&p_300->g_126}}, // p_300->g_125
        &p_300->g_75, // p_300->g_144
        {{&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144},{&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144},{&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144},{&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144},{&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144},{&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144},{&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144},{&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144},{&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144,&p_300->g_144}}, // p_300->g_143
        &p_300->g_143[3][5], // p_300->g_142
        0x4262ADE66CDFB547L, // p_300->g_148
        (-6L), // p_300->g_150
        0UL, // p_300->g_174
        {{0xEDL,253UL,0x03L,0UL,6UL,0xD0L,0xD0L,6UL},{0xEDL,253UL,0x03L,0UL,6UL,0xD0L,0xD0L,6UL},{0xEDL,253UL,0x03L,0UL,6UL,0xD0L,0xD0L,6UL},{0xEDL,253UL,0x03L,0UL,6UL,0xD0L,0xD0L,6UL},{0xEDL,253UL,0x03L,0UL,6UL,0xD0L,0xD0L,6UL},{0xEDL,253UL,0x03L,0UL,6UL,0xD0L,0xD0L,6UL},{0xEDL,253UL,0x03L,0UL,6UL,0xD0L,0xD0L,6UL},{0xEDL,253UL,0x03L,0UL,6UL,0xD0L,0xD0L,6UL},{0xEDL,253UL,0x03L,0UL,6UL,0xD0L,0xD0L,6UL}}, // p_300->g_175
        {0x346BC9B9L,0x346BC9B9L}, // p_300->g_178
        {{0UL,0UL,0UL},{0UL,0UL,0UL},{0UL,0UL,0UL},{0UL,0UL,0UL},{0UL,0UL,0UL},{0UL,0UL,0UL},{0UL,0UL,0UL},{0UL,0UL,0UL}}, // p_300->g_179
        {1L,8UL,{1UL},18446744073709551614UL}, // p_300->g_196
        {{{0UL,1UL,1UL,255UL},{0UL,1UL,1UL,255UL},{0UL,1UL,1UL,255UL},{0UL,1UL,1UL,255UL}},{{0UL,1UL,1UL,255UL},{0UL,1UL,1UL,255UL},{0UL,1UL,1UL,255UL},{0UL,1UL,1UL,255UL}},{{0UL,1UL,1UL,255UL},{0UL,1UL,1UL,255UL},{0UL,1UL,1UL,255UL},{0UL,1UL,1UL,255UL}},{{0UL,1UL,1UL,255UL},{0UL,1UL,1UL,255UL},{0UL,1UL,1UL,255UL},{0UL,1UL,1UL,255UL}},{{0UL,1UL,1UL,255UL},{0UL,1UL,1UL,255UL},{0UL,1UL,1UL,255UL},{0UL,1UL,1UL,255UL}},{{0UL,1UL,1UL,255UL},{0UL,1UL,1UL,255UL},{0UL,1UL,1UL,255UL},{0UL,1UL,1UL,255UL}},{{0UL,1UL,1UL,255UL},{0UL,1UL,1UL,255UL},{0UL,1UL,1UL,255UL},{0UL,1UL,1UL,255UL}},{{0UL,1UL,1UL,255UL},{0UL,1UL,1UL,255UL},{0UL,1UL,1UL,255UL},{0UL,1UL,1UL,255UL}},{{0UL,1UL,1UL,255UL},{0UL,1UL,1UL,255UL},{0UL,1UL,1UL,255UL},{0UL,1UL,1UL,255UL}},{{0UL,1UL,1UL,255UL},{0UL,1UL,1UL,255UL},{0UL,1UL,1UL,255UL},{0UL,1UL,1UL,255UL}}}, // p_300->g_225
        0x2B87L, // p_300->g_235
        (-1L), // p_300->g_264
        &p_300->g_31, // p_300->g_265
        {0x3B7D8D51A2A051C5L,0UL,{0UL},18446744073709551606UL}, // p_300->g_271
        &p_300->g_196, // p_300->g_272
        sequence_input[get_global_id(0)], // p_300->global_0_offset
        sequence_input[get_global_id(1)], // p_300->global_1_offset
        sequence_input[get_global_id(2)], // p_300->global_2_offset
        sequence_input[get_local_id(0)], // p_300->local_0_offset
        sequence_input[get_local_id(1)], // p_300->local_1_offset
        sequence_input[get_local_id(2)], // p_300->local_2_offset
        sequence_input[get_group_id(0)], // p_300->group_0_offset
        sequence_input[get_group_id(1)], // p_300->group_1_offset
        sequence_input[get_group_id(2)], // p_300->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_301 = c_302;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_300);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_300->g_6, "p_300->g_6", print_hash_value);
    transparent_crc(p_300->g_25, "p_300->g_25", print_hash_value);
    transparent_crc(p_300->g_35, "p_300->g_35", print_hash_value);
    transparent_crc(p_300->g_36, "p_300->g_36", print_hash_value);
    transparent_crc(p_300->g_73.f0, "p_300->g_73.f0", print_hash_value);
    transparent_crc(p_300->g_75.f0, "p_300->g_75.f0", print_hash_value);
    transparent_crc(p_300->g_82, "p_300->g_82", print_hash_value);
    transparent_crc(p_300->g_129, "p_300->g_129", print_hash_value);
    transparent_crc(p_300->g_148, "p_300->g_148", print_hash_value);
    transparent_crc(p_300->g_150, "p_300->g_150", print_hash_value);
    transparent_crc(p_300->g_174, "p_300->g_174", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_300->g_175[i][j], "p_300->g_175[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_300->g_178[i], "p_300->g_178[i]", print_hash_value);

    }
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_300->g_179[i][j], "p_300->g_179[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_300->g_196.f0, "p_300->g_196.f0", print_hash_value);
    transparent_crc(p_300->g_196.f1, "p_300->g_196.f1", print_hash_value);
    transparent_crc(p_300->g_196.f2.f0, "p_300->g_196.f2.f0", print_hash_value);
    transparent_crc(p_300->g_196.f3, "p_300->g_196.f3", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_300->g_225[i][j][k], "p_300->g_225[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_300->g_235, "p_300->g_235", print_hash_value);
    transparent_crc(p_300->g_264, "p_300->g_264", print_hash_value);
    transparent_crc(p_300->g_271.f0, "p_300->g_271.f0", print_hash_value);
    transparent_crc(p_300->g_271.f1, "p_300->g_271.f1", print_hash_value);
    transparent_crc(p_300->g_271.f2.f0, "p_300->g_271.f2.f0", print_hash_value);
    transparent_crc(p_300->g_271.f3, "p_300->g_271.f3", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 17; i++)
            transparent_crc(p_300->g_special_values[i + 17 * get_linear_group_id()], "p_300->g_special_values[i + 17 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 17; i++)
            transparent_crc(p_300->l_special_values[i], "p_300->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
