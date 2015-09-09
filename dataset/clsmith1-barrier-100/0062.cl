// ---fake_divergence ---inter_thread_comm -g 70,60,2 -l 1,15,2
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

__constant uint32_t permutations[10][30] = {
{22,20,27,14,5,0,29,12,15,10,11,26,8,21,6,23,18,25,19,13,2,17,28,24,1,3,7,4,16,9}, // permutation 0
{1,26,12,15,13,29,16,10,25,23,22,7,19,17,3,6,9,24,5,21,27,11,28,8,2,18,4,0,20,14}, // permutation 1
{20,29,5,14,21,12,19,6,23,18,15,7,0,25,10,4,16,26,9,8,3,1,27,28,11,22,2,24,17,13}, // permutation 2
{1,16,29,15,19,8,27,3,14,22,2,11,5,18,12,24,13,10,0,21,9,23,28,4,25,20,6,26,7,17}, // permutation 3
{1,21,12,0,27,8,19,4,5,9,17,18,11,28,23,2,22,14,10,6,26,29,7,25,13,15,3,20,24,16}, // permutation 4
{13,7,10,11,2,15,26,21,27,5,19,17,6,18,12,3,1,24,23,22,9,20,28,8,25,4,16,29,0,14}, // permutation 5
{14,0,28,29,13,18,5,15,26,23,7,9,12,24,11,20,1,21,10,4,6,25,17,16,8,22,3,27,19,2}, // permutation 6
{11,3,18,22,16,8,14,9,19,10,24,29,21,1,15,12,25,17,4,7,13,6,23,27,0,26,20,5,28,2}, // permutation 7
{1,6,5,8,11,20,3,16,7,28,27,29,10,14,24,25,22,19,26,13,9,21,23,17,0,15,4,18,12,2}, // permutation 8
{18,22,24,10,27,4,1,2,9,12,11,26,16,15,23,21,6,0,7,28,14,19,29,13,25,3,8,20,5,17} // permutation 9
};

// Seed: 62

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint32_t  f0;
   int32_t  f1;
   uint8_t  f2;
};

struct S1 {
    uint32_t g_18;
    uint32_t g_24;
    struct S0 g_35;
    uint16_t g_67;
    int32_t *g_68;
    int32_t ** volatile g_69;
    uint16_t g_79;
    volatile int32_t g_91[8][8];
    uint32_t g_102[9][8][3];
    int64_t g_109;
    int8_t g_111;
    int16_t g_119;
    int32_t ** volatile g_150;
    int32_t ** volatile g_157;
    int32_t g_176;
    uint64_t g_187[1][4];
    uint64_t g_189;
    int32_t ** volatile g_190;
    int32_t ** volatile g_191;
    struct S0 *g_195;
    struct S0 **g_194;
    struct S0 *** volatile g_193[5][5];
    struct S0 *** volatile g_197;
    struct S0 *g_229;
    uint32_t *g_243;
    int32_t g_251;
    int32_t *g_284;
    uint32_t g_368[4];
    uint16_t *g_378;
    int32_t ** volatile g_379;
    uint8_t * volatile g_385;
    int32_t ** volatile g_390;
    int32_t ** volatile g_391;
    int32_t ** volatile g_392[10];
    struct S0 g_400;
    int32_t ** volatile g_468;
    uint64_t *g_475;
    uint64_t **g_474[2][5][8];
    uint8_t *g_477[6][1];
    volatile uint32_t g_522;
    struct S0 ***g_532;
    int32_t ** volatile g_540;
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
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
int32_t  func_1(struct S1 * p_554);
int16_t  func_4(struct S0  p_5, uint32_t  p_6, uint32_t  p_7, int32_t  p_8, struct S1 * p_554);
struct S0  func_9(uint32_t  p_10, struct S0  p_11, struct S1 * p_554);
int8_t  func_27(int32_t  p_28, struct S0  p_29, struct S1 * p_554);
int32_t * func_41(struct S0  p_42, struct S1 * p_554);
struct S0 * func_49(int64_t  p_50, int32_t * p_51, struct S1 * p_554);
int32_t * func_52(struct S0  p_53, struct S1 * p_554);
struct S0  func_54(int32_t * p_55, uint64_t  p_56, int64_t  p_57, int32_t * p_58, struct S1 * p_554);
uint64_t  func_60(uint8_t  p_61, struct S1 * p_554);
int32_t * func_62(uint16_t  p_63, int32_t  p_64, struct S1 * p_554);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_554->l_comm_values p_554->g_comm_values p_554->g_35 p_554->g_378 p_554->g_79 p_554->g_91 p_554->g_284 p_554->g_251 p_554->g_194 p_554->g_195 p_554->g_191 p_554->g_68 p_554->g_468 p_554->g_243 p_554->g_102 p_554->g_474 p_554->g_477 p_554->g_368 p_554->g_475 p_554->g_150 p_554->g_385 p_554->g_400.f1 p_554->g_522 p_554->g_176 p_554->g_67 p_554->g_189 p_554->g_69 p_554->g_109
 * writes: p_554->g_18 p_554->g_24 p_554->g_35.f2 p_554->g_35.f1 p_554->g_79 p_554->g_189 p_554->g_251 p_554->g_35 p_554->g_68 p_554->g_102 p_554->g_119 p_554->g_176 p_554->g_532 p_554->g_284 p_554->g_400.f1
 */
int32_t  func_1(struct S1 * p_554)
{ /* block id: 4 */
    int8_t l_19 = (-1L);
    int16_t *l_480 = &p_554->g_119;
    uint16_t l_481 = 0x6E2CL;
    struct S0 l_482 = {1UL,0x0CB956CBL,0UL};
    int32_t *l_524 = (void*)0;
    struct S0 l_527 = {0x8ED95842L,-4L,247UL};
    struct S0 ***l_531 = &p_554->g_194;
    struct S0 ****l_530[10][8][1] = {{{&l_531},{&l_531},{&l_531},{&l_531},{&l_531},{&l_531},{&l_531},{&l_531}},{{&l_531},{&l_531},{&l_531},{&l_531},{&l_531},{&l_531},{&l_531},{&l_531}},{{&l_531},{&l_531},{&l_531},{&l_531},{&l_531},{&l_531},{&l_531},{&l_531}},{{&l_531},{&l_531},{&l_531},{&l_531},{&l_531},{&l_531},{&l_531},{&l_531}},{{&l_531},{&l_531},{&l_531},{&l_531},{&l_531},{&l_531},{&l_531},{&l_531}},{{&l_531},{&l_531},{&l_531},{&l_531},{&l_531},{&l_531},{&l_531},{&l_531}},{{&l_531},{&l_531},{&l_531},{&l_531},{&l_531},{&l_531},{&l_531},{&l_531}},{{&l_531},{&l_531},{&l_531},{&l_531},{&l_531},{&l_531},{&l_531},{&l_531}},{{&l_531},{&l_531},{&l_531},{&l_531},{&l_531},{&l_531},{&l_531},{&l_531}},{{&l_531},{&l_531},{&l_531},{&l_531},{&l_531},{&l_531},{&l_531},{&l_531}}};
    uint64_t *l_537[5][4] = {{&p_554->g_187[0][2],&p_554->g_187[0][2],&p_554->g_187[0][2],&p_554->g_187[0][2]},{&p_554->g_187[0][2],&p_554->g_187[0][2],&p_554->g_187[0][2],&p_554->g_187[0][2]},{&p_554->g_187[0][2],&p_554->g_187[0][2],&p_554->g_187[0][2],&p_554->g_187[0][2]},{&p_554->g_187[0][2],&p_554->g_187[0][2],&p_554->g_187[0][2],&p_554->g_187[0][2]},{&p_554->g_187[0][2],&p_554->g_187[0][2],&p_554->g_187[0][2],&p_554->g_187[0][2]}};
    int8_t l_538 = (-4L);
    uint64_t l_539 = 0xBCCBC90BA02CA539L;
    int32_t **l_541 = &p_554->g_284;
    uint64_t **l_546 = &p_554->g_475;
    uint64_t *l_549 = &l_539;
    uint16_t *l_550 = &l_481;
    uint32_t *l_551 = (void*)0;
    uint32_t *l_552 = (void*)0;
    uint32_t *l_553 = &p_554->g_24;
    int i, j, k;
    p_554->g_176 |= (safe_div_func_int16_t_s_s(p_554->l_comm_values[(safe_mod_func_uint32_t_u_u(p_554->tid, 30))], func_4(func_9((~(((safe_rshift_func_uint16_t_u_s(((((*p_554->g_475) = (safe_lshift_func_int16_t_s_s(((*l_480) = (safe_sub_func_int32_t_s_s((((p_554->g_18 = (-9L)) & l_19) >= (!(p_554->l_comm_values[(safe_mod_func_uint32_t_u_u(p_554->tid, 30))] ^ (0xB01213072C02A306L && (((safe_add_func_int8_t_s_s((p_554->g_24 = (safe_add_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), p_554->g_comm_values[p_554->tid]))), (safe_lshift_func_int16_t_s_s(((((FAKE_DIVERGE(p_554->group_0_offset, get_group_id(0), 10) & func_27((safe_div_func_uint64_t_u_u((safe_unary_minus_func_uint32_t_u(p_554->g_comm_values[p_554->tid])), (safe_mul_func_int16_t_s_s(p_554->g_comm_values[p_554->tid], l_19)))), p_554->g_35, p_554)) && 0x96A7L) , 1L) | l_19), l_19)))) , (**p_554->g_468)) | l_19))))), 4294967295UL))), p_554->g_368[0]))) && l_19) , l_19), l_481)) & l_481) != l_19)), l_482, p_554), p_554->l_comm_values[(safe_mod_func_uint32_t_u_u(p_554->tid, 30))], l_481, p_554->g_368[0], p_554)));
    (*l_541) = (((((l_524 != (void*)0) < (*p_554->g_243)) & (safe_div_func_int8_t_s_s(p_554->g_368[0], (l_527 , (safe_sub_func_uint32_t_u_u(4UL, (*p_554->g_68))))))) || (((p_554->g_532 = &p_554->g_194) == ((l_538 = (safe_sub_func_int16_t_s_s((safe_sub_func_uint32_t_u_u((4294967295UL | 0x39E25248L), 0xA2A95BB7L)), p_554->g_102[5][3][2]))) , (void*)0)) | l_539)) , (*p_554->g_468));
    p_554->g_400.f1 |= (((safe_mul_func_int16_t_s_s((**l_541), p_554->g_67)) >= ((*l_553) = ((*p_554->g_243) = ((**l_541) <= (safe_sub_func_uint16_t_u_u(((*p_554->g_378) == ((*l_550) = ((!(((void*)0 == l_546) == (**l_541))) != ((*l_549) &= ((*p_554->g_475)--))))), 0xFB30L)))))) , ((**l_541) && (**p_554->g_69)));
    return p_554->g_109;
}


/* ------------------------------------------ */
/* 
 * reads : p_554->g_91 p_554->g_522 p_554->g_35.f1 p_554->g_68
 * writes: p_554->g_35.f1
 */
int16_t  func_4(struct S0  p_5, uint32_t  p_6, uint32_t  p_7, int32_t  p_8, struct S1 * p_554)
{ /* block id: 210 */
    uint32_t l_523 = 1UL;
    l_523 = ((*p_554->g_68) = (safe_mul_func_uint16_t_u_u((p_554->g_91[5][7] , p_554->g_522), p_554->g_35.f1)));
    return l_523;
}


/* ------------------------------------------ */
/* 
 * reads : p_554->g_150 p_554->g_68 p_554->g_35.f1 p_554->g_284 p_554->g_243 p_554->g_385 p_554->g_35.f2 p_554->g_79 p_554->g_400.f1 p_554->g_251
 * writes: p_554->g_251 p_554->g_102
 */
struct S0  func_9(uint32_t  p_10, struct S0  p_11, struct S1 * p_554)
{ /* block id: 202 */
    uint16_t l_502 = 0xC94AL;
    uint16_t l_511 = 0xB249L;
    int32_t l_516[10][9] = {{(-1L),(-1L),0x60340334L,(-1L),0x31039C0EL,1L,0x5D87A6FCL,0x0982411AL,0x5D87A6FCL},{(-1L),(-1L),0x60340334L,(-1L),0x31039C0EL,1L,0x5D87A6FCL,0x0982411AL,0x5D87A6FCL},{(-1L),(-1L),0x60340334L,(-1L),0x31039C0EL,1L,0x5D87A6FCL,0x0982411AL,0x5D87A6FCL},{(-1L),(-1L),0x60340334L,(-1L),0x31039C0EL,1L,0x5D87A6FCL,0x0982411AL,0x5D87A6FCL},{(-1L),(-1L),0x60340334L,(-1L),0x31039C0EL,1L,0x5D87A6FCL,0x0982411AL,0x5D87A6FCL},{(-1L),(-1L),0x60340334L,(-1L),0x31039C0EL,1L,0x5D87A6FCL,0x0982411AL,0x5D87A6FCL},{(-1L),(-1L),0x60340334L,(-1L),0x31039C0EL,1L,0x5D87A6FCL,0x0982411AL,0x5D87A6FCL},{(-1L),(-1L),0x60340334L,(-1L),0x31039C0EL,1L,0x5D87A6FCL,0x0982411AL,0x5D87A6FCL},{(-1L),(-1L),0x60340334L,(-1L),0x31039C0EL,1L,0x5D87A6FCL,0x0982411AL,0x5D87A6FCL},{(-1L),(-1L),0x60340334L,(-1L),0x31039C0EL,1L,0x5D87A6FCL,0x0982411AL,0x5D87A6FCL}};
    int32_t l_517 = 0x6084C40BL;
    int32_t l_518[7] = {0x199D7718L,0x199D7718L,0x199D7718L,0x199D7718L,0x199D7718L,0x199D7718L,0x199D7718L};
    struct S0 l_519 = {0xA96D1137L,-1L,0x08L};
    int i, j;
    (*p_554->g_284) = (**p_554->g_150);
    l_518[0] |= (safe_mod_func_uint32_t_u_u((safe_add_func_uint64_t_u_u((safe_mod_func_uint16_t_u_u(((((safe_add_func_int64_t_s_s(0x3C17D3A2B7325EE1L, ((((safe_add_func_uint64_t_u_u((safe_rshift_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), 1)), (l_517 = (safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_554->local_1_offset, get_local_id(1), 10), (safe_sub_func_uint32_t_u_u((0x4C11L == ((safe_unary_minus_func_uint32_t_u(((*p_554->g_243) = GROUP_DIVERGE(1, 1)))) >= ((0x68L > ((l_516[9][0] ^= (safe_lshift_func_int8_t_s_s((l_502 , (((!(safe_add_func_uint16_t_u_u((safe_div_func_uint8_t_u_u((!(((*p_554->g_385) , (safe_add_func_uint16_t_u_u(0x8633L, ((safe_div_func_int32_t_s_s(p_11.f0, l_511)) < (safe_sub_func_uint64_t_u_u(FAKE_DIVERGE(p_554->local_2_offset, get_local_id(2), 10), (safe_mod_func_int16_t_s_s(p_11.f2, 0x3F6BL)))))))) == (-1L))), GROUP_DIVERGE(1, 1))), p_11.f2))) | 0UL) || 1L)), p_554->g_79))) , p_11.f0)) != 0L))), p_10))))))) & p_10) < p_10) || 0x77A6L))) > FAKE_DIVERGE(p_554->global_1_offset, get_global_id(1), 10)) >= l_511) ^ 0L), p_554->g_400.f1)), p_11.f2)), FAKE_DIVERGE(p_554->global_2_offset, get_global_id(2), 10)));
    (*p_554->g_284) ^= l_511;
    return l_519;
}


/* ------------------------------------------ */
/* 
 * reads : p_554->g_35.f2 p_554->g_35.f1 p_554->g_378 p_554->g_79 p_554->g_91 p_554->g_comm_values p_554->g_284 p_554->g_251 p_554->g_194 p_554->g_195 p_554->g_35 p_554->g_191 p_554->g_68 p_554->g_468 p_554->g_243 p_554->g_102 p_554->g_474 p_554->g_477
 * writes: p_554->g_35.f2 p_554->g_35.f1 p_554->g_79 p_554->g_189 p_554->g_251 p_554->g_35 p_554->g_68 p_554->g_102
 */
int8_t  func_27(int32_t  p_28, struct S0  p_29, struct S1 * p_554)
{ /* block id: 7 */
    int8_t l_476 = 0L;
    uint8_t *l_478 = &p_554->g_400.f2;
    int32_t l_479 = 0x29E001D9L;
lbl_469:
    for (p_554->g_35.f2 = 0; (p_554->g_35.f2 > 26); p_554->g_35.f2 = safe_add_func_int16_t_s_s(p_554->g_35.f2, 1))
    { /* block id: 10 */
        int i, j;
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        p_554->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 30)), permutations[(safe_mod_func_uint32_t_u_u(6UL, 10))][(safe_mod_func_uint32_t_u_u(p_554->tid, 30))]));
    }
    for (p_29.f2 = (-27); (p_29.f2 > 5); p_29.f2 = safe_add_func_int8_t_s_s(p_29.f2, 7))
    { /* block id: 17 */
        int32_t *l_40[1][6];
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 6; j++)
                l_40[i][j] = (void*)0;
        }
        p_29.f1 &= (-1L);
        (*p_554->g_468) = func_41(p_29, p_554);
        if (p_29.f2)
            break;
        if (p_29.f2)
            goto lbl_469;
    }
    l_479 = ((((*p_554->g_243) ^ (*p_554->g_243)) , (safe_lshift_func_uint16_t_u_s(0xF85BL, (((*p_554->g_243) |= ((void*)0 != p_554->g_474[1][4][5])) < ((*p_554->g_468) != (((l_476 , p_554->g_477[4][0]) != l_478) , (void*)0)))))) , (**p_554->g_468));
    return p_29.f1;
}


/* ------------------------------------------ */
/* 
 * reads : p_554->g_35.f1 p_554->g_378 p_554->g_79 p_554->g_91 p_554->g_35.f2 p_554->g_comm_values p_554->g_284 p_554->g_251 p_554->g_194 p_554->g_195 p_554->g_35 p_554->g_191 p_554->g_68
 * writes: p_554->g_35.f1 p_554->g_35.f2 p_554->g_79 p_554->g_189 p_554->g_251 p_554->g_35
 */
int32_t * func_41(struct S0  p_42, struct S1 * p_554)
{ /* block id: 19 */
    uint8_t l_43[10] = {255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL};
    int32_t *l_80 = &p_554->g_35.f1;
    struct S0 *l_399[6][10][4] = {{{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35}},{{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35}},{{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35}},{{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35}},{{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35}},{{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35},{(void*)0,&p_554->g_400,&p_554->g_35,&p_554->g_35}}};
    int32_t l_401 = 0x0D585AC5L;
    int32_t l_407 = 0x3F1B9D4CL;
    int32_t l_415 = (-1L);
    int32_t l_416 = 0x5F97EA1EL;
    struct S0 ***l_446 = &p_554->g_194;
    int64_t *l_447 = &p_554->g_109;
    int64_t l_465 = 0x522A0E662965D94CL;
    int i, j, k;
    for (p_42.f2 = 0; (p_42.f2 <= 9); p_42.f2 += 1)
    { /* block id: 22 */
        int32_t *l_45[3][8][6] = {{{&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1},{&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1},{&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1},{&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1},{&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1},{&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1},{&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1},{&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1}},{{&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1},{&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1},{&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1},{&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1},{&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1},{&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1},{&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1},{&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1}},{{&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1},{&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1},{&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1},{&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1},{&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1},{&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1},{&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1},{&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1,&p_554->g_35.f1}}};
        int32_t **l_44 = &l_45[1][4][5];
        uint16_t *l_466 = &p_554->g_67;
        uint64_t *l_467[9][2] = {{&p_554->g_189,&p_554->g_189},{&p_554->g_189,&p_554->g_189},{&p_554->g_189,&p_554->g_189},{&p_554->g_189,&p_554->g_189},{&p_554->g_189,&p_554->g_189},{&p_554->g_189,&p_554->g_189},{&p_554->g_189,&p_554->g_189},{&p_554->g_189,&p_554->g_189},{&p_554->g_189,&p_554->g_189}};
        int i, j, k;
        (*l_44) = (void*)0;
        if (l_43[p_42.f2])
            continue;
        for (p_554->g_35.f1 = 0; (p_554->g_35.f1 <= 9); p_554->g_35.f1 += 1)
        { /* block id: 27 */
            int8_t l_403 = 1L;
            int32_t l_406 = 3L;
            int32_t l_410 = (-1L);
            int32_t l_412 = (-10L);
            int32_t l_413 = (-10L);
            int32_t l_414[4];
            uint64_t l_417 = 0x97875A409303A34FL;
            struct S0 l_445 = {4UL,0x712E12A2L,253UL};
            int i;
            for (i = 0; i < 4; i++)
                l_414[i] = 0x1DDC86BAL;
            if (p_42.f2)
                break;
            for (p_554->g_35.f2 = 0; (p_554->g_35.f2 <= 9); p_554->g_35.f2 += 1)
            { /* block id: 31 */
                uint64_t l_48 = 0xDD2A48B7552F0C8CL;
                int32_t *l_59 = &p_554->g_35.f1;
                uint16_t *l_78 = &p_554->g_79;
                struct S0 **l_398 = &p_554->g_229;
                int32_t l_402 = 1L;
                int32_t l_404 = 1L;
                int32_t l_405 = 1L;
                int32_t l_408 = 0x432D33EEL;
                int32_t l_409 = 0L;
                int32_t l_411[1];
                int i;
                for (i = 0; i < 1; i++)
                    l_411[i] = 0x2E3A4A1EL;
                (1 + 1);
            }
        }
        (*p_554->g_284) ^= ((&p_554->g_109 != l_447) <= ((((*p_554->g_378) = (*p_554->g_378)) | (!((safe_mod_func_uint32_t_u_u(((safe_mul_func_int16_t_s_s(p_554->g_91[1][1], 1L)) || p_554->g_35.f2), (safe_rshift_func_int16_t_s_u((((p_554->g_189 = (((safe_div_func_uint8_t_u_u((((~0L) < p_42.f0) , ((safe_unary_minus_func_int8_t_s((safe_sub_func_int8_t_s_s((safe_add_func_uint64_t_u_u((safe_div_func_int8_t_s_s((safe_sub_func_int16_t_s_s((((0x6DD7L && FAKE_DIVERGE(p_554->global_1_offset, get_global_id(1), 10)) > p_554->g_comm_values[p_554->tid]) | l_465), p_42.f1)), p_42.f1)), 1L)), FAKE_DIVERGE(p_554->group_1_offset, get_group_id(1), 10))))) , 0xC0L)), 0xD5L)) , l_466) != l_466)) | 1L) >= 0x11L), 11)))) , 1UL))) < (*l_80)));
    }
    (***l_446) = (***l_446);
    return (*p_554->g_191);
}


/* ------------------------------------------ */
/* 
 * reads : p_554->g_284 p_554->g_251
 * writes: p_554->g_251
 */
struct S0 * func_49(int64_t  p_50, int32_t * p_51, struct S1 * p_554)
{ /* block id: 174 */
    struct S0 *l_397[9][6] = {{(void*)0,(void*)0,&p_554->g_35,&p_554->g_35,&p_554->g_35,&p_554->g_35},{(void*)0,(void*)0,&p_554->g_35,&p_554->g_35,&p_554->g_35,&p_554->g_35},{(void*)0,(void*)0,&p_554->g_35,&p_554->g_35,&p_554->g_35,&p_554->g_35},{(void*)0,(void*)0,&p_554->g_35,&p_554->g_35,&p_554->g_35,&p_554->g_35},{(void*)0,(void*)0,&p_554->g_35,&p_554->g_35,&p_554->g_35,&p_554->g_35},{(void*)0,(void*)0,&p_554->g_35,&p_554->g_35,&p_554->g_35,&p_554->g_35},{(void*)0,(void*)0,&p_554->g_35,&p_554->g_35,&p_554->g_35,&p_554->g_35},{(void*)0,(void*)0,&p_554->g_35,&p_554->g_35,&p_554->g_35,&p_554->g_35},{(void*)0,(void*)0,&p_554->g_35,&p_554->g_35,&p_554->g_35,&p_554->g_35}};
    int i, j;
    (*p_554->g_284) ^= 0x7D3EC56AL;
    return l_397[5][5];
}


/* ------------------------------------------ */
/* 
 * reads : p_554->g_67 p_554->g_229 p_554->g_102 p_554->g_176 p_554->g_35.f1 p_554->g_comm_values p_554->g_91 p_554->l_comm_values p_554->g_251 p_554->g_79 p_554->g_119
 * writes: p_554->g_67 p_554->g_195 p_554->g_176 p_554->g_243 p_554->g_111 p_554->g_251 p_554->g_102 p_554->g_79
 */
int32_t * func_52(struct S0  p_53, struct S1 * p_554)
{ /* block id: 96 */
    int32_t l_223 = 1L;
    int32_t l_226 = (-1L);
    uint16_t *l_227 = &p_554->g_67;
    struct S0 **l_230 = (void*)0;
    struct S0 **l_231 = &p_554->g_195;
    int32_t l_232 = (-6L);
    int32_t *l_233 = &p_554->g_176;
    uint8_t l_266 = 0xA0L;
    uint32_t l_281[8];
    uint64_t *l_296 = &p_554->g_189;
    int16_t l_344 = 6L;
    int32_t *l_396 = &p_554->g_35.f1;
    int i;
    for (i = 0; i < 8; i++)
        l_281[i] = 4294967294UL;
    (*l_233) |= (p_53.f2 != (((l_232 = ((safe_sub_func_uint8_t_u_u(l_223, FAKE_DIVERGE(p_554->global_0_offset, get_global_id(0), 10))) & ((safe_sub_func_int16_t_s_s((l_223 || (l_226 = 0xD73CB27E70550681L)), ((*l_227) &= 65535UL))) && ((safe_unary_minus_func_uint64_t_u((((((*l_231) = p_554->g_229) != (void*)0) ^ (p_53.f1 > p_53.f2)) | 7L))) , 3L)))) && p_554->g_67) , p_554->g_102[0][0][2]));
    for (p_53.f0 = 0; (p_53.f0 == 56); p_53.f0++)
    { /* block id: 104 */
        uint32_t **l_240 = (void*)0;
        uint32_t *l_242[1];
        uint32_t **l_241[3];
        int32_t l_248 = 2L;
        int8_t *l_249[5];
        int32_t *l_250[10] = {&l_226,&l_226,&l_226,&l_226,&l_226,&l_226,&l_226,&l_226,&l_226,&l_226};
        int16_t l_254 = 0x2604L;
        uint16_t *l_305 = &p_554->g_79;
        int32_t *l_306 = &l_226;
        int16_t l_316 = 0x0594L;
        int32_t *l_354 = &p_554->g_251;
        int i;
        for (i = 0; i < 1; i++)
            l_242[i] = &p_554->g_102[2][3][0];
        for (i = 0; i < 3; i++)
            l_241[i] = &l_242[0];
        for (i = 0; i < 5; i++)
            l_249[i] = &p_554->g_111;
        p_554->g_251 &= (safe_sub_func_int8_t_s_s(1L, (((safe_add_func_uint32_t_u_u((p_554->g_35.f1 | p_554->g_35.f1), ((p_554->g_243 = (void*)0) == l_233))) > p_53.f0) > (((((safe_sub_func_int8_t_s_s((p_554->g_111 = (safe_div_func_uint32_t_u_u(((-1L) && (l_248 , (((((*l_233) = (p_53.f1 & p_554->g_comm_values[p_554->tid])) && p_554->g_91[5][7]) , p_554->l_comm_values[(safe_mod_func_uint32_t_u_u(p_554->tid, 30))]) == p_53.f2))), p_554->g_102[0][1][2]))), 6L)) && p_53.f1) , (*l_233)) ^ (-5L)) & p_53.f1))));
        for (l_248 = (-19); (l_248 == 27); ++l_248)
        { /* block id: 111 */
            uint32_t l_261[9] = {4294967292UL,0xBF066108L,4294967292UL,4294967292UL,0xBF066108L,4294967292UL,4294967292UL,0xBF066108L,4294967292UL};
            int32_t l_267 = 1L;
            int32_t l_268 = 0x001E7473L;
            uint16_t *l_269 = &p_554->g_79;
            uint64_t l_270 = 0UL;
            struct S0 l_287 = {4294967295UL,0x0A53F249L,252UL};
            uint32_t l_314[4] = {0UL,0UL,0UL,0UL};
            uint8_t l_347 = 255UL;
            int32_t *l_393[1][7] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
            int i, j;
            p_53.f1 = (p_554->g_67 < (((*l_269) = ((l_254 , (((*l_233) |= p_53.f2) == ((safe_add_func_uint32_t_u_u((l_268 = (safe_add_func_uint32_t_u_u((0x2C3FC2EAL && ((safe_rshift_func_uint16_t_u_s(p_53.f2, l_261[5])) , 0x67CD90A5L)), ((p_554->g_102[0][1][2] = (safe_lshift_func_int16_t_s_u(p_554->g_79, 6))) || (l_267 ^= ((safe_mul_func_uint8_t_u_u(l_261[5], 0xF7L)) != l_266)))))), 1UL)) | p_554->g_119))) <= 0x71D54A7BL)) | 0x4357L));
            for (p_554->g_176 = 0; (p_554->g_176 <= 0); p_554->g_176 += 1)
            { /* block id: 120 */
                int32_t l_282 = 9L;
                uint64_t *l_297 = &p_554->g_189;
                uint32_t l_313[7] = {0x3CE3962BL,0xF75007F9L,0x3CE3962BL,0x3CE3962BL,0xF75007F9L,0x3CE3962BL,0x3CE3962BL};
                int32_t *l_315 = &p_554->g_251;
                uint16_t l_343 = 65531UL;
                int i, j;
                l_270 = ((void*)0 == &l_242[p_554->g_176]);
            }
        }
    }
    return l_396;
}


/* ------------------------------------------ */
/* 
 * reads : p_554->g_79 p_554->g_67 p_554->g_35 p_554->g_91 p_554->g_102 p_554->g_68 p_554->l_comm_values p_554->g_119 p_554->g_69 p_554->g_109 p_554->g_comm_values p_554->g_150 p_554->g_157 p_554->g_111 p_554->g_187 p_554->g_189 p_554->g_191 p_554->g_197 p_554->g_195 p_554->g_251
 * writes: p_554->g_67 p_554->g_102 p_554->g_109 p_554->g_111 p_554->g_119 p_554->g_79 p_554->g_68 p_554->g_176 p_554->g_187 p_554->g_189 p_554->g_194
 */
struct S0  func_54(int32_t * p_55, uint64_t  p_56, int64_t  p_57, int32_t * p_58, struct S1 * p_554)
{ /* block id: 39 */
    struct S0 *l_81 = (void*)0;
    struct S0 **l_82 = &l_81;
    int32_t l_85[10];
    int32_t l_104[5][8][6] = {{{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L}},{{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L}},{{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L}},{{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L}},{{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L},{2L,0x7CA972D9L,0x266863E4L,0x55100589L,0x2D7D98C0L,0x2BB3E6A6L}}};
    int32_t l_107 = 0x74BDA337L;
    int8_t *l_185 = &p_554->g_111;
    int i, j, k;
    for (i = 0; i < 10; i++)
        l_85[i] = 0x575DB0C6L;
    if (((((void*)0 != &p_554->g_67) || ((((p_56 && (p_554->g_79 == (p_56 <= (((*l_82) = l_81) != ((p_57 , (safe_lshift_func_uint16_t_u_s((~p_57), 12))) , &p_554->g_35))))) <= (-9L)) < l_85[2]) < 4294967295UL)) >= l_85[2]))
    { /* block id: 41 */
        for (p_554->g_67 = 14; (p_554->g_67 == 26); ++p_554->g_67)
        { /* block id: 44 */
            int32_t *l_88 = &l_85[0];
            (*l_88) = 0x1341B0B2L;
        }
        return p_554->g_35;
    }
    else
    { /* block id: 48 */
        uint64_t l_92 = 18446744073709551615UL;
        uint32_t *l_101 = &p_554->g_102[0][1][2];
        uint64_t *l_103 = &l_92;
        struct S0 l_192 = {0x1DFD58D4L,-8L,0xEDL};
        struct S0 ***l_196 = (void*)0;
        int32_t *l_220 = (void*)0;
        if ((safe_rshift_func_uint8_t_u_u((((p_554->g_91[5][7] & (l_92 , ((safe_sub_func_int64_t_s_s(l_85[2], (safe_mul_func_uint8_t_u_u((safe_mod_func_uint64_t_u_u(((p_554->g_35.f1 < p_56) , ((*l_103) = (((safe_rshift_func_int16_t_s_s((-1L), p_57)) && ((((*l_101) |= (&p_554->g_35 != (p_554->g_35 , (*l_82)))) | (*p_55)) , p_554->g_102[0][1][2])) <= (*p_554->g_68)))), l_85[2])), 0xF8L)))) , p_56))) || l_104[2][4][0]) , 255UL), 3)))
        { /* block id: 51 */
            int64_t *l_108 = &p_554->g_109;
            int8_t *l_110 = &p_554->g_111;
            int32_t l_118 = 0x334A2236L;
            struct S0 l_179[3][9][4] = {{{{0UL,0L,9UL},{0x7966B248L,0x4446EDB0L,0UL},{0x7966B248L,0x4446EDB0L,0UL},{0UL,0L,9UL}},{{0UL,0L,9UL},{0x7966B248L,0x4446EDB0L,0UL},{0x7966B248L,0x4446EDB0L,0UL},{0UL,0L,9UL}},{{0UL,0L,9UL},{0x7966B248L,0x4446EDB0L,0UL},{0x7966B248L,0x4446EDB0L,0UL},{0UL,0L,9UL}},{{0UL,0L,9UL},{0x7966B248L,0x4446EDB0L,0UL},{0x7966B248L,0x4446EDB0L,0UL},{0UL,0L,9UL}},{{0UL,0L,9UL},{0x7966B248L,0x4446EDB0L,0UL},{0x7966B248L,0x4446EDB0L,0UL},{0UL,0L,9UL}},{{0UL,0L,9UL},{0x7966B248L,0x4446EDB0L,0UL},{0x7966B248L,0x4446EDB0L,0UL},{0UL,0L,9UL}},{{0UL,0L,9UL},{0x7966B248L,0x4446EDB0L,0UL},{0x7966B248L,0x4446EDB0L,0UL},{0UL,0L,9UL}},{{0UL,0L,9UL},{0x7966B248L,0x4446EDB0L,0UL},{0x7966B248L,0x4446EDB0L,0UL},{0UL,0L,9UL}},{{0UL,0L,9UL},{0x7966B248L,0x4446EDB0L,0UL},{0x7966B248L,0x4446EDB0L,0UL},{0UL,0L,9UL}}},{{{0UL,0L,9UL},{0x7966B248L,0x4446EDB0L,0UL},{0x7966B248L,0x4446EDB0L,0UL},{0UL,0L,9UL}},{{0UL,0L,9UL},{0x7966B248L,0x4446EDB0L,0UL},{0x7966B248L,0x4446EDB0L,0UL},{0UL,0L,9UL}},{{0UL,0L,9UL},{0x7966B248L,0x4446EDB0L,0UL},{0x7966B248L,0x4446EDB0L,0UL},{0UL,0L,9UL}},{{0UL,0L,9UL},{0x7966B248L,0x4446EDB0L,0UL},{0x7966B248L,0x4446EDB0L,0UL},{0UL,0L,9UL}},{{0UL,0L,9UL},{0x7966B248L,0x4446EDB0L,0UL},{0x7966B248L,0x4446EDB0L,0UL},{0UL,0L,9UL}},{{0UL,0L,9UL},{0x7966B248L,0x4446EDB0L,0UL},{0x7966B248L,0x4446EDB0L,0UL},{0UL,0L,9UL}},{{0UL,0L,9UL},{0x7966B248L,0x4446EDB0L,0UL},{0x7966B248L,0x4446EDB0L,0UL},{0UL,0L,9UL}},{{0UL,0L,9UL},{0x7966B248L,0x4446EDB0L,0UL},{0x7966B248L,0x4446EDB0L,0UL},{0UL,0L,9UL}},{{0UL,0L,9UL},{0x7966B248L,0x4446EDB0L,0UL},{0x7966B248L,0x4446EDB0L,0UL},{0UL,0L,9UL}}},{{{0UL,0L,9UL},{0x7966B248L,0x4446EDB0L,0UL},{0x7966B248L,0x4446EDB0L,0UL},{0UL,0L,9UL}},{{0UL,0L,9UL},{0x7966B248L,0x4446EDB0L,0UL},{0x7966B248L,0x4446EDB0L,0UL},{0UL,0L,9UL}},{{0UL,0L,9UL},{0x7966B248L,0x4446EDB0L,0UL},{0x7966B248L,0x4446EDB0L,0UL},{0UL,0L,9UL}},{{0UL,0L,9UL},{0x7966B248L,0x4446EDB0L,0UL},{0x7966B248L,0x4446EDB0L,0UL},{0UL,0L,9UL}},{{0UL,0L,9UL},{0x7966B248L,0x4446EDB0L,0UL},{0x7966B248L,0x4446EDB0L,0UL},{0UL,0L,9UL}},{{0UL,0L,9UL},{0x7966B248L,0x4446EDB0L,0UL},{0x7966B248L,0x4446EDB0L,0UL},{0UL,0L,9UL}},{{0UL,0L,9UL},{0x7966B248L,0x4446EDB0L,0UL},{0x7966B248L,0x4446EDB0L,0UL},{0UL,0L,9UL}},{{0UL,0L,9UL},{0x7966B248L,0x4446EDB0L,0UL},{0x7966B248L,0x4446EDB0L,0UL},{0UL,0L,9UL}},{{0UL,0L,9UL},{0x7966B248L,0x4446EDB0L,0UL},{0x7966B248L,0x4446EDB0L,0UL},{0UL,0L,9UL}}}};
            uint16_t *l_180[3];
            uint64_t *l_186 = &p_554->g_187[0][0];
            uint64_t *l_188 = &p_554->g_189;
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_180[i] = &p_554->g_79;
            if ((((p_56 , (((FAKE_DIVERGE(p_554->local_0_offset, get_local_id(0), 10) || (l_85[3] |= (((*l_110) = (safe_mod_func_uint64_t_u_u(1UL, ((*l_108) = l_107)))) > (safe_mod_func_uint8_t_u_u(((((0xCD20L < ((4L > (p_554->g_119 |= (((((safe_add_func_int16_t_s_s(p_554->l_comm_values[(safe_mod_func_uint32_t_u_u(p_554->tid, 30))], (safe_mul_func_uint8_t_u_u(1UL, l_104[2][4][0])))) == (l_118 , l_118)) >= p_57) <= l_118) & 2UL))) >= p_554->g_102[0][1][2])) , 0x49A0CC12L) != p_57) == l_92), p_554->l_comm_values[(safe_mod_func_uint32_t_u_u(p_554->tid, 30))]))))) , 0x9C3B6F68L) | 0x042B3FC8L)) >= 0x4BL) || p_56))
            { /* block id: 56 */
                uint8_t l_132 = 0UL;
                int16_t l_144 = 0x4F68L;
                for (p_554->g_79 = (-13); (p_554->g_79 < 28); p_554->g_79 = safe_add_func_uint16_t_u_u(p_554->g_79, 1))
                { /* block id: 59 */
                    int8_t l_143 = 0L;
                    int16_t *l_145[3];
                    int32_t *l_146 = &l_85[2];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_145[i] = &l_144;
                    (*l_146) |= (safe_rshift_func_int16_t_s_u((safe_rshift_func_uint8_t_u_s((safe_add_func_int32_t_s_s((safe_lshift_func_int8_t_s_s((safe_sub_func_int8_t_s_s((l_132 & ((((*l_110) = ((p_554->g_119 = (safe_rshift_func_uint16_t_u_s((safe_mul_func_uint8_t_u_u(((((l_92 & (safe_div_func_int32_t_s_s((((**p_554->g_69) < (l_92 > (((safe_div_func_int8_t_s_s(((safe_rshift_func_uint16_t_u_s((((*l_108) ^= 0x4773C3FA5341DB1EL) >= l_143), l_144)) && (~l_92)), l_144)) != 1UL) , p_554->g_35.f0))) , 0x070EDD47L), (*p_55)))) == p_554->g_102[0][1][2]) , l_144) ^ p_57), p_554->g_comm_values[p_554->tid])), 0))) & p_56)) ^ l_92) >= 1L)), 0x60L)), 3)), (*p_58))), 5)), 14));
                    for (p_554->g_67 = (-20); (p_554->g_67 <= 4); p_554->g_67 = safe_add_func_int8_t_s_s(p_554->g_67, 2))
                    { /* block id: 66 */
                        int32_t *l_149 = &l_118;
                        (*p_554->g_150) = l_149;
                    }
                    if ((**p_554->g_150))
                        continue;
                }
                (*p_554->g_157) = func_62(((**p_554->g_69) , ((safe_lshift_func_uint8_t_u_s(252UL, (safe_add_func_int64_t_s_s((safe_rshift_func_uint8_t_u_s((+p_554->g_79), 1)), p_554->g_35.f0)))) , p_57)), (*p_554->g_68), p_554);
            }
            else
            { /* block id: 72 */
                int32_t *l_172 = (void*)0;
                int32_t *l_173 = &l_118;
                int32_t *l_174 = &l_107;
                int32_t *l_175 = &p_554->g_176;
                (*p_554->g_150) = func_62(l_85[4], ((*l_175) = ((*l_174) = ((*l_173) = ((p_554->g_35.f2 , ((safe_rshift_func_int8_t_s_s((!(((safe_rshift_func_uint8_t_u_s(((0x62A72BD4L < ((safe_mul_func_uint16_t_u_u(65535UL, ((((safe_sub_func_uint8_t_u_u((p_554->g_102[0][1][2] , (((!((((safe_mod_func_int32_t_s_s(l_104[3][3][1], (safe_lshift_func_uint8_t_u_u((FAKE_DIVERGE(p_554->local_2_offset, get_local_id(2), 10) && (((*l_101) = (safe_div_func_uint32_t_u_u((~((p_58 != p_55) , 8UL)), 0x27F906C0L))) , 0xBD7E15E09DB5B34FL)), 2)))) , p_554->g_119) == l_85[2]) && l_118)) != p_56) & l_92)), FAKE_DIVERGE(p_554->local_2_offset, get_local_id(2), 10))) , (**p_554->g_157)) > l_118) < l_118))) >= 3UL)) != p_554->g_79), p_554->g_111)) != l_92) == (-8L))), 1)) > p_56)) | 0x2317F3169F9908F0L)))), p_554);
            }
            p_58 = p_58;
            (*p_554->g_191) = func_62(((safe_sub_func_uint64_t_u_u(0x8BFC3082FB81D463L, ((((((l_179[0][2][0] , (l_107 , l_180[2])) != ((safe_mod_func_int64_t_s_s((((l_185 == &p_554->g_111) == p_554->g_35.f2) | (((((*l_188) |= ((((*l_186) ^= p_57) , p_56) == l_92)) , l_92) != p_554->g_111) != p_57)), p_554->g_91[2][2])) , (void*)0)) , (void*)0) == (void*)0) , 0x3BCDCC49979F6742L) < l_179[0][2][0].f2))) , l_92), (*p_55), p_554);
        }
        else
        { /* block id: 83 */
            return l_192;
        }
        (*p_554->g_197) = &l_81;
        for (p_554->g_189 = 11; (p_554->g_189 > 49); p_554->g_189 = safe_add_func_uint32_t_u_u(p_554->g_189, 1))
        { /* block id: 89 */
            int32_t *l_200 = &l_192.f1;
            uint32_t l_219 = 0x42DCBA3DL;
            (*l_200) |= (-1L);
            l_220 = l_101;
            (*l_220) = (-10L);
        }
    }
    return (*p_554->g_195);
}


/* ------------------------------------------ */
/* 
 * reads : p_554->g_68 p_554->g_69
 * writes: p_554->g_67 p_554->g_68
 */
uint64_t  func_60(uint8_t  p_61, struct S1 * p_554)
{ /* block id: 32 */
    int64_t l_65 = 0x14A3CE577E9FB133L;
    uint16_t *l_66 = &p_554->g_67;
    (*p_554->g_69) = func_62(((*l_66) = l_65), p_61, p_554);
    return l_65;
}


/* ------------------------------------------ */
/* 
 * reads : p_554->g_68
 * writes:
 */
int32_t * func_62(uint16_t  p_63, int32_t  p_64, struct S1 * p_554)
{ /* block id: 34 */
    return p_554->g_68;
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[30];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 30; i++)
            l_comm_values[i] = 1;
    struct S1 c_555;
    struct S1* p_554 = &c_555;
    struct S1 c_556 = {
        0x2FE81720L, // p_554->g_18
        0x45702377L, // p_554->g_24
        {1UL,0x0E60A2FCL,0x3DL}, // p_554->g_35
        65527UL, // p_554->g_67
        &p_554->g_35.f1, // p_554->g_68
        &p_554->g_68, // p_554->g_69
        0x5B6CL, // p_554->g_79
        {{8L,0x641A7851L,(-4L),0x641A7851L,8L,8L,0x641A7851L,(-4L)},{8L,0x641A7851L,(-4L),0x641A7851L,8L,8L,0x641A7851L,(-4L)},{8L,0x641A7851L,(-4L),0x641A7851L,8L,8L,0x641A7851L,(-4L)},{8L,0x641A7851L,(-4L),0x641A7851L,8L,8L,0x641A7851L,(-4L)},{8L,0x641A7851L,(-4L),0x641A7851L,8L,8L,0x641A7851L,(-4L)},{8L,0x641A7851L,(-4L),0x641A7851L,8L,8L,0x641A7851L,(-4L)},{8L,0x641A7851L,(-4L),0x641A7851L,8L,8L,0x641A7851L,(-4L)},{8L,0x641A7851L,(-4L),0x641A7851L,8L,8L,0x641A7851L,(-4L)}}, // p_554->g_91
        {{{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL}},{{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL}},{{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL}},{{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL}},{{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL}},{{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL}},{{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL}},{{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL}},{{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL},{1UL,0UL,0x9E4BB11EL}}}, // p_554->g_102
        0x0A15E1F53DE94393L, // p_554->g_109
        0x66L, // p_554->g_111
        5L, // p_554->g_119
        &p_554->g_68, // p_554->g_150
        &p_554->g_68, // p_554->g_157
        0x2370E726L, // p_554->g_176
        {{1UL,1UL,1UL,1UL}}, // p_554->g_187
        1UL, // p_554->g_189
        (void*)0, // p_554->g_190
        &p_554->g_68, // p_554->g_191
        &p_554->g_35, // p_554->g_195
        &p_554->g_195, // p_554->g_194
        {{&p_554->g_194,&p_554->g_194,&p_554->g_194,&p_554->g_194,&p_554->g_194},{&p_554->g_194,&p_554->g_194,&p_554->g_194,&p_554->g_194,&p_554->g_194},{&p_554->g_194,&p_554->g_194,&p_554->g_194,&p_554->g_194,&p_554->g_194},{&p_554->g_194,&p_554->g_194,&p_554->g_194,&p_554->g_194,&p_554->g_194},{&p_554->g_194,&p_554->g_194,&p_554->g_194,&p_554->g_194,&p_554->g_194}}, // p_554->g_193
        &p_554->g_194, // p_554->g_197
        &p_554->g_35, // p_554->g_229
        &p_554->g_102[5][6][1], // p_554->g_243
        6L, // p_554->g_251
        &p_554->g_251, // p_554->g_284
        {3UL,3UL,3UL,3UL}, // p_554->g_368
        &p_554->g_79, // p_554->g_378
        &p_554->g_284, // p_554->g_379
        &p_554->g_35.f2, // p_554->g_385
        (void*)0, // p_554->g_390
        &p_554->g_68, // p_554->g_391
        {&p_554->g_284,&p_554->g_284,&p_554->g_284,&p_554->g_284,&p_554->g_284,&p_554->g_284,&p_554->g_284,&p_554->g_284,&p_554->g_284,&p_554->g_284}, // p_554->g_392
        {0UL,0L,1UL}, // p_554->g_400
        &p_554->g_68, // p_554->g_468
        &p_554->g_189, // p_554->g_475
        {{{(void*)0,&p_554->g_475,&p_554->g_475,&p_554->g_475,&p_554->g_475,(void*)0,&p_554->g_475,&p_554->g_475},{(void*)0,&p_554->g_475,&p_554->g_475,&p_554->g_475,&p_554->g_475,(void*)0,&p_554->g_475,&p_554->g_475},{(void*)0,&p_554->g_475,&p_554->g_475,&p_554->g_475,&p_554->g_475,(void*)0,&p_554->g_475,&p_554->g_475},{(void*)0,&p_554->g_475,&p_554->g_475,&p_554->g_475,&p_554->g_475,(void*)0,&p_554->g_475,&p_554->g_475},{(void*)0,&p_554->g_475,&p_554->g_475,&p_554->g_475,&p_554->g_475,(void*)0,&p_554->g_475,&p_554->g_475}},{{(void*)0,&p_554->g_475,&p_554->g_475,&p_554->g_475,&p_554->g_475,(void*)0,&p_554->g_475,&p_554->g_475},{(void*)0,&p_554->g_475,&p_554->g_475,&p_554->g_475,&p_554->g_475,(void*)0,&p_554->g_475,&p_554->g_475},{(void*)0,&p_554->g_475,&p_554->g_475,&p_554->g_475,&p_554->g_475,(void*)0,&p_554->g_475,&p_554->g_475},{(void*)0,&p_554->g_475,&p_554->g_475,&p_554->g_475,&p_554->g_475,(void*)0,&p_554->g_475,&p_554->g_475},{(void*)0,&p_554->g_475,&p_554->g_475,&p_554->g_475,&p_554->g_475,(void*)0,&p_554->g_475,&p_554->g_475}}}, // p_554->g_474
        {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}, // p_554->g_477
        0x7659C3D2L, // p_554->g_522
        &p_554->g_194, // p_554->g_532
        (void*)0, // p_554->g_540
        sequence_input[get_global_id(0)], // p_554->global_0_offset
        sequence_input[get_global_id(1)], // p_554->global_1_offset
        sequence_input[get_global_id(2)], // p_554->global_2_offset
        sequence_input[get_local_id(0)], // p_554->local_0_offset
        sequence_input[get_local_id(1)], // p_554->local_1_offset
        sequence_input[get_local_id(2)], // p_554->local_2_offset
        sequence_input[get_group_id(0)], // p_554->group_0_offset
        sequence_input[get_group_id(1)], // p_554->group_1_offset
        sequence_input[get_group_id(2)], // p_554->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 30)), permutations[0][get_linear_local_id()])), // p_554->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_555 = c_556;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_554);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_554->g_18, "p_554->g_18", print_hash_value);
    transparent_crc(p_554->g_24, "p_554->g_24", print_hash_value);
    transparent_crc(p_554->g_35.f0, "p_554->g_35.f0", print_hash_value);
    transparent_crc(p_554->g_35.f1, "p_554->g_35.f1", print_hash_value);
    transparent_crc(p_554->g_35.f2, "p_554->g_35.f2", print_hash_value);
    transparent_crc(p_554->g_67, "p_554->g_67", print_hash_value);
    transparent_crc(p_554->g_79, "p_554->g_79", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_554->g_91[i][j], "p_554->g_91[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_554->g_102[i][j][k], "p_554->g_102[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_554->g_109, "p_554->g_109", print_hash_value);
    transparent_crc(p_554->g_111, "p_554->g_111", print_hash_value);
    transparent_crc(p_554->g_119, "p_554->g_119", print_hash_value);
    transparent_crc(p_554->g_176, "p_554->g_176", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_554->g_187[i][j], "p_554->g_187[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_554->g_189, "p_554->g_189", print_hash_value);
    transparent_crc(p_554->g_251, "p_554->g_251", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_554->g_368[i], "p_554->g_368[i]", print_hash_value);

    }
    transparent_crc(p_554->g_400.f0, "p_554->g_400.f0", print_hash_value);
    transparent_crc(p_554->g_400.f1, "p_554->g_400.f1", print_hash_value);
    transparent_crc(p_554->g_400.f2, "p_554->g_400.f2", print_hash_value);
    transparent_crc(p_554->g_522, "p_554->g_522", print_hash_value);
    transparent_crc(p_554->l_comm_values[get_linear_local_id()], "p_554->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_554->g_comm_values[get_linear_group_id() * 30 + get_linear_local_id()], "p_554->g_comm_values[get_linear_group_id() * 30 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
