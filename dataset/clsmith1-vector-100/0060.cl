// ---fake_divergence -g 29,7,49 -l 29,1,7
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


// Seed: 60

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint64_t  f0;
   uint8_t  f1;
   volatile int8_t  f2;
   volatile uint16_t  f3;
};

struct S1 {
    volatile int32_t g_2[3][2][1];
    volatile int32_t g_3[1][7][4];
    int32_t g_4;
    uint8_t g_34;
    int16_t g_38[7][4];
    VECTOR(int32_t, 16) g_39;
    volatile uint8_t *g_61;
    VECTOR(uint64_t, 4) g_68;
    VECTOR(uint16_t, 4) g_100;
    int16_t g_102;
    int16_t *g_101;
    volatile struct S0 g_109[4];
    volatile struct S0 *g_108;
    uint8_t g_129;
    VECTOR(uint64_t, 4) g_193;
    uint64_t g_195;
    int64_t g_196;
    VECTOR(int16_t, 16) g_210;
    int32_t **g_213;
    VECTOR(int16_t, 4) g_225;
    VECTOR(int16_t, 8) g_226;
    int8_t g_233;
    uint32_t g_235[10][3][5];
    uint32_t g_238;
    int64_t g_244;
    VECTOR(int16_t, 16) g_263;
    VECTOR(int16_t, 2) g_268;
    uint32_t g_301[1][7];
    VECTOR(uint64_t, 2) g_311;
    uint64_t g_325;
    VECTOR(int32_t, 4) g_332;
    VECTOR(int8_t, 16) g_349;
    uint32_t g_370;
    uint64_t *g_378;
    VECTOR(int64_t, 8) g_398;
    int64_t *g_404;
    int64_t **g_403;
    VECTOR(uint8_t, 8) g_472;
    int32_t *g_477;
    volatile uint8_t ** volatile g_498;
    volatile uint8_t **g_499;
    volatile uint8_t ** volatile *g_497[9];
    VECTOR(uint16_t, 2) g_501;
    VECTOR(uint64_t, 4) g_525;
    VECTOR(uint64_t, 2) g_527;
    volatile int32_t g_535;
    VECTOR(int64_t, 2) g_536;
    VECTOR(int32_t, 8) g_555;
    VECTOR(int32_t, 2) g_557;
    VECTOR(int32_t, 16) g_558;
    volatile struct S0 g_569[3][7][3];
    int32_t *g_571;
    int32_t ** volatile g_577;
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
uint32_t  func_1(struct S1 * p_578);
int32_t * func_7(int32_t * p_8, struct S1 * p_578);
uint64_t  func_9(int32_t * p_10, int64_t  p_11, uint32_t  p_12, uint32_t  p_13, int64_t  p_14, struct S1 * p_578);
int32_t * func_15(uint64_t  p_16, int32_t * p_17, uint32_t  p_18, struct S1 * p_578);
int32_t * func_20(int8_t  p_21, int32_t * p_22, uint32_t  p_23, int32_t  p_24, int32_t * p_25, struct S1 * p_578);
int32_t  func_40(uint16_t  p_41, int64_t  p_42, struct S1 * p_578);
int32_t * func_44(uint16_t  p_45, int16_t * p_46, uint16_t  p_47, int16_t * p_48, int16_t * p_49, struct S1 * p_578);
int16_t * func_51(int32_t * p_52, int32_t  p_53, uint32_t  p_54, int64_t  p_55, struct S1 * p_578);
uint16_t  func_92(uint8_t * p_93, struct S1 * p_578);
uint8_t * func_94(int32_t * p_95, int16_t * p_96, int16_t * p_97, uint16_t  p_98, int16_t * p_99, struct S1 * p_578);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_578->g_4 p_578->g_2 p_578->g_34 p_578->g_378 p_578->g_325 p_578->g_193 p_578->g_558 p_578->g_569 p_578->g_108 p_578->g_196 p_578->g_102 p_578->g_577 p_578->g_349
 * writes: p_578->g_4 p_578->g_34 p_578->g_38 p_578->g_555 p_578->g_477 p_578->g_109 p_578->g_571 p_578->g_196 p_578->g_102
 */
uint32_t  func_1(struct S1 * p_578)
{ /* block id: 4 */
    int32_t *l_26 = &p_578->g_4;
    for (p_578->g_4 = (-8); (p_578->g_4 <= (-19)); p_578->g_4 = safe_sub_func_int16_t_s_s(p_578->g_4, 3))
    { /* block id: 7 */
        int32_t l_19 = 0x1AC54C97L;
        int32_t **l_570[10] = {&l_26,&l_26,&l_26,&l_26,&l_26,&l_26,&l_26,&l_26,&l_26,&l_26};
        int i;
        p_578->g_571 = func_7(((func_9(func_15(l_19, func_20(l_19, l_26, ((safe_div_func_uint16_t_u_u(l_19, ((safe_div_func_uint64_t_u_u((((&l_19 == (void*)0) , l_19) && ((VECTOR(int32_t, 8))(0x6548AAB5L, ((VECTOR(int32_t, 2))(0x7FEAE215L, 9L)), (-1L), 1L, ((p_578->g_3[0][2][3] , ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))((l_26 == &p_578->g_2[1][0][0]), 1L, 0x309AB83EB61943ECL, 0x1B8D8131DDA87B8BL)).hi)))).hi) & 0x14898D08F4923579L), 0x2796A450L, 0x17911697L)).s1), (*l_26))) || 0x78L))) , p_578->g_2[2][1][0]), (*l_26), &l_19, p_578), (*l_26), p_578), l_19, p_578->g_558.s6, (*l_26), l_19, p_578) && 0x6B05191DA57878C8L) , &p_578->g_4), p_578);
    }
    for (p_578->g_196 = 0; (p_578->g_196 != 16); p_578->g_196++)
    { /* block id: 205 */
        uint16_t l_574 = 0x1C20L;
        return l_574;
    }
    for (p_578->g_102 = 0; (p_578->g_102 > 16); p_578->g_102++)
    { /* block id: 210 */
        (*p_578->g_577) = func_7(&p_578->g_4, p_578);
    }
    return p_578->g_349.s8;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_7(int32_t * p_8, struct S1 * p_578)
{ /* block id: 199 */
    return p_8;
}


/* ------------------------------------------ */
/* 
 * reads : p_578->g_569 p_578->g_108 p_578->g_378 p_578->g_325
 * writes: p_578->g_109
 */
uint64_t  func_9(int32_t * p_10, int64_t  p_11, uint32_t  p_12, uint32_t  p_13, int64_t  p_14, struct S1 * p_578)
{ /* block id: 196 */
    (*p_578->g_108) = p_578->g_569[0][5][0];
    return (*p_578->g_378);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_15(uint64_t  p_16, int32_t * p_17, uint32_t  p_18, struct S1 * p_578)
{ /* block id: 194 */
    return p_17;
}


/* ------------------------------------------ */
/* 
 * reads : p_578->g_2 p_578->g_34 p_578->g_39 p_578->g_61 p_578->g_68 p_578->g_100 p_578->g_101 p_578->g_102 p_578->g_108 p_578->g_129 p_578->g_4 p_578->g_193 p_578->g_195 p_578->g_196 p_578->g_210 p_578->g_213 p_578->g_225 p_578->g_226 p_578->g_235 p_578->g_233 p_578->g_238 p_578->g_263 p_578->g_268 p_578->g_325 p_578->g_403 p_578->g_398 p_578->g_378 p_578->g_244 p_578->g_472 p_578->g_497 p_578->g_501 p_578->g_301 p_578->g_370 p_578->g_525 p_578->g_527 p_578->g_535 p_578->g_536 p_578->g_555 p_578->g_557 p_578->g_558
 * writes: p_578->g_34 p_578->g_38 p_578->g_68 p_578->g_102 p_578->g_108 p_578->g_195 p_578->g_196 p_578->g_39 p_578->g_233 p_578->g_235 p_578->g_238 p_578->g_100 p_578->g_244 p_578->g_325 p_578->g_378 p_578->g_332 p_578->g_477 p_578->g_555
 */
int32_t * func_20(int8_t  p_21, int32_t * p_22, uint32_t  p_23, int32_t  p_24, int32_t * p_25, struct S1 * p_578)
{ /* block id: 8 */
    uint8_t *l_33 = &p_578->g_34;
    int16_t *l_37 = &p_578->g_38[5][2];
    int32_t l_43 = 0x28D0D4A4L;
    int32_t l_511 = 2L;
    VECTOR(uint32_t, 2) l_514 = (VECTOR(uint32_t, 2))(0x1F2FCB4CL, 4294967295UL);
    int32_t l_519 = 0x5CBBDF8DL;
    VECTOR(uint64_t, 4) l_526 = (VECTOR(uint64_t, 4))(0x109D580449148298L, (VECTOR(uint64_t, 2))(0x109D580449148298L, 3UL), 3UL);
    VECTOR(uint64_t, 2) l_528 = (VECTOR(uint64_t, 2))(18446744073709551606UL, 1UL);
    int64_t ***l_548 = &p_578->g_403;
    VECTOR(int32_t, 2) l_553 = (VECTOR(int32_t, 2))((-1L), 0x32D795A4L);
    VECTOR(int32_t, 4) l_554 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x5DDB354BL), 0x5DDB354BL);
    int32_t **l_568 = &p_578->g_477;
    int i;
    if ((safe_add_func_int32_t_s_s((((*l_37) = ((p_578->g_2[1][0][0] , ((++(*l_33)) , p_22)) == &p_578->g_4)) ^ p_24), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),int32_t,((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(p_578->g_39.s63)), 0x110C3349L, 4L)).odd, (int32_t)(*p_25), (int32_t)func_40(p_578->g_39.s7, l_43, p_578)))).yyxyyxxy)).s2)))
    { /* block id: 175 */
        int32_t *l_506 = (void*)0;
        return l_506;
    }
    else
    { /* block id: 177 */
        uint64_t *l_507 = (void*)0;
        int32_t l_510 = 0L;
        uint16_t *l_520[7][8][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
        int32_t l_521 = 0x7035BD56L;
        int32_t l_522 = (-8L);
        VECTOR(int64_t, 2) l_537 = (VECTOR(int64_t, 2))(1L, (-6L));
        int8_t *l_549 = (void*)0;
        int8_t *l_550 = &p_578->g_233;
        VECTOR(int32_t, 8) l_556 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x76299665L), 0x76299665L), 0x76299665L, 1L, 0x76299665L);
        int32_t *l_561 = &l_519;
        int64_t *l_562 = (void*)0;
        int64_t *l_563 = &p_578->g_196;
        int32_t *l_564 = (void*)0;
        int32_t *l_565 = (void*)0;
        int32_t *l_566[2][7] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        int i, j, k;
lbl_567:
        l_522 &= (((((~(l_43 &= (*p_578->g_378))) <= (p_578->g_193.x ^ ((+((((*l_37) = (+((((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(18446744073709551615UL, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))((safe_sub_func_int16_t_s_s(((*p_578->g_101) = (((*l_33) = (l_511 = l_510)) | (p_23 , ((safe_mod_func_uint32_t_u_u(0x1FC1162BL, ((VECTOR(uint32_t, 4))(l_514.yxyy)).w)) , (((safe_sub_func_uint16_t_u_u((l_519 = (safe_mod_func_int32_t_s_s(l_510, (-1L)))), ((((((l_521 = ((0x60AE087D1A21EBEAL & p_578->g_501.y) ^ p_23)) || 65528UL) <= p_578->g_370) >= p_578->g_210.s2) , p_25) != p_25))) | 0xEE1754E3L) && FAKE_DIVERGE(p_578->global_2_offset, get_global_id(2), 10)))))), p_21)), 0x139AB4E33BF42F7EL, 0x46B961F0AB1F03ECL, ((VECTOR(uint64_t, 8))(0UL)), 18446744073709551615UL, 0xDD3AC8D53462FC2CL, ((VECTOR(uint64_t, 2))(0UL)), 0xC7E41E779E162481L)).s1d9d)).even)))), 0x4E0F96FB9014DEB2L, 1UL)).hi)), ((VECTOR(uint64_t, 2))(0xB28D1FAE48190A35L)), ((VECTOR(uint64_t, 8))(18446744073709551607UL)), (*p_578->g_378), 0UL, 1UL)).s47)).odd & p_23) == (-1L)))) < FAKE_DIVERGE(p_578->global_2_offset, get_global_id(2), 10)) || 4UL)) == p_21))) <= (-2L)) , (void*)0) == &p_578->g_497[4]);
        p_578->g_555.s1 = (safe_mod_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(hadd(((VECTOR(uint64_t, 16))(0x22DBD9A456762208L, ((VECTOR(uint64_t, 2))(1UL, 18446744073709551606UL)), 18446744073709551615UL, 0x1EB6EE1DD4A49AB7L, ((VECTOR(uint64_t, 2))(abs(((VECTOR(uint64_t, 2))(p_578->g_525.xw))))), ((VECTOR(uint64_t, 2))(l_526.xy)), ((VECTOR(uint64_t, 4))(hadd(((VECTOR(uint64_t, 2))(safe_clamp_func(VECTOR(uint64_t, 2),uint64_t,((VECTOR(uint64_t, 4))(sub_sat(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(p_578->g_527.yx)).yxxxxyyxyyyxxxxy)).s8438, ((VECTOR(uint64_t, 16))(l_528.yxxyxxyyyxxyyyxx)).s1f8d))).lo, (uint64_t)0x5ED836EEF54F452FL, (uint64_t)((safe_add_func_uint32_t_u_u((safe_div_func_int64_t_s_s((safe_mul_func_int8_t_s_s(p_578->g_535, ((((((*l_563) ^= (((VECTOR(int64_t, 16))(mul_hi(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(0x65CF5AEAE4C70BFFL, 0x4038F14BB00DFB7EL)))).yyyxxxxx)).s5513273426412077, ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(0x2DC69A9562A7567AL, (-1L))).yxxxyxyy)), ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(p_578->g_536.yxyyxyxxxxyyyyyy)).s779e)), ((VECTOR(int64_t, 2))(0x02BABDED0BC723A7L, 3L)), 2L, ((VECTOR(int64_t, 8))(l_537.xyxxxxxx)), 5L)).odd))))).s3455550746213613))).s3 < (((~6L) | 0UL) && (FAKE_DIVERGE(p_578->group_1_offset, get_group_id(1), 10) <= (((safe_lshift_func_int16_t_s_s((safe_rshift_func_uint8_t_u_u((safe_sub_func_int8_t_s_s((safe_sub_func_uint32_t_u_u((safe_div_func_uint32_t_u_u(((((*l_550) ^= ((void*)0 == l_548)) , (safe_div_func_uint32_t_u_u((&p_578->g_403 == &p_578->g_403), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(l_553.xyxyxyyxxyxyxyyx)).sf5)), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 8))(3L, ((VECTOR(int32_t, 2))(l_554.yz)), ((VECTOR(int32_t, 2))((-3L), 0x6EBB3917L)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(p_578->g_555.s72)))), 0x793E02C5L)).s7171411275676543, ((VECTOR(int32_t, 2))(1L, (-1L))).xyyxyyyxxyyyyxxx))).s1c5e)).zyxzyzxw)).s17))), ((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_556.s23)).yxxxyxxy)), ((VECTOR(int32_t, 2))(p_578->g_557.xy)).yxyxyxyy))), ((VECTOR(int32_t, 4))(p_578->g_558.sf461)), 0x7C848D93L, 0x563D8FC8L)).s6))) != ((*l_561) = (safe_mul_func_int16_t_s_s(p_23, p_23)))), FAKE_DIVERGE(p_578->global_0_offset, get_global_id(0), 10))), 0x03332D77L)), p_578->g_555.s6)), p_24)), p_24)) < 18446744073709551609UL) > l_514.y))))) < p_578->g_100.y) | (*p_22)) <= (*p_578->g_378)) >= l_528.x))), FAKE_DIVERGE(p_578->local_2_offset, get_local_id(2), 10))), GROUP_DIVERGE(1, 1))) , 18446744073709551611UL)))).xyxy, ((VECTOR(uint64_t, 4))(0xC40E820011D095AFL))))), ((VECTOR(uint64_t, 2))(18446744073709551613UL)), 18446744073709551606UL)).s7dc4, ((VECTOR(uint64_t, 4))(0UL))))).zwzzzwwxyyyywyxx)).s8, p_24));
        if (p_578->g_34)
            goto lbl_567;
    }
    (*l_568) = (void*)0;
    return &p_578->g_4;
}


/* ------------------------------------------ */
/* 
 * reads : p_578->g_61 p_578->g_68 p_578->g_100 p_578->g_101 p_578->g_102 p_578->g_108 p_578->g_129 p_578->g_39 p_578->g_4 p_578->g_193 p_578->g_195 p_578->g_196 p_578->g_210 p_578->g_213 p_578->g_225 p_578->g_226 p_578->g_235 p_578->g_233 p_578->g_238 p_578->g_263 p_578->g_268 p_578->g_325 p_578->g_403 p_578->g_398 p_578->g_378 p_578->g_244 p_578->g_472 p_578->g_497 p_578->g_501 p_578->g_301
 * writes: p_578->g_68 p_578->g_102 p_578->g_108 p_578->g_195 p_578->g_196 p_578->g_39 p_578->g_233 p_578->g_235 p_578->g_238 p_578->g_100 p_578->g_244 p_578->g_325 p_578->g_378 p_578->g_332 p_578->g_477
 */
int32_t  func_40(uint16_t  p_41, int64_t  p_42, struct S1 * p_578)
{ /* block id: 11 */
    int32_t l_50 = (-8L);
    int32_t *l_56 = &l_50;
    VECTOR(int32_t, 8) l_57 = (VECTOR(int32_t, 8))(0x309E9537L, (VECTOR(int32_t, 4))(0x309E9537L, (VECTOR(int32_t, 2))(0x309E9537L, 1L), 1L), 1L, 0x309E9537L, 1L);
    VECTOR(int64_t, 8) l_58 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L));
    uint32_t l_64 = 0xC61BBCB5L;
    uint64_t *l_67 = (void*)0;
    uint64_t *l_69 = (void*)0;
    uint64_t *l_70 = (void*)0;
    uint64_t *l_71 = (void*)0;
    uint64_t *l_72 = (void*)0;
    uint64_t *l_73 = (void*)0;
    uint64_t *l_74 = (void*)0;
    uint64_t *l_75 = (void*)0;
    int32_t l_76 = 0x7B846FCCL;
    uint64_t *l_77[9];
    int32_t l_78 = 0x553D6C1CL;
    VECTOR(int16_t, 2) l_81 = (VECTOR(int16_t, 2))((-10L), (-5L));
    VECTOR(uint8_t, 4) l_82 = (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 7UL), 7UL);
    VECTOR(int16_t, 16) l_83 = (VECTOR(int16_t, 16))(0x6569L, (VECTOR(int16_t, 4))(0x6569L, (VECTOR(int16_t, 2))(0x6569L, 1L), 1L), 1L, 0x6569L, 1L, (VECTOR(int16_t, 2))(0x6569L, 1L), (VECTOR(int16_t, 2))(0x6569L, 1L), 0x6569L, 1L, 0x6569L, 1L);
    int16_t *l_84 = (void*)0;
    int16_t *l_85[1];
    VECTOR(int8_t, 4) l_90 = (VECTOR(int8_t, 4))(6L, (VECTOR(int8_t, 2))(6L, 0x24L), 0x24L);
    VECTOR(int8_t, 16) l_91 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x50L), 0x50L), 0x50L, (-1L), 0x50L, (VECTOR(int8_t, 2))((-1L), 0x50L), (VECTOR(int8_t, 2))((-1L), 0x50L), (-1L), 0x50L, (-1L), 0x50L);
    int8_t *l_237 = &p_578->g_233;
    uint16_t *l_239 = (void*)0;
    uint16_t *l_240 = (void*)0;
    uint16_t *l_241 = (void*)0;
    uint16_t *l_242[7][3][10] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    int64_t *l_243 = &p_578->g_244;
    int16_t *l_247 = (void*)0;
    int32_t l_481 = 0x4498E1DBL;
    int32_t l_482 = 5L;
    uint8_t *l_495 = &p_578->g_129;
    uint8_t **l_494[8] = {&l_495,&l_495,&l_495,&l_495,&l_495,&l_495,&l_495,&l_495};
    uint8_t ***l_493 = &l_494[7];
    int i, j, k;
    for (i = 0; i < 9; i++)
        l_77[i] = (void*)0;
    for (i = 0; i < 1; i++)
        l_85[i] = (void*)0;
    l_56 = func_44(l_50, func_51(l_56, (((VECTOR(int32_t, 2))(0x6CDCC21DL, 0x71A504A8L)).hi , ((VECTOR(int32_t, 8))(l_57.s01420755)).s7), (*l_56), ((*l_243) = ((VECTOR(int64_t, 8))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 8),((VECTOR(int64_t, 2))(l_58.s52)).yxyyxxxx, ((VECTOR(int64_t, 8))((-9L), ((safe_add_func_int16_t_s_s((((void*)0 != p_578->g_61) > (((VECTOR(int32_t, 2))(0x037A000CL, 0x1708C993L)).even <= (safe_mod_func_int16_t_s_s(((l_64 > (safe_div_func_int16_t_s_s(((++p_578->g_68.z) , (l_76 = (l_78 = ((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 4))(l_81.yxxy)), ((VECTOR(int16_t, 4))(rhadd(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(upsample(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(0x1FL, 0x35L)).xyxyyxxy)).s3226006445733703)).sed, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(l_82.xz)).xxyxxyxyyyyxxyyy)).s57a5)).hi))))).yyyx, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(l_83.s31a7)).yyyxxyyxzxyzzwwx)).sa0)), 3L, 1L)))))))).w))), (p_42 ^ ((((p_578->g_100.z = (((p_578->g_238 &= (safe_mod_func_int32_t_s_s((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 8))(l_90.yyyzzxxx)).odd, (int8_t)((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(l_91.sfdf9)), ((*l_237) = ((func_92(func_94((((VECTOR(uint16_t, 8))(p_578->g_100.zyxzxzyw)).s4 , &p_578->g_4), l_84, l_85[0], (*l_56), p_578->g_101, p_578), p_578) , p_42) , p_578->g_233)), ((VECTOR(int8_t, 2))(0L)), (-1L))).s4))).y, (*l_56))), FAKE_DIVERGE(p_578->group_1_offset, get_group_id(1), 10)))) == 0UL) || (*l_56))) == 0UL) > 0x10F4L) , (*l_56)))))) != p_41), (*l_56))))), (*l_56))) , 0x3619053269671310L), 0x4B87F05BAAB0F44AL, ((VECTOR(int64_t, 4))(0x04B6D0C135C6C0F8L)), 5L)), ((VECTOR(int64_t, 8))(0x2AE211044F187992L))))).s4), p_578), p_578->g_210.s8, l_247, p_578->g_101, p_578);
    for (p_578->g_244 = 0; (p_578->g_244 == (-11)); p_578->g_244 = safe_sub_func_uint64_t_u_u(p_578->g_244, 5))
    { /* block id: 159 */
        int32_t *l_474 = (void*)0;
        int32_t *l_478 = &l_78;
        int32_t *l_479 = &l_50;
        int32_t *l_480[10][3][4] = {{{(void*)0,&l_50,(void*)0,(void*)0},{(void*)0,&l_50,(void*)0,(void*)0},{(void*)0,&l_50,(void*)0,(void*)0}},{{(void*)0,&l_50,(void*)0,(void*)0},{(void*)0,&l_50,(void*)0,(void*)0},{(void*)0,&l_50,(void*)0,(void*)0}},{{(void*)0,&l_50,(void*)0,(void*)0},{(void*)0,&l_50,(void*)0,(void*)0},{(void*)0,&l_50,(void*)0,(void*)0}},{{(void*)0,&l_50,(void*)0,(void*)0},{(void*)0,&l_50,(void*)0,(void*)0},{(void*)0,&l_50,(void*)0,(void*)0}},{{(void*)0,&l_50,(void*)0,(void*)0},{(void*)0,&l_50,(void*)0,(void*)0},{(void*)0,&l_50,(void*)0,(void*)0}},{{(void*)0,&l_50,(void*)0,(void*)0},{(void*)0,&l_50,(void*)0,(void*)0},{(void*)0,&l_50,(void*)0,(void*)0}},{{(void*)0,&l_50,(void*)0,(void*)0},{(void*)0,&l_50,(void*)0,(void*)0},{(void*)0,&l_50,(void*)0,(void*)0}},{{(void*)0,&l_50,(void*)0,(void*)0},{(void*)0,&l_50,(void*)0,(void*)0},{(void*)0,&l_50,(void*)0,(void*)0}},{{(void*)0,&l_50,(void*)0,(void*)0},{(void*)0,&l_50,(void*)0,(void*)0},{(void*)0,&l_50,(void*)0,(void*)0}},{{(void*)0,&l_50,(void*)0,(void*)0},{(void*)0,&l_50,(void*)0,(void*)0},{(void*)0,&l_50,(void*)0,(void*)0}}};
        uint16_t l_483 = 1UL;
        uint64_t *l_492[1][7][4] = {{{(void*)0,(void*)0,(void*)0,&p_578->g_325},{(void*)0,(void*)0,(void*)0,&p_578->g_325},{(void*)0,(void*)0,(void*)0,&p_578->g_325},{(void*)0,(void*)0,(void*)0,&p_578->g_325},{(void*)0,(void*)0,(void*)0,&p_578->g_325},{(void*)0,(void*)0,(void*)0,&p_578->g_325},{(void*)0,(void*)0,(void*)0,&p_578->g_325}}};
        uint8_t ****l_496 = &l_493;
        uint32_t *l_500 = &p_578->g_235[1][0][4];
        int i, j, k;
        if (p_42)
        { /* block id: 160 */
            uint64_t l_466[4];
            int32_t *l_467 = (void*)0;
            int i;
            for (i = 0; i < 4; i++)
                l_466[i] = 9UL;
            if ((*l_56))
                break;
            p_578->g_332.x = l_466[1];
        }
        else
        { /* block id: 163 */
            int32_t *l_473 = &l_50;
            int32_t **l_475 = (void*)0;
            int32_t **l_476[5][8][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
            int i, j, k;
            (*l_473) = (l_76 ^= (safe_sub_func_uint64_t_u_u((safe_sub_func_uint8_t_u_u(251UL, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(p_578->g_472.s56620322)).even)))).x)), 0x607CCEBBEE18F3EBL)));
            p_578->g_477 = l_474;
        }
        l_483--;
        (*l_478) = ((safe_mod_func_uint8_t_u_u((((p_41 ^ ((safe_lshift_func_uint16_t_u_s(p_578->g_226.s0, (l_492[0][4][0] == &p_578->g_325))) >= (((*l_496) = l_493) == p_578->g_497[4]))) || ((*l_500) |= (*l_56))) && ((VECTOR(uint16_t, 16))(p_578->g_501.xyyyyxxxxyyyxyyx)).se), (safe_add_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_u((p_578->g_398.s0 , (18446744073709551613UL < (*l_56))), 9)), p_578->g_301[0][0])))) , (*l_56));
        if (p_41)
            break;
    }
    return (*l_56);
}


/* ------------------------------------------ */
/* 
 * reads : p_578->g_226 p_578->g_101 p_578->g_102 p_578->g_263 p_578->g_268 p_578->g_39 p_578->g_129 p_578->g_195 p_578->g_325 p_578->g_233 p_578->g_210 p_578->g_403 p_578->g_196 p_578->g_398 p_578->g_235 p_578->g_4 p_578->g_68 p_578->g_378 p_578->g_100
 * writes: p_578->g_102 p_578->g_39 p_578->g_195 p_578->g_325 p_578->g_233 p_578->g_238 p_578->g_378 p_578->g_100
 */
int32_t * func_44(uint16_t  p_45, int16_t * p_46, uint16_t  p_47, int16_t * p_48, int16_t * p_49, struct S1 * p_578)
{ /* block id: 73 */
    int32_t l_248 = 2L;
    int32_t l_249 = 0L;
    int32_t *l_250 = (void*)0;
    int32_t *l_251 = (void*)0;
    int32_t *l_252[7] = {&l_249,(void*)0,&l_249,&l_249,(void*)0,&l_249,&l_249};
    int16_t l_253 = 5L;
    int32_t l_254 = (-1L);
    uint8_t l_255 = 3UL;
    int8_t l_258 = 0x27L;
    VECTOR(int16_t, 8) l_264 = (VECTOR(int16_t, 8))(0x5922L, (VECTOR(int16_t, 4))(0x5922L, (VECTOR(int16_t, 2))(0x5922L, 0x4B60L), 0x4B60L), 0x4B60L, 0x5922L, 0x4B60L);
    VECTOR(int16_t, 8) l_266 = (VECTOR(int16_t, 8))(0x5A66L, (VECTOR(int16_t, 4))(0x5A66L, (VECTOR(int16_t, 2))(0x5A66L, 0x41F4L), 0x41F4L), 0x41F4L, 0x5A66L, 0x41F4L);
    VECTOR(int16_t, 16) l_288 = (VECTOR(int16_t, 16))((-10L), (VECTOR(int16_t, 4))((-10L), (VECTOR(int16_t, 2))((-10L), 0x722DL), 0x722DL), 0x722DL, (-10L), 0x722DL, (VECTOR(int16_t, 2))((-10L), 0x722DL), (VECTOR(int16_t, 2))((-10L), 0x722DL), (-10L), 0x722DL, (-10L), 0x722DL);
    VECTOR(uint64_t, 16) l_292 = (VECTOR(uint64_t, 16))(0x1D0574128965A8C6L, (VECTOR(uint64_t, 4))(0x1D0574128965A8C6L, (VECTOR(uint64_t, 2))(0x1D0574128965A8C6L, 4UL), 4UL), 4UL, 0x1D0574128965A8C6L, 4UL, (VECTOR(uint64_t, 2))(0x1D0574128965A8C6L, 4UL), (VECTOR(uint64_t, 2))(0x1D0574128965A8C6L, 4UL), 0x1D0574128965A8C6L, 4UL, 0x1D0574128965A8C6L, 4UL);
    VECTOR(uint64_t, 2) l_299 = (VECTOR(uint64_t, 2))(0UL, 1UL);
    uint8_t *l_305 = &p_578->g_129;
    uint8_t **l_304 = &l_305;
    VECTOR(uint64_t, 4) l_310 = (VECTOR(uint64_t, 4))(0x0A6EDD08027E6B40L, (VECTOR(uint64_t, 2))(0x0A6EDD08027E6B40L, 0x501A06F55D3FCE58L), 0x501A06F55D3FCE58L);
    VECTOR(int8_t, 4) l_353 = (VECTOR(int8_t, 4))(0x24L, (VECTOR(int8_t, 2))(0x24L, (-1L)), (-1L));
    VECTOR(uint16_t, 8) l_363 = (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 2UL), 2UL), 2UL, 0UL, 2UL);
    uint64_t **l_428 = (void*)0;
    VECTOR(uint16_t, 16) l_437 = (VECTOR(uint16_t, 16))(9UL, (VECTOR(uint16_t, 4))(9UL, (VECTOR(uint16_t, 2))(9UL, 2UL), 2UL), 2UL, 9UL, 2UL, (VECTOR(uint16_t, 2))(9UL, 2UL), (VECTOR(uint16_t, 2))(9UL, 2UL), 9UL, 2UL, 9UL, 2UL);
    VECTOR(uint16_t, 2) l_438 = (VECTOR(uint16_t, 2))(1UL, 0x47ECL);
    VECTOR(uint16_t, 8) l_439 = (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 65535UL), 65535UL), 65535UL, 0UL, 65535UL);
    int i;
    l_255++;
lbl_261:
    l_258 |= p_578->g_226.s2;
    for (l_249 = (-23); (l_249 >= 14); l_249 = safe_add_func_uint32_t_u_u(l_249, 4))
    { /* block id: 78 */
        VECTOR(int16_t, 4) l_262 = (VECTOR(int16_t, 4))(8L, (VECTOR(int16_t, 2))(8L, 4L), 4L);
        VECTOR(int16_t, 4) l_265 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x590AL), 0x590AL);
        VECTOR(int16_t, 2) l_267 = (VECTOR(int16_t, 2))(0x310CL, 0x38D0L);
        VECTOR(int16_t, 2) l_269 = (VECTOR(int16_t, 2))(0x1BECL, 0L);
        VECTOR(int16_t, 16) l_270 = (VECTOR(int16_t, 16))(0x6977L, (VECTOR(int16_t, 4))(0x6977L, (VECTOR(int16_t, 2))(0x6977L, 0x491DL), 0x491DL), 0x491DL, 0x6977L, 0x491DL, (VECTOR(int16_t, 2))(0x6977L, 0x491DL), (VECTOR(int16_t, 2))(0x6977L, 0x491DL), 0x6977L, 0x491DL, 0x6977L, 0x491DL);
        int32_t *l_277[1][1][8] = {{{&l_249,&l_249,&l_249,&l_249,&l_249,&l_249,&l_249,&l_249}}};
        uint32_t *l_278 = &p_578->g_235[2][2][4];
        uint16_t l_279 = 65531UL;
        uint8_t *l_281[4][9] = {{&p_578->g_129,&l_255,&l_255,&l_255,&p_578->g_129,&p_578->g_129,&l_255,&l_255,&l_255},{&p_578->g_129,&l_255,&l_255,&l_255,&p_578->g_129,&p_578->g_129,&l_255,&l_255,&l_255},{&p_578->g_129,&l_255,&l_255,&l_255,&p_578->g_129,&p_578->g_129,&l_255,&l_255,&l_255},{&p_578->g_129,&l_255,&l_255,&l_255,&p_578->g_129,&p_578->g_129,&l_255,&l_255,&l_255}};
        uint8_t **l_280 = &l_281[0][7];
        int i, j, k;
        if (l_255)
            goto lbl_261;
        p_578->g_39.sa ^= (&l_249 == ((0x134DL >= ((*p_578->g_101) , ((VECTOR(int16_t, 8))(mul_hi(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(l_262.wzzwyzyy)).s37)), 0x4809L, (-2L))).zwwxyyzw)), ((VECTOR(int16_t, 2))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 2),((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 16))(mad_sat(((VECTOR(int16_t, 4))(rhadd(((VECTOR(int16_t, 8))(p_578->g_263.s531b9809)).odd, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(safe_clamp_func(VECTOR(int16_t, 16),VECTOR(int16_t, 16),((VECTOR(int16_t, 2))(l_264.s22)).xyyyyyxyyyxyyxyx, ((VECTOR(int16_t, 8))(min(((VECTOR(int16_t, 2))(clz(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(rhadd(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(add_sat(((VECTOR(int16_t, 16))(l_265.wyzxxxwwywxxxwzy)).even, ((VECTOR(int16_t, 4))(0x55B8L, (*p_578->g_101), 1L, 1L)).yxxwxyzw))).hi)).wywyxxzwwxxyxxxx, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(l_266.s74031510)).s03)))), 1L, (-4L))), 0x7009L, (-4L), ((VECTOR(int16_t, 4))(l_267.xyxx)), ((VECTOR(int16_t, 4))(p_578->g_268.yyxx)), 0x3994L, (-1L)))))).sc1e9)).lo))))).yxyxxxxy, (int16_t)((*p_49) = l_267.y)))).s3735330537564121, ((VECTOR(int16_t, 2))((-3L), 0x370AL)).yxyyxyxxxyxxxxxx))))).s2cca))).xxzyxyxzzywwwxzz, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_269.xx)), 0x1D33L, (-1L))).xwxyxwzxwwxyxwzw, ((VECTOR(int16_t, 4))(hadd(((VECTOR(int16_t, 4))(safe_clamp_func(VECTOR(int16_t, 4),int16_t,((VECTOR(int16_t, 16))(l_270.s6e6c1d817be32ecc)).sccc9, (int16_t)(safe_rshift_func_int8_t_s_s((safe_sub_func_int32_t_s_s(((p_45 | 0x2CL) & (!(safe_mul_func_int8_t_s_s((((&l_248 != l_277[0][0][0]) , (void*)0) != l_278), l_279)))), p_45)), p_47)), (int16_t)(*p_578->g_101)))), ((VECTOR(int16_t, 4))(0x1A4AL))))).zwxyzzwxzywxzxyw))).sf5, ((VECTOR(int16_t, 2))((-6L)))))), ((VECTOR(int16_t, 2))(0x29F5L)), ((VECTOR(int16_t, 2))((-1L)))))).yxyyyyxx))).s4)) , &l_249));
        p_578->g_39.se |= ((((*l_280) = &p_578->g_129) != (void*)0) & p_578->g_129);
    }
    for (p_578->g_195 = 0; (p_578->g_195 < 13); ++p_578->g_195)
    { /* block id: 87 */
        VECTOR(uint64_t, 2) l_291 = (VECTOR(uint64_t, 2))(0x0E96BCE63F293863L, 0x1E5F623F246A19ADL);
        uint32_t *l_300 = (void*)0;
        uint8_t **l_302 = (void*)0;
        uint8_t ***l_303 = &l_302;
        VECTOR(uint64_t, 2) l_312 = (VECTOR(uint64_t, 2))(0x89E2EAA588A0266CL, 18446744073709551607UL);
        uint64_t *l_313 = (void*)0;
        uint64_t *l_314 = (void*)0;
        VECTOR(uint64_t, 2) l_315 = (VECTOR(uint64_t, 2))(0x6838746E424C73AFL, 1UL);
        int32_t l_322 = 0x4E0F95CBL;
        int32_t l_323 = 2L;
        uint64_t *l_324 = &p_578->g_325;
        int32_t l_326 = 0L;
        int16_t l_327 = 0x7E46L;
        VECTOR(int32_t, 4) l_328 = (VECTOR(int32_t, 4))(0x220B0321L, (VECTOR(int32_t, 2))(0x220B0321L, 1L), 1L);
        uint8_t l_329 = 0xA5L;
        uint32_t *l_341 = (void*)0;
        uint32_t *l_342 = &p_578->g_235[2][1][4];
        uint16_t l_350 = 65535UL;
        int32_t l_356[9][9] = {{0x15C8DBECL,(-3L),(-1L),1L,(-1L),(-3L),0x15C8DBECL,0x01C507E0L,1L},{0x15C8DBECL,(-3L),(-1L),1L,(-1L),(-3L),0x15C8DBECL,0x01C507E0L,1L},{0x15C8DBECL,(-3L),(-1L),1L,(-1L),(-3L),0x15C8DBECL,0x01C507E0L,1L},{0x15C8DBECL,(-3L),(-1L),1L,(-1L),(-3L),0x15C8DBECL,0x01C507E0L,1L},{0x15C8DBECL,(-3L),(-1L),1L,(-1L),(-3L),0x15C8DBECL,0x01C507E0L,1L},{0x15C8DBECL,(-3L),(-1L),1L,(-1L),(-3L),0x15C8DBECL,0x01C507E0L,1L},{0x15C8DBECL,(-3L),(-1L),1L,(-1L),(-3L),0x15C8DBECL,0x01C507E0L,1L},{0x15C8DBECL,(-3L),(-1L),1L,(-1L),(-3L),0x15C8DBECL,0x01C507E0L,1L},{0x15C8DBECL,(-3L),(-1L),1L,(-1L),(-3L),0x15C8DBECL,0x01C507E0L,1L}};
        int64_t **l_405 = &p_578->g_404;
        int64_t **l_407[6];
        int32_t l_427 = 0x09BAD08FL;
        uint64_t l_432 = 0x903C9904E6FF37CDL;
        int32_t *l_454 = &l_326;
        int i, j;
        for (i = 0; i < 6; i++)
            l_407[i] = &p_578->g_404;
        l_326 = (safe_div_func_uint64_t_u_u(((*l_324) |= (safe_rshift_func_uint8_t_u_s((((VECTOR(int16_t, 2))(l_288.sbc)).lo > (safe_mul_func_uint16_t_u_u(((l_323 |= ((VECTOR(int8_t, 4))(rhadd(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(0L, (-1L))).xyyx)), ((p_578->g_193.z ^ (((VECTOR(uint64_t, 2))(mul_hi(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(0x4A75D80C2B337075L, 8UL, 0x8CD015136AB8AE6DL, 0UL)).lo)), 1UL, 1UL)).hi, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(mad_hi(((VECTOR(uint64_t, 2))(l_291.xy)).xyyx, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(l_292.s9e03)).xxxzzzyw)).hi)), ((VECTOR(uint64_t, 2))(3UL, 0x3C3B2AD67E0687BFL)).xxxx))), (safe_div_func_int32_t_s_s(((p_578->g_233 = p_578->g_235[1][1][4]) <= ((safe_div_func_int16_t_s_s((((p_45 & (safe_lshift_func_int16_t_s_s((((*l_303) = ((p_578->g_301[0][2] = ((((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(l_299.yx)))).odd == p_47) != 0x3ED212E763AC1735L)) , l_302)) != l_304), ((*p_578->g_101) |= (safe_add_func_uint16_t_u_u((safe_div_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(sub_sat(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(l_310.yzxwzwzw)).s7, ((VECTOR(uint64_t, 4))(p_578->g_311.xxxx)), (p_578->g_68.z = ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(l_312.yxxyxyyy)).s2476471545616301)))).s8), 9UL, 18446744073709551614UL)))).hi)).zzwxwxxz)))).lo, ((VECTOR(uint64_t, 4))(abs(((VECTOR(uint64_t, 8))(l_315.yxyxyxxx)).lo)))))).yzzwxxyyzwzzyzxx)).sf, FAKE_DIVERGE(p_578->group_1_offset, get_group_id(1), 10))), GROUP_DIVERGE(2, 1))))))) < 0x3AFA5B76L) > ((safe_mod_func_int16_t_s_s((((safe_mul_func_uint16_t_u_u((l_322 = (safe_mod_func_int16_t_s_s((p_47 || p_578->g_100.y), l_291.x))), 0UL)) , GROUP_DIVERGE(0, 1)) > 0x260E6FBECAAD83EBL), 65531UL)) == FAKE_DIVERGE(p_578->local_1_offset, get_local_id(1), 10))), l_291.y)) || l_322)), p_47)), 0x138A263075C3B7B6L, 4UL, 0UL, 0x56A45CBF47B4B573L, ((VECTOR(uint64_t, 2))(0xB5A9D6C2FFC3C03EL)), ((VECTOR(uint64_t, 2))(0x42F6D218427D181DL)), 2UL, 0x2724E0BCB37DF4D3L, 18446744073709551606UL)).sb2)), 1UL, 8UL)).lo))).hi ^ 0UL)) && p_47), 0x2CL, p_45, ((VECTOR(int8_t, 4))(0x38L)), 0x35L, ((VECTOR(int8_t, 2))(6L)), (-1L), 0x75L)).odd)).even, ((VECTOR(int8_t, 4))((-10L)))))).x) || p_45), l_291.y))), 6))), GROUP_DIVERGE(1, 1)));
        --l_329;
        if (((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))((p_578->g_325 != p_578->g_244), ((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x17AEE23EL, 0L)).yyxy)).zxwxzwwz)).even, ((VECTOR(int32_t, 2))(p_578->g_332.xy)).yyxy))).zwxzwzyz)).s16, ((VECTOR(int32_t, 16))(p_47, p_578->g_311.y, (-1L), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((((void*)0 == &l_327) | p_578->g_301[0][2]) > (safe_div_func_uint64_t_u_u((safe_mod_func_int16_t_s_s((((safe_mul_func_int8_t_s_s((safe_div_func_uint32_t_u_u(((*l_342) = ((*p_49) == (0L == p_578->g_238))), p_578->g_311.x)), p_578->g_332.x)) < p_47) ^ p_45), 0x303DL)), p_47))), p_47, p_45, ((VECTOR(int32_t, 4))(0x1BD51D61L)), p_45, l_329, ((VECTOR(int32_t, 4))(1L)), ((VECTOR(int32_t, 2))(0x76B1128EL)), 0x4FC83AA9L)).lo)))).even, ((VECTOR(int32_t, 4))(0x49A3642BL)), ((VECTOR(int32_t, 4))(7L))))), ((VECTOR(int32_t, 2))(0L)), 0x1E78DDC9L, (-9L))).s55)))), p_578->g_39.sa, ((VECTOR(int32_t, 4))(7L)), (-1L), ((VECTOR(int32_t, 2))((-7L))), p_47, 0x784AD64EL, 0L)).sc6))), l_329, 0x4EE08E45L, 0x7BB20BA6L, 0x4C60A607L, (-3L))), ((VECTOR(int32_t, 4))(0L)), ((VECTOR(int32_t, 2))(0L)), 0x4A30A70AL, (-2L))).s38)).yyxyyxyxxxxxyyyy)).sa)
        { /* block id: 99 */
            for (l_254 = (-22); (l_254 >= 14); l_254++)
            { /* block id: 102 */
                return &p_578->g_4;
            }
        }
        else
        { /* block id: 105 */
            int16_t l_371 = (-5L);
            int32_t l_381 = 0x6022B319L;
            int32_t l_383[4];
            int64_t *l_397[9][9][3] = {{{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196}},{{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196}},{{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196}},{{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196}},{{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196}},{{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196}},{{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196}},{{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196}},{{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196},{&p_578->g_196,&p_578->g_196,&p_578->g_196}}};
            VECTOR(uint16_t, 2) l_412 = (VECTOR(uint16_t, 2))(0xEEE3L, 0x6194L);
            VECTOR(uint32_t, 4) l_429 = (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 4294967293UL), 4294967293UL);
            int32_t **l_463 = &l_250;
            int i, j, k;
            for (i = 0; i < 4; i++)
                l_383[i] = 0x7ACD5CFEL;
            l_350 ^= (l_327 , (safe_div_func_int8_t_s_s((safe_mod_func_uint32_t_u_u(l_315.x, 0xE1541FD5L)), ((VECTOR(int8_t, 8))(p_578->g_349.s670661c4)).s0)));
            for (l_255 = 0; (l_255 > 49); l_255 = safe_add_func_uint16_t_u_u(l_255, 5))
            { /* block id: 109 */
                int8_t *l_354 = &p_578->g_233;
                int8_t *l_355 = (void*)0;
                int32_t l_392 = 6L;
                if ((0x74C8L > (((l_356[2][1] = ((*l_354) |= ((VECTOR(int8_t, 2))(l_353.xy)).hi)) <= 0x55L) ^ (safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 4))((safe_sub_func_int64_t_s_s(((&p_578->g_129 != (*l_304)) < ((*l_342) &= (safe_sub_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(l_363.s10)).lo, ((*p_578->g_101) ^= (safe_rshift_func_int8_t_s_u((((safe_add_func_uint8_t_u_u(((p_578->g_39.sa , ((p_45 || ((safe_lshift_func_int16_t_s_s(0x6085L, 6)) >= p_578->g_370)) , (void*)0)) != (void*)0), l_371)) ^ 0x6FL) < p_45), 0))))))), 18446744073709551607UL)), ((VECTOR(uint32_t, 2))(0x0165212AL)), 0x2FDB45E4L)).x, p_47)))))
                { /* block id: 114 */
                    uint64_t *l_377 = &p_578->g_325;
                    int32_t l_382 = 0x35B8F08AL;
                    VECTOR(int64_t, 4) l_401 = (VECTOR(int64_t, 4))(7L, (VECTOR(int64_t, 2))(7L, (-1L)), (-1L));
                    int i;
                    for (p_578->g_238 = 9; (p_578->g_238 != 57); p_578->g_238 = safe_add_func_uint8_t_u_u(p_578->g_238, 1))
                    { /* block id: 117 */
                        uint64_t **l_374 = (void*)0;
                        uint64_t **l_375 = (void*)0;
                        uint64_t **l_376[6];
                        int i;
                        for (i = 0; i < 6; i++)
                            l_376[i] = (void*)0;
                        l_323 |= ((l_377 = &p_578->g_325) != (p_578->g_378 = &p_578->g_325));
                    }
                    for (p_578->g_102 = (-26); (p_578->g_102 == 18); p_578->g_102++)
                    { /* block id: 124 */
                        uint8_t l_384 = 254UL;
                        --l_384;
                    }
                    if (l_328.z)
                    { /* block id: 127 */
                        int32_t **l_387 = &l_251;
                        (*l_387) = &l_382;
                    }
                    else
                    { /* block id: 129 */
                        int32_t l_402 = (-3L);
                        int64_t ***l_406[5];
                        int i;
                        for (i = 0; i < 5; i++)
                            l_406[i] = (void*)0;
                        l_382 = (((((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(((safe_mod_func_uint8_t_u_u(p_578->g_233, ((safe_lshift_func_int8_t_s_u(l_392, 2)) | (safe_rshift_func_uint16_t_u_s(l_322, 1))))) > 255UL), (-1L), (safe_sub_func_uint8_t_u_u((((void*)0 == l_397[8][6][2]) <= ((VECTOR(int32_t, 4))((-1L), (-5L), 0x08F2214FL, 0x42B9C000L)).z), l_312.y)), p_47, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(min(((VECTOR(int64_t, 16))(p_578->g_398.s0010634206200563)).lo, (int64_t)(+(p_578->g_398.s6 |= (((safe_add_func_int16_t_s_s(0x517BL, 0UL)) ^ 0x6927B651L) < l_401.w)))))).even)))).hi)).x > l_402) >= l_371) , p_578->g_210.sf);
                        l_407[0] = (l_405 = p_578->g_403);
                    }
                    return &p_578->g_4;
                }
                else
                { /* block id: 136 */
                    if (p_578->g_196)
                        break;
                }
            }
            for (l_350 = 3; (l_350 != 50); l_350 = safe_add_func_uint16_t_u_u(l_350, 1))
            { /* block id: 142 */
                VECTOR(uint16_t, 2) l_420 = (VECTOR(uint16_t, 2))(65535UL, 0x74FCL);
                int8_t *l_421 = (void*)0;
                int32_t l_422 = 0x33F38517L;
                int32_t l_430 = (-1L);
                int32_t **l_431 = &l_252[1];
                int i;
                p_578->g_39.s9 ^= (safe_mod_func_int64_t_s_s((l_430 = (((VECTOR(uint16_t, 16))(l_412.yyxyxyxxyxxxyyxy)).s2 || (safe_div_func_uint8_t_u_u((((((safe_unary_minus_func_int32_t_s(((((safe_add_func_int8_t_s_s((l_422 = (l_371 > (safe_lshift_func_uint16_t_u_s(((VECTOR(uint16_t, 16))(l_420.yxyxxxyyxyyxyxxx)).s4, 4)))), 255UL)) & ((+(0x3B4AL || (*p_578->g_101))) , 0x5C9D05ADL)) > (safe_mod_func_int8_t_s_s(((safe_add_func_uint16_t_u_u((l_427 != (&p_578->g_378 == l_428)), (((VECTOR(uint32_t, 4))(l_429.ywzy)).w , p_578->g_398.s7))) > p_47), 0x2DL))) >= (*p_49)))) , p_578->g_235[5][0][4]) , p_578->g_4) , (*p_578->g_101)) | 0x6308L), p_47)))), p_578->g_129));
                (*l_431) = &l_383[3];
                --l_432;
            }
            l_381 &= (safe_lshift_func_uint16_t_u_s((p_578->g_100.x ^= ((((VECTOR(uint16_t, 16))(rhadd(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(l_437.sfe1b)).ywyxzxzw)).s7313672121505207, ((VECTOR(uint16_t, 4))(clz(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(l_438.yx)), ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(l_439.s07477230)).hi)), 0xAFDBL, 65531UL)).hi))).zyxyyxzzxxyzzxxw))).s4 , (p_578->g_68.w > (safe_rshift_func_uint8_t_u_u((+(safe_mod_func_uint64_t_u_u((safe_div_func_int64_t_s_s(((safe_sub_func_int16_t_s_s(((((((l_383[3] = (-8L)) < (safe_sub_func_int32_t_s_s((((safe_mod_func_uint32_t_u_u((((l_454 = &l_248) != (l_371 , &l_248)) && (((p_45 ^ (safe_lshift_func_int8_t_s_s((safe_rshift_func_int16_t_s_u(l_412.x, 6)), 1))) , (safe_mod_func_uint64_t_u_u(((safe_mul_func_uint8_t_u_u(((((void*)0 == l_463) | 0xEE27B448L) , p_578->g_235[5][2][4]), p_47)) != FAKE_DIVERGE(p_578->global_1_offset, get_global_id(1), 10)), p_578->g_210.s2))) >= (*l_454))), p_45)) & 0UL) , p_578->g_226.s6), p_45))) < p_45) <= (*p_578->g_378)) == 0x9B03473FL) == p_45), (*p_49))) , (-8L)), 9L)), p_47))), 7)))) > FAKE_DIVERGE(p_578->local_0_offset, get_local_id(0), 10))), (*p_49)));
        }
    }
    return &p_578->g_4;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int16_t * func_51(int32_t * p_52, int32_t  p_53, uint32_t  p_54, int64_t  p_55, struct S1 * p_578)
{ /* block id: 70 */
    int32_t l_245 = 0x36ABCF7DL;
    int16_t *l_246[7] = {&p_578->g_102,&p_578->g_102,&p_578->g_102,&p_578->g_102,&p_578->g_102,&p_578->g_102,&p_578->g_102};
    int i;
    l_245 = (*p_52);
    return l_246[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_578->g_39 p_578->g_193 p_578->g_129 p_578->g_195 p_578->g_101 p_578->g_102 p_578->g_196 p_578->g_100 p_578->g_4 p_578->g_210 p_578->g_213 p_578->g_225 p_578->g_226 p_578->g_235
 * writes: p_578->g_195 p_578->g_102 p_578->g_196 p_578->g_39 p_578->g_233 p_578->g_235
 */
uint16_t  func_92(uint8_t * p_93, struct S1 * p_578)
{ /* block id: 46 */
    int32_t l_180 = 0x2F786672L;
    uint64_t *l_194 = &p_578->g_195;
    int32_t *l_197 = (void*)0;
    int32_t *l_198[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    VECTOR(int32_t, 8) l_199 = (VECTOR(int32_t, 8))(0x3A4CF426L, (VECTOR(int32_t, 4))(0x3A4CF426L, (VECTOR(int32_t, 2))(0x3A4CF426L, 5L), 5L), 5L, 0x3A4CF426L, 5L);
    VECTOR(int16_t, 4) l_227 = (VECTOR(int16_t, 4))(6L, (VECTOR(int16_t, 2))(6L, 3L), 3L);
    int i;
lbl_205:
    l_199.s7 = (((VECTOR(uint64_t, 16))((safe_mod_func_uint64_t_u_u(l_180, (l_180 && (safe_div_func_uint64_t_u_u(((safe_mul_func_uint8_t_u_u((p_578->g_196 ^= (l_180 , (((0xA3AFCE4FDF005D3DL != ((safe_div_func_uint32_t_u_u(4294967286UL, (((((p_578->g_39.sf & ((*p_578->g_101) |= (((safe_mod_func_int8_t_s_s((safe_mod_func_int8_t_s_s((((safe_sub_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(clz(((VECTOR(uint64_t, 8))(p_578->g_193.yywzzzwz)).s14))), (((*l_194) |= p_578->g_129) , 0xCE4E9EF1CF844ED8L), (p_578->g_193.y , p_578->g_129), ((VECTOR(uint64_t, 2))(0x0B913E9212300684L)), ((VECTOR(uint64_t, 4))(0UL)), 1UL, 0x3103EE402FC24BD3L, ((VECTOR(uint64_t, 4))(0x9298037F3D1E7D8BL)))).s5, 0L)) != 0xB50FFF6AL) | l_180), p_578->g_39.s2)), p_578->g_193.x)) ^ l_180) == l_180))) != l_180) >= 0x5E53L) || (-7L)) , l_180))) & l_180)) & l_180) <= l_180))), (*p_93))) >= p_578->g_100.x), p_578->g_39.s5))))), p_578->g_193.x, p_578->g_39.s4, ((VECTOR(uint64_t, 8))(18446744073709551607UL)), l_180, 0UL, ((VECTOR(uint64_t, 2))(18446744073709551615UL)), 5UL)).s0 > l_180);
    p_578->g_39.sd ^= ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(1L, 0x4AEADB58L)), 3L, 0x73D8B434L)).even)).even;
    p_578->g_39.s5 ^= (safe_mod_func_int64_t_s_s(0x3FD7632D29E3F56EL, p_578->g_4));
    for (p_578->g_195 = 0; (p_578->g_195 > 50); p_578->g_195 = safe_add_func_uint64_t_u_u(p_578->g_195, 7))
    { /* block id: 55 */
        int64_t l_204 = 0x205C3C847D68F8ACL;
        uint16_t l_220 = 0x1524L;
        VECTOR(uint16_t, 16) l_228 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x9AC9L), 0x9AC9L), 0x9AC9L, 1UL, 0x9AC9L, (VECTOR(uint16_t, 2))(1UL, 0x9AC9L), (VECTOR(uint16_t, 2))(1UL, 0x9AC9L), 1UL, 0x9AC9L, 1UL, 0x9AC9L);
        int64_t *l_231 = &p_578->g_196;
        int8_t *l_232 = &p_578->g_233;
        uint32_t *l_234 = &p_578->g_235[5][2][4];
        int32_t l_236[10][7][3] = {{{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L}},{{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L}},{{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L}},{{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L}},{{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L}},{{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L}},{{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L}},{{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L}},{{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L}},{{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L},{0x79499CC3L,0x39E5BC21L,0x1E1673E3L}}};
        int i, j, k;
        p_578->g_39.s1 = p_578->g_100.y;
        if (l_204)
            break;
        if (l_180)
            goto lbl_205;
        l_236[4][4][1] ^= (safe_rshift_func_uint8_t_u_s((safe_mul_func_uint16_t_u_u(3UL, ((((((*p_578->g_101) = ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(0x244BL, 0x0635L, 0x2750L, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(p_578->g_210.sc4d3)).xyzwyxzx)).s5644744032160763, (int16_t)(safe_mod_func_int32_t_s_s((((VECTOR(uint32_t, 8))(4294967287UL, ((VECTOR(uint32_t, 2))(4294967295UL, 0x1EA78D22L)), ((*l_234) |= ((p_578->g_213 == (void*)0) == (safe_lshift_func_int16_t_s_u((l_204 == (((*l_232) = (0x630BL <= (safe_lshift_func_uint8_t_u_u(((((((*l_231) = (safe_sub_func_uint32_t_u_u((((((l_220 == ((safe_mul_func_uint8_t_u_u(l_220, (safe_add_func_uint16_t_u_u((((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 2))(p_578->g_225.ww)).xxyyyyyy, ((VECTOR(int16_t, 8))(sub_sat(((VECTOR(int16_t, 16))(p_578->g_226.s0307671000770041)).even, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(l_227.xw)).yxxxyxyxyyxyyyyx)).hi))), ((VECTOR(int16_t, 16))(upsample(((VECTOR(int8_t, 16))((((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(l_228.s6b20fc87)).s6674620620741555)).s7 < ((((((safe_lshift_func_int8_t_s_u((p_578->g_210.s6 , (l_220 <= 0xBAF7A54F258C9E95L)), p_578->g_210.s8)) > p_578->g_129) , FAKE_DIVERGE(p_578->global_1_offset, get_global_id(1), 10)) >= (*p_578->g_101)) != p_578->g_102) < l_228.s4)) && (*p_578->g_101)) | p_578->g_193.x), ((VECTOR(int8_t, 8))((-5L))), p_578->g_193.y, 0x25L, 3L, ((VECTOR(int8_t, 2))((-9L))), 0x3FL, 0L)), ((VECTOR(uint8_t, 16))(0x6FL))))).even))).s4 , l_228.s6), 0x1C8EL)))) >= l_228.sc)) || 0UL) > 0x7AL) , 1L) == p_578->g_225.w), l_220))) || l_228.s8) && FAKE_DIVERGE(p_578->global_0_offset, get_global_id(0), 10)) < (*p_578->g_101)) & (*p_578->g_101)), 3)))) || l_228.sd)), 3)))), ((VECTOR(uint32_t, 4))(0x099E89F5L)))).s5 | 0x39644757L), l_228.s2))))).s29)), ((VECTOR(int16_t, 8))(0x7282L)), ((VECTOR(int16_t, 2))((-1L))), 7L)).sfd)).hi) , GROUP_DIVERGE(2, 1)) > l_228.sd) <= p_578->g_100.w) != 251UL))), l_228.s8));
    }
    return p_578->g_193.w;
}


/* ------------------------------------------ */
/* 
 * reads : p_578->g_102 p_578->g_108 p_578->g_100 p_578->g_129 p_578->g_39 p_578->g_4 p_578->g_101
 * writes: p_578->g_102 p_578->g_108
 */
uint8_t * func_94(int32_t * p_95, int16_t * p_96, int16_t * p_97, uint16_t  p_98, int16_t * p_99, struct S1 * p_578)
{ /* block id: 15 */
    volatile struct S0 **l_110 = (void*)0;
    volatile struct S0 **l_111 = &p_578->g_108;
    int32_t l_114 = 0x081ECF37L;
    int32_t l_117 = 0L;
    int32_t l_118[5] = {(-1L),(-1L),(-1L),(-1L),(-1L)};
    uint32_t l_119 = 0x7493B576L;
    int32_t *l_122 = &l_118[0];
    uint16_t *l_140 = (void*)0;
    uint16_t *l_141[7][9][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
    VECTOR(uint16_t, 4) l_155 = (VECTOR(uint16_t, 4))(0xD9C2L, (VECTOR(uint16_t, 2))(0xD9C2L, 65529UL), 65529UL);
    VECTOR(int16_t, 8) l_156 = (VECTOR(int16_t, 8))(0x3783L, (VECTOR(int16_t, 4))(0x3783L, (VECTOR(int16_t, 2))(0x3783L, 0x6501L), 0x6501L), 0x6501L, 0x3783L, 0x6501L);
    uint8_t *l_167 = &p_578->g_129;
    uint32_t l_174[5] = {0UL,0UL,0UL,0UL,0UL};
    int i, j, k;
    for (p_578->g_102 = (-11); (p_578->g_102 < 21); ++p_578->g_102)
    { /* block id: 18 */
        uint32_t l_105 = 0xAF0F7716L;
        l_105--;
    }
    (*l_111) = p_578->g_108;
    for (p_98 = 3; (p_98 >= 56); p_98 = safe_add_func_int16_t_s_s(p_98, 8))
    { /* block id: 24 */
        int32_t *l_115 = (void*)0;
        int32_t *l_116[7][3][1] = {{{&p_578->g_4},{&p_578->g_4},{&p_578->g_4}},{{&p_578->g_4},{&p_578->g_4},{&p_578->g_4}},{{&p_578->g_4},{&p_578->g_4},{&p_578->g_4}},{{&p_578->g_4},{&p_578->g_4},{&p_578->g_4}},{{&p_578->g_4},{&p_578->g_4},{&p_578->g_4}},{{&p_578->g_4},{&p_578->g_4},{&p_578->g_4}},{{&p_578->g_4},{&p_578->g_4},{&p_578->g_4}}};
        volatile uint8_t **l_124[8][5] = {{&p_578->g_61,(void*)0,(void*)0,&p_578->g_61,&p_578->g_61},{&p_578->g_61,(void*)0,(void*)0,&p_578->g_61,&p_578->g_61},{&p_578->g_61,(void*)0,(void*)0,&p_578->g_61,&p_578->g_61},{&p_578->g_61,(void*)0,(void*)0,&p_578->g_61,&p_578->g_61},{&p_578->g_61,(void*)0,(void*)0,&p_578->g_61,&p_578->g_61},{&p_578->g_61,(void*)0,(void*)0,&p_578->g_61,&p_578->g_61},{&p_578->g_61,(void*)0,(void*)0,&p_578->g_61,&p_578->g_61},{&p_578->g_61,(void*)0,(void*)0,&p_578->g_61,&p_578->g_61}};
        volatile uint8_t ***l_123 = &l_124[2][3];
        uint8_t *l_128 = &p_578->g_129;
        uint8_t **l_127 = &l_128;
        uint8_t ***l_130 = &l_127;
        int i, j, k;
        ++l_119;
        l_122 = &l_118[0];
        (*l_123) = &p_578->g_61;
        if (((~(0x63A1L || ((*l_122) == (((*l_130) = l_127) != &p_578->g_61)))) == (p_578->g_102 > (safe_rshift_func_uint16_t_u_u(65535UL, 2)))))
        { /* block id: 29 */
            return &p_578->g_129;
        }
        else
        { /* block id: 31 */
            int32_t **l_133 = &l_116[1][2][0];
            (*l_133) = &p_578->g_4;
        }
    }
    if ((~(((safe_mul_func_uint8_t_u_u(((safe_lshift_func_uint8_t_u_u(p_98, 6)) || (safe_add_func_uint16_t_u_u(((*l_122) ^= (p_98 = FAKE_DIVERGE(p_578->local_1_offset, get_local_id(1), 10))), (p_578->g_100.y >= ((safe_mul_func_uint8_t_u_u(((((p_578->g_100.w | (4L && FAKE_DIVERGE(p_578->group_1_offset, get_group_id(1), 10))) | (l_110 != ((0x3958L & (l_119 , p_578->g_100.z)) , l_111))) & p_578->g_129) != 0x763EE6F0E40F4936L), p_578->g_39.s4)) >= p_578->g_100.x))))), 1L)) , FAKE_DIVERGE(p_578->global_1_offset, get_global_id(1), 10)) , p_578->g_100.z)))
    { /* block id: 37 */
        int16_t l_148 = 0x0CC7L;
        VECTOR(uint16_t, 2) l_153 = (VECTOR(uint16_t, 2))(2UL, 0xF480L);
        VECTOR(uint16_t, 2) l_154 = (VECTOR(uint16_t, 2))(0x280BL, 0x4B37L);
        int8_t l_161 = 0x47L;
        uint64_t *l_162 = (void*)0;
        uint64_t *l_163 = (void*)0;
        int32_t l_164 = 0L;
        uint32_t *l_165 = &l_119;
        int32_t *l_166 = &l_117;
        int i;
        (*l_166) &= ((safe_add_func_int64_t_s_s((safe_add_func_uint32_t_u_u(((0x438B1D14L >= (l_148 , ((*l_165) = ((((*p_95) , (((l_164 = ((((safe_lshift_func_uint16_t_u_s(((!0x4F27L) & (~(safe_add_func_uint16_t_u_u((p_578->g_39.s8 , ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(mul_hi(((VECTOR(uint16_t, 16))(65529UL, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(l_153.yy)).xyxyxyyx)), 0UL, 0x17C6L, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(l_154.xyxyxxxx)).s71)), 0x3AA0L, 0UL, 0x0E6FL)).s0f, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_155.yy)), 0xE81AL, 1UL)).odd))).yyyxxyxx)))))))).s6), (((((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0L, 1L)).yyxx)).odd, ((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 2))(0x0EEAL, 0x20FBL)).xxxyyyyy, ((VECTOR(int16_t, 8))(clz(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(l_156.s2706111756401776)).s24)), 0x1697L, (-3L))).zwzzxxww)))))).s66))), ((VECTOR(int16_t, 8))((p_98 & (safe_mul_func_int8_t_s_s((*l_122), (safe_sub_func_uint16_t_u_u((p_98 & 0x6BDB7657L), (*p_99)))))), ((VECTOR(int16_t, 2))((-1L))), ((VECTOR(int16_t, 2))(0x2F6FL)), 0x1404L, 0x16D3L, (-1L))).s70))).yyxy, ((VECTOR(int16_t, 4))(1L))))).y > l_161) | p_578->g_4) >= FAKE_DIVERGE(p_578->global_1_offset, get_global_id(1), 10)))))), 4)) != 1L) <= (*p_578->g_101)) >= p_578->g_100.y)) != p_578->g_102) >= l_153.y)) , l_154.x) , (*l_122))))) != p_578->g_102), (*p_95))), 0x66246280EF9A41DAL)) >= 0x7CA1D526L);
        return l_167;
    }
    else
    { /* block id: 42 */
        int32_t *l_168 = &l_117;
        int32_t *l_169 = (void*)0;
        int32_t *l_170 = &l_118[0];
        int32_t *l_171 = &l_118[0];
        int32_t *l_172[7] = {&l_118[0],&l_118[2],&l_118[0],&l_118[0],&l_118[2],&l_118[0],&l_118[0]};
        int8_t l_173 = 0x48L;
        uint8_t *l_177 = &p_578->g_129;
        int i;
        --l_174[0];
        return l_177;
    }
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_579;
    struct S1* p_578 = &c_579;
    struct S1 c_580 = {
        {{{0x124F84B8L},{0x124F84B8L}},{{0x124F84B8L},{0x124F84B8L}},{{0x124F84B8L},{0x124F84B8L}}}, // p_578->g_2
        {{{(-9L),(-9L),(-9L),(-9L)},{(-9L),(-9L),(-9L),(-9L)},{(-9L),(-9L),(-9L),(-9L)},{(-9L),(-9L),(-9L),(-9L)},{(-9L),(-9L),(-9L),(-9L)},{(-9L),(-9L),(-9L),(-9L)},{(-9L),(-9L),(-9L),(-9L)}}}, // p_578->g_3
        8L, // p_578->g_4
        5UL, // p_578->g_34
        {{0x7E54L,0x7E54L,0x7E54L,0x7E54L},{0x7E54L,0x7E54L,0x7E54L,0x7E54L},{0x7E54L,0x7E54L,0x7E54L,0x7E54L},{0x7E54L,0x7E54L,0x7E54L,0x7E54L},{0x7E54L,0x7E54L,0x7E54L,0x7E54L},{0x7E54L,0x7E54L,0x7E54L,0x7E54L},{0x7E54L,0x7E54L,0x7E54L,0x7E54L}}, // p_578->g_38
        (VECTOR(int32_t, 16))(0x2BDC9A81L, (VECTOR(int32_t, 4))(0x2BDC9A81L, (VECTOR(int32_t, 2))(0x2BDC9A81L, (-1L)), (-1L)), (-1L), 0x2BDC9A81L, (-1L), (VECTOR(int32_t, 2))(0x2BDC9A81L, (-1L)), (VECTOR(int32_t, 2))(0x2BDC9A81L, (-1L)), 0x2BDC9A81L, (-1L), 0x2BDC9A81L, (-1L)), // p_578->g_39
        (void*)0, // p_578->g_61
        (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x6695BD66052DBC40L), 0x6695BD66052DBC40L), // p_578->g_68
        (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x9E5CL), 0x9E5CL), // p_578->g_100
        (-1L), // p_578->g_102
        &p_578->g_102, // p_578->g_101
        {{0x93E2C01BB24D4651L,0x24L,0x02L,0xD396L},{0x93E2C01BB24D4651L,0x24L,0x02L,0xD396L},{0x93E2C01BB24D4651L,0x24L,0x02L,0xD396L},{0x93E2C01BB24D4651L,0x24L,0x02L,0xD396L}}, // p_578->g_109
        &p_578->g_109[2], // p_578->g_108
        1UL, // p_578->g_129
        (VECTOR(uint64_t, 4))(18446744073709551614UL, (VECTOR(uint64_t, 2))(18446744073709551614UL, 3UL), 3UL), // p_578->g_193
        0x692D81DAF6D627CFL, // p_578->g_195
        0x341503C5535721BEL, // p_578->g_196
        (VECTOR(int16_t, 16))(0x5EF9L, (VECTOR(int16_t, 4))(0x5EF9L, (VECTOR(int16_t, 2))(0x5EF9L, 0x7612L), 0x7612L), 0x7612L, 0x5EF9L, 0x7612L, (VECTOR(int16_t, 2))(0x5EF9L, 0x7612L), (VECTOR(int16_t, 2))(0x5EF9L, 0x7612L), 0x5EF9L, 0x7612L, 0x5EF9L, 0x7612L), // p_578->g_210
        (void*)0, // p_578->g_213
        (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x693FL), 0x693FL), // p_578->g_225
        (VECTOR(int16_t, 8))(0x646CL, (VECTOR(int16_t, 4))(0x646CL, (VECTOR(int16_t, 2))(0x646CL, 0L), 0L), 0L, 0x646CL, 0L), // p_578->g_226
        6L, // p_578->g_233
        {{{0xEF56FE32L,4294967295UL,0x93F4F39AL,1UL,4294967292UL},{0xEF56FE32L,4294967295UL,0x93F4F39AL,1UL,4294967292UL},{0xEF56FE32L,4294967295UL,0x93F4F39AL,1UL,4294967292UL}},{{0xEF56FE32L,4294967295UL,0x93F4F39AL,1UL,4294967292UL},{0xEF56FE32L,4294967295UL,0x93F4F39AL,1UL,4294967292UL},{0xEF56FE32L,4294967295UL,0x93F4F39AL,1UL,4294967292UL}},{{0xEF56FE32L,4294967295UL,0x93F4F39AL,1UL,4294967292UL},{0xEF56FE32L,4294967295UL,0x93F4F39AL,1UL,4294967292UL},{0xEF56FE32L,4294967295UL,0x93F4F39AL,1UL,4294967292UL}},{{0xEF56FE32L,4294967295UL,0x93F4F39AL,1UL,4294967292UL},{0xEF56FE32L,4294967295UL,0x93F4F39AL,1UL,4294967292UL},{0xEF56FE32L,4294967295UL,0x93F4F39AL,1UL,4294967292UL}},{{0xEF56FE32L,4294967295UL,0x93F4F39AL,1UL,4294967292UL},{0xEF56FE32L,4294967295UL,0x93F4F39AL,1UL,4294967292UL},{0xEF56FE32L,4294967295UL,0x93F4F39AL,1UL,4294967292UL}},{{0xEF56FE32L,4294967295UL,0x93F4F39AL,1UL,4294967292UL},{0xEF56FE32L,4294967295UL,0x93F4F39AL,1UL,4294967292UL},{0xEF56FE32L,4294967295UL,0x93F4F39AL,1UL,4294967292UL}},{{0xEF56FE32L,4294967295UL,0x93F4F39AL,1UL,4294967292UL},{0xEF56FE32L,4294967295UL,0x93F4F39AL,1UL,4294967292UL},{0xEF56FE32L,4294967295UL,0x93F4F39AL,1UL,4294967292UL}},{{0xEF56FE32L,4294967295UL,0x93F4F39AL,1UL,4294967292UL},{0xEF56FE32L,4294967295UL,0x93F4F39AL,1UL,4294967292UL},{0xEF56FE32L,4294967295UL,0x93F4F39AL,1UL,4294967292UL}},{{0xEF56FE32L,4294967295UL,0x93F4F39AL,1UL,4294967292UL},{0xEF56FE32L,4294967295UL,0x93F4F39AL,1UL,4294967292UL},{0xEF56FE32L,4294967295UL,0x93F4F39AL,1UL,4294967292UL}},{{0xEF56FE32L,4294967295UL,0x93F4F39AL,1UL,4294967292UL},{0xEF56FE32L,4294967295UL,0x93F4F39AL,1UL,4294967292UL},{0xEF56FE32L,4294967295UL,0x93F4F39AL,1UL,4294967292UL}}}, // p_578->g_235
        0x271627F5L, // p_578->g_238
        0x432B63D2C2A70F42L, // p_578->g_244
        (VECTOR(int16_t, 16))(0x2DFDL, (VECTOR(int16_t, 4))(0x2DFDL, (VECTOR(int16_t, 2))(0x2DFDL, (-1L)), (-1L)), (-1L), 0x2DFDL, (-1L), (VECTOR(int16_t, 2))(0x2DFDL, (-1L)), (VECTOR(int16_t, 2))(0x2DFDL, (-1L)), 0x2DFDL, (-1L), 0x2DFDL, (-1L)), // p_578->g_263
        (VECTOR(int16_t, 2))((-1L), 0x4052L), // p_578->g_268
        {{4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL}}, // p_578->g_301
        (VECTOR(uint64_t, 2))(7UL, 0x0298DE64FD26B8B0L), // p_578->g_311
        18446744073709551615UL, // p_578->g_325
        (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x6410E499L), 0x6410E499L), // p_578->g_332
        (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x61L), 0x61L), 0x61L, 0L, 0x61L, (VECTOR(int8_t, 2))(0L, 0x61L), (VECTOR(int8_t, 2))(0L, 0x61L), 0L, 0x61L, 0L, 0x61L), // p_578->g_349
        4294967291UL, // p_578->g_370
        &p_578->g_325, // p_578->g_378
        (VECTOR(int64_t, 8))(0x51878B27398F5DBDL, (VECTOR(int64_t, 4))(0x51878B27398F5DBDL, (VECTOR(int64_t, 2))(0x51878B27398F5DBDL, 1L), 1L), 1L, 0x51878B27398F5DBDL, 1L), // p_578->g_398
        &p_578->g_244, // p_578->g_404
        &p_578->g_404, // p_578->g_403
        (VECTOR(uint8_t, 8))(0xADL, (VECTOR(uint8_t, 4))(0xADL, (VECTOR(uint8_t, 2))(0xADL, 0x53L), 0x53L), 0x53L, 0xADL, 0x53L), // p_578->g_472
        (void*)0, // p_578->g_477
        &p_578->g_61, // p_578->g_498
        &p_578->g_61, // p_578->g_499
        {&p_578->g_499,&p_578->g_499,&p_578->g_499,&p_578->g_499,&p_578->g_499,&p_578->g_499,&p_578->g_499,&p_578->g_499,&p_578->g_499}, // p_578->g_497
        (VECTOR(uint16_t, 2))(65535UL, 1UL), // p_578->g_501
        (VECTOR(uint64_t, 4))(0x0511A0A693CB0AE5L, (VECTOR(uint64_t, 2))(0x0511A0A693CB0AE5L, 0xE8A42F31794A50CAL), 0xE8A42F31794A50CAL), // p_578->g_525
        (VECTOR(uint64_t, 2))(0x15503E6368B1ECFEL, 18446744073709551613UL), // p_578->g_527
        0L, // p_578->g_535
        (VECTOR(int64_t, 2))(0x71236F73693E556AL, (-6L)), // p_578->g_536
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x1E9C3D39L), 0x1E9C3D39L), 0x1E9C3D39L, 1L, 0x1E9C3D39L), // p_578->g_555
        (VECTOR(int32_t, 2))(0L, 0x2FC2AD06L), // p_578->g_557
        (VECTOR(int32_t, 16))(0x4B28608BL, (VECTOR(int32_t, 4))(0x4B28608BL, (VECTOR(int32_t, 2))(0x4B28608BL, (-7L)), (-7L)), (-7L), 0x4B28608BL, (-7L), (VECTOR(int32_t, 2))(0x4B28608BL, (-7L)), (VECTOR(int32_t, 2))(0x4B28608BL, (-7L)), 0x4B28608BL, (-7L), 0x4B28608BL, (-7L)), // p_578->g_558
        {{{{0x12E6557AD874D95BL,3UL,0x39L,1UL},{1UL,0x9DL,0x7EL,0UL},{9UL,1UL,0L,1UL}},{{0x12E6557AD874D95BL,3UL,0x39L,1UL},{1UL,0x9DL,0x7EL,0UL},{9UL,1UL,0L,1UL}},{{0x12E6557AD874D95BL,3UL,0x39L,1UL},{1UL,0x9DL,0x7EL,0UL},{9UL,1UL,0L,1UL}},{{0x12E6557AD874D95BL,3UL,0x39L,1UL},{1UL,0x9DL,0x7EL,0UL},{9UL,1UL,0L,1UL}},{{0x12E6557AD874D95BL,3UL,0x39L,1UL},{1UL,0x9DL,0x7EL,0UL},{9UL,1UL,0L,1UL}},{{0x12E6557AD874D95BL,3UL,0x39L,1UL},{1UL,0x9DL,0x7EL,0UL},{9UL,1UL,0L,1UL}},{{0x12E6557AD874D95BL,3UL,0x39L,1UL},{1UL,0x9DL,0x7EL,0UL},{9UL,1UL,0L,1UL}}},{{{0x12E6557AD874D95BL,3UL,0x39L,1UL},{1UL,0x9DL,0x7EL,0UL},{9UL,1UL,0L,1UL}},{{0x12E6557AD874D95BL,3UL,0x39L,1UL},{1UL,0x9DL,0x7EL,0UL},{9UL,1UL,0L,1UL}},{{0x12E6557AD874D95BL,3UL,0x39L,1UL},{1UL,0x9DL,0x7EL,0UL},{9UL,1UL,0L,1UL}},{{0x12E6557AD874D95BL,3UL,0x39L,1UL},{1UL,0x9DL,0x7EL,0UL},{9UL,1UL,0L,1UL}},{{0x12E6557AD874D95BL,3UL,0x39L,1UL},{1UL,0x9DL,0x7EL,0UL},{9UL,1UL,0L,1UL}},{{0x12E6557AD874D95BL,3UL,0x39L,1UL},{1UL,0x9DL,0x7EL,0UL},{9UL,1UL,0L,1UL}},{{0x12E6557AD874D95BL,3UL,0x39L,1UL},{1UL,0x9DL,0x7EL,0UL},{9UL,1UL,0L,1UL}}},{{{0x12E6557AD874D95BL,3UL,0x39L,1UL},{1UL,0x9DL,0x7EL,0UL},{9UL,1UL,0L,1UL}},{{0x12E6557AD874D95BL,3UL,0x39L,1UL},{1UL,0x9DL,0x7EL,0UL},{9UL,1UL,0L,1UL}},{{0x12E6557AD874D95BL,3UL,0x39L,1UL},{1UL,0x9DL,0x7EL,0UL},{9UL,1UL,0L,1UL}},{{0x12E6557AD874D95BL,3UL,0x39L,1UL},{1UL,0x9DL,0x7EL,0UL},{9UL,1UL,0L,1UL}},{{0x12E6557AD874D95BL,3UL,0x39L,1UL},{1UL,0x9DL,0x7EL,0UL},{9UL,1UL,0L,1UL}},{{0x12E6557AD874D95BL,3UL,0x39L,1UL},{1UL,0x9DL,0x7EL,0UL},{9UL,1UL,0L,1UL}},{{0x12E6557AD874D95BL,3UL,0x39L,1UL},{1UL,0x9DL,0x7EL,0UL},{9UL,1UL,0L,1UL}}}}, // p_578->g_569
        (void*)0, // p_578->g_571
        &p_578->g_477, // p_578->g_577
        sequence_input[get_global_id(0)], // p_578->global_0_offset
        sequence_input[get_global_id(1)], // p_578->global_1_offset
        sequence_input[get_global_id(2)], // p_578->global_2_offset
        sequence_input[get_local_id(0)], // p_578->local_0_offset
        sequence_input[get_local_id(1)], // p_578->local_1_offset
        sequence_input[get_local_id(2)], // p_578->local_2_offset
        sequence_input[get_group_id(0)], // p_578->group_0_offset
        sequence_input[get_group_id(1)], // p_578->group_1_offset
        sequence_input[get_group_id(2)], // p_578->group_2_offset
    };
    c_579 = c_580;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_578);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_578->g_2[i][j][k], "p_578->g_2[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_578->g_3[i][j][k], "p_578->g_3[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_578->g_4, "p_578->g_4", print_hash_value);
    transparent_crc(p_578->g_34, "p_578->g_34", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_578->g_38[i][j], "p_578->g_38[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_578->g_39.s0, "p_578->g_39.s0", print_hash_value);
    transparent_crc(p_578->g_39.s1, "p_578->g_39.s1", print_hash_value);
    transparent_crc(p_578->g_39.s2, "p_578->g_39.s2", print_hash_value);
    transparent_crc(p_578->g_39.s3, "p_578->g_39.s3", print_hash_value);
    transparent_crc(p_578->g_39.s4, "p_578->g_39.s4", print_hash_value);
    transparent_crc(p_578->g_39.s5, "p_578->g_39.s5", print_hash_value);
    transparent_crc(p_578->g_39.s6, "p_578->g_39.s6", print_hash_value);
    transparent_crc(p_578->g_39.s7, "p_578->g_39.s7", print_hash_value);
    transparent_crc(p_578->g_39.s8, "p_578->g_39.s8", print_hash_value);
    transparent_crc(p_578->g_39.s9, "p_578->g_39.s9", print_hash_value);
    transparent_crc(p_578->g_39.sa, "p_578->g_39.sa", print_hash_value);
    transparent_crc(p_578->g_39.sb, "p_578->g_39.sb", print_hash_value);
    transparent_crc(p_578->g_39.sc, "p_578->g_39.sc", print_hash_value);
    transparent_crc(p_578->g_39.sd, "p_578->g_39.sd", print_hash_value);
    transparent_crc(p_578->g_39.se, "p_578->g_39.se", print_hash_value);
    transparent_crc(p_578->g_39.sf, "p_578->g_39.sf", print_hash_value);
    transparent_crc(p_578->g_68.x, "p_578->g_68.x", print_hash_value);
    transparent_crc(p_578->g_68.y, "p_578->g_68.y", print_hash_value);
    transparent_crc(p_578->g_68.z, "p_578->g_68.z", print_hash_value);
    transparent_crc(p_578->g_68.w, "p_578->g_68.w", print_hash_value);
    transparent_crc(p_578->g_100.x, "p_578->g_100.x", print_hash_value);
    transparent_crc(p_578->g_100.y, "p_578->g_100.y", print_hash_value);
    transparent_crc(p_578->g_100.z, "p_578->g_100.z", print_hash_value);
    transparent_crc(p_578->g_100.w, "p_578->g_100.w", print_hash_value);
    transparent_crc(p_578->g_102, "p_578->g_102", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_578->g_109[i].f0, "p_578->g_109[i].f0", print_hash_value);
        transparent_crc(p_578->g_109[i].f1, "p_578->g_109[i].f1", print_hash_value);
        transparent_crc(p_578->g_109[i].f2, "p_578->g_109[i].f2", print_hash_value);
        transparent_crc(p_578->g_109[i].f3, "p_578->g_109[i].f3", print_hash_value);

    }
    transparent_crc(p_578->g_129, "p_578->g_129", print_hash_value);
    transparent_crc(p_578->g_193.x, "p_578->g_193.x", print_hash_value);
    transparent_crc(p_578->g_193.y, "p_578->g_193.y", print_hash_value);
    transparent_crc(p_578->g_193.z, "p_578->g_193.z", print_hash_value);
    transparent_crc(p_578->g_193.w, "p_578->g_193.w", print_hash_value);
    transparent_crc(p_578->g_195, "p_578->g_195", print_hash_value);
    transparent_crc(p_578->g_196, "p_578->g_196", print_hash_value);
    transparent_crc(p_578->g_210.s0, "p_578->g_210.s0", print_hash_value);
    transparent_crc(p_578->g_210.s1, "p_578->g_210.s1", print_hash_value);
    transparent_crc(p_578->g_210.s2, "p_578->g_210.s2", print_hash_value);
    transparent_crc(p_578->g_210.s3, "p_578->g_210.s3", print_hash_value);
    transparent_crc(p_578->g_210.s4, "p_578->g_210.s4", print_hash_value);
    transparent_crc(p_578->g_210.s5, "p_578->g_210.s5", print_hash_value);
    transparent_crc(p_578->g_210.s6, "p_578->g_210.s6", print_hash_value);
    transparent_crc(p_578->g_210.s7, "p_578->g_210.s7", print_hash_value);
    transparent_crc(p_578->g_210.s8, "p_578->g_210.s8", print_hash_value);
    transparent_crc(p_578->g_210.s9, "p_578->g_210.s9", print_hash_value);
    transparent_crc(p_578->g_210.sa, "p_578->g_210.sa", print_hash_value);
    transparent_crc(p_578->g_210.sb, "p_578->g_210.sb", print_hash_value);
    transparent_crc(p_578->g_210.sc, "p_578->g_210.sc", print_hash_value);
    transparent_crc(p_578->g_210.sd, "p_578->g_210.sd", print_hash_value);
    transparent_crc(p_578->g_210.se, "p_578->g_210.se", print_hash_value);
    transparent_crc(p_578->g_210.sf, "p_578->g_210.sf", print_hash_value);
    transparent_crc(p_578->g_225.x, "p_578->g_225.x", print_hash_value);
    transparent_crc(p_578->g_225.y, "p_578->g_225.y", print_hash_value);
    transparent_crc(p_578->g_225.z, "p_578->g_225.z", print_hash_value);
    transparent_crc(p_578->g_225.w, "p_578->g_225.w", print_hash_value);
    transparent_crc(p_578->g_226.s0, "p_578->g_226.s0", print_hash_value);
    transparent_crc(p_578->g_226.s1, "p_578->g_226.s1", print_hash_value);
    transparent_crc(p_578->g_226.s2, "p_578->g_226.s2", print_hash_value);
    transparent_crc(p_578->g_226.s3, "p_578->g_226.s3", print_hash_value);
    transparent_crc(p_578->g_226.s4, "p_578->g_226.s4", print_hash_value);
    transparent_crc(p_578->g_226.s5, "p_578->g_226.s5", print_hash_value);
    transparent_crc(p_578->g_226.s6, "p_578->g_226.s6", print_hash_value);
    transparent_crc(p_578->g_226.s7, "p_578->g_226.s7", print_hash_value);
    transparent_crc(p_578->g_233, "p_578->g_233", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_578->g_235[i][j][k], "p_578->g_235[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_578->g_238, "p_578->g_238", print_hash_value);
    transparent_crc(p_578->g_244, "p_578->g_244", print_hash_value);
    transparent_crc(p_578->g_263.s0, "p_578->g_263.s0", print_hash_value);
    transparent_crc(p_578->g_263.s1, "p_578->g_263.s1", print_hash_value);
    transparent_crc(p_578->g_263.s2, "p_578->g_263.s2", print_hash_value);
    transparent_crc(p_578->g_263.s3, "p_578->g_263.s3", print_hash_value);
    transparent_crc(p_578->g_263.s4, "p_578->g_263.s4", print_hash_value);
    transparent_crc(p_578->g_263.s5, "p_578->g_263.s5", print_hash_value);
    transparent_crc(p_578->g_263.s6, "p_578->g_263.s6", print_hash_value);
    transparent_crc(p_578->g_263.s7, "p_578->g_263.s7", print_hash_value);
    transparent_crc(p_578->g_263.s8, "p_578->g_263.s8", print_hash_value);
    transparent_crc(p_578->g_263.s9, "p_578->g_263.s9", print_hash_value);
    transparent_crc(p_578->g_263.sa, "p_578->g_263.sa", print_hash_value);
    transparent_crc(p_578->g_263.sb, "p_578->g_263.sb", print_hash_value);
    transparent_crc(p_578->g_263.sc, "p_578->g_263.sc", print_hash_value);
    transparent_crc(p_578->g_263.sd, "p_578->g_263.sd", print_hash_value);
    transparent_crc(p_578->g_263.se, "p_578->g_263.se", print_hash_value);
    transparent_crc(p_578->g_263.sf, "p_578->g_263.sf", print_hash_value);
    transparent_crc(p_578->g_268.x, "p_578->g_268.x", print_hash_value);
    transparent_crc(p_578->g_268.y, "p_578->g_268.y", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_578->g_301[i][j], "p_578->g_301[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_578->g_311.x, "p_578->g_311.x", print_hash_value);
    transparent_crc(p_578->g_311.y, "p_578->g_311.y", print_hash_value);
    transparent_crc(p_578->g_325, "p_578->g_325", print_hash_value);
    transparent_crc(p_578->g_332.x, "p_578->g_332.x", print_hash_value);
    transparent_crc(p_578->g_332.y, "p_578->g_332.y", print_hash_value);
    transparent_crc(p_578->g_332.z, "p_578->g_332.z", print_hash_value);
    transparent_crc(p_578->g_332.w, "p_578->g_332.w", print_hash_value);
    transparent_crc(p_578->g_349.s0, "p_578->g_349.s0", print_hash_value);
    transparent_crc(p_578->g_349.s1, "p_578->g_349.s1", print_hash_value);
    transparent_crc(p_578->g_349.s2, "p_578->g_349.s2", print_hash_value);
    transparent_crc(p_578->g_349.s3, "p_578->g_349.s3", print_hash_value);
    transparent_crc(p_578->g_349.s4, "p_578->g_349.s4", print_hash_value);
    transparent_crc(p_578->g_349.s5, "p_578->g_349.s5", print_hash_value);
    transparent_crc(p_578->g_349.s6, "p_578->g_349.s6", print_hash_value);
    transparent_crc(p_578->g_349.s7, "p_578->g_349.s7", print_hash_value);
    transparent_crc(p_578->g_349.s8, "p_578->g_349.s8", print_hash_value);
    transparent_crc(p_578->g_349.s9, "p_578->g_349.s9", print_hash_value);
    transparent_crc(p_578->g_349.sa, "p_578->g_349.sa", print_hash_value);
    transparent_crc(p_578->g_349.sb, "p_578->g_349.sb", print_hash_value);
    transparent_crc(p_578->g_349.sc, "p_578->g_349.sc", print_hash_value);
    transparent_crc(p_578->g_349.sd, "p_578->g_349.sd", print_hash_value);
    transparent_crc(p_578->g_349.se, "p_578->g_349.se", print_hash_value);
    transparent_crc(p_578->g_349.sf, "p_578->g_349.sf", print_hash_value);
    transparent_crc(p_578->g_370, "p_578->g_370", print_hash_value);
    transparent_crc(p_578->g_398.s0, "p_578->g_398.s0", print_hash_value);
    transparent_crc(p_578->g_398.s1, "p_578->g_398.s1", print_hash_value);
    transparent_crc(p_578->g_398.s2, "p_578->g_398.s2", print_hash_value);
    transparent_crc(p_578->g_398.s3, "p_578->g_398.s3", print_hash_value);
    transparent_crc(p_578->g_398.s4, "p_578->g_398.s4", print_hash_value);
    transparent_crc(p_578->g_398.s5, "p_578->g_398.s5", print_hash_value);
    transparent_crc(p_578->g_398.s6, "p_578->g_398.s6", print_hash_value);
    transparent_crc(p_578->g_398.s7, "p_578->g_398.s7", print_hash_value);
    transparent_crc(p_578->g_472.s0, "p_578->g_472.s0", print_hash_value);
    transparent_crc(p_578->g_472.s1, "p_578->g_472.s1", print_hash_value);
    transparent_crc(p_578->g_472.s2, "p_578->g_472.s2", print_hash_value);
    transparent_crc(p_578->g_472.s3, "p_578->g_472.s3", print_hash_value);
    transparent_crc(p_578->g_472.s4, "p_578->g_472.s4", print_hash_value);
    transparent_crc(p_578->g_472.s5, "p_578->g_472.s5", print_hash_value);
    transparent_crc(p_578->g_472.s6, "p_578->g_472.s6", print_hash_value);
    transparent_crc(p_578->g_472.s7, "p_578->g_472.s7", print_hash_value);
    transparent_crc(p_578->g_501.x, "p_578->g_501.x", print_hash_value);
    transparent_crc(p_578->g_501.y, "p_578->g_501.y", print_hash_value);
    transparent_crc(p_578->g_525.x, "p_578->g_525.x", print_hash_value);
    transparent_crc(p_578->g_525.y, "p_578->g_525.y", print_hash_value);
    transparent_crc(p_578->g_525.z, "p_578->g_525.z", print_hash_value);
    transparent_crc(p_578->g_525.w, "p_578->g_525.w", print_hash_value);
    transparent_crc(p_578->g_527.x, "p_578->g_527.x", print_hash_value);
    transparent_crc(p_578->g_527.y, "p_578->g_527.y", print_hash_value);
    transparent_crc(p_578->g_535, "p_578->g_535", print_hash_value);
    transparent_crc(p_578->g_536.x, "p_578->g_536.x", print_hash_value);
    transparent_crc(p_578->g_536.y, "p_578->g_536.y", print_hash_value);
    transparent_crc(p_578->g_555.s0, "p_578->g_555.s0", print_hash_value);
    transparent_crc(p_578->g_555.s1, "p_578->g_555.s1", print_hash_value);
    transparent_crc(p_578->g_555.s2, "p_578->g_555.s2", print_hash_value);
    transparent_crc(p_578->g_555.s3, "p_578->g_555.s3", print_hash_value);
    transparent_crc(p_578->g_555.s4, "p_578->g_555.s4", print_hash_value);
    transparent_crc(p_578->g_555.s5, "p_578->g_555.s5", print_hash_value);
    transparent_crc(p_578->g_555.s6, "p_578->g_555.s6", print_hash_value);
    transparent_crc(p_578->g_555.s7, "p_578->g_555.s7", print_hash_value);
    transparent_crc(p_578->g_557.x, "p_578->g_557.x", print_hash_value);
    transparent_crc(p_578->g_557.y, "p_578->g_557.y", print_hash_value);
    transparent_crc(p_578->g_558.s0, "p_578->g_558.s0", print_hash_value);
    transparent_crc(p_578->g_558.s1, "p_578->g_558.s1", print_hash_value);
    transparent_crc(p_578->g_558.s2, "p_578->g_558.s2", print_hash_value);
    transparent_crc(p_578->g_558.s3, "p_578->g_558.s3", print_hash_value);
    transparent_crc(p_578->g_558.s4, "p_578->g_558.s4", print_hash_value);
    transparent_crc(p_578->g_558.s5, "p_578->g_558.s5", print_hash_value);
    transparent_crc(p_578->g_558.s6, "p_578->g_558.s6", print_hash_value);
    transparent_crc(p_578->g_558.s7, "p_578->g_558.s7", print_hash_value);
    transparent_crc(p_578->g_558.s8, "p_578->g_558.s8", print_hash_value);
    transparent_crc(p_578->g_558.s9, "p_578->g_558.s9", print_hash_value);
    transparent_crc(p_578->g_558.sa, "p_578->g_558.sa", print_hash_value);
    transparent_crc(p_578->g_558.sb, "p_578->g_558.sb", print_hash_value);
    transparent_crc(p_578->g_558.sc, "p_578->g_558.sc", print_hash_value);
    transparent_crc(p_578->g_558.sd, "p_578->g_558.sd", print_hash_value);
    transparent_crc(p_578->g_558.se, "p_578->g_558.se", print_hash_value);
    transparent_crc(p_578->g_558.sf, "p_578->g_558.sf", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_578->g_569[i][j][k].f0, "p_578->g_569[i][j][k].f0", print_hash_value);
                transparent_crc(p_578->g_569[i][j][k].f1, "p_578->g_569[i][j][k].f1", print_hash_value);
                transparent_crc(p_578->g_569[i][j][k].f2, "p_578->g_569[i][j][k].f2", print_hash_value);
                transparent_crc(p_578->g_569[i][j][k].f3, "p_578->g_569[i][j][k].f3", print_hash_value);

            }
        }
    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
