// ---fake_divergence ---inter_thread_comm -g 99,8,12 -l 1,1,3
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

__constant uint32_t permutations[10][3] = {
{2,0,1}, // permutation 0
{1,2,0}, // permutation 1
{1,0,2}, // permutation 2
{1,2,0}, // permutation 3
{1,2,0}, // permutation 4
{1,0,2}, // permutation 5
{1,2,0}, // permutation 6
{1,0,2}, // permutation 7
{1,0,2}, // permutation 8
{1,0,2} // permutation 9
};

// Seed: 61

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint32_t  f0;
};

struct S1 {
    volatile int32_t g_3;
    int32_t g_4;
    uint16_t g_9;
    uint16_t *g_29;
    uint16_t g_31;
    int8_t g_47;
    int8_t g_64;
    int64_t g_95;
    int8_t g_100;
    int64_t g_102;
    volatile uint32_t g_106;
    uint16_t g_124[7];
    uint32_t g_135[4];
    volatile int32_t g_137[7];
    int32_t g_138;
    int32_t g_139[7];
    uint8_t g_169[7];
    int64_t * volatile * volatile g_173;
    int64_t * volatile * volatile * volatile g_174;
    uint8_t *** volatile g_178;
    int32_t * volatile g_181;
    int32_t * volatile g_184;
    int32_t * volatile g_214;
    int32_t g_253[6][5];
    uint8_t g_288[9][10];
    int32_t ** volatile g_314;
    int32_t g_342;
    int64_t *g_368;
    int64_t **g_367;
    int64_t *** volatile g_366;
    union U0 g_408;
    int32_t g_412;
    volatile uint8_t g_417;
    volatile uint8_t g_418;
    volatile uint8_t g_419;
    volatile uint8_t *g_416[9];
    volatile uint8_t **g_415;
    int16_t g_444;
    int32_t g_471;
    uint64_t g_511;
    int32_t *g_513;
    int32_t ** volatile g_512;
    int32_t ** volatile g_566;
    int32_t ** volatile g_567;
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
uint16_t  func_1(struct S1 * p_644);
int8_t  func_15(uint16_t  p_16, struct S1 * p_644);
uint8_t  func_19(uint16_t * p_20, uint16_t  p_21, int16_t  p_22, uint16_t * p_23, uint16_t * p_24, struct S1 * p_644);
int8_t  func_25(int8_t  p_26, uint16_t * p_27, uint16_t * p_28, struct S1 * p_644);
int32_t * func_58(int32_t  p_59, int64_t  p_60, struct S1 * p_644);
uint16_t * func_65(int64_t  p_66, int32_t  p_67, uint32_t  p_68, uint8_t  p_69, struct S1 * p_644);
uint16_t  func_76(uint8_t  p_77, struct S1 * p_644);
uint16_t * func_82(int8_t * p_83, int8_t * p_84, uint64_t  p_85, int16_t  p_86, uint16_t * p_87, struct S1 * p_644);
int8_t * func_89(int64_t  p_90, uint16_t * p_91, int64_t  p_92, struct S1 * p_644);
int32_t  func_113(int64_t * p_114, uint16_t * p_115, int8_t * p_116, struct S1 * p_644);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_644->g_comm_values p_644->g_139
 * writes: p_644->g_4
 */
uint16_t  func_1(struct S1 * p_644)
{ /* block id: 4 */
    uint32_t l_2[4] = {0x871D976FL,0x871D976FL,0x871D976FL,0x871D976FL};
    uint16_t *l_7 = (void*)0;
    uint16_t *l_8 = &p_644->g_9;
    int32_t l_12 = 1L;
    uint16_t *l_30[6][2];
    int8_t *l_46 = &p_644->g_47;
    int32_t l_569 = 4L;
    int32_t *l_610 = &p_644->g_139[0];
    int32_t *l_611 = &p_644->g_471;
    int32_t l_619[4][8] = {{0x57EA800FL,0x6A0D212FL,0x57EA800FL,0x57EA800FL,0x6A0D212FL,0x57EA800FL,0x57EA800FL,0x6A0D212FL},{0x57EA800FL,0x6A0D212FL,0x57EA800FL,0x57EA800FL,0x6A0D212FL,0x57EA800FL,0x57EA800FL,0x6A0D212FL},{0x57EA800FL,0x6A0D212FL,0x57EA800FL,0x57EA800FL,0x6A0D212FL,0x57EA800FL,0x57EA800FL,0x6A0D212FL},{0x57EA800FL,0x6A0D212FL,0x57EA800FL,0x57EA800FL,0x6A0D212FL,0x57EA800FL,0x57EA800FL,0x6A0D212FL}};
    uint64_t l_620 = 0xC67D29886436A3BDL;
    uint32_t **l_630 = (void*)0;
    int i, j;
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 2; j++)
            l_30[i][j] = &p_644->g_31;
    }
    for (p_644->g_4 = 0; (p_644->g_4 <= 3); p_644->g_4 += 1)
    { /* block id: 7 */
        return p_644->g_comm_values[p_644->tid];
    }
    return (*l_610);
}


/* ------------------------------------------ */
/* 
 * reads : p_644->g_408 p_644->g_408.f0 p_644->g_412 p_644->g_181 p_644->g_139 p_644->g_95 p_644->g_444
 * writes: p_644->g_288 p_644->g_135 p_644->g_444 p_644->g_513
 */
int8_t  func_15(uint16_t  p_16, struct S1 * p_644)
{ /* block id: 315 */
    uint64_t l_575 = 18446744073709551612UL;
    uint8_t *l_576 = &p_644->g_288[5][5];
    int8_t *l_600[8][4][8] = {{{&p_644->g_100,(void*)0,(void*)0,&p_644->g_100,&p_644->g_100,&p_644->g_47,(void*)0,&p_644->g_47},{&p_644->g_100,(void*)0,(void*)0,&p_644->g_100,&p_644->g_100,&p_644->g_47,(void*)0,&p_644->g_47},{&p_644->g_100,(void*)0,(void*)0,&p_644->g_100,&p_644->g_100,&p_644->g_47,(void*)0,&p_644->g_47},{&p_644->g_100,(void*)0,(void*)0,&p_644->g_100,&p_644->g_100,&p_644->g_47,(void*)0,&p_644->g_47}},{{&p_644->g_100,(void*)0,(void*)0,&p_644->g_100,&p_644->g_100,&p_644->g_47,(void*)0,&p_644->g_47},{&p_644->g_100,(void*)0,(void*)0,&p_644->g_100,&p_644->g_100,&p_644->g_47,(void*)0,&p_644->g_47},{&p_644->g_100,(void*)0,(void*)0,&p_644->g_100,&p_644->g_100,&p_644->g_47,(void*)0,&p_644->g_47},{&p_644->g_100,(void*)0,(void*)0,&p_644->g_100,&p_644->g_100,&p_644->g_47,(void*)0,&p_644->g_47}},{{&p_644->g_100,(void*)0,(void*)0,&p_644->g_100,&p_644->g_100,&p_644->g_47,(void*)0,&p_644->g_47},{&p_644->g_100,(void*)0,(void*)0,&p_644->g_100,&p_644->g_100,&p_644->g_47,(void*)0,&p_644->g_47},{&p_644->g_100,(void*)0,(void*)0,&p_644->g_100,&p_644->g_100,&p_644->g_47,(void*)0,&p_644->g_47},{&p_644->g_100,(void*)0,(void*)0,&p_644->g_100,&p_644->g_100,&p_644->g_47,(void*)0,&p_644->g_47}},{{&p_644->g_100,(void*)0,(void*)0,&p_644->g_100,&p_644->g_100,&p_644->g_47,(void*)0,&p_644->g_47},{&p_644->g_100,(void*)0,(void*)0,&p_644->g_100,&p_644->g_100,&p_644->g_47,(void*)0,&p_644->g_47},{&p_644->g_100,(void*)0,(void*)0,&p_644->g_100,&p_644->g_100,&p_644->g_47,(void*)0,&p_644->g_47},{&p_644->g_100,(void*)0,(void*)0,&p_644->g_100,&p_644->g_100,&p_644->g_47,(void*)0,&p_644->g_47}},{{&p_644->g_100,(void*)0,(void*)0,&p_644->g_100,&p_644->g_100,&p_644->g_47,(void*)0,&p_644->g_47},{&p_644->g_100,(void*)0,(void*)0,&p_644->g_100,&p_644->g_100,&p_644->g_47,(void*)0,&p_644->g_47},{&p_644->g_100,(void*)0,(void*)0,&p_644->g_100,&p_644->g_100,&p_644->g_47,(void*)0,&p_644->g_47},{&p_644->g_100,(void*)0,(void*)0,&p_644->g_100,&p_644->g_100,&p_644->g_47,(void*)0,&p_644->g_47}},{{&p_644->g_100,(void*)0,(void*)0,&p_644->g_100,&p_644->g_100,&p_644->g_47,(void*)0,&p_644->g_47},{&p_644->g_100,(void*)0,(void*)0,&p_644->g_100,&p_644->g_100,&p_644->g_47,(void*)0,&p_644->g_47},{&p_644->g_100,(void*)0,(void*)0,&p_644->g_100,&p_644->g_100,&p_644->g_47,(void*)0,&p_644->g_47},{&p_644->g_100,(void*)0,(void*)0,&p_644->g_100,&p_644->g_100,&p_644->g_47,(void*)0,&p_644->g_47}},{{&p_644->g_100,(void*)0,(void*)0,&p_644->g_100,&p_644->g_100,&p_644->g_47,(void*)0,&p_644->g_47},{&p_644->g_100,(void*)0,(void*)0,&p_644->g_100,&p_644->g_100,&p_644->g_47,(void*)0,&p_644->g_47},{&p_644->g_100,(void*)0,(void*)0,&p_644->g_100,&p_644->g_100,&p_644->g_47,(void*)0,&p_644->g_47},{&p_644->g_100,(void*)0,(void*)0,&p_644->g_100,&p_644->g_100,&p_644->g_47,(void*)0,&p_644->g_47}},{{&p_644->g_100,(void*)0,(void*)0,&p_644->g_100,&p_644->g_100,&p_644->g_47,(void*)0,&p_644->g_47},{&p_644->g_100,(void*)0,(void*)0,&p_644->g_100,&p_644->g_100,&p_644->g_47,(void*)0,&p_644->g_47},{&p_644->g_100,(void*)0,(void*)0,&p_644->g_100,&p_644->g_100,&p_644->g_47,(void*)0,&p_644->g_47},{&p_644->g_100,(void*)0,(void*)0,&p_644->g_100,&p_644->g_100,&p_644->g_47,(void*)0,&p_644->g_47}}};
    int32_t l_601 = 0L;
    int32_t l_602 = 0x67B16FFDL;
    int32_t **l_603 = &p_644->g_513;
    uint32_t *l_604 = &p_644->g_135[1];
    int32_t l_605 = 0x5E18A22BL;
    int i, j, k;
    l_605 = (((((*l_604) = (safe_unary_minus_func_int32_t_s((safe_lshift_func_int8_t_s_s((safe_add_func_uint8_t_u_u(((*l_576) = l_575), (safe_add_func_uint8_t_u_u((safe_div_func_int32_t_s_s((((safe_add_func_int8_t_s_s(0L, (safe_lshift_func_int16_t_s_s(((((l_602 = (safe_sub_func_uint32_t_u_u((((p_16 & ((safe_mod_func_int8_t_s_s((0x193A38054BF1D25DL <= (-8L)), (p_644->g_408 , (safe_lshift_func_int8_t_s_u(((safe_lshift_func_uint16_t_u_u((((((safe_rshift_func_int16_t_s_s((safe_unary_minus_func_int64_t_s(((l_601 = (safe_add_func_uint8_t_u_u(((void*)0 != l_576), 0x92L))) & GROUP_DIVERGE(2, 1)))), 2)) == p_16) || p_644->g_408.f0) || 0x60L) ^ 0UL), p_16)) >= 0L), l_602))))) , l_601)) ^ p_644->g_412) ^ 0UL), p_16))) , 0x3C6ED0638939E05AL) , l_603) != (void*)0), 7)))) == p_16) , (*p_644->g_181)), p_644->g_139[0])), 1UL)))), 1))))) , 1UL) != p_644->g_95) || l_575);
    for (p_644->g_444 = 6; (p_644->g_444 != (-26)); p_644->g_444--)
    { /* block id: 323 */
        int32_t *l_608[4][1];
        uint8_t l_609 = 0xB0L;
        int i, j;
        for (i = 0; i < 4; i++)
        {
            for (j = 0; j < 1; j++)
                l_608[i][j] = &p_644->g_138;
        }
        (*l_603) = l_608[1][0];
        return l_609;
    }
    return p_16;
}


/* ------------------------------------------ */
/* 
 * reads : p_644->g_31 p_644->g_47 p_644->g_64 p_644->g_288 p_644->g_124 p_644->g_135 p_644->g_511 p_644->g_139 p_644->g_513 p_644->g_471 p_644->g_512 p_644->g_566
 * writes: p_644->g_31 p_644->g_47 p_644->g_64 p_644->g_124 p_644->g_135 p_644->g_471 p_644->g_513
 */
uint8_t  func_19(uint16_t * p_20, uint16_t  p_21, int16_t  p_22, uint16_t * p_23, uint16_t * p_24, struct S1 * p_644)
{ /* block id: 16 */
    uint32_t *l_522 = &p_644->g_135[1];
    uint32_t **l_521 = &l_522;
    int32_t l_531 = 0x7482FE10L;
    int32_t l_532[2][1];
    uint32_t l_539[9] = {0x2CB969A1L,0x2CB969A1L,0x2CB969A1L,0x2CB969A1L,0x2CB969A1L,0x2CB969A1L,0x2CB969A1L,0x2CB969A1L,0x2CB969A1L};
    uint32_t l_547[8] = {0x5D93D246L,0x5D93D246L,0x5D93D246L,0x5D93D246L,0x5D93D246L,0x5D93D246L,0x5D93D246L,0x5D93D246L};
    int32_t **l_568 = (void*)0;
    int i, j;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
            l_532[i][j] = 0L;
    }
    for (p_644->g_31 = (-11); (p_644->g_31 < 38); p_644->g_31++)
    { /* block id: 19 */
        int16_t l_62 = (-5L);
        uint16_t *l_98 = &p_644->g_31;
        int32_t l_111 = (-1L);
        int32_t *l_520 = &p_644->g_342;
        int32_t l_533[2];
        int64_t *l_557 = &p_644->g_102;
        int64_t **l_556[5][2] = {{&l_557,&l_557},{&l_557,&l_557},{&l_557,&l_557},{&l_557,&l_557},{&l_557,&l_557}};
        int64_t ***l_555 = &l_556[2][0];
        int i, j;
        for (i = 0; i < 2; i++)
            l_533[i] = 0x4FFCD64DL;
        for (p_21 = (-14); (p_21 != 40); p_21 = safe_add_func_uint32_t_u_u(p_21, 4))
        { /* block id: 22 */
            int32_t l_61 = 0x2064F577L;
            int8_t *l_88 = &p_644->g_47;
            int32_t l_534 = 0x6395B966L;
            int32_t l_535 = (-3L);
            int32_t l_536 = 0x3BB4F471L;
            int32_t l_537 = 0x2872A3EAL;
            int32_t l_538[10][1] = {{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}};
            int32_t *l_563 = (void*)0;
            int i, j;
            if ((0x3CBFL | (GROUP_DIVERGE(1, 1) >= 0x1FDF20BE86DE1F17L)))
            { /* block id: 23 */
                uint32_t **l_523 = &l_522;
                for (p_644->g_47 = 0; (p_644->g_47 == (-27)); p_644->g_47 = safe_sub_func_uint32_t_u_u(p_644->g_47, 8))
                { /* block id: 26 */
                    int64_t l_96 = (-1L);
                    int32_t l_103 = 0x2D206F84L;
                    int32_t *l_519[2][3];
                    int32_t **l_524 = &p_644->g_513;
                    int i, j;
                    for (i = 0; i < 2; i++)
                    {
                        for (j = 0; j < 3; j++)
                            l_519[i][j] = &p_644->g_138;
                    }
                    if (p_21)
                        break;
                }
            }
            else
            { /* block id: 287 */
                int32_t *l_525 = &p_644->g_471;
                int32_t l_526[3];
                int32_t *l_527 = &p_644->g_139[4];
                int32_t *l_528 = (void*)0;
                int32_t *l_529 = &p_644->g_138;
                int32_t *l_530[7] = {&l_526[2],&l_526[2],&l_526[2],&l_526[2],&l_526[2],&l_526[2],&l_526[2]};
                int i;
                for (i = 0; i < 3; i++)
                    l_526[i] = (-9L);
                --l_539[8];
            }
            for (p_644->g_64 = 0; (p_644->g_64 <= 0); p_644->g_64 += 1)
            { /* block id: 292 */
                uint8_t l_546[4] = {0xE6L,0xE6L,0xE6L,0xE6L};
                int64_t *l_554 = &p_644->g_102;
                int64_t **l_553 = &l_554;
                int64_t ***l_552 = &l_553;
                int32_t l_558 = (-7L);
                uint16_t *l_559 = &p_644->g_124[0];
                uint16_t l_560 = 0xA187L;
                int32_t *l_562 = (void*)0;
                int32_t **l_561 = &l_562;
                int i, j;
                (*p_644->g_513) &= ((((((l_538[(p_644->g_64 + 5)][p_644->g_64] <= (safe_sub_func_uint32_t_u_u((l_538[(p_644->g_64 + 9)][p_644->g_64] && (safe_add_func_uint32_t_u_u(((*l_522) |= (p_22 && ((((((-7L) & (l_546[3] = GROUP_DIVERGE(1, 1))) >= (l_547[3] = l_538[(p_644->g_64 + 5)][p_644->g_64])) > ((*l_559) &= (l_558 ^= (safe_mul_func_uint8_t_u_u(0xBFL, (((safe_lshift_func_int8_t_s_u((l_552 != l_555), (p_22 < 0xCB17BF750D99C866L))) & p_644->g_288[8][2]) != 65535UL)))))) & 0x1F82DCE6ED47C842L) != 1L))), p_644->g_511))), p_22))) , 0xE609L) >= l_531) && l_560) != p_644->g_139[0]) , 0x78FEEEE0L);
                (*p_644->g_513) |= (&p_644->g_412 == (l_563 = ((*l_561) = (void*)0)));
            }
            for (l_537 = 0; (l_537 <= 2); l_537++)
            { /* block id: 305 */
                (*p_644->g_566) = (*p_644->g_512);
                if (l_61)
                    continue;
                return p_21;
            }
        }
        if (p_21)
            break;
    }
    (*p_644->g_566) = &l_531;
    return l_547[3];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t  func_25(int8_t  p_26, uint16_t * p_27, uint16_t * p_28, struct S1 * p_644)
{ /* block id: 12 */
    int32_t *l_32 = &p_644->g_4;
    int32_t l_33 = 0x2C005D9CL;
    int32_t *l_34 = (void*)0;
    int32_t *l_35 = &l_33;
    int32_t *l_36 = (void*)0;
    int32_t l_37 = 1L;
    int32_t *l_38 = &l_37;
    int32_t l_39[5];
    int32_t *l_40 = &l_37;
    int32_t *l_41 = &l_39[0];
    int32_t *l_42 = &p_644->g_4;
    uint64_t l_43 = 18446744073709551613UL;
    int i;
    for (i = 0; i < 5; i++)
        l_39[i] = 0x7684ABF0L;
    --l_43;
    return p_26;
}


/* ------------------------------------------ */
/* 
 * reads : p_644->g_138 p_644->g_408 p_644->g_124 p_644->g_253 p_644->g_137 p_644->g_412 p_644->g_415 p_644->g_139 p_644->g_100 p_644->g_135 p_644->g_95 p_644->g_64 p_644->g_444 p_644->g_4 p_644->g_418 p_644->g_342 p_644->g_comm_values p_644->g_169 p_644->g_3 p_644->g_288 p_644->l_comm_values p_644->g_102 p_644->g_47 p_644->g_512 p_644->g_513
 * writes: p_644->g_138 p_644->g_367 p_644->g_412 p_644->g_139 p_644->g_100 p_644->g_135 p_644->g_342 p_644->g_408.f0 p_644->g_64 p_644->g_444 p_644->g_4 p_644->g_288 p_644->g_95 p_644->g_102 p_644->g_511 p_644->g_513
 */
int32_t * func_58(int32_t  p_59, int64_t  p_60, struct S1 * p_644)
{ /* block id: 205 */
    uint16_t l_396 = 0UL;
    int32_t *l_399 = &p_644->g_138;
    int64_t *l_428 = &p_644->g_102;
    int64_t ***l_430 = (void*)0;
    uint32_t *l_441 = &p_644->g_408.f0;
    union U0 l_442 = {4294967295UL};
    int16_t *l_443 = &p_644->g_444;
    int64_t l_445 = 8L;
    int64_t l_469 = 0x07A0C0C4A79FA3ADL;
    uint64_t l_472 = 18446744073709551611UL;
    if (((safe_mod_func_int32_t_s_s(8L, (safe_div_func_uint8_t_u_u((0x01CEL & 5UL), 6UL)))) | (+(~l_396))))
    { /* block id: 206 */
        union U0 l_397 = {0x7BCB3C11L};
        int32_t *l_398 = &p_644->g_342;
        int64_t **l_409 = &p_644->g_368;
        int64_t ***l_410 = &p_644->g_367;
        int32_t *l_411[10][10] = {{&p_644->g_253[5][0],&p_644->g_253[0][3],&p_644->g_253[2][2],&p_644->g_253[5][0],&p_644->g_253[1][4],&p_644->g_253[2][2],&p_644->g_253[2][2],&p_644->g_253[1][4],&p_644->g_253[5][0],&p_644->g_253[2][2]},{&p_644->g_253[5][0],&p_644->g_253[0][3],&p_644->g_253[2][2],&p_644->g_253[5][0],&p_644->g_253[1][4],&p_644->g_253[2][2],&p_644->g_253[2][2],&p_644->g_253[1][4],&p_644->g_253[5][0],&p_644->g_253[2][2]},{&p_644->g_253[5][0],&p_644->g_253[0][3],&p_644->g_253[2][2],&p_644->g_253[5][0],&p_644->g_253[1][4],&p_644->g_253[2][2],&p_644->g_253[2][2],&p_644->g_253[1][4],&p_644->g_253[5][0],&p_644->g_253[2][2]},{&p_644->g_253[5][0],&p_644->g_253[0][3],&p_644->g_253[2][2],&p_644->g_253[5][0],&p_644->g_253[1][4],&p_644->g_253[2][2],&p_644->g_253[2][2],&p_644->g_253[1][4],&p_644->g_253[5][0],&p_644->g_253[2][2]},{&p_644->g_253[5][0],&p_644->g_253[0][3],&p_644->g_253[2][2],&p_644->g_253[5][0],&p_644->g_253[1][4],&p_644->g_253[2][2],&p_644->g_253[2][2],&p_644->g_253[1][4],&p_644->g_253[5][0],&p_644->g_253[2][2]},{&p_644->g_253[5][0],&p_644->g_253[0][3],&p_644->g_253[2][2],&p_644->g_253[5][0],&p_644->g_253[1][4],&p_644->g_253[2][2],&p_644->g_253[2][2],&p_644->g_253[1][4],&p_644->g_253[5][0],&p_644->g_253[2][2]},{&p_644->g_253[5][0],&p_644->g_253[0][3],&p_644->g_253[2][2],&p_644->g_253[5][0],&p_644->g_253[1][4],&p_644->g_253[2][2],&p_644->g_253[2][2],&p_644->g_253[1][4],&p_644->g_253[5][0],&p_644->g_253[2][2]},{&p_644->g_253[5][0],&p_644->g_253[0][3],&p_644->g_253[2][2],&p_644->g_253[5][0],&p_644->g_253[1][4],&p_644->g_253[2][2],&p_644->g_253[2][2],&p_644->g_253[1][4],&p_644->g_253[5][0],&p_644->g_253[2][2]},{&p_644->g_253[5][0],&p_644->g_253[0][3],&p_644->g_253[2][2],&p_644->g_253[5][0],&p_644->g_253[1][4],&p_644->g_253[2][2],&p_644->g_253[2][2],&p_644->g_253[1][4],&p_644->g_253[5][0],&p_644->g_253[2][2]},{&p_644->g_253[5][0],&p_644->g_253[0][3],&p_644->g_253[2][2],&p_644->g_253[5][0],&p_644->g_253[1][4],&p_644->g_253[2][2],&p_644->g_253[2][2],&p_644->g_253[1][4],&p_644->g_253[5][0],&p_644->g_253[2][2]}};
        uint8_t *l_414 = &p_644->g_288[5][5];
        uint8_t **l_413[3][8][3] = {{{&l_414,&l_414,(void*)0},{&l_414,&l_414,(void*)0},{&l_414,&l_414,(void*)0},{&l_414,&l_414,(void*)0},{&l_414,&l_414,(void*)0},{&l_414,&l_414,(void*)0},{&l_414,&l_414,(void*)0},{&l_414,&l_414,(void*)0}},{{&l_414,&l_414,(void*)0},{&l_414,&l_414,(void*)0},{&l_414,&l_414,(void*)0},{&l_414,&l_414,(void*)0},{&l_414,&l_414,(void*)0},{&l_414,&l_414,(void*)0},{&l_414,&l_414,(void*)0},{&l_414,&l_414,(void*)0}},{{&l_414,&l_414,(void*)0},{&l_414,&l_414,(void*)0},{&l_414,&l_414,(void*)0},{&l_414,&l_414,(void*)0},{&l_414,&l_414,(void*)0},{&l_414,&l_414,(void*)0},{&l_414,&l_414,(void*)0},{&l_414,&l_414,(void*)0}}};
        int i, j, k;
        l_398 = (l_397 , &p_644->g_138);
        (*l_398) ^= p_59;
        l_399 = l_398;
        p_644->g_139[0] &= (((p_644->g_412 &= ((*l_398) = ((safe_mod_func_int64_t_s_s((((safe_add_func_uint32_t_u_u((safe_sub_func_uint64_t_u_u((safe_add_func_uint64_t_u_u(((((p_644->g_408 , (l_409 != ((*l_410) = l_409))) , p_644->g_124[4]) != (p_59 < ((0x58EF0E37L ^ ((((p_644->g_408 , &p_644->g_253[0][3]) != ((*l_399) , &p_59)) <= (*l_399)) == p_644->g_253[4][2])) , 1UL))) , 18446744073709551607UL), (*l_398))), p_644->g_137[0])), p_59)) && p_59) && 2UL), (*l_399))) , 0x3D155805L))) , l_413[0][2][0]) != p_644->g_415);
    }
    else
    { /* block id: 214 */
        return l_399;
    }
    for (p_644->g_100 = 0; (p_644->g_100 <= 17); p_644->g_100++)
    { /* block id: 219 */
        int64_t *l_427 = &p_644->g_102;
        int64_t **l_426 = &l_427;
        int32_t l_429 = 0x0280FFA9L;
        uint32_t *l_431 = (void*)0;
        uint32_t **l_432 = &l_431;
        uint32_t *l_435 = &p_644->g_135[1];
        int32_t *l_438 = &p_644->g_342;
        (*l_399) = (safe_sub_func_int16_t_s_s(((safe_add_func_uint16_t_u_u(((((*l_426) = &p_644->g_102) == l_428) >= (l_429 != ((l_430 == l_430) ^ (((*l_432) = l_431) != (void*)0)))), ((*l_399) >= ((((*l_435)--) > ((*l_438) = (-1L))) > p_644->g_95)))) >= p_59), 0x154DL));
    }
    l_445 &= (safe_mod_func_int32_t_s_s((p_60 | (((((*l_399) | ((*l_441) = (*l_399))) < p_60) < (*l_399)) < ((*l_443) |= (((l_442 , ((0x7361L < p_644->g_64) , (p_644->g_64 = ((*l_399) || (*l_399))))) >= p_644->g_135[3]) || (*l_399))))), 0xB3CB56F7L));
    for (p_644->g_4 = 0; (p_644->g_4 != (-21)); --p_644->g_4)
    { /* block id: 232 */
        int32_t *l_450 = &p_644->g_139[0];
        for (l_445 = 24; (l_445 < (-25)); --l_445)
        { /* block id: 235 */
            int32_t **l_451 = &l_450;
            uint8_t *l_467 = &p_644->g_288[5][5];
            uint8_t *l_468[1];
            int32_t *l_470[5][10][4] = {{{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]}},{{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]}},{{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]}},{{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]}},{{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]},{&p_644->g_139[0],&p_644->g_139[2],&p_644->g_139[2],&p_644->g_139[0]}}};
            int64_t *l_474 = &l_469;
            int i, j, k;
            for (i = 0; i < 1; i++)
                l_468[i] = &p_644->g_169[6];
            (*l_451) = l_450;
            l_472 &= ((((*l_399) = ((safe_unary_minus_func_uint16_t_u((**l_451))) <= (safe_mul_func_uint16_t_u_u(((((-1L) < (((*l_467) = (safe_lshift_func_int8_t_s_s((safe_mul_func_int16_t_s_s((((p_644->g_418 > ((0xE05C6613L != p_644->g_342) && (p_644->g_comm_values[p_644->tid] < ((*l_399) < (4UL != (safe_div_func_uint64_t_u_u((safe_div_func_uint32_t_u_u((((safe_add_func_uint32_t_u_u((safe_rshift_func_uint8_t_u_s(p_60, (*l_399))), (**l_451))) == p_644->g_342) & p_644->g_412), p_60)), p_60))))))) && 0L) & p_59), (**l_451))), 3))) ^ (-5L))) | (*l_450)) || p_59), p_60)))) , l_469) != 0x2251BB5AL);
            if ((safe_unary_minus_func_uint8_t_u((!(((l_442 , ((*l_474) ^= ((0x0AL >= p_644->g_169[6]) | p_644->g_3))) && (&p_60 != (void*)0)) | (p_59 && 5L))))))
            { /* block id: 241 */
                for (l_472 = 21; (l_472 >= 45); ++l_472)
                { /* block id: 244 */
                    (*l_399) = (p_644->g_169[3] <= (safe_mod_func_uint8_t_u_u((((FAKE_DIVERGE(p_644->global_2_offset, get_global_id(2), 10) & 9UL) || ((*l_474) &= (p_644->g_124[2] , p_59))) | (((safe_sub_func_uint32_t_u_u(p_644->g_412, 0x57A96A2FL)) | (safe_div_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_u((*l_399), 5)), ((*l_450) |= (++(*l_467)))))) , (p_59 ^ ((safe_mod_func_int64_t_s_s((*l_399), 4L)) || p_644->g_138)))), p_644->l_comm_values[(safe_mod_func_uint32_t_u_u(p_644->tid, 3))])));
                    if (p_59)
                        break;
                    (*l_399) = (0x7C6D3D1DL < 6L);
                }
                (*l_451) = (*l_451);
            }
            else
            { /* block id: 253 */
                return &p_644->g_139[0];
            }
        }
        for (p_644->g_95 = 8; (p_644->g_95 >= 0); p_644->g_95 -= 1)
        { /* block id: 259 */
            int16_t *l_489 = &p_644->g_444;
            uint64_t *l_510[9][4][7] = {{{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511},{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511},{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511},{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511}},{{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511},{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511},{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511},{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511}},{{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511},{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511},{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511},{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511}},{{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511},{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511},{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511},{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511}},{{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511},{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511},{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511},{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511}},{{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511},{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511},{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511},{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511}},{{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511},{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511},{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511},{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511}},{{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511},{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511},{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511},{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511}},{{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511},{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511},{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511},{(void*)0,&p_644->g_511,&p_644->g_511,&p_644->g_511,(void*)0,(void*)0,&p_644->g_511}}};
            int i, j, k;
            for (p_644->g_102 = 4; (p_644->g_102 >= 0); p_644->g_102 -= 1)
            { /* block id: 262 */
                if ((l_489 != l_443))
                { /* block id: 263 */
                    int i, j;
                    p_644->g_139[(p_644->g_102 + 1)] = p_644->g_288[(p_644->g_102 + 1)][p_644->g_95];
                    return &p_644->g_342;
                }
                else
                { /* block id: 266 */
                    return &p_644->g_139[4];
                }
            }
            (*l_399) ^= (((((safe_lshift_func_uint16_t_u_u(((((p_644->g_511 = ((safe_lshift_func_uint16_t_u_u((((safe_rshift_func_int16_t_s_s((safe_lshift_func_int16_t_s_s((p_644->g_288[p_644->g_95][(p_644->g_95 + 1)] , p_644->g_100), (((void*)0 != l_399) >= (p_644->g_408 , (safe_mul_func_int8_t_s_s(((safe_mul_func_uint8_t_u_u(p_59, ((((safe_mod_func_int32_t_s_s((safe_sub_func_int32_t_s_s((safe_sub_func_uint64_t_u_u((0x685FFBF6L > (safe_rshift_func_uint8_t_u_s(p_60, 1))), ((*l_450) ^ 0x4CA6417E670C9437L))), p_59)), p_644->g_288[p_644->g_95][(p_644->g_95 + 1)])) < p_59) , 0x376B0479L) , (*l_450)))) == p_59), p_60)))))), p_59)) , p_59) , p_644->g_288[p_644->g_95][(p_644->g_95 + 1)]), FAKE_DIVERGE(p_644->group_2_offset, get_group_id(2), 10))) && (*l_450))) , 0UL) , p_644->g_288[p_644->g_95][(p_644->g_95 + 1)]) <= p_59), 2)) ^ 1L) , p_644->g_169[0]) || p_60) >= p_644->g_47);
        }
        (*p_644->g_512) = l_450;
        for (p_644->g_64 = 21; (p_644->g_64 >= 28); p_644->g_64 = safe_add_func_uint64_t_u_u(p_644->g_64, 9))
        { /* block id: 276 */
            (*p_644->g_513) = (safe_lshift_func_uint16_t_u_u((*l_450), 8));
        }
    }
    return (*p_644->g_512);
}


/* ------------------------------------------ */
/* 
 * reads : p_644->g_135 p_644->g_184
 * writes: p_644->g_135 p_644->g_139
 */
uint16_t * func_65(int64_t  p_66, int32_t  p_67, uint32_t  p_68, uint8_t  p_69, struct S1 * p_644)
{ /* block id: 201 */
    uint32_t *l_388 = &p_644->g_135[1];
    uint16_t *l_391 = &p_644->g_124[4];
    (*p_644->g_184) = (((-1L) > (0x7DL >= 0x40L)) <= (p_67 ^ (--(*l_388))));
    return l_391;
}


/* ------------------------------------------ */
/* 
 * reads : p_644->g_4 p_644->g_124 p_644->l_comm_values p_644->g_135 p_644->g_100 p_644->g_47 p_644->g_95 p_644->g_138 p_644->g_102 p_644->g_139 p_644->g_169 p_644->g_106 p_644->g_173 p_644->g_174 p_644->g_181 p_644->g_184 p_644->g_178 p_644->g_214 p_644->g_342 p_644->g_comm_values p_644->g_366
 * writes: p_644->g_4 p_644->g_124 p_644->g_135 p_644->g_100 p_644->g_95 p_644->g_102 p_644->g_138 p_644->g_139 p_644->g_169 p_644->g_173 p_644->g_367
 */
uint16_t  func_76(uint8_t  p_77, struct S1 * p_644)
{ /* block id: 40 */
    int8_t l_112[9][10] = {{0x6EL,0x6EL,0x22L,0x41L,0x22L,0x6EL,0x6EL,0x61L,0x75L,0x75L},{0x6EL,0x6EL,0x22L,0x41L,0x22L,0x6EL,0x6EL,0x61L,0x75L,0x75L},{0x6EL,0x6EL,0x22L,0x41L,0x22L,0x6EL,0x6EL,0x61L,0x75L,0x75L},{0x6EL,0x6EL,0x22L,0x41L,0x22L,0x6EL,0x6EL,0x61L,0x75L,0x75L},{0x6EL,0x6EL,0x22L,0x41L,0x22L,0x6EL,0x6EL,0x61L,0x75L,0x75L},{0x6EL,0x6EL,0x22L,0x41L,0x22L,0x6EL,0x6EL,0x61L,0x75L,0x75L},{0x6EL,0x6EL,0x22L,0x41L,0x22L,0x6EL,0x6EL,0x61L,0x75L,0x75L},{0x6EL,0x6EL,0x22L,0x41L,0x22L,0x6EL,0x6EL,0x61L,0x75L,0x75L},{0x6EL,0x6EL,0x22L,0x41L,0x22L,0x6EL,0x6EL,0x61L,0x75L,0x75L}};
    uint16_t *l_122 = &p_644->g_31;
    int32_t l_213 = 1L;
    uint8_t *l_240 = &p_644->g_169[2];
    uint8_t **l_239 = &l_240;
    int32_t l_291 = 0x2F7F2659L;
    int32_t l_293[1];
    uint32_t *l_309 = (void*)0;
    union U0 l_313 = {4294967295UL};
    int32_t l_346 = (-1L);
    int16_t l_364 = (-1L);
    int64_t **l_365[3];
    int64_t *l_380 = &p_644->g_102;
    int64_t **l_379 = &l_380;
    int32_t *l_386 = (void*)0;
    int32_t *l_387 = &l_291;
    int i, j;
    for (i = 0; i < 1; i++)
        l_293[i] = 0L;
    for (i = 0; i < 3; i++)
        l_365[i] = (void*)0;
    for (p_644->g_4 = 8; (p_644->g_4 >= 1); p_644->g_4 -= 1)
    { /* block id: 43 */
        int16_t l_125 = 3L;
        int8_t *l_126 = &p_644->g_100;
        int32_t l_202 = 0L;
        int32_t *l_215 = &l_202;
        int32_t *l_216[6][6][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
        int i, j, k;
        for (p_77 = 0; (p_77 <= 8); p_77 += 1)
        { /* block id: 46 */
            int64_t *l_117 = &p_644->g_102;
            uint16_t *l_123 = &p_644->g_124[4];
            int32_t l_129 = 0L;
            uint32_t *l_134 = &p_644->g_135[1];
            int8_t *l_136 = &l_112[p_644->g_4][p_77];
            int32_t *l_201 = &l_129;
            int i, j;
            (*l_201) = func_113(l_117, func_82((l_136 = ((0x2CL && ((((safe_add_func_int16_t_s_s((safe_sub_func_uint8_t_u_u((255UL == (((l_125 = ((*l_123) &= (l_122 == (void*)0))) , &l_112[p_644->g_4][p_77]) == l_126)), ((*l_126) ^= (((*l_134) |= ((safe_lshift_func_uint8_t_u_u(((l_129 = 0xDCL) > (safe_mul_func_int8_t_s_s((safe_rshift_func_int16_t_s_u(l_112[p_644->g_4][p_77], p_77)), p_644->l_comm_values[(safe_mod_func_uint32_t_u_u(p_644->tid, 3))]))), p_644->g_4)) & 0L)) , 0x45L)))), 0xB8C3L)) , &p_644->g_102) == (void*)0) , l_112[1][2])) , &p_644->g_100)), &l_112[2][4], p_644->g_47, l_112[6][5], &p_644->g_31, p_644), l_126, p_644);
            (*l_201) &= (((*l_123) ^= 1UL) && (l_112[4][9] >= l_202));
            (*p_644->g_214) = (safe_add_func_uint64_t_u_u((safe_rshift_func_int8_t_s_s(((((!0x44L) , (0x059A0E455BE697A0L & (safe_add_func_int32_t_s_s((*p_644->g_184), (safe_add_func_int64_t_s_s((safe_rshift_func_int16_t_s_s(p_644->g_169[1], p_644->g_124[2])), p_77)))))) ^ 0UL) && (p_644->g_138 , (l_213 |= (((((*l_201) = p_77) < 6UL) <= (-5L)) & p_77)))), 6)), l_112[1][6]));
        }
        if (p_77)
            break;
        (*p_644->g_181) ^= ((*l_215) = (-1L));
        for (p_644->g_138 = 0; (p_644->g_138 <= 0); p_644->g_138 += 1)
        { /* block id: 118 */
            int64_t l_220 = 7L;
            union U0 l_242 = {0xFA8B9056L};
            int32_t l_251 = (-8L);
            uint16_t *l_254[4];
            int32_t l_299 = 0L;
            int32_t l_301 = 0x07672026L;
            int32_t l_302[5][10][3] = {{{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L}},{{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L}},{{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L}},{{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L}},{{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L},{0x7FD038DBL,0x7FD038DBL,5L}}};
            uint32_t *l_307 = (void*)0;
            uint8_t *l_318 = &p_644->g_288[5][5];
            int i, j, k;
            for (i = 0; i < 4; i++)
                l_254[i] = (void*)0;
            (1 + 1);
        }
    }
    for (l_291 = (-8); (l_291 <= 17); l_291 = safe_add_func_uint8_t_u_u(l_291, 3))
    { /* block id: 177 */
        int64_t *l_331 = (void*)0;
        int64_t *l_332 = &p_644->g_95;
        int32_t l_339 = 0x2B8A4263L;
        int32_t *l_340 = (void*)0;
        int32_t *l_341[9] = {&p_644->g_253[0][1],&p_644->g_253[0][3],&p_644->g_253[0][1],&p_644->g_253[0][1],&p_644->g_253[0][3],&p_644->g_253[0][1],&p_644->g_253[0][1],&p_644->g_253[0][3],&p_644->g_253[0][1]};
        int32_t l_343[4][7] = {{9L,9L,9L,9L,9L,9L,9L},{9L,9L,9L,9L,9L,9L,9L},{9L,9L,9L,9L,9L,9L,9L},{9L,9L,9L,9L,9L,9L,9L}};
        uint64_t l_348 = 0x57C7EED55609271FL;
        union U0 l_351 = {3UL};
        int32_t *l_385 = &l_293[0];
        int i, j;
        if ((safe_rshift_func_uint16_t_u_s(p_77, (safe_add_func_int16_t_s_s((safe_lshift_func_int8_t_s_u((safe_sub_func_int8_t_s_s(((void*)0 == &p_644->g_95), (((*l_332) ^= l_293[0]) | ((((l_213 = (p_644->g_124[4] || ((0x816153479567EB1FL ^ ((safe_lshift_func_int8_t_s_u((p_77 & (l_343[2][1] |= (((safe_lshift_func_uint8_t_u_s((!((~(((((l_339 = ((safe_div_func_int32_t_s_s((*p_644->g_184), 0x169B3169L)) >= l_339)) , &l_112[6][3]) == (void*)0) , 0UL) != 0L)) && p_77)), p_644->g_342)) <= 0x30D1L) <= 0x903839BAL))), FAKE_DIVERGE(p_644->local_0_offset, get_local_id(0), 10))) , p_77)) , p_644->g_47))) && p_77) , p_644->l_comm_values[(safe_mod_func_uint32_t_u_u(p_644->tid, 3))]) , l_343[2][1])))), l_313.f0)), 65533UL)))))
        { /* block id: 182 */
            int32_t *l_344 = &p_644->g_342;
            int32_t *l_345[10] = {&l_293[0],&l_293[0],&l_293[0],&l_293[0],&l_293[0],&l_293[0],&l_293[0],&l_293[0],&l_293[0],&l_293[0]};
            int16_t l_347 = (-1L);
            int i;
            --l_348;
        }
        else
        { /* block id: 184 */
            int64_t *l_352[10][7] = {{(void*)0,&p_644->g_95,&p_644->g_95,(void*)0,&p_644->g_95,&p_644->g_95,(void*)0},{(void*)0,&p_644->g_95,&p_644->g_95,(void*)0,&p_644->g_95,&p_644->g_95,(void*)0},{(void*)0,&p_644->g_95,&p_644->g_95,(void*)0,&p_644->g_95,&p_644->g_95,(void*)0},{(void*)0,&p_644->g_95,&p_644->g_95,(void*)0,&p_644->g_95,&p_644->g_95,(void*)0},{(void*)0,&p_644->g_95,&p_644->g_95,(void*)0,&p_644->g_95,&p_644->g_95,(void*)0},{(void*)0,&p_644->g_95,&p_644->g_95,(void*)0,&p_644->g_95,&p_644->g_95,(void*)0},{(void*)0,&p_644->g_95,&p_644->g_95,(void*)0,&p_644->g_95,&p_644->g_95,(void*)0},{(void*)0,&p_644->g_95,&p_644->g_95,(void*)0,&p_644->g_95,&p_644->g_95,(void*)0},{(void*)0,&p_644->g_95,&p_644->g_95,(void*)0,&p_644->g_95,&p_644->g_95,(void*)0},{(void*)0,&p_644->g_95,&p_644->g_95,(void*)0,&p_644->g_95,&p_644->g_95,(void*)0}};
            uint64_t *l_356 = &l_348;
            int32_t *l_358[3];
            int32_t **l_357 = &l_358[0];
            int32_t *l_360[7] = {&l_213,&p_644->g_4,&l_213,&l_213,&p_644->g_4,&l_213,&l_213};
            int32_t **l_359 = &l_360[3];
            union U0 l_361[5][7][6] = {{{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}},{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}},{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}},{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}},{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}},{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}},{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}}},{{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}},{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}},{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}},{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}},{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}},{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}},{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}}},{{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}},{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}},{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}},{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}},{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}},{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}},{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}}},{{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}},{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}},{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}},{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}},{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}},{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}},{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}}},{{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}},{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}},{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}},{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}},{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}},{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}},{{0x44C248C6L},{0x781EBB9CL},{0x40640C8AL},{0x781EBB9CL},{0x44C248C6L},{4294967290UL}}}};
            int32_t *l_363[4] = {&p_644->g_139[0],&p_644->g_139[0],&p_644->g_139[0],&p_644->g_139[0]};
            int32_t **l_362 = &l_363[3];
            int64_t *l_378 = &p_644->g_102;
            int64_t **l_377 = &l_378;
            int64_t ***l_381[6][6][5] = {{{(void*)0,&l_379,&l_377,&l_379,&l_379},{(void*)0,&l_379,&l_377,&l_379,&l_379},{(void*)0,&l_379,&l_377,&l_379,&l_379},{(void*)0,&l_379,&l_377,&l_379,&l_379},{(void*)0,&l_379,&l_377,&l_379,&l_379},{(void*)0,&l_379,&l_377,&l_379,&l_379}},{{(void*)0,&l_379,&l_377,&l_379,&l_379},{(void*)0,&l_379,&l_377,&l_379,&l_379},{(void*)0,&l_379,&l_377,&l_379,&l_379},{(void*)0,&l_379,&l_377,&l_379,&l_379},{(void*)0,&l_379,&l_377,&l_379,&l_379},{(void*)0,&l_379,&l_377,&l_379,&l_379}},{{(void*)0,&l_379,&l_377,&l_379,&l_379},{(void*)0,&l_379,&l_377,&l_379,&l_379},{(void*)0,&l_379,&l_377,&l_379,&l_379},{(void*)0,&l_379,&l_377,&l_379,&l_379},{(void*)0,&l_379,&l_377,&l_379,&l_379},{(void*)0,&l_379,&l_377,&l_379,&l_379}},{{(void*)0,&l_379,&l_377,&l_379,&l_379},{(void*)0,&l_379,&l_377,&l_379,&l_379},{(void*)0,&l_379,&l_377,&l_379,&l_379},{(void*)0,&l_379,&l_377,&l_379,&l_379},{(void*)0,&l_379,&l_377,&l_379,&l_379},{(void*)0,&l_379,&l_377,&l_379,&l_379}},{{(void*)0,&l_379,&l_377,&l_379,&l_379},{(void*)0,&l_379,&l_377,&l_379,&l_379},{(void*)0,&l_379,&l_377,&l_379,&l_379},{(void*)0,&l_379,&l_377,&l_379,&l_379},{(void*)0,&l_379,&l_377,&l_379,&l_379},{(void*)0,&l_379,&l_377,&l_379,&l_379}},{{(void*)0,&l_379,&l_377,&l_379,&l_379},{(void*)0,&l_379,&l_377,&l_379,&l_379},{(void*)0,&l_379,&l_377,&l_379,&l_379},{(void*)0,&l_379,&l_377,&l_379,&l_379},{(void*)0,&l_379,&l_377,&l_379,&l_379},{(void*)0,&l_379,&l_377,&l_379,&l_379}}};
            uint8_t *l_384 = &p_644->g_288[5][5];
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_358[i] = (void*)0;
            l_343[3][5] = ((((l_351 , 0x7366L) > 0x5FFAL) | (&p_644->g_95 == l_352[4][1])) , (((safe_sub_func_uint32_t_u_u((safe_unary_minus_func_uint64_t_u(((*l_356) = p_644->g_comm_values[p_644->tid]))), (((*l_359) = ((*l_357) = &l_293[0])) == ((*l_362) = (l_361[2][5][0] , &p_644->g_138))))) || l_364) && 0x2233D357AA4B5FE8L));
            (*p_644->g_366) = l_365[0];
            l_293[0] = (l_339 , (safe_div_func_int64_t_s_s((safe_div_func_uint8_t_u_u((safe_div_func_int8_t_s_s(((safe_add_func_uint16_t_u_u(((((p_644->g_138 , l_377) != (l_379 = l_379)) && (safe_add_func_uint8_t_u_u(p_77, (l_213 = (l_384 != (void*)0))))) != l_364), p_77)) && 0xA2L), l_291)), p_77)), p_77)));
            l_386 = (l_385 = (*l_362));
        }
        return p_644->g_169[6];
    }
    (*l_387) = 0x47D11EE4L;
    return p_77;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint16_t * func_82(int8_t * p_83, int8_t * p_84, uint64_t  p_85, int16_t  p_86, uint16_t * p_87, struct S1 * p_644)
{ /* block id: 37 */
    uint16_t *l_110[5][5] = {{&p_644->g_31,&p_644->g_31,&p_644->g_31,&p_644->g_31,&p_644->g_31},{&p_644->g_31,&p_644->g_31,&p_644->g_31,&p_644->g_31,&p_644->g_31},{&p_644->g_31,&p_644->g_31,&p_644->g_31,&p_644->g_31,&p_644->g_31},{&p_644->g_31,&p_644->g_31,&p_644->g_31,&p_644->g_31,&p_644->g_31},{&p_644->g_31,&p_644->g_31,&p_644->g_31,&p_644->g_31,&p_644->g_31}};
    int i, j;
    return l_110[1][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_644->g_106
 * writes: p_644->g_106
 */
int8_t * func_89(int64_t  p_90, uint16_t * p_91, int64_t  p_92, struct S1 * p_644)
{ /* block id: 34 */
    int32_t *l_104 = &p_644->g_4;
    int32_t *l_105[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int i;
    --p_644->g_106;
    return &p_644->g_100;
}


/* ------------------------------------------ */
/* 
 * reads : p_644->g_95 p_644->g_138 p_644->g_124 p_644->g_100 p_644->g_102 p_644->g_135 p_644->g_47 p_644->g_139 p_644->g_169 p_644->g_106 p_644->g_4 p_644->g_173 p_644->g_174 p_644->g_181 p_644->g_184 p_644->g_178
 * writes: p_644->g_95 p_644->g_102 p_644->g_100 p_644->g_138 p_644->g_139 p_644->g_169 p_644->g_173
 */
int32_t  func_113(int64_t * p_114, uint16_t * p_115, int8_t * p_116, struct S1 * p_644)
{ /* block id: 53 */
    uint64_t l_171 = 0x10C2188DBB9F3310L;
    int64_t *l_187 = &p_644->g_102;
    int64_t **l_186 = &l_187;
    uint8_t *l_195 = &p_644->g_169[6];
    int32_t l_199 = 0x6CFE5F79L;
    int32_t *l_200 = &p_644->g_139[0];
    for (p_644->g_95 = 6; (p_644->g_95 >= 0); p_644->g_95 -= 1)
    { /* block id: 56 */
        uint32_t l_165 = 0x7C28814FL;
        uint16_t *l_170 = &p_644->g_31;
        uint8_t *l_180[3][10][5] = {{{&p_644->g_169[1],(void*)0,&p_644->g_169[6],(void*)0,&p_644->g_169[6]},{&p_644->g_169[1],(void*)0,&p_644->g_169[6],(void*)0,&p_644->g_169[6]},{&p_644->g_169[1],(void*)0,&p_644->g_169[6],(void*)0,&p_644->g_169[6]},{&p_644->g_169[1],(void*)0,&p_644->g_169[6],(void*)0,&p_644->g_169[6]},{&p_644->g_169[1],(void*)0,&p_644->g_169[6],(void*)0,&p_644->g_169[6]},{&p_644->g_169[1],(void*)0,&p_644->g_169[6],(void*)0,&p_644->g_169[6]},{&p_644->g_169[1],(void*)0,&p_644->g_169[6],(void*)0,&p_644->g_169[6]},{&p_644->g_169[1],(void*)0,&p_644->g_169[6],(void*)0,&p_644->g_169[6]},{&p_644->g_169[1],(void*)0,&p_644->g_169[6],(void*)0,&p_644->g_169[6]},{&p_644->g_169[1],(void*)0,&p_644->g_169[6],(void*)0,&p_644->g_169[6]}},{{&p_644->g_169[1],(void*)0,&p_644->g_169[6],(void*)0,&p_644->g_169[6]},{&p_644->g_169[1],(void*)0,&p_644->g_169[6],(void*)0,&p_644->g_169[6]},{&p_644->g_169[1],(void*)0,&p_644->g_169[6],(void*)0,&p_644->g_169[6]},{&p_644->g_169[1],(void*)0,&p_644->g_169[6],(void*)0,&p_644->g_169[6]},{&p_644->g_169[1],(void*)0,&p_644->g_169[6],(void*)0,&p_644->g_169[6]},{&p_644->g_169[1],(void*)0,&p_644->g_169[6],(void*)0,&p_644->g_169[6]},{&p_644->g_169[1],(void*)0,&p_644->g_169[6],(void*)0,&p_644->g_169[6]},{&p_644->g_169[1],(void*)0,&p_644->g_169[6],(void*)0,&p_644->g_169[6]},{&p_644->g_169[1],(void*)0,&p_644->g_169[6],(void*)0,&p_644->g_169[6]},{&p_644->g_169[1],(void*)0,&p_644->g_169[6],(void*)0,&p_644->g_169[6]}},{{&p_644->g_169[1],(void*)0,&p_644->g_169[6],(void*)0,&p_644->g_169[6]},{&p_644->g_169[1],(void*)0,&p_644->g_169[6],(void*)0,&p_644->g_169[6]},{&p_644->g_169[1],(void*)0,&p_644->g_169[6],(void*)0,&p_644->g_169[6]},{&p_644->g_169[1],(void*)0,&p_644->g_169[6],(void*)0,&p_644->g_169[6]},{&p_644->g_169[1],(void*)0,&p_644->g_169[6],(void*)0,&p_644->g_169[6]},{&p_644->g_169[1],(void*)0,&p_644->g_169[6],(void*)0,&p_644->g_169[6]},{&p_644->g_169[1],(void*)0,&p_644->g_169[6],(void*)0,&p_644->g_169[6]},{&p_644->g_169[1],(void*)0,&p_644->g_169[6],(void*)0,&p_644->g_169[6]},{&p_644->g_169[1],(void*)0,&p_644->g_169[6],(void*)0,&p_644->g_169[6]},{&p_644->g_169[1],(void*)0,&p_644->g_169[6],(void*)0,&p_644->g_169[6]}}};
        uint8_t **l_179 = &l_180[1][5][3];
        int64_t **l_185[5];
        union U0 l_194[7][3][1] = {{{{0xEA376DD0L}},{{0xEA376DD0L}},{{0xEA376DD0L}}},{{{0xEA376DD0L}},{{0xEA376DD0L}},{{0xEA376DD0L}}},{{{0xEA376DD0L}},{{0xEA376DD0L}},{{0xEA376DD0L}}},{{{0xEA376DD0L}},{{0xEA376DD0L}},{{0xEA376DD0L}}},{{{0xEA376DD0L}},{{0xEA376DD0L}},{{0xEA376DD0L}}},{{{0xEA376DD0L}},{{0xEA376DD0L}},{{0xEA376DD0L}}},{{{0xEA376DD0L}},{{0xEA376DD0L}},{{0xEA376DD0L}}}};
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_185[i] = (void*)0;
        for (p_644->g_102 = 0; (p_644->g_102 <= 3); p_644->g_102 += 1)
        { /* block id: 59 */
            int64_t l_163 = 0x5BB834B12E90868BL;
            int i;
            for (p_644->g_100 = 0; (p_644->g_100 <= 3); p_644->g_100 += 1)
            { /* block id: 62 */
                int16_t l_160 = (-10L);
                union U0 l_164 = {1UL};
                int i;
                for (p_644->g_138 = 0; (p_644->g_138 <= 3); p_644->g_138 += 1)
                { /* block id: 65 */
                    int32_t l_166 = (-1L);
                    uint8_t *l_167 = (void*)0;
                    uint8_t *l_168 = &p_644->g_169[6];
                    int32_t *l_172 = &p_644->g_139[4];
                    int i;
                    for (p_644->g_139[0] = 6; (p_644->g_139[0] >= 2); p_644->g_139[0] -= 1)
                    { /* block id: 68 */
                        int i;
                        return p_644->g_124[(p_644->g_138 + 2)];
                    }
                    (*l_172) = (safe_div_func_int32_t_s_s((((safe_add_func_int32_t_s_s(p_644->g_124[(p_644->g_138 + 1)], (((safe_rshift_func_uint16_t_u_s(((p_644->g_124[(p_644->g_100 + 3)] <= (safe_mul_func_uint8_t_u_u(((safe_sub_func_uint32_t_u_u((((((*l_168) &= ((l_166 = (safe_sub_func_int16_t_s_s((safe_sub_func_uint32_t_u_u((safe_add_func_uint16_t_u_u(p_644->g_135[p_644->g_102], (((safe_sub_func_uint8_t_u_u((~(((safe_mul_func_int16_t_s_s((l_160 ^ (safe_mul_func_int8_t_s_s(((l_163 , l_164) , (&p_644->g_137[1] == (void*)0)), (l_163 <= 0x7672L)))), 0x42F7L)) != p_644->g_47) >= l_163)), p_644->g_135[0])) && FAKE_DIVERGE(p_644->global_1_offset, get_global_id(1), 10)) <= p_644->g_139[0]))), l_165)), (-3L)))) & l_160)) && (*p_116)) , l_170) == (void*)0), FAKE_DIVERGE(p_644->local_0_offset, get_local_id(0), 10))) != 0x6CL), p_644->g_124[(p_644->g_138 + 1)]))) & l_163), p_644->g_124[(p_644->g_138 + 1)])) && l_160) | (*p_116)))) , l_171) <= p_644->g_106), p_644->g_4));
                    (*p_644->g_174) = p_644->g_173;
                    for (l_163 = 3; (l_163 >= 0); l_163 -= 1)
                    { /* block id: 77 */
                        uint32_t l_176 = 0xFF7D8875L;
                        int16_t *l_177 = &l_160;
                        (*l_172) = (p_644->g_124[4] <= (safe_unary_minus_func_int16_t_s(((*l_177) = (!((p_644->g_139[2] & p_644->g_47) < (l_176 <= 0x249C8F8DL)))))));
                        l_179 = &l_168;
                    }
                }
                return p_644->g_124[p_644->g_95];
            }
            (*p_644->g_181) = (p_644->g_135[p_644->g_102] <= l_165);
            (*p_644->g_184) = (0x6C4C324AB99CF72CL <= (GROUP_DIVERGE(1, 1) > GROUP_DIVERGE(1, 1)));
        }
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        p_644->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 3)), permutations[(safe_mod_func_uint32_t_u_u(((((l_165 > ((void*)0 != p_644->g_178)) , l_185[3]) == (GROUP_DIVERGE(1, 1) , l_186)) , ((safe_mul_func_uint16_t_u_u((FAKE_DIVERGE(p_644->local_0_offset, get_local_id(0), 10) , (((safe_sub_func_uint32_t_u_u((safe_mul_func_int8_t_s_s(((l_194[4][0][0] , p_116) != (l_195 = (*l_179))), (*p_116))), p_644->g_169[5])) == (-1L)) , 3UL)), l_171)) == l_194[4][0][0].f0)), 10))][(safe_mod_func_uint32_t_u_u(p_644->tid, 3))]));
        for (l_171 = 1; (l_171 <= 6); l_171 += 1)
        { /* block id: 94 */
            int32_t *l_197 = &p_644->g_139[0];
            int32_t **l_196 = &l_197;
            int32_t *l_198 = &p_644->g_139[1];
            (*l_196) = (void*)0;
            for (l_165 = 0; (l_165 <= 6); l_165 += 1)
            { /* block id: 98 */
                return (*p_644->g_184);
            }
            (*l_198) = 0x25F419C1L;
        }
    }
    (*l_200) = l_199;
    return (*l_200);
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j;
    __local int64_t l_comm_values[3];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 3; i++)
            l_comm_values[i] = 1;
    struct S1 c_645;
    struct S1* p_644 = &c_645;
    struct S1 c_646 = {
        0x0F8067E3L, // p_644->g_3
        (-10L), // p_644->g_4
        65535UL, // p_644->g_9
        (void*)0, // p_644->g_29
        0x51C8L, // p_644->g_31
        0x58L, // p_644->g_47
        (-1L), // p_644->g_64
        0x6DE04B380B773B03L, // p_644->g_95
        0x68L, // p_644->g_100
        0x0765A3FF566449D4L, // p_644->g_102
        0x548BA029L, // p_644->g_106
        {0UL,0UL,0UL,0UL,0UL,0UL,0UL}, // p_644->g_124
        {1UL,1UL,1UL,1UL}, // p_644->g_135
        {(-5L),(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)}, // p_644->g_137
        0x5757FEC6L, // p_644->g_138
        {0x314B258EL,0x314B258EL,0x314B258EL,0x314B258EL,0x314B258EL,0x314B258EL,0x314B258EL}, // p_644->g_139
        {255UL,1UL,255UL,255UL,1UL,255UL,255UL}, // p_644->g_169
        (void*)0, // p_644->g_173
        &p_644->g_173, // p_644->g_174
        (void*)0, // p_644->g_178
        &p_644->g_139[0], // p_644->g_181
        &p_644->g_139[0], // p_644->g_184
        &p_644->g_139[5], // p_644->g_214
        {{0L,(-1L),0x3FF471AAL,0x6FF5385EL,1L},{0L,(-1L),0x3FF471AAL,0x6FF5385EL,1L},{0L,(-1L),0x3FF471AAL,0x6FF5385EL,1L},{0L,(-1L),0x3FF471AAL,0x6FF5385EL,1L},{0L,(-1L),0x3FF471AAL,0x6FF5385EL,1L},{0L,(-1L),0x3FF471AAL,0x6FF5385EL,1L}}, // p_644->g_253
        {{0xAFL,0xF8L,255UL,255UL,255UL,0xF8L,0xAFL,248UL,0x00L,0x5FL},{0xAFL,0xF8L,255UL,255UL,255UL,0xF8L,0xAFL,248UL,0x00L,0x5FL},{0xAFL,0xF8L,255UL,255UL,255UL,0xF8L,0xAFL,248UL,0x00L,0x5FL},{0xAFL,0xF8L,255UL,255UL,255UL,0xF8L,0xAFL,248UL,0x00L,0x5FL},{0xAFL,0xF8L,255UL,255UL,255UL,0xF8L,0xAFL,248UL,0x00L,0x5FL},{0xAFL,0xF8L,255UL,255UL,255UL,0xF8L,0xAFL,248UL,0x00L,0x5FL},{0xAFL,0xF8L,255UL,255UL,255UL,0xF8L,0xAFL,248UL,0x00L,0x5FL},{0xAFL,0xF8L,255UL,255UL,255UL,0xF8L,0xAFL,248UL,0x00L,0x5FL},{0xAFL,0xF8L,255UL,255UL,255UL,0xF8L,0xAFL,248UL,0x00L,0x5FL}}, // p_644->g_288
        (void*)0, // p_644->g_314
        (-1L), // p_644->g_342
        (void*)0, // p_644->g_368
        &p_644->g_368, // p_644->g_367
        &p_644->g_367, // p_644->g_366
        {0xAB8FF7B6L}, // p_644->g_408
        (-3L), // p_644->g_412
        0xDAL, // p_644->g_417
        0x87L, // p_644->g_418
        0UL, // p_644->g_419
        {&p_644->g_417,&p_644->g_417,&p_644->g_417,&p_644->g_417,&p_644->g_417,&p_644->g_417,&p_644->g_417,&p_644->g_417,&p_644->g_417}, // p_644->g_416
        &p_644->g_416[8], // p_644->g_415
        0L, // p_644->g_444
        0x28AD16CEL, // p_644->g_471
        2UL, // p_644->g_511
        &p_644->g_471, // p_644->g_513
        &p_644->g_513, // p_644->g_512
        &p_644->g_513, // p_644->g_566
        (void*)0, // p_644->g_567
        sequence_input[get_global_id(0)], // p_644->global_0_offset
        sequence_input[get_global_id(1)], // p_644->global_1_offset
        sequence_input[get_global_id(2)], // p_644->global_2_offset
        sequence_input[get_local_id(0)], // p_644->local_0_offset
        sequence_input[get_local_id(1)], // p_644->local_1_offset
        sequence_input[get_local_id(2)], // p_644->local_2_offset
        sequence_input[get_group_id(0)], // p_644->group_0_offset
        sequence_input[get_group_id(1)], // p_644->group_1_offset
        sequence_input[get_group_id(2)], // p_644->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 3)), permutations[0][get_linear_local_id()])), // p_644->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_645 = c_646;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_644);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_644->g_3, "p_644->g_3", print_hash_value);
    transparent_crc(p_644->g_4, "p_644->g_4", print_hash_value);
    transparent_crc(p_644->g_9, "p_644->g_9", print_hash_value);
    transparent_crc(p_644->g_31, "p_644->g_31", print_hash_value);
    transparent_crc(p_644->g_47, "p_644->g_47", print_hash_value);
    transparent_crc(p_644->g_64, "p_644->g_64", print_hash_value);
    transparent_crc(p_644->g_95, "p_644->g_95", print_hash_value);
    transparent_crc(p_644->g_100, "p_644->g_100", print_hash_value);
    transparent_crc(p_644->g_102, "p_644->g_102", print_hash_value);
    transparent_crc(p_644->g_106, "p_644->g_106", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_644->g_124[i], "p_644->g_124[i]", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_644->g_135[i], "p_644->g_135[i]", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_644->g_137[i], "p_644->g_137[i]", print_hash_value);

    }
    transparent_crc(p_644->g_138, "p_644->g_138", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_644->g_139[i], "p_644->g_139[i]", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_644->g_169[i], "p_644->g_169[i]", print_hash_value);

    }
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_644->g_253[i][j], "p_644->g_253[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_644->g_288[i][j], "p_644->g_288[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_644->g_342, "p_644->g_342", print_hash_value);
    transparent_crc(p_644->g_408.f0, "p_644->g_408.f0", print_hash_value);
    transparent_crc(p_644->g_412, "p_644->g_412", print_hash_value);
    transparent_crc(p_644->g_417, "p_644->g_417", print_hash_value);
    transparent_crc(p_644->g_418, "p_644->g_418", print_hash_value);
    transparent_crc(p_644->g_419, "p_644->g_419", print_hash_value);
    transparent_crc(p_644->g_444, "p_644->g_444", print_hash_value);
    transparent_crc(p_644->g_471, "p_644->g_471", print_hash_value);
    transparent_crc(p_644->g_511, "p_644->g_511", print_hash_value);
    transparent_crc(p_644->l_comm_values[get_linear_local_id()], "p_644->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_644->g_comm_values[get_linear_group_id() * 3 + get_linear_local_id()], "p_644->g_comm_values[get_linear_group_id() * 3 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
