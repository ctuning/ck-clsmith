// ---fake_divergence -g 90,1,59 -l 15,1,1
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


// Seed: 69

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_2;
    int32_t g_6;
    volatile uint32_t g_8;
    VECTOR(int16_t, 2) g_15;
    uint32_t g_22;
    uint64_t g_37;
    VECTOR(int16_t, 2) g_46;
    uint64_t **g_61;
    uint32_t *g_70;
    uint32_t **g_69;
    uint64_t g_79;
    VECTOR(int32_t, 2) g_92;
    VECTOR(uint8_t, 8) g_111;
    VECTOR(int8_t, 2) g_130;
    int32_t *g_134[2];
    int32_t **g_133;
    uint32_t g_154;
    uint32_t g_167;
    VECTOR(uint32_t, 2) g_193;
    VECTOR(uint8_t, 4) g_202;
    VECTOR(uint32_t, 8) g_254;
    VECTOR(uint32_t, 8) g_255;
    int64_t g_281;
    VECTOR(uint32_t, 16) g_290;
    VECTOR(uint32_t, 4) g_291;
    VECTOR(int32_t, 8) g_312;
    VECTOR(uint16_t, 2) g_333;
    VECTOR(uint32_t, 16) g_338;
    uint32_t *g_355;
    uint32_t **g_354;
    int32_t * volatile *g_380;
    int32_t * volatile * volatile *g_379;
    uint16_t g_391;
    volatile uint64_t **g_397;
    VECTOR(uint8_t, 16) g_445;
    VECTOR(uint8_t, 16) g_446;
    uint8_t g_451;
    volatile uint8_t g_510;
    volatile uint8_t * volatile g_509;
    volatile uint8_t * volatile *g_508[3];
    VECTOR(int32_t, 4) g_511;
    VECTOR(uint32_t, 8) g_532;
    uint8_t *g_551[9][8];
    uint8_t **g_550[1];
    VECTOR(uint8_t, 8) g_554;
    VECTOR(uint8_t, 4) g_563;
    VECTOR(uint8_t, 8) g_564;
    VECTOR(uint8_t, 4) g_565;
    VECTOR(uint8_t, 2) g_568;
    VECTOR(uint32_t, 16) g_582;
    VECTOR(int8_t, 8) g_611;
    int32_t g_613;
    VECTOR(int32_t, 16) g_624;
    VECTOR(uint32_t, 16) g_625;
    int8_t g_626;
    VECTOR(int64_t, 4) g_632;
    VECTOR(int64_t, 16) g_634;
    VECTOR(int64_t, 4) g_635;
    VECTOR(uint64_t, 8) g_678;
    VECTOR(int32_t, 8) g_701;
    int64_t g_707;
    VECTOR(int16_t, 16) g_713;
    VECTOR(int64_t, 8) g_726;
    VECTOR(int32_t, 16) g_728;
    VECTOR(int32_t, 2) g_729;
    VECTOR(int32_t, 4) g_732;
    VECTOR(int16_t, 4) g_745;
    VECTOR(int16_t, 4) g_756;
    VECTOR(int16_t, 16) g_757;
    VECTOR(int16_t, 8) g_758;
    VECTOR(int8_t, 16) g_760;
    VECTOR(int8_t, 4) g_762;
    VECTOR(int8_t, 2) g_763;
    VECTOR(int8_t, 2) g_764;
    VECTOR(int8_t, 16) g_772;
    VECTOR(int8_t, 16) g_774;
    VECTOR(int32_t, 4) g_783;
    VECTOR(uint16_t, 8) g_792;
    VECTOR(uint16_t, 4) g_793;
    VECTOR(int8_t, 4) g_802;
    int16_t *g_827;
    VECTOR(int16_t, 8) g_833;
    VECTOR(int8_t, 2) g_848;
    VECTOR(uint32_t, 16) g_878;
    VECTOR(uint32_t, 2) g_881;
    VECTOR(uint32_t, 16) g_883;
    VECTOR(uint32_t, 2) g_884;
    uint32_t g_887;
    VECTOR(int8_t, 8) g_888;
    VECTOR(uint8_t, 2) g_938;
    VECTOR(uint16_t, 16) g_996;
    VECTOR(uint16_t, 4) g_1006;
    VECTOR(uint16_t, 4) g_1007;
    VECTOR(uint16_t, 4) g_1008;
    VECTOR(int8_t, 8) g_1062;
    VECTOR(int8_t, 8) g_1063;
    VECTOR(int8_t, 4) g_1066;
    int64_t g_1075;
    VECTOR(int8_t, 8) g_1106;
    int64_t g_1110;
    int16_t g_1165;
    int32_t **g_1189;
    int64_t *g_1193[9];
    int64_t **g_1192[3][7];
    VECTOR(int16_t, 16) g_1215;
    VECTOR(int32_t, 2) g_1218;
    VECTOR(uint8_t, 8) g_1262;
    VECTOR(uint8_t, 2) g_1284;
    VECTOR(uint8_t, 2) g_1292;
    VECTOR(uint8_t, 8) g_1356;
    VECTOR(uint8_t, 8) g_1360;
    VECTOR(uint8_t, 4) g_1361;
    VECTOR(uint8_t, 2) g_1362;
    VECTOR(uint8_t, 16) g_1373;
    VECTOR(uint8_t, 2) g_1376;
    VECTOR(uint32_t, 2) g_1389;
    VECTOR(int32_t, 8) g_1417;
    VECTOR(int8_t, 8) g_1419;
    VECTOR(int8_t, 2) g_1433;
    VECTOR(int8_t, 4) g_1471;
    VECTOR(int8_t, 2) g_1472;
    VECTOR(int16_t, 16) g_1474;
    VECTOR(uint8_t, 4) g_1482;
    VECTOR(int8_t, 8) g_1486;
    int64_t *g_1502;
    int64_t **g_1501;
    int64_t **g_1508;
    VECTOR(uint64_t, 8) g_1522;
    uint32_t ***g_1539;
    uint8_t g_1540;
    VECTOR(uint16_t, 4) g_1630;
    VECTOR(uint16_t, 8) g_1631;
    VECTOR(uint64_t, 16) g_1666;
    VECTOR(int32_t, 2) g_1694;
    VECTOR(int8_t, 16) g_1697;
    VECTOR(int8_t, 16) g_1698;
    VECTOR(uint64_t, 4) g_1700;
    VECTOR(int16_t, 4) g_1703;
    VECTOR(uint32_t, 8) g_1711;
    VECTOR(int32_t, 8) g_1712;
    VECTOR(uint16_t, 4) g_1727;
    VECTOR(int8_t, 16) g_1745;
    volatile int32_t g_1768[5];
    volatile int32_t *g_1767;
    volatile int32_t * volatile *g_1766;
    volatile int32_t * volatile * volatile * volatile g_1765;
    volatile VECTOR(int8_t, 2) g_1794;
    VECTOR(uint16_t, 16) g_1839;
    int32_t * volatile g_1846;
    VECTOR(int8_t, 2) g_1852;
    int32_t * volatile g_1864;
    int32_t * volatile g_1867;
    int32_t * volatile g_1868;
    VECTOR(int64_t, 2) g_1891;
    VECTOR(uint8_t, 16) g_1893;
    uint64_t g_1934;
    volatile VECTOR(uint16_t, 16) g_1999;
    VECTOR(uint16_t, 2) g_2005;
    VECTOR(uint16_t, 4) g_2007;
    VECTOR(int64_t, 8) g_2040;
    uint16_t g_2110[4][5];
    volatile VECTOR(uint8_t, 16) g_2117;
    volatile VECTOR(int8_t, 2) g_2139;
    uint64_t g_2153;
    int32_t *g_2163;
    int32_t **g_2162;
    int32_t ***g_2161;
    volatile VECTOR(uint32_t, 8) g_2181;
    VECTOR(int8_t, 8) g_2184;
    VECTOR(uint64_t, 2) g_2202;
    uint64_t g_2220;
    volatile VECTOR(uint32_t, 2) g_2241;
    VECTOR(uint32_t, 2) g_2242;
    volatile VECTOR(uint32_t, 4) g_2245;
    uint32_t ***g_2261;
    VECTOR(int32_t, 16) g_2263;
    volatile int16_t g_2271;
    volatile int16_t *g_2270;
    volatile int16_t **g_2269;
    volatile int16_t ** volatile * volatile g_2268;
    VECTOR(int8_t, 8) g_2276;
    VECTOR(uint32_t, 16) g_2292;
    volatile VECTOR(int32_t, 4) g_2293;
    volatile VECTOR(int32_t, 16) g_2294;
    volatile uint8_t g_2300;
    volatile VECTOR(uint32_t, 4) g_2318;
    volatile VECTOR(uint32_t, 8) g_2323;
    VECTOR(uint32_t, 8) g_2324;
    volatile VECTOR(int64_t, 8) g_2337;
    volatile VECTOR(uint16_t, 16) g_2364;
    volatile VECTOR(uint16_t, 16) g_2370;
    VECTOR(int8_t, 2) g_2377;
    VECTOR(int8_t, 2) g_2379;
    volatile VECTOR(uint16_t, 8) g_2383;
    VECTOR(uint16_t, 2) g_2393;
    volatile VECTOR(uint64_t, 8) g_2429;
    volatile VECTOR(uint64_t, 2) g_2431;
    volatile VECTOR(uint64_t, 4) g_2437;
    VECTOR(int64_t, 2) g_2443;
    uint32_t ****g_2482;
    VECTOR(uint8_t, 4) g_2490;
    VECTOR(uint8_t, 8) g_2491;
    VECTOR(uint8_t, 16) g_2494;
    int32_t g_2497;
    VECTOR(uint16_t, 2) g_2538;
    volatile uint64_t * volatile *g_2546[8];
    volatile int8_t * volatile g_2561;
    volatile int8_t * volatile * volatile g_2560;
    volatile VECTOR(int32_t, 8) g_2563;
    volatile VECTOR(int32_t, 16) g_2564;
    VECTOR(int16_t, 8) g_2585;
    VECTOR(int32_t, 4) g_2599;
    volatile VECTOR(int8_t, 2) g_2638;
    VECTOR(uint16_t, 8) g_2646;
    int32_t g_2660;
    VECTOR(int32_t, 16) g_2680;
    VECTOR(int32_t, 4) g_2681;
    volatile VECTOR(int16_t, 4) g_2683;
    volatile VECTOR(int16_t, 16) g_2686;
    volatile VECTOR(int16_t, 8) g_2688;
    VECTOR(uint16_t, 8) g_2712;
    uint16_t * volatile g_2767[5][2][2];
    uint16_t * volatile *g_2766;
    VECTOR(int32_t, 8) g_2774;
    VECTOR(int32_t, 8) g_2775;
    volatile VECTOR(int32_t, 8) g_2777;
    VECTOR(int32_t, 4) g_2778;
    volatile VECTOR(uint64_t, 2) g_2794;
    VECTOR(uint64_t, 8) g_2799;
    VECTOR(uint64_t, 4) g_2804;
    VECTOR(int64_t, 16) g_2808;
    uint32_t g_2826;
    int64_t g_2846;
    VECTOR(int16_t, 4) g_2858;
    volatile VECTOR(int16_t, 8) g_2859;
    volatile VECTOR(int16_t, 8) g_2860;
    VECTOR(int16_t, 2) g_2862;
    VECTOR(uint16_t, 4) g_2866;
    VECTOR(int8_t, 2) g_2869;
    uint64_t *g_2871[8][3];
    uint64_t **g_2870[4][1][7];
    volatile VECTOR(int8_t, 16) g_2883;
    volatile VECTOR(int8_t, 2) g_2884;
    uint32_t * volatile *g_2886[4][8][2];
    uint32_t * volatile * volatile *g_2885[1][5];
    VECTOR(int8_t, 8) g_2889;
    volatile VECTOR(int8_t, 4) g_2890;
    volatile VECTOR(uint8_t, 4) g_2894;
    VECTOR(uint8_t, 4) g_2905;
    VECTOR(uint8_t, 4) g_2912;
    VECTOR(int8_t, 16) g_2940;
    volatile VECTOR(int8_t, 8) g_2941;
    VECTOR(int8_t, 2) g_2943;
    VECTOR(int8_t, 4) g_2944;
    VECTOR(int8_t, 8) g_2945;
    VECTOR(int8_t, 4) g_2946;
    VECTOR(uint8_t, 4) g_2959;
    uint8_t g_2975;
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
uint64_t  func_1(struct S0 * p_2976);
VECTOR(int16_t, 2)  func_16(int32_t * p_17, int16_t  p_18, struct S0 * p_2976);
int32_t * func_24(uint32_t  p_25, int32_t * p_26, struct S0 * p_2976);
int32_t * func_27(int32_t ** p_28, uint64_t  p_29, uint32_t  p_30, uint32_t * p_31, struct S0 * p_2976);
int32_t ** func_32(uint64_t  p_33, int64_t  p_34, uint32_t * p_35, struct S0 * p_2976);
uint32_t * func_38(int64_t  p_39, uint32_t * p_40, uint8_t  p_41, int32_t ** p_42, int64_t  p_43, struct S0 * p_2976);
int64_t  func_51(uint64_t  p_52, int8_t  p_53, struct S0 * p_2976);
uint32_t ** func_62(uint32_t * p_63, struct S0 * p_2976);
uint32_t * func_64(uint32_t ** p_65, int64_t  p_66, uint64_t ** p_67, uint32_t ** p_68, struct S0 * p_2976);
uint64_t ** func_73(int64_t  p_74, uint64_t * p_75, struct S0 * p_2976);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2976->g_2 p_2976->g_8 p_2976->g_6
 * writes: p_2976->g_2 p_2976->g_8
 */
uint64_t  func_1(struct S0 * p_2976)
{ /* block id: 4 */
    int32_t *l_19 = &p_2976->g_6;
    uint32_t *l_1756[2][2];
    int32_t l_2533 = (-6L);
    VECTOR(int16_t, 2) l_2589 = (VECTOR(int16_t, 2))(1L, 0x7E70L);
    uint64_t l_2600 = 18446744073709551615UL;
    VECTOR(int16_t, 2) l_2627 = (VECTOR(int16_t, 2))((-4L), (-8L));
    int64_t l_2629 = 1L;
    VECTOR(int16_t, 2) l_2684 = (VECTOR(int16_t, 2))(0x361BL, (-1L));
    VECTOR(uint32_t, 16) l_2691 = (VECTOR(uint32_t, 16))(0x8C587B90L, (VECTOR(uint32_t, 4))(0x8C587B90L, (VECTOR(uint32_t, 2))(0x8C587B90L, 0xDE7E4FAFL), 0xDE7E4FAFL), 0xDE7E4FAFL, 0x8C587B90L, 0xDE7E4FAFL, (VECTOR(uint32_t, 2))(0x8C587B90L, 0xDE7E4FAFL), (VECTOR(uint32_t, 2))(0x8C587B90L, 0xDE7E4FAFL), 0x8C587B90L, 0xDE7E4FAFL, 0x8C587B90L, 0xDE7E4FAFL);
    int32_t l_2732 = (-9L);
    int8_t l_2733 = (-3L);
    VECTOR(int16_t, 8) l_2742 = (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L));
    uint16_t * volatile *l_2768 = (void*)0;
    VECTOR(int32_t, 16) l_2772 = (VECTOR(int32_t, 16))((-8L), (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), 0x6144927EL), 0x6144927EL), 0x6144927EL, (-8L), 0x6144927EL, (VECTOR(int32_t, 2))((-8L), 0x6144927EL), (VECTOR(int32_t, 2))((-8L), 0x6144927EL), (-8L), 0x6144927EL, (-8L), 0x6144927EL);
    VECTOR(int32_t, 16) l_2773 = (VECTOR(int32_t, 16))(0x16EADECEL, (VECTOR(int32_t, 4))(0x16EADECEL, (VECTOR(int32_t, 2))(0x16EADECEL, 0x674F4833L), 0x674F4833L), 0x674F4833L, 0x16EADECEL, 0x674F4833L, (VECTOR(int32_t, 2))(0x16EADECEL, 0x674F4833L), (VECTOR(int32_t, 2))(0x16EADECEL, 0x674F4833L), 0x16EADECEL, 0x674F4833L, 0x16EADECEL, 0x674F4833L);
    VECTOR(int16_t, 4) l_2782 = (VECTOR(int16_t, 4))(0x28D9L, (VECTOR(int16_t, 2))(0x28D9L, (-9L)), (-9L));
    VECTOR(int8_t, 16) l_2783 = (VECTOR(int8_t, 16))(0x30L, (VECTOR(int8_t, 4))(0x30L, (VECTOR(int8_t, 2))(0x30L, (-8L)), (-8L)), (-8L), 0x30L, (-8L), (VECTOR(int8_t, 2))(0x30L, (-8L)), (VECTOR(int8_t, 2))(0x30L, (-8L)), 0x30L, (-8L), 0x30L, (-8L));
    VECTOR(uint64_t, 4) l_2807 = (VECTOR(uint64_t, 4))(0x7D975738A12E47F2L, (VECTOR(uint64_t, 2))(0x7D975738A12E47F2L, 0UL), 0UL);
    int32_t **l_2829[4][5] = {{&p_2976->g_2163,&p_2976->g_2163,&p_2976->g_2163,&p_2976->g_2163,&p_2976->g_2163},{&p_2976->g_2163,&p_2976->g_2163,&p_2976->g_2163,&p_2976->g_2163,&p_2976->g_2163},{&p_2976->g_2163,&p_2976->g_2163,&p_2976->g_2163,&p_2976->g_2163,&p_2976->g_2163},{&p_2976->g_2163,&p_2976->g_2163,&p_2976->g_2163,&p_2976->g_2163,&p_2976->g_2163}};
    uint16_t l_2848 = 65535UL;
    int16_t l_2872 = (-1L);
    int64_t l_2932 = 0x30965189E30714C4L;
    VECTOR(int32_t, 2) l_2938 = (VECTOR(int32_t, 2))(1L, (-6L));
    VECTOR(int8_t, 8) l_2942 = (VECTOR(int8_t, 8))(2L, (VECTOR(int8_t, 4))(2L, (VECTOR(int8_t, 2))(2L, 0x2AL), 0x2AL), 0x2AL, 2L, 0x2AL);
    int32_t *l_2968 = (void*)0;
    int32_t **l_2967 = &l_2968;
    int i, j;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 2; j++)
            l_1756[i][j] = (void*)0;
    }
    for (p_2976->g_2 = 0; (p_2976->g_2 <= 29); p_2976->g_2 = safe_add_func_int8_t_s_s(p_2976->g_2, 2))
    { /* block id: 7 */
        int32_t *l_5 = &p_2976->g_6;
        int32_t *l_7[5][10][1] = {{{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2}},{{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2}},{{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2}},{{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2}},{{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2},{&p_2976->g_2}}};
        VECTOR(int16_t, 16) l_14 = (VECTOR(int16_t, 16))(0x7145L, (VECTOR(int16_t, 4))(0x7145L, (VECTOR(int16_t, 2))(0x7145L, 0x13B2L), 0x13B2L), 0x13B2L, 0x7145L, 0x13B2L, (VECTOR(int16_t, 2))(0x7145L, 0x13B2L), (VECTOR(int16_t, 2))(0x7145L, 0x13B2L), 0x7145L, 0x13B2L, 0x7145L, 0x13B2L);
        uint32_t *l_20 = (void*)0;
        uint32_t *l_21 = &p_2976->g_22;
        int32_t **l_23 = &l_7[0][6][0];
        uint64_t *l_36 = &p_2976->g_37;
        uint32_t l_54 = 0xE149F7FAL;
        uint32_t l_2557[6];
        VECTOR(uint64_t, 2) l_2582 = (VECTOR(uint64_t, 2))(0x8A47F66001F954E1L, 0xBCA844C36C1282B1L);
        VECTOR(int16_t, 4) l_2588 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), (-9L)), (-9L));
        VECTOR(int16_t, 2) l_2590 = (VECTOR(int16_t, 2))(0L, 0x4945L);
        VECTOR(int16_t, 8) l_2591 = (VECTOR(int16_t, 8))(0x6D5DL, (VECTOR(int16_t, 4))(0x6D5DL, (VECTOR(int16_t, 2))(0x6D5DL, 0x54A4L), 0x54A4L), 0x54A4L, 0x6D5DL, 0x54A4L);
        uint8_t **l_2597 = &p_2976->g_551[2][0];
        VECTOR(int16_t, 2) l_2687 = (VECTOR(int16_t, 2))(0x410FL, 0x1F3CL);
        int32_t l_2717[7][5] = {{4L,0x7B6D5196L,4L,4L,0x7B6D5196L},{4L,0x7B6D5196L,4L,4L,0x7B6D5196L},{4L,0x7B6D5196L,4L,4L,0x7B6D5196L},{4L,0x7B6D5196L,4L,4L,0x7B6D5196L},{4L,0x7B6D5196L,4L,4L,0x7B6D5196L},{4L,0x7B6D5196L,4L,4L,0x7B6D5196L},{4L,0x7B6D5196L,4L,4L,0x7B6D5196L}};
        int64_t l_2728 = 1L;
        int16_t ***l_2750 = (void*)0;
        int64_t **l_2822 = &p_2976->g_1193[7];
        VECTOR(int64_t, 8) l_2836 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0L), 0L), 0L, 1L, 0L);
        int16_t l_2877 = (-9L);
        uint32_t l_2878 = 4294967295UL;
        VECTOR(int8_t, 4) l_2888 = (VECTOR(int8_t, 4))(0x52L, (VECTOR(int8_t, 2))(0x52L, 0x1DL), 0x1DL);
        VECTOR(uint8_t, 2) l_2904 = (VECTOR(uint8_t, 2))(0xBEL, 2UL);
        VECTOR(uint8_t, 4) l_2921 = (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0UL), 0UL);
        VECTOR(uint32_t, 16) l_2937 = (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 4294967288UL), 4294967288UL), 4294967288UL, 0UL, 4294967288UL, (VECTOR(uint32_t, 2))(0UL, 4294967288UL), (VECTOR(uint32_t, 2))(0UL, 4294967288UL), 0UL, 4294967288UL, 0UL, 4294967288UL);
        VECTOR(int8_t, 4) l_2947 = (VECTOR(int8_t, 4))(0x4EL, (VECTOR(int8_t, 2))(0x4EL, 3L), 3L);
        int i, j, k;
        for (i = 0; i < 6; i++)
            l_2557[i] = 1UL;
        --p_2976->g_8;
    }
    return (*l_19);
}


/* ------------------------------------------ */
/* 
 * reads : p_2976->g_2497
 * writes: p_2976->g_2497
 */
VECTOR(int16_t, 2)  func_16(int32_t * p_17, int16_t  p_18, struct S0 * p_2976)
{ /* block id: 763 */
    int8_t l_2522 = 1L;
    int32_t l_2523 = (-3L);
    int32_t l_2525 = 0L;
    int32_t l_2526 = 1L;
    VECTOR(int32_t, 4) l_2527 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x1ED7CCF5L), 0x1ED7CCF5L);
    int16_t l_2528 = 0x320AL;
    VECTOR(int16_t, 16) l_2532 = (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 2L), 2L), 2L, 0L, 2L, (VECTOR(int16_t, 2))(0L, 2L), (VECTOR(int16_t, 2))(0L, 2L), 0L, 2L, 0L, 2L);
    int i;
    for (p_2976->g_2497 = (-16); (p_2976->g_2497 == (-8)); ++p_2976->g_2497)
    { /* block id: 766 */
        int32_t *l_2516 = (void*)0;
        int32_t *l_2517 = (void*)0;
        int32_t *l_2518 = (void*)0;
        int32_t *l_2519 = (void*)0;
        int32_t *l_2520 = (void*)0;
        int32_t *l_2521[4] = {&p_2976->g_6,&p_2976->g_6,&p_2976->g_6,&p_2976->g_6};
        int64_t l_2524 = 0x058001C794274E7CL;
        uint32_t l_2529 = 4UL;
        int i;
        l_2529--;
    }
    return l_2532.s53;
}


/* ------------------------------------------ */
/* 
 * reads : p_2976->g_379 p_2976->g_380 p_2976->g_1106 p_2976->g_134 p_2976->g_69 p_2976->g_79 p_2976->g_354 p_2976->g_355 p_2976->g_22 p_2976->g_1006 p_2976->g_70 p_2976->g_509 p_2976->g_510 p_2976->g_554 p_2976->g_1765 p_2976->g_938 p_2976->g_1433 p_2976->g_15 p_2976->g_290 p_2976->g_1486 p_2976->g_133
 * writes: p_2976->g_887 p_2976->g_6 p_2976->g_134 p_2976->g_1540 p_2976->g_46 p_2976->g_1110 p_2976->g_70 p_2976->g_79 p_2976->g_626 p_2976->g_22 p_2976->g_1006 p_2976->g_167 p_2976->g_996 p_2976->g_1433 p_2976->g_793 p_2976->g_707
 */
int32_t * func_24(uint32_t  p_25, int32_t * p_26, struct S0 * p_2976)
{ /* block id: 496 */
    int8_t l_1827 = 0x31L;
    int32_t l_1847 = (-10L);
    VECTOR(int32_t, 8) l_1878 = (VECTOR(int32_t, 8))(0x098C7885L, (VECTOR(int32_t, 4))(0x098C7885L, (VECTOR(int32_t, 2))(0x098C7885L, 7L), 7L), 7L, 0x098C7885L, 7L);
    VECTOR(int64_t, 16) l_1892 = (VECTOR(int64_t, 16))(0x37B58B6E548B2BD5L, (VECTOR(int64_t, 4))(0x37B58B6E548B2BD5L, (VECTOR(int64_t, 2))(0x37B58B6E548B2BD5L, 0x3D1D20C5E9B8A3B8L), 0x3D1D20C5E9B8A3B8L), 0x3D1D20C5E9B8A3B8L, 0x37B58B6E548B2BD5L, 0x3D1D20C5E9B8A3B8L, (VECTOR(int64_t, 2))(0x37B58B6E548B2BD5L, 0x3D1D20C5E9B8A3B8L), (VECTOR(int64_t, 2))(0x37B58B6E548B2BD5L, 0x3D1D20C5E9B8A3B8L), 0x37B58B6E548B2BD5L, 0x3D1D20C5E9B8A3B8L, 0x37B58B6E548B2BD5L, 0x3D1D20C5E9B8A3B8L);
    int32_t **l_1896[9][8][2] = {{{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]}},{{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]}},{{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]}},{{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]}},{{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]}},{{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]}},{{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]}},{{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]}},{{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]},{&p_2976->g_134[1],&p_2976->g_134[0]}}};
    VECTOR(int16_t, 8) l_1920 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x2150L), 0x2150L), 0x2150L, (-1L), 0x2150L);
    uint32_t l_1961 = 4294967295UL;
    VECTOR(int32_t, 16) l_1980 = (VECTOR(int32_t, 16))(0x78D3EA68L, (VECTOR(int32_t, 4))(0x78D3EA68L, (VECTOR(int32_t, 2))(0x78D3EA68L, 1L), 1L), 1L, 0x78D3EA68L, 1L, (VECTOR(int32_t, 2))(0x78D3EA68L, 1L), (VECTOR(int32_t, 2))(0x78D3EA68L, 1L), 0x78D3EA68L, 1L, 0x78D3EA68L, 1L);
    VECTOR(int32_t, 4) l_1992 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-10L)), (-10L));
    int32_t *l_2031 = &p_2976->g_613;
    int32_t **l_2030 = &l_2031;
    VECTOR(uint8_t, 2) l_2046 = (VECTOR(uint8_t, 2))(0xC6L, 1UL);
    int32_t ***l_2077 = &l_2030;
    VECTOR(int32_t, 8) l_2089 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L);
    VECTOR(int16_t, 4) l_2092 = (VECTOR(int16_t, 4))(0x655AL, (VECTOR(int16_t, 2))(0x655AL, (-1L)), (-1L));
    uint64_t *l_2109 = (void*)0;
    uint16_t *l_2116 = (void*)0;
    uint32_t ***l_2147[6] = {&p_2976->g_69,&p_2976->g_69,&p_2976->g_69,&p_2976->g_69,&p_2976->g_69,&p_2976->g_69};
    VECTOR(int8_t, 8) l_2272 = (VECTOR(int8_t, 8))((-2L), (VECTOR(int8_t, 4))((-2L), (VECTOR(int8_t, 2))((-2L), (-9L)), (-9L)), (-9L), (-2L), (-9L));
    VECTOR(int32_t, 4) l_2295 = (VECTOR(int32_t, 4))((-2L), (VECTOR(int32_t, 2))((-2L), 0x106EC04CL), 0x106EC04CL);
    VECTOR(uint16_t, 16) l_2317 = (VECTOR(uint16_t, 16))(65528UL, (VECTOR(uint16_t, 4))(65528UL, (VECTOR(uint16_t, 2))(65528UL, 1UL), 1UL), 1UL, 65528UL, 1UL, (VECTOR(uint16_t, 2))(65528UL, 1UL), (VECTOR(uint16_t, 2))(65528UL, 1UL), 65528UL, 1UL, 65528UL, 1UL);
    VECTOR(uint32_t, 2) l_2321 = (VECTOR(uint32_t, 2))(0xC31865AAL, 0xC5D8096BL);
    VECTOR(uint32_t, 2) l_2322 = (VECTOR(uint32_t, 2))(9UL, 4UL);
    uint8_t l_2374 = 0xBAL;
    VECTOR(int8_t, 8) l_2400 = (VECTOR(int8_t, 8))(0x5BL, (VECTOR(int8_t, 4))(0x5BL, (VECTOR(int8_t, 2))(0x5BL, (-1L)), (-1L)), (-1L), 0x5BL, (-1L));
    VECTOR(int8_t, 2) l_2401 = (VECTOR(int8_t, 2))(0x77L, 0x5FL);
    uint16_t l_2416 = 0x9473L;
    uint16_t l_2460 = 0xA72CL;
    uint64_t *l_2462 = (void*)0;
    VECTOR(uint8_t, 8) l_2487 = (VECTOR(uint8_t, 8))(0x8FL, (VECTOR(uint8_t, 4))(0x8FL, (VECTOR(uint8_t, 2))(0x8FL, 0x5CL), 0x5CL), 0x5CL, 0x8FL, 0x5CL);
    int16_t **l_2505 = &p_2976->g_827;
    int16_t ***l_2504 = &l_2505;
    int64_t l_2508[7] = {0x0041555A7C3783AEL,0x0041555A7C3783AEL,0x0041555A7C3783AEL,0x0041555A7C3783AEL,0x0041555A7C3783AEL,0x0041555A7C3783AEL,0x0041555A7C3783AEL};
    uint32_t l_2509[2];
    int32_t l_2512 = 0x53623BF5L;
    int32_t l_2513[5] = {1L,1L,1L,1L,1L};
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_2509[i] = 0xC46A9719L;
    if (l_1827)
    { /* block id: 497 */
        int32_t *l_1834 = (void*)0;
        int32_t l_1866[5];
        VECTOR(int32_t, 2) l_1981 = (VECTOR(int32_t, 2))(0x4D4792B0L, 0x3AB31162L);
        VECTOR(uint16_t, 16) l_2006 = (VECTOR(uint16_t, 16))(65532UL, (VECTOR(uint16_t, 4))(65532UL, (VECTOR(uint16_t, 2))(65532UL, 0xBB79L), 0xBB79L), 0xBB79L, 65532UL, 0xBB79L, (VECTOR(uint16_t, 2))(65532UL, 0xBB79L), (VECTOR(uint16_t, 2))(65532UL, 0xBB79L), 65532UL, 0xBB79L, 65532UL, 0xBB79L);
        VECTOR(uint16_t, 2) l_2008 = (VECTOR(uint16_t, 2))(0x1D64L, 0x728AL);
        uint8_t l_2012 = 0x10L;
        VECTOR(int64_t, 8) l_2065 = (VECTOR(int64_t, 8))(0x1ED3C673B87A09E8L, (VECTOR(int64_t, 4))(0x1ED3C673B87A09E8L, (VECTOR(int64_t, 2))(0x1ED3C673B87A09E8L, 0L), 0L), 0L, 0x1ED3C673B87A09E8L, 0L);
        uint64_t *l_2108 = (void*)0;
        uint64_t **l_2107[5] = {&l_2108,&l_2108,&l_2108,&l_2108,&l_2108};
        int16_t l_2111 = (-1L);
        uint32_t l_2112 = 0x1B4909E0L;
        int32_t l_2142 = 0x6DC8AA4DL;
        uint32_t l_2180 = 0x1652421CL;
        int16_t ***l_2193 = (void*)0;
        VECTOR(int16_t, 4) l_2224 = (VECTOR(int16_t, 4))(0x32E2L, (VECTOR(int16_t, 2))(0x32E2L, (-1L)), (-1L));
        VECTOR(int32_t, 4) l_2225 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0L), 0L);
        VECTOR(uint32_t, 2) l_2236 = (VECTOR(uint32_t, 2))(0UL, 0xDF1EE47FL);
        int64_t l_2239 = 5L;
        VECTOR(uint32_t, 16) l_2244 = (VECTOR(uint32_t, 16))(0x12788118L, (VECTOR(uint32_t, 4))(0x12788118L, (VECTOR(uint32_t, 2))(0x12788118L, 0x071ED7FCL), 0x071ED7FCL), 0x071ED7FCL, 0x12788118L, 0x071ED7FCL, (VECTOR(uint32_t, 2))(0x12788118L, 0x071ED7FCL), (VECTOR(uint32_t, 2))(0x12788118L, 0x071ED7FCL), 0x12788118L, 0x071ED7FCL, 0x12788118L, 0x071ED7FCL);
        VECTOR(uint32_t, 4) l_2248 = (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0UL), 0UL);
        uint64_t l_2257 = 18446744073709551614UL;
        VECTOR(int32_t, 4) l_2264 = (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 0x10DCD83CL), 0x10DCD83CL);
        VECTOR(int8_t, 2) l_2274 = (VECTOR(int8_t, 2))((-1L), 1L);
        VECTOR(int32_t, 8) l_2296 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x61ABA3A0L), 0x61ABA3A0L), 0x61ABA3A0L, 1L, 0x61ABA3A0L);
        int32_t ***l_2297 = &p_2976->g_1189;
        VECTOR(int64_t, 8) l_2335 = (VECTOR(int64_t, 8))(0x025E3C2F1EF87544L, (VECTOR(int64_t, 4))(0x025E3C2F1EF87544L, (VECTOR(int64_t, 2))(0x025E3C2F1EF87544L, (-5L)), (-5L)), (-5L), 0x025E3C2F1EF87544L, (-5L));
        VECTOR(int64_t, 8) l_2338 = (VECTOR(int64_t, 8))(0x17514AC5807B77BEL, (VECTOR(int64_t, 4))(0x17514AC5807B77BEL, (VECTOR(int64_t, 2))(0x17514AC5807B77BEL, 0x441DA0F66708EC2DL), 0x441DA0F66708EC2DL), 0x441DA0F66708EC2DL, 0x17514AC5807B77BEL, 0x441DA0F66708EC2DL);
        VECTOR(uint16_t, 8) l_2365 = (VECTOR(uint16_t, 8))(65534UL, (VECTOR(uint16_t, 4))(65534UL, (VECTOR(uint16_t, 2))(65534UL, 0xA04CL), 0xA04CL), 0xA04CL, 65534UL, 0xA04CL);
        VECTOR(uint64_t, 2) l_2425 = (VECTOR(uint64_t, 2))(18446744073709551608UL, 18446744073709551615UL);
        VECTOR(uint64_t, 8) l_2436 = (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 1UL), 1UL), 1UL, 1UL, 1UL);
        uint64_t *l_2501[9][9][3] = {{{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153}},{{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153}},{{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153}},{{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153}},{{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153}},{{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153}},{{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153}},{{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153}},{{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153}}};
        uint64_t **l_2500 = &l_2501[4][8][1];
        int32_t ***l_2502[7] = {&l_2030,&l_2030,&l_2030,&l_2030,&l_2030,&l_2030,&l_2030};
        uint32_t l_2503[1];
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_1866[i] = (-1L);
        for (i = 0; i < 1; i++)
            l_2503[i] = 0UL;
        for (p_2976->g_887 = 24; (p_2976->g_887 >= 35); ++p_2976->g_887)
        { /* block id: 500 */
            uint8_t l_1865 = 254UL;
            int32_t l_1890 = 0x3592F900L;
            int32_t l_1945 = (-8L);
            int32_t l_1946 = 0x25AA9BEFL;
            int32_t l_1948 = 0L;
            int32_t l_1949 = 0L;
            int32_t l_1950 = 1L;
            int32_t l_1952 = 0x2D90C5AAL;
            int32_t l_1953 = 6L;
            int32_t l_1958 = (-3L);
            int32_t l_1960 = (-6L);
            VECTOR(uint16_t, 16) l_2002 = (VECTOR(uint16_t, 16))(6UL, (VECTOR(uint16_t, 4))(6UL, (VECTOR(uint16_t, 2))(6UL, 65535UL), 65535UL), 65535UL, 6UL, 65535UL, (VECTOR(uint16_t, 2))(6UL, 65535UL), (VECTOR(uint16_t, 2))(6UL, 65535UL), 6UL, 65535UL, 6UL, 65535UL);
            int64_t l_2011 = 4L;
            VECTOR(int64_t, 8) l_2064 = (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x4387DD6793A9709CL), 0x4387DD6793A9709CL), 0x4387DD6793A9709CL, 0L, 0x4387DD6793A9709CL);
            VECTOR(int64_t, 16) l_2066 = (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L), (VECTOR(int64_t, 2))((-1L), (-1L)), (VECTOR(int64_t, 2))((-1L), (-1L)), (-1L), (-1L), (-1L), (-1L));
            VECTOR(int64_t, 4) l_2067 = (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x1C199E411FE9A8DAL), 0x1C199E411FE9A8DAL);
            int8_t *l_2072 = (void*)0;
            int32_t ***l_2079 = &l_2030;
            int8_t l_2091 = 1L;
            int i;
            for (l_1827 = (-9); (l_1827 != 21); l_1827 = safe_add_func_uint32_t_u_u(l_1827, 9))
            { /* block id: 503 */
                int32_t l_1869 = (-1L);
                for (p_2976->g_6 = 22; (p_2976->g_6 < (-4)); p_2976->g_6 = safe_sub_func_int16_t_s_s(p_2976->g_6, 7))
                { /* block id: 506 */
                    return p_26;
                }
                (**p_2976->g_379) = l_1834;
                for (p_2976->g_1540 = (-13); (p_2976->g_1540 < 60); p_2976->g_1540 = safe_add_func_int64_t_s_s(p_2976->g_1540, 7))
                { /* block id: 512 */
                    int16_t *l_1844 = (void*)0;
                    int16_t *l_1845[5];
                    uint64_t l_1854 = 2UL;
                    int i;
                    for (i = 0; i < 5; i++)
                        l_1845[i] = (void*)0;
                    l_1847 = (safe_lshift_func_uint16_t_u_s(((VECTOR(uint16_t, 2))(p_2976->g_1839.s6a)).lo, (p_2976->g_46.x = (safe_sub_func_int16_t_s_s(0L, (safe_add_func_int64_t_s_s(l_1827, (p_2976->g_1106.s0 != 0x5D3FL))))))));
                    for (p_2976->g_1110 = 0; (p_2976->g_1110 >= 9); p_2976->g_1110 = safe_add_func_int16_t_s_s(p_2976->g_1110, 3))
                    { /* block id: 517 */
                        int64_t l_1853 = (-7L);
                        int32_t l_1861 = 0x58C35D4DL;
                        l_1861 |= (safe_lshift_func_int8_t_s_u(((0x4ABC9E68628CF86AL ^ 3L) , ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))(p_2976->g_1852.yyyyyxyyyyxyyyyx)).s74 >= ((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 8))(l_1853, (((p_25 , 6UL) > (((~l_1853) > ((l_1854 <= (safe_add_func_uint64_t_u_u(p_25, ((safe_sub_func_uint32_t_u_u((((safe_lshift_func_int8_t_s_s(p_25, 0)) >= 0x30963AC7L) < p_25), l_1854)) ^ GROUP_DIVERGE(0, 1))))) & 1UL)) < p_25)) > 0x5ACCD950L), 1L, ((VECTOR(int8_t, 2))(1L)), 0x0CL, 1L, 0x25L)).s77, ((VECTOR(int8_t, 2))(1L)))))))), (-1L), (-5L))).zzwxzywwxwwxxyyw && ((VECTOR(int8_t, 16))((-1L)))))).sc), 4));
                        (**p_2976->g_379) = (*p_2976->g_380);
                    }
                    for (p_25 = 20; (p_25 <= 25); p_25 = safe_add_func_int32_t_s_s(p_25, 6))
                    { /* block id: 523 */
                        l_1865 &= (p_26 != p_26);
                    }
                }
                l_1869 ^= (l_1866[0] = l_1827);
            }
            for (l_1827 = (-19); (l_1827 == (-7)); l_1827++)
            { /* block id: 532 */
                int16_t *l_1887 = (void*)0;
                int16_t *l_1888 = (void*)0;
                int16_t *l_1889 = &p_2976->g_1165;
                int64_t l_1897 = 8L;
                int32_t l_1898 = 0x133D4CAEL;
                int64_t *l_1899 = &p_2976->g_707;
                uint16_t *l_1900 = &p_2976->g_391;
                int8_t *l_1901 = (void*)0;
                int8_t *l_1902 = (void*)0;
                int8_t *l_1903 = (void*)0;
                int8_t *l_1904 = (void*)0;
                int8_t *l_1905 = (void*)0;
                int8_t *l_1906 = &p_2976->g_626;
                int32_t l_1907 = 0x6861F538L;
                VECTOR(uint16_t, 16) l_1913 = (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0xAFC5L), 0xAFC5L), 0xAFC5L, 0UL, 0xAFC5L, (VECTOR(uint16_t, 2))(0UL, 0xAFC5L), (VECTOR(uint16_t, 2))(0UL, 0xAFC5L), 0UL, 0xAFC5L, 0UL, 0xAFC5L);
                int32_t l_1931 = 0x08D99BE6L;
                int32_t l_1935 = 0x0FE013C7L;
                int16_t l_1936 = 0x5AC6L;
                int32_t l_1955 = 0x0B668376L;
                int32_t l_1957 = 0x289F440BL;
                int32_t l_1959 = 0x1064E754L;
                int i;
                if ((l_1847 , (l_1907 ^= ((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 4))(0x48E448A9L, (safe_div_func_uint32_t_u_u((p_25 ^ (-1L)), ((**p_2976->g_354) = (safe_sub_func_int8_t_s_s((safe_add_func_int32_t_s_s(((VECTOR(int32_t, 2))(l_1878.s43)).even, (~(safe_div_func_int32_t_s_s(((safe_mod_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u((((VECTOR(uint16_t, 8))((-((VECTOR(uint16_t, 4))((safe_rshift_func_int8_t_s_u(((VECTOR(int8_t, 4))(rotate(((VECTOR(int8_t, 16))(((*l_1906) ^= ((l_1890 = (((*l_1889) ^= (l_1865 < (((void*)0 != &p_2976->g_626) == FAKE_DIVERGE(p_2976->global_1_offset, get_global_id(1), 10)))) <= 65532UL)) & ((*l_1900) = (((VECTOR(int64_t, 8))(min(((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 2))(p_2976->g_1891.yy)), ((VECTOR(int64_t, 8))(l_1892.sf95ebd23)).s41))).xyyyxyyy, (int64_t)((*l_1899) = (((VECTOR(uint8_t, 16))(1UL, (GROUP_DIVERGE(1, 1) != l_1892.sa), 1UL, ((VECTOR(uint8_t, 2))(8UL, 251UL)), 0UL, ((VECTOR(uint8_t, 2))(sub_sat(((VECTOR(uint8_t, 8))(p_2976->g_1893.s94362b8b)).s47, ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))(abs(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 8))(0x52L, 1L, ((!(((l_1897 = (l_1896[5][1][0] == (*p_2976->g_379))) , p_2976->g_764.x) == 0x09L)) <= l_1898), ((VECTOR(int8_t, 2))(0x10L)), 0x68L, 0x29L, 1L)).s2465215573365644, ((VECTOR(int8_t, 16))(0x5FL))))).s39 ^ ((VECTOR(int8_t, 2))(1L)))))))).yxyxxyxy + ((VECTOR(uint8_t, 8))(0xD3L))))).s72))), ((VECTOR(uint8_t, 4))(0xD8L)), ((VECTOR(uint8_t, 2))(255UL)), 0xB7L, 1UL)).s1 ^ p_2976->g_1794.x))))).s5 , 6UL)))), 0x42L, ((VECTOR(int8_t, 2))((-3L))), ((VECTOR(int8_t, 4))((-1L))), 0x61L, 0x3CL, (-6L), 0x34L, 0L, ((VECTOR(int8_t, 2))(0x18L)), 0L)).s614b, ((VECTOR(int8_t, 4))(0x3DL))))).x, l_1898)), p_25, 65535UL, 0x84EAL)).yxxyxzyw))).s1 & 0L), 7)), p_2976->g_1008.w)) < 0x79L), (*p_2976->g_355)))))), p_25))))), 0x61E04881L, 0x6F9B27EFL)).hi, (int32_t)0x77372EB7L))), l_1866[2], 0L, (-1L), ((VECTOR(int32_t, 2))((-7L))), 1L)).s1223027231202560 <= ((VECTOR(int32_t, 16))(7L))))), ((VECTOR(int32_t, 16))((-9L)))))).odd))).s1261173044452102, (int32_t)p_25))).s4)))
                { /* block id: 541 */
                    uint64_t *l_1910 = &p_2976->g_79;
                    int32_t l_1937 = 0x438F532EL;
                    l_1937 = (((*p_2976->g_69) = &p_25) != (((safe_lshift_func_int8_t_s_s(((*l_1906) = (((*l_1910) = 18446744073709551615UL) && (safe_add_func_int16_t_s_s((GROUP_DIVERGE(1, 1) != l_1898), p_25)))), 2)) , (((((**p_2976->g_354) ^= ((~((VECTOR(uint16_t, 8))(l_1913.s79be281f)).s3) >= (((safe_div_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u(((l_1907 |= ((*l_1910) ^= (p_25 , (safe_sub_func_int64_t_s_s((((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(0L, 1L)), ((((!l_1920.s5) && ((safe_mul_func_uint8_t_u_u(((safe_sub_func_uint16_t_u_u((((safe_lshift_func_uint8_t_u_s((safe_sub_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((l_1931 <= (safe_sub_func_int16_t_s_s((p_2976->g_46.x = (p_25 , ((*l_1889) = l_1890))), p_2976->g_511.y))), p_2976->g_1934)), l_1890)), 4)) , p_25) > p_25), p_25)) , l_1865), p_2976->g_1215.sb)) || 9UL)) , l_1898) >= p_2976->g_333.x), 5L, p_25, l_1935, 1L, 0x59D9L)).s4 == p_25), p_25))))) ^ p_25), l_1865)), p_25)) , l_1936) && l_1890))) | FAKE_DIVERGE(p_2976->group_2_offset, get_group_id(2), 10)) < (-1L)) >= p_25)) , &p_25));
                }
                else
                { /* block id: 551 */
                    uint64_t l_1943 = 0x1226EF1429AA2203L;
                    int32_t l_1944 = 0x487E8395L;
                    int32_t l_1947 = (-4L);
                    int32_t l_1951[1][8];
                    int i, j;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 8; j++)
                            l_1951[i][j] = 0x781C230AL;
                    }
                    for (p_2976->g_79 = (-12); (p_2976->g_79 != 32); p_2976->g_79 = safe_add_func_int8_t_s_s(p_2976->g_79, 4))
                    { /* block id: 554 */
                        int32_t l_1942 = 1L;
                        int32_t l_1954 = 0x1B7216F8L;
                        VECTOR(int32_t, 2) l_1956 = (VECTOR(int32_t, 2))(0x5FFC4BE9L, 0x2E7FF2DFL);
                        int i;
                        l_1943 = ((((p_2976->g_1006.z++) , &p_2976->g_509) == &p_2976->g_509) , l_1942);
                        l_1961++;
                    }
                }
            }
            for (l_1890 = 0; (l_1890 >= (-11)); --l_1890)
            { /* block id: 563 */
                int8_t *l_1966 = (void*)0;
                int8_t *l_1967 = (void*)0;
                int8_t *l_1968[7][1][4];
                int32_t l_1969[10] = {0x28C994DCL,0x28C994DCL,0x28C994DCL,0x28C994DCL,0x28C994DCL,0x28C994DCL,0x28C994DCL,0x28C994DCL,0x28C994DCL,0x28C994DCL};
                int16_t *l_1970[7][6][6] = {{{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165}},{{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165}},{{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165}},{{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165}},{{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165}},{{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165}},{{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165},{(void*)0,(void*)0,&p_2976->g_1165,(void*)0,(void*)0,&p_2976->g_1165}}};
                uint16_t l_1971 = 65533UL;
                uint32_t *l_1972 = &p_2976->g_167;
                int32_t l_1973 = 0x060BF424L;
                int64_t *l_2013 = (void*)0;
                int64_t *l_2014 = (void*)0;
                int64_t *l_2015[4][2][2] = {{{(void*)0,&p_2976->g_1075},{(void*)0,&p_2976->g_1075}},{{(void*)0,&p_2976->g_1075},{(void*)0,&p_2976->g_1075}},{{(void*)0,&p_2976->g_1075},{(void*)0,&p_2976->g_1075}},{{(void*)0,&p_2976->g_1075},{(void*)0,&p_2976->g_1075}}};
                int16_t l_2062 = 0x3D09L;
                VECTOR(int64_t, 8) l_2063 = (VECTOR(int64_t, 8))(0x34B8F835BC5F3369L, (VECTOR(int64_t, 4))(0x34B8F835BC5F3369L, (VECTOR(int64_t, 2))(0x34B8F835BC5F3369L, (-1L)), (-1L)), (-1L), 0x34B8F835BC5F3369L, (-1L));
                int32_t ****l_2078[7][3] = {{&l_2077,&l_2077,&l_2077},{&l_2077,&l_2077,&l_2077},{&l_2077,&l_2077,&l_2077},{&l_2077,&l_2077,&l_2077},{&l_2077,&l_2077,&l_2077},{&l_2077,&l_2077,&l_2077},{&l_2077,&l_2077,&l_2077}};
                int32_t l_2090 = 0x0F5497CDL;
                int i, j, k;
                for (i = 0; i < 7; i++)
                {
                    for (j = 0; j < 1; j++)
                    {
                        for (k = 0; k < 4; k++)
                            l_1968[i][j][k] = (void*)0;
                    }
                }
                l_1973 |= (((*l_1972) = ((l_1971 ^= ((l_1969[9] = 0x36L) || (p_25 | l_1945))) & (5L ^ ((-1L) > p_25)))) , l_1969[2]);
                if ((p_25 <= (safe_mod_func_int64_t_s_s((l_1969[8] = (safe_rshift_func_uint8_t_u_s(((*p_2976->g_355) && ((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 8))(l_1980.s60db3c57)), ((VECTOR(int32_t, 4))(l_1981.xxxx)).wzywyxzw))).even, ((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(0x1E25B0E0L, 0x4A83164EL)).yxxx | ((VECTOR(int32_t, 8))(6L, 0x6C15B7B5L, 0x7C86226FL, (l_2012 |= ((((VECTOR(uint32_t, 16))(((((safe_div_func_uint8_t_u_u((safe_rshift_func_int16_t_s_s((18446744073709551615UL <= (safe_add_func_uint32_t_u_u(1UL, ((void*)0 != &p_2976->g_1766)))), (p_2976->g_1745.s3 > (((safe_lshift_func_uint8_t_u_u(((+(((((~((VECTOR(int32_t, 2))(l_1992.yy)).even) == (safe_sub_func_int32_t_s_s(((((~(((((safe_div_func_uint16_t_u_u(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))(p_2976->g_1999.s459c)).odd + ((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 2))(hadd(((VECTOR(uint16_t, 8))(rotate(((VECTOR(uint16_t, 8))(rhadd(((VECTOR(uint16_t, 8))(l_2002.s61896f86)), ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))(rotate(((VECTOR(uint16_t, 4))(p_2976->g_2005.yyyy)).zzwyxxywzxywyzzy, ((VECTOR(uint16_t, 16))(sub_sat(((VECTOR(uint16_t, 16))(rotate(((VECTOR(uint16_t, 4))(l_2006.s4df5)).xzzywyyxxyzyzyxz, ((VECTOR(uint16_t, 2))(p_2976->g_2007.xz)).yyyyyyxyxxxyxyyx))), ((VECTOR(uint16_t, 4))(l_2008.yyyy)).wzzzxwxxywwyzwyx)))))).s8b * ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))(0x32FAL, ((p_25 != l_1969[8]) < p_2976->g_793.z), 3UL, 0UL)).hi << ((VECTOR(uint16_t, 2))(16)))))))).xyxyyyyx))), ((VECTOR(uint16_t, 8))(0x46AEL))))).s04, ((VECTOR(uint16_t, 2))(0x3A1DL))))).xyyyxyxxyxyxyxyx >> ((VECTOR(uint16_t, 16))(16))))).s84))).lo, p_2976->g_291.w)) == p_25) , l_2011) , 0x080B4E86L) || p_25)) < p_25) || FAKE_DIVERGE(p_2976->local_1_offset, get_local_id(1), 10)) == l_1969[4]), l_1949))) > p_25) , l_1973) | (**p_2976->g_354))) || 0UL), 5)) , 0x6AL) >= 247UL)))), p_25)) , 4294967292UL) , 0x76CA239DL) || p_25), 0xB02FA694L, 0x3BE81EC7L, p_2976->g_634.s4, 0xE8CA5863L, 1UL, ((VECTOR(uint32_t, 8))(0UL)), 0x0C026890L, 4294967295UL)).s5 , 8UL) > (**p_2976->g_69))), ((VECTOR(int32_t, 2))(2L)), 0x4AD4C45BL, 4L)).odd))) ^ ((VECTOR(int32_t, 4))(0x56D27FE1L))))), (-9L), 0x04C7EBB5L, 1L, 0x33F4F7A6L)).s73))).xyxx))).w), p_25))), (-1L)))))
                { /* block id: 570 */
                    uint8_t l_2018 = 3UL;
                    int32_t l_2025 = (-9L);
                    int32_t ***l_2032 = (void*)0;
                    int32_t ***l_2033 = &l_2030;
                    uint8_t *l_2043 = (void*)0;
                    uint8_t *l_2044 = (void*)0;
                    uint8_t *l_2045 = &p_2976->g_451;
                    for (p_2976->g_167 = 0; (p_2976->g_167 == 38); p_2976->g_167 = safe_add_func_int16_t_s_s(p_2976->g_167, 5))
                    { /* block id: 573 */
                        l_2018 = 8L;
                    }
                    l_1981.y = (safe_lshift_func_int16_t_s_u((safe_rshift_func_int16_t_s_s(p_25, ((l_2025 = (((safe_rshift_func_uint16_t_u_u(p_25, l_1960)) & (1UL >= ((VECTOR(int16_t, 2))(0x63ABL, 0x14FCL)).odd)) || (-10L))) && (!((*p_2976->g_70) == (safe_lshift_func_int8_t_s_u((-4L), (*p_2976->g_509)))))))), 11));
                    (**p_2976->g_379) = func_27((((((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 16))(((*p_2976->g_1765) == ((*l_2033) = l_2030)), ((((VECTOR(uint64_t, 4))((&p_2976->g_1539 != &p_2976->g_1539), ((((l_1969[9] ^= (p_2976->g_757.s3 = (-10L))) , (safe_mul_func_uint8_t_u_u(((*l_2045) = ((((safe_lshift_func_uint16_t_u_u((safe_sub_func_int64_t_s_s(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))(0x6A8F78DC381688F9L, ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 2))(mul_hi(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(p_2976->g_2040.s2343)), ((VECTOR(int64_t, 2))(mul_hi(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 2))(add_sat(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(upsample(((VECTOR(int32_t, 2))(1L, 8L)), ((VECTOR(uint32_t, 2))(0x38FD6EB8L, 0x9231E992L))))), (+((safe_add_func_int32_t_s_s((0x6EL < p_25), ((**p_2976->g_354) = 1UL))) != ((l_2025 = l_2025) <= p_25))), 0x6C1F7C34D737F92FL, ((VECTOR(int64_t, 8))(0x6EDE310352F982A2L)), (-3L), ((VECTOR(int64_t, 2))((-1L))), (-1L))).sd6, ((VECTOR(int64_t, 2))(0L))))) && ((VECTOR(int64_t, 2))(0x17D1043B3C8F35EEL))))), ((VECTOR(int64_t, 2))(0x1EEE3A77316EE01BL))))), 0x720B0BD74CB85C28L, l_1969[9], 0x596170E5A49E3334L, 0x0FB3B2EBF54051E6L, ((VECTOR(int64_t, 4))(7L)), (-1L), 0x274039330165F82FL)).lo && ((VECTOR(int64_t, 8))(0L))))).s64, ((VECTOR(int64_t, 2))((-1L)))))).yxyx && ((VECTOR(int64_t, 4))((-6L)))))), ((VECTOR(int64_t, 8))(0x460B793118B42F10L)), p_25, (-1L), 0L)).lo & ((VECTOR(int64_t, 8))(1L))))).s4, p_25)), p_2976->g_1703.w)) == p_25) > p_25) == (-4L))), p_25))) , l_2046.y) >= 0x6E7CDDB5L), 0xFB2F866427075E9BL, 0x6546A3F9B949F644L)).w , FAKE_DIVERGE(p_2976->local_2_offset, get_local_id(2), 10)) , p_25), ((VECTOR(uint16_t, 8))(65535UL)), l_2018, 0x8F03L, 0x6196L, p_25, 0UL, 65535UL)).s29, ((VECTOR(uint16_t, 2))(1UL)), ((VECTOR(uint16_t, 2))(0xA075L))))).xyxy + ((VECTOR(uint16_t, 4))(0xB5D7L))))).z > (-5L)) == p_25) , &p_26), l_2018, p_2976->g_554.s7, (*p_2976->g_354), p_2976);
                }
                else
                { /* block id: 585 */
                    uint64_t l_2050 = 0x7DBEBB899E1EBCE4L;
                    int32_t l_2054 = 7L;
                    uint16_t l_2055[9][10] = {{1UL,1UL,0x68BBL,1UL,0xB45FL,1UL,0x68BBL,1UL,1UL,0x68BBL},{1UL,1UL,0x68BBL,1UL,0xB45FL,1UL,0x68BBL,1UL,1UL,0x68BBL},{1UL,1UL,0x68BBL,1UL,0xB45FL,1UL,0x68BBL,1UL,1UL,0x68BBL},{1UL,1UL,0x68BBL,1UL,0xB45FL,1UL,0x68BBL,1UL,1UL,0x68BBL},{1UL,1UL,0x68BBL,1UL,0xB45FL,1UL,0x68BBL,1UL,1UL,0x68BBL},{1UL,1UL,0x68BBL,1UL,0xB45FL,1UL,0x68BBL,1UL,1UL,0x68BBL},{1UL,1UL,0x68BBL,1UL,0xB45FL,1UL,0x68BBL,1UL,1UL,0x68BBL},{1UL,1UL,0x68BBL,1UL,0xB45FL,1UL,0x68BBL,1UL,1UL,0x68BBL},{1UL,1UL,0x68BBL,1UL,0xB45FL,1UL,0x68BBL,1UL,1UL,0x68BBL}};
                    int i, j;
                    for (p_2976->g_707 = 0; (p_2976->g_707 > (-1)); p_2976->g_707 = safe_sub_func_uint64_t_u_u(p_2976->g_707, 8))
                    { /* block id: 588 */
                        int32_t l_2049 = 1L;
                        int32_t l_2053[10] = {0x5678F51BL,1L,0x5678F51BL,0x5678F51BL,1L,0x5678F51BL,0x5678F51BL,1L,0x5678F51BL,0x5678F51BL};
                        int i;
                        ++l_2050;
                        l_2055[8][9]--;
                    }
                    for (l_1948 = (-1); (l_1948 < (-28)); --l_1948)
                    { /* block id: 594 */
                        (*p_2976->g_380) = p_26;
                    }
                }
                l_1969[3] = ((((safe_add_func_int8_t_s_s((~((l_2062 = ((void*)0 == &l_1834)) >= (((VECTOR(int64_t, 8))((((VECTOR(int64_t, 2))(mad_sat(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 16))(l_2063.s0462731323231355)).sea && ((VECTOR(int64_t, 8))(l_2064.s76723751)).s05))), ((VECTOR(int64_t, 8))((((VECTOR(int64_t, 8))(l_2065.s51431171)) >= ((VECTOR(int64_t, 4))(l_2066.sda4d)).ywxzyyxx))), 5L, ((VECTOR(int64_t, 4))(clz(((VECTOR(int64_t, 2))(l_2067.yw)).xyyy))), (-5L))).s45, ((VECTOR(int64_t, 8))(7L, ((safe_mul_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u(((void*)0 == l_2072), (safe_add_func_uint32_t_u_u(GROUP_DIVERGE(0, 1), (safe_mul_func_uint16_t_u_u(((l_2079 = l_2077) != (void*)0), ((~(l_1960 = (((safe_div_func_int16_t_s_s((safe_add_func_uint64_t_u_u((safe_lshift_func_int16_t_s_s((safe_unary_minus_func_int16_t_s(p_25)), (l_1973 ^ (safe_rshift_func_int8_t_s_u(((l_1945 ^ l_1958) >= l_1953), l_1960))))), p_25)), l_2089.s7)) & p_25) || l_2090))) >= l_2002.s4))))))), 1L)) ^ l_1946), p_25, 0L, ((VECTOR(int64_t, 2))(0L)), 0x1C6CF90727AB60DCL, 1L)).s17, ((VECTOR(int64_t, 2))(0x3FF73CB6185D6511L))))).yyxxxxxx != ((VECTOR(int64_t, 8))(0x3DCDF0D374D6598DL))))).s0 == p_25))), l_2091)) <= p_25) < (-1L)) < p_25);
            }
        }
    }
    else
    { /* block id: 754 */
        uint16_t l_2506 = 65529UL;
        VECTOR(int32_t, 4) l_2507 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x24F4C2CEL), 0x24F4C2CEL);
        int i;
        l_2507.y |= (l_2506 = (l_2504 != &p_2976->g_2269));
    }
    l_2508[5] &= p_25;
    --l_2509[1];
    l_2513[1] = l_2512;
    return (*p_2976->g_133);
}


/* ------------------------------------------ */
/* 
 * reads : p_2976->g_1765 p_2976->g_938 p_2976->g_1433 p_2976->g_15 p_2976->g_379 p_2976->g_380 p_2976->g_134 p_2976->g_69 p_2976->g_70 p_2976->g_22 p_2976->g_290 p_2976->g_1486
 * writes: p_2976->g_996 p_2976->g_1433 p_2976->g_134 p_2976->g_793
 */
int32_t * func_27(int32_t ** p_28, uint64_t  p_29, uint32_t  p_30, uint32_t * p_31, struct S0 * p_2976)
{ /* block id: 477 */
    uint16_t l_1757[2][10];
    int32_t *l_1764 = &p_2976->g_613;
    int32_t **l_1763 = &l_1764;
    int32_t ***l_1762[6][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
    uint32_t l_1775 = 1UL;
    int16_t *l_1776 = (void*)0;
    int16_t *l_1777[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t l_1778 = 0x297DFDE0L;
    int8_t *l_1779 = (void*)0;
    int32_t *l_1780 = (void*)0;
    int32_t *l_1781 = (void*)0;
    int32_t *l_1782 = (void*)0;
    int32_t *l_1783 = (void*)0;
    int32_t *l_1784[7][9][4] = {{{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0}},{{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0}},{{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0}},{{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0}},{{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0}},{{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0}},{{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0},{(void*)0,&p_2976->g_2,&p_2976->g_2,(void*)0}}};
    int16_t l_1785 = 1L;
    uint64_t *l_1803[9] = {&p_2976->g_37,&p_2976->g_37,&p_2976->g_37,&p_2976->g_37,&p_2976->g_37,&p_2976->g_37,&p_2976->g_37,&p_2976->g_37,&p_2976->g_37};
    uint64_t **l_1802[4] = {&l_1803[1],&l_1803[1],&l_1803[1],&l_1803[1]};
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 10; j++)
            l_1757[i][j] = 65535UL;
    }
    if (((p_29 != (l_1757[0][0] == (((((safe_add_func_uint8_t_u_u(((p_2976->g_996.s9 = ((p_30 || ((safe_lshift_func_uint8_t_u_s(248UL, p_30)) == 3UL)) & (l_1762[4][0] != p_2976->g_1765))) <= ((l_1785 = ((p_2976->g_1433.y |= ((l_1778 = (safe_div_func_uint32_t_u_u((safe_lshift_func_uint8_t_u_s(((251UL && p_29) < l_1757[0][7]), l_1757[0][9])), l_1775))) & p_2976->g_938.x)) > 0L)) , p_29)), 0x2AL)) == 0x5757L) & (-1L)) ^ p_2976->g_15.x) < 1UL))) ^ p_29))
    { /* block id: 482 */
        VECTOR(int8_t, 8) l_1786 = (VECTOR(int8_t, 8))(0x60L, (VECTOR(int8_t, 4))(0x60L, (VECTOR(int8_t, 2))(0x60L, 1L), 1L), 1L, 0x60L, 1L);
        int8_t *l_1787 = (void*)0;
        int8_t *l_1788 = (void*)0;
        int8_t *l_1789 = &p_2976->g_626;
        VECTOR(int8_t, 2) l_1792 = (VECTOR(int8_t, 2))((-1L), (-1L));
        int32_t l_1793 = (-2L);
        uint32_t *l_1801[10][5][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
        int32_t l_1806 = 0x45EB92D0L;
        int32_t l_1807 = 0L;
        int32_t l_1808 = 1L;
        int32_t l_1809 = 0x3D664719L;
        int32_t l_1810 = 0x1C641630L;
        int32_t l_1811 = (-4L);
        int32_t l_1812[2];
        uint8_t l_1813 = 0x7BL;
        uint16_t *l_1818 = (void*)0;
        uint16_t *l_1819[8];
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_1812[i] = 0x38E30F78L;
        for (i = 0; i < 8; i++)
            l_1819[i] = (void*)0;
        (*p_2976->g_380) = (**p_2976->g_379);
        l_1793 |= (safe_mul_func_uint8_t_u_u((0x9BF2L & 1L), 250UL));
        l_1813--;
        l_1806 ^= ((l_1810 == p_30) && ((**p_2976->g_69) > ((safe_lshift_func_int16_t_s_s((p_2976->g_290.sc || (p_2976->g_793.y = (l_1812[0] = l_1786.s4))), 9)) <= p_2976->g_1486.s7)));
    }
    else
    { /* block id: 492 */
        int16_t l_1820 = 1L;
        int32_t l_1821 = 0x1445449CL;
        int32_t l_1822 = 0L;
        VECTOR(int32_t, 16) l_1823 = (VECTOR(int32_t, 16))((-5L), (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), (-1L)), (-1L)), (-1L), (-5L), (-1L), (VECTOR(int32_t, 2))((-5L), (-1L)), (VECTOR(int32_t, 2))((-5L), (-1L)), (-5L), (-1L), (-5L), (-1L));
        uint16_t l_1824 = 0x5DF3L;
        int i;
        l_1824++;
    }
    return (*p_28);
}


/* ------------------------------------------ */
/* 
 * reads : p_2976->g_1189 p_2976->g_1745 p_2976->g_532 p_2976->g_92
 * writes: p_2976->g_134 p_2976->g_827 p_2976->g_391
 */
int32_t ** func_32(uint64_t  p_33, int64_t  p_34, uint32_t * p_35, struct S0 * p_2976)
{ /* block id: 470 */
    int16_t l_1742 = 0x3AA0L;
    VECTOR(uint8_t, 2) l_1748 = (VECTOR(uint8_t, 2))(250UL, 249UL);
    VECTOR(uint8_t, 2) l_1749 = (VECTOR(uint8_t, 2))(0x74L, 0xF0L);
    int16_t **l_1750 = &p_2976->g_827;
    VECTOR(int64_t, 16) l_1751 = (VECTOR(int64_t, 16))(0x514575F8629F8294L, (VECTOR(int64_t, 4))(0x514575F8629F8294L, (VECTOR(int64_t, 2))(0x514575F8629F8294L, (-10L)), (-10L)), (-10L), 0x514575F8629F8294L, (-10L), (VECTOR(int64_t, 2))(0x514575F8629F8294L, (-10L)), (VECTOR(int64_t, 2))(0x514575F8629F8294L, (-10L)), 0x514575F8629F8294L, (-10L), 0x514575F8629F8294L, (-10L));
    uint16_t *l_1752 = &p_2976->g_391;
    uint64_t ***l_1753 = &p_2976->g_61;
    int32_t l_1754 = 0x6D1C2D4CL;
    int32_t **l_1755 = &p_2976->g_134[0];
    int i;
    (*p_2976->g_1189) = p_35;
    l_1754 ^= (((safe_rshift_func_int16_t_s_u(((safe_rshift_func_int8_t_s_u(((safe_lshift_func_int8_t_s_s(0x44L, (((safe_rshift_func_uint16_t_u_u(((*l_1752) = (l_1742 == ((((void*)0 != &p_2976->g_1193[7]) || p_33) > ((safe_mul_func_int16_t_s_s(((!(((VECTOR(int8_t, 2))(p_2976->g_1745.sf0)).hi == ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))(l_1748.yy)).yyyyxxyx + ((VECTOR(uint8_t, 8))(mul_hi(((VECTOR(uint8_t, 16))(l_1749.xyyyxyxyxyxyyxxx)).hi, ((VECTOR(uint8_t, 2))(0UL, 0x58L)).xxxxxyyx)))))), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(0x9DL, 0xDCL)), 0x76L, 0xE1L)), ((((((*l_1750) = &l_1742) != (((FAKE_DIVERGE(p_2976->global_0_offset, get_global_id(0), 10) & ((VECTOR(int64_t, 4))(l_1751.s5539)).z) && p_34) , &l_1742)) != (((+0x03E7D0B4L) > p_34) == p_2976->g_532.s4)) >= l_1749.x) != p_33), ((VECTOR(uint8_t, 2))(1UL)), 1UL)).se)) ^ p_2976->g_92.x), l_1748.x)) > 4294967291UL)))), 14)) , (void*)0) == l_1753))) || 0x698BL), 3)) || p_34), p_33)) <= GROUP_DIVERGE(1, 1)) > 0x49L);
    l_1754 = p_33;
    return l_1755;
}


/* ------------------------------------------ */
/* 
 * reads : p_2976->g_22 p_2976->g_1215 p_2976->g_1218 p_2976->g_133 p_2976->g_134 p_2976->g_6 p_2976->g_355 p_2976->g_291 p_2976->g_774 p_2976->g_1262 p_2976->g_634 p_2976->g_1284 p_2976->g_1292 p_2976->g_582 p_2976->g_783 p_2976->g_69 p_2976->g_70 p_2976->g_130 p_2976->g_379 p_2976->g_354 p_2976->g_451 p_2976->g_996 p_2976->g_848 p_2976->g_46 p_2976->g_1066 p_2976->g_1356 p_2976->g_1360 p_2976->g_1361 p_2976->g_1362 p_2976->g_1373 p_2976->g_1376 p_2976->g_1389 p_2976->g_79 p_2976->g_762 p_2976->g_1189 p_2976->g_701 p_2976->g_1417 p_2976->g_1419 p_2976->g_611 p_2976->g_380 p_2976->g_281 p_2976->g_1433 p_2976->g_884 p_2976->g_1471 p_2976->g_1472 p_2976->g_1474 p_2976->g_1482 p_2976->g_1486 p_2976->g_887 p_2976->g_763 p_2976->g_2 p_2976->g_1501 p_2976->g_1522 p_2976->g_1008 p_2976->g_1540 p_2976->g_756 p_2976->g_193 p_2976->g_1006 p_2976->g_772 p_2976->g_1106 p_2976->g_61 p_2976->g_1666 p_2976->g_446 p_2976->g_1075 p_2976->g_1694 p_2976->g_1697 p_2976->g_1698 p_2976->g_1700 p_2976->g_1539
 * writes: p_2976->g_22 p_2976->g_61 p_2976->g_613 p_2976->g_764 p_2976->g_134 p_2976->g_154 p_2976->g_130 p_2976->g_333 p_2976->g_451 p_2976->g_281 p_2976->g_79 p_2976->g_678 p_2976->g_1063 p_2976->g_1501 p_2976->g_1508 p_2976->g_1539 p_2976->g_46 p_2976->g_763 p_2976->g_1106
 */
uint32_t * func_38(int64_t  p_39, uint32_t * p_40, uint8_t  p_41, int32_t ** p_42, int64_t  p_43, struct S0 * p_2976)
{ /* block id: 14 */
    uint16_t l_72 = 1UL;
    uint32_t **l_654 = (void*)0;
    VECTOR(int8_t, 2) l_659 = (VECTOR(int8_t, 2))((-1L), 0x7BL);
    VECTOR(int16_t, 16) l_663 = (VECTOR(int16_t, 16))(0x2FC2L, (VECTOR(int16_t, 4))(0x2FC2L, (VECTOR(int16_t, 2))(0x2FC2L, 0x2A67L), 0x2A67L), 0x2A67L, 0x2FC2L, 0x2A67L, (VECTOR(int16_t, 2))(0x2FC2L, 0x2A67L), (VECTOR(int16_t, 2))(0x2FC2L, 0x2A67L), 0x2FC2L, 0x2A67L, 0x2FC2L, 0x2A67L);
    VECTOR(int16_t, 16) l_664 = (VECTOR(int16_t, 16))(0x4FB7L, (VECTOR(int16_t, 4))(0x4FB7L, (VECTOR(int16_t, 2))(0x4FB7L, 0x1145L), 0x1145L), 0x1145L, 0x4FB7L, 0x1145L, (VECTOR(int16_t, 2))(0x4FB7L, 0x1145L), (VECTOR(int16_t, 2))(0x4FB7L, 0x1145L), 0x4FB7L, 0x1145L, 0x4FB7L, 0x1145L);
    uint32_t l_667 = 4294967288UL;
    int32_t ***l_677 = &p_2976->g_133;
    VECTOR(int32_t, 4) l_683 = (VECTOR(int32_t, 4))(0x78FB79DEL, (VECTOR(int32_t, 2))(0x78FB79DEL, 0x3651A0F7L), 0x3651A0F7L);
    int32_t l_719[3];
    uint64_t *l_722 = &p_2976->g_79;
    uint64_t **l_721[2][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    VECTOR(int8_t, 2) l_773 = (VECTOR(int8_t, 2))((-2L), 0x60L);
    int16_t *l_830 = (void*)0;
    int32_t l_858 = 0x78AA5C65L;
    VECTOR(uint32_t, 8) l_882 = (VECTOR(uint32_t, 8))(0xB31B736BL, (VECTOR(uint32_t, 4))(0xB31B736BL, (VECTOR(uint32_t, 2))(0xB31B736BL, 0x688DDDCEL), 0x688DDDCEL), 0x688DDDCEL, 0xB31B736BL, 0x688DDDCEL);
    VECTOR(int8_t, 4) l_889 = (VECTOR(int8_t, 4))(0x2EL, (VECTOR(int8_t, 2))(0x2EL, 0x25L), 0x25L);
    uint32_t l_890 = 0UL;
    uint64_t l_930 = 0x3C713894DE3F6DC2L;
    uint32_t l_947[6] = {0UL,0UL,0UL,0UL,0UL,0UL};
    uint16_t l_953[10] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL};
    VECTOR(uint16_t, 4) l_956 = (VECTOR(uint16_t, 4))(65531UL, (VECTOR(uint16_t, 2))(65531UL, 0xFB26L), 0xFB26L);
    VECTOR(uint16_t, 8) l_1005 = (VECTOR(uint16_t, 8))(65534UL, (VECTOR(uint16_t, 4))(65534UL, (VECTOR(uint16_t, 2))(65534UL, 1UL), 1UL), 1UL, 65534UL, 1UL);
    VECTOR(uint16_t, 8) l_1009 = (VECTOR(uint16_t, 8))(3UL, (VECTOR(uint16_t, 4))(3UL, (VECTOR(uint16_t, 2))(3UL, 9UL), 9UL), 9UL, 3UL, 9UL);
    int32_t l_1029 = 4L;
    int64_t l_1034 = 0L;
    VECTOR(int8_t, 8) l_1065 = (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0L), 0L), 0L, 0L, 0L);
    int16_t l_1115 = 0x2EDBL;
    int32_t l_1139 = (-1L);
    int32_t *l_1152 = &p_2976->g_613;
    int64_t l_1158 = 4L;
    uint16_t l_1172 = 0x13F5L;
    VECTOR(int16_t, 8) l_1213 = (VECTOR(int16_t, 8))((-5L), (VECTOR(int16_t, 4))((-5L), (VECTOR(int16_t, 2))((-5L), 0x2B35L), 0x2B35L), 0x2B35L, (-5L), 0x2B35L);
    VECTOR(int16_t, 4) l_1214 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x19B6L), 0x19B6L);
    VECTOR(int16_t, 8) l_1216 = (VECTOR(int16_t, 8))(5L, (VECTOR(int16_t, 4))(5L, (VECTOR(int16_t, 2))(5L, (-5L)), (-5L)), (-5L), 5L, (-5L));
    VECTOR(int16_t, 8) l_1217 = (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x5388L), 0x5388L), 0x5388L, 0L, 0x5388L);
    VECTOR(int16_t, 2) l_1219 = (VECTOR(int16_t, 2))(0x180CL, 0x494CL);
    int32_t *l_1230 = &l_1029;
    VECTOR(uint16_t, 16) l_1243 = (VECTOR(uint16_t, 16))(0x2D8CL, (VECTOR(uint16_t, 4))(0x2D8CL, (VECTOR(uint16_t, 2))(0x2D8CL, 0x9773L), 0x9773L), 0x9773L, 0x2D8CL, 0x9773L, (VECTOR(uint16_t, 2))(0x2D8CL, 0x9773L), (VECTOR(uint16_t, 2))(0x2D8CL, 0x9773L), 0x2D8CL, 0x9773L, 0x2D8CL, 0x9773L);
    int16_t *l_1254 = (void*)0;
    int16_t *l_1255[1][2][2];
    uint16_t l_1263 = 0xE121L;
    int64_t *l_1264 = &l_1034;
    int8_t l_1265 = (-1L);
    uint32_t l_1266[9][3][5] = {{{4294967287UL,0x7FCA54CAL,0x7FCA54CAL,4294967287UL,1UL},{4294967287UL,0x7FCA54CAL,0x7FCA54CAL,4294967287UL,1UL},{4294967287UL,0x7FCA54CAL,0x7FCA54CAL,4294967287UL,1UL}},{{4294967287UL,0x7FCA54CAL,0x7FCA54CAL,4294967287UL,1UL},{4294967287UL,0x7FCA54CAL,0x7FCA54CAL,4294967287UL,1UL},{4294967287UL,0x7FCA54CAL,0x7FCA54CAL,4294967287UL,1UL}},{{4294967287UL,0x7FCA54CAL,0x7FCA54CAL,4294967287UL,1UL},{4294967287UL,0x7FCA54CAL,0x7FCA54CAL,4294967287UL,1UL},{4294967287UL,0x7FCA54CAL,0x7FCA54CAL,4294967287UL,1UL}},{{4294967287UL,0x7FCA54CAL,0x7FCA54CAL,4294967287UL,1UL},{4294967287UL,0x7FCA54CAL,0x7FCA54CAL,4294967287UL,1UL},{4294967287UL,0x7FCA54CAL,0x7FCA54CAL,4294967287UL,1UL}},{{4294967287UL,0x7FCA54CAL,0x7FCA54CAL,4294967287UL,1UL},{4294967287UL,0x7FCA54CAL,0x7FCA54CAL,4294967287UL,1UL},{4294967287UL,0x7FCA54CAL,0x7FCA54CAL,4294967287UL,1UL}},{{4294967287UL,0x7FCA54CAL,0x7FCA54CAL,4294967287UL,1UL},{4294967287UL,0x7FCA54CAL,0x7FCA54CAL,4294967287UL,1UL},{4294967287UL,0x7FCA54CAL,0x7FCA54CAL,4294967287UL,1UL}},{{4294967287UL,0x7FCA54CAL,0x7FCA54CAL,4294967287UL,1UL},{4294967287UL,0x7FCA54CAL,0x7FCA54CAL,4294967287UL,1UL},{4294967287UL,0x7FCA54CAL,0x7FCA54CAL,4294967287UL,1UL}},{{4294967287UL,0x7FCA54CAL,0x7FCA54CAL,4294967287UL,1UL},{4294967287UL,0x7FCA54CAL,0x7FCA54CAL,4294967287UL,1UL},{4294967287UL,0x7FCA54CAL,0x7FCA54CAL,4294967287UL,1UL}},{{4294967287UL,0x7FCA54CAL,0x7FCA54CAL,4294967287UL,1UL},{4294967287UL,0x7FCA54CAL,0x7FCA54CAL,4294967287UL,1UL},{4294967287UL,0x7FCA54CAL,0x7FCA54CAL,4294967287UL,1UL}}};
    uint16_t *l_1267 = (void*)0;
    uint16_t *l_1268 = &l_953[4];
    int8_t l_1269 = 0x09L;
    int16_t l_1272 = 0x1411L;
    uint32_t l_1274[9][6] = {{0x94D4ED34L,6UL,4294967291UL,0x94D4ED34L,0x0E06F73EL,4294967291UL},{0x94D4ED34L,6UL,4294967291UL,0x94D4ED34L,0x0E06F73EL,4294967291UL},{0x94D4ED34L,6UL,4294967291UL,0x94D4ED34L,0x0E06F73EL,4294967291UL},{0x94D4ED34L,6UL,4294967291UL,0x94D4ED34L,0x0E06F73EL,4294967291UL},{0x94D4ED34L,6UL,4294967291UL,0x94D4ED34L,0x0E06F73EL,4294967291UL},{0x94D4ED34L,6UL,4294967291UL,0x94D4ED34L,0x0E06F73EL,4294967291UL},{0x94D4ED34L,6UL,4294967291UL,0x94D4ED34L,0x0E06F73EL,4294967291UL},{0x94D4ED34L,6UL,4294967291UL,0x94D4ED34L,0x0E06F73EL,4294967291UL},{0x94D4ED34L,6UL,4294967291UL,0x94D4ED34L,0x0E06F73EL,4294967291UL}};
    VECTOR(uint8_t, 16) l_1291 = (VECTOR(uint8_t, 16))(0xF3L, (VECTOR(uint8_t, 4))(0xF3L, (VECTOR(uint8_t, 2))(0xF3L, 0xE6L), 0xE6L), 0xE6L, 0xF3L, 0xE6L, (VECTOR(uint8_t, 2))(0xF3L, 0xE6L), (VECTOR(uint8_t, 2))(0xF3L, 0xE6L), 0xF3L, 0xE6L, 0xF3L, 0xE6L);
    int8_t l_1299 = 2L;
    VECTOR(uint64_t, 2) l_1336 = (VECTOR(uint64_t, 2))(18446744073709551606UL, 0x33F534408B9E3815L);
    VECTOR(uint64_t, 16) l_1384 = (VECTOR(uint64_t, 16))(0x1AAA3699BB3BEAE1L, (VECTOR(uint64_t, 4))(0x1AAA3699BB3BEAE1L, (VECTOR(uint64_t, 2))(0x1AAA3699BB3BEAE1L, 0x31CF29562EAE9D05L), 0x31CF29562EAE9D05L), 0x31CF29562EAE9D05L, 0x1AAA3699BB3BEAE1L, 0x31CF29562EAE9D05L, (VECTOR(uint64_t, 2))(0x1AAA3699BB3BEAE1L, 0x31CF29562EAE9D05L), (VECTOR(uint64_t, 2))(0x1AAA3699BB3BEAE1L, 0x31CF29562EAE9D05L), 0x1AAA3699BB3BEAE1L, 0x31CF29562EAE9D05L, 0x1AAA3699BB3BEAE1L, 0x31CF29562EAE9D05L);
    VECTOR(uint16_t, 2) l_1397 = (VECTOR(uint16_t, 2))(65535UL, 0xA99CL);
    uint64_t *l_1404 = &l_930;
    uint8_t **l_1414 = &p_2976->g_551[4][7];
    VECTOR(int32_t, 4) l_1418 = (VECTOR(int32_t, 4))(0x03E76F45L, (VECTOR(int32_t, 2))(0x03E76F45L, 0x62DE29D9L), 0x62DE29D9L);
    int32_t l_1428 = 0x64AECEC3L;
    VECTOR(int8_t, 16) l_1476 = (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x15L), 0x15L), 0x15L, 1L, 0x15L, (VECTOR(int8_t, 2))(1L, 0x15L), (VECTOR(int8_t, 2))(1L, 0x15L), 1L, 0x15L, 1L, 0x15L);
    VECTOR(uint8_t, 4) l_1481 = (VECTOR(uint8_t, 4))(0x9CL, (VECTOR(uint8_t, 2))(0x9CL, 0UL), 0UL);
    VECTOR(uint8_t, 8) l_1483 = (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 253UL), 253UL), 253UL, 1UL, 253UL);
    int64_t **l_1504 = &p_2976->g_1502;
    int64_t **l_1506 = &p_2976->g_1502;
    VECTOR(uint64_t, 16) l_1519 = (VECTOR(uint64_t, 16))(0xFC1677B18D10C806L, (VECTOR(uint64_t, 4))(0xFC1677B18D10C806L, (VECTOR(uint64_t, 2))(0xFC1677B18D10C806L, 0x4A5CAE3300A19C66L), 0x4A5CAE3300A19C66L), 0x4A5CAE3300A19C66L, 0xFC1677B18D10C806L, 0x4A5CAE3300A19C66L, (VECTOR(uint64_t, 2))(0xFC1677B18D10C806L, 0x4A5CAE3300A19C66L), (VECTOR(uint64_t, 2))(0xFC1677B18D10C806L, 0x4A5CAE3300A19C66L), 0xFC1677B18D10C806L, 0x4A5CAE3300A19C66L, 0xFC1677B18D10C806L, 0x4A5CAE3300A19C66L);
    VECTOR(uint64_t, 8) l_1529 = (VECTOR(uint64_t, 8))(0xC9BD4E180081DE8EL, (VECTOR(uint64_t, 4))(0xC9BD4E180081DE8EL, (VECTOR(uint64_t, 2))(0xC9BD4E180081DE8EL, 0xF88670EE8061AC8DL), 0xF88670EE8061AC8DL), 0xF88670EE8061AC8DL, 0xC9BD4E180081DE8EL, 0xF88670EE8061AC8DL);
    uint8_t l_1574[3];
    uint32_t l_1582[2];
    uint8_t l_1680 = 0UL;
    VECTOR(int32_t, 2) l_1713 = (VECTOR(int32_t, 2))(0x570E512BL, 1L);
    VECTOR(int16_t, 4) l_1724 = (VECTOR(int16_t, 4))(0x17B8L, (VECTOR(int16_t, 2))(0x17B8L, 0x21C6L), 0x21C6L);
    VECTOR(int16_t, 2) l_1725 = (VECTOR(int16_t, 2))((-1L), 0x307EL);
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_719[i] = 0x48A7F5CAL;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 2; k++)
                l_1255[i][j][k] = (void*)0;
        }
    }
    for (i = 0; i < 3; i++)
        l_1574[i] = 0x8CL;
    for (i = 0; i < 2; i++)
        l_1582[i] = 4294967295UL;
    for (p_2976->g_22 = 0; (p_2976->g_22 < 37); p_2976->g_22 = safe_add_func_int16_t_s_s(p_2976->g_22, 9))
    { /* block id: 17 */
        uint32_t ***l_71 = &p_2976->g_69;
        int32_t *l_77 = &p_2976->g_6;
        int32_t **l_76 = &l_77;
        uint64_t *l_78 = &p_2976->g_79;
        VECTOR(int16_t, 2) l_662 = (VECTOR(int16_t, 2))(0L, 0L);
        VECTOR(int16_t, 16) l_665 = (VECTOR(int16_t, 16))(4L, (VECTOR(int16_t, 4))(4L, (VECTOR(int16_t, 2))(4L, 0x3A35L), 0x3A35L), 0x3A35L, 4L, 0x3A35L, (VECTOR(int16_t, 2))(4L, 0x3A35L), (VECTOR(int16_t, 2))(4L, 0x3A35L), 4L, 0x3A35L, 4L, 0x3A35L);
        int32_t *l_666[8][1] = {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}};
        int32_t *l_670 = (void*)0;
        int32_t *l_671 = (void*)0;
        int32_t *l_672 = (void*)0;
        int32_t *l_673 = (void*)0;
        int32_t l_674 = 0x0F66E1FDL;
        VECTOR(int8_t, 4) l_717 = (VECTOR(int8_t, 4))(0x54L, (VECTOR(int8_t, 2))(0x54L, 0x7FL), 0x7FL);
        VECTOR(int64_t, 16) l_718 = (VECTOR(int64_t, 16))(0x43A3625F9FE35B7BL, (VECTOR(int64_t, 4))(0x43A3625F9FE35B7BL, (VECTOR(int64_t, 2))(0x43A3625F9FE35B7BL, 0x31C28DD83A7BF5A2L), 0x31C28DD83A7BF5A2L), 0x31C28DD83A7BF5A2L, 0x43A3625F9FE35B7BL, 0x31C28DD83A7BF5A2L, (VECTOR(int64_t, 2))(0x43A3625F9FE35B7BL, 0x31C28DD83A7BF5A2L), (VECTOR(int64_t, 2))(0x43A3625F9FE35B7BL, 0x31C28DD83A7BF5A2L), 0x43A3625F9FE35B7BL, 0x31C28DD83A7BF5A2L, 0x43A3625F9FE35B7BL, 0x31C28DD83A7BF5A2L);
        VECTOR(int32_t, 2) l_730 = (VECTOR(int32_t, 2))(2L, 5L);
        VECTOR(int8_t, 16) l_775 = (VECTOR(int8_t, 16))(0x76L, (VECTOR(int8_t, 4))(0x76L, (VECTOR(int8_t, 2))(0x76L, 0x17L), 0x17L), 0x17L, 0x76L, 0x17L, (VECTOR(int8_t, 2))(0x76L, 0x17L), (VECTOR(int8_t, 2))(0x76L, 0x17L), 0x76L, 0x17L, 0x76L, 0x17L);
        VECTOR(int32_t, 16) l_822 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x5E0DB7F9L), 0x5E0DB7F9L), 0x5E0DB7F9L, 0L, 0x5E0DB7F9L, (VECTOR(int32_t, 2))(0L, 0x5E0DB7F9L), (VECTOR(int32_t, 2))(0L, 0x5E0DB7F9L), 0L, 0x5E0DB7F9L, 0L, 0x5E0DB7F9L);
        VECTOR(uint32_t, 4) l_877 = (VECTOR(uint32_t, 4))(0x165566A0L, (VECTOR(uint32_t, 2))(0x165566A0L, 1UL), 1UL);
        VECTOR(int8_t, 16) l_894 = (VECTOR(int8_t, 16))(2L, (VECTOR(int8_t, 4))(2L, (VECTOR(int8_t, 2))(2L, 0x11L), 0x11L), 0x11L, 2L, 0x11L, (VECTOR(int8_t, 2))(2L, 0x11L), (VECTOR(int8_t, 2))(2L, 0x11L), 2L, 0x11L, 2L, 0x11L);
        int16_t l_929 = 0L;
        int i, j;
        for (p_41 = 0; (p_41 == 33); p_41 = safe_add_func_int64_t_s_s(p_41, 3))
        { /* block id: 20 */
            int32_t *l_60 = (void*)0;
            int32_t **l_59 = &l_60;
            (*l_59) = &p_2976->g_6;
            p_2976->g_61 = (void*)0;
        }
    }
lbl_1615:
    for (l_858 = 18; (l_858 != (-9)); --l_858)
    { /* block id: 279 */
        int32_t *l_974 = &l_858;
        int32_t l_1018 = 7L;
        int32_t l_1019[10] = {0x6AD455A8L,0x2E1632A4L,0x2EABFB73L,0x2E1632A4L,0x6AD455A8L,0x6AD455A8L,0x2E1632A4L,0x2EABFB73L,0x2E1632A4L,0x6AD455A8L};
        uint64_t **l_1077 = (void*)0;
        uint8_t l_1116 = 0xE5L;
        uint8_t l_1137 = 246UL;
        int32_t ***l_1180[9][7] = {{&p_2976->g_133,&p_2976->g_133,&p_2976->g_133,&p_2976->g_133,(void*)0,&p_2976->g_133,&p_2976->g_133},{&p_2976->g_133,&p_2976->g_133,&p_2976->g_133,&p_2976->g_133,(void*)0,&p_2976->g_133,&p_2976->g_133},{&p_2976->g_133,&p_2976->g_133,&p_2976->g_133,&p_2976->g_133,(void*)0,&p_2976->g_133,&p_2976->g_133},{&p_2976->g_133,&p_2976->g_133,&p_2976->g_133,&p_2976->g_133,(void*)0,&p_2976->g_133,&p_2976->g_133},{&p_2976->g_133,&p_2976->g_133,&p_2976->g_133,&p_2976->g_133,(void*)0,&p_2976->g_133,&p_2976->g_133},{&p_2976->g_133,&p_2976->g_133,&p_2976->g_133,&p_2976->g_133,(void*)0,&p_2976->g_133,&p_2976->g_133},{&p_2976->g_133,&p_2976->g_133,&p_2976->g_133,&p_2976->g_133,(void*)0,&p_2976->g_133,&p_2976->g_133},{&p_2976->g_133,&p_2976->g_133,&p_2976->g_133,&p_2976->g_133,(void*)0,&p_2976->g_133,&p_2976->g_133},{&p_2976->g_133,&p_2976->g_133,&p_2976->g_133,&p_2976->g_133,(void*)0,&p_2976->g_133,&p_2976->g_133}};
        uint32_t l_1194 = 0xEF3D3446L;
        int i, j;
        (1 + 1);
    }
lbl_1681:
    (*l_1230) &= (((*l_1152) = ((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 16))((((VECTOR(int16_t, 2))(rotate(((VECTOR(int16_t, 4))(l_1213.s5736)).hi, ((VECTOR(int16_t, 8))(hadd(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(l_1214.wz)).even, ((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 2))(0x0BF1L, 0x2C0EL)).xxyxyyyy, ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))(0x5D7AL, (-1L))) ^ ((VECTOR(int16_t, 4))((-10L), 0x49A3L, (-9L), (-1L))).odd))).yxyyyxyx > ((VECTOR(int16_t, 4))(0x2992L, (-1L), 0x78E4L, 0x4C16L)).xxwzxyzy)))))), 0x4439L, (-1L), 0x4B9EL, ((VECTOR(int16_t, 2))(p_2976->g_1215.s35)), 4L, 0L)).even, ((VECTOR(int16_t, 4))(l_1216.s7567)).zwxxwxyw))).s22))).yxyxxyyyyyyyyxyy && ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))((((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(l_1217.s62)), (((VECTOR(int32_t, 8))(p_2976->g_1218.xxyyxxxx)).s6 , (***l_677)), ((VECTOR(int16_t, 8))(safe_clamp_func(VECTOR(int16_t, 8),int16_t,((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))(safe_clamp_func(VECTOR(int16_t, 16),int16_t,((VECTOR(int16_t, 8))((((VECTOR(int16_t, 8))(l_1219.yxyyyyxx)) != ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(sub_sat(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(max(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))(0x0004L, 0L, ((VECTOR(int16_t, 2))((-5L), (-1L))), 0x06F3L, ((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 2))(8L, (-1L))), ((VECTOR(int16_t, 16))(0x785BL, ((VECTOR(int16_t, 8))(1L, ((safe_add_func_int32_t_s_s(8L, (p_43 > ((safe_mul_func_int8_t_s_s(((safe_lshift_func_int16_t_s_s((p_2976->g_355 == (void*)0), 3)) == GROUP_DIVERGE(2, 1)), (***l_677))) ^ ((((p_41 != (safe_rshift_func_int8_t_s_s((safe_rshift_func_int8_t_s_s((***l_677), 4)), 3))) >= p_2976->g_291.y) , (void*)0) != &p_39))))) == p_43), 0x32A1L, (***l_677), ((VECTOR(int16_t, 4))((-7L))))), (***l_677), ((VECTOR(int16_t, 2))(0L)), 0x1D04L, 0x3AB5L, 0x2FD5L, 0x76B6L)).se3))).even, p_2976->g_774.sb, ((VECTOR(int16_t, 8))((-10L))), (-7L))).sb0 <= ((VECTOR(int16_t, 2))(0x17E6L))))).yyxx, (int16_t)(***l_677)))), ((VECTOR(int16_t, 2))(7L)), 0x75C9L, 0L, (-3L), 0x7B2DL, ((VECTOR(int16_t, 4))((-8L))), 0x2421L, 0x69F8L)).hi, ((VECTOR(int16_t, 8))(0x64CCL))))).s61 || ((VECTOR(int16_t, 2))((-1L)))))), ((VECTOR(int16_t, 2))((-1L)))))) | ((VECTOR(int16_t, 2))(0L))))).yyyyyyxx <= ((VECTOR(int16_t, 8))((-1L)))))).s53, (int16_t)0x1E43L))).xxxyxxxx != ((VECTOR(int16_t, 8))(0x2929L))))) && ((VECTOR(int16_t, 8))(0x7A4FL)))))))).s2464715707451233, (int16_t)0x3A8CL, (int16_t)(-1L)))).s69 && ((VECTOR(int16_t, 2))(0x6E18L))))).xxxy))).xyzwzxxy, (int16_t)p_43, (int16_t)(***l_677)))), 0L, 0x141AL, 0x7E3EL, 0x3AE2L, 0x5833L)) ^ ((VECTOR(int16_t, 16))(0x2BAAL))))).sb8 < ((VECTOR(int16_t, 2))(0x0C39L))))).yxyxyxxyxyxxyxxy))).seef8, ((VECTOR(uint16_t, 4))(0xDE8EL))))).wwwyywyxwwwwwxyy, ((VECTOR(int32_t, 16))((-6L)))))).s448b && ((VECTOR(int32_t, 4))(0x39E86D4DL))))), ((VECTOR(int32_t, 4))(0x29FE4A25L))))).x) , (**p_42));
    if ((safe_sub_func_uint16_t_u_u(((safe_sub_func_int8_t_s_s((safe_mod_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u(((**p_2976->g_133) || ((FAKE_DIVERGE(p_2976->local_2_offset, get_local_id(2), 10) < (((*l_1268) = (((!(*l_1230)) && ((VECTOR(int32_t, 16))((safe_div_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(l_1243.sfe19)).w, ((((p_2976->g_764.y = (safe_rshift_func_uint16_t_u_s(((&l_1172 == &l_953[0]) == FAKE_DIVERGE(p_2976->group_2_offset, get_group_id(2), 10)), 12))) , 0x425FL) <= (safe_lshift_func_uint16_t_u_u(((safe_add_func_uint64_t_u_u(((safe_add_func_int16_t_s_s((safe_lshift_func_int16_t_s_s(((*l_1230) = p_39), 2)), (((((*l_1264) = (((0x65L > (((*p_40) & (safe_mul_func_int16_t_s_s((safe_add_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(p_2976->g_1262.s54735061)), ((VECTOR(uint8_t, 4))((&p_2976->g_613 == p_40), 1UL, 0x30L, 254UL)), p_41, ((VECTOR(uint8_t, 2))(248UL)), 0xCEL)).s3, (***l_677))), p_2976->g_1262.s2)), p_43))) | (***l_677))) == (*p_40)) , l_1263)) <= 0x61BE6454D6F91955L) , (***l_677)) | l_1265))) <= l_1266[3][1][3]), (***l_677))) >= p_41), FAKE_DIVERGE(p_2976->local_0_offset, get_local_id(0), 10)))) & p_41))), ((VECTOR(int32_t, 8))((-5L))), 0x41EFA70EL, ((VECTOR(int32_t, 4))(0x4D7EE9EEL)), 2L, 0x76F2B102L)).sa) <= p_39)) > l_1269)) < (***l_677))), 7)), 0x0252L)), p_41)) || (*l_1230)), p_41)))
    { /* block id: 353 */
        int64_t l_1270 = 1L;
        int32_t *l_1271[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int8_t l_1273 = 0x40L;
        uint16_t l_1283 = 0UL;
        int16_t **l_1293 = &l_1255[0][0][0];
        int16_t ***l_1294 = &l_1293;
        VECTOR(int64_t, 16) l_1297 = (VECTOR(int64_t, 16))((-7L), (VECTOR(int64_t, 4))((-7L), (VECTOR(int64_t, 2))((-7L), 0x0960DEB9A8938DFBL), 0x0960DEB9A8938DFBL), 0x0960DEB9A8938DFBL, (-7L), 0x0960DEB9A8938DFBL, (VECTOR(int64_t, 2))((-7L), 0x0960DEB9A8938DFBL), (VECTOR(int64_t, 2))((-7L), 0x0960DEB9A8938DFBL), (-7L), 0x0960DEB9A8938DFBL, (-7L), 0x0960DEB9A8938DFBL);
        int16_t l_1298 = 1L;
        uint8_t l_1300 = 0UL;
        uint64_t **l_1301 = &l_722;
        uint32_t **l_1302[3];
        int i;
        for (i = 0; i < 3; i++)
            l_1302[i] = &p_2976->g_70;
        (*p_2976->g_133) = ((*p_40) , (l_1270 , l_1271[8]));
        if (l_1029)
            goto lbl_1303;
        ++l_1274[8][0];
lbl_1303:
        (*p_2976->g_133) = func_64(&p_2976->g_355, (*l_1230), (((4294967289UL <= (l_1300 |= ((*p_2976->g_355) |= (p_2976->g_634.s5 , ((l_1299 = (p_39 <= (safe_mod_func_int8_t_s_s(((safe_mod_func_uint8_t_u_u(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))(l_1283, ((VECTOR(uint8_t, 2))(p_2976->g_1284.yy)), 0UL)).even - ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))(rotate(((VECTOR(uint8_t, 16))(add_sat(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 8))(l_1291.sfd3fa53f)).s2202340642016062 + ((VECTOR(uint8_t, 4))(min(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))(p_2976->g_1292.xxxxxyyyyxxyyxyy)).s4b ^ ((VECTOR(uint8_t, 8))(0x03L, (((&l_830 != ((*l_1294) = l_1293)) || ((safe_rshift_func_uint8_t_u_u((((VECTOR(int64_t, 16))(l_1297.sa48ab05be9da19bb)).sb > (2UL != p_41)), 0)) , GROUP_DIVERGE(0, 1))) > p_2976->g_582.s0), (*l_1230), 1UL, l_1298, 1UL, 0x33L, 1UL)).s34))).xyxx, (uint8_t)255UL))).yzxxzxwzwyxyyyxy))), ((VECTOR(uint8_t, 16))(0x03L))))).s534e, ((VECTOR(uint8_t, 4))(247UL))))).yyywzyzw + ((VECTOR(uint8_t, 8))(0x29L))))).odd + ((VECTOR(uint8_t, 4))(0x4CL))))).even))).hi, (*l_1230))) , p_39), p_39)))) && 1L))))) || p_2976->g_783.w) , l_1301), l_1302[2], p_2976);
        (*p_2976->g_133) = (**l_677);
    }
    else
    { /* block id: 363 */
        uint8_t *l_1306 = &p_2976->g_451;
        uint8_t *l_1307 = (void*)0;
        uint8_t *l_1308 = (void*)0;
        uint8_t *l_1309 = (void*)0;
        int32_t l_1310[3];
        int32_t l_1322 = 4L;
        int64_t *l_1339 = &p_2976->g_281;
        VECTOR(int64_t, 16) l_1353 = (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x489B74D953AEA992L), 0x489B74D953AEA992L), 0x489B74D953AEA992L, (-1L), 0x489B74D953AEA992L, (VECTOR(int64_t, 2))((-1L), 0x489B74D953AEA992L), (VECTOR(int64_t, 2))((-1L), 0x489B74D953AEA992L), (-1L), 0x489B74D953AEA992L, (-1L), 0x489B74D953AEA992L);
        uint32_t l_1405 = 4294967295UL;
        VECTOR(int8_t, 16) l_1420 = (VECTOR(int8_t, 16))(0x49L, (VECTOR(int8_t, 4))(0x49L, (VECTOR(int8_t, 2))(0x49L, (-7L)), (-7L)), (-7L), 0x49L, (-7L), (VECTOR(int8_t, 2))(0x49L, (-7L)), (VECTOR(int8_t, 2))(0x49L, (-7L)), 0x49L, (-7L), 0x49L, (-7L));
        VECTOR(uint32_t, 4) l_1450 = (VECTOR(uint32_t, 4))(0xB9575830L, (VECTOR(uint32_t, 2))(0xB9575830L, 0x35682B6FL), 0x35682B6FL);
        VECTOR(uint8_t, 16) l_1468 = (VECTOR(uint8_t, 16))(0x29L, (VECTOR(uint8_t, 4))(0x29L, (VECTOR(uint8_t, 2))(0x29L, 0x0BL), 0x0BL), 0x0BL, 0x29L, 0x0BL, (VECTOR(uint8_t, 2))(0x29L, 0x0BL), (VECTOR(uint8_t, 2))(0x29L, 0x0BL), 0x29L, 0x0BL, 0x29L, 0x0BL);
        VECTOR(int16_t, 2) l_1473 = (VECTOR(int16_t, 2))(0L, 0x0D15L);
        VECTOR(int16_t, 8) l_1475 = (VECTOR(int16_t, 8))(0x62CBL, (VECTOR(int16_t, 4))(0x62CBL, (VECTOR(int16_t, 2))(0x62CBL, 1L), 1L), 1L, 0x62CBL, 1L);
        VECTOR(int8_t, 2) l_1484 = (VECTOR(int8_t, 2))((-2L), 6L);
        int16_t *l_1487[8][2][1] = {{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}}};
        uint32_t ***l_1513 = (void*)0;
        uint64_t **l_1542 = (void*)0;
        VECTOR(uint64_t, 16) l_1546 = (VECTOR(uint64_t, 16))(9UL, (VECTOR(uint64_t, 4))(9UL, (VECTOR(uint64_t, 2))(9UL, 0xCF23C4D0E0DA9697L), 0xCF23C4D0E0DA9697L), 0xCF23C4D0E0DA9697L, 9UL, 0xCF23C4D0E0DA9697L, (VECTOR(uint64_t, 2))(9UL, 0xCF23C4D0E0DA9697L), (VECTOR(uint64_t, 2))(9UL, 0xCF23C4D0E0DA9697L), 9UL, 0xCF23C4D0E0DA9697L, 9UL, 0xCF23C4D0E0DA9697L);
        int64_t l_1561 = 0x339769BF3FCA428CL;
        int32_t l_1562 = 0x7B5264F9L;
        int32_t *l_1608 = &p_2976->g_613;
        int32_t *l_1614 = &l_1428;
        uint64_t *l_1618 = &l_930;
        VECTOR(uint32_t, 8) l_1621 = (VECTOR(uint32_t, 8))(0xEF339200L, (VECTOR(uint32_t, 4))(0xEF339200L, (VECTOR(uint32_t, 2))(0xEF339200L, 0x9E56E623L), 0x9E56E623L), 0x9E56E623L, 0xEF339200L, 0x9E56E623L);
        int64_t **l_1679 = (void*)0;
        VECTOR(uint16_t, 8) l_1704 = (VECTOR(uint16_t, 8))(0x1F14L, (VECTOR(uint16_t, 4))(0x1F14L, (VECTOR(uint16_t, 2))(0x1F14L, 8UL), 8UL), 8UL, 0x1F14L, 8UL);
        int32_t *l_1714 = (void*)0;
        int32_t *l_1715 = (void*)0;
        int32_t *l_1716 = (void*)0;
        int32_t *l_1717[1];
        VECTOR(uint16_t, 2) l_1726 = (VECTOR(uint16_t, 2))(0x847BL, 65526UL);
        VECTOR(uint16_t, 16) l_1728 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x4214L), 0x4214L), 0x4214L, 1UL, 0x4214L, (VECTOR(uint16_t, 2))(1UL, 0x4214L), (VECTOR(uint16_t, 2))(1UL, 0x4214L), 1UL, 0x4214L, 1UL, 0x4214L);
        VECTOR(uint16_t, 16) l_1729 = (VECTOR(uint16_t, 16))(0x9931L, (VECTOR(uint16_t, 4))(0x9931L, (VECTOR(uint16_t, 2))(0x9931L, 0xB8B3L), 0xB8B3L), 0xB8B3L, 0x9931L, 0xB8B3L, (VECTOR(uint16_t, 2))(0x9931L, 0xB8B3L), (VECTOR(uint16_t, 2))(0x9931L, 0xB8B3L), 0x9931L, 0xB8B3L, 0x9931L, 0xB8B3L);
        int64_t l_1730[4] = {(-1L),(-1L),(-1L),(-1L)};
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_1310[i] = (-1L);
        for (i = 0; i < 1; i++)
            l_1717[i] = (void*)0;
        if ((safe_rshift_func_uint8_t_u_u((((l_1310[1] ^= ((*l_1306) &= 255UL)) < p_41) > ((*l_1230) || (p_41 <= (((0x0CL || p_43) & ((((safe_lshift_func_uint16_t_u_u(((((safe_mod_func_uint32_t_u_u(((safe_mod_func_int8_t_s_s((((((VECTOR(int16_t, 8))((((VECTOR(int16_t, 4))((((safe_unary_minus_func_uint8_t_u(((safe_sub_func_int8_t_s_s(0L, p_2976->g_996.s8)) | p_43))) || l_1322) > (*p_40)), ((VECTOR(int16_t, 2))((-1L))), (-10L))).zywwwwyy || ((VECTOR(int16_t, 8))(0x065DL))))).s6 > 0x5C3AL) , p_2976->g_848.y) , p_2976->g_46.x), (*l_1230))) , 4294967290UL), 0x3203AED0L)) <= (*p_2976->g_355)) , (void*)0) != (*l_677)), 7)) > p_39) | 0L) >= p_41)) < 0x33L)))), 2)))
        { /* block id: 366 */
            VECTOR(int64_t, 8) l_1350 = (VECTOR(int64_t, 8))(2L, (VECTOR(int64_t, 4))(2L, (VECTOR(int64_t, 2))(2L, 0L), 0L), 0L, 2L, 0L);
            VECTOR(uint16_t, 4) l_1396 = (VECTOR(uint16_t, 4))(0xD2A8L, (VECTOR(uint16_t, 2))(0xD2A8L, 0x31D9L), 0x31D9L);
            int32_t *l_1406 = &l_1029;
            int64_t *l_1426 = &p_2976->g_1110;
            VECTOR(uint32_t, 4) l_1449 = (VECTOR(uint32_t, 4))(0x815971F2L, (VECTOR(uint32_t, 2))(0x815971F2L, 4294967286UL), 4294967286UL);
            VECTOR(uint32_t, 2) l_1451 = (VECTOR(uint32_t, 2))(0xC32953ACL, 0x93736F11L);
            uint32_t l_1492[7] = {9UL,0x0965A4E6L,9UL,9UL,0x0965A4E6L,9UL,9UL};
            int32_t l_1563 = 0x46D0B5DEL;
            int32_t l_1565 = (-1L);
            int32_t l_1573[3][10][1] = {{{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L}},{{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L}},{{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L}}};
            int32_t *l_1588[4][4][4] = {{{&p_2976->g_613,&p_2976->g_613,&p_2976->g_613,&p_2976->g_613},{&p_2976->g_613,&p_2976->g_613,&p_2976->g_613,&p_2976->g_613},{&p_2976->g_613,&p_2976->g_613,&p_2976->g_613,&p_2976->g_613},{&p_2976->g_613,&p_2976->g_613,&p_2976->g_613,&p_2976->g_613}},{{&p_2976->g_613,&p_2976->g_613,&p_2976->g_613,&p_2976->g_613},{&p_2976->g_613,&p_2976->g_613,&p_2976->g_613,&p_2976->g_613},{&p_2976->g_613,&p_2976->g_613,&p_2976->g_613,&p_2976->g_613},{&p_2976->g_613,&p_2976->g_613,&p_2976->g_613,&p_2976->g_613}},{{&p_2976->g_613,&p_2976->g_613,&p_2976->g_613,&p_2976->g_613},{&p_2976->g_613,&p_2976->g_613,&p_2976->g_613,&p_2976->g_613},{&p_2976->g_613,&p_2976->g_613,&p_2976->g_613,&p_2976->g_613},{&p_2976->g_613,&p_2976->g_613,&p_2976->g_613,&p_2976->g_613}},{{&p_2976->g_613,&p_2976->g_613,&p_2976->g_613,&p_2976->g_613},{&p_2976->g_613,&p_2976->g_613,&p_2976->g_613,&p_2976->g_613},{&p_2976->g_613,&p_2976->g_613,&p_2976->g_613,&p_2976->g_613},{&p_2976->g_613,&p_2976->g_613,&p_2976->g_613,&p_2976->g_613}}};
            int i, j, k;
            (*l_1230) = (safe_mul_func_int8_t_s_s((safe_unary_minus_func_uint16_t_u(0x7E06L)), (safe_lshift_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), 14))));
            if (((safe_div_func_int32_t_s_s(((***l_677) & (((safe_div_func_uint64_t_u_u(p_43, ((safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 2))(0x2AL, 0L)).even, 5)) && ((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(1UL, 0UL)), 0x9C29AC7FF5FB5BE3L, 0xBD34CA8123C93BACL)), 0UL, 0x6D89114B546DF580L, 0UL, 18446744073709551609UL)) + ((VECTOR(uint64_t, 8))(l_1336.yxxyyyyx))))).s30 ^ ((VECTOR(uint64_t, 16))(((~p_2976->g_1066.w) && ((!(((*l_1230) = (safe_add_func_int64_t_s_s((((0x73L || (((VECTOR(int64_t, 4))((((VECTOR(int64_t, 4))((-2L), ((VECTOR(int64_t, 2))(0L, 0x61A7E3A97E37776BL)), 5L)) && ((VECTOR(int64_t, 4))((*l_1230), (*l_1230), 0x5BB8F67A3E1B7048L, 0L))))).y > (~p_43))) < (+(***l_677))) >= (-5L)), 18446744073709551615UL))) < l_1310[1])) ^ 0xDE1DL)), 0UL, GROUP_DIVERGE(2, 1), p_43, l_1310[2], 1UL, ((VECTOR(uint64_t, 4))(1UL)), 0xA88B578633FCA8C1L, ((VECTOR(uint64_t, 4))(0x108AE9935734FCC5L)), 18446744073709551609UL)).s9e))), 0UL, 0UL)).x , l_1339) == &p_43)))) | l_1310[2]) <= (*p_40))), 6L)) , (**p_42)))
            { /* block id: 369 */
                int32_t *l_1340 = &l_1029;
                int32_t *l_1341 = (void*)0;
                int32_t *l_1342 = &l_1310[1];
                int32_t *l_1343 = (void*)0;
                int32_t *l_1344 = &l_1029;
                int32_t *l_1345 = &l_1029;
                int32_t *l_1346[1][4] = {{&l_1029,&l_1029,&l_1029,&l_1029}};
                uint64_t l_1347[7] = {0x4C723CCC1211266EL,1UL,0x4C723CCC1211266EL,0x4C723CCC1211266EL,1UL,0x4C723CCC1211266EL,0x4C723CCC1211266EL};
                VECTOR(uint8_t, 4) l_1357 = (VECTOR(uint8_t, 4))(248UL, (VECTOR(uint8_t, 2))(248UL, 0x48L), 0x48L);
                VECTOR(uint8_t, 4) l_1379 = (VECTOR(uint8_t, 4))(0x92L, (VECTOR(uint8_t, 2))(0x92L, 0xD2L), 0xD2L);
                uint8_t *l_1407 = (void*)0;
                uint8_t *l_1408 = (void*)0;
                uint8_t *l_1409 = (void*)0;
                VECTOR(int8_t, 2) l_1421 = (VECTOR(int8_t, 2))(0x06L, 0L);
                int64_t *l_1425 = (void*)0;
                int64_t **l_1424 = &l_1425;
                int32_t l_1427 = 0x6B462EECL;
                int i, j;
                --l_1347[6];
                if (l_1029)
                    goto lbl_1731;
                (*l_1230) &= (((p_43 = ((VECTOR(int64_t, 16))(l_1350.s5763023740764302)).sb) == 3UL) , (&p_40 != (void*)0));
                (*l_1406) = (safe_sub_func_uint8_t_u_u((((VECTOR(int64_t, 8))(l_1353.s0220c66f)).s5 , (l_1322 = ((VECTOR(uint8_t, 4))(sub_sat(((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(0x78L, 0x23L)) + ((VECTOR(uint8_t, 16))(sub_sat(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 16))(abs(((VECTOR(uint8_t, 4))(p_2976->g_1356.s0077)).zyywwxyxxzzzwxxx))).odd ^ ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 4))(l_1357.zwwy)).zzwxywxzxywyywxy ^ ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 4))(p_2976->g_1360.s6373)) + ((VECTOR(uint8_t, 2))(p_2976->g_1361.yw)).xxxx))).zzyzxyzyzxzxzwyx))).odd))).s4543512536020563, ((VECTOR(uint8_t, 16))(p_2976->g_1362.yyyyyxxyxxyxyxyx))))).sb2))).xyxx, ((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 8))(sub_sat(((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))((safe_add_func_uint64_t_u_u(((safe_lshift_func_uint8_t_u_s((p_41 = GROUP_DIVERGE(0, 1)), 7)) < ((safe_add_func_int64_t_s_s((~0x1BD514A1C518B397L), ((*l_1339) = (*l_1344)))) >= 0x71D0L)), l_1350.s1)), ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))(p_2976->g_1373.sd49c)).hi + ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))(0x98L, 0UL)).xyxxyxyx + ((VECTOR(uint8_t, 2))(p_2976->g_1376.yx)).xyyxyxxy))).s45))), 1UL)).odd + ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 16))(l_1379.wzxywzxzwxyywyxy)).odd + ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 2))(0x06L, 1UL)).xxyy + ((VECTOR(uint8_t, 4))(sub_sat(((VECTOR(uint8_t, 16))(((safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(18446744073709551612UL, ((VECTOR(uint64_t, 4))(l_1384.s5205)), ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 8))((safe_mul_func_uint16_t_u_u((((VECTOR(uint32_t, 2))(mad_sat(((VECTOR(uint32_t, 2))(p_2976->g_1389.xy)), ((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 16))(((safe_add_func_uint64_t_u_u((((p_2976->g_678.s5 = (--(*l_722))) <= (((*l_1306) &= (((l_1310[1] = ((VECTOR(uint16_t, 4))(add_sat(((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 2))(l_1396.ww)).yyxxxxyy | ((VECTOR(uint16_t, 2))(9UL, 65535UL)).yxxxyxxy))).lo, ((VECTOR(uint16_t, 2))(clz(((VECTOR(uint16_t, 4))(rotate(((VECTOR(uint16_t, 2))(l_1397.xy)).xxxy, ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 8))(((((safe_lshift_func_int8_t_s_s((((GROUP_DIVERGE(1, 1) | (safe_add_func_uint64_t_u_u(l_1353.s3, (l_1404 != (void*)0)))) | ((l_1405 < (((((*p_2976->g_133) == l_1406) , (*l_1406)) , p_2976->g_762.x) >= 0xABA6L)) < (**p_2976->g_1189))) <= p_43), p_2976->g_996.s7)) <= (*l_1340)) > p_43) > 0UL), 0x3673L, p_2976->g_701.s0, ((VECTOR(uint16_t, 2))(65535UL)), ((VECTOR(uint16_t, 2))(0x517CL)), 4UL)) + ((VECTOR(uint16_t, 8))(65535UL))))).odd))).hi))).yxxy))).z) ^ p_39) , l_1310[0])) ^ 0UL)) <= l_1353.sa), p_43)) , (**p_2976->g_69)), 0UL, (**p_2976->g_69), GROUP_DIVERGE(0, 1), ((VECTOR(uint32_t, 2))(0xA56614C9L)), ((VECTOR(uint32_t, 4))(4294967295UL)), 0xCBFD5932L, ((VECTOR(uint32_t, 4))(0x3DA1854EL)), 0UL)) + ((VECTOR(uint32_t, 16))(0x15E7BF86L))))).s22, ((VECTOR(uint32_t, 2))(0x5F17F0ADL))))).odd | (**p_42)), p_43)), ((VECTOR(uint64_t, 4))(0UL)), 0xD744DB1D96A68969L, 0x51352ABF4428068BL, 0x1B8820969D7B6D0CL)).s14 >> ((VECTOR(uint64_t, 2))(0x9298EA1CC162D9DBL))))), ((VECTOR(uint64_t, 8))(0UL)), 1UL)).sd, FAKE_DIVERGE(p_2976->local_0_offset, get_local_id(0), 10))) == p_39), ((VECTOR(uint8_t, 4))(0UL)), 0x95L, ((VECTOR(uint8_t, 8))(6UL)), 0xF4L, 247UL)).s4239, ((VECTOR(uint8_t, 4))(0x7FL)))))))).yzzzxwwy & ((VECTOR(uint8_t, 8))(1UL)))))))).s55))).yxyx, ((VECTOR(uint8_t, 4))(0x22L))))).wzwywxxz, ((VECTOR(uint8_t, 8))(0x8BL))))).s45, ((VECTOR(uint8_t, 2))(0xAAL))))).yyyy))), ((VECTOR(uint8_t, 4))(0x96L))))).y)), p_43));
                l_1322 = (0UL && ((safe_add_func_uint32_t_u_u((safe_mod_func_uint8_t_u_u((l_1414 == ((((*l_1339) &= ((((*p_2976->g_70) |= (*l_1342)) || ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 4))((safe_mod_func_uint64_t_u_u(((*l_722) = (((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 2))((-10L), 0x624A3808L)).xxyy, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(sub_sat(((VECTOR(int32_t, 16))(p_2976->g_1417.s3312622554154042)), ((VECTOR(int32_t, 8))((-7L), ((VECTOR(int32_t, 4))(l_1418.yzwz)), ((((((((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 2))(0x03L, 0x37L)).xyyxxyxx || ((VECTOR(int8_t, 2))(p_2976->g_1419.s64)).xxyxxxxy))).s05 || ((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 8))(l_1420.s6e1c9573)).s10, ((VECTOR(int8_t, 16))(l_1421.xxyyyyyxxyxyxxxy)).s20)))))), ((VECTOR(int8_t, 8))(sub_sat(((VECTOR(int8_t, 2))(0L, 0x2EL)).yyxyxyyy, ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 16))((safe_mod_func_int64_t_s_s((((*l_1424) = &p_39) != ((FAKE_DIVERGE(p_2976->group_2_offset, get_group_id(2), 10) , ((**p_42) , (5UL <= (((void*)0 != &l_677) && (p_2976->g_611.s2 , p_39))))) , l_1426)), (*l_1345))), 3L, (-5L), ((VECTOR(int8_t, 2))(8L)), ((VECTOR(int8_t, 2))(2L)), ((VECTOR(int8_t, 8))(0x14L)), 0x2BL)).sff, ((VECTOR(int8_t, 2))(1L))))), l_1310[0], 0L, 1L, 4L, 6L, 0x65L)).s7551753243275121 <= ((VECTOR(int8_t, 16))(0x04L))))).s9f, ((VECTOR(int8_t, 2))(0x10L))))).xxyy <= ((VECTOR(int8_t, 4))(0x67L))))).wzzywyyz))).s07))).xxxx >= ((VECTOR(int8_t, 4))(1L))))).even && ((VECTOR(int8_t, 2))((-1L)))))).xxyx && ((VECTOR(int8_t, 4))(8L))))), ((VECTOR(int8_t, 4))(0L))))).z > p_43) | l_1353.sd) > p_41) < (*l_1342)) > l_1427) , 8L), (-5L), 0x5B8A1D73L)).s3320777465043262))).sea != ((VECTOR(int32_t, 2))(1L))))), (-1L), 0x5FEF8B23L))))).z || (*l_1406))), p_39)), 1L, 0L, 0x11DA146CL)), ((VECTOR(int32_t, 4))(9L)), ((VECTOR(int32_t, 4))(2L))))).z, (**p_2976->g_380), 0x4145CF19L, ((VECTOR(int32_t, 2))(0x5F13FA31L)), (-9L), 0x732DFA1AL, 0x474E3F5DL)).lo && ((VECTOR(int32_t, 4))((-1L)))))).y) && (*l_1406))) <= p_39) , (void*)0)), 0x4FL)), l_1420.s9)) <= l_1428));
            }
            else
            { /* block id: 386 */
                uint8_t l_1456[7];
                VECTOR(int8_t, 4) l_1485 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-3L)), (-3L));
                int16_t **l_1488 = &l_1487[4][0][0];
                int32_t l_1493 = 0x01AD76CAL;
                VECTOR(uint64_t, 4) l_1526 = (VECTOR(uint64_t, 4))(0x2BDEA00969A4DA90L, (VECTOR(uint64_t, 2))(0x2BDEA00969A4DA90L, 0x8AF00052B10B3FF0L), 0x8AF00052B10B3FF0L);
                int32_t l_1555 = 0x45CD574FL;
                int32_t l_1558 = 0x095B71E4L;
                int32_t l_1559 = 1L;
                int32_t l_1560 = 1L;
                int32_t l_1564 = 0x0A4F4294L;
                VECTOR(int32_t, 16) l_1566 = (VECTOR(int32_t, 16))(0x62B80E37L, (VECTOR(int32_t, 4))(0x62B80E37L, (VECTOR(int32_t, 2))(0x62B80E37L, 0x3595F421L), 0x3595F421L), 0x3595F421L, 0x62B80E37L, 0x3595F421L, (VECTOR(int32_t, 2))(0x62B80E37L, 0x3595F421L), (VECTOR(int32_t, 2))(0x62B80E37L, 0x3595F421L), 0x62B80E37L, 0x3595F421L, 0x62B80E37L, 0x3595F421L);
                int32_t l_1593[5][5][4] = {{{0x0FA645A9L,0x76F44782L,0x67924754L,0x264D439EL},{0x0FA645A9L,0x76F44782L,0x67924754L,0x264D439EL},{0x0FA645A9L,0x76F44782L,0x67924754L,0x264D439EL},{0x0FA645A9L,0x76F44782L,0x67924754L,0x264D439EL},{0x0FA645A9L,0x76F44782L,0x67924754L,0x264D439EL}},{{0x0FA645A9L,0x76F44782L,0x67924754L,0x264D439EL},{0x0FA645A9L,0x76F44782L,0x67924754L,0x264D439EL},{0x0FA645A9L,0x76F44782L,0x67924754L,0x264D439EL},{0x0FA645A9L,0x76F44782L,0x67924754L,0x264D439EL},{0x0FA645A9L,0x76F44782L,0x67924754L,0x264D439EL}},{{0x0FA645A9L,0x76F44782L,0x67924754L,0x264D439EL},{0x0FA645A9L,0x76F44782L,0x67924754L,0x264D439EL},{0x0FA645A9L,0x76F44782L,0x67924754L,0x264D439EL},{0x0FA645A9L,0x76F44782L,0x67924754L,0x264D439EL},{0x0FA645A9L,0x76F44782L,0x67924754L,0x264D439EL}},{{0x0FA645A9L,0x76F44782L,0x67924754L,0x264D439EL},{0x0FA645A9L,0x76F44782L,0x67924754L,0x264D439EL},{0x0FA645A9L,0x76F44782L,0x67924754L,0x264D439EL},{0x0FA645A9L,0x76F44782L,0x67924754L,0x264D439EL},{0x0FA645A9L,0x76F44782L,0x67924754L,0x264D439EL}},{{0x0FA645A9L,0x76F44782L,0x67924754L,0x264D439EL},{0x0FA645A9L,0x76F44782L,0x67924754L,0x264D439EL},{0x0FA645A9L,0x76F44782L,0x67924754L,0x264D439EL},{0x0FA645A9L,0x76F44782L,0x67924754L,0x264D439EL},{0x0FA645A9L,0x76F44782L,0x67924754L,0x264D439EL}}};
                uint32_t **l_1609 = &p_2976->g_355;
                int32_t **l_1610 = &l_1152;
                int8_t *l_1611 = (void*)0;
                int8_t *l_1612 = (void*)0;
                int8_t *l_1613[8][6] = {{(void*)0,&l_1269,(void*)0,(void*)0,(void*)0,&l_1269},{(void*)0,&l_1269,(void*)0,(void*)0,(void*)0,&l_1269},{(void*)0,&l_1269,(void*)0,(void*)0,(void*)0,&l_1269},{(void*)0,&l_1269,(void*)0,(void*)0,(void*)0,&l_1269},{(void*)0,&l_1269,(void*)0,(void*)0,(void*)0,&l_1269},{(void*)0,&l_1269,(void*)0,(void*)0,(void*)0,&l_1269},{(void*)0,&l_1269,(void*)0,(void*)0,(void*)0,&l_1269},{(void*)0,&l_1269,(void*)0,(void*)0,(void*)0,&l_1269}};
                int i, j, k;
                for (i = 0; i < 7; i++)
                    l_1456[i] = 0UL;
                for (l_1158 = 0; (l_1158 == 21); ++l_1158)
                { /* block id: 389 */
                    uint64_t l_1436[5][5][5] = {{{0x777B9341F71746E4L,0x5BFB73286E80966AL,0x7C2BE331059B2A8BL,0x62B3A682C0112937L,0x5468E60E68FC9E2EL},{0x777B9341F71746E4L,0x5BFB73286E80966AL,0x7C2BE331059B2A8BL,0x62B3A682C0112937L,0x5468E60E68FC9E2EL},{0x777B9341F71746E4L,0x5BFB73286E80966AL,0x7C2BE331059B2A8BL,0x62B3A682C0112937L,0x5468E60E68FC9E2EL},{0x777B9341F71746E4L,0x5BFB73286E80966AL,0x7C2BE331059B2A8BL,0x62B3A682C0112937L,0x5468E60E68FC9E2EL},{0x777B9341F71746E4L,0x5BFB73286E80966AL,0x7C2BE331059B2A8BL,0x62B3A682C0112937L,0x5468E60E68FC9E2EL}},{{0x777B9341F71746E4L,0x5BFB73286E80966AL,0x7C2BE331059B2A8BL,0x62B3A682C0112937L,0x5468E60E68FC9E2EL},{0x777B9341F71746E4L,0x5BFB73286E80966AL,0x7C2BE331059B2A8BL,0x62B3A682C0112937L,0x5468E60E68FC9E2EL},{0x777B9341F71746E4L,0x5BFB73286E80966AL,0x7C2BE331059B2A8BL,0x62B3A682C0112937L,0x5468E60E68FC9E2EL},{0x777B9341F71746E4L,0x5BFB73286E80966AL,0x7C2BE331059B2A8BL,0x62B3A682C0112937L,0x5468E60E68FC9E2EL},{0x777B9341F71746E4L,0x5BFB73286E80966AL,0x7C2BE331059B2A8BL,0x62B3A682C0112937L,0x5468E60E68FC9E2EL}},{{0x777B9341F71746E4L,0x5BFB73286E80966AL,0x7C2BE331059B2A8BL,0x62B3A682C0112937L,0x5468E60E68FC9E2EL},{0x777B9341F71746E4L,0x5BFB73286E80966AL,0x7C2BE331059B2A8BL,0x62B3A682C0112937L,0x5468E60E68FC9E2EL},{0x777B9341F71746E4L,0x5BFB73286E80966AL,0x7C2BE331059B2A8BL,0x62B3A682C0112937L,0x5468E60E68FC9E2EL},{0x777B9341F71746E4L,0x5BFB73286E80966AL,0x7C2BE331059B2A8BL,0x62B3A682C0112937L,0x5468E60E68FC9E2EL},{0x777B9341F71746E4L,0x5BFB73286E80966AL,0x7C2BE331059B2A8BL,0x62B3A682C0112937L,0x5468E60E68FC9E2EL}},{{0x777B9341F71746E4L,0x5BFB73286E80966AL,0x7C2BE331059B2A8BL,0x62B3A682C0112937L,0x5468E60E68FC9E2EL},{0x777B9341F71746E4L,0x5BFB73286E80966AL,0x7C2BE331059B2A8BL,0x62B3A682C0112937L,0x5468E60E68FC9E2EL},{0x777B9341F71746E4L,0x5BFB73286E80966AL,0x7C2BE331059B2A8BL,0x62B3A682C0112937L,0x5468E60E68FC9E2EL},{0x777B9341F71746E4L,0x5BFB73286E80966AL,0x7C2BE331059B2A8BL,0x62B3A682C0112937L,0x5468E60E68FC9E2EL},{0x777B9341F71746E4L,0x5BFB73286E80966AL,0x7C2BE331059B2A8BL,0x62B3A682C0112937L,0x5468E60E68FC9E2EL}},{{0x777B9341F71746E4L,0x5BFB73286E80966AL,0x7C2BE331059B2A8BL,0x62B3A682C0112937L,0x5468E60E68FC9E2EL},{0x777B9341F71746E4L,0x5BFB73286E80966AL,0x7C2BE331059B2A8BL,0x62B3A682C0112937L,0x5468E60E68FC9E2EL},{0x777B9341F71746E4L,0x5BFB73286E80966AL,0x7C2BE331059B2A8BL,0x62B3A682C0112937L,0x5468E60E68FC9E2EL},{0x777B9341F71746E4L,0x5BFB73286E80966AL,0x7C2BE331059B2A8BL,0x62B3A682C0112937L,0x5468E60E68FC9E2EL},{0x777B9341F71746E4L,0x5BFB73286E80966AL,0x7C2BE331059B2A8BL,0x62B3A682C0112937L,0x5468E60E68FC9E2EL}}};
                    int8_t *l_1457 = (void*)0;
                    int8_t *l_1458 = (void*)0;
                    int8_t *l_1459 = &l_1299;
                    int i, j, k;
                    if (((safe_div_func_int8_t_s_s(((*l_1459) = ((VECTOR(int8_t, 16))(0L, (-10L), ((VECTOR(int8_t, 8))(p_2976->g_1433.yxxxxyyy)), (-1L), (~(safe_mul_func_int16_t_s_s((l_1436[2][4][3] , (((((safe_div_func_int8_t_s_s((~(safe_sub_func_int16_t_s_s((safe_div_func_uint16_t_u_u((((0x4A69L | p_39) >= ((VECTOR(uint32_t, 16))(add_sat(((VECTOR(uint32_t, 16))(hadd(((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 8))(l_1449.yxwxzwyx)).even + ((VECTOR(uint32_t, 4))(l_1450.xwyx))))).even - ((VECTOR(uint32_t, 8))(l_1451.xyyxxyxx)).s51))).xxyyyxxyyyyxxxxy - ((VECTOR(uint32_t, 16))(rhadd(((VECTOR(uint32_t, 16))(upsample(((VECTOR(uint16_t, 8))((((p_41 , p_41) > (((((safe_rshift_func_uint8_t_u_u(0x62L, 0)) ^ (FAKE_DIVERGE(p_2976->group_0_offset, get_group_id(0), 10) >= 0x47797CA5EF9477F8L)) , ((p_43 ^= (-3L)) >= (safe_mod_func_int16_t_s_s(((void*)0 == l_1426), 0x2D54L)))) != (*l_1406)) == p_41)) , 0x3F7AL), GROUP_DIVERGE(0, 1), p_41, ((VECTOR(uint16_t, 4))(0x9054L)), 0xFFA7L)).s3605635471251771, ((VECTOR(uint16_t, 16))(1UL))))), ((VECTOR(uint32_t, 16))(0x2BF0614BL)))))))), ((VECTOR(uint32_t, 16))(0x6C040434L))))), ((VECTOR(uint32_t, 16))(4294967286UL))))).s1) ^ (*l_1406)), l_1456[4])), (*l_1406)))), p_39)) , (***l_677)) > (**p_42)) <= (**p_42)) & p_39)), p_2976->g_996.s7))), p_2976->g_884.y, 0x75L, 0x61L, 0x71L)).sf), p_39)) == p_39))
                    { /* block id: 392 */
                        return (*p_2976->g_69);
                    }
                    else
                    { /* block id: 394 */
                        return (*p_2976->g_69);
                    }
                }
                if (((safe_add_func_uint32_t_u_u((((l_1493 |= (((((*l_1306) = ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))(0UL, 0x18L)).yyxxyyyy + ((VECTOR(uint8_t, 8))(0x2EL, ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(l_1468.sbf)) + ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))(abs_diff(((VECTOR(int8_t, 8))(hadd(((VECTOR(int8_t, 16))(p_2976->g_1471.wxxwxxxwyxxyxxxw)).lo, ((VECTOR(int8_t, 8))(p_2976->g_1472.xxyxyyxx))))).s0436176763373322, ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 16))(0x67L, 0x67L, (((*l_1406) >= (p_2976->g_1063.s7 = l_1456[4])) != (!(GROUP_DIVERGE(0, 1) >= ((((VECTOR(int16_t, 16))(0x5728L, p_43, ((VECTOR(int16_t, 4))(safe_clamp_func(VECTOR(int16_t, 4),VECTOR(int16_t, 4),((VECTOR(int16_t, 2))(l_1473.xx)).yyxx, ((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(p_2976->g_1474.s58)).hi, ((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 8))(l_1475.s20424321)).s26, ((VECTOR(int16_t, 4))(upsample(((VECTOR(int8_t, 2))(l_1476.s96)).yyxx, ((VECTOR(uint8_t, 4))(mul_hi(((VECTOR(uint8_t, 4))(mad_hi(((VECTOR(uint8_t, 2))(0x24L, 0xADL)).xyxy, ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 4))(l_1481.yzwx)).zzxxyzyyzzwwywzx + ((VECTOR(uint8_t, 8))(p_2976->g_1482.wwxxwzwx)).s4240523675102551))).hi + ((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 8))(l_1483.s65653677)).even, ((VECTOR(uint8_t, 2))(255UL, 0x3DL)).xyxy))).zxzxywxx))).hi, ((VECTOR(uint8_t, 8))(abs(((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 4))(l_1484.xyxx)).ywxzxwww, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),VECTOR(int8_t, 4),((VECTOR(int8_t, 4))(l_1485.xyyw)), ((VECTOR(int8_t, 2))(p_2976->g_1486.s36)).yxyy, ((VECTOR(int8_t, 2))(0x5EL, 1L)).xyxy))), 9L, (((((*l_1488) = l_1487[4][0][0]) != &p_2976->g_1165) , (**p_42)) || (**p_42)), (-1L), ((((*l_1152) = ((safe_unary_minus_func_uint32_t_u(l_1485.x)) || (safe_div_func_int32_t_s_s(((((&p_2976->g_397 != (void*)0) == 4UL) == l_1456[5]) >= p_41), l_1456[0])))) , (*l_1406)) != 0x0B3DB1EBFA75EF7DL), p_2976->g_887, 0x49L, ((VECTOR(int8_t, 2))(0x2FL)), l_1420.s0, (*l_1230), 0x34L, 3L)).even))).s65, (int8_t)p_2976->g_763.x))).yyxxxyyy))).even))), ((VECTOR(uint8_t, 4))(255UL)))))))).hi))), 0L)).hi, ((VECTOR(int16_t, 2))(1L))))).xyxy, ((VECTOR(int16_t, 4))(0x33D7L))))), ((VECTOR(int16_t, 8))(0x6138L)), 0x029CL, 0x6002L)).s5 , 0x3033B05E31A5423DL) > p_41)))), ((VECTOR(int8_t, 2))(0x05L)), 1L, ((VECTOR(int8_t, 4))(0x1EL)), ((VECTOR(int8_t, 4))(0x13L)), 0x09L, 0x15L)), ((VECTOR(int8_t, 16))((-6L)))))).s2d == ((VECTOR(int8_t, 2))(0x19L))))), ((VECTOR(int8_t, 2))(0x06L)), 0x66L, 0L, 0x58L, 0L)), ((VECTOR(int8_t, 8))(0x39L))))).lo == ((VECTOR(int8_t, 4))(0x5BL))))).zwzzzyzxzwywzzzy))).s4c + ((VECTOR(uint8_t, 2))(0xADL)))))))), (***l_677), p_43, 0xF5L, (*l_1406), 0xFEL, 0x87L)).s67, ((VECTOR(uint8_t, 2))(0x5CL))))).yxxx - ((VECTOR(uint8_t, 4))(255UL))))).z, l_1492[5], 250UL, ((VECTOR(uint8_t, 4))(1UL))))))).s7) <= 0xC6L) , p_2976->g_2) , l_1405)) == GROUP_DIVERGE(2, 1)) , (*p_2976->g_70)), (-9L))) ^ (*l_1406)))
                { /* block id: 403 */
                    uint32_t l_1494 = 4294967292UL;
                    int64_t ***l_1503 = &p_2976->g_1501;
                    int64_t ***l_1505 = &l_1504;
                    int64_t ***l_1507[2];
                    VECTOR(uint64_t, 4) l_1514 = (VECTOR(uint64_t, 4))(0x9BBAC0C857872E9FL, (VECTOR(uint64_t, 2))(0x9BBAC0C857872E9FL, 0x4A67578D4DAF6C4EL), 0x4A67578D4DAF6C4EL);
                    VECTOR(uint64_t, 16) l_1525 = (VECTOR(uint64_t, 16))(0xFE10F79A036E9958L, (VECTOR(uint64_t, 4))(0xFE10F79A036E9958L, (VECTOR(uint64_t, 2))(0xFE10F79A036E9958L, 18446744073709551607UL), 18446744073709551607UL), 18446744073709551607UL, 0xFE10F79A036E9958L, 18446744073709551607UL, (VECTOR(uint64_t, 2))(0xFE10F79A036E9958L, 18446744073709551607UL), (VECTOR(uint64_t, 2))(0xFE10F79A036E9958L, 18446744073709551607UL), 0xFE10F79A036E9958L, 18446744073709551607UL, 0xFE10F79A036E9958L, 18446744073709551607UL);
                    uint32_t ***l_1538 = &l_654;
                    uint32_t ****l_1537[4][9] = {{&l_1538,&l_1538,&l_1538,&l_1538,&l_1538,&l_1538,&l_1538,&l_1538,&l_1538},{&l_1538,&l_1538,&l_1538,&l_1538,&l_1538,&l_1538,&l_1538,&l_1538,&l_1538},{&l_1538,&l_1538,&l_1538,&l_1538,&l_1538,&l_1538,&l_1538,&l_1538,&l_1538},{&l_1538,&l_1538,&l_1538,&l_1538,&l_1538,&l_1538,&l_1538,&l_1538,&l_1538}};
                    int64_t l_1541 = 0x7094A8490D42AA50L;
                    int32_t *l_1543 = &l_1428;
                    VECTOR(uint64_t, 2) l_1545 = (VECTOR(uint64_t, 2))(6UL, 1UL);
                    int32_t l_1551 = 0x5F73067AL;
                    VECTOR(int32_t, 16) l_1557 = (VECTOR(int32_t, 16))((-7L), (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), (-7L)), (-7L)), (-7L), (-7L), (-7L), (VECTOR(int32_t, 2))((-7L), (-7L)), (VECTOR(int32_t, 2))((-7L), (-7L)), (-7L), (-7L), (-7L), (-7L));
                    uint16_t l_1567 = 0xA535L;
                    int32_t *l_1570 = (void*)0;
                    int32_t *l_1571 = &l_1558;
                    int32_t *l_1572[8][4][4] = {{{(void*)0,&l_1322,&l_1562,&l_1562},{(void*)0,&l_1322,&l_1562,&l_1562},{(void*)0,&l_1322,&l_1562,&l_1562},{(void*)0,&l_1322,&l_1562,&l_1562}},{{(void*)0,&l_1322,&l_1562,&l_1562},{(void*)0,&l_1322,&l_1562,&l_1562},{(void*)0,&l_1322,&l_1562,&l_1562},{(void*)0,&l_1322,&l_1562,&l_1562}},{{(void*)0,&l_1322,&l_1562,&l_1562},{(void*)0,&l_1322,&l_1562,&l_1562},{(void*)0,&l_1322,&l_1562,&l_1562},{(void*)0,&l_1322,&l_1562,&l_1562}},{{(void*)0,&l_1322,&l_1562,&l_1562},{(void*)0,&l_1322,&l_1562,&l_1562},{(void*)0,&l_1322,&l_1562,&l_1562},{(void*)0,&l_1322,&l_1562,&l_1562}},{{(void*)0,&l_1322,&l_1562,&l_1562},{(void*)0,&l_1322,&l_1562,&l_1562},{(void*)0,&l_1322,&l_1562,&l_1562},{(void*)0,&l_1322,&l_1562,&l_1562}},{{(void*)0,&l_1322,&l_1562,&l_1562},{(void*)0,&l_1322,&l_1562,&l_1562},{(void*)0,&l_1322,&l_1562,&l_1562},{(void*)0,&l_1322,&l_1562,&l_1562}},{{(void*)0,&l_1322,&l_1562,&l_1562},{(void*)0,&l_1322,&l_1562,&l_1562},{(void*)0,&l_1322,&l_1562,&l_1562},{(void*)0,&l_1322,&l_1562,&l_1562}},{{(void*)0,&l_1322,&l_1562,&l_1562},{(void*)0,&l_1322,&l_1562,&l_1562},{(void*)0,&l_1322,&l_1562,&l_1562},{(void*)0,&l_1322,&l_1562,&l_1562}}};
                    int i, j, k;
                    for (i = 0; i < 2; i++)
                        l_1507[i] = (void*)0;
                    ++l_1494;
                    if ((safe_add_func_uint8_t_u_u((safe_sub_func_int64_t_s_s(((((*l_1503) = p_2976->g_1501) != (p_2976->g_1508 = (l_1506 = ((*l_1505) = l_1504)))) ^ (((safe_lshift_func_uint16_t_u_u(((p_41 ^ (((safe_mod_func_uint8_t_u_u((&p_2976->g_354 == l_1513), 0x75L)) ^ ((VECTOR(uint64_t, 4))(mad_sat(((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 16))(l_1514.zxxzywxxyyzzwxxw)).se5 & ((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 2))(rhadd(((VECTOR(uint64_t, 2))(clz(((VECTOR(uint64_t, 4))(rhadd(((VECTOR(uint64_t, 16))(mad_hi(((VECTOR(uint64_t, 16))(l_1519.sdc62cdb83f3078f9)), ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 2))(p_2976->g_1522.s51)) + ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(l_1525.sfa)), 0x4C2C496EAED538A4L, 0x870AE305EBC3BEF5L)).odd + ((VECTOR(uint64_t, 4))(l_1526.ywyx)).lo)))))), ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 16))(rhadd(((VECTOR(uint64_t, 2))(l_1529.s46)).xyxyxyyxyxxxyyxy, ((VECTOR(uint64_t, 16))((safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_2976->local_0_offset, get_local_id(0), 10), (0x09L < (((safe_rshift_func_int16_t_s_s(((GROUP_DIVERGE(2, 1) , FAKE_DIVERGE(p_2976->local_2_offset, get_local_id(2), 10)) || (((safe_sub_func_uint64_t_u_u((safe_unary_minus_func_int32_t_s(((((p_2976->g_1539 = &l_654) == (p_2976->g_1008.y , l_1513)) != p_2976->g_6) <= 0L))), (*l_1406))) ^ p_41) || l_1468.sc)), p_2976->g_1540)) > l_1541) || FAKE_DIVERGE(p_2976->group_0_offset, get_group_id(0), 10))))), 0xBF14A77E1C29B8DAL, p_43, 1UL, 18446744073709551615UL, 0x572C9DB0520C9B77L, ((VECTOR(uint64_t, 4))(2UL)), ((VECTOR(uint64_t, 2))(0x71A42E9325C57C7BL)), l_1494, FAKE_DIVERGE(p_2976->group_2_offset, get_group_id(2), 10), 9UL, 0x712FB59B66CFD034L))))).s1c + ((VECTOR(uint64_t, 2))(0xADD2AF7F70AE22CAL))))), p_39, ((VECTOR(uint64_t, 8))(18446744073709551615UL)), 0x05CF06C40E267568L, 1UL, 0x206D7F7070D417CFL)), ((VECTOR(uint64_t, 16))(18446744073709551615UL))))).s5893, ((VECTOR(uint64_t, 4))(0xFD84AD9EFAB9FC9EL))))).hi))), ((VECTOR(uint64_t, 2))(1UL))))).xxxy + ((VECTOR(uint64_t, 4))(6UL))))).x, l_1494, 18446744073709551615UL, 0x3FAA3198CDF7B73FL)).xxwwwxxx & ((VECTOR(uint64_t, 8))(18446744073709551613UL))))).s60 - ((VECTOR(uint64_t, 2))(18446744073709551613UL))))), 0x9820513BED8D28C1L, 0x48C24497433ED6FDL)) ^ ((VECTOR(uint64_t, 4))(0xD98B1DF4E144BF70L))))).hi))).yxyx, ((VECTOR(uint64_t, 4))(18446744073709551615UL)), ((VECTOR(uint64_t, 4))(0x048FFEBD82A4F33EL))))).x) > l_1541)) , p_2976->g_46.y), (*l_1230))) ^ (*p_2976->g_70)) >= p_41)), l_1525.s9)), 246UL)))
                    { /* block id: 410 */
                        int32_t *l_1544 = &l_1310[2];
                        l_1544 = l_1543;
                        (*l_1544) = ((((void*)0 != p_40) >= p_41) || (((VECTOR(uint64_t, 8))(l_1485.x, ((VECTOR(uint64_t, 4))(sub_sat(((VECTOR(uint64_t, 2))(rotate(((VECTOR(uint64_t, 4))(l_1545.xxxx)).hi, ((VECTOR(uint64_t, 4))(max(((VECTOR(uint64_t, 4))(mad_sat(((VECTOR(uint64_t, 4))(l_1546.sc724)), ((VECTOR(uint64_t, 2))(0xFE0E319B6C8D97D5L, 0xB4C6BE2ADD6FAFA8L)).yyxy, ((VECTOR(uint64_t, 2))(0UL, 8UL)).xxyx))), (uint64_t)((safe_rshift_func_uint16_t_u_s((p_43 , p_41), (*l_1544))) && (safe_sub_func_uint8_t_u_u((+((*l_1306) = (*l_1543))), (p_41 = (p_2976->g_756.w <= 0x4808L)))))))).even))).xxxx, ((VECTOR(uint64_t, 4))(5UL))))), 0UL, 0x7DA80479E7CF1279L, 18446744073709551608UL)).s4 || (*l_1543)));
                        return p_40;
                    }
                    else
                    { /* block id: 416 */
                        int32_t *l_1552 = (void*)0;
                        int32_t *l_1553 = &l_1493;
                        int32_t *l_1554 = (void*)0;
                        int32_t *l_1556[3];
                        int i;
                        for (i = 0; i < 3; i++)
                            l_1556[i] = &l_1555;
                        --l_1567;
                    }
                    (*l_1406) = (*l_1406);
                    --l_1574[0];
                }
                else
                { /* block id: 421 */
                    int16_t l_1580 = (-5L);
                    int32_t l_1581 = (-7L);
                    for (l_72 = 8; (l_72 == 15); l_72 = safe_add_func_uint8_t_u_u(l_72, 1))
                    { /* block id: 424 */
                        int32_t *l_1579[3][1];
                        int32_t **l_1587[5][1];
                        int i, j;
                        for (i = 0; i < 3; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_1579[i][j] = &l_1493;
                        }
                        for (i = 0; i < 5; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_1587[i][j] = &l_1152;
                        }
                        --l_1582[1];
                        (*l_1230) = 8L;
                        (*l_1230) = (((safe_mul_func_int8_t_s_s((((1UL <= ((l_1588[3][0][3] = l_1406) == (void*)0)) , (((GROUP_DIVERGE(1, 1) != p_2976->g_884.x) | (safe_mod_func_int64_t_s_s((safe_lshift_func_int8_t_s_u(p_41, ((*l_1306) = ((p_43 & (l_1593[1][1][3] | (p_39 , (safe_add_func_int64_t_s_s((safe_unary_minus_func_int16_t_s(((safe_sub_func_uint32_t_u_u((((p_41 , p_2976->g_193.x) ^ 0x1BL) | (*p_40)), l_1581)) > 1UL))), p_41))))) | 0x25BC8B35E3240D5DL)))), (-6L)))) , 1L)) || p_39), p_39)) ^ 0x64808547AA8F7F1CL) == 5UL);
                        if ((**p_2976->g_133))
                            continue;
                    }
                }
                l_1310[2] ^= ((safe_unary_minus_func_int32_t_s((**p_42))) <= ((*l_1406) = (safe_lshift_func_int16_t_s_u((p_2976->g_46.y &= p_2976->g_1006.w), ((p_2976->g_763.x = ((l_1473.y >= (safe_lshift_func_uint8_t_u_u((((VECTOR(int16_t, 8))((safe_mul_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_u(p_43, (0xE7CFE3A0C6FB9B71L > ((p_41 = (l_1608 != ((*l_1610) = p_40))) == GROUP_DIVERGE(0, 1))))), FAKE_DIVERGE(p_2976->group_1_offset, get_group_id(1), 10))), (*l_1230), (-5L), ((VECTOR(int16_t, 4))(3L)), 0x13F8L)).s0 != l_1420.s4), p_43))) && p_43)) < l_1475.s7)))));
            }
            l_1614 = (void*)0;
        }
        else
        { /* block id: 441 */
            int32_t l_1643 = 0x4E4A47BFL;
            int32_t l_1654 = (-2L);
            VECTOR(uint64_t, 4) l_1662 = (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x69F9328501D8DD58L), 0x69F9328501D8DD58L);
            int32_t **l_1677 = &l_1152;
            int64_t **l_1678 = (void*)0;
            VECTOR(int32_t, 4) l_1695 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0L), 0L);
            VECTOR(int8_t, 8) l_1699 = (VECTOR(int8_t, 8))(0x53L, (VECTOR(int8_t, 4))(0x53L, (VECTOR(int8_t, 2))(0x53L, 0x33L), 0x33L), 0x33L, 0x53L, 0x33L);
            int i;
            if ((**p_42))
            { /* block id: 442 */
                uint64_t *l_1636 = (void*)0;
                uint32_t **l_1637 = (void*)0;
                if (p_2976->g_6)
                    goto lbl_1615;
                (*p_2976->g_1189) = (*p_2976->g_133);
            }
            else
            { /* block id: 445 */
                VECTOR(int8_t, 2) l_1642 = (VECTOR(int8_t, 2))(0L, 0x2BL);
                int8_t *l_1648 = (void*)0;
                int8_t *l_1649[4][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                int32_t *l_1650 = (void*)0;
                int32_t *l_1651 = (void*)0;
                int32_t *l_1652 = (void*)0;
                int32_t *l_1653[6][5][8] = {{{(void*)0,&l_1310[2],(void*)0,&l_1310[2],(void*)0,&l_1562,(void*)0,&p_2976->g_2},{(void*)0,&l_1310[2],(void*)0,&l_1310[2],(void*)0,&l_1562,(void*)0,&p_2976->g_2},{(void*)0,&l_1310[2],(void*)0,&l_1310[2],(void*)0,&l_1562,(void*)0,&p_2976->g_2},{(void*)0,&l_1310[2],(void*)0,&l_1310[2],(void*)0,&l_1562,(void*)0,&p_2976->g_2},{(void*)0,&l_1310[2],(void*)0,&l_1310[2],(void*)0,&l_1562,(void*)0,&p_2976->g_2}},{{(void*)0,&l_1310[2],(void*)0,&l_1310[2],(void*)0,&l_1562,(void*)0,&p_2976->g_2},{(void*)0,&l_1310[2],(void*)0,&l_1310[2],(void*)0,&l_1562,(void*)0,&p_2976->g_2},{(void*)0,&l_1310[2],(void*)0,&l_1310[2],(void*)0,&l_1562,(void*)0,&p_2976->g_2},{(void*)0,&l_1310[2],(void*)0,&l_1310[2],(void*)0,&l_1562,(void*)0,&p_2976->g_2},{(void*)0,&l_1310[2],(void*)0,&l_1310[2],(void*)0,&l_1562,(void*)0,&p_2976->g_2}},{{(void*)0,&l_1310[2],(void*)0,&l_1310[2],(void*)0,&l_1562,(void*)0,&p_2976->g_2},{(void*)0,&l_1310[2],(void*)0,&l_1310[2],(void*)0,&l_1562,(void*)0,&p_2976->g_2},{(void*)0,&l_1310[2],(void*)0,&l_1310[2],(void*)0,&l_1562,(void*)0,&p_2976->g_2},{(void*)0,&l_1310[2],(void*)0,&l_1310[2],(void*)0,&l_1562,(void*)0,&p_2976->g_2},{(void*)0,&l_1310[2],(void*)0,&l_1310[2],(void*)0,&l_1562,(void*)0,&p_2976->g_2}},{{(void*)0,&l_1310[2],(void*)0,&l_1310[2],(void*)0,&l_1562,(void*)0,&p_2976->g_2},{(void*)0,&l_1310[2],(void*)0,&l_1310[2],(void*)0,&l_1562,(void*)0,&p_2976->g_2},{(void*)0,&l_1310[2],(void*)0,&l_1310[2],(void*)0,&l_1562,(void*)0,&p_2976->g_2},{(void*)0,&l_1310[2],(void*)0,&l_1310[2],(void*)0,&l_1562,(void*)0,&p_2976->g_2},{(void*)0,&l_1310[2],(void*)0,&l_1310[2],(void*)0,&l_1562,(void*)0,&p_2976->g_2}},{{(void*)0,&l_1310[2],(void*)0,&l_1310[2],(void*)0,&l_1562,(void*)0,&p_2976->g_2},{(void*)0,&l_1310[2],(void*)0,&l_1310[2],(void*)0,&l_1562,(void*)0,&p_2976->g_2},{(void*)0,&l_1310[2],(void*)0,&l_1310[2],(void*)0,&l_1562,(void*)0,&p_2976->g_2},{(void*)0,&l_1310[2],(void*)0,&l_1310[2],(void*)0,&l_1562,(void*)0,&p_2976->g_2},{(void*)0,&l_1310[2],(void*)0,&l_1310[2],(void*)0,&l_1562,(void*)0,&p_2976->g_2}},{{(void*)0,&l_1310[2],(void*)0,&l_1310[2],(void*)0,&l_1562,(void*)0,&p_2976->g_2},{(void*)0,&l_1310[2],(void*)0,&l_1310[2],(void*)0,&l_1562,(void*)0,&p_2976->g_2},{(void*)0,&l_1310[2],(void*)0,&l_1310[2],(void*)0,&l_1562,(void*)0,&p_2976->g_2},{(void*)0,&l_1310[2],(void*)0,&l_1310[2],(void*)0,&l_1562,(void*)0,&p_2976->g_2},{(void*)0,&l_1310[2],(void*)0,&l_1310[2],(void*)0,&l_1562,(void*)0,&p_2976->g_2}}};
                uint64_t ***l_1657 = &l_721[1][0];
                VECTOR(uint64_t, 4) l_1665 = (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 18446744073709551613UL), 18446744073709551613UL);
                int i, j, k;
                l_1654 &= (p_2976->g_772.s0 , ((*l_1230) != (safe_mul_func_int16_t_s_s((((((*l_1614) , &p_2976->g_827) != (void*)0) ^ (p_2976->g_1106.s3 ^= (safe_sub_func_int32_t_s_s(((l_1643 = (0x22L == ((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 4))(l_1642.yxyx)).zwwwyxwxwwxxwzww))).se)) >= (!(p_39 != (*l_1230)))), ((safe_rshift_func_int8_t_s_s((safe_add_func_uint16_t_u_u(p_39, p_41)), p_39)) > (*l_1614)))))) && l_1642.x), 0x1D0EL))));
                if ((safe_add_func_uint16_t_u_u(((FAKE_DIVERGE(p_2976->group_1_offset, get_group_id(1), 10) , (&l_1618 == ((*l_1657) = p_2976->g_61))) | (*p_40)), (safe_rshift_func_uint8_t_u_s((safe_lshift_func_int16_t_s_s((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 16))(safe_clamp_func(VECTOR(uint64_t, 16),uint64_t,((VECTOR(uint64_t, 8))(l_1662.xwzxzyzx)).s7261306030470403, (uint64_t)((VECTOR(uint64_t, 4))(mul_hi(((VECTOR(uint64_t, 2))(0x1FF20F69DBBC9484L, 0xCDCAF5201FEAE78DL)).yyxy, ((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 4))(safe_clamp_func(VECTOR(uint64_t, 4),VECTOR(uint64_t, 4),((VECTOR(uint64_t, 4))(l_1665.wzxz)), ((VECTOR(uint64_t, 16))(mul_hi(((VECTOR(uint64_t, 8))(p_2976->g_1666.s9fad1a43)).s3256064240256303, ((VECTOR(uint64_t, 4))(safe_clamp_func(VECTOR(uint64_t, 4),VECTOR(uint64_t, 4),((VECTOR(uint64_t, 8))(max(((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 4))(rotate(((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 4))(safe_clamp_func(VECTOR(uint64_t, 4),VECTOR(uint64_t, 4),((VECTOR(uint64_t, 8))(18446744073709551614UL, (~((safe_div_func_int32_t_s_s(((((safe_lshift_func_uint16_t_u_s(p_2976->g_446.s7, ((*l_1230) = (l_1677 == &l_1152)))) , ((((p_2976->g_1075 , ((**p_42) || 0x456EA18DL)) > (*l_1230)) , l_1678) == l_1679)) == (-1L)) || (*l_1614)), l_1643)) , l_1680)), 18446744073709551615UL, 0x2621F7AE5966A8FCL, 18446744073709551609UL, p_2976->g_634.s6, 18446744073709551615UL, 18446744073709551615UL)).even, ((VECTOR(uint64_t, 4))(1UL)), ((VECTOR(uint64_t, 4))(0xA068B8653E959B8CL))))).odd << ((VECTOR(uint64_t, 2))(64))))).xxyy, ((VECTOR(uint64_t, 4))(1UL))))) + ((VECTOR(uint64_t, 4))(1UL))))).hi << ((VECTOR(uint64_t, 2))(0xADDF971429669FAEL))))).xyyxxyyx, ((VECTOR(uint64_t, 8))(0xA3065BCB3CA981A8L))))).even, ((VECTOR(uint64_t, 4))(0UL)), ((VECTOR(uint64_t, 4))(0x6CBA86939548CC8CL))))).xwyxxxyyywyzxwyw))).s2611, ((VECTOR(uint64_t, 4))(1UL))))) >> ((VECTOR(uint64_t, 4))(18446744073709551615UL)))))))).y, (uint64_t)GROUP_DIVERGE(2, 1)))) | ((VECTOR(uint64_t, 16))(18446744073709551615UL))))) ^ ((VECTOR(uint64_t, 16))(0x769B2524E1215561L))))).sc & p_43), 14)), 1)))))
                { /* block id: 451 */
                    int8_t l_1696 = 6L;
                    if (p_2976->g_1540)
                        goto lbl_1681;
                    (*l_1230) = (((safe_lshift_func_uint8_t_u_s((0x6FF316C32C6D1ADBL == (1UL ^ (safe_add_func_int8_t_s_s(p_2976->g_1008.x, FAKE_DIVERGE(p_2976->group_0_offset, get_group_id(0), 10))))), 0)) , (**p_2976->g_69)) ^ (safe_add_func_uint16_t_u_u((safe_add_func_uint8_t_u_u((safe_add_func_int16_t_s_s((safe_div_func_uint64_t_u_u(0UL, (((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 8))(max(((VECTOR(int32_t, 16))(p_2976->g_1694.yxxyyyxxxxxyyyyy)).lo, (int32_t)(*l_1614)))).hi, ((VECTOR(int32_t, 2))(l_1695.xx)).yyyy))) >= ((VECTOR(int32_t, 16))(0x05B3D222L, 2L, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0x6D013F08L, 0x7F7BA7B7L)), (-2L), (((l_1696 | ((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 2))(0x03L, 0x7FL)).xyyx, ((VECTOR(int8_t, 2))(0x1BL, (-1L))).yyyy))).lo, ((VECTOR(int8_t, 4))(p_2976->g_1697.s4498)).even))).yyxx && ((VECTOR(int8_t, 2))(p_2976->g_1698.s37)).yxxx))), ((VECTOR(int8_t, 16))(0x70L, ((VECTOR(int8_t, 8))(l_1699.s44665561)).s2, (0x57F4DA6B924B8A10L < ((VECTOR(uint64_t, 8))(p_2976->g_1700.wzyyxxzx)).s3), (+(*l_1614)), ((VECTOR(int8_t, 2))(6L)), 0L, l_1699.s7, ((VECTOR(int8_t, 8))(0x25L)))).s2307))).x) , 0x11L) ^ p_2976->g_763.y), 0x279C3978L, 0x50102AA9L, (-5L), 0x6126C607L)), ((VECTOR(int32_t, 4))(0x43F7002FL)), 0x10D5BDE6L, 1L)).s8619))).x & 0x0C4E8884L) > GROUP_DIVERGE(0, 1)) & p_43))), p_39)), (-4L))), (*l_1230))));
                }
                else
                { /* block id: 454 */
                    return (**p_2976->g_1539);
                }
            }
            return (*p_2976->g_354);
        }
lbl_1731:
        (*p_2976->g_133) = (**l_677);
        (*l_1230) = ((void*)0 == l_1230);
        (*l_1230) = (***p_2976->g_379);
    }
    return p_40;
}


/* ------------------------------------------ */
/* 
 * reads : p_2976->g_22
 * writes:
 */
int64_t  func_51(uint64_t  p_52, int8_t  p_53, struct S0 * p_2976)
{ /* block id: 12 */
    return p_2976->g_22;
}


/* ------------------------------------------ */
/* 
 * reads : p_2976->g_92 p_2976->g_167 p_2976->g_445 p_2976->g_446 p_2976->g_193 p_2976->g_130 p_2976->g_312 p_2976->g_290 p_2976->g_2 p_2976->g_46 p_2976->g_451 p_2976->g_22 p_2976->g_255 p_2976->g_254 p_2976->g_15 p_2976->g_69 p_2976->g_70 p_2976->g_154 p_2976->g_397 p_2976->g_6 p_2976->g_79 p_2976->g_281 p_2976->g_508 p_2976->g_511 p_2976->g_291 p_2976->g_111 p_2976->g_532 p_2976->g_550 p_2976->g_554 p_2976->g_563 p_2976->g_564 p_2976->g_565 p_2976->g_568 p_2976->g_582 p_2976->g_391 p_2976->g_202 p_2976->g_133 p_2976->g_611 p_2976->g_624 p_2976->g_625 p_2976->g_355 p_2976->g_632 p_2976->g_634 p_2976->g_635
 * writes: p_2976->g_451 p_2976->g_130 p_2976->g_111 p_2976->g_167 p_2976->g_333 p_2976->g_338 p_2976->g_550 p_2976->g_134 p_2976->g_281 p_2976->g_613 p_2976->g_611 p_2976->g_626 p_2976->g_154
 */
uint32_t ** func_62(uint32_t * p_63, struct S0 * p_2976)
{ /* block id: 112 */
    uint64_t *l_411 = &p_2976->g_79;
    uint64_t **l_410[10][9] = {{&l_411,&l_411,&l_411,&l_411,&l_411,&l_411,&l_411,&l_411,&l_411},{&l_411,&l_411,&l_411,&l_411,&l_411,&l_411,&l_411,&l_411,&l_411},{&l_411,&l_411,&l_411,&l_411,&l_411,&l_411,&l_411,&l_411,&l_411},{&l_411,&l_411,&l_411,&l_411,&l_411,&l_411,&l_411,&l_411,&l_411},{&l_411,&l_411,&l_411,&l_411,&l_411,&l_411,&l_411,&l_411,&l_411},{&l_411,&l_411,&l_411,&l_411,&l_411,&l_411,&l_411,&l_411,&l_411},{&l_411,&l_411,&l_411,&l_411,&l_411,&l_411,&l_411,&l_411,&l_411},{&l_411,&l_411,&l_411,&l_411,&l_411,&l_411,&l_411,&l_411,&l_411},{&l_411,&l_411,&l_411,&l_411,&l_411,&l_411,&l_411,&l_411,&l_411},{&l_411,&l_411,&l_411,&l_411,&l_411,&l_411,&l_411,&l_411,&l_411}};
    int32_t l_414 = 0x7A3ACAB5L;
    VECTOR(uint32_t, 8) l_419 = (VECTOR(uint32_t, 8))(0x57BC1665L, (VECTOR(uint32_t, 4))(0x57BC1665L, (VECTOR(uint32_t, 2))(0x57BC1665L, 4294967292UL), 4294967292UL), 4294967292UL, 0x57BC1665L, 4294967292UL);
    VECTOR(uint32_t, 8) l_420 = (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0xB0705AA6L), 0xB0705AA6L), 0xB0705AA6L, 4294967295UL, 0xB0705AA6L);
    int32_t **l_427[6] = {&p_2976->g_134[1],&p_2976->g_134[0],&p_2976->g_134[1],&p_2976->g_134[1],&p_2976->g_134[0],&p_2976->g_134[1]};
    int32_t *l_428[5][5][6] = {{{(void*)0,&p_2976->g_2,(void*)0,&p_2976->g_2,&p_2976->g_6,&p_2976->g_2},{(void*)0,&p_2976->g_2,(void*)0,&p_2976->g_2,&p_2976->g_6,&p_2976->g_2},{(void*)0,&p_2976->g_2,(void*)0,&p_2976->g_2,&p_2976->g_6,&p_2976->g_2},{(void*)0,&p_2976->g_2,(void*)0,&p_2976->g_2,&p_2976->g_6,&p_2976->g_2},{(void*)0,&p_2976->g_2,(void*)0,&p_2976->g_2,&p_2976->g_6,&p_2976->g_2}},{{(void*)0,&p_2976->g_2,(void*)0,&p_2976->g_2,&p_2976->g_6,&p_2976->g_2},{(void*)0,&p_2976->g_2,(void*)0,&p_2976->g_2,&p_2976->g_6,&p_2976->g_2},{(void*)0,&p_2976->g_2,(void*)0,&p_2976->g_2,&p_2976->g_6,&p_2976->g_2},{(void*)0,&p_2976->g_2,(void*)0,&p_2976->g_2,&p_2976->g_6,&p_2976->g_2},{(void*)0,&p_2976->g_2,(void*)0,&p_2976->g_2,&p_2976->g_6,&p_2976->g_2}},{{(void*)0,&p_2976->g_2,(void*)0,&p_2976->g_2,&p_2976->g_6,&p_2976->g_2},{(void*)0,&p_2976->g_2,(void*)0,&p_2976->g_2,&p_2976->g_6,&p_2976->g_2},{(void*)0,&p_2976->g_2,(void*)0,&p_2976->g_2,&p_2976->g_6,&p_2976->g_2},{(void*)0,&p_2976->g_2,(void*)0,&p_2976->g_2,&p_2976->g_6,&p_2976->g_2},{(void*)0,&p_2976->g_2,(void*)0,&p_2976->g_2,&p_2976->g_6,&p_2976->g_2}},{{(void*)0,&p_2976->g_2,(void*)0,&p_2976->g_2,&p_2976->g_6,&p_2976->g_2},{(void*)0,&p_2976->g_2,(void*)0,&p_2976->g_2,&p_2976->g_6,&p_2976->g_2},{(void*)0,&p_2976->g_2,(void*)0,&p_2976->g_2,&p_2976->g_6,&p_2976->g_2},{(void*)0,&p_2976->g_2,(void*)0,&p_2976->g_2,&p_2976->g_6,&p_2976->g_2},{(void*)0,&p_2976->g_2,(void*)0,&p_2976->g_2,&p_2976->g_6,&p_2976->g_2}},{{(void*)0,&p_2976->g_2,(void*)0,&p_2976->g_2,&p_2976->g_6,&p_2976->g_2},{(void*)0,&p_2976->g_2,(void*)0,&p_2976->g_2,&p_2976->g_6,&p_2976->g_2},{(void*)0,&p_2976->g_2,(void*)0,&p_2976->g_2,&p_2976->g_6,&p_2976->g_2},{(void*)0,&p_2976->g_2,(void*)0,&p_2976->g_2,&p_2976->g_6,&p_2976->g_2},{(void*)0,&p_2976->g_2,(void*)0,&p_2976->g_2,&p_2976->g_6,&p_2976->g_2}}};
    VECTOR(int16_t, 4) l_437 = (VECTOR(int16_t, 4))(0x3C09L, (VECTOR(int16_t, 2))(0x3C09L, 0x5384L), 0x5384L);
    VECTOR(int16_t, 4) l_438 = (VECTOR(int16_t, 4))((-10L), (VECTOR(int16_t, 2))((-10L), 0x7A9CL), 0x7A9CL);
    VECTOR(int16_t, 2) l_439 = (VECTOR(int16_t, 2))(1L, 0L);
    uint16_t l_440 = 65526UL;
    uint16_t l_447[5][4] = {{0x2CB7L,1UL,0x2CB7L,0x2CB7L},{0x2CB7L,1UL,0x2CB7L,0x2CB7L},{0x2CB7L,1UL,0x2CB7L,0x2CB7L},{0x2CB7L,1UL,0x2CB7L,0x2CB7L},{0x2CB7L,1UL,0x2CB7L,0x2CB7L}};
    int8_t *l_448 = (void*)0;
    int8_t *l_449[2];
    uint32_t l_450 = 0x6116E7E5L;
    uint8_t *l_452 = (void*)0;
    uint8_t *l_453 = (void*)0;
    uint8_t *l_454 = (void*)0;
    uint8_t *l_455 = (void*)0;
    uint8_t *l_456[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint32_t l_457 = 0UL;
    int8_t l_458 = 0x7EL;
    VECTOR(uint32_t, 16) l_476 = (VECTOR(uint32_t, 16))(0x04E19311L, (VECTOR(uint32_t, 4))(0x04E19311L, (VECTOR(uint32_t, 2))(0x04E19311L, 0x6867835DL), 0x6867835DL), 0x6867835DL, 0x04E19311L, 0x6867835DL, (VECTOR(uint32_t, 2))(0x04E19311L, 0x6867835DL), (VECTOR(uint32_t, 2))(0x04E19311L, 0x6867835DL), 0x04E19311L, 0x6867835DL, 0x04E19311L, 0x6867835DL);
    VECTOR(uint16_t, 16) l_485 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x70D7L), 0x70D7L), 0x70D7L, 1UL, 0x70D7L, (VECTOR(uint16_t, 2))(1UL, 0x70D7L), (VECTOR(uint16_t, 2))(1UL, 0x70D7L), 1UL, 0x70D7L, 1UL, 0x70D7L);
    VECTOR(uint64_t, 2) l_525 = (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x4EBBFF8F005F9193L);
    VECTOR(uint64_t, 16) l_537 = (VECTOR(uint64_t, 16))(18446744073709551606UL, (VECTOR(uint64_t, 4))(18446744073709551606UL, (VECTOR(uint64_t, 2))(18446744073709551606UL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 18446744073709551606UL, 18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551606UL, 18446744073709551615UL), (VECTOR(uint64_t, 2))(18446744073709551606UL, 18446744073709551615UL), 18446744073709551606UL, 18446744073709551615UL, 18446744073709551606UL, 18446744073709551615UL);
    VECTOR(uint8_t, 16) l_552 = (VECTOR(uint8_t, 16))(0x08L, (VECTOR(uint8_t, 4))(0x08L, (VECTOR(uint8_t, 2))(0x08L, 248UL), 248UL), 248UL, 0x08L, 248UL, (VECTOR(uint8_t, 2))(0x08L, 248UL), (VECTOR(uint8_t, 2))(0x08L, 248UL), 0x08L, 248UL, 0x08L, 248UL);
    VECTOR(uint32_t, 4) l_585 = (VECTOR(uint32_t, 4))(0x3C8DA74CL, (VECTOR(uint32_t, 2))(0x3C8DA74CL, 0x8E3E52B8L), 0x8E3E52B8L);
    uint32_t **l_590 = &p_2976->g_70;
    int64_t l_591 = 1L;
    int32_t l_592 = 0x5612C226L;
    uint32_t l_593 = 0x54D946A2L;
    uint32_t l_606 = 0x4A4F4086L;
    uint32_t **l_618 = &p_2976->g_355;
    VECTOR(int64_t, 8) l_638 = (VECTOR(int64_t, 8))(0x3B076520AEF351B0L, (VECTOR(int64_t, 4))(0x3B076520AEF351B0L, (VECTOR(int64_t, 2))(0x3B076520AEF351B0L, (-10L)), (-10L)), (-10L), 0x3B076520AEF351B0L, (-10L));
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_449[i] = (void*)0;
    if ((safe_mul_func_int8_t_s_s((((((((((void*)0 != l_410[2][6]) <= (p_2976->g_111.s0 = (((safe_add_func_int16_t_s_s(l_414, l_414)) < ((VECTOR(uint64_t, 8))(4UL, 18446744073709551606UL, 9UL, ((VECTOR(uint64_t, 4))(upsample(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 16))(3UL, ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 2))(l_419.s45)).xxxy + ((VECTOR(uint32_t, 8))(l_420.s76350542)).hi))), ((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 2))(max(((VECTOR(uint32_t, 2))(4294967294UL, 0x778537E2L)), (uint32_t)(((safe_mul_func_int8_t_s_s((((((l_428[2][3][4] = &l_414) != ((p_2976->g_130.x = (p_2976->g_451 &= (safe_rshift_func_int16_t_s_u(((l_450 = (safe_sub_func_int16_t_s_s(((safe_mul_func_int16_t_s_s((safe_add_func_int16_t_s_s(((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 16))(safe_clamp_func(VECTOR(int16_t, 16),VECTOR(int16_t, 16),((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0L, 0x2AC4L)), 1L, (-1L))).yzxywzyxxzyzzwyz, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(l_437.zxwx)), 0x0707L, ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 8))(rhadd(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_438.yy)), 1L, 6L)).lo && ((VECTOR(int16_t, 4))(l_439.xxxy)).odd))).yxxyxxyy, ((VECTOR(int16_t, 16))(mad_sat(((VECTOR(int16_t, 16))(0x77C0L, l_440, (-5L), (((safe_add_func_uint8_t_u_u((safe_div_func_uint8_t_u_u(p_2976->g_92.x, p_2976->g_167)), ((VECTOR(uint8_t, 8))(mad_sat(((VECTOR(uint8_t, 2))(p_2976->g_445.s2a)).yxyyxyxy, ((VECTOR(uint8_t, 2))(p_2976->g_446.sed)).xyyxyyxy, ((VECTOR(uint8_t, 2))(0xC7L, 0x95L)).xxxyxyyx))).s0)) , p_2976->g_193.y) ^ 0x0325D843191F4528L), 1L, p_2976->g_130.x, 0L, ((VECTOR(int16_t, 2))((-1L))), ((VECTOR(int16_t, 2))(7L)), p_2976->g_312.s7, ((VECTOR(int16_t, 4))(1L)))), ((VECTOR(int16_t, 16))(5L)), ((VECTOR(int16_t, 16))((-1L)))))).even))).lo | ((VECTOR(int16_t, 4))((-2L)))))), 1L, (-5L), ((VECTOR(int16_t, 2))(0x7479L)), ((VECTOR(int16_t, 2))(0x17D2L)), 0x29EFL)), ((VECTOR(int16_t, 16))(0x5639L))))).sfe70))).x, l_447[1][3])), p_2976->g_290.sc)) | p_2976->g_2), p_2976->g_46.x))) <= 0L), 8)))) , (void*)0)) , &l_411) == &l_411) && (*p_63)), p_2976->g_92.x)) || (-4L)) , p_2976->g_2)))).xxyxxyxyxxyxyxxx + ((VECTOR(uint32_t, 16))(4294967288UL))))).hi * ((VECTOR(uint32_t, 8))(4294967294UL))))), 0xB328D634L, 3UL, 0x61A8A0F5L)).sbf + ((VECTOR(uint32_t, 2))(4294967287UL))))), 1UL, 4294967288UL)), ((VECTOR(uint32_t, 4))(0x82C186CBL))))), 3UL)).s6) <= p_2976->g_255.s6))) , l_457) >= p_2976->g_254.s5) && 0x0D6FL) , p_2976->g_193.y) == 2L) , p_2976->g_46.x), l_458)))
    { /* block id: 118 */
        uint32_t **l_459[9] = {&p_2976->g_355,&p_2976->g_70,&p_2976->g_355,&p_2976->g_355,&p_2976->g_70,&p_2976->g_355,&p_2976->g_355,&p_2976->g_70,&p_2976->g_355};
        int i;
        return l_459[4];
    }
    else
    { /* block id: 120 */
        uint32_t l_489 = 0xD6A1E754L;
        int32_t l_493 = 0x2F3B0025L;
        int32_t l_500 = 0L;
        int32_t *l_512 = (void*)0;
        VECTOR(int16_t, 8) l_515 = (VECTOR(int16_t, 8))(0x7B04L, (VECTOR(int16_t, 4))(0x7B04L, (VECTOR(int16_t, 2))(0x7B04L, 0x7AE7L), 0x7AE7L), 0x7AE7L, 0x7B04L, 0x7AE7L);
        int32_t l_516 = 0x6F9D7DB1L;
        VECTOR(uint32_t, 2) l_531 = (VECTOR(uint32_t, 2))(1UL, 0xE141A77EL);
        VECTOR(int64_t, 8) l_578 = (VECTOR(int64_t, 8))(0x54843CF09CFE6D50L, (VECTOR(int64_t, 4))(0x54843CF09CFE6D50L, (VECTOR(int64_t, 2))(0x54843CF09CFE6D50L, (-1L)), (-1L)), (-1L), 0x54843CF09CFE6D50L, (-1L));
        VECTOR(uint64_t, 16) l_579 = (VECTOR(uint64_t, 16))(0xAEAAC9F93FE468AAL, (VECTOR(uint64_t, 4))(0xAEAAC9F93FE468AAL, (VECTOR(uint64_t, 2))(0xAEAAC9F93FE468AAL, 0x3C760DD8723BB862L), 0x3C760DD8723BB862L), 0x3C760DD8723BB862L, 0xAEAAC9F93FE468AAL, 0x3C760DD8723BB862L, (VECTOR(uint64_t, 2))(0xAEAAC9F93FE468AAL, 0x3C760DD8723BB862L), (VECTOR(uint64_t, 2))(0xAEAAC9F93FE468AAL, 0x3C760DD8723BB862L), 0xAEAAC9F93FE468AAL, 0x3C760DD8723BB862L, 0xAEAAC9F93FE468AAL, 0x3C760DD8723BB862L);
        int i;
        for (p_2976->g_167 = 0; (p_2976->g_167 == 27); p_2976->g_167 = safe_add_func_uint16_t_u_u(p_2976->g_167, 5))
        { /* block id: 123 */
            int64_t l_475 = 0x6B53138AA55B2CC1L;
            uint64_t **l_488 = &l_411;
            uint32_t *l_490 = (void*)0;
            uint32_t *l_491[6][1][10] = {{{&p_2976->g_154,(void*)0,(void*)0,(void*)0,(void*)0,&p_2976->g_154,(void*)0,(void*)0,(void*)0,&p_2976->g_154}},{{&p_2976->g_154,(void*)0,(void*)0,(void*)0,(void*)0,&p_2976->g_154,(void*)0,(void*)0,(void*)0,&p_2976->g_154}},{{&p_2976->g_154,(void*)0,(void*)0,(void*)0,(void*)0,&p_2976->g_154,(void*)0,(void*)0,(void*)0,&p_2976->g_154}},{{&p_2976->g_154,(void*)0,(void*)0,(void*)0,(void*)0,&p_2976->g_154,(void*)0,(void*)0,(void*)0,&p_2976->g_154}},{{&p_2976->g_154,(void*)0,(void*)0,(void*)0,(void*)0,&p_2976->g_154,(void*)0,(void*)0,(void*)0,&p_2976->g_154}},{{&p_2976->g_154,(void*)0,(void*)0,(void*)0,(void*)0,&p_2976->g_154,(void*)0,(void*)0,(void*)0,&p_2976->g_154}}};
            int32_t l_492 = 1L;
            int16_t *l_494 = (void*)0;
            int16_t *l_495 = (void*)0;
            int16_t *l_496 = (void*)0;
            int16_t *l_497 = (void*)0;
            int16_t *l_498 = (void*)0;
            int32_t l_499 = 0x4F2C2DCBL;
            uint16_t *l_501 = (void*)0;
            uint16_t *l_502 = &l_447[2][3];
            int i, j, k;
            l_500 |= ((l_499 &= ((!(safe_mul_func_int8_t_s_s((1UL == (safe_add_func_int32_t_s_s(((l_493 = ((l_492 = (safe_lshift_func_int8_t_s_u((((GROUP_DIVERGE(1, 1) == p_2976->g_15.y) , (((((**p_2976->g_69) > 0x51691228L) || (safe_unary_minus_func_int32_t_s((safe_mul_func_uint8_t_u_u((safe_rshift_func_int8_t_s_u(p_2976->g_290.s9, (l_475 < (((VECTOR(uint32_t, 2))(sub_sat(((VECTOR(uint32_t, 2))(0x81A96C36L, 0xEB93EE62L)), ((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 4))(l_476.sdb55)).wyzwyzxy ^ ((VECTOR(uint32_t, 2))(min(((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 16))(1UL, (p_2976->g_338.sc = ((VECTOR(uint32_t, 16))(rotate(((VECTOR(uint32_t, 2))(0x23CF08FCL, 0xF825F1D6L)).xxyyxyyxxyyxyxyy, ((VECTOR(uint32_t, 16))(upsample(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))(hadd(((VECTOR(uint16_t, 8))((-((VECTOR(uint16_t, 8))(safe_clamp_func(VECTOR(uint16_t, 8),uint16_t,((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))(rotate(((VECTOR(uint16_t, 2))(1UL, 0xE156L)), ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))(l_485.s5677)) + ((VECTOR(uint16_t, 4))((p_2976->g_333.x = (safe_div_func_int64_t_s_s(0x7EE4AB4271F2A85DL, ((p_2976->g_397 == l_488) | p_2976->g_6)))), 0x59BEL, 65533UL, 0xD72DL))))).hi))) + ((VECTOR(uint16_t, 2))(1UL))))).xyxxyxyy >> ((VECTOR(uint16_t, 8))(16))))), (uint16_t)l_489, (uint16_t)p_2976->g_22)))))).s63, ((VECTOR(uint16_t, 2))(0x52CEL))))) & ((VECTOR(uint16_t, 2))(0x0CC6L))))).xyxyyxyyxxyxxxyy, ((VECTOR(uint16_t, 16))(1UL)))))))).s8), ((VECTOR(uint32_t, 2))(0xC0F2C372L)), ((VECTOR(uint32_t, 2))(0xF555C1CEL)), 4294967295UL, l_475, ((VECTOR(uint32_t, 2))(0xB54AEE33L)), ((VECTOR(uint32_t, 4))(4294967295UL)), 0UL, 0x44C222C8L)).scb6d + ((VECTOR(uint32_t, 4))(4294967290UL))))).odd, ((VECTOR(uint32_t, 2))(6UL))))).yyyyxxxy))).s60))).hi <= l_489)))), l_489))))) , l_489) >= p_2976->g_290.sa)) , p_2976->g_312.s4), l_475))) <= 0x08L)) ^ (*p_63)), 0L))), p_2976->g_79))) , p_2976->g_281)) != l_475);
            if (l_475)
                goto lbl_517;
            if (l_475)
                continue;
            l_493 = ((--(*l_502)) == 0x4753L);
            if (l_493)
                break;
        }
lbl_517:
        l_516 = ((((safe_add_func_int8_t_s_s(p_2976->g_15.y, ((l_500 = (safe_unary_minus_func_uint8_t_u((l_493 = l_489)))) > (p_2976->g_508[0] == &l_456[0])))) , (l_493 = ((VECTOR(int32_t, 8))((!((VECTOR(int32_t, 4))(p_2976->g_511.wxyx)).zzyzywzw))).s4)) , 0x1C06434A88B1EDC2L) || ((safe_rshift_func_int8_t_s_s((((VECTOR(int16_t, 8))(0x0B92L, ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 8))(l_515.s04644566)).lo <= ((VECTOR(int16_t, 16))((-1L), (-1L), (p_2976->g_130.y || l_500), (-1L), (((VECTOR(int8_t, 8))(0x3AL, l_515.s2, p_2976->g_15.x, ((VECTOR(int8_t, 4))(1L)), 0x52L)).s5 <= p_2976->g_291.x), p_2976->g_511.z, 0x3C2DL, 0x62A5L, (-2L), p_2976->g_111.s5, 0x6CCBL, 0x39C7L, ((VECTOR(int16_t, 2))(1L)), 1L, 0x37E6L)).sd164))), (-1L), 6L, 0x02BAL)).s2 ^ p_2976->g_6), 2)) | (*p_63)));
        for (p_2976->g_451 = 0; (p_2976->g_451 > 40); p_2976->g_451 = safe_add_func_int32_t_s_s(p_2976->g_451, 6))
        { /* block id: 142 */
            VECTOR(uint32_t, 8) l_533 = (VECTOR(uint32_t, 8))(0xC9F7D777L, (VECTOR(uint32_t, 4))(0xC9F7D777L, (VECTOR(uint32_t, 2))(0xC9F7D777L, 0x952493F9L), 0x952493F9L), 0x952493F9L, 0xC9F7D777L, 0x952493F9L);
            VECTOR(uint8_t, 16) l_559 = (VECTOR(uint8_t, 16))(0x44L, (VECTOR(uint8_t, 4))(0x44L, (VECTOR(uint8_t, 2))(0x44L, 6UL), 6UL), 6UL, 0x44L, 6UL, (VECTOR(uint8_t, 2))(0x44L, 6UL), (VECTOR(uint8_t, 2))(0x44L, 6UL), 0x44L, 6UL, 0x44L, 6UL);
            VECTOR(uint8_t, 8) l_562 = (VECTOR(uint8_t, 8))(0xFBL, (VECTOR(uint8_t, 4))(0xFBL, (VECTOR(uint8_t, 2))(0xFBL, 1UL), 1UL), 1UL, 0xFBL, 1UL);
            int i;
            for (l_450 = (-17); (l_450 < 49); l_450 = safe_add_func_int8_t_s_s(l_450, 7))
            { /* block id: 145 */
                uint64_t l_522 = 0xB42FD08842318EB0L;
                VECTOR(uint64_t, 8) l_526 = (VECTOR(uint64_t, 8))(0x8A0ADDFEFD538384L, (VECTOR(uint64_t, 4))(0x8A0ADDFEFD538384L, (VECTOR(uint64_t, 2))(0x8A0ADDFEFD538384L, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0x8A0ADDFEFD538384L, 18446744073709551615UL);
                VECTOR(uint64_t, 16) l_536 = (VECTOR(uint64_t, 16))(0x9F7244C1076CDECEL, (VECTOR(uint64_t, 4))(0x9F7244C1076CDECEL, (VECTOR(uint64_t, 2))(0x9F7244C1076CDECEL, 0x263CCF641E0FB955L), 0x263CCF641E0FB955L), 0x263CCF641E0FB955L, 0x9F7244C1076CDECEL, 0x263CCF641E0FB955L, (VECTOR(uint64_t, 2))(0x9F7244C1076CDECEL, 0x263CCF641E0FB955L), (VECTOR(uint64_t, 2))(0x9F7244C1076CDECEL, 0x263CCF641E0FB955L), 0x9F7244C1076CDECEL, 0x263CCF641E0FB955L, 0x9F7244C1076CDECEL, 0x263CCF641E0FB955L);
                VECTOR(uint8_t, 16) l_553 = (VECTOR(uint8_t, 16))(0x5DL, (VECTOR(uint8_t, 4))(0x5DL, (VECTOR(uint8_t, 2))(0x5DL, 0x2CL), 0x2CL), 0x2CL, 0x5DL, 0x2CL, (VECTOR(uint8_t, 2))(0x5DL, 0x2CL), (VECTOR(uint8_t, 2))(0x5DL, 0x2CL), 0x5DL, 0x2CL, 0x5DL, 0x2CL);
                VECTOR(uint8_t, 8) l_569 = (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 255UL), 255UL), 255UL, 0UL, 255UL);
                int i;
                if (l_522)
                    break;
                (*p_2976->g_133) = (((((VECTOR(uint64_t, 4))(max(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 4))(l_525.xxyy)) - ((VECTOR(uint64_t, 16))(l_526.s7510373472572672)).sd753))), 6UL, ((VECTOR(uint64_t, 2))(0x0C26F48082701C5CL, 0UL)), 1UL)).hi, ((VECTOR(uint64_t, 2))(rhadd(((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 2))(18446744073709551615UL, 0xC1824232A1A09E6FL)).yyyxxxyx | ((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(min(((VECTOR(uint64_t, 8))(upsample(((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 4))(rotate(((VECTOR(uint32_t, 2))(l_531.yy)).yyxx, ((VECTOR(uint32_t, 8))(p_2976->g_532.s56336407)).hi))) + ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(0x83706DC6L, 4294967295UL, 4294967295UL, 0x8082EDAAL)), 0x3884114CL, ((VECTOR(uint32_t, 2))(l_533.s53)), 4294967286UL)).lo))).zxwwxzyy, ((VECTOR(uint32_t, 4))(l_533.s7, ((VECTOR(uint32_t, 2))(mul_hi(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(abs(((VECTOR(uint32_t, 2))(4294967293UL, 4294967289UL))))), 4UL, 0x6D94FE75L)).lo, ((VECTOR(uint32_t, 2))(4294967293UL, 4294967295UL))))), 0x6127C6A5L)).wywzyyyz))).s06, ((VECTOR(uint64_t, 2))(0x82700DC7578931DDL, 0xCE3C5355BD8F3C9CL))))), 0xB2667654A726D46BL, 0xA0A1B9376DFE3E09L)) + ((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 8))(0x73D9066CC5BA4DDEL, 0x19A60A01B95AB15BL, ((VECTOR(uint64_t, 2))(abs(((VECTOR(uint64_t, 8))(l_536.safcf8717)).s70))), ((VECTOR(uint64_t, 2))(18446744073709551615UL, 0xBCB18D45ADD643CEL)), 0xD8D8B709BA9D676BL, 1UL)).s1670000775407043 - ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(l_537.sd4)), 0UL, 0x8BD5497A55B54C81L)).ywxwxyzyxzyzxwzx))).sb527))).wwwzzwxy))).s54, ((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 4))((((l_526.s0 && ((safe_mul_func_uint16_t_u_u((safe_lshift_func_int16_t_s_u((((safe_mul_func_int16_t_s_s((((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(safe_clamp_func(VECTOR(uint16_t, 4),uint16_t,((VECTOR(uint16_t, 4))(sub_sat(((VECTOR(uint16_t, 8))(0x8DB5L, ((VECTOR(uint16_t, 4))(((safe_sub_func_int64_t_s_s(((((p_2976->g_550[0] = p_2976->g_550[0]) == &l_455) ^ (**p_2976->g_69)) && (p_2976->g_532.s3 & ((((VECTOR(uint8_t, 8))(hadd(((VECTOR(uint8_t, 16))(l_552.s0f8147a8a370c2e6)).hi, ((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 16))(sub_sat(((VECTOR(uint8_t, 4))(l_553.sace1)).xyywyyzyzzxxzwxz, ((VECTOR(uint8_t, 8))(rhadd(((VECTOR(uint8_t, 2))(p_2976->g_554.s06)).xxxyyyxy, ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))(l_559.sc7342ba4)) + ((VECTOR(uint8_t, 16))(max(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(l_562.s12)) + ((VECTOR(uint8_t, 4))(p_2976->g_563.wyyw)).lo))), 0xC3L, 1UL)).xxyzzyyxwywxxxyz, ((VECTOR(uint8_t, 16))(p_2976->g_564.s0215030514672071))))).odd))) + ((VECTOR(uint8_t, 8))(p_2976->g_565.zxyxwxwx)))))))).s7040201701262441))).s73, ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))(p_2976->g_568.xyyxyyyy)).lo + ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(l_569.s22)), 0UL, 1UL))))).odd))).yxyxyxyy))).s2 , l_569.s0) && (0x2119L >= (safe_mul_func_uint8_t_u_u((safe_lshift_func_int8_t_s_u(((safe_add_func_int32_t_s_s((safe_div_func_int64_t_s_s(((VECTOR(int64_t, 8))(l_578.s45403443)).s1, ((VECTOR(uint64_t, 4))(l_579.s3574)).w)), ((VECTOR(uint32_t, 16))(add_sat(((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 2))(p_2976->g_582.s4d)).xyyyxxyxyxyxyyxy + ((VECTOR(uint32_t, 2))(0x5D2865A4L, 0UL)).xxxxyyxyyxyxxxyy))), ((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 2))(rotate(((VECTOR(uint32_t, 2))(2UL, 4294967289UL)), ((VECTOR(uint32_t, 8))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 2))(sub_sat(((VECTOR(uint32_t, 16))(max(((VECTOR(uint32_t, 8))(l_585.xwzwzwwz)).s3452314657410701, ((VECTOR(uint32_t, 16))(min(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(0xB82B437CL, 4294967295UL)), (safe_mul_func_uint16_t_u_u((((safe_rshift_func_uint8_t_u_s(l_533.s2, 6)) , 0x26B5B72E5A329814L) < p_2976->g_130.x), l_515.s5)), 1UL, 4294967288UL, 0x9EAC7FADL, 1UL, 0UL)).s2265531007711572, ((VECTOR(uint32_t, 16))(0x6176213AL)))))))).s01, ((VECTOR(uint32_t, 2))(4294967295UL))))).xxyyxxxy, ((VECTOR(uint32_t, 8))(0x0F718FE0L)), ((VECTOR(uint32_t, 8))(6UL))))).s72))).xxxyyyyxyxxyxxxx + ((VECTOR(uint32_t, 16))(4294967289UL)))))))).s7)) | l_553.s0), 3)), 0x28L)))))), 0xAC787FC257504C9BL)) >= l_569.s2), ((VECTOR(uint16_t, 2))(4UL)), 0xE7B9L)), 8UL, 1UL, 0xE7D5L)).odd, ((VECTOR(uint16_t, 4))(65526UL))))), (uint16_t)0x75A8L, (uint16_t)p_2976->g_391))), l_569.s0, l_569.s6, ((VECTOR(uint16_t, 2))(0x74D7L)), ((VECTOR(uint16_t, 8))(9UL)))).s7e & ((VECTOR(uint16_t, 2))(1UL))))).yxxyyyxxxyxxxxxx + ((VECTOR(uint16_t, 16))(0x3618L))))).s8 < l_533.s0), p_2976->g_445.s4)) , p_2976->g_202.y) != l_553.s3), p_2976->g_312.s4)), l_493)) , l_533.s2)) == p_2976->g_2) && l_516), 0x74B894C43FE54604L, 0xE6C682865D633182L, 5UL)).wyyzyyyy + ((VECTOR(uint64_t, 8))(0x39EEB43E5EADA080L))))).s41))).xxxx))).z && 0L) == p_2976->g_46.x) , (void*)0);
            }
            return l_590;
        }
    }
    l_592 |= l_591;
    if (l_593)
    { /* block id: 154 */
        int64_t l_598[8][4][6] = {{{0x70AB7C92BD70282FL,(-1L),0L,(-7L),0x7E7085A99B989F58L,0x13C6E9956C858E9CL},{0x70AB7C92BD70282FL,(-1L),0L,(-7L),0x7E7085A99B989F58L,0x13C6E9956C858E9CL},{0x70AB7C92BD70282FL,(-1L),0L,(-7L),0x7E7085A99B989F58L,0x13C6E9956C858E9CL},{0x70AB7C92BD70282FL,(-1L),0L,(-7L),0x7E7085A99B989F58L,0x13C6E9956C858E9CL}},{{0x70AB7C92BD70282FL,(-1L),0L,(-7L),0x7E7085A99B989F58L,0x13C6E9956C858E9CL},{0x70AB7C92BD70282FL,(-1L),0L,(-7L),0x7E7085A99B989F58L,0x13C6E9956C858E9CL},{0x70AB7C92BD70282FL,(-1L),0L,(-7L),0x7E7085A99B989F58L,0x13C6E9956C858E9CL},{0x70AB7C92BD70282FL,(-1L),0L,(-7L),0x7E7085A99B989F58L,0x13C6E9956C858E9CL}},{{0x70AB7C92BD70282FL,(-1L),0L,(-7L),0x7E7085A99B989F58L,0x13C6E9956C858E9CL},{0x70AB7C92BD70282FL,(-1L),0L,(-7L),0x7E7085A99B989F58L,0x13C6E9956C858E9CL},{0x70AB7C92BD70282FL,(-1L),0L,(-7L),0x7E7085A99B989F58L,0x13C6E9956C858E9CL},{0x70AB7C92BD70282FL,(-1L),0L,(-7L),0x7E7085A99B989F58L,0x13C6E9956C858E9CL}},{{0x70AB7C92BD70282FL,(-1L),0L,(-7L),0x7E7085A99B989F58L,0x13C6E9956C858E9CL},{0x70AB7C92BD70282FL,(-1L),0L,(-7L),0x7E7085A99B989F58L,0x13C6E9956C858E9CL},{0x70AB7C92BD70282FL,(-1L),0L,(-7L),0x7E7085A99B989F58L,0x13C6E9956C858E9CL},{0x70AB7C92BD70282FL,(-1L),0L,(-7L),0x7E7085A99B989F58L,0x13C6E9956C858E9CL}},{{0x70AB7C92BD70282FL,(-1L),0L,(-7L),0x7E7085A99B989F58L,0x13C6E9956C858E9CL},{0x70AB7C92BD70282FL,(-1L),0L,(-7L),0x7E7085A99B989F58L,0x13C6E9956C858E9CL},{0x70AB7C92BD70282FL,(-1L),0L,(-7L),0x7E7085A99B989F58L,0x13C6E9956C858E9CL},{0x70AB7C92BD70282FL,(-1L),0L,(-7L),0x7E7085A99B989F58L,0x13C6E9956C858E9CL}},{{0x70AB7C92BD70282FL,(-1L),0L,(-7L),0x7E7085A99B989F58L,0x13C6E9956C858E9CL},{0x70AB7C92BD70282FL,(-1L),0L,(-7L),0x7E7085A99B989F58L,0x13C6E9956C858E9CL},{0x70AB7C92BD70282FL,(-1L),0L,(-7L),0x7E7085A99B989F58L,0x13C6E9956C858E9CL},{0x70AB7C92BD70282FL,(-1L),0L,(-7L),0x7E7085A99B989F58L,0x13C6E9956C858E9CL}},{{0x70AB7C92BD70282FL,(-1L),0L,(-7L),0x7E7085A99B989F58L,0x13C6E9956C858E9CL},{0x70AB7C92BD70282FL,(-1L),0L,(-7L),0x7E7085A99B989F58L,0x13C6E9956C858E9CL},{0x70AB7C92BD70282FL,(-1L),0L,(-7L),0x7E7085A99B989F58L,0x13C6E9956C858E9CL},{0x70AB7C92BD70282FL,(-1L),0L,(-7L),0x7E7085A99B989F58L,0x13C6E9956C858E9CL}},{{0x70AB7C92BD70282FL,(-1L),0L,(-7L),0x7E7085A99B989F58L,0x13C6E9956C858E9CL},{0x70AB7C92BD70282FL,(-1L),0L,(-7L),0x7E7085A99B989F58L,0x13C6E9956C858E9CL},{0x70AB7C92BD70282FL,(-1L),0L,(-7L),0x7E7085A99B989F58L,0x13C6E9956C858E9CL},{0x70AB7C92BD70282FL,(-1L),0L,(-7L),0x7E7085A99B989F58L,0x13C6E9956C858E9CL}}};
        int32_t l_599 = 0x06AB243FL;
        int32_t l_601 = (-10L);
        int32_t l_603 = 0x688F7801L;
        int32_t l_604[10] = {(-1L),0L,3L,0L,(-1L),(-1L),0L,3L,0L,(-1L)};
        int i, j, k;
lbl_596:
        (*p_2976->g_133) = p_63;
        for (p_2976->g_281 = 0; (p_2976->g_281 >= 7); ++p_2976->g_281)
        { /* block id: 158 */
            int16_t l_597 = 0x10E3L;
            int32_t l_600 = 0x179F81B5L;
            int32_t l_602 = 1L;
            int32_t l_605[7] = {0x20DE3B21L,1L,0x20DE3B21L,0x20DE3B21L,1L,0x20DE3B21L,0x20DE3B21L};
            int32_t *l_612 = &p_2976->g_613;
            int16_t *l_619 = &l_597;
            int i;
            if (p_2976->g_281)
                goto lbl_596;
            l_606--;
            l_600 = (safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))(p_2976->g_611.s5165033354025177)).sa199 && ((VECTOR(int8_t, 16))(0L, l_603, (-1L), (p_2976->g_626 = (((((*l_612) = l_598[1][2][2]) , (safe_rshift_func_int16_t_s_s(((safe_lshift_func_int16_t_s_s(0x60F2L, 4)) , ((*l_619) = (l_618 != &p_2976->g_355))), l_598[4][1][5]))) >= ((safe_mul_func_uint8_t_u_u((l_605[4] = (safe_lshift_func_int8_t_s_u((p_2976->g_611.s7 = (((VECTOR(int32_t, 4))(p_2976->g_624.se923)).y || ((VECTOR(uint32_t, 4))(p_2976->g_625.sa3c5)).w)), l_600))), l_603)) & (*p_2976->g_355))) , l_604[9])), p_2976->g_554.s0, 1L, (-6L), ((VECTOR(int8_t, 8))(0x66L)), 0x2EL)).sdb47))).xyxwxyzxyyzzwxyz < ((VECTOR(int8_t, 16))(0x17L))))).sae6d != ((VECTOR(int8_t, 4))(8L))))), ((VECTOR(int8_t, 4))(0x0CL))))).wzwwxwyz != ((VECTOR(int8_t, 8))(1L))))).s5, 3));
        }
    }
    else
    { /* block id: 168 */
        uint8_t l_629 = 0xA7L;
        VECTOR(int64_t, 8) l_636 = (VECTOR(int64_t, 8))(7L, (VECTOR(int64_t, 4))(7L, (VECTOR(int64_t, 2))(7L, 0x5C0C06E085E4B3C4L), 0x5C0C06E085E4B3C4L), 0x5C0C06E085E4B3C4L, 7L, 0x5C0C06E085E4B3C4L);
        VECTOR(int64_t, 8) l_637 = (VECTOR(int64_t, 8))(0x767A19D4185FAD4EL, (VECTOR(int64_t, 4))(0x767A19D4185FAD4EL, (VECTOR(int64_t, 2))(0x767A19D4185FAD4EL, 0x58336870400F7E2CL), 0x58336870400F7E2CL), 0x58336870400F7E2CL, 0x767A19D4185FAD4EL, 0x58336870400F7E2CL);
        int32_t *l_650 = &p_2976->g_6;
        int i;
        for (p_2976->g_154 = 23; (p_2976->g_154 <= 22); --p_2976->g_154)
        { /* block id: 171 */
            VECTOR(int64_t, 16) l_633 = (VECTOR(int64_t, 16))(0x76F4842BE52A9A4FL, (VECTOR(int64_t, 4))(0x76F4842BE52A9A4FL, (VECTOR(int64_t, 2))(0x76F4842BE52A9A4FL, (-1L)), (-1L)), (-1L), 0x76F4842BE52A9A4FL, (-1L), (VECTOR(int64_t, 2))(0x76F4842BE52A9A4FL, (-1L)), (VECTOR(int64_t, 2))(0x76F4842BE52A9A4FL, (-1L)), 0x76F4842BE52A9A4FL, (-1L), 0x76F4842BE52A9A4FL, (-1L));
            VECTOR(int64_t, 8) l_639 = (VECTOR(int64_t, 8))(0x2193DEF16B13C16EL, (VECTOR(int64_t, 4))(0x2193DEF16B13C16EL, (VECTOR(int64_t, 2))(0x2193DEF16B13C16EL, (-5L)), (-5L)), (-5L), 0x2193DEF16B13C16EL, (-5L));
            int i;
            (*p_2976->g_133) = (l_629 , ((safe_mul_func_int8_t_s_s(0L, ((l_629 & ((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),int64_t,((VECTOR(int64_t, 8))(hadd(((VECTOR(int64_t, 8))(p_2976->g_632.zwwyxxxz)), ((VECTOR(int64_t, 16))(0x65CCC77FAB01A436L, ((VECTOR(int64_t, 2))(l_633.se1)), ((void*)0 == p_63), 0x1CF64673BE13809FL, ((VECTOR(int64_t, 4))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 4),((VECTOR(int64_t, 16))(p_2976->g_634.scc64f8142cd05257)).sa409, ((VECTOR(int64_t, 8))(p_2976->g_635.xxxzyxxy)).odd, ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 2))(l_636.s25)) ^ ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))((-1L), (-5L))), ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 4))(l_637.s4765)).odd, ((VECTOR(int64_t, 2))(l_638.s24))))), (-3L), 0x256731AAD3954B0AL)), 0x4588454474294519L, 0L)).s16))).yxyy))), ((VECTOR(int64_t, 4))(l_639.s7367)), ((safe_add_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u(l_633.s4, (safe_div_func_int32_t_s_s((safe_mul_func_uint16_t_u_u((l_636.s3 <= l_636.s2), (safe_sub_func_uint16_t_u_u((+l_636.s6), p_2976->g_79)))), l_633.sa)))), l_639.s5)) , p_2976->g_290.sf), (-1L), 0x1C5A8EC80C10A284L)).lo))).s02, (int64_t)3L, (int64_t)p_2976->g_582.sc))), (-5L), (-1L))).odd && ((VECTOR(int64_t, 2))(0x3768934B3F7FF9E5L))))).xxyyyxyx, ((VECTOR(int64_t, 8))((-1L)))))).s2) && l_629))) , l_650));
            return &p_2976->g_70;
        }
        for (p_2976->g_154 = 25; (p_2976->g_154 >= 59); p_2976->g_154 = safe_add_func_uint32_t_u_u(p_2976->g_154, 9))
        { /* block id: 177 */
            uint8_t l_653 = 248UL;
            l_653 |= 8L;
        }
    }
    return l_618;
}


/* ------------------------------------------ */
/* 
 * reads : p_2976->g_69 p_2976->g_70 p_2976->g_154 p_2976->g_22 p_2976->g_355 p_2976->g_130 p_2976->g_379 p_2976->g_133 p_2976->g_391 p_2976->g_61 p_2976->g_397 p_2976->g_79 p_2976->g_15 p_2976->g_167 p_2976->g_254 p_2976->g_291 p_2976->g_92 p_2976->g_354
 * writes: p_2976->g_154 p_2976->g_130 p_2976->g_333 p_2976->g_134 p_2976->g_391 p_2976->g_61
 */
uint32_t * func_64(uint32_t ** p_65, int64_t  p_66, uint64_t ** p_67, uint32_t ** p_68, struct S0 * p_2976)
{ /* block id: 94 */
    uint32_t *l_370[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t l_374 = 0x2D3F37CEL;
    int32_t *l_375[2][3][9] = {{{&p_2976->g_6,(void*)0,&p_2976->g_2,(void*)0,(void*)0,(void*)0,&p_2976->g_2,(void*)0,&p_2976->g_6},{&p_2976->g_6,(void*)0,&p_2976->g_2,(void*)0,(void*)0,(void*)0,&p_2976->g_2,(void*)0,&p_2976->g_6},{&p_2976->g_6,(void*)0,&p_2976->g_2,(void*)0,(void*)0,(void*)0,&p_2976->g_2,(void*)0,&p_2976->g_6}},{{&p_2976->g_6,(void*)0,&p_2976->g_2,(void*)0,(void*)0,(void*)0,&p_2976->g_2,(void*)0,&p_2976->g_6},{&p_2976->g_6,(void*)0,&p_2976->g_2,(void*)0,(void*)0,(void*)0,&p_2976->g_2,(void*)0,&p_2976->g_6},{&p_2976->g_6,(void*)0,&p_2976->g_2,(void*)0,(void*)0,(void*)0,&p_2976->g_2,(void*)0,&p_2976->g_6}}};
    uint64_t l_376[1];
    int8_t *l_377 = (void*)0;
    int8_t *l_378[8][9] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int32_t ***l_381 = (void*)0;
    uint16_t *l_382 = (void*)0;
    uint16_t *l_383 = (void*)0;
    uint16_t *l_384 = (void*)0;
    uint16_t *l_385 = (void*)0;
    uint16_t *l_386 = (void*)0;
    uint8_t *l_390[5][8][6] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    uint8_t **l_389 = &l_390[2][6][3];
    uint64_t ***l_396 = &p_2976->g_61;
    int64_t l_398[2];
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_376[i] = 0x5AD9B93BEAFA7A04L;
    for (i = 0; i < 2; i++)
        l_398[i] = 0x6C92B84B651BD204L;
lbl_407:
    (*p_2976->g_133) = ((safe_mod_func_uint32_t_u_u((safe_div_func_uint16_t_u_u(FAKE_DIVERGE(p_2976->local_2_offset, get_local_id(2), 10), (safe_mul_func_int16_t_s_s((~(safe_rshift_func_int8_t_s_s((p_2976->g_130.y |= (safe_sub_func_uint32_t_u_u((p_2976->g_154 = (safe_sub_func_uint32_t_u_u((**p_2976->g_69), (((**p_68) && (-1L)) <= (&p_65 != (void*)0))))), (l_376[0] = ((safe_unary_minus_func_int64_t_s((-6L))) || (safe_div_func_uint32_t_u_u(0x6BECCE36L, (l_374 &= (**p_68))))))))), 6))), (p_2976->g_333.y = (p_2976->g_379 != l_381)))))), (**p_68))) , &p_2976->g_6);
    if (((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))((safe_div_func_uint16_t_u_u((~((p_2976->g_333.x = ((void*)0 != l_389)) ^ (--p_2976->g_391))), (safe_lshift_func_int16_t_s_s(((((((*l_396) = p_2976->g_61) != p_2976->g_397) , (l_398[0] && (safe_unary_minus_func_int32_t_s((((VECTOR(int64_t, 16))(0L, ((p_66 , (void*)0) != &p_2976->g_61), (safe_add_func_int64_t_s_s(((((safe_mod_func_int16_t_s_s(p_2976->g_79, 0x7C81L)) >= p_66) > (**p_2976->g_69)) <= p_2976->g_15.x), p_2976->g_167)), ((VECTOR(int64_t, 2))(0x16A5C7B7F1E306BFL)), (-6L), p_2976->g_254.s6, p_2976->g_254.s6, p_2976->g_291.w, ((VECTOR(int64_t, 4))((-7L))), ((VECTOR(int64_t, 2))(0L)), (-1L))).sc || p_66))))) || p_2976->g_167) && p_2976->g_254.s4), p_2976->g_92.y)))), ((VECTOR(int32_t, 2))(0x203301A8L)), 5L)).yxxwzxxy && ((VECTOR(int32_t, 8))((-6L)))))).s4)
    { /* block id: 104 */
        return (*p_2976->g_354);
    }
    else
    { /* block id: 106 */
        uint32_t l_404 = 4294967287UL;
        l_404++;
    }
    if (p_66)
        goto lbl_407;
    return (*p_68);
}


/* ------------------------------------------ */
/* 
 * reads : p_2976->g_92 p_2976->g_111 p_2976->g_130 p_2976->g_79 p_2976->g_133 p_2976->g_6 p_2976->g_15 p_2976->g_134 p_2976->g_167 p_2976->g_154 p_2976->g_193 p_2976->g_202 p_2976->g_46 p_2976->g_2 p_2976->g_22 p_2976->g_254 p_2976->g_255 p_2976->g_291 p_2976->g_70 p_2976->g_312 p_2976->g_333 p_2976->g_338 p_2976->g_61
 * writes: p_2976->g_133 p_2976->g_154 p_2976->g_130 p_2976->g_167 p_2976->g_111 p_2976->g_134 p_2976->g_79 p_2976->g_15 p_2976->g_70 p_2976->g_281
 */
uint64_t ** func_73(int64_t  p_74, uint64_t * p_75, struct S0 * p_2976)
{ /* block id: 26 */
    uint64_t *l_85 = &p_2976->g_79;
    int32_t l_88[9] = {(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L)};
    VECTOR(uint8_t, 2) l_108 = (VECTOR(uint8_t, 2))(0xA4L, 0xC1L);
    VECTOR(int8_t, 2) l_131 = (VECTOR(int8_t, 2))((-9L), 0L);
    int32_t l_151 = 0x38E98FF7L;
    int32_t l_152 = 0x5EFA47E7L;
    VECTOR(uint8_t, 4) l_201 = (VECTOR(uint8_t, 4))(0x4AL, (VECTOR(uint8_t, 2))(0x4AL, 249UL), 249UL);
    uint8_t *l_207 = (void*)0;
    VECTOR(uint32_t, 2) l_253 = (VECTOR(uint32_t, 2))(0x930CA31DL, 2UL);
    uint8_t **l_264 = &l_207;
    uint16_t l_269[7] = {0x7ED4L,3UL,0x7ED4L,0x7ED4L,3UL,0x7ED4L,0x7ED4L};
    uint32_t *l_278 = (void*)0;
    VECTOR(int64_t, 8) l_317 = (VECTOR(int64_t, 8))(0x22412E1913624698L, (VECTOR(int64_t, 4))(0x22412E1913624698L, (VECTOR(int64_t, 2))(0x22412E1913624698L, 0x4281D4548542B7FEL), 0x4281D4548542B7FEL), 0x4281D4548542B7FEL, 0x22412E1913624698L, 0x4281D4548542B7FEL);
    VECTOR(uint16_t, 2) l_330 = (VECTOR(uint16_t, 2))(65533UL, 65530UL);
    int i;
    if (p_74)
    { /* block id: 27 */
        VECTOR(uint32_t, 16) l_82 = (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 6UL), 6UL), 6UL, 1UL, 6UL, (VECTOR(uint32_t, 2))(1UL, 6UL), (VECTOR(uint32_t, 2))(1UL, 6UL), 1UL, 6UL, 1UL, 6UL);
        uint64_t *l_84[3];
        uint64_t **l_83[6][10] = {{(void*)0,&l_84[0],&l_84[0],(void*)0,(void*)0,&l_84[0],&l_84[0],(void*)0,(void*)0,&l_84[0]},{(void*)0,&l_84[0],&l_84[0],(void*)0,(void*)0,&l_84[0],&l_84[0],(void*)0,(void*)0,&l_84[0]},{(void*)0,&l_84[0],&l_84[0],(void*)0,(void*)0,&l_84[0],&l_84[0],(void*)0,(void*)0,&l_84[0]},{(void*)0,&l_84[0],&l_84[0],(void*)0,(void*)0,&l_84[0],&l_84[0],(void*)0,(void*)0,&l_84[0]},{(void*)0,&l_84[0],&l_84[0],(void*)0,(void*)0,&l_84[0],&l_84[0],(void*)0,(void*)0,&l_84[0]},{(void*)0,&l_84[0],&l_84[0],(void*)0,(void*)0,&l_84[0],&l_84[0],(void*)0,(void*)0,&l_84[0]}};
        int32_t *l_86 = (void*)0;
        int32_t *l_87 = (void*)0;
        VECTOR(int32_t, 4) l_91 = (VECTOR(int32_t, 4))(0x23C80536L, (VECTOR(int32_t, 2))(0x23C80536L, 0x34E55550L), 0x34E55550L);
        VECTOR(uint8_t, 8) l_112 = (VECTOR(uint8_t, 8))(6UL, (VECTOR(uint8_t, 4))(6UL, (VECTOR(uint8_t, 2))(6UL, 0x3CL), 0x3CL), 0x3CL, 6UL, 0x3CL);
        VECTOR(uint8_t, 4) l_121 = (VECTOR(uint8_t, 4))(0xD3L, (VECTOR(uint8_t, 2))(0xD3L, 0x1CL), 0x1CL);
        VECTOR(int8_t, 4) l_132 = (VECTOR(int8_t, 4))(0x47L, (VECTOR(int8_t, 2))(0x47L, (-1L)), (-1L));
        int32_t ***l_135 = &p_2976->g_133;
        uint8_t *l_136 = (void*)0;
        uint8_t *l_137 = (void*)0;
        uint8_t *l_138 = (void*)0;
        uint8_t *l_139 = (void*)0;
        uint8_t *l_140 = (void*)0;
        uint8_t *l_141 = (void*)0;
        uint8_t *l_142 = (void*)0;
        uint8_t *l_143 = (void*)0;
        uint8_t *l_144 = (void*)0;
        uint8_t *l_145 = (void*)0;
        uint8_t *l_146 = (void*)0;
        uint8_t *l_147 = (void*)0;
        uint8_t *l_148 = (void*)0;
        uint32_t *l_149 = (void*)0;
        uint32_t *l_150[3];
        VECTOR(uint32_t, 2) l_153 = (VECTOR(uint32_t, 2))(1UL, 0xFFD37754L);
        int8_t *l_155 = (void*)0;
        int8_t *l_156 = (void*)0;
        int8_t *l_157 = (void*)0;
        int8_t *l_158[10][5][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
        VECTOR(int64_t, 8) l_184 = (VECTOR(int64_t, 8))(0x3F6E08B93ECFD49AL, (VECTOR(int64_t, 4))(0x3F6E08B93ECFD49AL, (VECTOR(int64_t, 2))(0x3F6E08B93ECFD49AL, 0x75DFC3470E8C40FBL), 0x75DFC3470E8C40FBL), 0x75DFC3470E8C40FBL, 0x3F6E08B93ECFD49AL, 0x75DFC3470E8C40FBL);
        VECTOR(int64_t, 4) l_185 = (VECTOR(int64_t, 4))(0x0F9857E4DE94C89DL, (VECTOR(int64_t, 2))(0x0F9857E4DE94C89DL, (-4L)), (-4L));
        int8_t l_186 = 0x75L;
        VECTOR(uint8_t, 8) l_198 = (VECTOR(uint8_t, 8))(0x22L, (VECTOR(uint8_t, 4))(0x22L, (VECTOR(uint8_t, 2))(0x22L, 0x3AL), 0x3AL), 0x3AL, 0x22L, 0x3AL);
        uint8_t **l_208[2];
        uint8_t *l_209 = (void*)0;
        int32_t *l_216 = (void*)0;
        int32_t l_223 = 2L;
        VECTOR(int64_t, 16) l_235 = (VECTOR(int64_t, 16))(0x5A0FB830CA0FBC93L, (VECTOR(int64_t, 4))(0x5A0FB830CA0FBC93L, (VECTOR(int64_t, 2))(0x5A0FB830CA0FBC93L, 0x25DDA3E05D938CDBL), 0x25DDA3E05D938CDBL), 0x25DDA3E05D938CDBL, 0x5A0FB830CA0FBC93L, 0x25DDA3E05D938CDBL, (VECTOR(int64_t, 2))(0x5A0FB830CA0FBC93L, 0x25DDA3E05D938CDBL), (VECTOR(int64_t, 2))(0x5A0FB830CA0FBC93L, 0x25DDA3E05D938CDBL), 0x5A0FB830CA0FBC93L, 0x25DDA3E05D938CDBL, 0x5A0FB830CA0FBC93L, 0x25DDA3E05D938CDBL);
        VECTOR(int8_t, 2) l_245 = (VECTOR(int8_t, 2))(0x55L, 0x02L);
        VECTOR(uint32_t, 8) l_252 = (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL);
        uint64_t l_267 = 0x94C693E4D5C52ED2L;
        int8_t l_268 = 0x4CL;
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_84[i] = &p_2976->g_79;
        for (i = 0; i < 3; i++)
            l_150[i] = (void*)0;
        for (i = 0; i < 2; i++)
            l_208[i] = &l_143;
        l_88[5] |= ((safe_div_func_uint32_t_u_u(((VECTOR(uint32_t, 2))(l_82.s76)).lo, 0x1DC99B0BL)) < ((l_85 = p_75) == (void*)0));
        if ((safe_rshift_func_int8_t_s_u((p_2976->g_130.y = ((((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 4))(l_91.yyzy)).ywzyzwzx, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(p_2976->g_92.yx)), 0x2691D145L, (safe_sub_func_int64_t_s_s((safe_mod_func_uint32_t_u_u(((&l_88[5] == ((((+(p_2976->g_154 = (0x65F641D31AB14A3DL <= ((l_152 = (safe_rshift_func_uint16_t_u_s((safe_mod_func_int32_t_s_s((safe_mul_func_int16_t_s_s(((safe_unary_minus_func_uint16_t_u((((((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))(l_108.yx)).yxyyxyyx << ((VECTOR(uint8_t, 8))(8))))).hi >> ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 16))(mad_sat(((VECTOR(uint8_t, 8))(rhadd(((VECTOR(uint8_t, 8))(p_2976->g_111.s12541712)), ((VECTOR(uint8_t, 8))(l_112.s07067115))))).s5112770613235777, ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 2))(sub_sat(((VECTOR(uint8_t, 8))(0xE6L, (l_88[5] , (safe_rshift_func_uint16_t_u_u(0xC605L, 5))), 1UL, 249UL, 0xCEL, 255UL, 0UL, 0UL)).s05, ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))(l_121.xy)).yyyyyxxy + ((VECTOR(uint8_t, 16))(mul_hi(((VECTOR(uint8_t, 4))(1UL, ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 8))(rotate(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(255UL, 0x61L)) + ((VECTOR(uint8_t, 16))(hadd(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 16))(abs(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 4))(p_2976->g_130.xyyy)).zxyyyxxx && ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 4))(l_131.yyxx)).zzzyzzxz ^ ((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 8))(p_2976->g_79, 0x7AL, (-7L), 0x4AL, ((VECTOR(int8_t, 2))(0x45L, 0x69L)), 0x27L, (-5L))).even, ((VECTOR(int8_t, 8))(l_132.wwxwwwyz)).hi))).hi, ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))(min(((VECTOR(int8_t, 4))(0x09L, (0x60FCL || ((&l_87 != ((*l_135) = p_2976->g_133)) , ((FAKE_DIVERGE(p_2976->local_2_offset, get_local_id(2), 10) == (((l_88[5] = FAKE_DIVERGE(p_2976->local_0_offset, get_local_id(0), 10)) ^ (((l_151 = (p_75 != l_85)) == (-1L)) & l_108.y)) || 0x6927BAF6ACB5B974L)) & p_2976->g_111.s3))), 0L, 0x42L)).yxxxyxywywzyzwyw, (int8_t)l_108.x))).sfd < ((VECTOR(int8_t, 2))(2L)))))))), ((VECTOR(int8_t, 2))(0L)), ((VECTOR(int8_t, 2))((-9L)))))).yxyyxxyy)))))), l_151, l_152, 0L, p_2976->g_6, 0x3CL, ((VECTOR(int8_t, 2))(0x4DL)), (-1L)))))) + ((VECTOR(uint8_t, 16))(0x08L))))), ((VECTOR(uint8_t, 16))(0UL))))).sa2))).xxxxyyxy, ((VECTOR(uint8_t, 8))(248UL))))).hi, ((VECTOR(uint8_t, 4))(0xD6L))))).yyywxzxx - ((VECTOR(uint8_t, 8))(1UL))))).s20 + ((VECTOR(uint8_t, 2))(0x3DL))))), 0x39L)).zxzxwywwzxyyzxzw, ((VECTOR(uint8_t, 16))(0x6CL))))).odd))) & ((VECTOR(uint8_t, 8))(0xD0L))))).s37))).xyxyyxyyxyxxxxxx + ((VECTOR(uint8_t, 16))(0x24L))))).s5343 + ((VECTOR(uint8_t, 4))(255UL))))).hi | ((VECTOR(uint8_t, 2))(255UL))))).yxxxyyyyyxyxyyyx, ((VECTOR(uint8_t, 16))(0xC2L))))).hi, ((VECTOR(uint8_t, 8))(255UL))))).s2517017456262003 + ((VECTOR(uint8_t, 16))(1UL))))).s1df6))).w != p_2976->g_111.s6) ^ p_74) ^ 0x074DL))) == 18446744073709551609UL), p_2976->g_15.y)), l_153.x)), 13))) ^ p_2976->g_92.y)))) >= l_108.x) > GROUP_DIVERGE(2, 1)) , (*p_2976->g_133))) < p_74), 1UL)), (*p_75))), ((VECTOR(int32_t, 4))(0x2376BBF8L))))))).s6 , p_74) , 0x4BL)), p_2976->g_15.x)))
        { /* block id: 36 */
            int32_t l_170 = 0x2D2CF816L;
            int32_t *l_171 = &l_151;
            (*l_171) ^= ((((safe_sub_func_uint8_t_u_u((safe_rshift_func_int8_t_s_u((safe_mul_func_uint8_t_u_u(p_74, (p_75 != &p_2976->g_79))), (l_152 |= (safe_mul_func_int16_t_s_s(((void*)0 == &p_2976->g_70), l_88[5]))))), (p_74 < (p_2976->g_167 ^= (p_2976->g_130.y = p_2976->g_15.y))))) <= ((((p_2976->g_111.s0++) & ((*p_75) && p_2976->g_154)) != (*p_75)) == l_170)) , 0x784CL) <= l_131.x);
        }
        else
        { /* block id: 42 */
            uint8_t l_174 = 0x37L;
            l_152 ^= (**p_2976->g_133);
            (**l_135) = (*p_2976->g_133);
            (*p_2976->g_133) = (void*)0;
            if (l_151)
                goto lbl_217;
            for (l_151 = 15; (l_151 > (-14)); l_151 = safe_sub_func_int8_t_s_s(l_151, 5))
            { /* block id: 48 */
                int32_t *l_175 = &l_152;
                int32_t *l_176 = &l_152;
                int32_t *l_177 = (void*)0;
                int32_t *l_178 = &l_152;
                int32_t *l_179 = (void*)0;
                int32_t *l_180 = &l_152;
                uint64_t l_181 = 0x58A5ED254771272EL;
                l_174 ^= p_74;
                --l_181;
            }
        }
lbl_217:
        l_88[5] = (((VECTOR(int64_t, 16))(rhadd(((VECTOR(int64_t, 8))(add_sat(((VECTOR(int64_t, 2))((-9L), 1L)).xxxxxyxx, ((VECTOR(int64_t, 4))(l_184.s5723)).xyzwzyzz))).s7121054024011246, ((VECTOR(int64_t, 2))(l_185.wx)).yyxxyxyxxxyxxxxy))).s6 < (l_186 , (((safe_add_func_int64_t_s_s(((safe_div_func_uint32_t_u_u(((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 2))(0x3C06E78EL, 7UL)).yxyxyxyx + ((VECTOR(uint32_t, 4))(p_2976->g_193.yyyx)).wwxwxzxz))).s2, ((safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 8))(mad_sat(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(255UL, 246UL)), ((VECTOR(uint8_t, 8))(safe_clamp_func(VECTOR(uint8_t, 8),VECTOR(uint8_t, 8),((VECTOR(uint8_t, 16))((p_2976->g_111.s6 = p_74), 250UL, ((VECTOR(uint8_t, 4))(clz(((VECTOR(uint8_t, 4))(abs_diff(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(l_198.s04)) + ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 2))(255UL, 255UL)).xxxyxyyyxxxyyyyy >> ((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 2))(l_201.xw)), ((VECTOR(uint8_t, 8))(0UL, ((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 2))(p_2976->g_202.xx)).xxyx, ((VECTOR(uint8_t, 8))(0x83L, 0xDFL, ((VECTOR(uint8_t, 4))(clz(((VECTOR(uint8_t, 16))((safe_add_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(0x1A93L, 0x389AL)).hi, ((safe_sub_func_uint64_t_u_u(((l_207 != (l_209 = l_207)) > (safe_sub_func_uint64_t_u_u(6UL, (safe_add_func_uint16_t_u_u((p_2976->g_193.x , (safe_div_func_int32_t_s_s((((void*)0 == &p_2976->g_70) == 0x783CDB2FL), l_88[4]))), p_2976->g_202.z))))), p_74)) > (*p_75)))), 0xDDL, 255UL, FAKE_DIVERGE(p_2976->group_0_offset, get_group_id(0), 10), p_2976->g_46.y, p_74, 0xA0L, FAKE_DIVERGE(p_2976->group_1_offset, get_group_id(1), 10), ((VECTOR(uint8_t, 8))(1UL)))).s08c4))), 255UL, 248UL)).even))), ((VECTOR(uint8_t, 2))(0xC7L)), 0x12L)).s56))).yyyxyxxyyxxxxyxy))).s2c))).yxyy, ((VECTOR(uint8_t, 4))(2UL)))))))).z, 0x59L, p_2976->g_92.y, 1UL, p_2976->g_15.x, 0xF5L, p_2976->g_2, 0x44L, 0xBAL, 1UL, ((VECTOR(uint8_t, 4))(0x61L)))).hi, ((VECTOR(uint8_t, 8))(0x4CL)), ((VECTOR(uint8_t, 8))(255UL))))), 0UL, ((VECTOR(uint8_t, 2))(0xC6L)), ((VECTOR(uint8_t, 2))(0UL)), 0xECL)).hi, ((VECTOR(uint8_t, 8))(0x6AL)), ((VECTOR(uint8_t, 8))(249UL))))).s5, 1)) , p_74))) > 0x30ACL), 0x49283E14190088FAL)) || 0xA114316DL) , l_201.x)));
        for (p_2976->g_79 = 0; (p_2976->g_79 >= 30); p_2976->g_79++)
        { /* block id: 59 */
            int32_t l_220[3];
            int32_t *l_221 = (void*)0;
            int32_t *l_222[3];
            int64_t l_224 = 0x2C7234715A6FE462L;
            int32_t l_225[9][4] = {{1L,0x70E826D9L,0x3241E47BL,0x70E826D9L},{1L,0x70E826D9L,0x3241E47BL,0x70E826D9L},{1L,0x70E826D9L,0x3241E47BL,0x70E826D9L},{1L,0x70E826D9L,0x3241E47BL,0x70E826D9L},{1L,0x70E826D9L,0x3241E47BL,0x70E826D9L},{1L,0x70E826D9L,0x3241E47BL,0x70E826D9L},{1L,0x70E826D9L,0x3241E47BL,0x70E826D9L},{1L,0x70E826D9L,0x3241E47BL,0x70E826D9L},{1L,0x70E826D9L,0x3241E47BL,0x70E826D9L}};
            uint16_t l_226 = 0xB516L;
            int64_t *l_232 = (void*)0;
            int64_t *l_233 = (void*)0;
            int64_t *l_234 = &l_224;
            uint16_t *l_243 = (void*)0;
            uint16_t *l_244 = &l_226;
            int32_t l_248[7] = {1L,1L,1L,1L,1L,1L,1L};
            VECTOR(uint32_t, 4) l_249 = (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0xBF032243L), 0xBF032243L);
            VECTOR(uint32_t, 8) l_256 = (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 4UL), 4UL), 4UL, 4294967295UL, 4UL);
            int8_t l_265 = 0x5EL;
            int32_t l_266 = 5L;
            int i, j;
            for (i = 0; i < 3; i++)
                l_220[i] = 9L;
            for (i = 0; i < 3; i++)
                l_222[i] = (void*)0;
            ++l_226;
            l_152 = (((l_245.y &= (((GROUP_DIVERGE(0, 1) | FAKE_DIVERGE(p_2976->group_1_offset, get_group_id(1), 10)) | (safe_add_func_int32_t_s_s(((p_74 , (safe_unary_minus_func_int64_t_s(((VECTOR(int64_t, 16))((-1L), 0x5264EAE1FFC6A618L, 1L, ((*l_234) &= 1L), ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 4))(1L, l_88[5], 0L, (-1L))).odd & ((VECTOR(int64_t, 4))(l_235.s12ca)).odd))), 0x4562F7644E7E3F85L, 4L)), 0x15AE59C1D78DC2BEL, ((VECTOR(int64_t, 2))(0x4B13C09B54BB9ECAL, 0x1418A6E41CB40238L)), 0x1021B9E9F541C698L, ((safe_unary_minus_func_uint8_t_u((!l_152))) <= GROUP_DIVERGE(1, 1)), (-1L), (-1L), 0x3AC0C6FC5E1DF802L)).sb))) >= (((safe_mod_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(65535UL, ((*l_244) = p_74))), 65535UL)) == ((p_74 | p_74) != 0UL)) | 0x34C88D89L)), FAKE_DIVERGE(p_2976->global_0_offset, get_global_id(0), 10)))) && p_74)) != p_2976->g_92.x) || p_2976->g_15.x);
            l_268 = (l_151 &= ((((p_2976->g_15.x ^= (((l_248[3] = (l_88[5] = (0x1C99BE29L ^ (p_74 ^ p_2976->g_22)))) < ((VECTOR(uint32_t, 16))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 16),((VECTOR(uint32_t, 16))(l_249.zyzwwzwwxyyzywzy)), ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 4))(rotate(((VECTOR(uint32_t, 8))(l_252.s72376646)).hi, ((VECTOR(uint32_t, 8))(sub_sat(((VECTOR(uint32_t, 16))(l_253.xyyxyxyxxyyxyyyy)).lo, ((VECTOR(uint32_t, 4))(p_2976->g_254.s7377)).zzwwxxyy))).hi))) + ((VECTOR(uint32_t, 4))(p_2976->g_255.s7466))))).xzzxyyyyzyxzxyww, ((VECTOR(uint32_t, 16))(l_256.s0240321161242163))))).s7) > p_74)) > (safe_unary_minus_func_uint64_t_u(1UL))) && (((safe_sub_func_uint16_t_u_u((((FAKE_DIVERGE(p_2976->local_1_offset, get_local_id(1), 10) || (p_74 , l_131.x)) | (((safe_sub_func_uint16_t_u_u((((safe_add_func_uint16_t_u_u((l_108.x < (((void*)0 != l_264) && l_265)), l_253.x)) < p_74) > p_2976->g_130.x), p_74)) , p_2976->g_46.x) | p_2976->g_193.y)) || FAKE_DIVERGE(p_2976->global_1_offset, get_global_id(1), 10)), 0x7DBBL)) ^ l_266) < l_267)) > p_74));
            l_269[5] &= (-5L);
        }
    }
    else
    { /* block id: 72 */
        uint32_t l_296 = 4294967295UL;
        VECTOR(int64_t, 8) l_318 = (VECTOR(int64_t, 8))(0x3E53063821AD0D8FL, (VECTOR(int64_t, 4))(0x3E53063821AD0D8FL, (VECTOR(int64_t, 2))(0x3E53063821AD0D8FL, (-3L)), (-3L)), (-3L), 0x3E53063821AD0D8FL, (-3L));
        uint64_t *l_341[2];
        int32_t *l_353[5][1][2] = {{{&l_88[5],&l_152}},{{&l_88[5],&l_152}},{{&l_88[5],&l_152}},{{&l_88[5],&l_152}},{{&l_88[5],&l_152}}};
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_341[i] = &p_2976->g_79;
        for (p_74 = 0; (p_74 < (-14)); p_74 = safe_sub_func_int8_t_s_s(p_74, 5))
        { /* block id: 75 */
            uint32_t **l_279 = &p_2976->g_70;
            int64_t *l_280 = &p_2976->g_281;
            int32_t *l_282 = &l_88[5];
            VECTOR(uint32_t, 8) l_287 = (VECTOR(uint32_t, 8))(4294967292UL, (VECTOR(uint32_t, 4))(4294967292UL, (VECTOR(uint32_t, 2))(4294967292UL, 0xAD8483F4L), 0xAD8483F4L), 0xAD8483F4L, 4294967292UL, 0xAD8483F4L);
            VECTOR(uint32_t, 8) l_294 = (VECTOR(uint32_t, 8))(0x26E2AAAEL, (VECTOR(uint32_t, 4))(0x26E2AAAEL, (VECTOR(uint32_t, 2))(0x26E2AAAEL, 1UL), 1UL), 1UL, 0x26E2AAAEL, 1UL);
            VECTOR(uint32_t, 8) l_295 = (VECTOR(uint32_t, 8))(0x0EFFC479L, (VECTOR(uint32_t, 4))(0x0EFFC479L, (VECTOR(uint32_t, 2))(0x0EFFC479L, 0x0F25A0BAL), 0x0F25A0BAL), 0x0F25A0BAL, 0x0EFFC479L, 0x0F25A0BAL);
            int32_t *l_311 = &l_151;
            VECTOR(int64_t, 8) l_319 = (VECTOR(int64_t, 8))(0x18E9AF74B91CC9CBL, (VECTOR(int64_t, 4))(0x18E9AF74B91CC9CBL, (VECTOR(int64_t, 2))(0x18E9AF74B91CC9CBL, 0L), 0L), 0L, 0x18E9AF74B91CC9CBL, 0L);
            int8_t *l_342 = (void*)0;
            int8_t *l_343 = (void*)0;
            int8_t *l_344 = (void*)0;
            int8_t *l_345 = (void*)0;
            int8_t *l_346 = (void*)0;
            int8_t *l_347 = (void*)0;
            int8_t *l_348 = (void*)0;
            int8_t *l_349 = (void*)0;
            int8_t *l_350 = (void*)0;
            int8_t *l_351[4][2];
            int32_t l_352 = 0x28EC4BC7L;
            int i, j;
            for (i = 0; i < 4; i++)
            {
                for (j = 0; j < 2; j++)
                    l_351[i][j] = (void*)0;
            }
            (*l_282) |= (((safe_mod_func_int64_t_s_s((((((safe_rshift_func_int16_t_s_s((safe_sub_func_int64_t_s_s(((*l_280) = (l_278 == ((*l_279) = &p_2976->g_154))), ((((*p_2976->g_133) = l_282) != (void*)0) & l_201.w))), p_2976->g_255.s7)) > 0x20L) ^ p_2976->g_22) != (safe_div_func_uint64_t_u_u(((*p_75) = (((VECTOR(uint32_t, 16))(4294967291UL, 4294967295UL, 0x73BCDCAEL, ((VECTOR(uint32_t, 2))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 2),((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(0UL, 0x4961345AL)), 0xEA1B7AEEL, 0xA9112BF3L)), 0UL, 0x585EAEFBL, 4294967295UL, ((VECTOR(uint32_t, 2))(mul_hi(((VECTOR(uint32_t, 8))(l_287.s47254255)).s41, ((VECTOR(uint32_t, 16))(4294967295UL, ((VECTOR(uint32_t, 8))((-((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 2))(p_2976->g_290.s06)).xyyxxyxx + ((VECTOR(uint32_t, 16))(p_2976->g_291.xywxxwzwywwzzwyw)).even)))))), 4294967292UL, ((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 8))(l_294.s34111142)).s07 + ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(l_295.s67324656)).s6, 0x5A65C302L, 0xD9F5853FL, 4294967295UL, ((VECTOR(uint32_t, 4))(5UL)))).s63))), 0xFD8B7633L, 1UL, 4294967295UL, 4294967295UL)).sd8))), 0xEDDB6DF4L, p_2976->g_15.x, ((VECTOR(uint32_t, 4))(0x7AECABF2L)), 0x9A0F084FL)).hi + ((VECTOR(uint32_t, 8))(4294967295UL))))).s60, ((VECTOR(uint32_t, 2))(0xA48CACE7L)), ((VECTOR(uint32_t, 2))(0xB45704F4L))))), p_74, ((VECTOR(uint32_t, 2))(6UL)), 4294967295UL, 0x5FF3DF85L, 1UL, 0xB3966493L, 0x06748D05L, 4294967295UL, 4294967295UL, 0xD453DA7CL)).s9 , (*p_75))), p_2976->g_2))) == 0x0AL), l_296)) > p_74) != p_2976->g_130.y);
            (*l_311) ^= (~((*l_282) = ((safe_mul_func_int16_t_s_s((!p_2976->g_291.z), ((safe_lshift_func_int16_t_s_s((l_201.w != (+(safe_rshift_func_uint16_t_u_u(p_2976->g_254.s7, 5)))), p_74)) != (+(((VECTOR(uint8_t, 16))(((*l_282) & (safe_add_func_int32_t_s_s(0x4EC92609L, (safe_mul_func_uint16_t_u_u((p_74 , 8UL), (safe_add_func_int64_t_s_s((((*l_85) = (safe_div_func_int32_t_s_s((l_296 ^ 0x3ADBL), (*p_2976->g_70)))) > p_74), (*l_282)))))))), ((VECTOR(uint8_t, 4))(9UL)), ((VECTOR(uint8_t, 4))(0x88L)), 251UL, 0xC3L, 255UL, 1UL, 0UL, 0xFCL, 0x81L)).sa == 1L))))) < (*p_2976->g_70))));
            (*p_2976->g_133) = (*p_2976->g_133);
            l_352 |= (((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(p_2976->g_312.s1713660713242325)), ((VECTOR(int32_t, 16))(((**p_2976->g_133) , (safe_mul_func_int8_t_s_s((safe_add_func_int64_t_s_s(((-4L) | ((VECTOR(int64_t, 8))(max(((VECTOR(int64_t, 2))(l_317.s20)).xxyxxyxy, ((VECTOR(int64_t, 4))(add_sat(((VECTOR(int64_t, 2))(add_sat(((VECTOR(int64_t, 4))((((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(l_318.s50)), (-1L), 0x7DEDEA721B8BF52BL)).wwxwxxww, ((VECTOR(int64_t, 4))(l_319.s0061)).yzwxxzzx))).s02 || ((VECTOR(int64_t, 2))(0x416D5E26DA1BC001L, 0x1C222AE68F09BE04L))))), (-1L), (-7L))) && ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(((safe_div_func_uint32_t_u_u((*p_2976->g_70), (l_151 ^= (safe_mul_func_uint8_t_u_u(p_74, p_74))))) > ((*p_75) = (safe_div_func_int8_t_s_s((p_2976->g_130.x = ((safe_sub_func_int64_t_s_s((safe_div_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(l_330.xx)).lo, ((safe_add_func_int16_t_s_s((((VECTOR(uint16_t, 2))(p_2976->g_333.yy)).even < (FAKE_DIVERGE(p_2976->global_2_offset, get_global_id(2), 10) && ((safe_lshift_func_int8_t_s_u((((p_74 , (safe_add_func_uint64_t_u_u((((*p_2976->g_133) = &l_88[5]) != &l_88[2]), (((VECTOR(uint32_t, 4))((+((VECTOR(uint32_t, 2))(p_2976->g_338.sca)).yxxx))).x ^ (safe_mul_func_uint16_t_u_u(p_74, l_131.x)))))) , l_341[0]) == l_85), (*l_282))) , (*p_75)))), p_74)) , GROUP_DIVERGE(1, 1)))), l_152)) < 0x338EACA06A549CCEL)), GROUP_DIVERGE(2, 1))))), (-9L), (-10L), 0x5A19C8E91322AAA8L)), ((VECTOR(int64_t, 2))(0L)), 0x5805E1196B93EB39L, 0x488227EEC8330DDAL)).hi))).odd, ((VECTOR(int64_t, 2))((-8L)))))).yyxx, ((VECTOR(int64_t, 4))((-1L)))))).zzzxyyyx))).s1), p_2976->g_333.y)), p_74))), ((VECTOR(int32_t, 8))(0x4DC7678EL)), ((VECTOR(int32_t, 4))((-7L))), 2L, 0x7C33BFADL, 0x05DCE6AFL)), ((VECTOR(int32_t, 16))(0x5E39D098L))))).s0a, ((VECTOR(int32_t, 2))(0x07D2125EL))))).hi >= l_318.s7);
        }
        l_353[1][0][1] = &l_151;
    }
    return p_2976->g_61;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_2977;
    struct S0* p_2976 = &c_2977;
    struct S0 c_2978 = {
        3L, // p_2976->g_2
        0L, // p_2976->g_6
        0x5362DAABL, // p_2976->g_8
        (VECTOR(int16_t, 2))(0x58BCL, 5L), // p_2976->g_15
        0xCFDFE924L, // p_2976->g_22
        0UL, // p_2976->g_37
        (VECTOR(int16_t, 2))(9L, 0x6AE6L), // p_2976->g_46
        (void*)0, // p_2976->g_61
        &p_2976->g_22, // p_2976->g_70
        &p_2976->g_70, // p_2976->g_69
        7UL, // p_2976->g_79
        (VECTOR(int32_t, 2))(1L, (-1L)), // p_2976->g_92
        (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0xB9L), 0xB9L), 0xB9L, 0UL, 0xB9L), // p_2976->g_111
        (VECTOR(int8_t, 2))(0x67L, (-2L)), // p_2976->g_130
        {&p_2976->g_6,&p_2976->g_6}, // p_2976->g_134
        &p_2976->g_134[0], // p_2976->g_133
        0x08243980L, // p_2976->g_154
        4UL, // p_2976->g_167
        (VECTOR(uint32_t, 2))(0x397C92A1L, 0x79510EEAL), // p_2976->g_193
        (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0xA7L), 0xA7L), // p_2976->g_202
        (VECTOR(uint32_t, 8))(0x2B4A36ACL, (VECTOR(uint32_t, 4))(0x2B4A36ACL, (VECTOR(uint32_t, 2))(0x2B4A36ACL, 4294967289UL), 4294967289UL), 4294967289UL, 0x2B4A36ACL, 4294967289UL), // p_2976->g_254
        (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 4294967286UL), 4294967286UL), 4294967286UL, 0UL, 4294967286UL), // p_2976->g_255
        0x071C56A95073DC19L, // p_2976->g_281
        (VECTOR(uint32_t, 16))(0x04676BFBL, (VECTOR(uint32_t, 4))(0x04676BFBL, (VECTOR(uint32_t, 2))(0x04676BFBL, 0x6BEBC717L), 0x6BEBC717L), 0x6BEBC717L, 0x04676BFBL, 0x6BEBC717L, (VECTOR(uint32_t, 2))(0x04676BFBL, 0x6BEBC717L), (VECTOR(uint32_t, 2))(0x04676BFBL, 0x6BEBC717L), 0x04676BFBL, 0x6BEBC717L, 0x04676BFBL, 0x6BEBC717L), // p_2976->g_290
        (VECTOR(uint32_t, 4))(0xFB7AA1AEL, (VECTOR(uint32_t, 2))(0xFB7AA1AEL, 4294967292UL), 4294967292UL), // p_2976->g_291
        (VECTOR(int32_t, 8))(0x6C01186CL, (VECTOR(int32_t, 4))(0x6C01186CL, (VECTOR(int32_t, 2))(0x6C01186CL, 1L), 1L), 1L, 0x6C01186CL, 1L), // p_2976->g_312
        (VECTOR(uint16_t, 2))(65535UL, 0x87E6L), // p_2976->g_333
        (VECTOR(uint32_t, 16))(2UL, (VECTOR(uint32_t, 4))(2UL, (VECTOR(uint32_t, 2))(2UL, 0x0D00F2DCL), 0x0D00F2DCL), 0x0D00F2DCL, 2UL, 0x0D00F2DCL, (VECTOR(uint32_t, 2))(2UL, 0x0D00F2DCL), (VECTOR(uint32_t, 2))(2UL, 0x0D00F2DCL), 2UL, 0x0D00F2DCL, 2UL, 0x0D00F2DCL), // p_2976->g_338
        &p_2976->g_22, // p_2976->g_355
        &p_2976->g_355, // p_2976->g_354
        &p_2976->g_134[0], // p_2976->g_380
        &p_2976->g_380, // p_2976->g_379
        3UL, // p_2976->g_391
        (void*)0, // p_2976->g_397
        (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 254UL), 254UL), 254UL, 1UL, 254UL, (VECTOR(uint8_t, 2))(1UL, 254UL), (VECTOR(uint8_t, 2))(1UL, 254UL), 1UL, 254UL, 1UL, 254UL), // p_2976->g_445
        (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x24L), 0x24L), 0x24L, 255UL, 0x24L, (VECTOR(uint8_t, 2))(255UL, 0x24L), (VECTOR(uint8_t, 2))(255UL, 0x24L), 255UL, 0x24L, 255UL, 0x24L), // p_2976->g_446
        7UL, // p_2976->g_451
        0x4AL, // p_2976->g_510
        &p_2976->g_510, // p_2976->g_509
        {&p_2976->g_509,&p_2976->g_509,&p_2976->g_509}, // p_2976->g_508
        (VECTOR(int32_t, 4))(0x66527888L, (VECTOR(int32_t, 2))(0x66527888L, 0x78488B98L), 0x78488B98L), // p_2976->g_511
        (VECTOR(uint32_t, 8))(0x205E1910L, (VECTOR(uint32_t, 4))(0x205E1910L, (VECTOR(uint32_t, 2))(0x205E1910L, 1UL), 1UL), 1UL, 0x205E1910L, 1UL), // p_2976->g_532
        {{&p_2976->g_451,(void*)0,&p_2976->g_451,(void*)0,&p_2976->g_451,&p_2976->g_451,(void*)0,&p_2976->g_451},{&p_2976->g_451,(void*)0,&p_2976->g_451,(void*)0,&p_2976->g_451,&p_2976->g_451,(void*)0,&p_2976->g_451},{&p_2976->g_451,(void*)0,&p_2976->g_451,(void*)0,&p_2976->g_451,&p_2976->g_451,(void*)0,&p_2976->g_451},{&p_2976->g_451,(void*)0,&p_2976->g_451,(void*)0,&p_2976->g_451,&p_2976->g_451,(void*)0,&p_2976->g_451},{&p_2976->g_451,(void*)0,&p_2976->g_451,(void*)0,&p_2976->g_451,&p_2976->g_451,(void*)0,&p_2976->g_451},{&p_2976->g_451,(void*)0,&p_2976->g_451,(void*)0,&p_2976->g_451,&p_2976->g_451,(void*)0,&p_2976->g_451},{&p_2976->g_451,(void*)0,&p_2976->g_451,(void*)0,&p_2976->g_451,&p_2976->g_451,(void*)0,&p_2976->g_451},{&p_2976->g_451,(void*)0,&p_2976->g_451,(void*)0,&p_2976->g_451,&p_2976->g_451,(void*)0,&p_2976->g_451},{&p_2976->g_451,(void*)0,&p_2976->g_451,(void*)0,&p_2976->g_451,&p_2976->g_451,(void*)0,&p_2976->g_451}}, // p_2976->g_551
        {&p_2976->g_551[4][7]}, // p_2976->g_550
        (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x3FL), 0x3FL), 0x3FL, 1UL, 0x3FL), // p_2976->g_554
        (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0xF7L), 0xF7L), // p_2976->g_563
        (VECTOR(uint8_t, 8))(0x6DL, (VECTOR(uint8_t, 4))(0x6DL, (VECTOR(uint8_t, 2))(0x6DL, 0xE0L), 0xE0L), 0xE0L, 0x6DL, 0xE0L), // p_2976->g_564
        (VECTOR(uint8_t, 4))(252UL, (VECTOR(uint8_t, 2))(252UL, 0xCFL), 0xCFL), // p_2976->g_565
        (VECTOR(uint8_t, 2))(4UL, 0xCCL), // p_2976->g_568
        (VECTOR(uint32_t, 16))(4294967286UL, (VECTOR(uint32_t, 4))(4294967286UL, (VECTOR(uint32_t, 2))(4294967286UL, 0xA323F0F3L), 0xA323F0F3L), 0xA323F0F3L, 4294967286UL, 0xA323F0F3L, (VECTOR(uint32_t, 2))(4294967286UL, 0xA323F0F3L), (VECTOR(uint32_t, 2))(4294967286UL, 0xA323F0F3L), 4294967286UL, 0xA323F0F3L, 4294967286UL, 0xA323F0F3L), // p_2976->g_582
        (VECTOR(int8_t, 8))(0x7EL, (VECTOR(int8_t, 4))(0x7EL, (VECTOR(int8_t, 2))(0x7EL, 0x40L), 0x40L), 0x40L, 0x7EL, 0x40L), // p_2976->g_611
        3L, // p_2976->g_613
        (VECTOR(int32_t, 16))(0x2DDDDC96L, (VECTOR(int32_t, 4))(0x2DDDDC96L, (VECTOR(int32_t, 2))(0x2DDDDC96L, 0x337EF277L), 0x337EF277L), 0x337EF277L, 0x2DDDDC96L, 0x337EF277L, (VECTOR(int32_t, 2))(0x2DDDDC96L, 0x337EF277L), (VECTOR(int32_t, 2))(0x2DDDDC96L, 0x337EF277L), 0x2DDDDC96L, 0x337EF277L, 0x2DDDDC96L, 0x337EF277L), // p_2976->g_624
        (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 4294967292UL), 4294967292UL), 4294967292UL, 0UL, 4294967292UL, (VECTOR(uint32_t, 2))(0UL, 4294967292UL), (VECTOR(uint32_t, 2))(0UL, 4294967292UL), 0UL, 4294967292UL, 0UL, 4294967292UL), // p_2976->g_625
        0x74L, // p_2976->g_626
        (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), (-1L)), (-1L)), // p_2976->g_632
        (VECTOR(int64_t, 16))(0x197A04A7684E6870L, (VECTOR(int64_t, 4))(0x197A04A7684E6870L, (VECTOR(int64_t, 2))(0x197A04A7684E6870L, 0x0F95F3EFE635CFACL), 0x0F95F3EFE635CFACL), 0x0F95F3EFE635CFACL, 0x197A04A7684E6870L, 0x0F95F3EFE635CFACL, (VECTOR(int64_t, 2))(0x197A04A7684E6870L, 0x0F95F3EFE635CFACL), (VECTOR(int64_t, 2))(0x197A04A7684E6870L, 0x0F95F3EFE635CFACL), 0x197A04A7684E6870L, 0x0F95F3EFE635CFACL, 0x197A04A7684E6870L, 0x0F95F3EFE635CFACL), // p_2976->g_634
        (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 1L), 1L), // p_2976->g_635
        (VECTOR(uint64_t, 8))(0x955F4F9600E7274BL, (VECTOR(uint64_t, 4))(0x955F4F9600E7274BL, (VECTOR(uint64_t, 2))(0x955F4F9600E7274BL, 1UL), 1UL), 1UL, 0x955F4F9600E7274BL, 1UL), // p_2976->g_678
        (VECTOR(int32_t, 8))(0x50FE79E0L, (VECTOR(int32_t, 4))(0x50FE79E0L, (VECTOR(int32_t, 2))(0x50FE79E0L, 0x5AEE27BDL), 0x5AEE27BDL), 0x5AEE27BDL, 0x50FE79E0L, 0x5AEE27BDL), // p_2976->g_701
        8L, // p_2976->g_707
        (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 8L), 8L), 8L, (-1L), 8L, (VECTOR(int16_t, 2))((-1L), 8L), (VECTOR(int16_t, 2))((-1L), 8L), (-1L), 8L, (-1L), 8L), // p_2976->g_713
        (VECTOR(int64_t, 8))(0x2A540E062BC15204L, (VECTOR(int64_t, 4))(0x2A540E062BC15204L, (VECTOR(int64_t, 2))(0x2A540E062BC15204L, (-1L)), (-1L)), (-1L), 0x2A540E062BC15204L, (-1L)), // p_2976->g_726
        (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L), (VECTOR(int32_t, 2))(0L, (-1L)), (VECTOR(int32_t, 2))(0L, (-1L)), 0L, (-1L), 0L, (-1L)), // p_2976->g_728
        (VECTOR(int32_t, 2))(0x2E84B3DAL, 0x79F273B3L), // p_2976->g_729
        (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x4CE731E5L), 0x4CE731E5L), // p_2976->g_732
        (VECTOR(int16_t, 4))(0x42BCL, (VECTOR(int16_t, 2))(0x42BCL, 0x4655L), 0x4655L), // p_2976->g_745
        (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x31A1L), 0x31A1L), // p_2976->g_756
        (VECTOR(int16_t, 16))(0x62B6L, (VECTOR(int16_t, 4))(0x62B6L, (VECTOR(int16_t, 2))(0x62B6L, 0x6C78L), 0x6C78L), 0x6C78L, 0x62B6L, 0x6C78L, (VECTOR(int16_t, 2))(0x62B6L, 0x6C78L), (VECTOR(int16_t, 2))(0x62B6L, 0x6C78L), 0x62B6L, 0x6C78L, 0x62B6L, 0x6C78L), // p_2976->g_757
        (VECTOR(int16_t, 8))(0x7853L, (VECTOR(int16_t, 4))(0x7853L, (VECTOR(int16_t, 2))(0x7853L, 0x0EDDL), 0x0EDDL), 0x0EDDL, 0x7853L, 0x0EDDL), // p_2976->g_758
        (VECTOR(int8_t, 16))(8L, (VECTOR(int8_t, 4))(8L, (VECTOR(int8_t, 2))(8L, (-9L)), (-9L)), (-9L), 8L, (-9L), (VECTOR(int8_t, 2))(8L, (-9L)), (VECTOR(int8_t, 2))(8L, (-9L)), 8L, (-9L), 8L, (-9L)), // p_2976->g_760
        (VECTOR(int8_t, 4))(0x03L, (VECTOR(int8_t, 2))(0x03L, 0x38L), 0x38L), // p_2976->g_762
        (VECTOR(int8_t, 2))(4L, 0x76L), // p_2976->g_763
        (VECTOR(int8_t, 2))((-1L), 0x74L), // p_2976->g_764
        (VECTOR(int8_t, 16))(0x6AL, (VECTOR(int8_t, 4))(0x6AL, (VECTOR(int8_t, 2))(0x6AL, 0x71L), 0x71L), 0x71L, 0x6AL, 0x71L, (VECTOR(int8_t, 2))(0x6AL, 0x71L), (VECTOR(int8_t, 2))(0x6AL, 0x71L), 0x6AL, 0x71L, 0x6AL, 0x71L), // p_2976->g_772
        (VECTOR(int8_t, 16))(0x36L, (VECTOR(int8_t, 4))(0x36L, (VECTOR(int8_t, 2))(0x36L, 1L), 1L), 1L, 0x36L, 1L, (VECTOR(int8_t, 2))(0x36L, 1L), (VECTOR(int8_t, 2))(0x36L, 1L), 0x36L, 1L, 0x36L, 1L), // p_2976->g_774
        (VECTOR(int32_t, 4))(7L, (VECTOR(int32_t, 2))(7L, 1L), 1L), // p_2976->g_783
        (VECTOR(uint16_t, 8))(0x19C9L, (VECTOR(uint16_t, 4))(0x19C9L, (VECTOR(uint16_t, 2))(0x19C9L, 0x3CACL), 0x3CACL), 0x3CACL, 0x19C9L, 0x3CACL), // p_2976->g_792
        (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x651FL), 0x651FL), // p_2976->g_793
        (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0L), 0L), // p_2976->g_802
        (void*)0, // p_2976->g_827
        (VECTOR(int16_t, 8))(0x766BL, (VECTOR(int16_t, 4))(0x766BL, (VECTOR(int16_t, 2))(0x766BL, (-1L)), (-1L)), (-1L), 0x766BL, (-1L)), // p_2976->g_833
        (VECTOR(int8_t, 2))(1L, 0x0FL), // p_2976->g_848
        (VECTOR(uint32_t, 16))(0x9358A9AEL, (VECTOR(uint32_t, 4))(0x9358A9AEL, (VECTOR(uint32_t, 2))(0x9358A9AEL, 0x00DA4C87L), 0x00DA4C87L), 0x00DA4C87L, 0x9358A9AEL, 0x00DA4C87L, (VECTOR(uint32_t, 2))(0x9358A9AEL, 0x00DA4C87L), (VECTOR(uint32_t, 2))(0x9358A9AEL, 0x00DA4C87L), 0x9358A9AEL, 0x00DA4C87L, 0x9358A9AEL, 0x00DA4C87L), // p_2976->g_878
        (VECTOR(uint32_t, 2))(0xC70DBCEDL, 0xCC285A94L), // p_2976->g_881
        (VECTOR(uint32_t, 16))(0x94081FA9L, (VECTOR(uint32_t, 4))(0x94081FA9L, (VECTOR(uint32_t, 2))(0x94081FA9L, 0x470E47B9L), 0x470E47B9L), 0x470E47B9L, 0x94081FA9L, 0x470E47B9L, (VECTOR(uint32_t, 2))(0x94081FA9L, 0x470E47B9L), (VECTOR(uint32_t, 2))(0x94081FA9L, 0x470E47B9L), 0x94081FA9L, 0x470E47B9L, 0x94081FA9L, 0x470E47B9L), // p_2976->g_883
        (VECTOR(uint32_t, 2))(0xB92D1A1AL, 4294967287UL), // p_2976->g_884
        0xBF00D2BDL, // p_2976->g_887
        (VECTOR(int8_t, 8))(0x75L, (VECTOR(int8_t, 4))(0x75L, (VECTOR(int8_t, 2))(0x75L, 0x0CL), 0x0CL), 0x0CL, 0x75L, 0x0CL), // p_2976->g_888
        (VECTOR(uint8_t, 2))(0xDCL, 0x92L), // p_2976->g_938
        (VECTOR(uint16_t, 16))(0x48DCL, (VECTOR(uint16_t, 4))(0x48DCL, (VECTOR(uint16_t, 2))(0x48DCL, 1UL), 1UL), 1UL, 0x48DCL, 1UL, (VECTOR(uint16_t, 2))(0x48DCL, 1UL), (VECTOR(uint16_t, 2))(0x48DCL, 1UL), 0x48DCL, 1UL, 0x48DCL, 1UL), // p_2976->g_996
        (VECTOR(uint16_t, 4))(0x9741L, (VECTOR(uint16_t, 2))(0x9741L, 3UL), 3UL), // p_2976->g_1006
        (VECTOR(uint16_t, 4))(0x88DCL, (VECTOR(uint16_t, 2))(0x88DCL, 0UL), 0UL), // p_2976->g_1007
        (VECTOR(uint16_t, 4))(0x52ECL, (VECTOR(uint16_t, 2))(0x52ECL, 65526UL), 65526UL), // p_2976->g_1008
        (VECTOR(int8_t, 8))(0x29L, (VECTOR(int8_t, 4))(0x29L, (VECTOR(int8_t, 2))(0x29L, 0x78L), 0x78L), 0x78L, 0x29L, 0x78L), // p_2976->g_1062
        (VECTOR(int8_t, 8))(0x31L, (VECTOR(int8_t, 4))(0x31L, (VECTOR(int8_t, 2))(0x31L, 0L), 0L), 0L, 0x31L, 0L), // p_2976->g_1063
        (VECTOR(int8_t, 4))((-2L), (VECTOR(int8_t, 2))((-2L), 0x30L), 0x30L), // p_2976->g_1066
        1L, // p_2976->g_1075
        (VECTOR(int8_t, 8))(0x79L, (VECTOR(int8_t, 4))(0x79L, (VECTOR(int8_t, 2))(0x79L, 6L), 6L), 6L, 0x79L, 6L), // p_2976->g_1106
        0x2F9D4C6BFED794C8L, // p_2976->g_1110
        0x383CL, // p_2976->g_1165
        &p_2976->g_134[0], // p_2976->g_1189
        {(void*)0,&p_2976->g_1075,(void*)0,(void*)0,&p_2976->g_1075,(void*)0,(void*)0,&p_2976->g_1075,(void*)0}, // p_2976->g_1193
        {{&p_2976->g_1193[7],&p_2976->g_1193[7],&p_2976->g_1193[7],&p_2976->g_1193[7],&p_2976->g_1193[7],&p_2976->g_1193[7],&p_2976->g_1193[7]},{&p_2976->g_1193[7],&p_2976->g_1193[7],&p_2976->g_1193[7],&p_2976->g_1193[7],&p_2976->g_1193[7],&p_2976->g_1193[7],&p_2976->g_1193[7]},{&p_2976->g_1193[7],&p_2976->g_1193[7],&p_2976->g_1193[7],&p_2976->g_1193[7],&p_2976->g_1193[7],&p_2976->g_1193[7],&p_2976->g_1193[7]}}, // p_2976->g_1192
        (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, (-10L)), (-10L)), (-10L), 1L, (-10L), (VECTOR(int16_t, 2))(1L, (-10L)), (VECTOR(int16_t, 2))(1L, (-10L)), 1L, (-10L), 1L, (-10L)), // p_2976->g_1215
        (VECTOR(int32_t, 2))(0x2C7B5263L, (-6L)), // p_2976->g_1218
        (VECTOR(uint8_t, 8))(6UL, (VECTOR(uint8_t, 4))(6UL, (VECTOR(uint8_t, 2))(6UL, 246UL), 246UL), 246UL, 6UL, 246UL), // p_2976->g_1262
        (VECTOR(uint8_t, 2))(0x71L, 252UL), // p_2976->g_1284
        (VECTOR(uint8_t, 2))(0xEAL, 0x7DL), // p_2976->g_1292
        (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 253UL), 253UL), 253UL, 255UL, 253UL), // p_2976->g_1356
        (VECTOR(uint8_t, 8))(0x84L, (VECTOR(uint8_t, 4))(0x84L, (VECTOR(uint8_t, 2))(0x84L, 0x58L), 0x58L), 0x58L, 0x84L, 0x58L), // p_2976->g_1360
        (VECTOR(uint8_t, 4))(0x26L, (VECTOR(uint8_t, 2))(0x26L, 0UL), 0UL), // p_2976->g_1361
        (VECTOR(uint8_t, 2))(9UL, 0UL), // p_2976->g_1362
        (VECTOR(uint8_t, 16))(8UL, (VECTOR(uint8_t, 4))(8UL, (VECTOR(uint8_t, 2))(8UL, 0xC6L), 0xC6L), 0xC6L, 8UL, 0xC6L, (VECTOR(uint8_t, 2))(8UL, 0xC6L), (VECTOR(uint8_t, 2))(8UL, 0xC6L), 8UL, 0xC6L, 8UL, 0xC6L), // p_2976->g_1373
        (VECTOR(uint8_t, 2))(0x55L, 255UL), // p_2976->g_1376
        (VECTOR(uint32_t, 2))(0UL, 0xA5BCD242L), // p_2976->g_1389
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 1L), 1L), 1L, 1L, 1L), // p_2976->g_1417
        (VECTOR(int8_t, 8))((-9L), (VECTOR(int8_t, 4))((-9L), (VECTOR(int8_t, 2))((-9L), 0x22L), 0x22L), 0x22L, (-9L), 0x22L), // p_2976->g_1419
        (VECTOR(int8_t, 2))(0x6EL, (-1L)), // p_2976->g_1433
        (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x36L), 0x36L), // p_2976->g_1471
        (VECTOR(int8_t, 2))((-9L), 0x4FL), // p_2976->g_1472
        (VECTOR(int16_t, 16))(0x1FF8L, (VECTOR(int16_t, 4))(0x1FF8L, (VECTOR(int16_t, 2))(0x1FF8L, (-2L)), (-2L)), (-2L), 0x1FF8L, (-2L), (VECTOR(int16_t, 2))(0x1FF8L, (-2L)), (VECTOR(int16_t, 2))(0x1FF8L, (-2L)), 0x1FF8L, (-2L), 0x1FF8L, (-2L)), // p_2976->g_1474
        (VECTOR(uint8_t, 4))(0x00L, (VECTOR(uint8_t, 2))(0x00L, 2UL), 2UL), // p_2976->g_1482
        (VECTOR(int8_t, 8))(0x74L, (VECTOR(int8_t, 4))(0x74L, (VECTOR(int8_t, 2))(0x74L, 0x57L), 0x57L), 0x57L, 0x74L, 0x57L), // p_2976->g_1486
        (void*)0, // p_2976->g_1502
        &p_2976->g_1502, // p_2976->g_1501
        &p_2976->g_1502, // p_2976->g_1508
        (VECTOR(uint64_t, 8))(18446744073709551613UL, (VECTOR(uint64_t, 4))(18446744073709551613UL, (VECTOR(uint64_t, 2))(18446744073709551613UL, 1UL), 1UL), 1UL, 18446744073709551613UL, 1UL), // p_2976->g_1522
        &p_2976->g_354, // p_2976->g_1539
        0x3DL, // p_2976->g_1540
        (VECTOR(uint16_t, 4))(0x42BBL, (VECTOR(uint16_t, 2))(0x42BBL, 0x5DE2L), 0x5DE2L), // p_2976->g_1630
        (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0xD991L), 0xD991L), 0xD991L, 0UL, 0xD991L), // p_2976->g_1631
        (VECTOR(uint64_t, 16))(0xB336EB9B4FE2E886L, (VECTOR(uint64_t, 4))(0xB336EB9B4FE2E886L, (VECTOR(uint64_t, 2))(0xB336EB9B4FE2E886L, 0x4B2277CB2DEB474DL), 0x4B2277CB2DEB474DL), 0x4B2277CB2DEB474DL, 0xB336EB9B4FE2E886L, 0x4B2277CB2DEB474DL, (VECTOR(uint64_t, 2))(0xB336EB9B4FE2E886L, 0x4B2277CB2DEB474DL), (VECTOR(uint64_t, 2))(0xB336EB9B4FE2E886L, 0x4B2277CB2DEB474DL), 0xB336EB9B4FE2E886L, 0x4B2277CB2DEB474DL, 0xB336EB9B4FE2E886L, 0x4B2277CB2DEB474DL), // p_2976->g_1666
        (VECTOR(int32_t, 2))(0x4D45573AL, 0x3988980CL), // p_2976->g_1694
        (VECTOR(int8_t, 16))(0x0FL, (VECTOR(int8_t, 4))(0x0FL, (VECTOR(int8_t, 2))(0x0FL, 0L), 0L), 0L, 0x0FL, 0L, (VECTOR(int8_t, 2))(0x0FL, 0L), (VECTOR(int8_t, 2))(0x0FL, 0L), 0x0FL, 0L, 0x0FL, 0L), // p_2976->g_1697
        (VECTOR(int8_t, 16))(0x67L, (VECTOR(int8_t, 4))(0x67L, (VECTOR(int8_t, 2))(0x67L, 2L), 2L), 2L, 0x67L, 2L, (VECTOR(int8_t, 2))(0x67L, 2L), (VECTOR(int8_t, 2))(0x67L, 2L), 0x67L, 2L, 0x67L, 2L), // p_2976->g_1698
        (VECTOR(uint64_t, 4))(0xBA748E4F8FBF41BDL, (VECTOR(uint64_t, 2))(0xBA748E4F8FBF41BDL, 0x1287A51E9EB336D3L), 0x1287A51E9EB336D3L), // p_2976->g_1700
        (VECTOR(int16_t, 4))((-8L), (VECTOR(int16_t, 2))((-8L), 0x4A51L), 0x4A51L), // p_2976->g_1703
        (VECTOR(uint32_t, 8))(0x5B990560L, (VECTOR(uint32_t, 4))(0x5B990560L, (VECTOR(uint32_t, 2))(0x5B990560L, 9UL), 9UL), 9UL, 0x5B990560L, 9UL), // p_2976->g_1711
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x433C7DD2L), 0x433C7DD2L), 0x433C7DD2L, 1L, 0x433C7DD2L), // p_2976->g_1712
        (VECTOR(uint16_t, 4))(0x9073L, (VECTOR(uint16_t, 2))(0x9073L, 0x2E32L), 0x2E32L), // p_2976->g_1727
        (VECTOR(int8_t, 16))(0x78L, (VECTOR(int8_t, 4))(0x78L, (VECTOR(int8_t, 2))(0x78L, (-8L)), (-8L)), (-8L), 0x78L, (-8L), (VECTOR(int8_t, 2))(0x78L, (-8L)), (VECTOR(int8_t, 2))(0x78L, (-8L)), 0x78L, (-8L), 0x78L, (-8L)), // p_2976->g_1745
        {0x5FD56B3AL,0x5FD56B3AL,0x5FD56B3AL,0x5FD56B3AL,0x5FD56B3AL}, // p_2976->g_1768
        &p_2976->g_1768[2], // p_2976->g_1767
        &p_2976->g_1767, // p_2976->g_1766
        &p_2976->g_1766, // p_2976->g_1765
        (VECTOR(int8_t, 2))((-5L), 0x02L), // p_2976->g_1794
        (VECTOR(uint16_t, 16))(9UL, (VECTOR(uint16_t, 4))(9UL, (VECTOR(uint16_t, 2))(9UL, 1UL), 1UL), 1UL, 9UL, 1UL, (VECTOR(uint16_t, 2))(9UL, 1UL), (VECTOR(uint16_t, 2))(9UL, 1UL), 9UL, 1UL, 9UL, 1UL), // p_2976->g_1839
        (void*)0, // p_2976->g_1846
        (VECTOR(int8_t, 2))(0x18L, 0L), // p_2976->g_1852
        (void*)0, // p_2976->g_1864
        (void*)0, // p_2976->g_1867
        (void*)0, // p_2976->g_1868
        (VECTOR(int64_t, 2))((-3L), 0L), // p_2976->g_1891
        (VECTOR(uint8_t, 16))(0x49L, (VECTOR(uint8_t, 4))(0x49L, (VECTOR(uint8_t, 2))(0x49L, 0x79L), 0x79L), 0x79L, 0x49L, 0x79L, (VECTOR(uint8_t, 2))(0x49L, 0x79L), (VECTOR(uint8_t, 2))(0x49L, 0x79L), 0x49L, 0x79L, 0x49L, 0x79L), // p_2976->g_1893
        0x0EEF31F8D09664C1L, // p_2976->g_1934
        (VECTOR(uint16_t, 16))(0x5476L, (VECTOR(uint16_t, 4))(0x5476L, (VECTOR(uint16_t, 2))(0x5476L, 8UL), 8UL), 8UL, 0x5476L, 8UL, (VECTOR(uint16_t, 2))(0x5476L, 8UL), (VECTOR(uint16_t, 2))(0x5476L, 8UL), 0x5476L, 8UL, 0x5476L, 8UL), // p_2976->g_1999
        (VECTOR(uint16_t, 2))(0UL, 0x1377L), // p_2976->g_2005
        (VECTOR(uint16_t, 4))(0xF1FDL, (VECTOR(uint16_t, 2))(0xF1FDL, 0x33E1L), 0x33E1L), // p_2976->g_2007
        (VECTOR(int64_t, 8))(0x5CEF2997164740F4L, (VECTOR(int64_t, 4))(0x5CEF2997164740F4L, (VECTOR(int64_t, 2))(0x5CEF2997164740F4L, 1L), 1L), 1L, 0x5CEF2997164740F4L, 1L), // p_2976->g_2040
        {{0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL}}, // p_2976->g_2110
        (VECTOR(uint8_t, 16))(0x6DL, (VECTOR(uint8_t, 4))(0x6DL, (VECTOR(uint8_t, 2))(0x6DL, 0x11L), 0x11L), 0x11L, 0x6DL, 0x11L, (VECTOR(uint8_t, 2))(0x6DL, 0x11L), (VECTOR(uint8_t, 2))(0x6DL, 0x11L), 0x6DL, 0x11L, 0x6DL, 0x11L), // p_2976->g_2117
        (VECTOR(int8_t, 2))((-4L), 0x0CL), // p_2976->g_2139
        1UL, // p_2976->g_2153
        &p_2976->g_613, // p_2976->g_2163
        &p_2976->g_2163, // p_2976->g_2162
        &p_2976->g_2162, // p_2976->g_2161
        (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0x4BA72B64L), 0x4BA72B64L), 0x4BA72B64L, 0UL, 0x4BA72B64L), // p_2976->g_2181
        (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x2CL), 0x2CL), 0x2CL, 1L, 0x2CL), // p_2976->g_2184
        (VECTOR(uint64_t, 2))(0x9C257E2C9FA5C07BL, 0UL), // p_2976->g_2202
        0xA80082B8DC2FEF19L, // p_2976->g_2220
        (VECTOR(uint32_t, 2))(0x488B035FL, 0x5B123AC5L), // p_2976->g_2241
        (VECTOR(uint32_t, 2))(0xCD6BB0E8L, 4294967295UL), // p_2976->g_2242
        (VECTOR(uint32_t, 4))(4294967294UL, (VECTOR(uint32_t, 2))(4294967294UL, 0xA7AFDB0AL), 0xA7AFDB0AL), // p_2976->g_2245
        &p_2976->g_69, // p_2976->g_2261
        (VECTOR(int32_t, 16))(0x65ABC889L, (VECTOR(int32_t, 4))(0x65ABC889L, (VECTOR(int32_t, 2))(0x65ABC889L, 0x6F171749L), 0x6F171749L), 0x6F171749L, 0x65ABC889L, 0x6F171749L, (VECTOR(int32_t, 2))(0x65ABC889L, 0x6F171749L), (VECTOR(int32_t, 2))(0x65ABC889L, 0x6F171749L), 0x65ABC889L, 0x6F171749L, 0x65ABC889L, 0x6F171749L), // p_2976->g_2263
        0x54E0L, // p_2976->g_2271
        &p_2976->g_2271, // p_2976->g_2270
        &p_2976->g_2270, // p_2976->g_2269
        &p_2976->g_2269, // p_2976->g_2268
        (VECTOR(int8_t, 8))((-8L), (VECTOR(int8_t, 4))((-8L), (VECTOR(int8_t, 2))((-8L), (-1L)), (-1L)), (-1L), (-8L), (-1L)), // p_2976->g_2276
        (VECTOR(uint32_t, 16))(0xC880F1C4L, (VECTOR(uint32_t, 4))(0xC880F1C4L, (VECTOR(uint32_t, 2))(0xC880F1C4L, 4294967295UL), 4294967295UL), 4294967295UL, 0xC880F1C4L, 4294967295UL, (VECTOR(uint32_t, 2))(0xC880F1C4L, 4294967295UL), (VECTOR(uint32_t, 2))(0xC880F1C4L, 4294967295UL), 0xC880F1C4L, 4294967295UL, 0xC880F1C4L, 4294967295UL), // p_2976->g_2292
        (VECTOR(int32_t, 4))(0x1A16E16CL, (VECTOR(int32_t, 2))(0x1A16E16CL, 0x3AD70C26L), 0x3AD70C26L), // p_2976->g_2293
        (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-7L)), (-7L)), (-7L), (-1L), (-7L), (VECTOR(int32_t, 2))((-1L), (-7L)), (VECTOR(int32_t, 2))((-1L), (-7L)), (-1L), (-7L), (-1L), (-7L)), // p_2976->g_2294
        0xCEL, // p_2976->g_2300
        (VECTOR(uint32_t, 4))(0x07862C9BL, (VECTOR(uint32_t, 2))(0x07862C9BL, 1UL), 1UL), // p_2976->g_2318
        (VECTOR(uint32_t, 8))(4294967294UL, (VECTOR(uint32_t, 4))(4294967294UL, (VECTOR(uint32_t, 2))(4294967294UL, 0xE64A462FL), 0xE64A462FL), 0xE64A462FL, 4294967294UL, 0xE64A462FL), // p_2976->g_2323
        (VECTOR(uint32_t, 8))(4294967290UL, (VECTOR(uint32_t, 4))(4294967290UL, (VECTOR(uint32_t, 2))(4294967290UL, 0x1C376364L), 0x1C376364L), 0x1C376364L, 4294967290UL, 0x1C376364L), // p_2976->g_2324
        (VECTOR(int64_t, 8))(0x3CB027AA8523AE66L, (VECTOR(int64_t, 4))(0x3CB027AA8523AE66L, (VECTOR(int64_t, 2))(0x3CB027AA8523AE66L, 0x5CACC64C538ECE81L), 0x5CACC64C538ECE81L), 0x5CACC64C538ECE81L, 0x3CB027AA8523AE66L, 0x5CACC64C538ECE81L), // p_2976->g_2337
        (VECTOR(uint16_t, 16))(65529UL, (VECTOR(uint16_t, 4))(65529UL, (VECTOR(uint16_t, 2))(65529UL, 0x5394L), 0x5394L), 0x5394L, 65529UL, 0x5394L, (VECTOR(uint16_t, 2))(65529UL, 0x5394L), (VECTOR(uint16_t, 2))(65529UL, 0x5394L), 65529UL, 0x5394L, 65529UL, 0x5394L), // p_2976->g_2364
        (VECTOR(uint16_t, 16))(0x8396L, (VECTOR(uint16_t, 4))(0x8396L, (VECTOR(uint16_t, 2))(0x8396L, 0x6650L), 0x6650L), 0x6650L, 0x8396L, 0x6650L, (VECTOR(uint16_t, 2))(0x8396L, 0x6650L), (VECTOR(uint16_t, 2))(0x8396L, 0x6650L), 0x8396L, 0x6650L, 0x8396L, 0x6650L), // p_2976->g_2370
        (VECTOR(int8_t, 2))((-10L), 0x11L), // p_2976->g_2377
        (VECTOR(int8_t, 2))(0x2CL, 0x1FL), // p_2976->g_2379
        (VECTOR(uint16_t, 8))(0xEF50L, (VECTOR(uint16_t, 4))(0xEF50L, (VECTOR(uint16_t, 2))(0xEF50L, 0x0E29L), 0x0E29L), 0x0E29L, 0xEF50L, 0x0E29L), // p_2976->g_2383
        (VECTOR(uint16_t, 2))(0xD3F3L, 0UL), // p_2976->g_2393
        (VECTOR(uint64_t, 8))(18446744073709551612UL, (VECTOR(uint64_t, 4))(18446744073709551612UL, (VECTOR(uint64_t, 2))(18446744073709551612UL, 4UL), 4UL), 4UL, 18446744073709551612UL, 4UL), // p_2976->g_2429
        (VECTOR(uint64_t, 2))(0xA6483C7021E9BC33L, 0xABE1297BD3009FE6L), // p_2976->g_2431
        (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x844C31B523775203L), 0x844C31B523775203L), // p_2976->g_2437
        (VECTOR(int64_t, 2))(0x7EDFBC5C45714409L, 5L), // p_2976->g_2443
        (void*)0, // p_2976->g_2482
        (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x07L), 0x07L), // p_2976->g_2490
        (VECTOR(uint8_t, 8))(254UL, (VECTOR(uint8_t, 4))(254UL, (VECTOR(uint8_t, 2))(254UL, 6UL), 6UL), 6UL, 254UL, 6UL), // p_2976->g_2491
        (VECTOR(uint8_t, 16))(0x05L, (VECTOR(uint8_t, 4))(0x05L, (VECTOR(uint8_t, 2))(0x05L, 0xA8L), 0xA8L), 0xA8L, 0x05L, 0xA8L, (VECTOR(uint8_t, 2))(0x05L, 0xA8L), (VECTOR(uint8_t, 2))(0x05L, 0xA8L), 0x05L, 0xA8L, 0x05L, 0xA8L), // p_2976->g_2494
        0x0FC37B2EL, // p_2976->g_2497
        (VECTOR(uint16_t, 2))(0UL, 65535UL), // p_2976->g_2538
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_2976->g_2546
        (void*)0, // p_2976->g_2561
        &p_2976->g_2561, // p_2976->g_2560
        (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x058C398CL), 0x058C398CL), 0x058C398CL, (-1L), 0x058C398CL), // p_2976->g_2563
        (VECTOR(int32_t, 16))((-2L), (VECTOR(int32_t, 4))((-2L), (VECTOR(int32_t, 2))((-2L), 0x47B6405FL), 0x47B6405FL), 0x47B6405FL, (-2L), 0x47B6405FL, (VECTOR(int32_t, 2))((-2L), 0x47B6405FL), (VECTOR(int32_t, 2))((-2L), 0x47B6405FL), (-2L), 0x47B6405FL, (-2L), 0x47B6405FL), // p_2976->g_2564
        (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x29C7L), 0x29C7L), 0x29C7L, 0L, 0x29C7L), // p_2976->g_2585
        (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x4EEA9043L), 0x4EEA9043L), // p_2976->g_2599
        (VECTOR(int8_t, 2))(0x6BL, (-6L)), // p_2976->g_2638
        (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 8UL), 8UL), 8UL, 1UL, 8UL), // p_2976->g_2646
        0x01B9422CL, // p_2976->g_2660
        (VECTOR(int32_t, 16))(0x1EFFA345L, (VECTOR(int32_t, 4))(0x1EFFA345L, (VECTOR(int32_t, 2))(0x1EFFA345L, 0x57D85FECL), 0x57D85FECL), 0x57D85FECL, 0x1EFFA345L, 0x57D85FECL, (VECTOR(int32_t, 2))(0x1EFFA345L, 0x57D85FECL), (VECTOR(int32_t, 2))(0x1EFFA345L, 0x57D85FECL), 0x1EFFA345L, 0x57D85FECL, 0x1EFFA345L, 0x57D85FECL), // p_2976->g_2680
        (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-1L)), (-1L)), // p_2976->g_2681
        (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, (-4L)), (-4L)), // p_2976->g_2683
        (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), (-5L)), (-5L)), (-5L), (-1L), (-5L), (VECTOR(int16_t, 2))((-1L), (-5L)), (VECTOR(int16_t, 2))((-1L), (-5L)), (-1L), (-5L), (-1L), (-5L)), // p_2976->g_2686
        (VECTOR(int16_t, 8))((-4L), (VECTOR(int16_t, 4))((-4L), (VECTOR(int16_t, 2))((-4L), 0L), 0L), 0L, (-4L), 0L), // p_2976->g_2688
        (VECTOR(uint16_t, 8))(0xD488L, (VECTOR(uint16_t, 4))(0xD488L, (VECTOR(uint16_t, 2))(0xD488L, 0x09CCL), 0x09CCL), 0x09CCL, 0xD488L, 0x09CCL), // p_2976->g_2712
        {{{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0}}}, // p_2976->g_2767
        &p_2976->g_2767[1][0][0], // p_2976->g_2766
        (VECTOR(int32_t, 8))(0x0E3004BDL, (VECTOR(int32_t, 4))(0x0E3004BDL, (VECTOR(int32_t, 2))(0x0E3004BDL, 0x2E2E81DFL), 0x2E2E81DFL), 0x2E2E81DFL, 0x0E3004BDL, 0x2E2E81DFL), // p_2976->g_2774
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-9L)), (-9L)), (-9L), 1L, (-9L)), // p_2976->g_2775
        (VECTOR(int32_t, 8))(0x20F48BD7L, (VECTOR(int32_t, 4))(0x20F48BD7L, (VECTOR(int32_t, 2))(0x20F48BD7L, 1L), 1L), 1L, 0x20F48BD7L, 1L), // p_2976->g_2777
        (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x0A219996L), 0x0A219996L), // p_2976->g_2778
        (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x0733AB7C18F5E150L), // p_2976->g_2794
        (VECTOR(uint64_t, 8))(0x185C3297A06FCDFDL, (VECTOR(uint64_t, 4))(0x185C3297A06FCDFDL, (VECTOR(uint64_t, 2))(0x185C3297A06FCDFDL, 0x5DB8D64CD111F85CL), 0x5DB8D64CD111F85CL), 0x5DB8D64CD111F85CL, 0x185C3297A06FCDFDL, 0x5DB8D64CD111F85CL), // p_2976->g_2799
        (VECTOR(uint64_t, 4))(18446744073709551608UL, (VECTOR(uint64_t, 2))(18446744073709551608UL, 18446744073709551615UL), 18446744073709551615UL), // p_2976->g_2804
        (VECTOR(int64_t, 16))(0x262CC1A92D1C697AL, (VECTOR(int64_t, 4))(0x262CC1A92D1C697AL, (VECTOR(int64_t, 2))(0x262CC1A92D1C697AL, 0L), 0L), 0L, 0x262CC1A92D1C697AL, 0L, (VECTOR(int64_t, 2))(0x262CC1A92D1C697AL, 0L), (VECTOR(int64_t, 2))(0x262CC1A92D1C697AL, 0L), 0x262CC1A92D1C697AL, 0L, 0x262CC1A92D1C697AL, 0L), // p_2976->g_2808
        4294967295UL, // p_2976->g_2826
        0x088F8405FD646714L, // p_2976->g_2846
        (VECTOR(int16_t, 4))(0x321BL, (VECTOR(int16_t, 2))(0x321BL, (-1L)), (-1L)), // p_2976->g_2858
        (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 1L), 1L), 1L, 0L, 1L), // p_2976->g_2859
        (VECTOR(int16_t, 8))(0x4524L, (VECTOR(int16_t, 4))(0x4524L, (VECTOR(int16_t, 2))(0x4524L, 5L), 5L), 5L, 0x4524L, 5L), // p_2976->g_2860
        (VECTOR(int16_t, 2))(0L, (-9L)), // p_2976->g_2862
        (VECTOR(uint16_t, 4))(0x6B84L, (VECTOR(uint16_t, 2))(0x6B84L, 0x4405L), 0x4405L), // p_2976->g_2866
        (VECTOR(int8_t, 2))((-1L), (-8L)), // p_2976->g_2869
        {{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153},{&p_2976->g_2153,&p_2976->g_2153,&p_2976->g_2153}}, // p_2976->g_2871
        {{{&p_2976->g_2871[1][0],&p_2976->g_2871[1][0],(void*)0,&p_2976->g_2871[3][0],(void*)0,&p_2976->g_2871[5][2],&p_2976->g_2871[1][0]}},{{&p_2976->g_2871[1][0],&p_2976->g_2871[1][0],(void*)0,&p_2976->g_2871[3][0],(void*)0,&p_2976->g_2871[5][2],&p_2976->g_2871[1][0]}},{{&p_2976->g_2871[1][0],&p_2976->g_2871[1][0],(void*)0,&p_2976->g_2871[3][0],(void*)0,&p_2976->g_2871[5][2],&p_2976->g_2871[1][0]}},{{&p_2976->g_2871[1][0],&p_2976->g_2871[1][0],(void*)0,&p_2976->g_2871[3][0],(void*)0,&p_2976->g_2871[5][2],&p_2976->g_2871[1][0]}}}, // p_2976->g_2870
        (VECTOR(int8_t, 16))(3L, (VECTOR(int8_t, 4))(3L, (VECTOR(int8_t, 2))(3L, 4L), 4L), 4L, 3L, 4L, (VECTOR(int8_t, 2))(3L, 4L), (VECTOR(int8_t, 2))(3L, 4L), 3L, 4L, 3L, 4L), // p_2976->g_2883
        (VECTOR(int8_t, 2))(0x74L, 0x56L), // p_2976->g_2884
        {{{&p_2976->g_355,&p_2976->g_355},{&p_2976->g_355,&p_2976->g_355},{&p_2976->g_355,&p_2976->g_355},{&p_2976->g_355,&p_2976->g_355},{&p_2976->g_355,&p_2976->g_355},{&p_2976->g_355,&p_2976->g_355},{&p_2976->g_355,&p_2976->g_355},{&p_2976->g_355,&p_2976->g_355}},{{&p_2976->g_355,&p_2976->g_355},{&p_2976->g_355,&p_2976->g_355},{&p_2976->g_355,&p_2976->g_355},{&p_2976->g_355,&p_2976->g_355},{&p_2976->g_355,&p_2976->g_355},{&p_2976->g_355,&p_2976->g_355},{&p_2976->g_355,&p_2976->g_355},{&p_2976->g_355,&p_2976->g_355}},{{&p_2976->g_355,&p_2976->g_355},{&p_2976->g_355,&p_2976->g_355},{&p_2976->g_355,&p_2976->g_355},{&p_2976->g_355,&p_2976->g_355},{&p_2976->g_355,&p_2976->g_355},{&p_2976->g_355,&p_2976->g_355},{&p_2976->g_355,&p_2976->g_355},{&p_2976->g_355,&p_2976->g_355}},{{&p_2976->g_355,&p_2976->g_355},{&p_2976->g_355,&p_2976->g_355},{&p_2976->g_355,&p_2976->g_355},{&p_2976->g_355,&p_2976->g_355},{&p_2976->g_355,&p_2976->g_355},{&p_2976->g_355,&p_2976->g_355},{&p_2976->g_355,&p_2976->g_355},{&p_2976->g_355,&p_2976->g_355}}}, // p_2976->g_2886
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_2976->g_2885
        (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x67L), 0x67L), 0x67L, 1L, 0x67L), // p_2976->g_2889
        (VECTOR(int8_t, 4))(7L, (VECTOR(int8_t, 2))(7L, 0x5CL), 0x5CL), // p_2976->g_2890
        (VECTOR(uint8_t, 4))(0xB3L, (VECTOR(uint8_t, 2))(0xB3L, 251UL), 251UL), // p_2976->g_2894
        (VECTOR(uint8_t, 4))(0xFCL, (VECTOR(uint8_t, 2))(0xFCL, 0UL), 0UL), // p_2976->g_2905
        (VECTOR(uint8_t, 4))(0x6DL, (VECTOR(uint8_t, 2))(0x6DL, 1UL), 1UL), // p_2976->g_2912
        (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x3BL), 0x3BL), 0x3BL, 0L, 0x3BL, (VECTOR(int8_t, 2))(0L, 0x3BL), (VECTOR(int8_t, 2))(0L, 0x3BL), 0L, 0x3BL, 0L, 0x3BL), // p_2976->g_2940
        (VECTOR(int8_t, 8))(0x63L, (VECTOR(int8_t, 4))(0x63L, (VECTOR(int8_t, 2))(0x63L, 1L), 1L), 1L, 0x63L, 1L), // p_2976->g_2941
        (VECTOR(int8_t, 2))(0L, 0L), // p_2976->g_2943
        (VECTOR(int8_t, 4))(0x30L, (VECTOR(int8_t, 2))(0x30L, 0x02L), 0x02L), // p_2976->g_2944
        (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x5CL), 0x5CL), 0x5CL, 1L, 0x5CL), // p_2976->g_2945
        (VECTOR(int8_t, 4))(0x08L, (VECTOR(int8_t, 2))(0x08L, 0x20L), 0x20L), // p_2976->g_2946
        (VECTOR(uint8_t, 4))(0xB3L, (VECTOR(uint8_t, 2))(0xB3L, 0xD1L), 0xD1L), // p_2976->g_2959
        0x4AL, // p_2976->g_2975
        sequence_input[get_global_id(0)], // p_2976->global_0_offset
        sequence_input[get_global_id(1)], // p_2976->global_1_offset
        sequence_input[get_global_id(2)], // p_2976->global_2_offset
        sequence_input[get_local_id(0)], // p_2976->local_0_offset
        sequence_input[get_local_id(1)], // p_2976->local_1_offset
        sequence_input[get_local_id(2)], // p_2976->local_2_offset
        sequence_input[get_group_id(0)], // p_2976->group_0_offset
        sequence_input[get_group_id(1)], // p_2976->group_1_offset
        sequence_input[get_group_id(2)], // p_2976->group_2_offset
    };
    c_2977 = c_2978;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2976);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2976->g_2, "p_2976->g_2", print_hash_value);
    transparent_crc(p_2976->g_6, "p_2976->g_6", print_hash_value);
    transparent_crc(p_2976->g_8, "p_2976->g_8", print_hash_value);
    transparent_crc(p_2976->g_15.x, "p_2976->g_15.x", print_hash_value);
    transparent_crc(p_2976->g_15.y, "p_2976->g_15.y", print_hash_value);
    transparent_crc(p_2976->g_22, "p_2976->g_22", print_hash_value);
    transparent_crc(p_2976->g_37, "p_2976->g_37", print_hash_value);
    transparent_crc(p_2976->g_46.x, "p_2976->g_46.x", print_hash_value);
    transparent_crc(p_2976->g_46.y, "p_2976->g_46.y", print_hash_value);
    transparent_crc(p_2976->g_79, "p_2976->g_79", print_hash_value);
    transparent_crc(p_2976->g_92.x, "p_2976->g_92.x", print_hash_value);
    transparent_crc(p_2976->g_92.y, "p_2976->g_92.y", print_hash_value);
    transparent_crc(p_2976->g_111.s0, "p_2976->g_111.s0", print_hash_value);
    transparent_crc(p_2976->g_111.s1, "p_2976->g_111.s1", print_hash_value);
    transparent_crc(p_2976->g_111.s2, "p_2976->g_111.s2", print_hash_value);
    transparent_crc(p_2976->g_111.s3, "p_2976->g_111.s3", print_hash_value);
    transparent_crc(p_2976->g_111.s4, "p_2976->g_111.s4", print_hash_value);
    transparent_crc(p_2976->g_111.s5, "p_2976->g_111.s5", print_hash_value);
    transparent_crc(p_2976->g_111.s6, "p_2976->g_111.s6", print_hash_value);
    transparent_crc(p_2976->g_111.s7, "p_2976->g_111.s7", print_hash_value);
    transparent_crc(p_2976->g_130.x, "p_2976->g_130.x", print_hash_value);
    transparent_crc(p_2976->g_130.y, "p_2976->g_130.y", print_hash_value);
    transparent_crc(p_2976->g_154, "p_2976->g_154", print_hash_value);
    transparent_crc(p_2976->g_167, "p_2976->g_167", print_hash_value);
    transparent_crc(p_2976->g_193.x, "p_2976->g_193.x", print_hash_value);
    transparent_crc(p_2976->g_193.y, "p_2976->g_193.y", print_hash_value);
    transparent_crc(p_2976->g_202.x, "p_2976->g_202.x", print_hash_value);
    transparent_crc(p_2976->g_202.y, "p_2976->g_202.y", print_hash_value);
    transparent_crc(p_2976->g_202.z, "p_2976->g_202.z", print_hash_value);
    transparent_crc(p_2976->g_202.w, "p_2976->g_202.w", print_hash_value);
    transparent_crc(p_2976->g_254.s0, "p_2976->g_254.s0", print_hash_value);
    transparent_crc(p_2976->g_254.s1, "p_2976->g_254.s1", print_hash_value);
    transparent_crc(p_2976->g_254.s2, "p_2976->g_254.s2", print_hash_value);
    transparent_crc(p_2976->g_254.s3, "p_2976->g_254.s3", print_hash_value);
    transparent_crc(p_2976->g_254.s4, "p_2976->g_254.s4", print_hash_value);
    transparent_crc(p_2976->g_254.s5, "p_2976->g_254.s5", print_hash_value);
    transparent_crc(p_2976->g_254.s6, "p_2976->g_254.s6", print_hash_value);
    transparent_crc(p_2976->g_254.s7, "p_2976->g_254.s7", print_hash_value);
    transparent_crc(p_2976->g_255.s0, "p_2976->g_255.s0", print_hash_value);
    transparent_crc(p_2976->g_255.s1, "p_2976->g_255.s1", print_hash_value);
    transparent_crc(p_2976->g_255.s2, "p_2976->g_255.s2", print_hash_value);
    transparent_crc(p_2976->g_255.s3, "p_2976->g_255.s3", print_hash_value);
    transparent_crc(p_2976->g_255.s4, "p_2976->g_255.s4", print_hash_value);
    transparent_crc(p_2976->g_255.s5, "p_2976->g_255.s5", print_hash_value);
    transparent_crc(p_2976->g_255.s6, "p_2976->g_255.s6", print_hash_value);
    transparent_crc(p_2976->g_255.s7, "p_2976->g_255.s7", print_hash_value);
    transparent_crc(p_2976->g_281, "p_2976->g_281", print_hash_value);
    transparent_crc(p_2976->g_290.s0, "p_2976->g_290.s0", print_hash_value);
    transparent_crc(p_2976->g_290.s1, "p_2976->g_290.s1", print_hash_value);
    transparent_crc(p_2976->g_290.s2, "p_2976->g_290.s2", print_hash_value);
    transparent_crc(p_2976->g_290.s3, "p_2976->g_290.s3", print_hash_value);
    transparent_crc(p_2976->g_290.s4, "p_2976->g_290.s4", print_hash_value);
    transparent_crc(p_2976->g_290.s5, "p_2976->g_290.s5", print_hash_value);
    transparent_crc(p_2976->g_290.s6, "p_2976->g_290.s6", print_hash_value);
    transparent_crc(p_2976->g_290.s7, "p_2976->g_290.s7", print_hash_value);
    transparent_crc(p_2976->g_290.s8, "p_2976->g_290.s8", print_hash_value);
    transparent_crc(p_2976->g_290.s9, "p_2976->g_290.s9", print_hash_value);
    transparent_crc(p_2976->g_290.sa, "p_2976->g_290.sa", print_hash_value);
    transparent_crc(p_2976->g_290.sb, "p_2976->g_290.sb", print_hash_value);
    transparent_crc(p_2976->g_290.sc, "p_2976->g_290.sc", print_hash_value);
    transparent_crc(p_2976->g_290.sd, "p_2976->g_290.sd", print_hash_value);
    transparent_crc(p_2976->g_290.se, "p_2976->g_290.se", print_hash_value);
    transparent_crc(p_2976->g_290.sf, "p_2976->g_290.sf", print_hash_value);
    transparent_crc(p_2976->g_291.x, "p_2976->g_291.x", print_hash_value);
    transparent_crc(p_2976->g_291.y, "p_2976->g_291.y", print_hash_value);
    transparent_crc(p_2976->g_291.z, "p_2976->g_291.z", print_hash_value);
    transparent_crc(p_2976->g_291.w, "p_2976->g_291.w", print_hash_value);
    transparent_crc(p_2976->g_312.s0, "p_2976->g_312.s0", print_hash_value);
    transparent_crc(p_2976->g_312.s1, "p_2976->g_312.s1", print_hash_value);
    transparent_crc(p_2976->g_312.s2, "p_2976->g_312.s2", print_hash_value);
    transparent_crc(p_2976->g_312.s3, "p_2976->g_312.s3", print_hash_value);
    transparent_crc(p_2976->g_312.s4, "p_2976->g_312.s4", print_hash_value);
    transparent_crc(p_2976->g_312.s5, "p_2976->g_312.s5", print_hash_value);
    transparent_crc(p_2976->g_312.s6, "p_2976->g_312.s6", print_hash_value);
    transparent_crc(p_2976->g_312.s7, "p_2976->g_312.s7", print_hash_value);
    transparent_crc(p_2976->g_333.x, "p_2976->g_333.x", print_hash_value);
    transparent_crc(p_2976->g_333.y, "p_2976->g_333.y", print_hash_value);
    transparent_crc(p_2976->g_338.s0, "p_2976->g_338.s0", print_hash_value);
    transparent_crc(p_2976->g_338.s1, "p_2976->g_338.s1", print_hash_value);
    transparent_crc(p_2976->g_338.s2, "p_2976->g_338.s2", print_hash_value);
    transparent_crc(p_2976->g_338.s3, "p_2976->g_338.s3", print_hash_value);
    transparent_crc(p_2976->g_338.s4, "p_2976->g_338.s4", print_hash_value);
    transparent_crc(p_2976->g_338.s5, "p_2976->g_338.s5", print_hash_value);
    transparent_crc(p_2976->g_338.s6, "p_2976->g_338.s6", print_hash_value);
    transparent_crc(p_2976->g_338.s7, "p_2976->g_338.s7", print_hash_value);
    transparent_crc(p_2976->g_338.s8, "p_2976->g_338.s8", print_hash_value);
    transparent_crc(p_2976->g_338.s9, "p_2976->g_338.s9", print_hash_value);
    transparent_crc(p_2976->g_338.sa, "p_2976->g_338.sa", print_hash_value);
    transparent_crc(p_2976->g_338.sb, "p_2976->g_338.sb", print_hash_value);
    transparent_crc(p_2976->g_338.sc, "p_2976->g_338.sc", print_hash_value);
    transparent_crc(p_2976->g_338.sd, "p_2976->g_338.sd", print_hash_value);
    transparent_crc(p_2976->g_338.se, "p_2976->g_338.se", print_hash_value);
    transparent_crc(p_2976->g_338.sf, "p_2976->g_338.sf", print_hash_value);
    transparent_crc(p_2976->g_391, "p_2976->g_391", print_hash_value);
    transparent_crc(p_2976->g_445.s0, "p_2976->g_445.s0", print_hash_value);
    transparent_crc(p_2976->g_445.s1, "p_2976->g_445.s1", print_hash_value);
    transparent_crc(p_2976->g_445.s2, "p_2976->g_445.s2", print_hash_value);
    transparent_crc(p_2976->g_445.s3, "p_2976->g_445.s3", print_hash_value);
    transparent_crc(p_2976->g_445.s4, "p_2976->g_445.s4", print_hash_value);
    transparent_crc(p_2976->g_445.s5, "p_2976->g_445.s5", print_hash_value);
    transparent_crc(p_2976->g_445.s6, "p_2976->g_445.s6", print_hash_value);
    transparent_crc(p_2976->g_445.s7, "p_2976->g_445.s7", print_hash_value);
    transparent_crc(p_2976->g_445.s8, "p_2976->g_445.s8", print_hash_value);
    transparent_crc(p_2976->g_445.s9, "p_2976->g_445.s9", print_hash_value);
    transparent_crc(p_2976->g_445.sa, "p_2976->g_445.sa", print_hash_value);
    transparent_crc(p_2976->g_445.sb, "p_2976->g_445.sb", print_hash_value);
    transparent_crc(p_2976->g_445.sc, "p_2976->g_445.sc", print_hash_value);
    transparent_crc(p_2976->g_445.sd, "p_2976->g_445.sd", print_hash_value);
    transparent_crc(p_2976->g_445.se, "p_2976->g_445.se", print_hash_value);
    transparent_crc(p_2976->g_445.sf, "p_2976->g_445.sf", print_hash_value);
    transparent_crc(p_2976->g_446.s0, "p_2976->g_446.s0", print_hash_value);
    transparent_crc(p_2976->g_446.s1, "p_2976->g_446.s1", print_hash_value);
    transparent_crc(p_2976->g_446.s2, "p_2976->g_446.s2", print_hash_value);
    transparent_crc(p_2976->g_446.s3, "p_2976->g_446.s3", print_hash_value);
    transparent_crc(p_2976->g_446.s4, "p_2976->g_446.s4", print_hash_value);
    transparent_crc(p_2976->g_446.s5, "p_2976->g_446.s5", print_hash_value);
    transparent_crc(p_2976->g_446.s6, "p_2976->g_446.s6", print_hash_value);
    transparent_crc(p_2976->g_446.s7, "p_2976->g_446.s7", print_hash_value);
    transparent_crc(p_2976->g_446.s8, "p_2976->g_446.s8", print_hash_value);
    transparent_crc(p_2976->g_446.s9, "p_2976->g_446.s9", print_hash_value);
    transparent_crc(p_2976->g_446.sa, "p_2976->g_446.sa", print_hash_value);
    transparent_crc(p_2976->g_446.sb, "p_2976->g_446.sb", print_hash_value);
    transparent_crc(p_2976->g_446.sc, "p_2976->g_446.sc", print_hash_value);
    transparent_crc(p_2976->g_446.sd, "p_2976->g_446.sd", print_hash_value);
    transparent_crc(p_2976->g_446.se, "p_2976->g_446.se", print_hash_value);
    transparent_crc(p_2976->g_446.sf, "p_2976->g_446.sf", print_hash_value);
    transparent_crc(p_2976->g_451, "p_2976->g_451", print_hash_value);
    transparent_crc(p_2976->g_510, "p_2976->g_510", print_hash_value);
    transparent_crc(p_2976->g_511.x, "p_2976->g_511.x", print_hash_value);
    transparent_crc(p_2976->g_511.y, "p_2976->g_511.y", print_hash_value);
    transparent_crc(p_2976->g_511.z, "p_2976->g_511.z", print_hash_value);
    transparent_crc(p_2976->g_511.w, "p_2976->g_511.w", print_hash_value);
    transparent_crc(p_2976->g_532.s0, "p_2976->g_532.s0", print_hash_value);
    transparent_crc(p_2976->g_532.s1, "p_2976->g_532.s1", print_hash_value);
    transparent_crc(p_2976->g_532.s2, "p_2976->g_532.s2", print_hash_value);
    transparent_crc(p_2976->g_532.s3, "p_2976->g_532.s3", print_hash_value);
    transparent_crc(p_2976->g_532.s4, "p_2976->g_532.s4", print_hash_value);
    transparent_crc(p_2976->g_532.s5, "p_2976->g_532.s5", print_hash_value);
    transparent_crc(p_2976->g_532.s6, "p_2976->g_532.s6", print_hash_value);
    transparent_crc(p_2976->g_532.s7, "p_2976->g_532.s7", print_hash_value);
    transparent_crc(p_2976->g_554.s0, "p_2976->g_554.s0", print_hash_value);
    transparent_crc(p_2976->g_554.s1, "p_2976->g_554.s1", print_hash_value);
    transparent_crc(p_2976->g_554.s2, "p_2976->g_554.s2", print_hash_value);
    transparent_crc(p_2976->g_554.s3, "p_2976->g_554.s3", print_hash_value);
    transparent_crc(p_2976->g_554.s4, "p_2976->g_554.s4", print_hash_value);
    transparent_crc(p_2976->g_554.s5, "p_2976->g_554.s5", print_hash_value);
    transparent_crc(p_2976->g_554.s6, "p_2976->g_554.s6", print_hash_value);
    transparent_crc(p_2976->g_554.s7, "p_2976->g_554.s7", print_hash_value);
    transparent_crc(p_2976->g_563.x, "p_2976->g_563.x", print_hash_value);
    transparent_crc(p_2976->g_563.y, "p_2976->g_563.y", print_hash_value);
    transparent_crc(p_2976->g_563.z, "p_2976->g_563.z", print_hash_value);
    transparent_crc(p_2976->g_563.w, "p_2976->g_563.w", print_hash_value);
    transparent_crc(p_2976->g_564.s0, "p_2976->g_564.s0", print_hash_value);
    transparent_crc(p_2976->g_564.s1, "p_2976->g_564.s1", print_hash_value);
    transparent_crc(p_2976->g_564.s2, "p_2976->g_564.s2", print_hash_value);
    transparent_crc(p_2976->g_564.s3, "p_2976->g_564.s3", print_hash_value);
    transparent_crc(p_2976->g_564.s4, "p_2976->g_564.s4", print_hash_value);
    transparent_crc(p_2976->g_564.s5, "p_2976->g_564.s5", print_hash_value);
    transparent_crc(p_2976->g_564.s6, "p_2976->g_564.s6", print_hash_value);
    transparent_crc(p_2976->g_564.s7, "p_2976->g_564.s7", print_hash_value);
    transparent_crc(p_2976->g_565.x, "p_2976->g_565.x", print_hash_value);
    transparent_crc(p_2976->g_565.y, "p_2976->g_565.y", print_hash_value);
    transparent_crc(p_2976->g_565.z, "p_2976->g_565.z", print_hash_value);
    transparent_crc(p_2976->g_565.w, "p_2976->g_565.w", print_hash_value);
    transparent_crc(p_2976->g_568.x, "p_2976->g_568.x", print_hash_value);
    transparent_crc(p_2976->g_568.y, "p_2976->g_568.y", print_hash_value);
    transparent_crc(p_2976->g_582.s0, "p_2976->g_582.s0", print_hash_value);
    transparent_crc(p_2976->g_582.s1, "p_2976->g_582.s1", print_hash_value);
    transparent_crc(p_2976->g_582.s2, "p_2976->g_582.s2", print_hash_value);
    transparent_crc(p_2976->g_582.s3, "p_2976->g_582.s3", print_hash_value);
    transparent_crc(p_2976->g_582.s4, "p_2976->g_582.s4", print_hash_value);
    transparent_crc(p_2976->g_582.s5, "p_2976->g_582.s5", print_hash_value);
    transparent_crc(p_2976->g_582.s6, "p_2976->g_582.s6", print_hash_value);
    transparent_crc(p_2976->g_582.s7, "p_2976->g_582.s7", print_hash_value);
    transparent_crc(p_2976->g_582.s8, "p_2976->g_582.s8", print_hash_value);
    transparent_crc(p_2976->g_582.s9, "p_2976->g_582.s9", print_hash_value);
    transparent_crc(p_2976->g_582.sa, "p_2976->g_582.sa", print_hash_value);
    transparent_crc(p_2976->g_582.sb, "p_2976->g_582.sb", print_hash_value);
    transparent_crc(p_2976->g_582.sc, "p_2976->g_582.sc", print_hash_value);
    transparent_crc(p_2976->g_582.sd, "p_2976->g_582.sd", print_hash_value);
    transparent_crc(p_2976->g_582.se, "p_2976->g_582.se", print_hash_value);
    transparent_crc(p_2976->g_582.sf, "p_2976->g_582.sf", print_hash_value);
    transparent_crc(p_2976->g_611.s0, "p_2976->g_611.s0", print_hash_value);
    transparent_crc(p_2976->g_611.s1, "p_2976->g_611.s1", print_hash_value);
    transparent_crc(p_2976->g_611.s2, "p_2976->g_611.s2", print_hash_value);
    transparent_crc(p_2976->g_611.s3, "p_2976->g_611.s3", print_hash_value);
    transparent_crc(p_2976->g_611.s4, "p_2976->g_611.s4", print_hash_value);
    transparent_crc(p_2976->g_611.s5, "p_2976->g_611.s5", print_hash_value);
    transparent_crc(p_2976->g_611.s6, "p_2976->g_611.s6", print_hash_value);
    transparent_crc(p_2976->g_611.s7, "p_2976->g_611.s7", print_hash_value);
    transparent_crc(p_2976->g_613, "p_2976->g_613", print_hash_value);
    transparent_crc(p_2976->g_624.s0, "p_2976->g_624.s0", print_hash_value);
    transparent_crc(p_2976->g_624.s1, "p_2976->g_624.s1", print_hash_value);
    transparent_crc(p_2976->g_624.s2, "p_2976->g_624.s2", print_hash_value);
    transparent_crc(p_2976->g_624.s3, "p_2976->g_624.s3", print_hash_value);
    transparent_crc(p_2976->g_624.s4, "p_2976->g_624.s4", print_hash_value);
    transparent_crc(p_2976->g_624.s5, "p_2976->g_624.s5", print_hash_value);
    transparent_crc(p_2976->g_624.s6, "p_2976->g_624.s6", print_hash_value);
    transparent_crc(p_2976->g_624.s7, "p_2976->g_624.s7", print_hash_value);
    transparent_crc(p_2976->g_624.s8, "p_2976->g_624.s8", print_hash_value);
    transparent_crc(p_2976->g_624.s9, "p_2976->g_624.s9", print_hash_value);
    transparent_crc(p_2976->g_624.sa, "p_2976->g_624.sa", print_hash_value);
    transparent_crc(p_2976->g_624.sb, "p_2976->g_624.sb", print_hash_value);
    transparent_crc(p_2976->g_624.sc, "p_2976->g_624.sc", print_hash_value);
    transparent_crc(p_2976->g_624.sd, "p_2976->g_624.sd", print_hash_value);
    transparent_crc(p_2976->g_624.se, "p_2976->g_624.se", print_hash_value);
    transparent_crc(p_2976->g_624.sf, "p_2976->g_624.sf", print_hash_value);
    transparent_crc(p_2976->g_625.s0, "p_2976->g_625.s0", print_hash_value);
    transparent_crc(p_2976->g_625.s1, "p_2976->g_625.s1", print_hash_value);
    transparent_crc(p_2976->g_625.s2, "p_2976->g_625.s2", print_hash_value);
    transparent_crc(p_2976->g_625.s3, "p_2976->g_625.s3", print_hash_value);
    transparent_crc(p_2976->g_625.s4, "p_2976->g_625.s4", print_hash_value);
    transparent_crc(p_2976->g_625.s5, "p_2976->g_625.s5", print_hash_value);
    transparent_crc(p_2976->g_625.s6, "p_2976->g_625.s6", print_hash_value);
    transparent_crc(p_2976->g_625.s7, "p_2976->g_625.s7", print_hash_value);
    transparent_crc(p_2976->g_625.s8, "p_2976->g_625.s8", print_hash_value);
    transparent_crc(p_2976->g_625.s9, "p_2976->g_625.s9", print_hash_value);
    transparent_crc(p_2976->g_625.sa, "p_2976->g_625.sa", print_hash_value);
    transparent_crc(p_2976->g_625.sb, "p_2976->g_625.sb", print_hash_value);
    transparent_crc(p_2976->g_625.sc, "p_2976->g_625.sc", print_hash_value);
    transparent_crc(p_2976->g_625.sd, "p_2976->g_625.sd", print_hash_value);
    transparent_crc(p_2976->g_625.se, "p_2976->g_625.se", print_hash_value);
    transparent_crc(p_2976->g_625.sf, "p_2976->g_625.sf", print_hash_value);
    transparent_crc(p_2976->g_626, "p_2976->g_626", print_hash_value);
    transparent_crc(p_2976->g_632.x, "p_2976->g_632.x", print_hash_value);
    transparent_crc(p_2976->g_632.y, "p_2976->g_632.y", print_hash_value);
    transparent_crc(p_2976->g_632.z, "p_2976->g_632.z", print_hash_value);
    transparent_crc(p_2976->g_632.w, "p_2976->g_632.w", print_hash_value);
    transparent_crc(p_2976->g_634.s0, "p_2976->g_634.s0", print_hash_value);
    transparent_crc(p_2976->g_634.s1, "p_2976->g_634.s1", print_hash_value);
    transparent_crc(p_2976->g_634.s2, "p_2976->g_634.s2", print_hash_value);
    transparent_crc(p_2976->g_634.s3, "p_2976->g_634.s3", print_hash_value);
    transparent_crc(p_2976->g_634.s4, "p_2976->g_634.s4", print_hash_value);
    transparent_crc(p_2976->g_634.s5, "p_2976->g_634.s5", print_hash_value);
    transparent_crc(p_2976->g_634.s6, "p_2976->g_634.s6", print_hash_value);
    transparent_crc(p_2976->g_634.s7, "p_2976->g_634.s7", print_hash_value);
    transparent_crc(p_2976->g_634.s8, "p_2976->g_634.s8", print_hash_value);
    transparent_crc(p_2976->g_634.s9, "p_2976->g_634.s9", print_hash_value);
    transparent_crc(p_2976->g_634.sa, "p_2976->g_634.sa", print_hash_value);
    transparent_crc(p_2976->g_634.sb, "p_2976->g_634.sb", print_hash_value);
    transparent_crc(p_2976->g_634.sc, "p_2976->g_634.sc", print_hash_value);
    transparent_crc(p_2976->g_634.sd, "p_2976->g_634.sd", print_hash_value);
    transparent_crc(p_2976->g_634.se, "p_2976->g_634.se", print_hash_value);
    transparent_crc(p_2976->g_634.sf, "p_2976->g_634.sf", print_hash_value);
    transparent_crc(p_2976->g_635.x, "p_2976->g_635.x", print_hash_value);
    transparent_crc(p_2976->g_635.y, "p_2976->g_635.y", print_hash_value);
    transparent_crc(p_2976->g_635.z, "p_2976->g_635.z", print_hash_value);
    transparent_crc(p_2976->g_635.w, "p_2976->g_635.w", print_hash_value);
    transparent_crc(p_2976->g_678.s0, "p_2976->g_678.s0", print_hash_value);
    transparent_crc(p_2976->g_678.s1, "p_2976->g_678.s1", print_hash_value);
    transparent_crc(p_2976->g_678.s2, "p_2976->g_678.s2", print_hash_value);
    transparent_crc(p_2976->g_678.s3, "p_2976->g_678.s3", print_hash_value);
    transparent_crc(p_2976->g_678.s4, "p_2976->g_678.s4", print_hash_value);
    transparent_crc(p_2976->g_678.s5, "p_2976->g_678.s5", print_hash_value);
    transparent_crc(p_2976->g_678.s6, "p_2976->g_678.s6", print_hash_value);
    transparent_crc(p_2976->g_678.s7, "p_2976->g_678.s7", print_hash_value);
    transparent_crc(p_2976->g_701.s0, "p_2976->g_701.s0", print_hash_value);
    transparent_crc(p_2976->g_701.s1, "p_2976->g_701.s1", print_hash_value);
    transparent_crc(p_2976->g_701.s2, "p_2976->g_701.s2", print_hash_value);
    transparent_crc(p_2976->g_701.s3, "p_2976->g_701.s3", print_hash_value);
    transparent_crc(p_2976->g_701.s4, "p_2976->g_701.s4", print_hash_value);
    transparent_crc(p_2976->g_701.s5, "p_2976->g_701.s5", print_hash_value);
    transparent_crc(p_2976->g_701.s6, "p_2976->g_701.s6", print_hash_value);
    transparent_crc(p_2976->g_701.s7, "p_2976->g_701.s7", print_hash_value);
    transparent_crc(p_2976->g_707, "p_2976->g_707", print_hash_value);
    transparent_crc(p_2976->g_713.s0, "p_2976->g_713.s0", print_hash_value);
    transparent_crc(p_2976->g_713.s1, "p_2976->g_713.s1", print_hash_value);
    transparent_crc(p_2976->g_713.s2, "p_2976->g_713.s2", print_hash_value);
    transparent_crc(p_2976->g_713.s3, "p_2976->g_713.s3", print_hash_value);
    transparent_crc(p_2976->g_713.s4, "p_2976->g_713.s4", print_hash_value);
    transparent_crc(p_2976->g_713.s5, "p_2976->g_713.s5", print_hash_value);
    transparent_crc(p_2976->g_713.s6, "p_2976->g_713.s6", print_hash_value);
    transparent_crc(p_2976->g_713.s7, "p_2976->g_713.s7", print_hash_value);
    transparent_crc(p_2976->g_713.s8, "p_2976->g_713.s8", print_hash_value);
    transparent_crc(p_2976->g_713.s9, "p_2976->g_713.s9", print_hash_value);
    transparent_crc(p_2976->g_713.sa, "p_2976->g_713.sa", print_hash_value);
    transparent_crc(p_2976->g_713.sb, "p_2976->g_713.sb", print_hash_value);
    transparent_crc(p_2976->g_713.sc, "p_2976->g_713.sc", print_hash_value);
    transparent_crc(p_2976->g_713.sd, "p_2976->g_713.sd", print_hash_value);
    transparent_crc(p_2976->g_713.se, "p_2976->g_713.se", print_hash_value);
    transparent_crc(p_2976->g_713.sf, "p_2976->g_713.sf", print_hash_value);
    transparent_crc(p_2976->g_726.s0, "p_2976->g_726.s0", print_hash_value);
    transparent_crc(p_2976->g_726.s1, "p_2976->g_726.s1", print_hash_value);
    transparent_crc(p_2976->g_726.s2, "p_2976->g_726.s2", print_hash_value);
    transparent_crc(p_2976->g_726.s3, "p_2976->g_726.s3", print_hash_value);
    transparent_crc(p_2976->g_726.s4, "p_2976->g_726.s4", print_hash_value);
    transparent_crc(p_2976->g_726.s5, "p_2976->g_726.s5", print_hash_value);
    transparent_crc(p_2976->g_726.s6, "p_2976->g_726.s6", print_hash_value);
    transparent_crc(p_2976->g_726.s7, "p_2976->g_726.s7", print_hash_value);
    transparent_crc(p_2976->g_728.s0, "p_2976->g_728.s0", print_hash_value);
    transparent_crc(p_2976->g_728.s1, "p_2976->g_728.s1", print_hash_value);
    transparent_crc(p_2976->g_728.s2, "p_2976->g_728.s2", print_hash_value);
    transparent_crc(p_2976->g_728.s3, "p_2976->g_728.s3", print_hash_value);
    transparent_crc(p_2976->g_728.s4, "p_2976->g_728.s4", print_hash_value);
    transparent_crc(p_2976->g_728.s5, "p_2976->g_728.s5", print_hash_value);
    transparent_crc(p_2976->g_728.s6, "p_2976->g_728.s6", print_hash_value);
    transparent_crc(p_2976->g_728.s7, "p_2976->g_728.s7", print_hash_value);
    transparent_crc(p_2976->g_728.s8, "p_2976->g_728.s8", print_hash_value);
    transparent_crc(p_2976->g_728.s9, "p_2976->g_728.s9", print_hash_value);
    transparent_crc(p_2976->g_728.sa, "p_2976->g_728.sa", print_hash_value);
    transparent_crc(p_2976->g_728.sb, "p_2976->g_728.sb", print_hash_value);
    transparent_crc(p_2976->g_728.sc, "p_2976->g_728.sc", print_hash_value);
    transparent_crc(p_2976->g_728.sd, "p_2976->g_728.sd", print_hash_value);
    transparent_crc(p_2976->g_728.se, "p_2976->g_728.se", print_hash_value);
    transparent_crc(p_2976->g_728.sf, "p_2976->g_728.sf", print_hash_value);
    transparent_crc(p_2976->g_729.x, "p_2976->g_729.x", print_hash_value);
    transparent_crc(p_2976->g_729.y, "p_2976->g_729.y", print_hash_value);
    transparent_crc(p_2976->g_732.x, "p_2976->g_732.x", print_hash_value);
    transparent_crc(p_2976->g_732.y, "p_2976->g_732.y", print_hash_value);
    transparent_crc(p_2976->g_732.z, "p_2976->g_732.z", print_hash_value);
    transparent_crc(p_2976->g_732.w, "p_2976->g_732.w", print_hash_value);
    transparent_crc(p_2976->g_745.x, "p_2976->g_745.x", print_hash_value);
    transparent_crc(p_2976->g_745.y, "p_2976->g_745.y", print_hash_value);
    transparent_crc(p_2976->g_745.z, "p_2976->g_745.z", print_hash_value);
    transparent_crc(p_2976->g_745.w, "p_2976->g_745.w", print_hash_value);
    transparent_crc(p_2976->g_756.x, "p_2976->g_756.x", print_hash_value);
    transparent_crc(p_2976->g_756.y, "p_2976->g_756.y", print_hash_value);
    transparent_crc(p_2976->g_756.z, "p_2976->g_756.z", print_hash_value);
    transparent_crc(p_2976->g_756.w, "p_2976->g_756.w", print_hash_value);
    transparent_crc(p_2976->g_757.s0, "p_2976->g_757.s0", print_hash_value);
    transparent_crc(p_2976->g_757.s1, "p_2976->g_757.s1", print_hash_value);
    transparent_crc(p_2976->g_757.s2, "p_2976->g_757.s2", print_hash_value);
    transparent_crc(p_2976->g_757.s3, "p_2976->g_757.s3", print_hash_value);
    transparent_crc(p_2976->g_757.s4, "p_2976->g_757.s4", print_hash_value);
    transparent_crc(p_2976->g_757.s5, "p_2976->g_757.s5", print_hash_value);
    transparent_crc(p_2976->g_757.s6, "p_2976->g_757.s6", print_hash_value);
    transparent_crc(p_2976->g_757.s7, "p_2976->g_757.s7", print_hash_value);
    transparent_crc(p_2976->g_757.s8, "p_2976->g_757.s8", print_hash_value);
    transparent_crc(p_2976->g_757.s9, "p_2976->g_757.s9", print_hash_value);
    transparent_crc(p_2976->g_757.sa, "p_2976->g_757.sa", print_hash_value);
    transparent_crc(p_2976->g_757.sb, "p_2976->g_757.sb", print_hash_value);
    transparent_crc(p_2976->g_757.sc, "p_2976->g_757.sc", print_hash_value);
    transparent_crc(p_2976->g_757.sd, "p_2976->g_757.sd", print_hash_value);
    transparent_crc(p_2976->g_757.se, "p_2976->g_757.se", print_hash_value);
    transparent_crc(p_2976->g_757.sf, "p_2976->g_757.sf", print_hash_value);
    transparent_crc(p_2976->g_758.s0, "p_2976->g_758.s0", print_hash_value);
    transparent_crc(p_2976->g_758.s1, "p_2976->g_758.s1", print_hash_value);
    transparent_crc(p_2976->g_758.s2, "p_2976->g_758.s2", print_hash_value);
    transparent_crc(p_2976->g_758.s3, "p_2976->g_758.s3", print_hash_value);
    transparent_crc(p_2976->g_758.s4, "p_2976->g_758.s4", print_hash_value);
    transparent_crc(p_2976->g_758.s5, "p_2976->g_758.s5", print_hash_value);
    transparent_crc(p_2976->g_758.s6, "p_2976->g_758.s6", print_hash_value);
    transparent_crc(p_2976->g_758.s7, "p_2976->g_758.s7", print_hash_value);
    transparent_crc(p_2976->g_760.s0, "p_2976->g_760.s0", print_hash_value);
    transparent_crc(p_2976->g_760.s1, "p_2976->g_760.s1", print_hash_value);
    transparent_crc(p_2976->g_760.s2, "p_2976->g_760.s2", print_hash_value);
    transparent_crc(p_2976->g_760.s3, "p_2976->g_760.s3", print_hash_value);
    transparent_crc(p_2976->g_760.s4, "p_2976->g_760.s4", print_hash_value);
    transparent_crc(p_2976->g_760.s5, "p_2976->g_760.s5", print_hash_value);
    transparent_crc(p_2976->g_760.s6, "p_2976->g_760.s6", print_hash_value);
    transparent_crc(p_2976->g_760.s7, "p_2976->g_760.s7", print_hash_value);
    transparent_crc(p_2976->g_760.s8, "p_2976->g_760.s8", print_hash_value);
    transparent_crc(p_2976->g_760.s9, "p_2976->g_760.s9", print_hash_value);
    transparent_crc(p_2976->g_760.sa, "p_2976->g_760.sa", print_hash_value);
    transparent_crc(p_2976->g_760.sb, "p_2976->g_760.sb", print_hash_value);
    transparent_crc(p_2976->g_760.sc, "p_2976->g_760.sc", print_hash_value);
    transparent_crc(p_2976->g_760.sd, "p_2976->g_760.sd", print_hash_value);
    transparent_crc(p_2976->g_760.se, "p_2976->g_760.se", print_hash_value);
    transparent_crc(p_2976->g_760.sf, "p_2976->g_760.sf", print_hash_value);
    transparent_crc(p_2976->g_762.x, "p_2976->g_762.x", print_hash_value);
    transparent_crc(p_2976->g_762.y, "p_2976->g_762.y", print_hash_value);
    transparent_crc(p_2976->g_762.z, "p_2976->g_762.z", print_hash_value);
    transparent_crc(p_2976->g_762.w, "p_2976->g_762.w", print_hash_value);
    transparent_crc(p_2976->g_763.x, "p_2976->g_763.x", print_hash_value);
    transparent_crc(p_2976->g_763.y, "p_2976->g_763.y", print_hash_value);
    transparent_crc(p_2976->g_764.x, "p_2976->g_764.x", print_hash_value);
    transparent_crc(p_2976->g_764.y, "p_2976->g_764.y", print_hash_value);
    transparent_crc(p_2976->g_772.s0, "p_2976->g_772.s0", print_hash_value);
    transparent_crc(p_2976->g_772.s1, "p_2976->g_772.s1", print_hash_value);
    transparent_crc(p_2976->g_772.s2, "p_2976->g_772.s2", print_hash_value);
    transparent_crc(p_2976->g_772.s3, "p_2976->g_772.s3", print_hash_value);
    transparent_crc(p_2976->g_772.s4, "p_2976->g_772.s4", print_hash_value);
    transparent_crc(p_2976->g_772.s5, "p_2976->g_772.s5", print_hash_value);
    transparent_crc(p_2976->g_772.s6, "p_2976->g_772.s6", print_hash_value);
    transparent_crc(p_2976->g_772.s7, "p_2976->g_772.s7", print_hash_value);
    transparent_crc(p_2976->g_772.s8, "p_2976->g_772.s8", print_hash_value);
    transparent_crc(p_2976->g_772.s9, "p_2976->g_772.s9", print_hash_value);
    transparent_crc(p_2976->g_772.sa, "p_2976->g_772.sa", print_hash_value);
    transparent_crc(p_2976->g_772.sb, "p_2976->g_772.sb", print_hash_value);
    transparent_crc(p_2976->g_772.sc, "p_2976->g_772.sc", print_hash_value);
    transparent_crc(p_2976->g_772.sd, "p_2976->g_772.sd", print_hash_value);
    transparent_crc(p_2976->g_772.se, "p_2976->g_772.se", print_hash_value);
    transparent_crc(p_2976->g_772.sf, "p_2976->g_772.sf", print_hash_value);
    transparent_crc(p_2976->g_774.s0, "p_2976->g_774.s0", print_hash_value);
    transparent_crc(p_2976->g_774.s1, "p_2976->g_774.s1", print_hash_value);
    transparent_crc(p_2976->g_774.s2, "p_2976->g_774.s2", print_hash_value);
    transparent_crc(p_2976->g_774.s3, "p_2976->g_774.s3", print_hash_value);
    transparent_crc(p_2976->g_774.s4, "p_2976->g_774.s4", print_hash_value);
    transparent_crc(p_2976->g_774.s5, "p_2976->g_774.s5", print_hash_value);
    transparent_crc(p_2976->g_774.s6, "p_2976->g_774.s6", print_hash_value);
    transparent_crc(p_2976->g_774.s7, "p_2976->g_774.s7", print_hash_value);
    transparent_crc(p_2976->g_774.s8, "p_2976->g_774.s8", print_hash_value);
    transparent_crc(p_2976->g_774.s9, "p_2976->g_774.s9", print_hash_value);
    transparent_crc(p_2976->g_774.sa, "p_2976->g_774.sa", print_hash_value);
    transparent_crc(p_2976->g_774.sb, "p_2976->g_774.sb", print_hash_value);
    transparent_crc(p_2976->g_774.sc, "p_2976->g_774.sc", print_hash_value);
    transparent_crc(p_2976->g_774.sd, "p_2976->g_774.sd", print_hash_value);
    transparent_crc(p_2976->g_774.se, "p_2976->g_774.se", print_hash_value);
    transparent_crc(p_2976->g_774.sf, "p_2976->g_774.sf", print_hash_value);
    transparent_crc(p_2976->g_783.x, "p_2976->g_783.x", print_hash_value);
    transparent_crc(p_2976->g_783.y, "p_2976->g_783.y", print_hash_value);
    transparent_crc(p_2976->g_783.z, "p_2976->g_783.z", print_hash_value);
    transparent_crc(p_2976->g_783.w, "p_2976->g_783.w", print_hash_value);
    transparent_crc(p_2976->g_792.s0, "p_2976->g_792.s0", print_hash_value);
    transparent_crc(p_2976->g_792.s1, "p_2976->g_792.s1", print_hash_value);
    transparent_crc(p_2976->g_792.s2, "p_2976->g_792.s2", print_hash_value);
    transparent_crc(p_2976->g_792.s3, "p_2976->g_792.s3", print_hash_value);
    transparent_crc(p_2976->g_792.s4, "p_2976->g_792.s4", print_hash_value);
    transparent_crc(p_2976->g_792.s5, "p_2976->g_792.s5", print_hash_value);
    transparent_crc(p_2976->g_792.s6, "p_2976->g_792.s6", print_hash_value);
    transparent_crc(p_2976->g_792.s7, "p_2976->g_792.s7", print_hash_value);
    transparent_crc(p_2976->g_793.x, "p_2976->g_793.x", print_hash_value);
    transparent_crc(p_2976->g_793.y, "p_2976->g_793.y", print_hash_value);
    transparent_crc(p_2976->g_793.z, "p_2976->g_793.z", print_hash_value);
    transparent_crc(p_2976->g_793.w, "p_2976->g_793.w", print_hash_value);
    transparent_crc(p_2976->g_802.x, "p_2976->g_802.x", print_hash_value);
    transparent_crc(p_2976->g_802.y, "p_2976->g_802.y", print_hash_value);
    transparent_crc(p_2976->g_802.z, "p_2976->g_802.z", print_hash_value);
    transparent_crc(p_2976->g_802.w, "p_2976->g_802.w", print_hash_value);
    transparent_crc(p_2976->g_833.s0, "p_2976->g_833.s0", print_hash_value);
    transparent_crc(p_2976->g_833.s1, "p_2976->g_833.s1", print_hash_value);
    transparent_crc(p_2976->g_833.s2, "p_2976->g_833.s2", print_hash_value);
    transparent_crc(p_2976->g_833.s3, "p_2976->g_833.s3", print_hash_value);
    transparent_crc(p_2976->g_833.s4, "p_2976->g_833.s4", print_hash_value);
    transparent_crc(p_2976->g_833.s5, "p_2976->g_833.s5", print_hash_value);
    transparent_crc(p_2976->g_833.s6, "p_2976->g_833.s6", print_hash_value);
    transparent_crc(p_2976->g_833.s7, "p_2976->g_833.s7", print_hash_value);
    transparent_crc(p_2976->g_848.x, "p_2976->g_848.x", print_hash_value);
    transparent_crc(p_2976->g_848.y, "p_2976->g_848.y", print_hash_value);
    transparent_crc(p_2976->g_878.s0, "p_2976->g_878.s0", print_hash_value);
    transparent_crc(p_2976->g_878.s1, "p_2976->g_878.s1", print_hash_value);
    transparent_crc(p_2976->g_878.s2, "p_2976->g_878.s2", print_hash_value);
    transparent_crc(p_2976->g_878.s3, "p_2976->g_878.s3", print_hash_value);
    transparent_crc(p_2976->g_878.s4, "p_2976->g_878.s4", print_hash_value);
    transparent_crc(p_2976->g_878.s5, "p_2976->g_878.s5", print_hash_value);
    transparent_crc(p_2976->g_878.s6, "p_2976->g_878.s6", print_hash_value);
    transparent_crc(p_2976->g_878.s7, "p_2976->g_878.s7", print_hash_value);
    transparent_crc(p_2976->g_878.s8, "p_2976->g_878.s8", print_hash_value);
    transparent_crc(p_2976->g_878.s9, "p_2976->g_878.s9", print_hash_value);
    transparent_crc(p_2976->g_878.sa, "p_2976->g_878.sa", print_hash_value);
    transparent_crc(p_2976->g_878.sb, "p_2976->g_878.sb", print_hash_value);
    transparent_crc(p_2976->g_878.sc, "p_2976->g_878.sc", print_hash_value);
    transparent_crc(p_2976->g_878.sd, "p_2976->g_878.sd", print_hash_value);
    transparent_crc(p_2976->g_878.se, "p_2976->g_878.se", print_hash_value);
    transparent_crc(p_2976->g_878.sf, "p_2976->g_878.sf", print_hash_value);
    transparent_crc(p_2976->g_881.x, "p_2976->g_881.x", print_hash_value);
    transparent_crc(p_2976->g_881.y, "p_2976->g_881.y", print_hash_value);
    transparent_crc(p_2976->g_883.s0, "p_2976->g_883.s0", print_hash_value);
    transparent_crc(p_2976->g_883.s1, "p_2976->g_883.s1", print_hash_value);
    transparent_crc(p_2976->g_883.s2, "p_2976->g_883.s2", print_hash_value);
    transparent_crc(p_2976->g_883.s3, "p_2976->g_883.s3", print_hash_value);
    transparent_crc(p_2976->g_883.s4, "p_2976->g_883.s4", print_hash_value);
    transparent_crc(p_2976->g_883.s5, "p_2976->g_883.s5", print_hash_value);
    transparent_crc(p_2976->g_883.s6, "p_2976->g_883.s6", print_hash_value);
    transparent_crc(p_2976->g_883.s7, "p_2976->g_883.s7", print_hash_value);
    transparent_crc(p_2976->g_883.s8, "p_2976->g_883.s8", print_hash_value);
    transparent_crc(p_2976->g_883.s9, "p_2976->g_883.s9", print_hash_value);
    transparent_crc(p_2976->g_883.sa, "p_2976->g_883.sa", print_hash_value);
    transparent_crc(p_2976->g_883.sb, "p_2976->g_883.sb", print_hash_value);
    transparent_crc(p_2976->g_883.sc, "p_2976->g_883.sc", print_hash_value);
    transparent_crc(p_2976->g_883.sd, "p_2976->g_883.sd", print_hash_value);
    transparent_crc(p_2976->g_883.se, "p_2976->g_883.se", print_hash_value);
    transparent_crc(p_2976->g_883.sf, "p_2976->g_883.sf", print_hash_value);
    transparent_crc(p_2976->g_884.x, "p_2976->g_884.x", print_hash_value);
    transparent_crc(p_2976->g_884.y, "p_2976->g_884.y", print_hash_value);
    transparent_crc(p_2976->g_887, "p_2976->g_887", print_hash_value);
    transparent_crc(p_2976->g_888.s0, "p_2976->g_888.s0", print_hash_value);
    transparent_crc(p_2976->g_888.s1, "p_2976->g_888.s1", print_hash_value);
    transparent_crc(p_2976->g_888.s2, "p_2976->g_888.s2", print_hash_value);
    transparent_crc(p_2976->g_888.s3, "p_2976->g_888.s3", print_hash_value);
    transparent_crc(p_2976->g_888.s4, "p_2976->g_888.s4", print_hash_value);
    transparent_crc(p_2976->g_888.s5, "p_2976->g_888.s5", print_hash_value);
    transparent_crc(p_2976->g_888.s6, "p_2976->g_888.s6", print_hash_value);
    transparent_crc(p_2976->g_888.s7, "p_2976->g_888.s7", print_hash_value);
    transparent_crc(p_2976->g_938.x, "p_2976->g_938.x", print_hash_value);
    transparent_crc(p_2976->g_938.y, "p_2976->g_938.y", print_hash_value);
    transparent_crc(p_2976->g_996.s0, "p_2976->g_996.s0", print_hash_value);
    transparent_crc(p_2976->g_996.s1, "p_2976->g_996.s1", print_hash_value);
    transparent_crc(p_2976->g_996.s2, "p_2976->g_996.s2", print_hash_value);
    transparent_crc(p_2976->g_996.s3, "p_2976->g_996.s3", print_hash_value);
    transparent_crc(p_2976->g_996.s4, "p_2976->g_996.s4", print_hash_value);
    transparent_crc(p_2976->g_996.s5, "p_2976->g_996.s5", print_hash_value);
    transparent_crc(p_2976->g_996.s6, "p_2976->g_996.s6", print_hash_value);
    transparent_crc(p_2976->g_996.s7, "p_2976->g_996.s7", print_hash_value);
    transparent_crc(p_2976->g_996.s8, "p_2976->g_996.s8", print_hash_value);
    transparent_crc(p_2976->g_996.s9, "p_2976->g_996.s9", print_hash_value);
    transparent_crc(p_2976->g_996.sa, "p_2976->g_996.sa", print_hash_value);
    transparent_crc(p_2976->g_996.sb, "p_2976->g_996.sb", print_hash_value);
    transparent_crc(p_2976->g_996.sc, "p_2976->g_996.sc", print_hash_value);
    transparent_crc(p_2976->g_996.sd, "p_2976->g_996.sd", print_hash_value);
    transparent_crc(p_2976->g_996.se, "p_2976->g_996.se", print_hash_value);
    transparent_crc(p_2976->g_996.sf, "p_2976->g_996.sf", print_hash_value);
    transparent_crc(p_2976->g_1006.x, "p_2976->g_1006.x", print_hash_value);
    transparent_crc(p_2976->g_1006.y, "p_2976->g_1006.y", print_hash_value);
    transparent_crc(p_2976->g_1006.z, "p_2976->g_1006.z", print_hash_value);
    transparent_crc(p_2976->g_1006.w, "p_2976->g_1006.w", print_hash_value);
    transparent_crc(p_2976->g_1007.x, "p_2976->g_1007.x", print_hash_value);
    transparent_crc(p_2976->g_1007.y, "p_2976->g_1007.y", print_hash_value);
    transparent_crc(p_2976->g_1007.z, "p_2976->g_1007.z", print_hash_value);
    transparent_crc(p_2976->g_1007.w, "p_2976->g_1007.w", print_hash_value);
    transparent_crc(p_2976->g_1008.x, "p_2976->g_1008.x", print_hash_value);
    transparent_crc(p_2976->g_1008.y, "p_2976->g_1008.y", print_hash_value);
    transparent_crc(p_2976->g_1008.z, "p_2976->g_1008.z", print_hash_value);
    transparent_crc(p_2976->g_1008.w, "p_2976->g_1008.w", print_hash_value);
    transparent_crc(p_2976->g_1062.s0, "p_2976->g_1062.s0", print_hash_value);
    transparent_crc(p_2976->g_1062.s1, "p_2976->g_1062.s1", print_hash_value);
    transparent_crc(p_2976->g_1062.s2, "p_2976->g_1062.s2", print_hash_value);
    transparent_crc(p_2976->g_1062.s3, "p_2976->g_1062.s3", print_hash_value);
    transparent_crc(p_2976->g_1062.s4, "p_2976->g_1062.s4", print_hash_value);
    transparent_crc(p_2976->g_1062.s5, "p_2976->g_1062.s5", print_hash_value);
    transparent_crc(p_2976->g_1062.s6, "p_2976->g_1062.s6", print_hash_value);
    transparent_crc(p_2976->g_1062.s7, "p_2976->g_1062.s7", print_hash_value);
    transparent_crc(p_2976->g_1063.s0, "p_2976->g_1063.s0", print_hash_value);
    transparent_crc(p_2976->g_1063.s1, "p_2976->g_1063.s1", print_hash_value);
    transparent_crc(p_2976->g_1063.s2, "p_2976->g_1063.s2", print_hash_value);
    transparent_crc(p_2976->g_1063.s3, "p_2976->g_1063.s3", print_hash_value);
    transparent_crc(p_2976->g_1063.s4, "p_2976->g_1063.s4", print_hash_value);
    transparent_crc(p_2976->g_1063.s5, "p_2976->g_1063.s5", print_hash_value);
    transparent_crc(p_2976->g_1063.s6, "p_2976->g_1063.s6", print_hash_value);
    transparent_crc(p_2976->g_1063.s7, "p_2976->g_1063.s7", print_hash_value);
    transparent_crc(p_2976->g_1066.x, "p_2976->g_1066.x", print_hash_value);
    transparent_crc(p_2976->g_1066.y, "p_2976->g_1066.y", print_hash_value);
    transparent_crc(p_2976->g_1066.z, "p_2976->g_1066.z", print_hash_value);
    transparent_crc(p_2976->g_1066.w, "p_2976->g_1066.w", print_hash_value);
    transparent_crc(p_2976->g_1075, "p_2976->g_1075", print_hash_value);
    transparent_crc(p_2976->g_1106.s0, "p_2976->g_1106.s0", print_hash_value);
    transparent_crc(p_2976->g_1106.s1, "p_2976->g_1106.s1", print_hash_value);
    transparent_crc(p_2976->g_1106.s2, "p_2976->g_1106.s2", print_hash_value);
    transparent_crc(p_2976->g_1106.s3, "p_2976->g_1106.s3", print_hash_value);
    transparent_crc(p_2976->g_1106.s4, "p_2976->g_1106.s4", print_hash_value);
    transparent_crc(p_2976->g_1106.s5, "p_2976->g_1106.s5", print_hash_value);
    transparent_crc(p_2976->g_1106.s6, "p_2976->g_1106.s6", print_hash_value);
    transparent_crc(p_2976->g_1106.s7, "p_2976->g_1106.s7", print_hash_value);
    transparent_crc(p_2976->g_1110, "p_2976->g_1110", print_hash_value);
    transparent_crc(p_2976->g_1165, "p_2976->g_1165", print_hash_value);
    transparent_crc(p_2976->g_1215.s0, "p_2976->g_1215.s0", print_hash_value);
    transparent_crc(p_2976->g_1215.s1, "p_2976->g_1215.s1", print_hash_value);
    transparent_crc(p_2976->g_1215.s2, "p_2976->g_1215.s2", print_hash_value);
    transparent_crc(p_2976->g_1215.s3, "p_2976->g_1215.s3", print_hash_value);
    transparent_crc(p_2976->g_1215.s4, "p_2976->g_1215.s4", print_hash_value);
    transparent_crc(p_2976->g_1215.s5, "p_2976->g_1215.s5", print_hash_value);
    transparent_crc(p_2976->g_1215.s6, "p_2976->g_1215.s6", print_hash_value);
    transparent_crc(p_2976->g_1215.s7, "p_2976->g_1215.s7", print_hash_value);
    transparent_crc(p_2976->g_1215.s8, "p_2976->g_1215.s8", print_hash_value);
    transparent_crc(p_2976->g_1215.s9, "p_2976->g_1215.s9", print_hash_value);
    transparent_crc(p_2976->g_1215.sa, "p_2976->g_1215.sa", print_hash_value);
    transparent_crc(p_2976->g_1215.sb, "p_2976->g_1215.sb", print_hash_value);
    transparent_crc(p_2976->g_1215.sc, "p_2976->g_1215.sc", print_hash_value);
    transparent_crc(p_2976->g_1215.sd, "p_2976->g_1215.sd", print_hash_value);
    transparent_crc(p_2976->g_1215.se, "p_2976->g_1215.se", print_hash_value);
    transparent_crc(p_2976->g_1215.sf, "p_2976->g_1215.sf", print_hash_value);
    transparent_crc(p_2976->g_1218.x, "p_2976->g_1218.x", print_hash_value);
    transparent_crc(p_2976->g_1218.y, "p_2976->g_1218.y", print_hash_value);
    transparent_crc(p_2976->g_1262.s0, "p_2976->g_1262.s0", print_hash_value);
    transparent_crc(p_2976->g_1262.s1, "p_2976->g_1262.s1", print_hash_value);
    transparent_crc(p_2976->g_1262.s2, "p_2976->g_1262.s2", print_hash_value);
    transparent_crc(p_2976->g_1262.s3, "p_2976->g_1262.s3", print_hash_value);
    transparent_crc(p_2976->g_1262.s4, "p_2976->g_1262.s4", print_hash_value);
    transparent_crc(p_2976->g_1262.s5, "p_2976->g_1262.s5", print_hash_value);
    transparent_crc(p_2976->g_1262.s6, "p_2976->g_1262.s6", print_hash_value);
    transparent_crc(p_2976->g_1262.s7, "p_2976->g_1262.s7", print_hash_value);
    transparent_crc(p_2976->g_1284.x, "p_2976->g_1284.x", print_hash_value);
    transparent_crc(p_2976->g_1284.y, "p_2976->g_1284.y", print_hash_value);
    transparent_crc(p_2976->g_1292.x, "p_2976->g_1292.x", print_hash_value);
    transparent_crc(p_2976->g_1292.y, "p_2976->g_1292.y", print_hash_value);
    transparent_crc(p_2976->g_1356.s0, "p_2976->g_1356.s0", print_hash_value);
    transparent_crc(p_2976->g_1356.s1, "p_2976->g_1356.s1", print_hash_value);
    transparent_crc(p_2976->g_1356.s2, "p_2976->g_1356.s2", print_hash_value);
    transparent_crc(p_2976->g_1356.s3, "p_2976->g_1356.s3", print_hash_value);
    transparent_crc(p_2976->g_1356.s4, "p_2976->g_1356.s4", print_hash_value);
    transparent_crc(p_2976->g_1356.s5, "p_2976->g_1356.s5", print_hash_value);
    transparent_crc(p_2976->g_1356.s6, "p_2976->g_1356.s6", print_hash_value);
    transparent_crc(p_2976->g_1356.s7, "p_2976->g_1356.s7", print_hash_value);
    transparent_crc(p_2976->g_1360.s0, "p_2976->g_1360.s0", print_hash_value);
    transparent_crc(p_2976->g_1360.s1, "p_2976->g_1360.s1", print_hash_value);
    transparent_crc(p_2976->g_1360.s2, "p_2976->g_1360.s2", print_hash_value);
    transparent_crc(p_2976->g_1360.s3, "p_2976->g_1360.s3", print_hash_value);
    transparent_crc(p_2976->g_1360.s4, "p_2976->g_1360.s4", print_hash_value);
    transparent_crc(p_2976->g_1360.s5, "p_2976->g_1360.s5", print_hash_value);
    transparent_crc(p_2976->g_1360.s6, "p_2976->g_1360.s6", print_hash_value);
    transparent_crc(p_2976->g_1360.s7, "p_2976->g_1360.s7", print_hash_value);
    transparent_crc(p_2976->g_1361.x, "p_2976->g_1361.x", print_hash_value);
    transparent_crc(p_2976->g_1361.y, "p_2976->g_1361.y", print_hash_value);
    transparent_crc(p_2976->g_1361.z, "p_2976->g_1361.z", print_hash_value);
    transparent_crc(p_2976->g_1361.w, "p_2976->g_1361.w", print_hash_value);
    transparent_crc(p_2976->g_1362.x, "p_2976->g_1362.x", print_hash_value);
    transparent_crc(p_2976->g_1362.y, "p_2976->g_1362.y", print_hash_value);
    transparent_crc(p_2976->g_1373.s0, "p_2976->g_1373.s0", print_hash_value);
    transparent_crc(p_2976->g_1373.s1, "p_2976->g_1373.s1", print_hash_value);
    transparent_crc(p_2976->g_1373.s2, "p_2976->g_1373.s2", print_hash_value);
    transparent_crc(p_2976->g_1373.s3, "p_2976->g_1373.s3", print_hash_value);
    transparent_crc(p_2976->g_1373.s4, "p_2976->g_1373.s4", print_hash_value);
    transparent_crc(p_2976->g_1373.s5, "p_2976->g_1373.s5", print_hash_value);
    transparent_crc(p_2976->g_1373.s6, "p_2976->g_1373.s6", print_hash_value);
    transparent_crc(p_2976->g_1373.s7, "p_2976->g_1373.s7", print_hash_value);
    transparent_crc(p_2976->g_1373.s8, "p_2976->g_1373.s8", print_hash_value);
    transparent_crc(p_2976->g_1373.s9, "p_2976->g_1373.s9", print_hash_value);
    transparent_crc(p_2976->g_1373.sa, "p_2976->g_1373.sa", print_hash_value);
    transparent_crc(p_2976->g_1373.sb, "p_2976->g_1373.sb", print_hash_value);
    transparent_crc(p_2976->g_1373.sc, "p_2976->g_1373.sc", print_hash_value);
    transparent_crc(p_2976->g_1373.sd, "p_2976->g_1373.sd", print_hash_value);
    transparent_crc(p_2976->g_1373.se, "p_2976->g_1373.se", print_hash_value);
    transparent_crc(p_2976->g_1373.sf, "p_2976->g_1373.sf", print_hash_value);
    transparent_crc(p_2976->g_1376.x, "p_2976->g_1376.x", print_hash_value);
    transparent_crc(p_2976->g_1376.y, "p_2976->g_1376.y", print_hash_value);
    transparent_crc(p_2976->g_1389.x, "p_2976->g_1389.x", print_hash_value);
    transparent_crc(p_2976->g_1389.y, "p_2976->g_1389.y", print_hash_value);
    transparent_crc(p_2976->g_1417.s0, "p_2976->g_1417.s0", print_hash_value);
    transparent_crc(p_2976->g_1417.s1, "p_2976->g_1417.s1", print_hash_value);
    transparent_crc(p_2976->g_1417.s2, "p_2976->g_1417.s2", print_hash_value);
    transparent_crc(p_2976->g_1417.s3, "p_2976->g_1417.s3", print_hash_value);
    transparent_crc(p_2976->g_1417.s4, "p_2976->g_1417.s4", print_hash_value);
    transparent_crc(p_2976->g_1417.s5, "p_2976->g_1417.s5", print_hash_value);
    transparent_crc(p_2976->g_1417.s6, "p_2976->g_1417.s6", print_hash_value);
    transparent_crc(p_2976->g_1417.s7, "p_2976->g_1417.s7", print_hash_value);
    transparent_crc(p_2976->g_1419.s0, "p_2976->g_1419.s0", print_hash_value);
    transparent_crc(p_2976->g_1419.s1, "p_2976->g_1419.s1", print_hash_value);
    transparent_crc(p_2976->g_1419.s2, "p_2976->g_1419.s2", print_hash_value);
    transparent_crc(p_2976->g_1419.s3, "p_2976->g_1419.s3", print_hash_value);
    transparent_crc(p_2976->g_1419.s4, "p_2976->g_1419.s4", print_hash_value);
    transparent_crc(p_2976->g_1419.s5, "p_2976->g_1419.s5", print_hash_value);
    transparent_crc(p_2976->g_1419.s6, "p_2976->g_1419.s6", print_hash_value);
    transparent_crc(p_2976->g_1419.s7, "p_2976->g_1419.s7", print_hash_value);
    transparent_crc(p_2976->g_1433.x, "p_2976->g_1433.x", print_hash_value);
    transparent_crc(p_2976->g_1433.y, "p_2976->g_1433.y", print_hash_value);
    transparent_crc(p_2976->g_1471.x, "p_2976->g_1471.x", print_hash_value);
    transparent_crc(p_2976->g_1471.y, "p_2976->g_1471.y", print_hash_value);
    transparent_crc(p_2976->g_1471.z, "p_2976->g_1471.z", print_hash_value);
    transparent_crc(p_2976->g_1471.w, "p_2976->g_1471.w", print_hash_value);
    transparent_crc(p_2976->g_1472.x, "p_2976->g_1472.x", print_hash_value);
    transparent_crc(p_2976->g_1472.y, "p_2976->g_1472.y", print_hash_value);
    transparent_crc(p_2976->g_1474.s0, "p_2976->g_1474.s0", print_hash_value);
    transparent_crc(p_2976->g_1474.s1, "p_2976->g_1474.s1", print_hash_value);
    transparent_crc(p_2976->g_1474.s2, "p_2976->g_1474.s2", print_hash_value);
    transparent_crc(p_2976->g_1474.s3, "p_2976->g_1474.s3", print_hash_value);
    transparent_crc(p_2976->g_1474.s4, "p_2976->g_1474.s4", print_hash_value);
    transparent_crc(p_2976->g_1474.s5, "p_2976->g_1474.s5", print_hash_value);
    transparent_crc(p_2976->g_1474.s6, "p_2976->g_1474.s6", print_hash_value);
    transparent_crc(p_2976->g_1474.s7, "p_2976->g_1474.s7", print_hash_value);
    transparent_crc(p_2976->g_1474.s8, "p_2976->g_1474.s8", print_hash_value);
    transparent_crc(p_2976->g_1474.s9, "p_2976->g_1474.s9", print_hash_value);
    transparent_crc(p_2976->g_1474.sa, "p_2976->g_1474.sa", print_hash_value);
    transparent_crc(p_2976->g_1474.sb, "p_2976->g_1474.sb", print_hash_value);
    transparent_crc(p_2976->g_1474.sc, "p_2976->g_1474.sc", print_hash_value);
    transparent_crc(p_2976->g_1474.sd, "p_2976->g_1474.sd", print_hash_value);
    transparent_crc(p_2976->g_1474.se, "p_2976->g_1474.se", print_hash_value);
    transparent_crc(p_2976->g_1474.sf, "p_2976->g_1474.sf", print_hash_value);
    transparent_crc(p_2976->g_1482.x, "p_2976->g_1482.x", print_hash_value);
    transparent_crc(p_2976->g_1482.y, "p_2976->g_1482.y", print_hash_value);
    transparent_crc(p_2976->g_1482.z, "p_2976->g_1482.z", print_hash_value);
    transparent_crc(p_2976->g_1482.w, "p_2976->g_1482.w", print_hash_value);
    transparent_crc(p_2976->g_1486.s0, "p_2976->g_1486.s0", print_hash_value);
    transparent_crc(p_2976->g_1486.s1, "p_2976->g_1486.s1", print_hash_value);
    transparent_crc(p_2976->g_1486.s2, "p_2976->g_1486.s2", print_hash_value);
    transparent_crc(p_2976->g_1486.s3, "p_2976->g_1486.s3", print_hash_value);
    transparent_crc(p_2976->g_1486.s4, "p_2976->g_1486.s4", print_hash_value);
    transparent_crc(p_2976->g_1486.s5, "p_2976->g_1486.s5", print_hash_value);
    transparent_crc(p_2976->g_1486.s6, "p_2976->g_1486.s6", print_hash_value);
    transparent_crc(p_2976->g_1486.s7, "p_2976->g_1486.s7", print_hash_value);
    transparent_crc(p_2976->g_1522.s0, "p_2976->g_1522.s0", print_hash_value);
    transparent_crc(p_2976->g_1522.s1, "p_2976->g_1522.s1", print_hash_value);
    transparent_crc(p_2976->g_1522.s2, "p_2976->g_1522.s2", print_hash_value);
    transparent_crc(p_2976->g_1522.s3, "p_2976->g_1522.s3", print_hash_value);
    transparent_crc(p_2976->g_1522.s4, "p_2976->g_1522.s4", print_hash_value);
    transparent_crc(p_2976->g_1522.s5, "p_2976->g_1522.s5", print_hash_value);
    transparent_crc(p_2976->g_1522.s6, "p_2976->g_1522.s6", print_hash_value);
    transparent_crc(p_2976->g_1522.s7, "p_2976->g_1522.s7", print_hash_value);
    transparent_crc(p_2976->g_1540, "p_2976->g_1540", print_hash_value);
    transparent_crc(p_2976->g_1630.x, "p_2976->g_1630.x", print_hash_value);
    transparent_crc(p_2976->g_1630.y, "p_2976->g_1630.y", print_hash_value);
    transparent_crc(p_2976->g_1630.z, "p_2976->g_1630.z", print_hash_value);
    transparent_crc(p_2976->g_1630.w, "p_2976->g_1630.w", print_hash_value);
    transparent_crc(p_2976->g_1631.s0, "p_2976->g_1631.s0", print_hash_value);
    transparent_crc(p_2976->g_1631.s1, "p_2976->g_1631.s1", print_hash_value);
    transparent_crc(p_2976->g_1631.s2, "p_2976->g_1631.s2", print_hash_value);
    transparent_crc(p_2976->g_1631.s3, "p_2976->g_1631.s3", print_hash_value);
    transparent_crc(p_2976->g_1631.s4, "p_2976->g_1631.s4", print_hash_value);
    transparent_crc(p_2976->g_1631.s5, "p_2976->g_1631.s5", print_hash_value);
    transparent_crc(p_2976->g_1631.s6, "p_2976->g_1631.s6", print_hash_value);
    transparent_crc(p_2976->g_1631.s7, "p_2976->g_1631.s7", print_hash_value);
    transparent_crc(p_2976->g_1666.s0, "p_2976->g_1666.s0", print_hash_value);
    transparent_crc(p_2976->g_1666.s1, "p_2976->g_1666.s1", print_hash_value);
    transparent_crc(p_2976->g_1666.s2, "p_2976->g_1666.s2", print_hash_value);
    transparent_crc(p_2976->g_1666.s3, "p_2976->g_1666.s3", print_hash_value);
    transparent_crc(p_2976->g_1666.s4, "p_2976->g_1666.s4", print_hash_value);
    transparent_crc(p_2976->g_1666.s5, "p_2976->g_1666.s5", print_hash_value);
    transparent_crc(p_2976->g_1666.s6, "p_2976->g_1666.s6", print_hash_value);
    transparent_crc(p_2976->g_1666.s7, "p_2976->g_1666.s7", print_hash_value);
    transparent_crc(p_2976->g_1666.s8, "p_2976->g_1666.s8", print_hash_value);
    transparent_crc(p_2976->g_1666.s9, "p_2976->g_1666.s9", print_hash_value);
    transparent_crc(p_2976->g_1666.sa, "p_2976->g_1666.sa", print_hash_value);
    transparent_crc(p_2976->g_1666.sb, "p_2976->g_1666.sb", print_hash_value);
    transparent_crc(p_2976->g_1666.sc, "p_2976->g_1666.sc", print_hash_value);
    transparent_crc(p_2976->g_1666.sd, "p_2976->g_1666.sd", print_hash_value);
    transparent_crc(p_2976->g_1666.se, "p_2976->g_1666.se", print_hash_value);
    transparent_crc(p_2976->g_1666.sf, "p_2976->g_1666.sf", print_hash_value);
    transparent_crc(p_2976->g_1694.x, "p_2976->g_1694.x", print_hash_value);
    transparent_crc(p_2976->g_1694.y, "p_2976->g_1694.y", print_hash_value);
    transparent_crc(p_2976->g_1697.s0, "p_2976->g_1697.s0", print_hash_value);
    transparent_crc(p_2976->g_1697.s1, "p_2976->g_1697.s1", print_hash_value);
    transparent_crc(p_2976->g_1697.s2, "p_2976->g_1697.s2", print_hash_value);
    transparent_crc(p_2976->g_1697.s3, "p_2976->g_1697.s3", print_hash_value);
    transparent_crc(p_2976->g_1697.s4, "p_2976->g_1697.s4", print_hash_value);
    transparent_crc(p_2976->g_1697.s5, "p_2976->g_1697.s5", print_hash_value);
    transparent_crc(p_2976->g_1697.s6, "p_2976->g_1697.s6", print_hash_value);
    transparent_crc(p_2976->g_1697.s7, "p_2976->g_1697.s7", print_hash_value);
    transparent_crc(p_2976->g_1697.s8, "p_2976->g_1697.s8", print_hash_value);
    transparent_crc(p_2976->g_1697.s9, "p_2976->g_1697.s9", print_hash_value);
    transparent_crc(p_2976->g_1697.sa, "p_2976->g_1697.sa", print_hash_value);
    transparent_crc(p_2976->g_1697.sb, "p_2976->g_1697.sb", print_hash_value);
    transparent_crc(p_2976->g_1697.sc, "p_2976->g_1697.sc", print_hash_value);
    transparent_crc(p_2976->g_1697.sd, "p_2976->g_1697.sd", print_hash_value);
    transparent_crc(p_2976->g_1697.se, "p_2976->g_1697.se", print_hash_value);
    transparent_crc(p_2976->g_1697.sf, "p_2976->g_1697.sf", print_hash_value);
    transparent_crc(p_2976->g_1698.s0, "p_2976->g_1698.s0", print_hash_value);
    transparent_crc(p_2976->g_1698.s1, "p_2976->g_1698.s1", print_hash_value);
    transparent_crc(p_2976->g_1698.s2, "p_2976->g_1698.s2", print_hash_value);
    transparent_crc(p_2976->g_1698.s3, "p_2976->g_1698.s3", print_hash_value);
    transparent_crc(p_2976->g_1698.s4, "p_2976->g_1698.s4", print_hash_value);
    transparent_crc(p_2976->g_1698.s5, "p_2976->g_1698.s5", print_hash_value);
    transparent_crc(p_2976->g_1698.s6, "p_2976->g_1698.s6", print_hash_value);
    transparent_crc(p_2976->g_1698.s7, "p_2976->g_1698.s7", print_hash_value);
    transparent_crc(p_2976->g_1698.s8, "p_2976->g_1698.s8", print_hash_value);
    transparent_crc(p_2976->g_1698.s9, "p_2976->g_1698.s9", print_hash_value);
    transparent_crc(p_2976->g_1698.sa, "p_2976->g_1698.sa", print_hash_value);
    transparent_crc(p_2976->g_1698.sb, "p_2976->g_1698.sb", print_hash_value);
    transparent_crc(p_2976->g_1698.sc, "p_2976->g_1698.sc", print_hash_value);
    transparent_crc(p_2976->g_1698.sd, "p_2976->g_1698.sd", print_hash_value);
    transparent_crc(p_2976->g_1698.se, "p_2976->g_1698.se", print_hash_value);
    transparent_crc(p_2976->g_1698.sf, "p_2976->g_1698.sf", print_hash_value);
    transparent_crc(p_2976->g_1700.x, "p_2976->g_1700.x", print_hash_value);
    transparent_crc(p_2976->g_1700.y, "p_2976->g_1700.y", print_hash_value);
    transparent_crc(p_2976->g_1700.z, "p_2976->g_1700.z", print_hash_value);
    transparent_crc(p_2976->g_1700.w, "p_2976->g_1700.w", print_hash_value);
    transparent_crc(p_2976->g_1703.x, "p_2976->g_1703.x", print_hash_value);
    transparent_crc(p_2976->g_1703.y, "p_2976->g_1703.y", print_hash_value);
    transparent_crc(p_2976->g_1703.z, "p_2976->g_1703.z", print_hash_value);
    transparent_crc(p_2976->g_1703.w, "p_2976->g_1703.w", print_hash_value);
    transparent_crc(p_2976->g_1711.s0, "p_2976->g_1711.s0", print_hash_value);
    transparent_crc(p_2976->g_1711.s1, "p_2976->g_1711.s1", print_hash_value);
    transparent_crc(p_2976->g_1711.s2, "p_2976->g_1711.s2", print_hash_value);
    transparent_crc(p_2976->g_1711.s3, "p_2976->g_1711.s3", print_hash_value);
    transparent_crc(p_2976->g_1711.s4, "p_2976->g_1711.s4", print_hash_value);
    transparent_crc(p_2976->g_1711.s5, "p_2976->g_1711.s5", print_hash_value);
    transparent_crc(p_2976->g_1711.s6, "p_2976->g_1711.s6", print_hash_value);
    transparent_crc(p_2976->g_1711.s7, "p_2976->g_1711.s7", print_hash_value);
    transparent_crc(p_2976->g_1712.s0, "p_2976->g_1712.s0", print_hash_value);
    transparent_crc(p_2976->g_1712.s1, "p_2976->g_1712.s1", print_hash_value);
    transparent_crc(p_2976->g_1712.s2, "p_2976->g_1712.s2", print_hash_value);
    transparent_crc(p_2976->g_1712.s3, "p_2976->g_1712.s3", print_hash_value);
    transparent_crc(p_2976->g_1712.s4, "p_2976->g_1712.s4", print_hash_value);
    transparent_crc(p_2976->g_1712.s5, "p_2976->g_1712.s5", print_hash_value);
    transparent_crc(p_2976->g_1712.s6, "p_2976->g_1712.s6", print_hash_value);
    transparent_crc(p_2976->g_1712.s7, "p_2976->g_1712.s7", print_hash_value);
    transparent_crc(p_2976->g_1727.x, "p_2976->g_1727.x", print_hash_value);
    transparent_crc(p_2976->g_1727.y, "p_2976->g_1727.y", print_hash_value);
    transparent_crc(p_2976->g_1727.z, "p_2976->g_1727.z", print_hash_value);
    transparent_crc(p_2976->g_1727.w, "p_2976->g_1727.w", print_hash_value);
    transparent_crc(p_2976->g_1745.s0, "p_2976->g_1745.s0", print_hash_value);
    transparent_crc(p_2976->g_1745.s1, "p_2976->g_1745.s1", print_hash_value);
    transparent_crc(p_2976->g_1745.s2, "p_2976->g_1745.s2", print_hash_value);
    transparent_crc(p_2976->g_1745.s3, "p_2976->g_1745.s3", print_hash_value);
    transparent_crc(p_2976->g_1745.s4, "p_2976->g_1745.s4", print_hash_value);
    transparent_crc(p_2976->g_1745.s5, "p_2976->g_1745.s5", print_hash_value);
    transparent_crc(p_2976->g_1745.s6, "p_2976->g_1745.s6", print_hash_value);
    transparent_crc(p_2976->g_1745.s7, "p_2976->g_1745.s7", print_hash_value);
    transparent_crc(p_2976->g_1745.s8, "p_2976->g_1745.s8", print_hash_value);
    transparent_crc(p_2976->g_1745.s9, "p_2976->g_1745.s9", print_hash_value);
    transparent_crc(p_2976->g_1745.sa, "p_2976->g_1745.sa", print_hash_value);
    transparent_crc(p_2976->g_1745.sb, "p_2976->g_1745.sb", print_hash_value);
    transparent_crc(p_2976->g_1745.sc, "p_2976->g_1745.sc", print_hash_value);
    transparent_crc(p_2976->g_1745.sd, "p_2976->g_1745.sd", print_hash_value);
    transparent_crc(p_2976->g_1745.se, "p_2976->g_1745.se", print_hash_value);
    transparent_crc(p_2976->g_1745.sf, "p_2976->g_1745.sf", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_2976->g_1768[i], "p_2976->g_1768[i]", print_hash_value);

    }
    transparent_crc(p_2976->g_1794.x, "p_2976->g_1794.x", print_hash_value);
    transparent_crc(p_2976->g_1794.y, "p_2976->g_1794.y", print_hash_value);
    transparent_crc(p_2976->g_1839.s0, "p_2976->g_1839.s0", print_hash_value);
    transparent_crc(p_2976->g_1839.s1, "p_2976->g_1839.s1", print_hash_value);
    transparent_crc(p_2976->g_1839.s2, "p_2976->g_1839.s2", print_hash_value);
    transparent_crc(p_2976->g_1839.s3, "p_2976->g_1839.s3", print_hash_value);
    transparent_crc(p_2976->g_1839.s4, "p_2976->g_1839.s4", print_hash_value);
    transparent_crc(p_2976->g_1839.s5, "p_2976->g_1839.s5", print_hash_value);
    transparent_crc(p_2976->g_1839.s6, "p_2976->g_1839.s6", print_hash_value);
    transparent_crc(p_2976->g_1839.s7, "p_2976->g_1839.s7", print_hash_value);
    transparent_crc(p_2976->g_1839.s8, "p_2976->g_1839.s8", print_hash_value);
    transparent_crc(p_2976->g_1839.s9, "p_2976->g_1839.s9", print_hash_value);
    transparent_crc(p_2976->g_1839.sa, "p_2976->g_1839.sa", print_hash_value);
    transparent_crc(p_2976->g_1839.sb, "p_2976->g_1839.sb", print_hash_value);
    transparent_crc(p_2976->g_1839.sc, "p_2976->g_1839.sc", print_hash_value);
    transparent_crc(p_2976->g_1839.sd, "p_2976->g_1839.sd", print_hash_value);
    transparent_crc(p_2976->g_1839.se, "p_2976->g_1839.se", print_hash_value);
    transparent_crc(p_2976->g_1839.sf, "p_2976->g_1839.sf", print_hash_value);
    transparent_crc(p_2976->g_1852.x, "p_2976->g_1852.x", print_hash_value);
    transparent_crc(p_2976->g_1852.y, "p_2976->g_1852.y", print_hash_value);
    transparent_crc(p_2976->g_1891.x, "p_2976->g_1891.x", print_hash_value);
    transparent_crc(p_2976->g_1891.y, "p_2976->g_1891.y", print_hash_value);
    transparent_crc(p_2976->g_1893.s0, "p_2976->g_1893.s0", print_hash_value);
    transparent_crc(p_2976->g_1893.s1, "p_2976->g_1893.s1", print_hash_value);
    transparent_crc(p_2976->g_1893.s2, "p_2976->g_1893.s2", print_hash_value);
    transparent_crc(p_2976->g_1893.s3, "p_2976->g_1893.s3", print_hash_value);
    transparent_crc(p_2976->g_1893.s4, "p_2976->g_1893.s4", print_hash_value);
    transparent_crc(p_2976->g_1893.s5, "p_2976->g_1893.s5", print_hash_value);
    transparent_crc(p_2976->g_1893.s6, "p_2976->g_1893.s6", print_hash_value);
    transparent_crc(p_2976->g_1893.s7, "p_2976->g_1893.s7", print_hash_value);
    transparent_crc(p_2976->g_1893.s8, "p_2976->g_1893.s8", print_hash_value);
    transparent_crc(p_2976->g_1893.s9, "p_2976->g_1893.s9", print_hash_value);
    transparent_crc(p_2976->g_1893.sa, "p_2976->g_1893.sa", print_hash_value);
    transparent_crc(p_2976->g_1893.sb, "p_2976->g_1893.sb", print_hash_value);
    transparent_crc(p_2976->g_1893.sc, "p_2976->g_1893.sc", print_hash_value);
    transparent_crc(p_2976->g_1893.sd, "p_2976->g_1893.sd", print_hash_value);
    transparent_crc(p_2976->g_1893.se, "p_2976->g_1893.se", print_hash_value);
    transparent_crc(p_2976->g_1893.sf, "p_2976->g_1893.sf", print_hash_value);
    transparent_crc(p_2976->g_1934, "p_2976->g_1934", print_hash_value);
    transparent_crc(p_2976->g_1999.s0, "p_2976->g_1999.s0", print_hash_value);
    transparent_crc(p_2976->g_1999.s1, "p_2976->g_1999.s1", print_hash_value);
    transparent_crc(p_2976->g_1999.s2, "p_2976->g_1999.s2", print_hash_value);
    transparent_crc(p_2976->g_1999.s3, "p_2976->g_1999.s3", print_hash_value);
    transparent_crc(p_2976->g_1999.s4, "p_2976->g_1999.s4", print_hash_value);
    transparent_crc(p_2976->g_1999.s5, "p_2976->g_1999.s5", print_hash_value);
    transparent_crc(p_2976->g_1999.s6, "p_2976->g_1999.s6", print_hash_value);
    transparent_crc(p_2976->g_1999.s7, "p_2976->g_1999.s7", print_hash_value);
    transparent_crc(p_2976->g_1999.s8, "p_2976->g_1999.s8", print_hash_value);
    transparent_crc(p_2976->g_1999.s9, "p_2976->g_1999.s9", print_hash_value);
    transparent_crc(p_2976->g_1999.sa, "p_2976->g_1999.sa", print_hash_value);
    transparent_crc(p_2976->g_1999.sb, "p_2976->g_1999.sb", print_hash_value);
    transparent_crc(p_2976->g_1999.sc, "p_2976->g_1999.sc", print_hash_value);
    transparent_crc(p_2976->g_1999.sd, "p_2976->g_1999.sd", print_hash_value);
    transparent_crc(p_2976->g_1999.se, "p_2976->g_1999.se", print_hash_value);
    transparent_crc(p_2976->g_1999.sf, "p_2976->g_1999.sf", print_hash_value);
    transparent_crc(p_2976->g_2005.x, "p_2976->g_2005.x", print_hash_value);
    transparent_crc(p_2976->g_2005.y, "p_2976->g_2005.y", print_hash_value);
    transparent_crc(p_2976->g_2007.x, "p_2976->g_2007.x", print_hash_value);
    transparent_crc(p_2976->g_2007.y, "p_2976->g_2007.y", print_hash_value);
    transparent_crc(p_2976->g_2007.z, "p_2976->g_2007.z", print_hash_value);
    transparent_crc(p_2976->g_2007.w, "p_2976->g_2007.w", print_hash_value);
    transparent_crc(p_2976->g_2040.s0, "p_2976->g_2040.s0", print_hash_value);
    transparent_crc(p_2976->g_2040.s1, "p_2976->g_2040.s1", print_hash_value);
    transparent_crc(p_2976->g_2040.s2, "p_2976->g_2040.s2", print_hash_value);
    transparent_crc(p_2976->g_2040.s3, "p_2976->g_2040.s3", print_hash_value);
    transparent_crc(p_2976->g_2040.s4, "p_2976->g_2040.s4", print_hash_value);
    transparent_crc(p_2976->g_2040.s5, "p_2976->g_2040.s5", print_hash_value);
    transparent_crc(p_2976->g_2040.s6, "p_2976->g_2040.s6", print_hash_value);
    transparent_crc(p_2976->g_2040.s7, "p_2976->g_2040.s7", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_2976->g_2110[i][j], "p_2976->g_2110[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2976->g_2117.s0, "p_2976->g_2117.s0", print_hash_value);
    transparent_crc(p_2976->g_2117.s1, "p_2976->g_2117.s1", print_hash_value);
    transparent_crc(p_2976->g_2117.s2, "p_2976->g_2117.s2", print_hash_value);
    transparent_crc(p_2976->g_2117.s3, "p_2976->g_2117.s3", print_hash_value);
    transparent_crc(p_2976->g_2117.s4, "p_2976->g_2117.s4", print_hash_value);
    transparent_crc(p_2976->g_2117.s5, "p_2976->g_2117.s5", print_hash_value);
    transparent_crc(p_2976->g_2117.s6, "p_2976->g_2117.s6", print_hash_value);
    transparent_crc(p_2976->g_2117.s7, "p_2976->g_2117.s7", print_hash_value);
    transparent_crc(p_2976->g_2117.s8, "p_2976->g_2117.s8", print_hash_value);
    transparent_crc(p_2976->g_2117.s9, "p_2976->g_2117.s9", print_hash_value);
    transparent_crc(p_2976->g_2117.sa, "p_2976->g_2117.sa", print_hash_value);
    transparent_crc(p_2976->g_2117.sb, "p_2976->g_2117.sb", print_hash_value);
    transparent_crc(p_2976->g_2117.sc, "p_2976->g_2117.sc", print_hash_value);
    transparent_crc(p_2976->g_2117.sd, "p_2976->g_2117.sd", print_hash_value);
    transparent_crc(p_2976->g_2117.se, "p_2976->g_2117.se", print_hash_value);
    transparent_crc(p_2976->g_2117.sf, "p_2976->g_2117.sf", print_hash_value);
    transparent_crc(p_2976->g_2139.x, "p_2976->g_2139.x", print_hash_value);
    transparent_crc(p_2976->g_2139.y, "p_2976->g_2139.y", print_hash_value);
    transparent_crc(p_2976->g_2153, "p_2976->g_2153", print_hash_value);
    transparent_crc(p_2976->g_2181.s0, "p_2976->g_2181.s0", print_hash_value);
    transparent_crc(p_2976->g_2181.s1, "p_2976->g_2181.s1", print_hash_value);
    transparent_crc(p_2976->g_2181.s2, "p_2976->g_2181.s2", print_hash_value);
    transparent_crc(p_2976->g_2181.s3, "p_2976->g_2181.s3", print_hash_value);
    transparent_crc(p_2976->g_2181.s4, "p_2976->g_2181.s4", print_hash_value);
    transparent_crc(p_2976->g_2181.s5, "p_2976->g_2181.s5", print_hash_value);
    transparent_crc(p_2976->g_2181.s6, "p_2976->g_2181.s6", print_hash_value);
    transparent_crc(p_2976->g_2181.s7, "p_2976->g_2181.s7", print_hash_value);
    transparent_crc(p_2976->g_2184.s0, "p_2976->g_2184.s0", print_hash_value);
    transparent_crc(p_2976->g_2184.s1, "p_2976->g_2184.s1", print_hash_value);
    transparent_crc(p_2976->g_2184.s2, "p_2976->g_2184.s2", print_hash_value);
    transparent_crc(p_2976->g_2184.s3, "p_2976->g_2184.s3", print_hash_value);
    transparent_crc(p_2976->g_2184.s4, "p_2976->g_2184.s4", print_hash_value);
    transparent_crc(p_2976->g_2184.s5, "p_2976->g_2184.s5", print_hash_value);
    transparent_crc(p_2976->g_2184.s6, "p_2976->g_2184.s6", print_hash_value);
    transparent_crc(p_2976->g_2184.s7, "p_2976->g_2184.s7", print_hash_value);
    transparent_crc(p_2976->g_2202.x, "p_2976->g_2202.x", print_hash_value);
    transparent_crc(p_2976->g_2202.y, "p_2976->g_2202.y", print_hash_value);
    transparent_crc(p_2976->g_2220, "p_2976->g_2220", print_hash_value);
    transparent_crc(p_2976->g_2241.x, "p_2976->g_2241.x", print_hash_value);
    transparent_crc(p_2976->g_2241.y, "p_2976->g_2241.y", print_hash_value);
    transparent_crc(p_2976->g_2242.x, "p_2976->g_2242.x", print_hash_value);
    transparent_crc(p_2976->g_2242.y, "p_2976->g_2242.y", print_hash_value);
    transparent_crc(p_2976->g_2245.x, "p_2976->g_2245.x", print_hash_value);
    transparent_crc(p_2976->g_2245.y, "p_2976->g_2245.y", print_hash_value);
    transparent_crc(p_2976->g_2245.z, "p_2976->g_2245.z", print_hash_value);
    transparent_crc(p_2976->g_2245.w, "p_2976->g_2245.w", print_hash_value);
    transparent_crc(p_2976->g_2263.s0, "p_2976->g_2263.s0", print_hash_value);
    transparent_crc(p_2976->g_2263.s1, "p_2976->g_2263.s1", print_hash_value);
    transparent_crc(p_2976->g_2263.s2, "p_2976->g_2263.s2", print_hash_value);
    transparent_crc(p_2976->g_2263.s3, "p_2976->g_2263.s3", print_hash_value);
    transparent_crc(p_2976->g_2263.s4, "p_2976->g_2263.s4", print_hash_value);
    transparent_crc(p_2976->g_2263.s5, "p_2976->g_2263.s5", print_hash_value);
    transparent_crc(p_2976->g_2263.s6, "p_2976->g_2263.s6", print_hash_value);
    transparent_crc(p_2976->g_2263.s7, "p_2976->g_2263.s7", print_hash_value);
    transparent_crc(p_2976->g_2263.s8, "p_2976->g_2263.s8", print_hash_value);
    transparent_crc(p_2976->g_2263.s9, "p_2976->g_2263.s9", print_hash_value);
    transparent_crc(p_2976->g_2263.sa, "p_2976->g_2263.sa", print_hash_value);
    transparent_crc(p_2976->g_2263.sb, "p_2976->g_2263.sb", print_hash_value);
    transparent_crc(p_2976->g_2263.sc, "p_2976->g_2263.sc", print_hash_value);
    transparent_crc(p_2976->g_2263.sd, "p_2976->g_2263.sd", print_hash_value);
    transparent_crc(p_2976->g_2263.se, "p_2976->g_2263.se", print_hash_value);
    transparent_crc(p_2976->g_2263.sf, "p_2976->g_2263.sf", print_hash_value);
    transparent_crc(p_2976->g_2271, "p_2976->g_2271", print_hash_value);
    transparent_crc(p_2976->g_2276.s0, "p_2976->g_2276.s0", print_hash_value);
    transparent_crc(p_2976->g_2276.s1, "p_2976->g_2276.s1", print_hash_value);
    transparent_crc(p_2976->g_2276.s2, "p_2976->g_2276.s2", print_hash_value);
    transparent_crc(p_2976->g_2276.s3, "p_2976->g_2276.s3", print_hash_value);
    transparent_crc(p_2976->g_2276.s4, "p_2976->g_2276.s4", print_hash_value);
    transparent_crc(p_2976->g_2276.s5, "p_2976->g_2276.s5", print_hash_value);
    transparent_crc(p_2976->g_2276.s6, "p_2976->g_2276.s6", print_hash_value);
    transparent_crc(p_2976->g_2276.s7, "p_2976->g_2276.s7", print_hash_value);
    transparent_crc(p_2976->g_2292.s0, "p_2976->g_2292.s0", print_hash_value);
    transparent_crc(p_2976->g_2292.s1, "p_2976->g_2292.s1", print_hash_value);
    transparent_crc(p_2976->g_2292.s2, "p_2976->g_2292.s2", print_hash_value);
    transparent_crc(p_2976->g_2292.s3, "p_2976->g_2292.s3", print_hash_value);
    transparent_crc(p_2976->g_2292.s4, "p_2976->g_2292.s4", print_hash_value);
    transparent_crc(p_2976->g_2292.s5, "p_2976->g_2292.s5", print_hash_value);
    transparent_crc(p_2976->g_2292.s6, "p_2976->g_2292.s6", print_hash_value);
    transparent_crc(p_2976->g_2292.s7, "p_2976->g_2292.s7", print_hash_value);
    transparent_crc(p_2976->g_2292.s8, "p_2976->g_2292.s8", print_hash_value);
    transparent_crc(p_2976->g_2292.s9, "p_2976->g_2292.s9", print_hash_value);
    transparent_crc(p_2976->g_2292.sa, "p_2976->g_2292.sa", print_hash_value);
    transparent_crc(p_2976->g_2292.sb, "p_2976->g_2292.sb", print_hash_value);
    transparent_crc(p_2976->g_2292.sc, "p_2976->g_2292.sc", print_hash_value);
    transparent_crc(p_2976->g_2292.sd, "p_2976->g_2292.sd", print_hash_value);
    transparent_crc(p_2976->g_2292.se, "p_2976->g_2292.se", print_hash_value);
    transparent_crc(p_2976->g_2292.sf, "p_2976->g_2292.sf", print_hash_value);
    transparent_crc(p_2976->g_2293.x, "p_2976->g_2293.x", print_hash_value);
    transparent_crc(p_2976->g_2293.y, "p_2976->g_2293.y", print_hash_value);
    transparent_crc(p_2976->g_2293.z, "p_2976->g_2293.z", print_hash_value);
    transparent_crc(p_2976->g_2293.w, "p_2976->g_2293.w", print_hash_value);
    transparent_crc(p_2976->g_2294.s0, "p_2976->g_2294.s0", print_hash_value);
    transparent_crc(p_2976->g_2294.s1, "p_2976->g_2294.s1", print_hash_value);
    transparent_crc(p_2976->g_2294.s2, "p_2976->g_2294.s2", print_hash_value);
    transparent_crc(p_2976->g_2294.s3, "p_2976->g_2294.s3", print_hash_value);
    transparent_crc(p_2976->g_2294.s4, "p_2976->g_2294.s4", print_hash_value);
    transparent_crc(p_2976->g_2294.s5, "p_2976->g_2294.s5", print_hash_value);
    transparent_crc(p_2976->g_2294.s6, "p_2976->g_2294.s6", print_hash_value);
    transparent_crc(p_2976->g_2294.s7, "p_2976->g_2294.s7", print_hash_value);
    transparent_crc(p_2976->g_2294.s8, "p_2976->g_2294.s8", print_hash_value);
    transparent_crc(p_2976->g_2294.s9, "p_2976->g_2294.s9", print_hash_value);
    transparent_crc(p_2976->g_2294.sa, "p_2976->g_2294.sa", print_hash_value);
    transparent_crc(p_2976->g_2294.sb, "p_2976->g_2294.sb", print_hash_value);
    transparent_crc(p_2976->g_2294.sc, "p_2976->g_2294.sc", print_hash_value);
    transparent_crc(p_2976->g_2294.sd, "p_2976->g_2294.sd", print_hash_value);
    transparent_crc(p_2976->g_2294.se, "p_2976->g_2294.se", print_hash_value);
    transparent_crc(p_2976->g_2294.sf, "p_2976->g_2294.sf", print_hash_value);
    transparent_crc(p_2976->g_2300, "p_2976->g_2300", print_hash_value);
    transparent_crc(p_2976->g_2318.x, "p_2976->g_2318.x", print_hash_value);
    transparent_crc(p_2976->g_2318.y, "p_2976->g_2318.y", print_hash_value);
    transparent_crc(p_2976->g_2318.z, "p_2976->g_2318.z", print_hash_value);
    transparent_crc(p_2976->g_2318.w, "p_2976->g_2318.w", print_hash_value);
    transparent_crc(p_2976->g_2323.s0, "p_2976->g_2323.s0", print_hash_value);
    transparent_crc(p_2976->g_2323.s1, "p_2976->g_2323.s1", print_hash_value);
    transparent_crc(p_2976->g_2323.s2, "p_2976->g_2323.s2", print_hash_value);
    transparent_crc(p_2976->g_2323.s3, "p_2976->g_2323.s3", print_hash_value);
    transparent_crc(p_2976->g_2323.s4, "p_2976->g_2323.s4", print_hash_value);
    transparent_crc(p_2976->g_2323.s5, "p_2976->g_2323.s5", print_hash_value);
    transparent_crc(p_2976->g_2323.s6, "p_2976->g_2323.s6", print_hash_value);
    transparent_crc(p_2976->g_2323.s7, "p_2976->g_2323.s7", print_hash_value);
    transparent_crc(p_2976->g_2324.s0, "p_2976->g_2324.s0", print_hash_value);
    transparent_crc(p_2976->g_2324.s1, "p_2976->g_2324.s1", print_hash_value);
    transparent_crc(p_2976->g_2324.s2, "p_2976->g_2324.s2", print_hash_value);
    transparent_crc(p_2976->g_2324.s3, "p_2976->g_2324.s3", print_hash_value);
    transparent_crc(p_2976->g_2324.s4, "p_2976->g_2324.s4", print_hash_value);
    transparent_crc(p_2976->g_2324.s5, "p_2976->g_2324.s5", print_hash_value);
    transparent_crc(p_2976->g_2324.s6, "p_2976->g_2324.s6", print_hash_value);
    transparent_crc(p_2976->g_2324.s7, "p_2976->g_2324.s7", print_hash_value);
    transparent_crc(p_2976->g_2337.s0, "p_2976->g_2337.s0", print_hash_value);
    transparent_crc(p_2976->g_2337.s1, "p_2976->g_2337.s1", print_hash_value);
    transparent_crc(p_2976->g_2337.s2, "p_2976->g_2337.s2", print_hash_value);
    transparent_crc(p_2976->g_2337.s3, "p_2976->g_2337.s3", print_hash_value);
    transparent_crc(p_2976->g_2337.s4, "p_2976->g_2337.s4", print_hash_value);
    transparent_crc(p_2976->g_2337.s5, "p_2976->g_2337.s5", print_hash_value);
    transparent_crc(p_2976->g_2337.s6, "p_2976->g_2337.s6", print_hash_value);
    transparent_crc(p_2976->g_2337.s7, "p_2976->g_2337.s7", print_hash_value);
    transparent_crc(p_2976->g_2364.s0, "p_2976->g_2364.s0", print_hash_value);
    transparent_crc(p_2976->g_2364.s1, "p_2976->g_2364.s1", print_hash_value);
    transparent_crc(p_2976->g_2364.s2, "p_2976->g_2364.s2", print_hash_value);
    transparent_crc(p_2976->g_2364.s3, "p_2976->g_2364.s3", print_hash_value);
    transparent_crc(p_2976->g_2364.s4, "p_2976->g_2364.s4", print_hash_value);
    transparent_crc(p_2976->g_2364.s5, "p_2976->g_2364.s5", print_hash_value);
    transparent_crc(p_2976->g_2364.s6, "p_2976->g_2364.s6", print_hash_value);
    transparent_crc(p_2976->g_2364.s7, "p_2976->g_2364.s7", print_hash_value);
    transparent_crc(p_2976->g_2364.s8, "p_2976->g_2364.s8", print_hash_value);
    transparent_crc(p_2976->g_2364.s9, "p_2976->g_2364.s9", print_hash_value);
    transparent_crc(p_2976->g_2364.sa, "p_2976->g_2364.sa", print_hash_value);
    transparent_crc(p_2976->g_2364.sb, "p_2976->g_2364.sb", print_hash_value);
    transparent_crc(p_2976->g_2364.sc, "p_2976->g_2364.sc", print_hash_value);
    transparent_crc(p_2976->g_2364.sd, "p_2976->g_2364.sd", print_hash_value);
    transparent_crc(p_2976->g_2364.se, "p_2976->g_2364.se", print_hash_value);
    transparent_crc(p_2976->g_2364.sf, "p_2976->g_2364.sf", print_hash_value);
    transparent_crc(p_2976->g_2370.s0, "p_2976->g_2370.s0", print_hash_value);
    transparent_crc(p_2976->g_2370.s1, "p_2976->g_2370.s1", print_hash_value);
    transparent_crc(p_2976->g_2370.s2, "p_2976->g_2370.s2", print_hash_value);
    transparent_crc(p_2976->g_2370.s3, "p_2976->g_2370.s3", print_hash_value);
    transparent_crc(p_2976->g_2370.s4, "p_2976->g_2370.s4", print_hash_value);
    transparent_crc(p_2976->g_2370.s5, "p_2976->g_2370.s5", print_hash_value);
    transparent_crc(p_2976->g_2370.s6, "p_2976->g_2370.s6", print_hash_value);
    transparent_crc(p_2976->g_2370.s7, "p_2976->g_2370.s7", print_hash_value);
    transparent_crc(p_2976->g_2370.s8, "p_2976->g_2370.s8", print_hash_value);
    transparent_crc(p_2976->g_2370.s9, "p_2976->g_2370.s9", print_hash_value);
    transparent_crc(p_2976->g_2370.sa, "p_2976->g_2370.sa", print_hash_value);
    transparent_crc(p_2976->g_2370.sb, "p_2976->g_2370.sb", print_hash_value);
    transparent_crc(p_2976->g_2370.sc, "p_2976->g_2370.sc", print_hash_value);
    transparent_crc(p_2976->g_2370.sd, "p_2976->g_2370.sd", print_hash_value);
    transparent_crc(p_2976->g_2370.se, "p_2976->g_2370.se", print_hash_value);
    transparent_crc(p_2976->g_2370.sf, "p_2976->g_2370.sf", print_hash_value);
    transparent_crc(p_2976->g_2377.x, "p_2976->g_2377.x", print_hash_value);
    transparent_crc(p_2976->g_2377.y, "p_2976->g_2377.y", print_hash_value);
    transparent_crc(p_2976->g_2379.x, "p_2976->g_2379.x", print_hash_value);
    transparent_crc(p_2976->g_2379.y, "p_2976->g_2379.y", print_hash_value);
    transparent_crc(p_2976->g_2383.s0, "p_2976->g_2383.s0", print_hash_value);
    transparent_crc(p_2976->g_2383.s1, "p_2976->g_2383.s1", print_hash_value);
    transparent_crc(p_2976->g_2383.s2, "p_2976->g_2383.s2", print_hash_value);
    transparent_crc(p_2976->g_2383.s3, "p_2976->g_2383.s3", print_hash_value);
    transparent_crc(p_2976->g_2383.s4, "p_2976->g_2383.s4", print_hash_value);
    transparent_crc(p_2976->g_2383.s5, "p_2976->g_2383.s5", print_hash_value);
    transparent_crc(p_2976->g_2383.s6, "p_2976->g_2383.s6", print_hash_value);
    transparent_crc(p_2976->g_2383.s7, "p_2976->g_2383.s7", print_hash_value);
    transparent_crc(p_2976->g_2393.x, "p_2976->g_2393.x", print_hash_value);
    transparent_crc(p_2976->g_2393.y, "p_2976->g_2393.y", print_hash_value);
    transparent_crc(p_2976->g_2429.s0, "p_2976->g_2429.s0", print_hash_value);
    transparent_crc(p_2976->g_2429.s1, "p_2976->g_2429.s1", print_hash_value);
    transparent_crc(p_2976->g_2429.s2, "p_2976->g_2429.s2", print_hash_value);
    transparent_crc(p_2976->g_2429.s3, "p_2976->g_2429.s3", print_hash_value);
    transparent_crc(p_2976->g_2429.s4, "p_2976->g_2429.s4", print_hash_value);
    transparent_crc(p_2976->g_2429.s5, "p_2976->g_2429.s5", print_hash_value);
    transparent_crc(p_2976->g_2429.s6, "p_2976->g_2429.s6", print_hash_value);
    transparent_crc(p_2976->g_2429.s7, "p_2976->g_2429.s7", print_hash_value);
    transparent_crc(p_2976->g_2431.x, "p_2976->g_2431.x", print_hash_value);
    transparent_crc(p_2976->g_2431.y, "p_2976->g_2431.y", print_hash_value);
    transparent_crc(p_2976->g_2437.x, "p_2976->g_2437.x", print_hash_value);
    transparent_crc(p_2976->g_2437.y, "p_2976->g_2437.y", print_hash_value);
    transparent_crc(p_2976->g_2437.z, "p_2976->g_2437.z", print_hash_value);
    transparent_crc(p_2976->g_2437.w, "p_2976->g_2437.w", print_hash_value);
    transparent_crc(p_2976->g_2443.x, "p_2976->g_2443.x", print_hash_value);
    transparent_crc(p_2976->g_2443.y, "p_2976->g_2443.y", print_hash_value);
    transparent_crc(p_2976->g_2490.x, "p_2976->g_2490.x", print_hash_value);
    transparent_crc(p_2976->g_2490.y, "p_2976->g_2490.y", print_hash_value);
    transparent_crc(p_2976->g_2490.z, "p_2976->g_2490.z", print_hash_value);
    transparent_crc(p_2976->g_2490.w, "p_2976->g_2490.w", print_hash_value);
    transparent_crc(p_2976->g_2491.s0, "p_2976->g_2491.s0", print_hash_value);
    transparent_crc(p_2976->g_2491.s1, "p_2976->g_2491.s1", print_hash_value);
    transparent_crc(p_2976->g_2491.s2, "p_2976->g_2491.s2", print_hash_value);
    transparent_crc(p_2976->g_2491.s3, "p_2976->g_2491.s3", print_hash_value);
    transparent_crc(p_2976->g_2491.s4, "p_2976->g_2491.s4", print_hash_value);
    transparent_crc(p_2976->g_2491.s5, "p_2976->g_2491.s5", print_hash_value);
    transparent_crc(p_2976->g_2491.s6, "p_2976->g_2491.s6", print_hash_value);
    transparent_crc(p_2976->g_2491.s7, "p_2976->g_2491.s7", print_hash_value);
    transparent_crc(p_2976->g_2494.s0, "p_2976->g_2494.s0", print_hash_value);
    transparent_crc(p_2976->g_2494.s1, "p_2976->g_2494.s1", print_hash_value);
    transparent_crc(p_2976->g_2494.s2, "p_2976->g_2494.s2", print_hash_value);
    transparent_crc(p_2976->g_2494.s3, "p_2976->g_2494.s3", print_hash_value);
    transparent_crc(p_2976->g_2494.s4, "p_2976->g_2494.s4", print_hash_value);
    transparent_crc(p_2976->g_2494.s5, "p_2976->g_2494.s5", print_hash_value);
    transparent_crc(p_2976->g_2494.s6, "p_2976->g_2494.s6", print_hash_value);
    transparent_crc(p_2976->g_2494.s7, "p_2976->g_2494.s7", print_hash_value);
    transparent_crc(p_2976->g_2494.s8, "p_2976->g_2494.s8", print_hash_value);
    transparent_crc(p_2976->g_2494.s9, "p_2976->g_2494.s9", print_hash_value);
    transparent_crc(p_2976->g_2494.sa, "p_2976->g_2494.sa", print_hash_value);
    transparent_crc(p_2976->g_2494.sb, "p_2976->g_2494.sb", print_hash_value);
    transparent_crc(p_2976->g_2494.sc, "p_2976->g_2494.sc", print_hash_value);
    transparent_crc(p_2976->g_2494.sd, "p_2976->g_2494.sd", print_hash_value);
    transparent_crc(p_2976->g_2494.se, "p_2976->g_2494.se", print_hash_value);
    transparent_crc(p_2976->g_2494.sf, "p_2976->g_2494.sf", print_hash_value);
    transparent_crc(p_2976->g_2497, "p_2976->g_2497", print_hash_value);
    transparent_crc(p_2976->g_2538.x, "p_2976->g_2538.x", print_hash_value);
    transparent_crc(p_2976->g_2538.y, "p_2976->g_2538.y", print_hash_value);
    transparent_crc(p_2976->g_2563.s0, "p_2976->g_2563.s0", print_hash_value);
    transparent_crc(p_2976->g_2563.s1, "p_2976->g_2563.s1", print_hash_value);
    transparent_crc(p_2976->g_2563.s2, "p_2976->g_2563.s2", print_hash_value);
    transparent_crc(p_2976->g_2563.s3, "p_2976->g_2563.s3", print_hash_value);
    transparent_crc(p_2976->g_2563.s4, "p_2976->g_2563.s4", print_hash_value);
    transparent_crc(p_2976->g_2563.s5, "p_2976->g_2563.s5", print_hash_value);
    transparent_crc(p_2976->g_2563.s6, "p_2976->g_2563.s6", print_hash_value);
    transparent_crc(p_2976->g_2563.s7, "p_2976->g_2563.s7", print_hash_value);
    transparent_crc(p_2976->g_2564.s0, "p_2976->g_2564.s0", print_hash_value);
    transparent_crc(p_2976->g_2564.s1, "p_2976->g_2564.s1", print_hash_value);
    transparent_crc(p_2976->g_2564.s2, "p_2976->g_2564.s2", print_hash_value);
    transparent_crc(p_2976->g_2564.s3, "p_2976->g_2564.s3", print_hash_value);
    transparent_crc(p_2976->g_2564.s4, "p_2976->g_2564.s4", print_hash_value);
    transparent_crc(p_2976->g_2564.s5, "p_2976->g_2564.s5", print_hash_value);
    transparent_crc(p_2976->g_2564.s6, "p_2976->g_2564.s6", print_hash_value);
    transparent_crc(p_2976->g_2564.s7, "p_2976->g_2564.s7", print_hash_value);
    transparent_crc(p_2976->g_2564.s8, "p_2976->g_2564.s8", print_hash_value);
    transparent_crc(p_2976->g_2564.s9, "p_2976->g_2564.s9", print_hash_value);
    transparent_crc(p_2976->g_2564.sa, "p_2976->g_2564.sa", print_hash_value);
    transparent_crc(p_2976->g_2564.sb, "p_2976->g_2564.sb", print_hash_value);
    transparent_crc(p_2976->g_2564.sc, "p_2976->g_2564.sc", print_hash_value);
    transparent_crc(p_2976->g_2564.sd, "p_2976->g_2564.sd", print_hash_value);
    transparent_crc(p_2976->g_2564.se, "p_2976->g_2564.se", print_hash_value);
    transparent_crc(p_2976->g_2564.sf, "p_2976->g_2564.sf", print_hash_value);
    transparent_crc(p_2976->g_2585.s0, "p_2976->g_2585.s0", print_hash_value);
    transparent_crc(p_2976->g_2585.s1, "p_2976->g_2585.s1", print_hash_value);
    transparent_crc(p_2976->g_2585.s2, "p_2976->g_2585.s2", print_hash_value);
    transparent_crc(p_2976->g_2585.s3, "p_2976->g_2585.s3", print_hash_value);
    transparent_crc(p_2976->g_2585.s4, "p_2976->g_2585.s4", print_hash_value);
    transparent_crc(p_2976->g_2585.s5, "p_2976->g_2585.s5", print_hash_value);
    transparent_crc(p_2976->g_2585.s6, "p_2976->g_2585.s6", print_hash_value);
    transparent_crc(p_2976->g_2585.s7, "p_2976->g_2585.s7", print_hash_value);
    transparent_crc(p_2976->g_2599.x, "p_2976->g_2599.x", print_hash_value);
    transparent_crc(p_2976->g_2599.y, "p_2976->g_2599.y", print_hash_value);
    transparent_crc(p_2976->g_2599.z, "p_2976->g_2599.z", print_hash_value);
    transparent_crc(p_2976->g_2599.w, "p_2976->g_2599.w", print_hash_value);
    transparent_crc(p_2976->g_2638.x, "p_2976->g_2638.x", print_hash_value);
    transparent_crc(p_2976->g_2638.y, "p_2976->g_2638.y", print_hash_value);
    transparent_crc(p_2976->g_2646.s0, "p_2976->g_2646.s0", print_hash_value);
    transparent_crc(p_2976->g_2646.s1, "p_2976->g_2646.s1", print_hash_value);
    transparent_crc(p_2976->g_2646.s2, "p_2976->g_2646.s2", print_hash_value);
    transparent_crc(p_2976->g_2646.s3, "p_2976->g_2646.s3", print_hash_value);
    transparent_crc(p_2976->g_2646.s4, "p_2976->g_2646.s4", print_hash_value);
    transparent_crc(p_2976->g_2646.s5, "p_2976->g_2646.s5", print_hash_value);
    transparent_crc(p_2976->g_2646.s6, "p_2976->g_2646.s6", print_hash_value);
    transparent_crc(p_2976->g_2646.s7, "p_2976->g_2646.s7", print_hash_value);
    transparent_crc(p_2976->g_2660, "p_2976->g_2660", print_hash_value);
    transparent_crc(p_2976->g_2680.s0, "p_2976->g_2680.s0", print_hash_value);
    transparent_crc(p_2976->g_2680.s1, "p_2976->g_2680.s1", print_hash_value);
    transparent_crc(p_2976->g_2680.s2, "p_2976->g_2680.s2", print_hash_value);
    transparent_crc(p_2976->g_2680.s3, "p_2976->g_2680.s3", print_hash_value);
    transparent_crc(p_2976->g_2680.s4, "p_2976->g_2680.s4", print_hash_value);
    transparent_crc(p_2976->g_2680.s5, "p_2976->g_2680.s5", print_hash_value);
    transparent_crc(p_2976->g_2680.s6, "p_2976->g_2680.s6", print_hash_value);
    transparent_crc(p_2976->g_2680.s7, "p_2976->g_2680.s7", print_hash_value);
    transparent_crc(p_2976->g_2680.s8, "p_2976->g_2680.s8", print_hash_value);
    transparent_crc(p_2976->g_2680.s9, "p_2976->g_2680.s9", print_hash_value);
    transparent_crc(p_2976->g_2680.sa, "p_2976->g_2680.sa", print_hash_value);
    transparent_crc(p_2976->g_2680.sb, "p_2976->g_2680.sb", print_hash_value);
    transparent_crc(p_2976->g_2680.sc, "p_2976->g_2680.sc", print_hash_value);
    transparent_crc(p_2976->g_2680.sd, "p_2976->g_2680.sd", print_hash_value);
    transparent_crc(p_2976->g_2680.se, "p_2976->g_2680.se", print_hash_value);
    transparent_crc(p_2976->g_2680.sf, "p_2976->g_2680.sf", print_hash_value);
    transparent_crc(p_2976->g_2681.x, "p_2976->g_2681.x", print_hash_value);
    transparent_crc(p_2976->g_2681.y, "p_2976->g_2681.y", print_hash_value);
    transparent_crc(p_2976->g_2681.z, "p_2976->g_2681.z", print_hash_value);
    transparent_crc(p_2976->g_2681.w, "p_2976->g_2681.w", print_hash_value);
    transparent_crc(p_2976->g_2683.x, "p_2976->g_2683.x", print_hash_value);
    transparent_crc(p_2976->g_2683.y, "p_2976->g_2683.y", print_hash_value);
    transparent_crc(p_2976->g_2683.z, "p_2976->g_2683.z", print_hash_value);
    transparent_crc(p_2976->g_2683.w, "p_2976->g_2683.w", print_hash_value);
    transparent_crc(p_2976->g_2686.s0, "p_2976->g_2686.s0", print_hash_value);
    transparent_crc(p_2976->g_2686.s1, "p_2976->g_2686.s1", print_hash_value);
    transparent_crc(p_2976->g_2686.s2, "p_2976->g_2686.s2", print_hash_value);
    transparent_crc(p_2976->g_2686.s3, "p_2976->g_2686.s3", print_hash_value);
    transparent_crc(p_2976->g_2686.s4, "p_2976->g_2686.s4", print_hash_value);
    transparent_crc(p_2976->g_2686.s5, "p_2976->g_2686.s5", print_hash_value);
    transparent_crc(p_2976->g_2686.s6, "p_2976->g_2686.s6", print_hash_value);
    transparent_crc(p_2976->g_2686.s7, "p_2976->g_2686.s7", print_hash_value);
    transparent_crc(p_2976->g_2686.s8, "p_2976->g_2686.s8", print_hash_value);
    transparent_crc(p_2976->g_2686.s9, "p_2976->g_2686.s9", print_hash_value);
    transparent_crc(p_2976->g_2686.sa, "p_2976->g_2686.sa", print_hash_value);
    transparent_crc(p_2976->g_2686.sb, "p_2976->g_2686.sb", print_hash_value);
    transparent_crc(p_2976->g_2686.sc, "p_2976->g_2686.sc", print_hash_value);
    transparent_crc(p_2976->g_2686.sd, "p_2976->g_2686.sd", print_hash_value);
    transparent_crc(p_2976->g_2686.se, "p_2976->g_2686.se", print_hash_value);
    transparent_crc(p_2976->g_2686.sf, "p_2976->g_2686.sf", print_hash_value);
    transparent_crc(p_2976->g_2688.s0, "p_2976->g_2688.s0", print_hash_value);
    transparent_crc(p_2976->g_2688.s1, "p_2976->g_2688.s1", print_hash_value);
    transparent_crc(p_2976->g_2688.s2, "p_2976->g_2688.s2", print_hash_value);
    transparent_crc(p_2976->g_2688.s3, "p_2976->g_2688.s3", print_hash_value);
    transparent_crc(p_2976->g_2688.s4, "p_2976->g_2688.s4", print_hash_value);
    transparent_crc(p_2976->g_2688.s5, "p_2976->g_2688.s5", print_hash_value);
    transparent_crc(p_2976->g_2688.s6, "p_2976->g_2688.s6", print_hash_value);
    transparent_crc(p_2976->g_2688.s7, "p_2976->g_2688.s7", print_hash_value);
    transparent_crc(p_2976->g_2712.s0, "p_2976->g_2712.s0", print_hash_value);
    transparent_crc(p_2976->g_2712.s1, "p_2976->g_2712.s1", print_hash_value);
    transparent_crc(p_2976->g_2712.s2, "p_2976->g_2712.s2", print_hash_value);
    transparent_crc(p_2976->g_2712.s3, "p_2976->g_2712.s3", print_hash_value);
    transparent_crc(p_2976->g_2712.s4, "p_2976->g_2712.s4", print_hash_value);
    transparent_crc(p_2976->g_2712.s5, "p_2976->g_2712.s5", print_hash_value);
    transparent_crc(p_2976->g_2712.s6, "p_2976->g_2712.s6", print_hash_value);
    transparent_crc(p_2976->g_2712.s7, "p_2976->g_2712.s7", print_hash_value);
    transparent_crc(p_2976->g_2774.s0, "p_2976->g_2774.s0", print_hash_value);
    transparent_crc(p_2976->g_2774.s1, "p_2976->g_2774.s1", print_hash_value);
    transparent_crc(p_2976->g_2774.s2, "p_2976->g_2774.s2", print_hash_value);
    transparent_crc(p_2976->g_2774.s3, "p_2976->g_2774.s3", print_hash_value);
    transparent_crc(p_2976->g_2774.s4, "p_2976->g_2774.s4", print_hash_value);
    transparent_crc(p_2976->g_2774.s5, "p_2976->g_2774.s5", print_hash_value);
    transparent_crc(p_2976->g_2774.s6, "p_2976->g_2774.s6", print_hash_value);
    transparent_crc(p_2976->g_2774.s7, "p_2976->g_2774.s7", print_hash_value);
    transparent_crc(p_2976->g_2775.s0, "p_2976->g_2775.s0", print_hash_value);
    transparent_crc(p_2976->g_2775.s1, "p_2976->g_2775.s1", print_hash_value);
    transparent_crc(p_2976->g_2775.s2, "p_2976->g_2775.s2", print_hash_value);
    transparent_crc(p_2976->g_2775.s3, "p_2976->g_2775.s3", print_hash_value);
    transparent_crc(p_2976->g_2775.s4, "p_2976->g_2775.s4", print_hash_value);
    transparent_crc(p_2976->g_2775.s5, "p_2976->g_2775.s5", print_hash_value);
    transparent_crc(p_2976->g_2775.s6, "p_2976->g_2775.s6", print_hash_value);
    transparent_crc(p_2976->g_2775.s7, "p_2976->g_2775.s7", print_hash_value);
    transparent_crc(p_2976->g_2777.s0, "p_2976->g_2777.s0", print_hash_value);
    transparent_crc(p_2976->g_2777.s1, "p_2976->g_2777.s1", print_hash_value);
    transparent_crc(p_2976->g_2777.s2, "p_2976->g_2777.s2", print_hash_value);
    transparent_crc(p_2976->g_2777.s3, "p_2976->g_2777.s3", print_hash_value);
    transparent_crc(p_2976->g_2777.s4, "p_2976->g_2777.s4", print_hash_value);
    transparent_crc(p_2976->g_2777.s5, "p_2976->g_2777.s5", print_hash_value);
    transparent_crc(p_2976->g_2777.s6, "p_2976->g_2777.s6", print_hash_value);
    transparent_crc(p_2976->g_2777.s7, "p_2976->g_2777.s7", print_hash_value);
    transparent_crc(p_2976->g_2778.x, "p_2976->g_2778.x", print_hash_value);
    transparent_crc(p_2976->g_2778.y, "p_2976->g_2778.y", print_hash_value);
    transparent_crc(p_2976->g_2778.z, "p_2976->g_2778.z", print_hash_value);
    transparent_crc(p_2976->g_2778.w, "p_2976->g_2778.w", print_hash_value);
    transparent_crc(p_2976->g_2794.x, "p_2976->g_2794.x", print_hash_value);
    transparent_crc(p_2976->g_2794.y, "p_2976->g_2794.y", print_hash_value);
    transparent_crc(p_2976->g_2799.s0, "p_2976->g_2799.s0", print_hash_value);
    transparent_crc(p_2976->g_2799.s1, "p_2976->g_2799.s1", print_hash_value);
    transparent_crc(p_2976->g_2799.s2, "p_2976->g_2799.s2", print_hash_value);
    transparent_crc(p_2976->g_2799.s3, "p_2976->g_2799.s3", print_hash_value);
    transparent_crc(p_2976->g_2799.s4, "p_2976->g_2799.s4", print_hash_value);
    transparent_crc(p_2976->g_2799.s5, "p_2976->g_2799.s5", print_hash_value);
    transparent_crc(p_2976->g_2799.s6, "p_2976->g_2799.s6", print_hash_value);
    transparent_crc(p_2976->g_2799.s7, "p_2976->g_2799.s7", print_hash_value);
    transparent_crc(p_2976->g_2804.x, "p_2976->g_2804.x", print_hash_value);
    transparent_crc(p_2976->g_2804.y, "p_2976->g_2804.y", print_hash_value);
    transparent_crc(p_2976->g_2804.z, "p_2976->g_2804.z", print_hash_value);
    transparent_crc(p_2976->g_2804.w, "p_2976->g_2804.w", print_hash_value);
    transparent_crc(p_2976->g_2808.s0, "p_2976->g_2808.s0", print_hash_value);
    transparent_crc(p_2976->g_2808.s1, "p_2976->g_2808.s1", print_hash_value);
    transparent_crc(p_2976->g_2808.s2, "p_2976->g_2808.s2", print_hash_value);
    transparent_crc(p_2976->g_2808.s3, "p_2976->g_2808.s3", print_hash_value);
    transparent_crc(p_2976->g_2808.s4, "p_2976->g_2808.s4", print_hash_value);
    transparent_crc(p_2976->g_2808.s5, "p_2976->g_2808.s5", print_hash_value);
    transparent_crc(p_2976->g_2808.s6, "p_2976->g_2808.s6", print_hash_value);
    transparent_crc(p_2976->g_2808.s7, "p_2976->g_2808.s7", print_hash_value);
    transparent_crc(p_2976->g_2808.s8, "p_2976->g_2808.s8", print_hash_value);
    transparent_crc(p_2976->g_2808.s9, "p_2976->g_2808.s9", print_hash_value);
    transparent_crc(p_2976->g_2808.sa, "p_2976->g_2808.sa", print_hash_value);
    transparent_crc(p_2976->g_2808.sb, "p_2976->g_2808.sb", print_hash_value);
    transparent_crc(p_2976->g_2808.sc, "p_2976->g_2808.sc", print_hash_value);
    transparent_crc(p_2976->g_2808.sd, "p_2976->g_2808.sd", print_hash_value);
    transparent_crc(p_2976->g_2808.se, "p_2976->g_2808.se", print_hash_value);
    transparent_crc(p_2976->g_2808.sf, "p_2976->g_2808.sf", print_hash_value);
    transparent_crc(p_2976->g_2826, "p_2976->g_2826", print_hash_value);
    transparent_crc(p_2976->g_2846, "p_2976->g_2846", print_hash_value);
    transparent_crc(p_2976->g_2858.x, "p_2976->g_2858.x", print_hash_value);
    transparent_crc(p_2976->g_2858.y, "p_2976->g_2858.y", print_hash_value);
    transparent_crc(p_2976->g_2858.z, "p_2976->g_2858.z", print_hash_value);
    transparent_crc(p_2976->g_2858.w, "p_2976->g_2858.w", print_hash_value);
    transparent_crc(p_2976->g_2859.s0, "p_2976->g_2859.s0", print_hash_value);
    transparent_crc(p_2976->g_2859.s1, "p_2976->g_2859.s1", print_hash_value);
    transparent_crc(p_2976->g_2859.s2, "p_2976->g_2859.s2", print_hash_value);
    transparent_crc(p_2976->g_2859.s3, "p_2976->g_2859.s3", print_hash_value);
    transparent_crc(p_2976->g_2859.s4, "p_2976->g_2859.s4", print_hash_value);
    transparent_crc(p_2976->g_2859.s5, "p_2976->g_2859.s5", print_hash_value);
    transparent_crc(p_2976->g_2859.s6, "p_2976->g_2859.s6", print_hash_value);
    transparent_crc(p_2976->g_2859.s7, "p_2976->g_2859.s7", print_hash_value);
    transparent_crc(p_2976->g_2860.s0, "p_2976->g_2860.s0", print_hash_value);
    transparent_crc(p_2976->g_2860.s1, "p_2976->g_2860.s1", print_hash_value);
    transparent_crc(p_2976->g_2860.s2, "p_2976->g_2860.s2", print_hash_value);
    transparent_crc(p_2976->g_2860.s3, "p_2976->g_2860.s3", print_hash_value);
    transparent_crc(p_2976->g_2860.s4, "p_2976->g_2860.s4", print_hash_value);
    transparent_crc(p_2976->g_2860.s5, "p_2976->g_2860.s5", print_hash_value);
    transparent_crc(p_2976->g_2860.s6, "p_2976->g_2860.s6", print_hash_value);
    transparent_crc(p_2976->g_2860.s7, "p_2976->g_2860.s7", print_hash_value);
    transparent_crc(p_2976->g_2862.x, "p_2976->g_2862.x", print_hash_value);
    transparent_crc(p_2976->g_2862.y, "p_2976->g_2862.y", print_hash_value);
    transparent_crc(p_2976->g_2866.x, "p_2976->g_2866.x", print_hash_value);
    transparent_crc(p_2976->g_2866.y, "p_2976->g_2866.y", print_hash_value);
    transparent_crc(p_2976->g_2866.z, "p_2976->g_2866.z", print_hash_value);
    transparent_crc(p_2976->g_2866.w, "p_2976->g_2866.w", print_hash_value);
    transparent_crc(p_2976->g_2869.x, "p_2976->g_2869.x", print_hash_value);
    transparent_crc(p_2976->g_2869.y, "p_2976->g_2869.y", print_hash_value);
    transparent_crc(p_2976->g_2883.s0, "p_2976->g_2883.s0", print_hash_value);
    transparent_crc(p_2976->g_2883.s1, "p_2976->g_2883.s1", print_hash_value);
    transparent_crc(p_2976->g_2883.s2, "p_2976->g_2883.s2", print_hash_value);
    transparent_crc(p_2976->g_2883.s3, "p_2976->g_2883.s3", print_hash_value);
    transparent_crc(p_2976->g_2883.s4, "p_2976->g_2883.s4", print_hash_value);
    transparent_crc(p_2976->g_2883.s5, "p_2976->g_2883.s5", print_hash_value);
    transparent_crc(p_2976->g_2883.s6, "p_2976->g_2883.s6", print_hash_value);
    transparent_crc(p_2976->g_2883.s7, "p_2976->g_2883.s7", print_hash_value);
    transparent_crc(p_2976->g_2883.s8, "p_2976->g_2883.s8", print_hash_value);
    transparent_crc(p_2976->g_2883.s9, "p_2976->g_2883.s9", print_hash_value);
    transparent_crc(p_2976->g_2883.sa, "p_2976->g_2883.sa", print_hash_value);
    transparent_crc(p_2976->g_2883.sb, "p_2976->g_2883.sb", print_hash_value);
    transparent_crc(p_2976->g_2883.sc, "p_2976->g_2883.sc", print_hash_value);
    transparent_crc(p_2976->g_2883.sd, "p_2976->g_2883.sd", print_hash_value);
    transparent_crc(p_2976->g_2883.se, "p_2976->g_2883.se", print_hash_value);
    transparent_crc(p_2976->g_2883.sf, "p_2976->g_2883.sf", print_hash_value);
    transparent_crc(p_2976->g_2884.x, "p_2976->g_2884.x", print_hash_value);
    transparent_crc(p_2976->g_2884.y, "p_2976->g_2884.y", print_hash_value);
    transparent_crc(p_2976->g_2889.s0, "p_2976->g_2889.s0", print_hash_value);
    transparent_crc(p_2976->g_2889.s1, "p_2976->g_2889.s1", print_hash_value);
    transparent_crc(p_2976->g_2889.s2, "p_2976->g_2889.s2", print_hash_value);
    transparent_crc(p_2976->g_2889.s3, "p_2976->g_2889.s3", print_hash_value);
    transparent_crc(p_2976->g_2889.s4, "p_2976->g_2889.s4", print_hash_value);
    transparent_crc(p_2976->g_2889.s5, "p_2976->g_2889.s5", print_hash_value);
    transparent_crc(p_2976->g_2889.s6, "p_2976->g_2889.s6", print_hash_value);
    transparent_crc(p_2976->g_2889.s7, "p_2976->g_2889.s7", print_hash_value);
    transparent_crc(p_2976->g_2890.x, "p_2976->g_2890.x", print_hash_value);
    transparent_crc(p_2976->g_2890.y, "p_2976->g_2890.y", print_hash_value);
    transparent_crc(p_2976->g_2890.z, "p_2976->g_2890.z", print_hash_value);
    transparent_crc(p_2976->g_2890.w, "p_2976->g_2890.w", print_hash_value);
    transparent_crc(p_2976->g_2894.x, "p_2976->g_2894.x", print_hash_value);
    transparent_crc(p_2976->g_2894.y, "p_2976->g_2894.y", print_hash_value);
    transparent_crc(p_2976->g_2894.z, "p_2976->g_2894.z", print_hash_value);
    transparent_crc(p_2976->g_2894.w, "p_2976->g_2894.w", print_hash_value);
    transparent_crc(p_2976->g_2905.x, "p_2976->g_2905.x", print_hash_value);
    transparent_crc(p_2976->g_2905.y, "p_2976->g_2905.y", print_hash_value);
    transparent_crc(p_2976->g_2905.z, "p_2976->g_2905.z", print_hash_value);
    transparent_crc(p_2976->g_2905.w, "p_2976->g_2905.w", print_hash_value);
    transparent_crc(p_2976->g_2912.x, "p_2976->g_2912.x", print_hash_value);
    transparent_crc(p_2976->g_2912.y, "p_2976->g_2912.y", print_hash_value);
    transparent_crc(p_2976->g_2912.z, "p_2976->g_2912.z", print_hash_value);
    transparent_crc(p_2976->g_2912.w, "p_2976->g_2912.w", print_hash_value);
    transparent_crc(p_2976->g_2940.s0, "p_2976->g_2940.s0", print_hash_value);
    transparent_crc(p_2976->g_2940.s1, "p_2976->g_2940.s1", print_hash_value);
    transparent_crc(p_2976->g_2940.s2, "p_2976->g_2940.s2", print_hash_value);
    transparent_crc(p_2976->g_2940.s3, "p_2976->g_2940.s3", print_hash_value);
    transparent_crc(p_2976->g_2940.s4, "p_2976->g_2940.s4", print_hash_value);
    transparent_crc(p_2976->g_2940.s5, "p_2976->g_2940.s5", print_hash_value);
    transparent_crc(p_2976->g_2940.s6, "p_2976->g_2940.s6", print_hash_value);
    transparent_crc(p_2976->g_2940.s7, "p_2976->g_2940.s7", print_hash_value);
    transparent_crc(p_2976->g_2940.s8, "p_2976->g_2940.s8", print_hash_value);
    transparent_crc(p_2976->g_2940.s9, "p_2976->g_2940.s9", print_hash_value);
    transparent_crc(p_2976->g_2940.sa, "p_2976->g_2940.sa", print_hash_value);
    transparent_crc(p_2976->g_2940.sb, "p_2976->g_2940.sb", print_hash_value);
    transparent_crc(p_2976->g_2940.sc, "p_2976->g_2940.sc", print_hash_value);
    transparent_crc(p_2976->g_2940.sd, "p_2976->g_2940.sd", print_hash_value);
    transparent_crc(p_2976->g_2940.se, "p_2976->g_2940.se", print_hash_value);
    transparent_crc(p_2976->g_2940.sf, "p_2976->g_2940.sf", print_hash_value);
    transparent_crc(p_2976->g_2941.s0, "p_2976->g_2941.s0", print_hash_value);
    transparent_crc(p_2976->g_2941.s1, "p_2976->g_2941.s1", print_hash_value);
    transparent_crc(p_2976->g_2941.s2, "p_2976->g_2941.s2", print_hash_value);
    transparent_crc(p_2976->g_2941.s3, "p_2976->g_2941.s3", print_hash_value);
    transparent_crc(p_2976->g_2941.s4, "p_2976->g_2941.s4", print_hash_value);
    transparent_crc(p_2976->g_2941.s5, "p_2976->g_2941.s5", print_hash_value);
    transparent_crc(p_2976->g_2941.s6, "p_2976->g_2941.s6", print_hash_value);
    transparent_crc(p_2976->g_2941.s7, "p_2976->g_2941.s7", print_hash_value);
    transparent_crc(p_2976->g_2943.x, "p_2976->g_2943.x", print_hash_value);
    transparent_crc(p_2976->g_2943.y, "p_2976->g_2943.y", print_hash_value);
    transparent_crc(p_2976->g_2944.x, "p_2976->g_2944.x", print_hash_value);
    transparent_crc(p_2976->g_2944.y, "p_2976->g_2944.y", print_hash_value);
    transparent_crc(p_2976->g_2944.z, "p_2976->g_2944.z", print_hash_value);
    transparent_crc(p_2976->g_2944.w, "p_2976->g_2944.w", print_hash_value);
    transparent_crc(p_2976->g_2945.s0, "p_2976->g_2945.s0", print_hash_value);
    transparent_crc(p_2976->g_2945.s1, "p_2976->g_2945.s1", print_hash_value);
    transparent_crc(p_2976->g_2945.s2, "p_2976->g_2945.s2", print_hash_value);
    transparent_crc(p_2976->g_2945.s3, "p_2976->g_2945.s3", print_hash_value);
    transparent_crc(p_2976->g_2945.s4, "p_2976->g_2945.s4", print_hash_value);
    transparent_crc(p_2976->g_2945.s5, "p_2976->g_2945.s5", print_hash_value);
    transparent_crc(p_2976->g_2945.s6, "p_2976->g_2945.s6", print_hash_value);
    transparent_crc(p_2976->g_2945.s7, "p_2976->g_2945.s7", print_hash_value);
    transparent_crc(p_2976->g_2946.x, "p_2976->g_2946.x", print_hash_value);
    transparent_crc(p_2976->g_2946.y, "p_2976->g_2946.y", print_hash_value);
    transparent_crc(p_2976->g_2946.z, "p_2976->g_2946.z", print_hash_value);
    transparent_crc(p_2976->g_2946.w, "p_2976->g_2946.w", print_hash_value);
    transparent_crc(p_2976->g_2959.x, "p_2976->g_2959.x", print_hash_value);
    transparent_crc(p_2976->g_2959.y, "p_2976->g_2959.y", print_hash_value);
    transparent_crc(p_2976->g_2959.z, "p_2976->g_2959.z", print_hash_value);
    transparent_crc(p_2976->g_2959.w, "p_2976->g_2959.w", print_hash_value);
    transparent_crc(p_2976->g_2975, "p_2976->g_2975", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
