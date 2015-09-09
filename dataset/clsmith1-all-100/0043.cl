// --atomics 74 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 34,75,1 -l 2,5,1
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

__constant uint32_t permutations[10][10] = {
{1,2,6,4,8,5,0,9,3,7}, // permutation 0
{3,0,1,6,9,7,8,4,2,5}, // permutation 1
{2,3,7,0,9,6,4,1,8,5}, // permutation 2
{7,4,2,9,0,1,8,3,5,6}, // permutation 3
{5,7,3,0,2,6,1,8,9,4}, // permutation 4
{3,7,2,9,5,4,0,8,6,1}, // permutation 5
{3,0,4,5,8,6,9,2,1,7}, // permutation 6
{9,0,6,5,7,8,1,3,2,4}, // permutation 7
{8,9,4,5,0,6,2,3,1,7}, // permutation 8
{6,3,9,2,7,5,1,4,0,8} // permutation 9
};

// Seed: 43

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   int8_t * volatile  f0;
   volatile int32_t  f1;
};

union U1 {
   uint32_t  f0;
   volatile int8_t  f1;
   volatile uint64_t  f2;
   volatile int8_t * volatile  f3;
};

struct S2 {
    VECTOR(int8_t, 4) g_34;
    int8_t **g_41;
    uint32_t g_44;
    VECTOR(uint8_t, 8) g_74;
    VECTOR(uint8_t, 8) g_76;
    volatile VECTOR(uint8_t, 16) g_78;
    int32_t g_81[8][4][8];
    uint32_t g_82;
    uint8_t g_92;
    volatile VECTOR(uint16_t, 4) g_106;
    VECTOR(uint8_t, 8) g_113;
    VECTOR(uint8_t, 16) g_115;
    volatile union U0 g_118;
    VECTOR(int8_t, 8) g_137;
    int16_t g_152;
    int32_t * volatile g_156;
    int32_t g_251;
    union U1 g_255;
    int8_t ***g_260;
    uint8_t g_297;
    int32_t ** volatile g_313[4];
    int32_t *g_315;
    int32_t ** volatile g_314;
    int32_t ** volatile g_318;
    int32_t *g_322;
    volatile VECTOR(uint16_t, 4) g_333;
    volatile union U0 g_356;
    int8_t g_358;
    union U0 g_361;
    union U0 *g_360;
    union U0 * volatile *g_359;
    uint16_t g_374;
    VECTOR(uint8_t, 2) g_379;
    union U0 **g_383;
    int32_t ** volatile g_385;
    uint8_t g_388;
    uint8_t g_405;
    VECTOR(uint32_t, 4) g_408;
    volatile union U0 g_433;
    VECTOR(uint16_t, 8) g_436;
    VECTOR(uint16_t, 16) g_437;
    uint32_t g_444;
    int8_t g_447;
    int8_t *g_453;
    volatile VECTOR(uint64_t, 2) g_458;
    VECTOR(uint64_t, 16) g_459;
    VECTOR(uint64_t, 4) g_460;
    VECTOR(uint64_t, 8) g_463;
    VECTOR(uint64_t, 16) g_464;
    volatile VECTOR(uint64_t, 2) g_465;
    int32_t g_514;
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
int32_t  func_1(struct S2 * p_531);
int32_t  func_2(int8_t * p_3, struct S2 * p_531);
int32_t  func_4(int64_t  p_5, struct S2 * p_531);
int64_t  func_6(int8_t * p_7, int8_t * p_8, int64_t  p_9, int16_t  p_10, int8_t * p_11, struct S2 * p_531);
int8_t * func_12(uint32_t  p_13, int8_t * p_14, struct S2 * p_531);
int64_t  func_30(int8_t * p_31, struct S2 * p_531);
uint8_t  func_35(int8_t ** p_36, int32_t  p_37, int8_t  p_38, uint32_t  p_39, uint64_t  p_40, struct S2 * p_531);
int32_t * func_45(uint32_t  p_46, uint8_t  p_47, int8_t ** p_48, uint64_t  p_49, struct S2 * p_531);
int8_t ** func_50(uint16_t  p_51, struct S2 * p_531);
int32_t * func_53(uint16_t  p_54, int32_t * p_55, struct S2 * p_531);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_531->l_comm_values p_531->g_41 p_531->g_44 p_531->g_34 p_531->g_74 p_531->g_76 p_531->g_78 p_531->g_106 p_531->g_113 p_531->g_115 p_531->g_118 p_531->g_81 p_531->g_comm_values p_531->g_137 p_531->g_156 p_531->g_255 p_531->g_297 p_531->g_251 p_531->g_314 p_531->g_318 p_531->g_322 p_531->g_358 p_531->g_359 p_531->g_315 p_531->g_385 p_531->g_255.f0 p_531->g_388 p_531->g_405 p_531->g_408 p_531->g_260 p_531->g_82 p_531->g_433 p_531->g_436 p_531->g_437 p_531->g_447 p_531->g_453 p_531->g_458 p_531->g_459 p_531->g_460 p_531->g_463 p_531->g_464 p_531->g_465 p_531->g_374 p_531->g_360 p_531->g_361 p_531->g_379 p_531->g_152 p_531->g_514 p_531->g_92
 * writes: p_531->g_44 p_531->g_82 p_531->g_81 p_531->g_92 p_531->g_comm_values p_531->g_260 p_531->g_297 p_531->g_315 p_531->g_358 p_531->g_34 p_531->g_388 p_531->g_359 p_531->g_405 p_531->g_408 p_531->g_447 p_531->g_74 p_531->g_374 p_531->g_514
 */
int32_t  func_1(struct S2 * p_531)
{ /* block id: 4 */
    VECTOR(uint16_t, 8) l_19 = (VECTOR(uint16_t, 8))(9UL, (VECTOR(uint16_t, 4))(9UL, (VECTOR(uint16_t, 2))(9UL, 0x9B2BL), 0x9B2BL), 0x9B2BL, 9UL, 0x9B2BL);
    int8_t *l_33[3];
    int8_t **l_32 = &l_33[0];
    uint16_t *l_409 = &p_531->g_374;
    uint16_t *l_410 = &p_531->g_374;
    int8_t *l_411 = (void*)0;
    int8_t *l_452[5][4] = {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}};
    int32_t *l_525[2];
    int32_t l_526 = 0x4AF824CAL;
    int16_t l_527 = 0L;
    uint16_t l_528[4][5][4] = {{{65535UL,65535UL,0x392DL,0UL},{65535UL,65535UL,0x392DL,0UL},{65535UL,65535UL,0x392DL,0UL},{65535UL,65535UL,0x392DL,0UL},{65535UL,65535UL,0x392DL,0UL}},{{65535UL,65535UL,0x392DL,0UL},{65535UL,65535UL,0x392DL,0UL},{65535UL,65535UL,0x392DL,0UL},{65535UL,65535UL,0x392DL,0UL},{65535UL,65535UL,0x392DL,0UL}},{{65535UL,65535UL,0x392DL,0UL},{65535UL,65535UL,0x392DL,0UL},{65535UL,65535UL,0x392DL,0UL},{65535UL,65535UL,0x392DL,0UL},{65535UL,65535UL,0x392DL,0UL}},{{65535UL,65535UL,0x392DL,0UL},{65535UL,65535UL,0x392DL,0UL},{65535UL,65535UL,0x392DL,0UL},{65535UL,65535UL,0x392DL,0UL},{65535UL,65535UL,0x392DL,0UL}}};
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_33[i] = (void*)0;
    for (i = 0; i < 2; i++)
        l_525[i] = &p_531->g_514;
    (*p_531->g_322) = func_2((func_4(func_6(func_12((safe_add_func_int8_t_s_s((safe_sub_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(clz(((VECTOR(uint16_t, 4))(l_19.s5345)).zzwxxyzz))))).s6, (p_531->l_comm_values[(safe_mod_func_uint32_t_u_u(p_531->tid, 10))] != (safe_add_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((((*p_531->g_322) = (safe_sub_func_int64_t_s_s((safe_mod_func_uint32_t_u_u((safe_mul_func_int16_t_s_s((GROUP_DIVERGE(0, 1) ^ func_30(((*l_32) = (void*)0), p_531)), (p_531->g_113.s2 , (p_531->g_137.s3 > (l_19.s5 != ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(p_531->g_408.wx)), 4294967286UL, 6UL)).y))))), ((l_409 == (l_410 = l_409)) & (GROUP_DIVERGE(1, 1) , (!((l_19.s2 >= (-7L)) , p_531->g_113.s5)))))), p_531->g_137.s0))) <= 6L), l_19.s0)), p_531->g_113.s5))))), 255UL)), l_411, p_531), l_452[2][1], p_531->g_115.s4, p_531->g_436.s6, p_531->g_453, p_531), p_531) , (*l_32)), p_531);
    l_528[2][2][3]--;
    return p_531->g_379.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_531->g_360 p_531->g_361 p_531->g_315 p_531->g_106 p_531->g_379 p_531->g_152 p_531->g_137 p_531->g_514 p_531->g_297 p_531->g_92 p_531->g_460 p_531->g_82 p_531->g_78 p_531->g_464 p_531->g_408 p_531->g_76 p_531->g_322 p_531->g_81
 * writes: p_531->g_81 p_531->g_comm_values p_531->g_514
 */
int32_t  func_2(int8_t * p_3, struct S2 * p_531)
{ /* block id: 184 */
    uint32_t l_503[5][10] = {{5UL,0UL,0xE283C8E9L,0UL,5UL,5UL,0UL,0xE283C8E9L,0UL,5UL},{5UL,0UL,0xE283C8E9L,0UL,5UL,5UL,0UL,0xE283C8E9L,0UL,5UL},{5UL,0UL,0xE283C8E9L,0UL,5UL,5UL,0UL,0xE283C8E9L,0UL,5UL},{5UL,0UL,0xE283C8E9L,0UL,5UL,5UL,0UL,0xE283C8E9L,0UL,5UL},{5UL,0UL,0xE283C8E9L,0UL,5UL,5UL,0UL,0xE283C8E9L,0UL,5UL}};
    uint64_t l_510 = 2UL;
    int64_t *l_511 = (void*)0;
    int64_t *l_512[2];
    int32_t *l_513[3];
    uint32_t *l_520 = &p_531->g_44;
    uint32_t **l_519 = &l_520;
    int i, j;
    for (i = 0; i < 2; i++)
        l_512[i] = (void*)0;
    for (i = 0; i < 3; i++)
        l_513[i] = &p_531->g_514;
    p_531->g_514 ^= (l_503[4][2] > ((p_531->g_comm_values[p_531->tid] = (((*p_531->g_360) , (safe_add_func_int64_t_s_s((safe_sub_func_int8_t_s_s((((&p_531->g_360 == ((((*p_531->g_315) = (0x6806DC40L | 0x86543E31L)) <= ((p_531->g_106.y ^ (((p_531->g_379.y == p_531->g_152) , l_503[4][2]) >= l_503[4][2])) <= p_531->g_137.s6)) , (void*)0)) <= l_510) , l_503[4][8]), l_503[4][2])), p_531->g_379.y))) , p_531->g_106.w)) < FAKE_DIVERGE(p_531->group_2_offset, get_group_id(2), 10)));
    (*p_531->g_322) |= (safe_mul_func_uint8_t_u_u((((safe_mul_func_uint8_t_u_u((&p_531->g_44 != ((*l_519) = &p_531->g_44)), (p_531->g_297 | p_531->g_92))) ^ (p_531->g_460.z < p_531->g_82)) | (safe_lshift_func_uint8_t_u_u(((safe_mul_func_uint8_t_u_u((l_513[1] != (void*)0), p_531->g_78.se)) == p_531->g_464.sd), p_531->g_408.z))), p_531->g_76.s2));
    return (*p_531->g_315);
}


/* ------------------------------------------ */
/* 
 * reads : p_531->g_81
 * writes:
 */
int32_t  func_4(int64_t  p_5, struct S2 * p_531)
{ /* block id: 181 */
    int32_t *l_494 = &p_531->g_81[6][3][2];
    int32_t l_495 = 9L;
    int32_t *l_496 = (void*)0;
    int32_t *l_497 = &p_531->g_81[2][0][3];
    uint8_t l_498[2][10][2] = {{{6UL,0x1FL},{6UL,0x1FL},{6UL,0x1FL},{6UL,0x1FL},{6UL,0x1FL},{6UL,0x1FL},{6UL,0x1FL},{6UL,0x1FL},{6UL,0x1FL},{6UL,0x1FL}},{{6UL,0x1FL},{6UL,0x1FL},{6UL,0x1FL},{6UL,0x1FL},{6UL,0x1FL},{6UL,0x1FL},{6UL,0x1FL},{6UL,0x1FL},{6UL,0x1FL},{6UL,0x1FL}}};
    int i, j, k;
    --l_498[1][9][1];
    return (*l_494);
}


/* ------------------------------------------ */
/* 
 * reads : p_531->g_458 p_531->g_459 p_531->g_460 p_531->g_463 p_531->g_464 p_531->g_465 p_531->g_74 p_531->g_137 p_531->g_436 p_531->g_374 p_531->g_437 p_531->g_315 p_531->g_81
 * writes: p_531->g_74 p_531->g_374 p_531->g_81
 */
int64_t  func_6(int8_t * p_7, int8_t * p_8, int64_t  p_9, int16_t  p_10, int8_t * p_11, struct S2 * p_531)
{ /* block id: 171 */
    int16_t *l_455 = &p_531->g_152;
    int16_t **l_454 = &l_455;
    VECTOR(uint64_t, 16) l_456 = (VECTOR(uint64_t, 16))(9UL, (VECTOR(uint64_t, 4))(9UL, (VECTOR(uint64_t, 2))(9UL, 18446744073709551608UL), 18446744073709551608UL), 18446744073709551608UL, 9UL, 18446744073709551608UL, (VECTOR(uint64_t, 2))(9UL, 18446744073709551608UL), (VECTOR(uint64_t, 2))(9UL, 18446744073709551608UL), 9UL, 18446744073709551608UL, 9UL, 18446744073709551608UL);
    VECTOR(uint64_t, 16) l_457 = (VECTOR(uint64_t, 16))(18446744073709551613UL, (VECTOR(uint64_t, 4))(18446744073709551613UL, (VECTOR(uint64_t, 2))(18446744073709551613UL, 0xA473832D81B39D3FL), 0xA473832D81B39D3FL), 0xA473832D81B39D3FL, 18446744073709551613UL, 0xA473832D81B39D3FL, (VECTOR(uint64_t, 2))(18446744073709551613UL, 0xA473832D81B39D3FL), (VECTOR(uint64_t, 2))(18446744073709551613UL, 0xA473832D81B39D3FL), 18446744073709551613UL, 0xA473832D81B39D3FL, 18446744073709551613UL, 0xA473832D81B39D3FL);
    VECTOR(uint64_t, 2) l_461 = (VECTOR(uint64_t, 2))(18446744073709551608UL, 0x7585285669637D5BL);
    VECTOR(uint64_t, 4) l_462 = (VECTOR(uint64_t, 4))(18446744073709551610UL, (VECTOR(uint64_t, 2))(18446744073709551610UL, 0x3B9F4689D755B25CL), 0x3B9F4689D755B25CL);
    uint8_t *l_468[9][8] = {{&p_531->g_388,&p_531->g_388,&p_531->g_297,(void*)0,&p_531->g_297,&p_531->g_297,(void*)0,&p_531->g_388},{&p_531->g_388,&p_531->g_388,&p_531->g_297,(void*)0,&p_531->g_297,&p_531->g_297,(void*)0,&p_531->g_388},{&p_531->g_388,&p_531->g_388,&p_531->g_297,(void*)0,&p_531->g_297,&p_531->g_297,(void*)0,&p_531->g_388},{&p_531->g_388,&p_531->g_388,&p_531->g_297,(void*)0,&p_531->g_297,&p_531->g_297,(void*)0,&p_531->g_388},{&p_531->g_388,&p_531->g_388,&p_531->g_297,(void*)0,&p_531->g_297,&p_531->g_297,(void*)0,&p_531->g_388},{&p_531->g_388,&p_531->g_388,&p_531->g_297,(void*)0,&p_531->g_297,&p_531->g_297,(void*)0,&p_531->g_388},{&p_531->g_388,&p_531->g_388,&p_531->g_297,(void*)0,&p_531->g_297,&p_531->g_297,(void*)0,&p_531->g_388},{&p_531->g_388,&p_531->g_388,&p_531->g_297,(void*)0,&p_531->g_297,&p_531->g_297,(void*)0,&p_531->g_388},{&p_531->g_388,&p_531->g_388,&p_531->g_297,(void*)0,&p_531->g_297,&p_531->g_297,(void*)0,&p_531->g_388}};
    int32_t l_469 = 0x63CC3869L;
    VECTOR(uint32_t, 8) l_474 = (VECTOR(uint32_t, 8))(7UL, (VECTOR(uint32_t, 4))(7UL, (VECTOR(uint32_t, 2))(7UL, 1UL), 1UL), 1UL, 7UL, 1UL);
    VECTOR(uint32_t, 4) l_475 = (VECTOR(uint32_t, 4))(0x2D7906EFL, (VECTOR(uint32_t, 2))(0x2D7906EFL, 3UL), 3UL);
    uint64_t l_476 = 1UL;
    VECTOR(int16_t, 2) l_481 = (VECTOR(int16_t, 2))(1L, 0L);
    uint16_t *l_484 = &p_531->g_374;
    union U0 *l_487 = &p_531->g_361;
    union U0 *l_488 = &p_531->g_361;
    int64_t *l_489 = (void*)0;
    int64_t *l_490 = (void*)0;
    int64_t *l_491 = (void*)0;
    int64_t *l_492[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int8_t l_493[2][9][1] = {{{0x71L},{0x71L},{0x71L},{0x71L},{0x71L},{0x71L},{0x71L},{0x71L},{0x71L}},{{0x71L},{0x71L},{0x71L},{0x71L},{0x71L},{0x71L},{0x71L},{0x71L},{0x71L}}};
    int i, j, k;
    (*p_531->g_315) ^= ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))((((((*l_454) = &p_10) == (void*)0) ^ ((VECTOR(uint64_t, 2))(rhadd(((VECTOR(uint64_t, 16))(rhadd(((VECTOR(uint64_t, 16))(l_456.sd28582944d843e53)), ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(mad_hi(((VECTOR(uint64_t, 16))(18446744073709551614UL, ((VECTOR(uint64_t, 4))(max(((VECTOR(uint64_t, 2))(l_457.seb)).xxyy, ((VECTOR(uint64_t, 2))(p_531->g_458.xy)).yxxy))), 5UL, ((VECTOR(uint64_t, 8))(p_531->g_459.s94d4c2be)), 0x4B4BB86658F80848L, 6UL)).s30, ((VECTOR(uint64_t, 2))(0x081EBDE1157624D3L, 18446744073709551608UL)), ((VECTOR(uint64_t, 2))(0xAFC42E7FA1F86182L, 18446744073709551615UL))))), ((VECTOR(uint64_t, 8))(rotate(((VECTOR(uint64_t, 4))(safe_clamp_func(VECTOR(uint64_t, 4),VECTOR(uint64_t, 4),((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(0x732030F19206706EL, 0x35EA9623EE35C9AFL)).yyxxyyyxyyxxxxyy)).s00fe, ((VECTOR(uint64_t, 8))(p_531->g_460.xwyyzyxx)).lo, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(l_461.xy)).yxxyyyxy)).lo))).xywzyxzz, ((VECTOR(uint64_t, 4))(l_462.xwwz)).xxxzwxyw))), ((VECTOR(uint64_t, 4))(safe_clamp_func(VECTOR(uint64_t, 4),uint64_t,((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(clz(((VECTOR(uint64_t, 4))(p_531->g_463.s1226)).yyzxzyzy))), 1UL, ((VECTOR(uint64_t, 2))(rotate(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(p_531->g_464.s2a)).yxxx)).odd, ((VECTOR(uint64_t, 4))(p_531->g_465.xyxx)).even))), ((p_9 = (safe_mod_func_int32_t_s_s(((--p_531->g_74.s3) | p_10), (safe_sub_func_uint64_t_u_u(((l_469 |= ((VECTOR(uint32_t, 16))(mul_hi(((VECTOR(uint32_t, 4))(l_474.s0710)).xyyzyxzzyzwxzxwz, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(0x81FBE127L, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(l_475.xzwwwzxy)).s43)), (l_476 = l_474.s4), 0xFC06942BL, (safe_rshift_func_uint16_t_u_s((safe_rshift_func_int16_t_s_s(((VECTOR(int16_t, 4))(l_481.xyyy)).x, p_531->g_137.s1)), p_531->g_436.s6)), 4294967291UL, 0x32CABB93L)).even)), 0xE6D1893DL, (safe_mul_func_uint8_t_u_u((((((*l_484)++) ^ 0x148AL) , (l_487 = l_487)) != l_488), GROUP_DIVERGE(2, 1))), p_531->g_437.s7, 4294967288UL, ((VECTOR(uint32_t, 2))(0xBCC0779DL)), l_461.x, 0x0F1CFB72L, 0x7C42E0BAL, 0xAC1FCAE3L, 0x8778FB3CL, 4294967294UL)).sb1)))).yyxyxyyyyxxyxyxx))).s8) && 0x3B306AD2L), l_456.s0))))) & p_531->g_436.s5), 0x88A2974C294E4D15L, 0x67E96996DD4616DBL, 1UL, 7UL)).s71aa, (uint64_t)0x261730B4AD28C2E1L, (uint64_t)0x0AA14D8C8415AE03L))), 18446744073709551615UL, 0xB839DA2A9EE44155L))))).s49, ((VECTOR(uint64_t, 2))(0x675F20E5E0D26D75L))))).even) , l_475.y), l_493[0][6][0], 0x38B03CFDL, ((VECTOR(int32_t, 4))(0x21DF842DL)), 6L)).s36)).odd;
    return p_9;
}


/* ------------------------------------------ */
/* 
 * reads : p_531->g_408 p_531->g_388 p_531->g_260 p_531->g_41 p_531->g_82 p_531->g_34 p_531->g_318 p_531->g_315 p_531->g_156 p_531->g_81 p_531->g_433 p_531->g_436 p_531->g_437 p_531->g_137 p_531->g_322 p_531->l_comm_values p_531->g_76 p_531->g_447 p_531->g_115
 * writes: p_531->g_315 p_531->g_82 p_531->g_408 p_531->g_81 p_531->g_447
 */
int8_t * func_12(uint32_t  p_13, int8_t * p_14, struct S2 * p_531)
{ /* block id: 157 */
    uint64_t l_413 = 6UL;
    int64_t *l_416 = (void*)0;
    int32_t l_417 = 0x256E0F62L;
    int8_t *l_424 = &p_531->g_358;
    int8_t **l_423 = &l_424;
    int8_t ***l_422 = &l_423;
    int32_t **l_425[4][2][1] = {{{&p_531->g_315},{&p_531->g_315}},{{&p_531->g_315},{&p_531->g_315}},{{&p_531->g_315},{&p_531->g_315}},{{&p_531->g_315},{&p_531->g_315}}};
    uint64_t l_441 = 7UL;
    int i, j, k;
    (*p_531->g_318) = (((p_13 <= (safe_unary_minus_func_uint32_t_u((l_413 < (safe_sub_func_int64_t_s_s((l_417 = (-8L)), (safe_add_func_int64_t_s_s(p_531->g_408.y, ((((safe_rshift_func_int8_t_s_u((p_531->g_388 & ((*p_531->g_260) == &p_14)), (&p_14 != ((*l_422) = (*p_531->g_260))))) && p_13) , p_531->g_82) | 0x0A02F65D3B40E072L))))))))) != p_531->g_34.y) , (*p_531->g_318));
    for (p_531->g_82 = 0; (p_531->g_82 > 20); p_531->g_82 = safe_add_func_int64_t_s_s(p_531->g_82, 6))
    { /* block id: 163 */
        VECTOR(int16_t, 16) l_430 = (VECTOR(int16_t, 16))(6L, (VECTOR(int16_t, 4))(6L, (VECTOR(int16_t, 2))(6L, 0x2449L), 0x2449L), 0x2449L, 6L, 0x2449L, (VECTOR(int16_t, 2))(6L, 0x2449L), (VECTOR(int16_t, 2))(6L, 0x2449L), 6L, 0x2449L, 6L, 0x2449L);
        VECTOR(uint16_t, 16) l_434 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x8011L), 0x8011L), 0x8011L, 1UL, 0x8011L, (VECTOR(uint16_t, 2))(1UL, 0x8011L), (VECTOR(uint16_t, 2))(1UL, 0x8011L), 1UL, 0x8011L, 1UL, 0x8011L);
        VECTOR(uint16_t, 2) l_435 = (VECTOR(uint16_t, 2))(2UL, 0x9438L);
        uint32_t *l_440 = &p_531->g_44;
        uint32_t *l_442 = (void*)0;
        uint32_t *l_443[9][8][3] = {{{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444}},{{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444}},{{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444}},{{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444}},{{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444}},{{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444}},{{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444}},{{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444}},{{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444},{&p_531->g_82,(void*)0,&p_531->g_444}}};
        int32_t l_445 = 1L;
        int16_t l_446 = 0L;
        int i, j, k;
        p_531->g_447 &= ((safe_mul_func_int16_t_s_s(((0xCCF1ED32L ^ (*p_531->g_156)) , ((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 16))(max(((VECTOR(int16_t, 4))(l_430.s341e)).wwzyxxzxywwxwzwy, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(safe_clamp_func(VECTOR(int16_t, 2),int16_t,((VECTOR(int16_t, 4))((!((VECTOR(int16_t, 8))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 8),((VECTOR(int16_t, 8))(0x5BB3L, ((safe_mod_func_int64_t_s_s((p_531->g_433 , p_13), l_430.sd)) != ((*p_531->g_322) = (((VECTOR(uint16_t, 8))(0x893DL, 1UL, ((VECTOR(uint16_t, 2))(0x5AEDL, 9UL)), ((VECTOR(uint16_t, 2))(sub_sat(((VECTOR(uint16_t, 16))(mul_hi(((VECTOR(uint16_t, 16))(l_434.scb06b6e7694dfdf1)), ((VECTOR(uint16_t, 4))(l_435.yyxy)).zzzzxyzwyzzwywwy))).se0, ((VECTOR(uint16_t, 4))(rhadd(((VECTOR(uint16_t, 8))(p_531->g_436.s06166071)).even, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(p_531->g_437.sb3e4ab3125cf09f2)).sc2)).yyxy))).even))), 0xDEDAL, 65535UL)).s2 && (safe_mul_func_uint16_t_u_u(p_531->g_137.s4, ((p_13 && ((((l_445 = ((VECTOR(uint32_t, 4))((p_531->g_408.w = ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(0x2C776DBFL, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(0x26F3D399L, ((((l_440 != &p_531->g_44) && l_441) == (*p_531->g_322)) == 1UL), 6UL, GROUP_DIVERGE(0, 1), ((VECTOR(uint32_t, 4))(0xD20F43B1L)), p_13, 0x4121B456L, 0xC491E59BL, ((VECTOR(uint32_t, 2))(1UL)), ((VECTOR(uint32_t, 2))(0x8ECDC715L)), 6UL)).s4d)), p_531->l_comm_values[(safe_mod_func_uint32_t_u_u(p_531->tid, 10))], 0x773926DFL, ((VECTOR(uint32_t, 8))(4294967290UL)), 2UL, 4294967295UL, 0x45C2471FL)).s33)).xyxyyyxx)).s0), ((VECTOR(uint32_t, 2))(0xCDA8DF43L)), 0xA9521179L)).w) & l_446) >= p_13) >= FAKE_DIVERGE(p_531->group_0_offset, get_group_id(0), 10))) || 4L)))))), p_531->g_76.s4, 1L, 0x5AC1L, ((VECTOR(int16_t, 2))(1L)), 0x13B7L)), ((VECTOR(int16_t, 8))(0x1A87L)), ((VECTOR(int16_t, 8))(0x5EE6L))))).s5), ((VECTOR(int16_t, 2))(0x1ED2L)), (-10L))).lo, (int16_t)p_531->g_388, (int16_t)p_13))).yxyx)).wzxxwzwywzyxzzxy))).sa1, ((VECTOR(int16_t, 2))((-1L))), ((VECTOR(int16_t, 2))(7L))))).hi), 0L)) ^ l_446);
        l_445 = (safe_mul_func_int8_t_s_s((p_13 < (((void*)0 != &p_531->g_44) == ((void*)0 == &p_531->g_405))), p_531->g_115.s9));
    }
    return p_14;
}


/* ------------------------------------------ */
/* 
 * reads : p_531->g_41 p_531->g_44 p_531->l_comm_values p_531->g_34 p_531->g_74 p_531->g_76 p_531->g_78 p_531->g_106 p_531->g_113 p_531->g_115 p_531->g_118 p_531->g_81 p_531->g_comm_values p_531->g_137 p_531->g_156 p_531->g_255 p_531->g_297 p_531->g_251 p_531->g_314 p_531->g_318 p_531->g_322 p_531->g_358 p_531->g_359 p_531->g_315 p_531->g_385 p_531->g_255.f0 p_531->g_388 p_531->g_405
 * writes: p_531->g_44 p_531->g_82 p_531->g_81 p_531->g_92 p_531->g_comm_values p_531->g_260 p_531->g_297 p_531->g_315 p_531->g_358 p_531->g_34 p_531->g_388 p_531->g_359 p_531->g_405
 */
int64_t  func_30(int8_t * p_31, struct S2 * p_531)
{ /* block id: 6 */
    int32_t l_42 = 1L;
    uint32_t *l_43 = &p_531->g_44;
    int32_t l_389 = 3L;
    union U0 **l_390[10] = {(void*)0,&p_531->g_360,(void*)0,(void*)0,&p_531->g_360,(void*)0,(void*)0,&p_531->g_360,(void*)0,(void*)0};
    int32_t *l_391[10] = {&p_531->g_81[6][2][3],(void*)0,&l_389,(void*)0,&p_531->g_81[6][2][3],&p_531->g_81[6][2][3],(void*)0,&l_389,(void*)0,&p_531->g_81[6][2][3]};
    VECTOR(int32_t, 2) l_398 = (VECTOR(int32_t, 2))(0x2AF240E9L, 0x6D1AA823L);
    int16_t l_399 = 0x4D7AL;
    uint32_t l_401 = 4294967295UL;
    uint16_t l_402[3];
    VECTOR(int8_t, 2) l_403 = (VECTOR(int8_t, 2))((-1L), 0L);
    int32_t l_404 = 0x0D557E9FL;
    int i;
    for (i = 0; i < 3; i++)
        l_402[i] = 3UL;
    l_389 &= ((*p_531->g_322) = ((func_35(p_531->g_41, l_42, l_42, ((*l_43) ^= l_42), l_42, p_531) && (safe_mod_func_uint32_t_u_u((l_42 = GROUP_DIVERGE(1, 1)), 4294967295UL))) | ((p_531->g_255.f0 <= ((p_531->g_388 &= p_531->g_255.f0) , p_531->g_113.s0)) ^ p_531->g_251)));
    p_531->g_359 = l_390[3];
    l_391[4] = &l_42;
    p_531->g_405 ^= (safe_mod_func_uint64_t_u_u((safe_sub_func_int64_t_s_s((safe_div_func_int8_t_s_s(((((*p_531->g_315) = ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_398.yyxxyxyy)).s54)).lo) == l_399) , ((((l_401 = ((&p_531->g_44 == (void*)0) & ((*p_531->g_315) = (safe_unary_minus_func_int8_t_s(0x01L))))) && l_402[2]) || ((((&l_402[2] == (p_531->g_255.f0 , &l_402[2])) , (l_403.y <= p_531->g_34.y)) == 0x3D4027059EF1C1EFL) > 65528UL)) > l_404)), p_531->g_78.s9)), p_531->g_251)), 0x08C83ECA7CFC120FL));
    return p_531->g_34.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_531->l_comm_values p_531->g_34 p_531->g_74 p_531->g_76 p_531->g_78 p_531->g_41 p_531->g_44 p_531->g_106 p_531->g_113 p_531->g_115 p_531->g_118 p_531->g_81 p_531->g_comm_values p_531->g_137 p_531->g_156 p_531->g_255 p_531->g_297 p_531->g_251 p_531->g_314 p_531->g_318 p_531->g_322 p_531->g_358 p_531->g_359 p_531->g_315 p_531->g_385
 * writes: p_531->g_82 p_531->g_81 p_531->g_92 p_531->g_comm_values p_531->g_260 p_531->g_44 p_531->g_297 p_531->g_315 p_531->g_358 p_531->g_34
 */
uint8_t  func_35(int8_t ** p_36, int32_t  p_37, int8_t  p_38, uint32_t  p_39, uint64_t  p_40, struct S2 * p_531)
{ /* block id: 8 */
    uint32_t l_52 = 4294967293UL;
    int8_t ***l_86 = (void*)0;
    int8_t ***l_87 = (void*)0;
    int8_t ***l_88[10] = {(void*)0,&p_531->g_41,(void*)0,(void*)0,&p_531->g_41,(void*)0,(void*)0,&p_531->g_41,(void*)0,(void*)0};
    uint8_t *l_91 = &p_531->g_92;
    int i;
    (*p_531->g_385) = func_45(((p_36 = func_50(l_52, p_531)) == p_531->g_41), ((*l_91) = ((((p_531->l_comm_values[(safe_mod_func_uint32_t_u_u(p_531->tid, 10))] , ((p_37 > p_531->g_76.s1) & ((((p_531->g_76.s7 <= l_52) , (safe_rshift_func_int16_t_s_s(((((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(abs_diff(((VECTOR(uint64_t, 2))(abs(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(clz(((VECTOR(uint64_t, 8))(1UL, p_531->g_44, 1UL, l_52, 6UL, 0x7A3E983FE56077E5L, 0x6A3224D4209ED79FL, 1UL))))).s13)), 0x2AC3FE914D0EF1DBL, 0xBE37C8BC82935591L)).lo))), ((VECTOR(uint64_t, 2))(18446744073709551611UL))))), 18446744073709551607UL, 0xE8E729AE47ACEDFCL, 0x1A19B6E0F7277C3FL, p_531->g_44, 0x09486933D78BCCA9L, 1UL)).s2 != 0xDB32916D73FB01E7L) >= p_531->g_76.s5), l_52))) , 0x27ECL) < p_40))) , (void*)0) != (void*)0) , GROUP_DIVERGE(2, 1))), p_531->g_41, p_531->g_34.z, p_531);
    return l_52;
}


/* ------------------------------------------ */
/* 
 * reads : p_531->l_comm_values p_531->g_74 p_531->g_106 p_531->g_113 p_531->g_115 p_531->g_118 p_531->g_44 p_531->g_81 p_531->g_comm_values p_531->g_34 p_531->g_78 p_531->g_137 p_531->g_156 p_531->g_255 p_531->g_297 p_531->g_251 p_531->g_314 p_531->g_318 p_531->g_322 p_531->g_76 p_531->g_358 p_531->g_359 p_531->g_315
 * writes: p_531->g_92 p_531->g_comm_values p_531->g_81 p_531->g_260 p_531->g_44 p_531->g_297 p_531->g_315 p_531->g_358 p_531->g_34
 */
int32_t * func_45(uint32_t  p_46, uint8_t  p_47, int8_t ** p_48, uint64_t  p_49, struct S2 * p_531)
{ /* block id: 19 */
    VECTOR(uint16_t, 2) l_95 = (VECTOR(uint16_t, 2))(4UL, 65535UL);
    VECTOR(uint16_t, 2) l_107 = (VECTOR(uint16_t, 2))(65535UL, 65535UL);
    VECTOR(int64_t, 4) l_112 = (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, (-1L)), (-1L));
    VECTOR(uint8_t, 2) l_114 = (VECTOR(uint8_t, 2))(0xF3L, 0x13L);
    int32_t l_123 = 2L;
    uint16_t l_124 = 2UL;
    uint8_t *l_125 = (void*)0;
    uint8_t *l_126 = (void*)0;
    uint8_t *l_127 = (void*)0;
    uint8_t *l_128 = &p_531->g_92;
    int64_t *l_129[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    VECTOR(int8_t, 2) l_136 = (VECTOR(int8_t, 2))(0x01L, 0x68L);
    VECTOR(int8_t, 16) l_138 = (VECTOR(int8_t, 16))(0x1FL, (VECTOR(int8_t, 4))(0x1FL, (VECTOR(int8_t, 2))(0x1FL, (-1L)), (-1L)), (-1L), 0x1FL, (-1L), (VECTOR(int8_t, 2))(0x1FL, (-1L)), (VECTOR(int8_t, 2))(0x1FL, (-1L)), 0x1FL, (-1L), 0x1FL, (-1L));
    int32_t l_230 = 0x5104157AL;
    int32_t l_231 = (-2L);
    int32_t l_232 = (-9L);
    int32_t l_233 = 0L;
    int32_t l_234 = 0x10C7E68FL;
    int32_t l_235 = 0L;
    int32_t l_237 = (-7L);
    int32_t l_238 = 0L;
    int32_t l_239 = (-2L);
    int32_t l_240 = 6L;
    int32_t l_241 = 0x79A1897CL;
    int32_t l_242 = (-1L);
    int32_t l_243 = 0x7F460535L;
    int32_t l_244 = 7L;
    int32_t l_245 = 0x6CFAE09BL;
    int32_t l_246 = 0x2F16EB98L;
    int32_t l_247 = 0x214085D7L;
    int32_t l_248 = 7L;
    int32_t l_249[5][8] = {{1L,0x6B37A122L,1L,0x6B37A122L,1L,1L,0x6B37A122L,1L},{1L,0x6B37A122L,1L,0x6B37A122L,1L,1L,0x6B37A122L,1L},{1L,0x6B37A122L,1L,0x6B37A122L,1L,1L,0x6B37A122L,1L},{1L,0x6B37A122L,1L,0x6B37A122L,1L,1L,0x6B37A122L,1L},{1L,0x6B37A122L,1L,0x6B37A122L,1L,1L,0x6B37A122L,1L}};
    uint8_t l_252 = 1UL;
    int8_t ***l_258 = &p_531->g_41;
    int8_t ****l_259[10][2] = {{&l_258,&l_258},{&l_258,&l_258},{&l_258,&l_258},{&l_258,&l_258},{&l_258,&l_258},{&l_258,&l_258},{&l_258,&l_258},{&l_258,&l_258},{&l_258,&l_258},{&l_258,&l_258}};
    VECTOR(int64_t, 2) l_263 = (VECTOR(int64_t, 2))(0x4CE829D8AA19AA90L, 0x4890624D4C2A805CL);
    int32_t *l_266[1];
    uint8_t l_267 = 1UL;
    VECTOR(int32_t, 8) l_283 = (VECTOR(int32_t, 8))((-2L), (VECTOR(int32_t, 4))((-2L), (VECTOR(int32_t, 2))((-2L), 8L), 8L), 8L, (-2L), 8L);
    int16_t *l_288[4] = {&p_531->g_152,&p_531->g_152,&p_531->g_152,&p_531->g_152};
    int32_t *l_320[6] = {&l_241,&l_241,&l_241,&l_241,&l_241,&l_241};
    VECTOR(int16_t, 4) l_367 = (VECTOR(int16_t, 4))(0x7CDBL, (VECTOR(int16_t, 2))(0x7CDBL, 0x5212L), 0x5212L);
    union U0 **l_384 = (void*)0;
    int i, j;
    for (i = 0; i < 1; i++)
        l_266[i] = (void*)0;
    if ((((safe_div_func_uint16_t_u_u(p_49, ((VECTOR(uint16_t, 2))(rhadd(((VECTOR(uint16_t, 4))(l_95.yxxx)).lo, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))((p_531->l_comm_values[(safe_mod_func_uint32_t_u_u(p_531->tid, 10))] == (safe_add_func_int32_t_s_s(((safe_sub_func_uint64_t_u_u((safe_div_func_uint64_t_u_u(1UL, (safe_sub_func_uint32_t_u_u(p_531->g_74.s5, (((safe_div_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(p_531->g_106.wx)), 0x03DDL, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(l_107.yxxx)).hi)), 0UL, 1UL, ((FAKE_DIVERGE(p_531->local_2_offset, get_local_id(2), 10) >= 0x29411D375A9F46BEL) < l_107.y), 65531UL, ((p_531->g_comm_values[p_531->tid] |= ((safe_mul_func_uint16_t_u_u(((((safe_mul_func_uint8_t_u_u(((*l_128) = (((VECTOR(int64_t, 16))(l_112.xyxzzzwwyxxzzywz)).sc & (((VECTOR(uint8_t, 2))(sub_sat(((VECTOR(uint8_t, 8))(rhadd(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(rotate(((VECTOR(uint8_t, 4))(add_sat(((VECTOR(uint8_t, 8))(p_531->g_113.s23005103)).hi, ((VECTOR(uint8_t, 8))(sub_sat(((VECTOR(uint8_t, 8))(abs_diff(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(sub_sat(((VECTOR(uint8_t, 8))(l_114.yyyxxyyx)).s02, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(mad_hi(((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 16))(p_531->g_115.sb1119ab3fdb3d75b)).s19, (uint8_t)((safe_add_func_uint16_t_u_u(((p_531->g_118 , ((safe_lshift_func_int8_t_s_s((safe_rshift_func_int8_t_s_u((1UL & ((l_123 = (-1L)) <= l_124)), p_531->g_44)), p_531->g_81[2][3][7])) && l_95.x)) <= FAKE_DIVERGE(p_531->local_0_offset, get_local_id(0), 10)), p_47)) ^ l_107.y)))).yyyyxxxyyxxyxxyy, ((VECTOR(uint8_t, 16))(0xC9L)), ((VECTOR(uint8_t, 16))(0xADL))))).s4a)), ((VECTOR(uint8_t, 8))(0x32L)), 2UL, 5UL, 255UL, 254UL, 255UL, 0x99L)).s5b))), FAKE_DIVERGE(p_531->global_2_offset, get_global_id(2), 10), l_114.y, ((VECTOR(uint8_t, 4))(0xF3L)))), ((VECTOR(uint8_t, 8))(0x59L))))), ((VECTOR(uint8_t, 8))(1UL))))).even))), ((VECTOR(uint8_t, 4))(8UL))))).even)).yyxxyxxyyxxxxyyx)).even, ((VECTOR(uint8_t, 8))(1UL))))).s51, ((VECTOR(uint8_t, 2))(255UL))))).lo <= p_531->g_74.s4))), FAKE_DIVERGE(p_531->global_1_offset, get_global_id(1), 10))) >= p_47) != l_124) != GROUP_DIVERGE(1, 1)), 65530UL)) | l_107.x)) & p_49), ((VECTOR(uint16_t, 2))(0xCAD5L)), ((VECTOR(uint16_t, 4))(0x17D5L)))).sc, l_95.y)) < l_95.x) < l_95.y))))), p_531->g_34.z)) & l_107.y), p_531->g_113.s6))), 0xF0C3L, ((VECTOR(uint16_t, 4))(65529UL)), 0x50F7L, ((VECTOR(uint16_t, 2))(65535UL)), 65527UL, 65530UL, 9UL, 0x90A5L, l_107.y, 65535UL, 0x099DL)))).s88))).even)) , l_114.x) > 255UL))
    { /* block id: 23 */
        int32_t l_143 = 0L;
        int64_t *l_144[9];
        VECTOR(int64_t, 16) l_147 = (VECTOR(int64_t, 16))(6L, (VECTOR(int64_t, 4))(6L, (VECTOR(int64_t, 2))(6L, 0L), 0L), 0L, 6L, 0L, (VECTOR(int64_t, 2))(6L, 0L), (VECTOR(int64_t, 2))(6L, 0L), 6L, 0L, 6L, 0L);
        VECTOR(int64_t, 2) l_148 = (VECTOR(int64_t, 2))((-1L), 0x41F2F3EF56138988L);
        int16_t *l_151[6][1] = {{&p_531->g_152},{&p_531->g_152},{&p_531->g_152},{&p_531->g_152},{&p_531->g_152},{&p_531->g_152}};
        int8_t *l_154 = (void*)0;
        int8_t **l_153 = &l_154;
        int32_t *l_155 = &l_123;
        int32_t *l_228 = &l_143;
        int32_t *l_229[4] = {&l_123,&l_123,&l_123,&l_123};
        int32_t l_236 = 1L;
        int64_t l_250 = (-2L);
        int i, j;
        for (i = 0; i < 9; i++)
            l_144[i] = (void*)0;
        (*p_531->g_156) = ((*l_155) |= ((((0x32EB6C46BC4935F4L == ((~(safe_sub_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(0x65L, p_531->g_78.sa)), ((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(l_136.xxxy)).odd)).yxxx)), ((VECTOR(int8_t, 4))(p_531->g_137.s5152))))).odd)).yyyxyyyxxxxyyyyx)).s63)).xyyy, ((VECTOR(int8_t, 2))(0x67L, 9L)).xxxx, ((VECTOR(int8_t, 4))(l_138.s0c78))))).w))) <= (-2L))) > ((GROUP_DIVERGE(2, 1) == (((safe_lshift_func_int8_t_s_s(((l_143 , (((l_144[5] == l_129[2]) >= (safe_add_func_int16_t_s_s((((VECTOR(int64_t, 16))(hadd(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(l_147.sb1)).xyyxyxxyxyxxxyxx)).sb9)).xyyxxyxyyyyxxyxy, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(l_148.yyyxyxyyxyxxxyyy)))).se8)).yyyyxyyxxxxyxxyy))).s9 , (l_143 = (safe_sub_func_uint64_t_u_u(0UL, (3UL != p_531->g_115.sb))))), l_112.z))) < 65531UL)) == p_49), 3)) | 0L) >= p_46)) && p_47)) , l_153) == p_48));
        for (p_49 = 0; (p_49 < 36); ++p_49)
        { /* block id: 29 */
            if ((atomic_inc(&p_531->l_atomic_input[31]) == 9))
            { /* block id: 31 */
                uint32_t l_159 = 0xCE8AD497L;
                VECTOR(int32_t, 8) l_160 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x41A992B8L), 0x41A992B8L), 0x41A992B8L, 1L, 0x41A992B8L);
                uint64_t l_161 = 0xD500FC77D7E4635AL;
                union U0 l_163 = {0};/* VOLATILE GLOBAL l_163 */
                union U0 *l_162 = &l_163;
                VECTOR(int32_t, 8) l_164 = (VECTOR(int32_t, 8))(0x1152C8EFL, (VECTOR(int32_t, 4))(0x1152C8EFL, (VECTOR(int32_t, 2))(0x1152C8EFL, 0L), 0L), 0L, 0x1152C8EFL, 0L);
                int i;
                l_161 = ((VECTOR(int32_t, 8))((-8L), 0x20161A06L, l_159, 0x5A9E9F99L, 0x76E09874L, ((VECTOR(int32_t, 2))(l_160.s74)), 0x1CF386E9L)).s7;
                l_162 = (void*)0;
                if (((VECTOR(int32_t, 16))(l_164.s5337722065230565)).sc)
                { /* block id: 34 */
                    l_164.s6 ^= (l_160.s4 ^= 0x38C975FDL);
                    if ((l_160.s1 = 0x315EBE09L))
                    { /* block id: 38 */
                        int32_t l_167 = 4L;
                        int8_t l_168[10][2] = {{0L,0x00L},{0L,0x00L},{0L,0x00L},{0L,0x00L},{0L,0x00L},{0L,0x00L},{0L,0x00L},{0L,0x00L},{0L,0x00L},{0L,0x00L}};
                        int32_t l_169 = 0x2AE7EC9DL;
                        int32_t l_170 = 0x301BA763L;
                        uint32_t l_171 = 0x271D09A1L;
                        uint8_t l_172 = 0UL;
                        VECTOR(int16_t, 4) l_173 = (VECTOR(int16_t, 4))((-8L), (VECTOR(int16_t, 2))((-8L), 9L), 9L);
                        int32_t *l_174 = (void*)0;
                        int32_t l_175[1][10] = {{0x54BF9C39L,0x64C42781L,1L,0x64C42781L,0x54BF9C39L,0x54BF9C39L,0x64C42781L,1L,0x64C42781L,0x54BF9C39L}};
                        int32_t l_176 = (-4L);
                        int32_t l_177 = 0x74E9D438L;
                        int64_t l_178 = (-3L);
                        int8_t l_179 = 0x60L;
                        union U0 l_180 = {0};/* VOLATILE GLOBAL l_180 */
                        VECTOR(int64_t, 16) l_181 = (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x3B084D9010A9E941L), 0x3B084D9010A9E941L), 0x3B084D9010A9E941L, (-1L), 0x3B084D9010A9E941L, (VECTOR(int64_t, 2))((-1L), 0x3B084D9010A9E941L), (VECTOR(int64_t, 2))((-1L), 0x3B084D9010A9E941L), (-1L), 0x3B084D9010A9E941L, (-1L), 0x3B084D9010A9E941L);
                        int32_t l_182 = (-2L);
                        int16_t l_183 = (-1L);
                        VECTOR(uint16_t, 2) l_184 = (VECTOR(uint16_t, 2))(65535UL, 0xEC76L);
                        uint64_t l_185 = 0UL;
                        uint64_t l_186 = 18446744073709551615UL;
                        uint16_t l_187 = 65535UL;
                        int64_t l_188 = 0x4F3F3ED43D43504BL;
                        uint16_t l_189 = 0x1E4CL;
                        uint32_t l_190 = 0x487B5400L;
                        int i, j;
                        l_174 = (((l_159++) , (l_164.s2 &= 1L)) , (((l_167 , (l_173.x = (l_172 &= (l_171 = ((l_169 |= l_168[9][0]) , l_170))))) , ((VECTOR(uint32_t, 2))(4294967286UL, 4294967294UL)).even) , (void*)0));
                        l_163.f1 = (l_164.s3 ^= l_175[0][1]);
                        l_164.s1 = ((VECTOR(int32_t, 8))(0L, 0x3FEF99F4L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(0x66AEB5C9L, (-1L), ((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(0x4142C4E7L, l_176, (((VECTOR(int32_t, 8))(0x3D197994L, l_177, ((VECTOR(int32_t, 2))(0x08803036L, (-1L))), 0x615FF329L, ((l_186 ^= (((((l_178 , (l_179 , FAKE_DIVERGE(p_531->global_2_offset, get_global_id(2), 10))) , 0x3DL) , l_180) , (((VECTOR(int64_t, 16))(sub_sat(((VECTOR(int64_t, 16))(hadd(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(l_181.scc)), 1L, 0L)).yzwxxzwxxzyzyxxw, ((VECTOR(int64_t, 16))(l_182, 5L, 0x4176A08454084CDBL, l_183, 9L, ((VECTOR(int64_t, 2))((-8L))), 9L, 0x7E894985C0450BFEL, ((VECTOR(int64_t, 4))(3L)), l_184.y, 0x23AA631CA5A90268L, 0x19FD57E78918540EL))))), ((VECTOR(int64_t, 16))(0x18F363EE46ABD337L))))).sf , 0x73023F3548BEFD34L)) , l_185)) , l_187), (-1L), (-1L))).s6 , l_188), (-2L), ((VECTOR(int32_t, 2))(0x174C57ACL)), 0x188DA372L, 0x76784C01L, 0x3CC21D27L, ((VECTOR(int32_t, 4))(0x0337835EL)), l_189, 0x55BA451DL, 0x1DFD79E2L)).sb9, ((VECTOR(int32_t, 2))((-1L))), ((VECTOR(int32_t, 2))((-3L)))))), (-1L), (-1L), 7L, 0x396724ECL)).s40)), 0x612EA233L, l_190, 0x1516D38BL, (-6L))).s6;
                    }
                    else
                    { /* block id: 50 */
                        VECTOR(uint32_t, 4) l_191 = (VECTOR(uint32_t, 4))(0x15312858L, (VECTOR(uint32_t, 2))(0x15312858L, 1UL), 1UL);
                        VECTOR(uint32_t, 4) l_192 = (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967290UL), 4294967290UL);
                        int16_t l_193 = 0x154BL;
                        VECTOR(uint64_t, 2) l_194 = (VECTOR(uint64_t, 2))(0UL, 0UL);
                        VECTOR(uint64_t, 4) l_195 = (VECTOR(uint64_t, 4))(0x6082DB208B18B9FEL, (VECTOR(uint64_t, 2))(0x6082DB208B18B9FEL, 6UL), 6UL);
                        uint32_t l_196 = 1UL;
                        int64_t l_197 = 0L;
                        VECTOR(int8_t, 8) l_198 = (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x5BL), 0x5BL), 0x5BL, 0L, 0x5BL);
                        VECTOR(int8_t, 4) l_199 = (VECTOR(int8_t, 4))(0x0CL, (VECTOR(int8_t, 2))(0x0CL, 0L), 0L);
                        VECTOR(int8_t, 2) l_200 = (VECTOR(int8_t, 2))(4L, (-1L));
                        VECTOR(int8_t, 2) l_201 = (VECTOR(int8_t, 2))(0x7BL, 1L);
                        VECTOR(int8_t, 4) l_202 = (VECTOR(int8_t, 4))((-8L), (VECTOR(int8_t, 2))((-8L), 0x43L), 0x43L);
                        VECTOR(uint32_t, 8) l_203 = (VECTOR(uint32_t, 8))(0x6BE3EF9CL, (VECTOR(uint32_t, 4))(0x6BE3EF9CL, (VECTOR(uint32_t, 2))(0x6BE3EF9CL, 1UL), 1UL), 1UL, 0x6BE3EF9CL, 1UL);
                        VECTOR(int8_t, 2) l_204 = (VECTOR(int8_t, 2))(0L, 0x23L);
                        int8_t l_205 = (-1L);
                        uint8_t l_206 = 255UL;
                        int8_t l_207[2][3][4] = {{{0x3AL,0L,0x7BL,0L},{0x3AL,0L,0x7BL,0L},{0x3AL,0L,0x7BL,0L}},{{0x3AL,0L,0x7BL,0L},{0x3AL,0L,0x7BL,0L},{0x3AL,0L,0x7BL,0L}}};
                        int32_t l_208 = 0x1D03B489L;
                        int8_t l_209 = 0x02L;
                        uint64_t l_210 = 8UL;
                        uint8_t l_211 = 4UL;
                        int32_t l_212 = 0x75A0F95BL;
                        int64_t l_213 = 1L;
                        VECTOR(uint32_t, 16) l_214 = (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL, (VECTOR(uint32_t, 2))(1UL, 0UL), (VECTOR(uint32_t, 2))(1UL, 0UL), 1UL, 0UL, 1UL, 0UL);
                        uint64_t l_215 = 0x99A0AEC93D442FCBL;
                        int32_t l_216 = (-9L);
                        uint8_t l_217 = 1UL;
                        int i, j, k;
                        l_160.s5 = ((((VECTOR(uint64_t, 16))(hadd(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(upsample(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(l_191.xx)).yxxxyyyyxyxyxxxy)).seef8, ((VECTOR(uint32_t, 16))(l_192.xzwwxyxyzzzyzyww)).s465c))).zwxxywzxzyyxxwxy)).s36ad)).odd)).yxyxxxyx)).s1643700376574415, ((VECTOR(uint64_t, 8))(l_193, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(l_194.xx)).yyxy)), ((VECTOR(uint64_t, 4))(abs(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(abs_diff(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(l_195.xxyx)), 0UL, (l_196 |= 0x184DCA25D3297F84L), (l_197 , (((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),VECTOR(int8_t, 4),((VECTOR(int8_t, 16))(max(((VECTOR(int8_t, 8))(l_198.s35267351)).s5715413665141016, ((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 2))(l_199.xx)).yyxxxxyxxxyyxyyx, ((VECTOR(int8_t, 4))(l_200.xxxx)).zzwzyxyzzwzzxyxz)))))).s8969, ((VECTOR(int8_t, 8))(hadd(((VECTOR(int8_t, 16))(l_201.yxxyyxyyyyyyxyxx)).hi, ((VECTOR(int8_t, 2))(l_202.yw)).xxyyyxxy))).hi, ((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))((-6L), 5L, l_203.s1, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(l_204.xx)))), ((VECTOR(int8_t, 2))(1L, 0x33L)), (-1L), l_205, ((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(0x58L, 1L)), 0L, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 16))((l_206 , 2L), ((VECTOR(int8_t, 2))(1L, 3L)), 0x4FL, ((VECTOR(int8_t, 2))(0x1EL, 2L)), l_207[0][0][3], l_208, 0x6FL, ((VECTOR(int8_t, 2))((-4L))), 0x63L, ((VECTOR(int8_t, 2))(0x0FL)), 0L, 0x72L)).s109c, ((VECTOR(int8_t, 4))(5L)), ((VECTOR(int8_t, 4))(0L))))), 1L, ((VECTOR(int8_t, 2))(0x75L)), (-1L))).hi)), (-8L))).s75, ((VECTOR(int8_t, 2))(0x40L)), ((VECTOR(int8_t, 2))(1L))))), 0x1DL, 0x65L, 1L, 0x56L, (-1L))).even)).s15, ((VECTOR(int8_t, 2))(2L))))).yxyx))).w , l_209)), 0xDDFA2A7B079A7C3DL, 0xDCAA069C6987D569L, l_210, 0xC4DDAD7DD46AAC30L, 1UL, 0UL, l_211, 18446744073709551614UL, 18446744073709551606UL)).lo, ((VECTOR(uint64_t, 8))(18446744073709551608UL))))))).lo))).x, 18446744073709551607UL, 0x12730BE47D957DF1L)).s2245704512672346))).s4 , l_212) , l_213);
                        l_164.s5 |= ((l_215 = ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(min(((VECTOR(uint32_t, 4))(0UL, 4294967295UL, 0UL, 4294967295UL)).lo, ((VECTOR(uint32_t, 8))(clz(((VECTOR(uint32_t, 16))(l_214.s23574df4ccd76272)).even))).s34))).xxxy)).z) , l_216);
                        l_160.s4 &= (l_217 ^= (l_164.s7 |= 0x12AC792FL));
                    }
                }
                else
                { /* block id: 59 */
                    int32_t l_219 = 0x1DFCFB0EL;
                    int32_t *l_218 = &l_219;
                    int32_t *l_220 = &l_219;
                    uint64_t l_221 = 18446744073709551615UL;
                    union U1 l_222[10] = {{0x3E00FD49L},{0x3E00FD49L},{0x3E00FD49L},{0x3E00FD49L},{0x3E00FD49L},{0x3E00FD49L},{0x3E00FD49L},{0x3E00FD49L},{0x3E00FD49L},{0x3E00FD49L}};
                    uint8_t l_223 = 1UL;
                    int32_t *l_224 = &l_219;
                    int32_t *l_225 = (void*)0;
                    int i;
                    l_220 = (l_218 = (void*)0);
                    l_225 = (l_221 , ((l_222[8] , l_223) , l_224));
                }
                unsigned int result = 0;
                result += l_159;
                result += l_160.s7;
                result += l_160.s6;
                result += l_160.s5;
                result += l_160.s4;
                result += l_160.s3;
                result += l_160.s2;
                result += l_160.s1;
                result += l_160.s0;
                result += l_161;
                result += l_163.f0;
                result += l_163.f1;
                result += l_164.s7;
                result += l_164.s6;
                result += l_164.s5;
                result += l_164.s4;
                result += l_164.s3;
                result += l_164.s2;
                result += l_164.s1;
                result += l_164.s0;
                atomic_add(&p_531->l_special_values[31], result);
            }
            else
            { /* block id: 64 */
                (1 + 1);
            }
            return &p_531->g_81[2][0][3];
        }
        for (l_143 = 11; (l_143 == (-1)); --l_143)
        { /* block id: 71 */
            (*l_155) ^= (-1L);
        }
        l_252++;
    }
    else
    { /* block id: 75 */
        return &p_531->g_81[3][3][7];
    }
    (*p_531->g_156) = ((p_531->g_255 , (safe_mod_func_uint64_t_u_u(((((0x345E4628A9877D3EL | 8UL) > (((*p_531->g_156) , &p_531->g_41) != (p_531->g_260 = l_258))) != (+(safe_sub_func_uint32_t_u_u((((((VECTOR(int64_t, 16))(l_263.yyxxyxxxxyxyyyyy)).se , ((safe_div_func_int8_t_s_s(2L, 2UL)) & 0x4574DB81L)) >= 2L) == p_531->g_44), p_49)))) > p_49), p_47))) & p_531->g_34.x);
    l_267++;
    for (p_531->g_44 = (-8); (p_531->g_44 > 31); p_531->g_44 = safe_add_func_uint8_t_u_u(p_531->g_44, 9))
    { /* block id: 83 */
        uint32_t l_276[9];
        uint32_t l_312 = 0UL;
        int32_t *l_321 = &l_249[0][5];
        int64_t l_327 = (-1L);
        VECTOR(uint64_t, 16) l_353 = (VECTOR(uint64_t, 16))(0xB97F6F321581F993L, (VECTOR(uint64_t, 4))(0xB97F6F321581F993L, (VECTOR(uint64_t, 2))(0xB97F6F321581F993L, 0x7B31AE87EE55952BL), 0x7B31AE87EE55952BL), 0x7B31AE87EE55952BL, 0xB97F6F321581F993L, 0x7B31AE87EE55952BL, (VECTOR(uint64_t, 2))(0xB97F6F321581F993L, 0x7B31AE87EE55952BL), (VECTOR(uint64_t, 2))(0xB97F6F321581F993L, 0x7B31AE87EE55952BL), 0xB97F6F321581F993L, 0x7B31AE87EE55952BL, 0xB97F6F321581F993L, 0x7B31AE87EE55952BL);
        int64_t l_357 = 7L;
        int i;
        for (i = 0; i < 9; i++)
            l_276[i] = 5UL;
        for (l_123 = 0; (l_123 == (-6)); l_123--)
        { /* block id: 86 */
            int8_t l_274 = (-1L);
            int32_t l_275 = 0x5D0B67DEL;
            int16_t *l_289[1];
            int8_t ***l_296 = &p_531->g_41;
            uint16_t *l_301 = &l_124;
            int i;
            for (i = 0; i < 1; i++)
                l_289[i] = (void*)0;
            ++l_276[2];
            p_531->g_297 ^= ((VECTOR(int32_t, 8))(((safe_mul_func_uint16_t_u_u((safe_sub_func_int16_t_s_s(((((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(0x6D5E11F5L, 0x779F529EL, 0x63BA38D6L, ((VECTOR(int32_t, 2))(1L, 8L)), ((VECTOR(int32_t, 2))(l_283.s74)), 0L)).odd)).xyywxzzz)).s7 , 0x7070EBD950364202L) <= ((((safe_add_func_uint16_t_u_u((0x44F939530AED22DDL ^ 0xB5B3B9C48B76258BL), ((safe_mul_func_uint16_t_u_u((l_274 == ((l_289[0] = l_288[3]) == ((safe_add_func_int16_t_s_s(p_47, (0L && (((safe_mul_func_int32_t_s_s((safe_mul_func_uint8_t_u_u(255UL, p_531->g_81[5][2][2])), 0L)) , l_296) != (void*)0)))) , (void*)0))), 1L)) <= p_531->g_81[5][2][0]))) & p_49) <= (*p_531->g_156)) , p_531->g_78.sb)), p_46)), p_49)) , 0x43C2EFA9L), (-3L), 0x2017724EL, (-1L), l_276[2], 6L, 0L, 0x61E27F16L)).s5;
            if ((atomic_inc(&p_531->g_atomic_input[74 * get_linear_group_id() + 19]) == 3))
            { /* block id: 91 */
                union U0 *l_299 = (void*)0;
                union U0 **l_298 = &l_299;
                union U0 **l_300 = &l_299;
                l_300 = l_298;
                unsigned int result = 0;
                atomic_add(&p_531->g_special_values[74 * get_linear_group_id() + 19], result);
            }
            else
            { /* block id: 93 */
                (1 + 1);
            }
            if ((((*l_301) = 1UL) & p_531->g_251))
            { /* block id: 97 */
                int32_t **l_304 = &l_266[0];
                for (p_49 = 0; (p_49 == 27); ++p_49)
                { /* block id: 100 */
                    return &p_531->g_81[3][3][5];
                }
                if ((*p_531->g_156))
                    continue;
                if (p_47)
                    break;
                (*l_304) = &l_275;
            }
            else
            { /* block id: 106 */
                int16_t l_316 = 0x2152L;
                int32_t *l_319[1][4] = {{&p_531->g_81[2][0][3],&p_531->g_81[2][0][3],&p_531->g_81[2][0][3],&p_531->g_81[2][0][3]}};
                int i, j;
                for (p_531->g_297 = 0; (p_531->g_297 < 22); ++p_531->g_297)
                { /* block id: 109 */
                    uint32_t l_307 = 0x1AC8B837L;
                    l_307--;
                    for (l_242 = 0; (l_242 == 23); ++l_242)
                    { /* block id: 113 */
                        int32_t *l_317 = &l_241;
                        if (l_312)
                            break;
                        (*p_531->g_314) = &p_531->g_81[2][3][2];
                        if (l_316)
                            continue;
                        (*p_531->g_318) = l_317;
                    }
                }
                return p_531->g_322;
            }
        }
        (*l_321) |= (safe_rshift_func_uint16_t_u_s(p_531->g_78.sf, 1));
        for (l_240 = 0; (l_240 < 19); l_240 = safe_add_func_int8_t_s_s(l_240, 7))
        { /* block id: 126 */
            uint8_t l_328 = 0x54L;
            uint16_t *l_338 = &l_124;
            union U0 **l_362 = &p_531->g_360;
            int32_t l_363 = 0x788B6936L;
            int32_t l_364 = 0x2CDDE822L;
            union U0 ***l_382[1];
            int i;
            for (i = 0; i < 1; i++)
                l_382[i] = &l_362;
            (*l_321) = l_327;
            (*p_531->g_322) = ((l_328 && (safe_div_func_uint64_t_u_u((safe_div_func_int16_t_s_s((p_531->g_76.s1 == (l_364 = (l_363 = (((((VECTOR(uint16_t, 8))(p_531->g_333.wyzwwzyy)).s4 , (safe_mod_func_int8_t_s_s((((((((safe_mul_func_int16_t_s_s(l_328, (((*l_338) &= p_49) || (safe_add_func_int16_t_s_s(((safe_lshift_func_uint16_t_u_s(p_531->g_297, 12)) | (safe_add_func_int8_t_s_s(p_49, ((safe_sub_func_uint16_t_u_u(((0xA6L || (p_531->g_34.w = ((*l_321) = ((safe_lshift_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((p_531->g_358 |= (safe_sub_func_uint64_t_u_u(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(l_353.s5e47)))).z, (safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 16))(0x0AL, 0x17L, (p_531->g_137.s3 ^= (((VECTOR(int32_t, 16))(((GROUP_DIVERGE(0, 1) , p_531->g_356) , (*l_321)), 8L, ((VECTOR(int32_t, 4))(0x1337592DL)), (-4L), 0x0CDC20FDL, p_531->g_34.x, ((VECTOR(int32_t, 2))((-4L))), ((VECTOR(int32_t, 4))((-7L))), 0x279E3E11L)).s5 , 1L)), (*l_321), 0x58L, 1L, 0x37L, 0x6BL, l_357, (-1L), ((VECTOR(int8_t, 2))(0x21L)), (*l_321), 0x10L, 0x62L, 0x51L))))).se, p_531->g_76.s5))))), p_531->g_74.s0)), p_46)) ^ l_328)))) == p_46), l_328)) <= p_46)))), 0x438BL))))) , p_531->g_359) == l_362) < p_46) | (-3L)) < p_531->g_81[0][1][2]) <= p_49), p_47))) ^ p_49) | p_46)))), GROUP_DIVERGE(1, 1))), 1UL))) & p_47);
            (*p_531->g_315) = ((p_531->g_34.x , (safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 4))(min(((VECTOR(int16_t, 4))(l_367.zxxw)), ((VECTOR(int16_t, 8))((((safe_mod_func_uint64_t_u_u((safe_mul_func_int8_t_s_s((safe_div_func_uint16_t_u_u((*l_321), p_531->g_374)), (safe_lshift_func_int16_t_s_s(p_531->g_78.s2, (safe_lshift_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(p_531->g_379.xxxy)).w, (((p_47 && p_531->g_115.sf) & (((safe_div_func_uint16_t_u_u((p_47 , ((((p_531->g_383 = &p_531->g_360) != (l_384 = &p_531->g_360)) & p_46) <= (-3L))), p_531->l_comm_values[(safe_mod_func_uint32_t_u_u(p_531->tid, 10))])) ^ (*p_531->g_322)) , (*p_531->g_322))) == 0x0CB3L))))))), p_531->g_34.w)) ^ p_47) <= p_531->g_44), (*l_321), 0x2308L, l_364, ((VECTOR(int16_t, 2))(0x3699L)), 6L, 0x2D7CL)).lo))).x, 0UL))) <= 0x523BL);
        }
    }
    return (*p_531->g_314);
}


/* ------------------------------------------ */
/* 
 * reads : p_531->l_comm_values p_531->g_34 p_531->g_74 p_531->g_76 p_531->g_78 p_531->g_41
 * writes: p_531->g_82 p_531->g_81
 */
int8_t ** func_50(uint16_t  p_51, struct S2 * p_531)
{ /* block id: 9 */
    uint32_t l_60 = 0x9195C588L;
    VECTOR(int64_t, 8) l_61 = (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x5550032DC71837DEL), 0x5550032DC71837DEL), 0x5550032DC71837DEL, (-1L), 0x5550032DC71837DEL);
    VECTOR(uint8_t, 8) l_72 = (VECTOR(uint8_t, 8))(0x85L, (VECTOR(uint8_t, 4))(0x85L, (VECTOR(uint8_t, 2))(0x85L, 255UL), 255UL), 255UL, 0x85L, 255UL);
    VECTOR(uint8_t, 2) l_73 = (VECTOR(uint8_t, 2))(0xA9L, 255UL);
    VECTOR(uint8_t, 4) l_75 = (VECTOR(uint8_t, 4))(0x4EL, (VECTOR(uint8_t, 2))(0x4EL, 248UL), 248UL);
    VECTOR(uint8_t, 16) l_77 = (VECTOR(uint8_t, 16))(0x69L, (VECTOR(uint8_t, 4))(0x69L, (VECTOR(uint8_t, 2))(0x69L, 0UL), 0UL), 0UL, 0x69L, 0UL, (VECTOR(uint8_t, 2))(0x69L, 0UL), (VECTOR(uint8_t, 2))(0x69L, 0UL), 0x69L, 0UL, 0x69L, 0UL);
    int32_t l_79 = 0x157B4C73L;
    int32_t *l_80[6][6][4];
    int32_t **l_83 = &l_80[5][1][3];
    int8_t *l_85 = (void*)0;
    int8_t **l_84 = &l_85;
    int i, j, k;
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 4; k++)
                l_80[i][j][k] = &p_531->g_81[2][0][3];
        }
    }
    (*l_83) = func_53((safe_sub_func_int64_t_s_s(((p_531->g_82 = (safe_add_func_uint8_t_u_u((l_60 , (((((VECTOR(int64_t, 8))(hadd(((VECTOR(int64_t, 8))(l_60, ((VECTOR(int64_t, 4))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 4),((VECTOR(int64_t, 2))(8L, 5L)).xyxy, ((VECTOR(int64_t, 16))(add_sat(((VECTOR(int64_t, 4))(0x552B8909FF4C90EBL, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(l_61.s75713242)).s67)).even, 0x0F82EA9177C83BE7L, 0L)).ywwwwxyzzyzyzyzy, ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))((safe_div_func_int64_t_s_s((-3L), (safe_mod_func_uint32_t_u_u(((l_61.s1 ^ p_531->l_comm_values[(safe_mod_func_uint32_t_u_u(p_531->tid, 10))]) ^ (safe_mul_func_uint16_t_u_u((l_79 |= (safe_mul_func_uint8_t_u_u((safe_mod_func_int32_t_s_s(p_531->g_34.z, 0x833E6FCBL)), (!((((VECTOR(uint8_t, 8))(l_72.s56714232)).s1 , ((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 2))(abs(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(l_73.yxyyyxxxyxxyyyyx)).s11))))).yxxx, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 8))(mad_hi(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(max(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(0xC3L, 0x0FL)))).xyyx, ((VECTOR(uint8_t, 8))(abs_diff(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(0xB7L, ((VECTOR(uint8_t, 2))(1UL, 0x54L)), 0UL)).zxzxxwyyxxyywyww)).even, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(p_531->g_74.s47)), 0x9EL, 0x67L)).even)).xxxxxyxx))).hi))), ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(add_sat(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(l_75.xx)).yxyyyxxy)).hi, ((VECTOR(uint8_t, 8))(p_531->g_76.s00340676)).odd))).lo)), 248UL, 255UL)), ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(l_77.sf71451cee08268a7)))).odd, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(p_531->g_78.sf7a6c610)).lo)).zxwxyxzy))).s76))).yyyxyyxx)).odd))).z) & l_73.x))))), 0x7B5CL))), 4UL)))), ((VECTOR(int64_t, 4))(0x0A1C32FD8C043881L)), p_51, 0x27F4FEF511E78C19L, (-6L))))).s3034403437620521))).s655e, ((VECTOR(int64_t, 4))(0x6FA3C451EDC62992L))))), 0L, 0x422552B10A263243L, (-1L))), ((VECTOR(int64_t, 8))(1L))))).s0 , &l_79) != l_80[5][1][3]) >= (-1L))), 0x65L))) ^ p_51), FAKE_DIVERGE(p_531->group_0_offset, get_group_id(0), 10))), &p_531->g_81[0][0][1], p_531);
    return p_531->g_41;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_531->g_81
 */
int32_t * func_53(uint16_t  p_54, int32_t * p_55, struct S2 * p_531)
{ /* block id: 12 */
    (*p_55) = 0x7A6E0921L;
    return p_55;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[74];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 74; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[74];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 74; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[10];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 10; i++)
            l_comm_values[i] = 1;
    struct S2 c_532;
    struct S2* p_531 = &c_532;
    struct S2 c_533 = {
        (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x64L), 0x64L), // p_531->g_34
        (void*)0, // p_531->g_41
        0x3518F4C6L, // p_531->g_44
        (VECTOR(uint8_t, 8))(4UL, (VECTOR(uint8_t, 4))(4UL, (VECTOR(uint8_t, 2))(4UL, 255UL), 255UL), 255UL, 4UL, 255UL), // p_531->g_74
        (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 2UL), 2UL), 2UL, 255UL, 2UL), // p_531->g_76
        (VECTOR(uint8_t, 16))(0xB3L, (VECTOR(uint8_t, 4))(0xB3L, (VECTOR(uint8_t, 2))(0xB3L, 0UL), 0UL), 0UL, 0xB3L, 0UL, (VECTOR(uint8_t, 2))(0xB3L, 0UL), (VECTOR(uint8_t, 2))(0xB3L, 0UL), 0xB3L, 0UL, 0xB3L, 0UL), // p_531->g_78
        {{{0x1BE81B99L,0L,1L,0L,0x1BE81B99L,(-5L),0x0F203DA9L,2L},{0x1BE81B99L,0L,1L,0L,0x1BE81B99L,(-5L),0x0F203DA9L,2L},{0x1BE81B99L,0L,1L,0L,0x1BE81B99L,(-5L),0x0F203DA9L,2L},{0x1BE81B99L,0L,1L,0L,0x1BE81B99L,(-5L),0x0F203DA9L,2L}},{{0x1BE81B99L,0L,1L,0L,0x1BE81B99L,(-5L),0x0F203DA9L,2L},{0x1BE81B99L,0L,1L,0L,0x1BE81B99L,(-5L),0x0F203DA9L,2L},{0x1BE81B99L,0L,1L,0L,0x1BE81B99L,(-5L),0x0F203DA9L,2L},{0x1BE81B99L,0L,1L,0L,0x1BE81B99L,(-5L),0x0F203DA9L,2L}},{{0x1BE81B99L,0L,1L,0L,0x1BE81B99L,(-5L),0x0F203DA9L,2L},{0x1BE81B99L,0L,1L,0L,0x1BE81B99L,(-5L),0x0F203DA9L,2L},{0x1BE81B99L,0L,1L,0L,0x1BE81B99L,(-5L),0x0F203DA9L,2L},{0x1BE81B99L,0L,1L,0L,0x1BE81B99L,(-5L),0x0F203DA9L,2L}},{{0x1BE81B99L,0L,1L,0L,0x1BE81B99L,(-5L),0x0F203DA9L,2L},{0x1BE81B99L,0L,1L,0L,0x1BE81B99L,(-5L),0x0F203DA9L,2L},{0x1BE81B99L,0L,1L,0L,0x1BE81B99L,(-5L),0x0F203DA9L,2L},{0x1BE81B99L,0L,1L,0L,0x1BE81B99L,(-5L),0x0F203DA9L,2L}},{{0x1BE81B99L,0L,1L,0L,0x1BE81B99L,(-5L),0x0F203DA9L,2L},{0x1BE81B99L,0L,1L,0L,0x1BE81B99L,(-5L),0x0F203DA9L,2L},{0x1BE81B99L,0L,1L,0L,0x1BE81B99L,(-5L),0x0F203DA9L,2L},{0x1BE81B99L,0L,1L,0L,0x1BE81B99L,(-5L),0x0F203DA9L,2L}},{{0x1BE81B99L,0L,1L,0L,0x1BE81B99L,(-5L),0x0F203DA9L,2L},{0x1BE81B99L,0L,1L,0L,0x1BE81B99L,(-5L),0x0F203DA9L,2L},{0x1BE81B99L,0L,1L,0L,0x1BE81B99L,(-5L),0x0F203DA9L,2L},{0x1BE81B99L,0L,1L,0L,0x1BE81B99L,(-5L),0x0F203DA9L,2L}},{{0x1BE81B99L,0L,1L,0L,0x1BE81B99L,(-5L),0x0F203DA9L,2L},{0x1BE81B99L,0L,1L,0L,0x1BE81B99L,(-5L),0x0F203DA9L,2L},{0x1BE81B99L,0L,1L,0L,0x1BE81B99L,(-5L),0x0F203DA9L,2L},{0x1BE81B99L,0L,1L,0L,0x1BE81B99L,(-5L),0x0F203DA9L,2L}},{{0x1BE81B99L,0L,1L,0L,0x1BE81B99L,(-5L),0x0F203DA9L,2L},{0x1BE81B99L,0L,1L,0L,0x1BE81B99L,(-5L),0x0F203DA9L,2L},{0x1BE81B99L,0L,1L,0L,0x1BE81B99L,(-5L),0x0F203DA9L,2L},{0x1BE81B99L,0L,1L,0L,0x1BE81B99L,(-5L),0x0F203DA9L,2L}}}, // p_531->g_81
        0x35D3F9A7L, // p_531->g_82
        0UL, // p_531->g_92
        (VECTOR(uint16_t, 4))(0xAA95L, (VECTOR(uint16_t, 2))(0xAA95L, 65529UL), 65529UL), // p_531->g_106
        (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x92L), 0x92L), 0x92L, 0UL, 0x92L), // p_531->g_113
        (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 1UL), 1UL), 1UL, 255UL, 1UL, (VECTOR(uint8_t, 2))(255UL, 1UL), (VECTOR(uint8_t, 2))(255UL, 1UL), 255UL, 1UL, 255UL, 1UL), // p_531->g_115
        {0}, // p_531->g_118
        (VECTOR(int8_t, 8))(0x31L, (VECTOR(int8_t, 4))(0x31L, (VECTOR(int8_t, 2))(0x31L, (-7L)), (-7L)), (-7L), 0x31L, (-7L)), // p_531->g_137
        0x0EFCL, // p_531->g_152
        &p_531->g_81[0][0][4], // p_531->g_156
        0x24709FAFL, // p_531->g_251
        {0UL}, // p_531->g_255
        &p_531->g_41, // p_531->g_260
        0xACL, // p_531->g_297
        {(void*)0,(void*)0,(void*)0,(void*)0}, // p_531->g_313
        &p_531->g_81[2][0][3], // p_531->g_315
        &p_531->g_315, // p_531->g_314
        &p_531->g_315, // p_531->g_318
        &p_531->g_81[0][0][3], // p_531->g_322
        (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0xE49EL), 0xE49EL), // p_531->g_333
        {0}, // p_531->g_356
        0x7EL, // p_531->g_358
        {0}, // p_531->g_361
        &p_531->g_361, // p_531->g_360
        &p_531->g_360, // p_531->g_359
        0x80BEL, // p_531->g_374
        (VECTOR(uint8_t, 2))(1UL, 0x6EL), // p_531->g_379
        (void*)0, // p_531->g_383
        &p_531->g_315, // p_531->g_385
        0x92L, // p_531->g_388
        1UL, // p_531->g_405
        (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0xE62BE37BL), 0xE62BE37BL), // p_531->g_408
        {0}, // p_531->g_433
        (VECTOR(uint16_t, 8))(0x61DEL, (VECTOR(uint16_t, 4))(0x61DEL, (VECTOR(uint16_t, 2))(0x61DEL, 0xD519L), 0xD519L), 0xD519L, 0x61DEL, 0xD519L), // p_531->g_436
        (VECTOR(uint16_t, 16))(7UL, (VECTOR(uint16_t, 4))(7UL, (VECTOR(uint16_t, 2))(7UL, 0x2FD3L), 0x2FD3L), 0x2FD3L, 7UL, 0x2FD3L, (VECTOR(uint16_t, 2))(7UL, 0x2FD3L), (VECTOR(uint16_t, 2))(7UL, 0x2FD3L), 7UL, 0x2FD3L, 7UL, 0x2FD3L), // p_531->g_437
        7UL, // p_531->g_444
        0x74L, // p_531->g_447
        (void*)0, // p_531->g_453
        (VECTOR(uint64_t, 2))(1UL, 3UL), // p_531->g_458
        (VECTOR(uint64_t, 16))(0xB88482BB972B8ABEL, (VECTOR(uint64_t, 4))(0xB88482BB972B8ABEL, (VECTOR(uint64_t, 2))(0xB88482BB972B8ABEL, 0x2E2860078D11FEA3L), 0x2E2860078D11FEA3L), 0x2E2860078D11FEA3L, 0xB88482BB972B8ABEL, 0x2E2860078D11FEA3L, (VECTOR(uint64_t, 2))(0xB88482BB972B8ABEL, 0x2E2860078D11FEA3L), (VECTOR(uint64_t, 2))(0xB88482BB972B8ABEL, 0x2E2860078D11FEA3L), 0xB88482BB972B8ABEL, 0x2E2860078D11FEA3L, 0xB88482BB972B8ABEL, 0x2E2860078D11FEA3L), // p_531->g_459
        (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x8ED2DDA7152616A7L), 0x8ED2DDA7152616A7L), // p_531->g_460
        (VECTOR(uint64_t, 8))(18446744073709551613UL, (VECTOR(uint64_t, 4))(18446744073709551613UL, (VECTOR(uint64_t, 2))(18446744073709551613UL, 3UL), 3UL), 3UL, 18446744073709551613UL, 3UL), // p_531->g_463
        (VECTOR(uint64_t, 16))(0x1A11C084ABA36788L, (VECTOR(uint64_t, 4))(0x1A11C084ABA36788L, (VECTOR(uint64_t, 2))(0x1A11C084ABA36788L, 1UL), 1UL), 1UL, 0x1A11C084ABA36788L, 1UL, (VECTOR(uint64_t, 2))(0x1A11C084ABA36788L, 1UL), (VECTOR(uint64_t, 2))(0x1A11C084ABA36788L, 1UL), 0x1A11C084ABA36788L, 1UL, 0x1A11C084ABA36788L, 1UL), // p_531->g_464
        (VECTOR(uint64_t, 2))(18446744073709551615UL, 0UL), // p_531->g_465
        0x73C9C1D5L, // p_531->g_514
        0, // p_531->v_collective
        sequence_input[get_global_id(0)], // p_531->global_0_offset
        sequence_input[get_global_id(1)], // p_531->global_1_offset
        sequence_input[get_global_id(2)], // p_531->global_2_offset
        sequence_input[get_local_id(0)], // p_531->local_0_offset
        sequence_input[get_local_id(1)], // p_531->local_1_offset
        sequence_input[get_local_id(2)], // p_531->local_2_offset
        sequence_input[get_group_id(0)], // p_531->group_0_offset
        sequence_input[get_group_id(1)], // p_531->group_1_offset
        sequence_input[get_group_id(2)], // p_531->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 10)), permutations[0][get_linear_local_id()])), // p_531->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_532 = c_533;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_531);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_531->g_34.x, "p_531->g_34.x", print_hash_value);
    transparent_crc(p_531->g_34.y, "p_531->g_34.y", print_hash_value);
    transparent_crc(p_531->g_34.z, "p_531->g_34.z", print_hash_value);
    transparent_crc(p_531->g_34.w, "p_531->g_34.w", print_hash_value);
    transparent_crc(p_531->g_44, "p_531->g_44", print_hash_value);
    transparent_crc(p_531->g_74.s0, "p_531->g_74.s0", print_hash_value);
    transparent_crc(p_531->g_74.s1, "p_531->g_74.s1", print_hash_value);
    transparent_crc(p_531->g_74.s2, "p_531->g_74.s2", print_hash_value);
    transparent_crc(p_531->g_74.s3, "p_531->g_74.s3", print_hash_value);
    transparent_crc(p_531->g_74.s4, "p_531->g_74.s4", print_hash_value);
    transparent_crc(p_531->g_74.s5, "p_531->g_74.s5", print_hash_value);
    transparent_crc(p_531->g_74.s6, "p_531->g_74.s6", print_hash_value);
    transparent_crc(p_531->g_74.s7, "p_531->g_74.s7", print_hash_value);
    transparent_crc(p_531->g_76.s0, "p_531->g_76.s0", print_hash_value);
    transparent_crc(p_531->g_76.s1, "p_531->g_76.s1", print_hash_value);
    transparent_crc(p_531->g_76.s2, "p_531->g_76.s2", print_hash_value);
    transparent_crc(p_531->g_76.s3, "p_531->g_76.s3", print_hash_value);
    transparent_crc(p_531->g_76.s4, "p_531->g_76.s4", print_hash_value);
    transparent_crc(p_531->g_76.s5, "p_531->g_76.s5", print_hash_value);
    transparent_crc(p_531->g_76.s6, "p_531->g_76.s6", print_hash_value);
    transparent_crc(p_531->g_76.s7, "p_531->g_76.s7", print_hash_value);
    transparent_crc(p_531->g_78.s0, "p_531->g_78.s0", print_hash_value);
    transparent_crc(p_531->g_78.s1, "p_531->g_78.s1", print_hash_value);
    transparent_crc(p_531->g_78.s2, "p_531->g_78.s2", print_hash_value);
    transparent_crc(p_531->g_78.s3, "p_531->g_78.s3", print_hash_value);
    transparent_crc(p_531->g_78.s4, "p_531->g_78.s4", print_hash_value);
    transparent_crc(p_531->g_78.s5, "p_531->g_78.s5", print_hash_value);
    transparent_crc(p_531->g_78.s6, "p_531->g_78.s6", print_hash_value);
    transparent_crc(p_531->g_78.s7, "p_531->g_78.s7", print_hash_value);
    transparent_crc(p_531->g_78.s8, "p_531->g_78.s8", print_hash_value);
    transparent_crc(p_531->g_78.s9, "p_531->g_78.s9", print_hash_value);
    transparent_crc(p_531->g_78.sa, "p_531->g_78.sa", print_hash_value);
    transparent_crc(p_531->g_78.sb, "p_531->g_78.sb", print_hash_value);
    transparent_crc(p_531->g_78.sc, "p_531->g_78.sc", print_hash_value);
    transparent_crc(p_531->g_78.sd, "p_531->g_78.sd", print_hash_value);
    transparent_crc(p_531->g_78.se, "p_531->g_78.se", print_hash_value);
    transparent_crc(p_531->g_78.sf, "p_531->g_78.sf", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_531->g_81[i][j][k], "p_531->g_81[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_531->g_82, "p_531->g_82", print_hash_value);
    transparent_crc(p_531->g_92, "p_531->g_92", print_hash_value);
    transparent_crc(p_531->g_106.x, "p_531->g_106.x", print_hash_value);
    transparent_crc(p_531->g_106.y, "p_531->g_106.y", print_hash_value);
    transparent_crc(p_531->g_106.z, "p_531->g_106.z", print_hash_value);
    transparent_crc(p_531->g_106.w, "p_531->g_106.w", print_hash_value);
    transparent_crc(p_531->g_113.s0, "p_531->g_113.s0", print_hash_value);
    transparent_crc(p_531->g_113.s1, "p_531->g_113.s1", print_hash_value);
    transparent_crc(p_531->g_113.s2, "p_531->g_113.s2", print_hash_value);
    transparent_crc(p_531->g_113.s3, "p_531->g_113.s3", print_hash_value);
    transparent_crc(p_531->g_113.s4, "p_531->g_113.s4", print_hash_value);
    transparent_crc(p_531->g_113.s5, "p_531->g_113.s5", print_hash_value);
    transparent_crc(p_531->g_113.s6, "p_531->g_113.s6", print_hash_value);
    transparent_crc(p_531->g_113.s7, "p_531->g_113.s7", print_hash_value);
    transparent_crc(p_531->g_115.s0, "p_531->g_115.s0", print_hash_value);
    transparent_crc(p_531->g_115.s1, "p_531->g_115.s1", print_hash_value);
    transparent_crc(p_531->g_115.s2, "p_531->g_115.s2", print_hash_value);
    transparent_crc(p_531->g_115.s3, "p_531->g_115.s3", print_hash_value);
    transparent_crc(p_531->g_115.s4, "p_531->g_115.s4", print_hash_value);
    transparent_crc(p_531->g_115.s5, "p_531->g_115.s5", print_hash_value);
    transparent_crc(p_531->g_115.s6, "p_531->g_115.s6", print_hash_value);
    transparent_crc(p_531->g_115.s7, "p_531->g_115.s7", print_hash_value);
    transparent_crc(p_531->g_115.s8, "p_531->g_115.s8", print_hash_value);
    transparent_crc(p_531->g_115.s9, "p_531->g_115.s9", print_hash_value);
    transparent_crc(p_531->g_115.sa, "p_531->g_115.sa", print_hash_value);
    transparent_crc(p_531->g_115.sb, "p_531->g_115.sb", print_hash_value);
    transparent_crc(p_531->g_115.sc, "p_531->g_115.sc", print_hash_value);
    transparent_crc(p_531->g_115.sd, "p_531->g_115.sd", print_hash_value);
    transparent_crc(p_531->g_115.se, "p_531->g_115.se", print_hash_value);
    transparent_crc(p_531->g_115.sf, "p_531->g_115.sf", print_hash_value);
    transparent_crc(p_531->g_137.s0, "p_531->g_137.s0", print_hash_value);
    transparent_crc(p_531->g_137.s1, "p_531->g_137.s1", print_hash_value);
    transparent_crc(p_531->g_137.s2, "p_531->g_137.s2", print_hash_value);
    transparent_crc(p_531->g_137.s3, "p_531->g_137.s3", print_hash_value);
    transparent_crc(p_531->g_137.s4, "p_531->g_137.s4", print_hash_value);
    transparent_crc(p_531->g_137.s5, "p_531->g_137.s5", print_hash_value);
    transparent_crc(p_531->g_137.s6, "p_531->g_137.s6", print_hash_value);
    transparent_crc(p_531->g_137.s7, "p_531->g_137.s7", print_hash_value);
    transparent_crc(p_531->g_152, "p_531->g_152", print_hash_value);
    transparent_crc(p_531->g_251, "p_531->g_251", print_hash_value);
    transparent_crc(p_531->g_255.f0, "p_531->g_255.f0", print_hash_value);
    transparent_crc(p_531->g_297, "p_531->g_297", print_hash_value);
    transparent_crc(p_531->g_333.x, "p_531->g_333.x", print_hash_value);
    transparent_crc(p_531->g_333.y, "p_531->g_333.y", print_hash_value);
    transparent_crc(p_531->g_333.z, "p_531->g_333.z", print_hash_value);
    transparent_crc(p_531->g_333.w, "p_531->g_333.w", print_hash_value);
    transparent_crc(p_531->g_358, "p_531->g_358", print_hash_value);
    transparent_crc(p_531->g_374, "p_531->g_374", print_hash_value);
    transparent_crc(p_531->g_379.x, "p_531->g_379.x", print_hash_value);
    transparent_crc(p_531->g_379.y, "p_531->g_379.y", print_hash_value);
    transparent_crc(p_531->g_388, "p_531->g_388", print_hash_value);
    transparent_crc(p_531->g_405, "p_531->g_405", print_hash_value);
    transparent_crc(p_531->g_408.x, "p_531->g_408.x", print_hash_value);
    transparent_crc(p_531->g_408.y, "p_531->g_408.y", print_hash_value);
    transparent_crc(p_531->g_408.z, "p_531->g_408.z", print_hash_value);
    transparent_crc(p_531->g_408.w, "p_531->g_408.w", print_hash_value);
    transparent_crc(p_531->g_436.s0, "p_531->g_436.s0", print_hash_value);
    transparent_crc(p_531->g_436.s1, "p_531->g_436.s1", print_hash_value);
    transparent_crc(p_531->g_436.s2, "p_531->g_436.s2", print_hash_value);
    transparent_crc(p_531->g_436.s3, "p_531->g_436.s3", print_hash_value);
    transparent_crc(p_531->g_436.s4, "p_531->g_436.s4", print_hash_value);
    transparent_crc(p_531->g_436.s5, "p_531->g_436.s5", print_hash_value);
    transparent_crc(p_531->g_436.s6, "p_531->g_436.s6", print_hash_value);
    transparent_crc(p_531->g_436.s7, "p_531->g_436.s7", print_hash_value);
    transparent_crc(p_531->g_437.s0, "p_531->g_437.s0", print_hash_value);
    transparent_crc(p_531->g_437.s1, "p_531->g_437.s1", print_hash_value);
    transparent_crc(p_531->g_437.s2, "p_531->g_437.s2", print_hash_value);
    transparent_crc(p_531->g_437.s3, "p_531->g_437.s3", print_hash_value);
    transparent_crc(p_531->g_437.s4, "p_531->g_437.s4", print_hash_value);
    transparent_crc(p_531->g_437.s5, "p_531->g_437.s5", print_hash_value);
    transparent_crc(p_531->g_437.s6, "p_531->g_437.s6", print_hash_value);
    transparent_crc(p_531->g_437.s7, "p_531->g_437.s7", print_hash_value);
    transparent_crc(p_531->g_437.s8, "p_531->g_437.s8", print_hash_value);
    transparent_crc(p_531->g_437.s9, "p_531->g_437.s9", print_hash_value);
    transparent_crc(p_531->g_437.sa, "p_531->g_437.sa", print_hash_value);
    transparent_crc(p_531->g_437.sb, "p_531->g_437.sb", print_hash_value);
    transparent_crc(p_531->g_437.sc, "p_531->g_437.sc", print_hash_value);
    transparent_crc(p_531->g_437.sd, "p_531->g_437.sd", print_hash_value);
    transparent_crc(p_531->g_437.se, "p_531->g_437.se", print_hash_value);
    transparent_crc(p_531->g_437.sf, "p_531->g_437.sf", print_hash_value);
    transparent_crc(p_531->g_444, "p_531->g_444", print_hash_value);
    transparent_crc(p_531->g_447, "p_531->g_447", print_hash_value);
    transparent_crc(p_531->g_458.x, "p_531->g_458.x", print_hash_value);
    transparent_crc(p_531->g_458.y, "p_531->g_458.y", print_hash_value);
    transparent_crc(p_531->g_459.s0, "p_531->g_459.s0", print_hash_value);
    transparent_crc(p_531->g_459.s1, "p_531->g_459.s1", print_hash_value);
    transparent_crc(p_531->g_459.s2, "p_531->g_459.s2", print_hash_value);
    transparent_crc(p_531->g_459.s3, "p_531->g_459.s3", print_hash_value);
    transparent_crc(p_531->g_459.s4, "p_531->g_459.s4", print_hash_value);
    transparent_crc(p_531->g_459.s5, "p_531->g_459.s5", print_hash_value);
    transparent_crc(p_531->g_459.s6, "p_531->g_459.s6", print_hash_value);
    transparent_crc(p_531->g_459.s7, "p_531->g_459.s7", print_hash_value);
    transparent_crc(p_531->g_459.s8, "p_531->g_459.s8", print_hash_value);
    transparent_crc(p_531->g_459.s9, "p_531->g_459.s9", print_hash_value);
    transparent_crc(p_531->g_459.sa, "p_531->g_459.sa", print_hash_value);
    transparent_crc(p_531->g_459.sb, "p_531->g_459.sb", print_hash_value);
    transparent_crc(p_531->g_459.sc, "p_531->g_459.sc", print_hash_value);
    transparent_crc(p_531->g_459.sd, "p_531->g_459.sd", print_hash_value);
    transparent_crc(p_531->g_459.se, "p_531->g_459.se", print_hash_value);
    transparent_crc(p_531->g_459.sf, "p_531->g_459.sf", print_hash_value);
    transparent_crc(p_531->g_460.x, "p_531->g_460.x", print_hash_value);
    transparent_crc(p_531->g_460.y, "p_531->g_460.y", print_hash_value);
    transparent_crc(p_531->g_460.z, "p_531->g_460.z", print_hash_value);
    transparent_crc(p_531->g_460.w, "p_531->g_460.w", print_hash_value);
    transparent_crc(p_531->g_463.s0, "p_531->g_463.s0", print_hash_value);
    transparent_crc(p_531->g_463.s1, "p_531->g_463.s1", print_hash_value);
    transparent_crc(p_531->g_463.s2, "p_531->g_463.s2", print_hash_value);
    transparent_crc(p_531->g_463.s3, "p_531->g_463.s3", print_hash_value);
    transparent_crc(p_531->g_463.s4, "p_531->g_463.s4", print_hash_value);
    transparent_crc(p_531->g_463.s5, "p_531->g_463.s5", print_hash_value);
    transparent_crc(p_531->g_463.s6, "p_531->g_463.s6", print_hash_value);
    transparent_crc(p_531->g_463.s7, "p_531->g_463.s7", print_hash_value);
    transparent_crc(p_531->g_464.s0, "p_531->g_464.s0", print_hash_value);
    transparent_crc(p_531->g_464.s1, "p_531->g_464.s1", print_hash_value);
    transparent_crc(p_531->g_464.s2, "p_531->g_464.s2", print_hash_value);
    transparent_crc(p_531->g_464.s3, "p_531->g_464.s3", print_hash_value);
    transparent_crc(p_531->g_464.s4, "p_531->g_464.s4", print_hash_value);
    transparent_crc(p_531->g_464.s5, "p_531->g_464.s5", print_hash_value);
    transparent_crc(p_531->g_464.s6, "p_531->g_464.s6", print_hash_value);
    transparent_crc(p_531->g_464.s7, "p_531->g_464.s7", print_hash_value);
    transparent_crc(p_531->g_464.s8, "p_531->g_464.s8", print_hash_value);
    transparent_crc(p_531->g_464.s9, "p_531->g_464.s9", print_hash_value);
    transparent_crc(p_531->g_464.sa, "p_531->g_464.sa", print_hash_value);
    transparent_crc(p_531->g_464.sb, "p_531->g_464.sb", print_hash_value);
    transparent_crc(p_531->g_464.sc, "p_531->g_464.sc", print_hash_value);
    transparent_crc(p_531->g_464.sd, "p_531->g_464.sd", print_hash_value);
    transparent_crc(p_531->g_464.se, "p_531->g_464.se", print_hash_value);
    transparent_crc(p_531->g_464.sf, "p_531->g_464.sf", print_hash_value);
    transparent_crc(p_531->g_465.x, "p_531->g_465.x", print_hash_value);
    transparent_crc(p_531->g_465.y, "p_531->g_465.y", print_hash_value);
    transparent_crc(p_531->g_514, "p_531->g_514", print_hash_value);
    transparent_crc(p_531->v_collective, "p_531->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 74; i++)
            transparent_crc(p_531->g_special_values[i + 74 * get_linear_group_id()], "p_531->g_special_values[i + 74 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 74; i++)
            transparent_crc(p_531->l_special_values[i], "p_531->l_special_values[i]", print_hash_value);
    transparent_crc(p_531->l_comm_values[get_linear_local_id()], "p_531->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_531->g_comm_values[get_linear_group_id() * 10 + get_linear_local_id()], "p_531->g_comm_values[get_linear_group_id() * 10 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
