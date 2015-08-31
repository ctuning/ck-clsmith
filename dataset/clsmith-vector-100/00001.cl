// ---fake_divergence -g 1,1,224 -l 1,1,8
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


// Seed: 1

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint32_t  f0;
};

struct S1 {
    volatile VECTOR(uint32_t, 2) g_13;
    int64_t g_31;
    VECTOR(int8_t, 8) g_58;
    int32_t g_82;
    VECTOR(uint16_t, 4) g_83;
    VECTOR(uint16_t, 2) g_99;
    VECTOR(uint16_t, 8) g_113;
    uint32_t g_117;
    int32_t g_119;
    struct S0 g_125[8];
    uint8_t g_133;
    VECTOR(int32_t, 2) g_140;
    int8_t g_158;
    struct S0 *g_169[2][5][8];
    int8_t *g_173;
    uint32_t g_175[9];
    VECTOR(uint64_t, 2) g_203;
    VECTOR(uint64_t, 2) g_213;
    VECTOR(uint8_t, 8) g_255;
    int32_t g_276;
    VECTOR(int16_t, 8) g_288;
    int32_t *g_312;
    VECTOR(int16_t, 2) g_349;
    int16_t *g_348;
    uint32_t g_352[3][9][1];
    int32_t g_433;
    uint64_t *g_441;
    uint16_t * volatile g_501;
    uint16_t * volatile *g_500;
    int32_t * volatile g_523;
    struct S0 * volatile g_528[10];
    struct S0 * volatile g_529[4];
    uint8_t g_546;
    int32_t ** volatile g_552;
    struct S0 g_557;
    struct S0 * volatile g_556;
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
int32_t  func_1(struct S1 * p_560);
int32_t  func_2(int16_t  p_3, struct S0  p_4, uint8_t  p_5, struct S1 * p_560);
int32_t  func_6(uint32_t  p_7, int8_t  p_8, uint32_t  p_9, int32_t  p_10, uint64_t  p_11, struct S1 * p_560);
int8_t  func_16(uint64_t  p_17, uint64_t  p_18, struct S1 * p_560);
uint64_t  func_19(uint64_t  p_20, uint32_t  p_21, int64_t  p_22, int32_t  p_23, uint16_t  p_24, struct S1 * p_560);
uint64_t  func_32(uint64_t  p_33, int64_t  p_34, uint64_t  p_35, uint8_t  p_36, struct S1 * p_560);
uint64_t  func_37(int32_t  p_38, uint64_t  p_39, int32_t  p_40, int32_t  p_41, uint32_t  p_42, struct S1 * p_560);
int32_t  func_43(int32_t  p_44, int8_t  p_45, uint64_t  p_46, int32_t  p_47, struct S1 * p_560);
int16_t  func_48(uint32_t  p_49, struct S1 * p_560);
uint32_t  func_50(int32_t  p_51, struct S1 * p_560);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_560->g_13 p_560->g_31 p_560->g_58 p_560->g_83 p_560->g_99 p_560->g_113 p_560->g_117 p_560->g_133 p_560->g_119 p_560->g_140 p_560->g_82 p_560->g_158 p_560->g_125 p_560->g_173 p_560->g_175 p_560->g_203 p_560->g_288 p_560->g_276 p_560->g_255 p_560->g_348 p_560->g_352 p_560->g_312 p_560->g_213 p_560->g_433 p_560->g_349 p_560->g_523 p_560->g_552 p_560->g_556
 * writes: p_560->g_82 p_560->g_119 p_560->g_125 p_560->g_169 p_560->g_175 p_560->g_133 p_560->g_140 p_560->g_158 p_560->g_276 p_560->g_203 p_560->g_312 p_560->g_117 p_560->g_288 p_560->g_352 p_560->g_113 p_560->g_433 p_560->g_441 p_560->g_83 p_560->g_500 p_560->g_31 p_560->g_546 p_560->g_557
 */
int32_t  func_1(struct S1 * p_560)
{ /* block id: 4 */
    uint16_t l_12 = 1UL;
    VECTOR(uint8_t, 16) l_59 = (VECTOR(uint8_t, 16))(0x90L, (VECTOR(uint8_t, 4))(0x90L, (VECTOR(uint8_t, 2))(0x90L, 0UL), 0UL), 0UL, 0x90L, 0UL, (VECTOR(uint8_t, 2))(0x90L, 0UL), (VECTOR(uint8_t, 2))(0x90L, 0UL), 0x90L, 0UL, 0x90L, 0UL);
    int8_t l_60 = 0x0CL;
    uint8_t l_494 = 0xEDL;
    int8_t *l_532[8][8] = {{(void*)0,&l_60,(void*)0,(void*)0,&l_60,(void*)0,(void*)0,&l_60},{(void*)0,&l_60,(void*)0,(void*)0,&l_60,(void*)0,(void*)0,&l_60},{(void*)0,&l_60,(void*)0,(void*)0,&l_60,(void*)0,(void*)0,&l_60},{(void*)0,&l_60,(void*)0,(void*)0,&l_60,(void*)0,(void*)0,&l_60},{(void*)0,&l_60,(void*)0,(void*)0,&l_60,(void*)0,(void*)0,&l_60},{(void*)0,&l_60,(void*)0,(void*)0,&l_60,(void*)0,(void*)0,&l_60},{(void*)0,&l_60,(void*)0,(void*)0,&l_60,(void*)0,(void*)0,&l_60},{(void*)0,&l_60,(void*)0,(void*)0,&l_60,(void*)0,(void*)0,&l_60}};
    int32_t l_533 = 1L;
    uint16_t l_534 = 65532UL;
    int32_t *l_545[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t l_547[5][6] = {{(-7L),0x67422E1DL,6L,(-1L),0x3B0785C3L,(-7L)},{(-7L),0x67422E1DL,6L,(-1L),0x3B0785C3L,(-7L)},{(-7L),0x67422E1DL,6L,(-1L),0x3B0785C3L,(-7L)},{(-7L),0x67422E1DL,6L,(-1L),0x3B0785C3L,(-7L)},{(-7L),0x67422E1DL,6L,(-1L),0x3B0785C3L,(-7L)}};
    int64_t *l_548 = &p_560->g_31;
    struct S0 l_549 = {0x85337F44L};
    int32_t *l_551[2];
    VECTOR(uint64_t, 2) l_558 = (VECTOR(uint64_t, 2))(0x87C8535615F76280L, 0x1F20E9CB7FB8CC38L);
    VECTOR(uint64_t, 16) l_559 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL, (VECTOR(uint64_t, 2))(0UL, 1UL), (VECTOR(uint64_t, 2))(0UL, 1UL), 0UL, 1UL, 0UL, 1UL);
    int i, j;
    for (i = 0; i < 2; i++)
        l_551[i] = &l_533;
    if (((*p_560->g_523) = func_2((((*l_548) = (l_547[2][2] |= ((p_560->g_546 = func_6(l_12, ((((VECTOR(uint32_t, 16))(p_560->g_13.xxxxxyxxxxyyyyyx)).s0 , (GROUP_DIVERGE(0, 1) , 0x5A8AFC1DL)) , (l_533 = (safe_mod_func_int8_t_s_s(func_16(func_19((safe_sub_func_uint32_t_u_u(((safe_mod_func_uint64_t_u_u((safe_mul_func_uint16_t_u_u(p_560->g_13.y, (!p_560->g_31))), func_32((func_37(l_12, l_12, func_43((func_48((func_50((safe_sub_func_int8_t_s_s((safe_lshift_func_int16_t_s_s((((safe_rshift_func_int16_t_s_s((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 16))(p_560->g_58.s3323721576660325)).hi && ((VECTOR(int8_t, 16))((+((((VECTOR(uint8_t, 16))(l_59.sadf851f08a1bab0c)).s3 || l_60) < 0xBF7A8323L)), ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))((safe_rshift_func_uint16_t_u_s((safe_sub_func_uint16_t_u_u(((!(safe_mod_func_uint32_t_u_u((safe_add_func_int8_t_s_s((((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 8))(safe_clamp_func(VECTOR(uint32_t, 8),uint32_t,((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 2))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 2),((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 8))(abs(((VECTOR(uint32_t, 4))((+((VECTOR(uint32_t, 8))(((0x0509L <= (-2L)) >= l_59.sa), 0x81F04FECL, FAKE_DIVERGE(p_560->group_0_offset, get_group_id(0), 10), ((VECTOR(uint32_t, 4))(7UL)), 0UL)).hi))).zxzyyxyx))).s0054333635237203 + ((VECTOR(uint32_t, 16))(4294967294UL))))).s54, ((VECTOR(uint32_t, 2))(0x4CD027BAL))))).xyyxyxxx + ((VECTOR(uint32_t, 8))(0xBC5F2630L))))), 0xB7B20295L, ((VECTOR(uint32_t, 2))(0x5FD78DB5L)), 3UL, 0x546D79C1L, ((VECTOR(uint32_t, 2))(0x131AC691L)), 4294967291UL)).s12 + ((VECTOR(uint32_t, 2))(4294967295UL))))).xyyyxyyx, (uint32_t)0x044B1310L, (uint32_t)p_560->g_58.s6))) + ((VECTOR(uint32_t, 8))(3UL))))).s42 + ((VECTOR(uint32_t, 2))(4294967295UL))))).even == l_59.s3), l_12)), l_60))) || 0xC077406462EF7C93L), p_560->g_58.s4)), 11)), ((VECTOR(int8_t, 4))((-1L))), ((VECTOR(int8_t, 2))(1L)), (-1L))).s56 <= ((VECTOR(int8_t, 2))((-7L)))))), p_560->g_58.s4, 1L, l_12, 0x55L, 0L, 8L)), (-8L), 0L, ((VECTOR(int8_t, 4))(0x16L)), 9L)).even))).s5 == FAKE_DIVERGE(p_560->global_2_offset, get_global_id(2), 10)), 2)) & l_60) == 9L), 8)), 0x21L)), p_560) , p_560->g_58.s7), p_560) , l_59.sa), p_560->g_140.y, l_60, p_560->g_158, p_560), l_60, p_560->g_99.x, p_560) , p_560->g_140.y), l_494, p_560->g_349.y, l_59.s5, p_560))) || p_560->g_175[0]), l_60)), l_59.s8, p_560->g_58.s5, l_59.sa, l_59.s4, p_560), p_560->g_58.s1, p_560), 0xE0L)))), p_560->g_99.y, p_560->g_99.y, l_534, p_560)) , p_560->g_352[1][5][0]))) , 2L), l_549, l_549.f0, p_560)))
    { /* block id: 230 */
        (*p_560->g_552) = &p_560->g_82;
    }
    else
    { /* block id: 232 */
        struct S0 l_553 = {1UL};
        struct S0 *l_554 = &p_560->g_125[2];
        struct S0 *l_555 = &l_549;
        (*p_560->g_556) = ((*l_555) = ((*l_554) = l_553));
    }
    (*p_560->g_523) |= (((VECTOR(uint64_t, 8))(l_558.yxxxyxyx)).s2 < ((VECTOR(uint64_t, 4))(l_559.sa723)).z);
    return p_560->g_276;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t  func_2(int16_t  p_3, struct S0  p_4, uint8_t  p_5, struct S1 * p_560)
{ /* block id: 227 */
    uint8_t l_550 = 0xBBL;
    return l_550;
}


/* ------------------------------------------ */
/* 
 * reads : p_560->g_117
 * writes: p_560->g_117
 */
int32_t  func_6(uint32_t  p_7, int8_t  p_8, uint32_t  p_9, int32_t  p_10, uint64_t  p_11, struct S1 * p_560)
{ /* block id: 215 */
    int32_t l_537 = 2L;
    int32_t *l_538 = (void*)0;
    int32_t *l_539 = &p_560->g_82;
    int32_t *l_540 = (void*)0;
    int32_t *l_541[4];
    uint32_t l_542 = 0xFD6D2EA0L;
    int i;
    for (i = 0; i < 4; i++)
        l_541[i] = &p_560->g_119;
    for (p_560->g_117 = 27; (p_560->g_117 <= 17); p_560->g_117 = safe_sub_func_int64_t_s_s(p_560->g_117, 8))
    { /* block id: 218 */
        if (l_537)
            break;
        if (p_7)
            break;
    }
    l_542++;
    return p_8;
}


/* ------------------------------------------ */
/* 
 * reads : p_560->g_523 p_560->g_82
 * writes: p_560->g_82
 */
int8_t  func_16(uint64_t  p_17, uint64_t  p_18, struct S1 * p_560)
{ /* block id: 211 */
    int32_t l_531[9] = {0x1BADE581L,0x1BADE581L,0x1BADE581L,0x1BADE581L,0x1BADE581L,0x1BADE581L,0x1BADE581L,0x1BADE581L,0x1BADE581L};
    int i;
    (*p_560->g_523) |= l_531[3];
    return p_17;
}


/* ------------------------------------------ */
/* 
 * reads : p_560->g_31 p_560->g_175 p_560->g_133 p_560->g_523 p_560->g_82 p_560->g_113
 * writes: p_560->g_500 p_560->g_31 p_560->g_82 p_560->g_125
 */
uint64_t  func_19(uint64_t  p_20, uint32_t  p_21, int64_t  p_22, int32_t  p_23, uint16_t  p_24, struct S1 * p_560)
{ /* block id: 197 */
    uint16_t *l_499 = (void*)0;
    uint16_t **l_498 = &l_499;
    uint16_t ***l_497[1][4][9] = {{{(void*)0,(void*)0,(void*)0,&l_498,(void*)0,&l_498,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_498,(void*)0,&l_498,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_498,(void*)0,&l_498,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_498,(void*)0,&l_498,(void*)0,(void*)0,(void*)0}}};
    int32_t l_517 = 0x7711882DL;
    struct S0 l_527 = {5UL};
    struct S0 *l_530 = &p_560->g_125[2];
    int i, j, k;
    p_560->g_500 = (void*)0;
    for (p_560->g_31 = 0; (p_560->g_31 != (-8)); --p_560->g_31)
    { /* block id: 201 */
        int16_t l_504 = 0x35C0L;
        int32_t *l_518[6][7][2] = {{{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433}},{{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433}},{{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433}},{{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433}},{{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433}},{{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433},{&p_560->g_433,&p_560->g_433}}};
        int32_t *l_524 = (void*)0;
        int i, j, k;
        if (l_504)
        { /* block id: 202 */
            int32_t *l_519 = &p_560->g_433;
            int32_t l_522 = 0x6E058D8CL;
            (*p_560->g_523) ^= (((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 4))((-4L), ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 2))((-1L), 0x00L)).xxxyxyxx && ((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 8))(mad_sat(((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),int8_t,((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))((~((VECTOR(int8_t, 8))(hadd(((VECTOR(int8_t, 4))((safe_add_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(p_560->g_175[8], (safe_mod_func_int64_t_s_s((safe_lshift_func_uint8_t_u_s(((((safe_lshift_func_int8_t_s_s((-3L), (safe_rshift_func_uint8_t_u_u(l_517, 5)))) & p_21) , l_518[2][4][1]) != l_519), (p_560->g_133 != (((safe_rshift_func_int8_t_s_u((((p_23 > l_517) || p_21) >= (-1L)), 2)) , l_522) <= p_20)))), l_522)))), (-1L))), ((VECTOR(int8_t, 2))(0x68L)), 0x39L)).xzzwwwww, ((VECTOR(int8_t, 8))((-5L))))))))) > ((VECTOR(int8_t, 8))(0L))))) > ((VECTOR(int8_t, 8))(0L))))) != ((VECTOR(int8_t, 8))((-1L)))))).s46, (int8_t)p_22, (int8_t)l_522))).xxxyyyyy, ((VECTOR(int8_t, 8))(0x14L)), ((VECTOR(int8_t, 8))(1L))))).hi, ((VECTOR(int8_t, 4))(0x33L))))).wywwywxy))) | ((VECTOR(int8_t, 8))(0L))))).s3634073556336535 < ((VECTOR(int8_t, 16))(1L))))).odd > ((VECTOR(int8_t, 8))(0x46L))))).even, ((VECTOR(int8_t, 4))((-10L)))))).even || ((VECTOR(int8_t, 2))((-1L)))))), 1L)).yzzyzzyyzxwywwxx))).s6 ^ p_22);
        }
        else
        { /* block id: 204 */
            int32_t **l_525 = (void*)0;
            int32_t *l_526 = (void*)0;
            if (p_23)
                break;
            l_526 = l_524;
        }
    }
    (*l_530) = l_527;
    return p_560->g_113.s6;
}


/* ------------------------------------------ */
/* 
 * reads : p_560->g_213
 * writes:
 */
uint64_t  func_32(uint64_t  p_33, int64_t  p_34, uint64_t  p_35, uint8_t  p_36, struct S1 * p_560)
{ /* block id: 194 */
    int32_t **l_495 = (void*)0;
    int32_t *l_496 = &p_560->g_82;
    l_496 = &p_560->g_119;
    return p_560->g_213.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_560->g_83 p_560->g_119 p_560->g_158 p_560->g_255 p_560->g_140 p_560->g_352 p_560->g_433 p_560->g_58 p_560->g_276 p_560->g_213
 * writes: p_560->g_113 p_560->g_119 p_560->g_433 p_560->g_441 p_560->g_83 p_560->g_82 p_560->g_276
 */
uint64_t  func_37(int32_t  p_38, uint64_t  p_39, int32_t  p_40, int32_t  p_41, uint32_t  p_42, struct S1 * p_560)
{ /* block id: 135 */
    uint32_t *l_383[5];
    int16_t *l_398 = (void*)0;
    int32_t l_399 = (-1L);
    int32_t *l_400 = (void*)0;
    int32_t *l_401 = &p_560->g_119;
    VECTOR(uint32_t, 4) l_402 = (VECTOR(uint32_t, 4))(0xC418A251L, (VECTOR(uint32_t, 2))(0xC418A251L, 4294967295UL), 4294967295UL);
    int8_t l_403 = 0x5CL;
    struct S0 l_404 = {7UL};
    struct S0 *l_405[1];
    struct S0 l_406[5] = {{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL}};
    uint32_t l_407[8][1][2] = {{{0x7A248315L,0x94A2C94BL}},{{0x7A248315L,0x94A2C94BL}},{{0x7A248315L,0x94A2C94BL}},{{0x7A248315L,0x94A2C94BL}},{{0x7A248315L,0x94A2C94BL}},{{0x7A248315L,0x94A2C94BL}},{{0x7A248315L,0x94A2C94BL}},{{0x7A248315L,0x94A2C94BL}}};
    int32_t l_414 = (-1L);
    int32_t l_415 = 0x0E53E591L;
    int32_t l_417 = 0x71D27235L;
    int32_t l_421 = 9L;
    int32_t l_422 = 4L;
    int32_t l_423 = 0x514600DAL;
    VECTOR(int32_t, 4) l_424 = (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), (-6L)), (-6L));
    uint64_t *l_442 = (void*)0;
    int32_t l_443[9][10] = {{0x0FDFBF56L,0x38FE348CL,7L,1L,0x1BD051C9L,1L,7L,0x38FE348CL,0x0FDFBF56L,7L},{0x0FDFBF56L,0x38FE348CL,7L,1L,0x1BD051C9L,1L,7L,0x38FE348CL,0x0FDFBF56L,7L},{0x0FDFBF56L,0x38FE348CL,7L,1L,0x1BD051C9L,1L,7L,0x38FE348CL,0x0FDFBF56L,7L},{0x0FDFBF56L,0x38FE348CL,7L,1L,0x1BD051C9L,1L,7L,0x38FE348CL,0x0FDFBF56L,7L},{0x0FDFBF56L,0x38FE348CL,7L,1L,0x1BD051C9L,1L,7L,0x38FE348CL,0x0FDFBF56L,7L},{0x0FDFBF56L,0x38FE348CL,7L,1L,0x1BD051C9L,1L,7L,0x38FE348CL,0x0FDFBF56L,7L},{0x0FDFBF56L,0x38FE348CL,7L,1L,0x1BD051C9L,1L,7L,0x38FE348CL,0x0FDFBF56L,7L},{0x0FDFBF56L,0x38FE348CL,7L,1L,0x1BD051C9L,1L,7L,0x38FE348CL,0x0FDFBF56L,7L},{0x0FDFBF56L,0x38FE348CL,7L,1L,0x1BD051C9L,1L,7L,0x38FE348CL,0x0FDFBF56L,7L}};
    uint16_t l_462 = 7UL;
    uint32_t l_482 = 0x895B6C0FL;
    int32_t *l_489[9][3][6] = {{{&l_417,(void*)0,(void*)0,&l_417,(void*)0,&l_421},{&l_417,(void*)0,(void*)0,&l_417,(void*)0,&l_421},{&l_417,(void*)0,(void*)0,&l_417,(void*)0,&l_421}},{{&l_417,(void*)0,(void*)0,&l_417,(void*)0,&l_421},{&l_417,(void*)0,(void*)0,&l_417,(void*)0,&l_421},{&l_417,(void*)0,(void*)0,&l_417,(void*)0,&l_421}},{{&l_417,(void*)0,(void*)0,&l_417,(void*)0,&l_421},{&l_417,(void*)0,(void*)0,&l_417,(void*)0,&l_421},{&l_417,(void*)0,(void*)0,&l_417,(void*)0,&l_421}},{{&l_417,(void*)0,(void*)0,&l_417,(void*)0,&l_421},{&l_417,(void*)0,(void*)0,&l_417,(void*)0,&l_421},{&l_417,(void*)0,(void*)0,&l_417,(void*)0,&l_421}},{{&l_417,(void*)0,(void*)0,&l_417,(void*)0,&l_421},{&l_417,(void*)0,(void*)0,&l_417,(void*)0,&l_421},{&l_417,(void*)0,(void*)0,&l_417,(void*)0,&l_421}},{{&l_417,(void*)0,(void*)0,&l_417,(void*)0,&l_421},{&l_417,(void*)0,(void*)0,&l_417,(void*)0,&l_421},{&l_417,(void*)0,(void*)0,&l_417,(void*)0,&l_421}},{{&l_417,(void*)0,(void*)0,&l_417,(void*)0,&l_421},{&l_417,(void*)0,(void*)0,&l_417,(void*)0,&l_421},{&l_417,(void*)0,(void*)0,&l_417,(void*)0,&l_421}},{{&l_417,(void*)0,(void*)0,&l_417,(void*)0,&l_421},{&l_417,(void*)0,(void*)0,&l_417,(void*)0,&l_421},{&l_417,(void*)0,(void*)0,&l_417,(void*)0,&l_421}},{{&l_417,(void*)0,(void*)0,&l_417,(void*)0,&l_421},{&l_417,(void*)0,(void*)0,&l_417,(void*)0,&l_421},{&l_417,(void*)0,(void*)0,&l_417,(void*)0,&l_421}}};
    int16_t l_490 = 0L;
    uint16_t l_491 = 1UL;
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_383[i] = (void*)0;
    for (i = 0; i < 1; i++)
        l_405[i] = &p_560->g_125[6];
    l_406[0] = (((safe_mul_func_uint8_t_u_u(((void*)0 != l_383[1]), p_38)) | ((((safe_rshift_func_int8_t_s_u((0x59L != (safe_lshift_func_uint16_t_u_u((safe_sub_func_uint16_t_u_u((safe_mod_func_int16_t_s_s(0x24E1L, (p_560->g_113.s2 = p_560->g_83.z))), (((((VECTOR(int64_t, 2))(0x0EBED17D936634F7L, 0x1F149971C26E0854L)).even != p_39) == ((!((((GROUP_DIVERGE(1, 1) | ((((*l_401) |= (safe_sub_func_int64_t_s_s(((safe_add_func_uint64_t_u_u((1L <= (safe_rshift_func_int16_t_s_u(((void*)0 == l_398), 8))), 0UL)) && l_399), l_399))) == p_560->g_158) && p_41)) < p_42) ^ p_560->g_255.s5) , l_402.y)) | p_560->g_140.y)) | l_403))), p_560->g_352[2][2][0]))), 4)) < 0x584CL) , p_560->g_255.s4) <= 0L)) , l_404);
    --l_407[1][0][0];
    if ((*l_401))
    { /* block id: 140 */
        int32_t l_413 = (-5L);
        int32_t l_416 = (-2L);
        int32_t l_418 = 6L;
        int32_t l_419 = 0x750B3280L;
        int32_t l_420[8];
        VECTOR(int8_t, 2) l_447 = (VECTOR(int8_t, 2))((-1L), (-6L));
        uint16_t l_465 = 0x0701L;
        int i;
        for (i = 0; i < 8; i++)
            l_420[i] = 1L;
        (*l_401) &= (-1L);
lbl_428:
        for (p_38 = 0; (p_38 >= 14); p_38++)
        { /* block id: 144 */
            int32_t *l_412[6][6] = {{&p_560->g_82,&p_560->g_82,&l_399,(void*)0,&l_399,&p_560->g_82},{&p_560->g_82,&p_560->g_82,&l_399,(void*)0,&l_399,&p_560->g_82},{&p_560->g_82,&p_560->g_82,&l_399,(void*)0,&l_399,&p_560->g_82},{&p_560->g_82,&p_560->g_82,&l_399,(void*)0,&l_399,&p_560->g_82},{&p_560->g_82,&p_560->g_82,&l_399,(void*)0,&l_399,&p_560->g_82},{&p_560->g_82,&p_560->g_82,&l_399,(void*)0,&l_399,&p_560->g_82}};
            uint8_t l_425 = 2UL;
            int i, j;
            l_425--;
            p_41 = (-1L);
            if (p_41)
                goto lbl_428;
        }
        for (l_403 = (-16); (l_403 == (-1)); l_403 = safe_add_func_int16_t_s_s(l_403, 3))
        { /* block id: 151 */
            int64_t l_431 = (-1L);
            int32_t *l_432 = &p_560->g_433;
            uint64_t *l_438 = (void*)0;
            uint64_t *l_439 = (void*)0;
            uint64_t *l_440[5][9] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
            uint16_t *l_444 = (void*)0;
            uint16_t *l_445 = (void*)0;
            uint16_t *l_446[6];
            int32_t l_461 = 0L;
            struct S0 *l_473[5];
            int32_t l_481 = 0x0AF7ECBEL;
            int32_t **l_485 = &l_400;
            int i, j;
            for (i = 0; i < 6; i++)
                l_446[i] = (void*)0;
            for (i = 0; i < 5; i++)
                l_473[i] = &l_406[1];
            (*l_401) |= (((p_42 <= l_420[1]) , (l_431 , (((*l_432) |= (&l_404 != &p_560->g_125[0])) , ((safe_mod_func_uint32_t_u_u(((((safe_rshift_func_uint8_t_u_s(((p_39 = (l_431 > GROUP_DIVERGE(1, 1))) | ((((p_560->g_83.x = ((((((p_560->g_441 = l_438) == l_442) ^ (l_420[5] && p_42)) >= p_41) == l_443[8][7]) ^ l_419)) | 0x0372L) | p_40) <= l_447.x)), 3)) , p_41) > 18446744073709551615UL) & p_560->g_140.y), l_413)) , p_42)))) < l_418);
            if (p_39)
                break;
            if (p_560->g_58.s5)
            { /* block id: 158 */
                int8_t l_459 = 1L;
                for (l_419 = 0; (l_419 >= (-20)); l_419 = safe_sub_func_int32_t_s_s(l_419, 4))
                { /* block id: 161 */
                    int32_t l_452 = 0x66F3DB75L;
                    int32_t l_460[4];
                    int i;
                    for (i = 0; i < 4; i++)
                        l_460[i] = 8L;
                    for (p_39 = 22; (p_39 < 12); p_39 = safe_sub_func_uint32_t_u_u(p_39, 9))
                    { /* block id: 164 */
                        int32_t *l_453 = &l_420[0];
                        int32_t *l_454 = &l_415;
                        int32_t *l_455 = &p_560->g_82;
                        int32_t *l_456 = (void*)0;
                        int32_t *l_457 = &l_420[1];
                        int32_t *l_458[3];
                        int32_t **l_468 = &l_455;
                        int i;
                        for (i = 0; i < 3; i++)
                            l_458[i] = &l_414;
                        if (p_38)
                            break;
                        l_462--;
                        ++l_465;
                        (*l_468) = l_453;
                    }
                    if (p_41)
                        break;
                    if ((safe_unary_minus_func_int16_t_s((0xF00BL ^ (-4L)))))
                    { /* block id: 171 */
                        int32_t **l_470 = &l_400;
                        (*l_470) = &p_560->g_82;
                        (*l_400) = (safe_sub_func_int16_t_s_s((l_473[0] == (void*)0), p_42));
                    }
                    else
                    { /* block id: 174 */
                        if (l_459)
                            break;
                        if (p_40)
                            break;
                    }
                }
            }
            else
            { /* block id: 179 */
                int32_t *l_474 = (void*)0;
                int32_t *l_475 = (void*)0;
                int32_t *l_476 = (void*)0;
                int32_t *l_477 = &l_461;
                int32_t *l_478 = (void*)0;
                int32_t *l_479 = (void*)0;
                int32_t *l_480[1];
                int i;
                for (i = 0; i < 1; i++)
                    l_480[i] = &l_419;
                ++l_482;
            }
            (*l_485) = &p_560->g_82;
        }
        for (p_560->g_276 = (-8); (p_560->g_276 != 10); p_560->g_276 = safe_add_func_int16_t_s_s(p_560->g_276, 7))
        { /* block id: 186 */
            if (p_560->g_213.y)
                break;
        }
    }
    else
    { /* block id: 189 */
        int8_t *l_488 = &l_403;
        (*l_401) |= (&p_560->g_158 != l_488);
    }
    l_491++;
    return p_41;
}


/* ------------------------------------------ */
/* 
 * reads : p_560->g_173 p_560->g_175 p_560->g_83 p_560->g_133 p_560->g_113 p_560->g_140 p_560->g_158 p_560->g_203 p_560->g_82 p_560->g_288 p_560->g_117 p_560->g_276 p_560->g_31 p_560->g_99 p_560->g_125.f0 p_560->g_255 p_560->g_348 p_560->g_352 p_560->g_58 p_560->g_312 p_560->g_213
 * writes: p_560->g_169 p_560->g_175 p_560->g_125 p_560->g_133 p_560->g_140 p_560->g_158 p_560->g_276 p_560->g_119 p_560->g_82 p_560->g_203 p_560->g_312 p_560->g_117 p_560->g_288 p_560->g_352
 */
int32_t  func_43(int32_t  p_44, int8_t  p_45, uint64_t  p_46, int32_t  p_47, struct S1 * p_560)
{ /* block id: 35 */
    int8_t l_161 = 0x03L;
    struct S0 *l_166 = &p_560->g_125[7];
    int32_t *l_176[4][7] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    VECTOR(uint64_t, 4) l_202 = (VECTOR(uint64_t, 4))(0xBAE861B12810C4A4L, (VECTOR(uint64_t, 2))(0xBAE861B12810C4A4L, 0x8B0D3C19544EE9F1L), 0x8B0D3C19544EE9F1L);
    VECTOR(uint64_t, 2) l_204 = (VECTOR(uint64_t, 2))(0x7E3DCAB47AAE73F2L, 0x129FC678946ABEE0L);
    int32_t l_277 = 1L;
    VECTOR(uint16_t, 4) l_298 = (VECTOR(uint16_t, 4))(65526UL, (VECTOR(uint16_t, 2))(65526UL, 65535UL), 65535UL);
    int64_t l_317 = 0x614D16358AF41B11L;
    VECTOR(uint32_t, 2) l_334 = (VECTOR(uint32_t, 2))(0x642941F7L, 4294967295UL);
    int i, j;
    if (l_161)
    { /* block id: 36 */
        int8_t *l_164 = (void*)0;
        int8_t *l_165 = &l_161;
        int32_t l_170 = 0L;
        uint32_t *l_174 = &p_560->g_175[5];
        int32_t *l_177[8][9] = {{(void*)0,&p_560->g_119,&p_560->g_119,(void*)0,(void*)0,&l_170,(void*)0,(void*)0,&l_170},{(void*)0,&p_560->g_119,&p_560->g_119,(void*)0,(void*)0,&l_170,(void*)0,(void*)0,&l_170},{(void*)0,&p_560->g_119,&p_560->g_119,(void*)0,(void*)0,&l_170,(void*)0,(void*)0,&l_170},{(void*)0,&p_560->g_119,&p_560->g_119,(void*)0,(void*)0,&l_170,(void*)0,(void*)0,&l_170},{(void*)0,&p_560->g_119,&p_560->g_119,(void*)0,(void*)0,&l_170,(void*)0,(void*)0,&l_170},{(void*)0,&p_560->g_119,&p_560->g_119,(void*)0,(void*)0,&l_170,(void*)0,(void*)0,&l_170},{(void*)0,&p_560->g_119,&p_560->g_119,(void*)0,(void*)0,&l_170,(void*)0,(void*)0,&l_170},{(void*)0,&p_560->g_119,&p_560->g_119,(void*)0,(void*)0,&l_170,(void*)0,(void*)0,&l_170}};
        struct S0 l_178 = {2UL};
        uint32_t *l_192 = (void*)0;
        VECTOR(uint64_t, 4) l_209 = (VECTOR(uint64_t, 4))(2UL, (VECTOR(uint64_t, 2))(2UL, 0x9CA341128DF1E426L), 0x9CA341128DF1E426L);
        VECTOR(uint64_t, 16) l_211 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0x4C0977ED16D68688L), 0x4C0977ED16D68688L), 0x4C0977ED16D68688L, 0UL, 0x4C0977ED16D68688L, (VECTOR(uint64_t, 2))(0UL, 0x4C0977ED16D68688L), (VECTOR(uint64_t, 2))(0UL, 0x4C0977ED16D68688L), 0UL, 0x4C0977ED16D68688L, 0UL, 0x4C0977ED16D68688L);
        VECTOR(int64_t, 8) l_274 = (VECTOR(int64_t, 8))(0x1DD65BF24F83E576L, (VECTOR(int64_t, 4))(0x1DD65BF24F83E576L, (VECTOR(int64_t, 2))(0x1DD65BF24F83E576L, 0x0BAAADCDAF2D127FL), 0x0BAAADCDAF2D127FL), 0x0BAAADCDAF2D127FL, 0x1DD65BF24F83E576L, 0x0BAAADCDAF2D127FL);
        int32_t l_295 = 1L;
        int32_t *l_299 = (void*)0;
        uint64_t l_300 = 0x550386D169E286D1L;
        int i, j;
        l_177[2][7] = (((((*l_165) = (safe_lshift_func_uint16_t_u_u(p_46, 8))) || ((((void*)0 != l_166) <= ((*l_174) |= (safe_add_func_int8_t_s_s(0x63L, ((VECTOR(uint8_t, 16))(safe_clamp_func(VECTOR(uint8_t, 16),uint8_t,((VECTOR(uint8_t, 8))(0xE9L, 0x71L, 2UL, 0xC7L, (l_166 == (p_560->g_169[0][2][0] = l_166)), 251UL, 1UL, 0x2DL)).s1563612144345573, (uint8_t)l_170, (uint8_t)(safe_rshift_func_int8_t_s_s((&l_161 != p_560->g_173), l_161))))).s1)))) <= p_560->g_83.w)) , 0x702AL) , l_176[0][5]);
        (*l_166) = ((0x7C746F6621438A76L < p_46) , l_178);
        for (p_560->g_133 = 0; (p_560->g_133 != 19); p_560->g_133 = safe_add_func_uint32_t_u_u(p_560->g_133, 2))
        { /* block id: 44 */
            uint64_t l_189 = 0x68E0BF437BD5445EL;
            VECTOR(uint64_t, 16) l_216 = (VECTOR(uint64_t, 16))(2UL, (VECTOR(uint64_t, 4))(2UL, (VECTOR(uint64_t, 2))(2UL, 18446744073709551606UL), 18446744073709551606UL), 18446744073709551606UL, 2UL, 18446744073709551606UL, (VECTOR(uint64_t, 2))(2UL, 18446744073709551606UL), (VECTOR(uint64_t, 2))(2UL, 18446744073709551606UL), 2UL, 18446744073709551606UL, 2UL, 18446744073709551606UL);
            int32_t l_224 = 0x5029A793L;
            int32_t l_225 = (-3L);
            struct S0 **l_301 = &p_560->g_169[1][2][1];
            int i;
            p_560->g_140.x ^= p_560->g_113.s6;
            for (p_560->g_158 = 0; (p_560->g_158 <= (-26)); p_560->g_158 = safe_sub_func_uint32_t_u_u(p_560->g_158, 4))
            { /* block id: 48 */
                VECTOR(uint64_t, 2) l_199 = (VECTOR(uint64_t, 2))(6UL, 0xAA51747AB6034B83L);
                VECTOR(uint64_t, 2) l_210 = (VECTOR(uint64_t, 2))(18446744073709551607UL, 0UL);
                int32_t l_223 = 0x0BC7F7CBL;
                int8_t *l_249[2][8] = {{(void*)0,&p_560->g_158,(void*)0,(void*)0,&p_560->g_158,(void*)0,(void*)0,&p_560->g_158},{(void*)0,&p_560->g_158,(void*)0,(void*)0,&p_560->g_158,(void*)0,(void*)0,&p_560->g_158}};
                uint16_t l_268[10][9][2] = {{{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL}},{{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL}},{{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL}},{{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL}},{{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL}},{{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL}},{{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL}},{{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL}},{{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL}},{{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL},{0xE9E6L,1UL}}};
                int i, j, k;
                for (l_161 = (-16); (l_161 < 9); l_161 = safe_add_func_int8_t_s_s(l_161, 4))
                { /* block id: 51 */
                    uint32_t *l_193 = &p_560->g_175[1];
                    VECTOR(uint64_t, 4) l_194 = (VECTOR(uint64_t, 4))(0x05403430B8F8A4D6L, (VECTOR(uint64_t, 2))(0x05403430B8F8A4D6L, 0UL), 0UL);
                    VECTOR(uint64_t, 2) l_212 = (VECTOR(uint64_t, 2))(0UL, 0x91E9BC497D2CFA96L);
                    uint64_t l_251 = 18446744073709551615UL;
                    int8_t *l_252[4][8][5] = {{{(void*)0,&p_560->g_158,&l_161,(void*)0,(void*)0},{(void*)0,&p_560->g_158,&l_161,(void*)0,(void*)0},{(void*)0,&p_560->g_158,&l_161,(void*)0,(void*)0},{(void*)0,&p_560->g_158,&l_161,(void*)0,(void*)0},{(void*)0,&p_560->g_158,&l_161,(void*)0,(void*)0},{(void*)0,&p_560->g_158,&l_161,(void*)0,(void*)0},{(void*)0,&p_560->g_158,&l_161,(void*)0,(void*)0},{(void*)0,&p_560->g_158,&l_161,(void*)0,(void*)0}},{{(void*)0,&p_560->g_158,&l_161,(void*)0,(void*)0},{(void*)0,&p_560->g_158,&l_161,(void*)0,(void*)0},{(void*)0,&p_560->g_158,&l_161,(void*)0,(void*)0},{(void*)0,&p_560->g_158,&l_161,(void*)0,(void*)0},{(void*)0,&p_560->g_158,&l_161,(void*)0,(void*)0},{(void*)0,&p_560->g_158,&l_161,(void*)0,(void*)0},{(void*)0,&p_560->g_158,&l_161,(void*)0,(void*)0},{(void*)0,&p_560->g_158,&l_161,(void*)0,(void*)0}},{{(void*)0,&p_560->g_158,&l_161,(void*)0,(void*)0},{(void*)0,&p_560->g_158,&l_161,(void*)0,(void*)0},{(void*)0,&p_560->g_158,&l_161,(void*)0,(void*)0},{(void*)0,&p_560->g_158,&l_161,(void*)0,(void*)0},{(void*)0,&p_560->g_158,&l_161,(void*)0,(void*)0},{(void*)0,&p_560->g_158,&l_161,(void*)0,(void*)0},{(void*)0,&p_560->g_158,&l_161,(void*)0,(void*)0},{(void*)0,&p_560->g_158,&l_161,(void*)0,(void*)0}},{{(void*)0,&p_560->g_158,&l_161,(void*)0,(void*)0},{(void*)0,&p_560->g_158,&l_161,(void*)0,(void*)0},{(void*)0,&p_560->g_158,&l_161,(void*)0,(void*)0},{(void*)0,&p_560->g_158,&l_161,(void*)0,(void*)0},{(void*)0,&p_560->g_158,&l_161,(void*)0,(void*)0},{(void*)0,&p_560->g_158,&l_161,(void*)0,(void*)0},{(void*)0,&p_560->g_158,&l_161,(void*)0,(void*)0},{(void*)0,&p_560->g_158,&l_161,(void*)0,(void*)0}}};
                    VECTOR(uint8_t, 8) l_256 = (VECTOR(uint8_t, 8))(2UL, (VECTOR(uint8_t, 4))(2UL, (VECTOR(uint8_t, 2))(2UL, 0x9BL), 0x9BL), 0x9BL, 2UL, 0x9BL);
                    int64_t l_269 = (-1L);
                    VECTOR(uint64_t, 16) l_275 = (VECTOR(uint64_t, 16))(0xD1D656DAAFBEA957L, (VECTOR(uint64_t, 4))(0xD1D656DAAFBEA957L, (VECTOR(uint64_t, 2))(0xD1D656DAAFBEA957L, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0xD1D656DAAFBEA957L, 18446744073709551615UL, (VECTOR(uint64_t, 2))(0xD1D656DAAFBEA957L, 18446744073709551615UL), (VECTOR(uint64_t, 2))(0xD1D656DAAFBEA957L, 18446744073709551615UL), 0xD1D656DAAFBEA957L, 18446744073709551615UL, 0xD1D656DAAFBEA957L, 18446744073709551615UL);
                    struct S0 **l_278 = &l_166;
                    int32_t **l_279 = (void*)0;
                    int i, j, k;
                    if ((safe_lshift_func_int8_t_s_s((safe_rshift_func_int8_t_s_u(((l_189 &= 0x032C571BL) && p_45), (safe_div_func_int64_t_s_s((l_192 != (p_46 , l_193)), ((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 2))(l_194.ww)).xxyyxxxxxxxyxyxy & ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 2))(max(((VECTOR(uint64_t, 4))(0xCB306C27A0610263L, 1UL, 0xF110F92F17FB0F1FL, 0x5C9EB641AC3D2276L)).hi, (uint64_t)p_560->g_113.s2))) + ((VECTOR(uint64_t, 4))(mad_sat(((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 2))(add_sat(((VECTOR(uint64_t, 16))(18446744073709551612UL, ((VECTOR(uint64_t, 8))(clz(((VECTOR(uint64_t, 4))(safe_clamp_func(VECTOR(uint64_t, 4),VECTOR(uint64_t, 4),((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(hadd(((VECTOR(uint64_t, 16))(l_199.xyyyxyxxyxyxyxyx)).hi, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 16))(l_202.xzywzwxxxywwyzyz)).sde46 + ((VECTOR(uint64_t, 8))(p_560->g_203.xxxyyxxx)).even))), ((VECTOR(uint64_t, 4))(l_204.xyxy))))))), p_560->g_203.x, 18446744073709551614UL, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(min(((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 4))(l_209.yzzx)).even + ((VECTOR(uint64_t, 4))(l_210.xyxy)).even))) + ((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 2))(l_211.sad)).xxxx ^ ((VECTOR(uint64_t, 4))(l_212.yxxy))))).hi))), (uint64_t)((0x0BL > ((((VECTOR(uint64_t, 16))(rotate(((VECTOR(uint64_t, 16))(p_560->g_213.xxxyyyxyxxxyxyyy)), ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 8))(l_216.s72c5e541)).s66 << ((VECTOR(uint64_t, 2))(64))))).yxyyxxxyxxyxyyxy))).s2 != ((safe_rshift_func_int16_t_s_s((safe_mod_func_uint16_t_u_u((safe_add_func_uint32_t_u_u((l_199.y | 0x35L), p_560->g_140.x)), l_199.x)), p_47)) , p_45)) || p_560->g_113.s1)) | p_560->g_133)))).even, ((VECTOR(uint64_t, 2))(0xDAB9524A28D324E5L)), 0x2EE5E1461F6864BBL)), 0x6CB08EF80640D2D8L, 0UL)).se5fa, ((VECTOR(uint64_t, 4))(18446744073709551614UL)), ((VECTOR(uint64_t, 4))(0xE0A22320633EA239L))))).zxzxxxzz))), 18446744073709551606UL, 0xDCDC94ECEE0DB94EL, p_46, l_212.x, ((VECTOR(uint64_t, 2))(0x7A67A8A6FBB8838BL)), 18446744073709551606UL)).s34, ((VECTOR(uint64_t, 2))(18446744073709551607UL))))).xyyx + ((VECTOR(uint64_t, 4))(0x7D05EB35AFFD8D47L))))), ((VECTOR(uint64_t, 4))(8UL)), ((VECTOR(uint64_t, 4))(0UL))))).odd))), 0xDB9BC0F596ABB34EL, 1UL)).wxwwwwwxzxxxzzzw))).sf)))), 2)))
                    { /* block id: 53 */
                        VECTOR(uint16_t, 2) l_226 = (VECTOR(uint16_t, 2))(65534UL, 0UL);
                        int32_t l_237 = 0x4508AB74L;
                        struct S0 l_248 = {0UL};
                        uint8_t l_250 = 0x3FL;
                        int i;
                        l_226.x--;
                        l_224 &= ((((safe_div_func_int64_t_s_s(p_46, (safe_add_func_int64_t_s_s((p_46 , (safe_div_func_int32_t_s_s((l_237 ^= (GROUP_DIVERGE(1, 1) > (p_560->g_140.x && (safe_lshift_func_uint16_t_u_s(GROUP_DIVERGE(2, 1), 2))))), (safe_lshift_func_uint8_t_u_s((safe_rshift_func_uint8_t_u_s((safe_sub_func_uint8_t_u_u((safe_mod_func_int32_t_s_s(((((((l_225 , &p_560->g_82) != &p_560->g_82) , FAKE_DIVERGE(p_560->group_2_offset, get_group_id(2), 10)) | 0x1416L) , (((p_560->g_175[6] & (safe_sub_func_uint16_t_u_u((l_248 , p_46), p_46))) > p_47) , l_249[0][4])) == &p_560->g_158), l_250)), p_560->g_113.s2)), 2)), l_212.y))))), p_560->g_203.x)))) <= l_251) , &l_161) == l_252[0][3][2]);
                    }
                    else
                    { /* block id: 57 */
                        int8_t l_265 = 0x5BL;
                        int8_t l_266 = (-8L);
                        int32_t **l_267 = &l_176[0][5];
                        p_560->g_140.x = (0x5450EA62709E712BL || (safe_lshift_func_uint8_t_u_u(((((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 16))(p_560->g_255.s0644706514434745)).sa0, ((VECTOR(uint8_t, 16))(sub_sat(((VECTOR(uint8_t, 4))((~((VECTOR(uint8_t, 16))(l_256.s5237324540506565)).s3133))).yzwyyyyyzyxwxyyz, ((VECTOR(uint8_t, 4))(((safe_mul_func_uint16_t_u_u((safe_sub_func_uint8_t_u_u((safe_sub_func_int8_t_s_s(l_199.y, ((safe_mod_func_int64_t_s_s(1L, ((((*l_193) = p_560->g_255.s5) <= ((((((l_265 , &l_223) == &l_225) == p_44) < l_194.z) & 0UL) < l_266)) & 0xB54FL))) != p_560->g_213.y))), p_560->g_125[0].f0)), l_223)) & 65535UL), ((VECTOR(uint8_t, 2))(0x83L)), 0x6EL)).xxyzyzzyxyzywyyw))).se4, ((VECTOR(uint8_t, 2))(0x4AL))))).even | (-1L)) == p_560->g_140.y), p_560->g_82)));
                        p_560->g_119 = ((((*l_267) = (void*)0) == ((l_268[7][5][1] , ((void*)0 == &p_560->g_158)) , ((+(p_45 | l_269)) , ((safe_mul_func_int16_t_s_s((((l_277 = (~(safe_div_func_uint32_t_u_u(0x37015840L, (((*l_193) |= ((((p_560->g_276 = (((((VECTOR(int64_t, 8))(l_274.s73342160)).s7 == ((~((VECTOR(uint64_t, 16))(safe_clamp_func(VECTOR(uint64_t, 16),uint64_t,((VECTOR(uint64_t, 16))(l_275.se27e4d43c1946b90)), (uint64_t)p_560->g_31, (uint64_t)l_202.z))).s5) | 0UL)) < p_47) <= l_210.x)) && 65528UL) , l_223) || 0x78L)) && 0x74A38822L))))) > p_46) == 1L), p_46)) , (void*)0)))) <= p_47);
                        if (p_47)
                            break;
                        (*l_267) = &l_224;
                    }
                    (*l_278) = &p_560->g_125[3];
                    l_177[7][3] = &p_560->g_119;
                }
                p_560->g_82 &= (-9L);
                return l_199.y;
            }
            for (l_224 = 0; (l_224 > (-6)); --l_224)
            { /* block id: 76 */
                uint32_t l_282 = 0x4D38C07BL;
                --l_282;
            }
            for (l_225 = 0; (l_225 < 18); l_225++)
            { /* block id: 81 */
                int32_t **l_287 = &l_177[2][7];
                uint64_t *l_289 = (void*)0;
                uint64_t *l_290[3];
                VECTOR(int8_t, 16) l_302 = (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 1L), 1L), 1L, 0L, 1L, (VECTOR(int8_t, 2))(0L, 1L), (VECTOR(int8_t, 2))(0L, 1L), 0L, 1L, 0L, 1L);
                struct S0 l_303 = {5UL};
                VECTOR(int8_t, 4) l_304 = (VECTOR(int8_t, 4))(0x67L, (VECTOR(int8_t, 2))(0x67L, 0L), 0L);
                int i;
                for (i = 0; i < 3; i++)
                    l_290[i] = (void*)0;
                (*l_287) = &p_560->g_119;
                if (((((VECTOR(int16_t, 2))(safe_clamp_func(VECTOR(int16_t, 2),VECTOR(int16_t, 2),((VECTOR(int16_t, 4))((((VECTOR(int16_t, 16))(rotate(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 16))(clz(((VECTOR(int16_t, 4))(p_560->g_288.s1353)).zxyzzwwwzywxzwww))).s0556 && ((VECTOR(int16_t, 8))((((--p_560->g_203.x) | (safe_lshift_func_uint16_t_u_s(p_47, ((((&l_170 == ((l_295 , (!((safe_lshift_func_int16_t_s_s(p_560->g_117, 14)) || ((VECTOR(uint16_t, 16))(l_298.yyywxwxzxyxwxzww)).s1))) , l_299)) < l_300) ^ p_560->g_82) < (p_45 & (l_301 != &p_560->g_169[0][2][0])))))) | p_47), ((VECTOR(int16_t, 2))((-7L))), 0x6F9BL, p_560->g_276, 4L, 6L, (-1L))).hi))).ywzxwywxwywzwzxw, ((VECTOR(int16_t, 16))(8L))))).s0cb6 && ((VECTOR(int16_t, 4))((-1L)))))).even, ((VECTOR(int16_t, 2))(0x637EL)), ((VECTOR(int16_t, 2))((-8L)))))).even == p_44) < l_225))
                { /* block id: 84 */
                    int32_t *l_313 = &l_170;
                    int16_t *l_314 = (void*)0;
                    int16_t *l_315 = (void*)0;
                    int16_t *l_316[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_316[i] = (void*)0;
                    p_560->g_82 ^= (((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 2))(l_302.sb9)).yyxxxyyx, ((VECTOR(int8_t, 8))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 8),((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))((&l_277 == ((l_303 = l_178) , &p_560->g_82)), ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))((-4L), ((VECTOR(int8_t, 8))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 8),((VECTOR(int8_t, 8))(max(((VECTOR(int8_t, 8))(0L, ((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))(safe_clamp_func(VECTOR(int8_t, 16),int8_t,((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(l_304.xy)), 4L, 0x54L)), 0x57L, p_45, 0x2EL, 0L)).s3114612450671235, (int8_t)p_45, (int8_t)(p_46 != (safe_unary_minus_func_int64_t_s((safe_rshift_func_int16_t_s_s(((*l_313) = (p_560->g_140.y | (!(safe_sub_func_int32_t_s_s((((*l_301) = l_166) == ((+((VECTOR(int64_t, 2))(add_sat(((VECTOR(int64_t, 16))(0x315A7122BF51D618L, (safe_mod_func_uint8_t_u_u((((p_560->g_312 = (*l_287)) != l_313) ^ 0x17BAL), p_47)), p_560->g_31, (*l_313), p_560->g_99.x, 0L, ((VECTOR(int64_t, 8))(1L)), 1L, 0x515372422E4F0868L)).sae, ((VECTOR(int64_t, 2))(0x0FFCF0A8FC1D73C0L))))).hi) , (void*)0)), p_45))))), 13)))))))).sed ^ ((VECTOR(int8_t, 2))((-3L)))))).xxyx && ((VECTOR(int8_t, 4))(0x1FL))))), ((VECTOR(int8_t, 2))(0x6CL)), (-6L), (-7L), ((VECTOR(int8_t, 4))((-5L))), (-1L), 0x67L, (-1L), 0x1CL)).s03, ((VECTOR(int8_t, 2))(2L))))), (*l_313), p_44, 1L, 0x3CL, 0x2AL)), ((VECTOR(int8_t, 8))(1L))))), ((VECTOR(int8_t, 8))(4L)), ((VECTOR(int8_t, 8))(0x07L))))), (-1L), ((VECTOR(int8_t, 4))(0x7AL)), 1L, 1L)).s4c | ((VECTOR(int8_t, 2))((-10L)))))), ((VECTOR(int8_t, 2))(9L)), 0x5AL, ((VECTOR(int8_t, 2))(6L)), 1L, 1L, l_317, p_44, 0x05L, 0x1DL, 0x3AL, 1L)).sd6 > ((VECTOR(int8_t, 2))(0x3FL))))).xyxyyyyx, ((VECTOR(int8_t, 8))((-1L))), ((VECTOR(int8_t, 8))(0x57L)))))))).s1 ^ p_560->g_125[0].f0);
                }
                else
                { /* block id: 90 */
                    return p_560->g_117;
                }
                return p_47;
            }
        }
        return p_560->g_83.w;
    }
    else
    { /* block id: 97 */
        int32_t **l_325 = &l_176[0][1];
        struct S0 **l_331 = &p_560->g_169[0][4][2];
        VECTOR(uint32_t, 8) l_336 = (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 4294967295UL), 4294967295UL), 4294967295UL, 1UL, 4294967295UL);
        VECTOR(int32_t, 2) l_345 = (VECTOR(int32_t, 2))(0x7471A302L, 0x0F150C45L);
        VECTOR(int32_t, 2) l_346 = (VECTOR(int32_t, 2))(0x25969EDBL, 0x069A8480L);
        int64_t l_350 = (-1L);
        int i;
        for (p_560->g_117 = 0; (p_560->g_117 <= 30); p_560->g_117 = safe_add_func_uint8_t_u_u(p_560->g_117, 1))
        { /* block id: 100 */
            for (p_560->g_133 = 0; (p_560->g_133 < 45); ++p_560->g_133)
            { /* block id: 103 */
                int16_t *l_323 = (void*)0;
                int16_t **l_322 = &l_323;
                int32_t **l_324 = &l_176[0][5];
                l_322 = (void*)0;
                (*l_324) = &p_560->g_82;
            }
        }
        (*l_325) = &p_560->g_119;
        for (p_45 = 0; (p_45 >= (-1)); --p_45)
        { /* block id: 111 */
            struct S0 **l_330 = &p_560->g_169[0][2][0];
            VECTOR(uint32_t, 4) l_335 = (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0UL), 0UL);
            int16_t *l_347 = (void*)0;
            uint32_t *l_351[8][4] = {{(void*)0,(void*)0,(void*)0,&p_560->g_175[1]},{(void*)0,(void*)0,(void*)0,&p_560->g_175[1]},{(void*)0,(void*)0,(void*)0,&p_560->g_175[1]},{(void*)0,(void*)0,(void*)0,&p_560->g_175[1]},{(void*)0,(void*)0,(void*)0,&p_560->g_175[1]},{(void*)0,(void*)0,(void*)0,&p_560->g_175[1]},{(void*)0,(void*)0,(void*)0,&p_560->g_175[1]},{(void*)0,(void*)0,(void*)0,&p_560->g_175[1]}};
            int i, j;
            (*p_560->g_312) ^= (+(safe_mul_func_int8_t_s_s(p_560->g_99.x, (((VECTOR(uint16_t, 2))(abs_diff(((VECTOR(int16_t, 8))(mul_hi(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0L, (-5L))), 1L, 0x4808L)).zxzyxyzz, ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))((((l_330 = &p_560->g_169[1][3][1]) != l_331) == (p_560->g_83.w != ((p_560->g_352[1][1][0] ^= ((VECTOR(uint32_t, 2))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 2),((VECTOR(uint32_t, 16))(rotate(((VECTOR(uint32_t, 16))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 16),((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 4))(l_334.xyyy)).wyxwwzyw + ((VECTOR(uint32_t, 2))(l_335.xw)).yxyxyyxx))).s3134223712340360, ((VECTOR(uint32_t, 2))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 2),((VECTOR(uint32_t, 16))(l_336.s7234073651327702)).s7f, ((VECTOR(uint32_t, 2))(0x7F32D723L, 0x8D19CA9CL))))).yyxyyxyxyyxxxyyx, ((VECTOR(uint32_t, 4))(clz(((VECTOR(uint32_t, 4))((safe_mul_func_uint8_t_u_u((safe_mod_func_int8_t_s_s((((safe_lshift_func_uint16_t_u_u(((safe_add_func_uint8_t_u_u((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))(l_345.yxyyyxyy)).hi & ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))(l_346.xyxxxyyxxyxyxxyy)).odd && ((VECTOR(int32_t, 16))(0x77F8ABC9L, ((((((4294967295UL ^ ((p_560->g_175[5] <= ((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 8))(5L, (-2L), (p_560->g_288.s7 = p_46), p_560->g_203.x, p_560->g_255.s5, 0x0690L, 0x102CL, 0x4A4FL)) <= ((VECTOR(int16_t, 8))(1L))))).s43, ((VECTOR(int16_t, 2))(8L))))).lo) >= p_44)) == p_46) ^ 0x366BE14C3B143DABL) , (void*)0) == p_560->g_348) , p_46), 0x12E287BDL, l_335.w, ((VECTOR(int32_t, 8))(0L)), 0x64D2EB63L, 0x3DF5E649L, 0L, 7L)).hi))).even))).w <= (-7L)), p_44)) < p_44), l_335.z)) , l_335.w) , 0L), l_350)), p_46)), ((VECTOR(uint32_t, 2))(0UL)), 4294967295UL))))).wzxxzxwyxyzwwzxz))), ((VECTOR(uint32_t, 16))(0x087413D8L))))).sc7, ((VECTOR(uint32_t, 2))(0x3BD81846L)), ((VECTOR(uint32_t, 2))(0UL))))).hi) >= p_44))), p_560->g_58.s3, ((VECTOR(int16_t, 8))(1L)), ((VECTOR(int16_t, 2))(0x1CAFL)), 0x28D3L, 0L, 1L, 0x7579L)).hi <= ((VECTOR(int16_t, 8))(3L)))))))).s53, ((VECTOR(int16_t, 2))(0x4910L))))).odd < p_46))));
            (*l_325) = l_351[2][3];
            return p_560->g_213.y;
        }
    }
    p_560->g_312 = &l_277;
    for (p_560->g_117 = 8; (p_560->g_117 >= 40); p_560->g_117 = safe_add_func_uint16_t_u_u(p_560->g_117, 4))
    { /* block id: 123 */
        int16_t l_355 = 5L;
        int32_t l_356 = 0x4CEDF18AL;
        int32_t l_357 = 0x6E0FA0BEL;
        int32_t l_358 = 6L;
        int32_t l_359 = (-1L);
        int32_t l_360 = 0x1A6E7CCFL;
        int32_t l_361[8] = {8L,8L,8L,8L,8L,8L,8L,8L};
        int32_t l_362[4];
        uint8_t l_363 = 0xE1L;
        uint32_t l_380 = 0x778EB83AL;
        int i;
        for (i = 0; i < 4; i++)
            l_362[i] = 1L;
        ++l_363;
        for (p_560->g_276 = 0; (p_560->g_276 < (-27)); --p_560->g_276)
        { /* block id: 127 */
            uint64_t *l_377 = (void*)0;
            uint64_t *l_378 = (void*)0;
            uint64_t *l_379[2][5];
            int i, j;
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 5; j++)
                    l_379[i][j] = (void*)0;
            }
            l_356 |= (safe_div_func_int32_t_s_s(((p_560->g_113.s2 && l_363) , ((p_560->g_276 <= 7UL) , (*p_560->g_312))), ((((safe_mul_func_uint16_t_u_u(((p_560->g_203.x &= (safe_div_func_int32_t_s_s(((l_359 , p_560->g_83.z) , ((p_45 = ((VECTOR(int8_t, 2))((-5L), 1L)).odd) <= (safe_mod_func_int8_t_s_s((safe_unary_minus_func_uint32_t_u((((void*)0 == &p_560->g_158) <= l_357))), p_560->g_175[5])))), 1UL))) > p_560->g_99.y), p_560->g_255.s4)) , (void*)0) == (void*)0) | FAKE_DIVERGE(p_560->local_2_offset, get_local_id(2), 10))));
        }
        if (l_380)
            continue;
    }
    return p_560->g_255.s0;
}


/* ------------------------------------------ */
/* 
 * reads : p_560->g_31 p_560->g_133 p_560->g_119 p_560->g_140 p_560->g_82 p_560->g_113 p_560->g_158 p_560->g_125
 * writes: p_560->g_125 p_560->g_119 p_560->g_82
 */
int16_t  func_48(uint32_t  p_49, struct S1 * p_560)
{ /* block id: 9 */
    VECTOR(int32_t, 2) l_126 = (VECTOR(int32_t, 2))(0x491B29F5L, 0x7410D84AL);
    struct S0 *l_134 = &p_560->g_125[0];
    VECTOR(int32_t, 2) l_141 = (VECTOR(int32_t, 2))(0L, 0x54240B61L);
    int i;
    if (p_560->g_31)
    { /* block id: 10 */
        int64_t l_137 = 0x00262EE7B9A5162BL;
        int32_t l_152 = 0x783D26D1L;
        for (p_49 = 2; (p_49 == 41); p_49 = safe_add_func_int8_t_s_s(p_49, 8))
        { /* block id: 13 */
            struct S0 l_122[10] = {{0xF2EE5210L},{0x219E070DL},{0xB654FA89L},{0x219E070DL},{0xF2EE5210L},{0xF2EE5210L},{0x219E070DL},{0xB654FA89L},{0x219E070DL},{0xF2EE5210L}};
            struct S0 *l_123 = (void*)0;
            struct S0 *l_124[7] = {&l_122[5],&l_122[5],&l_122[5],&l_122[5],&l_122[5],&l_122[5],&l_122[5]};
            int32_t l_144 = 0x629BDB73L;
            int32_t l_145 = 0x28D446D2L;
            int32_t l_146 = 0x1D5B22E3L;
            int32_t l_154 = (-2L);
            int i;
            p_560->g_125[0] = l_122[5];
            if (((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 2))(l_126.yy)), (int32_t)(safe_mod_func_uint32_t_u_u((((safe_mod_func_int64_t_s_s(p_49, l_126.x)) , (safe_rshift_func_uint8_t_u_u(p_560->g_133, FAKE_DIVERGE(p_560->group_1_offset, get_group_id(1), 10)))) == ((l_134 == (void*)0) >= ((safe_div_func_uint16_t_u_u((l_126.y <= 0UL), p_49)) , (((p_49 != 5UL) != p_49) ^ l_137)))), 0x3B8C42DAL))))).xxxyxxyxyxxyxyyx, ((VECTOR(int32_t, 16))(2L)), ((VECTOR(int32_t, 16))(0x75878EC1L))))).s1)
            { /* block id: 15 */
                uint64_t l_147 = 0UL;
                int32_t l_150 = 0x197A29FEL;
                int32_t l_151 = (-1L);
                int32_t l_153[2];
                uint16_t l_155[8] = {0x2528L,65535UL,0x2528L,0x2528L,65535UL,0x2528L,0x2528L,65535UL};
                int i;
                for (i = 0; i < 2; i++)
                    l_153[i] = 0x787CEB11L;
                for (p_560->g_119 = 8; (p_560->g_119 != (-7)); p_560->g_119--)
                { /* block id: 18 */
                    int32_t *l_142 = &p_560->g_82;
                    int32_t *l_143[4];
                    int i;
                    for (i = 0; i < 4; i++)
                        l_143[i] = (void*)0;
                    (*l_142) ^= ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 2))((!((VECTOR(int32_t, 16))(p_560->g_140.yyyyxxxxyxyxxyyy)).sf8))).yyxxxxyy && ((VECTOR(int32_t, 4))(l_141.yxyx)).wwxwyxwx))).s0;
                    --l_147;
                    ++l_155[7];
                    if (p_560->g_113.s2)
                        break;
                }
                if (l_152)
                    break;
            }
            else
            { /* block id: 25 */
                if (p_49)
                    break;
            }
            return l_126.y;
        }
    }
    else
    { /* block id: 30 */
        int32_t *l_159 = (void*)0;
        int32_t *l_160 = &p_560->g_82;
        (*l_160) |= (p_49 >= p_560->g_158);
        (*l_134) = (*l_134);
    }
    return p_560->g_125[0].f0;
}


/* ------------------------------------------ */
/* 
 * reads : p_560->g_58 p_560->g_83 p_560->g_99 p_560->g_113 p_560->g_117
 * writes: p_560->g_82 p_560->g_119
 */
uint32_t  func_50(int32_t  p_51, struct S1 * p_560)
{ /* block id: 5 */
    VECTOR(uint16_t, 16) l_81 = (VECTOR(uint16_t, 16))(0xCD19L, (VECTOR(uint16_t, 4))(0xCD19L, (VECTOR(uint16_t, 2))(0xCD19L, 0x8E63L), 0x8E63L), 0x8E63L, 0xCD19L, 0x8E63L, (VECTOR(uint16_t, 2))(0xCD19L, 0x8E63L), (VECTOR(uint16_t, 2))(0xCD19L, 0x8E63L), 0xCD19L, 0x8E63L, 0xCD19L, 0x8E63L);
    VECTOR(uint16_t, 2) l_88 = (VECTOR(uint16_t, 2))(0x2DDFL, 1UL);
    VECTOR(uint16_t, 8) l_97 = (VECTOR(uint16_t, 8))(0x8D8AL, (VECTOR(uint16_t, 4))(0x8D8AL, (VECTOR(uint16_t, 2))(0x8D8AL, 65535UL), 65535UL), 65535UL, 0x8D8AL, 65535UL);
    VECTOR(uint16_t, 2) l_98 = (VECTOR(uint16_t, 2))(0UL, 1UL);
    VECTOR(uint16_t, 4) l_108 = (VECTOR(uint16_t, 4))(3UL, (VECTOR(uint16_t, 2))(3UL, 0x4E1BL), 0x4E1BL);
    VECTOR(uint16_t, 4) l_109 = (VECTOR(uint16_t, 4))(65529UL, (VECTOR(uint16_t, 2))(65529UL, 65531UL), 65531UL);
    VECTOR(uint16_t, 2) l_112 = (VECTOR(uint16_t, 2))(65535UL, 65535UL);
    VECTOR(uint16_t, 4) l_114 = (VECTOR(uint16_t, 4))(0xDA7DL, (VECTOR(uint16_t, 2))(0xDA7DL, 0x0300L), 0x0300L);
    int32_t *l_118[3][6];
    int i, j;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 6; j++)
            l_118[i][j] = &p_560->g_119;
    }
    p_560->g_119 = (safe_sub_func_uint16_t_u_u(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(l_81.sfeea102a)), (p_560->g_82 = p_560->g_58.s1), 0x43E1L, 9UL, ((VECTOR(uint16_t, 4))(p_560->g_83.yxzx)), 0xC1A6L)).sfe16 | ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))(l_88.xxyxyxyxyyxxyxyy)).s50 + ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))(65535UL, l_81.s7, ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 8))(6UL, ((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 4))(add_sat(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 2))(l_97.s37)).xxxyyxyyyyxxxxxy + ((VECTOR(uint16_t, 2))(l_98.xx)).xyxxyyyxxyyxyxyx))).scc + ((VECTOR(uint16_t, 4))(abs(((VECTOR(uint16_t, 16))(p_560->g_99.xyxyyxxyyyxxxyyy)).s01f6))).even))).yyyx, ((VECTOR(uint16_t, 4))(0xD02AL, 0x03E5L, 0x5305L, 2UL))))).hi, ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))(0x832FL, 0x0066L)) >> ((VECTOR(uint16_t, 2))(16))))) + ((VECTOR(uint16_t, 8))(((safe_lshift_func_uint8_t_u_u((8UL >= 0UL), 1)) != 0x1C77DD35L), ((VECTOR(uint16_t, 8))(max(((VECTOR(uint16_t, 4))(l_108.zzwx)).zzwzwywz, ((VECTOR(uint16_t, 4))(l_109.zwxy)).yyzxwywx))).s7, ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))(clz(((VECTOR(uint16_t, 8))(clz(((VECTOR(uint16_t, 16))(l_112.yyxxyyyxyxxyyyyy)).even))).s00))).yyxx + ((VECTOR(uint16_t, 16))(min(((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 4))(clz(((VECTOR(uint16_t, 2))(p_560->g_113.s00)).xyyx))).xzxzxwyz & ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(l_114.zzyx)), 0xD932L, (safe_lshift_func_uint8_t_u_s(((l_109.x >= 0x1586B660488F66F9L) | p_560->g_117), 0)), GROUP_DIVERGE(2, 1), ((VECTOR(uint16_t, 8))(0UL)), 0UL)).hi))).s7255615077353420, ((VECTOR(uint16_t, 16))(0xEEC1L))))).s2bce))), 0UL, 0x86AFL)).s60))).yyyx + ((VECTOR(uint16_t, 4))(0x2579L))))).hi, ((VECTOR(uint16_t, 2))(3UL))))), FAKE_DIVERGE(p_560->local_0_offset, get_local_id(0), 10), 65528UL, 1UL, 0x9821L, 65528UL)) - ((VECTOR(uint16_t, 8))(0UL))))), ((VECTOR(uint16_t, 4))(0xBEF9L)), 5UL, 1UL)).s65 * ((VECTOR(uint16_t, 2))(65535UL)))))))) >> ((VECTOR(uint16_t, 2))(16))))).yyyx))).z, 6UL));
    return p_51;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_561;
    struct S1* p_560 = &c_561;
    struct S1 c_562 = {
        (VECTOR(uint32_t, 2))(0x809D0107L, 1UL), // p_560->g_13
        (-1L), // p_560->g_31
        (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x4BL), 0x4BL), 0x4BL, 1L, 0x4BL), // p_560->g_58
        0x7C201266L, // p_560->g_82
        (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 65534UL), 65534UL), // p_560->g_83
        (VECTOR(uint16_t, 2))(65535UL, 65532UL), // p_560->g_99
        (VECTOR(uint16_t, 8))(65530UL, (VECTOR(uint16_t, 4))(65530UL, (VECTOR(uint16_t, 2))(65530UL, 1UL), 1UL), 1UL, 65530UL, 1UL), // p_560->g_113
        4294967294UL, // p_560->g_117
        (-4L), // p_560->g_119
        {{0x46C7292AL},{0x3AFFD86CL},{0x46C7292AL},{0x46C7292AL},{0x3AFFD86CL},{0x46C7292AL},{0x46C7292AL},{0x3AFFD86CL}}, // p_560->g_125
        255UL, // p_560->g_133
        (VECTOR(int32_t, 2))((-10L), 1L), // p_560->g_140
        5L, // p_560->g_158
        {{{&p_560->g_125[0],&p_560->g_125[6],&p_560->g_125[1],&p_560->g_125[0],(void*)0,&p_560->g_125[0],&p_560->g_125[1],&p_560->g_125[6]},{&p_560->g_125[0],&p_560->g_125[6],&p_560->g_125[1],&p_560->g_125[0],(void*)0,&p_560->g_125[0],&p_560->g_125[1],&p_560->g_125[6]},{&p_560->g_125[0],&p_560->g_125[6],&p_560->g_125[1],&p_560->g_125[0],(void*)0,&p_560->g_125[0],&p_560->g_125[1],&p_560->g_125[6]},{&p_560->g_125[0],&p_560->g_125[6],&p_560->g_125[1],&p_560->g_125[0],(void*)0,&p_560->g_125[0],&p_560->g_125[1],&p_560->g_125[6]},{&p_560->g_125[0],&p_560->g_125[6],&p_560->g_125[1],&p_560->g_125[0],(void*)0,&p_560->g_125[0],&p_560->g_125[1],&p_560->g_125[6]}},{{&p_560->g_125[0],&p_560->g_125[6],&p_560->g_125[1],&p_560->g_125[0],(void*)0,&p_560->g_125[0],&p_560->g_125[1],&p_560->g_125[6]},{&p_560->g_125[0],&p_560->g_125[6],&p_560->g_125[1],&p_560->g_125[0],(void*)0,&p_560->g_125[0],&p_560->g_125[1],&p_560->g_125[6]},{&p_560->g_125[0],&p_560->g_125[6],&p_560->g_125[1],&p_560->g_125[0],(void*)0,&p_560->g_125[0],&p_560->g_125[1],&p_560->g_125[6]},{&p_560->g_125[0],&p_560->g_125[6],&p_560->g_125[1],&p_560->g_125[0],(void*)0,&p_560->g_125[0],&p_560->g_125[1],&p_560->g_125[6]},{&p_560->g_125[0],&p_560->g_125[6],&p_560->g_125[1],&p_560->g_125[0],(void*)0,&p_560->g_125[0],&p_560->g_125[1],&p_560->g_125[6]}}}, // p_560->g_169
        (void*)0, // p_560->g_173
        {0x956EE47DL,0x956EE47DL,0x956EE47DL,0x956EE47DL,0x956EE47DL,0x956EE47DL,0x956EE47DL,0x956EE47DL,0x956EE47DL}, // p_560->g_175
        (VECTOR(uint64_t, 2))(18446744073709551607UL, 0x6F8D0BCCD78FEB26L), // p_560->g_203
        (VECTOR(uint64_t, 2))(0xA31A9396CDAD9580L, 0x98E25F7C6AF0C3EEL), // p_560->g_213
        (VECTOR(uint8_t, 8))(251UL, (VECTOR(uint8_t, 4))(251UL, (VECTOR(uint8_t, 2))(251UL, 0x00L), 0x00L), 0x00L, 251UL, 0x00L), // p_560->g_255
        0x3B143979L, // p_560->g_276
        (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x5253L), 0x5253L), 0x5253L, 1L, 0x5253L), // p_560->g_288
        &p_560->g_82, // p_560->g_312
        (VECTOR(int16_t, 2))(0x2584L, 0x6802L), // p_560->g_349
        (void*)0, // p_560->g_348
        {{{3UL},{3UL},{3UL},{3UL},{3UL},{3UL},{3UL},{3UL},{3UL}},{{3UL},{3UL},{3UL},{3UL},{3UL},{3UL},{3UL},{3UL},{3UL}},{{3UL},{3UL},{3UL},{3UL},{3UL},{3UL},{3UL},{3UL},{3UL}}}, // p_560->g_352
        1L, // p_560->g_433
        (void*)0, // p_560->g_441
        (void*)0, // p_560->g_501
        &p_560->g_501, // p_560->g_500
        &p_560->g_82, // p_560->g_523
        {&p_560->g_125[0],&p_560->g_125[0],&p_560->g_125[0],&p_560->g_125[0],&p_560->g_125[0],&p_560->g_125[0],&p_560->g_125[0],&p_560->g_125[0],&p_560->g_125[0],&p_560->g_125[0]}, // p_560->g_528
        {&p_560->g_125[0],&p_560->g_125[0],&p_560->g_125[0],&p_560->g_125[0]}, // p_560->g_529
        253UL, // p_560->g_546
        &p_560->g_312, // p_560->g_552
        {0UL}, // p_560->g_557
        &p_560->g_557, // p_560->g_556
        sequence_input[get_global_id(0)], // p_560->global_0_offset
        sequence_input[get_global_id(1)], // p_560->global_1_offset
        sequence_input[get_global_id(2)], // p_560->global_2_offset
        sequence_input[get_local_id(0)], // p_560->local_0_offset
        sequence_input[get_local_id(1)], // p_560->local_1_offset
        sequence_input[get_local_id(2)], // p_560->local_2_offset
        sequence_input[get_group_id(0)], // p_560->group_0_offset
        sequence_input[get_group_id(1)], // p_560->group_1_offset
        sequence_input[get_group_id(2)], // p_560->group_2_offset
    };
    c_561 = c_562;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_560);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_560->g_13.x, "p_560->g_13.x", print_hash_value);
    transparent_crc(p_560->g_13.y, "p_560->g_13.y", print_hash_value);
    transparent_crc(p_560->g_31, "p_560->g_31", print_hash_value);
    transparent_crc(p_560->g_58.s0, "p_560->g_58.s0", print_hash_value);
    transparent_crc(p_560->g_58.s1, "p_560->g_58.s1", print_hash_value);
    transparent_crc(p_560->g_58.s2, "p_560->g_58.s2", print_hash_value);
    transparent_crc(p_560->g_58.s3, "p_560->g_58.s3", print_hash_value);
    transparent_crc(p_560->g_58.s4, "p_560->g_58.s4", print_hash_value);
    transparent_crc(p_560->g_58.s5, "p_560->g_58.s5", print_hash_value);
    transparent_crc(p_560->g_58.s6, "p_560->g_58.s6", print_hash_value);
    transparent_crc(p_560->g_58.s7, "p_560->g_58.s7", print_hash_value);
    transparent_crc(p_560->g_82, "p_560->g_82", print_hash_value);
    transparent_crc(p_560->g_83.x, "p_560->g_83.x", print_hash_value);
    transparent_crc(p_560->g_83.y, "p_560->g_83.y", print_hash_value);
    transparent_crc(p_560->g_83.z, "p_560->g_83.z", print_hash_value);
    transparent_crc(p_560->g_83.w, "p_560->g_83.w", print_hash_value);
    transparent_crc(p_560->g_99.x, "p_560->g_99.x", print_hash_value);
    transparent_crc(p_560->g_99.y, "p_560->g_99.y", print_hash_value);
    transparent_crc(p_560->g_113.s0, "p_560->g_113.s0", print_hash_value);
    transparent_crc(p_560->g_113.s1, "p_560->g_113.s1", print_hash_value);
    transparent_crc(p_560->g_113.s2, "p_560->g_113.s2", print_hash_value);
    transparent_crc(p_560->g_113.s3, "p_560->g_113.s3", print_hash_value);
    transparent_crc(p_560->g_113.s4, "p_560->g_113.s4", print_hash_value);
    transparent_crc(p_560->g_113.s5, "p_560->g_113.s5", print_hash_value);
    transparent_crc(p_560->g_113.s6, "p_560->g_113.s6", print_hash_value);
    transparent_crc(p_560->g_113.s7, "p_560->g_113.s7", print_hash_value);
    transparent_crc(p_560->g_117, "p_560->g_117", print_hash_value);
    transparent_crc(p_560->g_119, "p_560->g_119", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_560->g_125[i].f0, "p_560->g_125[i].f0", print_hash_value);

    }
    transparent_crc(p_560->g_133, "p_560->g_133", print_hash_value);
    transparent_crc(p_560->g_140.x, "p_560->g_140.x", print_hash_value);
    transparent_crc(p_560->g_140.y, "p_560->g_140.y", print_hash_value);
    transparent_crc(p_560->g_158, "p_560->g_158", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_560->g_175[i], "p_560->g_175[i]", print_hash_value);

    }
    transparent_crc(p_560->g_203.x, "p_560->g_203.x", print_hash_value);
    transparent_crc(p_560->g_203.y, "p_560->g_203.y", print_hash_value);
    transparent_crc(p_560->g_213.x, "p_560->g_213.x", print_hash_value);
    transparent_crc(p_560->g_213.y, "p_560->g_213.y", print_hash_value);
    transparent_crc(p_560->g_255.s0, "p_560->g_255.s0", print_hash_value);
    transparent_crc(p_560->g_255.s1, "p_560->g_255.s1", print_hash_value);
    transparent_crc(p_560->g_255.s2, "p_560->g_255.s2", print_hash_value);
    transparent_crc(p_560->g_255.s3, "p_560->g_255.s3", print_hash_value);
    transparent_crc(p_560->g_255.s4, "p_560->g_255.s4", print_hash_value);
    transparent_crc(p_560->g_255.s5, "p_560->g_255.s5", print_hash_value);
    transparent_crc(p_560->g_255.s6, "p_560->g_255.s6", print_hash_value);
    transparent_crc(p_560->g_255.s7, "p_560->g_255.s7", print_hash_value);
    transparent_crc(p_560->g_276, "p_560->g_276", print_hash_value);
    transparent_crc(p_560->g_288.s0, "p_560->g_288.s0", print_hash_value);
    transparent_crc(p_560->g_288.s1, "p_560->g_288.s1", print_hash_value);
    transparent_crc(p_560->g_288.s2, "p_560->g_288.s2", print_hash_value);
    transparent_crc(p_560->g_288.s3, "p_560->g_288.s3", print_hash_value);
    transparent_crc(p_560->g_288.s4, "p_560->g_288.s4", print_hash_value);
    transparent_crc(p_560->g_288.s5, "p_560->g_288.s5", print_hash_value);
    transparent_crc(p_560->g_288.s6, "p_560->g_288.s6", print_hash_value);
    transparent_crc(p_560->g_288.s7, "p_560->g_288.s7", print_hash_value);
    transparent_crc(p_560->g_349.x, "p_560->g_349.x", print_hash_value);
    transparent_crc(p_560->g_349.y, "p_560->g_349.y", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_560->g_352[i][j][k], "p_560->g_352[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_560->g_433, "p_560->g_433", print_hash_value);
    transparent_crc(p_560->g_546, "p_560->g_546", print_hash_value);
    transparent_crc(p_560->g_557.f0, "p_560->g_557.f0", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
