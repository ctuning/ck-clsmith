// --atomics 18 ---fake_divergence -g 27,57,1 -l 27,1,1
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


// Seed: 8

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   int32_t  f0;
};

union U1 {
   volatile int8_t * f0;
   uint32_t  f1;
   volatile int32_t  f2;
};

union U2 {
   int32_t  f0;
   volatile int8_t * f1;
   int32_t  f2;
   volatile int64_t  f3;
   int32_t  f4;
};

struct S3 {
    int32_t g_3;
    uint16_t g_4;
    int8_t g_40;
    int8_t *g_39;
    uint64_t g_59;
    int32_t g_63[8][8][4];
    volatile union U2 g_83[4][8];
    volatile uint64_t g_87;
    volatile uint64_t * volatile g_86;
    volatile uint64_t * volatile * volatile g_85[6];
    volatile uint64_t * volatile * volatile * volatile g_88;
    uint64_t *g_94;
    uint64_t **g_93;
    union U2 g_100;
    int32_t * volatile g_101;
    uint64_t g_118;
    uint32_t g_120[2][4][4];
    uint64_t g_124;
    int64_t g_145;
    union U2 ** volatile g_160;
    union U2 *g_162;
    union U2 ** volatile g_161;
    int16_t g_171;
    int16_t g_183;
    int32_t *g_197;
    int32_t ** volatile g_196;
    union U1 ** volatile g_199;
    union U1 g_204[10];
    int32_t ** volatile g_207;
    union U2 **g_222[10][8];
    int16_t g_244[6][8][3];
    union U1 g_245[2];
    union U1 g_251;
    int8_t g_295;
    int8_t *** volatile g_311;
    int8_t *** volatile g_312;
    union U1 g_343;
    volatile int8_t g_360;
    volatile int8_t *g_359[1][6][4];
    volatile int8_t * volatile * volatile g_358[9][4][1];
    uint16_t g_365;
    uint16_t g_389;
    int64_t g_394;
    union U2 g_403;
    uint8_t g_406;
    union U1 *g_412[6][2][9];
    union U1 ** volatile g_411;
    union U1 g_414;
    volatile uint32_t g_452;
    volatile uint32_t *g_451;
    volatile uint32_t **g_450;
    volatile uint8_t g_462[8];
    union U0 g_517;
    union U1 g_541[1];
    union U1 g_545;
    union U1 g_546;
    union U1 g_547;
    union U2 g_563;
    volatile union U2 g_573;
    int32_t *g_583[6];
    uint64_t ***g_599;
    volatile uint64_t g_644;
    union U1 g_655;
    int8_t g_677;
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
int32_t  func_1(struct S3 * p_725);
uint16_t  func_15(uint64_t * p_16, uint64_t * p_17, int32_t * p_18, int32_t * p_19, struct S3 * p_725);
uint64_t * func_20(uint64_t  p_21, int32_t  p_22, union U0  p_23, int8_t * p_24, int32_t * p_25, struct S3 * p_725);
union U0  func_27(int32_t  p_28, int8_t * p_29, int16_t  p_30, struct S3 * p_725);
int64_t  func_33(int8_t * p_34, int32_t * p_35, int32_t * p_36, int32_t * p_37, union U0  p_38, struct S3 * p_725);
int32_t * func_41(int32_t  p_42, int64_t  p_43, uint32_t  p_44, int32_t * p_45, struct S3 * p_725);
int32_t  func_47(uint64_t * p_48, uint32_t  p_49, uint32_t  p_50, int64_t  p_51, uint32_t  p_52, struct S3 * p_725);
uint64_t * func_53(int32_t * p_54, uint8_t  p_55, struct S3 * p_725);
int32_t * func_74(uint64_t * p_75, uint64_t  p_76, int32_t  p_77, struct S3 * p_725);
union U2  func_78(int32_t * p_79, uint8_t  p_80, int32_t * p_81, int32_t  p_82, struct S3 * p_725);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_725->g_3 p_725->g_4 p_725->g_39 p_725->g_40 p_725->g_83 p_725->g_85 p_725->g_93 p_725->g_63 p_725->g_59 p_725->g_100 p_725->g_101 p_725->g_94 p_725->g_86 p_725->g_87 p_725->g_145 p_725->g_161 p_725->g_120 p_725->g_183 p_725->g_171 p_725->g_245 p_725->g_251 p_725->g_197 p_725->g_196 p_725->g_118 p_725->g_343 p_725->g_124 p_725->g_358 p_725->g_365 p_725->g_207 p_725->g_295 p_725->g_394 p_725->g_360 p_725->g_403 p_725->g_389 p_725->g_411 p_725->g_414 p_725->g_450 p_725->g_462 p_725->g_451 p_725->g_452 p_725->g_406 p_725->g_517 p_725->g_244 p_725->g_541 p_725->g_412 p_725->g_563 p_725->g_573 p_725->g_644 p_725->g_655 p_725->g_403.f0 p_725->g_677 p_725->g_100.f4
 * writes: p_725->g_3 p_725->g_4 p_725->g_40 p_725->g_85 p_725->g_93 p_725->g_59 p_725->g_100.f4 p_725->g_118 p_725->g_120 p_725->g_145 p_725->g_63 p_725->g_162 p_725->g_197 p_725->g_183 p_725->g_171 p_725->g_244 p_725->g_295 p_725->g_222 p_725->g_365 p_725->g_389 p_725->g_394 p_725->g_412 p_725->g_124 p_725->g_462 p_725->g_406 p_725->g_583 p_725->g_599 p_725->g_644 p_725->g_517.f0 p_725->g_563.f4 p_725->g_677
 */
int32_t  func_1(struct S3 * p_725)
{ /* block id: 4 */
    int32_t *l_2 = &p_725->g_3;
    int32_t l_7 = (-10L);
    int32_t *l_8[4] = {&l_7,&l_7,&l_7,&l_7};
    uint64_t l_9 = 0x0C5440874B28ED4AL;
    uint64_t *l_12 = &l_9;
    uint8_t l_26 = 0xFDL;
    int32_t l_46[5];
    uint8_t l_510[7][8][1] = {{{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL}},{{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL}},{{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL}},{{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL}},{{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL}},{{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL}},{{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL},{255UL}}};
    int32_t *l_674 = (void*)0;
    int32_t *l_675 = &p_725->g_517.f0;
    int8_t *l_676 = &p_725->g_677;
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_46[i] = (-5L);
    p_725->g_4 = (((*l_2) = 0x199D94B4L) , p_725->g_3);
    l_9 = (safe_add_func_int32_t_s_s(p_725->g_4, l_7));
    (*p_725->g_101) = (safe_mod_func_uint32_t_u_u((((--(*l_12)) >= ((*p_725->g_94) = ((p_725->g_3 && p_725->g_4) <= func_15(func_20(p_725->g_3, l_26, func_27(((*l_675) = (safe_sub_func_int64_t_s_s(func_33(p_725->g_39, &l_7, &l_7, func_41(l_46[4], (func_47(func_53(&p_725->g_3, p_725->g_4, p_725), p_725->g_406, p_725->g_4, p_725->g_406, p_725->g_4, p_725) , p_725->g_40), l_510[2][3][0], &l_46[4], p_725), p_725->g_517, p_725), p_725->g_3))), l_676, p_725->g_4, p_725), l_676, &l_46[0], p_725), p_725->g_94, l_674, &p_725->g_3, p_725)))) <= p_725->g_4), p_725->g_3));
    return (*p_725->g_101);
}


/* ------------------------------------------ */
/* 
 * reads : p_725->g_118 p_725->g_63 p_725->g_171
 * writes: p_725->g_118 p_725->g_63
 */
uint16_t  func_15(uint64_t * p_16, uint64_t * p_17, int32_t * p_18, int32_t * p_19, struct S3 * p_725)
{ /* block id: 394 */
    int32_t *l_713 = &p_725->g_63[6][0][1];
    int32_t *l_714 = &p_725->g_63[4][2][3];
    int32_t l_715 = 3L;
    int32_t *l_716[10][2][9] = {{{&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[4][2][3],&p_725->g_63[2][7][2],&p_725->g_63[3][7][3]},{&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[4][2][3],&p_725->g_63[2][7][2],&p_725->g_63[3][7][3]}},{{&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[4][2][3],&p_725->g_63[2][7][2],&p_725->g_63[3][7][3]},{&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[4][2][3],&p_725->g_63[2][7][2],&p_725->g_63[3][7][3]}},{{&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[4][2][3],&p_725->g_63[2][7][2],&p_725->g_63[3][7][3]},{&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[4][2][3],&p_725->g_63[2][7][2],&p_725->g_63[3][7][3]}},{{&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[4][2][3],&p_725->g_63[2][7][2],&p_725->g_63[3][7][3]},{&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[4][2][3],&p_725->g_63[2][7][2],&p_725->g_63[3][7][3]}},{{&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[4][2][3],&p_725->g_63[2][7][2],&p_725->g_63[3][7][3]},{&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[4][2][3],&p_725->g_63[2][7][2],&p_725->g_63[3][7][3]}},{{&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[4][2][3],&p_725->g_63[2][7][2],&p_725->g_63[3][7][3]},{&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[4][2][3],&p_725->g_63[2][7][2],&p_725->g_63[3][7][3]}},{{&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[4][2][3],&p_725->g_63[2][7][2],&p_725->g_63[3][7][3]},{&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[4][2][3],&p_725->g_63[2][7][2],&p_725->g_63[3][7][3]}},{{&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[4][2][3],&p_725->g_63[2][7][2],&p_725->g_63[3][7][3]},{&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[4][2][3],&p_725->g_63[2][7][2],&p_725->g_63[3][7][3]}},{{&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[4][2][3],&p_725->g_63[2][7][2],&p_725->g_63[3][7][3]},{&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[4][2][3],&p_725->g_63[2][7][2],&p_725->g_63[3][7][3]}},{{&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[4][2][3],&p_725->g_63[2][7][2],&p_725->g_63[3][7][3]},{&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[5][7][3],(void*)0,(void*)0,&p_725->g_63[4][2][3],&p_725->g_63[2][7][2],&p_725->g_63[3][7][3]}}};
    int32_t l_717[4][2][8] = {{{0x1C98AF1DL,1L,2L,0L,2L,1L,0x1C98AF1DL,8L},{0x1C98AF1DL,1L,2L,0L,2L,1L,0x1C98AF1DL,8L}},{{0x1C98AF1DL,1L,2L,0L,2L,1L,0x1C98AF1DL,8L},{0x1C98AF1DL,1L,2L,0L,2L,1L,0x1C98AF1DL,8L}},{{0x1C98AF1DL,1L,2L,0L,2L,1L,0x1C98AF1DL,8L},{0x1C98AF1DL,1L,2L,0L,2L,1L,0x1C98AF1DL,8L}},{{0x1C98AF1DL,1L,2L,0L,2L,1L,0x1C98AF1DL,8L},{0x1C98AF1DL,1L,2L,0L,2L,1L,0x1C98AF1DL,8L}}};
    uint16_t l_718 = 65529UL;
    int i, j, k;
    l_718--;
    for (p_725->g_118 = (-14); (p_725->g_118 == 60); p_725->g_118 = safe_add_func_uint64_t_u_u(p_725->g_118, 9))
    { /* block id: 398 */
        int32_t *l_723 = &p_725->g_63[3][6][2];
        int32_t **l_724 = &l_723;
        (*l_724) = l_723;
    }
    (*l_714) |= (-1L);
    return p_725->g_171;
}


/* ------------------------------------------ */
/* 
 * reads : p_725->g_145
 * writes: p_725->g_145
 */
uint64_t * func_20(uint64_t  p_21, int32_t  p_22, union U0  p_23, int8_t * p_24, int32_t * p_25, struct S3 * p_725)
{ /* block id: 387 */
    uint64_t *l_712[4] = {&p_725->g_124,&p_725->g_124,&p_725->g_124,&p_725->g_124};
    int i;
    for (p_725->g_145 = 1; (p_725->g_145 >= (-21)); --p_725->g_145)
    { /* block id: 390 */
        (*p_25) |= 0x3DC86AD7L;
    }
    return l_712[3];
}


/* ------------------------------------------ */
/* 
 * reads : p_725->g_59 p_725->g_394 p_725->g_171 p_725->g_517 p_725->g_677 p_725->g_63 p_725->g_183 p_725->g_101
 * writes: p_725->g_563.f4 p_725->g_59 p_725->g_394 p_725->g_171 p_725->g_677 p_725->g_63 p_725->g_406 p_725->g_118 p_725->g_183 p_725->g_100.f4
 */
union U0  func_27(int32_t  p_28, int8_t * p_29, int16_t  p_30, struct S3 * p_725)
{ /* block id: 347 */
    uint8_t l_687[6][1] = {{250UL},{250UL},{250UL},{250UL},{250UL},{250UL}};
    int32_t l_703[8][4] = {{0x1E4C1997L,0x1E4C1997L,1L,(-2L)},{0x1E4C1997L,0x1E4C1997L,1L,(-2L)},{0x1E4C1997L,0x1E4C1997L,1L,(-2L)},{0x1E4C1997L,0x1E4C1997L,1L,(-2L)},{0x1E4C1997L,0x1E4C1997L,1L,(-2L)},{0x1E4C1997L,0x1E4C1997L,1L,(-2L)},{0x1E4C1997L,0x1E4C1997L,1L,(-2L)},{0x1E4C1997L,0x1E4C1997L,1L,(-2L)}};
    union U0 l_709 = {0x125E9190L};
    int i, j;
    for (p_30 = (-28); (p_30 != (-5)); ++p_30)
    { /* block id: 350 */
        int32_t *l_680 = &p_725->g_563.f4;
        int32_t *l_681 = (void*)0;
        int32_t *l_682 = &p_725->g_63[7][0][3];
        int32_t *l_683 = &p_725->g_403.f4;
        int32_t *l_684 = &p_725->g_63[4][4][0];
        int32_t *l_685 = &p_725->g_100.f4;
        int32_t *l_686 = &p_725->g_563.f4;
        union U0 l_707 = {0x1DE9DA47L};
        (*l_680) = 0x43530AECL;
        --l_687[4][0];
        for (p_725->g_59 = 0; (p_725->g_59 > 31); p_725->g_59 = safe_add_func_int16_t_s_s(p_725->g_59, 1))
        { /* block id: 355 */
            union U0 l_700[1] = {{0x6E446396L}};
            int i;
            if (p_28)
                break;
            for (p_725->g_394 = 0; (p_725->g_394 == 23); ++p_725->g_394)
            { /* block id: 359 */
                union U0 l_708[10] = {{0x6166D079L},{0x6166D079L},{0x6166D079L},{0x6166D079L},{0x6166D079L},{0x6166D079L},{0x6166D079L},{0x6166D079L},{0x6166D079L},{0x6166D079L}};
                int i;
                for (p_725->g_171 = 0; (p_725->g_171 == (-18)); p_725->g_171--)
                { /* block id: 362 */
                    return p_725->g_517;
                }
                if (p_30)
                    continue;
                for (p_725->g_677 = 1; (p_725->g_677 >= 0); p_725->g_677 -= 1)
                { /* block id: 368 */
                    uint8_t *l_701 = &p_725->g_406;
                    uint8_t l_702 = 7UL;
                    uint64_t *l_706 = &p_725->g_118;
                    (*l_684) ^= 0x5B1BF3BDL;
                    (*l_684) = ((safe_mod_func_uint8_t_u_u(((+((safe_sub_func_int8_t_s_s(((void*)0 == &p_725->g_88), (!(GROUP_DIVERGE(1, 1) , (0x9E82ECA4B50BBFBCL || ((*l_706) = (((((*l_701) = (l_700[0] , 255UL)) ^ (l_702 && (l_703[1][2] ^= p_28))) ^ (~((safe_lshift_func_uint8_t_u_u((((void*)0 == &p_725->g_101) > 0x7A13259DACB73B64L), 7)) && 0x5D18L))) != 0x30L))))))) , (*p_29))) > (*p_29)), (*p_29))) , (-1L));
                    return l_707;
                }
                for (p_725->g_183 = 0; (p_725->g_183 <= 5); p_725->g_183 += 1)
                { /* block id: 378 */
                    return l_708[3];
                }
            }
            (*p_725->g_101) = (+p_30);
            if (l_700[0].f0)
                break;
        }
    }
    return l_709;
}


/* ------------------------------------------ */
/* 
 * reads : p_725->g_389 p_725->g_63 p_725->g_244 p_725->g_394 p_725->g_145 p_725->g_183 p_725->g_86 p_725->g_87 p_725->g_541 p_725->g_412 p_725->g_39 p_725->g_40 p_725->g_450 p_725->g_451 p_725->g_452 p_725->g_3 p_725->g_563 p_725->g_573 p_725->g_124 p_725->g_59 p_725->g_196 p_725->g_197 p_725->g_295 p_725->g_94 p_725->g_644 p_725->g_406 p_725->g_655 p_725->g_403.f0
 * writes: p_725->g_389 p_725->g_63 p_725->g_365 p_725->g_394 p_725->g_145 p_725->g_183 p_725->g_40 p_725->g_406 p_725->g_583 p_725->g_124 p_725->g_599 p_725->g_59 p_725->g_197 p_725->g_244 p_725->g_120 p_725->g_412 p_725->g_644
 */
int64_t  func_33(int8_t * p_34, int32_t * p_35, int32_t * p_36, int32_t * p_37, union U0  p_38, struct S3 * p_725)
{ /* block id: 255 */
    uint16_t *l_518 = &p_725->g_389;
    int32_t l_523[4] = {0L,0L,0L,0L};
    uint32_t l_524 = 1UL;
    uint16_t *l_535 = &p_725->g_365;
    uint64_t ***l_557 = (void*)0;
    int32_t l_617 = 3L;
    int i;
    (*p_37) |= (p_38.f0 == (l_523[3] = ((~((((*l_518) ^= 0UL) | (safe_sub_func_uint32_t_u_u((4294967295UL > p_38.f0), FAKE_DIVERGE(p_725->global_1_offset, get_global_id(1), 10)))) & 253UL)) <= (+((safe_mul_func_uint8_t_u_u(p_38.f0, l_523[1])) , l_524)))));
    if ((safe_sub_func_uint32_t_u_u((p_725->g_389 <= (((*p_37) ^= ((*p_36) = (+(safe_add_func_int64_t_s_s(l_524, FAKE_DIVERGE(p_725->global_2_offset, get_global_id(2), 10)))))) && ((safe_mul_func_uint8_t_u_u((18446744073709551615UL && (l_523[2] , l_524)), ((((*l_535) = ((safe_mod_func_int32_t_s_s((0xB0CC6D13AB0AC08BL != (!p_38.f0)), (*p_36))) , (safe_lshift_func_int16_t_s_u(((&p_725->g_406 != p_34) | l_523[2]), p_725->g_244[1][1][2])))) , p_38.f0) , l_524))) <= (*p_36)))), GROUP_DIVERGE(2, 1))))
    { /* block id: 262 */
        union U1 *l_544[7] = {&p_725->g_546,&p_725->g_547,&p_725->g_546,&p_725->g_546,&p_725->g_547,&p_725->g_546,&p_725->g_546};
        int32_t l_550 = 0x0D54F0BAL;
        uint64_t ****l_572[2];
        int64_t l_596 = 0x091A4CB6CF213C3EL;
        int64_t l_622[9][6][4] = {{{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L}},{{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L}},{{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L}},{{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L}},{{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L}},{{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L}},{{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L}},{{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L}},{{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L},{(-1L),(-1L),0x48AD4744D1AA750BL,0x4D143A596BB040F6L}}};
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_572[i] = &l_557;
        for (p_725->g_394 = 0; (p_725->g_394 < 28); p_725->g_394 = safe_add_func_uint16_t_u_u(p_725->g_394, 6))
        { /* block id: 265 */
            int64_t l_540 = 0L;
            uint64_t ***l_558 = (void*)0;
            uint64_t ****l_559 = (void*)0;
            uint64_t ****l_560 = &l_558;
            int64_t *l_564 = (void*)0;
            int64_t *l_565 = &l_540;
            int16_t l_578 = (-7L);
            int32_t *l_580[9] = {&p_725->g_517.f0,&p_725->g_517.f0,&p_725->g_517.f0,&p_725->g_517.f0,&p_725->g_517.f0,&p_725->g_517.f0,&p_725->g_517.f0,&p_725->g_517.f0,&p_725->g_517.f0};
            int32_t **l_579 = &l_580[2];
            int32_t *l_582[1];
            int32_t **l_581 = &l_582[0];
            int i;
            for (i = 0; i < 1; i++)
                l_582[i] = &p_725->g_3;
            for (p_725->g_145 = 3; (p_725->g_145 >= 0); p_725->g_145 -= 1)
            { /* block id: 268 */
                int i;
                if (l_523[p_725->g_145])
                    break;
                for (p_725->g_183 = (-25); (p_725->g_183 < 13); p_725->g_183 = safe_add_func_int8_t_s_s(p_725->g_183, 1))
                { /* block id: 272 */
                    if (l_540)
                        break;
                    if ((*p_36))
                        break;
                    if (p_725->g_183)
                        break;
                    (*p_37) = (((((((l_540 & ((((((*p_725->g_86) || (p_725->g_541[0] , 0L)) & (safe_mod_func_int64_t_s_s((((((p_725->g_412[5][1][1] != l_544[2]) && ((safe_div_func_int64_t_s_s(((p_38.f0 < 0x3FBCC873L) == 4L), FAKE_DIVERGE(p_725->global_1_offset, get_global_id(1), 10))) , p_38.f0)) && 0xC9L) <= (*p_725->g_39)) || l_540), p_725->g_183))) && (**p_725->g_450)) <= p_725->g_3) || 0xADCAC0CA1ED2DD81L)) >= (-7L)) == p_725->g_145) == 0x32E73602L) >= 1UL) <= l_523[p_725->g_145]) , l_550);
                }
            }
            (*p_35) ^= ((-6L) > ((*l_565) = (0x08C52670L | ((((*p_725->g_39) = (((0x4ECD2546L > ((safe_rshift_func_int8_t_s_s((safe_rshift_func_int8_t_s_s((safe_lshift_func_int16_t_s_s((l_550 != (((l_557 != ((*l_560) = l_558)) > (!p_725->g_63[2][0][1])) & (p_38.f0 || (safe_rshift_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), 10))))), (+(p_725->g_563 , l_540)))), 2)), (*p_34))) ^ l_523[1])) || p_38.f0) , l_550)) <= l_540) != p_38.f0))));
            (*p_37) ^= ((safe_mod_func_uint64_t_u_u((safe_rshift_func_uint8_t_u_s((0x13FCL || (18446744073709551615UL != (7UL >= (((((((l_572[1] = &l_558) != &p_725->g_88) & p_38.f0) , (p_725->g_573 , (p_725->g_583[3] = ((*l_581) = ((*l_579) = func_41(l_550, (safe_add_func_int32_t_s_s(((*p_36) = (safe_lshift_func_int8_t_s_u(((*p_34) & l_578), 6))), p_38.f0)), p_38.f0, p_37, p_725)))))) != (void*)0) && l_550) <= p_725->g_389)))), 6)), 0x1C4FED9C12192480L)) | (*p_725->g_39));
        }
        for (p_725->g_124 = 0; (p_725->g_124 >= 6); p_725->g_124 = safe_add_func_uint32_t_u_u(p_725->g_124, 1))
        { /* block id: 292 */
            int64_t *l_588 = (void*)0;
            int64_t *l_589 = &p_725->g_394;
            int32_t l_597 = 1L;
            uint64_t ***l_598 = (void*)0;
            union U0 *l_607 = &p_725->g_517;
            int32_t l_641 = 0x31047F62L;
            int32_t l_642[8] = {1L,1L,1L,1L,1L,1L,1L,1L};
            int i;
            (*p_36) = ((((*l_589) = p_38.f0) >= (p_38.f0 <= ((p_725->g_599 = (((*p_35) || (((((void*)0 == &p_725->g_197) == (safe_mul_func_int8_t_s_s((-1L), (+((((safe_mul_func_uint16_t_u_u(((void*)0 != &p_34), (safe_add_func_int32_t_s_s(((((l_550 , p_38.f0) ^ p_38.f0) ^ 0UL) != 0x1BF978CBC67C924BL), FAKE_DIVERGE(p_725->local_0_offset, get_local_id(0), 10))))) > l_596) & FAKE_DIVERGE(p_725->global_2_offset, get_global_id(2), 10)) , l_597))))) & (*p_36)) > 0x98303E9CL)) , l_598)) == l_557))) <= 6UL);
            for (p_725->g_59 = 0; (p_725->g_59 >= 2); p_725->g_59 = safe_add_func_uint32_t_u_u(p_725->g_59, 5))
            { /* block id: 298 */
                uint32_t l_621 = 4294967286UL;
                int8_t **l_625 = &p_725->g_39;
                int32_t l_643[4] = {0x11D44DE9L,0x11D44DE9L,0x11D44DE9L,0x11D44DE9L};
                int i;
                for (p_725->g_394 = (-21); (p_725->g_394 == (-10)); ++p_725->g_394)
                { /* block id: 301 */
                    int32_t **l_604 = &p_725->g_197;
                    uint32_t l_612 = 5UL;
                    int16_t *l_636[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_636[i] = &p_725->g_183;
                    (*l_604) = (void*)0;
                    for (p_725->g_145 = 0; (p_725->g_145 > 4); p_725->g_145++)
                    { /* block id: 305 */
                        union U0 **l_608 = &l_607;
                        int16_t *l_611 = &p_725->g_244[1][1][2];
                        int32_t l_620 = 7L;
                        (*l_608) = l_607;
                        (*l_604) = (*p_725->g_196);
                        l_597 |= (l_523[0] <= (safe_sub_func_uint64_t_u_u(((*p_35) != (p_725->g_120[1][1][2] = ((l_612 = ((*l_611) ^= 0x178FL)) >= ((((*p_37) = ((l_620 = (((safe_lshift_func_int8_t_s_u(0x67L, (((safe_rshift_func_uint16_t_u_s(p_725->g_295, 0)) == p_38.f0) , ((l_617 = (0x36BBA0BE7359FC94L || 0UL)) > (safe_add_func_int32_t_s_s((!l_596), 0L)))))) & p_38.f0) == 0x553F7AB6L)) ^ l_621)) , l_622[6][2][3]) < l_596)))), (*p_725->g_94))));
                    }
                    (*p_37) |= ((p_725->g_244[4][2][1] = (safe_mul_func_uint16_t_u_u((((((&p_34 != (l_625 = (l_617 , (void*)0))) & ((safe_sub_func_int32_t_s_s((((p_38.f0 , (safe_lshift_func_int16_t_s_s((((((safe_mul_func_int8_t_s_s((safe_add_func_int64_t_s_s(((((*p_36) = (((((p_725->g_145 = ((l_621 | 0UL) & 1UL)) <= 6L) , ((((safe_rshift_func_uint8_t_u_s((((((0x20CE8DD2CFD0C9F9L & 0x7454F8E0997A383AL) , p_38.f0) , 0x6DL) || l_524) , l_621), 7)) >= 1L) , p_38.f0) | p_38.f0)) ^ (*p_725->g_451)) > 0x40011AAFL)) ^ 1UL) , 0x6A41F874DA2EB574L), FAKE_DIVERGE(p_725->local_1_offset, get_local_id(1), 10))), (*p_34))) < GROUP_DIVERGE(2, 1)) == FAKE_DIVERGE(p_725->group_0_offset, get_group_id(0), 10)) , 0x6BL) != 2UL), 13))) < p_725->g_40) | (-9L)), (-1L))) , p_725->g_389)) , l_550) , (*p_725->g_451)) != l_523[3]), p_725->g_3))) >= p_38.f0);
                }
                for (l_524 = 0; (l_524 <= 1); l_524 += 1)
                { /* block id: 324 */
                    int32_t *l_637 = &p_725->g_100.f4;
                    int32_t *l_638 = &l_523[1];
                    int32_t *l_639 = &p_725->g_63[5][1][2];
                    int32_t *l_640[1];
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                        l_640[i] = &p_725->g_403.f4;
                    p_725->g_412[(l_524 + 1)][l_524][(l_524 + 4)] = p_725->g_412[(l_524 + 4)][l_524][(l_524 + 5)];
                    p_725->g_644++;
                }
            }
        }
    }
    else
    { /* block id: 330 */
        int32_t l_670 = 0x77491021L;
        for (p_725->g_394 = 11; (p_725->g_394 == (-16)); p_725->g_394 = safe_sub_func_int64_t_s_s(p_725->g_394, 7))
        { /* block id: 333 */
            uint64_t l_665[1][7];
            int32_t l_671 = 0x18307DFDL;
            int i, j;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 7; j++)
                    l_665[i][j] = 0x9DBC24CA3521B637L;
            }
            for (p_725->g_406 = 0; (p_725->g_406 <= 20); ++p_725->g_406)
            { /* block id: 336 */
                union U2 **l_651[9][4][5] = {{{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162},{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162},{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162},{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162}},{{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162},{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162},{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162},{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162}},{{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162},{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162},{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162},{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162}},{{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162},{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162},{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162},{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162}},{{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162},{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162},{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162},{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162}},{{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162},{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162},{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162},{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162}},{{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162},{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162},{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162},{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162}},{{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162},{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162},{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162},{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162}},{{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162},{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162},{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162},{&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162}}};
                union U2 ***l_652 = &l_651[3][1][2];
                int32_t l_664 = 0x0F934819L;
                int i, j, k;
                (*l_652) = l_651[3][1][2];
                (*p_35) &= (safe_mod_func_int64_t_s_s(((p_725->g_655 , (((safe_div_func_uint32_t_u_u((**p_725->g_450), GROUP_DIVERGE(1, 1))) >= ((safe_add_func_int8_t_s_s((FAKE_DIVERGE(p_725->local_0_offset, get_local_id(0), 10) != ((l_671 ^= ((safe_sub_func_int16_t_s_s((((p_38.f0 , (safe_add_func_uint16_t_u_u(l_664, (p_725->g_406 | p_38.f0)))) , (((p_725->g_145 ^ ((l_665[0][6] || (safe_add_func_uint64_t_u_u((safe_rshift_func_uint16_t_u_s(p_38.f0, p_38.f0)), 0UL))) , GROUP_DIVERGE(2, 1))) < l_670) | l_664)) <= (*p_725->g_94)), (-6L))) && p_725->g_403.f0)) && p_38.f0)), p_725->g_124)) & p_38.f0)) , (void*)0)) != (void*)0), 0xAC3B24D02CE3D22DL));
            }
        }
        l_617 = (safe_mul_func_uint8_t_u_u(l_523[3], p_725->g_644));
        (*p_36) = (-10L);
    }
    return l_523[2];
}


/* ------------------------------------------ */
/* 
 * reads : p_725->g_406 p_725->g_365
 * writes: p_725->g_406 p_725->g_365
 */
int32_t * func_41(int32_t  p_42, int64_t  p_43, uint32_t  p_44, int32_t * p_45, struct S3 * p_725)
{ /* block id: 244 */
    int32_t *l_516 = &p_725->g_63[5][0][2];
    for (p_725->g_406 = 6; (p_725->g_406 <= 30); ++p_725->g_406)
    { /* block id: 247 */
        for (p_725->g_365 = 6; (p_725->g_365 > 3); --p_725->g_365)
        { /* block id: 250 */
            int64_t l_515 = 0x0B0E240CAA23D5AFL;
            if (l_515)
                break;
        }
    }
    return l_516;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t  func_47(uint64_t * p_48, uint32_t  p_49, uint32_t  p_50, int64_t  p_51, uint32_t  p_52, struct S3 * p_725)
{ /* block id: 235 */
    uint32_t l_507 = 0x781D87B7L;
    for (p_51 = 0; (p_51 < (-25)); p_51 = safe_sub_func_int8_t_s_s(p_51, 3))
    { /* block id: 238 */
        int64_t l_502 = (-1L);
        int32_t l_503[9] = {0x341913D0L,(-4L),0x341913D0L,0x341913D0L,(-4L),0x341913D0L,0x341913D0L,(-4L),0x341913D0L};
        int32_t *l_504 = &p_725->g_403.f4;
        int32_t *l_505 = (void*)0;
        int32_t *l_506 = &p_725->g_63[0][1][3];
        int i;
        if (p_49)
            break;
        if (l_502)
            continue;
        --l_507;
    }
    return p_49;
}


/* ------------------------------------------ */
/* 
 * reads : p_725->g_40 p_725->g_4 p_725->g_83 p_725->g_85 p_725->g_3 p_725->g_93 p_725->g_63 p_725->g_59 p_725->g_100 p_725->g_101 p_725->g_94 p_725->g_39 p_725->g_86 p_725->g_87 p_725->g_145 p_725->g_161 p_725->g_120 p_725->g_183 p_725->g_171 p_725->g_245 p_725->g_251 p_725->g_197 p_725->g_196 p_725->g_118 p_725->g_343 p_725->g_124 p_725->g_358 p_725->g_365 p_725->g_207 p_725->g_295 p_725->g_394 p_725->g_360 p_725->g_403 p_725->g_389 p_725->g_411 p_725->g_414 p_725->g_450 p_725->g_462 p_725->g_451 p_725->g_452
 * writes: p_725->g_40 p_725->g_85 p_725->g_93 p_725->g_59 p_725->g_100.f4 p_725->g_118 p_725->g_120 p_725->g_145 p_725->g_63 p_725->g_162 p_725->g_197 p_725->g_183 p_725->g_171 p_725->g_244 p_725->g_295 p_725->g_222 p_725->g_365 p_725->g_389 p_725->g_394 p_725->g_412 p_725->g_124 p_725->g_462
 */
uint64_t * func_53(int32_t * p_54, uint8_t  p_55, struct S3 * p_725)
{ /* block id: 9 */
    int16_t l_60 = (-5L);
    int32_t *l_61 = (void*)0;
    int32_t *l_62 = &p_725->g_63[4][2][3];
    int32_t *l_64 = (void*)0;
    int32_t l_65 = 0x080F5C68L;
    int32_t *l_66 = (void*)0;
    int32_t *l_67 = &p_725->g_63[4][2][3];
    int32_t *l_68 = &p_725->g_63[4][2][3];
    int32_t *l_69 = &p_725->g_63[4][2][3];
    int32_t *l_70[10];
    uint16_t l_71 = 0x5289L;
    uint64_t *l_102 = (void*)0;
    int32_t **l_499 = &l_68;
    int i;
    for (i = 0; i < 10; i++)
        l_70[i] = &p_725->g_63[7][5][2];
    for (p_725->g_40 = 16; (p_725->g_40 <= (-30)); p_725->g_40--)
    { /* block id: 12 */
        uint64_t *l_58[6] = {&p_725->g_59,&p_725->g_59,&p_725->g_59,&p_725->g_59,&p_725->g_59,&p_725->g_59};
        int i;
        return l_58[1];
    }
    ++l_71;
    (*l_499) = func_74((func_78(p_54, p_725->g_40, &p_725->g_3, p_725->g_4, p_725) , l_102), p_55, ((p_725->g_63[4][2][3] , GROUP_DIVERGE(0, 1)) , (l_102 == l_102)), p_725);
    return (*p_725->g_93);
}


/* ------------------------------------------ */
/* 
 * reads : p_725->g_3 p_725->g_40 p_725->g_94 p_725->g_59 p_725->g_93 p_725->g_4 p_725->g_39 p_725->g_86 p_725->g_87 p_725->g_63 p_725->g_145 p_725->g_101 p_725->g_161 p_725->g_120 p_725->g_183 p_725->g_171 p_725->g_245 p_725->g_251 p_725->g_197 p_725->g_196 p_725->g_118 p_725->g_343 p_725->g_124 p_725->g_358 p_725->g_365 p_725->g_207 p_725->g_295 p_725->g_394 p_725->g_360 p_725->g_403 p_725->g_389 p_725->g_411 p_725->g_414 p_725->g_450 p_725->g_462 p_725->g_451 p_725->g_452
 * writes: p_725->g_59 p_725->g_118 p_725->g_120 p_725->g_40 p_725->g_145 p_725->g_100.f4 p_725->g_63 p_725->g_162 p_725->g_197 p_725->g_183 p_725->g_171 p_725->g_244 p_725->g_295 p_725->g_222 p_725->g_365 p_725->g_389 p_725->g_394 p_725->g_412 p_725->g_124 p_725->g_462
 */
int32_t * func_74(uint64_t * p_75, uint64_t  p_76, int32_t  p_77, struct S3 * p_725)
{ /* block id: 30 */
    int8_t l_103 = 0L;
    uint64_t *l_117 = &p_725->g_118;
    uint32_t *l_119 = &p_725->g_120[1][1][2];
    int32_t l_121 = 0x6982BA97L;
    uint64_t *l_122 = (void*)0;
    uint64_t *l_123[3][2] = {{(void*)0,&p_725->g_124},{(void*)0,&p_725->g_124},{(void*)0,&p_725->g_124}};
    int32_t l_125[2];
    union U0 l_153 = {0x0B65D2F8L};
    union U2 **l_286 = &p_725->g_162;
    uint32_t l_366 = 1UL;
    int16_t l_387 = (-1L);
    uint8_t *l_405 = &p_725->g_406;
    int32_t l_456 = 0x6BF1FCE5L;
    int8_t l_490 = 2L;
    int32_t *l_491 = &l_125[0];
    int32_t *l_492 = &l_125[0];
    int32_t *l_493 = &l_456;
    int32_t *l_494 = &l_125[0];
    int32_t *l_495 = &l_125[0];
    int32_t *l_496 = &l_125[0];
    int32_t *l_497 = &l_121;
    int32_t *l_498 = &p_725->g_63[4][2][3];
    int i, j;
    for (i = 0; i < 2; i++)
        l_125[i] = 1L;
    if (((l_103 , (safe_rshift_func_int16_t_s_u((0x32AAL ^ FAKE_DIVERGE(p_725->local_1_offset, get_local_id(1), 10)), 1))) ^ ((l_125[0] &= (l_121 |= ((2UL & p_725->g_3) ^ (safe_unary_minus_func_uint32_t_u(((*l_119) = (((l_103 >= (((p_725->g_40 && 1UL) <= ((*l_117) = (((((safe_add_func_int16_t_s_s((safe_mul_func_uint16_t_u_u((0L & ((safe_mod_func_int32_t_s_s((safe_sub_func_uint64_t_u_u((--(*p_725->g_94)), ((((void*)0 == (*p_725->g_93)) != 0x0269L) >= p_725->g_4))), p_76)) <= (*p_725->g_39))), 0x8B9BL)), p_725->g_40)) || GROUP_DIVERGE(1, 1)) , (void*)0) != &p_77) , (*p_725->g_86)))) && (*p_725->g_39))) || p_77) && (*p_725->g_94)))))))) > p_725->g_63[1][3][3])))
    { /* block id: 36 */
        int32_t l_129[5] = {0x099BD49CL,0x099BD49CL,0x099BD49CL,0x099BD49CL,0x099BD49CL};
        int32_t l_130 = 0x26678658L;
        int32_t l_131[2];
        uint64_t l_132 = 0x9ADF10BACB65B9F8L;
        union U1 *l_203 = &p_725->g_204[0];
        union U2 **l_221 = &p_725->g_162;
        int8_t l_348 = 0L;
        uint8_t *l_407 = &p_725->g_406;
        uint32_t l_424 = 0x1BAD5C99L;
        int i;
        for (i = 0; i < 2; i++)
            l_131[i] = 0x5062AD80L;
        for (p_725->g_40 = (-16); (p_725->g_40 != (-18)); p_725->g_40 = safe_sub_func_int32_t_s_s(p_725->g_40, 2))
        { /* block id: 39 */
            int32_t *l_128[2][10][1];
            union U2 *l_159[5];
            int32_t **l_235 = (void*)0;
            int32_t **l_236 = &l_128[1][9][0];
            int32_t **l_237 = &p_725->g_197;
            int16_t *l_239 = &p_725->g_183;
            int16_t *l_240 = &p_725->g_171;
            int16_t *l_241 = (void*)0;
            int16_t *l_242 = (void*)0;
            int16_t *l_243[4] = {&p_725->g_244[1][1][2],&p_725->g_244[1][1][2],&p_725->g_244[1][1][2],&p_725->g_244[1][1][2]};
            uint8_t l_288[6][4][9] = {{{250UL,0x35L,0x35L,250UL,250UL,0x35L,0x35L,250UL,250UL},{250UL,0x35L,0x35L,250UL,250UL,0x35L,0x35L,250UL,250UL},{250UL,0x35L,0x35L,250UL,250UL,0x35L,0x35L,250UL,250UL},{250UL,0x35L,0x35L,250UL,250UL,0x35L,0x35L,250UL,250UL}},{{250UL,0x35L,0x35L,250UL,250UL,0x35L,0x35L,250UL,250UL},{250UL,0x35L,0x35L,250UL,250UL,0x35L,0x35L,250UL,250UL},{250UL,0x35L,0x35L,250UL,250UL,0x35L,0x35L,250UL,250UL},{250UL,0x35L,0x35L,250UL,250UL,0x35L,0x35L,250UL,250UL}},{{250UL,0x35L,0x35L,250UL,250UL,0x35L,0x35L,250UL,250UL},{250UL,0x35L,0x35L,250UL,250UL,0x35L,0x35L,250UL,250UL},{250UL,0x35L,0x35L,250UL,250UL,0x35L,0x35L,250UL,250UL},{250UL,0x35L,0x35L,250UL,250UL,0x35L,0x35L,250UL,250UL}},{{250UL,0x35L,0x35L,250UL,250UL,0x35L,0x35L,250UL,250UL},{250UL,0x35L,0x35L,250UL,250UL,0x35L,0x35L,250UL,250UL},{250UL,0x35L,0x35L,250UL,250UL,0x35L,0x35L,250UL,250UL},{250UL,0x35L,0x35L,250UL,250UL,0x35L,0x35L,250UL,250UL}},{{250UL,0x35L,0x35L,250UL,250UL,0x35L,0x35L,250UL,250UL},{250UL,0x35L,0x35L,250UL,250UL,0x35L,0x35L,250UL,250UL},{250UL,0x35L,0x35L,250UL,250UL,0x35L,0x35L,250UL,250UL},{250UL,0x35L,0x35L,250UL,250UL,0x35L,0x35L,250UL,250UL}},{{250UL,0x35L,0x35L,250UL,250UL,0x35L,0x35L,250UL,250UL},{250UL,0x35L,0x35L,250UL,250UL,0x35L,0x35L,250UL,250UL},{250UL,0x35L,0x35L,250UL,250UL,0x35L,0x35L,250UL,250UL},{250UL,0x35L,0x35L,250UL,250UL,0x35L,0x35L,250UL,250UL}}};
            uint32_t l_340[6][4];
            int32_t l_361 = 0x5A12C6DBL;
            int i, j, k;
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 10; j++)
                {
                    for (k = 0; k < 1; k++)
                        l_128[i][j][k] = (void*)0;
                }
            }
            for (i = 0; i < 5; i++)
                l_159[i] = &p_725->g_100;
            for (i = 0; i < 6; i++)
            {
                for (j = 0; j < 4; j++)
                    l_340[i][j] = 0xF15BD04DL;
            }
            l_132--;
            for (l_132 = 7; (l_132 == 14); ++l_132)
            { /* block id: 43 */
                int8_t l_137[10] = {0x52L,0x70L,0x52L,0x52L,0x70L,0x52L,0x52L,0x70L,0x52L,0x52L};
                uint32_t *l_154 = &p_725->g_120[0][3][1];
                int32_t l_155 = 0x0F25B8A7L;
                int i;
                l_121 = (~l_137[1]);
                for (p_76 = 6; (p_76 == 49); ++p_76)
                { /* block id: 47 */
                    int64_t *l_144 = &p_725->g_145;
                    int32_t l_158 = 0x4B0658D7L;
                    l_131[1] = (p_725->g_63[4][2][3] = (safe_rshift_func_int8_t_s_u((p_725->g_40 > (p_76 >= (((*p_725->g_101) = (p_76 != (!((safe_div_func_int64_t_s_s(((*l_144) |= p_725->g_3), (l_155 &= ((GROUP_DIVERGE(1, 1) > (safe_rshift_func_uint8_t_u_s((((&p_76 != ((safe_rshift_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(((safe_unary_minus_func_uint8_t_u(l_130)) == (&p_725->g_120[1][1][2] == (l_153 , l_154))), p_76)), l_137[1])) , &l_132)) | l_137[0]) | p_725->g_40), l_125[0]))) < l_121)))) == p_76)))) | FAKE_DIVERGE(p_725->group_0_offset, get_group_id(0), 10)))), 6)));
                    l_158 ^= (l_121 = (safe_rshift_func_int8_t_s_s(l_103, 7)));
                }
                (*p_725->g_161) = l_159[0];
            }
            for (l_121 = 0; (l_121 <= 16); ++l_121)
            { /* block id: 60 */
                uint64_t l_172 = 0xB70EFD0CC2756E31L;
                int32_t l_194 = 0x47C4C677L;
                uint32_t *l_216 = &p_725->g_120[1][1][2];
                (1 + 1);
            }
            if ((0x0798L <= (safe_lshift_func_uint8_t_u_u((((!p_76) > (p_76 > 0xD6ACCC04L)) < (p_725->g_244[5][3][0] = ((((safe_mul_func_int8_t_s_s(p_76, (safe_mul_func_int8_t_s_s((p_77 , (safe_rshift_func_int16_t_s_u(((*l_240) |= ((*l_239) |= ((safe_lshift_func_uint16_t_u_u(((safe_lshift_func_uint8_t_u_s(((((*l_236) = &l_130) != ((*l_237) = &l_131[1])) | (safe_unary_minus_func_uint16_t_u((p_725->g_120[1][1][2] , l_132)))), 4)) | 0UL), 11)) <= l_125[1]))), 6))), p_77)))) < p_77) , p_77) , 0L))), 0))))
            { /* block id: 104 */
                int64_t *l_246 = &p_725->g_145;
                int32_t l_263 = 0x5357922EL;
                int32_t l_264 = (-1L);
                int32_t l_270[2][8] = {{0x32DF8BF0L,(-1L),(-1L),0x32DF8BF0L,0x32DF8BF0L,(-1L),(-1L),0x32DF8BF0L},{0x32DF8BF0L,(-1L),(-1L),0x32DF8BF0L,0x32DF8BF0L,(-1L),(-1L),0x32DF8BF0L}};
                union U1 *l_314 = &p_725->g_251;
                uint8_t l_362 = 0xEDL;
                int i, j;
                if ((((*l_246) ^= (p_725->g_245[1] , 0x1FDFEFE262E621D1L)) , (safe_sub_func_uint64_t_u_u(((safe_rshift_func_int16_t_s_s(((p_725->g_251 , ((safe_unary_minus_func_uint64_t_u(((((p_77 >= (safe_sub_func_uint64_t_u_u((GROUP_DIVERGE(0, 1) | (safe_rshift_func_int8_t_s_u((safe_lshift_func_int8_t_s_s((-1L), 3)), 7))), ((safe_div_func_int8_t_s_s((5UL & (l_264 |= ((-9L) | (p_76 , (safe_lshift_func_uint16_t_u_u(l_263, p_77)))))), (*p_725->g_39))) , (**l_237))))) | 0xF2A8A3E8L) , p_76) != 0x40L))) , p_725->g_87)) | l_125[0]), 14)) && p_725->g_120[1][0][2]), (-1L)))))
                { /* block id: 107 */
                    int64_t l_269[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_269[i] = 0L;
                    (*l_237) = (void*)0;
                    if (l_131[0])
                    { /* block id: 109 */
                        uint32_t l_265 = 0xAEA817F4L;
                        union U1 **l_268[7] = {&l_203,&l_203,&l_203,&l_203,&l_203,&l_203,&l_203};
                        int i;
                        ++l_265;
                        l_203 = l_203;
                    }
                    else
                    { /* block id: 112 */
                        uint8_t l_271 = 248UL;
                        ++l_271;
                        return (*p_725->g_196);
                    }
                    l_264 = p_77;
                }
                else
                { /* block id: 117 */
                    uint8_t *l_282 = (void*)0;
                    int32_t *l_285 = (void*)0;
                    union U2 **l_287 = (void*)0;
                    l_130 = (l_270[0][6] = ((**p_725->g_196) ^= (safe_sub_func_uint64_t_u_u(GROUP_DIVERGE(2, 1), (safe_sub_func_int8_t_s_s((safe_rshift_func_uint8_t_u_s(0xE5L, 6)), (l_264 = (!(safe_mod_func_uint8_t_u_u(p_77, p_76))))))))));
                    for (l_263 = 0; (l_263 != (-9)); l_263--)
                    { /* block id: 124 */
                        if (l_132)
                            break;
                        return l_285;
                    }
                    if (p_77)
                        continue;
                    (**l_237) |= ((((*l_239) = (l_286 == l_287)) >= 0x6E45L) | p_77);
                }
                if (l_288[0][3][0])
                    break;
                for (l_130 = 22; (l_130 > (-19)); --l_130)
                { /* block id: 135 */
                    union U2 ***l_296 = &p_725->g_222[9][7];
                    union U2 ***l_297 = &l_286;
                    union U2 ***l_298 = &l_221;
                    int32_t l_303 = 0x6284EDC7L;
                    uint8_t *l_324 = (void*)0;
                    uint8_t **l_325 = (void*)0;
                    uint8_t **l_326 = &l_324;
                    int8_t **l_357 = &p_725->g_39;
                    uint16_t *l_363 = (void*)0;
                    uint16_t *l_364 = &p_725->g_365;
                    l_121 |= ((((((l_131[1] = (l_125[0] > (((((*l_246) ^= l_103) & l_125[0]) <= (p_725->g_295 = p_725->g_3)) == p_725->g_118))) > (((*l_296) = &l_159[0]) == ((*l_298) = ((*l_297) = l_221)))) > (safe_sub_func_uint8_t_u_u(((safe_mul_func_int8_t_s_s(l_303, (((((safe_lshift_func_int8_t_s_u((safe_sub_func_int64_t_s_s(p_725->g_120[1][1][2], l_129[3])), 7)) , (void*)0) != (void*)0) <= l_153.f0) , p_76))) | l_264), p_76))) | p_76) >= p_76) != l_125[1]);
                    for (p_725->g_171 = 2; (p_725->g_171 == (-15)); p_725->g_171 = safe_sub_func_int32_t_s_s(p_725->g_171, 3))
                    { /* block id: 145 */
                        int8_t **l_310 = &p_725->g_39;
                        int8_t ***l_313 = &l_310;
                        union U1 **l_315 = &l_203;
                        (*l_313) = l_310;
                        (*l_315) = l_314;
                    }
                    l_366 = ((safe_lshift_func_uint16_t_u_s((safe_mul_func_int8_t_s_s((safe_div_func_int8_t_s_s((((*l_326) = l_324) == ((((*l_364) ^= (safe_add_func_int64_t_s_s((l_303 = (((safe_unary_minus_func_uint16_t_u(((l_264 = (safe_mod_func_uint8_t_u_u(((((*l_119)--) && (safe_lshift_func_int16_t_s_u(((safe_rshift_func_uint8_t_u_s(p_725->g_183, 7)) && ((*l_119)--)), (((l_340[2][3] == ((2L & ((safe_mul_func_int8_t_s_s((p_725->g_343 , (safe_sub_func_int16_t_s_s(((*l_240) ^= ((safe_lshift_func_int16_t_s_s((((++(**p_725->g_93)) , (safe_rshift_func_int8_t_s_u((safe_mul_func_uint8_t_u_u(((0x9741L > (((safe_rshift_func_uint8_t_u_u(p_725->g_124, 2)) , l_357) != p_725->g_358[5][3][0])) > l_129[4]), 255UL)), 6))) | l_348), p_77)) , p_725->g_40)), p_725->g_63[4][2][3]))), (*p_725->g_39))) || l_361)) , p_76)) < 0x5B04L) | l_362)))) <= p_725->g_3), 0x2EL))) & 1L))) , (-9L)) || p_77)), GROUP_DIVERGE(0, 1)))) >= p_77) , &l_362)), p_77)), p_76)), l_103)) ^ 0x00L);
                }
            }
            else
            { /* block id: 159 */
                uint32_t l_367 = 0xD60034FCL;
                l_130 |= (**p_725->g_207);
                if (l_367)
                    break;
            }
        }
        for (p_725->g_145 = 0; (p_725->g_145 >= (-18)); p_725->g_145 = safe_sub_func_uint64_t_u_u(p_725->g_145, 4))
        { /* block id: 166 */
            uint16_t l_390 = 65529UL;
            int32_t l_423 = 8L;
            for (p_725->g_365 = 0; (p_725->g_365 == 33); p_725->g_365 = safe_add_func_uint16_t_u_u(p_725->g_365, 9))
            { /* block id: 169 */
                int8_t l_372 = 0x58L;
                int32_t *l_375 = &l_153.f0;
                int32_t **l_376 = &l_375;
                union U2 ***l_385 = &l_221;
                int16_t *l_386 = &p_725->g_183;
                uint16_t *l_388 = &p_725->g_389;
                int64_t *l_393 = &p_725->g_394;
                int32_t *l_404 = &l_121;
                int32_t l_408 = 0x2D9EEF6EL;
                l_390 &= (((*l_388) = (l_372 == (248UL & (p_725->g_120[0][2][2] || (safe_sub_func_uint32_t_u_u(((((*l_376) = l_375) == &p_725->g_3) < ((safe_sub_func_int32_t_s_s((safe_div_func_int16_t_s_s(p_725->g_295, ((*l_386) = (safe_mul_func_int8_t_s_s((((((safe_lshift_func_int16_t_s_s((p_725->g_244[1][1][2] = ((((*l_385) = l_221) != (l_372 , l_286)) || l_103)), 7)) <= p_76) && p_76) >= FAKE_DIVERGE(p_725->local_1_offset, get_local_id(1), 10)) & p_76), 0x0BL))))), l_387)) && 4294967293UL)), 6UL)))))) == p_76);
                l_408 = (safe_mul_func_uint16_t_u_u((l_103 || ((((((FAKE_DIVERGE(p_725->group_1_offset, get_group_id(1), 10) == (((((*l_393) ^= l_390) , p_725->g_360) <= 0x30L) , ((safe_lshift_func_int16_t_s_u(p_725->g_145, 15)) ^ (GROUP_DIVERGE(2, 1) <= 1UL)))) , ((*l_404) = ((&l_103 == ((1L > ((safe_add_func_int8_t_s_s((((safe_lshift_func_uint8_t_u_u(((((*l_386) = ((p_725->g_403 , (-1L)) >= FAKE_DIVERGE(p_725->global_2_offset, get_global_id(2), 10))) == p_725->g_40) | (**p_725->g_93)), p_725->g_40)) >= p_76) | l_125[0]), l_372)) == 4294967291UL)) , (void*)0)) == l_390))) >= l_130) == 0x02632D2EFFF921C2L) , l_405) != l_407)), p_725->g_389));
                if (l_366)
                    break;
                for (p_725->g_171 = (-9); (p_725->g_171 == (-17)); --p_725->g_171)
                { /* block id: 183 */
                    int32_t l_413 = 0x16796435L;
                    (*p_725->g_411) = &p_725->g_251;
                    if (l_413)
                        continue;
                }
            }
            for (l_130 = 1; (l_130 <= 7); l_130 += 1)
            { /* block id: 190 */
                int32_t *l_416 = &l_121;
                int32_t l_421 = 0L;
                int16_t l_422[4];
                int i;
                for (i = 0; i < 4; i++)
                    l_422[i] = (-10L);
                for (l_366 = 0; (l_366 <= 7); l_366 += 1)
                { /* block id: 193 */
                    int32_t *l_417 = &l_125[0];
                    int32_t *l_418 = &l_125[0];
                    int32_t *l_419 = &l_131[0];
                    int32_t *l_420[3][4][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
                    int i, j, k;
                    for (l_348 = 7; (l_348 >= 0); l_348 -= 1)
                    { /* block id: 196 */
                        int32_t **l_415 = &p_725->g_197;
                        l_416 = ((*l_415) = (p_725->g_414 , (void*)0));
                    }
                    --l_424;
                    (*l_418) = p_76;
                    if (p_76)
                        continue;
                }
            }
        }
        l_125[0] ^= 0x348068CCL;
    }
    else
    { /* block id: 207 */
        uint16_t l_443 = 0UL;
        uint32_t *l_448 = &p_725->g_120[1][1][2];
        uint32_t **l_447[4];
        int32_t l_457[4] = {0x31160D82L,0x31160D82L,0x31160D82L,0x31160D82L};
        int i;
        for (i = 0; i < 4; i++)
            l_447[i] = &l_448;
        for (p_725->g_365 = 5; (p_725->g_365 != 46); p_725->g_365++)
        { /* block id: 210 */
            union U1 **l_453[5][9][5] = {{{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]}},{{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]}},{{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]}},{{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]}},{{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]},{&p_725->g_412[5][1][1],(void*)0,&p_725->g_412[3][1][1],&p_725->g_412[5][1][1],&p_725->g_412[5][1][1]}}};
            int32_t l_454 = 0x53DAB9E8L;
            int32_t l_458 = 0x3BDED5D8L;
            int32_t l_459 = 0x2C7EC8E8L;
            int32_t l_460[8] = {0x565E48E1L,0x565E48E1L,0x565E48E1L,0x565E48E1L,0x565E48E1L,0x565E48E1L,0x565E48E1L,0x565E48E1L};
            int64_t l_461 = 4L;
            int32_t *l_465 = &l_460[5];
            int i, j, k;
            for (p_77 = (-23); (p_77 <= 8); ++p_77)
            { /* block id: 213 */
                uint32_t **l_446 = &l_119;
                int32_t l_449 = 5L;
                int32_t *l_455[7] = {&p_725->g_100.f4,&p_725->g_100.f4,&p_725->g_100.f4,&p_725->g_100.f4,&p_725->g_100.f4,&p_725->g_100.f4,&p_725->g_100.f4};
                int i;
                for (p_725->g_124 = 0; (p_725->g_124 >= 48); p_725->g_124 = safe_add_func_int8_t_s_s(p_725->g_124, 4))
                { /* block id: 216 */
                    return (*p_725->g_196);
                }
                (*p_725->g_197) &= 0x2051A8EEL;
                (*p_725->g_197) ^= (((safe_mod_func_uint64_t_u_u(((*p_725->g_94) ^= ((safe_mul_func_int8_t_s_s(p_77, (safe_rshift_func_int8_t_s_u((((((safe_rshift_func_int8_t_s_s((safe_mul_func_int8_t_s_s(l_443, (safe_rshift_func_uint16_t_u_s(((l_443 , &l_366) != ((*l_446) = &l_366)), 3)))), 4)) > ((((l_447[0] == (l_449 , p_725->g_450)) , (l_453[2][0][0] != &p_725->g_412[3][0][6])) > 4UL) || (*p_725->g_86))) | p_76) , l_454) , 0x0BL), l_121)))) <= FAKE_DIVERGE(p_725->global_0_offset, get_global_id(0), 10))), l_449)) > FAKE_DIVERGE(p_725->local_2_offset, get_local_id(2), 10)) > p_725->g_120[1][1][2]);
                p_725->g_462[6]++;
            }
            l_465 = (*p_725->g_196);
        }
        l_457[0] &= ((void*)0 == &p_725->g_358[7][2][0]);
    }
    (*l_491) = (safe_rshift_func_int16_t_s_s((254UL >= (((((safe_rshift_func_uint8_t_u_s(((((l_153 , (((safe_mod_func_int16_t_s_s((safe_mod_func_int8_t_s_s((1UL || (0x7AL ^ ((safe_add_func_uint64_t_u_u(0UL, (safe_add_func_int8_t_s_s((((*p_725->g_450) == ((safe_rshift_func_int8_t_s_u(p_77, (safe_mul_func_int16_t_s_s(((safe_rshift_func_uint16_t_u_u(0UL, 5)) != (safe_mul_func_int8_t_s_s(((*p_725->g_39) = (safe_sub_func_uint8_t_u_u(0UL, l_125[1]))), p_77))), 0x081EL)))) , (*p_725->g_450))) , 0x13L), p_725->g_120[1][3][2])))) | l_387))), p_77)), l_103)) , p_725->g_452) | 0L)) , p_77) != l_153.f0) , l_387), p_725->g_63[4][2][3])) == l_490) < p_725->g_145) || l_103) != (-3L))), 13));
    (*p_725->g_196) = &l_456;
    return l_498;
}


/* ------------------------------------------ */
/* 
 * reads : p_725->g_83 p_725->g_85 p_725->g_3 p_725->g_93 p_725->g_63 p_725->g_59 p_725->g_100 p_725->g_101
 * writes: p_725->g_85 p_725->g_93 p_725->g_59 p_725->g_100.f4
 */
union U2  func_78(int32_t * p_79, uint8_t  p_80, int32_t * p_81, int32_t  p_82, struct S3 * p_725)
{ /* block id: 16 */
    int8_t *l_84 = (void*)0;
    int32_t l_96[3][5] = {{0x161BCE71L,0x322C85E5L,1L,0x322C85E5L,0x161BCE71L},{0x161BCE71L,0x322C85E5L,1L,0x322C85E5L,0x161BCE71L},{0x161BCE71L,0x322C85E5L,1L,0x322C85E5L,0x161BCE71L}};
    int i, j;
    if ((&p_725->g_40 == (p_725->g_83[3][5] , l_84)))
    { /* block id: 17 */
        volatile uint64_t * volatile * volatile *l_89[3][7] = {{&p_725->g_85[1],&p_725->g_85[4],(void*)0,&p_725->g_85[1],&p_725->g_85[4],&p_725->g_85[1],(void*)0},{&p_725->g_85[1],&p_725->g_85[4],(void*)0,&p_725->g_85[1],&p_725->g_85[4],&p_725->g_85[1],(void*)0},{&p_725->g_85[1],&p_725->g_85[4],(void*)0,&p_725->g_85[1],&p_725->g_85[4],&p_725->g_85[1],(void*)0}};
        uint16_t l_92 = 0UL;
        uint64_t ***l_95 = &p_725->g_93;
        int32_t *l_97[5][8][5] = {{{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]}},{{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]}},{{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]}},{{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]}},{{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]},{&l_96[2][0],&p_725->g_63[4][2][3],&l_96[1][0],&l_96[1][0],&l_96[1][2]}}};
        int i, j, k;
        p_725->g_85[1] = p_725->g_85[1];
        p_82 = (safe_lshift_func_uint16_t_u_s((l_92 | (&p_725->g_86 != (p_725->g_3 , ((*l_95) = p_725->g_93)))), (p_725->g_63[7][6][0] || ((-1L) < (~(+l_96[1][0]))))));
    }
    else
    { /* block id: 21 */
        for (p_725->g_59 = 11; (p_725->g_59 <= 18); p_725->g_59 = safe_add_func_uint64_t_u_u(p_725->g_59, 9))
        { /* block id: 24 */
            return p_725->g_100;
        }
        (*p_725->g_101) = l_96[1][3];
    }
    return p_725->g_83[2][6];
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    struct S3 c_726;
    struct S3* p_725 = &c_726;
    struct S3 c_727 = {
        (-1L), // p_725->g_3
        65535UL, // p_725->g_4
        8L, // p_725->g_40
        &p_725->g_40, // p_725->g_39
        0x2D4938140A9711F6L, // p_725->g_59
        {{{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L}},{{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L}},{{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L}},{{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L}},{{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L}},{{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L}},{{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L}},{{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L},{(-1L),0L,0L,2L}}}, // p_725->g_63
        {{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}}}, // p_725->g_83
        0x50DEC7D6112DD267L, // p_725->g_87
        &p_725->g_87, // p_725->g_86
        {&p_725->g_86,&p_725->g_86,&p_725->g_86,&p_725->g_86,&p_725->g_86,&p_725->g_86}, // p_725->g_85
        (void*)0, // p_725->g_88
        &p_725->g_59, // p_725->g_94
        &p_725->g_94, // p_725->g_93
        {0x7D2F113DL}, // p_725->g_100
        &p_725->g_100.f4, // p_725->g_101
        0UL, // p_725->g_118
        {{{0UL,0UL,0x8602F127L,4294967295UL},{0UL,0UL,0x8602F127L,4294967295UL},{0UL,0UL,0x8602F127L,4294967295UL},{0UL,0UL,0x8602F127L,4294967295UL}},{{0UL,0UL,0x8602F127L,4294967295UL},{0UL,0UL,0x8602F127L,4294967295UL},{0UL,0UL,0x8602F127L,4294967295UL},{0UL,0UL,0x8602F127L,4294967295UL}}}, // p_725->g_120
        8UL, // p_725->g_124
        0x233B8ED1E4CC4E5DL, // p_725->g_145
        (void*)0, // p_725->g_160
        &p_725->g_100, // p_725->g_162
        &p_725->g_162, // p_725->g_161
        0L, // p_725->g_171
        0x1485L, // p_725->g_183
        &p_725->g_63[4][2][3], // p_725->g_197
        &p_725->g_197, // p_725->g_196
        (void*)0, // p_725->g_199
        {{0},{0},{0},{0},{0},{0},{0},{0},{0},{0}}, // p_725->g_204
        &p_725->g_197, // p_725->g_207
        {{(void*)0,(void*)0,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,(void*)0},{(void*)0,(void*)0,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,(void*)0},{(void*)0,(void*)0,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,(void*)0},{(void*)0,(void*)0,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,(void*)0},{(void*)0,(void*)0,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,(void*)0},{(void*)0,(void*)0,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,(void*)0},{(void*)0,(void*)0,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,(void*)0},{(void*)0,(void*)0,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,(void*)0},{(void*)0,(void*)0,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,(void*)0},{(void*)0,(void*)0,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,&p_725->g_162,(void*)0}}, // p_725->g_222
        {{{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L}},{{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L}},{{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L}},{{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L}},{{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L}},{{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L},{0x5141L,0x0D69L,0x7E73L}}}, // p_725->g_244
        {{0},{0}}, // p_725->g_245
        {0}, // p_725->g_251
        (-8L), // p_725->g_295
        (void*)0, // p_725->g_311
        (void*)0, // p_725->g_312
        {0}, // p_725->g_343
        0x07L, // p_725->g_360
        {{{&p_725->g_360,&p_725->g_360,&p_725->g_360,&p_725->g_360},{&p_725->g_360,&p_725->g_360,&p_725->g_360,&p_725->g_360},{&p_725->g_360,&p_725->g_360,&p_725->g_360,&p_725->g_360},{&p_725->g_360,&p_725->g_360,&p_725->g_360,&p_725->g_360},{&p_725->g_360,&p_725->g_360,&p_725->g_360,&p_725->g_360},{&p_725->g_360,&p_725->g_360,&p_725->g_360,&p_725->g_360}}}, // p_725->g_359
        {{{&p_725->g_359[0][3][0]},{&p_725->g_359[0][3][0]},{&p_725->g_359[0][3][0]},{&p_725->g_359[0][3][0]}},{{&p_725->g_359[0][3][0]},{&p_725->g_359[0][3][0]},{&p_725->g_359[0][3][0]},{&p_725->g_359[0][3][0]}},{{&p_725->g_359[0][3][0]},{&p_725->g_359[0][3][0]},{&p_725->g_359[0][3][0]},{&p_725->g_359[0][3][0]}},{{&p_725->g_359[0][3][0]},{&p_725->g_359[0][3][0]},{&p_725->g_359[0][3][0]},{&p_725->g_359[0][3][0]}},{{&p_725->g_359[0][3][0]},{&p_725->g_359[0][3][0]},{&p_725->g_359[0][3][0]},{&p_725->g_359[0][3][0]}},{{&p_725->g_359[0][3][0]},{&p_725->g_359[0][3][0]},{&p_725->g_359[0][3][0]},{&p_725->g_359[0][3][0]}},{{&p_725->g_359[0][3][0]},{&p_725->g_359[0][3][0]},{&p_725->g_359[0][3][0]},{&p_725->g_359[0][3][0]}},{{&p_725->g_359[0][3][0]},{&p_725->g_359[0][3][0]},{&p_725->g_359[0][3][0]},{&p_725->g_359[0][3][0]}},{{&p_725->g_359[0][3][0]},{&p_725->g_359[0][3][0]},{&p_725->g_359[0][3][0]},{&p_725->g_359[0][3][0]}}}, // p_725->g_358
        0x87CFL, // p_725->g_365
        65533UL, // p_725->g_389
        0x35097E2631EB68D2L, // p_725->g_394
        {0x713DB18AL}, // p_725->g_403
        0x9EL, // p_725->g_406
        {{{(void*)0,&p_725->g_204[7],&p_725->g_245[1],&p_725->g_245[1],&p_725->g_204[7],&p_725->g_245[1],&p_725->g_245[1],&p_725->g_204[7],(void*)0},{(void*)0,&p_725->g_204[7],&p_725->g_245[1],&p_725->g_245[1],&p_725->g_204[7],&p_725->g_245[1],&p_725->g_245[1],&p_725->g_204[7],(void*)0}},{{(void*)0,&p_725->g_204[7],&p_725->g_245[1],&p_725->g_245[1],&p_725->g_204[7],&p_725->g_245[1],&p_725->g_245[1],&p_725->g_204[7],(void*)0},{(void*)0,&p_725->g_204[7],&p_725->g_245[1],&p_725->g_245[1],&p_725->g_204[7],&p_725->g_245[1],&p_725->g_245[1],&p_725->g_204[7],(void*)0}},{{(void*)0,&p_725->g_204[7],&p_725->g_245[1],&p_725->g_245[1],&p_725->g_204[7],&p_725->g_245[1],&p_725->g_245[1],&p_725->g_204[7],(void*)0},{(void*)0,&p_725->g_204[7],&p_725->g_245[1],&p_725->g_245[1],&p_725->g_204[7],&p_725->g_245[1],&p_725->g_245[1],&p_725->g_204[7],(void*)0}},{{(void*)0,&p_725->g_204[7],&p_725->g_245[1],&p_725->g_245[1],&p_725->g_204[7],&p_725->g_245[1],&p_725->g_245[1],&p_725->g_204[7],(void*)0},{(void*)0,&p_725->g_204[7],&p_725->g_245[1],&p_725->g_245[1],&p_725->g_204[7],&p_725->g_245[1],&p_725->g_245[1],&p_725->g_204[7],(void*)0}},{{(void*)0,&p_725->g_204[7],&p_725->g_245[1],&p_725->g_245[1],&p_725->g_204[7],&p_725->g_245[1],&p_725->g_245[1],&p_725->g_204[7],(void*)0},{(void*)0,&p_725->g_204[7],&p_725->g_245[1],&p_725->g_245[1],&p_725->g_204[7],&p_725->g_245[1],&p_725->g_245[1],&p_725->g_204[7],(void*)0}},{{(void*)0,&p_725->g_204[7],&p_725->g_245[1],&p_725->g_245[1],&p_725->g_204[7],&p_725->g_245[1],&p_725->g_245[1],&p_725->g_204[7],(void*)0},{(void*)0,&p_725->g_204[7],&p_725->g_245[1],&p_725->g_245[1],&p_725->g_204[7],&p_725->g_245[1],&p_725->g_245[1],&p_725->g_204[7],(void*)0}}}, // p_725->g_412
        &p_725->g_412[5][1][1], // p_725->g_411
        {0}, // p_725->g_414
        0x7DF2BA11L, // p_725->g_452
        &p_725->g_452, // p_725->g_451
        &p_725->g_451, // p_725->g_450
        {247UL,247UL,247UL,247UL,247UL,247UL,247UL,247UL}, // p_725->g_462
        {0x30C2346AL}, // p_725->g_517
        {{0}}, // p_725->g_541
        {0}, // p_725->g_545
        {0}, // p_725->g_546
        {0}, // p_725->g_547
        {-1L}, // p_725->g_563
        {-1L}, // p_725->g_573
        {&p_725->g_517.f0,&p_725->g_517.f0,&p_725->g_517.f0,&p_725->g_517.f0,&p_725->g_517.f0,&p_725->g_517.f0}, // p_725->g_583
        &p_725->g_93, // p_725->g_599
        0UL, // p_725->g_644
        {0}, // p_725->g_655
        0x32L, // p_725->g_677
        sequence_input[get_global_id(0)], // p_725->global_0_offset
        sequence_input[get_global_id(1)], // p_725->global_1_offset
        sequence_input[get_global_id(2)], // p_725->global_2_offset
        sequence_input[get_local_id(0)], // p_725->local_0_offset
        sequence_input[get_local_id(1)], // p_725->local_1_offset
        sequence_input[get_local_id(2)], // p_725->local_2_offset
        sequence_input[get_group_id(0)], // p_725->group_0_offset
        sequence_input[get_group_id(1)], // p_725->group_1_offset
        sequence_input[get_group_id(2)], // p_725->group_2_offset
    };
    c_726 = c_727;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_725);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_725->g_3, "p_725->g_3", print_hash_value);
    transparent_crc(p_725->g_4, "p_725->g_4", print_hash_value);
    transparent_crc(p_725->g_40, "p_725->g_40", print_hash_value);
    transparent_crc(p_725->g_59, "p_725->g_59", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_725->g_63[i][j][k], "p_725->g_63[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_725->g_83[i][j].f0, "p_725->g_83[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_725->g_87, "p_725->g_87", print_hash_value);
    transparent_crc(p_725->g_100.f4, "p_725->g_100.f4", print_hash_value);
    transparent_crc(p_725->g_118, "p_725->g_118", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_725->g_120[i][j][k], "p_725->g_120[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_725->g_124, "p_725->g_124", print_hash_value);
    transparent_crc(p_725->g_145, "p_725->g_145", print_hash_value);
    transparent_crc(p_725->g_171, "p_725->g_171", print_hash_value);
    transparent_crc(p_725->g_183, "p_725->g_183", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_725->g_244[i][j][k], "p_725->g_244[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_725->g_295, "p_725->g_295", print_hash_value);
    transparent_crc(p_725->g_360, "p_725->g_360", print_hash_value);
    transparent_crc(p_725->g_365, "p_725->g_365", print_hash_value);
    transparent_crc(p_725->g_389, "p_725->g_389", print_hash_value);
    transparent_crc(p_725->g_394, "p_725->g_394", print_hash_value);
    transparent_crc(p_725->g_403.f0, "p_725->g_403.f0", print_hash_value);
    transparent_crc(p_725->g_406, "p_725->g_406", print_hash_value);
    transparent_crc(p_725->g_452, "p_725->g_452", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_725->g_462[i], "p_725->g_462[i]", print_hash_value);

    }
    transparent_crc(p_725->g_517.f0, "p_725->g_517.f0", print_hash_value);
    transparent_crc(p_725->g_573.f0, "p_725->g_573.f0", print_hash_value);
    transparent_crc(p_725->g_644, "p_725->g_644", print_hash_value);
    transparent_crc(p_725->g_677, "p_725->g_677", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
