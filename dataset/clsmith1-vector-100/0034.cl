// ---fake_divergence -g 52,6,16 -l 1,6,2
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


// Seed: 34

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint32_t  f0;
   int64_t  f1;
   volatile int8_t  f2;
};

struct S1 {
    int32_t g_2;
    int32_t g_5;
    uint32_t g_12;
    int32_t g_18;
    int32_t *g_32;
    int32_t *g_63[7][3][6];
    int32_t ** volatile g_62;
    int32_t g_65;
    volatile VECTOR(int16_t, 8) g_68;
    union U0 g_103;
    union U0 *g_102;
    union U0 g_113;
    uint8_t g_116[8][8];
    VECTOR(int8_t, 2) g_120;
    uint32_t g_123;
    uint32_t g_130;
    volatile int64_t g_151;
    volatile int64_t g_152;
    volatile int64_t g_153[3];
    volatile int64_t g_154;
    volatile int64_t g_155;
    volatile int64_t g_156;
    volatile int64_t g_157;
    volatile int64_t g_158;
    volatile int64_t g_159;
    volatile int64_t g_160;
    volatile int64_t g_161;
    volatile int64_t g_162;
    volatile int64_t g_163[3][6];
    volatile int64_t g_164;
    volatile int64_t g_165;
    volatile VECTOR(int64_t, 8) g_166;
    volatile int64_t g_167;
    volatile int64_t g_168;
    volatile int64_t g_169;
    volatile int64_t g_170;
    volatile int64_t g_171[6];
    volatile int64_t g_172[5][2][7];
    volatile int64_t g_173;
    volatile int64_t g_174;
    volatile int64_t g_175;
    volatile int64_t g_176[4];
    volatile int64_t g_177[2][4];
    volatile int64_t g_178[3];
    volatile int64_t g_179;
    volatile int64_t g_180;
    volatile int64_t g_181;
    volatile int64_t g_182;
    volatile VECTOR(int64_t, 4) g_183;
    volatile int64_t g_184;
    volatile int64_t g_185;
    volatile int64_t g_186;
    volatile int64_t g_187;
    volatile int64_t g_188;
    volatile int64_t g_189[6];
    volatile int64_t g_190[8];
    volatile int64_t g_191;
    volatile int64_t g_192[7][3];
    volatile int64_t g_193;
    volatile int64_t g_194;
    volatile int64_t *g_150[7][4][8];
    uint64_t g_203;
    int64_t g_222[4][5][4];
    VECTOR(int32_t, 8) g_242;
    VECTOR(int32_t, 4) g_259;
    VECTOR(uint8_t, 8) g_282;
    int16_t g_330[4][10][2];
    int32_t * volatile g_366;
    int32_t * volatile g_368[4][8];
    int32_t * volatile g_370;
    int32_t * volatile g_371;
    int32_t * volatile g_372;
    union U0 g_384;
    VECTOR(uint16_t, 2) g_390;
    uint16_t g_398;
    uint32_t g_404;
    int32_t ** volatile g_405;
    uint32_t *g_437;
    uint32_t **g_436;
    int16_t * volatile * volatile g_443[2];
    VECTOR(int64_t, 16) g_448;
    int32_t **g_454;
    int32_t ***g_453;
    int16_t g_456;
    VECTOR(int32_t, 4) g_483;
    volatile uint32_t g_520;
    union U0 g_539;
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
int8_t  func_1(struct S1 * p_543);
uint32_t  func_13(int32_t  p_14, uint32_t  p_15, struct S1 * p_543);
int8_t  func_26(int32_t * p_27, int32_t  p_28, int32_t  p_29, int32_t * p_30, int32_t * p_31, struct S1 * p_543);
int32_t  func_33(uint8_t  p_34, uint32_t  p_35, int32_t  p_36, struct S1 * p_543);
uint16_t  func_44(int32_t  p_45, int32_t * p_46, int64_t  p_47, int32_t  p_48, struct S1 * p_543);
uint32_t  func_49(uint16_t  p_50, struct S1 * p_543);
int32_t * func_74(int32_t ** p_75, int32_t ** p_76, int32_t * p_77, int64_t  p_78, struct S1 * p_543);
int32_t ** func_80(int32_t * p_81, int64_t  p_82, int32_t  p_83, int32_t * p_84, int32_t  p_85, struct S1 * p_543);
int32_t ** func_87(uint32_t  p_88, int32_t * p_89, int32_t  p_90, int32_t ** p_91, struct S1 * p_543);
union U0 * func_99(union U0 * p_100, uint8_t  p_101, struct S1 * p_543);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_543->g_2 p_543->g_166 p_543->g_483 p_543->g_5 p_543->g_32 p_543->g_456 p_543->g_520 p_543->g_113.f0 p_543->g_398 p_543->g_190
 * writes: p_543->g_2 p_543->g_5 p_543->g_456 p_543->g_520 p_543->g_398
 */
int8_t  func_1(struct S1 * p_543)
{ /* block id: 4 */
    uint64_t l_16 = 18446744073709551611UL;
    int32_t *l_376 = &p_543->g_5;
    int32_t l_428 = 0x7F4B106BL;
    uint8_t l_429 = 0x32L;
    int32_t l_457 = 0x3FFF6868L;
    uint32_t l_473 = 0x5397FFECL;
    int32_t l_477 = (-5L);
    int32_t l_514 = 0x53758DF2L;
    int32_t l_515 = (-10L);
    int32_t l_516[3][10][4] = {{{0x346E0961L,0x346E0961L,0x2F32C32EL,0x3392C1C5L},{0x346E0961L,0x346E0961L,0x2F32C32EL,0x3392C1C5L},{0x346E0961L,0x346E0961L,0x2F32C32EL,0x3392C1C5L},{0x346E0961L,0x346E0961L,0x2F32C32EL,0x3392C1C5L},{0x346E0961L,0x346E0961L,0x2F32C32EL,0x3392C1C5L},{0x346E0961L,0x346E0961L,0x2F32C32EL,0x3392C1C5L},{0x346E0961L,0x346E0961L,0x2F32C32EL,0x3392C1C5L},{0x346E0961L,0x346E0961L,0x2F32C32EL,0x3392C1C5L},{0x346E0961L,0x346E0961L,0x2F32C32EL,0x3392C1C5L},{0x346E0961L,0x346E0961L,0x2F32C32EL,0x3392C1C5L}},{{0x346E0961L,0x346E0961L,0x2F32C32EL,0x3392C1C5L},{0x346E0961L,0x346E0961L,0x2F32C32EL,0x3392C1C5L},{0x346E0961L,0x346E0961L,0x2F32C32EL,0x3392C1C5L},{0x346E0961L,0x346E0961L,0x2F32C32EL,0x3392C1C5L},{0x346E0961L,0x346E0961L,0x2F32C32EL,0x3392C1C5L},{0x346E0961L,0x346E0961L,0x2F32C32EL,0x3392C1C5L},{0x346E0961L,0x346E0961L,0x2F32C32EL,0x3392C1C5L},{0x346E0961L,0x346E0961L,0x2F32C32EL,0x3392C1C5L},{0x346E0961L,0x346E0961L,0x2F32C32EL,0x3392C1C5L},{0x346E0961L,0x346E0961L,0x2F32C32EL,0x3392C1C5L}},{{0x346E0961L,0x346E0961L,0x2F32C32EL,0x3392C1C5L},{0x346E0961L,0x346E0961L,0x2F32C32EL,0x3392C1C5L},{0x346E0961L,0x346E0961L,0x2F32C32EL,0x3392C1C5L},{0x346E0961L,0x346E0961L,0x2F32C32EL,0x3392C1C5L},{0x346E0961L,0x346E0961L,0x2F32C32EL,0x3392C1C5L},{0x346E0961L,0x346E0961L,0x2F32C32EL,0x3392C1C5L},{0x346E0961L,0x346E0961L,0x2F32C32EL,0x3392C1C5L},{0x346E0961L,0x346E0961L,0x2F32C32EL,0x3392C1C5L},{0x346E0961L,0x346E0961L,0x2F32C32EL,0x3392C1C5L},{0x346E0961L,0x346E0961L,0x2F32C32EL,0x3392C1C5L}}};
    int64_t l_536 = 7L;
    union U0 *l_538 = &p_543->g_539;
    uint32_t *l_540[3];
    uint32_t l_542 = 0x8DE9731EL;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_540[i] = &p_543->g_130;
    for (p_543->g_2 = 0; (p_543->g_2 != (-3)); p_543->g_2 = safe_sub_func_int64_t_s_s(p_543->g_2, 1))
    { /* block id: 7 */
        int32_t l_40 = 0x725AD92EL;
        int32_t *l_375 = &p_543->g_2;
        int16_t l_426 = 0L;
        int32_t l_427 = 4L;
        int32_t **l_452 = &p_543->g_63[2][2][5];
        int32_t ***l_451 = &l_452;
        int32_t l_462[1][1];
        int32_t *l_476[10];
        uint32_t l_478 = 0x0873EEF3L;
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 1; j++)
                l_462[i][j] = 0x751F5091L;
        }
        for (i = 0; i < 10; i++)
            l_476[i] = (void*)0;
        for (p_543->g_5 = 0; (p_543->g_5 < 1); p_543->g_5 = safe_add_func_int64_t_s_s(p_543->g_5, 3))
        { /* block id: 10 */
            VECTOR(uint64_t, 4) l_37 = (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x7017A68FAB8D2321L), 0x7017A68FAB8D2321L);
            VECTOR(uint64_t, 8) l_38 = (VECTOR(uint64_t, 8))(0x550E8F7CF8FB6F85L, (VECTOR(uint64_t, 4))(0x550E8F7CF8FB6F85L, (VECTOR(uint64_t, 2))(0x550E8F7CF8FB6F85L, 1UL), 1UL), 1UL, 0x550E8F7CF8FB6F85L, 1UL);
            int32_t *l_39[2];
            uint32_t *l_409 = (void*)0;
            uint32_t **l_408 = &l_409;
            int i;
            for (i = 0; i < 2; i++)
                l_39[i] = &p_543->g_5;
            (1 + 1);
        }
        if ((*l_375))
            break;
    }
    for (l_16 = 0; (l_16 >= 18); ++l_16)
    { /* block id: 165 */
        uint32_t l_501 = 1UL;
        int32_t l_512 = 0x35078128L;
        int32_t l_513 = 0x2E1222B0L;
        int32_t l_517 = 9L;
        int32_t l_518 = 0x092FCD9BL;
        int8_t l_519[5] = {0x0BL,0x0BL,0x0BL,0x0BL,0x0BL};
        uint16_t *l_527 = &p_543->g_398;
        union U0 *l_537 = (void*)0;
        uint32_t l_541 = 4294967291UL;
        int i;
        if ((p_543->g_166.s5 , ((*p_543->g_32) &= ((*l_376) &= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(p_543->g_483.wwwzywwwyxwwxxzw)))).sa))))
        { /* block id: 168 */
            for (p_543->g_456 = 20; (p_543->g_456 != 20); ++p_543->g_456)
            { /* block id: 171 */
                int32_t *l_486 = &l_477;
                int32_t *l_487 = &l_428;
                int32_t *l_488 = &l_477;
                int32_t *l_489 = &l_477;
                int32_t *l_490 = (void*)0;
                int32_t *l_491 = &l_428;
                int32_t *l_492 = &p_543->g_65;
                int32_t *l_493 = &p_543->g_5;
                int32_t *l_494 = &p_543->g_65;
                int32_t *l_495 = &p_543->g_65;
                int32_t *l_496 = &p_543->g_65;
                int32_t *l_497 = &p_543->g_2;
                int32_t *l_498 = (void*)0;
                int32_t *l_499 = &p_543->g_65;
                int32_t *l_500[2][1];
                int16_t l_504 = 1L;
                int i, j;
                for (i = 0; i < 2; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_500[i][j] = &l_428;
                }
                ++l_501;
                return l_504;
            }
        }
        else
        { /* block id: 175 */
            int32_t *l_505 = (void*)0;
            int32_t *l_506 = &l_428;
            int32_t *l_507 = (void*)0;
            int32_t *l_508 = &p_543->g_18;
            int32_t *l_509 = &l_428;
            int32_t *l_510 = &p_543->g_18;
            int32_t *l_511[4][5] = {{&p_543->g_18,&p_543->g_18,&p_543->g_18,&p_543->g_18,&p_543->g_18},{&p_543->g_18,&p_543->g_18,&p_543->g_18,&p_543->g_18,&p_543->g_18},{&p_543->g_18,&p_543->g_18,&p_543->g_18,&p_543->g_18,&p_543->g_18},{&p_543->g_18,&p_543->g_18,&p_543->g_18,&p_543->g_18,&p_543->g_18}};
            int i, j;
            p_543->g_520++;
        }
        (*p_543->g_32) ^= (safe_sub_func_uint64_t_u_u((~(((safe_div_func_uint32_t_u_u(p_543->g_113.f0, (((*l_527)++) || (((*l_527) &= (safe_sub_func_uint64_t_u_u(((((void*)0 != l_376) > (*l_376)) , (safe_rshift_func_uint16_t_u_u(((safe_mul_func_uint8_t_u_u(p_543->g_190[7], ((l_536 , l_537) == l_538))) <= ((void*)0 != l_540[2])), 5))), l_519[4]))) && (*l_376))))) == 0L) > l_541)), (*l_376)));
        return l_542;
    }
    return (*l_376);
}


/* ------------------------------------------ */
/* 
 * reads : p_543->g_5 p_543->g_18
 * writes: p_543->g_18
 */
uint32_t  func_13(int32_t  p_14, uint32_t  p_15, struct S1 * p_543)
{ /* block id: 11 */
    int32_t *l_17 = &p_543->g_18;
    VECTOR(uint16_t, 4) l_19 = (VECTOR(uint16_t, 4))(6UL, (VECTOR(uint16_t, 2))(6UL, 0x905BL), 0x905BL);
    int i;
    (*l_17) ^= p_543->g_5;
    (*l_17) = (((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(l_19.xwwxzxxxwwxwxxxw)).s15e3)).y || 0xEA96L);
    return p_543->g_5;
}


/* ------------------------------------------ */
/* 
 * reads : p_543->g_175 p_543->g_102 p_543->g_5 p_543->g_390 p_543->g_398 p_543->g_181 p_543->g_2 p_543->g_65
 * writes: p_543->g_103.f1 p_543->g_398 p_543->g_65
 */
int8_t  func_26(int32_t * p_27, int32_t  p_28, int32_t  p_29, int32_t * p_30, int32_t * p_31, struct S1 * p_543)
{ /* block id: 128 */
    union U0 *l_383 = &p_543->g_384;
    int64_t *l_385 = &p_543->g_103.f1;
    int16_t *l_389 = &p_543->g_330[1][0][0];
    int16_t **l_388 = &l_389;
    uint16_t *l_397 = &p_543->g_398;
    int8_t l_399 = 0x47L;
    int16_t l_400 = 0x23ACL;
    int32_t l_401[7] = {(-1L),0x0DE718F5L,(-1L),(-1L),0x0DE718F5L,(-1L),(-1L)};
    int32_t l_402 = 0x7E25E848L;
    int32_t *l_403 = &p_543->g_65;
    int i;
    l_402 = (l_401[4] |= (safe_add_func_uint32_t_u_u(((((p_29 , (safe_lshift_func_int8_t_s_u(((p_543->g_175 == ((safe_mul_func_int8_t_s_s(8L, (((((*l_385) = (l_383 == p_543->g_102)) & p_543->g_5) , (safe_lshift_func_int16_t_s_s((((*l_388) = &p_543->g_330[1][1][1]) == (void*)0), 6))) , ((((VECTOR(uint16_t, 16))(p_543->g_390.xxyxyxxyxxxxxyyy)).sf == ((((VECTOR(int64_t, 2))(0x579F30BDE3DF993FL, 0x633E876B565A55DEL)).even <= (safe_rshift_func_int16_t_s_s(((safe_mul_func_int16_t_s_s(((safe_lshift_func_uint16_t_u_u(((*l_397) ^= (l_385 == l_385)), 9)) ^ p_29), p_29)) >= l_399), l_399))) > l_400)) ^ 1UL)))) || l_399)) && p_543->g_181), l_399))) || 0x08L) | 0x45F7L) == p_28), l_400)));
    (*l_403) = (*p_30);
    (*l_403) = 0x1D921401L;
    return (*l_403);
}


/* ------------------------------------------ */
/* 
 * reads : p_543->g_2 p_543->g_5 p_543->g_12 p_543->g_32 p_543->g_62 p_543->g_65 p_543->g_68 p_543->g_102 p_543->g_116 p_543->g_120 p_543->g_130 p_543->g_113.f0 p_543->g_103.f0 p_543->g_150 p_543->g_123 p_543->g_242 p_543->g_203 p_543->g_282 p_543->g_153
 * writes: p_543->g_63 p_543->g_116 p_543->g_120 p_543->g_123 p_543->g_130 p_543->g_102 p_543->g_259 p_543->g_65 p_543->g_103.f0 p_543->g_330 p_543->g_203 p_543->g_113.f1
 */
int32_t  func_33(uint8_t  p_34, uint32_t  p_35, int32_t  p_36, struct S1 * p_543)
{ /* block id: 15 */
    int32_t *l_43 = &p_543->g_5;
    int64_t l_60 = 0x1EF36A5F6804519FL;
    uint8_t l_313 = 0x06L;
    VECTOR(int64_t, 2) l_358 = (VECTOR(int64_t, 2))(0L, 0x7FB5EEB36802E420L);
    VECTOR(uint64_t, 2) l_359 = (VECTOR(uint64_t, 2))(0x1208C59D77D8F926L, 0UL);
    int32_t l_374 = (-1L);
    int i;
    if ((safe_lshift_func_uint16_t_u_s(((p_543->g_2 < ((p_543->g_5 , &p_543->g_5) != l_43)) , func_44((p_543->g_2 || (((*l_43) != (!func_49((*l_43), p_543))) >= (safe_lshift_func_uint16_t_u_u((((safe_mod_func_int64_t_s_s(((((VECTOR(uint8_t, 2))(255UL, 0xCDL)).lo , func_49((!(((((safe_add_func_int32_t_s_s(0x3A052C45L, 0x693878D3L)) & p_543->g_12) , (*p_543->g_32)) == (*l_43)) != l_60)), p_543)) , 0x48A85F8785D54DBCL), (*l_43))) >= p_34) && p_35), 10)))), l_43, p_34, p_543->g_5, p_543)), 6)))
    { /* block id: 23 */
        return p_543->g_12;
    }
    else
    { /* block id: 25 */
        int8_t l_79 = 0x6EL;
        int32_t **l_86 = &p_543->g_63[2][2][5];
        int8_t l_311 = 0L;
        int32_t *l_312 = &p_543->g_5;
        int32_t ***l_319 = &l_86;
        int32_t *l_320 = (void*)0;
        int32_t *l_335 = &p_543->g_65;
        int64_t l_365 = 1L;
        (*l_335) = func_44(p_543->g_68.s2, func_74((func_49(l_79, p_543) , ((*l_319) = func_80(((*l_43) , (((l_86 == (FAKE_DIVERGE(p_543->group_0_offset, get_group_id(0), 10) , func_87((safe_mod_func_uint64_t_u_u(((!(((&p_543->g_5 != ((*l_86) = l_43)) , 0xD69FAF8F730D721FL) , (safe_div_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), (((VECTOR(uint32_t, 4))((safe_rshift_func_uint16_t_u_s(0xE331L, 4)), FAKE_DIVERGE(p_543->group_2_offset, get_group_id(2), 10), 0x7A9A3A12L, 0xE2246E6AL)).z | 0x430F9885L))))) >= p_543->g_65), p_543->g_2)), &p_543->g_2, p_543->g_65, &l_43, p_543))) == p_35) , (void*)0)), p_34, l_311, l_312, l_313, p_543))), &p_543->g_32, l_320, p_36, p_543), p_543->g_282.s0, p_543->g_2, p_543);
        for (l_313 = 0; (l_313 != 26); l_313++)
        { /* block id: 111 */
            uint32_t l_342 = 0UL;
            uint64_t *l_351 = (void*)0;
            uint64_t **l_350 = &l_351;
            VECTOR(uint64_t, 4) l_360 = (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x7DB31DB0B43FCBE3L), 0x7DB31DB0B43FCBE3L);
            int32_t *l_367 = (void*)0;
            int32_t *l_369 = (void*)0;
            int32_t *l_373[2];
            int i;
            for (i = 0; i < 2; i++)
                l_373[i] = (void*)0;
            for (p_543->g_203 = 0; (p_543->g_203 < 21); p_543->g_203 = safe_add_func_uint8_t_u_u(p_543->g_203, 7))
            { /* block id: 114 */
                for (p_543->g_113.f1 = 19; (p_543->g_113.f1 == (-12)); p_543->g_113.f1 = safe_sub_func_uint32_t_u_u(p_543->g_113.f1, 7))
                { /* block id: 117 */
                    l_342 ^= ((0x9C0902FAL && (0x96L & p_36)) < FAKE_DIVERGE(p_543->group_1_offset, get_group_id(1), 10));
                }
            }
            (*l_335) = (safe_unary_minus_func_uint64_t_u((*l_312)));
            l_374 = (safe_lshift_func_uint16_t_u_u(65530UL, ((safe_mul_func_int8_t_s_s(p_543->g_153[0], (((*l_350) = &p_543->g_203) == (l_342 , &p_543->g_203)))) > (((VECTOR(uint64_t, 16))((safe_mul_func_uint8_t_u_u(p_543->g_120.x, (safe_lshift_func_uint16_t_u_s(0xB663L, (GROUP_DIVERGE(1, 1) != (((((VECTOR(uint64_t, 16))(min(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(abs(((VECTOR(int64_t, 4))(l_358.yxxy))))).hi)).xyxyxyxy)).s3155335120336532, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(rotate(((VECTOR(uint64_t, 2))(mul_hi(((VECTOR(uint64_t, 2))(mad_hi(((VECTOR(uint64_t, 4))(rhadd(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(rhadd(((VECTOR(uint64_t, 2))(18446744073709551615UL, 1UL)).xyyyyyyxxxyyxyxx, ((VECTOR(uint64_t, 8))(l_359.xyyyyxyy)).s4655673352704040))).sb5)).xyyx, ((VECTOR(uint64_t, 16))(l_360.zwwxxzyzzxxwyywz)).sec8f))).odd, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(0x44C5DF3F8F12ADEEL, (l_360.x != (((*l_335) = (safe_div_func_int64_t_s_s(((safe_mod_func_uint64_t_u_u(p_35, p_543->g_242.s6)) == l_360.z), (*l_335)))) | l_365)), 0x5E521059E796479AL, ((VECTOR(uint64_t, 2))(0x744E4862DE4033CDL)), GROUP_DIVERGE(1, 1), 0x4467423B46362F99L, ((VECTOR(uint64_t, 2))(0x4FEE1EEDBBD5C51FL)), p_543->g_116[3][2], 1UL, ((VECTOR(uint64_t, 4))(7UL)), 0xCD52DF5A9B6240CDL)).s9389)).hi, ((VECTOR(uint64_t, 2))(0x8618921DC29A6F87L))))), ((VECTOR(uint64_t, 2))(2UL))))), ((VECTOR(uint64_t, 2))(7UL))))), 18446744073709551606UL, 0xC5D08145B7881275L)).zzzxyxxzxxwxzyyz))).s0 , (*l_335)) > 0xBBA300C765A976E9L) < 0UL)))))), ((VECTOR(uint64_t, 8))(0x37D535E3D7CFA1CFL)), ((VECTOR(uint64_t, 2))(8UL)), 18446744073709551615UL, ((VECTOR(uint64_t, 2))(6UL)), 18446744073709551613UL, 0x89C1D391246385FBL)).s9 >= 0UL))));
        }
    }
    return p_34;
}


/* ------------------------------------------ */
/* 
 * reads : p_543->g_62 p_543->g_65
 * writes: p_543->g_63
 */
uint16_t  func_44(int32_t  p_45, int32_t * p_46, int64_t  p_47, int32_t  p_48, struct S1 * p_543)
{ /* block id: 19 */
    int32_t *l_61 = &p_543->g_5;
    int32_t *l_64 = &p_543->g_65;
    int32_t *l_66 = &p_543->g_65;
    int32_t *l_67[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int8_t l_69 = (-2L);
    int8_t l_70 = 0L;
    uint64_t l_71 = 0x577C06B426EB45B5L;
    int i;
    (*p_543->g_62) = l_61;
    --l_71;
    return (*l_64);
}


/* ------------------------------------------ */
/* 
 * reads : p_543->g_2
 * writes:
 */
uint32_t  func_49(uint16_t  p_50, struct S1 * p_543)
{ /* block id: 16 */
    int32_t **l_51 = (void*)0;
    int32_t *l_53 = &p_543->g_2;
    int32_t **l_52 = &l_53;
    (*l_52) = &p_543->g_2;
    return p_543->g_2;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_543->g_330 p_543->g_65
 */
int32_t * func_74(int32_t ** p_75, int32_t ** p_76, int32_t * p_77, int64_t  p_78, struct S1 * p_543)
{ /* block id: 103 */
    int32_t l_327 = (-2L);
    int16_t *l_328 = (void*)0;
    int16_t *l_329 = &p_543->g_330[1][1][1];
    int32_t *l_331 = &p_543->g_65;
    uint32_t l_332 = 0x1E63FED3L;
    (*l_331) = ((p_78 & (safe_lshift_func_uint16_t_u_s((4294967290UL ^ p_78), ((safe_add_func_uint8_t_u_u(p_78, (safe_sub_func_int32_t_s_s((l_327 && 1UL), ((&p_543->g_2 != &p_543->g_65) || ((*l_329) = ((0x00AF2D98B7E4ED34L ^ l_327) | 0UL))))))) , 0x3B71L)))) , 1L);
    --l_332;
    return &p_543->g_65;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_543->g_65
 */
int32_t ** func_80(int32_t * p_81, int64_t  p_82, int32_t  p_83, int32_t * p_84, int32_t  p_85, struct S1 * p_543)
{ /* block id: 97 */
    int16_t l_314 = (-5L);
    int32_t *l_315 = (void*)0;
    int32_t *l_316 = (void*)0;
    int32_t *l_317 = &p_543->g_65;
    int32_t **l_318[9][10] = {{(void*)0,&p_543->g_63[2][2][4],&p_543->g_32,&p_543->g_63[2][2][5],&l_317,&p_543->g_63[2][2][5],(void*)0,&p_543->g_63[2][2][5],&p_543->g_63[2][2][5],&p_543->g_63[2][2][5]},{(void*)0,&p_543->g_63[2][2][4],&p_543->g_32,&p_543->g_63[2][2][5],&l_317,&p_543->g_63[2][2][5],(void*)0,&p_543->g_63[2][2][5],&p_543->g_63[2][2][5],&p_543->g_63[2][2][5]},{(void*)0,&p_543->g_63[2][2][4],&p_543->g_32,&p_543->g_63[2][2][5],&l_317,&p_543->g_63[2][2][5],(void*)0,&p_543->g_63[2][2][5],&p_543->g_63[2][2][5],&p_543->g_63[2][2][5]},{(void*)0,&p_543->g_63[2][2][4],&p_543->g_32,&p_543->g_63[2][2][5],&l_317,&p_543->g_63[2][2][5],(void*)0,&p_543->g_63[2][2][5],&p_543->g_63[2][2][5],&p_543->g_63[2][2][5]},{(void*)0,&p_543->g_63[2][2][4],&p_543->g_32,&p_543->g_63[2][2][5],&l_317,&p_543->g_63[2][2][5],(void*)0,&p_543->g_63[2][2][5],&p_543->g_63[2][2][5],&p_543->g_63[2][2][5]},{(void*)0,&p_543->g_63[2][2][4],&p_543->g_32,&p_543->g_63[2][2][5],&l_317,&p_543->g_63[2][2][5],(void*)0,&p_543->g_63[2][2][5],&p_543->g_63[2][2][5],&p_543->g_63[2][2][5]},{(void*)0,&p_543->g_63[2][2][4],&p_543->g_32,&p_543->g_63[2][2][5],&l_317,&p_543->g_63[2][2][5],(void*)0,&p_543->g_63[2][2][5],&p_543->g_63[2][2][5],&p_543->g_63[2][2][5]},{(void*)0,&p_543->g_63[2][2][4],&p_543->g_32,&p_543->g_63[2][2][5],&l_317,&p_543->g_63[2][2][5],(void*)0,&p_543->g_63[2][2][5],&p_543->g_63[2][2][5],&p_543->g_63[2][2][5]},{(void*)0,&p_543->g_63[2][2][4],&p_543->g_32,&p_543->g_63[2][2][5],&l_317,&p_543->g_63[2][2][5],(void*)0,&p_543->g_63[2][2][5],&p_543->g_63[2][2][5],&p_543->g_63[2][2][5]}};
    int i, j;
    l_314 = 0x51029405L;
    (*l_317) = l_314;
    p_84 = l_317;
    return &p_543->g_63[6][2][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_543->g_102 p_543->g_5 p_543->g_116 p_543->g_120 p_543->g_130 p_543->g_113.f0 p_543->g_2 p_543->g_103.f0 p_543->g_150 p_543->g_32 p_543->g_123 p_543->g_242 p_543->g_203 p_543->g_65 p_543->g_282
 * writes: p_543->g_116 p_543->g_120 p_543->g_123 p_543->g_130 p_543->g_102 p_543->g_259 p_543->g_63 p_543->g_65 p_543->g_103.f0
 */
int32_t ** func_87(uint32_t  p_88, int32_t * p_89, int32_t  p_90, int32_t ** p_91, struct S1 * p_543)
{ /* block id: 27 */
    VECTOR(int32_t, 8) l_98 = (VECTOR(int32_t, 8))(0x6BB261D9L, (VECTOR(int32_t, 4))(0x6BB261D9L, (VECTOR(int32_t, 2))(0x6BB261D9L, (-9L)), (-9L)), (-9L), 0x6BB261D9L, (-9L));
    VECTOR(int8_t, 16) l_121 = (VECTOR(int8_t, 16))(0x5EL, (VECTOR(int8_t, 4))(0x5EL, (VECTOR(int8_t, 2))(0x5EL, 0x2FL), 0x2FL), 0x2FL, 0x5EL, 0x2FL, (VECTOR(int8_t, 2))(0x5EL, 0x2FL), (VECTOR(int8_t, 2))(0x5EL, 0x2FL), 0x5EL, 0x2FL, 0x5EL, 0x2FL);
    int8_t *l_124 = (void*)0;
    int8_t l_201 = 0x40L;
    union U0 **l_219 = &p_543->g_102;
    union U0 **l_220[4][10] = {{&p_543->g_102,&p_543->g_102,&p_543->g_102,&p_543->g_102,(void*)0,(void*)0,&p_543->g_102,&p_543->g_102,&p_543->g_102,&p_543->g_102},{&p_543->g_102,&p_543->g_102,&p_543->g_102,&p_543->g_102,(void*)0,(void*)0,&p_543->g_102,&p_543->g_102,&p_543->g_102,&p_543->g_102},{&p_543->g_102,&p_543->g_102,&p_543->g_102,&p_543->g_102,(void*)0,(void*)0,&p_543->g_102,&p_543->g_102,&p_543->g_102,&p_543->g_102},{&p_543->g_102,&p_543->g_102,&p_543->g_102,&p_543->g_102,(void*)0,(void*)0,&p_543->g_102,&p_543->g_102,&p_543->g_102,&p_543->g_102}};
    int64_t *l_221[5][8][2] = {{{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]}},{{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]}},{{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]}},{{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]}},{{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]},{&p_543->g_222[3][3][0],&p_543->g_222[0][0][3]}}};
    VECTOR(int32_t, 16) l_244 = (VECTOR(int32_t, 16))(0x17DE9974L, (VECTOR(int32_t, 4))(0x17DE9974L, (VECTOR(int32_t, 2))(0x17DE9974L, 1L), 1L), 1L, 0x17DE9974L, 1L, (VECTOR(int32_t, 2))(0x17DE9974L, 1L), (VECTOR(int32_t, 2))(0x17DE9974L, 1L), 0x17DE9974L, 1L, 0x17DE9974L, 1L);
    uint32_t l_255 = 0x749AD737L;
    uint32_t l_256 = 3UL;
    int32_t *l_262 = &p_543->g_65;
    uint32_t l_266 = 4294967286UL;
    VECTOR(uint16_t, 8) l_278 = (VECTOR(uint16_t, 8))(0x9393L, (VECTOR(uint16_t, 4))(0x9393L, (VECTOR(uint16_t, 2))(0x9393L, 1UL), 1UL), 1UL, 0x9393L, 1UL);
    int32_t **l_301 = &p_543->g_32;
    int32_t ***l_300 = &l_301;
    int i, j, k;
    if (((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_98.s03)), 0x27DBD609L, 4L)).z)
    { /* block id: 28 */
        union U0 *l_112 = &p_543->g_113;
        uint8_t *l_114 = (void*)0;
        uint8_t *l_115 = &p_543->g_116[3][2];
        int8_t *l_119[8][10] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        uint32_t *l_122[5][9][3] = {{{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12}},{{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12}},{{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12}},{{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12}},{{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12},{&p_543->g_123,&p_543->g_12,&p_543->g_12}}};
        uint32_t *l_129 = &p_543->g_130;
        int32_t l_131 = 0x3015E876L;
        int64_t *l_132[3];
        int32_t l_133 = 0x770F242EL;
        union U0 **l_149 = &p_543->g_102;
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_132[i] = &p_543->g_103.f1;
        (*l_149) = func_99(p_543->g_102, (((((p_88 ^ (p_543->g_123 = (safe_rshift_func_int8_t_s_s(((2L | FAKE_DIVERGE(p_543->local_0_offset, get_local_id(0), 10)) , ((VECTOR(int8_t, 4))((p_543->g_120.x |= (safe_lshift_func_uint8_t_u_s((safe_mul_func_int8_t_s_s(p_543->g_5, (safe_rshift_func_int8_t_s_u((l_112 == l_112), (--(*l_115)))))), 4))), ((VECTOR(int8_t, 2))(l_121.sc8)), 0x01L)).x), 0)))) > ((l_119[4][5] == l_124) || (l_133 |= (safe_rshift_func_int16_t_s_u(((VECTOR(int16_t, 16))(((l_98.s3 = (((safe_mod_func_int32_t_s_s((((((*l_129) = 0xEDE46C11L) , 0xB7823F5755E19477L) & l_98.s7) > 0L), p_88)) & FAKE_DIVERGE(p_543->local_0_offset, get_local_id(0), 10)) && 0x078A46E2L)) , p_543->g_130), l_131, ((VECTOR(int16_t, 2))(0L)), p_543->g_113.f0, p_88, 0x3377L, (-4L), (-1L), p_543->g_2, (-7L), p_90, 0x1240L, (-1L), 0x4820L, (-2L))).s0, 3))))) & 65535UL) > p_543->g_103.f0) > p_543->g_2), p_543);
    }
    else
    { /* block id: 39 */
        uint64_t *l_202[3];
        int32_t l_204 = 4L;
        uint8_t *l_211[8][4] = {{(void*)0,&p_543->g_116[3][2],&p_543->g_116[3][2],(void*)0},{(void*)0,&p_543->g_116[3][2],&p_543->g_116[3][2],(void*)0},{(void*)0,&p_543->g_116[3][2],&p_543->g_116[3][2],(void*)0},{(void*)0,&p_543->g_116[3][2],&p_543->g_116[3][2],(void*)0},{(void*)0,&p_543->g_116[3][2],&p_543->g_116[3][2],(void*)0},{(void*)0,&p_543->g_116[3][2],&p_543->g_116[3][2],(void*)0},{(void*)0,&p_543->g_116[3][2],&p_543->g_116[3][2],(void*)0},{(void*)0,&p_543->g_116[3][2],&p_543->g_116[3][2],(void*)0}};
        uint8_t **l_212 = &l_211[6][1];
        int32_t *l_217 = &l_204;
        int8_t *l_218 = &l_201;
        int64_t **l_223 = &l_221[4][3][0];
        VECTOR(int32_t, 8) l_239 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L));
        int32_t l_257 = 0x09D21890L;
        int8_t l_277 = 6L;
        uint32_t l_281 = 0x80AC645EL;
        int32_t l_297 = (-1L);
        int i, j;
        for (i = 0; i < 3; i++)
            l_202[i] = &p_543->g_203;
        if ((p_543->g_150[5][0][5] == ((*l_223) = ((((((GROUP_DIVERGE(2, 1) <= (((safe_rshift_func_int8_t_s_u(((safe_rshift_func_int8_t_s_s(((*l_218) = (safe_rshift_func_int8_t_s_s(((((((l_201 > (l_204 |= (0xBCD4A83EL || l_121.s7))) , (safe_div_func_int32_t_s_s((*p_543->g_32), ((safe_rshift_func_int8_t_s_u((safe_lshift_func_uint8_t_u_s(((((*l_212) = l_211[2][2]) == (void*)0) != (((p_90 <= (safe_sub_func_int16_t_s_s((safe_mod_func_int32_t_s_s(((*l_217) = (*p_543->g_32)), 1L)), (-3L)))) == 0L) >= 0x422BA2C1L)), 0)), l_98.s7)) | p_88)))) <= l_98.s6) == p_88) , p_89) == &p_543->g_12), p_543->g_123))), 4)) != p_88), 4)) , l_219) == l_220[0][2])) , 65535UL) >= p_543->g_103.f0) & (**p_91)) <= 0x1BL) , l_221[0][2][0]))))
        { /* block id: 45 */
            (*p_91) = &p_543->g_2;
        }
        else
        { /* block id: 47 */
            uint32_t l_230 = 0x7E433B84L;
            VECTOR(int8_t, 4) l_233 = (VECTOR(int8_t, 4))(0x28L, (VECTOR(int8_t, 2))(0x28L, 0x32L), 0x32L);
            VECTOR(uint16_t, 8) l_240 = (VECTOR(uint16_t, 8))(0x7545L, (VECTOR(uint16_t, 4))(0x7545L, (VECTOR(uint16_t, 2))(0x7545L, 1UL), 1UL), 1UL, 0x7545L, 1UL);
            VECTOR(int32_t, 4) l_241 = (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), 0L), 0L);
            VECTOR(int32_t, 8) l_243 = (VECTOR(int32_t, 8))(0x34E97113L, (VECTOR(int32_t, 4))(0x34E97113L, (VECTOR(int32_t, 2))(0x34E97113L, 0L), 0L), 0L, 0x34E97113L, 0L);
            VECTOR(int32_t, 8) l_246 = (VECTOR(int32_t, 8))(0x035907AEL, (VECTOR(int32_t, 4))(0x035907AEL, (VECTOR(int32_t, 2))(0x035907AEL, 0x2C9608DBL), 0x2C9608DBL), 0x2C9608DBL, 0x035907AEL, 0x2C9608DBL);
            int i;
            for (l_204 = 0; (l_204 != (-25)); l_204 = safe_sub_func_uint32_t_u_u(l_204, 2))
            { /* block id: 50 */
                VECTOR(int8_t, 8) l_234 = (VECTOR(int8_t, 8))(0x25L, (VECTOR(int8_t, 4))(0x25L, (VECTOR(int8_t, 2))(0x25L, (-1L)), (-1L)), (-1L), 0x25L, (-1L));
                VECTOR(int32_t, 8) l_237 = (VECTOR(int32_t, 8))(0x4E321175L, (VECTOR(int32_t, 4))(0x4E321175L, (VECTOR(int32_t, 2))(0x4E321175L, (-1L)), (-1L)), (-1L), 0x4E321175L, (-1L));
                VECTOR(int32_t, 4) l_238 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x2AF45E1CL), 0x2AF45E1CL);
                VECTOR(int32_t, 2) l_245 = (VECTOR(int32_t, 2))(0x7C939810L, 0x56CA62EEL);
                VECTOR(int64_t, 2) l_251 = (VECTOR(int64_t, 2))(0x6638D83F14601971L, 0x2E45A4210C7025D4L);
                int32_t **l_254 = &p_543->g_63[4][0][2];
                uint8_t *l_258[9] = {&p_543->g_116[3][2],(void*)0,&p_543->g_116[3][2],&p_543->g_116[3][2],(void*)0,&p_543->g_116[3][2],&p_543->g_116[3][2],(void*)0,&p_543->g_116[3][2]};
                int i;
                if (((((((((safe_mul_func_int8_t_s_s(0x42L, (safe_div_func_uint16_t_u_u(((l_230 >= (((p_543->g_259.y = (safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(l_233.wx)), 1L, 0x68L)).xyyyzxzx, ((VECTOR(int8_t, 8))(rotate(((VECTOR(int8_t, 16))(l_234.s2522024571275523)).even, ((VECTOR(int8_t, 2))(0L, 1L)).yxxyxyyx)))))).s7353075573761675, ((VECTOR(int8_t, 16))(rhadd(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))((safe_mod_func_int32_t_s_s(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 8))(l_237.s31005224)).s7514632106225041, ((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),VECTOR(int32_t, 8),((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 8))(l_238.xywzyywz)).s12, ((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(l_239.s5612474740633352)).sc016)).odd, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 2))(0x0F7AL, (-1L))).yxyxxyyxxxyxxyxy, ((VECTOR(uint16_t, 8))(l_240.s06401275)).s0000554720506160))))).s02, ((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_241.xz)).yyyy)).hi, ((VECTOR(int32_t, 8))(p_543->g_242.s73506146)).s54))), (-6L), 1L)).even, ((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),VECTOR(int32_t, 16),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 8))(l_243.s07640364)).s0603146441310454, (int32_t)((((((((((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(l_244.scf73f7fb9cfe8390)).s1a, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_245.yy)), 0x1AAAB009L, (-9L))).lo, ((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 16))(clz(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(l_246.s10)))).yxyxyxyyxxxxxyxx))).s90c4))).odd))))).xyyx, ((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(0x188510F0L, 0x0096BF94L)))).yyxx)).wzyxwzxx)), ((safe_add_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(l_251.yxxxxyxy)), ((-3L) & l_201), (1UL == (safe_mod_func_uint64_t_u_u((((+(l_234.s5 | ((l_246.s3 <= (((((VECTOR(int32_t, 2))(0x26235A72L, 0x681FB4EBL)).even , &p_89) == l_254) ^ 0x5FC4L)) , FAKE_DIVERGE(p_543->local_2_offset, get_local_id(2), 10)))) ^ p_543->g_2) >= (*l_217)), (-1L)))), 0x299BCA180FC08863L, p_88, 1L, ((VECTOR(int64_t, 2))(0L)), 0x789A4CDCF968874FL)).lo)).s73)).even <= GROUP_DIVERGE(0, 1)), l_255)), p_543->g_116[1][6])) == l_256), l_257, (*l_217), (**p_91), ((VECTOR(int32_t, 4))(0x43FE3992L)))).sa1c0, ((VECTOR(int32_t, 4))(4L)))))))).hi)), 0x4789B590L, 0x7365990BL)).odd))), 0x1B536B5AL, 0x1A00784CL)).hi)), ((VECTOR(int32_t, 2))(1L)), ((VECTOR(int32_t, 2))((-10L)))))).odd || l_243.s1) , 0UL) | (*p_89)) == 0x8AB89E95L) , l_258[1]) != l_258[5]) > 0x1AL) <= p_90)))).hi)).s7711725436703503, ((VECTOR(int32_t, 16))(1L)), ((VECTOR(int32_t, 16))(0L))))).sfa))))))))).yyyyxxxx, ((VECTOR(int32_t, 8))((-1L))), ((VECTOR(int32_t, 8))(0x32486526L))))).s6726650307224060))).sce)).lo, 0x0E7574AEL)), p_543->g_203, 0x5CL, 0x22L)), 0x49L, ((VECTOR(int8_t, 2))(1L)), 0L)).even)).xxyywzzyxyxywzzy, ((VECTOR(int8_t, 16))(0L)))))))).s5, p_88))) ^ 0xA2F4L) > p_543->g_242.s6)) && l_230), p_88)))) != 0UL) , p_90) && p_543->g_113.f0) , p_88) , 9UL) > (*p_89)) >= 0x11L))
                { /* block id: 52 */
                    int32_t *l_263 = (void*)0;
                    int32_t *l_264 = (void*)0;
                    int32_t *l_265[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int i;
                    for (l_201 = 12; (l_201 > 20); l_201 = safe_add_func_int8_t_s_s(l_201, 2))
                    { /* block id: 55 */
                        l_262 = &l_257;
                        return &p_543->g_63[3][2][5];
                    }
                    --l_266;
                    (*l_254) = &p_543->g_5;
                    if ((*p_543->g_32))
                        break;
                }
                else
                { /* block id: 62 */
                    int32_t *l_269 = (void*)0;
                    int32_t *l_270 = &p_543->g_65;
                    int32_t *l_271 = &p_543->g_65;
                    int32_t *l_272 = &p_543->g_65;
                    int32_t *l_273 = &l_257;
                    int32_t *l_274 = (void*)0;
                    int32_t *l_275 = (void*)0;
                    int32_t *l_276[5][8][6] = {{{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_543->g_5,(void*)0,(void*)0}}};
                    int i, j, k;
                    ++l_278.s6;
                    if ((*l_217))
                        break;
                    l_281 = (*p_89);
                }
                if ((*l_262))
                { /* block id: 67 */
                    (*p_91) = (*p_91);
                }
                else
                { /* block id: 69 */
                    return &p_543->g_63[2][2][5];
                }
                (*l_262) &= (FAKE_DIVERGE(p_543->group_0_offset, get_group_id(0), 10) ^ (((VECTOR(uint8_t, 4))(p_543->g_282.s5512)).x >= 0UL));
                for (p_543->g_103.f0 = 13; (p_543->g_103.f0 >= 17); p_543->g_103.f0++)
                { /* block id: 75 */
                    int32_t l_289 = 4L;
                    l_243.s5 |= (((~1UL) < 0x09L) && (p_543->g_242.s5 == ((safe_add_func_uint8_t_u_u((safe_sub_func_uint8_t_u_u(((((((l_289 ^ (safe_mul_func_int16_t_s_s((((safe_lshift_func_int8_t_s_s((p_543->g_116[3][2] && (safe_mul_func_uint8_t_u_u(((safe_unary_minus_func_int8_t_s(0x6FL)) , (((void*)0 != &l_255) < p_543->g_113.f0)), p_90))), (*l_262))) ^ l_297) && p_543->g_130), p_88))) & l_289) < 65528UL) && p_543->g_203) == (*l_217)) ^ p_88), (*l_217))), p_88)) , (*l_262))));
                    for (p_543->g_130 = 0; (p_543->g_130 != 49); ++p_543->g_130)
                    { /* block id: 79 */
                        (*p_91) = &p_543->g_5;
                        return &p_543->g_63[2][2][5];
                    }
                }
            }
            (*l_262) = 0L;
        }
    }
    if ((((*l_300) = &p_89) == &p_89))
    { /* block id: 89 */
        int64_t **l_302 = &l_221[3][1][1];
        (*l_262) = ((void*)0 == l_302);
    }
    else
    { /* block id: 91 */
        int32_t *l_303 = &p_543->g_65;
        int32_t *l_304 = (void*)0;
        int32_t *l_305 = (void*)0;
        int32_t *l_306[8];
        int64_t l_307 = 0x67DF072D49E747E6L;
        uint32_t l_308 = 7UL;
        int i;
        for (i = 0; i < 8; i++)
            l_306[i] = (void*)0;
        l_308--;
        return &p_543->g_63[2][1][1];
    }
    (*l_262) = (*l_262);
    return &p_543->g_32;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
union U0 * func_99(union U0 * p_100, uint8_t  p_101, struct S1 * p_543)
{ /* block id: 35 */
    int32_t l_134 = (-7L);
    int32_t l_135 = 0x018BE0E5L;
    int32_t *l_136 = &p_543->g_65;
    int32_t *l_137 = &l_135;
    int32_t *l_138 = &l_135;
    int32_t *l_139 = &l_135;
    int32_t l_140[5];
    int32_t *l_141 = &l_140[3];
    int32_t *l_142 = (void*)0;
    int32_t *l_143[9] = {&l_140[2],&l_140[2],&l_140[2],&l_140[2],&l_140[2],&l_140[2],&l_140[2],&l_140[2],&l_140[2]};
    int32_t l_144 = (-1L);
    int32_t l_145 = 0x0FC63146L;
    uint16_t l_146 = 65535UL;
    int i;
    for (i = 0; i < 5; i++)
        l_140[i] = 0L;
    --l_146;
    return p_100;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_544;
    struct S1* p_543 = &c_544;
    struct S1 c_545 = {
        1L, // p_543->g_2
        0x58FB770AL, // p_543->g_5
        4294967291UL, // p_543->g_12
        (-10L), // p_543->g_18
        &p_543->g_2, // p_543->g_32
        {{{&p_543->g_2,&p_543->g_2,&p_543->g_5,&p_543->g_2,&p_543->g_2,&p_543->g_2},{&p_543->g_2,&p_543->g_2,&p_543->g_5,&p_543->g_2,&p_543->g_2,&p_543->g_2},{&p_543->g_2,&p_543->g_2,&p_543->g_5,&p_543->g_2,&p_543->g_2,&p_543->g_2}},{{&p_543->g_2,&p_543->g_2,&p_543->g_5,&p_543->g_2,&p_543->g_2,&p_543->g_2},{&p_543->g_2,&p_543->g_2,&p_543->g_5,&p_543->g_2,&p_543->g_2,&p_543->g_2},{&p_543->g_2,&p_543->g_2,&p_543->g_5,&p_543->g_2,&p_543->g_2,&p_543->g_2}},{{&p_543->g_2,&p_543->g_2,&p_543->g_5,&p_543->g_2,&p_543->g_2,&p_543->g_2},{&p_543->g_2,&p_543->g_2,&p_543->g_5,&p_543->g_2,&p_543->g_2,&p_543->g_2},{&p_543->g_2,&p_543->g_2,&p_543->g_5,&p_543->g_2,&p_543->g_2,&p_543->g_2}},{{&p_543->g_2,&p_543->g_2,&p_543->g_5,&p_543->g_2,&p_543->g_2,&p_543->g_2},{&p_543->g_2,&p_543->g_2,&p_543->g_5,&p_543->g_2,&p_543->g_2,&p_543->g_2},{&p_543->g_2,&p_543->g_2,&p_543->g_5,&p_543->g_2,&p_543->g_2,&p_543->g_2}},{{&p_543->g_2,&p_543->g_2,&p_543->g_5,&p_543->g_2,&p_543->g_2,&p_543->g_2},{&p_543->g_2,&p_543->g_2,&p_543->g_5,&p_543->g_2,&p_543->g_2,&p_543->g_2},{&p_543->g_2,&p_543->g_2,&p_543->g_5,&p_543->g_2,&p_543->g_2,&p_543->g_2}},{{&p_543->g_2,&p_543->g_2,&p_543->g_5,&p_543->g_2,&p_543->g_2,&p_543->g_2},{&p_543->g_2,&p_543->g_2,&p_543->g_5,&p_543->g_2,&p_543->g_2,&p_543->g_2},{&p_543->g_2,&p_543->g_2,&p_543->g_5,&p_543->g_2,&p_543->g_2,&p_543->g_2}},{{&p_543->g_2,&p_543->g_2,&p_543->g_5,&p_543->g_2,&p_543->g_2,&p_543->g_2},{&p_543->g_2,&p_543->g_2,&p_543->g_5,&p_543->g_2,&p_543->g_2,&p_543->g_2},{&p_543->g_2,&p_543->g_2,&p_543->g_5,&p_543->g_2,&p_543->g_2,&p_543->g_2}}}, // p_543->g_63
        &p_543->g_63[2][2][5], // p_543->g_62
        0x6D0E3492L, // p_543->g_65
        (VECTOR(int16_t, 8))(0x5B38L, (VECTOR(int16_t, 4))(0x5B38L, (VECTOR(int16_t, 2))(0x5B38L, 6L), 6L), 6L, 0x5B38L, 6L), // p_543->g_68
        {0x5171A106L}, // p_543->g_103
        &p_543->g_103, // p_543->g_102
        {5UL}, // p_543->g_113
        {{0x57L,0x57L,0x57L,0x57L,0x57L,0x57L,0x57L,0x57L},{0x57L,0x57L,0x57L,0x57L,0x57L,0x57L,0x57L,0x57L},{0x57L,0x57L,0x57L,0x57L,0x57L,0x57L,0x57L,0x57L},{0x57L,0x57L,0x57L,0x57L,0x57L,0x57L,0x57L,0x57L},{0x57L,0x57L,0x57L,0x57L,0x57L,0x57L,0x57L,0x57L},{0x57L,0x57L,0x57L,0x57L,0x57L,0x57L,0x57L,0x57L},{0x57L,0x57L,0x57L,0x57L,0x57L,0x57L,0x57L,0x57L},{0x57L,0x57L,0x57L,0x57L,0x57L,0x57L,0x57L,0x57L}}, // p_543->g_116
        (VECTOR(int8_t, 2))(2L, (-1L)), // p_543->g_120
        4294967290UL, // p_543->g_123
        0UL, // p_543->g_130
        0x6D2730DB2345C93CL, // p_543->g_151
        0x3EB170D87551B881L, // p_543->g_152
        {1L,1L,1L}, // p_543->g_153
        5L, // p_543->g_154
        0x2725E86CD116E7FBL, // p_543->g_155
        (-1L), // p_543->g_156
        0x0C58C6111A7FCE78L, // p_543->g_157
        0x7225372B5BDE4875L, // p_543->g_158
        0L, // p_543->g_159
        0x3B1FCE4B785A8A2AL, // p_543->g_160
        0x2FC9A4F9705F32BFL, // p_543->g_161
        0x453E12ED5ED8C95FL, // p_543->g_162
        {{(-1L),0L,0L,(-1L),(-1L),0L},{(-1L),0L,0L,(-1L),(-1L),0L},{(-1L),0L,0L,(-1L),(-1L),0L}}, // p_543->g_163
        0x0B6E22C6D3FC99DCL, // p_543->g_164
        0x2414F1964357ABCDL, // p_543->g_165
        (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 3L), 3L), 3L, 1L, 3L), // p_543->g_166
        0x309068607F2044ADL, // p_543->g_167
        1L, // p_543->g_168
        6L, // p_543->g_169
        2L, // p_543->g_170
        {0x112C0037EAE16F5CL,(-8L),0x112C0037EAE16F5CL,0x112C0037EAE16F5CL,(-8L),0x112C0037EAE16F5CL}, // p_543->g_171
        {{{(-7L),0x0322CA6194124E36L,(-7L),(-7L),0x0322CA6194124E36L,(-7L),(-7L)},{(-7L),0x0322CA6194124E36L,(-7L),(-7L),0x0322CA6194124E36L,(-7L),(-7L)}},{{(-7L),0x0322CA6194124E36L,(-7L),(-7L),0x0322CA6194124E36L,(-7L),(-7L)},{(-7L),0x0322CA6194124E36L,(-7L),(-7L),0x0322CA6194124E36L,(-7L),(-7L)}},{{(-7L),0x0322CA6194124E36L,(-7L),(-7L),0x0322CA6194124E36L,(-7L),(-7L)},{(-7L),0x0322CA6194124E36L,(-7L),(-7L),0x0322CA6194124E36L,(-7L),(-7L)}},{{(-7L),0x0322CA6194124E36L,(-7L),(-7L),0x0322CA6194124E36L,(-7L),(-7L)},{(-7L),0x0322CA6194124E36L,(-7L),(-7L),0x0322CA6194124E36L,(-7L),(-7L)}},{{(-7L),0x0322CA6194124E36L,(-7L),(-7L),0x0322CA6194124E36L,(-7L),(-7L)},{(-7L),0x0322CA6194124E36L,(-7L),(-7L),0x0322CA6194124E36L,(-7L),(-7L)}}}, // p_543->g_172
        (-4L), // p_543->g_173
        0L, // p_543->g_174
        0L, // p_543->g_175
        {7L,7L,7L,7L}, // p_543->g_176
        {{0x140DAB331724B2F6L,0x140DAB331724B2F6L,0x140DAB331724B2F6L,0x140DAB331724B2F6L},{0x140DAB331724B2F6L,0x140DAB331724B2F6L,0x140DAB331724B2F6L,0x140DAB331724B2F6L}}, // p_543->g_177
        {4L,4L,4L}, // p_543->g_178
        0x19A72042A246DCAAL, // p_543->g_179
        0L, // p_543->g_180
        0L, // p_543->g_181
        0x2044E5F5F1789FE7L, // p_543->g_182
        (VECTOR(int64_t, 4))(0x0B73E2F3346647A8L, (VECTOR(int64_t, 2))(0x0B73E2F3346647A8L, 0x6FCB44326F7BA14FL), 0x6FCB44326F7BA14FL), // p_543->g_183
        (-8L), // p_543->g_184
        (-9L), // p_543->g_185
        (-5L), // p_543->g_186
        0x0C33217787A40E00L, // p_543->g_187
        1L, // p_543->g_188
        {(-9L),(-9L),(-9L),(-9L),(-9L),(-9L)}, // p_543->g_189
        {0x0D345E9BEFF2D9E7L,0x0D345E9BEFF2D9E7L,0x0D345E9BEFF2D9E7L,0x0D345E9BEFF2D9E7L,0x0D345E9BEFF2D9E7L,0x0D345E9BEFF2D9E7L,0x0D345E9BEFF2D9E7L,0x0D345E9BEFF2D9E7L}, // p_543->g_190
        0x0B9EC8A6BBCBD33CL, // p_543->g_191
        {{0L,0L,0x562126B8E5C99A56L},{0L,0L,0x562126B8E5C99A56L},{0L,0L,0x562126B8E5C99A56L},{0L,0L,0x562126B8E5C99A56L},{0L,0L,0x562126B8E5C99A56L},{0L,0L,0x562126B8E5C99A56L},{0L,0L,0x562126B8E5C99A56L}}, // p_543->g_192
        0x46AAB39F8D692E54L, // p_543->g_193
        5L, // p_543->g_194
        {{{&p_543->g_175,&p_543->g_179,&p_543->g_164,&p_543->g_175,&p_543->g_168,&p_543->g_188,&p_543->g_188,&p_543->g_168},{&p_543->g_175,&p_543->g_179,&p_543->g_164,&p_543->g_175,&p_543->g_168,&p_543->g_188,&p_543->g_188,&p_543->g_168},{&p_543->g_175,&p_543->g_179,&p_543->g_164,&p_543->g_175,&p_543->g_168,&p_543->g_188,&p_543->g_188,&p_543->g_168},{&p_543->g_175,&p_543->g_179,&p_543->g_164,&p_543->g_175,&p_543->g_168,&p_543->g_188,&p_543->g_188,&p_543->g_168}},{{&p_543->g_175,&p_543->g_179,&p_543->g_164,&p_543->g_175,&p_543->g_168,&p_543->g_188,&p_543->g_188,&p_543->g_168},{&p_543->g_175,&p_543->g_179,&p_543->g_164,&p_543->g_175,&p_543->g_168,&p_543->g_188,&p_543->g_188,&p_543->g_168},{&p_543->g_175,&p_543->g_179,&p_543->g_164,&p_543->g_175,&p_543->g_168,&p_543->g_188,&p_543->g_188,&p_543->g_168},{&p_543->g_175,&p_543->g_179,&p_543->g_164,&p_543->g_175,&p_543->g_168,&p_543->g_188,&p_543->g_188,&p_543->g_168}},{{&p_543->g_175,&p_543->g_179,&p_543->g_164,&p_543->g_175,&p_543->g_168,&p_543->g_188,&p_543->g_188,&p_543->g_168},{&p_543->g_175,&p_543->g_179,&p_543->g_164,&p_543->g_175,&p_543->g_168,&p_543->g_188,&p_543->g_188,&p_543->g_168},{&p_543->g_175,&p_543->g_179,&p_543->g_164,&p_543->g_175,&p_543->g_168,&p_543->g_188,&p_543->g_188,&p_543->g_168},{&p_543->g_175,&p_543->g_179,&p_543->g_164,&p_543->g_175,&p_543->g_168,&p_543->g_188,&p_543->g_188,&p_543->g_168}},{{&p_543->g_175,&p_543->g_179,&p_543->g_164,&p_543->g_175,&p_543->g_168,&p_543->g_188,&p_543->g_188,&p_543->g_168},{&p_543->g_175,&p_543->g_179,&p_543->g_164,&p_543->g_175,&p_543->g_168,&p_543->g_188,&p_543->g_188,&p_543->g_168},{&p_543->g_175,&p_543->g_179,&p_543->g_164,&p_543->g_175,&p_543->g_168,&p_543->g_188,&p_543->g_188,&p_543->g_168},{&p_543->g_175,&p_543->g_179,&p_543->g_164,&p_543->g_175,&p_543->g_168,&p_543->g_188,&p_543->g_188,&p_543->g_168}},{{&p_543->g_175,&p_543->g_179,&p_543->g_164,&p_543->g_175,&p_543->g_168,&p_543->g_188,&p_543->g_188,&p_543->g_168},{&p_543->g_175,&p_543->g_179,&p_543->g_164,&p_543->g_175,&p_543->g_168,&p_543->g_188,&p_543->g_188,&p_543->g_168},{&p_543->g_175,&p_543->g_179,&p_543->g_164,&p_543->g_175,&p_543->g_168,&p_543->g_188,&p_543->g_188,&p_543->g_168},{&p_543->g_175,&p_543->g_179,&p_543->g_164,&p_543->g_175,&p_543->g_168,&p_543->g_188,&p_543->g_188,&p_543->g_168}},{{&p_543->g_175,&p_543->g_179,&p_543->g_164,&p_543->g_175,&p_543->g_168,&p_543->g_188,&p_543->g_188,&p_543->g_168},{&p_543->g_175,&p_543->g_179,&p_543->g_164,&p_543->g_175,&p_543->g_168,&p_543->g_188,&p_543->g_188,&p_543->g_168},{&p_543->g_175,&p_543->g_179,&p_543->g_164,&p_543->g_175,&p_543->g_168,&p_543->g_188,&p_543->g_188,&p_543->g_168},{&p_543->g_175,&p_543->g_179,&p_543->g_164,&p_543->g_175,&p_543->g_168,&p_543->g_188,&p_543->g_188,&p_543->g_168}},{{&p_543->g_175,&p_543->g_179,&p_543->g_164,&p_543->g_175,&p_543->g_168,&p_543->g_188,&p_543->g_188,&p_543->g_168},{&p_543->g_175,&p_543->g_179,&p_543->g_164,&p_543->g_175,&p_543->g_168,&p_543->g_188,&p_543->g_188,&p_543->g_168},{&p_543->g_175,&p_543->g_179,&p_543->g_164,&p_543->g_175,&p_543->g_168,&p_543->g_188,&p_543->g_188,&p_543->g_168},{&p_543->g_175,&p_543->g_179,&p_543->g_164,&p_543->g_175,&p_543->g_168,&p_543->g_188,&p_543->g_188,&p_543->g_168}}}, // p_543->g_150
        0x2C6DD85AF8C4A7E4L, // p_543->g_203
        {{{(-4L),0x7AAD99B4452C0C4FL,(-1L),1L},{(-4L),0x7AAD99B4452C0C4FL,(-1L),1L},{(-4L),0x7AAD99B4452C0C4FL,(-1L),1L},{(-4L),0x7AAD99B4452C0C4FL,(-1L),1L},{(-4L),0x7AAD99B4452C0C4FL,(-1L),1L}},{{(-4L),0x7AAD99B4452C0C4FL,(-1L),1L},{(-4L),0x7AAD99B4452C0C4FL,(-1L),1L},{(-4L),0x7AAD99B4452C0C4FL,(-1L),1L},{(-4L),0x7AAD99B4452C0C4FL,(-1L),1L},{(-4L),0x7AAD99B4452C0C4FL,(-1L),1L}},{{(-4L),0x7AAD99B4452C0C4FL,(-1L),1L},{(-4L),0x7AAD99B4452C0C4FL,(-1L),1L},{(-4L),0x7AAD99B4452C0C4FL,(-1L),1L},{(-4L),0x7AAD99B4452C0C4FL,(-1L),1L},{(-4L),0x7AAD99B4452C0C4FL,(-1L),1L}},{{(-4L),0x7AAD99B4452C0C4FL,(-1L),1L},{(-4L),0x7AAD99B4452C0C4FL,(-1L),1L},{(-4L),0x7AAD99B4452C0C4FL,(-1L),1L},{(-4L),0x7AAD99B4452C0C4FL,(-1L),1L},{(-4L),0x7AAD99B4452C0C4FL,(-1L),1L}}}, // p_543->g_222
        (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x7AF4F5E0L), 0x7AF4F5E0L), 0x7AF4F5E0L, (-1L), 0x7AF4F5E0L), // p_543->g_242
        (VECTOR(int32_t, 4))(0x578E7BE6L, (VECTOR(int32_t, 2))(0x578E7BE6L, (-1L)), (-1L)), // p_543->g_259
        (VECTOR(uint8_t, 8))(7UL, (VECTOR(uint8_t, 4))(7UL, (VECTOR(uint8_t, 2))(7UL, 0x96L), 0x96L), 0x96L, 7UL, 0x96L), // p_543->g_282
        {{{0x5270L,0x5270L},{0x5270L,0x5270L},{0x5270L,0x5270L},{0x5270L,0x5270L},{0x5270L,0x5270L},{0x5270L,0x5270L},{0x5270L,0x5270L},{0x5270L,0x5270L},{0x5270L,0x5270L},{0x5270L,0x5270L}},{{0x5270L,0x5270L},{0x5270L,0x5270L},{0x5270L,0x5270L},{0x5270L,0x5270L},{0x5270L,0x5270L},{0x5270L,0x5270L},{0x5270L,0x5270L},{0x5270L,0x5270L},{0x5270L,0x5270L},{0x5270L,0x5270L}},{{0x5270L,0x5270L},{0x5270L,0x5270L},{0x5270L,0x5270L},{0x5270L,0x5270L},{0x5270L,0x5270L},{0x5270L,0x5270L},{0x5270L,0x5270L},{0x5270L,0x5270L},{0x5270L,0x5270L},{0x5270L,0x5270L}},{{0x5270L,0x5270L},{0x5270L,0x5270L},{0x5270L,0x5270L},{0x5270L,0x5270L},{0x5270L,0x5270L},{0x5270L,0x5270L},{0x5270L,0x5270L},{0x5270L,0x5270L},{0x5270L,0x5270L},{0x5270L,0x5270L}}}, // p_543->g_330
        (void*)0, // p_543->g_366
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_543->g_368
        (void*)0, // p_543->g_370
        (void*)0, // p_543->g_371
        (void*)0, // p_543->g_372
        {0x462B49E6L}, // p_543->g_384
        (VECTOR(uint16_t, 2))(4UL, 0x37BDL), // p_543->g_390
        8UL, // p_543->g_398
        0xD6C3C25EL, // p_543->g_404
        &p_543->g_63[2][2][5], // p_543->g_405
        &p_543->g_404, // p_543->g_437
        &p_543->g_437, // p_543->g_436
        {(void*)0,(void*)0}, // p_543->g_443
        (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L, (VECTOR(int64_t, 2))((-1L), 0L), (VECTOR(int64_t, 2))((-1L), 0L), (-1L), 0L, (-1L), 0L), // p_543->g_448
        &p_543->g_63[2][0][5], // p_543->g_454
        &p_543->g_454, // p_543->g_453
        0x351EL, // p_543->g_456
        (VECTOR(int32_t, 4))(0x2C6FD939L, (VECTOR(int32_t, 2))(0x2C6FD939L, 0x61F17C66L), 0x61F17C66L), // p_543->g_483
        0x8EFAF23EL, // p_543->g_520
        {0x5257D689L}, // p_543->g_539
        sequence_input[get_global_id(0)], // p_543->global_0_offset
        sequence_input[get_global_id(1)], // p_543->global_1_offset
        sequence_input[get_global_id(2)], // p_543->global_2_offset
        sequence_input[get_local_id(0)], // p_543->local_0_offset
        sequence_input[get_local_id(1)], // p_543->local_1_offset
        sequence_input[get_local_id(2)], // p_543->local_2_offset
        sequence_input[get_group_id(0)], // p_543->group_0_offset
        sequence_input[get_group_id(1)], // p_543->group_1_offset
        sequence_input[get_group_id(2)], // p_543->group_2_offset
    };
    c_544 = c_545;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_543);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_543->g_2, "p_543->g_2", print_hash_value);
    transparent_crc(p_543->g_5, "p_543->g_5", print_hash_value);
    transparent_crc(p_543->g_12, "p_543->g_12", print_hash_value);
    transparent_crc(p_543->g_18, "p_543->g_18", print_hash_value);
    transparent_crc(p_543->g_65, "p_543->g_65", print_hash_value);
    transparent_crc(p_543->g_68.s0, "p_543->g_68.s0", print_hash_value);
    transparent_crc(p_543->g_68.s1, "p_543->g_68.s1", print_hash_value);
    transparent_crc(p_543->g_68.s2, "p_543->g_68.s2", print_hash_value);
    transparent_crc(p_543->g_68.s3, "p_543->g_68.s3", print_hash_value);
    transparent_crc(p_543->g_68.s4, "p_543->g_68.s4", print_hash_value);
    transparent_crc(p_543->g_68.s5, "p_543->g_68.s5", print_hash_value);
    transparent_crc(p_543->g_68.s6, "p_543->g_68.s6", print_hash_value);
    transparent_crc(p_543->g_68.s7, "p_543->g_68.s7", print_hash_value);
    transparent_crc(p_543->g_103.f0, "p_543->g_103.f0", print_hash_value);
    transparent_crc(p_543->g_113.f0, "p_543->g_113.f0", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_543->g_116[i][j], "p_543->g_116[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_543->g_120.x, "p_543->g_120.x", print_hash_value);
    transparent_crc(p_543->g_120.y, "p_543->g_120.y", print_hash_value);
    transparent_crc(p_543->g_123, "p_543->g_123", print_hash_value);
    transparent_crc(p_543->g_130, "p_543->g_130", print_hash_value);
    transparent_crc(p_543->g_151, "p_543->g_151", print_hash_value);
    transparent_crc(p_543->g_152, "p_543->g_152", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_543->g_153[i], "p_543->g_153[i]", print_hash_value);

    }
    transparent_crc(p_543->g_154, "p_543->g_154", print_hash_value);
    transparent_crc(p_543->g_155, "p_543->g_155", print_hash_value);
    transparent_crc(p_543->g_156, "p_543->g_156", print_hash_value);
    transparent_crc(p_543->g_157, "p_543->g_157", print_hash_value);
    transparent_crc(p_543->g_158, "p_543->g_158", print_hash_value);
    transparent_crc(p_543->g_159, "p_543->g_159", print_hash_value);
    transparent_crc(p_543->g_160, "p_543->g_160", print_hash_value);
    transparent_crc(p_543->g_161, "p_543->g_161", print_hash_value);
    transparent_crc(p_543->g_162, "p_543->g_162", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_543->g_163[i][j], "p_543->g_163[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_543->g_164, "p_543->g_164", print_hash_value);
    transparent_crc(p_543->g_165, "p_543->g_165", print_hash_value);
    transparent_crc(p_543->g_166.s0, "p_543->g_166.s0", print_hash_value);
    transparent_crc(p_543->g_166.s1, "p_543->g_166.s1", print_hash_value);
    transparent_crc(p_543->g_166.s2, "p_543->g_166.s2", print_hash_value);
    transparent_crc(p_543->g_166.s3, "p_543->g_166.s3", print_hash_value);
    transparent_crc(p_543->g_166.s4, "p_543->g_166.s4", print_hash_value);
    transparent_crc(p_543->g_166.s5, "p_543->g_166.s5", print_hash_value);
    transparent_crc(p_543->g_166.s6, "p_543->g_166.s6", print_hash_value);
    transparent_crc(p_543->g_166.s7, "p_543->g_166.s7", print_hash_value);
    transparent_crc(p_543->g_167, "p_543->g_167", print_hash_value);
    transparent_crc(p_543->g_168, "p_543->g_168", print_hash_value);
    transparent_crc(p_543->g_169, "p_543->g_169", print_hash_value);
    transparent_crc(p_543->g_170, "p_543->g_170", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_543->g_171[i], "p_543->g_171[i]", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_543->g_172[i][j][k], "p_543->g_172[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_543->g_173, "p_543->g_173", print_hash_value);
    transparent_crc(p_543->g_174, "p_543->g_174", print_hash_value);
    transparent_crc(p_543->g_175, "p_543->g_175", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_543->g_176[i], "p_543->g_176[i]", print_hash_value);

    }
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_543->g_177[i][j], "p_543->g_177[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_543->g_178[i], "p_543->g_178[i]", print_hash_value);

    }
    transparent_crc(p_543->g_179, "p_543->g_179", print_hash_value);
    transparent_crc(p_543->g_180, "p_543->g_180", print_hash_value);
    transparent_crc(p_543->g_181, "p_543->g_181", print_hash_value);
    transparent_crc(p_543->g_182, "p_543->g_182", print_hash_value);
    transparent_crc(p_543->g_183.x, "p_543->g_183.x", print_hash_value);
    transparent_crc(p_543->g_183.y, "p_543->g_183.y", print_hash_value);
    transparent_crc(p_543->g_183.z, "p_543->g_183.z", print_hash_value);
    transparent_crc(p_543->g_183.w, "p_543->g_183.w", print_hash_value);
    transparent_crc(p_543->g_184, "p_543->g_184", print_hash_value);
    transparent_crc(p_543->g_185, "p_543->g_185", print_hash_value);
    transparent_crc(p_543->g_186, "p_543->g_186", print_hash_value);
    transparent_crc(p_543->g_187, "p_543->g_187", print_hash_value);
    transparent_crc(p_543->g_188, "p_543->g_188", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_543->g_189[i], "p_543->g_189[i]", print_hash_value);

    }
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_543->g_190[i], "p_543->g_190[i]", print_hash_value);

    }
    transparent_crc(p_543->g_191, "p_543->g_191", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_543->g_192[i][j], "p_543->g_192[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_543->g_193, "p_543->g_193", print_hash_value);
    transparent_crc(p_543->g_194, "p_543->g_194", print_hash_value);
    transparent_crc(p_543->g_203, "p_543->g_203", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_543->g_222[i][j][k], "p_543->g_222[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_543->g_242.s0, "p_543->g_242.s0", print_hash_value);
    transparent_crc(p_543->g_242.s1, "p_543->g_242.s1", print_hash_value);
    transparent_crc(p_543->g_242.s2, "p_543->g_242.s2", print_hash_value);
    transparent_crc(p_543->g_242.s3, "p_543->g_242.s3", print_hash_value);
    transparent_crc(p_543->g_242.s4, "p_543->g_242.s4", print_hash_value);
    transparent_crc(p_543->g_242.s5, "p_543->g_242.s5", print_hash_value);
    transparent_crc(p_543->g_242.s6, "p_543->g_242.s6", print_hash_value);
    transparent_crc(p_543->g_242.s7, "p_543->g_242.s7", print_hash_value);
    transparent_crc(p_543->g_259.x, "p_543->g_259.x", print_hash_value);
    transparent_crc(p_543->g_259.y, "p_543->g_259.y", print_hash_value);
    transparent_crc(p_543->g_259.z, "p_543->g_259.z", print_hash_value);
    transparent_crc(p_543->g_259.w, "p_543->g_259.w", print_hash_value);
    transparent_crc(p_543->g_282.s0, "p_543->g_282.s0", print_hash_value);
    transparent_crc(p_543->g_282.s1, "p_543->g_282.s1", print_hash_value);
    transparent_crc(p_543->g_282.s2, "p_543->g_282.s2", print_hash_value);
    transparent_crc(p_543->g_282.s3, "p_543->g_282.s3", print_hash_value);
    transparent_crc(p_543->g_282.s4, "p_543->g_282.s4", print_hash_value);
    transparent_crc(p_543->g_282.s5, "p_543->g_282.s5", print_hash_value);
    transparent_crc(p_543->g_282.s6, "p_543->g_282.s6", print_hash_value);
    transparent_crc(p_543->g_282.s7, "p_543->g_282.s7", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_543->g_330[i][j][k], "p_543->g_330[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_543->g_384.f0, "p_543->g_384.f0", print_hash_value);
    transparent_crc(p_543->g_390.x, "p_543->g_390.x", print_hash_value);
    transparent_crc(p_543->g_390.y, "p_543->g_390.y", print_hash_value);
    transparent_crc(p_543->g_398, "p_543->g_398", print_hash_value);
    transparent_crc(p_543->g_404, "p_543->g_404", print_hash_value);
    transparent_crc(p_543->g_448.s0, "p_543->g_448.s0", print_hash_value);
    transparent_crc(p_543->g_448.s1, "p_543->g_448.s1", print_hash_value);
    transparent_crc(p_543->g_448.s2, "p_543->g_448.s2", print_hash_value);
    transparent_crc(p_543->g_448.s3, "p_543->g_448.s3", print_hash_value);
    transparent_crc(p_543->g_448.s4, "p_543->g_448.s4", print_hash_value);
    transparent_crc(p_543->g_448.s5, "p_543->g_448.s5", print_hash_value);
    transparent_crc(p_543->g_448.s6, "p_543->g_448.s6", print_hash_value);
    transparent_crc(p_543->g_448.s7, "p_543->g_448.s7", print_hash_value);
    transparent_crc(p_543->g_448.s8, "p_543->g_448.s8", print_hash_value);
    transparent_crc(p_543->g_448.s9, "p_543->g_448.s9", print_hash_value);
    transparent_crc(p_543->g_448.sa, "p_543->g_448.sa", print_hash_value);
    transparent_crc(p_543->g_448.sb, "p_543->g_448.sb", print_hash_value);
    transparent_crc(p_543->g_448.sc, "p_543->g_448.sc", print_hash_value);
    transparent_crc(p_543->g_448.sd, "p_543->g_448.sd", print_hash_value);
    transparent_crc(p_543->g_448.se, "p_543->g_448.se", print_hash_value);
    transparent_crc(p_543->g_448.sf, "p_543->g_448.sf", print_hash_value);
    transparent_crc(p_543->g_456, "p_543->g_456", print_hash_value);
    transparent_crc(p_543->g_483.x, "p_543->g_483.x", print_hash_value);
    transparent_crc(p_543->g_483.y, "p_543->g_483.y", print_hash_value);
    transparent_crc(p_543->g_483.z, "p_543->g_483.z", print_hash_value);
    transparent_crc(p_543->g_483.w, "p_543->g_483.w", print_hash_value);
    transparent_crc(p_543->g_520, "p_543->g_520", print_hash_value);
    transparent_crc(p_543->g_539.f0, "p_543->g_539.f0", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
