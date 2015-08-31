// ---fake_divergence -g 1,1,1 -l 1,1,1
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


// Seed: 87

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile int64_t  f0;
   uint32_t  f1;
   int8_t  f2;
   int64_t  f3;
};

struct S1 {
   int64_t  f0;
   int8_t  f1;
   volatile uint64_t  f2;
   int32_t  f3;
   uint32_t  f4;
   uint16_t  f5;
   int16_t  f6;
};

struct S2 {
    volatile uint8_t g_2;
    int8_t g_3;
    int16_t g_23;
    int32_t g_33;
    int32_t g_38[9];
    int32_t g_52;
    int32_t *g_65;
    int32_t **g_64;
    uint32_t g_84;
    volatile int16_t g_90;
    volatile int16_t *g_89;
    volatile int16_t * volatile *g_88[5][5][5];
    VECTOR(int64_t, 2) g_119;
    uint32_t g_122;
    uint32_t g_127;
    int16_t g_131;
    int16_t *g_130[5][7][7];
    uint16_t g_150;
    int32_t g_158;
    uint8_t g_170;
    int8_t g_171[9];
    int32_t **g_185;
    int8_t g_217;
    int32_t g_218;
    uint64_t g_219;
    VECTOR(uint16_t, 16) g_230;
    VECTOR(int32_t, 8) g_236;
    VECTOR(int16_t, 8) g_244;
    VECTOR(int16_t, 16) g_245;
    VECTOR(int16_t, 2) g_247;
    int16_t **g_270;
    int16_t ***g_269;
    VECTOR(int32_t, 4) g_294;
    VECTOR(uint32_t, 2) g_353;
    VECTOR(int8_t, 2) g_355;
    VECTOR(int8_t, 8) g_358;
    int64_t g_368;
    VECTOR(uint8_t, 16) g_399;
    VECTOR(int64_t, 2) g_402;
    VECTOR(uint32_t, 16) g_464;
    VECTOR(int8_t, 4) g_497;
    VECTOR(uint32_t, 8) g_505;
    VECTOR(uint8_t, 2) g_519;
    uint32_t g_535;
    VECTOR(int16_t, 4) g_557;
    VECTOR(uint32_t, 4) g_561;
    int16_t g_583;
    VECTOR(int64_t, 2) g_595;
    VECTOR(int32_t, 8) g_605;
    VECTOR(uint16_t, 2) g_624;
    uint64_t g_632;
    VECTOR(int32_t, 16) g_665;
    VECTOR(uint16_t, 4) g_678;
    uint16_t g_689;
    VECTOR(int64_t, 2) g_704;
    uint64_t g_723;
    uint16_t *g_758[5];
    uint16_t **g_757;
    volatile int64_t g_772;
    volatile int64_t *g_771;
    volatile int64_t **g_770;
    int8_t g_803;
    uint32_t *g_846;
    uint32_t **g_845;
    VECTOR(int8_t, 2) g_868;
    VECTOR(int32_t, 16) g_871;
    VECTOR(int32_t, 2) g_872;
    VECTOR(uint16_t, 8) g_889;
    VECTOR(int16_t, 16) g_909;
    VECTOR(uint64_t, 4) g_918;
    VECTOR(uint16_t, 16) g_922;
    VECTOR(int32_t, 2) g_941;
    uint32_t *g_950;
    uint32_t * volatile *g_949;
    VECTOR(int64_t, 2) g_951;
    VECTOR(uint8_t, 8) g_982;
    VECTOR(int32_t, 8) g_989;
    uint64_t g_1048;
    VECTOR(uint16_t, 2) g_1073;
    VECTOR(uint16_t, 8) g_1079;
    VECTOR(uint8_t, 8) g_1096;
    VECTOR(uint8_t, 4) g_1101;
    VECTOR(uint8_t, 16) g_1102;
    VECTOR(int16_t, 4) g_1135;
    VECTOR(int16_t, 8) g_1137;
    VECTOR(int8_t, 2) g_1148;
    VECTOR(int8_t, 2) g_1149;
    VECTOR(int8_t, 2) g_1154;
    VECTOR(int8_t, 4) g_1155;
    VECTOR(int8_t, 8) g_1158;
    VECTOR(int8_t, 2) g_1165;
    VECTOR(uint16_t, 2) g_1171;
    VECTOR(int16_t, 8) g_1194;
    VECTOR(uint64_t, 16) g_1214;
    VECTOR(uint16_t, 16) g_1222;
    VECTOR(uint16_t, 4) g_1223;
    struct S0 g_1239[4][10];
    VECTOR(uint8_t, 8) g_1257;
    volatile struct S0 g_1269;
    volatile struct S0 *g_1268[3][2];
    uint8_t *g_1276;
    VECTOR(uint64_t, 8) g_1309;
    VECTOR(int64_t, 4) g_1310;
    VECTOR(uint32_t, 2) g_1322;
    VECTOR(int8_t, 4) g_1344;
    VECTOR(int8_t, 2) g_1346;
    VECTOR(int8_t, 2) g_1348;
    uint64_t * volatile g_1353;
    uint64_t * volatile g_1354;
    uint64_t * volatile g_1355;
    uint64_t * volatile g_1356;
    uint64_t * volatile g_1357;
    uint64_t *g_1358[9][2];
    uint64_t * volatile *g_1352[9][9];
    VECTOR(int32_t, 4) g_1384;
    VECTOR(uint16_t, 8) g_1426;
    VECTOR(uint16_t, 4) g_1437;
    VECTOR(uint16_t, 4) g_1440;
    int16_t ***g_1480;
    uint16_t g_1492;
    struct S0 g_1496;
    VECTOR(int64_t, 8) g_1503;
    VECTOR(int32_t, 8) g_1517;
    VECTOR(int64_t, 2) g_1534;
    VECTOR(int64_t, 16) g_1535;
    VECTOR(int64_t, 2) g_1536;
    struct S0 g_1539;
    struct S0 * volatile g_1538;
    struct S0 * volatile *g_1537[3][8];
    uint32_t **g_1616;
    uint32_t ***g_1615;
    uint8_t g_1637[10];
    volatile struct S1 *g_1689;
    struct S0 g_1695;
    int16_t g_1728;
    VECTOR(int16_t, 2) g_1781;
    VECTOR(int32_t, 4) g_1802;
    VECTOR(uint16_t, 8) g_1827;
    VECTOR(uint16_t, 4) g_1828;
    VECTOR(uint16_t, 8) g_1829;
    struct S0 g_1844;
    VECTOR(int8_t, 2) g_1891;
    VECTOR(int8_t, 4) g_1892;
    VECTOR(int8_t, 4) g_1894;
    int32_t g_1898;
    VECTOR(int8_t, 4) g_1911;
    VECTOR(int8_t, 8) g_1912;
    VECTOR(int8_t, 2) g_1922;
    int32_t g_1926;
    VECTOR(uint16_t, 16) g_1933;
    VECTOR(uint8_t, 16) g_1939;
    VECTOR(uint16_t, 2) g_1971;
    VECTOR(int32_t, 16) g_1983;
    VECTOR(int32_t, 2) g_1984;
    VECTOR(int32_t, 8) g_1985;
    VECTOR(int32_t, 8) g_1986;
    VECTOR(int16_t, 4) g_2019;
    VECTOR(int16_t, 2) g_2020;
    VECTOR(int16_t, 16) g_2021;
    VECTOR(uint16_t, 2) g_2022;
    struct S0 g_2040;
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
struct S0  func_1(struct S2 * p_2041);
uint16_t  func_12(uint64_t  p_13, int8_t  p_14, uint64_t  p_15, struct S2 * p_2041);
int16_t  func_24(uint8_t  p_25, int16_t * p_26, int16_t * p_27, struct S2 * p_2041);
int16_t * func_28(uint16_t  p_29, struct S2 * p_2041);
int8_t  func_45(int32_t * p_46, uint8_t  p_47, struct S2 * p_2041);
int32_t ** func_53(uint32_t  p_54, int32_t * p_55, int16_t  p_56, uint64_t  p_57, struct S2 * p_2041);
uint8_t  func_60(int32_t ** p_61, int16_t  p_62, int32_t ** p_63, struct S2 * p_2041);
int32_t ** func_66(int16_t * p_67, uint64_t  p_68, uint32_t  p_69, struct S2 * p_2041);
int16_t * func_70(uint64_t  p_71, int16_t  p_72, int32_t ** p_73, struct S2 * p_2041);
int32_t ** func_74(uint16_t  p_75, int32_t ** p_76, uint16_t  p_77, struct S2 * p_2041);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2041->g_2 p_2041->g_3 p_2041->g_23 p_2041->g_33 p_2041->g_1637 p_2041->g_64 p_2041->g_65 p_2041->g_38 p_2041->g_185 p_2041->g_922 p_2041->g_889 p_2041->g_1149 p_2041->g_1933 p_2041->g_1939 p_2041->g_1496.f1 p_2041->g_1135 p_2041->g_1257 p_2041->g_1971 p_2041->g_1983 p_2041->g_1984 p_2041->g_1985 p_2041->g_1986 p_2041->g_1898 p_2041->g_131 p_2041->g_1844.f1 p_2041->g_2019 p_2041->g_2020 p_2041->g_2021 p_2041->g_2022 p_2041->g_1048 p_2041->g_245 p_2041->g_678 p_2041->g_1616 p_2041->g_950 p_2041->g_2040
 * writes: p_2041->g_23 p_2041->g_33 p_2041->g_38 p_2041->g_65 p_2041->g_217 p_2041->g_1358 p_2041->g_1898 p_2041->g_131 p_2041->g_1844.f1 p_2041->g_1048 p_2041->g_1536
 */
struct S0  func_1(struct S2 * p_2041)
{ /* block id: 4 */
    int16_t *l_22[10];
    int32_t l_1929 = 1L;
    uint32_t l_1930 = 0xBBCD2E24L;
    int64_t *l_2038[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t *l_2039 = (void*)0;
    int i;
    for (i = 0; i < 10; i++)
        l_22[i] = &p_2041->g_23;
    l_1929 = (((-2L) || ((((VECTOR(uint64_t, 2))(5UL, 0xAD9DDCEF989B1AB4L)).hi < p_2041->g_2) ^ p_2041->g_3)) ^ ((p_2041->g_1536.y = (safe_lshift_func_int8_t_s_u((safe_add_func_uint16_t_u_u(p_2041->g_3, ((safe_sub_func_uint16_t_u_u((safe_div_func_uint16_t_u_u(FAKE_DIVERGE(p_2041->global_2_offset, get_global_id(2), 10), p_2041->g_3)), p_2041->g_3)) >= (func_12(((safe_mod_func_int64_t_s_s(((safe_rshift_func_int16_t_s_s((safe_div_func_int16_t_s_s((p_2041->g_23 |= 4L), func_24(p_2041->g_3, func_28(p_2041->g_3, p_2041), l_22[8], p_2041))), l_1929)) <= l_1930), l_1930)) || l_1929), p_2041->g_1149.y, l_1930, p_2041) <= l_1929)))), 4))) | 1UL));
    return p_2041->g_2040;
}


/* ------------------------------------------ */
/* 
 * reads : p_2041->g_1933 p_2041->g_1939 p_2041->g_1496.f1 p_2041->g_1135 p_2041->g_1257 p_2041->g_65 p_2041->g_38 p_2041->g_1971 p_2041->g_64 p_2041->g_1983 p_2041->g_1984 p_2041->g_1985 p_2041->g_1986 p_2041->g_1898 p_2041->g_185 p_2041->g_131 p_2041->g_1844.f1 p_2041->g_2019 p_2041->g_2020 p_2041->g_2021 p_2041->g_2022 p_2041->g_1048 p_2041->g_245 p_2041->g_678 p_2041->g_1616 p_2041->g_950
 * writes: p_2041->g_38 p_2041->g_1358 p_2041->g_65 p_2041->g_1898 p_2041->g_131 p_2041->g_1844.f1 p_2041->g_1048
 */
uint16_t  func_12(uint64_t  p_13, int8_t  p_14, uint64_t  p_15, struct S2 * p_2041)
{ /* block id: 606 */
    VECTOR(uint16_t, 2) l_1934 = (VECTOR(uint16_t, 2))(0x79F3L, 65535UL);
    VECTOR(uint8_t, 4) l_1940 = (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 255UL), 255UL);
    uint8_t **l_1949 = &p_2041->g_1276;
    uint8_t **l_1951 = &p_2041->g_1276;
    uint8_t ***l_1950 = &l_1951;
    VECTOR(uint16_t, 2) l_1954 = (VECTOR(uint16_t, 2))(65531UL, 0x0921L);
    VECTOR(int32_t, 2) l_1963 = (VECTOR(int32_t, 2))((-2L), (-1L));
    VECTOR(int32_t, 2) l_1980 = (VECTOR(int32_t, 2))(5L, 0x58A4408CL);
    VECTOR(uint16_t, 2) l_1981 = (VECTOR(uint16_t, 2))(0x3435L, 65526UL);
    VECTOR(int32_t, 2) l_1987 = (VECTOR(int32_t, 2))((-10L), (-1L));
    int8_t *l_2015 = (void*)0;
    int8_t **l_2014[10] = {&l_2015,&l_2015,&l_2015,&l_2015,&l_2015,&l_2015,&l_2015,&l_2015,&l_2015,&l_2015};
    int16_t **l_2033 = &p_2041->g_130[3][5][5];
    int i;
    if (((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))((-8L), 0x027C696DL, (-4L), (((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 16))(rotate(((VECTOR(uint16_t, 16))(p_2041->g_1933.s23b53869009a4825)), ((VECTOR(uint16_t, 8))(mul_hi(((VECTOR(uint16_t, 8))(sub_sat(((VECTOR(uint16_t, 8))(l_1934.xxyxxxxy)), ((VECTOR(uint16_t, 8))((~((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 8))(upsample(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 8))(safe_clamp_func(VECTOR(uint8_t, 8),uint8_t,((VECTOR(uint8_t, 16))(rotate(((VECTOR(uint8_t, 2))(p_2041->g_1939.s76)).xyyyyyxxyxxxxyxx, ((VECTOR(uint8_t, 16))(l_1940.wzyxyyxyyzwyxwxx))))).even, (uint8_t)l_1934.y, (uint8_t)(safe_sub_func_int16_t_s_s((safe_mod_func_int32_t_s_s((p_2041->g_1496.f1 >= (0L >= 0x6CC8533BL)), ((*p_2041->g_65) ^= (safe_sub_func_uint16_t_u_u((&p_2041->g_771 == &p_2041->g_771), ((safe_mod_func_uint64_t_u_u((((l_1934.x , l_1949) != ((*l_1950) = l_1949)) , p_2041->g_1135.x), p_2041->g_1257.s7)) , p_15)))))), l_1940.x))))).s63, ((VECTOR(uint8_t, 2))(0x2CL)), ((VECTOR(uint8_t, 2))(0xE3L))))) + ((VECTOR(uint8_t, 2))(0UL))))).xyyxyyyy, ((VECTOR(uint8_t, 8))(0x77L))))).s02 + ((VECTOR(uint16_t, 2))(0x4F9BL))))), 65535UL, 4UL)).wwxzwywy)))))), ((VECTOR(uint16_t, 8))(5UL))))).s0127735613112505))).odd + ((VECTOR(uint16_t, 8))(0UL))))).s5 <= p_14), ((VECTOR(int32_t, 8))(0x798E1627L)), ((VECTOR(int32_t, 4))(0x670A20FCL)))).s249a && ((VECTOR(int32_t, 4))(9L))))).even, ((VECTOR(int32_t, 2))(0x3593A661L)), ((VECTOR(int32_t, 2))((-8L)))))).odd)
    { /* block id: 609 */
        VECTOR(uint16_t, 16) l_1959 = (VECTOR(uint16_t, 16))(0x788BL, (VECTOR(uint16_t, 4))(0x788BL, (VECTOR(uint16_t, 2))(0x788BL, 1UL), 1UL), 1UL, 0x788BL, 1UL, (VECTOR(uint16_t, 2))(0x788BL, 1UL), (VECTOR(uint16_t, 2))(0x788BL, 1UL), 0x788BL, 1UL, 0x788BL, 1UL);
        uint16_t *l_1962 = (void*)0;
        VECTOR(uint16_t, 4) l_1974 = (VECTOR(uint16_t, 4))(65533UL, (VECTOR(uint16_t, 2))(65533UL, 2UL), 2UL);
        VECTOR(uint16_t, 4) l_1975 = (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 65529UL), 65529UL);
        VECTOR(uint16_t, 4) l_1982 = (VECTOR(uint16_t, 4))(65527UL, (VECTOR(uint16_t, 2))(65527UL, 0xBB46L), 0xBB46L);
        uint64_t *l_1990 = &p_2041->g_632;
        uint64_t *l_1992 = &p_2041->g_632;
        uint64_t **l_1991 = &l_1992;
        int64_t *l_1997 = (void*)0;
        int64_t *l_1998 = (void*)0;
        int64_t *l_1999 = (void*)0;
        int64_t *l_2000 = (void*)0;
        int i;
        (*p_2041->g_64) = (((VECTOR(uint32_t, 4))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 4),((VECTOR(uint32_t, 8))(upsample(((VECTOR(uint16_t, 2))(sub_sat(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))(0x86E2L, 0x8891L)).xxxx + ((VECTOR(uint16_t, 2))(65535UL, 7UL)).xxxx))).lo, ((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 16))(l_1954.yxxyyyxxxyxxxyxx)) | ((VECTOR(uint16_t, 2))(0x92D2L, 0x6DB5L)).yyxxxyxyyxxyyyyy))).s02))).xxyyxyxx, ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 4))(max(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(1UL, 0x3B26L)), 9UL, 1UL)), ((VECTOR(uint16_t, 4))(0x8785L, ((VECTOR(uint16_t, 2))(l_1959.sb2)), 0x746FL))))).ywwxxwwz - ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 8))((l_1963.y = p_13), 0x75B0L, (safe_unary_minus_func_int64_t_s(l_1959.sb)), 65535UL, 5UL, 65535UL, 0xFD6EL, 0x6738L)).s76 << ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))(0UL, ((VECTOR(uint16_t, 2))(0UL, 0xD180L)), 0xE726L)).hi * ((VECTOR(uint16_t, 16))(mad_hi(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(65535UL, 65528UL)), 7UL, 0UL)).xyxxzwyyxxwxwxxx, ((VECTOR(uint16_t, 2))(0xBBDFL, 0xEC37L)).xxxxyyxyyxyxyxxx, ((VECTOR(uint16_t, 2))(0x37F8L, 0UL)).xyyxyyxyyxxyxxxx))).sf0)))))).yxyyxxyy))) + ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 2))(65534UL, 0xCB0CL)).xyxyxyxyyxyyxyxy + ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))(p_2041->g_1971.yyyy)).hi | ((VECTOR(uint16_t, 8))(sub_sat(((VECTOR(uint16_t, 2))(safe_clamp_func(VECTOR(uint16_t, 2),VECTOR(uint16_t, 2),((VECTOR(uint16_t, 2))(0x37D6L, 0x5B38L)), ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 4))(l_1974.zzyy)).ywxywzww + ((VECTOR(uint16_t, 8))(l_1975.wyzxzzwy))))).s74, ((VECTOR(uint16_t, 16))(0UL, (!((safe_lshift_func_uint16_t_u_u((safe_mod_func_uint32_t_u_u((((VECTOR(int32_t, 16))(l_1980.yxxxyyxxxxxyyxxx)).s6 , l_1959.s0), (**p_2041->g_64))), 1)) == (!l_1954.x))), 0x9536L, ((VECTOR(uint16_t, 2))(65535UL, 0x35F5L)), ((VECTOR(uint16_t, 16))(l_1981.xyxxxyyyxyxyxxxy)).s7, l_1975.y, ((VECTOR(uint16_t, 2))(7UL, 0UL)), ((VECTOR(uint16_t, 4))(l_1982.xyxw)), ((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(p_2041->g_1983.se5b9)).xyzzwyxy != ((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(p_2041->g_1984.yyxxxxxy)).s65 && ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))(p_2041->g_1985.s56140245)).hi && ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(p_2041->g_1986.s0107)).hi == ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_1987.xy)), ((VECTOR(int32_t, 8))((safe_rshift_func_int16_t_s_u((((p_2041->g_1358[7][1] = l_1990) == ((*l_1991) = &p_2041->g_632)) || (((l_1987.y = (safe_rshift_func_uint16_t_u_u((safe_sub_func_int64_t_s_s(p_13, GROUP_DIVERGE(0, 1))), p_14))) != 0L) <= l_1982.y)), 9)), 0x66349549L, ((VECTOR(int32_t, 4))(0x754648E5L)), 0x5FA5FF65L, 5L)), (*p_2041->g_65), (-1L), 9L, 1L, 1L, 0x14CCD08AL)).s48))).xxyy))).hi))).xyyy, ((VECTOR(int32_t, 4))(0x70E6EE9CL)), ((VECTOR(int32_t, 4))(0x16952F92L))))).ywywyxww && ((VECTOR(int32_t, 8))((-10L)))))).s11, ((VECTOR(int32_t, 2))((-1L))), ((VECTOR(int32_t, 2))(0x4E8A97BBL))))).xyxx, ((VECTOR(int32_t, 4))(0x73302C10L)), ((VECTOR(int32_t, 4))(0L))))).zzxywzzzzzzzxwzy > ((VECTOR(int32_t, 16))(0x683854BCL))))).s38b6, ((VECTOR(int32_t, 4))(0L)), ((VECTOR(int32_t, 4))(0x42CFCF38L))))).xywyyyyy))).s6 | 0x301F7C64L) != p_13), 65535UL, 0xD513L)).sd3))).xyyyxxxy, ((VECTOR(uint16_t, 8))(65535UL))))).s56))).yxxyyyyyxyyxyyyy))).sbe >> ((VECTOR(uint16_t, 2))(0xC12EL))))).yyxyxxyy)))))).even, ((VECTOR(uint32_t, 4))(0xDF8BF003L))))).z , (void*)0);
    }
    else
    { /* block id: 615 */
        int32_t *l_2003 = &p_2041->g_38[7];
        int16_t **l_2034[3][10][5] = {{{&p_2041->g_130[3][5][5],&p_2041->g_130[3][5][5],&p_2041->g_130[1][4][0],(void*)0,&p_2041->g_130[1][2][6]},{&p_2041->g_130[3][5][5],&p_2041->g_130[3][5][5],&p_2041->g_130[1][4][0],(void*)0,&p_2041->g_130[1][2][6]},{&p_2041->g_130[3][5][5],&p_2041->g_130[3][5][5],&p_2041->g_130[1][4][0],(void*)0,&p_2041->g_130[1][2][6]},{&p_2041->g_130[3][5][5],&p_2041->g_130[3][5][5],&p_2041->g_130[1][4][0],(void*)0,&p_2041->g_130[1][2][6]},{&p_2041->g_130[3][5][5],&p_2041->g_130[3][5][5],&p_2041->g_130[1][4][0],(void*)0,&p_2041->g_130[1][2][6]},{&p_2041->g_130[3][5][5],&p_2041->g_130[3][5][5],&p_2041->g_130[1][4][0],(void*)0,&p_2041->g_130[1][2][6]},{&p_2041->g_130[3][5][5],&p_2041->g_130[3][5][5],&p_2041->g_130[1][4][0],(void*)0,&p_2041->g_130[1][2][6]},{&p_2041->g_130[3][5][5],&p_2041->g_130[3][5][5],&p_2041->g_130[1][4][0],(void*)0,&p_2041->g_130[1][2][6]},{&p_2041->g_130[3][5][5],&p_2041->g_130[3][5][5],&p_2041->g_130[1][4][0],(void*)0,&p_2041->g_130[1][2][6]},{&p_2041->g_130[3][5][5],&p_2041->g_130[3][5][5],&p_2041->g_130[1][4][0],(void*)0,&p_2041->g_130[1][2][6]}},{{&p_2041->g_130[3][5][5],&p_2041->g_130[3][5][5],&p_2041->g_130[1][4][0],(void*)0,&p_2041->g_130[1][2][6]},{&p_2041->g_130[3][5][5],&p_2041->g_130[3][5][5],&p_2041->g_130[1][4][0],(void*)0,&p_2041->g_130[1][2][6]},{&p_2041->g_130[3][5][5],&p_2041->g_130[3][5][5],&p_2041->g_130[1][4][0],(void*)0,&p_2041->g_130[1][2][6]},{&p_2041->g_130[3][5][5],&p_2041->g_130[3][5][5],&p_2041->g_130[1][4][0],(void*)0,&p_2041->g_130[1][2][6]},{&p_2041->g_130[3][5][5],&p_2041->g_130[3][5][5],&p_2041->g_130[1][4][0],(void*)0,&p_2041->g_130[1][2][6]},{&p_2041->g_130[3][5][5],&p_2041->g_130[3][5][5],&p_2041->g_130[1][4][0],(void*)0,&p_2041->g_130[1][2][6]},{&p_2041->g_130[3][5][5],&p_2041->g_130[3][5][5],&p_2041->g_130[1][4][0],(void*)0,&p_2041->g_130[1][2][6]},{&p_2041->g_130[3][5][5],&p_2041->g_130[3][5][5],&p_2041->g_130[1][4][0],(void*)0,&p_2041->g_130[1][2][6]},{&p_2041->g_130[3][5][5],&p_2041->g_130[3][5][5],&p_2041->g_130[1][4][0],(void*)0,&p_2041->g_130[1][2][6]},{&p_2041->g_130[3][5][5],&p_2041->g_130[3][5][5],&p_2041->g_130[1][4][0],(void*)0,&p_2041->g_130[1][2][6]}},{{&p_2041->g_130[3][5][5],&p_2041->g_130[3][5][5],&p_2041->g_130[1][4][0],(void*)0,&p_2041->g_130[1][2][6]},{&p_2041->g_130[3][5][5],&p_2041->g_130[3][5][5],&p_2041->g_130[1][4][0],(void*)0,&p_2041->g_130[1][2][6]},{&p_2041->g_130[3][5][5],&p_2041->g_130[3][5][5],&p_2041->g_130[1][4][0],(void*)0,&p_2041->g_130[1][2][6]},{&p_2041->g_130[3][5][5],&p_2041->g_130[3][5][5],&p_2041->g_130[1][4][0],(void*)0,&p_2041->g_130[1][2][6]},{&p_2041->g_130[3][5][5],&p_2041->g_130[3][5][5],&p_2041->g_130[1][4][0],(void*)0,&p_2041->g_130[1][2][6]},{&p_2041->g_130[3][5][5],&p_2041->g_130[3][5][5],&p_2041->g_130[1][4][0],(void*)0,&p_2041->g_130[1][2][6]},{&p_2041->g_130[3][5][5],&p_2041->g_130[3][5][5],&p_2041->g_130[1][4][0],(void*)0,&p_2041->g_130[1][2][6]},{&p_2041->g_130[3][5][5],&p_2041->g_130[3][5][5],&p_2041->g_130[1][4][0],(void*)0,&p_2041->g_130[1][2][6]},{&p_2041->g_130[3][5][5],&p_2041->g_130[3][5][5],&p_2041->g_130[1][4][0],(void*)0,&p_2041->g_130[1][2][6]},{&p_2041->g_130[3][5][5],&p_2041->g_130[3][5][5],&p_2041->g_130[1][4][0],(void*)0,&p_2041->g_130[1][2][6]}}};
        int8_t l_2037[4][8] = {{0x45L,0x45L,0x45L,0x45L,0x45L,0x45L,0x45L,0x45L},{0x45L,0x45L,0x45L,0x45L,0x45L,0x45L,0x45L,0x45L},{0x45L,0x45L,0x45L,0x45L,0x45L,0x45L,0x45L,0x45L},{0x45L,0x45L,0x45L,0x45L,0x45L,0x45L,0x45L,0x45L}};
        int i, j, k;
        for (p_2041->g_1898 = (-6); (p_2041->g_1898 != 5); p_2041->g_1898 = safe_add_func_uint16_t_u_u(p_2041->g_1898, 7))
        { /* block id: 618 */
            int32_t **l_2004 = &l_2003;
            (*l_2004) = ((*p_2041->g_185) = l_2003);
            (*p_2041->g_65) = (**l_2004);
            for (p_2041->g_131 = (-15); (p_2041->g_131 >= (-14)); p_2041->g_131 = safe_add_func_int32_t_s_s(p_2041->g_131, 6))
            { /* block id: 624 */
                int16_t l_2031 = (-9L);
                for (p_2041->g_1844.f1 = 3; (p_2041->g_1844.f1 > 4); p_2041->g_1844.f1++)
                { /* block id: 627 */
                    uint32_t l_2023 = 0x942D0C8CL;
                    int32_t l_2032 = (-3L);
                    for (p_13 = 0; (p_13 >= 54); p_13++)
                    { /* block id: 630 */
                        int16_t *l_2016[9][3] = {{(void*)0,&p_2041->g_23,(void*)0},{(void*)0,&p_2041->g_23,(void*)0},{(void*)0,&p_2041->g_23,(void*)0},{(void*)0,&p_2041->g_23,(void*)0},{(void*)0,&p_2041->g_23,(void*)0},{(void*)0,&p_2041->g_23,(void*)0},{(void*)0,&p_2041->g_23,(void*)0},{(void*)0,&p_2041->g_23,(void*)0},{(void*)0,&p_2041->g_23,(void*)0}};
                        uint64_t *l_2024 = &p_2041->g_1048;
                        int i, j;
                        l_2032 = (((safe_add_func_int64_t_s_s((safe_unary_minus_func_int64_t_s(((void*)0 != l_2014[3]))), (((*l_2003) &= ((void*)0 == &p_2041->g_1898)) <= p_13))) , ((((((safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 4))(hadd(((VECTOR(int16_t, 8))(sub_sat(((VECTOR(int16_t, 16))(max(((VECTOR(int16_t, 16))(p_2041->g_2019.yxywyyywzzywwzwx)), (int16_t)((VECTOR(int16_t, 16))(max(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))(add_sat(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(hadd(((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 2))(p_2041->g_2020.yy)).yxxxxyyyyyxxxxyx, ((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))((-1L), ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))((((VECTOR(int16_t, 2))(p_2041->g_2021.sd1)).yyyyyyxxyyxyyyxx && ((VECTOR(int16_t, 8))((((((VECTOR(uint16_t, 16))(p_2041->g_2022.xyyyyyyxyxyyxxyx)).sd && l_2023) , ((((++(*l_2024)) == (0x15A19D07E729D335L < p_2041->g_245.s0)) >= ((safe_add_func_uint8_t_u_u(((safe_sub_func_int64_t_s_s(p_2041->g_2021.s7, p_13)) == p_2041->g_678.x), 0x5AL)) ^ p_14)) , 0UL)) | 0x6CADL), (-8L), 1L, 0x32F0L, l_2031, 0x52E5L, 0x66C8L, (-1L))).s3450054554713215))).odd && ((VECTOR(int16_t, 8))((-1L)))))).s16 && ((VECTOR(int16_t, 2))(0x48BFL))))), 0x2F88L)).odd ^ ((VECTOR(int16_t, 2))(0x32C0L))))).yxxyyxxy, (int16_t)0x0DF5L))).s1715471502722450))).sbc, ((VECTOR(int16_t, 2))(1L))))).xxxyyyxx, ((VECTOR(int16_t, 8))(0x40CDL))))).s57 || ((VECTOR(int16_t, 2))(0x7548L))))).yyxx, ((VECTOR(int16_t, 4))(0x0DBEL))))).odd && ((VECTOR(int16_t, 2))(0x640AL))))).xyyyxyxxyyxxxyxy, ((VECTOR(int16_t, 16))((-4L)))))).s1))).lo, ((VECTOR(int16_t, 8))(0x5AA1L))))).hi, ((VECTOR(int16_t, 4))(0x7C3EL))))).x, 0L)) , 0L) , (*p_2041->g_1616)) != (void*)0) & 0x426BL) | FAKE_DIVERGE(p_2041->group_1_offset, get_group_id(1), 10))) || 0x38F472CEL);
                    }
                }
            }
            return p_15;
        }
        l_2034[1][8][4] = l_2033;
        for (p_15 = (-12); (p_15 < 53); p_15++)
        { /* block id: 642 */
            if (l_2037[2][7])
                break;
        }
    }
    return p_13;
}


/* ------------------------------------------ */
/* 
 * reads : p_2041->g_185 p_2041->g_65 p_2041->g_64 p_2041->g_38 p_2041->g_33 p_2041->g_922 p_2041->g_889
 * writes: p_2041->g_65 p_2041->g_38 p_2041->g_33 p_2041->g_217
 */
int16_t  func_24(uint8_t  p_25, int16_t * p_26, int16_t * p_27, struct S2 * p_2041)
{ /* block id: 480 */
    int64_t l_1639 = 1L;
    VECTOR(uint16_t, 16) l_1646 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x5C06L), 0x5C06L), 0x5C06L, 1UL, 0x5C06L, (VECTOR(uint16_t, 2))(1UL, 0x5C06L), (VECTOR(uint16_t, 2))(1UL, 0x5C06L), 1UL, 0x5C06L, 1UL, 0x5C06L);
    uint32_t *l_1659[1];
    int32_t l_1663 = 0x1B15C919L;
    int32_t l_1664 = (-8L);
    int32_t *l_1666 = &l_1663;
    VECTOR(uint64_t, 16) l_1680 = (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x0157D12BF772601FL), 0x0157D12BF772601FL), 0x0157D12BF772601FL, 18446744073709551615UL, 0x0157D12BF772601FL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x0157D12BF772601FL), (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x0157D12BF772601FL), 18446744073709551615UL, 0x0157D12BF772601FL, 18446744073709551615UL, 0x0157D12BF772601FL);
    int32_t l_1702 = 0x235562BDL;
    int32_t l_1703 = (-7L);
    VECTOR(int8_t, 2) l_1750 = (VECTOR(int8_t, 2))(0x1EL, 0x67L);
    VECTOR(int8_t, 8) l_1751 = (VECTOR(int8_t, 8))((-4L), (VECTOR(int8_t, 4))((-4L), (VECTOR(int8_t, 2))((-4L), 1L), 1L), 1L, (-4L), 1L);
    int64_t l_1753 = 0x5BE1C3AE3D850CC9L;
    VECTOR(int16_t, 2) l_1778 = (VECTOR(int16_t, 2))(0x32B0L, 0x4EB1L);
    VECTOR(int16_t, 16) l_1780 = (VECTOR(int16_t, 16))((-9L), (VECTOR(int16_t, 4))((-9L), (VECTOR(int16_t, 2))((-9L), 0x3491L), 0x3491L), 0x3491L, (-9L), 0x3491L, (VECTOR(int16_t, 2))((-9L), 0x3491L), (VECTOR(int16_t, 2))((-9L), 0x3491L), (-9L), 0x3491L, (-9L), 0x3491L);
    VECTOR(int32_t, 4) l_1814 = (VECTOR(int32_t, 4))(0x24B54114L, (VECTOR(int32_t, 2))(0x24B54114L, 0x14FFD814L), 0x14FFD814L);
    VECTOR(int16_t, 4) l_1816 = (VECTOR(int16_t, 4))(5L, (VECTOR(int16_t, 2))(5L, 0x4840L), 0x4840L);
    VECTOR(uint16_t, 4) l_1830 = (VECTOR(uint16_t, 4))(0x8D58L, (VECTOR(uint16_t, 2))(0x8D58L, 65534UL), 65534UL);
    VECTOR(uint16_t, 8) l_1833 = (VECTOR(uint16_t, 8))(65532UL, (VECTOR(uint16_t, 4))(65532UL, (VECTOR(uint16_t, 2))(65532UL, 65527UL), 65527UL), 65527UL, 65532UL, 65527UL);
    struct S0 *l_1843 = &p_2041->g_1844;
    struct S0 **l_1842[6][7] = {{(void*)0,&l_1843,&l_1843,(void*)0,&l_1843,&l_1843,&l_1843},{(void*)0,&l_1843,&l_1843,(void*)0,&l_1843,&l_1843,&l_1843},{(void*)0,&l_1843,&l_1843,(void*)0,&l_1843,&l_1843,&l_1843},{(void*)0,&l_1843,&l_1843,(void*)0,&l_1843,&l_1843,&l_1843},{(void*)0,&l_1843,&l_1843,(void*)0,&l_1843,&l_1843,&l_1843},{(void*)0,&l_1843,&l_1843,(void*)0,&l_1843,&l_1843,&l_1843}};
    uint32_t l_1848 = 0x10F657D2L;
    int64_t l_1882[8][7][4] = {{{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L}},{{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L}},{{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L}},{{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L}},{{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L}},{{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L}},{{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L}},{{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L},{8L,0x062AD804953C472DL,0x3031DE9004F71531L,0x7336F0E25250D909L}}};
    VECTOR(int8_t, 16) l_1895 = (VECTOR(int8_t, 16))(3L, (VECTOR(int8_t, 4))(3L, (VECTOR(int8_t, 2))(3L, 0x04L), 0x04L), 0x04L, 3L, 0x04L, (VECTOR(int8_t, 2))(3L, 0x04L), (VECTOR(int8_t, 2))(3L, 0x04L), 3L, 0x04L, 3L, 0x04L);
    VECTOR(int8_t, 8) l_1910 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 5L), 5L), 5L, (-1L), 5L);
    VECTOR(int8_t, 8) l_1913 = (VECTOR(int8_t, 8))(0x4BL, (VECTOR(int8_t, 4))(0x4BL, (VECTOR(int8_t, 2))(0x4BL, 0L), 0L), 0L, 0x4BL, 0L);
    VECTOR(int8_t, 16) l_1921 = (VECTOR(int8_t, 16))(0x63L, (VECTOR(int8_t, 4))(0x63L, (VECTOR(int8_t, 2))(0x63L, 0x10L), 0x10L), 0x10L, 0x63L, 0x10L, (VECTOR(int8_t, 2))(0x63L, 0x10L), (VECTOR(int8_t, 2))(0x63L, 0x10L), 0x63L, 0x10L, 0x63L, 0x10L);
    uint64_t *l_1923[4] = {&p_2041->g_632,&p_2041->g_632,&p_2041->g_632,&p_2041->g_632};
    uint32_t l_1928 = 1UL;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_1659[i] = &p_2041->g_1239[1][4].f1;
    (*p_2041->g_185) = (*p_2041->g_185);
    (**p_2041->g_64) = 1L;
    l_1639 ^= (**p_2041->g_185);
    for (p_2041->g_33 = 0; (p_2041->g_33 == 1); p_2041->g_33++)
    { /* block id: 486 */
        uint32_t *l_1651 = (void*)0;
        int32_t l_1660 = 0x6C9B051FL;
        int64_t *l_1661 = (void*)0;
        int64_t *l_1662[3][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        int32_t *l_1674[9][4] = {{&p_2041->g_52,&p_2041->g_52,&p_2041->g_218,&p_2041->g_38[3]},{&p_2041->g_52,&p_2041->g_52,&p_2041->g_218,&p_2041->g_38[3]},{&p_2041->g_52,&p_2041->g_52,&p_2041->g_218,&p_2041->g_38[3]},{&p_2041->g_52,&p_2041->g_52,&p_2041->g_218,&p_2041->g_38[3]},{&p_2041->g_52,&p_2041->g_52,&p_2041->g_218,&p_2041->g_38[3]},{&p_2041->g_52,&p_2041->g_52,&p_2041->g_218,&p_2041->g_38[3]},{&p_2041->g_52,&p_2041->g_52,&p_2041->g_218,&p_2041->g_38[3]},{&p_2041->g_52,&p_2041->g_52,&p_2041->g_218,&p_2041->g_38[3]},{&p_2041->g_52,&p_2041->g_52,&p_2041->g_218,&p_2041->g_38[3]}};
        VECTOR(int32_t, 2) l_1677 = (VECTOR(int32_t, 2))(8L, 0x4CC5858EL);
        VECTOR(int16_t, 2) l_1681 = (VECTOR(int16_t, 2))(0L, 1L);
        int64_t **l_1687[7][9] = {{&l_1662[1][5],&l_1662[0][1],(void*)0,&l_1661,(void*)0,&l_1662[1][5],&l_1661,(void*)0,&l_1661},{&l_1662[1][5],&l_1662[0][1],(void*)0,&l_1661,(void*)0,&l_1662[1][5],&l_1661,(void*)0,&l_1661},{&l_1662[1][5],&l_1662[0][1],(void*)0,&l_1661,(void*)0,&l_1662[1][5],&l_1661,(void*)0,&l_1661},{&l_1662[1][5],&l_1662[0][1],(void*)0,&l_1661,(void*)0,&l_1662[1][5],&l_1661,(void*)0,&l_1661},{&l_1662[1][5],&l_1662[0][1],(void*)0,&l_1661,(void*)0,&l_1662[1][5],&l_1661,(void*)0,&l_1661},{&l_1662[1][5],&l_1662[0][1],(void*)0,&l_1661,(void*)0,&l_1662[1][5],&l_1661,(void*)0,&l_1661},{&l_1662[1][5],&l_1662[0][1],(void*)0,&l_1661,(void*)0,&l_1662[1][5],&l_1661,(void*)0,&l_1661}};
        uint32_t ****l_1713 = &p_2041->g_1615;
        VECTOR(uint16_t, 8) l_1720 = (VECTOR(uint16_t, 8))(0x7912L, (VECTOR(uint16_t, 4))(0x7912L, (VECTOR(uint16_t, 2))(0x7912L, 1UL), 1UL), 1UL, 0x7912L, 1UL);
        uint32_t l_1723 = 1UL;
        uint32_t l_1770 = 0x6FF4E8F3L;
        uint32_t **l_1795 = &l_1659[0];
        VECTOR(int32_t, 16) l_1813 = (VECTOR(int32_t, 16))((-9L), (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 0x7C70AB22L), 0x7C70AB22L), 0x7C70AB22L, (-9L), 0x7C70AB22L, (VECTOR(int32_t, 2))((-9L), 0x7C70AB22L), (VECTOR(int32_t, 2))((-9L), 0x7C70AB22L), (-9L), 0x7C70AB22L, (-9L), 0x7C70AB22L);
        VECTOR(uint16_t, 4) l_1832 = (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 65529UL), 65529UL);
        int32_t *l_1871[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t **l_1870 = &l_1871[3];
        uint8_t l_1888 = 0x21L;
        uint32_t l_1903 = 4294967288UL;
        VECTOR(int8_t, 8) l_1919 = (VECTOR(int8_t, 8))(0x30L, (VECTOR(int8_t, 4))(0x30L, (VECTOR(int8_t, 2))(0x30L, 0x0DL), 0x0DL), 0x0DL, 0x30L, 0x0DL);
        int i, j;
        l_1664 |= (safe_rshift_func_int16_t_s_s(((safe_add_func_uint16_t_u_u(0xB4D0L, ((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 16))(safe_clamp_func(VECTOR(uint16_t, 16),uint16_t,((VECTOR(uint16_t, 8))(l_1646.s02b44b4e)).s3046074740036342, (uint16_t)(p_25 | (safe_mul_func_int16_t_s_s((safe_sub_func_uint32_t_u_u((((l_1651 == (void*)0) , (safe_sub_func_int32_t_s_s((safe_add_func_int64_t_s_s(p_2041->g_1539.f1, (p_2041->g_402.x = (p_2041->g_1535.s3 &= ((l_1663 = (safe_sub_func_uint8_t_u_u(l_1646.sb, ((GROUP_DIVERGE(2, 1) != (((safe_unary_minus_func_uint32_t_u(p_25)) , (((*p_2041->g_845) = (*p_2041->g_845)) != l_1659[0])) != l_1660)) & p_2041->g_399.s9)))) ^ l_1660))))), (**p_2041->g_185)))) ^ l_1660), l_1660)), l_1660))), (uint16_t)65535UL))) | ((VECTOR(uint16_t, 16))(0xE929L))))).sd)) && 0x7EDAL), 14));
        if (p_25)
        { /* block id: 492 */
            int32_t *l_1665 = &p_2041->g_38[1];
            (*p_2041->g_185) = (l_1666 = l_1665);
        }
        else
        { /* block id: 495 */
            int64_t l_1667 = 2L;
            return l_1667;
        }
        for (p_2041->g_217 = 0; (p_2041->g_217 <= (-20)); p_2041->g_217 = safe_sub_func_int32_t_s_s(p_2041->g_217, 4))
        { /* block id: 500 */
            (**p_2041->g_185) = (safe_mod_func_int32_t_s_s(p_25, ((safe_mod_func_uint32_t_u_u(p_25, 0x5E42558AL)) ^ ((p_2041->g_922.s2 & p_2041->g_889.s1) && ((void*)0 == &l_1651)))));
        }
    }
    return l_1928;
}


/* ------------------------------------------ */
/* 
 * reads : p_2041->g_33 p_2041->g_1637 p_2041->g_64 p_2041->g_65 p_2041->g_38 p_2041->g_185
 * writes: p_2041->g_33 p_2041->g_38
 */
int16_t * func_28(uint16_t  p_29, struct S2 * p_2041)
{ /* block id: 6 */
    int32_t **l_30 = (void*)0;
    int32_t *l_32 = &p_2041->g_33;
    int32_t **l_31 = &l_32;
    int32_t l_1404 = 0L;
    int32_t l_1407[1][4];
    VECTOR(uint16_t, 16) l_1438 = (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x85EFL), 0x85EFL), 0x85EFL, 65535UL, 0x85EFL, (VECTOR(uint16_t, 2))(65535UL, 0x85EFL), (VECTOR(uint16_t, 2))(65535UL, 0x85EFL), 65535UL, 0x85EFL, 65535UL, 0x85EFL);
    uint64_t *l_1447[1][3][3];
    int64_t l_1461[8][6][5] = {{{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)}},{{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)}},{{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)}},{{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)}},{{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)}},{{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)}},{{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)}},{{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)},{(-3L),2L,0x5AF4AE2A6E615DCDL,0x281FAF9357814B81L,(-3L)}}};
    struct S0 *l_1493 = (void*)0;
    uint32_t l_1500 = 0xD4DD20BEL;
    VECTOR(uint8_t, 4) l_1507 = (VECTOR(uint8_t, 4))(0x5BL, (VECTOR(uint8_t, 2))(0x5BL, 0xA9L), 0xA9L);
    VECTOR(int32_t, 2) l_1518 = (VECTOR(int32_t, 2))(0x3AADFD4CL, (-1L));
    VECTOR(int32_t, 8) l_1529 = (VECTOR(int32_t, 8))(0x57236438L, (VECTOR(int32_t, 4))(0x57236438L, (VECTOR(int32_t, 2))(0x57236438L, 0x4A0F1890L), 0x4A0F1890L), 0x4A0F1890L, 0x57236438L, 0x4A0F1890L);
    int8_t l_1562[5];
    uint16_t l_1566 = 1UL;
    int16_t *l_1638 = (void*)0;
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 4; j++)
            l_1407[i][j] = 0x063FD501L;
    }
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 3; k++)
                l_1447[i][j][k] = &p_2041->g_632;
        }
    }
    for (i = 0; i < 5; i++)
        l_1562[i] = 0x5BL;
    (*l_31) = (void*)0;
    for (p_29 = 0; (p_29 == 8); p_29 = safe_add_func_int16_t_s_s(p_29, 9))
    { /* block id: 10 */
        uint16_t l_1394 = 7UL;
        int32_t l_1399 = 1L;
        int32_t l_1400 = 0x63116E1FL;
        int32_t l_1410 = 4L;
        VECTOR(int32_t, 4) l_1413 = (VECTOR(int32_t, 4))(0x7E532361L, (VECTOR(int32_t, 2))(0x7E532361L, 0x6B41ECE9L), 0x6B41ECE9L);
        int8_t l_1445 = (-1L);
        int16_t ***l_1478 = &p_2041->g_270;
        int8_t l_1491 = 0x0DL;
        VECTOR(int16_t, 4) l_1497 = (VECTOR(int16_t, 4))(0x175FL, (VECTOR(int16_t, 2))(0x175FL, 0x6B34L), 0x6B34L);
        uint32_t ***l_1542 = &p_2041->g_845;
        VECTOR(int32_t, 4) l_1543 = (VECTOR(int32_t, 4))(0x47B7A37BL, (VECTOR(int32_t, 2))(0x47B7A37BL, 1L), 1L);
        int64_t **l_1594 = (void*)0;
        int64_t ***l_1593 = &l_1594;
        int32_t *l_1603 = (void*)0;
        uint32_t ***l_1621 = &p_2041->g_1616;
        int i;
        for (p_2041->g_33 = 9; (p_2041->g_33 < (-23)); p_2041->g_33 = safe_sub_func_int32_t_s_s(p_2041->g_33, 2))
        { /* block id: 13 */
            int64_t l_1403[4][10][4] = {{{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL}},{{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL}},{{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL}},{{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL},{0x0EDE194DCE99B2AAL,0x54980F2EA2DE517EL,0L,0x3314F8372E7C40CAL}}};
            int32_t l_1405 = 0x275E6E3CL;
            int32_t l_1408 = 0x4D993B6CL;
            int32_t l_1409[9];
            int8_t l_1412 = 0x60L;
            VECTOR(uint16_t, 4) l_1425 = (VECTOR(uint16_t, 4))(0xD100L, (VECTOR(uint16_t, 2))(0xD100L, 65527UL), 65527UL);
            uint64_t *l_1448 = &p_2041->g_632;
            int32_t l_1465 = 7L;
            uint32_t l_1469 = 0x51A0EF7DL;
            uint32_t **l_1514 = (void*)0;
            uint16_t *l_1515 = (void*)0;
            uint16_t *l_1516 = &p_2041->g_150;
            uint32_t l_1556 = 6UL;
            int i, j, k;
            for (i = 0; i < 9; i++)
                l_1409[i] = 0x2649B5F6L;
            for (p_2041->g_38[7] = 0; (p_2041->g_38[7] >= 18); ++p_2041->g_38[7])
            { /* block id: 16 */
                int64_t l_1401 = (-1L);
                int32_t l_1406 = 0x13521B8AL;
                int32_t l_1411[3];
                uint64_t l_1414 = 0UL;
                VECTOR(uint16_t, 2) l_1439 = (VECTOR(uint16_t, 2))(0xFF3AL, 0x8621L);
                VECTOR(uint8_t, 16) l_1444 = (VECTOR(uint8_t, 16))(250UL, (VECTOR(uint8_t, 4))(250UL, (VECTOR(uint8_t, 2))(250UL, 0xBBL), 0xBBL), 0xBBL, 250UL, 0xBBL, (VECTOR(uint8_t, 2))(250UL, 0xBBL), (VECTOR(uint8_t, 2))(250UL, 0xBBL), 250UL, 0xBBL, 250UL, 0xBBL);
                int32_t *l_1450[8] = {&l_1407[0][0],&l_1407[0][0],&l_1407[0][0],&l_1407[0][0],&l_1407[0][0],&l_1407[0][0],&l_1407[0][0],&l_1407[0][0]};
                int i;
                for (i = 0; i < 3; i++)
                    l_1411[i] = 0x5A0C6B4FL;
                (1 + 1);
            }
        }
        if (p_29)
            break;
        if (p_2041->g_1637[6])
            break;
        if ((**p_2041->g_64))
            break;
    }
    (*l_31) = (*p_2041->g_185);
    return l_1638;
}


/* ------------------------------------------ */
/* 
 * reads : p_2041->g_38 p_2041->g_33 p_2041->g_64 p_2041->g_3 p_2041->g_52 p_2041->g_65 p_2041->g_88 p_2041->g_130 p_2041->g_119 p_2041->g_150 p_2041->g_158 p_2041->g_171 p_2041->g_131 p_2041->g_127 p_2041->g_84 p_2041->g_170 p_2041->g_219 p_2041->g_122 p_2041->g_218 p_2041->g_230 p_2041->g_236 p_2041->g_244 p_2041->g_245 p_2041->g_247 p_2041->g_294 p_2041->g_497 p_2041->g_665 p_2041->g_595 p_2041->g_678 p_2041->g_185 p_2041->g_402 p_2041->g_358 p_2041->g_689 p_2041->g_704 p_2041->g_399 p_2041->g_355 p_2041->g_723 p_2041->g_605 p_2041->g_757 p_2041->g_353 p_2041->g_770 p_2041->g_632 p_2041->g_464 p_2041->g_758 p_2041->g_583 p_2041->g_845 p_2041->g_368 p_2041->g_217 p_2041->g_868 p_2041->g_871 p_2041->g_872 p_2041->g_624 p_2041->g_889 p_2041->g_909 p_2041->g_269 p_2041->g_270 p_2041->g_941 p_2041->g_949 p_2041->g_951 p_2041->g_982 p_2041->g_989 p_2041->g_1048 p_2041->g_1135 p_2041->g_1137 p_2041->g_1148 p_2041->g_1149 p_2041->g_1154 p_2041->g_1155 p_2041->g_1158 p_2041->g_1165 p_2041->g_1171 p_2041->g_1096 p_2041->g_1194 p_2041->g_1214 p_2041->g_1222 p_2041->g_1223 p_2041->g_1268 p_2041->g_1276 p_2041->g_535 p_2041->g_1344 p_2041->g_1346 p_2041->g_1348 p_2041->g_561 p_2041->g_1352 p_2041->g_1384 p_2041->g_1309 p_2041->g_1257 p_2041->g_1310 p_2041->g_1322
 * writes: p_2041->g_52 p_2041->g_65 p_2041->g_88 p_2041->g_122 p_2041->g_150 p_2041->g_158 p_2041->g_170 p_2041->g_131 p_2041->g_84 p_2041->g_185 p_2041->g_171 p_2041->g_219 p_2041->g_218 p_2041->g_368 p_2041->g_605 p_2041->g_632 p_2041->g_583 p_2041->g_236 p_2041->g_845 p_2041->g_217 p_2041->g_758 p_2041->g_678 p_2041->g_872 p_2041->g_665 p_2041->g_1048 p_2041->g_1149 p_2041->g_119 p_2041->g_1268 p_2041->g_1214
 */
int8_t  func_45(int32_t * p_46, uint8_t  p_47, struct S2 * p_2041)
{ /* block id: 18 */
    int32_t l_48 = (-1L);
    int32_t *l_807 = &p_2041->g_38[7];
    int32_t l_1023 = (-1L);
    int32_t l_1024 = 0x74B7614BL;
    int32_t l_1025 = 0L;
    int16_t l_1026 = 4L;
    int32_t l_1027 = (-1L);
    int32_t l_1028 = 0x7B0C3208L;
    int16_t l_1029 = 0x41ABL;
    int32_t l_1031 = 0x209B1C83L;
    int32_t l_1032 = 0x1C38064DL;
    int32_t l_1033 = 0L;
    int32_t l_1034 = 0x4E12C6DEL;
    int32_t l_1035 = 1L;
    int32_t l_1036 = 0x2E34CFEAL;
    int32_t l_1037 = 0x5121F455L;
    int32_t l_1038 = 1L;
    int32_t l_1039 = 1L;
    int32_t l_1040 = 1L;
    int32_t l_1042 = 0x7267502BL;
    int32_t l_1043 = (-1L);
    int32_t l_1044 = 0L;
    int32_t l_1045 = 0x2520A450L;
    int32_t l_1046 = 0x1419A277L;
    int32_t l_1047 = 0L;
    VECTOR(int64_t, 4) l_1069 = (VECTOR(int64_t, 4))(0x054440A704E404F0L, (VECTOR(int64_t, 2))(0x054440A704E404F0L, 1L), 1L);
    VECTOR(int32_t, 4) l_1071 = (VECTOR(int32_t, 4))(0x7C4184DEL, (VECTOR(int32_t, 2))(0x7C4184DEL, 0L), 0L);
    VECTOR(int16_t, 16) l_1072 = (VECTOR(int16_t, 16))(8L, (VECTOR(int16_t, 4))(8L, (VECTOR(int16_t, 2))(8L, (-1L)), (-1L)), (-1L), 8L, (-1L), (VECTOR(int16_t, 2))(8L, (-1L)), (VECTOR(int16_t, 2))(8L, (-1L)), 8L, (-1L), 8L, (-1L));
    VECTOR(uint16_t, 8) l_1082 = (VECTOR(uint16_t, 8))(8UL, (VECTOR(uint16_t, 4))(8UL, (VECTOR(uint16_t, 2))(8UL, 65530UL), 65530UL), 65530UL, 8UL, 65530UL);
    VECTOR(uint8_t, 2) l_1110 = (VECTOR(uint8_t, 2))(1UL, 0xF3L);
    VECTOR(uint8_t, 8) l_1111 = (VECTOR(uint8_t, 8))(0x3CL, (VECTOR(uint8_t, 4))(0x3CL, (VECTOR(uint8_t, 2))(0x3CL, 0xC5L), 0xC5L), 0xC5L, 0x3CL, 0xC5L);
    uint16_t l_1122 = 0x6427L;
    VECTOR(int16_t, 16) l_1133 = (VECTOR(int16_t, 16))(0x34F1L, (VECTOR(int16_t, 4))(0x34F1L, (VECTOR(int16_t, 2))(0x34F1L, 0x7628L), 0x7628L), 0x7628L, 0x34F1L, 0x7628L, (VECTOR(int16_t, 2))(0x34F1L, 0x7628L), (VECTOR(int16_t, 2))(0x34F1L, 0x7628L), 0x34F1L, 0x7628L, 0x34F1L, 0x7628L);
    VECTOR(int16_t, 8) l_1134 = (VECTOR(int16_t, 8))(0x067FL, (VECTOR(int16_t, 4))(0x067FL, (VECTOR(int16_t, 2))(0x067FL, 1L), 1L), 1L, 0x067FL, 1L);
    uint64_t *l_1145 = &p_2041->g_632;
    VECTOR(int8_t, 2) l_1150 = (VECTOR(int8_t, 2))((-1L), (-10L));
    VECTOR(int8_t, 16) l_1151 = (VECTOR(int8_t, 16))(0x41L, (VECTOR(int8_t, 4))(0x41L, (VECTOR(int8_t, 2))(0x41L, 0x1CL), 0x1CL), 0x1CL, 0x41L, 0x1CL, (VECTOR(int8_t, 2))(0x41L, 0x1CL), (VECTOR(int8_t, 2))(0x41L, 0x1CL), 0x41L, 0x1CL, 0x41L, 0x1CL);
    VECTOR(int8_t, 2) l_1156 = (VECTOR(int8_t, 2))(0x0DL, 0x02L);
    VECTOR(int8_t, 8) l_1157 = (VECTOR(int8_t, 8))((-5L), (VECTOR(int8_t, 4))((-5L), (VECTOR(int8_t, 2))((-5L), 0x2BL), 0x2BL), 0x2BL, (-5L), 0x2BL);
    VECTOR(int8_t, 8) l_1164 = (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x3AL), 0x3AL), 0x3AL, 0L, 0x3AL);
    VECTOR(int8_t, 8) l_1166 = (VECTOR(int8_t, 8))((-8L), (VECTOR(int8_t, 4))((-8L), (VECTOR(int8_t, 2))((-8L), 0x18L), 0x18L), 0x18L, (-8L), 0x18L);
    VECTOR(int8_t, 2) l_1168 = (VECTOR(int8_t, 2))(0x36L, 0L);
    VECTOR(uint16_t, 2) l_1172 = (VECTOR(uint16_t, 2))(0x202CL, 0x5534L);
    VECTOR(int32_t, 2) l_1180 = (VECTOR(int32_t, 2))(0x13C6ED3AL, 0x78B83285L);
    VECTOR(uint8_t, 2) l_1188 = (VECTOR(uint8_t, 2))(5UL, 0UL);
    VECTOR(int16_t, 16) l_1195 = (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x5244L), 0x5244L), 0x5244L, (-1L), 0x5244L, (VECTOR(int16_t, 2))((-1L), 0x5244L), (VECTOR(int16_t, 2))((-1L), 0x5244L), (-1L), 0x5244L, (-1L), 0x5244L);
    struct S0 *l_1238 = &p_2041->g_1239[1][4];
    uint32_t ***l_1285 = &p_2041->g_845;
    VECTOR(int64_t, 8) l_1312 = (VECTOR(int64_t, 8))((-9L), (VECTOR(int64_t, 4))((-9L), (VECTOR(int64_t, 2))((-9L), 0x2D518E2C85AAC69BL), 0x2D518E2C85AAC69BL), 0x2D518E2C85AAC69BL, (-9L), 0x2D518E2C85AAC69BL);
    int32_t l_1349 = (-1L);
    int8_t l_1380 = 1L;
    int i;
    if ((l_48 , 0x0DA91E53L))
    { /* block id: 19 */
        int32_t **l_78 = &p_2041->g_65;
        int32_t *l_1022[2];
        int16_t l_1030 = (-9L);
        int32_t l_1041 = 0x33E35206L;
        int i;
        for (i = 0; i < 2; i++)
            l_1022[i] = &p_2041->g_52;
        for (p_47 = 0; (p_47 != 39); ++p_47)
        { /* block id: 22 */
            int32_t *l_51 = &p_2041->g_52;
            (*l_51) = p_2041->g_38[7];
            if (p_2041->g_33)
                continue;
        }
        l_78 = func_53(((l_48 > (safe_mul_func_uint8_t_u_u(func_60(p_2041->g_64, l_48, func_66(func_70(p_2041->g_33, p_2041->g_33, (p_2041->g_3 , func_74(((p_2041->g_38[7] < p_2041->g_52) || 0x7DL), l_78, p_2041->g_3, p_2041)), p_2041), p_2041->g_38[5], p_2041->g_119.y, p_2041), p_2041), p_2041->g_464.s4))) && p_47), l_807, (*l_807), p_47, p_2041);
        l_1023 = (-10L);
        p_2041->g_1048++;
    }
    else
    { /* block id: 301 */
        int64_t l_1053[3];
        VECTOR(int64_t, 4) l_1068 = (VECTOR(int64_t, 4))(0x4F832CDB032BB422L, (VECTOR(int64_t, 2))(0x4F832CDB032BB422L, 1L), 1L);
        VECTOR(int64_t, 16) l_1070 = (VECTOR(int64_t, 16))(0x409619A27EC559FAL, (VECTOR(int64_t, 4))(0x409619A27EC559FAL, (VECTOR(int64_t, 2))(0x409619A27EC559FAL, 5L), 5L), 5L, 0x409619A27EC559FAL, 5L, (VECTOR(int64_t, 2))(0x409619A27EC559FAL, 5L), (VECTOR(int64_t, 2))(0x409619A27EC559FAL, 5L), 0x409619A27EC559FAL, 5L, 0x409619A27EC559FAL, 5L);
        VECTOR(uint16_t, 16) l_1076 = (VECTOR(uint16_t, 16))(0x834DL, (VECTOR(uint16_t, 4))(0x834DL, (VECTOR(uint16_t, 2))(0x834DL, 5UL), 5UL), 5UL, 0x834DL, 5UL, (VECTOR(uint16_t, 2))(0x834DL, 5UL), (VECTOR(uint16_t, 2))(0x834DL, 5UL), 0x834DL, 5UL, 0x834DL, 5UL);
        VECTOR(uint8_t, 8) l_1091 = (VECTOR(uint8_t, 8))(0xBEL, (VECTOR(uint8_t, 4))(0xBEL, (VECTOR(uint8_t, 2))(0xBEL, 0UL), 0UL), 0UL, 0xBEL, 0UL);
        int32_t l_1100 = 0L;
        int16_t l_1120 = 0x0E12L;
        uint64_t l_1121 = 18446744073709551606UL;
        int32_t l_1124 = (-3L);
        VECTOR(int16_t, 16) l_1136 = (VECTOR(int16_t, 16))((-6L), (VECTOR(int16_t, 4))((-6L), (VECTOR(int16_t, 2))((-6L), (-5L)), (-5L)), (-5L), (-6L), (-5L), (VECTOR(int16_t, 2))((-6L), (-5L)), (VECTOR(int16_t, 2))((-6L), (-5L)), (-6L), (-5L), (-6L), (-5L));
        VECTOR(int16_t, 4) l_1138 = (VECTOR(int16_t, 4))((-4L), (VECTOR(int16_t, 2))((-4L), (-7L)), (-7L));
        VECTOR(int8_t, 8) l_1146 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x4CL), 0x4CL), 0x4CL, 1L, 0x4CL);
        VECTOR(int8_t, 4) l_1152 = (VECTOR(int8_t, 4))(0x72L, (VECTOR(int8_t, 2))(0x72L, 2L), 2L);
        int64_t l_1159 = 0x37D6299DF7420AA0L;
        VECTOR(int8_t, 4) l_1167 = (VECTOR(int8_t, 4))(0x4FL, (VECTOR(int8_t, 2))(0x4FL, (-1L)), (-1L));
        VECTOR(int16_t, 16) l_1193 = (VECTOR(int16_t, 16))(0x3AFDL, (VECTOR(int16_t, 4))(0x3AFDL, (VECTOR(int16_t, 2))(0x3AFDL, 0L), 0L), 0L, 0x3AFDL, 0L, (VECTOR(int16_t, 2))(0x3AFDL, 0L), (VECTOR(int16_t, 2))(0x3AFDL, 0L), 0x3AFDL, 0L, 0x3AFDL, 0L);
        VECTOR(int16_t, 4) l_1196 = (VECTOR(int16_t, 4))(0x05D9L, (VECTOR(int16_t, 2))(0x05D9L, 6L), 6L);
        uint32_t **l_1206 = (void*)0;
        uint32_t ***l_1205 = &l_1206;
        VECTOR(uint64_t, 16) l_1215 = (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0xA0600DA044F567E5L), 0xA0600DA044F567E5L), 0xA0600DA044F567E5L, 1UL, 0xA0600DA044F567E5L, (VECTOR(uint64_t, 2))(1UL, 0xA0600DA044F567E5L), (VECTOR(uint64_t, 2))(1UL, 0xA0600DA044F567E5L), 1UL, 0xA0600DA044F567E5L, 1UL, 0xA0600DA044F567E5L);
        uint32_t l_1229 = 0x3BF2280EL;
        VECTOR(int8_t, 4) l_1345 = (VECTOR(int8_t, 4))(4L, (VECTOR(int8_t, 2))(4L, 1L), 1L);
        int i;
        for (i = 0; i < 3; i++)
            l_1053[i] = 0x137EABDDCF66BFA8L;
        p_2041->g_218 = (*p_46);
lbl_1373:
        for (l_48 = 11; (l_48 > (-25)); l_48--)
        { /* block id: 305 */
            VECTOR(uint16_t, 16) l_1086 = (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x8B9EL), 0x8B9EL), 0x8B9EL, 0UL, 0x8B9EL, (VECTOR(uint16_t, 2))(0UL, 0x8B9EL), (VECTOR(uint16_t, 2))(0UL, 0x8B9EL), 0UL, 0x8B9EL, 0UL, 0x8B9EL);
            int8_t *l_1099[6][10] = {{(void*)0,(void*)0,(void*)0,&p_2041->g_3,(void*)0,&p_2041->g_3,(void*)0,(void*)0,(void*)0,&p_2041->g_803},{(void*)0,(void*)0,(void*)0,&p_2041->g_3,(void*)0,&p_2041->g_3,(void*)0,(void*)0,(void*)0,&p_2041->g_803},{(void*)0,(void*)0,(void*)0,&p_2041->g_3,(void*)0,&p_2041->g_3,(void*)0,(void*)0,(void*)0,&p_2041->g_803},{(void*)0,(void*)0,(void*)0,&p_2041->g_3,(void*)0,&p_2041->g_3,(void*)0,(void*)0,(void*)0,&p_2041->g_803},{(void*)0,(void*)0,(void*)0,&p_2041->g_3,(void*)0,&p_2041->g_3,(void*)0,(void*)0,(void*)0,&p_2041->g_803},{(void*)0,(void*)0,(void*)0,&p_2041->g_3,(void*)0,&p_2041->g_3,(void*)0,(void*)0,(void*)0,&p_2041->g_803}};
            VECTOR(uint8_t, 4) l_1105 = (VECTOR(uint8_t, 4))(0xFBL, (VECTOR(uint8_t, 2))(0xFBL, 1UL), 1UL);
            int64_t *l_1123[7][7][2] = {{{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0}},{{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0}},{{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0}},{{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0}},{{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0}},{{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0}},{{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0},{&l_1053[2],(void*)0}}};
            uint64_t *l_1144 = &p_2041->g_632;
            uint64_t **l_1143 = &l_1144;
            VECTOR(int8_t, 16) l_1147 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x0FL), 0x0FL), 0x0FL, (-1L), 0x0FL, (VECTOR(int8_t, 2))((-1L), 0x0FL), (VECTOR(int8_t, 2))((-1L), 0x0FL), (-1L), 0x0FL, (-1L), 0x0FL);
            VECTOR(int8_t, 2) l_1153 = (VECTOR(int8_t, 2))((-5L), 0x07L);
            uint16_t *l_1161 = &l_1122;
            uint8_t *l_1173 = (void*)0;
            uint8_t *l_1174 = (void*)0;
            uint8_t *l_1175 = (void*)0;
            uint16_t l_1176 = 65535UL;
            VECTOR(uint16_t, 4) l_1226 = (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0UL), 0UL);
            int8_t l_1235 = 1L;
            VECTOR(uint32_t, 8) l_1249 = (VECTOR(uint32_t, 8))(0x3DB67534L, (VECTOR(uint32_t, 4))(0x3DB67534L, (VECTOR(uint32_t, 2))(0x3DB67534L, 4294967295UL), 4294967295UL), 4294967295UL, 0x3DB67534L, 4294967295UL);
            int i, j, k;
            (*p_2041->g_64) = ((l_1053[0] >= (safe_div_func_uint64_t_u_u(((safe_mul_func_int16_t_s_s(((+(l_1124 = (((safe_mod_func_uint16_t_u_u(((safe_mul_func_int16_t_s_s((safe_mul_func_int16_t_s_s(((safe_sub_func_uint8_t_u_u(FAKE_DIVERGE(p_2041->local_2_offset, get_local_id(2), 10), (!(safe_add_func_int64_t_s_s(((VECTOR(int64_t, 16))(rhadd(((VECTOR(int64_t, 2))(l_1068.xw)).xyxxyxxxxyxyxyxy, ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 8))(l_1069.xxzxwwxx)).even >= ((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))(rotate(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 2))(0x4BA160F104228648L, 1L)) && ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 16))(0x345892F8B63F20D4L, ((VECTOR(int64_t, 4))(l_1070.s8f81)).z, 0x748B9E73AC393D50L, ((VECTOR(int64_t, 4))(mul_hi(((VECTOR(int64_t, 16))(5L, ((VECTOR(int64_t, 4))(7L, ((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 16))(upsample(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 4))(l_1071.yzzz))))), ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 8))(l_1072.s893740a5)).s7724764066737247, ((VECTOR(uint16_t, 16))(sub_sat(((VECTOR(uint16_t, 2))(p_2041->g_1073.yy)).xxxyxyyyyyxxxxxx, ((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 2))(0x27F4L, 0x84F2L)).xyyxxxxyxyxyyyxy + ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 16))(l_1076.s30d539842f23c5db)).hi ^ ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))(p_2041->g_1079.s1474)).hi + ((VECTOR(uint16_t, 16))(rhadd(((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_1082.s35)), 7UL, 65530UL)).yzzwwxxy >> ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))(0xC215L, 65527UL)) >> ((VECTOR(uint16_t, 8))((safe_unary_minus_func_int32_t_s((-1L))), 0xEA31L, ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 8))(sub_sat(((VECTOR(uint16_t, 4))(l_1086.s8bca)).zwywzxxx, ((VECTOR(uint16_t, 2))(abs(((VECTOR(uint16_t, 2))(0xF675L, 0xE1C6L))))).yxyyyyyy))).even ^ ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(upsample(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))(min(((VECTOR(uint8_t, 8))(l_1091.s61327017)), ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 8))(p_47, ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 4))(min(((VECTOR(uint8_t, 4))(p_2041->g_1096.s6041)), (uint8_t)(safe_add_func_uint8_t_u_u(0x4FL, (l_1100 = 6L)))))) - ((VECTOR(uint8_t, 4))(add_sat(((VECTOR(uint8_t, 8))(p_2041->g_1101.wyzzzzzz)).lo, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(p_2041->g_1102.sfc)), 0xA7L, 0x9EL, ((VECTOR(uint8_t, 2))(0xABL, 0xBCL)), 5UL, 0UL)).even)))))), ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))(l_1105.zy)).yyxxyxyx ^ ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))(max(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))(add_sat(((VECTOR(uint8_t, 8))(hadd(((VECTOR(uint8_t, 2))(l_1110.yx)).xxxxxxyx, ((VECTOR(uint8_t, 4))(l_1111.s1142)).yxxzyzzz))).hi, ((VECTOR(uint8_t, 16))((safe_sub_func_uint16_t_u_u(((p_47 < (((safe_mod_func_uint32_t_u_u(p_47, (safe_rshift_func_uint8_t_u_u(((safe_sub_func_uint32_t_u_u((!0xF90D6E25L), p_47)) == 0x44A61CFB9531898BL), p_47)))) <= 0x6E81L) , 1L)) , l_1068.z), 0x7F75L)), 6UL, 0xA3L, p_47, 0xD7L, 0xAEL, 0UL, ((VECTOR(uint8_t, 8))(255UL)), 0x29L)).s866c))).hi + ((VECTOR(uint8_t, 2))(1UL))))), 0x20L, 255UL, 2UL, ((VECTOR(uint8_t, 2))(5UL)), 0x56L)).even, ((VECTOR(uint8_t, 4))(0xDCL))))).wwywwywy - ((VECTOR(uint8_t, 8))(255UL)))))))).s33 >> ((VECTOR(uint8_t, 2))(1UL))))), 1UL)).s4741130145060016 + ((VECTOR(uint8_t, 16))(1UL))))).hi))).lo + ((VECTOR(uint8_t, 4))(3UL))))), ((VECTOR(uint8_t, 4))(0x66L))))), l_1120, 4UL, p_47, ((VECTOR(uint16_t, 2))(65535UL)), 0xC1FCL, 0x9299L, l_1105.w, ((VECTOR(uint16_t, 2))(65535UL)), 0x3CA8L, 7UL)).s5fd1 + ((VECTOR(uint16_t, 4))(0x7BB3L)))))))), 6UL, 65528UL)).s65))).xyxyyxxx))).s4710150337413372, ((VECTOR(uint16_t, 16))(0x10C3L))))).sb7))), 0x3174L, 65534UL, 1UL, 65535UL, 0xCF73L, 0x1946L))))).s2117717050734340))))))))).sf6, ((VECTOR(int32_t, 2))(0L))))).xxxxxyxxxyyyxxxx && ((VECTOR(int32_t, 16))(0x17634E6EL))))).hi, ((VECTOR(int32_t, 8))(3L))))).odd > ((VECTOR(int32_t, 4))((-1L)))))))).s5652062067313763, ((VECTOR(int32_t, 16))(0x648B859DL))))).s0e83, ((VECTOR(int32_t, 4))(0x0F4266A9L))))).wwyxywzx, ((VECTOR(int32_t, 8))(0x547DC5EDL))))), ((VECTOR(int32_t, 8))((-1L))), ((VECTOR(int32_t, 8))(0x69F57F24L))))).s3326357165055405 && ((VECTOR(int32_t, 16))(0x13212FB7L))))), ((VECTOR(uint32_t, 16))(0x84F2CA4EL))))).sd9, ((VECTOR(int64_t, 2))((-1L)))))), 0x73DE73FF9C782338L)), (-7L), 0x5044C58DF5AC254FL, l_1053[0], ((VECTOR(int64_t, 8))(0x28063BAAF85DE78FL)))).s2e5e, ((VECTOR(int64_t, 4))((-3L)))))), (-8L), ((VECTOR(int64_t, 2))(1L)), 0x35CF32D4543FEDC1L, (-10L), (-1L), ((VECTOR(int64_t, 2))(0x66946267FEF837D7L)), (-10L))).s08 && ((VECTOR(int64_t, 2))(0x0E33252EF9740A9CL)))))))), ((VECTOR(int64_t, 2))((-1L))), ((VECTOR(int64_t, 4))(0x6F44207A0202ADACL)))).s3744474447453341, ((VECTOR(int64_t, 16))(0x7C45531CA1102568L))))).even && ((VECTOR(int64_t, 8))(0x54C7AE875CD836F7L))))).lo))).zzywxxzxxywxwxxx))).s3, 1L))))) , l_1121), 0xAF88L)), l_1105.z)) && l_1122), p_47)) <= (*l_807)) == p_47))) , l_1105.y), 0x4590L)) == 0x76C3636A32ADD2D2L), p_47))) , &l_1100);
            if ((safe_sub_func_uint64_t_u_u((safe_add_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s((safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 2))(0x5A84L, 0x3D41L)).xyyy || ((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 16))(l_1133.s368219d545c88082)).s23, ((VECTOR(int16_t, 4))(0x69A7L, 1L, 6L, 0x7A7FL)).lo))).yxxx))).wwxyxzzwywzwwxzy, ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 8))(l_1134.s31375025)).odd && ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(p_2041->g_1135.xw)), 0x02F5L, 1L)).even && ((VECTOR(int16_t, 8))(l_1136.s0e814234)).s34))), 7L, 1L, ((VECTOR(int16_t, 16))(rotate(((VECTOR(int16_t, 8))(p_2041->g_1137.s62441407)).s7536505222663310, ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 2))(l_1138.wx)).yyxx && ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))(0x1621L, (safe_mod_func_int8_t_s_s(((safe_mul_func_uint8_t_u_u((p_47 = ((l_1121 > ((~((((((*l_1143) = l_1123[4][4][1]) == l_1145) & (p_2041->g_1149.y = ((VECTOR(int8_t, 8))(0L, ((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 4))((((VECTOR(int8_t, 8))(l_1146.s63057647)).lo && ((VECTOR(int8_t, 2))(l_1147.s31)).yxyx))).odd, ((VECTOR(int8_t, 16))(max(((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 2))(p_2041->g_1148.yx)).yyxxxxxy))).s41 && ((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 4))(p_2041->g_1149.xxyy)), ((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 16))(l_1150.xyyyyyxyyyyyxyyx))))), ((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),VECTOR(int8_t, 2),((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(0x54L, 0x42L)), ((VECTOR(int8_t, 4))(l_1151.s0501)), 0x16L, 0L)).s52, ((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),VECTOR(int8_t, 8),((VECTOR(int8_t, 2))(0x1EL, (-1L))).xyxyxxyy, ((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),VECTOR(int8_t, 2),((VECTOR(int8_t, 2))(l_1152.yw)), ((VECTOR(int8_t, 4))(l_1153.xxxx)).even, ((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 4))(p_2041->g_1154.xxyx)).zzzxxxwx))).s06))).yyxyxyxx, ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 2))(p_2041->g_1155.xx)) >= ((VECTOR(int8_t, 2))(l_1156.xx))))).yyxxyxyx))).s67, ((VECTOR(int8_t, 2))(0x3DL, (-1L)))))), ((VECTOR(int8_t, 4))(l_1157.s2065)).even))).yxxyxyyxxyyyyyxx))).sfce2))), (int8_t)l_1152.z))).lo))).xxyy && ((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),int8_t,((VECTOR(int8_t, 8))(p_2041->g_1158.s20023404)).even, (int8_t)(p_47 & ((l_1159 & ((VECTOR(uint16_t, 2))(1UL, 0xB529L)).odd) >= (safe_unary_minus_func_uint16_t_u((++(*l_1161)))))), (int8_t)0x7EL)))))).even && ((VECTOR(int8_t, 16))(l_1164.s6762433277666766)).s9d))), ((VECTOR(int8_t, 8))(p_2041->g_1165.yyyyxyyy)).s25, ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 8))(l_1166.s57760431))))) && ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))(l_1167.yyywxyyxywxzxxyz)).s8aaf && ((VECTOR(int8_t, 2))(l_1168.xy)).yxxy))).wzxyzxwz))).s51))).yyyyyxyxxyyxxyxx, ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))(l_1070.se, ((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 8))(0x49L, ((((((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 8))(p_2041->g_1171.yxxxyyyy)).s2120432524211626 * ((VECTOR(uint16_t, 16))(mul_hi(((VECTOR(uint16_t, 4))(l_1172.yxxy)).wwxzxzwzyzyywyyy, ((VECTOR(uint16_t, 2))(8UL, 0xDE86L)).xyyxyxxyyxyxxyxx)))))).s7 | (&l_1124 == (*p_2041->g_185))) && p_2041->g_1154.y) ^ (*l_807)) , p_47), 0L, ((VECTOR(int8_t, 4))(0x2EL)), (-10L))).hi, ((VECTOR(int8_t, 4))(0x65L))))), ((VECTOR(int8_t, 4))(0x25L)))).s66, ((VECTOR(int8_t, 2))(0x6FL))))), (int8_t)l_1152.w))), 0x79L, ((VECTOR(int8_t, 2))((-7L))), ((VECTOR(int8_t, 8))(0x55L)), (-6L), 0x5AL)).s77 ^ ((VECTOR(int8_t, 2))(0x57L))))).xyxyyxxyxyxxyyxx))).s6e, ((VECTOR(int8_t, 2))(0x34L))))), l_1086.s2, ((VECTOR(int8_t, 4))(0x5EL)))).s2)) , (void*)0) == (void*)0)) & p_2041->g_1096.s4)) != p_47)), p_2041->g_38[2])) <= (*l_807)), l_1176)), 0x070CL, 0x17D0L)).even <= ((VECTOR(int16_t, 2))(1L))))).yyyx))).wwzwxyyyxyzywywx))).s9, p_47, (-1L), 0x339EL)).odd))).wwywxyywxxwzyxzy))).s11, ((VECTOR(int16_t, 2))(1L))))).hi, 5)), 3)), GROUP_DIVERGE(1, 1))), 0x5ACFC74744AA40CEL)))
            { /* block id: 313 */
                uint32_t l_1179 = 1UL;
                int8_t **l_1187 = &l_1099[2][2];
                uint64_t *l_1209 = &p_2041->g_1048;
                int16_t *l_1230 = (void*)0;
                int16_t *l_1231 = (void*)0;
                int16_t *l_1232 = (void*)0;
                int16_t *l_1233 = (void*)0;
                int16_t *l_1234 = &l_1029;
                (*p_2041->g_65) = ((+(p_2041->g_294.y , (safe_lshift_func_int8_t_s_s(l_1105.z, 2)))) >= l_1179);
                (*p_2041->g_185) = &l_1033;
                (*p_2041->g_65) = 0x2FD13442L;
                (*p_2041->g_65) = ((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(l_1180.yyxx)).odd < ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(1L, 1L, (safe_rshift_func_uint16_t_u_s(1UL, (safe_add_func_int8_t_s_s((safe_div_func_int64_t_s_s((((*p_2041->g_65) >= (((*l_1187) = (void*)0) == &p_2041->g_217)) & ((VECTOR(uint8_t, 8))(l_1188.yxxyyxyx)).s7), (l_1235 = (p_2041->g_119.x |= ((safe_div_func_uint16_t_u_u((safe_lshift_func_int16_t_s_s(((VECTOR(int16_t, 4))(l_1193.s1859)).w, ((VECTOR(int16_t, 2))(rotate(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))(p_2041->g_1194.s60)) && ((VECTOR(int16_t, 16))(rotate(((VECTOR(int16_t, 16))((((VECTOR(int16_t, 16))((((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 8))(l_1195.sf960bcb1)), ((VECTOR(int16_t, 8))(l_1196.xwxzxzxx)), ((VECTOR(int16_t, 4))(rotate(((VECTOR(int16_t, 4))(((*l_1234) = (((safe_mul_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_u(((safe_mul_func_int8_t_s_s(p_47, ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 16))(((((l_1205 == &p_2041->g_949) || ((safe_mul_func_int8_t_s_s((((*l_1209) = GROUP_DIVERGE(2, 1)) , ((safe_add_func_uint16_t_u_u(((safe_sub_func_uint64_t_u_u(l_1179, ((VECTOR(uint64_t, 8))(rotate(((VECTOR(uint64_t, 8))(p_2041->g_1214.s736d3a7f)), ((VECTOR(uint64_t, 2))(l_1215.sa8)).xyyyxyyy))).s7)) < ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))(0UL, 0x96ADL)) + ((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 16))(p_2041->g_1222.s3e404af1dee900c9)) - ((VECTOR(uint16_t, 2))(0x6388L, 0xE198L)).yyyyyyyxxxyyxxyx))) + ((VECTOR(uint16_t, 8))(sub_sat(((VECTOR(uint16_t, 8))(mul_hi(((VECTOR(uint16_t, 4))(p_2041->g_1223.xyxy)).zwzxxxzz, ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))(min(((VECTOR(uint16_t, 16))(l_1226.xwwywxwwwywzyywz)), (uint16_t)((((safe_sub_func_uint16_t_u_u(0x7F06L, 0x20E5L)) != 0x18E3L) , (*l_807)) < 1UL)))).s59 + ((VECTOR(uint16_t, 2))(2UL))))).yyyyyyxx))), ((VECTOR(uint16_t, 8))(0xC458L))))).s0377170632312366))).s78))).even), 65534UL)) , 0x67L)), l_1053[0])) , p_47)) <= 0x42L) && p_47), 0x4CL, 246UL, p_2041->g_872.x, p_2041->g_245.sc, ((VECTOR(uint8_t, 2))(0x62L)), 0xD0L, p_47, (*l_807), 0xF0L, ((VECTOR(uint8_t, 2))(1UL)), 246UL, 0xA0L, 0x34L)).s9f68 + ((VECTOR(uint8_t, 4))(0x4EL))))).y)) >= (*l_807)), 7)), l_1229)) && p_47) || 0x16B66FC6B4C348D6L)), p_47, 0x70BCL, 0L)), ((VECTOR(int16_t, 4))(0x6816L))))).ywyzyyxx))).s4341131701772213 ^ ((VECTOR(int16_t, 16))(0x463AL))))) && ((VECTOR(int16_t, 16))(0x5CE7L))))), ((VECTOR(int16_t, 16))(0x7085L))))).s08))), ((VECTOR(int16_t, 2))((-4L)))))).hi)), (*l_807))) < FAKE_DIVERGE(p_2041->local_2_offset, get_local_id(2), 10)))))), l_1086.s3)))), (-2L), (*l_807), (*p_46), 0x6FCBA878L, (-1L))).s7, 1L, 8L, (-3L))).even))).xxxy, ((VECTOR(int32_t, 4))(0x209AE8AEL)), ((VECTOR(int32_t, 4))(0x062E762EL))))).wwzyyxyzyxyzxwyw, ((VECTOR(int32_t, 16))(0x04A132A2L))))).s0;
            }
            else
            { /* block id: 323 */
                uint32_t l_1267[1][4];
                VECTOR(int8_t, 4) l_1282 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), (-1L)), (-1L));
                int i, j;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 4; j++)
                        l_1267[i][j] = 0x429F1E8AL;
                }
                for (p_2041->g_122 = 22; (p_2041->g_122 <= 24); p_2041->g_122++)
                { /* block id: 326 */
                    struct S0 **l_1240 = &l_1238;
                    VECTOR(uint32_t, 2) l_1250 = (VECTOR(uint32_t, 2))(0x25FC32B0L, 0x691672BEL);
                    uint32_t **l_1251[8][6][5] = {{{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846}},{{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846}},{{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846}},{{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846}},{{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846}},{{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846}},{{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846}},{{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846},{&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846,&p_2041->g_846}}};
                    uint64_t ***l_1266 = &l_1143;
                    volatile struct S0 **l_1270 = (void*)0;
                    volatile struct S0 **l_1271 = &p_2041->g_1268[0][0];
                    uint8_t **l_1277 = (void*)0;
                    int i, j, k;
                    (**p_2041->g_64) = l_1167.z;
                    (*l_1240) = l_1238;
                    (*l_1271) = ((((safe_rshift_func_uint16_t_u_s((((safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 8))(l_1249.s05237054)).s1160627673655435 + ((VECTOR(uint32_t, 2))(l_1250.yx)).yxyxyxxxxyxxxxyy))) << ((VECTOR(uint32_t, 16))(32))))).sd, (~(((void*)0 == l_1251[7][1][3]) != (safe_mul_func_int8_t_s_s((safe_unary_minus_func_int32_t_s((((safe_mul_func_uint16_t_u_u(((-1L) == ((VECTOR(uint8_t, 8))(p_2041->g_1257.s22365622)).s0), (((**p_2041->g_64) > ((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 8))(clz(((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 8))(4294967295UL, ((VECTOR(uint32_t, 2))((~((VECTOR(uint32_t, 2))(4294967293UL, 4294967289UL))))), 0xE395A07BL, ((((((*l_1266) = (void*)0) == (void*)0) != ((((l_1250.x <= l_1176) ^ l_1267[0][2]) , (void*)0) == (void*)0)) && p_47) && l_1235), FAKE_DIVERGE(p_2041->global_1_offset, get_global_id(1), 10), 4UL, 0UL)).s25 + ((VECTOR(uint32_t, 2))(4UL))))).xxyyyxyx))).s2134032463140125 - ((VECTOR(uint32_t, 16))(0x012382D6L))))).s0264 + ((VECTOR(uint32_t, 4))(4294967293UL))))).xzwxyxww + ((VECTOR(uint32_t, 8))(4294967295UL))))).s3) && 0x7DL))) >= p_2041->g_1194.s6) , (*p_2041->g_65)))), 0x6FL)))))) == p_47) , p_47), l_1250.x)) != 0x394BB32EDE993B10L) ^ p_47) , p_2041->g_1268[0][0]);
                    (*p_2041->g_65) = ((safe_mod_func_uint64_t_u_u((safe_div_func_uint32_t_u_u(((((VECTOR(uint32_t, 4))(6UL, FAKE_DIVERGE(p_2041->local_2_offset, get_local_id(2), 10), 1UL, 0x4765C10BL)).x , l_1099[3][3]) == (l_1175 = p_2041->g_1276)), ((safe_mul_func_int16_t_s_s((safe_rshift_func_uint16_t_u_u((((l_1070.s4 && 5UL) , ((VECTOR(int8_t, 2))(l_1282.yw)).odd) , ((((p_2041->g_535 == (p_47--)) , l_1285) != ((safe_mul_func_int16_t_s_s((((safe_rshift_func_int16_t_s_s((((l_1267[0][2] ^ ((safe_lshift_func_int16_t_s_u(((((safe_mod_func_int64_t_s_s((&p_2041->g_170 != ((((0x157CL && 0x5F7EL) , l_1250.x) , p_2041->g_247.y) , (void*)0)), l_1121)) , (*l_807)) & 0x46AB7F02L) >= l_1105.w), 9)) && l_1138.w)) <= 65533UL) != (-9L)), l_1152.z)) , l_1250.y) && p_2041->g_989.s1), l_1249.s7)) , &p_2041->g_845)) > (*l_807))), l_1250.x)), l_1068.y)) , l_1250.y))), l_1250.x)) || p_47);
                }
            }
        }
        for (l_1027 = 24; (l_1027 == 3); l_1027 = safe_sub_func_uint64_t_u_u(l_1027, 2))
        { /* block id: 339 */
            VECTOR(int64_t, 4) l_1311 = (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x653A28F2458B4AE7L), 0x653A28F2458B4AE7L);
            uint16_t **l_1313 = (void*)0;
            uint32_t ***l_1330 = &l_1206;
            VECTOR(int8_t, 16) l_1343 = (VECTOR(int8_t, 16))(0x1CL, (VECTOR(int8_t, 4))(0x1CL, (VECTOR(int8_t, 2))(0x1CL, 0x52L), 0x52L), 0x52L, 0x1CL, 0x52L, (VECTOR(int8_t, 2))(0x1CL, 0x52L), (VECTOR(int8_t, 2))(0x1CL, 0x52L), 0x1CL, 0x52L, 0x1CL, 0x52L);
            uint32_t l_1367 = 4UL;
            int32_t *l_1376 = (void*)0;
            int32_t *l_1377 = &l_1034;
            int32_t *l_1378[2][8] = {{&l_1036,(void*)0,&l_1036,&l_1036,(void*)0,&l_1036,&l_1036,(void*)0},{&l_1036,(void*)0,&l_1036,&l_1036,(void*)0,&l_1036,&l_1036,(void*)0}};
            VECTOR(int32_t, 2) l_1379 = (VECTOR(int32_t, 2))(8L, 0L);
            uint64_t l_1381 = 4UL;
            int i, j;
            for (l_48 = 0; (l_48 >= (-18)); l_48--)
            { /* block id: 342 */
                int64_t *l_1298 = (void*)0;
                int64_t *l_1299 = (void*)0;
                int64_t *l_1300 = &l_1159;
                uint16_t ***l_1314 = (void*)0;
                uint16_t ***l_1315[7];
                uint64_t *l_1318 = (void*)0;
                VECTOR(uint32_t, 8) l_1321 = (VECTOR(uint32_t, 8))(7UL, (VECTOR(uint32_t, 4))(7UL, (VECTOR(uint32_t, 2))(7UL, 0xBF0874EEL), 0xBF0874EEL), 0xBF0874EEL, 7UL, 0xBF0874EEL);
                uint64_t *l_1327[2][1];
                int32_t l_1328 = (-8L);
                uint32_t ***l_1329 = &p_2041->g_845;
                VECTOR(int8_t, 8) l_1347 = (VECTOR(int8_t, 8))((-2L), (VECTOR(int8_t, 4))((-2L), (VECTOR(int8_t, 2))((-2L), (-1L)), (-1L)), (-1L), (-2L), (-1L));
                VECTOR(int8_t, 2) l_1350 = (VECTOR(int8_t, 2))((-3L), 3L);
                int32_t *l_1351 = &l_1040;
                int i, j;
                for (i = 0; i < 7; i++)
                    l_1315[i] = &l_1313;
                for (i = 0; i < 2; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_1327[i][j] = &p_2041->g_1048;
                }
                (*p_2041->g_64) = ((((((((*l_1300) = ((-5L) | p_47)) , ((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 2))(0x6DF4B58C43352C9AL, 1UL)).xxyyxxxy + ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(18446744073709551614UL, 0x8EF0849CFA2470F2L)), 0xD2E015D2051783B4L, 0xCA4A80E65F0C66F7L)).wzwwxxzy))).hi + ((VECTOR(uint64_t, 16))(p_2041->g_1309.s1442643475556375)).s2eef))).wzxxwxwxwyzwzxyw + ((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 16))(abs_diff(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(p_2041->g_1257.s4, ((VECTOR(int64_t, 2))(p_2041->g_1310.yy)), 1L)), ((VECTOR(int64_t, 4))(0x320C2D15E5C80664L, 0x57FB7501B1583B50L, 4L, 0x2591DAD9D4C7577BL)))) && ((VECTOR(int64_t, 4))(min(((VECTOR(int64_t, 16))((((VECTOR(int64_t, 16))(l_1311.zyzyzzzxxzyxxzxy)) && ((VECTOR(int64_t, 8))((((VECTOR(int64_t, 2))(0x51B7715C3379D023L, 0x7C1435C0200656EEL)).yxxyyxyx <= ((VECTOR(int64_t, 8))(l_1312.s32224506))))).s6271560466354676))).sb753, (int64_t)((((l_1313 = l_1313) == (((l_1328 = (safe_lshift_func_int8_t_s_s((((p_2041->g_1214.s8 = (l_1100 &= 0xEC1F49498740BA45L)) & (l_1124 = ((!(255UL < (((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(add_sat(((VECTOR(uint32_t, 2))(l_1321.s01)), ((VECTOR(uint32_t, 4))(p_2041->g_1322.xyxx)).even))), ((VECTOR(uint32_t, 2))(min(((VECTOR(uint32_t, 8))((safe_div_func_uint16_t_u_u((((safe_sub_func_int16_t_s_s(p_47, p_47)) == p_47) & l_1053[2]), l_1311.z)), ((VECTOR(uint32_t, 2))(1UL)), 0x5C449649L, 0x7D91EA3DL, 0x1FDD30A4L, 0UL, 9UL)).s60, ((VECTOR(uint32_t, 2))(3UL))))), l_1196.w, 5UL, 0UL, 1UL)).s5707303637262314 - ((VECTOR(uint32_t, 16))(4294967295UL))))).s7 >= l_1311.x))) | 1L))) ^ l_1321.s5), 7))) , (**p_2041->g_64)) , &p_2041->g_758[4])) , l_1285) == l_1329)))).yyxxxxxz))).s1405663546117655, ((VECTOR(int64_t, 16))(0x2295CCE9469FC0C9L))))) | ((VECTOR(uint64_t, 16))(0xAC6D9DDA4961DF50L)))))))) << ((VECTOR(uint64_t, 16))(0x4A86B9C5FE33498CL))))).s0) > 0L) <= (*l_807)) , l_1330) == (void*)0) , &l_1100);
                (*l_1351) &= (safe_add_func_int64_t_s_s(((VECTOR(int64_t, 4))(sub_sat(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(clz(((VECTOR(int64_t, 16))((((VECTOR(int64_t, 8))((-1L), (-10L), (safe_div_func_int32_t_s_s(((**p_2041->g_185) = (safe_sub_func_int8_t_s_s(l_1167.w, (safe_mod_func_int32_t_s_s((safe_mul_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((&p_2041->g_771 != (void*)0), FAKE_DIVERGE(p_2041->global_1_offset, get_global_id(1), 10))), ((VECTOR(int8_t, 16))((-1L), ((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 16))(0x39L, ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 16))(l_1343.sf1053fb006c5f2e6)).even != ((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 2))(p_2041->g_1344.zy)).yxyyyyyyxxyxyyxy, ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 2))((!((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))(l_1345.wwzzyzxz)).s4603777145605757 & ((VECTOR(int8_t, 16))(rhadd(((VECTOR(int8_t, 2))((-1L), 0L)).yyyxyxyyxyyyxyyy, ((VECTOR(int8_t, 2))(p_2041->g_1346.yy)).yyxxxyxxyxxyxyyx)))))).s2277 && ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))(0x15L, 0x26L, ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(0x57L, 0x15L)), (-5L), (-2L))), p_2041->g_704.y, 0x01L, 0x67L, 0L)).odd && ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(0x48L, 0x72L)).xxxx != ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(l_1347.s4141035717413636)).s0, 3L, (-10L), ((VECTOR(int8_t, 2))(p_2041->g_1348.yx)), (l_1349 || (4294967295UL < 0x5243CE51L)), (-1L), 0x17L)).odd)))))), 0x23L, ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))((-1L), ((VECTOR(int8_t, 4))(l_1350.xyxx)), ((!0x70L) > (-4L)), 0x5AL, ((VECTOR(int8_t, 4))(0x28L)), 0x50L, ((VECTOR(int8_t, 4))(0x46L)))).sf6 && ((VECTOR(int8_t, 2))((-1L)))))).yyyy || ((VECTOR(int8_t, 4))((-1L)))))), p_2041->g_294.x, l_1347.s1, ((VECTOR(int8_t, 2))(0x7EL)), (-1L))).s29 && ((VECTOR(int8_t, 2))(1L))))).yyxx))).odd))) & ((VECTOR(int8_t, 2))(9L))))).yyyyyyxyyxxyxyxy, ((VECTOR(int8_t, 16))((-3L)))))).odd))), (-1L), p_2041->g_561.y, l_1321.s4, p_2041->g_247.y, 0L, 6L, 0x19L)).s82, ((VECTOR(int8_t, 2))((-1L)))))), ((VECTOR(int8_t, 2))(0x22L)), ((VECTOR(int8_t, 2))((-1L)))))), (-9L), 0x25L, ((VECTOR(int8_t, 8))((-8L))), ((VECTOR(int8_t, 2))((-9L))), 0x52L)).sb)), l_1121))))), p_47)), ((VECTOR(int64_t, 2))(0x6FCA6C0EAEE56EEFL)), ((VECTOR(int64_t, 2))((-2L))), 0x55ED04F2681BA99AL)).s0612715244165416 != ((VECTOR(int64_t, 16))(0x3C0DD696999077D7L))))).s87d4))), ((VECTOR(int64_t, 4))((-6L))), 0x7DF35392BB22AA65L, 0x4D43C639BAF35AC3L, p_2041->g_1344.x, 0x06BA6F5E356569DCL, (-1L), ((VECTOR(int64_t, 2))(0L)), 0L)).s9cd4, ((VECTOR(int64_t, 4))(0x2571EC4F90C76427L))))).y, (-2L)));
                (*p_2041->g_65) = (*p_46);
                if ((p_2041->g_1352[0][4] == &p_2041->g_1358[4][1]))
                { /* block id: 353 */
                    int32_t l_1366 = 3L;
                    for (l_1037 = 0; (l_1037 == 6); ++l_1037)
                    { /* block id: 356 */
                        int8_t l_1363 = 0L;
                        int32_t l_1364 = (-1L);
                        int32_t l_1365 = 1L;
                        int32_t *l_1370 = &l_1349;
                        (*p_2041->g_65) = ((safe_rshift_func_uint16_t_u_u(p_47, (l_1367--))) , (((*l_1370) = l_1367) , 0x727D6D90L));
                    }
                    for (l_1026 = 15; (l_1026 != (-21)); l_1026--)
                    { /* block id: 363 */
                        if (p_2041->g_84)
                            goto lbl_1373;
                        if ((**p_2041->g_185))
                            continue;
                        (*p_2041->g_64) = p_46;
                    }
                    if ((*p_46))
                        continue;
                    (*l_1351) = 0x1619E9D3L;
                }
                else
                { /* block id: 370 */
                    for (p_2041->g_217 = 0; (p_2041->g_217 >= 4); p_2041->g_217 = safe_add_func_uint32_t_u_u(p_2041->g_217, 1))
                    { /* block id: 373 */
                        if ((**p_2041->g_185))
                            break;
                        (*p_2041->g_64) = &l_1328;
                    }
                }
            }
            l_1100 |= (*l_807);
            l_1381--;
            (*l_1377) |= ((VECTOR(int32_t, 4))(1L, ((VECTOR(int32_t, 2))(p_2041->g_1384.yz)), (-9L))).z;
        }
    }
    (*p_2041->g_64) = ((((p_47 != (safe_div_func_uint16_t_u_u((*l_807), p_47))) == GROUP_DIVERGE(2, 1)) ^ GROUP_DIVERGE(0, 1)) , &l_1035);
    return (*l_807);
}


/* ------------------------------------------ */
/* 
 * reads : p_2041->g_3 p_2041->g_355 p_2041->g_757 p_2041->g_758 p_2041->g_583 p_2041->g_845 p_2041->g_38 p_2041->g_131 p_2041->g_368 p_2041->g_217 p_2041->g_52 p_2041->g_868 p_2041->g_871 p_2041->g_872 p_2041->g_236 p_2041->g_497 p_2041->g_624 p_2041->g_889 p_2041->g_678 p_2041->g_909 p_2041->g_269 p_2041->g_270 p_2041->g_130 p_2041->g_171 p_2041->g_33 p_2041->g_941 p_2041->g_949 p_2041->g_951 p_2041->g_358 p_2041->g_982 p_2041->g_989 p_2041->g_170 p_2041->g_665 p_2041->g_64
 * writes: p_2041->g_583 p_2041->g_236 p_2041->g_845 p_2041->g_368 p_2041->g_217 p_2041->g_52 p_2041->g_758 p_2041->g_678 p_2041->g_872 p_2041->g_122 p_2041->g_170 p_2041->g_665 p_2041->g_65
 */
int32_t ** func_53(uint32_t  p_54, int32_t * p_55, int16_t  p_56, uint64_t  p_57, struct S2 * p_2041)
{ /* block id: 244 */
    int32_t l_814 = 0L;
    int64_t *l_815 = &p_2041->g_368;
    int8_t *l_820 = &p_2041->g_217;
    uint32_t *l_821 = (void*)0;
    VECTOR(int32_t, 4) l_832 = (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), 0x66EBB8CAL), 0x66EBB8CAL);
    int64_t ***l_857 = (void*)0;
    VECTOR(int8_t, 16) l_866 = (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x4DL), 0x4DL), 0x4DL, 1L, 0x4DL, (VECTOR(int8_t, 2))(1L, 0x4DL), (VECTOR(int8_t, 2))(1L, 0x4DL), 1L, 0x4DL, 1L, 0x4DL);
    uint64_t l_887 = 0x9CFC37BE35C2A6FDL;
    VECTOR(uint64_t, 8) l_919 = (VECTOR(uint64_t, 8))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0UL), 0UL), 0UL, 0UL, 0UL);
    int16_t ***l_929 = &p_2041->g_270;
    int32_t **l_932[9][4] = {{(void*)0,(void*)0,&p_2041->g_65,(void*)0},{(void*)0,(void*)0,&p_2041->g_65,(void*)0},{(void*)0,(void*)0,&p_2041->g_65,(void*)0},{(void*)0,(void*)0,&p_2041->g_65,(void*)0},{(void*)0,(void*)0,&p_2041->g_65,(void*)0},{(void*)0,(void*)0,&p_2041->g_65,(void*)0},{(void*)0,(void*)0,&p_2041->g_65,(void*)0},{(void*)0,(void*)0,&p_2041->g_65,(void*)0},{(void*)0,(void*)0,&p_2041->g_65,(void*)0}};
    uint16_t *l_933[2][1][5] = {{{&p_2041->g_150,&p_2041->g_150,&p_2041->g_150,&p_2041->g_150,&p_2041->g_150}},{{&p_2041->g_150,&p_2041->g_150,&p_2041->g_150,&p_2041->g_150,&p_2041->g_150}}};
    VECTOR(uint64_t, 2) l_934 = (VECTOR(uint64_t, 2))(0xC8ABBD044070E1C7L, 6UL);
    VECTOR(uint8_t, 16) l_979 = (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 251UL), 251UL), 251UL, 1UL, 251UL, (VECTOR(uint8_t, 2))(1UL, 251UL), (VECTOR(uint8_t, 2))(1UL, 251UL), 1UL, 251UL, 1UL, 251UL);
    uint32_t ***l_983 = &p_2041->g_845;
    VECTOR(int32_t, 16) l_986 = (VECTOR(int32_t, 16))(0x095D4730L, (VECTOR(int32_t, 4))(0x095D4730L, (VECTOR(int32_t, 2))(0x095D4730L, 0x28EB4F24L), 0x28EB4F24L), 0x28EB4F24L, 0x095D4730L, 0x28EB4F24L, (VECTOR(int32_t, 2))(0x095D4730L, 0x28EB4F24L), (VECTOR(int32_t, 2))(0x095D4730L, 0x28EB4F24L), 0x095D4730L, 0x28EB4F24L, 0x095D4730L, 0x28EB4F24L);
    VECTOR(int32_t, 4) l_988 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x3B401457L), 0x3B401457L);
    VECTOR(int32_t, 16) l_990 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x44C03197L), 0x44C03197L), 0x44C03197L, 1L, 0x44C03197L, (VECTOR(int32_t, 2))(1L, 0x44C03197L), (VECTOR(int32_t, 2))(1L, 0x44C03197L), 1L, 0x44C03197L, 1L, 0x44C03197L);
    uint32_t **l_1020 = &l_821;
    uint32_t ***l_1019 = &l_1020;
    int64_t l_1021 = 2L;
    int i, j, k;
    if ((((VECTOR(uint32_t, 8))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 16))(p_54, 4294967292UL, (safe_mod_func_int64_t_s_s((((0x32D4L & ((safe_sub_func_int32_t_s_s((((l_814 || (l_815 != l_815)) >= p_57) <= (safe_rshift_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s(6UL, 8)), 3))), (((l_820 != (void*)0) , &p_2041->g_84) == l_821))) ^ p_2041->g_3)) , l_814) ^ 0x05C260DFL), 0x1B8B67C9A0DBB690L)), 1UL, p_56, 4294967295UL, 4294967295UL, l_814, 0x43F4CA48L, l_814, ((VECTOR(uint32_t, 4))(4294967291UL)), 0xE7AFEB35L, 0xE145E2FAL)).odd, ((VECTOR(uint32_t, 8))(0xC90239F5L)), ((VECTOR(uint32_t, 8))(0x71522C39L))))).s6 < 1L))
    { /* block id: 245 */
        int32_t l_822 = 0L;
        uint16_t *l_829 = (void*)0;
        int16_t *l_835 = (void*)0;
        int16_t *l_836 = (void*)0;
        int16_t *l_837 = (void*)0;
        int16_t *l_838 = &p_2041->g_583;
        uint32_t ***l_847 = &p_2041->g_845;
        int32_t l_848 = (-1L);
        int32_t ***l_849 = &p_2041->g_185;
        int32_t **l_850 = (void*)0;
        int8_t l_853[9][1][2] = {{{0x4DL,0x4DL}},{{0x4DL,0x4DL}},{{0x4DL,0x4DL}},{{0x4DL,0x4DL}},{{0x4DL,0x4DL}},{{0x4DL,0x4DL}},{{0x4DL,0x4DL}},{{0x4DL,0x4DL}},{{0x4DL,0x4DL}}};
        int i, j, k;
lbl_856:
        p_2041->g_236.s2 = ((l_822 , &p_2041->g_758[1]) == (((safe_lshift_func_int16_t_s_s(((*l_838) |= (safe_lshift_func_int8_t_s_s(((safe_div_func_int8_t_s_s(((l_829 == (((safe_mod_func_uint16_t_u_u(p_57, (((VECTOR(int32_t, 4))(l_832.zyxz)).y | (l_814 < (safe_rshift_func_int8_t_s_s((~p_2041->g_355.x), ((void*)0 == &p_2041->g_170))))))) >= (l_815 != l_815)) , (*p_2041->g_757))) | l_832.z), p_57)) >= p_56), 0))), p_57)) <= p_57) , (void*)0));
        l_814 = ((safe_sub_func_int32_t_s_s((safe_add_func_int8_t_s_s(((((l_848 |= (0x8C25L <= (((*l_847) = p_2041->g_845) != (p_57 , &p_2041->g_846)))) ^ ((l_850 = &p_55) != (void*)0)) & ((VECTOR(int16_t, 2))((-1L), 4L)).odd) && (safe_sub_func_int16_t_s_s((l_832.w = (l_853[1][0][0] <= (safe_add_func_uint64_t_u_u(((*p_55) <= 4294967287UL), p_2041->g_131)))), p_56))), 1UL)), (*p_55))) >= l_814);
        if (l_814)
            goto lbl_856;
    }
    else
    { /* block id: 254 */
        VECTOR(int8_t, 2) l_867 = (VECTOR(int8_t, 2))(0x26L, 0x29L);
        VECTOR(int8_t, 8) l_877 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x47L), 0x47L), 0x47L, (-1L), 0x47L);
        VECTOR(uint16_t, 4) l_894 = (VECTOR(uint16_t, 4))(0xE8DFL, (VECTOR(uint16_t, 2))(0xE8DFL, 0x68F1L), 0x68F1L);
        VECTOR(uint16_t, 16) l_895 = (VECTOR(uint16_t, 16))(65532UL, (VECTOR(uint16_t, 4))(65532UL, (VECTOR(uint16_t, 2))(65532UL, 0x7195L), 0x7195L), 0x7195L, 65532UL, 0x7195L, (VECTOR(uint16_t, 2))(65532UL, 0x7195L), (VECTOR(uint16_t, 2))(65532UL, 0x7195L), 65532UL, 0x7195L, 65532UL, 0x7195L);
        VECTOR(uint16_t, 16) l_896 = (VECTOR(uint16_t, 16))(5UL, (VECTOR(uint16_t, 4))(5UL, (VECTOR(uint16_t, 2))(5UL, 3UL), 3UL), 3UL, 5UL, 3UL, (VECTOR(uint16_t, 2))(5UL, 3UL), (VECTOR(uint16_t, 2))(5UL, 3UL), 5UL, 3UL, 5UL, 3UL);
        VECTOR(int16_t, 16) l_908 = (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x5ACAL), 0x5ACAL), 0x5ACAL, 0L, 0x5ACAL, (VECTOR(int16_t, 2))(0L, 0x5ACAL), (VECTOR(int16_t, 2))(0L, 0x5ACAL), 0L, 0x5ACAL, 0L, 0x5ACAL);
        int32_t l_931 = 0L;
        int32_t l_937 = 0x3BE9984DL;
        VECTOR(int64_t, 8) l_952 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x0DA829AA9D37DFBDL), 0x0DA829AA9D37DFBDL), 0x0DA829AA9D37DFBDL, 1L, 0x0DA829AA9D37DFBDL);
        VECTOR(int32_t, 2) l_987 = (VECTOR(int32_t, 2))(9L, 1L);
        uint8_t *l_999 = &p_2041->g_170;
        int16_t *l_1008 = (void*)0;
        int16_t *l_1009 = (void*)0;
        int16_t *l_1010 = (void*)0;
        int16_t *l_1011[10][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2041->g_583},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2041->g_583},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2041->g_583},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2041->g_583},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2041->g_583},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2041->g_583},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2041->g_583},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2041->g_583},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2041->g_583},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2041->g_583}};
        int16_t l_1012[2];
        uint32_t l_1013 = 0x1705FBD6L;
        int16_t l_1016 = 0x6C20L;
        uint32_t **l_1018[2];
        uint32_t ***l_1017 = &l_1018[1];
        int i, j;
        for (i = 0; i < 2; i++)
            l_1012[i] = 1L;
        for (i = 0; i < 2; i++)
            l_1018[i] = &p_2041->g_950;
        if ((l_857 == (void*)0))
        { /* block id: 255 */
            uint8_t l_938 = 0xA5L;
            VECTOR(int32_t, 8) l_939 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 1L), 1L), 1L, 1L, 1L);
            uint32_t l_940 = 1UL;
            VECTOR(int32_t, 2) l_942 = (VECTOR(int32_t, 2))(0x167B0B51L, 0x4A8634B6L);
            VECTOR(int64_t, 4) l_946 = (VECTOR(int64_t, 4))(0x3D4F48E81878B79FL, (VECTOR(int64_t, 2))(0x3D4F48E81878B79FL, 0x2999DC1125438908L), 0x2999DC1125438908L);
            int32_t l_956 = 0L;
            int i;
            for (p_2041->g_368 = (-19); (p_2041->g_368 != 11); p_2041->g_368 = safe_add_func_int8_t_s_s(p_2041->g_368, 8))
            { /* block id: 258 */
                VECTOR(uint16_t, 4) l_888 = (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x0F2EL), 0x0F2EL);
                VECTOR(int16_t, 16) l_907 = (VECTOR(int16_t, 16))(0x0D1CL, (VECTOR(int16_t, 4))(0x0D1CL, (VECTOR(int16_t, 2))(0x0D1CL, 0x4111L), 0x4111L), 0x4111L, 0x0D1CL, 0x4111L, (VECTOR(int16_t, 2))(0x0D1CL, 0x4111L), (VECTOR(int16_t, 2))(0x0D1CL, 0x4111L), 0x0D1CL, 0x4111L, 0x0D1CL, 0x4111L);
                VECTOR(int64_t, 8) l_945 = (VECTOR(int64_t, 8))((-2L), (VECTOR(int64_t, 4))((-2L), (VECTOR(int64_t, 2))((-2L), 0x3ABD708CE62A8B02L), 0x3ABD708CE62A8B02L), 0x3ABD708CE62A8B02L, (-2L), 0x3ABD708CE62A8B02L);
                uint64_t *l_955 = &p_2041->g_632;
                int i;
                for (p_2041->g_217 = 0; (p_2041->g_217 <= (-30)); p_2041->g_217 = safe_sub_func_uint64_t_u_u(p_2041->g_217, 3))
                { /* block id: 261 */
                    int32_t l_880 = 0L;
                    uint64_t *l_930[3][7] = {{(void*)0,&p_2041->g_723,&p_2041->g_723,(void*)0,(void*)0,&p_2041->g_723,&p_2041->g_723},{(void*)0,&p_2041->g_723,&p_2041->g_723,(void*)0,(void*)0,&p_2041->g_723,&p_2041->g_723},{(void*)0,&p_2041->g_723,&p_2041->g_723,(void*)0,(void*)0,&p_2041->g_723,&p_2041->g_723}};
                    int64_t *l_935 = (void*)0;
                    int64_t *l_936[3][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,&p_2041->g_368},{(void*)0,(void*)0,(void*)0,(void*)0,&p_2041->g_368},{(void*)0,(void*)0,(void*)0,(void*)0,&p_2041->g_368}};
                    int i, j;
                    for (p_2041->g_52 = 0; (p_2041->g_52 == (-6)); --p_2041->g_52)
                    { /* block id: 264 */
                        uint64_t l_884 = 18446744073709551615UL;
                        int16_t *l_885 = (void*)0;
                        int16_t *l_886 = &p_2041->g_583;
                        if ((*p_55))
                            break;
                        l_880 = ((safe_rshift_func_int8_t_s_u(((VECTOR(int8_t, 8))(mad_sat(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 4))(l_866.sb4eb)).zxyyzwxzxwzzyzxx && ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 16))(l_867.xxxxxxxxyxyxyyyx)).s93, ((VECTOR(int8_t, 4))(0L, 0x41L, 0x36L, (-6L))).odd))), ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(p_2041->g_868.xx)), p_54, ((safe_sub_func_int64_t_s_s((((l_867.y != (((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 2))(p_2041->g_871.s1d)), ((VECTOR(int32_t, 2))(p_2041->g_872.xy))))).hi | (safe_add_func_uint16_t_u_u((l_867.x > (!((GROUP_DIVERGE(0, 1) != (safe_rshift_func_int8_t_s_s((p_57 <= p_56), 2))) || GROUP_DIVERGE(1, 1)))), ((*l_886) = ((((VECTOR(int8_t, 2))(l_877.s25)).odd == ((safe_lshift_func_uint8_t_u_s(l_880, p_2041->g_236.s0)) < (safe_unary_minus_func_int64_t_s(0x6E5991ED9DC6D016L)))) < (!((!(safe_add_func_uint64_t_u_u(l_884, GROUP_DIVERGE(0, 1)))) ^ (-1L))))))))) > p_2041->g_497.z) <= l_880), l_887)) <= l_832.y), p_54, p_2041->g_624.y, 0x70L, 0x49L)), ((VECTOR(int8_t, 4))((-1L))), (-1L), 0L))))).even, ((VECTOR(int8_t, 8))((-10L))), ((VECTOR(int8_t, 8))(0x51L))))).s7, 4)) || p_54);
                    }
                    l_939.s5 &= (((VECTOR(uint16_t, 16))(FAKE_DIVERGE(p_2041->local_2_offset, get_local_id(2), 10), ((VECTOR(uint16_t, 8))(l_888.wzywywwy)), ((VECTOR(uint16_t, 16))(p_2041->g_889.s3216324705076074)).sc, (l_888.w > p_2041->g_497.y), ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))(rotate(((VECTOR(uint16_t, 16))(l_894.yzzzxyyzwxxxwwwy)).scc8c, ((VECTOR(uint16_t, 4))(safe_clamp_func(VECTOR(uint16_t, 4),VECTOR(uint16_t, 4),((VECTOR(uint16_t, 4))(l_895.se03b)), ((VECTOR(uint16_t, 8))(l_896.s65956395)).even, ((VECTOR(uint16_t, 2))(safe_clamp_func(VECTOR(uint16_t, 2),VECTOR(uint16_t, 2),((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 8))(mad_sat(((VECTOR(uint16_t, 8))(0x6BCEL, 65531UL, (p_2041->g_678.x && (((safe_rshift_func_uint16_t_u_s((p_2041->g_678.w |= (((((!((safe_div_func_uint16_t_u_u(0x1754L, (safe_mod_func_uint64_t_u_u((safe_mod_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(abs_diff(((VECTOR(int16_t, 4))(safe_clamp_func(VECTOR(int16_t, 4),VECTOR(int16_t, 4),((VECTOR(int16_t, 16))((((VECTOR(int16_t, 2))(l_907.s72)).xxyyyyxyxyxyxxxx | ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 2))((-4L), 1L)), ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(l_908.se945)), 0x6EDEL, 0L, 0x0A29L, 1L)).s01, ((VECTOR(int16_t, 2))(0x7A2CL, 0x6360L))))), ((VECTOR(int16_t, 2))(0L, (-1L)))))).xxxyyxxx && ((VECTOR(int16_t, 8))(p_2041->g_909.sd48c6fd0))))).s5517576041574507))).s4ecd, ((VECTOR(int16_t, 2))((-6L), (-1L))).yyxx, ((VECTOR(int16_t, 2))(upsample(((VECTOR(int8_t, 8))((safe_sub_func_int64_t_s_s((l_937 = (65535UL == ((l_931 |= (safe_mod_func_uint64_t_u_u((l_934.x |= ((**p_2041->g_269) != ((((*p_2041->g_757) = (*p_2041->g_757)) == l_933[0][0][0]) , (void*)0))), p_2041->g_871.sa))) != p_2041->g_171[6]))), p_2041->g_355.y)), p_56, (-8L), (-1L), p_2041->g_38[3], p_2041->g_909.se, 1L, 0x08L)).s17, ((VECTOR(uint8_t, 2))(0x04L))))).yyyx))).hi, ((VECTOR(int16_t, 2))(7L))))).odd, l_894.w)), p_2041->g_868.y)))) , l_880)) , p_2041->g_33) & l_888.y) ^ p_54) , l_907.s7)), 8)) | p_57) == l_896.s9)), 0xA6E1L, ((VECTOR(uint16_t, 2))(0x5D41L)), 0xC28EL, 0x33FBL)), ((VECTOR(uint16_t, 8))(1UL)), ((VECTOR(uint16_t, 8))(65529UL))))).odd >> ((VECTOR(uint16_t, 4))(16))))).lo, ((VECTOR(uint16_t, 2))(0xD889L)), ((VECTOR(uint16_t, 2))(1UL))))).yyyx)))))).lo >> ((VECTOR(uint16_t, 2))(65535UL))))), l_938, 0xBA91L, 0xBEA8L, 0x734EL, 65531UL, 65533UL)).s25 + ((VECTOR(uint16_t, 2))(65533UL))))), 65529UL, 1UL, 0x50FEL)).s6 || (-1L));
                    if ((*p_55))
                        continue;
                }
                p_2041->g_872.x = (((void*)0 == (**l_929)) , l_940);
                l_956 &= ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(p_2041->g_941.xxyyyyyy)) < ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 4))(l_942.yyxy)), ((VECTOR(int32_t, 2))((-3L), 0x169E8BFBL)).xyyx))).wwwxyxwx && ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),int32_t,((VECTOR(int32_t, 2))((-9L), (-1L))).xyxxyyxyxyyyxyxy, (int32_t)(safe_div_func_uint8_t_u_u((((VECTOR(int64_t, 4))((((VECTOR(int64_t, 2))((((VECTOR(int64_t, 4))(l_945.s0330)).odd || ((VECTOR(int64_t, 16))(mul_hi(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(1L, 0x4CA14BECD466B92CL)), ((VECTOR(int64_t, 8))(sub_sat(((VECTOR(int64_t, 2))(min(((VECTOR(int64_t, 2))(mul_hi(((VECTOR(int64_t, 2))(0x16457A8126E14D1AL, 0x3055BDEE1B559B79L)), ((VECTOR(int64_t, 4))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 4),((VECTOR(int64_t, 8))((((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(3L, (-1L))), 1L, (-1L))).xxxwxyyx >= ((VECTOR(int64_t, 2))(l_946.ww)).xyyyxyxy))).lo, ((VECTOR(int64_t, 16))(p_57, (safe_div_func_int64_t_s_s((p_2041->g_949 == &p_2041->g_950), (+FAKE_DIVERGE(p_2041->global_1_offset, get_global_id(1), 10)))), ((VECTOR(int64_t, 8))((((VECTOR(int64_t, 8))((((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))(p_2041->g_951.xxyyyyxxyyxyyyxx)).lo && ((VECTOR(int64_t, 16))((-8L), (&p_2041->g_758[1] != &l_933[0][0][0]), 0x501225B4066E77BFL, 0x65EAACC113151C22L, 1L, l_939.s3, 5L, 0x748F11BF741D4B85L, 0L, ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 2))((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 16))((((VECTOR(int64_t, 16))(hadd(((VECTOR(int64_t, 16))((((VECTOR(int64_t, 4))(8L, ((VECTOR(int64_t, 2))(l_952.s36)), 0x5ACA4A4289BC0647L)).xzyzwxzywyxwyzzx <= ((VECTOR(int64_t, 16))((((((((safe_lshift_func_int16_t_s_s((-4L), ((l_940 == p_54) , l_907.s0))) , l_955) == l_815) != p_56) ^ 1UL) & l_888.y) | l_939.s0), (-1L), ((VECTOR(int64_t, 4))(1L)), ((VECTOR(int64_t, 2))((-1L))), 0L, l_938, p_54, ((VECTOR(int64_t, 2))(0x5A34D6610E5908C4L)), (-6L), 5L, (-4L)))))), ((VECTOR(int64_t, 16))(0x25E3D6D55350B6C2L))))) <= ((VECTOR(int64_t, 16))(0x1C67673DF7E4A3D1L))))) && ((VECTOR(int64_t, 16))(0L))))).s82 && ((VECTOR(int64_t, 2))(4L))))).yxxy && ((VECTOR(int64_t, 4))(1L))))), l_908.sf, 0x6420578E3582B223L, 0x79F848BEFB21DD36L)).lo))) && ((VECTOR(int64_t, 8))(0x26507E71A4F5E4CBL))))) == ((VECTOR(int64_t, 8))(0x081966AF37A459E9L))))), ((VECTOR(int64_t, 4))(0x453897478BCD2A22L)), 0x514949B5AD5C5BCEL, 0x216C25B3D450F806L)).s578d, ((VECTOR(int64_t, 4))(0x2433B0D4C6B15991L))))).lo))), (int64_t)p_2041->g_358.s2))).yyyyxyxx, ((VECTOR(int64_t, 8))(0x1055F2701A17C8E8L))))), 0x2B7DD473241353B4L, 0x22C09FBB6161CC82L, p_2041->g_355.x, (-1L), 7L, 1L)), ((VECTOR(int64_t, 16))(0x7415341B6C74A75DL))))).s96))).xyyx > ((VECTOR(int64_t, 4))((-1L)))))).y < (-1L)), p_54)), (int32_t)0x3AEB252CL))).sbc, ((VECTOR(int32_t, 2))(0x33439374L)), ((VECTOR(int32_t, 2))((-2L)))))).xyxxyyxy && ((VECTOR(int32_t, 8))((-8L)))))).s75 & ((VECTOR(int32_t, 2))(0L))))).yxyxxyyx))).s21 && ((VECTOR(int32_t, 2))(0x6B44661EL))))).yxyxxyxy > ((VECTOR(int32_t, 8))((-1L)))))).odd && ((VECTOR(int32_t, 4))((-5L)))))).odd))).xxxyxyxyxyyxyyyx, ((VECTOR(int32_t, 16))(0x5E24CA94L))))) <= ((VECTOR(int32_t, 16))(0x3B042A32L))))).odd))).s1;
            }
            p_55 = (void*)0;
        }
        else
        { /* block id: 284 */
            int8_t l_968 = 0x5AL;
            uint32_t *l_969[1];
            int32_t l_970 = 0x30A11AE2L;
            int i;
            for (i = 0; i < 1; i++)
                l_969[i] = &p_2041->g_122;
            l_970 |= (safe_rshift_func_uint16_t_u_s(((VECTOR(uint16_t, 16))(abs(((VECTOR(uint16_t, 4))((safe_div_func_uint8_t_u_u((safe_mod_func_int32_t_s_s((*p_55), ((p_2041->g_122 = (((p_57 | ((p_2041->g_624.x <= 0x1807340A1D384281L) & (*p_55))) | (safe_unary_minus_func_uint32_t_u(0UL))) <= ((safe_div_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s((~(p_56 == p_56)), 7)), l_968)) > l_968))) , 0x137C9A6CL))), p_54)), 0UL, 0UL, 65535UL)).xyzzwyywxxyxyzyx))).s4, l_968));
        }
        p_2041->g_665.sf ^= ((safe_rshift_func_int16_t_s_s(((l_894.y & (safe_div_func_int8_t_s_s(((((safe_rshift_func_int8_t_s_u(((safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(l_979.s3c)) & ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 2))(254UL, 1UL)).xxxx ^ ((VECTOR(uint8_t, 8))(p_2041->g_982.s77626613)).even))) << ((VECTOR(uint8_t, 4))(8))))).even))).hi, FAKE_DIVERGE(p_2041->local_2_offset, get_local_id(2), 10))) ^ p_57), (&p_2041->g_845 != l_983))) , (safe_mod_func_int32_t_s_s(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(0x5B081871L, (-1L))) < ((VECTOR(int32_t, 4))(0x08BD21D3L, ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 8))(l_986.s5711afef)).even, ((VECTOR(int32_t, 4))(l_987.xxxx))))).lo && ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))(l_988.wxyx)).xzwzwywzwzwzxxzy != ((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 16))(p_2041->g_989.s6774500141404637)).s87a4, ((VECTOR(int32_t, 16))((-1L), ((VECTOR(int32_t, 2))(l_990.sba)), (safe_rshift_func_uint8_t_u_u((safe_div_func_int8_t_s_s((safe_lshift_func_int8_t_s_u((safe_rshift_func_uint8_t_u_u(0xE7L, (++(*l_999)))), 3)), (safe_mul_func_int16_t_s_s(((l_1017 = ((((7UL | 249UL) , (safe_div_func_uint32_t_u_u((safe_lshift_func_int16_t_s_u((p_56 = p_54), (l_1013--))), (p_2041->g_236.s4 = (p_2041->g_871.s0 | p_2041->g_38[7]))))) , l_1016) , (void*)0)) == l_1019), 0x48C8L)))), l_908.s2)), p_2041->g_982.s3, (-1L), ((VECTOR(int32_t, 8))(0x4B5B725DL)), 0x6BE26F2CL, 1L)).s1b71))).wxxxwyyyxwwwywzz && ((VECTOR(int32_t, 16))(0x3F52DD90L))))), ((VECTOR(int32_t, 16))(0x7ECDDFC1L))))).sef08, ((VECTOR(int32_t, 4))(0x779AC136L)), ((VECTOR(int32_t, 4))((-1L)))))).hi, ((VECTOR(int32_t, 2))(5L))))).xyyxxxxyxxxxxxxx))).s58))), 0x51D4CC28L)).even))).hi, p_54))) & p_54) >= 0x2BL), p_57))) < p_54), p_54)) && l_1021);
    }
    p_55 = ((*p_2041->g_64) = p_55);
    return &p_2041->g_65;
}


/* ------------------------------------------ */
/* 
 * reads : p_2041->g_704 p_2041->g_399 p_2041->g_355 p_2041->g_665 p_2041->g_678 p_2041->g_218 p_2041->g_723 p_2041->g_245 p_2041->g_605 p_2041->g_497 p_2041->g_757 p_2041->g_353 p_2041->g_770 p_2041->g_131 p_2041->g_65 p_2041->g_632 p_2041->g_64
 * writes: p_2041->g_219 p_2041->g_218 p_2041->g_605 p_2041->g_170 p_2041->g_65 p_2041->g_632
 */
uint8_t  func_60(int32_t ** p_61, int16_t  p_62, int32_t ** p_63, struct S2 * p_2041)
{ /* block id: 218 */
    VECTOR(int64_t, 2) l_702 = (VECTOR(int64_t, 2))(0x6C17187B9D69CD0AL, (-4L));
    VECTOR(int64_t, 4) l_703 = (VECTOR(int64_t, 4))(0x5B4F03CBBA9A5C93L, (VECTOR(int64_t, 2))(0x5B4F03CBBA9A5C93L, 0x3EE7309764D1E5ECL), 0x3EE7309764D1E5ECL);
    VECTOR(int64_t, 8) l_705 = (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x6CEEB2702F9E4B48L), 0x6CEEB2702F9E4B48L), 0x6CEEB2702F9E4B48L, (-1L), 0x6CEEB2702F9E4B48L);
    uint64_t *l_710 = &p_2041->g_219;
    uint64_t l_711 = 0xA085E733496F9B1AL;
    VECTOR(int32_t, 8) l_717 = (VECTOR(int32_t, 8))(3L, (VECTOR(int32_t, 4))(3L, (VECTOR(int32_t, 2))(3L, 0x416ED360L), 0x416ED360L), 0x416ED360L, 3L, 0x416ED360L);
    VECTOR(int32_t, 8) l_718 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L);
    uint64_t *l_721 = (void*)0;
    uint64_t *l_722[10] = {&p_2041->g_723,&p_2041->g_723,&p_2041->g_723,&p_2041->g_723,&p_2041->g_723,&p_2041->g_723,&p_2041->g_723,&p_2041->g_723,&p_2041->g_723,&p_2041->g_723};
    int64_t *l_724[9][9][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
    int32_t l_725 = 5L;
    int16_t l_726 = 0L;
    uint32_t l_727 = 4294967288UL;
    int32_t *l_728 = &p_2041->g_218;
    uint32_t *l_732 = (void*)0;
    uint32_t **l_731 = &l_732;
    uint32_t ***l_733 = &l_731;
    uint16_t **l_756[4];
    uint8_t *l_761 = (void*)0;
    int16_t l_762 = 0x742FL;
    int64_t **l_778[8][7][4] = {{{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]}},{{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]}},{{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]}},{{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]}},{{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]}},{{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]}},{{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]}},{{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]},{&l_724[4][0][2],&l_724[1][5][2],&l_724[1][3][2],&l_724[1][3][2]}}};
    VECTOR(uint8_t, 16) l_789 = (VECTOR(uint8_t, 16))(0xF3L, (VECTOR(uint8_t, 4))(0xF3L, (VECTOR(uint8_t, 2))(0xF3L, 0xBEL), 0xBEL), 0xBEL, 0xF3L, 0xBEL, (VECTOR(uint8_t, 2))(0xF3L, 0xBEL), (VECTOR(uint8_t, 2))(0xF3L, 0xBEL), 0xF3L, 0xBEL, 0xF3L, 0xBEL);
    int32_t l_802 = 0L;
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_756[i] = (void*)0;
    (*l_728) = (((l_718.s4 = ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))((((VECTOR(int64_t, 8))(l_702.xxxyxxxx)).even & ((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 4))((((VECTOR(int64_t, 4))(rotate(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(l_703.zxww)), ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),int64_t,((VECTOR(int64_t, 4))((((VECTOR(int64_t, 8))((((VECTOR(int64_t, 4))((((VECTOR(int64_t, 4))(p_2041->g_704.xyyy)) && ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(l_705.s56)), ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 2))(0x285CDAD790AD0A9CL, 0x2C10CD486C8B5471L)).yyyx ^ ((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))((safe_div_func_int8_t_s_s((safe_mul_func_int16_t_s_s(p_62, (((*l_710) = p_2041->g_399.sb) > p_2041->g_355.x))), (l_705.s1 ^ (l_711 > ((safe_sub_func_uint16_t_u_u(p_62, ((safe_unary_minus_func_uint8_t_u((l_703.x ^ ((l_725 &= (p_2041->g_665.s7 == (l_717.s3 = (((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))((-10L), 0x667E0B15L, (-9L), 0x1236DD9EL)).even < ((VECTOR(int32_t, 4))(l_717.s4401)).odd))) && ((VECTOR(int32_t, 8))(rotate(((VECTOR(int32_t, 16))(l_718.s0750731305067063)).lo, ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 8))((safe_sub_func_int16_t_s_s((!p_62), p_62)), l_705.s5, ((VECTOR(int32_t, 2))(1L)), 0x2A815B21L, 0x106E4F6BL, 0x0354A1C7L, 0x6A62D6F4L)).odd, ((VECTOR(int32_t, 4))(0x4CFCBC8BL)), ((VECTOR(int32_t, 4))(6L))))).zxyzzwxw, ((VECTOR(int32_t, 8))(6L))))).odd && ((VECTOR(int32_t, 4))(0x3F49EC4AL))))).zwxwzzyx))).s12))).odd < 0x6738A108L)))) != p_62)))) | 0L))) <= l_726))))), l_727, 1L, 0L, (-10L), ((VECTOR(int64_t, 2))(0x7E3B1575E3C56AA2L)), 9L, ((VECTOR(int64_t, 8))((-8L))))).odd >= ((VECTOR(int64_t, 8))(0x1D847436AAD6928FL))))).even))).y, 0L, l_703.y, 5L, ((VECTOR(int64_t, 2))(0x0A158C89C72B5BB8L)), ((VECTOR(int64_t, 4))(0x45F0CDB98D20DBB2L)), ((VECTOR(int64_t, 2))(0L)), (-1L), 7L)).sfe6d))).zyyyzyyx != ((VECTOR(int64_t, 8))((-1L)))))).odd == ((VECTOR(int64_t, 4))(8L))))).odd, (int64_t)l_703.x, (int64_t)p_62))), 9L, (-1L))), ((VECTOR(int64_t, 8))((-1L))))).s109e, ((VECTOR(int64_t, 4))(0x6EC61CF4FDDFD0FFL))))) & ((VECTOR(int64_t, 4))(0x1FEADF6F47C40634L))))).xzwxwzwy, ((VECTOR(int64_t, 8))(0L))))).lo))), l_717.s3, p_2041->g_678.z, (-1L), 9L)).s6) ^ 1UL) == p_62);
    p_2041->g_605.s6 &= ((safe_mul_func_uint16_t_u_u(((!(*l_728)) | (0x15BA16DAL > (p_62 , (((*l_733) = l_731) != (((safe_div_func_uint32_t_u_u((((safe_rshift_func_int16_t_s_u((safe_rshift_func_uint16_t_u_u(p_2041->g_723, 9)), p_62)) && (&p_2041->g_84 == &p_2041->g_84)) | 1L), (*l_728))) != (*l_728)) , (void*)0))))), p_2041->g_245.s1)) ^ 5L);
    if (((*l_728) = ((((safe_lshift_func_int16_t_s_s((-10L), 3)) > (safe_mul_func_int8_t_s_s(p_62, (safe_mul_func_int8_t_s_s((6L == (safe_sub_func_uint8_t_u_u((*l_728), (safe_add_func_int64_t_s_s((safe_mod_func_int8_t_s_s((((-1L) <= ((((safe_mul_func_int8_t_s_s((safe_add_func_uint64_t_u_u(p_2041->g_497.w, (l_756[1] != p_2041->g_757))), ((safe_sub_func_uint16_t_u_u((l_761 != l_761), 9L)) || (*l_728)))) <= 0x6E7902A9CC577F04L) & p_62) , 0xCEL)) < 0x43L), l_762)), 0x04CAC846A39F8AB8L))))), p_2041->g_353.y))))) != 0x70L) , (*l_728))))
    { /* block id: 227 */
        VECTOR(int16_t, 8) l_769 = (VECTOR(int16_t, 8))(0x73A2L, (VECTOR(int16_t, 4))(0x73A2L, (VECTOR(int16_t, 2))(0x73A2L, 7L), 7L), 7L, 0x73A2L, 7L);
        int64_t ***l_773 = (void*)0;
        int64_t ***l_774 = (void*)0;
        int64_t ***l_775 = (void*)0;
        int64_t **l_777 = (void*)0;
        int64_t ***l_776[7][1][1];
        int16_t *l_779 = &l_762;
        VECTOR(int64_t, 2) l_786 = (VECTOR(int64_t, 2))(1L, 0x1DF8BF27E8487125L);
        uint8_t *l_790 = (void*)0;
        uint8_t *l_791 = &p_2041->g_170;
        int i, j, k;
        for (i = 0; i < 7; i++)
        {
            for (j = 0; j < 1; j++)
            {
                for (k = 0; k < 1; k++)
                    l_776[i][j][k] = &l_777;
            }
        }
        (*l_728) = (safe_sub_func_uint32_t_u_u((safe_mod_func_int16_t_s_s((safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 16))(l_769.s1511476431452363)).sd, (p_2041->g_770 == (l_778[1][5][1] = &l_724[4][5][2])))), ((*l_779) |= (+2L)))), (safe_lshift_func_uint16_t_u_u((~((((safe_div_func_uint32_t_u_u((safe_mod_func_int64_t_s_s(((VECTOR(int64_t, 4))(l_786.yyyx)).y, p_62)), p_62)) == ((VECTOR(int8_t, 2))(1L, 0x1CL)).odd) != (safe_mod_func_uint8_t_u_u(((VECTOR(uint8_t, 2))(l_789.s10)).hi, l_786.y))) ^ ((*l_791) = p_2041->g_131))), 15))));
        (*p_63) = (*p_61);
    }
    else
    { /* block id: 233 */
        int32_t *l_792 = (void*)0;
        int32_t *l_793 = &p_2041->g_218;
        int32_t *l_794[4][4][6] = {{{&p_2041->g_218,(void*)0,(void*)0,&p_2041->g_218,(void*)0,&l_725},{&p_2041->g_218,(void*)0,(void*)0,&p_2041->g_218,(void*)0,&l_725},{&p_2041->g_218,(void*)0,(void*)0,&p_2041->g_218,(void*)0,&l_725},{&p_2041->g_218,(void*)0,(void*)0,&p_2041->g_218,(void*)0,&l_725}},{{&p_2041->g_218,(void*)0,(void*)0,&p_2041->g_218,(void*)0,&l_725},{&p_2041->g_218,(void*)0,(void*)0,&p_2041->g_218,(void*)0,&l_725},{&p_2041->g_218,(void*)0,(void*)0,&p_2041->g_218,(void*)0,&l_725},{&p_2041->g_218,(void*)0,(void*)0,&p_2041->g_218,(void*)0,&l_725}},{{&p_2041->g_218,(void*)0,(void*)0,&p_2041->g_218,(void*)0,&l_725},{&p_2041->g_218,(void*)0,(void*)0,&p_2041->g_218,(void*)0,&l_725},{&p_2041->g_218,(void*)0,(void*)0,&p_2041->g_218,(void*)0,&l_725},{&p_2041->g_218,(void*)0,(void*)0,&p_2041->g_218,(void*)0,&l_725}},{{&p_2041->g_218,(void*)0,(void*)0,&p_2041->g_218,(void*)0,&l_725},{&p_2041->g_218,(void*)0,(void*)0,&p_2041->g_218,(void*)0,&l_725},{&p_2041->g_218,(void*)0,(void*)0,&p_2041->g_218,(void*)0,&l_725},{&p_2041->g_218,(void*)0,(void*)0,&p_2041->g_218,(void*)0,&l_725}}};
        int16_t l_795[2];
        uint64_t l_796 = 0x3738014CB4343F50L;
        int64_t **l_801 = (void*)0;
        uint32_t l_804 = 1UL;
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_795[i] = 0x32E6L;
        ++l_796;
        for (p_2041->g_632 = (-24); (p_2041->g_632 > 27); p_2041->g_632 = safe_add_func_int16_t_s_s(p_2041->g_632, 7))
        { /* block id: 237 */
            (*p_2041->g_64) = l_794[3][2][0];
        }
        l_801 = (void*)0;
        l_804--;
    }
    return p_62;
}


/* ------------------------------------------ */
/* 
 * reads : p_2041->g_52 p_2041->g_171 p_2041->g_170 p_2041->g_158 p_2041->g_150 p_2041->g_84 p_2041->g_65 p_2041->g_33 p_2041->g_38 p_2041->g_127 p_2041->g_219 p_2041->g_122 p_2041->g_3 p_2041->g_218 p_2041->g_64 p_2041->g_497 p_2041->g_185 p_2041->g_119 p_2041->g_131 p_2041->g_230 p_2041->g_236 p_2041->g_244 p_2041->g_245 p_2041->g_247 p_2041->g_294 p_2041->g_665 p_2041->g_595 p_2041->g_678 p_2041->g_402 p_2041->g_358 p_2041->g_689
 * writes: p_2041->g_84 p_2041->g_185 p_2041->g_171 p_2041->g_52 p_2041->g_150 p_2041->g_219 p_2041->g_122 p_2041->g_218 p_2041->g_170 p_2041->g_65 p_2041->g_368 p_2041->g_158 p_2041->g_131
 */
int32_t ** func_66(int16_t * p_67, uint64_t  p_68, uint32_t  p_69, struct S2 * p_2041)
{ /* block id: 57 */
    int32_t *l_140 = (void*)0;
    int32_t **l_147 = (void*)0;
    VECTOR(uint16_t, 4) l_148 = (VECTOR(uint16_t, 4))(65530UL, (VECTOR(uint16_t, 2))(65530UL, 0x152EL), 0x152EL);
    uint16_t *l_149 = &p_2041->g_150;
    uint64_t *l_157 = (void*)0;
    uint8_t *l_169[3][1][1];
    uint64_t l_172 = 1UL;
    int16_t *l_173 = &p_2041->g_131;
    uint8_t l_174 = 2UL;
    uint32_t l_190 = 0xF98005EDL;
    int32_t l_211 = 0x5106FB5FL;
    int32_t l_212 = 8L;
    int32_t l_214 = (-4L);
    int32_t l_215 = 0x70280360L;
    VECTOR(int8_t, 2) l_216 = (VECTOR(int8_t, 2))(1L, 0x03L);
    VECTOR(uint16_t, 16) l_229 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x0F49L), 0x0F49L), 0x0F49L, 1UL, 0x0F49L, (VECTOR(uint16_t, 2))(1UL, 0x0F49L), (VECTOR(uint16_t, 2))(1UL, 0x0F49L), 1UL, 0x0F49L, 1UL, 0x0F49L);
    uint32_t l_231 = 0xAFB46097L;
    VECTOR(int32_t, 4) l_237 = (VECTOR(int32_t, 4))(0x47A0F895L, (VECTOR(int32_t, 2))(0x47A0F895L, 0x457FDAD4L), 0x457FDAD4L);
    VECTOR(int32_t, 4) l_240 = (VECTOR(int32_t, 4))(0x2148729FL, (VECTOR(int32_t, 2))(0x2148729FL, 0x52571265L), 0x52571265L);
    VECTOR(int32_t, 16) l_241 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L), (VECTOR(int32_t, 2))((-1L), (-1L)), (VECTOR(int32_t, 2))((-1L), (-1L)), (-1L), (-1L), (-1L), (-1L));
    VECTOR(int16_t, 2) l_243 = (VECTOR(int16_t, 2))(0x27F2L, (-9L));
    uint32_t l_253 = 0x43D050ACL;
    int16_t ***l_268 = (void*)0;
    uint64_t l_325 = 0x9AE85249B6448E56L;
    VECTOR(int8_t, 4) l_356 = (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, (-5L)), (-5L));
    VECTOR(uint8_t, 2) l_364 = (VECTOR(uint8_t, 2))(0UL, 0x04L);
    int8_t *l_404 = (void*)0;
    VECTOR(int32_t, 8) l_405 = (VECTOR(int32_t, 8))(0x0839FA8BL, (VECTOR(int32_t, 4))(0x0839FA8BL, (VECTOR(int32_t, 2))(0x0839FA8BL, 8L), 8L), 8L, 0x0839FA8BL, 8L);
    VECTOR(int8_t, 16) l_494 = (VECTOR(int8_t, 16))(6L, (VECTOR(int8_t, 4))(6L, (VECTOR(int8_t, 2))(6L, 0x23L), 0x23L), 0x23L, 6L, 0x23L, (VECTOR(int8_t, 2))(6L, 0x23L), (VECTOR(int8_t, 2))(6L, 0x23L), 6L, 0x23L, 6L, 0x23L);
    VECTOR(uint32_t, 4) l_508 = (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x08BD7644L), 0x08BD7644L);
    uint32_t *l_534 = &p_2041->g_535;
    VECTOR(uint16_t, 2) l_564 = (VECTOR(uint16_t, 2))(2UL, 0x29D5L);
    uint8_t l_639 = 1UL;
    int8_t *l_650 = &p_2041->g_171[6];
    VECTOR(int32_t, 16) l_667 = (VECTOR(int32_t, 16))(0x664BA7E0L, (VECTOR(int32_t, 4))(0x664BA7E0L, (VECTOR(int32_t, 2))(0x664BA7E0L, 0x6CF1E383L), 0x6CF1E383L), 0x6CF1E383L, 0x664BA7E0L, 0x6CF1E383L, (VECTOR(int32_t, 2))(0x664BA7E0L, 0x6CF1E383L), (VECTOR(int32_t, 2))(0x664BA7E0L, 0x6CF1E383L), 0x664BA7E0L, 0x6CF1E383L, 0x664BA7E0L, 0x6CF1E383L);
    int16_t l_687 = (-1L);
    int32_t *l_691 = (void*)0;
    int32_t *l_692 = (void*)0;
    int32_t *l_693 = (void*)0;
    int32_t *l_694 = &p_2041->g_218;
    int32_t *l_695 = (void*)0;
    int32_t *l_696 = (void*)0;
    int32_t *l_697[1][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    uint32_t l_698 = 0x00DA9C44L;
    int i, j, k;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 1; k++)
                l_169[i][j][k] = &p_2041->g_170;
        }
    }
lbl_701:
    if (((safe_add_func_uint64_t_u_u(((((((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 16))(((safe_sub_func_int8_t_s_s(((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 8))(max(((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),VECTOR(int8_t, 8),((VECTOR(int8_t, 8))(mad_sat(((VECTOR(int8_t, 16))((((*l_173) ^= (safe_div_func_int16_t_s_s((p_69 ^ (((l_140 != l_140) || (safe_mod_func_uint16_t_u_u((((((safe_lshift_func_int16_t_s_s((safe_lshift_func_uint16_t_u_s((l_147 == (p_68 , &l_140)), 15)), (FAKE_DIVERGE(p_2041->global_0_offset, get_global_id(0), 10) & ((*l_149) |= ((VECTOR(uint16_t, 4))(abs(((VECTOR(uint16_t, 2))(l_148.ww)).yyxy))).y)))) , ((safe_rshift_func_uint8_t_u_s((p_2041->g_170 = (safe_mul_func_uint16_t_u_u((((p_2041->g_158 |= (safe_rshift_func_uint16_t_u_u(p_69, 1))) && (((safe_add_func_uint16_t_u_u(((-10L) < (safe_sub_func_uint64_t_u_u(((safe_rshift_func_int8_t_s_u((safe_div_func_int64_t_s_s((safe_sub_func_int8_t_s_s(0L, p_2041->g_119.x)), p_69)), p_69)) ^ p_2041->g_119.y), p_2041->g_119.x))), p_2041->g_119.x)) <= 0x5572512C82440A59L) < p_68)) != p_2041->g_3), p_2041->g_3))), p_69)) & 0x3E5AF5969A1B29E6L)) >= p_2041->g_171[6]) != p_69) || 7L), 0x52E0L))) , 0x1AL)), l_172))) == p_2041->g_119.x), ((VECTOR(int8_t, 8))((-1L))), p_2041->g_127, ((VECTOR(int8_t, 4))(0x54L)), 0x74L, 0x06L)).lo, ((VECTOR(int8_t, 8))(0x0AL)), ((VECTOR(int8_t, 8))(0L))))), ((VECTOR(int8_t, 8))(0L)), ((VECTOR(int8_t, 8))(1L))))), ((VECTOR(int8_t, 8))((-1L)))))).lo, ((VECTOR(int8_t, 4))((-6L)))))).z, p_2041->g_33)) <= 0x500A9482L), 0x3B53L, 65535UL, ((VECTOR(uint16_t, 4))(0x0C1DL)), p_2041->g_84, p_68, FAKE_DIVERGE(p_2041->group_1_offset, get_group_id(1), 10), l_174, ((VECTOR(uint16_t, 4))(0x5D52L)), 0x5193L)).even + ((VECTOR(uint16_t, 8))(1UL))))).s2 | 0x5508L) | FAKE_DIVERGE(p_2041->local_0_offset, get_local_id(0), 10)) , p_68) && (-2L)), p_2041->g_52)) < p_2041->g_171[6]))
    { /* block id: 62 */
        uint8_t l_181 = 0x1FL;
        uint32_t *l_182 = &p_2041->g_84;
        int32_t **l_186 = &p_2041->g_65;
        int8_t *l_187 = (void*)0;
        int8_t *l_188[1];
        int64_t *l_189 = (void*)0;
        int32_t *l_191[4] = {&p_2041->g_52,&p_2041->g_52,&p_2041->g_52,&p_2041->g_52};
        uint16_t l_196 = 0xA302L;
        VECTOR(uint64_t, 8) l_206 = (VECTOR(uint64_t, 8))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 18446744073709551610UL), 18446744073709551610UL), 18446744073709551610UL, 0UL, 18446744073709551610UL);
        int64_t **l_207 = &l_189;
        VECTOR(uint32_t, 4) l_225 = (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0x2D6479EBL), 0x2D6479EBL);
        uint64_t *l_226 = &l_172;
        VECTOR(int32_t, 2) l_238 = (VECTOR(int32_t, 2))(1L, 0L);
        VECTOR(int32_t, 4) l_239 = (VECTOR(int32_t, 4))(0x0AD31C04L, (VECTOR(int32_t, 2))(0x0AD31C04L, 0L), 0L);
        VECTOR(int16_t, 8) l_242 = (VECTOR(int16_t, 8))(0x56DDL, (VECTOR(int16_t, 4))(0x56DDL, (VECTOR(int16_t, 2))(0x56DDL, (-1L)), (-1L)), (-1L), 0x56DDL, (-1L));
        VECTOR(int16_t, 16) l_246 = (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L, (VECTOR(int16_t, 2))((-1L), 0L), (VECTOR(int16_t, 2))((-1L), 0L), (-1L), 0L, (-1L), 0L);
        VECTOR(int32_t, 16) l_252 = (VECTOR(int32_t, 16))(0x2CF4FC5EL, (VECTOR(int32_t, 4))(0x2CF4FC5EL, (VECTOR(int32_t, 2))(0x2CF4FC5EL, 0L), 0L), 0L, 0x2CF4FC5EL, 0L, (VECTOR(int32_t, 2))(0x2CF4FC5EL, 0L), (VECTOR(int32_t, 2))(0x2CF4FC5EL, 0L), 0x2CF4FC5EL, 0L, 0x2CF4FC5EL, 0L);
        VECTOR(int32_t, 4) l_282 = (VECTOR(int32_t, 4))((-10L), (VECTOR(int32_t, 2))((-10L), (-10L)), (-10L));
        uint64_t l_292[8];
        VECTOR(int32_t, 16) l_295 = (VECTOR(int32_t, 16))(5L, (VECTOR(int32_t, 4))(5L, (VECTOR(int32_t, 2))(5L, 0x5E9F68C5L), 0x5E9F68C5L), 0x5E9F68C5L, 5L, 0x5E9F68C5L, (VECTOR(int32_t, 2))(5L, 0x5E9F68C5L), (VECTOR(int32_t, 2))(5L, 0x5E9F68C5L), 5L, 0x5E9F68C5L, 5L, 0x5E9F68C5L);
        int i;
        for (i = 0; i < 1; i++)
            l_188[i] = &p_2041->g_171[3];
        for (i = 0; i < 8; i++)
            l_292[i] = 4UL;
lbl_297:
        p_2041->g_52 = (safe_sub_func_uint32_t_u_u(p_2041->g_170, (safe_add_func_int64_t_s_s((((safe_div_func_int32_t_s_s((((l_190 = (((0UL >= p_2041->g_158) | ((l_181 , &p_2041->g_150) == (void*)0)) >= ((p_2041->g_171[8] = (p_69 , (((*l_182) &= p_2041->g_150) == (safe_mod_func_int16_t_s_s(((p_2041->g_185 = &l_140) == l_186), (-9L)))))) & (**l_186)))) | p_2041->g_170) > 0UL), p_69)) > p_2041->g_127) < p_69), p_69))));
        if ((safe_div_func_int16_t_s_s(((((safe_lshift_func_int16_t_s_u(l_196, (safe_sub_func_int8_t_s_s((safe_div_func_int32_t_s_s((*p_2041->g_65), 0x022B33F4L)), FAKE_DIVERGE(p_2041->group_2_offset, get_group_id(2), 10))))) | (safe_sub_func_int16_t_s_s(p_68, ((safe_unary_minus_func_uint64_t_u(0xDD07A39AD0433462L)) , (safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 8))(l_206.s56252256)).s5, ((**l_186) | 0x66L))))))) || ((*l_149) &= (0x13L >= ((((*l_207) = (void*)0) != (void*)0) ^ p_69)))) <= p_68), FAKE_DIVERGE(p_2041->group_0_offset, get_group_id(0), 10))))
        { /* block id: 70 */
            uint8_t l_208[7];
            int32_t l_213 = 0x71039129L;
            int i;
            for (i = 0; i < 7; i++)
                l_208[i] = 0xD2L;
            l_208[1]++;
            p_2041->g_219++;
        }
        else
        { /* block id: 73 */
            uint32_t *l_222 = &p_2041->g_122;
            p_2041->g_218 ^= (((++(*l_222)) , p_2041->g_3) , (p_69 & 0x71FC3F6FL));
        }
        if (((((VECTOR(uint32_t, 4))(l_225.zyyy)).z ^ ((((l_226 = &l_172) != (void*)0) , (safe_mul_func_int8_t_s_s(p_2041->g_38[7], (l_231 = (p_2041->g_38[4] & ((*l_226) = (((VECTOR(uint16_t, 4))(l_229.s2525)).z && ((VECTOR(uint16_t, 16))(p_2041->g_230.s40e6e93f746a5809)).s4))))))) && ((safe_add_func_int16_t_s_s(p_68, (safe_add_func_uint64_t_u_u(0xF2DE34E35C125225L, p_68)))) || (((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),VECTOR(int32_t, 16),((VECTOR(int32_t, 2))((-8L), 0x55CA6FD5L)).xyyxyyyyyxxxyxyy, ((VECTOR(int32_t, 16))(p_2041->g_236.s2157217414701516)), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_237.zx)), ((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 2))(0x27159786L, 7L)).yyxyxxxx, ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(0x7E4D3A49L, 0x3FF5F7A2L)) ^ ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))(l_238.yyxyxyxy)).hi <= ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_239.yx)), 0x46179B6AL, 0x1BE73D2FL)) && ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))(l_240.yy)).xxyyyyyyyyxxyyyx && ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(l_241.s8784)).even && ((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 16))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))(l_242.s1662376760747272)).s2c <= ((VECTOR(int16_t, 4))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 4),((VECTOR(int16_t, 4))(mad_sat(((VECTOR(int16_t, 16))(0x281AL, ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 16))(mad_sat(((VECTOR(int16_t, 16))(l_243.xxxyyxxxxxyxxxxx)), ((VECTOR(int16_t, 16))(0x79D1L, 0x5DCDL, (**l_186), ((VECTOR(int16_t, 4))(rhadd(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))(p_2041->g_244.s2361)).even ^ ((VECTOR(int16_t, 2))((-3L), 1L))))).yxyx, ((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))(p_2041->g_245.s0760c695775bb545)).odd ^ ((VECTOR(int16_t, 16))(l_246.s49c42c81b91dd583)).lo))).lo))).lo, ((VECTOR(int16_t, 16))(p_2041->g_247.xyyyyxxyxyyyxyyx)).s7b))).yyyy))), (safe_add_func_int8_t_s_s(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))((-5L), 0x73L)), 0L, (-7L))).y, (-1L))), (-1L), p_69, 0x6638L, (**l_186), ((VECTOR(int16_t, 2))(0L)), 0L, 1L)), ((VECTOR(int16_t, 16))(0x6934L))))).s3e88 && ((VECTOR(int16_t, 4))(0x08C5L))))), p_68, 0x78A3L, (-4L), (-10L), ((VECTOR(int16_t, 4))(0x1578L)), ((VECTOR(int16_t, 2))((-6L))), 0x4582L)).s4aa6, ((VECTOR(int16_t, 4))(0x5CF8L)), ((VECTOR(int16_t, 4))(0x0091L))))), ((VECTOR(int16_t, 4))((-9L))), ((VECTOR(int16_t, 4))(0x296FL))))).hi))).xyyyxxxxxyyyxyyx > ((VECTOR(int16_t, 16))(0x3562L))))).s432f, ((VECTOR(uint16_t, 4))(0x8885L))))).even))).yyxxxyyyxyxxyxyx))).sdf74)))))), ((VECTOR(int32_t, 2))(0x7DDBBE7BL)), 0L, 5L)).s3170636724566124 > ((VECTOR(int32_t, 16))(0L))))).s15, ((VECTOR(int32_t, 2))(0L))))), 6L, ((VECTOR(int32_t, 2))(1L)), ((VECTOR(int32_t, 2))(0x0A2C7106L)), 0x1127E7C4L)), ((VECTOR(int32_t, 8))(0x3152C324L)))).s9e))), p_69, (**l_186), 0x20527C21L, 1L, 1L, 1L)).s47 && ((VECTOR(int32_t, 2))(0x1838B50AL))))).yyyyyxyx))), ((VECTOR(int32_t, 4))(0x10924762L)), 0x0E5FE5BDL, 0x00B4788FL))))).sa <= p_69)))) , p_69))
        { /* block id: 80 */
            uint32_t **l_256 = (void*)0;
            uint32_t **l_257 = (void*)0;
            uint32_t *l_259[1];
            uint32_t **l_258 = &l_259[0];
            uint32_t *l_260 = &p_2041->g_127;
            int i;
            for (i = 0; i < 1; i++)
                l_259[i] = &p_2041->g_127;
            l_240.z ^= (safe_lshift_func_uint16_t_u_u(p_68, 2));
            l_253 = ((VECTOR(int32_t, 8))(l_252.sf0b89f9e)).s0;
            l_214 = (safe_mul_func_uint8_t_u_u(((&l_173 == &p_67) & (((*l_258) = l_140) != (l_260 = l_182))), p_68));
            for (p_2041->g_170 = (-2); (p_2041->g_170 != 56); ++p_2041->g_170)
            { /* block id: 88 */
                (*p_2041->g_64) = (*l_186);
                if (p_69)
                    break;
            }
        }
        else
        { /* block id: 92 */
            uint8_t l_265 = 0xB7L;
            int32_t *l_271 = &p_2041->g_218;
            for (p_68 = 0; (p_68 <= 51); ++p_68)
            { /* block id: 95 */
                VECTOR(int16_t, 4) l_289 = (VECTOR(int16_t, 4))(0x55E2L, (VECTOR(int16_t, 2))(0x55E2L, 0x19BCL), 0x19BCL);
                int i;
                l_265++;
            }
            (*l_271) = ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))(p_2041->g_294.xyyywyzy)).odd >= ((VECTOR(int32_t, 8))(l_295.sde90d805)).hi))).w;
            l_214 ^= ((*l_271) = (safe_unary_minus_func_uint64_t_u(((VECTOR(uint64_t, 4))(0UL, 18446744073709551610UL, 0xB2365D8C4712241EL, 0x54DE94EE4FADF7A9L)).w)));
        }
        if (p_2041->g_84)
            goto lbl_297;
    }
    else
    { /* block id: 114 */
        uint32_t *l_301 = &p_2041->g_84;
        int32_t l_309 = (-9L);
        int32_t l_326 = 0x48D5A2CEL;
        uint32_t l_349 = 0x134EDAD8L;
        VECTOR(int8_t, 16) l_354 = (VECTOR(int8_t, 16))(0x51L, (VECTOR(int8_t, 4))(0x51L, (VECTOR(int8_t, 2))(0x51L, 0L), 0L), 0L, 0x51L, 0L, (VECTOR(int8_t, 2))(0x51L, 0L), (VECTOR(int8_t, 2))(0x51L, 0L), 0x51L, 0L, 0x51L, 0L);
        uint32_t l_388 = 4294967295UL;
        uint64_t *l_389 = &l_172;
        VECTOR(int32_t, 8) l_391 = (VECTOR(int32_t, 8))(0x2AFC8212L, (VECTOR(int32_t, 4))(0x2AFC8212L, (VECTOR(int32_t, 2))(0x2AFC8212L, (-4L)), (-4L)), (-4L), 0x2AFC8212L, (-4L));
        int64_t l_439 = 0x458647AEF45D9D6FL;
        int32_t l_455 = 0x19414B95L;
        uint16_t *l_485[4];
        VECTOR(int8_t, 16) l_495 = (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-9L)), (-9L)), (-9L), 1L, (-9L), (VECTOR(int8_t, 2))(1L, (-9L)), (VECTOR(int8_t, 2))(1L, (-9L)), 1L, (-9L), 1L, (-9L));
        uint32_t l_500 = 0x6E33CEF6L;
        int32_t l_558 = 5L;
        VECTOR(int64_t, 8) l_594 = (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x635BAC7589B8690BL), 0x635BAC7589B8690BL), 0x635BAC7589B8690BL, 0L, 0x635BAC7589B8690BL);
        int8_t **l_651 = &l_650;
        int64_t *l_657 = (void*)0;
        int64_t *l_658 = (void*)0;
        int64_t *l_659 = (void*)0;
        int64_t *l_660 = (void*)0;
        int64_t *l_661 = (void*)0;
        VECTOR(int32_t, 16) l_662 = (VECTOR(int32_t, 16))(0x62A730B8L, (VECTOR(int32_t, 4))(0x62A730B8L, (VECTOR(int32_t, 2))(0x62A730B8L, 0x7A0161C6L), 0x7A0161C6L), 0x7A0161C6L, 0x62A730B8L, 0x7A0161C6L, (VECTOR(int32_t, 2))(0x62A730B8L, 0x7A0161C6L), (VECTOR(int32_t, 2))(0x62A730B8L, 0x7A0161C6L), 0x62A730B8L, 0x7A0161C6L, 0x62A730B8L, 0x7A0161C6L);
        VECTOR(int32_t, 16) l_666 = (VECTOR(int32_t, 16))(0x7CC1C307L, (VECTOR(int32_t, 4))(0x7CC1C307L, (VECTOR(int32_t, 2))(0x7CC1C307L, (-1L)), (-1L)), (-1L), 0x7CC1C307L, (-1L), (VECTOR(int32_t, 2))(0x7CC1C307L, (-1L)), (VECTOR(int32_t, 2))(0x7CC1C307L, (-1L)), 0x7CC1C307L, (-1L), 0x7CC1C307L, (-1L));
        VECTOR(int16_t, 16) l_673 = (VECTOR(int16_t, 16))(0x0476L, (VECTOR(int16_t, 4))(0x0476L, (VECTOR(int16_t, 2))(0x0476L, 0x3F6BL), 0x3F6BL), 0x3F6BL, 0x0476L, 0x3F6BL, (VECTOR(int16_t, 2))(0x0476L, 0x3F6BL), (VECTOR(int16_t, 2))(0x0476L, 0x3F6BL), 0x0476L, 0x3F6BL, 0x0476L, 0x3F6BL);
        int64_t l_688[9] = {0x28B1B56ADCEDB202L,1L,0x28B1B56ADCEDB202L,0x28B1B56ADCEDB202L,1L,0x28B1B56ADCEDB202L,0x28B1B56ADCEDB202L,1L,0x28B1B56ADCEDB202L};
        int32_t *l_690[4][10][6] = {{{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52}},{{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52}},{{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52}},{{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52},{&p_2041->g_52,&l_214,(void*)0,(void*)0,&l_214,&p_2041->g_52}}};
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_485[i] = (void*)0;
        for (p_2041->g_84 = 0; (p_2041->g_84 != 49); p_2041->g_84 = safe_add_func_uint16_t_u_u(p_2041->g_84, 3))
        { /* block id: 117 */
            int32_t *l_300 = &p_2041->g_33;
            uint32_t **l_302 = &l_301;
            int8_t *l_345 = (void*)0;
            int8_t *l_346 = &p_2041->g_217;
            uint64_t *l_347[6][9][3] = {{{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0}},{{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0}},{{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0}},{{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0}},{{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0}},{{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0},{&p_2041->g_219,&l_325,(void*)0}}};
            int32_t l_348 = (-4L);
            VECTOR(uint32_t, 2) l_352 = (VECTOR(uint32_t, 2))(4294967295UL, 4294967295UL);
            VECTOR(int16_t, 8) l_375 = (VECTOR(int16_t, 8))(2L, (VECTOR(int16_t, 4))(2L, (VECTOR(int16_t, 2))(2L, 0x560DL), 0x560DL), 0x560DL, 2L, 0x560DL);
            int32_t l_429 = 0x7682DE2DL;
            int32_t l_430 = 0x53D4A6B5L;
            VECTOR(int32_t, 4) l_431 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-1L)), (-1L));
            VECTOR(int8_t, 2) l_496 = (VECTOR(int8_t, 2))(0x41L, 0x48L);
            VECTOR(uint32_t, 2) l_509 = (VECTOR(uint32_t, 2))(0x07EE62FEL, 0x1D62D0FCL);
            VECTOR(int32_t, 4) l_602 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-1L)), (-1L));
            VECTOR(int32_t, 8) l_604 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L));
            int i, j, k;
            (*p_2041->g_64) = l_300;
        }
        l_391.s6 |= (p_2041->g_171[6] <= (p_2041->g_368 = (safe_add_func_int8_t_s_s((safe_mul_func_int8_t_s_s(p_68, 252UL)), ((safe_add_func_uint64_t_u_u((safe_mul_func_uint16_t_u_u(((&p_2041->g_3 == ((*l_651) = l_650)) , ((safe_sub_func_uint8_t_u_u(0x11L, ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 16))(mul_hi(((VECTOR(uint8_t, 16))(((l_157 = ((safe_unary_minus_func_uint64_t_u(p_2041->g_244.s7)) , &p_2041->g_219)) == &p_68), ((VECTOR(uint8_t, 8))(255UL)), l_495.s5, 0x94L, ((VECTOR(uint8_t, 2))(255UL)), 249UL, 1UL, 250UL)), ((VECTOR(uint8_t, 16))(5UL))))).s830b * ((VECTOR(uint8_t, 4))(0xFAL))))).x)) != p_2041->g_497.y)), 65535UL)), 0x5ADD4150AE464DA2L)) <= p_2041->g_33)))));
        p_2041->g_218 = (((VECTOR(int32_t, 16))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 4))(l_662.s16ab)).ywzwyxwxzywwwxzy, ((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))((-7L), 0x0D66487AL, (*p_2041->g_65), ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(1L, 1L, 0x015870F8L, 0x052B021FL, 0x1AD8DA80L, (l_241.s3 &= (safe_div_func_uint16_t_u_u((((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(p_2041->g_665.sbbfc)).hi | ((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))(0x46EA0579L, (-1L), 9L, 3L)).yyxwzxzywyyxxwxw && ((VECTOR(int32_t, 4))(l_666.s75c0)).wzyzwyyxxywwwzzx))) && ((VECTOR(int32_t, 8))(l_667.s7f68b15a)).s2140614753014377))), ((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 8))((((safe_div_func_uint8_t_u_u(p_2041->g_595.x, p_68)) & (+(safe_unary_minus_func_int32_t_s(p_69)))) && (++(*l_157))), (-9L), 0x4DA7L, ((VECTOR(int16_t, 2))(l_673.s38)), ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(l_391.s6, (-1L), ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))((l_688[4] ^= (safe_rshift_func_uint16_t_u_u(((*l_149) = ((VECTOR(uint16_t, 8))(sub_sat(((VECTOR(uint16_t, 2))(0xC734L, 65526UL)).xyxxxyxy, ((VECTOR(uint16_t, 8))(abs_diff(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))(p_2041->g_678.xwwwzzzxwzyywwyz)).see + ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))(9UL, ((VECTOR(uint16_t, 2))(abs(((VECTOR(int16_t, 16))((((p_69 , (safe_lshift_func_uint16_t_u_s((p_2041->g_245.s8 <= ((~((safe_rshift_func_uint16_t_u_u(((((*l_173) ^= ((safe_sub_func_int32_t_s_s((*p_2041->g_65), (**p_2041->g_185))) == l_687)) && p_2041->g_402.y) < p_2041->g_358.s7), 13)) | l_594.s7)) && (-10L))), p_68))) < p_68) > 18446744073709551607UL), ((VECTOR(int16_t, 2))(1L)), ((VECTOR(int16_t, 8))(0x7AAFL)), 1L, ((VECTOR(int16_t, 4))((-8L))))).sb4))), 0xD23BL)) + ((VECTOR(uint16_t, 4))(0x756AL))))).even))).xyxxyxxy, ((VECTOR(uint16_t, 8))(65535UL)))))))).s1), 8))), 0x7589L, p_68, ((VECTOR(int16_t, 4))(0L)), 0x46B1L)).s41 > ((VECTOR(int16_t, 2))(0x73D3L))))), p_2041->g_689, 0x7708L, 0x1669L, 0L)).s12 && ((VECTOR(int16_t, 2))((-8L)))))), (-2L))).s3554207601653403, ((VECTOR(uint16_t, 16))(0xF349L)))))))).hi, ((VECTOR(int32_t, 8))(0x2057386EL)), ((VECTOR(int32_t, 8))((-1L)))))).s32, ((VECTOR(int32_t, 2))(0x6937BF68L))))).yyyxyxyxyyxyxxxy, ((VECTOR(int32_t, 16))(1L))))).sfb))), ((VECTOR(int32_t, 2))(0L))))), 0x647D1BC0L, p_69, ((VECTOR(int32_t, 2))(0x73B76E31L)), (-1L), 0x2AF00BE5L)).s2717143207741444, ((VECTOR(int32_t, 16))(0x0169EABAL))))).se & p_69), FAKE_DIVERGE(p_2041->local_0_offset, get_local_id(0), 10)))), (**p_2041->g_185), (*p_2041->g_65), 0x1E05036EL, 0x5593B5D9L, 2L, p_69, 0L, 0L, 0x28D5ACEFL, (-1L))).s7cd2 && ((VECTOR(int32_t, 4))((-9L)))))), 0x6F4BFA3BL)).s60, ((VECTOR(int32_t, 2))(0x58F51A40L)), ((VECTOR(int32_t, 2))(0x71F32A54L))))) && ((VECTOR(int32_t, 2))(0x5ACFCF9CL))))).xyyyyyyy))).s1177465736577603, ((VECTOR(int32_t, 16))((-9L)))))).s1 && 4294967295UL);
    }
    ++l_698;
    if (p_2041->g_52)
        goto lbl_701;
    (*p_2041->g_185) = (*p_2041->g_185);
    return &p_2041->g_65;
}


/* ------------------------------------------ */
/* 
 * reads : p_2041->g_88 p_2041->g_64 p_2041->g_65 p_2041->g_38 p_2041->g_52 p_2041->g_33 p_2041->g_3 p_2041->g_130
 * writes: p_2041->g_88 p_2041->g_52 p_2041->g_65 p_2041->g_122
 */
int16_t * func_70(uint64_t  p_71, int16_t  p_72, int32_t ** p_73, struct S2 * p_2041)
{ /* block id: 39 */
    int32_t l_87 = 2L;
    VECTOR(uint64_t, 2) l_99 = (VECTOR(uint64_t, 2))(0x0BBFFD32083B01F6L, 0UL);
    int i;
    if (l_87)
    { /* block id: 40 */
        volatile int16_t * volatile **l_91 = &p_2041->g_88[1][4][2];
        (*l_91) = p_2041->g_88[3][3][3];
    }
    else
    { /* block id: 42 */
        uint32_t *l_94[7][9] = {{&p_2041->g_84,(void*)0,&p_2041->g_84,&p_2041->g_84,(void*)0,&p_2041->g_84,&p_2041->g_84,&p_2041->g_84,&p_2041->g_84},{&p_2041->g_84,(void*)0,&p_2041->g_84,&p_2041->g_84,(void*)0,&p_2041->g_84,&p_2041->g_84,&p_2041->g_84,&p_2041->g_84},{&p_2041->g_84,(void*)0,&p_2041->g_84,&p_2041->g_84,(void*)0,&p_2041->g_84,&p_2041->g_84,&p_2041->g_84,&p_2041->g_84},{&p_2041->g_84,(void*)0,&p_2041->g_84,&p_2041->g_84,(void*)0,&p_2041->g_84,&p_2041->g_84,&p_2041->g_84,&p_2041->g_84},{&p_2041->g_84,(void*)0,&p_2041->g_84,&p_2041->g_84,(void*)0,&p_2041->g_84,&p_2041->g_84,&p_2041->g_84,&p_2041->g_84},{&p_2041->g_84,(void*)0,&p_2041->g_84,&p_2041->g_84,(void*)0,&p_2041->g_84,&p_2041->g_84,&p_2041->g_84,&p_2041->g_84},{&p_2041->g_84,(void*)0,&p_2041->g_84,&p_2041->g_84,(void*)0,&p_2041->g_84,&p_2041->g_84,&p_2041->g_84,&p_2041->g_84}};
        int32_t l_108 = 0x556AB656L;
        VECTOR(uint64_t, 16) l_113 = (VECTOR(uint64_t, 16))(0x9AE3A9463023C078L, (VECTOR(uint64_t, 4))(0x9AE3A9463023C078L, (VECTOR(uint64_t, 2))(0x9AE3A9463023C078L, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0x9AE3A9463023C078L, 18446744073709551615UL, (VECTOR(uint64_t, 2))(0x9AE3A9463023C078L, 18446744073709551615UL), (VECTOR(uint64_t, 2))(0x9AE3A9463023C078L, 18446744073709551615UL), 0x9AE3A9463023C078L, 18446744073709551615UL, 0x9AE3A9463023C078L, 18446744073709551615UL);
        int64_t *l_118 = (void*)0;
        int64_t *l_120[8];
        int64_t l_121 = 0x47241AB084DB6C23L;
        uint32_t *l_126[10];
        int32_t l_128 = 0x0DF9F9BEL;
        int32_t *l_129[5][5];
        int i, j;
        for (i = 0; i < 8; i++)
            l_120[i] = (void*)0;
        for (i = 0; i < 10; i++)
            l_126[i] = &p_2041->g_127;
        for (i = 0; i < 5; i++)
        {
            for (j = 0; j < 5; j++)
                l_129[i][j] = &p_2041->g_52;
        }
        for (p_72 = (-18); (p_72 == 10); p_72++)
        { /* block id: 45 */
            int32_t *l_97 = (void*)0;
            int32_t *l_98 = &p_2041->g_52;
            (*l_98) = (l_94[0][1] != (((safe_sub_func_uint64_t_u_u(p_71, 0x5234D5E33AB57C19L)) , (**p_2041->g_64)) , &p_2041->g_84));
        }
        (*p_73) = (*p_2041->g_64);
        p_2041->g_52 = ((((*p_2041->g_64) = (*p_73)) == (((VECTOR(uint64_t, 16))(sub_sat(((VECTOR(uint64_t, 16))(l_99.xxyyxxyxyxxyyxyy)), ((VECTOR(uint64_t, 16))((safe_lshift_func_uint8_t_u_s(p_2041->g_52, (l_99.y > (safe_mod_func_uint64_t_u_u(((safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 16))(l_108, GROUP_DIVERGE(0, 1), ((VECTOR(uint32_t, 8))((safe_sub_func_uint8_t_u_u((safe_mod_func_int64_t_s_s((p_72 && l_99.x), ((VECTOR(uint64_t, 16))(l_113.s94679f7867f40e30)).s2)), (safe_sub_func_int32_t_s_s((safe_rshift_func_int16_t_s_s((l_108 = (p_2041->g_122 = (p_2041->g_38[8] && (l_121 = p_71)))), ((l_128 = (safe_unary_minus_func_uint32_t_u((safe_add_func_int32_t_s_s(p_71, p_2041->g_38[5]))))) , 0x07E8L))), l_99.y)))), ((VECTOR(uint32_t, 4))(0xBD688696L)), 0UL, 0x227312B8L, 0UL)), 0x304E8079L, 0x72D1EC86L, l_113.sd, 0xB7EE776CL, 4294967294UL, 1UL)).odd + ((VECTOR(uint32_t, 8))(0x4BEA28A7L))))).s1, p_71)) < p_2041->g_33), p_2041->g_38[5]))))), 0x9005044EF0715EADL, ((VECTOR(uint64_t, 2))(18446744073709551615UL)), 0xA4895AF60329EC22L, ((VECTOR(uint64_t, 8))(0x94DD07668EA8FD6CL)), p_2041->g_3, 18446744073709551610UL, 0xD91FBEB5A7EB3ECDL))))).s4 , &p_2041->g_52)) <= 0xD7C4E94CL);
    }
    return p_2041->g_130[3][5][5];
}


/* ------------------------------------------ */
/* 
 * reads : p_2041->g_64 p_2041->g_65
 * writes: p_2041->g_65
 */
int32_t ** func_74(uint16_t  p_75, int32_t ** p_76, uint16_t  p_77, struct S2 * p_2041)
{ /* block id: 26 */
    uint16_t l_79 = 0UL;
lbl_82:
    l_79 = 0x7E30C1ABL;
    for (l_79 = 0; (l_79 == 6); l_79 = safe_add_func_uint32_t_u_u(l_79, 1))
    { /* block id: 30 */
        uint32_t *l_83 = &p_2041->g_84;
        int32_t *l_85 = (void*)0;
        int32_t *l_86 = &p_2041->g_52;
        if (l_79)
            goto lbl_82;
    }
    (*p_76) = (*p_2041->g_64);
    return &p_2041->g_65;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S2 c_2042;
    struct S2* p_2041 = &c_2042;
    struct S2 c_2043 = {
        255UL, // p_2041->g_2
        0x30L, // p_2041->g_3
        0x20B2L, // p_2041->g_23
        (-9L), // p_2041->g_33
        {7L,7L,7L,7L,7L,7L,7L,7L,7L}, // p_2041->g_38
        (-8L), // p_2041->g_52
        &p_2041->g_38[0], // p_2041->g_65
        &p_2041->g_65, // p_2041->g_64
        0x23D2215AL, // p_2041->g_84
        0x1EFBL, // p_2041->g_90
        &p_2041->g_90, // p_2041->g_89
        {{{&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89},{&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89},{&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89},{&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89},{&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89}},{{&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89},{&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89},{&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89},{&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89},{&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89}},{{&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89},{&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89},{&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89},{&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89},{&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89}},{{&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89},{&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89},{&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89},{&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89},{&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89}},{{&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89},{&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89},{&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89},{&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89},{&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89,&p_2041->g_89}}}, // p_2041->g_88
        (VECTOR(int64_t, 2))((-9L), (-1L)), // p_2041->g_119
        0x4639A721L, // p_2041->g_122
        0x37858094L, // p_2041->g_127
        0L, // p_2041->g_131
        {{{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131},{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131},{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131},{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131},{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131},{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131},{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131}},{{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131},{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131},{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131},{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131},{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131},{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131},{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131}},{{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131},{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131},{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131},{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131},{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131},{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131},{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131}},{{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131},{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131},{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131},{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131},{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131},{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131},{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131}},{{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131},{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131},{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131},{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131},{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131},{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131},{&p_2041->g_131,(void*)0,&p_2041->g_131,(void*)0,(void*)0,&p_2041->g_131,&p_2041->g_131}}}, // p_2041->g_130
        0xA74BL, // p_2041->g_150
        9L, // p_2041->g_158
        1UL, // p_2041->g_170
        {0x51L,0x51L,0x51L,0x51L,0x51L,0x51L,0x51L,0x51L,0x51L}, // p_2041->g_171
        &p_2041->g_65, // p_2041->g_185
        1L, // p_2041->g_217
        0x1544EF6DL, // p_2041->g_218
        1UL, // p_2041->g_219
        (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0UL), 0UL), 0UL, 65535UL, 0UL, (VECTOR(uint16_t, 2))(65535UL, 0UL), (VECTOR(uint16_t, 2))(65535UL, 0UL), 65535UL, 0UL, 65535UL, 0UL), // p_2041->g_230
        (VECTOR(int32_t, 8))(0x27578CAAL, (VECTOR(int32_t, 4))(0x27578CAAL, (VECTOR(int32_t, 2))(0x27578CAAL, 0x56759D5BL), 0x56759D5BL), 0x56759D5BL, 0x27578CAAL, 0x56759D5BL), // p_2041->g_236
        (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 1L), 1L), 1L, 1L, 1L), // p_2041->g_244
        (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L, (VECTOR(int16_t, 2))((-1L), 1L), (VECTOR(int16_t, 2))((-1L), 1L), (-1L), 1L, (-1L), 1L), // p_2041->g_245
        (VECTOR(int16_t, 2))((-1L), 0L), // p_2041->g_247
        &p_2041->g_130[3][5][5], // p_2041->g_270
        &p_2041->g_270, // p_2041->g_269
        (VECTOR(int32_t, 4))(0x6DA8DC72L, (VECTOR(int32_t, 2))(0x6DA8DC72L, 0L), 0L), // p_2041->g_294
        (VECTOR(uint32_t, 2))(1UL, 4294967295UL), // p_2041->g_353
        (VECTOR(int8_t, 2))(0x42L, 2L), // p_2041->g_355
        (VECTOR(int8_t, 8))(9L, (VECTOR(int8_t, 4))(9L, (VECTOR(int8_t, 2))(9L, 0L), 0L), 0L, 9L, 0L), // p_2041->g_358
        0x15E5C3FA607A89ECL, // p_2041->g_368
        (VECTOR(uint8_t, 16))(0x4CL, (VECTOR(uint8_t, 4))(0x4CL, (VECTOR(uint8_t, 2))(0x4CL, 0xACL), 0xACL), 0xACL, 0x4CL, 0xACL, (VECTOR(uint8_t, 2))(0x4CL, 0xACL), (VECTOR(uint8_t, 2))(0x4CL, 0xACL), 0x4CL, 0xACL, 0x4CL, 0xACL), // p_2041->g_399
        (VECTOR(int64_t, 2))(0L, 0x08FAD16AAD5CEF3FL), // p_2041->g_402
        (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 9UL), 9UL), 9UL, 4294967295UL, 9UL, (VECTOR(uint32_t, 2))(4294967295UL, 9UL), (VECTOR(uint32_t, 2))(4294967295UL, 9UL), 4294967295UL, 9UL, 4294967295UL, 9UL), // p_2041->g_464
        (VECTOR(int8_t, 4))((-10L), (VECTOR(int8_t, 2))((-10L), 0x23L), 0x23L), // p_2041->g_497
        (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 1UL), 1UL), 1UL, 4294967295UL, 1UL), // p_2041->g_505
        (VECTOR(uint8_t, 2))(0x14L, 1UL), // p_2041->g_519
        0x3011F35FL, // p_2041->g_535
        (VECTOR(int16_t, 4))(0x27B3L, (VECTOR(int16_t, 2))(0x27B3L, 1L), 1L), // p_2041->g_557
        (VECTOR(uint32_t, 4))(0xB29C9F3EL, (VECTOR(uint32_t, 2))(0xB29C9F3EL, 0x896CEFDEL), 0x896CEFDEL), // p_2041->g_561
        (-9L), // p_2041->g_583
        (VECTOR(int64_t, 2))((-1L), 0L), // p_2041->g_595
        (VECTOR(int32_t, 8))(0x544DF66AL, (VECTOR(int32_t, 4))(0x544DF66AL, (VECTOR(int32_t, 2))(0x544DF66AL, 0L), 0L), 0L, 0x544DF66AL, 0L), // p_2041->g_605
        (VECTOR(uint16_t, 2))(0xF1D2L, 0x5A63L), // p_2041->g_624
        18446744073709551610UL, // p_2041->g_632
        (VECTOR(int32_t, 16))((-2L), (VECTOR(int32_t, 4))((-2L), (VECTOR(int32_t, 2))((-2L), 0x4F38516EL), 0x4F38516EL), 0x4F38516EL, (-2L), 0x4F38516EL, (VECTOR(int32_t, 2))((-2L), 0x4F38516EL), (VECTOR(int32_t, 2))((-2L), 0x4F38516EL), (-2L), 0x4F38516EL, (-2L), 0x4F38516EL), // p_2041->g_665
        (VECTOR(uint16_t, 4))(0xE43AL, (VECTOR(uint16_t, 2))(0xE43AL, 0UL), 0UL), // p_2041->g_678
        0xF0A1L, // p_2041->g_689
        (VECTOR(int64_t, 2))((-1L), 0L), // p_2041->g_704
        0x801B119717B61487L, // p_2041->g_723
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_2041->g_758
        &p_2041->g_758[1], // p_2041->g_757
        3L, // p_2041->g_772
        &p_2041->g_772, // p_2041->g_771
        &p_2041->g_771, // p_2041->g_770
        5L, // p_2041->g_803
        &p_2041->g_127, // p_2041->g_846
        &p_2041->g_846, // p_2041->g_845
        (VECTOR(int8_t, 2))(0x58L, (-1L)), // p_2041->g_868
        (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0L), 0L), 0L, 1L, 0L, (VECTOR(int32_t, 2))(1L, 0L), (VECTOR(int32_t, 2))(1L, 0L), 1L, 0L, 1L, 0L), // p_2041->g_871
        (VECTOR(int32_t, 2))(0L, 0x2127F7EAL), // p_2041->g_872
        (VECTOR(uint16_t, 8))(0x2556L, (VECTOR(uint16_t, 4))(0x2556L, (VECTOR(uint16_t, 2))(0x2556L, 0x56AAL), 0x56AAL), 0x56AAL, 0x2556L, 0x56AAL), // p_2041->g_889
        (VECTOR(int16_t, 16))(0x249EL, (VECTOR(int16_t, 4))(0x249EL, (VECTOR(int16_t, 2))(0x249EL, 0x0BC5L), 0x0BC5L), 0x0BC5L, 0x249EL, 0x0BC5L, (VECTOR(int16_t, 2))(0x249EL, 0x0BC5L), (VECTOR(int16_t, 2))(0x249EL, 0x0BC5L), 0x249EL, 0x0BC5L, 0x249EL, 0x0BC5L), // p_2041->g_909
        (VECTOR(uint64_t, 4))(0x3F3ABC9D7E141D01L, (VECTOR(uint64_t, 2))(0x3F3ABC9D7E141D01L, 0xD629F4691F40FDD5L), 0xD629F4691F40FDD5L), // p_2041->g_918
        (VECTOR(uint16_t, 16))(0x4591L, (VECTOR(uint16_t, 4))(0x4591L, (VECTOR(uint16_t, 2))(0x4591L, 0x5A8CL), 0x5A8CL), 0x5A8CL, 0x4591L, 0x5A8CL, (VECTOR(uint16_t, 2))(0x4591L, 0x5A8CL), (VECTOR(uint16_t, 2))(0x4591L, 0x5A8CL), 0x4591L, 0x5A8CL, 0x4591L, 0x5A8CL), // p_2041->g_922
        (VECTOR(int32_t, 2))(0x3581A8B1L, (-4L)), // p_2041->g_941
        (void*)0, // p_2041->g_950
        &p_2041->g_950, // p_2041->g_949
        (VECTOR(int64_t, 2))(6L, 0x336CD628C44F5069L), // p_2041->g_951
        (VECTOR(uint8_t, 8))(0x0AL, (VECTOR(uint8_t, 4))(0x0AL, (VECTOR(uint8_t, 2))(0x0AL, 1UL), 1UL), 1UL, 0x0AL, 1UL), // p_2041->g_982
        (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x38AC5C95L), 0x38AC5C95L), 0x38AC5C95L, (-1L), 0x38AC5C95L), // p_2041->g_989
        18446744073709551615UL, // p_2041->g_1048
        (VECTOR(uint16_t, 2))(65531UL, 65535UL), // p_2041->g_1073
        (VECTOR(uint16_t, 8))(0x8E65L, (VECTOR(uint16_t, 4))(0x8E65L, (VECTOR(uint16_t, 2))(0x8E65L, 3UL), 3UL), 3UL, 0x8E65L, 3UL), // p_2041->g_1079
        (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0xFCL), 0xFCL), 0xFCL, 0UL, 0xFCL), // p_2041->g_1096
        (VECTOR(uint8_t, 4))(0x78L, (VECTOR(uint8_t, 2))(0x78L, 6UL), 6UL), // p_2041->g_1101
        (VECTOR(uint8_t, 16))(0x7AL, (VECTOR(uint8_t, 4))(0x7AL, (VECTOR(uint8_t, 2))(0x7AL, 255UL), 255UL), 255UL, 0x7AL, 255UL, (VECTOR(uint8_t, 2))(0x7AL, 255UL), (VECTOR(uint8_t, 2))(0x7AL, 255UL), 0x7AL, 255UL, 0x7AL, 255UL), // p_2041->g_1102
        (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x3D66L), 0x3D66L), // p_2041->g_1135
        (VECTOR(int16_t, 8))((-2L), (VECTOR(int16_t, 4))((-2L), (VECTOR(int16_t, 2))((-2L), 5L), 5L), 5L, (-2L), 5L), // p_2041->g_1137
        (VECTOR(int8_t, 2))(0x4EL, 1L), // p_2041->g_1148
        (VECTOR(int8_t, 2))(0x7FL, 0x78L), // p_2041->g_1149
        (VECTOR(int8_t, 2))(0x68L, 0x3BL), // p_2041->g_1154
        (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 9L), 9L), // p_2041->g_1155
        (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 4L), 4L), 4L, (-1L), 4L), // p_2041->g_1158
        (VECTOR(int8_t, 2))(0x0BL, 0x44L), // p_2041->g_1165
        (VECTOR(uint16_t, 2))(0xC0DCL, 0x1B2BL), // p_2041->g_1171
        (VECTOR(int16_t, 8))(0x7B2DL, (VECTOR(int16_t, 4))(0x7B2DL, (VECTOR(int16_t, 2))(0x7B2DL, 0x455EL), 0x455EL), 0x455EL, 0x7B2DL, 0x455EL), // p_2041->g_1194
        (VECTOR(uint64_t, 16))(0x5AC0E2A33249292DL, (VECTOR(uint64_t, 4))(0x5AC0E2A33249292DL, (VECTOR(uint64_t, 2))(0x5AC0E2A33249292DL, 0x9CAAD88076CCF399L), 0x9CAAD88076CCF399L), 0x9CAAD88076CCF399L, 0x5AC0E2A33249292DL, 0x9CAAD88076CCF399L, (VECTOR(uint64_t, 2))(0x5AC0E2A33249292DL, 0x9CAAD88076CCF399L), (VECTOR(uint64_t, 2))(0x5AC0E2A33249292DL, 0x9CAAD88076CCF399L), 0x5AC0E2A33249292DL, 0x9CAAD88076CCF399L, 0x5AC0E2A33249292DL, 0x9CAAD88076CCF399L), // p_2041->g_1214
        (VECTOR(uint16_t, 16))(0x6DF8L, (VECTOR(uint16_t, 4))(0x6DF8L, (VECTOR(uint16_t, 2))(0x6DF8L, 0xA335L), 0xA335L), 0xA335L, 0x6DF8L, 0xA335L, (VECTOR(uint16_t, 2))(0x6DF8L, 0xA335L), (VECTOR(uint16_t, 2))(0x6DF8L, 0xA335L), 0x6DF8L, 0xA335L, 0x6DF8L, 0xA335L), // p_2041->g_1222
        (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 1UL), 1UL), // p_2041->g_1223
        {{{0x4CDD2EDECACB375BL,4294967288UL,1L,0x4378AA5A09DF8A4AL},{0x33E73394A8B98221L,0x9052FFFAL,0x6AL,0x1751C16829B521BEL},{0x2C5DBDF453C3228BL,4294967295UL,2L,0x6154601F8628CD1BL},{0x33E73394A8B98221L,0x9052FFFAL,0x6AL,0x1751C16829B521BEL},{0x4CDD2EDECACB375BL,4294967288UL,1L,0x4378AA5A09DF8A4AL},{0x4CDD2EDECACB375BL,4294967288UL,1L,0x4378AA5A09DF8A4AL},{0x33E73394A8B98221L,0x9052FFFAL,0x6AL,0x1751C16829B521BEL},{0x2C5DBDF453C3228BL,4294967295UL,2L,0x6154601F8628CD1BL},{0x33E73394A8B98221L,0x9052FFFAL,0x6AL,0x1751C16829B521BEL},{0x4CDD2EDECACB375BL,4294967288UL,1L,0x4378AA5A09DF8A4AL}},{{0x4CDD2EDECACB375BL,4294967288UL,1L,0x4378AA5A09DF8A4AL},{0x33E73394A8B98221L,0x9052FFFAL,0x6AL,0x1751C16829B521BEL},{0x2C5DBDF453C3228BL,4294967295UL,2L,0x6154601F8628CD1BL},{0x33E73394A8B98221L,0x9052FFFAL,0x6AL,0x1751C16829B521BEL},{0x4CDD2EDECACB375BL,4294967288UL,1L,0x4378AA5A09DF8A4AL},{0x4CDD2EDECACB375BL,4294967288UL,1L,0x4378AA5A09DF8A4AL},{0x33E73394A8B98221L,0x9052FFFAL,0x6AL,0x1751C16829B521BEL},{0x2C5DBDF453C3228BL,4294967295UL,2L,0x6154601F8628CD1BL},{0x33E73394A8B98221L,0x9052FFFAL,0x6AL,0x1751C16829B521BEL},{0x4CDD2EDECACB375BL,4294967288UL,1L,0x4378AA5A09DF8A4AL}},{{0x4CDD2EDECACB375BL,4294967288UL,1L,0x4378AA5A09DF8A4AL},{0x33E73394A8B98221L,0x9052FFFAL,0x6AL,0x1751C16829B521BEL},{0x2C5DBDF453C3228BL,4294967295UL,2L,0x6154601F8628CD1BL},{0x33E73394A8B98221L,0x9052FFFAL,0x6AL,0x1751C16829B521BEL},{0x4CDD2EDECACB375BL,4294967288UL,1L,0x4378AA5A09DF8A4AL},{0x4CDD2EDECACB375BL,4294967288UL,1L,0x4378AA5A09DF8A4AL},{0x33E73394A8B98221L,0x9052FFFAL,0x6AL,0x1751C16829B521BEL},{0x2C5DBDF453C3228BL,4294967295UL,2L,0x6154601F8628CD1BL},{0x33E73394A8B98221L,0x9052FFFAL,0x6AL,0x1751C16829B521BEL},{0x4CDD2EDECACB375BL,4294967288UL,1L,0x4378AA5A09DF8A4AL}},{{0x4CDD2EDECACB375BL,4294967288UL,1L,0x4378AA5A09DF8A4AL},{0x33E73394A8B98221L,0x9052FFFAL,0x6AL,0x1751C16829B521BEL},{0x2C5DBDF453C3228BL,4294967295UL,2L,0x6154601F8628CD1BL},{0x33E73394A8B98221L,0x9052FFFAL,0x6AL,0x1751C16829B521BEL},{0x4CDD2EDECACB375BL,4294967288UL,1L,0x4378AA5A09DF8A4AL},{0x4CDD2EDECACB375BL,4294967288UL,1L,0x4378AA5A09DF8A4AL},{0x33E73394A8B98221L,0x9052FFFAL,0x6AL,0x1751C16829B521BEL},{0x2C5DBDF453C3228BL,4294967295UL,2L,0x6154601F8628CD1BL},{0x33E73394A8B98221L,0x9052FFFAL,0x6AL,0x1751C16829B521BEL},{0x4CDD2EDECACB375BL,4294967288UL,1L,0x4378AA5A09DF8A4AL}}}, // p_2041->g_1239
        (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x14L), 0x14L), 0x14L, 0UL, 0x14L), // p_2041->g_1257
        {5L,4294967295UL,0x28L,-8L}, // p_2041->g_1269
        {{&p_2041->g_1269,&p_2041->g_1269},{&p_2041->g_1269,&p_2041->g_1269},{&p_2041->g_1269,&p_2041->g_1269}}, // p_2041->g_1268
        (void*)0, // p_2041->g_1276
        (VECTOR(uint64_t, 8))(0x8B59189F2D7F96D2L, (VECTOR(uint64_t, 4))(0x8B59189F2D7F96D2L, (VECTOR(uint64_t, 2))(0x8B59189F2D7F96D2L, 0xF702DAE311E973D2L), 0xF702DAE311E973D2L), 0xF702DAE311E973D2L, 0x8B59189F2D7F96D2L, 0xF702DAE311E973D2L), // p_2041->g_1309
        (VECTOR(int64_t, 4))((-6L), (VECTOR(int64_t, 2))((-6L), 0x588BC8C8FB672139L), 0x588BC8C8FB672139L), // p_2041->g_1310
        (VECTOR(uint32_t, 2))(4294967295UL, 0x61E0DB34L), // p_2041->g_1322
        (VECTOR(int8_t, 4))(0x2DL, (VECTOR(int8_t, 2))(0x2DL, 1L), 1L), // p_2041->g_1344
        (VECTOR(int8_t, 2))(0x07L, 0x33L), // p_2041->g_1346
        (VECTOR(int8_t, 2))(0x48L, 1L), // p_2041->g_1348
        &p_2041->g_632, // p_2041->g_1353
        &p_2041->g_632, // p_2041->g_1354
        &p_2041->g_632, // p_2041->g_1355
        &p_2041->g_632, // p_2041->g_1356
        &p_2041->g_632, // p_2041->g_1357
        {{&p_2041->g_632,&p_2041->g_632},{&p_2041->g_632,&p_2041->g_632},{&p_2041->g_632,&p_2041->g_632},{&p_2041->g_632,&p_2041->g_632},{&p_2041->g_632,&p_2041->g_632},{&p_2041->g_632,&p_2041->g_632},{&p_2041->g_632,&p_2041->g_632},{&p_2041->g_632,&p_2041->g_632},{&p_2041->g_632,&p_2041->g_632}}, // p_2041->g_1358
        {{&p_2041->g_1358[2][0],(void*)0,&p_2041->g_1358[2][0],(void*)0,(void*)0,&p_2041->g_1356,(void*)0,&p_2041->g_1358[2][0],&p_2041->g_1358[2][0]},{&p_2041->g_1358[2][0],(void*)0,&p_2041->g_1358[2][0],(void*)0,(void*)0,&p_2041->g_1356,(void*)0,&p_2041->g_1358[2][0],&p_2041->g_1358[2][0]},{&p_2041->g_1358[2][0],(void*)0,&p_2041->g_1358[2][0],(void*)0,(void*)0,&p_2041->g_1356,(void*)0,&p_2041->g_1358[2][0],&p_2041->g_1358[2][0]},{&p_2041->g_1358[2][0],(void*)0,&p_2041->g_1358[2][0],(void*)0,(void*)0,&p_2041->g_1356,(void*)0,&p_2041->g_1358[2][0],&p_2041->g_1358[2][0]},{&p_2041->g_1358[2][0],(void*)0,&p_2041->g_1358[2][0],(void*)0,(void*)0,&p_2041->g_1356,(void*)0,&p_2041->g_1358[2][0],&p_2041->g_1358[2][0]},{&p_2041->g_1358[2][0],(void*)0,&p_2041->g_1358[2][0],(void*)0,(void*)0,&p_2041->g_1356,(void*)0,&p_2041->g_1358[2][0],&p_2041->g_1358[2][0]},{&p_2041->g_1358[2][0],(void*)0,&p_2041->g_1358[2][0],(void*)0,(void*)0,&p_2041->g_1356,(void*)0,&p_2041->g_1358[2][0],&p_2041->g_1358[2][0]},{&p_2041->g_1358[2][0],(void*)0,&p_2041->g_1358[2][0],(void*)0,(void*)0,&p_2041->g_1356,(void*)0,&p_2041->g_1358[2][0],&p_2041->g_1358[2][0]},{&p_2041->g_1358[2][0],(void*)0,&p_2041->g_1358[2][0],(void*)0,(void*)0,&p_2041->g_1356,(void*)0,&p_2041->g_1358[2][0],&p_2041->g_1358[2][0]}}, // p_2041->g_1352
        (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x4F76DFA3L), 0x4F76DFA3L), // p_2041->g_1384
        (VECTOR(uint16_t, 8))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x2505L), 0x2505L), 0x2505L, 65535UL, 0x2505L), // p_2041->g_1426
        (VECTOR(uint16_t, 4))(65531UL, (VECTOR(uint16_t, 2))(65531UL, 0x7024L), 0x7024L), // p_2041->g_1437
        (VECTOR(uint16_t, 4))(0x515BL, (VECTOR(uint16_t, 2))(0x515BL, 0UL), 0UL), // p_2041->g_1440
        (void*)0, // p_2041->g_1480
        0x3187L, // p_2041->g_1492
        {8L,0UL,-9L,0L}, // p_2041->g_1496
        (VECTOR(int64_t, 8))(0x330190F6E976B352L, (VECTOR(int64_t, 4))(0x330190F6E976B352L, (VECTOR(int64_t, 2))(0x330190F6E976B352L, (-8L)), (-8L)), (-8L), 0x330190F6E976B352L, (-8L)), // p_2041->g_1503
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0L), 0L), 0L, 1L, 0L), // p_2041->g_1517
        (VECTOR(int64_t, 2))(0x3C6F868593D2FC1AL, (-1L)), // p_2041->g_1534
        (VECTOR(int64_t, 16))((-2L), (VECTOR(int64_t, 4))((-2L), (VECTOR(int64_t, 2))((-2L), 9L), 9L), 9L, (-2L), 9L, (VECTOR(int64_t, 2))((-2L), 9L), (VECTOR(int64_t, 2))((-2L), 9L), (-2L), 9L, (-2L), 9L), // p_2041->g_1535
        (VECTOR(int64_t, 2))(1L, 0L), // p_2041->g_1536
        {0x0450B0D30528BAF8L,1UL,0x47L,0x040BC4F64EA466B3L}, // p_2041->g_1539
        &p_2041->g_1539, // p_2041->g_1538
        {{&p_2041->g_1538,&p_2041->g_1538,&p_2041->g_1538,&p_2041->g_1538,&p_2041->g_1538,&p_2041->g_1538,&p_2041->g_1538,&p_2041->g_1538},{&p_2041->g_1538,&p_2041->g_1538,&p_2041->g_1538,&p_2041->g_1538,&p_2041->g_1538,&p_2041->g_1538,&p_2041->g_1538,&p_2041->g_1538},{&p_2041->g_1538,&p_2041->g_1538,&p_2041->g_1538,&p_2041->g_1538,&p_2041->g_1538,&p_2041->g_1538,&p_2041->g_1538,&p_2041->g_1538}}, // p_2041->g_1537
        &p_2041->g_950, // p_2041->g_1616
        &p_2041->g_1616, // p_2041->g_1615
        {0x27L,247UL,0x27L,0x27L,247UL,0x27L,0x27L,247UL,0x27L,0x27L}, // p_2041->g_1637
        (void*)0, // p_2041->g_1689
        {6L,0UL,0x19L,0x1E5719AD69373A14L}, // p_2041->g_1695
        0x3B13L, // p_2041->g_1728
        (VECTOR(int16_t, 2))((-1L), 8L), // p_2041->g_1781
        (VECTOR(int32_t, 4))(9L, (VECTOR(int32_t, 2))(9L, 0L), 0L), // p_2041->g_1802
        (VECTOR(uint16_t, 8))(0xA104L, (VECTOR(uint16_t, 4))(0xA104L, (VECTOR(uint16_t, 2))(0xA104L, 0UL), 0UL), 0UL, 0xA104L, 0UL), // p_2041->g_1827
        (VECTOR(uint16_t, 4))(0xA971L, (VECTOR(uint16_t, 2))(0xA971L, 65530UL), 65530UL), // p_2041->g_1828
        (VECTOR(uint16_t, 8))(0x921BL, (VECTOR(uint16_t, 4))(0x921BL, (VECTOR(uint16_t, 2))(0x921BL, 0x2B33L), 0x2B33L), 0x2B33L, 0x921BL, 0x2B33L), // p_2041->g_1829
        {0x0A0E7B2E1D86E6AFL,0x756627F1L,1L,0x39888327BC4A6B1FL}, // p_2041->g_1844
        (VECTOR(int8_t, 2))(0L, (-1L)), // p_2041->g_1891
        (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x34L), 0x34L), // p_2041->g_1892
        (VECTOR(int8_t, 4))(0x68L, (VECTOR(int8_t, 2))(0x68L, (-1L)), (-1L)), // p_2041->g_1894
        (-2L), // p_2041->g_1898
        (VECTOR(int8_t, 4))(0x10L, (VECTOR(int8_t, 2))(0x10L, 0x4AL), 0x4AL), // p_2041->g_1911
        (VECTOR(int8_t, 8))(0x50L, (VECTOR(int8_t, 4))(0x50L, (VECTOR(int8_t, 2))(0x50L, 1L), 1L), 1L, 0x50L, 1L), // p_2041->g_1912
        (VECTOR(int8_t, 2))((-7L), 0x3EL), // p_2041->g_1922
        0L, // p_2041->g_1926
        (VECTOR(uint16_t, 16))(0xA250L, (VECTOR(uint16_t, 4))(0xA250L, (VECTOR(uint16_t, 2))(0xA250L, 65535UL), 65535UL), 65535UL, 0xA250L, 65535UL, (VECTOR(uint16_t, 2))(0xA250L, 65535UL), (VECTOR(uint16_t, 2))(0xA250L, 65535UL), 0xA250L, 65535UL, 0xA250L, 65535UL), // p_2041->g_1933
        (VECTOR(uint8_t, 16))(0xA2L, (VECTOR(uint8_t, 4))(0xA2L, (VECTOR(uint8_t, 2))(0xA2L, 0x0CL), 0x0CL), 0x0CL, 0xA2L, 0x0CL, (VECTOR(uint8_t, 2))(0xA2L, 0x0CL), (VECTOR(uint8_t, 2))(0xA2L, 0x0CL), 0xA2L, 0x0CL, 0xA2L, 0x0CL), // p_2041->g_1939
        (VECTOR(uint16_t, 2))(0x29D4L, 0xEBF4L), // p_2041->g_1971
        (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x7922EA5CL), 0x7922EA5CL), 0x7922EA5CL, (-1L), 0x7922EA5CL, (VECTOR(int32_t, 2))((-1L), 0x7922EA5CL), (VECTOR(int32_t, 2))((-1L), 0x7922EA5CL), (-1L), 0x7922EA5CL, (-1L), 0x7922EA5CL), // p_2041->g_1983
        (VECTOR(int32_t, 2))(0x2D4DA4AEL, (-9L)), // p_2041->g_1984
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 1L), 1L), 1L, 1L, 1L), // p_2041->g_1985
        (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x03D5187FL), 0x03D5187FL), 0x03D5187FL, 0L, 0x03D5187FL), // p_2041->g_1986
        (VECTOR(int16_t, 4))(0x66CEL, (VECTOR(int16_t, 2))(0x66CEL, 0x7625L), 0x7625L), // p_2041->g_2019
        (VECTOR(int16_t, 2))(0x7B1FL, 2L), // p_2041->g_2020
        (VECTOR(int16_t, 16))(0x57B6L, (VECTOR(int16_t, 4))(0x57B6L, (VECTOR(int16_t, 2))(0x57B6L, 0x7261L), 0x7261L), 0x7261L, 0x57B6L, 0x7261L, (VECTOR(int16_t, 2))(0x57B6L, 0x7261L), (VECTOR(int16_t, 2))(0x57B6L, 0x7261L), 0x57B6L, 0x7261L, 0x57B6L, 0x7261L), // p_2041->g_2021
        (VECTOR(uint16_t, 2))(0xF4DCL, 0x1675L), // p_2041->g_2022
        {0x360FB0E293E5168BL,0x2BDD61A8L,0L,8L}, // p_2041->g_2040
        sequence_input[get_global_id(0)], // p_2041->global_0_offset
        sequence_input[get_global_id(1)], // p_2041->global_1_offset
        sequence_input[get_global_id(2)], // p_2041->global_2_offset
        sequence_input[get_local_id(0)], // p_2041->local_0_offset
        sequence_input[get_local_id(1)], // p_2041->local_1_offset
        sequence_input[get_local_id(2)], // p_2041->local_2_offset
        sequence_input[get_group_id(0)], // p_2041->group_0_offset
        sequence_input[get_group_id(1)], // p_2041->group_1_offset
        sequence_input[get_group_id(2)], // p_2041->group_2_offset
    };
    c_2042 = c_2043;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2041);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2041->g_2, "p_2041->g_2", print_hash_value);
    transparent_crc(p_2041->g_3, "p_2041->g_3", print_hash_value);
    transparent_crc(p_2041->g_23, "p_2041->g_23", print_hash_value);
    transparent_crc(p_2041->g_33, "p_2041->g_33", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_2041->g_38[i], "p_2041->g_38[i]", print_hash_value);

    }
    transparent_crc(p_2041->g_52, "p_2041->g_52", print_hash_value);
    transparent_crc(p_2041->g_84, "p_2041->g_84", print_hash_value);
    transparent_crc(p_2041->g_90, "p_2041->g_90", print_hash_value);
    transparent_crc(p_2041->g_119.x, "p_2041->g_119.x", print_hash_value);
    transparent_crc(p_2041->g_119.y, "p_2041->g_119.y", print_hash_value);
    transparent_crc(p_2041->g_122, "p_2041->g_122", print_hash_value);
    transparent_crc(p_2041->g_127, "p_2041->g_127", print_hash_value);
    transparent_crc(p_2041->g_131, "p_2041->g_131", print_hash_value);
    transparent_crc(p_2041->g_150, "p_2041->g_150", print_hash_value);
    transparent_crc(p_2041->g_158, "p_2041->g_158", print_hash_value);
    transparent_crc(p_2041->g_170, "p_2041->g_170", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_2041->g_171[i], "p_2041->g_171[i]", print_hash_value);

    }
    transparent_crc(p_2041->g_217, "p_2041->g_217", print_hash_value);
    transparent_crc(p_2041->g_218, "p_2041->g_218", print_hash_value);
    transparent_crc(p_2041->g_219, "p_2041->g_219", print_hash_value);
    transparent_crc(p_2041->g_230.s0, "p_2041->g_230.s0", print_hash_value);
    transparent_crc(p_2041->g_230.s1, "p_2041->g_230.s1", print_hash_value);
    transparent_crc(p_2041->g_230.s2, "p_2041->g_230.s2", print_hash_value);
    transparent_crc(p_2041->g_230.s3, "p_2041->g_230.s3", print_hash_value);
    transparent_crc(p_2041->g_230.s4, "p_2041->g_230.s4", print_hash_value);
    transparent_crc(p_2041->g_230.s5, "p_2041->g_230.s5", print_hash_value);
    transparent_crc(p_2041->g_230.s6, "p_2041->g_230.s6", print_hash_value);
    transparent_crc(p_2041->g_230.s7, "p_2041->g_230.s7", print_hash_value);
    transparent_crc(p_2041->g_230.s8, "p_2041->g_230.s8", print_hash_value);
    transparent_crc(p_2041->g_230.s9, "p_2041->g_230.s9", print_hash_value);
    transparent_crc(p_2041->g_230.sa, "p_2041->g_230.sa", print_hash_value);
    transparent_crc(p_2041->g_230.sb, "p_2041->g_230.sb", print_hash_value);
    transparent_crc(p_2041->g_230.sc, "p_2041->g_230.sc", print_hash_value);
    transparent_crc(p_2041->g_230.sd, "p_2041->g_230.sd", print_hash_value);
    transparent_crc(p_2041->g_230.se, "p_2041->g_230.se", print_hash_value);
    transparent_crc(p_2041->g_230.sf, "p_2041->g_230.sf", print_hash_value);
    transparent_crc(p_2041->g_236.s0, "p_2041->g_236.s0", print_hash_value);
    transparent_crc(p_2041->g_236.s1, "p_2041->g_236.s1", print_hash_value);
    transparent_crc(p_2041->g_236.s2, "p_2041->g_236.s2", print_hash_value);
    transparent_crc(p_2041->g_236.s3, "p_2041->g_236.s3", print_hash_value);
    transparent_crc(p_2041->g_236.s4, "p_2041->g_236.s4", print_hash_value);
    transparent_crc(p_2041->g_236.s5, "p_2041->g_236.s5", print_hash_value);
    transparent_crc(p_2041->g_236.s6, "p_2041->g_236.s6", print_hash_value);
    transparent_crc(p_2041->g_236.s7, "p_2041->g_236.s7", print_hash_value);
    transparent_crc(p_2041->g_244.s0, "p_2041->g_244.s0", print_hash_value);
    transparent_crc(p_2041->g_244.s1, "p_2041->g_244.s1", print_hash_value);
    transparent_crc(p_2041->g_244.s2, "p_2041->g_244.s2", print_hash_value);
    transparent_crc(p_2041->g_244.s3, "p_2041->g_244.s3", print_hash_value);
    transparent_crc(p_2041->g_244.s4, "p_2041->g_244.s4", print_hash_value);
    transparent_crc(p_2041->g_244.s5, "p_2041->g_244.s5", print_hash_value);
    transparent_crc(p_2041->g_244.s6, "p_2041->g_244.s6", print_hash_value);
    transparent_crc(p_2041->g_244.s7, "p_2041->g_244.s7", print_hash_value);
    transparent_crc(p_2041->g_245.s0, "p_2041->g_245.s0", print_hash_value);
    transparent_crc(p_2041->g_245.s1, "p_2041->g_245.s1", print_hash_value);
    transparent_crc(p_2041->g_245.s2, "p_2041->g_245.s2", print_hash_value);
    transparent_crc(p_2041->g_245.s3, "p_2041->g_245.s3", print_hash_value);
    transparent_crc(p_2041->g_245.s4, "p_2041->g_245.s4", print_hash_value);
    transparent_crc(p_2041->g_245.s5, "p_2041->g_245.s5", print_hash_value);
    transparent_crc(p_2041->g_245.s6, "p_2041->g_245.s6", print_hash_value);
    transparent_crc(p_2041->g_245.s7, "p_2041->g_245.s7", print_hash_value);
    transparent_crc(p_2041->g_245.s8, "p_2041->g_245.s8", print_hash_value);
    transparent_crc(p_2041->g_245.s9, "p_2041->g_245.s9", print_hash_value);
    transparent_crc(p_2041->g_245.sa, "p_2041->g_245.sa", print_hash_value);
    transparent_crc(p_2041->g_245.sb, "p_2041->g_245.sb", print_hash_value);
    transparent_crc(p_2041->g_245.sc, "p_2041->g_245.sc", print_hash_value);
    transparent_crc(p_2041->g_245.sd, "p_2041->g_245.sd", print_hash_value);
    transparent_crc(p_2041->g_245.se, "p_2041->g_245.se", print_hash_value);
    transparent_crc(p_2041->g_245.sf, "p_2041->g_245.sf", print_hash_value);
    transparent_crc(p_2041->g_247.x, "p_2041->g_247.x", print_hash_value);
    transparent_crc(p_2041->g_247.y, "p_2041->g_247.y", print_hash_value);
    transparent_crc(p_2041->g_294.x, "p_2041->g_294.x", print_hash_value);
    transparent_crc(p_2041->g_294.y, "p_2041->g_294.y", print_hash_value);
    transparent_crc(p_2041->g_294.z, "p_2041->g_294.z", print_hash_value);
    transparent_crc(p_2041->g_294.w, "p_2041->g_294.w", print_hash_value);
    transparent_crc(p_2041->g_353.x, "p_2041->g_353.x", print_hash_value);
    transparent_crc(p_2041->g_353.y, "p_2041->g_353.y", print_hash_value);
    transparent_crc(p_2041->g_355.x, "p_2041->g_355.x", print_hash_value);
    transparent_crc(p_2041->g_355.y, "p_2041->g_355.y", print_hash_value);
    transparent_crc(p_2041->g_358.s0, "p_2041->g_358.s0", print_hash_value);
    transparent_crc(p_2041->g_358.s1, "p_2041->g_358.s1", print_hash_value);
    transparent_crc(p_2041->g_358.s2, "p_2041->g_358.s2", print_hash_value);
    transparent_crc(p_2041->g_358.s3, "p_2041->g_358.s3", print_hash_value);
    transparent_crc(p_2041->g_358.s4, "p_2041->g_358.s4", print_hash_value);
    transparent_crc(p_2041->g_358.s5, "p_2041->g_358.s5", print_hash_value);
    transparent_crc(p_2041->g_358.s6, "p_2041->g_358.s6", print_hash_value);
    transparent_crc(p_2041->g_358.s7, "p_2041->g_358.s7", print_hash_value);
    transparent_crc(p_2041->g_368, "p_2041->g_368", print_hash_value);
    transparent_crc(p_2041->g_399.s0, "p_2041->g_399.s0", print_hash_value);
    transparent_crc(p_2041->g_399.s1, "p_2041->g_399.s1", print_hash_value);
    transparent_crc(p_2041->g_399.s2, "p_2041->g_399.s2", print_hash_value);
    transparent_crc(p_2041->g_399.s3, "p_2041->g_399.s3", print_hash_value);
    transparent_crc(p_2041->g_399.s4, "p_2041->g_399.s4", print_hash_value);
    transparent_crc(p_2041->g_399.s5, "p_2041->g_399.s5", print_hash_value);
    transparent_crc(p_2041->g_399.s6, "p_2041->g_399.s6", print_hash_value);
    transparent_crc(p_2041->g_399.s7, "p_2041->g_399.s7", print_hash_value);
    transparent_crc(p_2041->g_399.s8, "p_2041->g_399.s8", print_hash_value);
    transparent_crc(p_2041->g_399.s9, "p_2041->g_399.s9", print_hash_value);
    transparent_crc(p_2041->g_399.sa, "p_2041->g_399.sa", print_hash_value);
    transparent_crc(p_2041->g_399.sb, "p_2041->g_399.sb", print_hash_value);
    transparent_crc(p_2041->g_399.sc, "p_2041->g_399.sc", print_hash_value);
    transparent_crc(p_2041->g_399.sd, "p_2041->g_399.sd", print_hash_value);
    transparent_crc(p_2041->g_399.se, "p_2041->g_399.se", print_hash_value);
    transparent_crc(p_2041->g_399.sf, "p_2041->g_399.sf", print_hash_value);
    transparent_crc(p_2041->g_402.x, "p_2041->g_402.x", print_hash_value);
    transparent_crc(p_2041->g_402.y, "p_2041->g_402.y", print_hash_value);
    transparent_crc(p_2041->g_464.s0, "p_2041->g_464.s0", print_hash_value);
    transparent_crc(p_2041->g_464.s1, "p_2041->g_464.s1", print_hash_value);
    transparent_crc(p_2041->g_464.s2, "p_2041->g_464.s2", print_hash_value);
    transparent_crc(p_2041->g_464.s3, "p_2041->g_464.s3", print_hash_value);
    transparent_crc(p_2041->g_464.s4, "p_2041->g_464.s4", print_hash_value);
    transparent_crc(p_2041->g_464.s5, "p_2041->g_464.s5", print_hash_value);
    transparent_crc(p_2041->g_464.s6, "p_2041->g_464.s6", print_hash_value);
    transparent_crc(p_2041->g_464.s7, "p_2041->g_464.s7", print_hash_value);
    transparent_crc(p_2041->g_464.s8, "p_2041->g_464.s8", print_hash_value);
    transparent_crc(p_2041->g_464.s9, "p_2041->g_464.s9", print_hash_value);
    transparent_crc(p_2041->g_464.sa, "p_2041->g_464.sa", print_hash_value);
    transparent_crc(p_2041->g_464.sb, "p_2041->g_464.sb", print_hash_value);
    transparent_crc(p_2041->g_464.sc, "p_2041->g_464.sc", print_hash_value);
    transparent_crc(p_2041->g_464.sd, "p_2041->g_464.sd", print_hash_value);
    transparent_crc(p_2041->g_464.se, "p_2041->g_464.se", print_hash_value);
    transparent_crc(p_2041->g_464.sf, "p_2041->g_464.sf", print_hash_value);
    transparent_crc(p_2041->g_497.x, "p_2041->g_497.x", print_hash_value);
    transparent_crc(p_2041->g_497.y, "p_2041->g_497.y", print_hash_value);
    transparent_crc(p_2041->g_497.z, "p_2041->g_497.z", print_hash_value);
    transparent_crc(p_2041->g_497.w, "p_2041->g_497.w", print_hash_value);
    transparent_crc(p_2041->g_505.s0, "p_2041->g_505.s0", print_hash_value);
    transparent_crc(p_2041->g_505.s1, "p_2041->g_505.s1", print_hash_value);
    transparent_crc(p_2041->g_505.s2, "p_2041->g_505.s2", print_hash_value);
    transparent_crc(p_2041->g_505.s3, "p_2041->g_505.s3", print_hash_value);
    transparent_crc(p_2041->g_505.s4, "p_2041->g_505.s4", print_hash_value);
    transparent_crc(p_2041->g_505.s5, "p_2041->g_505.s5", print_hash_value);
    transparent_crc(p_2041->g_505.s6, "p_2041->g_505.s6", print_hash_value);
    transparent_crc(p_2041->g_505.s7, "p_2041->g_505.s7", print_hash_value);
    transparent_crc(p_2041->g_519.x, "p_2041->g_519.x", print_hash_value);
    transparent_crc(p_2041->g_519.y, "p_2041->g_519.y", print_hash_value);
    transparent_crc(p_2041->g_535, "p_2041->g_535", print_hash_value);
    transparent_crc(p_2041->g_557.x, "p_2041->g_557.x", print_hash_value);
    transparent_crc(p_2041->g_557.y, "p_2041->g_557.y", print_hash_value);
    transparent_crc(p_2041->g_557.z, "p_2041->g_557.z", print_hash_value);
    transparent_crc(p_2041->g_557.w, "p_2041->g_557.w", print_hash_value);
    transparent_crc(p_2041->g_561.x, "p_2041->g_561.x", print_hash_value);
    transparent_crc(p_2041->g_561.y, "p_2041->g_561.y", print_hash_value);
    transparent_crc(p_2041->g_561.z, "p_2041->g_561.z", print_hash_value);
    transparent_crc(p_2041->g_561.w, "p_2041->g_561.w", print_hash_value);
    transparent_crc(p_2041->g_583, "p_2041->g_583", print_hash_value);
    transparent_crc(p_2041->g_595.x, "p_2041->g_595.x", print_hash_value);
    transparent_crc(p_2041->g_595.y, "p_2041->g_595.y", print_hash_value);
    transparent_crc(p_2041->g_605.s0, "p_2041->g_605.s0", print_hash_value);
    transparent_crc(p_2041->g_605.s1, "p_2041->g_605.s1", print_hash_value);
    transparent_crc(p_2041->g_605.s2, "p_2041->g_605.s2", print_hash_value);
    transparent_crc(p_2041->g_605.s3, "p_2041->g_605.s3", print_hash_value);
    transparent_crc(p_2041->g_605.s4, "p_2041->g_605.s4", print_hash_value);
    transparent_crc(p_2041->g_605.s5, "p_2041->g_605.s5", print_hash_value);
    transparent_crc(p_2041->g_605.s6, "p_2041->g_605.s6", print_hash_value);
    transparent_crc(p_2041->g_605.s7, "p_2041->g_605.s7", print_hash_value);
    transparent_crc(p_2041->g_624.x, "p_2041->g_624.x", print_hash_value);
    transparent_crc(p_2041->g_624.y, "p_2041->g_624.y", print_hash_value);
    transparent_crc(p_2041->g_632, "p_2041->g_632", print_hash_value);
    transparent_crc(p_2041->g_665.s0, "p_2041->g_665.s0", print_hash_value);
    transparent_crc(p_2041->g_665.s1, "p_2041->g_665.s1", print_hash_value);
    transparent_crc(p_2041->g_665.s2, "p_2041->g_665.s2", print_hash_value);
    transparent_crc(p_2041->g_665.s3, "p_2041->g_665.s3", print_hash_value);
    transparent_crc(p_2041->g_665.s4, "p_2041->g_665.s4", print_hash_value);
    transparent_crc(p_2041->g_665.s5, "p_2041->g_665.s5", print_hash_value);
    transparent_crc(p_2041->g_665.s6, "p_2041->g_665.s6", print_hash_value);
    transparent_crc(p_2041->g_665.s7, "p_2041->g_665.s7", print_hash_value);
    transparent_crc(p_2041->g_665.s8, "p_2041->g_665.s8", print_hash_value);
    transparent_crc(p_2041->g_665.s9, "p_2041->g_665.s9", print_hash_value);
    transparent_crc(p_2041->g_665.sa, "p_2041->g_665.sa", print_hash_value);
    transparent_crc(p_2041->g_665.sb, "p_2041->g_665.sb", print_hash_value);
    transparent_crc(p_2041->g_665.sc, "p_2041->g_665.sc", print_hash_value);
    transparent_crc(p_2041->g_665.sd, "p_2041->g_665.sd", print_hash_value);
    transparent_crc(p_2041->g_665.se, "p_2041->g_665.se", print_hash_value);
    transparent_crc(p_2041->g_665.sf, "p_2041->g_665.sf", print_hash_value);
    transparent_crc(p_2041->g_678.x, "p_2041->g_678.x", print_hash_value);
    transparent_crc(p_2041->g_678.y, "p_2041->g_678.y", print_hash_value);
    transparent_crc(p_2041->g_678.z, "p_2041->g_678.z", print_hash_value);
    transparent_crc(p_2041->g_678.w, "p_2041->g_678.w", print_hash_value);
    transparent_crc(p_2041->g_689, "p_2041->g_689", print_hash_value);
    transparent_crc(p_2041->g_704.x, "p_2041->g_704.x", print_hash_value);
    transparent_crc(p_2041->g_704.y, "p_2041->g_704.y", print_hash_value);
    transparent_crc(p_2041->g_723, "p_2041->g_723", print_hash_value);
    transparent_crc(p_2041->g_772, "p_2041->g_772", print_hash_value);
    transparent_crc(p_2041->g_803, "p_2041->g_803", print_hash_value);
    transparent_crc(p_2041->g_868.x, "p_2041->g_868.x", print_hash_value);
    transparent_crc(p_2041->g_868.y, "p_2041->g_868.y", print_hash_value);
    transparent_crc(p_2041->g_871.s0, "p_2041->g_871.s0", print_hash_value);
    transparent_crc(p_2041->g_871.s1, "p_2041->g_871.s1", print_hash_value);
    transparent_crc(p_2041->g_871.s2, "p_2041->g_871.s2", print_hash_value);
    transparent_crc(p_2041->g_871.s3, "p_2041->g_871.s3", print_hash_value);
    transparent_crc(p_2041->g_871.s4, "p_2041->g_871.s4", print_hash_value);
    transparent_crc(p_2041->g_871.s5, "p_2041->g_871.s5", print_hash_value);
    transparent_crc(p_2041->g_871.s6, "p_2041->g_871.s6", print_hash_value);
    transparent_crc(p_2041->g_871.s7, "p_2041->g_871.s7", print_hash_value);
    transparent_crc(p_2041->g_871.s8, "p_2041->g_871.s8", print_hash_value);
    transparent_crc(p_2041->g_871.s9, "p_2041->g_871.s9", print_hash_value);
    transparent_crc(p_2041->g_871.sa, "p_2041->g_871.sa", print_hash_value);
    transparent_crc(p_2041->g_871.sb, "p_2041->g_871.sb", print_hash_value);
    transparent_crc(p_2041->g_871.sc, "p_2041->g_871.sc", print_hash_value);
    transparent_crc(p_2041->g_871.sd, "p_2041->g_871.sd", print_hash_value);
    transparent_crc(p_2041->g_871.se, "p_2041->g_871.se", print_hash_value);
    transparent_crc(p_2041->g_871.sf, "p_2041->g_871.sf", print_hash_value);
    transparent_crc(p_2041->g_872.x, "p_2041->g_872.x", print_hash_value);
    transparent_crc(p_2041->g_872.y, "p_2041->g_872.y", print_hash_value);
    transparent_crc(p_2041->g_889.s0, "p_2041->g_889.s0", print_hash_value);
    transparent_crc(p_2041->g_889.s1, "p_2041->g_889.s1", print_hash_value);
    transparent_crc(p_2041->g_889.s2, "p_2041->g_889.s2", print_hash_value);
    transparent_crc(p_2041->g_889.s3, "p_2041->g_889.s3", print_hash_value);
    transparent_crc(p_2041->g_889.s4, "p_2041->g_889.s4", print_hash_value);
    transparent_crc(p_2041->g_889.s5, "p_2041->g_889.s5", print_hash_value);
    transparent_crc(p_2041->g_889.s6, "p_2041->g_889.s6", print_hash_value);
    transparent_crc(p_2041->g_889.s7, "p_2041->g_889.s7", print_hash_value);
    transparent_crc(p_2041->g_909.s0, "p_2041->g_909.s0", print_hash_value);
    transparent_crc(p_2041->g_909.s1, "p_2041->g_909.s1", print_hash_value);
    transparent_crc(p_2041->g_909.s2, "p_2041->g_909.s2", print_hash_value);
    transparent_crc(p_2041->g_909.s3, "p_2041->g_909.s3", print_hash_value);
    transparent_crc(p_2041->g_909.s4, "p_2041->g_909.s4", print_hash_value);
    transparent_crc(p_2041->g_909.s5, "p_2041->g_909.s5", print_hash_value);
    transparent_crc(p_2041->g_909.s6, "p_2041->g_909.s6", print_hash_value);
    transparent_crc(p_2041->g_909.s7, "p_2041->g_909.s7", print_hash_value);
    transparent_crc(p_2041->g_909.s8, "p_2041->g_909.s8", print_hash_value);
    transparent_crc(p_2041->g_909.s9, "p_2041->g_909.s9", print_hash_value);
    transparent_crc(p_2041->g_909.sa, "p_2041->g_909.sa", print_hash_value);
    transparent_crc(p_2041->g_909.sb, "p_2041->g_909.sb", print_hash_value);
    transparent_crc(p_2041->g_909.sc, "p_2041->g_909.sc", print_hash_value);
    transparent_crc(p_2041->g_909.sd, "p_2041->g_909.sd", print_hash_value);
    transparent_crc(p_2041->g_909.se, "p_2041->g_909.se", print_hash_value);
    transparent_crc(p_2041->g_909.sf, "p_2041->g_909.sf", print_hash_value);
    transparent_crc(p_2041->g_918.x, "p_2041->g_918.x", print_hash_value);
    transparent_crc(p_2041->g_918.y, "p_2041->g_918.y", print_hash_value);
    transparent_crc(p_2041->g_918.z, "p_2041->g_918.z", print_hash_value);
    transparent_crc(p_2041->g_918.w, "p_2041->g_918.w", print_hash_value);
    transparent_crc(p_2041->g_922.s0, "p_2041->g_922.s0", print_hash_value);
    transparent_crc(p_2041->g_922.s1, "p_2041->g_922.s1", print_hash_value);
    transparent_crc(p_2041->g_922.s2, "p_2041->g_922.s2", print_hash_value);
    transparent_crc(p_2041->g_922.s3, "p_2041->g_922.s3", print_hash_value);
    transparent_crc(p_2041->g_922.s4, "p_2041->g_922.s4", print_hash_value);
    transparent_crc(p_2041->g_922.s5, "p_2041->g_922.s5", print_hash_value);
    transparent_crc(p_2041->g_922.s6, "p_2041->g_922.s6", print_hash_value);
    transparent_crc(p_2041->g_922.s7, "p_2041->g_922.s7", print_hash_value);
    transparent_crc(p_2041->g_922.s8, "p_2041->g_922.s8", print_hash_value);
    transparent_crc(p_2041->g_922.s9, "p_2041->g_922.s9", print_hash_value);
    transparent_crc(p_2041->g_922.sa, "p_2041->g_922.sa", print_hash_value);
    transparent_crc(p_2041->g_922.sb, "p_2041->g_922.sb", print_hash_value);
    transparent_crc(p_2041->g_922.sc, "p_2041->g_922.sc", print_hash_value);
    transparent_crc(p_2041->g_922.sd, "p_2041->g_922.sd", print_hash_value);
    transparent_crc(p_2041->g_922.se, "p_2041->g_922.se", print_hash_value);
    transparent_crc(p_2041->g_922.sf, "p_2041->g_922.sf", print_hash_value);
    transparent_crc(p_2041->g_941.x, "p_2041->g_941.x", print_hash_value);
    transparent_crc(p_2041->g_941.y, "p_2041->g_941.y", print_hash_value);
    transparent_crc(p_2041->g_951.x, "p_2041->g_951.x", print_hash_value);
    transparent_crc(p_2041->g_951.y, "p_2041->g_951.y", print_hash_value);
    transparent_crc(p_2041->g_982.s0, "p_2041->g_982.s0", print_hash_value);
    transparent_crc(p_2041->g_982.s1, "p_2041->g_982.s1", print_hash_value);
    transparent_crc(p_2041->g_982.s2, "p_2041->g_982.s2", print_hash_value);
    transparent_crc(p_2041->g_982.s3, "p_2041->g_982.s3", print_hash_value);
    transparent_crc(p_2041->g_982.s4, "p_2041->g_982.s4", print_hash_value);
    transparent_crc(p_2041->g_982.s5, "p_2041->g_982.s5", print_hash_value);
    transparent_crc(p_2041->g_982.s6, "p_2041->g_982.s6", print_hash_value);
    transparent_crc(p_2041->g_982.s7, "p_2041->g_982.s7", print_hash_value);
    transparent_crc(p_2041->g_989.s0, "p_2041->g_989.s0", print_hash_value);
    transparent_crc(p_2041->g_989.s1, "p_2041->g_989.s1", print_hash_value);
    transparent_crc(p_2041->g_989.s2, "p_2041->g_989.s2", print_hash_value);
    transparent_crc(p_2041->g_989.s3, "p_2041->g_989.s3", print_hash_value);
    transparent_crc(p_2041->g_989.s4, "p_2041->g_989.s4", print_hash_value);
    transparent_crc(p_2041->g_989.s5, "p_2041->g_989.s5", print_hash_value);
    transparent_crc(p_2041->g_989.s6, "p_2041->g_989.s6", print_hash_value);
    transparent_crc(p_2041->g_989.s7, "p_2041->g_989.s7", print_hash_value);
    transparent_crc(p_2041->g_1048, "p_2041->g_1048", print_hash_value);
    transparent_crc(p_2041->g_1073.x, "p_2041->g_1073.x", print_hash_value);
    transparent_crc(p_2041->g_1073.y, "p_2041->g_1073.y", print_hash_value);
    transparent_crc(p_2041->g_1079.s0, "p_2041->g_1079.s0", print_hash_value);
    transparent_crc(p_2041->g_1079.s1, "p_2041->g_1079.s1", print_hash_value);
    transparent_crc(p_2041->g_1079.s2, "p_2041->g_1079.s2", print_hash_value);
    transparent_crc(p_2041->g_1079.s3, "p_2041->g_1079.s3", print_hash_value);
    transparent_crc(p_2041->g_1079.s4, "p_2041->g_1079.s4", print_hash_value);
    transparent_crc(p_2041->g_1079.s5, "p_2041->g_1079.s5", print_hash_value);
    transparent_crc(p_2041->g_1079.s6, "p_2041->g_1079.s6", print_hash_value);
    transparent_crc(p_2041->g_1079.s7, "p_2041->g_1079.s7", print_hash_value);
    transparent_crc(p_2041->g_1096.s0, "p_2041->g_1096.s0", print_hash_value);
    transparent_crc(p_2041->g_1096.s1, "p_2041->g_1096.s1", print_hash_value);
    transparent_crc(p_2041->g_1096.s2, "p_2041->g_1096.s2", print_hash_value);
    transparent_crc(p_2041->g_1096.s3, "p_2041->g_1096.s3", print_hash_value);
    transparent_crc(p_2041->g_1096.s4, "p_2041->g_1096.s4", print_hash_value);
    transparent_crc(p_2041->g_1096.s5, "p_2041->g_1096.s5", print_hash_value);
    transparent_crc(p_2041->g_1096.s6, "p_2041->g_1096.s6", print_hash_value);
    transparent_crc(p_2041->g_1096.s7, "p_2041->g_1096.s7", print_hash_value);
    transparent_crc(p_2041->g_1101.x, "p_2041->g_1101.x", print_hash_value);
    transparent_crc(p_2041->g_1101.y, "p_2041->g_1101.y", print_hash_value);
    transparent_crc(p_2041->g_1101.z, "p_2041->g_1101.z", print_hash_value);
    transparent_crc(p_2041->g_1101.w, "p_2041->g_1101.w", print_hash_value);
    transparent_crc(p_2041->g_1102.s0, "p_2041->g_1102.s0", print_hash_value);
    transparent_crc(p_2041->g_1102.s1, "p_2041->g_1102.s1", print_hash_value);
    transparent_crc(p_2041->g_1102.s2, "p_2041->g_1102.s2", print_hash_value);
    transparent_crc(p_2041->g_1102.s3, "p_2041->g_1102.s3", print_hash_value);
    transparent_crc(p_2041->g_1102.s4, "p_2041->g_1102.s4", print_hash_value);
    transparent_crc(p_2041->g_1102.s5, "p_2041->g_1102.s5", print_hash_value);
    transparent_crc(p_2041->g_1102.s6, "p_2041->g_1102.s6", print_hash_value);
    transparent_crc(p_2041->g_1102.s7, "p_2041->g_1102.s7", print_hash_value);
    transparent_crc(p_2041->g_1102.s8, "p_2041->g_1102.s8", print_hash_value);
    transparent_crc(p_2041->g_1102.s9, "p_2041->g_1102.s9", print_hash_value);
    transparent_crc(p_2041->g_1102.sa, "p_2041->g_1102.sa", print_hash_value);
    transparent_crc(p_2041->g_1102.sb, "p_2041->g_1102.sb", print_hash_value);
    transparent_crc(p_2041->g_1102.sc, "p_2041->g_1102.sc", print_hash_value);
    transparent_crc(p_2041->g_1102.sd, "p_2041->g_1102.sd", print_hash_value);
    transparent_crc(p_2041->g_1102.se, "p_2041->g_1102.se", print_hash_value);
    transparent_crc(p_2041->g_1102.sf, "p_2041->g_1102.sf", print_hash_value);
    transparent_crc(p_2041->g_1135.x, "p_2041->g_1135.x", print_hash_value);
    transparent_crc(p_2041->g_1135.y, "p_2041->g_1135.y", print_hash_value);
    transparent_crc(p_2041->g_1135.z, "p_2041->g_1135.z", print_hash_value);
    transparent_crc(p_2041->g_1135.w, "p_2041->g_1135.w", print_hash_value);
    transparent_crc(p_2041->g_1137.s0, "p_2041->g_1137.s0", print_hash_value);
    transparent_crc(p_2041->g_1137.s1, "p_2041->g_1137.s1", print_hash_value);
    transparent_crc(p_2041->g_1137.s2, "p_2041->g_1137.s2", print_hash_value);
    transparent_crc(p_2041->g_1137.s3, "p_2041->g_1137.s3", print_hash_value);
    transparent_crc(p_2041->g_1137.s4, "p_2041->g_1137.s4", print_hash_value);
    transparent_crc(p_2041->g_1137.s5, "p_2041->g_1137.s5", print_hash_value);
    transparent_crc(p_2041->g_1137.s6, "p_2041->g_1137.s6", print_hash_value);
    transparent_crc(p_2041->g_1137.s7, "p_2041->g_1137.s7", print_hash_value);
    transparent_crc(p_2041->g_1148.x, "p_2041->g_1148.x", print_hash_value);
    transparent_crc(p_2041->g_1148.y, "p_2041->g_1148.y", print_hash_value);
    transparent_crc(p_2041->g_1149.x, "p_2041->g_1149.x", print_hash_value);
    transparent_crc(p_2041->g_1149.y, "p_2041->g_1149.y", print_hash_value);
    transparent_crc(p_2041->g_1154.x, "p_2041->g_1154.x", print_hash_value);
    transparent_crc(p_2041->g_1154.y, "p_2041->g_1154.y", print_hash_value);
    transparent_crc(p_2041->g_1155.x, "p_2041->g_1155.x", print_hash_value);
    transparent_crc(p_2041->g_1155.y, "p_2041->g_1155.y", print_hash_value);
    transparent_crc(p_2041->g_1155.z, "p_2041->g_1155.z", print_hash_value);
    transparent_crc(p_2041->g_1155.w, "p_2041->g_1155.w", print_hash_value);
    transparent_crc(p_2041->g_1158.s0, "p_2041->g_1158.s0", print_hash_value);
    transparent_crc(p_2041->g_1158.s1, "p_2041->g_1158.s1", print_hash_value);
    transparent_crc(p_2041->g_1158.s2, "p_2041->g_1158.s2", print_hash_value);
    transparent_crc(p_2041->g_1158.s3, "p_2041->g_1158.s3", print_hash_value);
    transparent_crc(p_2041->g_1158.s4, "p_2041->g_1158.s4", print_hash_value);
    transparent_crc(p_2041->g_1158.s5, "p_2041->g_1158.s5", print_hash_value);
    transparent_crc(p_2041->g_1158.s6, "p_2041->g_1158.s6", print_hash_value);
    transparent_crc(p_2041->g_1158.s7, "p_2041->g_1158.s7", print_hash_value);
    transparent_crc(p_2041->g_1165.x, "p_2041->g_1165.x", print_hash_value);
    transparent_crc(p_2041->g_1165.y, "p_2041->g_1165.y", print_hash_value);
    transparent_crc(p_2041->g_1171.x, "p_2041->g_1171.x", print_hash_value);
    transparent_crc(p_2041->g_1171.y, "p_2041->g_1171.y", print_hash_value);
    transparent_crc(p_2041->g_1194.s0, "p_2041->g_1194.s0", print_hash_value);
    transparent_crc(p_2041->g_1194.s1, "p_2041->g_1194.s1", print_hash_value);
    transparent_crc(p_2041->g_1194.s2, "p_2041->g_1194.s2", print_hash_value);
    transparent_crc(p_2041->g_1194.s3, "p_2041->g_1194.s3", print_hash_value);
    transparent_crc(p_2041->g_1194.s4, "p_2041->g_1194.s4", print_hash_value);
    transparent_crc(p_2041->g_1194.s5, "p_2041->g_1194.s5", print_hash_value);
    transparent_crc(p_2041->g_1194.s6, "p_2041->g_1194.s6", print_hash_value);
    transparent_crc(p_2041->g_1194.s7, "p_2041->g_1194.s7", print_hash_value);
    transparent_crc(p_2041->g_1214.s0, "p_2041->g_1214.s0", print_hash_value);
    transparent_crc(p_2041->g_1214.s1, "p_2041->g_1214.s1", print_hash_value);
    transparent_crc(p_2041->g_1214.s2, "p_2041->g_1214.s2", print_hash_value);
    transparent_crc(p_2041->g_1214.s3, "p_2041->g_1214.s3", print_hash_value);
    transparent_crc(p_2041->g_1214.s4, "p_2041->g_1214.s4", print_hash_value);
    transparent_crc(p_2041->g_1214.s5, "p_2041->g_1214.s5", print_hash_value);
    transparent_crc(p_2041->g_1214.s6, "p_2041->g_1214.s6", print_hash_value);
    transparent_crc(p_2041->g_1214.s7, "p_2041->g_1214.s7", print_hash_value);
    transparent_crc(p_2041->g_1214.s8, "p_2041->g_1214.s8", print_hash_value);
    transparent_crc(p_2041->g_1214.s9, "p_2041->g_1214.s9", print_hash_value);
    transparent_crc(p_2041->g_1214.sa, "p_2041->g_1214.sa", print_hash_value);
    transparent_crc(p_2041->g_1214.sb, "p_2041->g_1214.sb", print_hash_value);
    transparent_crc(p_2041->g_1214.sc, "p_2041->g_1214.sc", print_hash_value);
    transparent_crc(p_2041->g_1214.sd, "p_2041->g_1214.sd", print_hash_value);
    transparent_crc(p_2041->g_1214.se, "p_2041->g_1214.se", print_hash_value);
    transparent_crc(p_2041->g_1214.sf, "p_2041->g_1214.sf", print_hash_value);
    transparent_crc(p_2041->g_1222.s0, "p_2041->g_1222.s0", print_hash_value);
    transparent_crc(p_2041->g_1222.s1, "p_2041->g_1222.s1", print_hash_value);
    transparent_crc(p_2041->g_1222.s2, "p_2041->g_1222.s2", print_hash_value);
    transparent_crc(p_2041->g_1222.s3, "p_2041->g_1222.s3", print_hash_value);
    transparent_crc(p_2041->g_1222.s4, "p_2041->g_1222.s4", print_hash_value);
    transparent_crc(p_2041->g_1222.s5, "p_2041->g_1222.s5", print_hash_value);
    transparent_crc(p_2041->g_1222.s6, "p_2041->g_1222.s6", print_hash_value);
    transparent_crc(p_2041->g_1222.s7, "p_2041->g_1222.s7", print_hash_value);
    transparent_crc(p_2041->g_1222.s8, "p_2041->g_1222.s8", print_hash_value);
    transparent_crc(p_2041->g_1222.s9, "p_2041->g_1222.s9", print_hash_value);
    transparent_crc(p_2041->g_1222.sa, "p_2041->g_1222.sa", print_hash_value);
    transparent_crc(p_2041->g_1222.sb, "p_2041->g_1222.sb", print_hash_value);
    transparent_crc(p_2041->g_1222.sc, "p_2041->g_1222.sc", print_hash_value);
    transparent_crc(p_2041->g_1222.sd, "p_2041->g_1222.sd", print_hash_value);
    transparent_crc(p_2041->g_1222.se, "p_2041->g_1222.se", print_hash_value);
    transparent_crc(p_2041->g_1222.sf, "p_2041->g_1222.sf", print_hash_value);
    transparent_crc(p_2041->g_1223.x, "p_2041->g_1223.x", print_hash_value);
    transparent_crc(p_2041->g_1223.y, "p_2041->g_1223.y", print_hash_value);
    transparent_crc(p_2041->g_1223.z, "p_2041->g_1223.z", print_hash_value);
    transparent_crc(p_2041->g_1223.w, "p_2041->g_1223.w", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_2041->g_1239[i][j].f0, "p_2041->g_1239[i][j].f0", print_hash_value);
            transparent_crc(p_2041->g_1239[i][j].f1, "p_2041->g_1239[i][j].f1", print_hash_value);
            transparent_crc(p_2041->g_1239[i][j].f2, "p_2041->g_1239[i][j].f2", print_hash_value);
            transparent_crc(p_2041->g_1239[i][j].f3, "p_2041->g_1239[i][j].f3", print_hash_value);

        }
    }
    transparent_crc(p_2041->g_1257.s0, "p_2041->g_1257.s0", print_hash_value);
    transparent_crc(p_2041->g_1257.s1, "p_2041->g_1257.s1", print_hash_value);
    transparent_crc(p_2041->g_1257.s2, "p_2041->g_1257.s2", print_hash_value);
    transparent_crc(p_2041->g_1257.s3, "p_2041->g_1257.s3", print_hash_value);
    transparent_crc(p_2041->g_1257.s4, "p_2041->g_1257.s4", print_hash_value);
    transparent_crc(p_2041->g_1257.s5, "p_2041->g_1257.s5", print_hash_value);
    transparent_crc(p_2041->g_1257.s6, "p_2041->g_1257.s6", print_hash_value);
    transparent_crc(p_2041->g_1257.s7, "p_2041->g_1257.s7", print_hash_value);
    transparent_crc(p_2041->g_1269.f0, "p_2041->g_1269.f0", print_hash_value);
    transparent_crc(p_2041->g_1269.f1, "p_2041->g_1269.f1", print_hash_value);
    transparent_crc(p_2041->g_1269.f2, "p_2041->g_1269.f2", print_hash_value);
    transparent_crc(p_2041->g_1269.f3, "p_2041->g_1269.f3", print_hash_value);
    transparent_crc(p_2041->g_1309.s0, "p_2041->g_1309.s0", print_hash_value);
    transparent_crc(p_2041->g_1309.s1, "p_2041->g_1309.s1", print_hash_value);
    transparent_crc(p_2041->g_1309.s2, "p_2041->g_1309.s2", print_hash_value);
    transparent_crc(p_2041->g_1309.s3, "p_2041->g_1309.s3", print_hash_value);
    transparent_crc(p_2041->g_1309.s4, "p_2041->g_1309.s4", print_hash_value);
    transparent_crc(p_2041->g_1309.s5, "p_2041->g_1309.s5", print_hash_value);
    transparent_crc(p_2041->g_1309.s6, "p_2041->g_1309.s6", print_hash_value);
    transparent_crc(p_2041->g_1309.s7, "p_2041->g_1309.s7", print_hash_value);
    transparent_crc(p_2041->g_1310.x, "p_2041->g_1310.x", print_hash_value);
    transparent_crc(p_2041->g_1310.y, "p_2041->g_1310.y", print_hash_value);
    transparent_crc(p_2041->g_1310.z, "p_2041->g_1310.z", print_hash_value);
    transparent_crc(p_2041->g_1310.w, "p_2041->g_1310.w", print_hash_value);
    transparent_crc(p_2041->g_1322.x, "p_2041->g_1322.x", print_hash_value);
    transparent_crc(p_2041->g_1322.y, "p_2041->g_1322.y", print_hash_value);
    transparent_crc(p_2041->g_1344.x, "p_2041->g_1344.x", print_hash_value);
    transparent_crc(p_2041->g_1344.y, "p_2041->g_1344.y", print_hash_value);
    transparent_crc(p_2041->g_1344.z, "p_2041->g_1344.z", print_hash_value);
    transparent_crc(p_2041->g_1344.w, "p_2041->g_1344.w", print_hash_value);
    transparent_crc(p_2041->g_1346.x, "p_2041->g_1346.x", print_hash_value);
    transparent_crc(p_2041->g_1346.y, "p_2041->g_1346.y", print_hash_value);
    transparent_crc(p_2041->g_1348.x, "p_2041->g_1348.x", print_hash_value);
    transparent_crc(p_2041->g_1348.y, "p_2041->g_1348.y", print_hash_value);
    transparent_crc(p_2041->g_1384.x, "p_2041->g_1384.x", print_hash_value);
    transparent_crc(p_2041->g_1384.y, "p_2041->g_1384.y", print_hash_value);
    transparent_crc(p_2041->g_1384.z, "p_2041->g_1384.z", print_hash_value);
    transparent_crc(p_2041->g_1384.w, "p_2041->g_1384.w", print_hash_value);
    transparent_crc(p_2041->g_1426.s0, "p_2041->g_1426.s0", print_hash_value);
    transparent_crc(p_2041->g_1426.s1, "p_2041->g_1426.s1", print_hash_value);
    transparent_crc(p_2041->g_1426.s2, "p_2041->g_1426.s2", print_hash_value);
    transparent_crc(p_2041->g_1426.s3, "p_2041->g_1426.s3", print_hash_value);
    transparent_crc(p_2041->g_1426.s4, "p_2041->g_1426.s4", print_hash_value);
    transparent_crc(p_2041->g_1426.s5, "p_2041->g_1426.s5", print_hash_value);
    transparent_crc(p_2041->g_1426.s6, "p_2041->g_1426.s6", print_hash_value);
    transparent_crc(p_2041->g_1426.s7, "p_2041->g_1426.s7", print_hash_value);
    transparent_crc(p_2041->g_1437.x, "p_2041->g_1437.x", print_hash_value);
    transparent_crc(p_2041->g_1437.y, "p_2041->g_1437.y", print_hash_value);
    transparent_crc(p_2041->g_1437.z, "p_2041->g_1437.z", print_hash_value);
    transparent_crc(p_2041->g_1437.w, "p_2041->g_1437.w", print_hash_value);
    transparent_crc(p_2041->g_1440.x, "p_2041->g_1440.x", print_hash_value);
    transparent_crc(p_2041->g_1440.y, "p_2041->g_1440.y", print_hash_value);
    transparent_crc(p_2041->g_1440.z, "p_2041->g_1440.z", print_hash_value);
    transparent_crc(p_2041->g_1440.w, "p_2041->g_1440.w", print_hash_value);
    transparent_crc(p_2041->g_1492, "p_2041->g_1492", print_hash_value);
    transparent_crc(p_2041->g_1496.f0, "p_2041->g_1496.f0", print_hash_value);
    transparent_crc(p_2041->g_1496.f1, "p_2041->g_1496.f1", print_hash_value);
    transparent_crc(p_2041->g_1496.f2, "p_2041->g_1496.f2", print_hash_value);
    transparent_crc(p_2041->g_1496.f3, "p_2041->g_1496.f3", print_hash_value);
    transparent_crc(p_2041->g_1503.s0, "p_2041->g_1503.s0", print_hash_value);
    transparent_crc(p_2041->g_1503.s1, "p_2041->g_1503.s1", print_hash_value);
    transparent_crc(p_2041->g_1503.s2, "p_2041->g_1503.s2", print_hash_value);
    transparent_crc(p_2041->g_1503.s3, "p_2041->g_1503.s3", print_hash_value);
    transparent_crc(p_2041->g_1503.s4, "p_2041->g_1503.s4", print_hash_value);
    transparent_crc(p_2041->g_1503.s5, "p_2041->g_1503.s5", print_hash_value);
    transparent_crc(p_2041->g_1503.s6, "p_2041->g_1503.s6", print_hash_value);
    transparent_crc(p_2041->g_1503.s7, "p_2041->g_1503.s7", print_hash_value);
    transparent_crc(p_2041->g_1517.s0, "p_2041->g_1517.s0", print_hash_value);
    transparent_crc(p_2041->g_1517.s1, "p_2041->g_1517.s1", print_hash_value);
    transparent_crc(p_2041->g_1517.s2, "p_2041->g_1517.s2", print_hash_value);
    transparent_crc(p_2041->g_1517.s3, "p_2041->g_1517.s3", print_hash_value);
    transparent_crc(p_2041->g_1517.s4, "p_2041->g_1517.s4", print_hash_value);
    transparent_crc(p_2041->g_1517.s5, "p_2041->g_1517.s5", print_hash_value);
    transparent_crc(p_2041->g_1517.s6, "p_2041->g_1517.s6", print_hash_value);
    transparent_crc(p_2041->g_1517.s7, "p_2041->g_1517.s7", print_hash_value);
    transparent_crc(p_2041->g_1534.x, "p_2041->g_1534.x", print_hash_value);
    transparent_crc(p_2041->g_1534.y, "p_2041->g_1534.y", print_hash_value);
    transparent_crc(p_2041->g_1535.s0, "p_2041->g_1535.s0", print_hash_value);
    transparent_crc(p_2041->g_1535.s1, "p_2041->g_1535.s1", print_hash_value);
    transparent_crc(p_2041->g_1535.s2, "p_2041->g_1535.s2", print_hash_value);
    transparent_crc(p_2041->g_1535.s3, "p_2041->g_1535.s3", print_hash_value);
    transparent_crc(p_2041->g_1535.s4, "p_2041->g_1535.s4", print_hash_value);
    transparent_crc(p_2041->g_1535.s5, "p_2041->g_1535.s5", print_hash_value);
    transparent_crc(p_2041->g_1535.s6, "p_2041->g_1535.s6", print_hash_value);
    transparent_crc(p_2041->g_1535.s7, "p_2041->g_1535.s7", print_hash_value);
    transparent_crc(p_2041->g_1535.s8, "p_2041->g_1535.s8", print_hash_value);
    transparent_crc(p_2041->g_1535.s9, "p_2041->g_1535.s9", print_hash_value);
    transparent_crc(p_2041->g_1535.sa, "p_2041->g_1535.sa", print_hash_value);
    transparent_crc(p_2041->g_1535.sb, "p_2041->g_1535.sb", print_hash_value);
    transparent_crc(p_2041->g_1535.sc, "p_2041->g_1535.sc", print_hash_value);
    transparent_crc(p_2041->g_1535.sd, "p_2041->g_1535.sd", print_hash_value);
    transparent_crc(p_2041->g_1535.se, "p_2041->g_1535.se", print_hash_value);
    transparent_crc(p_2041->g_1535.sf, "p_2041->g_1535.sf", print_hash_value);
    transparent_crc(p_2041->g_1536.x, "p_2041->g_1536.x", print_hash_value);
    transparent_crc(p_2041->g_1536.y, "p_2041->g_1536.y", print_hash_value);
    transparent_crc(p_2041->g_1539.f0, "p_2041->g_1539.f0", print_hash_value);
    transparent_crc(p_2041->g_1539.f1, "p_2041->g_1539.f1", print_hash_value);
    transparent_crc(p_2041->g_1539.f2, "p_2041->g_1539.f2", print_hash_value);
    transparent_crc(p_2041->g_1539.f3, "p_2041->g_1539.f3", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2041->g_1637[i], "p_2041->g_1637[i]", print_hash_value);

    }
    transparent_crc(p_2041->g_1695.f0, "p_2041->g_1695.f0", print_hash_value);
    transparent_crc(p_2041->g_1695.f1, "p_2041->g_1695.f1", print_hash_value);
    transparent_crc(p_2041->g_1695.f2, "p_2041->g_1695.f2", print_hash_value);
    transparent_crc(p_2041->g_1695.f3, "p_2041->g_1695.f3", print_hash_value);
    transparent_crc(p_2041->g_1728, "p_2041->g_1728", print_hash_value);
    transparent_crc(p_2041->g_1781.x, "p_2041->g_1781.x", print_hash_value);
    transparent_crc(p_2041->g_1781.y, "p_2041->g_1781.y", print_hash_value);
    transparent_crc(p_2041->g_1802.x, "p_2041->g_1802.x", print_hash_value);
    transparent_crc(p_2041->g_1802.y, "p_2041->g_1802.y", print_hash_value);
    transparent_crc(p_2041->g_1802.z, "p_2041->g_1802.z", print_hash_value);
    transparent_crc(p_2041->g_1802.w, "p_2041->g_1802.w", print_hash_value);
    transparent_crc(p_2041->g_1827.s0, "p_2041->g_1827.s0", print_hash_value);
    transparent_crc(p_2041->g_1827.s1, "p_2041->g_1827.s1", print_hash_value);
    transparent_crc(p_2041->g_1827.s2, "p_2041->g_1827.s2", print_hash_value);
    transparent_crc(p_2041->g_1827.s3, "p_2041->g_1827.s3", print_hash_value);
    transparent_crc(p_2041->g_1827.s4, "p_2041->g_1827.s4", print_hash_value);
    transparent_crc(p_2041->g_1827.s5, "p_2041->g_1827.s5", print_hash_value);
    transparent_crc(p_2041->g_1827.s6, "p_2041->g_1827.s6", print_hash_value);
    transparent_crc(p_2041->g_1827.s7, "p_2041->g_1827.s7", print_hash_value);
    transparent_crc(p_2041->g_1828.x, "p_2041->g_1828.x", print_hash_value);
    transparent_crc(p_2041->g_1828.y, "p_2041->g_1828.y", print_hash_value);
    transparent_crc(p_2041->g_1828.z, "p_2041->g_1828.z", print_hash_value);
    transparent_crc(p_2041->g_1828.w, "p_2041->g_1828.w", print_hash_value);
    transparent_crc(p_2041->g_1829.s0, "p_2041->g_1829.s0", print_hash_value);
    transparent_crc(p_2041->g_1829.s1, "p_2041->g_1829.s1", print_hash_value);
    transparent_crc(p_2041->g_1829.s2, "p_2041->g_1829.s2", print_hash_value);
    transparent_crc(p_2041->g_1829.s3, "p_2041->g_1829.s3", print_hash_value);
    transparent_crc(p_2041->g_1829.s4, "p_2041->g_1829.s4", print_hash_value);
    transparent_crc(p_2041->g_1829.s5, "p_2041->g_1829.s5", print_hash_value);
    transparent_crc(p_2041->g_1829.s6, "p_2041->g_1829.s6", print_hash_value);
    transparent_crc(p_2041->g_1829.s7, "p_2041->g_1829.s7", print_hash_value);
    transparent_crc(p_2041->g_1844.f0, "p_2041->g_1844.f0", print_hash_value);
    transparent_crc(p_2041->g_1844.f1, "p_2041->g_1844.f1", print_hash_value);
    transparent_crc(p_2041->g_1844.f2, "p_2041->g_1844.f2", print_hash_value);
    transparent_crc(p_2041->g_1844.f3, "p_2041->g_1844.f3", print_hash_value);
    transparent_crc(p_2041->g_1891.x, "p_2041->g_1891.x", print_hash_value);
    transparent_crc(p_2041->g_1891.y, "p_2041->g_1891.y", print_hash_value);
    transparent_crc(p_2041->g_1892.x, "p_2041->g_1892.x", print_hash_value);
    transparent_crc(p_2041->g_1892.y, "p_2041->g_1892.y", print_hash_value);
    transparent_crc(p_2041->g_1892.z, "p_2041->g_1892.z", print_hash_value);
    transparent_crc(p_2041->g_1892.w, "p_2041->g_1892.w", print_hash_value);
    transparent_crc(p_2041->g_1894.x, "p_2041->g_1894.x", print_hash_value);
    transparent_crc(p_2041->g_1894.y, "p_2041->g_1894.y", print_hash_value);
    transparent_crc(p_2041->g_1894.z, "p_2041->g_1894.z", print_hash_value);
    transparent_crc(p_2041->g_1894.w, "p_2041->g_1894.w", print_hash_value);
    transparent_crc(p_2041->g_1898, "p_2041->g_1898", print_hash_value);
    transparent_crc(p_2041->g_1911.x, "p_2041->g_1911.x", print_hash_value);
    transparent_crc(p_2041->g_1911.y, "p_2041->g_1911.y", print_hash_value);
    transparent_crc(p_2041->g_1911.z, "p_2041->g_1911.z", print_hash_value);
    transparent_crc(p_2041->g_1911.w, "p_2041->g_1911.w", print_hash_value);
    transparent_crc(p_2041->g_1912.s0, "p_2041->g_1912.s0", print_hash_value);
    transparent_crc(p_2041->g_1912.s1, "p_2041->g_1912.s1", print_hash_value);
    transparent_crc(p_2041->g_1912.s2, "p_2041->g_1912.s2", print_hash_value);
    transparent_crc(p_2041->g_1912.s3, "p_2041->g_1912.s3", print_hash_value);
    transparent_crc(p_2041->g_1912.s4, "p_2041->g_1912.s4", print_hash_value);
    transparent_crc(p_2041->g_1912.s5, "p_2041->g_1912.s5", print_hash_value);
    transparent_crc(p_2041->g_1912.s6, "p_2041->g_1912.s6", print_hash_value);
    transparent_crc(p_2041->g_1912.s7, "p_2041->g_1912.s7", print_hash_value);
    transparent_crc(p_2041->g_1922.x, "p_2041->g_1922.x", print_hash_value);
    transparent_crc(p_2041->g_1922.y, "p_2041->g_1922.y", print_hash_value);
    transparent_crc(p_2041->g_1926, "p_2041->g_1926", print_hash_value);
    transparent_crc(p_2041->g_1933.s0, "p_2041->g_1933.s0", print_hash_value);
    transparent_crc(p_2041->g_1933.s1, "p_2041->g_1933.s1", print_hash_value);
    transparent_crc(p_2041->g_1933.s2, "p_2041->g_1933.s2", print_hash_value);
    transparent_crc(p_2041->g_1933.s3, "p_2041->g_1933.s3", print_hash_value);
    transparent_crc(p_2041->g_1933.s4, "p_2041->g_1933.s4", print_hash_value);
    transparent_crc(p_2041->g_1933.s5, "p_2041->g_1933.s5", print_hash_value);
    transparent_crc(p_2041->g_1933.s6, "p_2041->g_1933.s6", print_hash_value);
    transparent_crc(p_2041->g_1933.s7, "p_2041->g_1933.s7", print_hash_value);
    transparent_crc(p_2041->g_1933.s8, "p_2041->g_1933.s8", print_hash_value);
    transparent_crc(p_2041->g_1933.s9, "p_2041->g_1933.s9", print_hash_value);
    transparent_crc(p_2041->g_1933.sa, "p_2041->g_1933.sa", print_hash_value);
    transparent_crc(p_2041->g_1933.sb, "p_2041->g_1933.sb", print_hash_value);
    transparent_crc(p_2041->g_1933.sc, "p_2041->g_1933.sc", print_hash_value);
    transparent_crc(p_2041->g_1933.sd, "p_2041->g_1933.sd", print_hash_value);
    transparent_crc(p_2041->g_1933.se, "p_2041->g_1933.se", print_hash_value);
    transparent_crc(p_2041->g_1933.sf, "p_2041->g_1933.sf", print_hash_value);
    transparent_crc(p_2041->g_1939.s0, "p_2041->g_1939.s0", print_hash_value);
    transparent_crc(p_2041->g_1939.s1, "p_2041->g_1939.s1", print_hash_value);
    transparent_crc(p_2041->g_1939.s2, "p_2041->g_1939.s2", print_hash_value);
    transparent_crc(p_2041->g_1939.s3, "p_2041->g_1939.s3", print_hash_value);
    transparent_crc(p_2041->g_1939.s4, "p_2041->g_1939.s4", print_hash_value);
    transparent_crc(p_2041->g_1939.s5, "p_2041->g_1939.s5", print_hash_value);
    transparent_crc(p_2041->g_1939.s6, "p_2041->g_1939.s6", print_hash_value);
    transparent_crc(p_2041->g_1939.s7, "p_2041->g_1939.s7", print_hash_value);
    transparent_crc(p_2041->g_1939.s8, "p_2041->g_1939.s8", print_hash_value);
    transparent_crc(p_2041->g_1939.s9, "p_2041->g_1939.s9", print_hash_value);
    transparent_crc(p_2041->g_1939.sa, "p_2041->g_1939.sa", print_hash_value);
    transparent_crc(p_2041->g_1939.sb, "p_2041->g_1939.sb", print_hash_value);
    transparent_crc(p_2041->g_1939.sc, "p_2041->g_1939.sc", print_hash_value);
    transparent_crc(p_2041->g_1939.sd, "p_2041->g_1939.sd", print_hash_value);
    transparent_crc(p_2041->g_1939.se, "p_2041->g_1939.se", print_hash_value);
    transparent_crc(p_2041->g_1939.sf, "p_2041->g_1939.sf", print_hash_value);
    transparent_crc(p_2041->g_1971.x, "p_2041->g_1971.x", print_hash_value);
    transparent_crc(p_2041->g_1971.y, "p_2041->g_1971.y", print_hash_value);
    transparent_crc(p_2041->g_1983.s0, "p_2041->g_1983.s0", print_hash_value);
    transparent_crc(p_2041->g_1983.s1, "p_2041->g_1983.s1", print_hash_value);
    transparent_crc(p_2041->g_1983.s2, "p_2041->g_1983.s2", print_hash_value);
    transparent_crc(p_2041->g_1983.s3, "p_2041->g_1983.s3", print_hash_value);
    transparent_crc(p_2041->g_1983.s4, "p_2041->g_1983.s4", print_hash_value);
    transparent_crc(p_2041->g_1983.s5, "p_2041->g_1983.s5", print_hash_value);
    transparent_crc(p_2041->g_1983.s6, "p_2041->g_1983.s6", print_hash_value);
    transparent_crc(p_2041->g_1983.s7, "p_2041->g_1983.s7", print_hash_value);
    transparent_crc(p_2041->g_1983.s8, "p_2041->g_1983.s8", print_hash_value);
    transparent_crc(p_2041->g_1983.s9, "p_2041->g_1983.s9", print_hash_value);
    transparent_crc(p_2041->g_1983.sa, "p_2041->g_1983.sa", print_hash_value);
    transparent_crc(p_2041->g_1983.sb, "p_2041->g_1983.sb", print_hash_value);
    transparent_crc(p_2041->g_1983.sc, "p_2041->g_1983.sc", print_hash_value);
    transparent_crc(p_2041->g_1983.sd, "p_2041->g_1983.sd", print_hash_value);
    transparent_crc(p_2041->g_1983.se, "p_2041->g_1983.se", print_hash_value);
    transparent_crc(p_2041->g_1983.sf, "p_2041->g_1983.sf", print_hash_value);
    transparent_crc(p_2041->g_1984.x, "p_2041->g_1984.x", print_hash_value);
    transparent_crc(p_2041->g_1984.y, "p_2041->g_1984.y", print_hash_value);
    transparent_crc(p_2041->g_1985.s0, "p_2041->g_1985.s0", print_hash_value);
    transparent_crc(p_2041->g_1985.s1, "p_2041->g_1985.s1", print_hash_value);
    transparent_crc(p_2041->g_1985.s2, "p_2041->g_1985.s2", print_hash_value);
    transparent_crc(p_2041->g_1985.s3, "p_2041->g_1985.s3", print_hash_value);
    transparent_crc(p_2041->g_1985.s4, "p_2041->g_1985.s4", print_hash_value);
    transparent_crc(p_2041->g_1985.s5, "p_2041->g_1985.s5", print_hash_value);
    transparent_crc(p_2041->g_1985.s6, "p_2041->g_1985.s6", print_hash_value);
    transparent_crc(p_2041->g_1985.s7, "p_2041->g_1985.s7", print_hash_value);
    transparent_crc(p_2041->g_1986.s0, "p_2041->g_1986.s0", print_hash_value);
    transparent_crc(p_2041->g_1986.s1, "p_2041->g_1986.s1", print_hash_value);
    transparent_crc(p_2041->g_1986.s2, "p_2041->g_1986.s2", print_hash_value);
    transparent_crc(p_2041->g_1986.s3, "p_2041->g_1986.s3", print_hash_value);
    transparent_crc(p_2041->g_1986.s4, "p_2041->g_1986.s4", print_hash_value);
    transparent_crc(p_2041->g_1986.s5, "p_2041->g_1986.s5", print_hash_value);
    transparent_crc(p_2041->g_1986.s6, "p_2041->g_1986.s6", print_hash_value);
    transparent_crc(p_2041->g_1986.s7, "p_2041->g_1986.s7", print_hash_value);
    transparent_crc(p_2041->g_2019.x, "p_2041->g_2019.x", print_hash_value);
    transparent_crc(p_2041->g_2019.y, "p_2041->g_2019.y", print_hash_value);
    transparent_crc(p_2041->g_2019.z, "p_2041->g_2019.z", print_hash_value);
    transparent_crc(p_2041->g_2019.w, "p_2041->g_2019.w", print_hash_value);
    transparent_crc(p_2041->g_2020.x, "p_2041->g_2020.x", print_hash_value);
    transparent_crc(p_2041->g_2020.y, "p_2041->g_2020.y", print_hash_value);
    transparent_crc(p_2041->g_2021.s0, "p_2041->g_2021.s0", print_hash_value);
    transparent_crc(p_2041->g_2021.s1, "p_2041->g_2021.s1", print_hash_value);
    transparent_crc(p_2041->g_2021.s2, "p_2041->g_2021.s2", print_hash_value);
    transparent_crc(p_2041->g_2021.s3, "p_2041->g_2021.s3", print_hash_value);
    transparent_crc(p_2041->g_2021.s4, "p_2041->g_2021.s4", print_hash_value);
    transparent_crc(p_2041->g_2021.s5, "p_2041->g_2021.s5", print_hash_value);
    transparent_crc(p_2041->g_2021.s6, "p_2041->g_2021.s6", print_hash_value);
    transparent_crc(p_2041->g_2021.s7, "p_2041->g_2021.s7", print_hash_value);
    transparent_crc(p_2041->g_2021.s8, "p_2041->g_2021.s8", print_hash_value);
    transparent_crc(p_2041->g_2021.s9, "p_2041->g_2021.s9", print_hash_value);
    transparent_crc(p_2041->g_2021.sa, "p_2041->g_2021.sa", print_hash_value);
    transparent_crc(p_2041->g_2021.sb, "p_2041->g_2021.sb", print_hash_value);
    transparent_crc(p_2041->g_2021.sc, "p_2041->g_2021.sc", print_hash_value);
    transparent_crc(p_2041->g_2021.sd, "p_2041->g_2021.sd", print_hash_value);
    transparent_crc(p_2041->g_2021.se, "p_2041->g_2021.se", print_hash_value);
    transparent_crc(p_2041->g_2021.sf, "p_2041->g_2021.sf", print_hash_value);
    transparent_crc(p_2041->g_2022.x, "p_2041->g_2022.x", print_hash_value);
    transparent_crc(p_2041->g_2022.y, "p_2041->g_2022.y", print_hash_value);
    transparent_crc(p_2041->g_2040.f0, "p_2041->g_2040.f0", print_hash_value);
    transparent_crc(p_2041->g_2040.f1, "p_2041->g_2040.f1", print_hash_value);
    transparent_crc(p_2041->g_2040.f2, "p_2041->g_2040.f2", print_hash_value);
    transparent_crc(p_2041->g_2040.f3, "p_2041->g_2040.f3", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
