// --atomics 75 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 1,58,38 -l 1,2,1
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

__constant uint32_t permutations[10][2] = {
{1,0}, // permutation 0
{1,0}, // permutation 1
{1,0}, // permutation 2
{1,0}, // permutation 3
{1,0}, // permutation 4
{1,0}, // permutation 5
{1,0}, // permutation 6
{1,0}, // permutation 7
{1,0}, // permutation 8
{1,0} // permutation 9
};

// Seed: 113

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint16_t  f0;
   uint32_t  f1;
   int16_t  f2;
   volatile uint8_t  f3;
};

struct S1 {
   int64_t  f0;
   int32_t  f1;
   int32_t  f2;
   int32_t  f3;
   volatile int8_t  f4;
   uint32_t  f5;
   uint64_t  f6;
   volatile int64_t  f7;
};

struct S2 {
    uint16_t g_6;
    uint32_t g_11;
    int32_t g_36;
    int32_t * volatile g_35;
    int32_t g_45[6];
    uint64_t g_47;
    uint64_t g_81;
    int16_t g_83;
    uint32_t g_97[9][1][9];
    VECTOR(uint8_t, 4) g_123;
    uint32_t g_136[1];
    int16_t *g_147[4];
    int16_t **g_146;
    int16_t g_154;
    VECTOR(int32_t, 16) g_179;
    int32_t g_190;
    int32_t *g_206;
    int32_t ** volatile g_205[6];
    int32_t ** volatile g_228[10];
    struct S1 g_234[4][6][7];
    struct S1 *g_233;
    int32_t ** volatile g_235;
    uint16_t g_274;
    int16_t g_282;
    int32_t * volatile g_287;
    int32_t * volatile g_289[8];
    int32_t * volatile g_290;
    int32_t * volatile g_292;
    VECTOR(uint32_t, 8) g_298;
    volatile struct S0 g_305;
    volatile VECTOR(uint16_t, 16) g_313;
    int32_t ** volatile g_315;
    VECTOR(uint32_t, 2) g_344;
    volatile VECTOR(uint32_t, 8) g_349;
    VECTOR(uint8_t, 8) g_353;
    int8_t g_355;
    volatile VECTOR(int16_t, 4) g_358;
    struct S0 g_366;
    struct S0 *g_368;
    struct S0 ** volatile g_367;
    struct S0 g_391;
    volatile int64_t *g_401;
    uint32_t g_407[2];
    int32_t ** volatile g_429;
    struct S1 g_454[8];
    VECTOR(uint16_t, 2) g_484;
    VECTOR(int32_t, 8) g_499;
    int8_t g_506;
    struct S0 g_510;
    struct S0 g_511;
    volatile struct S0 g_520;
    struct S0 g_523[3][1][10];
    struct S1 g_532;
    VECTOR(int32_t, 2) g_546;
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
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
uint32_t  func_1(struct S2 * p_549);
uint32_t  func_2(int32_t  p_3, uint32_t  p_4, struct S2 * p_549);
int8_t  func_18(int64_t  p_19, int8_t  p_20, struct S2 * p_549);
struct S1  func_21(int32_t  p_22, int32_t  p_23, uint32_t  p_24, uint32_t * p_25, uint8_t  p_26, struct S2 * p_549);
struct S1  func_27(int16_t  p_28, struct S2 * p_549);
uint32_t  func_50(uint32_t * p_51, struct S2 * p_549);
uint32_t * func_52(int32_t * p_53, uint32_t  p_54, struct S2 * p_549);
uint32_t  func_55(uint64_t * p_56, uint32_t  p_57, uint8_t  p_58, struct S2 * p_549);
uint64_t * func_59(int32_t * p_60, uint16_t  p_61, int32_t * p_62, uint64_t  p_63, struct S2 * p_549);
int32_t * func_64(int32_t  p_65, int64_t  p_66, struct S2 * p_549);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_549->g_6 p_549->g_11 p_549->g_35 p_549->g_47 p_549->g_36 p_549->l_comm_values p_549->g_81 p_549->g_123 p_549->g_234.f6 p_549->g_206 p_549->g_298 p_549->g_305 p_549->g_234.f1 p_549->g_313 p_549->g_45 p_549->g_274 p_549->g_179 p_549->g_97 p_549->g_234.f3 p_549->g_315 p_549->g_234.f0 p_549->g_344 p_549->g_349 p_549->g_190 p_549->g_234.f5 p_549->g_353 p_549->g_358 p_549->g_83 p_549->g_367 p_549->g_234.f7 p_549->g_391 p_549->g_401 p_549->g_366.f0 p_549->g_282 p_549->g_407 p_549->g_136 p_549->g_366.f2 p_549->g_429 p_549->g_233 p_549->g_234 p_549->g_454 p_549->g_355 p_549->g_484 p_549->g_499 p_549->g_510 p_549->g_368 p_549->g_520 p_549->g_523 p_549->g_532 p_549->g_235 p_549->g_511.f1
 * writes: p_549->g_6 p_549->g_11 p_549->g_36 p_549->g_47 p_549->g_83 p_549->g_97 p_549->g_45 p_549->g_298 p_549->g_206 p_549->g_353 p_549->g_355 p_549->g_274 p_549->g_368 p_549->g_81 p_549->g_282 p_549->g_407 p_549->g_146 p_549->g_136 p_549->g_366.f2 p_549->g_506 p_549->g_511 p_549->g_510.f0
 */
uint32_t  func_1(struct S2 * p_549)
{ /* block id: 4 */
    int32_t l_5[6][9][4] = {{{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L}},{{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L}},{{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L}},{{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L}},{{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L}},{{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L},{1L,0x52F34111L,0x105FA2EFL,0L}}};
    int64_t l_8[10][6][4] = {{{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L}},{{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L}},{{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L}},{{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L}},{{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L}},{{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L}},{{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L}},{{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L}},{{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L}},{{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L},{5L,(-7L),0x3C59458D81C91930L,9L}}};
    uint32_t *l_9 = (void*)0;
    uint32_t *l_10 = &p_549->g_11;
    int32_t l_12 = 0x4D7AEB8FL;
    int32_t l_443 = (-1L);
    uint32_t l_539 = 4294967295UL;
    int32_t *l_541 = (void*)0;
    int8_t l_548 = 1L;
    int i, j, k;
    l_12 = (func_2(l_5[5][7][2], l_5[3][1][1], p_549) <= (!((*l_10) = l_8[6][4][0])));
    for (l_12 = (-19); (l_12 == 0); l_12++)
    { /* block id: 12 */
        int16_t l_15 = 1L;
        uint8_t *l_440 = (void*)0;
        uint8_t *l_441 = (void*)0;
        uint8_t *l_442 = (void*)0;
        uint16_t *l_446 = &p_549->g_274;
        int8_t *l_447 = &p_549->g_355;
        int32_t *l_540 = &p_549->g_45[3];
        struct S0 **l_543[7];
        struct S0 ***l_542 = &l_543[1];
        int i;
        for (i = 0; i < 7; i++)
            l_543[i] = &p_549->g_368;
        (*l_540) = (l_15 , (safe_div_func_int16_t_s_s((((*l_447) = func_18(((func_21(((func_27(p_549->g_11, p_549) , ((safe_mod_func_uint64_t_u_u(((safe_sub_func_uint32_t_u_u(0xC7C2A8DDL, (p_549->g_305 , ((safe_mod_func_uint16_t_u_u((+((~(l_12 == ((((*l_447) = (((*l_446) = (l_8[7][4][1] <= (safe_mod_func_uint32_t_u_u((safe_rshift_func_uint8_t_u_s((l_443 |= l_8[6][4][0]), (safe_add_func_int64_t_s_s(0x6632CFFD96280730L, 0x0A58D1E9281F35ABL)))), 0x164EF532L)))) > l_15)) || p_549->g_353.s2) != 0x1642L))) && 0x5AL)), l_15)) || FAKE_DIVERGE(p_549->group_0_offset, get_group_id(0), 10))))) , 8UL), l_8[6][4][0])) != p_549->g_97[5][0][8])) , l_443), p_549->g_391.f2, p_549->l_comm_values[(safe_mod_func_uint32_t_u_u(p_549->tid, 2))], &p_549->g_11, p_549->g_344.y, p_549) , p_549->g_391.f3) > 0x12L), l_5[0][8][2], p_549)) | 0x14L), l_539)));
        l_541 = &l_443;
        (*l_542) = &p_549->g_368;
        for (p_549->g_11 = 0; (p_549->g_11 > 5); p_549->g_11++)
        { /* block id: 200 */
            int32_t **l_547[7][4][1] = {{{&l_540},{&l_540},{&l_540},{&l_540}},{{&l_540},{&l_540},{&l_540},{&l_540}},{{&l_540},{&l_540},{&l_540},{&l_540}},{{&l_540},{&l_540},{&l_540},{&l_540}},{{&l_540},{&l_540},{&l_540},{&l_540}},{{&l_540},{&l_540},{&l_540},{&l_540}},{{&l_540},{&l_540},{&l_540},{&l_540}}};
            int i, j, k;
            (*p_549->g_206) = ((*l_541) = ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0x7DFB4784L, 7L)), 0x44DA5624L, ((VECTOR(int32_t, 2))(p_549->g_546.yy)), (-7L), 0x372B3EDCL, 8L)).s7);
            l_540 = &l_443;
        }
    }
    return l_548;
}


/* ------------------------------------------ */
/* 
 * reads : p_549->g_6
 * writes: p_549->g_6
 */
uint32_t  func_2(int32_t  p_3, uint32_t  p_4, struct S2 * p_549)
{ /* block id: 5 */
    int16_t l_7 = 0x77B6L;
    p_549->g_6 |= (-1L);
    return l_7;
}


/* ------------------------------------------ */
/* 
 * reads : p_549->g_355 p_549->g_484 p_549->g_499 p_549->g_36 p_549->g_510 p_549->g_367 p_549->g_368 p_549->g_206 p_549->g_45 p_549->g_520 p_549->g_523 p_549->g_532 p_549->g_235 p_549->g_234.f3 p_549->g_6 p_549->g_511.f1
 * writes: p_549->g_355 p_549->g_298 p_549->g_45 p_549->g_506 p_549->g_36 p_549->g_511 p_549->g_510.f0
 */
int8_t  func_18(int64_t  p_19, int8_t  p_20, struct S2 * p_549)
{ /* block id: 167 */
    int32_t *l_455 = (void*)0;
    int32_t *l_456 = (void*)0;
    int32_t l_457 = 0L;
    int32_t *l_458 = (void*)0;
    int32_t *l_459 = &p_549->g_45[5];
    int32_t *l_460 = &p_549->g_36;
    int32_t *l_461 = &p_549->g_36;
    int32_t *l_462 = (void*)0;
    int32_t *l_463 = &p_549->g_45[4];
    int64_t l_464[1];
    int32_t *l_465 = (void*)0;
    int32_t *l_466[4];
    int32_t l_467 = 0L;
    uint32_t l_468[5][10] = {{1UL,1UL,0x385020E0L,0xF091CAC4L,0UL,0xF091CAC4L,0x385020E0L,1UL,1UL,0x385020E0L},{1UL,1UL,0x385020E0L,0xF091CAC4L,0UL,0xF091CAC4L,0x385020E0L,1UL,1UL,0x385020E0L},{1UL,1UL,0x385020E0L,0xF091CAC4L,0UL,0xF091CAC4L,0x385020E0L,1UL,1UL,0x385020E0L},{1UL,1UL,0x385020E0L,0xF091CAC4L,0UL,0xF091CAC4L,0x385020E0L,1UL,1UL,0x385020E0L},{1UL,1UL,0x385020E0L,0xF091CAC4L,0UL,0xF091CAC4L,0x385020E0L,1UL,1UL,0x385020E0L}};
    VECTOR(int32_t, 8) l_475 = (VECTOR(int32_t, 8))((-2L), (VECTOR(int32_t, 4))((-2L), (VECTOR(int32_t, 2))((-2L), 8L), 8L), 8L, (-2L), 8L);
    VECTOR(int32_t, 4) l_500 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x490B1624L), 0x490B1624L);
    int16_t **l_512 = (void*)0;
    uint64_t *l_535[3];
    uint16_t l_536 = 0xADADL;
    uint16_t *l_537 = &p_549->g_510.f0;
    int32_t l_538 = 0x347ED16AL;
    int i, j;
    for (i = 0; i < 1; i++)
        l_464[i] = 1L;
    for (i = 0; i < 4; i++)
        l_466[i] = &p_549->g_45[4];
    for (i = 0; i < 3; i++)
        l_535[i] = &p_549->g_81;
    l_468[3][1]++;
    for (p_549->g_355 = 12; (p_549->g_355 >= (-17)); --p_549->g_355)
    { /* block id: 171 */
        VECTOR(uint16_t, 2) l_485 = (VECTOR(uint16_t, 2))(65535UL, 0x0699L);
        uint64_t l_493 = 0UL;
        uint16_t l_494 = 6UL;
        uint32_t *l_497[2];
        int32_t l_498 = 0L;
        int8_t *l_505 = &p_549->g_506;
        int32_t l_507 = 1L;
        int i;
        for (i = 0; i < 2; i++)
            l_497[i] = &p_549->g_11;
        l_507 &= (safe_mod_func_int32_t_s_s(((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(l_475.s4400)).wxxywywyzxxwwyxz)), (int32_t)((*l_460) = ((safe_div_func_uint32_t_u_u((safe_rshift_func_int8_t_s_s(((*l_505) = (safe_mod_func_uint8_t_u_u((safe_sub_func_uint8_t_u_u((((VECTOR(uint16_t, 4))(mad_hi(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(65535UL, ((VECTOR(uint16_t, 2))(1UL, 1UL)), 65526UL)).wwyyzwwz)).hi, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(p_549->g_484.xyxy)).zzyzzyyzxwywwxxz)).s3b47, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(clz(((VECTOR(uint16_t, 2))(add_sat(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(1UL, 3UL)), 0xD489L, 0UL)).lo, ((VECTOR(uint16_t, 2))(l_485.xx)))))))).xyxyxyyyxxxyyxyy)).sdd6e))).y != (safe_lshift_func_int16_t_s_s(0x5E35L, 4))), (safe_div_func_uint32_t_u_u((p_549->g_298.s0 = (safe_unary_minus_func_uint64_t_u((safe_rshift_func_uint16_t_u_u((l_493 , (++l_494)), 8))))), FAKE_DIVERGE(p_549->global_0_offset, get_global_id(0), 10))))), (((*l_459) = 0x45B2A14EL) | ((VECTOR(int32_t, 16))((-4L), p_20, (((l_498 = 0UL) == 0xD0DC103DL) | l_485.x), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(p_549->g_499.s45774160)).s74)), ((VECTOR(int32_t, 2))(0x2CC45199L, 0x3555D5DAL)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_500.yy)), 0x2329E9FBL, 0L)).zwxyxyyxxxzxzwyw)).s6d, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),int32_t,((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(0x02ED76E6L, (-3L))).yyyxyxxxxyxxyyxy)).odd, (int32_t)l_498, (int32_t)(safe_div_func_uint64_t_u_u(((safe_mul_func_uint8_t_u_u(0xD3L, 1UL)) , p_19), p_549->g_36))))))).s77))))), (-2L), 0x2AA808AEL, ((VECTOR(int32_t, 4))(0x33D6AD1AL)), 0x5F8829CEL)).s1)))), 2)), 0x154F8D5CL)) >= p_20))))).s8, p_19));
    }
    for (l_467 = (-12); (l_467 >= (-16)); --l_467)
    { /* block id: 182 */
        uint32_t l_513 = 4294967295UL;
        p_549->g_511 = p_549->g_510;
        (*l_461) = (~((void*)0 != l_512));
        (*p_549->g_206) &= ((*p_549->g_367) == p_549->g_368);
        ++l_513;
    }
    l_538 = ((*l_461) |= (((*l_537) ^= (p_19 >= (((safe_add_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((p_549->g_520 , (FAKE_DIVERGE(p_549->local_0_offset, get_local_id(0), 10) | ((p_549->g_45[4] == (~(safe_mul_func_uint8_t_u_u((p_549->g_523[0][0][0] , (*l_463)), ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(0x38L, 0x2EL)).xyyyxxxyxyxxxxxy)).s0)))) && (p_20 && (safe_rshift_func_int16_t_s_u(((((VECTOR(uint64_t, 16))(8UL, (safe_mod_func_uint64_t_u_u(((VECTOR(uint64_t, 8))((safe_lshift_func_int16_t_s_u(((safe_lshift_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(((l_536 &= (((p_549->g_532 , (safe_rshift_func_uint8_t_u_u(p_20, 3))) < ((*l_459) = (p_20 & 0L))) , (*l_459))) && (**p_549->g_235)), 2UL, ((VECTOR(uint8_t, 4))(252UL)), ((VECTOR(uint8_t, 2))(7UL)), p_549->g_510.f2, 0UL, 6UL, p_549->g_234[0][2][6].f3, 0x39L, 0x6AL, 248UL, 6UL)).sd, 7)) < 1L), 6)), p_19, GROUP_DIVERGE(1, 1), ((VECTOR(uint64_t, 2))(0x2FE0A0900F0EFCCDL)), p_549->g_6, 0x815A760E5CBC2EBFL, 2UL)).s1, (-2L))), ((VECTOR(uint64_t, 2))(0x2AC7278D54F97B8AL)), ((VECTOR(uint64_t, 2))(18446744073709551615UL)), ((VECTOR(uint64_t, 8))(18446744073709551615UL)), 0xE402FBC99426DACAL, 18446744073709551615UL)).se , p_19) || 1L), FAKE_DIVERGE(p_549->group_0_offset, get_group_id(0), 10))))))), p_549->g_511.f1)), p_20)) , (-1L)) ^ 255UL))) >= p_19));
    return p_20;
}


/* ------------------------------------------ */
/* 
 * reads : p_549->g_206 p_549->g_45 p_549->g_454
 * writes: p_549->g_45
 */
struct S1  func_21(int32_t  p_22, int32_t  p_23, uint32_t  p_24, uint32_t * p_25, uint8_t  p_26, struct S2 * p_549)
{ /* block id: 163 */
    int16_t l_450 = 0x312FL;
    uint8_t *l_451 = (void*)0;
    uint8_t *l_452[1];
    VECTOR(int32_t, 16) l_453 = (VECTOR(int32_t, 16))(0x43DBC631L, (VECTOR(int32_t, 4))(0x43DBC631L, (VECTOR(int32_t, 2))(0x43DBC631L, (-1L)), (-1L)), (-1L), 0x43DBC631L, (-1L), (VECTOR(int32_t, 2))(0x43DBC631L, (-1L)), (VECTOR(int32_t, 2))(0x43DBC631L, (-1L)), 0x43DBC631L, (-1L), 0x43DBC631L, (-1L));
    int i;
    for (i = 0; i < 1; i++)
        l_452[i] = (void*)0;
    (*p_549->g_206) &= (safe_rshift_func_uint8_t_u_s((l_453.sf = l_450), 4));
    return p_549->g_454[5];
}


/* ------------------------------------------ */
/* 
 * reads : p_549->g_6 p_549->g_35 p_549->g_47 p_549->g_36 p_549->g_11 p_549->l_comm_values p_549->g_81 p_549->g_123 p_549->g_234.f6 p_549->g_206 p_549->g_298 p_549->g_305 p_549->g_234.f1 p_549->g_313 p_549->g_45 p_549->g_274 p_549->g_179 p_549->g_97 p_549->g_234.f3 p_549->g_315 p_549->g_234.f0 p_549->g_344 p_549->g_349 p_549->g_190 p_549->g_234.f5 p_549->g_353 p_549->g_358 p_549->g_83 p_549->g_367 p_549->g_234.f7 p_549->g_391 p_549->g_401 p_549->g_366.f0 p_549->g_282 p_549->g_407 p_549->g_136 p_549->g_366.f2 p_549->g_429 p_549->g_233 p_549->g_234
 * writes: p_549->g_36 p_549->g_47 p_549->g_6 p_549->g_83 p_549->g_97 p_549->g_45 p_549->g_298 p_549->g_206 p_549->g_353 p_549->g_355 p_549->g_274 p_549->g_368 p_549->g_81 p_549->g_282 p_549->g_407 p_549->g_146 p_549->g_136 p_549->g_366.f2
 */
struct S1  func_27(int16_t  p_28, struct S2 * p_549)
{ /* block id: 13 */
    uint8_t l_38[4] = {0x01L,0x01L,0x01L,0x01L};
    VECTOR(int16_t, 2) l_77 = (VECTOR(int16_t, 2))((-10L), 6L);
    uint64_t *l_80 = &p_549->g_81;
    VECTOR(uint8_t, 8) l_408 = (VECTOR(uint8_t, 8))(0xABL, (VECTOR(uint8_t, 4))(0xABL, (VECTOR(uint8_t, 2))(0xABL, 0xC4L), 0xC4L), 0xC4L, 0xABL, 0xC4L);
    int32_t l_409 = 0L;
    int16_t **l_412 = &p_549->g_147[3];
    int16_t ***l_413 = &p_549->g_146;
    int8_t *l_414 = &p_549->g_355;
    uint32_t *l_425 = &p_549->g_136[0];
    int32_t l_426 = (-1L);
    int16_t *l_427 = &p_549->g_366.f2;
    int32_t **l_428 = (void*)0;
    int i;
    for (p_28 = 0; (p_28 < (-28)); --p_28)
    { /* block id: 16 */
        int32_t *l_37[8] = {&p_549->g_36,&p_549->g_36,&p_549->g_36,&p_549->g_36,&p_549->g_36,&p_549->g_36,&p_549->g_36,&p_549->g_36};
        uint64_t *l_46[4][4][3] = {{{&p_549->g_47,&p_549->g_47,&p_549->g_47},{&p_549->g_47,&p_549->g_47,&p_549->g_47},{&p_549->g_47,&p_549->g_47,&p_549->g_47},{&p_549->g_47,&p_549->g_47,&p_549->g_47}},{{&p_549->g_47,&p_549->g_47,&p_549->g_47},{&p_549->g_47,&p_549->g_47,&p_549->g_47},{&p_549->g_47,&p_549->g_47,&p_549->g_47},{&p_549->g_47,&p_549->g_47,&p_549->g_47}},{{&p_549->g_47,&p_549->g_47,&p_549->g_47},{&p_549->g_47,&p_549->g_47,&p_549->g_47},{&p_549->g_47,&p_549->g_47,&p_549->g_47},{&p_549->g_47,&p_549->g_47,&p_549->g_47}},{{&p_549->g_47,&p_549->g_47,&p_549->g_47},{&p_549->g_47,&p_549->g_47,&p_549->g_47},{&p_549->g_47,&p_549->g_47,&p_549->g_47},{&p_549->g_47,&p_549->g_47,&p_549->g_47}}};
        int16_t *l_82 = &p_549->g_83;
        uint32_t l_92[6] = {0UL,0UL,0UL,0UL,0UL,0UL};
        uint32_t *l_404 = (void*)0;
        uint32_t *l_405 = (void*)0;
        uint32_t *l_406 = &p_549->g_407[0];
        int i, j, k;
        (*p_549->g_35) = (safe_sub_func_int32_t_s_s((safe_lshift_func_uint8_t_u_s(GROUP_DIVERGE(1, 1), 5)), p_549->g_6));
        l_38[0]++;
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        p_549->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 2)), permutations[(safe_mod_func_uint32_t_u_u(((*l_406) &= (safe_mod_func_uint16_t_u_u((safe_add_func_int32_t_s_s((4UL | (++p_549->g_47)), 5UL)), ((func_2(l_38[3], p_549->g_36, p_549) != (((func_50(func_52(&p_549->g_45[4], func_55(func_59(func_64((((((VECTOR(int16_t, 2))(0x21FCL, 0x0D74L)).lo && (safe_div_func_int32_t_s_s((safe_div_func_int8_t_s_s((safe_lshift_func_uint8_t_u_u(((safe_lshift_func_uint8_t_u_s(((((((VECTOR(int16_t, 4))(l_77.xyyy)).x ^ ((safe_lshift_func_int16_t_s_u(((*l_82) = (l_80 == &p_549->g_81)), (safe_add_func_uint8_t_u_u((safe_add_func_uint8_t_u_u((safe_rshift_func_int8_t_s_u((((safe_mod_func_uint32_t_u_u(0UL, (*p_549->g_35))) < p_549->g_11) || l_92[2]), 4)), p_549->l_comm_values[(safe_mod_func_uint32_t_u_u(p_549->tid, 2))])), l_38[2])))) < (-2L))) , (void*)0) == (void*)0) == l_38[2]), p_549->g_36)) <= p_549->g_81), 0)), 1L)), FAKE_DIVERGE(p_549->group_1_offset, get_group_id(1), 10)))) && 0x196EF039L) <= p_549->g_81), p_28, p_549), p_28, &p_549->g_45[4], p_28, p_549), p_549->g_123.w, p_549->g_234[0][2][6].f6, p_549), p_549), p_549) , (-8L)) ^ 18446744073709551615UL) > 0UL)) && GROUP_DIVERGE(0, 1))))), 10))][(safe_mod_func_uint32_t_u_u(p_549->tid, 2))]));
    }
    (*p_549->g_429) = func_64(((((l_409 |= ((VECTOR(uint8_t, 8))(l_408.s47050630)).s5) | (safe_lshift_func_int8_t_s_s((0xB7L ^ ((*l_414) = (l_412 == ((*l_413) = (void*)0)))), 4))) & ((*l_80)++)) & (safe_mul_func_uint16_t_u_u(l_408.s4, (safe_mul_func_uint16_t_u_u((p_28 != (safe_lshift_func_int8_t_s_u((safe_mul_func_uint8_t_u_u(p_28, (0x04E4L < (((*l_425) |= p_549->g_11) , ((*l_427) ^= (l_426 &= (((VECTOR(uint16_t, 16))((l_77.y || p_28), p_549->g_391.f1, 0x5146L, p_28, 1UL, 0x029BL, 65535UL, l_77.y, 65526UL, ((VECTOR(uint16_t, 4))(0UL)), ((VECTOR(uint16_t, 2))(0UL)), 5UL)).s7 || 0x486BL))))))), 7))), GROUP_DIVERGE(1, 1)))))), l_408.s5, p_549);
    return (*p_549->g_233);
}


/* ------------------------------------------ */
/* 
 * reads : p_549->g_206 p_549->g_274 p_549->g_234.f0 p_549->g_344 p_549->g_97 p_549->g_349 p_549->g_190 p_549->g_234.f5 p_549->g_353 p_549->g_234.f1 p_549->g_45 p_549->g_358 p_549->g_83 p_549->g_315 p_549->g_367 p_549->g_234.f7 p_549->g_36 p_549->g_391 p_549->g_81 p_549->g_401 p_549->g_366.f0 p_549->g_282 p_549->g_123
 * writes: p_549->g_45 p_549->g_353 p_549->g_355 p_549->g_274 p_549->g_83 p_549->g_368 p_549->g_81 p_549->g_282 p_549->g_206
 */
uint32_t  func_50(uint32_t * p_51, struct S2 * p_549)
{ /* block id: 121 */
    VECTOR(uint32_t, 8) l_337 = (VECTOR(uint32_t, 8))(0xEC14B60EL, (VECTOR(uint32_t, 4))(0xEC14B60EL, (VECTOR(uint32_t, 2))(0xEC14B60EL, 0xAA925E7FL), 0xAA925E7FL), 0xAA925E7FL, 0xEC14B60EL, 0xAA925E7FL);
    VECTOR(uint32_t, 8) l_350 = (VECTOR(uint32_t, 8))(0x8DD29172L, (VECTOR(uint32_t, 4))(0x8DD29172L, (VECTOR(uint32_t, 2))(0x8DD29172L, 0xE3734401L), 0xE3734401L), 0xE3734401L, 0x8DD29172L, 0xE3734401L);
    int8_t *l_354 = &p_549->g_355;
    uint16_t *l_359 = &p_549->g_274;
    int32_t **l_369[10][1][10] = {{{&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206}},{{&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206}},{{&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206}},{{&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206}},{{&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206}},{{&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206}},{{&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206}},{{&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206}},{{&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206}},{{&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206}}};
    int32_t l_377 = 0L;
    uint32_t l_382 = 0UL;
    uint32_t l_385 = 4294967295UL;
    int16_t l_390 = 0x7D66L;
    uint64_t *l_392 = &p_549->g_81;
    VECTOR(uint8_t, 16) l_398 = (VECTOR(uint8_t, 16))(247UL, (VECTOR(uint8_t, 4))(247UL, (VECTOR(uint8_t, 2))(247UL, 8UL), 8UL), 8UL, 247UL, 8UL, (VECTOR(uint8_t, 2))(247UL, 8UL), (VECTOR(uint8_t, 2))(247UL, 8UL), 247UL, 8UL, 247UL, 8UL);
    int16_t *l_402 = &p_549->g_282;
    int64_t l_403 = 0x63641D82E4F69128L;
    int i, j, k;
    (*p_549->g_206) = ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(6L, 0x44AE19E3L)), 0x3DF24FB6L, (-5L))).x;
    (*p_549->g_206) |= (safe_div_func_uint32_t_u_u((safe_div_func_uint16_t_u_u(((safe_sub_func_uint64_t_u_u(((0x7EBBL > ((safe_lshift_func_int8_t_s_u((safe_add_func_uint64_t_u_u(p_549->g_274, l_337.s0)), 0)) , p_549->g_234[0][2][6].f0)) > (0x1CL <= ((*l_354) = (p_549->g_353.s6 ^= (safe_mul_func_int8_t_s_s((safe_div_func_int16_t_s_s((safe_div_func_uint16_t_u_u(((((((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(safe_clamp_func(VECTOR(uint32_t, 4),uint32_t,((VECTOR(uint32_t, 2))(p_549->g_344.xy)).xyxy, (uint32_t)(safe_mul_func_uint16_t_u_u(9UL, (safe_rshift_func_uint8_t_u_s(p_549->g_274, 6)))), (uint32_t)(p_549->g_97[1][0][4] > ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(upsample(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(p_549->g_349.s1013720133400070)))).odd, ((VECTOR(uint32_t, 2))(l_350.s15)).xxyyyyxy))).s15)).lo)))).xyzyxyxwzwxxyyyy)).s0 , (safe_mod_func_int64_t_s_s(l_337.s1, p_549->g_190))) < l_350.s2) > l_350.s3) && 0x4041B172L), l_350.s2)), p_549->g_234[0][2][6].f5)), l_337.s3)))))), FAKE_DIVERGE(p_549->group_1_offset, get_group_id(1), 10))) != l_337.s5), l_337.s7)), p_549->g_234[0][2][6].f1));
    if ((safe_rshift_func_uint16_t_u_u((((VECTOR(int16_t, 16))(p_549->g_358.wwxwxzzwwxwzzwyz)).s1 && ((*l_359)++)), 3)))
    { /* block id: 127 */
        int32_t l_362 = (-1L);
        struct S0 *l_365[7] = {&p_549->g_366,&p_549->g_366,&p_549->g_366,&p_549->g_366,&p_549->g_366,&p_549->g_366,&p_549->g_366};
        int32_t **l_370 = &p_549->g_206;
        int i;
        (*p_549->g_206) |= l_362;
        for (p_549->g_83 = (-23); (p_549->g_83 < 11); p_549->g_83 = safe_add_func_uint8_t_u_u(p_549->g_83, 5))
        { /* block id: 131 */
            if ((**p_549->g_315))
                break;
            if (l_337.s1)
                break;
        }
        (*p_549->g_367) = l_365[2];
        (*p_549->g_206) = (1UL == (((&p_549->g_234[1][2][4] == &p_549->g_234[0][2][6]) || (l_369[5][0][6] == l_370)) , (safe_mod_func_uint32_t_u_u((**l_370), ((safe_add_func_int8_t_s_s(0x74L, (~(safe_lshift_func_uint8_t_u_s(((((0x91L && ((**l_370) <= (**l_370))) | (**l_370)) > l_377) , p_549->g_234[0][2][6].f7), p_549->g_353.s3))))) && (*p_51))))));
    }
    else
    { /* block id: 137 */
        int64_t l_378 = 0x72F117D05925AE1DL;
        int32_t l_379 = (-6L);
        int32_t l_380[5][5] = {{0x66E7AB1FL,0x052B7D59L,2L,0x052B7D59L,0x66E7AB1FL},{0x66E7AB1FL,0x052B7D59L,2L,0x052B7D59L,0x66E7AB1FL},{0x66E7AB1FL,0x052B7D59L,2L,0x052B7D59L,0x66E7AB1FL},{0x66E7AB1FL,0x052B7D59L,2L,0x052B7D59L,0x66E7AB1FL},{0x66E7AB1FL,0x052B7D59L,2L,0x052B7D59L,0x66E7AB1FL}};
        int32_t l_381[1][1];
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 1; j++)
                l_381[i][j] = 0x46631B92L;
        }
        l_382++;
        (*p_549->g_206) &= l_380[0][3];
    }
    (*p_549->g_315) = func_52(func_52(p_51, ((&p_549->g_315 == &l_369[2][0][4]) | l_385), p_549), ((safe_mul_func_int8_t_s_s(((*l_354) = (((*l_402) |= ((((safe_mul_func_int16_t_s_s(((l_390 < p_549->g_36) | (p_549->g_391 , (++(*l_392)))), (((safe_mul_func_int64_t_s_s((safe_unary_minus_func_uint8_t_u(((VECTOR(uint8_t, 8))(l_398.s24a36ad4)).s5)), ((((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((GROUP_DIVERGE(0, 1) <= (safe_lshift_func_int8_t_s_u(p_549->g_45[1], 1))) < 0x452F2C552422B104L), (*p_549->g_206), (-1L), 0L)).lo)).yxxyxxyx)).s3 , l_392) == p_549->g_401))) > p_549->g_366.f0) < (*p_51)))) , p_549->g_344.x) <= p_549->g_366.f0) | p_549->g_97[8][0][2])) <= p_549->g_353.s1)), l_403)) , p_549->g_344.x), p_549);
    return p_549->g_123.y;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint32_t * func_52(int32_t * p_53, uint32_t  p_54, struct S2 * p_549)
{ /* block id: 118 */
    int32_t *l_316 = &p_549->g_45[0];
    int32_t *l_317 = &p_549->g_45[0];
    int32_t *l_318 = &p_549->g_45[4];
    int32_t *l_319 = &p_549->g_45[3];
    int32_t *l_320 = &p_549->g_45[4];
    int32_t *l_321[4];
    uint8_t l_322 = 248UL;
    int i;
    for (i = 0; i < 4; i++)
        l_321[i] = &p_549->g_45[4];
    l_322--;
    return p_53;
}


/* ------------------------------------------ */
/* 
 * reads : p_549->g_206 p_549->g_298 p_549->g_305 p_549->g_234.f1 p_549->g_313 p_549->g_45 p_549->g_274 p_549->g_179 p_549->g_97 p_549->g_234.f3 p_549->g_315
 * writes: p_549->g_45 p_549->g_298 p_549->g_97 p_549->g_206
 */
uint32_t  func_55(uint64_t * p_56, uint32_t  p_57, uint8_t  p_58, struct S2 * p_549)
{ /* block id: 107 */
    int32_t *l_288 = (void*)0;
    int32_t *l_291 = (void*)0;
    int32_t *l_293[8] = {&p_549->g_36,&p_549->g_36,&p_549->g_36,&p_549->g_36,&p_549->g_36,&p_549->g_36,&p_549->g_36,&p_549->g_36};
    int64_t l_294 = (-8L);
    uint32_t *l_299 = (void*)0;
    uint32_t *l_300[7];
    int16_t **l_310 = &p_549->g_147[3];
    uint32_t l_314 = 4UL;
    int i;
    for (i = 0; i < 7; i++)
        l_300[i] = &p_549->g_97[5][0][8];
    for (p_58 = 0; (p_58 > 54); p_58++)
    { /* block id: 110 */
        return p_57;
    }
    l_294 |= ((*p_549->g_206) = 0x522F59E2L);
    (*p_549->g_315) = func_64((safe_rshift_func_int16_t_s_s((safe_unary_minus_func_uint32_t_u(((9L || GROUP_DIVERGE(1, 1)) | (p_549->g_298.s1 = ((VECTOR(uint32_t, 8))(p_549->g_298.s52274334)).s0)))), (safe_div_func_int32_t_s_s((safe_mul_func_uint8_t_u_u(((p_549->g_305 , ((safe_lshift_func_int8_t_s_s((safe_sub_func_int32_t_s_s((l_310 == l_310), p_58)), p_549->g_234[0][2][6].f1)) <= (((safe_sub_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(p_549->g_313.s4a62)).w, ((p_549->g_45[1] , (p_549->g_274 < p_549->g_179.s0)) & p_549->g_97[5][0][8]))) || l_314) <= 1L))) , p_57), 0xFCL)), p_57)))), p_549->g_234[0][2][6].f3, p_549);
    return p_57;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint64_t * func_59(int32_t * p_60, uint16_t  p_61, int32_t * p_62, uint64_t  p_63, struct S2 * p_549)
{ /* block id: 26 */
    uint32_t l_120 = 0x4386DA90L;
    VECTOR(uint8_t, 16) l_122 = (VECTOR(uint8_t, 16))(0x6EL, (VECTOR(uint8_t, 4))(0x6EL, (VECTOR(uint8_t, 2))(0x6EL, 0x87L), 0x87L), 0x87L, 0x6EL, 0x87L, (VECTOR(uint8_t, 2))(0x6EL, 0x87L), (VECTOR(uint8_t, 2))(0x6EL, 0x87L), 0x6EL, 0x87L, 0x6EL, 0x87L);
    uint64_t l_150 = 0x1B5795B1210621FFL;
    uint8_t l_151 = 250UL;
    int16_t *l_152 = &p_549->g_83;
    VECTOR(int64_t, 4) l_172 = (VECTOR(int64_t, 4))(0x5D12BE0C65E12B10L, (VECTOR(int64_t, 2))(0x5D12BE0C65E12B10L, (-9L)), (-9L));
    int32_t l_185[10][7][3] = {{{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L}},{{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L}},{{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L}},{{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L}},{{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L}},{{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L}},{{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L}},{{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L}},{{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L}},{{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L},{(-6L),0x75B026C5L,0x3D235115L}}};
    int32_t *l_186 = &l_185[6][5][0];
    int64_t l_244 = 0x53D42AAD9C1954BAL;
    VECTOR(int32_t, 8) l_261 = (VECTOR(int32_t, 8))(0x68DBBFDBL, (VECTOR(int32_t, 4))(0x68DBBFDBL, (VECTOR(int32_t, 2))(0x68DBBFDBL, 0x158CEC23L), 0x158CEC23L), 0x158CEC23L, 0x68DBBFDBL, 0x158CEC23L);
    int i, j, k;
    for (p_61 = 25; (p_61 > 12); --p_61)
    { /* block id: 29 */
        int16_t **l_111 = (void*)0;
        int16_t *l_113 = &p_549->g_83;
        int16_t **l_112 = &l_113;
        int16_t *l_115 = &p_549->g_83;
        int16_t **l_114 = &l_115;
        VECTOR(uint8_t, 16) l_121 = (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x25L), 0x25L), 0x25L, 0UL, 0x25L, (VECTOR(uint8_t, 2))(0UL, 0x25L), (VECTOR(uint8_t, 2))(0UL, 0x25L), 0UL, 0x25L, 0UL, 0x25L);
        int64_t *l_126 = (void*)0;
        int64_t *l_127 = (void*)0;
        int64_t *l_128[3];
        int32_t *l_135[8][7] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        VECTOR(int64_t, 8) l_173 = (VECTOR(int64_t, 8))(0x05D0EB5313487D1EL, (VECTOR(int64_t, 4))(0x05D0EB5313487D1EL, (VECTOR(int64_t, 2))(0x05D0EB5313487D1EL, (-7L)), (-7L)), (-7L), 0x05D0EB5313487D1EL, (-7L));
        uint32_t l_178 = 4294967295UL;
        int8_t l_183 = (-9L);
        VECTOR(uint32_t, 8) l_184 = (VECTOR(uint32_t, 8))(9UL, (VECTOR(uint32_t, 4))(9UL, (VECTOR(uint32_t, 2))(9UL, 4294967292UL), 4294967292UL), 4294967292UL, 9UL, 4294967292UL);
        VECTOR(int32_t, 8) l_187 = (VECTOR(int32_t, 8))(0x0A16CC3CL, (VECTOR(int32_t, 4))(0x0A16CC3CL, (VECTOR(int32_t, 2))(0x0A16CC3CL, 0x420BC8F2L), 0x420BC8F2L), 0x420BC8F2L, 0x0A16CC3CL, 0x420BC8F2L);
        VECTOR(int16_t, 8) l_197 = (VECTOR(int16_t, 8))((-8L), (VECTOR(int16_t, 4))((-8L), (VECTOR(int16_t, 2))((-8L), 0L), 0L), 0L, (-8L), 0L);
        int16_t l_223 = (-1L);
        struct S1 *l_229 = (void*)0;
        int32_t **l_262 = &l_135[6][1];
        int i, j;
        for (i = 0; i < 3; i++)
            l_128[i] = (void*)0;
        if ((atomic_inc(&p_549->g_atomic_input[75 * get_linear_group_id() + 9]) == 5))
        { /* block id: 31 */
            struct S0 l_106 = {0x3EF0L,0x463998E5L,0x01CDL,0x84L};/* VOLATILE GLOBAL l_106 */
            l_106 = l_106;
            for (l_106.f1 = (-26); (l_106.f1 == 48); ++l_106.f1)
            { /* block id: 35 */
                int32_t l_110 = 0L;
                int32_t *l_109[9][5][1] = {{{&l_110},{&l_110},{&l_110},{&l_110},{&l_110}},{{&l_110},{&l_110},{&l_110},{&l_110},{&l_110}},{{&l_110},{&l_110},{&l_110},{&l_110},{&l_110}},{{&l_110},{&l_110},{&l_110},{&l_110},{&l_110}},{{&l_110},{&l_110},{&l_110},{&l_110},{&l_110}},{{&l_110},{&l_110},{&l_110},{&l_110},{&l_110}},{{&l_110},{&l_110},{&l_110},{&l_110},{&l_110}},{{&l_110},{&l_110},{&l_110},{&l_110},{&l_110}},{{&l_110},{&l_110},{&l_110},{&l_110},{&l_110}}};
                int i, j, k;
                l_109[3][1][0] = l_109[3][1][0];
            }
            unsigned int result = 0;
            result += l_106.f0;
            result += l_106.f1;
            result += l_106.f2;
            result += l_106.f3;
            atomic_add(&p_549->g_special_values[75 * get_linear_group_id() + 9], result);
        }
        else
        { /* block id: 38 */
            (1 + 1);
        }
    }
    return &p_549->g_81;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_549->g_97
 */
int32_t * func_64(int32_t  p_65, int64_t  p_66, struct S2 * p_549)
{ /* block id: 21 */
    int32_t *l_93[7][1];
    uint64_t l_94 = 0xE1962FF4F296794CL;
    int8_t l_98 = 0x4BL;
    int8_t l_99 = 4L;
    int8_t l_100 = 0L;
    uint8_t l_101 = 0UL;
    int i, j;
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 1; j++)
            l_93[i][j] = &p_549->g_45[4];
    }
    ++l_94;
    p_549->g_97[5][0][8] = p_65;
    --l_101;
    return l_93[2][0];
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[2];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 2; i++)
            l_comm_values[i] = 1;
    struct S2 c_550;
    struct S2* p_549 = &c_550;
    struct S2 c_551 = {
        65528UL, // p_549->g_6
        9UL, // p_549->g_11
        1L, // p_549->g_36
        &p_549->g_36, // p_549->g_35
        {0x4D464984L,0x2E769E88L,0x4D464984L,0x4D464984L,0x2E769E88L,0x4D464984L}, // p_549->g_45
        5UL, // p_549->g_47
        0xEAA4BB8C65540566L, // p_549->g_81
        0x1100L, // p_549->g_83
        {{{0xA98BAAD8L,7UL,4294967290UL,0x762AA916L,0x8B0AA5F9L,0x762AA916L,4294967290UL,7UL,0xA98BAAD8L}},{{0xA98BAAD8L,7UL,4294967290UL,0x762AA916L,0x8B0AA5F9L,0x762AA916L,4294967290UL,7UL,0xA98BAAD8L}},{{0xA98BAAD8L,7UL,4294967290UL,0x762AA916L,0x8B0AA5F9L,0x762AA916L,4294967290UL,7UL,0xA98BAAD8L}},{{0xA98BAAD8L,7UL,4294967290UL,0x762AA916L,0x8B0AA5F9L,0x762AA916L,4294967290UL,7UL,0xA98BAAD8L}},{{0xA98BAAD8L,7UL,4294967290UL,0x762AA916L,0x8B0AA5F9L,0x762AA916L,4294967290UL,7UL,0xA98BAAD8L}},{{0xA98BAAD8L,7UL,4294967290UL,0x762AA916L,0x8B0AA5F9L,0x762AA916L,4294967290UL,7UL,0xA98BAAD8L}},{{0xA98BAAD8L,7UL,4294967290UL,0x762AA916L,0x8B0AA5F9L,0x762AA916L,4294967290UL,7UL,0xA98BAAD8L}},{{0xA98BAAD8L,7UL,4294967290UL,0x762AA916L,0x8B0AA5F9L,0x762AA916L,4294967290UL,7UL,0xA98BAAD8L}},{{0xA98BAAD8L,7UL,4294967290UL,0x762AA916L,0x8B0AA5F9L,0x762AA916L,4294967290UL,7UL,0xA98BAAD8L}}}, // p_549->g_97
        (VECTOR(uint8_t, 4))(252UL, (VECTOR(uint8_t, 2))(252UL, 0xF1L), 0xF1L), // p_549->g_123
        {4294967286UL}, // p_549->g_136
        {(void*)0,(void*)0,(void*)0,(void*)0}, // p_549->g_147
        &p_549->g_147[3], // p_549->g_146
        6L, // p_549->g_154
        (VECTOR(int32_t, 16))(0x0BEC7A0FL, (VECTOR(int32_t, 4))(0x0BEC7A0FL, (VECTOR(int32_t, 2))(0x0BEC7A0FL, (-1L)), (-1L)), (-1L), 0x0BEC7A0FL, (-1L), (VECTOR(int32_t, 2))(0x0BEC7A0FL, (-1L)), (VECTOR(int32_t, 2))(0x0BEC7A0FL, (-1L)), 0x0BEC7A0FL, (-1L), 0x0BEC7A0FL, (-1L)), // p_549->g_179
        0x4A600207L, // p_549->g_190
        &p_549->g_45[1], // p_549->g_206
        {&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206}, // p_549->g_205
        {&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206,&p_549->g_206}, // p_549->g_228
        {{{{-1L,-4L,0x20DD8B0EL,1L,0L,0xE59279D7L,0xBB389C6337962B1FL,-1L},{0x7D5AC8CFE953CFF5L,-4L,0x0B8726DDL,-4L,-1L,0UL,0xA5A7E5B790764872L,-2L},{0x326FDAAB49C6AE55L,0x4B15F4F7L,0x1D7A6BA7L,0x399C6124L,0x0EL,0x9AB5F15DL,0x3E085742EE506459L,0x03285A9660102FAFL},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L}},{{-1L,-4L,0x20DD8B0EL,1L,0L,0xE59279D7L,0xBB389C6337962B1FL,-1L},{0x7D5AC8CFE953CFF5L,-4L,0x0B8726DDL,-4L,-1L,0UL,0xA5A7E5B790764872L,-2L},{0x326FDAAB49C6AE55L,0x4B15F4F7L,0x1D7A6BA7L,0x399C6124L,0x0EL,0x9AB5F15DL,0x3E085742EE506459L,0x03285A9660102FAFL},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L}},{{-1L,-4L,0x20DD8B0EL,1L,0L,0xE59279D7L,0xBB389C6337962B1FL,-1L},{0x7D5AC8CFE953CFF5L,-4L,0x0B8726DDL,-4L,-1L,0UL,0xA5A7E5B790764872L,-2L},{0x326FDAAB49C6AE55L,0x4B15F4F7L,0x1D7A6BA7L,0x399C6124L,0x0EL,0x9AB5F15DL,0x3E085742EE506459L,0x03285A9660102FAFL},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L}},{{-1L,-4L,0x20DD8B0EL,1L,0L,0xE59279D7L,0xBB389C6337962B1FL,-1L},{0x7D5AC8CFE953CFF5L,-4L,0x0B8726DDL,-4L,-1L,0UL,0xA5A7E5B790764872L,-2L},{0x326FDAAB49C6AE55L,0x4B15F4F7L,0x1D7A6BA7L,0x399C6124L,0x0EL,0x9AB5F15DL,0x3E085742EE506459L,0x03285A9660102FAFL},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L}},{{-1L,-4L,0x20DD8B0EL,1L,0L,0xE59279D7L,0xBB389C6337962B1FL,-1L},{0x7D5AC8CFE953CFF5L,-4L,0x0B8726DDL,-4L,-1L,0UL,0xA5A7E5B790764872L,-2L},{0x326FDAAB49C6AE55L,0x4B15F4F7L,0x1D7A6BA7L,0x399C6124L,0x0EL,0x9AB5F15DL,0x3E085742EE506459L,0x03285A9660102FAFL},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L}},{{-1L,-4L,0x20DD8B0EL,1L,0L,0xE59279D7L,0xBB389C6337962B1FL,-1L},{0x7D5AC8CFE953CFF5L,-4L,0x0B8726DDL,-4L,-1L,0UL,0xA5A7E5B790764872L,-2L},{0x326FDAAB49C6AE55L,0x4B15F4F7L,0x1D7A6BA7L,0x399C6124L,0x0EL,0x9AB5F15DL,0x3E085742EE506459L,0x03285A9660102FAFL},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L}}},{{{-1L,-4L,0x20DD8B0EL,1L,0L,0xE59279D7L,0xBB389C6337962B1FL,-1L},{0x7D5AC8CFE953CFF5L,-4L,0x0B8726DDL,-4L,-1L,0UL,0xA5A7E5B790764872L,-2L},{0x326FDAAB49C6AE55L,0x4B15F4F7L,0x1D7A6BA7L,0x399C6124L,0x0EL,0x9AB5F15DL,0x3E085742EE506459L,0x03285A9660102FAFL},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L}},{{-1L,-4L,0x20DD8B0EL,1L,0L,0xE59279D7L,0xBB389C6337962B1FL,-1L},{0x7D5AC8CFE953CFF5L,-4L,0x0B8726DDL,-4L,-1L,0UL,0xA5A7E5B790764872L,-2L},{0x326FDAAB49C6AE55L,0x4B15F4F7L,0x1D7A6BA7L,0x399C6124L,0x0EL,0x9AB5F15DL,0x3E085742EE506459L,0x03285A9660102FAFL},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L}},{{-1L,-4L,0x20DD8B0EL,1L,0L,0xE59279D7L,0xBB389C6337962B1FL,-1L},{0x7D5AC8CFE953CFF5L,-4L,0x0B8726DDL,-4L,-1L,0UL,0xA5A7E5B790764872L,-2L},{0x326FDAAB49C6AE55L,0x4B15F4F7L,0x1D7A6BA7L,0x399C6124L,0x0EL,0x9AB5F15DL,0x3E085742EE506459L,0x03285A9660102FAFL},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L}},{{-1L,-4L,0x20DD8B0EL,1L,0L,0xE59279D7L,0xBB389C6337962B1FL,-1L},{0x7D5AC8CFE953CFF5L,-4L,0x0B8726DDL,-4L,-1L,0UL,0xA5A7E5B790764872L,-2L},{0x326FDAAB49C6AE55L,0x4B15F4F7L,0x1D7A6BA7L,0x399C6124L,0x0EL,0x9AB5F15DL,0x3E085742EE506459L,0x03285A9660102FAFL},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L}},{{-1L,-4L,0x20DD8B0EL,1L,0L,0xE59279D7L,0xBB389C6337962B1FL,-1L},{0x7D5AC8CFE953CFF5L,-4L,0x0B8726DDL,-4L,-1L,0UL,0xA5A7E5B790764872L,-2L},{0x326FDAAB49C6AE55L,0x4B15F4F7L,0x1D7A6BA7L,0x399C6124L,0x0EL,0x9AB5F15DL,0x3E085742EE506459L,0x03285A9660102FAFL},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L}},{{-1L,-4L,0x20DD8B0EL,1L,0L,0xE59279D7L,0xBB389C6337962B1FL,-1L},{0x7D5AC8CFE953CFF5L,-4L,0x0B8726DDL,-4L,-1L,0UL,0xA5A7E5B790764872L,-2L},{0x326FDAAB49C6AE55L,0x4B15F4F7L,0x1D7A6BA7L,0x399C6124L,0x0EL,0x9AB5F15DL,0x3E085742EE506459L,0x03285A9660102FAFL},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L}}},{{{-1L,-4L,0x20DD8B0EL,1L,0L,0xE59279D7L,0xBB389C6337962B1FL,-1L},{0x7D5AC8CFE953CFF5L,-4L,0x0B8726DDL,-4L,-1L,0UL,0xA5A7E5B790764872L,-2L},{0x326FDAAB49C6AE55L,0x4B15F4F7L,0x1D7A6BA7L,0x399C6124L,0x0EL,0x9AB5F15DL,0x3E085742EE506459L,0x03285A9660102FAFL},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L}},{{-1L,-4L,0x20DD8B0EL,1L,0L,0xE59279D7L,0xBB389C6337962B1FL,-1L},{0x7D5AC8CFE953CFF5L,-4L,0x0B8726DDL,-4L,-1L,0UL,0xA5A7E5B790764872L,-2L},{0x326FDAAB49C6AE55L,0x4B15F4F7L,0x1D7A6BA7L,0x399C6124L,0x0EL,0x9AB5F15DL,0x3E085742EE506459L,0x03285A9660102FAFL},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L}},{{-1L,-4L,0x20DD8B0EL,1L,0L,0xE59279D7L,0xBB389C6337962B1FL,-1L},{0x7D5AC8CFE953CFF5L,-4L,0x0B8726DDL,-4L,-1L,0UL,0xA5A7E5B790764872L,-2L},{0x326FDAAB49C6AE55L,0x4B15F4F7L,0x1D7A6BA7L,0x399C6124L,0x0EL,0x9AB5F15DL,0x3E085742EE506459L,0x03285A9660102FAFL},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L}},{{-1L,-4L,0x20DD8B0EL,1L,0L,0xE59279D7L,0xBB389C6337962B1FL,-1L},{0x7D5AC8CFE953CFF5L,-4L,0x0B8726DDL,-4L,-1L,0UL,0xA5A7E5B790764872L,-2L},{0x326FDAAB49C6AE55L,0x4B15F4F7L,0x1D7A6BA7L,0x399C6124L,0x0EL,0x9AB5F15DL,0x3E085742EE506459L,0x03285A9660102FAFL},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L}},{{-1L,-4L,0x20DD8B0EL,1L,0L,0xE59279D7L,0xBB389C6337962B1FL,-1L},{0x7D5AC8CFE953CFF5L,-4L,0x0B8726DDL,-4L,-1L,0UL,0xA5A7E5B790764872L,-2L},{0x326FDAAB49C6AE55L,0x4B15F4F7L,0x1D7A6BA7L,0x399C6124L,0x0EL,0x9AB5F15DL,0x3E085742EE506459L,0x03285A9660102FAFL},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L}},{{-1L,-4L,0x20DD8B0EL,1L,0L,0xE59279D7L,0xBB389C6337962B1FL,-1L},{0x7D5AC8CFE953CFF5L,-4L,0x0B8726DDL,-4L,-1L,0UL,0xA5A7E5B790764872L,-2L},{0x326FDAAB49C6AE55L,0x4B15F4F7L,0x1D7A6BA7L,0x399C6124L,0x0EL,0x9AB5F15DL,0x3E085742EE506459L,0x03285A9660102FAFL},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L}}},{{{-1L,-4L,0x20DD8B0EL,1L,0L,0xE59279D7L,0xBB389C6337962B1FL,-1L},{0x7D5AC8CFE953CFF5L,-4L,0x0B8726DDL,-4L,-1L,0UL,0xA5A7E5B790764872L,-2L},{0x326FDAAB49C6AE55L,0x4B15F4F7L,0x1D7A6BA7L,0x399C6124L,0x0EL,0x9AB5F15DL,0x3E085742EE506459L,0x03285A9660102FAFL},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L}},{{-1L,-4L,0x20DD8B0EL,1L,0L,0xE59279D7L,0xBB389C6337962B1FL,-1L},{0x7D5AC8CFE953CFF5L,-4L,0x0B8726DDL,-4L,-1L,0UL,0xA5A7E5B790764872L,-2L},{0x326FDAAB49C6AE55L,0x4B15F4F7L,0x1D7A6BA7L,0x399C6124L,0x0EL,0x9AB5F15DL,0x3E085742EE506459L,0x03285A9660102FAFL},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L}},{{-1L,-4L,0x20DD8B0EL,1L,0L,0xE59279D7L,0xBB389C6337962B1FL,-1L},{0x7D5AC8CFE953CFF5L,-4L,0x0B8726DDL,-4L,-1L,0UL,0xA5A7E5B790764872L,-2L},{0x326FDAAB49C6AE55L,0x4B15F4F7L,0x1D7A6BA7L,0x399C6124L,0x0EL,0x9AB5F15DL,0x3E085742EE506459L,0x03285A9660102FAFL},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L}},{{-1L,-4L,0x20DD8B0EL,1L,0L,0xE59279D7L,0xBB389C6337962B1FL,-1L},{0x7D5AC8CFE953CFF5L,-4L,0x0B8726DDL,-4L,-1L,0UL,0xA5A7E5B790764872L,-2L},{0x326FDAAB49C6AE55L,0x4B15F4F7L,0x1D7A6BA7L,0x399C6124L,0x0EL,0x9AB5F15DL,0x3E085742EE506459L,0x03285A9660102FAFL},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L}},{{-1L,-4L,0x20DD8B0EL,1L,0L,0xE59279D7L,0xBB389C6337962B1FL,-1L},{0x7D5AC8CFE953CFF5L,-4L,0x0B8726DDL,-4L,-1L,0UL,0xA5A7E5B790764872L,-2L},{0x326FDAAB49C6AE55L,0x4B15F4F7L,0x1D7A6BA7L,0x399C6124L,0x0EL,0x9AB5F15DL,0x3E085742EE506459L,0x03285A9660102FAFL},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L}},{{-1L,-4L,0x20DD8B0EL,1L,0L,0xE59279D7L,0xBB389C6337962B1FL,-1L},{0x7D5AC8CFE953CFF5L,-4L,0x0B8726DDL,-4L,-1L,0UL,0xA5A7E5B790764872L,-2L},{0x326FDAAB49C6AE55L,0x4B15F4F7L,0x1D7A6BA7L,0x399C6124L,0x0EL,0x9AB5F15DL,0x3E085742EE506459L,0x03285A9660102FAFL},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{-7L,0x6B778DDEL,0x5181C573L,0L,0x17L,4294967295UL,18446744073709551614UL,0L},{4L,0x3E7CB03AL,0x0D22055AL,-10L,0x6FL,0x3BCE2607L,0xF15A80F2A40A62B4L,0x3B3C29A087F769C6L}}}}, // p_549->g_234
        &p_549->g_234[0][2][6], // p_549->g_233
        &p_549->g_206, // p_549->g_235
        0xF320L, // p_549->g_274
        (-6L), // p_549->g_282
        (void*)0, // p_549->g_287
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_549->g_289
        (void*)0, // p_549->g_290
        (void*)0, // p_549->g_292
        (VECTOR(uint32_t, 8))(0x74566042L, (VECTOR(uint32_t, 4))(0x74566042L, (VECTOR(uint32_t, 2))(0x74566042L, 1UL), 1UL), 1UL, 0x74566042L, 1UL), // p_549->g_298
        {0xFFBAL,0x1FCC4563L,-8L,0x28L}, // p_549->g_305
        (VECTOR(uint16_t, 16))(65530UL, (VECTOR(uint16_t, 4))(65530UL, (VECTOR(uint16_t, 2))(65530UL, 0xA01CL), 0xA01CL), 0xA01CL, 65530UL, 0xA01CL, (VECTOR(uint16_t, 2))(65530UL, 0xA01CL), (VECTOR(uint16_t, 2))(65530UL, 0xA01CL), 65530UL, 0xA01CL, 65530UL, 0xA01CL), // p_549->g_313
        &p_549->g_206, // p_549->g_315
        (VECTOR(uint32_t, 2))(0x4C69E78CL, 0x902AD9D1L), // p_549->g_344
        (VECTOR(uint32_t, 8))(0x1FA573F7L, (VECTOR(uint32_t, 4))(0x1FA573F7L, (VECTOR(uint32_t, 2))(0x1FA573F7L, 0xF6A5CFFBL), 0xF6A5CFFBL), 0xF6A5CFFBL, 0x1FA573F7L, 0xF6A5CFFBL), // p_549->g_349
        (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL), // p_549->g_353
        (-3L), // p_549->g_355
        (VECTOR(int16_t, 4))(0x4AA1L, (VECTOR(int16_t, 2))(0x4AA1L, 0x3F3FL), 0x3F3FL), // p_549->g_358
        {8UL,0x1D447F52L,0x627BL,0xCAL}, // p_549->g_366
        &p_549->g_366, // p_549->g_368
        &p_549->g_368, // p_549->g_367
        {0xCC1CL,4294967295UL,0x66E7L,255UL}, // p_549->g_391
        (void*)0, // p_549->g_401
        {4294967292UL,4294967292UL}, // p_549->g_407
        &p_549->g_206, // p_549->g_429
        {{0L,0L,0L,0x7BB31E24L,0x52L,0x9E56555DL,0x97B6B4C02552CB83L,0x16DEEFA72679D072L},{0L,0L,0L,0x7BB31E24L,0x52L,0x9E56555DL,0x97B6B4C02552CB83L,0x16DEEFA72679D072L},{0L,0L,0L,0x7BB31E24L,0x52L,0x9E56555DL,0x97B6B4C02552CB83L,0x16DEEFA72679D072L},{0L,0L,0L,0x7BB31E24L,0x52L,0x9E56555DL,0x97B6B4C02552CB83L,0x16DEEFA72679D072L},{0L,0L,0L,0x7BB31E24L,0x52L,0x9E56555DL,0x97B6B4C02552CB83L,0x16DEEFA72679D072L},{0L,0L,0L,0x7BB31E24L,0x52L,0x9E56555DL,0x97B6B4C02552CB83L,0x16DEEFA72679D072L},{0L,0L,0L,0x7BB31E24L,0x52L,0x9E56555DL,0x97B6B4C02552CB83L,0x16DEEFA72679D072L},{0L,0L,0L,0x7BB31E24L,0x52L,0x9E56555DL,0x97B6B4C02552CB83L,0x16DEEFA72679D072L}}, // p_549->g_454
        (VECTOR(uint16_t, 2))(0xE4DDL, 0xA657L), // p_549->g_484
        (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x0F6EED0CL), 0x0F6EED0CL), 0x0F6EED0CL, (-1L), 0x0F6EED0CL), // p_549->g_499
        0x27L, // p_549->g_506
        {3UL,4294967293UL,4L,0x95L}, // p_549->g_510
        {65526UL,0xBA2A5DFBL,0x7B15L,0UL}, // p_549->g_511
        {0x0FCFL,0xA06B26CDL,0x3A03L,247UL}, // p_549->g_520
        {{{{1UL,0xC2234C05L,0x74D4L,0x99L},{1UL,0xA7E612C9L,7L,0x4AL},{0x2920L,4294967295UL,0x43A8L,9UL},{0UL,4294967287UL,0x0621L,9UL},{0x2920L,4294967295UL,0x43A8L,9UL},{1UL,0xA7E612C9L,7L,0x4AL},{1UL,0xC2234C05L,0x74D4L,0x99L},{4UL,0x88BF647CL,0x6178L,2UL},{0xF3F8L,4294967293UL,1L,0xECL},{0xF3F8L,4294967293UL,1L,0xECL}}},{{{1UL,0xC2234C05L,0x74D4L,0x99L},{1UL,0xA7E612C9L,7L,0x4AL},{0x2920L,4294967295UL,0x43A8L,9UL},{0UL,4294967287UL,0x0621L,9UL},{0x2920L,4294967295UL,0x43A8L,9UL},{1UL,0xA7E612C9L,7L,0x4AL},{1UL,0xC2234C05L,0x74D4L,0x99L},{4UL,0x88BF647CL,0x6178L,2UL},{0xF3F8L,4294967293UL,1L,0xECL},{0xF3F8L,4294967293UL,1L,0xECL}}},{{{1UL,0xC2234C05L,0x74D4L,0x99L},{1UL,0xA7E612C9L,7L,0x4AL},{0x2920L,4294967295UL,0x43A8L,9UL},{0UL,4294967287UL,0x0621L,9UL},{0x2920L,4294967295UL,0x43A8L,9UL},{1UL,0xA7E612C9L,7L,0x4AL},{1UL,0xC2234C05L,0x74D4L,0x99L},{4UL,0x88BF647CL,0x6178L,2UL},{0xF3F8L,4294967293UL,1L,0xECL},{0xF3F8L,4294967293UL,1L,0xECL}}}}, // p_549->g_523
        {0x6AF60B264D6A4092L,0L,0x7D99EB68L,-4L,0x2DL,0UL,0xE0A33152A2FFA938L,3L}, // p_549->g_532
        (VECTOR(int32_t, 2))(1L, 0x4CB1D834L), // p_549->g_546
        0, // p_549->v_collective
        sequence_input[get_global_id(0)], // p_549->global_0_offset
        sequence_input[get_global_id(1)], // p_549->global_1_offset
        sequence_input[get_global_id(2)], // p_549->global_2_offset
        sequence_input[get_local_id(0)], // p_549->local_0_offset
        sequence_input[get_local_id(1)], // p_549->local_1_offset
        sequence_input[get_local_id(2)], // p_549->local_2_offset
        sequence_input[get_group_id(0)], // p_549->group_0_offset
        sequence_input[get_group_id(1)], // p_549->group_1_offset
        sequence_input[get_group_id(2)], // p_549->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 2)), permutations[0][get_linear_local_id()])), // p_549->tid
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_550 = c_551;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_549);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_549->g_6, "p_549->g_6", print_hash_value);
    transparent_crc(p_549->g_11, "p_549->g_11", print_hash_value);
    transparent_crc(p_549->g_36, "p_549->g_36", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_549->g_45[i], "p_549->g_45[i]", print_hash_value);

    }
    transparent_crc(p_549->g_47, "p_549->g_47", print_hash_value);
    transparent_crc(p_549->g_81, "p_549->g_81", print_hash_value);
    transparent_crc(p_549->g_83, "p_549->g_83", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_549->g_97[i][j][k], "p_549->g_97[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_549->g_123.x, "p_549->g_123.x", print_hash_value);
    transparent_crc(p_549->g_123.y, "p_549->g_123.y", print_hash_value);
    transparent_crc(p_549->g_123.z, "p_549->g_123.z", print_hash_value);
    transparent_crc(p_549->g_123.w, "p_549->g_123.w", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_549->g_136[i], "p_549->g_136[i]", print_hash_value);

    }
    transparent_crc(p_549->g_154, "p_549->g_154", print_hash_value);
    transparent_crc(p_549->g_179.s0, "p_549->g_179.s0", print_hash_value);
    transparent_crc(p_549->g_179.s1, "p_549->g_179.s1", print_hash_value);
    transparent_crc(p_549->g_179.s2, "p_549->g_179.s2", print_hash_value);
    transparent_crc(p_549->g_179.s3, "p_549->g_179.s3", print_hash_value);
    transparent_crc(p_549->g_179.s4, "p_549->g_179.s4", print_hash_value);
    transparent_crc(p_549->g_179.s5, "p_549->g_179.s5", print_hash_value);
    transparent_crc(p_549->g_179.s6, "p_549->g_179.s6", print_hash_value);
    transparent_crc(p_549->g_179.s7, "p_549->g_179.s7", print_hash_value);
    transparent_crc(p_549->g_179.s8, "p_549->g_179.s8", print_hash_value);
    transparent_crc(p_549->g_179.s9, "p_549->g_179.s9", print_hash_value);
    transparent_crc(p_549->g_179.sa, "p_549->g_179.sa", print_hash_value);
    transparent_crc(p_549->g_179.sb, "p_549->g_179.sb", print_hash_value);
    transparent_crc(p_549->g_179.sc, "p_549->g_179.sc", print_hash_value);
    transparent_crc(p_549->g_179.sd, "p_549->g_179.sd", print_hash_value);
    transparent_crc(p_549->g_179.se, "p_549->g_179.se", print_hash_value);
    transparent_crc(p_549->g_179.sf, "p_549->g_179.sf", print_hash_value);
    transparent_crc(p_549->g_190, "p_549->g_190", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_549->g_234[i][j][k].f0, "p_549->g_234[i][j][k].f0", print_hash_value);
                transparent_crc(p_549->g_234[i][j][k].f1, "p_549->g_234[i][j][k].f1", print_hash_value);
                transparent_crc(p_549->g_234[i][j][k].f2, "p_549->g_234[i][j][k].f2", print_hash_value);
                transparent_crc(p_549->g_234[i][j][k].f3, "p_549->g_234[i][j][k].f3", print_hash_value);
                transparent_crc(p_549->g_234[i][j][k].f4, "p_549->g_234[i][j][k].f4", print_hash_value);
                transparent_crc(p_549->g_234[i][j][k].f5, "p_549->g_234[i][j][k].f5", print_hash_value);
                transparent_crc(p_549->g_234[i][j][k].f6, "p_549->g_234[i][j][k].f6", print_hash_value);
                transparent_crc(p_549->g_234[i][j][k].f7, "p_549->g_234[i][j][k].f7", print_hash_value);

            }
        }
    }
    transparent_crc(p_549->g_274, "p_549->g_274", print_hash_value);
    transparent_crc(p_549->g_282, "p_549->g_282", print_hash_value);
    transparent_crc(p_549->g_298.s0, "p_549->g_298.s0", print_hash_value);
    transparent_crc(p_549->g_298.s1, "p_549->g_298.s1", print_hash_value);
    transparent_crc(p_549->g_298.s2, "p_549->g_298.s2", print_hash_value);
    transparent_crc(p_549->g_298.s3, "p_549->g_298.s3", print_hash_value);
    transparent_crc(p_549->g_298.s4, "p_549->g_298.s4", print_hash_value);
    transparent_crc(p_549->g_298.s5, "p_549->g_298.s5", print_hash_value);
    transparent_crc(p_549->g_298.s6, "p_549->g_298.s6", print_hash_value);
    transparent_crc(p_549->g_298.s7, "p_549->g_298.s7", print_hash_value);
    transparent_crc(p_549->g_305.f0, "p_549->g_305.f0", print_hash_value);
    transparent_crc(p_549->g_305.f1, "p_549->g_305.f1", print_hash_value);
    transparent_crc(p_549->g_305.f2, "p_549->g_305.f2", print_hash_value);
    transparent_crc(p_549->g_305.f3, "p_549->g_305.f3", print_hash_value);
    transparent_crc(p_549->g_313.s0, "p_549->g_313.s0", print_hash_value);
    transparent_crc(p_549->g_313.s1, "p_549->g_313.s1", print_hash_value);
    transparent_crc(p_549->g_313.s2, "p_549->g_313.s2", print_hash_value);
    transparent_crc(p_549->g_313.s3, "p_549->g_313.s3", print_hash_value);
    transparent_crc(p_549->g_313.s4, "p_549->g_313.s4", print_hash_value);
    transparent_crc(p_549->g_313.s5, "p_549->g_313.s5", print_hash_value);
    transparent_crc(p_549->g_313.s6, "p_549->g_313.s6", print_hash_value);
    transparent_crc(p_549->g_313.s7, "p_549->g_313.s7", print_hash_value);
    transparent_crc(p_549->g_313.s8, "p_549->g_313.s8", print_hash_value);
    transparent_crc(p_549->g_313.s9, "p_549->g_313.s9", print_hash_value);
    transparent_crc(p_549->g_313.sa, "p_549->g_313.sa", print_hash_value);
    transparent_crc(p_549->g_313.sb, "p_549->g_313.sb", print_hash_value);
    transparent_crc(p_549->g_313.sc, "p_549->g_313.sc", print_hash_value);
    transparent_crc(p_549->g_313.sd, "p_549->g_313.sd", print_hash_value);
    transparent_crc(p_549->g_313.se, "p_549->g_313.se", print_hash_value);
    transparent_crc(p_549->g_313.sf, "p_549->g_313.sf", print_hash_value);
    transparent_crc(p_549->g_344.x, "p_549->g_344.x", print_hash_value);
    transparent_crc(p_549->g_344.y, "p_549->g_344.y", print_hash_value);
    transparent_crc(p_549->g_349.s0, "p_549->g_349.s0", print_hash_value);
    transparent_crc(p_549->g_349.s1, "p_549->g_349.s1", print_hash_value);
    transparent_crc(p_549->g_349.s2, "p_549->g_349.s2", print_hash_value);
    transparent_crc(p_549->g_349.s3, "p_549->g_349.s3", print_hash_value);
    transparent_crc(p_549->g_349.s4, "p_549->g_349.s4", print_hash_value);
    transparent_crc(p_549->g_349.s5, "p_549->g_349.s5", print_hash_value);
    transparent_crc(p_549->g_349.s6, "p_549->g_349.s6", print_hash_value);
    transparent_crc(p_549->g_349.s7, "p_549->g_349.s7", print_hash_value);
    transparent_crc(p_549->g_353.s0, "p_549->g_353.s0", print_hash_value);
    transparent_crc(p_549->g_353.s1, "p_549->g_353.s1", print_hash_value);
    transparent_crc(p_549->g_353.s2, "p_549->g_353.s2", print_hash_value);
    transparent_crc(p_549->g_353.s3, "p_549->g_353.s3", print_hash_value);
    transparent_crc(p_549->g_353.s4, "p_549->g_353.s4", print_hash_value);
    transparent_crc(p_549->g_353.s5, "p_549->g_353.s5", print_hash_value);
    transparent_crc(p_549->g_353.s6, "p_549->g_353.s6", print_hash_value);
    transparent_crc(p_549->g_353.s7, "p_549->g_353.s7", print_hash_value);
    transparent_crc(p_549->g_355, "p_549->g_355", print_hash_value);
    transparent_crc(p_549->g_358.x, "p_549->g_358.x", print_hash_value);
    transparent_crc(p_549->g_358.y, "p_549->g_358.y", print_hash_value);
    transparent_crc(p_549->g_358.z, "p_549->g_358.z", print_hash_value);
    transparent_crc(p_549->g_358.w, "p_549->g_358.w", print_hash_value);
    transparent_crc(p_549->g_366.f0, "p_549->g_366.f0", print_hash_value);
    transparent_crc(p_549->g_366.f1, "p_549->g_366.f1", print_hash_value);
    transparent_crc(p_549->g_366.f2, "p_549->g_366.f2", print_hash_value);
    transparent_crc(p_549->g_366.f3, "p_549->g_366.f3", print_hash_value);
    transparent_crc(p_549->g_391.f0, "p_549->g_391.f0", print_hash_value);
    transparent_crc(p_549->g_391.f1, "p_549->g_391.f1", print_hash_value);
    transparent_crc(p_549->g_391.f2, "p_549->g_391.f2", print_hash_value);
    transparent_crc(p_549->g_391.f3, "p_549->g_391.f3", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_549->g_407[i], "p_549->g_407[i]", print_hash_value);

    }
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_549->g_454[i].f0, "p_549->g_454[i].f0", print_hash_value);
        transparent_crc(p_549->g_454[i].f1, "p_549->g_454[i].f1", print_hash_value);
        transparent_crc(p_549->g_454[i].f2, "p_549->g_454[i].f2", print_hash_value);
        transparent_crc(p_549->g_454[i].f3, "p_549->g_454[i].f3", print_hash_value);
        transparent_crc(p_549->g_454[i].f4, "p_549->g_454[i].f4", print_hash_value);
        transparent_crc(p_549->g_454[i].f5, "p_549->g_454[i].f5", print_hash_value);
        transparent_crc(p_549->g_454[i].f6, "p_549->g_454[i].f6", print_hash_value);
        transparent_crc(p_549->g_454[i].f7, "p_549->g_454[i].f7", print_hash_value);

    }
    transparent_crc(p_549->g_484.x, "p_549->g_484.x", print_hash_value);
    transparent_crc(p_549->g_484.y, "p_549->g_484.y", print_hash_value);
    transparent_crc(p_549->g_499.s0, "p_549->g_499.s0", print_hash_value);
    transparent_crc(p_549->g_499.s1, "p_549->g_499.s1", print_hash_value);
    transparent_crc(p_549->g_499.s2, "p_549->g_499.s2", print_hash_value);
    transparent_crc(p_549->g_499.s3, "p_549->g_499.s3", print_hash_value);
    transparent_crc(p_549->g_499.s4, "p_549->g_499.s4", print_hash_value);
    transparent_crc(p_549->g_499.s5, "p_549->g_499.s5", print_hash_value);
    transparent_crc(p_549->g_499.s6, "p_549->g_499.s6", print_hash_value);
    transparent_crc(p_549->g_499.s7, "p_549->g_499.s7", print_hash_value);
    transparent_crc(p_549->g_506, "p_549->g_506", print_hash_value);
    transparent_crc(p_549->g_510.f0, "p_549->g_510.f0", print_hash_value);
    transparent_crc(p_549->g_510.f1, "p_549->g_510.f1", print_hash_value);
    transparent_crc(p_549->g_510.f2, "p_549->g_510.f2", print_hash_value);
    transparent_crc(p_549->g_510.f3, "p_549->g_510.f3", print_hash_value);
    transparent_crc(p_549->g_511.f0, "p_549->g_511.f0", print_hash_value);
    transparent_crc(p_549->g_511.f1, "p_549->g_511.f1", print_hash_value);
    transparent_crc(p_549->g_511.f2, "p_549->g_511.f2", print_hash_value);
    transparent_crc(p_549->g_511.f3, "p_549->g_511.f3", print_hash_value);
    transparent_crc(p_549->g_520.f0, "p_549->g_520.f0", print_hash_value);
    transparent_crc(p_549->g_520.f1, "p_549->g_520.f1", print_hash_value);
    transparent_crc(p_549->g_520.f2, "p_549->g_520.f2", print_hash_value);
    transparent_crc(p_549->g_520.f3, "p_549->g_520.f3", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 10; k++)
            {
                transparent_crc(p_549->g_523[i][j][k].f0, "p_549->g_523[i][j][k].f0", print_hash_value);
                transparent_crc(p_549->g_523[i][j][k].f1, "p_549->g_523[i][j][k].f1", print_hash_value);
                transparent_crc(p_549->g_523[i][j][k].f2, "p_549->g_523[i][j][k].f2", print_hash_value);
                transparent_crc(p_549->g_523[i][j][k].f3, "p_549->g_523[i][j][k].f3", print_hash_value);

            }
        }
    }
    transparent_crc(p_549->g_532.f0, "p_549->g_532.f0", print_hash_value);
    transparent_crc(p_549->g_532.f1, "p_549->g_532.f1", print_hash_value);
    transparent_crc(p_549->g_532.f2, "p_549->g_532.f2", print_hash_value);
    transparent_crc(p_549->g_532.f3, "p_549->g_532.f3", print_hash_value);
    transparent_crc(p_549->g_532.f4, "p_549->g_532.f4", print_hash_value);
    transparent_crc(p_549->g_532.f5, "p_549->g_532.f5", print_hash_value);
    transparent_crc(p_549->g_532.f6, "p_549->g_532.f6", print_hash_value);
    transparent_crc(p_549->g_532.f7, "p_549->g_532.f7", print_hash_value);
    transparent_crc(p_549->g_546.x, "p_549->g_546.x", print_hash_value);
    transparent_crc(p_549->g_546.y, "p_549->g_546.y", print_hash_value);
    transparent_crc(p_549->v_collective, "p_549->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 75; i++)
            transparent_crc(p_549->g_special_values[i + 75 * get_linear_group_id()], "p_549->g_special_values[i + 75 * get_linear_group_id()]", print_hash_value);
    transparent_crc(p_549->l_comm_values[get_linear_local_id()], "p_549->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_549->g_comm_values[get_linear_group_id() * 2 + get_linear_local_id()], "p_549->g_comm_values[get_linear_group_id() * 2 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
