// --atomics 13 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 71,29,3 -l 71,1,1
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

__constant uint32_t permutations[10][71] = {
{27,41,1,70,15,47,40,39,21,56,45,61,16,6,67,43,8,48,57,9,5,38,44,37,24,26,59,55,52,33,32,11,3,19,23,42,7,20,28,17,54,30,13,22,0,29,31,25,60,18,65,35,69,58,53,62,14,63,46,50,66,68,2,36,51,49,34,12,64,10,4}, // permutation 0
{28,54,47,66,33,40,60,59,13,63,19,16,67,49,22,12,48,31,0,3,51,4,24,25,29,55,17,36,14,42,6,50,41,57,21,18,37,58,62,70,68,23,9,69,39,65,20,1,64,8,27,11,61,35,34,53,43,52,5,44,2,26,30,7,46,32,56,45,15,38,10}, // permutation 1
{49,56,25,62,40,42,31,55,21,68,37,11,30,4,48,70,63,23,38,51,15,9,20,66,64,58,27,2,33,0,14,60,24,8,26,69,47,10,16,3,7,13,36,59,28,29,43,39,50,41,12,54,19,22,53,57,32,17,6,18,35,61,1,52,46,65,5,45,67,34,44}, // permutation 2
{58,42,33,28,55,25,3,32,1,67,54,65,64,56,14,61,57,2,24,53,9,7,22,51,63,13,4,30,5,18,45,46,8,36,16,47,66,60,43,21,15,49,62,17,41,0,52,68,20,11,35,26,6,48,12,10,38,70,23,69,37,19,44,59,40,27,39,31,34,50,29}, // permutation 3
{24,21,7,62,27,35,28,52,16,30,29,2,55,1,6,58,13,14,63,33,8,42,70,54,56,64,67,43,18,46,36,3,23,31,11,37,40,5,25,61,26,53,32,39,45,4,9,17,12,10,38,59,60,48,0,22,65,44,19,20,68,66,50,51,69,47,57,49,34,15,41}, // permutation 4
{1,29,30,36,14,54,70,56,18,39,8,59,63,21,13,24,66,49,43,17,2,19,5,45,61,6,28,16,0,37,35,52,41,57,64,38,27,4,22,33,15,55,65,9,11,25,69,47,26,58,48,46,32,10,44,50,53,20,31,67,68,60,34,23,12,42,51,3,7,62,40}, // permutation 5
{65,28,48,5,49,19,43,70,8,30,67,31,37,60,21,22,13,68,51,40,20,54,44,29,42,39,66,45,7,11,41,18,56,9,47,17,52,16,34,1,3,0,59,35,62,27,10,63,26,50,64,2,24,69,57,4,33,46,55,14,61,38,15,58,23,25,32,53,6,36,12}, // permutation 6
{67,31,39,69,20,58,51,38,59,54,11,17,24,56,60,16,46,7,66,52,63,62,6,68,41,45,32,28,49,25,35,61,14,40,12,5,55,26,0,33,50,18,57,37,15,21,23,2,3,48,64,53,30,4,27,65,34,44,43,70,42,36,29,8,13,19,1,22,10,9,47}, // permutation 7
{16,49,69,19,4,50,13,31,61,12,41,24,32,70,45,38,10,37,5,22,67,65,8,30,20,47,66,6,56,7,51,25,9,54,60,18,23,44,15,46,48,14,0,21,35,34,11,3,36,68,28,29,59,33,27,39,1,64,26,52,17,43,53,42,2,55,62,63,58,40,57}, // permutation 8
{16,4,60,18,17,35,29,59,37,22,9,2,55,46,15,10,34,41,28,1,69,45,64,12,62,8,56,63,67,33,13,51,32,31,66,3,65,49,7,61,27,44,20,6,25,43,68,11,58,53,26,21,38,48,52,54,23,19,24,57,5,47,36,70,14,40,50,0,30,39,42} // permutation 9
};

// Seed: 72

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile uint64_t  f0;
   volatile int64_t  f1;
   uint32_t  f2;
   uint32_t  f3;
   volatile int32_t  f4;
   volatile int8_t  f5;
   uint8_t  f6;
   volatile int16_t  f7;
   int16_t  f8;
};

struct S1 {
   volatile uint16_t  f0;
   uint32_t  f1;
   uint32_t  f2;
   volatile int16_t  f3;
   int32_t  f4;
};

union U2 {
   struct S0  f0;
   struct S1  f1;
};

struct S3 {
    int32_t g_15[3];
    int32_t *g_14;
    int16_t g_64;
    int8_t g_68;
    uint32_t g_69;
    int32_t g_71[9];
    int32_t *g_79;
    uint32_t g_84;
    uint64_t g_87;
    VECTOR(int32_t, 4) g_90;
    volatile uint64_t ** volatile g_131;
    VECTOR(int8_t, 2) g_150;
    VECTOR(uint16_t, 2) g_154;
    int32_t g_163;
    uint16_t g_165;
    struct S1 g_173;
    struct S1 * volatile g_174;
    int32_t *g_175;
    uint8_t g_178[7];
    uint64_t g_206;
    uint8_t *g_207;
    int32_t ** volatile g_209;
    int32_t ** volatile g_210;
    volatile struct S0 g_217;
    volatile VECTOR(int64_t, 2) g_234;
    VECTOR(int16_t, 2) g_249;
    int8_t *g_262;
    int8_t **g_261;
    int8_t *** volatile g_260[8][8];
    int8_t *** volatile g_263;
    VECTOR(int16_t, 16) g_268;
    volatile VECTOR(uint32_t, 2) g_271;
    uint64_t *g_287;
    uint64_t **g_286;
    struct S0 g_310;
    VECTOR(uint16_t, 2) g_317;
    struct S1 * volatile g_383;
    VECTOR(uint8_t, 4) g_391;
    struct S1 g_393;
    volatile VECTOR(int8_t, 8) g_398;
    uint64_t g_403;
    volatile struct S1 g_415;
    struct S1 g_429[2][1][10];
    int32_t **g_451;
    volatile VECTOR(int8_t, 16) g_475;
    uint64_t g_491;
    union U2 g_499;
    volatile VECTOR(int16_t, 2) g_512;
    VECTOR(int16_t, 8) g_513;
    VECTOR(int16_t, 16) g_515;
    struct S1 *g_552;
    volatile VECTOR(int16_t, 2) g_561;
    VECTOR(uint8_t, 4) g_572;
    VECTOR(uint32_t, 8) g_594;
    VECTOR(uint32_t, 16) g_595;
    union U2 g_612;
    int32_t ** volatile g_614;
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
    uint32_t tid;
    __local volatile uint32_t *l_atomic_input;
    __local volatile uint32_t *l_special_values;
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
int64_t  func_1(struct S3 * p_617);
int32_t * func_2(int32_t * p_3, int64_t  p_4, int32_t  p_5, uint32_t  p_6, int32_t * p_7, struct S3 * p_617);
int32_t * func_8(int32_t * p_9, int32_t * p_10, int32_t * p_11, int32_t  p_12, int32_t * p_13, struct S3 * p_617);
int32_t * func_16(int32_t * p_17, struct S3 * p_617);
int32_t * func_18(int64_t  p_19, uint32_t  p_20, int64_t  p_21, int32_t  p_22, struct S3 * p_617);
int64_t  func_26(int8_t  p_27, int32_t  p_28, uint32_t  p_29, int32_t * p_30, struct S3 * p_617);
int8_t  func_31(int32_t * p_32, int32_t * p_33, struct S3 * p_617);
int32_t * func_34(int32_t * p_35, struct S3 * p_617);
struct S1  func_37(uint16_t  p_38, int32_t * p_39, uint32_t  p_40, struct S3 * p_617);
int16_t  func_45(uint64_t  p_46, int32_t  p_47, struct S3 * p_617);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_617->g_14 p_617->l_comm_values p_617->g_comm_values p_617->g_64 p_617->g_15 p_617->g_71 p_617->g_87 p_617->g_84 p_617->g_131 p_617->g_150 p_617->g_154 p_617->g_90 p_617->g_79 p_617->g_173 p_617->g_174 p_617->g_175 p_617->g_178 p_617->g_163 p_617->g_207 p_617->g_209 p_617->g_217 p_617->g_234 p_617->g_206 p_617->g_69 p_617->g_263 p_617->g_268 p_617->g_271 p_617->g_286 p_617->g_287 p_617->g_165 p_617->g_310 p_617->g_317 p_617->g_262 p_617->g_383 p_617->g_391 p_617->g_393 p_617->g_398 p_617->g_403 p_617->g_415 p_617->g_68 p_617->g_429.f4 p_617->g_451 p_617->g_475 p_617->g_499 p_617->g_512 p_617->g_513 p_617->g_515 p_617->g_552 p_617->g_429 p_617->g_561 p_617->g_572 p_617->g_594 p_617->g_595 p_617->g_612 p_617->g_499.f0 p_617->g_614
 * writes: p_617->g_64 p_617->g_68 p_617->g_69 p_617->g_15 p_617->g_79 p_617->g_84 p_617->g_87 p_617->g_90 p_617->g_131 p_617->g_163 p_617->g_165 p_617->g_71 p_617->g_173 p_617->g_178 p_617->g_comm_values p_617->g_206 p_617->g_261 p_617->g_175 p_617->g_286 p_617->g_262 p_617->g_287 p_617->g_310 p_617->g_403 p_617->g_451 p_617->g_393.f4 p_617->g_491 p_617->l_comm_values p_617->g_217 p_617->g_14
 */
int64_t  func_1(struct S3 * p_617)
{ /* block id: 4 */
    uint64_t l_25 = 1UL;
    int32_t *l_36[1];
    uint64_t *l_205 = &p_617->g_206;
    uint8_t *l_208 = (void*)0;
    int32_t *l_602 = (void*)0;
    volatile struct S0 *l_615 = &p_617->g_217;
    uint32_t l_616 = 4UL;
    int i;
    for (i = 0; i < 1; i++)
        l_36[i] = &p_617->g_15[1];
    (*p_617->g_614) = func_2(func_8(p_617->g_14, func_16(func_18((safe_add_func_int16_t_s_s(p_617->l_comm_values[(safe_mod_func_uint32_t_u_u(p_617->tid, 71))], ((l_25 && (func_26(func_31(func_34(l_36[0], p_617), l_36[0], p_617), ((((*l_205) = GROUP_DIVERGE(2, 1)) , p_617->g_207) != l_208), p_617->g_150.y, p_617->g_14, p_617) ^ p_617->g_150.y)) <= 0x301CL))), p_617->g_150.y, p_617->g_150.y, p_617->l_comm_values[(safe_mod_func_uint32_t_u_u(p_617->tid, 71))], p_617), p_617), l_602, p_617->g_515.s8, p_617->g_14, p_617), p_617->g_268.sf, p_617->g_150.y, p_617->g_515.sd, p_617->g_14, p_617);
    (*l_615) = p_617->g_217;
    return l_616;
}


/* ------------------------------------------ */
/* 
 * reads : p_617->g_612 p_617->g_499.f0 p_617->g_451 p_617->g_175
 * writes: p_617->g_217
 */
int32_t * func_2(int32_t * p_3, int64_t  p_4, int32_t  p_5, uint32_t  p_6, int32_t * p_7, struct S3 * p_617)
{ /* block id: 234 */
    struct S0 *l_613[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int i;
    p_617->g_217 = (p_617->g_612 , p_617->g_499.f0);
    return (*p_617->g_451);
}


/* ------------------------------------------ */
/* 
 * reads : p_617->g_451 p_617->g_175
 * writes:
 */
int32_t * func_8(int32_t * p_9, int32_t * p_10, int32_t * p_11, int32_t  p_12, int32_t * p_13, struct S3 * p_617)
{ /* block id: 231 */
    int32_t *l_603 = &p_617->g_499.f1.f4;
    int32_t *l_604 = &p_617->g_15[1];
    int32_t *l_605[2];
    int8_t l_606 = 0x6AL;
    int32_t l_607 = 0x3E9793A4L;
    int64_t l_608 = (-4L);
    uint8_t l_609[6][7][1] = {{{0xDBL},{0xDBL},{0xDBL},{0xDBL},{0xDBL},{0xDBL},{0xDBL}},{{0xDBL},{0xDBL},{0xDBL},{0xDBL},{0xDBL},{0xDBL},{0xDBL}},{{0xDBL},{0xDBL},{0xDBL},{0xDBL},{0xDBL},{0xDBL},{0xDBL}},{{0xDBL},{0xDBL},{0xDBL},{0xDBL},{0xDBL},{0xDBL},{0xDBL}},{{0xDBL},{0xDBL},{0xDBL},{0xDBL},{0xDBL},{0xDBL},{0xDBL}},{{0xDBL},{0xDBL},{0xDBL},{0xDBL},{0xDBL},{0xDBL},{0xDBL}}};
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_605[i] = &p_617->g_499.f1.f4;
    --l_609[0][5][0];
    return (*p_617->g_451);
}


/* ------------------------------------------ */
/* 
 * reads : p_617->g_165 p_617->g_310 p_617->g_79 p_617->g_71 p_617->g_14 p_617->g_175 p_617->g_15 p_617->g_317 p_617->g_173.f4 p_617->g_271 p_617->g_262 p_617->g_234 p_617->g_286 p_617->g_174 p_617->g_173 p_617->g_383 p_617->l_comm_values p_617->g_comm_values p_617->g_64 p_617->g_87 p_617->g_84 p_617->g_131 p_617->g_154 p_617->g_391 p_617->g_393 p_617->g_398 p_617->g_403 p_617->g_287 p_617->g_415 p_617->g_68 p_617->g_217.f8 p_617->g_429.f4 p_617->g_217.f3 p_617->g_451 p_617->g_475 p_617->g_69 p_617->g_499 p_617->g_512 p_617->g_513 p_617->g_515 p_617->g_150 p_617->g_217.f2 p_617->g_90 p_617->g_552 p_617->g_429 p_617->g_561 p_617->g_572 p_617->g_178 p_617->g_594 p_617->g_595 p_617->g_163
 * writes: p_617->g_165 p_617->g_84 p_617->g_15 p_617->g_68 p_617->g_262 p_617->g_79 p_617->g_287 p_617->g_71 p_617->g_173.f4 p_617->g_310 p_617->g_173 p_617->g_64 p_617->g_69 p_617->g_87 p_617->g_90 p_617->g_131 p_617->g_206 p_617->g_403 p_617->g_comm_values p_617->g_451 p_617->g_393.f4 p_617->g_175 p_617->g_491 p_617->g_178 p_617->l_comm_values
 */
int32_t * func_16(int32_t * p_17, struct S3 * p_617)
{ /* block id: 96 */
    uint16_t l_293 = 1UL;
    uint16_t *l_302 = (void*)0;
    uint16_t *l_303 = &p_617->g_165;
    uint32_t *l_309 = &p_617->g_84;
    int32_t l_311 = 2L;
    int32_t l_312 = (-10L);
    VECTOR(uint8_t, 16) l_313 = (VECTOR(uint8_t, 16))(252UL, (VECTOR(uint8_t, 4))(252UL, (VECTOR(uint8_t, 2))(252UL, 1UL), 1UL), 1UL, 252UL, 1UL, (VECTOR(uint8_t, 2))(252UL, 1UL), (VECTOR(uint8_t, 2))(252UL, 1UL), 252UL, 1UL, 252UL, 1UL);
    VECTOR(uint8_t, 2) l_314 = (VECTOR(uint8_t, 2))(0x28L, 0xDCL);
    int8_t **l_320 = &p_617->g_262;
    int16_t *l_321 = (void*)0;
    int16_t *l_322 = (void*)0;
    int32_t l_323[4] = {9L,9L,9L,9L};
    int16_t *l_338[9][2][1] = {{{&p_617->g_310.f8},{&p_617->g_310.f8}},{{&p_617->g_310.f8},{&p_617->g_310.f8}},{{&p_617->g_310.f8},{&p_617->g_310.f8}},{{&p_617->g_310.f8},{&p_617->g_310.f8}},{{&p_617->g_310.f8},{&p_617->g_310.f8}},{{&p_617->g_310.f8},{&p_617->g_310.f8}},{{&p_617->g_310.f8},{&p_617->g_310.f8}},{{&p_617->g_310.f8},{&p_617->g_310.f8}},{{&p_617->g_310.f8},{&p_617->g_310.f8}}};
    int64_t l_343 = 0x1EAF65B7B6F859AAL;
    uint32_t l_374 = 8UL;
    uint8_t **l_381 = &p_617->g_207;
    VECTOR(int8_t, 2) l_418 = (VECTOR(int8_t, 2))(0x16L, (-1L));
    struct S1 *l_428[2];
    int32_t **l_452 = &p_617->g_79;
    VECTOR(int8_t, 16) l_476 = (VECTOR(int8_t, 16))(0x50L, (VECTOR(int8_t, 4))(0x50L, (VECTOR(int8_t, 2))(0x50L, 0x44L), 0x44L), 0x44L, 0x50L, 0x44L, (VECTOR(int8_t, 2))(0x50L, 0x44L), (VECTOR(int8_t, 2))(0x50L, 0x44L), 0x50L, 0x44L, 0x50L, 0x44L);
    VECTOR(int8_t, 2) l_477 = (VECTOR(int8_t, 2))((-1L), 0L);
    VECTOR(int16_t, 4) l_511 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x7912L), 0x7912L);
    VECTOR(int16_t, 8) l_516 = (VECTOR(int16_t, 8))(0x0E49L, (VECTOR(int16_t, 4))(0x0E49L, (VECTOR(int16_t, 2))(0x0E49L, 1L), 1L), 1L, 0x0E49L, 1L);
    uint16_t l_555[4];
    uint32_t l_560 = 2UL;
    VECTOR(int8_t, 8) l_566 = (VECTOR(int8_t, 8))(0x06L, (VECTOR(int8_t, 4))(0x06L, (VECTOR(int8_t, 2))(0x06L, 0x2DL), 0x2DL), 0x2DL, 0x06L, 0x2DL);
    VECTOR(uint8_t, 8) l_589 = (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 6UL), 6UL), 6UL, 255UL, 6UL);
    VECTOR(int32_t, 8) l_597 = (VECTOR(int32_t, 8))(0x2075DBD4L, (VECTOR(int32_t, 4))(0x2075DBD4L, (VECTOR(int32_t, 2))(0x2075DBD4L, 0x0DE20707L), 0x0DE20707L), 0x0DE20707L, 0x2075DBD4L, 0x0DE20707L);
    VECTOR(int32_t, 4) l_598 = (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), 0L), 0L);
    uint32_t l_601[3];
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_428[i] = &p_617->g_429[0][0][2];
    for (i = 0; i < 4; i++)
        l_555[i] = 65527UL;
    for (i = 0; i < 3; i++)
        l_601[i] = 0x7F399A5FL;
    (*p_17) &= (l_293 != ((safe_mul_func_int16_t_s_s((safe_mul_func_int16_t_s_s(3L, (safe_sub_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s(((*l_303) ^= GROUP_DIVERGE(0, 1)), 0)), ((l_293 >= (((safe_mul_func_uint8_t_u_u(((0x6A71BACAL >= (((safe_unary_minus_func_uint32_t_u((safe_mod_func_uint32_t_u_u(((*l_309) = l_293), (p_617->g_310 , ((*p_617->g_79) || 0x38DB7CF6L)))))) , p_617->g_14) != p_617->g_175)) , l_293), l_293)) > 0xCEDDF625L) <= l_293)) , FAKE_DIVERGE(p_617->group_1_offset, get_group_id(1), 10)))))), 65526UL)) || l_311));
    (*p_17) = ((((l_312 = (((VECTOR(int64_t, 2))(0x5E8C950F7E01795FL, 0x0EC4F91229C48321L)).odd , (l_311 < (l_311 , 0L)))) ^ l_311) , (l_312 | ((((VECTOR(uint8_t, 4))(abs(((VECTOR(uint8_t, 4))(max(((VECTOR(uint8_t, 16))(l_313.sb8274297aa096e82)).sdc94, ((VECTOR(uint8_t, 8))(l_314.yxyxyxxy)).even)))))).w == ((**l_320) = (safe_rshift_func_uint16_t_u_u((((8UL <= 0UL) > ((VECTOR(uint16_t, 4))(p_617->g_317.yxxx)).w) , (l_314.y >= (safe_div_func_int16_t_s_s((l_323[1] = (((*p_617->g_175) , (void*)0) == l_320)), (-8L))))), p_617->g_271.x)))) | 0UL))) < FAKE_DIVERGE(p_617->group_2_offset, get_group_id(2), 10));
    if ((atomic_inc(&p_617->g_atomic_input[13 * get_linear_group_id() + 2]) == 4))
    { /* block id: 105 */
        VECTOR(int32_t, 4) l_324 = (VECTOR(int32_t, 4))(0x531E6C8DL, (VECTOR(int32_t, 2))(0x531E6C8DL, 1L), 1L);
        uint16_t l_325 = 0xF132L;
        int16_t l_326[3];
        VECTOR(int32_t, 8) l_327 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0L), 0L), 0L, 1L, 0L);
        int32_t l_328 = 1L;
        struct S0 l_329 = {1UL,0L,0xD30AE7E3L,0x0E1B65AAL,0x217C3E0CL,0x7AL,1UL,-9L,0L};/* VOLATILE GLOBAL l_329 */
        struct S0 l_330 = {0x3987274B98C5EABFL,0x20BF0A18020ED561L,0xDBB6B75FL,0UL,0x3DDF15BDL,1L,0xFDL,0x0FB0L,0x7A7AL};/* VOLATILE GLOBAL l_330 */
        int8_t l_331[2];
        int16_t l_332 = 1L;
        uint64_t l_333 = 0xEBCE35BBA301228EL;
        int i;
        for (i = 0; i < 3; i++)
            l_326[i] = 0x251EL;
        for (i = 0; i < 2; i++)
            l_331[i] = 0L;
        l_326[1] = (l_325 |= ((VECTOR(int32_t, 4))(l_324.xyxx)).y);
        l_328 = ((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 2))(9L, 0x23ACC0A0L)), ((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(l_327.s4503)))), ((VECTOR(int32_t, 2))(6L, 0x534E740CL)).yyyy))).odd))).hi;
        l_330 = l_329;
        l_333--;
        unsigned int result = 0;
        result += l_324.w;
        result += l_324.z;
        result += l_324.y;
        result += l_324.x;
        result += l_325;
        int l_326_i0;
        for (l_326_i0 = 0; l_326_i0 < 3; l_326_i0++) {
            result += l_326[l_326_i0];
        }
        result += l_327.s7;
        result += l_327.s6;
        result += l_327.s5;
        result += l_327.s4;
        result += l_327.s3;
        result += l_327.s2;
        result += l_327.s1;
        result += l_327.s0;
        result += l_328;
        result += l_329.f0;
        result += l_329.f1;
        result += l_329.f2;
        result += l_329.f3;
        result += l_329.f4;
        result += l_329.f5;
        result += l_329.f6;
        result += l_329.f7;
        result += l_329.f8;
        result += l_330.f0;
        result += l_330.f1;
        result += l_330.f2;
        result += l_330.f3;
        result += l_330.f4;
        result += l_330.f5;
        result += l_330.f6;
        result += l_330.f7;
        result += l_330.f8;
        int l_331_i0;
        for (l_331_i0 = 0; l_331_i0 < 2; l_331_i0++) {
            result += l_331[l_331_i0];
        }
        result += l_332;
        result += l_333;
        atomic_add(&p_617->g_special_values[13 * get_linear_group_id() + 2], result);
    }
    else
    { /* block id: 111 */
        (1 + 1);
    }
    if ((safe_div_func_int16_t_s_s((l_323[1] = p_617->g_234.x), 0x287EL)))
    { /* block id: 115 */
        int8_t *l_339 = (void*)0;
        int8_t **l_340 = (void*)0;
        int8_t *l_342 = (void*)0;
        int8_t **l_341 = &l_342;
        l_343 ^= (((*l_320) = l_339) == ((*l_341) = l_339));
    }
    else
    { /* block id: 119 */
        int32_t *l_344 = (void*)0;
        int32_t **l_345 = &p_617->g_79;
        int32_t l_361 = (-9L);
        int32_t l_368 = 0x239F17EEL;
        int32_t l_369 = 0x173FE690L;
        int32_t l_371[9] = {0x2FBDEDD9L,0x2FBDEDD9L,0x2FBDEDD9L,0x2FBDEDD9L,0x2FBDEDD9L,0x2FBDEDD9L,0x2FBDEDD9L,0x2FBDEDD9L,0x2FBDEDD9L};
        uint32_t *l_460 = &p_617->g_310.f3;
        VECTOR(int8_t, 16) l_480 = (VECTOR(int8_t, 16))(0x25L, (VECTOR(int8_t, 4))(0x25L, (VECTOR(int8_t, 2))(0x25L, 0L), 0L), 0L, 0x25L, 0L, (VECTOR(int8_t, 2))(0x25L, 0L), (VECTOR(int8_t, 2))(0x25L, 0L), 0x25L, 0L, 0x25L, 0L);
        int64_t l_483 = 0x70737E0E769A47CAL;
        VECTOR(int16_t, 16) l_517 = (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x0664L), 0x0664L), 0x0664L, 0L, 0x0664L, (VECTOR(int16_t, 2))(0L, 0x0664L), (VECTOR(int16_t, 2))(0L, 0x0664L), 0L, 0x0664L, 0L, 0x0664L);
        int16_t l_535 = 0x6F18L;
        VECTOR(uint8_t, 8) l_538 = (VECTOR(uint8_t, 8))(0x87L, (VECTOR(uint8_t, 4))(0x87L, (VECTOR(uint8_t, 2))(0x87L, 1UL), 1UL), 1UL, 0x87L, 1UL);
        struct S1 *l_551 = &p_617->g_429[0][0][6];
        VECTOR(int8_t, 4) l_567 = (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0L), 0L);
        uint8_t *l_573 = (void*)0;
        uint8_t *l_574[10][4] = {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}};
        VECTOR(int16_t, 2) l_585 = (VECTOR(int16_t, 2))((-10L), 0L);
        int64_t *l_586[8][9] = {{&l_483,&l_483,&l_343,(void*)0,&l_483,(void*)0,&l_343,&l_483,&l_483},{&l_483,&l_483,&l_343,(void*)0,&l_483,(void*)0,&l_343,&l_483,&l_483},{&l_483,&l_483,&l_343,(void*)0,&l_483,(void*)0,&l_343,&l_483,&l_483},{&l_483,&l_483,&l_343,(void*)0,&l_483,(void*)0,&l_343,&l_483,&l_483},{&l_483,&l_483,&l_343,(void*)0,&l_483,(void*)0,&l_343,&l_483,&l_483},{&l_483,&l_483,&l_343,(void*)0,&l_483,(void*)0,&l_343,&l_483,&l_483},{&l_483,&l_483,&l_343,(void*)0,&l_483,(void*)0,&l_343,&l_483,&l_483},{&l_483,&l_483,&l_343,(void*)0,&l_483,(void*)0,&l_343,&l_483,&l_483}};
        VECTOR(int32_t, 16) l_596 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-3L)), (-3L)), (-3L), (-1L), (-3L), (VECTOR(int32_t, 2))((-1L), (-3L)), (VECTOR(int32_t, 2))((-1L), (-3L)), (-1L), (-3L), (-1L), (-3L));
        uint32_t l_599 = 0x63A686E8L;
        int32_t l_600[3];
        int i, j;
        for (i = 0; i < 3; i++)
            l_600[i] = 0x3EB47BB1L;
        (*l_345) = l_344;
        if ((((*p_617->g_286) = (void*)0) == &p_617->g_87))
        { /* block id: 122 */
            uint8_t l_351 = 255UL;
            int32_t l_354 = (-7L);
            int8_t l_355 = (-9L);
            int32_t l_362[6][6][7] = {{{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)},{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)},{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)},{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)},{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)},{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)}},{{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)},{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)},{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)},{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)},{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)},{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)}},{{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)},{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)},{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)},{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)},{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)},{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)}},{{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)},{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)},{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)},{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)},{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)},{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)}},{{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)},{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)},{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)},{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)},{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)},{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)}},{{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)},{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)},{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)},{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)},{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)},{(-8L),0x70094E84L,0x4D086CC4L,1L,(-1L),0x6A21CE6FL,(-1L)}}};
            VECTOR(uint8_t, 16) l_408 = (VECTOR(uint8_t, 16))(249UL, (VECTOR(uint8_t, 4))(249UL, (VECTOR(uint8_t, 2))(249UL, 0x49L), 0x49L), 0x49L, 249UL, 0x49L, (VECTOR(uint8_t, 2))(249UL, 0x49L), (VECTOR(uint8_t, 2))(249UL, 0x49L), 249UL, 0x49L, 249UL, 0x49L);
            VECTOR(int64_t, 2) l_419 = (VECTOR(int64_t, 2))(0x00D2AF56BBDED5D8L, 0x7D45AB81DD4E567DL);
            VECTOR(uint8_t, 8) l_444 = (VECTOR(uint8_t, 8))(0x0AL, (VECTOR(uint8_t, 4))(0x0AL, (VECTOR(uint8_t, 2))(0x0AL, 0UL), 0UL), 0UL, 0x0AL, 0UL);
            uint8_t l_473 = 0x0CL;
            VECTOR(int8_t, 4) l_474 = (VECTOR(int8_t, 4))(0x6EL, (VECTOR(int8_t, 2))(0x6EL, 1L), 1L);
            VECTOR(int8_t, 4) l_488 = (VECTOR(int8_t, 4))(0x4AL, (VECTOR(int8_t, 2))(0x4AL, 0L), 0L);
            struct S0 *l_492 = (void*)0;
            uint32_t l_493 = 4294967289UL;
            int32_t *l_494 = &l_369;
            int i, j, k;
            if ((*p_17))
            { /* block id: 123 */
                VECTOR(int8_t, 16) l_367 = (VECTOR(int8_t, 16))(3L, (VECTOR(int8_t, 4))(3L, (VECTOR(int8_t, 2))(3L, 0x09L), 0x09L), 0x09L, 3L, 0x09L, (VECTOR(int8_t, 2))(3L, 0x09L), (VECTOR(int8_t, 2))(3L, 0x09L), 3L, 0x09L, 3L, 0x09L);
                int32_t l_370 = (-9L);
                int32_t l_372 = 1L;
                VECTOR(int32_t, 8) l_373 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 6L), 6L), 6L, (-1L), 6L);
                struct S0 *l_379 = &p_617->g_310;
                int i;
                for (l_312 = 0; (l_312 == (-28)); --l_312)
                { /* block id: 126 */
                    int32_t *l_348 = &p_617->g_173.f4;
                    int32_t *l_349 = &p_617->g_15[1];
                    int32_t *l_350 = &p_617->g_173.f4;
                    int32_t *l_356 = &l_323[2];
                    int32_t *l_357 = &l_354;
                    int32_t *l_358 = (void*)0;
                    int32_t *l_359 = &p_617->g_173.f4;
                    int32_t *l_360 = (void*)0;
                    int32_t *l_363 = (void*)0;
                    int32_t *l_364 = &l_362[4][1][6];
                    int32_t *l_365 = &l_323[2];
                    int32_t *l_366[8][5] = {{&p_617->g_71[4],&l_361,&l_361,&p_617->g_71[4],&l_362[4][1][6]},{&p_617->g_71[4],&l_361,&l_361,&p_617->g_71[4],&l_362[4][1][6]},{&p_617->g_71[4],&l_361,&l_361,&p_617->g_71[4],&l_362[4][1][6]},{&p_617->g_71[4],&l_361,&l_361,&p_617->g_71[4],&l_362[4][1][6]},{&p_617->g_71[4],&l_361,&l_361,&p_617->g_71[4],&l_362[4][1][6]},{&p_617->g_71[4],&l_361,&l_361,&p_617->g_71[4],&l_362[4][1][6]},{&p_617->g_71[4],&l_361,&l_361,&p_617->g_71[4],&l_362[4][1][6]},{&p_617->g_71[4],&l_361,&l_361,&p_617->g_71[4],&l_362[4][1][6]}};
                    int i, j;
                    l_351--;
                    if (l_323[0])
                        break;
                    ++l_374;
                }
                (*p_617->g_175) |= (((*p_17) = (safe_mod_func_uint16_t_u_u((!((VECTOR(uint16_t, 2))(65528UL, 0x59A9L)).hi), (l_354 = l_314.y)))) , l_362[4][2][1]);
                (*p_617->g_175) |= 0x0B15086BL;
                (*l_379) = p_617->g_310;
            }
            else
            { /* block id: 136 */
                int64_t l_380[6][1] = {{0x42C9004BFDDC9924L},{0x42C9004BFDDC9924L},{0x42C9004BFDDC9924L},{0x42C9004BFDDC9924L},{0x42C9004BFDDC9924L},{0x42C9004BFDDC9924L}};
                int32_t l_388 = 1L;
                int64_t *l_426 = (void*)0;
                int64_t *l_427 = &l_343;
                int64_t *l_430 = (void*)0;
                int64_t *l_431 = (void*)0;
                int64_t *l_432 = (void*)0;
                uint16_t *l_447 = (void*)0;
                int8_t ***l_457 = &p_617->g_261;
                int32_t ***l_458 = (void*)0;
                int i, j;
                if (((5UL ^ l_380[1][0]) > ((void*)0 != &l_323[1])))
                { /* block id: 137 */
                    uint8_t ***l_382 = &l_381;
                    (*l_382) = l_381;
                    (*p_617->g_383) = (*p_617->g_174);
                    (*l_345) = func_34(p_17, p_617);
                    (*p_617->g_14) |= (safe_mul_func_int8_t_s_s((l_344 != (void*)0), FAKE_DIVERGE(p_617->global_0_offset, get_global_id(0), 10)));
                }
                else
                { /* block id: 142 */
                    VECTOR(int8_t, 4) l_394 = (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 1L), 1L);
                    VECTOR(int8_t, 16) l_396 = (VECTOR(int8_t, 16))(0x0EL, (VECTOR(int8_t, 4))(0x0EL, (VECTOR(int8_t, 2))(0x0EL, 1L), 1L), 1L, 0x0EL, 1L, (VECTOR(int8_t, 2))(0x0EL, 1L), (VECTOR(int8_t, 2))(0x0EL, 1L), 0x0EL, 1L, 0x0EL, 1L);
                    VECTOR(int8_t, 2) l_397 = (VECTOR(int8_t, 2))(1L, 5L);
                    int32_t l_404 = 0x0BA36459L;
                    int i;
                    for (p_617->g_310.f6 = 9; (p_617->g_310.f6 < 45); ++p_617->g_310.f6)
                    { /* block id: 145 */
                        uint8_t l_392 = 249UL;
                        VECTOR(int8_t, 2) l_395 = (VECTOR(int8_t, 2))(0x06L, 1L);
                        uint64_t *l_401 = &p_617->g_206;
                        uint64_t *l_402 = &p_617->g_403;
                        uint8_t l_405 = 1UL;
                        int i;
                        (*p_17) = ((p_617->g_154.y == ((*l_303) |= (l_388 < 0x2CL))) & 65535UL);
                        (*p_617->g_175) ^= (safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 4))(p_617->g_391.zyzw)).lo, ((VECTOR(uint8_t, 16))(p_617->g_310.f5, 7UL, ((l_392 , p_617->g_393) , ((l_392 , (((((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 4))(8UL, ((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(int8_t, 8))(max(((VECTOR(int8_t, 16))(l_394.wzzxzxwwyxyxxyxx)).even, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 8))(sub_sat(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(l_395.yyyx)).even)))).yxyxxyxy, ((VECTOR(int8_t, 2))(l_396.se8)).yxyxxxyy))).s04, ((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(l_397.yxyx)).hi)).xxxyxxxx)))).lo))).hi))))).xxxx)).zwwzzyzw))).s15, ((VECTOR(int8_t, 2))(p_617->g_398.s41))))), 0xEFL, 1UL)).x, (safe_mul_func_int16_t_s_s((l_404 = ((&p_617->g_207 != (((l_397.x , (&l_343 != (((*l_402) ^= ((*l_401) = l_380[1][0])) , p_617->g_287))) || 0L) , (void*)0)) , (-1L))), 0x74B2L)), 0xB9L, 7UL, 0x4EL, 0xBAL, 254UL, ((VECTOR(uint8_t, 2))(0x72L)), ((VECTOR(uint8_t, 4))(254UL)), ((VECTOR(uint8_t, 2))(0x2FL)), 0xA8L)).sd8)), 0x32L, 253UL)).lo, ((VECTOR(uint8_t, 2))(2UL))))), 1UL)).lo))).even | 1L) <= (*p_17)) > l_380[3][0])) || 0x47E454DC38B53E16L)), ((VECTOR(uint8_t, 4))(255UL)), l_388, FAKE_DIVERGE(p_617->local_0_offset, get_local_id(0), 10), ((VECTOR(uint8_t, 4))(1UL)), 0xC3L, 1UL, 251UL)).s65, ((VECTOR(uint8_t, 2))(255UL))))))))))).yyyxxxxx)).s1, l_405));
                    }
                    return p_17;
                }
                for (l_374 = 0; (l_374 != 55); l_374++)
                { /* block id: 157 */
                    ++l_408.s0;
                    (*l_345) = &l_323[1];
                }
                if (((((VECTOR(int64_t, 2))((-10L), 6L)).lo == (((safe_div_func_int64_t_s_s((p_617->g_comm_values[p_617->tid] &= ((safe_mul_func_uint16_t_u_u(p_617->g_173.f4, (l_362[5][5][0] |= l_380[3][0]))) && ((*p_17) &= (((p_617->g_415 , (((safe_add_func_uint32_t_u_u((((l_312 = ((VECTOR(int8_t, 4))(l_418.xyxy)).x) >= ((*p_617->g_79) , ((((VECTOR(int64_t, 4))(l_419.yxxy)).y == (safe_mul_func_int8_t_s_s(0x43L, (((safe_mod_func_int32_t_s_s((((((*p_617->g_175) |= (safe_lshift_func_int8_t_s_u((*p_617->g_262), 0))) < (((*l_427) = 0x73D86DDF92009A47L) <= l_380[1][0])) | (0x2AL | l_314.y)) & 6UL), l_380[1][0])) & 0xFCBCCFBAA4664BDAL) <= l_354)))) <= l_374))) > p_617->g_217.f8), GROUP_DIVERGE(0, 1))) , &p_617->g_173) != l_428[1])) || p_617->g_310.f0) == 0x253FL)))), l_408.s7)) <= l_313.se) <= 0x63B27E8873B0AC06L)) | l_408.s8))
                { /* block id: 167 */
                    VECTOR(uint8_t, 8) l_437 = (VECTOR(uint8_t, 8))(252UL, (VECTOR(uint8_t, 4))(252UL, (VECTOR(uint8_t, 2))(252UL, 9UL), 9UL), 9UL, 252UL, 9UL);
                    int32_t ***l_448 = &l_345;
                    int32_t **l_450 = &p_617->g_79;
                    int32_t ***l_449[2][8] = {{&l_450,&l_450,&l_450,&l_450,&l_450,&l_450,&l_450,&l_450},{&l_450,&l_450,&l_450,&l_450,&l_450,&l_450,&l_450,&l_450}};
                    uint32_t **l_459 = (void*)0;
                    struct S1 **l_463[10][3][8] = {{{&l_428[0],(void*)0,(void*)0,(void*)0,&l_428[0],&l_428[1],&l_428[1],(void*)0},{&l_428[0],(void*)0,(void*)0,(void*)0,&l_428[0],&l_428[1],&l_428[1],(void*)0},{&l_428[0],(void*)0,(void*)0,(void*)0,&l_428[0],&l_428[1],&l_428[1],(void*)0}},{{&l_428[0],(void*)0,(void*)0,(void*)0,&l_428[0],&l_428[1],&l_428[1],(void*)0},{&l_428[0],(void*)0,(void*)0,(void*)0,&l_428[0],&l_428[1],&l_428[1],(void*)0},{&l_428[0],(void*)0,(void*)0,(void*)0,&l_428[0],&l_428[1],&l_428[1],(void*)0}},{{&l_428[0],(void*)0,(void*)0,(void*)0,&l_428[0],&l_428[1],&l_428[1],(void*)0},{&l_428[0],(void*)0,(void*)0,(void*)0,&l_428[0],&l_428[1],&l_428[1],(void*)0},{&l_428[0],(void*)0,(void*)0,(void*)0,&l_428[0],&l_428[1],&l_428[1],(void*)0}},{{&l_428[0],(void*)0,(void*)0,(void*)0,&l_428[0],&l_428[1],&l_428[1],(void*)0},{&l_428[0],(void*)0,(void*)0,(void*)0,&l_428[0],&l_428[1],&l_428[1],(void*)0},{&l_428[0],(void*)0,(void*)0,(void*)0,&l_428[0],&l_428[1],&l_428[1],(void*)0}},{{&l_428[0],(void*)0,(void*)0,(void*)0,&l_428[0],&l_428[1],&l_428[1],(void*)0},{&l_428[0],(void*)0,(void*)0,(void*)0,&l_428[0],&l_428[1],&l_428[1],(void*)0},{&l_428[0],(void*)0,(void*)0,(void*)0,&l_428[0],&l_428[1],&l_428[1],(void*)0}},{{&l_428[0],(void*)0,(void*)0,(void*)0,&l_428[0],&l_428[1],&l_428[1],(void*)0},{&l_428[0],(void*)0,(void*)0,(void*)0,&l_428[0],&l_428[1],&l_428[1],(void*)0},{&l_428[0],(void*)0,(void*)0,(void*)0,&l_428[0],&l_428[1],&l_428[1],(void*)0}},{{&l_428[0],(void*)0,(void*)0,(void*)0,&l_428[0],&l_428[1],&l_428[1],(void*)0},{&l_428[0],(void*)0,(void*)0,(void*)0,&l_428[0],&l_428[1],&l_428[1],(void*)0},{&l_428[0],(void*)0,(void*)0,(void*)0,&l_428[0],&l_428[1],&l_428[1],(void*)0}},{{&l_428[0],(void*)0,(void*)0,(void*)0,&l_428[0],&l_428[1],&l_428[1],(void*)0},{&l_428[0],(void*)0,(void*)0,(void*)0,&l_428[0],&l_428[1],&l_428[1],(void*)0},{&l_428[0],(void*)0,(void*)0,(void*)0,&l_428[0],&l_428[1],&l_428[1],(void*)0}},{{&l_428[0],(void*)0,(void*)0,(void*)0,&l_428[0],&l_428[1],&l_428[1],(void*)0},{&l_428[0],(void*)0,(void*)0,(void*)0,&l_428[0],&l_428[1],&l_428[1],(void*)0},{&l_428[0],(void*)0,(void*)0,(void*)0,&l_428[0],&l_428[1],&l_428[1],(void*)0}},{{&l_428[0],(void*)0,(void*)0,(void*)0,&l_428[0],&l_428[1],&l_428[1],(void*)0},{&l_428[0],(void*)0,(void*)0,(void*)0,&l_428[0],&l_428[1],&l_428[1],(void*)0},{&l_428[0],(void*)0,(void*)0,(void*)0,&l_428[0],&l_428[1],&l_428[1],(void*)0}}};
                    struct S1 ***l_464 = &l_463[0][1][0];
                    VECTOR(int32_t, 8) l_471 = (VECTOR(int32_t, 8))(2L, (VECTOR(int32_t, 4))(2L, (VECTOR(int32_t, 2))(2L, 1L), 1L), 1L, 2L, 1L);
                    int i, j, k;
                    (*p_17) = (safe_mul_func_int8_t_s_s((safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 8))(l_437.s10520320)).s4, l_293)), (((safe_mul_func_uint16_t_u_u((((GROUP_DIVERGE(2, 1) < ((l_460 = ((((((safe_add_func_int16_t_s_s((safe_sub_func_int16_t_s_s((((VECTOR(uint8_t, 16))(l_444.s3265025444732753)).sb & (((l_362[0][2][2] , (((safe_rshift_func_uint8_t_u_s(GROUP_DIVERGE(1, 1), l_314.x)) , &p_617->g_165) == l_447)) >= (((p_617->g_451 = ((*l_448) = &p_617->g_175)) == l_452) , ((((safe_lshift_func_uint16_t_u_u((safe_mod_func_int16_t_s_s((l_408.s8 && ((*l_427) = (l_457 != &l_320))), p_617->g_429[0][0][2].f4)), l_380[1][0])) < 0xC1BB2638L) , (void*)0) == l_458))) | l_355)), GROUP_DIVERGE(0, 1))), (-1L))) == 4UL) <= GROUP_DIVERGE(1, 1)) , (-1L)) <= p_617->g_391.w) , &p_617->g_84)) == &p_617->g_84)) != p_617->g_217.f3) ^ (**l_452)), l_362[3][4][0])) , 0UL) || l_380[1][0])));
                    for (p_617->g_393.f4 = 0; (p_617->g_393.f4 == (-13)); p_617->g_393.f4--)
                    { /* block id: 175 */
                        if ((*p_617->g_14))
                            break;
                        (*p_617->g_451) = (void*)0;
                    }
                    (*l_464) = l_463[4][0][4];
                    for (l_354 = 0; (l_354 > (-28)); l_354 = safe_sub_func_uint32_t_u_u(l_354, 1))
                    { /* block id: 182 */
                        int8_t l_469 = (-9L);
                        VECTOR(int32_t, 4) l_470 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x4EA03C6BL), 0x4EA03C6BL);
                        int i;
                        l_470.z ^= (!((*p_617->g_14) = ((safe_mul_func_int16_t_s_s((**l_450), (l_469 != l_354))) > (p_17 == p_17))));
                        (**l_450) |= ((VECTOR(int32_t, 8))(l_471.s01146731)).s1;
                    }
                }
                else
                { /* block id: 187 */
                    int32_t *l_472 = &l_323[1];
                    p_17 = l_472;
                }
            }
            (*l_494) ^= (((VECTOR(int8_t, 16))(l_473, 1L, ((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 16))(l_474.zywzzxywzzzzxwwx)).s781d, ((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 4))(0x22L, 0x24L, 0x37L, 0x61L)).lo, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(p_617->g_475.sa8ec)).xzzwxyzzywzyzxyx)), ((VECTOR(int8_t, 4))(rotate(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(l_476.s08)))).yyxx, ((VECTOR(int8_t, 8))(l_477.yyyxxyyx)).hi))).xxwxyyxwwwwzxzzw))).sc251)).even))).xyxy, ((VECTOR(int8_t, 2))((-1L), 0x55L)).xyxy))), (-1L), ((VECTOR(int8_t, 4))(0x2EL, 7L, (-1L), 0x21L)), 4L, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(8L, ((safe_mul_func_uint8_t_u_u(0xDEL, ((VECTOR(int8_t, 2))(l_480.s3a)).lo)) == (((safe_div_func_int64_t_s_s(0x2DCEDD759CC1B78AL, l_483)) > p_617->g_475.s8) & (safe_div_func_int16_t_s_s((safe_mod_func_int8_t_s_s((!((VECTOR(int8_t, 16))(0x7AL, ((VECTOR(int8_t, 4))(l_488.xywy)), ((safe_sub_func_int16_t_s_s((p_617->g_491 = (GROUP_DIVERGE(2, 1) | (*p_17))), (l_362[0][0][1] ^= p_617->g_69))) , (l_492 == l_492)), ((VECTOR(int8_t, 4))(0x6AL)), 0x6BL, (*p_617->g_262), ((VECTOR(int8_t, 2))(1L)), 0x69L, (-1L))).sd), (-1L))), p_617->g_71[2])))), 0x79L, 0x3FL)), ((VECTOR(int8_t, 8))(0L)), l_493, l_355, (-1L), 0L)).sdf92)))).s2 && l_419.x);
        }
        else
        { /* block id: 194 */
            int32_t l_502 = 1L;
            VECTOR(int16_t, 8) l_514 = (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x66AFL), 0x66AFL), 0x66AFL, 0L, 0x66AFL);
            int32_t l_554 = (-6L);
            int32_t l_556 = 0x74C5D7A3L;
            int i;
            for (p_617->g_310.f8 = 0; (p_617->g_310.f8 == 29); p_617->g_310.f8++)
            { /* block id: 197 */
                uint8_t l_518 = 0x79L;
                (**p_617->g_451) = (safe_div_func_uint16_t_u_u((0xD2783233DEA87103L == ((((p_617->g_499 , (((VECTOR(int32_t, 4))(0x306478B8L, ((((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))((-1L), 0x65669A18993F8308L)))).hi != ((safe_lshift_func_uint8_t_u_s(l_502, (l_502 , ((safe_div_func_int8_t_s_s(l_502, (((safe_mod_func_int64_t_s_s((safe_rshift_func_int16_t_s_s(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(l_511.zzyxzyxwywxwyzyx)).sac)), ((VECTOR(int16_t, 2))(p_617->g_512.yy)), ((VECTOR(int16_t, 4))(p_617->g_513.s2634)))).s06, ((VECTOR(int16_t, 8))(rhadd(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(mul_hi(((VECTOR(int16_t, 16))(l_514.s3207027633665555)).odd, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(p_617->g_515.s0d)).yxyxyxxy))))).s2076147557464104)).hi, ((VECTOR(int16_t, 4))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 4),((VECTOR(int16_t, 2))(0x3061L, 1L)).xyxx, ((VECTOR(int16_t, 16))(l_516.s0234520643352445)).s9cd8, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_517.s3c)), 0x5254L, (-5L)))))).xwyywwzy))).s10))))), 0x7E28L, 0L)).z, 14)), l_518)) || (l_514.s4 < (p_617->g_150.y ^ 0xC79FL))) && 0x4CL))) <= 0x9EBCL)))) & l_514.s5)) || GROUP_DIVERGE(0, 1)), (-1L), 0x22886175L)).y <= 0x0AF2A789L)) && 3L) , 0x8512L) || l_518)), p_617->g_391.z));
                for (l_518 = (-12); (l_518 > 51); ++l_518)
                { /* block id: 201 */
                    return p_17;
                }
            }
            for (l_293 = (-7); (l_293 >= 54); l_293 = safe_add_func_int16_t_s_s(l_293, 3))
            { /* block id: 207 */
                VECTOR(int64_t, 8) l_534 = (VECTOR(int64_t, 8))(0x51EC7C141C0B50B9L, (VECTOR(int64_t, 4))(0x51EC7C141C0B50B9L, (VECTOR(int64_t, 2))(0x51EC7C141C0B50B9L, (-10L)), (-10L)), (-10L), 0x51EC7C141C0B50B9L, (-10L));
                int32_t l_553 = (-1L);
                int i;
                (*p_617->g_175) = (+((safe_rshift_func_uint16_t_u_s((l_502 | ((((safe_unary_minus_func_uint8_t_u((safe_mod_func_uint8_t_u_u(((safe_add_func_uint16_t_u_u(0xC581L, ((safe_div_func_int32_t_s_s((((*l_303) ^= (((safe_lshift_func_uint16_t_u_s(1UL, 12)) , ((((VECTOR(int64_t, 16))(l_534.s0302762222163772)).sf && l_535) , (safe_lshift_func_uint8_t_u_u(((VECTOR(uint8_t, 2))(safe_clamp_func(VECTOR(uint8_t, 2),VECTOR(uint8_t, 2),((VECTOR(uint8_t, 2))(0xC0L, 255UL)), ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(l_538.s21)), ((safe_mul_func_int8_t_s_s((safe_lshift_func_int8_t_s_s(l_514.s4, 0)), (0x20L != (~(safe_mul_func_int8_t_s_s((((*p_17) = ((safe_rshift_func_int16_t_s_u((safe_mod_func_int16_t_s_s((l_554 = (safe_div_func_int64_t_s_s((l_502 | (((l_553 = ((&p_617->g_173 != (p_617->g_552 = l_551)) , l_514.s2)) ^ GROUP_DIVERGE(2, 1)) != l_313.s2)), l_514.s5))), l_514.s6)), 6)) , (*p_17))) <= (**p_617->g_451)), FAKE_DIVERGE(p_617->group_2_offset, get_group_id(2), 10))))))) ^ 0x66F90E30L), ((VECTOR(uint8_t, 4))(1UL)), 0UL)))).s06, ((VECTOR(uint8_t, 2))(2UL))))).odd, l_555[2])))) , 0xA409L)) < p_617->g_217.f2), p_617->g_90.z)) > l_556))) <= l_534.s0), l_534.s0)))) , (*p_617->g_552)) , l_534.s4) > l_534.s5)), 3)) == l_514.s7));
                if ((*p_17))
                { /* block id: 214 */
                    uint16_t l_557[7];
                    int i;
                    for (i = 0; i < 7; i++)
                        l_557[i] = 1UL;
                    l_557[1]++;
                }
                else
                { /* block id: 216 */
                    (*p_17) |= l_554;
                    if (l_560)
                        break;
                    (**p_617->g_451) = (*p_17);
                }
            }
        }
        atomic_or(&p_617->g_atomic_reduction[get_linear_group_id()], (((VECTOR(int16_t, 2))(p_617->g_561.xx)).hi ^ ((safe_mul_func_int16_t_s_s((safe_mul_func_int8_t_s_s(((*p_617->g_262) = (((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(abs(((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(l_566.s3133)).xzxyzywxywxxwxyy)).s3b, ((VECTOR(int8_t, 8))(max(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),VECTOR(int8_t, 4),((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 16))(((((!((VECTOR(int8_t, 4))(l_567.wywx)).z) > FAKE_DIVERGE(p_617->local_1_offset, get_local_id(1), 10)) || (safe_lshift_func_int16_t_s_u((((safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 8))(p_617->g_572.zzyyzzzz)).s7, 6)) >= (((--p_617->g_178[1]) < 255UL) || (((l_361 && (l_314.y != (safe_mod_func_int8_t_s_s((((p_617->g_429[0][0][2].f4 | (safe_add_func_int64_t_s_s((l_323[1] = (safe_mod_func_int16_t_s_s(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(l_585.yxxxyxyxyyyyxxyy)).s07)).hi, FAKE_DIVERGE(p_617->local_1_offset, get_local_id(1), 10)))), ((safe_add_func_int8_t_s_s(0x4EL, ((VECTOR(uint8_t, 8))(min(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(l_589.s10422350)).s0546046653700741)).lo, (uint8_t)(safe_mul_func_int16_t_s_s(((safe_sub_func_int64_t_s_s((p_617->l_comm_values[(safe_mod_func_uint32_t_u_u(p_617->tid, 71))] ^= (((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 2),((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(p_617->g_594.s53306102)).s10)), ((VECTOR(uint32_t, 2))(0xC6795960L, 0xEE152CA6L)), ((VECTOR(uint32_t, 16))(p_617->g_595.s2dc9a835bf6745d6)).s99))).xyyyxyyy)).s1 <= (!((!((p_617->g_150.y , &l_293) != &l_555[2])) == ((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(l_596.s527a)).lo, ((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_597.s32725033)).s36)), ((VECTOR(int32_t, 16))(sub_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_598.zy)).yyxy)), ((*p_617->g_14) |= (GROUP_DIVERGE(1, 1) != l_599)), ((VECTOR(int32_t, 2))(0x2C9B2374L)), (-3L))).s05)).yyxx)).xwzyzyxzzxywzzyw, ((VECTOR(int32_t, 16))(0x11BA649BL))))).s20, ((VECTOR(int32_t, 2))(0x3C0011AAL)))))))).odd)))), p_617->g_572.z)) , 0x531BL), GROUP_DIVERGE(2, 1)))))).s6)) > 0xD6B1D301022D71B3L)))) , 3L) , 0x2EL), 0x7EL)))) , 0x2700L) >= p_617->g_178[5]))) < (*p_617->g_262)), l_600[2]))) == p_617->g_163), 0x44L, 0x30L, 0L, 1L, ((VECTOR(int8_t, 8))(2L)), 1L, 0x4CL, (-1L))).hi, ((VECTOR(int8_t, 8))((-4L)))))).s00)).yyxyxyxx, ((VECTOR(int8_t, 8))(0x66L))))), (-1L), 6L, 0x3CL, (-1L), 0x66L, 0x29L, 0L, 2L)))).sbcd0, ((VECTOR(int8_t, 4))(0x70L)), ((VECTOR(int8_t, 4))(0x0FL))))))))).zyyywxwz, ((VECTOR(int8_t, 8))(1L))))).s35))).xyyyxyxyxyyyyxyx))).hi)).s10)).yyxx)).x, ((VECTOR(uint8_t, 2))(0xB5L)), 2UL)).w | p_617->g_150.x)), (-10L))), 0x2029L)) ^ l_601[0])) + get_linear_global_id());
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        if (get_linear_local_id() == 0)
            p_617->v_collective += p_617->g_atomic_reduction[get_linear_group_id()];
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    }
    return (*p_617->g_451);
}


/* ------------------------------------------ */
/* 
 * reads : p_617->g_217 p_617->g_84 p_617->g_234 p_617->g_175 p_617->g_173.f4 p_617->g_206 p_617->g_90 p_617->g_69 p_617->g_15 p_617->g_178 p_617->g_14 p_617->g_263 p_617->g_268 p_617->g_271 p_617->g_286 p_617->g_287 p_617->g_71 p_617->g_165
 * writes: p_617->g_68 p_617->g_173.f4 p_617->g_165 p_617->g_15 p_617->g_261 p_617->g_163 p_617->g_175 p_617->g_173.f1 p_617->g_286 p_617->g_87 p_617->g_71 p_617->g_79
 */
int32_t * func_18(int64_t  p_19, uint32_t  p_20, int64_t  p_21, int32_t  p_22, struct S3 * p_617)
{ /* block id: 68 */
    int32_t l_212 = 1L;
    int64_t *l_213 = (void*)0;
    VECTOR(int32_t, 2) l_216 = (VECTOR(int32_t, 2))(0x318AA528L, (-9L));
    VECTOR(int64_t, 2) l_220 = (VECTOR(int64_t, 2))(0x189FC50761ED4099L, 0x576C49478B05629BL);
    uint32_t l_233 = 1UL;
    VECTOR(int64_t, 4) l_235 = (VECTOR(int64_t, 4))(0x0EDF71B5F48D6308L, (VECTOR(int64_t, 2))(0x0EDF71B5F48D6308L, (-5L)), (-5L));
    int8_t *l_236 = &p_617->g_68;
    int32_t l_237 = 9L;
    VECTOR(int16_t, 4) l_270 = (VECTOR(int16_t, 4))((-5L), (VECTOR(int16_t, 2))((-5L), 0x6371L), 0x6371L);
    uint64_t **l_289[8][4][8] = {{{&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287},{&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287},{&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287},{&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287}},{{&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287},{&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287},{&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287},{&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287}},{{&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287},{&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287},{&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287},{&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287}},{{&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287},{&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287},{&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287},{&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287}},{{&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287},{&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287},{&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287},{&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287}},{{&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287},{&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287},{&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287},{&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287}},{{&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287},{&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287},{&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287},{&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287}},{{&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287},{&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287},{&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287},{&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287,&p_617->g_287}}};
    int32_t *l_290 = &p_617->g_71[5];
    int32_t **l_291 = &p_617->g_79;
    int32_t *l_292 = &p_617->g_15[1];
    int i, j, k;
    atomic_or(&p_617->g_atomic_reduction[get_linear_group_id()], (l_212 != ((((l_213 = (void*)0) != ((((((safe_mul_func_int16_t_s_s((((9UL >= ((VECTOR(int32_t, 4))(l_216.xyyx)).y) || (p_617->g_217 , p_617->g_84)) && (safe_add_func_int32_t_s_s((((VECTOR(int64_t, 4))(rotate(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(l_220.yxyyxyyx)).s53)).xyyy, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(0x3CB941C5EEF02D27L, ((VECTOR(int64_t, 8))((safe_sub_func_uint32_t_u_u(0x2F0F2488L, (safe_mul_func_uint16_t_u_u((((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))((-8L), p_20, (safe_lshift_func_int16_t_s_u((safe_mul_func_uint8_t_u_u(((safe_sub_func_int16_t_s_s((safe_sub_func_uint32_t_u_u(l_233, (((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(abs_diff(((VECTOR(int64_t, 4))(sub_sat(((VECTOR(int64_t, 2))(p_617->g_234.yx)).yyxx, ((VECTOR(int64_t, 4))(sub_sat(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(add_sat(((VECTOR(int64_t, 2))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 2),((VECTOR(int64_t, 2))(l_235.xw)), ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(sub_sat(((VECTOR(int64_t, 8))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 8),((VECTOR(int64_t, 4))(((((*l_236) = (p_19 != (*p_617->g_175))) > p_20) && 0UL), ((VECTOR(int64_t, 2))(0x547C4C677B6004B4L)), 0L)).ywwwzzyy, ((VECTOR(int64_t, 8))((-5L))), ((VECTOR(int64_t, 8))(0x4FF01ADFF8256CFAL))))).s1036657615355407, ((VECTOR(int64_t, 16))(9L))))).s92)), ((VECTOR(int64_t, 2))(0x34A2F955F64ED68EL))))).yyyyyyxxyxyyxxyx, ((VECTOR(int64_t, 16))(0x3CD2E24ED3E9A5C5L))))).s4, l_233, ((VECTOR(int64_t, 2))(5L)), 0L, 0x41213BD95B1CF151L, 3L, ((VECTOR(int64_t, 8))(0x7F4D557F31CA4282L)), 1L)).s6d4d, ((VECTOR(int64_t, 4))((-8L))))))))), ((VECTOR(int64_t, 4))(0x556E27D13A130829L))))).zwzwwzyyzzzyxwzy)).sb <= 18446744073709551615UL))), p_21)) > 0x9779F3C657A09A84L), 0x1EL)), p_617->g_206)), ((VECTOR(int32_t, 2))((-4L))), (-1L), 0L, (-1L))).odd)).w , p_21), 0x6813L)))), l_220.x, ((VECTOR(int64_t, 4))(0x47D9953DBD2A67ADL)), 1L, (-1L))).s1, 0L, 0x35FD59EA4EB41855L, ((VECTOR(int64_t, 4))((-10L))), ((VECTOR(int64_t, 4))((-1L))), 4L, ((VECTOR(int64_t, 2))(0x60B46ECC8533B475L)), 0x545C7DD839C4DF7FL)).sa71a))))).z < p_617->g_90.y), 0x7CE14DB3L))), p_617->g_69)) & 0x5A25B2F48B5C4B60L) | 0x64FAL) == p_617->g_15[1]) <= l_220.y) , (void*)0)) && p_20) != l_237)) + get_linear_global_id());
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (get_linear_local_id() == 0)
        p_617->v_collective += p_617->g_atomic_reduction[get_linear_group_id()];
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    for (p_617->g_173.f4 = 0; (p_617->g_173.f4 != (-6)); p_617->g_173.f4--)
    { /* block id: 74 */
        VECTOR(int16_t, 4) l_248 = (VECTOR(int16_t, 4))((-7L), (VECTOR(int16_t, 2))((-7L), 0x02A8L), 0x02A8L);
        VECTOR(int16_t, 4) l_269 = (VECTOR(int16_t, 4))(0x08E8L, (VECTOR(int16_t, 2))(0x08E8L, (-4L)), (-4L));
        int i;
        for (p_617->g_165 = 18; (p_617->g_165 <= 5); p_617->g_165 = safe_sub_func_int64_t_s_s(p_617->g_165, 7))
        { /* block id: 77 */
            uint8_t l_258 = 0xD7L;
            int32_t *l_259 = (void*)0;
            p_22 = ((*p_617->g_14) = (0x0A20L < (safe_mul_func_uint16_t_u_u(((safe_sub_func_uint16_t_u_u((((safe_rshift_func_uint16_t_u_s(p_617->g_178[5], ((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 2))((-1L), 0L)), ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(0x51C1L, 1L)), l_233, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(0L, 0x5058L)))), 0x1219L, (-9L), 0x4034L)).s00, ((VECTOR(int16_t, 16))(0L, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(0x6DB5L, ((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 16))(l_248.wyxwxzzwwyzywzzx)).s32, (int16_t)p_617->g_150.y))), 0x5F9DL)))), (-7L), (-9L), 0x3268L, ((VECTOR(int16_t, 2))(0x5251L, 0L)), (-1L), p_19, 0L, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(clz(((VECTOR(int16_t, 2))(p_617->g_249.yx)).xxyyyyxy))).s13)), (-1L))).s64))).hi)) || ((safe_add_func_int8_t_s_s((safe_add_func_uint64_t_u_u((safe_rshift_func_int16_t_s_s((safe_sub_func_uint16_t_u_u(((0xD36738FE241AC8A1L > p_21) , ((VECTOR(uint16_t, 16))((l_258 & l_258), p_617->g_163, 0x4BCFL, GROUP_DIVERGE(1, 1), ((VECTOR(uint16_t, 8))(0xBDFAL)), ((VECTOR(uint16_t, 2))(1UL)), 4UL, 0x69B0L)).s5), 0x0FEAL)), l_233)), l_220.y)), p_21)) != l_248.z)) , p_617->g_178[5]), 0x474DL)) > l_248.x), p_617->g_206))));
            (*p_617->g_263) = &l_236;
        }
        for (p_617->g_163 = (-8); (p_617->g_163 <= 21); ++p_617->g_163)
        { /* block id: 84 */
            int32_t *l_266 = &p_617->g_71[5];
            int32_t **l_267 = &p_617->g_175;
            uint32_t *l_272[1][5] = {{&p_617->g_84,&p_617->g_84,&p_617->g_84,&p_617->g_84,&p_617->g_84}};
            uint64_t *l_285[6][2][3] = {{{&p_617->g_87,&p_617->g_87,&p_617->g_87},{&p_617->g_87,&p_617->g_87,&p_617->g_87}},{{&p_617->g_87,&p_617->g_87,&p_617->g_87},{&p_617->g_87,&p_617->g_87,&p_617->g_87}},{{&p_617->g_87,&p_617->g_87,&p_617->g_87},{&p_617->g_87,&p_617->g_87,&p_617->g_87}},{{&p_617->g_87,&p_617->g_87,&p_617->g_87},{&p_617->g_87,&p_617->g_87,&p_617->g_87}},{{&p_617->g_87,&p_617->g_87,&p_617->g_87},{&p_617->g_87,&p_617->g_87,&p_617->g_87}},{{&p_617->g_87,&p_617->g_87,&p_617->g_87},{&p_617->g_87,&p_617->g_87,&p_617->g_87}}};
            uint64_t ***l_288 = &p_617->g_286;
            int i, j, k;
            (*l_267) = l_266;
            (*p_617->g_175) = (!(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 8),((VECTOR(int16_t, 8))(rhadd(((VECTOR(int16_t, 4))(mad_sat(((VECTOR(int16_t, 8))(sub_sat(((VECTOR(int16_t, 2))(p_617->g_268.scf)).xyyxxxxx, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(l_269.zzyy)).odd)).yxyxxxyx))).odd, ((VECTOR(int16_t, 16))(4L, 0x6DAAL, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 2))(l_270.yy)), ((VECTOR(int16_t, 16))(max(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(1L, 1L, (-1L), 0x10CDL)), ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(0x52FEL, 0x2EABL, 0x705CL, 0x4D81L)).xzywxyzx)), 6L, ((VECTOR(int16_t, 16))((((p_617->g_173.f1 = ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(clz(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(mul_hi(((VECTOR(uint32_t, 8))(p_617->g_271.yyyxxxxy)), ((VECTOR(uint32_t, 2))(1UL, 0xAF909D75L)).yxxxyxxx))))).s1623462242444251))).odd)).s5) ^ (safe_rshift_func_uint8_t_u_s(p_21, (safe_rshift_func_int16_t_s_u(((safe_rshift_func_int8_t_s_u(l_269.y, (p_20 ^ (0x55187F81L & (safe_rshift_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u((l_237 != ((*p_617->g_287) = (safe_lshift_func_int8_t_s_s(((l_216.y = ((VECTOR(uint64_t, 4))(p_22, 1UL, 9UL, 0xE6DE127DB23629A0L)).x) || (((*l_288) = p_617->g_286) != l_289[3][2][4])), p_20)))), 1)), 4)))))) , p_20), p_617->g_71[1]))))) , (**l_267)), p_617->g_90.x, ((VECTOR(int16_t, 2))(0x57C3L)), ((VECTOR(int16_t, 2))(0x494CL)), 0L, ((VECTOR(int16_t, 2))(0x4613L)), (-1L), 0x70E6L, p_617->g_165, ((VECTOR(int16_t, 4))(3L)))).s2, (-7L), 0x3BC4L)), ((VECTOR(int16_t, 16))(0x1158L))))).s81))).xxxxyyyyxyxxyyyy)).s02c1)), (-7L), 0x093AL, ((VECTOR(int16_t, 2))(1L)), 1L, p_617->g_206, (**l_267), 0L, 0L, 0L)).s5be3, ((VECTOR(int16_t, 4))((-1L)))))).xyyywzxx, ((VECTOR(int16_t, 8))((-9L)))))), ((VECTOR(int16_t, 8))(1L)), ((VECTOR(int16_t, 8))(0L))))).s5370247254563441)).s1 , p_20));
            if (l_270.z)
                break;
        }
    }
    (*l_291) = l_290;
    return l_292;
}


/* ------------------------------------------ */
/* 
 * reads : p_617->g_209 p_617->g_79
 * writes: p_617->g_79
 */
int64_t  func_26(int8_t  p_27, int32_t  p_28, uint32_t  p_29, int32_t * p_30, struct S3 * p_617)
{ /* block id: 64 */
    int32_t l_211 = 0L;
    (*p_617->g_209) = p_30;
    (*p_617->g_209) = (*p_617->g_209);
    return l_211;
}


/* ------------------------------------------ */
/* 
 * reads : p_617->g_178 p_617->l_comm_values p_617->g_131 p_617->g_150 p_617->g_71 p_617->g_173.f1 p_617->g_173.f4 p_617->g_163
 * writes: p_617->g_178 p_617->g_comm_values p_617->g_173.f4
 */
int8_t  func_31(int32_t * p_32, int32_t * p_33, struct S3 * p_617)
{ /* block id: 57 */
    uint8_t *l_176 = (void*)0;
    uint8_t *l_177 = &p_617->g_178[5];
    int32_t l_185 = (-1L);
    int32_t *l_194 = &p_617->g_163;
    uint64_t *l_200 = (void*)0;
    uint64_t **l_199[4];
    int64_t *l_201 = (void*)0;
    int64_t *l_202 = (void*)0;
    int64_t *l_203 = (void*)0;
    int64_t *l_204[7][10] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int i, j;
    for (i = 0; i < 4; i++)
        l_199[i] = &l_200;
    (*p_32) ^= (l_185 = ((p_617->g_comm_values[p_617->tid] = ((++(*l_177)) < ((VECTOR(uint8_t, 16))(mad_hi(((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(0x1EL, 252UL, ((VECTOR(uint8_t, 2))(safe_clamp_func(VECTOR(uint8_t, 2),uint8_t,((VECTOR(uint8_t, 16))(mad_hi(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(sub_sat(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(clz(((VECTOR(uint8_t, 16))((safe_mul_func_uint16_t_u_u(((safe_add_func_uint16_t_u_u(l_185, 0x3CCEL)) && (safe_rshift_func_uint16_t_u_s((4UL ^ (safe_mod_func_uint32_t_u_u(((((safe_sub_func_int64_t_s_s(p_617->l_comm_values[(safe_mod_func_uint32_t_u_u(p_617->tid, 71))], ((safe_rshift_func_int8_t_s_u(((((void*)0 == l_194) , (0xA8147CEEL && (safe_sub_func_int8_t_s_s((safe_rshift_func_uint16_t_u_s((!(l_185 ^ (p_617->g_131 != l_199[0]))), l_185)), (-8L))))) >= 0x61F22465FA9602BAL), 0)) <= l_185))) == l_185) , p_617->g_150.y) < l_185), l_185))), 10))), l_185)), l_185, p_617->g_71[5], ((VECTOR(uint8_t, 4))(7UL)), 252UL, ((VECTOR(uint8_t, 8))(255UL)))).hi))).s5001745432777256)).s293b, ((VECTOR(uint8_t, 4))(8UL))))).zxwwyyyxyzxxxyxz)), ((VECTOR(uint8_t, 16))(1UL)), ((VECTOR(uint8_t, 16))(0x2EL))))).scc, (uint8_t)246UL, (uint8_t)0UL))), p_617->g_173.f1, ((VECTOR(uint8_t, 2))(0x10L)), 0xCAL, 0xD6L, ((VECTOR(uint8_t, 4))(253UL)), 0x1DL, 0xA5L, 0UL)).s34e0)).wzyyzwxyxyxyzyyx)).s984b, ((VECTOR(uint8_t, 4))(0xC5L))))).wxwxzxxwzwzwzxyx, ((VECTOR(uint8_t, 16))(0x9EL)), ((VECTOR(uint8_t, 16))(0xA5L))))).sf)) , 0x19F614CAL));
    return p_617->g_163;
}


/* ------------------------------------------ */
/* 
 * reads : p_617->l_comm_values p_617->g_comm_values p_617->g_64 p_617->g_15 p_617->g_71 p_617->g_14 p_617->g_87 p_617->g_84 p_617->g_131 p_617->g_150 p_617->g_154 p_617->g_90 p_617->g_79 p_617->g_173 p_617->g_174 p_617->g_175
 * writes: p_617->g_64 p_617->g_68 p_617->g_69 p_617->g_15 p_617->g_79 p_617->g_84 p_617->g_87 p_617->g_90 p_617->g_131 p_617->g_163 p_617->g_165 p_617->g_71 p_617->g_173
 */
int32_t * func_34(int32_t * p_35, struct S3 * p_617)
{ /* block id: 5 */
    uint32_t l_56 = 1UL;
    int16_t *l_63 = &p_617->g_64;
    int8_t *l_67 = &p_617->g_68;
    int32_t *l_70[2][2] = {{&p_617->g_71[5],&p_617->g_71[5]},{&p_617->g_71[5],&p_617->g_71[5]}};
    uint64_t l_72 = 0UL;
    int32_t l_73 = 0x45039A24L;
    uint32_t *l_83 = &p_617->g_84;
    uint64_t l_85[6];
    uint64_t *l_86 = &p_617->g_87;
    int32_t *l_88 = (void*)0;
    int32_t *l_89 = (void*)0;
    int32_t *l_91 = (void*)0;
    int32_t *l_92 = (void*)0;
    int32_t *l_93 = (void*)0;
    int32_t *l_94 = (void*)0;
    int32_t *l_95[8];
    int i, j;
    for (i = 0; i < 6; i++)
        l_85[i] = 0x5A0AE89175669BA9L;
    for (i = 0; i < 8; i++)
        l_95[i] = (void*)0;
    (*p_617->g_174) = func_37(p_617->l_comm_values[(safe_mod_func_uint32_t_u_u(p_617->tid, 71))], p_35, ((+(p_617->g_90.w = (((*l_86) |= ((safe_sub_func_uint32_t_u_u(((*l_83) = ((safe_rshift_func_int16_t_s_s((-4L), ((*l_63) = func_45((((safe_sub_func_int32_t_s_s(((safe_div_func_uint64_t_u_u((((safe_sub_func_uint16_t_u_u((safe_mod_func_int32_t_s_s((0L == l_56), (((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(0L, 0x649D95921BA52B33L)).yyxx)).y || (safe_sub_func_int16_t_s_s(p_617->g_comm_values[p_617->tid], 1UL))))), (safe_mul_func_uint16_t_u_u(((((l_72 = ((*p_35) = ((safe_mod_func_int16_t_s_s(((*l_63) |= l_56), ((p_617->g_69 = (((safe_lshift_func_int8_t_s_u(((*l_67) = 0x59L), 4)) | l_56) > l_56)) , 0x1810L))) || (*p_35)))) <= p_617->l_comm_values[(safe_mod_func_uint32_t_u_u(p_617->tid, 71))]) , &p_617->g_71[5]) != &p_617->g_71[5]), p_617->g_comm_values[p_617->tid])))) != p_617->g_comm_values[p_617->tid]) & 0x20L), p_617->g_comm_values[p_617->tid])) ^ GROUP_DIVERGE(2, 1)), 0x627F1A9FL)) >= l_73) , p_617->l_comm_values[(safe_mod_func_uint32_t_u_u(p_617->tid, 71))]), p_617->g_71[0], p_617)))) > p_617->g_71[6])), 1UL)) & l_85[2])) , p_617->g_71[5]))) , p_617->g_84), p_617);
    return p_617->g_175;
}


/* ------------------------------------------ */
/* 
 * reads : p_617->g_131 p_617->g_64 p_617->g_150 p_617->g_154 p_617->g_90 p_617->g_84 p_617->l_comm_values p_617->g_79 p_617->g_71 p_617->g_173
 * writes: p_617->g_131 p_617->g_64 p_617->g_15 p_617->g_163 p_617->g_165 p_617->g_68 p_617->g_71 p_617->g_79
 */
struct S1  func_37(uint16_t  p_38, int32_t * p_39, uint32_t  p_40, struct S3 * p_617)
{ /* block id: 24 */
    volatile uint64_t ** volatile *l_132 = &p_617->g_131;
    uint32_t *l_143 = &p_617->g_84;
    int32_t l_161 = (-1L);
    uint32_t l_164 = 0UL;
    if ((atomic_inc(&p_617->l_atomic_input[3]) == 3))
    { /* block id: 26 */
        uint8_t l_96 = 0xBDL;
        int8_t l_97[2];
        int8_t l_98 = 0x79L;
        int32_t l_99 = 0x0FEFE548L;
        int8_t l_100 = 0x3AL;
        uint32_t l_101[9][3][5] = {{{2UL,4294967295UL,1UL,1UL,4294967295UL},{2UL,4294967295UL,1UL,1UL,4294967295UL},{2UL,4294967295UL,1UL,1UL,4294967295UL}},{{2UL,4294967295UL,1UL,1UL,4294967295UL},{2UL,4294967295UL,1UL,1UL,4294967295UL},{2UL,4294967295UL,1UL,1UL,4294967295UL}},{{2UL,4294967295UL,1UL,1UL,4294967295UL},{2UL,4294967295UL,1UL,1UL,4294967295UL},{2UL,4294967295UL,1UL,1UL,4294967295UL}},{{2UL,4294967295UL,1UL,1UL,4294967295UL},{2UL,4294967295UL,1UL,1UL,4294967295UL},{2UL,4294967295UL,1UL,1UL,4294967295UL}},{{2UL,4294967295UL,1UL,1UL,4294967295UL},{2UL,4294967295UL,1UL,1UL,4294967295UL},{2UL,4294967295UL,1UL,1UL,4294967295UL}},{{2UL,4294967295UL,1UL,1UL,4294967295UL},{2UL,4294967295UL,1UL,1UL,4294967295UL},{2UL,4294967295UL,1UL,1UL,4294967295UL}},{{2UL,4294967295UL,1UL,1UL,4294967295UL},{2UL,4294967295UL,1UL,1UL,4294967295UL},{2UL,4294967295UL,1UL,1UL,4294967295UL}},{{2UL,4294967295UL,1UL,1UL,4294967295UL},{2UL,4294967295UL,1UL,1UL,4294967295UL},{2UL,4294967295UL,1UL,1UL,4294967295UL}},{{2UL,4294967295UL,1UL,1UL,4294967295UL},{2UL,4294967295UL,1UL,1UL,4294967295UL},{2UL,4294967295UL,1UL,1UL,4294967295UL}}};
        int32_t l_104 = 0x77822E84L;
        VECTOR(uint16_t, 4) l_105 = (VECTOR(uint16_t, 4))(9UL, (VECTOR(uint16_t, 2))(9UL, 8UL), 8UL);
        VECTOR(uint16_t, 16) l_106 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0xCD8BL), 0xCD8BL), 0xCD8BL, 1UL, 0xCD8BL, (VECTOR(uint16_t, 2))(1UL, 0xCD8BL), (VECTOR(uint16_t, 2))(1UL, 0xCD8BL), 1UL, 0xCD8BL, 1UL, 0xCD8BL);
        uint64_t l_107 = 18446744073709551615UL;
        int8_t l_108 = (-1L);
        int32_t l_109 = 0x4D183246L;
        uint64_t l_110 = 18446744073709551615UL;
        uint64_t l_113 = 1UL;
        VECTOR(uint16_t, 4) l_114 = (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x3939L), 0x3939L);
        VECTOR(uint16_t, 8) l_115 = (VECTOR(uint16_t, 8))(0xA911L, (VECTOR(uint16_t, 4))(0xA911L, (VECTOR(uint16_t, 2))(0xA911L, 1UL), 1UL), 1UL, 0xA911L, 1UL);
        VECTOR(uint16_t, 16) l_116 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x9F35L), 0x9F35L), 0x9F35L, 1UL, 0x9F35L, (VECTOR(uint16_t, 2))(1UL, 0x9F35L), (VECTOR(uint16_t, 2))(1UL, 0x9F35L), 1UL, 0x9F35L, 1UL, 0x9F35L);
        VECTOR(uint16_t, 4) l_117 = (VECTOR(uint16_t, 4))(3UL, (VECTOR(uint16_t, 2))(3UL, 65530UL), 65530UL);
        uint64_t l_118 = 2UL;
        VECTOR(uint16_t, 2) l_119 = (VECTOR(uint16_t, 2))(0x3FF9L, 65533UL);
        VECTOR(uint16_t, 8) l_120 = (VECTOR(uint16_t, 8))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0xE605L), 0xE605L), 0xE605L, 65535UL, 0xE605L);
        VECTOR(uint16_t, 2) l_121 = (VECTOR(uint16_t, 2))(1UL, 1UL);
        int32_t l_122 = (-1L);
        VECTOR(uint16_t, 4) l_123 = (VECTOR(uint16_t, 4))(0x46E9L, (VECTOR(uint16_t, 2))(0x46E9L, 0UL), 0UL);
        VECTOR(uint16_t, 4) l_124 = (VECTOR(uint16_t, 4))(0xA42FL, (VECTOR(uint16_t, 2))(0xA42FL, 0UL), 0UL);
        int32_t l_125 = 0x72F119E3L;
        int64_t l_126 = 0x22D6D4F0C11142F3L;
        uint32_t l_127 = 4294967295UL;
        uint16_t l_128 = 0x8F49L;
        int32_t l_129 = 0L;
        int16_t l_130 = 0x5EBDL;
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_97[i] = 0L;
        l_96 &= 7L;
        l_101[0][0][2]--;
        l_130 ^= ((((VECTOR(uint16_t, 8))(clz(((VECTOR(uint16_t, 2))(mul_hi(((VECTOR(uint16_t, 8))(l_104, ((VECTOR(uint16_t, 4))(l_105.xxxw)), ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(l_106.s2f)), l_107, ((--l_110) , GROUP_DIVERGE(0, 1)), 0x2900L, ((VECTOR(uint16_t, 4))(min(((VECTOR(uint16_t, 16))(mul_hi(((VECTOR(uint16_t, 16))(7UL, ((VECTOR(uint16_t, 2))(mul_hi(((VECTOR(uint16_t, 4))(l_113, ((VECTOR(uint16_t, 2))(l_114.wz)), 0xF80EL)).hi, ((VECTOR(uint16_t, 8))(65535UL, 0x1E78L, GROUP_DIVERGE(1, 1), ((VECTOR(uint16_t, 4))(safe_clamp_func(VECTOR(uint16_t, 4),uint16_t,((VECTOR(uint16_t, 8))(hadd(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(l_115.s4321)).wzwwyzwz)), ((VECTOR(uint16_t, 16))(0x5449L, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(mul_hi(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(l_116.sa7b3)))).zyzyzxzywwxzwyzy, ((VECTOR(uint16_t, 16))(l_117.yyywwwywxwyzwxzz))))).lo)), 0x7D2FL, 0x3D48L, 65529UL, 65535UL, 0x1EC5L, 0x66FAL, 0xDA49L)).hi))).odd, (uint16_t)l_118, (uint16_t)(l_117.z = ((VECTOR(uint16_t, 16))(clz(((VECTOR(uint16_t, 2))(safe_clamp_func(VECTOR(uint16_t, 2),uint16_t,((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(l_119.yx)))), 0x55ECL, ((VECTOR(uint16_t, 2))(rhadd(((VECTOR(uint16_t, 8))(l_120.s03357545)).s72, ((VECTOR(uint16_t, 2))(0xA811L, 0x71A0L))))), 0UL, ((VECTOR(uint16_t, 4))(l_121.xyyx)).x, l_122, 0x8504L, 7UL, 0xDC10L, ((VECTOR(uint16_t, 2))(mul_hi(((VECTOR(uint16_t, 2))(l_123.yy)), ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(l_124.wwzz)).lo))))), 0x77E7L, 7UL, 3UL)).sa9, (uint16_t)(l_125 , ((VECTOR(uint16_t, 2))(abs(((VECTOR(uint16_t, 4))(mad_sat(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(65531UL, 0xF8AAL, 0x394FL, 1UL)).zxywywzx)).lo, ((VECTOR(uint16_t, 2))(0xD0E7L, 0UL)).yyxy, ((VECTOR(uint16_t, 4))((l_127 = l_126), 65531UL, 5UL, 0x1EF9L))))).hi))).hi), (uint16_t)l_128))).yyyxxyyxxxxyyxxy))).s6)))), 0x1E6CL)).s26))), l_129, 0x1E9DL, ((VECTOR(uint16_t, 8))(0xDC2EL)), 0xD33CL, 0UL, 65535UL)), ((VECTOR(uint16_t, 16))(1UL))))).sf3fc, ((VECTOR(uint16_t, 4))(0x1527L))))), 65535UL, 1UL, ((VECTOR(uint16_t, 4))(3UL)), 0UL)).s3, 0x85D1L, 0UL)).s11, ((VECTOR(uint16_t, 2))(1UL))))).xyxxxyyx))).s6 , (-5L)) , 0x0602F127L);
        unsigned int result = 0;
        result += l_96;
        int l_97_i0;
        for (l_97_i0 = 0; l_97_i0 < 2; l_97_i0++) {
            result += l_97[l_97_i0];
        }
        result += l_98;
        result += l_99;
        result += l_100;
        int l_101_i0, l_101_i1, l_101_i2;
        for (l_101_i0 = 0; l_101_i0 < 9; l_101_i0++) {
            for (l_101_i1 = 0; l_101_i1 < 3; l_101_i1++) {
                for (l_101_i2 = 0; l_101_i2 < 5; l_101_i2++) {
                    result += l_101[l_101_i0][l_101_i1][l_101_i2];
                }
            }
        }
        result += l_104;
        result += l_105.w;
        result += l_105.z;
        result += l_105.y;
        result += l_105.x;
        result += l_106.sf;
        result += l_106.se;
        result += l_106.sd;
        result += l_106.sc;
        result += l_106.sb;
        result += l_106.sa;
        result += l_106.s9;
        result += l_106.s8;
        result += l_106.s7;
        result += l_106.s6;
        result += l_106.s5;
        result += l_106.s4;
        result += l_106.s3;
        result += l_106.s2;
        result += l_106.s1;
        result += l_106.s0;
        result += l_107;
        result += l_108;
        result += l_109;
        result += l_110;
        result += l_113;
        result += l_114.w;
        result += l_114.z;
        result += l_114.y;
        result += l_114.x;
        result += l_115.s7;
        result += l_115.s6;
        result += l_115.s5;
        result += l_115.s4;
        result += l_115.s3;
        result += l_115.s2;
        result += l_115.s1;
        result += l_115.s0;
        result += l_116.sf;
        result += l_116.se;
        result += l_116.sd;
        result += l_116.sc;
        result += l_116.sb;
        result += l_116.sa;
        result += l_116.s9;
        result += l_116.s8;
        result += l_116.s7;
        result += l_116.s6;
        result += l_116.s5;
        result += l_116.s4;
        result += l_116.s3;
        result += l_116.s2;
        result += l_116.s1;
        result += l_116.s0;
        result += l_117.w;
        result += l_117.z;
        result += l_117.y;
        result += l_117.x;
        result += l_118;
        result += l_119.y;
        result += l_119.x;
        result += l_120.s7;
        result += l_120.s6;
        result += l_120.s5;
        result += l_120.s4;
        result += l_120.s3;
        result += l_120.s2;
        result += l_120.s1;
        result += l_120.s0;
        result += l_121.y;
        result += l_121.x;
        result += l_122;
        result += l_123.w;
        result += l_123.z;
        result += l_123.y;
        result += l_123.x;
        result += l_124.w;
        result += l_124.z;
        result += l_124.y;
        result += l_124.x;
        result += l_125;
        result += l_126;
        result += l_127;
        result += l_128;
        result += l_129;
        result += l_130;
        atomic_add(&p_617->l_special_values[3], result);
    }
    else
    { /* block id: 33 */
        (1 + 1);
    }
    (*l_132) = p_617->g_131;
    for (p_617->g_64 = 0; (p_617->g_64 < (-21)); p_617->g_64--)
    { /* block id: 39 */
        VECTOR(uint16_t, 4) l_153 = (VECTOR(uint16_t, 4))(0x500DL, (VECTOR(uint16_t, 2))(0x500DL, 0xF51DL), 0xF51DL);
        uint64_t *l_157 = &p_617->g_87;
        uint64_t *l_158 = &p_617->g_87;
        int32_t *l_162 = &p_617->g_163;
        int32_t l_166 = 0x07A9B704L;
        int32_t *l_167 = (void*)0;
        int32_t *l_168 = (void*)0;
        int32_t *l_169[3];
        int32_t l_170 = 1L;
        int i;
        for (i = 0; i < 3; i++)
            l_169[i] = (void*)0;
        (*p_617->g_79) = (safe_mul_func_int8_t_s_s(7L, (safe_add_func_int64_t_s_s((((safe_rshift_func_uint16_t_u_s(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(65535UL, 2UL)), 1UL, 0xD9F3L)).even)).even, 6)) > (p_617->g_68 = (safe_sub_func_uint64_t_u_u(((l_143 != l_143) && ((l_170 = ((safe_mul_func_uint8_t_u_u((((l_166 = (p_617->g_165 = (safe_mod_func_uint64_t_u_u(((safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 16))(max(((VECTOR(int8_t, 8))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 8),((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(p_617->g_150.xxxy)), (-1L), 0L, (-1L), (-1L))).s1750622500415344, ((VECTOR(int8_t, 16))((safe_div_func_uint32_t_u_u(((VECTOR(uint32_t, 4))(upsample(((VECTOR(uint16_t, 8))(l_153.yyzyyxxw)).hi, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(p_617->g_154.yxxxxyyy)), (((*l_162) = ((((*p_39) = (safe_mod_func_uint32_t_u_u(((p_40 , (l_157 != l_158)) , 0x54A21752L), (safe_mul_func_int16_t_s_s((-4L), l_153.z))))) , (-7L)) <= l_161)) , GROUP_DIVERGE(1, 1)), 65535UL, 0xEF0FL, ((VECTOR(uint16_t, 4))(0UL)), 1UL)).s14)).xxxxxyyyyyxxxyyy)).s6b76))).y, l_164)), p_617->g_150.y, 0x76L, p_617->g_90.w, ((VECTOR(int8_t, 2))(0L)), ((VECTOR(int8_t, 2))(0x46L)), p_38, 0x75L, 0L, l_153.w, ((VECTOR(int8_t, 4))(0x4AL))))))).lo, ((VECTOR(int8_t, 8))(0x45L)), ((VECTOR(int8_t, 8))(1L))))).s2154443444576233, ((VECTOR(int8_t, 16))(0x25L))))).s9, l_164)) != l_161), p_38)))) > p_38) == 0x9A68L), p_40)) == p_617->g_84)) , p_617->l_comm_values[(safe_mod_func_uint32_t_u_u(p_617->tid, 71))])), FAKE_DIVERGE(p_617->global_0_offset, get_global_id(0), 10))))) & l_161), p_40))));
        for (l_170 = 0; (l_170 <= (-18)); l_170 = safe_sub_func_uint8_t_u_u(l_170, 1))
        { /* block id: 49 */
            if ((*p_617->g_79))
                break;
        }
    }
    p_617->g_79 = &p_617->g_71[5];
    return p_617->g_173;
}


/* ------------------------------------------ */
/* 
 * reads : p_617->g_64 p_617->g_71 p_617->g_14
 * writes: p_617->g_64 p_617->g_79 p_617->g_15
 */
int16_t  func_45(uint64_t  p_46, int32_t  p_47, struct S3 * p_617)
{ /* block id: 11 */
    int32_t *l_78 = &p_617->g_71[5];
    VECTOR(int8_t, 4) l_80 = (VECTOR(int8_t, 4))(0x35L, (VECTOR(int8_t, 2))(0x35L, 0x16L), 0x16L);
    VECTOR(int8_t, 2) l_81 = (VECTOR(int8_t, 2))(1L, 0x7AL);
    VECTOR(uint8_t, 8) l_82 = (VECTOR(uint8_t, 8))(0xA6L, (VECTOR(uint8_t, 4))(0xA6L, (VECTOR(uint8_t, 2))(0xA6L, 0x35L), 0x35L), 0x35L, 0xA6L, 0x35L);
    int i;
    for (p_617->g_64 = 0; (p_617->g_64 < (-13)); --p_617->g_64)
    { /* block id: 14 */
        int32_t *l_76 = &p_617->g_15[1];
        int32_t **l_77 = &l_76;
        (*l_77) = l_76;
    }
    p_617->g_79 = l_78;
    (*p_617->g_14) = (p_617->g_71[5] >= (((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(l_80.zyxyxxyx)).s5277573526526125)).even)).s01, ((VECTOR(int8_t, 16))(l_81.yxxyyyxxxxxyyxyx)).s57))).odd && ((VECTOR(uint8_t, 4))(rotate(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(l_82.s2421705162452211)).s86)).yyyy, ((VECTOR(uint8_t, 2))(0xB6L, 0xF1L)).yxyx))).w));
    return p_47;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[13];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 13; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[13];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 13; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[71];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 71; i++)
            l_comm_values[i] = 1;
    struct S3 c_618;
    struct S3* p_617 = &c_618;
    struct S3 c_619 = {
        {1L,1L,1L}, // p_617->g_15
        &p_617->g_15[1], // p_617->g_14
        0x7D05L, // p_617->g_64
        0x46L, // p_617->g_68
        0x0AC80EABL, // p_617->g_69
        {0x78BEA8E4L,0x40421A16L,0x78BEA8E4L,0x78BEA8E4L,0x40421A16L,0x78BEA8E4L,0x78BEA8E4L,0x40421A16L,0x78BEA8E4L}, // p_617->g_71
        (void*)0, // p_617->g_79
        0x07F58E95L, // p_617->g_84
        1UL, // p_617->g_87
        (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x73152899L), 0x73152899L), // p_617->g_90
        (void*)0, // p_617->g_131
        (VECTOR(int8_t, 2))(0x65L, 0x41L), // p_617->g_150
        (VECTOR(uint16_t, 2))(65534UL, 65530UL), // p_617->g_154
        0x720C7BFAL, // p_617->g_163
        0xC939L, // p_617->g_165
        {0UL,0xC0EE4DF8L,9UL,-6L,0x675287BBL}, // p_617->g_173
        &p_617->g_173, // p_617->g_174
        &p_617->g_173.f4, // p_617->g_175
        {0UL,0x2BL,0UL,0UL,0x2BL,0UL,0UL}, // p_617->g_178
        0xE5D540DA225B3849L, // p_617->g_206
        (void*)0, // p_617->g_207
        &p_617->g_79, // p_617->g_209
        (void*)0, // p_617->g_210
        {18446744073709551611UL,0x7C20C0B13E44FBD2L,1UL,0x9A1A1285L,-1L,7L,0UL,1L,0L}, // p_617->g_217
        (VECTOR(int64_t, 2))(0x3C1FECEB42ADA261L, 0L), // p_617->g_234
        (VECTOR(int16_t, 2))(0x4F7AL, 0x4D11L), // p_617->g_249
        &p_617->g_68, // p_617->g_262
        &p_617->g_262, // p_617->g_261
        {{(void*)0,&p_617->g_261,(void*)0,&p_617->g_261,(void*)0,(void*)0,&p_617->g_261,(void*)0},{(void*)0,&p_617->g_261,(void*)0,&p_617->g_261,(void*)0,(void*)0,&p_617->g_261,(void*)0},{(void*)0,&p_617->g_261,(void*)0,&p_617->g_261,(void*)0,(void*)0,&p_617->g_261,(void*)0},{(void*)0,&p_617->g_261,(void*)0,&p_617->g_261,(void*)0,(void*)0,&p_617->g_261,(void*)0},{(void*)0,&p_617->g_261,(void*)0,&p_617->g_261,(void*)0,(void*)0,&p_617->g_261,(void*)0},{(void*)0,&p_617->g_261,(void*)0,&p_617->g_261,(void*)0,(void*)0,&p_617->g_261,(void*)0},{(void*)0,&p_617->g_261,(void*)0,&p_617->g_261,(void*)0,(void*)0,&p_617->g_261,(void*)0},{(void*)0,&p_617->g_261,(void*)0,&p_617->g_261,(void*)0,(void*)0,&p_617->g_261,(void*)0}}, // p_617->g_260
        &p_617->g_261, // p_617->g_263
        (VECTOR(int16_t, 16))(0x54F7L, (VECTOR(int16_t, 4))(0x54F7L, (VECTOR(int16_t, 2))(0x54F7L, (-1L)), (-1L)), (-1L), 0x54F7L, (-1L), (VECTOR(int16_t, 2))(0x54F7L, (-1L)), (VECTOR(int16_t, 2))(0x54F7L, (-1L)), 0x54F7L, (-1L), 0x54F7L, (-1L)), // p_617->g_268
        (VECTOR(uint32_t, 2))(0UL, 0UL), // p_617->g_271
        &p_617->g_87, // p_617->g_287
        &p_617->g_287, // p_617->g_286
        {0x9D68F9C780D751C8L,0x25533B808DDD2812L,4294967292UL,0x74663121L,0L,0x32L,0xE6L,8L,0x04D9L}, // p_617->g_310
        (VECTOR(uint16_t, 2))(0x4F1EL, 65535UL), // p_617->g_317
        &p_617->g_173, // p_617->g_383
        (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x41L), 0x41L), // p_617->g_391
        {0xEF26L,0xA4341FC4L,4294967295UL,0x5FD6L,4L}, // p_617->g_393
        (VECTOR(int8_t, 8))(0x73L, (VECTOR(int8_t, 4))(0x73L, (VECTOR(int8_t, 2))(0x73L, 0L), 0L), 0L, 0x73L, 0L), // p_617->g_398
        0x6CD669858B9D4ABBL, // p_617->g_403
        {0x8EC9L,0x80F64D70L,0x1F3FBCB8L,0x769FL,-1L}, // p_617->g_415
        {{{{1UL,0x57C36F29L,0xF6CEA1F4L,0x3E39L,0x38CB86D0L},{0x1183L,1UL,0x2EEC7AC6L,1L,0x77F3574DL},{1UL,1UL,4294967286UL,0x7864L,2L},{0x7CB9L,0x45122582L,2UL,0x2007L,0x4E1E44C2L},{0x1183L,1UL,0x2EEC7AC6L,1L,0x77F3574DL},{0x7CB9L,0x45122582L,2UL,0x2007L,0x4E1E44C2L},{1UL,1UL,4294967286UL,0x7864L,2L},{0x1183L,1UL,0x2EEC7AC6L,1L,0x77F3574DL},{1UL,0x57C36F29L,0xF6CEA1F4L,0x3E39L,0x38CB86D0L},{1UL,0x57C36F29L,0xF6CEA1F4L,0x3E39L,0x38CB86D0L}}},{{{1UL,0x57C36F29L,0xF6CEA1F4L,0x3E39L,0x38CB86D0L},{0x1183L,1UL,0x2EEC7AC6L,1L,0x77F3574DL},{1UL,1UL,4294967286UL,0x7864L,2L},{0x7CB9L,0x45122582L,2UL,0x2007L,0x4E1E44C2L},{0x1183L,1UL,0x2EEC7AC6L,1L,0x77F3574DL},{0x7CB9L,0x45122582L,2UL,0x2007L,0x4E1E44C2L},{1UL,1UL,4294967286UL,0x7864L,2L},{0x1183L,1UL,0x2EEC7AC6L,1L,0x77F3574DL},{1UL,0x57C36F29L,0xF6CEA1F4L,0x3E39L,0x38CB86D0L},{1UL,0x57C36F29L,0xF6CEA1F4L,0x3E39L,0x38CB86D0L}}}}, // p_617->g_429
        &p_617->g_175, // p_617->g_451
        (VECTOR(int8_t, 16))((-8L), (VECTOR(int8_t, 4))((-8L), (VECTOR(int8_t, 2))((-8L), (-1L)), (-1L)), (-1L), (-8L), (-1L), (VECTOR(int8_t, 2))((-8L), (-1L)), (VECTOR(int8_t, 2))((-8L), (-1L)), (-8L), (-1L), (-8L), (-1L)), // p_617->g_475
        18446744073709551615UL, // p_617->g_491
        {{0x1A0B6E57B451275DL,0L,4294967288UL,0x2E0B0EFBL,0x0BE629D7L,0x39L,246UL,0x421EL,0x0B07L}}, // p_617->g_499
        (VECTOR(int16_t, 2))((-5L), 8L), // p_617->g_512
        (VECTOR(int16_t, 8))(0x7F47L, (VECTOR(int16_t, 4))(0x7F47L, (VECTOR(int16_t, 2))(0x7F47L, 0x7688L), 0x7688L), 0x7688L, 0x7F47L, 0x7688L), // p_617->g_513
        (VECTOR(int16_t, 16))(0x6AE8L, (VECTOR(int16_t, 4))(0x6AE8L, (VECTOR(int16_t, 2))(0x6AE8L, (-7L)), (-7L)), (-7L), 0x6AE8L, (-7L), (VECTOR(int16_t, 2))(0x6AE8L, (-7L)), (VECTOR(int16_t, 2))(0x6AE8L, (-7L)), 0x6AE8L, (-7L), 0x6AE8L, (-7L)), // p_617->g_515
        &p_617->g_173, // p_617->g_552
        (VECTOR(int16_t, 2))(0x3CCEL, 0x01D4L), // p_617->g_561
        (VECTOR(uint8_t, 4))(0x25L, (VECTOR(uint8_t, 2))(0x25L, 0UL), 0UL), // p_617->g_572
        (VECTOR(uint32_t, 8))(4294967286UL, (VECTOR(uint32_t, 4))(4294967286UL, (VECTOR(uint32_t, 2))(4294967286UL, 0xCAAC2DDFL), 0xCAAC2DDFL), 0xCAAC2DDFL, 4294967286UL, 0xCAAC2DDFL), // p_617->g_594
        (VECTOR(uint32_t, 16))(0x0485FB3EL, (VECTOR(uint32_t, 4))(0x0485FB3EL, (VECTOR(uint32_t, 2))(0x0485FB3EL, 0x50D78947L), 0x50D78947L), 0x50D78947L, 0x0485FB3EL, 0x50D78947L, (VECTOR(uint32_t, 2))(0x0485FB3EL, 0x50D78947L), (VECTOR(uint32_t, 2))(0x0485FB3EL, 0x50D78947L), 0x0485FB3EL, 0x50D78947L, 0x0485FB3EL, 0x50D78947L), // p_617->g_595
        {{18446744073709551615UL,0x7C3DEE9177491021L,0xAFFFB361L,0UL,0x697C2D46L,0x49L,247UL,0x6AC5L,0L}}, // p_617->g_612
        &p_617->g_14, // p_617->g_614
        0, // p_617->v_collective
        sequence_input[get_global_id(0)], // p_617->global_0_offset
        sequence_input[get_global_id(1)], // p_617->global_1_offset
        sequence_input[get_global_id(2)], // p_617->global_2_offset
        sequence_input[get_local_id(0)], // p_617->local_0_offset
        sequence_input[get_local_id(1)], // p_617->local_1_offset
        sequence_input[get_local_id(2)], // p_617->local_2_offset
        sequence_input[get_group_id(0)], // p_617->group_0_offset
        sequence_input[get_group_id(1)], // p_617->group_1_offset
        sequence_input[get_group_id(2)], // p_617->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 71)), permutations[0][get_linear_local_id()])), // p_617->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_618 = c_619;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_617);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_617->g_15[i], "p_617->g_15[i]", print_hash_value);

    }
    transparent_crc(p_617->g_64, "p_617->g_64", print_hash_value);
    transparent_crc(p_617->g_68, "p_617->g_68", print_hash_value);
    transparent_crc(p_617->g_69, "p_617->g_69", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_617->g_71[i], "p_617->g_71[i]", print_hash_value);

    }
    transparent_crc(p_617->g_84, "p_617->g_84", print_hash_value);
    transparent_crc(p_617->g_87, "p_617->g_87", print_hash_value);
    transparent_crc(p_617->g_90.x, "p_617->g_90.x", print_hash_value);
    transparent_crc(p_617->g_90.y, "p_617->g_90.y", print_hash_value);
    transparent_crc(p_617->g_90.z, "p_617->g_90.z", print_hash_value);
    transparent_crc(p_617->g_90.w, "p_617->g_90.w", print_hash_value);
    transparent_crc(p_617->g_150.x, "p_617->g_150.x", print_hash_value);
    transparent_crc(p_617->g_150.y, "p_617->g_150.y", print_hash_value);
    transparent_crc(p_617->g_154.x, "p_617->g_154.x", print_hash_value);
    transparent_crc(p_617->g_154.y, "p_617->g_154.y", print_hash_value);
    transparent_crc(p_617->g_163, "p_617->g_163", print_hash_value);
    transparent_crc(p_617->g_165, "p_617->g_165", print_hash_value);
    transparent_crc(p_617->g_173.f0, "p_617->g_173.f0", print_hash_value);
    transparent_crc(p_617->g_173.f1, "p_617->g_173.f1", print_hash_value);
    transparent_crc(p_617->g_173.f2, "p_617->g_173.f2", print_hash_value);
    transparent_crc(p_617->g_173.f3, "p_617->g_173.f3", print_hash_value);
    transparent_crc(p_617->g_173.f4, "p_617->g_173.f4", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_617->g_178[i], "p_617->g_178[i]", print_hash_value);

    }
    transparent_crc(p_617->g_206, "p_617->g_206", print_hash_value);
    transparent_crc(p_617->g_217.f0, "p_617->g_217.f0", print_hash_value);
    transparent_crc(p_617->g_217.f1, "p_617->g_217.f1", print_hash_value);
    transparent_crc(p_617->g_217.f2, "p_617->g_217.f2", print_hash_value);
    transparent_crc(p_617->g_217.f3, "p_617->g_217.f3", print_hash_value);
    transparent_crc(p_617->g_217.f4, "p_617->g_217.f4", print_hash_value);
    transparent_crc(p_617->g_217.f5, "p_617->g_217.f5", print_hash_value);
    transparent_crc(p_617->g_217.f6, "p_617->g_217.f6", print_hash_value);
    transparent_crc(p_617->g_217.f7, "p_617->g_217.f7", print_hash_value);
    transparent_crc(p_617->g_217.f8, "p_617->g_217.f8", print_hash_value);
    transparent_crc(p_617->g_234.x, "p_617->g_234.x", print_hash_value);
    transparent_crc(p_617->g_234.y, "p_617->g_234.y", print_hash_value);
    transparent_crc(p_617->g_249.x, "p_617->g_249.x", print_hash_value);
    transparent_crc(p_617->g_249.y, "p_617->g_249.y", print_hash_value);
    transparent_crc(p_617->g_268.s0, "p_617->g_268.s0", print_hash_value);
    transparent_crc(p_617->g_268.s1, "p_617->g_268.s1", print_hash_value);
    transparent_crc(p_617->g_268.s2, "p_617->g_268.s2", print_hash_value);
    transparent_crc(p_617->g_268.s3, "p_617->g_268.s3", print_hash_value);
    transparent_crc(p_617->g_268.s4, "p_617->g_268.s4", print_hash_value);
    transparent_crc(p_617->g_268.s5, "p_617->g_268.s5", print_hash_value);
    transparent_crc(p_617->g_268.s6, "p_617->g_268.s6", print_hash_value);
    transparent_crc(p_617->g_268.s7, "p_617->g_268.s7", print_hash_value);
    transparent_crc(p_617->g_268.s8, "p_617->g_268.s8", print_hash_value);
    transparent_crc(p_617->g_268.s9, "p_617->g_268.s9", print_hash_value);
    transparent_crc(p_617->g_268.sa, "p_617->g_268.sa", print_hash_value);
    transparent_crc(p_617->g_268.sb, "p_617->g_268.sb", print_hash_value);
    transparent_crc(p_617->g_268.sc, "p_617->g_268.sc", print_hash_value);
    transparent_crc(p_617->g_268.sd, "p_617->g_268.sd", print_hash_value);
    transparent_crc(p_617->g_268.se, "p_617->g_268.se", print_hash_value);
    transparent_crc(p_617->g_268.sf, "p_617->g_268.sf", print_hash_value);
    transparent_crc(p_617->g_271.x, "p_617->g_271.x", print_hash_value);
    transparent_crc(p_617->g_271.y, "p_617->g_271.y", print_hash_value);
    transparent_crc(p_617->g_310.f0, "p_617->g_310.f0", print_hash_value);
    transparent_crc(p_617->g_310.f1, "p_617->g_310.f1", print_hash_value);
    transparent_crc(p_617->g_310.f2, "p_617->g_310.f2", print_hash_value);
    transparent_crc(p_617->g_310.f3, "p_617->g_310.f3", print_hash_value);
    transparent_crc(p_617->g_310.f4, "p_617->g_310.f4", print_hash_value);
    transparent_crc(p_617->g_310.f5, "p_617->g_310.f5", print_hash_value);
    transparent_crc(p_617->g_310.f6, "p_617->g_310.f6", print_hash_value);
    transparent_crc(p_617->g_310.f7, "p_617->g_310.f7", print_hash_value);
    transparent_crc(p_617->g_310.f8, "p_617->g_310.f8", print_hash_value);
    transparent_crc(p_617->g_317.x, "p_617->g_317.x", print_hash_value);
    transparent_crc(p_617->g_317.y, "p_617->g_317.y", print_hash_value);
    transparent_crc(p_617->g_391.x, "p_617->g_391.x", print_hash_value);
    transparent_crc(p_617->g_391.y, "p_617->g_391.y", print_hash_value);
    transparent_crc(p_617->g_391.z, "p_617->g_391.z", print_hash_value);
    transparent_crc(p_617->g_391.w, "p_617->g_391.w", print_hash_value);
    transparent_crc(p_617->g_393.f0, "p_617->g_393.f0", print_hash_value);
    transparent_crc(p_617->g_393.f1, "p_617->g_393.f1", print_hash_value);
    transparent_crc(p_617->g_393.f2, "p_617->g_393.f2", print_hash_value);
    transparent_crc(p_617->g_393.f3, "p_617->g_393.f3", print_hash_value);
    transparent_crc(p_617->g_393.f4, "p_617->g_393.f4", print_hash_value);
    transparent_crc(p_617->g_398.s0, "p_617->g_398.s0", print_hash_value);
    transparent_crc(p_617->g_398.s1, "p_617->g_398.s1", print_hash_value);
    transparent_crc(p_617->g_398.s2, "p_617->g_398.s2", print_hash_value);
    transparent_crc(p_617->g_398.s3, "p_617->g_398.s3", print_hash_value);
    transparent_crc(p_617->g_398.s4, "p_617->g_398.s4", print_hash_value);
    transparent_crc(p_617->g_398.s5, "p_617->g_398.s5", print_hash_value);
    transparent_crc(p_617->g_398.s6, "p_617->g_398.s6", print_hash_value);
    transparent_crc(p_617->g_398.s7, "p_617->g_398.s7", print_hash_value);
    transparent_crc(p_617->g_403, "p_617->g_403", print_hash_value);
    transparent_crc(p_617->g_415.f0, "p_617->g_415.f0", print_hash_value);
    transparent_crc(p_617->g_415.f1, "p_617->g_415.f1", print_hash_value);
    transparent_crc(p_617->g_415.f2, "p_617->g_415.f2", print_hash_value);
    transparent_crc(p_617->g_415.f3, "p_617->g_415.f3", print_hash_value);
    transparent_crc(p_617->g_415.f4, "p_617->g_415.f4", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 10; k++)
            {
                transparent_crc(p_617->g_429[i][j][k].f0, "p_617->g_429[i][j][k].f0", print_hash_value);
                transparent_crc(p_617->g_429[i][j][k].f1, "p_617->g_429[i][j][k].f1", print_hash_value);
                transparent_crc(p_617->g_429[i][j][k].f2, "p_617->g_429[i][j][k].f2", print_hash_value);
                transparent_crc(p_617->g_429[i][j][k].f3, "p_617->g_429[i][j][k].f3", print_hash_value);
                transparent_crc(p_617->g_429[i][j][k].f4, "p_617->g_429[i][j][k].f4", print_hash_value);

            }
        }
    }
    transparent_crc(p_617->g_475.s0, "p_617->g_475.s0", print_hash_value);
    transparent_crc(p_617->g_475.s1, "p_617->g_475.s1", print_hash_value);
    transparent_crc(p_617->g_475.s2, "p_617->g_475.s2", print_hash_value);
    transparent_crc(p_617->g_475.s3, "p_617->g_475.s3", print_hash_value);
    transparent_crc(p_617->g_475.s4, "p_617->g_475.s4", print_hash_value);
    transparent_crc(p_617->g_475.s5, "p_617->g_475.s5", print_hash_value);
    transparent_crc(p_617->g_475.s6, "p_617->g_475.s6", print_hash_value);
    transparent_crc(p_617->g_475.s7, "p_617->g_475.s7", print_hash_value);
    transparent_crc(p_617->g_475.s8, "p_617->g_475.s8", print_hash_value);
    transparent_crc(p_617->g_475.s9, "p_617->g_475.s9", print_hash_value);
    transparent_crc(p_617->g_475.sa, "p_617->g_475.sa", print_hash_value);
    transparent_crc(p_617->g_475.sb, "p_617->g_475.sb", print_hash_value);
    transparent_crc(p_617->g_475.sc, "p_617->g_475.sc", print_hash_value);
    transparent_crc(p_617->g_475.sd, "p_617->g_475.sd", print_hash_value);
    transparent_crc(p_617->g_475.se, "p_617->g_475.se", print_hash_value);
    transparent_crc(p_617->g_475.sf, "p_617->g_475.sf", print_hash_value);
    transparent_crc(p_617->g_491, "p_617->g_491", print_hash_value);
    transparent_crc(p_617->g_499.f0.f0, "p_617->g_499.f0.f0", print_hash_value);
    transparent_crc(p_617->g_499.f0.f1, "p_617->g_499.f0.f1", print_hash_value);
    transparent_crc(p_617->g_499.f0.f2, "p_617->g_499.f0.f2", print_hash_value);
    transparent_crc(p_617->g_499.f0.f3, "p_617->g_499.f0.f3", print_hash_value);
    transparent_crc(p_617->g_499.f0.f4, "p_617->g_499.f0.f4", print_hash_value);
    transparent_crc(p_617->g_499.f0.f5, "p_617->g_499.f0.f5", print_hash_value);
    transparent_crc(p_617->g_499.f0.f6, "p_617->g_499.f0.f6", print_hash_value);
    transparent_crc(p_617->g_499.f0.f7, "p_617->g_499.f0.f7", print_hash_value);
    transparent_crc(p_617->g_499.f0.f8, "p_617->g_499.f0.f8", print_hash_value);
    transparent_crc(p_617->g_512.x, "p_617->g_512.x", print_hash_value);
    transparent_crc(p_617->g_512.y, "p_617->g_512.y", print_hash_value);
    transparent_crc(p_617->g_513.s0, "p_617->g_513.s0", print_hash_value);
    transparent_crc(p_617->g_513.s1, "p_617->g_513.s1", print_hash_value);
    transparent_crc(p_617->g_513.s2, "p_617->g_513.s2", print_hash_value);
    transparent_crc(p_617->g_513.s3, "p_617->g_513.s3", print_hash_value);
    transparent_crc(p_617->g_513.s4, "p_617->g_513.s4", print_hash_value);
    transparent_crc(p_617->g_513.s5, "p_617->g_513.s5", print_hash_value);
    transparent_crc(p_617->g_513.s6, "p_617->g_513.s6", print_hash_value);
    transparent_crc(p_617->g_513.s7, "p_617->g_513.s7", print_hash_value);
    transparent_crc(p_617->g_515.s0, "p_617->g_515.s0", print_hash_value);
    transparent_crc(p_617->g_515.s1, "p_617->g_515.s1", print_hash_value);
    transparent_crc(p_617->g_515.s2, "p_617->g_515.s2", print_hash_value);
    transparent_crc(p_617->g_515.s3, "p_617->g_515.s3", print_hash_value);
    transparent_crc(p_617->g_515.s4, "p_617->g_515.s4", print_hash_value);
    transparent_crc(p_617->g_515.s5, "p_617->g_515.s5", print_hash_value);
    transparent_crc(p_617->g_515.s6, "p_617->g_515.s6", print_hash_value);
    transparent_crc(p_617->g_515.s7, "p_617->g_515.s7", print_hash_value);
    transparent_crc(p_617->g_515.s8, "p_617->g_515.s8", print_hash_value);
    transparent_crc(p_617->g_515.s9, "p_617->g_515.s9", print_hash_value);
    transparent_crc(p_617->g_515.sa, "p_617->g_515.sa", print_hash_value);
    transparent_crc(p_617->g_515.sb, "p_617->g_515.sb", print_hash_value);
    transparent_crc(p_617->g_515.sc, "p_617->g_515.sc", print_hash_value);
    transparent_crc(p_617->g_515.sd, "p_617->g_515.sd", print_hash_value);
    transparent_crc(p_617->g_515.se, "p_617->g_515.se", print_hash_value);
    transparent_crc(p_617->g_515.sf, "p_617->g_515.sf", print_hash_value);
    transparent_crc(p_617->g_561.x, "p_617->g_561.x", print_hash_value);
    transparent_crc(p_617->g_561.y, "p_617->g_561.y", print_hash_value);
    transparent_crc(p_617->g_572.x, "p_617->g_572.x", print_hash_value);
    transparent_crc(p_617->g_572.y, "p_617->g_572.y", print_hash_value);
    transparent_crc(p_617->g_572.z, "p_617->g_572.z", print_hash_value);
    transparent_crc(p_617->g_572.w, "p_617->g_572.w", print_hash_value);
    transparent_crc(p_617->g_594.s0, "p_617->g_594.s0", print_hash_value);
    transparent_crc(p_617->g_594.s1, "p_617->g_594.s1", print_hash_value);
    transparent_crc(p_617->g_594.s2, "p_617->g_594.s2", print_hash_value);
    transparent_crc(p_617->g_594.s3, "p_617->g_594.s3", print_hash_value);
    transparent_crc(p_617->g_594.s4, "p_617->g_594.s4", print_hash_value);
    transparent_crc(p_617->g_594.s5, "p_617->g_594.s5", print_hash_value);
    transparent_crc(p_617->g_594.s6, "p_617->g_594.s6", print_hash_value);
    transparent_crc(p_617->g_594.s7, "p_617->g_594.s7", print_hash_value);
    transparent_crc(p_617->g_595.s0, "p_617->g_595.s0", print_hash_value);
    transparent_crc(p_617->g_595.s1, "p_617->g_595.s1", print_hash_value);
    transparent_crc(p_617->g_595.s2, "p_617->g_595.s2", print_hash_value);
    transparent_crc(p_617->g_595.s3, "p_617->g_595.s3", print_hash_value);
    transparent_crc(p_617->g_595.s4, "p_617->g_595.s4", print_hash_value);
    transparent_crc(p_617->g_595.s5, "p_617->g_595.s5", print_hash_value);
    transparent_crc(p_617->g_595.s6, "p_617->g_595.s6", print_hash_value);
    transparent_crc(p_617->g_595.s7, "p_617->g_595.s7", print_hash_value);
    transparent_crc(p_617->g_595.s8, "p_617->g_595.s8", print_hash_value);
    transparent_crc(p_617->g_595.s9, "p_617->g_595.s9", print_hash_value);
    transparent_crc(p_617->g_595.sa, "p_617->g_595.sa", print_hash_value);
    transparent_crc(p_617->g_595.sb, "p_617->g_595.sb", print_hash_value);
    transparent_crc(p_617->g_595.sc, "p_617->g_595.sc", print_hash_value);
    transparent_crc(p_617->g_595.sd, "p_617->g_595.sd", print_hash_value);
    transparent_crc(p_617->g_595.se, "p_617->g_595.se", print_hash_value);
    transparent_crc(p_617->g_595.sf, "p_617->g_595.sf", print_hash_value);
    transparent_crc(p_617->g_612.f0.f0, "p_617->g_612.f0.f0", print_hash_value);
    transparent_crc(p_617->g_612.f0.f1, "p_617->g_612.f0.f1", print_hash_value);
    transparent_crc(p_617->g_612.f0.f2, "p_617->g_612.f0.f2", print_hash_value);
    transparent_crc(p_617->g_612.f0.f3, "p_617->g_612.f0.f3", print_hash_value);
    transparent_crc(p_617->g_612.f0.f4, "p_617->g_612.f0.f4", print_hash_value);
    transparent_crc(p_617->g_612.f0.f5, "p_617->g_612.f0.f5", print_hash_value);
    transparent_crc(p_617->g_612.f0.f6, "p_617->g_612.f0.f6", print_hash_value);
    transparent_crc(p_617->g_612.f0.f7, "p_617->g_612.f0.f7", print_hash_value);
    transparent_crc(p_617->g_612.f0.f8, "p_617->g_612.f0.f8", print_hash_value);
    transparent_crc(p_617->v_collective, "p_617->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 13; i++)
            transparent_crc(p_617->g_special_values[i + 13 * get_linear_group_id()], "p_617->g_special_values[i + 13 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 13; i++)
            transparent_crc(p_617->l_special_values[i], "p_617->l_special_values[i]", print_hash_value);
    transparent_crc(p_617->l_comm_values[get_linear_local_id()], "p_617->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_617->g_comm_values[get_linear_group_id() * 71 + get_linear_local_id()], "p_617->g_comm_values[get_linear_group_id() * 71 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
