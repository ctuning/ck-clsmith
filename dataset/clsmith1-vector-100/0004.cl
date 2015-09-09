// ---fake_divergence -g 45,99,1 -l 45,3,1
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


// Seed: 4

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile uint16_t  f0;
   int32_t  f1;
   volatile int32_t  f2;
   volatile int8_t  f3;
   volatile uint8_t  f4;
   volatile int8_t  f5;
};

union U1 {
   volatile uint16_t  f0;
   struct S0  f1;
};

union U2 {
   uint16_t  f0;
};

struct S4 {
    int32_t g_2;
    int32_t g_6;
    volatile VECTOR(int8_t, 4) g_18;
    int8_t g_35;
    int8_t g_42;
    uint8_t g_73;
    VECTOR(uint64_t, 4) g_75;
    VECTOR(int64_t, 16) g_77;
    int32_t *g_90;
    int32_t ** volatile g_89;
    VECTOR(int16_t, 4) g_93;
    int32_t * volatile g_99;
    VECTOR(uint8_t, 2) g_114;
    volatile struct S0 g_115[4][4];
    volatile struct S0 * volatile g_116;
    int32_t ** volatile g_122;
    int32_t ** volatile g_123;
    int32_t ** volatile g_130;
    VECTOR(int32_t, 8) g_148;
    volatile VECTOR(int8_t, 16) g_151;
    VECTOR(int8_t, 2) g_153;
    volatile VECTOR(int8_t, 16) g_154;
    int64_t * volatile g_189;
    int64_t *g_190;
    int64_t g_199;
    struct S0 g_204;
    struct S0 g_206;
    struct S0 g_215[5];
    int32_t ** volatile g_234[1];
    volatile struct S0 * volatile g_236;
    union U1 g_241;
    int32_t * volatile g_263;
    int8_t g_265;
    int8_t *g_264[10][3];
    uint16_t g_297;
    volatile int8_t g_315;
    volatile int8_t *g_314;
    volatile int8_t * volatile *g_313;
    volatile VECTOR(int32_t, 8) g_338;
    VECTOR(int32_t, 8) g_339;
    uint32_t g_357;
    union U2 g_359;
    union U2 *g_358;
    union U2 ** volatile g_360;
    union U2 ** volatile g_361[8][6][5];
    union U2 ** volatile g_362[4][1][10];
    union U2 ** volatile g_363[10][8][3];
    union U2 ** volatile g_364;
    volatile struct S0 g_393;
    volatile struct S0 * volatile g_394;
    volatile struct S0 * volatile g_395[10][2][4];
    volatile struct S0 * volatile g_396;
    volatile struct S0 * volatile g_426;
    VECTOR(uint16_t, 4) g_454;
    VECTOR(int16_t, 4) g_460;
    uint8_t *g_495[8];
    VECTOR(uint8_t, 2) g_496;
    VECTOR(int16_t, 16) g_513;
    union U1 ** volatile g_515;
    volatile struct S0 g_517;
    volatile struct S0 g_519;
    volatile VECTOR(int32_t, 2) g_521;
    uint16_t *g_525;
    uint16_t **g_524;
    int32_t ** volatile g_594[10][9];
    volatile VECTOR(int16_t, 2) g_620;
    VECTOR(int16_t, 2) g_625;
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
int16_t  func_1(struct S4 * p_631);
int32_t  func_7(int32_t * p_8, int8_t * p_9, int32_t * p_10, uint32_t  p_11, uint32_t  p_12, struct S4 * p_631);
int32_t * func_13(int32_t  p_14, int64_t  p_15, struct S4 * p_631);
int32_t * func_19(int32_t  p_20, int32_t  p_21, int16_t  p_22, int8_t  p_23, int8_t * p_24, struct S4 * p_631);
int32_t  func_30(int8_t * p_31, uint64_t  p_32, int8_t * p_33, struct S4 * p_631);
int8_t * func_36(int8_t  p_37, int8_t * p_38, int8_t * p_39, int8_t  p_40, struct S4 * p_631);
int8_t * func_43(int8_t  p_44, struct S4 * p_631);
int8_t  func_45(uint32_t  p_46, uint32_t  p_47, uint32_t  p_48, int32_t * p_49, int8_t  p_50, struct S4 * p_631);
int32_t  func_54(int8_t * p_55, struct S4 * p_631);
int8_t * func_56(int8_t * p_57, uint64_t  p_58, int8_t * p_59, uint8_t  p_60, int16_t  p_61, struct S4 * p_631);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_631->g_2 p_631->g_18 p_631->g_35 p_631->g_6 p_631->g_75 p_631->g_77 p_631->g_73 p_631->g_89 p_631->g_93 p_631->g_99 p_631->g_114 p_631->g_115 p_631->g_116 p_631->g_123 p_631->g_130 p_631->g_42 p_631->g_90 p_631->g_189 p_631->g_190 p_631->g_204.f1 p_631->g_206.f2 p_631->g_215 p_631->g_148 p_631->g_236 p_631->g_241 p_631->g_153 p_631->g_151 p_631->g_264 p_631->g_206.f4 p_631->g_313 p_631->g_314 p_631->g_338 p_631->g_339 p_631->g_265 p_631->g_358 p_631->g_364 p_631->g_393 p_631->g_396 p_631->g_206.f1 p_631->g_199 p_631->g_357 p_631->g_513
 * writes: p_631->g_2 p_631->g_6 p_631->g_73 p_631->g_90 p_631->g_75 p_631->g_115 p_631->g_42 p_631->g_199 p_631->g_204.f1 p_631->g_206 p_631->g_35 p_631->g_153 p_631->g_297 p_631->g_264 p_631->g_148 p_631->g_357 p_631->g_358 p_631->g_93 p_631->g_265
 */
int16_t  func_1(struct S4 * p_631)
{ /* block id: 4 */
    int8_t **l_316 = (void*)0;
    int32_t *l_317 = &p_631->g_2;
    int32_t l_434 = (-1L);
    int32_t l_438 = (-3L);
    int32_t l_440 = (-1L);
    int32_t l_442 = 0x686ED72CL;
    int16_t l_444 = 8L;
    VECTOR(int16_t, 16) l_491 = (VECTOR(int16_t, 16))(0x7CAEL, (VECTOR(int16_t, 4))(0x7CAEL, (VECTOR(int16_t, 2))(0x7CAEL, 0x373AL), 0x373AL), 0x373AL, 0x7CAEL, 0x373AL, (VECTOR(int16_t, 2))(0x7CAEL, 0x373AL), (VECTOR(int16_t, 2))(0x7CAEL, 0x373AL), 0x7CAEL, 0x373AL, 0x7CAEL, 0x373AL);
    VECTOR(uint16_t, 4) l_494 = (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 1UL), 1UL);
    VECTOR(int8_t, 4) l_533 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x69L), 0x69L);
    uint16_t **l_548[1];
    VECTOR(int16_t, 4) l_613 = (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x3A10L), 0x3A10L);
    int i;
    for (i = 0; i < 1; i++)
        l_548[i] = &p_631->g_525;
    for (p_631->g_2 = 0; (p_631->g_2 != 13); p_631->g_2++)
    { /* block id: 7 */
        int32_t *l_5[9][6][4] = {{{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2}},{{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2}},{{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2}},{{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2}},{{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2}},{{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2}},{{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2}},{{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2}},{{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2},{(void*)0,(void*)0,&p_631->g_2,&p_631->g_2}}};
        int8_t *l_312 = &p_631->g_265;
        int8_t **l_311 = &l_312;
        union U2 *l_468 = &p_631->g_359;
        uint32_t l_553 = 1UL;
        VECTOR(int8_t, 8) l_590 = (VECTOR(int8_t, 8))(0x7DL, (VECTOR(int8_t, 4))(0x7DL, (VECTOR(int8_t, 2))(0x7DL, 0x7EL), 0x7EL), 0x7EL, 0x7DL, 0x7EL);
        int i, j, k;
        p_631->g_6 = p_631->g_2;
        (*p_631->g_99) = func_7(func_13((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 8))(p_631->g_18.yzwxwzwz)).s5, p_631->g_2)), p_631->g_2, p_631), &p_631->g_265, (((safe_lshift_func_int8_t_s_u((((*l_311) = func_43(p_631->g_93.w, p_631)) != &p_631->g_265), p_631->g_2)) | ((p_631->g_313 != l_316) , (-3L))) , l_317), p_631->g_215[0].f1, p_631->g_114.y, p_631);
        if ((*l_317))
            continue;
        for (p_631->g_357 = 28; (p_631->g_357 <= 10); --p_631->g_357)
        { /* block id: 201 */
            int16_t l_433 = 4L;
            int32_t l_435 = (-7L);
            int32_t l_441 = 0x57FE1EE9L;
            int32_t l_445 = 0x3C8E1A82L;
            int32_t l_446 = (-7L);
            int32_t l_447[8][7][4] = {{{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L}},{{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L}},{{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L}},{{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L}},{{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L}},{{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L}},{{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L}},{{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L},{0x1AE76FE5L,1L,0x1AE76FE5L,6L}}};
            union U2 *l_467 = (void*)0;
            VECTOR(uint16_t, 8) l_501 = (VECTOR(uint16_t, 8))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x6763L), 0x6763L), 0x6763L, 65535UL, 0x6763L);
            uint8_t l_593 = 0xA3L;
            int32_t l_627 = 0L;
            int8_t l_628 = 3L;
            int i, j, k;
            (1 + 1);
        }
    }
    return p_631->g_513.s0;
}


/* ------------------------------------------ */
/* 
 * reads : p_631->g_35 p_631->g_73 p_631->g_89 p_631->g_90 p_631->g_115.f0 p_631->g_93 p_631->g_313 p_631->g_314 p_631->g_338 p_631->g_339 p_631->g_2 p_631->g_148 p_631->g_75 p_631->g_265 p_631->g_114 p_631->g_358 p_631->g_364 p_631->g_206.f4 p_631->g_204.f1 p_631->g_215.f1 p_631->g_393 p_631->g_396 p_631->g_189 p_631->g_206.f1 p_631->g_42 p_631->g_153 p_631->g_199 p_631->g_190 p_631->g_115
 * writes: p_631->g_35 p_631->g_73 p_631->g_90 p_631->g_357 p_631->g_358 p_631->g_115 p_631->g_93 p_631->g_265
 */
int32_t  func_7(int32_t * p_8, int8_t * p_9, int32_t * p_10, uint32_t  p_11, uint32_t  p_12, struct S4 * p_631)
{ /* block id: 151 */
    int32_t l_327 = 1L;
    int32_t l_353 = 0x77ED798BL;
    int32_t *l_354 = (void*)0;
    int8_t l_355 = 0x58L;
    int32_t l_368 = 0x056BD9A5L;
    int32_t l_371 = (-1L);
    int32_t l_372 = 0x02D7C8C6L;
    int32_t l_375 = 0x61DE9766L;
    int32_t l_376[7][2] = {{0x7279814EL,(-10L)},{0x7279814EL,(-10L)},{0x7279814EL,(-10L)},{0x7279814EL,(-10L)},{0x7279814EL,(-10L)},{0x7279814EL,(-10L)},{0x7279814EL,(-10L)}};
    uint32_t l_391 = 1UL;
    uint64_t l_428[3];
    int i, j;
    for (i = 0; i < 3; i++)
        l_428[i] = 0xBFAA622FA75F79AEL;
    for (p_631->g_35 = 23; (p_631->g_35 == 4); p_631->g_35 = safe_sub_func_int64_t_s_s(p_631->g_35, 6))
    { /* block id: 154 */
        uint16_t *l_325[10] = {&p_631->g_297,&p_631->g_297,&p_631->g_297,&p_631->g_297,&p_631->g_297,&p_631->g_297,&p_631->g_297,&p_631->g_297,&p_631->g_297,&p_631->g_297};
        int32_t l_342 = 0x2434ABC9L;
        int32_t l_373 = 0x37D8292AL;
        int32_t l_374 = (-1L);
        int32_t l_380 = 1L;
        VECTOR(int32_t, 2) l_409 = (VECTOR(int32_t, 2))(0x2DADA726L, 0x72D0E557L);
        int16_t *l_414[1];
        int32_t *l_415 = (void*)0;
        int32_t *l_416 = &l_376[1][0];
        int16_t l_417 = 3L;
        uint64_t *l_419 = (void*)0;
        uint64_t **l_418 = &l_419;
        int i;
        for (i = 0; i < 1; i++)
            l_414[i] = (void*)0;
        for (p_631->g_73 = 10; (p_631->g_73 >= 2); p_631->g_73 = safe_sub_func_int8_t_s_s(p_631->g_73, 8))
        { /* block id: 157 */
            int32_t **l_322 = &p_631->g_90;
            int32_t l_366 = (-1L);
            int32_t l_367 = 0x173E8F51L;
            int32_t l_369 = 8L;
            int32_t l_370[3][3];
            union U2 l_392[8][3][7] = {{{{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL}},{{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL}},{{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL}}},{{{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL}},{{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL}},{{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL}}},{{{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL}},{{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL}},{{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL}}},{{{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL}},{{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL}},{{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL}}},{{{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL}},{{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL}},{{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL}}},{{{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL}},{{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL}},{{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL}}},{{{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL}},{{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL}},{{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL}}},{{{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL}},{{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL}},{{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL},{0UL},{0xB5ABL},{0xB5ABL}}}};
            int i, j, k;
            for (i = 0; i < 3; i++)
            {
                for (j = 0; j < 3; j++)
                    l_370[i][j] = 1L;
            }
            (*l_322) = (*p_631->g_89);
            if (((((p_631->g_115[2][2].f0 , (safe_lshift_func_uint16_t_u_s(p_631->g_93.y, 11))) , (*p_631->g_313)) == p_9) && (~(&p_8 == (void*)0))))
            { /* block id: 159 */
                uint16_t *l_326 = &p_631->g_297;
                int32_t l_351 = (-2L);
                uint16_t l_352 = 5UL;
                uint32_t *l_356 = &p_631->g_357;
                int32_t *l_365[10][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
                uint32_t l_377 = 3UL;
                int i, j;
                l_342 = ((((l_325[9] == l_326) != 0x4209DBF3CCCA38B4L) && (((*l_356) = ((l_327 , (-1L)) > ((safe_rshift_func_int8_t_s_u(((((safe_div_func_int8_t_s_s((((safe_add_func_uint8_t_u_u((safe_sub_func_uint64_t_u_u((safe_sub_func_int16_t_s_s(0x1149L, ((((VECTOR(int32_t, 8))(rotate(((VECTOR(int32_t, 16))(p_631->g_338.s1613063714517560)).hi, ((VECTOR(int32_t, 8))(p_631->g_339.s00346273))))).s6 <= ((safe_mod_func_uint16_t_u_u((l_342 > ((((((l_353 = (safe_mul_func_int16_t_s_s(((((+((safe_sub_func_uint16_t_u_u(p_631->g_73, (((VECTOR(uint8_t, 2))(255UL, 0x67L)).hi && (((safe_sub_func_int8_t_s_s((safe_mod_func_int32_t_s_s((*p_10), l_351)), l_351)) <= 0x7E966B25L) < l_351)))) < p_12)) , l_352) > p_631->g_148.s6) , (-1L)), 0x25A8L))) != p_631->g_75.z) , (void*)0) != l_354) , p_11) , (*p_10))), p_631->g_2)) | p_11)) || 0x0DDC316358BAB304L))), l_352)), l_351)) > l_355) ^ p_11), (-6L))) != 6L) || 0x57BAL) , (-1L)), p_631->g_339.s3)) >= (*p_9)))) , p_12)) != p_631->g_114.y);
                (*p_631->g_364) = p_631->g_358;
                l_377--;
                if (l_380)
                    continue;
            }
            else
            { /* block id: 166 */
                union U2 l_383[1] = {{1UL}};
                int32_t *l_390 = &l_368;
                int i;
                (*p_631->g_396) = ((((VECTOR(uint16_t, 16))(mad_sat(((VECTOR(uint16_t, 4))(abs_diff(((VECTOR(int16_t, 2))(upsample(((VECTOR(int8_t, 16))(((safe_rshift_func_uint16_t_u_s((((((+(p_631->g_206.f4 & (p_631->g_2 , ((((65534UL ^ p_11) & ((l_383[0] , (safe_div_func_int64_t_s_s(p_12, ((+0xB3DB7B4E7857034AL) , (l_374 ^= (l_373 = (safe_mul_func_int16_t_s_s(0x13F3L, (((((*l_390) = ((safe_div_func_uint16_t_u_u(0xBD2EL, p_11)) < 1UL)) <= p_631->g_204.f1) > (*p_9)) && p_631->g_204.f1))))))))) | l_391)) , (void*)0) == &p_631->g_359)))) || p_12) | p_631->g_93.y) != p_631->g_215[0].f1) >= 0x42L), l_342)) , (*p_9)), l_380, (-1L), (*p_9), (*p_9), (-6L), (-1L), ((VECTOR(int8_t, 2))(0x34L)), 0x17L, (*p_9), ((VECTOR(int8_t, 2))(0x37L)), 0x7AL, 2L, 1L)).s60, ((VECTOR(uint8_t, 2))(0x74L))))).xyxx, ((VECTOR(int16_t, 4))(0x2E72L))))).zxwwxzywxxzwwzwx, ((VECTOR(uint16_t, 16))(0UL)), ((VECTOR(uint16_t, 16))(1UL))))).sf , l_392[7][1][2]) , p_631->g_393);
            }
        }
        if ((safe_rshift_func_int16_t_s_s((p_631->g_189 != ((*l_418) = (((((safe_rshift_func_uint16_t_u_s((safe_sub_func_int16_t_s_s(p_631->g_206.f1, ((~((l_380 <= ((safe_rshift_func_uint8_t_u_u(0UL, l_373)) <= ((((((safe_rshift_func_uint8_t_u_s(((l_372 = 0x1AB24ACBL) <= ((*l_416) = (safe_rshift_func_int8_t_s_s((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_409.xx)).yxyxyxyyxxyxyxxx)).s2efa)), ((VECTOR(int32_t, 2))(0x109D3251L, 0L)).yyyy))).odd)).xyxyyyxxxyxxxxxy)).sa , (((l_380 || (p_631->g_93.x ^= ((safe_lshift_func_int16_t_s_u(((((0x2AF7D058L >= (safe_div_func_int64_t_s_s((GROUP_DIVERGE(0, 1) <= (p_12 , 0x27FB038DL)), p_631->g_42))) , l_409.x) , p_10) != p_10), p_12)) && p_631->g_35))) & 5L) , 0x18L)), (*p_9))))), 0)) && 1L) , p_631->g_153.y) | 0x680B7E34L) && p_631->g_199) && p_631->g_42))) , 0xE9L)) , (*l_416)))), 4)) != p_12) && p_631->g_339.s7) != l_417) , p_631->g_190))), p_12)))
        { /* block id: 177 */
            for (l_327 = 17; (l_327 == (-21)); l_327 = safe_sub_func_uint8_t_u_u(l_327, 5))
            { /* block id: 180 */
                uint16_t l_424 = 65535UL;
                (*l_416) = (*p_10);
                for (p_631->g_265 = 0; (p_631->g_265 <= (-13)); p_631->g_265--)
                { /* block id: 184 */
                    int32_t **l_425 = &l_416;
                    (1 + 1);
                }
            }
        }
        else
        { /* block id: 191 */
            volatile struct S0 *l_427 = &p_631->g_115[2][2];
            (*l_427) = (*p_631->g_396);
            if ((*p_10))
                break;
        }
    }
    return l_428[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_631->g_2 p_631->g_35 p_631->g_6 p_631->g_75 p_631->g_77 p_631->g_73 p_631->g_89 p_631->g_93 p_631->g_99 p_631->g_114 p_631->g_115 p_631->g_116 p_631->g_123 p_631->g_130 p_631->g_42 p_631->g_90 p_631->g_189 p_631->g_190 p_631->g_204.f1 p_631->g_206.f2 p_631->g_215 p_631->g_148 p_631->g_236 p_631->g_241 p_631->g_153 p_631->g_151 p_631->g_264 p_631->g_206.f4
 * writes: p_631->g_6 p_631->g_73 p_631->g_90 p_631->g_75 p_631->g_115 p_631->g_42 p_631->g_199 p_631->g_204.f1 p_631->g_206 p_631->g_35 p_631->g_153 p_631->g_297 p_631->g_264 p_631->g_148
 */
int32_t * func_13(int32_t  p_14, int64_t  p_15, struct S4 * p_631)
{ /* block id: 9 */
    VECTOR(uint8_t, 16) l_25 = (VECTOR(uint8_t, 16))(0xADL, (VECTOR(uint8_t, 4))(0xADL, (VECTOR(uint8_t, 2))(0xADL, 0x1FL), 0x1FL), 0x1FL, 0xADL, 0x1FL, (VECTOR(uint8_t, 2))(0xADL, 0x1FL), (VECTOR(uint8_t, 2))(0xADL, 0x1FL), 0xADL, 0x1FL, 0xADL, 0x1FL);
    int8_t *l_34[8];
    int8_t *l_41 = &p_631->g_42;
    int32_t *l_53[8];
    int8_t *l_232 = &p_631->g_35;
    int8_t **l_231 = &l_232;
    int32_t **l_304[10];
    int32_t *l_305[2];
    int64_t *l_308 = &p_631->g_199;
    int i;
    for (i = 0; i < 8; i++)
        l_34[i] = &p_631->g_35;
    for (i = 0; i < 8; i++)
        l_53[i] = &p_631->g_6;
    for (i = 0; i < 10; i++)
        l_304[i] = (void*)0;
    for (i = 0; i < 2; i++)
        l_305[i] = (void*)0;
    l_305[1] = func_19((((VECTOR(uint8_t, 2))(l_25.sd9)).lo ^ (((safe_div_func_uint64_t_u_u(0xD88C83B91359A703L, (safe_mul_func_int16_t_s_s(p_631->g_2, (func_30(l_34[6], p_631->g_35, func_36((((l_41 = l_34[6]) != ((*l_231) = func_43(func_45(p_631->g_35, (safe_rshift_func_uint8_t_u_u((((void*)0 == l_53[4]) >= 0xAEE481DBL), p_631->g_6)), p_15, l_53[4], p_631->g_2, p_631), p_631))) ^ p_631->g_148.s4), &p_631->g_35, l_34[6], p_15, p_631), p_631) | p_631->g_114.x))))) && p_14) , p_14)), p_631->g_148.s7, p_15, p_15, p_631->g_264[9][1], p_631);
    (*p_631->g_99) &= (safe_add_func_int64_t_s_s(((*l_308) = (p_14 >= p_14)), ((void*)0 != &p_631->g_297)));
    return (*p_631->g_89);
}


/* ------------------------------------------ */
/* 
 * reads : p_631->g_35 p_631->g_206.f4 p_631->g_2 p_631->g_6 p_631->g_148
 * writes: p_631->g_35 p_631->g_199 p_631->g_297 p_631->g_264 p_631->g_148
 */
int32_t * func_19(int32_t  p_20, int32_t  p_21, int16_t  p_22, int8_t  p_23, int8_t * p_24, struct S4 * p_631)
{ /* block id: 136 */
    uint8_t l_278 = 1UL;
    int32_t *l_291 = &p_631->g_2;
    for (p_631->g_35 = 0; (p_631->g_35 != (-3)); p_631->g_35 = safe_sub_func_uint16_t_u_u(p_631->g_35, 3))
    { /* block id: 139 */
        int64_t *l_277 = &p_631->g_199;
        uint16_t *l_296 = &p_631->g_297;
        int8_t **l_298 = &p_631->g_264[1][0];
        int32_t l_299 = (-2L);
        int32_t *l_300 = (void*)0;
        int32_t *l_301 = (void*)0;
        int32_t *l_302 = (void*)0;
        int32_t *l_303 = (void*)0;
        p_631->g_148.s0 |= (safe_mod_func_uint64_t_u_u(((safe_div_func_int8_t_s_s((safe_mod_func_uint8_t_u_u(((VECTOR(uint8_t, 4))((safe_unary_minus_func_int16_t_s(p_22)), GROUP_DIVERGE(1, 1), 0UL, 0xE1L)).w, ((((*l_298) = func_43((safe_div_func_int16_t_s_s((((*l_277) = (GROUP_DIVERGE(0, 1) <= 6UL)) || ((l_278 == ((safe_rshift_func_int16_t_s_s(p_631->g_206.f4, ((VECTOR(int16_t, 2))(0x16C8L, 0x21BEL)).even)) & ((safe_add_func_uint32_t_u_u((safe_rshift_func_int16_t_s_u(((safe_mul_func_int8_t_s_s(0x70L, (safe_rshift_func_uint16_t_u_u(((*l_296) = ((safe_rshift_func_uint8_t_u_s(((+((((&p_631->g_6 != (p_22 , l_291)) || (safe_rshift_func_int8_t_s_s((safe_div_func_int8_t_s_s(p_21, p_22)), p_22))) & 1UL) ^ 0xBCDAFE5DA07628F6L)) || p_22), (*l_291))) , 1UL)), 2)))) , (-1L)), 10)), (*l_291))) || p_23))) || 0x12L)), p_631->g_6)), p_631)) == &p_631->g_42) , l_299))), (*l_291))) , 1UL), l_299));
    }
    return l_291;
}


/* ------------------------------------------ */
/* 
 * reads : p_631->g_241 p_631->g_204.f1 p_631->g_153 p_631->g_35 p_631->g_151 p_631->g_6
 * writes: p_631->g_35 p_631->g_153 p_631->g_6
 */
int32_t  func_30(int8_t * p_31, uint64_t  p_32, int8_t * p_33, struct S4 * p_631)
{ /* block id: 130 */
    VECTOR(int32_t, 4) l_261 = (VECTOR(int32_t, 4))(0x1EC438B6L, (VECTOR(int32_t, 2))(0x1EC438B6L, 1L), 1L);
    int32_t *l_262 = &p_631->g_6;
    int i;
    l_261.z = (safe_mul_func_uint16_t_u_u((((*l_262) = ((safe_sub_func_uint16_t_u_u(p_32, (((p_631->g_241 , (safe_unary_minus_func_int8_t_s(((*p_33) = 0x1DL)))) && 3UL) || (safe_mul_func_uint16_t_u_u(p_32, (safe_add_func_uint32_t_u_u(4294967294UL, (safe_rshift_func_int8_t_s_s((safe_sub_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((safe_lshift_func_int8_t_s_s((p_631->g_153.x |= (safe_lshift_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u((safe_add_func_int32_t_s_s(((VECTOR(int32_t, 4))(l_261.wwyy)).x, l_261.y)), (p_32 , (0x70AEL >= p_631->g_204.f1)))), l_261.w))), 4)), (*p_31))), p_631->g_151.sb)), l_261.y))))))))) & l_261.w)) , (*l_262)), 0x745BL));
    return (*l_262);
}


/* ------------------------------------------ */
/* 
 * reads : p_631->g_130 p_631->g_90 p_631->g_116 p_631->g_115 p_631->g_236
 * writes: p_631->g_90 p_631->g_115
 */
int8_t * func_36(int8_t  p_37, int8_t * p_38, int8_t * p_39, int8_t  p_40, struct S4 * p_631)
{ /* block id: 125 */
    int32_t *l_233 = (void*)0;
    int32_t **l_235 = &p_631->g_90;
    (*l_235) = l_233;
    (*l_235) = (*p_631->g_130);
    (*p_631->g_236) = (*p_631->g_116);
    return &p_631->g_35;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t * func_43(int8_t  p_44, struct S4 * p_631)
{ /* block id: 122 */
    int8_t *l_230 = (void*)0;
    return l_230;
}


/* ------------------------------------------ */
/* 
 * reads : p_631->g_6 p_631->g_2 p_631->g_75 p_631->g_77 p_631->g_73 p_631->g_89 p_631->g_93 p_631->g_99 p_631->g_114 p_631->g_115 p_631->g_116 p_631->g_123 p_631->g_130 p_631->g_42 p_631->g_90 p_631->g_189 p_631->g_190 p_631->g_204.f1 p_631->g_206.f2 p_631->g_215
 * writes: p_631->g_6 p_631->g_73 p_631->g_90 p_631->g_75 p_631->g_115 p_631->g_42 p_631->g_199 p_631->g_204.f1 p_631->g_206
 */
int8_t  func_45(uint32_t  p_46, uint32_t  p_47, uint32_t  p_48, int32_t * p_49, int8_t  p_50, struct S4 * p_631)
{ /* block id: 11 */
    int8_t *l_63 = &p_631->g_35;
    int8_t **l_62 = &l_63;
    uint32_t l_64[1][9] = {{0x43232AF7L,0x43232AF7L,0x43232AF7L,0x43232AF7L,0x43232AF7L,0x43232AF7L,0x43232AF7L,0x43232AF7L,0x43232AF7L}};
    VECTOR(uint16_t, 4) l_67 = (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 65526UL), 65526UL);
    VECTOR(uint16_t, 2) l_68 = (VECTOR(uint16_t, 2))(65527UL, 0UL);
    VECTOR(uint16_t, 16) l_69 = (VECTOR(uint16_t, 16))(0x9021L, (VECTOR(uint16_t, 4))(0x9021L, (VECTOR(uint16_t, 2))(0x9021L, 65526UL), 65526UL), 65526UL, 0x9021L, 65526UL, (VECTOR(uint16_t, 2))(0x9021L, 65526UL), (VECTOR(uint16_t, 2))(0x9021L, 65526UL), 0x9021L, 65526UL, 0x9021L, 65526UL);
    int32_t l_70 = 0L;
    uint8_t *l_71 = (void*)0;
    uint8_t *l_72[4][2] = {{&p_631->g_73,&p_631->g_73},{&p_631->g_73,&p_631->g_73},{&p_631->g_73,&p_631->g_73},{&p_631->g_73,&p_631->g_73}};
    int32_t l_74 = 0x41278827L;
    int8_t **l_124 = &l_63;
    int32_t l_136 = (-1L);
    int32_t l_137 = 0L;
    int64_t l_174 = (-1L);
    uint16_t *l_178 = (void*)0;
    uint8_t l_202 = 0x66L;
    VECTOR(int32_t, 16) l_216 = (VECTOR(int32_t, 16))((-10L), (VECTOR(int32_t, 4))((-10L), (VECTOR(int32_t, 2))((-10L), 3L), 3L), 3L, (-10L), 3L, (VECTOR(int32_t, 2))((-10L), 3L), (VECTOR(int32_t, 2))((-10L), 3L), (-10L), 3L, (-10L), 3L);
    uint32_t l_227 = 4294967289UL;
    int i, j;
    if ((((func_54(func_56(((*l_62) = &p_631->g_42), l_64[0][4], &p_50, (l_74 = (((&p_50 != &p_631->g_35) >= (safe_mod_func_uint8_t_u_u((((l_70 = (((VECTOR(uint16_t, 16))(mad_sat(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(0xD71FL, 0x690DL, 0x2041L, 1UL)).lo)).yyyxyyyyxxyxyyxx, ((VECTOR(uint16_t, 8))(min(((VECTOR(uint16_t, 2))(mad_sat(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(l_67.yxyx)).zyyzzzyywyzzxyzy)))).sf0, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(l_68.xyxyxxyyxxxxxxyy)).s72)), ((VECTOR(uint16_t, 8))(65535UL, 1UL, 0xEF21L, ((VECTOR(uint16_t, 2))(l_69.s93)), (l_68.y >= (*p_49)), 65535UL, 65526UL)).s3, (&p_631->g_6 != (((((void*)0 != l_62) ^ 0x7C8A300FF6CFD11EL) != l_68.y) , &p_631->g_2)), ((VECTOR(uint16_t, 4))(65535UL)))).s05)), ((VECTOR(uint16_t, 2))(0xD6AEL))))).yxxyxxxx, ((VECTOR(uint16_t, 8))(0x66DBL))))).s2463113065536473, ((VECTOR(uint16_t, 16))(0xCB41L))))).s5 != p_47)) < l_68.y) || 0x1BFF34F2L), p_631->g_2))) == p_50)), l_64[0][4], p_631), p_631) , p_46) | l_69.sd) , 0x3EFA4ECEL))
    { /* block id: 41 */
        for (p_631->g_73 = 0; (p_631->g_73 > 57); p_631->g_73 = safe_add_func_int16_t_s_s(p_631->g_73, 9))
        { /* block id: 44 */
            uint32_t l_109 = 0x2CCF7F33L;
            for (l_70 = 0; (l_70 == 11); l_70 = safe_add_func_int16_t_s_s(l_70, 3))
            { /* block id: 47 */
                int32_t *l_105 = &l_74;
                int32_t *l_106 = &p_631->g_6;
                int32_t *l_107 = &l_74;
                int32_t *l_108[9][9] = {{&p_631->g_6,&p_631->g_2,&p_631->g_2,&p_631->g_6,&p_631->g_2,&p_631->g_6,&p_631->g_6,&p_631->g_2,&l_74},{&p_631->g_6,&p_631->g_2,&p_631->g_2,&p_631->g_6,&p_631->g_2,&p_631->g_6,&p_631->g_6,&p_631->g_2,&l_74},{&p_631->g_6,&p_631->g_2,&p_631->g_2,&p_631->g_6,&p_631->g_2,&p_631->g_6,&p_631->g_6,&p_631->g_2,&l_74},{&p_631->g_6,&p_631->g_2,&p_631->g_2,&p_631->g_6,&p_631->g_2,&p_631->g_6,&p_631->g_6,&p_631->g_2,&l_74},{&p_631->g_6,&p_631->g_2,&p_631->g_2,&p_631->g_6,&p_631->g_2,&p_631->g_6,&p_631->g_6,&p_631->g_2,&l_74},{&p_631->g_6,&p_631->g_2,&p_631->g_2,&p_631->g_6,&p_631->g_2,&p_631->g_6,&p_631->g_6,&p_631->g_2,&l_74},{&p_631->g_6,&p_631->g_2,&p_631->g_2,&p_631->g_6,&p_631->g_2,&p_631->g_6,&p_631->g_6,&p_631->g_2,&l_74},{&p_631->g_6,&p_631->g_2,&p_631->g_2,&p_631->g_6,&p_631->g_2,&p_631->g_6,&p_631->g_6,&p_631->g_2,&l_74},{&p_631->g_6,&p_631->g_2,&p_631->g_2,&p_631->g_6,&p_631->g_2,&p_631->g_6,&p_631->g_6,&p_631->g_2,&l_74}};
                int i, j;
                --l_109;
                (*l_105) = (safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 4))(max(((VECTOR(uint8_t, 2))(255UL, 0x9FL)).xyxy, ((VECTOR(uint8_t, 2))(p_631->g_114.xy)).xxxy))).x, 5));
            }
        }
        (*p_631->g_116) = p_631->g_115[2][2];
        for (p_46 = 0; (p_46 > 12); p_46++)
        { /* block id: 55 */
            int32_t *l_121 = &l_70;
            for (l_74 = 5; (l_74 >= 13); ++l_74)
            { /* block id: 58 */
                (*p_631->g_123) = l_121;
                (*p_49) ^= (0UL > (-1L));
            }
        }
    }
    else
    { /* block id: 63 */
        uint32_t l_129[7] = {0UL,4294967289UL,0UL,0UL,4294967289UL,0UL,0UL};
        int32_t l_145 = 0x55BA672AL;
        int32_t l_173 = 0x473E3192L;
        uint16_t *l_177 = (void*)0;
        VECTOR(uint64_t, 2) l_188 = (VECTOR(uint64_t, 2))(18446744073709551609UL, 0x38AB73313E7CBB95L);
        struct S0 *l_205 = &p_631->g_206;
        int32_t *l_217 = (void*)0;
        int32_t *l_218 = &l_136;
        int32_t *l_219 = (void*)0;
        int32_t *l_220 = &l_74;
        int32_t *l_221 = &p_631->g_6;
        int32_t *l_222 = &l_173;
        int32_t *l_223 = &l_74;
        int32_t *l_224 = (void*)0;
        int32_t *l_225 = &l_136;
        int32_t *l_226[4];
        int i;
        for (i = 0; i < 4; i++)
            l_226[i] = (void*)0;
lbl_144:
        (*p_49) ^= ((l_124 == ((p_46 , (safe_mod_func_int8_t_s_s(0x46L, FAKE_DIVERGE(p_631->global_1_offset, get_global_id(1), 10)))) , (void*)0)) != ((!(0L && (safe_mul_func_uint16_t_u_u(p_48, (&p_49 != (void*)0))))) > (&p_631->g_73 != (void*)0)));
        if (l_129[3])
        { /* block id: 65 */
            uint32_t l_138 = 4294967295UL;
            int32_t l_143[9];
            int i;
            for (i = 0; i < 9; i++)
                l_143[i] = 0x361316C4L;
            (*p_631->g_130) = p_49;
            for (p_631->g_42 = 11; (p_631->g_42 != 16); ++p_631->g_42)
            { /* block id: 69 */
                uint16_t *l_133[10][2];
                int32_t l_134 = 1L;
                int32_t l_135[5][1][5] = {{{0L,(-7L),0x2D0340A0L,1L,0x2D0340A0L}},{{0L,(-7L),0x2D0340A0L,1L,0x2D0340A0L}},{{0L,(-7L),0x2D0340A0L,1L,0x2D0340A0L}},{{0L,(-7L),0x2D0340A0L,1L,0x2D0340A0L}},{{0L,(-7L),0x2D0340A0L,1L,0x2D0340A0L}}};
                int i, j, k;
                for (i = 0; i < 10; i++)
                {
                    for (j = 0; j < 2; j++)
                        l_133[i][j] = (void*)0;
                }
                if (((l_138++) == ((safe_lshift_func_uint16_t_u_s((((*p_49) = (~((VECTOR(int32_t, 2))(0x138C4916L, 0x7A79C0B2L)).hi)) || l_143[5]), 11)) && (*p_49))))
                { /* block id: 72 */
                    if (l_136)
                        break;
                    if ((*p_631->g_90))
                        continue;
                }
                else
                { /* block id: 75 */
                    if (p_48)
                        goto lbl_144;
                    if ((**p_631->g_123))
                        break;
                    l_145 = (0x51D0L != ((VECTOR(uint16_t, 2))(65533UL, 3UL)).lo);
                }
            }
        }
        else
        { /* block id: 81 */
            VECTOR(int8_t, 16) l_149 = (VECTOR(int8_t, 16))((-5L), (VECTOR(int8_t, 4))((-5L), (VECTOR(int8_t, 2))((-5L), 0x0CL), 0x0CL), 0x0CL, (-5L), 0x0CL, (VECTOR(int8_t, 2))((-5L), 0x0CL), (VECTOR(int8_t, 2))((-5L), 0x0CL), (-5L), 0x0CL, (-5L), 0x0CL);
            VECTOR(int8_t, 16) l_150 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x2BL), 0x2BL), 0x2BL, (-1L), 0x2BL, (VECTOR(int8_t, 2))((-1L), 0x2BL), (VECTOR(int8_t, 2))((-1L), 0x2BL), (-1L), 0x2BL, (-1L), 0x2BL);
            VECTOR(int8_t, 16) l_152 = (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x7BL), 0x7BL), 0x7BL, 0L, 0x7BL, (VECTOR(int8_t, 2))(0L, 0x7BL), (VECTOR(int8_t, 2))(0L, 0x7BL), 0L, 0x7BL, 0L, 0x7BL);
            int32_t l_208 = 0x5D988B33L;
            int i;
            if ((safe_div_func_int32_t_s_s(((VECTOR(int32_t, 16))(p_631->g_148.s1241177755433544)).sf, (((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(min(((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 16))(rotate(((VECTOR(int8_t, 4))(l_149.s417b)).xwzxzyxyzwxzyyyw, ((VECTOR(int8_t, 4))(rotate(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(mul_hi(((VECTOR(int8_t, 2))(l_150.s2e)).xxyyxxxyxxxyyxxy, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(1L, (-10L))).yxyx)).xzwwywwyzwzzxywz))).s68)).xxxx, ((VECTOR(int8_t, 8))(max(((VECTOR(int8_t, 16))(p_631->g_151.s22fd341e3a302d84)).hi, ((VECTOR(int8_t, 4))(l_152.s4d53)).yyzywyxw))).lo))).zxxyyyywxwyyyzyz))), ((VECTOR(int8_t, 2))(p_631->g_153.yy)).yyxxxyyxxyxxxxyy))), ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(0x01L, 0x4DL, ((VECTOR(int8_t, 2))(p_631->g_154.s2c)), ((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(sub_sat(((VECTOR(int8_t, 16))((safe_rshift_func_int8_t_s_u((p_50 = (((l_136 |= (((safe_mul_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(0x42L, p_631->g_114.y)), (safe_add_func_uint64_t_u_u(0x196A25B173B0BAABL, ((~((FAKE_DIVERGE(p_631->global_1_offset, get_global_id(1), 10) , ((**l_124) = ((l_137 = ((safe_add_func_int32_t_s_s((safe_rshift_func_int16_t_s_u(((((p_631->g_93.x = l_145) , p_631->g_35) > ((((VECTOR(int8_t, 8))(hadd(((VECTOR(int8_t, 16))((safe_sub_func_int16_t_s_s(((0x14L & (safe_rshift_func_uint16_t_u_u((l_149.s1 || p_631->g_151.sc), (~(safe_rshift_func_uint8_t_u_u(((((l_173 = p_48) == 0x71F469DC8A146DD5L) , 0x702AL) >= p_631->g_148.s2), l_149.s1)))))) , 0x690AL), p_50)), 1L, 0x73L, 1L, ((VECTOR(int8_t, 2))(0x12L)), (-1L), p_631->g_115[2][2].f1, (-6L), l_67.z, 3L, ((VECTOR(int8_t, 4))(0x73L)), 0x66L)).odd, ((VECTOR(int8_t, 8))(0x1AL))))).s5 != p_631->g_2) >= 0x98L)) , l_129[3]), p_46)), (*p_49))) || l_152.s4)) | l_69.s5))) > p_48)) && p_631->g_153.y))))) != p_46) && l_69.sb)) & (-6L)) ^ p_631->g_2)), 3)), p_631->g_35, l_174, 1L, (-9L), ((VECTOR(int8_t, 8))(1L)), l_67.w, (-9L), 0x58L)).lo, ((VECTOR(int8_t, 8))(0x20L))))).hi)), ((VECTOR(int8_t, 4))(0x7BL))))), ((VECTOR(int8_t, 4))((-1L))), p_48, ((VECTOR(int8_t, 2))((-7L))), 0x56L)).s1a8a)).even)).yxyxyxxyxyyxxxyy))).lo)).s3 | p_631->g_77.s8))))
            { /* block id: 88 */
                int64_t *l_175 = (void*)0;
                int64_t *l_176 = &l_174;
                uint16_t *l_180 = (void*)0;
                uint16_t **l_179 = &l_180;
                (*p_49) = (((*l_176) = p_631->g_93.z) > ((l_178 = l_177) != ((*l_179) = (void*)0)));
            }
            else
            { /* block id: 93 */
                int32_t **l_181[5][5][10] = {{{&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90},{&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90},{&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90},{&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90},{&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90}},{{&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90},{&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90},{&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90},{&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90},{&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90}},{{&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90},{&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90},{&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90},{&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90},{&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90}},{{&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90},{&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90},{&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90},{&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90},{&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90}},{{&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90},{&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90},{&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90},{&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90},{&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90,&p_631->g_90}}};
                int i, j, k;
                (*p_631->g_89) = p_49;
            }
            for (l_173 = 6; (l_173 < 17); l_173 = safe_add_func_uint64_t_u_u(l_173, 8))
            { /* block id: 98 */
                int8_t l_195 = 0x7AL;
                uint16_t *l_196 = (void*)0;
                uint16_t *l_197 = (void*)0;
                uint16_t *l_198[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
                struct S0 *l_203 = &p_631->g_204;
                int32_t *l_207[10] = {&l_70,&l_74,&l_70,&l_70,&l_74,&l_70,&l_70,&l_74,&l_70,&l_70};
                int i;
                l_208 |= ((*p_49) = ((safe_mod_func_uint8_t_u_u((safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 8))(0UL, 0x4B6351B0F9FA3D02L, 0xCFF7C043BD0F48B2L, 0xF204968785947099L, ((VECTOR(uint64_t, 4))(l_188.yyxy)))).s6, (((p_631->g_189 != p_631->g_190) < (safe_lshift_func_uint16_t_u_s((l_195 = (safe_rshift_func_uint8_t_u_s(GROUP_DIVERGE(1, 1), 7))), ((p_631->g_199 = 65532UL) , ((VECTOR(int16_t, 16))(0x7738L, ((safe_rshift_func_uint16_t_u_s(l_202, (l_203 == l_205))) & l_68.x), ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(3L, (-8L))).yxxxyyyx)))), (((VECTOR(uint64_t, 8))(0x1EEABF4803A4D647L, (p_46 && 0x509343FEL), 0x7994EB943A5B38CEL, 0xF14C923DBF3A5608L, l_68.y, p_631->g_77.s6, 18446744073709551612UL, 18446744073709551611UL)).s2 > 0x6C08DA6C3DDF1352L), 0L, 1L, ((VECTOR(int16_t, 2))(1L)), 0x1E64L)).s7)))) & GROUP_DIVERGE(2, 1)))), l_68.x)) == 5L));
                for (l_202 = 19; (l_202 == 22); l_202++)
                { /* block id: 105 */
                    (*p_49) = 0x47393B26L;
                    for (p_631->g_204.f1 = 0; (p_631->g_204.f1 <= (-18)); p_631->g_204.f1--)
                    { /* block id: 109 */
                        if (l_150.s5)
                            break;
                    }
                    (*p_49) &= (safe_mul_func_int16_t_s_s((p_46 != 0UL), p_631->g_206.f2));
                }
                if (l_173)
                    continue;
            }
            (*l_205) = p_631->g_215[0];
        }
        (*p_49) &= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(l_216.s84fac850)).s7557512435067062)).sc;
        ++l_227;
    }
    return p_631->g_215[0].f5;
}


/* ------------------------------------------ */
/* 
 * reads : p_631->g_73 p_631->g_93 p_631->g_75 p_631->g_99 p_631->g_6
 * writes: p_631->g_73 p_631->g_75 p_631->g_6
 */
int32_t  func_54(int8_t * p_55, struct S4 * p_631)
{ /* block id: 33 */
    int8_t l_100 = 0x03L;
    for (p_631->g_73 = 0; (p_631->g_73 <= 2); p_631->g_73 = safe_add_func_uint8_t_u_u(p_631->g_73, 8))
    { /* block id: 36 */
        uint64_t *l_94 = (void*)0;
        uint64_t *l_95 = (void*)0;
        uint64_t *l_96 = (void*)0;
        uint64_t *l_97 = (void*)0;
        uint64_t *l_98[9][8][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
        int i, j, k;
        (*p_631->g_99) ^= ((0x1EL & ((0x68L || (-9L)) ^ ((VECTOR(int16_t, 2))(p_631->g_93.xz)).hi)) == (p_631->g_75.y |= 0x5DDBF1A1B615E2BEL));
    }
    return l_100;
}


/* ------------------------------------------ */
/* 
 * reads : p_631->g_75 p_631->g_77 p_631->g_73 p_631->g_6 p_631->g_89
 * writes: p_631->g_6 p_631->g_73 p_631->g_90
 */
int8_t * func_56(int8_t * p_57, uint64_t  p_58, int8_t * p_59, uint8_t  p_60, int16_t  p_61, struct S4 * p_631)
{ /* block id: 15 */
    uint64_t l_76 = 1UL;
    int32_t *l_78 = &p_631->g_6;
    if (((*l_78) = ((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(p_631->g_75.xwzwxzywxwwxwwxx)).s50d1)).w <= l_76) <= ((VECTOR(int64_t, 8))(p_631->g_77.sfbf91089)).s0)))
    { /* block id: 17 */
        int32_t *l_79[6] = {&p_631->g_6,&p_631->g_6,&p_631->g_6,&p_631->g_6,&p_631->g_6,&p_631->g_6};
        int32_t **l_80 = &l_79[3];
        int i;
        (*l_80) = l_79[3];
        for (p_60 = 0; (p_60 < 36); p_60++)
        { /* block id: 21 */
            for (p_631->g_73 = 3; (p_631->g_73 == 13); p_631->g_73 = safe_add_func_uint16_t_u_u(p_631->g_73, 9))
            { /* block id: 24 */
                uint32_t l_85[2];
                int i;
                for (i = 0; i < 2; i++)
                    l_85[i] = 0xAFEF71A1L;
                ++l_85[0];
            }
            (*l_78) = (**l_80);
        }
    }
    else
    { /* block id: 29 */
        int32_t *l_88 = (void*)0;
        (*p_631->g_89) = l_88;
    }
    return &p_631->g_42;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S4 c_632;
    struct S4* p_631 = &c_632;
    struct S4 c_633 = {
        (-3L), // p_631->g_2
        1L, // p_631->g_6
        (VECTOR(int8_t, 4))(9L, (VECTOR(int8_t, 2))(9L, (-10L)), (-10L)), // p_631->g_18
        (-3L), // p_631->g_35
        0L, // p_631->g_42
        0xE7L, // p_631->g_73
        (VECTOR(uint64_t, 4))(0xDF325EC3E4F79C11L, (VECTOR(uint64_t, 2))(0xDF325EC3E4F79C11L, 0xD7193A8FE19BE170L), 0xD7193A8FE19BE170L), // p_631->g_75
        (VECTOR(int64_t, 16))(0x21D575427816D4D4L, (VECTOR(int64_t, 4))(0x21D575427816D4D4L, (VECTOR(int64_t, 2))(0x21D575427816D4D4L, (-1L)), (-1L)), (-1L), 0x21D575427816D4D4L, (-1L), (VECTOR(int64_t, 2))(0x21D575427816D4D4L, (-1L)), (VECTOR(int64_t, 2))(0x21D575427816D4D4L, (-1L)), 0x21D575427816D4D4L, (-1L), 0x21D575427816D4D4L, (-1L)), // p_631->g_77
        (void*)0, // p_631->g_90
        &p_631->g_90, // p_631->g_89
        (VECTOR(int16_t, 4))(0x7DA6L, (VECTOR(int16_t, 2))(0x7DA6L, 0x5F73L), 0x5F73L), // p_631->g_93
        &p_631->g_6, // p_631->g_99
        (VECTOR(uint8_t, 2))(0x2DL, 251UL), // p_631->g_114
        {{{0UL,0x4DF62E77L,0x0DE80311L,0x25L,1UL,-8L},{0UL,0x4DF62E77L,0x0DE80311L,0x25L,1UL,-8L},{0UL,0x4DF62E77L,0x0DE80311L,0x25L,1UL,-8L},{0UL,0x4DF62E77L,0x0DE80311L,0x25L,1UL,-8L}},{{0UL,0x4DF62E77L,0x0DE80311L,0x25L,1UL,-8L},{0UL,0x4DF62E77L,0x0DE80311L,0x25L,1UL,-8L},{0UL,0x4DF62E77L,0x0DE80311L,0x25L,1UL,-8L},{0UL,0x4DF62E77L,0x0DE80311L,0x25L,1UL,-8L}},{{0UL,0x4DF62E77L,0x0DE80311L,0x25L,1UL,-8L},{0UL,0x4DF62E77L,0x0DE80311L,0x25L,1UL,-8L},{0UL,0x4DF62E77L,0x0DE80311L,0x25L,1UL,-8L},{0UL,0x4DF62E77L,0x0DE80311L,0x25L,1UL,-8L}},{{0UL,0x4DF62E77L,0x0DE80311L,0x25L,1UL,-8L},{0UL,0x4DF62E77L,0x0DE80311L,0x25L,1UL,-8L},{0UL,0x4DF62E77L,0x0DE80311L,0x25L,1UL,-8L},{0UL,0x4DF62E77L,0x0DE80311L,0x25L,1UL,-8L}}}, // p_631->g_115
        &p_631->g_115[2][2], // p_631->g_116
        (void*)0, // p_631->g_122
        &p_631->g_90, // p_631->g_123
        &p_631->g_90, // p_631->g_130
        (VECTOR(int32_t, 8))(0x4F09919FL, (VECTOR(int32_t, 4))(0x4F09919FL, (VECTOR(int32_t, 2))(0x4F09919FL, 0x0D0190B9L), 0x0D0190B9L), 0x0D0190B9L, 0x4F09919FL, 0x0D0190B9L), // p_631->g_148
        (VECTOR(int8_t, 16))(0x50L, (VECTOR(int8_t, 4))(0x50L, (VECTOR(int8_t, 2))(0x50L, (-4L)), (-4L)), (-4L), 0x50L, (-4L), (VECTOR(int8_t, 2))(0x50L, (-4L)), (VECTOR(int8_t, 2))(0x50L, (-4L)), 0x50L, (-4L), 0x50L, (-4L)), // p_631->g_151
        (VECTOR(int8_t, 2))(1L, 0x78L), // p_631->g_153
        (VECTOR(int8_t, 16))(0x54L, (VECTOR(int8_t, 4))(0x54L, (VECTOR(int8_t, 2))(0x54L, (-3L)), (-3L)), (-3L), 0x54L, (-3L), (VECTOR(int8_t, 2))(0x54L, (-3L)), (VECTOR(int8_t, 2))(0x54L, (-3L)), 0x54L, (-3L), 0x54L, (-3L)), // p_631->g_154
        (void*)0, // p_631->g_189
        (void*)0, // p_631->g_190
        0x70E3E810FF72CBD3L, // p_631->g_199
        {0x739AL,0x48FCCA4DL,-1L,-6L,246UL,0L}, // p_631->g_204
        {65535UL,0L,0x530B18F1L,0L,0x0CL,8L}, // p_631->g_206
        {{7UL,0x3F31F2D7L,0x772E7577L,0L,0xB3L,0x59L},{7UL,0x3F31F2D7L,0x772E7577L,0L,0xB3L,0x59L},{7UL,0x3F31F2D7L,0x772E7577L,0L,0xB3L,0x59L},{7UL,0x3F31F2D7L,0x772E7577L,0L,0xB3L,0x59L},{7UL,0x3F31F2D7L,0x772E7577L,0L,0xB3L,0x59L}}, // p_631->g_215
        {&p_631->g_90}, // p_631->g_234
        &p_631->g_115[2][2], // p_631->g_236
        {0UL}, // p_631->g_241
        (void*)0, // p_631->g_263
        (-9L), // p_631->g_265
        {{(void*)0,&p_631->g_265,(void*)0},{(void*)0,&p_631->g_265,(void*)0},{(void*)0,&p_631->g_265,(void*)0},{(void*)0,&p_631->g_265,(void*)0},{(void*)0,&p_631->g_265,(void*)0},{(void*)0,&p_631->g_265,(void*)0},{(void*)0,&p_631->g_265,(void*)0},{(void*)0,&p_631->g_265,(void*)0},{(void*)0,&p_631->g_265,(void*)0},{(void*)0,&p_631->g_265,(void*)0}}, // p_631->g_264
        0x0675L, // p_631->g_297
        0x75L, // p_631->g_315
        &p_631->g_315, // p_631->g_314
        &p_631->g_314, // p_631->g_313
        (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 4L), 4L), 4L, 0L, 4L), // p_631->g_338
        (VECTOR(int32_t, 8))(0x2C7BB5F2L, (VECTOR(int32_t, 4))(0x2C7BB5F2L, (VECTOR(int32_t, 2))(0x2C7BB5F2L, 7L), 7L), 7L, 0x2C7BB5F2L, 7L), // p_631->g_339
        4294967289UL, // p_631->g_357
        {0UL}, // p_631->g_359
        &p_631->g_359, // p_631->g_358
        (void*)0, // p_631->g_360
        {{{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358}},{{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358}},{{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358}},{{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358}},{{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358}},{{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358}},{{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358}},{{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358},{&p_631->g_358,&p_631->g_358,(void*)0,(void*)0,&p_631->g_358}}}, // p_631->g_361
        {{{&p_631->g_358,&p_631->g_358,&p_631->g_358,&p_631->g_358,&p_631->g_358,&p_631->g_358,&p_631->g_358,&p_631->g_358,&p_631->g_358,&p_631->g_358}},{{&p_631->g_358,&p_631->g_358,&p_631->g_358,&p_631->g_358,&p_631->g_358,&p_631->g_358,&p_631->g_358,&p_631->g_358,&p_631->g_358,&p_631->g_358}},{{&p_631->g_358,&p_631->g_358,&p_631->g_358,&p_631->g_358,&p_631->g_358,&p_631->g_358,&p_631->g_358,&p_631->g_358,&p_631->g_358,&p_631->g_358}},{{&p_631->g_358,&p_631->g_358,&p_631->g_358,&p_631->g_358,&p_631->g_358,&p_631->g_358,&p_631->g_358,&p_631->g_358,&p_631->g_358,&p_631->g_358}}}, // p_631->g_362
        {{{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358}},{{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358}},{{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358}},{{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358}},{{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358}},{{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358}},{{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358}},{{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358}},{{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358}},{{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358},{&p_631->g_358,&p_631->g_358,&p_631->g_358}}}, // p_631->g_363
        &p_631->g_358, // p_631->g_364
        {65535UL,1L,9L,0x14L,0xA8L,0x12L}, // p_631->g_393
        (void*)0, // p_631->g_394
        {{{&p_631->g_393,&p_631->g_393,&p_631->g_393,&p_631->g_115[2][2]},{&p_631->g_393,&p_631->g_393,&p_631->g_393,&p_631->g_115[2][2]}},{{&p_631->g_393,&p_631->g_393,&p_631->g_393,&p_631->g_115[2][2]},{&p_631->g_393,&p_631->g_393,&p_631->g_393,&p_631->g_115[2][2]}},{{&p_631->g_393,&p_631->g_393,&p_631->g_393,&p_631->g_115[2][2]},{&p_631->g_393,&p_631->g_393,&p_631->g_393,&p_631->g_115[2][2]}},{{&p_631->g_393,&p_631->g_393,&p_631->g_393,&p_631->g_115[2][2]},{&p_631->g_393,&p_631->g_393,&p_631->g_393,&p_631->g_115[2][2]}},{{&p_631->g_393,&p_631->g_393,&p_631->g_393,&p_631->g_115[2][2]},{&p_631->g_393,&p_631->g_393,&p_631->g_393,&p_631->g_115[2][2]}},{{&p_631->g_393,&p_631->g_393,&p_631->g_393,&p_631->g_115[2][2]},{&p_631->g_393,&p_631->g_393,&p_631->g_393,&p_631->g_115[2][2]}},{{&p_631->g_393,&p_631->g_393,&p_631->g_393,&p_631->g_115[2][2]},{&p_631->g_393,&p_631->g_393,&p_631->g_393,&p_631->g_115[2][2]}},{{&p_631->g_393,&p_631->g_393,&p_631->g_393,&p_631->g_115[2][2]},{&p_631->g_393,&p_631->g_393,&p_631->g_393,&p_631->g_115[2][2]}},{{&p_631->g_393,&p_631->g_393,&p_631->g_393,&p_631->g_115[2][2]},{&p_631->g_393,&p_631->g_393,&p_631->g_393,&p_631->g_115[2][2]}},{{&p_631->g_393,&p_631->g_393,&p_631->g_393,&p_631->g_115[2][2]},{&p_631->g_393,&p_631->g_393,&p_631->g_393,&p_631->g_115[2][2]}}}, // p_631->g_395
        &p_631->g_115[0][0], // p_631->g_396
        (void*)0, // p_631->g_426
        (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 1UL), 1UL), // p_631->g_454
        (VECTOR(int16_t, 4))(0x69AAL, (VECTOR(int16_t, 2))(0x69AAL, 1L), 1L), // p_631->g_460
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_631->g_495
        (VECTOR(uint8_t, 2))(0xBAL, 3UL), // p_631->g_496
        (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x6292L), 0x6292L), 0x6292L, (-1L), 0x6292L, (VECTOR(int16_t, 2))((-1L), 0x6292L), (VECTOR(int16_t, 2))((-1L), 0x6292L), (-1L), 0x6292L, (-1L), 0x6292L), // p_631->g_513
        (void*)0, // p_631->g_515
        {0xD5AAL,-1L,-6L,0x5CL,0UL,-1L}, // p_631->g_517
        {0UL,0L,0L,-1L,255UL,0x2EL}, // p_631->g_519
        (VECTOR(int32_t, 2))(0x42609503L, 0x78B694E8L), // p_631->g_521
        &p_631->g_359.f0, // p_631->g_525
        &p_631->g_525, // p_631->g_524
        {{(void*)0,(void*)0,&p_631->g_90,(void*)0,&p_631->g_90,(void*)0,&p_631->g_90,(void*)0,(void*)0},{(void*)0,(void*)0,&p_631->g_90,(void*)0,&p_631->g_90,(void*)0,&p_631->g_90,(void*)0,(void*)0},{(void*)0,(void*)0,&p_631->g_90,(void*)0,&p_631->g_90,(void*)0,&p_631->g_90,(void*)0,(void*)0},{(void*)0,(void*)0,&p_631->g_90,(void*)0,&p_631->g_90,(void*)0,&p_631->g_90,(void*)0,(void*)0},{(void*)0,(void*)0,&p_631->g_90,(void*)0,&p_631->g_90,(void*)0,&p_631->g_90,(void*)0,(void*)0},{(void*)0,(void*)0,&p_631->g_90,(void*)0,&p_631->g_90,(void*)0,&p_631->g_90,(void*)0,(void*)0},{(void*)0,(void*)0,&p_631->g_90,(void*)0,&p_631->g_90,(void*)0,&p_631->g_90,(void*)0,(void*)0},{(void*)0,(void*)0,&p_631->g_90,(void*)0,&p_631->g_90,(void*)0,&p_631->g_90,(void*)0,(void*)0},{(void*)0,(void*)0,&p_631->g_90,(void*)0,&p_631->g_90,(void*)0,&p_631->g_90,(void*)0,(void*)0},{(void*)0,(void*)0,&p_631->g_90,(void*)0,&p_631->g_90,(void*)0,&p_631->g_90,(void*)0,(void*)0}}, // p_631->g_594
        (VECTOR(int16_t, 2))(0x786FL, (-8L)), // p_631->g_620
        (VECTOR(int16_t, 2))((-5L), 2L), // p_631->g_625
        sequence_input[get_global_id(0)], // p_631->global_0_offset
        sequence_input[get_global_id(1)], // p_631->global_1_offset
        sequence_input[get_global_id(2)], // p_631->global_2_offset
        sequence_input[get_local_id(0)], // p_631->local_0_offset
        sequence_input[get_local_id(1)], // p_631->local_1_offset
        sequence_input[get_local_id(2)], // p_631->local_2_offset
        sequence_input[get_group_id(0)], // p_631->group_0_offset
        sequence_input[get_group_id(1)], // p_631->group_1_offset
        sequence_input[get_group_id(2)], // p_631->group_2_offset
    };
    c_632 = c_633;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_631);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_631->g_2, "p_631->g_2", print_hash_value);
    transparent_crc(p_631->g_6, "p_631->g_6", print_hash_value);
    transparent_crc(p_631->g_18.x, "p_631->g_18.x", print_hash_value);
    transparent_crc(p_631->g_18.y, "p_631->g_18.y", print_hash_value);
    transparent_crc(p_631->g_18.z, "p_631->g_18.z", print_hash_value);
    transparent_crc(p_631->g_18.w, "p_631->g_18.w", print_hash_value);
    transparent_crc(p_631->g_35, "p_631->g_35", print_hash_value);
    transparent_crc(p_631->g_42, "p_631->g_42", print_hash_value);
    transparent_crc(p_631->g_73, "p_631->g_73", print_hash_value);
    transparent_crc(p_631->g_75.x, "p_631->g_75.x", print_hash_value);
    transparent_crc(p_631->g_75.y, "p_631->g_75.y", print_hash_value);
    transparent_crc(p_631->g_75.z, "p_631->g_75.z", print_hash_value);
    transparent_crc(p_631->g_75.w, "p_631->g_75.w", print_hash_value);
    transparent_crc(p_631->g_77.s0, "p_631->g_77.s0", print_hash_value);
    transparent_crc(p_631->g_77.s1, "p_631->g_77.s1", print_hash_value);
    transparent_crc(p_631->g_77.s2, "p_631->g_77.s2", print_hash_value);
    transparent_crc(p_631->g_77.s3, "p_631->g_77.s3", print_hash_value);
    transparent_crc(p_631->g_77.s4, "p_631->g_77.s4", print_hash_value);
    transparent_crc(p_631->g_77.s5, "p_631->g_77.s5", print_hash_value);
    transparent_crc(p_631->g_77.s6, "p_631->g_77.s6", print_hash_value);
    transparent_crc(p_631->g_77.s7, "p_631->g_77.s7", print_hash_value);
    transparent_crc(p_631->g_77.s8, "p_631->g_77.s8", print_hash_value);
    transparent_crc(p_631->g_77.s9, "p_631->g_77.s9", print_hash_value);
    transparent_crc(p_631->g_77.sa, "p_631->g_77.sa", print_hash_value);
    transparent_crc(p_631->g_77.sb, "p_631->g_77.sb", print_hash_value);
    transparent_crc(p_631->g_77.sc, "p_631->g_77.sc", print_hash_value);
    transparent_crc(p_631->g_77.sd, "p_631->g_77.sd", print_hash_value);
    transparent_crc(p_631->g_77.se, "p_631->g_77.se", print_hash_value);
    transparent_crc(p_631->g_77.sf, "p_631->g_77.sf", print_hash_value);
    transparent_crc(p_631->g_93.x, "p_631->g_93.x", print_hash_value);
    transparent_crc(p_631->g_93.y, "p_631->g_93.y", print_hash_value);
    transparent_crc(p_631->g_93.z, "p_631->g_93.z", print_hash_value);
    transparent_crc(p_631->g_93.w, "p_631->g_93.w", print_hash_value);
    transparent_crc(p_631->g_114.x, "p_631->g_114.x", print_hash_value);
    transparent_crc(p_631->g_114.y, "p_631->g_114.y", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_631->g_115[i][j].f0, "p_631->g_115[i][j].f0", print_hash_value);
            transparent_crc(p_631->g_115[i][j].f1, "p_631->g_115[i][j].f1", print_hash_value);
            transparent_crc(p_631->g_115[i][j].f2, "p_631->g_115[i][j].f2", print_hash_value);
            transparent_crc(p_631->g_115[i][j].f3, "p_631->g_115[i][j].f3", print_hash_value);
            transparent_crc(p_631->g_115[i][j].f4, "p_631->g_115[i][j].f4", print_hash_value);
            transparent_crc(p_631->g_115[i][j].f5, "p_631->g_115[i][j].f5", print_hash_value);

        }
    }
    transparent_crc(p_631->g_148.s0, "p_631->g_148.s0", print_hash_value);
    transparent_crc(p_631->g_148.s1, "p_631->g_148.s1", print_hash_value);
    transparent_crc(p_631->g_148.s2, "p_631->g_148.s2", print_hash_value);
    transparent_crc(p_631->g_148.s3, "p_631->g_148.s3", print_hash_value);
    transparent_crc(p_631->g_148.s4, "p_631->g_148.s4", print_hash_value);
    transparent_crc(p_631->g_148.s5, "p_631->g_148.s5", print_hash_value);
    transparent_crc(p_631->g_148.s6, "p_631->g_148.s6", print_hash_value);
    transparent_crc(p_631->g_148.s7, "p_631->g_148.s7", print_hash_value);
    transparent_crc(p_631->g_151.s0, "p_631->g_151.s0", print_hash_value);
    transparent_crc(p_631->g_151.s1, "p_631->g_151.s1", print_hash_value);
    transparent_crc(p_631->g_151.s2, "p_631->g_151.s2", print_hash_value);
    transparent_crc(p_631->g_151.s3, "p_631->g_151.s3", print_hash_value);
    transparent_crc(p_631->g_151.s4, "p_631->g_151.s4", print_hash_value);
    transparent_crc(p_631->g_151.s5, "p_631->g_151.s5", print_hash_value);
    transparent_crc(p_631->g_151.s6, "p_631->g_151.s6", print_hash_value);
    transparent_crc(p_631->g_151.s7, "p_631->g_151.s7", print_hash_value);
    transparent_crc(p_631->g_151.s8, "p_631->g_151.s8", print_hash_value);
    transparent_crc(p_631->g_151.s9, "p_631->g_151.s9", print_hash_value);
    transparent_crc(p_631->g_151.sa, "p_631->g_151.sa", print_hash_value);
    transparent_crc(p_631->g_151.sb, "p_631->g_151.sb", print_hash_value);
    transparent_crc(p_631->g_151.sc, "p_631->g_151.sc", print_hash_value);
    transparent_crc(p_631->g_151.sd, "p_631->g_151.sd", print_hash_value);
    transparent_crc(p_631->g_151.se, "p_631->g_151.se", print_hash_value);
    transparent_crc(p_631->g_151.sf, "p_631->g_151.sf", print_hash_value);
    transparent_crc(p_631->g_153.x, "p_631->g_153.x", print_hash_value);
    transparent_crc(p_631->g_153.y, "p_631->g_153.y", print_hash_value);
    transparent_crc(p_631->g_154.s0, "p_631->g_154.s0", print_hash_value);
    transparent_crc(p_631->g_154.s1, "p_631->g_154.s1", print_hash_value);
    transparent_crc(p_631->g_154.s2, "p_631->g_154.s2", print_hash_value);
    transparent_crc(p_631->g_154.s3, "p_631->g_154.s3", print_hash_value);
    transparent_crc(p_631->g_154.s4, "p_631->g_154.s4", print_hash_value);
    transparent_crc(p_631->g_154.s5, "p_631->g_154.s5", print_hash_value);
    transparent_crc(p_631->g_154.s6, "p_631->g_154.s6", print_hash_value);
    transparent_crc(p_631->g_154.s7, "p_631->g_154.s7", print_hash_value);
    transparent_crc(p_631->g_154.s8, "p_631->g_154.s8", print_hash_value);
    transparent_crc(p_631->g_154.s9, "p_631->g_154.s9", print_hash_value);
    transparent_crc(p_631->g_154.sa, "p_631->g_154.sa", print_hash_value);
    transparent_crc(p_631->g_154.sb, "p_631->g_154.sb", print_hash_value);
    transparent_crc(p_631->g_154.sc, "p_631->g_154.sc", print_hash_value);
    transparent_crc(p_631->g_154.sd, "p_631->g_154.sd", print_hash_value);
    transparent_crc(p_631->g_154.se, "p_631->g_154.se", print_hash_value);
    transparent_crc(p_631->g_154.sf, "p_631->g_154.sf", print_hash_value);
    transparent_crc(p_631->g_199, "p_631->g_199", print_hash_value);
    transparent_crc(p_631->g_204.f0, "p_631->g_204.f0", print_hash_value);
    transparent_crc(p_631->g_204.f1, "p_631->g_204.f1", print_hash_value);
    transparent_crc(p_631->g_204.f2, "p_631->g_204.f2", print_hash_value);
    transparent_crc(p_631->g_204.f3, "p_631->g_204.f3", print_hash_value);
    transparent_crc(p_631->g_204.f4, "p_631->g_204.f4", print_hash_value);
    transparent_crc(p_631->g_204.f5, "p_631->g_204.f5", print_hash_value);
    transparent_crc(p_631->g_206.f0, "p_631->g_206.f0", print_hash_value);
    transparent_crc(p_631->g_206.f1, "p_631->g_206.f1", print_hash_value);
    transparent_crc(p_631->g_206.f2, "p_631->g_206.f2", print_hash_value);
    transparent_crc(p_631->g_206.f3, "p_631->g_206.f3", print_hash_value);
    transparent_crc(p_631->g_206.f4, "p_631->g_206.f4", print_hash_value);
    transparent_crc(p_631->g_206.f5, "p_631->g_206.f5", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_631->g_215[i].f0, "p_631->g_215[i].f0", print_hash_value);
        transparent_crc(p_631->g_215[i].f1, "p_631->g_215[i].f1", print_hash_value);
        transparent_crc(p_631->g_215[i].f2, "p_631->g_215[i].f2", print_hash_value);
        transparent_crc(p_631->g_215[i].f3, "p_631->g_215[i].f3", print_hash_value);
        transparent_crc(p_631->g_215[i].f4, "p_631->g_215[i].f4", print_hash_value);
        transparent_crc(p_631->g_215[i].f5, "p_631->g_215[i].f5", print_hash_value);

    }
    transparent_crc(p_631->g_241.f0, "p_631->g_241.f0", print_hash_value);
    transparent_crc(p_631->g_265, "p_631->g_265", print_hash_value);
    transparent_crc(p_631->g_297, "p_631->g_297", print_hash_value);
    transparent_crc(p_631->g_315, "p_631->g_315", print_hash_value);
    transparent_crc(p_631->g_338.s0, "p_631->g_338.s0", print_hash_value);
    transparent_crc(p_631->g_338.s1, "p_631->g_338.s1", print_hash_value);
    transparent_crc(p_631->g_338.s2, "p_631->g_338.s2", print_hash_value);
    transparent_crc(p_631->g_338.s3, "p_631->g_338.s3", print_hash_value);
    transparent_crc(p_631->g_338.s4, "p_631->g_338.s4", print_hash_value);
    transparent_crc(p_631->g_338.s5, "p_631->g_338.s5", print_hash_value);
    transparent_crc(p_631->g_338.s6, "p_631->g_338.s6", print_hash_value);
    transparent_crc(p_631->g_338.s7, "p_631->g_338.s7", print_hash_value);
    transparent_crc(p_631->g_339.s0, "p_631->g_339.s0", print_hash_value);
    transparent_crc(p_631->g_339.s1, "p_631->g_339.s1", print_hash_value);
    transparent_crc(p_631->g_339.s2, "p_631->g_339.s2", print_hash_value);
    transparent_crc(p_631->g_339.s3, "p_631->g_339.s3", print_hash_value);
    transparent_crc(p_631->g_339.s4, "p_631->g_339.s4", print_hash_value);
    transparent_crc(p_631->g_339.s5, "p_631->g_339.s5", print_hash_value);
    transparent_crc(p_631->g_339.s6, "p_631->g_339.s6", print_hash_value);
    transparent_crc(p_631->g_339.s7, "p_631->g_339.s7", print_hash_value);
    transparent_crc(p_631->g_357, "p_631->g_357", print_hash_value);
    transparent_crc(p_631->g_359.f0, "p_631->g_359.f0", print_hash_value);
    transparent_crc(p_631->g_393.f0, "p_631->g_393.f0", print_hash_value);
    transparent_crc(p_631->g_393.f1, "p_631->g_393.f1", print_hash_value);
    transparent_crc(p_631->g_393.f2, "p_631->g_393.f2", print_hash_value);
    transparent_crc(p_631->g_393.f3, "p_631->g_393.f3", print_hash_value);
    transparent_crc(p_631->g_393.f4, "p_631->g_393.f4", print_hash_value);
    transparent_crc(p_631->g_393.f5, "p_631->g_393.f5", print_hash_value);
    transparent_crc(p_631->g_454.x, "p_631->g_454.x", print_hash_value);
    transparent_crc(p_631->g_454.y, "p_631->g_454.y", print_hash_value);
    transparent_crc(p_631->g_454.z, "p_631->g_454.z", print_hash_value);
    transparent_crc(p_631->g_454.w, "p_631->g_454.w", print_hash_value);
    transparent_crc(p_631->g_460.x, "p_631->g_460.x", print_hash_value);
    transparent_crc(p_631->g_460.y, "p_631->g_460.y", print_hash_value);
    transparent_crc(p_631->g_460.z, "p_631->g_460.z", print_hash_value);
    transparent_crc(p_631->g_460.w, "p_631->g_460.w", print_hash_value);
    transparent_crc(p_631->g_496.x, "p_631->g_496.x", print_hash_value);
    transparent_crc(p_631->g_496.y, "p_631->g_496.y", print_hash_value);
    transparent_crc(p_631->g_513.s0, "p_631->g_513.s0", print_hash_value);
    transparent_crc(p_631->g_513.s1, "p_631->g_513.s1", print_hash_value);
    transparent_crc(p_631->g_513.s2, "p_631->g_513.s2", print_hash_value);
    transparent_crc(p_631->g_513.s3, "p_631->g_513.s3", print_hash_value);
    transparent_crc(p_631->g_513.s4, "p_631->g_513.s4", print_hash_value);
    transparent_crc(p_631->g_513.s5, "p_631->g_513.s5", print_hash_value);
    transparent_crc(p_631->g_513.s6, "p_631->g_513.s6", print_hash_value);
    transparent_crc(p_631->g_513.s7, "p_631->g_513.s7", print_hash_value);
    transparent_crc(p_631->g_513.s8, "p_631->g_513.s8", print_hash_value);
    transparent_crc(p_631->g_513.s9, "p_631->g_513.s9", print_hash_value);
    transparent_crc(p_631->g_513.sa, "p_631->g_513.sa", print_hash_value);
    transparent_crc(p_631->g_513.sb, "p_631->g_513.sb", print_hash_value);
    transparent_crc(p_631->g_513.sc, "p_631->g_513.sc", print_hash_value);
    transparent_crc(p_631->g_513.sd, "p_631->g_513.sd", print_hash_value);
    transparent_crc(p_631->g_513.se, "p_631->g_513.se", print_hash_value);
    transparent_crc(p_631->g_513.sf, "p_631->g_513.sf", print_hash_value);
    transparent_crc(p_631->g_517.f0, "p_631->g_517.f0", print_hash_value);
    transparent_crc(p_631->g_517.f1, "p_631->g_517.f1", print_hash_value);
    transparent_crc(p_631->g_517.f2, "p_631->g_517.f2", print_hash_value);
    transparent_crc(p_631->g_517.f3, "p_631->g_517.f3", print_hash_value);
    transparent_crc(p_631->g_517.f4, "p_631->g_517.f4", print_hash_value);
    transparent_crc(p_631->g_517.f5, "p_631->g_517.f5", print_hash_value);
    transparent_crc(p_631->g_519.f0, "p_631->g_519.f0", print_hash_value);
    transparent_crc(p_631->g_519.f1, "p_631->g_519.f1", print_hash_value);
    transparent_crc(p_631->g_519.f2, "p_631->g_519.f2", print_hash_value);
    transparent_crc(p_631->g_519.f3, "p_631->g_519.f3", print_hash_value);
    transparent_crc(p_631->g_519.f4, "p_631->g_519.f4", print_hash_value);
    transparent_crc(p_631->g_519.f5, "p_631->g_519.f5", print_hash_value);
    transparent_crc(p_631->g_521.x, "p_631->g_521.x", print_hash_value);
    transparent_crc(p_631->g_521.y, "p_631->g_521.y", print_hash_value);
    transparent_crc(p_631->g_620.x, "p_631->g_620.x", print_hash_value);
    transparent_crc(p_631->g_620.y, "p_631->g_620.y", print_hash_value);
    transparent_crc(p_631->g_625.x, "p_631->g_625.x", print_hash_value);
    transparent_crc(p_631->g_625.y, "p_631->g_625.y", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
