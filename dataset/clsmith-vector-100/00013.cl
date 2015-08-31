// ---fake_divergence -g 2,1,2463 -l 2,1,3
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


// Seed: 13

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_2;
    volatile uint8_t g_5;
    volatile int32_t g_6;
    int32_t g_7;
    int32_t g_12;
    uint64_t g_19[3][9];
    int32_t g_89;
    int32_t g_93;
    int32_t *g_92;
    int64_t g_97;
    uint16_t g_100;
    uint32_t g_103;
    int32_t g_136;
    int32_t g_138;
    int64_t g_140;
    uint8_t g_141[5];
    uint64_t g_144;
    VECTOR(int8_t, 4) g_151;
    VECTOR(uint32_t, 2) g_179;
    int32_t *g_187[9][6][4];
    uint16_t *g_195;
    uint16_t **g_194[8][6];
    uint16_t ***g_193[6];
    VECTOR(int8_t, 2) g_203;
    int64_t **g_204;
    VECTOR(int32_t, 8) g_207;
    VECTOR(int32_t, 16) g_208;
    VECTOR(int32_t, 16) g_213;
    VECTOR(int32_t, 8) g_214;
    VECTOR(uint16_t, 4) g_236;
    uint32_t g_246;
    volatile int8_t *g_249;
    uint32_t *g_273;
    volatile int32_t g_276;
    volatile int32_t g_277[4];
    volatile int32_t g_278;
    volatile int32_t g_279;
    volatile int32_t g_280;
    volatile int32_t *g_275[4][5][4];
    volatile int32_t g_282;
    VECTOR(int8_t, 16) g_309;
    int32_t g_328;
    VECTOR(int64_t, 8) g_387;
    VECTOR(int64_t, 2) g_388;
    VECTOR(int64_t, 8) g_389;
    uint8_t g_393;
    int16_t g_411;
    uint64_t g_422;
    int8_t *g_448;
    int8_t **g_447;
    VECTOR(uint64_t, 8) g_453;
    VECTOR(uint8_t, 4) g_472;
    VECTOR(int32_t, 16) g_482;
    VECTOR(int32_t, 16) g_484;
    VECTOR(uint32_t, 16) g_493;
    int64_t * volatile g_506;
    int64_t * volatile *g_505;
    int64_t g_507;
    VECTOR(int16_t, 4) g_526;
    VECTOR(uint64_t, 2) g_581;
    VECTOR(uint64_t, 8) g_597;
    VECTOR(uint32_t, 2) g_623;
    VECTOR(int32_t, 4) g_648;
    VECTOR(int32_t, 8) g_649;
    VECTOR(int64_t, 2) g_685;
    VECTOR(uint32_t, 2) g_694;
    VECTOR(int64_t, 8) g_714;
    VECTOR(uint16_t, 16) g_724;
    VECTOR(uint32_t, 8) g_742;
    uint16_t g_786;
    VECTOR(uint32_t, 8) g_797;
    VECTOR(int64_t, 4) g_830;
    VECTOR(int64_t, 4) g_831;
    VECTOR(uint32_t, 16) g_844;
    VECTOR(uint32_t, 16) g_845;
    VECTOR(int64_t, 16) g_871;
    VECTOR(int64_t, 8) g_872;
    VECTOR(uint64_t, 8) g_879;
    VECTOR(int64_t, 8) g_884;
    VECTOR(int64_t, 8) g_947;
    volatile int32_t * volatile **g_995;
    VECTOR(int8_t, 16) g_1027;
    VECTOR(int8_t, 4) g_1028;
    VECTOR(int16_t, 4) g_1092;
    VECTOR(int16_t, 4) g_1093;
    VECTOR(uint16_t, 4) g_1114;
    VECTOR(uint16_t, 2) g_1119;
    VECTOR(uint16_t, 8) g_1123;
    VECTOR(uint16_t, 8) g_1134;
    VECTOR(int16_t, 4) g_1135;
    VECTOR(uint8_t, 4) g_1142;
    VECTOR(uint8_t, 8) g_1143;
    VECTOR(uint16_t, 16) g_1187;
    uint64_t *g_1190;
    VECTOR(int16_t, 4) g_1237;
    volatile int32_t g_1263;
    volatile int32_t *g_1262;
    volatile int32_t **g_1261;
    int32_t g_1287;
    uint8_t g_1302;
    VECTOR(int64_t, 16) g_1307;
    VECTOR(int64_t, 8) g_1309;
    VECTOR(int64_t, 4) g_1312;
    VECTOR(uint16_t, 4) g_1314;
    VECTOR(int8_t, 16) g_1318;
    VECTOR(int32_t, 4) g_1324;
    VECTOR(uint32_t, 2) g_1333;
    VECTOR(uint8_t, 2) g_1338;
    int32_t *g_1375;
    int32_t **g_1374;
    VECTOR(int8_t, 8) g_1451;
    int32_t *g_1461[6];
    int32_t *g_1462[10];
    VECTOR(uint8_t, 2) g_1469;
    uint8_t g_1488[2][9];
    volatile VECTOR(int8_t, 2) g_1511;
    VECTOR(int8_t, 8) g_1512;
    VECTOR(int8_t, 4) g_1517;
    VECTOR(int8_t, 2) g_1520;
    VECTOR(int8_t, 2) g_1521;
    VECTOR(int32_t, 8) g_1532;
    VECTOR(int32_t, 16) g_1533;
    int16_t g_1555;
    uint64_t g_1557;
    volatile VECTOR(uint8_t, 16) g_1575;
    int32_t ** volatile *g_1605;
    uint32_t *g_1623;
    volatile uint32_t g_1625[1];
    volatile uint32_t * volatile g_1624;
    uint8_t g_1656;
    volatile VECTOR(int16_t, 4) g_1670;
    volatile uint16_t g_1691[10][2][8];
    volatile uint16_t *g_1690;
    volatile uint16_t * volatile *g_1689[4][1];
    volatile uint16_t * volatile * volatile *g_1688;
    volatile uint16_t * volatile * volatile **g_1687;
    volatile uint16_t * volatile * volatile *** volatile g_1686[4];
    VECTOR(int64_t, 16) g_1698;
    VECTOR(uint64_t, 16) g_1724;
    uint64_t *g_1749;
    uint64_t **g_1748;
    uint64_t *** volatile g_1747;
    VECTOR(int64_t, 4) g_1756;
    volatile VECTOR(int16_t, 8) g_1816;
    int32_t ** volatile g_1888;
    VECTOR(uint64_t, 16) g_1907;
    volatile VECTOR(uint32_t, 8) g_1909;
    uint16_t ****g_1918[10];
    uint16_t *****g_1917;
    VECTOR(uint16_t, 16) g_1926;
    volatile VECTOR(int8_t, 16) g_1947;
    int32_t ** volatile g_1956;
    int32_t ** volatile g_1957;
    int32_t ** volatile g_1958;
    int32_t ** volatile g_1968;
    VECTOR(int8_t, 16) g_1977;
    volatile VECTOR(int8_t, 2) g_1979;
    volatile VECTOR(int16_t, 8) g_1986;
    volatile VECTOR(uint16_t, 2) g_2001;
    VECTOR(uint16_t, 4) g_2002;
    VECTOR(int32_t, 2) g_2006;
    VECTOR(int32_t, 2) g_2012;
    VECTOR(uint16_t, 8) g_2026;
    int32_t g_2029;
    VECTOR(uint16_t, 2) g_2040;
    volatile VECTOR(uint16_t, 8) g_2046;
    volatile VECTOR(int32_t, 8) g_2050;
    volatile VECTOR(int16_t, 16) g_2067;
    VECTOR(uint8_t, 16) g_2105;
    VECTOR(uint8_t, 4) g_2107;
    volatile VECTOR(uint8_t, 4) g_2114;
    VECTOR(uint8_t, 2) g_2115;
    volatile VECTOR(uint8_t, 2) g_2116;
    volatile VECTOR(uint8_t, 4) g_2120;
    VECTOR(int32_t, 8) g_2121;
    volatile VECTOR(uint16_t, 8) g_2128;
    volatile uint16_t * volatile **** volatile g_2164;
    uint16_t ******g_2192[5];
    uint32_t *g_2200[10][9];
    uint32_t **g_2199;
    volatile VECTOR(uint16_t, 8) g_2207;
    volatile uint32_t g_2231[10][8][3];
    VECTOR(uint8_t, 2) g_2276;
    VECTOR(uint16_t, 2) g_2286;
    VECTOR(uint8_t, 4) g_2298;
    VECTOR(uint64_t, 8) g_2332;
    int32_t *g_2377;
    int32_t **g_2376;
    int32_t ***g_2375[1][2];
    VECTOR(int32_t, 4) g_2382;
    int32_t **g_2390[8][8][4];
    int32_t ***g_2389;
    int32_t ***g_2392;
    VECTOR(int32_t, 2) g_2395;
    VECTOR(uint8_t, 8) g_2419;
    volatile VECTOR(uint32_t, 16) g_2464;
    VECTOR(uint8_t, 16) g_2470;
    VECTOR(uint8_t, 2) g_2475;
    VECTOR(uint64_t, 16) g_2483;
    VECTOR(uint8_t, 8) g_2499;
    VECTOR(uint8_t, 2) g_2506;
    volatile int16_t g_2520;
    volatile VECTOR(int16_t, 2) g_2527;
    VECTOR(int8_t, 8) g_2538;
    volatile VECTOR(uint32_t, 8) g_2650;
    VECTOR(int16_t, 4) g_2678;
    int32_t * volatile g_2701;
    VECTOR(int16_t, 16) g_2707;
    VECTOR(uint64_t, 8) g_2711;
    VECTOR(uint64_t, 4) g_2722;
    VECTOR(uint64_t, 8) g_2733;
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
uint16_t  func_1(struct S0 * p_2768);
int32_t  func_29(uint64_t  p_30, struct S0 * p_2768);
VECTOR(int8_t, 2)  func_35(int32_t * p_36, struct S0 * p_2768);
int32_t * func_37(int32_t * p_38, int32_t * p_39, int32_t  p_40, struct S0 * p_2768);
int32_t * func_41(uint64_t  p_42, struct S0 * p_2768);
uint8_t  func_49(int32_t * p_50, int32_t * p_51, int32_t  p_52, struct S0 * p_2768);
int32_t * func_53(int32_t * p_54, int32_t * p_55, uint32_t  p_56, uint32_t  p_57, uint64_t  p_58, struct S0 * p_2768);
int32_t * func_64(uint8_t  p_65, uint64_t  p_66, int32_t  p_67, int32_t  p_68, struct S0 * p_2768);
int32_t  func_69(uint64_t  p_70, int32_t * p_71, int32_t * p_72, struct S0 * p_2768);
int32_t * func_76(int32_t * p_77, int32_t * p_78, struct S0 * p_2768);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2768->g_2 p_2768->g_6 p_2768->g_19 p_2768->g_1312 p_2768->g_1555 p_2768->g_2707 p_2768->g_2711 p_2768->g_2722 p_2768->g_2733 p_2768->g_93 p_2768->g_1888 p_2768->g_2332
 * writes: p_2768->g_2 p_2768->g_5 p_2768->g_7 p_2768->g_19 p_2768->g_93 p_2768->g_1462 p_2768->g_2332
 */
uint16_t  func_1(struct S0 * p_2768)
{ /* block id: 4 */
    int32_t l_1751 = 0x33BFEBFBL;
    int32_t l_2761 = 0x69EB7217L;
    int32_t l_2762 = 0x21F233F3L;
    int32_t l_2763[9] = {0x1700E3A9L,0x1700E3A9L,0x1700E3A9L,0x1700E3A9L,0x1700E3A9L,0x1700E3A9L,0x1700E3A9L,0x1700E3A9L,0x1700E3A9L};
    uint32_t l_2764 = 0x8D57E607L;
    uint8_t l_2767 = 0x12L;
    int i;
    for (p_2768->g_2 = 0; (p_2768->g_2 > 0); p_2768->g_2 = safe_add_func_int32_t_s_s(p_2768->g_2, 4))
    { /* block id: 7 */
        int8_t l_17 = 0x20L;
        uint32_t l_22 = 0x132D683AL;
        VECTOR(int32_t, 16) l_1774 = (VECTOR(int32_t, 16))(0x6A314E8DL, (VECTOR(int32_t, 4))(0x6A314E8DL, (VECTOR(int32_t, 2))(0x6A314E8DL, 0L), 0L), 0L, 0x6A314E8DL, 0L, (VECTOR(int32_t, 2))(0x6A314E8DL, 0L), (VECTOR(int32_t, 2))(0x6A314E8DL, 0L), 0x6A314E8DL, 0L, 0x6A314E8DL, 0L);
        int i;
        p_2768->g_5 = 0x142A1E94L;
        for (p_2768->g_7 = 15; (p_2768->g_7 >= (-24)); p_2768->g_7 = safe_sub_func_uint64_t_u_u(p_2768->g_7, 6))
        { /* block id: 11 */
            int32_t *l_10 = (void*)0;
            int32_t *l_11 = &p_2768->g_12;
            int32_t *l_13 = &p_2768->g_12;
            int32_t *l_14 = &p_2768->g_12;
            int32_t *l_15 = &p_2768->g_12;
            int32_t *l_16 = &p_2768->g_12;
            int32_t *l_18[6][1][2] = {{{&p_2768->g_12,&p_2768->g_12}},{{&p_2768->g_12,&p_2768->g_12}},{{&p_2768->g_12,&p_2768->g_12}},{{&p_2768->g_12,&p_2768->g_12}},{{&p_2768->g_12,&p_2768->g_12}},{{&p_2768->g_12,&p_2768->g_12}}};
            int i, j, k;
            if (p_2768->g_6)
                break;
            --p_2768->g_19[2][1];
            --l_22;
        }
        for (p_2768->g_7 = 0; (p_2768->g_7 == 0); ++p_2768->g_7)
        { /* block id: 18 */
            uint32_t l_43 = 0x56BF5EE8L;
            VECTOR(int64_t, 2) l_1757 = (VECTOR(int64_t, 2))(0x1C3B6F688DC7B32EL, 1L);
            int32_t ***l_1758 = (void*)0;
            int32_t l_2759[9][1][9] = {{{0x29B765B2L,0x29B765B2L,(-1L),(-1L),0x001F5DC0L,(-1L),(-1L),0x29B765B2L,0x29B765B2L}},{{0x29B765B2L,0x29B765B2L,(-1L),(-1L),0x001F5DC0L,(-1L),(-1L),0x29B765B2L,0x29B765B2L}},{{0x29B765B2L,0x29B765B2L,(-1L),(-1L),0x001F5DC0L,(-1L),(-1L),0x29B765B2L,0x29B765B2L}},{{0x29B765B2L,0x29B765B2L,(-1L),(-1L),0x001F5DC0L,(-1L),(-1L),0x29B765B2L,0x29B765B2L}},{{0x29B765B2L,0x29B765B2L,(-1L),(-1L),0x001F5DC0L,(-1L),(-1L),0x29B765B2L,0x29B765B2L}},{{0x29B765B2L,0x29B765B2L,(-1L),(-1L),0x001F5DC0L,(-1L),(-1L),0x29B765B2L,0x29B765B2L}},{{0x29B765B2L,0x29B765B2L,(-1L),(-1L),0x001F5DC0L,(-1L),(-1L),0x29B765B2L,0x29B765B2L}},{{0x29B765B2L,0x29B765B2L,(-1L),(-1L),0x001F5DC0L,(-1L),(-1L),0x29B765B2L,0x29B765B2L}},{{0x29B765B2L,0x29B765B2L,(-1L),(-1L),0x001F5DC0L,(-1L),(-1L),0x29B765B2L,0x29B765B2L}}};
            int32_t *l_2760[9][3] = {{&l_2759[2][0][2],&l_2759[2][0][2],&p_2768->g_2},{&l_2759[2][0][2],&l_2759[2][0][2],&p_2768->g_2},{&l_2759[2][0][2],&l_2759[2][0][2],&p_2768->g_2},{&l_2759[2][0][2],&l_2759[2][0][2],&p_2768->g_2},{&l_2759[2][0][2],&l_2759[2][0][2],&p_2768->g_2},{&l_2759[2][0][2],&l_2759[2][0][2],&p_2768->g_2},{&l_2759[2][0][2],&l_2759[2][0][2],&p_2768->g_2},{&l_2759[2][0][2],&l_2759[2][0][2],&p_2768->g_2},{&l_2759[2][0][2],&l_2759[2][0][2],&p_2768->g_2}};
            int i, j, k;
            for (l_22 = 0; (l_22 == 24); l_22 = safe_add_func_uint8_t_u_u(l_22, 1))
            { /* block id: 21 */
                int32_t ****l_1759 = &l_1758;
                int32_t l_1768[10][10] = {{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}};
                int64_t *l_1769 = (void*)0;
                int64_t *l_1770 = (void*)0;
                int64_t *l_1771 = (void*)0;
                int64_t *l_1772 = (void*)0;
                int64_t *l_1773[6][8][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
                int32_t *l_2754 = (void*)0;
                int32_t *l_2755 = (void*)0;
                int32_t *l_2756 = (void*)0;
                int32_t *l_2757 = (void*)0;
                int32_t *l_2758[4];
                int i, j, k;
                for (i = 0; i < 4; i++)
                    l_2758[i] = (void*)0;
                l_2759[2][0][2] |= (p_2768->g_19[1][2] , func_29((safe_mul_func_int8_t_s_s((safe_mod_func_int8_t_s_s(((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),int8_t,((VECTOR(int8_t, 2))((((VECTOR(int8_t, 2))((-9L), 1L)) != ((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 2))(func_35(func_37(func_41(l_43, p_2768), func_64(p_2768->g_1309.s1, l_1751, l_1751, (safe_mul_func_uint16_t_u_u((safe_mod_func_int64_t_s_s(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 4))(mad_sat(((VECTOR(int64_t, 2))(p_2768->g_1756.xx)).yyyy, ((VECTOR(int64_t, 8))(safe_clamp_func(VECTOR(int64_t, 8),int64_t,((VECTOR(int64_t, 4))(l_1757.xxyy)).wxxwwwxz, (int64_t)(l_1774.se |= ((&p_2768->g_1261 == ((*l_1759) = l_1758)) && (safe_mul_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((safe_lshift_func_uint8_t_u_u((safe_rshift_func_int8_t_s_u(l_1768[2][1], p_2768->g_1451.s6)), l_1757.x)), p_2768->g_388.x)), 0L)))), (int64_t)0x2370E7266255C857L))).even, ((VECTOR(int64_t, 4))(1L))))).hi && ((VECTOR(int64_t, 2))(3L))))), 0x0E4769F214E0A7E5L, 6L)).x, l_1751)), 0x3292L)), p_2768), l_17, p_2768), p_2768))).yyyxyyyxyyyyyxyy, ((VECTOR(int8_t, 16))(0x19L))))).sa0))), (int8_t)0x32L, (int8_t)l_1774.s2))).lo, l_1768[2][1])), l_17)), p_2768));
                if (l_1774.s3)
                    continue;
            }
            l_2764++;
        }
        if (l_17)
            continue;
    }
    return l_2767;
}


/* ------------------------------------------ */
/* 
 * reads : p_2768->g_1312 p_2768->g_1555 p_2768->g_2707 p_2768->g_2711 p_2768->g_2722 p_2768->g_2733 p_2768->g_93 p_2768->g_1888 p_2768->g_2332
 * writes: p_2768->g_93 p_2768->g_1462 p_2768->g_2332
 */
int32_t  func_29(uint64_t  p_30, struct S0 * p_2768)
{ /* block id: 921 */
    int32_t l_2704 = (-6L);
    uint64_t l_2708 = 0xB3B84144BB64BFC0L;
    VECTOR(int16_t, 8) l_2709 = (VECTOR(int16_t, 8))(4L, (VECTOR(int16_t, 4))(4L, (VECTOR(int16_t, 2))(4L, 0x53B7L), 0x53B7L), 0x53B7L, 4L, 0x53B7L);
    VECTOR(int16_t, 8) l_2710 = (VECTOR(int16_t, 8))(0x5029L, (VECTOR(int16_t, 4))(0x5029L, (VECTOR(int16_t, 2))(0x5029L, (-8L)), (-8L)), (-8L), 0x5029L, (-8L));
    VECTOR(uint64_t, 16) l_2712 = (VECTOR(uint64_t, 16))(7UL, (VECTOR(uint64_t, 4))(7UL, (VECTOR(uint64_t, 2))(7UL, 0x9C75400E58EC5EF9L), 0x9C75400E58EC5EF9L), 0x9C75400E58EC5EF9L, 7UL, 0x9C75400E58EC5EF9L, (VECTOR(uint64_t, 2))(7UL, 0x9C75400E58EC5EF9L), (VECTOR(uint64_t, 2))(7UL, 0x9C75400E58EC5EF9L), 7UL, 0x9C75400E58EC5EF9L, 7UL, 0x9C75400E58EC5EF9L);
    VECTOR(uint64_t, 16) l_2715 = (VECTOR(uint64_t, 16))(6UL, (VECTOR(uint64_t, 4))(6UL, (VECTOR(uint64_t, 2))(6UL, 6UL), 6UL), 6UL, 6UL, 6UL, (VECTOR(uint64_t, 2))(6UL, 6UL), (VECTOR(uint64_t, 2))(6UL, 6UL), 6UL, 6UL, 6UL, 6UL);
    VECTOR(uint64_t, 8) l_2734 = (VECTOR(uint64_t, 8))(0xC700BFA8493EC2C1L, (VECTOR(uint64_t, 4))(0xC700BFA8493EC2C1L, (VECTOR(uint64_t, 2))(0xC700BFA8493EC2C1L, 0x18603646DC15591DL), 0x18603646DC15591DL), 0x18603646DC15591DL, 0xC700BFA8493EC2C1L, 0x18603646DC15591DL);
    VECTOR(uint64_t, 8) l_2737 = (VECTOR(uint64_t, 8))(0xEF73B4389B8D5226L, (VECTOR(uint64_t, 4))(0xEF73B4389B8D5226L, (VECTOR(uint64_t, 2))(0xEF73B4389B8D5226L, 0x44BB8DC60AB3DFF9L), 0x44BB8DC60AB3DFF9L), 0x44BB8DC60AB3DFF9L, 0xEF73B4389B8D5226L, 0x44BB8DC60AB3DFF9L);
    int32_t *l_2738 = &p_2768->g_93;
    int32_t **l_2739[3][3] = {{&p_2768->g_1461[4],&p_2768->g_187[8][2][0],&p_2768->g_1461[4]},{&p_2768->g_1461[4],&p_2768->g_187[8][2][0],&p_2768->g_1461[4]},{&p_2768->g_1461[4],&p_2768->g_187[8][2][0],&p_2768->g_1461[4]}};
    uint64_t *l_2742 = (void*)0;
    uint64_t *l_2743 = (void*)0;
    uint64_t *l_2744[5];
    uint32_t *l_2747 = (void*)0;
    uint8_t l_2748 = 246UL;
    int32_t ****l_2752 = &p_2768->g_2375[0][1];
    int32_t *****l_2751 = &l_2752;
    int16_t l_2753 = 0x5AE5L;
    int i, j;
    for (i = 0; i < 5; i++)
        l_2744[i] = &p_2768->g_144;
    (*p_2768->g_1888) = ((((VECTOR(int64_t, 8))(l_2704, ((safe_sub_func_int16_t_s_s(p_2768->g_1312.z, ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))(0x70C8L, 0x015FL)) && ((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(0x062BL, 9L, p_2768->g_1555, ((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 16))(p_2768->g_2707.sbfa3e1eb98ed592a)).s38, (int16_t)(FAKE_DIVERGE(p_2768->local_0_offset, get_local_id(0), 10) , l_2708)))), 0x16F9L, 1L, 0x6646L)), ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0x62EBL, 6L)), 0x2C84L, 1L)) <= ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 4))(l_2709.s1351)).wxxxwzxyyyxyzxyy || ((VECTOR(int16_t, 4))(0x19C9L, 0x58E5L, 0x3837L, 0x1FD6L)).xzyyzywwxyxxyzzy))).s4582))), 0x3CF4L, ((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 16))(l_2710.s3302304454433531)).hi, ((VECTOR(int16_t, 2))(0x73F1L, 0x5A27L)).xyyyyxyy))).s1, 0x4081L, 0x142BL)))).s28, (int16_t)(4294967295UL && (p_30 & ((VECTOR(uint64_t, 16))(mad_hi(((VECTOR(uint64_t, 4))(p_2768->g_2711.s4772)).zzzxxzwxzyxwyxxw, ((VECTOR(uint64_t, 8))(mad_sat(((VECTOR(uint64_t, 2))(l_2712.sa5)).xyxxyxyy, ((VECTOR(uint64_t, 16))(mad_sat(((VECTOR(uint64_t, 4))(max(((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 2))(min(((VECTOR(uint64_t, 8))(l_2715.s905a7ceb)).s35, ((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 8))(18446744073709551615UL, 18446744073709551608UL, ((VECTOR(uint64_t, 2))(min(((VECTOR(uint64_t, 16))(hadd(((VECTOR(uint64_t, 8))(sub_sat(((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 8))(p_2768->g_2722.yyzzyyww)) * ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 4))(18446744073709551610UL, ((VECTOR(uint64_t, 2))(0x18ABE3E7A9E265D8L, 1UL)), 0UL)) + ((VECTOR(uint64_t, 4))(safe_clamp_func(VECTOR(uint64_t, 4),uint64_t,((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 16))(p_2768->g_2733.s2651566115237344)).s69b8 - ((VECTOR(uint64_t, 16))(rhadd(((VECTOR(uint64_t, 2))(max(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(l_2734.s1522)), l_2710.s6, ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 16))(clz(((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(min(((VECTOR(uint64_t, 8))(l_2737.s35547320)).s64, (uint64_t)(((*l_2738) = l_2734.s6) ^ 0x1277E746L)))), 0xCCCCE17A4D063486L, 0xD63FF8AC0C878AB1L)).zxwzwyzz + ((VECTOR(uint64_t, 8))(0xCE8B3AA4453D9825L))))).s4770640007205646))).sf5 & ((VECTOR(uint64_t, 2))(0x563D4790F96FFBC1L))))), 18446744073709551613UL)).s05, (uint64_t)1UL))).xxxxyxxxyyyxxyyx, ((VECTOR(uint64_t, 16))(18446744073709551615UL))))).sf5e0))).even + ((VECTOR(uint64_t, 2))(18446744073709551607UL))))).yxyx, (uint64_t)(*l_2738), (uint64_t)0xAEE3275A4F47279FL)))))).yyzywzwx + ((VECTOR(uint64_t, 8))(18446744073709551609UL))))).s36 * ((VECTOR(uint64_t, 2))(1UL))))).xyyyyyyy))).s1251207304002705 & ((VECTOR(uint64_t, 16))(0xE5BC86EED0B61CEBL))))) + ((VECTOR(uint64_t, 16))(3UL))))).odd, ((VECTOR(uint64_t, 8))(0x80D2A1AB225E6333L))))).s1242654121644157, ((VECTOR(uint64_t, 16))(18446744073709551607UL))))).sf1, ((VECTOR(uint64_t, 2))(0xA78D5FAE06E52053L))))).even, 0x67AA01C8877BF870L, 0UL, ((VECTOR(uint64_t, 2))(0x9D5BF231FF0E97F0L)), 18446744073709551615UL)).s4366505055266477 + ((VECTOR(uint64_t, 16))(0xDD9D07CDB6678996L))))).s68))) - ((VECTOR(uint64_t, 2))(0x20E83A0C17E8A85FL))))).yyyx, ((VECTOR(uint64_t, 4))(18446744073709551606UL))))).wxzyzxwwzyzyyyzx, ((VECTOR(uint64_t, 16))(0x62D227067EC66DAAL)), ((VECTOR(uint64_t, 16))(18446744073709551610UL))))).hi, ((VECTOR(uint64_t, 8))(0x6B88F5DF11310896L))))).s7232222217020015, ((VECTOR(uint64_t, 16))(0x4507B2B44E5732B3L))))).se)))))))).even)) , 6L), 5L, 0x1A82868D893F47ADL, ((VECTOR(int64_t, 4))(0x406584DC55576FC1L)))).s3 | l_2709.s3) , &l_2704);
    (*l_2738) = ((&p_2768->g_2231[0][6][2] != &p_2768->g_2231[7][2][1]) == (p_30 | ((-3L) ^ (((((*l_2738) , 1L) > (((VECTOR(int16_t, 16))(rotate(((VECTOR(int16_t, 8))((safe_sub_func_uint32_t_u_u(((p_2768->g_2332.s1--) , (++l_2748)), (((~((void*)0 != l_2751)) ^ p_30) > 0x545FL))), ((VECTOR(int16_t, 2))(1L)), 5L, 0x4690L, 0L, 0x74B3L, 0x5BBBL)).s4543140307146656, ((VECTOR(int16_t, 16))(6L))))).se >= 0x6A67L)) | p_30) & 0x7288L))));
    return l_2753;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_2768->g_93
 */
VECTOR(int8_t, 2)  func_35(int32_t * p_36, struct S0 * p_2768)
{ /* block id: 917 */
    uint32_t l_2698 = 1UL;
    int32_t *l_2702 = &p_2768->g_93;
    VECTOR(int8_t, 2) l_2703 = (VECTOR(int8_t, 2))(0x1EL, 0L);
    int i;
    l_2698--;
    (*l_2702) = l_2698;
    return l_2703.xx;
}


/* ------------------------------------------ */
/* 
 * reads : p_2768->g_309 p_2768->g_1512 p_2768->g_93 p_2768->g_103 p_2768->g_844 p_2768->g_1687 p_2768->g_1688 p_2768->g_1092 p_2768->g_1123 p_2768->g_1190 p_2768->g_422 p_2768->g_12 p_2768->g_1689 p_2768->g_1690 p_2768->g_1691 p_2768->g_141 p_2768->g_1557 p_2768->g_1555 p_2768->g_1888 p_2768->g_1462 p_2768->g_411 p_2768->g_1956 p_2768->g_1968 p_2768->g_1977 p_2768->g_1979 p_2768->g_1986 p_2768->g_1575 p_2768->g_207 p_2768->g_526 p_2768->g_507 p_2768->g_1374 p_2768->g_1375 p_2768->g_1958 p_2768->g_1287 p_2768->g_2001 p_2768->g_2002 p_2768->g_2006 p_2768->g_2012 p_2768->g_179 p_2768->g_2026 p_2768->g_2029 p_2768->g_1134 p_2768->g_275 p_2768->g_2040 p_2768->g_2046 p_2768->g_505 p_2768->g_506 p_2768->g_2050 p_2768->g_831 p_2768->g_884 p_2768->g_2105 p_2768->g_2107 p_2768->g_2114 p_2768->g_2115 p_2768->g_2116 p_2768->g_2120 p_2768->g_2121 p_2768->g_1333 p_2768->g_2128 p_2768->g_845 p_2768->g_273 p_2768->g_1314 p_2768->g_7 p_2768->g_724 p_2768->g_2164 p_2768->g_1521 p_2768->g_1262 p_2768->g_1263 p_2768->g_2199 p_2768->g_1461 p_2768->g_2207 p_2768->g_1261 p_2768->g_2231 p_2768->g_1302 p_2768->g_92 p_2768->g_246 p_2768->g_277 p_2768->g_484 p_2768->g_151 p_2768->g_714 p_2768->g_871 p_2768->g_1724 p_2768->g_393 p_2768->g_2520 p_2768->g_742 p_2768->g_1488 p_2768->g_597 p_2768->g_2678 p_2768->g_276 p_2768->g_2395 p_2768->g_2464
 * writes: p_2768->g_1512 p_2768->g_93 p_2768->g_103 p_2768->g_12 p_2768->g_1461 p_2768->g_1302 p_2768->g_141 p_2768->g_1557 p_2768->g_1555 p_2768->g_411 p_2768->g_92 p_2768->g_187 p_2768->g_1287 p_2768->g_1462 p_2768->g_493 p_2768->g_140 p_2768->g_1520 p_2768->g_845 p_2768->g_2192 p_2768->g_871 p_2768->g_2199 p_2768->g_1517 p_2768->g_2231 p_2768->g_1307 p_2768->g_246 p_2768->g_2375 p_2768->g_1093 p_2768->g_714 p_2768->g_884 p_2768->g_1488
 */
int32_t * func_37(int32_t * p_38, int32_t * p_39, int32_t  p_40, struct S0 * p_2768)
{ /* block id: 638 */
    uint16_t l_1777 = 65526UL;
    VECTOR(uint16_t, 16) l_1786 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0xCF7AL), 0xCF7AL), 0xCF7AL, 1UL, 0xCF7AL, (VECTOR(uint16_t, 2))(1UL, 0xCF7AL), (VECTOR(uint16_t, 2))(1UL, 0xCF7AL), 1UL, 0xCF7AL, 1UL, 0xCF7AL);
    VECTOR(uint16_t, 8) l_1787 = (VECTOR(uint16_t, 8))(0x6FFEL, (VECTOR(uint16_t, 4))(0x6FFEL, (VECTOR(uint16_t, 2))(0x6FFEL, 0UL), 0UL), 0UL, 0x6FFEL, 0UL);
    VECTOR(uint16_t, 8) l_1792 = (VECTOR(uint16_t, 8))(0x25E2L, (VECTOR(uint16_t, 4))(0x25E2L, (VECTOR(uint16_t, 2))(0x25E2L, 1UL), 1UL), 1UL, 0x25E2L, 1UL);
    int8_t **l_1799 = &p_2768->g_448;
    int8_t *l_1800 = (void*)0;
    int32_t l_1802 = 0x0BE7CB55L;
    VECTOR(int32_t, 8) l_1825 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x7102725FL), 0x7102725FL), 0x7102725FL, 1L, 0x7102725FL);
    uint16_t ****l_1859[6][3][7] = {{{(void*)0,&p_2768->g_193[4],&p_2768->g_193[0],(void*)0,&p_2768->g_193[0],&p_2768->g_193[0],&p_2768->g_193[0]},{(void*)0,&p_2768->g_193[4],&p_2768->g_193[0],(void*)0,&p_2768->g_193[0],&p_2768->g_193[0],&p_2768->g_193[0]},{(void*)0,&p_2768->g_193[4],&p_2768->g_193[0],(void*)0,&p_2768->g_193[0],&p_2768->g_193[0],&p_2768->g_193[0]}},{{(void*)0,&p_2768->g_193[4],&p_2768->g_193[0],(void*)0,&p_2768->g_193[0],&p_2768->g_193[0],&p_2768->g_193[0]},{(void*)0,&p_2768->g_193[4],&p_2768->g_193[0],(void*)0,&p_2768->g_193[0],&p_2768->g_193[0],&p_2768->g_193[0]},{(void*)0,&p_2768->g_193[4],&p_2768->g_193[0],(void*)0,&p_2768->g_193[0],&p_2768->g_193[0],&p_2768->g_193[0]}},{{(void*)0,&p_2768->g_193[4],&p_2768->g_193[0],(void*)0,&p_2768->g_193[0],&p_2768->g_193[0],&p_2768->g_193[0]},{(void*)0,&p_2768->g_193[4],&p_2768->g_193[0],(void*)0,&p_2768->g_193[0],&p_2768->g_193[0],&p_2768->g_193[0]},{(void*)0,&p_2768->g_193[4],&p_2768->g_193[0],(void*)0,&p_2768->g_193[0],&p_2768->g_193[0],&p_2768->g_193[0]}},{{(void*)0,&p_2768->g_193[4],&p_2768->g_193[0],(void*)0,&p_2768->g_193[0],&p_2768->g_193[0],&p_2768->g_193[0]},{(void*)0,&p_2768->g_193[4],&p_2768->g_193[0],(void*)0,&p_2768->g_193[0],&p_2768->g_193[0],&p_2768->g_193[0]},{(void*)0,&p_2768->g_193[4],&p_2768->g_193[0],(void*)0,&p_2768->g_193[0],&p_2768->g_193[0],&p_2768->g_193[0]}},{{(void*)0,&p_2768->g_193[4],&p_2768->g_193[0],(void*)0,&p_2768->g_193[0],&p_2768->g_193[0],&p_2768->g_193[0]},{(void*)0,&p_2768->g_193[4],&p_2768->g_193[0],(void*)0,&p_2768->g_193[0],&p_2768->g_193[0],&p_2768->g_193[0]},{(void*)0,&p_2768->g_193[4],&p_2768->g_193[0],(void*)0,&p_2768->g_193[0],&p_2768->g_193[0],&p_2768->g_193[0]}},{{(void*)0,&p_2768->g_193[4],&p_2768->g_193[0],(void*)0,&p_2768->g_193[0],&p_2768->g_193[0],&p_2768->g_193[0]},{(void*)0,&p_2768->g_193[4],&p_2768->g_193[0],(void*)0,&p_2768->g_193[0],&p_2768->g_193[0],&p_2768->g_193[0]},{(void*)0,&p_2768->g_193[4],&p_2768->g_193[0],(void*)0,&p_2768->g_193[0],&p_2768->g_193[0],&p_2768->g_193[0]}}};
    VECTOR(uint32_t, 16) l_1866 = (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0x36CB6C77L), 0x36CB6C77L), 0x36CB6C77L, 0UL, 0x36CB6C77L, (VECTOR(uint32_t, 2))(0UL, 0x36CB6C77L), (VECTOR(uint32_t, 2))(0UL, 0x36CB6C77L), 0UL, 0x36CB6C77L, 0UL, 0x36CB6C77L);
    VECTOR(uint64_t, 2) l_1867 = (VECTOR(uint64_t, 2))(0x16A2EB4F23B0FC7DL, 0x34134AB348A6A7DBL);
    VECTOR(uint8_t, 16) l_1870 = (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0UL), 0UL), 0UL, 0UL, 0UL, (VECTOR(uint8_t, 2))(0UL, 0UL), (VECTOR(uint8_t, 2))(0UL, 0UL), 0UL, 0UL, 0UL, 0UL);
    VECTOR(uint16_t, 4) l_1939 = (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0xD145L), 0xD145L);
    VECTOR(uint16_t, 2) l_1940 = (VECTOR(uint16_t, 2))(0xD465L, 65535UL);
    VECTOR(int8_t, 4) l_1976 = (VECTOR(int8_t, 4))(6L, (VECTOR(int8_t, 2))(6L, 0L), 0L);
    VECTOR(int8_t, 8) l_1980 = (VECTOR(int8_t, 8))(0x2BL, (VECTOR(int8_t, 4))(0x2BL, (VECTOR(int8_t, 2))(0x2BL, 0x7BL), 0x7BL), 0x7BL, 0x2BL, 0x7BL);
    VECTOR(int16_t, 4) l_1985 = (VECTOR(int16_t, 4))(0x1D29L, (VECTOR(int16_t, 2))(0x1D29L, 0x5BE3L), 0x5BE3L);
    VECTOR(int16_t, 4) l_1987 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 1L), 1L);
    uint16_t l_2047 = 0x13F6L;
    int64_t *l_2048[4] = {&p_2768->g_97,&p_2768->g_97,&p_2768->g_97,&p_2768->g_97};
    uint32_t **l_2059 = &p_2768->g_273;
    int64_t ***l_2079 = (void*)0;
    int32_t *l_2088 = &p_2768->g_1287;
    VECTOR(int32_t, 2) l_2092 = (VECTOR(int32_t, 2))(0x309BDF26L, 0x374C3874L);
    VECTOR(uint8_t, 16) l_2106 = (VECTOR(uint8_t, 16))(0xF5L, (VECTOR(uint8_t, 4))(0xF5L, (VECTOR(uint8_t, 2))(0xF5L, 0x77L), 0x77L), 0x77L, 0xF5L, 0x77L, (VECTOR(uint8_t, 2))(0xF5L, 0x77L), (VECTOR(uint8_t, 2))(0xF5L, 0x77L), 0xF5L, 0x77L, 0xF5L, 0x77L);
    VECTOR(uint64_t, 2) l_2157 = (VECTOR(uint64_t, 2))(0x75DD34A5A23DADABL, 5UL);
    VECTOR(int32_t, 16) l_2165 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x24F3868FL), 0x24F3868FL), 0x24F3868FL, 0L, 0x24F3868FL, (VECTOR(int32_t, 2))(0L, 0x24F3868FL), (VECTOR(int32_t, 2))(0L, 0x24F3868FL), 0L, 0x24F3868FL, 0L, 0x24F3868FL);
    VECTOR(uint16_t, 4) l_2180 = (VECTOR(uint16_t, 4))(7UL, (VECTOR(uint16_t, 2))(7UL, 0x0D4EL), 0x0D4EL);
    uint16_t ******l_2193 = (void*)0;
    uint8_t l_2202 = 0xDBL;
    VECTOR(uint16_t, 2) l_2208 = (VECTOR(uint16_t, 2))(0UL, 65535UL);
    uint64_t l_2221 = 0xAB1131F95F5EC73FL;
    uint64_t l_2264 = 0x59A44385D674F0B2L;
    VECTOR(int16_t, 16) l_2283 = (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L), (VECTOR(int16_t, 2))(0L, (-1L)), (VECTOR(int16_t, 2))(0L, (-1L)), 0L, (-1L), 0L, (-1L));
    VECTOR(uint64_t, 4) l_2322 = (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0xC278D69824E34744L), 0xC278D69824E34744L);
    int32_t ****l_2345 = (void*)0;
    uint64_t l_2361 = 0UL;
    int32_t ***l_2401 = &p_2768->g_2390[5][0][2];
    int32_t ****l_2400 = &l_2401;
    int32_t *l_2404 = &p_2768->g_7;
    int8_t l_2438 = 0x64L;
    VECTOR(uint8_t, 16) l_2476 = (VECTOR(uint8_t, 16))(0x64L, (VECTOR(uint8_t, 4))(0x64L, (VECTOR(uint8_t, 2))(0x64L, 0x8FL), 0x8FL), 0x8FL, 0x64L, 0x8FL, (VECTOR(uint8_t, 2))(0x64L, 0x8FL), (VECTOR(uint8_t, 2))(0x64L, 0x8FL), 0x64L, 0x8FL, 0x64L, 0x8FL);
    VECTOR(uint8_t, 2) l_2502 = (VECTOR(uint8_t, 2))(1UL, 0x22L);
    VECTOR(int8_t, 8) l_2508 = (VECTOR(int8_t, 8))(0x60L, (VECTOR(int8_t, 4))(0x60L, (VECTOR(int8_t, 2))(0x60L, 0x0AL), 0x0AL), 0x0AL, 0x60L, 0x0AL);
    VECTOR(int8_t, 4) l_2518 = (VECTOR(int8_t, 4))(0x23L, (VECTOR(int8_t, 2))(0x23L, 0x61L), 0x61L);
    VECTOR(int16_t, 4) l_2528 = (VECTOR(int16_t, 4))(2L, (VECTOR(int16_t, 2))(2L, 0x2C1CL), 0x2C1CL);
    VECTOR(int8_t, 2) l_2535 = (VECTOR(int8_t, 2))(0x43L, 8L);
    VECTOR(int8_t, 2) l_2537 = (VECTOR(int8_t, 2))((-6L), 0x6FL);
    VECTOR(int8_t, 16) l_2539 = (VECTOR(int8_t, 16))(0x2FL, (VECTOR(int8_t, 4))(0x2FL, (VECTOR(int8_t, 2))(0x2FL, (-3L)), (-3L)), (-3L), 0x2FL, (-3L), (VECTOR(int8_t, 2))(0x2FL, (-3L)), (VECTOR(int8_t, 2))(0x2FL, (-3L)), 0x2FL, (-3L), 0x2FL, (-3L));
    int64_t l_2542 = (-1L);
    uint8_t l_2543 = 0x50L;
    int32_t **l_2545 = (void*)0;
    uint32_t ***l_2616 = &p_2768->g_2199;
    int32_t *l_2622[9] = {&p_2768->g_1287,(void*)0,&p_2768->g_1287,&p_2768->g_1287,(void*)0,&p_2768->g_1287,&p_2768->g_1287,(void*)0,&p_2768->g_1287};
    VECTOR(uint64_t, 16) l_2629 = (VECTOR(uint64_t, 16))(0x3E1CD8B0A8F47788L, (VECTOR(uint64_t, 4))(0x3E1CD8B0A8F47788L, (VECTOR(uint64_t, 2))(0x3E1CD8B0A8F47788L, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0x3E1CD8B0A8F47788L, 18446744073709551615UL, (VECTOR(uint64_t, 2))(0x3E1CD8B0A8F47788L, 18446744073709551615UL), (VECTOR(uint64_t, 2))(0x3E1CD8B0A8F47788L, 18446744073709551615UL), 0x3E1CD8B0A8F47788L, 18446744073709551615UL, 0x3E1CD8B0A8F47788L, 18446744073709551615UL);
    VECTOR(uint32_t, 2) l_2646 = (VECTOR(uint32_t, 2))(0UL, 4294967295UL);
    VECTOR(uint32_t, 8) l_2654 = (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL);
    VECTOR(int16_t, 8) l_2679 = (VECTOR(int16_t, 8))(9L, (VECTOR(int16_t, 4))(9L, (VECTOR(int16_t, 2))(9L, 0x3CF1L), 0x3CF1L), 0x3CF1L, 9L, 0x3CF1L);
    VECTOR(int16_t, 4) l_2680 = (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x28CDL), 0x28CDL);
    int32_t ****l_2685 = &p_2768->g_2375[0][0];
    int32_t *****l_2686 = &l_2685;
    VECTOR(uint8_t, 8) l_2693 = (VECTOR(uint8_t, 8))(0x90L, (VECTOR(uint8_t, 4))(0x90L, (VECTOR(uint8_t, 2))(0x90L, 0xF8L), 0xF8L), 0xF8L, 0x90L, 0xF8L);
    int32_t ****l_2694 = (void*)0;
    uint32_t l_2695 = 4UL;
    int32_t l_2696 = 0x117DF219L;
    int32_t *l_2697 = (void*)0;
    int i, j, k;
    if (((p_2768->g_1512.s5 &= (p_2768->g_309.sb > ((safe_div_func_int64_t_s_s(l_1777, (safe_sub_func_uint8_t_u_u((safe_mod_func_uint8_t_u_u(0x83L, (safe_div_func_int16_t_s_s(p_40, ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 2))(l_1786.s0f)).yxxyyxxyxxyyyxxy + ((VECTOR(uint16_t, 16))(hadd(((VECTOR(uint16_t, 4))(l_1787.s1626)).wyxxywwwwyxxyyxy, ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 16))(rotate(((VECTOR(uint16_t, 16))(l_1792.s1426345132244034)), ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 8))(0x6B7EL, ((VECTOR(uint16_t, 16))(min(((VECTOR(uint16_t, 8))(4UL, (safe_lshift_func_int8_t_s_u(0x46L, ((l_1799 == &p_2768->g_448) <= ((void*)0 == p_39)))), GROUP_DIVERGE(2, 1), p_40, ((VECTOR(uint16_t, 2))(1UL)), 0x855DL, 0x1A12L)).s7112225425677444, ((VECTOR(uint16_t, 16))(0xF40DL))))).se, l_1792.s5, 0xED8AL, 65529UL, 0xE8AFL, 65535UL, 0x78BEL)) + ((VECTOR(uint16_t, 8))(0xBCDCL))))).lo + ((VECTOR(uint16_t, 4))(65527UL))))).wywzwxzyxyyywzyw))).s53f0 ^ ((VECTOR(uint16_t, 4))(65535UL))))).zwzyxxzyyxxxwzwy >> ((VECTOR(uint16_t, 16))(0UL))))).s07 << ((VECTOR(uint16_t, 2))(1UL))))).xyyyyyxyxxyxxxyx)))))).s84e9 ^ ((VECTOR(uint16_t, 4))(0UL))))).y)))), 0x68L)))) , 1L))) & p_40))
    { /* block id: 640 */
        VECTOR(int16_t, 2) l_1801 = (VECTOR(int16_t, 2))(1L, 0x7A4DL);
        uint16_t ***l_1815 = &p_2768->g_194[5][3];
        VECTOR(int64_t, 16) l_1817 = (VECTOR(int64_t, 16))(9L, (VECTOR(int64_t, 4))(9L, (VECTOR(int64_t, 2))(9L, 0x30838230FADCD0BBL), 0x30838230FADCD0BBL), 0x30838230FADCD0BBL, 9L, 0x30838230FADCD0BBL, (VECTOR(int64_t, 2))(9L, 0x30838230FADCD0BBL), (VECTOR(int64_t, 2))(9L, 0x30838230FADCD0BBL), 9L, 0x30838230FADCD0BBL, 9L, 0x30838230FADCD0BBL);
        int32_t l_1826[9][3] = {{1L,1L,0x05C26318L},{1L,1L,0x05C26318L},{1L,1L,0x05C26318L},{1L,1L,0x05C26318L},{1L,1L,0x05C26318L},{1L,1L,0x05C26318L},{1L,1L,0x05C26318L},{1L,1L,0x05C26318L},{1L,1L,0x05C26318L}};
        int32_t l_1831 = 0x21845518L;
        int32_t l_1832 = 0x27B0CDB7L;
        int i, j;
        l_1802 = (p_40 |= l_1801.y);
        for (p_2768->g_93 = 0; (p_2768->g_93 == (-8)); p_2768->g_93 = safe_sub_func_uint16_t_u_u(p_2768->g_93, 6))
        { /* block id: 645 */
            if (p_40)
                break;
        }
        for (p_2768->g_103 = 0; (p_2768->g_103 != 37); p_2768->g_103++)
        { /* block id: 650 */
            int32_t *l_1807[1];
            uint64_t l_1808 = 0x8E424F5989333FCDL;
            VECTOR(int64_t, 2) l_1818 = (VECTOR(int64_t, 2))(0x5D0AF243430D16B1L, 0x2BAF1258D5DCE314L);
            uint64_t **l_1821 = &p_2768->g_1190;
            uint64_t ***l_1822 = &l_1821;
            int i;
            for (i = 0; i < 1; i++)
                l_1807[i] = (void*)0;
            if (l_1801.y)
                break;
            --l_1808;
            l_1832 &= (safe_lshift_func_int16_t_s_s((safe_add_func_uint16_t_u_u(((l_1815 == (((FAKE_DIVERGE(p_2768->group_0_offset, get_group_id(0), 10) , ((VECTOR(int16_t, 8))(p_2768->g_1816.s12173147)).s5) || (l_1802 &= (p_40 || p_2768->g_844.sb))) , (*p_2768->g_1687))) & ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 2))(l_1817.s8c)) & ((VECTOR(int64_t, 16))(sub_sat(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(hadd(((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),VECTOR(int64_t, 2),((VECTOR(int64_t, 8))(mad_sat(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 2))(l_1818.yy)).yxyxyyyy && ((VECTOR(int64_t, 4))(upsample(((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 4))(0x2B85DA36L, 0x0BCE42B7L, 3L, 0x039E3DCDL)).zzwzzxwwwxyyzxyz, (int32_t)(safe_mul_func_int16_t_s_s((((VECTOR(uint32_t, 2))(4294967295UL, 7UL)).odd && (2UL && (((*l_1822) = l_1821) != ((safe_add_func_int16_t_s_s((~(p_2768->g_484.s9 == (((((l_1825.s0 = (l_1826[0][0] = ((VECTOR(int32_t, 16))(l_1825.s7421350123106066)).s8)) | (((VECTOR(uint64_t, 2))(safe_clamp_func(VECTOR(uint64_t, 2),VECTOR(uint64_t, 2),((VECTOR(uint64_t, 16))(abs_diff(((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 8))(0xA43A0884B3820CEAL, 0xC062ACBDBD75E75CL, (((l_1831 = p_40) & 0x0BFC1F75L) > GROUP_DIVERGE(2, 1)), 0xE5026C6EB9C29305L, GROUP_DIVERGE(0, 1), ((VECTOR(uint64_t, 2))(0x92BCF94D503745B3L)), 3UL)).even + ((VECTOR(uint64_t, 4))(0xE626CCDBE3E01D69L))))).wwzywxzzxxyyzywy + ((VECTOR(uint64_t, 16))(0xAF7E88CCECE4D99EL))))), ((VECTOR(uint64_t, 16))(0xCBC070C9ECBAF703L))))).sc2, ((VECTOR(uint64_t, 2))(0x657CE6F80BECAC80L)), ((VECTOR(uint64_t, 2))(1UL))))).hi < p_40)) ^ p_40) ^ p_40) != p_40))), p_40)) , &p_2768->g_1190)))), l_1817.s0))))).s432c, ((VECTOR(uint32_t, 4))(0xFC2EA9A8L))))).yyxyzxzx))), ((VECTOR(int64_t, 8))(0x1C157A62254FA022L)), ((VECTOR(int64_t, 8))(0x3ADE560F23907462L))))).s26, ((VECTOR(int64_t, 2))(1L)), ((VECTOR(int64_t, 2))((-2L)))))).xxyxxxxx, ((VECTOR(int64_t, 8))(0x67CD90A56F7EC73EL))))).s5, 0x57654CDD86674992L, 0x31249701AE271801L, 6L)).xzzwyzwzxzyxxwzx, ((VECTOR(int64_t, 16))(0x5A6B9E0243BE30DEL))))).saa))).hi), 6UL)), l_1801.x));
            for (l_1831 = (-17); (l_1831 == 2); l_1831 = safe_add_func_uint64_t_u_u(l_1831, 8))
            { /* block id: 661 */
                VECTOR(uint8_t, 8) l_1837 = (VECTOR(uint8_t, 8))(0x5EL, (VECTOR(uint8_t, 4))(0x5EL, (VECTOR(uint8_t, 2))(0x5EL, 0x50L), 0x50L), 0x50L, 0x5EL, 0x50L);
                int32_t l_1841 = 0x0598E06BL;
                int i;
                p_2768->g_1461[4] = func_53(&l_1802, &p_2768->g_12, l_1792.s0, ((l_1832 = (((((safe_mod_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(l_1837.s6513)).z, (safe_unary_minus_func_int8_t_s((-2L))))) , (+(l_1841 &= (safe_div_func_uint32_t_u_u(0UL, (-1L)))))) != (safe_sub_func_uint16_t_u_u((safe_add_func_uint32_t_u_u((safe_sub_func_uint64_t_u_u(((l_1837.s3 || 0x04DE0A3DL) == ((VECTOR(uint8_t, 4))((safe_rshift_func_uint16_t_u_u(((&p_2768->g_1625[0] != (void*)0) , l_1817.s3), (*p_2768->g_1690))), 0x62L, 1UL, 0xA2L)).w), 18446744073709551615UL)), p_2768->g_1092.y)), l_1837.s3))) | l_1837.s2) > 0x2B410F99FADDA2EBL)) & p_2768->g_1123.s3), (*p_2768->g_1190), p_2768);
            }
        }
    }
    else
    { /* block id: 667 */
        uint16_t ****l_1858 = &p_2768->g_193[0];
        uint8_t *l_1860 = &p_2768->g_1302;
        int32_t l_1861 = 4L;
        int32_t *l_1871[8][4][2] = {{{&p_2768->g_328,&p_2768->g_328},{&p_2768->g_328,&p_2768->g_328},{&p_2768->g_328,&p_2768->g_328},{&p_2768->g_328,&p_2768->g_328}},{{&p_2768->g_328,&p_2768->g_328},{&p_2768->g_328,&p_2768->g_328},{&p_2768->g_328,&p_2768->g_328},{&p_2768->g_328,&p_2768->g_328}},{{&p_2768->g_328,&p_2768->g_328},{&p_2768->g_328,&p_2768->g_328},{&p_2768->g_328,&p_2768->g_328},{&p_2768->g_328,&p_2768->g_328}},{{&p_2768->g_328,&p_2768->g_328},{&p_2768->g_328,&p_2768->g_328},{&p_2768->g_328,&p_2768->g_328},{&p_2768->g_328,&p_2768->g_328}},{{&p_2768->g_328,&p_2768->g_328},{&p_2768->g_328,&p_2768->g_328},{&p_2768->g_328,&p_2768->g_328},{&p_2768->g_328,&p_2768->g_328}},{{&p_2768->g_328,&p_2768->g_328},{&p_2768->g_328,&p_2768->g_328},{&p_2768->g_328,&p_2768->g_328},{&p_2768->g_328,&p_2768->g_328}},{{&p_2768->g_328,&p_2768->g_328},{&p_2768->g_328,&p_2768->g_328},{&p_2768->g_328,&p_2768->g_328},{&p_2768->g_328,&p_2768->g_328}},{{&p_2768->g_328,&p_2768->g_328},{&p_2768->g_328,&p_2768->g_328},{&p_2768->g_328,&p_2768->g_328},{&p_2768->g_328,&p_2768->g_328}}};
        uint8_t *l_1872 = &p_2768->g_141[4];
        VECTOR(uint64_t, 4) l_1913 = (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 2UL), 2UL);
        uint32_t l_1953 = 0xFFF11203L;
        int32_t **l_1971[8][9] = {{&p_2768->g_1461[5],&p_2768->g_1461[5],&p_2768->g_187[8][2][3],&p_2768->g_1462[6],&p_2768->g_187[2][2][2],&p_2768->g_1462[6],&p_2768->g_187[8][2][3],&p_2768->g_1461[5],&p_2768->g_1461[5]},{&p_2768->g_1461[5],&p_2768->g_1461[5],&p_2768->g_187[8][2][3],&p_2768->g_1462[6],&p_2768->g_187[2][2][2],&p_2768->g_1462[6],&p_2768->g_187[8][2][3],&p_2768->g_1461[5],&p_2768->g_1461[5]},{&p_2768->g_1461[5],&p_2768->g_1461[5],&p_2768->g_187[8][2][3],&p_2768->g_1462[6],&p_2768->g_187[2][2][2],&p_2768->g_1462[6],&p_2768->g_187[8][2][3],&p_2768->g_1461[5],&p_2768->g_1461[5]},{&p_2768->g_1461[5],&p_2768->g_1461[5],&p_2768->g_187[8][2][3],&p_2768->g_1462[6],&p_2768->g_187[2][2][2],&p_2768->g_1462[6],&p_2768->g_187[8][2][3],&p_2768->g_1461[5],&p_2768->g_1461[5]},{&p_2768->g_1461[5],&p_2768->g_1461[5],&p_2768->g_187[8][2][3],&p_2768->g_1462[6],&p_2768->g_187[2][2][2],&p_2768->g_1462[6],&p_2768->g_187[8][2][3],&p_2768->g_1461[5],&p_2768->g_1461[5]},{&p_2768->g_1461[5],&p_2768->g_1461[5],&p_2768->g_187[8][2][3],&p_2768->g_1462[6],&p_2768->g_187[2][2][2],&p_2768->g_1462[6],&p_2768->g_187[8][2][3],&p_2768->g_1461[5],&p_2768->g_1461[5]},{&p_2768->g_1461[5],&p_2768->g_1461[5],&p_2768->g_187[8][2][3],&p_2768->g_1462[6],&p_2768->g_187[2][2][2],&p_2768->g_1462[6],&p_2768->g_187[8][2][3],&p_2768->g_1461[5],&p_2768->g_1461[5]},{&p_2768->g_1461[5],&p_2768->g_1461[5],&p_2768->g_187[8][2][3],&p_2768->g_1462[6],&p_2768->g_187[2][2][2],&p_2768->g_1462[6],&p_2768->g_187[8][2][3],&p_2768->g_1461[5],&p_2768->g_1461[5]}};
        int32_t ***l_1970 = &l_1971[5][7];
        VECTOR(int8_t, 4) l_1972 = (VECTOR(int8_t, 4))(0x48L, (VECTOR(int8_t, 2))(0x48L, (-1L)), (-1L));
        VECTOR(int8_t, 2) l_1973 = (VECTOR(int8_t, 2))((-1L), 0L);
        VECTOR(int8_t, 2) l_1974 = (VECTOR(int8_t, 2))(0L, 0x1EL);
        VECTOR(int8_t, 4) l_1975 = (VECTOR(int8_t, 4))(0x77L, (VECTOR(int8_t, 2))(0x77L, 0L), 0L);
        VECTOR(int8_t, 8) l_1978 = (VECTOR(int8_t, 8))(0x39L, (VECTOR(int8_t, 4))(0x39L, (VECTOR(int8_t, 2))(0x39L, 1L), 1L), 1L, 0x39L, 1L);
        VECTOR(int8_t, 4) l_1981 = (VECTOR(int8_t, 4))(2L, (VECTOR(int8_t, 2))(2L, 5L), 5L);
        VECTOR(int16_t, 4) l_1984 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, (-6L)), (-6L));
        VECTOR(int32_t, 16) l_1994 = (VECTOR(int32_t, 16))(0x26C140CBL, (VECTOR(int32_t, 4))(0x26C140CBL, (VECTOR(int32_t, 2))(0x26C140CBL, (-10L)), (-10L)), (-10L), 0x26C140CBL, (-10L), (VECTOR(int32_t, 2))(0x26C140CBL, (-10L)), (VECTOR(int32_t, 2))(0x26C140CBL, (-10L)), 0x26C140CBL, (-10L), 0x26C140CBL, (-10L));
        int16_t l_2030 = 0x5B44L;
        VECTOR(uint16_t, 2) l_2041 = (VECTOR(uint16_t, 2))(1UL, 0UL);
        uint32_t **l_2060 = &p_2768->g_1623;
        VECTOR(int8_t, 8) l_2068 = (VECTOR(int8_t, 8))(0x3DL, (VECTOR(int8_t, 4))(0x3DL, (VECTOR(int8_t, 2))(0x3DL, (-1L)), (-1L)), (-1L), 0x3DL, (-1L));
        int32_t l_2077[7] = {(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L)};
        VECTOR(uint64_t, 4) l_2156 = (VECTOR(uint64_t, 4))(18446744073709551611UL, (VECTOR(uint64_t, 2))(18446744073709551611UL, 0xBC053A1C9B229A55L), 0xBC053A1C9B229A55L);
        int64_t *l_2172[5][3];
        int16_t l_2224 = 0x1F22L;
        int8_t l_2229 = 0L;
        uint8_t l_2244 = 0x78L;
        uint32_t l_2255 = 0x0D3E904BL;
        VECTOR(uint16_t, 8) l_2269 = (VECTOR(uint16_t, 8))(8UL, (VECTOR(uint16_t, 4))(8UL, (VECTOR(uint16_t, 2))(8UL, 1UL), 1UL), 1UL, 8UL, 1UL);
        VECTOR(int8_t, 4) l_2287 = (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x1BL), 0x1BL);
        VECTOR(uint8_t, 4) l_2289 = (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x67L), 0x67L);
        VECTOR(uint64_t, 16) l_2326 = (VECTOR(uint64_t, 16))(0x1AE78F9716D65FEBL, (VECTOR(uint64_t, 4))(0x1AE78F9716D65FEBL, (VECTOR(uint64_t, 2))(0x1AE78F9716D65FEBL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0x1AE78F9716D65FEBL, 18446744073709551615UL, (VECTOR(uint64_t, 2))(0x1AE78F9716D65FEBL, 18446744073709551615UL), (VECTOR(uint64_t, 2))(0x1AE78F9716D65FEBL, 18446744073709551615UL), 0x1AE78F9716D65FEBL, 18446744073709551615UL, 0x1AE78F9716D65FEBL, 18446744073709551615UL);
        VECTOR(uint64_t, 2) l_2329 = (VECTOR(uint64_t, 2))(0x71406B55E71F132BL, 0x7C4143013B3E9F24L);
        VECTOR(uint64_t, 2) l_2330 = (VECTOR(uint64_t, 2))(1UL, 0xA0A445DCA72D9FB4L);
        VECTOR(int16_t, 16) l_2386 = (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L), (VECTOR(int16_t, 2))((-1L), (-1L)), (VECTOR(int16_t, 2))((-1L), (-1L)), (-1L), (-1L), (-1L), (-1L));
        uint32_t l_2396[6];
        int32_t *l_2441 = &p_2768->g_1287;
        uint64_t **l_2461 = &p_2768->g_1749;
        VECTOR(uint64_t, 16) l_2486 = (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x8B38DC8D4B0841B3L), 0x8B38DC8D4B0841B3L), 0x8B38DC8D4B0841B3L, 1UL, 0x8B38DC8D4B0841B3L, (VECTOR(uint64_t, 2))(1UL, 0x8B38DC8D4B0841B3L), (VECTOR(uint64_t, 2))(1UL, 0x8B38DC8D4B0841B3L), 1UL, 0x8B38DC8D4B0841B3L, 1UL, 0x8B38DC8D4B0841B3L);
        VECTOR(uint8_t, 8) l_2496 = (VECTOR(uint8_t, 8))(0xE6L, (VECTOR(uint8_t, 4))(0xE6L, (VECTOR(uint8_t, 2))(0xE6L, 7UL), 7UL), 7UL, 0xE6L, 7UL);
        int32_t l_2523 = 0x10F35CB1L;
        VECTOR(int16_t, 16) l_2526 = (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), (-10L)), (-10L)), (-10L), (-1L), (-10L), (VECTOR(int16_t, 2))((-1L), (-10L)), (VECTOR(int16_t, 2))((-1L), (-10L)), (-1L), (-10L), (-1L), (-10L));
        VECTOR(int8_t, 2) l_2536 = (VECTOR(int8_t, 2))((-3L), 1L);
        VECTOR(int64_t, 4) l_2544 = (VECTOR(int64_t, 4))(0x5A04B3DF615865ACL, (VECTOR(int64_t, 2))(0x5A04B3DF615865ACL, 0x6CA3C3A616B8996FL), 0x6CA3C3A616B8996FL);
        int32_t **l_2547 = &p_2768->g_2377;
        VECTOR(uint8_t, 4) l_2554 = (VECTOR(uint8_t, 4))(0x73L, (VECTOR(uint8_t, 2))(0x73L, 0x40L), 0x40L);
        int32_t l_2618[3];
        int32_t *l_2621 = &l_2077[6];
        VECTOR(uint32_t, 2) l_2659 = (VECTOR(uint32_t, 2))(0x3D494BCFL, 4294967295UL);
        uint32_t *l_2673 = &l_2255;
        int i, j, k;
        for (i = 0; i < 5; i++)
        {
            for (j = 0; j < 3; j++)
                l_2172[i][j] = (void*)0;
        }
        for (i = 0; i < 6; i++)
            l_2396[i] = 0x955627C0L;
        for (i = 0; i < 3; i++)
            l_2618[i] = 1L;
        if ((safe_div_func_int32_t_s_s((safe_div_func_uint64_t_u_u((p_40 > ((safe_mul_func_uint16_t_u_u((safe_mod_func_uint8_t_u_u(((*l_1860) = (l_1858 == l_1859[2][2][6])), l_1861)), (****p_2768->g_1687))) , p_40)), (safe_sub_func_uint32_t_u_u((l_1861 ^ (((VECTOR(int64_t, 4))(upsample(((VECTOR(int32_t, 2))(0x59B1459DL, 0x66FF539BL)).yxyy, ((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 2))(4294967295UL, 2UL)) + ((VECTOR(uint32_t, 4))(l_1866.scf5f)).hi))).xxyx))).y && ((VECTOR(uint64_t, 16))(l_1867.xyxxyxyyyxyxxxyy)).s8)), (safe_add_func_uint8_t_u_u(((VECTOR(uint8_t, 2))(l_1870.s28)).odd, ((*l_1872) |= ((((void*)0 != l_1871[3][3][1]) == 0x519D7A94L) < p_40)))))))), l_1861)))
        { /* block id: 670 */
            int64_t l_1880[8][10][3] = {{{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L}},{{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L}},{{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L}},{{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L}},{{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L}},{{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L}},{{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L}},{{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L},{0x36AADC2F6E37E5EEL,0x7DF71C4886542614L,0x3627330C4BFC31F5L}}};
            uint16_t ****l_1882[6][2][7] = {{{&p_2768->g_193[0],&p_2768->g_193[0],&p_2768->g_193[1],(void*)0,&p_2768->g_193[1],&p_2768->g_193[0],&p_2768->g_193[0]},{&p_2768->g_193[0],&p_2768->g_193[0],&p_2768->g_193[1],(void*)0,&p_2768->g_193[1],&p_2768->g_193[0],&p_2768->g_193[0]}},{{&p_2768->g_193[0],&p_2768->g_193[0],&p_2768->g_193[1],(void*)0,&p_2768->g_193[1],&p_2768->g_193[0],&p_2768->g_193[0]},{&p_2768->g_193[0],&p_2768->g_193[0],&p_2768->g_193[1],(void*)0,&p_2768->g_193[1],&p_2768->g_193[0],&p_2768->g_193[0]}},{{&p_2768->g_193[0],&p_2768->g_193[0],&p_2768->g_193[1],(void*)0,&p_2768->g_193[1],&p_2768->g_193[0],&p_2768->g_193[0]},{&p_2768->g_193[0],&p_2768->g_193[0],&p_2768->g_193[1],(void*)0,&p_2768->g_193[1],&p_2768->g_193[0],&p_2768->g_193[0]}},{{&p_2768->g_193[0],&p_2768->g_193[0],&p_2768->g_193[1],(void*)0,&p_2768->g_193[1],&p_2768->g_193[0],&p_2768->g_193[0]},{&p_2768->g_193[0],&p_2768->g_193[0],&p_2768->g_193[1],(void*)0,&p_2768->g_193[1],&p_2768->g_193[0],&p_2768->g_193[0]}},{{&p_2768->g_193[0],&p_2768->g_193[0],&p_2768->g_193[1],(void*)0,&p_2768->g_193[1],&p_2768->g_193[0],&p_2768->g_193[0]},{&p_2768->g_193[0],&p_2768->g_193[0],&p_2768->g_193[1],(void*)0,&p_2768->g_193[1],&p_2768->g_193[0],&p_2768->g_193[0]}},{{&p_2768->g_193[0],&p_2768->g_193[0],&p_2768->g_193[1],(void*)0,&p_2768->g_193[1],&p_2768->g_193[0],&p_2768->g_193[0]},{&p_2768->g_193[0],&p_2768->g_193[0],&p_2768->g_193[1],(void*)0,&p_2768->g_193[1],&p_2768->g_193[0],&p_2768->g_193[0]}}};
            int32_t *l_1887 = (void*)0;
            VECTOR(int32_t, 16) l_1908 = (VECTOR(int32_t, 16))(0x149C6FA9L, (VECTOR(int32_t, 4))(0x149C6FA9L, (VECTOR(int32_t, 2))(0x149C6FA9L, 0L), 0L), 0L, 0x149C6FA9L, 0L, (VECTOR(int32_t, 2))(0x149C6FA9L, 0L), (VECTOR(int32_t, 2))(0x149C6FA9L, 0L), 0x149C6FA9L, 0L, 0x149C6FA9L, 0L);
            VECTOR(uint64_t, 8) l_1912 = (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 18446744073709551606UL), 18446744073709551606UL), 18446744073709551606UL, 1UL, 18446744073709551606UL);
            uint32_t l_1955[5][8] = {{0x17C6BD19L,0x17C6BD19L,0x8FBC69C0L,1UL,0x8AC1D18FL,0xE2ADE48FL,1UL,0x4CEB2A3EL},{0x17C6BD19L,0x17C6BD19L,0x8FBC69C0L,1UL,0x8AC1D18FL,0xE2ADE48FL,1UL,0x4CEB2A3EL},{0x17C6BD19L,0x17C6BD19L,0x8FBC69C0L,1UL,0x8AC1D18FL,0xE2ADE48FL,1UL,0x4CEB2A3EL},{0x17C6BD19L,0x17C6BD19L,0x8FBC69C0L,1UL,0x8AC1D18FL,0xE2ADE48FL,1UL,0x4CEB2A3EL},{0x17C6BD19L,0x17C6BD19L,0x8FBC69C0L,1UL,0x8AC1D18FL,0xE2ADE48FL,1UL,0x4CEB2A3EL}};
            int32_t *l_1959 = (void*)0;
            int32_t *l_1960 = &l_1802;
            int32_t **l_1963 = &l_1887;
            int i, j, k;
            for (p_2768->g_1557 = 0; (p_2768->g_1557 < 45); p_2768->g_1557++)
            { /* block id: 673 */
                int8_t l_1877 = 0x4FL;
                VECTOR(int64_t, 8) l_1889 = (VECTOR(int64_t, 8))(0x3D86BD461673076FL, (VECTOR(int64_t, 4))(0x3D86BD461673076FL, (VECTOR(int64_t, 2))(0x3D86BD461673076FL, 1L), 1L), 1L, 0x3D86BD461673076FL, 1L);
                uint32_t *l_1914[9][4] = {{&p_2768->g_246,&p_2768->g_246,&p_2768->g_246,&p_2768->g_246},{&p_2768->g_246,&p_2768->g_246,&p_2768->g_246,&p_2768->g_246},{&p_2768->g_246,&p_2768->g_246,&p_2768->g_246,&p_2768->g_246},{&p_2768->g_246,&p_2768->g_246,&p_2768->g_246,&p_2768->g_246},{&p_2768->g_246,&p_2768->g_246,&p_2768->g_246,&p_2768->g_246},{&p_2768->g_246,&p_2768->g_246,&p_2768->g_246,&p_2768->g_246},{&p_2768->g_246,&p_2768->g_246,&p_2768->g_246,&p_2768->g_246},{&p_2768->g_246,&p_2768->g_246,&p_2768->g_246,&p_2768->g_246},{&p_2768->g_246,&p_2768->g_246,&p_2768->g_246,&p_2768->g_246}};
                uint16_t ******l_1919 = &p_2768->g_1917;
                int64_t *l_1952 = &p_2768->g_507;
                int32_t l_1954 = 0L;
                int i, j;
                (1 + 1);
            }
            (*l_1960) = 0x5B1226E4L;
            (*l_1963) = &p_40;
            for (p_2768->g_1555 = 7; (p_2768->g_1555 != (-28)); p_2768->g_1555 = safe_sub_func_uint64_t_u_u(p_2768->g_1555, 3))
            { /* block id: 710 */
                return (*p_2768->g_1888);
            }
        }
        else
        { /* block id: 713 */
            int32_t **l_1969 = &p_2768->g_187[2][2][2];
            for (p_2768->g_411 = 0; (p_2768->g_411 >= 9); p_2768->g_411++)
            { /* block id: 716 */
                if (l_1825.s6)
                    break;
                (*p_2768->g_1968) = (*p_2768->g_1956);
            }
            (*l_1969) = &p_40;
        }
        if (((l_1970 != (void*)0) < (l_1825.s7 = (((1UL <= ((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))(l_1972.wyxzywxx)) | ((VECTOR(int8_t, 16))(rhadd(((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 2))(0x1DL, 0x2DL)), ((VECTOR(int8_t, 2))(0x54L, (-7L)))))).xyyyyyyxxxxyxxxx, ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 4))(l_1973.xyyy)).xywzwywwxyzwwxyw | ((VECTOR(int8_t, 8))(0x12L, ((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 16))(l_1974.xxxyyyyyyyxyyyxx)).s59, ((VECTOR(int8_t, 8))(l_1975.wzxyywxx)).s30))), (-1L), 0x60L, 0x19L, 0x0BL, 0x09L)).s1646721705436370)))))).odd))).s20, ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 8))(l_1976.zywzwzyw)).s0505647536456206, ((VECTOR(int8_t, 2))(0x29L, 0L)).xyxyxxxxxyxyxxyy, ((VECTOR(int8_t, 8))(min(((VECTOR(int8_t, 8))(hadd(((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 16))((((VECTOR(int8_t, 2))(0x33L, 1L)).xxxxxyyyxxxyxxyx >= ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 16))(p_2768->g_1977.sc7d884c14807cdd1)) && ((VECTOR(int8_t, 16))(l_1978.s1754776405014376)))))))).s8569, ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 2))(0x24L, 0x2AL)) && ((VECTOR(int8_t, 16))(hadd(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 2))(p_2768->g_1979.xx)).yxyxxyxxxyxxxyyx || ((VECTOR(int8_t, 2))(0x44L, 5L)).yyxyyyxxxxyxxyyy))), ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))(l_1980.s2116522207745337)).s2915 <= ((VECTOR(int8_t, 8))(rotate(((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 2))(0x56L, 1L)).xyxy, ((VECTOR(int8_t, 2))((-1L), (-1L))).yxyx, ((VECTOR(int8_t, 4))(0x4BL, 0x5FL, 0x1AL, 0x4FL))))).wxxwywwz, ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 4))(0x02L, 0x1FL, 3L, 0x12L)).wyzwzwyy <= ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 2))(l_1981.xy)).xxyxyxxyyxyxyyyy > ((VECTOR(int8_t, 2))(0x13L, 0x38L)).xyxyyyyyxyyyxyyx))).odd)))))).even))).x, ((safe_mul_func_int16_t_s_s(0x1BF6L, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_1984.wz)), (-9L), 0x6602L)) && ((VECTOR(int16_t, 16))(l_1985.xzwwyxzyxzxyyxyw)).s1f12))).odd | ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 2))(clz(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(p_2768->g_1986.s3475)), (-4L), ((VECTOR(int16_t, 8))(l_1987.zzxzxzwx)), p_2768->g_1575.s0, (-1L), 0x62FCL)).s5e))).xyxxxyyxyyyyxxyx > ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 4))(min(((VECTOR(int16_t, 4))(p_2768->g_207.s0, 0x37C3L, 0x0EB3L, 0x77B6L)), (int16_t)p_2768->g_526.w))).even, ((VECTOR(int16_t, 16))(0x5A06L, (-9L), (-1L), (safe_mul_func_uint16_t_u_u(p_40, ((((((VECTOR(uint16_t, 16))(65530UL, (safe_add_func_int64_t_s_s((safe_sub_func_int64_t_s_s(p_40, p_40)), (-1L))), l_1825.s6, 0xA84DL, 1UL, p_40, 65535UL, ((VECTOR(uint16_t, 8))(65526UL)), 0x6577L)).s1 | p_40) < p_40) , 0x31894DBF1B9D4CF0L) <= 0x33EEFF4D522BCB3AL))), (-2L), ((VECTOR(int16_t, 4))(0x5353L)), 0x65F4L, 1L, 0L, 4L, 3L, (-1L), 0x0A34L)).sf7))).xyyyyxyxyyxxxyxx != ((VECTOR(int16_t, 16))(0x13FEL)))))))).sfa))) && ((VECTOR(int16_t, 2))((-4L)))))).even, ((VECTOR(int16_t, 2))(2L)), ((VECTOR(int16_t, 2))(8L)), 0L, ((VECTOR(int16_t, 8))(0x1C09L)), 0x34EDL, (-10L))).sf)) || 0x2DB94A2503CB891AL), p_40, ((VECTOR(int8_t, 4))(0x13L)), 9L)).s57, ((VECTOR(int8_t, 2))(0x29L)), ((VECTOR(int8_t, 2))(0x70L))))), 1L, ((VECTOR(int8_t, 4))(6L)), ((VECTOR(int8_t, 8))(0x2FL)), (-10L)))))).s30))).yxyx, ((VECTOR(int8_t, 4))(0L))))).xyxzxxxw, ((VECTOR(int8_t, 8))(1L))))), ((VECTOR(int8_t, 8))(0L))))).s0274746620364100))).even, ((VECTOR(int8_t, 8))(0L))))).s0645377014614000 ^ ((VECTOR(int8_t, 16))(1L))))).s3f))).hi) > p_2768->g_507) , 0x988DL))))
        { /* block id: 723 */
            int32_t l_2000 = 0x3C7E5D7EL;
            uint16_t ******l_2005 = &p_2768->g_1917;
            uint64_t **l_2010 = &p_2768->g_1190;
            uint64_t ***l_2009 = &l_2010;
            int32_t l_2011 = 6L;
            uint32_t *l_2033[5];
            uint32_t **l_2062[5][8] = {{&p_2768->g_1623,&p_2768->g_1623,&p_2768->g_273,(void*)0,&p_2768->g_1623,(void*)0,&p_2768->g_273,&p_2768->g_1623},{&p_2768->g_1623,&p_2768->g_1623,&p_2768->g_273,(void*)0,&p_2768->g_1623,(void*)0,&p_2768->g_273,&p_2768->g_1623},{&p_2768->g_1623,&p_2768->g_1623,&p_2768->g_273,(void*)0,&p_2768->g_1623,(void*)0,&p_2768->g_273,&p_2768->g_1623},{&p_2768->g_1623,&p_2768->g_1623,&p_2768->g_273,(void*)0,&p_2768->g_1623,(void*)0,&p_2768->g_273,&p_2768->g_1623},{&p_2768->g_1623,&p_2768->g_1623,&p_2768->g_273,(void*)0,&p_2768->g_1623,(void*)0,&p_2768->g_273,&p_2768->g_1623}};
            VECTOR(uint8_t, 16) l_2122 = (VECTOR(uint8_t, 16))(6UL, (VECTOR(uint8_t, 4))(6UL, (VECTOR(uint8_t, 2))(6UL, 255UL), 255UL), 255UL, 6UL, 255UL, (VECTOR(uint8_t, 2))(6UL, 255UL), (VECTOR(uint8_t, 2))(6UL, 255UL), 6UL, 255UL, 6UL, 255UL);
            VECTOR(uint8_t, 2) l_2123 = (VECTOR(uint8_t, 2))(249UL, 0x07L);
            int32_t *l_2133 = (void*)0;
            int i, j;
            for (i = 0; i < 5; i++)
                l_2033[i] = &p_2768->g_103;
            if (((VECTOR(int32_t, 16))(l_1994.sb09efcc0b949e8af)).s5)
            { /* block id: 724 */
                uint16_t l_1995[3];
                int i;
                for (i = 0; i < 3; i++)
                    l_1995[i] = 1UL;
                l_1995[1]--;
                (**p_2768->g_1958) ^= ((void*)0 != (*p_2768->g_1374));
                l_2011 ^= (((safe_div_func_uint64_t_u_u(l_2000, (l_1802 = p_40))) < ((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 8))(0UL, 1UL, ((VECTOR(uint16_t, 4))(p_2768->g_2001.yyxx)), 65535UL, 0UL)).s52 | ((VECTOR(uint16_t, 4))(p_2768->g_2002.wxyw)).even))).hi && (safe_rshift_func_uint16_t_u_s(((void*)0 != l_2005), 7))) | (0x3F615424L < ((VECTOR(int32_t, 8))(p_2768->g_2006.yxyyxxyx)).s0))) >= (safe_sub_func_int64_t_s_s(((void*)0 == l_2009), l_2000)));
            }
            else
            { /* block id: 729 */
                int32_t l_2013 = 0x030E39B3L;
                p_40 = ((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 16))(p_2768->g_2012.yyyxyyyyyxxyyxyy)).odd, ((VECTOR(int32_t, 16))(0x65281B0FL, 0L, (l_2013 = p_40), ((VECTOR(int32_t, 4))(0L, (((p_2768->g_1986.s7 & ((((safe_rshift_func_uint16_t_u_u((safe_div_func_int32_t_s_s((p_2768->g_179.x , l_2000), (safe_sub_func_int16_t_s_s((safe_sub_func_int8_t_s_s(0x7AL, (((safe_div_func_int32_t_s_s(((((((VECTOR(int64_t, 8))(safe_clamp_func(VECTOR(int64_t, 8),int64_t,((VECTOR(int64_t, 4))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 4),((VECTOR(int64_t, 16))(mad_sat(((VECTOR(int64_t, 16))(l_1980.s1, ((+0x5C265BF0EB8457C5L) < (((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 4))(p_2768->g_2026.s1162)).yzxzzyyy & ((VECTOR(uint16_t, 16))((safe_add_func_int32_t_s_s((!p_2768->g_2029), l_2011)), ((VECTOR(uint16_t, 2))(0x98B7L)), p_40, p_40, ((VECTOR(uint16_t, 2))(7UL)), l_2011, FAKE_DIVERGE(p_2768->group_2_offset, get_group_id(2), 10), 65535UL, p_40, 0xBBC5L, 0x30D6L, ((VECTOR(uint16_t, 2))(7UL)), 1UL)).lo))).s1 != FAKE_DIVERGE(p_2768->local_2_offset, get_local_id(2), 10))), ((VECTOR(int64_t, 2))((-3L))), p_40, ((VECTOR(int64_t, 2))(0x2941051AA074426DL)), 0L, 0x6DD7211DA2AABB51L, ((VECTOR(int64_t, 2))(0x7883C476CCBC5522L)), ((VECTOR(int64_t, 2))(1L)), ((VECTOR(int64_t, 2))(1L)), (-1L))), ((VECTOR(int64_t, 16))(0x19173535C56880B5L)), ((VECTOR(int64_t, 16))(0x3094067ADDD29E5AL))))).s1475, ((VECTOR(int64_t, 4))((-10L))), ((VECTOR(int64_t, 4))(0x68DC04AAD560F9FAL))))).xwxzxwxx, (int64_t)l_2013, (int64_t)0x06A87B9AA23FD643L))).s4 && 0xD7C2D70EF0D2ACA6L) > FAKE_DIVERGE(p_2768->local_1_offset, get_local_id(1), 10)) == p_40) , p_40), l_2011)) , l_1792.s5) != l_2013))), 0x2870L)))), 5)) >= 0x7F3BL) || l_2000) == l_2030)) , l_2000) || l_1976.x), 6L, (-10L))), ((VECTOR(int32_t, 8))(0x1189E6ADL)), 1L)).odd))).s4;
                p_40 = l_2013;
                (*p_2768->g_1956) = (*p_2768->g_1888);
            }
            if ((((safe_mul_func_int16_t_s_s(((((l_2000 = (p_2768->g_493.s3 = (l_2011 >= (p_40 == l_1777)))) < (safe_div_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u((((FAKE_DIVERGE(p_2768->group_2_offset, get_group_id(2), 10) < (p_2768->g_1134.s0 <= l_1792.s5)) != (+((void*)0 == p_2768->g_275[1][4][0]))) ^ ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 8))(p_2768->g_2040.yyxyxyyx)).s1203305127672377 << ((VECTOR(uint16_t, 2))(l_2041.yx)).xxxxxxxxxyyyxxyy))).even | ((VECTOR(uint16_t, 16))(mad_hi(((VECTOR(uint16_t, 4))(rhadd(((VECTOR(uint16_t, 16))(0xD753L, l_1985.x, 1UL, ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 16))(add_sat(((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 16))(0xC0BCL, ((VECTOR(uint16_t, 8))(p_2768->g_2046.s60740232)), p_40, p_40, 0UL, 0xA784L, 0UL, 65535UL, 0x5E5EL)).even + ((VECTOR(uint16_t, 8))(65535UL))))).s2251437210251302, ((VECTOR(uint16_t, 16))(0x1D93L))))).lo + ((VECTOR(uint16_t, 8))(65535UL))))), GROUP_DIVERGE(2, 1), 65533UL, 0xE41FL, 0x2250L, 0xF08AL)).s58ae, ((VECTOR(uint16_t, 4))(0x633DL))))).wyyzywxywywwyyzw, ((VECTOR(uint16_t, 16))(0x9146L)), ((VECTOR(uint16_t, 16))(65535UL))))).lo))).s4), 0x3249L)), p_40))) , 1L) == l_2047), 0x579DL)) , (*p_2768->g_505)) != l_2048[2]))
            { /* block id: 737 */
                int32_t l_2049 = 0x2298CF6FL;
                uint32_t ***l_2061[1];
                int32_t l_2073 = 0x53A8C37BL;
                uint64_t l_2074[6];
                uint32_t **l_2075 = &l_2033[1];
                int64_t *l_2076[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int64_t ***l_2078 = (void*)0;
                uint64_t *l_2080 = (void*)0;
                uint64_t *l_2081 = (void*)0;
                uint64_t *l_2082 = &l_2074[3];
                int32_t l_2083 = 0L;
                int i;
                for (i = 0; i < 1; i++)
                    l_2061[i] = &l_2060;
                for (i = 0; i < 6; i++)
                    l_2074[i] = 0x86E576B8ED958425L;
                l_1825.s1 |= l_2049;
                (*p_2768->g_1958) = &p_40;
                l_2083 ^= ((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),int32_t,((VECTOR(int32_t, 4))(p_2768->g_2050.s0573)), (int32_t)(safe_sub_func_uint64_t_u_u((~((*l_2082) = (((*l_1860) = (safe_rshift_func_int16_t_s_u((~p_2768->g_831.z), 11))) & (safe_rshift_func_uint16_t_u_s((l_2000 = (((p_40 ^ (((((safe_rshift_func_int16_t_s_u((l_2059 != (l_2062[0][4] = l_2060)), 4)) , ((safe_sub_func_int64_t_s_s((l_2011 = (((*l_2075) = &p_2768->g_103) == (void*)0)), p_40)) | l_2077[4])) , l_2078) != l_2079) >= p_40)) > 0x295BB7B62FB341E3L) != 18446744073709551609UL)), l_2073))))), 0x46D521F6417C4222L)), (int32_t)(-2L)))).w;
                for (l_1802 = 0; (l_1802 == 5); l_1802 = safe_add_func_int16_t_s_s(l_1802, 2))
                { /* block id: 751 */
                    for (p_2768->g_140 = (-7); (p_2768->g_140 == 6); ++p_2768->g_140)
                    { /* block id: 754 */
                        VECTOR(int32_t, 8) l_2091 = (VECTOR(int32_t, 8))(5L, (VECTOR(int32_t, 4))(5L, (VECTOR(int32_t, 2))(5L, 7L), 7L), 7L, 5L, 7L);
                        int32_t l_2101 = (-1L);
                        int32_t l_2102 = (-1L);
                        int i;
                        l_2088 = &l_1802;
                        l_2011 = ((VECTOR(int32_t, 4))((safe_div_func_int32_t_s_s(((((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))(l_2091.s5657254324067570)) != ((VECTOR(int32_t, 16))(((l_2102 &= (((((VECTOR(int32_t, 4))(l_2092.xxxy)).w , ((safe_rshift_func_int8_t_s_u(((safe_mul_func_int16_t_s_s(l_2049, (0xAD29L != ((((((safe_mod_func_int8_t_s_s(0x08L, (safe_sub_func_uint16_t_u_u(p_40, ((l_2101 = ((void*)0 == &l_1953)) >= (**p_2768->g_1956)))))) == 1UL) ^ (((FAKE_DIVERGE(p_2768->global_1_offset, get_global_id(1), 10) == p_40) , (-7L)) == 0x805E6AB2L)) , l_2011) , p_40) , p_2768->g_884.s2)))) , 0L), p_40)) && p_40)) | 18446744073709551615UL) , 0x5AAA67EFL)) | l_2049), ((VECTOR(int32_t, 4))(0x4023BC7EL)), 0x7A8B547AL, 0x4D1C137CL, l_2074[2], l_2074[3], l_2074[4], ((VECTOR(int32_t, 4))(0x0EBFF903L)), 1L, 0x31451F84L))))).s3f == ((VECTOR(int32_t, 2))(0x144B49C8L))))).even || (**p_2768->g_1888)) , (void*)0) == &p_2768->g_1748) >= l_2011), (*l_2088))), l_2073, 0x06166A87L, 0x1CC4C995L)).y;
                    }
                }
            }
            else
            { /* block id: 761 */
                VECTOR(uint8_t, 16) l_2119 = (VECTOR(uint8_t, 16))(0x56L, (VECTOR(uint8_t, 4))(0x56L, (VECTOR(uint8_t, 2))(0x56L, 0xD3L), 0xD3L), 0xD3L, 0x56L, 0xD3L, (VECTOR(uint8_t, 2))(0x56L, 0xD3L), (VECTOR(uint8_t, 2))(0x56L, 0xD3L), 0x56L, 0xD3L, 0x56L, 0xD3L);
                VECTOR(uint8_t, 8) l_2124 = (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 255UL), 255UL), 255UL, 255UL, 255UL);
                VECTOR(uint8_t, 16) l_2127 = (VECTOR(uint8_t, 16))(8UL, (VECTOR(uint8_t, 4))(8UL, (VECTOR(uint8_t, 2))(8UL, 7UL), 7UL), 7UL, 8UL, 7UL, (VECTOR(uint8_t, 2))(8UL, 7UL), (VECTOR(uint8_t, 2))(8UL, 7UL), 8UL, 7UL, 8UL, 7UL);
                int8_t *l_2131 = (void*)0;
                int8_t *l_2132[1];
                int i;
                for (i = 0; i < 1; i++)
                    l_2132[i] = (void*)0;
                (*l_2088) = ((((VECTOR(uint8_t, 4))(mul_hi(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(safe_clamp_func(VECTOR(uint8_t, 2),VECTOR(uint8_t, 2),((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 2))(0x1CL, 0x97L)).yyyx, ((VECTOR(uint8_t, 4))(p_2768->g_2105.s78c7))))).hi, ((VECTOR(uint8_t, 8))(l_2106.s104aa6c0)).s16, ((VECTOR(uint8_t, 4))(safe_clamp_func(VECTOR(uint8_t, 4),uint8_t,((VECTOR(uint8_t, 2))((+((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 8))(p_2768->g_2107.xyyzxwyz)).s34 ^ ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))(max(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(0xBEL, 0x6FL)), 0x3EL, 0UL)).xwzxwyywzwwwwyyy + ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 4))(abs(((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 8))(abs(((VECTOR(uint8_t, 8))(clz(((VECTOR(uint8_t, 16))(p_2768->g_2114.xxzwxyxwxxyyzzzw)).odd)))))).s16))).xyyx))).wwxxzyzwyyxyzwxx + ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(247UL, 248UL)), ((VECTOR(uint8_t, 4))(0xACL, ((VECTOR(uint8_t, 2))(p_2768->g_2115.xy)), 250UL)), 0xE7L, 0x74L)).s1201170124442761)))))), (uint8_t)p_40))).s49 + ((VECTOR(uint8_t, 2))(0UL, 0xE4L)))))))), ((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(uint8_t, 16))(p_2768->g_2116.xyxyxyyxyyxxyyxy)).s97, ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 4))(max(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(1UL, 248UL)), ((VECTOR(uint8_t, 4))(p_40, ((VECTOR(uint8_t, 2))(l_2119.s13)), 0xBDL)), 0UL, ((VECTOR(uint8_t, 2))(p_2768->g_2120.yy)), ((p_40 > (!((VECTOR(int32_t, 16))(p_2768->g_2121.s3326006700111235)).sd)) , ((*l_1860) = p_2768->g_1977.s9)), 253UL, ((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 2))(l_2122.s08)), ((VECTOR(uint8_t, 2))(0x9AL, 0UL))))), 0UL, 5UL, 0xD0L)).s2e25, ((VECTOR(uint8_t, 2))((-((VECTOR(uint8_t, 16))(l_2123.xyyyyyxyxxyxxxxx)).saf))).xxxy))) * ((VECTOR(uint8_t, 4))(0x48L, p_2768->g_1333.y, 0x96L, 255UL))))).even))))))))).xyyy, (uint8_t)p_40, (uint8_t)1UL))).hi))), ((VECTOR(uint8_t, 4))(abs_diff(((VECTOR(uint8_t, 2))(l_2124.s01)).xxyy, ((VECTOR(uint8_t, 2))(0xDDL, 249UL)).xyyy))), ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 2))(l_2127.sa4)).xxxx + ((VECTOR(uint8_t, 4))(mad_sat(((VECTOR(uint8_t, 4))(add_sat(((VECTOR(uint8_t, 8))(mad_sat(((VECTOR(uint8_t, 2))(249UL, 0xC7L)).yyyxxxyy, ((VECTOR(uint8_t, 4))(((((VECTOR(uint16_t, 8))(p_2768->g_2128.s73266711)).s0 ^ 0x8075L) <= ((safe_mul_func_int8_t_s_s((l_2011 ^= (l_2000 |= (p_2768->g_1520.y = p_40))), p_2768->g_411)) ^ 0L)), ((VECTOR(uint8_t, 2))(0x44L)), 0xC5L)).wwyxzwyx, ((VECTOR(uint8_t, 8))(0x5EL))))).even, ((VECTOR(uint8_t, 4))(6UL))))), ((VECTOR(uint8_t, 4))(1UL)), ((VECTOR(uint8_t, 4))(0xE6L)))))))), 0xB0L, ((VECTOR(uint8_t, 2))(0xD6L)), ((VECTOR(uint8_t, 2))(0x0DL)), 5UL)) + ((VECTOR(uint8_t, 16))(255UL))))).sa6b4, ((VECTOR(uint8_t, 4))(0x17L))))).w ^ l_2124.s2) & l_2127.s5);
                p_39 = (l_2133 = (void*)0);
            }
        }
        else
        { /* block id: 770 */
            VECTOR(int16_t, 16) l_2136 = (VECTOR(int16_t, 16))(0x3F34L, (VECTOR(int16_t, 4))(0x3F34L, (VECTOR(int16_t, 2))(0x3F34L, 0x0D5DL), 0x0D5DL), 0x0D5DL, 0x3F34L, 0x0D5DL, (VECTOR(int16_t, 2))(0x3F34L, 0x0D5DL), (VECTOR(int16_t, 2))(0x3F34L, 0x0D5DL), 0x3F34L, 0x0D5DL, 0x3F34L, 0x0D5DL);
            int16_t *l_2137 = &l_2030;
            uint32_t *l_2138 = (void*)0;
            uint32_t *l_2139 = (void*)0;
            uint32_t *l_2140 = (void*)0;
            uint32_t *l_2141 = (void*)0;
            uint32_t *l_2142 = (void*)0;
            uint32_t *l_2143 = (void*)0;
            uint32_t *l_2144 = &p_2768->g_103;
            int64_t l_2147 = 0x0A2D238418C70801L;
            uint32_t l_2148 = 6UL;
            VECTOR(uint64_t, 2) l_2155 = (VECTOR(uint64_t, 2))(0UL, 18446744073709551615UL);
            int32_t l_2160 = (-1L);
            int8_t l_2161[8][1][9] = {{{0x36L,0L,0x36L,0x36L,0L,0x36L,0x36L,0L,0x36L}},{{0x36L,0L,0x36L,0x36L,0L,0x36L,0x36L,0L,0x36L}},{{0x36L,0L,0x36L,0x36L,0L,0x36L,0x36L,0L,0x36L}},{{0x36L,0L,0x36L,0x36L,0L,0x36L,0x36L,0L,0x36L}},{{0x36L,0L,0x36L,0x36L,0L,0x36L,0x36L,0L,0x36L}},{{0x36L,0L,0x36L,0x36L,0L,0x36L,0x36L,0L,0x36L}},{{0x36L,0L,0x36L,0x36L,0L,0x36L,0x36L,0L,0x36L}},{{0x36L,0L,0x36L,0x36L,0L,0x36L,0x36L,0L,0x36L}}};
            int32_t l_2173 = (-1L);
            VECTOR(int64_t, 2) l_2183 = (VECTOR(int64_t, 2))(0x062B28A13842FCB0L, 0L);
            uint16_t ******l_2190 = &p_2768->g_1917;
            uint16_t *******l_2191[1][7];
            int32_t *l_2198[7] = {&p_2768->g_328,&p_2768->g_328,&p_2768->g_328,&p_2768->g_328,&p_2768->g_328,&p_2768->g_328,&p_2768->g_328};
            uint32_t ***l_2201[3];
            int32_t l_2220[10];
            int32_t l_2225 = 0x7240C398L;
            int8_t l_2230 = 1L;
            uint16_t l_2235 = 0x3194L;
            VECTOR(int32_t, 16) l_2249 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0L), 0L), 0L, 0L, 0L, (VECTOR(int32_t, 2))(0L, 0L), (VECTOR(int32_t, 2))(0L, 0L), 0L, 0L, 0L, 0L);
            VECTOR(int32_t, 4) l_2252 = (VECTOR(int32_t, 4))(0x1C889E5BL, (VECTOR(int32_t, 2))(0x1C889E5BL, 0x04977C3FL), 0x04977C3FL);
            uint32_t l_2311 = 0xAFB322E8L;
            int64_t **l_2360[5];
            VECTOR(uint16_t, 2) l_2369 = (VECTOR(uint16_t, 2))(0x45A0L, 1UL);
            int32_t ***l_2373 = (void*)0;
            int i, j, k;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 7; j++)
                    l_2191[i][j] = (void*)0;
            }
            for (i = 0; i < 3; i++)
                l_2201[i] = (void*)0;
            for (i = 0; i < 10; i++)
                l_2220[i] = 0x4457C95DL;
            for (i = 0; i < 5; i++)
                l_2360[i] = &l_2048[1];
            l_2161[1][0][3] |= (((*l_1860) = (p_40 > ((safe_sub_func_int16_t_s_s(((*l_2137) = ((VECTOR(int16_t, 2))(l_2136.sc5)).odd), ((p_2768->g_845.s4 |= ((*l_2144) = (GROUP_DIVERGE(1, 1) > p_40))) != ((safe_rshift_func_uint16_t_u_u((~l_2147), 12)) & ((l_2148 || ((safe_sub_func_uint32_t_u_u(((*l_2088) != (((p_2768->g_273 == (void*)0) , (safe_mul_func_uint8_t_u_u(0x46L, (((l_2160 |= (safe_sub_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(mul_hi(((VECTOR(uint64_t, 4))(add_sat(((VECTOR(uint64_t, 2))(l_2155.xy)).xyxy, ((VECTOR(uint64_t, 4))(mad_hi(((VECTOR(uint64_t, 2))(l_2156.wy)).yyxx, ((VECTOR(uint64_t, 2))(l_2157.yy)).xyxy, ((VECTOR(uint64_t, 2))(mad_sat(((VECTOR(uint64_t, 4))(rhadd(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(mad_hi(((VECTOR(uint64_t, 2))(safe_clamp_func(VECTOR(uint64_t, 2),VECTOR(uint64_t, 2),((VECTOR(uint64_t, 16))(((safe_sub_func_uint64_t_u_u(2UL, p_2768->g_1314.w)) == (*l_2088)), ((VECTOR(uint64_t, 4))(18446744073709551611UL)), 0xABC5D8164CE0E0EDL, 18446744073709551614UL, ((VECTOR(uint64_t, 2))(0UL)), FAKE_DIVERGE(p_2768->group_0_offset, get_group_id(0), 10), ((VECTOR(uint64_t, 2))(0x4EF47D10ECA6BB10L)), ((VECTOR(uint64_t, 2))(0x3789144CFC2314B6L)), 0xA4F4C32948DEBFD6L, 0xE7DEC5257DC01B7CL)).s18, ((VECTOR(uint64_t, 2))(0xCA3D15B86A636E1EL)), ((VECTOR(uint64_t, 2))(0x6563A2605B9D9DF8L))))), ((VECTOR(uint64_t, 2))(18446744073709551611UL)), ((VECTOR(uint64_t, 2))(3UL))))), 18446744073709551613UL, 0x67B41E21E7BB3A3BL, 2UL, ((VECTOR(uint64_t, 2))(0xA6B49F99FBC6F05AL)), 18446744073709551615UL)).even, ((VECTOR(uint64_t, 4))(18446744073709551615UL))))).lo, ((VECTOR(uint64_t, 2))(1UL)), ((VECTOR(uint64_t, 2))(18446744073709551615UL))))).xxyx)))))).xzwxxzwxyxwwzyyx, ((VECTOR(uint64_t, 16))(18446744073709551615UL))))).s4, p_2768->g_844.sf))) <= 0x4505L) >= GROUP_DIVERGE(0, 1))))) , p_40)), l_2155.x)) == l_2148)) | (*l_2088)))))) > p_2768->g_7))) || p_2768->g_724.s6);
            l_2173 &= ((VECTOR(int32_t, 8))(9L, 0x432E30CCL, (-1L), ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 4))((safe_sub_func_int8_t_s_s((p_2768->g_2164 != (void*)0), p_40)), 1L, 0x056E9D2FL, 0x324E9F04L)) && ((VECTOR(int32_t, 2))(l_2165.sa8)).xyxy))).even > ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))((p_39 != (void*)0), (safe_div_func_uint32_t_u_u((l_2160 ^= (((safe_div_func_int32_t_s_s(((*l_2088) = ((p_40 == (*l_2088)) || ((((VECTOR(uint16_t, 8))(((safe_rshift_func_uint8_t_u_s(0xF4L, 5)) | (l_2172[1][2] != l_2048[0])), GROUP_DIVERGE(0, 1), 65535UL, 0x0B0CL, 1UL, 0UL, 1UL, 0xFFBEL)).s2 , p_2768->g_845.s6) > GROUP_DIVERGE(0, 1)))), 6UL)) & p_2768->g_1521.y) , 4294967290UL)), GROUP_DIVERGE(2, 1))), 0x4BB7E86EL, 0L, ((VECTOR(int32_t, 4))(0x715159AEL)), 0x466F8F3FL, (*l_2088), ((VECTOR(int32_t, 2))(0x1735289CL)), 0L, ((VECTOR(int32_t, 2))((-7L))), 0x589FF22AL)).sf5 > ((VECTOR(int32_t, 2))((-1L))))))))), l_2136.sa, (-8L), (-5L))).s6;
            if ((safe_div_func_uint64_t_u_u(((safe_add_func_uint8_t_u_u(p_2768->g_1977.s8, (safe_mod_func_int16_t_s_s((((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(1UL, 0xDEFF20CD3A4E1DA4L)), 0x1E55E3E5CBFB8A5CL, ((VECTOR(uint64_t, 2))(1UL, 0x174B1F5EC5984CD5L)).even, ((((VECTOR(uint16_t, 8))(l_2180.zzwxwwwy)).s0 >= p_40) == (((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 4))(((*l_2088) ^ (((p_2768->g_2199 = ((safe_mul_func_int8_t_s_s((*l_2088), (((VECTOR(int64_t, 2))((((VECTOR(int64_t, 8))((((VECTOR(int64_t, 4))(max(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 16),((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 2))(mad_sat(((VECTOR(int64_t, 16))(l_2183.xyxxyyyyyyxyxxyx)).s35, ((VECTOR(int64_t, 4))(1L, 0x4867E51899F4FCA7L, 0x05C303C875E26254L, 4L)).even, ((VECTOR(int64_t, 16))((p_2768->g_871.s8 = (l_2173 = (safe_add_func_int8_t_s_s((safe_mod_func_int16_t_s_s(0L, (safe_rshift_func_uint8_t_u_s(p_40, 2)))), ((p_2768->g_2192[1] = l_2190) != (l_2193 = l_2193)))))), ((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))(0x39AB68A62C0E9CA7L, (((*l_2137) = ((VECTOR(int16_t, 8))(0x318FL, 0x53F3L, 0x214AL, ((((safe_sub_func_int32_t_s_s((GROUP_DIVERGE(0, 1) | ((l_1871[3][3][1] = func_64(p_40, p_40, (*p_2768->g_1262), (*l_2088), p_2768)) == l_2198[3])), (-1L))) || (**p_2768->g_1958)) , p_40) > p_40), 0x0445L, p_2768->g_2040.y, 1L, 0x3249L)).s0) <= (*l_2088)), 0x02091FC2309E880DL, p_40, 1L, ((VECTOR(int64_t, 8))(0x29C490DC84F6C87BL)), 0x4B28A20CDEDAAD62L, 0x73E41E4779186F70L, (-9L))).hi && ((VECTOR(int64_t, 8))((-5L)))))), ((VECTOR(int64_t, 2))(0x0A82E582F4AD19CDL)), ((VECTOR(int64_t, 4))(0x7AAB6A3C53C966E2L)), 1L)).sbe))), ((VECTOR(int64_t, 2))(0x22404359C9DA13CCL))))), 0x33A9A45B51CF53C8L, (-1L))), 0x139F952E65A234E8L, (*l_2088), 1L, 0x089A22E8A119424AL, 0x55870435E660FF32L, ((VECTOR(int64_t, 4))(0x189235CAEE1A8402L)), ((VECTOR(int64_t, 2))(9L)), 0L)), ((VECTOR(int64_t, 16))(1L)), ((VECTOR(int64_t, 16))(0x424870DE4BDA1F2EL))))).hi & ((VECTOR(int64_t, 8))(1L))))).even, ((VECTOR(int64_t, 4))(5L))))).wwwzwxxw <= ((VECTOR(int64_t, 8))(1L))))).s27 | ((VECTOR(int64_t, 2))(0x74383B28E970BBFDL))))).lo , GROUP_DIVERGE(2, 1)))) , p_2768->g_2199)) != &p_2768->g_2200[5][4]) < (*l_2088))), ((VECTOR(int32_t, 2))((-1L))), (-5L))), (int32_t)p_40))).y , p_2768->g_844.sc)), 0UL, 18446744073709551612UL, 4UL)).s2 & p_40), p_2768->g_411)))) & 0x4FL), l_2202)))
            { /* block id: 787 */
                int16_t **l_2205 = &l_2137;
                int32_t l_2206 = 0x2EE1FDB1L;
                VECTOR(int8_t, 8) l_2209 = (VECTOR(int8_t, 8))(0x1DL, (VECTOR(int8_t, 4))(0x1DL, (VECTOR(int8_t, 2))(0x1DL, 0x34L), 0x34L), 0x34L, 0x1DL, 0x34L);
                int32_t l_2217 = 0x67DB2C27L;
                int32_t l_2218 = 5L;
                int32_t l_2219[4];
                uint32_t l_2300 = 0xC06E4A86L;
                int i;
                for (i = 0; i < 4; i++)
                    l_2219[i] = 0x41148AA7L;
                if (((0x168EL & (((((p_2768->g_1517.w = ((*l_2088) || (l_2155.y != (((*l_2205) = &p_2768->g_1555) == (void*)0)))) <= ((void*)0 == p_2768->g_1461[4])) ^ (l_2160 |= (l_2206 & (((VECTOR(uint16_t, 16))(mul_hi(((VECTOR(uint16_t, 16))(p_2768->g_2207.s5222457124534012)), ((VECTOR(uint16_t, 16))(l_2208.yyxxyxyxxxxyyxyy))))).s1 , ((VECTOR(int8_t, 2))(l_2209.s21)).odd)))) ^ FAKE_DIVERGE(p_2768->local_2_offset, get_local_id(2), 10)) , (l_1871[3][3][1] != (*p_2768->g_1261)))) >= 0x3C897F0A4FBD755CL))
                { /* block id: 791 */
                    int16_t l_2213[8] = {(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L)};
                    int32_t l_2216[8] = {1L,1L,1L,1L,1L,1L,1L,1L};
                    uint8_t l_2226 = 8UL;
                    int32_t l_2234 = 0x1761B40EL;
                    int i;
                    for (l_1777 = 0; (l_1777 < 26); l_1777 = safe_add_func_uint32_t_u_u(l_1777, 4))
                    { /* block id: 794 */
                        int32_t l_2212 = 0x307A8B78L;
                        int8_t l_2214 = 1L;
                        int32_t l_2215[4][7][9] = {{{(-9L),(-3L),0x64C366BCL,0x76F5085BL,0x65A6DB7FL,0x2E32F5E3L,(-5L),(-3L),1L},{(-9L),(-3L),0x64C366BCL,0x76F5085BL,0x65A6DB7FL,0x2E32F5E3L,(-5L),(-3L),1L},{(-9L),(-3L),0x64C366BCL,0x76F5085BL,0x65A6DB7FL,0x2E32F5E3L,(-5L),(-3L),1L},{(-9L),(-3L),0x64C366BCL,0x76F5085BL,0x65A6DB7FL,0x2E32F5E3L,(-5L),(-3L),1L},{(-9L),(-3L),0x64C366BCL,0x76F5085BL,0x65A6DB7FL,0x2E32F5E3L,(-5L),(-3L),1L},{(-9L),(-3L),0x64C366BCL,0x76F5085BL,0x65A6DB7FL,0x2E32F5E3L,(-5L),(-3L),1L},{(-9L),(-3L),0x64C366BCL,0x76F5085BL,0x65A6DB7FL,0x2E32F5E3L,(-5L),(-3L),1L}},{{(-9L),(-3L),0x64C366BCL,0x76F5085BL,0x65A6DB7FL,0x2E32F5E3L,(-5L),(-3L),1L},{(-9L),(-3L),0x64C366BCL,0x76F5085BL,0x65A6DB7FL,0x2E32F5E3L,(-5L),(-3L),1L},{(-9L),(-3L),0x64C366BCL,0x76F5085BL,0x65A6DB7FL,0x2E32F5E3L,(-5L),(-3L),1L},{(-9L),(-3L),0x64C366BCL,0x76F5085BL,0x65A6DB7FL,0x2E32F5E3L,(-5L),(-3L),1L},{(-9L),(-3L),0x64C366BCL,0x76F5085BL,0x65A6DB7FL,0x2E32F5E3L,(-5L),(-3L),1L},{(-9L),(-3L),0x64C366BCL,0x76F5085BL,0x65A6DB7FL,0x2E32F5E3L,(-5L),(-3L),1L},{(-9L),(-3L),0x64C366BCL,0x76F5085BL,0x65A6DB7FL,0x2E32F5E3L,(-5L),(-3L),1L}},{{(-9L),(-3L),0x64C366BCL,0x76F5085BL,0x65A6DB7FL,0x2E32F5E3L,(-5L),(-3L),1L},{(-9L),(-3L),0x64C366BCL,0x76F5085BL,0x65A6DB7FL,0x2E32F5E3L,(-5L),(-3L),1L},{(-9L),(-3L),0x64C366BCL,0x76F5085BL,0x65A6DB7FL,0x2E32F5E3L,(-5L),(-3L),1L},{(-9L),(-3L),0x64C366BCL,0x76F5085BL,0x65A6DB7FL,0x2E32F5E3L,(-5L),(-3L),1L},{(-9L),(-3L),0x64C366BCL,0x76F5085BL,0x65A6DB7FL,0x2E32F5E3L,(-5L),(-3L),1L},{(-9L),(-3L),0x64C366BCL,0x76F5085BL,0x65A6DB7FL,0x2E32F5E3L,(-5L),(-3L),1L},{(-9L),(-3L),0x64C366BCL,0x76F5085BL,0x65A6DB7FL,0x2E32F5E3L,(-5L),(-3L),1L}},{{(-9L),(-3L),0x64C366BCL,0x76F5085BL,0x65A6DB7FL,0x2E32F5E3L,(-5L),(-3L),1L},{(-9L),(-3L),0x64C366BCL,0x76F5085BL,0x65A6DB7FL,0x2E32F5E3L,(-5L),(-3L),1L},{(-9L),(-3L),0x64C366BCL,0x76F5085BL,0x65A6DB7FL,0x2E32F5E3L,(-5L),(-3L),1L},{(-9L),(-3L),0x64C366BCL,0x76F5085BL,0x65A6DB7FL,0x2E32F5E3L,(-5L),(-3L),1L},{(-9L),(-3L),0x64C366BCL,0x76F5085BL,0x65A6DB7FL,0x2E32F5E3L,(-5L),(-3L),1L},{(-9L),(-3L),0x64C366BCL,0x76F5085BL,0x65A6DB7FL,0x2E32F5E3L,(-5L),(-3L),1L},{(-9L),(-3L),0x64C366BCL,0x76F5085BL,0x65A6DB7FL,0x2E32F5E3L,(-5L),(-3L),1L}}};
                        int i, j, k;
                        ++l_2221;
                        if (l_2224)
                            break;
                        if ((**p_2768->g_1888))
                            continue;
                        l_2226++;
                    }
                    p_2768->g_2231[0][6][2]++;
                    (*p_2768->g_1968) = &l_2216[0];
                    l_2235++;
                }
                else
                { /* block id: 803 */
                    int32_t *l_2241 = (void*)0;
                    for (p_2768->g_1302 = (-20); (p_2768->g_1302 >= 25); p_2768->g_1302 = safe_add_func_uint8_t_u_u(p_2768->g_1302, 2))
                    { /* block id: 806 */
                        int32_t l_2240 = 0x250E2124L;
                        (**p_2768->g_1956) = l_2240;
                        return l_2241;
                    }
                    (*p_2768->g_1968) = (p_40 , (*p_2768->g_1968));
                }
                for (l_2173 = 0; (l_2173 != 9); ++l_2173)
                { /* block id: 814 */
                    uint32_t l_2256 = 0x4F56269AL;
                    int32_t l_2257 = 1L;
                    VECTOR(int8_t, 8) l_2288 = (VECTOR(int8_t, 8))(0x52L, (VECTOR(int8_t, 4))(0x52L, (VECTOR(int8_t, 2))(0x52L, 0x3FL), 0x3FL), 0x3FL, 0x52L, 0x3FL);
                    int i;
                    l_2244 &= 0L;
                    l_2218 = (((safe_rshift_func_uint8_t_u_s((safe_mod_func_int32_t_s_s(((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),int32_t,((VECTOR(int32_t, 2))(l_2249.s28)), (int32_t)(safe_sub_func_int32_t_s_s(0x6B40D3D2L, (((VECTOR(int32_t, 8))(l_2252.wxxxwzyz)).s7 >= (p_40 == (((p_2768->g_1756.z >= (safe_div_func_int16_t_s_s(p_2768->g_1926.s0, (l_2217 ^= ((l_1871[5][0][0] == p_38) , FAKE_DIVERGE(p_2768->group_0_offset, get_group_id(0), 10)))))) | ((*l_2088) = (l_2255 &= p_40))) <= l_2256))))), (int32_t)l_2256))).even, 1L)), p_40)) != p_40) ^ p_40);
                    p_39 = &p_40;
                    if ((*l_2088))
                    { /* block id: 821 */
                        int8_t l_2258 = 0x44L;
                        uint64_t l_2259 = 0x26519178668F5C4DL;
                        l_2259++;
                        p_38 = (void*)0;
                    }
                    else
                    { /* block id: 824 */
                        uint32_t l_2299[4] = {0x73488AF6L,0x73488AF6L,0x73488AF6L,0x73488AF6L};
                        int i;
                        p_39 = func_64((safe_rshift_func_int16_t_s_u((-2L), l_2264)), (safe_sub_func_uint16_t_u_u(((((VECTOR(int64_t, 2))(0x7CE797D8BC404B7CL, 8L)).hi <= (p_2768->g_1307.s2 = ((*l_2088) >= (safe_div_func_uint8_t_u_u((((VECTOR(uint16_t, 16))(l_2269.s0255123764533346)).sa <= (((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(add_sat(((VECTOR(uint16_t, 16))(65535UL, ((safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 2))(p_2768->g_2276.xx)).lo, 4)) , (safe_lshift_func_uint16_t_u_s(8UL, p_40))), ((VECTOR(uint16_t, 8))(hadd(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 16))(0x2A02L, 0xC93AL, 0x6BCCL, ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))(mad_hi(((VECTOR(uint16_t, 2))(0UL, 65526UL)).yyyx, ((VECTOR(uint16_t, 4))(abs(((VECTOR(int16_t, 8))(l_2283.sea76b66c)).hi))), ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))(p_2768->g_2286.yy)) + ((VECTOR(uint16_t, 2))(mad_sat(((VECTOR(uint16_t, 2))(abs_diff(((VECTOR(int16_t, 4))(add_sat(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(9L, (-1L))), 0x6AC6L, 0L)).zwxzxyzy || ((VECTOR(int16_t, 2))(upsample(((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 2))(l_2287.ww)), ((VECTOR(int8_t, 16))(l_2288.s6455233366761256)).s24))), ((VECTOR(uint8_t, 8))(l_2289.xxwwyxwz)).s15))).yyxyxxyx))).odd && ((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 16))(1L, ((((4294967295UL < (+(safe_sub_func_uint8_t_u_u(p_2768->g_279, ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 16))(255UL, ((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 8))(hadd(((VECTOR(uint8_t, 2))(0x05L, 0xABL)).xxxxyyxx, ((VECTOR(uint8_t, 2))(249UL, 251UL)).xyxyxxyy))).s45, ((VECTOR(uint8_t, 2))(0x80L, 246UL))))), ((VECTOR(uint8_t, 4))(251UL, 0UL, 0x5CL, 0xB0L)), ((VECTOR(uint8_t, 2))(p_2768->g_2298.yy)), 0x57L, ((VECTOR(uint8_t, 4))(255UL)), 0x23L, 253UL)).lo + ((VECTOR(uint8_t, 8))(1UL))))).hi + ((VECTOR(uint8_t, 4))(0x7AL))))).yywwxyzxzzyxzxyw >> ((VECTOR(uint8_t, 16))(0x3FL))))).s7)))) | 18446744073709551613UL) > p_40) , l_2209.s2), (-1L), ((VECTOR(int16_t, 8))(0x7D91L)), 0x3551L, (-1L), ((VECTOR(int16_t, 2))(0x1C7EL)), (-1L))).s6a, ((VECTOR(int16_t, 2))(0x5728L)), ((VECTOR(int16_t, 2))(1L))))).yxyy))) && ((VECTOR(int16_t, 4))((-1L)))))), ((VECTOR(int16_t, 4))(0x2D3DL))))).lo, ((VECTOR(int16_t, 2))(0x482EL))))), ((VECTOR(uint16_t, 2))(0x6798L)), ((VECTOR(uint16_t, 2))(0xF79EL)))))))).xxyy))) + ((VECTOR(uint16_t, 4))(9UL))))), 0xA028L, l_2299[1], 65535UL, 0x2C33L, 65535UL, ((VECTOR(uint16_t, 4))(0UL)))).sd089 + ((VECTOR(uint16_t, 4))(0x3942L))))).wyxzzyzz, ((VECTOR(uint16_t, 8))(0UL))))), 65535UL, 6UL, l_2209.s1, 0x6B9CL, 65530UL, 65530UL)).sea, ((VECTOR(uint16_t, 2))(65535UL))))), 1UL, 0x7C84L)), p_40, p_40, 0x8267L, 65535UL)).s33 + ((VECTOR(uint16_t, 2))(0UL))))), 0UL, 0x7A20L)).lo + ((VECTOR(uint16_t, 2))(0x68F6L))))).hi ^ l_2299[1])), (-1L)))))) > 0x4AL), 0x4690L)), l_2300, p_40, p_2768);
                        if ((*l_2088))
                            continue;
                        p_38 = &l_2173;
                    }
                }
            }
            else
            { /* block id: 831 */
                VECTOR(uint64_t, 4) l_2325 = (VECTOR(uint64_t, 4))(18446744073709551606UL, (VECTOR(uint64_t, 2))(18446744073709551606UL, 0x596DFDA9CCA9141FL), 0x596DFDA9CCA9141FL);
                VECTOR(uint64_t, 8) l_2331 = (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x14F961D10D529759L), 0x14F961D10D529759L), 0x14F961D10D529759L, 1UL, 0x14F961D10D529759L);
                VECTOR(uint32_t, 16) l_2358 = (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 4294967289UL), 4294967289UL), 4294967289UL, 0UL, 4294967289UL, (VECTOR(uint32_t, 2))(0UL, 4294967289UL), (VECTOR(uint32_t, 2))(0UL, 4294967289UL), 0UL, 4294967289UL, 0UL, 4294967289UL);
                int64_t **l_2359 = &l_2048[2];
                int32_t l_2363[2][5] = {{2L,2L,2L,2L,2L},{2L,2L,2L,2L,2L}};
                int32_t l_2378 = 0x3DCFE204L;
                int i, j;
                for (p_2768->g_246 = 0; (p_2768->g_246 != 18); ++p_2768->g_246)
                { /* block id: 834 */
                    uint64_t l_2362 = 18446744073709551610UL;
                    uint32_t ***l_2364 = &l_2060;
                    int32_t l_2372 = 0x7E7E4F8EL;
                    int32_t ****l_2374[4][7] = {{&l_2373,&l_2373,(void*)0,&l_2373,(void*)0,&l_2373,&l_2373},{&l_2373,&l_2373,(void*)0,&l_2373,(void*)0,&l_2373,&l_2373},{&l_2373,&l_2373,(void*)0,&l_2373,(void*)0,&l_2373,&l_2373},{&l_2373,&l_2373,(void*)0,&l_2373,(void*)0,&l_2373,&l_2373}};
                    int i, j;
                    (*l_2088) = ((safe_lshift_func_int16_t_s_u(((*l_2137) = p_2768->g_277[0]), 11)) ^ (((safe_sub_func_uint8_t_u_u((((safe_lshift_func_int8_t_s_u((safe_mul_func_int16_t_s_s(0x6639L, FAKE_DIVERGE(p_2768->global_1_offset, get_global_id(1), 10))), 0)) && 0x4AL) & (*l_2088)), (l_2311 > (safe_div_func_uint64_t_u_u(((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 16))(add_sat(((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 8))(l_2322.xxzyyzxx)).s0177376445311274 << ((VECTOR(uint64_t, 16))(64))))), ((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 8))(l_2325.zyyxwxww)).s1205251551032456 + ((VECTOR(uint64_t, 8))(l_2326.s1c85a7a3)).s1761116416167561)))))).s8fde + ((VECTOR(uint64_t, 8))(add_sat(((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 2))(l_2329.xy)) + ((VECTOR(uint64_t, 8))(l_2330.yyyxyyyy)).s32))).xyyyyyyy, ((VECTOR(uint64_t, 16))(sub_sat(((VECTOR(uint64_t, 8))(l_2331.s71411000)).s2263005213064367, ((VECTOR(uint64_t, 16))(p_2768->g_2332.s3202346454627543))))).lo))).even))), 1UL, 0UL, 18446744073709551610UL, 0x81DAB3BAC371C8D5L)).s44 + ((VECTOR(uint64_t, 2))(5UL, 0xDB757B117536E890L))))).xyyy + ((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 2))(0UL, 18446744073709551614UL)).xyxx + ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 2))(1UL, 0xFEFC0338095658E9L)) + ((VECTOR(uint64_t, 16))(max(((VECTOR(uint64_t, 4))((p_40 > ((safe_lshift_func_uint8_t_u_u(p_2768->g_786, (l_2249.sb < ((safe_sub_func_int8_t_s_s((safe_sub_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), p_40)), p_40)) , p_40)))) == p_40)), ((VECTOR(uint64_t, 2))(0x87875FFEDC3CD80BL)), 0x7688FFF49DA41130L)).xwxzwzxwzxzxzwxz, (uint64_t)p_40))).s46))), 0x12B436440AFC045EL, 18446744073709551615UL)))))))).x, p_2768->g_484.s9))))) , l_2345) == l_2345));
                    l_2363[1][2] = (safe_rshift_func_uint8_t_u_s(((((*l_2088) = l_2325.x) | ((safe_div_func_int32_t_s_s((l_2362 = ((safe_add_func_uint16_t_u_u(p_40, (p_40 , (safe_mod_func_uint64_t_u_u((safe_add_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), (((p_40 & (safe_mod_func_uint32_t_u_u(((p_38 == p_39) , ((VECTOR(uint32_t, 16))(l_2358.sf024a51d35efe8de)).s4), 0x794B3DDFL))) ^ ((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),VECTOR(int32_t, 2),((VECTOR(int32_t, 8))((((l_2359 == l_2360[3]) ^ l_2361) && 8L), 0x5C7DFEECL, ((VECTOR(int32_t, 4))((-4L))), 0x06C82721L, 0x35D12131L)).s07, ((VECTOR(int32_t, 2))(0x52F0F878L)), ((VECTOR(int32_t, 2))(0x24655CC9L))))).yxxx, ((VECTOR(int32_t, 4))(0x5AE961F8L))))).x) == p_2768->g_151.y))), FAKE_DIVERGE(p_2768->group_0_offset, get_group_id(0), 10)))))) != GROUP_DIVERGE(0, 1))), 0xDEB06853L)) || l_2155.y)) || 6UL), p_40));
                    (*l_2088) = ((void*)0 != l_2364);
                    l_2378 = ((p_40 , l_2220[2]) == ((((-1L) <= p_40) , ((safe_mod_func_uint64_t_u_u(0x8BD9CE0BA329D911L, (p_2768->g_714.s0 |= ((1L ^ 0x1A29C40DDD4A2048L) & (safe_add_func_uint32_t_u_u((l_2363[0][0] = FAKE_DIVERGE(p_2768->local_0_offset, get_local_id(0), 10)), (((VECTOR(uint16_t, 16))(l_2369.yyxxxyxxxxyyyyyx)).s6 <= (safe_rshift_func_uint16_t_u_s(l_2372, (p_2768->g_1093.y = ((p_2768->g_2375[0][0] = l_2373) != &p_2768->g_2376))))))))))) > 0x314FB757L)) <= p_2768->g_871.sd));
                }
            }
        }
        for (l_2361 = (-23); (l_2361 <= 44); l_2361 = safe_add_func_uint16_t_u_u(l_2361, 5))
        { /* block id: 851 */
            int64_t *l_2381[7][7][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
            VECTOR(int32_t, 2) l_2394 = (VECTOR(int32_t, 2))((-4L), 1L);
            int32_t l_2402 = (-9L);
            int32_t l_2403 = 0x3924EBF4L;
            int32_t l_2428 = 0x3258789FL;
            uint8_t l_2440 = 0x14L;
            int32_t l_2449 = 0x35C86146L;
            int32_t l_2450 = 0x70D8209AL;
            VECTOR(uint64_t, 2) l_2489 = (VECTOR(uint64_t, 2))(0xCB097F98ECC125BBL, 1UL);
            uint32_t l_2509 = 0x2E47FC59L;
            int32_t l_2514 = 0x3015C32FL;
            int64_t l_2519[2][6];
            VECTOR(int16_t, 16) l_2529 = (VECTOR(int16_t, 16))(0x1D78L, (VECTOR(int16_t, 4))(0x1D78L, (VECTOR(int16_t, 2))(0x1D78L, (-8L)), (-8L)), (-8L), 0x1D78L, (-8L), (VECTOR(int16_t, 2))(0x1D78L, (-8L)), (VECTOR(int16_t, 2))(0x1D78L, (-8L)), 0x1D78L, (-8L), 0x1D78L, (-8L));
            VECTOR(int16_t, 2) l_2530 = (VECTOR(int16_t, 2))(0L, 0x5BFBL);
            uint64_t **l_2540 = &p_2768->g_1190;
            uint8_t l_2541 = 0x10L;
            int32_t **l_2548 = &p_2768->g_2377;
            int32_t l_2549 = 0x35FA4917L;
            int16_t l_2576 = 1L;
            int32_t *l_2620 = &l_2402;
            VECTOR(int32_t, 8) l_2649 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L);
            VECTOR(uint32_t, 16) l_2653 = (VECTOR(uint32_t, 16))(4294967291UL, (VECTOR(uint32_t, 4))(4294967291UL, (VECTOR(uint32_t, 2))(4294967291UL, 0xD240CE14L), 0xD240CE14L), 0xD240CE14L, 4294967291UL, 0xD240CE14L, (VECTOR(uint32_t, 2))(4294967291UL, 0xD240CE14L), (VECTOR(uint32_t, 2))(4294967291UL, 0xD240CE14L), 4294967291UL, 0xD240CE14L, 4294967291UL, 0xD240CE14L);
            int i, j, k;
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 6; j++)
                    l_2519[i][j] = 0x15B52BAF6FAAB9B4L;
            }
            if ((p_40 & ((void*)0 == l_2381[1][0][0])))
            { /* block id: 852 */
                int16_t *l_2383 = &p_2768->g_1555;
                int32_t ****l_2391 = &p_2768->g_2389;
                VECTOR(int32_t, 2) l_2393 = (VECTOR(int32_t, 2))(0x54A5B0F8L, (-8L));
                int32_t l_2397[7] = {0x6B4EAF75L,(-3L),0x6B4EAF75L,0x6B4EAF75L,(-3L),0x6B4EAF75L,0x6B4EAF75L};
                uint32_t l_2451[1];
                VECTOR(uint8_t, 4) l_2472 = (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x0AL), 0x0AL);
                VECTOR(uint8_t, 2) l_2505 = (VECTOR(uint8_t, 2))(1UL, 0x8EL);
                int16_t l_2513 = 6L;
                VECTOR(int16_t, 8) l_2524 = (VECTOR(int16_t, 8))(7L, (VECTOR(int16_t, 4))(7L, (VECTOR(int16_t, 2))(7L, (-8L)), (-8L)), (-8L), 7L, (-8L));
                VECTOR(int16_t, 16) l_2525 = (VECTOR(int16_t, 16))(0x295EL, (VECTOR(int16_t, 4))(0x295EL, (VECTOR(int16_t, 2))(0x295EL, 0x1F48L), 0x1F48L), 0x1F48L, 0x295EL, 0x1F48L, (VECTOR(int16_t, 2))(0x295EL, 0x1F48L), (VECTOR(int16_t, 2))(0x295EL, 0x1F48L), 0x295EL, 0x1F48L, 0x295EL, 0x1F48L);
                int i;
                for (i = 0; i < 1; i++)
                    l_2451[i] = 0xA0EBC6D0L;
                if ((((p_40 >= (((((+((VECTOR(int32_t, 16))((!((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),int32_t,((VECTOR(int32_t, 16))(0x1E4C2AFDL, 0x1A50B735L, ((VECTOR(int32_t, 8))(p_2768->g_2382.zywzxzzw)), ((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))((((*l_2383) = 1L) <= (safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))((-1L), p_40, (-7L), ((VECTOR(int16_t, 8))(hadd(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))(l_2386.s06ca)).odd >= ((VECTOR(int16_t, 8))(((((safe_rshift_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), (((p_2768->g_2392 = ((*l_2391) = p_2768->g_2389)) == (void*)0) > (((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 2))(l_2393.yy)).yyxyyxyy || ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(l_2394.yyxyxxxy)).s07 && ((VECTOR(int32_t, 16))(p_2768->g_2395.xxxxyyyyxxyyyyyx)).sd2))), 0x319D8E61L, 0L)).yxwyxzxx))).s6 , ((l_2394.x = l_2393.y) & (l_2397[3] = ((*l_2088) ^= l_2396[2])))) || (0xCFA9C555D38AF475L ^ (safe_sub_func_uint64_t_u_u(((&p_2768->g_995 != l_2400) | 0x6E82215CL), 1L)))) | FAKE_DIVERGE(p_2768->global_2_offset, get_global_id(2), 10))))) , p_40) >= p_40) > 0x3523L), 0x1882L, ((VECTOR(int16_t, 2))(0L)), p_40, (-1L), 0x2F3CL, (-1L))).s01))).xxxyyyyy, ((VECTOR(int16_t, 8))(0x1966L))))), ((VECTOR(int16_t, 4))(0x3A81L)), 0x77B8L)).s49 < ((VECTOR(int16_t, 2))(0x44FFL))))).xxxxyyyyxxxyxyyx, ((VECTOR(int16_t, 16))(0L))))).s3, (****p_2768->g_1687)))), ((VECTOR(int32_t, 2))(0L)), (-1L))).lo, ((VECTOR(int32_t, 2))((-1L))), ((VECTOR(int32_t, 2))((-1L)))))).yyxy, ((VECTOR(int32_t, 4))(0x746BEEC9L))))).odd | ((VECTOR(int32_t, 2))(0x62AA2190L))))).xxxx | ((VECTOR(int32_t, 4))((-9L)))))).odd, ((VECTOR(int32_t, 2))(0x202C56C1L))))), (-10L), (-2L))), ((VECTOR(int32_t, 4))(0x1E86F5E1L)), ((VECTOR(int32_t, 4))(0x3958E09CL))))), ((VECTOR(int32_t, 4))(0x3FBBF2AEL))))).hi, ((VECTOR(int32_t, 2))(3L))))), 0L, 0x4C20610EL, 0x12579326L, 0x39637146L)).s41, (int32_t)p_40, (int32_t)l_2394.x))).yyxxxxyyxyyxxxxy && ((VECTOR(int32_t, 16))(4L)))))))).sa) <= l_2402) , 65535UL) & 0x50BCL) , l_2403)) != p_40) & l_2403))
                { /* block id: 859 */
                    return l_2404;
                }
                else
                { /* block id: 861 */
                    int32_t l_2443 = 0L;
                    int32_t l_2444[4][10][6] = {{{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL}},{{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL}},{{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL}},{{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL},{0x195D6193L,0L,0L,0L,1L,0x5D03ECBBL}}};
                    uint64_t l_2454 = 18446744073709551609UL;
                    VECTOR(uint8_t, 2) l_2469 = (VECTOR(uint8_t, 2))(1UL, 254UL);
                    uint32_t *l_2512[5][2][6] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
                    int8_t ***l_2515 = &l_1799;
                    int i, j, k;
                    if ((safe_lshift_func_int8_t_s_s(p_40, 5)))
                    { /* block id: 862 */
                        uint32_t *l_2435 = (void*)0;
                        uint32_t *l_2436 = (void*)0;
                        uint32_t *l_2437 = &l_2396[2];
                        int32_t l_2439 = (-4L);
                        l_2088 = func_53(((safe_rshift_func_int16_t_s_s(((*l_2383) = (((safe_sub_func_uint8_t_u_u(p_2768->g_1724.s3, p_40)) & ((VECTOR(uint8_t, 2))(add_sat(((VECTOR(uint8_t, 2))(6UL, 0xB1L)), ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 8))(sub_sat(((VECTOR(uint8_t, 16))(247UL, ((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 2))(0x09L, 0x61L)).xxyyxyxx, ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 2))(sub_sat(((VECTOR(uint8_t, 2))(0UL, 248UL)), ((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 16))(p_2768->g_2419.s7766076101464447)).lo, (uint8_t)(((l_2439 ^= (safe_sub_func_uint64_t_u_u(p_40, ((((*l_1860) = 0xC4L) <= ((safe_div_func_uint64_t_u_u(((safe_rshift_func_uint16_t_u_u(((safe_mod_func_uint16_t_u_u(0x0C0BL, (((l_2394.x && ((VECTOR(int32_t, 16))(clz(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))((-1L), (l_2438 = (l_2428 != ((*l_2437) = (safe_mod_func_uint64_t_u_u(((*l_2088) = ((*l_2088) > ((safe_add_func_int8_t_s_s((safe_div_func_uint8_t_u_u(l_2428, p_2768->g_1816.s0)), p_2768->g_208.sa)) && 0x3C0F08AD983CF35CL))), p_2768->g_2115.x))))), 0x6EEB2E4CL, 0x16F572FDL)).lo & ((VECTOR(int32_t, 2))(0x21411297L))))), 0L, ((VECTOR(int32_t, 2))(3L)), (**p_2768->g_1956), 0x723BBC9BL, (-9L))) < ((VECTOR(int32_t, 8))(0L))))).s5034251040247027, ((VECTOR(int32_t, 16))(0x5E86E611L))))) != ((VECTOR(int32_t, 16))(0x6FCF16DFL)))))))).s3) | 0xAEAEA3EFL) || p_2768->g_724.s1))) >= p_40), p_40)) <= p_40), l_2394.y)) & p_2768->g_1114.x)) && (-2L))))) && 0xD0D10A6F937A318CL) || p_40)))).s72))).xxxx + ((VECTOR(uint8_t, 4))(0x78L))))).xwxxyzzw))), ((VECTOR(uint8_t, 4))(0UL)), 0x3EL, 255UL, 1UL)).hi, ((VECTOR(uint8_t, 8))(0xC9L))))).s36 - ((VECTOR(uint8_t, 2))(1UL))))), 6UL, ((VECTOR(uint8_t, 4))(0x4DL)), p_40, ((VECTOR(uint8_t, 8))(0x78L)))) & ((VECTOR(uint8_t, 16))(0x66L))))).s8a << ((VECTOR(uint8_t, 2))(8))))) + ((VECTOR(uint8_t, 2))(255UL)))))))).even) & 0xDEL)), 9)) , (*p_2768->g_1888)), l_2437, p_40, p_40, l_2440, p_2768);
                        (*p_2768->g_1956) = l_2441;
                    }
                    else
                    { /* block id: 871 */
                        int16_t l_2442 = 0x1475L;
                        int32_t l_2445 = (-6L);
                        int32_t l_2446 = 0x743AFEDAL;
                        int32_t l_2447 = 0x1199EF83L;
                        int32_t l_2448[8] = {0x5E454584L,0x5E454584L,0x5E454584L,0x5E454584L,0x5E454584L,0x5E454584L,0x5E454584L,0x5E454584L};
                        VECTOR(uint8_t, 4) l_2471 = (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x47L), 0x47L);
                        VECTOR(uint64_t, 2) l_2478 = (VECTOR(uint64_t, 2))(0x9A6B06BC067AC0F1L, 1UL);
                        VECTOR(uint8_t, 16) l_2507 = (VECTOR(uint8_t, 16))(0xBBL, (VECTOR(uint8_t, 4))(0xBBL, (VECTOR(uint8_t, 2))(0xBBL, 0xC4L), 0xC4L), 0xC4L, 0xBBL, 0xC4L, (VECTOR(uint8_t, 2))(0xBBL, 0xC4L), (VECTOR(uint8_t, 2))(0xBBL, 0xC4L), 0xBBL, 0xC4L, 0xBBL, 0xC4L);
                        int i;
                        l_2451[0]++;
                        p_38 = (void*)0;
                        if (l_2454)
                            break;
                        l_2450 = ((safe_rshift_func_uint8_t_u_u((0x1586998FL || (safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 8))(((l_2402 = (safe_rshift_func_uint8_t_u_s((l_2461 != (((safe_rshift_func_uint8_t_u_u(((*l_1872) = (65535UL | (((VECTOR(uint32_t, 4))(p_2768->g_2464.s2963)).z , 0x71C5L))), 1)) != ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 16))(clz(((VECTOR(uint8_t, 8))(mul_hi(((VECTOR(uint8_t, 4))(l_2469.xxyx)).xzwzwwzy, ((VECTOR(uint8_t, 2))(p_2768->g_2470.sd0)).yyyxyxxy))).s1522607543757754))).s855e, ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 8))(l_2471.xwzxxxyy)).s73 ^ ((VECTOR(uint8_t, 4))(l_2472.yzyz)).odd))).yxyx))).odd + ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 8))(p_2768->g_2475.yyyyyyyx)).s6200001024716133 - ((VECTOR(uint8_t, 4))(l_2476.s377e)).ywxwyxzwxwzzxxzy))).s3f))).xyxxyxxxxxyyyxyy + ((VECTOR(uint8_t, 2))(0x3AL, 0x5FL)).xxxyxxxyxxxyxyxy))).s7) , (void*)0)), (safe_unary_minus_func_uint16_t_u((l_2449 = ((p_2768->g_472.w = (p_40 & ((VECTOR(uint64_t, 8))(l_2478.xyyxxyxx)).s2)) || ((safe_div_func_int16_t_s_s((((safe_sub_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(p_2768->g_2483.sd4)), ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 16))(mul_hi(((VECTOR(uint64_t, 8))(l_2486.s946a7292)).s2433420407224154, ((VECTOR(uint64_t, 16))(max(((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 16))(0xA248FE3576FB40E0L, 0xEE8F6307A567A439L, 1UL, 18446744073709551615UL, ((VECTOR(uint64_t, 8))(l_2489.yxyyyxyy)), (safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))(l_2496.s6464517117033225)).s07 + ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(247UL, 0x76L)) + ((VECTOR(uint8_t, 8))((+((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(p_2768->g_2499.s11)), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(0UL, 255UL)), 1UL, 0xE9L)), 255UL, 4UL))))).s51))), 3UL, 8UL)), 247UL, 246UL, 0xADL, 0x7CL)).s23))) << ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))(l_2502.xyxyyyyx)) + ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))(l_2505.yyxxyyxx)) + ((VECTOR(uint8_t, 8))(rotate(((VECTOR(uint8_t, 16))(mad_sat(((VECTOR(uint8_t, 2))(0UL, 0UL)).yxxxxxyyyxyxxxyx, ((VECTOR(uint8_t, 2))(0x0EL, 0UL)).yxyyyyyxxyxyyxxx, ((VECTOR(uint8_t, 4))(p_2768->g_2506.yyyx)).ywxzwxzyzywzzxwz))).even, ((VECTOR(uint8_t, 4))(l_2507.s6ada)).xyzxyzyz))))))))).s55))).even, (((void*)0 == &l_2381[5][5][0]) <= (((FAKE_DIVERGE(p_2768->local_2_offset, get_local_id(2), 10) < ((VECTOR(int8_t, 4))(l_2508.s0772)).y) || (++l_2509)) >= ((*l_2088) = ((+(((0x51BCL <= l_2444[2][8][4]) , l_2512[2][0][5]) != p_39)) , FAKE_DIVERGE(p_2768->global_0_offset, get_global_id(0), 10))))))), ((VECTOR(uint64_t, 2))(0x8D779811D25F690BL)), 0xD20E7016CAD1BBD7L)) + ((VECTOR(uint64_t, 16))(18446744073709551607UL))))), ((VECTOR(uint64_t, 16))(0x6A7973A1FD71047AL)))))))).s77 + ((VECTOR(uint64_t, 2))(0x89B3C8B381C5A6FFL))))), p_40, p_40, l_2513, 1UL, 8UL, 18446744073709551615UL, ((VECTOR(uint64_t, 2))(0UL)), ((VECTOR(uint64_t, 2))(8UL)), 0xEF02D069291FAC51L, 0x5C7D184FC29581D0L)).s1, l_2514)) , l_2515) != (void*)0), l_2449)) ^ p_40)))))))) , 0xF6L), l_2428, 0x05L, 0x93L, ((VECTOR(uint8_t, 2))(251UL)), 0xA7L, 0x2EL)).s0, 0x59L))), p_2768->g_393)) && p_40);
                    }
                }
                (*l_2441) = (safe_mod_func_int8_t_s_s(((((VECTOR(int8_t, 2))(l_2518.xx)).hi < l_2519[1][3]) , (p_2768->g_2520 , (l_2543 = (safe_add_func_int16_t_s_s(l_2523, (0x13L >= ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 4))(0x69L, ((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 16))(0L, (((((((*l_2383) = ((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 2))(l_2524.s66)).xyxxyyxx, ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 16))(l_2525.sf4006659241b9059)).hi, ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(5L, 0x6D96L)), ((VECTOR(int16_t, 4))(l_2526.s5633)), 7L, 3L)).s4105034562023340 && ((VECTOR(int16_t, 8))(p_2768->g_2527.yyxyxyyy)).s4071007763252414))).odd, ((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 4))(l_2528.yzww)).even, ((VECTOR(int16_t, 2))(l_2529.s82))))).xxxxyyxx))) > ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 8))(hadd(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 2))(clz(((VECTOR(int16_t, 2))(l_2530.yy))))), ((VECTOR(int16_t, 2))((-1L), (-2L)))))), (-3L), 0L)).xxwyxwzw, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 16))((safe_mod_func_int16_t_s_s(((*l_2441) , ((p_2768->g_207.s0 ^ (-5L)) > ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 16))((safe_lshift_func_int8_t_s_u(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))(l_2535.xyyxxxxx)) <= ((VECTOR(int8_t, 8))(l_2536.xxxxyyyy))))).s2, 6)), ((VECTOR(int8_t, 4))((~((VECTOR(int8_t, 16))(l_2537.xyxyyyxxyxyxxxyx)).s746d))), 0x06L, 0x44L, p_40, ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))(p_2768->g_2538.s40143130)) && ((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 2))(0x5EL, (-1L))).xyyy, ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 2))(l_2539.s93)), ((VECTOR(int8_t, 8))(((l_2540 != (void*)0) == 0x23L), 0x0CL, ((VECTOR(int8_t, 4))(0x0AL)), (-2L), 0x26L)).s46))).xxyyxxyy && ((VECTOR(int8_t, 8))((-6L)))))).lo))).odd > ((VECTOR(int8_t, 2))(1L))))).yxxx, ((VECTOR(int8_t, 4))(0x0AL))))).ywzxxyyz))))).lo && ((VECTOR(int8_t, 8))(0L))))).s7172330406661040, ((VECTOR(int8_t, 16))(0x31L))))).s3e == ((VECTOR(int8_t, 2))((-3L)))))), 0L, 0x07L)).hi, ((VECTOR(int8_t, 2))(0x20L))))), ((VECTOR(int8_t, 2))(0L))))).xyyyxxyyyxxxyxxy < ((VECTOR(int8_t, 16))(0x44L))))).sf)), p_40)), (*l_2088), p_40, 0x2F10L, 0x234CL, ((VECTOR(int16_t, 2))(0L)), ((VECTOR(int16_t, 2))(0x3F16L)), 7L, 0x12C5L, p_40, 0x7200L, 0x459DL, (-1L), 0x0CF3L)).s97dd < ((VECTOR(int16_t, 4))(0x67EBL))))), 0x05E2L, ((VECTOR(int16_t, 2))(0x30CBL)), ((VECTOR(int16_t, 2))((-1L))), (-8L), p_2768->g_2382.z, ((VECTOR(int16_t, 4))(0x54B6L)), 0x2D71L)).odd))).s4672272002653553 && ((VECTOR(int16_t, 16))(0x5852L))))).hi)))))).s2) , l_2541) , l_2542) || (*l_2088)) | p_40) <= (-1L)), 0x50L, ((VECTOR(int8_t, 8))(0x60L)), ((VECTOR(int8_t, 4))(0x61L)), 0x79L)).s07, ((VECTOR(int8_t, 2))((-2L))), ((VECTOR(int8_t, 2))(0x27L))))).yxyx | ((VECTOR(int8_t, 4))(0x41L))))).odd, ((VECTOR(int8_t, 2))(5L))))), 0x68L)).xxxyyyxw != ((VECTOR(int8_t, 8))(0x11L))))).s2)))))), 248UL));
                if (l_2394.y)
                    break;
            }
            else
            { /* block id: 888 */
                int32_t ***l_2546[1];
                int32_t l_2575 = (-1L);
                uint32_t ***l_2615 = &p_2768->g_2199;
                VECTOR(int16_t, 16) l_2664 = (VECTOR(int16_t, 16))(0x3C7FL, (VECTOR(int16_t, 4))(0x3C7FL, (VECTOR(int16_t, 2))(0x3C7FL, 1L), 1L), 1L, 0x3C7FL, 1L, (VECTOR(int16_t, 2))(0x3C7FL, 1L), (VECTOR(int16_t, 2))(0x3C7FL, 1L), 0x3C7FL, 1L, 0x3C7FL, 1L);
                uint32_t *l_2669[4];
                int32_t l_2670 = 0x76B3AB92L;
                uint64_t *l_2671 = &p_2768->g_1557;
                int32_t l_2672 = (-10L);
                int i;
                for (i = 0; i < 1; i++)
                    l_2546[i] = &p_2768->g_2376;
                for (i = 0; i < 4; i++)
                    l_2669[i] = (void*)0;
                if (((((VECTOR(int64_t, 2))(l_2544.zz)).lo && (((p_40 & p_40) <= (((l_2547 = l_2545) == l_2548) , p_40)) , 18446744073709551607UL)) , l_2549))
                { /* block id: 890 */
                    uint32_t l_2561 = 1UL;
                    l_2449 |= (safe_sub_func_int64_t_s_s((p_2768->g_742.s0 & ((((+(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(252UL, 8UL)) | ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 8))(l_2554.zwzwzzyx)).s4047605264423107 + ((VECTOR(uint8_t, 2))(255UL, 255UL)).yyyxxyxyxyyyxxxx))).s4b))).even || (safe_mul_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_u((l_2561 > l_2549), (p_40 && l_2561))), l_2561)), (safe_mod_func_int8_t_s_s(((VECTOR(int8_t, 2))(0x40L, 0x11L)).lo, (((safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(0UL, 0x0D6CL)).hi, (safe_sub_func_int8_t_s_s((l_2519[1][2] != p_40), (l_2394.y |= (+(((((safe_add_func_int32_t_s_s(((safe_mul_func_uint16_t_u_u((safe_sub_func_int16_t_s_s((((safe_unary_minus_func_int16_t_s(p_2768->g_2006.x)) , (**p_2768->g_1888)) < l_2575), p_40)), l_2561)) , (**p_2768->g_1888)), p_40)) > GROUP_DIVERGE(0, 1)) & p_40) != p_40) | (-9L)))))))) , l_2561) & p_40))))))) , (*l_2404)) || l_2489.y) && l_2575)), p_2768->g_151.y));
                    if ((*l_2088))
                        continue;
                }
                else
                { /* block id: 894 */
                    uint32_t l_2617 = 0xC8FDAF6EL;
                    uint32_t *l_2619 = &l_2396[0];
                    (*l_2441) = (l_2576 ^ ((p_2768->g_884.s5 = (l_2575 = (((*l_2619) = (safe_div_func_int64_t_s_s((safe_rshift_func_int8_t_s_u(((safe_unary_minus_func_int32_t_s(((safe_sub_func_uint8_t_u_u(((((safe_mod_func_int64_t_s_s((safe_div_func_uint16_t_u_u(l_2575, (safe_sub_func_uint64_t_u_u(0xB1138124AA6B61D0L, GROUP_DIVERGE(1, 1))))), FAKE_DIVERGE(p_2768->group_1_offset, get_group_id(1), 10))) < (((-1L) | (safe_div_func_uint16_t_u_u(((safe_lshift_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u(((safe_mul_func_int16_t_s_s((safe_mod_func_int64_t_s_s((safe_sub_func_int16_t_s_s(p_40, (safe_rshift_func_uint8_t_u_u((safe_unary_minus_func_int64_t_s(l_2575)), ((safe_mod_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(((*l_1860) = ((safe_mul_func_uint16_t_u_u((safe_add_func_uint8_t_u_u(((((((l_2394.y &= (((*l_1872) = (safe_sub_func_uint32_t_u_u((l_2615 == l_2616), ((-6L) || l_2575)))) != p_40)) <= p_40) >= l_2617) , (*l_2441)) == l_2575) < 8UL), 3UL)), 65530UL)) && 0x7952C968F55A1D33L)), 0x57L)), 0x3C98L)) , p_40))))), l_2618[2])), p_40)) , 0x688EL), l_2489.x)), p_2768->g_1488[0][4])) <= 0UL), p_40))) , l_2530.x)) && l_2549) < p_40), p_40)) != (*l_2441)))) > (*l_2088)), 6)), p_2768->g_2026.s1))) <= (*l_2088)))) ^ l_2617));
                    return l_2622[7];
                }
                (*l_2441) |= (safe_rshift_func_int8_t_s_s((safe_div_func_uint32_t_u_u((((safe_mod_func_uint64_t_u_u(((*l_2671) &= ((VECTOR(uint64_t, 16))((0x6EA0F13CB73B4E65L >= (*l_2620)), 0UL, 0x764B159852464C81L, ((VECTOR(uint64_t, 4))(l_2629.sf101)), (safe_lshift_func_uint16_t_u_u((safe_sub_func_int32_t_s_s((l_2575 <= (safe_lshift_func_int16_t_s_u(((safe_lshift_func_uint8_t_u_s(255UL, 0)) <= (safe_mul_func_uint8_t_u_u(((0UL | (0xCAE2L <= 0xC5FDL)) != (safe_div_func_uint64_t_u_u((safe_mod_func_uint64_t_u_u((((VECTOR(uint32_t, 8))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 8))(add_sat(((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 2))(0x7708216EL, 4294967295UL)).xyyyyyxyxxxyyxyx * ((VECTOR(uint32_t, 8))(safe_clamp_func(VECTOR(uint32_t, 8),VECTOR(uint32_t, 8),((VECTOR(uint32_t, 2))(l_2646.yy)).yxyxyxxx, ((VECTOR(uint32_t, 8))(add_sat(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 16))(mul_hi(((VECTOR(uint32_t, 2))(0xC7E654A2L, 1UL)).yxyyyxxxxyxyyxxy, ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 4))(add_sat(((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 4))(abs(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))(l_2649.s1434752256006674)).lo && ((VECTOR(int32_t, 2))(0x010C8C8BL, 0x4A734D1BL)).yxyyyxxx))).lo))) ^ ((VECTOR(uint32_t, 8))(p_2768->g_2650.s14132621)).odd))), ((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 2))(l_2653.s64)).yxxy + ((VECTOR(uint32_t, 4))(hadd(((VECTOR(uint32_t, 16))(l_2654.s1640740523334261)).s251e, ((VECTOR(uint32_t, 2))(0xC4450BD8L, 0x82B02BF4L)).yyyy)))))).xywxzyyy ^ ((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(0x4B945B9AL, 0x59FC22E1L)), 1UL, 0UL)) + ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(l_2659.yy)), 1UL, 1UL))))).xywyyzwx + ((VECTOR(uint32_t, 16))((l_2670 |= (GROUP_DIVERGE(0, 1) != (safe_mul_func_int8_t_s_s((safe_div_func_uint16_t_u_u(((((VECTOR(uint16_t, 16))(rotate(((VECTOR(uint16_t, 4))(p_40, 0x2615L, 65527UL, 0xB328L)).wyzzywzzywzzzzyy, ((VECTOR(uint16_t, 2))(abs_diff(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))(l_2664.sc4ad8ade6fbeebd1)).odd && ((VECTOR(int16_t, 16))(0x46C3L, (-1L), 0x4615L, 0x00E6L, (safe_add_func_int16_t_s_s((safe_lshift_func_int8_t_s_s(((*l_2620) != p_2768->g_422), p_40)), 65535UL)), 0x440AL, p_40, ((VECTOR(int16_t, 4))(0L)), 0L, (*l_2620), ((VECTOR(int16_t, 2))(0L)), 0x6E6BL)).odd))).s20, ((VECTOR(int16_t, 2))(0x1432L))))).yyyxyyyxxxxxyyyy))).sa == p_2768->g_1307.sa) == 0x0CA6DAC4B4410414L), (*l_2404))), 0x2FL)))), 4294967295UL, 0x60967340L, l_2575, ((VECTOR(uint32_t, 8))(0x0EBF8B90L)), ((VECTOR(uint32_t, 2))(0UL)), 9UL, 4294967295UL)).even)))))).hi))) | ((VECTOR(uint32_t, 4))(0xC13CC75CL))))).wzyyxyxwyzywwwww))).s48 + ((VECTOR(uint32_t, 2))(1UL))))), 0x2BEB761FL, 0x714AA10CL, 0x6CC4DF94L, 0x6CFF58B8L, p_40, p_40, 0xEAC80A6AL, 0UL, p_40, 1UL, ((VECTOR(uint32_t, 2))(0xB32B3346L)), 0x937BA4DFL, 0xDD785DC6L)).hi, ((VECTOR(uint32_t, 8))(0x01E9F091L))))), ((VECTOR(uint32_t, 8))(4294967289UL))))).s7634365035327414))).lo, ((VECTOR(uint32_t, 8))(0x7051C6D4L))))), ((VECTOR(uint32_t, 8))(0x39B1A06FL)), ((VECTOR(uint32_t, 8))(0UL))))).s3 ^ p_40), l_2664.s8)), p_40))), p_40))), 15))), 0x54E26A97L)), l_2664.s8)), ((VECTOR(uint64_t, 8))(0x9B29085F39A6C5F8L)))).s0), p_2768->g_597.s2)) , p_40) != 0x44L), l_2672)), 3));
            }
        }
        (**p_2768->g_1888) = (((*l_2673) = (~FAKE_DIVERGE(p_2768->local_2_offset, get_local_id(2), 10))) ^ (((p_40 , &p_2768->g_448) == &p_2768->g_448) >= (0x5AF35FC9L < (safe_div_func_int32_t_s_s((255UL && 0L), (*l_2621))))));
    }
    l_2696 ^= (+(safe_mul_func_uint8_t_u_u(((((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(0x208EL, ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))(mul_hi(((VECTOR(int16_t, 16))(p_2768->g_2678.zwzwzwyxyzxyxwxy)), ((VECTOR(int16_t, 4))(0x71DEL, 0L, 7L, (-1L))).wzywyyxyxzxzxyxy))).lo && ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 8))(l_2679.s27264172)).s5024206655263200 && ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))(l_2680.wyzy)).lo && ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(p_2768->g_276, ((VECTOR(int16_t, 4))((~((*l_2088) || ((((safe_add_func_int32_t_s_s((**p_2768->g_1888), (!p_40))) ^ (((*l_2686) = l_2685) != (((p_40 > GROUP_DIVERGE(2, 1)) , ((safe_rshift_func_int16_t_s_s((safe_mod_func_uint8_t_u_u(((((safe_lshift_func_uint8_t_u_u((p_2768->g_1488[0][4] &= ((VECTOR(uint8_t, 2))(l_2693.s02)).even), 1)) , (!(p_40 || (p_40 | p_2768->g_2395.y)))) ^ (*l_2088)) , GROUP_DIVERGE(0, 1)), 0x20L)), p_2768->g_871.s5)) & p_40)) , l_2694))) & l_2695) || (*l_2088)))), p_2768->g_2464.se, (-7L), (-10L))), ((VECTOR(int16_t, 2))((-8L))), 0x1235L)).s06 & ((VECTOR(int16_t, 2))(1L))))).yxxyyyxy && ((VECTOR(int16_t, 8))((-2L)))))).s34))), 1L, 0x75A0L)).xxzwwxxxyzyyyxzy))).lo))).hi <= ((VECTOR(int16_t, 4))(8L))))), 0x328DL, 0x502DL, 0x3BF2L)).s20 && ((VECTOR(int16_t, 2))(0x38A0L))))), ((VECTOR(int16_t, 2))(0x5173L))))), ((VECTOR(int16_t, 4))(0x6022L)), (-1L), (-1L))).s4 < p_40) , GROUP_DIVERGE(1, 1)), p_40)));
    (*l_2088) &= ((VECTOR(int32_t, 2))((-7L), (-5L))).even;
    return l_2697;
}


/* ------------------------------------------ */
/* 
 * reads : p_2768->g_12 p_2768->g_6 p_2768->g_19 p_2768->g_89 p_2768->g_2 p_2768->g_93 p_2768->g_100 p_2768->g_103 p_2768->g_7 p_2768->g_141 p_2768->g_144 p_2768->g_136 p_2768->g_138 p_2768->g_193 p_2768->g_204 p_2768->g_97 p_2768->g_92 p_2768->g_1263 p_2768->g_1375 p_2768->g_623 p_2768->g_1451 p_2768->g_278 p_2768->g_411 p_2768->g_1093 p_2768->g_1469 p_2768->g_1261 p_2768->g_1262 p_2768->g_742 p_2768->g_649 p_2768->g_1488 p_2768->g_1302 p_2768->g_685 p_2768->g_1190 p_2768->g_422 p_2768->g_1511 p_2768->g_1512 p_2768->g_1517 p_2768->g_1520 p_2768->g_1521 p_2768->g_447 p_2768->g_448 p_2768->g_1532 p_2768->g_1533 p_2768->g_1187 p_2768->g_844 p_2768->g_140 p_2768->g_1557 p_2768->g_1575 p_2768->g_1624 p_2768->g_1670 p_2768->g_276 p_2768->g_1724 p_2768->g_845 p_2768->g_280 p_2768->g_1309 p_2768->g_472 p_2768->g_1312 p_2768->g_1690 p_2768->g_1691 p_2768->g_1747
 * writes: p_2768->g_12 p_2768->g_89 p_2768->g_92 p_2768->g_93 p_2768->g_97 p_2768->g_100 p_2768->g_103 p_2768->g_141 p_2768->g_144 p_2768->g_187 p_2768->g_1135 p_2768->g_138 p_2768->g_786 p_2768->g_507 p_2768->g_309 p_2768->g_389 p_2768->g_1462 p_2768->g_1488 p_2768->g_1302 p_2768->g_204 p_2768->g_140 p_2768->g_1557 p_2768->g_273 p_2768->g_1623 p_2768->g_411 p_2768->g_1656 p_2768->g_422 p_2768->g_19 p_2768->g_1748
 */
int32_t * func_41(uint64_t  p_42, struct S0 * p_2768)
{ /* block id: 22 */
    int32_t *l_59 = &p_2768->g_12;
    VECTOR(int16_t, 4) l_75 = (VECTOR(int16_t, 4))(0x5FA7L, (VECTOR(int16_t, 2))(0x5FA7L, 0x0717L), 0x0717L);
    int32_t **l_1379 = &p_2768->g_187[2][2][2];
    int32_t **l_1380 = (void*)0;
    int32_t **l_1381 = &p_2768->g_187[1][4][2];
    int32_t **l_1382[2];
    int32_t *l_1383[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    VECTOR(uint64_t, 4) l_1441 = (VECTOR(uint64_t, 4))(0xE63C435E322A2345L, (VECTOR(uint64_t, 2))(0xE63C435E322A2345L, 1UL), 1UL);
    int16_t l_1452 = (-4L);
    int32_t l_1479 = (-1L);
    uint32_t l_1482 = 1UL;
    VECTOR(uint32_t, 8) l_1500 = (VECTOR(uint32_t, 8))(0xDFE1CE14L, (VECTOR(uint32_t, 4))(0xDFE1CE14L, (VECTOR(uint32_t, 2))(0xDFE1CE14L, 0UL), 0UL), 0UL, 0xDFE1CE14L, 0UL);
    VECTOR(int8_t, 8) l_1510 = (VECTOR(int8_t, 8))(0x6BL, (VECTOR(int8_t, 4))(0x6BL, (VECTOR(int8_t, 2))(0x6BL, (-3L)), (-3L)), (-3L), 0x6BL, (-3L));
    VECTOR(int8_t, 16) l_1515 = (VECTOR(int8_t, 16))(0x22L, (VECTOR(int8_t, 4))(0x22L, (VECTOR(int8_t, 2))(0x22L, 0x57L), 0x57L), 0x57L, 0x22L, 0x57L, (VECTOR(int8_t, 2))(0x22L, 0x57L), (VECTOR(int8_t, 2))(0x22L, 0x57L), 0x22L, 0x57L, 0x22L, 0x57L);
    VECTOR(int8_t, 8) l_1518 = (VECTOR(int8_t, 8))(0x70L, (VECTOR(int8_t, 4))(0x70L, (VECTOR(int8_t, 2))(0x70L, 1L), 1L), 1L, 0x70L, 1L);
    VECTOR(int32_t, 16) l_1534 = (VECTOR(int32_t, 16))(0x46F32FABL, (VECTOR(int32_t, 4))(0x46F32FABL, (VECTOR(int32_t, 2))(0x46F32FABL, 0x4C6FDE3FL), 0x4C6FDE3FL), 0x4C6FDE3FL, 0x46F32FABL, 0x4C6FDE3FL, (VECTOR(int32_t, 2))(0x46F32FABL, 0x4C6FDE3FL), (VECTOR(int32_t, 2))(0x46F32FABL, 0x4C6FDE3FL), 0x46F32FABL, 0x4C6FDE3FL, 0x46F32FABL, 0x4C6FDE3FL);
    int64_t *l_1538 = &p_2768->g_97;
    int64_t **l_1537 = &l_1538;
    VECTOR(int16_t, 16) l_1544 = (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x5D51L), 0x5D51L), 0x5D51L, (-1L), 0x5D51L, (VECTOR(int16_t, 2))((-1L), 0x5D51L), (VECTOR(int16_t, 2))((-1L), 0x5D51L), (-1L), 0x5D51L, (-1L), 0x5D51L);
    VECTOR(uint8_t, 8) l_1580 = (VECTOR(uint8_t, 8))(0xDAL, (VECTOR(uint8_t, 4))(0xDAL, (VECTOR(uint8_t, 2))(0xDAL, 0x21L), 0x21L), 0x21L, 0xDAL, 0x21L);
    VECTOR(int8_t, 16) l_1612 = (VECTOR(int8_t, 16))((-3L), (VECTOR(int8_t, 4))((-3L), (VECTOR(int8_t, 2))((-3L), 0x72L), 0x72L), 0x72L, (-3L), 0x72L, (VECTOR(int8_t, 2))((-3L), 0x72L), (VECTOR(int8_t, 2))((-3L), 0x72L), (-3L), 0x72L, (-3L), 0x72L);
    VECTOR(uint8_t, 4) l_1707 = (VECTOR(uint8_t, 4))(249UL, (VECTOR(uint8_t, 2))(249UL, 247UL), 247UL);
    int32_t l_1714 = 5L;
    VECTOR(uint32_t, 4) l_1732 = (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0UL), 0UL);
    uint64_t **l_1746 = (void*)0;
    int32_t *l_1750[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
    int i;
    for (i = 0; i < 2; i++)
        l_1382[i] = (void*)0;
    for (p_2768->g_12 = 0; (p_2768->g_12 > (-9)); p_2768->g_12 = safe_sub_func_int32_t_s_s(p_2768->g_12, 3))
    { /* block id: 25 */
        int32_t *l_46 = &p_2768->g_7;
        return l_46;
    }
    if ((safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 16))(mul_hi(((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))((GROUP_DIVERGE(0, 1) || func_49(&p_2768->g_12, func_53(l_59, l_59, p_2768->g_6, ((safe_mul_func_uint8_t_u_u((safe_mod_func_int16_t_s_s((p_2768->g_1135.x = ((VECTOR(int16_t, 16))(add_sat(((VECTOR(int16_t, 8))(((l_1383[2] = func_64((func_69(((((p_2768->g_19[1][1] < 0x00A99235L) , 0x6569L) > (safe_sub_func_int32_t_s_s(0L, (((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 16))(l_75.xzxwwzyzwwxyzxxy)).odd, (int16_t)(((l_59 != l_59) == 1L) , (*l_59))))), ((VECTOR(int16_t, 8))(0x4164L))))).s5 , p_2768->g_19[2][1])))) >= 3UL), l_59, &p_2768->g_2, p_2768) && (*l_59)), p_42, p_42, l_75.w, p_2768)) == &p_2768->g_1287), 0x1393L, p_42, (-1L), ((VECTOR(int16_t, 4))((-9L))))).s5207406142240656, ((VECTOR(int16_t, 16))(0x1BE8L))))).s3), p_42)), p_42)) < p_42), p_42, p_2768), p_42, p_2768)), (*l_59), 1L, 0x70L)) ^ ((VECTOR(int8_t, 4))((-1L)))))).odd, ((VECTOR(int8_t, 2))(0L))))).xxxxyyyxxxxxxyxx, ((VECTOR(int8_t, 16))((-9L)))))).s3, p_42)))
    { /* block id: 498 */
        int32_t l_1399 = 0L;
        int32_t *l_1408 = (void*)0;
        uint64_t l_1413 = 0x682598034CC477B4L;
        VECTOR(int16_t, 16) l_1417 = (VECTOR(int16_t, 16))(0x2483L, (VECTOR(int16_t, 4))(0x2483L, (VECTOR(int16_t, 2))(0x2483L, 0x3FEAL), 0x3FEAL), 0x3FEAL, 0x2483L, 0x3FEAL, (VECTOR(int16_t, 2))(0x2483L, 0x3FEAL), (VECTOR(int16_t, 2))(0x2483L, 0x3FEAL), 0x2483L, 0x3FEAL, 0x2483L, 0x3FEAL);
        int64_t l_1434 = 0x5013DF5F7BCF6D2AL;
        int64_t *l_1439[7][4] = {{(void*)0,&p_2768->g_507,(void*)0,(void*)0},{(void*)0,&p_2768->g_507,(void*)0,(void*)0},{(void*)0,&p_2768->g_507,(void*)0,(void*)0},{(void*)0,&p_2768->g_507,(void*)0,(void*)0},{(void*)0,&p_2768->g_507,(void*)0,(void*)0},{(void*)0,&p_2768->g_507,(void*)0,(void*)0},{(void*)0,&p_2768->g_507,(void*)0,(void*)0}};
        int32_t l_1440 = 0x47037AB4L;
        uint64_t *l_1442 = &p_2768->g_144;
        uint8_t *l_1443 = (void*)0;
        uint8_t *l_1444 = (void*)0;
        uint8_t *l_1445 = (void*)0;
        uint8_t *l_1446 = &p_2768->g_141[4];
        int8_t *l_1455 = (void*)0;
        int8_t *l_1456 = (void*)0;
        int8_t *l_1457[6][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
        uint16_t l_1458 = 0xA904L;
        int32_t *l_1459 = (void*)0;
        int32_t l_1464 = 7L;
        uint16_t ****l_1474 = &p_2768->g_193[0];
        int i, j;
        for (p_2768->g_138 = 0; (p_2768->g_138 > 8); p_2768->g_138 = safe_add_func_uint16_t_u_u(p_2768->g_138, 1))
        { /* block id: 501 */
            uint8_t l_1400 = 0x02L;
            uint8_t l_1432 = 0xCCL;
            --l_1400;
            for (l_1399 = (-15); (l_1399 != (-17)); l_1399--)
            { /* block id: 505 */
                int32_t *l_1407 = (void*)0;
                for (p_42 = 0; (p_42 > 5); ++p_42)
                { /* block id: 508 */
                    (*l_59) = 0L;
                }
                (*l_59) ^= p_42;
                (*l_1381) = l_1407;
                return l_1408;
            }
            for (p_2768->g_786 = 1; (p_2768->g_786 < 53); ++p_2768->g_786)
            { /* block id: 517 */
                int64_t **l_1414 = (void*)0;
                int32_t l_1433 = 3L;
                l_1433 = ((!((safe_lshift_func_uint16_t_u_s(((l_1413 , &p_2768->g_506) != (((*p_2768->g_1375) = 7L) , l_1414)), 9)) < ((safe_rshift_func_uint8_t_u_s(0x38L, 5)) , ((VECTOR(int16_t, 16))(l_1417.safb2cbdb4b58436d)).s1))) , (((VECTOR(uint64_t, 4))(abs(((VECTOR(uint64_t, 8))(rotate(((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 2))(rhadd(((VECTOR(uint64_t, 4))(0UL, 0xF824377D2A3173E9L, 0xEECEF84A0E45ACA6L, 18446744073709551606UL)).odd, ((VECTOR(uint64_t, 8))(min(((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 8))(mad_hi(((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 16))(abs(((VECTOR(uint64_t, 4))(0xDFCCA71CE79E2274L, (((*p_2768->g_92) = l_1400) & (safe_rshift_func_uint8_t_u_u(((safe_mul_func_uint8_t_u_u(1UL, (((safe_mul_func_uint32_t_u_u(p_2768->g_387.s3, (p_42 <= p_42))) > 0x57L) | l_1432))) , 246UL), 6))), 0xC49A6B57F6E9772EL, 18446744073709551613UL)).zywyxyxwyzyzyxxx))).s0e + ((VECTOR(uint64_t, 2))(18446744073709551615UL))))).xyyxxxxyxyyyxyyy + ((VECTOR(uint64_t, 16))(0x520DF80B8C576D6EL))))).s2c + ((VECTOR(uint64_t, 2))(3UL))))).xxxyxxxx, ((VECTOR(uint64_t, 8))(0xB639815949947978L)), ((VECTOR(uint64_t, 8))(0x371D9D3E527B6D07L))))) | ((VECTOR(uint64_t, 8))(0x098EEDAEB2C9C275L))))), (uint64_t)0x56BECEE0F1467175L))).s62))).xxxy + ((VECTOR(uint64_t, 4))(1UL))))).zyyxzyzz, ((VECTOR(uint64_t, 8))(18446744073709551615UL))))).even))).x & p_2768->g_623.x));
                (*l_1381) = (l_1434 , &p_2768->g_1287);
            }
        }
        if ((safe_add_func_int8_t_s_s(((safe_add_func_int64_t_s_s((l_1440 &= (-3L)), ((*l_1442) = ((VECTOR(uint64_t, 16))(l_1441.zyzxzzxzzxyxwzyy)).s3))) == l_1413), (((*l_1446) = p_42) ^ ((*l_59) = (~(((((~((safe_mul_func_int8_t_s_s(((p_2768->g_507 = (l_1439[2][2] == l_1439[2][2])) || ((((l_1458 &= (p_2768->g_389.s1 = ((((VECTOR(int8_t, 8))(p_2768->g_1451.s33556620)).s1 , (l_1452 && (~(p_2768->g_278 && 0x31E605B159284F60L)))) , (safe_rshift_func_int8_t_s_u((p_2768->g_309.sf = 0x73L), p_2768->g_411))))) , 0x2BC6701BL) , 0x7EL) <= l_1417.s9)), p_42)) || 18446744073709551615UL)) , l_1459) != l_1459) != 0UL) != p_2768->g_1093.z)))))))
        { /* block id: 532 */
            int32_t *l_1460[6] = {(void*)0,&p_2768->g_1287,(void*)0,(void*)0,&p_2768->g_1287,(void*)0};
            int32_t l_1463 = 0L;
            int8_t **l_1467[3][8] = {{&l_1455,&l_1457[2][1],&l_1455,&l_1457[2][1],&l_1455,&l_1455,&l_1457[2][1],&l_1455},{&l_1455,&l_1457[2][1],&l_1455,&l_1457[2][1],&l_1455,&l_1455,&l_1457[2][1],&l_1455},{&l_1455,&l_1457[2][1],&l_1455,&l_1457[2][1],&l_1455,&l_1455,&l_1457[2][1],&l_1455}};
            int8_t ***l_1468 = &l_1467[2][6];
            int i, j;
            (*l_1381) = &l_1440;
            p_2768->g_1462[6] = func_76(&l_1440, &p_2768->g_2, p_2768);
            l_1464 = (((VECTOR(int64_t, 4))((((VECTOR(int64_t, 16))((((p_2768->g_93 != (l_1463 && (l_1464 < ((p_42 ^ ((GROUP_DIVERGE(1, 1) , ((safe_mul_func_int16_t_s_s((((*l_1468) = l_1467[2][6]) == (void*)0), (p_42 | ((VECTOR(uint8_t, 2))(p_2768->g_1469.xy)).even))) || ((**p_2768->g_1261) , ((safe_mul_func_int16_t_s_s((safe_mod_func_int8_t_s_s(((void*)0 == l_1474), p_42)), p_42)) ^ p_42)))) <= (-9L))) && 1UL)))) > p_42) & p_42), ((VECTOR(int64_t, 4))(9L)), ((VECTOR(int64_t, 2))((-1L))), 0L, 0x0160CEC170C2C2C0L, ((VECTOR(int64_t, 2))(1L)), ((VECTOR(int64_t, 4))(1L)), (-9L))).s19eb | ((VECTOR(int64_t, 4))(0x5C47E66DA2A90F68L))))).w || p_2768->g_742.s6);
            (*l_59) ^= 0x210F1FA1L;
        }
        else
        { /* block id: 538 */
            for (l_1452 = (-23); (l_1452 != (-16)); l_1452 = safe_add_func_uint64_t_u_u(l_1452, 4))
            { /* block id: 541 */
                l_1408 = (void*)0;
            }
        }
        if ((safe_mod_func_uint16_t_u_u((l_1479 = p_42), (safe_div_func_int8_t_s_s(l_1482, p_42)))))
        { /* block id: 546 */
            return &p_2768->g_7;
        }
        else
        { /* block id: 548 */
            uint8_t l_1485[4] = {248UL,248UL,248UL,248UL};
            int i;
            (*l_59) = 6L;
            l_1485[2] = (safe_mod_func_int64_t_s_s((p_2768->g_649.s7 > 65531UL), 0x4384925333C6A73DL));
        }
    }
    else
    { /* block id: 552 */
        VECTOR(int32_t, 4) l_1486 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 1L), 1L);
        int32_t l_1487 = 0x3EC0FEA5L;
        int32_t **l_1495 = &l_1383[2];
        uint8_t *l_1496 = (void*)0;
        uint8_t *l_1497 = &p_2768->g_1302;
        uint64_t *l_1503 = (void*)0;
        VECTOR(int8_t, 4) l_1513 = (VECTOR(int8_t, 4))(0x07L, (VECTOR(int8_t, 2))(0x07L, 0x04L), 0x04L);
        VECTOR(int8_t, 8) l_1514 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x5AL), 0x5AL), 0x5AL, 1L, 0x5AL);
        VECTOR(int8_t, 4) l_1516 = (VECTOR(int8_t, 4))(0x18L, (VECTOR(int8_t, 2))(0x18L, 0x76L), 0x76L);
        VECTOR(int8_t, 2) l_1519 = (VECTOR(int8_t, 2))((-7L), 0x2CL);
        VECTOR(int32_t, 2) l_1535 = (VECTOR(int32_t, 2))(1L, 3L);
        VECTOR(int16_t, 8) l_1547 = (VECTOR(int16_t, 8))((-7L), (VECTOR(int16_t, 4))((-7L), (VECTOR(int16_t, 2))((-7L), 1L), 1L), 1L, (-7L), 1L);
        VECTOR(uint32_t, 16) l_1565 = (VECTOR(uint32_t, 16))(0xC85D8D28L, (VECTOR(uint32_t, 4))(0xC85D8D28L, (VECTOR(uint32_t, 2))(0xC85D8D28L, 6UL), 6UL), 6UL, 0xC85D8D28L, 6UL, (VECTOR(uint32_t, 2))(0xC85D8D28L, 6UL), (VECTOR(uint32_t, 2))(0xC85D8D28L, 6UL), 0xC85D8D28L, 6UL, 0xC85D8D28L, 6UL);
        VECTOR(int8_t, 8) l_1610 = (VECTOR(int8_t, 8))((-9L), (VECTOR(int8_t, 4))((-9L), (VECTOR(int8_t, 2))((-9L), (-5L)), (-5L)), (-5L), (-9L), (-5L));
        VECTOR(int8_t, 8) l_1611 = (VECTOR(int8_t, 8))(0x3FL, (VECTOR(int8_t, 4))(0x3FL, (VECTOR(int8_t, 2))(0x3FL, 0x3DL), 0x3DL), 0x3DL, 0x3FL, 0x3DL);
        VECTOR(uint32_t, 4) l_1735 = (VECTOR(uint32_t, 4))(0xA653BE29L, (VECTOR(uint32_t, 2))(0xA653BE29L, 1UL), 1UL);
        int i;
        p_2768->g_1488[0][4]--;
        (*l_1495) = ((*l_1381) = func_64(((((safe_sub_func_uint8_t_u_u(((*l_1497) |= (safe_mul_func_uint8_t_u_u(((&l_1383[3] == l_1495) <= p_42), p_42))), (safe_mod_func_uint32_t_u_u((l_1500.s0 , 4294967295UL), (safe_lshift_func_uint8_t_u_s(4UL, 4)))))) < ((p_2768->g_136 && FAKE_DIVERGE(p_2768->local_0_offset, get_local_id(0), 10)) , ((l_1503 != l_1503) <= p_2768->g_278))) & p_2768->g_685.y) , p_42), (*p_2768->g_1190), p_42, p_42, p_2768));
        if ((safe_mul_func_int8_t_s_s(((safe_add_func_uint16_t_u_u(p_42, (p_2768->g_1451.s3 , ((VECTOR(int16_t, 4))(((safe_lshift_func_uint16_t_u_u((((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 2))(upsample(((VECTOR(int8_t, 16))(((*l_59) >= 0UL), p_42, 0x72L, ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),VECTOR(int8_t, 8),((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 16))((((VECTOR(int8_t, 2))(l_1510.s15)).yxxyxyxyxxyyxyyy ^ ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(p_2768->g_1511.xy)), (-9L), 0x43L)).xwyxzywxywwzxyyy))).s0bf0, ((VECTOR(int8_t, 4))(p_2768->g_1512.s6754)), ((VECTOR(int8_t, 2))(0x56L, 0x74L)).yxyy))).xxwywzzy, ((VECTOR(int8_t, 4))(l_1513.yywz)).xwzzywwy, ((VECTOR(int8_t, 2))(0x79L, 0x3CL)).xxyyyxxy))).s63 && ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))(0L, 0L, 0L, 0x58L)).even && ((VECTOR(int8_t, 8))(l_1514.s01624537)).s43)))))).yyyxxxxx < ((VECTOR(int8_t, 2))(l_1515.s2a)).xyyxyyyy))).even ^ ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))(0x4FL, 0L, 0x11L, 6L)).odd && ((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))(0x47L, (4294967295UL && p_42), 0x08L, 1L)) && ((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 4))(rhadd(((VECTOR(int8_t, 8))(0x41L, ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 2))(l_1516.yw)) != ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 16))(p_2768->g_1517.yxxzxywxywyxxzyx)).s7a, ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))(l_1518.s6620067022614140)).s2be5 | ((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 2))(min(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 16))(l_1519.yyxxxyyyyyxxyxyx)) || ((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 2))(p_2768->g_1520.yx)), ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 4))(p_2768->g_1521.yxyy)).zzzyzzwywyxwwzyz >= ((VECTOR(int8_t, 8))(0x5EL, ((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 4))((((safe_div_func_uint32_t_u_u((safe_div_func_int64_t_s_s((safe_lshift_func_int16_t_s_u((safe_mul_func_int16_t_s_s(((5L & p_42) , (*l_59)), p_2768->g_1512.s1)), GROUP_DIVERGE(1, 1))), p_2768->g_19[2][6])), p_42)) , (*p_2768->g_447)) != l_1497), 0x10L, 0L, 0x36L)).hi, ((VECTOR(int8_t, 2))(1L))))), 0x3CL, 0L, (-9L), 0x0FL, 0x1DL)).s6504053254265142))).sbb))), ((VECTOR(int8_t, 2))(0x65L))))).yyyxxyxxxxyxxyxy))).s80, ((VECTOR(int8_t, 2))(0x3AL))))), ((VECTOR(int8_t, 2))(0x7AL))))).xyxx))).hi))).xxxxxyxx > ((VECTOR(int8_t, 8))(0x6AL))))) && ((VECTOR(int8_t, 8))(0x59L))))).s57))).odd, 1L, p_42, 0x76L, p_42, 0x03L, (-1L))).even, ((VECTOR(int8_t, 4))(0x03L))))).xywzzxzyyyxywxzy, ((VECTOR(int8_t, 16))(9L))))).even, ((VECTOR(int8_t, 8))((-6L)))))).even))).lo, ((VECTOR(int8_t, 2))(0x0AL)))))))).yxxy))), ((VECTOR(int8_t, 2))(0x2EL)), 0L, 0x23L, 1L, 0x45L, ((VECTOR(int8_t, 2))(0x73L)), 0x16L)).sfd, ((VECTOR(uint8_t, 2))(250UL))))).yxyy, ((VECTOR(int16_t, 4))(0x5986L))))).zywzxwyy && ((VECTOR(int16_t, 8))(0x07BDL))))).s5 ^ p_42) != 0UL) <= 0L), 3)) , p_42), 0x7902L, 1L, 0x5E6DL)).x))) == GROUP_DIVERGE(2, 1)), 0x7FL)))
        { /* block id: 557 */
            uint64_t l_1530 = 0xF16379A3998253D1L;
            int32_t *l_1531 = (void*)0;
            l_1530 |= (p_42 || (-1L));
            (*l_1495) = l_1531;
        }
        else
        { /* block id: 560 */
            VECTOR(int32_t, 16) l_1536 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-4L)), (-4L)), (-4L), 0L, (-4L), (VECTOR(int32_t, 2))(0L, (-4L)), (VECTOR(int32_t, 2))(0L, (-4L)), 0L, (-4L), 0L, (-4L));
            int64_t ***l_1539[4][1][1] = {{{&p_2768->g_204}},{{&p_2768->g_204}},{{&p_2768->g_204}},{{&p_2768->g_204}}};
            uint16_t *l_1550[4][3][4] = {{{(void*)0,&p_2768->g_100,&p_2768->g_100,&p_2768->g_786},{(void*)0,&p_2768->g_100,&p_2768->g_100,&p_2768->g_786},{(void*)0,&p_2768->g_100,&p_2768->g_100,&p_2768->g_786}},{{(void*)0,&p_2768->g_100,&p_2768->g_100,&p_2768->g_786},{(void*)0,&p_2768->g_100,&p_2768->g_100,&p_2768->g_786},{(void*)0,&p_2768->g_100,&p_2768->g_100,&p_2768->g_786}},{{(void*)0,&p_2768->g_100,&p_2768->g_100,&p_2768->g_786},{(void*)0,&p_2768->g_100,&p_2768->g_100,&p_2768->g_786},{(void*)0,&p_2768->g_100,&p_2768->g_100,&p_2768->g_786}},{{(void*)0,&p_2768->g_100,&p_2768->g_100,&p_2768->g_786},{(void*)0,&p_2768->g_100,&p_2768->g_100,&p_2768->g_786},{(void*)0,&p_2768->g_100,&p_2768->g_100,&p_2768->g_786}}};
            uint32_t l_1551 = 0xC1BE2159L;
            int64_t *l_1554 = &p_2768->g_140;
            VECTOR(uint8_t, 2) l_1566 = (VECTOR(uint8_t, 2))(0xF0L, 254UL);
            int32_t *l_1613 = &p_2768->g_328;
            VECTOR(int32_t, 4) l_1678 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 1L), 1L);
            int32_t l_1719 = 1L;
            uint8_t *l_1736 = (void*)0;
            uint8_t *l_1737 = (void*)0;
            uint8_t *l_1738 = &p_2768->g_1488[0][6];
            uint64_t *l_1739 = &p_2768->g_19[2][1];
            int i, j, k;
            if ((p_42 , (~((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 4))(p_2768->g_1532.s4362)), ((VECTOR(int32_t, 8))(p_2768->g_1533.s7ca70e1c)).hi))), 5L, ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 8))(0L, ((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(l_1534.se003)).zzxzyywy && ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 4))(l_1535.xxxx)).wyyzxwwwyxzzywxy, ((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))(l_1536.sde1e5d41)).lo <= ((VECTOR(int32_t, 2))(5L, (-1L))).yyyx))).lo, ((VECTOR(int32_t, 16))(((&p_2768->g_194[5][3] != (((*l_1554) ^= ((((p_42 | (l_1537 == (p_2768->g_204 = p_2768->g_204))) == (((safe_mod_func_int64_t_s_s(p_2768->g_1187.s9, p_42)) , ((safe_add_func_int16_t_s_s(((VECTOR(int16_t, 4))(l_1544.s6249)).y, (p_42 ^ (safe_sub_func_uint8_t_u_u((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))(0x366BL, 0x1B9CL)) != ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))(l_1547.s6001573723552736)).hi < ((VECTOR(int16_t, 16))(max(((VECTOR(int16_t, 16))(0L, (-1L), ((safe_mul_func_int16_t_s_s(((--l_1551) >= (l_1536.s1 < l_1536.sf)), p_42)) | l_1536.s2), 0L, (-1L), ((VECTOR(int16_t, 8))(5L)), (*l_59), 0x5001L, 0L)), (int16_t)p_2768->g_844.s4))).odd))).s7253232773776615 | ((VECTOR(int16_t, 16))(0L))))).s16))).hi ^ l_1536.s7), p_42))))) , 0x5BL)) , 8UL)) , 0UL) | 0xC2L)) , (void*)0)) , p_42), ((VECTOR(int32_t, 2))(1L)), 0x75EEE5A1L, ((VECTOR(int32_t, 2))(1L)), 2L, (*l_59), 9L, 6L, 6L, 0x56F366F9L, ((VECTOR(int32_t, 2))(4L)), 0x6B716C06L, 0x65625C84L)).s0b))).xxxyxxyyyyyxyyxx))).sde53 && ((VECTOR(int32_t, 4))(1L))))).xyxxzxyx))).s6101432312661730 && ((VECTOR(int32_t, 16))((-1L)))))).even, ((VECTOR(int32_t, 8))(0x1D69090DL))))).s05, ((VECTOR(int32_t, 2))(0x4EDAB0E6L))))), 4L, 0L, ((VECTOR(int32_t, 2))(0x76C668F3L)), 0x50883F40L)).s3234060416723154, (int32_t)(*p_2768->g_92)))), ((VECTOR(int32_t, 16))(0x062DE616L))))).odd ^ ((VECTOR(int32_t, 8))(0x1A97A33DL))))) && ((VECTOR(int32_t, 8))((-1L)))))).s4254471436360201, ((VECTOR(int32_t, 16))(0x04F67794L))))) && ((VECTOR(int32_t, 16))(0x4C9EB01CL))))).se9 ^ ((VECTOR(int32_t, 2))(0x11441A00L))))) && ((VECTOR(int32_t, 2))(0x06130683L))))), (-9L), 0x63019380L, ((VECTOR(int32_t, 2))(0x38201BF2L)), ((VECTOR(int32_t, 2))(0x10D54928L)), (*p_2768->g_92), 0L, 0L)).sf8 && ((VECTOR(int32_t, 2))(0x1694F1BDL))))).even)))
            { /* block id: 564 */
                int64_t l_1556 = (-9L);
                VECTOR(uint32_t, 2) l_1564 = (VECTOR(uint32_t, 2))(0x20C6C461L, 0xB023BDFFL);
                VECTOR(uint8_t, 16) l_1583 = (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0UL), 0UL), 0UL, 0UL, 0UL, (VECTOR(uint8_t, 2))(0UL, 0UL), (VECTOR(uint8_t, 2))(0UL, 0UL), 0UL, 0UL, 0UL, 0UL);
                int32_t *l_1591 = (void*)0;
                VECTOR(int8_t, 16) l_1608 = (VECTOR(int8_t, 16))(5L, (VECTOR(int8_t, 4))(5L, (VECTOR(int8_t, 2))(5L, 1L), 1L), 1L, 5L, 1L, (VECTOR(int8_t, 2))(5L, 1L), (VECTOR(int8_t, 2))(5L, 1L), 5L, 1L, 5L, 1L);
                uint32_t l_1628 = 0UL;
                int32_t l_1634 = (-1L);
                int32_t l_1636 = (-5L);
                int32_t l_1639 = 0x606B15FAL;
                int32_t l_1640 = 0x7F93EFC7L;
                int32_t l_1644 = 1L;
                int32_t l_1645 = (-1L);
                int32_t l_1646 = 0x4281F662L;
                int32_t l_1648 = (-6L);
                int32_t l_1649 = 0x071BAE83L;
                int32_t l_1651 = (-10L);
                int32_t l_1652 = 0x44C98BEEL;
                VECTOR(uint64_t, 2) l_1653 = (VECTOR(uint64_t, 2))(0UL, 18446744073709551606UL);
                uint16_t **l_1665 = (void*)0;
                uint32_t l_1694[5];
                VECTOR(uint8_t, 2) l_1704 = (VECTOR(uint8_t, 2))(0x72L, 0xF8L);
                int i;
                for (i = 0; i < 5; i++)
                    l_1694[i] = 4294967295UL;
                p_2768->g_1557++;
                (*p_2768->g_92) |= (safe_mul_func_uint16_t_u_u(l_1551, ((((0x755FL >= FAKE_DIVERGE(p_2768->global_2_offset, get_global_id(2), 10)) > ((safe_div_func_int8_t_s_s(l_1556, p_42)) < ((((VECTOR(uint32_t, 16))(l_1564.xxxxxyyxyxxyyyxx)).se , ((&p_2768->g_144 != l_1503) != p_42)) ^ l_1565.s9))) | ((VECTOR(uint8_t, 16))(mad_sat(((VECTOR(uint8_t, 4))(l_1566.xyyy)).wwywxywzxywxyzww, ((VECTOR(uint8_t, 16))(max(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))(7UL, ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(hadd(((VECTOR(uint8_t, 4))(p_2768->g_1575.sb97f)).odd, ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))(l_1580.s17460264)).lo + ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(max(((VECTOR(uint8_t, 16))(l_1583.s44dade81ed416ce3)).s44, ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))((p_42 , 1UL), ((VECTOR(uint8_t, 8))(0x91L)), 249UL, 0xB4L, p_42, ((VECTOR(uint8_t, 2))(255UL)), 0xA5L, 0x32L)).sfc + ((VECTOR(uint8_t, 2))(1UL)))))))) + ((VECTOR(uint8_t, 2))(7UL))))).yyyy))) + ((VECTOR(uint8_t, 4))(0UL))))).xxxzzyxw ^ ((VECTOR(uint8_t, 8))(0x99L))))).s02))) ^ ((VECTOR(uint8_t, 2))(0UL))))).yxxy + ((VECTOR(uint8_t, 4))(0xE4L))))).ywwxxxyyzwyzywxx * ((VECTOR(uint8_t, 16))(0x0AL))))).se, 1UL, 0xEAL)).lo ^ ((VECTOR(uint8_t, 2))(0xA8L))))) + ((VECTOR(uint8_t, 2))(0x76L))))).yxyx + ((VECTOR(uint8_t, 4))(1UL))))).zyxxyyzxwxyzyxwx, ((VECTOR(uint8_t, 16))(0x7CL))))), ((VECTOR(uint8_t, 16))(5UL))))).s8) < 4294967295UL)));
                if ((safe_add_func_int8_t_s_s((safe_rshift_func_uint8_t_u_s(((0x7C01L ^ GROUP_DIVERGE(0, 1)) != (-1L)), l_1536.s1)), (l_1551 == p_42))))
                { /* block id: 567 */
                    int32_t *l_1590 = (void*)0;
                    uint32_t *l_1592 = (void*)0;
                    uint32_t *l_1593[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    uint32_t *l_1594 = (void*)0;
                    uint32_t *l_1595 = (void*)0;
                    uint32_t *l_1596[9] = {&l_1551,&l_1551,&l_1551,&l_1551,&l_1551,&l_1551,&l_1551,&l_1551,&l_1551};
                    VECTOR(int8_t, 4) l_1609 = (VECTOR(int8_t, 4))(0x16L, (VECTOR(int8_t, 2))(0x16L, 0x44L), 0x44L);
                    uint32_t **l_1620 = &p_2768->g_273;
                    uint32_t *l_1622 = &p_2768->g_246;
                    uint32_t **l_1621 = &l_1622;
                    int i;
                    (*l_1379) = l_1594;
                    (*p_2768->g_92) &= ((((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))(l_1608.s4369)) && ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 8),((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 2))(9L, 0x74L)), ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(l_1609.zy)), 7L, 0L, 0x06L, ((VECTOR(int8_t, 2))(l_1610.s04)), 1L)).s6717604426343205 && ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))((((VECTOR(int8_t, 2))(l_1611.s43)) ^ ((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),int8_t,((VECTOR(int8_t, 8))(l_1612.s1f27318b)), (int8_t)((void*)0 != l_1613), (int8_t)((void*)0 == &p_2768->g_422)))).hi, (int8_t)(safe_add_func_uint8_t_u_u(((*l_1497) = (safe_add_func_int16_t_s_s(((p_2768->g_1623 = ((*l_1621) = ((*l_1620) = l_1383[2]))) != p_2768->g_1624), p_42))), p_42))))).hi))).yxyx < ((VECTOR(int8_t, 4))(0x44L))))).xywyzyyywxzzxzxx < ((VECTOR(int8_t, 16))((-1L))))))))).s18))) <= ((VECTOR(int8_t, 2))(0x5BL))))), ((VECTOR(int8_t, 2))(0x6CL)), ((VECTOR(int8_t, 2))(0x0BL))))).yxyxyyxy, ((VECTOR(int8_t, 8))((-4L))), ((VECTOR(int8_t, 8))(0x68L))))).s53 && ((VECTOR(int8_t, 2))(0x17L))))).xxxx))), (-10L), ((VECTOR(int8_t, 2))(1L)), 0x1DL)).s4, p_42)) <= FAKE_DIVERGE(p_2768->local_0_offset, get_local_id(0), 10)) && p_42) , l_1536.sf);
                }
                else
                { /* block id: 579 */
                    int32_t l_1635 = 4L;
                    int32_t l_1638 = 0x71A7E25FL;
                    int32_t l_1641 = 0L;
                    int32_t l_1642 = 0x0DCA821BL;
                    int32_t l_1647 = 0L;
                    int32_t l_1650[6][6][7] = {{{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)},{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)},{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)},{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)},{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)},{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)}},{{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)},{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)},{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)},{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)},{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)},{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)}},{{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)},{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)},{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)},{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)},{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)},{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)}},{{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)},{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)},{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)},{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)},{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)},{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)}},{{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)},{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)},{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)},{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)},{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)},{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)}},{{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)},{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)},{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)},{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)},{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)},{0x27DECE73L,0x7CB8FA46L,0x3D68B982L,0x6676C303L,0x6BB4B0C9L,5L,(-5L)}}};
                    int i, j, k;
                    for (l_1556 = 0; (l_1556 == (-30)); l_1556 = safe_sub_func_uint16_t_u_u(l_1556, 9))
                    { /* block id: 582 */
                        l_1628--;
                        if (p_42)
                            continue;
                    }
                    for (p_2768->g_411 = 0; (p_2768->g_411 == (-16)); p_2768->g_411 = safe_sub_func_int32_t_s_s(p_2768->g_411, 9))
                    { /* block id: 588 */
                        int8_t l_1633 = 0x51L;
                        int32_t l_1637[9] = {0x3245CD1CL,0x3245CD1CL,0x3245CD1CL,0x3245CD1CL,0x3245CD1CL,0x3245CD1CL,0x3245CD1CL,0x3245CD1CL,0x3245CD1CL};
                        int32_t l_1643 = 1L;
                        int i;
                        l_1633 &= l_1536.s2;
                        ++l_1653.y;
                        p_2768->g_1656 = 0x0F78324CL;
                        (*l_59) &= (safe_rshift_func_uint16_t_u_s(65530UL, 11));
                    }
                    (*p_2768->g_92) = (safe_rshift_func_int16_t_s_u((safe_add_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(0x8A6DL, 0xAF17L)).even, (1L >= (safe_add_func_int16_t_s_s(((VECTOR(int16_t, 16))(mul_hi(((VECTOR(int16_t, 4))(rhadd(((VECTOR(int16_t, 16))(mad_sat(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 8))(min(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(l_1566.y, (-2L), 0x26D2L, 0x588DL)), 0x3F7BL, 0x0C44L, ((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 8))(sub_sat(((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 2))(safe_clamp_func(VECTOR(int16_t, 2),int16_t,((VECTOR(int16_t, 8))(4L, (p_42 > ((l_1665 == (void*)0) <= (~p_2768->g_422))), ((VECTOR(int16_t, 4))(0x40E3L, 0x6316L, 6L, 0x29DAL)), 0x661FL, (-1L))).s20, (int16_t)(safe_mod_func_int64_t_s_s((safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 2))(p_2768->g_1670.yw)).even, (safe_mul_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s((l_1536.sa = l_1650[3][1][4]), 0)), ((&p_42 != (void*)0) > p_2768->g_136))))), p_42)), (int16_t)8L))), ((VECTOR(int16_t, 2))(0x47BAL))))).yyyxxxyy, ((VECTOR(int16_t, 8))((-7L)))))).s77, (int16_t)p_42))), ((VECTOR(int16_t, 8))(0x7F6AL)))).hi, (int16_t)p_2768->g_276))) | ((VECTOR(int16_t, 8))(1L))))).s6750465016301070, ((VECTOR(int16_t, 16))(0L)), ((VECTOR(int16_t, 16))(0L))))).sd076, ((VECTOR(int16_t, 4))(0x56D2L))))).xzzzwyxxyxyzzywx, ((VECTOR(int16_t, 16))(0x36CEL))))).sd, 0L))))), 3));
                }
                for (p_2768->g_138 = (-4); (p_2768->g_138 == 12); p_2768->g_138++)
                { /* block id: 599 */
                    int16_t l_1677 = (-10L);
                    VECTOR(int32_t, 16) l_1679 = (VECTOR(int32_t, 16))(0x64730E92L, (VECTOR(int32_t, 4))(0x64730E92L, (VECTOR(int32_t, 2))(0x64730E92L, 0x684EBF8CL), 0x684EBF8CL), 0x684EBF8CL, 0x64730E92L, 0x684EBF8CL, (VECTOR(int32_t, 2))(0x64730E92L, 0x684EBF8CL), (VECTOR(int32_t, 2))(0x64730E92L, 0x684EBF8CL), 0x64730E92L, 0x684EBF8CL, 0x64730E92L, 0x684EBF8CL);
                    VECTOR(uint8_t, 2) l_1703 = (VECTOR(uint8_t, 2))(1UL, 0x0AL);
                    int32_t *l_1715[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_1715[i] = (void*)0;
                    if (l_1551)
                    { /* block id: 600 */
                        (*p_2768->g_92) = (l_1677 , ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))(9L, ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(0L, ((VECTOR(int32_t, 2))(0x1B4CCC41L, 0x5452E2CCL)), (0x7CB0BE94L > p_42), ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(l_1678.ww)).yyyy && ((VECTOR(int32_t, 4))(l_1679.s3261))))), (safe_lshift_func_uint8_t_u_u((+(safe_rshift_func_int16_t_s_u((l_1678.w = ((~((void*)0 != l_1613)) && (safe_sub_func_uint32_t_u_u(((p_42 , p_2768->g_1686[0]) != ((p_42 , ((safe_div_func_int8_t_s_s((p_42 , l_1694[3]), p_42)) , p_2768->g_1557)) , (void*)0)), 9L)))), 1))), p_2768->g_581.x)), 0x2C5B6CC6L, ((VECTOR(int32_t, 2))(0x7593EB6BL)), 1L, ((VECTOR(int32_t, 2))(0x7F04C396L)), 9L)).sb9 && ((VECTOR(int32_t, 2))(9L))))) != ((VECTOR(int32_t, 2))(3L))))), ((VECTOR(int32_t, 8))(0L)), 0x63C96AADL, ((VECTOR(int32_t, 2))(0L)), 0L, 0x198303F4L)).even && ((VECTOR(int32_t, 8))((-1L)))))).s2);
                        (*p_2768->g_92) ^= 0x2A3AE437L;
                        if (p_42)
                            continue;
                        if (p_42)
                            break;
                    }
                    else
                    { /* block id: 606 */
                        int32_t *l_1695 = &p_2768->g_1287;
                        (*l_1495) = ((*l_1381) = &p_2768->g_1287);
                        (*l_1379) = l_1613;
                    }
                }
            }
            else
            { /* block id: 613 */
                uint16_t l_1716 = 0x368AL;
                l_1716 = 0x64BB11E4L;
                for (p_2768->g_422 = (-18); (p_2768->g_422 < 21); p_2768->g_422 = safe_add_func_uint64_t_u_u(p_2768->g_422, 3))
                { /* block id: 617 */
                    (*l_1381) = (*l_1495);
                }
            }
            l_1678.w &= l_1719;
            (*l_59) ^= (l_1566.x , (safe_div_func_uint16_t_u_u(((((!p_42) ^ ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 2))(p_2768->g_1724.s52)) + ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 2))(0x452CA465FDEB7949L, 18446744073709551615UL)) | ((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 4))(((*l_1739) = ((((*l_1497) = p_2768->g_845.sd) >= ((safe_sub_func_int16_t_s_s((p_2768->g_280 , (&p_2768->g_204 != &p_2768->g_505)), 0x5F14L)) | (safe_unary_minus_func_int8_t_s(((~((*l_1738) = ((((safe_lshift_func_uint8_t_u_s((p_42 < ((VECTOR(uint32_t, 4))(sub_sat(((VECTOR(uint32_t, 16))(l_1732.wxxzxzxxzwyyxyzx)).s74b1, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 8))(l_1735.xwxzzzwz)) + ((VECTOR(uint32_t, 8))(rhadd(((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 8))(4294967291UL, p_42, p_42, ((VECTOR(uint32_t, 2))(4294967295UL)), ((VECTOR(uint32_t, 2))(4294967295UL)), 0xA20D7CEEL)).hi & ((VECTOR(uint32_t, 4))(1UL))))).xzzyywyw, ((VECTOR(uint32_t, 8))(4294967288UL)))))))), ((VECTOR(uint32_t, 2))(1UL)), ((VECTOR(uint32_t, 2))(0x1DCAF161L)), 0xF0F70EDCL, ((VECTOR(uint32_t, 2))(2UL)), 0x7A0FECADL)).s7d98))).x), 0)) , p_2768->g_1309.s7) , p_2768->g_472.y) || p_2768->g_1312.w))) == p_2768->g_1312.y))))) , 18446744073709551612UL)), 0xF1A7D10A60FE9342L, 0UL, 0xD76B4874BDA3375AL)).xwzxzyyzywywyzyx + ((VECTOR(uint64_t, 16))(18446744073709551615UL))))).s33)))))).even) != 0x4FE3L) , (*p_2768->g_1690)), p_42)));
        }
    }
    for (p_2768->g_144 = 14; (p_2768->g_144 > 3); p_2768->g_144 = safe_sub_func_uint64_t_u_u(p_2768->g_144, 9))
    { /* block id: 630 */
        uint8_t l_1742 = 255UL;
        int64_t ***l_1745 = &p_2768->g_204;
        l_1742++;
        (*l_1745) = &l_1538;
    }
    (*p_2768->g_1747) = l_1746;
    return l_1750[1];
}


/* ------------------------------------------ */
/* 
 * reads : p_2768->g_12 p_2768->g_1263
 * writes: p_2768->g_12
 */
uint8_t  func_49(int32_t * p_50, int32_t * p_51, int32_t  p_52, struct S0 * p_2768)
{ /* block id: 495 */
    uint64_t l_1396 = 0UL;
    (*p_50) ^= (~l_1396);
    return p_2768->g_1263;
}


/* ------------------------------------------ */
/* 
 * reads : p_2768->g_93 p_2768->g_12
 * writes: p_2768->g_12
 */
int32_t * func_53(int32_t * p_54, int32_t * p_55, uint32_t  p_56, uint32_t  p_57, uint64_t  p_58, struct S0 * p_2768)
{ /* block id: 491 */
    int32_t *l_1384 = (void*)0;
    int32_t *l_1385 = (void*)0;
    int32_t *l_1386 = &p_2768->g_93;
    int32_t *l_1387 = (void*)0;
    int32_t *l_1388 = (void*)0;
    int32_t l_1389[10] = {0x769279F2L,1L,0L,1L,0x769279F2L,0x769279F2L,1L,0L,1L,0x769279F2L};
    int32_t *l_1390 = (void*)0;
    int32_t *l_1391[9] = {&l_1389[8],(void*)0,&l_1389[8],&l_1389[8],(void*)0,&l_1389[8],&l_1389[8],(void*)0,&l_1389[8]};
    int64_t l_1392 = 0L;
    uint64_t l_1393 = 0x4A41F54616203186L;
    int i;
    l_1393++;
    (*p_55) &= (*l_1386);
    return p_54;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_64(uint8_t  p_65, uint64_t  p_66, int32_t  p_67, int32_t  p_68, struct S0 * p_2768)
{ /* block id: 487 */
    int32_t *l_1378 = (void*)0;
    return l_1378;
}


/* ------------------------------------------ */
/* 
 * reads : p_2768->g_12 p_2768->g_89 p_2768->g_2 p_2768->g_19 p_2768->g_93 p_2768->g_100 p_2768->g_103 p_2768->g_7 p_2768->g_141 p_2768->g_144 p_2768->g_136 p_2768->g_138 p_2768->g_193 p_2768->g_204 p_2768->g_97 p_2768->g_92
 * writes: p_2768->g_12 p_2768->g_89 p_2768->g_92 p_2768->g_93 p_2768->g_97 p_2768->g_100 p_2768->g_103 p_2768->g_141 p_2768->g_144 p_2768->g_187
 */
int32_t  func_69(uint64_t  p_70, int32_t * p_71, int32_t * p_72, struct S0 * p_2768)
{ /* block id: 28 */
    int32_t *l_79[2];
    int32_t **l_776 = &p_2768->g_92;
    uint64_t *l_779 = &p_2768->g_144;
    VECTOR(int8_t, 4) l_789 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x52L), 0x52L);
    int8_t *l_790 = (void*)0;
    int8_t *l_791 = (void*)0;
    VECTOR(int8_t, 4) l_792 = (VECTOR(int8_t, 4))(0x06L, (VECTOR(int8_t, 2))(0x06L, 1L), 1L);
    VECTOR(uint16_t, 16) l_812 = (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x95A5L), 0x95A5L), 0x95A5L, 65535UL, 0x95A5L, (VECTOR(uint16_t, 2))(65535UL, 0x95A5L), (VECTOR(uint16_t, 2))(65535UL, 0x95A5L), 65535UL, 0x95A5L, 65535UL, 0x95A5L);
    uint32_t l_817 = 0UL;
    int64_t l_818 = 0x38DAA43D093C79A1L;
    int64_t *l_819[5][3][10] = {{{&p_2768->g_507,(void*)0,(void*)0,(void*)0,(void*)0,&p_2768->g_507,&p_2768->g_507,(void*)0,(void*)0,&p_2768->g_140},{&p_2768->g_507,(void*)0,(void*)0,(void*)0,(void*)0,&p_2768->g_507,&p_2768->g_507,(void*)0,(void*)0,&p_2768->g_140},{&p_2768->g_507,(void*)0,(void*)0,(void*)0,(void*)0,&p_2768->g_507,&p_2768->g_507,(void*)0,(void*)0,&p_2768->g_140}},{{&p_2768->g_507,(void*)0,(void*)0,(void*)0,(void*)0,&p_2768->g_507,&p_2768->g_507,(void*)0,(void*)0,&p_2768->g_140},{&p_2768->g_507,(void*)0,(void*)0,(void*)0,(void*)0,&p_2768->g_507,&p_2768->g_507,(void*)0,(void*)0,&p_2768->g_140},{&p_2768->g_507,(void*)0,(void*)0,(void*)0,(void*)0,&p_2768->g_507,&p_2768->g_507,(void*)0,(void*)0,&p_2768->g_140}},{{&p_2768->g_507,(void*)0,(void*)0,(void*)0,(void*)0,&p_2768->g_507,&p_2768->g_507,(void*)0,(void*)0,&p_2768->g_140},{&p_2768->g_507,(void*)0,(void*)0,(void*)0,(void*)0,&p_2768->g_507,&p_2768->g_507,(void*)0,(void*)0,&p_2768->g_140},{&p_2768->g_507,(void*)0,(void*)0,(void*)0,(void*)0,&p_2768->g_507,&p_2768->g_507,(void*)0,(void*)0,&p_2768->g_140}},{{&p_2768->g_507,(void*)0,(void*)0,(void*)0,(void*)0,&p_2768->g_507,&p_2768->g_507,(void*)0,(void*)0,&p_2768->g_140},{&p_2768->g_507,(void*)0,(void*)0,(void*)0,(void*)0,&p_2768->g_507,&p_2768->g_507,(void*)0,(void*)0,&p_2768->g_140},{&p_2768->g_507,(void*)0,(void*)0,(void*)0,(void*)0,&p_2768->g_507,&p_2768->g_507,(void*)0,(void*)0,&p_2768->g_140}},{{&p_2768->g_507,(void*)0,(void*)0,(void*)0,(void*)0,&p_2768->g_507,&p_2768->g_507,(void*)0,(void*)0,&p_2768->g_140},{&p_2768->g_507,(void*)0,(void*)0,(void*)0,(void*)0,&p_2768->g_507,&p_2768->g_507,(void*)0,(void*)0,&p_2768->g_140},{&p_2768->g_507,(void*)0,(void*)0,(void*)0,(void*)0,&p_2768->g_507,&p_2768->g_507,(void*)0,(void*)0,&p_2768->g_140}}};
    VECTOR(int32_t, 2) l_822 = (VECTOR(int32_t, 2))(0x272B349BL, 0L);
    VECTOR(int64_t, 4) l_883 = (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x461C8F4154BCDFD8L), 0x461C8F4154BCDFD8L);
    VECTOR(int64_t, 8) l_887 = (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x5583EE78FF85FC84L), 0x5583EE78FF85FC84L), 0x5583EE78FF85FC84L, 0L, 0x5583EE78FF85FC84L);
    uint64_t l_888 = 18446744073709551615UL;
    VECTOR(int32_t, 16) l_892 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L, (VECTOR(int32_t, 2))((-1L), 0L), (VECTOR(int32_t, 2))((-1L), 0L), (-1L), 0L, (-1L), 0L);
    uint64_t l_900[1][6] = {{0xBDBDA76873BFE87BL,18446744073709551606UL,0xBDBDA76873BFE87BL,0xBDBDA76873BFE87BL,18446744073709551606UL,0xBDBDA76873BFE87BL}};
    VECTOR(int64_t, 2) l_950 = (VECTOR(int64_t, 2))(1L, 0x36C2FC940B301A06L);
    VECTOR(int64_t, 4) l_951 = (VECTOR(int64_t, 4))(6L, (VECTOR(int64_t, 2))(6L, (-1L)), (-1L));
    VECTOR(int64_t, 2) l_962 = (VECTOR(int64_t, 2))(0x60388E62C1D6B8CBL, 0L);
    VECTOR(uint8_t, 8) l_1000 = (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL);
    VECTOR(int8_t, 4) l_1026 = (VECTOR(int8_t, 4))(0x1BL, (VECTOR(int8_t, 2))(0x1BL, (-2L)), (-2L));
    int16_t *l_1029 = (void*)0;
    int64_t ***l_1037 = &p_2768->g_204;
    int32_t *l_1038 = &p_2768->g_93;
    VECTOR(uint64_t, 4) l_1045 = (VECTOR(uint64_t, 4))(0x250B122F48B73FDFL, (VECTOR(uint64_t, 2))(0x250B122F48B73FDFL, 18446744073709551607UL), 18446744073709551607UL);
    int16_t l_1046 = 5L;
    uint32_t *l_1047[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint16_t l_1048[4];
    int8_t ***l_1095 = (void*)0;
    uint16_t ****l_1109 = &p_2768->g_193[5];
    VECTOR(int64_t, 16) l_1131 = (VECTOR(int64_t, 16))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x55E52DF8CC3AE485L), 0x55E52DF8CC3AE485L), 0x55E52DF8CC3AE485L, 0L, 0x55E52DF8CC3AE485L, (VECTOR(int64_t, 2))(0L, 0x55E52DF8CC3AE485L), (VECTOR(int64_t, 2))(0L, 0x55E52DF8CC3AE485L), 0L, 0x55E52DF8CC3AE485L, 0L, 0x55E52DF8CC3AE485L);
    VECTOR(int8_t, 4) l_1149 = (VECTOR(int8_t, 4))(0x40L, (VECTOR(int8_t, 2))(0x40L, (-9L)), (-9L));
    int32_t l_1174 = 9L;
    uint32_t **l_1271 = &p_2768->g_273;
    uint8_t l_1283 = 0xF5L;
    VECTOR(int64_t, 16) l_1310 = (VECTOR(int64_t, 16))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 1L), 1L), 1L, 0L, 1L, (VECTOR(int64_t, 2))(0L, 1L), (VECTOR(int64_t, 2))(0L, 1L), 0L, 1L, 0L, 1L);
    VECTOR(int32_t, 4) l_1323 = (VECTOR(int32_t, 4))(0x01D917FAL, (VECTOR(int32_t, 2))(0x01D917FAL, 0L), 0L);
    int8_t l_1357 = (-8L);
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_79[i] = &p_2768->g_7;
    for (i = 0; i < 4; i++)
        l_1048[i] = 0x2C2EL;
    (*l_776) = func_76(p_72, l_79[1], p_2768);
    return (*p_2768->g_92);
}


/* ------------------------------------------ */
/* 
 * reads : p_2768->g_12 p_2768->g_89 p_2768->g_2 p_2768->g_19 p_2768->g_93 p_2768->g_100 p_2768->g_103 p_2768->g_7 p_2768->g_141 p_2768->g_144 p_2768->g_136 p_2768->g_138 p_2768->g_193 p_2768->g_204 p_2768->g_97 p_2768->g_1287
 * writes: p_2768->g_12 p_2768->g_89 p_2768->g_92 p_2768->g_93 p_2768->g_97 p_2768->g_100 p_2768->g_103 p_2768->g_141 p_2768->g_144 p_2768->g_187
 */
int32_t * func_76(int32_t * p_77, int32_t * p_78, struct S0 * p_2768)
{ /* block id: 29 */
    int32_t *l_90 = (void*)0;
    int64_t *l_98 = (void*)0;
    VECTOR(uint32_t, 2) l_117 = (VECTOR(uint32_t, 2))(7UL, 4294967286UL);
    uint32_t l_122[6][8] = {{0xF314C7E2L,0x0F001985L,0xF314C7E2L,0xF314C7E2L,0x0F001985L,0xF314C7E2L,0xF314C7E2L,0x0F001985L},{0xF314C7E2L,0x0F001985L,0xF314C7E2L,0xF314C7E2L,0x0F001985L,0xF314C7E2L,0xF314C7E2L,0x0F001985L},{0xF314C7E2L,0x0F001985L,0xF314C7E2L,0xF314C7E2L,0x0F001985L,0xF314C7E2L,0xF314C7E2L,0x0F001985L},{0xF314C7E2L,0x0F001985L,0xF314C7E2L,0xF314C7E2L,0x0F001985L,0xF314C7E2L,0xF314C7E2L,0x0F001985L},{0xF314C7E2L,0x0F001985L,0xF314C7E2L,0xF314C7E2L,0x0F001985L,0xF314C7E2L,0xF314C7E2L,0x0F001985L},{0xF314C7E2L,0x0F001985L,0xF314C7E2L,0xF314C7E2L,0x0F001985L,0xF314C7E2L,0xF314C7E2L,0x0F001985L}};
    uint32_t l_130 = 0xD9EA5185L;
    int32_t l_134 = (-10L);
    uint16_t ***l_197[4][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,&p_2768->g_194[5][3],&p_2768->g_194[7][4],&p_2768->g_194[7][4],&p_2768->g_194[5][3]},{(void*)0,(void*)0,(void*)0,(void*)0,&p_2768->g_194[5][3],&p_2768->g_194[7][4],&p_2768->g_194[7][4],&p_2768->g_194[5][3]},{(void*)0,(void*)0,(void*)0,(void*)0,&p_2768->g_194[5][3],&p_2768->g_194[7][4],&p_2768->g_194[7][4],&p_2768->g_194[5][3]},{(void*)0,(void*)0,(void*)0,(void*)0,&p_2768->g_194[5][3],&p_2768->g_194[7][4],&p_2768->g_194[7][4],&p_2768->g_194[5][3]}};
    uint64_t l_202 = 0UL;
    VECTOR(int32_t, 16) l_210 = (VECTOR(int32_t, 16))(0x2588ED02L, (VECTOR(int32_t, 4))(0x2588ED02L, (VECTOR(int32_t, 2))(0x2588ED02L, 0x3AFC4452L), 0x3AFC4452L), 0x3AFC4452L, 0x2588ED02L, 0x3AFC4452L, (VECTOR(int32_t, 2))(0x2588ED02L, 0x3AFC4452L), (VECTOR(int32_t, 2))(0x2588ED02L, 0x3AFC4452L), 0x2588ED02L, 0x3AFC4452L, 0x2588ED02L, 0x3AFC4452L);
    int32_t *l_217 = (void*)0;
    uint16_t l_220 = 0UL;
    int8_t l_251 = (-1L);
    volatile int32_t *l_281 = &p_2768->g_282;
    int64_t l_348 = 1L;
    VECTOR(uint32_t, 16) l_495 = (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x41906805L), 0x41906805L), 0x41906805L, 1UL, 0x41906805L, (VECTOR(uint32_t, 2))(1UL, 0x41906805L), (VECTOR(uint32_t, 2))(1UL, 0x41906805L), 1UL, 0x41906805L, 1UL, 0x41906805L);
    uint16_t **l_524 = &p_2768->g_195;
    VECTOR(uint64_t, 2) l_580 = (VECTOR(uint64_t, 2))(8UL, 0x3422A297BE1A576DL);
    int8_t l_604 = 1L;
    VECTOR(int16_t, 8) l_605 = (VECTOR(int16_t, 8))(0x09FAL, (VECTOR(int16_t, 4))(0x09FAL, (VECTOR(int16_t, 2))(0x09FAL, 1L), 1L), 1L, 0x09FAL, 1L);
    VECTOR(uint32_t, 2) l_620 = (VECTOR(uint32_t, 2))(0UL, 0x40ECCF56L);
    VECTOR(int64_t, 2) l_624 = (VECTOR(int64_t, 2))(0x59A56066AA84B01FL, 8L);
    VECTOR(int32_t, 4) l_647 = (VECTOR(int32_t, 4))(3L, (VECTOR(int32_t, 2))(3L, 0x7FAB616BL), 0x7FAB616BL);
    int8_t l_668 = (-1L);
    int32_t l_702 = 2L;
    VECTOR(uint16_t, 16) l_721 = (VECTOR(uint16_t, 16))(0xD9BDL, (VECTOR(uint16_t, 4))(0xD9BDL, (VECTOR(uint16_t, 2))(0xD9BDL, 8UL), 8UL), 8UL, 0xD9BDL, 8UL, (VECTOR(uint16_t, 2))(0xD9BDL, 8UL), (VECTOR(uint16_t, 2))(0xD9BDL, 8UL), 0xD9BDL, 8UL, 0xD9BDL, 8UL);
    VECTOR(uint16_t, 4) l_729 = (VECTOR(uint16_t, 4))(65534UL, (VECTOR(uint16_t, 2))(65534UL, 4UL), 4UL);
    VECTOR(int64_t, 4) l_733 = (VECTOR(int64_t, 4))(0x0C53B79FFF5DA4EBL, (VECTOR(int64_t, 2))(0x0C53B79FFF5DA4EBL, 0x77950765C9EEE49FL), 0x77950765C9EEE49FL);
    int i, j;
    for (p_2768->g_12 = 0; (p_2768->g_12 > (-19)); p_2768->g_12 = safe_sub_func_uint32_t_u_u(p_2768->g_12, 1))
    { /* block id: 32 */
        uint8_t l_84 = 0xA7L;
        int32_t **l_91[3];
        int64_t *l_96[9][8][3] = {{{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97}},{{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97}},{{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97}},{{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97}},{{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97}},{{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97}},{{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97}},{{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97}},{{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97}}};
        uint16_t *l_99 = &p_2768->g_100;
        VECTOR(uint8_t, 8) l_113 = (VECTOR(uint8_t, 8))(9UL, (VECTOR(uint8_t, 4))(9UL, (VECTOR(uint8_t, 2))(9UL, 1UL), 1UL), 1UL, 9UL, 1UL);
        int32_t l_125 = 0x3B3E5AADL;
        VECTOR(uint8_t, 2) l_169 = (VECTOR(uint8_t, 2))(247UL, 0x5DL);
        VECTOR(int32_t, 16) l_206 = (VECTOR(int32_t, 16))(0x2BC286E9L, (VECTOR(int32_t, 4))(0x2BC286E9L, (VECTOR(int32_t, 2))(0x2BC286E9L, (-10L)), (-10L)), (-10L), 0x2BC286E9L, (-10L), (VECTOR(int32_t, 2))(0x2BC286E9L, (-10L)), (VECTOR(int32_t, 2))(0x2BC286E9L, (-10L)), 0x2BC286E9L, (-10L), 0x2BC286E9L, (-10L));
        VECTOR(int32_t, 8) l_209 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x17EC8355L), 0x17EC8355L), 0x17EC8355L, 0L, 0x17EC8355L);
        VECTOR(int32_t, 16) l_211 = (VECTOR(int32_t, 16))(0x06245C75L, (VECTOR(int32_t, 4))(0x06245C75L, (VECTOR(int32_t, 2))(0x06245C75L, 0x3E7333C2L), 0x3E7333C2L), 0x3E7333C2L, 0x06245C75L, 0x3E7333C2L, (VECTOR(int32_t, 2))(0x06245C75L, 0x3E7333C2L), (VECTOR(int32_t, 2))(0x06245C75L, 0x3E7333C2L), 0x06245C75L, 0x3E7333C2L, 0x06245C75L, 0x3E7333C2L);
        VECTOR(int32_t, 8) l_212 = (VECTOR(int32_t, 8))(4L, (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, (-5L)), (-5L)), (-5L), 4L, (-5L));
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_91[i] = (void*)0;
        p_2768->g_93 &= (safe_sub_func_uint16_t_u_u((l_84 < (safe_sub_func_uint16_t_u_u((safe_lshift_func_int8_t_s_u(l_84, 6)), ((p_2768->g_89 = l_84) || (p_2768->g_12 <= ((!(l_84 || l_84)) != ((((+(((!((p_2768->g_89 , p_78) != (p_2768->g_92 = (p_77 = l_90)))) , p_2768->g_2) && 65535UL)) & p_2768->g_19[1][3]) <= p_2768->g_19[2][1]) && 0x48BA36EDL))))))), 3L));
        if (((safe_rshift_func_int16_t_s_u(((p_2768->g_97 = p_2768->g_19[2][1]) , p_2768->g_19[2][1]), ((*l_99) &= ((void*)0 == l_98)))) || 1L))
        { /* block id: 39 */
            int32_t *l_101 = &p_2768->g_7;
            int32_t l_102 = 0x17D65089L;
            p_2768->g_92 = l_101;
            --p_2768->g_103;
        }
        else
        { /* block id: 42 */
            uint16_t ***l_106 = (void*)0;
            uint16_t **l_108 = &l_99;
            uint16_t ***l_107 = &l_108;
            int32_t l_114 = (-1L);
            VECTOR(uint8_t, 16) l_170 = (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0xDDL), 0xDDL), 0xDDL, 255UL, 0xDDL, (VECTOR(uint8_t, 2))(255UL, 0xDDL), (VECTOR(uint8_t, 2))(255UL, 0xDDL), 255UL, 0xDDL, 255UL, 0xDDL);
            uint16_t ****l_196 = &l_107;
            VECTOR(uint8_t, 8) l_200 = (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 5UL), 5UL), 5UL, 255UL, 5UL);
            uint8_t *l_201 = &l_84;
            VECTOR(int32_t, 16) l_205 = (VECTOR(int32_t, 16))(0x41971EBEL, (VECTOR(int32_t, 4))(0x41971EBEL, (VECTOR(int32_t, 2))(0x41971EBEL, (-1L)), (-1L)), (-1L), 0x41971EBEL, (-1L), (VECTOR(int32_t, 2))(0x41971EBEL, (-1L)), (VECTOR(int32_t, 2))(0x41971EBEL, (-1L)), 0x41971EBEL, (-1L), 0x41971EBEL, (-1L));
            int i;
            (*l_107) = &l_99;
            if ((GROUP_DIVERGE(0, 1) == (((VECTOR(int8_t, 8))((-8L), (-10L), ((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))(l_113.s46551640)) * ((VECTOR(uint8_t, 16))(5UL, (6L | l_114), 0x69L, ((p_2768->g_100 < p_2768->g_97) | (safe_mul_func_int8_t_s_s((l_117.x < l_114), p_2768->g_103))), 0UL, (safe_div_func_uint8_t_u_u((p_2768->g_103 , (safe_rshift_func_uint16_t_u_u((0UL != GROUP_DIVERGE(1, 1)), 11))), l_114)), ((VECTOR(uint8_t, 4))(251UL)), 0xF7L, 1UL, ((VECTOR(uint8_t, 4))(6UL)))).hi))) - ((VECTOR(uint8_t, 8))(5UL))))).s7 != 255UL) || l_122[4][3]), p_2768->g_19[2][2], 0x7EL, 0x67L, 1L, 0x52L)).s1 > l_114)))
            { /* block id: 44 */
                for (p_2768->g_100 = 0; (p_2768->g_100 == 32); p_2768->g_100++)
                { /* block id: 47 */
                    l_125 = (*p_78);
                }
                p_78 = &p_2768->g_93;
            }
            else
            { /* block id: 51 */
                int32_t l_135[8][5][5] = {{{0x79692DFFL,9L,(-1L),1L,0x53317BB9L},{0x79692DFFL,9L,(-1L),1L,0x53317BB9L},{0x79692DFFL,9L,(-1L),1L,0x53317BB9L},{0x79692DFFL,9L,(-1L),1L,0x53317BB9L},{0x79692DFFL,9L,(-1L),1L,0x53317BB9L}},{{0x79692DFFL,9L,(-1L),1L,0x53317BB9L},{0x79692DFFL,9L,(-1L),1L,0x53317BB9L},{0x79692DFFL,9L,(-1L),1L,0x53317BB9L},{0x79692DFFL,9L,(-1L),1L,0x53317BB9L},{0x79692DFFL,9L,(-1L),1L,0x53317BB9L}},{{0x79692DFFL,9L,(-1L),1L,0x53317BB9L},{0x79692DFFL,9L,(-1L),1L,0x53317BB9L},{0x79692DFFL,9L,(-1L),1L,0x53317BB9L},{0x79692DFFL,9L,(-1L),1L,0x53317BB9L},{0x79692DFFL,9L,(-1L),1L,0x53317BB9L}},{{0x79692DFFL,9L,(-1L),1L,0x53317BB9L},{0x79692DFFL,9L,(-1L),1L,0x53317BB9L},{0x79692DFFL,9L,(-1L),1L,0x53317BB9L},{0x79692DFFL,9L,(-1L),1L,0x53317BB9L},{0x79692DFFL,9L,(-1L),1L,0x53317BB9L}},{{0x79692DFFL,9L,(-1L),1L,0x53317BB9L},{0x79692DFFL,9L,(-1L),1L,0x53317BB9L},{0x79692DFFL,9L,(-1L),1L,0x53317BB9L},{0x79692DFFL,9L,(-1L),1L,0x53317BB9L},{0x79692DFFL,9L,(-1L),1L,0x53317BB9L}},{{0x79692DFFL,9L,(-1L),1L,0x53317BB9L},{0x79692DFFL,9L,(-1L),1L,0x53317BB9L},{0x79692DFFL,9L,(-1L),1L,0x53317BB9L},{0x79692DFFL,9L,(-1L),1L,0x53317BB9L},{0x79692DFFL,9L,(-1L),1L,0x53317BB9L}},{{0x79692DFFL,9L,(-1L),1L,0x53317BB9L},{0x79692DFFL,9L,(-1L),1L,0x53317BB9L},{0x79692DFFL,9L,(-1L),1L,0x53317BB9L},{0x79692DFFL,9L,(-1L),1L,0x53317BB9L},{0x79692DFFL,9L,(-1L),1L,0x53317BB9L}},{{0x79692DFFL,9L,(-1L),1L,0x53317BB9L},{0x79692DFFL,9L,(-1L),1L,0x53317BB9L},{0x79692DFFL,9L,(-1L),1L,0x53317BB9L},{0x79692DFFL,9L,(-1L),1L,0x53317BB9L},{0x79692DFFL,9L,(-1L),1L,0x53317BB9L}}};
                VECTOR(uint8_t, 16) l_174 = (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 1UL), 1UL), 1UL, 255UL, 1UL, (VECTOR(uint8_t, 2))(255UL, 1UL), (VECTOR(uint8_t, 2))(255UL, 1UL), 255UL, 1UL, 255UL, 1UL);
                int64_t *l_186[2][8] = {{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97,&p_2768->g_97,&p_2768->g_97,&p_2768->g_97,&p_2768->g_97,&p_2768->g_97},{&p_2768->g_97,&p_2768->g_97,&p_2768->g_97,&p_2768->g_97,&p_2768->g_97,&p_2768->g_97,&p_2768->g_97,&p_2768->g_97}};
                int i, j, k;
                for (p_2768->g_97 = (-26); (p_2768->g_97 == (-30)); p_2768->g_97 = safe_sub_func_uint16_t_u_u(p_2768->g_97, 4))
                { /* block id: 54 */
                    uint32_t l_133 = 0x04CD9F8BL;
                    int64_t l_137 = 2L;
                    int32_t l_139[6][4][9];
                    VECTOR(uint8_t, 2) l_171 = (VECTOR(uint8_t, 2))(1UL, 0xF7L);
                    int i, j, k;
                    for (i = 0; i < 6; i++)
                    {
                        for (j = 0; j < 4; j++)
                        {
                            for (k = 0; k < 9; k++)
                                l_139[i][j][k] = 0x177F500FL;
                        }
                    }
                    for (p_2768->g_93 = 0; (p_2768->g_93 == (-25)); p_2768->g_93--)
                    { /* block id: 57 */
                        ++l_130;
                    }
                    p_2768->g_141[4]++;
                    ++p_2768->g_144;
                    for (p_2768->g_144 = 0; (p_2768->g_144 != 20); p_2768->g_144++)
                    { /* block id: 66 */
                        int8_t *l_152 = (void*)0;
                        int8_t *l_153 = (void*)0;
                        int8_t *l_154 = (void*)0;
                        int8_t *l_155 = (void*)0;
                        int8_t *l_156[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        int32_t l_182 = 0x61F2821DL;
                        int64_t **l_185 = &l_96[4][7][2];
                        int32_t *l_188 = &l_139[2][3][8];
                        int i;
                        l_134 ^= p_2768->g_141[2];
                        p_2768->g_93 = (safe_mul_func_int32_t_s_s((0x23L < (l_134 = ((VECTOR(int8_t, 8))(p_2768->g_151.zzxwyzzw)).s1)), ((safe_rshift_func_uint8_t_u_u((safe_sub_func_uint16_t_u_u(((l_154 = (void*)0) != ((p_2768->g_93 , (safe_div_func_int8_t_s_s((((void*)0 == &p_2768->g_92) & ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))(clz(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 8))((-((VECTOR(uint8_t, 2))((+((VECTOR(uint8_t, 4))(0xB4L, ((VECTOR(uint8_t, 2))(0UL, 0x47L)), 0x46L)).even))).yxyyyxyx))).s4541511576204760 + ((VECTOR(uint8_t, 8))(248UL, 255UL, (~GROUP_DIVERGE(0, 1)), ((VECTOR(uint8_t, 2))(l_169.xy)), ((VECTOR(uint8_t, 2))(l_170.s41)), 1UL)).s6565103577074662))) - ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))(l_171.xyyx)).xwzxyzyw ^ ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))(l_174.s6656b1269f6baa5d)).sa8 + ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))(hadd(((VECTOR(uint8_t, 4))(l_114, (((safe_div_func_uint32_t_u_u(((VECTOR(uint32_t, 16))(p_2768->g_179.xxxxyyxxxyxxyyxx)).s2, l_171.x)) | (safe_mod_func_int8_t_s_s((l_182 , ((safe_mod_func_uint64_t_u_u(((((*l_185) = l_98) != l_186[0][2]) ^ p_2768->g_144), p_2768->g_151.z)) & 0xF3CC42DB4DAEAD15L)), p_2768->g_141[1]))) <= l_135[6][1][2]), 247UL, 0UL)).xxxzwzyz, ((VECTOR(uint8_t, 8))(0xD2L))))).even + ((VECTOR(uint8_t, 4))(248UL))))).odd))).xxyyxyyy))).s0030472001351675))).even))).odd * ((VECTOR(uint8_t, 4))(0xC5L))))).z), FAKE_DIVERGE(p_2768->group_0_offset, get_group_id(0), 10)))) , (void*)0)), 1UL)), p_2768->g_12)) <= p_2768->g_136)));
                        p_2768->g_187[2][2][2] = &l_114;
                        l_188 = p_78;
                    }
                }
                if (l_135[6][1][2])
                    continue;
                if (l_170.s5)
                    continue;
            }
            if ((*p_78))
                break;
            l_114 = ((((l_205.s1 = (p_2768->g_138 | ((safe_mul_func_int16_t_s_s((GROUP_DIVERGE(2, 1) != (((*l_196) = p_2768->g_193[0]) != l_197[2][3])), (((p_2768->g_92 = (p_2768->g_187[3][4][0] = ((((((*l_201) = ((VECTOR(uint8_t, 16))(l_200.s1277322447572031)).s8) != ((l_202 , ((((VECTOR(int8_t, 2))(p_2768->g_203.yy)).even && (((void*)0 == p_2768->g_204) || (l_134 = ((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(0x39EC724DL, 5L)), 0L, 1L, ((VECTOR(int32_t, 2))(l_205.s27)), 9L, ((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 2))(l_206.s18)).yxyxyxyy, ((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 4))(p_2768->g_207.s6466)), ((VECTOR(int32_t, 2))(p_2768->g_208.s7c)).yyxx))).wywxzyxw, ((VECTOR(int32_t, 2))((-10L), 0L)).yyxyyxxx))), 0x3E42D61EL)) ^ ((VECTOR(int32_t, 8))(0x5C1AFD6CL, 0x518250D6L, 1L, ((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 2))(l_209.s24)).xyxx, ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(0x42D6315EL, 5L, ((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 4))(l_210.s1320)).even, ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(l_211.s5ec4ce350b08245e)).sd7d1 & ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 4))((~((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(l_212.s36)).xxyy <= ((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 16))(p_2768->g_213.s766c88365f3817b0)).sa886, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(p_2768->g_214.s64216645)), (safe_rshift_func_uint8_t_u_u(p_2768->g_141[0], p_2768->g_100)), (*p_78), ((VECTOR(int32_t, 2))(0L)), 0x46425BE3L, 0x24BC701FL, 0x09B0D2A8L, 0L)).lo && ((VECTOR(int32_t, 8))(0x4D8E8CD1L))))), 1L, 0x723A1A1DL, 0L, 0x1B85D363L, ((VECTOR(int32_t, 4))(0x00EBB6C1L)))).s39f9))) > ((VECTOR(int32_t, 4))(0x653F4091L))))).even != ((VECTOR(int32_t, 2))(5L))))).yyyyxyyy, ((VECTOR(int32_t, 8))((-4L))), ((VECTOR(int32_t, 8))(0x62E4C4D5L))))).even))).xwxxwwxxxxxwywzw | ((VECTOR(int32_t, 16))(0x6ACDC0B1L))))).se561)))))).zyyyzyxxwwxxxzyx, ((VECTOR(int32_t, 16))(1L))))).sf8, ((VECTOR(int32_t, 2))(0x79EC2C39L))))).yyyyxyxyxyxyyyxx != ((VECTOR(int32_t, 16))(0x3AB69775L))))).scc26))).hi))), 0L, l_170.s8, 0L, 0L, (-3L), 1L, 0x2006AEBFL, l_205.s9, ((VECTOR(int32_t, 2))(0x6632172FL)), (-1L), 0x3B8D6C72L)).s585d && ((VECTOR(int32_t, 4))((-1L)))))), ((VECTOR(int32_t, 4))((-4L)))))), (-9L))).s0655075212366015))).s20, ((VECTOR(int32_t, 2))(1L)), ((VECTOR(int32_t, 2))(0x7C646956L))))).even))) , p_2768->g_89)) != l_205.sc)) && 0x107555DCL) > 0UL) , l_217))) != &p_2768->g_7) || p_2768->g_141[4]))) != l_205.sa))) && 0x68C49058L) <= p_2768->g_97) > p_2768->g_93);
        }
        p_2768->g_187[5][0][3] = &p_2768->g_7;
    }
    for (l_130 = (-18); (l_130 <= 54); l_130 = safe_add_func_uint32_t_u_u(l_130, 3))
    { /* block id: 92 */
        uint64_t l_221 = 0x4715469824FAF9D5L;
        int32_t l_289 = 1L;
        int32_t l_291 = (-8L);
        int32_t l_292 = 0x5C6CE29CL;
        int32_t l_293[7][10] = {{0L,4L,0x2ED1BA95L,0x07140BE0L,0L,0x07140BE0L,0x2ED1BA95L,4L,0L,0x2ED1BA95L},{0L,4L,0x2ED1BA95L,0x07140BE0L,0L,0x07140BE0L,0x2ED1BA95L,4L,0L,0x2ED1BA95L},{0L,4L,0x2ED1BA95L,0x07140BE0L,0L,0x07140BE0L,0x2ED1BA95L,4L,0L,0x2ED1BA95L},{0L,4L,0x2ED1BA95L,0x07140BE0L,0L,0x07140BE0L,0x2ED1BA95L,4L,0L,0x2ED1BA95L},{0L,4L,0x2ED1BA95L,0x07140BE0L,0L,0x07140BE0L,0x2ED1BA95L,4L,0L,0x2ED1BA95L},{0L,4L,0x2ED1BA95L,0x07140BE0L,0L,0x07140BE0L,0x2ED1BA95L,4L,0L,0x2ED1BA95L},{0L,4L,0x2ED1BA95L,0x07140BE0L,0L,0x07140BE0L,0x2ED1BA95L,4L,0L,0x2ED1BA95L}};
        uint32_t l_295 = 0xB6950B1EL;
        int32_t **l_320 = &p_2768->g_187[2][2][2];
        uint32_t l_324 = 1UL;
        uint32_t *l_325 = &p_2768->g_246;
        VECTOR(uint32_t, 16) l_364 = (VECTOR(uint32_t, 16))(0xCF095F51L, (VECTOR(uint32_t, 4))(0xCF095F51L, (VECTOR(uint32_t, 2))(0xCF095F51L, 4294967295UL), 4294967295UL), 4294967295UL, 0xCF095F51L, 4294967295UL, (VECTOR(uint32_t, 2))(0xCF095F51L, 4294967295UL), (VECTOR(uint32_t, 2))(0xCF095F51L, 4294967295UL), 0xCF095F51L, 4294967295UL, 0xCF095F51L, 4294967295UL);
        VECTOR(uint16_t, 2) l_375 = (VECTOR(uint16_t, 2))(65535UL, 0xA5D1L);
        uint64_t l_385 = 3UL;
        VECTOR(int32_t, 2) l_394 = (VECTOR(int32_t, 2))(1L, (-1L));
        uint64_t l_428 = 8UL;
        VECTOR(uint32_t, 16) l_499 = (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0UL), 0UL), 0UL, 0UL, 0UL, (VECTOR(uint32_t, 2))(0UL, 0UL), (VECTOR(uint32_t, 2))(0UL, 0UL), 0UL, 0UL, 0UL, 0UL);
        int16_t l_504 = 0x124EL;
        VECTOR(int64_t, 2) l_517 = (VECTOR(int64_t, 2))(0L, 0x3CEEF5BCB8C0EA4CL);
        uint64_t l_523 = 0UL;
        int64_t **l_564 = &l_98;
        int64_t **l_565[2][8][8] = {{{&l_98,&l_98,&l_98,(void*)0,&l_98,&l_98,&l_98,(void*)0},{&l_98,&l_98,&l_98,(void*)0,&l_98,&l_98,&l_98,(void*)0},{&l_98,&l_98,&l_98,(void*)0,&l_98,&l_98,&l_98,(void*)0},{&l_98,&l_98,&l_98,(void*)0,&l_98,&l_98,&l_98,(void*)0},{&l_98,&l_98,&l_98,(void*)0,&l_98,&l_98,&l_98,(void*)0},{&l_98,&l_98,&l_98,(void*)0,&l_98,&l_98,&l_98,(void*)0},{&l_98,&l_98,&l_98,(void*)0,&l_98,&l_98,&l_98,(void*)0},{&l_98,&l_98,&l_98,(void*)0,&l_98,&l_98,&l_98,(void*)0}},{{&l_98,&l_98,&l_98,(void*)0,&l_98,&l_98,&l_98,(void*)0},{&l_98,&l_98,&l_98,(void*)0,&l_98,&l_98,&l_98,(void*)0},{&l_98,&l_98,&l_98,(void*)0,&l_98,&l_98,&l_98,(void*)0},{&l_98,&l_98,&l_98,(void*)0,&l_98,&l_98,&l_98,(void*)0},{&l_98,&l_98,&l_98,(void*)0,&l_98,&l_98,&l_98,(void*)0},{&l_98,&l_98,&l_98,(void*)0,&l_98,&l_98,&l_98,(void*)0},{&l_98,&l_98,&l_98,(void*)0,&l_98,&l_98,&l_98,(void*)0},{&l_98,&l_98,&l_98,(void*)0,&l_98,&l_98,&l_98,(void*)0}}};
        VECTOR(uint32_t, 4) l_619 = (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0x19607FCAL), 0x19607FCAL);
        uint64_t *l_639 = (void*)0;
        int8_t l_641[3][3] = {{1L,(-1L),1L},{1L,(-1L),1L},{1L,(-1L),1L}};
        int16_t l_665[10] = {0x4719L,(-1L),0x4719L,0x4719L,(-1L),0x4719L,0x4719L,(-1L),0x4719L,0x4719L};
        VECTOR(uint32_t, 8) l_693 = (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0UL), 0UL), 0UL, 0UL, 0UL);
        uint32_t l_704 = 1UL;
        uint32_t l_748 = 4294967289UL;
        int i, j, k;
        if (l_220)
            break;
    }
    return &p_2768->g_12;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_2769;
    struct S0* p_2768 = &c_2769;
    struct S0 c_2770 = {
        0x350BF34FL, // p_2768->g_2
        5UL, // p_2768->g_5
        0x10E164CAL, // p_2768->g_6
        (-1L), // p_2768->g_7
        (-1L), // p_2768->g_12
        {{0x1E043EEF7D266845L,18446744073709551612UL,0x1E043EEF7D266845L,0x1E043EEF7D266845L,18446744073709551612UL,0x1E043EEF7D266845L,0x1E043EEF7D266845L,18446744073709551612UL,0x1E043EEF7D266845L},{0x1E043EEF7D266845L,18446744073709551612UL,0x1E043EEF7D266845L,0x1E043EEF7D266845L,18446744073709551612UL,0x1E043EEF7D266845L,0x1E043EEF7D266845L,18446744073709551612UL,0x1E043EEF7D266845L},{0x1E043EEF7D266845L,18446744073709551612UL,0x1E043EEF7D266845L,0x1E043EEF7D266845L,18446744073709551612UL,0x1E043EEF7D266845L,0x1E043EEF7D266845L,18446744073709551612UL,0x1E043EEF7D266845L}}, // p_2768->g_19
        7L, // p_2768->g_89
        0x0B3DEF23L, // p_2768->g_93
        &p_2768->g_93, // p_2768->g_92
        0x1224A3AAF95405D2L, // p_2768->g_97
        0x45F9L, // p_2768->g_100
        1UL, // p_2768->g_103
        0L, // p_2768->g_136
        0x1B1567E6L, // p_2768->g_138
        0x5673C17101716674L, // p_2768->g_140
        {3UL,3UL,3UL,3UL,3UL}, // p_2768->g_141
        18446744073709551610UL, // p_2768->g_144
        (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-1L)), (-1L)), // p_2768->g_151
        (VECTOR(uint32_t, 2))(4294967295UL, 0x89A4F5C6L), // p_2768->g_179
        {{{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0}},{{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0}},{{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0}},{{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0}},{{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0}},{{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0}},{{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0}},{{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0}},{{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0},{&p_2768->g_12,&p_2768->g_12,&p_2768->g_7,(void*)0}}}, // p_2768->g_187
        (void*)0, // p_2768->g_195
        {{(void*)0,(void*)0,&p_2768->g_195,&p_2768->g_195,(void*)0,&p_2768->g_195},{(void*)0,(void*)0,&p_2768->g_195,&p_2768->g_195,(void*)0,&p_2768->g_195},{(void*)0,(void*)0,&p_2768->g_195,&p_2768->g_195,(void*)0,&p_2768->g_195},{(void*)0,(void*)0,&p_2768->g_195,&p_2768->g_195,(void*)0,&p_2768->g_195},{(void*)0,(void*)0,&p_2768->g_195,&p_2768->g_195,(void*)0,&p_2768->g_195},{(void*)0,(void*)0,&p_2768->g_195,&p_2768->g_195,(void*)0,&p_2768->g_195},{(void*)0,(void*)0,&p_2768->g_195,&p_2768->g_195,(void*)0,&p_2768->g_195},{(void*)0,(void*)0,&p_2768->g_195,&p_2768->g_195,(void*)0,&p_2768->g_195}}, // p_2768->g_194
        {&p_2768->g_194[7][5],&p_2768->g_194[5][3],&p_2768->g_194[7][5],&p_2768->g_194[7][5],&p_2768->g_194[5][3],&p_2768->g_194[7][5]}, // p_2768->g_193
        (VECTOR(int8_t, 2))(8L, 0x0AL), // p_2768->g_203
        (void*)0, // p_2768->g_204
        (VECTOR(int32_t, 8))(0x3BD95422L, (VECTOR(int32_t, 4))(0x3BD95422L, (VECTOR(int32_t, 2))(0x3BD95422L, 0x5DC3FCBCL), 0x5DC3FCBCL), 0x5DC3FCBCL, 0x3BD95422L, 0x5DC3FCBCL), // p_2768->g_207
        (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x1C497E37L), 0x1C497E37L), 0x1C497E37L, 1L, 0x1C497E37L, (VECTOR(int32_t, 2))(1L, 0x1C497E37L), (VECTOR(int32_t, 2))(1L, 0x1C497E37L), 1L, 0x1C497E37L, 1L, 0x1C497E37L), // p_2768->g_208
        (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 1L), 1L), 1L, 0L, 1L, (VECTOR(int32_t, 2))(0L, 1L), (VECTOR(int32_t, 2))(0L, 1L), 0L, 1L, 0L, 1L), // p_2768->g_213
        (VECTOR(int32_t, 8))((-6L), (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), 1L), 1L), 1L, (-6L), 1L), // p_2768->g_214
        (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x6E53L), 0x6E53L), // p_2768->g_236
        0x51691744L, // p_2768->g_246
        (void*)0, // p_2768->g_249
        &p_2768->g_246, // p_2768->g_273
        (-4L), // p_2768->g_276
        {(-7L),(-7L),(-7L),(-7L)}, // p_2768->g_277
        0x0FC9CD99L, // p_2768->g_278
        0L, // p_2768->g_279
        0x72FD2638L, // p_2768->g_280
        {{{(void*)0,&p_2768->g_278,(void*)0,(void*)0},{(void*)0,&p_2768->g_278,(void*)0,(void*)0},{(void*)0,&p_2768->g_278,(void*)0,(void*)0},{(void*)0,&p_2768->g_278,(void*)0,(void*)0},{(void*)0,&p_2768->g_278,(void*)0,(void*)0}},{{(void*)0,&p_2768->g_278,(void*)0,(void*)0},{(void*)0,&p_2768->g_278,(void*)0,(void*)0},{(void*)0,&p_2768->g_278,(void*)0,(void*)0},{(void*)0,&p_2768->g_278,(void*)0,(void*)0},{(void*)0,&p_2768->g_278,(void*)0,(void*)0}},{{(void*)0,&p_2768->g_278,(void*)0,(void*)0},{(void*)0,&p_2768->g_278,(void*)0,(void*)0},{(void*)0,&p_2768->g_278,(void*)0,(void*)0},{(void*)0,&p_2768->g_278,(void*)0,(void*)0},{(void*)0,&p_2768->g_278,(void*)0,(void*)0}},{{(void*)0,&p_2768->g_278,(void*)0,(void*)0},{(void*)0,&p_2768->g_278,(void*)0,(void*)0},{(void*)0,&p_2768->g_278,(void*)0,(void*)0},{(void*)0,&p_2768->g_278,(void*)0,(void*)0},{(void*)0,&p_2768->g_278,(void*)0,(void*)0}}}, // p_2768->g_275
        (-6L), // p_2768->g_282
        (VECTOR(int8_t, 16))(0x70L, (VECTOR(int8_t, 4))(0x70L, (VECTOR(int8_t, 2))(0x70L, (-1L)), (-1L)), (-1L), 0x70L, (-1L), (VECTOR(int8_t, 2))(0x70L, (-1L)), (VECTOR(int8_t, 2))(0x70L, (-1L)), 0x70L, (-1L), 0x70L, (-1L)), // p_2768->g_309
        0x454178CFL, // p_2768->g_328
        (VECTOR(int64_t, 8))(0x2C1BF2CFC2F8AD91L, (VECTOR(int64_t, 4))(0x2C1BF2CFC2F8AD91L, (VECTOR(int64_t, 2))(0x2C1BF2CFC2F8AD91L, 0x13E9D81E8A26FA73L), 0x13E9D81E8A26FA73L), 0x13E9D81E8A26FA73L, 0x2C1BF2CFC2F8AD91L, 0x13E9D81E8A26FA73L), // p_2768->g_387
        (VECTOR(int64_t, 2))(0x7ED5205649F48F39L, (-3L)), // p_2768->g_388
        (VECTOR(int64_t, 8))(0x7D2C66E92DFF37D5L, (VECTOR(int64_t, 4))(0x7D2C66E92DFF37D5L, (VECTOR(int64_t, 2))(0x7D2C66E92DFF37D5L, 0L), 0L), 0L, 0x7D2C66E92DFF37D5L, 0L), // p_2768->g_389
        0xF7L, // p_2768->g_393
        0x4EBCL, // p_2768->g_411
        0x46ADF3B0F000C5B1L, // p_2768->g_422
        (void*)0, // p_2768->g_448
        &p_2768->g_448, // p_2768->g_447
        (VECTOR(uint64_t, 8))(0x3DE92B8589FD9A0DL, (VECTOR(uint64_t, 4))(0x3DE92B8589FD9A0DL, (VECTOR(uint64_t, 2))(0x3DE92B8589FD9A0DL, 1UL), 1UL), 1UL, 0x3DE92B8589FD9A0DL, 1UL), // p_2768->g_453
        (VECTOR(uint8_t, 4))(249UL, (VECTOR(uint8_t, 2))(249UL, 255UL), 255UL), // p_2768->g_472
        (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L, (VECTOR(int32_t, 2))((-1L), 1L), (VECTOR(int32_t, 2))((-1L), 1L), (-1L), 1L, (-1L), 1L), // p_2768->g_482
        (VECTOR(int32_t, 16))(0x4AD63468L, (VECTOR(int32_t, 4))(0x4AD63468L, (VECTOR(int32_t, 2))(0x4AD63468L, (-4L)), (-4L)), (-4L), 0x4AD63468L, (-4L), (VECTOR(int32_t, 2))(0x4AD63468L, (-4L)), (VECTOR(int32_t, 2))(0x4AD63468L, (-4L)), 0x4AD63468L, (-4L), 0x4AD63468L, (-4L)), // p_2768->g_484
        (VECTOR(uint32_t, 16))(0xFAF835EAL, (VECTOR(uint32_t, 4))(0xFAF835EAL, (VECTOR(uint32_t, 2))(0xFAF835EAL, 8UL), 8UL), 8UL, 0xFAF835EAL, 8UL, (VECTOR(uint32_t, 2))(0xFAF835EAL, 8UL), (VECTOR(uint32_t, 2))(0xFAF835EAL, 8UL), 0xFAF835EAL, 8UL, 0xFAF835EAL, 8UL), // p_2768->g_493
        &p_2768->g_97, // p_2768->g_506
        &p_2768->g_506, // p_2768->g_505
        (-1L), // p_2768->g_507
        (VECTOR(int16_t, 4))(5L, (VECTOR(int16_t, 2))(5L, 0x2279L), 0x2279L), // p_2768->g_526
        (VECTOR(uint64_t, 2))(0x25F80052AD50BDFCL, 0xDE3766DA12724C65L), // p_2768->g_581
        (VECTOR(uint64_t, 8))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 1UL), 1UL), 1UL, 18446744073709551615UL, 1UL), // p_2768->g_597
        (VECTOR(uint32_t, 2))(0UL, 0xCF99B4A3L), // p_2768->g_623
        (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), 0x1717D99DL), 0x1717D99DL), // p_2768->g_648
        (VECTOR(int32_t, 8))(0x4582B829L, (VECTOR(int32_t, 4))(0x4582B829L, (VECTOR(int32_t, 2))(0x4582B829L, 9L), 9L), 9L, 0x4582B829L, 9L), // p_2768->g_649
        (VECTOR(int64_t, 2))(1L, 0x0937F56CD9B57338L), // p_2768->g_685
        (VECTOR(uint32_t, 2))(0x37108C2FL, 0xEA9000BBL), // p_2768->g_694
        (VECTOR(int64_t, 8))((-2L), (VECTOR(int64_t, 4))((-2L), (VECTOR(int64_t, 2))((-2L), 0x54ECE954433FC7A6L), 0x54ECE954433FC7A6L), 0x54ECE954433FC7A6L, (-2L), 0x54ECE954433FC7A6L), // p_2768->g_714
        (VECTOR(uint16_t, 16))(0xD0D3L, (VECTOR(uint16_t, 4))(0xD0D3L, (VECTOR(uint16_t, 2))(0xD0D3L, 65529UL), 65529UL), 65529UL, 0xD0D3L, 65529UL, (VECTOR(uint16_t, 2))(0xD0D3L, 65529UL), (VECTOR(uint16_t, 2))(0xD0D3L, 65529UL), 0xD0D3L, 65529UL, 0xD0D3L, 65529UL), // p_2768->g_724
        (VECTOR(uint32_t, 8))(0x83734D29L, (VECTOR(uint32_t, 4))(0x83734D29L, (VECTOR(uint32_t, 2))(0x83734D29L, 0x5DD1D10EL), 0x5DD1D10EL), 0x5DD1D10EL, 0x83734D29L, 0x5DD1D10EL), // p_2768->g_742
        0x7A53L, // p_2768->g_786
        (VECTOR(uint32_t, 8))(0xB2C1B6CFL, (VECTOR(uint32_t, 4))(0xB2C1B6CFL, (VECTOR(uint32_t, 2))(0xB2C1B6CFL, 0x3AC40777L), 0x3AC40777L), 0x3AC40777L, 0xB2C1B6CFL, 0x3AC40777L), // p_2768->g_797
        (VECTOR(int64_t, 4))(0x746F990C8361B53EL, (VECTOR(int64_t, 2))(0x746F990C8361B53EL, 6L), 6L), // p_2768->g_830
        (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x6C0191F84D2FB72EL), 0x6C0191F84D2FB72EL), // p_2768->g_831
        (VECTOR(uint32_t, 16))(0x9ED91DBBL, (VECTOR(uint32_t, 4))(0x9ED91DBBL, (VECTOR(uint32_t, 2))(0x9ED91DBBL, 1UL), 1UL), 1UL, 0x9ED91DBBL, 1UL, (VECTOR(uint32_t, 2))(0x9ED91DBBL, 1UL), (VECTOR(uint32_t, 2))(0x9ED91DBBL, 1UL), 0x9ED91DBBL, 1UL, 0x9ED91DBBL, 1UL), // p_2768->g_844
        (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 4294967295UL), 4294967295UL), 4294967295UL, 0UL, 4294967295UL, (VECTOR(uint32_t, 2))(0UL, 4294967295UL), (VECTOR(uint32_t, 2))(0UL, 4294967295UL), 0UL, 4294967295UL, 0UL, 4294967295UL), // p_2768->g_845
        (VECTOR(int64_t, 16))(0x5BE85A0B26501B3CL, (VECTOR(int64_t, 4))(0x5BE85A0B26501B3CL, (VECTOR(int64_t, 2))(0x5BE85A0B26501B3CL, 1L), 1L), 1L, 0x5BE85A0B26501B3CL, 1L, (VECTOR(int64_t, 2))(0x5BE85A0B26501B3CL, 1L), (VECTOR(int64_t, 2))(0x5BE85A0B26501B3CL, 1L), 0x5BE85A0B26501B3CL, 1L, 0x5BE85A0B26501B3CL, 1L), // p_2768->g_871
        (VECTOR(int64_t, 8))(0x67128917FEF184ABL, (VECTOR(int64_t, 4))(0x67128917FEF184ABL, (VECTOR(int64_t, 2))(0x67128917FEF184ABL, 0x28BE0DD79C00CE3CL), 0x28BE0DD79C00CE3CL), 0x28BE0DD79C00CE3CL, 0x67128917FEF184ABL, 0x28BE0DD79C00CE3CL), // p_2768->g_872
        (VECTOR(uint64_t, 8))(0xA81C624A821EE4B7L, (VECTOR(uint64_t, 4))(0xA81C624A821EE4B7L, (VECTOR(uint64_t, 2))(0xA81C624A821EE4B7L, 1UL), 1UL), 1UL, 0xA81C624A821EE4B7L, 1UL), // p_2768->g_879
        (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x357EF581AF9464BAL), 0x357EF581AF9464BAL), 0x357EF581AF9464BAL, (-1L), 0x357EF581AF9464BAL), // p_2768->g_884
        (VECTOR(int64_t, 8))(0x1DD3B204E69569D8L, (VECTOR(int64_t, 4))(0x1DD3B204E69569D8L, (VECTOR(int64_t, 2))(0x1DD3B204E69569D8L, 0L), 0L), 0L, 0x1DD3B204E69569D8L, 0L), // p_2768->g_947
        (void*)0, // p_2768->g_995
        (VECTOR(int8_t, 16))(4L, (VECTOR(int8_t, 4))(4L, (VECTOR(int8_t, 2))(4L, 1L), 1L), 1L, 4L, 1L, (VECTOR(int8_t, 2))(4L, 1L), (VECTOR(int8_t, 2))(4L, 1L), 4L, 1L, 4L, 1L), // p_2768->g_1027
        (VECTOR(int8_t, 4))((-3L), (VECTOR(int8_t, 2))((-3L), 0x4DL), 0x4DL), // p_2768->g_1028
        (VECTOR(int16_t, 4))(0x03BBL, (VECTOR(int16_t, 2))(0x03BBL, 0L), 0L), // p_2768->g_1092
        (VECTOR(int16_t, 4))(0x143FL, (VECTOR(int16_t, 2))(0x143FL, 0x0958L), 0x0958L), // p_2768->g_1093
        (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x21D3L), 0x21D3L), // p_2768->g_1114
        (VECTOR(uint16_t, 2))(0xDFAEL, 0x256CL), // p_2768->g_1119
        (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 65535UL), 65535UL), 65535UL, 0UL, 65535UL), // p_2768->g_1123
        (VECTOR(uint16_t, 8))(0xA992L, (VECTOR(uint16_t, 4))(0xA992L, (VECTOR(uint16_t, 2))(0xA992L, 0UL), 0UL), 0UL, 0xA992L, 0UL), // p_2768->g_1134
        (VECTOR(int16_t, 4))(0x0D53L, (VECTOR(int16_t, 2))(0x0D53L, 1L), 1L), // p_2768->g_1135
        (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 251UL), 251UL), // p_2768->g_1142
        (VECTOR(uint8_t, 8))(0x01L, (VECTOR(uint8_t, 4))(0x01L, (VECTOR(uint8_t, 2))(0x01L, 0xBEL), 0xBEL), 0xBEL, 0x01L, 0xBEL), // p_2768->g_1143
        (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0xD31BL), 0xD31BL), 0xD31BL, 1UL, 0xD31BL, (VECTOR(uint16_t, 2))(1UL, 0xD31BL), (VECTOR(uint16_t, 2))(1UL, 0xD31BL), 1UL, 0xD31BL, 1UL, 0xD31BL), // p_2768->g_1187
        &p_2768->g_422, // p_2768->g_1190
        (VECTOR(int16_t, 4))((-10L), (VECTOR(int16_t, 2))((-10L), 0x0B27L), 0x0B27L), // p_2768->g_1237
        0L, // p_2768->g_1263
        &p_2768->g_1263, // p_2768->g_1262
        &p_2768->g_1262, // p_2768->g_1261
        5L, // p_2768->g_1287
        0x76L, // p_2768->g_1302
        (VECTOR(int64_t, 16))(0x143C9F9543BC0A3CL, (VECTOR(int64_t, 4))(0x143C9F9543BC0A3CL, (VECTOR(int64_t, 2))(0x143C9F9543BC0A3CL, 0x6234F595434B1924L), 0x6234F595434B1924L), 0x6234F595434B1924L, 0x143C9F9543BC0A3CL, 0x6234F595434B1924L, (VECTOR(int64_t, 2))(0x143C9F9543BC0A3CL, 0x6234F595434B1924L), (VECTOR(int64_t, 2))(0x143C9F9543BC0A3CL, 0x6234F595434B1924L), 0x143C9F9543BC0A3CL, 0x6234F595434B1924L, 0x143C9F9543BC0A3CL, 0x6234F595434B1924L), // p_2768->g_1307
        (VECTOR(int64_t, 8))(0x11FA2BAFEC6A56A1L, (VECTOR(int64_t, 4))(0x11FA2BAFEC6A56A1L, (VECTOR(int64_t, 2))(0x11FA2BAFEC6A56A1L, 4L), 4L), 4L, 0x11FA2BAFEC6A56A1L, 4L), // p_2768->g_1309
        (VECTOR(int64_t, 4))(7L, (VECTOR(int64_t, 2))(7L, (-8L)), (-8L)), // p_2768->g_1312
        (VECTOR(uint16_t, 4))(0xA719L, (VECTOR(uint16_t, 2))(0xA719L, 0x4B53L), 0x4B53L), // p_2768->g_1314
        (VECTOR(int8_t, 16))(0x74L, (VECTOR(int8_t, 4))(0x74L, (VECTOR(int8_t, 2))(0x74L, 1L), 1L), 1L, 0x74L, 1L, (VECTOR(int8_t, 2))(0x74L, 1L), (VECTOR(int8_t, 2))(0x74L, 1L), 0x74L, 1L, 0x74L, 1L), // p_2768->g_1318
        (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), 0L), 0L), // p_2768->g_1324
        (VECTOR(uint32_t, 2))(0xAA2C28F2L, 0x25EA1EC7L), // p_2768->g_1333
        (VECTOR(uint8_t, 2))(0xAEL, 7UL), // p_2768->g_1338
        &p_2768->g_89, // p_2768->g_1375
        &p_2768->g_1375, // p_2768->g_1374
        (VECTOR(int8_t, 8))(0x1BL, (VECTOR(int8_t, 4))(0x1BL, (VECTOR(int8_t, 2))(0x1BL, 0x3BL), 0x3BL), 0x3BL, 0x1BL, 0x3BL), // p_2768->g_1451
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_2768->g_1461
        {&p_2768->g_1287,&p_2768->g_1287,&p_2768->g_1287,&p_2768->g_1287,&p_2768->g_1287,&p_2768->g_1287,&p_2768->g_1287,&p_2768->g_1287,&p_2768->g_1287,&p_2768->g_1287}, // p_2768->g_1462
        (VECTOR(uint8_t, 2))(0x17L, 0x0AL), // p_2768->g_1469
        {{1UL,1UL,9UL,0xB6L,0x2FL,0xB6L,9UL,1UL,1UL},{1UL,1UL,9UL,0xB6L,0x2FL,0xB6L,9UL,1UL,1UL}}, // p_2768->g_1488
        (VECTOR(int8_t, 2))(0x3FL, 0x60L), // p_2768->g_1511
        (VECTOR(int8_t, 8))(0x7EL, (VECTOR(int8_t, 4))(0x7EL, (VECTOR(int8_t, 2))(0x7EL, 2L), 2L), 2L, 0x7EL, 2L), // p_2768->g_1512
        (VECTOR(int8_t, 4))((-10L), (VECTOR(int8_t, 2))((-10L), 0x5CL), 0x5CL), // p_2768->g_1517
        (VECTOR(int8_t, 2))((-3L), 0x29L), // p_2768->g_1520
        (VECTOR(int8_t, 2))((-1L), 2L), // p_2768->g_1521
        (VECTOR(int32_t, 8))(0x247EEDBAL, (VECTOR(int32_t, 4))(0x247EEDBAL, (VECTOR(int32_t, 2))(0x247EEDBAL, 0L), 0L), 0L, 0x247EEDBAL, 0L), // p_2768->g_1532
        (VECTOR(int32_t, 16))(0x553EACCFL, (VECTOR(int32_t, 4))(0x553EACCFL, (VECTOR(int32_t, 2))(0x553EACCFL, 0x010951EAL), 0x010951EAL), 0x010951EAL, 0x553EACCFL, 0x010951EAL, (VECTOR(int32_t, 2))(0x553EACCFL, 0x010951EAL), (VECTOR(int32_t, 2))(0x553EACCFL, 0x010951EAL), 0x553EACCFL, 0x010951EAL, 0x553EACCFL, 0x010951EAL), // p_2768->g_1533
        9L, // p_2768->g_1555
        0xB0D1A22D538BE8A7L, // p_2768->g_1557
        (VECTOR(uint8_t, 16))(0xA3L, (VECTOR(uint8_t, 4))(0xA3L, (VECTOR(uint8_t, 2))(0xA3L, 0x51L), 0x51L), 0x51L, 0xA3L, 0x51L, (VECTOR(uint8_t, 2))(0xA3L, 0x51L), (VECTOR(uint8_t, 2))(0xA3L, 0x51L), 0xA3L, 0x51L, 0xA3L, 0x51L), // p_2768->g_1575
        (void*)0, // p_2768->g_1605
        &p_2768->g_246, // p_2768->g_1623
        {4294967295UL}, // p_2768->g_1625
        &p_2768->g_1625[0], // p_2768->g_1624
        1UL, // p_2768->g_1656
        (VECTOR(int16_t, 4))(0x2FE8L, (VECTOR(int16_t, 2))(0x2FE8L, (-1L)), (-1L)), // p_2768->g_1670
        {{{1UL,0UL,65528UL,0UL,0UL,0UL,65528UL,0UL},{1UL,0UL,65528UL,0UL,0UL,0UL,65528UL,0UL}},{{1UL,0UL,65528UL,0UL,0UL,0UL,65528UL,0UL},{1UL,0UL,65528UL,0UL,0UL,0UL,65528UL,0UL}},{{1UL,0UL,65528UL,0UL,0UL,0UL,65528UL,0UL},{1UL,0UL,65528UL,0UL,0UL,0UL,65528UL,0UL}},{{1UL,0UL,65528UL,0UL,0UL,0UL,65528UL,0UL},{1UL,0UL,65528UL,0UL,0UL,0UL,65528UL,0UL}},{{1UL,0UL,65528UL,0UL,0UL,0UL,65528UL,0UL},{1UL,0UL,65528UL,0UL,0UL,0UL,65528UL,0UL}},{{1UL,0UL,65528UL,0UL,0UL,0UL,65528UL,0UL},{1UL,0UL,65528UL,0UL,0UL,0UL,65528UL,0UL}},{{1UL,0UL,65528UL,0UL,0UL,0UL,65528UL,0UL},{1UL,0UL,65528UL,0UL,0UL,0UL,65528UL,0UL}},{{1UL,0UL,65528UL,0UL,0UL,0UL,65528UL,0UL},{1UL,0UL,65528UL,0UL,0UL,0UL,65528UL,0UL}},{{1UL,0UL,65528UL,0UL,0UL,0UL,65528UL,0UL},{1UL,0UL,65528UL,0UL,0UL,0UL,65528UL,0UL}},{{1UL,0UL,65528UL,0UL,0UL,0UL,65528UL,0UL},{1UL,0UL,65528UL,0UL,0UL,0UL,65528UL,0UL}}}, // p_2768->g_1691
        &p_2768->g_1691[7][0][6], // p_2768->g_1690
        {{&p_2768->g_1690},{&p_2768->g_1690},{&p_2768->g_1690},{&p_2768->g_1690}}, // p_2768->g_1689
        &p_2768->g_1689[3][0], // p_2768->g_1688
        &p_2768->g_1688, // p_2768->g_1687
        {&p_2768->g_1687,&p_2768->g_1687,&p_2768->g_1687,&p_2768->g_1687}, // p_2768->g_1686
        (VECTOR(int64_t, 16))(3L, (VECTOR(int64_t, 4))(3L, (VECTOR(int64_t, 2))(3L, 0x2C3DCCD505EE192EL), 0x2C3DCCD505EE192EL), 0x2C3DCCD505EE192EL, 3L, 0x2C3DCCD505EE192EL, (VECTOR(int64_t, 2))(3L, 0x2C3DCCD505EE192EL), (VECTOR(int64_t, 2))(3L, 0x2C3DCCD505EE192EL), 3L, 0x2C3DCCD505EE192EL, 3L, 0x2C3DCCD505EE192EL), // p_2768->g_1698
        (VECTOR(uint64_t, 16))(18446744073709551611UL, (VECTOR(uint64_t, 4))(18446744073709551611UL, (VECTOR(uint64_t, 2))(18446744073709551611UL, 0UL), 0UL), 0UL, 18446744073709551611UL, 0UL, (VECTOR(uint64_t, 2))(18446744073709551611UL, 0UL), (VECTOR(uint64_t, 2))(18446744073709551611UL, 0UL), 18446744073709551611UL, 0UL, 18446744073709551611UL, 0UL), // p_2768->g_1724
        (void*)0, // p_2768->g_1749
        &p_2768->g_1749, // p_2768->g_1748
        &p_2768->g_1748, // p_2768->g_1747
        (VECTOR(int64_t, 4))(0x1BE39F1547C54752L, (VECTOR(int64_t, 2))(0x1BE39F1547C54752L, 0x20805470BB3AF78CL), 0x20805470BB3AF78CL), // p_2768->g_1756
        (VECTOR(int16_t, 8))(0x4212L, (VECTOR(int16_t, 4))(0x4212L, (VECTOR(int16_t, 2))(0x4212L, 0L), 0L), 0L, 0x4212L, 0L), // p_2768->g_1816
        &p_2768->g_1462[6], // p_2768->g_1888
        (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x88FD659FC3AFE4F7L), 0x88FD659FC3AFE4F7L), 0x88FD659FC3AFE4F7L, 18446744073709551615UL, 0x88FD659FC3AFE4F7L, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x88FD659FC3AFE4F7L), (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x88FD659FC3AFE4F7L), 18446744073709551615UL, 0x88FD659FC3AFE4F7L, 18446744073709551615UL, 0x88FD659FC3AFE4F7L), // p_2768->g_1907
        (VECTOR(uint32_t, 8))(0xD6F986E3L, (VECTOR(uint32_t, 4))(0xD6F986E3L, (VECTOR(uint32_t, 2))(0xD6F986E3L, 4294967287UL), 4294967287UL), 4294967287UL, 0xD6F986E3L, 4294967287UL), // p_2768->g_1909
        {&p_2768->g_193[2],&p_2768->g_193[2],&p_2768->g_193[2],&p_2768->g_193[2],&p_2768->g_193[2],&p_2768->g_193[2],&p_2768->g_193[2],&p_2768->g_193[2],&p_2768->g_193[2],&p_2768->g_193[2]}, // p_2768->g_1918
        &p_2768->g_1918[6], // p_2768->g_1917
        (VECTOR(uint16_t, 16))(0x1F9EL, (VECTOR(uint16_t, 4))(0x1F9EL, (VECTOR(uint16_t, 2))(0x1F9EL, 0x800BL), 0x800BL), 0x800BL, 0x1F9EL, 0x800BL, (VECTOR(uint16_t, 2))(0x1F9EL, 0x800BL), (VECTOR(uint16_t, 2))(0x1F9EL, 0x800BL), 0x1F9EL, 0x800BL, 0x1F9EL, 0x800BL), // p_2768->g_1926
        (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x3AL), 0x3AL), 0x3AL, (-1L), 0x3AL, (VECTOR(int8_t, 2))((-1L), 0x3AL), (VECTOR(int8_t, 2))((-1L), 0x3AL), (-1L), 0x3AL, (-1L), 0x3AL), // p_2768->g_1947
        &p_2768->g_1462[4], // p_2768->g_1956
        (void*)0, // p_2768->g_1957
        &p_2768->g_1462[2], // p_2768->g_1958
        &p_2768->g_92, // p_2768->g_1968
        (VECTOR(int8_t, 16))(0x5BL, (VECTOR(int8_t, 4))(0x5BL, (VECTOR(int8_t, 2))(0x5BL, 0x37L), 0x37L), 0x37L, 0x5BL, 0x37L, (VECTOR(int8_t, 2))(0x5BL, 0x37L), (VECTOR(int8_t, 2))(0x5BL, 0x37L), 0x5BL, 0x37L, 0x5BL, 0x37L), // p_2768->g_1977
        (VECTOR(int8_t, 2))(0x14L, 0x6FL), // p_2768->g_1979
        (VECTOR(int16_t, 8))(0x0FABL, (VECTOR(int16_t, 4))(0x0FABL, (VECTOR(int16_t, 2))(0x0FABL, (-1L)), (-1L)), (-1L), 0x0FABL, (-1L)), // p_2768->g_1986
        (VECTOR(uint16_t, 2))(65534UL, 0xA794L), // p_2768->g_2001
        (VECTOR(uint16_t, 4))(0xF12EL, (VECTOR(uint16_t, 2))(0xF12EL, 0xA292L), 0xA292L), // p_2768->g_2002
        (VECTOR(int32_t, 2))((-1L), 0x4D7DCBCBL), // p_2768->g_2006
        (VECTOR(int32_t, 2))(0x7E7AC9F4L, 2L), // p_2768->g_2012
        (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x196BL), 0x196BL), 0x196BL, 1UL, 0x196BL), // p_2768->g_2026
        0x619F3B91L, // p_2768->g_2029
        (VECTOR(uint16_t, 2))(0UL, 0x1FE1L), // p_2768->g_2040
        (VECTOR(uint16_t, 8))(7UL, (VECTOR(uint16_t, 4))(7UL, (VECTOR(uint16_t, 2))(7UL, 0x8F74L), 0x8F74L), 0x8F74L, 7UL, 0x8F74L), // p_2768->g_2046
        (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x11A5E796L), 0x11A5E796L), 0x11A5E796L, (-1L), 0x11A5E796L), // p_2768->g_2050
        (VECTOR(int16_t, 16))(0x17B6L, (VECTOR(int16_t, 4))(0x17B6L, (VECTOR(int16_t, 2))(0x17B6L, 0x31C4L), 0x31C4L), 0x31C4L, 0x17B6L, 0x31C4L, (VECTOR(int16_t, 2))(0x17B6L, 0x31C4L), (VECTOR(int16_t, 2))(0x17B6L, 0x31C4L), 0x17B6L, 0x31C4L, 0x17B6L, 0x31C4L), // p_2768->g_2067
        (VECTOR(uint8_t, 16))(249UL, (VECTOR(uint8_t, 4))(249UL, (VECTOR(uint8_t, 2))(249UL, 0UL), 0UL), 0UL, 249UL, 0UL, (VECTOR(uint8_t, 2))(249UL, 0UL), (VECTOR(uint8_t, 2))(249UL, 0UL), 249UL, 0UL, 249UL, 0UL), // p_2768->g_2105
        (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 255UL), 255UL), // p_2768->g_2107
        (VECTOR(uint8_t, 4))(0x56L, (VECTOR(uint8_t, 2))(0x56L, 0x2AL), 0x2AL), // p_2768->g_2114
        (VECTOR(uint8_t, 2))(0x07L, 0UL), // p_2768->g_2115
        (VECTOR(uint8_t, 2))(0x0BL, 254UL), // p_2768->g_2116
        (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0UL), 0UL), // p_2768->g_2120
        (VECTOR(int32_t, 8))(0x30AFA902L, (VECTOR(int32_t, 4))(0x30AFA902L, (VECTOR(int32_t, 2))(0x30AFA902L, 1L), 1L), 1L, 0x30AFA902L, 1L), // p_2768->g_2121
        (VECTOR(uint16_t, 8))(0xF935L, (VECTOR(uint16_t, 4))(0xF935L, (VECTOR(uint16_t, 2))(0xF935L, 0x2F4AL), 0x2F4AL), 0x2F4AL, 0xF935L, 0x2F4AL), // p_2768->g_2128
        (void*)0, // p_2768->g_2164
        {&p_2768->g_1917,&p_2768->g_1917,&p_2768->g_1917,&p_2768->g_1917,&p_2768->g_1917}, // p_2768->g_2192
        {{&p_2768->g_103,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{&p_2768->g_103,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{&p_2768->g_103,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{&p_2768->g_103,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{&p_2768->g_103,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{&p_2768->g_103,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{&p_2768->g_103,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{&p_2768->g_103,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{&p_2768->g_103,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{&p_2768->g_103,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_2768->g_2200
        &p_2768->g_2200[8][4], // p_2768->g_2199
        (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0xEBB7L), 0xEBB7L), 0xEBB7L, 1UL, 0xEBB7L), // p_2768->g_2207
        {{{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L}},{{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L}},{{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L}},{{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L}},{{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L}},{{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L}},{{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L}},{{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L}},{{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L}},{{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L},{0xB91D0A81L,0UL,0xD706B030L}}}, // p_2768->g_2231
        (VECTOR(uint8_t, 2))(255UL, 1UL), // p_2768->g_2276
        (VECTOR(uint16_t, 2))(0x9059L, 0xA7F4L), // p_2768->g_2286
        (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0xF0L), 0xF0L), // p_2768->g_2298
        (VECTOR(uint64_t, 8))(0x6E8FEEAD42709D06L, (VECTOR(uint64_t, 4))(0x6E8FEEAD42709D06L, (VECTOR(uint64_t, 2))(0x6E8FEEAD42709D06L, 0xB068BB161A37C2C2L), 0xB068BB161A37C2C2L), 0xB068BB161A37C2C2L, 0x6E8FEEAD42709D06L, 0xB068BB161A37C2C2L), // p_2768->g_2332
        &p_2768->g_328, // p_2768->g_2377
        &p_2768->g_2377, // p_2768->g_2376
        {{&p_2768->g_2376,&p_2768->g_2376}}, // p_2768->g_2375
        (VECTOR(int32_t, 4))(0x7C57B6B0L, (VECTOR(int32_t, 2))(0x7C57B6B0L, 0x30438C73L), 0x30438C73L), // p_2768->g_2382
        {{{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]}},{{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]}},{{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]}},{{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]}},{{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]}},{{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]}},{{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]}},{{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]},{&p_2768->g_92,(void*)0,&p_2768->g_1462[6],&p_2768->g_1462[8]}}}, // p_2768->g_2390
        &p_2768->g_2390[5][0][2], // p_2768->g_2389
        &p_2768->g_2390[5][0][2], // p_2768->g_2392
        (VECTOR(int32_t, 2))(0x24F0B767L, 0x5FCC6FCEL), // p_2768->g_2395
        (VECTOR(uint8_t, 8))(249UL, (VECTOR(uint8_t, 4))(249UL, (VECTOR(uint8_t, 2))(249UL, 0xB0L), 0xB0L), 0xB0L, 249UL, 0xB0L), // p_2768->g_2419
        (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0x429BC3B6L), 0x429BC3B6L), 0x429BC3B6L, 0UL, 0x429BC3B6L, (VECTOR(uint32_t, 2))(0UL, 0x429BC3B6L), (VECTOR(uint32_t, 2))(0UL, 0x429BC3B6L), 0UL, 0x429BC3B6L, 0UL, 0x429BC3B6L), // p_2768->g_2464
        (VECTOR(uint8_t, 16))(0x53L, (VECTOR(uint8_t, 4))(0x53L, (VECTOR(uint8_t, 2))(0x53L, 0x49L), 0x49L), 0x49L, 0x53L, 0x49L, (VECTOR(uint8_t, 2))(0x53L, 0x49L), (VECTOR(uint8_t, 2))(0x53L, 0x49L), 0x53L, 0x49L, 0x53L, 0x49L), // p_2768->g_2470
        (VECTOR(uint8_t, 2))(0xF9L, 248UL), // p_2768->g_2475
        (VECTOR(uint64_t, 16))(0x10ADC2CCD9EB6060L, (VECTOR(uint64_t, 4))(0x10ADC2CCD9EB6060L, (VECTOR(uint64_t, 2))(0x10ADC2CCD9EB6060L, 0UL), 0UL), 0UL, 0x10ADC2CCD9EB6060L, 0UL, (VECTOR(uint64_t, 2))(0x10ADC2CCD9EB6060L, 0UL), (VECTOR(uint64_t, 2))(0x10ADC2CCD9EB6060L, 0UL), 0x10ADC2CCD9EB6060L, 0UL, 0x10ADC2CCD9EB6060L, 0UL), // p_2768->g_2483
        (VECTOR(uint8_t, 8))(0xD8L, (VECTOR(uint8_t, 4))(0xD8L, (VECTOR(uint8_t, 2))(0xD8L, 0x60L), 0x60L), 0x60L, 0xD8L, 0x60L), // p_2768->g_2499
        (VECTOR(uint8_t, 2))(5UL, 0xA0L), // p_2768->g_2506
        0L, // p_2768->g_2520
        (VECTOR(int16_t, 2))(0x370DL, 0x03DFL), // p_2768->g_2527
        (VECTOR(int8_t, 8))(0x4BL, (VECTOR(int8_t, 4))(0x4BL, (VECTOR(int8_t, 2))(0x4BL, 0x5AL), 0x5AL), 0x5AL, 0x4BL, 0x5AL), // p_2768->g_2538
        (VECTOR(uint32_t, 8))(4294967289UL, (VECTOR(uint32_t, 4))(4294967289UL, (VECTOR(uint32_t, 2))(4294967289UL, 0x1E2A7856L), 0x1E2A7856L), 0x1E2A7856L, 4294967289UL, 0x1E2A7856L), // p_2768->g_2650
        (VECTOR(int16_t, 4))((-9L), (VECTOR(int16_t, 2))((-9L), 9L), 9L), // p_2768->g_2678
        (void*)0, // p_2768->g_2701
        (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x20D6L), 0x20D6L), 0x20D6L, 0L, 0x20D6L, (VECTOR(int16_t, 2))(0L, 0x20D6L), (VECTOR(int16_t, 2))(0L, 0x20D6L), 0L, 0x20D6L, 0L, 0x20D6L), // p_2768->g_2707
        (VECTOR(uint64_t, 8))(18446744073709551607UL, (VECTOR(uint64_t, 4))(18446744073709551607UL, (VECTOR(uint64_t, 2))(18446744073709551607UL, 0x7C352521F3397AE5L), 0x7C352521F3397AE5L), 0x7C352521F3397AE5L, 18446744073709551607UL, 0x7C352521F3397AE5L), // p_2768->g_2711
        (VECTOR(uint64_t, 4))(18446744073709551607UL, (VECTOR(uint64_t, 2))(18446744073709551607UL, 0x1D5A489689ADA185L), 0x1D5A489689ADA185L), // p_2768->g_2722
        (VECTOR(uint64_t, 8))(0xA2A0F8E7C9C07DC0L, (VECTOR(uint64_t, 4))(0xA2A0F8E7C9C07DC0L, (VECTOR(uint64_t, 2))(0xA2A0F8E7C9C07DC0L, 8UL), 8UL), 8UL, 0xA2A0F8E7C9C07DC0L, 8UL), // p_2768->g_2733
        sequence_input[get_global_id(0)], // p_2768->global_0_offset
        sequence_input[get_global_id(1)], // p_2768->global_1_offset
        sequence_input[get_global_id(2)], // p_2768->global_2_offset
        sequence_input[get_local_id(0)], // p_2768->local_0_offset
        sequence_input[get_local_id(1)], // p_2768->local_1_offset
        sequence_input[get_local_id(2)], // p_2768->local_2_offset
        sequence_input[get_group_id(0)], // p_2768->group_0_offset
        sequence_input[get_group_id(1)], // p_2768->group_1_offset
        sequence_input[get_group_id(2)], // p_2768->group_2_offset
    };
    c_2769 = c_2770;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2768);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2768->g_2, "p_2768->g_2", print_hash_value);
    transparent_crc(p_2768->g_5, "p_2768->g_5", print_hash_value);
    transparent_crc(p_2768->g_6, "p_2768->g_6", print_hash_value);
    transparent_crc(p_2768->g_7, "p_2768->g_7", print_hash_value);
    transparent_crc(p_2768->g_12, "p_2768->g_12", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_2768->g_19[i][j], "p_2768->g_19[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2768->g_89, "p_2768->g_89", print_hash_value);
    transparent_crc(p_2768->g_93, "p_2768->g_93", print_hash_value);
    transparent_crc(p_2768->g_97, "p_2768->g_97", print_hash_value);
    transparent_crc(p_2768->g_100, "p_2768->g_100", print_hash_value);
    transparent_crc(p_2768->g_103, "p_2768->g_103", print_hash_value);
    transparent_crc(p_2768->g_136, "p_2768->g_136", print_hash_value);
    transparent_crc(p_2768->g_138, "p_2768->g_138", print_hash_value);
    transparent_crc(p_2768->g_140, "p_2768->g_140", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_2768->g_141[i], "p_2768->g_141[i]", print_hash_value);

    }
    transparent_crc(p_2768->g_144, "p_2768->g_144", print_hash_value);
    transparent_crc(p_2768->g_151.x, "p_2768->g_151.x", print_hash_value);
    transparent_crc(p_2768->g_151.y, "p_2768->g_151.y", print_hash_value);
    transparent_crc(p_2768->g_151.z, "p_2768->g_151.z", print_hash_value);
    transparent_crc(p_2768->g_151.w, "p_2768->g_151.w", print_hash_value);
    transparent_crc(p_2768->g_179.x, "p_2768->g_179.x", print_hash_value);
    transparent_crc(p_2768->g_179.y, "p_2768->g_179.y", print_hash_value);
    transparent_crc(p_2768->g_203.x, "p_2768->g_203.x", print_hash_value);
    transparent_crc(p_2768->g_203.y, "p_2768->g_203.y", print_hash_value);
    transparent_crc(p_2768->g_207.s0, "p_2768->g_207.s0", print_hash_value);
    transparent_crc(p_2768->g_207.s1, "p_2768->g_207.s1", print_hash_value);
    transparent_crc(p_2768->g_207.s2, "p_2768->g_207.s2", print_hash_value);
    transparent_crc(p_2768->g_207.s3, "p_2768->g_207.s3", print_hash_value);
    transparent_crc(p_2768->g_207.s4, "p_2768->g_207.s4", print_hash_value);
    transparent_crc(p_2768->g_207.s5, "p_2768->g_207.s5", print_hash_value);
    transparent_crc(p_2768->g_207.s6, "p_2768->g_207.s6", print_hash_value);
    transparent_crc(p_2768->g_207.s7, "p_2768->g_207.s7", print_hash_value);
    transparent_crc(p_2768->g_208.s0, "p_2768->g_208.s0", print_hash_value);
    transparent_crc(p_2768->g_208.s1, "p_2768->g_208.s1", print_hash_value);
    transparent_crc(p_2768->g_208.s2, "p_2768->g_208.s2", print_hash_value);
    transparent_crc(p_2768->g_208.s3, "p_2768->g_208.s3", print_hash_value);
    transparent_crc(p_2768->g_208.s4, "p_2768->g_208.s4", print_hash_value);
    transparent_crc(p_2768->g_208.s5, "p_2768->g_208.s5", print_hash_value);
    transparent_crc(p_2768->g_208.s6, "p_2768->g_208.s6", print_hash_value);
    transparent_crc(p_2768->g_208.s7, "p_2768->g_208.s7", print_hash_value);
    transparent_crc(p_2768->g_208.s8, "p_2768->g_208.s8", print_hash_value);
    transparent_crc(p_2768->g_208.s9, "p_2768->g_208.s9", print_hash_value);
    transparent_crc(p_2768->g_208.sa, "p_2768->g_208.sa", print_hash_value);
    transparent_crc(p_2768->g_208.sb, "p_2768->g_208.sb", print_hash_value);
    transparent_crc(p_2768->g_208.sc, "p_2768->g_208.sc", print_hash_value);
    transparent_crc(p_2768->g_208.sd, "p_2768->g_208.sd", print_hash_value);
    transparent_crc(p_2768->g_208.se, "p_2768->g_208.se", print_hash_value);
    transparent_crc(p_2768->g_208.sf, "p_2768->g_208.sf", print_hash_value);
    transparent_crc(p_2768->g_213.s0, "p_2768->g_213.s0", print_hash_value);
    transparent_crc(p_2768->g_213.s1, "p_2768->g_213.s1", print_hash_value);
    transparent_crc(p_2768->g_213.s2, "p_2768->g_213.s2", print_hash_value);
    transparent_crc(p_2768->g_213.s3, "p_2768->g_213.s3", print_hash_value);
    transparent_crc(p_2768->g_213.s4, "p_2768->g_213.s4", print_hash_value);
    transparent_crc(p_2768->g_213.s5, "p_2768->g_213.s5", print_hash_value);
    transparent_crc(p_2768->g_213.s6, "p_2768->g_213.s6", print_hash_value);
    transparent_crc(p_2768->g_213.s7, "p_2768->g_213.s7", print_hash_value);
    transparent_crc(p_2768->g_213.s8, "p_2768->g_213.s8", print_hash_value);
    transparent_crc(p_2768->g_213.s9, "p_2768->g_213.s9", print_hash_value);
    transparent_crc(p_2768->g_213.sa, "p_2768->g_213.sa", print_hash_value);
    transparent_crc(p_2768->g_213.sb, "p_2768->g_213.sb", print_hash_value);
    transparent_crc(p_2768->g_213.sc, "p_2768->g_213.sc", print_hash_value);
    transparent_crc(p_2768->g_213.sd, "p_2768->g_213.sd", print_hash_value);
    transparent_crc(p_2768->g_213.se, "p_2768->g_213.se", print_hash_value);
    transparent_crc(p_2768->g_213.sf, "p_2768->g_213.sf", print_hash_value);
    transparent_crc(p_2768->g_214.s0, "p_2768->g_214.s0", print_hash_value);
    transparent_crc(p_2768->g_214.s1, "p_2768->g_214.s1", print_hash_value);
    transparent_crc(p_2768->g_214.s2, "p_2768->g_214.s2", print_hash_value);
    transparent_crc(p_2768->g_214.s3, "p_2768->g_214.s3", print_hash_value);
    transparent_crc(p_2768->g_214.s4, "p_2768->g_214.s4", print_hash_value);
    transparent_crc(p_2768->g_214.s5, "p_2768->g_214.s5", print_hash_value);
    transparent_crc(p_2768->g_214.s6, "p_2768->g_214.s6", print_hash_value);
    transparent_crc(p_2768->g_214.s7, "p_2768->g_214.s7", print_hash_value);
    transparent_crc(p_2768->g_236.x, "p_2768->g_236.x", print_hash_value);
    transparent_crc(p_2768->g_236.y, "p_2768->g_236.y", print_hash_value);
    transparent_crc(p_2768->g_236.z, "p_2768->g_236.z", print_hash_value);
    transparent_crc(p_2768->g_236.w, "p_2768->g_236.w", print_hash_value);
    transparent_crc(p_2768->g_246, "p_2768->g_246", print_hash_value);
    transparent_crc(p_2768->g_276, "p_2768->g_276", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2768->g_277[i], "p_2768->g_277[i]", print_hash_value);

    }
    transparent_crc(p_2768->g_278, "p_2768->g_278", print_hash_value);
    transparent_crc(p_2768->g_279, "p_2768->g_279", print_hash_value);
    transparent_crc(p_2768->g_280, "p_2768->g_280", print_hash_value);
    transparent_crc(p_2768->g_282, "p_2768->g_282", print_hash_value);
    transparent_crc(p_2768->g_309.s0, "p_2768->g_309.s0", print_hash_value);
    transparent_crc(p_2768->g_309.s1, "p_2768->g_309.s1", print_hash_value);
    transparent_crc(p_2768->g_309.s2, "p_2768->g_309.s2", print_hash_value);
    transparent_crc(p_2768->g_309.s3, "p_2768->g_309.s3", print_hash_value);
    transparent_crc(p_2768->g_309.s4, "p_2768->g_309.s4", print_hash_value);
    transparent_crc(p_2768->g_309.s5, "p_2768->g_309.s5", print_hash_value);
    transparent_crc(p_2768->g_309.s6, "p_2768->g_309.s6", print_hash_value);
    transparent_crc(p_2768->g_309.s7, "p_2768->g_309.s7", print_hash_value);
    transparent_crc(p_2768->g_309.s8, "p_2768->g_309.s8", print_hash_value);
    transparent_crc(p_2768->g_309.s9, "p_2768->g_309.s9", print_hash_value);
    transparent_crc(p_2768->g_309.sa, "p_2768->g_309.sa", print_hash_value);
    transparent_crc(p_2768->g_309.sb, "p_2768->g_309.sb", print_hash_value);
    transparent_crc(p_2768->g_309.sc, "p_2768->g_309.sc", print_hash_value);
    transparent_crc(p_2768->g_309.sd, "p_2768->g_309.sd", print_hash_value);
    transparent_crc(p_2768->g_309.se, "p_2768->g_309.se", print_hash_value);
    transparent_crc(p_2768->g_309.sf, "p_2768->g_309.sf", print_hash_value);
    transparent_crc(p_2768->g_328, "p_2768->g_328", print_hash_value);
    transparent_crc(p_2768->g_387.s0, "p_2768->g_387.s0", print_hash_value);
    transparent_crc(p_2768->g_387.s1, "p_2768->g_387.s1", print_hash_value);
    transparent_crc(p_2768->g_387.s2, "p_2768->g_387.s2", print_hash_value);
    transparent_crc(p_2768->g_387.s3, "p_2768->g_387.s3", print_hash_value);
    transparent_crc(p_2768->g_387.s4, "p_2768->g_387.s4", print_hash_value);
    transparent_crc(p_2768->g_387.s5, "p_2768->g_387.s5", print_hash_value);
    transparent_crc(p_2768->g_387.s6, "p_2768->g_387.s6", print_hash_value);
    transparent_crc(p_2768->g_387.s7, "p_2768->g_387.s7", print_hash_value);
    transparent_crc(p_2768->g_388.x, "p_2768->g_388.x", print_hash_value);
    transparent_crc(p_2768->g_388.y, "p_2768->g_388.y", print_hash_value);
    transparent_crc(p_2768->g_389.s0, "p_2768->g_389.s0", print_hash_value);
    transparent_crc(p_2768->g_389.s1, "p_2768->g_389.s1", print_hash_value);
    transparent_crc(p_2768->g_389.s2, "p_2768->g_389.s2", print_hash_value);
    transparent_crc(p_2768->g_389.s3, "p_2768->g_389.s3", print_hash_value);
    transparent_crc(p_2768->g_389.s4, "p_2768->g_389.s4", print_hash_value);
    transparent_crc(p_2768->g_389.s5, "p_2768->g_389.s5", print_hash_value);
    transparent_crc(p_2768->g_389.s6, "p_2768->g_389.s6", print_hash_value);
    transparent_crc(p_2768->g_389.s7, "p_2768->g_389.s7", print_hash_value);
    transparent_crc(p_2768->g_393, "p_2768->g_393", print_hash_value);
    transparent_crc(p_2768->g_411, "p_2768->g_411", print_hash_value);
    transparent_crc(p_2768->g_422, "p_2768->g_422", print_hash_value);
    transparent_crc(p_2768->g_453.s0, "p_2768->g_453.s0", print_hash_value);
    transparent_crc(p_2768->g_453.s1, "p_2768->g_453.s1", print_hash_value);
    transparent_crc(p_2768->g_453.s2, "p_2768->g_453.s2", print_hash_value);
    transparent_crc(p_2768->g_453.s3, "p_2768->g_453.s3", print_hash_value);
    transparent_crc(p_2768->g_453.s4, "p_2768->g_453.s4", print_hash_value);
    transparent_crc(p_2768->g_453.s5, "p_2768->g_453.s5", print_hash_value);
    transparent_crc(p_2768->g_453.s6, "p_2768->g_453.s6", print_hash_value);
    transparent_crc(p_2768->g_453.s7, "p_2768->g_453.s7", print_hash_value);
    transparent_crc(p_2768->g_472.x, "p_2768->g_472.x", print_hash_value);
    transparent_crc(p_2768->g_472.y, "p_2768->g_472.y", print_hash_value);
    transparent_crc(p_2768->g_472.z, "p_2768->g_472.z", print_hash_value);
    transparent_crc(p_2768->g_472.w, "p_2768->g_472.w", print_hash_value);
    transparent_crc(p_2768->g_482.s0, "p_2768->g_482.s0", print_hash_value);
    transparent_crc(p_2768->g_482.s1, "p_2768->g_482.s1", print_hash_value);
    transparent_crc(p_2768->g_482.s2, "p_2768->g_482.s2", print_hash_value);
    transparent_crc(p_2768->g_482.s3, "p_2768->g_482.s3", print_hash_value);
    transparent_crc(p_2768->g_482.s4, "p_2768->g_482.s4", print_hash_value);
    transparent_crc(p_2768->g_482.s5, "p_2768->g_482.s5", print_hash_value);
    transparent_crc(p_2768->g_482.s6, "p_2768->g_482.s6", print_hash_value);
    transparent_crc(p_2768->g_482.s7, "p_2768->g_482.s7", print_hash_value);
    transparent_crc(p_2768->g_482.s8, "p_2768->g_482.s8", print_hash_value);
    transparent_crc(p_2768->g_482.s9, "p_2768->g_482.s9", print_hash_value);
    transparent_crc(p_2768->g_482.sa, "p_2768->g_482.sa", print_hash_value);
    transparent_crc(p_2768->g_482.sb, "p_2768->g_482.sb", print_hash_value);
    transparent_crc(p_2768->g_482.sc, "p_2768->g_482.sc", print_hash_value);
    transparent_crc(p_2768->g_482.sd, "p_2768->g_482.sd", print_hash_value);
    transparent_crc(p_2768->g_482.se, "p_2768->g_482.se", print_hash_value);
    transparent_crc(p_2768->g_482.sf, "p_2768->g_482.sf", print_hash_value);
    transparent_crc(p_2768->g_484.s0, "p_2768->g_484.s0", print_hash_value);
    transparent_crc(p_2768->g_484.s1, "p_2768->g_484.s1", print_hash_value);
    transparent_crc(p_2768->g_484.s2, "p_2768->g_484.s2", print_hash_value);
    transparent_crc(p_2768->g_484.s3, "p_2768->g_484.s3", print_hash_value);
    transparent_crc(p_2768->g_484.s4, "p_2768->g_484.s4", print_hash_value);
    transparent_crc(p_2768->g_484.s5, "p_2768->g_484.s5", print_hash_value);
    transparent_crc(p_2768->g_484.s6, "p_2768->g_484.s6", print_hash_value);
    transparent_crc(p_2768->g_484.s7, "p_2768->g_484.s7", print_hash_value);
    transparent_crc(p_2768->g_484.s8, "p_2768->g_484.s8", print_hash_value);
    transparent_crc(p_2768->g_484.s9, "p_2768->g_484.s9", print_hash_value);
    transparent_crc(p_2768->g_484.sa, "p_2768->g_484.sa", print_hash_value);
    transparent_crc(p_2768->g_484.sb, "p_2768->g_484.sb", print_hash_value);
    transparent_crc(p_2768->g_484.sc, "p_2768->g_484.sc", print_hash_value);
    transparent_crc(p_2768->g_484.sd, "p_2768->g_484.sd", print_hash_value);
    transparent_crc(p_2768->g_484.se, "p_2768->g_484.se", print_hash_value);
    transparent_crc(p_2768->g_484.sf, "p_2768->g_484.sf", print_hash_value);
    transparent_crc(p_2768->g_493.s0, "p_2768->g_493.s0", print_hash_value);
    transparent_crc(p_2768->g_493.s1, "p_2768->g_493.s1", print_hash_value);
    transparent_crc(p_2768->g_493.s2, "p_2768->g_493.s2", print_hash_value);
    transparent_crc(p_2768->g_493.s3, "p_2768->g_493.s3", print_hash_value);
    transparent_crc(p_2768->g_493.s4, "p_2768->g_493.s4", print_hash_value);
    transparent_crc(p_2768->g_493.s5, "p_2768->g_493.s5", print_hash_value);
    transparent_crc(p_2768->g_493.s6, "p_2768->g_493.s6", print_hash_value);
    transparent_crc(p_2768->g_493.s7, "p_2768->g_493.s7", print_hash_value);
    transparent_crc(p_2768->g_493.s8, "p_2768->g_493.s8", print_hash_value);
    transparent_crc(p_2768->g_493.s9, "p_2768->g_493.s9", print_hash_value);
    transparent_crc(p_2768->g_493.sa, "p_2768->g_493.sa", print_hash_value);
    transparent_crc(p_2768->g_493.sb, "p_2768->g_493.sb", print_hash_value);
    transparent_crc(p_2768->g_493.sc, "p_2768->g_493.sc", print_hash_value);
    transparent_crc(p_2768->g_493.sd, "p_2768->g_493.sd", print_hash_value);
    transparent_crc(p_2768->g_493.se, "p_2768->g_493.se", print_hash_value);
    transparent_crc(p_2768->g_493.sf, "p_2768->g_493.sf", print_hash_value);
    transparent_crc(p_2768->g_507, "p_2768->g_507", print_hash_value);
    transparent_crc(p_2768->g_526.x, "p_2768->g_526.x", print_hash_value);
    transparent_crc(p_2768->g_526.y, "p_2768->g_526.y", print_hash_value);
    transparent_crc(p_2768->g_526.z, "p_2768->g_526.z", print_hash_value);
    transparent_crc(p_2768->g_526.w, "p_2768->g_526.w", print_hash_value);
    transparent_crc(p_2768->g_581.x, "p_2768->g_581.x", print_hash_value);
    transparent_crc(p_2768->g_581.y, "p_2768->g_581.y", print_hash_value);
    transparent_crc(p_2768->g_597.s0, "p_2768->g_597.s0", print_hash_value);
    transparent_crc(p_2768->g_597.s1, "p_2768->g_597.s1", print_hash_value);
    transparent_crc(p_2768->g_597.s2, "p_2768->g_597.s2", print_hash_value);
    transparent_crc(p_2768->g_597.s3, "p_2768->g_597.s3", print_hash_value);
    transparent_crc(p_2768->g_597.s4, "p_2768->g_597.s4", print_hash_value);
    transparent_crc(p_2768->g_597.s5, "p_2768->g_597.s5", print_hash_value);
    transparent_crc(p_2768->g_597.s6, "p_2768->g_597.s6", print_hash_value);
    transparent_crc(p_2768->g_597.s7, "p_2768->g_597.s7", print_hash_value);
    transparent_crc(p_2768->g_623.x, "p_2768->g_623.x", print_hash_value);
    transparent_crc(p_2768->g_623.y, "p_2768->g_623.y", print_hash_value);
    transparent_crc(p_2768->g_648.x, "p_2768->g_648.x", print_hash_value);
    transparent_crc(p_2768->g_648.y, "p_2768->g_648.y", print_hash_value);
    transparent_crc(p_2768->g_648.z, "p_2768->g_648.z", print_hash_value);
    transparent_crc(p_2768->g_648.w, "p_2768->g_648.w", print_hash_value);
    transparent_crc(p_2768->g_649.s0, "p_2768->g_649.s0", print_hash_value);
    transparent_crc(p_2768->g_649.s1, "p_2768->g_649.s1", print_hash_value);
    transparent_crc(p_2768->g_649.s2, "p_2768->g_649.s2", print_hash_value);
    transparent_crc(p_2768->g_649.s3, "p_2768->g_649.s3", print_hash_value);
    transparent_crc(p_2768->g_649.s4, "p_2768->g_649.s4", print_hash_value);
    transparent_crc(p_2768->g_649.s5, "p_2768->g_649.s5", print_hash_value);
    transparent_crc(p_2768->g_649.s6, "p_2768->g_649.s6", print_hash_value);
    transparent_crc(p_2768->g_649.s7, "p_2768->g_649.s7", print_hash_value);
    transparent_crc(p_2768->g_685.x, "p_2768->g_685.x", print_hash_value);
    transparent_crc(p_2768->g_685.y, "p_2768->g_685.y", print_hash_value);
    transparent_crc(p_2768->g_694.x, "p_2768->g_694.x", print_hash_value);
    transparent_crc(p_2768->g_694.y, "p_2768->g_694.y", print_hash_value);
    transparent_crc(p_2768->g_714.s0, "p_2768->g_714.s0", print_hash_value);
    transparent_crc(p_2768->g_714.s1, "p_2768->g_714.s1", print_hash_value);
    transparent_crc(p_2768->g_714.s2, "p_2768->g_714.s2", print_hash_value);
    transparent_crc(p_2768->g_714.s3, "p_2768->g_714.s3", print_hash_value);
    transparent_crc(p_2768->g_714.s4, "p_2768->g_714.s4", print_hash_value);
    transparent_crc(p_2768->g_714.s5, "p_2768->g_714.s5", print_hash_value);
    transparent_crc(p_2768->g_714.s6, "p_2768->g_714.s6", print_hash_value);
    transparent_crc(p_2768->g_714.s7, "p_2768->g_714.s7", print_hash_value);
    transparent_crc(p_2768->g_724.s0, "p_2768->g_724.s0", print_hash_value);
    transparent_crc(p_2768->g_724.s1, "p_2768->g_724.s1", print_hash_value);
    transparent_crc(p_2768->g_724.s2, "p_2768->g_724.s2", print_hash_value);
    transparent_crc(p_2768->g_724.s3, "p_2768->g_724.s3", print_hash_value);
    transparent_crc(p_2768->g_724.s4, "p_2768->g_724.s4", print_hash_value);
    transparent_crc(p_2768->g_724.s5, "p_2768->g_724.s5", print_hash_value);
    transparent_crc(p_2768->g_724.s6, "p_2768->g_724.s6", print_hash_value);
    transparent_crc(p_2768->g_724.s7, "p_2768->g_724.s7", print_hash_value);
    transparent_crc(p_2768->g_724.s8, "p_2768->g_724.s8", print_hash_value);
    transparent_crc(p_2768->g_724.s9, "p_2768->g_724.s9", print_hash_value);
    transparent_crc(p_2768->g_724.sa, "p_2768->g_724.sa", print_hash_value);
    transparent_crc(p_2768->g_724.sb, "p_2768->g_724.sb", print_hash_value);
    transparent_crc(p_2768->g_724.sc, "p_2768->g_724.sc", print_hash_value);
    transparent_crc(p_2768->g_724.sd, "p_2768->g_724.sd", print_hash_value);
    transparent_crc(p_2768->g_724.se, "p_2768->g_724.se", print_hash_value);
    transparent_crc(p_2768->g_724.sf, "p_2768->g_724.sf", print_hash_value);
    transparent_crc(p_2768->g_742.s0, "p_2768->g_742.s0", print_hash_value);
    transparent_crc(p_2768->g_742.s1, "p_2768->g_742.s1", print_hash_value);
    transparent_crc(p_2768->g_742.s2, "p_2768->g_742.s2", print_hash_value);
    transparent_crc(p_2768->g_742.s3, "p_2768->g_742.s3", print_hash_value);
    transparent_crc(p_2768->g_742.s4, "p_2768->g_742.s4", print_hash_value);
    transparent_crc(p_2768->g_742.s5, "p_2768->g_742.s5", print_hash_value);
    transparent_crc(p_2768->g_742.s6, "p_2768->g_742.s6", print_hash_value);
    transparent_crc(p_2768->g_742.s7, "p_2768->g_742.s7", print_hash_value);
    transparent_crc(p_2768->g_786, "p_2768->g_786", print_hash_value);
    transparent_crc(p_2768->g_797.s0, "p_2768->g_797.s0", print_hash_value);
    transparent_crc(p_2768->g_797.s1, "p_2768->g_797.s1", print_hash_value);
    transparent_crc(p_2768->g_797.s2, "p_2768->g_797.s2", print_hash_value);
    transparent_crc(p_2768->g_797.s3, "p_2768->g_797.s3", print_hash_value);
    transparent_crc(p_2768->g_797.s4, "p_2768->g_797.s4", print_hash_value);
    transparent_crc(p_2768->g_797.s5, "p_2768->g_797.s5", print_hash_value);
    transparent_crc(p_2768->g_797.s6, "p_2768->g_797.s6", print_hash_value);
    transparent_crc(p_2768->g_797.s7, "p_2768->g_797.s7", print_hash_value);
    transparent_crc(p_2768->g_830.x, "p_2768->g_830.x", print_hash_value);
    transparent_crc(p_2768->g_830.y, "p_2768->g_830.y", print_hash_value);
    transparent_crc(p_2768->g_830.z, "p_2768->g_830.z", print_hash_value);
    transparent_crc(p_2768->g_830.w, "p_2768->g_830.w", print_hash_value);
    transparent_crc(p_2768->g_831.x, "p_2768->g_831.x", print_hash_value);
    transparent_crc(p_2768->g_831.y, "p_2768->g_831.y", print_hash_value);
    transparent_crc(p_2768->g_831.z, "p_2768->g_831.z", print_hash_value);
    transparent_crc(p_2768->g_831.w, "p_2768->g_831.w", print_hash_value);
    transparent_crc(p_2768->g_844.s0, "p_2768->g_844.s0", print_hash_value);
    transparent_crc(p_2768->g_844.s1, "p_2768->g_844.s1", print_hash_value);
    transparent_crc(p_2768->g_844.s2, "p_2768->g_844.s2", print_hash_value);
    transparent_crc(p_2768->g_844.s3, "p_2768->g_844.s3", print_hash_value);
    transparent_crc(p_2768->g_844.s4, "p_2768->g_844.s4", print_hash_value);
    transparent_crc(p_2768->g_844.s5, "p_2768->g_844.s5", print_hash_value);
    transparent_crc(p_2768->g_844.s6, "p_2768->g_844.s6", print_hash_value);
    transparent_crc(p_2768->g_844.s7, "p_2768->g_844.s7", print_hash_value);
    transparent_crc(p_2768->g_844.s8, "p_2768->g_844.s8", print_hash_value);
    transparent_crc(p_2768->g_844.s9, "p_2768->g_844.s9", print_hash_value);
    transparent_crc(p_2768->g_844.sa, "p_2768->g_844.sa", print_hash_value);
    transparent_crc(p_2768->g_844.sb, "p_2768->g_844.sb", print_hash_value);
    transparent_crc(p_2768->g_844.sc, "p_2768->g_844.sc", print_hash_value);
    transparent_crc(p_2768->g_844.sd, "p_2768->g_844.sd", print_hash_value);
    transparent_crc(p_2768->g_844.se, "p_2768->g_844.se", print_hash_value);
    transparent_crc(p_2768->g_844.sf, "p_2768->g_844.sf", print_hash_value);
    transparent_crc(p_2768->g_845.s0, "p_2768->g_845.s0", print_hash_value);
    transparent_crc(p_2768->g_845.s1, "p_2768->g_845.s1", print_hash_value);
    transparent_crc(p_2768->g_845.s2, "p_2768->g_845.s2", print_hash_value);
    transparent_crc(p_2768->g_845.s3, "p_2768->g_845.s3", print_hash_value);
    transparent_crc(p_2768->g_845.s4, "p_2768->g_845.s4", print_hash_value);
    transparent_crc(p_2768->g_845.s5, "p_2768->g_845.s5", print_hash_value);
    transparent_crc(p_2768->g_845.s6, "p_2768->g_845.s6", print_hash_value);
    transparent_crc(p_2768->g_845.s7, "p_2768->g_845.s7", print_hash_value);
    transparent_crc(p_2768->g_845.s8, "p_2768->g_845.s8", print_hash_value);
    transparent_crc(p_2768->g_845.s9, "p_2768->g_845.s9", print_hash_value);
    transparent_crc(p_2768->g_845.sa, "p_2768->g_845.sa", print_hash_value);
    transparent_crc(p_2768->g_845.sb, "p_2768->g_845.sb", print_hash_value);
    transparent_crc(p_2768->g_845.sc, "p_2768->g_845.sc", print_hash_value);
    transparent_crc(p_2768->g_845.sd, "p_2768->g_845.sd", print_hash_value);
    transparent_crc(p_2768->g_845.se, "p_2768->g_845.se", print_hash_value);
    transparent_crc(p_2768->g_845.sf, "p_2768->g_845.sf", print_hash_value);
    transparent_crc(p_2768->g_871.s0, "p_2768->g_871.s0", print_hash_value);
    transparent_crc(p_2768->g_871.s1, "p_2768->g_871.s1", print_hash_value);
    transparent_crc(p_2768->g_871.s2, "p_2768->g_871.s2", print_hash_value);
    transparent_crc(p_2768->g_871.s3, "p_2768->g_871.s3", print_hash_value);
    transparent_crc(p_2768->g_871.s4, "p_2768->g_871.s4", print_hash_value);
    transparent_crc(p_2768->g_871.s5, "p_2768->g_871.s5", print_hash_value);
    transparent_crc(p_2768->g_871.s6, "p_2768->g_871.s6", print_hash_value);
    transparent_crc(p_2768->g_871.s7, "p_2768->g_871.s7", print_hash_value);
    transparent_crc(p_2768->g_871.s8, "p_2768->g_871.s8", print_hash_value);
    transparent_crc(p_2768->g_871.s9, "p_2768->g_871.s9", print_hash_value);
    transparent_crc(p_2768->g_871.sa, "p_2768->g_871.sa", print_hash_value);
    transparent_crc(p_2768->g_871.sb, "p_2768->g_871.sb", print_hash_value);
    transparent_crc(p_2768->g_871.sc, "p_2768->g_871.sc", print_hash_value);
    transparent_crc(p_2768->g_871.sd, "p_2768->g_871.sd", print_hash_value);
    transparent_crc(p_2768->g_871.se, "p_2768->g_871.se", print_hash_value);
    transparent_crc(p_2768->g_871.sf, "p_2768->g_871.sf", print_hash_value);
    transparent_crc(p_2768->g_872.s0, "p_2768->g_872.s0", print_hash_value);
    transparent_crc(p_2768->g_872.s1, "p_2768->g_872.s1", print_hash_value);
    transparent_crc(p_2768->g_872.s2, "p_2768->g_872.s2", print_hash_value);
    transparent_crc(p_2768->g_872.s3, "p_2768->g_872.s3", print_hash_value);
    transparent_crc(p_2768->g_872.s4, "p_2768->g_872.s4", print_hash_value);
    transparent_crc(p_2768->g_872.s5, "p_2768->g_872.s5", print_hash_value);
    transparent_crc(p_2768->g_872.s6, "p_2768->g_872.s6", print_hash_value);
    transparent_crc(p_2768->g_872.s7, "p_2768->g_872.s7", print_hash_value);
    transparent_crc(p_2768->g_879.s0, "p_2768->g_879.s0", print_hash_value);
    transparent_crc(p_2768->g_879.s1, "p_2768->g_879.s1", print_hash_value);
    transparent_crc(p_2768->g_879.s2, "p_2768->g_879.s2", print_hash_value);
    transparent_crc(p_2768->g_879.s3, "p_2768->g_879.s3", print_hash_value);
    transparent_crc(p_2768->g_879.s4, "p_2768->g_879.s4", print_hash_value);
    transparent_crc(p_2768->g_879.s5, "p_2768->g_879.s5", print_hash_value);
    transparent_crc(p_2768->g_879.s6, "p_2768->g_879.s6", print_hash_value);
    transparent_crc(p_2768->g_879.s7, "p_2768->g_879.s7", print_hash_value);
    transparent_crc(p_2768->g_884.s0, "p_2768->g_884.s0", print_hash_value);
    transparent_crc(p_2768->g_884.s1, "p_2768->g_884.s1", print_hash_value);
    transparent_crc(p_2768->g_884.s2, "p_2768->g_884.s2", print_hash_value);
    transparent_crc(p_2768->g_884.s3, "p_2768->g_884.s3", print_hash_value);
    transparent_crc(p_2768->g_884.s4, "p_2768->g_884.s4", print_hash_value);
    transparent_crc(p_2768->g_884.s5, "p_2768->g_884.s5", print_hash_value);
    transparent_crc(p_2768->g_884.s6, "p_2768->g_884.s6", print_hash_value);
    transparent_crc(p_2768->g_884.s7, "p_2768->g_884.s7", print_hash_value);
    transparent_crc(p_2768->g_947.s0, "p_2768->g_947.s0", print_hash_value);
    transparent_crc(p_2768->g_947.s1, "p_2768->g_947.s1", print_hash_value);
    transparent_crc(p_2768->g_947.s2, "p_2768->g_947.s2", print_hash_value);
    transparent_crc(p_2768->g_947.s3, "p_2768->g_947.s3", print_hash_value);
    transparent_crc(p_2768->g_947.s4, "p_2768->g_947.s4", print_hash_value);
    transparent_crc(p_2768->g_947.s5, "p_2768->g_947.s5", print_hash_value);
    transparent_crc(p_2768->g_947.s6, "p_2768->g_947.s6", print_hash_value);
    transparent_crc(p_2768->g_947.s7, "p_2768->g_947.s7", print_hash_value);
    transparent_crc(p_2768->g_1027.s0, "p_2768->g_1027.s0", print_hash_value);
    transparent_crc(p_2768->g_1027.s1, "p_2768->g_1027.s1", print_hash_value);
    transparent_crc(p_2768->g_1027.s2, "p_2768->g_1027.s2", print_hash_value);
    transparent_crc(p_2768->g_1027.s3, "p_2768->g_1027.s3", print_hash_value);
    transparent_crc(p_2768->g_1027.s4, "p_2768->g_1027.s4", print_hash_value);
    transparent_crc(p_2768->g_1027.s5, "p_2768->g_1027.s5", print_hash_value);
    transparent_crc(p_2768->g_1027.s6, "p_2768->g_1027.s6", print_hash_value);
    transparent_crc(p_2768->g_1027.s7, "p_2768->g_1027.s7", print_hash_value);
    transparent_crc(p_2768->g_1027.s8, "p_2768->g_1027.s8", print_hash_value);
    transparent_crc(p_2768->g_1027.s9, "p_2768->g_1027.s9", print_hash_value);
    transparent_crc(p_2768->g_1027.sa, "p_2768->g_1027.sa", print_hash_value);
    transparent_crc(p_2768->g_1027.sb, "p_2768->g_1027.sb", print_hash_value);
    transparent_crc(p_2768->g_1027.sc, "p_2768->g_1027.sc", print_hash_value);
    transparent_crc(p_2768->g_1027.sd, "p_2768->g_1027.sd", print_hash_value);
    transparent_crc(p_2768->g_1027.se, "p_2768->g_1027.se", print_hash_value);
    transparent_crc(p_2768->g_1027.sf, "p_2768->g_1027.sf", print_hash_value);
    transparent_crc(p_2768->g_1028.x, "p_2768->g_1028.x", print_hash_value);
    transparent_crc(p_2768->g_1028.y, "p_2768->g_1028.y", print_hash_value);
    transparent_crc(p_2768->g_1028.z, "p_2768->g_1028.z", print_hash_value);
    transparent_crc(p_2768->g_1028.w, "p_2768->g_1028.w", print_hash_value);
    transparent_crc(p_2768->g_1092.x, "p_2768->g_1092.x", print_hash_value);
    transparent_crc(p_2768->g_1092.y, "p_2768->g_1092.y", print_hash_value);
    transparent_crc(p_2768->g_1092.z, "p_2768->g_1092.z", print_hash_value);
    transparent_crc(p_2768->g_1092.w, "p_2768->g_1092.w", print_hash_value);
    transparent_crc(p_2768->g_1093.x, "p_2768->g_1093.x", print_hash_value);
    transparent_crc(p_2768->g_1093.y, "p_2768->g_1093.y", print_hash_value);
    transparent_crc(p_2768->g_1093.z, "p_2768->g_1093.z", print_hash_value);
    transparent_crc(p_2768->g_1093.w, "p_2768->g_1093.w", print_hash_value);
    transparent_crc(p_2768->g_1114.x, "p_2768->g_1114.x", print_hash_value);
    transparent_crc(p_2768->g_1114.y, "p_2768->g_1114.y", print_hash_value);
    transparent_crc(p_2768->g_1114.z, "p_2768->g_1114.z", print_hash_value);
    transparent_crc(p_2768->g_1114.w, "p_2768->g_1114.w", print_hash_value);
    transparent_crc(p_2768->g_1119.x, "p_2768->g_1119.x", print_hash_value);
    transparent_crc(p_2768->g_1119.y, "p_2768->g_1119.y", print_hash_value);
    transparent_crc(p_2768->g_1123.s0, "p_2768->g_1123.s0", print_hash_value);
    transparent_crc(p_2768->g_1123.s1, "p_2768->g_1123.s1", print_hash_value);
    transparent_crc(p_2768->g_1123.s2, "p_2768->g_1123.s2", print_hash_value);
    transparent_crc(p_2768->g_1123.s3, "p_2768->g_1123.s3", print_hash_value);
    transparent_crc(p_2768->g_1123.s4, "p_2768->g_1123.s4", print_hash_value);
    transparent_crc(p_2768->g_1123.s5, "p_2768->g_1123.s5", print_hash_value);
    transparent_crc(p_2768->g_1123.s6, "p_2768->g_1123.s6", print_hash_value);
    transparent_crc(p_2768->g_1123.s7, "p_2768->g_1123.s7", print_hash_value);
    transparent_crc(p_2768->g_1134.s0, "p_2768->g_1134.s0", print_hash_value);
    transparent_crc(p_2768->g_1134.s1, "p_2768->g_1134.s1", print_hash_value);
    transparent_crc(p_2768->g_1134.s2, "p_2768->g_1134.s2", print_hash_value);
    transparent_crc(p_2768->g_1134.s3, "p_2768->g_1134.s3", print_hash_value);
    transparent_crc(p_2768->g_1134.s4, "p_2768->g_1134.s4", print_hash_value);
    transparent_crc(p_2768->g_1134.s5, "p_2768->g_1134.s5", print_hash_value);
    transparent_crc(p_2768->g_1134.s6, "p_2768->g_1134.s6", print_hash_value);
    transparent_crc(p_2768->g_1134.s7, "p_2768->g_1134.s7", print_hash_value);
    transparent_crc(p_2768->g_1135.x, "p_2768->g_1135.x", print_hash_value);
    transparent_crc(p_2768->g_1135.y, "p_2768->g_1135.y", print_hash_value);
    transparent_crc(p_2768->g_1135.z, "p_2768->g_1135.z", print_hash_value);
    transparent_crc(p_2768->g_1135.w, "p_2768->g_1135.w", print_hash_value);
    transparent_crc(p_2768->g_1142.x, "p_2768->g_1142.x", print_hash_value);
    transparent_crc(p_2768->g_1142.y, "p_2768->g_1142.y", print_hash_value);
    transparent_crc(p_2768->g_1142.z, "p_2768->g_1142.z", print_hash_value);
    transparent_crc(p_2768->g_1142.w, "p_2768->g_1142.w", print_hash_value);
    transparent_crc(p_2768->g_1143.s0, "p_2768->g_1143.s0", print_hash_value);
    transparent_crc(p_2768->g_1143.s1, "p_2768->g_1143.s1", print_hash_value);
    transparent_crc(p_2768->g_1143.s2, "p_2768->g_1143.s2", print_hash_value);
    transparent_crc(p_2768->g_1143.s3, "p_2768->g_1143.s3", print_hash_value);
    transparent_crc(p_2768->g_1143.s4, "p_2768->g_1143.s4", print_hash_value);
    transparent_crc(p_2768->g_1143.s5, "p_2768->g_1143.s5", print_hash_value);
    transparent_crc(p_2768->g_1143.s6, "p_2768->g_1143.s6", print_hash_value);
    transparent_crc(p_2768->g_1143.s7, "p_2768->g_1143.s7", print_hash_value);
    transparent_crc(p_2768->g_1187.s0, "p_2768->g_1187.s0", print_hash_value);
    transparent_crc(p_2768->g_1187.s1, "p_2768->g_1187.s1", print_hash_value);
    transparent_crc(p_2768->g_1187.s2, "p_2768->g_1187.s2", print_hash_value);
    transparent_crc(p_2768->g_1187.s3, "p_2768->g_1187.s3", print_hash_value);
    transparent_crc(p_2768->g_1187.s4, "p_2768->g_1187.s4", print_hash_value);
    transparent_crc(p_2768->g_1187.s5, "p_2768->g_1187.s5", print_hash_value);
    transparent_crc(p_2768->g_1187.s6, "p_2768->g_1187.s6", print_hash_value);
    transparent_crc(p_2768->g_1187.s7, "p_2768->g_1187.s7", print_hash_value);
    transparent_crc(p_2768->g_1187.s8, "p_2768->g_1187.s8", print_hash_value);
    transparent_crc(p_2768->g_1187.s9, "p_2768->g_1187.s9", print_hash_value);
    transparent_crc(p_2768->g_1187.sa, "p_2768->g_1187.sa", print_hash_value);
    transparent_crc(p_2768->g_1187.sb, "p_2768->g_1187.sb", print_hash_value);
    transparent_crc(p_2768->g_1187.sc, "p_2768->g_1187.sc", print_hash_value);
    transparent_crc(p_2768->g_1187.sd, "p_2768->g_1187.sd", print_hash_value);
    transparent_crc(p_2768->g_1187.se, "p_2768->g_1187.se", print_hash_value);
    transparent_crc(p_2768->g_1187.sf, "p_2768->g_1187.sf", print_hash_value);
    transparent_crc(p_2768->g_1237.x, "p_2768->g_1237.x", print_hash_value);
    transparent_crc(p_2768->g_1237.y, "p_2768->g_1237.y", print_hash_value);
    transparent_crc(p_2768->g_1237.z, "p_2768->g_1237.z", print_hash_value);
    transparent_crc(p_2768->g_1237.w, "p_2768->g_1237.w", print_hash_value);
    transparent_crc(p_2768->g_1263, "p_2768->g_1263", print_hash_value);
    transparent_crc(p_2768->g_1287, "p_2768->g_1287", print_hash_value);
    transparent_crc(p_2768->g_1302, "p_2768->g_1302", print_hash_value);
    transparent_crc(p_2768->g_1307.s0, "p_2768->g_1307.s0", print_hash_value);
    transparent_crc(p_2768->g_1307.s1, "p_2768->g_1307.s1", print_hash_value);
    transparent_crc(p_2768->g_1307.s2, "p_2768->g_1307.s2", print_hash_value);
    transparent_crc(p_2768->g_1307.s3, "p_2768->g_1307.s3", print_hash_value);
    transparent_crc(p_2768->g_1307.s4, "p_2768->g_1307.s4", print_hash_value);
    transparent_crc(p_2768->g_1307.s5, "p_2768->g_1307.s5", print_hash_value);
    transparent_crc(p_2768->g_1307.s6, "p_2768->g_1307.s6", print_hash_value);
    transparent_crc(p_2768->g_1307.s7, "p_2768->g_1307.s7", print_hash_value);
    transparent_crc(p_2768->g_1307.s8, "p_2768->g_1307.s8", print_hash_value);
    transparent_crc(p_2768->g_1307.s9, "p_2768->g_1307.s9", print_hash_value);
    transparent_crc(p_2768->g_1307.sa, "p_2768->g_1307.sa", print_hash_value);
    transparent_crc(p_2768->g_1307.sb, "p_2768->g_1307.sb", print_hash_value);
    transparent_crc(p_2768->g_1307.sc, "p_2768->g_1307.sc", print_hash_value);
    transparent_crc(p_2768->g_1307.sd, "p_2768->g_1307.sd", print_hash_value);
    transparent_crc(p_2768->g_1307.se, "p_2768->g_1307.se", print_hash_value);
    transparent_crc(p_2768->g_1307.sf, "p_2768->g_1307.sf", print_hash_value);
    transparent_crc(p_2768->g_1309.s0, "p_2768->g_1309.s0", print_hash_value);
    transparent_crc(p_2768->g_1309.s1, "p_2768->g_1309.s1", print_hash_value);
    transparent_crc(p_2768->g_1309.s2, "p_2768->g_1309.s2", print_hash_value);
    transparent_crc(p_2768->g_1309.s3, "p_2768->g_1309.s3", print_hash_value);
    transparent_crc(p_2768->g_1309.s4, "p_2768->g_1309.s4", print_hash_value);
    transparent_crc(p_2768->g_1309.s5, "p_2768->g_1309.s5", print_hash_value);
    transparent_crc(p_2768->g_1309.s6, "p_2768->g_1309.s6", print_hash_value);
    transparent_crc(p_2768->g_1309.s7, "p_2768->g_1309.s7", print_hash_value);
    transparent_crc(p_2768->g_1312.x, "p_2768->g_1312.x", print_hash_value);
    transparent_crc(p_2768->g_1312.y, "p_2768->g_1312.y", print_hash_value);
    transparent_crc(p_2768->g_1312.z, "p_2768->g_1312.z", print_hash_value);
    transparent_crc(p_2768->g_1312.w, "p_2768->g_1312.w", print_hash_value);
    transparent_crc(p_2768->g_1314.x, "p_2768->g_1314.x", print_hash_value);
    transparent_crc(p_2768->g_1314.y, "p_2768->g_1314.y", print_hash_value);
    transparent_crc(p_2768->g_1314.z, "p_2768->g_1314.z", print_hash_value);
    transparent_crc(p_2768->g_1314.w, "p_2768->g_1314.w", print_hash_value);
    transparent_crc(p_2768->g_1318.s0, "p_2768->g_1318.s0", print_hash_value);
    transparent_crc(p_2768->g_1318.s1, "p_2768->g_1318.s1", print_hash_value);
    transparent_crc(p_2768->g_1318.s2, "p_2768->g_1318.s2", print_hash_value);
    transparent_crc(p_2768->g_1318.s3, "p_2768->g_1318.s3", print_hash_value);
    transparent_crc(p_2768->g_1318.s4, "p_2768->g_1318.s4", print_hash_value);
    transparent_crc(p_2768->g_1318.s5, "p_2768->g_1318.s5", print_hash_value);
    transparent_crc(p_2768->g_1318.s6, "p_2768->g_1318.s6", print_hash_value);
    transparent_crc(p_2768->g_1318.s7, "p_2768->g_1318.s7", print_hash_value);
    transparent_crc(p_2768->g_1318.s8, "p_2768->g_1318.s8", print_hash_value);
    transparent_crc(p_2768->g_1318.s9, "p_2768->g_1318.s9", print_hash_value);
    transparent_crc(p_2768->g_1318.sa, "p_2768->g_1318.sa", print_hash_value);
    transparent_crc(p_2768->g_1318.sb, "p_2768->g_1318.sb", print_hash_value);
    transparent_crc(p_2768->g_1318.sc, "p_2768->g_1318.sc", print_hash_value);
    transparent_crc(p_2768->g_1318.sd, "p_2768->g_1318.sd", print_hash_value);
    transparent_crc(p_2768->g_1318.se, "p_2768->g_1318.se", print_hash_value);
    transparent_crc(p_2768->g_1318.sf, "p_2768->g_1318.sf", print_hash_value);
    transparent_crc(p_2768->g_1324.x, "p_2768->g_1324.x", print_hash_value);
    transparent_crc(p_2768->g_1324.y, "p_2768->g_1324.y", print_hash_value);
    transparent_crc(p_2768->g_1324.z, "p_2768->g_1324.z", print_hash_value);
    transparent_crc(p_2768->g_1324.w, "p_2768->g_1324.w", print_hash_value);
    transparent_crc(p_2768->g_1333.x, "p_2768->g_1333.x", print_hash_value);
    transparent_crc(p_2768->g_1333.y, "p_2768->g_1333.y", print_hash_value);
    transparent_crc(p_2768->g_1338.x, "p_2768->g_1338.x", print_hash_value);
    transparent_crc(p_2768->g_1338.y, "p_2768->g_1338.y", print_hash_value);
    transparent_crc(p_2768->g_1451.s0, "p_2768->g_1451.s0", print_hash_value);
    transparent_crc(p_2768->g_1451.s1, "p_2768->g_1451.s1", print_hash_value);
    transparent_crc(p_2768->g_1451.s2, "p_2768->g_1451.s2", print_hash_value);
    transparent_crc(p_2768->g_1451.s3, "p_2768->g_1451.s3", print_hash_value);
    transparent_crc(p_2768->g_1451.s4, "p_2768->g_1451.s4", print_hash_value);
    transparent_crc(p_2768->g_1451.s5, "p_2768->g_1451.s5", print_hash_value);
    transparent_crc(p_2768->g_1451.s6, "p_2768->g_1451.s6", print_hash_value);
    transparent_crc(p_2768->g_1451.s7, "p_2768->g_1451.s7", print_hash_value);
    transparent_crc(p_2768->g_1469.x, "p_2768->g_1469.x", print_hash_value);
    transparent_crc(p_2768->g_1469.y, "p_2768->g_1469.y", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_2768->g_1488[i][j], "p_2768->g_1488[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2768->g_1511.x, "p_2768->g_1511.x", print_hash_value);
    transparent_crc(p_2768->g_1511.y, "p_2768->g_1511.y", print_hash_value);
    transparent_crc(p_2768->g_1512.s0, "p_2768->g_1512.s0", print_hash_value);
    transparent_crc(p_2768->g_1512.s1, "p_2768->g_1512.s1", print_hash_value);
    transparent_crc(p_2768->g_1512.s2, "p_2768->g_1512.s2", print_hash_value);
    transparent_crc(p_2768->g_1512.s3, "p_2768->g_1512.s3", print_hash_value);
    transparent_crc(p_2768->g_1512.s4, "p_2768->g_1512.s4", print_hash_value);
    transparent_crc(p_2768->g_1512.s5, "p_2768->g_1512.s5", print_hash_value);
    transparent_crc(p_2768->g_1512.s6, "p_2768->g_1512.s6", print_hash_value);
    transparent_crc(p_2768->g_1512.s7, "p_2768->g_1512.s7", print_hash_value);
    transparent_crc(p_2768->g_1517.x, "p_2768->g_1517.x", print_hash_value);
    transparent_crc(p_2768->g_1517.y, "p_2768->g_1517.y", print_hash_value);
    transparent_crc(p_2768->g_1517.z, "p_2768->g_1517.z", print_hash_value);
    transparent_crc(p_2768->g_1517.w, "p_2768->g_1517.w", print_hash_value);
    transparent_crc(p_2768->g_1520.x, "p_2768->g_1520.x", print_hash_value);
    transparent_crc(p_2768->g_1520.y, "p_2768->g_1520.y", print_hash_value);
    transparent_crc(p_2768->g_1521.x, "p_2768->g_1521.x", print_hash_value);
    transparent_crc(p_2768->g_1521.y, "p_2768->g_1521.y", print_hash_value);
    transparent_crc(p_2768->g_1532.s0, "p_2768->g_1532.s0", print_hash_value);
    transparent_crc(p_2768->g_1532.s1, "p_2768->g_1532.s1", print_hash_value);
    transparent_crc(p_2768->g_1532.s2, "p_2768->g_1532.s2", print_hash_value);
    transparent_crc(p_2768->g_1532.s3, "p_2768->g_1532.s3", print_hash_value);
    transparent_crc(p_2768->g_1532.s4, "p_2768->g_1532.s4", print_hash_value);
    transparent_crc(p_2768->g_1532.s5, "p_2768->g_1532.s5", print_hash_value);
    transparent_crc(p_2768->g_1532.s6, "p_2768->g_1532.s6", print_hash_value);
    transparent_crc(p_2768->g_1532.s7, "p_2768->g_1532.s7", print_hash_value);
    transparent_crc(p_2768->g_1533.s0, "p_2768->g_1533.s0", print_hash_value);
    transparent_crc(p_2768->g_1533.s1, "p_2768->g_1533.s1", print_hash_value);
    transparent_crc(p_2768->g_1533.s2, "p_2768->g_1533.s2", print_hash_value);
    transparent_crc(p_2768->g_1533.s3, "p_2768->g_1533.s3", print_hash_value);
    transparent_crc(p_2768->g_1533.s4, "p_2768->g_1533.s4", print_hash_value);
    transparent_crc(p_2768->g_1533.s5, "p_2768->g_1533.s5", print_hash_value);
    transparent_crc(p_2768->g_1533.s6, "p_2768->g_1533.s6", print_hash_value);
    transparent_crc(p_2768->g_1533.s7, "p_2768->g_1533.s7", print_hash_value);
    transparent_crc(p_2768->g_1533.s8, "p_2768->g_1533.s8", print_hash_value);
    transparent_crc(p_2768->g_1533.s9, "p_2768->g_1533.s9", print_hash_value);
    transparent_crc(p_2768->g_1533.sa, "p_2768->g_1533.sa", print_hash_value);
    transparent_crc(p_2768->g_1533.sb, "p_2768->g_1533.sb", print_hash_value);
    transparent_crc(p_2768->g_1533.sc, "p_2768->g_1533.sc", print_hash_value);
    transparent_crc(p_2768->g_1533.sd, "p_2768->g_1533.sd", print_hash_value);
    transparent_crc(p_2768->g_1533.se, "p_2768->g_1533.se", print_hash_value);
    transparent_crc(p_2768->g_1533.sf, "p_2768->g_1533.sf", print_hash_value);
    transparent_crc(p_2768->g_1555, "p_2768->g_1555", print_hash_value);
    transparent_crc(p_2768->g_1557, "p_2768->g_1557", print_hash_value);
    transparent_crc(p_2768->g_1575.s0, "p_2768->g_1575.s0", print_hash_value);
    transparent_crc(p_2768->g_1575.s1, "p_2768->g_1575.s1", print_hash_value);
    transparent_crc(p_2768->g_1575.s2, "p_2768->g_1575.s2", print_hash_value);
    transparent_crc(p_2768->g_1575.s3, "p_2768->g_1575.s3", print_hash_value);
    transparent_crc(p_2768->g_1575.s4, "p_2768->g_1575.s4", print_hash_value);
    transparent_crc(p_2768->g_1575.s5, "p_2768->g_1575.s5", print_hash_value);
    transparent_crc(p_2768->g_1575.s6, "p_2768->g_1575.s6", print_hash_value);
    transparent_crc(p_2768->g_1575.s7, "p_2768->g_1575.s7", print_hash_value);
    transparent_crc(p_2768->g_1575.s8, "p_2768->g_1575.s8", print_hash_value);
    transparent_crc(p_2768->g_1575.s9, "p_2768->g_1575.s9", print_hash_value);
    transparent_crc(p_2768->g_1575.sa, "p_2768->g_1575.sa", print_hash_value);
    transparent_crc(p_2768->g_1575.sb, "p_2768->g_1575.sb", print_hash_value);
    transparent_crc(p_2768->g_1575.sc, "p_2768->g_1575.sc", print_hash_value);
    transparent_crc(p_2768->g_1575.sd, "p_2768->g_1575.sd", print_hash_value);
    transparent_crc(p_2768->g_1575.se, "p_2768->g_1575.se", print_hash_value);
    transparent_crc(p_2768->g_1575.sf, "p_2768->g_1575.sf", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_2768->g_1625[i], "p_2768->g_1625[i]", print_hash_value);

    }
    transparent_crc(p_2768->g_1656, "p_2768->g_1656", print_hash_value);
    transparent_crc(p_2768->g_1670.x, "p_2768->g_1670.x", print_hash_value);
    transparent_crc(p_2768->g_1670.y, "p_2768->g_1670.y", print_hash_value);
    transparent_crc(p_2768->g_1670.z, "p_2768->g_1670.z", print_hash_value);
    transparent_crc(p_2768->g_1670.w, "p_2768->g_1670.w", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_2768->g_1691[i][j][k], "p_2768->g_1691[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2768->g_1698.s0, "p_2768->g_1698.s0", print_hash_value);
    transparent_crc(p_2768->g_1698.s1, "p_2768->g_1698.s1", print_hash_value);
    transparent_crc(p_2768->g_1698.s2, "p_2768->g_1698.s2", print_hash_value);
    transparent_crc(p_2768->g_1698.s3, "p_2768->g_1698.s3", print_hash_value);
    transparent_crc(p_2768->g_1698.s4, "p_2768->g_1698.s4", print_hash_value);
    transparent_crc(p_2768->g_1698.s5, "p_2768->g_1698.s5", print_hash_value);
    transparent_crc(p_2768->g_1698.s6, "p_2768->g_1698.s6", print_hash_value);
    transparent_crc(p_2768->g_1698.s7, "p_2768->g_1698.s7", print_hash_value);
    transparent_crc(p_2768->g_1698.s8, "p_2768->g_1698.s8", print_hash_value);
    transparent_crc(p_2768->g_1698.s9, "p_2768->g_1698.s9", print_hash_value);
    transparent_crc(p_2768->g_1698.sa, "p_2768->g_1698.sa", print_hash_value);
    transparent_crc(p_2768->g_1698.sb, "p_2768->g_1698.sb", print_hash_value);
    transparent_crc(p_2768->g_1698.sc, "p_2768->g_1698.sc", print_hash_value);
    transparent_crc(p_2768->g_1698.sd, "p_2768->g_1698.sd", print_hash_value);
    transparent_crc(p_2768->g_1698.se, "p_2768->g_1698.se", print_hash_value);
    transparent_crc(p_2768->g_1698.sf, "p_2768->g_1698.sf", print_hash_value);
    transparent_crc(p_2768->g_1724.s0, "p_2768->g_1724.s0", print_hash_value);
    transparent_crc(p_2768->g_1724.s1, "p_2768->g_1724.s1", print_hash_value);
    transparent_crc(p_2768->g_1724.s2, "p_2768->g_1724.s2", print_hash_value);
    transparent_crc(p_2768->g_1724.s3, "p_2768->g_1724.s3", print_hash_value);
    transparent_crc(p_2768->g_1724.s4, "p_2768->g_1724.s4", print_hash_value);
    transparent_crc(p_2768->g_1724.s5, "p_2768->g_1724.s5", print_hash_value);
    transparent_crc(p_2768->g_1724.s6, "p_2768->g_1724.s6", print_hash_value);
    transparent_crc(p_2768->g_1724.s7, "p_2768->g_1724.s7", print_hash_value);
    transparent_crc(p_2768->g_1724.s8, "p_2768->g_1724.s8", print_hash_value);
    transparent_crc(p_2768->g_1724.s9, "p_2768->g_1724.s9", print_hash_value);
    transparent_crc(p_2768->g_1724.sa, "p_2768->g_1724.sa", print_hash_value);
    transparent_crc(p_2768->g_1724.sb, "p_2768->g_1724.sb", print_hash_value);
    transparent_crc(p_2768->g_1724.sc, "p_2768->g_1724.sc", print_hash_value);
    transparent_crc(p_2768->g_1724.sd, "p_2768->g_1724.sd", print_hash_value);
    transparent_crc(p_2768->g_1724.se, "p_2768->g_1724.se", print_hash_value);
    transparent_crc(p_2768->g_1724.sf, "p_2768->g_1724.sf", print_hash_value);
    transparent_crc(p_2768->g_1756.x, "p_2768->g_1756.x", print_hash_value);
    transparent_crc(p_2768->g_1756.y, "p_2768->g_1756.y", print_hash_value);
    transparent_crc(p_2768->g_1756.z, "p_2768->g_1756.z", print_hash_value);
    transparent_crc(p_2768->g_1756.w, "p_2768->g_1756.w", print_hash_value);
    transparent_crc(p_2768->g_1816.s0, "p_2768->g_1816.s0", print_hash_value);
    transparent_crc(p_2768->g_1816.s1, "p_2768->g_1816.s1", print_hash_value);
    transparent_crc(p_2768->g_1816.s2, "p_2768->g_1816.s2", print_hash_value);
    transparent_crc(p_2768->g_1816.s3, "p_2768->g_1816.s3", print_hash_value);
    transparent_crc(p_2768->g_1816.s4, "p_2768->g_1816.s4", print_hash_value);
    transparent_crc(p_2768->g_1816.s5, "p_2768->g_1816.s5", print_hash_value);
    transparent_crc(p_2768->g_1816.s6, "p_2768->g_1816.s6", print_hash_value);
    transparent_crc(p_2768->g_1816.s7, "p_2768->g_1816.s7", print_hash_value);
    transparent_crc(p_2768->g_1907.s0, "p_2768->g_1907.s0", print_hash_value);
    transparent_crc(p_2768->g_1907.s1, "p_2768->g_1907.s1", print_hash_value);
    transparent_crc(p_2768->g_1907.s2, "p_2768->g_1907.s2", print_hash_value);
    transparent_crc(p_2768->g_1907.s3, "p_2768->g_1907.s3", print_hash_value);
    transparent_crc(p_2768->g_1907.s4, "p_2768->g_1907.s4", print_hash_value);
    transparent_crc(p_2768->g_1907.s5, "p_2768->g_1907.s5", print_hash_value);
    transparent_crc(p_2768->g_1907.s6, "p_2768->g_1907.s6", print_hash_value);
    transparent_crc(p_2768->g_1907.s7, "p_2768->g_1907.s7", print_hash_value);
    transparent_crc(p_2768->g_1907.s8, "p_2768->g_1907.s8", print_hash_value);
    transparent_crc(p_2768->g_1907.s9, "p_2768->g_1907.s9", print_hash_value);
    transparent_crc(p_2768->g_1907.sa, "p_2768->g_1907.sa", print_hash_value);
    transparent_crc(p_2768->g_1907.sb, "p_2768->g_1907.sb", print_hash_value);
    transparent_crc(p_2768->g_1907.sc, "p_2768->g_1907.sc", print_hash_value);
    transparent_crc(p_2768->g_1907.sd, "p_2768->g_1907.sd", print_hash_value);
    transparent_crc(p_2768->g_1907.se, "p_2768->g_1907.se", print_hash_value);
    transparent_crc(p_2768->g_1907.sf, "p_2768->g_1907.sf", print_hash_value);
    transparent_crc(p_2768->g_1909.s0, "p_2768->g_1909.s0", print_hash_value);
    transparent_crc(p_2768->g_1909.s1, "p_2768->g_1909.s1", print_hash_value);
    transparent_crc(p_2768->g_1909.s2, "p_2768->g_1909.s2", print_hash_value);
    transparent_crc(p_2768->g_1909.s3, "p_2768->g_1909.s3", print_hash_value);
    transparent_crc(p_2768->g_1909.s4, "p_2768->g_1909.s4", print_hash_value);
    transparent_crc(p_2768->g_1909.s5, "p_2768->g_1909.s5", print_hash_value);
    transparent_crc(p_2768->g_1909.s6, "p_2768->g_1909.s6", print_hash_value);
    transparent_crc(p_2768->g_1909.s7, "p_2768->g_1909.s7", print_hash_value);
    transparent_crc(p_2768->g_1926.s0, "p_2768->g_1926.s0", print_hash_value);
    transparent_crc(p_2768->g_1926.s1, "p_2768->g_1926.s1", print_hash_value);
    transparent_crc(p_2768->g_1926.s2, "p_2768->g_1926.s2", print_hash_value);
    transparent_crc(p_2768->g_1926.s3, "p_2768->g_1926.s3", print_hash_value);
    transparent_crc(p_2768->g_1926.s4, "p_2768->g_1926.s4", print_hash_value);
    transparent_crc(p_2768->g_1926.s5, "p_2768->g_1926.s5", print_hash_value);
    transparent_crc(p_2768->g_1926.s6, "p_2768->g_1926.s6", print_hash_value);
    transparent_crc(p_2768->g_1926.s7, "p_2768->g_1926.s7", print_hash_value);
    transparent_crc(p_2768->g_1926.s8, "p_2768->g_1926.s8", print_hash_value);
    transparent_crc(p_2768->g_1926.s9, "p_2768->g_1926.s9", print_hash_value);
    transparent_crc(p_2768->g_1926.sa, "p_2768->g_1926.sa", print_hash_value);
    transparent_crc(p_2768->g_1926.sb, "p_2768->g_1926.sb", print_hash_value);
    transparent_crc(p_2768->g_1926.sc, "p_2768->g_1926.sc", print_hash_value);
    transparent_crc(p_2768->g_1926.sd, "p_2768->g_1926.sd", print_hash_value);
    transparent_crc(p_2768->g_1926.se, "p_2768->g_1926.se", print_hash_value);
    transparent_crc(p_2768->g_1926.sf, "p_2768->g_1926.sf", print_hash_value);
    transparent_crc(p_2768->g_1947.s0, "p_2768->g_1947.s0", print_hash_value);
    transparent_crc(p_2768->g_1947.s1, "p_2768->g_1947.s1", print_hash_value);
    transparent_crc(p_2768->g_1947.s2, "p_2768->g_1947.s2", print_hash_value);
    transparent_crc(p_2768->g_1947.s3, "p_2768->g_1947.s3", print_hash_value);
    transparent_crc(p_2768->g_1947.s4, "p_2768->g_1947.s4", print_hash_value);
    transparent_crc(p_2768->g_1947.s5, "p_2768->g_1947.s5", print_hash_value);
    transparent_crc(p_2768->g_1947.s6, "p_2768->g_1947.s6", print_hash_value);
    transparent_crc(p_2768->g_1947.s7, "p_2768->g_1947.s7", print_hash_value);
    transparent_crc(p_2768->g_1947.s8, "p_2768->g_1947.s8", print_hash_value);
    transparent_crc(p_2768->g_1947.s9, "p_2768->g_1947.s9", print_hash_value);
    transparent_crc(p_2768->g_1947.sa, "p_2768->g_1947.sa", print_hash_value);
    transparent_crc(p_2768->g_1947.sb, "p_2768->g_1947.sb", print_hash_value);
    transparent_crc(p_2768->g_1947.sc, "p_2768->g_1947.sc", print_hash_value);
    transparent_crc(p_2768->g_1947.sd, "p_2768->g_1947.sd", print_hash_value);
    transparent_crc(p_2768->g_1947.se, "p_2768->g_1947.se", print_hash_value);
    transparent_crc(p_2768->g_1947.sf, "p_2768->g_1947.sf", print_hash_value);
    transparent_crc(p_2768->g_1977.s0, "p_2768->g_1977.s0", print_hash_value);
    transparent_crc(p_2768->g_1977.s1, "p_2768->g_1977.s1", print_hash_value);
    transparent_crc(p_2768->g_1977.s2, "p_2768->g_1977.s2", print_hash_value);
    transparent_crc(p_2768->g_1977.s3, "p_2768->g_1977.s3", print_hash_value);
    transparent_crc(p_2768->g_1977.s4, "p_2768->g_1977.s4", print_hash_value);
    transparent_crc(p_2768->g_1977.s5, "p_2768->g_1977.s5", print_hash_value);
    transparent_crc(p_2768->g_1977.s6, "p_2768->g_1977.s6", print_hash_value);
    transparent_crc(p_2768->g_1977.s7, "p_2768->g_1977.s7", print_hash_value);
    transparent_crc(p_2768->g_1977.s8, "p_2768->g_1977.s8", print_hash_value);
    transparent_crc(p_2768->g_1977.s9, "p_2768->g_1977.s9", print_hash_value);
    transparent_crc(p_2768->g_1977.sa, "p_2768->g_1977.sa", print_hash_value);
    transparent_crc(p_2768->g_1977.sb, "p_2768->g_1977.sb", print_hash_value);
    transparent_crc(p_2768->g_1977.sc, "p_2768->g_1977.sc", print_hash_value);
    transparent_crc(p_2768->g_1977.sd, "p_2768->g_1977.sd", print_hash_value);
    transparent_crc(p_2768->g_1977.se, "p_2768->g_1977.se", print_hash_value);
    transparent_crc(p_2768->g_1977.sf, "p_2768->g_1977.sf", print_hash_value);
    transparent_crc(p_2768->g_1979.x, "p_2768->g_1979.x", print_hash_value);
    transparent_crc(p_2768->g_1979.y, "p_2768->g_1979.y", print_hash_value);
    transparent_crc(p_2768->g_1986.s0, "p_2768->g_1986.s0", print_hash_value);
    transparent_crc(p_2768->g_1986.s1, "p_2768->g_1986.s1", print_hash_value);
    transparent_crc(p_2768->g_1986.s2, "p_2768->g_1986.s2", print_hash_value);
    transparent_crc(p_2768->g_1986.s3, "p_2768->g_1986.s3", print_hash_value);
    transparent_crc(p_2768->g_1986.s4, "p_2768->g_1986.s4", print_hash_value);
    transparent_crc(p_2768->g_1986.s5, "p_2768->g_1986.s5", print_hash_value);
    transparent_crc(p_2768->g_1986.s6, "p_2768->g_1986.s6", print_hash_value);
    transparent_crc(p_2768->g_1986.s7, "p_2768->g_1986.s7", print_hash_value);
    transparent_crc(p_2768->g_2001.x, "p_2768->g_2001.x", print_hash_value);
    transparent_crc(p_2768->g_2001.y, "p_2768->g_2001.y", print_hash_value);
    transparent_crc(p_2768->g_2002.x, "p_2768->g_2002.x", print_hash_value);
    transparent_crc(p_2768->g_2002.y, "p_2768->g_2002.y", print_hash_value);
    transparent_crc(p_2768->g_2002.z, "p_2768->g_2002.z", print_hash_value);
    transparent_crc(p_2768->g_2002.w, "p_2768->g_2002.w", print_hash_value);
    transparent_crc(p_2768->g_2006.x, "p_2768->g_2006.x", print_hash_value);
    transparent_crc(p_2768->g_2006.y, "p_2768->g_2006.y", print_hash_value);
    transparent_crc(p_2768->g_2012.x, "p_2768->g_2012.x", print_hash_value);
    transparent_crc(p_2768->g_2012.y, "p_2768->g_2012.y", print_hash_value);
    transparent_crc(p_2768->g_2026.s0, "p_2768->g_2026.s0", print_hash_value);
    transparent_crc(p_2768->g_2026.s1, "p_2768->g_2026.s1", print_hash_value);
    transparent_crc(p_2768->g_2026.s2, "p_2768->g_2026.s2", print_hash_value);
    transparent_crc(p_2768->g_2026.s3, "p_2768->g_2026.s3", print_hash_value);
    transparent_crc(p_2768->g_2026.s4, "p_2768->g_2026.s4", print_hash_value);
    transparent_crc(p_2768->g_2026.s5, "p_2768->g_2026.s5", print_hash_value);
    transparent_crc(p_2768->g_2026.s6, "p_2768->g_2026.s6", print_hash_value);
    transparent_crc(p_2768->g_2026.s7, "p_2768->g_2026.s7", print_hash_value);
    transparent_crc(p_2768->g_2029, "p_2768->g_2029", print_hash_value);
    transparent_crc(p_2768->g_2040.x, "p_2768->g_2040.x", print_hash_value);
    transparent_crc(p_2768->g_2040.y, "p_2768->g_2040.y", print_hash_value);
    transparent_crc(p_2768->g_2046.s0, "p_2768->g_2046.s0", print_hash_value);
    transparent_crc(p_2768->g_2046.s1, "p_2768->g_2046.s1", print_hash_value);
    transparent_crc(p_2768->g_2046.s2, "p_2768->g_2046.s2", print_hash_value);
    transparent_crc(p_2768->g_2046.s3, "p_2768->g_2046.s3", print_hash_value);
    transparent_crc(p_2768->g_2046.s4, "p_2768->g_2046.s4", print_hash_value);
    transparent_crc(p_2768->g_2046.s5, "p_2768->g_2046.s5", print_hash_value);
    transparent_crc(p_2768->g_2046.s6, "p_2768->g_2046.s6", print_hash_value);
    transparent_crc(p_2768->g_2046.s7, "p_2768->g_2046.s7", print_hash_value);
    transparent_crc(p_2768->g_2050.s0, "p_2768->g_2050.s0", print_hash_value);
    transparent_crc(p_2768->g_2050.s1, "p_2768->g_2050.s1", print_hash_value);
    transparent_crc(p_2768->g_2050.s2, "p_2768->g_2050.s2", print_hash_value);
    transparent_crc(p_2768->g_2050.s3, "p_2768->g_2050.s3", print_hash_value);
    transparent_crc(p_2768->g_2050.s4, "p_2768->g_2050.s4", print_hash_value);
    transparent_crc(p_2768->g_2050.s5, "p_2768->g_2050.s5", print_hash_value);
    transparent_crc(p_2768->g_2050.s6, "p_2768->g_2050.s6", print_hash_value);
    transparent_crc(p_2768->g_2050.s7, "p_2768->g_2050.s7", print_hash_value);
    transparent_crc(p_2768->g_2067.s0, "p_2768->g_2067.s0", print_hash_value);
    transparent_crc(p_2768->g_2067.s1, "p_2768->g_2067.s1", print_hash_value);
    transparent_crc(p_2768->g_2067.s2, "p_2768->g_2067.s2", print_hash_value);
    transparent_crc(p_2768->g_2067.s3, "p_2768->g_2067.s3", print_hash_value);
    transparent_crc(p_2768->g_2067.s4, "p_2768->g_2067.s4", print_hash_value);
    transparent_crc(p_2768->g_2067.s5, "p_2768->g_2067.s5", print_hash_value);
    transparent_crc(p_2768->g_2067.s6, "p_2768->g_2067.s6", print_hash_value);
    transparent_crc(p_2768->g_2067.s7, "p_2768->g_2067.s7", print_hash_value);
    transparent_crc(p_2768->g_2067.s8, "p_2768->g_2067.s8", print_hash_value);
    transparent_crc(p_2768->g_2067.s9, "p_2768->g_2067.s9", print_hash_value);
    transparent_crc(p_2768->g_2067.sa, "p_2768->g_2067.sa", print_hash_value);
    transparent_crc(p_2768->g_2067.sb, "p_2768->g_2067.sb", print_hash_value);
    transparent_crc(p_2768->g_2067.sc, "p_2768->g_2067.sc", print_hash_value);
    transparent_crc(p_2768->g_2067.sd, "p_2768->g_2067.sd", print_hash_value);
    transparent_crc(p_2768->g_2067.se, "p_2768->g_2067.se", print_hash_value);
    transparent_crc(p_2768->g_2067.sf, "p_2768->g_2067.sf", print_hash_value);
    transparent_crc(p_2768->g_2105.s0, "p_2768->g_2105.s0", print_hash_value);
    transparent_crc(p_2768->g_2105.s1, "p_2768->g_2105.s1", print_hash_value);
    transparent_crc(p_2768->g_2105.s2, "p_2768->g_2105.s2", print_hash_value);
    transparent_crc(p_2768->g_2105.s3, "p_2768->g_2105.s3", print_hash_value);
    transparent_crc(p_2768->g_2105.s4, "p_2768->g_2105.s4", print_hash_value);
    transparent_crc(p_2768->g_2105.s5, "p_2768->g_2105.s5", print_hash_value);
    transparent_crc(p_2768->g_2105.s6, "p_2768->g_2105.s6", print_hash_value);
    transparent_crc(p_2768->g_2105.s7, "p_2768->g_2105.s7", print_hash_value);
    transparent_crc(p_2768->g_2105.s8, "p_2768->g_2105.s8", print_hash_value);
    transparent_crc(p_2768->g_2105.s9, "p_2768->g_2105.s9", print_hash_value);
    transparent_crc(p_2768->g_2105.sa, "p_2768->g_2105.sa", print_hash_value);
    transparent_crc(p_2768->g_2105.sb, "p_2768->g_2105.sb", print_hash_value);
    transparent_crc(p_2768->g_2105.sc, "p_2768->g_2105.sc", print_hash_value);
    transparent_crc(p_2768->g_2105.sd, "p_2768->g_2105.sd", print_hash_value);
    transparent_crc(p_2768->g_2105.se, "p_2768->g_2105.se", print_hash_value);
    transparent_crc(p_2768->g_2105.sf, "p_2768->g_2105.sf", print_hash_value);
    transparent_crc(p_2768->g_2107.x, "p_2768->g_2107.x", print_hash_value);
    transparent_crc(p_2768->g_2107.y, "p_2768->g_2107.y", print_hash_value);
    transparent_crc(p_2768->g_2107.z, "p_2768->g_2107.z", print_hash_value);
    transparent_crc(p_2768->g_2107.w, "p_2768->g_2107.w", print_hash_value);
    transparent_crc(p_2768->g_2114.x, "p_2768->g_2114.x", print_hash_value);
    transparent_crc(p_2768->g_2114.y, "p_2768->g_2114.y", print_hash_value);
    transparent_crc(p_2768->g_2114.z, "p_2768->g_2114.z", print_hash_value);
    transparent_crc(p_2768->g_2114.w, "p_2768->g_2114.w", print_hash_value);
    transparent_crc(p_2768->g_2115.x, "p_2768->g_2115.x", print_hash_value);
    transparent_crc(p_2768->g_2115.y, "p_2768->g_2115.y", print_hash_value);
    transparent_crc(p_2768->g_2116.x, "p_2768->g_2116.x", print_hash_value);
    transparent_crc(p_2768->g_2116.y, "p_2768->g_2116.y", print_hash_value);
    transparent_crc(p_2768->g_2120.x, "p_2768->g_2120.x", print_hash_value);
    transparent_crc(p_2768->g_2120.y, "p_2768->g_2120.y", print_hash_value);
    transparent_crc(p_2768->g_2120.z, "p_2768->g_2120.z", print_hash_value);
    transparent_crc(p_2768->g_2120.w, "p_2768->g_2120.w", print_hash_value);
    transparent_crc(p_2768->g_2121.s0, "p_2768->g_2121.s0", print_hash_value);
    transparent_crc(p_2768->g_2121.s1, "p_2768->g_2121.s1", print_hash_value);
    transparent_crc(p_2768->g_2121.s2, "p_2768->g_2121.s2", print_hash_value);
    transparent_crc(p_2768->g_2121.s3, "p_2768->g_2121.s3", print_hash_value);
    transparent_crc(p_2768->g_2121.s4, "p_2768->g_2121.s4", print_hash_value);
    transparent_crc(p_2768->g_2121.s5, "p_2768->g_2121.s5", print_hash_value);
    transparent_crc(p_2768->g_2121.s6, "p_2768->g_2121.s6", print_hash_value);
    transparent_crc(p_2768->g_2121.s7, "p_2768->g_2121.s7", print_hash_value);
    transparent_crc(p_2768->g_2128.s0, "p_2768->g_2128.s0", print_hash_value);
    transparent_crc(p_2768->g_2128.s1, "p_2768->g_2128.s1", print_hash_value);
    transparent_crc(p_2768->g_2128.s2, "p_2768->g_2128.s2", print_hash_value);
    transparent_crc(p_2768->g_2128.s3, "p_2768->g_2128.s3", print_hash_value);
    transparent_crc(p_2768->g_2128.s4, "p_2768->g_2128.s4", print_hash_value);
    transparent_crc(p_2768->g_2128.s5, "p_2768->g_2128.s5", print_hash_value);
    transparent_crc(p_2768->g_2128.s6, "p_2768->g_2128.s6", print_hash_value);
    transparent_crc(p_2768->g_2128.s7, "p_2768->g_2128.s7", print_hash_value);
    transparent_crc(p_2768->g_2207.s0, "p_2768->g_2207.s0", print_hash_value);
    transparent_crc(p_2768->g_2207.s1, "p_2768->g_2207.s1", print_hash_value);
    transparent_crc(p_2768->g_2207.s2, "p_2768->g_2207.s2", print_hash_value);
    transparent_crc(p_2768->g_2207.s3, "p_2768->g_2207.s3", print_hash_value);
    transparent_crc(p_2768->g_2207.s4, "p_2768->g_2207.s4", print_hash_value);
    transparent_crc(p_2768->g_2207.s5, "p_2768->g_2207.s5", print_hash_value);
    transparent_crc(p_2768->g_2207.s6, "p_2768->g_2207.s6", print_hash_value);
    transparent_crc(p_2768->g_2207.s7, "p_2768->g_2207.s7", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_2768->g_2231[i][j][k], "p_2768->g_2231[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2768->g_2276.x, "p_2768->g_2276.x", print_hash_value);
    transparent_crc(p_2768->g_2276.y, "p_2768->g_2276.y", print_hash_value);
    transparent_crc(p_2768->g_2286.x, "p_2768->g_2286.x", print_hash_value);
    transparent_crc(p_2768->g_2286.y, "p_2768->g_2286.y", print_hash_value);
    transparent_crc(p_2768->g_2298.x, "p_2768->g_2298.x", print_hash_value);
    transparent_crc(p_2768->g_2298.y, "p_2768->g_2298.y", print_hash_value);
    transparent_crc(p_2768->g_2298.z, "p_2768->g_2298.z", print_hash_value);
    transparent_crc(p_2768->g_2298.w, "p_2768->g_2298.w", print_hash_value);
    transparent_crc(p_2768->g_2332.s0, "p_2768->g_2332.s0", print_hash_value);
    transparent_crc(p_2768->g_2332.s1, "p_2768->g_2332.s1", print_hash_value);
    transparent_crc(p_2768->g_2332.s2, "p_2768->g_2332.s2", print_hash_value);
    transparent_crc(p_2768->g_2332.s3, "p_2768->g_2332.s3", print_hash_value);
    transparent_crc(p_2768->g_2332.s4, "p_2768->g_2332.s4", print_hash_value);
    transparent_crc(p_2768->g_2332.s5, "p_2768->g_2332.s5", print_hash_value);
    transparent_crc(p_2768->g_2332.s6, "p_2768->g_2332.s6", print_hash_value);
    transparent_crc(p_2768->g_2332.s7, "p_2768->g_2332.s7", print_hash_value);
    transparent_crc(p_2768->g_2382.x, "p_2768->g_2382.x", print_hash_value);
    transparent_crc(p_2768->g_2382.y, "p_2768->g_2382.y", print_hash_value);
    transparent_crc(p_2768->g_2382.z, "p_2768->g_2382.z", print_hash_value);
    transparent_crc(p_2768->g_2382.w, "p_2768->g_2382.w", print_hash_value);
    transparent_crc(p_2768->g_2395.x, "p_2768->g_2395.x", print_hash_value);
    transparent_crc(p_2768->g_2395.y, "p_2768->g_2395.y", print_hash_value);
    transparent_crc(p_2768->g_2419.s0, "p_2768->g_2419.s0", print_hash_value);
    transparent_crc(p_2768->g_2419.s1, "p_2768->g_2419.s1", print_hash_value);
    transparent_crc(p_2768->g_2419.s2, "p_2768->g_2419.s2", print_hash_value);
    transparent_crc(p_2768->g_2419.s3, "p_2768->g_2419.s3", print_hash_value);
    transparent_crc(p_2768->g_2419.s4, "p_2768->g_2419.s4", print_hash_value);
    transparent_crc(p_2768->g_2419.s5, "p_2768->g_2419.s5", print_hash_value);
    transparent_crc(p_2768->g_2419.s6, "p_2768->g_2419.s6", print_hash_value);
    transparent_crc(p_2768->g_2419.s7, "p_2768->g_2419.s7", print_hash_value);
    transparent_crc(p_2768->g_2464.s0, "p_2768->g_2464.s0", print_hash_value);
    transparent_crc(p_2768->g_2464.s1, "p_2768->g_2464.s1", print_hash_value);
    transparent_crc(p_2768->g_2464.s2, "p_2768->g_2464.s2", print_hash_value);
    transparent_crc(p_2768->g_2464.s3, "p_2768->g_2464.s3", print_hash_value);
    transparent_crc(p_2768->g_2464.s4, "p_2768->g_2464.s4", print_hash_value);
    transparent_crc(p_2768->g_2464.s5, "p_2768->g_2464.s5", print_hash_value);
    transparent_crc(p_2768->g_2464.s6, "p_2768->g_2464.s6", print_hash_value);
    transparent_crc(p_2768->g_2464.s7, "p_2768->g_2464.s7", print_hash_value);
    transparent_crc(p_2768->g_2464.s8, "p_2768->g_2464.s8", print_hash_value);
    transparent_crc(p_2768->g_2464.s9, "p_2768->g_2464.s9", print_hash_value);
    transparent_crc(p_2768->g_2464.sa, "p_2768->g_2464.sa", print_hash_value);
    transparent_crc(p_2768->g_2464.sb, "p_2768->g_2464.sb", print_hash_value);
    transparent_crc(p_2768->g_2464.sc, "p_2768->g_2464.sc", print_hash_value);
    transparent_crc(p_2768->g_2464.sd, "p_2768->g_2464.sd", print_hash_value);
    transparent_crc(p_2768->g_2464.se, "p_2768->g_2464.se", print_hash_value);
    transparent_crc(p_2768->g_2464.sf, "p_2768->g_2464.sf", print_hash_value);
    transparent_crc(p_2768->g_2470.s0, "p_2768->g_2470.s0", print_hash_value);
    transparent_crc(p_2768->g_2470.s1, "p_2768->g_2470.s1", print_hash_value);
    transparent_crc(p_2768->g_2470.s2, "p_2768->g_2470.s2", print_hash_value);
    transparent_crc(p_2768->g_2470.s3, "p_2768->g_2470.s3", print_hash_value);
    transparent_crc(p_2768->g_2470.s4, "p_2768->g_2470.s4", print_hash_value);
    transparent_crc(p_2768->g_2470.s5, "p_2768->g_2470.s5", print_hash_value);
    transparent_crc(p_2768->g_2470.s6, "p_2768->g_2470.s6", print_hash_value);
    transparent_crc(p_2768->g_2470.s7, "p_2768->g_2470.s7", print_hash_value);
    transparent_crc(p_2768->g_2470.s8, "p_2768->g_2470.s8", print_hash_value);
    transparent_crc(p_2768->g_2470.s9, "p_2768->g_2470.s9", print_hash_value);
    transparent_crc(p_2768->g_2470.sa, "p_2768->g_2470.sa", print_hash_value);
    transparent_crc(p_2768->g_2470.sb, "p_2768->g_2470.sb", print_hash_value);
    transparent_crc(p_2768->g_2470.sc, "p_2768->g_2470.sc", print_hash_value);
    transparent_crc(p_2768->g_2470.sd, "p_2768->g_2470.sd", print_hash_value);
    transparent_crc(p_2768->g_2470.se, "p_2768->g_2470.se", print_hash_value);
    transparent_crc(p_2768->g_2470.sf, "p_2768->g_2470.sf", print_hash_value);
    transparent_crc(p_2768->g_2475.x, "p_2768->g_2475.x", print_hash_value);
    transparent_crc(p_2768->g_2475.y, "p_2768->g_2475.y", print_hash_value);
    transparent_crc(p_2768->g_2483.s0, "p_2768->g_2483.s0", print_hash_value);
    transparent_crc(p_2768->g_2483.s1, "p_2768->g_2483.s1", print_hash_value);
    transparent_crc(p_2768->g_2483.s2, "p_2768->g_2483.s2", print_hash_value);
    transparent_crc(p_2768->g_2483.s3, "p_2768->g_2483.s3", print_hash_value);
    transparent_crc(p_2768->g_2483.s4, "p_2768->g_2483.s4", print_hash_value);
    transparent_crc(p_2768->g_2483.s5, "p_2768->g_2483.s5", print_hash_value);
    transparent_crc(p_2768->g_2483.s6, "p_2768->g_2483.s6", print_hash_value);
    transparent_crc(p_2768->g_2483.s7, "p_2768->g_2483.s7", print_hash_value);
    transparent_crc(p_2768->g_2483.s8, "p_2768->g_2483.s8", print_hash_value);
    transparent_crc(p_2768->g_2483.s9, "p_2768->g_2483.s9", print_hash_value);
    transparent_crc(p_2768->g_2483.sa, "p_2768->g_2483.sa", print_hash_value);
    transparent_crc(p_2768->g_2483.sb, "p_2768->g_2483.sb", print_hash_value);
    transparent_crc(p_2768->g_2483.sc, "p_2768->g_2483.sc", print_hash_value);
    transparent_crc(p_2768->g_2483.sd, "p_2768->g_2483.sd", print_hash_value);
    transparent_crc(p_2768->g_2483.se, "p_2768->g_2483.se", print_hash_value);
    transparent_crc(p_2768->g_2483.sf, "p_2768->g_2483.sf", print_hash_value);
    transparent_crc(p_2768->g_2499.s0, "p_2768->g_2499.s0", print_hash_value);
    transparent_crc(p_2768->g_2499.s1, "p_2768->g_2499.s1", print_hash_value);
    transparent_crc(p_2768->g_2499.s2, "p_2768->g_2499.s2", print_hash_value);
    transparent_crc(p_2768->g_2499.s3, "p_2768->g_2499.s3", print_hash_value);
    transparent_crc(p_2768->g_2499.s4, "p_2768->g_2499.s4", print_hash_value);
    transparent_crc(p_2768->g_2499.s5, "p_2768->g_2499.s5", print_hash_value);
    transparent_crc(p_2768->g_2499.s6, "p_2768->g_2499.s6", print_hash_value);
    transparent_crc(p_2768->g_2499.s7, "p_2768->g_2499.s7", print_hash_value);
    transparent_crc(p_2768->g_2506.x, "p_2768->g_2506.x", print_hash_value);
    transparent_crc(p_2768->g_2506.y, "p_2768->g_2506.y", print_hash_value);
    transparent_crc(p_2768->g_2520, "p_2768->g_2520", print_hash_value);
    transparent_crc(p_2768->g_2527.x, "p_2768->g_2527.x", print_hash_value);
    transparent_crc(p_2768->g_2527.y, "p_2768->g_2527.y", print_hash_value);
    transparent_crc(p_2768->g_2538.s0, "p_2768->g_2538.s0", print_hash_value);
    transparent_crc(p_2768->g_2538.s1, "p_2768->g_2538.s1", print_hash_value);
    transparent_crc(p_2768->g_2538.s2, "p_2768->g_2538.s2", print_hash_value);
    transparent_crc(p_2768->g_2538.s3, "p_2768->g_2538.s3", print_hash_value);
    transparent_crc(p_2768->g_2538.s4, "p_2768->g_2538.s4", print_hash_value);
    transparent_crc(p_2768->g_2538.s5, "p_2768->g_2538.s5", print_hash_value);
    transparent_crc(p_2768->g_2538.s6, "p_2768->g_2538.s6", print_hash_value);
    transparent_crc(p_2768->g_2538.s7, "p_2768->g_2538.s7", print_hash_value);
    transparent_crc(p_2768->g_2650.s0, "p_2768->g_2650.s0", print_hash_value);
    transparent_crc(p_2768->g_2650.s1, "p_2768->g_2650.s1", print_hash_value);
    transparent_crc(p_2768->g_2650.s2, "p_2768->g_2650.s2", print_hash_value);
    transparent_crc(p_2768->g_2650.s3, "p_2768->g_2650.s3", print_hash_value);
    transparent_crc(p_2768->g_2650.s4, "p_2768->g_2650.s4", print_hash_value);
    transparent_crc(p_2768->g_2650.s5, "p_2768->g_2650.s5", print_hash_value);
    transparent_crc(p_2768->g_2650.s6, "p_2768->g_2650.s6", print_hash_value);
    transparent_crc(p_2768->g_2650.s7, "p_2768->g_2650.s7", print_hash_value);
    transparent_crc(p_2768->g_2678.x, "p_2768->g_2678.x", print_hash_value);
    transparent_crc(p_2768->g_2678.y, "p_2768->g_2678.y", print_hash_value);
    transparent_crc(p_2768->g_2678.z, "p_2768->g_2678.z", print_hash_value);
    transparent_crc(p_2768->g_2678.w, "p_2768->g_2678.w", print_hash_value);
    transparent_crc(p_2768->g_2707.s0, "p_2768->g_2707.s0", print_hash_value);
    transparent_crc(p_2768->g_2707.s1, "p_2768->g_2707.s1", print_hash_value);
    transparent_crc(p_2768->g_2707.s2, "p_2768->g_2707.s2", print_hash_value);
    transparent_crc(p_2768->g_2707.s3, "p_2768->g_2707.s3", print_hash_value);
    transparent_crc(p_2768->g_2707.s4, "p_2768->g_2707.s4", print_hash_value);
    transparent_crc(p_2768->g_2707.s5, "p_2768->g_2707.s5", print_hash_value);
    transparent_crc(p_2768->g_2707.s6, "p_2768->g_2707.s6", print_hash_value);
    transparent_crc(p_2768->g_2707.s7, "p_2768->g_2707.s7", print_hash_value);
    transparent_crc(p_2768->g_2707.s8, "p_2768->g_2707.s8", print_hash_value);
    transparent_crc(p_2768->g_2707.s9, "p_2768->g_2707.s9", print_hash_value);
    transparent_crc(p_2768->g_2707.sa, "p_2768->g_2707.sa", print_hash_value);
    transparent_crc(p_2768->g_2707.sb, "p_2768->g_2707.sb", print_hash_value);
    transparent_crc(p_2768->g_2707.sc, "p_2768->g_2707.sc", print_hash_value);
    transparent_crc(p_2768->g_2707.sd, "p_2768->g_2707.sd", print_hash_value);
    transparent_crc(p_2768->g_2707.se, "p_2768->g_2707.se", print_hash_value);
    transparent_crc(p_2768->g_2707.sf, "p_2768->g_2707.sf", print_hash_value);
    transparent_crc(p_2768->g_2711.s0, "p_2768->g_2711.s0", print_hash_value);
    transparent_crc(p_2768->g_2711.s1, "p_2768->g_2711.s1", print_hash_value);
    transparent_crc(p_2768->g_2711.s2, "p_2768->g_2711.s2", print_hash_value);
    transparent_crc(p_2768->g_2711.s3, "p_2768->g_2711.s3", print_hash_value);
    transparent_crc(p_2768->g_2711.s4, "p_2768->g_2711.s4", print_hash_value);
    transparent_crc(p_2768->g_2711.s5, "p_2768->g_2711.s5", print_hash_value);
    transparent_crc(p_2768->g_2711.s6, "p_2768->g_2711.s6", print_hash_value);
    transparent_crc(p_2768->g_2711.s7, "p_2768->g_2711.s7", print_hash_value);
    transparent_crc(p_2768->g_2722.x, "p_2768->g_2722.x", print_hash_value);
    transparent_crc(p_2768->g_2722.y, "p_2768->g_2722.y", print_hash_value);
    transparent_crc(p_2768->g_2722.z, "p_2768->g_2722.z", print_hash_value);
    transparent_crc(p_2768->g_2722.w, "p_2768->g_2722.w", print_hash_value);
    transparent_crc(p_2768->g_2733.s0, "p_2768->g_2733.s0", print_hash_value);
    transparent_crc(p_2768->g_2733.s1, "p_2768->g_2733.s1", print_hash_value);
    transparent_crc(p_2768->g_2733.s2, "p_2768->g_2733.s2", print_hash_value);
    transparent_crc(p_2768->g_2733.s3, "p_2768->g_2733.s3", print_hash_value);
    transparent_crc(p_2768->g_2733.s4, "p_2768->g_2733.s4", print_hash_value);
    transparent_crc(p_2768->g_2733.s5, "p_2768->g_2733.s5", print_hash_value);
    transparent_crc(p_2768->g_2733.s6, "p_2768->g_2733.s6", print_hash_value);
    transparent_crc(p_2768->g_2733.s7, "p_2768->g_2733.s7", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
