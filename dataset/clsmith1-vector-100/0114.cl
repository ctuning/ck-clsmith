// ---fake_divergence -g 72,10,3 -l 4,10,3
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


// Seed: 114

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_2;
    int32_t g_7;
    int64_t g_45;
    volatile int64_t g_48[3][4][8];
    volatile int64_t *g_47;
    VECTOR(int32_t, 2) g_62;
    int32_t g_81;
    uint64_t g_84;
    uint64_t g_96;
    int64_t g_107[10];
    int32_t g_116;
    int32_t * volatile g_115;
    int32_t *g_118;
    int32_t ** volatile g_117;
    int32_t ** volatile g_124;
    int32_t g_148[7];
    int8_t g_159;
    int32_t ** volatile g_162;
    volatile VECTOR(int8_t, 8) g_172;
    volatile VECTOR(int8_t, 4) g_173;
    int8_t g_185;
    volatile VECTOR(int32_t, 8) g_203;
    VECTOR(int64_t, 8) g_224;
    int16_t g_239;
    uint64_t g_240;
    volatile VECTOR(uint32_t, 4) g_250;
    uint16_t g_252;
    VECTOR(uint16_t, 16) g_258;
    uint16_t g_263;
    uint32_t g_275;
    int32_t * volatile g_279;
    int32_t *g_291;
    VECTOR(int32_t, 4) g_294;
    uint64_t * volatile * volatile g_306;
    VECTOR(int64_t, 16) g_313;
    VECTOR(int64_t, 16) g_315;
    int32_t g_319;
    VECTOR(int8_t, 8) g_326;
    int64_t *g_365;
    VECTOR(int64_t, 4) g_368;
    VECTOR(int32_t, 16) g_370;
    VECTOR(uint16_t, 4) g_373;
    volatile VECTOR(uint16_t, 2) g_374;
    volatile VECTOR(uint32_t, 8) g_380;
    volatile VECTOR(int16_t, 2) g_383;
    uint32_t g_418;
    uint32_t *g_417;
    volatile VECTOR(int8_t, 2) g_433;
    volatile VECTOR(int16_t, 2) g_438;
    volatile int64_t *g_456;
    uint64_t *g_461[4][6];
    uint64_t **g_460;
    int16_t g_472;
    int32_t g_473;
    VECTOR(int8_t, 2) g_480;
    VECTOR(int64_t, 4) g_500;
    volatile VECTOR(uint8_t, 8) g_508;
    volatile VECTOR(uint8_t, 4) g_509;
    uint64_t g_514;
    volatile VECTOR(uint16_t, 2) g_522;
    volatile VECTOR(uint16_t, 8) g_524;
    volatile VECTOR(uint16_t, 2) g_526;
    volatile VECTOR(uint16_t, 16) g_527;
    uint8_t g_549[9];
    int32_t g_566;
    int16_t *g_571;
    int16_t **g_570;
    int16_t *** volatile g_569;
    VECTOR(uint16_t, 8) g_582;
    VECTOR(uint8_t, 2) g_586;
    VECTOR(uint8_t, 8) g_589;
    VECTOR(uint8_t, 16) g_590;
    volatile uint32_t g_611;
    VECTOR(int64_t, 8) g_655;
    volatile VECTOR(int64_t, 16) g_657;
    uint32_t **g_681;
    int32_t ** volatile g_693[1][7][8];
    int32_t ** volatile g_694;
    volatile int16_t g_698;
    int64_t **g_728;
    int64_t *** volatile g_727;
    VECTOR(int32_t, 8) g_733;
    int32_t ** volatile g_742;
    volatile VECTOR(uint8_t, 8) g_744;
    uint32_t g_760[4];
    uint8_t *g_778;
    volatile VECTOR(uint16_t, 4) g_781;
    VECTOR(int16_t, 2) g_794;
    int64_t g_797;
    VECTOR(int64_t, 8) g_806;
    VECTOR(int64_t, 4) g_807;
    VECTOR(int64_t, 2) g_808;
    VECTOR(uint16_t, 16) g_821;
    VECTOR(uint16_t, 8) g_847;
    int32_t ** volatile g_856;
    volatile VECTOR(uint8_t, 4) g_863;
    volatile VECTOR(uint8_t, 2) g_864;
    VECTOR(int8_t, 4) g_867;
    VECTOR(int16_t, 8) g_872;
    volatile VECTOR(uint16_t, 2) g_886;
    int32_t *g_924;
    int32_t **g_923;
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
int64_t  func_1(struct S0 * p_933);
int32_t * func_22(uint64_t  p_23, uint8_t  p_24, uint16_t  p_25, int8_t  p_26, struct S0 * p_933);
int32_t  func_31(uint8_t  p_32, int32_t * p_33, int32_t * p_34, int32_t * p_35, int32_t * p_36, struct S0 * p_933);
int32_t * func_37(int32_t * p_38, uint64_t  p_39, int32_t  p_40, int32_t * p_41, int32_t * p_42, struct S0 * p_933);
uint64_t  func_49(int32_t  p_50, int32_t  p_51, int64_t * p_52, uint8_t  p_53, int32_t  p_54, struct S0 * p_933);
int32_t  func_63(int64_t  p_64, int32_t  p_65, int32_t * p_66, struct S0 * p_933);
int16_t  func_70(int32_t  p_71, int32_t * p_72, int32_t * p_73, struct S0 * p_933);
uint16_t  func_76(int32_t  p_77, uint64_t  p_78, int32_t  p_79, struct S0 * p_933);
int32_t  func_85(int16_t  p_86, struct S0 * p_933);
int32_t * func_90(int32_t  p_91, uint64_t  p_92, int32_t  p_93, uint16_t  p_94, struct S0 * p_933);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_933->g_2 p_933->g_7 p_933->g_47 p_933->g_62 p_933->g_96 p_933->g_48 p_933->g_115 p_933->g_117 p_933->g_118 p_933->g_124 p_933->g_116 p_933->g_107 p_933->g_162 p_933->g_279 p_933->g_172 p_933->g_258 p_933->g_252 p_933->g_306 p_933->g_263 p_933->g_224 p_933->g_203 p_933->g_294 p_933->g_365 p_933->g_313 p_933->g_185 p_933->g_81 p_933->g_374 p_933->g_326 p_933->g_373 p_933->g_368 p_933->g_456 p_933->g_173 p_933->g_250 p_933->g_418 p_933->g_549 p_933->g_370 p_933->g_566 p_933->g_569 p_933->g_611 p_933->g_240 p_933->g_473 p_933->g_694 p_933->g_315 p_933->g_500 p_933->g_742 p_933->g_856 p_933->g_571 p_933->g_863 p_933->g_864 p_933->g_867 p_933->g_148 p_933->g_872 p_933->g_480 p_933->g_582 p_933->g_586 p_933->g_886 p_933->g_526 p_933->g_522 p_933->g_923 p_933->g_239
 * writes: p_933->g_2 p_933->g_7 p_933->g_45 p_933->g_81 p_933->g_84 p_933->g_107 p_933->g_116 p_933->g_118 p_933->g_148 p_933->g_159 p_933->g_291 p_933->g_252 p_933->g_275 p_933->g_263 p_933->g_319 p_933->g_417 p_933->g_460 p_933->g_239 p_933->g_472 p_933->g_473 p_933->g_514 p_933->g_549 p_933->g_566 p_933->g_570 p_933->g_240 p_933->g_571 p_933->g_62
 */
int64_t  func_1(struct S0 * p_933)
{ /* block id: 4 */
    int32_t l_13[4] = {0x3EB96916L,0x3EB96916L,0x3EB96916L,0x3EB96916L};
    uint32_t l_14 = 1UL;
    int32_t l_866 = 0x03B7AFE8L;
    VECTOR(int16_t, 2) l_874 = (VECTOR(int16_t, 2))((-1L), (-5L));
    uint64_t l_897 = 1UL;
    int8_t l_917 = 0L;
    int32_t l_922 = 0x455BE8AAL;
    uint64_t l_925 = 9UL;
    uint64_t *l_926 = &p_933->g_514;
    int i;
    for (p_933->g_2 = 4; (p_933->g_2 >= 26); ++p_933->g_2)
    { /* block id: 7 */
        VECTOR(uint16_t, 16) l_5 = (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 65535UL), 65535UL), 65535UL, 65535UL, 65535UL, (VECTOR(uint16_t, 2))(65535UL, 65535UL), (VECTOR(uint16_t, 2))(65535UL, 65535UL), 65535UL, 65535UL, 65535UL, 65535UL);
        int32_t *l_6 = &p_933->g_7;
        int32_t *l_8 = &p_933->g_7;
        int32_t *l_9 = &p_933->g_7;
        int32_t *l_10 = &p_933->g_7;
        int32_t *l_11 = &p_933->g_7;
        int32_t *l_12[8] = {&p_933->g_2,&p_933->g_2,&p_933->g_2,&p_933->g_2,&p_933->g_2,&p_933->g_2,&p_933->g_2,&p_933->g_2};
        int i;
        if (l_5.sa)
            break;
        l_14--;
    }
    for (p_933->g_7 = 0; (p_933->g_7 < (-29)); p_933->g_7 = safe_sub_func_int8_t_s_s(p_933->g_7, 8))
    { /* block id: 13 */
        uint32_t l_21 = 0xC5EC62BBL;
        int32_t *l_67 = &l_13[2];
        VECTOR(uint8_t, 8) l_861 = (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 255UL), 255UL), 255UL, 0UL, 255UL);
        VECTOR(uint8_t, 8) l_873 = (VECTOR(uint8_t, 8))(0xB6L, (VECTOR(uint8_t, 4))(0xB6L, (VECTOR(uint8_t, 2))(0xB6L, 1UL), 1UL), 1UL, 0xB6L, 1UL);
        uint64_t **l_880 = &p_933->g_461[3][0];
        int32_t **l_908 = (void*)0;
        int32_t **l_909 = (void*)0;
        int32_t *l_911 = (void*)0;
        int32_t **l_910 = &l_911;
        int32_t *l_914 = &p_933->g_2;
        int32_t *l_915 = (void*)0;
        int32_t *l_916 = &p_933->g_116;
        int16_t l_918 = (-3L);
        uint16_t *l_919 = &p_933->g_252;
        int8_t *l_920 = (void*)0;
        int8_t *l_921[3][4] = {{&l_917,&l_917,&l_917,&l_917},{&l_917,&l_917,&l_917,&l_917},{&l_917,&l_917,&l_917,&l_917}};
        int32_t *l_927[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int i, j;
        for (p_933->g_2 = 6; (p_933->g_2 <= 16); p_933->g_2++)
        { /* block id: 16 */
            int64_t *l_44 = &p_933->g_45;
            int32_t *l_46 = &l_13[3];
            VECTOR(int32_t, 8) l_61 = (VECTOR(int32_t, 8))(7L, (VECTOR(int32_t, 4))(7L, (VECTOR(int32_t, 2))(7L, 0x16D72793L), 0x16D72793L), 0x16D72793L, 7L, 0x16D72793L);
            VECTOR(uint8_t, 8) l_859 = (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x5BL), 0x5BL), 0x5BL, 1UL, 0x5BL);
            VECTOR(uint8_t, 16) l_860 = (VECTOR(uint8_t, 16))(0xF0L, (VECTOR(uint8_t, 4))(0xF0L, (VECTOR(uint8_t, 2))(0xF0L, 246UL), 246UL), 246UL, 0xF0L, 246UL, (VECTOR(uint8_t, 2))(0xF0L, 246UL), (VECTOR(uint8_t, 2))(0xF0L, 246UL), 0xF0L, 246UL, 0xF0L, 246UL);
            VECTOR(uint8_t, 16) l_862 = (VECTOR(uint8_t, 16))(0x5FL, (VECTOR(uint8_t, 4))(0x5FL, (VECTOR(uint8_t, 2))(0x5FL, 0UL), 0UL), 0UL, 0x5FL, 0UL, (VECTOR(uint8_t, 2))(0x5FL, 0UL), (VECTOR(uint8_t, 2))(0x5FL, 0UL), 0x5FL, 0UL, 0x5FL, 0UL);
            uint8_t *l_865 = &p_933->g_549[0];
            uint32_t l_879[2];
            int32_t *l_881 = &p_933->g_116;
            int i;
            for (i = 0; i < 2; i++)
                l_879[i] = 2UL;
            if (l_21)
                break;
            (*p_933->g_856) = func_22((safe_add_func_int64_t_s_s((safe_div_func_int32_t_s_s(func_31(p_933->g_7, func_37((((*l_44) = (safe_unary_minus_func_int32_t_s((-2L)))) , l_46), (*l_46), ((((p_933->g_47 == (func_49((safe_add_func_int8_t_s_s(0x7AL, (safe_mul_func_int16_t_s_s(((safe_div_func_int32_t_s_s(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(0L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(l_61.s64)))), p_933->g_7, 3L, ((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 4))(0x3003BA29L, 0x3BCEC63FL, 0x4AFACA8AL, 0x54F00D13L)).hi, ((VECTOR(int32_t, 2))(p_933->g_62.xx))))), 0x6DCEBFDCL)).odd)).z, func_63(l_21, (*l_46), l_67, p_933))) || (*l_67)), l_14)))), p_933->g_224.s2, p_933->g_365, l_14, (*l_46), p_933) , p_933->g_456)) , 0x25B99A8D2DF5E8CBL) ^ (*l_46)) | l_13[2]), &p_933->g_7, l_46, p_933), &p_933->g_2, &p_933->g_2, l_67, p_933), p_933->g_315.s6)), l_14)), p_933->g_370.s0, p_933->g_294.w, p_933->g_500.y, p_933);
            (*l_881) &= (l_13[2] = (safe_mul_func_uint8_t_u_u((((*l_865) |= ((VECTOR(uint8_t, 4))((((*p_933->g_571) = (*l_67)) || (*l_67)), ((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 8))(l_859.s14532703)).s77, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(l_860.sb09b)).even))))), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(mul_hi(((VECTOR(uint8_t, 4))(l_861.s6532)).wwyzxyyyzwyzwyzy, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(mul_hi(((VECTOR(uint8_t, 2))(0x58L, 0x59L)).yxyxxxxy, ((VECTOR(uint8_t, 16))(l_862.s3c6ec66200bdb1c8)).lo))).even)).ywzwzzxzyyzxxxxz))).s55ac)).hi, ((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(p_933->g_863.wwyyzyxz)).s76)), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(p_933->g_864.yxxyxxyxyyxxxyyy)).s4866)).odd)))))), 9UL)).z) & (((l_866 = ((void*)0 == &p_933->g_566)) == (((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(p_933->g_867.zzzyxzzx)).odd)).w != p_933->g_148[4])) | (safe_sub_func_int32_t_s_s((safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 16))(0x5E54L, 1L, ((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 8))(min(((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(p_933->g_872.s7005)), ((VECTOR(int16_t, 4))(((((p_933->g_566 , &p_933->g_461[2][1]) != ((((VECTOR(uint8_t, 16))(hadd(((VECTOR(uint8_t, 2))(0x70L, 0xE9L)).yxyxxxxyxxxyyxyy, ((VECTOR(uint8_t, 4))(l_873.s5144)).xzzwwxzyxxyzzxzx))).s3 <= (((((((VECTOR(int16_t, 16))(l_874.yxxxxyyxxxxyyxyy)).s2 || ((safe_lshift_func_int16_t_s_u(0x54FAL, 8)) > (safe_mul_func_uint8_t_u_u((p_933->g_480.y < (*l_46)), p_933->g_582.s7)))) | l_874.x) <= 0x428C92D078A8440AL) | l_879[0]) && l_14)) , l_880)) , l_874.y) & 0xFB73875C4A73224DL), ((VECTOR(int16_t, 2))(0x0B6EL)), 0x4DB4L)))), (int16_t)p_933->g_586.y))), (int16_t)l_13[2]))), ((VECTOR(int16_t, 8))((-3L))), ((VECTOR(int16_t, 8))(0L))))), (*l_67), ((VECTOR(int16_t, 2))(0x0A53L)), (*l_67), 0x27EDL, 0x3C2DL)).sb, p_933->g_313.s8)), 4L)))), l_874.y)));
        }
        p_933->g_62.x ^= (l_13[2] = ((((safe_add_func_int32_t_s_s((*l_67), (safe_rshift_func_uint8_t_u_u((((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(clz(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(min(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(min(((VECTOR(uint16_t, 16))(p_933->g_886.xxxyyyyxxxyxyyyy)), (uint16_t)(((safe_mul_func_uint16_t_u_u((safe_div_func_uint32_t_u_u((((safe_div_func_int16_t_s_s(((((((0UL != (l_922 = ((p_933->g_582.s4 <= p_933->g_526.y) , ((safe_mod_func_uint16_t_u_u((l_866 = ((*l_919) |= (safe_sub_func_uint64_t_u_u((l_897 , (safe_lshift_func_int8_t_s_s((safe_mod_func_int16_t_s_s((safe_mod_func_uint8_t_u_u(((((safe_rshift_func_int16_t_s_s((safe_sub_func_uint8_t_u_u(((((*l_916) = (((*l_910) = l_67) != ((((*l_914) ^= (+((safe_lshift_func_uint16_t_u_s((&p_933->g_417 == &p_933->g_417), l_13[2])) != FAKE_DIVERGE(p_933->global_2_offset, get_global_id(2), 10)))) < 0L) , (void*)0))) == l_874.x) <= GROUP_DIVERGE(0, 1)), l_14)), 11)) <= 0x03L) <= l_917) , 1UL), l_874.y)), 65532UL)), 0))), l_918)))), p_933->g_522.y)) >= p_933->g_867.w)))) , (void*)0) == p_933->g_923) , 255UL) != 0x45L) || l_925), p_933->g_418)) , (void*)0) == l_926), l_874.y)), 0x6D01L)) <= l_925) <= l_874.y)))))).even, ((VECTOR(uint16_t, 8))(0x31B6L))))).s17))))))).even == 0xB1D4L), 6)))) <= (*p_933->g_571)) != 0x42BCD86AL) || 0L));
        (*l_914) &= 0x4D8B5D2DL;
    }
    for (l_925 = 16; (l_925 < 20); l_925 = safe_add_func_int8_t_s_s(l_925, 9))
    { /* block id: 327 */
        uint8_t l_930 = 0x8FL;
        ++l_930;
    }
    return (*p_933->g_47);
}


/* ------------------------------------------ */
/* 
 * reads : p_933->g_45 p_933->g_116 p_933->g_742
 * writes: p_933->g_45 p_933->g_116 p_933->g_571 p_933->g_239 p_933->g_291
 */
int32_t * func_22(uint64_t  p_23, uint8_t  p_24, uint16_t  p_25, int8_t  p_26, struct S0 * p_933)
{ /* block id: 241 */
    int32_t *l_703 = &p_933->g_116;
    int32_t *l_704 = &p_933->g_473;
    int32_t *l_705 = &p_933->g_473;
    uint16_t l_706 = 0xEBEEL;
    int16_t *l_714 = &p_933->g_239;
    uint64_t *l_716 = &p_933->g_514;
    int64_t **l_726[9][2] = {{&p_933->g_365,(void*)0},{&p_933->g_365,(void*)0},{&p_933->g_365,(void*)0},{&p_933->g_365,(void*)0},{&p_933->g_365,(void*)0},{&p_933->g_365,(void*)0},{&p_933->g_365,(void*)0},{&p_933->g_365,(void*)0},{&p_933->g_365,(void*)0}};
    int32_t l_836 = (-10L);
    int32_t l_852 = (-5L);
    int32_t *l_855 = (void*)0;
    int i, j;
    l_706--;
    for (p_933->g_45 = 0; (p_933->g_45 >= (-5)); p_933->g_45 = safe_sub_func_int8_t_s_s(p_933->g_45, 1))
    { /* block id: 245 */
        int32_t l_713 = 5L;
        int16_t **l_715 = &p_933->g_571;
        int32_t *l_718 = &p_933->g_319;
        int32_t **l_717 = &l_718;
        int32_t ***l_719 = &l_717;
        VECTOR(uint16_t, 16) l_720 = (VECTOR(uint16_t, 16))(9UL, (VECTOR(uint16_t, 4))(9UL, (VECTOR(uint16_t, 2))(9UL, 0UL), 0UL), 0UL, 9UL, 0UL, (VECTOR(uint16_t, 2))(9UL, 0UL), (VECTOR(uint16_t, 2))(9UL, 0UL), 9UL, 0UL, 9UL, 0UL);
        VECTOR(uint8_t, 16) l_743 = (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0xAFL), 0xAFL), 0xAFL, 255UL, 0xAFL, (VECTOR(uint8_t, 2))(255UL, 0xAFL), (VECTOR(uint8_t, 2))(255UL, 0xAFL), 255UL, 0xAFL, 255UL, 0xAFL);
        int32_t l_798 = 9L;
        int32_t l_799 = 0x0B32DBC9L;
        uint32_t *l_811 = &p_933->g_418;
        int i;
        (*l_703) = (GROUP_DIVERGE(1, 1) && (l_713 == 3UL));
        (*l_703) &= (((((l_714 == ((*l_715) = l_714)) , l_716) == (void*)0) , (((*l_719) = l_717) != (void*)0)) && ((VECTOR(uint16_t, 16))(l_720.s44efb4f97585f5c3)).s0);
        for (p_933->g_239 = (-22); (p_933->g_239 >= (-22)); p_933->g_239 = safe_add_func_uint16_t_u_u(p_933->g_239, 5))
        { /* block id: 252 */
            int32_t **l_723 = &l_705;
            (*l_723) = &l_713;
        }
    }
    (*p_933->g_742) = &l_852;
    return l_855;
}


/* ------------------------------------------ */
/* 
 * reads : p_933->g_549 p_933->g_47 p_933->g_48 p_933->g_370 p_933->g_224 p_933->g_368 p_933->g_566 p_933->g_326 p_933->g_569 p_933->g_582 p_933->g_313 p_933->g_586 p_933->g_589 p_933->g_590 p_933->g_2 p_933->g_62 p_933->g_611 p_933->g_115 p_933->g_116 p_933->g_240 p_933->g_655 p_933->g_657 p_933->g_185 p_933->g_456 p_933->g_81 p_933->g_473 p_933->g_159 p_933->g_694
 * writes: p_933->g_549 p_933->g_81 p_933->g_566 p_933->g_570 p_933->g_263 p_933->g_240 p_933->g_185 p_933->g_681 p_933->g_107 p_933->g_159 p_933->g_118
 */
int32_t  func_31(uint8_t  p_32, int32_t * p_33, int32_t * p_34, int32_t * p_35, int32_t * p_36, struct S0 * p_933)
{ /* block id: 194 */
    VECTOR(int64_t, 16) l_539 = (VECTOR(int64_t, 16))(0x2C106880223AEA4AL, (VECTOR(int64_t, 4))(0x2C106880223AEA4AL, (VECTOR(int64_t, 2))(0x2C106880223AEA4AL, 0x15130ADAE480CD17L), 0x15130ADAE480CD17L), 0x15130ADAE480CD17L, 0x2C106880223AEA4AL, 0x15130ADAE480CD17L, (VECTOR(int64_t, 2))(0x2C106880223AEA4AL, 0x15130ADAE480CD17L), (VECTOR(int64_t, 2))(0x2C106880223AEA4AL, 0x15130ADAE480CD17L), 0x2C106880223AEA4AL, 0x15130ADAE480CD17L, 0x2C106880223AEA4AL, 0x15130ADAE480CD17L);
    int32_t l_540 = 0x5F04853FL;
    int32_t *l_545 = &p_933->g_148[5];
    uint8_t *l_548 = &p_933->g_549[0];
    int32_t l_564[4] = {(-1L),(-1L),(-1L),(-1L)};
    int32_t *l_565 = &p_933->g_566;
    uint64_t l_575 = 18446744073709551615UL;
    uint16_t *l_587 = &p_933->g_263;
    VECTOR(uint16_t, 2) l_608 = (VECTOR(uint16_t, 2))(0x8882L, 0xCDE8L);
    uint64_t l_620[7] = {0xB3BEC5C1A4265F1EL,0x444FCE281D4CC071L,0xB3BEC5C1A4265F1EL,0xB3BEC5C1A4265F1EL,0x444FCE281D4CC071L,0xB3BEC5C1A4265F1EL,0xB3BEC5C1A4265F1EL};
    VECTOR(int32_t, 8) l_624 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 5L), 5L), 5L, (-1L), 5L);
    VECTOR(uint8_t, 16) l_628 = (VECTOR(uint8_t, 16))(0xC3L, (VECTOR(uint8_t, 4))(0xC3L, (VECTOR(uint8_t, 2))(0xC3L, 1UL), 1UL), 1UL, 0xC3L, 1UL, (VECTOR(uint8_t, 2))(0xC3L, 1UL), (VECTOR(uint8_t, 2))(0xC3L, 1UL), 0xC3L, 1UL, 0xC3L, 1UL);
    uint32_t l_670 = 4294967286UL;
    uint32_t l_672 = 5UL;
    int32_t *l_673 = &p_933->g_473;
    VECTOR(uint8_t, 2) l_674 = (VECTOR(uint8_t, 2))(0x57L, 0xEBL);
    int i;
    if ((!(((((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(l_539.s6d40)).hi)).hi == (((((*l_565) ^= ((l_540 ^= l_539.sa) && ((safe_sub_func_uint8_t_u_u((((0x7686D598L & ((safe_sub_func_uint64_t_u_u(GROUP_DIVERGE(0, 1), l_539.sc)) > (l_545 == &p_933->g_148[2]))) == ((((((VECTOR(uint32_t, 2))(0x10FF1F6FL, 4294967291UL)).hi , (safe_rshift_func_uint8_t_u_u(246UL, ((*l_548)++)))) < ((safe_sub_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_u((safe_mod_func_int64_t_s_s((*p_933->g_47), l_539.sa)), 2)), (((safe_mod_func_int8_t_s_s(((GROUP_DIVERGE(0, 1) ^ (safe_add_func_int32_t_s_s(((p_933->g_81 = (safe_mod_func_uint32_t_u_u(l_564[2], l_539.sf))) , (*p_33)), p_32))) , p_933->g_370.sb), FAKE_DIVERGE(p_933->local_1_offset, get_local_id(1), 10))) <= 3L) & p_32))) >= p_933->g_224.s2)) <= 0xE7BC222DL) , 0xA566B5DFL)) <= p_933->g_368.w), p_933->g_224.s1)) && p_32))) , l_539.s1) , 0xD421C05DL) , 0x354CA40CE2810F32L)) , l_540) < p_933->g_326.s1)))
    { /* block id: 199 */
        int16_t *l_568 = &p_933->g_472;
        int16_t **l_567[8][8] = {{&l_568,(void*)0,&l_568,&l_568,(void*)0,&l_568,&l_568,(void*)0},{&l_568,(void*)0,&l_568,&l_568,(void*)0,&l_568,&l_568,(void*)0},{&l_568,(void*)0,&l_568,&l_568,(void*)0,&l_568,&l_568,(void*)0},{&l_568,(void*)0,&l_568,&l_568,(void*)0,&l_568,&l_568,(void*)0},{&l_568,(void*)0,&l_568,&l_568,(void*)0,&l_568,&l_568,(void*)0},{&l_568,(void*)0,&l_568,&l_568,(void*)0,&l_568,&l_568,(void*)0},{&l_568,(void*)0,&l_568,&l_568,(void*)0,&l_568,&l_568,(void*)0},{&l_568,(void*)0,&l_568,&l_568,(void*)0,&l_568,&l_568,(void*)0}};
        VECTOR(int32_t, 8) l_574 = (VECTOR(int32_t, 8))(0x0F151739L, (VECTOR(int32_t, 4))(0x0F151739L, (VECTOR(int32_t, 2))(0x0F151739L, (-1L)), (-1L)), (-1L), 0x0F151739L, (-1L));
        VECTOR(uint16_t, 8) l_585 = (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 65526UL), 65526UL), 65526UL, 1UL, 65526UL);
        int8_t l_625 = 1L;
        int16_t l_626 = 3L;
        VECTOR(int64_t, 8) l_654 = (VECTOR(int64_t, 8))(0x57277823DC12E15DL, (VECTOR(int64_t, 4))(0x57277823DC12E15DL, (VECTOR(int64_t, 2))(0x57277823DC12E15DL, 1L), 1L), 1L, 0x57277823DC12E15DL, 1L);
        int64_t *l_684 = (void*)0;
        int64_t *l_685 = (void*)0;
        int64_t *l_686 = (void*)0;
        int64_t *l_687 = (void*)0;
        int64_t *l_688 = (void*)0;
        int64_t *l_689 = (void*)0;
        int64_t *l_690 = (void*)0;
        int64_t *l_691 = &p_933->g_107[8];
        int i, j;
        (*p_933->g_569) = l_567[3][6];
        for (p_32 = 16; (p_32 == 21); p_32 = safe_add_func_uint16_t_u_u(p_32, 8))
        { /* block id: 203 */
            uint16_t *l_576 = (void*)0;
            uint16_t *l_577 = (void*)0;
            uint16_t *l_578 = (void*)0;
            uint16_t *l_579 = &p_933->g_263;
            VECTOR(uint16_t, 2) l_583 = (VECTOR(uint16_t, 2))(0x9605L, 0x7AD6L);
            VECTOR(uint16_t, 8) l_584 = (VECTOR(uint16_t, 8))(65534UL, (VECTOR(uint16_t, 4))(65534UL, (VECTOR(uint16_t, 2))(65534UL, 6UL), 6UL), 6UL, 65534UL, 6UL);
            uint16_t **l_588 = &l_577;
            uint64_t *l_595 = &p_933->g_240;
            int32_t l_619[5][2] = {{7L,0x125C28A1L},{7L,0x125C28A1L},{7L,0x125C28A1L},{7L,0x125C28A1L},{7L,0x125C28A1L}};
            int32_t *l_623[2][1];
            int32_t l_627 = 0L;
            int16_t l_639[10] = {0x633AL,1L,0x633AL,0x633AL,1L,0x633AL,0x633AL,1L,0x633AL,0x633AL};
            int32_t l_640 = 0L;
            uint32_t l_641 = 0xC8415F0CL;
            VECTOR(int64_t, 16) l_653 = (VECTOR(int64_t, 16))(0x4CD73F8603EE2551L, (VECTOR(int64_t, 4))(0x4CD73F8603EE2551L, (VECTOR(int64_t, 2))(0x4CD73F8603EE2551L, 8L), 8L), 8L, 0x4CD73F8603EE2551L, 8L, (VECTOR(int64_t, 2))(0x4CD73F8603EE2551L, 8L), (VECTOR(int64_t, 2))(0x4CD73F8603EE2551L, 8L), 0x4CD73F8603EE2551L, 8L, 0x4CD73F8603EE2551L, 8L);
            VECTOR(int64_t, 2) l_656 = (VECTOR(int64_t, 2))(0x4D4A8FB4E564AD1AL, 8L);
            VECTOR(int8_t, 8) l_662 = (VECTOR(int8_t, 8))(0x7BL, (VECTOR(int8_t, 4))(0x7BL, (VECTOR(int8_t, 2))(0x7BL, (-3L)), (-3L)), (-3L), 0x7BL, (-3L));
            int i, j;
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 1; j++)
                    l_623[i][j] = (void*)0;
            }
            if (((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 16))(l_574.s3502421746047522)).s4b, ((VECTOR(int32_t, 8))((((*l_579) = l_575) , (((safe_add_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(safe_clamp_func(VECTOR(uint16_t, 16),VECTOR(uint16_t, 16),((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(0UL, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(p_933->g_582.s1352735170230354)))).sa9)), 2UL)).even)).yyxxyxxxyyxxxyyx, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(abs_diff(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(abs_diff(((VECTOR(uint16_t, 4))(mad_sat(((VECTOR(uint16_t, 2))(add_sat(((VECTOR(uint16_t, 4))(l_583.yyxx)).odd, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(l_584.s6203)).odd))))).xyyy, ((VECTOR(uint16_t, 2))(l_585.s46)).yxyy, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(0x954DL, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(rotate(((VECTOR(uint16_t, 2))(upsample(((VECTOR(uint8_t, 2))(sub_sat(((VECTOR(uint8_t, 4))(mad_hi(((VECTOR(uint8_t, 8))(0xF8L, p_933->g_313.s6, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 16))(p_933->g_586.xyyxxxxyyyxyxyyx)).sf1, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))((((*l_588) = l_587) == &p_933->g_263), ((VECTOR(uint8_t, 2))(p_933->g_589.s10)), 254UL, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(max(((VECTOR(uint8_t, 4))(p_933->g_590.s54ae)).zwwwwxxzwzxyzxwz, (uint8_t)(safe_sub_func_int64_t_s_s((safe_rshift_func_uint8_t_u_u(((*l_548) |= (l_595 != (void*)0)), p_933->g_589.s3)), (safe_rshift_func_int16_t_s_s(l_585.s6, 8))))))).sf4)), p_32, 0xD0L, GROUP_DIVERGE(0, 1), 246UL, ((VECTOR(uint8_t, 4))(0UL)), 0x92L, 0x48L)).s72))))).xyxxyyyx)).s76)), 1UL, ((VECTOR(uint8_t, 2))(0x45L)), 0xDEL)).hi, ((VECTOR(uint8_t, 4))(246UL)), ((VECTOR(uint8_t, 4))(8UL))))).even, ((VECTOR(uint8_t, 2))(0UL))))), ((VECTOR(uint8_t, 2))(0xC4L))))), ((VECTOR(uint16_t, 2))(0x2E5FL))))))).lo, p_32, ((VECTOR(uint16_t, 8))(0x3353L)), ((VECTOR(uint16_t, 4))(65535UL)), 0x44D6L)).lo)).odd))), ((VECTOR(uint16_t, 4))(4UL))))), 0x4B60L, 0x22B4L, 0x02CBL, 65526UL)).odd)).odd, ((VECTOR(uint16_t, 2))(1UL))))).yxyxxyyxxxxyyyxx)), ((VECTOR(uint16_t, 16))(9UL))))).lo)), 0xD76CL, 0xBC26L, 0x9AF8L, 0x3948L, 1UL, ((VECTOR(uint16_t, 2))(0xD5DDL)), 65535UL)).s1, 0UL)) , GROUP_DIVERGE(0, 1)) , l_539.sf)), (*p_35), ((VECTOR(int32_t, 4))(9L)), 0x7C476644L, 0x03E0F88AL)).s02))).odd)
            { /* block id: 207 */
                int64_t l_612 = 0x5CC90C8A6A14200FL;
                int32_t *l_613 = &p_933->g_473;
                int32_t *l_614 = &p_933->g_116;
                int32_t *l_615 = &p_933->g_116;
                int32_t *l_616 = &l_540;
                int32_t *l_617 = &p_933->g_473;
                int32_t *l_618[7][10][3] = {{{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540}},{{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540}},{{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540}},{{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540}},{{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540}},{{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540}},{{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540},{&p_933->g_473,(void*)0,&l_540}}};
                int i, j, k;
                l_540 = (((safe_lshift_func_int16_t_s_s((-7L), (safe_div_func_uint64_t_u_u(((safe_div_func_uint8_t_u_u((((0x2A640A15DF3DD239L != (&p_933->g_461[3][0] != &p_933->g_461[0][0])) , (safe_sub_func_int16_t_s_s(l_564[2], (p_933->g_62.x , ((safe_sub_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(l_608.yx)).hi, (safe_add_func_int64_t_s_s((-1L), p_933->g_611)))) , ((p_933->g_370.s9 , (void*)0) != &p_933->g_417)))))) , 0UL), 0xD1L)) == 0x348EL), l_584.s4)))) & l_612) , 0x3BA4D87FL);
                ++l_620[3];
            }
            else
            { /* block id: 210 */
                l_540 = (*p_933->g_115);
                return l_583.x;
            }
            l_628.s6++;
            for (p_933->g_566 = 12; (p_933->g_566 < (-14)); p_933->g_566--)
            { /* block id: 217 */
                int64_t l_633 = 0L;
                int32_t l_634 = 0x61E174BBL;
                int32_t l_635[6][10] = {{0L,0x32ABDC15L,0x0E5DE075L,0x7755F00CL,0x32ABDC15L,0x7755F00CL,0x0E5DE075L,0x32ABDC15L,0L,0L},{0L,0x32ABDC15L,0x0E5DE075L,0x7755F00CL,0x32ABDC15L,0x7755F00CL,0x0E5DE075L,0x32ABDC15L,0L,0L},{0L,0x32ABDC15L,0x0E5DE075L,0x7755F00CL,0x32ABDC15L,0x7755F00CL,0x0E5DE075L,0x32ABDC15L,0L,0L},{0L,0x32ABDC15L,0x0E5DE075L,0x7755F00CL,0x32ABDC15L,0x7755F00CL,0x0E5DE075L,0x32ABDC15L,0L,0L},{0L,0x32ABDC15L,0x0E5DE075L,0x7755F00CL,0x32ABDC15L,0x7755F00CL,0x0E5DE075L,0x32ABDC15L,0L,0L},{0L,0x32ABDC15L,0x0E5DE075L,0x7755F00CL,0x32ABDC15L,0x7755F00CL,0x0E5DE075L,0x32ABDC15L,0L,0L}};
                VECTOR(uint64_t, 2) l_636 = (VECTOR(uint64_t, 2))(0x03F56752CF8BC077L, 0x2E8EAF4BAD241AD7L);
                VECTOR(uint64_t, 2) l_665 = (VECTOR(uint64_t, 2))(0xE17046C7CE9F89EAL, 18446744073709551610UL);
                int8_t *l_671 = &p_933->g_185;
                int i, j;
                l_636.x++;
                (*p_36) = (*p_34);
                --l_641;
                l_672 ^= (p_933->g_224.s3 & ((0x79A852D20C91C3C7L | ((*l_595)--)) >= (safe_mod_func_uint64_t_u_u((safe_add_func_uint32_t_u_u(p_933->g_368.y, (p_32 == 1UL))), (((-7L) | (safe_unary_minus_func_uint64_t_u((l_564[3] == ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),VECTOR(int64_t, 2),((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(sub_sat(((VECTOR(int64_t, 8))(l_653.sa8efd78c)), ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(mad_sat(((VECTOR(int64_t, 16))(rotate(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(l_654.s47)).yyxy)).ywwwwzyxyxzwwzxy, ((VECTOR(int64_t, 4))(p_933->g_655.s3732)).yzywxwyywzwxwyxw))), ((VECTOR(int64_t, 4))(rotate(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(mul_hi(((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 8))(l_656.xyxyyxyy)), ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(safe_clamp_func(VECTOR(int64_t, 8),int64_t,((VECTOR(int64_t, 4))(p_933->g_657.se035)).wxzywwzx, (int64_t)(safe_mul_func_uint8_t_u_u((safe_mod_func_int8_t_s_s(((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 2))(0x14L, 0L)).yyyyxyxxxyyxxxxx, ((VECTOR(int8_t, 8))(l_662.s40422673)).s3402106126244343))).s2, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 16))((-6L), ((VECTOR(int8_t, 8))(((*l_671) &= (safe_div_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(l_665.yyxxxyyyyxxxyyyx)).sa, ((safe_mod_func_uint32_t_u_u((((*p_33) > (safe_mul_func_uint16_t_u_u(0UL, l_539.s9))) ^ 0x5D7E716594E9D490L), 0x3591F0B1L)) , l_670)))), (-8L), l_564[2], 0x0BL, 0L, ((VECTOR(int8_t, 2))(0x07L)), 7L)), ((VECTOR(int8_t, 2))(2L)), 0x45L, ((VECTOR(int8_t, 4))(0x0FL)))).s2e, (int8_t)l_540))))).even)), 0x20L)), (int64_t)(*p_933->g_456)))).s0315570324066216)).hi))).even, ((VECTOR(int64_t, 4))(0L))))).lo)).yxxx, ((VECTOR(int64_t, 4))((-7L)))))).xxyzyyyyzyxyyywz, ((VECTOR(int64_t, 16))(0x1C5FC3828F2BA2D3L))))))).lo))).s3154577753531702)))).s32, ((VECTOR(int64_t, 2))((-5L))), ((VECTOR(int64_t, 2))(0L))))), ((VECTOR(int64_t, 2))(0x3218D014AE10BFA9L)), p_32, l_625, 7L, l_574.s3, 0x0A7E610A6499CC64L, ((VECTOR(int64_t, 4))(0x064A3AC908BD19C6L)), ((VECTOR(int64_t, 2))(1L)), (-1L))).s3a)).hi)))) || 0x4E71E7CF98CD3368L)))));
            }
            (*p_33) ^= 0x6077B04BL;
        }
        p_36 = ((((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(hadd(((VECTOR(int16_t, 2))(5L, 1L)).xxyyxyyyxyyxxyyx, ((VECTOR(int16_t, 4))(0x4034L, 0x4641L, 0x42FBL, 0x230AL)).yywzyzxyxwxzxwyz))).lo)).s7 , 65535UL) , l_673);
        if (((p_32 , ((VECTOR(uint16_t, 2))(sub_sat(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(safe_clamp_func(VECTOR(uint16_t, 16),VECTOR(uint16_t, 16),((VECTOR(uint16_t, 4))((((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(safe_clamp_func(VECTOR(uint8_t, 2),uint8_t,((VECTOR(uint8_t, 16))(l_674.yyxyyyxxxyxyxyxx)).scc, (uint8_t)((*l_548)--), (uint8_t)0x9AL))))))).yyxyyxyy)).s1 != (p_933->g_159 |= ((0xBAED322E8BFAE293L > ((*l_691) = ((safe_sub_func_int8_t_s_s((safe_lshift_func_int8_t_s_s(p_933->g_81, ((p_933->g_681 = &p_933->g_417) != &p_933->g_417))), p_32)) != (safe_mul_func_uint8_t_u_u(((((~((p_32 , (*l_673)) , l_626)) != 0x40L) , (*l_673)) & (-1L)), (*l_673)))))) >= (*l_673)))), ((VECTOR(uint16_t, 2))(4UL)), 0UL)).zywxzzwzxwwyxyzz, ((VECTOR(uint16_t, 16))(6UL)), ((VECTOR(uint16_t, 16))(0x9860L))))).s080f)).even, ((VECTOR(uint16_t, 2))(0UL))))).hi) , (*l_673)))
        { /* block id: 232 */
            int32_t **l_692 = (void*)0;
            (*p_933->g_694) = p_36;
        }
        else
        { /* block id: 234 */
            int32_t *l_695 = &p_933->g_473;
            int32_t *l_696 = &l_540;
            int32_t *l_697[4] = {&p_933->g_116,&p_933->g_116,&p_933->g_116,&p_933->g_116};
            uint32_t l_699 = 0xCCA4206BL;
            int i;
            l_699--;
        }
    }
    else
    { /* block id: 237 */
        uint32_t l_702 = 8UL;
        return l_702;
    }
    return (*l_673);
}


/* ------------------------------------------ */
/* 
 * reads : p_933->g_173 p_933->g_480 p_933->g_263 p_933->g_62 p_933->g_368 p_933->g_115 p_933->g_500 p_933->g_508 p_933->g_509 p_933->g_250 p_933->g_47 p_933->g_48 p_933->g_522 p_933->g_524 p_933->g_526 p_933->g_527 p_933->g_326 p_933->g_460 p_933->g_96 p_933->g_418
 * writes: p_933->g_460 p_933->g_263 p_933->g_239 p_933->g_472 p_933->g_473 p_933->g_116 p_933->g_514 p_933->g_480
 */
int32_t * func_37(int32_t * p_38, uint64_t  p_39, int32_t  p_40, int32_t * p_41, int32_t * p_42, struct S0 * p_933)
{ /* block id: 168 */
    uint64_t *l_458 = &p_933->g_96;
    uint64_t **l_457 = &l_458;
    uint64_t ***l_459 = (void*)0;
    int32_t l_481 = 0x3A6F6A90L;
    int32_t l_486 = 0x472CAF4CL;
    uint16_t *l_489 = &p_933->g_263;
    int32_t l_494[6][6][7] = {{{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L},{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L},{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L},{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L},{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L},{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L}},{{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L},{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L},{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L},{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L},{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L},{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L}},{{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L},{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L},{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L},{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L},{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L},{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L}},{{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L},{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L},{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L},{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L},{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L},{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L}},{{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L},{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L},{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L},{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L},{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L},{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L}},{{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L},{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L},{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L},{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L},{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L},{0x65F0813EL,0x5B892758L,0x29A3DB54L,(-4L),0x44450B80L,3L,0x2E39D8F1L}}};
    VECTOR(int64_t, 8) l_499 = (VECTOR(int64_t, 8))(0x7A2EB5DB887EBD63L, (VECTOR(int64_t, 4))(0x7A2EB5DB887EBD63L, (VECTOR(int64_t, 2))(0x7A2EB5DB887EBD63L, 0x0FDB99216EB6062CL), 0x0FDB99216EB6062CL), 0x0FDB99216EB6062CL, 0x7A2EB5DB887EBD63L, 0x0FDB99216EB6062CL);
    VECTOR(int64_t, 16) l_501 = (VECTOR(int64_t, 16))(0x7F5525967E2837F0L, (VECTOR(int64_t, 4))(0x7F5525967E2837F0L, (VECTOR(int64_t, 2))(0x7F5525967E2837F0L, 3L), 3L), 3L, 0x7F5525967E2837F0L, 3L, (VECTOR(int64_t, 2))(0x7F5525967E2837F0L, 3L), (VECTOR(int64_t, 2))(0x7F5525967E2837F0L, 3L), 0x7F5525967E2837F0L, 3L, 0x7F5525967E2837F0L, 3L);
    VECTOR(uint64_t, 4) l_515 = (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 18446744073709551612UL), 18446744073709551612UL);
    VECTOR(uint16_t, 4) l_519 = (VECTOR(uint16_t, 4))(0x593FL, (VECTOR(uint16_t, 2))(0x593FL, 0xDE79L), 0xDE79L);
    VECTOR(uint16_t, 8) l_520 = (VECTOR(uint16_t, 8))(65534UL, (VECTOR(uint16_t, 4))(65534UL, (VECTOR(uint16_t, 2))(65534UL, 0UL), 0UL), 0UL, 65534UL, 0UL);
    VECTOR(uint16_t, 8) l_521 = (VECTOR(uint16_t, 8))(0xB582L, (VECTOR(uint16_t, 4))(0xB582L, (VECTOR(uint16_t, 2))(0xB582L, 0xE1F5L), 0xE1F5L), 0xE1F5L, 0xB582L, 0xE1F5L);
    VECTOR(uint16_t, 16) l_523 = (VECTOR(uint16_t, 16))(0x43CFL, (VECTOR(uint16_t, 4))(0x43CFL, (VECTOR(uint16_t, 2))(0x43CFL, 0xF39EL), 0xF39EL), 0xF39EL, 0x43CFL, 0xF39EL, (VECTOR(uint16_t, 2))(0x43CFL, 0xF39EL), (VECTOR(uint16_t, 2))(0x43CFL, 0xF39EL), 0x43CFL, 0xF39EL, 0x43CFL, 0xF39EL);
    VECTOR(uint16_t, 16) l_525 = (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0xA494L), 0xA494L), 0xA494L, 0UL, 0xA494L, (VECTOR(uint16_t, 2))(0UL, 0xA494L), (VECTOR(uint16_t, 2))(0UL, 0xA494L), 0UL, 0xA494L, 0UL, 0xA494L);
    VECTOR(uint16_t, 16) l_528 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0xF62BL), 0xF62BL), 0xF62BL, 1UL, 0xF62BL, (VECTOR(uint16_t, 2))(1UL, 0xF62BL), (VECTOR(uint16_t, 2))(1UL, 0xF62BL), 1UL, 0xF62BL, 1UL, 0xF62BL);
    VECTOR(int16_t, 8) l_537 = (VECTOR(int16_t, 8))(6L, (VECTOR(int16_t, 4))(6L, (VECTOR(int16_t, 2))(6L, 0x37C8L), 0x37C8L), 0x37C8L, 6L, 0x37C8L);
    int8_t *l_538[5];
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_538[i] = &p_933->g_185;
    if (((p_933->g_460 = l_457) == &p_933->g_461[2][1]))
    { /* block id: 170 */
        uint16_t *l_462 = &p_933->g_263;
        int16_t *l_469 = &p_933->g_239;
        int16_t *l_470 = (void*)0;
        int16_t *l_471 = &p_933->g_472;
        uint32_t *l_474[9][8] = {{&p_933->g_418,&p_933->g_275,&p_933->g_275,&p_933->g_418,&p_933->g_275,&p_933->g_418,&p_933->g_418,(void*)0},{&p_933->g_418,&p_933->g_275,&p_933->g_275,&p_933->g_418,&p_933->g_275,&p_933->g_418,&p_933->g_418,(void*)0},{&p_933->g_418,&p_933->g_275,&p_933->g_275,&p_933->g_418,&p_933->g_275,&p_933->g_418,&p_933->g_418,(void*)0},{&p_933->g_418,&p_933->g_275,&p_933->g_275,&p_933->g_418,&p_933->g_275,&p_933->g_418,&p_933->g_418,(void*)0},{&p_933->g_418,&p_933->g_275,&p_933->g_275,&p_933->g_418,&p_933->g_275,&p_933->g_418,&p_933->g_418,(void*)0},{&p_933->g_418,&p_933->g_275,&p_933->g_275,&p_933->g_418,&p_933->g_275,&p_933->g_418,&p_933->g_418,(void*)0},{&p_933->g_418,&p_933->g_275,&p_933->g_275,&p_933->g_418,&p_933->g_275,&p_933->g_418,&p_933->g_418,(void*)0},{&p_933->g_418,&p_933->g_275,&p_933->g_275,&p_933->g_418,&p_933->g_275,&p_933->g_418,&p_933->g_418,(void*)0},{&p_933->g_418,&p_933->g_275,&p_933->g_275,&p_933->g_418,&p_933->g_275,&p_933->g_418,&p_933->g_418,(void*)0}};
        int32_t *l_484[2];
        int32_t l_485 = 0x6CC264DDL;
        int32_t *l_490 = &l_486;
        int32_t *l_491 = (void*)0;
        int32_t *l_492 = &l_485;
        int32_t *l_493[8] = {&l_481,&l_481,&l_481,&l_481,&l_481,&l_481,&l_481,&l_481};
        int64_t l_495 = (-8L);
        uint32_t l_496 = 0x414BA482L;
        int i, j;
        for (i = 0; i < 2; i++)
            l_484[i] = &p_933->g_148[4];
        (*p_42) = (((((*l_462) = 65535UL) , (((safe_mul_func_int16_t_s_s((p_933->g_473 = ((*l_471) = ((*l_469) = (safe_rshift_func_uint16_t_u_u((safe_div_func_uint16_t_u_u(0xD4E2L, p_933->g_173.y)), 11))))), (&p_933->g_418 == l_474[4][3]))) ^ ((((((((((l_481 = (safe_unary_minus_func_int8_t_s((safe_div_func_int16_t_s_s(p_39, (safe_sub_func_uint64_t_u_u((((VECTOR(int8_t, 16))(p_933->g_480.xyyxxyxxyyxyyyyx)).s3 && ((!((((VECTOR(int32_t, 4))(1L, 0x5DBEE4E1L, 0L, 0L)).y > ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(4294967295UL, 1UL)).xxxxxyyyxyxxyyyy)))).even)).s6) ^ l_481)) ^ 0x7A39L)), (safe_rshift_func_uint16_t_u_u((p_933->g_263 , 65534UL), GROUP_DIVERGE(1, 1)))))))))) , (void*)0) != &p_933->g_460) , l_485) , l_485) & l_485) , 0L) >= p_933->g_62.y) ^ p_39) < l_486)) ^ p_933->g_368.z)) & 0UL) , 0x373723CCL);
        (*p_933->g_115) = (safe_div_func_uint8_t_u_u((l_462 != l_489), 246UL));
        l_496--;
    }
    else
    { /* block id: 179 */
        VECTOR(int64_t, 8) l_502 = (VECTOR(int64_t, 8))(0x66F7F996E9FEF917L, (VECTOR(int64_t, 4))(0x66F7F996E9FEF917L, (VECTOR(int64_t, 2))(0x66F7F996E9FEF917L, 0x57EBF05526341B88L), 0x57EBF05526341B88L), 0x57EBF05526341B88L, 0x66F7F996E9FEF917L, 0x57EBF05526341B88L);
        int i;
        (*p_42) = (((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(8L, 0x1B5EF209E09101AAL, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(0x080B40DB5CB826E8L, ((VECTOR(int64_t, 2))(l_499.s41)), ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(0x0EAEC340BD4380EEL, 0x293B5434D48E98D1L, 0L, (-1L))).hi)), 1L, 0x2B80FB667B7F40B1L, 0L)))), ((VECTOR(int64_t, 2))(clz(((VECTOR(int64_t, 2))(rotate(((VECTOR(int64_t, 4))(0x120D09F462C4874BL, 0x11024E751B116697L, 0x4EEF3B29737907B8L, (-4L))).hi, ((VECTOR(int64_t, 4))(p_933->g_500.xwwz)).lo)))))).xyyxyxyy))).s1144231532135360)).sfd)), ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(l_501.sd074)).yzywxwzx)), (-7L), ((VECTOR(int64_t, 2))(0x0044B4B174412E4CL, 4L)), 0x57B5DBADC5166B70L)).sa188)).y & (((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(l_502.s61)))).even ^ 0xBF0AFFAF9129CD5CL));
        (*p_42) &= (FAKE_DIVERGE(p_933->local_0_offset, get_local_id(0), 10) , (safe_mul_func_int8_t_s_s(0x7AL, (safe_unary_minus_func_uint32_t_u((safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(p_933->g_508.s7635)).y, ((VECTOR(uint8_t, 2))(0xEEL, 255UL)), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(p_933->g_509.zyxzwwyzxxywzyyy)).s2188)), 0x48L)).s11)).even, 6)))))));
    }
    if (((&p_933->g_306 != &l_457) > ((p_933->g_250.x , &p_933->g_461[2][1]) == &l_458)))
    { /* block id: 183 */
        uint32_t l_510 = 4294967290UL;
        l_510++;
    }
    else
    { /* block id: 185 */
        uint64_t *l_513[8] = {&p_933->g_514,&p_933->g_514,&p_933->g_514,&p_933->g_514,&p_933->g_514,&p_933->g_514,&p_933->g_514,&p_933->g_514};
        int16_t *l_516 = &p_933->g_472;
        int i;
        l_494[2][0][3] = ((*p_38) ^= (FAKE_DIVERGE(p_933->global_1_offset, get_global_id(1), 10) < ((p_39 = (p_933->g_514 = 18446744073709551615UL)) , ((((VECTOR(uint64_t, 2))(l_515.yw)).lo | l_481) < (&p_933->g_472 != l_516)))));
    }
    (*p_42) ^= ((*p_933->g_47) || ((safe_rshift_func_uint16_t_u_s(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(rhadd(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(0xA045L, 1UL, ((VECTOR(uint16_t, 4))(l_519.xyzy)), ((VECTOR(uint16_t, 2))(l_520.s15)), ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(l_521.s1277141447076540)).odd)))).lo)), ((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(65527UL, 0x0627L, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(add_sat(((VECTOR(uint16_t, 2))(p_933->g_522.yy)), ((VECTOR(uint16_t, 4))(hadd(((VECTOR(uint16_t, 16))(l_523.sce86b6859ff75ecf)).scc57, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(p_933->g_524.s16033607)).s26)))).xyyy))).lo))).xyyyxyyy)).s6, ((VECTOR(uint16_t, 2))(add_sat(((VECTOR(uint16_t, 4))(rotate(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(mad_sat(((VECTOR(uint16_t, 8))(l_525.sd2bf7064)).s5677230660202072, ((VECTOR(uint16_t, 16))(p_933->g_526.xyxxxxyxyyyxxxxx)), ((VECTOR(uint16_t, 4))(max(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(0UL, 0xE9ECL, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(p_933->g_527.s17)), ((VECTOR(uint16_t, 2))(l_528.sd1)), 1UL, 9UL, 0xD284L, 1UL)), ((((*p_933->g_47) >= ((safe_lshift_func_int8_t_s_u((-2L), 1)) == (p_933->g_480.y ^= (p_40 ^ (((safe_lshift_func_uint8_t_u_u(p_39, 6)) >= ((p_933->g_326.s1 , &p_933->g_159) != (((~(safe_mul_func_int8_t_s_s((((((VECTOR(uint8_t, 2))(255UL, 0x88L)).odd <= ((safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 8))(l_537.s42313146)).s4, 8)) || ((void*)0 != l_538[0]))) || 0x5B6DL) & (**p_933->g_460)), p_39))) , p_39) , (void*)0))) && l_499.s6))))) == l_525.sf) & p_39), l_486, 0x7367L, 0xDFE2L, 0xE9AAL, 0x2809L)).odd)).lo, (uint16_t)p_40))).zxzxwyxzzzzwzxyz))).sf8)).xyyx, ((VECTOR(uint16_t, 4))(0x215CL))))).hi, ((VECTOR(uint16_t, 2))(0xB92EL))))).odd, 0x4A49L, ((VECTOR(uint16_t, 2))(65535UL)), 3UL)), ((VECTOR(uint16_t, 8))(0UL)))).sf5e0)).yxzwyzxz)).s32, ((VECTOR(uint16_t, 2))(4UL)), ((VECTOR(uint16_t, 2))(0UL))))).xxxyxxxx))).s4740005004226325)).s6, p_933->g_418)) <= l_494[4][3][0]));
    return p_42;
}


/* ------------------------------------------ */
/* 
 * reads : p_933->g_313 p_933->g_368 p_933->g_370 p_933->g_373 p_933->g_374 p_933->g_315 p_933->g_380 p_933->g_240 p_933->g_383 p_933->g_224 p_933->g_84 p_933->g_107 p_933->g_185 p_933->g_47 p_933->g_48 p_933->g_2 p_933->g_115 p_933->g_117 p_933->g_96 p_933->g_118 p_933->g_319 p_933->g_81 p_933->g_326 p_933->g_7 p_933->g_124
 * writes: p_933->g_275 p_933->g_159 p_933->g_263 p_933->g_107 p_933->g_116 p_933->g_118 p_933->g_319 p_933->g_252 p_933->g_417
 */
uint64_t  func_49(int32_t  p_50, int32_t  p_51, int64_t * p_52, uint8_t  p_53, int32_t  p_54, struct S0 * p_933)
{ /* block id: 128 */
    VECTOR(int32_t, 2) l_369 = (VECTOR(int32_t, 2))(0x6638F292L, 0x1CBD2238L);
    VECTOR(int32_t, 16) l_371 = (VECTOR(int32_t, 16))(0x323B8406L, (VECTOR(int32_t, 4))(0x323B8406L, (VECTOR(int32_t, 2))(0x323B8406L, 0x5F5C93D2L), 0x5F5C93D2L), 0x5F5C93D2L, 0x323B8406L, 0x5F5C93D2L, (VECTOR(int32_t, 2))(0x323B8406L, 0x5F5C93D2L), (VECTOR(int32_t, 2))(0x323B8406L, 0x5F5C93D2L), 0x323B8406L, 0x5F5C93D2L, 0x323B8406L, 0x5F5C93D2L);
    VECTOR(int16_t, 4) l_372 = (VECTOR(int16_t, 4))(0x54E3L, (VECTOR(int16_t, 2))(0x54E3L, 0x4660L), 0x4660L);
    VECTOR(uint16_t, 8) l_375 = (VECTOR(uint16_t, 8))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 65528UL), 65528UL), 65528UL, 65535UL, 65528UL);
    VECTOR(uint16_t, 8) l_376 = (VECTOR(uint16_t, 8))(0xD230L, (VECTOR(uint16_t, 4))(0xD230L, (VECTOR(uint16_t, 2))(0xD230L, 0x1CA8L), 0x1CA8L), 0x1CA8L, 0xD230L, 0x1CA8L);
    VECTOR(uint16_t, 8) l_377 = (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0xB7AAL), 0xB7AAL), 0xB7AAL, 0UL, 0xB7AAL);
    uint32_t *l_378 = (void*)0;
    uint32_t *l_379 = &p_933->g_275;
    int8_t *l_386 = (void*)0;
    int8_t *l_387 = &p_933->g_159;
    int8_t l_388[4] = {0x3BL,0x3BL,0x3BL,0x3BL};
    uint64_t l_389 = 18446744073709551610UL;
    uint16_t *l_390 = &p_933->g_263;
    uint16_t l_391 = 65535UL;
    VECTOR(int8_t, 16) l_434 = (VECTOR(int8_t, 16))(0x6FL, (VECTOR(int8_t, 4))(0x6FL, (VECTOR(int8_t, 2))(0x6FL, 0x01L), 0x01L), 0x01L, 0x6FL, 0x01L, (VECTOR(int8_t, 2))(0x6FL, 0x01L), (VECTOR(int8_t, 2))(0x6FL, 0x01L), 0x6FL, 0x01L, 0x6FL, 0x01L);
    int32_t *l_443 = (void*)0;
    int8_t l_444[4][7] = {{0x3BL,0x3BL,0x3BL,0x3BL,0x3BL,0x3BL,0x3BL},{0x3BL,0x3BL,0x3BL,0x3BL,0x3BL,0x3BL,0x3BL},{0x3BL,0x3BL,0x3BL,0x3BL,0x3BL,0x3BL,0x3BL},{0x3BL,0x3BL,0x3BL,0x3BL,0x3BL,0x3BL,0x3BL}};
    int32_t *l_447 = (void*)0;
    int32_t *l_448 = (void*)0;
    int32_t *l_449 = (void*)0;
    int32_t *l_450[7][3];
    int16_t l_451 = 6L;
    VECTOR(int8_t, 4) l_452 = (VECTOR(int8_t, 4))(0x6FL, (VECTOR(int8_t, 2))(0x6FL, 0x17L), 0x17L);
    uint16_t l_453 = 65528UL;
    int i, j;
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 3; j++)
            l_450[i][j] = (void*)0;
    }
    (*p_933->g_117) = func_90(p_933->g_313.s3, ((safe_add_func_uint8_t_u_u((((((((((VECTOR(int64_t, 16))(rotate(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(0x52CFFF82B4B9AB1EL, 0x26BC5BDBB45C8354L)).yxxxyyxyyyxyxyxy)), ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(p_933->g_368.zzxy)).wxyxwyzz)).s2646663163427635))).s9 || (((*l_390) = (((((((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(l_369.xyxyxxxx)).hi, ((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(0x3CCB82A1L, 0x5F37BF06L)).xxxxyyyxyxxxxxxx, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(clz(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))((-1L), ((VECTOR(int32_t, 2))(p_933->g_370.se5)), 0x3F8F3B27L)).even)).yyxyyxyy)).s61)).xxxyyxxx)).s73)).xxxyxxxyxxxyxyxy))).s9138)).xzzywwzzzwwwwywz, ((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(0x1BAAB29BL, 1L, 0x0667E48FL, (-1L))).ywwwzxxz)).s70, ((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 2))(l_371.sfd)), ((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(l_372.zywwyxzx)).even)).hi, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(clz(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(add_sat(((VECTOR(uint16_t, 16))(safe_clamp_func(VECTOR(uint16_t, 16),uint16_t,((VECTOR(uint16_t, 16))(sub_sat(((VECTOR(uint16_t, 16))(p_933->g_373.wyxzwwyzzyzwwyyy)), ((VECTOR(uint16_t, 8))(0xE3BEL, 7UL, ((VECTOR(uint16_t, 2))(mad_sat(((VECTOR(uint16_t, 2))(1UL, 0UL)), ((VECTOR(uint16_t, 4))(mad_hi(((VECTOR(uint16_t, 4))(mad_hi(((VECTOR(uint16_t, 4))(min(((VECTOR(uint16_t, 8))(abs_diff(((VECTOR(uint16_t, 2))(p_933->g_374.yx)).xyxyxxxx, ((VECTOR(uint16_t, 16))(l_375.s1750670420616643)).odd))).odd, (uint16_t)GROUP_DIVERGE(0, 1)))), ((VECTOR(uint16_t, 8))(l_376.s14343531)).even, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(safe_clamp_func(VECTOR(uint16_t, 16),uint16_t,((VECTOR(uint16_t, 16))(safe_clamp_func(VECTOR(uint16_t, 16),uint16_t,((VECTOR(uint16_t, 4))(l_377.s4522)).wzyzzyyxywyxzywy, (uint16_t)(((!((*l_379) = l_371.s1)) && (p_933->g_315.s6 & (((p_50 > p_933->g_315.s1) ^ ((VECTOR(uint32_t, 8))(p_933->g_380.s62301065)).s2) , p_933->g_240))) , (safe_rshift_func_uint16_t_u_s((l_377.s7 , p_54), ((VECTOR(int16_t, 4))(max(((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 8))(hadd(((VECTOR(int16_t, 4))(p_933->g_383.xxxy)).wwyzzzzw, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0x7C44L, 0x1EF5L)).yyxy)).odd)), 0x45B8L, 0x6D17L, 0L, ((safe_mul_func_int8_t_s_s(((*l_387) = ((l_376.s1 , (void*)0) != (void*)0)), 0x4BL)) || p_933->g_224.s0), 7L, (-3L)))))), ((VECTOR(int16_t, 8))(0L))))).odd, (int16_t)p_933->g_84))).z))), (uint16_t)GROUP_DIVERGE(1, 1)))), (uint16_t)l_388[2], (uint16_t)9UL))).lo)).lo))), ((VECTOR(uint16_t, 4))(65534UL)), ((VECTOR(uint16_t, 4))(0x141BL))))).lo, ((VECTOR(uint16_t, 2))(0xBE91L))))), ((VECTOR(uint16_t, 2))(0x1863L)), 0x0EC7L, 0x0BD9L)).s0101211366543504))), (uint16_t)0UL, (uint16_t)0x8002L))).scdc3, ((VECTOR(uint16_t, 4))(0xA45BL))))).wxwwywyxyzxyywzx)).sb2))).lo, ((VECTOR(uint16_t, 4))(0x631BL)), ((VECTOR(uint16_t, 2))(65527UL)), 1UL)).s34))))))))).yxxyyxxyxyyxxxyx))).s58dd, ((VECTOR(int32_t, 4))(4L))))).y != p_50) > 0x49B3L) > l_389) ^ p_933->g_107[2]) & 0L)) > p_933->g_107[2])) >= p_933->g_185) || (*p_933->g_47)) <= 0x0F853E96L) && l_375.s4) , l_376.s3) , 0UL), p_933->g_2)) > (-1L)), p_50, l_391, p_933);
    for (p_933->g_319 = (-23); (p_933->g_319 <= (-19)); p_933->g_319++)
    { /* block id: 135 */
        int64_t l_414 = 5L;
        int32_t l_432 = 6L;
        VECTOR(uint16_t, 16) l_435 = (VECTOR(uint16_t, 16))(0x7E14L, (VECTOR(uint16_t, 4))(0x7E14L, (VECTOR(uint16_t, 2))(0x7E14L, 65535UL), 65535UL), 65535UL, 0x7E14L, 65535UL, (VECTOR(uint16_t, 2))(0x7E14L, 65535UL), (VECTOR(uint16_t, 2))(0x7E14L, 65535UL), 0x7E14L, 65535UL, 0x7E14L, 65535UL);
        int i;
        for (p_933->g_275 = 27; (p_933->g_275 == 48); p_933->g_275 = safe_add_func_int64_t_s_s(p_933->g_275, 8))
        { /* block id: 138 */
            int32_t l_415 = 0x6D7A2C67L;
            uint32_t *l_419 = &p_933->g_275;
            for (p_933->g_252 = 0; (p_933->g_252 < 59); p_933->g_252 = safe_add_func_int16_t_s_s(p_933->g_252, 9))
            { /* block id: 141 */
                uint8_t l_400 = 0xBEL;
                uint32_t *l_411 = &p_933->g_275;
                uint32_t **l_416 = &l_411;
                (*p_933->g_115) = ((safe_div_func_uint16_t_u_u(l_400, l_369.y)) != (((!(safe_div_func_uint8_t_u_u(p_933->g_81, (safe_add_func_uint32_t_u_u(((p_933->g_417 = ((*l_416) = func_90(((-4L) == ((safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 4))(abs_diff(((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 4))(0x67L, (((safe_sub_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u(((void*)0 != l_411), 0x0713L)), ((*l_387) ^= (safe_rshift_func_uint8_t_u_s(((l_414 <= ((1UL < l_415) & 0x0E3AL)) || l_400), l_400))))) != FAKE_DIVERGE(p_933->global_1_offset, get_global_id(1), 10)) <= l_400), 4L, 0x27L)).lo, ((VECTOR(int8_t, 2))(0x66L))))).yyxx, ((VECTOR(int8_t, 4))((-2L)))))).x, p_933->g_374.x)) ^ FAKE_DIVERGE(p_933->global_1_offset, get_global_id(1), 10))), p_933->g_326.s1, p_933->g_7, p_933->g_81, p_933))) != l_419), 0L))))) ^ l_400) || 0xF6E1L));
            }
        }
        p_50 = l_414;
        for (p_933->g_263 = 22; (p_933->g_263 < 36); ++p_933->g_263)
        { /* block id: 151 */
            int32_t **l_439 = &p_933->g_118;
            int32_t **l_440 = (void*)0;
            int32_t **l_441 = (void*)0;
            int32_t **l_442[8][7][4] = {{{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291}},{{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291}},{{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291}},{{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291}},{{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291}},{{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291}},{{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291}},{{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291},{&p_933->g_291,&p_933->g_291,(void*)0,&p_933->g_291}}};
            int i, j, k;
            p_50 = (((l_389 || (((safe_mul_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_u((((l_414 , (((l_443 = func_90((safe_sub_func_int16_t_s_s((p_53 , (((VECTOR(int8_t, 8))((safe_add_func_uint64_t_u_u((safe_sub_func_uint64_t_u_u(0xC5D950EF71F2B993L, 0xD09161894623929FL)), ((l_432 ^= ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(0x7AL, 0x95L)))).odd) == (FAKE_DIVERGE(p_933->group_1_offset, get_group_id(1), 10) , (-1L))))), ((VECTOR(int8_t, 2))(p_933->g_433.xx)), 1L, ((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 8))(0x53L, ((VECTOR(int8_t, 4))(l_434.s63e3)), ((VECTOR(int8_t, 2))(0x02L, 6L)), (-1L))).odd, (int8_t)(1UL ^ ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(l_435.s08170c54)), ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(7UL, (((safe_div_func_int16_t_s_s((((((VECTOR(int16_t, 4))(p_933->g_438.yxyx)).w < (p_50 || 0x4854F9FEL)) > 65534UL) ^ 4UL), p_933->g_258.sd)) != l_375.s6) > p_933->g_275), p_933->g_48[0][2][5], 65533UL, ((VECTOR(uint16_t, 4))(0UL)))))))).sa)))))).s6 | p_51)), p_933->g_373.y)), p_933->g_368.z, l_414, p_933->g_107[2], p_933)) == &p_933->g_2) == l_435.sf)) , &p_54) == l_378), l_444[1][1])), 0x50L)) >= 251UL) != p_933->g_373.z)) || p_51) != 0x6E76D6071C26F647L);
            (*p_933->g_124) = &p_54;
            for (p_50 = 18; (p_50 == (-29)); p_50 = safe_sub_func_int16_t_s_s(p_50, 7))
            { /* block id: 158 */
                if (p_54)
                    break;
                return p_51;
            }
            if (p_54)
                break;
        }
    }
    l_443 = l_443;
    ++l_453;
    return p_51;
}


/* ------------------------------------------ */
/* 
 * reads : p_933->g_62 p_933->g_96 p_933->g_48 p_933->g_2 p_933->g_47 p_933->g_115 p_933->g_117 p_933->g_118 p_933->g_124 p_933->g_116 p_933->g_107 p_933->g_162 p_933->g_159 p_933->g_279 p_933->g_172 p_933->g_258 p_933->g_294 p_933->g_252 p_933->g_306 p_933->g_313 p_933->g_315 p_933->g_263 p_933->g_326 p_933->g_84 p_933->g_185 p_933->g_239 p_933->g_240 p_933->g_224 p_933->g_203
 * writes: p_933->g_81 p_933->g_84 p_933->g_107 p_933->g_116 p_933->g_118 p_933->g_148 p_933->g_159 p_933->g_291 p_933->g_252 p_933->g_275 p_933->g_263 p_933->g_185 p_933->g_326
 */
int32_t  func_63(int64_t  p_64, int32_t  p_65, int32_t * p_66, struct S0 * p_933)
{ /* block id: 19 */
    int32_t *l_80 = &p_933->g_81;
    uint64_t *l_82 = (void*)0;
    uint64_t *l_83 = &p_933->g_84;
    int32_t l_87 = 0x3A845DB3L;
    int32_t *l_278 = &l_87;
    int32_t **l_288 = (void*)0;
    int32_t *l_290 = (void*)0;
    int32_t **l_289 = &l_290;
    uint32_t l_298 = 0x2085F373L;
    VECTOR(int64_t, 16) l_314 = (VECTOR(int64_t, 16))((-3L), (VECTOR(int64_t, 4))((-3L), (VECTOR(int64_t, 2))((-3L), 0x6C7A0417FE3D7725L), 0x6C7A0417FE3D7725L), 0x6C7A0417FE3D7725L, (-3L), 0x6C7A0417FE3D7725L, (VECTOR(int64_t, 2))((-3L), 0x6C7A0417FE3D7725L), (VECTOR(int64_t, 2))((-3L), 0x6C7A0417FE3D7725L), (-3L), 0x6C7A0417FE3D7725L, (-3L), 0x6C7A0417FE3D7725L);
    int32_t l_336 = 0x71A874F3L;
    int32_t l_337[7] = {(-8L),5L,(-8L),(-8L),5L,(-8L),(-8L)};
    VECTOR(int8_t, 4) l_355 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x1DL), 0x1DL);
    VECTOR(int32_t, 16) l_358 = (VECTOR(int32_t, 16))(0x50104A5CL, (VECTOR(int32_t, 4))(0x50104A5CL, (VECTOR(int32_t, 2))(0x50104A5CL, (-7L)), (-7L)), (-7L), 0x50104A5CL, (-7L), (VECTOR(int32_t, 2))(0x50104A5CL, (-7L)), (VECTOR(int32_t, 2))(0x50104A5CL, (-7L)), 0x50104A5CL, (-7L), 0x50104A5CL, (-7L));
    uint16_t l_364 = 0x00B9L;
    int i;
    if ((safe_mul_func_int16_t_s_s(func_70((safe_div_func_uint16_t_u_u(func_76(((*l_80) = p_64), ((*l_83) = p_933->g_62.y), ((*l_278) = func_85(l_87, p_933)), p_933), p_933->g_258.sb)), (p_933->g_291 = ((*l_289) = l_278)), &p_933->g_2, p_933), 0xDCDEL)))
    { /* block id: 101 */
        VECTOR(int32_t, 2) l_293 = (VECTOR(int32_t, 2))(0x055CF20DL, 0L);
        int16_t l_308 = 0x42EAL;
        int32_t *l_318 = &p_933->g_319;
        int32_t l_332 = 0x05C4094FL;
        uint32_t l_334 = 1UL;
        int i;
        if (((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 4))(l_293.xxxx)).zzyxxyxy, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(p_933->g_294.zx)), (-9L), 5L)).zwxwyzxw))).s3)
        { /* block id: 102 */
            int16_t l_295 = 1L;
            int32_t *l_296 = (void*)0;
            int32_t *l_297[5][9] = {{(void*)0,(void*)0,&p_933->g_2,(void*)0,&p_933->g_2,(void*)0,&p_933->g_2,(void*)0,(void*)0},{(void*)0,(void*)0,&p_933->g_2,(void*)0,&p_933->g_2,(void*)0,&p_933->g_2,(void*)0,(void*)0},{(void*)0,(void*)0,&p_933->g_2,(void*)0,&p_933->g_2,(void*)0,&p_933->g_2,(void*)0,(void*)0},{(void*)0,(void*)0,&p_933->g_2,(void*)0,&p_933->g_2,(void*)0,&p_933->g_2,(void*)0,(void*)0},{(void*)0,(void*)0,&p_933->g_2,(void*)0,&p_933->g_2,(void*)0,&p_933->g_2,(void*)0,(void*)0}};
            uint16_t *l_305 = &p_933->g_252;
            int32_t *l_307 = &p_933->g_148[4];
            uint32_t *l_309[4];
            uint32_t l_312 = 0UL;
            uint16_t *l_320 = &p_933->g_263;
            int32_t **l_321 = &l_297[3][2];
            int i, j;
            for (i = 0; i < 4; i++)
                l_309[i] = (void*)0;
            l_298++;
            (*l_321) = ((*l_289) = func_90(((*l_307) = (((*l_305) |= (safe_rshift_func_int8_t_s_s(p_65, 6))) | (p_933->g_306 != (void*)0))), l_308, (((p_933->g_275 = 4294967295UL) <= (1UL | ((*l_320) ^= (safe_sub_func_int64_t_s_s((((((l_312 , (l_293.y != ((VECTOR(int64_t, 16))(max(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(mad_sat(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(p_933->g_313.s96)), 0x0DF7236270AD16F2L, 0x1C05F721C33C2831L)).wwzwyzyz, ((VECTOR(int64_t, 4))(l_314.s2120)).ywyyzwzw, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(p_933->g_315.s0c)).xyyy)).zzzwyzwz))).s3760173463627734)))), (int64_t)(safe_rshift_func_int16_t_s_u(p_64, (*l_290)))))).se)) ^ 0xEF7DL) , l_318) == &p_933->g_319) >= p_64), p_64))))) > FAKE_DIVERGE(p_933->local_0_offset, get_local_id(0), 10)), (*l_278), p_933));
        }
        else
        { /* block id: 110 */
            int32_t **l_329[5][6] = {{&l_318,&l_318,&l_318,&l_318,&l_318,&l_318},{&l_318,&l_318,&l_318,&l_318,&l_318,&l_318},{&l_318,&l_318,&l_318,&l_318,&l_318,&l_318},{&l_318,&l_318,&l_318,&l_318,&l_318,&l_318},{&l_318,&l_318,&l_318,&l_318,&l_318,&l_318}};
            int8_t *l_330 = &p_933->g_185;
            int8_t *l_331[1];
            int32_t l_333 = 1L;
            int32_t *l_335[6] = {&p_933->g_7,&l_332,&p_933->g_7,&p_933->g_7,&l_332,&p_933->g_7};
            uint32_t l_338 = 0x3DA22FC5L;
            int i, j;
            for (i = 0; i < 1; i++)
                l_331[i] = &p_933->g_159;
            (**l_289) &= ((safe_mod_func_uint32_t_u_u(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(0x6407A861L, 7UL)).xyyxxyyy)).s2057603015210106)).sf, (0x16601BD3L ^ ((VECTOR(uint32_t, 8))((((safe_div_func_int8_t_s_s(((VECTOR(int8_t, 2))(p_933->g_326.s65)).hi, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(0xDBL, 0xD2L)).yxyxxxyxxxyyxxxx)).s4)) , ((((p_933->g_159 &= (p_933->g_84 != ((-8L) >= (p_65 != (safe_lshift_func_int8_t_s_s((l_332 = (p_933->g_326.s2 = (l_293.y ^= ((*l_330) |= ((l_318 = (void*)0) == (p_65 , &p_933->g_148[0])))))), p_64)))))) <= (((void*)0 != (*p_933->g_162)) || l_308)) == l_333) == p_933->g_239)) < l_334), 0xE9864FAAL, 0x3A2BE198L, ((VECTOR(uint32_t, 4))(0x78D94503L)), 0xC950097CL)).s7))) > p_65);
            ++l_338;
        }
    }
    else
    { /* block id: 120 */
        int8_t *l_343 = &p_933->g_159;
        int32_t l_354 = 0x432EED17L;
        int64_t l_361 = 0x60BEA343ECA00C95L;
        int32_t *l_362 = &p_933->g_116;
        (*l_362) &= (safe_add_func_int32_t_s_s((l_343 == (void*)0), ((safe_div_func_int16_t_s_s(((safe_add_func_uint8_t_u_u(((safe_rshift_func_uint16_t_u_s((safe_mod_func_int32_t_s_s((((((**l_289) , ((void*)0 == &p_933->g_185)) > ((*p_66) != ((safe_mod_func_int64_t_s_s(((l_354 || (((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(l_355.xwywzxxwyxzwwwyw)).hi)).s2222210363415772, ((VECTOR(int8_t, 16))(((safe_mod_func_int32_t_s_s(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 2))(l_358.s5c)).yxxy, ((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 4))((-1L), 1L, (-1L), 0x51AF904CL)), (int32_t)((safe_mul_func_int8_t_s_s((p_65 , 3L), 0x48L)) ^ (*l_278)))))))).zyxzwzxz, ((VECTOR(int32_t, 8))(0x69139DE4L))))).s03)).yxxyxxxx)).s1, 4294967290UL)) , p_933->g_240), 0x5FL, 1L, l_354, 1L, p_933->g_239, l_354, 0x0AL, ((VECTOR(int8_t, 2))(6L)), 0x0EL, p_933->g_258.s2, 0x6BL, l_361, 0x7DL, 3L))))).hi)))).s3372173012432701)).sc >= p_933->g_62.x)) > l_354), l_354)) , l_361))) , (*p_933->g_162)) == &p_933->g_7), p_64)), p_933->g_224.s1)) , p_933->g_203.s5), l_354)) | 0L), p_933->g_294.w)) & (-7L))));
        if (p_933->g_116)
            goto lbl_363;
lbl_363:
        (*l_289) = (void*)0;
        (*l_278) = (p_933->g_172.s4 >= p_64);
        (*l_289) = &p_65;
    }
    return l_364;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int16_t  func_70(int32_t  p_71, int32_t * p_72, int32_t * p_73, struct S0 * p_933)
{ /* block id: 99 */
    int64_t l_292 = 0x17CBE859488B623EL;
    return l_292;
}


/* ------------------------------------------ */
/* 
 * reads : p_933->g_279 p_933->g_172
 * writes: p_933->g_116
 */
uint16_t  func_76(int32_t  p_77, uint64_t  p_78, int32_t  p_79, struct S0 * p_933)
{ /* block id: 91 */
    int32_t *l_280[8] = {&p_933->g_116,&p_933->g_116,&p_933->g_116,&p_933->g_116,&p_933->g_116,&p_933->g_116,&p_933->g_116,&p_933->g_116};
    VECTOR(uint16_t, 2) l_281 = (VECTOR(uint16_t, 2))(65535UL, 0x2661L);
    int8_t l_282[6];
    int8_t l_283 = 0x4BL;
    uint32_t l_284 = 4294967295UL;
    int i;
    for (i = 0; i < 6; i++)
        l_282[i] = 0x63L;
lbl_287:
    (*p_933->g_279) = (p_79 >= ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(0x59L, (-1L))).xxyy)).w);
    l_281.y = p_77;
    l_284--;
    if (p_79)
        goto lbl_287;
    return p_933->g_172.s5;
}


/* ------------------------------------------ */
/* 
 * reads : p_933->g_96 p_933->g_62 p_933->g_48 p_933->g_2 p_933->g_47 p_933->g_115 p_933->g_117 p_933->g_118 p_933->g_124 p_933->g_116 p_933->g_107 p_933->g_162 p_933->g_159
 * writes: p_933->g_107 p_933->g_116 p_933->g_118 p_933->g_148 p_933->g_159
 */
int32_t  func_85(int16_t  p_86, struct S0 * p_933)
{ /* block id: 22 */
    uint64_t *l_95 = &p_933->g_96;
    int32_t l_125 = 0x2B448763L;
    int32_t l_141 = 0x488B34D0L;
    int32_t l_142 = 0x4C5022BCL;
    uint32_t l_161 = 0UL;
    VECTOR(int64_t, 2) l_222 = (VECTOR(int64_t, 2))(1L, 0x52E723CEFFE510EAL);
    VECTOR(uint8_t, 4) l_237 = (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 248UL), 248UL);
    VECTOR(uint16_t, 8) l_259 = (VECTOR(uint16_t, 8))(0xCCBAL, (VECTOR(uint16_t, 4))(0xCCBAL, (VECTOR(uint16_t, 2))(0xCCBAL, 0xF329L), 0xF329L), 0xF329L, 0xCCBAL, 0xF329L);
    int64_t l_273 = 1L;
    int i;
    for (p_86 = (-13); (p_86 != 2); p_86++)
    { /* block id: 25 */
        uint64_t l_103[10][2][7] = {{{1UL,18446744073709551608UL,18446744073709551606UL,18446744073709551614UL,18446744073709551607UL,18446744073709551607UL,18446744073709551614UL},{1UL,18446744073709551608UL,18446744073709551606UL,18446744073709551614UL,18446744073709551607UL,18446744073709551607UL,18446744073709551614UL}},{{1UL,18446744073709551608UL,18446744073709551606UL,18446744073709551614UL,18446744073709551607UL,18446744073709551607UL,18446744073709551614UL},{1UL,18446744073709551608UL,18446744073709551606UL,18446744073709551614UL,18446744073709551607UL,18446744073709551607UL,18446744073709551614UL}},{{1UL,18446744073709551608UL,18446744073709551606UL,18446744073709551614UL,18446744073709551607UL,18446744073709551607UL,18446744073709551614UL},{1UL,18446744073709551608UL,18446744073709551606UL,18446744073709551614UL,18446744073709551607UL,18446744073709551607UL,18446744073709551614UL}},{{1UL,18446744073709551608UL,18446744073709551606UL,18446744073709551614UL,18446744073709551607UL,18446744073709551607UL,18446744073709551614UL},{1UL,18446744073709551608UL,18446744073709551606UL,18446744073709551614UL,18446744073709551607UL,18446744073709551607UL,18446744073709551614UL}},{{1UL,18446744073709551608UL,18446744073709551606UL,18446744073709551614UL,18446744073709551607UL,18446744073709551607UL,18446744073709551614UL},{1UL,18446744073709551608UL,18446744073709551606UL,18446744073709551614UL,18446744073709551607UL,18446744073709551607UL,18446744073709551614UL}},{{1UL,18446744073709551608UL,18446744073709551606UL,18446744073709551614UL,18446744073709551607UL,18446744073709551607UL,18446744073709551614UL},{1UL,18446744073709551608UL,18446744073709551606UL,18446744073709551614UL,18446744073709551607UL,18446744073709551607UL,18446744073709551614UL}},{{1UL,18446744073709551608UL,18446744073709551606UL,18446744073709551614UL,18446744073709551607UL,18446744073709551607UL,18446744073709551614UL},{1UL,18446744073709551608UL,18446744073709551606UL,18446744073709551614UL,18446744073709551607UL,18446744073709551607UL,18446744073709551614UL}},{{1UL,18446744073709551608UL,18446744073709551606UL,18446744073709551614UL,18446744073709551607UL,18446744073709551607UL,18446744073709551614UL},{1UL,18446744073709551608UL,18446744073709551606UL,18446744073709551614UL,18446744073709551607UL,18446744073709551607UL,18446744073709551614UL}},{{1UL,18446744073709551608UL,18446744073709551606UL,18446744073709551614UL,18446744073709551607UL,18446744073709551607UL,18446744073709551614UL},{1UL,18446744073709551608UL,18446744073709551606UL,18446744073709551614UL,18446744073709551607UL,18446744073709551607UL,18446744073709551614UL}},{{1UL,18446744073709551608UL,18446744073709551606UL,18446744073709551614UL,18446744073709551607UL,18446744073709551607UL,18446744073709551614UL},{1UL,18446744073709551608UL,18446744073709551606UL,18446744073709551614UL,18446744073709551607UL,18446744073709551607UL,18446744073709551614UL}}};
        VECTOR(uint16_t, 2) l_128 = (VECTOR(uint16_t, 2))(65533UL, 6UL);
        uint32_t l_129 = 4294967286UL;
        int32_t **l_134 = (void*)0;
        int32_t *l_135 = &p_933->g_116;
        int32_t l_137 = 0x48896062L;
        int32_t l_139 = 0x68599F0AL;
        int32_t l_140 = 0x6784E7BDL;
        uint32_t l_143 = 0x926641FEL;
        int i, j, k;
        (*p_933->g_124) = func_90(p_86, (l_95 == ((p_933->g_96 , 0x2780BBC0L) , &p_933->g_96)), p_86, (l_103[1][0][4] = (safe_sub_func_int8_t_s_s((p_933->g_62.x || (safe_lshift_func_int8_t_s_u(p_933->g_48[2][0][0], 6))), (safe_mul_func_int8_t_s_s(p_933->g_2, 0x93L))))), p_933);
        if (((*l_135) &= ((0x25127A50812B24ABL ^ l_125) , ((safe_add_func_uint8_t_u_u(((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(l_128.xyyx)).wzxwwwzzwzwyzzyw)).s3 != ((l_125 != ((0UL < ((void*)0 != &p_933->g_107[4])) > (l_129 , ((((((safe_mod_func_uint8_t_u_u(p_86, (safe_lshift_func_int8_t_s_s(((&p_933->g_48[2][0][0] == (void*)0) ^ l_128.x), 3)))) , p_86) >= p_86) & 8L) , (void*)0) != l_134)))) , FAKE_DIVERGE(p_933->group_0_offset, get_group_id(0), 10))) ^ 0x4973AC02L), p_86)) <= (*p_933->g_47)))))
        { /* block id: 36 */
            int32_t *l_136 = &l_125;
            int32_t *l_138[4][5] = {{&p_933->g_7,&p_933->g_7,&p_933->g_2,&l_137,&l_137},{&p_933->g_7,&p_933->g_7,&p_933->g_2,&l_137,&l_137},{&p_933->g_7,&p_933->g_7,&p_933->g_2,&l_137,&l_137},{&p_933->g_7,&p_933->g_7,&p_933->g_2,&l_137,&l_137}};
            int32_t **l_146 = (void*)0;
            int i, j;
            if (p_86)
                break;
            --l_143;
            l_135 = (*p_933->g_117);
        }
        else
        { /* block id: 40 */
            int32_t *l_147 = &p_933->g_148[4];
            uint64_t *l_157 = &l_103[1][0][4];
            int8_t *l_158[4] = {&p_933->g_159,&p_933->g_159,&p_933->g_159,&p_933->g_159};
            int32_t l_160 = 0x1E283F7BL;
            int i;
            (*p_933->g_162) = func_90(((*l_147) = p_933->g_2), ((p_86 > 0x4FA4222FL) >= (((255UL & ((safe_add_func_int16_t_s_s(((((p_933->g_159 = ((safe_sub_func_int16_t_s_s((safe_add_func_int8_t_s_s((-9L), (l_157 != &p_933->g_96))), p_86)) != 0x7905A64256595279L)) , 7UL) != p_933->g_107[2]) & l_142), l_160)) != l_160)) == p_86) , GROUP_DIVERGE(2, 1))), p_933->g_2, l_161, p_933);
        }
        for (p_933->g_159 = 0; (p_933->g_159 <= (-23)); p_933->g_159 = safe_sub_func_int16_t_s_s(p_933->g_159, 8))
        { /* block id: 47 */
            uint32_t l_165[2];
            int i;
            for (i = 0; i < 2; i++)
                l_165[i] = 0x3CCABF06L;
            return l_165[1];
        }
    }
    for (p_933->g_159 = (-12); (p_933->g_159 <= (-5)); p_933->g_159 = safe_add_func_int32_t_s_s(p_933->g_159, 1))
    { /* block id: 53 */
        uint64_t *l_174 = &p_933->g_96;
        uint64_t **l_175 = (void*)0;
        uint64_t **l_176 = &l_95;
        int32_t l_183 = 0x05BC8A62L;
        int8_t *l_184 = &p_933->g_185;
        int32_t **l_196 = &p_933->g_118;
        int32_t *l_200 = &l_125;
        int32_t **l_199 = &l_200;
        VECTOR(int32_t, 16) l_204 = (VECTOR(int32_t, 16))(0x56361B46L, (VECTOR(int32_t, 4))(0x56361B46L, (VECTOR(int32_t, 2))(0x56361B46L, 0x1D60FE60L), 0x1D60FE60L), 0x1D60FE60L, 0x56361B46L, 0x1D60FE60L, (VECTOR(int32_t, 2))(0x56361B46L, 0x1D60FE60L), (VECTOR(int32_t, 2))(0x56361B46L, 0x1D60FE60L), 0x56361B46L, 0x1D60FE60L, 0x56361B46L, 0x1D60FE60L);
        VECTOR(int32_t, 4) l_208 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0L), 0L);
        uint32_t *l_215 = &l_161;
        VECTOR(int64_t, 2) l_223 = (VECTOR(int64_t, 2))((-1L), 0x188778384813EE79L);
        VECTOR(int64_t, 2) l_225 = (VECTOR(int64_t, 2))(0x077F9590D3685983L, 0x1190EECBCC985E15L);
        VECTOR(int8_t, 8) l_253 = (VECTOR(int8_t, 8))(9L, (VECTOR(int8_t, 4))(9L, (VECTOR(int8_t, 2))(9L, 0x61L), 0x61L), 0x61L, 9L, 0x61L);
        VECTOR(uint16_t, 16) l_260 = (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 65526UL), 65526UL), 65526UL, 65535UL, 65526UL, (VECTOR(uint16_t, 2))(65535UL, 65526UL), (VECTOR(uint16_t, 2))(65535UL, 65526UL), 65535UL, 65526UL, 65535UL, 65526UL);
        int i;
        (1 + 1);
    }
    return p_86;
}


/* ------------------------------------------ */
/* 
 * reads : p_933->g_2 p_933->g_47 p_933->g_48 p_933->g_115 p_933->g_117 p_933->g_96 p_933->g_118
 * writes: p_933->g_107 p_933->g_116 p_933->g_118
 */
int32_t * func_90(int32_t  p_91, uint64_t  p_92, int32_t  p_93, uint16_t  p_94, struct S0 * p_933)
{ /* block id: 27 */
    int64_t *l_106 = &p_933->g_107[2];
    int32_t l_114 = 0x421085DAL;
    int32_t *l_123[2];
    int i;
    for (i = 0; i < 2; i++)
        l_123[i] = (void*)0;
    (*p_933->g_115) = (safe_div_func_int64_t_s_s((+(p_933->g_2 ^ (((*p_933->g_47) < ((p_94 >= ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(max(((VECTOR(uint8_t, 2))(0UL, 0x6CL)).xyxx, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(255UL, p_94, 255UL, 254UL)), 1UL, ((VECTOR(uint8_t, 2))(255UL, 0UL)), 0x79L)))).odd))))).w) <= 3UL)) , ((*l_106) = 0x52EC94644A747094L)))), (safe_sub_func_int32_t_s_s(0x5EA61E07L, ((safe_div_func_uint16_t_u_u((safe_div_func_uint32_t_u_u((p_933->g_47 != l_106), 0x0B1440D3L)), l_114)) , 1L)))));
    (*p_933->g_117) = &l_114;
    (*p_933->g_118) = (safe_div_func_int16_t_s_s(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(0x2BE7L, ((VECTOR(int16_t, 2))(0x1209L, 0x7974L)), 0x4284L)).odd)).yyyxxyyy)).even)).w, (safe_mod_func_int64_t_s_s(l_114, p_933->g_96))));
    (*p_933->g_115) = (p_92 ^ 1L);
    return l_123[0];
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_934;
    struct S0* p_933 = &c_934;
    struct S0 c_935 = {
        7L, // p_933->g_2
        6L, // p_933->g_7
        0x29843657218670FCL, // p_933->g_45
        {{{0L,(-1L),0x7DC46221EB1ED309L,0x7DC46221EB1ED309L,(-1L),0L,0x61E9426CEFC6E20BL,1L},{0L,(-1L),0x7DC46221EB1ED309L,0x7DC46221EB1ED309L,(-1L),0L,0x61E9426CEFC6E20BL,1L},{0L,(-1L),0x7DC46221EB1ED309L,0x7DC46221EB1ED309L,(-1L),0L,0x61E9426CEFC6E20BL,1L},{0L,(-1L),0x7DC46221EB1ED309L,0x7DC46221EB1ED309L,(-1L),0L,0x61E9426CEFC6E20BL,1L}},{{0L,(-1L),0x7DC46221EB1ED309L,0x7DC46221EB1ED309L,(-1L),0L,0x61E9426CEFC6E20BL,1L},{0L,(-1L),0x7DC46221EB1ED309L,0x7DC46221EB1ED309L,(-1L),0L,0x61E9426CEFC6E20BL,1L},{0L,(-1L),0x7DC46221EB1ED309L,0x7DC46221EB1ED309L,(-1L),0L,0x61E9426CEFC6E20BL,1L},{0L,(-1L),0x7DC46221EB1ED309L,0x7DC46221EB1ED309L,(-1L),0L,0x61E9426CEFC6E20BL,1L}},{{0L,(-1L),0x7DC46221EB1ED309L,0x7DC46221EB1ED309L,(-1L),0L,0x61E9426CEFC6E20BL,1L},{0L,(-1L),0x7DC46221EB1ED309L,0x7DC46221EB1ED309L,(-1L),0L,0x61E9426CEFC6E20BL,1L},{0L,(-1L),0x7DC46221EB1ED309L,0x7DC46221EB1ED309L,(-1L),0L,0x61E9426CEFC6E20BL,1L},{0L,(-1L),0x7DC46221EB1ED309L,0x7DC46221EB1ED309L,(-1L),0L,0x61E9426CEFC6E20BL,1L}}}, // p_933->g_48
        &p_933->g_48[2][0][0], // p_933->g_47
        (VECTOR(int32_t, 2))((-8L), (-8L)), // p_933->g_62
        0x47D0E75FL, // p_933->g_81
        0x04E4CABBE7F6328DL, // p_933->g_84
        0x5DC534F93D1D1CE1L, // p_933->g_96
        {0x7186BE7BEB33E2D4L,0x7186BE7BEB33E2D4L,0x7186BE7BEB33E2D4L,0x7186BE7BEB33E2D4L,0x7186BE7BEB33E2D4L,0x7186BE7BEB33E2D4L,0x7186BE7BEB33E2D4L,0x7186BE7BEB33E2D4L,0x7186BE7BEB33E2D4L,0x7186BE7BEB33E2D4L}, // p_933->g_107
        0x64A0A603L, // p_933->g_116
        &p_933->g_116, // p_933->g_115
        &p_933->g_116, // p_933->g_118
        &p_933->g_118, // p_933->g_117
        &p_933->g_118, // p_933->g_124
        {0x3CA78DFFL,0x3CA78DFFL,0x3CA78DFFL,0x3CA78DFFL,0x3CA78DFFL,0x3CA78DFFL,0x3CA78DFFL}, // p_933->g_148
        (-5L), // p_933->g_159
        &p_933->g_118, // p_933->g_162
        (VECTOR(int8_t, 8))(0x69L, (VECTOR(int8_t, 4))(0x69L, (VECTOR(int8_t, 2))(0x69L, 0x0BL), 0x0BL), 0x0BL, 0x69L, 0x0BL), // p_933->g_172
        (VECTOR(int8_t, 4))(0x5AL, (VECTOR(int8_t, 2))(0x5AL, 0x0FL), 0x0FL), // p_933->g_173
        1L, // p_933->g_185
        (VECTOR(int32_t, 8))(0x0638F02CL, (VECTOR(int32_t, 4))(0x0638F02CL, (VECTOR(int32_t, 2))(0x0638F02CL, (-2L)), (-2L)), (-2L), 0x0638F02CL, (-2L)), // p_933->g_203
        (VECTOR(int64_t, 8))(8L, (VECTOR(int64_t, 4))(8L, (VECTOR(int64_t, 2))(8L, 0x51659E81E94F0C07L), 0x51659E81E94F0C07L), 0x51659E81E94F0C07L, 8L, 0x51659E81E94F0C07L), // p_933->g_224
        0x6C06L, // p_933->g_239
        18446744073709551608UL, // p_933->g_240
        (VECTOR(uint32_t, 4))(0xD32F107AL, (VECTOR(uint32_t, 2))(0xD32F107AL, 0xB7A8BAA4L), 0xB7A8BAA4L), // p_933->g_250
        0xE413L, // p_933->g_252
        (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0xA7BBL), 0xA7BBL), 0xA7BBL, 1UL, 0xA7BBL, (VECTOR(uint16_t, 2))(1UL, 0xA7BBL), (VECTOR(uint16_t, 2))(1UL, 0xA7BBL), 1UL, 0xA7BBL, 1UL, 0xA7BBL), // p_933->g_258
        65535UL, // p_933->g_263
        0UL, // p_933->g_275
        &p_933->g_116, // p_933->g_279
        (void*)0, // p_933->g_291
        (VECTOR(int32_t, 4))(0x25D2842BL, (VECTOR(int32_t, 2))(0x25D2842BL, (-1L)), (-1L)), // p_933->g_294
        (void*)0, // p_933->g_306
        (VECTOR(int64_t, 16))(0x11F90226CD2CA984L, (VECTOR(int64_t, 4))(0x11F90226CD2CA984L, (VECTOR(int64_t, 2))(0x11F90226CD2CA984L, 0x2D5CD2068BC98F5DL), 0x2D5CD2068BC98F5DL), 0x2D5CD2068BC98F5DL, 0x11F90226CD2CA984L, 0x2D5CD2068BC98F5DL, (VECTOR(int64_t, 2))(0x11F90226CD2CA984L, 0x2D5CD2068BC98F5DL), (VECTOR(int64_t, 2))(0x11F90226CD2CA984L, 0x2D5CD2068BC98F5DL), 0x11F90226CD2CA984L, 0x2D5CD2068BC98F5DL, 0x11F90226CD2CA984L, 0x2D5CD2068BC98F5DL), // p_933->g_313
        (VECTOR(int64_t, 16))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x421859282A19E3A6L), 0x421859282A19E3A6L), 0x421859282A19E3A6L, 0L, 0x421859282A19E3A6L, (VECTOR(int64_t, 2))(0L, 0x421859282A19E3A6L), (VECTOR(int64_t, 2))(0L, 0x421859282A19E3A6L), 0L, 0x421859282A19E3A6L, 0L, 0x421859282A19E3A6L), // p_933->g_315
        7L, // p_933->g_319
        (VECTOR(int8_t, 8))(0x18L, (VECTOR(int8_t, 4))(0x18L, (VECTOR(int8_t, 2))(0x18L, 9L), 9L), 9L, 0x18L, 9L), // p_933->g_326
        (void*)0, // p_933->g_365
        (VECTOR(int64_t, 4))(4L, (VECTOR(int64_t, 2))(4L, 0x6C08D5C7EE6CEABCL), 0x6C08D5C7EE6CEABCL), // p_933->g_368
        (VECTOR(int32_t, 16))(0x79CCD81AL, (VECTOR(int32_t, 4))(0x79CCD81AL, (VECTOR(int32_t, 2))(0x79CCD81AL, 1L), 1L), 1L, 0x79CCD81AL, 1L, (VECTOR(int32_t, 2))(0x79CCD81AL, 1L), (VECTOR(int32_t, 2))(0x79CCD81AL, 1L), 0x79CCD81AL, 1L, 0x79CCD81AL, 1L), // p_933->g_370
        (VECTOR(uint16_t, 4))(0xDDA9L, (VECTOR(uint16_t, 2))(0xDDA9L, 65528UL), 65528UL), // p_933->g_373
        (VECTOR(uint16_t, 2))(3UL, 0UL), // p_933->g_374
        (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 9UL), 9UL), 9UL, 1UL, 9UL), // p_933->g_380
        (VECTOR(int16_t, 2))(0x3FA8L, 0x2F71L), // p_933->g_383
        0xFBF01A9FL, // p_933->g_418
        &p_933->g_418, // p_933->g_417
        (VECTOR(int8_t, 2))(0x02L, 0x78L), // p_933->g_433
        (VECTOR(int16_t, 2))(0x222DL, 1L), // p_933->g_438
        &p_933->g_48[2][1][6], // p_933->g_456
        {{&p_933->g_240,&p_933->g_84,&p_933->g_240,&p_933->g_240,&p_933->g_84,&p_933->g_240},{&p_933->g_240,&p_933->g_84,&p_933->g_240,&p_933->g_240,&p_933->g_84,&p_933->g_240},{&p_933->g_240,&p_933->g_84,&p_933->g_240,&p_933->g_240,&p_933->g_84,&p_933->g_240},{&p_933->g_240,&p_933->g_84,&p_933->g_240,&p_933->g_240,&p_933->g_84,&p_933->g_240}}, // p_933->g_461
        &p_933->g_461[2][1], // p_933->g_460
        0x5155L, // p_933->g_472
        0x498D79AFL, // p_933->g_473
        (VECTOR(int8_t, 2))(1L, 0x55L), // p_933->g_480
        (VECTOR(int64_t, 4))(0x4D2AE69BD744C1ECL, (VECTOR(int64_t, 2))(0x4D2AE69BD744C1ECL, 0x480133ADFA221780L), 0x480133ADFA221780L), // p_933->g_500
        (VECTOR(uint8_t, 8))(0x06L, (VECTOR(uint8_t, 4))(0x06L, (VECTOR(uint8_t, 2))(0x06L, 255UL), 255UL), 255UL, 0x06L, 255UL), // p_933->g_508
        (VECTOR(uint8_t, 4))(5UL, (VECTOR(uint8_t, 2))(5UL, 0x11L), 0x11L), // p_933->g_509
        6UL, // p_933->g_514
        (VECTOR(uint16_t, 2))(0xCB01L, 0UL), // p_933->g_522
        (VECTOR(uint16_t, 8))(0x836FL, (VECTOR(uint16_t, 4))(0x836FL, (VECTOR(uint16_t, 2))(0x836FL, 65535UL), 65535UL), 65535UL, 0x836FL, 65535UL), // p_933->g_524
        (VECTOR(uint16_t, 2))(0x6274L, 0x7714L), // p_933->g_526
        (VECTOR(uint16_t, 16))(0x665CL, (VECTOR(uint16_t, 4))(0x665CL, (VECTOR(uint16_t, 2))(0x665CL, 0xA705L), 0xA705L), 0xA705L, 0x665CL, 0xA705L, (VECTOR(uint16_t, 2))(0x665CL, 0xA705L), (VECTOR(uint16_t, 2))(0x665CL, 0xA705L), 0x665CL, 0xA705L, 0x665CL, 0xA705L), // p_933->g_527
        {255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL}, // p_933->g_549
        1L, // p_933->g_566
        &p_933->g_239, // p_933->g_571
        &p_933->g_571, // p_933->g_570
        &p_933->g_570, // p_933->g_569
        (VECTOR(uint16_t, 8))(0xD3C8L, (VECTOR(uint16_t, 4))(0xD3C8L, (VECTOR(uint16_t, 2))(0xD3C8L, 8UL), 8UL), 8UL, 0xD3C8L, 8UL), // p_933->g_582
        (VECTOR(uint8_t, 2))(4UL, 1UL), // p_933->g_586
        (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x9EL), 0x9EL), 0x9EL, 1UL, 0x9EL), // p_933->g_589
        (VECTOR(uint8_t, 16))(0x22L, (VECTOR(uint8_t, 4))(0x22L, (VECTOR(uint8_t, 2))(0x22L, 5UL), 5UL), 5UL, 0x22L, 5UL, (VECTOR(uint8_t, 2))(0x22L, 5UL), (VECTOR(uint8_t, 2))(0x22L, 5UL), 0x22L, 5UL, 0x22L, 5UL), // p_933->g_590
        0x54276A03L, // p_933->g_611
        (VECTOR(int64_t, 8))((-5L), (VECTOR(int64_t, 4))((-5L), (VECTOR(int64_t, 2))((-5L), 0L), 0L), 0L, (-5L), 0L), // p_933->g_655
        (VECTOR(int64_t, 16))(2L, (VECTOR(int64_t, 4))(2L, (VECTOR(int64_t, 2))(2L, (-1L)), (-1L)), (-1L), 2L, (-1L), (VECTOR(int64_t, 2))(2L, (-1L)), (VECTOR(int64_t, 2))(2L, (-1L)), 2L, (-1L), 2L, (-1L)), // p_933->g_657
        (void*)0, // p_933->g_681
        {{{(void*)0,&p_933->g_118,(void*)0,(void*)0,&p_933->g_118,(void*)0,(void*)0,&p_933->g_118},{(void*)0,&p_933->g_118,(void*)0,(void*)0,&p_933->g_118,(void*)0,(void*)0,&p_933->g_118},{(void*)0,&p_933->g_118,(void*)0,(void*)0,&p_933->g_118,(void*)0,(void*)0,&p_933->g_118},{(void*)0,&p_933->g_118,(void*)0,(void*)0,&p_933->g_118,(void*)0,(void*)0,&p_933->g_118},{(void*)0,&p_933->g_118,(void*)0,(void*)0,&p_933->g_118,(void*)0,(void*)0,&p_933->g_118},{(void*)0,&p_933->g_118,(void*)0,(void*)0,&p_933->g_118,(void*)0,(void*)0,&p_933->g_118},{(void*)0,&p_933->g_118,(void*)0,(void*)0,&p_933->g_118,(void*)0,(void*)0,&p_933->g_118}}}, // p_933->g_693
        &p_933->g_118, // p_933->g_694
        0x3449L, // p_933->g_698
        &p_933->g_365, // p_933->g_728
        &p_933->g_728, // p_933->g_727
        (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x793C55DCL), 0x793C55DCL), 0x793C55DCL, 0L, 0x793C55DCL), // p_933->g_733
        &p_933->g_291, // p_933->g_742
        (VECTOR(uint8_t, 8))(0x82L, (VECTOR(uint8_t, 4))(0x82L, (VECTOR(uint8_t, 2))(0x82L, 0UL), 0UL), 0UL, 0x82L, 0UL), // p_933->g_744
        {0x22157813L,0x22157813L,0x22157813L,0x22157813L}, // p_933->g_760
        (void*)0, // p_933->g_778
        (VECTOR(uint16_t, 4))(0x0BC2L, (VECTOR(uint16_t, 2))(0x0BC2L, 2UL), 2UL), // p_933->g_781
        (VECTOR(int16_t, 2))(0x3C8AL, 0x1FAFL), // p_933->g_794
        0L, // p_933->g_797
        (VECTOR(int64_t, 8))(0x06C7ED1684C54C60L, (VECTOR(int64_t, 4))(0x06C7ED1684C54C60L, (VECTOR(int64_t, 2))(0x06C7ED1684C54C60L, 0x2391E7350C4CE3B8L), 0x2391E7350C4CE3B8L), 0x2391E7350C4CE3B8L, 0x06C7ED1684C54C60L, 0x2391E7350C4CE3B8L), // p_933->g_806
        (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 8L), 8L), // p_933->g_807
        (VECTOR(int64_t, 2))(0x665D3A66A20305B7L, 0x4C742B810BDE20CFL), // p_933->g_808
        (VECTOR(uint16_t, 16))(0x4DBDL, (VECTOR(uint16_t, 4))(0x4DBDL, (VECTOR(uint16_t, 2))(0x4DBDL, 1UL), 1UL), 1UL, 0x4DBDL, 1UL, (VECTOR(uint16_t, 2))(0x4DBDL, 1UL), (VECTOR(uint16_t, 2))(0x4DBDL, 1UL), 0x4DBDL, 1UL, 0x4DBDL, 1UL), // p_933->g_821
        (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0xECFCL), 0xECFCL), 0xECFCL, 1UL, 0xECFCL), // p_933->g_847
        &p_933->g_118, // p_933->g_856
        (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 255UL), 255UL), // p_933->g_863
        (VECTOR(uint8_t, 2))(248UL, 0xE9L), // p_933->g_864
        (VECTOR(int8_t, 4))(0x33L, (VECTOR(int8_t, 2))(0x33L, 6L), 6L), // p_933->g_867
        (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 2L), 2L), 2L, (-1L), 2L), // p_933->g_872
        (VECTOR(uint16_t, 2))(0x12E5L, 0UL), // p_933->g_886
        &p_933->g_319, // p_933->g_924
        &p_933->g_924, // p_933->g_923
        sequence_input[get_global_id(0)], // p_933->global_0_offset
        sequence_input[get_global_id(1)], // p_933->global_1_offset
        sequence_input[get_global_id(2)], // p_933->global_2_offset
        sequence_input[get_local_id(0)], // p_933->local_0_offset
        sequence_input[get_local_id(1)], // p_933->local_1_offset
        sequence_input[get_local_id(2)], // p_933->local_2_offset
        sequence_input[get_group_id(0)], // p_933->group_0_offset
        sequence_input[get_group_id(1)], // p_933->group_1_offset
        sequence_input[get_group_id(2)], // p_933->group_2_offset
    };
    c_934 = c_935;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_933);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_933->g_2, "p_933->g_2", print_hash_value);
    transparent_crc(p_933->g_7, "p_933->g_7", print_hash_value);
    transparent_crc(p_933->g_45, "p_933->g_45", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_933->g_48[i][j][k], "p_933->g_48[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_933->g_62.x, "p_933->g_62.x", print_hash_value);
    transparent_crc(p_933->g_62.y, "p_933->g_62.y", print_hash_value);
    transparent_crc(p_933->g_81, "p_933->g_81", print_hash_value);
    transparent_crc(p_933->g_84, "p_933->g_84", print_hash_value);
    transparent_crc(p_933->g_96, "p_933->g_96", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_933->g_107[i], "p_933->g_107[i]", print_hash_value);

    }
    transparent_crc(p_933->g_116, "p_933->g_116", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_933->g_148[i], "p_933->g_148[i]", print_hash_value);

    }
    transparent_crc(p_933->g_159, "p_933->g_159", print_hash_value);
    transparent_crc(p_933->g_172.s0, "p_933->g_172.s0", print_hash_value);
    transparent_crc(p_933->g_172.s1, "p_933->g_172.s1", print_hash_value);
    transparent_crc(p_933->g_172.s2, "p_933->g_172.s2", print_hash_value);
    transparent_crc(p_933->g_172.s3, "p_933->g_172.s3", print_hash_value);
    transparent_crc(p_933->g_172.s4, "p_933->g_172.s4", print_hash_value);
    transparent_crc(p_933->g_172.s5, "p_933->g_172.s5", print_hash_value);
    transparent_crc(p_933->g_172.s6, "p_933->g_172.s6", print_hash_value);
    transparent_crc(p_933->g_172.s7, "p_933->g_172.s7", print_hash_value);
    transparent_crc(p_933->g_173.x, "p_933->g_173.x", print_hash_value);
    transparent_crc(p_933->g_173.y, "p_933->g_173.y", print_hash_value);
    transparent_crc(p_933->g_173.z, "p_933->g_173.z", print_hash_value);
    transparent_crc(p_933->g_173.w, "p_933->g_173.w", print_hash_value);
    transparent_crc(p_933->g_185, "p_933->g_185", print_hash_value);
    transparent_crc(p_933->g_203.s0, "p_933->g_203.s0", print_hash_value);
    transparent_crc(p_933->g_203.s1, "p_933->g_203.s1", print_hash_value);
    transparent_crc(p_933->g_203.s2, "p_933->g_203.s2", print_hash_value);
    transparent_crc(p_933->g_203.s3, "p_933->g_203.s3", print_hash_value);
    transparent_crc(p_933->g_203.s4, "p_933->g_203.s4", print_hash_value);
    transparent_crc(p_933->g_203.s5, "p_933->g_203.s5", print_hash_value);
    transparent_crc(p_933->g_203.s6, "p_933->g_203.s6", print_hash_value);
    transparent_crc(p_933->g_203.s7, "p_933->g_203.s7", print_hash_value);
    transparent_crc(p_933->g_224.s0, "p_933->g_224.s0", print_hash_value);
    transparent_crc(p_933->g_224.s1, "p_933->g_224.s1", print_hash_value);
    transparent_crc(p_933->g_224.s2, "p_933->g_224.s2", print_hash_value);
    transparent_crc(p_933->g_224.s3, "p_933->g_224.s3", print_hash_value);
    transparent_crc(p_933->g_224.s4, "p_933->g_224.s4", print_hash_value);
    transparent_crc(p_933->g_224.s5, "p_933->g_224.s5", print_hash_value);
    transparent_crc(p_933->g_224.s6, "p_933->g_224.s6", print_hash_value);
    transparent_crc(p_933->g_224.s7, "p_933->g_224.s7", print_hash_value);
    transparent_crc(p_933->g_239, "p_933->g_239", print_hash_value);
    transparent_crc(p_933->g_240, "p_933->g_240", print_hash_value);
    transparent_crc(p_933->g_250.x, "p_933->g_250.x", print_hash_value);
    transparent_crc(p_933->g_250.y, "p_933->g_250.y", print_hash_value);
    transparent_crc(p_933->g_250.z, "p_933->g_250.z", print_hash_value);
    transparent_crc(p_933->g_250.w, "p_933->g_250.w", print_hash_value);
    transparent_crc(p_933->g_252, "p_933->g_252", print_hash_value);
    transparent_crc(p_933->g_258.s0, "p_933->g_258.s0", print_hash_value);
    transparent_crc(p_933->g_258.s1, "p_933->g_258.s1", print_hash_value);
    transparent_crc(p_933->g_258.s2, "p_933->g_258.s2", print_hash_value);
    transparent_crc(p_933->g_258.s3, "p_933->g_258.s3", print_hash_value);
    transparent_crc(p_933->g_258.s4, "p_933->g_258.s4", print_hash_value);
    transparent_crc(p_933->g_258.s5, "p_933->g_258.s5", print_hash_value);
    transparent_crc(p_933->g_258.s6, "p_933->g_258.s6", print_hash_value);
    transparent_crc(p_933->g_258.s7, "p_933->g_258.s7", print_hash_value);
    transparent_crc(p_933->g_258.s8, "p_933->g_258.s8", print_hash_value);
    transparent_crc(p_933->g_258.s9, "p_933->g_258.s9", print_hash_value);
    transparent_crc(p_933->g_258.sa, "p_933->g_258.sa", print_hash_value);
    transparent_crc(p_933->g_258.sb, "p_933->g_258.sb", print_hash_value);
    transparent_crc(p_933->g_258.sc, "p_933->g_258.sc", print_hash_value);
    transparent_crc(p_933->g_258.sd, "p_933->g_258.sd", print_hash_value);
    transparent_crc(p_933->g_258.se, "p_933->g_258.se", print_hash_value);
    transparent_crc(p_933->g_258.sf, "p_933->g_258.sf", print_hash_value);
    transparent_crc(p_933->g_263, "p_933->g_263", print_hash_value);
    transparent_crc(p_933->g_275, "p_933->g_275", print_hash_value);
    transparent_crc(p_933->g_294.x, "p_933->g_294.x", print_hash_value);
    transparent_crc(p_933->g_294.y, "p_933->g_294.y", print_hash_value);
    transparent_crc(p_933->g_294.z, "p_933->g_294.z", print_hash_value);
    transparent_crc(p_933->g_294.w, "p_933->g_294.w", print_hash_value);
    transparent_crc(p_933->g_313.s0, "p_933->g_313.s0", print_hash_value);
    transparent_crc(p_933->g_313.s1, "p_933->g_313.s1", print_hash_value);
    transparent_crc(p_933->g_313.s2, "p_933->g_313.s2", print_hash_value);
    transparent_crc(p_933->g_313.s3, "p_933->g_313.s3", print_hash_value);
    transparent_crc(p_933->g_313.s4, "p_933->g_313.s4", print_hash_value);
    transparent_crc(p_933->g_313.s5, "p_933->g_313.s5", print_hash_value);
    transparent_crc(p_933->g_313.s6, "p_933->g_313.s6", print_hash_value);
    transparent_crc(p_933->g_313.s7, "p_933->g_313.s7", print_hash_value);
    transparent_crc(p_933->g_313.s8, "p_933->g_313.s8", print_hash_value);
    transparent_crc(p_933->g_313.s9, "p_933->g_313.s9", print_hash_value);
    transparent_crc(p_933->g_313.sa, "p_933->g_313.sa", print_hash_value);
    transparent_crc(p_933->g_313.sb, "p_933->g_313.sb", print_hash_value);
    transparent_crc(p_933->g_313.sc, "p_933->g_313.sc", print_hash_value);
    transparent_crc(p_933->g_313.sd, "p_933->g_313.sd", print_hash_value);
    transparent_crc(p_933->g_313.se, "p_933->g_313.se", print_hash_value);
    transparent_crc(p_933->g_313.sf, "p_933->g_313.sf", print_hash_value);
    transparent_crc(p_933->g_315.s0, "p_933->g_315.s0", print_hash_value);
    transparent_crc(p_933->g_315.s1, "p_933->g_315.s1", print_hash_value);
    transparent_crc(p_933->g_315.s2, "p_933->g_315.s2", print_hash_value);
    transparent_crc(p_933->g_315.s3, "p_933->g_315.s3", print_hash_value);
    transparent_crc(p_933->g_315.s4, "p_933->g_315.s4", print_hash_value);
    transparent_crc(p_933->g_315.s5, "p_933->g_315.s5", print_hash_value);
    transparent_crc(p_933->g_315.s6, "p_933->g_315.s6", print_hash_value);
    transparent_crc(p_933->g_315.s7, "p_933->g_315.s7", print_hash_value);
    transparent_crc(p_933->g_315.s8, "p_933->g_315.s8", print_hash_value);
    transparent_crc(p_933->g_315.s9, "p_933->g_315.s9", print_hash_value);
    transparent_crc(p_933->g_315.sa, "p_933->g_315.sa", print_hash_value);
    transparent_crc(p_933->g_315.sb, "p_933->g_315.sb", print_hash_value);
    transparent_crc(p_933->g_315.sc, "p_933->g_315.sc", print_hash_value);
    transparent_crc(p_933->g_315.sd, "p_933->g_315.sd", print_hash_value);
    transparent_crc(p_933->g_315.se, "p_933->g_315.se", print_hash_value);
    transparent_crc(p_933->g_315.sf, "p_933->g_315.sf", print_hash_value);
    transparent_crc(p_933->g_319, "p_933->g_319", print_hash_value);
    transparent_crc(p_933->g_326.s0, "p_933->g_326.s0", print_hash_value);
    transparent_crc(p_933->g_326.s1, "p_933->g_326.s1", print_hash_value);
    transparent_crc(p_933->g_326.s2, "p_933->g_326.s2", print_hash_value);
    transparent_crc(p_933->g_326.s3, "p_933->g_326.s3", print_hash_value);
    transparent_crc(p_933->g_326.s4, "p_933->g_326.s4", print_hash_value);
    transparent_crc(p_933->g_326.s5, "p_933->g_326.s5", print_hash_value);
    transparent_crc(p_933->g_326.s6, "p_933->g_326.s6", print_hash_value);
    transparent_crc(p_933->g_326.s7, "p_933->g_326.s7", print_hash_value);
    transparent_crc(p_933->g_368.x, "p_933->g_368.x", print_hash_value);
    transparent_crc(p_933->g_368.y, "p_933->g_368.y", print_hash_value);
    transparent_crc(p_933->g_368.z, "p_933->g_368.z", print_hash_value);
    transparent_crc(p_933->g_368.w, "p_933->g_368.w", print_hash_value);
    transparent_crc(p_933->g_370.s0, "p_933->g_370.s0", print_hash_value);
    transparent_crc(p_933->g_370.s1, "p_933->g_370.s1", print_hash_value);
    transparent_crc(p_933->g_370.s2, "p_933->g_370.s2", print_hash_value);
    transparent_crc(p_933->g_370.s3, "p_933->g_370.s3", print_hash_value);
    transparent_crc(p_933->g_370.s4, "p_933->g_370.s4", print_hash_value);
    transparent_crc(p_933->g_370.s5, "p_933->g_370.s5", print_hash_value);
    transparent_crc(p_933->g_370.s6, "p_933->g_370.s6", print_hash_value);
    transparent_crc(p_933->g_370.s7, "p_933->g_370.s7", print_hash_value);
    transparent_crc(p_933->g_370.s8, "p_933->g_370.s8", print_hash_value);
    transparent_crc(p_933->g_370.s9, "p_933->g_370.s9", print_hash_value);
    transparent_crc(p_933->g_370.sa, "p_933->g_370.sa", print_hash_value);
    transparent_crc(p_933->g_370.sb, "p_933->g_370.sb", print_hash_value);
    transparent_crc(p_933->g_370.sc, "p_933->g_370.sc", print_hash_value);
    transparent_crc(p_933->g_370.sd, "p_933->g_370.sd", print_hash_value);
    transparent_crc(p_933->g_370.se, "p_933->g_370.se", print_hash_value);
    transparent_crc(p_933->g_370.sf, "p_933->g_370.sf", print_hash_value);
    transparent_crc(p_933->g_373.x, "p_933->g_373.x", print_hash_value);
    transparent_crc(p_933->g_373.y, "p_933->g_373.y", print_hash_value);
    transparent_crc(p_933->g_373.z, "p_933->g_373.z", print_hash_value);
    transparent_crc(p_933->g_373.w, "p_933->g_373.w", print_hash_value);
    transparent_crc(p_933->g_374.x, "p_933->g_374.x", print_hash_value);
    transparent_crc(p_933->g_374.y, "p_933->g_374.y", print_hash_value);
    transparent_crc(p_933->g_380.s0, "p_933->g_380.s0", print_hash_value);
    transparent_crc(p_933->g_380.s1, "p_933->g_380.s1", print_hash_value);
    transparent_crc(p_933->g_380.s2, "p_933->g_380.s2", print_hash_value);
    transparent_crc(p_933->g_380.s3, "p_933->g_380.s3", print_hash_value);
    transparent_crc(p_933->g_380.s4, "p_933->g_380.s4", print_hash_value);
    transparent_crc(p_933->g_380.s5, "p_933->g_380.s5", print_hash_value);
    transparent_crc(p_933->g_380.s6, "p_933->g_380.s6", print_hash_value);
    transparent_crc(p_933->g_380.s7, "p_933->g_380.s7", print_hash_value);
    transparent_crc(p_933->g_383.x, "p_933->g_383.x", print_hash_value);
    transparent_crc(p_933->g_383.y, "p_933->g_383.y", print_hash_value);
    transparent_crc(p_933->g_418, "p_933->g_418", print_hash_value);
    transparent_crc(p_933->g_433.x, "p_933->g_433.x", print_hash_value);
    transparent_crc(p_933->g_433.y, "p_933->g_433.y", print_hash_value);
    transparent_crc(p_933->g_438.x, "p_933->g_438.x", print_hash_value);
    transparent_crc(p_933->g_438.y, "p_933->g_438.y", print_hash_value);
    transparent_crc(p_933->g_472, "p_933->g_472", print_hash_value);
    transparent_crc(p_933->g_473, "p_933->g_473", print_hash_value);
    transparent_crc(p_933->g_480.x, "p_933->g_480.x", print_hash_value);
    transparent_crc(p_933->g_480.y, "p_933->g_480.y", print_hash_value);
    transparent_crc(p_933->g_500.x, "p_933->g_500.x", print_hash_value);
    transparent_crc(p_933->g_500.y, "p_933->g_500.y", print_hash_value);
    transparent_crc(p_933->g_500.z, "p_933->g_500.z", print_hash_value);
    transparent_crc(p_933->g_500.w, "p_933->g_500.w", print_hash_value);
    transparent_crc(p_933->g_508.s0, "p_933->g_508.s0", print_hash_value);
    transparent_crc(p_933->g_508.s1, "p_933->g_508.s1", print_hash_value);
    transparent_crc(p_933->g_508.s2, "p_933->g_508.s2", print_hash_value);
    transparent_crc(p_933->g_508.s3, "p_933->g_508.s3", print_hash_value);
    transparent_crc(p_933->g_508.s4, "p_933->g_508.s4", print_hash_value);
    transparent_crc(p_933->g_508.s5, "p_933->g_508.s5", print_hash_value);
    transparent_crc(p_933->g_508.s6, "p_933->g_508.s6", print_hash_value);
    transparent_crc(p_933->g_508.s7, "p_933->g_508.s7", print_hash_value);
    transparent_crc(p_933->g_509.x, "p_933->g_509.x", print_hash_value);
    transparent_crc(p_933->g_509.y, "p_933->g_509.y", print_hash_value);
    transparent_crc(p_933->g_509.z, "p_933->g_509.z", print_hash_value);
    transparent_crc(p_933->g_509.w, "p_933->g_509.w", print_hash_value);
    transparent_crc(p_933->g_514, "p_933->g_514", print_hash_value);
    transparent_crc(p_933->g_522.x, "p_933->g_522.x", print_hash_value);
    transparent_crc(p_933->g_522.y, "p_933->g_522.y", print_hash_value);
    transparent_crc(p_933->g_524.s0, "p_933->g_524.s0", print_hash_value);
    transparent_crc(p_933->g_524.s1, "p_933->g_524.s1", print_hash_value);
    transparent_crc(p_933->g_524.s2, "p_933->g_524.s2", print_hash_value);
    transparent_crc(p_933->g_524.s3, "p_933->g_524.s3", print_hash_value);
    transparent_crc(p_933->g_524.s4, "p_933->g_524.s4", print_hash_value);
    transparent_crc(p_933->g_524.s5, "p_933->g_524.s5", print_hash_value);
    transparent_crc(p_933->g_524.s6, "p_933->g_524.s6", print_hash_value);
    transparent_crc(p_933->g_524.s7, "p_933->g_524.s7", print_hash_value);
    transparent_crc(p_933->g_526.x, "p_933->g_526.x", print_hash_value);
    transparent_crc(p_933->g_526.y, "p_933->g_526.y", print_hash_value);
    transparent_crc(p_933->g_527.s0, "p_933->g_527.s0", print_hash_value);
    transparent_crc(p_933->g_527.s1, "p_933->g_527.s1", print_hash_value);
    transparent_crc(p_933->g_527.s2, "p_933->g_527.s2", print_hash_value);
    transparent_crc(p_933->g_527.s3, "p_933->g_527.s3", print_hash_value);
    transparent_crc(p_933->g_527.s4, "p_933->g_527.s4", print_hash_value);
    transparent_crc(p_933->g_527.s5, "p_933->g_527.s5", print_hash_value);
    transparent_crc(p_933->g_527.s6, "p_933->g_527.s6", print_hash_value);
    transparent_crc(p_933->g_527.s7, "p_933->g_527.s7", print_hash_value);
    transparent_crc(p_933->g_527.s8, "p_933->g_527.s8", print_hash_value);
    transparent_crc(p_933->g_527.s9, "p_933->g_527.s9", print_hash_value);
    transparent_crc(p_933->g_527.sa, "p_933->g_527.sa", print_hash_value);
    transparent_crc(p_933->g_527.sb, "p_933->g_527.sb", print_hash_value);
    transparent_crc(p_933->g_527.sc, "p_933->g_527.sc", print_hash_value);
    transparent_crc(p_933->g_527.sd, "p_933->g_527.sd", print_hash_value);
    transparent_crc(p_933->g_527.se, "p_933->g_527.se", print_hash_value);
    transparent_crc(p_933->g_527.sf, "p_933->g_527.sf", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_933->g_549[i], "p_933->g_549[i]", print_hash_value);

    }
    transparent_crc(p_933->g_566, "p_933->g_566", print_hash_value);
    transparent_crc(p_933->g_582.s0, "p_933->g_582.s0", print_hash_value);
    transparent_crc(p_933->g_582.s1, "p_933->g_582.s1", print_hash_value);
    transparent_crc(p_933->g_582.s2, "p_933->g_582.s2", print_hash_value);
    transparent_crc(p_933->g_582.s3, "p_933->g_582.s3", print_hash_value);
    transparent_crc(p_933->g_582.s4, "p_933->g_582.s4", print_hash_value);
    transparent_crc(p_933->g_582.s5, "p_933->g_582.s5", print_hash_value);
    transparent_crc(p_933->g_582.s6, "p_933->g_582.s6", print_hash_value);
    transparent_crc(p_933->g_582.s7, "p_933->g_582.s7", print_hash_value);
    transparent_crc(p_933->g_586.x, "p_933->g_586.x", print_hash_value);
    transparent_crc(p_933->g_586.y, "p_933->g_586.y", print_hash_value);
    transparent_crc(p_933->g_589.s0, "p_933->g_589.s0", print_hash_value);
    transparent_crc(p_933->g_589.s1, "p_933->g_589.s1", print_hash_value);
    transparent_crc(p_933->g_589.s2, "p_933->g_589.s2", print_hash_value);
    transparent_crc(p_933->g_589.s3, "p_933->g_589.s3", print_hash_value);
    transparent_crc(p_933->g_589.s4, "p_933->g_589.s4", print_hash_value);
    transparent_crc(p_933->g_589.s5, "p_933->g_589.s5", print_hash_value);
    transparent_crc(p_933->g_589.s6, "p_933->g_589.s6", print_hash_value);
    transparent_crc(p_933->g_589.s7, "p_933->g_589.s7", print_hash_value);
    transparent_crc(p_933->g_590.s0, "p_933->g_590.s0", print_hash_value);
    transparent_crc(p_933->g_590.s1, "p_933->g_590.s1", print_hash_value);
    transparent_crc(p_933->g_590.s2, "p_933->g_590.s2", print_hash_value);
    transparent_crc(p_933->g_590.s3, "p_933->g_590.s3", print_hash_value);
    transparent_crc(p_933->g_590.s4, "p_933->g_590.s4", print_hash_value);
    transparent_crc(p_933->g_590.s5, "p_933->g_590.s5", print_hash_value);
    transparent_crc(p_933->g_590.s6, "p_933->g_590.s6", print_hash_value);
    transparent_crc(p_933->g_590.s7, "p_933->g_590.s7", print_hash_value);
    transparent_crc(p_933->g_590.s8, "p_933->g_590.s8", print_hash_value);
    transparent_crc(p_933->g_590.s9, "p_933->g_590.s9", print_hash_value);
    transparent_crc(p_933->g_590.sa, "p_933->g_590.sa", print_hash_value);
    transparent_crc(p_933->g_590.sb, "p_933->g_590.sb", print_hash_value);
    transparent_crc(p_933->g_590.sc, "p_933->g_590.sc", print_hash_value);
    transparent_crc(p_933->g_590.sd, "p_933->g_590.sd", print_hash_value);
    transparent_crc(p_933->g_590.se, "p_933->g_590.se", print_hash_value);
    transparent_crc(p_933->g_590.sf, "p_933->g_590.sf", print_hash_value);
    transparent_crc(p_933->g_611, "p_933->g_611", print_hash_value);
    transparent_crc(p_933->g_655.s0, "p_933->g_655.s0", print_hash_value);
    transparent_crc(p_933->g_655.s1, "p_933->g_655.s1", print_hash_value);
    transparent_crc(p_933->g_655.s2, "p_933->g_655.s2", print_hash_value);
    transparent_crc(p_933->g_655.s3, "p_933->g_655.s3", print_hash_value);
    transparent_crc(p_933->g_655.s4, "p_933->g_655.s4", print_hash_value);
    transparent_crc(p_933->g_655.s5, "p_933->g_655.s5", print_hash_value);
    transparent_crc(p_933->g_655.s6, "p_933->g_655.s6", print_hash_value);
    transparent_crc(p_933->g_655.s7, "p_933->g_655.s7", print_hash_value);
    transparent_crc(p_933->g_657.s0, "p_933->g_657.s0", print_hash_value);
    transparent_crc(p_933->g_657.s1, "p_933->g_657.s1", print_hash_value);
    transparent_crc(p_933->g_657.s2, "p_933->g_657.s2", print_hash_value);
    transparent_crc(p_933->g_657.s3, "p_933->g_657.s3", print_hash_value);
    transparent_crc(p_933->g_657.s4, "p_933->g_657.s4", print_hash_value);
    transparent_crc(p_933->g_657.s5, "p_933->g_657.s5", print_hash_value);
    transparent_crc(p_933->g_657.s6, "p_933->g_657.s6", print_hash_value);
    transparent_crc(p_933->g_657.s7, "p_933->g_657.s7", print_hash_value);
    transparent_crc(p_933->g_657.s8, "p_933->g_657.s8", print_hash_value);
    transparent_crc(p_933->g_657.s9, "p_933->g_657.s9", print_hash_value);
    transparent_crc(p_933->g_657.sa, "p_933->g_657.sa", print_hash_value);
    transparent_crc(p_933->g_657.sb, "p_933->g_657.sb", print_hash_value);
    transparent_crc(p_933->g_657.sc, "p_933->g_657.sc", print_hash_value);
    transparent_crc(p_933->g_657.sd, "p_933->g_657.sd", print_hash_value);
    transparent_crc(p_933->g_657.se, "p_933->g_657.se", print_hash_value);
    transparent_crc(p_933->g_657.sf, "p_933->g_657.sf", print_hash_value);
    transparent_crc(p_933->g_698, "p_933->g_698", print_hash_value);
    transparent_crc(p_933->g_733.s0, "p_933->g_733.s0", print_hash_value);
    transparent_crc(p_933->g_733.s1, "p_933->g_733.s1", print_hash_value);
    transparent_crc(p_933->g_733.s2, "p_933->g_733.s2", print_hash_value);
    transparent_crc(p_933->g_733.s3, "p_933->g_733.s3", print_hash_value);
    transparent_crc(p_933->g_733.s4, "p_933->g_733.s4", print_hash_value);
    transparent_crc(p_933->g_733.s5, "p_933->g_733.s5", print_hash_value);
    transparent_crc(p_933->g_733.s6, "p_933->g_733.s6", print_hash_value);
    transparent_crc(p_933->g_733.s7, "p_933->g_733.s7", print_hash_value);
    transparent_crc(p_933->g_744.s0, "p_933->g_744.s0", print_hash_value);
    transparent_crc(p_933->g_744.s1, "p_933->g_744.s1", print_hash_value);
    transparent_crc(p_933->g_744.s2, "p_933->g_744.s2", print_hash_value);
    transparent_crc(p_933->g_744.s3, "p_933->g_744.s3", print_hash_value);
    transparent_crc(p_933->g_744.s4, "p_933->g_744.s4", print_hash_value);
    transparent_crc(p_933->g_744.s5, "p_933->g_744.s5", print_hash_value);
    transparent_crc(p_933->g_744.s6, "p_933->g_744.s6", print_hash_value);
    transparent_crc(p_933->g_744.s7, "p_933->g_744.s7", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_933->g_760[i], "p_933->g_760[i]", print_hash_value);

    }
    transparent_crc(p_933->g_781.x, "p_933->g_781.x", print_hash_value);
    transparent_crc(p_933->g_781.y, "p_933->g_781.y", print_hash_value);
    transparent_crc(p_933->g_781.z, "p_933->g_781.z", print_hash_value);
    transparent_crc(p_933->g_781.w, "p_933->g_781.w", print_hash_value);
    transparent_crc(p_933->g_794.x, "p_933->g_794.x", print_hash_value);
    transparent_crc(p_933->g_794.y, "p_933->g_794.y", print_hash_value);
    transparent_crc(p_933->g_797, "p_933->g_797", print_hash_value);
    transparent_crc(p_933->g_806.s0, "p_933->g_806.s0", print_hash_value);
    transparent_crc(p_933->g_806.s1, "p_933->g_806.s1", print_hash_value);
    transparent_crc(p_933->g_806.s2, "p_933->g_806.s2", print_hash_value);
    transparent_crc(p_933->g_806.s3, "p_933->g_806.s3", print_hash_value);
    transparent_crc(p_933->g_806.s4, "p_933->g_806.s4", print_hash_value);
    transparent_crc(p_933->g_806.s5, "p_933->g_806.s5", print_hash_value);
    transparent_crc(p_933->g_806.s6, "p_933->g_806.s6", print_hash_value);
    transparent_crc(p_933->g_806.s7, "p_933->g_806.s7", print_hash_value);
    transparent_crc(p_933->g_807.x, "p_933->g_807.x", print_hash_value);
    transparent_crc(p_933->g_807.y, "p_933->g_807.y", print_hash_value);
    transparent_crc(p_933->g_807.z, "p_933->g_807.z", print_hash_value);
    transparent_crc(p_933->g_807.w, "p_933->g_807.w", print_hash_value);
    transparent_crc(p_933->g_808.x, "p_933->g_808.x", print_hash_value);
    transparent_crc(p_933->g_808.y, "p_933->g_808.y", print_hash_value);
    transparent_crc(p_933->g_821.s0, "p_933->g_821.s0", print_hash_value);
    transparent_crc(p_933->g_821.s1, "p_933->g_821.s1", print_hash_value);
    transparent_crc(p_933->g_821.s2, "p_933->g_821.s2", print_hash_value);
    transparent_crc(p_933->g_821.s3, "p_933->g_821.s3", print_hash_value);
    transparent_crc(p_933->g_821.s4, "p_933->g_821.s4", print_hash_value);
    transparent_crc(p_933->g_821.s5, "p_933->g_821.s5", print_hash_value);
    transparent_crc(p_933->g_821.s6, "p_933->g_821.s6", print_hash_value);
    transparent_crc(p_933->g_821.s7, "p_933->g_821.s7", print_hash_value);
    transparent_crc(p_933->g_821.s8, "p_933->g_821.s8", print_hash_value);
    transparent_crc(p_933->g_821.s9, "p_933->g_821.s9", print_hash_value);
    transparent_crc(p_933->g_821.sa, "p_933->g_821.sa", print_hash_value);
    transparent_crc(p_933->g_821.sb, "p_933->g_821.sb", print_hash_value);
    transparent_crc(p_933->g_821.sc, "p_933->g_821.sc", print_hash_value);
    transparent_crc(p_933->g_821.sd, "p_933->g_821.sd", print_hash_value);
    transparent_crc(p_933->g_821.se, "p_933->g_821.se", print_hash_value);
    transparent_crc(p_933->g_821.sf, "p_933->g_821.sf", print_hash_value);
    transparent_crc(p_933->g_847.s0, "p_933->g_847.s0", print_hash_value);
    transparent_crc(p_933->g_847.s1, "p_933->g_847.s1", print_hash_value);
    transparent_crc(p_933->g_847.s2, "p_933->g_847.s2", print_hash_value);
    transparent_crc(p_933->g_847.s3, "p_933->g_847.s3", print_hash_value);
    transparent_crc(p_933->g_847.s4, "p_933->g_847.s4", print_hash_value);
    transparent_crc(p_933->g_847.s5, "p_933->g_847.s5", print_hash_value);
    transparent_crc(p_933->g_847.s6, "p_933->g_847.s6", print_hash_value);
    transparent_crc(p_933->g_847.s7, "p_933->g_847.s7", print_hash_value);
    transparent_crc(p_933->g_863.x, "p_933->g_863.x", print_hash_value);
    transparent_crc(p_933->g_863.y, "p_933->g_863.y", print_hash_value);
    transparent_crc(p_933->g_863.z, "p_933->g_863.z", print_hash_value);
    transparent_crc(p_933->g_863.w, "p_933->g_863.w", print_hash_value);
    transparent_crc(p_933->g_864.x, "p_933->g_864.x", print_hash_value);
    transparent_crc(p_933->g_864.y, "p_933->g_864.y", print_hash_value);
    transparent_crc(p_933->g_867.x, "p_933->g_867.x", print_hash_value);
    transparent_crc(p_933->g_867.y, "p_933->g_867.y", print_hash_value);
    transparent_crc(p_933->g_867.z, "p_933->g_867.z", print_hash_value);
    transparent_crc(p_933->g_867.w, "p_933->g_867.w", print_hash_value);
    transparent_crc(p_933->g_872.s0, "p_933->g_872.s0", print_hash_value);
    transparent_crc(p_933->g_872.s1, "p_933->g_872.s1", print_hash_value);
    transparent_crc(p_933->g_872.s2, "p_933->g_872.s2", print_hash_value);
    transparent_crc(p_933->g_872.s3, "p_933->g_872.s3", print_hash_value);
    transparent_crc(p_933->g_872.s4, "p_933->g_872.s4", print_hash_value);
    transparent_crc(p_933->g_872.s5, "p_933->g_872.s5", print_hash_value);
    transparent_crc(p_933->g_872.s6, "p_933->g_872.s6", print_hash_value);
    transparent_crc(p_933->g_872.s7, "p_933->g_872.s7", print_hash_value);
    transparent_crc(p_933->g_886.x, "p_933->g_886.x", print_hash_value);
    transparent_crc(p_933->g_886.y, "p_933->g_886.y", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
