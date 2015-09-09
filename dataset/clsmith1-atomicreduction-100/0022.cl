// ---atomic_reductions ---fake_divergence -g 10,84,4 -l 1,12,2
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


// Seed: 22

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint8_t  f0;
   volatile uint32_t  f1;
   volatile int8_t * f2;
   int32_t  f3;
};

union U1 {
   volatile int64_t  f0;
};

struct S2 {
    volatile int32_t g_2;
    uint16_t g_21[6];
    int8_t g_39;
    int8_t *g_38;
    uint32_t g_47;
    uint32_t g_53;
    int32_t g_69;
    uint32_t g_77;
    int32_t g_93;
    int32_t *g_115;
    int32_t **g_114[2];
    uint8_t g_120;
    uint16_t g_123;
    int16_t g_125;
    int32_t g_143;
    union U0 g_145;
    union U0 g_146;
    union U0 g_147;
    union U0 g_148[8][2][6];
    union U0 g_149;
    union U0 g_150;
    union U0 g_151[3][4][5];
    union U0 g_152;
    union U0 g_153;
    union U0 g_154;
    union U0 g_155;
    union U0 g_156[4][2][5];
    union U0 g_157;
    union U0 g_158[9];
    union U0 g_159;
    union U0 g_160[2];
    union U0 g_161;
    union U0 g_162;
    union U0 g_163;
    union U0 g_164;
    union U0 g_165;
    union U0 g_166;
    uint64_t g_212;
    int16_t g_243;
    int32_t g_264;
    union U1 g_293;
    union U1 *g_292;
    int32_t g_394[5][2][10];
    uint64_t * volatile *g_412;
    uint64_t * volatile g_414;
    int16_t *g_421;
    int16_t * volatile *g_420;
    uint16_t *g_423;
    uint16_t **g_422;
    int32_t *g_495;
    int32_t **g_494[6];
    int32_t g_499;
    union U1 g_532;
    int64_t g_588;
    int16_t **g_595[4][4];
    int16_t ***g_594[2][3];
    int16_t ****g_632;
    int8_t g_676;
    int16_t *****g_738;
    uint32_t *g_784;
    uint32_t **g_783;
    uint32_t **g_786;
    volatile uint8_t g_812;
    volatile uint8_t *g_811;
    volatile uint8_t **g_810;
    union U1 g_844;
    int8_t *g_854;
    int8_t g_856[3];
    uint32_t g_857;
    volatile union U1 g_895;
    int32_t ** volatile g_919;
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
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
};


/* --- FORWARD DECLARATIONS --- */
uint32_t  func_1(struct S2 * p_924);
uint64_t  func_3(int8_t * p_4, int8_t * p_5, int8_t * p_6, int32_t  p_7, int16_t  p_8, struct S2 * p_924);
int8_t * func_9(uint32_t  p_10, uint64_t  p_11, uint64_t  p_12, int64_t  p_13, int64_t  p_14, struct S2 * p_924);
int32_t  func_17(int32_t  p_18, uint32_t  p_19, int8_t * p_20, struct S2 * p_924);
int8_t * func_24(int8_t * p_25, int32_t  p_26, int8_t * p_27, uint64_t  p_28, uint64_t  p_29, struct S2 * p_924);
uint32_t  func_35(int8_t * p_36, uint32_t  p_37, struct S2 * p_924);
int64_t  func_56(uint32_t * p_57, uint32_t * p_58, int32_t  p_59, int8_t  p_60, int32_t * p_61, struct S2 * p_924);
int32_t  func_63(int8_t  p_64, int8_t ** p_65, int32_t  p_66, struct S2 * p_924);
int32_t * func_80(uint64_t  p_81, uint8_t  p_82, int32_t  p_83, struct S2 * p_924);
int64_t  func_87(int16_t  p_88, int8_t ** p_89, int32_t  p_90, int32_t  p_91, struct S2 * p_924);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_924->g_2 p_924->g_21 p_924->g_38 p_924->g_39 p_924->g_47 p_924->g_77 p_924->g_143 p_924->g_166.f0 p_924->g_93 p_924->g_69 p_924->g_163.f0 p_924->g_162.f0 p_924->g_53 p_924->g_115 p_924->g_292 p_924->g_264 p_924->g_212 p_924->g_243 p_924->g_423 p_924->g_123 p_924->g_154.f0 p_924->g_151.f0 p_924->g_394 p_924->g_148.f0 p_924->g_494 p_924->g_422 p_924->g_149.f0 p_924->g_159.f0 p_924->g_146.f0 p_924->g_164.f0 p_924->g_150.f0 p_924->g_158.f0 p_924->g_145.f0 p_924->g_594 p_924->g_595 p_924->g_120 p_924->g_412 p_924->g_155.f0 p_924->g_160.f0 p_924->g_157.f0 p_924->g_783 p_924->g_810 p_924->g_588 p_924->g_854 p_924->g_857 p_924->g_293 p_924->g_856 p_924->g_895 p_924->g_811 p_924->g_812 p_924->g_153.f0 p_924->g_676 p_924->g_919
 * writes: p_924->g_47 p_924->g_38 p_924->g_53 p_924->g_69 p_924->g_143 p_924->g_163.f0 p_924->g_77 p_924->g_39 p_924->g_212 p_924->g_394 p_924->g_164.f0 p_924->g_115 p_924->g_123 p_924->g_93 p_924->g_243 p_924->g_499 p_924->g_264 p_924->g_148.f0 p_924->g_594 p_924->g_588 p_924->g_632 p_924->g_676 p_924->g_21 p_924->g_738 p_924->g_786 p_924->g_120 p_924->g_856
 */
uint32_t  func_1(struct S2 * p_924)
{ /* block id: 4 */
    int8_t *l_30 = (void*)0;
    int32_t l_44[5][3][2] = {{{(-1L),0x5F890BA5L},{(-1L),0x5F890BA5L},{(-1L),0x5F890BA5L}},{{(-1L),0x5F890BA5L},{(-1L),0x5F890BA5L},{(-1L),0x5F890BA5L}},{{(-1L),0x5F890BA5L},{(-1L),0x5F890BA5L},{(-1L),0x5F890BA5L}},{{(-1L),0x5F890BA5L},{(-1L),0x5F890BA5L},{(-1L),0x5F890BA5L}},{{(-1L),0x5F890BA5L},{(-1L),0x5F890BA5L},{(-1L),0x5F890BA5L}}};
    int32_t *l_45 = (void*)0;
    int32_t *l_46 = &l_44[4][1][0];
    int8_t **l_50[7][1][2] = {{{&l_30,&p_924->g_38}},{{&l_30,&p_924->g_38}},{{&l_30,&p_924->g_38}},{{&l_30,&p_924->g_38}},{{&l_30,&p_924->g_38}},{{&l_30,&p_924->g_38}},{{&l_30,&p_924->g_38}}};
    uint64_t l_51 = 18446744073709551614UL;
    uint32_t *l_52 = &p_924->g_53;
    uint8_t l_551 = 0x53L;
    int8_t *l_855 = &p_924->g_856[0];
    uint8_t l_892 = 0x0AL;
    int16_t *l_897 = (void*)0;
    uint16_t l_923 = 0xBF4EL;
    int i, j, k;
    if ((p_924->g_2 >= func_3(func_9((safe_sub_func_int32_t_s_s(func_17(p_924->g_21[1], ((*l_52) = (safe_lshift_func_uint16_t_u_s((((p_924->g_21[4] <= ((p_924->g_38 = func_24(l_30, (((safe_lshift_func_uint8_t_u_u(((((((*l_46) = ((safe_mul_func_uint8_t_u_u(((((0x0993DD61L == ((+p_924->g_21[5]) > func_35(p_924->g_38, ((safe_rshift_func_int16_t_s_u(p_924->g_39, (safe_mul_func_uint8_t_u_u(l_44[4][1][0], l_44[1][2][0])))) , l_44[1][1][1]), p_924))) || l_44[4][1][0]) > 0x1CDFFA87L) == l_44[4][1][0]), p_924->g_21[3])) & l_44[0][2][0])) && 0x348FE2D5L) , (*l_46)) , (*p_924->g_38)) != (*p_924->g_38)), 4)) >= p_924->g_39) , (*l_46)), l_30, p_924->g_21[2], p_924->g_21[2], p_924)) == &p_924->g_39)) >= l_51) <= 1L), 11))), &p_924->g_39, p_924), 0UL)), p_924->g_150.f0, p_924->g_151[1][2][2].f0, p_924->g_158[8].f0, l_551, p_924), p_924->g_854, l_855, p_924->g_857, l_551, p_924)))
    { /* block id: 380 */
        uint8_t l_874 = 0x9DL;
        int32_t l_891 = 8L;
        int32_t *l_893 = &p_924->g_69;
        uint16_t *l_894 = (void*)0;
        (*l_893) ^= (~((((((l_874 = ((*p_924->g_292) , FAKE_DIVERGE(p_924->global_0_offset, get_global_id(0), 10))) >= ((((&p_924->g_588 != &p_924->g_588) < (p_924->g_394[1][1][8] || (safe_lshift_func_uint8_t_u_s(0UL, (safe_rshift_func_uint16_t_u_u(((((0x0CL && p_924->g_856[0]) >= (safe_sub_func_int32_t_s_s((safe_sub_func_int32_t_s_s((safe_sub_func_int8_t_s_s((safe_div_func_int8_t_s_s((((safe_mul_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((0x1AL >= l_891), 4UL)), l_891)) , (*l_46)) | l_891), (*p_924->g_38))), 0x17L)), l_891)), GROUP_DIVERGE(2, 1)))) <= (*l_46)) > l_892), 15)))))) , p_924->g_155.f0) && p_924->g_160[0].f0)) && (*l_46)) < 0x78C820B7L) | 0xA1C0L) == (*p_924->g_423)));
        (*l_893) &= ((*p_924->g_422) != l_894);
    }
    else
    { /* block id: 384 */
        int64_t l_899 = 0x06B4BEC1533CD243L;
        int32_t l_900 = 0x3FF7E2D3L;
        uint32_t l_901 = 0UL;
        int8_t l_916[10][10][2] = {{{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L}},{{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L}},{{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L}},{{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L}},{{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L}},{{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L}},{{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L}},{{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L}},{{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L}},{{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L},{9L,9L}}};
        volatile union U1 *l_917 = &p_924->g_895;
        int i, j, k;
        for (p_924->g_243 = 3; (p_924->g_243 >= 0); p_924->g_243 -= 1)
        { /* block id: 387 */
            int16_t *l_896 = &p_924->g_243;
            int32_t *l_898[5][2][1];
            int i, j, k;
            for (i = 0; i < 5; i++)
            {
                for (j = 0; j < 2; j++)
                {
                    for (k = 0; k < 1; k++)
                        l_898[i][j][k] = &l_44[4][1][0];
                }
            }
            (*l_46) &= ((p_924->g_895 , l_896) == ((((**p_924->g_422) < (**p_924->g_422)) != 0x248EB3E6L) , l_897));
            ++l_901;
            for (p_924->g_120 = 0; (p_924->g_120 <= 5); p_924->g_120 += 1)
            { /* block id: 392 */
                uint32_t l_904 = 0UL;
                (*l_46) |= l_904;
            }
        }
        if (((&l_899 != &p_924->g_588) && (+(*l_46))))
        { /* block id: 396 */
            uint32_t l_909 = 1UL;
            int32_t *l_918 = (void*)0;
            (*l_46) |= (safe_rshift_func_uint16_t_u_s(((*p_924->g_811) < ((&p_924->g_588 != (((safe_lshift_func_uint16_t_u_s(((((!l_909) == (p_924->g_153.f0 , ((**p_924->g_422) ^ l_909))) , (((void*)0 != &p_924->g_784) ^ (((safe_mul_func_uint16_t_u_u((safe_sub_func_int16_t_s_s(((safe_mul_func_uint16_t_u_u(l_909, l_916[8][0][0])) != l_909), l_901)), GROUP_DIVERGE(0, 1))) ^ l_900) <= l_909))) || 4UL), l_916[5][5][0])) == 4UL) , &l_899)) <= p_924->g_676)), 9));
            l_917 = &p_924->g_895;
            (*p_924->g_919) = l_918;
        }
        else
        { /* block id: 400 */
            uint16_t l_920 = 0xB123L;
            ++l_920;
        }
    }
    return l_923;
}


/* ------------------------------------------ */
/* 
 * reads : p_924->g_38 p_924->g_39
 * writes: p_924->g_856 p_924->g_69
 */
uint64_t  func_3(int8_t * p_4, int8_t * p_5, int8_t * p_6, int32_t  p_7, int16_t  p_8, struct S2 * p_924)
{ /* block id: 375 */
    uint32_t l_860 = 0x30995C51L;
    uint64_t l_869 = 18446744073709551615UL;
    int64_t l_872 = 0x53CE6F159A02D084L;
    int32_t *l_873 = &p_924->g_69;
    (*l_873) = ((p_8 |= (safe_add_func_int16_t_s_s(0x5049L, (l_860 & ((*p_6) = (*p_924->g_38)))))) | (safe_sub_func_uint32_t_u_u((safe_div_func_int16_t_s_s(p_7, GROUP_DIVERGE(0, 1))), (safe_sub_func_uint64_t_u_u((safe_lshift_func_int16_t_s_u(p_7, l_860)), (l_860 >= (l_869 && (safe_add_func_uint8_t_u_u(255UL, l_872)))))))));
    return p_8;
}


/* ------------------------------------------ */
/* 
 * reads : p_924->g_212 p_924->g_145.f0 p_924->g_38 p_924->g_39 p_924->g_163.f0 p_924->g_594 p_924->g_47 p_924->g_123 p_924->g_423 p_924->g_115 p_924->g_69 p_924->g_595 p_924->g_148.f0 p_924->g_93 p_924->g_53 p_924->g_422 p_924->g_120 p_924->g_164.f0 p_924->g_77 p_924->g_151.f0 p_924->g_412 p_924->g_155.f0 p_924->g_160.f0 p_924->g_157.f0 p_924->g_783 p_924->g_810 p_924->g_588
 * writes: p_924->g_39 p_924->g_148.f0 p_924->g_594 p_924->g_47 p_924->g_588 p_924->g_69 p_924->g_212 p_924->g_632 p_924->g_123 p_924->g_676 p_924->g_21 p_924->g_77 p_924->g_115 p_924->g_738 p_924->g_786 p_924->g_93 p_924->g_120
 */
int8_t * func_9(uint32_t  p_10, uint64_t  p_11, uint64_t  p_12, int64_t  p_13, int64_t  p_14, struct S2 * p_924)
{ /* block id: 240 */
    int32_t l_561 = 0L;
    uint32_t **l_580 = (void*)0;
    uint32_t *l_582 = &p_924->g_77;
    uint32_t **l_581 = &l_582;
    uint32_t *l_584[9] = {&p_924->g_77,&p_924->g_77,&p_924->g_77,&p_924->g_77,&p_924->g_77,&p_924->g_77,&p_924->g_77,&p_924->g_77,&p_924->g_77};
    uint32_t **l_583 = &l_584[6];
    uint8_t *l_585 = &p_924->g_148[0][1][5].f0;
    uint32_t l_586 = 0xAF576D24L;
    int64_t *l_587[9];
    int32_t l_589 = 1L;
    int32_t l_590 = 0x7F302B4AL;
    int16_t ***l_597 = &p_924->g_595[0][2];
    uint64_t l_614 = 0xBD69316CC45330D1L;
    uint16_t l_618 = 0x9CF4L;
    int16_t *****l_674 = &p_924->g_632;
    int32_t **l_693 = &p_924->g_115;
    uint64_t **l_714 = (void*)0;
    int16_t ***l_715[6][6] = {{(void*)0,&p_924->g_595[2][0],(void*)0,(void*)0,&p_924->g_595[2][0],(void*)0},{(void*)0,&p_924->g_595[2][0],(void*)0,(void*)0,&p_924->g_595[2][0],(void*)0},{(void*)0,&p_924->g_595[2][0],(void*)0,(void*)0,&p_924->g_595[2][0],(void*)0},{(void*)0,&p_924->g_595[2][0],(void*)0,(void*)0,&p_924->g_595[2][0],(void*)0},{(void*)0,&p_924->g_595[2][0],(void*)0,(void*)0,&p_924->g_595[2][0],(void*)0},{(void*)0,&p_924->g_595[2][0],(void*)0,(void*)0,&p_924->g_595[2][0],(void*)0}};
    int32_t l_726 = 0L;
    int32_t l_727 = 0x793118B4L;
    uint16_t l_751 = 65535UL;
    int32_t **l_767 = &p_924->g_495;
    uint16_t l_779[2];
    uint32_t **l_787 = &p_924->g_784;
    int32_t l_830[2];
    union U1 *l_843[7];
    int i, j;
    for (i = 0; i < 9; i++)
        l_587[i] = &p_924->g_588;
    for (i = 0; i < 2; i++)
        l_779[i] = 65530UL;
    for (i = 0; i < 2; i++)
        l_830[i] = 0x008D6099L;
    for (i = 0; i < 7; i++)
        l_843[i] = &p_924->g_844;
    if (((safe_unary_minus_func_int64_t_s((safe_lshift_func_uint8_t_u_s(((safe_mod_func_int32_t_s_s((l_590 = (safe_rshift_func_uint8_t_u_u(l_561, (safe_mul_func_int16_t_s_s((((safe_add_func_uint8_t_u_u((l_561 < ((l_561 | l_561) , (~(safe_lshift_func_int16_t_s_s((((l_589 = (safe_mod_func_int32_t_s_s(((((safe_sub_func_int32_t_s_s(((l_561 , p_924->g_212) >= ((safe_div_func_uint8_t_u_u(((*l_585) = ((safe_div_func_int8_t_s_s((p_924->g_145.f0 , (((+((*p_924->g_38) = (*p_924->g_38))) > ((safe_mod_func_uint64_t_u_u((safe_mul_func_uint8_t_u_u((!(((*l_583) = ((*l_581) = &p_924->g_47)) == &p_10)), 0x25L)), p_14)) <= p_924->g_163.f0)) && (-1L))), l_561)) | l_561)), p_13)) , 1L)), 0xB2BC4A65L)) | l_586) <= p_14) >= p_12), l_586))) == 0x204065E25FE52280L) , p_14), 3))))), l_561)) != l_586) && 0xBAL), p_11))))), 0x046629EDL)) | 0UL), p_14)))) , p_10))
    { /* block id: 247 */
        int16_t ****l_596[8] = {&p_924->g_594[1][1],&p_924->g_594[0][0],&p_924->g_594[1][1],&p_924->g_594[1][1],&p_924->g_594[0][0],&p_924->g_594[1][1],&p_924->g_594[1][1],&p_924->g_594[0][0]};
        int32_t l_600[7];
        int32_t l_609[1][9][3] = {{{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)}}};
        int8_t *l_642 = &p_924->g_39;
        int16_t l_698[1];
        uint32_t l_728 = 0xC3647348L;
        uint8_t *l_754 = &p_924->g_155.f0;
        uint32_t **l_788 = (void*)0;
        int i, j, k;
        for (i = 0; i < 7; i++)
            l_600[i] = 0x419C9BB4L;
        for (i = 0; i < 1; i++)
            l_698[i] = 0x64A5L;
        if ((safe_mod_func_int32_t_s_s(p_14, ((((((safe_unary_minus_func_uint64_t_u(((l_597 = (p_924->g_594[1][1] = p_924->g_594[1][1])) == (void*)0))) , p_13) , ((((l_600[3] = ((*l_582)++)) ^ (((((*l_585) = 0x0CL) || p_12) || (safe_add_func_int16_t_s_s(((p_11 , (void*)0) == ((safe_sub_func_uint8_t_u_u((safe_div_func_uint64_t_u_u((safe_lshift_func_int16_t_s_u(l_609[0][4][1], 4)), p_924->g_123)), p_10)) , l_582)), l_590))) == 1UL)) >= FAKE_DIVERGE(p_924->local_1_offset, get_local_id(1), 10)) > p_924->g_39)) , (*p_924->g_423)) <= l_609[0][4][1]) , l_589))))
        { /* block id: 253 */
            uint32_t l_615 = 1UL;
            int16_t ****l_633 = (void*)0;
            int32_t l_641 = 0x53063315L;
            int16_t l_659[8][6][5] = {{{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL}},{{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL}},{{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL}},{{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL}},{{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL}},{{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL}},{{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL}},{{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL},{0L,(-8L),6L,0x0779L,0x362DL}}};
            int32_t l_662 = 0x0C31BF1FL;
            int64_t l_690 = (-1L);
            int32_t **l_694 = (void*)0;
            uint32_t l_696[6][4][2] = {{{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL}},{{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL}},{{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL}},{{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL}},{{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL}},{{0UL,1UL},{0UL,1UL},{0UL,1UL},{0UL,1UL}}};
            int32_t l_725 = 0L;
            int8_t *l_731 = &p_924->g_676;
            int64_t l_739 = 0x3618B5D7EE9D7613L;
            int i, j, k;
            (*p_924->g_115) = ((!(safe_lshift_func_uint8_t_u_s((safe_mul_func_int16_t_s_s((l_615 = (0x5B3F354BD17104A4L >= l_614)), (safe_add_func_int64_t_s_s((p_924->g_588 = 0x4F0576C6E9EF40D4L), ((l_618 >= (safe_mul_func_int16_t_s_s((FAKE_DIVERGE(p_924->local_2_offset, get_local_id(2), 10) > (safe_div_func_uint8_t_u_u((p_924->g_47 , (l_590 || 0x1C57240283973C19L)), (0x2ED2L & (((*p_924->g_38) < l_609[0][4][1]) > p_12))))), p_13))) < (-9L)))))), l_600[0]))) | 0UL);
            for (p_924->g_212 = (-19); (p_924->g_212 == 32); ++p_924->g_212)
            { /* block id: 259 */
                int16_t *****l_631[9][3][6] = {{{&l_596[0],&l_596[4],&l_596[4],(void*)0,&l_596[4],(void*)0},{&l_596[0],&l_596[4],&l_596[4],(void*)0,&l_596[4],(void*)0},{&l_596[0],&l_596[4],&l_596[4],(void*)0,&l_596[4],(void*)0}},{{&l_596[0],&l_596[4],&l_596[4],(void*)0,&l_596[4],(void*)0},{&l_596[0],&l_596[4],&l_596[4],(void*)0,&l_596[4],(void*)0},{&l_596[0],&l_596[4],&l_596[4],(void*)0,&l_596[4],(void*)0}},{{&l_596[0],&l_596[4],&l_596[4],(void*)0,&l_596[4],(void*)0},{&l_596[0],&l_596[4],&l_596[4],(void*)0,&l_596[4],(void*)0},{&l_596[0],&l_596[4],&l_596[4],(void*)0,&l_596[4],(void*)0}},{{&l_596[0],&l_596[4],&l_596[4],(void*)0,&l_596[4],(void*)0},{&l_596[0],&l_596[4],&l_596[4],(void*)0,&l_596[4],(void*)0},{&l_596[0],&l_596[4],&l_596[4],(void*)0,&l_596[4],(void*)0}},{{&l_596[0],&l_596[4],&l_596[4],(void*)0,&l_596[4],(void*)0},{&l_596[0],&l_596[4],&l_596[4],(void*)0,&l_596[4],(void*)0},{&l_596[0],&l_596[4],&l_596[4],(void*)0,&l_596[4],(void*)0}},{{&l_596[0],&l_596[4],&l_596[4],(void*)0,&l_596[4],(void*)0},{&l_596[0],&l_596[4],&l_596[4],(void*)0,&l_596[4],(void*)0},{&l_596[0],&l_596[4],&l_596[4],(void*)0,&l_596[4],(void*)0}},{{&l_596[0],&l_596[4],&l_596[4],(void*)0,&l_596[4],(void*)0},{&l_596[0],&l_596[4],&l_596[4],(void*)0,&l_596[4],(void*)0},{&l_596[0],&l_596[4],&l_596[4],(void*)0,&l_596[4],(void*)0}},{{&l_596[0],&l_596[4],&l_596[4],(void*)0,&l_596[4],(void*)0},{&l_596[0],&l_596[4],&l_596[4],(void*)0,&l_596[4],(void*)0},{&l_596[0],&l_596[4],&l_596[4],(void*)0,&l_596[4],(void*)0}},{{&l_596[0],&l_596[4],&l_596[4],(void*)0,&l_596[4],(void*)0},{&l_596[0],&l_596[4],&l_596[4],(void*)0,&l_596[4],(void*)0},{&l_596[0],&l_596[4],&l_596[4],(void*)0,&l_596[4],(void*)0}}};
                int64_t l_634 = 0x589B9B7532370DAEL;
                int i, j, k;
                (*p_924->g_115) |= ((((safe_add_func_uint64_t_u_u((0x6367L && (p_13 & ((p_924->g_632 = &l_597) == l_633))), l_634)) && (l_615 == ((p_13 ^ ((l_584[1] == ((((safe_rshift_func_int16_t_s_u((l_641 = ((safe_lshift_func_int8_t_s_s((safe_rshift_func_int8_t_s_s(p_14, 7)), 3)) , p_11)), 8)) > FAKE_DIVERGE(p_924->group_2_offset, get_group_id(2), 10)) , 1UL) , (void*)0)) > p_14)) < 0UL))) | (-1L)) >= p_14);
                return l_642;
            }
            if ((((((safe_rshift_func_int8_t_s_s(((*p_924->g_38) = (safe_rshift_func_int8_t_s_s((safe_lshift_func_uint8_t_u_u(((safe_add_func_int64_t_s_s(((*l_597) == (void*)0), ((p_10 >= (((safe_mul_func_uint8_t_u_u((safe_add_func_int64_t_s_s(0x60BF424B646305BCL, ((((safe_sub_func_uint8_t_u_u((((*p_924->g_115) = (p_14 || ((safe_rshift_func_int16_t_s_u(l_600[3], 13)) && ((!l_659[3][2][2]) & (safe_mul_func_uint8_t_u_u(p_13, ((*l_585) |= FAKE_DIVERGE(p_924->local_2_offset, get_local_id(2), 10)))))))) <= p_924->g_93), p_11)) , 0UL) || l_641) || l_662))), p_11)) == (-1L)) | p_10)) <= p_924->g_53))) & 2L), 5)), 7))), l_609[0][4][1])) || (*p_924->g_115)) < p_12) == (**p_924->g_422)) | 0x7E46L))
            { /* block id: 268 */
                int8_t l_671 = 0x2EL;
                int8_t *l_675 = &p_924->g_676;
                uint16_t *l_677 = &p_924->g_21[1];
                uint32_t *l_695 = &l_615;
                uint64_t *l_697 = &p_924->g_212;
                int32_t l_723 = 0L;
                int32_t l_724 = 0x227AE3F8L;
                (*p_924->g_115) = (safe_add_func_uint32_t_u_u((((**p_924->g_422) &= 65535UL) && (((safe_mul_func_uint16_t_u_u((**p_924->g_422), (safe_sub_func_int32_t_s_s((((((*l_677) = ((~l_641) ^ (safe_mul_func_int8_t_s_s((*p_924->g_38), (l_671 & (safe_mul_func_uint16_t_u_u(((l_674 != l_674) | ((*l_675) = ((0xBE053B13124F6FBAL <= (p_13 < p_11)) , (*p_924->g_38)))), (*p_924->g_423)))))))) > (**p_924->g_422)) > (**p_924->g_422)) , p_14), (-6L))))) > 1L) <= 0UL)), p_924->g_53));
                if ((safe_mul_func_uint16_t_u_u((((((safe_rshift_func_uint8_t_u_s((((safe_mod_func_uint64_t_u_u(((*l_697) = ((safe_rshift_func_uint8_t_u_s((safe_mod_func_uint16_t_u_u(65528UL, ((p_924->g_77 &= (safe_mul_func_int16_t_s_s(((l_690 , (((void*)0 != &p_12) , ((p_924->g_120 , (((*l_585) = ((-1L) != (safe_div_func_int8_t_s_s((((((l_693 != l_694) , ((&p_924->g_53 != l_695) || 0x412C3464EA14EB06L)) , l_671) <= 0x726FL) < l_696[4][2][1]), p_924->g_164.f0)))) | 0x51L)) >= p_13))) ^ p_12), (**p_924->g_422)))) , (**p_924->g_422)))), l_671)) >= p_13)), p_924->g_151[1][2][2].f0)) <= 0x2294L) < (*p_924->g_423)), (**l_693))) ^ 0xA53C77B9B1DE0F61L) , FAKE_DIVERGE(p_924->local_2_offset, get_local_id(2), 10)) & FAKE_DIVERGE(p_924->group_0_offset, get_group_id(0), 10)) || l_698[0]), 1L)))
                { /* block id: 276 */
                    if (p_12)
                    { /* block id: 277 */
                        return l_585;
                    }
                    else
                    { /* block id: 279 */
                        int32_t *l_699[4] = {&l_609[0][2][1],&l_609[0][2][1],&l_609[0][2][1],&l_609[0][2][1]};
                        int i;
                        l_699[2] = (void*)0;
                        return &p_924->g_39;
                    }
                }
                else
                { /* block id: 283 */
                    uint64_t l_716 = 18446744073709551607UL;
                    int32_t *l_718 = &p_924->g_394[0][0][9];
                    int32_t *l_719 = &l_609[0][4][1];
                    int32_t *l_720 = &l_600[3];
                    int32_t *l_721 = &l_609[0][4][0];
                    int32_t *l_722[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_722[i] = &p_924->g_264;
                    for (p_10 = 0; (p_10 == 5); p_10 = safe_add_func_int8_t_s_s(p_10, 7))
                    { /* block id: 286 */
                        uint64_t l_717 = 0x6EB8999231E99286L;
                        (**l_693) = ((safe_mul_func_uint8_t_u_u((safe_add_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), (safe_div_func_int32_t_s_s(l_671, ((safe_mul_func_int8_t_s_s((((((safe_rshift_func_uint8_t_u_u((safe_mod_func_int64_t_s_s((((18446744073709551615UL & ((p_924->g_412 == l_714) & p_14)) >= p_11) | ((((void*)0 == l_715[1][3]) , &p_924->g_292) != &p_924->g_292)), p_924->g_47)), l_716)) && FAKE_DIVERGE(p_924->global_0_offset, get_global_id(0), 10)) >= l_717) , l_698[0]) >= p_11), 0x47L)) | p_12))))), (*p_924->g_38))) > (**p_924->g_422));
                    }
                    --l_728;
                }
            }
            else
            { /* block id: 291 */
                int32_t l_736 = 0x099AEB5EL;
                uint8_t *l_737 = (void*)0;
                int32_t l_750 = 0x71433A52L;
                uint8_t l_752[3];
                uint8_t **l_753[1];
                int64_t l_755 = 0x64FFBB99C91C7617L;
                int i;
                for (i = 0; i < 3; i++)
                    l_752[i] = 0UL;
                for (i = 0; i < 1; i++)
                    l_753[i] = &l_585;
                (*l_693) = func_80(p_11, p_924->g_155.f0, ((GROUP_DIVERGE(0, 1) < p_13) , ((void*)0 == l_731)), p_924);
                (**l_693) |= (((l_600[3] = ((((-1L) & (safe_mul_func_int8_t_s_s((*p_924->g_38), ((((l_736 || (&p_924->g_120 == l_737)) == ((p_924->g_738 = l_674) != (void*)0)) && l_739) == ((safe_mod_func_int64_t_s_s(p_924->g_163.f0, p_10)) == p_10))))) || p_12) & 0x68L)) <= (*p_924->g_423)) < p_12);
                (*p_924->g_115) = ((((safe_add_func_uint32_t_u_u((((safe_add_func_int32_t_s_s(((l_754 = func_24(l_737, ((p_10 | (((((((*p_924->g_38) , p_11) == (p_14 &= ((l_736 == (**l_693)) && ((((((l_750 ^= (safe_add_func_uint32_t_u_u((p_13 != ((p_11 ^ (FAKE_DIVERGE(p_924->local_1_offset, get_local_id(1), 10) >= (1UL & l_600[3]))) != 1L)), 4294967286UL))) , 0x27L) && (**l_693)) | l_736) == (-1L)) < l_698[0])))) || l_751) && l_728) < p_924->g_145.f0) >= p_924->g_160[0].f0)) & 0x566D6B23966F9DE9L), &p_924->g_676, p_10, l_752[0], p_924)) != l_731), 0x0BB09E18L)) <= l_755) && 0L), 0x7D227015L)) , 0UL) , l_736) == 3L);
            }
        }
        else
        { /* block id: 301 */
            uint32_t l_762[1][2][1];
            int32_t **l_768 = &p_924->g_495;
            int16_t *l_782 = &p_924->g_125;
            int32_t l_792 = 0L;
            int32_t l_793[9][9][3] = {{{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L}},{{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L}},{{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L}},{{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L}},{{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L}},{{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L}},{{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L}},{{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L}},{{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L},{0x79D4F156L,0x79D4F156L,0x79D4F156L}}};
            int i, j, k;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 2; j++)
                {
                    for (k = 0; k < 1; k++)
                        l_762[i][j][k] = 0x75B86454L;
                }
            }
            for (p_14 = 0; (p_14 <= 0); p_14 += 1)
            { /* block id: 304 */
                uint64_t *l_756[4][3] = {{(void*)0,&p_924->g_212,(void*)0},{(void*)0,&p_924->g_212,(void*)0},{(void*)0,&p_924->g_212,(void*)0},{(void*)0,&p_924->g_212,(void*)0}};
                int32_t *l_761[5];
                uint32_t l_794[4] = {4UL,4UL,4UL,4UL};
                int8_t *l_797 = &p_924->g_39;
                int16_t l_798 = 1L;
                uint32_t l_799 = 4294967295UL;
                int i, j;
                for (i = 0; i < 5; i++)
                    l_761[i] = &l_727;
                l_726 = ((**l_693) |= ((p_924->g_212++) > (((*l_585)--) , GROUP_DIVERGE(1, 1))));
                ++l_762[0][1][0];
                for (p_12 = 0; (p_12 <= 0); p_12 += 1)
                { /* block id: 312 */
                    int8_t *l_769[7] = {&p_924->g_39,&p_924->g_676,&p_924->g_39,&p_924->g_39,&p_924->g_676,&p_924->g_39,&p_924->g_39};
                    int32_t l_776[9][9] = {{0x5003CA7BL,0x3B4E40C3L,0x5927F4BFL,0x7DFA250EL,0x6F1438E6L,0x7DFA250EL,0x5927F4BFL,0x3B4E40C3L,0x5003CA7BL},{0x5003CA7BL,0x3B4E40C3L,0x5927F4BFL,0x7DFA250EL,0x6F1438E6L,0x7DFA250EL,0x5927F4BFL,0x3B4E40C3L,0x5003CA7BL},{0x5003CA7BL,0x3B4E40C3L,0x5927F4BFL,0x7DFA250EL,0x6F1438E6L,0x7DFA250EL,0x5927F4BFL,0x3B4E40C3L,0x5003CA7BL},{0x5003CA7BL,0x3B4E40C3L,0x5927F4BFL,0x7DFA250EL,0x6F1438E6L,0x7DFA250EL,0x5927F4BFL,0x3B4E40C3L,0x5003CA7BL},{0x5003CA7BL,0x3B4E40C3L,0x5927F4BFL,0x7DFA250EL,0x6F1438E6L,0x7DFA250EL,0x5927F4BFL,0x3B4E40C3L,0x5003CA7BL},{0x5003CA7BL,0x3B4E40C3L,0x5927F4BFL,0x7DFA250EL,0x6F1438E6L,0x7DFA250EL,0x5927F4BFL,0x3B4E40C3L,0x5003CA7BL},{0x5003CA7BL,0x3B4E40C3L,0x5927F4BFL,0x7DFA250EL,0x6F1438E6L,0x7DFA250EL,0x5927F4BFL,0x3B4E40C3L,0x5003CA7BL},{0x5003CA7BL,0x3B4E40C3L,0x5927F4BFL,0x7DFA250EL,0x6F1438E6L,0x7DFA250EL,0x5927F4BFL,0x3B4E40C3L,0x5003CA7BL},{0x5003CA7BL,0x3B4E40C3L,0x5927F4BFL,0x7DFA250EL,0x6F1438E6L,0x7DFA250EL,0x5927F4BFL,0x3B4E40C3L,0x5003CA7BL}};
                    int i, j;
                    for (l_586 = 0; (l_586 <= 0); l_586 += 1)
                    { /* block id: 315 */
                        int i;
                        (*p_924->g_115) = (*p_924->g_115);
                        (*p_924->g_115) |= (safe_rshift_func_int16_t_s_u((l_767 == (l_768 = l_767)), ((FAKE_DIVERGE(p_924->local_2_offset, get_local_id(2), 10) , l_584[(l_586 + 5)]) != (void*)0)));
                        return l_769[1];
                    }
                    if ((safe_mul_func_int8_t_s_s((safe_lshift_func_uint16_t_u_u(((safe_div_func_int64_t_s_s((0xB5BEL | (p_924->g_157.f0 <= p_924->g_39)), (l_776[7][7] & p_12))) , ((p_11 | (safe_add_func_int64_t_s_s(p_924->g_155.f0, ((((l_779[0] < (safe_div_func_int32_t_s_s(p_11, p_10))) , (void*)0) != l_782) && 0xE1451E6FD3C82BBEL)))) , GROUP_DIVERGE(2, 1))), FAKE_DIVERGE(p_924->global_0_offset, get_global_id(0), 10))), l_776[1][2])))
                    { /* block id: 321 */
                        uint32_t ***l_785[10] = {&p_924->g_783,&p_924->g_783,&p_924->g_783,&p_924->g_783,&p_924->g_783,&p_924->g_783,&p_924->g_783,&p_924->g_783,&p_924->g_783,&p_924->g_783};
                        int32_t l_789[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_789[i] = 0x683D5705L;
                        (**l_693) = ((p_924->g_786 = p_924->g_783) == (l_788 = l_787));
                        (**l_693) = (l_789[0] >= (safe_unary_minus_func_uint16_t_u(GROUP_DIVERGE(1, 1))));
                    }
                    else
                    { /* block id: 326 */
                        int64_t l_791[9][2] = {{0x12004BE5CEEF0964L,0x390E6D8828B1E845L},{0x12004BE5CEEF0964L,0x390E6D8828B1E845L},{0x12004BE5CEEF0964L,0x390E6D8828B1E845L},{0x12004BE5CEEF0964L,0x390E6D8828B1E845L},{0x12004BE5CEEF0964L,0x390E6D8828B1E845L},{0x12004BE5CEEF0964L,0x390E6D8828B1E845L},{0x12004BE5CEEF0964L,0x390E6D8828B1E845L},{0x12004BE5CEEF0964L,0x390E6D8828B1E845L},{0x12004BE5CEEF0964L,0x390E6D8828B1E845L}};
                        int i, j;
                        l_791[8][0] &= l_776[4][3];
                        if (l_791[6][0])
                            continue;
                        (**l_693) ^= (0x5AL ^ 0x63L);
                    }
                    (*l_693) = &l_600[3];
                    for (p_924->g_93 = 0; (p_924->g_93 <= 0); p_924->g_93 += 1)
                    { /* block id: 334 */
                        --l_794[0];
                        return l_797;
                    }
                }
                --l_799;
            }
            for (p_11 = 0; (p_11 > 40); p_11 = safe_add_func_uint8_t_u_u(p_11, 8))
            { /* block id: 343 */
                return l_642;
            }
        }
    }
    else
    { /* block id: 347 */
        uint8_t l_806 = 0x02L;
        union U1 **l_809 = &p_924->g_292;
        int32_t *l_813 = &l_727;
        int32_t l_829 = 3L;
        int32_t l_831[8][4][4] = {{{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L}},{{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L}},{{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L}},{{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L}},{{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L}},{{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L}},{{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L}},{{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L},{0L,0x54061613L,(-1L),0x35411780L}}};
        uint16_t l_832 = 65535UL;
        int i, j, k;
        (*l_693) = ((safe_mul_func_uint16_t_u_u((l_806 <= ((safe_mul_func_uint8_t_u_u(((((p_10 , ((l_809 == (void*)0) ^ (p_924->g_120 || (p_924->g_810 != (void*)0)))) , (l_813 != ((safe_lshift_func_int16_t_s_s((safe_rshift_func_int16_t_s_s((4294967292UL > (-1L)), p_14)), 7)) , l_813))) & p_14) | 0x7EAFL), p_11)) >= 0xC776748D1BAAFF77L)), p_13)) , (void*)0);
        for (p_924->g_120 = 20; (p_924->g_120 != 14); p_924->g_120--)
        { /* block id: 351 */
            uint16_t l_820 = 0UL;
            int32_t *l_823 = &p_924->g_394[3][1][2];
            int32_t *l_824 = (void*)0;
            int32_t *l_825 = &p_924->g_69;
            int32_t *l_826 = &p_924->g_264;
            int32_t *l_827 = &l_590;
            int32_t *l_828[1];
            int i;
            for (i = 0; i < 1; i++)
                l_828[i] = &l_590;
            --l_820;
            --l_832;
            if (p_14)
                continue;
            if ((*l_813))
            { /* block id: 355 */
                uint8_t l_851 = 0x68L;
                for (p_924->g_588 = (-30); (p_924->g_588 != 29); p_924->g_588 = safe_add_func_int32_t_s_s(p_924->g_588, 7))
                { /* block id: 358 */
                    uint64_t l_852 = 0x63C71A523AF39893L;
                    (*l_825) = ((((~((safe_div_func_int16_t_s_s(((*l_813) & ((((*l_813) > (safe_add_func_int32_t_s_s((safe_rshift_func_uint16_t_u_s((!FAKE_DIVERGE(p_924->global_1_offset, get_global_id(1), 10)), 7)), (((**l_581) = ((void*)0 != l_843[5])) >= (safe_mul_func_uint16_t_u_u(p_12, p_14)))))) <= (safe_mul_func_int8_t_s_s((((safe_sub_func_int64_t_s_s(0x4A513528442B177FL, 0x75E70073D244E449L)) && (((*p_924->g_38) >= 0x9FL) && l_851)) & p_14), p_12))) <= p_924->g_164.f0)), 1UL)) , l_852)) | p_11) , l_851) != p_12);
                    (*l_693) = (*l_693);
                }
            }
            else
            { /* block id: 363 */
                int16_t l_853 = 0x16B1L;
                for (l_832 = 0; (l_832 <= 8); l_832 += 1)
                { /* block id: 366 */
                    (*l_813) = (((*l_585) = 0x94L) && p_12);
                }
                if (l_853)
                    continue;
            }
        }
    }
    return l_585;
}


/* ------------------------------------------ */
/* 
 * reads : p_924->g_21 p_924->g_39 p_924->g_38 p_924->g_47 p_924->g_77 p_924->g_143 p_924->g_166.f0 p_924->g_93 p_924->g_69 p_924->g_163.f0 p_924->g_162.f0 p_924->g_53 p_924->g_115 p_924->g_292 p_924->g_264 p_924->g_212 p_924->g_243 p_924->g_423 p_924->g_123 p_924->g_154.f0 p_924->g_151.f0 p_924->g_394 p_924->g_148.f0 p_924->g_494 p_924->g_422 p_924->g_149.f0 p_924->g_159.f0 p_924->g_146.f0 p_924->g_164.f0
 * writes: p_924->g_69 p_924->g_47 p_924->g_143 p_924->g_163.f0 p_924->g_77 p_924->g_39 p_924->g_53 p_924->g_212 p_924->g_394 p_924->g_164.f0 p_924->g_115 p_924->g_123 p_924->g_93 p_924->g_243 p_924->g_499 p_924->g_264
 */
int32_t  func_17(int32_t  p_18, uint32_t  p_19, int8_t * p_20, struct S2 * p_924)
{ /* block id: 13 */
    uint32_t *l_62 = &p_924->g_53;
    int8_t *l_67 = &p_924->g_39;
    int32_t *l_68[7][4] = {{&p_924->g_69,&p_924->g_69,(void*)0,&p_924->g_69},{&p_924->g_69,&p_924->g_69,(void*)0,&p_924->g_69},{&p_924->g_69,&p_924->g_69,(void*)0,&p_924->g_69},{&p_924->g_69,&p_924->g_69,(void*)0,&p_924->g_69},{&p_924->g_69,&p_924->g_69,(void*)0,&p_924->g_69},{&p_924->g_69,&p_924->g_69,(void*)0,&p_924->g_69},{&p_924->g_69,&p_924->g_69,(void*)0,&p_924->g_69}};
    uint32_t l_70 = 4294967291UL;
    int8_t l_75 = 0x71L;
    int8_t **l_76 = &l_67;
    uint64_t l_547 = 0xAD80B1C691B82315L;
    uint32_t l_548 = 4294967291UL;
    int i, j;
    l_547 = (safe_add_func_uint32_t_u_u(p_924->g_21[1], (((func_56(l_62, &p_924->g_53, func_63((((*l_76) = func_24(l_67, (l_70 = (p_924->g_69 = ((*p_20) ^ (*p_924->g_38)))), &p_924->g_39, p_18, (((safe_sub_func_uint32_t_u_u((safe_mod_func_int32_t_s_s(0x0950C43CL, l_75)), p_19)) & (*p_924->g_38)) , p_19), p_924)) == &p_924->g_39), l_76, p_924->g_77, p_924), p_924->g_154.f0, l_68[4][1], p_924) , p_19) , 1UL) , p_924->g_146.f0)));
    --l_548;
    return (*p_924->g_115);
}


/* ------------------------------------------ */
/* 
 * reads : p_924->g_47
 * writes: p_924->g_47
 */
int8_t * func_24(int8_t * p_25, int32_t  p_26, int8_t * p_27, uint64_t  p_28, uint64_t  p_29, struct S2 * p_924)
{ /* block id: 8 */
    p_924->g_47--;
    return &p_924->g_39;
}


/* ------------------------------------------ */
/* 
 * reads : p_924->g_21
 * writes:
 */
uint32_t  func_35(int8_t * p_36, uint32_t  p_37, struct S2 * p_924)
{ /* block id: 5 */
    return p_924->g_21[1];
}


/* ------------------------------------------ */
/* 
 * reads : p_924->g_151.f0 p_924->g_123 p_924->g_93 p_924->g_394 p_924->g_148.f0 p_924->g_494 p_924->g_264 p_924->g_115 p_924->g_69 p_924->g_38 p_924->g_39 p_924->g_422 p_924->g_423 p_924->g_149.f0 p_924->g_77 p_924->g_159.f0 p_924->g_162.f0 p_924->g_146.f0 p_924->g_164.f0
 * writes: p_924->g_123 p_924->g_93 p_924->g_243 p_924->g_499 p_924->g_69 p_924->g_264 p_924->g_77
 */
int64_t  func_56(uint32_t * p_57, uint32_t * p_58, int32_t  p_59, int8_t  p_60, int32_t * p_61, struct S2 * p_924)
{ /* block id: 200 */
    int32_t *l_475 = &p_924->g_264;
    uint32_t l_479[4][5][1] = {{{0x04311B2FL},{0x04311B2FL},{0x04311B2FL},{0x04311B2FL},{0x04311B2FL}},{{0x04311B2FL},{0x04311B2FL},{0x04311B2FL},{0x04311B2FL},{0x04311B2FL}},{{0x04311B2FL},{0x04311B2FL},{0x04311B2FL},{0x04311B2FL},{0x04311B2FL}},{{0x04311B2FL},{0x04311B2FL},{0x04311B2FL},{0x04311B2FL},{0x04311B2FL}}};
    int32_t *l_493 = (void*)0;
    int32_t **l_492 = &l_493;
    int8_t **l_546 = &p_924->g_38;
    int i, j, k;
    if ((p_60 || (l_475 != &p_59)))
    { /* block id: 201 */
        return p_924->g_151[1][2][2].f0;
    }
    else
    { /* block id: 203 */
        int32_t **l_476[7] = {&l_475,&l_475,&l_475,&l_475,&l_475,&l_475,&l_475};
        int32_t **l_496 = &p_924->g_495;
        int i;
        p_61 = (void*)0;
        for (p_924->g_123 = (-9); (p_924->g_123 <= 15); p_924->g_123 = safe_add_func_int64_t_s_s(p_924->g_123, 6))
        { /* block id: 207 */
            uint64_t l_522 = 0UL;
            union U1 *l_531 = &p_924->g_532;
            if (l_479[1][4][0])
                break;
            for (p_60 = 7; (p_60 >= (-22)); p_60 = safe_sub_func_uint8_t_u_u(p_60, 1))
            { /* block id: 211 */
                int32_t l_530 = 0x53462601L;
                int32_t l_545 = (-1L);
                for (p_924->g_93 = 0; (p_924->g_93 >= 0); p_924->g_93 -= 1)
                { /* block id: 214 */
                    int16_t *l_497 = &p_924->g_243;
                    int32_t *l_498 = &p_924->g_499;
                    uint32_t **l_500 = (void*)0;
                    uint32_t *l_502 = &p_924->g_53;
                    uint32_t **l_501 = &l_502;
                    int i, j, k;
                    if ((p_924->g_394[p_924->g_93][p_924->g_93][(p_924->g_93 + 3)] , (safe_sub_func_int16_t_s_s((1L <= (-6L)), (safe_mul_func_uint8_t_u_u((((l_479[p_924->g_93][(p_924->g_93 + 2)][p_924->g_93] , ((*l_501) = func_80((safe_sub_func_int32_t_s_s(((((*l_498) = (safe_add_func_uint16_t_u_u(((((void*)0 != &l_479[(p_924->g_93 + 3)][(p_924->g_93 + 2)][p_924->g_93]) && ((*l_497) = ((p_924->g_148[0][1][5].f0 , l_492) != (l_496 = p_924->g_494[4])))) , p_60), 1L))) , 0x0DD137B5L) , 0x32BD5BBBL), (*l_475))), p_924->g_264, (*p_924->g_115), p_924))) != &p_924->g_53) == p_59), (*l_475)))))))
                    { /* block id: 219 */
                        union U1 **l_503 = &p_924->g_292;
                        p_61 = &p_59;
                        (*l_475) |= ((void*)0 == l_503);
                    }
                    else
                    { /* block id: 222 */
                        uint32_t *l_523 = &p_924->g_77;
                        uint64_t *l_544 = &l_522;
                        uint64_t **l_543 = &l_544;
                        (*p_924->g_115) |= ((((safe_mod_func_uint32_t_u_u((safe_mul_func_int16_t_s_s(((safe_sub_func_int8_t_s_s(1L, (safe_mod_func_int32_t_s_s(((*l_475) &= (safe_rshift_func_uint16_t_u_u(((**p_924->g_422) != ((safe_rshift_func_uint8_t_u_u(0x11L, p_59)) == (safe_lshift_func_int16_t_s_u((safe_sub_func_uint16_t_u_u(l_522, p_924->g_149.f0)), (*p_924->g_423))))), 10))), ((*l_523)++))))) & 0x48L), ((((l_530 |= (safe_lshift_func_uint16_t_u_u((safe_sub_func_int64_t_s_s(p_59, p_60)), 10))) , (void*)0) != (void*)0) | (*p_924->g_423)))), p_924->g_159.f0)) , (void*)0) == l_531) , (*l_475));
                        (*p_924->g_115) = (safe_rshift_func_uint8_t_u_s(((~((safe_lshift_func_uint16_t_u_s(((safe_add_func_uint16_t_u_u((p_59 > p_60), (((p_60 , ((((safe_div_func_int16_t_s_s((l_545 |= (p_924->g_162.f0 , ((((((-1L) && ((0x6F6EL | (safe_lshift_func_uint8_t_u_u((&p_924->g_212 == ((*l_543) = &p_924->g_212)), (((*l_475) && 1UL) <= (*l_475))))) && (-7L))) < 0L) , &p_59) != (void*)0) == (-9L)))), (*p_924->g_423))) || p_924->g_146.f0) >= 5UL) <= p_59)) != p_59) != p_924->g_39))) == p_59), p_59)) > l_522)) , p_924->g_164.f0), 6));
                    }
                }
            }
            p_61 = (((void*)0 == l_546) , &p_59);
        }
    }
    return p_60;
}


/* ------------------------------------------ */
/* 
 * reads : p_924->g_143 p_924->g_166.f0 p_924->g_93 p_924->g_69 p_924->g_163.f0 p_924->g_38 p_924->g_39 p_924->g_162.f0 p_924->g_53 p_924->g_115 p_924->g_292 p_924->g_264 p_924->g_212 p_924->g_21 p_924->g_243 p_924->g_423 p_924->g_123
 * writes: p_924->g_143 p_924->g_163.f0 p_924->g_77 p_924->g_39 p_924->g_53 p_924->g_69 p_924->g_212 p_924->g_394 p_924->g_164.f0 p_924->g_115
 */
int32_t  func_63(int8_t  p_64, int8_t ** p_65, int32_t  p_66, struct S2 * p_924)
{ /* block id: 17 */
    uint64_t l_252 = 18446744073709551607UL;
    uint32_t l_272 = 0x38A2B4C7L;
    int32_t l_290 = 0L;
    int32_t l_291 = 0x154AC27BL;
    int32_t l_317 = 0x7FB3CF3BL;
    int32_t **l_339 = &p_924->g_115;
    int32_t l_366 = 0x28F4081CL;
    int32_t l_367 = 6L;
    int32_t l_369 = 0L;
    int32_t l_370 = 0x21A614EFL;
    int32_t l_371[9][2][10] = {{{(-1L),0x421330A6L,(-5L),0x6E59714BL,(-1L),0x6E59714BL,(-5L),0x421330A6L,(-1L),(-5L)},{(-1L),0x421330A6L,(-5L),0x6E59714BL,(-1L),0x6E59714BL,(-5L),0x421330A6L,(-1L),(-5L)}},{{(-1L),0x421330A6L,(-5L),0x6E59714BL,(-1L),0x6E59714BL,(-5L),0x421330A6L,(-1L),(-5L)},{(-1L),0x421330A6L,(-5L),0x6E59714BL,(-1L),0x6E59714BL,(-5L),0x421330A6L,(-1L),(-5L)}},{{(-1L),0x421330A6L,(-5L),0x6E59714BL,(-1L),0x6E59714BL,(-5L),0x421330A6L,(-1L),(-5L)},{(-1L),0x421330A6L,(-5L),0x6E59714BL,(-1L),0x6E59714BL,(-5L),0x421330A6L,(-1L),(-5L)}},{{(-1L),0x421330A6L,(-5L),0x6E59714BL,(-1L),0x6E59714BL,(-5L),0x421330A6L,(-1L),(-5L)},{(-1L),0x421330A6L,(-5L),0x6E59714BL,(-1L),0x6E59714BL,(-5L),0x421330A6L,(-1L),(-5L)}},{{(-1L),0x421330A6L,(-5L),0x6E59714BL,(-1L),0x6E59714BL,(-5L),0x421330A6L,(-1L),(-5L)},{(-1L),0x421330A6L,(-5L),0x6E59714BL,(-1L),0x6E59714BL,(-5L),0x421330A6L,(-1L),(-5L)}},{{(-1L),0x421330A6L,(-5L),0x6E59714BL,(-1L),0x6E59714BL,(-5L),0x421330A6L,(-1L),(-5L)},{(-1L),0x421330A6L,(-5L),0x6E59714BL,(-1L),0x6E59714BL,(-5L),0x421330A6L,(-1L),(-5L)}},{{(-1L),0x421330A6L,(-5L),0x6E59714BL,(-1L),0x6E59714BL,(-5L),0x421330A6L,(-1L),(-5L)},{(-1L),0x421330A6L,(-5L),0x6E59714BL,(-1L),0x6E59714BL,(-5L),0x421330A6L,(-1L),(-5L)}},{{(-1L),0x421330A6L,(-5L),0x6E59714BL,(-1L),0x6E59714BL,(-5L),0x421330A6L,(-1L),(-5L)},{(-1L),0x421330A6L,(-5L),0x6E59714BL,(-1L),0x6E59714BL,(-5L),0x421330A6L,(-1L),(-5L)}},{{(-1L),0x421330A6L,(-5L),0x6E59714BL,(-1L),0x6E59714BL,(-5L),0x421330A6L,(-1L),(-5L)},{(-1L),0x421330A6L,(-5L),0x6E59714BL,(-1L),0x6E59714BL,(-5L),0x421330A6L,(-1L),(-5L)}}};
    int16_t *l_411 = &p_924->g_125;
    int16_t **l_410 = &l_411;
    uint64_t * volatile *l_413 = &p_924->g_414;
    uint32_t l_440[6][7] = {{0xA436A756L,0xA436A756L,9UL,0x88C7505AL,0UL,0xBEAC7C5AL,0UL},{0xA436A756L,0xA436A756L,9UL,0x88C7505AL,0UL,0xBEAC7C5AL,0UL},{0xA436A756L,0xA436A756L,9UL,0x88C7505AL,0UL,0xBEAC7C5AL,0UL},{0xA436A756L,0xA436A756L,9UL,0x88C7505AL,0UL,0xBEAC7C5AL,0UL},{0xA436A756L,0xA436A756L,9UL,0x88C7505AL,0UL,0xBEAC7C5AL,0UL},{0xA436A756L,0xA436A756L,9UL,0x88C7505AL,0UL,0xBEAC7C5AL,0UL}};
    int32_t l_470 = 0x0E281837L;
    int i, j, k;
lbl_320:
    for (p_64 = 0; (p_64 > (-3)); p_64--)
    { /* block id: 20 */
        uint64_t l_84 = 18446744073709551615UL;
        int32_t *l_92 = &p_924->g_93;
        int32_t **l_268 = (void*)0;
        int32_t **l_269 = &p_924->g_115;
        int32_t *l_271[4] = {&p_924->g_69,&p_924->g_69,&p_924->g_69,&p_924->g_69};
        int32_t **l_270 = &l_271[1];
        uint64_t *l_289 = &l_84;
        union U1 **l_294 = &p_924->g_292;
        int i;
        (1 + 1);
    }
    for (p_924->g_143 = 0; (p_924->g_143 >= (-3)); p_924->g_143 = safe_sub_func_uint64_t_u_u(p_924->g_143, 6))
    { /* block id: 110 */
        uint16_t l_307[2][1];
        uint8_t *l_310 = &p_924->g_163.f0;
        uint32_t *l_311 = &p_924->g_77;
        int32_t **l_316 = &p_924->g_115;
        union U1 **l_353 = (void*)0;
        int32_t l_365 = 1L;
        int32_t l_368[3];
        int32_t l_372[4][9][1] = {{{0x723459C5L},{0x723459C5L},{0x723459C5L},{0x723459C5L},{0x723459C5L},{0x723459C5L},{0x723459C5L},{0x723459C5L},{0x723459C5L}},{{0x723459C5L},{0x723459C5L},{0x723459C5L},{0x723459C5L},{0x723459C5L},{0x723459C5L},{0x723459C5L},{0x723459C5L},{0x723459C5L}},{{0x723459C5L},{0x723459C5L},{0x723459C5L},{0x723459C5L},{0x723459C5L},{0x723459C5L},{0x723459C5L},{0x723459C5L},{0x723459C5L}},{{0x723459C5L},{0x723459C5L},{0x723459C5L},{0x723459C5L},{0x723459C5L},{0x723459C5L},{0x723459C5L},{0x723459C5L},{0x723459C5L}}};
        uint8_t l_407 = 6UL;
        int32_t *l_471 = &p_924->g_394[3][1][2];
        int32_t *l_474 = (void*)0;
        int i, j, k;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 1; j++)
                l_307[i][j] = 0x996EL;
        }
        for (i = 0; i < 3; i++)
            l_368[i] = 6L;
        if (((((safe_rshift_func_uint16_t_u_s(p_924->g_166.f0, 11)) , FAKE_DIVERGE(p_924->global_2_offset, get_global_id(2), 10)) | 0x1C78F11A6BF4DEF9L) || ((safe_mul_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_s((((safe_div_func_int32_t_s_s((safe_rshift_func_uint16_t_u_s((p_924->g_93 | l_307[0][0]), (((safe_mul_func_uint8_t_u_u(((*l_310) &= p_924->g_69), ((void*)0 == &p_924->g_120))) && ((*l_311) = l_291)) != (safe_mod_func_int64_t_s_s((((FAKE_DIVERGE(p_924->global_0_offset, get_global_id(0), 10) > (safe_add_func_int32_t_s_s((((*p_924->g_38) = (*p_924->g_38)) ^ 0x2CL), p_64))) != 0x2F049FA68571168AL) >= 0x0BL), l_290))))), FAKE_DIVERGE(p_924->global_0_offset, get_global_id(0), 10))) , l_316) == l_316), l_272)), l_317)) == p_924->g_162.f0)))
        { /* block id: 114 */
            for (p_924->g_53 = 0; (p_924->g_53 <= 48); p_924->g_53 = safe_add_func_int64_t_s_s(p_924->g_53, 4))
            { /* block id: 117 */
                if (p_66)
                    break;
                if (p_924->g_69)
                    goto lbl_320;
            }
        }
        else
        { /* block id: 121 */
            int32_t l_323 = 0x74364D47L;
            int32_t l_332[6][4] = {{(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L)}};
            int32_t **l_337 = &p_924->g_115;
            uint32_t l_340 = 0x66BDBAEFL;
            uint32_t l_373[3];
            int i, j;
            for (i = 0; i < 3; i++)
                l_373[i] = 5UL;
            if ((**l_316))
                break;
            for (l_272 = (-13); (l_272 >= 20); l_272 = safe_add_func_int32_t_s_s(l_272, 5))
            { /* block id: 125 */
                uint64_t *l_324[3];
                uint32_t *l_331 = &p_924->g_53;
                int32_t l_338[8] = {0L,0L,0L,0L,0L,0L,0L,0L};
                union U1 ***l_354 = &l_353;
                uint16_t *l_435 = &l_307[0][0];
                int i;
                for (i = 0; i < 3; i++)
                    l_324[i] = (void*)0;
                atomic_xor(&p_924->g_atomic_reduction[get_linear_group_id()], (((p_924->g_292 != (void*)0) , ((*l_311) = (((p_924->g_264 && (l_323 >= ((p_924->g_212 &= ((**l_316) ^= 18446744073709551615UL)) & ((((safe_add_func_int16_t_s_s((safe_lshift_func_int8_t_s_s((safe_div_func_uint16_t_u_u(((((p_64 < ((((((l_332[4][2] = ((*l_331) |= (!4294967295UL))) , &p_924->g_114[1]) != ((safe_add_func_int64_t_s_s((safe_mul_func_int16_t_s_s(p_924->g_143, 65535UL)), p_924->g_21[1])) , (void*)0)) , l_337) != l_316) > p_64)) , 0L) | p_64) , p_924->g_53), p_924->g_21[1])), (*p_924->g_38))), l_338[0])) , (void*)0) == l_339) <= p_64)))) >= l_340) > p_64))) , p_66) + get_linear_global_id());
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                if (get_linear_local_id() == 0)
                    p_924->v_collective += p_924->g_atomic_reduction[get_linear_group_id()];
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            }
            for (l_407 = 0; (l_407 != 6); l_407 = safe_add_func_uint8_t_u_u(l_407, 1))
            { /* block id: 186 */
                int32_t *l_452 = &l_371[3][0][1];
                int32_t *l_453 = &l_365;
                int32_t *l_454[3];
                uint16_t l_455 = 0x4CA9L;
                int i;
                for (i = 0; i < 3; i++)
                    l_454[i] = &l_365;
                ++l_455;
                (*l_453) = (&p_924->g_114[1] != &l_339);
                return (*p_924->g_115);
            }
        }
        (*l_316) = func_80(((safe_lshift_func_int16_t_s_s((**l_316), 2)) || 0L), ((safe_add_func_int32_t_s_s(p_64, ((safe_sub_func_uint8_t_u_u((p_924->g_164.f0 = (((((safe_div_func_uint32_t_u_u((((*l_311) = (safe_rshift_func_int8_t_s_s((safe_add_func_int64_t_s_s(p_924->g_69, 0x279D30963AC752FDL)), l_470))) & ((*l_471) = ((**l_316) > 0x65ACL))), (((*p_924->g_38) = ((l_370 &= (safe_lshift_func_int8_t_s_u((*p_924->g_38), 0))) , (-3L))) && 255UL))) <= 0x03C1C5B0A93DA3B1L) < p_924->g_243) == (*p_924->g_423)) | FAKE_DIVERGE(p_924->group_1_offset, get_group_id(1), 10))), GROUP_DIVERGE(0, 1))) > p_64))) != 9UL), (**l_339), p_924);
    }
    return (**l_339);
}


/* ------------------------------------------ */
/* 
 * reads : p_924->g_115 p_924->g_38 p_924->g_39
 * writes: p_924->g_69
 */
int32_t * func_80(uint64_t  p_81, uint8_t  p_82, int32_t  p_83, struct S2 * p_924)
{ /* block id: 93 */
    int16_t *l_258[3];
    int16_t **l_257 = &l_258[0];
    int16_t ***l_259 = &l_257;
    int32_t *l_262[7] = {&p_924->g_69,&p_924->g_69,&p_924->g_69,&p_924->g_69,&p_924->g_69,&p_924->g_69,&p_924->g_69};
    int64_t l_263 = 0x44A0E0B1545FFFB8L;
    uint64_t l_265 = 0x8B5091CF3017F13BL;
    int i;
    for (i = 0; i < 3; i++)
        l_258[i] = &p_924->g_125;
    (*p_924->g_115) = 4L;
    (*l_259) = l_257;
    (*p_924->g_115) = (safe_mod_func_int8_t_s_s((*p_924->g_38), p_83));
    l_265--;
    return l_262[6];
}


/* ------------------------------------------ */
/* 
 * reads : p_924->g_47 p_924->g_69 p_924->g_93 p_924->g_114 p_924->g_38 p_924->g_39 p_924->g_120 p_924->g_77 p_924->g_123 p_924->g_125 p_924->g_115 p_924->g_21 p_924->g_143 p_924->g_163.f0 p_924->g_158.f0 p_924->g_146.f0
 * writes: p_924->g_69 p_924->g_120 p_924->g_123 p_924->g_125 p_924->g_93 p_924->g_114 p_924->g_77 p_924->g_38 p_924->g_212 p_924->g_243
 */
int64_t  func_87(int16_t  p_88, int8_t ** p_89, int32_t  p_90, int32_t  p_91, struct S2 * p_924)
{ /* block id: 22 */
    int32_t *l_96 = &p_924->g_69;
    uint16_t l_121 = 1UL;
    int8_t *l_187 = &p_924->g_39;
    uint16_t l_189 = 65530UL;
    int32_t l_192[5][3][7] = {{{2L,1L,0x1DF1BF41L,0x4229225CL,0x1DF1BF41L,1L,2L},{2L,1L,0x1DF1BF41L,0x4229225CL,0x1DF1BF41L,1L,2L},{2L,1L,0x1DF1BF41L,0x4229225CL,0x1DF1BF41L,1L,2L}},{{2L,1L,0x1DF1BF41L,0x4229225CL,0x1DF1BF41L,1L,2L},{2L,1L,0x1DF1BF41L,0x4229225CL,0x1DF1BF41L,1L,2L},{2L,1L,0x1DF1BF41L,0x4229225CL,0x1DF1BF41L,1L,2L}},{{2L,1L,0x1DF1BF41L,0x4229225CL,0x1DF1BF41L,1L,2L},{2L,1L,0x1DF1BF41L,0x4229225CL,0x1DF1BF41L,1L,2L},{2L,1L,0x1DF1BF41L,0x4229225CL,0x1DF1BF41L,1L,2L}},{{2L,1L,0x1DF1BF41L,0x4229225CL,0x1DF1BF41L,1L,2L},{2L,1L,0x1DF1BF41L,0x4229225CL,0x1DF1BF41L,1L,2L},{2L,1L,0x1DF1BF41L,0x4229225CL,0x1DF1BF41L,1L,2L}},{{2L,1L,0x1DF1BF41L,0x4229225CL,0x1DF1BF41L,1L,2L},{2L,1L,0x1DF1BF41L,0x4229225CL,0x1DF1BF41L,1L,2L},{2L,1L,0x1DF1BF41L,0x4229225CL,0x1DF1BF41L,1L,2L}}};
    uint8_t l_198 = 0xF9L;
    int32_t l_201[6][2];
    int i, j, k;
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 2; j++)
            l_201[i][j] = 0x03D44B8BL;
    }
    if (p_924->g_47)
    { /* block id: 23 */
        int32_t l_94[6] = {0x7A004931L,0x7A004931L,0x7A004931L,0x7A004931L,0x7A004931L,0x7A004931L};
        int32_t *l_95 = &p_924->g_69;
        union U0 *l_144[5][3][7] = {{{&p_924->g_165,&p_924->g_165,(void*)0,&p_924->g_161,&p_924->g_155,&p_924->g_148[0][1][5],&p_924->g_163},{&p_924->g_165,&p_924->g_165,(void*)0,&p_924->g_161,&p_924->g_155,&p_924->g_148[0][1][5],&p_924->g_163},{&p_924->g_165,&p_924->g_165,(void*)0,&p_924->g_161,&p_924->g_155,&p_924->g_148[0][1][5],&p_924->g_163}},{{&p_924->g_165,&p_924->g_165,(void*)0,&p_924->g_161,&p_924->g_155,&p_924->g_148[0][1][5],&p_924->g_163},{&p_924->g_165,&p_924->g_165,(void*)0,&p_924->g_161,&p_924->g_155,&p_924->g_148[0][1][5],&p_924->g_163},{&p_924->g_165,&p_924->g_165,(void*)0,&p_924->g_161,&p_924->g_155,&p_924->g_148[0][1][5],&p_924->g_163}},{{&p_924->g_165,&p_924->g_165,(void*)0,&p_924->g_161,&p_924->g_155,&p_924->g_148[0][1][5],&p_924->g_163},{&p_924->g_165,&p_924->g_165,(void*)0,&p_924->g_161,&p_924->g_155,&p_924->g_148[0][1][5],&p_924->g_163},{&p_924->g_165,&p_924->g_165,(void*)0,&p_924->g_161,&p_924->g_155,&p_924->g_148[0][1][5],&p_924->g_163}},{{&p_924->g_165,&p_924->g_165,(void*)0,&p_924->g_161,&p_924->g_155,&p_924->g_148[0][1][5],&p_924->g_163},{&p_924->g_165,&p_924->g_165,(void*)0,&p_924->g_161,&p_924->g_155,&p_924->g_148[0][1][5],&p_924->g_163},{&p_924->g_165,&p_924->g_165,(void*)0,&p_924->g_161,&p_924->g_155,&p_924->g_148[0][1][5],&p_924->g_163}},{{&p_924->g_165,&p_924->g_165,(void*)0,&p_924->g_161,&p_924->g_155,&p_924->g_148[0][1][5],&p_924->g_163},{&p_924->g_165,&p_924->g_165,(void*)0,&p_924->g_161,&p_924->g_155,&p_924->g_148[0][1][5],&p_924->g_163},{&p_924->g_165,&p_924->g_165,(void*)0,&p_924->g_161,&p_924->g_155,&p_924->g_148[0][1][5],&p_924->g_163}}};
        int32_t ***l_167 = &p_924->g_114[1];
        int16_t *l_168 = (void*)0;
        int16_t *l_169 = &p_924->g_125;
        uint32_t *l_172 = &p_924->g_77;
        uint16_t *l_188 = &l_121;
        int32_t *l_190 = (void*)0;
        int32_t *l_191[6];
        uint8_t *l_197[2];
        int i, j, k;
        for (i = 0; i < 6; i++)
            l_191[i] = &l_94[1];
        for (i = 0; i < 2; i++)
            l_197[i] = &p_924->g_147.f0;
        if (((*l_95) = l_94[1]))
        { /* block id: 25 */
            int32_t **l_97 = &l_96;
            (*l_97) = l_96;
            return (*l_95);
        }
        else
        { /* block id: 28 */
            int32_t l_118 = (-1L);
            uint8_t *l_119 = &p_924->g_120;
            uint16_t *l_122 = &p_924->g_123;
            int16_t *l_124 = &p_924->g_125;
            if ((((*l_124) ^= (safe_rshift_func_uint16_t_u_s(((safe_lshift_func_int16_t_s_u((safe_mod_func_uint8_t_u_u((safe_div_func_int32_t_s_s(p_924->g_93, ((safe_mul_func_uint16_t_u_u(65535UL, (safe_div_func_uint16_t_u_u(((*l_122) &= (safe_mod_func_int32_t_s_s((safe_mod_func_uint16_t_u_u(((*l_96) <= (((void*)0 == p_924->g_114[1]) != ((p_90 <= p_924->g_47) <= ((*l_119) &= (safe_sub_func_int8_t_s_s((p_924->g_93 , l_118), (**p_89))))))), p_924->g_77)), l_121))), 65528UL)))) , p_91))), (-4L))), FAKE_DIVERGE(p_924->group_0_offset, get_group_id(0), 10))) >= 0x32DEL), p_90))) < p_91))
            { /* block id: 32 */
                for (p_924->g_93 = 0; (p_924->g_93 < 23); p_924->g_93 = safe_add_func_uint32_t_u_u(p_924->g_93, 3))
                { /* block id: 35 */
                    int32_t *l_130 = &p_924->g_93;
                    int32_t **l_131 = &l_130;
                    p_91 |= (safe_mul_func_int16_t_s_s(p_90, 0x1139L));
                    p_91 &= ((*p_924->g_115) = (((*l_131) = l_130) == &p_924->g_93));
                    p_91 = ((*l_96) = l_118);
                }
                for (p_924->g_125 = (-30); (p_924->g_125 == 26); ++p_924->g_125)
                { /* block id: 45 */
                    for (p_88 = 0; p_88 < 2; p_88 += 1)
                    {
                        p_924->g_114[p_88] = &p_924->g_115;
                    }
                    return l_118;
                }
            }
            else
            { /* block id: 49 */
                int32_t **l_134 = &l_96;
                (*l_134) = &p_91;
                return p_88;
            }
            p_91 = (p_924->g_77 < ((*l_96) = (safe_add_func_uint32_t_u_u((safe_add_func_uint16_t_u_u((p_924->g_21[1] , ((void*)0 == &p_88)), (!(safe_add_func_int32_t_s_s((safe_lshift_func_int16_t_s_s(p_924->g_69, p_90)), FAKE_DIVERGE(p_924->global_2_offset, get_global_id(2), 10)))))), (p_924->g_77 > p_924->g_143)))));
            for (p_91 = 0; (p_91 <= 5); p_91 += 1)
            { /* block id: 57 */
                int i;
                l_144[3][1][3] = (void*)0;
                return l_94[p_91];
            }
        }
        l_96 = (((*l_169) |= (&l_95 == ((*l_167) = &l_96))) , (**l_167));
        l_96 = ((safe_mul_func_uint16_t_u_u(((*l_96) = (((*l_172) = 1UL) >= (safe_mod_func_uint8_t_u_u((safe_mul_func_int8_t_s_s(((((safe_add_func_uint8_t_u_u(FAKE_DIVERGE(p_924->global_1_offset, get_global_id(1), 10), (((((***l_167) , ((*l_96) , l_96)) == (void*)0) | ((safe_mod_func_int64_t_s_s((((safe_lshift_func_int16_t_s_s((*l_96), (safe_div_func_int8_t_s_s((-7L), (**p_89))))) || 0x34804F9BL) , (***l_167)), p_924->g_163.f0)) < 0x449837FEA80240E7L)) >= (*l_95)))) & p_88) > p_924->g_158[8].f0) <= p_91), 1L)), 248UL)))), p_91)) , l_96);
        (*p_924->g_115) = ((((*l_188) &= (((*p_89) = l_187) == l_187)) , (l_192[0][2][3] &= (l_189 , (***l_167)))) ^ (safe_mod_func_int32_t_s_s((safe_rshift_func_uint8_t_u_s((l_198--), (0x4B936DA7L && (4294967295UL < l_201[0][1])))), 1UL)));
    }
    else
    { /* block id: 73 */
        int8_t l_208 = 0L;
        int64_t l_215 = 5L;
        int32_t *l_244 = (void*)0;
        int32_t *l_245 = (void*)0;
        int32_t *l_246 = (void*)0;
        int32_t *l_247[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t l_248[7][9][4] = {{{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L}},{{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L}},{{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L}},{{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L}},{{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L}},{{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L}},{{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L},{0L,0x11915D6DL,(-1L),7L}}};
        uint64_t l_249 = 0x0044AA38A1068222L;
        int i, j, k;
        for (p_924->g_120 = (-30); (p_924->g_120 < 10); p_924->g_120++)
        { /* block id: 76 */
            uint64_t *l_211 = &p_924->g_212;
            uint16_t l_238 = 0x27B1L;
            (*l_96) = 0x24827437L;
            if ((1L <= (safe_add_func_uint16_t_u_u((FAKE_DIVERGE(p_924->global_0_offset, get_global_id(0), 10) != (safe_add_func_int64_t_s_s(l_208, (safe_div_func_uint64_t_u_u(((*l_211) = 0x810AE63E790F2ED5L), 0x6AE4A769E6F5A32CL))))), l_208))))
            { /* block id: 79 */
                uint16_t l_239 = 65526UL;
                int16_t *l_240 = (void*)0;
                int16_t *l_241 = (void*)0;
                int16_t *l_242 = &p_924->g_243;
                (*p_924->g_115) |= ((+p_90) != ((safe_lshift_func_int16_t_s_u(l_215, 14)) , (safe_sub_func_int64_t_s_s(l_208, ((*l_211) = (((safe_rshift_func_uint16_t_u_s(p_924->g_120, 6)) == (((safe_div_func_uint32_t_u_u((FAKE_DIVERGE(p_924->global_0_offset, get_global_id(0), 10) , (safe_mod_func_int16_t_s_s(((safe_unary_minus_func_int64_t_s(((safe_mul_func_int16_t_s_s((safe_rshift_func_int16_t_s_s(((safe_mul_func_uint16_t_u_u((p_924->g_123 ^= ((safe_add_func_int8_t_s_s((**p_89), FAKE_DIVERGE(p_924->global_0_offset, get_global_id(0), 10))) && (safe_unary_minus_func_int16_t_s(0x3205L)))), p_91)) & GROUP_DIVERGE(1, 1)), 9)), (((safe_add_func_int32_t_s_s((safe_sub_func_int16_t_s_s((p_924->g_125 ^= l_238), ((*l_242) = l_239))), 0x0E86BA87L)) ^ p_924->g_39) ^ p_90))) , p_924->g_21[5]))) >= l_239), 65535UL))), l_238)) & 0x22E11841307E7D1AL) , l_238)) && p_924->g_146.f0))))));
            }
            else
            { /* block id: 85 */
                return p_91;
            }
        }
        ++l_249;
    }
    return (*l_96);
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S2 c_925;
    struct S2* p_924 = &c_925;
    struct S2 c_926 = {
        (-1L), // p_924->g_2
        {65535UL,0x672DL,65535UL,65535UL,0x672DL,65535UL}, // p_924->g_21
        0x01L, // p_924->g_39
        &p_924->g_39, // p_924->g_38
        0x799E6047L, // p_924->g_47
        3UL, // p_924->g_53
        1L, // p_924->g_69
        0xB19957B0L, // p_924->g_77
        0x58FC8FA0L, // p_924->g_93
        &p_924->g_69, // p_924->g_115
        {&p_924->g_115,&p_924->g_115}, // p_924->g_114
        0xBCL, // p_924->g_120
        6UL, // p_924->g_123
        3L, // p_924->g_125
        0L, // p_924->g_143
        {0UL}, // p_924->g_145
        {0xF8L}, // p_924->g_146
        {2UL}, // p_924->g_147
        {{{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}}},{{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}}},{{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}}},{{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}}},{{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}}},{{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}}},{{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}}},{{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}}}}, // p_924->g_148
        {1UL}, // p_924->g_149
        {0x06L}, // p_924->g_150
        {{{{0xA8L},{0xC4L},{0xA8L},{0xA8L},{0xC4L}},{{0xA8L},{0xC4L},{0xA8L},{0xA8L},{0xC4L}},{{0xA8L},{0xC4L},{0xA8L},{0xA8L},{0xC4L}},{{0xA8L},{0xC4L},{0xA8L},{0xA8L},{0xC4L}}},{{{0xA8L},{0xC4L},{0xA8L},{0xA8L},{0xC4L}},{{0xA8L},{0xC4L},{0xA8L},{0xA8L},{0xC4L}},{{0xA8L},{0xC4L},{0xA8L},{0xA8L},{0xC4L}},{{0xA8L},{0xC4L},{0xA8L},{0xA8L},{0xC4L}}},{{{0xA8L},{0xC4L},{0xA8L},{0xA8L},{0xC4L}},{{0xA8L},{0xC4L},{0xA8L},{0xA8L},{0xC4L}},{{0xA8L},{0xC4L},{0xA8L},{0xA8L},{0xC4L}},{{0xA8L},{0xC4L},{0xA8L},{0xA8L},{0xC4L}}}}, // p_924->g_151
        {0x61L}, // p_924->g_152
        {255UL}, // p_924->g_153
        {0x98L}, // p_924->g_154
        {0x81L}, // p_924->g_155
        {{{{0xC6L},{0x21L},{3UL},{0x21L},{0xC6L}},{{0xC6L},{0x21L},{3UL},{0x21L},{0xC6L}}},{{{0xC6L},{0x21L},{3UL},{0x21L},{0xC6L}},{{0xC6L},{0x21L},{3UL},{0x21L},{0xC6L}}},{{{0xC6L},{0x21L},{3UL},{0x21L},{0xC6L}},{{0xC6L},{0x21L},{3UL},{0x21L},{0xC6L}}},{{{0xC6L},{0x21L},{3UL},{0x21L},{0xC6L}},{{0xC6L},{0x21L},{3UL},{0x21L},{0xC6L}}}}, // p_924->g_156
        {253UL}, // p_924->g_157
        {{0xCBL},{0xCBL},{0xCBL},{0xCBL},{0xCBL},{0xCBL},{0xCBL},{0xCBL},{0xCBL}}, // p_924->g_158
        {6UL}, // p_924->g_159
        {{0x93L},{0x93L}}, // p_924->g_160
        {255UL}, // p_924->g_161
        {0x16L}, // p_924->g_162
        {252UL}, // p_924->g_163
        {255UL}, // p_924->g_164
        {255UL}, // p_924->g_165
        {0xFDL}, // p_924->g_166
        0x60A05798251A3F53L, // p_924->g_212
        0x5D91L, // p_924->g_243
        0x48C1426EL, // p_924->g_264
        {0x37EA1FA74C0A3D98L}, // p_924->g_293
        &p_924->g_293, // p_924->g_292
        {{{5L,3L,0x4DDF1774L,1L,0x0F65F2ECL,1L,0x4DDF1774L,3L,5L,0x4DDF1774L},{5L,3L,0x4DDF1774L,1L,0x0F65F2ECL,1L,0x4DDF1774L,3L,5L,0x4DDF1774L}},{{5L,3L,0x4DDF1774L,1L,0x0F65F2ECL,1L,0x4DDF1774L,3L,5L,0x4DDF1774L},{5L,3L,0x4DDF1774L,1L,0x0F65F2ECL,1L,0x4DDF1774L,3L,5L,0x4DDF1774L}},{{5L,3L,0x4DDF1774L,1L,0x0F65F2ECL,1L,0x4DDF1774L,3L,5L,0x4DDF1774L},{5L,3L,0x4DDF1774L,1L,0x0F65F2ECL,1L,0x4DDF1774L,3L,5L,0x4DDF1774L}},{{5L,3L,0x4DDF1774L,1L,0x0F65F2ECL,1L,0x4DDF1774L,3L,5L,0x4DDF1774L},{5L,3L,0x4DDF1774L,1L,0x0F65F2ECL,1L,0x4DDF1774L,3L,5L,0x4DDF1774L}},{{5L,3L,0x4DDF1774L,1L,0x0F65F2ECL,1L,0x4DDF1774L,3L,5L,0x4DDF1774L},{5L,3L,0x4DDF1774L,1L,0x0F65F2ECL,1L,0x4DDF1774L,3L,5L,0x4DDF1774L}}}, // p_924->g_394
        (void*)0, // p_924->g_412
        &p_924->g_212, // p_924->g_414
        (void*)0, // p_924->g_421
        &p_924->g_421, // p_924->g_420
        &p_924->g_123, // p_924->g_423
        &p_924->g_423, // p_924->g_422
        &p_924->g_93, // p_924->g_495
        {&p_924->g_495,&p_924->g_495,&p_924->g_495,&p_924->g_495,&p_924->g_495,&p_924->g_495}, // p_924->g_494
        (-9L), // p_924->g_499
        {-1L}, // p_924->g_532
        2L, // p_924->g_588
        {{&p_924->g_421,&p_924->g_421,&p_924->g_421,&p_924->g_421},{&p_924->g_421,&p_924->g_421,&p_924->g_421,&p_924->g_421},{&p_924->g_421,&p_924->g_421,&p_924->g_421,&p_924->g_421},{&p_924->g_421,&p_924->g_421,&p_924->g_421,&p_924->g_421}}, // p_924->g_595
        {{&p_924->g_595[2][0],&p_924->g_595[0][1],&p_924->g_595[2][0]},{&p_924->g_595[2][0],&p_924->g_595[0][1],&p_924->g_595[2][0]}}, // p_924->g_594
        (void*)0, // p_924->g_632
        0x1AL, // p_924->g_676
        &p_924->g_632, // p_924->g_738
        &p_924->g_53, // p_924->g_784
        &p_924->g_784, // p_924->g_783
        &p_924->g_784, // p_924->g_786
        1UL, // p_924->g_812
        &p_924->g_812, // p_924->g_811
        &p_924->g_811, // p_924->g_810
        {-1L}, // p_924->g_844
        (void*)0, // p_924->g_854
        {0x02L,0x02L,0x02L}, // p_924->g_856
        0xBB5FC32FL, // p_924->g_857
        {0L}, // p_924->g_895
        &p_924->g_115, // p_924->g_919
        0, // p_924->v_collective
        sequence_input[get_global_id(0)], // p_924->global_0_offset
        sequence_input[get_global_id(1)], // p_924->global_1_offset
        sequence_input[get_global_id(2)], // p_924->global_2_offset
        sequence_input[get_local_id(0)], // p_924->local_0_offset
        sequence_input[get_local_id(1)], // p_924->local_1_offset
        sequence_input[get_local_id(2)], // p_924->local_2_offset
        sequence_input[get_group_id(0)], // p_924->group_0_offset
        sequence_input[get_group_id(1)], // p_924->group_1_offset
        sequence_input[get_group_id(2)], // p_924->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_925 = c_926;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_924);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_924->g_2, "p_924->g_2", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_924->g_21[i], "p_924->g_21[i]", print_hash_value);

    }
    transparent_crc(p_924->g_39, "p_924->g_39", print_hash_value);
    transparent_crc(p_924->g_47, "p_924->g_47", print_hash_value);
    transparent_crc(p_924->g_53, "p_924->g_53", print_hash_value);
    transparent_crc(p_924->g_69, "p_924->g_69", print_hash_value);
    transparent_crc(p_924->g_77, "p_924->g_77", print_hash_value);
    transparent_crc(p_924->g_93, "p_924->g_93", print_hash_value);
    transparent_crc(p_924->g_120, "p_924->g_120", print_hash_value);
    transparent_crc(p_924->g_123, "p_924->g_123", print_hash_value);
    transparent_crc(p_924->g_125, "p_924->g_125", print_hash_value);
    transparent_crc(p_924->g_143, "p_924->g_143", print_hash_value);
    transparent_crc(p_924->g_145.f0, "p_924->g_145.f0", print_hash_value);
    transparent_crc(p_924->g_146.f0, "p_924->g_146.f0", print_hash_value);
    transparent_crc(p_924->g_147.f0, "p_924->g_147.f0", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_924->g_148[i][j][k].f0, "p_924->g_148[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_924->g_149.f0, "p_924->g_149.f0", print_hash_value);
    transparent_crc(p_924->g_150.f0, "p_924->g_150.f0", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_924->g_151[i][j][k].f0, "p_924->g_151[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_924->g_152.f0, "p_924->g_152.f0", print_hash_value);
    transparent_crc(p_924->g_153.f0, "p_924->g_153.f0", print_hash_value);
    transparent_crc(p_924->g_154.f0, "p_924->g_154.f0", print_hash_value);
    transparent_crc(p_924->g_155.f0, "p_924->g_155.f0", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_924->g_156[i][j][k].f0, "p_924->g_156[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_924->g_157.f0, "p_924->g_157.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_924->g_158[i].f0, "p_924->g_158[i].f0", print_hash_value);

    }
    transparent_crc(p_924->g_159.f0, "p_924->g_159.f0", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_924->g_160[i].f0, "p_924->g_160[i].f0", print_hash_value);

    }
    transparent_crc(p_924->g_161.f0, "p_924->g_161.f0", print_hash_value);
    transparent_crc(p_924->g_162.f0, "p_924->g_162.f0", print_hash_value);
    transparent_crc(p_924->g_163.f0, "p_924->g_163.f0", print_hash_value);
    transparent_crc(p_924->g_164.f0, "p_924->g_164.f0", print_hash_value);
    transparent_crc(p_924->g_165.f0, "p_924->g_165.f0", print_hash_value);
    transparent_crc(p_924->g_166.f0, "p_924->g_166.f0", print_hash_value);
    transparent_crc(p_924->g_212, "p_924->g_212", print_hash_value);
    transparent_crc(p_924->g_243, "p_924->g_243", print_hash_value);
    transparent_crc(p_924->g_264, "p_924->g_264", print_hash_value);
    transparent_crc(p_924->g_293.f0, "p_924->g_293.f0", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 10; k++)
            {
                transparent_crc(p_924->g_394[i][j][k], "p_924->g_394[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_924->g_499, "p_924->g_499", print_hash_value);
    transparent_crc(p_924->g_532.f0, "p_924->g_532.f0", print_hash_value);
    transparent_crc(p_924->g_588, "p_924->g_588", print_hash_value);
    transparent_crc(p_924->g_676, "p_924->g_676", print_hash_value);
    transparent_crc(p_924->g_812, "p_924->g_812", print_hash_value);
    transparent_crc(p_924->g_844.f0, "p_924->g_844.f0", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_924->g_856[i], "p_924->g_856[i]", print_hash_value);

    }
    transparent_crc(p_924->g_857, "p_924->g_857", print_hash_value);
    transparent_crc(p_924->g_895.f0, "p_924->g_895.f0", print_hash_value);
    transparent_crc(p_924->v_collective, "p_924->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
