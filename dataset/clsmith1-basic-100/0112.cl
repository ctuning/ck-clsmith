// ---fake_divergence -g 31,5,35 -l 31,1,5
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


// Seed: 112

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint16_t  f0;
   int64_t  f1;
   uint32_t  f2;
   uint32_t  f3;
   volatile uint8_t  f4;
};

struct S1 {
    int32_t g_17[2];
    int32_t g_28[6];
    int32_t *g_27;
    union U0 g_43[9];
    int8_t g_67;
    int16_t g_70;
    uint16_t g_85;
    uint8_t g_94;
    uint8_t g_98;
    uint8_t g_107;
    int32_t g_109;
    int32_t *g_112;
    int64_t g_127;
    int32_t * volatile g_128[2][5];
    int32_t * volatile g_129;
    volatile int8_t * volatile g_131[7];
    volatile int8_t * volatile *g_130;
    int32_t *g_136;
    int32_t **g_135;
    uint32_t g_218;
    int8_t *g_225;
    int16_t g_235[10];
    int16_t *g_234;
    int32_t g_260;
    int32_t g_265;
    int32_t * volatile g_264[8];
    uint64_t g_302;
    uint16_t g_354;
    uint8_t g_464;
    union U0 g_471;
    uint16_t g_492;
    uint16_t *g_517;
    int8_t g_552;
    int8_t g_558;
    uint16_t g_559;
    uint32_t g_560;
    union U0 g_591;
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
union U0  func_1(struct S1 * p_592);
union U0  func_5(int64_t  p_6, uint32_t  p_7, int16_t  p_8, uint16_t  p_9, int8_t  p_10, struct S1 * p_592);
int32_t  func_12(int32_t  p_13, struct S1 * p_592);
uint64_t  func_24(int32_t * p_25, int8_t  p_26, struct S1 * p_592);
int32_t  func_29(int32_t * p_30, int32_t * p_31, uint16_t  p_32, struct S1 * p_592);
int32_t * func_33(int32_t * p_34, int32_t * p_35, int32_t * p_36, int16_t  p_37, uint32_t  p_38, struct S1 * p_592);
int32_t * func_39(int32_t * p_40, int16_t  p_41, struct S1 * p_592);
uint8_t  func_44(int32_t * p_45, int32_t * p_46, uint8_t  p_47, int64_t  p_48, struct S1 * p_592);
uint8_t  func_50(int32_t ** p_51, int32_t ** p_52, struct S1 * p_592);
int32_t  func_55(int32_t * p_56, int32_t  p_57, int32_t  p_58, int32_t * p_59, int32_t * p_60, struct S1 * p_592);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_592->g_17 p_592->g_27 p_592->g_28 p_592->g_43 p_592->g_43.f0 p_592->g_67 p_592->g_70 p_592->g_98 p_592->g_107 p_592->g_109 p_592->g_129 p_592->g_130 p_592->g_112 p_592->g_135 p_592->g_127 p_592->g_136 p_592->g_218 p_592->g_85 p_592->g_234 p_592->g_128 p_592->g_235 p_592->g_260 p_592->g_94 p_592->g_131 p_592->g_302 p_592->g_264 p_592->g_354 p_592->g_265 p_592->g_464 p_592->g_471 p_592->g_517 p_592->g_591
 * writes: p_592->g_17 p_592->g_27 p_592->g_67 p_592->g_70 p_592->g_85 p_592->g_94 p_592->g_98 p_592->g_107 p_592->g_109 p_592->g_28 p_592->g_112 p_592->g_127 p_592->g_128 p_592->g_136 p_592->g_218 p_592->g_225 p_592->g_302 p_592->g_260 p_592->g_354 p_592->g_265 p_592->g_43.f0 p_592->g_492
 */
union U0  func_1(struct S1 * p_592)
{ /* block id: 4 */
    uint32_t l_11 = 4294967288UL;
    int32_t *l_16 = &p_592->g_17[0];
    int32_t l_18 = 0x7928D9BAL;
    uint16_t l_466 = 0x7541L;
    int32_t l_500 = 7L;
    int32_t l_501[7] = {0x4A7FEDD1L,0x4A7FEDD1L,0x4A7FEDD1L,0x4A7FEDD1L,0x4A7FEDD1L,0x4A7FEDD1L,0x4A7FEDD1L};
    int32_t l_502 = 0x5A549A16L;
    uint16_t l_505 = 0UL;
    uint32_t l_522 = 0x0A157EF4L;
    int32_t **l_584[3][10] = {{(void*)0,(void*)0,&p_592->g_27,(void*)0,(void*)0,(void*)0,(void*)0,&p_592->g_27,(void*)0,(void*)0},{(void*)0,(void*)0,&p_592->g_27,(void*)0,(void*)0,(void*)0,(void*)0,&p_592->g_27,(void*)0,(void*)0},{(void*)0,(void*)0,&p_592->g_27,(void*)0,(void*)0,(void*)0,(void*)0,&p_592->g_27,(void*)0,(void*)0}};
    int i, j;
    if ((((*l_16) = (((safe_unary_minus_func_int16_t_s((safe_mul_func_int16_t_s_s((func_5(l_11, (func_12(((safe_lshift_func_int16_t_s_s(((((*l_16) &= l_11) <= 0x68F98558L) > l_11), 5)) == (l_11 , l_18)), p_592) , p_592->g_17[0]), (((func_24(p_592->g_27, p_592->g_28[1], p_592) & p_592->g_235[3]) < p_592->g_464) || l_466), p_592->g_235[1], p_592->g_235[1], p_592) , (*p_592->g_234)), 0xF162L)))) == p_592->g_235[7]) , (*p_592->g_129))) > GROUP_DIVERGE(1, 1)))
    { /* block id: 214 */
        int32_t *l_493 = &p_592->g_260;
        int32_t *l_494 = &p_592->g_260;
        int32_t *l_495 = &p_592->g_265;
        int32_t *l_496 = &p_592->g_260;
        int32_t *l_497 = &p_592->g_17[0];
        int32_t *l_498 = &p_592->g_265;
        int32_t *l_499[6][9] = {{&p_592->g_28[3],&p_592->g_28[4],&p_592->g_260,&p_592->g_260,&p_592->g_260,&p_592->g_28[4],&p_592->g_28[3],&p_592->g_109,&p_592->g_17[1]},{&p_592->g_28[3],&p_592->g_28[4],&p_592->g_260,&p_592->g_260,&p_592->g_260,&p_592->g_28[4],&p_592->g_28[3],&p_592->g_109,&p_592->g_17[1]},{&p_592->g_28[3],&p_592->g_28[4],&p_592->g_260,&p_592->g_260,&p_592->g_260,&p_592->g_28[4],&p_592->g_28[3],&p_592->g_109,&p_592->g_17[1]},{&p_592->g_28[3],&p_592->g_28[4],&p_592->g_260,&p_592->g_260,&p_592->g_260,&p_592->g_28[4],&p_592->g_28[3],&p_592->g_109,&p_592->g_17[1]},{&p_592->g_28[3],&p_592->g_28[4],&p_592->g_260,&p_592->g_260,&p_592->g_260,&p_592->g_28[4],&p_592->g_28[3],&p_592->g_109,&p_592->g_17[1]},{&p_592->g_28[3],&p_592->g_28[4],&p_592->g_260,&p_592->g_260,&p_592->g_260,&p_592->g_28[4],&p_592->g_28[3],&p_592->g_109,&p_592->g_17[1]}};
        int32_t l_503 = 1L;
        int32_t l_504 = 0x2D649C54L;
        int i, j;
        --l_505;
    }
    else
    { /* block id: 216 */
        int32_t *l_510 = &l_18;
        uint16_t *l_576 = &l_466;
        int32_t **l_583 = &p_592->g_27;
        for (p_592->g_94 = 0; (p_592->g_94 <= 52); p_592->g_94 = safe_add_func_uint8_t_u_u(p_592->g_94, 9))
        { /* block id: 219 */
            union U0 *l_514 = &p_592->g_43[4];
            union U0 **l_513 = &l_514;
            int32_t l_516 = 0x0FF40F7EL;
            uint8_t *l_523 = &p_592->g_98;
            int32_t l_524[4] = {0x2E7EE241L,0x2E7EE241L,0x2E7EE241L,0x2E7EE241L};
            int i;
            (*p_592->g_135) = l_510;
            (*p_592->g_112) = ((safe_mul_func_int8_t_s_s((func_5(((void*)0 != l_513), (((safe_unary_minus_func_uint8_t_u(l_516)) < (*l_510)) , ((*l_16) , ((void*)0 != p_592->g_517))), (*l_16), (l_524[3] = (((*l_523) ^= ((safe_sub_func_uint64_t_u_u(((safe_sub_func_int64_t_s_s(p_592->g_85, (-8L))) , 6UL), l_522)) != p_592->g_235[6])) ^ (*l_16))), (*l_16), p_592) , (*l_510)), l_516)) > 0xECE13D66L);
        }
        for (p_592->g_85 = 0; (p_592->g_85 <= 1); p_592->g_85 += 1)
        { /* block id: 227 */
            int32_t l_539 = 2L;
            int32_t l_555 = 0x4E0E6CCAL;
            int16_t l_561[9][3][3] = {{{0L,(-7L),0x367FL},{0L,(-7L),0x367FL},{0L,(-7L),0x367FL}},{{0L,(-7L),0x367FL},{0L,(-7L),0x367FL},{0L,(-7L),0x367FL}},{{0L,(-7L),0x367FL},{0L,(-7L),0x367FL},{0L,(-7L),0x367FL}},{{0L,(-7L),0x367FL},{0L,(-7L),0x367FL},{0L,(-7L),0x367FL}},{{0L,(-7L),0x367FL},{0L,(-7L),0x367FL},{0L,(-7L),0x367FL}},{{0L,(-7L),0x367FL},{0L,(-7L),0x367FL},{0L,(-7L),0x367FL}},{{0L,(-7L),0x367FL},{0L,(-7L),0x367FL},{0L,(-7L),0x367FL}},{{0L,(-7L),0x367FL},{0L,(-7L),0x367FL},{0L,(-7L),0x367FL}},{{0L,(-7L),0x367FL},{0L,(-7L),0x367FL},{0L,(-7L),0x367FL}}};
            int i, j, k;
            (1 + 1);
        }
        (*l_583) = ((*p_592->g_135) = (void*)0);
    }
    (*p_592->g_135) = (*p_592->g_135);
    return p_592->g_591;
}


/* ------------------------------------------ */
/* 
 * reads : p_592->g_135 p_592->g_471 p_592->g_17 p_592->g_234 p_592->g_235 p_592->g_109 p_592->g_112 p_592->g_28 p_592->g_43
 * writes: p_592->g_136 p_592->g_28 p_592->g_302 p_592->g_492
 */
union U0  func_5(int64_t  p_6, uint32_t  p_7, int16_t  p_8, uint16_t  p_9, int8_t  p_10, struct S1 * p_592)
{ /* block id: 204 */
    int32_t *l_467 = &p_592->g_109;
    uint64_t *l_470 = &p_592->g_302;
    int16_t **l_488[9];
    uint8_t *l_491[7] = {(void*)0,&p_592->g_98,(void*)0,(void*)0,&p_592->g_98,(void*)0,(void*)0};
    int i;
    for (i = 0; i < 9; i++)
        l_488[i] = &p_592->g_234;
    (*p_592->g_135) = l_467;
    (*p_592->g_112) = ((safe_rshift_func_int16_t_s_u(((p_6 , l_470) == (p_592->g_471 , &p_592->g_302)), (safe_sub_func_uint64_t_u_u((safe_mul_func_int8_t_s_s((p_592->g_17[0] , ((p_10 , ((((safe_div_func_uint32_t_u_u((safe_mul_func_int8_t_s_s((safe_div_func_int8_t_s_s(0x1DL, FAKE_DIVERGE(p_592->group_0_offset, get_group_id(0), 10))), (safe_div_func_int16_t_s_s((0x4AL <= (((safe_lshift_func_int8_t_s_s((((((2UL && (*p_592->g_234)) , p_6) < (*l_467)) || 0x05F5EA2E80AA86F4L) & 1UL), 2)) || p_6) , (-7L))), FAKE_DIVERGE(p_592->local_0_offset, get_local_id(0), 10))))), (*l_467))) > 0xC62B32FD3F6AA859L) <= 0UL) , &p_7)) == (void*)0)), p_592->g_17[1])), p_6)))) < 0xE4598BBE980309A8L);
    (*p_592->g_135) = l_467;
    (*p_592->g_112) |= (safe_add_func_uint16_t_u_u((((*l_470) = (0x764861A6FD0C9EE2L & 0x77777EC3601EACDBL)) ^ (((((l_488[3] = l_488[3]) != &p_592->g_234) >= (safe_add_func_int64_t_s_s((*l_467), (*l_467)))) & (p_9 ^ (248UL && (p_592->g_492 = (0x02ADD07DL >= (*l_467)))))) < (*l_467))), (*l_467)));
    return p_592->g_43[8];
}


/* ------------------------------------------ */
/* 
 * reads : p_592->g_17
 * writes: p_592->g_17
 */
int32_t  func_12(int32_t  p_13, struct S1 * p_592)
{ /* block id: 6 */
    int32_t *l_19 = &p_592->g_17[0];
    int32_t *l_20[1];
    uint32_t l_21 = 9UL;
    int i;
    for (i = 0; i < 1; i++)
        l_20[i] = &p_592->g_17[1];
    (*l_19) = p_592->g_17[0];
    l_21++;
    return p_592->g_17[1];
}


/* ------------------------------------------ */
/* 
 * reads : p_592->g_28 p_592->g_43 p_592->g_43.f0 p_592->g_67 p_592->g_70 p_592->g_98 p_592->g_107 p_592->g_109 p_592->g_129 p_592->g_130 p_592->g_112 p_592->g_135 p_592->g_127 p_592->g_136 p_592->g_218 p_592->g_85 p_592->g_234 p_592->g_128 p_592->g_235 p_592->g_260 p_592->g_94 p_592->g_131 p_592->g_27 p_592->g_302 p_592->g_264 p_592->g_354 p_592->g_265 p_592->g_464
 * writes: p_592->g_27 p_592->g_67 p_592->g_70 p_592->g_85 p_592->g_94 p_592->g_98 p_592->g_107 p_592->g_109 p_592->g_28 p_592->g_112 p_592->g_127 p_592->g_128 p_592->g_136 p_592->g_218 p_592->g_225 p_592->g_302 p_592->g_260 p_592->g_354 p_592->g_265 p_592->g_43.f0
 */
uint64_t  func_24(int32_t * p_25, int8_t  p_26, struct S1 * p_592)
{ /* block id: 10 */
    int32_t *l_42 = &p_592->g_28[2];
    int32_t *l_308 = &p_592->g_265;
    int32_t **l_307 = &l_308;
    int8_t l_313 = 0x60L;
    int64_t l_465 = 3L;
    (*p_25) = func_29((p_26 , ((*p_592->g_135) = func_33(&p_592->g_28[3], func_39(l_42, p_592->g_28[3], p_592), ((*l_307) = p_25), (*p_592->g_234), (safe_add_func_int8_t_s_s((safe_lshift_func_uint8_t_u_s((l_313 && 0x68L), 7)), 0L)), p_592))), p_25, p_592->g_235[1], p_592);
    return l_465;
}


/* ------------------------------------------ */
/* 
 * reads : p_592->g_136 p_592->g_28 p_592->g_464
 * writes: p_592->g_28
 */
int32_t  func_29(int32_t * p_30, int32_t * p_31, uint16_t  p_32, struct S1 * p_592)
{ /* block id: 198 */
    int32_t l_459 = 0L;
    union U0 *l_462 = &p_592->g_43[7];
    union U0 **l_461[1];
    union U0 ***l_460 = &l_461[0];
    int16_t **l_463 = &p_592->g_234;
    int i;
    for (i = 0; i < 1; i++)
        l_461[i] = &l_462;
    (*p_592->g_136) = (p_32 , (safe_mul_func_uint16_t_u_u(0x5F3DL, (safe_sub_func_int64_t_s_s(((0UL == ((safe_mul_func_int8_t_s_s((safe_div_func_int16_t_s_s(l_459, 0x5675L)), (l_460 == &l_461[0]))) < ((void*)0 != l_463))) || 4294967292UL), 0L)))));
    (*p_31) ^= 0x7C0FCA14L;
    return p_592->g_464;
}


/* ------------------------------------------ */
/* 
 * reads : p_592->g_135 p_592->g_85 p_592->g_260 p_592->g_264 p_592->g_354 p_592->g_28 p_592->g_27 p_592->g_94 p_592->g_265 p_592->g_70 p_592->g_67 p_592->g_218 p_592->g_43
 * writes: p_592->g_136 p_592->g_85 p_592->g_218 p_592->g_260 p_592->g_109 p_592->g_128 p_592->g_354 p_592->g_28 p_592->g_94 p_592->g_265 p_592->g_127 p_592->g_43.f0
 */
int32_t * func_33(int32_t * p_34, int32_t * p_35, int32_t * p_36, int16_t  p_37, uint32_t  p_38, struct S1 * p_592)
{ /* block id: 138 */
    int32_t *l_314 = &p_592->g_265;
    int32_t l_337 = 0L;
    int32_t l_363 = 2L;
    int32_t l_364 = 0x3FAFFB6AL;
    int32_t l_365 = 0x1F79CD59L;
    int32_t l_385 = 0x66451567L;
    int32_t l_386 = 0x354FA31EL;
    int32_t l_387 = 0x54A11782L;
    int32_t l_389 = 3L;
    int32_t l_390 = (-2L);
    int32_t l_391[9] = {1L,1L,1L,1L,1L,1L,1L,1L,1L};
    union U0 *l_417 = (void*)0;
    union U0 **l_416 = &l_417;
    uint64_t *l_442 = (void*)0;
    int i;
    (*p_592->g_135) = l_314;
    for (p_592->g_85 = 0; (p_592->g_85 >= 43); ++p_592->g_85)
    { /* block id: 142 */
        int16_t l_346 = 1L;
        int32_t l_347 = (-7L);
        int32_t l_348[6] = {0L,0x02A78D98L,0L,0L,0x02A78D98L,0L};
        uint32_t l_366 = 5UL;
        uint32_t l_392 = 0x9DEDD145L;
        int32_t *l_403 = (void*)0;
        int32_t *l_404[8] = {&l_347,&l_347,&l_347,&l_347,&l_347,&l_347,&l_347,&l_347};
        uint16_t l_405 = 0UL;
        int i;
        for (p_38 = 0; (p_38 >= 16); p_38++)
        { /* block id: 145 */
            uint16_t l_339 = 65535UL;
            int32_t l_344 = 0x51A385CBL;
            int32_t l_351 = (-10L);
            int32_t l_353 = 8L;
            int32_t l_384[6] = {1L,(-5L),1L,1L,(-5L),1L};
            int32_t l_388[9][7] = {{0x02C8C8CCL,(-6L),0x02C8C8CCL,0x02C8C8CCL,(-6L),0x02C8C8CCL,0x02C8C8CCL},{0x02C8C8CCL,(-6L),0x02C8C8CCL,0x02C8C8CCL,(-6L),0x02C8C8CCL,0x02C8C8CCL},{0x02C8C8CCL,(-6L),0x02C8C8CCL,0x02C8C8CCL,(-6L),0x02C8C8CCL,0x02C8C8CCL},{0x02C8C8CCL,(-6L),0x02C8C8CCL,0x02C8C8CCL,(-6L),0x02C8C8CCL,0x02C8C8CCL},{0x02C8C8CCL,(-6L),0x02C8C8CCL,0x02C8C8CCL,(-6L),0x02C8C8CCL,0x02C8C8CCL},{0x02C8C8CCL,(-6L),0x02C8C8CCL,0x02C8C8CCL,(-6L),0x02C8C8CCL,0x02C8C8CCL},{0x02C8C8CCL,(-6L),0x02C8C8CCL,0x02C8C8CCL,(-6L),0x02C8C8CCL,0x02C8C8CCL},{0x02C8C8CCL,(-6L),0x02C8C8CCL,0x02C8C8CCL,(-6L),0x02C8C8CCL,0x02C8C8CCL},{0x02C8C8CCL,(-6L),0x02C8C8CCL,0x02C8C8CCL,(-6L),0x02C8C8CCL,0x02C8C8CCL}};
            int i, j;
            for (p_592->g_218 = 0; (p_592->g_218 != 59); p_592->g_218++)
            { /* block id: 148 */
                int64_t l_323[1];
                int32_t l_342 = (-6L);
                int32_t l_343 = (-1L);
                int32_t l_345 = 0x2A1256B1L;
                int32_t l_349[6][3] = {{0x06BC35C1L,0x076C08D8L,0x06BC35C1L},{0x06BC35C1L,0x076C08D8L,0x06BC35C1L},{0x06BC35C1L,0x076C08D8L,0x06BC35C1L},{0x06BC35C1L,0x076C08D8L,0x06BC35C1L},{0x06BC35C1L,0x076C08D8L,0x06BC35C1L},{0x06BC35C1L,0x076C08D8L,0x06BC35C1L}};
                int32_t *l_369 = &l_344;
                int32_t *l_370 = &p_592->g_28[1];
                int32_t *l_371 = &p_592->g_265;
                int32_t *l_372 = &l_345;
                int32_t *l_373 = &l_348[1];
                int32_t *l_374 = &l_348[3];
                int32_t *l_375 = &l_345;
                int32_t *l_376 = &l_349[2][2];
                int32_t *l_377 = &l_349[3][1];
                int32_t *l_378 = &l_348[1];
                int32_t *l_379 = &p_592->g_265;
                int32_t *l_380 = (void*)0;
                int32_t *l_381 = (void*)0;
                int32_t *l_382 = &l_337;
                int32_t *l_383[9];
                int i, j;
                for (i = 0; i < 1; i++)
                    l_323[i] = 0x4CC2C11AEEA15874L;
                for (i = 0; i < 9; i++)
                    l_383[i] = (void*)0;
                for (p_592->g_260 = 6; (p_592->g_260 >= 0); p_592->g_260 -= 1)
                { /* block id: 151 */
                    int32_t l_338[10] = {0x2D78261AL,0x2D78261AL,0x2D78261AL,0x2D78261AL,0x2D78261AL,0x2D78261AL,0x2D78261AL,0x2D78261AL,0x2D78261AL,0x2D78261AL};
                    int32_t l_350 = 0x5963D65FL;
                    int32_t l_352 = 0x224B2532L;
                    int32_t *l_357 = &l_351;
                    int32_t *l_358 = &p_592->g_28[0];
                    int32_t *l_359 = &p_592->g_28[3];
                    int32_t *l_360 = (void*)0;
                    int32_t *l_361 = &l_337;
                    int32_t *l_362[3][3];
                    int i, j;
                    for (i = 0; i < 3; i++)
                    {
                        for (j = 0; j < 3; j++)
                            l_362[i][j] = (void*)0;
                    }
                    for (p_592->g_109 = 7; (p_592->g_109 >= 1); p_592->g_109 -= 1)
                    { /* block id: 154 */
                        int32_t *l_321 = &p_592->g_28[5];
                        int32_t l_322 = 0x459CE884L;
                        int32_t *l_324 = &p_592->g_265;
                        int32_t *l_325 = &p_592->g_28[3];
                        int32_t *l_326 = &l_322;
                        int32_t *l_327 = &p_592->g_265;
                        int32_t *l_328 = &l_322;
                        int32_t l_329 = 1L;
                        int32_t *l_330 = &l_322;
                        int32_t *l_331 = &p_592->g_265;
                        int32_t *l_332 = &p_592->g_28[3];
                        int32_t *l_333 = &l_329;
                        int32_t *l_334 = (void*)0;
                        int32_t *l_335 = &p_592->g_28[3];
                        int32_t *l_336[8][5];
                        int i, j;
                        for (i = 0; i < 8; i++)
                        {
                            for (j = 0; j < 5; j++)
                                l_336[i][j] = &p_592->g_265;
                        }
                        p_592->g_128[0][4] = p_592->g_264[p_592->g_260];
                        ++l_339;
                        (*l_330) &= 0x00E15890L;
                        --p_592->g_354;
                    }
                    l_366++;
                }
                --l_392;
                if ((*p_35))
                    continue;
                (*p_592->g_135) = &l_353;
            }
            (*p_592->g_135) = &l_348[1];
            (*p_35) &= ((safe_rshift_func_uint8_t_u_u(p_37, 5)) > 0x31L);
            for (l_387 = 0; (l_387 >= 20); l_387++)
            { /* block id: 170 */
                for (l_389 = 0; (l_389 != 9); l_389 = safe_add_func_int32_t_s_s(l_389, 9))
                { /* block id: 173 */
                    (*p_592->g_27) = (safe_rshift_func_int8_t_s_u(p_37, 5));
                    return p_36;
                }
                (*p_592->g_135) = &l_348[0];
            }
        }
        l_405++;
    }
    for (p_592->g_94 = 0; (p_592->g_94 != 7); p_592->g_94++)
    { /* block id: 184 */
        union U0 ***l_418 = &l_416;
        int32_t l_423[2][3] = {{0x09E6268CL,0x09E6268CL,0x09E6268CL},{0x09E6268CL,0x09E6268CL,0x09E6268CL}};
        int16_t *l_424[3];
        uint64_t *l_425 = &p_592->g_302;
        uint16_t *l_437 = (void*)0;
        uint16_t *l_438 = &p_592->g_43[3].f0;
        uint8_t *l_439 = (void*)0;
        uint8_t *l_441[4][3][3] = {{{&p_592->g_94,&p_592->g_107,&p_592->g_98},{&p_592->g_94,&p_592->g_107,&p_592->g_98},{&p_592->g_94,&p_592->g_107,&p_592->g_98}},{{&p_592->g_94,&p_592->g_107,&p_592->g_98},{&p_592->g_94,&p_592->g_107,&p_592->g_98},{&p_592->g_94,&p_592->g_107,&p_592->g_98}},{{&p_592->g_94,&p_592->g_107,&p_592->g_98},{&p_592->g_94,&p_592->g_107,&p_592->g_98},{&p_592->g_94,&p_592->g_107,&p_592->g_98}},{{&p_592->g_94,&p_592->g_107,&p_592->g_98},{&p_592->g_94,&p_592->g_107,&p_592->g_98},{&p_592->g_94,&p_592->g_107,&p_592->g_98}}};
        uint8_t **l_440 = &l_441[2][2][0];
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_424[i] = (void*)0;
        (*p_592->g_27) ^= (safe_sub_func_int32_t_s_s(((&p_37 != (l_424[2] = (((((safe_div_func_int32_t_s_s((*l_314), (*l_314))) , (safe_rshift_func_uint8_t_u_s(p_592->g_70, 0))) ^ ((p_592->g_70 , ((*l_418) = l_416)) == &l_417)) || (safe_lshift_func_uint16_t_u_s(((18446744073709551615UL | (safe_sub_func_int8_t_s_s(((l_423[1][1] < p_38) <= p_38), 1L))) , p_37), 3))) , &p_592->g_235[4]))) >= 0L), l_423[1][0]));
        (*l_314) &= l_423[1][1];
        (*p_35) |= (l_425 == (l_442 = ((safe_unary_minus_func_int32_t_s((safe_mul_func_uint8_t_u_u((safe_add_func_uint8_t_u_u((safe_mod_func_int64_t_s_s(p_592->g_67, (p_592->g_127 = (p_592->g_218 && l_423[1][1])))), (((((safe_add_func_uint64_t_u_u(((safe_rshift_func_uint16_t_u_u(((*l_438) = p_38), 5)) , (l_423[1][1] && (l_439 != ((*l_440) = l_439)))), (0x5222L ^ (-1L)))) <= p_37) , (*l_314)) >= l_423[1][1]) , 0xCFL))), p_38)))) , &p_592->g_302)));
        (*l_314) = ((((safe_add_func_uint32_t_u_u(((((0x70319FEEA5D783F6L | ((((3L >= (safe_rshift_func_uint8_t_u_u((p_592->g_43[3] , 0x9EL), (l_423[1][1] && ((((safe_div_func_int8_t_s_s((((1L | ((void*)0 == l_442)) | (safe_mod_func_int32_t_s_s((p_38 , 5L), 0x11829AB1L))) || (*l_314)), (*l_314))) <= FAKE_DIVERGE(p_592->global_1_offset, get_global_id(1), 10)) < GROUP_DIVERGE(2, 1)) && 0x0C25L))))) , (*p_36)) , l_423[0][0]) == p_38)) && 249UL) , (-9L)) < 4294967286UL), (*p_592->g_27))) || (*p_35)) != p_592->g_28[3]) , l_423[1][1]);
    }
    return p_35;
}


/* ------------------------------------------ */
/* 
 * reads : p_592->g_43 p_592->g_28 p_592->g_43.f0 p_592->g_67 p_592->g_70 p_592->g_98 p_592->g_107 p_592->g_109 p_592->g_129 p_592->g_130 p_592->g_112 p_592->g_135 p_592->g_127 p_592->g_136 p_592->g_218 p_592->g_85 p_592->g_234 p_592->g_128 p_592->g_235 p_592->g_260 p_592->g_94 p_592->g_131 p_592->g_27 p_592->g_302
 * writes: p_592->g_27 p_592->g_67 p_592->g_70 p_592->g_85 p_592->g_94 p_592->g_98 p_592->g_107 p_592->g_109 p_592->g_28 p_592->g_112 p_592->g_127 p_592->g_128 p_592->g_136 p_592->g_218 p_592->g_225 p_592->g_302
 */
int32_t * func_39(int32_t * p_40, int16_t  p_41, struct S1 * p_592)
{ /* block id: 11 */
    int32_t **l_49 = &p_592->g_27;
    int32_t l_63 = 1L;
    int8_t *l_66[7][4][9] = {{{&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67},{&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67},{&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67},{&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67}},{{&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67},{&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67},{&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67},{&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67}},{{&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67},{&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67},{&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67},{&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67}},{{&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67},{&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67},{&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67},{&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67}},{{&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67},{&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67},{&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67},{&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67}},{{&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67},{&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67},{&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67},{&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67}},{{&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67},{&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67},{&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67},{&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67}}};
    int32_t l_300 = 0L;
    int32_t *l_301[5] = {&p_592->g_109,&p_592->g_109,&p_592->g_109,&p_592->g_109,&p_592->g_109};
    int i, j, k;
    l_300 |= ((*p_40) = ((p_592->g_43[3] , func_44(&p_592->g_28[3], ((*l_49) = p_40), (p_592->g_28[2] , func_50(((((safe_lshift_func_int16_t_s_s((((!p_592->g_43[3].f0) > func_55((((p_592->g_28[3] != ((safe_add_func_int32_t_s_s((l_63 | (safe_mul_func_int8_t_s_s(p_592->g_28[3], ((p_592->g_67 = p_41) != l_63)))), 0x1B053640L)) != p_592->g_43[3].f0)) & 0xCAL) , (void*)0), p_41, p_592->g_43[3].f0, &p_592->g_28[4], &p_592->g_28[5], p_592)) | 8UL), p_41)) , (void*)0) != (void*)0) , (void*)0), p_592->g_135, p_592)), p_41, p_592)) , (**l_49)));
    --p_592->g_302;
    for (l_63 = (-5); (l_63 < (-25)); l_63 = safe_sub_func_uint32_t_u_u(l_63, 1))
    { /* block id: 133 */
        if ((*p_40))
            break;
    }
    return p_40;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint8_t  func_44(int32_t * p_45, int32_t * p_46, uint8_t  p_47, int64_t  p_48, struct S1 * p_592)
{ /* block id: 126 */
    return p_47;
}


/* ------------------------------------------ */
/* 
 * reads : p_592->g_112 p_592->g_28 p_592->g_98 p_592->g_70 p_592->g_43 p_592->g_129 p_592->g_109 p_592->g_127 p_592->g_135 p_592->g_136 p_592->g_107 p_592->g_43.f0 p_592->g_218 p_592->g_85 p_592->g_234 p_592->g_128 p_592->g_235 p_592->g_260 p_592->g_94 p_592->g_130 p_592->g_131
 * writes: p_592->g_28 p_592->g_109 p_592->g_136 p_592->g_107 p_592->g_67 p_592->g_98 p_592->g_218 p_592->g_225 p_592->g_70 p_592->g_127
 */
uint8_t  func_50(int32_t ** p_51, int32_t ** p_52, struct S1 * p_592)
{ /* block id: 50 */
    uint64_t l_139 = 0xDDD91154651966E8L;
    uint16_t l_153 = 0x9DADL;
    int64_t *l_154 = (void*)0;
    int64_t *l_155[10] = {&p_592->g_127,&p_592->g_127,&p_592->g_127,&p_592->g_127,&p_592->g_127,&p_592->g_127,&p_592->g_127,&p_592->g_127,&p_592->g_127,&p_592->g_127};
    int32_t l_156 = 0x2DDDDEF2L;
    int32_t l_157 = (-7L);
    uint8_t *l_168 = (void*)0;
    int32_t l_169 = 0x58CEDA53L;
    int32_t l_170[3];
    uint32_t l_171 = 4294967288UL;
    int32_t l_172 = 0x1519D29DL;
    uint64_t l_180 = 18446744073709551613UL;
    union U0 *l_214 = (void*)0;
    int16_t *l_237 = &p_592->g_235[7];
    uint16_t l_254 = 1UL;
    int i;
    for (i = 0; i < 3; i++)
        l_170[i] = 1L;
    l_157 = (((safe_mod_func_int32_t_s_s(((*p_592->g_112) ^= l_139), (safe_mul_func_uint16_t_u_u((((((p_592->g_98 & ((l_156 = (safe_add_func_uint16_t_u_u(p_592->g_70, (safe_unary_minus_func_uint32_t_u((((safe_mul_func_int16_t_s_s(((p_592->g_43[4] , ((*p_592->g_129) = (*p_592->g_129))) != 0UL), (safe_div_func_int8_t_s_s((((safe_add_func_uint32_t_u_u(l_139, (safe_div_func_uint16_t_u_u((l_139 == 246UL), l_139)))) <= l_139) , l_153), l_153)))) , 7UL) & l_153)))))) >= 1UL)) != l_139) && l_139) ^ GROUP_DIVERGE(2, 1)) , 0xAE7FL), p_592->g_98)))) , 1UL) & p_592->g_98);
    if ((!((l_157 != ((9L ^ (safe_mul_func_uint8_t_u_u((l_172 |= ((safe_mod_func_uint64_t_u_u(p_592->g_127, ((safe_lshift_func_int16_t_s_u(l_153, (safe_unary_minus_func_int64_t_s((l_156 & (l_156 , (safe_div_func_uint8_t_u_u((l_170[2] = (l_169 &= (safe_unary_minus_func_int16_t_s((((*p_592->g_135) = (p_592->g_43[3] , (*p_592->g_135))) != (l_156 , &l_156)))))), l_171)))))))) , l_170[2]))) || l_169)), l_157))) | p_592->g_109)) & l_157)))
    { /* block id: 59 */
        int32_t *l_173 = &p_592->g_28[2];
        int32_t *l_174 = &p_592->g_109;
        int32_t *l_175 = &l_170[2];
        int32_t *l_176 = &p_592->g_28[5];
        int32_t *l_177 = &l_169;
        int32_t *l_178 = &l_156;
        int32_t *l_179[2];
        int i;
        for (i = 0; i < 2; i++)
            l_179[i] = (void*)0;
        (*p_52) = (l_173 = (*p_592->g_135));
        l_180--;
        (*p_592->g_135) = (*p_592->g_135);
    }
    else
    { /* block id: 64 */
        int8_t l_187 = (-1L);
lbl_188:
        for (p_592->g_107 = 10; (p_592->g_107 == 1); --p_592->g_107)
        { /* block id: 67 */
            return p_592->g_70;
        }
        for (l_171 = 0; (l_171 != 36); l_171++)
        { /* block id: 72 */
            return l_187;
        }
        if (l_180)
            goto lbl_188;
        return p_592->g_28[3];
    }
    for (l_139 = 0; (l_139 <= 1); l_139 += 1)
    { /* block id: 80 */
        uint64_t l_207 = 18446744073709551615UL;
        int8_t *l_208 = &p_592->g_67;
        int8_t **l_210 = &l_208;
        int8_t ***l_209 = &l_210;
        union U0 **l_211 = (void*)0;
        union U0 *l_213 = &p_592->g_43[3];
        union U0 **l_212[10] = {&l_213,&l_213,&l_213,&l_213,&l_213,&l_213,&l_213,&l_213,&l_213,&l_213};
        uint8_t l_255 = 0x9FL;
        int32_t l_259 = 1L;
        int64_t *l_277 = &p_592->g_127;
        int i;
        l_214 = ((((*l_209) = ((safe_mul_func_int16_t_s_s(((((safe_div_func_int8_t_s_s((safe_div_func_uint32_t_u_u(((((void*)0 != &p_592->g_28[(l_139 + 4)]) || (p_592->g_28[(l_139 + 4)] & ((safe_div_func_int64_t_s_s((safe_rshift_func_int16_t_s_u((((*l_208) = ((safe_add_func_int64_t_s_s((l_170[(l_139 + 1)] = (safe_mod_func_int32_t_s_s(l_170[(l_139 + 1)], ((safe_div_func_int16_t_s_s(((safe_lshift_func_uint16_t_u_u(l_170[2], 10)) == ((0UL || (l_169 = l_170[0])) < ((l_207 , p_592->g_43[3].f0) & p_592->g_28[(l_139 + 4)]))), l_207)) , l_172)))), 0x54E2514E944683A1L)) | p_592->g_109)) == l_180), p_592->g_28[(l_139 + 1)])), p_592->g_28[(l_139 + 4)])) < 5UL))) == p_592->g_127), p_592->g_28[l_139])), l_156)) , p_592->g_127) < (-1L)) > l_139), 0xD67CL)) , (void*)0)) == (void*)0) , (void*)0);
        for (p_592->g_98 = 0; (p_592->g_98 <= 1); p_592->g_98 += 1)
        { /* block id: 88 */
            uint32_t *l_217 = &p_592->g_218;
            int16_t *l_226 = (void*)0;
            int16_t *l_227 = &p_592->g_70;
            int16_t **l_236[8];
            int i, j;
            for (i = 0; i < 8; i++)
                l_236[i] = &p_592->g_234;
            if (l_207)
                break;
            p_592->g_28[(l_139 + 4)] |= (safe_mul_func_uint8_t_u_u(((((*l_217) ^= l_172) , p_592->g_85) < (safe_mod_func_int16_t_s_s((safe_lshift_func_int16_t_s_u((0x9C59L & ((p_592->g_225 = ((safe_lshift_func_int16_t_s_s(p_592->g_109, 6)) , (void*)0)) != l_168)), 15)), ((*l_227) = p_592->g_98)))), (safe_rshift_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(l_207, (safe_lshift_func_int8_t_s_u(((l_237 = p_592->g_234) == &p_592->g_235[8]), 1)))), FAKE_DIVERGE(p_592->group_2_offset, get_group_id(2), 10)))));
        }
        for (l_157 = 0; (l_157 <= 1); l_157 += 1)
        { /* block id: 98 */
            int32_t * volatile l_238 = &l_170[2];/* VOLATILE GLOBAL l_238 */
            uint8_t *l_252 = (void*)0;
            uint8_t *l_253[1];
            int64_t *l_256 = &p_592->g_127;
            int32_t l_278[7][6][3] = {{{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL}},{{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL}},{{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL}},{{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL}},{{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL}},{{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL}},{{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL},{0x587FE98BL,0x587FE98BL,0x3BFA448FL}}};
            int i, j, k;
            for (i = 0; i < 1; i++)
                l_253[i] = &p_592->g_94;
            l_238 = p_592->g_128[l_139][(l_157 + 3)];
            if (((GROUP_DIVERGE(1, 1) && 0L) | ((safe_lshift_func_uint8_t_u_u((safe_rshift_func_int16_t_s_u((safe_mul_func_int16_t_s_s((*p_592->g_234), (safe_unary_minus_func_int8_t_s(((safe_lshift_func_uint16_t_u_u(((safe_rshift_func_int16_t_s_s((((l_254 |= (safe_rshift_func_uint8_t_u_s((p_592->g_28[(l_139 + 4)] , l_139), 6))) & l_139) , (l_255 == (p_51 == (((((void*)0 == l_256) != p_592->g_28[l_139]) == FAKE_DIVERGE(p_592->local_0_offset, get_local_id(0), 10)) , (void*)0)))), 11)) > 1UL), 0)) < l_170[2]))))), 14)), p_592->g_127)) || l_207)))
            { /* block id: 101 */
                int16_t *l_261[5];
                int32_t *l_266[4][3];
                uint64_t *l_267 = &l_207;
                uint32_t *l_272[4][2][10] = {{{&p_592->g_218,&p_592->g_218,&p_592->g_218,&p_592->g_218,(void*)0,(void*)0,&p_592->g_218,&p_592->g_218,&p_592->g_218,&p_592->g_218},{&p_592->g_218,&p_592->g_218,&p_592->g_218,&p_592->g_218,(void*)0,(void*)0,&p_592->g_218,&p_592->g_218,&p_592->g_218,&p_592->g_218}},{{&p_592->g_218,&p_592->g_218,&p_592->g_218,&p_592->g_218,(void*)0,(void*)0,&p_592->g_218,&p_592->g_218,&p_592->g_218,&p_592->g_218},{&p_592->g_218,&p_592->g_218,&p_592->g_218,&p_592->g_218,(void*)0,(void*)0,&p_592->g_218,&p_592->g_218,&p_592->g_218,&p_592->g_218}},{{&p_592->g_218,&p_592->g_218,&p_592->g_218,&p_592->g_218,(void*)0,(void*)0,&p_592->g_218,&p_592->g_218,&p_592->g_218,&p_592->g_218},{&p_592->g_218,&p_592->g_218,&p_592->g_218,&p_592->g_218,(void*)0,(void*)0,&p_592->g_218,&p_592->g_218,&p_592->g_218,&p_592->g_218}},{{&p_592->g_218,&p_592->g_218,&p_592->g_218,&p_592->g_218,(void*)0,(void*)0,&p_592->g_218,&p_592->g_218,&p_592->g_218,&p_592->g_218},{&p_592->g_218,&p_592->g_218,&p_592->g_218,&p_592->g_218,(void*)0,(void*)0,&p_592->g_218,&p_592->g_218,&p_592->g_218,&p_592->g_218}}};
                int8_t l_279 = 0x4DL;
                int i, j, k;
                for (i = 0; i < 5; i++)
                    l_261[i] = (void*)0;
                for (i = 0; i < 4; i++)
                {
                    for (j = 0; j < 3; j++)
                        l_266[i][j] = &l_170[(l_139 + 1)];
                }
                l_170[(l_139 + 1)] &= (safe_lshift_func_int16_t_s_u((p_592->g_28[3] || (((l_256 == (void*)0) == ((l_259 & p_592->g_260) > (p_592->g_70 &= (*p_592->g_234)))) <= (&l_255 != (((0L != (safe_mul_func_uint8_t_u_u(p_592->g_109, FAKE_DIVERGE(p_592->global_2_offset, get_global_id(2), 10)))) < 0UL) , (void*)0)))), 4));
                l_279 |= (((((*l_267)--) < (safe_sub_func_int32_t_s_s((8L != (++p_592->g_218)), p_592->g_94))) && ((((safe_add_func_uint32_t_u_u(((((p_592->g_28[l_139] = (p_592->g_218 = (((!(&p_592->g_127 != l_277)) , (0x44L || ((l_170[0] = (((l_157 != (p_592->g_28[l_139] > p_592->g_218)) & GROUP_DIVERGE(2, 1)) ^ l_171)) != l_172))) , 4294967295UL))) < (*p_592->g_129)) && (*p_592->g_234)) == 0xC6L), p_592->g_43[3].f0)) & l_278[3][4][0]) , p_592->g_70) , p_592->g_28[(l_139 + 1)])) || (*p_592->g_234));
            }
            else
            { /* block id: 110 */
                uint16_t *l_280 = &l_153;
                uint64_t *l_289 = &l_207;
                uint32_t *l_290[7][1][6] = {{{&p_592->g_218,(void*)0,&p_592->g_218,&p_592->g_218,&p_592->g_218,&p_592->g_218}},{{&p_592->g_218,(void*)0,&p_592->g_218,&p_592->g_218,&p_592->g_218,&p_592->g_218}},{{&p_592->g_218,(void*)0,&p_592->g_218,&p_592->g_218,&p_592->g_218,&p_592->g_218}},{{&p_592->g_218,(void*)0,&p_592->g_218,&p_592->g_218,&p_592->g_218,&p_592->g_218}},{{&p_592->g_218,(void*)0,&p_592->g_218,&p_592->g_218,&p_592->g_218,&p_592->g_218}},{{&p_592->g_218,(void*)0,&p_592->g_218,&p_592->g_218,&p_592->g_218,&p_592->g_218}},{{&p_592->g_218,(void*)0,&p_592->g_218,&p_592->g_218,&p_592->g_218,&p_592->g_218}}};
                int32_t l_295[2][9][6] = {{{(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)}},{{(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)},{(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)}}};
                int32_t l_296 = 0x6E25318AL;
                int i, j, k;
                l_278[6][5][0] = (((--(*l_280)) ^ ((FAKE_DIVERGE(p_592->global_2_offset, get_global_id(2), 10) <= (safe_lshift_func_int16_t_s_s(0x045BL, 13))) && (((*l_277) = (((safe_div_func_uint32_t_u_u(l_259, (safe_rshift_func_uint16_t_u_s((~FAKE_DIVERGE(p_592->global_0_offset, get_global_id(0), 10)), (((+(p_592->g_235[9] , ((*l_289) = 0x4DEC8AD6DF752B4EL))) >= (l_156 , (((l_290[4][0][5] == (((*p_592->g_234) < (+(safe_div_func_uint16_t_u_u(((safe_sub_func_int8_t_s_s((l_295[1][3][4] = l_170[2]), (((l_172 < 0x2581F7334F888573L) >= FAKE_DIVERGE(p_592->local_2_offset, get_local_id(2), 10)) <= p_592->g_85))) != FAKE_DIVERGE(p_592->group_2_offset, get_group_id(2), 10)), FAKE_DIVERGE(p_592->local_1_offset, get_local_id(1), 10))))) , p_592->g_128[l_139][(l_157 + 3)])) | 0x0EL) < l_278[3][4][0]))) | p_592->g_28[3]))))) || p_592->g_28[(l_139 + 4)]) , l_295[1][3][4])) > l_296))) | 0x5C25A6B1L);
            }
            for (l_254 = 0; (l_254 <= 9); l_254 += 1)
            { /* block id: 119 */
                uint32_t *l_299 = &p_592->g_218;
                (*p_592->g_112) |= ((l_157 , ((void*)0 != (*p_592->g_130))) <= ((*l_299) &= (safe_lshift_func_uint8_t_u_u(l_170[(l_139 + 1)], 1))));
            }
        }
    }
    return l_156;
}


/* ------------------------------------------ */
/* 
 * reads : p_592->g_67 p_592->g_28 p_592->g_43.f0 p_592->g_70 p_592->g_98 p_592->g_107 p_592->g_109 p_592->g_129 p_592->g_130 p_592->g_112
 * writes: p_592->g_67 p_592->g_70 p_592->g_85 p_592->g_94 p_592->g_98 p_592->g_107 p_592->g_109 p_592->g_28 p_592->g_112 p_592->g_127 p_592->g_128
 */
int32_t  func_55(int32_t * p_56, int32_t  p_57, int32_t  p_58, int32_t * p_59, int32_t * p_60, struct S1 * p_592)
{ /* block id: 14 */
    int16_t l_105 = 0x2C0FL;
    int64_t l_110 = 0x56DA29A6A910B13AL;
    int8_t *l_117[1][1][7] = {{{&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67,&p_592->g_67}}};
    int8_t **l_118 = &l_117[0][0][1];
    int8_t *l_119 = &p_592->g_67;
    uint16_t *l_126 = &p_592->g_85;
    int32_t *l_132[2][9] = {{&p_592->g_109,(void*)0,&p_592->g_109,&p_592->g_109,(void*)0,&p_592->g_109,&p_592->g_109,(void*)0,&p_592->g_109},{&p_592->g_109,(void*)0,&p_592->g_109,&p_592->g_109,(void*)0,&p_592->g_109,&p_592->g_109,(void*)0,&p_592->g_109}};
    int32_t **l_133[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint8_t l_134 = 0x99L;
    int i, j, k;
    for (p_592->g_67 = 0; (p_592->g_67 <= 24); p_592->g_67++)
    { /* block id: 17 */
        int32_t *l_74 = &p_592->g_28[3];
        uint16_t l_92 = 0x507BL;
        int32_t **l_111[7][5] = {{(void*)0,(void*)0,(void*)0,&l_74,(void*)0},{(void*)0,(void*)0,(void*)0,&l_74,(void*)0},{(void*)0,(void*)0,(void*)0,&l_74,(void*)0},{(void*)0,(void*)0,(void*)0,&l_74,(void*)0},{(void*)0,(void*)0,(void*)0,&l_74,(void*)0},{(void*)0,(void*)0,(void*)0,&l_74,(void*)0},{(void*)0,(void*)0,(void*)0,&l_74,(void*)0}};
        int i, j;
        if (p_592->g_28[5])
        { /* block id: 18 */
            p_592->g_70 = 0L;
        }
        else
        { /* block id: 20 */
            uint64_t l_73[1][3];
            int i, j;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 3; j++)
                    l_73[i][j] = 18446744073709551610UL;
            }
            if (p_592->g_43[3].f0)
                break;
            for (p_57 = 11; (p_57 >= (-8)); --p_57)
            { /* block id: 24 */
                int32_t **l_75 = &l_74;
                uint16_t *l_84 = &p_592->g_85;
                uint8_t *l_93 = &p_592->g_94;
                uint8_t *l_97 = &p_592->g_98;
                uint8_t *l_106 = &p_592->g_107;
                int32_t *l_108 = &p_592->g_109;
                for (p_592->g_70 = 4; (p_592->g_70 >= 1); p_592->g_70 -= 1)
                { /* block id: 27 */
                    int i;
                    l_73[0][0] &= p_592->g_28[p_592->g_70];
                    return p_592->g_67;
                }
                (*l_75) = l_74;
                l_110 = ((*l_108) |= ((safe_div_func_uint64_t_u_u(((((0x69BB0CEA4F543A9BL > ((safe_rshift_func_int8_t_s_s((safe_add_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_u((*l_74), ((*l_84) = p_592->g_28[3]))), ((*l_106) ^= (p_57 , ((+(safe_mod_func_int64_t_s_s(((((safe_add_func_uint8_t_u_u((p_592->g_28[3] , ((safe_mul_func_uint8_t_u_u(((*l_93) = l_92), 0x7FL)) >= ((((p_57 != (safe_lshift_func_uint16_t_u_u(((++(*l_97)) && (safe_sub_func_uint32_t_u_u((safe_rshift_func_int16_t_s_s(l_105, p_57)), (*l_74)))), p_57))) || 0x3C21L) , 0UL) < (-1L)))), p_57)) | p_57) < l_105) , p_58), FAKE_DIVERGE(p_592->global_1_offset, get_global_id(1), 10)))) == (**l_75)))))), 2)) | l_105)) , 0x3F56D1B7A171313FL) == l_73[0][0]) || 0x81FF1C73L), p_57)) || GROUP_DIVERGE(1, 1)));
                (*p_60) = p_592->g_67;
            }
        }
        p_592->g_112 = p_59;
    }
    (*p_592->g_129) &= (safe_add_func_int32_t_s_s(((*p_60) ^ ((l_110 , ((safe_rshift_func_int8_t_s_u((0x401CF63C109E68FEL > p_57), 3)) | (((*l_118) = l_117[0][0][5]) != l_119))) == (p_592->g_127 = (safe_add_func_uint8_t_u_u((((safe_rshift_func_uint8_t_u_u(((&p_60 == &p_592->g_112) >= ((*l_126) = (safe_rshift_func_int16_t_s_u(4L, 2)))), l_110)) , 0x72739EBEL) & (*p_60)), p_592->g_43[3].f0))))), (*p_59)));
    (*p_592->g_112) |= (p_592->g_130 != (void*)0);
    p_592->g_128[0][2] = l_132[0][0];
    return l_134;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j;
    struct S1 c_593;
    struct S1* p_592 = &c_593;
    struct S1 c_594 = {
        {0x17B722BAL,0x17B722BAL}, // p_592->g_17
        {3L,3L,3L,3L,3L,3L}, // p_592->g_28
        &p_592->g_28[3], // p_592->g_27
        {{3UL},{8UL},{3UL},{3UL},{8UL},{3UL},{3UL},{8UL},{3UL}}, // p_592->g_43
        0x76L, // p_592->g_67
        (-1L), // p_592->g_70
        0x8B87L, // p_592->g_85
        0xB5L, // p_592->g_94
        0x7FL, // p_592->g_98
        0x32L, // p_592->g_107
        0x567EB876L, // p_592->g_109
        &p_592->g_28[1], // p_592->g_112
        (-5L), // p_592->g_127
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_592->g_128
        &p_592->g_109, // p_592->g_129
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_592->g_131
        &p_592->g_131[0], // p_592->g_130
        (void*)0, // p_592->g_136
        &p_592->g_136, // p_592->g_135
        0xB7FEAD5EL, // p_592->g_218
        &p_592->g_67, // p_592->g_225
        {0x73E2L,(-2L),0x73E2L,0x73E2L,(-2L),0x73E2L,0x73E2L,(-2L),0x73E2L,0x73E2L}, // p_592->g_235
        &p_592->g_235[1], // p_592->g_234
        (-9L), // p_592->g_260
        0x685B977AL, // p_592->g_265
        {&p_592->g_265,&p_592->g_265,&p_592->g_265,&p_592->g_265,&p_592->g_265,&p_592->g_265,&p_592->g_265,&p_592->g_265}, // p_592->g_264
        0UL, // p_592->g_302
        0x53C9L, // p_592->g_354
        0x88L, // p_592->g_464
        {1UL}, // p_592->g_471
        65534UL, // p_592->g_492
        &p_592->g_471.f0, // p_592->g_517
        0x1DL, // p_592->g_552
        0x44L, // p_592->g_558
        65535UL, // p_592->g_559
        4294967288UL, // p_592->g_560
        {0UL}, // p_592->g_591
        sequence_input[get_global_id(0)], // p_592->global_0_offset
        sequence_input[get_global_id(1)], // p_592->global_1_offset
        sequence_input[get_global_id(2)], // p_592->global_2_offset
        sequence_input[get_local_id(0)], // p_592->local_0_offset
        sequence_input[get_local_id(1)], // p_592->local_1_offset
        sequence_input[get_local_id(2)], // p_592->local_2_offset
        sequence_input[get_group_id(0)], // p_592->group_0_offset
        sequence_input[get_group_id(1)], // p_592->group_1_offset
        sequence_input[get_group_id(2)], // p_592->group_2_offset
    };
    c_593 = c_594;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_592);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_592->g_17[i], "p_592->g_17[i]", print_hash_value);

    }
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_592->g_28[i], "p_592->g_28[i]", print_hash_value);

    }
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_592->g_43[i].f0, "p_592->g_43[i].f0", print_hash_value);

    }
    transparent_crc(p_592->g_67, "p_592->g_67", print_hash_value);
    transparent_crc(p_592->g_70, "p_592->g_70", print_hash_value);
    transparent_crc(p_592->g_85, "p_592->g_85", print_hash_value);
    transparent_crc(p_592->g_94, "p_592->g_94", print_hash_value);
    transparent_crc(p_592->g_98, "p_592->g_98", print_hash_value);
    transparent_crc(p_592->g_107, "p_592->g_107", print_hash_value);
    transparent_crc(p_592->g_109, "p_592->g_109", print_hash_value);
    transparent_crc(p_592->g_127, "p_592->g_127", print_hash_value);
    transparent_crc(p_592->g_218, "p_592->g_218", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_592->g_235[i], "p_592->g_235[i]", print_hash_value);

    }
    transparent_crc(p_592->g_260, "p_592->g_260", print_hash_value);
    transparent_crc(p_592->g_265, "p_592->g_265", print_hash_value);
    transparent_crc(p_592->g_302, "p_592->g_302", print_hash_value);
    transparent_crc(p_592->g_354, "p_592->g_354", print_hash_value);
    transparent_crc(p_592->g_464, "p_592->g_464", print_hash_value);
    transparent_crc(p_592->g_471.f0, "p_592->g_471.f0", print_hash_value);
    transparent_crc(p_592->g_492, "p_592->g_492", print_hash_value);
    transparent_crc(p_592->g_552, "p_592->g_552", print_hash_value);
    transparent_crc(p_592->g_558, "p_592->g_558", print_hash_value);
    transparent_crc(p_592->g_559, "p_592->g_559", print_hash_value);
    transparent_crc(p_592->g_560, "p_592->g_560", print_hash_value);
    transparent_crc(p_592->g_591.f0, "p_592->g_591.f0", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
