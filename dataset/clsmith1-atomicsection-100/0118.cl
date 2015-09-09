// --atomics 62 ---fake_divergence -g 2,16,98 -l 1,1,14
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


// Seed: 118

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int32_t  f0;
   volatile int64_t  f1;
   int32_t  f2;
   uint32_t  f3;
   volatile uint64_t  f4;
   uint32_t  f5;
   int32_t  f6;
   volatile int32_t  f7;
};

struct S1 {
   int32_t  f0;
   int32_t  f1;
   uint64_t  f2;
   int64_t  f3;
   uint32_t  f4;
   uint32_t  f5;
};

union U2 {
   uint8_t  f0;
   struct S0  f1;
   int8_t  f2;
   struct S1  f3;
};

struct S3 {
    volatile uint64_t g_13;
    volatile int32_t g_15;
    volatile int32_t *g_14;
    int32_t g_22[7];
    int32_t *g_21;
    int32_t *g_36;
    volatile int32_t g_56[4];
    int32_t g_57;
    uint16_t g_74;
    int64_t g_79;
    int64_t g_81[10][9][2];
    struct S1 g_117;
    struct S1 *g_116;
    uint8_t g_119;
    int64_t *g_129;
    struct S0 g_143;
    uint64_t g_200;
    volatile uint16_t g_224;
    volatile uint64_t *g_229[9];
    volatile uint64_t ** volatile g_228[9][7][4];
    volatile struct S0 g_240;
    volatile union U2 g_251;
    int32_t ** volatile g_252;
    int16_t g_261[1][5];
    uint64_t g_274;
    uint8_t g_298;
    volatile union U2 *g_305;
    volatile union U2 ** volatile g_304;
    union U2 g_334;
    volatile struct S0 g_341;
    int8_t g_359[5][9][5];
    volatile uint64_t g_392;
    struct S0 g_395;
    struct S0 g_409[7];
    struct S0 g_426;
    int32_t *g_429;
    volatile int16_t g_435;
    int32_t ** volatile g_439[6];
    int32_t ** volatile g_440;
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
int32_t  func_1(struct S3 * p_441);
int32_t * func_2(uint32_t  p_3, uint64_t  p_4, int32_t * p_5, uint8_t  p_6, int32_t * p_7, struct S3 * p_441);
struct S0  func_16(int32_t * p_17, uint8_t  p_18, uint32_t  p_19, int32_t * p_20, struct S3 * p_441);
int32_t * func_23(uint32_t  p_24, struct S3 * p_441);
int32_t * func_25(int32_t * p_26, uint32_t  p_27, struct S3 * p_441);
int32_t * func_42(uint16_t  p_43, int32_t * p_44, uint16_t  p_45, struct S3 * p_441);
int32_t * func_47(int32_t ** p_48, int32_t ** p_49, uint8_t  p_50, int8_t  p_51, struct S3 * p_441);
int32_t ** func_52(int64_t  p_53, struct S3 * p_441);
int32_t  func_62(int32_t ** p_63, int32_t * p_64, struct S1  p_65, struct S3 * p_441);
int32_t ** func_68(uint32_t  p_69, struct S1 * p_70, struct S3 * p_441);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_441->g_13 p_441->g_14 p_441->g_21 p_441->g_22 p_441->g_15 p_441->g_57 p_441->g_74 p_441->g_79 p_441->g_81 p_441->g_56 p_441->g_116 p_441->g_119 p_441->g_117.f3 p_441->g_117.f5 p_441->g_36 p_441->g_143 p_441->g_117.f1 p_441->g_240 p_441->g_200 p_441->g_117.f2 p_441->g_251 p_441->g_252 p_441->g_298 p_441->g_304 p_441->g_261 p_441->g_117.f4 p_441->g_341 p_441->g_334.f3.f2 p_441->g_305 p_441->g_392 p_441->g_395 p_441->g_409 p_441->g_426 p_441->g_429 p_441->g_440
 * writes: p_441->g_15 p_441->g_21 p_441->g_36 p_441->g_57 p_441->g_74 p_441->g_79 p_441->g_81 p_441->g_119 p_441->g_129 p_441->g_22 p_441->g_143.f2 p_441->g_117.f2 p_441->g_117.f0 p_441->g_143.f0 p_441->g_143.f6 p_441->g_274 p_441->g_298 p_441->g_143.f5 p_441->g_305 p_441->g_117.f4 p_441->g_240 p_441->g_334.f3.f2 p_441->g_392 p_441->g_395.f6 p_441->g_409.f2
 */
int32_t  func_1(struct S3 * p_441)
{ /* block id: 4 */
    uint32_t l_8[4][10][2] = {{{4294967295UL,0UL},{4294967295UL,0UL},{4294967295UL,0UL},{4294967295UL,0UL},{4294967295UL,0UL},{4294967295UL,0UL},{4294967295UL,0UL},{4294967295UL,0UL},{4294967295UL,0UL},{4294967295UL,0UL}},{{4294967295UL,0UL},{4294967295UL,0UL},{4294967295UL,0UL},{4294967295UL,0UL},{4294967295UL,0UL},{4294967295UL,0UL},{4294967295UL,0UL},{4294967295UL,0UL},{4294967295UL,0UL},{4294967295UL,0UL}},{{4294967295UL,0UL},{4294967295UL,0UL},{4294967295UL,0UL},{4294967295UL,0UL},{4294967295UL,0UL},{4294967295UL,0UL},{4294967295UL,0UL},{4294967295UL,0UL},{4294967295UL,0UL},{4294967295UL,0UL}},{{4294967295UL,0UL},{4294967295UL,0UL},{4294967295UL,0UL},{4294967295UL,0UL},{4294967295UL,0UL},{4294967295UL,0UL},{4294967295UL,0UL},{4294967295UL,0UL},{4294967295UL,0UL},{4294967295UL,0UL}}};
    int32_t *l_427 = &p_441->g_409[5].f2;
    int64_t l_428 = (-9L);
    int i, j, k;
    (*p_441->g_440) = func_2(l_8[0][1][0], ((safe_rshift_func_uint8_t_u_s((safe_rshift_func_int8_t_s_s(p_441->g_13, 0)), (((void*)0 == p_441->g_14) <= FAKE_DIVERGE(p_441->global_2_offset, get_global_id(2), 10)))) , (func_16(p_441->g_21, l_8[0][1][0], p_441->g_22[6], &p_441->g_22[5], p_441) , l_8[0][1][0])), l_427, l_428, p_441->g_429, p_441);
    return (*p_441->g_429);
}


/* ------------------------------------------ */
/* 
 * reads : p_441->g_395.f2 p_441->g_409.f2 p_441->g_252 p_441->g_36
 * writes: p_441->g_409.f2
 */
int32_t * func_2(uint32_t  p_3, uint64_t  p_4, int32_t * p_5, uint8_t  p_6, int32_t * p_7, struct S3 * p_441)
{ /* block id: 172 */
    int32_t *l_430 = &p_441->g_117.f0;
    int32_t *l_431 = &p_441->g_395.f0;
    int32_t l_432 = (-1L);
    int32_t *l_433 = (void*)0;
    int32_t *l_434[7] = {&p_441->g_22[2],&p_441->g_22[3],&p_441->g_22[2],&p_441->g_22[2],&p_441->g_22[3],&p_441->g_22[2],&p_441->g_22[2]};
    uint32_t l_436 = 1UL;
    int i;
    l_436++;
    (*p_5) ^= (*p_7);
    return (*p_441->g_252);
}


/* ------------------------------------------ */
/* 
 * reads : p_441->g_15 p_441->g_13 p_441->g_14 p_441->g_57 p_441->g_22 p_441->g_74 p_441->g_79 p_441->g_81 p_441->g_56 p_441->g_116 p_441->g_119 p_441->g_117.f3 p_441->g_117.f5 p_441->g_36 p_441->g_143 p_441->g_117.f1 p_441->g_240 p_441->g_200 p_441->g_117.f2 p_441->g_251 p_441->g_252 p_441->g_298 p_441->g_304 p_441->g_261 p_441->g_117.f4 p_441->g_341 p_441->g_334.f3.f2 p_441->g_305 p_441->g_392 p_441->g_395 p_441->g_409 p_441->g_426
 * writes: p_441->g_15 p_441->g_21 p_441->g_36 p_441->g_57 p_441->g_74 p_441->g_79 p_441->g_81 p_441->g_119 p_441->g_129 p_441->g_22 p_441->g_143.f2 p_441->g_117.f2 p_441->g_117.f0 p_441->g_143.f0 p_441->g_143.f6 p_441->g_274 p_441->g_298 p_441->g_143.f5 p_441->g_305 p_441->g_117.f4 p_441->g_240 p_441->g_334.f3.f2 p_441->g_392 p_441->g_395.f6
 */
struct S0  func_16(int32_t * p_17, uint8_t  p_18, uint32_t  p_19, int32_t * p_20, struct S3 * p_441)
{ /* block id: 5 */
    int32_t *l_28 = &p_441->g_22[4];
    int32_t **l_34 = (void*)0;
    int32_t **l_35 = &p_441->g_21;
    int32_t l_385 = 0x35F45F1BL;
    int32_t l_386[1];
    int8_t l_390 = (-5L);
    uint16_t l_406 = 0x0D9CL;
    int32_t *l_410 = &l_386[0];
    int32_t *l_411 = &p_441->g_117.f0;
    int32_t *l_412 = &p_441->g_395.f2;
    int32_t *l_413 = &p_441->g_409[5].f2;
    int32_t *l_414 = &p_441->g_22[3];
    int32_t *l_415 = &p_441->g_409[5].f2;
    int32_t *l_416 = (void*)0;
    int32_t *l_417 = (void*)0;
    int32_t *l_418 = &p_441->g_395.f2;
    int32_t *l_419 = &l_386[0];
    int32_t *l_420 = &p_441->g_334.f3.f0;
    int32_t *l_421[8] = {&p_441->g_22[4],&p_441->g_22[4],&p_441->g_22[4],&p_441->g_22[4],&p_441->g_22[4],&p_441->g_22[4],&p_441->g_22[4],&p_441->g_22[4]};
    int8_t l_422 = (-10L);
    uint32_t l_423 = 4294967295UL;
    int i;
    for (i = 0; i < 1; i++)
        l_386[i] = (-1L);
    (*l_35) = func_23(((l_28 = func_25(l_28, p_441->g_15, p_441)) == (p_441->g_36 = ((*l_35) = p_20))), p_441);
    for (p_18 = (-21); (p_18 > 11); p_18 = safe_add_func_uint32_t_u_u(p_18, 6))
    { /* block id: 19 */
        uint8_t l_46 = 255UL;
        int32_t l_383 = 0x74EB0F7EL;
        int32_t l_384 = 0x74D47D5DL;
        int32_t l_387 = 9L;
        int32_t l_388 = 7L;
        int32_t l_389[3][2];
        int16_t l_403 = 0x0F61L;
        int16_t l_405 = 1L;
        int i, j;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 2; j++)
                l_389[i][j] = 0x2C1DB259L;
        }
        for (p_19 = 0; (p_19 >= 42); ++p_19)
        { /* block id: 22 */
            uint64_t *l_273 = &p_441->g_274;
            int32_t *l_382[4][4][1] = {{{&p_441->g_143.f2},{&p_441->g_143.f2},{&p_441->g_143.f2},{&p_441->g_143.f2}},{{&p_441->g_143.f2},{&p_441->g_143.f2},{&p_441->g_143.f2},{&p_441->g_143.f2}},{{&p_441->g_143.f2},{&p_441->g_143.f2},{&p_441->g_143.f2},{&p_441->g_143.f2}},{{&p_441->g_143.f2},{&p_441->g_143.f2},{&p_441->g_143.f2},{&p_441->g_143.f2}}};
            int16_t l_391 = 1L;
            int i, j, k;
            (*l_35) = func_42(l_46, func_47((p_18 , func_52(p_18, p_441)), &p_17, (((((*l_273) = 0x30573A155E9397F1L) >= p_441->g_117.f5) != 0x23L) < (safe_div_func_int16_t_s_s((p_19 == p_441->g_117.f1), p_441->g_117.f3))), l_46, p_441), p_441->g_143.f3, p_441);
            p_441->g_392++;
            (*l_28) = (*p_20);
            return p_441->g_395;
        }
        for (p_441->g_395.f6 = 15; (p_441->g_395.f6 <= (-6)); --p_441->g_395.f6)
        { /* block id: 165 */
            int32_t *l_398 = &l_383;
            int32_t l_399 = (-1L);
            int32_t *l_400 = &l_386[0];
            int32_t *l_401[1];
            int32_t l_402 = 0x732DA521L;
            int64_t l_404 = 0L;
            int i;
            for (i = 0; i < 1; i++)
                l_401[i] = (void*)0;
            ++l_406;
            return p_441->g_409[5];
        }
    }
    l_423--;
    return p_441->g_426;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_23(uint32_t  p_24, struct S3 * p_441)
{ /* block id: 14 */
    int32_t *l_37 = (void*)0;
    return l_37;
}


/* ------------------------------------------ */
/* 
 * reads : p_441->g_13 p_441->g_14
 * writes: p_441->g_15
 */
int32_t * func_25(int32_t * p_26, uint32_t  p_27, struct S3 * p_441)
{ /* block id: 6 */
    int32_t *l_31 = &p_441->g_22[4];
    int32_t **l_32 = (void*)0;
    int32_t **l_33 = &l_31;
    (*p_441->g_14) = (safe_lshift_func_int16_t_s_s(p_441->g_13, 0));
    p_26 = ((*l_33) = l_31);
    return &p_441->g_22[3];
}


/* ------------------------------------------ */
/* 
 * reads : p_441->g_143.f5 p_441->g_304 p_441->g_14 p_441->g_15 p_441->g_74 p_441->g_261 p_441->g_252 p_441->g_36 p_441->g_79 p_441->g_117.f4 p_441->g_119 p_441->g_341 p_441->g_334.f3.f2 p_441->g_13 p_441->g_240.f3 p_441->g_305 p_441->g_298
 * writes: p_441->g_143.f5 p_441->g_305 p_441->g_74 p_441->g_119 p_441->g_117.f4 p_441->g_15 p_441->g_240 p_441->g_334.f3.f2 p_441->g_79 p_441->g_298 p_441->g_22
 */
int32_t * func_42(uint16_t  p_43, int32_t * p_44, uint16_t  p_45, struct S3 * p_441)
{ /* block id: 120 */
    uint64_t l_312 = 0xE9553B120D8C35D4L;
    struct S1 **l_324 = &p_441->g_116;
    int32_t l_326 = 0x0CB1E604L;
    int32_t *l_327 = &p_441->g_22[1];
    union U2 *l_333[10][8] = {{&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334},{&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334},{&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334},{&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334},{&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334},{&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334},{&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334},{&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334},{&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334},{&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334,&p_441->g_334}};
    uint32_t *l_335[5][5] = {{(void*)0,&p_441->g_143.f5,(void*)0,(void*)0,&p_441->g_143.f5},{(void*)0,&p_441->g_143.f5,(void*)0,(void*)0,&p_441->g_143.f5},{(void*)0,&p_441->g_143.f5,(void*)0,(void*)0,&p_441->g_143.f5},{(void*)0,&p_441->g_143.f5,(void*)0,(void*)0,&p_441->g_143.f5},{(void*)0,&p_441->g_143.f5,(void*)0,(void*)0,&p_441->g_143.f5}};
    uint16_t *l_337[10][1][3] = {{{&p_441->g_74,&p_441->g_74,&p_441->g_74}},{{&p_441->g_74,&p_441->g_74,&p_441->g_74}},{{&p_441->g_74,&p_441->g_74,&p_441->g_74}},{{&p_441->g_74,&p_441->g_74,&p_441->g_74}},{{&p_441->g_74,&p_441->g_74,&p_441->g_74}},{{&p_441->g_74,&p_441->g_74,&p_441->g_74}},{{&p_441->g_74,&p_441->g_74,&p_441->g_74}},{{&p_441->g_74,&p_441->g_74,&p_441->g_74}},{{&p_441->g_74,&p_441->g_74,&p_441->g_74}},{{&p_441->g_74,&p_441->g_74,&p_441->g_74}}};
    uint16_t **l_336 = &l_337[1][0][0];
    int8_t l_371 = 6L;
    int32_t *l_381 = &p_441->g_57;
    int i, j, k;
    for (p_441->g_143.f5 = (-16); (p_441->g_143.f5 < 44); p_441->g_143.f5++)
    { /* block id: 123 */
        uint16_t *l_315 = &p_441->g_74;
        uint8_t *l_320 = &p_441->g_119;
        int32_t l_323 = (-3L);
        uint64_t *l_325[8][4] = {{&p_441->g_274,&p_441->g_200,&p_441->g_274,&p_441->g_200},{&p_441->g_274,&p_441->g_200,&p_441->g_274,&p_441->g_200},{&p_441->g_274,&p_441->g_200,&p_441->g_274,&p_441->g_200},{&p_441->g_274,&p_441->g_200,&p_441->g_274,&p_441->g_200},{&p_441->g_274,&p_441->g_200,&p_441->g_274,&p_441->g_200},{&p_441->g_274,&p_441->g_200,&p_441->g_274,&p_441->g_200},{&p_441->g_274,&p_441->g_200,&p_441->g_274,&p_441->g_200},{&p_441->g_274,&p_441->g_200,&p_441->g_274,&p_441->g_200}};
        uint32_t l_328 = 4294967295UL;
        int i, j;
        (*p_441->g_304) = &p_441->g_251;
        l_327 = (((safe_mul_func_int16_t_s_s(((((safe_sub_func_int64_t_s_s((safe_div_func_int64_t_s_s(p_45, l_312)), (l_326 = ((safe_mul_func_int16_t_s_s((+p_43), ((*p_441->g_14) == (((*l_315) |= p_43) | (((*l_320) = (safe_sub_func_int64_t_s_s(p_441->g_261[0][1], (!p_45)))) >= ((((safe_sub_func_int8_t_s_s(((l_323 != (((!p_45) , (void*)0) == l_324)) != p_45), 0x49L)) , 1L) > 0L) < 0L)))))) , p_45)))) > l_312) < l_323) | 0x4BL), 0x467EL)) & 0L) , (*p_441->g_252));
        if (l_328)
            break;
    }
    (*p_441->g_14) = (&p_441->g_224 != (((-1L) & (safe_mod_func_uint16_t_u_u(65534UL, (safe_rshift_func_int16_t_s_s(0x25F8L, p_441->g_79))))) , ((p_441->g_117.f4 ^= ((void*)0 == l_333[3][3])) , ((*l_336) = &p_45))));
    for (p_441->g_119 = 3; (p_441->g_119 == 24); p_441->g_119 = safe_add_func_int64_t_s_s(p_441->g_119, 3))
    { /* block id: 136 */
        int16_t l_340 = 0x0DD6L;
        volatile struct S0 *l_342 = (void*)0;
        volatile struct S0 *l_343 = (void*)0;
        volatile struct S0 *l_344 = &p_441->g_240;
        if (l_340)
            break;
        (*l_344) = p_441->g_341;
    }
    for (p_441->g_334.f3.f2 = (-5); (p_441->g_334.f3.f2 < 11); p_441->g_334.f3.f2 = safe_add_func_int16_t_s_s(p_441->g_334.f3.f2, 7))
    { /* block id: 142 */
        int64_t *l_353 = &p_441->g_79;
        int8_t *l_358[3][2] = {{(void*)0,&p_441->g_359[1][4][4]},{(void*)0,&p_441->g_359[1][4][4]},{(void*)0,&p_441->g_359[1][4][4]}};
        int32_t l_360[1][2][5];
        uint8_t *l_361 = &p_441->g_298;
        int32_t l_362[1][9][8] = {{{0x23E21C75L,4L,4L,0x23E21C75L,(-1L),(-1L),0x5AFF75BCL,0x25606815L},{0x23E21C75L,4L,4L,0x23E21C75L,(-1L),(-1L),0x5AFF75BCL,0x25606815L},{0x23E21C75L,4L,4L,0x23E21C75L,(-1L),(-1L),0x5AFF75BCL,0x25606815L},{0x23E21C75L,4L,4L,0x23E21C75L,(-1L),(-1L),0x5AFF75BCL,0x25606815L},{0x23E21C75L,4L,4L,0x23E21C75L,(-1L),(-1L),0x5AFF75BCL,0x25606815L},{0x23E21C75L,4L,4L,0x23E21C75L,(-1L),(-1L),0x5AFF75BCL,0x25606815L},{0x23E21C75L,4L,4L,0x23E21C75L,(-1L),(-1L),0x5AFF75BCL,0x25606815L},{0x23E21C75L,4L,4L,0x23E21C75L,(-1L),(-1L),0x5AFF75BCL,0x25606815L},{0x23E21C75L,4L,4L,0x23E21C75L,(-1L),(-1L),0x5AFF75BCL,0x25606815L}}};
        int32_t *l_374 = &p_441->g_22[4];
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 2; j++)
            {
                for (k = 0; k < 5; k++)
                    l_360[i][j][k] = (-3L);
            }
        }
        l_362[0][8][4] |= (((safe_sub_func_uint8_t_u_u(p_441->g_13, p_43)) || (safe_div_func_uint8_t_u_u(((*l_361) = (safe_add_func_int8_t_s_s(p_441->g_240.f3, (l_360[0][1][2] = ((((6L != 0x81F29ADAL) | ((*l_353) = ((GROUP_DIVERGE(2, 1) , p_43) && ((void*)0 != p_441->g_305)))) <= (safe_lshift_func_uint16_t_u_s((safe_div_func_uint64_t_u_u(p_45, FAKE_DIVERGE(p_441->global_1_offset, get_global_id(1), 10))), 5))) < 0x7D46919615D34626L))))), p_45))) && p_441->g_341.f4);
        (*p_441->g_14) = ((safe_mul_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_u(l_362[0][8][4], 4)), (l_360[0][1][0] && ((*l_374) = (safe_sub_func_int8_t_s_s((safe_div_func_uint32_t_u_u(l_362[0][3][0], l_371)), (((*l_361)++) < p_45))))))) < (safe_add_func_int64_t_s_s((l_353 == (void*)0), 0x2A1F57B0019C1D5EL)));
        for (p_45 = 26; (p_45 != 44); p_45++)
        { /* block id: 152 */
            union U2 **l_379 = &l_333[5][6];
            int32_t **l_380 = &l_327;
            (*l_379) = l_333[3][3];
            (*l_380) = (void*)0;
        }
    }
    return l_381;
}


/* ------------------------------------------ */
/* 
 * reads : p_441->g_117.f3 p_441->g_14 p_441->g_15 p_441->g_22 p_441->g_298 p_441->g_252 p_441->g_36
 * writes: p_441->g_22 p_441->g_298
 */
int32_t * func_47(int32_t ** p_48, int32_t ** p_49, uint8_t  p_50, int8_t  p_51, struct S3 * p_441)
{ /* block id: 114 */
    int64_t l_279 = 0x5D96E66771D121B4L;
    uint64_t **l_282 = (void*)0;
    int64_t **l_285[2];
    struct S1 *l_286 = &p_441->g_117;
    int32_t l_287 = 1L;
    int32_t *l_288 = &p_441->g_57;
    int32_t *l_289 = &p_441->g_143.f2;
    int32_t *l_290 = &p_441->g_22[2];
    int32_t l_291 = 0x0129CC63L;
    int32_t *l_292 = &p_441->g_22[0];
    int32_t *l_293 = &p_441->g_117.f0;
    int32_t *l_294 = (void*)0;
    int32_t *l_295 = &p_441->g_57;
    int32_t l_296 = 0x2F6F2049L;
    int32_t *l_297[7] = {&l_287,&l_287,&l_287,&l_287,&l_287,&l_287,&l_287};
    struct S1 **l_301 = &l_286;
    int i;
    for (i = 0; i < 2; i++)
        l_285[i] = &p_441->g_129;
    (**p_49) &= ((safe_lshift_func_uint8_t_u_u((l_279 & (safe_sub_func_int8_t_s_s((l_282 != (void*)0), (safe_div_func_int32_t_s_s(((((p_50 ^ (l_285[0] != l_285[0])) , l_286) == &p_441->g_117) ^ ((p_441->g_117.f3 | p_51) < p_50)), l_279))))), 0)) < (*p_441->g_14));
    (**p_49) = l_279;
    p_441->g_298++;
    (*l_301) = l_286;
    return (*p_441->g_252);
}


/* ------------------------------------------ */
/* 
 * reads : p_441->g_57 p_441->g_22 p_441->g_74 p_441->g_79 p_441->g_81 p_441->g_56 p_441->g_116 p_441->g_119 p_441->g_117.f3 p_441->g_117.f5 p_441->g_36 p_441->g_143 p_441->g_117.f1 p_441->g_14 p_441->g_15 p_441->g_240 p_441->g_200 p_441->g_117.f2 p_441->g_251 p_441->g_13 p_441->g_252
 * writes: p_441->g_57 p_441->g_74 p_441->g_79 p_441->g_81 p_441->g_119 p_441->g_129 p_441->g_22 p_441->g_143.f2 p_441->g_117.f2 p_441->g_15 p_441->g_117.f0 p_441->g_143.f0 p_441->g_21 p_441->g_36 p_441->g_143.f6
 */
int32_t ** func_52(int64_t  p_53, struct S3 * p_441)
{ /* block id: 23 */
    struct S1 l_66[10][8] = {{{0x2004931BL,2L,1UL,0x4368F5644FE3D079L,0UL,8UL},{0x2004931BL,2L,1UL,0x4368F5644FE3D079L,0UL,8UL},{0x3ED38BC6L,2L,18446744073709551608UL,0L,1UL,4294967294UL},{0x50CF10AAL,0x7331A9D0L,0UL,1L,4294967295UL,0x2C279A1AL},{-1L,8L,3UL,4L,0x0FE05587L,9UL},{0x5532CF2DL,-1L,0x50C43CAE23F1199DL,-2L,0x71C63CC5L,4294967286UL},{1L,0x41AAD5EAL,0x19957B093197C824L,2L,0xD0BC0716L,1UL},{0x1DF95200L,0x490FA27CL,0x19A8027267125BDFL,1L,0x7E6801B0L,0xC643A564L}},{{0x2004931BL,2L,1UL,0x4368F5644FE3D079L,0UL,8UL},{0x2004931BL,2L,1UL,0x4368F5644FE3D079L,0UL,8UL},{0x3ED38BC6L,2L,18446744073709551608UL,0L,1UL,4294967294UL},{0x50CF10AAL,0x7331A9D0L,0UL,1L,4294967295UL,0x2C279A1AL},{-1L,8L,3UL,4L,0x0FE05587L,9UL},{0x5532CF2DL,-1L,0x50C43CAE23F1199DL,-2L,0x71C63CC5L,4294967286UL},{1L,0x41AAD5EAL,0x19957B093197C824L,2L,0xD0BC0716L,1UL},{0x1DF95200L,0x490FA27CL,0x19A8027267125BDFL,1L,0x7E6801B0L,0xC643A564L}},{{0x2004931BL,2L,1UL,0x4368F5644FE3D079L,0UL,8UL},{0x2004931BL,2L,1UL,0x4368F5644FE3D079L,0UL,8UL},{0x3ED38BC6L,2L,18446744073709551608UL,0L,1UL,4294967294UL},{0x50CF10AAL,0x7331A9D0L,0UL,1L,4294967295UL,0x2C279A1AL},{-1L,8L,3UL,4L,0x0FE05587L,9UL},{0x5532CF2DL,-1L,0x50C43CAE23F1199DL,-2L,0x71C63CC5L,4294967286UL},{1L,0x41AAD5EAL,0x19957B093197C824L,2L,0xD0BC0716L,1UL},{0x1DF95200L,0x490FA27CL,0x19A8027267125BDFL,1L,0x7E6801B0L,0xC643A564L}},{{0x2004931BL,2L,1UL,0x4368F5644FE3D079L,0UL,8UL},{0x2004931BL,2L,1UL,0x4368F5644FE3D079L,0UL,8UL},{0x3ED38BC6L,2L,18446744073709551608UL,0L,1UL,4294967294UL},{0x50CF10AAL,0x7331A9D0L,0UL,1L,4294967295UL,0x2C279A1AL},{-1L,8L,3UL,4L,0x0FE05587L,9UL},{0x5532CF2DL,-1L,0x50C43CAE23F1199DL,-2L,0x71C63CC5L,4294967286UL},{1L,0x41AAD5EAL,0x19957B093197C824L,2L,0xD0BC0716L,1UL},{0x1DF95200L,0x490FA27CL,0x19A8027267125BDFL,1L,0x7E6801B0L,0xC643A564L}},{{0x2004931BL,2L,1UL,0x4368F5644FE3D079L,0UL,8UL},{0x2004931BL,2L,1UL,0x4368F5644FE3D079L,0UL,8UL},{0x3ED38BC6L,2L,18446744073709551608UL,0L,1UL,4294967294UL},{0x50CF10AAL,0x7331A9D0L,0UL,1L,4294967295UL,0x2C279A1AL},{-1L,8L,3UL,4L,0x0FE05587L,9UL},{0x5532CF2DL,-1L,0x50C43CAE23F1199DL,-2L,0x71C63CC5L,4294967286UL},{1L,0x41AAD5EAL,0x19957B093197C824L,2L,0xD0BC0716L,1UL},{0x1DF95200L,0x490FA27CL,0x19A8027267125BDFL,1L,0x7E6801B0L,0xC643A564L}},{{0x2004931BL,2L,1UL,0x4368F5644FE3D079L,0UL,8UL},{0x2004931BL,2L,1UL,0x4368F5644FE3D079L,0UL,8UL},{0x3ED38BC6L,2L,18446744073709551608UL,0L,1UL,4294967294UL},{0x50CF10AAL,0x7331A9D0L,0UL,1L,4294967295UL,0x2C279A1AL},{-1L,8L,3UL,4L,0x0FE05587L,9UL},{0x5532CF2DL,-1L,0x50C43CAE23F1199DL,-2L,0x71C63CC5L,4294967286UL},{1L,0x41AAD5EAL,0x19957B093197C824L,2L,0xD0BC0716L,1UL},{0x1DF95200L,0x490FA27CL,0x19A8027267125BDFL,1L,0x7E6801B0L,0xC643A564L}},{{0x2004931BL,2L,1UL,0x4368F5644FE3D079L,0UL,8UL},{0x2004931BL,2L,1UL,0x4368F5644FE3D079L,0UL,8UL},{0x3ED38BC6L,2L,18446744073709551608UL,0L,1UL,4294967294UL},{0x50CF10AAL,0x7331A9D0L,0UL,1L,4294967295UL,0x2C279A1AL},{-1L,8L,3UL,4L,0x0FE05587L,9UL},{0x5532CF2DL,-1L,0x50C43CAE23F1199DL,-2L,0x71C63CC5L,4294967286UL},{1L,0x41AAD5EAL,0x19957B093197C824L,2L,0xD0BC0716L,1UL},{0x1DF95200L,0x490FA27CL,0x19A8027267125BDFL,1L,0x7E6801B0L,0xC643A564L}},{{0x2004931BL,2L,1UL,0x4368F5644FE3D079L,0UL,8UL},{0x2004931BL,2L,1UL,0x4368F5644FE3D079L,0UL,8UL},{0x3ED38BC6L,2L,18446744073709551608UL,0L,1UL,4294967294UL},{0x50CF10AAL,0x7331A9D0L,0UL,1L,4294967295UL,0x2C279A1AL},{-1L,8L,3UL,4L,0x0FE05587L,9UL},{0x5532CF2DL,-1L,0x50C43CAE23F1199DL,-2L,0x71C63CC5L,4294967286UL},{1L,0x41AAD5EAL,0x19957B093197C824L,2L,0xD0BC0716L,1UL},{0x1DF95200L,0x490FA27CL,0x19A8027267125BDFL,1L,0x7E6801B0L,0xC643A564L}},{{0x2004931BL,2L,1UL,0x4368F5644FE3D079L,0UL,8UL},{0x2004931BL,2L,1UL,0x4368F5644FE3D079L,0UL,8UL},{0x3ED38BC6L,2L,18446744073709551608UL,0L,1UL,4294967294UL},{0x50CF10AAL,0x7331A9D0L,0UL,1L,4294967295UL,0x2C279A1AL},{-1L,8L,3UL,4L,0x0FE05587L,9UL},{0x5532CF2DL,-1L,0x50C43CAE23F1199DL,-2L,0x71C63CC5L,4294967286UL},{1L,0x41AAD5EAL,0x19957B093197C824L,2L,0xD0BC0716L,1UL},{0x1DF95200L,0x490FA27CL,0x19A8027267125BDFL,1L,0x7E6801B0L,0xC643A564L}},{{0x2004931BL,2L,1UL,0x4368F5644FE3D079L,0UL,8UL},{0x2004931BL,2L,1UL,0x4368F5644FE3D079L,0UL,8UL},{0x3ED38BC6L,2L,18446744073709551608UL,0L,1UL,4294967294UL},{0x50CF10AAL,0x7331A9D0L,0UL,1L,4294967295UL,0x2C279A1AL},{-1L,8L,3UL,4L,0x0FE05587L,9UL},{0x5532CF2DL,-1L,0x50C43CAE23F1199DL,-2L,0x71C63CC5L,4294967286UL},{1L,0x41AAD5EAL,0x19957B093197C824L,2L,0xD0BC0716L,1UL},{0x1DF95200L,0x490FA27CL,0x19A8027267125BDFL,1L,0x7E6801B0L,0xC643A564L}}};
    struct S1 *l_67 = &l_66[0][0];
    uint16_t *l_73 = &p_441->g_74;
    uint64_t *l_77 = &l_66[0][0].f2;
    int64_t *l_78 = &p_441->g_79;
    int64_t *l_80 = &p_441->g_81[9][2][0];
    int16_t l_82[9] = {(-10L),0L,(-10L),(-10L),0L,(-10L),(-10L),0L,(-10L)};
    struct S1 l_130 = {0L,0x073D22E3L,18446744073709551610UL,0x73F35227E0448002L,0x97C014DEL,0x190F3A04L};
    int32_t l_259 = (-2L);
    int32_t l_260 = 0x3B4D0AD0L;
    int32_t l_262 = 0x09741476L;
    int32_t l_263 = 0L;
    int32_t l_264 = (-1L);
    int32_t l_265 = 0x4BD8C20DL;
    int32_t l_266 = 5L;
    int32_t l_267 = (-8L);
    int32_t l_268[5];
    int32_t **l_272 = &p_441->g_36;
    int i, j;
    for (i = 0; i < 5; i++)
        l_268[i] = 0x6232C149L;
    for (p_53 = (-6); (p_53 >= 4); p_53 = safe_add_func_uint64_t_u_u(p_53, 5))
    { /* block id: 26 */
        for (p_441->g_57 = 0; (p_441->g_57 >= 16); ++p_441->g_57)
        { /* block id: 29 */
            return &p_441->g_21;
        }
    }
    (*p_441->g_252) = func_23(((safe_div_func_int32_t_s_s(func_62((((*l_67) = l_66[0][0]) , func_68(((safe_mod_func_uint16_t_u_u(((((*l_77) = (p_441->g_22[4] & ((*l_73)++))) && ((*l_80) ^= ((*l_78) |= (-1L)))) || (~(((p_441->g_22[4] , p_441->g_22[3]) == l_82[6]) , (safe_lshift_func_uint16_t_u_u((((safe_div_func_int8_t_s_s(((safe_sub_func_int64_t_s_s(l_66[0][0].f0, p_441->g_22[4])) != ((p_441->g_57 , p_53) > p_441->g_79)), p_441->g_56[1])) != p_441->g_79) | p_53), p_53))))), l_66[0][0].f4)) || 2UL), l_67, p_441)), &p_441->g_57, l_130, p_441), 0x3D2A131FL)) == l_130.f1), p_441);
    for (p_441->g_143.f6 = 0; (p_441->g_143.f6 >= 7); p_441->g_143.f6++)
    { /* block id: 108 */
        int32_t *l_255 = (void*)0;
        int32_t *l_256 = &p_441->g_143.f0;
        int32_t *l_257 = &p_441->g_143.f0;
        int32_t *l_258[4][1][4] = {{{(void*)0,&p_441->g_143.f2,(void*)0,&p_441->g_143.f2}},{{(void*)0,&p_441->g_143.f2,(void*)0,&p_441->g_143.f2}},{{(void*)0,&p_441->g_143.f2,(void*)0,&p_441->g_143.f2}},{{(void*)0,&p_441->g_143.f2,(void*)0,&p_441->g_143.f2}}};
        uint8_t l_269[7] = {0UL,0x7CL,0UL,0UL,0x7CL,0UL,0UL};
        int i, j, k;
        --l_269[0];
        return l_272;
    }
    return &p_441->g_36;
}


/* ------------------------------------------ */
/* 
 * reads : p_441->g_57 p_441->g_143 p_441->g_117.f1 p_441->g_36 p_441->g_22 p_441->g_117.f5 p_441->g_56 p_441->g_79 p_441->g_14 p_441->g_15 p_441->g_240 p_441->g_81 p_441->g_200 p_441->g_117.f2 p_441->g_251 p_441->g_13
 * writes: p_441->g_74 p_441->g_57 p_441->g_143.f2 p_441->g_117.f2 p_441->g_15 p_441->g_117.f0 p_441->g_143.f0 p_441->g_21 p_441->g_22 p_441->g_79
 */
int32_t  func_62(int32_t ** p_63, int32_t * p_64, struct S1  p_65, struct S3 * p_441)
{ /* block id: 51 */
    uint32_t l_136 = 0xC0D73073L;
    int32_t l_178 = 0L;
    int32_t l_181 = 0x40A3D982L;
    int32_t l_182 = 0x139C4FBFL;
    int32_t l_184[10][10] = {{0x7BEA2D04L,6L,0x0CC7A630L,0L,0L,1L,0L,0x0CC7A630L,0x441E7836L,(-1L)},{0x7BEA2D04L,6L,0x0CC7A630L,0L,0L,1L,0L,0x0CC7A630L,0x441E7836L,(-1L)},{0x7BEA2D04L,6L,0x0CC7A630L,0L,0L,1L,0L,0x0CC7A630L,0x441E7836L,(-1L)},{0x7BEA2D04L,6L,0x0CC7A630L,0L,0L,1L,0L,0x0CC7A630L,0x441E7836L,(-1L)},{0x7BEA2D04L,6L,0x0CC7A630L,0L,0L,1L,0L,0x0CC7A630L,0x441E7836L,(-1L)},{0x7BEA2D04L,6L,0x0CC7A630L,0L,0L,1L,0L,0x0CC7A630L,0x441E7836L,(-1L)},{0x7BEA2D04L,6L,0x0CC7A630L,0L,0L,1L,0L,0x0CC7A630L,0x441E7836L,(-1L)},{0x7BEA2D04L,6L,0x0CC7A630L,0L,0L,1L,0L,0x0CC7A630L,0x441E7836L,(-1L)},{0x7BEA2D04L,6L,0x0CC7A630L,0L,0L,1L,0L,0x0CC7A630L,0x441E7836L,(-1L)},{0x7BEA2D04L,6L,0x0CC7A630L,0L,0L,1L,0L,0x0CC7A630L,0x441E7836L,(-1L)}};
    uint32_t l_185 = 9UL;
    uint64_t *l_206 = &p_441->g_200;
    uint64_t **l_205 = &l_206;
    struct S1 l_232[10][9] = {{{0x07D5804DL,1L,0x54257C0BBB8B5C4DL,0x359B8E94A0810EA9L,0xC5B79D90L,1UL},{0x77CAC785L,0x09C73145L,18446744073709551615UL,0x3E53C1072F342E47L,4294967288UL,0x478EE4C5L},{0x5D3DAC44L,1L,0x505EBF11C98631ADL,0L,0UL,0xBC45FCBEL},{0x20A59EF8L,0x0F0E9ED3L,4UL,-1L,0x51C39FBFL,0x0AE69A04L},{0x77CAC785L,0x09C73145L,18446744073709551615UL,0x3E53C1072F342E47L,4294967288UL,0x478EE4C5L},{0x20A59EF8L,0x0F0E9ED3L,4UL,-1L,0x51C39FBFL,0x0AE69A04L},{0x5D3DAC44L,1L,0x505EBF11C98631ADL,0L,0UL,0xBC45FCBEL},{0x77CAC785L,0x09C73145L,18446744073709551615UL,0x3E53C1072F342E47L,4294967288UL,0x478EE4C5L},{0x07D5804DL,1L,0x54257C0BBB8B5C4DL,0x359B8E94A0810EA9L,0xC5B79D90L,1UL}},{{0x07D5804DL,1L,0x54257C0BBB8B5C4DL,0x359B8E94A0810EA9L,0xC5B79D90L,1UL},{0x77CAC785L,0x09C73145L,18446744073709551615UL,0x3E53C1072F342E47L,4294967288UL,0x478EE4C5L},{0x5D3DAC44L,1L,0x505EBF11C98631ADL,0L,0UL,0xBC45FCBEL},{0x20A59EF8L,0x0F0E9ED3L,4UL,-1L,0x51C39FBFL,0x0AE69A04L},{0x77CAC785L,0x09C73145L,18446744073709551615UL,0x3E53C1072F342E47L,4294967288UL,0x478EE4C5L},{0x20A59EF8L,0x0F0E9ED3L,4UL,-1L,0x51C39FBFL,0x0AE69A04L},{0x5D3DAC44L,1L,0x505EBF11C98631ADL,0L,0UL,0xBC45FCBEL},{0x77CAC785L,0x09C73145L,18446744073709551615UL,0x3E53C1072F342E47L,4294967288UL,0x478EE4C5L},{0x07D5804DL,1L,0x54257C0BBB8B5C4DL,0x359B8E94A0810EA9L,0xC5B79D90L,1UL}},{{0x07D5804DL,1L,0x54257C0BBB8B5C4DL,0x359B8E94A0810EA9L,0xC5B79D90L,1UL},{0x77CAC785L,0x09C73145L,18446744073709551615UL,0x3E53C1072F342E47L,4294967288UL,0x478EE4C5L},{0x5D3DAC44L,1L,0x505EBF11C98631ADL,0L,0UL,0xBC45FCBEL},{0x20A59EF8L,0x0F0E9ED3L,4UL,-1L,0x51C39FBFL,0x0AE69A04L},{0x77CAC785L,0x09C73145L,18446744073709551615UL,0x3E53C1072F342E47L,4294967288UL,0x478EE4C5L},{0x20A59EF8L,0x0F0E9ED3L,4UL,-1L,0x51C39FBFL,0x0AE69A04L},{0x5D3DAC44L,1L,0x505EBF11C98631ADL,0L,0UL,0xBC45FCBEL},{0x77CAC785L,0x09C73145L,18446744073709551615UL,0x3E53C1072F342E47L,4294967288UL,0x478EE4C5L},{0x07D5804DL,1L,0x54257C0BBB8B5C4DL,0x359B8E94A0810EA9L,0xC5B79D90L,1UL}},{{0x07D5804DL,1L,0x54257C0BBB8B5C4DL,0x359B8E94A0810EA9L,0xC5B79D90L,1UL},{0x77CAC785L,0x09C73145L,18446744073709551615UL,0x3E53C1072F342E47L,4294967288UL,0x478EE4C5L},{0x5D3DAC44L,1L,0x505EBF11C98631ADL,0L,0UL,0xBC45FCBEL},{0x20A59EF8L,0x0F0E9ED3L,4UL,-1L,0x51C39FBFL,0x0AE69A04L},{0x77CAC785L,0x09C73145L,18446744073709551615UL,0x3E53C1072F342E47L,4294967288UL,0x478EE4C5L},{0x20A59EF8L,0x0F0E9ED3L,4UL,-1L,0x51C39FBFL,0x0AE69A04L},{0x5D3DAC44L,1L,0x505EBF11C98631ADL,0L,0UL,0xBC45FCBEL},{0x77CAC785L,0x09C73145L,18446744073709551615UL,0x3E53C1072F342E47L,4294967288UL,0x478EE4C5L},{0x07D5804DL,1L,0x54257C0BBB8B5C4DL,0x359B8E94A0810EA9L,0xC5B79D90L,1UL}},{{0x07D5804DL,1L,0x54257C0BBB8B5C4DL,0x359B8E94A0810EA9L,0xC5B79D90L,1UL},{0x77CAC785L,0x09C73145L,18446744073709551615UL,0x3E53C1072F342E47L,4294967288UL,0x478EE4C5L},{0x5D3DAC44L,1L,0x505EBF11C98631ADL,0L,0UL,0xBC45FCBEL},{0x20A59EF8L,0x0F0E9ED3L,4UL,-1L,0x51C39FBFL,0x0AE69A04L},{0x77CAC785L,0x09C73145L,18446744073709551615UL,0x3E53C1072F342E47L,4294967288UL,0x478EE4C5L},{0x20A59EF8L,0x0F0E9ED3L,4UL,-1L,0x51C39FBFL,0x0AE69A04L},{0x5D3DAC44L,1L,0x505EBF11C98631ADL,0L,0UL,0xBC45FCBEL},{0x77CAC785L,0x09C73145L,18446744073709551615UL,0x3E53C1072F342E47L,4294967288UL,0x478EE4C5L},{0x07D5804DL,1L,0x54257C0BBB8B5C4DL,0x359B8E94A0810EA9L,0xC5B79D90L,1UL}},{{0x07D5804DL,1L,0x54257C0BBB8B5C4DL,0x359B8E94A0810EA9L,0xC5B79D90L,1UL},{0x77CAC785L,0x09C73145L,18446744073709551615UL,0x3E53C1072F342E47L,4294967288UL,0x478EE4C5L},{0x5D3DAC44L,1L,0x505EBF11C98631ADL,0L,0UL,0xBC45FCBEL},{0x20A59EF8L,0x0F0E9ED3L,4UL,-1L,0x51C39FBFL,0x0AE69A04L},{0x77CAC785L,0x09C73145L,18446744073709551615UL,0x3E53C1072F342E47L,4294967288UL,0x478EE4C5L},{0x20A59EF8L,0x0F0E9ED3L,4UL,-1L,0x51C39FBFL,0x0AE69A04L},{0x5D3DAC44L,1L,0x505EBF11C98631ADL,0L,0UL,0xBC45FCBEL},{0x77CAC785L,0x09C73145L,18446744073709551615UL,0x3E53C1072F342E47L,4294967288UL,0x478EE4C5L},{0x07D5804DL,1L,0x54257C0BBB8B5C4DL,0x359B8E94A0810EA9L,0xC5B79D90L,1UL}},{{0x07D5804DL,1L,0x54257C0BBB8B5C4DL,0x359B8E94A0810EA9L,0xC5B79D90L,1UL},{0x77CAC785L,0x09C73145L,18446744073709551615UL,0x3E53C1072F342E47L,4294967288UL,0x478EE4C5L},{0x5D3DAC44L,1L,0x505EBF11C98631ADL,0L,0UL,0xBC45FCBEL},{0x20A59EF8L,0x0F0E9ED3L,4UL,-1L,0x51C39FBFL,0x0AE69A04L},{0x77CAC785L,0x09C73145L,18446744073709551615UL,0x3E53C1072F342E47L,4294967288UL,0x478EE4C5L},{0x20A59EF8L,0x0F0E9ED3L,4UL,-1L,0x51C39FBFL,0x0AE69A04L},{0x5D3DAC44L,1L,0x505EBF11C98631ADL,0L,0UL,0xBC45FCBEL},{0x77CAC785L,0x09C73145L,18446744073709551615UL,0x3E53C1072F342E47L,4294967288UL,0x478EE4C5L},{0x07D5804DL,1L,0x54257C0BBB8B5C4DL,0x359B8E94A0810EA9L,0xC5B79D90L,1UL}},{{0x07D5804DL,1L,0x54257C0BBB8B5C4DL,0x359B8E94A0810EA9L,0xC5B79D90L,1UL},{0x77CAC785L,0x09C73145L,18446744073709551615UL,0x3E53C1072F342E47L,4294967288UL,0x478EE4C5L},{0x5D3DAC44L,1L,0x505EBF11C98631ADL,0L,0UL,0xBC45FCBEL},{0x20A59EF8L,0x0F0E9ED3L,4UL,-1L,0x51C39FBFL,0x0AE69A04L},{0x77CAC785L,0x09C73145L,18446744073709551615UL,0x3E53C1072F342E47L,4294967288UL,0x478EE4C5L},{0x20A59EF8L,0x0F0E9ED3L,4UL,-1L,0x51C39FBFL,0x0AE69A04L},{0x5D3DAC44L,1L,0x505EBF11C98631ADL,0L,0UL,0xBC45FCBEL},{0x77CAC785L,0x09C73145L,18446744073709551615UL,0x3E53C1072F342E47L,4294967288UL,0x478EE4C5L},{0x07D5804DL,1L,0x54257C0BBB8B5C4DL,0x359B8E94A0810EA9L,0xC5B79D90L,1UL}},{{0x07D5804DL,1L,0x54257C0BBB8B5C4DL,0x359B8E94A0810EA9L,0xC5B79D90L,1UL},{0x77CAC785L,0x09C73145L,18446744073709551615UL,0x3E53C1072F342E47L,4294967288UL,0x478EE4C5L},{0x5D3DAC44L,1L,0x505EBF11C98631ADL,0L,0UL,0xBC45FCBEL},{0x20A59EF8L,0x0F0E9ED3L,4UL,-1L,0x51C39FBFL,0x0AE69A04L},{0x77CAC785L,0x09C73145L,18446744073709551615UL,0x3E53C1072F342E47L,4294967288UL,0x478EE4C5L},{0x20A59EF8L,0x0F0E9ED3L,4UL,-1L,0x51C39FBFL,0x0AE69A04L},{0x5D3DAC44L,1L,0x505EBF11C98631ADL,0L,0UL,0xBC45FCBEL},{0x77CAC785L,0x09C73145L,18446744073709551615UL,0x3E53C1072F342E47L,4294967288UL,0x478EE4C5L},{0x07D5804DL,1L,0x54257C0BBB8B5C4DL,0x359B8E94A0810EA9L,0xC5B79D90L,1UL}},{{0x07D5804DL,1L,0x54257C0BBB8B5C4DL,0x359B8E94A0810EA9L,0xC5B79D90L,1UL},{0x77CAC785L,0x09C73145L,18446744073709551615UL,0x3E53C1072F342E47L,4294967288UL,0x478EE4C5L},{0x5D3DAC44L,1L,0x505EBF11C98631ADL,0L,0UL,0xBC45FCBEL},{0x20A59EF8L,0x0F0E9ED3L,4UL,-1L,0x51C39FBFL,0x0AE69A04L},{0x77CAC785L,0x09C73145L,18446744073709551615UL,0x3E53C1072F342E47L,4294967288UL,0x478EE4C5L},{0x20A59EF8L,0x0F0E9ED3L,4UL,-1L,0x51C39FBFL,0x0AE69A04L},{0x5D3DAC44L,1L,0x505EBF11C98631ADL,0L,0UL,0xBC45FCBEL},{0x77CAC785L,0x09C73145L,18446744073709551615UL,0x3E53C1072F342E47L,4294967288UL,0x478EE4C5L},{0x07D5804DL,1L,0x54257C0BBB8B5C4DL,0x359B8E94A0810EA9L,0xC5B79D90L,1UL}}};
    uint8_t *l_237[2][10] = {{&p_441->g_119,&p_441->g_119,&p_441->g_119,&p_441->g_119,&p_441->g_119,&p_441->g_119,&p_441->g_119,&p_441->g_119,&p_441->g_119,&p_441->g_119},{&p_441->g_119,&p_441->g_119,&p_441->g_119,&p_441->g_119,&p_441->g_119,&p_441->g_119,&p_441->g_119,&p_441->g_119,&p_441->g_119,&p_441->g_119}};
    int64_t *l_249 = &p_441->g_79;
    uint16_t *l_250 = (void*)0;
    int i, j;
    for (p_65.f5 = 0; (p_65.f5 != 7); p_65.f5++)
    { /* block id: 54 */
        int32_t l_135 = (-1L);
        int32_t l_176[9][5] = {{0x32C0FE8FL,0L,0x6F6E4D6CL,1L,0x6F6E4D6CL},{0x32C0FE8FL,0L,0x6F6E4D6CL,1L,0x6F6E4D6CL},{0x32C0FE8FL,0L,0x6F6E4D6CL,1L,0x6F6E4D6CL},{0x32C0FE8FL,0L,0x6F6E4D6CL,1L,0x6F6E4D6CL},{0x32C0FE8FL,0L,0x6F6E4D6CL,1L,0x6F6E4D6CL},{0x32C0FE8FL,0L,0x6F6E4D6CL,1L,0x6F6E4D6CL},{0x32C0FE8FL,0L,0x6F6E4D6CL,1L,0x6F6E4D6CL},{0x32C0FE8FL,0L,0x6F6E4D6CL,1L,0x6F6E4D6CL},{0x32C0FE8FL,0L,0x6F6E4D6CL,1L,0x6F6E4D6CL}};
        int i, j;
        for (p_441->g_74 = 0; (p_441->g_74 == 36); p_441->g_74 = safe_add_func_int16_t_s_s(p_441->g_74, 3))
        { /* block id: 57 */
            int64_t l_137[10] = {(-1L),(-8L),(-1L),(-1L),(-8L),(-1L),(-1L),(-8L),(-1L),(-1L)};
            int32_t l_138[7][3][10] = {{{7L,0x534AEDA4L,(-1L),0L,0L,(-1L),0x534AEDA4L,7L,0x13EDC32EL,0x303A1171L},{7L,0x534AEDA4L,(-1L),0L,0L,(-1L),0x534AEDA4L,7L,0x13EDC32EL,0x303A1171L},{7L,0x534AEDA4L,(-1L),0L,0L,(-1L),0x534AEDA4L,7L,0x13EDC32EL,0x303A1171L}},{{7L,0x534AEDA4L,(-1L),0L,0L,(-1L),0x534AEDA4L,7L,0x13EDC32EL,0x303A1171L},{7L,0x534AEDA4L,(-1L),0L,0L,(-1L),0x534AEDA4L,7L,0x13EDC32EL,0x303A1171L},{7L,0x534AEDA4L,(-1L),0L,0L,(-1L),0x534AEDA4L,7L,0x13EDC32EL,0x303A1171L}},{{7L,0x534AEDA4L,(-1L),0L,0L,(-1L),0x534AEDA4L,7L,0x13EDC32EL,0x303A1171L},{7L,0x534AEDA4L,(-1L),0L,0L,(-1L),0x534AEDA4L,7L,0x13EDC32EL,0x303A1171L},{7L,0x534AEDA4L,(-1L),0L,0L,(-1L),0x534AEDA4L,7L,0x13EDC32EL,0x303A1171L}},{{7L,0x534AEDA4L,(-1L),0L,0L,(-1L),0x534AEDA4L,7L,0x13EDC32EL,0x303A1171L},{7L,0x534AEDA4L,(-1L),0L,0L,(-1L),0x534AEDA4L,7L,0x13EDC32EL,0x303A1171L},{7L,0x534AEDA4L,(-1L),0L,0L,(-1L),0x534AEDA4L,7L,0x13EDC32EL,0x303A1171L}},{{7L,0x534AEDA4L,(-1L),0L,0L,(-1L),0x534AEDA4L,7L,0x13EDC32EL,0x303A1171L},{7L,0x534AEDA4L,(-1L),0L,0L,(-1L),0x534AEDA4L,7L,0x13EDC32EL,0x303A1171L},{7L,0x534AEDA4L,(-1L),0L,0L,(-1L),0x534AEDA4L,7L,0x13EDC32EL,0x303A1171L}},{{7L,0x534AEDA4L,(-1L),0L,0L,(-1L),0x534AEDA4L,7L,0x13EDC32EL,0x303A1171L},{7L,0x534AEDA4L,(-1L),0L,0L,(-1L),0x534AEDA4L,7L,0x13EDC32EL,0x303A1171L},{7L,0x534AEDA4L,(-1L),0L,0L,(-1L),0x534AEDA4L,7L,0x13EDC32EL,0x303A1171L}},{{7L,0x534AEDA4L,(-1L),0L,0L,(-1L),0x534AEDA4L,7L,0x13EDC32EL,0x303A1171L},{7L,0x534AEDA4L,(-1L),0L,0L,(-1L),0x534AEDA4L,7L,0x13EDC32EL,0x303A1171L},{7L,0x534AEDA4L,(-1L),0L,0L,(-1L),0x534AEDA4L,7L,0x13EDC32EL,0x303A1171L}}};
            int32_t l_199 = 0x404805B4L;
            int32_t l_222 = 0x1A614EF8L;
            int i, j, k;
            (*p_64) = l_135;
            (*p_64) = (l_136 >= (((*p_64) | ((l_137[6] = p_65.f1) <= 18446744073709551614UL)) | (((p_65.f4 < l_138[6][2][6]) ^ (!((0xB6L < ((safe_rshift_func_uint8_t_u_u((safe_add_func_int8_t_s_s((p_441->g_143 , p_441->g_57), 9L)), p_441->g_117.f1)) , p_65.f5)) | (*p_441->g_36)))) & p_65.f1)));
            for (p_441->g_143.f2 = 6; (p_441->g_143.f2 != (-10)); p_441->g_143.f2 = safe_sub_func_int32_t_s_s(p_441->g_143.f2, 4))
            { /* block id: 63 */
                uint64_t *l_166 = &p_441->g_117.f2;
                int32_t l_177 = 0L;
                int32_t l_179 = 1L;
                int32_t l_180[9] = {0x6CEB4F8AL,0x6CEB4F8AL,0x6CEB4F8AL,0x6CEB4F8AL,0x6CEB4F8AL,0x6CEB4F8AL,0x6CEB4F8AL,0x6CEB4F8AL,0x6CEB4F8AL};
                int i;
                (*p_441->g_14) = ((safe_rshift_func_uint8_t_u_s(((+((*l_166) = (safe_div_func_uint32_t_u_u(((safe_mod_func_uint16_t_u_u((safe_sub_func_int32_t_s_s((-1L), (((((safe_sub_func_int16_t_s_s((((0x575F8629F82947E0L && ((((~0x5AC9E3CEL) , ((safe_mod_func_uint64_t_u_u((safe_mul_func_int8_t_s_s((safe_div_func_int32_t_s_s((p_441->g_117.f5 > (p_65.f4 < (safe_sub_func_uint32_t_u_u(((safe_mul_func_int8_t_s_s(((void*)0 == &p_441->g_129), 1L)) | (((0x32L >= p_441->g_56[1]) , &p_64) == &p_64)), FAKE_DIVERGE(p_441->group_1_offset, get_group_id(1), 10))))), p_65.f5)), 5UL)), FAKE_DIVERGE(p_441->group_2_offset, get_group_id(2), 10))) , p_441->g_56[3])) , 9L) ^ l_137[6])) >= p_65.f4) & l_138[6][2][6]), 0xE068L)) ^ l_138[4][2][2]) >= l_136) && p_441->g_79) , p_441->g_143.f0))), GROUP_DIVERGE(1, 1))) || FAKE_DIVERGE(p_441->global_0_offset, get_global_id(0), 10)), GROUP_DIVERGE(1, 1))))) ^ p_65.f4), p_441->g_117.f5)) >= 0UL);
                for (p_441->g_117.f0 = 6; (p_441->g_117.f0 >= 0); p_441->g_117.f0 -= 1)
                { /* block id: 68 */
                    int32_t *l_167 = &l_138[5][0][6];
                    int32_t *l_168 = &p_441->g_22[p_441->g_117.f0];
                    int32_t *l_169 = (void*)0;
                    int32_t *l_170 = &l_138[0][2][6];
                    int32_t *l_171 = &p_441->g_143.f0;
                    int32_t *l_172 = &p_441->g_22[p_441->g_117.f0];
                    int32_t *l_173 = &p_441->g_143.f0;
                    int32_t *l_174 = (void*)0;
                    int32_t *l_175[8][4] = {{&p_441->g_22[p_441->g_117.f0],&p_441->g_22[p_441->g_117.f0],&p_441->g_22[p_441->g_117.f0],&p_441->g_22[p_441->g_117.f0]},{&p_441->g_22[p_441->g_117.f0],&p_441->g_22[p_441->g_117.f0],&p_441->g_22[p_441->g_117.f0],&p_441->g_22[p_441->g_117.f0]},{&p_441->g_22[p_441->g_117.f0],&p_441->g_22[p_441->g_117.f0],&p_441->g_22[p_441->g_117.f0],&p_441->g_22[p_441->g_117.f0]},{&p_441->g_22[p_441->g_117.f0],&p_441->g_22[p_441->g_117.f0],&p_441->g_22[p_441->g_117.f0],&p_441->g_22[p_441->g_117.f0]},{&p_441->g_22[p_441->g_117.f0],&p_441->g_22[p_441->g_117.f0],&p_441->g_22[p_441->g_117.f0],&p_441->g_22[p_441->g_117.f0]},{&p_441->g_22[p_441->g_117.f0],&p_441->g_22[p_441->g_117.f0],&p_441->g_22[p_441->g_117.f0],&p_441->g_22[p_441->g_117.f0]},{&p_441->g_22[p_441->g_117.f0],&p_441->g_22[p_441->g_117.f0],&p_441->g_22[p_441->g_117.f0],&p_441->g_22[p_441->g_117.f0]},{&p_441->g_22[p_441->g_117.f0],&p_441->g_22[p_441->g_117.f0],&p_441->g_22[p_441->g_117.f0],&p_441->g_22[p_441->g_117.f0]}};
                    int8_t l_183 = 0x09L;
                    int i, j;
                    --l_185;
                    for (l_178 = 6; (l_178 >= 0); l_178 -= 1)
                    { /* block id: 72 */
                        int i;
                        (*l_171) = p_441->g_22[l_178];
                    }
                }
                (*p_63) = &l_138[6][0][1];
                for (p_441->g_57 = (-8); (p_441->g_57 >= (-10)); p_441->g_57--)
                { /* block id: 79 */
                    int32_t *l_190 = &l_180[8];
                    int32_t *l_191 = &l_176[3][4];
                    int32_t l_192 = 1L;
                    int32_t *l_193 = (void*)0;
                    int32_t *l_194 = &l_176[7][0];
                    int32_t *l_195 = &p_441->g_22[4];
                    int32_t *l_196 = (void*)0;
                    int32_t *l_197 = &l_181;
                    int32_t *l_198[3];
                    uint64_t **l_204[10][8] = {{(void*)0,&l_166,&l_166,(void*)0,&l_166,&l_166,(void*)0,&l_166},{(void*)0,&l_166,&l_166,(void*)0,&l_166,&l_166,(void*)0,&l_166},{(void*)0,&l_166,&l_166,(void*)0,&l_166,&l_166,(void*)0,&l_166},{(void*)0,&l_166,&l_166,(void*)0,&l_166,&l_166,(void*)0,&l_166},{(void*)0,&l_166,&l_166,(void*)0,&l_166,&l_166,(void*)0,&l_166},{(void*)0,&l_166,&l_166,(void*)0,&l_166,&l_166,(void*)0,&l_166},{(void*)0,&l_166,&l_166,(void*)0,&l_166,&l_166,(void*)0,&l_166},{(void*)0,&l_166,&l_166,(void*)0,&l_166,&l_166,(void*)0,&l_166},{(void*)0,&l_166,&l_166,(void*)0,&l_166,&l_166,(void*)0,&l_166},{(void*)0,&l_166,&l_166,(void*)0,&l_166,&l_166,(void*)0,&l_166}};
                    uint64_t ***l_203 = &l_204[1][6];
                    int64_t **l_216 = &p_441->g_129;
                    int i, j;
                    for (i = 0; i < 3; i++)
                        l_198[i] = &l_180[7];
                    (1 + 1);
                }
            }
        }
        (*p_441->g_36) = (((safe_mul_func_int16_t_s_s(p_441->g_15, ((*p_441->g_36) && 0UL))) , &p_441->g_228[3][0][1]) != &l_205);
        if (l_135)
            break;
    }
    (*p_63) = func_25(func_25((((l_232[7][5] , (safe_sub_func_uint8_t_u_u((safe_sub_func_uint8_t_u_u((l_181 = 1UL), (safe_mul_func_uint8_t_u_u((p_441->g_240 , FAKE_DIVERGE(p_441->global_0_offset, get_global_id(0), 10)), ((-10L) <= (((safe_rshift_func_uint16_t_u_u((safe_add_func_int32_t_s_s(0x60B49C03L, (p_441->g_81[2][0][0] , ((safe_sub_func_uint8_t_u_u((2UL == ((*l_249) |= (((((safe_lshift_func_int16_t_s_s((!((!(p_65.f4 | ((l_232[7][5].f0 && p_441->g_200) != p_441->g_117.f2))) >= p_65.f3)), p_441->g_22[5])) || p_65.f3) | p_65.f4) , &p_441->g_200) != (void*)0))), p_441->g_143.f5)) > p_441->g_143.f5)))), p_65.f0)) , l_250) == (void*)0)))))), 0L))) , p_441->g_251) , &p_441->g_22[4]), p_441->g_117.f2, p_441), l_232[7][5].f5, p_441);
    return (*p_441->g_36);
}


/* ------------------------------------------ */
/* 
 * reads : p_441->g_22 p_441->g_116 p_441->g_119 p_441->g_117.f3 p_441->g_79 p_441->g_117.f5 p_441->g_36
 * writes: p_441->g_119 p_441->g_129 p_441->g_22
 */
int32_t ** func_68(uint32_t  p_69, struct S1 * p_70, struct S3 * p_441)
{ /* block id: 38 */
    int16_t l_89 = 0x1421L;
    int32_t *l_90 = &p_441->g_57;
    int32_t *l_91 = &p_441->g_22[4];
    int32_t l_92[2];
    int32_t *l_93 = &l_92[0];
    int32_t *l_94 = &l_92[0];
    int32_t *l_95 = (void*)0;
    int32_t *l_96 = (void*)0;
    int32_t *l_97 = &p_441->g_22[4];
    int32_t *l_98 = &l_92[1];
    int32_t *l_99 = &l_92[0];
    int32_t *l_100 = &p_441->g_22[4];
    int32_t *l_101[5][5][10] = {{{&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&l_92[1],&p_441->g_57,&l_92[1],&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&p_441->g_22[4]},{&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&l_92[1],&p_441->g_57,&l_92[1],&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&p_441->g_22[4]},{&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&l_92[1],&p_441->g_57,&l_92[1],&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&p_441->g_22[4]},{&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&l_92[1],&p_441->g_57,&l_92[1],&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&p_441->g_22[4]},{&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&l_92[1],&p_441->g_57,&l_92[1],&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&p_441->g_22[4]}},{{&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&l_92[1],&p_441->g_57,&l_92[1],&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&p_441->g_22[4]},{&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&l_92[1],&p_441->g_57,&l_92[1],&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&p_441->g_22[4]},{&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&l_92[1],&p_441->g_57,&l_92[1],&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&p_441->g_22[4]},{&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&l_92[1],&p_441->g_57,&l_92[1],&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&p_441->g_22[4]},{&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&l_92[1],&p_441->g_57,&l_92[1],&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&p_441->g_22[4]}},{{&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&l_92[1],&p_441->g_57,&l_92[1],&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&p_441->g_22[4]},{&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&l_92[1],&p_441->g_57,&l_92[1],&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&p_441->g_22[4]},{&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&l_92[1],&p_441->g_57,&l_92[1],&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&p_441->g_22[4]},{&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&l_92[1],&p_441->g_57,&l_92[1],&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&p_441->g_22[4]},{&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&l_92[1],&p_441->g_57,&l_92[1],&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&p_441->g_22[4]}},{{&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&l_92[1],&p_441->g_57,&l_92[1],&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&p_441->g_22[4]},{&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&l_92[1],&p_441->g_57,&l_92[1],&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&p_441->g_22[4]},{&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&l_92[1],&p_441->g_57,&l_92[1],&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&p_441->g_22[4]},{&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&l_92[1],&p_441->g_57,&l_92[1],&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&p_441->g_22[4]},{&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&l_92[1],&p_441->g_57,&l_92[1],&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&p_441->g_22[4]}},{{&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&l_92[1],&p_441->g_57,&l_92[1],&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&p_441->g_22[4]},{&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&l_92[1],&p_441->g_57,&l_92[1],&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&p_441->g_22[4]},{&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&l_92[1],&p_441->g_57,&l_92[1],&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&p_441->g_22[4]},{&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&l_92[1],&p_441->g_57,&l_92[1],&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&p_441->g_22[4]},{&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&l_92[1],&p_441->g_57,&l_92[1],&p_441->g_22[4],&p_441->g_57,&p_441->g_22[4],&p_441->g_22[4]}}};
    int64_t l_102 = 1L;
    int32_t l_103 = (-1L);
    uint64_t l_104 = 0x32EB66CF8E74D01EL;
    uint64_t *l_108 = &l_104;
    uint64_t **l_107 = &l_108;
    uint64_t ***l_109 = &l_107;
    uint8_t *l_118 = &p_441->g_119;
    int64_t **l_128 = (void*)0;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_92[i] = 9L;
    --l_104;
    for (p_69 = 0; (p_69 <= 1); p_69 += 1)
    { /* block id: 42 */
        int i;
        if (p_441->g_22[(p_69 + 5)])
            break;
    }
    (*l_109) = l_107;
    (*p_441->g_36) = ((safe_lshift_func_uint8_t_u_s((safe_sub_func_int64_t_s_s((safe_mod_func_int32_t_s_s(((*l_107) != ((*l_91) , ((*l_91) , &p_441->g_13))), (p_69 ^= (p_441->g_116 != (void*)0)))), ((++(*l_118)) != (p_441->g_117.f3 , (~(safe_lshift_func_int16_t_s_u((safe_mod_func_uint32_t_u_u((+(GROUP_DIVERGE(1, 1) || ((safe_add_func_int64_t_s_s(((&l_102 != (p_441->g_129 = (void*)0)) == p_441->g_79), p_441->g_22[6])) > (*l_98)))), (*l_93))), 14))))))), (*l_98))) > p_441->g_117.f5);
    return &p_441->g_21;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    struct S3 c_442;
    struct S3* p_441 = &c_442;
    struct S3 c_443 = {
        0x333EE67684593F6AL, // p_441->g_13
        0x5D64F689L, // p_441->g_15
        &p_441->g_15, // p_441->g_14
        {3L,3L,3L,3L,3L,3L,3L}, // p_441->g_22
        &p_441->g_22[4], // p_441->g_21
        (void*)0, // p_441->g_36
        {(-1L),(-1L),(-1L),(-1L)}, // p_441->g_56
        7L, // p_441->g_57
        65530UL, // p_441->g_74
        0x390699391FD40782L, // p_441->g_79
        {{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}},{{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}}}, // p_441->g_81
        {1L,0x20521A46L,18446744073709551614UL,-9L,0x3E6AD7C1L,4294967295UL}, // p_441->g_117
        &p_441->g_117, // p_441->g_116
        0x22L, // p_441->g_119
        (void*)0, // p_441->g_129
        {7L,1L,0x5C8C1426L,4294967292UL,0xA48AB577FE8ED7BAL,0x0988E549L,0L,0x3C39E940L}, // p_441->g_143
        0x0C91DE95D9E2DF7FL, // p_441->g_200
        65535UL, // p_441->g_224
        {&p_441->g_13,&p_441->g_13,&p_441->g_13,&p_441->g_13,&p_441->g_13,&p_441->g_13,&p_441->g_13,&p_441->g_13,&p_441->g_13}, // p_441->g_229
        {{{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0}},{{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0}},{{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0}},{{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0}},{{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0}},{{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0}},{{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0}},{{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0}},{{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0},{&p_441->g_229[1],&p_441->g_229[4],(void*)0,(void*)0}}}, // p_441->g_228
        {0x772AC034L,0x5B17A3259C2AEC99L,0x4E29D57CL,0xCC14E762L,0x765521EE64330977L,4294967295UL,-4L,3L}, // p_441->g_240
        {1UL}, // p_441->g_251
        &p_441->g_36, // p_441->g_252
        {{0x34B4L,0x34B4L,0x34B4L,0x34B4L,0x34B4L}}, // p_441->g_261
        1UL, // p_441->g_274
        255UL, // p_441->g_298
        &p_441->g_251, // p_441->g_305
        &p_441->g_305, // p_441->g_304
        {0xFAL}, // p_441->g_334
        {-4L,0x47EBE665AEB7DCF5L,0x4AC4BF86L,0xB1129435L,0x0D2A722A5BDAD497L,0x7994362BL,0x34F2ACF0L,0x7F06FD87L}, // p_441->g_341
        {{{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L}},{{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L}},{{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L}},{{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L}},{{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L},{0x43L,0L,(-1L),1L,0x76L}}}, // p_441->g_359
        18446744073709551615UL, // p_441->g_392
        {-9L,0x33AEE47085771A71L,0x0B0F517BL,0x61532D32L,8UL,4294967293UL,0x6B87D010L,-7L}, // p_441->g_395
        {{0x75366F03L,-6L,6L,0x5F7A22C3L,0x23E7D2E243EFEE59L,4294967287UL,-8L,0x767EEACAL},{0x5E826D4EL,-10L,0L,4294967289UL,18446744073709551613UL,0UL,0x50E069E5L,0x778311C2L},{0x75366F03L,-6L,6L,0x5F7A22C3L,0x23E7D2E243EFEE59L,4294967287UL,-8L,0x767EEACAL},{0x75366F03L,-6L,6L,0x5F7A22C3L,0x23E7D2E243EFEE59L,4294967287UL,-8L,0x767EEACAL},{0x5E826D4EL,-10L,0L,4294967289UL,18446744073709551613UL,0UL,0x50E069E5L,0x778311C2L},{0x75366F03L,-6L,6L,0x5F7A22C3L,0x23E7D2E243EFEE59L,4294967287UL,-8L,0x767EEACAL},{0x75366F03L,-6L,6L,0x5F7A22C3L,0x23E7D2E243EFEE59L,4294967287UL,-8L,0x767EEACAL}}, // p_441->g_409
        {0x2E23788CL,0x69AE1EEC80C70BFCL,0x26595CA0L,4294967295UL,3UL,0x14BE83A3L,0L,0x77E07F07L}, // p_441->g_426
        &p_441->g_395.f2, // p_441->g_429
        0x48D1L, // p_441->g_435
        {&p_441->g_36,&p_441->g_36,&p_441->g_36,&p_441->g_36,&p_441->g_36,&p_441->g_36}, // p_441->g_439
        &p_441->g_36, // p_441->g_440
        sequence_input[get_global_id(0)], // p_441->global_0_offset
        sequence_input[get_global_id(1)], // p_441->global_1_offset
        sequence_input[get_global_id(2)], // p_441->global_2_offset
        sequence_input[get_local_id(0)], // p_441->local_0_offset
        sequence_input[get_local_id(1)], // p_441->local_1_offset
        sequence_input[get_local_id(2)], // p_441->local_2_offset
        sequence_input[get_group_id(0)], // p_441->group_0_offset
        sequence_input[get_group_id(1)], // p_441->group_1_offset
        sequence_input[get_group_id(2)], // p_441->group_2_offset
    };
    c_442 = c_443;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_441);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_441->g_13, "p_441->g_13", print_hash_value);
    transparent_crc(p_441->g_15, "p_441->g_15", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_441->g_22[i], "p_441->g_22[i]", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_441->g_56[i], "p_441->g_56[i]", print_hash_value);

    }
    transparent_crc(p_441->g_57, "p_441->g_57", print_hash_value);
    transparent_crc(p_441->g_74, "p_441->g_74", print_hash_value);
    transparent_crc(p_441->g_79, "p_441->g_79", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_441->g_81[i][j][k], "p_441->g_81[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_441->g_117.f0, "p_441->g_117.f0", print_hash_value);
    transparent_crc(p_441->g_117.f1, "p_441->g_117.f1", print_hash_value);
    transparent_crc(p_441->g_117.f2, "p_441->g_117.f2", print_hash_value);
    transparent_crc(p_441->g_117.f3, "p_441->g_117.f3", print_hash_value);
    transparent_crc(p_441->g_117.f4, "p_441->g_117.f4", print_hash_value);
    transparent_crc(p_441->g_117.f5, "p_441->g_117.f5", print_hash_value);
    transparent_crc(p_441->g_119, "p_441->g_119", print_hash_value);
    transparent_crc(p_441->g_143.f0, "p_441->g_143.f0", print_hash_value);
    transparent_crc(p_441->g_143.f1, "p_441->g_143.f1", print_hash_value);
    transparent_crc(p_441->g_143.f2, "p_441->g_143.f2", print_hash_value);
    transparent_crc(p_441->g_143.f3, "p_441->g_143.f3", print_hash_value);
    transparent_crc(p_441->g_143.f4, "p_441->g_143.f4", print_hash_value);
    transparent_crc(p_441->g_143.f5, "p_441->g_143.f5", print_hash_value);
    transparent_crc(p_441->g_143.f6, "p_441->g_143.f6", print_hash_value);
    transparent_crc(p_441->g_143.f7, "p_441->g_143.f7", print_hash_value);
    transparent_crc(p_441->g_200, "p_441->g_200", print_hash_value);
    transparent_crc(p_441->g_224, "p_441->g_224", print_hash_value);
    transparent_crc(p_441->g_240.f0, "p_441->g_240.f0", print_hash_value);
    transparent_crc(p_441->g_240.f1, "p_441->g_240.f1", print_hash_value);
    transparent_crc(p_441->g_240.f2, "p_441->g_240.f2", print_hash_value);
    transparent_crc(p_441->g_240.f3, "p_441->g_240.f3", print_hash_value);
    transparent_crc(p_441->g_240.f4, "p_441->g_240.f4", print_hash_value);
    transparent_crc(p_441->g_240.f5, "p_441->g_240.f5", print_hash_value);
    transparent_crc(p_441->g_240.f6, "p_441->g_240.f6", print_hash_value);
    transparent_crc(p_441->g_240.f7, "p_441->g_240.f7", print_hash_value);
    transparent_crc(p_441->g_251.f0, "p_441->g_251.f0", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_441->g_261[i][j], "p_441->g_261[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_441->g_274, "p_441->g_274", print_hash_value);
    transparent_crc(p_441->g_298, "p_441->g_298", print_hash_value);
    transparent_crc(p_441->g_334.f0, "p_441->g_334.f0", print_hash_value);
    transparent_crc(p_441->g_341.f0, "p_441->g_341.f0", print_hash_value);
    transparent_crc(p_441->g_341.f1, "p_441->g_341.f1", print_hash_value);
    transparent_crc(p_441->g_341.f2, "p_441->g_341.f2", print_hash_value);
    transparent_crc(p_441->g_341.f3, "p_441->g_341.f3", print_hash_value);
    transparent_crc(p_441->g_341.f4, "p_441->g_341.f4", print_hash_value);
    transparent_crc(p_441->g_341.f5, "p_441->g_341.f5", print_hash_value);
    transparent_crc(p_441->g_341.f6, "p_441->g_341.f6", print_hash_value);
    transparent_crc(p_441->g_341.f7, "p_441->g_341.f7", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_441->g_359[i][j][k], "p_441->g_359[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_441->g_392, "p_441->g_392", print_hash_value);
    transparent_crc(p_441->g_395.f0, "p_441->g_395.f0", print_hash_value);
    transparent_crc(p_441->g_395.f1, "p_441->g_395.f1", print_hash_value);
    transparent_crc(p_441->g_395.f2, "p_441->g_395.f2", print_hash_value);
    transparent_crc(p_441->g_395.f3, "p_441->g_395.f3", print_hash_value);
    transparent_crc(p_441->g_395.f4, "p_441->g_395.f4", print_hash_value);
    transparent_crc(p_441->g_395.f5, "p_441->g_395.f5", print_hash_value);
    transparent_crc(p_441->g_395.f6, "p_441->g_395.f6", print_hash_value);
    transparent_crc(p_441->g_395.f7, "p_441->g_395.f7", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_441->g_409[i].f0, "p_441->g_409[i].f0", print_hash_value);
        transparent_crc(p_441->g_409[i].f1, "p_441->g_409[i].f1", print_hash_value);
        transparent_crc(p_441->g_409[i].f2, "p_441->g_409[i].f2", print_hash_value);
        transparent_crc(p_441->g_409[i].f3, "p_441->g_409[i].f3", print_hash_value);
        transparent_crc(p_441->g_409[i].f4, "p_441->g_409[i].f4", print_hash_value);
        transparent_crc(p_441->g_409[i].f5, "p_441->g_409[i].f5", print_hash_value);
        transparent_crc(p_441->g_409[i].f6, "p_441->g_409[i].f6", print_hash_value);
        transparent_crc(p_441->g_409[i].f7, "p_441->g_409[i].f7", print_hash_value);

    }
    transparent_crc(p_441->g_426.f0, "p_441->g_426.f0", print_hash_value);
    transparent_crc(p_441->g_426.f1, "p_441->g_426.f1", print_hash_value);
    transparent_crc(p_441->g_426.f2, "p_441->g_426.f2", print_hash_value);
    transparent_crc(p_441->g_426.f3, "p_441->g_426.f3", print_hash_value);
    transparent_crc(p_441->g_426.f4, "p_441->g_426.f4", print_hash_value);
    transparent_crc(p_441->g_426.f5, "p_441->g_426.f5", print_hash_value);
    transparent_crc(p_441->g_426.f6, "p_441->g_426.f6", print_hash_value);
    transparent_crc(p_441->g_426.f7, "p_441->g_426.f7", print_hash_value);
    transparent_crc(p_441->g_435, "p_441->g_435", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
