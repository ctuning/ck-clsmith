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
    int32_t g_3[4];
    VECTOR(uint16_t, 16) g_24;
    uint32_t g_32[2][9];
    volatile VECTOR(int32_t, 2) g_45;
    volatile VECTOR(uint16_t, 16) g_69;
    uint32_t g_78;
    int32_t * volatile g_94;
    volatile VECTOR(int32_t, 16) g_96;
    VECTOR(uint8_t, 2) g_101;
    volatile VECTOR(int32_t, 2) g_112;
    VECTOR(int16_t, 16) g_124;
    uint8_t g_127;
    union U1 g_141;
    union U1 g_157;
    volatile union U1 g_158;
    volatile struct S0 g_162;
    volatile struct S0 g_164;
    volatile struct S0 g_165;
    volatile struct S0 g_166;
    int64_t g_209[7];
    int64_t *g_208;
    VECTOR(uint64_t, 2) g_211;
    VECTOR(uint64_t, 2) g_212;
    VECTOR(uint16_t, 16) g_228;
    volatile VECTOR(uint16_t, 16) g_229;
    VECTOR(uint16_t, 4) g_232;
    uint32_t g_258;
    volatile VECTOR(int8_t, 4) g_279;
    VECTOR(int32_t, 4) g_298;
    int8_t g_301;
    int8_t g_303;
    int32_t *g_309;
    int32_t ** volatile g_308;
    int32_t ** volatile g_323;
    int32_t ** volatile g_324[3][7][9];
    int32_t ** volatile g_325[5][3];
    int32_t ** volatile *g_322[5][8];
    VECTOR(uint64_t, 8) g_352;
    int32_t *g_396[2];
    int64_t g_421;
    uint16_t *g_422;
    int32_t g_431[6][5][7];
    struct S0 g_432;
    struct S0 g_480;
    volatile VECTOR(int16_t, 4) g_490;
    int32_t *g_504;
    int8_t g_514;
    int64_t g_518[10][10][2];
    int32_t g_520[8];
    uint64_t g_521;
    volatile VECTOR(int16_t, 16) g_540;
    int8_t **g_553;
    int8_t *** volatile g_552;
    uint16_t *g_566;
    struct S0 g_571;
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
struct S0  func_1(struct S2 * p_572);
int32_t * func_19(int32_t * p_20, int64_t  p_21, int32_t * p_22, struct S2 * p_572);
union U1  func_25(int32_t * p_26, int32_t  p_27, int32_t  p_28, struct S2 * p_572);
int32_t * func_29(uint32_t  p_30, struct S2 * p_572);
int64_t  func_35(int64_t  p_36, uint32_t * p_37, uint8_t  p_38, uint64_t  p_39, struct S2 * p_572);
int32_t  func_47(int8_t  p_48, uint8_t  p_49, int32_t  p_50, int16_t  p_51, uint64_t  p_52, struct S2 * p_572);
int8_t  func_53(int32_t * p_54, int64_t  p_55, struct S2 * p_572);
int32_t * func_56(int32_t * p_57, struct S2 * p_572);
int16_t  func_63(int8_t  p_64, uint32_t  p_65, struct S2 * p_572);
uint8_t  func_71(uint32_t  p_72, struct S2 * p_572);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_572->g_32 p_572->g_432.f4 p_572->g_432.f5 p_572->g_94 p_572->g_3 p_572->g_480 p_572->g_352 p_572->g_211 p_572->g_504 p_572->g_432.f7 p_572->g_396 p_572->g_432.f0 p_572->g_521 p_572->g_24 p_572->g_157 p_572->g_520 p_572->g_552 p_572->g_279 p_572->g_422 p_572->g_566 p_572->g_101 p_572->g_571
 * writes: p_572->g_3 p_572->g_32 p_572->g_24 p_572->g_480.f3 p_572->g_432.f7 p_572->g_553 p_572->g_422 p_572->g_566
 */
struct S0  func_1(struct S2 * p_572)
{ /* block id: 4 */
    int32_t *l_2 = &p_572->g_3[1];
    int32_t *l_4 = (void*)0;
    int32_t *l_5 = &p_572->g_3[1];
    int32_t *l_6 = &p_572->g_3[1];
    int32_t *l_7 = &p_572->g_3[1];
    int32_t *l_8 = &p_572->g_3[1];
    int32_t *l_9 = (void*)0;
    int32_t *l_10 = &p_572->g_3[0];
    int32_t *l_11 = &p_572->g_3[1];
    int32_t *l_12[10][1] = {{&p_572->g_3[1]},{&p_572->g_3[1]},{&p_572->g_3[1]},{&p_572->g_3[1]},{&p_572->g_3[1]},{&p_572->g_3[1]},{&p_572->g_3[1]},{&p_572->g_3[1]},{&p_572->g_3[1]},{&p_572->g_3[1]}};
    int64_t l_13[3];
    uint32_t l_14 = 0x127A4EF2L;
    int32_t l_556[10][2] = {{0x1117FDFAL,1L},{0x1117FDFAL,1L},{0x1117FDFAL,1L},{0x1117FDFAL,1L},{0x1117FDFAL,1L},{0x1117FDFAL,1L},{0x1117FDFAL,1L},{0x1117FDFAL,1L},{0x1117FDFAL,1L},{0x1117FDFAL,1L}};
    int64_t l_559[8][3] = {{7L,7L,0x26ACAB1ABC84E6B9L},{7L,7L,0x26ACAB1ABC84E6B9L},{7L,7L,0x26ACAB1ABC84E6B9L},{7L,7L,0x26ACAB1ABC84E6B9L},{7L,7L,0x26ACAB1ABC84E6B9L},{7L,7L,0x26ACAB1ABC84E6B9L},{7L,7L,0x26ACAB1ABC84E6B9L},{7L,7L,0x26ACAB1ABC84E6B9L}};
    uint16_t **l_567[1];
    VECTOR(uint32_t, 2) l_570 = (VECTOR(uint32_t, 2))(0x11074D40L, 8UL);
    int i, j;
    for (i = 0; i < 3; i++)
        l_13[i] = 6L;
    for (i = 0; i < 1; i++)
        l_567[i] = &p_572->g_566;
    l_14--;
    for (l_14 = 0; (l_14 != 49); ++l_14)
    { /* block id: 8 */
        int32_t *l_23 = &p_572->g_3[1];
        int32_t *l_549 = (void*)0;
        int8_t *l_551 = &p_572->g_303;
        int8_t **l_550[5][9][3] = {{{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551}},{{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551}},{{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551}},{{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551}},{{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551},{&l_551,&l_551,&l_551}}};
        int i, j, k;
        (*l_7) = 0x57520C25L;
        l_549 = func_19(l_23, (((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(p_572->g_24.s83)), ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(0UL, 65535UL)).even, ((VECTOR(uint16_t, 2))(4UL, 1UL)), 0xC1C5L)), 0x5D74L, 0xC323L)).s1 >= (247UL > 255UL)), l_5, p_572);
        (*p_572->g_552) = l_550[0][1][0];
    }
    (*p_572->g_504) |= ((safe_add_func_int32_t_s_s(l_556[8][0], p_572->g_279.y)) < (safe_add_func_int32_t_s_s(l_559[6][2], (+(((safe_mul_func_uint16_t_u_u((safe_div_func_uint64_t_u_u((p_572->g_520[7] , 0x0AF8413FABE22C3BL), 1UL)), ((safe_rshift_func_int16_t_s_s(((p_572->g_422 = p_572->g_422) != (p_572->g_566 = p_572->g_566)), ((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 4))(rhadd(((VECTOR(int16_t, 16))(hadd(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0x1E51L, 5L)).yxyx)))))).wwzxzyzxxzzywxyx, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(rotate(((VECTOR(int16_t, 8))((-10L), ((safe_mod_func_int16_t_s_s((*l_8), 9L)) , (-1L)), ((VECTOR(int16_t, 4))(1L)), 5L, 0x1441L)).s4650562741667320, ((VECTOR(int16_t, 16))(0x07CDL))))))).s221c)))).hi)), ((VECTOR(int16_t, 2))(3L))))), ((VECTOR(int16_t, 4))(0x7CDBL)), 0x716BL, 5L)).hi)).yywzxwxzwzyyzxyz))).sd967, ((VECTOR(int16_t, 4))((-3L)))))), ((VECTOR(int16_t, 4))(0x5635L))))).x)) & l_570.x))) , 1UL) || p_572->g_101.x)))));
    return p_572->g_571;
}


/* ------------------------------------------ */
/* 
 * reads : p_572->g_32 p_572->g_45 p_572->g_69 p_572->g_78 p_572->g_3 p_572->g_24 p_572->g_94 p_572->g_96 p_572->g_157.f0 p_572->g_228 p_572->g_229 p_572->g_165.f5 p_572->g_232 p_572->g_208 p_572->g_209 p_572->g_164 p_572->g_258 p_572->g_308 p_572->g_309 p_572->g_127 p_572->g_322 p_572->g_212 p_572->g_124 p_572->g_323 p_572->g_352 p_572->g_166.f7 p_572->g_298 p_572->g_396 p_572->g_303 p_572->g_166.f1 p_572->g_101 p_572->g_421 p_572->g_422 p_572->g_431 p_572->g_432 p_572->g_480 p_572->g_490 p_572->g_279 p_572->g_211 p_572->g_504 p_572->g_520 p_572->g_521 p_572->g_540 p_572->g_157
 * writes: p_572->g_32 p_572->g_78 p_572->g_24 p_572->g_3 p_572->g_258 p_572->g_157.f1 p_572->g_101 p_572->g_127 p_572->g_301 p_572->g_303 p_572->g_309 p_572->g_141.f2 p_572->g_209 p_572->g_228 p_572->g_352 p_572->g_421 p_572->g_431 p_572->g_232 p_572->g_432.f6 p_572->g_480.f2 p_572->g_514 p_572->g_518 p_572->g_520 p_572->g_480.f3 p_572->g_432.f7
 */
int32_t * func_19(int32_t * p_20, int64_t  p_21, int32_t * p_22, struct S2 * p_572)
{ /* block id: 10 */
    uint32_t *l_31 = &p_572->g_32[0][7];
    int32_t l_505 = 0x6DD05B69L;
    int64_t *l_517 = &p_572->g_518[9][3][1];
    int32_t *l_519 = &p_572->g_520[7];
    (*p_572->g_504) = ((func_25(func_29(((*l_31)++), p_572), ((((((((VECTOR(uint64_t, 2))(0xEEC0234D11276302L, 18446744073709551611UL)).odd , ((((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 8))(((*l_519) ^= (l_505 < (l_505 >= ((*l_517) = (safe_mul_func_uint16_t_u_u(0xACD4L, (safe_div_func_uint16_t_u_u(((safe_lshift_func_int8_t_s_u((((p_572->g_504 != l_31) | 0x67L) || (safe_rshift_func_int16_t_s_u((p_572->g_514 = p_21), ((l_505 == 0L) != l_505)))), p_572->g_211.y)) , l_505), 0x2052L)))))))), ((VECTOR(int32_t, 4))(0x20E0F924L)), (-1L), 1L, 0x537FCF60L)), ((VECTOR(int32_t, 8))(0x6F5F75F2L))))).s15, ((VECTOR(int32_t, 2))(0L))))).hi ^ (*p_572->g_504)) , p_572->g_396[1])) != p_20) < 3UL) || p_572->g_432.f0) > l_505) ^ p_21), p_572->g_521, p_572) , p_21) || (*l_519));
    return p_22;
}


/* ------------------------------------------ */
/* 
 * reads : p_572->g_480.f3 p_572->g_540 p_572->g_352 p_572->g_24 p_572->g_432.f7 p_572->g_157
 * writes: p_572->g_480.f3 p_572->g_432.f7
 */
union U1  func_25(int32_t * p_26, int32_t  p_27, int32_t  p_28, struct S2 * p_572)
{ /* block id: 235 */
    int8_t l_526 = 0x22L;
    int32_t l_533 = (-9L);
    VECTOR(int16_t, 16) l_541 = (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 9L), 9L), 9L, 0L, 9L, (VECTOR(int16_t, 2))(0L, 9L), (VECTOR(int16_t, 2))(0L, 9L), 0L, 9L, 0L, 9L);
    int8_t *l_546[8] = {&l_526,&l_526,&l_526,&l_526,&l_526,&l_526,&l_526,&l_526};
    int32_t l_547 = 0x058C43BCL;
    int32_t l_548 = 0L;
    int i;
    for (p_572->g_480.f3 = 0; (p_572->g_480.f3 > 4); ++p_572->g_480.f3)
    { /* block id: 238 */
        (1 + 1);
    }
    l_548 ^= ((safe_add_func_uint16_t_u_u(l_526, (safe_mul_func_int8_t_s_s(((safe_add_func_int32_t_s_s(((l_547 &= ((l_533 ^= (-9L)) & ((safe_add_func_int64_t_s_s(0x577EB1CF757EE233L, (((0xC45EL > 0x44CDL) , (safe_div_func_int64_t_s_s(((safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 16))(clz(((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 4))(p_572->g_540.sa713)).odd, ((VECTOR(int16_t, 16))(l_541.sc45c7f012a986eb1)).s3d, ((VECTOR(int16_t, 2))(0x41F6L, 0L))))).xyxxxxxxxxxxxyyx))).se, (safe_div_func_int8_t_s_s(p_572->g_352.s7, p_572->g_352.s4)))) > (!(safe_div_func_int32_t_s_s(((*p_26) = (p_28 && l_541.s3)), 0x68ACDA1DL)))), l_541.sd))) ^ p_572->g_24.s5))) ^ p_28))) , (*p_26)), l_541.se)) <= 0UL), 1UL)))) & FAKE_DIVERGE(p_572->local_0_offset, get_local_id(0), 10));
    return p_572->g_157;
}


/* ------------------------------------------ */
/* 
 * reads : p_572->g_45 p_572->g_32 p_572->g_69 p_572->g_78 p_572->g_3 p_572->g_24 p_572->g_94 p_572->g_96 p_572->g_157.f0 p_572->g_228 p_572->g_229 p_572->g_165.f5 p_572->g_232 p_572->g_208 p_572->g_209 p_572->g_164 p_572->g_258 p_572->g_308 p_572->g_309 p_572->g_127 p_572->g_322 p_572->g_212 p_572->g_124 p_572->g_323 p_572->g_352 p_572->g_166.f7 p_572->g_298 p_572->g_396 p_572->g_303 p_572->g_166.f1 p_572->g_101 p_572->g_421 p_572->g_422 p_572->g_431 p_572->g_432 p_572->g_480 p_572->g_490 p_572->g_279 p_572->g_211 p_572->g_504
 * writes: p_572->g_78 p_572->g_24 p_572->g_3 p_572->g_258 p_572->g_157.f1 p_572->g_101 p_572->g_127 p_572->g_301 p_572->g_303 p_572->g_309 p_572->g_141.f2 p_572->g_209 p_572->g_228 p_572->g_352 p_572->g_421 p_572->g_431 p_572->g_232 p_572->g_432.f6 p_572->g_480.f2
 */
int32_t * func_29(uint32_t  p_30, struct S2 * p_572)
{ /* block id: 12 */
    VECTOR(int64_t, 16) l_42 = (VECTOR(int64_t, 16))(0x1DE2FC23FAAB93B5L, (VECTOR(int64_t, 4))(0x1DE2FC23FAAB93B5L, (VECTOR(int64_t, 2))(0x1DE2FC23FAAB93B5L, 0x0603003393D3B28CL), 0x0603003393D3B28CL), 0x0603003393D3B28CL, 0x1DE2FC23FAAB93B5L, 0x0603003393D3B28CL, (VECTOR(int64_t, 2))(0x1DE2FC23FAAB93B5L, 0x0603003393D3B28CL), (VECTOR(int64_t, 2))(0x1DE2FC23FAAB93B5L, 0x0603003393D3B28CL), 0x1DE2FC23FAAB93B5L, 0x0603003393D3B28CL, 0x1DE2FC23FAAB93B5L, 0x0603003393D3B28CL);
    VECTOR(int64_t, 4) l_43 = (VECTOR(int64_t, 4))(0x11E9056FF37E3B52L, (VECTOR(int64_t, 2))(0x11E9056FF37E3B52L, 0x3B39D90DC6CE91E4L), 0x3B39D90DC6CE91E4L);
    VECTOR(int32_t, 2) l_44 = (VECTOR(int32_t, 2))(0x64F81AA3L, 0L);
    VECTOR(int32_t, 2) l_46 = (VECTOR(int32_t, 2))((-1L), (-9L));
    int32_t *l_58 = &p_572->g_3[1];
    int32_t **l_442[10] = {&l_58,&l_58,&l_58,&l_58,&l_58,&l_58,&l_58,&l_58,&l_58,&l_58};
    int32_t *l_443 = &p_572->g_432.f5;
    int64_t *l_460 = &p_572->g_432.f4;
    int8_t l_461 = (-5L);
    uint8_t l_462 = 0x13L;
    int32_t l_503 = 0x46783CF1L;
    int i;
    l_503 ^= (func_35((safe_mod_func_int16_t_s_s(((VECTOR(int16_t, 16))(((((((*p_572->g_208) = ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(l_42.s330c)), 4L, 0x385FAE11B4C5108DL, (-10L), 0x5916FF7DD1A1FBCDL)).s2471573230055314, (int64_t)l_42.s4))).odd, ((VECTOR(int64_t, 2))(clz(((VECTOR(int64_t, 4))(l_43.yzyx)).lo))).yxyxxxyx))), 0x1D3FD5B128C85C7EL, ((VECTOR(int64_t, 4))(upsample(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(0L, 0x794618C4L)).yxxyyyyyxxyxyxyy)).s53c4)).hi, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(l_44.yxxyxxxyxxxyyxyx)).even)).s60))), 0x77A37477L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(p_572->g_45.yy)))).lo, 0x377EBEE9L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 4))(l_46.xxyx)).odd, ((VECTOR(int32_t, 2))((-5L), 0x4DA47519L))))).xyyx, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 16))((-1L), func_47(func_53(((*p_572->g_308) = (l_46.x , (l_443 = func_56(l_58, p_572)))), p_30, p_572), ((0x25FC669CL <= ((l_460 == l_460) && (-9L))) < p_30), p_30, l_461, l_462, p_572), ((VECTOR(int32_t, 8))(0x3AD084C4L)), ((VECTOR(int32_t, 2))(0x47203B88L)), 0L, ((VECTOR(int32_t, 2))(0x6F1B25B8L)), 0x21A9E5BDL)), ((VECTOR(int32_t, 16))(0x3022905EL))))))).s7d)).xyxy))).odd)), 0x55986C71L)).odd, ((VECTOR(uint32_t, 4))(4294967290UL))))), 3L, 1L, 0x36058B7B3C79BE6BL)).s3) , (*p_572->g_208)) < p_572->g_432.f4) <= 0L) | p_30), 0x2C45L, (*l_58), p_572->g_32[1][2], p_572->g_298.z, (-1L), p_572->g_96.s3, ((VECTOR(int16_t, 8))(4L)), (-1L))).sc, p_572->g_432.f4)), &p_572->g_32[1][4], p_572->g_432.f5, p_30, p_572) , p_30);
    return p_572->g_504;
}


/* ------------------------------------------ */
/* 
 * reads : p_572->g_94 p_572->g_3 p_572->g_480 p_572->g_352 p_572->g_490 p_572->g_232 p_572->g_279 p_572->g_432.f7 p_572->g_211
 * writes: p_572->g_3 p_572->g_480.f2 p_572->g_24
 */
int64_t  func_35(int64_t  p_36, uint32_t * p_37, uint8_t  p_38, uint64_t  p_39, struct S2 * p_572)
{ /* block id: 221 */
    VECTOR(int32_t, 8) l_473 = (VECTOR(int32_t, 8))(0x307F58C3L, (VECTOR(int32_t, 4))(0x307F58C3L, (VECTOR(int32_t, 2))(0x307F58C3L, 1L), 1L), 1L, 0x307F58C3L, 1L);
    int32_t *l_474 = (void*)0;
    int32_t *l_475[3];
    int32_t l_476 = (-9L);
    uint64_t l_477 = 0x71CB930806ED2DCDL;
    struct S0 *l_489 = (void*)0;
    VECTOR(int16_t, 4) l_491 = (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, (-5L)), (-5L));
    VECTOR(int16_t, 16) l_492 = (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x02D5L), 0x02D5L), 0x02D5L, (-1L), 0x02D5L, (VECTOR(int16_t, 2))((-1L), 0x02D5L), (VECTOR(int16_t, 2))((-1L), 0x02D5L), (-1L), 0x02D5L, (-1L), 0x02D5L);
    int16_t *l_493 = &p_572->g_480.f2;
    uint16_t *l_494 = (void*)0;
    uint16_t *l_495 = (void*)0;
    uint16_t *l_496 = (void*)0;
    uint16_t *l_497[3][2][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
    uint64_t *l_498 = (void*)0;
    uint64_t *l_499 = (void*)0;
    uint64_t *l_500 = &l_477;
    uint32_t l_501 = 0xF3B00D39L;
    int32_t l_502 = 0L;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_475[i] = &p_572->g_432.f7;
    (*p_572->g_94) |= ((VECTOR(int32_t, 16))(l_473.s5201252200543126)).s5;
    ++l_477;
    (*p_572->g_94) = p_39;
    l_501 &= (p_572->g_480 , (safe_lshift_func_int8_t_s_u(p_39, ((safe_div_func_uint8_t_u_u(((p_572->g_352.s5 == ((*l_500) = (safe_mod_func_uint64_t_u_u(p_36, ((safe_lshift_func_uint16_t_u_s((p_572->g_24.s4 = ((l_489 == &p_572->g_480) == (((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(hadd(((VECTOR(int16_t, 8))(safe_clamp_func(VECTOR(int16_t, 8),int16_t,((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 8))(0x5E12L, 0L, ((VECTOR(int16_t, 2))(0x6072L, 0x17F4L)), ((VECTOR(int16_t, 2))(p_572->g_490.yy)), 0L, (-5L))).s7011753702164517, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(0x1086L, ((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 4))(l_491.wxyz)).even, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(l_492.sf3589978)).s6670150425761214)).sde))), 0x1FB5L)).lo)).yyyyxxyyxyxyxxxy))).sec)).yxyyyxxy, (int16_t)p_572->g_232.z, (int16_t)(((*l_493) = p_572->g_279.w) <= p_572->g_432.f7)))).hi, ((VECTOR(int16_t, 4))(1L))))))).wyzzyxzxyyyxwzzz)).even)), (-4L), ((VECTOR(int16_t, 4))(0x1410L)), p_38, 1L, 0x14A9L)).odd)).s0 != 0L))), p_572->g_211.x)) | p_39))))) != 0x58L), p_572->g_480.f0)) ^ 4UL))));
    return l_502;
}


/* ------------------------------------------ */
/* 
 * reads : p_572->g_3
 * writes:
 */
int32_t  func_47(int8_t  p_48, uint8_t  p_49, int32_t  p_50, int16_t  p_51, uint64_t  p_52, struct S2 * p_572)
{ /* block id: 217 */
    int32_t *l_463 = &p_572->g_3[1];
    int32_t *l_464 = &p_572->g_432.f5;
    int32_t *l_465 = &p_572->g_432.f5;
    int32_t l_466 = (-1L);
    int32_t *l_467 = &p_572->g_3[1];
    int32_t *l_468 = (void*)0;
    int32_t *l_469[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint16_t l_470 = 0x2B17L;
    int i;
    l_470++;
    return (*l_467);
}


/* ------------------------------------------ */
/* 
 * reads : p_572->g_308 p_572->g_432.f6 p_572->g_78 p_572->g_164.f2 p_572->g_164.f7
 * writes: p_572->g_309 p_572->g_432.f6 p_572->g_78
 */
int8_t  func_53(int32_t * p_54, int64_t  p_55, struct S2 * p_572)
{ /* block id: 203 */
    int64_t l_448 = (-4L);
    int32_t *l_449 = &p_572->g_432.f5;
    int32_t *l_450 = &p_572->g_3[1];
    int32_t l_451 = (-6L);
    int32_t *l_452 = &p_572->g_432.f5;
    int32_t *l_453 = (void*)0;
    int32_t *l_454 = &p_572->g_3[2];
    int32_t l_455[3][3][8] = {{{0x44EE1213L,0L,0x44EE1213L,0x44EE1213L,0L,0x44EE1213L,0x44EE1213L,0L},{0x44EE1213L,0L,0x44EE1213L,0x44EE1213L,0L,0x44EE1213L,0x44EE1213L,0L},{0x44EE1213L,0L,0x44EE1213L,0x44EE1213L,0L,0x44EE1213L,0x44EE1213L,0L}},{{0x44EE1213L,0L,0x44EE1213L,0x44EE1213L,0L,0x44EE1213L,0x44EE1213L,0L},{0x44EE1213L,0L,0x44EE1213L,0x44EE1213L,0L,0x44EE1213L,0x44EE1213L,0L},{0x44EE1213L,0L,0x44EE1213L,0x44EE1213L,0L,0x44EE1213L,0x44EE1213L,0L}},{{0x44EE1213L,0L,0x44EE1213L,0x44EE1213L,0L,0x44EE1213L,0x44EE1213L,0L},{0x44EE1213L,0L,0x44EE1213L,0x44EE1213L,0L,0x44EE1213L,0x44EE1213L,0L},{0x44EE1213L,0L,0x44EE1213L,0x44EE1213L,0L,0x44EE1213L,0x44EE1213L,0L}}};
    int32_t *l_456[2][6] = {{&l_455[2][1][1],&l_455[2][1][1],&l_455[2][1][1],&l_455[2][1][1],&l_455[2][1][1],&l_455[2][1][1]},{&l_455[2][1][1],&l_455[2][1][1],&l_455[2][1][1],&l_455[2][1][1],&l_455[2][1][1],&l_455[2][1][1]}};
    uint8_t l_457 = 1UL;
    int i, j, k;
    (*p_572->g_308) = p_54;
    for (p_572->g_432.f6 = 0; (p_572->g_432.f6 > 17); p_572->g_432.f6++)
    { /* block id: 207 */
        for (p_572->g_78 = (-23); (p_572->g_78 >= 39); p_572->g_78 = safe_add_func_int16_t_s_s(p_572->g_78, 4))
        { /* block id: 210 */
            return p_572->g_164.f2;
        }
        if (l_448)
            break;
    }
    --l_457;
    return p_572->g_164.f7;
}


/* ------------------------------------------ */
/* 
 * reads : p_572->g_32 p_572->g_69 p_572->g_78 p_572->g_3 p_572->g_24 p_572->g_94 p_572->g_96 p_572->g_157.f0 p_572->g_228 p_572->g_229 p_572->g_165.f5 p_572->g_232 p_572->g_208 p_572->g_209 p_572->g_164 p_572->g_258 p_572->g_308 p_572->g_309 p_572->g_127 p_572->g_45 p_572->g_322 p_572->g_212 p_572->g_124 p_572->g_323 p_572->g_352 p_572->g_166.f7 p_572->g_298 p_572->g_396 p_572->g_303 p_572->g_166.f1 p_572->g_101 p_572->g_421 p_572->g_422 p_572->g_431 p_572->g_432
 * writes: p_572->g_78 p_572->g_24 p_572->g_3 p_572->g_258 p_572->g_157.f1 p_572->g_101 p_572->g_127 p_572->g_301 p_572->g_303 p_572->g_309 p_572->g_141.f2 p_572->g_209 p_572->g_228 p_572->g_352 p_572->g_421 p_572->g_431 p_572->g_232
 */
int32_t * func_56(int32_t * p_57, struct S2 * p_572)
{ /* block id: 13 */
    VECTOR(uint16_t, 8) l_68 = (VECTOR(uint16_t, 8))(0x0970L, (VECTOR(uint16_t, 4))(0x0970L, (VECTOR(uint16_t, 2))(0x0970L, 0UL), 0UL), 0UL, 0x0970L, 0UL);
    VECTOR(uint16_t, 8) l_70 = (VECTOR(uint16_t, 8))(0x072EL, (VECTOR(uint16_t, 4))(0x072EL, (VECTOR(uint16_t, 2))(0x072EL, 0xFFC0L), 0xFFC0L), 0xFFC0L, 0x072EL, 0xFFC0L);
    VECTOR(uint16_t, 16) l_230 = (VECTOR(uint16_t, 16))(2UL, (VECTOR(uint16_t, 4))(2UL, (VECTOR(uint16_t, 2))(2UL, 0x1226L), 0x1226L), 0x1226L, 2UL, 0x1226L, (VECTOR(uint16_t, 2))(2UL, 0x1226L), (VECTOR(uint16_t, 2))(2UL, 0x1226L), 2UL, 0x1226L, 2UL, 0x1226L);
    VECTOR(uint16_t, 2) l_231 = (VECTOR(uint16_t, 2))(9UL, 0x3919L);
    VECTOR(uint16_t, 4) l_233 = (VECTOR(uint16_t, 4))(3UL, (VECTOR(uint16_t, 2))(3UL, 0UL), 0UL);
    VECTOR(uint16_t, 8) l_234 = (VECTOR(uint16_t, 8))(0xF185L, (VECTOR(uint16_t, 4))(0xF185L, (VECTOR(uint16_t, 2))(0xF185L, 0x6411L), 0x6411L), 0x6411L, 0xF185L, 0x6411L);
    int32_t l_237 = 0x1F6BE0B2L;
    int32_t l_254 = 0x39045618L;
    VECTOR(int32_t, 8) l_255 = (VECTOR(int32_t, 8))(0x0522C3BDL, (VECTOR(int32_t, 4))(0x0522C3BDL, (VECTOR(int32_t, 2))(0x0522C3BDL, 0x57367F99L), 0x57367F99L), 0x57367F99L, 0x0522C3BDL, 0x57367F99L);
    VECTOR(int32_t, 4) l_362 = (VECTOR(int32_t, 4))((-2L), (VECTOR(int32_t, 2))((-2L), (-1L)), (-1L));
    int8_t l_387 = (-9L);
    int32_t **l_395 = &p_572->g_309;
    uint16_t *l_423[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int i;
    if ((safe_lshift_func_int8_t_s_s((safe_sub_func_int16_t_s_s((~((VECTOR(int16_t, 8))(func_63((~((safe_add_func_uint16_t_u_u((((VECTOR(uint16_t, 4))(sub_sat(((VECTOR(uint16_t, 2))(sub_sat(((VECTOR(uint16_t, 4))(l_68.s4533)).hi, ((VECTOR(uint16_t, 16))(p_572->g_32[0][4], l_68.s4, ((VECTOR(uint16_t, 8))(p_572->g_69.s1a03dc57)), 0x1EE5L, 0x2BDFL, 0UL, ((VECTOR(uint16_t, 2))(4UL, 65535UL)), 0xDCCEL)).sb0))).xyyy, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(max(((VECTOR(uint16_t, 16))(1UL, ((VECTOR(uint16_t, 4))(abs(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(65531UL, 2UL)), 0xB8BCL, ((VECTOR(uint16_t, 2))(l_70.s21)), ((VECTOR(uint16_t, 2))(65529UL, 65535UL)), 0UL, 65529UL, 1UL, 65535UL, (GROUP_DIVERGE(2, 1) < func_71((l_68.s2 & (p_57 == (void*)0)), p_572)), 1UL, ((VECTOR(uint16_t, 2))(mul_hi(((VECTOR(uint16_t, 2))(p_572->g_228.s2b)), ((VECTOR(uint16_t, 4))(p_572->g_229.s37f3)).odd))), 0xDF30L)).s7d05)), 7UL, p_572->g_165.f5, 1UL, 7UL)).hi))), 65535UL, ((VECTOR(uint16_t, 8))(sub_sat(((VECTOR(uint16_t, 8))(0UL, 1UL, ((VECTOR(uint16_t, 2))(l_230.s86)), 1UL, ((VECTOR(uint16_t, 2))(65530UL, 0x2F68L)), 1UL)), ((VECTOR(uint16_t, 8))(max(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(0xC7C8L, 0x40B1L)))), ((VECTOR(uint16_t, 2))(l_231.xx)), 1UL, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(p_572->g_232.wy)).xyxx)).hi)), 65535UL)), ((VECTOR(uint16_t, 2))(l_233.wx)).xxyxyxxy)))))).s7, 0xDAE9L, ((VECTOR(uint16_t, 8))(l_234.s47421525)))).sae42, (uint16_t)(safe_lshift_func_uint8_t_u_u(((((void*)0 == p_57) || l_70.s3) && (*p_572->g_94)), 4))))).even)).xyxy))).x > 0xB57EL), p_572->g_32[1][0])) <= 0x5E2C5261L)), l_237, p_572), l_231.y, 0x276AL, 0x6EF8L, ((VECTOR(int16_t, 2))(0x6299L)), (-5L), 1L)).s3), 0x27DDL)), 2)))
    { /* block id: 92 */
        int64_t l_248 = (-1L);
        int32_t *l_249 = (void*)0;
        int32_t *l_250 = &p_572->g_3[1];
        int32_t *l_251 = (void*)0;
        int32_t *l_252 = &p_572->g_3[2];
        int32_t *l_253[4][5][3] = {{{&p_572->g_3[1],&p_572->g_3[1],(void*)0},{&p_572->g_3[1],&p_572->g_3[1],(void*)0},{&p_572->g_3[1],&p_572->g_3[1],(void*)0},{&p_572->g_3[1],&p_572->g_3[1],(void*)0},{&p_572->g_3[1],&p_572->g_3[1],(void*)0}},{{&p_572->g_3[1],&p_572->g_3[1],(void*)0},{&p_572->g_3[1],&p_572->g_3[1],(void*)0},{&p_572->g_3[1],&p_572->g_3[1],(void*)0},{&p_572->g_3[1],&p_572->g_3[1],(void*)0},{&p_572->g_3[1],&p_572->g_3[1],(void*)0}},{{&p_572->g_3[1],&p_572->g_3[1],(void*)0},{&p_572->g_3[1],&p_572->g_3[1],(void*)0},{&p_572->g_3[1],&p_572->g_3[1],(void*)0},{&p_572->g_3[1],&p_572->g_3[1],(void*)0},{&p_572->g_3[1],&p_572->g_3[1],(void*)0}},{{&p_572->g_3[1],&p_572->g_3[1],(void*)0},{&p_572->g_3[1],&p_572->g_3[1],(void*)0},{&p_572->g_3[1],&p_572->g_3[1],(void*)0},{&p_572->g_3[1],&p_572->g_3[1],(void*)0},{&p_572->g_3[1],&p_572->g_3[1],(void*)0}}};
        int16_t l_256 = (-3L);
        int32_t l_257 = 0x11AB666EL;
        uint8_t *l_263 = &p_572->g_127;
        int i, j, k;
        p_572->g_258++;
        (*p_572->g_94) |= (safe_lshift_func_int16_t_s_u(((void*)0 != l_263), l_255.s5));
    }
    else
    { /* block id: 95 */
        int32_t *l_266 = &l_254;
        VECTOR(uint16_t, 4) l_286 = (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 1UL), 1UL);
        int32_t *l_307 = &p_572->g_3[1];
        int32_t l_357 = (-1L);
        int8_t *l_415[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int64_t *l_420 = &p_572->g_421;
        int32_t *l_430 = &p_572->g_431[1][2][2];
        int64_t *l_440 = &p_572->g_432.f4;
        int64_t **l_439 = &l_440;
        int32_t *l_441 = &l_357;
        int i;
        if (((safe_lshift_func_int8_t_s_u((l_68.s1 , l_234.s2), 4)) >= p_572->g_228.sf))
        { /* block id: 96 */
            int32_t **l_267 = &l_266;
            (*l_267) = l_266;
        }
        else
        { /* block id: 98 */
            int64_t l_299 = 0x3894175BA6969E23L;
            int8_t l_341 = 0x30L;
            struct S0 *l_343 = (void*)0;
            int32_t **l_398[5];
            int i;
            for (i = 0; i < 5; i++)
                l_398[i] = &p_572->g_396[1];
            for (l_254 = 0; (l_254 <= (-22)); l_254--)
            { /* block id: 101 */
                int16_t *l_277[1];
                int32_t l_304[1];
                uint32_t l_317 = 0UL;
                int64_t l_340 = 0x01AB742920C29191L;
                int i;
                for (i = 0; i < 1; i++)
                    l_277[i] = (void*)0;
                for (i = 0; i < 1; i++)
                    l_304[i] = (-1L);
                for (p_572->g_157.f1 = (-21); (p_572->g_157.f1 > 29); p_572->g_157.f1 = safe_add_func_uint32_t_u_u(p_572->g_157.f1, 5))
                { /* block id: 104 */
                    uint32_t l_274 = 1UL;
                    int32_t l_297 = 2L;
                    for (p_572->g_78 = (-27); (p_572->g_78 < 29); p_572->g_78 = safe_add_func_int64_t_s_s(p_572->g_78, 8))
                    { /* block id: 107 */
                        int16_t **l_278 = &l_277[0];
                        int32_t l_284 = 0x74713683L;
                        int8_t *l_300 = &p_572->g_301;
                        int8_t *l_302 = &p_572->g_303;
                        (*p_57) &= l_274;
                        (*p_57) = ((GROUP_DIVERGE(2, 1) , ((safe_rshift_func_int16_t_s_s((((*l_302) = ((*l_300) = ((((*l_278) = l_277[0]) != (void*)0) , (((VECTOR(int8_t, 2))(p_572->g_279.wx)).even > (safe_sub_func_int16_t_s_s((safe_add_func_int8_t_s_s((l_284 , (safe_unary_minus_func_uint16_t_u(((VECTOR(uint16_t, 2))(l_286.zy)).odd))), (safe_rshift_func_int8_t_s_s(((((safe_lshift_func_int16_t_s_u((safe_mul_func_int8_t_s_s(((safe_mul_func_uint8_t_u_u(p_572->g_3[1], (p_572->g_127 = (p_572->g_101.x = l_297)))) && ((VECTOR(int32_t, 8))(0x2B3C6477L, ((VECTOR(int32_t, 2))(0x36B64D6CL, 0x099F71D8L)), ((VECTOR(int32_t, 2))(p_572->g_298.xz)), 0x14D08F56L, (-1L), 0x37DCC947L)).s0), p_572->g_228.s6)), l_284)) <= (l_254 <= l_299)) | 0x17C18AAA2D92B3A2L) <= l_299), 3)))), l_284)))))) > l_304[0]), p_572->g_24.s3)) <= 0x5BL)) ^ 0L);
                    }
                }
                for (p_572->g_78 = 0; (p_572->g_78 <= 40); p_572->g_78 = safe_add_func_uint32_t_u_u(p_572->g_78, 2))
                { /* block id: 119 */
                    (*p_572->g_308) = l_307;
                    for (p_572->g_141.f2 = (-27); (p_572->g_141.f2 >= 17); p_572->g_141.f2++)
                    { /* block id: 123 */
                        int32_t *l_312 = &l_304[0];
                        if ((*p_57))
                            break;
                        (*l_312) &= (**p_572->g_308);
                    }
                }
                for (p_572->g_127 = 9; (p_572->g_127 < 32); ++p_572->g_127)
                { /* block id: 130 */
                    for (l_299 = 0; (l_299 <= (-4)); --l_299)
                    { /* block id: 133 */
                        if ((*p_57))
                            break;
                        if ((*p_57))
                            continue;
                        return (*p_572->g_308);
                    }
                    if (l_317)
                        continue;
                    if ((*p_57))
                        continue;
                    (*p_572->g_308) = (*p_572->g_308);
                }
                for (p_572->g_127 = (-17); (p_572->g_127 > 3); p_572->g_127 = safe_add_func_int8_t_s_s(p_572->g_127, 5))
                { /* block id: 144 */
                    VECTOR(int8_t, 4) l_330 = (VECTOR(int8_t, 4))(0x2FL, (VECTOR(int8_t, 2))(0x2FL, 0x65L), 0x65L);
                    int32_t *l_331 = &p_572->g_157.f2;
                    int32_t *l_332 = (void*)0;
                    int32_t *l_333 = &p_572->g_141.f2;
                    int32_t *l_334 = (void*)0;
                    int32_t *l_335 = (void*)0;
                    int32_t *l_336 = &p_572->g_157.f2;
                    int32_t *l_337 = &l_237;
                    int8_t *l_338 = (void*)0;
                    int8_t *l_339[3][4][5] = {{{&p_572->g_303,&p_572->g_303,&p_572->g_303,&p_572->g_303,&p_572->g_303},{&p_572->g_303,&p_572->g_303,&p_572->g_303,&p_572->g_303,&p_572->g_303},{&p_572->g_303,&p_572->g_303,&p_572->g_303,&p_572->g_303,&p_572->g_303},{&p_572->g_303,&p_572->g_303,&p_572->g_303,&p_572->g_303,&p_572->g_303}},{{&p_572->g_303,&p_572->g_303,&p_572->g_303,&p_572->g_303,&p_572->g_303},{&p_572->g_303,&p_572->g_303,&p_572->g_303,&p_572->g_303,&p_572->g_303},{&p_572->g_303,&p_572->g_303,&p_572->g_303,&p_572->g_303,&p_572->g_303},{&p_572->g_303,&p_572->g_303,&p_572->g_303,&p_572->g_303,&p_572->g_303}},{{&p_572->g_303,&p_572->g_303,&p_572->g_303,&p_572->g_303,&p_572->g_303},{&p_572->g_303,&p_572->g_303,&p_572->g_303,&p_572->g_303,&p_572->g_303},{&p_572->g_303,&p_572->g_303,&p_572->g_303,&p_572->g_303,&p_572->g_303},{&p_572->g_303,&p_572->g_303,&p_572->g_303,&p_572->g_303,&p_572->g_303}}};
                    int32_t **l_342 = &p_572->g_309;
                    int i, j, k;
                    (*p_57) &= (((p_572->g_45.y < (l_340 = (safe_sub_func_uint8_t_u_u((p_572->g_322[0][7] != (((*l_337) &= (~((((*p_572->g_208) ^= (safe_add_func_uint8_t_u_u((p_572->g_212.y | p_572->g_228.sc), 1L))) > (safe_lshift_func_int16_t_s_s((((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(l_330.ywzzwyzwwzyyzyxx)).s4644)).z != 1UL), 7))) >= p_572->g_124.sb))) , p_572->g_322[0][7])), l_230.s5)))) | l_341) < l_341);
                    (*l_342) = (*p_572->g_323);
                }
            }
            if (((+(l_341 >= (l_343 != &p_572->g_166))) ^ (p_572->g_164.f6 <= ((safe_div_func_int8_t_s_s((safe_sub_func_uint64_t_u_u((safe_sub_func_int64_t_s_s(l_299, (*p_572->g_208))), (safe_lshift_func_int16_t_s_u((+p_572->g_209[2]), 3)))), ((p_572->g_228.s8 = 65535UL) && ((VECTOR(int16_t, 2))(0x790EL, 0x73D3L)).even))) >= ((VECTOR(uint64_t, 2))(p_572->g_352.s56)).hi))))
            { /* block id: 153 */
                VECTOR(int16_t, 16) l_358 = (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x409AL), 0x409AL), 0x409AL, 0L, 0x409AL, (VECTOR(int16_t, 2))(0L, 0x409AL), (VECTOR(int16_t, 2))(0L, 0x409AL), 0L, 0x409AL, 0L, 0x409AL);
                int i;
                for (l_299 = 0; (l_299 < (-24)); l_299 = safe_sub_func_int64_t_s_s(l_299, 1))
                { /* block id: 156 */
                    int32_t *l_355 = (void*)0;
                    int32_t *l_356[6];
                    uint32_t l_359 = 4294967291UL;
                    uint64_t *l_375 = (void*)0;
                    uint64_t *l_376 = (void*)0;
                    uint64_t *l_377 = (void*)0;
                    uint64_t *l_378[3][7] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                    int8_t *l_388[4] = {&l_387,&l_387,&l_387,&l_387};
                    int i, j;
                    for (i = 0; i < 6; i++)
                        l_356[i] = (void*)0;
                    --l_359;
                    (*p_57) = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_362.wz)), 6L, 0L, (safe_rshift_func_uint16_t_u_s((safe_mul_func_uint16_t_u_u(((p_572->g_303 = (safe_add_func_int8_t_s_s(((safe_lshift_func_uint16_t_u_s((p_572->g_166.f7 & (((*l_266) &= (safe_mul_func_uint8_t_u_u((safe_mul_func_int16_t_s_s(l_358.sf, 65527UL)), (-1L)))) == (*p_57))), 14)) ^ (0x589837B8L <= (-5L))), ((((((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(5UL, ((p_572->g_352.s2 = 0x02108343E9715897L) , ((safe_div_func_int16_t_s_s((safe_sub_func_int64_t_s_s((safe_add_func_int8_t_s_s(((safe_div_func_int8_t_s_s(l_233.y, 247UL)) == l_358.s5), 0L)), l_358.s8)), p_572->g_209[1])) != p_572->g_3[3])), 6UL, 4294967295UL)).zwzwwyywywwzywzx)).s6 , p_572->g_32[0][7]) , p_572->g_298.z) , l_387) && 0x39D88D5744F136CDL)))) == FAKE_DIVERGE(p_572->group_0_offset, get_group_id(0), 10)), l_358.s4)), p_572->g_298.w)), ((VECTOR(int32_t, 2))(0x58506DACL)), (*p_57), 3L, l_234.s7, 0x40C17E8FL, ((VECTOR(int32_t, 4))(7L)), 0x341B49FBL)).s4;
                    (*l_266) &= ((*l_307) = (*p_572->g_94));
                    for (l_254 = 0; (l_254 < 26); l_254++)
                    { /* block id: 166 */
                        (*l_307) = (-6L);
                        if (l_358.s4)
                            continue;
                        l_357 &= (*p_57);
                    }
                }
                for (p_572->g_127 = 0; (p_572->g_127 != 2); p_572->g_127 = safe_add_func_uint32_t_u_u(p_572->g_127, 8))
                { /* block id: 174 */
                    if ((*p_572->g_94))
                        break;
                }
                return p_57;
            }
            else
            { /* block id: 178 */
                int32_t *l_397 = (void*)0;
                for (l_357 = 26; (l_357 == (-5)); l_357 = safe_sub_func_int8_t_s_s(l_357, 4))
                { /* block id: 181 */
                    if ((*p_57))
                        break;
                    (*l_266) |= (((FAKE_DIVERGE(p_572->global_2_offset, get_global_id(2), 10) , l_395) == &p_57) , (*p_57));
                    return p_572->g_396[1];
                }
                l_397 = ((*l_395) = p_57);
            }
            p_57 = ((*l_395) = p_57);
        }
        (*l_307) = (((safe_rshift_func_int8_t_s_s((safe_add_func_uint64_t_u_u(((safe_lshift_func_uint16_t_u_s((safe_lshift_func_int8_t_s_u(((safe_rshift_func_uint8_t_u_u((*l_266), p_572->g_303)) == (safe_add_func_uint8_t_u_u((safe_add_func_uint16_t_u_u(p_572->g_166.f1, (safe_sub_func_uint32_t_u_u((((p_572->g_232.w , (p_572->g_101.x <= (*l_307))) , (p_572->g_301 = p_572->g_228.s1)) == 0x70L), (((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(upsample(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(247UL, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(mad_hi(((VECTOR(uint8_t, 8))(safe_clamp_func(VECTOR(uint8_t, 8),uint8_t,((VECTOR(uint8_t, 4))(p_572->g_228.sc, 255UL, 0UL, 0UL)).wzxyxzyz, (uint8_t)FAKE_DIVERGE(p_572->global_2_offset, get_global_id(2), 10), (uint8_t)247UL))), ((VECTOR(uint8_t, 8))(0UL)), ((VECTOR(uint8_t, 8))(255UL))))).even)), ((VECTOR(uint8_t, 2))(1UL)), 0x70L)).s63)).xyxx, ((VECTOR(uint8_t, 4))(0UL))))), 65535UL, 0x3E5AL, 1UL, 6UL)).s7 > p_572->g_124.sd))))), 0x84L))), 6)), (*l_307))) <= (*l_307)), (*l_307))), 6)) & (*l_266)) < p_572->g_124.sd);
        (*l_441) ^= (safe_mul_func_uint16_t_u_u((safe_mod_func_int64_t_s_s((((*l_420) ^= (*p_572->g_208)) & (p_572->g_422 == l_423[4])), 18446744073709551615UL)), (safe_add_func_uint8_t_u_u((safe_rshift_func_int16_t_s_s((*l_307), ((safe_mod_func_uint64_t_u_u((((*l_430) ^= p_572->g_228.s0) , ((VECTOR(uint64_t, 2))(rotate(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))((p_572->g_432 , ((((((0x54C8L > (--p_572->g_232.y)) >= ((safe_add_func_uint8_t_u_u((((*l_439) = l_420) == (void*)0), (*l_307))) < l_70.s4)) && (*l_307)) == (*l_307)) < (*p_57)) && p_572->g_232.z)), (*l_266), (*l_266), ((VECTOR(uint64_t, 2))(0x1741E0170B06EC11L)), 0x22E41362C9D94ED5L, 3UL, 0xDF4A0D5348FDDF11L)).s0417433630645416)).sd3be)).lo)), ((VECTOR(uint64_t, 2))(4UL))))).hi), p_572->g_24.sa)) , (*l_266)))), l_237))));
    }
    return p_57;
}


/* ------------------------------------------ */
/* 
 * reads : p_572->g_208 p_572->g_209 p_572->g_164 p_572->g_69 p_572->g_24 p_572->g_32
 * writes:
 */
int16_t  func_63(int8_t  p_64, uint32_t  p_65, struct S2 * p_572)
{ /* block id: 89 */
    uint32_t l_244 = 4294967295UL;
    uint32_t l_245 = 4294967293UL;
    uint8_t *l_246[10];
    int32_t l_247 = (-6L);
    int i;
    for (i = 0; i < 10; i++)
        l_246[i] = &p_572->g_127;
    l_247 = ((-1L) ^ (safe_mod_func_uint16_t_u_u((&p_572->g_127 != (((((*p_572->g_208) <= ((p_572->g_164 , &p_572->g_166) == (void*)0)) , p_572->g_69.s1) >= (((safe_div_func_int16_t_s_s(p_572->g_24.s7, (safe_mod_func_uint16_t_u_u(l_244, l_245)))) < p_64) > 0x9E2AL)) , l_246[6])), p_572->g_32[0][7])));
    return p_65;
}


/* ------------------------------------------ */
/* 
 * reads : p_572->g_32 p_572->g_78 p_572->g_69 p_572->g_3 p_572->g_24 p_572->g_94 p_572->g_96 p_572->g_157.f0
 * writes: p_572->g_78 p_572->g_24 p_572->g_3
 */
uint8_t  func_71(uint32_t  p_72, struct S2 * p_572)
{ /* block id: 14 */
    uint32_t *l_77 = &p_572->g_78;
    int32_t l_83 = (-3L);
    VECTOR(int64_t, 4) l_88 = (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, (-1L)), (-1L));
    int32_t *l_90 = (void*)0;
    int32_t **l_89 = &l_90;
    uint32_t l_91 = 0xBA6EED5AL;
    uint16_t *l_92 = (void*)0;
    uint16_t *l_93 = (void*)0;
    VECTOR(int32_t, 2) l_95 = (VECTOR(int32_t, 2))(0x5B14AB0DL, (-10L));
    VECTOR(int32_t, 4) l_102 = (VECTOR(int32_t, 4))(0x170005B7L, (VECTOR(int32_t, 2))(0x170005B7L, 0L), 0L);
    int16_t l_128 = 0x0E8FL;
    int16_t l_180 = 0x3033L;
    int64_t *l_210 = &p_572->g_209[6];
    int64_t *l_213 = (void*)0;
    int i;
    (*p_572->g_94) = (p_72 ^ ((p_572->g_32[1][5] != (~((p_572->g_24.s8 = (safe_mul_func_uint8_t_u_u((safe_sub_func_uint32_t_u_u(((*l_77) ^= 0xAC200E08L), p_572->g_69.se)), (((GROUP_DIVERGE(1, 1) > (safe_rshift_func_int16_t_s_u(p_72, ((safe_lshift_func_int16_t_s_u(((1L | ((l_83 &= FAKE_DIVERGE(p_572->local_0_offset, get_local_id(0), 10)) ^ (safe_mul_func_int16_t_s_s(p_572->g_3[2], (safe_sub_func_int64_t_s_s(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(min(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(l_88.wz)))).xxyxxxxy)))).s5263303652350064)).s59, (int64_t)(((*l_89) = l_77) == (void*)0)))))).yyyy)).w, p_572->g_32[0][1])))))) , p_72), l_91)) > GROUP_DIVERGE(1, 1))))) , p_572->g_24.sa) , p_572->g_3[2])))) < p_72))) , (*l_90)));
    (**l_89) = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 8))(l_95.xyyyxxyx)).s23, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 4))(p_572->g_96.sbd0f)).odd, ((VECTOR(int32_t, 8))((-7L), 0x046250C5L, ((VECTOR(int32_t, 2))(0x7CDA8B21L, (-1L))), ((VECTOR(int32_t, 2))(0x22B5784CL, (-1L))), (-1L), 0x5660F8D1L)).s06))).yxyyyxxy)).s15))).yxxyyxxyxyyxyxxx)).sd;
    for (l_83 = 16; (l_83 != 2); --l_83)
    { /* block id: 23 */
        uint32_t l_103 = 0x08331434L;
        int32_t **l_119 = &l_90;
        VECTOR(int16_t, 2) l_125 = (VECTOR(int16_t, 2))(0x42A3L, 0L);
        uint8_t *l_126 = &p_572->g_127;
        int64_t *l_129 = (void*)0;
        int64_t *l_130 = (void*)0;
        int64_t *l_131 = (void*)0;
        int64_t *l_132[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t l_133 = 0x060409B1L;
        VECTOR(uint16_t, 16) l_139 = (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0xCC65L), 0xCC65L), 0xCC65L, 0UL, 0xCC65L, (VECTOR(uint16_t, 2))(0UL, 0xCC65L), (VECTOR(uint16_t, 2))(0UL, 0xCC65L), 0UL, 0xCC65L, 0UL, 0xCC65L);
        int32_t l_182 = 1L;
        int32_t l_185 = (-8L);
        int32_t l_187 = 1L;
        int32_t l_190 = 0x6C10CD83L;
        uint32_t l_191 = 1UL;
        uint32_t l_195[1][2];
        int32_t *l_219 = &l_190;
        int32_t *l_220[3][3][9] = {{{(void*)0,&l_83,(void*)0,&p_572->g_3[1],&l_187,(void*)0,&p_572->g_3[1],&l_133,&p_572->g_3[1]},{(void*)0,&l_83,(void*)0,&p_572->g_3[1],&l_187,(void*)0,&p_572->g_3[1],&l_133,&p_572->g_3[1]},{(void*)0,&l_83,(void*)0,&p_572->g_3[1],&l_187,(void*)0,&p_572->g_3[1],&l_133,&p_572->g_3[1]}},{{(void*)0,&l_83,(void*)0,&p_572->g_3[1],&l_187,(void*)0,&p_572->g_3[1],&l_133,&p_572->g_3[1]},{(void*)0,&l_83,(void*)0,&p_572->g_3[1],&l_187,(void*)0,&p_572->g_3[1],&l_133,&p_572->g_3[1]},{(void*)0,&l_83,(void*)0,&p_572->g_3[1],&l_187,(void*)0,&p_572->g_3[1],&l_133,&p_572->g_3[1]}},{{(void*)0,&l_83,(void*)0,&p_572->g_3[1],&l_187,(void*)0,&p_572->g_3[1],&l_133,&p_572->g_3[1]},{(void*)0,&l_83,(void*)0,&p_572->g_3[1],&l_187,(void*)0,&p_572->g_3[1],&l_133,&p_572->g_3[1]},{(void*)0,&l_83,(void*)0,&p_572->g_3[1],&l_187,(void*)0,&p_572->g_3[1],&l_133,&p_572->g_3[1]}}};
        VECTOR(uint8_t, 16) l_221 = (VECTOR(uint8_t, 16))(0x86L, (VECTOR(uint8_t, 4))(0x86L, (VECTOR(uint8_t, 2))(0x86L, 252UL), 252UL), 252UL, 0x86L, 252UL, (VECTOR(uint8_t, 2))(0x86L, 252UL), (VECTOR(uint8_t, 2))(0x86L, 252UL), 0x86L, 252UL, 0x86L, 252UL);
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 2; j++)
                l_195[i][j] = 0UL;
        }
        (1 + 1);
    }
    for (l_83 = (-11); (l_83 > 13); l_83 = safe_add_func_uint8_t_u_u(l_83, 4))
    { /* block id: 79 */
        for (p_72 = 0; (p_72 <= 24); p_72 = safe_add_func_uint16_t_u_u(p_72, 4))
        { /* block id: 82 */
            return p_572->g_157.f0;
        }
        if ((*p_572->g_94))
            continue;
        (*l_89) = (*l_89);
    }
    return p_72;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S2 c_573;
    struct S2* p_572 = &c_573;
    struct S2 c_574 = {
        {0L,0L,0L,0L}, // p_572->g_3
        (VECTOR(uint16_t, 16))(0xEC25L, (VECTOR(uint16_t, 4))(0xEC25L, (VECTOR(uint16_t, 2))(0xEC25L, 0x5AB8L), 0x5AB8L), 0x5AB8L, 0xEC25L, 0x5AB8L, (VECTOR(uint16_t, 2))(0xEC25L, 0x5AB8L), (VECTOR(uint16_t, 2))(0xEC25L, 0x5AB8L), 0xEC25L, 0x5AB8L, 0xEC25L, 0x5AB8L), // p_572->g_24
        {{6UL,4294967295UL,4294967295UL,4294967295UL,6UL,6UL,4294967295UL,4294967295UL,4294967295UL},{6UL,4294967295UL,4294967295UL,4294967295UL,6UL,6UL,4294967295UL,4294967295UL,4294967295UL}}, // p_572->g_32
        (VECTOR(int32_t, 2))(0x562BAD2CL, 0x1E3B40BBL), // p_572->g_45
        (VECTOR(uint16_t, 16))(0xBBF7L, (VECTOR(uint16_t, 4))(0xBBF7L, (VECTOR(uint16_t, 2))(0xBBF7L, 1UL), 1UL), 1UL, 0xBBF7L, 1UL, (VECTOR(uint16_t, 2))(0xBBF7L, 1UL), (VECTOR(uint16_t, 2))(0xBBF7L, 1UL), 0xBBF7L, 1UL, 0xBBF7L, 1UL), // p_572->g_69
        0UL, // p_572->g_78
        &p_572->g_3[1], // p_572->g_94
        (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x06A86B27L), 0x06A86B27L), 0x06A86B27L, (-1L), 0x06A86B27L, (VECTOR(int32_t, 2))((-1L), 0x06A86B27L), (VECTOR(int32_t, 2))((-1L), 0x06A86B27L), (-1L), 0x06A86B27L, (-1L), 0x06A86B27L), // p_572->g_96
        (VECTOR(uint8_t, 2))(0x71L, 0x89L), // p_572->g_101
        (VECTOR(int32_t, 2))(1L, 0x382869B1L), // p_572->g_112
        (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0L), 0L), 0L, 0L, 0L, (VECTOR(int16_t, 2))(0L, 0L), (VECTOR(int16_t, 2))(0L, 0L), 0L, 0L, 0L, 0L), // p_572->g_124
        0UL, // p_572->g_127
        {18446744073709551610UL}, // p_572->g_141
        {8UL}, // p_572->g_157
        {0xE752563AE6E0BB03L}, // p_572->g_158
        {0x2AEBC10CF0FC74B4L,0x092D1FD33C25D2CAL,0x022DL,4294967292UL,-1L,8L,0L,-4L,0xBFL}, // p_572->g_162
        {3L,0xF5654A653397D4F8L,0x234DL,0x98204966L,1L,4L,0x2CF074F6L,-7L,0x14L}, // p_572->g_164
        {1L,0x7165E9A02EE29DF9L,0L,0x49C78893L,0x3A7E2C62B3468687L,5L,9L,-1L,1UL}, // p_572->g_165
        {6L,0xE277DF494586F0DDL,0x49BDL,4294967288UL,0x562001A86CCFD89AL,0x67670D45L,0x31E3443EL,0x1BF3A08CL,255UL}, // p_572->g_166
        {(-4L),(-4L),(-4L),(-4L),(-4L),(-4L),(-4L)}, // p_572->g_209
        &p_572->g_209[2], // p_572->g_208
        (VECTOR(uint64_t, 2))(0x89EA2E63CF0B9372L, 0xEF3CD140C127A3C4L), // p_572->g_211
        (VECTOR(uint64_t, 2))(4UL, 18446744073709551611UL), // p_572->g_212
        (VECTOR(uint16_t, 16))(5UL, (VECTOR(uint16_t, 4))(5UL, (VECTOR(uint16_t, 2))(5UL, 0x5B94L), 0x5B94L), 0x5B94L, 5UL, 0x5B94L, (VECTOR(uint16_t, 2))(5UL, 0x5B94L), (VECTOR(uint16_t, 2))(5UL, 0x5B94L), 5UL, 0x5B94L, 5UL, 0x5B94L), // p_572->g_228
        (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x5AFAL), 0x5AFAL), 0x5AFAL, 65535UL, 0x5AFAL, (VECTOR(uint16_t, 2))(65535UL, 0x5AFAL), (VECTOR(uint16_t, 2))(65535UL, 0x5AFAL), 65535UL, 0x5AFAL, 65535UL, 0x5AFAL), // p_572->g_229
        (VECTOR(uint16_t, 4))(0x3F0EL, (VECTOR(uint16_t, 2))(0x3F0EL, 0xB29FL), 0xB29FL), // p_572->g_232
        0xE9C0B0BBL, // p_572->g_258
        (VECTOR(int8_t, 4))(0x39L, (VECTOR(int8_t, 2))(0x39L, 0x22L), 0x22L), // p_572->g_279
        (VECTOR(int32_t, 4))(0x1480BCF2L, (VECTOR(int32_t, 2))(0x1480BCF2L, (-7L)), (-7L)), // p_572->g_298
        (-3L), // p_572->g_301
        (-7L), // p_572->g_303
        (void*)0, // p_572->g_309
        &p_572->g_309, // p_572->g_308
        &p_572->g_309, // p_572->g_323
        {{{(void*)0,&p_572->g_309,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309},{(void*)0,&p_572->g_309,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309},{(void*)0,&p_572->g_309,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309},{(void*)0,&p_572->g_309,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309},{(void*)0,&p_572->g_309,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309},{(void*)0,&p_572->g_309,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309},{(void*)0,&p_572->g_309,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309}},{{(void*)0,&p_572->g_309,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309},{(void*)0,&p_572->g_309,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309},{(void*)0,&p_572->g_309,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309},{(void*)0,&p_572->g_309,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309},{(void*)0,&p_572->g_309,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309},{(void*)0,&p_572->g_309,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309},{(void*)0,&p_572->g_309,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309}},{{(void*)0,&p_572->g_309,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309},{(void*)0,&p_572->g_309,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309},{(void*)0,&p_572->g_309,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309},{(void*)0,&p_572->g_309,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309},{(void*)0,&p_572->g_309,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309},{(void*)0,&p_572->g_309,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309},{(void*)0,&p_572->g_309,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309,&p_572->g_309,(void*)0,&p_572->g_309}}}, // p_572->g_324
        {{&p_572->g_309,&p_572->g_309,(void*)0},{&p_572->g_309,&p_572->g_309,(void*)0},{&p_572->g_309,&p_572->g_309,(void*)0},{&p_572->g_309,&p_572->g_309,(void*)0},{&p_572->g_309,&p_572->g_309,(void*)0}}, // p_572->g_325
        {{&p_572->g_324[0][4][3],&p_572->g_325[4][1],&p_572->g_324[0][4][3],&p_572->g_324[0][4][3],&p_572->g_325[4][1],&p_572->g_324[0][4][3],&p_572->g_324[0][4][3],&p_572->g_325[4][1]},{&p_572->g_324[0][4][3],&p_572->g_325[4][1],&p_572->g_324[0][4][3],&p_572->g_324[0][4][3],&p_572->g_325[4][1],&p_572->g_324[0][4][3],&p_572->g_324[0][4][3],&p_572->g_325[4][1]},{&p_572->g_324[0][4][3],&p_572->g_325[4][1],&p_572->g_324[0][4][3],&p_572->g_324[0][4][3],&p_572->g_325[4][1],&p_572->g_324[0][4][3],&p_572->g_324[0][4][3],&p_572->g_325[4][1]},{&p_572->g_324[0][4][3],&p_572->g_325[4][1],&p_572->g_324[0][4][3],&p_572->g_324[0][4][3],&p_572->g_325[4][1],&p_572->g_324[0][4][3],&p_572->g_324[0][4][3],&p_572->g_325[4][1]},{&p_572->g_324[0][4][3],&p_572->g_325[4][1],&p_572->g_324[0][4][3],&p_572->g_324[0][4][3],&p_572->g_325[4][1],&p_572->g_324[0][4][3],&p_572->g_324[0][4][3],&p_572->g_325[4][1]}}, // p_572->g_322
        (VECTOR(uint64_t, 8))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0xEE99C37DEB74FE59L), 0xEE99C37DEB74FE59L), 0xEE99C37DEB74FE59L, 0UL, 0xEE99C37DEB74FE59L), // p_572->g_352
        {&p_572->g_3[1],&p_572->g_3[1]}, // p_572->g_396
        0x5B2C4C6B3A87A30CL, // p_572->g_421
        (void*)0, // p_572->g_422
        {{{0x7C416FDFL,1L,3L,0L,3L,1L,0x7C416FDFL},{0x7C416FDFL,1L,3L,0L,3L,1L,0x7C416FDFL},{0x7C416FDFL,1L,3L,0L,3L,1L,0x7C416FDFL},{0x7C416FDFL,1L,3L,0L,3L,1L,0x7C416FDFL},{0x7C416FDFL,1L,3L,0L,3L,1L,0x7C416FDFL}},{{0x7C416FDFL,1L,3L,0L,3L,1L,0x7C416FDFL},{0x7C416FDFL,1L,3L,0L,3L,1L,0x7C416FDFL},{0x7C416FDFL,1L,3L,0L,3L,1L,0x7C416FDFL},{0x7C416FDFL,1L,3L,0L,3L,1L,0x7C416FDFL},{0x7C416FDFL,1L,3L,0L,3L,1L,0x7C416FDFL}},{{0x7C416FDFL,1L,3L,0L,3L,1L,0x7C416FDFL},{0x7C416FDFL,1L,3L,0L,3L,1L,0x7C416FDFL},{0x7C416FDFL,1L,3L,0L,3L,1L,0x7C416FDFL},{0x7C416FDFL,1L,3L,0L,3L,1L,0x7C416FDFL},{0x7C416FDFL,1L,3L,0L,3L,1L,0x7C416FDFL}},{{0x7C416FDFL,1L,3L,0L,3L,1L,0x7C416FDFL},{0x7C416FDFL,1L,3L,0L,3L,1L,0x7C416FDFL},{0x7C416FDFL,1L,3L,0L,3L,1L,0x7C416FDFL},{0x7C416FDFL,1L,3L,0L,3L,1L,0x7C416FDFL},{0x7C416FDFL,1L,3L,0L,3L,1L,0x7C416FDFL}},{{0x7C416FDFL,1L,3L,0L,3L,1L,0x7C416FDFL},{0x7C416FDFL,1L,3L,0L,3L,1L,0x7C416FDFL},{0x7C416FDFL,1L,3L,0L,3L,1L,0x7C416FDFL},{0x7C416FDFL,1L,3L,0L,3L,1L,0x7C416FDFL},{0x7C416FDFL,1L,3L,0L,3L,1L,0x7C416FDFL}},{{0x7C416FDFL,1L,3L,0L,3L,1L,0x7C416FDFL},{0x7C416FDFL,1L,3L,0L,3L,1L,0x7C416FDFL},{0x7C416FDFL,1L,3L,0L,3L,1L,0x7C416FDFL},{0x7C416FDFL,1L,3L,0L,3L,1L,0x7C416FDFL},{0x7C416FDFL,1L,3L,0L,3L,1L,0x7C416FDFL}}}, // p_572->g_431
        {0x713C02C39F590BB7L,0x874B2D095F09BE7AL,0L,0x6D088349L,0x27C1253F84508EABL,0x12F24F9BL,0x320839FFL,0x045C4350L,0UL}, // p_572->g_432
        {0x52D9CC2FF101EEB2L,0UL,1L,0UL,0x046FDC1E1DE932D0L,8L,3L,0x148DC50EL,255UL}, // p_572->g_480
        (VECTOR(int16_t, 4))(0x11A2L, (VECTOR(int16_t, 2))(0x11A2L, 0x7C17L), 0x7C17L), // p_572->g_490
        &p_572->g_432.f7, // p_572->g_504
        0x4BL, // p_572->g_514
        {{{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L}},{{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L}},{{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L}},{{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L}},{{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L}},{{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L}},{{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L}},{{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L}},{{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L}},{{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L},{0x001E311F1918CBF4L,3L}}}, // p_572->g_518
        {(-4L),(-4L),(-4L),(-4L),(-4L),(-4L),(-4L),(-4L)}, // p_572->g_520
        1UL, // p_572->g_521
        (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 6L), 6L), 6L, 1L, 6L, (VECTOR(int16_t, 2))(1L, 6L), (VECTOR(int16_t, 2))(1L, 6L), 1L, 6L, 1L, 6L), // p_572->g_540
        (void*)0, // p_572->g_553
        &p_572->g_553, // p_572->g_552
        (void*)0, // p_572->g_566
        {0L,0xAFF0B5C6EE98B5F2L,-8L,4294967295UL,0x0E7DC764D9A14D08L,0x38C699C7L,-10L,0x2D124C87L,0UL}, // p_572->g_571
        sequence_input[get_global_id(0)], // p_572->global_0_offset
        sequence_input[get_global_id(1)], // p_572->global_1_offset
        sequence_input[get_global_id(2)], // p_572->global_2_offset
        sequence_input[get_local_id(0)], // p_572->local_0_offset
        sequence_input[get_local_id(1)], // p_572->local_1_offset
        sequence_input[get_local_id(2)], // p_572->local_2_offset
        sequence_input[get_group_id(0)], // p_572->group_0_offset
        sequence_input[get_group_id(1)], // p_572->group_1_offset
        sequence_input[get_group_id(2)], // p_572->group_2_offset
    };
    c_573 = c_574;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_572);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_572->g_3[i], "p_572->g_3[i]", print_hash_value);

    }
    transparent_crc(p_572->g_24.s0, "p_572->g_24.s0", print_hash_value);
    transparent_crc(p_572->g_24.s1, "p_572->g_24.s1", print_hash_value);
    transparent_crc(p_572->g_24.s2, "p_572->g_24.s2", print_hash_value);
    transparent_crc(p_572->g_24.s3, "p_572->g_24.s3", print_hash_value);
    transparent_crc(p_572->g_24.s4, "p_572->g_24.s4", print_hash_value);
    transparent_crc(p_572->g_24.s5, "p_572->g_24.s5", print_hash_value);
    transparent_crc(p_572->g_24.s6, "p_572->g_24.s6", print_hash_value);
    transparent_crc(p_572->g_24.s7, "p_572->g_24.s7", print_hash_value);
    transparent_crc(p_572->g_24.s8, "p_572->g_24.s8", print_hash_value);
    transparent_crc(p_572->g_24.s9, "p_572->g_24.s9", print_hash_value);
    transparent_crc(p_572->g_24.sa, "p_572->g_24.sa", print_hash_value);
    transparent_crc(p_572->g_24.sb, "p_572->g_24.sb", print_hash_value);
    transparent_crc(p_572->g_24.sc, "p_572->g_24.sc", print_hash_value);
    transparent_crc(p_572->g_24.sd, "p_572->g_24.sd", print_hash_value);
    transparent_crc(p_572->g_24.se, "p_572->g_24.se", print_hash_value);
    transparent_crc(p_572->g_24.sf, "p_572->g_24.sf", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_572->g_32[i][j], "p_572->g_32[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_572->g_45.x, "p_572->g_45.x", print_hash_value);
    transparent_crc(p_572->g_45.y, "p_572->g_45.y", print_hash_value);
    transparent_crc(p_572->g_69.s0, "p_572->g_69.s0", print_hash_value);
    transparent_crc(p_572->g_69.s1, "p_572->g_69.s1", print_hash_value);
    transparent_crc(p_572->g_69.s2, "p_572->g_69.s2", print_hash_value);
    transparent_crc(p_572->g_69.s3, "p_572->g_69.s3", print_hash_value);
    transparent_crc(p_572->g_69.s4, "p_572->g_69.s4", print_hash_value);
    transparent_crc(p_572->g_69.s5, "p_572->g_69.s5", print_hash_value);
    transparent_crc(p_572->g_69.s6, "p_572->g_69.s6", print_hash_value);
    transparent_crc(p_572->g_69.s7, "p_572->g_69.s7", print_hash_value);
    transparent_crc(p_572->g_69.s8, "p_572->g_69.s8", print_hash_value);
    transparent_crc(p_572->g_69.s9, "p_572->g_69.s9", print_hash_value);
    transparent_crc(p_572->g_69.sa, "p_572->g_69.sa", print_hash_value);
    transparent_crc(p_572->g_69.sb, "p_572->g_69.sb", print_hash_value);
    transparent_crc(p_572->g_69.sc, "p_572->g_69.sc", print_hash_value);
    transparent_crc(p_572->g_69.sd, "p_572->g_69.sd", print_hash_value);
    transparent_crc(p_572->g_69.se, "p_572->g_69.se", print_hash_value);
    transparent_crc(p_572->g_69.sf, "p_572->g_69.sf", print_hash_value);
    transparent_crc(p_572->g_78, "p_572->g_78", print_hash_value);
    transparent_crc(p_572->g_96.s0, "p_572->g_96.s0", print_hash_value);
    transparent_crc(p_572->g_96.s1, "p_572->g_96.s1", print_hash_value);
    transparent_crc(p_572->g_96.s2, "p_572->g_96.s2", print_hash_value);
    transparent_crc(p_572->g_96.s3, "p_572->g_96.s3", print_hash_value);
    transparent_crc(p_572->g_96.s4, "p_572->g_96.s4", print_hash_value);
    transparent_crc(p_572->g_96.s5, "p_572->g_96.s5", print_hash_value);
    transparent_crc(p_572->g_96.s6, "p_572->g_96.s6", print_hash_value);
    transparent_crc(p_572->g_96.s7, "p_572->g_96.s7", print_hash_value);
    transparent_crc(p_572->g_96.s8, "p_572->g_96.s8", print_hash_value);
    transparent_crc(p_572->g_96.s9, "p_572->g_96.s9", print_hash_value);
    transparent_crc(p_572->g_96.sa, "p_572->g_96.sa", print_hash_value);
    transparent_crc(p_572->g_96.sb, "p_572->g_96.sb", print_hash_value);
    transparent_crc(p_572->g_96.sc, "p_572->g_96.sc", print_hash_value);
    transparent_crc(p_572->g_96.sd, "p_572->g_96.sd", print_hash_value);
    transparent_crc(p_572->g_96.se, "p_572->g_96.se", print_hash_value);
    transparent_crc(p_572->g_96.sf, "p_572->g_96.sf", print_hash_value);
    transparent_crc(p_572->g_101.x, "p_572->g_101.x", print_hash_value);
    transparent_crc(p_572->g_101.y, "p_572->g_101.y", print_hash_value);
    transparent_crc(p_572->g_112.x, "p_572->g_112.x", print_hash_value);
    transparent_crc(p_572->g_112.y, "p_572->g_112.y", print_hash_value);
    transparent_crc(p_572->g_124.s0, "p_572->g_124.s0", print_hash_value);
    transparent_crc(p_572->g_124.s1, "p_572->g_124.s1", print_hash_value);
    transparent_crc(p_572->g_124.s2, "p_572->g_124.s2", print_hash_value);
    transparent_crc(p_572->g_124.s3, "p_572->g_124.s3", print_hash_value);
    transparent_crc(p_572->g_124.s4, "p_572->g_124.s4", print_hash_value);
    transparent_crc(p_572->g_124.s5, "p_572->g_124.s5", print_hash_value);
    transparent_crc(p_572->g_124.s6, "p_572->g_124.s6", print_hash_value);
    transparent_crc(p_572->g_124.s7, "p_572->g_124.s7", print_hash_value);
    transparent_crc(p_572->g_124.s8, "p_572->g_124.s8", print_hash_value);
    transparent_crc(p_572->g_124.s9, "p_572->g_124.s9", print_hash_value);
    transparent_crc(p_572->g_124.sa, "p_572->g_124.sa", print_hash_value);
    transparent_crc(p_572->g_124.sb, "p_572->g_124.sb", print_hash_value);
    transparent_crc(p_572->g_124.sc, "p_572->g_124.sc", print_hash_value);
    transparent_crc(p_572->g_124.sd, "p_572->g_124.sd", print_hash_value);
    transparent_crc(p_572->g_124.se, "p_572->g_124.se", print_hash_value);
    transparent_crc(p_572->g_124.sf, "p_572->g_124.sf", print_hash_value);
    transparent_crc(p_572->g_127, "p_572->g_127", print_hash_value);
    transparent_crc(p_572->g_158.f0, "p_572->g_158.f0", print_hash_value);
    transparent_crc(p_572->g_162.f0, "p_572->g_162.f0", print_hash_value);
    transparent_crc(p_572->g_162.f1, "p_572->g_162.f1", print_hash_value);
    transparent_crc(p_572->g_162.f2, "p_572->g_162.f2", print_hash_value);
    transparent_crc(p_572->g_162.f3, "p_572->g_162.f3", print_hash_value);
    transparent_crc(p_572->g_162.f4, "p_572->g_162.f4", print_hash_value);
    transparent_crc(p_572->g_162.f5, "p_572->g_162.f5", print_hash_value);
    transparent_crc(p_572->g_162.f6, "p_572->g_162.f6", print_hash_value);
    transparent_crc(p_572->g_162.f7, "p_572->g_162.f7", print_hash_value);
    transparent_crc(p_572->g_162.f8, "p_572->g_162.f8", print_hash_value);
    transparent_crc(p_572->g_164.f0, "p_572->g_164.f0", print_hash_value);
    transparent_crc(p_572->g_164.f1, "p_572->g_164.f1", print_hash_value);
    transparent_crc(p_572->g_164.f2, "p_572->g_164.f2", print_hash_value);
    transparent_crc(p_572->g_164.f3, "p_572->g_164.f3", print_hash_value);
    transparent_crc(p_572->g_164.f4, "p_572->g_164.f4", print_hash_value);
    transparent_crc(p_572->g_164.f5, "p_572->g_164.f5", print_hash_value);
    transparent_crc(p_572->g_164.f6, "p_572->g_164.f6", print_hash_value);
    transparent_crc(p_572->g_164.f7, "p_572->g_164.f7", print_hash_value);
    transparent_crc(p_572->g_164.f8, "p_572->g_164.f8", print_hash_value);
    transparent_crc(p_572->g_165.f0, "p_572->g_165.f0", print_hash_value);
    transparent_crc(p_572->g_165.f1, "p_572->g_165.f1", print_hash_value);
    transparent_crc(p_572->g_165.f2, "p_572->g_165.f2", print_hash_value);
    transparent_crc(p_572->g_165.f3, "p_572->g_165.f3", print_hash_value);
    transparent_crc(p_572->g_165.f4, "p_572->g_165.f4", print_hash_value);
    transparent_crc(p_572->g_165.f5, "p_572->g_165.f5", print_hash_value);
    transparent_crc(p_572->g_165.f6, "p_572->g_165.f6", print_hash_value);
    transparent_crc(p_572->g_165.f7, "p_572->g_165.f7", print_hash_value);
    transparent_crc(p_572->g_165.f8, "p_572->g_165.f8", print_hash_value);
    transparent_crc(p_572->g_166.f0, "p_572->g_166.f0", print_hash_value);
    transparent_crc(p_572->g_166.f1, "p_572->g_166.f1", print_hash_value);
    transparent_crc(p_572->g_166.f2, "p_572->g_166.f2", print_hash_value);
    transparent_crc(p_572->g_166.f3, "p_572->g_166.f3", print_hash_value);
    transparent_crc(p_572->g_166.f4, "p_572->g_166.f4", print_hash_value);
    transparent_crc(p_572->g_166.f5, "p_572->g_166.f5", print_hash_value);
    transparent_crc(p_572->g_166.f6, "p_572->g_166.f6", print_hash_value);
    transparent_crc(p_572->g_166.f7, "p_572->g_166.f7", print_hash_value);
    transparent_crc(p_572->g_166.f8, "p_572->g_166.f8", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_572->g_209[i], "p_572->g_209[i]", print_hash_value);

    }
    transparent_crc(p_572->g_211.x, "p_572->g_211.x", print_hash_value);
    transparent_crc(p_572->g_211.y, "p_572->g_211.y", print_hash_value);
    transparent_crc(p_572->g_212.x, "p_572->g_212.x", print_hash_value);
    transparent_crc(p_572->g_212.y, "p_572->g_212.y", print_hash_value);
    transparent_crc(p_572->g_228.s0, "p_572->g_228.s0", print_hash_value);
    transparent_crc(p_572->g_228.s1, "p_572->g_228.s1", print_hash_value);
    transparent_crc(p_572->g_228.s2, "p_572->g_228.s2", print_hash_value);
    transparent_crc(p_572->g_228.s3, "p_572->g_228.s3", print_hash_value);
    transparent_crc(p_572->g_228.s4, "p_572->g_228.s4", print_hash_value);
    transparent_crc(p_572->g_228.s5, "p_572->g_228.s5", print_hash_value);
    transparent_crc(p_572->g_228.s6, "p_572->g_228.s6", print_hash_value);
    transparent_crc(p_572->g_228.s7, "p_572->g_228.s7", print_hash_value);
    transparent_crc(p_572->g_228.s8, "p_572->g_228.s8", print_hash_value);
    transparent_crc(p_572->g_228.s9, "p_572->g_228.s9", print_hash_value);
    transparent_crc(p_572->g_228.sa, "p_572->g_228.sa", print_hash_value);
    transparent_crc(p_572->g_228.sb, "p_572->g_228.sb", print_hash_value);
    transparent_crc(p_572->g_228.sc, "p_572->g_228.sc", print_hash_value);
    transparent_crc(p_572->g_228.sd, "p_572->g_228.sd", print_hash_value);
    transparent_crc(p_572->g_228.se, "p_572->g_228.se", print_hash_value);
    transparent_crc(p_572->g_228.sf, "p_572->g_228.sf", print_hash_value);
    transparent_crc(p_572->g_229.s0, "p_572->g_229.s0", print_hash_value);
    transparent_crc(p_572->g_229.s1, "p_572->g_229.s1", print_hash_value);
    transparent_crc(p_572->g_229.s2, "p_572->g_229.s2", print_hash_value);
    transparent_crc(p_572->g_229.s3, "p_572->g_229.s3", print_hash_value);
    transparent_crc(p_572->g_229.s4, "p_572->g_229.s4", print_hash_value);
    transparent_crc(p_572->g_229.s5, "p_572->g_229.s5", print_hash_value);
    transparent_crc(p_572->g_229.s6, "p_572->g_229.s6", print_hash_value);
    transparent_crc(p_572->g_229.s7, "p_572->g_229.s7", print_hash_value);
    transparent_crc(p_572->g_229.s8, "p_572->g_229.s8", print_hash_value);
    transparent_crc(p_572->g_229.s9, "p_572->g_229.s9", print_hash_value);
    transparent_crc(p_572->g_229.sa, "p_572->g_229.sa", print_hash_value);
    transparent_crc(p_572->g_229.sb, "p_572->g_229.sb", print_hash_value);
    transparent_crc(p_572->g_229.sc, "p_572->g_229.sc", print_hash_value);
    transparent_crc(p_572->g_229.sd, "p_572->g_229.sd", print_hash_value);
    transparent_crc(p_572->g_229.se, "p_572->g_229.se", print_hash_value);
    transparent_crc(p_572->g_229.sf, "p_572->g_229.sf", print_hash_value);
    transparent_crc(p_572->g_232.x, "p_572->g_232.x", print_hash_value);
    transparent_crc(p_572->g_232.y, "p_572->g_232.y", print_hash_value);
    transparent_crc(p_572->g_232.z, "p_572->g_232.z", print_hash_value);
    transparent_crc(p_572->g_232.w, "p_572->g_232.w", print_hash_value);
    transparent_crc(p_572->g_258, "p_572->g_258", print_hash_value);
    transparent_crc(p_572->g_279.x, "p_572->g_279.x", print_hash_value);
    transparent_crc(p_572->g_279.y, "p_572->g_279.y", print_hash_value);
    transparent_crc(p_572->g_279.z, "p_572->g_279.z", print_hash_value);
    transparent_crc(p_572->g_279.w, "p_572->g_279.w", print_hash_value);
    transparent_crc(p_572->g_298.x, "p_572->g_298.x", print_hash_value);
    transparent_crc(p_572->g_298.y, "p_572->g_298.y", print_hash_value);
    transparent_crc(p_572->g_298.z, "p_572->g_298.z", print_hash_value);
    transparent_crc(p_572->g_298.w, "p_572->g_298.w", print_hash_value);
    transparent_crc(p_572->g_301, "p_572->g_301", print_hash_value);
    transparent_crc(p_572->g_303, "p_572->g_303", print_hash_value);
    transparent_crc(p_572->g_352.s0, "p_572->g_352.s0", print_hash_value);
    transparent_crc(p_572->g_352.s1, "p_572->g_352.s1", print_hash_value);
    transparent_crc(p_572->g_352.s2, "p_572->g_352.s2", print_hash_value);
    transparent_crc(p_572->g_352.s3, "p_572->g_352.s3", print_hash_value);
    transparent_crc(p_572->g_352.s4, "p_572->g_352.s4", print_hash_value);
    transparent_crc(p_572->g_352.s5, "p_572->g_352.s5", print_hash_value);
    transparent_crc(p_572->g_352.s6, "p_572->g_352.s6", print_hash_value);
    transparent_crc(p_572->g_352.s7, "p_572->g_352.s7", print_hash_value);
    transparent_crc(p_572->g_421, "p_572->g_421", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_572->g_431[i][j][k], "p_572->g_431[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_572->g_432.f0, "p_572->g_432.f0", print_hash_value);
    transparent_crc(p_572->g_432.f1, "p_572->g_432.f1", print_hash_value);
    transparent_crc(p_572->g_432.f2, "p_572->g_432.f2", print_hash_value);
    transparent_crc(p_572->g_432.f3, "p_572->g_432.f3", print_hash_value);
    transparent_crc(p_572->g_432.f4, "p_572->g_432.f4", print_hash_value);
    transparent_crc(p_572->g_432.f5, "p_572->g_432.f5", print_hash_value);
    transparent_crc(p_572->g_432.f6, "p_572->g_432.f6", print_hash_value);
    transparent_crc(p_572->g_432.f7, "p_572->g_432.f7", print_hash_value);
    transparent_crc(p_572->g_432.f8, "p_572->g_432.f8", print_hash_value);
    transparent_crc(p_572->g_480.f0, "p_572->g_480.f0", print_hash_value);
    transparent_crc(p_572->g_480.f1, "p_572->g_480.f1", print_hash_value);
    transparent_crc(p_572->g_480.f2, "p_572->g_480.f2", print_hash_value);
    transparent_crc(p_572->g_480.f3, "p_572->g_480.f3", print_hash_value);
    transparent_crc(p_572->g_480.f4, "p_572->g_480.f4", print_hash_value);
    transparent_crc(p_572->g_480.f5, "p_572->g_480.f5", print_hash_value);
    transparent_crc(p_572->g_480.f6, "p_572->g_480.f6", print_hash_value);
    transparent_crc(p_572->g_480.f7, "p_572->g_480.f7", print_hash_value);
    transparent_crc(p_572->g_480.f8, "p_572->g_480.f8", print_hash_value);
    transparent_crc(p_572->g_490.x, "p_572->g_490.x", print_hash_value);
    transparent_crc(p_572->g_490.y, "p_572->g_490.y", print_hash_value);
    transparent_crc(p_572->g_490.z, "p_572->g_490.z", print_hash_value);
    transparent_crc(p_572->g_490.w, "p_572->g_490.w", print_hash_value);
    transparent_crc(p_572->g_514, "p_572->g_514", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_572->g_518[i][j][k], "p_572->g_518[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_572->g_520[i], "p_572->g_520[i]", print_hash_value);

    }
    transparent_crc(p_572->g_521, "p_572->g_521", print_hash_value);
    transparent_crc(p_572->g_540.s0, "p_572->g_540.s0", print_hash_value);
    transparent_crc(p_572->g_540.s1, "p_572->g_540.s1", print_hash_value);
    transparent_crc(p_572->g_540.s2, "p_572->g_540.s2", print_hash_value);
    transparent_crc(p_572->g_540.s3, "p_572->g_540.s3", print_hash_value);
    transparent_crc(p_572->g_540.s4, "p_572->g_540.s4", print_hash_value);
    transparent_crc(p_572->g_540.s5, "p_572->g_540.s5", print_hash_value);
    transparent_crc(p_572->g_540.s6, "p_572->g_540.s6", print_hash_value);
    transparent_crc(p_572->g_540.s7, "p_572->g_540.s7", print_hash_value);
    transparent_crc(p_572->g_540.s8, "p_572->g_540.s8", print_hash_value);
    transparent_crc(p_572->g_540.s9, "p_572->g_540.s9", print_hash_value);
    transparent_crc(p_572->g_540.sa, "p_572->g_540.sa", print_hash_value);
    transparent_crc(p_572->g_540.sb, "p_572->g_540.sb", print_hash_value);
    transparent_crc(p_572->g_540.sc, "p_572->g_540.sc", print_hash_value);
    transparent_crc(p_572->g_540.sd, "p_572->g_540.sd", print_hash_value);
    transparent_crc(p_572->g_540.se, "p_572->g_540.se", print_hash_value);
    transparent_crc(p_572->g_540.sf, "p_572->g_540.sf", print_hash_value);
    transparent_crc(p_572->g_571.f0, "p_572->g_571.f0", print_hash_value);
    transparent_crc(p_572->g_571.f1, "p_572->g_571.f1", print_hash_value);
    transparent_crc(p_572->g_571.f2, "p_572->g_571.f2", print_hash_value);
    transparent_crc(p_572->g_571.f3, "p_572->g_571.f3", print_hash_value);
    transparent_crc(p_572->g_571.f4, "p_572->g_571.f4", print_hash_value);
    transparent_crc(p_572->g_571.f5, "p_572->g_571.f5", print_hash_value);
    transparent_crc(p_572->g_571.f6, "p_572->g_571.f6", print_hash_value);
    transparent_crc(p_572->g_571.f7, "p_572->g_571.f7", print_hash_value);
    transparent_crc(p_572->g_571.f8, "p_572->g_571.f8", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
