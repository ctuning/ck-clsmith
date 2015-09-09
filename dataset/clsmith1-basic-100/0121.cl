// ---fake_divergence -g 13,74,4 -l 1,37,2
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


// Seed: 121

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int64_t  f0;
   uint64_t  f1;
   int16_t  f2;
   uint32_t  f3;
   int64_t  f4;
   int32_t  f5;
   int32_t  f6;
   int32_t  f7;
   volatile uint8_t  f8;
};

union U1 {
   volatile uint64_t  f0;
   uint32_t  f1;
   int32_t  f2;
};

struct S2 {
    int32_t g_3[3][4];
    volatile int32_t g_12;
    volatile int32_t g_13[1][5];
    volatile int32_t g_14;
    volatile int32_t g_15;
    volatile int32_t g_16;
    int32_t g_17;
    uint16_t g_37;
    int32_t g_43;
    uint16_t *g_72;
    int32_t g_88[5][4];
    int8_t g_114[6][1];
    int8_t g_122;
    union U1 g_132;
    union U1 g_134[8];
    uint64_t g_157;
    uint64_t g_160;
    uint32_t g_163;
    int32_t g_172[9][7][3];
    uint16_t g_190;
    uint8_t g_202;
    union U1 *g_209;
    uint32_t g_212;
    int64_t g_243;
    struct S0 g_312;
    int8_t g_356;
    int32_t *g_384;
    int32_t **g_383;
    struct S0 g_400[1];
    struct S0 *g_399;
    uint8_t *g_489;
    uint8_t * volatile *g_488;
    int32_t *g_490;
    int32_t * volatile g_527;
    uint16_t * volatile *g_554;
    uint16_t * volatile * volatile *g_553;
    volatile union U1 g_574[1][5];
    int8_t *g_577;
    int8_t ** volatile g_576[2][10][2];
    struct S0 g_599;
    struct S0 g_653;
    volatile struct S0 g_672[4];
    volatile struct S0 *g_671;
    volatile struct S0 **g_670;
    volatile struct S0 ** volatile *g_669;
    struct S0 g_674;
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
struct S0  func_1(struct S2 * p_679);
struct S0  func_18(int64_t  p_19, int32_t ** p_20, int32_t  p_21, struct S2 * p_679);
uint8_t  func_24(int32_t  p_25, int32_t ** p_26, uint32_t  p_27, struct S2 * p_679);
int32_t * func_28(int32_t * p_29, int32_t * p_30, struct S2 * p_679);
int32_t * func_31(uint16_t  p_32, int32_t  p_33, int32_t  p_34, int16_t  p_35, struct S2 * p_679);
int32_t  func_46(uint16_t * p_47, int32_t ** p_48, struct S2 * p_679);
uint16_t * func_49(int32_t  p_50, int32_t * p_51, uint16_t * p_52, int32_t ** p_53, struct S2 * p_679);
int32_t  func_54(int32_t * p_55, struct S2 * p_679);
int32_t * func_56(uint64_t  p_57, int16_t  p_58, struct S2 * p_679);
int32_t * func_59(uint16_t * p_60, int64_t  p_61, int32_t * p_62, uint32_t  p_63, uint16_t * p_64, struct S2 * p_679);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_679->g_3 p_679->g_12 p_679->g_17 p_679->g_37 p_679->g_72 p_679->g_43 p_679->g_114 p_679->g_88 p_679->g_160 p_679->g_202 p_679->g_172 p_679->g_209 p_679->g_122 p_679->g_312.f4 p_679->g_312.f2 p_679->g_163 p_679->g_312.f6 p_679->g_190 p_679->g_312.f7 p_679->g_356 p_679->g_312.f5 p_679->g_383 p_679->g_312.f1 p_679->g_399 p_679->g_384 p_679->g_400.f3 p_679->g_400.f2 p_679->g_400.f1 p_679->g_312.f3 p_679->g_400.f5 p_679->g_243 p_679->g_488 p_679->g_490 p_679->g_489 p_679->g_157 p_679->g_527 p_679->g_400.f7 p_679->g_400.f0 p_679->g_400 p_679->g_212 p_679->g_553 p_679->g_574 p_679->g_576 p_679->g_599 p_679->g_134 p_679->g_653 p_679->g_669 p_679->g_674 p_679->g_670 p_679->g_671 p_679->g_672
 * writes: p_679->g_17 p_679->g_37 p_679->g_43 p_679->g_114 p_679->g_122 p_679->g_88 p_679->g_190 p_679->g_160 p_679->g_132.f2 p_679->g_202 p_679->g_209 p_679->g_312.f2 p_679->g_356 p_679->g_312.f7 p_679->g_312.f5 p_679->g_400.f2 p_679->g_400.f5 p_679->g_132.f1 p_679->g_384 p_679->g_157 p_679->g_400.f4 p_679->g_488 p_679->g_172 p_679->g_489 p_679->g_312.f1 p_679->g_400.f7 p_679->g_399 p_679->g_3 p_679->g_383 p_679->g_312.f6 p_679->g_599.f4
 */
struct S0  func_1(struct S2 * p_679)
{ /* block id: 4 */
    int32_t *l_2 = &p_679->g_3[2][1];
    int32_t *l_4 = &p_679->g_3[2][1];
    int32_t l_5[3][6] = {{0x6B8D9637L,0x6B8D9637L,0L,5L,1L,5L},{0x6B8D9637L,0x6B8D9637L,0L,5L,1L,5L},{0x6B8D9637L,0x6B8D9637L,0L,5L,1L,5L}};
    int32_t *l_6[6] = {&p_679->g_3[2][3],&p_679->g_3[2][3],&p_679->g_3[2][3],&p_679->g_3[2][3],&p_679->g_3[2][3],&p_679->g_3[2][3]};
    uint16_t l_7 = 4UL;
    int8_t *l_555 = (void*)0;
    int8_t *l_557 = &p_679->g_122;
    int8_t **l_556 = &l_557;
    uint16_t **l_559 = &p_679->g_72;
    uint16_t ***l_558 = &l_559;
    uint64_t *l_586 = (void*)0;
    uint64_t l_592[4] = {0x7181B3DD44E929CAL,0x7181B3DD44E929CAL,0x7181B3DD44E929CAL,0x7181B3DD44E929CAL};
    uint8_t l_636 = 0x98L;
    int i, j;
    l_7--;
    for (l_7 = 7; (l_7 < 43); ++l_7)
    { /* block id: 8 */
        int32_t *l_492[9] = {&p_679->g_172[1][1][2],(void*)0,&p_679->g_172[1][1][2],&p_679->g_172[1][1][2],(void*)0,&p_679->g_172[1][1][2],&p_679->g_172[1][1][2],(void*)0,&p_679->g_172[1][1][2]};
        int32_t **l_541 = &l_6[5];
        struct S0 **l_542 = &p_679->g_399;
        struct S0 ***l_543 = &l_542;
        int i;
        for (p_679->g_17 = 0; (p_679->g_17 <= 5); p_679->g_17 += 1)
        { /* block id: 11 */
            uint16_t *l_36 = &p_679->g_37;
            int32_t l_38 = 0x2F09D89CL;
            int32_t *l_493 = &l_5[1][4];
            int8_t l_496 = 0x38L;
            int32_t **l_502 = &l_4;
            int i;
            if (p_679->g_3[0][2])
                break;
            l_541 = (func_18((p_679->g_12 <= (safe_rshift_func_uint8_t_u_u(p_679->g_3[2][1], func_24((((0x57520C256FAE7A48L || ((l_6[p_679->g_17] = &p_679->g_17) == ((*p_679->g_383) = func_28(func_31(((*l_36) &= FAKE_DIVERGE(p_679->local_2_offset, get_local_id(2), 10)), p_679->g_3[0][3], l_38, (*l_4), p_679), (l_493 = (p_679->g_312.f6 , l_492[5])), p_679)))) > (*l_4)) & p_679->g_312.f3), &p_679->g_490, l_496, p_679)))), l_502, p_679->g_400[0].f1, p_679) , (void*)0);
        }
        (*l_543) = l_542;
    }
    if ((((((safe_unary_minus_func_int32_t_s(((safe_div_func_uint32_t_u_u(((*l_4) || (((safe_lshift_func_int8_t_s_u(0x4DL, ((safe_add_func_uint8_t_u_u(((((((safe_lshift_func_int16_t_s_s(((p_679->g_553 == (void*)0) , 2L), 10)) , l_555) == ((*l_556) = l_555)) <= 0x25FC669C4841554CL) | (l_558 == &l_559)) && (-9L)), (*p_679->g_489))) == FAKE_DIVERGE(p_679->global_0_offset, get_global_id(0), 10)))) | (*l_4)) || (*l_2))), (*l_4))) <= p_679->g_400[0].f4))) , p_679->g_312.f1) ^ 0xE085L) , 1L) & p_679->g_12))
    { /* block id: 282 */
        uint64_t *l_565[1][4];
        uint64_t **l_564 = &l_565[0][1];
        int32_t l_570 = (-1L);
        int32_t **l_590[7] = {&l_4,&l_6[4],&l_4,&l_4,&l_6[4],&l_4,&l_4};
        int32_t *l_591 = &l_570;
        uint8_t l_595 = 0UL;
        int16_t l_626 = 1L;
        uint16_t *l_633 = &l_7;
        uint16_t *l_641 = &p_679->g_37;
        uint64_t l_648 = 1UL;
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 4; j++)
                l_565[i][j] = &p_679->g_157;
        }
        if ((2UL <= 0x7864C54A32ABA41DL))
        { /* block id: 283 */
            int32_t l_571 = 0x5204F337L;
            int64_t l_575 = 3L;
            int32_t l_629 = 0x1CED9C97L;
            int16_t *l_630 = &p_679->g_599.f2;
            int32_t l_631 = 0x55C3594EL;
            uint32_t *l_632 = &p_679->g_212;
            uint16_t *l_634[3];
            int32_t *l_635 = &l_570;
            int i;
            for (i = 0; i < 3; i++)
                l_634[i] = &p_679->g_37;
            if (((*l_2) = ((safe_mod_func_uint32_t_u_u((*l_4), ((l_571 = ((**p_679->g_488) = (safe_rshift_func_uint8_t_u_s(((((void*)0 != l_564) , (safe_lshift_func_uint16_t_u_u(0x6C71L, 2))) , (safe_lshift_func_int16_t_s_u(0x6058L, (l_570 >= p_679->g_3[1][1])))), 6)))) ^ 0x2CL))) && ((safe_lshift_func_int8_t_s_s(((p_679->g_574[0][0] , l_571) & p_679->g_400[0].f6), 6)) <= p_679->g_163))))
            { /* block id: 287 */
                uint64_t **l_587 = &l_586;
                int32_t ***l_589 = &p_679->g_383;
                (*l_4) = ((3L ^ l_575) && ((p_679->g_576[0][7][1] == (void*)0) | l_575));
                (*l_2) = (65533UL || ((((safe_lshift_func_uint8_t_u_u((*p_679->g_489), ((safe_mod_func_uint64_t_u_u(18446744073709551607UL, 18446744073709551608UL)) >= (((*l_564) = &p_679->g_160) != ((*l_587) = l_586))))) & (safe_unary_minus_func_uint64_t_u(0x249A1B1CBD93292DL))) != ((((*l_589) = (void*)0) != l_590[3]) > 0x3608L)) <= 9L));
            }
            else
            { /* block id: 293 */
                l_591 = (*p_679->g_383);
                (*l_591) &= (0x5CL | (*p_679->g_489));
                return (*p_679->g_399);
            }
            if (l_592[3])
            { /* block id: 298 */
                for (l_7 = (-11); (l_7 > 29); l_7 = safe_add_func_uint16_t_u_u(l_7, 3))
                { /* block id: 301 */
                    for (p_679->g_43 = 4; (p_679->g_43 >= 0); p_679->g_43 -= 1)
                    { /* block id: 304 */
                        int i;
                        l_6[p_679->g_43] = (((void*)0 != &p_679->g_134[2]) , l_6[p_679->g_43]);
                    }
                }
            }
            else
            { /* block id: 308 */
                l_595--;
            }
            for (p_679->g_356 = 2; (p_679->g_356 >= 0); p_679->g_356 -= 1)
            { /* block id: 313 */
                uint16_t l_598 = 65526UL;
                if (l_598)
                    break;
                (*p_679->g_527) = 0L;
                for (p_679->g_312.f6 = 2; (p_679->g_312.f6 >= 0); p_679->g_312.f6 -= 1)
                { /* block id: 318 */
                    for (p_679->g_202 = 0; (p_679->g_202 <= 2); p_679->g_202 += 1)
                    { /* block id: 321 */
                        return p_679->g_599;
                    }
                    for (p_679->g_599.f4 = 0; (p_679->g_599.f4 <= 2); p_679->g_599.f4 += 1)
                    { /* block id: 326 */
                        return (*p_679->g_399);
                    }
                }
            }
            l_635 = &p_679->g_88[1][1];
        }
        else
        { /* block id: 334 */
            ++l_636;
        }
        for (l_626 = (-22); (l_626 > (-21)); ++l_626)
        { /* block id: 339 */
            int8_t l_644[4][8] = {{0x00L,0x00L,0x00L,0x00L,0x00L,0x00L,0x00L,0x00L},{0x00L,0x00L,0x00L,0x00L,0x00L,0x00L,0x00L,0x00L},{0x00L,0x00L,0x00L,0x00L,0x00L,0x00L,0x00L,0x00L},{0x00L,0x00L,0x00L,0x00L,0x00L,0x00L,0x00L,0x00L}};
            int32_t l_645 = 0x2704480EL;
            int32_t l_646 = 1L;
            int32_t l_647 = 0x2DE332E5L;
            int64_t *l_654 = &p_679->g_653.f4;
            int64_t l_673 = 0x5296BC7287C65825L;
            int i, j;
            if ((l_641 != (p_679->g_134[2] , &p_679->g_37)))
            { /* block id: 340 */
                int16_t l_642[4];
                int32_t l_643[1][5];
                int i, j;
                for (i = 0; i < 4; i++)
                    l_642[i] = 0x41A2L;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 5; j++)
                        l_643[i][j] = (-1L);
                }
                ++l_648;
            }
            else
            { /* block id: 342 */
                for (p_679->g_157 = 0; (p_679->g_157 > 18); p_679->g_157 = safe_add_func_int64_t_s_s(p_679->g_157, 8))
                { /* block id: 345 */
                    return p_679->g_653;
                }
            }
            l_646 &= ((l_654 != l_586) >= (0xA1E0L >= (safe_div_func_uint16_t_u_u(((safe_mod_func_int32_t_s_s((((safe_add_func_uint64_t_u_u((&p_679->g_554 != &l_559), (safe_sub_func_uint64_t_u_u(p_679->g_312.f7, (p_679->g_3[1][3] , (((safe_lshift_func_uint16_t_u_u(((*l_633)++), 1)) != (safe_sub_func_uint64_t_u_u((l_645 < ((void*)0 == p_679->g_669)), (*l_2)))) >= 0x5123L)))))) | 0UL) == l_644[1][2]), (*p_679->g_384))) || l_673), (*l_591)))));
        }
        return p_679->g_674;
    }
    else
    { /* block id: 353 */
        uint16_t l_675[2][8][5] = {{{0xA126L,0xB4B9L,0x78B2L,0x0178L,0xA126L},{0xA126L,0xB4B9L,0x78B2L,0x0178L,0xA126L},{0xA126L,0xB4B9L,0x78B2L,0x0178L,0xA126L},{0xA126L,0xB4B9L,0x78B2L,0x0178L,0xA126L},{0xA126L,0xB4B9L,0x78B2L,0x0178L,0xA126L},{0xA126L,0xB4B9L,0x78B2L,0x0178L,0xA126L},{0xA126L,0xB4B9L,0x78B2L,0x0178L,0xA126L},{0xA126L,0xB4B9L,0x78B2L,0x0178L,0xA126L}},{{0xA126L,0xB4B9L,0x78B2L,0x0178L,0xA126L},{0xA126L,0xB4B9L,0x78B2L,0x0178L,0xA126L},{0xA126L,0xB4B9L,0x78B2L,0x0178L,0xA126L},{0xA126L,0xB4B9L,0x78B2L,0x0178L,0xA126L},{0xA126L,0xB4B9L,0x78B2L,0x0178L,0xA126L},{0xA126L,0xB4B9L,0x78B2L,0x0178L,0xA126L},{0xA126L,0xB4B9L,0x78B2L,0x0178L,0xA126L},{0xA126L,0xB4B9L,0x78B2L,0x0178L,0xA126L}}};
        int32_t *l_678[6];
        int i, j, k;
        for (i = 0; i < 6; i++)
            l_678[i] = &p_679->g_653.f7;
        l_675[0][4][2]++;
        (*p_679->g_383) = (void*)0;
        (*p_679->g_383) = l_678[1];
    }
    return (***p_679->g_669);
}


/* ------------------------------------------ */
/* 
 * reads : p_679->g_383 p_679->g_160 p_679->g_202 p_679->g_489 p_679->g_157 p_679->g_3 p_679->g_72 p_679->g_43 p_679->g_17 p_679->g_312.f1 p_679->g_527 p_679->g_400.f7 p_679->g_400.f0 p_679->g_399 p_679->g_400 p_679->g_212 p_679->g_384
 * writes: p_679->g_384 p_679->g_160 p_679->g_37 p_679->g_43 p_679->g_489 p_679->g_312.f1 p_679->g_400.f7 p_679->g_399 p_679->g_3
 */
struct S0  func_18(int64_t  p_19, int32_t ** p_20, int32_t  p_21, struct S2 * p_679)
{ /* block id: 263 */
    int32_t *l_503 = (void*)0;
    uint64_t *l_504 = &p_679->g_160;
    struct S0 **l_507 = &p_679->g_399;
    int32_t l_512[4][5][7] = {{{0x1E787CD8L,0x320839FFL,0x23FB7F2EL,0L,0x41253F84L,(-3L),(-7L)},{0x1E787CD8L,0x320839FFL,0x23FB7F2EL,0L,0x41253F84L,(-3L),(-7L)},{0x1E787CD8L,0x320839FFL,0x23FB7F2EL,0L,0x41253F84L,(-3L),(-7L)},{0x1E787CD8L,0x320839FFL,0x23FB7F2EL,0L,0x41253F84L,(-3L),(-7L)},{0x1E787CD8L,0x320839FFL,0x23FB7F2EL,0L,0x41253F84L,(-3L),(-7L)}},{{0x1E787CD8L,0x320839FFL,0x23FB7F2EL,0L,0x41253F84L,(-3L),(-7L)},{0x1E787CD8L,0x320839FFL,0x23FB7F2EL,0L,0x41253F84L,(-3L),(-7L)},{0x1E787CD8L,0x320839FFL,0x23FB7F2EL,0L,0x41253F84L,(-3L),(-7L)},{0x1E787CD8L,0x320839FFL,0x23FB7F2EL,0L,0x41253F84L,(-3L),(-7L)},{0x1E787CD8L,0x320839FFL,0x23FB7F2EL,0L,0x41253F84L,(-3L),(-7L)}},{{0x1E787CD8L,0x320839FFL,0x23FB7F2EL,0L,0x41253F84L,(-3L),(-7L)},{0x1E787CD8L,0x320839FFL,0x23FB7F2EL,0L,0x41253F84L,(-3L),(-7L)},{0x1E787CD8L,0x320839FFL,0x23FB7F2EL,0L,0x41253F84L,(-3L),(-7L)},{0x1E787CD8L,0x320839FFL,0x23FB7F2EL,0L,0x41253F84L,(-3L),(-7L)},{0x1E787CD8L,0x320839FFL,0x23FB7F2EL,0L,0x41253F84L,(-3L),(-7L)}},{{0x1E787CD8L,0x320839FFL,0x23FB7F2EL,0L,0x41253F84L,(-3L),(-7L)},{0x1E787CD8L,0x320839FFL,0x23FB7F2EL,0L,0x41253F84L,(-3L),(-7L)},{0x1E787CD8L,0x320839FFL,0x23FB7F2EL,0L,0x41253F84L,(-3L),(-7L)},{0x1E787CD8L,0x320839FFL,0x23FB7F2EL,0L,0x41253F84L,(-3L),(-7L)},{0x1E787CD8L,0x320839FFL,0x23FB7F2EL,0L,0x41253F84L,(-3L),(-7L)}}};
    int32_t l_515 = 0x0B35446DL;
    int32_t l_516[2][1][1];
    uint8_t *l_519 = &p_679->g_202;
    uint8_t **l_520 = &p_679->g_489;
    uint64_t *l_523 = &p_679->g_312.f1;
    int64_t l_526[5] = {0x5F11049FC3BE30E4L,0x5F11049FC3BE30E4L,0x5F11049FC3BE30E4L,0x5F11049FC3BE30E4L,0x5F11049FC3BE30E4L};
    uint64_t **l_540 = &l_504;
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 1; k++)
                l_516[i][j][k] = 1L;
        }
    }
    (*p_679->g_383) = l_503;
    (*p_679->g_383) = func_56((++(*l_504)), (((p_679->g_202 , (void*)0) == l_507) , ((0x32540B06L <= (~(l_516[0][0][0] |= ((safe_div_func_int32_t_s_s((safe_mod_func_uint64_t_u_u((l_512[0][4][5] ^ (p_19 ^ (l_515 = ((*p_679->g_489) || (((safe_rshift_func_uint16_t_u_u(((void*)0 == &l_504), FAKE_DIVERGE(p_679->local_0_offset, get_local_id(0), 10))) > 0x4C8A8788L) || p_679->g_157))))), 0x0AAB86F4370587FDL)), (-9L))) , (**p_20))))) && GROUP_DIVERGE(1, 1))), p_679);
    (*p_679->g_527) ^= (safe_mul_func_int8_t_s_s((((*l_520) = l_519) == ((safe_mod_func_uint32_t_u_u(((--(*l_523)) , l_526[1]), (**p_20))) , l_519)), (p_679->g_3[2][1] | (-9L))));
    (**p_20) = (((l_523 == ((*l_540) = ((((p_679->g_160 &= (safe_add_func_int16_t_s_s((safe_add_func_int64_t_s_s(p_679->g_400[0].f0, (safe_lshift_func_uint8_t_u_u(p_21, 6)))), (0UL & (safe_mul_func_uint16_t_u_u(((((*l_507) = ((GROUP_DIVERGE(2, 1) > ((safe_mod_func_uint32_t_u_u(4294967295UL, (safe_rshift_func_uint8_t_u_u((((((p_679->g_400[0].f0 , (((*p_679->g_399) , &l_507) != (p_19 , (void*)0))) && p_21) <= 0x67E4L) , p_21) ^ p_679->g_3[2][1]), 3)))) < p_19)) , (*l_507))) == (void*)0) || p_679->g_212), p_21)))))) <= 0L) , GROUP_DIVERGE(0, 1)) , (void*)0))) ^ (**p_20)) , (**p_679->g_383));
    return (*p_679->g_399);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint8_t  func_24(int32_t  p_25, int32_t ** p_26, uint32_t  p_27, struct S2 * p_679)
{ /* block id: 260 */
    int32_t *l_497[7];
    int8_t l_498[2];
    uint16_t l_499 = 65534UL;
    int i;
    for (i = 0; i < 7; i++)
        l_497[i] = &p_679->g_312.f7;
    for (i = 0; i < 2; i++)
        l_498[i] = 6L;
    l_499++;
    return p_25;
}


/* ------------------------------------------ */
/* 
 * reads : p_679->g_172 p_679->g_383 p_679->g_384
 * writes: p_679->g_172
 */
int32_t * func_28(int32_t * p_29, int32_t * p_30, struct S2 * p_679)
{ /* block id: 256 */
    uint32_t l_494 = 0xD0AB41B4L;
    int32_t *l_495 = &p_679->g_172[1][1][2];
    (*l_495) ^= l_494;
    return (*p_679->g_383);
}


/* ------------------------------------------ */
/* 
 * reads : p_679->g_3 p_679->g_72 p_679->g_37 p_679->g_43 p_679->g_17 p_679->g_114 p_679->g_88 p_679->g_190 p_679->g_160 p_679->g_202 p_679->g_172 p_679->g_209 p_679->g_122 p_679->g_312.f4 p_679->g_312.f2 p_679->g_163 p_679->g_312.f6 p_679->g_312.f7 p_679->g_356 p_679->g_312.f5 p_679->g_383 p_679->g_312.f1 p_679->g_399 p_679->g_384 p_679->g_400.f3 p_679->g_400.f2 p_679->g_400.f1 p_679->g_312.f3 p_679->g_400.f5 p_679->g_243 p_679->g_132.f1 p_679->g_157 p_679->g_488 p_679->g_490
 * writes: p_679->g_43 p_679->g_37 p_679->g_114 p_679->g_122 p_679->g_88 p_679->g_190 p_679->g_160 p_679->g_132.f2 p_679->g_202 p_679->g_209 p_679->g_312.f2 p_679->g_356 p_679->g_312.f7 p_679->g_312.f5 p_679->g_400.f2 p_679->g_400.f5 p_679->g_132.f1 p_679->g_384 p_679->g_157 p_679->g_400.f4 p_679->g_488
 */
int32_t * func_31(uint16_t  p_32, int32_t  p_33, int32_t  p_34, int16_t  p_35, struct S2 * p_679)
{ /* block id: 15 */
    int32_t *l_42 = &p_679->g_43;
    int32_t l_255 = (-1L);
    uint16_t *l_256 = &p_679->g_190;
    int32_t l_433 = 1L;
    int32_t l_438 = 0x5CB08D1FL;
    int32_t l_439[2][7];
    uint16_t l_450[1];
    uint32_t *l_485 = &p_679->g_312.f3;
    uint32_t **l_484[6][2] = {{&l_485,&l_485},{&l_485,&l_485},{&l_485,&l_485},{&l_485,&l_485},{&l_485,&l_485},{&l_485,&l_485}};
    int32_t *l_491 = &p_679->g_312.f5;
    int i, j;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 7; j++)
            l_439[i][j] = 0x5D0DB4E0L;
    }
    for (i = 0; i < 1; i++)
        l_450[i] = 0xFADDL;
    for (p_32 = 0; (p_32 > 31); ++p_32)
    { /* block id: 18 */
        int32_t *l_41 = &p_679->g_3[1][0];
        return l_41;
    }
    if (((*l_42) = p_33))
    { /* block id: 22 */
        int32_t *l_252 = &p_679->g_134[1].f2;
        int32_t *l_253 = &p_679->g_134[1].f2;
        int32_t *l_254[3];
        uint16_t **l_382 = &l_256;
        int32_t l_427 = 0x7E1F3F5BL;
        int32_t *l_428 = &l_427;
        int32_t l_440 = 2L;
        int32_t l_442 = 7L;
        int32_t l_443 = 0x6355B149L;
        int32_t l_444 = (-9L);
        uint32_t l_445 = 0x7512BA3EL;
        uint32_t *l_482 = (void*)0;
        uint32_t **l_481 = &l_482;
        int i;
        for (i = 0; i < 3; i++)
            l_254[i] = &p_679->g_134[1].f2;
        if (((*l_428) = (((safe_mod_func_int32_t_s_s(func_46(((*l_382) = func_49((l_255 |= func_54(func_56(p_34, p_679->g_3[1][0], p_679), p_679)), l_42, l_256, &l_42, p_679)), p_679->g_383, p_679), p_32)) ^ l_427) , 1L)))
        { /* block id: 217 */
            int8_t l_431 = (-1L);
            int32_t *l_432 = &p_679->g_400[0].f5;
            int32_t *l_434 = (void*)0;
            int32_t *l_435 = (void*)0;
            int32_t *l_436 = &l_433;
            int32_t *l_437[4] = {&p_679->g_312.f5,&p_679->g_312.f5,&p_679->g_312.f5,&p_679->g_312.f5};
            int16_t l_441 = (-1L);
            int i;
            (*l_42) = ((safe_add_func_uint32_t_u_u((p_35 , FAKE_DIVERGE(p_679->local_2_offset, get_local_id(2), 10)), (l_431 , FAKE_DIVERGE(p_679->local_2_offset, get_local_id(2), 10)))) ^ p_679->g_243);
            l_445--;
        }
        else
        { /* block id: 220 */
            int32_t *l_448 = &l_438;
            int32_t *l_449[8];
            int i;
            for (i = 0; i < 8; i++)
                l_449[i] = (void*)0;
lbl_455:
            l_450[0]--;
            for (p_679->g_132.f1 = 0; (p_679->g_132.f1 <= 5); p_679->g_132.f1++)
            { /* block id: 224 */
                struct S0 **l_464 = &p_679->g_399;
                if (p_33)
                    goto lbl_455;
                (*p_679->g_383) = (*p_679->g_383);
                for (p_679->g_157 = 1; (p_679->g_157 >= 49); p_679->g_157 = safe_add_func_int16_t_s_s(p_679->g_157, 3))
                { /* block id: 229 */
                    uint64_t *l_460 = &p_679->g_160;
                    struct S0 **l_461 = (void*)0;
                    struct S0 ***l_462 = (void*)0;
                    struct S0 ***l_463 = &l_461;
                    int64_t *l_470 = &p_679->g_400[0].f4;
                    int8_t l_473 = (-2L);
                    l_433 &= ((((safe_rshift_func_uint8_t_u_s((((*l_460) = 0x02108343E9715897L) , (((*l_463) = l_461) == l_464)), ((((*l_470) = (safe_sub_func_int16_t_s_s((0L <= 3L), (safe_unary_minus_func_uint32_t_u((safe_rshift_func_int8_t_s_s((*l_42), 1))))))) , (1L | (0x02L < (safe_add_func_uint8_t_u_u(6UL, l_473))))) | 0x7D57D716L))) , p_679->g_17) , p_679->g_356) , (*l_428));
                }
            }
            return (*p_679->g_383);
        }
        for (p_679->g_312.f2 = (-18); (p_679->g_312.f2 <= (-4)); p_679->g_312.f2 = safe_add_func_int16_t_s_s(p_679->g_312.f2, 6))
        { /* block id: 240 */
            int32_t *l_476 = &p_679->g_88[0][3];
            int32_t *l_477[9][6] = {{(void*)0,(void*)0,&p_679->g_88[1][1],&p_679->g_400[0].f7,&p_679->g_88[1][1],(void*)0},{(void*)0,(void*)0,&p_679->g_88[1][1],&p_679->g_400[0].f7,&p_679->g_88[1][1],(void*)0},{(void*)0,(void*)0,&p_679->g_88[1][1],&p_679->g_400[0].f7,&p_679->g_88[1][1],(void*)0},{(void*)0,(void*)0,&p_679->g_88[1][1],&p_679->g_400[0].f7,&p_679->g_88[1][1],(void*)0},{(void*)0,(void*)0,&p_679->g_88[1][1],&p_679->g_400[0].f7,&p_679->g_88[1][1],(void*)0},{(void*)0,(void*)0,&p_679->g_88[1][1],&p_679->g_400[0].f7,&p_679->g_88[1][1],(void*)0},{(void*)0,(void*)0,&p_679->g_88[1][1],&p_679->g_400[0].f7,&p_679->g_88[1][1],(void*)0},{(void*)0,(void*)0,&p_679->g_88[1][1],&p_679->g_400[0].f7,&p_679->g_88[1][1],(void*)0},{(void*)0,(void*)0,&p_679->g_88[1][1],&p_679->g_400[0].f7,&p_679->g_88[1][1],(void*)0}};
            uint16_t l_478[9] = {65535UL,65529UL,65535UL,65535UL,65529UL,65535UL,65535UL,65529UL,65535UL};
            uint32_t ***l_483[3];
            int i, j;
            for (i = 0; i < 3; i++)
                l_483[i] = &l_481;
            (*l_42) ^= (p_32 > (FAKE_DIVERGE(p_679->group_0_offset, get_group_id(0), 10) & ((*l_428) = p_33)));
            --l_478[1];
            l_484[5][1] = l_481;
        }
        for (l_440 = 7; (l_440 >= 3); l_440--)
        { /* block id: 248 */
            p_679->g_488 = p_679->g_488;
        }
    }
    else
    { /* block id: 251 */
        return p_679->g_490;
    }
    return l_491;
}


/* ------------------------------------------ */
/* 
 * reads : p_679->g_312.f1 p_679->g_399 p_679->g_37 p_679->g_3 p_679->g_384 p_679->g_400.f3 p_679->g_400.f2 p_679->g_17 p_679->g_172 p_679->g_163 p_679->g_400.f1 p_679->g_202 p_679->g_312.f3 p_679->g_400.f5 p_679->g_383
 * writes: p_679->g_190 p_679->g_114 p_679->g_88 p_679->g_312.f2 p_679->g_400.f2 p_679->g_202 p_679->g_400.f5
 */
int32_t  func_46(uint16_t * p_47, int32_t ** p_48, struct S2 * p_679)
{ /* block id: 201 */
    uint64_t l_385 = 0UL;
    int8_t *l_396 = &p_679->g_114[3][0];
    int16_t *l_397[8][2] = {{(void*)0,&p_679->g_312.f2},{(void*)0,&p_679->g_312.f2},{(void*)0,&p_679->g_312.f2},{(void*)0,&p_679->g_312.f2},{(void*)0,&p_679->g_312.f2},{(void*)0,&p_679->g_312.f2},{(void*)0,&p_679->g_312.f2},{(void*)0,&p_679->g_312.f2}};
    int32_t l_398 = 0L;
    int32_t *l_401 = &p_679->g_132.f2;
    int32_t *l_402 = &p_679->g_134[1].f2;
    int32_t l_403[9] = {0x56BA8B41L,0x56BA8B41L,0x56BA8B41L,0x56BA8B41L,0x56BA8B41L,0x56BA8B41L,0x56BA8B41L,0x56BA8B41L,0x56BA8B41L};
    int32_t *l_404[7][2][9] = {{{&p_679->g_17,&p_679->g_172[1][1][2],&p_679->g_312.f5,&p_679->g_3[2][1],&p_679->g_3[1][1],&p_679->g_88[1][1],&p_679->g_172[1][1][2],&p_679->g_312.f5,&p_679->g_400[0].f7},{&p_679->g_17,&p_679->g_172[1][1][2],&p_679->g_312.f5,&p_679->g_3[2][1],&p_679->g_3[1][1],&p_679->g_88[1][1],&p_679->g_172[1][1][2],&p_679->g_312.f5,&p_679->g_400[0].f7}},{{&p_679->g_17,&p_679->g_172[1][1][2],&p_679->g_312.f5,&p_679->g_3[2][1],&p_679->g_3[1][1],&p_679->g_88[1][1],&p_679->g_172[1][1][2],&p_679->g_312.f5,&p_679->g_400[0].f7},{&p_679->g_17,&p_679->g_172[1][1][2],&p_679->g_312.f5,&p_679->g_3[2][1],&p_679->g_3[1][1],&p_679->g_88[1][1],&p_679->g_172[1][1][2],&p_679->g_312.f5,&p_679->g_400[0].f7}},{{&p_679->g_17,&p_679->g_172[1][1][2],&p_679->g_312.f5,&p_679->g_3[2][1],&p_679->g_3[1][1],&p_679->g_88[1][1],&p_679->g_172[1][1][2],&p_679->g_312.f5,&p_679->g_400[0].f7},{&p_679->g_17,&p_679->g_172[1][1][2],&p_679->g_312.f5,&p_679->g_3[2][1],&p_679->g_3[1][1],&p_679->g_88[1][1],&p_679->g_172[1][1][2],&p_679->g_312.f5,&p_679->g_400[0].f7}},{{&p_679->g_17,&p_679->g_172[1][1][2],&p_679->g_312.f5,&p_679->g_3[2][1],&p_679->g_3[1][1],&p_679->g_88[1][1],&p_679->g_172[1][1][2],&p_679->g_312.f5,&p_679->g_400[0].f7},{&p_679->g_17,&p_679->g_172[1][1][2],&p_679->g_312.f5,&p_679->g_3[2][1],&p_679->g_3[1][1],&p_679->g_88[1][1],&p_679->g_172[1][1][2],&p_679->g_312.f5,&p_679->g_400[0].f7}},{{&p_679->g_17,&p_679->g_172[1][1][2],&p_679->g_312.f5,&p_679->g_3[2][1],&p_679->g_3[1][1],&p_679->g_88[1][1],&p_679->g_172[1][1][2],&p_679->g_312.f5,&p_679->g_400[0].f7},{&p_679->g_17,&p_679->g_172[1][1][2],&p_679->g_312.f5,&p_679->g_3[2][1],&p_679->g_3[1][1],&p_679->g_88[1][1],&p_679->g_172[1][1][2],&p_679->g_312.f5,&p_679->g_400[0].f7}},{{&p_679->g_17,&p_679->g_172[1][1][2],&p_679->g_312.f5,&p_679->g_3[2][1],&p_679->g_3[1][1],&p_679->g_88[1][1],&p_679->g_172[1][1][2],&p_679->g_312.f5,&p_679->g_400[0].f7},{&p_679->g_17,&p_679->g_172[1][1][2],&p_679->g_312.f5,&p_679->g_3[2][1],&p_679->g_3[1][1],&p_679->g_88[1][1],&p_679->g_172[1][1][2],&p_679->g_312.f5,&p_679->g_400[0].f7}},{{&p_679->g_17,&p_679->g_172[1][1][2],&p_679->g_312.f5,&p_679->g_3[2][1],&p_679->g_3[1][1],&p_679->g_88[1][1],&p_679->g_172[1][1][2],&p_679->g_312.f5,&p_679->g_400[0].f7},{&p_679->g_17,&p_679->g_172[1][1][2],&p_679->g_312.f5,&p_679->g_3[2][1],&p_679->g_3[1][1],&p_679->g_88[1][1],&p_679->g_172[1][1][2],&p_679->g_312.f5,&p_679->g_400[0].f7}}};
    uint32_t l_407 = 0x8D64E351L;
    uint32_t l_422 = 0x60D218D4L;
    uint64_t *l_424[3][4][8] = {{{&p_679->g_157,&l_385,(void*)0,(void*)0,&p_679->g_157,&l_385,&l_385,&p_679->g_160},{&p_679->g_157,&l_385,(void*)0,(void*)0,&p_679->g_157,&l_385,&l_385,&p_679->g_160},{&p_679->g_157,&l_385,(void*)0,(void*)0,&p_679->g_157,&l_385,&l_385,&p_679->g_160},{&p_679->g_157,&l_385,(void*)0,(void*)0,&p_679->g_157,&l_385,&l_385,&p_679->g_160}},{{&p_679->g_157,&l_385,(void*)0,(void*)0,&p_679->g_157,&l_385,&l_385,&p_679->g_160},{&p_679->g_157,&l_385,(void*)0,(void*)0,&p_679->g_157,&l_385,&l_385,&p_679->g_160},{&p_679->g_157,&l_385,(void*)0,(void*)0,&p_679->g_157,&l_385,&l_385,&p_679->g_160},{&p_679->g_157,&l_385,(void*)0,(void*)0,&p_679->g_157,&l_385,&l_385,&p_679->g_160}},{{&p_679->g_157,&l_385,(void*)0,(void*)0,&p_679->g_157,&l_385,&l_385,&p_679->g_160},{&p_679->g_157,&l_385,(void*)0,(void*)0,&p_679->g_157,&l_385,&l_385,&p_679->g_160},{&p_679->g_157,&l_385,(void*)0,(void*)0,&p_679->g_157,&l_385,&l_385,&p_679->g_160},{&p_679->g_157,&l_385,(void*)0,(void*)0,&p_679->g_157,&l_385,&l_385,&p_679->g_160}}};
    uint64_t **l_423 = &l_424[1][2][0];
    struct S0 **l_425 = &p_679->g_399;
    struct S0 ***l_426 = &l_425;
    int i, j, k;
    --l_385;
    p_679->g_88[4][3] = ((safe_mul_func_uint16_t_u_u(((l_385 <= (safe_rshift_func_uint8_t_u_u((safe_add_func_int32_t_s_s((safe_rshift_func_int8_t_s_u(((*l_396) = ((((((*p_47) = l_385) & 0x5DC7L) && l_385) >= l_385) == l_385)), ((((l_403[3] ^= ((l_398 |= p_679->g_312.f1) || (p_679->g_399 != (void*)0))) , p_679->g_37) != 0UL) >= p_679->g_3[2][0]))), (-5L))), 3))) , 0x0588L), 0UL)) , (-1L));
    p_679->g_400[0].f5 = (p_679->g_88[1][1] = (safe_sub_func_int16_t_s_s(((p_679->g_202 = (l_407 , (((*l_396) = (((p_679->g_384 == (((safe_mod_func_int64_t_s_s((p_679->g_400[0].f3 == (p_679->g_400[0].f2 &= (p_679->g_312.f2 = 1L))), (safe_lshift_func_uint16_t_u_u(((**p_48) | (((l_404[0][1][5] == p_679->g_384) > ((((safe_mod_func_uint16_t_u_u((safe_lshift_func_int16_t_s_u((safe_mul_func_int8_t_s_s(((safe_mul_func_uint8_t_u_u(p_679->g_172[1][1][2], ((((safe_mul_func_int8_t_s_s(p_679->g_400[0].f3, 1L)) & (-1L)) & p_679->g_163) != 1L))) && (*p_679->g_384)), p_679->g_400[0].f1)), 14)), 0x4871L)) | FAKE_DIVERGE(p_679->local_1_offset, get_local_id(1), 10)) <= p_679->g_202) ^ p_679->g_3[1][3])) < p_679->g_312.f3)), p_679->g_400[0].f5)))) <= l_422) , l_404[3][1][5])) , l_423) == (void*)0)) >= 9L))) , 5L), 0UL)));
    (*l_426) = l_425;
    return (**p_679->g_383);
}


/* ------------------------------------------ */
/* 
 * reads : p_679->g_88 p_679->g_43 p_679->g_202 p_679->g_160 p_679->g_172 p_679->g_37 p_679->g_209 p_679->g_122 p_679->g_312.f4 p_679->g_114 p_679->g_312.f2 p_679->g_163 p_679->g_3 p_679->g_312.f6 p_679->g_190 p_679->g_312.f7 p_679->g_17 p_679->g_356 p_679->g_312.f5
 * writes: p_679->g_88 p_679->g_43 p_679->g_190 p_679->g_160 p_679->g_132.f2 p_679->g_202 p_679->g_209 p_679->g_312.f2 p_679->g_37 p_679->g_114 p_679->g_356 p_679->g_312.f7 p_679->g_312.f5
 */
uint16_t * func_49(int32_t  p_50, int32_t * p_51, uint16_t * p_52, int32_t ** p_53, struct S2 * p_679)
{ /* block id: 135 */
    uint32_t l_259 = 1UL;
    int32_t l_264 = 8L;
    int64_t l_265 = 0x1DFE08E61A973819L;
    int32_t l_267 = 0x44C6B06FL;
    int32_t l_269 = 2L;
    struct S0 *l_311 = &p_679->g_312;
    struct S0 **l_310[2];
    int i;
    for (i = 0; i < 2; i++)
        l_310[i] = &l_311;
lbl_357:
    l_259 = (safe_sub_func_int32_t_s_s(0L, 1L));
    (**p_53) &= 2L;
    for (p_679->g_190 = 0; (p_679->g_190 > 48); p_679->g_190++)
    { /* block id: 140 */
        uint8_t l_273 = 0x76L;
        int32_t l_341[3][3][2] = {{{0x73697CACL,0x73697CACL},{0x73697CACL,0x73697CACL},{0x73697CACL,0x73697CACL}},{{0x73697CACL,0x73697CACL},{0x73697CACL,0x73697CACL},{0x73697CACL,0x73697CACL}},{{0x73697CACL,0x73697CACL},{0x73697CACL,0x73697CACL},{0x73697CACL,0x73697CACL}}};
        uint8_t l_355 = 254UL;
        uint8_t *l_362 = &l_355;
        int32_t *l_381[3][5] = {{&p_679->g_17,&p_679->g_17,&p_679->g_88[1][1],(void*)0,(void*)0},{&p_679->g_17,&p_679->g_17,&p_679->g_88[1][1],(void*)0,(void*)0},{&p_679->g_17,&p_679->g_17,&p_679->g_88[1][1],(void*)0,(void*)0}};
        int i, j, k;
        for (p_679->g_160 = 0; (p_679->g_160 <= 3); p_679->g_160 += 1)
        { /* block id: 143 */
            int32_t l_270 = (-2L);
            int32_t l_342 = (-7L);
            int8_t *l_353 = &p_679->g_114[0][0];
            int32_t l_354 = 0x5B11C017L;
            int i, j;
            for (p_50 = 3; (p_50 >= 0); p_50 -= 1)
            { /* block id: 146 */
                int32_t l_271 = (-9L);
                int32_t l_272 = 0x512F06FBL;
                int i, j;
                (*p_53) = &p_679->g_88[(p_679->g_160 + 1)][p_50];
                for (p_679->g_132.f2 = 3; (p_679->g_132.f2 >= 0); p_679->g_132.f2 -= 1)
                { /* block id: 150 */
                    int32_t l_266 = 8L;
                    int32_t l_268 = 0x00B3AA98L;
                    uint32_t l_286 = 4294967295UL;
                    int i, j;
                    (1 + 1);
                }
            }
            for (p_679->g_202 = 0; (p_679->g_202 <= 2); p_679->g_202 += 1)
            { /* block id: 165 */
                uint8_t l_293[6] = {254UL,0UL,254UL,254UL,0UL,254UL};
                int i, j, k;
                if (((((l_270 &= ((((void*)0 == p_51) || 0xD4500237L) == ((p_679->g_88[p_679->g_160][(p_679->g_202 + 1)] | (p_679->g_172[(p_679->g_160 + 3)][(p_679->g_202 + 1)][p_679->g_202] >= (+0x5E2CL))) <= (safe_add_func_uint16_t_u_u((safe_add_func_uint8_t_u_u((((-1L) ^ (safe_mod_func_uint16_t_u_u((&p_679->g_114[0][0] != (((p_679->g_172[(p_679->g_202 + 6)][p_679->g_202][p_679->g_202] <= 0x3EDF84B7907BC61FL) ^ 0L) , (void*)0)), p_679->g_37))) > l_273), 1UL)), 0x1664L))))) | l_293[2]) > p_679->g_88[1][1]) , p_679->g_172[(p_679->g_160 + 3)][(p_679->g_202 + 1)][p_679->g_202]))
                { /* block id: 167 */
                    struct S0 **l_322 = &l_311;
                    int32_t l_323 = 0x68358677L;
                    for (p_50 = 0; (p_50 <= 2); p_50 += 1)
                    { /* block id: 170 */
                        union U1 **l_294 = (void*)0;
                        union U1 **l_295 = &p_679->g_209;
                        int32_t l_321 = 0L;
                        int16_t *l_324 = &p_679->g_312.f2;
                        uint16_t *l_339 = &p_679->g_37;
                        uint8_t *l_340[4];
                        int i, j, k;
                        for (i = 0; i < 4; i++)
                            l_340[i] = &l_273;
                        (*l_295) = p_679->g_209;
                        (*p_51) ^= (safe_add_func_int8_t_s_s((((*l_324) ^= (((safe_div_func_uint8_t_u_u((p_50 | (safe_lshift_func_int8_t_s_s(((safe_add_func_int32_t_s_s((safe_div_func_uint32_t_u_u((safe_sub_func_uint16_t_u_u((safe_mod_func_uint64_t_u_u((5UL >= ((l_310[1] == ((((safe_sub_func_int8_t_s_s(((safe_sub_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u((0xC64B8D93F8C166A0L & (l_270 <= (safe_div_func_uint16_t_u_u((((p_679->g_88[1][2] < ((p_679->g_172[1][1][2] >= (&l_273 != &p_679->g_202)) > FAKE_DIVERGE(p_679->group_1_offset, get_group_id(1), 10))) , &l_293[2]) == (void*)0), 0x359AL)))), p_50)), p_50)) ^ p_679->g_122), p_50)) , p_50) == l_321) , l_322)) , 6L)), 18446744073709551613UL)), 1L)), p_679->g_37)), 0x17674739L)) || p_679->g_312.f4), 3))), l_323)) || p_679->g_114[4][0]) , 0x23C3L)) && FAKE_DIVERGE(p_679->local_2_offset, get_local_id(2), 10)), p_679->g_163));
                        l_342 ^= ((safe_mod_func_int64_t_s_s((safe_add_func_uint16_t_u_u(0x14FBL, (safe_sub_func_uint64_t_u_u(((l_341[0][2][0] |= (p_50 , ((p_679->g_3[2][1] , (0x9AB3L > (p_679->g_160 >= (safe_sub_func_int16_t_s_s(((safe_rshift_func_uint16_t_u_s((~l_270), ((p_679->g_114[0][0] ^= (safe_mul_func_uint16_t_u_u(((*l_339) = (safe_mod_func_uint32_t_u_u((((void*)0 == p_679->g_209) && (p_679->g_88[0][2] = (-9L))), l_321))), p_679->g_312.f6))) , l_323))) != (*p_51)), l_293[2]))))) || p_679->g_190))) == p_679->g_312.f7), p_50)))), 0x3463BC3F93BFE93EL)) > GROUP_DIVERGE(1, 1));
                    }
                    return p_52;
                }
                else
                { /* block id: 181 */
                    return &p_679->g_190;
                }
            }
            if (((p_679->g_356 |= (safe_add_func_uint8_t_u_u(((0x562257021491155EL ^ p_679->g_88[p_679->g_160][p_679->g_160]) || (1L || ((*p_51) & ((p_50 == FAKE_DIVERGE(p_679->global_0_offset, get_global_id(0), 10)) == ((((safe_sub_func_int8_t_s_s(p_679->g_312.f2, (safe_sub_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s((p_679->g_114[0][0] , (p_679->g_37 = (safe_mul_func_uint8_t_u_u(((void*)0 != l_353), p_679->g_163)))), l_354)), 1UL)))) > l_355) != l_269) || 1UL))))), p_679->g_17))) ^ p_679->g_3[2][1]))
            { /* block id: 187 */
                if (p_679->g_312.f6)
                    goto lbl_357;
            }
            else
            { /* block id: 189 */
                for (p_679->g_312.f7 = 0; p_679->g_312.f7 < 3; p_679->g_312.f7 += 1)
                {
                    for (p_679->g_132.f2 = 0; p_679->g_132.f2 < 3; p_679->g_132.f2 += 1)
                    {
                        for (p_679->g_202 = 0; p_679->g_202 < 2; p_679->g_202 += 1)
                        {
                            l_341[p_679->g_312.f7][p_679->g_132.f2][p_679->g_202] = 0x40206790L;
                        }
                    }
                }
                if (p_679->g_37)
                    goto lbl_357;
            }
        }
        p_679->g_312.f5 ^= (l_269 = ((*p_51) = (safe_add_func_int16_t_s_s(((safe_mul_func_uint8_t_u_u(((*l_362)++), (safe_add_func_int32_t_s_s(1L, ((l_267 > (safe_lshift_func_uint16_t_u_s((safe_div_func_int64_t_s_s(p_679->g_312.f4, ((**p_53) & (safe_div_func_int16_t_s_s(((safe_lshift_func_uint8_t_u_s(((safe_mul_func_uint16_t_u_u((safe_rshift_func_int16_t_s_s((p_679->g_3[2][1] , ((p_679->g_43 , p_679->g_356) > (safe_rshift_func_uint8_t_u_s(p_50, l_269)))), 4)), p_679->g_43)) , l_341[0][1][1]), 0)) | p_679->g_122), 65535UL))))), 9))) && p_679->g_172[1][1][2]))))) , l_267), p_679->g_202))));
    }
    return p_52;
}


/* ------------------------------------------ */
/* 
 * reads : p_679->g_43 p_679->g_114 p_679->g_3 p_679->g_88 p_679->g_17
 * writes: p_679->g_43 p_679->g_114 p_679->g_122 p_679->g_88
 */
int32_t  func_54(int32_t * p_55, struct S2 * p_679)
{ /* block id: 45 */
    int32_t l_80[6] = {(-6L),3L,(-6L),(-6L),3L,(-6L)};
    int32_t l_93 = (-1L);
    int32_t l_94 = 0x639DBCFCL;
    int32_t l_97 = 8L;
    int32_t l_98[4][2][5] = {{{0x742E135DL,0x742E135DL,0x742E135DL,0x742E135DL,0x742E135DL},{0x742E135DL,0x742E135DL,0x742E135DL,0x742E135DL,0x742E135DL}},{{0x742E135DL,0x742E135DL,0x742E135DL,0x742E135DL,0x742E135DL},{0x742E135DL,0x742E135DL,0x742E135DL,0x742E135DL,0x742E135DL}},{{0x742E135DL,0x742E135DL,0x742E135DL,0x742E135DL,0x742E135DL},{0x742E135DL,0x742E135DL,0x742E135DL,0x742E135DL,0x742E135DL}},{{0x742E135DL,0x742E135DL,0x742E135DL,0x742E135DL,0x742E135DL},{0x742E135DL,0x742E135DL,0x742E135DL,0x742E135DL,0x742E135DL}}};
    uint32_t l_102 = 5UL;
    int8_t l_210 = 0x3EL;
    uint16_t **l_231 = &p_679->g_72;
    uint16_t **l_234[8][7] = {{&p_679->g_72,&p_679->g_72,&p_679->g_72,&p_679->g_72,&p_679->g_72,&p_679->g_72,&p_679->g_72},{&p_679->g_72,&p_679->g_72,&p_679->g_72,&p_679->g_72,&p_679->g_72,&p_679->g_72,&p_679->g_72},{&p_679->g_72,&p_679->g_72,&p_679->g_72,&p_679->g_72,&p_679->g_72,&p_679->g_72,&p_679->g_72},{&p_679->g_72,&p_679->g_72,&p_679->g_72,&p_679->g_72,&p_679->g_72,&p_679->g_72,&p_679->g_72},{&p_679->g_72,&p_679->g_72,&p_679->g_72,&p_679->g_72,&p_679->g_72,&p_679->g_72,&p_679->g_72},{&p_679->g_72,&p_679->g_72,&p_679->g_72,&p_679->g_72,&p_679->g_72,&p_679->g_72,&p_679->g_72},{&p_679->g_72,&p_679->g_72,&p_679->g_72,&p_679->g_72,&p_679->g_72,&p_679->g_72,&p_679->g_72},{&p_679->g_72,&p_679->g_72,&p_679->g_72,&p_679->g_72,&p_679->g_72,&p_679->g_72,&p_679->g_72}};
    uint64_t *l_245 = &p_679->g_160;
    int i, j, k;
    for (p_679->g_43 = 1; (p_679->g_43 <= 5); p_679->g_43 += 1)
    { /* block id: 48 */
        uint16_t *l_85 = &p_679->g_37;
        int32_t l_92[7] = {0x1F1C2FFFL,6L,0x1F1C2FFFL,0x1F1C2FFFL,6L,0x1F1C2FFFL,0x1F1C2FFFL};
        int32_t l_99 = 9L;
        int8_t *l_121[2];
        union U1 *l_131 = &p_679->g_132;
        int16_t l_152 = (-1L);
        int32_t *l_155 = &p_679->g_88[2][0];
        int32_t **l_154 = &l_155;
        uint64_t *l_169 = &p_679->g_160;
        int i;
        for (i = 0; i < 2; i++)
            l_121[i] = &p_679->g_122;
        if (l_80[p_679->g_43])
        { /* block id: 49 */
            int32_t l_89 = 0x5916079BL;
            int32_t l_95 = (-5L);
            int32_t l_96 = 0x28D514EFL;
            int32_t l_100 = 2L;
            int32_t l_101 = 0L;
            int i;
            if ((safe_mod_func_uint8_t_u_u((safe_div_func_int16_t_s_s((-1L), l_80[p_679->g_43])), l_80[p_679->g_43])))
            { /* block id: 50 */
                uint16_t **l_86 = &l_85;
                int32_t *l_87[5] = {&p_679->g_88[1][1],&p_679->g_88[1][1],&p_679->g_88[1][1],&p_679->g_88[1][1],&p_679->g_88[1][1]};
                int32_t **l_90 = &l_87[4];
                int i;
                l_89 = ((p_55 != &p_679->g_3[1][0]) && (l_80[5] || (((*l_86) = l_85) == &p_679->g_37)));
                (*l_90) = p_55;
            }
            else
            { /* block id: 54 */
                int32_t *l_91[5] = {&p_679->g_88[1][1],&p_679->g_88[1][1],&p_679->g_88[1][1],&p_679->g_88[1][1],&p_679->g_88[1][1]};
                int8_t *l_113[10] = {&p_679->g_114[0][0],&p_679->g_114[0][0],&p_679->g_114[0][0],&p_679->g_114[0][0],&p_679->g_114[0][0],&p_679->g_114[0][0],&p_679->g_114[0][0],&p_679->g_114[0][0],&p_679->g_114[0][0],&p_679->g_114[0][0]};
                int i;
                l_102--;
                for (l_97 = 0; (l_97 <= 5); l_97 += 1)
                { /* block id: 58 */
                    if (l_98[2][1][0])
                        break;
                }
                l_92[3] |= ((safe_mod_func_int8_t_s_s(((1UL && ((p_679->g_88[1][1] &= ((safe_mul_func_uint16_t_u_u((safe_mod_func_uint64_t_u_u((safe_mul_func_int8_t_s_s((p_679->g_114[3][0] |= (p_679->g_43 && l_93)), ((void*)0 != &p_679->g_72))), (safe_sub_func_uint64_t_u_u(1UL, (safe_lshift_func_int8_t_s_s((safe_mul_func_int8_t_s_s(((void*)0 == l_121[0]), (p_679->g_122 = (safe_div_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(0xA5L, 0x7DL)), 0x89B1L))))), p_679->g_3[2][1])))))), 0x1434L)) <= 0x71L)) > (*p_55))) == p_679->g_43), p_679->g_3[2][1])) == 65535UL);
            }
        }
        else
        { /* block id: 66 */
            int32_t *l_129 = (void*)0;
            int32_t *l_130 = &l_97;
            union U1 *l_133 = &p_679->g_134[1];
            uint64_t l_161 = 0x95C5011C820DCB60L;
            int32_t l_183 = 0x2049661DL;
            int32_t l_184 = 0L;
            int32_t l_188 = 1L;
            int32_t l_189 = (-1L);
            (*l_130) ^= (safe_mod_func_int8_t_s_s(0L, 0x78L));
            for (l_94 = 0; (l_94 <= 5); l_94 += 1)
            { /* block id: 70 */
                uint32_t l_153 = 0xD19BEEC0L;
                int32_t l_158 = 0x26F8D6E2L;
                int32_t l_182 = 3L;
                int32_t l_185 = (-1L);
                int32_t l_186[2][10][2] = {{{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L}},{{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L}}};
                int64_t *l_242[5][1][6] = {{{&p_679->g_243,&p_679->g_243,&p_679->g_243,&p_679->g_243,&p_679->g_243,&p_679->g_243}},{{&p_679->g_243,&p_679->g_243,&p_679->g_243,&p_679->g_243,&p_679->g_243,&p_679->g_243}},{{&p_679->g_243,&p_679->g_243,&p_679->g_243,&p_679->g_243,&p_679->g_243,&p_679->g_243}},{{&p_679->g_243,&p_679->g_243,&p_679->g_243,&p_679->g_243,&p_679->g_243,&p_679->g_243}},{{&p_679->g_243,&p_679->g_243,&p_679->g_243,&p_679->g_243,&p_679->g_243,&p_679->g_243}}};
                int16_t l_244[7][3] = {{0x70B4L,0x70B4L,0L},{0x70B4L,0x70B4L,0L},{0x70B4L,0x70B4L,0L},{0x70B4L,0x70B4L,0L},{0x70B4L,0x70B4L,0L},{0x70B4L,0x70B4L,0L},{0x70B4L,0x70B4L,0L}};
                uint64_t **l_246 = &l_169;
                uint64_t **l_247 = (void*)0;
                uint64_t **l_248 = (void*)0;
                uint64_t **l_249 = (void*)0;
                uint64_t *l_251 = &l_161;
                uint64_t **l_250 = &l_251;
                int i, j, k;
                l_133 = l_131;
            }
            return l_93;
        }
    }
    return l_97;
}


/* ------------------------------------------ */
/* 
 * reads : p_679->g_3 p_679->g_72 p_679->g_37 p_679->g_43 p_679->g_17
 * writes: p_679->g_37 p_679->g_43
 */
int32_t * func_56(uint64_t  p_57, int16_t  p_58, struct S2 * p_679)
{ /* block id: 23 */
    uint16_t *l_65 = &p_679->g_37;
    int32_t l_66[4][3][7] = {{{0x1BB39D90L,0x7DD1A1FBL,2L,0x7EBC4D59L,2L,0x7DD1A1FBL,0x1BB39D90L},{0x1BB39D90L,0x7DD1A1FBL,2L,0x7EBC4D59L,2L,0x7DD1A1FBL,0x1BB39D90L},{0x1BB39D90L,0x7DD1A1FBL,2L,0x7EBC4D59L,2L,0x7DD1A1FBL,0x1BB39D90L}},{{0x1BB39D90L,0x7DD1A1FBL,2L,0x7EBC4D59L,2L,0x7DD1A1FBL,0x1BB39D90L},{0x1BB39D90L,0x7DD1A1FBL,2L,0x7EBC4D59L,2L,0x7DD1A1FBL,0x1BB39D90L},{0x1BB39D90L,0x7DD1A1FBL,2L,0x7EBC4D59L,2L,0x7DD1A1FBL,0x1BB39D90L}},{{0x1BB39D90L,0x7DD1A1FBL,2L,0x7EBC4D59L,2L,0x7DD1A1FBL,0x1BB39D90L},{0x1BB39D90L,0x7DD1A1FBL,2L,0x7EBC4D59L,2L,0x7DD1A1FBL,0x1BB39D90L},{0x1BB39D90L,0x7DD1A1FBL,2L,0x7EBC4D59L,2L,0x7DD1A1FBL,0x1BB39D90L}},{{0x1BB39D90L,0x7DD1A1FBL,2L,0x7EBC4D59L,2L,0x7DD1A1FBL,0x1BB39D90L},{0x1BB39D90L,0x7DD1A1FBL,2L,0x7EBC4D59L,2L,0x7DD1A1FBL,0x1BB39D90L},{0x1BB39D90L,0x7DD1A1FBL,2L,0x7EBC4D59L,2L,0x7DD1A1FBL,0x1BB39D90L}}};
    int32_t l_69 = 1L;
    int32_t **l_77 = (void*)0;
    int32_t *l_79[7][7] = {{&p_679->g_3[2][1],&p_679->g_3[2][3],&p_679->g_3[2][1],&p_679->g_3[2][1],&p_679->g_3[2][3],&p_679->g_3[2][1],&p_679->g_3[2][1]},{&p_679->g_3[2][1],&p_679->g_3[2][3],&p_679->g_3[2][1],&p_679->g_3[2][1],&p_679->g_3[2][3],&p_679->g_3[2][1],&p_679->g_3[2][1]},{&p_679->g_3[2][1],&p_679->g_3[2][3],&p_679->g_3[2][1],&p_679->g_3[2][1],&p_679->g_3[2][3],&p_679->g_3[2][1],&p_679->g_3[2][1]},{&p_679->g_3[2][1],&p_679->g_3[2][3],&p_679->g_3[2][1],&p_679->g_3[2][1],&p_679->g_3[2][3],&p_679->g_3[2][1],&p_679->g_3[2][1]},{&p_679->g_3[2][1],&p_679->g_3[2][3],&p_679->g_3[2][1],&p_679->g_3[2][1],&p_679->g_3[2][3],&p_679->g_3[2][1],&p_679->g_3[2][1]},{&p_679->g_3[2][1],&p_679->g_3[2][3],&p_679->g_3[2][1],&p_679->g_3[2][1],&p_679->g_3[2][3],&p_679->g_3[2][1],&p_679->g_3[2][1]},{&p_679->g_3[2][1],&p_679->g_3[2][3],&p_679->g_3[2][1],&p_679->g_3[2][1],&p_679->g_3[2][3],&p_679->g_3[2][1],&p_679->g_3[2][1]}};
    int32_t **l_78 = &l_79[0][2];
    int i, j, k;
    (*l_78) = func_59(l_65, (l_66[2][1][1] >= ((safe_div_func_int8_t_s_s(0x7EL, l_66[3][1][2])) | ((!(l_66[3][0][0] & ((0x7BAA6DCE64F81AA3L == ((l_69 || (safe_add_func_uint16_t_u_u(p_679->g_3[1][1], ((*l_65) = p_57)))) == GROUP_DIVERGE(0, 1))) , l_66[1][1][4]))) == FAKE_DIVERGE(p_679->local_0_offset, get_local_id(0), 10)))), &l_66[2][1][1], p_679->g_3[0][0], p_679->g_72, p_679);
    p_679->g_43 = p_679->g_17;
    return &p_679->g_17;
}


/* ------------------------------------------ */
/* 
 * reads : p_679->g_37 p_679->g_43
 * writes: p_679->g_37 p_679->g_43
 */
int32_t * func_59(uint16_t * p_60, int64_t  p_61, int32_t * p_62, uint32_t  p_63, uint16_t * p_64, struct S2 * p_679)
{ /* block id: 25 */
    uint32_t l_76[7] = {4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL};
    int i;
    for (p_679->g_37 = 10; (p_679->g_37 >= 20); p_679->g_37++)
    { /* block id: 28 */
        int32_t *l_75 = &p_679->g_43;
        return l_75;
    }
    for (p_679->g_43 = 6; (p_679->g_43 >= 0); p_679->g_43 -= 1)
    { /* block id: 33 */
        int i;
        (*p_62) = l_76[p_679->g_43];
        for (p_63 = 0; (p_63 <= 6); p_63 += 1)
        { /* block id: 37 */
            (*p_62) = l_76[p_679->g_43];
        }
    }
    return &p_679->g_3[2][1];
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S2 c_680;
    struct S2* p_679 = &c_680;
    struct S2 c_681 = {
        {{6L,(-1L),1L,(-1L)},{6L,(-1L),1L,(-1L)},{6L,(-1L),1L,(-1L)}}, // p_679->g_3
        0x737AE9F9L, // p_679->g_12
        {{0x61054D81L,0x61054D81L,0x61054D81L,0x61054D81L,0x61054D81L}}, // p_679->g_13
        0x3FAD0D72L, // p_679->g_14
        0x472B752BL, // p_679->g_15
        (-3L), // p_679->g_16
        0x791F9E6AL, // p_679->g_17
        0xFFEAL, // p_679->g_37
        1L, // p_679->g_43
        (void*)0, // p_679->g_72
        {{0x0AD72A74L,0x0AD72A74L,0x0AD72A74L,0x0AD72A74L},{0x0AD72A74L,0x0AD72A74L,0x0AD72A74L,0x0AD72A74L},{0x0AD72A74L,0x0AD72A74L,0x0AD72A74L,0x0AD72A74L},{0x0AD72A74L,0x0AD72A74L,0x0AD72A74L,0x0AD72A74L},{0x0AD72A74L,0x0AD72A74L,0x0AD72A74L,0x0AD72A74L}}, // p_679->g_88
        {{0x5EL},{0x5EL},{0x5EL},{0x5EL},{0x5EL},{0x5EL}}, // p_679->g_114
        0L, // p_679->g_122
        {0xC79C0CF39239E70CL}, // p_679->g_132
        {{5UL},{5UL},{5UL},{5UL},{5UL},{5UL},{5UL},{5UL}}, // p_679->g_134
        0UL, // p_679->g_157
        0xF85D4ADB4F9E29D7L, // p_679->g_160
        0x6B0E93CEL, // p_679->g_163
        {{{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)}},{{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)}},{{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)}},{{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)}},{{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)}},{{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)}},{{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)}},{{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)}},{{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)},{0x167B358CL,1L,(-1L)}}}, // p_679->g_172
        65526UL, // p_679->g_190
        0xB3L, // p_679->g_202
        (void*)0, // p_679->g_209
        0x94445633L, // p_679->g_212
        0L, // p_679->g_243
        {0x434D145527F07D8BL,18446744073709551615UL,0x6B92L,1UL,0L,0x2FFA0302L,0x4510060AL,0x3E5F9AAEL,1UL}, // p_679->g_312
        0x01L, // p_679->g_356
        &p_679->g_17, // p_679->g_384
        &p_679->g_384, // p_679->g_383
        {{3L,18446744073709551615UL,5L,0xDE95B070L,0x2B3286809131B508L,0L,0x46CD47DFL,3L,252UL}}, // p_679->g_400
        &p_679->g_400[0], // p_679->g_399
        &p_679->g_202, // p_679->g_489
        &p_679->g_489, // p_679->g_488
        (void*)0, // p_679->g_490
        &p_679->g_400[0].f7, // p_679->g_527
        (void*)0, // p_679->g_554
        &p_679->g_554, // p_679->g_553
        {{{1UL},{1UL},{1UL},{1UL},{1UL}}}, // p_679->g_574
        (void*)0, // p_679->g_577
        {{{(void*)0,&p_679->g_577},{(void*)0,&p_679->g_577},{(void*)0,&p_679->g_577},{(void*)0,&p_679->g_577},{(void*)0,&p_679->g_577},{(void*)0,&p_679->g_577},{(void*)0,&p_679->g_577},{(void*)0,&p_679->g_577},{(void*)0,&p_679->g_577},{(void*)0,&p_679->g_577}},{{(void*)0,&p_679->g_577},{(void*)0,&p_679->g_577},{(void*)0,&p_679->g_577},{(void*)0,&p_679->g_577},{(void*)0,&p_679->g_577},{(void*)0,&p_679->g_577},{(void*)0,&p_679->g_577},{(void*)0,&p_679->g_577},{(void*)0,&p_679->g_577},{(void*)0,&p_679->g_577}}}, // p_679->g_576
        {0x70046092804CF885L,18446744073709551609UL,2L,4294967289UL,0x46EBFFB789D46926L,3L,-4L,-7L,0xEDL}, // p_679->g_599
        {-6L,6UL,0L,0x17DE0EAEL,0x298AEC896222412BL,0x7ED01A4CL,-8L,0x4A4DD5D4L,0x4EL}, // p_679->g_653
        {{-5L,18446744073709551615UL,-1L,4294967295UL,0x40818F649C8760DCL,0x42435BD9L,-1L,1L,0xB9L},{-5L,18446744073709551615UL,-1L,4294967295UL,0x40818F649C8760DCL,0x42435BD9L,-1L,1L,0xB9L},{-5L,18446744073709551615UL,-1L,4294967295UL,0x40818F649C8760DCL,0x42435BD9L,-1L,1L,0xB9L},{-5L,18446744073709551615UL,-1L,4294967295UL,0x40818F649C8760DCL,0x42435BD9L,-1L,1L,0xB9L}}, // p_679->g_672
        &p_679->g_672[3], // p_679->g_671
        &p_679->g_671, // p_679->g_670
        &p_679->g_670, // p_679->g_669
        {0x773992F73C8E1109L,1UL,-3L,6UL,0x7136B98730940B1FL,-1L,0x47F012A9L,-1L,9UL}, // p_679->g_674
        sequence_input[get_global_id(0)], // p_679->global_0_offset
        sequence_input[get_global_id(1)], // p_679->global_1_offset
        sequence_input[get_global_id(2)], // p_679->global_2_offset
        sequence_input[get_local_id(0)], // p_679->local_0_offset
        sequence_input[get_local_id(1)], // p_679->local_1_offset
        sequence_input[get_local_id(2)], // p_679->local_2_offset
        sequence_input[get_group_id(0)], // p_679->group_0_offset
        sequence_input[get_group_id(1)], // p_679->group_1_offset
        sequence_input[get_group_id(2)], // p_679->group_2_offset
    };
    c_680 = c_681;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_679);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_679->g_3[i][j], "p_679->g_3[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_679->g_12, "p_679->g_12", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_679->g_13[i][j], "p_679->g_13[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_679->g_14, "p_679->g_14", print_hash_value);
    transparent_crc(p_679->g_15, "p_679->g_15", print_hash_value);
    transparent_crc(p_679->g_16, "p_679->g_16", print_hash_value);
    transparent_crc(p_679->g_17, "p_679->g_17", print_hash_value);
    transparent_crc(p_679->g_37, "p_679->g_37", print_hash_value);
    transparent_crc(p_679->g_43, "p_679->g_43", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_679->g_88[i][j], "p_679->g_88[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_679->g_114[i][j], "p_679->g_114[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_679->g_122, "p_679->g_122", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_679->g_134[i].f0, "p_679->g_134[i].f0", print_hash_value);

    }
    transparent_crc(p_679->g_157, "p_679->g_157", print_hash_value);
    transparent_crc(p_679->g_160, "p_679->g_160", print_hash_value);
    transparent_crc(p_679->g_163, "p_679->g_163", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_679->g_172[i][j][k], "p_679->g_172[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_679->g_190, "p_679->g_190", print_hash_value);
    transparent_crc(p_679->g_202, "p_679->g_202", print_hash_value);
    transparent_crc(p_679->g_212, "p_679->g_212", print_hash_value);
    transparent_crc(p_679->g_243, "p_679->g_243", print_hash_value);
    transparent_crc(p_679->g_312.f0, "p_679->g_312.f0", print_hash_value);
    transparent_crc(p_679->g_312.f1, "p_679->g_312.f1", print_hash_value);
    transparent_crc(p_679->g_312.f2, "p_679->g_312.f2", print_hash_value);
    transparent_crc(p_679->g_312.f3, "p_679->g_312.f3", print_hash_value);
    transparent_crc(p_679->g_312.f4, "p_679->g_312.f4", print_hash_value);
    transparent_crc(p_679->g_312.f5, "p_679->g_312.f5", print_hash_value);
    transparent_crc(p_679->g_312.f6, "p_679->g_312.f6", print_hash_value);
    transparent_crc(p_679->g_312.f7, "p_679->g_312.f7", print_hash_value);
    transparent_crc(p_679->g_312.f8, "p_679->g_312.f8", print_hash_value);
    transparent_crc(p_679->g_356, "p_679->g_356", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_679->g_400[i].f0, "p_679->g_400[i].f0", print_hash_value);
        transparent_crc(p_679->g_400[i].f1, "p_679->g_400[i].f1", print_hash_value);
        transparent_crc(p_679->g_400[i].f2, "p_679->g_400[i].f2", print_hash_value);
        transparent_crc(p_679->g_400[i].f3, "p_679->g_400[i].f3", print_hash_value);
        transparent_crc(p_679->g_400[i].f4, "p_679->g_400[i].f4", print_hash_value);
        transparent_crc(p_679->g_400[i].f5, "p_679->g_400[i].f5", print_hash_value);
        transparent_crc(p_679->g_400[i].f6, "p_679->g_400[i].f6", print_hash_value);
        transparent_crc(p_679->g_400[i].f7, "p_679->g_400[i].f7", print_hash_value);
        transparent_crc(p_679->g_400[i].f8, "p_679->g_400[i].f8", print_hash_value);

    }
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_679->g_574[i][j].f0, "p_679->g_574[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_679->g_599.f0, "p_679->g_599.f0", print_hash_value);
    transparent_crc(p_679->g_599.f1, "p_679->g_599.f1", print_hash_value);
    transparent_crc(p_679->g_599.f2, "p_679->g_599.f2", print_hash_value);
    transparent_crc(p_679->g_599.f3, "p_679->g_599.f3", print_hash_value);
    transparent_crc(p_679->g_599.f4, "p_679->g_599.f4", print_hash_value);
    transparent_crc(p_679->g_599.f5, "p_679->g_599.f5", print_hash_value);
    transparent_crc(p_679->g_599.f6, "p_679->g_599.f6", print_hash_value);
    transparent_crc(p_679->g_599.f7, "p_679->g_599.f7", print_hash_value);
    transparent_crc(p_679->g_599.f8, "p_679->g_599.f8", print_hash_value);
    transparent_crc(p_679->g_653.f0, "p_679->g_653.f0", print_hash_value);
    transparent_crc(p_679->g_653.f1, "p_679->g_653.f1", print_hash_value);
    transparent_crc(p_679->g_653.f2, "p_679->g_653.f2", print_hash_value);
    transparent_crc(p_679->g_653.f3, "p_679->g_653.f3", print_hash_value);
    transparent_crc(p_679->g_653.f4, "p_679->g_653.f4", print_hash_value);
    transparent_crc(p_679->g_653.f5, "p_679->g_653.f5", print_hash_value);
    transparent_crc(p_679->g_653.f6, "p_679->g_653.f6", print_hash_value);
    transparent_crc(p_679->g_653.f7, "p_679->g_653.f7", print_hash_value);
    transparent_crc(p_679->g_653.f8, "p_679->g_653.f8", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_679->g_672[i].f0, "p_679->g_672[i].f0", print_hash_value);
        transparent_crc(p_679->g_672[i].f1, "p_679->g_672[i].f1", print_hash_value);
        transparent_crc(p_679->g_672[i].f2, "p_679->g_672[i].f2", print_hash_value);
        transparent_crc(p_679->g_672[i].f3, "p_679->g_672[i].f3", print_hash_value);
        transparent_crc(p_679->g_672[i].f4, "p_679->g_672[i].f4", print_hash_value);
        transparent_crc(p_679->g_672[i].f5, "p_679->g_672[i].f5", print_hash_value);
        transparent_crc(p_679->g_672[i].f6, "p_679->g_672[i].f6", print_hash_value);
        transparent_crc(p_679->g_672[i].f7, "p_679->g_672[i].f7", print_hash_value);
        transparent_crc(p_679->g_672[i].f8, "p_679->g_672[i].f8", print_hash_value);

    }
    transparent_crc(p_679->g_674.f0, "p_679->g_674.f0", print_hash_value);
    transparent_crc(p_679->g_674.f1, "p_679->g_674.f1", print_hash_value);
    transparent_crc(p_679->g_674.f2, "p_679->g_674.f2", print_hash_value);
    transparent_crc(p_679->g_674.f3, "p_679->g_674.f3", print_hash_value);
    transparent_crc(p_679->g_674.f4, "p_679->g_674.f4", print_hash_value);
    transparent_crc(p_679->g_674.f5, "p_679->g_674.f5", print_hash_value);
    transparent_crc(p_679->g_674.f6, "p_679->g_674.f6", print_hash_value);
    transparent_crc(p_679->g_674.f7, "p_679->g_674.f7", print_hash_value);
    transparent_crc(p_679->g_674.f8, "p_679->g_674.f8", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
