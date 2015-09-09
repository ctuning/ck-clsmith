// ---fake_divergence -g 12,82,10 -l 12,1,2
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


// Seed: 74

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_3;
    uint16_t g_11;
    int32_t g_50[5][10];
    uint16_t g_87;
    int32_t g_92;
    int32_t g_112;
    volatile int32_t g_115;
    volatile uint8_t g_116;
    uint8_t g_122[6];
    uint16_t g_127;
    int8_t g_129[8][5];
    uint32_t g_131;
    uint8_t g_157[4][4][7];
    int8_t g_175;
    int64_t g_181[7][7];
    int64_t g_182;
    uint32_t g_183;
    uint32_t *g_189;
    uint64_t g_206;
    uint64_t *g_205[8];
    int16_t g_210[2];
    int8_t g_211[9];
    int32_t * volatile g_213;
    int32_t * volatile *g_212;
    volatile int16_t g_232;
    uint32_t g_233;
    int8_t g_280;
    volatile uint16_t g_371[4];
    int32_t *g_392;
    int32_t **g_391;
    volatile int8_t g_395;
    uint16_t g_441;
    int32_t *g_478[6][6][3];
    volatile uint16_t *g_516;
    volatile uint16_t **g_515;
    volatile uint32_t g_520;
    int64_t g_557;
    int16_t *g_576;
    int16_t *g_577;
    uint16_t *g_604[10][8][3];
    uint16_t **g_603;
    uint64_t g_649;
    uint64_t g_651;
    uint64_t g_652;
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
int64_t  func_1(struct S0 * p_661);
int32_t * func_20(int64_t  p_21, int32_t  p_22, int64_t  p_23, int32_t  p_24, struct S0 * p_661);
int32_t * func_25(int32_t  p_26, int32_t * p_27, int32_t * p_28, int32_t * p_29, struct S0 * p_661);
uint8_t  func_34(int32_t  p_35, int16_t  p_36, int32_t * p_37, int32_t * p_38, int32_t  p_39, struct S0 * p_661);
int64_t  func_41(uint64_t  p_42, uint64_t  p_43, struct S0 * p_661);
int32_t  func_72(uint64_t  p_73, int32_t * p_74, int32_t * p_75, uint64_t  p_76, int32_t  p_77, struct S0 * p_661);
int32_t * func_78(int32_t * p_79, int32_t  p_80, struct S0 * p_661);
int32_t * func_81(uint16_t  p_82, int32_t * p_83, struct S0 * p_661);
int8_t  func_97(int32_t * p_98, uint64_t  p_99, int64_t  p_100, uint16_t * p_101, struct S0 * p_661);
uint8_t  func_103(int64_t  p_104, uint16_t  p_105, int16_t  p_106, struct S0 * p_661);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_661->g_11 p_661->g_3 p_661->g_392 p_661->g_112 p_661->g_212 p_661->g_213 p_661->g_175 p_661->g_206 p_661->g_211 p_661->g_129 p_661->g_122 p_661->g_210 p_661->g_280 p_661->g_649 p_661->g_183 p_661->g_516 p_661->g_371 p_661->g_651 p_661->g_652 p_661->g_92 p_661->g_391 p_661->g_233 p_661->g_515
 * writes: p_661->g_11 p_661->g_3 p_661->g_92 p_661->g_112 p_661->g_213 p_661->g_189 p_661->g_211 p_661->g_280 p_661->g_649 p_661->g_210 p_661->g_651 p_661->g_122 p_661->g_233 p_661->g_392
 */
int64_t  func_1(struct S0 * p_661)
{ /* block id: 4 */
    int32_t *l_2 = &p_661->g_3;
    int32_t *l_4 = (void*)0;
    int32_t *l_5 = &p_661->g_3;
    int32_t *l_6 = &p_661->g_3;
    int32_t *l_7 = (void*)0;
    int32_t *l_8 = &p_661->g_3;
    int32_t l_9 = 0x22A149CEL;
    int32_t *l_10[5][6] = {{&l_9,&p_661->g_3,&p_661->g_3,&l_9,&l_9,&p_661->g_3},{&l_9,&p_661->g_3,&p_661->g_3,&l_9,&l_9,&p_661->g_3},{&l_9,&p_661->g_3,&p_661->g_3,&l_9,&l_9,&p_661->g_3},{&l_9,&p_661->g_3,&p_661->g_3,&l_9,&l_9,&p_661->g_3},{&l_9,&p_661->g_3,&p_661->g_3,&l_9,&l_9,&p_661->g_3}};
    int64_t l_44 = 0L;
    int16_t *l_575 = &p_661->g_210[1];
    uint32_t l_624 = 0x98EB11EDL;
    int i, j;
    ++p_661->g_11;
    for (p_661->g_3 = 23; (p_661->g_3 < 29); p_661->g_3 = safe_add_func_uint8_t_u_u(p_661->g_3, 6))
    { /* block id: 8 */
        uint16_t l_40[5][9][1] = {{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}}};
        int32_t *l_430 = &l_9;
        int16_t l_493 = (-1L);
        uint32_t l_594[7][8][2] = {{{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L}},{{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L}},{{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L}},{{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L}},{{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L}},{{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L}},{{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L},{0x933B7652L,0xF84E26E5L}}};
        int32_t l_617 = 0x3B130616L;
        int32_t l_618 = (-1L);
        uint16_t **l_644 = &p_661->g_604[8][7][0];
        int i, j, k;
        for (p_661->g_11 = (-14); (p_661->g_11 > 1); p_661->g_11++)
        { /* block id: 11 */
            int16_t *l_429 = &p_661->g_210[0];
            uint32_t *l_492 = &p_661->g_183;
            int32_t **l_533 = &l_7;
            uint16_t l_534 = 0x2B2FL;
            uint8_t l_573 = 0x29L;
            int16_t l_614 = (-10L);
            (1 + 1);
        }
        for (p_661->g_92 = (-12); (p_661->g_92 < 21); p_661->g_92 = safe_add_func_int8_t_s_s(p_661->g_92, 6))
        { /* block id: 323 */
            uint32_t l_619 = 4294967295UL;
            uint32_t **l_631 = &p_661->g_189;
            int8_t *l_643 = &p_661->g_211[2];
            int8_t *l_648[9][10][2] = {{{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]}},{{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]}},{{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]}},{{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]}},{{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]}},{{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]}},{{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]}},{{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]}},{{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]},{&p_661->g_129[3][1],&p_661->g_129[3][1]}}};
            uint64_t *l_650 = &p_661->g_651;
            int i, j, k;
            ++l_619;
            (*p_661->g_392) |= (safe_mul_func_int8_t_s_s((*l_430), 0x38L));
            (*p_661->g_212) = (*p_661->g_212);
            (*p_661->g_212) = func_20(((((*l_650) &= (l_624 == ((*l_575) = (safe_mod_func_int8_t_s_s((safe_add_func_uint8_t_u_u((safe_add_func_int8_t_s_s(l_619, p_661->g_175)), (((*l_631) = &p_661->g_183) == &p_661->g_131))), (safe_rshift_func_uint16_t_u_u((!(safe_lshift_func_uint16_t_u_u(((safe_mul_func_int8_t_s_s((p_661->g_649 ^= (p_661->g_280 &= (safe_lshift_func_uint8_t_u_s(p_661->g_206, (safe_unary_minus_func_uint64_t_u((safe_lshift_func_int16_t_s_u((((*l_643) ^= 0x64L) && ((((l_644 == ((safe_add_func_int64_t_s_s((((safe_unary_minus_func_int64_t_s(p_661->g_129[3][1])) > 0x5EA7A82BD8AA0021L) >= 0x0DL), p_661->g_122[0])) , &p_661->g_516)) > p_661->g_210[0]) ^ 0L) > (*l_430))), (*l_430))))))))), p_661->g_183)) && l_619), 11))), (*p_661->g_516)))))))) != 18446744073709551614UL) != p_661->g_652), p_661->g_92, p_661->g_175, (**p_661->g_391), p_661);
        }
        for (l_44 = 0; l_44 < 6; l_44 += 1)
        {
            p_661->g_122[l_44] = 1UL;
        }
        for (p_661->g_233 = (-24); (p_661->g_233 > 29); p_661->g_233 = safe_add_func_uint32_t_u_u(p_661->g_233, 2))
        { /* block id: 338 */
            int8_t *l_658 = (void*)0;
            int8_t *l_659 = &p_661->g_211[2];
            int32_t l_660 = 0x09D28613L;
            (*p_661->g_391) = &l_9;
            (*p_661->g_212) = ((*p_661->g_391) = &l_617);
            (**p_661->g_212) &= (((((void*)0 != (*p_661->g_515)) , 4294967291UL) >= (safe_rshift_func_uint8_t_u_s((safe_unary_minus_func_int8_t_s(((*l_659) = (-1L)))), l_660))) < (-5L));
            return (*l_5);
        }
    }
    return p_661->g_211[1];
}


/* ------------------------------------------ */
/* 
 * reads : p_661->g_112 p_661->g_391 p_661->g_392
 * writes:
 */
int32_t * func_20(int64_t  p_21, int32_t  p_22, int64_t  p_23, int32_t  p_24, struct S0 * p_661)
{ /* block id: 265 */
    int32_t l_535 = 0L;
    uint32_t l_540 = 0x51A63987L;
    int32_t ***l_541 = &p_661->g_391;
    p_24 = (+(((((l_535 == p_22) < 0L) & (safe_lshift_func_int8_t_s_u((safe_add_func_int32_t_s_s(l_540, (l_540 <= p_23))), 1))) == (p_21 >= ((l_541 == (void*)0) , 0x5095ECB763ED9C73L))) == p_661->g_112));
    p_24 = p_21;
    return (**l_541);
}


/* ------------------------------------------ */
/* 
 * reads : p_661->g_157 p_661->g_515 p_661->g_92 p_661->g_3 p_661->g_233 p_661->g_520 p_661->g_129 p_661->g_182 p_661->g_441 p_661->g_391 p_661->g_392 p_661->g_131
 * writes: p_661->g_122 p_661->g_129 p_661->g_92 p_661->g_233 p_661->g_520 p_661->g_441 p_661->g_211 p_661->g_131
 */
int32_t * func_25(int32_t  p_26, int32_t * p_27, int32_t * p_28, int32_t * p_29, struct S0 * p_661)
{ /* block id: 238 */
    uint32_t l_498 = 1UL;
    int32_t **l_501[7];
    uint8_t *l_512 = &p_661->g_122[3];
    int8_t *l_513 = &p_661->g_129[3][1];
    uint16_t **l_514[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t l_519[8][6] = {{(-1L),(-1L),(-1L),(-1L),0x2CC6B302L,(-1L)},{(-1L),(-1L),(-1L),(-1L),0x2CC6B302L,(-1L)},{(-1L),(-1L),(-1L),(-1L),0x2CC6B302L,(-1L)},{(-1L),(-1L),(-1L),(-1L),0x2CC6B302L,(-1L)},{(-1L),(-1L),(-1L),(-1L),0x2CC6B302L,(-1L)},{(-1L),(-1L),(-1L),(-1L),0x2CC6B302L,(-1L)},{(-1L),(-1L),(-1L),(-1L),0x2CC6B302L,(-1L)},{(-1L),(-1L),(-1L),(-1L),0x2CC6B302L,(-1L)}};
    int i, j;
    for (i = 0; i < 7; i++)
        l_501[i] = (void*)0;
    p_26 = (safe_rshift_func_uint16_t_u_u((((safe_sub_func_int16_t_s_s(l_498, ((safe_add_func_uint16_t_u_u((l_501[4] == &p_661->g_213), 1UL)) != (safe_lshift_func_uint8_t_u_u(p_26, ((((*p_29) = 0L) >= (((safe_mod_func_uint64_t_u_u((3L || 0x755ED2A72C2E80D8L), (safe_add_func_uint32_t_u_u((((*l_513) = ((safe_div_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u((GROUP_DIVERGE(0, 1) , ((*l_512) = (0xF001L <= (-10L)))), p_26)), FAKE_DIVERGE(p_661->group_1_offset, get_group_id(1), 10))) > p_661->g_157[2][2][0])) & 0x28L), p_26)))) , l_514[6]) != (void*)0)) , 0xAEL)))))) , (void*)0) == p_661->g_515), FAKE_DIVERGE(p_661->local_2_offset, get_local_id(2), 10)));
    for (p_661->g_92 = 0; (p_661->g_92 < 16); p_661->g_92++)
    { /* block id: 245 */
        uint16_t ***l_525 = &l_514[6];
        int32_t l_531 = (-1L);
        if ((*p_28))
            break;
        for (p_661->g_233 = 0; (p_661->g_233 <= 7); p_661->g_233 += 1)
        { /* block id: 249 */
            uint16_t ****l_526 = &l_525;
            int8_t *l_527 = &p_661->g_211[2];
            int32_t l_528 = 8L;
            uint32_t *l_529 = &p_661->g_131;
            uint32_t *l_530[2][4] = {{&p_661->g_183,&p_661->g_183,&p_661->g_183,&p_661->g_183},{&p_661->g_183,&p_661->g_183,&p_661->g_183,&p_661->g_183}};
            int32_t l_532[10] = {0x66F5D273L,0x2B1B3865L,0x66F5D273L,0x66F5D273L,0x2B1B3865L,0x66F5D273L,0x66F5D273L,0x2B1B3865L,0x66F5D273L,0x66F5D273L};
            int i, j;
            if (l_519[5][0])
                break;
            ++p_661->g_520;
            l_532[5] &= ((((safe_rshift_func_int16_t_s_s(p_26, 2)) < p_661->g_129[5][3]) ^ 0x04DDL) != (p_661->g_182 , (l_531 ^= ((*l_529) &= ((!((p_661->g_441 &= (p_26 >= 18446744073709551610UL)) , ((*l_527) = (((*l_526) = l_525) == &l_514[p_661->g_233])))) > (l_528 = (((*p_661->g_391) != &p_26) >= (-2L))))))));
            return (*p_661->g_391);
        }
        return (*p_661->g_391);
    }
    return (*p_661->g_391);
}


/* ------------------------------------------ */
/* 
 * reads : p_661->g_112 p_661->g_391 p_661->g_181 p_661->g_3 p_661->g_182 p_661->g_212 p_661->g_213 p_661->g_11 p_661->g_127 p_661->g_395 p_661->g_87 p_661->g_122
 * writes: p_661->g_112 p_661->g_392 p_661->g_441 p_661->g_182 p_661->g_213 p_661->g_127 p_661->g_131
 */
uint8_t  func_34(int32_t  p_35, int16_t  p_36, int32_t * p_37, int32_t * p_38, int32_t  p_39, struct S0 * p_661)
{ /* block id: 210 */
    uint64_t **l_439[7][1] = {{&p_661->g_205[3]},{&p_661->g_205[3]},{&p_661->g_205[3]},{&p_661->g_205[3]},{&p_661->g_205[3]},{&p_661->g_205[3]},{&p_661->g_205[3]}};
    int32_t l_440 = 0x6139EDFAL;
    uint16_t l_442 = 65527UL;
    uint64_t l_443[8][10] = {{1UL,0x3E098ACB851A4109L,0xFEF23A56367524BDL,0x2F20CABAD9D3F4BCL,0UL,0x9CD0517D568A7C93L,18446744073709551611UL,0xFEF23A56367524BDL,0x52E0C0317D57220AL,0xD62571E29F3CA17CL},{1UL,0x3E098ACB851A4109L,0xFEF23A56367524BDL,0x2F20CABAD9D3F4BCL,0UL,0x9CD0517D568A7C93L,18446744073709551611UL,0xFEF23A56367524BDL,0x52E0C0317D57220AL,0xD62571E29F3CA17CL},{1UL,0x3E098ACB851A4109L,0xFEF23A56367524BDL,0x2F20CABAD9D3F4BCL,0UL,0x9CD0517D568A7C93L,18446744073709551611UL,0xFEF23A56367524BDL,0x52E0C0317D57220AL,0xD62571E29F3CA17CL},{1UL,0x3E098ACB851A4109L,0xFEF23A56367524BDL,0x2F20CABAD9D3F4BCL,0UL,0x9CD0517D568A7C93L,18446744073709551611UL,0xFEF23A56367524BDL,0x52E0C0317D57220AL,0xD62571E29F3CA17CL},{1UL,0x3E098ACB851A4109L,0xFEF23A56367524BDL,0x2F20CABAD9D3F4BCL,0UL,0x9CD0517D568A7C93L,18446744073709551611UL,0xFEF23A56367524BDL,0x52E0C0317D57220AL,0xD62571E29F3CA17CL},{1UL,0x3E098ACB851A4109L,0xFEF23A56367524BDL,0x2F20CABAD9D3F4BCL,0UL,0x9CD0517D568A7C93L,18446744073709551611UL,0xFEF23A56367524BDL,0x52E0C0317D57220AL,0xD62571E29F3CA17CL},{1UL,0x3E098ACB851A4109L,0xFEF23A56367524BDL,0x2F20CABAD9D3F4BCL,0UL,0x9CD0517D568A7C93L,18446744073709551611UL,0xFEF23A56367524BDL,0x52E0C0317D57220AL,0xD62571E29F3CA17CL},{1UL,0x3E098ACB851A4109L,0xFEF23A56367524BDL,0x2F20CABAD9D3F4BCL,0UL,0x9CD0517D568A7C93L,18446744073709551611UL,0xFEF23A56367524BDL,0x52E0C0317D57220AL,0xD62571E29F3CA17CL}};
    int32_t l_444 = 0x28560B79L;
    int32_t l_445 = 0x2B176795L;
    int32_t **l_452 = &p_661->g_392;
    int32_t l_456 = 0x56603E84L;
    int32_t l_457 = 1L;
    int32_t l_459 = (-1L);
    int32_t l_460 = 0L;
    int32_t l_461[7] = {1L,1L,1L,1L,1L,1L,1L};
    int16_t l_462[3][7] = {{0x1B04L,(-9L),0x153AL,0x6584L,(-9L),0x6584L,0x153AL},{0x1B04L,(-9L),0x153AL,0x6584L,(-9L),0x6584L,0x153AL},{0x1B04L,(-9L),0x153AL,0x6584L,(-9L),0x6584L,0x153AL}};
    uint64_t l_464 = 0x998613F94971EFE9L;
    uint16_t **l_473 = (void*)0;
    uint16_t *l_480 = &p_661->g_127;
    uint32_t *l_489 = &p_661->g_131;
    int32_t l_490 = (-7L);
    uint16_t ***l_491 = &l_473;
    int i, j;
    for (p_661->g_112 = 0; (p_661->g_112 < (-5)); p_661->g_112--)
    { /* block id: 213 */
        int32_t *l_433 = (void*)0;
        (*p_661->g_391) = l_433;
    }
    l_445 = ((safe_rshift_func_int8_t_s_u(p_35, ((((p_36 || (safe_rshift_func_uint16_t_u_u(1UL, 1))) >= (l_444 &= (((*p_38) = (((safe_unary_minus_func_uint16_t_u((((void*)0 != l_439[0][0]) < 0UL))) > ((*p_38) ^ ((((p_661->g_441 = (l_440 = l_440)) , l_442) || p_661->g_181[1][0]) > p_39))) , (*p_37))) < l_443[0][5]))) , 65533UL) != 0x7DA7L))) <= 0xF3B6D627L);
lbl_479:
    for (p_661->g_182 = (-20); (p_661->g_182 != (-4)); p_661->g_182++)
    { /* block id: 223 */
        int16_t l_455 = 0x0F7BL;
        int32_t l_458 = 0x72D00F62L;
        int32_t l_463[4] = {0x7F0F091DL,0x7F0F091DL,0x7F0F091DL,0x7F0F091DL};
        int8_t *l_476[5];
        int64_t *l_477 = (void*)0;
        int i;
        for (i = 0; i < 5; i++)
            l_476[i] = &p_661->g_129[3][1];
        (*p_661->g_212) = (*p_661->g_212);
        if (l_464)
            continue;
        if (p_661->g_3)
            goto lbl_479;
    }
    (*p_38) = (((((((p_661->g_11 ^ (--(*l_480))) >= (((safe_mod_func_int64_t_s_s((4294967288UL && (((*l_491) = ((safe_rshift_func_uint8_t_u_s((l_490 = ((p_661->g_181[0][3] < ((safe_mod_func_int64_t_s_s(p_661->g_395, l_456)) || (((((*l_489) = ((p_661->g_87 >= (((p_35 , &l_442) != (((p_39 ^ l_443[0][5]) ^ l_443[7][0]) , &l_442)) || p_35)) && 0x10F6BF4AD7812ED5L)) == (*p_38)) , &l_442) != (void*)0))) != p_661->g_122[2])), 1)) , (void*)0)) == &l_480)), FAKE_DIVERGE(p_661->group_2_offset, get_group_id(2), 10))) && p_36) && l_464)) != p_39) < 0x454BL) ^ p_36) , (-1L)) != 0x349CE60CD585AF06L);
    return p_39;
}


/* ------------------------------------------ */
/* 
 * reads : p_661->g_50 p_661->g_87 p_661->g_3 p_661->g_92 p_661->g_116 p_661->g_112 p_661->g_131 p_661->g_122 p_661->g_11 p_661->g_129 p_661->g_115 p_661->g_157 p_661->g_175 p_661->g_181 p_661->g_182 p_661->g_211 p_661->g_212 p_661->g_206 p_661->g_213 p_661->g_233 p_661->g_210 p_661->g_232 p_661->g_183 p_661->g_280 p_661->g_391 p_661->g_392 p_661->g_395 p_661->g_127
 * writes: p_661->g_87 p_661->g_92 p_661->g_116 p_661->g_122 p_661->g_127 p_661->g_129 p_661->g_131 p_661->g_112 p_661->g_157 p_661->g_175 p_661->g_182 p_661->g_183 p_661->g_189 p_661->g_205 p_661->g_210 p_661->g_211 p_661->g_115 p_661->g_213 p_661->g_233 p_661->g_181 p_661->g_391 p_661->g_50 p_661->g_206
 */
int64_t  func_41(uint64_t  p_42, uint64_t  p_43, struct S0 * p_661)
{ /* block id: 12 */
    int32_t *l_49 = &p_661->g_50[0][4];
    int32_t *l_51 = &p_661->g_50[4][4];
    int32_t *l_52 = &p_661->g_50[0][4];
    int32_t *l_53 = &p_661->g_50[0][4];
    int32_t *l_54 = &p_661->g_50[0][4];
    int32_t *l_55[3][7] = {{(void*)0,&p_661->g_50[0][4],(void*)0,(void*)0,&p_661->g_50[0][4],(void*)0,(void*)0},{(void*)0,&p_661->g_50[0][4],(void*)0,(void*)0,&p_661->g_50[0][4],(void*)0,(void*)0},{(void*)0,&p_661->g_50[0][4],(void*)0,(void*)0,&p_661->g_50[0][4],(void*)0,(void*)0}};
    int64_t l_56[1][10][7] = {{{0x0828597010273394L,0L,0x18A7B986AF205A4AL,1L,0x18A7B986AF205A4AL,0L,0x0828597010273394L},{0x0828597010273394L,0L,0x18A7B986AF205A4AL,1L,0x18A7B986AF205A4AL,0L,0x0828597010273394L},{0x0828597010273394L,0L,0x18A7B986AF205A4AL,1L,0x18A7B986AF205A4AL,0L,0x0828597010273394L},{0x0828597010273394L,0L,0x18A7B986AF205A4AL,1L,0x18A7B986AF205A4AL,0L,0x0828597010273394L},{0x0828597010273394L,0L,0x18A7B986AF205A4AL,1L,0x18A7B986AF205A4AL,0L,0x0828597010273394L},{0x0828597010273394L,0L,0x18A7B986AF205A4AL,1L,0x18A7B986AF205A4AL,0L,0x0828597010273394L},{0x0828597010273394L,0L,0x18A7B986AF205A4AL,1L,0x18A7B986AF205A4AL,0L,0x0828597010273394L},{0x0828597010273394L,0L,0x18A7B986AF205A4AL,1L,0x18A7B986AF205A4AL,0L,0x0828597010273394L},{0x0828597010273394L,0L,0x18A7B986AF205A4AL,1L,0x18A7B986AF205A4AL,0L,0x0828597010273394L},{0x0828597010273394L,0L,0x18A7B986AF205A4AL,1L,0x18A7B986AF205A4AL,0L,0x0828597010273394L}}};
    uint32_t l_57 = 0xF24A8208L;
    int16_t l_65 = 0x4155L;
    int64_t l_66 = 0x7EE8902DFE65A55BL;
    int32_t l_415 = 1L;
    uint32_t l_426 = 0xA3887C43L;
    int i, j, k;
    --l_57;
    for (p_42 = 0; (p_42 >= 60); p_42 = safe_add_func_int16_t_s_s(p_42, 1))
    { /* block id: 16 */
        int8_t l_62[10][4][4] = {{{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL}},{{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL}},{{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL}},{{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL}},{{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL}},{{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL}},{{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL}},{{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL}},{{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL}},{{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL}}};
        int32_t l_63 = 1L;
        int32_t l_64[4][8] = {{0x6F870AB7L,(-1L),0x6F870AB7L,0x6F870AB7L,(-1L),0x6F870AB7L,0x6F870AB7L,(-1L)},{0x6F870AB7L,(-1L),0x6F870AB7L,0x6F870AB7L,(-1L),0x6F870AB7L,0x6F870AB7L,(-1L)},{0x6F870AB7L,(-1L),0x6F870AB7L,0x6F870AB7L,(-1L),0x6F870AB7L,0x6F870AB7L,(-1L)},{0x6F870AB7L,(-1L),0x6F870AB7L,0x6F870AB7L,(-1L),0x6F870AB7L,0x6F870AB7L,(-1L)}};
        int16_t l_67[6] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
        int32_t l_68[6][8][3] = {{{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L}},{{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L}},{{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L}},{{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L}},{{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L}},{{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L}}};
        uint64_t l_69 = 0xE9916C91CB4C1B82L;
        uint16_t *l_86 = &p_661->g_87;
        int32_t **l_102 = &l_49;
        uint64_t *l_109 = &l_69;
        int i, j, k;
        l_69++;
        (*l_52) = func_72((*l_51), func_78(((*l_102) = func_81((((safe_div_func_uint32_t_u_u((0x2CL != (((*l_53) > ((l_68[0][2][0] = ((--(*l_86)) <= (safe_mul_func_uint16_t_u_u(((p_661->g_92 ^= p_661->g_3) , p_43), (safe_lshift_func_int8_t_s_u((safe_sub_func_int32_t_s_s((func_97(((*l_102) = &p_661->g_50[0][4]), p_42, ((((func_103(p_42, (safe_sub_func_uint64_t_u_u(((*l_109) = (p_661->g_3 , 0x55EB302BC30E3669L)), 0x0CB9ACBE982E7F53L)), p_661->g_50[0][4], p_661) == p_661->g_11) , p_661->g_112) | p_43) , 0x2622FDE35EEEF44DL), l_86, p_661) , p_43), p_661->g_181[0][3])), 4)))))) || 4294967295UL)) , (*l_51))), p_661->g_206)) , GROUP_DIVERGE(1, 1)) >= p_43), l_52, p_661)), (*l_51), p_661), &p_661->g_3, p_42, p_42, p_661);
        for (p_661->g_127 = (-25); (p_661->g_127 <= 1); ++p_661->g_127)
        { /* block id: 194 */
            for (p_661->g_206 = 0; (p_661->g_206 >= 42); p_661->g_206++)
            { /* block id: 197 */
                return p_43;
            }
            return p_42;
        }
    }
    (*p_661->g_392) = (((*l_53) ^= ((~0x372A3292C3D8E2B2L) ^ p_43)) , (*p_661->g_392));
    p_661->g_92 = ((**p_661->g_391) = ((0x1D04D463L || (0x493DAA7EL < (((0x1EL ^ (safe_add_func_uint16_t_u_u((safe_div_func_int64_t_s_s(((safe_lshift_func_uint8_t_u_s(((l_415 && (safe_lshift_func_int8_t_s_s((safe_mod_func_int16_t_s_s((safe_div_func_uint16_t_u_u((((safe_sub_func_int32_t_s_s(((*l_49) = (1UL < (0xE2B5L != l_426))), ((safe_div_func_uint8_t_u_u(p_661->g_115, p_42)) <= 0x491EL))) , p_43) & p_42), p_661->g_211[2])), p_43)), 5))) || p_661->g_50[1][3]), 7)) ^ 0UL), p_661->g_157[3][3][6])), p_42))) & 0x7E3BL) && 0x6BC840CFL))) <= 1UL));
    return p_42;
}


/* ------------------------------------------ */
/* 
 * reads : p_661->g_50
 * writes:
 */
int32_t  func_72(uint64_t  p_73, int32_t * p_74, int32_t * p_75, uint64_t  p_76, int32_t  p_77, struct S0 * p_661)
{ /* block id: 189 */
    return (*p_74);
}


/* ------------------------------------------ */
/* 
 * reads : p_661->g_131 p_661->g_212 p_661->g_213 p_661->g_157 p_661->g_182 p_661->g_50 p_661->g_232 p_661->g_92 p_661->g_183 p_661->g_211 p_661->g_129 p_661->g_11 p_661->g_181 p_661->g_3 p_661->g_233 p_661->g_280 p_661->g_210 p_661->g_391 p_661->g_116 p_661->g_392 p_661->g_112 p_661->g_395 p_661->g_87
 * writes: p_661->g_131 p_661->g_92 p_661->g_181 p_661->g_182 p_661->g_183 p_661->g_175 p_661->g_233 p_661->g_213 p_661->g_391 p_661->g_211 p_661->g_87 p_661->g_112
 */
int32_t * func_78(int32_t * p_79, int32_t  p_80, struct S0 * p_661)
{ /* block id: 86 */
    int32_t *l_242 = (void*)0;
    uint32_t l_253 = 0x23BF89DEL;
    int32_t l_272[10][7][3] = {{{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL}},{{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL}},{{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL}},{{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL}},{{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL}},{{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL}},{{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL}},{{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL}},{{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL}},{{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL},{(-1L),0x454A044DL,0x454A044DL}}};
    uint16_t *l_301 = &p_661->g_87;
    int64_t l_311[2][1][2] = {{{1L,1L}},{{1L,1L}}};
    int8_t *l_327 = &p_661->g_211[8];
    uint8_t l_330 = 6UL;
    int32_t l_393 = 0x53C810F0L;
    int i, j, k;
    for (p_661->g_131 = 0; (p_661->g_131 == 39); p_661->g_131 = safe_add_func_uint32_t_u_u(p_661->g_131, 1))
    { /* block id: 89 */
        int32_t *l_241 = &p_661->g_50[0][4];
        uint8_t l_270 = 1UL;
        int64_t *l_271 = &p_661->g_181[0][0];
        uint32_t *l_273 = &l_253;
        int32_t l_274 = 1L;
        (**p_661->g_212) = (l_241 != l_242);
        (*p_661->g_213) = (safe_rshift_func_int8_t_s_s((((safe_mod_func_int32_t_s_s((l_274 = (safe_rshift_func_uint8_t_u_u(p_661->g_157[3][3][6], (safe_mod_func_int16_t_s_s(p_661->g_182, ((((*l_273) = (safe_lshift_func_int8_t_s_s((l_253 <= (safe_rshift_func_uint16_t_u_s((((safe_lshift_func_uint8_t_u_s((l_253 & (safe_mul_func_uint8_t_u_u((7L <= (safe_sub_func_int8_t_s_s(0x79L, (((safe_div_func_int8_t_s_s((safe_add_func_int64_t_s_s(((*l_271) = (((safe_lshift_func_uint8_t_u_s((p_80 <= p_80), (safe_mod_func_int16_t_s_s(0x616AL, p_80)))) >= l_270) & FAKE_DIVERGE(p_661->global_0_offset, get_global_id(0), 10))), p_80)), 0x98L)) , (void*)0) == (void*)0)))), GROUP_DIVERGE(1, 1)))), 2)) <= (*l_241)) <= l_272[6][6][0]), (*l_241)))), 0))) ^ 4294967293UL) & 0x2899AB900E7DE106L)))))), (*l_241))) >= p_661->g_232) > (*l_241)), 5));
    }
    for (p_661->g_182 = 0; (p_661->g_182 <= 7); p_661->g_182 += 1)
    { /* block id: 98 */
        uint32_t l_275 = 0UL;
        int32_t l_276 = 0x3A50FD07L;
        int32_t l_277[4] = {0x17A40FEAL,0x17A40FEAL,0x17A40FEAL,0x17A40FEAL};
        int i;
        if ((**p_661->g_212))
            break;
    }
    for (p_661->g_183 = (-27); (p_661->g_183 > 26); ++p_661->g_183)
    { /* block id: 129 */
        uint16_t *l_302 = &p_661->g_127;
        uint16_t **l_303 = &l_302;
        int32_t l_306 = 0x4B22C100L;
        int8_t *l_314 = &p_661->g_175;
        uint64_t *l_321 = (void*)0;
        uint64_t *l_322[2];
        int32_t l_323 = 0x74E1CDCEL;
        int8_t **l_325 = &l_314;
        int8_t ***l_324 = &l_325;
        int64_t l_326 = 0x655FAAF14233DAA1L;
        int32_t *l_328 = &p_661->g_92;
        int32_t *l_329[1];
        int i;
        for (i = 0; i < 2; i++)
            l_322[i] = &p_661->g_206;
        for (i = 0; i < 1; i++)
            l_329[i] = &p_661->g_112;
        l_272[7][2][2] = (safe_rshift_func_uint16_t_u_s((((safe_sub_func_uint16_t_u_u(((((safe_mul_func_int8_t_s_s((l_301 != ((*l_303) = l_302)), ((safe_add_func_uint16_t_u_u(l_306, ((safe_add_func_int64_t_s_s((((((((GROUP_DIVERGE(2, 1) <= 0UL) ^ (((l_306 > ((safe_lshift_func_int16_t_s_s(((l_311[0][0][1] | ((safe_mod_func_int64_t_s_s(((((*l_314) = l_272[6][6][0]) && (((**p_661->g_212) = (safe_mod_func_uint32_t_u_u((safe_div_func_uint64_t_u_u((l_323 = ((safe_rshift_func_int16_t_s_s(8L, (+p_661->g_211[2]))) , p_80)), 0x5F8874E6D699BF37L)), l_306))) || 0x93757472L)) | l_306), p_80)) || p_661->g_129[3][1])) | p_661->g_11), p_80)) ^ p_661->g_181[6][6])) , p_80) || p_80)) != 1L) || p_80) < p_661->g_50[0][4]) , (void*)0) == l_324), p_80)) == p_661->g_211[8]))) <= l_326))) , p_80) , (**l_324)) == l_327), 0x40E9L)) || l_326) , 0xA435L), p_661->g_3));
        ++l_330;
        if ((**p_661->g_212))
            continue;
    }
    for (p_661->g_233 = 0; (p_661->g_233 <= 6); p_661->g_233 += 1)
    { /* block id: 140 */
        int16_t *l_333 = (void*)0;
        int32_t l_342 = 0x71B91601L;
        (**p_661->g_212) ^= ((void*)0 == l_333);
        (*p_661->g_212) = (*p_661->g_212);
        (**p_661->g_212) = (((safe_rshift_func_uint8_t_u_s(((safe_div_func_int16_t_s_s((0L == ((p_661->g_280 , (((safe_div_func_uint64_t_u_u(((GROUP_DIVERGE(2, 1) && (((((0x46FF8D6F02563EA5L <= l_342) > 0x7BL) == 0x38FDL) < (-7L)) >= (((p_661->g_280 < (l_301 == (void*)0)) < p_80) > l_342))) || p_661->g_233), 0xF26017B87793941AL)) >= (-1L)) <= 0x06192A370124BDE0L)) != p_661->g_182)), p_80)) ^ p_80), p_661->g_210[0])) && p_661->g_131) && 4294967295UL);
        for (l_330 = 0; (l_330 <= 2); l_330 += 1)
        { /* block id: 146 */
            uint64_t l_363 = 0UL;
            int32_t **l_394 = &p_661->g_392;
            int i, j;
            for (p_661->g_131 = 0; (p_661->g_131 <= 1); p_661->g_131 += 1)
            { /* block id: 149 */
                uint8_t l_347 = 0xB9L;
                int32_t l_358 = (-5L);
                int32_t l_370 = (-1L);
                for (p_661->g_182 = 1; (p_661->g_182 >= 0); p_661->g_182 -= 1)
                { /* block id: 152 */
                    int32_t *l_368 = &l_342;
                    int32_t *l_369[8][10] = {{&l_272[1][1][0],&p_661->g_112,&l_342,(void*)0,&p_661->g_112,&l_272[1][1][0],(void*)0,&l_272[(l_330 + 1)][p_661->g_233][l_330],(void*)0,&l_272[1][1][0]},{&l_272[1][1][0],&p_661->g_112,&l_342,(void*)0,&p_661->g_112,&l_272[1][1][0],(void*)0,&l_272[(l_330 + 1)][p_661->g_233][l_330],(void*)0,&l_272[1][1][0]},{&l_272[1][1][0],&p_661->g_112,&l_342,(void*)0,&p_661->g_112,&l_272[1][1][0],(void*)0,&l_272[(l_330 + 1)][p_661->g_233][l_330],(void*)0,&l_272[1][1][0]},{&l_272[1][1][0],&p_661->g_112,&l_342,(void*)0,&p_661->g_112,&l_272[1][1][0],(void*)0,&l_272[(l_330 + 1)][p_661->g_233][l_330],(void*)0,&l_272[1][1][0]},{&l_272[1][1][0],&p_661->g_112,&l_342,(void*)0,&p_661->g_112,&l_272[1][1][0],(void*)0,&l_272[(l_330 + 1)][p_661->g_233][l_330],(void*)0,&l_272[1][1][0]},{&l_272[1][1][0],&p_661->g_112,&l_342,(void*)0,&p_661->g_112,&l_272[1][1][0],(void*)0,&l_272[(l_330 + 1)][p_661->g_233][l_330],(void*)0,&l_272[1][1][0]},{&l_272[1][1][0],&p_661->g_112,&l_342,(void*)0,&p_661->g_112,&l_272[1][1][0],(void*)0,&l_272[(l_330 + 1)][p_661->g_233][l_330],(void*)0,&l_272[1][1][0]},{&l_272[1][1][0],&p_661->g_112,&l_342,(void*)0,&p_661->g_112,&l_272[1][1][0],(void*)0,&l_272[(l_330 + 1)][p_661->g_233][l_330],(void*)0,&l_272[1][1][0]}};
                    int i, j, k;
                    l_272[(l_330 + 1)][p_661->g_233][l_330] = p_661->g_210[p_661->g_131];
                }
            }
            l_342 &= ((p_661->g_181[p_661->g_233][(l_330 + 3)] , (void*)0) == &l_327);
            (**p_661->g_212) = ((safe_mod_func_uint8_t_u_u(p_661->g_181[(l_330 + 1)][p_661->g_233], (safe_mod_func_uint16_t_u_u(((+(safe_rshift_func_int8_t_s_u(((void*)0 == l_333), 6))) & ((safe_rshift_func_int8_t_s_s(p_80, ((*l_327) = (~(safe_unary_minus_func_uint16_t_u((safe_mod_func_uint8_t_u_u((~(safe_mul_func_int16_t_s_s((0x129C5D2D4502EF5EL > p_80), (safe_sub_func_uint32_t_u_u(((safe_mul_func_int16_t_s_s(((p_661->g_391 = p_661->g_391) == (((((((0x09478803L < (l_272[6][6][0] != l_393)) ^ p_661->g_181[(l_330 + 1)][p_661->g_233]) >= (-3L)) != p_661->g_11) && l_342) , p_661->g_116) , l_394)), p_661->g_183)) , p_80), (**l_394)))))), p_661->g_181[0][3])))))))) , p_661->g_395)), 65535UL)))) != (**l_394));
            for (p_661->g_182 = 2; (p_661->g_182 >= 0); p_661->g_182 -= 1)
            { /* block id: 175 */
                for (p_661->g_92 = 0; (p_661->g_92 <= 6); p_661->g_92 += 1)
                { /* block id: 178 */
                    int32_t ***l_400 = (void*)0;
                    int32_t ***l_401 = &p_661->g_391;
                    int32_t ***l_402[10][1][2] = {{{(void*)0,&l_394}},{{(void*)0,&l_394}},{{(void*)0,&l_394}},{{(void*)0,&l_394}},{{(void*)0,&l_394}},{{(void*)0,&l_394}},{{(void*)0,&l_394}},{{(void*)0,&l_394}},{{(void*)0,&l_394}},{{(void*)0,&l_394}}};
                    int i, j, k;
                    (*p_661->g_392) &= ((safe_div_func_uint32_t_u_u((safe_sub_func_uint16_t_u_u(9UL, ((*l_301) |= (l_272[l_330][(p_661->g_182 + 4)][l_330] >= (((*l_401) = &p_661->g_392) == (l_394 = &p_661->g_392)))))), l_272[(p_661->g_92 + 1)][p_661->g_92][p_661->g_182])) <= (FAKE_DIVERGE(p_661->global_2_offset, get_global_id(2), 10) >= p_80));
                }
                (**p_661->g_212) = 1L;
            }
        }
    }
    return p_79;
}


/* ------------------------------------------ */
/* 
 * reads : p_661->g_112 p_661->g_212 p_661->g_213 p_661->g_92 p_661->g_233 p_661->g_210 p_661->g_50
 * writes: p_661->g_112 p_661->g_213 p_661->g_92 p_661->g_233
 */
int32_t * func_81(uint16_t  p_82, int32_t * p_83, struct S0 * p_661)
{ /* block id: 62 */
    uint32_t l_217[9] = {8UL,8UL,8UL,8UL,8UL,8UL,8UL,8UL,8UL};
    int8_t *l_221 = (void*)0;
    int8_t **l_220 = &l_221;
    int32_t *l_238 = &p_661->g_92;
    int i;
    for (p_82 = 25; (p_82 == 41); ++p_82)
    { /* block id: 65 */
        int8_t ***l_222 = &l_220;
        int32_t l_225 = 8L;
        ++l_217[6];
        (*l_222) = l_220;
        for (p_661->g_112 = 0; (p_661->g_112 != (-13)); p_661->g_112--)
        { /* block id: 70 */
            int32_t l_226 = (-2L);
            if (l_225)
                break;
            if (l_226)
                continue;
            (*p_661->g_212) = (*p_661->g_212);
        }
    }
    for (p_661->g_92 = 1; (p_661->g_92 >= 0); p_661->g_92 -= 1)
    { /* block id: 78 */
        int32_t *l_227 = &p_661->g_112;
        int32_t *l_228 = &p_661->g_112;
        int32_t *l_229 = (void*)0;
        int32_t *l_230 = (void*)0;
        int32_t *l_231[9][2][6] = {{{&p_661->g_3,&p_661->g_50[0][4],&p_661->g_92,&p_661->g_50[2][5],&p_661->g_92,&p_661->g_50[0][4]},{&p_661->g_3,&p_661->g_50[0][4],&p_661->g_92,&p_661->g_50[2][5],&p_661->g_92,&p_661->g_50[0][4]}},{{&p_661->g_3,&p_661->g_50[0][4],&p_661->g_92,&p_661->g_50[2][5],&p_661->g_92,&p_661->g_50[0][4]},{&p_661->g_3,&p_661->g_50[0][4],&p_661->g_92,&p_661->g_50[2][5],&p_661->g_92,&p_661->g_50[0][4]}},{{&p_661->g_3,&p_661->g_50[0][4],&p_661->g_92,&p_661->g_50[2][5],&p_661->g_92,&p_661->g_50[0][4]},{&p_661->g_3,&p_661->g_50[0][4],&p_661->g_92,&p_661->g_50[2][5],&p_661->g_92,&p_661->g_50[0][4]}},{{&p_661->g_3,&p_661->g_50[0][4],&p_661->g_92,&p_661->g_50[2][5],&p_661->g_92,&p_661->g_50[0][4]},{&p_661->g_3,&p_661->g_50[0][4],&p_661->g_92,&p_661->g_50[2][5],&p_661->g_92,&p_661->g_50[0][4]}},{{&p_661->g_3,&p_661->g_50[0][4],&p_661->g_92,&p_661->g_50[2][5],&p_661->g_92,&p_661->g_50[0][4]},{&p_661->g_3,&p_661->g_50[0][4],&p_661->g_92,&p_661->g_50[2][5],&p_661->g_92,&p_661->g_50[0][4]}},{{&p_661->g_3,&p_661->g_50[0][4],&p_661->g_92,&p_661->g_50[2][5],&p_661->g_92,&p_661->g_50[0][4]},{&p_661->g_3,&p_661->g_50[0][4],&p_661->g_92,&p_661->g_50[2][5],&p_661->g_92,&p_661->g_50[0][4]}},{{&p_661->g_3,&p_661->g_50[0][4],&p_661->g_92,&p_661->g_50[2][5],&p_661->g_92,&p_661->g_50[0][4]},{&p_661->g_3,&p_661->g_50[0][4],&p_661->g_92,&p_661->g_50[2][5],&p_661->g_92,&p_661->g_50[0][4]}},{{&p_661->g_3,&p_661->g_50[0][4],&p_661->g_92,&p_661->g_50[2][5],&p_661->g_92,&p_661->g_50[0][4]},{&p_661->g_3,&p_661->g_50[0][4],&p_661->g_92,&p_661->g_50[2][5],&p_661->g_92,&p_661->g_50[0][4]}},{{&p_661->g_3,&p_661->g_50[0][4],&p_661->g_92,&p_661->g_50[2][5],&p_661->g_92,&p_661->g_50[0][4]},{&p_661->g_3,&p_661->g_50[0][4],&p_661->g_92,&p_661->g_50[2][5],&p_661->g_92,&p_661->g_50[0][4]}}};
        int i, j, k;
        p_661->g_233++;
        (*l_228) = ((safe_add_func_uint8_t_u_u(p_661->g_210[p_661->g_92], p_82)) , (*p_83));
        (*l_227) = (*p_83);
    }
    (*p_661->g_212) = l_238;
    return &p_661->g_50[0][1];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t  func_97(int32_t * p_98, uint64_t  p_99, int64_t  p_100, uint16_t * p_101, struct S0 * p_661)
{ /* block id: 59 */
    uint32_t l_214 = 4294967295UL;
    return l_214;
}


/* ------------------------------------------ */
/* 
 * reads : p_661->g_116 p_661->g_112 p_661->g_131 p_661->g_122 p_661->g_11 p_661->g_3 p_661->g_129 p_661->g_115 p_661->g_157 p_661->g_175 p_661->g_181 p_661->g_182 p_661->g_211 p_661->g_212 p_661->g_206
 * writes: p_661->g_116 p_661->g_122 p_661->g_127 p_661->g_129 p_661->g_131 p_661->g_112 p_661->g_157 p_661->g_175 p_661->g_182 p_661->g_183 p_661->g_189 p_661->g_205 p_661->g_210 p_661->g_211 p_661->g_115 p_661->g_213
 */
uint8_t  func_103(int64_t  p_104, uint16_t  p_105, int16_t  p_106, struct S0 * p_661)
{ /* block id: 22 */
    int64_t l_110 = 0x5B74E30DE83DB493L;
    int32_t *l_111 = &p_661->g_112;
    int32_t *l_113 = &p_661->g_112;
    int32_t *l_114[7] = {&p_661->g_112,&p_661->g_112,&p_661->g_112,&p_661->g_112,&p_661->g_112,&p_661->g_112,&p_661->g_112};
    uint64_t l_146 = 18446744073709551615UL;
    uint32_t l_158 = 8UL;
    int i;
    p_661->g_116++;
    for (p_106 = 6; (p_106 >= 0); p_106 -= 1)
    { /* block id: 26 */
        uint8_t *l_121 = &p_661->g_122[2];
        uint16_t *l_126 = &p_661->g_127;
        int8_t *l_128 = &p_661->g_129[3][1];
        uint32_t *l_130 = &p_661->g_131;
        int64_t *l_155 = (void*)0;
        int64_t *l_156[1][10][7] = {{{&l_110,(void*)0,&l_110,&l_110,&l_110,(void*)0,&l_110},{&l_110,(void*)0,&l_110,&l_110,&l_110,(void*)0,&l_110},{&l_110,(void*)0,&l_110,&l_110,&l_110,(void*)0,&l_110},{&l_110,(void*)0,&l_110,&l_110,&l_110,(void*)0,&l_110},{&l_110,(void*)0,&l_110,&l_110,&l_110,(void*)0,&l_110},{&l_110,(void*)0,&l_110,&l_110,&l_110,(void*)0,&l_110},{&l_110,(void*)0,&l_110,&l_110,&l_110,(void*)0,&l_110},{&l_110,(void*)0,&l_110,&l_110,&l_110,(void*)0,&l_110},{&l_110,(void*)0,&l_110,&l_110,&l_110,(void*)0,&l_110},{&l_110,(void*)0,&l_110,&l_110,&l_110,(void*)0,&l_110}}};
        int i, j, k;
        if (p_104)
            break;
        (*l_111) = ((((*l_130) |= (safe_div_func_uint8_t_u_u(((((*l_121) = 9UL) >= 0x39L) | 0x6BL), ((*l_128) = (safe_mod_func_int16_t_s_s(((((void*)0 != &p_661->g_50[0][4]) && (safe_unary_minus_func_uint8_t_u((((((*l_126) = 0x63ADL) , (-4L)) >= ((((void*)0 == &p_661->g_11) , (-2L)) > 0x0AA8L)) != 0xF8876A3BL)))) || p_661->g_112), p_661->g_112)))))) < FAKE_DIVERGE(p_661->group_1_offset, get_group_id(1), 10)) == GROUP_DIVERGE(2, 1));
        l_114[p_106] = (((((*l_121)--) & ((*l_128) &= (safe_mod_func_int64_t_s_s(((safe_mul_func_int8_t_s_s(((*l_113) != (p_105 <= ((*l_126) = 0x4566L))), p_106)) , (p_661->g_157[3][3][6] = (safe_div_func_int16_t_s_s(((((safe_sub_func_uint8_t_u_u((safe_add_func_uint32_t_u_u(p_105, l_146)), (safe_rshift_func_uint8_t_u_s((safe_lshift_func_int8_t_s_s(4L, (safe_lshift_func_uint8_t_u_s((safe_mul_func_int16_t_s_s((((0UL <= 0x34L) , p_661->g_11) < 1UL), p_661->g_116)), 4)))), p_104)))) || p_106) , p_661->g_3) <= p_105), 0xDB8CL)))), p_661->g_112)))) ^ 0x8EL) , (void*)0);
        return l_158;
    }
    for (p_661->g_131 = 0; (p_661->g_131 == 20); p_661->g_131 = safe_add_func_uint64_t_u_u(p_661->g_131, 6))
    { /* block id: 42 */
        int8_t *l_173 = &p_661->g_129[7][3];
        int8_t *l_174 = &p_661->g_175;
        int32_t l_176 = 9L;
        int32_t l_184 = (-1L);
        int64_t *l_196 = &l_110;
        uint64_t *l_204[2][9] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        uint64_t **l_203[1];
        int16_t *l_207 = (void*)0;
        int16_t *l_208 = (void*)0;
        int16_t *l_209 = &p_661->g_210[0];
        int i, j;
        for (i = 0; i < 1; i++)
            l_203[i] = &l_204[0][4];
        (*l_113) = ((safe_div_func_int16_t_s_s((l_184 |= ((safe_rshift_func_uint16_t_u_u(((((((safe_div_func_uint16_t_u_u((!(safe_mul_func_uint8_t_u_u((p_661->g_115 , (safe_sub_func_int16_t_s_s(0x3C0DL, (((p_106 != ((*l_174) |= (p_106 != (safe_mod_func_int8_t_s_s(((*l_173) = (*l_113)), p_661->g_157[3][3][6]))))) == (p_661->g_122[5]--)) == (p_104 == (p_661->g_183 = (safe_div_func_int8_t_s_s((~(p_661->g_182 |= ((*l_113) | p_661->g_181[0][3]))), 0x41L)))))))), GROUP_DIVERGE(2, 1)))), l_176)) && (-4L)) < 1L) , 0xB3E6L) >= p_661->g_131) > p_104), 7)) != 8L)), 0x0D95L)) || p_106);
        p_661->g_115 = (safe_sub_func_uint32_t_u_u(((((((*l_113) = (p_661->g_211[2] ^= ((safe_lshift_func_uint16_t_u_u((&p_661->g_131 != (p_661->g_189 = (void*)0)), ((safe_lshift_func_uint16_t_u_s((safe_add_func_uint8_t_u_u(((safe_add_func_uint16_t_u_u(((GROUP_DIVERGE(0, 1) , l_196) == (void*)0), ((*l_209) = ((safe_rshift_func_int8_t_s_s((safe_div_func_uint32_t_u_u((safe_lshift_func_uint16_t_u_s(((((((((l_196 == (p_661->g_205[7] = (void*)0)) != 0x4B414F5BL) == (l_176 && (~p_661->g_157[3][3][6]))) > l_184) , p_106) , (void*)0) == (void*)0) != p_105), l_176)), 0x118BEC9CL)), 5)) , (*l_113))))) , p_104), l_184)), 13)) && p_105))) && 0L))) , p_661->g_212) == (void*)0) || 0x6128L) | p_104), p_661->g_206));
    }
    (*p_661->g_212) = l_114[6];
    return p_106;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_662;
    struct S0* p_661 = &c_662;
    struct S0 c_663 = {
        4L, // p_661->g_3
        0xD915L, // p_661->g_11
        {{1L,0x5175D1B3L,0x3293C34FL,(-1L),0x3293C34FL,0x5175D1B3L,1L,0x1802EEDAL,0L,0L},{1L,0x5175D1B3L,0x3293C34FL,(-1L),0x3293C34FL,0x5175D1B3L,1L,0x1802EEDAL,0L,0L},{1L,0x5175D1B3L,0x3293C34FL,(-1L),0x3293C34FL,0x5175D1B3L,1L,0x1802EEDAL,0L,0L},{1L,0x5175D1B3L,0x3293C34FL,(-1L),0x3293C34FL,0x5175D1B3L,1L,0x1802EEDAL,0L,0L},{1L,0x5175D1B3L,0x3293C34FL,(-1L),0x3293C34FL,0x5175D1B3L,1L,0x1802EEDAL,0L,0L}}, // p_661->g_50
        0x2BEFL, // p_661->g_87
        (-1L), // p_661->g_92
        (-3L), // p_661->g_112
        0x56B4D16BL, // p_661->g_115
        0x2CL, // p_661->g_116
        {246UL,0UL,246UL,246UL,0UL,246UL}, // p_661->g_122
        0x2849L, // p_661->g_127
        {{0x40L,0x40L,0x40L,0x40L,0x40L},{0x40L,0x40L,0x40L,0x40L,0x40L},{0x40L,0x40L,0x40L,0x40L,0x40L},{0x40L,0x40L,0x40L,0x40L,0x40L},{0x40L,0x40L,0x40L,0x40L,0x40L},{0x40L,0x40L,0x40L,0x40L,0x40L},{0x40L,0x40L,0x40L,0x40L,0x40L},{0x40L,0x40L,0x40L,0x40L,0x40L}}, // p_661->g_129
        0x9FA879EBL, // p_661->g_131
        {{{0x5EL,0xD5L,1UL,0x4AL,0xEAL,255UL,0x5EL},{0x5EL,0xD5L,1UL,0x4AL,0xEAL,255UL,0x5EL},{0x5EL,0xD5L,1UL,0x4AL,0xEAL,255UL,0x5EL},{0x5EL,0xD5L,1UL,0x4AL,0xEAL,255UL,0x5EL}},{{0x5EL,0xD5L,1UL,0x4AL,0xEAL,255UL,0x5EL},{0x5EL,0xD5L,1UL,0x4AL,0xEAL,255UL,0x5EL},{0x5EL,0xD5L,1UL,0x4AL,0xEAL,255UL,0x5EL},{0x5EL,0xD5L,1UL,0x4AL,0xEAL,255UL,0x5EL}},{{0x5EL,0xD5L,1UL,0x4AL,0xEAL,255UL,0x5EL},{0x5EL,0xD5L,1UL,0x4AL,0xEAL,255UL,0x5EL},{0x5EL,0xD5L,1UL,0x4AL,0xEAL,255UL,0x5EL},{0x5EL,0xD5L,1UL,0x4AL,0xEAL,255UL,0x5EL}},{{0x5EL,0xD5L,1UL,0x4AL,0xEAL,255UL,0x5EL},{0x5EL,0xD5L,1UL,0x4AL,0xEAL,255UL,0x5EL},{0x5EL,0xD5L,1UL,0x4AL,0xEAL,255UL,0x5EL},{0x5EL,0xD5L,1UL,0x4AL,0xEAL,255UL,0x5EL}}}, // p_661->g_157
        (-1L), // p_661->g_175
        {{0L,0x040830E31B005505L,0L,0L,0x040830E31B005505L,0L,0L},{0L,0x040830E31B005505L,0L,0L,0x040830E31B005505L,0L,0L},{0L,0x040830E31B005505L,0L,0L,0x040830E31B005505L,0L,0L},{0L,0x040830E31B005505L,0L,0L,0x040830E31B005505L,0L,0L},{0L,0x040830E31B005505L,0L,0L,0x040830E31B005505L,0L,0L},{0L,0x040830E31B005505L,0L,0L,0x040830E31B005505L,0L,0L},{0L,0x040830E31B005505L,0L,0L,0x040830E31B005505L,0L,0L}}, // p_661->g_181
        0x2BC83944E22DBB2EL, // p_661->g_182
        4294967292UL, // p_661->g_183
        &p_661->g_183, // p_661->g_189
        0x77555DD1EE389250L, // p_661->g_206
        {&p_661->g_206,&p_661->g_206,&p_661->g_206,&p_661->g_206,&p_661->g_206,&p_661->g_206,&p_661->g_206,&p_661->g_206}, // p_661->g_205
        {(-1L),(-1L)}, // p_661->g_210
        {0x47L,0x47L,0x47L,0x47L,0x47L,0x47L,0x47L,0x47L,0x47L}, // p_661->g_211
        (void*)0, // p_661->g_213
        &p_661->g_213, // p_661->g_212
        (-8L), // p_661->g_232
        0xE41BA474L, // p_661->g_233
        0x20L, // p_661->g_280
        {1UL,1UL,1UL,1UL}, // p_661->g_371
        &p_661->g_112, // p_661->g_392
        &p_661->g_392, // p_661->g_391
        2L, // p_661->g_395
        0xE055L, // p_661->g_441
        {{{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]},{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]},{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]},{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]},{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]},{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]}},{{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]},{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]},{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]},{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]},{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]},{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]}},{{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]},{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]},{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]},{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]},{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]},{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]}},{{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]},{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]},{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]},{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]},{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]},{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]}},{{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]},{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]},{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]},{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]},{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]},{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]}},{{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]},{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]},{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]},{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]},{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]},{&p_661->g_3,&p_661->g_112,&p_661->g_50[4][4]}}}, // p_661->g_478
        &p_661->g_371[1], // p_661->g_516
        &p_661->g_516, // p_661->g_515
        0xAEC2E594L, // p_661->g_520
        0x5A8D5B74AFB53433L, // p_661->g_557
        (void*)0, // p_661->g_576
        (void*)0, // p_661->g_577
        {{{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441}},{{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441}},{{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441}},{{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441}},{{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441}},{{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441}},{{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441}},{{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441}},{{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441}},{{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441},{&p_661->g_127,&p_661->g_11,&p_661->g_441}}}, // p_661->g_604
        &p_661->g_604[0][4][0], // p_661->g_603
        5UL, // p_661->g_649
        7UL, // p_661->g_651
        1UL, // p_661->g_652
        sequence_input[get_global_id(0)], // p_661->global_0_offset
        sequence_input[get_global_id(1)], // p_661->global_1_offset
        sequence_input[get_global_id(2)], // p_661->global_2_offset
        sequence_input[get_local_id(0)], // p_661->local_0_offset
        sequence_input[get_local_id(1)], // p_661->local_1_offset
        sequence_input[get_local_id(2)], // p_661->local_2_offset
        sequence_input[get_group_id(0)], // p_661->group_0_offset
        sequence_input[get_group_id(1)], // p_661->group_1_offset
        sequence_input[get_group_id(2)], // p_661->group_2_offset
    };
    c_662 = c_663;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_661);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_661->g_3, "p_661->g_3", print_hash_value);
    transparent_crc(p_661->g_11, "p_661->g_11", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_661->g_50[i][j], "p_661->g_50[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_661->g_87, "p_661->g_87", print_hash_value);
    transparent_crc(p_661->g_92, "p_661->g_92", print_hash_value);
    transparent_crc(p_661->g_112, "p_661->g_112", print_hash_value);
    transparent_crc(p_661->g_115, "p_661->g_115", print_hash_value);
    transparent_crc(p_661->g_116, "p_661->g_116", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_661->g_122[i], "p_661->g_122[i]", print_hash_value);

    }
    transparent_crc(p_661->g_127, "p_661->g_127", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_661->g_129[i][j], "p_661->g_129[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_661->g_131, "p_661->g_131", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_661->g_157[i][j][k], "p_661->g_157[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_661->g_175, "p_661->g_175", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_661->g_181[i][j], "p_661->g_181[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_661->g_182, "p_661->g_182", print_hash_value);
    transparent_crc(p_661->g_183, "p_661->g_183", print_hash_value);
    transparent_crc(p_661->g_206, "p_661->g_206", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_661->g_210[i], "p_661->g_210[i]", print_hash_value);

    }
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_661->g_211[i], "p_661->g_211[i]", print_hash_value);

    }
    transparent_crc(p_661->g_232, "p_661->g_232", print_hash_value);
    transparent_crc(p_661->g_233, "p_661->g_233", print_hash_value);
    transparent_crc(p_661->g_280, "p_661->g_280", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_661->g_371[i], "p_661->g_371[i]", print_hash_value);

    }
    transparent_crc(p_661->g_395, "p_661->g_395", print_hash_value);
    transparent_crc(p_661->g_441, "p_661->g_441", print_hash_value);
    transparent_crc(p_661->g_520, "p_661->g_520", print_hash_value);
    transparent_crc(p_661->g_557, "p_661->g_557", print_hash_value);
    transparent_crc(p_661->g_649, "p_661->g_649", print_hash_value);
    transparent_crc(p_661->g_651, "p_661->g_651", print_hash_value);
    transparent_crc(p_661->g_652, "p_661->g_652", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
