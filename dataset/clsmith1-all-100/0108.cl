// --atomics 4 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 1,47,77 -l 1,1,1
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

__constant uint32_t permutations[10][1] = {
{0}, // permutation 0
{0}, // permutation 1
{0}, // permutation 2
{0}, // permutation 3
{0}, // permutation 4
{0}, // permutation 5
{0}, // permutation 6
{0}, // permutation 7
{0}, // permutation 8
{0} // permutation 9
};

// Seed: 108

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_2;
    int64_t g_30;
    volatile uint64_t g_40;
    volatile VECTOR(int16_t, 2) g_59;
    VECTOR(int16_t, 16) g_67;
    VECTOR(int32_t, 2) g_80;
    uint32_t g_81;
    uint8_t g_88;
    VECTOR(int16_t, 4) g_89;
    VECTOR(uint32_t, 2) g_144;
    int32_t *g_149[8];
    uint8_t g_157;
    uint64_t g_162;
    int32_t ** volatile g_169;
    volatile int16_t * volatile g_181;
    volatile VECTOR(int32_t, 8) g_191;
    uint32_t g_202;
    volatile VECTOR(uint16_t, 16) g_214;
    uint16_t g_217;
    int32_t *g_263;
    int32_t ** volatile g_266;
    uint32_t *g_271;
    uint32_t **g_270;
    volatile VECTOR(int16_t, 8) g_274;
    VECTOR(int64_t, 2) g_277;
    VECTOR(int64_t, 16) g_292;
    volatile VECTOR(int16_t, 16) g_295;
    VECTOR(uint16_t, 2) g_296;
    int32_t * volatile g_300;
    volatile VECTOR(uint8_t, 2) g_326;
    int16_t *g_342;
    VECTOR(uint64_t, 8) g_355;
    volatile VECTOR(uint64_t, 2) g_363;
    VECTOR(int8_t, 8) g_364;
    uint8_t * volatile g_377;
    uint8_t * volatile * volatile g_376[1];
    VECTOR(int16_t, 8) g_454;
    volatile VECTOR(int16_t, 2) g_455;
    VECTOR(uint8_t, 16) g_463;
    VECTOR(int16_t, 8) g_468;
    volatile VECTOR(uint8_t, 8) g_490;
    volatile VECTOR(uint8_t, 2) g_492;
    VECTOR(uint16_t, 16) g_505;
    int8_t g_507;
    uint8_t g_512;
    VECTOR(uint8_t, 16) g_521;
    VECTOR(int8_t, 16) g_526;
    volatile uint8_t g_539;
    volatile uint8_t *g_538[2];
    volatile uint8_t **g_537[2][10][1];
    VECTOR(uint8_t, 4) g_542;
    VECTOR(uint64_t, 16) g_549;
    volatile VECTOR(uint64_t, 8) g_550;
    int8_t g_552;
    VECTOR(uint8_t, 16) g_556;
    VECTOR(int64_t, 4) g_557;
    volatile VECTOR(int8_t, 16) g_589;
    int32_t ** volatile g_604;
    int32_t ** volatile g_612[5][2][10];
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
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
uint8_t  func_1(struct S0 * p_614);
int32_t * func_6(uint64_t  p_7, int32_t * p_8, uint32_t  p_9, int32_t * p_10, struct S0 * p_614);
uint64_t  func_11(int64_t  p_12, int32_t * p_13, struct S0 * p_614);
int32_t * func_16(uint32_t  p_17, int32_t  p_18, int16_t  p_19, uint8_t  p_20, int32_t * p_21, struct S0 * p_614);
int8_t  func_24(int64_t  p_25, struct S0 * p_614);
int32_t * func_43(uint8_t  p_44, int8_t  p_45, struct S0 * p_614);
int64_t * func_70(int32_t  p_71, int8_t  p_72, int32_t * p_73, uint32_t  p_74, int32_t  p_75, struct S0 * p_614);
int32_t  func_76(uint32_t  p_77, int16_t * p_78, int32_t * p_79, struct S0 * p_614);
int32_t * func_111(uint16_t  p_112, struct S0 * p_614);
uint16_t  func_115(int64_t * p_116, struct S0 * p_614);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_614->g_2 p_614->g_comm_values p_614->l_comm_values p_614->g_30 p_614->g_40 p_614->g_59 p_614->g_80 p_614->g_81 p_614->g_89 p_614->g_67 p_614->g_88 p_614->g_144 p_614->g_149 p_614->g_157 p_614->g_162 p_614->g_181 p_614->g_191 p_614->g_202 p_614->g_214 p_614->g_263 p_614->g_266 p_614->g_270 p_614->g_274 p_614->g_277 p_614->g_292 p_614->g_295 p_614->g_296 p_614->g_300 p_614->g_342 p_614->g_355 p_614->g_363 p_614->g_364 p_614->g_376 p_614->g_454 p_614->g_455 p_614->g_468 p_614->g_490 p_614->g_492 p_614->g_505 p_614->g_512 p_614->g_521 p_614->g_526 p_614->g_537 p_614->g_542 p_614->g_549 p_614->g_550 p_614->g_552 p_614->g_556 p_614->g_557 p_614->g_271 p_614->g_589 p_614->g_604 p_614->g_377
 * writes: p_614->g_2 p_614->g_30 p_614->g_40 p_614->g_81 p_614->g_144 p_614->g_149 p_614->g_157 p_614->g_162 p_614->g_67 p_614->g_comm_values p_614->g_88 p_614->g_202 p_614->g_89 p_614->g_342 p_614->g_364 p_614->g_463 p_614->g_296 p_614->g_507 p_614->g_512 p_614->g_521 p_614->g_355 p_614->g_277
 */
uint8_t  func_1(struct S0 * p_614)
{ /* block id: 4 */
    int32_t l_5 = 0x6580849FL;
    int64_t *l_29[6] = {&p_614->g_30,&p_614->g_30,&p_614->g_30,&p_614->g_30,&p_614->g_30,&p_614->g_30};
    int32_t *l_600 = &p_614->g_2;
    uint64_t *l_610 = &p_614->g_162;
    int32_t **l_611 = &p_614->g_149[1];
    int32_t **l_613 = &l_600;
    int i;
    for (p_614->g_2 = (-24); (p_614->g_2 >= (-28)); p_614->g_2--)
    { /* block id: 7 */
        if (l_5)
            break;
    }
    l_600 = func_6(func_11((safe_add_func_uint8_t_u_u(l_5, l_5)), func_16((p_614->g_comm_values[p_614->tid] & 0L), (((l_5 == p_614->l_comm_values[(safe_mod_func_uint32_t_u_u(p_614->tid, 1))]) <= ((p_614->g_30 ^= (safe_sub_func_int8_t_s_s(func_24(p_614->g_2, p_614), 0xDFL))) >= p_614->g_2)) , 0x63523E24L), l_5, p_614->g_comm_values[p_614->tid], &l_5, p_614), p_614), p_614->g_263, p_614->g_292.s3, p_614->g_271, p_614);
    for (p_614->g_202 = (-27); (p_614->g_202 == 28); ++p_614->g_202)
    { /* block id: 242 */
        int64_t l_603 = (-1L);
        int32_t l_605 = 0x589D411EL;
        int32_t **l_606 = (void*)0;
        int32_t **l_607 = &p_614->g_149[3];
        (*p_614->g_604) = &p_614->g_2;
        (*p_614->g_300) = (l_605 = (((void*)0 != &p_614->g_342) != p_614->g_542.w));
        (*l_607) = &l_605;
    }
    (*l_613) = ((*l_611) = func_6((safe_sub_func_int64_t_s_s(l_5, (~((*l_610) |= 0x32E9C1F4ECCB2CEBL)))), &l_5, p_614->g_526.s5, ((*l_611) = func_111(p_614->g_144.y, p_614)), p_614));
    return (*p_614->g_377);
}


/* ------------------------------------------ */
/* 
 * reads : p_614->g_144 p_614->g_589 p_614->g_364
 * writes: p_614->g_144
 */
int32_t * func_6(uint64_t  p_7, int32_t * p_8, uint32_t  p_9, int32_t * p_10, struct S0 * p_614)
{ /* block id: 231 */
    uint8_t *l_565 = (void*)0;
    uint8_t **l_564 = &l_565;
    uint8_t ***l_563[1][5][6] = {{{&l_564,&l_564,&l_564,&l_564,(void*)0,&l_564},{&l_564,&l_564,&l_564,&l_564,(void*)0,&l_564},{&l_564,&l_564,&l_564,&l_564,(void*)0,&l_564},{&l_564,&l_564,&l_564,&l_564,(void*)0,&l_564},{&l_564,&l_564,&l_564,&l_564,(void*)0,&l_564}}};
    uint16_t l_576 = 0xC8E2L;
    int32_t l_579 = 0x766290F7L;
    uint32_t *l_580 = (void*)0;
    uint32_t *l_581 = (void*)0;
    uint32_t *l_582[6];
    int32_t l_583 = 1L;
    int32_t l_584 = 0L;
    int32_t l_585 = 0x118B52A9L;
    int32_t l_586[8] = {0x4E487313L,0x3C55DD0FL,0x4E487313L,0x4E487313L,0x3C55DD0FL,0x4E487313L,0x4E487313L,0x3C55DD0FL};
    int16_t *l_592 = (void*)0;
    uint64_t *l_597 = (void*)0;
    uint64_t *l_598[7];
    int8_t *l_599 = (void*)0;
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_582[i] = (void*)0;
    for (i = 0; i < 7; i++)
        l_598[i] = &p_614->g_162;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    p_614->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 1)), permutations[(safe_mod_func_uint32_t_u_u((((&p_614->g_376[0] != l_563[0][2][4]) , ((safe_mod_func_int8_t_s_s((l_586[4] = (safe_rshift_func_int8_t_s_u((safe_mul_func_uint8_t_u_u((((p_7 <= ((safe_sub_func_uint32_t_u_u(((safe_mul_func_uint16_t_u_u(p_7, l_576)) >= 0x2734AEC9A877E7A4L), ((safe_add_func_uint32_t_u_u((--p_614->g_144.y), (((((l_584 &= ((((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(p_614->g_589.sea)).yyxx)).y > (safe_mul_func_int16_t_s_s(((l_592 == (void*)0) | (safe_sub_func_uint64_t_u_u((safe_rshift_func_int8_t_s_u(p_9, GROUP_DIVERGE(2, 1))), 0x02BB4D5D8457D2EDL))), 0x5F1DL))) && l_586[4])) || 0x633B19F4F24FA83CL) , l_586[4]) < l_583) < p_7))) > l_586[4]))) & GROUP_DIVERGE(0, 1))) != p_614->g_364.s6) , 0x7AL), p_9)), 2))), 5UL)) || l_579)) < l_583), 10))][(safe_mod_func_uint32_t_u_u(p_614->tid, 1))]));
    return p_8;
}


/* ------------------------------------------ */
/* 
 * reads : p_614->g_526 p_614->g_191 p_614->g_521 p_614->g_537 p_614->g_542 p_614->g_454 p_614->g_468 p_614->l_comm_values p_614->g_2 p_614->g_549 p_614->g_550 p_614->g_552 p_614->g_556 p_614->g_557 p_614->g_364 p_614->g_30
 * writes: p_614->g_521 p_614->g_162 p_614->g_355 p_614->g_2 p_614->g_30 p_614->g_277
 */
uint64_t  func_11(int64_t  p_12, int32_t * p_13, struct S0 * p_614)
{ /* block id: 216 */
    uint8_t *l_527[9][9][3] = {{{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0}},{{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0}},{{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0}},{{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0}},{{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0}},{{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0}},{{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0}},{{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0}},{{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0},{(void*)0,&p_614->g_88,(void*)0}}};
    int32_t l_528 = (-2L);
    int32_t l_529 = 0x109E7783L;
    int32_t l_530 = 1L;
    int32_t l_531 = 0x424E3349L;
    uint64_t *l_536 = &p_614->g_162;
    uint64_t *l_545 = (void*)0;
    uint64_t *l_546[7][5][7] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    VECTOR(uint64_t, 8) l_551 = (VECTOR(uint64_t, 8))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x7A90D696C140D1A4L), 0x7A90D696C140D1A4L), 0x7A90D696C140D1A4L, 18446744073709551615UL, 0x7A90D696C140D1A4L);
    VECTOR(uint16_t, 8) l_553 = (VECTOR(uint16_t, 8))(65534UL, (VECTOR(uint16_t, 4))(65534UL, (VECTOR(uint16_t, 2))(65534UL, 65529UL), 65529UL), 65529UL, 65534UL, 65529UL);
    int64_t *l_558 = (void*)0;
    int64_t *l_559 = &p_614->g_30;
    VECTOR(uint16_t, 8) l_560 = (VECTOR(uint16_t, 8))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 65535UL), 65535UL), 65535UL, 65535UL, 65535UL);
    uint16_t *l_561[4][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int32_t l_562 = 0x38740C67L;
    int i, j, k;
    (*p_13) = ((((*l_536) = ((safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 8))(p_614->g_526.s006a4fe9)).s6, 7)) , (p_614->g_191.s1 == ((--p_614->g_521.s5) >= (safe_add_func_int32_t_s_s((((VECTOR(uint32_t, 2))(0xA9D49C7AL, 0UL)).hi == 0UL), l_531)))))) == (+l_529)) == (18446744073709551608UL != (p_614->g_355.s3 = ((((p_614->g_537[1][6][0] == &p_614->g_538[0]) || ((safe_mul_func_uint16_t_u_u((((((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(p_614->g_542.yx)), 0UL, 0x7FL)).w ^ 0x48L) || ((safe_add_func_uint16_t_u_u(((p_614->g_454.s1 >= p_12) < l_528), p_12)) <= p_614->g_468.s6)) >= p_12), l_531)) <= p_614->l_comm_values[(safe_mod_func_uint32_t_u_u(p_614->tid, 1))])) ^ p_12) | (-3L)))));
    (*p_13) &= 1L;
    l_562 |= ((*p_13) = (FAKE_DIVERGE(p_614->group_0_offset, get_group_id(0), 10) == (~(safe_div_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(0xFA75744DADD26C43L, 7UL, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(p_614->g_549.s0d84a43f)).s66)), 0x919B90891930A0A9L, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(p_614->g_550.s5743)).odd)), GROUP_DIVERGE(1, 1), 18446744073709551615UL, ((VECTOR(uint64_t, 2))(l_551.s72)), ((VECTOR(uint64_t, 4))(0x2125BFBDB023CA39L, (FAKE_DIVERGE(p_614->group_2_offset, get_group_id(2), 10) | (l_530 = ((l_528 = 0xBD35DEEAL) <= p_614->g_552))), 0xDE775A58B1BDCE53L, 0x3435E34954C56B66L)), 0xDC6B3B71F17BE4AFL)).s9, ((l_529 = (p_12 , ((VECTOR(uint16_t, 16))(mad_sat(((VECTOR(uint16_t, 2))(l_553.s03)).xxyyyxyyyxyyyyyx, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(sub_sat(((VECTOR(uint16_t, 4))(65526UL, (safe_lshift_func_uint8_t_u_s((l_531 = ((VECTOR(uint8_t, 8))(rhadd(((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 2))(p_614->g_556.s6f))))).yyxyxxxx, ((VECTOR(uint8_t, 4))(0x57L, (((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(p_614->g_557.wywzywyw)).s60)))).odd | (p_614->g_277.x = ((*l_559) &= (p_614->g_364.s2 & l_531)))), 0xA1L, 248UL)).wxzzwxwy))).s4), 2)), 65535UL, 0UL)).odd, ((VECTOR(uint16_t, 8))(l_560.s77540240)).s47))), 2UL, 0x7D91L)).zzyzywyzzwwwzxzw, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(0x6AA5L, 65532UL)).xyxy)).zzzxxxxxyywwxzxx)).s4162)).wyyzwzzzyyyxzxyz))).s3)) || GROUP_DIVERGE(0, 1)))))));
    return p_614->g_191.s5;
}


/* ------------------------------------------ */
/* 
 * reads : p_614->l_comm_values p_614->g_2 p_614->g_30 p_614->g_40 p_614->g_59 p_614->g_comm_values p_614->g_80 p_614->g_81 p_614->g_89 p_614->g_67 p_614->g_88 p_614->g_144 p_614->g_149 p_614->g_157 p_614->g_162 p_614->g_181 p_614->g_191 p_614->g_202 p_614->g_214 p_614->g_263 p_614->g_266 p_614->g_270 p_614->g_274 p_614->g_277 p_614->g_292 p_614->g_295 p_614->g_296 p_614->g_300 p_614->g_342 p_614->g_355 p_614->g_363 p_614->g_364 p_614->g_376 p_614->g_454 p_614->g_455 p_614->g_468 p_614->g_490 p_614->g_492 p_614->g_505 p_614->g_512 p_614->g_521
 * writes: p_614->g_2 p_614->g_30 p_614->g_40 p_614->g_81 p_614->g_144 p_614->g_149 p_614->g_157 p_614->g_162 p_614->g_67 p_614->g_comm_values p_614->g_88 p_614->g_202 p_614->g_89 p_614->g_342 p_614->g_364 p_614->g_463 p_614->g_296 p_614->g_507 p_614->g_512
 */
int32_t * func_16(uint32_t  p_17, int32_t  p_18, int16_t  p_19, uint8_t  p_20, int32_t * p_21, struct S0 * p_614)
{ /* block id: 14 */
    VECTOR(int8_t, 16) l_31 = (VECTOR(int8_t, 16))(5L, (VECTOR(int8_t, 4))(5L, (VECTOR(int8_t, 2))(5L, 0x43L), 0x43L), 0x43L, 5L, 0x43L, (VECTOR(int8_t, 2))(5L, 0x43L), (VECTOR(int8_t, 2))(5L, 0x43L), 5L, 0x43L, 5L, 0x43L);
    int32_t l_32 = 0x7B249E3CL;
    int32_t l_204 = 1L;
    int32_t l_236 = 0x13AA1A88L;
    VECTOR(int16_t, 4) l_273 = (VECTOR(int16_t, 4))(0x5466L, (VECTOR(int16_t, 2))(0x5466L, 0x4F25L), 0x4F25L);
    VECTOR(int16_t, 4) l_285 = (VECTOR(int16_t, 4))((-7L), (VECTOR(int16_t, 2))((-7L), 0x6CE1L), 0x6CE1L);
    VECTOR(uint16_t, 2) l_293 = (VECTOR(uint16_t, 2))(6UL, 65535UL);
    VECTOR(int64_t, 16) l_307 = (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x2110A31BF1852066L), 0x2110A31BF1852066L), 0x2110A31BF1852066L, 1L, 0x2110A31BF1852066L, (VECTOR(int64_t, 2))(1L, 0x2110A31BF1852066L), (VECTOR(int64_t, 2))(1L, 0x2110A31BF1852066L), 1L, 0x2110A31BF1852066L, 1L, 0x2110A31BF1852066L);
    uint8_t *l_333 = &p_614->g_88;
    uint8_t *l_334[10] = {&p_614->g_157,&p_614->g_157,&p_614->g_157,&p_614->g_157,&p_614->g_157,&p_614->g_157,&p_614->g_157,&p_614->g_157,&p_614->g_157,&p_614->g_157};
    uint32_t l_353[4] = {0x423FCD32L,0x423FCD32L,0x423FCD32L,0x423FCD32L};
    int16_t l_369 = (-5L);
    VECTOR(int8_t, 4) l_370 = (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x33L), 0x33L);
    int32_t l_386 = 0L;
    uint32_t l_387 = 4294967295UL;
    int16_t l_411 = 1L;
    VECTOR(uint16_t, 16) l_431 = (VECTOR(uint16_t, 16))(0x6685L, (VECTOR(uint16_t, 4))(0x6685L, (VECTOR(uint16_t, 2))(0x6685L, 0xF2B6L), 0xF2B6L), 0xF2B6L, 0x6685L, 0xF2B6L, (VECTOR(uint16_t, 2))(0x6685L, 0xF2B6L), (VECTOR(uint16_t, 2))(0x6685L, 0xF2B6L), 0x6685L, 0xF2B6L, 0x6685L, 0xF2B6L);
    uint32_t l_435 = 0x023EC3B9L;
    VECTOR(int64_t, 8) l_469 = (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x01E9654DBD5B0304L), 0x01E9654DBD5B0304L), 0x01E9654DBD5B0304L, (-1L), 0x01E9654DBD5B0304L);
    VECTOR(uint64_t, 2) l_473 = (VECTOR(uint64_t, 2))(18446744073709551611UL, 2UL);
    int32_t l_486 = (-9L);
    int32_t l_510 = 0x1A4990B9L;
    int32_t l_511 = 0x38C8D204L;
    int32_t *l_523 = &p_614->g_2;
    int i;
    if ((((VECTOR(int8_t, 16))(l_31.s5cf455dbfe6b87c2)).s6 , (l_32 = l_31.s6)))
    { /* block id: 16 */
        int32_t *l_33 = &p_614->g_2;
        (*l_33) ^= p_614->l_comm_values[(safe_mod_func_uint32_t_u_u(p_614->tid, 1))];
    }
    else
    { /* block id: 18 */
        int32_t l_69 = (-1L);
        VECTOR(uint8_t, 8) l_174 = (VECTOR(uint8_t, 8))(0x8DL, (VECTOR(uint8_t, 4))(0x8DL, (VECTOR(uint8_t, 2))(0x8DL, 250UL), 250UL), 250UL, 0x8DL, 250UL);
        int32_t l_233 = 0x09FE0713L;
        int32_t l_234 = 0L;
        int32_t l_235 = (-9L);
        uint32_t *l_250 = (void*)0;
        uint32_t **l_249 = &l_250;
        uint32_t *l_252 = (void*)0;
        uint32_t **l_251 = &l_252;
        int32_t *l_257[1][10][4] = {{{&l_234,&l_234,&l_32,&l_233},{&l_234,&l_234,&l_32,&l_233},{&l_234,&l_234,&l_32,&l_233},{&l_234,&l_234,&l_32,&l_233},{&l_234,&l_234,&l_32,&l_233},{&l_234,&l_234,&l_32,&l_233},{&l_234,&l_234,&l_32,&l_233},{&l_234,&l_234,&l_32,&l_233},{&l_234,&l_234,&l_32,&l_233},{&l_234,&l_234,&l_32,&l_233}}};
        uint16_t l_262 = 0x0060L;
        VECTOR(int16_t, 2) l_275 = (VECTOR(int16_t, 2))(5L, 0L);
        VECTOR(int16_t, 16) l_294 = (VECTOR(int16_t, 16))(0x69B0L, (VECTOR(int16_t, 4))(0x69B0L, (VECTOR(int16_t, 2))(0x69B0L, 0x5CBDL), 0x5CBDL), 0x5CBDL, 0x69B0L, 0x5CBDL, (VECTOR(int16_t, 2))(0x69B0L, 0x5CBDL), (VECTOR(int16_t, 2))(0x69B0L, 0x5CBDL), 0x69B0L, 0x5CBDL, 0x69B0L, 0x5CBDL);
        VECTOR(uint8_t, 8) l_310 = (VECTOR(uint8_t, 8))(0xBDL, (VECTOR(uint8_t, 4))(0xBDL, (VECTOR(uint8_t, 2))(0xBDL, 0xCBL), 0xCBL), 0xCBL, 0xBDL, 0xCBL);
        uint8_t *l_345 = (void*)0;
        int32_t *l_384[9][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        VECTOR(int32_t, 16) l_392 = (VECTOR(int32_t, 16))(0x6C9F266AL, (VECTOR(int32_t, 4))(0x6C9F266AL, (VECTOR(int32_t, 2))(0x6C9F266AL, 0x485BB7C5L), 0x485BB7C5L), 0x485BB7C5L, 0x6C9F266AL, 0x485BB7C5L, (VECTOR(int32_t, 2))(0x6C9F266AL, 0x485BB7C5L), (VECTOR(int32_t, 2))(0x6C9F266AL, 0x485BB7C5L), 0x6C9F266AL, 0x485BB7C5L, 0x6C9F266AL, 0x485BB7C5L);
        uint8_t l_460 = 0x39L;
        VECTOR(uint16_t, 16) l_506 = (VECTOR(uint16_t, 16))(0x743EL, (VECTOR(uint16_t, 4))(0x743EL, (VECTOR(uint16_t, 2))(0x743EL, 4UL), 4UL), 4UL, 0x743EL, 4UL, (VECTOR(uint16_t, 2))(0x743EL, 4UL), (VECTOR(uint16_t, 2))(0x743EL, 4UL), 0x743EL, 4UL, 0x743EL, 4UL);
        int i, j, k;
        for (p_614->g_30 = 0; (p_614->g_30 == 2); p_614->g_30 = safe_add_func_uint64_t_u_u(p_614->g_30, 9))
        { /* block id: 21 */
            VECTOR(int16_t, 16) l_58 = (VECTOR(int16_t, 16))((-5L), (VECTOR(int16_t, 4))((-5L), (VECTOR(int16_t, 2))((-5L), 0x48A1L), 0x48A1L), 0x48A1L, (-5L), 0x48A1L, (VECTOR(int16_t, 2))((-5L), 0x48A1L), (VECTOR(int16_t, 2))((-5L), 0x48A1L), (-5L), 0x48A1L, (-5L), 0x48A1L);
            VECTOR(int16_t, 2) l_62 = (VECTOR(int16_t, 2))((-9L), 1L);
            int32_t l_68[2][4] = {{1L,1L,1L,1L},{1L,1L,1L,1L}};
            int64_t l_184 = 1L;
            uint8_t l_186[8] = {0xE6L,0xE6L,0xE6L,0xE6L,0xE6L,0xE6L,0xE6L,0xE6L};
            int32_t *l_218 = &l_69;
            int32_t *l_219 = &l_68[1][1];
            int32_t *l_220 = &l_68[0][2];
            int32_t *l_221 = &l_68[1][2];
            int32_t *l_222 = &l_68[1][1];
            int32_t *l_223 = &l_69;
            int32_t *l_224 = &l_69;
            int32_t *l_225 = &l_32;
            int32_t *l_226 = &l_68[1][1];
            int32_t *l_227 = &l_68[1][1];
            int32_t *l_228 = (void*)0;
            int32_t *l_229 = (void*)0;
            int32_t *l_230 = (void*)0;
            int32_t *l_231 = (void*)0;
            int32_t *l_232[3];
            uint8_t l_237[10][2] = {{1UL,0xCFL},{1UL,0xCFL},{1UL,0xCFL},{1UL,0xCFL},{1UL,0xCFL},{1UL,0xCFL},{1UL,0xCFL},{1UL,0xCFL},{1UL,0xCFL},{1UL,0xCFL}};
            uint32_t l_240[9] = {0x4672A85BL,0xE65E92AEL,0x4672A85BL,0x4672A85BL,0xE65E92AEL,0x4672A85BL,0x4672A85BL,0xE65E92AEL,0x4672A85BL};
            int i, j;
            for (i = 0; i < 3; i++)
                l_232[i] = (void*)0;
            for (p_17 = 0; (p_17 >= 37); p_17++)
            { /* block id: 24 */
                int32_t *l_38 = &p_614->g_2;
                int32_t *l_39[9][3][9] = {{{&l_32,&l_32,&p_614->g_2,&p_614->g_2,&p_614->g_2,&l_32,&p_614->g_2,(void*)0,&p_614->g_2},{&l_32,&l_32,&p_614->g_2,&p_614->g_2,&p_614->g_2,&l_32,&p_614->g_2,(void*)0,&p_614->g_2},{&l_32,&l_32,&p_614->g_2,&p_614->g_2,&p_614->g_2,&l_32,&p_614->g_2,(void*)0,&p_614->g_2}},{{&l_32,&l_32,&p_614->g_2,&p_614->g_2,&p_614->g_2,&l_32,&p_614->g_2,(void*)0,&p_614->g_2},{&l_32,&l_32,&p_614->g_2,&p_614->g_2,&p_614->g_2,&l_32,&p_614->g_2,(void*)0,&p_614->g_2},{&l_32,&l_32,&p_614->g_2,&p_614->g_2,&p_614->g_2,&l_32,&p_614->g_2,(void*)0,&p_614->g_2}},{{&l_32,&l_32,&p_614->g_2,&p_614->g_2,&p_614->g_2,&l_32,&p_614->g_2,(void*)0,&p_614->g_2},{&l_32,&l_32,&p_614->g_2,&p_614->g_2,&p_614->g_2,&l_32,&p_614->g_2,(void*)0,&p_614->g_2},{&l_32,&l_32,&p_614->g_2,&p_614->g_2,&p_614->g_2,&l_32,&p_614->g_2,(void*)0,&p_614->g_2}},{{&l_32,&l_32,&p_614->g_2,&p_614->g_2,&p_614->g_2,&l_32,&p_614->g_2,(void*)0,&p_614->g_2},{&l_32,&l_32,&p_614->g_2,&p_614->g_2,&p_614->g_2,&l_32,&p_614->g_2,(void*)0,&p_614->g_2},{&l_32,&l_32,&p_614->g_2,&p_614->g_2,&p_614->g_2,&l_32,&p_614->g_2,(void*)0,&p_614->g_2}},{{&l_32,&l_32,&p_614->g_2,&p_614->g_2,&p_614->g_2,&l_32,&p_614->g_2,(void*)0,&p_614->g_2},{&l_32,&l_32,&p_614->g_2,&p_614->g_2,&p_614->g_2,&l_32,&p_614->g_2,(void*)0,&p_614->g_2},{&l_32,&l_32,&p_614->g_2,&p_614->g_2,&p_614->g_2,&l_32,&p_614->g_2,(void*)0,&p_614->g_2}},{{&l_32,&l_32,&p_614->g_2,&p_614->g_2,&p_614->g_2,&l_32,&p_614->g_2,(void*)0,&p_614->g_2},{&l_32,&l_32,&p_614->g_2,&p_614->g_2,&p_614->g_2,&l_32,&p_614->g_2,(void*)0,&p_614->g_2},{&l_32,&l_32,&p_614->g_2,&p_614->g_2,&p_614->g_2,&l_32,&p_614->g_2,(void*)0,&p_614->g_2}},{{&l_32,&l_32,&p_614->g_2,&p_614->g_2,&p_614->g_2,&l_32,&p_614->g_2,(void*)0,&p_614->g_2},{&l_32,&l_32,&p_614->g_2,&p_614->g_2,&p_614->g_2,&l_32,&p_614->g_2,(void*)0,&p_614->g_2},{&l_32,&l_32,&p_614->g_2,&p_614->g_2,&p_614->g_2,&l_32,&p_614->g_2,(void*)0,&p_614->g_2}},{{&l_32,&l_32,&p_614->g_2,&p_614->g_2,&p_614->g_2,&l_32,&p_614->g_2,(void*)0,&p_614->g_2},{&l_32,&l_32,&p_614->g_2,&p_614->g_2,&p_614->g_2,&l_32,&p_614->g_2,(void*)0,&p_614->g_2},{&l_32,&l_32,&p_614->g_2,&p_614->g_2,&p_614->g_2,&l_32,&p_614->g_2,(void*)0,&p_614->g_2}},{{&l_32,&l_32,&p_614->g_2,&p_614->g_2,&p_614->g_2,&l_32,&p_614->g_2,(void*)0,&p_614->g_2},{&l_32,&l_32,&p_614->g_2,&p_614->g_2,&p_614->g_2,&l_32,&p_614->g_2,(void*)0,&p_614->g_2},{&l_32,&l_32,&p_614->g_2,&p_614->g_2,&p_614->g_2,&l_32,&p_614->g_2,(void*)0,&p_614->g_2}}};
                int16_t *l_63 = (void*)0;
                int16_t *l_64 = (void*)0;
                int16_t *l_65 = (void*)0;
                int16_t *l_66 = (void*)0;
                int32_t **l_170 = &l_39[8][1][7];
                uint16_t *l_215 = (void*)0;
                uint16_t *l_216[6][9][4] = {{{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217}},{{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217}},{{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217}},{{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217}},{{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217}},{{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217},{&p_614->g_217,&p_614->g_217,&p_614->g_217,&p_614->g_217}}};
                int i, j, k;
                --p_614->g_40;
                (*l_170) = func_43((safe_div_func_uint16_t_u_u((safe_mod_func_uint32_t_u_u((safe_mod_func_uint16_t_u_u((safe_add_func_int8_t_s_s(l_31.s1, 0UL)), p_19)), (safe_lshift_func_uint16_t_u_s(p_614->g_30, 11)))), func_24((((safe_div_func_int16_t_s_s(((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 4))(0x5AEEL, ((VECTOR(int16_t, 2))(l_58.sb6)), (-8L))).odd, ((VECTOR(int16_t, 16))(p_614->g_59.yxxyyxxxxxxyyyxx)).s1b))).even, ((VECTOR(uint16_t, 8))((((!(p_20 && ((safe_mul_func_uint8_t_u_u((((VECTOR(int16_t, 4))(l_62.yyyx)).z != (l_68[1][1] = 0x18F9L)), p_20)) < l_69))) , func_70(func_76(func_24(l_31.s3, p_614), l_65, l_38, p_614), l_69, &l_32, p_17, l_58.s4, p_614)) != (void*)0), ((VECTOR(uint16_t, 4))(0x54FFL)), ((VECTOR(uint16_t, 2))(0xAFFBL)), 0x179AL)).s1)) >= p_614->g_67.s3) || l_31.s5), p_614))), p_614->g_67.s7, p_614);
                for (p_614->g_157 = (-12); (p_614->g_157 <= 38); p_614->g_157 = safe_add_func_uint32_t_u_u(p_614->g_157, 9))
                { /* block id: 65 */
                    uint32_t *l_185[4];
                    int32_t l_211 = (-1L);
                    int i;
                    for (i = 0; i < 4; i++)
                        l_185[i] = (void*)0;
                    p_18 = (safe_unary_minus_func_uint16_t_u(GROUP_DIVERGE(2, 1)));
                    if (((p_614->g_162 >= ((~((VECTOR(uint8_t, 16))(l_174.s1503455357213670)).sb) == ((safe_sub_func_int64_t_s_s(((FAKE_DIVERGE(p_614->global_1_offset, get_global_id(1), 10) , (p_614->g_67.s7 ^= (safe_lshift_func_int8_t_s_s(((((safe_lshift_func_int8_t_s_s((p_19 > 4L), 1)) , p_614->g_181) == (void*)0) >= (~l_62.y)), 5)))) && (((l_62.y , (safe_sub_func_uint32_t_u_u((l_68[1][1] = (!(p_614->g_59.y & l_184))), l_186[0]))) == 0x1F7DL) == p_20)), p_19)) , p_17))) | 0x82E6L))
                    { /* block id: 69 */
                        int64_t *l_192 = (void*)0;
                        int64_t *l_193 = (void*)0;
                        uint32_t l_194 = 0xD2117EA6L;
                        uint64_t *l_201 = &p_614->g_162;
                        p_18 = (l_174.s3 , (safe_lshift_func_int16_t_s_s(((GROUP_DIVERGE(1, 1) ^ (safe_mod_func_uint64_t_u_u((((VECTOR(int32_t, 8))(p_614->g_191.s34047560)).s7 < ((void*)0 == &p_19)), (p_614->g_comm_values[p_614->tid] = p_614->g_30)))) || (l_194 == (((1UL <= l_31.s2) & ((safe_sub_func_int32_t_s_s(((l_32 |= ((*l_201) = (safe_sub_func_uint32_t_u_u(0x3B6AFA11L, ((*l_38) = ((VECTOR(int32_t, 8))((*p_21), 0L, 1L, 0x7962F05AL, ((VECTOR(int32_t, 4))(0x2B29AD9DL)))).s7))))) || l_194), (-4L))) < p_614->g_30)) && 0x9CL))), p_614->g_202)));
                    }
                    else
                    { /* block id: 75 */
                        VECTOR(int64_t, 2) l_203 = (VECTOR(int64_t, 2))(0L, 0x290754DDF52832ABL);
                        int8_t *l_205[3][3] = {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}};
                        uint8_t *l_210 = &p_614->g_88;
                        int i, j;
                        (*l_170) = func_111(((p_18 == p_20) >= (((*l_210) &= ((l_69 = (l_204 = ((l_203.x , p_20) , p_17))) ^ (safe_add_func_uint8_t_u_u((safe_mod_func_uint64_t_u_u(((p_614->g_30 || 0x263A71FDL) && ((&p_614->g_149[7] == &p_21) > 7UL)), l_203.x)), p_614->g_144.x)))) <= l_31.sb)), p_614);
                        if (l_211)
                            continue;
                        if ((*p_21))
                            continue;
                    }
                }
                l_68[0][3] = (((safe_rshift_func_uint16_t_u_s(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(p_614->g_214.s62dfeed02c249f41)))).s4, p_614->g_80.y)) == (l_32 = GROUP_DIVERGE(0, 1))) && ((*l_38) = p_614->g_2));
            }
            ++l_237[5][1];
            ++l_240[8];
        }
        if ((safe_mod_func_int16_t_s_s((safe_add_func_int8_t_s_s((safe_add_func_int8_t_s_s((((*l_249) = p_21) == ((*l_251) = (void*)0)), ((safe_add_func_uint32_t_u_u((safe_sub_func_uint64_t_u_u((1L == (p_18 = 0x7E62051EL)), (l_31.s8 && (1L & ((((p_614->g_40 , func_43(((safe_rshift_func_int8_t_s_s((safe_rshift_func_int16_t_s_s(0x202FL, (+l_262))), p_614->g_67.s5)) , GROUP_DIVERGE(1, 1)), l_204, p_614)) == p_614->g_263) > GROUP_DIVERGE(0, 1)) | l_32))))), (*p_21))) > l_31.s4))), FAKE_DIVERGE(p_614->global_0_offset, get_global_id(0), 10))), p_614->g_30)))
        { /* block id: 94 */
            uint32_t **l_272 = (void*)0;
            int32_t l_276 = 0x710A52F9L;
            int64_t *l_278 = (void*)0;
            int64_t *l_279 = (void*)0;
            int64_t *l_280 = (void*)0;
            int64_t *l_281 = (void*)0;
            int64_t *l_282 = (void*)0;
            int64_t *l_283 = (void*)0;
            int64_t *l_284 = (void*)0;
            int32_t **l_297 = &l_257[0][2][2];
            int16_t *l_298 = (void*)0;
            int32_t *l_299 = (void*)0;
            VECTOR(uint64_t, 8) l_356 = (VECTOR(uint64_t, 8))(0x6F76AEF64FB8BEC4L, (VECTOR(uint64_t, 4))(0x6F76AEF64FB8BEC4L, (VECTOR(uint64_t, 2))(0x6F76AEF64FB8BEC4L, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0x6F76AEF64FB8BEC4L, 18446744073709551615UL);
            VECTOR(uint32_t, 8) l_378 = (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 4294967295UL), 4294967295UL), 4294967295UL, 1UL, 4294967295UL);
            VECTOR(int64_t, 4) l_382 = (VECTOR(int64_t, 4))(0x3F5B8F5E76F519B2L, (VECTOR(int64_t, 2))(0x3F5B8F5E76F519B2L, 0x4FB39EDF9B02AEB8L), 0x4FB39EDF9B02AEB8L);
            int i;
            for (l_235 = 9; (l_235 > (-1)); --l_235)
            { /* block id: 97 */
                (*p_614->g_266) = func_111(p_17, p_614);
                for (l_69 = 0; (l_69 > 14); ++l_69)
                { /* block id: 101 */
                    int32_t **l_269 = &p_614->g_149[5];
                    (*l_269) = func_111(p_17, p_614);
                    l_272 = p_614->g_270;
                    if ((*p_21))
                        break;
                    if ((**p_614->g_266))
                        break;
                }
            }
            (*p_614->g_300) = (p_614->g_30 != (((((((VECTOR(int16_t, 16))(safe_clamp_func(VECTOR(int16_t, 16),VECTOR(int16_t, 16),((VECTOR(int16_t, 8))(add_sat(((VECTOR(int16_t, 2))(l_273.ww)).yxyyxyxy, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(p_614->g_274.s01632116)).even)).wzzxwzwy))).s4121024654243132, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(l_275.yyyxyxxy)))).s0341754504342224, ((VECTOR(int16_t, 4))((p_19 = (l_276 , (p_614->g_67.s1 > (p_614->g_comm_values[p_614->tid] |= ((VECTOR(int64_t, 4))(p_614->g_277.yxyx)).z)))), ((VECTOR(int16_t, 2))(l_285.yz)), (-1L))).yywzzywxwzzxyzyw))).sa || (GROUP_DIVERGE(1, 1) < ((((p_614->g_181 != (void*)0) , (safe_add_func_int8_t_s_s(p_614->g_157, ((l_276 = (safe_mul_func_uint8_t_u_u((((*l_297) = func_111((safe_mod_func_uint16_t_u_u((p_614->g_89.w | ((VECTOR(int64_t, 16))(p_614->g_292.sf59a46947678d6e3)).sb), ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(mad_hi(((VECTOR(uint16_t, 4))(l_293.yxxy)).yyxwyzyy, ((VECTOR(uint16_t, 8))(min(((VECTOR(uint16_t, 4))(abs_diff(((VECTOR(int16_t, 8))(l_294.sdb987ca8)).hi, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(p_614->g_295.s12cc45b1)).even))))).wywxzxww, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(p_614->g_296.xyyyxxxx)), l_285.y, 65527UL, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(((((0x1128C3E5849BD4E4L != p_19) > p_17) <= 0x1AC0L) | 1UL), GROUP_DIVERGE(0, 1), p_18, ((VECTOR(uint16_t, 2))(0x17BEL)), 0x2F7FL, 0xB4B8L, 0x1608L)).even)), 0UL, 0x0544L)).s0091)).xzzzwwxw))), ((VECTOR(uint16_t, 8))(1UL))))).s1066406451737000)).se7cf)).x)), p_614)) == p_614->g_149[4]), l_293.x))) >= p_20)))) , l_298) != (void*)0))) && p_614->g_157) >= 255UL) > p_17) != l_285.x));
            for (p_614->g_157 = 10; (p_614->g_157 < 54); ++p_614->g_157)
            { /* block id: 115 */
                uint64_t l_322 = 0xD8DE58FF86941107L;
                int32_t l_325 = 0x4275AC89L;
                int16_t *l_341 = (void*)0;
                VECTOR(int32_t, 4) l_347 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 3L), 3L);
                VECTOR(uint64_t, 8) l_348 = (VECTOR(uint64_t, 8))(0x8E61842C28A44208L, (VECTOR(uint64_t, 4))(0x8E61842C28A44208L, (VECTOR(uint64_t, 2))(0x8E61842C28A44208L, 0x0986AD7370EED99DL), 0x0986AD7370EED99DL), 0x0986AD7370EED99DL, 0x8E61842C28A44208L, 0x0986AD7370EED99DL);
                VECTOR(uint64_t, 2) l_354 = (VECTOR(uint64_t, 2))(0xCAB0F51D359E2882L, 0x8F8947E936421B82L);
                int i;
                for (p_614->g_202 = 0; (p_614->g_202 >= 47); ++p_614->g_202)
                { /* block id: 118 */
                    int32_t l_313 = (-10L);
                    int32_t l_320 = 0x321BDCFDL;
                    for (l_233 = 28; (l_233 < (-11)); l_233--)
                    { /* block id: 121 */
                        int8_t l_321 = 0x3FL;
                        uint32_t l_323 = 4294967294UL;
                        int32_t l_324 = (-2L);
                        l_324 |= ((((VECTOR(int64_t, 8))(l_307.s9bb4cb66)).s2 && (safe_add_func_uint32_t_u_u((!((p_614->g_80.y , ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(l_310.s6520)).yyyywxwyzxzyyyxw)).sa) >= ((((safe_mod_func_uint8_t_u_u(((p_614->g_30 = l_313) >= 0x94B0D4290D7AD230L), (safe_lshift_func_int16_t_s_u((((safe_mod_func_int16_t_s_s(((l_321 ^= (l_320 = ((0x33F7561DF3716DEDL | (safe_lshift_func_int8_t_s_s(0x6CL, 7))) != (-1L)))) | p_18), p_614->g_144.y)) & (-10L)) == l_322), p_20)))) == 248UL) ^ l_323) == (**p_614->g_266)))), FAKE_DIVERGE(p_614->global_0_offset, get_global_id(0), 10)))) == 1UL);
                    }
                    l_325 &= (*p_21);
                }
                if ((p_18 = l_293.y))
                { /* block id: 130 */
                    uint8_t **l_335[5][10][5] = {{{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]}},{{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]}},{{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]}},{{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]}},{{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]},{&l_334[4],&l_334[5],&l_334[4],(void*)0,&l_334[9]}}};
                    int16_t *l_336[7][5][7] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
                    int16_t **l_343 = &p_614->g_342;
                    int32_t l_344 = (-1L);
                    int32_t *l_346 = &l_325;
                    int8_t *l_365 = (void*)0;
                    int8_t *l_366[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    uint32_t *l_371[2][10] = {{&p_614->g_81,&p_614->g_202,&p_614->g_202,&p_614->g_81,&p_614->g_202,&p_614->g_81,&p_614->g_202,&p_614->g_202,&p_614->g_81,&p_614->g_81},{&p_614->g_81,&p_614->g_202,&p_614->g_202,&p_614->g_81,&p_614->g_202,&p_614->g_81,&p_614->g_202,&p_614->g_202,&p_614->g_81,&p_614->g_81}};
                    int i, j, k;
                    (*l_346) = ((((VECTOR(uint8_t, 4))(p_614->g_326.yxyy)).y > (((((p_18 = (*p_21)) ^ (l_32 = (safe_div_func_uint64_t_u_u((((safe_lshift_func_int16_t_s_u(0x6EFEL, (safe_add_func_int16_t_s_s((p_614->g_89.y = ((l_333 = &p_20) == (l_334[4] = l_334[4]))), (safe_lshift_func_int8_t_s_u(p_614->g_144.x, 0)))))) || (&l_325 != ((*l_297) = func_111(((p_19 > (l_341 != ((*l_343) = p_614->g_342))) > FAKE_DIVERGE(p_614->local_0_offset, get_local_id(0), 10)), p_614)))) & p_614->g_292.s3), l_344)))) , l_345) != &p_20) , 0x4EL)) != 0x098CC03FL);
                    (*l_297) = ((p_614->g_81 = (((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(l_347.xzwx)).even, ((VECTOR(int32_t, 16))(sub_sat(((VECTOR(int32_t, 16))(((((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(1L, ((VECTOR(int16_t, 8))(((((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(l_348.s54502136)), (safe_rshift_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(l_353[2], l_273.w)), 6)), ((VECTOR(uint64_t, 2))(sub_sat(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(l_354.yyxx)).even)))), ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(p_614->g_355.s67673140)).s35)), 0x8F1BC9D707F36127L, p_614->g_80.y, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(l_356.s35)))).yyxyyyxxyxxxxxxy)).sd9)), 0x9DF3AD39A405CFC0L, 0x9BC3646928EF8292L)))).s42))))), 0x096630E178A0DB7DL, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(8UL, 0xB4D513ECCE02C5EAL)))), 18446744073709551615UL, 0x88662B628FBCA930L)).sc2b7)).z < ((+((safe_lshift_func_uint8_t_u_s(l_307.sd, 6)) < (p_20 , (((safe_add_func_uint64_t_u_u(p_614->g_292.sf, FAKE_DIVERGE(p_614->group_0_offset, get_group_id(0), 10))) ^ p_17) , ((VECTOR(int64_t, 2))((-4L), 0x5FC19357EF358BECL)).lo)))) < ((safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 4))(abs_diff(((VECTOR(int32_t, 4))(((((*l_343) = p_614->g_342) == (((((VECTOR(uint64_t, 4))(abs(((VECTOR(uint64_t, 4))(clz(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(0xA32CBFFB4B3FA38CL, ((VECTOR(uint64_t, 2))(p_614->g_363.xx)), ((VECTOR(uint64_t, 4))((((l_325 = ((VECTOR(int8_t, 4))(p_614->g_364.s1170)).x) , ((safe_add_func_uint32_t_u_u((l_369 = p_18), (*p_21))) != p_17)) || GROUP_DIVERGE(1, 1)), 1UL, 18446744073709551615UL, 0xDFC9A01ED204EB19L)), 0x68B00C2AE53849AFL)))).odd)))))).y == p_20) , (*p_21)) , (void*)0)) , (*l_346)), (**p_614->g_266), (-1L), 9L)), ((VECTOR(int32_t, 4))(1L))))).y, (*p_21))) >= 0x54D1L))) | l_370.y) > l_322) == p_614->g_89.z), ((VECTOR(int16_t, 4))(0L)), 2L, 0x2028L, 0L)), 2L, 8L, 1L, ((VECTOR(int16_t, 4))(0x49FBL)))).sd58d)).even, ((VECTOR(int16_t, 2))(0L))))), ((VECTOR(int16_t, 2))(0x5648L))))).even ^ 0xD3DAL) <= p_19), ((VECTOR(int32_t, 2))(6L)), 0x5087EAC8L, (*p_614->g_300), (-3L), ((VECTOR(int32_t, 4))(3L)), ((VECTOR(int32_t, 2))(0x4ED9727EL)), (**p_614->g_266), ((VECTOR(int32_t, 2))(0L)), 0x76E3C893L)), ((VECTOR(int32_t, 16))(3L))))).s28, ((VECTOR(int32_t, 2))(0x7DD5B746L))))), ((VECTOR(int32_t, 2))((-1L))), ((VECTOR(int32_t, 2))(0x0F6FAFF0L))))).yxyx)).xyyxzxzyxyzzxwyz, ((VECTOR(int32_t, 16))((-2L))), ((VECTOR(int32_t, 16))((-1L)))))).sc42f, ((VECTOR(int32_t, 4))(0x4A80F5F4L))))).zwyyyxyz, ((VECTOR(int32_t, 8))(0x622D0028L))))).s2 || (-1L))) , (*p_614->g_266));
                }
                else
                { /* block id: 144 */
                    int32_t *l_385 = &l_233;
                    if ((**p_614->g_266))
                        break;
                    for (l_276 = (-2); (l_276 < (-30)); --l_276)
                    { /* block id: 148 */
                        uint8_t **l_374 = &l_334[4];
                        uint8_t ***l_375 = &l_374;
                        VECTOR(uint32_t, 4) l_379 = (VECTOR(uint32_t, 4))(0xEE165455L, (VECTOR(uint32_t, 2))(0xEE165455L, 0x17CB2DE0L), 0x17CB2DE0L);
                        VECTOR(uint32_t, 8) l_380 = (VECTOR(uint32_t, 8))(0x46871D43L, (VECTOR(uint32_t, 4))(0x46871D43L, (VECTOR(uint32_t, 2))(0x46871D43L, 0xAB0C96C7L), 0xAB0C96C7L), 0xAB0C96C7L, 0x46871D43L, 0xAB0C96C7L);
                        int8_t l_381 = 0x65L;
                        int64_t *l_383 = &p_614->g_30;
                        int i;
                        l_32 = (((p_18 && (((*l_375) = l_374) == p_614->g_376[0])) | ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(mul_hi(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(4294967295UL, ((VECTOR(uint32_t, 2))(l_378.s06)), ((VECTOR(uint32_t, 4))(l_379.yyzy)), 0xCD43B8A4L)).s63)).yxxy)).ywzyxzxy, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(l_380.s36)).xyxyxxxx))))).s67)).hi) || ((p_614->g_292.se != l_381) != ((*l_383) &= ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(l_382.wyxwwwwzzzzzwzwy)))).s3)));
                        return (*p_614->g_266);
                    }
                }
                (*l_297) = (*p_614->g_266);
                if ((*p_21))
                    break;
            }
            l_387++;
        }
        else
        { /* block id: 159 */
            uint64_t l_398 = 0UL;
            int32_t l_423 = 0x2C0A2CD4L;
            uint32_t l_449 = 0x45671FF4L;
            int16_t **l_459 = &p_614->g_342;
            VECTOR(uint64_t, 8) l_485 = (VECTOR(uint64_t, 8))(0xE9BC6FBD15E6A153L, (VECTOR(uint64_t, 4))(0xE9BC6FBD15E6A153L, (VECTOR(uint64_t, 2))(0xE9BC6FBD15E6A153L, 18446744073709551614UL), 18446744073709551614UL), 18446744073709551614UL, 0xE9BC6FBD15E6A153L, 18446744073709551614UL);
            int32_t l_508 = (-1L);
            int32_t l_509 = 0x73BAF9ABL;
            int i;
            for (p_18 = 0; (p_18 > (-6)); --p_18)
            { /* block id: 162 */
                VECTOR(int32_t, 2) l_393 = (VECTOR(int32_t, 2))((-8L), 0x06C118D9L);
                VECTOR(int32_t, 8) l_399 = (VECTOR(int32_t, 8))(0x247AF283L, (VECTOR(int32_t, 4))(0x247AF283L, (VECTOR(int32_t, 2))(0x247AF283L, (-1L)), (-1L)), (-1L), 0x247AF283L, (-1L));
                VECTOR(uint32_t, 16) l_410 = (VECTOR(uint32_t, 16))(0xB14A1338L, (VECTOR(uint32_t, 4))(0xB14A1338L, (VECTOR(uint32_t, 2))(0xB14A1338L, 8UL), 8UL), 8UL, 0xB14A1338L, 8UL, (VECTOR(uint32_t, 2))(0xB14A1338L, 8UL), (VECTOR(uint32_t, 2))(0xB14A1338L, 8UL), 0xB14A1338L, 8UL, 0xB14A1338L, 8UL);
                int i;
                (**p_614->g_266) = ((VECTOR(int32_t, 16))(2L, (-4L), 0x28EA48FBL, ((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 8))(l_392.s6cb0633a)).s60, ((VECTOR(int32_t, 16))(l_393.yxyxyxxyxyxyxyyx)).sd8))), (-1L), (safe_sub_func_int16_t_s_s(3L, (safe_mul_func_uint8_t_u_u(p_18, l_398)))), 0x3A2DC479L, ((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 2))(l_399.s27)).yxyxyxxx, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0x169B3252L, 0x2C08E1C6L)), ((safe_div_func_int64_t_s_s((safe_div_func_int16_t_s_s((p_614->g_89.y = (safe_add_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((((safe_rshift_func_uint16_t_u_s(65534UL, ((VECTOR(int16_t, 2))(0x4D74L, (-8L))).lo)) & l_399.s4) < (((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(l_410.s24)))).hi < (1L >= p_17))), l_411)), (safe_unary_minus_func_uint32_t_u((((*l_333) |= ((safe_lshift_func_int16_t_s_s(((1UL & 0x28B54B96F0554102L) | p_19), p_19)) == p_19)) > l_273.w)))))), p_614->g_30)), l_398)) , l_398), ((VECTOR(int32_t, 2))((-2L))), l_393.y, 0x46E35677L, 0x382F8239L))))), ((VECTOR(int32_t, 8))(5L))))))).s0;
                l_423 = ((safe_lshift_func_int8_t_s_s(p_614->g_162, (safe_mul_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s(p_614->g_157, 11)), 251UL)))) < ((safe_mod_func_int8_t_s_s(p_19, ((p_614->g_274.s7 < p_614->g_157) , GROUP_DIVERGE(0, 1)))) & l_285.x));
            }
            for (p_614->g_88 = (-18); (p_614->g_88 > 24); p_614->g_88 = safe_add_func_int64_t_s_s(p_614->g_88, 2))
            { /* block id: 170 */
                VECTOR(int16_t, 16) l_430 = (VECTOR(int16_t, 16))(0x2B87L, (VECTOR(int16_t, 4))(0x2B87L, (VECTOR(int16_t, 2))(0x2B87L, 0x6D48L), 0x6D48L), 0x6D48L, 0x2B87L, 0x6D48L, (VECTOR(int16_t, 2))(0x2B87L, 0x6D48L), (VECTOR(int16_t, 2))(0x2B87L, 0x6D48L), 0x2B87L, 0x6D48L, 0x2B87L, 0x6D48L);
                uint8_t **l_432 = (void*)0;
                uint8_t **l_433 = (void*)0;
                uint8_t **l_434 = &l_334[4];
                uint32_t *l_442[5][2] = {{&l_353[0],(void*)0},{&l_353[0],(void*)0},{&l_353[0],(void*)0},{&l_353[0],(void*)0},{&l_353[0],(void*)0}};
                int32_t l_443 = 3L;
                int16_t **l_458[2];
                int16_t l_476 = 0L;
                VECTOR(uint8_t, 4) l_491 = (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x03L), 0x03L);
                int i, j;
                for (i = 0; i < 2; i++)
                    l_458[i] = (void*)0;
                (*p_614->g_300) &= (*p_21);
                if ((safe_mod_func_int64_t_s_s((safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 4))(add_sat(((VECTOR(int16_t, 2))(0L, 0x0C66L)).xxxy, ((VECTOR(int16_t, 2))(l_430.sc5)).xyxy))).x, (+((VECTOR(uint16_t, 8))(sub_sat(((VECTOR(uint16_t, 2))(0UL, 0x5364L)).xyyxyyyx, ((VECTOR(uint16_t, 16))(0UL, 0xE422L, 1UL, 65527UL, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(l_431.s12)), (((((*l_434) = &p_614->g_157) == ((~(((0x0D5142E8L <= l_435) , l_398) & (safe_sub_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_u(((safe_sub_func_int32_t_s_s((((--p_614->g_144.x) < ((safe_add_func_int32_t_s_s(((safe_unary_minus_func_int8_t_s((p_614->g_364.s3 = l_449))) , (safe_lshift_func_int8_t_s_u((safe_mod_func_int32_t_s_s(0x066B2A26L, (l_32 ^= ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(4294967295UL, 0xD5600633L)).yyxxyyyxxxyyxyxy)).s5))), p_19))), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(clz(((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 4))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 4),((VECTOR(int16_t, 16))(p_614->g_454.s0602233111024620)).s73d3, ((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 2))(clz(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(0x7245L, ((VECTOR(int16_t, 2))(rotate(((VECTOR(int16_t, 8))(clz(((VECTOR(int16_t, 2))((-10L), (-1L))).yxxxxxyy))).s06, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(p_614->g_455.xxyxyxyyxxxyxyyx)))).s18))), (safe_mul_func_uint8_t_u_u(((((l_458[0] == l_459) || l_460) >= (*p_21)) <= l_443), p_17)), (-1L), (-1L), (-1L), 0x48E0L)).hi)), ((VECTOR(int16_t, 2))(1L)), 0x3601L, 0x38DEL)).s73))), ((VECTOR(int16_t, 2))(0x67CFL))))).yxyy, ((VECTOR(int16_t, 4))(0x1C10L))))).wzxyxwzz, (int16_t)0x0874L))).lo, ((VECTOR(uint16_t, 4))(9UL))))).wxxwyzwwwywzzwxw))))).s5)) ^ 0x9C7DCCA3L)) , l_423), 0L)) > 4294967295UL), p_614->g_454.s6)), 1L)))) , &l_460)) ^ p_614->g_355.s5) >= 1UL), ((VECTOR(uint16_t, 4))(3UL)), 1UL, 0x2D26L, l_398, 0x9F30L, 8UL, ((VECTOR(uint16_t, 4))(0xB1D8L)))).s2, ((VECTOR(uint16_t, 8))(0x0661L)), ((VECTOR(uint16_t, 2))(0xED9DL)), 1UL)).lo))).s5))), 4UL)))
                { /* block id: 176 */
                    uint8_t l_472 = 0UL;
                    if ((*p_21))
                        break;
                    for (p_17 = 25; (p_17 == 28); p_17++)
                    { /* block id: 180 */
                        int64_t *l_470 = (void*)0;
                        int64_t *l_471 = &p_614->g_30;
                        p_614->g_463.s6 = 9L;
                        if ((*p_21))
                            break;
                        if (l_430.s3)
                            continue;
                        p_18 = (((safe_div_func_int16_t_s_s((~(((safe_mul_func_int16_t_s_s(5L, l_443)) == ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(p_614->g_468.s52642466)).odd)).w) <= p_19)), ((((*l_471) = ((VECTOR(int64_t, 2))(l_469.s02)).odd) || l_472) , ((VECTOR(int16_t, 16))(0x37B0L, (-2L), ((VECTOR(int16_t, 8))(0x5E53L, (p_614->g_89.y = (((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(l_473.yx)), (l_472 <= p_18), 0xE89694E8B6CB277DL, (safe_div_func_int16_t_s_s((l_32 = ((l_476 = l_430.s5) < p_20)), 0x22A7L)), ((VECTOR(uint64_t, 8))(0UL)), ((VECTOR(uint64_t, 2))(0xF9BC42BCB57FED63L)), 0x79506923D0007790L)).s0 , 0x5447L)), ((VECTOR(int16_t, 2))(0x213AL)), p_19, ((VECTOR(int16_t, 2))(0x10F7L)), 0x186CL)), 7L, 0x23EBL, 0x500FL, p_614->g_59.y, 0x4825L, 0x15FAL)).sd))) || 5UL) != 6UL);
                    }
                }
                else
                { /* block id: 190 */
                    uint16_t *l_487[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int64_t *l_500 = (void*)0;
                    int64_t *l_501 = (void*)0;
                    int64_t *l_502 = (void*)0;
                    int64_t *l_503 = (void*)0;
                    int64_t *l_504 = &p_614->g_30;
                    int i;
                    l_423 = (safe_mul_func_int8_t_s_s(((p_614->g_507 = (safe_sub_func_uint16_t_u_u((safe_add_func_int16_t_s_s(p_19, ((safe_lshift_func_int8_t_s_u(0x77L, 7)) ^ ((VECTOR(uint64_t, 2))(l_485.s62)).lo))), ((++p_614->g_296.y) != (((VECTOR(uint8_t, 16))(add_sat(((VECTOR(uint8_t, 2))(mad_sat(((VECTOR(uint8_t, 16))(0x36L, ((VECTOR(uint8_t, 4))(((l_443 = p_18) == (+(*p_21))), ((VECTOR(uint8_t, 2))(1UL, 0x7FL)), 249UL)), ((VECTOR(uint8_t, 8))(p_614->g_490.s12776125)), ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(0x3EL, 255UL)))), 9UL)).sa6, ((VECTOR(uint8_t, 2))(l_491.zz)), ((VECTOR(uint8_t, 8))(p_614->g_492.yxxxyxxx)).s12))).xyxyxxxxyyyxxxyy, ((VECTOR(uint8_t, 8))(min(((VECTOR(uint8_t, 16))(mad_sat(((VECTOR(uint8_t, 2))(hadd(((VECTOR(uint8_t, 4))(((((((safe_mod_func_uint16_t_u_u(((safe_sub_func_uint16_t_u_u((FAKE_DIVERGE(p_614->group_2_offset, get_group_id(2), 10) , (safe_unary_minus_func_uint64_t_u(p_614->g_191.s1))), p_19)) < ((*l_504) = (&l_449 == (void*)0))), ((VECTOR(uint16_t, 2))(rotate(((VECTOR(uint16_t, 8))(p_614->g_505.sfa51595a)).s60, ((VECTOR(uint16_t, 16))(l_506.s6af3cc06d9d3b925)).s3c))).lo)) | (p_18 = ((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(0x5AD7E6CFL, 0L, ((p_614->g_202 >= p_614->g_468.s6) != l_485.s6), ((VECTOR(int32_t, 2))(0x78FCD13FL)), 1L, (-5L), 0L)).s73)).yxyyxxxyyxyxxyxx, ((VECTOR(int32_t, 16))(0x1DFF9EA6L))))).s30)), ((VECTOR(int32_t, 2))(1L))))).odd)) >= p_17) , 0x7561F73EL) ^ l_485.s2) != 0x107D789DL), ((VECTOR(uint8_t, 2))(0x16L)), 0x8EL)).even, ((VECTOR(uint8_t, 2))(252UL))))).yxxyyxyyxxyxxyxx, ((VECTOR(uint8_t, 16))(246UL)), ((VECTOR(uint8_t, 16))(0xCCL))))).lo, (uint8_t)p_19))).s6566667735470132))).sa != p_614->g_364.s3))))) , 0x28L), p_17));
                }
            }
            p_614->g_512++;
        }
        for (l_386 = 0; (l_386 >= 18); ++l_386)
        { /* block id: 203 */
            int16_t l_520 = 0L;
            int32_t l_522 = (-1L);
            for (p_614->g_507 = (-9); (p_614->g_507 > 15); p_614->g_507 = safe_add_func_uint32_t_u_u(p_614->g_507, 9))
            { /* block id: 206 */
                int32_t **l_519 = &p_614->g_149[5];
                (*l_519) = &p_18;
                l_520 = 0L;
                (*l_519) = func_43((p_614->g_comm_values[p_614->tid] , (l_522 ^= ((VECTOR(uint8_t, 4))(p_614->g_521.s0959)).z)), l_473.x, p_614);
            }
            if ((*p_21))
                break;
        }
    }
    return l_523;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t  func_24(int64_t  p_25, struct S0 * p_614)
{ /* block id: 10 */
    int64_t l_26[10] = {0x238D06721F7D9671L,1L,0x5AA05D76270E7AD5L,1L,0x238D06721F7D9671L,0x238D06721F7D9671L,1L,0x5AA05D76270E7AD5L,1L,0x238D06721F7D9671L};
    int32_t l_27 = 0L;
    int8_t l_28[9][5][5] = {{{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L}},{{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L}},{{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L}},{{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L}},{{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L}},{{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L}},{{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L}},{{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L}},{{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L},{0x0DL,0x7CL,8L,0x11L,0x48L}}};
    int i, j, k;
    l_27 = l_26[9];
    return l_28[7][4][3];
}


/* ------------------------------------------ */
/* 
 * reads : p_614->g_81 p_614->g_2 p_614->g_88 p_614->g_67 p_614->g_59 p_614->g_80 p_614->l_comm_values p_614->g_89 p_614->g_comm_values p_614->g_144 p_614->g_30 p_614->g_149
 * writes: p_614->g_81 p_614->g_144 p_614->g_149 p_614->g_157 p_614->g_162 p_614->g_2
 */
int32_t * func_43(uint8_t  p_44, int8_t  p_45, struct S0 * p_614)
{ /* block id: 36 */
    int32_t *l_96 = (void*)0;
    int32_t *l_97 = (void*)0;
    int32_t *l_98 = (void*)0;
    int32_t *l_99 = &p_614->g_2;
    int32_t *l_100 = &p_614->g_2;
    int32_t *l_101 = (void*)0;
    int32_t *l_102 = (void*)0;
    int32_t *l_103 = &p_614->g_2;
    int32_t *l_104 = &p_614->g_2;
    int32_t l_105 = 0L;
    int32_t l_106 = 0x4A39D249L;
    int32_t *l_107[6][8][3] = {{{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106}},{{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106}},{{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106}},{{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106}},{{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106}},{{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106},{&l_105,&p_614->g_2,&l_106}}};
    uint64_t l_108[3][1];
    int64_t *l_117 = &p_614->g_30;
    int i, j, k;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
            l_108[i][j] = 0x0CDDF05FF3C1E06DL;
    }
    ++l_108[2][0];
    l_100 = func_111((safe_rshift_func_uint16_t_u_u(func_115(l_117, p_614), 10)), p_614);
    return &p_614->g_2;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int64_t * func_70(int32_t  p_71, int8_t  p_72, int32_t * p_73, uint32_t  p_74, int32_t  p_75, struct S0 * p_614)
{ /* block id: 34 */
    int64_t *l_95[6][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
    int i, j;
    return l_95[0][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_614->g_comm_values p_614->g_2 p_614->g_80 p_614->g_81 p_614->g_30 p_614->g_89
 * writes: p_614->g_2 p_614->g_81
 */
int32_t  func_76(uint32_t  p_77, int16_t * p_78, int32_t * p_79, struct S0 * p_614)
{ /* block id: 27 */
    VECTOR(int16_t, 2) l_82 = (VECTOR(int16_t, 2))(1L, 0x233EL);
    VECTOR(int16_t, 16) l_83 = (VECTOR(int16_t, 16))((-4L), (VECTOR(int16_t, 4))((-4L), (VECTOR(int16_t, 2))((-4L), (-1L)), (-1L)), (-1L), (-4L), (-1L), (VECTOR(int16_t, 2))((-4L), (-1L)), (VECTOR(int16_t, 2))((-4L), (-1L)), (-4L), (-1L), (-4L), (-1L));
    int32_t *l_84 = &p_614->g_2;
    uint8_t *l_87[5] = {&p_614->g_88,&p_614->g_88,&p_614->g_88,&p_614->g_88,&p_614->g_88};
    uint8_t l_90 = 0xCEL;
    int32_t *l_91 = (void*)0;
    int32_t *l_92 = (void*)0;
    int32_t *l_93[1][6][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
    int32_t l_94 = 0x4337E5C3L;
    int i, j, k;
    p_614->g_2 = (p_614->g_comm_values[p_614->tid] ^ p_614->g_2);
    p_614->g_81 |= ((*p_79) = ((VECTOR(int32_t, 4))(p_614->g_80.yyyy)).x);
    l_94 = (((VECTOR(int16_t, 16))(p_77, 0x5CA0L, 9L, ((VECTOR(int16_t, 2))(l_82.yy)), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(max(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(add_sat(((VECTOR(int16_t, 2))(l_83.sf7)).xxxxxxyx, ((VECTOR(int16_t, 8))((p_77 , (((void*)0 != l_84) || (safe_div_func_uint8_t_u_u(p_77, ((*l_84) = p_614->g_30))))), 0x3986L, (-1L), 0x7EA6L, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(p_614->g_89.xx)), 0x6600L, 1L))))))).s5343715075717154)), ((VECTOR(int16_t, 16))((~(p_77 , p_614->g_2)), (-6L), 0x0CA4L, 0x4FFAL, 1L, ((VECTOR(int16_t, 8))((-1L))), 9L, 0L, 0x4618L))))).s20e1)), ((VECTOR(int16_t, 2))(0x00F8L)), p_77, 1L, ((VECTOR(int16_t, 2))(0x0671L)), 0x7FEBL)).s3 | l_90);
    return p_77;
}


/* ------------------------------------------ */
/* 
 * reads : p_614->g_2
 * writes: p_614->g_2
 */
int32_t * func_111(uint16_t  p_112, struct S0 * p_614)
{ /* block id: 55 */
    uint64_t **l_163 = (void*)0;
    uint64_t *l_164[4] = {&p_614->g_162,&p_614->g_162,&p_614->g_162,&p_614->g_162};
    int32_t *l_165 = (void*)0;
    int32_t *l_166 = &p_614->g_2;
    int32_t *l_167[8];
    int16_t l_168[6][6] = {{9L,3L,3L,9L,9L,3L},{9L,3L,3L,9L,9L,3L},{9L,3L,3L,9L,9L,3L},{9L,3L,3L,9L,9L,3L},{9L,3L,3L,9L,9L,3L},{9L,3L,3L,9L,9L,3L}};
    int i, j;
    for (i = 0; i < 8; i++)
        l_167[i] = (void*)0;
    l_168[0][3] ^= ((*l_166) ^= (((l_164[0] = &p_614->g_162) != &p_614->g_162) <= p_112));
    return &p_614->g_2;
}


/* ------------------------------------------ */
/* 
 * reads : p_614->g_81 p_614->g_2 p_614->g_88 p_614->g_67 p_614->g_59 p_614->g_80 p_614->l_comm_values p_614->g_89 p_614->g_comm_values p_614->g_144 p_614->g_30 p_614->g_149
 * writes: p_614->g_81 p_614->g_144 p_614->g_149 p_614->g_157 p_614->g_162
 */
uint16_t  func_115(int64_t * p_116, struct S0 * p_614)
{ /* block id: 38 */
    VECTOR(int32_t, 2) l_121 = (VECTOR(int32_t, 2))(0x2B6B2BBDL, (-2L));
    VECTOR(int32_t, 2) l_122 = (VECTOR(int32_t, 2))(0x3959C9A8L, 0x25491B97L);
    uint8_t l_139 = 0x07L;
    int i;
    for (p_614->g_81 = 15; (p_614->g_81 <= 60); p_614->g_81 = safe_add_func_uint64_t_u_u(p_614->g_81, 3))
    { /* block id: 41 */
        int32_t l_120 = 0x23B5FEB6L;
        int32_t *l_140[4][9][5] = {{{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0},{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0},{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0},{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0},{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0},{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0},{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0},{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0},{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0}},{{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0},{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0},{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0},{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0},{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0},{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0},{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0},{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0},{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0}},{{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0},{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0},{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0},{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0},{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0},{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0},{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0},{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0},{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0}},{{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0},{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0},{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0},{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0},{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0},{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0},{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0},{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0},{&p_614->g_2,(void*)0,(void*)0,(void*)0,(void*)0}}};
        uint32_t *l_143 = (void*)0;
        uint32_t *l_145 = (void*)0;
        uint32_t *l_146 = (void*)0;
        uint32_t *l_147[1][4] = {{(void*)0,(void*)0,(void*)0,(void*)0}};
        VECTOR(int8_t, 8) l_154 = (VECTOR(int8_t, 8))(4L, (VECTOR(int8_t, 4))(4L, (VECTOR(int8_t, 2))(4L, 0x3FL), 0x3FL), 0x3FL, 4L, 0x3FL);
        int i, j, k;
        if (((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(sub_sat(((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(3L, 0x2F31D0C9L)), 0L, 0x7329A516L)).odd, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(0x60D3EF50L, l_120, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 2))(0x3E54454DL, 0x650A2DCCL)), ((VECTOR(int32_t, 16))(sub_sat(((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 2))(1L, (-1L))).xyyyyyxxxxyyyyxy, ((VECTOR(int32_t, 8))(l_121.yyyyyxyy)).s6324341400120724))), ((VECTOR(int32_t, 8))(l_122.xxxxyxxx)).s3756614704641574))).sc9))).yyxxyxyx)), 8L, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((p_614->g_2 < ((p_614->g_144.x &= (safe_mod_func_int8_t_s_s((safe_mod_func_int8_t_s_s(p_614->g_88, (safe_div_func_uint32_t_u_u((safe_sub_func_uint32_t_u_u(4294967295UL, ((safe_sub_func_int8_t_s_s((safe_mul_func_int16_t_s_s((safe_mul_func_int8_t_s_s(4L, (1L == ((safe_lshift_func_uint8_t_u_u(((GROUP_DIVERGE(2, 1) , ((l_122.y = l_139) < (((-6L) <= (p_614->g_67.s2 >= p_614->g_59.x)) && 0L))) >= p_614->g_80.y), p_614->l_comm_values[(safe_mod_func_uint32_t_u_u(p_614->tid, 1))])) <= p_614->g_89.w)))), 0UL)), 0x77L)) > 0x9044EA99L))), GROUP_DIVERGE(0, 1))))), p_614->g_comm_values[p_614->tid]))) | p_614->g_30)) , (-1L)), l_122.x, ((VECTOR(int32_t, 8))(0x66B1BB55L)), ((VECTOR(int32_t, 4))(0x0CF9BFE5L)), (-10L), 5L)).s0dfd)), (-1L))).even)).s17))).xyyyyxyyxyxxxxxx, ((VECTOR(int32_t, 16))(4L))))))).sc)
        { /* block id: 44 */
            int32_t **l_148[6];
            int i;
            for (i = 0; i < 6; i++)
                l_148[i] = &l_140[1][0][2];
            p_614->g_149[4] = &p_614->g_2;
        }
        else
        { /* block id: 46 */
            uint32_t *l_158 = (void*)0;
            int32_t l_159 = 0L;
            int32_t l_160 = 0x1C3764CFL;
            uint64_t *l_161 = &p_614->g_162;
            l_159 = (0L & (p_614->g_144.y <= (((*l_161) = (((((VECTOR(uint64_t, 4))(1UL, (&p_614->g_88 == (void*)0), 0x22A015E9F7B3F395L, 1UL)).x , (safe_add_func_uint32_t_u_u((safe_mul_func_uint8_t_u_u(p_614->g_67.s6, ((VECTOR(int8_t, 4))(l_154.s4243)).w)), (l_160 ^= (((((safe_mul_func_int16_t_s_s((p_614->g_149[6] == ((p_614->g_157 = ((p_614->g_comm_values[p_614->tid] == p_614->g_81) <= (*p_116))) , l_158)), p_614->g_89.y)) || 9L) || l_159) == FAKE_DIVERGE(p_614->local_2_offset, get_local_id(2), 10)) < 0x0C2B2746L))))) ^ 0UL) || p_614->g_80.x)) >= p_614->g_80.x)));
        }
        return p_614->g_80.x;
    }
    return l_121.y;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_comm_values[i] = 1;
    struct S0 c_615;
    struct S0* p_614 = &c_615;
    struct S0 c_616 = {
        0x794964A5L, // p_614->g_2
        0x1E2CD8491F199E1FL, // p_614->g_30
        18446744073709551611UL, // p_614->g_40
        (VECTOR(int16_t, 2))((-10L), (-1L)), // p_614->g_59
        (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, (-10L)), (-10L)), (-10L), 0L, (-10L), (VECTOR(int16_t, 2))(0L, (-10L)), (VECTOR(int16_t, 2))(0L, (-10L)), 0L, (-10L), 0L, (-10L)), // p_614->g_67
        (VECTOR(int32_t, 2))((-7L), 0L), // p_614->g_80
        0xDC13529CL, // p_614->g_81
        0xF9L, // p_614->g_88
        (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x5AACL), 0x5AACL), // p_614->g_89
        (VECTOR(uint32_t, 2))(0x71EFC389L, 0x6E62E55AL), // p_614->g_144
        {&p_614->g_2,&p_614->g_2,&p_614->g_2,&p_614->g_2,&p_614->g_2,&p_614->g_2,&p_614->g_2,&p_614->g_2}, // p_614->g_149
        0xBDL, // p_614->g_157
        18446744073709551614UL, // p_614->g_162
        (void*)0, // p_614->g_169
        (void*)0, // p_614->g_181
        (VECTOR(int32_t, 8))(0x12CFC969L, (VECTOR(int32_t, 4))(0x12CFC969L, (VECTOR(int32_t, 2))(0x12CFC969L, (-10L)), (-10L)), (-10L), 0x12CFC969L, (-10L)), // p_614->g_191
        4294967292UL, // p_614->g_202
        (VECTOR(uint16_t, 16))(6UL, (VECTOR(uint16_t, 4))(6UL, (VECTOR(uint16_t, 2))(6UL, 0UL), 0UL), 0UL, 6UL, 0UL, (VECTOR(uint16_t, 2))(6UL, 0UL), (VECTOR(uint16_t, 2))(6UL, 0UL), 6UL, 0UL, 6UL, 0UL), // p_614->g_214
        0UL, // p_614->g_217
        (void*)0, // p_614->g_263
        &p_614->g_149[0], // p_614->g_266
        (void*)0, // p_614->g_271
        &p_614->g_271, // p_614->g_270
        (VECTOR(int16_t, 8))(0x2EAEL, (VECTOR(int16_t, 4))(0x2EAEL, (VECTOR(int16_t, 2))(0x2EAEL, 1L), 1L), 1L, 0x2EAEL, 1L), // p_614->g_274
        (VECTOR(int64_t, 2))(0x597D7729DA96A55CL, 0x6E4B26791B0A4C5BL), // p_614->g_277
        (VECTOR(int64_t, 16))(0x239968E064FD85A1L, (VECTOR(int64_t, 4))(0x239968E064FD85A1L, (VECTOR(int64_t, 2))(0x239968E064FD85A1L, 0x7F7DCAAD0FF3DFD6L), 0x7F7DCAAD0FF3DFD6L), 0x7F7DCAAD0FF3DFD6L, 0x239968E064FD85A1L, 0x7F7DCAAD0FF3DFD6L, (VECTOR(int64_t, 2))(0x239968E064FD85A1L, 0x7F7DCAAD0FF3DFD6L), (VECTOR(int64_t, 2))(0x239968E064FD85A1L, 0x7F7DCAAD0FF3DFD6L), 0x239968E064FD85A1L, 0x7F7DCAAD0FF3DFD6L, 0x239968E064FD85A1L, 0x7F7DCAAD0FF3DFD6L), // p_614->g_292
        (VECTOR(int16_t, 16))(8L, (VECTOR(int16_t, 4))(8L, (VECTOR(int16_t, 2))(8L, 3L), 3L), 3L, 8L, 3L, (VECTOR(int16_t, 2))(8L, 3L), (VECTOR(int16_t, 2))(8L, 3L), 8L, 3L, 8L, 3L), // p_614->g_295
        (VECTOR(uint16_t, 2))(0x8873L, 0xE5C4L), // p_614->g_296
        &p_614->g_2, // p_614->g_300
        (VECTOR(uint8_t, 2))(0xC2L, 255UL), // p_614->g_326
        (void*)0, // p_614->g_342
        (VECTOR(uint64_t, 8))(8UL, (VECTOR(uint64_t, 4))(8UL, (VECTOR(uint64_t, 2))(8UL, 0x00588CF05EA7E4DCL), 0x00588CF05EA7E4DCL), 0x00588CF05EA7E4DCL, 8UL, 0x00588CF05EA7E4DCL), // p_614->g_355
        (VECTOR(uint64_t, 2))(1UL, 0x339CE0BAE9B3C30FL), // p_614->g_363
        (VECTOR(int8_t, 8))((-2L), (VECTOR(int8_t, 4))((-2L), (VECTOR(int8_t, 2))((-2L), 0x7DL), 0x7DL), 0x7DL, (-2L), 0x7DL), // p_614->g_364
        &p_614->g_88, // p_614->g_377
        {&p_614->g_377}, // p_614->g_376
        (VECTOR(int16_t, 8))(0x7ADEL, (VECTOR(int16_t, 4))(0x7ADEL, (VECTOR(int16_t, 2))(0x7ADEL, (-6L)), (-6L)), (-6L), 0x7ADEL, (-6L)), // p_614->g_454
        (VECTOR(int16_t, 2))((-9L), 0x5B54L), // p_614->g_455
        (VECTOR(uint8_t, 16))(3UL, (VECTOR(uint8_t, 4))(3UL, (VECTOR(uint8_t, 2))(3UL, 0xE9L), 0xE9L), 0xE9L, 3UL, 0xE9L, (VECTOR(uint8_t, 2))(3UL, 0xE9L), (VECTOR(uint8_t, 2))(3UL, 0xE9L), 3UL, 0xE9L, 3UL, 0xE9L), // p_614->g_463
        (VECTOR(int16_t, 8))(0x281FL, (VECTOR(int16_t, 4))(0x281FL, (VECTOR(int16_t, 2))(0x281FL, 1L), 1L), 1L, 0x281FL, 1L), // p_614->g_468
        (VECTOR(uint8_t, 8))(0x40L, (VECTOR(uint8_t, 4))(0x40L, (VECTOR(uint8_t, 2))(0x40L, 1UL), 1UL), 1UL, 0x40L, 1UL), // p_614->g_490
        (VECTOR(uint8_t, 2))(0x12L, 0x56L), // p_614->g_492
        (VECTOR(uint16_t, 16))(8UL, (VECTOR(uint16_t, 4))(8UL, (VECTOR(uint16_t, 2))(8UL, 65535UL), 65535UL), 65535UL, 8UL, 65535UL, (VECTOR(uint16_t, 2))(8UL, 65535UL), (VECTOR(uint16_t, 2))(8UL, 65535UL), 8UL, 65535UL, 8UL, 65535UL), // p_614->g_505
        0x70L, // p_614->g_507
        1UL, // p_614->g_512
        (VECTOR(uint8_t, 16))(0xBBL, (VECTOR(uint8_t, 4))(0xBBL, (VECTOR(uint8_t, 2))(0xBBL, 8UL), 8UL), 8UL, 0xBBL, 8UL, (VECTOR(uint8_t, 2))(0xBBL, 8UL), (VECTOR(uint8_t, 2))(0xBBL, 8UL), 0xBBL, 8UL, 0xBBL, 8UL), // p_614->g_521
        (VECTOR(int8_t, 16))(0x07L, (VECTOR(int8_t, 4))(0x07L, (VECTOR(int8_t, 2))(0x07L, 0x7AL), 0x7AL), 0x7AL, 0x07L, 0x7AL, (VECTOR(int8_t, 2))(0x07L, 0x7AL), (VECTOR(int8_t, 2))(0x07L, 0x7AL), 0x07L, 0x7AL, 0x07L, 0x7AL), // p_614->g_526
        0x4CL, // p_614->g_539
        {&p_614->g_539,&p_614->g_539}, // p_614->g_538
        {{{&p_614->g_538[0]},{&p_614->g_538[0]},{&p_614->g_538[0]},{&p_614->g_538[0]},{&p_614->g_538[0]},{&p_614->g_538[0]},{&p_614->g_538[0]},{&p_614->g_538[0]},{&p_614->g_538[0]},{&p_614->g_538[0]}},{{&p_614->g_538[0]},{&p_614->g_538[0]},{&p_614->g_538[0]},{&p_614->g_538[0]},{&p_614->g_538[0]},{&p_614->g_538[0]},{&p_614->g_538[0]},{&p_614->g_538[0]},{&p_614->g_538[0]},{&p_614->g_538[0]}}}, // p_614->g_537
        (VECTOR(uint8_t, 4))(253UL, (VECTOR(uint8_t, 2))(253UL, 0xD3L), 0xD3L), // p_614->g_542
        (VECTOR(uint64_t, 16))(18446744073709551607UL, (VECTOR(uint64_t, 4))(18446744073709551607UL, (VECTOR(uint64_t, 2))(18446744073709551607UL, 8UL), 8UL), 8UL, 18446744073709551607UL, 8UL, (VECTOR(uint64_t, 2))(18446744073709551607UL, 8UL), (VECTOR(uint64_t, 2))(18446744073709551607UL, 8UL), 18446744073709551607UL, 8UL, 18446744073709551607UL, 8UL), // p_614->g_549
        (VECTOR(uint64_t, 8))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 18446744073709551607UL), 18446744073709551607UL), 18446744073709551607UL, 0UL, 18446744073709551607UL), // p_614->g_550
        0x3FL, // p_614->g_552
        (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0xC9L), 0xC9L), 0xC9L, 0UL, 0xC9L, (VECTOR(uint8_t, 2))(0UL, 0xC9L), (VECTOR(uint8_t, 2))(0UL, 0xC9L), 0UL, 0xC9L, 0UL, 0xC9L), // p_614->g_556
        (VECTOR(int64_t, 4))(0x6F50153A059726C0L, (VECTOR(int64_t, 2))(0x6F50153A059726C0L, (-8L)), (-8L)), // p_614->g_557
        (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x52L), 0x52L), 0x52L, 0L, 0x52L, (VECTOR(int8_t, 2))(0L, 0x52L), (VECTOR(int8_t, 2))(0L, 0x52L), 0L, 0x52L, 0L, 0x52L), // p_614->g_589
        &p_614->g_149[4], // p_614->g_604
        {{{&p_614->g_263,&p_614->g_263,&p_614->g_263,&p_614->g_263,(void*)0,(void*)0,&p_614->g_263,&p_614->g_263,&p_614->g_263,(void*)0},{&p_614->g_263,&p_614->g_263,&p_614->g_263,&p_614->g_263,(void*)0,(void*)0,&p_614->g_263,&p_614->g_263,&p_614->g_263,(void*)0}},{{&p_614->g_263,&p_614->g_263,&p_614->g_263,&p_614->g_263,(void*)0,(void*)0,&p_614->g_263,&p_614->g_263,&p_614->g_263,(void*)0},{&p_614->g_263,&p_614->g_263,&p_614->g_263,&p_614->g_263,(void*)0,(void*)0,&p_614->g_263,&p_614->g_263,&p_614->g_263,(void*)0}},{{&p_614->g_263,&p_614->g_263,&p_614->g_263,&p_614->g_263,(void*)0,(void*)0,&p_614->g_263,&p_614->g_263,&p_614->g_263,(void*)0},{&p_614->g_263,&p_614->g_263,&p_614->g_263,&p_614->g_263,(void*)0,(void*)0,&p_614->g_263,&p_614->g_263,&p_614->g_263,(void*)0}},{{&p_614->g_263,&p_614->g_263,&p_614->g_263,&p_614->g_263,(void*)0,(void*)0,&p_614->g_263,&p_614->g_263,&p_614->g_263,(void*)0},{&p_614->g_263,&p_614->g_263,&p_614->g_263,&p_614->g_263,(void*)0,(void*)0,&p_614->g_263,&p_614->g_263,&p_614->g_263,(void*)0}},{{&p_614->g_263,&p_614->g_263,&p_614->g_263,&p_614->g_263,(void*)0,(void*)0,&p_614->g_263,&p_614->g_263,&p_614->g_263,(void*)0},{&p_614->g_263,&p_614->g_263,&p_614->g_263,&p_614->g_263,(void*)0,(void*)0,&p_614->g_263,&p_614->g_263,&p_614->g_263,(void*)0}}}, // p_614->g_612
        0, // p_614->v_collective
        sequence_input[get_global_id(0)], // p_614->global_0_offset
        sequence_input[get_global_id(1)], // p_614->global_1_offset
        sequence_input[get_global_id(2)], // p_614->global_2_offset
        sequence_input[get_local_id(0)], // p_614->local_0_offset
        sequence_input[get_local_id(1)], // p_614->local_1_offset
        sequence_input[get_local_id(2)], // p_614->local_2_offset
        sequence_input[get_group_id(0)], // p_614->group_0_offset
        sequence_input[get_group_id(1)], // p_614->group_1_offset
        sequence_input[get_group_id(2)], // p_614->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 1)), permutations[0][get_linear_local_id()])), // p_614->tid
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_615 = c_616;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_614);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_614->g_2, "p_614->g_2", print_hash_value);
    transparent_crc(p_614->g_30, "p_614->g_30", print_hash_value);
    transparent_crc(p_614->g_40, "p_614->g_40", print_hash_value);
    transparent_crc(p_614->g_59.x, "p_614->g_59.x", print_hash_value);
    transparent_crc(p_614->g_59.y, "p_614->g_59.y", print_hash_value);
    transparent_crc(p_614->g_67.s0, "p_614->g_67.s0", print_hash_value);
    transparent_crc(p_614->g_67.s1, "p_614->g_67.s1", print_hash_value);
    transparent_crc(p_614->g_67.s2, "p_614->g_67.s2", print_hash_value);
    transparent_crc(p_614->g_67.s3, "p_614->g_67.s3", print_hash_value);
    transparent_crc(p_614->g_67.s4, "p_614->g_67.s4", print_hash_value);
    transparent_crc(p_614->g_67.s5, "p_614->g_67.s5", print_hash_value);
    transparent_crc(p_614->g_67.s6, "p_614->g_67.s6", print_hash_value);
    transparent_crc(p_614->g_67.s7, "p_614->g_67.s7", print_hash_value);
    transparent_crc(p_614->g_67.s8, "p_614->g_67.s8", print_hash_value);
    transparent_crc(p_614->g_67.s9, "p_614->g_67.s9", print_hash_value);
    transparent_crc(p_614->g_67.sa, "p_614->g_67.sa", print_hash_value);
    transparent_crc(p_614->g_67.sb, "p_614->g_67.sb", print_hash_value);
    transparent_crc(p_614->g_67.sc, "p_614->g_67.sc", print_hash_value);
    transparent_crc(p_614->g_67.sd, "p_614->g_67.sd", print_hash_value);
    transparent_crc(p_614->g_67.se, "p_614->g_67.se", print_hash_value);
    transparent_crc(p_614->g_67.sf, "p_614->g_67.sf", print_hash_value);
    transparent_crc(p_614->g_80.x, "p_614->g_80.x", print_hash_value);
    transparent_crc(p_614->g_80.y, "p_614->g_80.y", print_hash_value);
    transparent_crc(p_614->g_81, "p_614->g_81", print_hash_value);
    transparent_crc(p_614->g_88, "p_614->g_88", print_hash_value);
    transparent_crc(p_614->g_89.x, "p_614->g_89.x", print_hash_value);
    transparent_crc(p_614->g_89.y, "p_614->g_89.y", print_hash_value);
    transparent_crc(p_614->g_89.z, "p_614->g_89.z", print_hash_value);
    transparent_crc(p_614->g_89.w, "p_614->g_89.w", print_hash_value);
    transparent_crc(p_614->g_144.x, "p_614->g_144.x", print_hash_value);
    transparent_crc(p_614->g_144.y, "p_614->g_144.y", print_hash_value);
    transparent_crc(p_614->g_157, "p_614->g_157", print_hash_value);
    transparent_crc(p_614->g_162, "p_614->g_162", print_hash_value);
    transparent_crc(p_614->g_191.s0, "p_614->g_191.s0", print_hash_value);
    transparent_crc(p_614->g_191.s1, "p_614->g_191.s1", print_hash_value);
    transparent_crc(p_614->g_191.s2, "p_614->g_191.s2", print_hash_value);
    transparent_crc(p_614->g_191.s3, "p_614->g_191.s3", print_hash_value);
    transparent_crc(p_614->g_191.s4, "p_614->g_191.s4", print_hash_value);
    transparent_crc(p_614->g_191.s5, "p_614->g_191.s5", print_hash_value);
    transparent_crc(p_614->g_191.s6, "p_614->g_191.s6", print_hash_value);
    transparent_crc(p_614->g_191.s7, "p_614->g_191.s7", print_hash_value);
    transparent_crc(p_614->g_202, "p_614->g_202", print_hash_value);
    transparent_crc(p_614->g_214.s0, "p_614->g_214.s0", print_hash_value);
    transparent_crc(p_614->g_214.s1, "p_614->g_214.s1", print_hash_value);
    transparent_crc(p_614->g_214.s2, "p_614->g_214.s2", print_hash_value);
    transparent_crc(p_614->g_214.s3, "p_614->g_214.s3", print_hash_value);
    transparent_crc(p_614->g_214.s4, "p_614->g_214.s4", print_hash_value);
    transparent_crc(p_614->g_214.s5, "p_614->g_214.s5", print_hash_value);
    transparent_crc(p_614->g_214.s6, "p_614->g_214.s6", print_hash_value);
    transparent_crc(p_614->g_214.s7, "p_614->g_214.s7", print_hash_value);
    transparent_crc(p_614->g_214.s8, "p_614->g_214.s8", print_hash_value);
    transparent_crc(p_614->g_214.s9, "p_614->g_214.s9", print_hash_value);
    transparent_crc(p_614->g_214.sa, "p_614->g_214.sa", print_hash_value);
    transparent_crc(p_614->g_214.sb, "p_614->g_214.sb", print_hash_value);
    transparent_crc(p_614->g_214.sc, "p_614->g_214.sc", print_hash_value);
    transparent_crc(p_614->g_214.sd, "p_614->g_214.sd", print_hash_value);
    transparent_crc(p_614->g_214.se, "p_614->g_214.se", print_hash_value);
    transparent_crc(p_614->g_214.sf, "p_614->g_214.sf", print_hash_value);
    transparent_crc(p_614->g_217, "p_614->g_217", print_hash_value);
    transparent_crc(p_614->g_274.s0, "p_614->g_274.s0", print_hash_value);
    transparent_crc(p_614->g_274.s1, "p_614->g_274.s1", print_hash_value);
    transparent_crc(p_614->g_274.s2, "p_614->g_274.s2", print_hash_value);
    transparent_crc(p_614->g_274.s3, "p_614->g_274.s3", print_hash_value);
    transparent_crc(p_614->g_274.s4, "p_614->g_274.s4", print_hash_value);
    transparent_crc(p_614->g_274.s5, "p_614->g_274.s5", print_hash_value);
    transparent_crc(p_614->g_274.s6, "p_614->g_274.s6", print_hash_value);
    transparent_crc(p_614->g_274.s7, "p_614->g_274.s7", print_hash_value);
    transparent_crc(p_614->g_277.x, "p_614->g_277.x", print_hash_value);
    transparent_crc(p_614->g_277.y, "p_614->g_277.y", print_hash_value);
    transparent_crc(p_614->g_292.s0, "p_614->g_292.s0", print_hash_value);
    transparent_crc(p_614->g_292.s1, "p_614->g_292.s1", print_hash_value);
    transparent_crc(p_614->g_292.s2, "p_614->g_292.s2", print_hash_value);
    transparent_crc(p_614->g_292.s3, "p_614->g_292.s3", print_hash_value);
    transparent_crc(p_614->g_292.s4, "p_614->g_292.s4", print_hash_value);
    transparent_crc(p_614->g_292.s5, "p_614->g_292.s5", print_hash_value);
    transparent_crc(p_614->g_292.s6, "p_614->g_292.s6", print_hash_value);
    transparent_crc(p_614->g_292.s7, "p_614->g_292.s7", print_hash_value);
    transparent_crc(p_614->g_292.s8, "p_614->g_292.s8", print_hash_value);
    transparent_crc(p_614->g_292.s9, "p_614->g_292.s9", print_hash_value);
    transparent_crc(p_614->g_292.sa, "p_614->g_292.sa", print_hash_value);
    transparent_crc(p_614->g_292.sb, "p_614->g_292.sb", print_hash_value);
    transparent_crc(p_614->g_292.sc, "p_614->g_292.sc", print_hash_value);
    transparent_crc(p_614->g_292.sd, "p_614->g_292.sd", print_hash_value);
    transparent_crc(p_614->g_292.se, "p_614->g_292.se", print_hash_value);
    transparent_crc(p_614->g_292.sf, "p_614->g_292.sf", print_hash_value);
    transparent_crc(p_614->g_295.s0, "p_614->g_295.s0", print_hash_value);
    transparent_crc(p_614->g_295.s1, "p_614->g_295.s1", print_hash_value);
    transparent_crc(p_614->g_295.s2, "p_614->g_295.s2", print_hash_value);
    transparent_crc(p_614->g_295.s3, "p_614->g_295.s3", print_hash_value);
    transparent_crc(p_614->g_295.s4, "p_614->g_295.s4", print_hash_value);
    transparent_crc(p_614->g_295.s5, "p_614->g_295.s5", print_hash_value);
    transparent_crc(p_614->g_295.s6, "p_614->g_295.s6", print_hash_value);
    transparent_crc(p_614->g_295.s7, "p_614->g_295.s7", print_hash_value);
    transparent_crc(p_614->g_295.s8, "p_614->g_295.s8", print_hash_value);
    transparent_crc(p_614->g_295.s9, "p_614->g_295.s9", print_hash_value);
    transparent_crc(p_614->g_295.sa, "p_614->g_295.sa", print_hash_value);
    transparent_crc(p_614->g_295.sb, "p_614->g_295.sb", print_hash_value);
    transparent_crc(p_614->g_295.sc, "p_614->g_295.sc", print_hash_value);
    transparent_crc(p_614->g_295.sd, "p_614->g_295.sd", print_hash_value);
    transparent_crc(p_614->g_295.se, "p_614->g_295.se", print_hash_value);
    transparent_crc(p_614->g_295.sf, "p_614->g_295.sf", print_hash_value);
    transparent_crc(p_614->g_296.x, "p_614->g_296.x", print_hash_value);
    transparent_crc(p_614->g_296.y, "p_614->g_296.y", print_hash_value);
    transparent_crc(p_614->g_326.x, "p_614->g_326.x", print_hash_value);
    transparent_crc(p_614->g_326.y, "p_614->g_326.y", print_hash_value);
    transparent_crc(p_614->g_355.s0, "p_614->g_355.s0", print_hash_value);
    transparent_crc(p_614->g_355.s1, "p_614->g_355.s1", print_hash_value);
    transparent_crc(p_614->g_355.s2, "p_614->g_355.s2", print_hash_value);
    transparent_crc(p_614->g_355.s3, "p_614->g_355.s3", print_hash_value);
    transparent_crc(p_614->g_355.s4, "p_614->g_355.s4", print_hash_value);
    transparent_crc(p_614->g_355.s5, "p_614->g_355.s5", print_hash_value);
    transparent_crc(p_614->g_355.s6, "p_614->g_355.s6", print_hash_value);
    transparent_crc(p_614->g_355.s7, "p_614->g_355.s7", print_hash_value);
    transparent_crc(p_614->g_363.x, "p_614->g_363.x", print_hash_value);
    transparent_crc(p_614->g_363.y, "p_614->g_363.y", print_hash_value);
    transparent_crc(p_614->g_364.s0, "p_614->g_364.s0", print_hash_value);
    transparent_crc(p_614->g_364.s1, "p_614->g_364.s1", print_hash_value);
    transparent_crc(p_614->g_364.s2, "p_614->g_364.s2", print_hash_value);
    transparent_crc(p_614->g_364.s3, "p_614->g_364.s3", print_hash_value);
    transparent_crc(p_614->g_364.s4, "p_614->g_364.s4", print_hash_value);
    transparent_crc(p_614->g_364.s5, "p_614->g_364.s5", print_hash_value);
    transparent_crc(p_614->g_364.s6, "p_614->g_364.s6", print_hash_value);
    transparent_crc(p_614->g_364.s7, "p_614->g_364.s7", print_hash_value);
    transparent_crc(p_614->g_454.s0, "p_614->g_454.s0", print_hash_value);
    transparent_crc(p_614->g_454.s1, "p_614->g_454.s1", print_hash_value);
    transparent_crc(p_614->g_454.s2, "p_614->g_454.s2", print_hash_value);
    transparent_crc(p_614->g_454.s3, "p_614->g_454.s3", print_hash_value);
    transparent_crc(p_614->g_454.s4, "p_614->g_454.s4", print_hash_value);
    transparent_crc(p_614->g_454.s5, "p_614->g_454.s5", print_hash_value);
    transparent_crc(p_614->g_454.s6, "p_614->g_454.s6", print_hash_value);
    transparent_crc(p_614->g_454.s7, "p_614->g_454.s7", print_hash_value);
    transparent_crc(p_614->g_455.x, "p_614->g_455.x", print_hash_value);
    transparent_crc(p_614->g_455.y, "p_614->g_455.y", print_hash_value);
    transparent_crc(p_614->g_463.s0, "p_614->g_463.s0", print_hash_value);
    transparent_crc(p_614->g_463.s1, "p_614->g_463.s1", print_hash_value);
    transparent_crc(p_614->g_463.s2, "p_614->g_463.s2", print_hash_value);
    transparent_crc(p_614->g_463.s3, "p_614->g_463.s3", print_hash_value);
    transparent_crc(p_614->g_463.s4, "p_614->g_463.s4", print_hash_value);
    transparent_crc(p_614->g_463.s5, "p_614->g_463.s5", print_hash_value);
    transparent_crc(p_614->g_463.s6, "p_614->g_463.s6", print_hash_value);
    transparent_crc(p_614->g_463.s7, "p_614->g_463.s7", print_hash_value);
    transparent_crc(p_614->g_463.s8, "p_614->g_463.s8", print_hash_value);
    transparent_crc(p_614->g_463.s9, "p_614->g_463.s9", print_hash_value);
    transparent_crc(p_614->g_463.sa, "p_614->g_463.sa", print_hash_value);
    transparent_crc(p_614->g_463.sb, "p_614->g_463.sb", print_hash_value);
    transparent_crc(p_614->g_463.sc, "p_614->g_463.sc", print_hash_value);
    transparent_crc(p_614->g_463.sd, "p_614->g_463.sd", print_hash_value);
    transparent_crc(p_614->g_463.se, "p_614->g_463.se", print_hash_value);
    transparent_crc(p_614->g_463.sf, "p_614->g_463.sf", print_hash_value);
    transparent_crc(p_614->g_468.s0, "p_614->g_468.s0", print_hash_value);
    transparent_crc(p_614->g_468.s1, "p_614->g_468.s1", print_hash_value);
    transparent_crc(p_614->g_468.s2, "p_614->g_468.s2", print_hash_value);
    transparent_crc(p_614->g_468.s3, "p_614->g_468.s3", print_hash_value);
    transparent_crc(p_614->g_468.s4, "p_614->g_468.s4", print_hash_value);
    transparent_crc(p_614->g_468.s5, "p_614->g_468.s5", print_hash_value);
    transparent_crc(p_614->g_468.s6, "p_614->g_468.s6", print_hash_value);
    transparent_crc(p_614->g_468.s7, "p_614->g_468.s7", print_hash_value);
    transparent_crc(p_614->g_490.s0, "p_614->g_490.s0", print_hash_value);
    transparent_crc(p_614->g_490.s1, "p_614->g_490.s1", print_hash_value);
    transparent_crc(p_614->g_490.s2, "p_614->g_490.s2", print_hash_value);
    transparent_crc(p_614->g_490.s3, "p_614->g_490.s3", print_hash_value);
    transparent_crc(p_614->g_490.s4, "p_614->g_490.s4", print_hash_value);
    transparent_crc(p_614->g_490.s5, "p_614->g_490.s5", print_hash_value);
    transparent_crc(p_614->g_490.s6, "p_614->g_490.s6", print_hash_value);
    transparent_crc(p_614->g_490.s7, "p_614->g_490.s7", print_hash_value);
    transparent_crc(p_614->g_492.x, "p_614->g_492.x", print_hash_value);
    transparent_crc(p_614->g_492.y, "p_614->g_492.y", print_hash_value);
    transparent_crc(p_614->g_505.s0, "p_614->g_505.s0", print_hash_value);
    transparent_crc(p_614->g_505.s1, "p_614->g_505.s1", print_hash_value);
    transparent_crc(p_614->g_505.s2, "p_614->g_505.s2", print_hash_value);
    transparent_crc(p_614->g_505.s3, "p_614->g_505.s3", print_hash_value);
    transparent_crc(p_614->g_505.s4, "p_614->g_505.s4", print_hash_value);
    transparent_crc(p_614->g_505.s5, "p_614->g_505.s5", print_hash_value);
    transparent_crc(p_614->g_505.s6, "p_614->g_505.s6", print_hash_value);
    transparent_crc(p_614->g_505.s7, "p_614->g_505.s7", print_hash_value);
    transparent_crc(p_614->g_505.s8, "p_614->g_505.s8", print_hash_value);
    transparent_crc(p_614->g_505.s9, "p_614->g_505.s9", print_hash_value);
    transparent_crc(p_614->g_505.sa, "p_614->g_505.sa", print_hash_value);
    transparent_crc(p_614->g_505.sb, "p_614->g_505.sb", print_hash_value);
    transparent_crc(p_614->g_505.sc, "p_614->g_505.sc", print_hash_value);
    transparent_crc(p_614->g_505.sd, "p_614->g_505.sd", print_hash_value);
    transparent_crc(p_614->g_505.se, "p_614->g_505.se", print_hash_value);
    transparent_crc(p_614->g_505.sf, "p_614->g_505.sf", print_hash_value);
    transparent_crc(p_614->g_507, "p_614->g_507", print_hash_value);
    transparent_crc(p_614->g_512, "p_614->g_512", print_hash_value);
    transparent_crc(p_614->g_521.s0, "p_614->g_521.s0", print_hash_value);
    transparent_crc(p_614->g_521.s1, "p_614->g_521.s1", print_hash_value);
    transparent_crc(p_614->g_521.s2, "p_614->g_521.s2", print_hash_value);
    transparent_crc(p_614->g_521.s3, "p_614->g_521.s3", print_hash_value);
    transparent_crc(p_614->g_521.s4, "p_614->g_521.s4", print_hash_value);
    transparent_crc(p_614->g_521.s5, "p_614->g_521.s5", print_hash_value);
    transparent_crc(p_614->g_521.s6, "p_614->g_521.s6", print_hash_value);
    transparent_crc(p_614->g_521.s7, "p_614->g_521.s7", print_hash_value);
    transparent_crc(p_614->g_521.s8, "p_614->g_521.s8", print_hash_value);
    transparent_crc(p_614->g_521.s9, "p_614->g_521.s9", print_hash_value);
    transparent_crc(p_614->g_521.sa, "p_614->g_521.sa", print_hash_value);
    transparent_crc(p_614->g_521.sb, "p_614->g_521.sb", print_hash_value);
    transparent_crc(p_614->g_521.sc, "p_614->g_521.sc", print_hash_value);
    transparent_crc(p_614->g_521.sd, "p_614->g_521.sd", print_hash_value);
    transparent_crc(p_614->g_521.se, "p_614->g_521.se", print_hash_value);
    transparent_crc(p_614->g_521.sf, "p_614->g_521.sf", print_hash_value);
    transparent_crc(p_614->g_526.s0, "p_614->g_526.s0", print_hash_value);
    transparent_crc(p_614->g_526.s1, "p_614->g_526.s1", print_hash_value);
    transparent_crc(p_614->g_526.s2, "p_614->g_526.s2", print_hash_value);
    transparent_crc(p_614->g_526.s3, "p_614->g_526.s3", print_hash_value);
    transparent_crc(p_614->g_526.s4, "p_614->g_526.s4", print_hash_value);
    transparent_crc(p_614->g_526.s5, "p_614->g_526.s5", print_hash_value);
    transparent_crc(p_614->g_526.s6, "p_614->g_526.s6", print_hash_value);
    transparent_crc(p_614->g_526.s7, "p_614->g_526.s7", print_hash_value);
    transparent_crc(p_614->g_526.s8, "p_614->g_526.s8", print_hash_value);
    transparent_crc(p_614->g_526.s9, "p_614->g_526.s9", print_hash_value);
    transparent_crc(p_614->g_526.sa, "p_614->g_526.sa", print_hash_value);
    transparent_crc(p_614->g_526.sb, "p_614->g_526.sb", print_hash_value);
    transparent_crc(p_614->g_526.sc, "p_614->g_526.sc", print_hash_value);
    transparent_crc(p_614->g_526.sd, "p_614->g_526.sd", print_hash_value);
    transparent_crc(p_614->g_526.se, "p_614->g_526.se", print_hash_value);
    transparent_crc(p_614->g_526.sf, "p_614->g_526.sf", print_hash_value);
    transparent_crc(p_614->g_539, "p_614->g_539", print_hash_value);
    transparent_crc(p_614->g_542.x, "p_614->g_542.x", print_hash_value);
    transparent_crc(p_614->g_542.y, "p_614->g_542.y", print_hash_value);
    transparent_crc(p_614->g_542.z, "p_614->g_542.z", print_hash_value);
    transparent_crc(p_614->g_542.w, "p_614->g_542.w", print_hash_value);
    transparent_crc(p_614->g_549.s0, "p_614->g_549.s0", print_hash_value);
    transparent_crc(p_614->g_549.s1, "p_614->g_549.s1", print_hash_value);
    transparent_crc(p_614->g_549.s2, "p_614->g_549.s2", print_hash_value);
    transparent_crc(p_614->g_549.s3, "p_614->g_549.s3", print_hash_value);
    transparent_crc(p_614->g_549.s4, "p_614->g_549.s4", print_hash_value);
    transparent_crc(p_614->g_549.s5, "p_614->g_549.s5", print_hash_value);
    transparent_crc(p_614->g_549.s6, "p_614->g_549.s6", print_hash_value);
    transparent_crc(p_614->g_549.s7, "p_614->g_549.s7", print_hash_value);
    transparent_crc(p_614->g_549.s8, "p_614->g_549.s8", print_hash_value);
    transparent_crc(p_614->g_549.s9, "p_614->g_549.s9", print_hash_value);
    transparent_crc(p_614->g_549.sa, "p_614->g_549.sa", print_hash_value);
    transparent_crc(p_614->g_549.sb, "p_614->g_549.sb", print_hash_value);
    transparent_crc(p_614->g_549.sc, "p_614->g_549.sc", print_hash_value);
    transparent_crc(p_614->g_549.sd, "p_614->g_549.sd", print_hash_value);
    transparent_crc(p_614->g_549.se, "p_614->g_549.se", print_hash_value);
    transparent_crc(p_614->g_549.sf, "p_614->g_549.sf", print_hash_value);
    transparent_crc(p_614->g_550.s0, "p_614->g_550.s0", print_hash_value);
    transparent_crc(p_614->g_550.s1, "p_614->g_550.s1", print_hash_value);
    transparent_crc(p_614->g_550.s2, "p_614->g_550.s2", print_hash_value);
    transparent_crc(p_614->g_550.s3, "p_614->g_550.s3", print_hash_value);
    transparent_crc(p_614->g_550.s4, "p_614->g_550.s4", print_hash_value);
    transparent_crc(p_614->g_550.s5, "p_614->g_550.s5", print_hash_value);
    transparent_crc(p_614->g_550.s6, "p_614->g_550.s6", print_hash_value);
    transparent_crc(p_614->g_550.s7, "p_614->g_550.s7", print_hash_value);
    transparent_crc(p_614->g_552, "p_614->g_552", print_hash_value);
    transparent_crc(p_614->g_556.s0, "p_614->g_556.s0", print_hash_value);
    transparent_crc(p_614->g_556.s1, "p_614->g_556.s1", print_hash_value);
    transparent_crc(p_614->g_556.s2, "p_614->g_556.s2", print_hash_value);
    transparent_crc(p_614->g_556.s3, "p_614->g_556.s3", print_hash_value);
    transparent_crc(p_614->g_556.s4, "p_614->g_556.s4", print_hash_value);
    transparent_crc(p_614->g_556.s5, "p_614->g_556.s5", print_hash_value);
    transparent_crc(p_614->g_556.s6, "p_614->g_556.s6", print_hash_value);
    transparent_crc(p_614->g_556.s7, "p_614->g_556.s7", print_hash_value);
    transparent_crc(p_614->g_556.s8, "p_614->g_556.s8", print_hash_value);
    transparent_crc(p_614->g_556.s9, "p_614->g_556.s9", print_hash_value);
    transparent_crc(p_614->g_556.sa, "p_614->g_556.sa", print_hash_value);
    transparent_crc(p_614->g_556.sb, "p_614->g_556.sb", print_hash_value);
    transparent_crc(p_614->g_556.sc, "p_614->g_556.sc", print_hash_value);
    transparent_crc(p_614->g_556.sd, "p_614->g_556.sd", print_hash_value);
    transparent_crc(p_614->g_556.se, "p_614->g_556.se", print_hash_value);
    transparent_crc(p_614->g_556.sf, "p_614->g_556.sf", print_hash_value);
    transparent_crc(p_614->g_557.x, "p_614->g_557.x", print_hash_value);
    transparent_crc(p_614->g_557.y, "p_614->g_557.y", print_hash_value);
    transparent_crc(p_614->g_557.z, "p_614->g_557.z", print_hash_value);
    transparent_crc(p_614->g_557.w, "p_614->g_557.w", print_hash_value);
    transparent_crc(p_614->g_589.s0, "p_614->g_589.s0", print_hash_value);
    transparent_crc(p_614->g_589.s1, "p_614->g_589.s1", print_hash_value);
    transparent_crc(p_614->g_589.s2, "p_614->g_589.s2", print_hash_value);
    transparent_crc(p_614->g_589.s3, "p_614->g_589.s3", print_hash_value);
    transparent_crc(p_614->g_589.s4, "p_614->g_589.s4", print_hash_value);
    transparent_crc(p_614->g_589.s5, "p_614->g_589.s5", print_hash_value);
    transparent_crc(p_614->g_589.s6, "p_614->g_589.s6", print_hash_value);
    transparent_crc(p_614->g_589.s7, "p_614->g_589.s7", print_hash_value);
    transparent_crc(p_614->g_589.s8, "p_614->g_589.s8", print_hash_value);
    transparent_crc(p_614->g_589.s9, "p_614->g_589.s9", print_hash_value);
    transparent_crc(p_614->g_589.sa, "p_614->g_589.sa", print_hash_value);
    transparent_crc(p_614->g_589.sb, "p_614->g_589.sb", print_hash_value);
    transparent_crc(p_614->g_589.sc, "p_614->g_589.sc", print_hash_value);
    transparent_crc(p_614->g_589.sd, "p_614->g_589.sd", print_hash_value);
    transparent_crc(p_614->g_589.se, "p_614->g_589.se", print_hash_value);
    transparent_crc(p_614->g_589.sf, "p_614->g_589.sf", print_hash_value);
    transparent_crc(p_614->v_collective, "p_614->v_collective", print_hash_value);
    transparent_crc(p_614->l_comm_values[get_linear_local_id()], "p_614->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_614->g_comm_values[get_linear_group_id() * 1 + get_linear_local_id()], "p_614->g_comm_values[get_linear_group_id() * 1 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
