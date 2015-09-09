// ---fake_divergence -g 2,16,98 -l 1,1,14
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


// Seed: 118

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint32_t  f0;
   uint32_t  f1;
   uint32_t  f2;
};

union U2 {
   volatile int16_t  f0;
   uint64_t  f1;
};

struct S3 {
    int32_t g_3;
    int64_t g_18;
    int64_t g_20;
    volatile VECTOR(uint32_t, 4) g_21;
    volatile uint64_t g_24;
    int32_t g_48;
    int32_t g_63;
    int32_t *g_62;
    uint16_t g_69;
    union U0 g_95;
    uint64_t g_99;
    volatile uint16_t g_105;
    volatile uint16_t *g_104;
    VECTOR(uint16_t, 8) g_107;
    uint32_t g_117;
    int16_t g_120[10];
    int32_t g_126[9];
    uint16_t *g_127;
    uint64_t g_151;
    int32_t **g_155[8];
    uint16_t **g_166;
    uint8_t g_205[4];
    volatile uint64_t **g_214;
    uint32_t g_231;
    int32_t *g_240;
    int32_t **g_239;
    int32_t **g_242;
    int32_t g_243;
    uint32_t g_248;
    int32_t g_251;
    union U0 g_253;
    VECTOR(uint16_t, 16) g_259;
    int32_t **g_285[7];
    VECTOR(int8_t, 2) g_319;
    VECTOR(int8_t, 16) g_320;
    VECTOR(int8_t, 2) g_321;
    int8_t g_323;
    VECTOR(int8_t, 16) g_351;
    VECTOR(int64_t, 16) g_353;
    union U2 g_366;
    union U2 g_377;
    union U2 * volatile g_376;
    union U2 *g_378;
    union U2 * volatile *g_375[4][8][4];
    VECTOR(uint8_t, 2) g_379;
    volatile uint32_t g_406;
    volatile uint32_t g_407;
    volatile uint32_t g_408;
    volatile uint32_t g_409;
    volatile uint32_t g_410;
    volatile uint32_t g_411[7];
    volatile uint32_t g_412;
    volatile uint32_t g_413;
    volatile uint32_t g_414;
    volatile uint32_t g_415;
    volatile uint32_t g_416;
    volatile uint32_t g_417;
    volatile uint32_t g_418[9][1];
    volatile uint32_t g_419;
    volatile uint32_t *g_405[7][3][4];
    volatile uint32_t * volatile *g_404[3];
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
int32_t  func_1(struct S3 * p_434);
uint64_t  func_30(int32_t * p_31, uint32_t  p_32, uint32_t  p_33, struct S3 * p_434);
int32_t * func_34(int32_t * p_35, int32_t * p_36, uint8_t  p_37, int32_t * p_38, uint8_t  p_39, struct S3 * p_434);
int32_t  func_40(int32_t  p_41, int32_t  p_42, int32_t * p_43, int32_t * p_44, int32_t * p_45, struct S3 * p_434);
int32_t * func_49(int32_t * p_50, struct S3 * p_434);
uint16_t  func_72(union U0  p_73, uint16_t  p_74, int32_t ** p_75, struct S3 * p_434);
union U0  func_76(uint16_t * p_77, union U0  p_78, uint16_t  p_79, struct S3 * p_434);
uint16_t * func_80(uint16_t * p_81, int32_t * p_82, int32_t * p_83, int32_t * p_84, int32_t ** p_85, struct S3 * p_434);
uint16_t * func_86(uint16_t * p_87, int32_t * p_88, struct S3 * p_434);
uint16_t * func_89(int32_t * p_90, uint16_t * p_91, union U0  p_92, uint32_t  p_93, int16_t  p_94, struct S3 * p_434);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_434->g_21 p_434->g_24 p_434->g_3 p_434->g_18 p_434->g_20 p_434->g_62 p_434->g_239 p_434->g_240 p_434->g_95.f0 p_434->g_375 p_434->g_379 p_434->g_242 p_434->g_321 p_434->g_126 p_434->g_404 p_434->g_319 p_434->g_353 p_434->g_251 p_434->g_323 p_434->g_231 p_434->g_63
 * writes: p_434->g_21 p_434->g_24 p_434->g_48 p_434->g_62 p_434->g_20 p_434->g_95.f0 p_434->g_240 p_434->g_3 p_434->g_18 p_434->g_126
 */
int32_t  func_1(struct S3 * p_434)
{ /* block id: 4 */
    int32_t *l_2 = &p_434->g_3;
    int32_t *l_4 = &p_434->g_3;
    int32_t *l_5 = &p_434->g_3;
    int32_t *l_6 = &p_434->g_3;
    int32_t *l_7 = &p_434->g_3;
    int32_t *l_8 = &p_434->g_3;
    int32_t *l_9 = &p_434->g_3;
    int32_t *l_10 = &p_434->g_3;
    int32_t *l_11 = &p_434->g_3;
    int32_t *l_12 = (void*)0;
    int32_t l_13[10][2][3] = {{{1L,1L,1L},{1L,1L,1L}},{{1L,1L,1L},{1L,1L,1L}},{{1L,1L,1L},{1L,1L,1L}},{{1L,1L,1L},{1L,1L,1L}},{{1L,1L,1L},{1L,1L,1L}},{{1L,1L,1L},{1L,1L,1L}},{{1L,1L,1L},{1L,1L,1L}},{{1L,1L,1L},{1L,1L,1L}},{{1L,1L,1L},{1L,1L,1L}},{{1L,1L,1L},{1L,1L,1L}}};
    int32_t *l_14 = &l_13[8][1][1];
    int32_t *l_15 = &l_13[8][1][1];
    int32_t *l_16 = (void*)0;
    int32_t *l_17[2][3][2] = {{{&p_434->g_3,&p_434->g_3},{&p_434->g_3,&p_434->g_3},{&p_434->g_3,&p_434->g_3}},{{&p_434->g_3,&p_434->g_3},{&p_434->g_3,&p_434->g_3},{&p_434->g_3,&p_434->g_3}}};
    int8_t l_19 = 0x40L;
    VECTOR(int16_t, 4) l_27 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, (-1L)), (-1L));
    int i, j, k;
    p_434->g_21.x--;
    --p_434->g_24;
    (*l_15) = (((*l_5) = ((((((VECTOR(int16_t, 8))(l_27.wxxxxxyx)).s6 & 0xEAE8L) , ((0x01L | p_434->g_24) <= (safe_div_func_int8_t_s_s((func_30(func_34(&p_434->g_3, &l_13[8][1][1], ((((*l_11) >= (p_434->g_18 & (*l_7))) , ((void*)0 != &l_13[8][1][1])) ^ p_434->g_20), &l_13[0][0][0], p_434->g_18, p_434), p_434->g_18, p_434->g_126[4], p_434) | p_434->g_251), p_434->g_323)))) || p_434->g_126[4]) != p_434->g_231)) <= (-1L));
    return (*p_434->g_62);
}


/* ------------------------------------------ */
/* 
 * reads : p_434->g_404 p_434->g_95.f0 p_434->g_18 p_434->g_319 p_434->g_126 p_434->g_353
 * writes: p_434->g_20 p_434->g_18 p_434->g_126
 */
uint64_t  func_30(int32_t * p_31, uint32_t  p_32, uint32_t  p_33, struct S3 * p_434)
{ /* block id: 201 */
    union U0 *l_399 = &p_434->g_253;
    union U0 **l_400 = (void*)0;
    union U2 **l_401 = &p_434->g_378;
    union U2 ***l_402 = &l_401;
    int32_t l_403 = 0x45EBDA3EL;
    int64_t *l_420 = &p_434->g_20;
    int16_t l_431 = 0x723FL;
    uint8_t l_432[3];
    int32_t *l_433 = &p_434->g_126[8];
    int i;
    for (i = 0; i < 3; i++)
        l_432[i] = 251UL;
    l_399 = l_399;
    (*l_433) = (((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(max(((VECTOR(int32_t, 8))((-1L), 1L, 0x14549141L, (&p_434->g_378 != ((*l_402) = l_401)), 1L, ((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(l_403, 0x1F8AEFEFL, 0x591377A4L, (-3L), (((((void*)0 == p_434->g_404[2]) | ((l_403 < ((p_434->g_18 ^= ((*l_420) = p_434->g_95.f0)) | (safe_mul_func_uint16_t_u_u(((((*p_31) = (safe_add_func_int16_t_s_s((safe_rshift_func_int8_t_s_u((((VECTOR(uint32_t, 2))(3UL, 0x58B07841L)).even > (safe_rshift_func_uint16_t_u_u(0xEBF9L, 10))), 3)), ((safe_lshift_func_uint16_t_u_s(((0UL | l_403) <= l_403), p_33)) , 0x0CBEL)))) == 1UL) & p_33), l_431)))) >= p_33)) | p_434->g_319.y) & p_32), ((VECTOR(int32_t, 2))(0x7EA670FEL)), 0x7AABB091L)).s6670776715425417)).lo)))).s73, ((VECTOR(int32_t, 2))((-1L)))))), 0L)), ((VECTOR(int32_t, 8))(0x3C3AC4F9L))))).even)).zyxyzxyywwyyzzyx, (int32_t)(*p_31)))).s0b, ((VECTOR(int32_t, 2))(0x0995B252L)))))))).hi && l_432[1]);
    (*l_433) &= (*p_31);
    return p_434->g_353.se;
}


/* ------------------------------------------ */
/* 
 * reads : p_434->g_3 p_434->g_62 p_434->g_239 p_434->g_240 p_434->g_20 p_434->g_95.f0 p_434->g_375 p_434->g_379 p_434->g_242 p_434->g_321
 * writes: p_434->g_48 p_434->g_62 p_434->g_20 p_434->g_95.f0 p_434->g_240 p_434->g_3
 */
int32_t * func_34(int32_t * p_35, int32_t * p_36, uint8_t  p_37, int32_t * p_38, uint8_t  p_39, struct S3 * p_434)
{ /* block id: 7 */
    int32_t *l_46 = (void*)0;
    int32_t *l_47 = &p_434->g_48;
    int32_t l_55 = 0L;
    VECTOR(uint16_t, 4) l_60 = (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 65535UL), 65535UL);
    VECTOR(uint16_t, 2) l_61 = (VECTOR(uint16_t, 2))(0xF16CL, 0x4D54L);
    int32_t **l_64 = &p_434->g_62;
    int i;
    (*p_36) = func_40(((*l_47) = 0x3D7AFF79L), p_434->g_3, func_49((l_46 = ((*l_64) = ((safe_add_func_uint64_t_u_u((safe_add_func_uint16_t_u_u(((void*)0 == &p_434->g_3), l_55)), (safe_div_func_uint32_t_u_u(((safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(min(((VECTOR(uint16_t, 16))(rhadd(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_60.xz)), 1UL, 0x414EL)).xzxwwwzyzzwwyyzx, ((VECTOR(uint16_t, 8))(hadd(((VECTOR(uint16_t, 2))(2UL, 0x3B0FL)).xxyyyxxx, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 2))(65529UL, 0UL)), ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(0x569FL, ((VECTOR(uint16_t, 2))(0xE686L, 0xDE7EL)), 3UL)).odd)), ((VECTOR(uint16_t, 8))(min(((VECTOR(uint16_t, 2))(65530UL, 0x6531L)).yyxyxyyx, ((VECTOR(uint16_t, 8))(abs_diff(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(0x5283L, 0x75AEL)).yyxyxyxyxxyxyxyx)).odd, ((VECTOR(uint16_t, 8))(l_61.yxyyxyxy)))))))).s26))), 0x6C5DL, 0UL)).yxzwxzzw))).s6207303521275426))).sff55, (uint16_t)p_37))).y, (&l_55 == p_35))) ^ p_39), p_37)))) , p_434->g_62))), p_434), (*p_434->g_239), p_38, p_434);
    return p_36;
}


/* ------------------------------------------ */
/* 
 * reads : p_434->g_20 p_434->g_95.f0 p_434->g_375 p_434->g_379 p_434->g_239 p_434->g_240 p_434->g_242 p_434->g_321
 * writes: p_434->g_20 p_434->g_95.f0 p_434->g_240 p_434->g_3
 */
int32_t  func_40(int32_t  p_41, int32_t  p_42, int32_t * p_43, int32_t * p_44, int32_t * p_45, struct S3 * p_434)
{ /* block id: 184 */
    int32_t *l_381 = &p_434->g_63;
    int32_t l_384 = 0x0F51BE02L;
    int32_t *l_385 = &p_434->g_126[8];
    int32_t *l_386 = &p_434->g_3;
    int32_t *l_387 = &p_434->g_3;
    int32_t *l_388 = &l_384;
    int32_t *l_389 = &l_384;
    int32_t *l_390 = (void*)0;
    int32_t *l_391 = &l_384;
    int32_t *l_392 = &p_434->g_126[8];
    int32_t *l_393 = &l_384;
    int32_t *l_394[4][5] = {{(void*)0,&p_434->g_3,(void*)0,(void*)0,&p_434->g_3},{(void*)0,&p_434->g_3,(void*)0,(void*)0,&p_434->g_3},{(void*)0,&p_434->g_3,(void*)0,(void*)0,&p_434->g_3},{(void*)0,&p_434->g_3,(void*)0,(void*)0,&p_434->g_3}};
    uint64_t l_395[2][7];
    VECTOR(uint32_t, 2) l_398 = (VECTOR(uint32_t, 2))(1UL, 0xCEA3720DL);
    int i, j;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 7; j++)
            l_395[i][j] = 18446744073709551615UL;
    }
    for (p_434->g_20 = 9; (p_434->g_20 < 4); --p_434->g_20)
    { /* block id: 187 */
        int64_t l_374 = 0L;
        union U0 l_380[2] = {{4294967294UL},{4294967294UL}};
        int32_t *l_382 = &p_434->g_3;
        int i;
        for (p_434->g_95.f0 = 0; (p_434->g_95.f0 != 59); p_434->g_95.f0++)
        { /* block id: 190 */
            int32_t **l_372 = (void*)0;
            int32_t l_373 = 1L;
            int8_t *l_383[2];
            int i;
            for (i = 0; i < 2; i++)
                l_383[i] = (void*)0;
            (*l_382) = (((l_373 = (((((((l_372 = (void*)0) != ((l_373 && l_374) , &p_434->g_240)) , p_434->g_375[3][2][3]) != &p_434->g_378) == p_41) != ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(p_434->g_379.xxxy)).even)).xxxyxxxyxxxyxyxy)).s3) != ((((l_380[1] , ((*p_434->g_242) = func_49(l_381, p_434))) == l_382) , p_42) & p_41))) || p_434->g_321.x) || l_384);
        }
    }
    l_395[1][0]--;
    return l_398.y;
}


/* ------------------------------------------ */
/* 
 * reads : p_434->g_239 p_434->g_240
 * writes:
 */
int32_t * func_49(int32_t * p_50, struct S3 * p_434)
{ /* block id: 11 */
    VECTOR(int16_t, 16) l_65 = (VECTOR(int16_t, 16))(0x1995L, (VECTOR(int16_t, 4))(0x1995L, (VECTOR(int16_t, 2))(0x1995L, 7L), 7L), 7L, 0x1995L, 7L, (VECTOR(int16_t, 2))(0x1995L, 7L), (VECTOR(int16_t, 2))(0x1995L, 7L), 0x1995L, 7L, 0x1995L, 7L);
    uint16_t *l_68 = &p_434->g_69;
    uint64_t *l_98 = &p_434->g_99;
    VECTOR(int64_t, 4) l_106 = (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-1L)), (-1L));
    uint16_t *l_108[9];
    int32_t l_109 = 0x7E2E886BL;
    uint32_t *l_116[8][2] = {{&p_434->g_117,&p_434->g_117},{&p_434->g_117,&p_434->g_117},{&p_434->g_117,&p_434->g_117},{&p_434->g_117,&p_434->g_117},{&p_434->g_117,&p_434->g_117},{&p_434->g_117,&p_434->g_117},{&p_434->g_117,&p_434->g_117},{&p_434->g_117,&p_434->g_117}};
    int32_t l_118 = (-9L);
    int16_t *l_119 = &p_434->g_120[3];
    union U0 *l_284 = &p_434->g_95;
    int32_t *l_291[1];
    uint64_t **l_295 = &l_98;
    uint64_t ***l_294 = &l_295;
    uint32_t l_335[10] = {1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL};
    VECTOR(int32_t, 2) l_336 = (VECTOR(int32_t, 2))((-7L), 0x17AA35D8L);
    uint8_t l_337 = 0x4CL;
    union U2 *l_365 = &p_434->g_366;
    union U2 **l_367 = &l_365;
    int i, j;
    for (i = 0; i < 9; i++)
        l_108[i] = (void*)0;
    for (i = 0; i < 1; i++)
        l_291[i] = &l_118;
    return (*p_434->g_239);
}


/* ------------------------------------------ */
/* 
 * reads : p_434->g_242 p_434->g_126 p_434->g_239
 * writes: p_434->g_240
 */
uint16_t  func_72(union U0  p_73, uint16_t  p_74, int32_t ** p_75, struct S3 * p_434)
{ /* block id: 125 */
    int32_t *l_286 = &p_434->g_3;
    uint32_t *l_288 = &p_434->g_117;
    uint32_t **l_287 = &l_288;
    int32_t l_289 = 0x093DEC75L;
    int32_t l_290 = (-2L);
    (*p_434->g_242) = l_286;
    l_289 ^= (p_73.f0 || ((((*l_287) = l_286) != &p_434->g_231) == p_434->g_126[8]));
    (*p_434->g_239) = (void*)0;
    return l_290;
}


/* ------------------------------------------ */
/* 
 * reads : p_434->g_205 p_434->g_259 p_434->g_253 p_434->g_242 p_434->g_240 p_434->g_63 p_434->g_95 p_434->g_99 p_434->g_251 p_434->g_18
 * writes: p_434->g_18 p_434->g_63 p_434->g_62 p_434->g_126
 */
union U0  func_76(uint16_t * p_77, union U0  p_78, uint16_t  p_79, struct S3 * p_434)
{ /* block id: 112 */
    uint64_t *l_262[1][2][4];
    int64_t l_263 = 0x1B49774D5AF559F1L;
    uint32_t *l_266 = &p_434->g_231;
    int16_t l_267[6] = {0x5758L,0x0B78L,0x5758L,0x5758L,0x0B78L,0x5758L};
    int64_t *l_268[1][5][1] = {{{&p_434->g_20},{&p_434->g_20},{&p_434->g_20},{&p_434->g_20},{&p_434->g_20}}};
    int32_t **l_275 = &p_434->g_62;
    VECTOR(uint16_t, 2) l_280 = (VECTOR(uint16_t, 2))(0x2A37L, 0xC048L);
    int16_t l_283 = 0x64E3L;
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 4; k++)
                l_262[i][j][k] = &p_434->g_151;
        }
    }
    (*p_434->g_240) = (((safe_unary_minus_func_int16_t_s(p_78.f0)) & (p_434->g_18 = (safe_unary_minus_func_int32_t_s((((safe_div_func_uint8_t_u_u(((((p_434->g_205[3] , (((safe_unary_minus_func_uint16_t_u((p_79 |= ((VECTOR(uint16_t, 4))(p_434->g_259.scb83)).y))) && (safe_mul_func_int8_t_s_s((l_262[0][0][0] == l_262[0][0][1]), ((l_263 , (safe_rshift_func_int8_t_s_u(0x15L, (p_78.f0 && ((p_434->g_253 , l_266) == &p_434->g_117))))) == 0x0CL)))) & l_263)) , 0x5D3B33B7L) <= l_267[3]) <= (**p_434->g_242)), l_267[3])) || (**p_434->g_242)) > l_267[3]))))) && 0xEAL);
    if ((safe_div_func_uint16_t_u_u((((safe_lshift_func_uint8_t_u_u(((&p_434->g_18 != (((0x866BDBAEL | (l_266 != ((*l_275) = l_266))) , p_434->g_95) , &l_263)) | (safe_div_func_uint16_t_u_u(((((l_267[3] > GROUP_DIVERGE(0, 1)) && ((safe_div_func_uint16_t_u_u(FAKE_DIVERGE(p_434->group_0_offset, get_group_id(0), 10), ((VECTOR(uint16_t, 8))(65529UL, 0x272BL, 65535UL, ((VECTOR(uint16_t, 2))(l_280.xy)), ((safe_mod_func_uint32_t_u_u(l_280.y, l_283)) , 1UL), 0x56BFL, 65535UL)).s2)) > p_79)) & p_434->g_99) | (-1L)), l_267[3]))), FAKE_DIVERGE(p_434->group_1_offset, get_group_id(1), 10))) == p_434->g_251) <= p_434->g_18), (-2L))))
    { /* block id: 117 */
        p_434->g_126[5] = ((*p_434->g_240) = (**p_434->g_242));
        return p_434->g_95;
    }
    else
    { /* block id: 121 */
        return p_78;
    }
}


/* ------------------------------------------ */
/* 
 * reads : p_434->g_239 p_434->g_127
 * writes: p_434->g_240
 */
uint16_t * func_80(uint16_t * p_81, int32_t * p_82, int32_t * p_83, int32_t * p_84, int32_t ** p_85, struct S3 * p_434)
{ /* block id: 108 */
    int32_t *l_252[7][8] = {{&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8]},{&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8]},{&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8]},{&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8]},{&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8]},{&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8]},{&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8],&p_434->g_126[8]}};
    int i, j;
    (*p_434->g_239) = l_252[5][0];
    (*p_434->g_239) = p_84;
    return p_434->g_127;
}


/* ------------------------------------------ */
/* 
 * reads : p_434->g_18 p_434->g_63 p_434->g_126 p_434->g_166 p_434->g_127 p_434->g_95 p_434->g_95.f0 p_434->g_3 p_434->g_117 p_434->g_107 p_434->g_120 p_434->g_20 p_434->g_205 p_434->g_214 p_434->g_151 p_434->g_99 p_434->g_231 p_434->g_239 p_434->g_243 p_434->g_251
 * writes: p_434->g_99 p_434->g_126 p_434->g_63 p_434->g_155 p_434->g_166 p_434->g_95.f0 p_434->g_20 p_434->g_205 p_434->g_151 p_434->g_231 p_434->g_117 p_434->g_239 p_434->g_242 p_434->g_243 p_434->g_248 p_434->g_251
 */
uint16_t * func_86(uint16_t * p_87, int32_t * p_88, struct S3 * p_434)
{ /* block id: 24 */
    int32_t *l_129[5];
    int32_t **l_128 = &l_129[0];
    uint64_t *l_132[9][2][9] = {{{&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99},{&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99}},{{&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99},{&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99}},{{&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99},{&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99}},{{&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99},{&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99}},{{&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99},{&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99}},{{&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99},{&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99}},{{&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99},{&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99}},{{&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99},{&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99}},{{&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99},{&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99,&p_434->g_99}}};
    int64_t l_133 = 0L;
    VECTOR(uint8_t, 2) l_145 = (VECTOR(uint8_t, 2))(255UL, 0xEEL);
    VECTOR(uint8_t, 8) l_160 = (VECTOR(uint8_t, 8))(0x9CL, (VECTOR(uint8_t, 4))(0x9CL, (VECTOR(uint8_t, 2))(0x9CL, 9UL), 9UL), 9UL, 0x9CL, 9UL);
    int8_t l_169 = 9L;
    uint64_t l_172 = 0x32EB66CF8E74D01EL;
    uint16_t *l_175[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint8_t l_223 = 255UL;
    int8_t l_250 = 2L;
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_129[i] = &p_434->g_126[7];
    (*l_128) = &p_434->g_126[8];
    if ((safe_add_func_uint64_t_u_u(0x429669FAE0D986BDL, (p_434->g_99 = 0UL))))
    { /* block id: 27 */
        uint8_t l_134 = 0UL;
        int32_t l_142 = 0x71951316L;
        uint64_t *l_150 = &p_434->g_151;
        --l_134;
        (**l_128) = p_434->g_18;
        for (l_133 = 13; (l_133 <= 1); l_133--)
        { /* block id: 32 */
            int64_t l_141 = (-9L);
            int32_t l_148 = 0x6146C4C1L;
            uint64_t **l_149[10][3] = {{(void*)0,&l_132[0][0][6],(void*)0},{(void*)0,&l_132[0][0][6],(void*)0},{(void*)0,&l_132[0][0][6],(void*)0},{(void*)0,&l_132[0][0][6],(void*)0},{(void*)0,&l_132[0][0][6],(void*)0},{(void*)0,&l_132[0][0][6],(void*)0},{(void*)0,&l_132[0][0][6],(void*)0},{(void*)0,&l_132[0][0][6],(void*)0},{(void*)0,&l_132[0][0][6],(void*)0},{(void*)0,&l_132[0][0][6],(void*)0}};
            int i, j;
            (**l_128) ^= (safe_mul_func_int16_t_s_s(l_141, ((&p_434->g_99 != (l_150 = (((~l_141) , ((l_142 = l_134) < (safe_add_func_int8_t_s_s((l_141 , ((((void*)0 == &p_434->g_62) <= ((VECTOR(uint8_t, 16))(l_145.yxxxyxxxxxyyyyyx)).sc) , (((VECTOR(uint32_t, 2))(rotate(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(((p_434->g_99 = (l_148 = (safe_div_func_int16_t_s_s((0x87148A67L ^ (l_134 <= l_141)), l_134)))) ^ p_434->g_63), ((VECTOR(uint32_t, 2))(0UL)), 0UL)).wxxxwxyx)).s42, ((VECTOR(uint32_t, 2))(4294967295UL))))).hi | l_141))), l_141)))) , (void*)0))) > 18446744073709551615UL)));
            (*l_128) = p_88;
        }
    }
    else
    { /* block id: 40 */
        uint32_t l_154 = 0x11DC8AE0L;
        VECTOR(uint8_t, 4) l_161 = (VECTOR(uint8_t, 4))(0x44L, (VECTOR(uint8_t, 2))(0x44L, 248UL), 248UL);
        uint64_t **l_162 = &l_132[4][1][3];
        int32_t *l_178 = &p_434->g_63;
        int32_t l_183 = 0x1B7B750CL;
        int32_t l_184 = (-1L);
        int32_t l_186[1][9][5] = {{{1L,(-1L),0x19BFBAFDL,0x2783F5DFL,0x19BFBAFDL},{1L,(-1L),0x19BFBAFDL,0x2783F5DFL,0x19BFBAFDL},{1L,(-1L),0x19BFBAFDL,0x2783F5DFL,0x19BFBAFDL},{1L,(-1L),0x19BFBAFDL,0x2783F5DFL,0x19BFBAFDL},{1L,(-1L),0x19BFBAFDL,0x2783F5DFL,0x19BFBAFDL},{1L,(-1L),0x19BFBAFDL,0x2783F5DFL,0x19BFBAFDL},{1L,(-1L),0x19BFBAFDL,0x2783F5DFL,0x19BFBAFDL},{1L,(-1L),0x19BFBAFDL,0x2783F5DFL,0x19BFBAFDL},{1L,(-1L),0x19BFBAFDL,0x2783F5DFL,0x19BFBAFDL}}};
        uint32_t l_204 = 0x41AA105AL;
        int i, j, k;
        if ((safe_lshift_func_int16_t_s_s(l_154, (((~(p_88 == l_129[4])) >= (0x21L > (&p_88 != (p_434->g_155[1] = &p_88)))) >= (((**l_128) ^ (safe_rshift_func_uint8_t_u_s((FAKE_DIVERGE(p_434->local_2_offset, get_local_id(2), 10) | p_434->g_63), 5))) && (((safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(add_sat(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(mul_hi(((VECTOR(uint8_t, 8))(l_160.s73134320)).even, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(l_161.yyyw)).xzwwxwwywyzyywyw)).sf41c))), 255UL, l_161.y, 0x22L, 0UL)).hi)))).wzwxxxzz)).hi)))).wwxwwwwy)).s1466243734221225, ((VECTOR(uint8_t, 16))(0UL))))).hi)).s6, 4)) , 18446744073709551612UL) == p_434->g_63))))))
        { /* block id: 42 */
            uint64_t ***l_163 = &l_162;
            uint16_t **l_165 = &p_434->g_127;
            uint16_t ***l_164[4][8][6] = {{{(void*)0,(void*)0,&l_165,&l_165,&l_165,&l_165},{(void*)0,(void*)0,&l_165,&l_165,&l_165,&l_165},{(void*)0,(void*)0,&l_165,&l_165,&l_165,&l_165},{(void*)0,(void*)0,&l_165,&l_165,&l_165,&l_165},{(void*)0,(void*)0,&l_165,&l_165,&l_165,&l_165},{(void*)0,(void*)0,&l_165,&l_165,&l_165,&l_165},{(void*)0,(void*)0,&l_165,&l_165,&l_165,&l_165},{(void*)0,(void*)0,&l_165,&l_165,&l_165,&l_165}},{{(void*)0,(void*)0,&l_165,&l_165,&l_165,&l_165},{(void*)0,(void*)0,&l_165,&l_165,&l_165,&l_165},{(void*)0,(void*)0,&l_165,&l_165,&l_165,&l_165},{(void*)0,(void*)0,&l_165,&l_165,&l_165,&l_165},{(void*)0,(void*)0,&l_165,&l_165,&l_165,&l_165},{(void*)0,(void*)0,&l_165,&l_165,&l_165,&l_165},{(void*)0,(void*)0,&l_165,&l_165,&l_165,&l_165},{(void*)0,(void*)0,&l_165,&l_165,&l_165,&l_165}},{{(void*)0,(void*)0,&l_165,&l_165,&l_165,&l_165},{(void*)0,(void*)0,&l_165,&l_165,&l_165,&l_165},{(void*)0,(void*)0,&l_165,&l_165,&l_165,&l_165},{(void*)0,(void*)0,&l_165,&l_165,&l_165,&l_165},{(void*)0,(void*)0,&l_165,&l_165,&l_165,&l_165},{(void*)0,(void*)0,&l_165,&l_165,&l_165,&l_165},{(void*)0,(void*)0,&l_165,&l_165,&l_165,&l_165},{(void*)0,(void*)0,&l_165,&l_165,&l_165,&l_165}},{{(void*)0,(void*)0,&l_165,&l_165,&l_165,&l_165},{(void*)0,(void*)0,&l_165,&l_165,&l_165,&l_165},{(void*)0,(void*)0,&l_165,&l_165,&l_165,&l_165},{(void*)0,(void*)0,&l_165,&l_165,&l_165,&l_165},{(void*)0,(void*)0,&l_165,&l_165,&l_165,&l_165},{(void*)0,(void*)0,&l_165,&l_165,&l_165,&l_165},{(void*)0,(void*)0,&l_165,&l_165,&l_165,&l_165},{(void*)0,(void*)0,&l_165,&l_165,&l_165,&l_165}}};
            int i, j, k;
            (*l_163) = l_162;
            p_434->g_166 = &p_87;
            (**l_128) |= (-1L);
        }
        else
        { /* block id: 46 */
            return (*p_434->g_166);
        }
        if ((safe_sub_func_uint16_t_u_u((((VECTOR(uint8_t, 16))(0xC1L, GROUP_DIVERGE(2, 1), GROUP_DIVERGE(0, 1), 3UL, l_169, (p_434->g_95 , p_434->g_95.f0), ((VECTOR(uint8_t, 8))(0x1AL, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))((**l_128), (safe_lshift_func_uint8_t_u_s(((((l_172 | (((((p_434->g_3 ^ (0x2BBFL == l_161.w)) <= p_434->g_126[0]) && p_434->g_117) , 0x6863B5C28C5A1FB4L) && (-1L))) != p_434->g_107.s1) >= p_434->g_120[6]) == (-8L)), 5)), 0UL, 1UL, ((VECTOR(uint8_t, 2))(252UL)), 4UL, 0xC2L)))).s2113662574107315)).s427b)), 0x88L, 252UL, 0x8DL)), 1UL, 5UL)).sf && p_434->g_120[2]), (**l_128))))
        { /* block id: 49 */
            int32_t **l_176 = (void*)0;
            int32_t **l_177[7][1] = {{&p_434->g_62},{&p_434->g_62},{&p_434->g_62},{&p_434->g_62},{&p_434->g_62},{&p_434->g_62},{&p_434->g_62}};
            int i, j;
            for (p_434->g_95.f0 = (-2); (p_434->g_95.f0 < 19); p_434->g_95.f0 = safe_add_func_uint16_t_u_u(p_434->g_95.f0, 7))
            { /* block id: 52 */
                if ((**l_128))
                    break;
                if ((**l_128))
                    continue;
                return l_175[6];
            }
            (**l_128) |= ((p_88 = p_88) == ((l_178 != l_129[0]) , l_129[4]));
            for (p_434->g_63 = 0; (p_434->g_63 < 23); ++p_434->g_63)
            { /* block id: 61 */
                (**l_128) = 0x21453969L;
            }
        }
        else
        { /* block id: 64 */
            int16_t l_189 = 1L;
            int32_t l_190 = (-10L);
            int32_t l_207 = 0L;
            int32_t l_208 = 0L;
            uint32_t l_209[8];
            int i;
            for (i = 0; i < 8; i++)
                l_209[i] = 4294967295UL;
            for (p_434->g_20 = (-11); (p_434->g_20 == (-17)); p_434->g_20 = safe_sub_func_uint64_t_u_u(p_434->g_20, 9))
            { /* block id: 67 */
                int8_t l_185 = 0x1AL;
                int32_t l_187 = (-1L);
                int32_t l_188 = 0x368FCA7EL;
                uint32_t l_191 = 1UL;
                int8_t *l_203 = (void*)0;
                int32_t l_206[1][8] = {{0x0988E549L,0x0988E549L,0x0988E549L,0x0988E549L,0x0988E549L,0x0988E549L,0x0988E549L,0x0988E549L}};
                int i, j;
                l_191++;
                p_434->g_205[3] &= (((l_190 & l_183) ^ (~(((safe_div_func_int32_t_s_s(((0xE5944C72L ^ (&p_434->g_62 != (void*)0)) , (safe_rshift_func_int8_t_s_s((((l_204 |= ((((safe_mod_func_int64_t_s_s(l_190, (safe_div_func_uint16_t_u_u((p_434->g_95.f0 == l_189), ((safe_unary_minus_func_uint32_t_u(l_189)) && l_190))))) <= 8L) & 0x70E6CD8EL) < p_434->g_63)) , (**l_128)) > l_161.x), l_189))), p_434->g_3)) == 0x90L) | l_186[0][7][4]))) ^ p_434->g_126[8]);
                l_209[1]--;
                p_434->g_126[8] = ((safe_lshift_func_uint16_t_u_s((p_434->g_205[3] >= (p_434->g_95 , (l_191 == l_186[0][7][4]))), (((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(2UL, 0x8FF07A6BL)).yyxx)).odd)).yxyy)).zwwyyyzw)).s3 , (l_208 < p_434->g_126[8])))) , (254UL || ((&l_132[8][0][8] == p_434->g_214) > (-1L))));
            }
        }
    }
    if ((**l_128))
    { /* block id: 76 */
        return p_87;
    }
    else
    { /* block id: 78 */
        int8_t l_217 = (-6L);
        int8_t *l_230[4] = {&l_169,&l_169,&l_169,&l_169};
        uint32_t *l_232 = &p_434->g_117;
        int32_t ***l_241[3][10][8] = {{{&p_434->g_239,&p_434->g_239,&l_128,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239},{&p_434->g_239,&p_434->g_239,&l_128,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239},{&p_434->g_239,&p_434->g_239,&l_128,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239},{&p_434->g_239,&p_434->g_239,&l_128,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239},{&p_434->g_239,&p_434->g_239,&l_128,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239},{&p_434->g_239,&p_434->g_239,&l_128,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239},{&p_434->g_239,&p_434->g_239,&l_128,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239},{&p_434->g_239,&p_434->g_239,&l_128,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239},{&p_434->g_239,&p_434->g_239,&l_128,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239},{&p_434->g_239,&p_434->g_239,&l_128,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239}},{{&p_434->g_239,&p_434->g_239,&l_128,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239},{&p_434->g_239,&p_434->g_239,&l_128,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239},{&p_434->g_239,&p_434->g_239,&l_128,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239},{&p_434->g_239,&p_434->g_239,&l_128,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239},{&p_434->g_239,&p_434->g_239,&l_128,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239},{&p_434->g_239,&p_434->g_239,&l_128,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239},{&p_434->g_239,&p_434->g_239,&l_128,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239},{&p_434->g_239,&p_434->g_239,&l_128,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239},{&p_434->g_239,&p_434->g_239,&l_128,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239},{&p_434->g_239,&p_434->g_239,&l_128,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239}},{{&p_434->g_239,&p_434->g_239,&l_128,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239},{&p_434->g_239,&p_434->g_239,&l_128,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239},{&p_434->g_239,&p_434->g_239,&l_128,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239},{&p_434->g_239,&p_434->g_239,&l_128,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239},{&p_434->g_239,&p_434->g_239,&l_128,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239},{&p_434->g_239,&p_434->g_239,&l_128,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239},{&p_434->g_239,&p_434->g_239,&l_128,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239},{&p_434->g_239,&p_434->g_239,&l_128,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239},{&p_434->g_239,&p_434->g_239,&l_128,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239},{&p_434->g_239,&p_434->g_239,&l_128,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239,&p_434->g_239}}};
        uint32_t l_249[8] = {0x6996EA70L,0x6996EA70L,0x6996EA70L,0x6996EA70L,0x6996EA70L,0x6996EA70L,0x6996EA70L,0x6996EA70L};
        int i, j, k;
        for (p_434->g_151 = 0; (p_434->g_151 < 31); ++p_434->g_151)
        { /* block id: 81 */
            (**l_128) = (p_434->g_99 && 9UL);
            p_434->g_126[2] = l_217;
            if (l_217)
                break;
            for (l_172 = 0; (l_172 >= 20); l_172 = safe_add_func_uint16_t_u_u(l_172, 8))
            { /* block id: 87 */
                uint16_t *l_222[1][4][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
                int i, j, k;
                for (p_434->g_99 = 0; (p_434->g_99 > 15); p_434->g_99 = safe_add_func_int32_t_s_s(p_434->g_99, 8))
                { /* block id: 90 */
                    return l_222[0][0][0];
                }
            }
        }
        l_223++;
        p_434->g_251 ^= ((((safe_div_func_uint32_t_u_u(((l_249[7] = (safe_sub_func_int8_t_s_s(((**l_128) = (p_434->g_231 &= l_217)), (((*l_232) = 0x8E2C0D5EL) <= (safe_add_func_uint8_t_u_u((safe_mod_func_int16_t_s_s((~(safe_mod_func_int8_t_s_s(l_217, (p_434->g_243 ^= ((p_434->g_239 = p_434->g_239) != (p_434->g_242 = &p_434->g_240)))))), 0x303FL)), (p_434->g_248 = (safe_div_func_int8_t_s_s(0x37L, ((p_434->g_205[2] == (((safe_lshift_func_uint16_t_u_u(0x8854L, p_434->g_107.s3)) <= 249UL) & p_434->g_95.f0)) , p_434->g_20)))))))))) < p_434->g_18), l_250)) , &l_172) == (void*)0) , (**l_128));
        (*l_128) = (void*)0;
    }
    return l_175[6];
}


/* ------------------------------------------ */
/* 
 * reads : p_434->g_18 p_434->g_126 p_434->g_127
 * writes: p_434->g_18 p_434->g_126
 */
uint16_t * func_89(int32_t * p_90, uint16_t * p_91, union U0  p_92, uint32_t  p_93, int16_t  p_94, struct S3 * p_434)
{ /* block id: 17 */
    for (p_434->g_18 = 0; (p_434->g_18 > 2); p_434->g_18++)
    { /* block id: 20 */
        int32_t *l_125 = &p_434->g_126[8];
        (*l_125) ^= (safe_lshift_func_int16_t_s_u(0x77FAL, 6));
    }
    return p_434->g_127;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S3 c_435;
    struct S3* p_434 = &c_435;
    struct S3 c_436 = {
        (-4L), // p_434->g_3
        0x6623B26D5D64F689L, // p_434->g_18
        (-4L), // p_434->g_20
        (VECTOR(uint32_t, 4))(0xA9961215L, (VECTOR(uint32_t, 2))(0xA9961215L, 0xFCA86293L), 0xFCA86293L), // p_434->g_21
        18446744073709551614UL, // p_434->g_24
        0x437069E5L, // p_434->g_48
        0x0E46F67AL, // p_434->g_63
        &p_434->g_63, // p_434->g_62
        0x0D7CL, // p_434->g_69
        {8UL}, // p_434->g_95
        0x2390699391FD4078L, // p_434->g_99
        0xC704L, // p_434->g_105
        &p_434->g_105, // p_434->g_104
        (VECTOR(uint16_t, 8))(65532UL, (VECTOR(uint16_t, 4))(65532UL, (VECTOR(uint16_t, 2))(65532UL, 0xD11FL), 0xD11FL), 0xD11FL, 65532UL, 0xD11FL), // p_434->g_107
        4294967292UL, // p_434->g_117
        {0x18D8L,0x18D8L,0x18D8L,0x18D8L,0x18D8L,0x18D8L,0x18D8L,0x18D8L,0x18D8L,0x18D8L}, // p_434->g_120
        {0x5966A8FCL,0x5966A8FCL,0x5966A8FCL,0x5966A8FCL,0x5966A8FCL,0x5966A8FCL,0x5966A8FCL,0x5966A8FCL,0x5966A8FCL}, // p_434->g_126
        (void*)0, // p_434->g_127
        18446744073709551612UL, // p_434->g_151
        {&p_434->g_62,(void*)0,&p_434->g_62,&p_434->g_62,(void*)0,&p_434->g_62,&p_434->g_62,(void*)0}, // p_434->g_155
        &p_434->g_127, // p_434->g_166
        {0x29L,0x29L,0x29L,0x29L}, // p_434->g_205
        (void*)0, // p_434->g_214
        0x78B5091CL, // p_434->g_231
        (void*)0, // p_434->g_240
        &p_434->g_240, // p_434->g_239
        &p_434->g_240, // p_434->g_242
        0x0556BECCL, // p_434->g_243
        4294967291UL, // p_434->g_248
        5L, // p_434->g_251
        {4UL}, // p_434->g_253
        (VECTOR(uint16_t, 16))(65528UL, (VECTOR(uint16_t, 4))(65528UL, (VECTOR(uint16_t, 2))(65528UL, 0xBEF7L), 0xBEF7L), 0xBEF7L, 65528UL, 0xBEF7L, (VECTOR(uint16_t, 2))(65528UL, 0xBEF7L), (VECTOR(uint16_t, 2))(65528UL, 0xBEF7L), 65528UL, 0xBEF7L, 65528UL, 0xBEF7L), // p_434->g_259
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_434->g_285
        (VECTOR(int8_t, 2))(0x6DL, 0L), // p_434->g_319
        (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x0BL), 0x0BL), 0x0BL, 1L, 0x0BL, (VECTOR(int8_t, 2))(1L, 0x0BL), (VECTOR(int8_t, 2))(1L, 0x0BL), 1L, 0x0BL, 1L, 0x0BL), // p_434->g_320
        (VECTOR(int8_t, 2))(1L, 0x3AL), // p_434->g_321
        0L, // p_434->g_323
        (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L, (VECTOR(int8_t, 2))((-1L), 1L), (VECTOR(int8_t, 2))((-1L), 1L), (-1L), 1L, (-1L), 1L), // p_434->g_351
        (VECTOR(int64_t, 16))(0x243A95C5AD12C46DL, (VECTOR(int64_t, 4))(0x243A95C5AD12C46DL, (VECTOR(int64_t, 2))(0x243A95C5AD12C46DL, 0x3F6BB9B51BF6AE2BL), 0x3F6BB9B51BF6AE2BL), 0x3F6BB9B51BF6AE2BL, 0x243A95C5AD12C46DL, 0x3F6BB9B51BF6AE2BL, (VECTOR(int64_t, 2))(0x243A95C5AD12C46DL, 0x3F6BB9B51BF6AE2BL), (VECTOR(int64_t, 2))(0x243A95C5AD12C46DL, 0x3F6BB9B51BF6AE2BL), 0x243A95C5AD12C46DL, 0x3F6BB9B51BF6AE2BL, 0x243A95C5AD12C46DL, 0x3F6BB9B51BF6AE2BL), // p_434->g_353
        {-1L}, // p_434->g_366
        {8L}, // p_434->g_377
        &p_434->g_377, // p_434->g_376
        (void*)0, // p_434->g_378
        {{{&p_434->g_378,&p_434->g_378,&p_434->g_378,&p_434->g_378},{&p_434->g_378,&p_434->g_378,&p_434->g_378,&p_434->g_378},{&p_434->g_378,&p_434->g_378,&p_434->g_378,&p_434->g_378},{&p_434->g_378,&p_434->g_378,&p_434->g_378,&p_434->g_378},{&p_434->g_378,&p_434->g_378,&p_434->g_378,&p_434->g_378},{&p_434->g_378,&p_434->g_378,&p_434->g_378,&p_434->g_378},{&p_434->g_378,&p_434->g_378,&p_434->g_378,&p_434->g_378},{&p_434->g_378,&p_434->g_378,&p_434->g_378,&p_434->g_378}},{{&p_434->g_378,&p_434->g_378,&p_434->g_378,&p_434->g_378},{&p_434->g_378,&p_434->g_378,&p_434->g_378,&p_434->g_378},{&p_434->g_378,&p_434->g_378,&p_434->g_378,&p_434->g_378},{&p_434->g_378,&p_434->g_378,&p_434->g_378,&p_434->g_378},{&p_434->g_378,&p_434->g_378,&p_434->g_378,&p_434->g_378},{&p_434->g_378,&p_434->g_378,&p_434->g_378,&p_434->g_378},{&p_434->g_378,&p_434->g_378,&p_434->g_378,&p_434->g_378},{&p_434->g_378,&p_434->g_378,&p_434->g_378,&p_434->g_378}},{{&p_434->g_378,&p_434->g_378,&p_434->g_378,&p_434->g_378},{&p_434->g_378,&p_434->g_378,&p_434->g_378,&p_434->g_378},{&p_434->g_378,&p_434->g_378,&p_434->g_378,&p_434->g_378},{&p_434->g_378,&p_434->g_378,&p_434->g_378,&p_434->g_378},{&p_434->g_378,&p_434->g_378,&p_434->g_378,&p_434->g_378},{&p_434->g_378,&p_434->g_378,&p_434->g_378,&p_434->g_378},{&p_434->g_378,&p_434->g_378,&p_434->g_378,&p_434->g_378},{&p_434->g_378,&p_434->g_378,&p_434->g_378,&p_434->g_378}},{{&p_434->g_378,&p_434->g_378,&p_434->g_378,&p_434->g_378},{&p_434->g_378,&p_434->g_378,&p_434->g_378,&p_434->g_378},{&p_434->g_378,&p_434->g_378,&p_434->g_378,&p_434->g_378},{&p_434->g_378,&p_434->g_378,&p_434->g_378,&p_434->g_378},{&p_434->g_378,&p_434->g_378,&p_434->g_378,&p_434->g_378},{&p_434->g_378,&p_434->g_378,&p_434->g_378,&p_434->g_378},{&p_434->g_378,&p_434->g_378,&p_434->g_378,&p_434->g_378},{&p_434->g_378,&p_434->g_378,&p_434->g_378,&p_434->g_378}}}, // p_434->g_375
        (VECTOR(uint8_t, 2))(2UL, 0x99L), // p_434->g_379
        1UL, // p_434->g_406
        0xAD7B2BA3L, // p_434->g_407
        0xD08F65F2L, // p_434->g_408
        0x78D01ADEL, // p_434->g_409
        4294967295UL, // p_434->g_410
        {0x3079303AL,0x3079303AL,0x3079303AL,0x3079303AL,0x3079303AL,0x3079303AL,0x3079303AL}, // p_434->g_411
        0xD17AA2CEL, // p_434->g_412
        0x846FD9E5L, // p_434->g_413
        4294967292UL, // p_434->g_414
        0x3F1CE542L, // p_434->g_415
        1UL, // p_434->g_416
        0xDECFF001L, // p_434->g_417
        {{0xA93C67A3L},{0xA93C67A3L},{0xA93C67A3L},{0xA93C67A3L},{0xA93C67A3L},{0xA93C67A3L},{0xA93C67A3L},{0xA93C67A3L},{0xA93C67A3L}}, // p_434->g_418
        9UL, // p_434->g_419
        {{{(void*)0,&p_434->g_410,&p_434->g_414,(void*)0},{(void*)0,&p_434->g_410,&p_434->g_414,(void*)0},{(void*)0,&p_434->g_410,&p_434->g_414,(void*)0}},{{(void*)0,&p_434->g_410,&p_434->g_414,(void*)0},{(void*)0,&p_434->g_410,&p_434->g_414,(void*)0},{(void*)0,&p_434->g_410,&p_434->g_414,(void*)0}},{{(void*)0,&p_434->g_410,&p_434->g_414,(void*)0},{(void*)0,&p_434->g_410,&p_434->g_414,(void*)0},{(void*)0,&p_434->g_410,&p_434->g_414,(void*)0}},{{(void*)0,&p_434->g_410,&p_434->g_414,(void*)0},{(void*)0,&p_434->g_410,&p_434->g_414,(void*)0},{(void*)0,&p_434->g_410,&p_434->g_414,(void*)0}},{{(void*)0,&p_434->g_410,&p_434->g_414,(void*)0},{(void*)0,&p_434->g_410,&p_434->g_414,(void*)0},{(void*)0,&p_434->g_410,&p_434->g_414,(void*)0}},{{(void*)0,&p_434->g_410,&p_434->g_414,(void*)0},{(void*)0,&p_434->g_410,&p_434->g_414,(void*)0},{(void*)0,&p_434->g_410,&p_434->g_414,(void*)0}},{{(void*)0,&p_434->g_410,&p_434->g_414,(void*)0},{(void*)0,&p_434->g_410,&p_434->g_414,(void*)0},{(void*)0,&p_434->g_410,&p_434->g_414,(void*)0}}}, // p_434->g_405
        {&p_434->g_405[6][0][0],&p_434->g_405[6][0][0],&p_434->g_405[6][0][0]}, // p_434->g_404
        sequence_input[get_global_id(0)], // p_434->global_0_offset
        sequence_input[get_global_id(1)], // p_434->global_1_offset
        sequence_input[get_global_id(2)], // p_434->global_2_offset
        sequence_input[get_local_id(0)], // p_434->local_0_offset
        sequence_input[get_local_id(1)], // p_434->local_1_offset
        sequence_input[get_local_id(2)], // p_434->local_2_offset
        sequence_input[get_group_id(0)], // p_434->group_0_offset
        sequence_input[get_group_id(1)], // p_434->group_1_offset
        sequence_input[get_group_id(2)], // p_434->group_2_offset
    };
    c_435 = c_436;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_434);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_434->g_3, "p_434->g_3", print_hash_value);
    transparent_crc(p_434->g_18, "p_434->g_18", print_hash_value);
    transparent_crc(p_434->g_20, "p_434->g_20", print_hash_value);
    transparent_crc(p_434->g_21.x, "p_434->g_21.x", print_hash_value);
    transparent_crc(p_434->g_21.y, "p_434->g_21.y", print_hash_value);
    transparent_crc(p_434->g_21.z, "p_434->g_21.z", print_hash_value);
    transparent_crc(p_434->g_21.w, "p_434->g_21.w", print_hash_value);
    transparent_crc(p_434->g_24, "p_434->g_24", print_hash_value);
    transparent_crc(p_434->g_48, "p_434->g_48", print_hash_value);
    transparent_crc(p_434->g_63, "p_434->g_63", print_hash_value);
    transparent_crc(p_434->g_69, "p_434->g_69", print_hash_value);
    transparent_crc(p_434->g_95.f0, "p_434->g_95.f0", print_hash_value);
    transparent_crc(p_434->g_99, "p_434->g_99", print_hash_value);
    transparent_crc(p_434->g_105, "p_434->g_105", print_hash_value);
    transparent_crc(p_434->g_107.s0, "p_434->g_107.s0", print_hash_value);
    transparent_crc(p_434->g_107.s1, "p_434->g_107.s1", print_hash_value);
    transparent_crc(p_434->g_107.s2, "p_434->g_107.s2", print_hash_value);
    transparent_crc(p_434->g_107.s3, "p_434->g_107.s3", print_hash_value);
    transparent_crc(p_434->g_107.s4, "p_434->g_107.s4", print_hash_value);
    transparent_crc(p_434->g_107.s5, "p_434->g_107.s5", print_hash_value);
    transparent_crc(p_434->g_107.s6, "p_434->g_107.s6", print_hash_value);
    transparent_crc(p_434->g_107.s7, "p_434->g_107.s7", print_hash_value);
    transparent_crc(p_434->g_117, "p_434->g_117", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_434->g_120[i], "p_434->g_120[i]", print_hash_value);

    }
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_434->g_126[i], "p_434->g_126[i]", print_hash_value);

    }
    transparent_crc(p_434->g_151, "p_434->g_151", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_434->g_205[i], "p_434->g_205[i]", print_hash_value);

    }
    transparent_crc(p_434->g_231, "p_434->g_231", print_hash_value);
    transparent_crc(p_434->g_243, "p_434->g_243", print_hash_value);
    transparent_crc(p_434->g_248, "p_434->g_248", print_hash_value);
    transparent_crc(p_434->g_251, "p_434->g_251", print_hash_value);
    transparent_crc(p_434->g_253.f0, "p_434->g_253.f0", print_hash_value);
    transparent_crc(p_434->g_259.s0, "p_434->g_259.s0", print_hash_value);
    transparent_crc(p_434->g_259.s1, "p_434->g_259.s1", print_hash_value);
    transparent_crc(p_434->g_259.s2, "p_434->g_259.s2", print_hash_value);
    transparent_crc(p_434->g_259.s3, "p_434->g_259.s3", print_hash_value);
    transparent_crc(p_434->g_259.s4, "p_434->g_259.s4", print_hash_value);
    transparent_crc(p_434->g_259.s5, "p_434->g_259.s5", print_hash_value);
    transparent_crc(p_434->g_259.s6, "p_434->g_259.s6", print_hash_value);
    transparent_crc(p_434->g_259.s7, "p_434->g_259.s7", print_hash_value);
    transparent_crc(p_434->g_259.s8, "p_434->g_259.s8", print_hash_value);
    transparent_crc(p_434->g_259.s9, "p_434->g_259.s9", print_hash_value);
    transparent_crc(p_434->g_259.sa, "p_434->g_259.sa", print_hash_value);
    transparent_crc(p_434->g_259.sb, "p_434->g_259.sb", print_hash_value);
    transparent_crc(p_434->g_259.sc, "p_434->g_259.sc", print_hash_value);
    transparent_crc(p_434->g_259.sd, "p_434->g_259.sd", print_hash_value);
    transparent_crc(p_434->g_259.se, "p_434->g_259.se", print_hash_value);
    transparent_crc(p_434->g_259.sf, "p_434->g_259.sf", print_hash_value);
    transparent_crc(p_434->g_319.x, "p_434->g_319.x", print_hash_value);
    transparent_crc(p_434->g_319.y, "p_434->g_319.y", print_hash_value);
    transparent_crc(p_434->g_320.s0, "p_434->g_320.s0", print_hash_value);
    transparent_crc(p_434->g_320.s1, "p_434->g_320.s1", print_hash_value);
    transparent_crc(p_434->g_320.s2, "p_434->g_320.s2", print_hash_value);
    transparent_crc(p_434->g_320.s3, "p_434->g_320.s3", print_hash_value);
    transparent_crc(p_434->g_320.s4, "p_434->g_320.s4", print_hash_value);
    transparent_crc(p_434->g_320.s5, "p_434->g_320.s5", print_hash_value);
    transparent_crc(p_434->g_320.s6, "p_434->g_320.s6", print_hash_value);
    transparent_crc(p_434->g_320.s7, "p_434->g_320.s7", print_hash_value);
    transparent_crc(p_434->g_320.s8, "p_434->g_320.s8", print_hash_value);
    transparent_crc(p_434->g_320.s9, "p_434->g_320.s9", print_hash_value);
    transparent_crc(p_434->g_320.sa, "p_434->g_320.sa", print_hash_value);
    transparent_crc(p_434->g_320.sb, "p_434->g_320.sb", print_hash_value);
    transparent_crc(p_434->g_320.sc, "p_434->g_320.sc", print_hash_value);
    transparent_crc(p_434->g_320.sd, "p_434->g_320.sd", print_hash_value);
    transparent_crc(p_434->g_320.se, "p_434->g_320.se", print_hash_value);
    transparent_crc(p_434->g_320.sf, "p_434->g_320.sf", print_hash_value);
    transparent_crc(p_434->g_321.x, "p_434->g_321.x", print_hash_value);
    transparent_crc(p_434->g_321.y, "p_434->g_321.y", print_hash_value);
    transparent_crc(p_434->g_323, "p_434->g_323", print_hash_value);
    transparent_crc(p_434->g_351.s0, "p_434->g_351.s0", print_hash_value);
    transparent_crc(p_434->g_351.s1, "p_434->g_351.s1", print_hash_value);
    transparent_crc(p_434->g_351.s2, "p_434->g_351.s2", print_hash_value);
    transparent_crc(p_434->g_351.s3, "p_434->g_351.s3", print_hash_value);
    transparent_crc(p_434->g_351.s4, "p_434->g_351.s4", print_hash_value);
    transparent_crc(p_434->g_351.s5, "p_434->g_351.s5", print_hash_value);
    transparent_crc(p_434->g_351.s6, "p_434->g_351.s6", print_hash_value);
    transparent_crc(p_434->g_351.s7, "p_434->g_351.s7", print_hash_value);
    transparent_crc(p_434->g_351.s8, "p_434->g_351.s8", print_hash_value);
    transparent_crc(p_434->g_351.s9, "p_434->g_351.s9", print_hash_value);
    transparent_crc(p_434->g_351.sa, "p_434->g_351.sa", print_hash_value);
    transparent_crc(p_434->g_351.sb, "p_434->g_351.sb", print_hash_value);
    transparent_crc(p_434->g_351.sc, "p_434->g_351.sc", print_hash_value);
    transparent_crc(p_434->g_351.sd, "p_434->g_351.sd", print_hash_value);
    transparent_crc(p_434->g_351.se, "p_434->g_351.se", print_hash_value);
    transparent_crc(p_434->g_351.sf, "p_434->g_351.sf", print_hash_value);
    transparent_crc(p_434->g_353.s0, "p_434->g_353.s0", print_hash_value);
    transparent_crc(p_434->g_353.s1, "p_434->g_353.s1", print_hash_value);
    transparent_crc(p_434->g_353.s2, "p_434->g_353.s2", print_hash_value);
    transparent_crc(p_434->g_353.s3, "p_434->g_353.s3", print_hash_value);
    transparent_crc(p_434->g_353.s4, "p_434->g_353.s4", print_hash_value);
    transparent_crc(p_434->g_353.s5, "p_434->g_353.s5", print_hash_value);
    transparent_crc(p_434->g_353.s6, "p_434->g_353.s6", print_hash_value);
    transparent_crc(p_434->g_353.s7, "p_434->g_353.s7", print_hash_value);
    transparent_crc(p_434->g_353.s8, "p_434->g_353.s8", print_hash_value);
    transparent_crc(p_434->g_353.s9, "p_434->g_353.s9", print_hash_value);
    transparent_crc(p_434->g_353.sa, "p_434->g_353.sa", print_hash_value);
    transparent_crc(p_434->g_353.sb, "p_434->g_353.sb", print_hash_value);
    transparent_crc(p_434->g_353.sc, "p_434->g_353.sc", print_hash_value);
    transparent_crc(p_434->g_353.sd, "p_434->g_353.sd", print_hash_value);
    transparent_crc(p_434->g_353.se, "p_434->g_353.se", print_hash_value);
    transparent_crc(p_434->g_353.sf, "p_434->g_353.sf", print_hash_value);
    transparent_crc(p_434->g_366.f0, "p_434->g_366.f0", print_hash_value);
    transparent_crc(p_434->g_377.f0, "p_434->g_377.f0", print_hash_value);
    transparent_crc(p_434->g_379.x, "p_434->g_379.x", print_hash_value);
    transparent_crc(p_434->g_379.y, "p_434->g_379.y", print_hash_value);
    transparent_crc(p_434->g_406, "p_434->g_406", print_hash_value);
    transparent_crc(p_434->g_407, "p_434->g_407", print_hash_value);
    transparent_crc(p_434->g_408, "p_434->g_408", print_hash_value);
    transparent_crc(p_434->g_409, "p_434->g_409", print_hash_value);
    transparent_crc(p_434->g_410, "p_434->g_410", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_434->g_411[i], "p_434->g_411[i]", print_hash_value);

    }
    transparent_crc(p_434->g_412, "p_434->g_412", print_hash_value);
    transparent_crc(p_434->g_413, "p_434->g_413", print_hash_value);
    transparent_crc(p_434->g_414, "p_434->g_414", print_hash_value);
    transparent_crc(p_434->g_415, "p_434->g_415", print_hash_value);
    transparent_crc(p_434->g_416, "p_434->g_416", print_hash_value);
    transparent_crc(p_434->g_417, "p_434->g_417", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_434->g_418[i][j], "p_434->g_418[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_434->g_419, "p_434->g_419", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
