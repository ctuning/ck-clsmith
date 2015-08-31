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
    uint32_t g_21;
    uint8_t g_44[6][2][7];
    uint8_t g_48;
    int32_t g_64;
    uint32_t g_71;
    int16_t g_81;
    int16_t g_83;
    uint16_t g_94;
    uint8_t g_97;
    uint8_t g_107;
    int32_t *g_137[8];
    int32_t **g_136;
    int64_t g_156;
    int8_t g_158[7];
    uint8_t g_187;
    int64_t g_231;
    int32_t ** volatile * volatile g_256;
    int32_t ** volatile * volatile *g_255[10];
    int32_t ***g_258;
    int32_t ****g_257[8];
    int32_t g_260;
    uint64_t g_276[1];
    int64_t g_300;
    int32_t g_311;
    int16_t g_333;
    volatile int32_t g_399;
    volatile int32_t * volatile g_398;
    volatile int32_t * volatile *g_397;
    uint64_t g_422;
    int32_t *g_434;
    uint64_t g_440;
    int32_t *g_458[4][5][5];
    uint32_t g_476;
    int32_t g_477;
    uint32_t g_540;
    int32_t *****g_604;
    int32_t ******g_603;
    uint32_t g_618;
    int32_t g_695;
    int32_t ***g_785[2][9][10];
    uint16_t g_802;
    int8_t g_812[8][9];
    volatile uint32_t g_873;
    volatile uint32_t g_874;
    volatile uint32_t g_875;
    volatile uint32_t g_876;
    volatile uint32_t g_877[8][8];
    volatile uint32_t g_878;
    volatile uint32_t g_879;
    volatile uint32_t g_880[6][3];
    volatile uint32_t g_881;
    volatile uint32_t g_882;
    volatile uint32_t g_883;
    volatile uint32_t g_884[6][2][9];
    volatile uint32_t g_885[6];
    volatile uint32_t g_886;
    volatile uint32_t g_887;
    volatile uint32_t g_888;
    volatile uint32_t g_889;
    volatile uint32_t g_890;
    volatile uint32_t g_891;
    volatile uint32_t g_892;
    volatile uint32_t g_893;
    volatile uint32_t g_894;
    volatile uint32_t g_895;
    volatile uint32_t g_896;
    volatile uint32_t g_897;
    volatile uint32_t g_898[2];
    volatile uint32_t g_899;
    volatile uint32_t g_900;
    volatile uint32_t g_901[9][2];
    volatile uint32_t g_902;
    volatile uint32_t g_903;
    volatile uint32_t g_904[6];
    volatile uint32_t g_905;
    volatile uint32_t g_906[8][10];
    volatile uint32_t g_907[6][2];
    volatile uint32_t g_908;
    volatile uint32_t g_909;
    volatile uint32_t g_910[4];
    volatile uint32_t g_911;
    volatile uint32_t g_912[2][8];
    volatile uint32_t *g_872[6][10][4];
    volatile uint32_t **g_871;
    int64_t *g_1078[10];
    uint8_t g_1132;
    int64_t g_1274;
    volatile int64_t g_1364;
    volatile int64_t *g_1363;
    volatile int64_t **g_1362;
    uint8_t * volatile *g_1368;
    uint8_t * volatile **g_1367;
    int16_t g_1490;
    uint64_t g_1531;
    uint16_t g_1533;
    int32_t g_1551;
    volatile int32_t * volatile g_1619;
    volatile int32_t * volatile * volatile g_1618;
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
uint64_t  func_1(struct S0 * p_1676);
int16_t  func_14(int8_t  p_15, uint16_t  p_16, uint32_t  p_17, uint32_t  p_18, int32_t * p_19, struct S0 * p_1676);
int32_t  func_24(int32_t * p_25, int32_t  p_26, struct S0 * p_1676);
int32_t ** func_29(uint8_t  p_30, int32_t  p_31, uint32_t * p_32, int32_t  p_33, uint32_t * p_34, struct S0 * p_1676);
uint32_t * func_36(int32_t ** p_37, int32_t  p_38, uint32_t * p_39, uint8_t  p_40, struct S0 * p_1676);
uint32_t * func_50(uint32_t  p_51, struct S0 * p_1676);
uint32_t  func_54(int16_t  p_55, int32_t  p_56, struct S0 * p_1676);
int32_t ** func_57(uint32_t * p_58, int32_t * p_59, struct S0 * p_1676);
int32_t * func_61(int64_t  p_62, int32_t * p_63, struct S0 * p_1676);
int32_t  func_65(uint32_t  p_66, struct S0 * p_1676);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1676->g_2 p_1676->g_8 p_1676->g_695
 * writes: p_1676->g_2 p_1676->g_8
 */
uint64_t  func_1(struct S0 * p_1676)
{ /* block id: 4 */
    int32_t *l_1580 = &p_1676->g_6;
    uint16_t l_1653 = 3UL;
    int32_t l_1662[5][5] = {{(-10L),0x5840DE1BL,(-10L),(-10L),0x5840DE1BL},{(-10L),0x5840DE1BL,(-10L),(-10L),0x5840DE1BL},{(-10L),0x5840DE1BL,(-10L),(-10L),0x5840DE1BL},{(-10L),0x5840DE1BL,(-10L),(-10L),0x5840DE1BL},{(-10L),0x5840DE1BL,(-10L),(-10L),0x5840DE1BL}};
    int i, j;
    for (p_1676->g_2 = 0; (p_1676->g_2 <= 29); p_1676->g_2 = safe_add_func_int8_t_s_s(p_1676->g_2, 2))
    { /* block id: 7 */
        int32_t *l_5 = &p_1676->g_6;
        int32_t *l_7[5][10][1] = {{{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2}},{{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2}},{{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2}},{{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2}},{{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2},{&p_1676->g_2}}};
        uint32_t *l_20 = &p_1676->g_21;
        int32_t *l_1621 = &p_1676->g_695;
        int32_t **l_1620 = &l_1621;
        int16_t l_1630 = 1L;
        int64_t *l_1651 = &p_1676->g_300;
        int64_t **l_1650[8][5][4] = {{{(void*)0,(void*)0,&l_1651,(void*)0},{(void*)0,(void*)0,&l_1651,(void*)0},{(void*)0,(void*)0,&l_1651,(void*)0},{(void*)0,(void*)0,&l_1651,(void*)0},{(void*)0,(void*)0,&l_1651,(void*)0}},{{(void*)0,(void*)0,&l_1651,(void*)0},{(void*)0,(void*)0,&l_1651,(void*)0},{(void*)0,(void*)0,&l_1651,(void*)0},{(void*)0,(void*)0,&l_1651,(void*)0},{(void*)0,(void*)0,&l_1651,(void*)0}},{{(void*)0,(void*)0,&l_1651,(void*)0},{(void*)0,(void*)0,&l_1651,(void*)0},{(void*)0,(void*)0,&l_1651,(void*)0},{(void*)0,(void*)0,&l_1651,(void*)0},{(void*)0,(void*)0,&l_1651,(void*)0}},{{(void*)0,(void*)0,&l_1651,(void*)0},{(void*)0,(void*)0,&l_1651,(void*)0},{(void*)0,(void*)0,&l_1651,(void*)0},{(void*)0,(void*)0,&l_1651,(void*)0},{(void*)0,(void*)0,&l_1651,(void*)0}},{{(void*)0,(void*)0,&l_1651,(void*)0},{(void*)0,(void*)0,&l_1651,(void*)0},{(void*)0,(void*)0,&l_1651,(void*)0},{(void*)0,(void*)0,&l_1651,(void*)0},{(void*)0,(void*)0,&l_1651,(void*)0}},{{(void*)0,(void*)0,&l_1651,(void*)0},{(void*)0,(void*)0,&l_1651,(void*)0},{(void*)0,(void*)0,&l_1651,(void*)0},{(void*)0,(void*)0,&l_1651,(void*)0},{(void*)0,(void*)0,&l_1651,(void*)0}},{{(void*)0,(void*)0,&l_1651,(void*)0},{(void*)0,(void*)0,&l_1651,(void*)0},{(void*)0,(void*)0,&l_1651,(void*)0},{(void*)0,(void*)0,&l_1651,(void*)0},{(void*)0,(void*)0,&l_1651,(void*)0}},{{(void*)0,(void*)0,&l_1651,(void*)0},{(void*)0,(void*)0,&l_1651,(void*)0},{(void*)0,(void*)0,&l_1651,(void*)0},{(void*)0,(void*)0,&l_1651,(void*)0},{(void*)0,(void*)0,&l_1651,(void*)0}}};
        int32_t *l_1652[5];
        int8_t l_1668 = 0x09L;
        int8_t l_1671 = 9L;
        uint32_t l_1673 = 1UL;
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_1652[i] = &p_1676->g_6;
        --p_1676->g_8;
    }
    return p_1676->g_695;
}


/* ------------------------------------------ */
/* 
 * reads : p_1676->g_476 p_1676->g_83 p_1676->g_6
 * writes: p_1676->g_476 p_1676->g_83
 */
int16_t  func_14(int8_t  p_15, uint16_t  p_16, uint32_t  p_17, uint32_t  p_18, int32_t * p_19, struct S0 * p_1676)
{ /* block id: 918 */
    uint64_t l_1599 = 0x3347949440321130L;
    for (p_1676->g_476 = (-8); (p_1676->g_476 > 43); p_1676->g_476++)
    { /* block id: 921 */
        int32_t *l_1583 = &p_1676->g_1551;
        int32_t *l_1584 = &p_1676->g_64;
        int32_t *l_1585 = &p_1676->g_64;
        int32_t *l_1586 = &p_1676->g_64;
        int32_t *l_1587 = &p_1676->g_64;
        int32_t *l_1588 = &p_1676->g_1551;
        int32_t *l_1589 = (void*)0;
        int32_t *l_1590 = &p_1676->g_64;
        int32_t *l_1591 = &p_1676->g_64;
        int32_t *l_1592 = &p_1676->g_1551;
        int32_t *l_1593 = (void*)0;
        int32_t *l_1594 = &p_1676->g_1551;
        int32_t *l_1595 = &p_1676->g_311;
        int32_t *l_1596 = &p_1676->g_64;
        int32_t *l_1597 = (void*)0;
        int32_t *l_1598[7][10] = {{&p_1676->g_64,&p_1676->g_311,&p_1676->g_311,&p_1676->g_2,&p_1676->g_311,&p_1676->g_311,&p_1676->g_64,&p_1676->g_6,&p_1676->g_2,&p_1676->g_2},{&p_1676->g_64,&p_1676->g_311,&p_1676->g_311,&p_1676->g_2,&p_1676->g_311,&p_1676->g_311,&p_1676->g_64,&p_1676->g_6,&p_1676->g_2,&p_1676->g_2},{&p_1676->g_64,&p_1676->g_311,&p_1676->g_311,&p_1676->g_2,&p_1676->g_311,&p_1676->g_311,&p_1676->g_64,&p_1676->g_6,&p_1676->g_2,&p_1676->g_2},{&p_1676->g_64,&p_1676->g_311,&p_1676->g_311,&p_1676->g_2,&p_1676->g_311,&p_1676->g_311,&p_1676->g_64,&p_1676->g_6,&p_1676->g_2,&p_1676->g_2},{&p_1676->g_64,&p_1676->g_311,&p_1676->g_311,&p_1676->g_2,&p_1676->g_311,&p_1676->g_311,&p_1676->g_64,&p_1676->g_6,&p_1676->g_2,&p_1676->g_2},{&p_1676->g_64,&p_1676->g_311,&p_1676->g_311,&p_1676->g_2,&p_1676->g_311,&p_1676->g_311,&p_1676->g_64,&p_1676->g_6,&p_1676->g_2,&p_1676->g_2},{&p_1676->g_64,&p_1676->g_311,&p_1676->g_311,&p_1676->g_2,&p_1676->g_311,&p_1676->g_311,&p_1676->g_64,&p_1676->g_6,&p_1676->g_2,&p_1676->g_2}};
        int i, j;
        --l_1599;
    }
    for (p_1676->g_83 = 17; (p_1676->g_83 <= (-4)); p_1676->g_83--)
    { /* block id: 926 */
        if ((*p_19))
            break;
    }
    return l_1599;
}


/* ------------------------------------------ */
/* 
 * reads : p_1676->g_2 p_1676->g_44 p_1676->g_158 p_1676->g_6 p_1676->g_422 p_1676->g_64 p_1676->g_477 p_1676->g_71 p_1676->g_94 p_1676->g_311 p_1676->g_156 p_1676->g_260 p_1676->g_107 p_1676->g_187 p_1676->g_476 p_1676->g_333 p_1676->g_871 p_1676->g_81 p_1676->g_97 p_1676->g_618 p_1676->g_136 p_1676->g_540 p_1676->g_83 p_1676->g_300 p_1676->g_812 p_1676->g_258 p_1676->g_695 p_1676->g_603 p_1676->g_604 p_1676->g_48 p_1676->g_231 p_1676->g_802 p_1676->g_1132 p_1676->g_440 p_1676->g_1274 p_1676->g_276 p_1676->g_458 p_1676->g_1531 p_1676->g_1533 p_1676->g_1551
 * writes: p_1676->g_44 p_1676->g_64 p_1676->g_187 p_1676->g_97 p_1676->g_94 p_1676->g_158 p_1676->g_300 p_1676->g_311 p_1676->g_276 p_1676->g_156 p_1676->g_333 p_1676->g_260 p_1676->g_812 p_1676->g_137 p_1676->g_48 p_1676->g_802 p_1676->g_540 p_1676->g_618 p_1676->g_81 p_1676->g_71 p_1676->g_1078 p_1676->g_476 p_1676->g_1132 p_1676->g_257 p_1676->g_231 p_1676->g_422 p_1676->g_83 p_1676->g_1274 p_1676->g_1490 p_1676->g_695 p_1676->g_1531 p_1676->g_1533
 */
int32_t  func_24(int32_t * p_25, int32_t  p_26, struct S0 * p_1676)
{ /* block id: 10 */
    int32_t *l_42 = &p_1676->g_2;
    int32_t **l_41 = &l_42;
    uint32_t l_622[6] = {0x3232FED3L,0x3232FED3L,0x3232FED3L,0x3232FED3L,0x3232FED3L,0x3232FED3L};
    uint16_t l_1553 = 0x49ABL;
    int i;
    for (p_26 = 0; (p_26 <= (-6)); p_26--)
    { /* block id: 13 */
        int32_t l_35 = 0x24F63ABEL;
        uint8_t *l_43 = &p_1676->g_44[1][0][3];
        uint8_t *l_47[10];
        int32_t l_49 = 0L;
        uint32_t **l_1480 = (void*)0;
        uint32_t *l_1482[10] = {&l_622[4],&l_622[4],&l_622[4],&l_622[4],&l_622[4],&l_622[4],&l_622[4],&l_622[4],&l_622[4],&l_622[4]};
        uint32_t **l_1481 = &l_1482[5];
        int32_t **l_1515 = &p_1676->g_458[3][3][1];
        int i;
        for (i = 0; i < 10; i++)
            l_47[i] = &p_1676->g_48;
        l_1515 = func_29(p_26, l_35, ((*l_1481) = func_36(l_41, l_35, ((l_49 = (p_1676->g_2 , ((*l_43)++))) , func_50((+l_35), p_1676)), ((p_26 , (((((p_26 >= p_1676->g_158[3]) || l_622[4]) <= p_26) != p_26) == p_26)) || (*p_25)), p_1676)), p_1676->g_695, p_1676->g_458[3][3][4], p_1676);
        for (p_1676->g_71 = 0; (p_1676->g_71 <= 1); p_1676->g_71 += 1)
        { /* block id: 877 */
            int32_t *l_1516 = (void*)0;
            int32_t *l_1517[6][9][1] = {{{&l_49},{&l_49},{&l_49},{&l_49},{&l_49},{&l_49},{&l_49},{&l_49},{&l_49}},{{&l_49},{&l_49},{&l_49},{&l_49},{&l_49},{&l_49},{&l_49},{&l_49},{&l_49}},{{&l_49},{&l_49},{&l_49},{&l_49},{&l_49},{&l_49},{&l_49},{&l_49},{&l_49}},{{&l_49},{&l_49},{&l_49},{&l_49},{&l_49},{&l_49},{&l_49},{&l_49},{&l_49}},{{&l_49},{&l_49},{&l_49},{&l_49},{&l_49},{&l_49},{&l_49},{&l_49},{&l_49}},{{&l_49},{&l_49},{&l_49},{&l_49},{&l_49},{&l_49},{&l_49},{&l_49},{&l_49}}};
            uint16_t l_1525 = 0x6B8FL;
            int i, j, k;
            l_49 ^= 1L;
            (*l_41) = func_50((1UL != FAKE_DIVERGE(p_1676->group_0_offset, get_group_id(0), 10)), p_1676);
            if ((*p_25))
                break;
            for (p_1676->g_260 = 0; (p_1676->g_260 <= 1); p_1676->g_260 += 1)
            { /* block id: 883 */
                uint32_t l_1518 = 4294967295UL;
                int8_t *l_1526 = &p_1676->g_812[0][8];
                int32_t *l_1529 = &p_1676->g_695;
                int32_t *l_1530 = (void*)0;
                uint32_t *l_1532[6];
                uint16_t **l_1546 = (void*)0;
                uint16_t *l_1548 = &p_1676->g_94;
                uint16_t **l_1547 = &l_1548;
                int64_t *l_1549 = (void*)0;
                int64_t *l_1550 = &p_1676->g_231;
                int32_t l_1552 = 0L;
                int i;
                for (i = 0; i < 6; i++)
                    l_1532[i] = (void*)0;
                for (p_1676->g_97 = 0; (p_1676->g_97 <= 1); p_1676->g_97 += 1)
                { /* block id: 886 */
                    int i, j, k;
                    l_1518--;
                }
                if (((safe_mod_func_uint64_t_u_u(FAKE_DIVERGE(p_1676->group_1_offset, get_group_id(1), 10), (((p_1676->g_1531 |= ((*l_1529) = (safe_mod_func_int32_t_s_s((l_1525 , (l_1526 == l_43)), (safe_mod_func_uint64_t_u_u(p_1676->g_540, FAKE_DIVERGE(p_1676->local_1_offset, get_local_id(1), 10))))))) , ((++p_1676->g_1533) , (safe_div_func_int8_t_s_s(((safe_rshift_func_int16_t_s_u((0UL == ((safe_mod_func_uint16_t_u_u(((l_1552 = ((((safe_sub_func_int64_t_s_s(((*l_1550) &= (((**l_41) <= (((safe_add_func_uint32_t_u_u((((*l_1547) = &l_1525) == &p_1676->g_94), l_1518)) && 0x5BFFDADD3192C682L) , l_1518)) || (*p_25))), p_1676->g_540)) , p_1676->g_187) | p_1676->g_1551) , (-4L))) & p_26), FAKE_DIVERGE(p_1676->local_0_offset, get_local_id(0), 10))) , 0x3A5306CDL)), (*l_42))) || FAKE_DIVERGE(p_1676->local_0_offset, get_local_id(0), 10)), p_26)))) , p_1676->g_1274))) , l_1553))
                { /* block id: 895 */
                    uint16_t l_1562 = 1UL;
                    int32_t l_1575 = (-1L);
                    for (p_1676->g_156 = 9; (p_1676->g_156 >= 0); p_1676->g_156 -= 1)
                    { /* block id: 898 */
                        int32_t l_1573[1][3];
                        int16_t *l_1574 = &p_1676->g_81;
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 3; j++)
                                l_1573[i][j] = 8L;
                        }
                        l_1575 = (p_26 , (p_1676->g_276[0] != (p_1676->g_48 && (((safe_div_func_int64_t_s_s((safe_mod_func_int16_t_s_s(((safe_rshift_func_int8_t_s_s(((4294967290UL != (--p_1676->g_476)) , ((--l_1562) , (p_26 & 8L))), (safe_add_func_uint16_t_u_u(((safe_lshift_func_int16_t_s_u(((*l_1574) = (((safe_add_func_int32_t_s_s((*p_25), ((safe_add_func_uint32_t_u_u(((l_1573[0][2] | p_1676->g_81) , p_26), (-4L))) ^ 0xD8EF303F775840E4L))) < p_26) && p_1676->g_158[3])), p_26)) > l_1552), p_26)))) >= 0UL), p_1676->g_440)), l_1518)) && 0x5AL) || p_26))));
                        l_1575 = 0x7EFAEB2BL;
                    }
                    return (*p_25);
                }
                else
                { /* block id: 906 */
                    (*p_1676->g_136) = &p_26;
                }
            }
        }
    }
    for (p_1676->g_1274 = 18; (p_1676->g_1274 <= 14); p_1676->g_1274 = safe_sub_func_uint8_t_u_u(p_1676->g_1274, 4))
    { /* block id: 914 */
        if ((*p_25))
            break;
    }
    return (*p_25);
}


/* ------------------------------------------ */
/* 
 * reads : p_1676->g_231 p_1676->g_476 p_1676->g_64 p_1676->g_97 p_1676->g_802 p_1676->g_1274 p_1676->g_136
 * writes: p_1676->g_64 p_1676->g_231 p_1676->g_1490 p_1676->g_802 p_1676->g_540 p_1676->g_71 p_1676->g_476 p_1676->g_137
 */
int32_t ** func_29(uint8_t  p_30, int32_t  p_31, uint32_t * p_32, int32_t  p_33, uint32_t * p_34, struct S0 * p_1676)
{ /* block id: 860 */
    uint32_t l_1483 = 0UL;
    int32_t *l_1484 = &p_1676->g_64;
    int16_t *l_1489 = &p_1676->g_83;
    int32_t **l_1514 = (void*)0;
    (*l_1484) = l_1483;
    for (p_1676->g_231 = 0; (p_1676->g_231 == 10); p_1676->g_231++)
    { /* block id: 864 */
        uint16_t *l_1501 = (void*)0;
        uint16_t *l_1502 = (void*)0;
        uint16_t *l_1503 = &p_1676->g_802;
        int32_t l_1512 = 0x5EFDB2ADL;
        int32_t l_1513[1][6];
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 6; j++)
                l_1513[i][j] = 0x2EE20088L;
        }
        p_1676->g_1490 = (safe_mul_func_uint8_t_u_u((l_1489 != l_1489), p_1676->g_476));
        l_1513[0][3] = (safe_mod_func_int16_t_s_s(((l_1512 = ((*l_1484) = (safe_lshift_func_uint8_t_u_u((*l_1484), ((safe_mod_func_uint64_t_u_u((safe_lshift_func_int8_t_s_u((p_1676->g_97 == p_1676->g_97), 1)), ((((1L != ((void*)0 != l_1489)) > ((*l_1503)++)) == 0x1AL) && (~251UL)))) & (safe_mod_func_int16_t_s_s(((safe_div_func_uint8_t_u_u((((*p_32) = (safe_mul_func_uint8_t_u_u(p_33, (-5L)))) | 8L), p_31)) , 0x3F66L), 1L))))))) > p_1676->g_1274), l_1483));
    }
    (*p_1676->g_136) = l_1484;
    return l_1514;
}


/* ------------------------------------------ */
/* 
 * reads : p_1676->g_422 p_1676->g_158 p_1676->g_64 p_1676->g_44 p_1676->g_477 p_1676->g_71 p_1676->g_94 p_1676->g_311 p_1676->g_2 p_1676->g_156 p_1676->g_260 p_1676->g_107 p_1676->g_187 p_1676->g_476 p_1676->g_333 p_1676->g_6 p_1676->g_871 p_1676->g_81 p_1676->g_97 p_1676->g_618 p_1676->g_136 p_1676->g_540 p_1676->g_83 p_1676->g_300 p_1676->g_812 p_1676->g_258 p_1676->g_695 p_1676->g_603 p_1676->g_604 p_1676->g_48 p_1676->g_231 p_1676->g_802 p_1676->g_1132 p_1676->g_440 p_1676->g_1274 p_1676->g_276
 * writes: p_1676->g_64 p_1676->g_187 p_1676->g_97 p_1676->g_94 p_1676->g_158 p_1676->g_300 p_1676->g_311 p_1676->g_276 p_1676->g_156 p_1676->g_333 p_1676->g_260 p_1676->g_812 p_1676->g_137 p_1676->g_48 p_1676->g_802 p_1676->g_540 p_1676->g_44 p_1676->g_618 p_1676->g_81 p_1676->g_71 p_1676->g_1078 p_1676->g_476 p_1676->g_1132 p_1676->g_257 p_1676->g_231 p_1676->g_422 p_1676->g_83 p_1676->g_1274
 */
uint32_t * func_36(int32_t ** p_37, int32_t  p_38, uint32_t * p_39, uint8_t  p_40, struct S0 * p_1676)
{ /* block id: 351 */
    int16_t l_623 = (-1L);
    int32_t l_624 = 0x3F99BC74L;
    int32_t *l_625 = &p_1676->g_311;
    int32_t *l_626 = &p_1676->g_311;
    int32_t *l_627 = &l_624;
    int32_t *l_628[4][6];
    uint64_t l_629[6][9][4] = {{{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L}},{{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L}},{{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L}},{{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L}},{{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L}},{{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L},{0x3749613F3E32274DL,0xB72E5A32981400A1L,0xB936A8F7380B3716L,0x75AD0B53AC787FC2L}}};
    uint64_t l_689 = 0x4F4F593AD144E6A4L;
    uint32_t l_799 = 0xD44DECE1L;
    uint16_t l_852 = 8UL;
    uint32_t l_859 = 0x2D870630L;
    int16_t *l_864 = &p_1676->g_333;
    uint8_t *l_865 = (void*)0;
    uint8_t **l_866 = &l_865;
    int32_t *l_913 = (void*)0;
    int32_t *l_914 = &p_1676->g_260;
    uint16_t *l_915 = &p_1676->g_94;
    int8_t *l_916[9];
    int32_t *****l_981 = (void*)0;
    int32_t l_1035 = (-1L);
    int64_t *l_1092[4] = {&p_1676->g_156,&p_1676->g_156,&p_1676->g_156,&p_1676->g_156};
    int16_t l_1117 = (-1L);
    int32_t *******l_1142 = &p_1676->g_603;
    uint32_t l_1194 = 0xD24D3890L;
    int16_t l_1216 = 0x3860L;
    int32_t l_1275 = (-7L);
    uint16_t l_1356 = 65533UL;
    int16_t l_1372 = 0L;
    uint32_t *l_1438 = &p_1676->g_540;
    uint32_t **l_1437 = &l_1438;
    int i, j, k;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 6; j++)
            l_628[i][j] = &l_624;
    }
    for (i = 0; i < 9; i++)
        l_916[i] = &p_1676->g_812[3][4];
lbl_693:
    ++l_629[4][4][1];
    for (p_1676->g_64 = 3; (p_1676->g_64 >= 0); p_1676->g_64 -= 1)
    { /* block id: 355 */
        int32_t *****l_636 = &p_1676->g_257[7];
        int8_t *l_637[2][7][5] = {{{(void*)0,(void*)0,&p_1676->g_158[3],(void*)0,&p_1676->g_158[6]},{(void*)0,(void*)0,&p_1676->g_158[3],(void*)0,&p_1676->g_158[6]},{(void*)0,(void*)0,&p_1676->g_158[3],(void*)0,&p_1676->g_158[6]},{(void*)0,(void*)0,&p_1676->g_158[3],(void*)0,&p_1676->g_158[6]},{(void*)0,(void*)0,&p_1676->g_158[3],(void*)0,&p_1676->g_158[6]},{(void*)0,(void*)0,&p_1676->g_158[3],(void*)0,&p_1676->g_158[6]},{(void*)0,(void*)0,&p_1676->g_158[3],(void*)0,&p_1676->g_158[6]}},{{(void*)0,(void*)0,&p_1676->g_158[3],(void*)0,&p_1676->g_158[6]},{(void*)0,(void*)0,&p_1676->g_158[3],(void*)0,&p_1676->g_158[6]},{(void*)0,(void*)0,&p_1676->g_158[3],(void*)0,&p_1676->g_158[6]},{(void*)0,(void*)0,&p_1676->g_158[3],(void*)0,&p_1676->g_158[6]},{(void*)0,(void*)0,&p_1676->g_158[3],(void*)0,&p_1676->g_158[6]},{(void*)0,(void*)0,&p_1676->g_158[3],(void*)0,&p_1676->g_158[6]},{(void*)0,(void*)0,&p_1676->g_158[3],(void*)0,&p_1676->g_158[6]}}};
        int64_t *l_642 = &p_1676->g_300;
        int32_t l_648 = 0x06FD1C21L;
        int64_t *l_649 = &p_1676->g_156;
        uint8_t *l_651 = &p_1676->g_187;
        uint8_t **l_650 = &l_651;
        uint32_t *l_742 = &p_1676->g_540;
        int32_t ******l_794 = &l_636;
        int64_t l_813 = 0L;
        int16_t l_814 = (-1L);
        int32_t l_850[9] = {(-1L),7L,(-1L),(-1L),7L,(-1L),(-1L),7L,(-1L)};
        int i, j, k;
        for (p_1676->g_187 = 0; p_1676->g_187 < 6; p_1676->g_187 += 1)
        {
            for (p_1676->g_97 = 0; p_1676->g_97 < 9; p_1676->g_97 += 1)
            {
                for (p_1676->g_94 = 0; p_1676->g_94 < 4; p_1676->g_94 += 1)
                {
                    l_629[p_1676->g_187][p_1676->g_97][p_1676->g_94] = 1UL;
                }
            }
        }
        (*l_627) = (l_648 = (((((0x827364839A983B57L && p_1676->g_422) , ((*l_649) &= (((((!(p_1676->g_276[0] = ((safe_lshift_func_int8_t_s_u(((((safe_add_func_int8_t_s_s((p_1676->g_158[3] |= (l_636 != (void*)0)), (safe_mod_func_uint16_t_u_u(p_1676->g_64, ((safe_rshift_func_int8_t_s_u(((((*l_642) = p_1676->g_44[1][0][3]) | (((~(safe_unary_minus_func_int8_t_s(((4UL | (safe_lshift_func_int8_t_s_s(((safe_div_func_uint32_t_u_u(0x291CFA62L, (((*l_625) = ((((((p_1676->g_477 || l_648) , 255UL) != 0L) & 0x38984DF2L) > (*p_39)) && (*p_39))) , (*p_39)))) , (-7L)), 6))) == 0UL)))) & (*l_627)) || GROUP_DIVERGE(2, 1))) ^ p_1676->g_94), p_1676->g_64)) & p_40))))) && 0xBC81L) & p_40) , p_38), 3)) >= 0x69A9C3B94660CF27L))) == GROUP_DIVERGE(2, 1)) , (*l_626)) & (**p_37)) == 0x55BEL))) , l_650) != (void*)0) & p_38));
        (*l_626) |= (~(((safe_sub_func_uint64_t_u_u(GROUP_DIVERGE(2, 1), ((((*l_651) = (p_40 <= (((**p_37) | ((18446744073709551612UL | 18446744073709551612UL) & (*l_627))) <= p_38))) && ((safe_unary_minus_func_int8_t_s((((safe_div_func_uint8_t_u_u(((safe_unary_minus_func_uint64_t_u((p_1676->g_276[0] = (p_38 , FAKE_DIVERGE(p_1676->global_2_offset, get_global_id(2), 10))))) ^ (safe_add_func_uint32_t_u_u((safe_add_func_uint64_t_u_u(p_1676->g_260, p_1676->g_107)), (**p_37)))), p_1676->g_187)) <= 0xADBAL) ^ p_1676->g_476))) & (*l_627))) < p_38))) | p_1676->g_333) < p_1676->g_6));
        for (l_624 = 0; (l_624 <= 3); l_624 += 1)
        { /* block id: 369 */
            int32_t l_678 = (-1L);
            int32_t l_691 = 0x23EBC928L;
            int32_t l_692 = 0x0BE7C1F2L;
            int32_t l_739 = 7L;
            int32_t l_744 = 0x7D631FC6L;
            int16_t l_851 = (-1L);
            (1 + 1);
        }
    }
lbl_923:
    l_859++;
    if ((((safe_rshift_func_int8_t_s_s(((*l_625) = (((*l_864) = 0x04EAL) , (p_1676->g_812[7][4] = ((((*l_866) = l_865) != &p_40) || ((((*l_915) = (safe_rshift_func_int8_t_s_s((*l_626), (((safe_rshift_func_int8_t_s_s(((((((((*l_914) ^= (~(((void*)0 == p_1676->g_871) & (0xF2D7L || (((*l_627) = (p_1676->g_81 > p_1676->g_422)) >= 1L))))) , 0L) <= (-2L)) , p_40) < p_1676->g_97) | p_1676->g_618) & p_40), 3)) | (*l_626)) ^ 1L)))) && p_40) , (*l_625)))))), 1)) && p_40) >= 4294967295UL))
    { /* block id: 473 */
        return &p_1676->g_71;
    }
    else
    { /* block id: 475 */
        uint64_t *l_924 = &l_689;
        int32_t l_927[8][3] = {{0L,(-2L),0L},{0L,(-2L),0L},{0L,(-2L),0L},{0L,(-2L),0L},{0L,(-2L),0L},{0L,(-2L),0L},{0L,(-2L),0L},{0L,(-2L),0L}};
        int32_t l_938 = 1L;
        int16_t l_1015 = 0x50EAL;
        uint32_t *l_1017 = &p_1676->g_476;
        uint16_t l_1059 = 65535UL;
        int64_t **l_1077 = (void*)0;
        uint32_t **l_1085 = &l_1017;
        uint64_t l_1099[8][10][2] = {{{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL}},{{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL}},{{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL}},{{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL}},{{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL}},{{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL}},{{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL}},{{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL},{3UL,18446744073709551615UL}}};
        int32_t ****l_1133 = &p_1676->g_785[1][2][4];
        int16_t l_1189 = 0x2F2DL;
        uint64_t l_1301 = 18446744073709551614UL;
        int32_t l_1316 = 0x7D63FAF7L;
        uint64_t l_1413 = 0xDE63AE83521935BBL;
        uint16_t l_1422 = 0xA3A1L;
        int8_t l_1436 = 0L;
        int i, j, k;
lbl_1168:
        for (p_1676->g_333 = 3; (p_1676->g_333 >= 0); p_1676->g_333 -= 1)
        { /* block id: 478 */
            int32_t l_921 = 0x2E67AA35L;
            uint32_t *l_922 = &p_1676->g_540;
            uint16_t l_950 = 0xEE26L;
            int32_t l_985 = 0L;
            int32_t l_986 = 0L;
            int32_t l_988 = (-1L);
            int32_t l_989 = 0x3589BF1CL;
            int32_t l_991 = 0x674FB5C1L;
            int32_t l_992 = 0x505D3F14L;
            uint8_t l_1006 = 255UL;
            int64_t *l_1016 = (void*)0;
            int i;
            if ((l_921 = (p_1676->g_107 ^ (((safe_lshift_func_int8_t_s_s((*l_627), 1)) > (safe_rshift_func_uint8_t_u_u(0UL, 3))) | 65530UL))))
            { /* block id: 480 */
                l_625 = ((*p_1676->g_136) = (*p_37));
                return l_922;
            }
            else
            { /* block id: 484 */
                uint8_t l_928 = 0UL;
                int32_t l_933 = (-2L);
                uint8_t l_947 = 1UL;
                uint8_t ***l_965 = &l_866;
                int16_t *l_982 = &p_1676->g_83;
                int32_t l_983 = 0x5F638A95L;
                int32_t l_984 = 0x169EEC2EL;
                int32_t l_987 = 0L;
                int32_t l_993 = (-8L);
                for (p_1676->g_48 = 0; (p_1676->g_48 <= 3); p_1676->g_48 += 1)
                { /* block id: 487 */
                    int64_t l_926[4] = {0x541B19371E1BF770L,0x541B19371E1BF770L,0x541B19371E1BF770L,0x541B19371E1BF770L};
                    int i;
                    for (p_1676->g_311 = 0; (p_1676->g_311 <= 3); p_1676->g_311 += 1)
                    { /* block id: 490 */
                        if (p_40)
                            goto lbl_923;
                    }
                    for (p_1676->g_802 = 0; (p_1676->g_802 <= 3); p_1676->g_802 += 1)
                    { /* block id: 495 */
                        uint64_t **l_925 = &l_924;
                        int i, j;
                        (*l_626) ^= (((*l_925) = l_924) != &p_1676->g_440);
                        l_928++;
                        l_933 = ((*l_627) |= (p_1676->g_422 && ((*l_922) |= ((l_921 |= (((*p_37) = (*p_37)) != p_39)) , (safe_rshift_func_uint8_t_u_s(p_1676->g_6, (p_38 > (p_40 || (p_1676->g_6 || 1UL)))))))));
                    }
                }
                (*l_625) &= (safe_mod_func_int8_t_s_s(l_927[2][1], p_1676->g_158[3]));
                (*l_626) = (((safe_mul_func_int8_t_s_s(((l_938 && ((safe_mul_func_int8_t_s_s((0xD7L || (p_38 , (safe_mod_func_uint64_t_u_u(((0xA6L <= 9L) == (((248UL | ((6UL >= (~((p_38 >= (safe_lshift_func_int16_t_s_s(((l_921 | p_1676->g_83) , p_1676->g_300), 2))) | (**p_37)))) || p_38)) & 0x16L) , 0x33EBL)), GROUP_DIVERGE(1, 1))))), 255UL)) <= l_928)) , p_40), (*l_626))) > p_38) , (**p_37));
                for (p_1676->g_540 = 3; (p_1676->g_540 <= 8); p_1676->g_540 += 1)
                { /* block id: 510 */
                    uint8_t **l_945 = &l_865;
                    int32_t l_957 = 1L;
                    int16_t *l_959 = (void*)0;
                    int8_t *l_960 = &p_1676->g_812[0][8];
                    int32_t l_961[7][10] = {{1L,(-3L),(-1L),(-3L),1L,1L,(-3L),(-1L),(-3L),1L},{1L,(-3L),(-1L),(-3L),1L,1L,(-3L),(-1L),(-3L),1L},{1L,(-3L),(-1L),(-3L),1L,1L,(-3L),(-1L),(-3L),1L},{1L,(-3L),(-1L),(-3L),1L,1L,(-3L),(-1L),(-3L),1L},{1L,(-3L),(-1L),(-3L),1L,1L,(-3L),(-1L),(-3L),1L},{1L,(-3L),(-1L),(-3L),1L,1L,(-3L),(-1L),(-3L),1L},{1L,(-3L),(-1L),(-3L),1L,1L,(-3L),(-1L),(-3L),1L}};
                    uint16_t l_996 = 0x0FFEL;
                    int i, j;
                    if ((l_945 != (p_1676->g_476 , &l_865)))
                    { /* block id: 511 */
                        if (l_921)
                            break;
                        (**p_1676->g_258) = func_50(p_1676->g_812[2][0], p_1676);
                        if ((**p_37))
                            continue;
                        return &p_1676->g_476;
                    }
                    else
                    { /* block id: 516 */
                        int32_t *l_946[10] = {(void*)0,(void*)0,&l_927[2][1],(void*)0,(void*)0,(void*)0,(void*)0,&l_927[2][1],(void*)0,(void*)0};
                        int i;
                        (*l_627) = (**p_37);
                        (*p_1676->g_136) = l_946[9];
                        ++l_947;
                    }
                    for (p_1676->g_156 = 8; (p_1676->g_156 >= 0); p_1676->g_156 -= 1)
                    { /* block id: 523 */
                        ++l_950;
                    }
                    for (l_689 = 0; (l_689 <= 3); l_689 += 1)
                    { /* block id: 528 */
                        uint8_t *l_958 = &p_1676->g_44[3][0][0];
                        int32_t l_962[8];
                        int i;
                        for (i = 0; i < 8; i++)
                            l_962[i] = 0x5F4A1305L;
                        l_961[6][5] = (((safe_mul_func_int16_t_s_s(p_1676->g_156, (safe_sub_func_uint64_t_u_u((l_947 | (l_927[3][0] >= ((((((*l_958) &= (l_957 = p_38)) > (1UL || ((((void*)0 != l_959) , p_38) ^ ((l_916[(l_689 + 2)] = l_865) == l_960)))) > p_1676->g_2) & (*p_39)) < p_1676->g_158[3]))), p_1676->g_476)))) < (*l_627)) > l_921);
                        if (l_962[7])
                            continue;
                    }
                    for (p_1676->g_187 = 0; (p_1676->g_187 <= 2); p_1676->g_187 += 1)
                    { /* block id: 537 */
                        int i, j;
                        if (p_1676->g_107)
                            goto lbl_693;
                        l_927[p_1676->g_187][p_1676->g_187] = (l_927[(p_1676->g_333 + 3)][p_1676->g_187] | (*l_627));
                        (*p_37) = (*p_37);
                    }
                    for (p_1676->g_618 = 0; (p_1676->g_618 <= 3); p_1676->g_618 += 1)
                    { /* block id: 544 */
                        int64_t l_968 = 2L;
                        int64_t *l_973 = &p_1676->g_300;
                        int16_t *l_978 = &l_623;
                        int32_t l_990 = 0x20E912D4L;
                        int32_t l_994 = 0x5D3D4FB6L;
                        int32_t l_995 = 0x305FA3B2L;
                        (*l_627) |= (p_1676->g_44[1][0][3] | (~(p_40 &= (*l_625))));
                        (**p_1676->g_258) = func_50((safe_lshift_func_uint8_t_u_u(((l_965 != (void*)0) > ((safe_sub_func_int64_t_s_s((0L <= (((~l_938) & l_968) == (safe_mul_func_uint16_t_u_u((*l_627), 0x3416L)))), ((*l_973) = (safe_lshift_func_uint16_t_u_u(((p_1676->g_695 >= (((p_38 && p_40) == 253UL) <= 0xD0L)) != p_1676->g_94), 0))))) != (*l_625))), 4)), p_1676);
                        (*l_625) &= ((safe_mod_func_int16_t_s_s(((*l_978) |= (p_1676->g_81 &= p_1676->g_477)), (0xAF713AB14D6B5020L ^ ((*l_924) = (safe_lshift_func_uint8_t_u_s(GROUP_DIVERGE(0, 1), p_40)))))) <= (l_981 == (((void*)0 != l_982) , (*p_1676->g_603))));
                        --l_996;
                    }
                }
            }
            (*l_625) = (l_950 || ((((*l_915) |= (safe_unary_minus_func_int64_t_s(((safe_add_func_uint32_t_u_u(((*p_39) = 9UL), (safe_div_func_int64_t_s_s(l_1006, p_40)))) && (safe_lshift_func_uint16_t_u_s(l_1006, (3UL != (((*l_914) |= p_38) , (safe_sub_func_int16_t_s_s((safe_mod_func_int64_t_s_s((l_992 = (safe_sub_func_uint8_t_u_u(((p_40 < l_1015) <= l_950), 1UL))), p_40)), p_1676->g_48)))))))))) ^ FAKE_DIVERGE(p_1676->global_2_offset, get_global_id(2), 10)) > p_1676->g_311));
            for (p_1676->g_71 = 0; (p_1676->g_71 <= 8); p_1676->g_71 += 1)
            { /* block id: 564 */
                return l_1017;
            }
        }
        for (p_38 = 0; (p_38 >= (-13)); p_38--)
        { /* block id: 570 */
            int32_t l_1051 = 0x599F7EC0L;
            for (p_1676->g_71 = 28; (p_1676->g_71 <= 51); ++p_1676->g_71)
            { /* block id: 573 */
                l_927[3][2] = (**p_37);
            }
            for (l_859 = 0; (l_859 <= 3); l_859 += 1)
            { /* block id: 578 */
                uint16_t l_1024[8] = {5UL,5UL,5UL,5UL,5UL,5UL,5UL,5UL};
                int32_t *l_1038 = &p_1676->g_64;
                int8_t l_1050 = 0x2EL;
                int i, j;
                for (l_938 = 3; (l_938 >= 0); l_938 -= 1)
                { /* block id: 581 */
                    l_927[3][0] = l_938;
                    (*l_626) ^= (safe_div_func_int32_t_s_s((+l_1024[0]), (((3UL && ((((safe_mul_func_uint16_t_u_u((safe_lshift_func_int8_t_s_s(p_40, (safe_rshift_func_int16_t_s_u((safe_rshift_func_uint16_t_u_s(0xD357L, 7)), ((p_40 != (((l_1035 == (++(*l_915))) == (((((p_1676->g_83 , (((+p_1676->g_158[3]) , p_1676->g_158[3]) <= l_1024[6])) , (void*)0) != &p_1676->g_440) <= (*p_39)) && p_40)) , 0x369688DDDCE9AABFL)) && 0x4AL))))), p_1676->g_6)) , p_40) ^ p_40) > (-2L))) != p_40) , 0x0EE00FE0L)));
                    if ((**p_37))
                        break;
                }
                l_628[l_859][(l_859 + 1)] = l_1038;
                for (p_1676->g_64 = 0; (p_1676->g_64 <= 3); p_1676->g_64 += 1)
                { /* block id: 590 */
                    uint8_t ***l_1049 = &l_866;
                    int32_t ****l_1056 = (void*)0;
                    int32_t ****l_1057 = (void*)0;
                    int32_t ****l_1058 = &p_1676->g_258;
                    int64_t *l_1060 = &p_1676->g_300;
                    uint32_t l_1061 = 9UL;
                    int64_t *l_1070 = &p_1676->g_231;
                    int i, j;
                    (*l_625) &= 3L;
                }
            }
            return p_39;
        }
        if (((*l_626) = ((*l_627) = ((*p_39) || (((safe_rshift_func_uint16_t_u_u(((safe_add_func_int64_t_s_s((0UL != (p_1676->g_540 = FAKE_DIVERGE(p_1676->global_0_offset, get_global_id(0), 10))), (safe_mul_func_uint8_t_u_u(((p_1676->g_1078[2] = &p_1676->g_156) == ((((*l_924) = (safe_rshift_func_uint16_t_u_s(((safe_sub_func_uint8_t_u_u(FAKE_DIVERGE(p_1676->local_1_offset, get_local_id(1), 10), (p_40 ^ ((((((l_1085 == ((((*l_627) & (safe_lshift_func_uint16_t_u_s(((safe_lshift_func_int16_t_s_s((-1L), 0)) || (safe_sub_func_uint16_t_u_u(p_38, p_38))), p_40))) , (*l_625)) , &p_1676->g_872[0][5][0])) , 0x07E228AD172A4548L) & p_38) , 0x6A05B4A1L) | l_927[7][1]) <= p_1676->g_64)))) & (*l_625)), p_1676->g_187))) | 0L) , l_1092[3])), l_927[2][1])))) & p_38), 10)) | (-7L)) || 65535UL)))))
        { /* block id: 613 */
lbl_1293:
            (*l_627) |= (**p_37);
            return &p_1676->g_71;
        }
        else
        { /* block id: 616 */
            int64_t l_1093 = 1L;
            int32_t l_1094 = 0x5A978621L;
            int32_t l_1095 = (-1L);
            int32_t l_1096 = 0x76FC0D3BL;
            int32_t l_1097 = 0L;
            int32_t l_1098[7];
            uint8_t *l_1112 = &p_1676->g_44[1][0][3];
            int32_t ****l_1134[1][1][3];
            int8_t l_1247 = 1L;
            int32_t l_1273 = 6L;
            int32_t *l_1321 = (void*)0;
            uint32_t l_1322 = 1UL;
            int64_t l_1328 = 0L;
            int32_t ******l_1395 = &l_981;
            int32_t l_1418 = 0L;
            int8_t l_1441 = 0x1FL;
            int64_t *l_1443 = &l_1093;
            int64_t **l_1442[2];
            uint32_t **l_1461 = &l_1438;
            int8_t l_1463 = 0x04L;
            int i, j, k;
            for (i = 0; i < 7; i++)
                l_1098[i] = 0x4CFC6D3AL;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 1; j++)
                {
                    for (k = 0; k < 3; k++)
                        l_1134[i][j][k] = &p_1676->g_258;
                }
            }
            for (i = 0; i < 2; i++)
                l_1442[i] = &l_1443;
lbl_1169:
            ++l_1099[1][0][1];
            if ((((((p_40 > ((safe_sub_func_int16_t_s_s(p_38, ((safe_lshift_func_int16_t_s_u((0x79D79B3DA9B79DCAL == ((safe_add_func_int64_t_s_s((p_38 , ((safe_rshift_func_uint8_t_u_u((l_1094 = ((*l_1112) = (safe_mod_func_uint32_t_u_u((FAKE_DIVERGE(p_1676->local_1_offset, get_local_id(1), 10) , (((*p_39) & l_1096) >= ((*l_915) ^= 0UL))), p_1676->g_231)))), 1)) <= (safe_sub_func_uint32_t_u_u(((safe_mul_func_int8_t_s_s(0x58L, p_1676->g_83)) < (**p_37)), (**p_37))))), p_1676->g_97)) | l_1117)), 11)) < l_938))) == p_1676->g_107)) > (-4L)) ^ l_1093) , GROUP_DIVERGE(1, 1)) >= p_40))
            { /* block id: 621 */
                int16_t l_1128 = 0L;
                int32_t l_1131 = 0x6552480BL;
                p_1676->g_1132 &= (p_1676->g_187 & (safe_sub_func_uint64_t_u_u(((safe_mul_func_int16_t_s_s((safe_sub_func_int8_t_s_s((0L || (safe_mul_func_int16_t_s_s((safe_div_func_int64_t_s_s((((~0x19L) > l_1128) < (((safe_sub_func_int16_t_s_s(((~p_1676->g_802) < (l_1131 = p_1676->g_422)), l_1059)) < ((*l_1017) &= l_1015)) >= 1L)), p_40)), 0x1E0AL))), 0xC6L)), 8L)) & (*l_625)), 0UL)));
            }
            else
            { /* block id: 625 */
                int32_t l_1149 = 4L;
                int32_t ***l_1186 = &p_1676->g_136;
                int32_t l_1190 = (-10L);
                int32_t l_1191 = 0x1F003E6DL;
                int32_t l_1192 = 0x77773130L;
                uint64_t *l_1283 = (void*)0;
                uint64_t **l_1284 = (void*)0;
                uint64_t *l_1286 = &p_1676->g_276[0];
                uint64_t **l_1285 = &l_1286;
                uint64_t l_1332 = 18446744073709551606UL;
                uint32_t l_1335 = 4294967295UL;
                if ((((**p_1676->g_603) = l_1133) != l_1134[0][0][1]))
                { /* block id: 627 */
                    int64_t **l_1141 = &l_1092[3];
                    uint32_t l_1145 = 0xF89F1F73L;
                    int16_t *l_1148 = &l_1015;
                    int32_t l_1167 = 0x128EC58FL;
                    int64_t *l_1180 = (void*)0;
                    int32_t l_1193 = 0x0255FE5BL;
                    int64_t ***l_1215 = &l_1077;
                    if ((((safe_add_func_uint16_t_u_u(((*l_915) ^= 0xDBC0L), ((safe_div_func_int32_t_s_s(((*l_626) = (safe_rshift_func_int16_t_s_u(((*l_1148) |= ((*l_864) ^= ((((((void*)0 == l_1141) == ((9L == (((void*)0 != l_1142) , FAKE_DIVERGE(p_1676->global_1_offset, get_global_id(1), 10))) == (safe_lshift_func_int8_t_s_u(l_1145, 4)))) > 0x27L) <= (safe_mul_func_uint8_t_u_u((*l_627), 0x22L))) || p_38))), (*l_626)))), 9L)) || p_38))) & l_1149) && p_38))
                    { /* block id: 632 */
                        int32_t ********l_1150 = &l_1142;
                        int32_t *******l_1152 = &p_1676->g_603;
                        int32_t ********l_1151 = &l_1152;
                        uint16_t l_1165 = 0xFA61L;
                        uint16_t l_1166[9] = {0x0F50L,0x0F50L,0x0F50L,0x0F50L,0x0F50L,0x0F50L,0x0F50L,0x0F50L,0x0F50L};
                        int i;
                        (*p_1676->g_136) = (*p_37);
                        l_1167 &= (((((*l_1150) = (void*)0) == ((*l_1151) = &p_1676->g_603)) ^ (safe_mod_func_int16_t_s_s((((((safe_sub_func_int32_t_s_s((255UL != (((safe_sub_func_uint16_t_u_u(p_38, p_40)) , ((0x12447A20L || ((*l_626) ^= (safe_add_func_uint16_t_u_u(((safe_lshift_func_uint8_t_u_u(((safe_mul_func_int16_t_s_s(0x77CDL, ((p_38 & p_40) > 1UL))) && l_1165), 7)) > l_1166[2]), (*l_627))))) , (**p_37))) > l_1145)), (*p_39))) && 0x3E40F550L) == 5L) , p_1676->g_94) && p_1676->g_6), FAKE_DIVERGE(p_1676->local_2_offset, get_local_id(2), 10)))) , 1L);
                        if (l_1035)
                            goto lbl_1168;
                        if (l_1165)
                            goto lbl_1169;
                    }
                    else
                    { /* block id: 640 */
                        int64_t *l_1181 = &p_1676->g_300;
                        int32_t l_1187 = 0x7767DB43L;
                        uint32_t l_1188 = 4294967295UL;
                        l_1189 = ((safe_rshift_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((p_40 = (((safe_mul_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(p_38, ((~(((*l_924) = (safe_mul_func_uint16_t_u_u((l_1180 != l_1181), (safe_div_func_uint16_t_u_u(((0xB73D6AD4L != 4UL) , (&p_1676->g_333 != ((safe_add_func_uint32_t_u_u(0xFE73FEF4L, (l_1186 != (void*)0))) , (void*)0))), (-5L)))))) | GROUP_DIVERGE(2, 1))) < p_1676->g_695))), 1L)) | p_38) , l_1187)), l_1188)), 0)) || FAKE_DIVERGE(p_1676->local_2_offset, get_local_id(2), 10));
                        return p_39;
                    }
                    --l_1194;
                    (*l_627) = (l_1145 ^ ((**l_1085) = (((*l_625) = (safe_mod_func_int32_t_s_s((p_1676->g_422 == ((safe_mod_func_int16_t_s_s((((void*)0 == &l_1194) || (((safe_rshift_func_int8_t_s_u((safe_div_func_int32_t_s_s((safe_sub_func_int64_t_s_s((p_1676->g_83 == p_38), (safe_sub_func_uint64_t_u_u((safe_sub_func_int8_t_s_s(((-4L) < (((safe_mul_func_int16_t_s_s((safe_lshift_func_uint8_t_u_s(p_38, 2)), ((*l_864) = (((((*l_1215) = &p_1676->g_1078[9]) != (void*)0) , p_1676->g_71) , p_1676->g_618)))) , (void*)0) != (void*)0)), 0x69L)), 0UL)))), (**p_37))), 4)) >= l_1216) && 0x0DL)), 0x75DBL)) != 8L)), (**p_37)))) >= (*l_627))));
                    for (p_1676->g_71 = 0; (p_1676->g_71 <= 0); p_1676->g_71 += 1)
                    { /* block id: 654 */
                        int32_t l_1248 = 0L;
                        int64_t *l_1249 = &p_1676->g_231;
                        (**l_1186) = func_50(((safe_lshift_func_uint8_t_u_u(p_1676->g_2, (safe_lshift_func_int16_t_s_s(((void*)0 != p_37), 15)))) , (safe_add_func_int8_t_s_s(0L, (safe_mul_func_uint32_t_u_u(((((p_40--) & p_38) , (void*)0) == (p_38 , &p_1676->g_604)), (GROUP_DIVERGE(1, 1) < ((safe_lshift_func_uint8_t_u_u(p_1676->g_97, p_1676->g_422)) , 0x6F81L))))))), p_1676);
                        (*l_626) = ((safe_div_func_uint16_t_u_u(((p_40 || (safe_sub_func_int64_t_s_s((((safe_rshift_func_int8_t_s_u(p_40, 6)) , ((void*)0 != &p_1676->g_1078[2])) == (0x67D5F8D0L != (safe_rshift_func_uint16_t_u_s((((safe_add_func_int64_t_s_s(((*l_1249) = ((p_38 || (safe_div_func_int8_t_s_s((p_1676->g_158[3] = p_38), (safe_div_func_int64_t_s_s(((safe_mul_func_int8_t_s_s((safe_mul_func_int16_t_s_s((p_1676->g_812[0][8] , p_38), 0x3C45L)), l_1247)) || 0x87L), p_40))))) != l_1248)), 0x7AC48838D88E0E6AL)) , (void*)0) == &p_1676->g_48), p_40)))), p_38))) ^ 0x5DL), p_1676->g_812[1][7])) && 0x1A73409BC3BFA236L);
                    }
                }
                else
                { /* block id: 661 */
                    int16_t l_1268 = 9L;
                    int32_t *l_1277 = &l_927[2][1];
                    (**p_1676->g_258) = (void*)0;
                    for (p_1676->g_802 = (-14); (p_1676->g_802 != 3); p_1676->g_802++)
                    { /* block id: 665 */
                        int64_t *l_1276 = &l_1093;
                        int32_t l_1278 = 1L;
                        l_1277 = func_50(((safe_unary_minus_func_int8_t_s((((safe_div_func_int64_t_s_s(p_38, ((*l_1276) = (safe_lshift_func_uint8_t_u_u((safe_lshift_func_int8_t_s_s((safe_unary_minus_func_uint64_t_u(GROUP_DIVERGE(2, 1))), (GROUP_DIVERGE(0, 1) ^ 0x3977L))), (((**l_1085) &= ((p_1676->g_440 != ((0x4C50FB10L != (p_38 , (p_1676->g_812[7][4] <= (safe_mul_func_int16_t_s_s((((FAKE_DIVERGE(p_1676->global_0_offset, get_global_id(0), 10) ^ ((safe_sub_func_uint16_t_u_u((GROUP_DIVERGE(0, 1) ^ (((safe_lshift_func_int8_t_s_u((safe_mul_func_uint8_t_u_u(p_1676->g_477, (l_1268 > ((safe_rshift_func_int8_t_s_s(((((safe_lshift_func_int8_t_s_u((-7L), 4)) == p_40) != l_1268) == 0x6639AA60L), 1)) == l_1273)))), 6)) ^ (*p_39)) & p_38)), p_1676->g_83)) >= p_40)) , GROUP_DIVERGE(2, 1)) , p_1676->g_71), (-1L)))))) || 0x6AL)) ^ p_1676->g_1274)) | l_1275)))))) || 0x52F2A1E9L) , p_1676->g_156))) , p_40), p_1676);
                        (*p_1676->g_136) = (*p_37);
                        if (l_1278)
                            continue;
                    }
                    return p_39;
                }
                (**l_1186) = ((((safe_add_func_uint64_t_u_u((((*l_924) = (+(safe_mul_func_int16_t_s_s(p_40, 0x7C2DL)))) > p_1676->g_156), 0x1AE79D3CFDC5B814L)) == ((l_1283 == ((*l_1285) = &p_1676->g_276[0])) , (safe_lshift_func_uint16_t_u_s(l_1149, ((*l_864) = (((*l_1112) ^= p_38) ^ (safe_sub_func_uint32_t_u_u((safe_rshift_func_int16_t_s_s(1L, 15)), 4294967286UL)))))))) , 0x9DL) , (void*)0);
                if ((((**p_37) > ((*l_625) = (**p_37))) || 0UL))
                { /* block id: 680 */
                    if (p_1676->g_477)
                        goto lbl_1293;
                }
                else
                { /* block id: 682 */
                    uint16_t l_1296 = 0x0C44L;
                    int32_t l_1299 = 0x1FEB3E01L;
                    int32_t l_1300 = 1L;
                    (*l_625) = (5L > p_1676->g_2);
                    for (p_1676->g_94 = 0; (p_1676->g_94 <= 3); p_1676->g_94 += 1)
                    { /* block id: 686 */
                        if ((**p_37))
                            break;
                    }
                    for (p_1676->g_64 = (-3); (p_1676->g_64 < 12); p_1676->g_64 = safe_add_func_int16_t_s_s(p_1676->g_64, 1))
                    { /* block id: 691 */
                        --l_1296;
                        ++l_1301;
                    }
                }
                if (((safe_lshift_func_int16_t_s_u((safe_rshift_func_int16_t_s_s(((p_38 , (p_38 & GROUP_DIVERGE(0, 1))) || (safe_mul_func_uint16_t_u_u((*l_626), (safe_add_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s(p_40, (((*l_627) = ((((safe_mul_func_int8_t_s_s(0x20L, p_40)) , (((p_40 && ((void*)0 == &p_1676->g_156)) != 2L) >= (-2L))) | p_1676->g_81) > p_1676->g_311)) <= (**p_37)))), p_38))))), p_38)), 6)) , l_1316))
                { /* block id: 697 */
                    uint8_t l_1327 = 0xB0L;
                    uint32_t l_1329 = 0x20A94B5EL;
                    int32_t l_1330 = 0x2B4452A9L;
                    if ((l_1329 = ((*l_627) = (((safe_rshift_func_uint16_t_u_u(((p_40 != (safe_sub_func_int64_t_s_s((l_1321 == &p_1676->g_695), (l_1322 &= ((*l_924) = ((*l_1286) |= 1UL)))))) ^ p_1676->g_48), 12)) < 1L) , (safe_add_func_uint16_t_u_u((((p_40 , (((*l_626) | ((safe_add_func_uint32_t_u_u((((p_1676->g_440 != p_40) > p_1676->g_2) > p_1676->g_812[0][8]), (*p_39))) , (-1L))) ^ p_1676->g_97)) , l_1327) ^ (-1L)), l_1328))))))
                    { /* block id: 703 */
                        (*l_626) = ((**p_37) < (**p_37));
                    }
                    else
                    { /* block id: 705 */
                        int32_t l_1331 = 0x14A89CA1L;
                        ++l_1332;
                    }
                }
                else
                { /* block id: 708 */
                    for (p_1676->g_422 = 0; (p_1676->g_422 <= 3); p_1676->g_422 += 1)
                    { /* block id: 711 */
                        int i;
                        l_1335--;
                    }
                    return &p_1676->g_540;
                }
            }
            for (p_1676->g_422 = 5; (p_1676->g_422 != 13); ++p_1676->g_422)
            { /* block id: 719 */
                int64_t *l_1349 = &p_1676->g_231;
                int64_t **l_1348 = &l_1349;
                int32_t l_1355 = 0x1499D701L;
                uint16_t l_1380 = 0UL;
                (1 + 1);
            }
            for (l_1194 = 0; (l_1194 <= 2); l_1194 += 1)
            { /* block id: 778 */
                uint8_t l_1417 = 1UL;
                uint32_t *l_1435 = (void*)0;
                int32_t l_1462 = 0x31A62B8AL;
                for (l_1316 = 0; (l_1316 <= 0); l_1316 += 1)
                { /* block id: 781 */
                    uint64_t l_1416 = 18446744073709551615UL;
                    for (p_1676->g_83 = 0; (p_1676->g_83 <= 0); p_1676->g_83 += 1)
                    { /* block id: 784 */
                        int32_t *l_1399 = &l_1094;
                        int i, j;
                        (*p_37) = (*p_37);
                        l_927[(p_1676->g_83 + 6)][l_1194] = (safe_mul_func_uint16_t_u_u((18446744073709551609UL != GROUP_DIVERGE(0, 1)), (l_1399 == (*p_37))));
                    }
                    for (p_1676->g_1274 = 0; (p_1676->g_1274 <= 2); p_1676->g_1274 += 1)
                    { /* block id: 790 */
                        uint16_t l_1412 = 8UL;
                        int i, j;
                        (**p_1676->g_258) = (void*)0;
                        (*l_626) &= ((safe_add_func_uint8_t_u_u(((safe_sub_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u((p_1676->g_1132 > (safe_div_func_uint8_t_u_u(((p_1676->g_158[3] = ((l_927[(l_1316 + 4)][l_1194] = ((safe_rshift_func_int16_t_s_u((safe_mul_func_uint8_t_u_u(l_1412, (0x258F58ADL || (l_1413 != 0x00387D67L)))), (*l_627))) > (((void*)0 == &p_39) , (safe_add_func_int8_t_s_s(((((l_1416 <= 0x101347F3L) ^ l_1417) , &p_38) == (void*)0), GROUP_DIVERGE(0, 1)))))) == (-1L))) == p_38), 6UL))), l_1412)), p_38)) || 1UL), p_38)) < (**p_37));
                    }
                }
                if ((**p_37))
                { /* block id: 797 */
                    for (l_1095 = 2; (l_1095 >= 0); l_1095 -= 1)
                    { /* block id: 800 */
                        uint64_t l_1419 = 0x9C56CF8AAA371B86L;
                        int i, j;
                        l_927[l_1194][l_1095] = ((FAKE_DIVERGE(p_1676->group_2_offset, get_group_id(2), 10) != 65534UL) & 0x27FFL);
                        l_1418 = (+p_1676->g_158[(l_1095 + 1)]);
                        l_1419--;
                        l_1422 &= ((*l_626) ^= (**p_37));
                    }
                    if (l_1035)
                        goto lbl_1168;
                    if ((**p_37))
                        continue;
                }
                else
                { /* block id: 809 */
                    uint8_t l_1423 = 0x50L;
                    for (l_1301 = 0; (l_1301 <= 2); l_1301 += 1)
                    { /* block id: 812 */
                        uint64_t l_1439 = 0x2FD77467649B3928L;
                        int64_t *l_1440 = &p_1676->g_1274;
                        int i, j;
                        if ((**p_37))
                            break;
                        if (l_1423)
                            break;
                        l_927[(l_1194 + 3)][l_1194] ^= (l_1417 >= ((((safe_unary_minus_func_int16_t_s((&l_866 == (void*)0))) , (((*l_1112) = ((p_38 & ((safe_mod_func_int32_t_s_s((p_38 , ((p_1676->g_94 > 0x18AEL) || ((*l_864) = (safe_sub_func_int64_t_s_s(((*l_1440) = (safe_mod_func_int8_t_s_s((((safe_lshift_func_uint16_t_u_s(((*l_915) = ((safe_div_func_uint8_t_u_u(((((l_1436 |= (((+(((!(0x5037E7C9L | (p_40 & 1UL))) < p_1676->g_540) , FAKE_DIVERGE(p_1676->group_2_offset, get_group_id(2), 10))) , l_1435) != p_39)) , l_1437) == &p_1676->g_872[0][5][0]) >= p_1676->g_540), l_1439)) >= (*p_39))), 9)) , 1UL) , 0x26L), p_38))), p_1676->g_422))))), (**p_37))) && l_1441)) >= (**p_37))) != 1L)) ^ 0x7F04L) , p_1676->g_422));
                    }
                }
                for (l_852 = 0; (l_852 <= 2); l_852 += 1)
                { /* block id: 825 */
                    for (p_1676->g_333 = 3; (p_1676->g_333 >= 0); p_1676->g_333 -= 1)
                    { /* block id: 828 */
                        (*p_1676->g_136) = func_50(((void*)0 == l_1442[0]), p_1676);
                        return p_39;
                    }
                    (**p_1676->g_258) = (*p_37);
                }
                for (l_1247 = 2; (l_1247 >= 0); l_1247 -= 1)
                { /* block id: 836 */
                    uint32_t l_1477[10][3] = {{5UL,0x156646CBL,5UL},{5UL,0x156646CBL,5UL},{5UL,0x156646CBL,5UL},{5UL,0x156646CBL,5UL},{5UL,0x156646CBL,5UL},{5UL,0x156646CBL,5UL},{5UL,0x156646CBL,5UL},{5UL,0x156646CBL,5UL},{5UL,0x156646CBL,5UL},{5UL,0x156646CBL,5UL}};
                    int i, j;
                    for (p_1676->g_187 = 0; (p_1676->g_187 <= 2); p_1676->g_187 += 1)
                    { /* block id: 839 */
                        int32_t l_1464 = 0x671F72CCL;
                        int i, j;
                        (*p_1676->g_136) = (*p_37);
                        (*p_37) = func_50(p_40, p_1676);
                        (*l_625) = ((+(~((*l_1443) = 0x7BCDB02A9D9802EEL))) ^ ((((+(5UL < 4294967295UL)) | (safe_rshift_func_int8_t_s_u((safe_mod_func_int8_t_s_s((!(((safe_lshift_func_int16_t_s_u(((0x1F932D8DL > (p_1676->g_48 & p_1676->g_311)) <= (p_1676->g_476 == p_38)), (safe_lshift_func_uint8_t_u_s((safe_sub_func_uint64_t_u_u((safe_lshift_func_int16_t_s_u(((**p_37) <= p_1676->g_187), p_1676->g_1274)), p_1676->g_156)), 2)))) >= 0L) , l_1477[6][2])), p_38)), p_38))) == (**p_37)) , p_40));
                    }
                    l_1462 = l_1477[6][2];
                    for (p_40 = (-3); (p_40 >= 38); p_40 = safe_add_func_int64_t_s_s(p_40, 6))
                    { /* block id: 851 */
                        (*l_626) = (**p_37);
                    }
                }
            }
        }
    }
    return &p_1676->g_476;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint32_t * func_50(uint32_t  p_51, struct S0 * p_1676)
{ /* block id: 16 */
    uint32_t *l_60[1];
    int32_t **l_384 = (void*)0;
    int32_t **l_385 = &p_1676->g_137[5];
    int32_t **l_386 = &p_1676->g_137[5];
    int32_t *l_387 = &p_1676->g_311;
    uint64_t l_400 = 3UL;
    int16_t *l_401 = &p_1676->g_333;
    int16_t *l_402[3][6] = {{&p_1676->g_83,&p_1676->g_83,&p_1676->g_83,&p_1676->g_83,&p_1676->g_83,&p_1676->g_83},{&p_1676->g_83,&p_1676->g_83,&p_1676->g_83,&p_1676->g_83,&p_1676->g_83,&p_1676->g_83},{&p_1676->g_83,&p_1676->g_83,&p_1676->g_83,&p_1676->g_83,&p_1676->g_83,&p_1676->g_83}};
    int32_t l_611 = (-5L);
    int32_t *l_612 = &p_1676->g_64;
    int32_t *l_613 = &p_1676->g_64;
    int32_t *l_614 = &p_1676->g_64;
    int32_t *l_615 = &p_1676->g_311;
    int32_t *l_616[6][2][2] = {{{(void*)0,&p_1676->g_311},{(void*)0,&p_1676->g_311}},{{(void*)0,&p_1676->g_311},{(void*)0,&p_1676->g_311}},{{(void*)0,&p_1676->g_311},{(void*)0,&p_1676->g_311}},{{(void*)0,&p_1676->g_311},{(void*)0,&p_1676->g_311}},{{(void*)0,&p_1676->g_311},{(void*)0,&p_1676->g_311}},{{(void*)0,&p_1676->g_311},{(void*)0,&p_1676->g_311}}};
    int32_t l_617 = 0L;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_60[i] = (void*)0;
    return &p_1676->g_71;
}


/* ------------------------------------------ */
/* 
 * reads : p_1676->g_276 p_1676->g_64 p_1676->g_81 p_1676->g_434 p_1676->g_440 p_1676->g_156 p_1676->g_44 p_1676->g_300 p_1676->g_311 p_1676->g_158 p_1676->g_476 p_1676->g_71 p_1676->g_477 p_1676->g_48 p_1676->g_231 p_1676->g_333 p_1676->g_107 p_1676->g_422 p_1676->g_540 p_1676->g_6 p_1676->g_97 p_1676->g_2 p_1676->g_187
 * writes: p_1676->g_107 p_1676->g_83 p_1676->g_422 p_1676->g_94 p_1676->g_81 p_1676->g_156 p_1676->g_440 p_1676->g_44 p_1676->g_458 p_1676->g_64 p_1676->g_476 p_1676->g_477 p_1676->g_71 p_1676->g_231 p_1676->g_137 p_1676->g_300 p_1676->g_187 p_1676->g_48 p_1676->g_540 p_1676->g_97 p_1676->g_276 p_1676->g_158
 */
uint32_t  func_54(int16_t  p_55, int32_t  p_56, struct S0 * p_1676)
{ /* block id: 209 */
    int32_t *****l_416 = &p_1676->g_257[5];
    int32_t l_420 = 9L;
    int32_t l_423 = 7L;
    int32_t *l_457 = &p_1676->g_64;
    int32_t *l_459 = &p_1676->g_64;
    int32_t l_510 = 0L;
    int32_t l_535 = 6L;
    int32_t *l_573 = &l_423;
    int32_t *l_575 = &l_420;
    int16_t *l_599 = (void*)0;
    int32_t ******l_602 = &l_416;
    uint64_t l_609 = 0x4E41D07083706DC6L;
    for (p_55 = (-6); (p_55 >= (-9)); --p_55)
    { /* block id: 212 */
        int16_t l_414[8][7] = {{8L,(-7L),8L,8L,(-7L),8L,8L},{8L,(-7L),8L,8L,(-7L),8L,8L},{8L,(-7L),8L,8L,(-7L),8L,8L},{8L,(-7L),8L,8L,(-7L),8L,8L},{8L,(-7L),8L,8L,(-7L),8L,8L},{8L,(-7L),8L,8L,(-7L),8L,8L},{8L,(-7L),8L,8L,(-7L),8L,8L},{8L,(-7L),8L,8L,(-7L),8L,8L}};
        int32_t *****l_419 = &p_1676->g_257[4];
        int32_t l_429 = 4L;
        int64_t *l_432 = &p_1676->g_156;
        int32_t l_438 = 6L;
        uint8_t l_446 = 8UL;
        int8_t l_460 = 0L;
        int32_t l_461[2][9][1] = {{{3L},{3L},{3L},{3L},{3L},{3L},{3L},{3L},{3L}},{{3L},{3L},{3L},{3L},{3L},{3L},{3L},{3L},{3L}}};
        int64_t l_564 = 0x016FEDC3D3334D21L;
        int32_t **l_574[3][2][3];
        int i, j, k;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 2; j++)
            {
                for (k = 0; k < 3; k++)
                    l_574[i][j][k] = &p_1676->g_137[4];
            }
        }
        for (p_1676->g_107 = 0; (p_1676->g_107 <= 7); p_1676->g_107 += 1)
        { /* block id: 215 */
            int16_t l_407[3][4][7] = {{{0x1659L,1L,1L,(-7L),1L,(-7L),1L},{0x1659L,1L,1L,(-7L),1L,(-7L),1L},{0x1659L,1L,1L,(-7L),1L,(-7L),1L},{0x1659L,1L,1L,(-7L),1L,(-7L),1L}},{{0x1659L,1L,1L,(-7L),1L,(-7L),1L},{0x1659L,1L,1L,(-7L),1L,(-7L),1L},{0x1659L,1L,1L,(-7L),1L,(-7L),1L},{0x1659L,1L,1L,(-7L),1L,(-7L),1L}},{{0x1659L,1L,1L,(-7L),1L,(-7L),1L},{0x1659L,1L,1L,(-7L),1L,(-7L),1L},{0x1659L,1L,1L,(-7L),1L,(-7L),1L},{0x1659L,1L,1L,(-7L),1L,(-7L),1L}}};
            int16_t *l_412 = (void*)0;
            int16_t *l_413 = &p_1676->g_83;
            int32_t *****l_415[4][7] = {{&p_1676->g_257[5],&p_1676->g_257[6],(void*)0,&p_1676->g_257[6],&p_1676->g_257[5],&p_1676->g_257[5],&p_1676->g_257[6]},{&p_1676->g_257[5],&p_1676->g_257[6],(void*)0,&p_1676->g_257[6],&p_1676->g_257[5],&p_1676->g_257[5],&p_1676->g_257[6]},{&p_1676->g_257[5],&p_1676->g_257[6],(void*)0,&p_1676->g_257[6],&p_1676->g_257[5],&p_1676->g_257[5],&p_1676->g_257[6]},{&p_1676->g_257[5],&p_1676->g_257[6],(void*)0,&p_1676->g_257[6],&p_1676->g_257[5],&p_1676->g_257[5],&p_1676->g_257[6]}};
            int32_t ******l_417 = (void*)0;
            int32_t ******l_418 = &l_416;
            uint64_t *l_421 = &p_1676->g_422;
            uint16_t *l_428 = &p_1676->g_94;
            uint8_t l_462 = 250UL;
            int8_t l_484 = (-4L);
            int i, j, k;
            l_429 |= (((safe_mod_func_uint64_t_u_u(l_407[1][3][6], ((safe_sub_func_uint16_t_u_u(p_1676->g_276[0], ((*l_413) = (safe_mul_func_int16_t_s_s(1L, 0x1B93L))))) & (l_414[5][3] <= (l_415[3][1] == (l_419 = ((*l_418) = l_416))))))) >= (l_423 ^= ((*l_421) = l_420))) == ((*l_428) = ((safe_mul_func_uint16_t_u_u((safe_sub_func_uint16_t_u_u(p_1676->g_276[0], p_56)), (-1L))) < p_1676->g_64)));
            l_429 &= (p_1676->g_81 || p_56);
            for (p_1676->g_81 = 1; (p_1676->g_81 >= 0); p_1676->g_81 -= 1)
            { /* block id: 226 */
                int16_t l_433[2];
                int32_t *l_435 = &l_420;
                int32_t l_437 = 0L;
                int32_t *l_445 = (void*)0;
                int8_t *l_475[4][8] = {{&p_1676->g_158[3],&l_460,&p_1676->g_158[3],&l_460,&p_1676->g_158[3],&p_1676->g_158[3],&l_460,&p_1676->g_158[3]},{&p_1676->g_158[3],&l_460,&p_1676->g_158[3],&l_460,&p_1676->g_158[3],&p_1676->g_158[3],&l_460,&p_1676->g_158[3]},{&p_1676->g_158[3],&l_460,&p_1676->g_158[3],&l_460,&p_1676->g_158[3],&p_1676->g_158[3],&l_460,&p_1676->g_158[3]},{&p_1676->g_158[3],&l_460,&p_1676->g_158[3],&l_460,&p_1676->g_158[3],&p_1676->g_158[3],&l_460,&p_1676->g_158[3]}};
                uint32_t *l_485 = &p_1676->g_71;
                uint64_t l_494 = 1UL;
                int i, j;
                for (i = 0; i < 2; i++)
                    l_433[i] = 0x1CF5L;
                l_435 = (((safe_sub_func_int32_t_s_s(p_56, (p_56 && ((FAKE_DIVERGE(p_1676->local_2_offset, get_local_id(2), 10) , l_432) == (l_433[1] , &p_1676->g_156))))) , p_55) , p_1676->g_434);
                for (p_1676->g_156 = 0; (p_1676->g_156 <= 1); p_1676->g_156 += 1)
                { /* block id: 230 */
                    int32_t *l_436 = (void*)0;
                    int32_t l_439 = 0x5AE6367DL;
                    int32_t *l_444 = &l_429;
                    int i;
                    l_436 = l_435;
                    --p_1676->g_440;
                    for (l_423 = 1; (l_423 >= 0); l_423 -= 1)
                    { /* block id: 235 */
                        int32_t *l_443 = &l_429;
                        int i, j, k;
                        l_444 = l_443;
                        l_445 = (l_435 = l_443);
                        ++l_446;
                        (*l_457) = (safe_mod_func_uint16_t_u_u((safe_rshift_func_int16_t_s_s((safe_sub_func_int32_t_s_s(((*l_443) = l_433[p_1676->g_156]), (safe_rshift_func_uint8_t_u_s((p_1676->g_44[p_1676->g_156][l_423][p_1676->g_81] |= l_407[(l_423 + 1)][(p_1676->g_81 + 2)][(p_1676->g_156 + 2)]), ((p_1676->g_458[0][1][4] = l_457) != (l_459 = (p_1676->g_300 , &l_439))))))), 5)), 0x723DL));
                    }
                    ++l_462;
                }
                if ((safe_add_func_uint32_t_u_u(((safe_mul_func_int16_t_s_s(p_1676->g_311, ((*l_413) = (!p_55)))) , ((*l_485) &= (!(~(safe_rshift_func_uint8_t_u_u(((safe_add_func_uint64_t_u_u((&l_437 == &l_420), (safe_add_func_int8_t_s_s(p_1676->g_158[2], (p_1676->g_477 = (p_1676->g_476 |= 0x41L)))))) > (safe_sub_func_uint16_t_u_u(1UL, (safe_lshift_func_int16_t_s_u(((safe_div_func_int16_t_s_s(p_1676->g_440, ((0x440FA3ACAB596659L | 0x5B8CC83977CD6DA3L) , p_1676->g_158[0]))) & l_484), 5))))), 6)))))), p_1676->g_44[4][1][0])))
                { /* block id: 252 */
                    uint8_t l_492 = 0x67L;
                    int32_t l_493 = (-1L);
                    for (l_423 = 0; (l_423 <= 7); l_423 += 1)
                    { /* block id: 255 */
                        int64_t *l_488 = &p_1676->g_231;
                        int32_t l_491 = 0x0B3C63A3L;
                        l_429 = ((safe_mod_func_int64_t_s_s(((*l_488) &= ((((*l_457) = ((p_1676->g_477 != (p_1676->g_158[3] , (((*l_428) = (l_432 == l_488)) && p_56))) & (p_1676->g_276[0] ^ ((safe_rshift_func_int8_t_s_u(l_491, 5)) ^ (((*l_485) &= p_55) >= (l_493 = (p_55 , l_492))))))) & p_1676->g_48) && 0x53F5E36EL)), p_1676->g_333)) , p_55);
                    }
                    return (*l_457);
                }
                else
                { /* block id: 264 */
                    if (l_494)
                        break;
                    return p_1676->g_107;
                }
            }
        }
        for (p_1676->g_107 = 0; (p_1676->g_107 <= 7); p_1676->g_107 += 1)
        { /* block id: 272 */
            int32_t *l_497 = (void*)0;
            int32_t l_505 = (-9L);
            int32_t l_506 = 0L;
            uint32_t l_536 = 0x438DFBF6L;
            int32_t *l_539[4] = {&l_535,&l_535,&l_535,&l_535};
            int16_t *l_545 = &l_414[6][5];
            uint32_t l_561 = 0x8C6FB10CL;
            int i;
            if ((safe_rshift_func_uint8_t_u_s(p_1676->g_231, 0)))
            { /* block id: 273 */
                int i;
                p_1676->g_137[p_1676->g_107] = l_497;
                return p_1676->g_300;
            }
            else
            { /* block id: 276 */
                int32_t l_509 = 8L;
                int32_t l_511[7][6] = {{0L,0x50978BF4L,0L,4L,0x50978BF4L,4L},{0L,0x50978BF4L,0L,4L,0x50978BF4L,4L},{0L,0x50978BF4L,0L,4L,0x50978BF4L,4L},{0L,0x50978BF4L,0L,4L,0x50978BF4L,4L},{0L,0x50978BF4L,0L,4L,0x50978BF4L,4L},{0L,0x50978BF4L,0L,4L,0x50978BF4L,4L},{0L,0x50978BF4L,0L,4L,0x50978BF4L,4L}};
                int i, j;
                for (p_56 = 0; (p_56 >= 0); p_56 -= 1)
                { /* block id: 279 */
                    int16_t l_507 = (-1L);
                    int32_t l_508[5];
                    uint32_t *l_519 = &p_1676->g_71;
                    int i;
                    for (i = 0; i < 5; i++)
                        l_508[i] = 0L;
                    for (l_429 = 1; (l_429 <= 7); l_429 += 1)
                    { /* block id: 282 */
                        int32_t *l_498 = (void*)0;
                        int32_t *l_499 = &l_461[0][2][0];
                        int32_t *l_500 = &p_1676->g_64;
                        int32_t *l_501 = &p_1676->g_64;
                        int32_t *l_502 = &p_1676->g_64;
                        int32_t *l_503 = &p_1676->g_64;
                        int32_t *l_504[6][1] = {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}};
                        uint16_t l_512[10] = {9UL,9UL,9UL,9UL,9UL,9UL,9UL,9UL,9UL,9UL};
                        uint8_t *l_520 = (void*)0;
                        uint8_t *l_521 = &p_1676->g_187;
                        int i, j, k;
                        ++l_512[9];
                        (*l_500) = ((p_1676->g_300 = l_461[(p_56 + 1)][l_429][p_56]) , (safe_add_func_int8_t_s_s((l_507 == p_56), ((*l_521) = (p_55 > (safe_rshift_func_int8_t_s_u(((l_519 != ((p_1676->g_422 , ((-1L) >= p_56)) , (void*)0)) < (-1L)), 0)))))));
                    }
                    for (p_1676->g_48 = 0; (p_1676->g_48 <= 0); p_1676->g_48 += 1)
                    { /* block id: 290 */
                        int32_t l_522 = (-8L);
                        int32_t *l_523 = &l_461[(p_1676->g_48 + 1)][p_1676->g_107][p_56];
                        int32_t *l_524 = &p_1676->g_311;
                        int32_t *l_525 = (void*)0;
                        int32_t *l_526 = &l_508[2];
                        int32_t *l_527[6] = {&l_423,&l_423,&l_423,&l_423,&l_423,&l_423};
                        uint32_t l_528 = 6UL;
                        int i, j, k;
                        --l_528;
                    }
                    for (l_510 = 0; (l_510 >= 0); l_510 -= 1)
                    { /* block id: 295 */
                        int32_t *l_531 = &l_506;
                        int32_t *l_532 = &l_506;
                        int32_t *l_533 = &l_420;
                        int32_t *l_534[3][6] = {{&l_510,&l_510,&l_506,&l_461[0][5][0],&l_505,&l_461[0][5][0]},{&l_510,&l_510,&l_506,&l_461[0][5][0],&l_505,&l_461[0][5][0]},{&l_510,&l_510,&l_506,&l_461[0][5][0],&l_505,&l_461[0][5][0]}};
                        int i, j, k;
                        l_536++;
                    }
                }
            }
            l_497 = &l_506;
            --p_1676->g_540;
            (*l_497) = (p_1676->g_44[4][0][5] || (safe_lshift_func_int16_t_s_u((((0x7DE7L & l_461[0][3][0]) , p_1676->g_6) && ((*l_545) = 1L)), 2)));
            for (p_1676->g_48 = 0; (p_1676->g_48 <= 0); p_1676->g_48 += 1)
            { /* block id: 306 */
                int64_t *l_558 = (void*)0;
                int32_t l_563 = 0x69C49E45L;
                for (p_1676->g_97 = 0; (p_1676->g_97 <= 0); p_1676->g_97 += 1)
                { /* block id: 309 */
                    uint64_t *l_562[7] = {&p_1676->g_422,&p_1676->g_422,&p_1676->g_422,&p_1676->g_422,&p_1676->g_422,&p_1676->g_422,&p_1676->g_422};
                    int8_t *l_569 = &l_460;
                    uint8_t *l_570[7] = {(void*)0,&p_1676->g_48,(void*)0,(void*)0,&p_1676->g_48,(void*)0,(void*)0};
                    int i, j, k;
                    l_539[(p_1676->g_97 + 2)] = &l_461[(p_1676->g_97 + 1)][p_1676->g_107][p_1676->g_48];
                    l_563 = ((p_1676->g_276[0] = ((18446744073709551615UL > (safe_rshift_func_int8_t_s_s(((safe_div_func_uint64_t_u_u(((safe_add_func_int16_t_s_s((p_1676->g_158[(p_1676->g_97 + 3)] && ((0x59BE9D5348D72D8FL != (safe_add_func_int8_t_s_s((((p_1676->g_158[(p_1676->g_48 + 4)] , (-1L)) | ((GROUP_DIVERGE(1, 1) & (safe_add_func_int64_t_s_s((((l_558 != (void*)0) < ((!p_1676->g_158[(p_1676->g_48 + 6)]) , (((safe_rshift_func_int8_t_s_u(p_56, 7)) | p_1676->g_81) != l_561))) < (-7L)), p_1676->g_2))) ^ 0x2EL)) , p_56), 0x37L))) && FAKE_DIVERGE(p_1676->group_0_offset, get_group_id(0), 10))), p_1676->g_440)) && (-1L)), 1L)) > (-1L)), 7))) ^ p_1676->g_231)) & GROUP_DIVERGE(1, 1));
                    (*l_457) = (+(((+((0x00L <= ((l_564 | (&l_563 != (void*)0)) == (((safe_rshift_func_int8_t_s_s(0L, 3)) <= (l_563 = (((p_1676->g_158[(p_1676->g_97 + 6)] |= 0x42L) && p_56) & (((*l_569) = (safe_sub_func_uint64_t_u_u((((*l_497) = ((l_569 == (void*)0) & p_56)) && (*l_497)), 0x75D194475376858CL))) <= 7L)))) > p_55))) , p_55)) ^ p_1676->g_311) < 0UL));
                    for (l_510 = 3; (l_510 >= 0); l_510 -= 1)
                    { /* block id: 320 */
                        int32_t l_571 = (-1L);
                        int32_t **l_572 = &p_1676->g_458[2][4][2];
                        int i;
                        (*l_572) = (l_571 , (l_539[p_1676->g_48] = &l_461[(p_1676->g_97 + 1)][p_1676->g_107][p_1676->g_48]));
                        (*l_572) = &l_563;
                        return p_1676->g_187;
                    }
                }
            }
        }
        l_575 = &l_438;
        for (p_56 = 8; (p_56 != 21); p_56++)
        { /* block id: 332 */
            int32_t *l_578 = &l_535;
            uint64_t *l_593 = (void*)0;
            uint64_t *l_594 = (void*)0;
            uint64_t *l_595 = (void*)0;
            uint64_t *l_596 = &p_1676->g_422;
            int32_t ******l_600 = &l_416;
            int32_t *******l_601[10][5] = {{&l_600,&l_600,&l_600,&l_600,&l_600},{&l_600,&l_600,&l_600,&l_600,&l_600},{&l_600,&l_600,&l_600,&l_600,&l_600},{&l_600,&l_600,&l_600,&l_600,&l_600},{&l_600,&l_600,&l_600,&l_600,&l_600},{&l_600,&l_600,&l_600,&l_600,&l_600},{&l_600,&l_600,&l_600,&l_600,&l_600},{&l_600,&l_600,&l_600,&l_600,&l_600},{&l_600,&l_600,&l_600,&l_600,&l_600},{&l_600,&l_600,&l_600,&l_600,&l_600}};
            uint64_t *l_607 = &p_1676->g_276[0];
            int64_t *l_608[6][7] = {{&p_1676->g_231,(void*)0,&p_1676->g_300,(void*)0,&p_1676->g_231,&p_1676->g_231,(void*)0},{&p_1676->g_231,(void*)0,&p_1676->g_300,(void*)0,&p_1676->g_231,&p_1676->g_231,(void*)0},{&p_1676->g_231,(void*)0,&p_1676->g_300,(void*)0,&p_1676->g_231,&p_1676->g_231,(void*)0},{&p_1676->g_231,(void*)0,&p_1676->g_300,(void*)0,&p_1676->g_231,&p_1676->g_231,(void*)0},{&p_1676->g_231,(void*)0,&p_1676->g_300,(void*)0,&p_1676->g_231,&p_1676->g_231,(void*)0},{&p_1676->g_231,(void*)0,&p_1676->g_300,(void*)0,&p_1676->g_231,&p_1676->g_231,(void*)0}};
            int32_t *l_610 = &l_420;
            int i, j;
            l_573 = l_578;
            l_573 = (FAKE_DIVERGE(p_1676->local_1_offset, get_local_id(1), 10) , (l_575 = &l_423));
            return p_1676->g_276[0];
        }
    }
    return p_56;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t ** func_57(uint32_t * p_58, int32_t * p_59, struct S0 * p_1676)
{ /* block id: 203 */
    int8_t l_388 = 0x6CL;
    int32_t *l_389 = &p_1676->g_64;
    int32_t *l_390 = &p_1676->g_64;
    int32_t *l_391 = &p_1676->g_311;
    int32_t *l_392[7][10] = {{&p_1676->g_64,(void*)0,(void*)0,&p_1676->g_6,(void*)0,&p_1676->g_6,(void*)0,(void*)0,&p_1676->g_64,&p_1676->g_64},{&p_1676->g_64,(void*)0,(void*)0,&p_1676->g_6,(void*)0,&p_1676->g_6,(void*)0,(void*)0,&p_1676->g_64,&p_1676->g_64},{&p_1676->g_64,(void*)0,(void*)0,&p_1676->g_6,(void*)0,&p_1676->g_6,(void*)0,(void*)0,&p_1676->g_64,&p_1676->g_64},{&p_1676->g_64,(void*)0,(void*)0,&p_1676->g_6,(void*)0,&p_1676->g_6,(void*)0,(void*)0,&p_1676->g_64,&p_1676->g_64},{&p_1676->g_64,(void*)0,(void*)0,&p_1676->g_6,(void*)0,&p_1676->g_6,(void*)0,(void*)0,&p_1676->g_64,&p_1676->g_64},{&p_1676->g_64,(void*)0,(void*)0,&p_1676->g_6,(void*)0,&p_1676->g_6,(void*)0,(void*)0,&p_1676->g_64,&p_1676->g_64},{&p_1676->g_64,(void*)0,(void*)0,&p_1676->g_6,(void*)0,&p_1676->g_6,(void*)0,(void*)0,&p_1676->g_64,&p_1676->g_64}};
    uint64_t l_393 = 18446744073709551615UL;
    int32_t **l_396 = (void*)0;
    int i, j;
    --l_393;
    return l_396;
}


/* ------------------------------------------ */
/* 
 * reads : p_1676->g_48 p_1676->g_64 p_1676->g_71 p_1676->g_2 p_1676->g_6 p_1676->g_44 p_1676->g_81 p_1676->g_107 p_1676->g_136 p_1676->g_97 p_1676->g_187 p_1676->g_137 p_1676->g_156 p_1676->g_158 p_1676->g_94 p_1676->g_231 p_1676->g_83 p_1676->g_255 p_1676->g_257 p_1676->g_260 p_1676->g_333 p_1676->g_258 p_1676->g_276
 * writes: p_1676->g_48 p_1676->g_64 p_1676->g_71 p_1676->g_81 p_1676->g_83 p_1676->g_97 p_1676->g_107 p_1676->g_136 p_1676->g_156 p_1676->g_158 p_1676->g_94 p_1676->g_231 p_1676->g_257 p_1676->g_260 p_1676->g_276 p_1676->g_300 p_1676->g_311 p_1676->g_333 p_1676->g_137
 */
int32_t * func_61(int64_t  p_62, int32_t * p_63, struct S0 * p_1676)
{ /* block id: 17 */
    uint8_t l_207 = 0x77L;
    int32_t ***l_228 = &p_1676->g_136;
    int32_t ****l_227[8] = {&l_228,&l_228,&l_228,&l_228,&l_228,&l_228,&l_228,&l_228};
    int32_t *****l_259 = &p_1676->g_257[5];
    uint16_t l_285[8][7] = {{65535UL,65535UL,0x3992L,0xE44CL,0x39B6L,0xE44CL,0x3992L},{65535UL,65535UL,0x3992L,0xE44CL,0x39B6L,0xE44CL,0x3992L},{65535UL,65535UL,0x3992L,0xE44CL,0x39B6L,0xE44CL,0x3992L},{65535UL,65535UL,0x3992L,0xE44CL,0x39B6L,0xE44CL,0x3992L},{65535UL,65535UL,0x3992L,0xE44CL,0x39B6L,0xE44CL,0x3992L},{65535UL,65535UL,0x3992L,0xE44CL,0x39B6L,0xE44CL,0x3992L},{65535UL,65535UL,0x3992L,0xE44CL,0x39B6L,0xE44CL,0x3992L},{65535UL,65535UL,0x3992L,0xE44CL,0x39B6L,0xE44CL,0x3992L}};
    int32_t **l_298 = &p_1676->g_137[4];
    uint16_t l_346 = 65535UL;
    int32_t *l_383 = &p_1676->g_6;
    int i, j;
lbl_372:
    for (p_62 = 1; (p_62 >= 0); p_62 -= 1)
    { /* block id: 20 */
        uint32_t l_67 = 4294967295UL;
        int32_t l_236 = 0x0DD7419FL;
        for (p_1676->g_48 = 0; (p_1676->g_48 <= 1); p_1676->g_48 += 1)
        { /* block id: 23 */
            int8_t *l_210 = &p_1676->g_158[1];
            uint8_t *l_211[5];
            int32_t l_212 = 0x0992C6C6L;
            uint16_t *l_221[7][4][9] = {{{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,(void*)0,(void*)0,&p_1676->g_94,&p_1676->g_94},{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,(void*)0,(void*)0,&p_1676->g_94,&p_1676->g_94},{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,(void*)0,(void*)0,&p_1676->g_94,&p_1676->g_94},{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,(void*)0,(void*)0,&p_1676->g_94,&p_1676->g_94}},{{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,(void*)0,(void*)0,&p_1676->g_94,&p_1676->g_94},{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,(void*)0,(void*)0,&p_1676->g_94,&p_1676->g_94},{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,(void*)0,(void*)0,&p_1676->g_94,&p_1676->g_94},{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,(void*)0,(void*)0,&p_1676->g_94,&p_1676->g_94}},{{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,(void*)0,(void*)0,&p_1676->g_94,&p_1676->g_94},{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,(void*)0,(void*)0,&p_1676->g_94,&p_1676->g_94},{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,(void*)0,(void*)0,&p_1676->g_94,&p_1676->g_94},{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,(void*)0,(void*)0,&p_1676->g_94,&p_1676->g_94}},{{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,(void*)0,(void*)0,&p_1676->g_94,&p_1676->g_94},{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,(void*)0,(void*)0,&p_1676->g_94,&p_1676->g_94},{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,(void*)0,(void*)0,&p_1676->g_94,&p_1676->g_94},{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,(void*)0,(void*)0,&p_1676->g_94,&p_1676->g_94}},{{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,(void*)0,(void*)0,&p_1676->g_94,&p_1676->g_94},{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,(void*)0,(void*)0,&p_1676->g_94,&p_1676->g_94},{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,(void*)0,(void*)0,&p_1676->g_94,&p_1676->g_94},{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,(void*)0,(void*)0,&p_1676->g_94,&p_1676->g_94}},{{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,(void*)0,(void*)0,&p_1676->g_94,&p_1676->g_94},{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,(void*)0,(void*)0,&p_1676->g_94,&p_1676->g_94},{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,(void*)0,(void*)0,&p_1676->g_94,&p_1676->g_94},{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,(void*)0,(void*)0,&p_1676->g_94,&p_1676->g_94}},{{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,(void*)0,(void*)0,&p_1676->g_94,&p_1676->g_94},{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,(void*)0,(void*)0,&p_1676->g_94,&p_1676->g_94},{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,(void*)0,(void*)0,&p_1676->g_94,&p_1676->g_94},{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,(void*)0,(void*)0,&p_1676->g_94,&p_1676->g_94}}};
            int32_t l_226 = 0x00A88BD3L;
            int64_t l_229 = 1L;
            int64_t *l_230 = &p_1676->g_231;
            int i, j, k;
            for (i = 0; i < 5; i++)
                l_211[i] = (void*)0;
            for (p_1676->g_64 = 1; (p_1676->g_64 >= 0); p_1676->g_64 -= 1)
            { /* block id: 26 */
                return p_63;
            }
            l_207 = func_65((l_67--), p_1676);
            l_226 = (((*l_210) = (safe_div_func_int32_t_s_s(0L, FAKE_DIVERGE(p_1676->local_0_offset, get_local_id(0), 10)))) & (((*l_230) &= (((l_212 = FAKE_DIVERGE(p_1676->group_1_offset, get_group_id(1), 10)) <= 0xD8L) && ((6L <= (((~((safe_rshift_func_int8_t_s_u((safe_sub_func_int64_t_s_s((safe_sub_func_uint8_t_u_u(((!1UL) & (((safe_add_func_uint64_t_u_u((((l_212 ^= FAKE_DIVERGE(p_1676->global_0_offset, get_global_id(0), 10)) >= (safe_add_func_int8_t_s_s((safe_add_func_int16_t_s_s(((void*)0 == (*p_1676->g_136)), (FAKE_DIVERGE(p_1676->global_0_offset, get_global_id(0), 10) , l_226))), (+3UL)))) < (!(l_226 | p_1676->g_44[1][0][3]))), l_226)) , (void*)0) != l_227[0])), (-1L))), GROUP_DIVERGE(2, 1))), 2)) != p_1676->g_94)) < l_229) > p_62)) | p_1676->g_107))) == p_62));
            for (l_226 = 0; (l_226 <= 1); l_226 += 1)
            { /* block id: 96 */
                int32_t l_232[2][3][5] = {{{0x42FD4E0FL,0x42FD4E0FL,0x42FD4E0FL,0x42FD4E0FL,0x42FD4E0FL},{0x42FD4E0FL,0x42FD4E0FL,0x42FD4E0FL,0x42FD4E0FL,0x42FD4E0FL},{0x42FD4E0FL,0x42FD4E0FL,0x42FD4E0FL,0x42FD4E0FL,0x42FD4E0FL}},{{0x42FD4E0FL,0x42FD4E0FL,0x42FD4E0FL,0x42FD4E0FL,0x42FD4E0FL},{0x42FD4E0FL,0x42FD4E0FL,0x42FD4E0FL,0x42FD4E0FL,0x42FD4E0FL},{0x42FD4E0FL,0x42FD4E0FL,0x42FD4E0FL,0x42FD4E0FL,0x42FD4E0FL}}};
                int i, j, k;
                l_232[0][1][2] ^= 0L;
            }
            for (p_1676->g_94 = 0; (p_1676->g_94 <= 1); p_1676->g_94 += 1)
            { /* block id: 101 */
                int32_t l_235 = 0x6BE06082L;
                int32_t l_237 = 7L;
                int i, j, k;
                if (p_1676->g_44[p_1676->g_48][p_1676->g_48][(p_1676->g_94 + 4)])
                { /* block id: 102 */
                    uint32_t l_238 = 0x591E915DL;
                    for (p_1676->g_83 = (-19); (p_1676->g_83 == (-7)); ++p_1676->g_83)
                    { /* block id: 105 */
                        ++l_238;
                    }
                }
                else
                { /* block id: 108 */
                    int64_t l_253 = 0x68B85D11EB618804L;
                    int32_t l_254[2][9][4] = {{{0L,0x4C90E365L,0x4C90E365L,0L},{0L,0x4C90E365L,0x4C90E365L,0L},{0L,0x4C90E365L,0x4C90E365L,0L},{0L,0x4C90E365L,0x4C90E365L,0L},{0L,0x4C90E365L,0x4C90E365L,0L},{0L,0x4C90E365L,0x4C90E365L,0L},{0L,0x4C90E365L,0x4C90E365L,0L},{0L,0x4C90E365L,0x4C90E365L,0L},{0L,0x4C90E365L,0x4C90E365L,0L}},{{0L,0x4C90E365L,0x4C90E365L,0L},{0L,0x4C90E365L,0x4C90E365L,0L},{0L,0x4C90E365L,0x4C90E365L,0L},{0L,0x4C90E365L,0x4C90E365L,0L},{0L,0x4C90E365L,0x4C90E365L,0L},{0L,0x4C90E365L,0x4C90E365L,0L},{0L,0x4C90E365L,0x4C90E365L,0L},{0L,0x4C90E365L,0x4C90E365L,0L},{0L,0x4C90E365L,0x4C90E365L,0L}}};
                    int i, j, k;
                    l_254[1][7][0] ^= (((safe_mod_func_int64_t_s_s((~l_226), 0x5A12D69996D44F74L)) , (((*l_210) = 0x0EL) || ((&p_1676->g_136 == &p_1676->g_136) && (p_1676->g_94 || ((safe_add_func_uint16_t_u_u(p_62, (safe_mul_func_uint8_t_u_u(0x34L, (safe_rshift_func_int16_t_s_s((safe_add_func_uint32_t_u_u((safe_mod_func_uint32_t_u_u(((p_62 != p_1676->g_94) >= 0xB0ACL), 0x49283E14L)), l_235)), p_1676->g_71)))))) | l_253))))) && p_1676->g_71);
                }
            }
        }
    }
    if ((p_1676->g_260 ^= (p_1676->g_255[9] == ((*l_259) = p_1676->g_257[5]))))
    { /* block id: 117 */
        uint8_t l_271 = 0x13L;
        int32_t l_272 = (-1L);
        uint64_t *l_275 = &p_1676->g_276[0];
        int32_t l_279 = 9L;
        int32_t l_280[2][8][9];
        uint8_t *l_281 = &p_1676->g_48;
        int32_t l_282 = 6L;
        int32_t l_283 = 0x75332A93L;
        int8_t l_284 = 0x4CL;
        int i, j, k;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 8; j++)
            {
                for (k = 0; k < 9; k++)
                    l_280[i][j][k] = 0x19ABDCF0L;
            }
        }
        l_282 ^= ((p_62 || (((p_1676->g_83 == (safe_lshift_func_uint16_t_u_s(p_1676->g_2, (safe_lshift_func_uint8_t_u_s(((*l_281) = (safe_mod_func_int64_t_s_s((l_280[1][0][5] &= (safe_lshift_func_int16_t_s_s(((safe_mod_func_int64_t_s_s(0x4E7201B4DF1B775DL, (((l_272 = (l_271 = (0x1C99BE29L ^ (p_62 ^ p_1676->g_156)))) , 0UL) | (safe_mod_func_int32_t_s_s((+(((((*l_275) = (FAKE_DIVERGE(p_1676->group_2_offset, get_group_id(2), 10) , FAKE_DIVERGE(p_1676->local_0_offset, get_local_id(0), 10))) && (safe_lshift_func_int8_t_s_u(((((p_62 >= 65535UL) == p_62) <= 1UL) , 0x12L), 3))) & p_62) | p_1676->g_6)), 4294967295UL))))) | p_62), l_279))), p_1676->g_231))), l_279))))) != (***l_228)) < FAKE_DIVERGE(p_1676->local_2_offset, get_local_id(2), 10))) != 65535UL);
        l_285[1][2]--;
        return p_63;
    }
    else
    { /* block id: 126 */
        int8_t l_292[8][3][4] = {{{0x1AL,0x4FL,0x1AL,0x1AL},{0x1AL,0x4FL,0x1AL,0x1AL},{0x1AL,0x4FL,0x1AL,0x1AL}},{{0x1AL,0x4FL,0x1AL,0x1AL},{0x1AL,0x4FL,0x1AL,0x1AL},{0x1AL,0x4FL,0x1AL,0x1AL}},{{0x1AL,0x4FL,0x1AL,0x1AL},{0x1AL,0x4FL,0x1AL,0x1AL},{0x1AL,0x4FL,0x1AL,0x1AL}},{{0x1AL,0x4FL,0x1AL,0x1AL},{0x1AL,0x4FL,0x1AL,0x1AL},{0x1AL,0x4FL,0x1AL,0x1AL}},{{0x1AL,0x4FL,0x1AL,0x1AL},{0x1AL,0x4FL,0x1AL,0x1AL},{0x1AL,0x4FL,0x1AL,0x1AL}},{{0x1AL,0x4FL,0x1AL,0x1AL},{0x1AL,0x4FL,0x1AL,0x1AL},{0x1AL,0x4FL,0x1AL,0x1AL}},{{0x1AL,0x4FL,0x1AL,0x1AL},{0x1AL,0x4FL,0x1AL,0x1AL},{0x1AL,0x4FL,0x1AL,0x1AL}},{{0x1AL,0x4FL,0x1AL,0x1AL},{0x1AL,0x4FL,0x1AL,0x1AL},{0x1AL,0x4FL,0x1AL,0x1AL}}};
        int32_t l_340[2][1];
        int i, j, k;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 1; j++)
                l_340[i][j] = 0x39C1D115L;
        }
        if (p_62)
        { /* block id: 127 */
            int64_t *l_293 = &p_1676->g_231;
            int64_t *l_299 = &p_1676->g_300;
            int32_t l_301 = 0L;
            l_301 = (safe_rshift_func_uint8_t_u_s(((safe_rshift_func_uint16_t_u_u(((p_1676->g_97 & ((*l_293) |= l_292[6][2][3])) , ((p_62 | 0x20EAAB44L) , 0x72FBL)), (0x0B56072FF73BCDCAL >= ((*l_299) = (safe_rshift_func_int8_t_s_u((safe_mod_func_int32_t_s_s(((void*)0 == l_298), p_1676->g_2)), (***l_228))))))) <= 0x30B2L), 1));
        }
        else
        { /* block id: 131 */
            int32_t l_316 = 0x5F86E6DCL;
            int8_t l_341 = 0L;
            int32_t l_342 = 0x2E68F09BL;
            int32_t l_343 = 0x661F8264L;
            int32_t l_344 = 0x75B08C5AL;
            int32_t l_345 = 0x69D7F427L;
            int16_t l_366 = (-2L);
            for (p_1676->g_94 = 0; (p_1676->g_94 >= 15); p_1676->g_94 = safe_add_func_int8_t_s_s(p_1676->g_94, 3))
            { /* block id: 134 */
                uint64_t l_304 = 0x8FB7AA1AE933EC5FL;
                int32_t l_335[7][8] = {{2L,2L,2L,2L,2L,2L,2L,2L},{2L,2L,2L,2L,2L,2L,2L,2L},{2L,2L,2L,2L,2L,2L,2L,2L},{2L,2L,2L,2L,2L,2L,2L,2L},{2L,2L,2L,2L,2L,2L,2L,2L},{2L,2L,2L,2L,2L,2L,2L,2L},{2L,2L,2L,2L,2L,2L,2L,2L}};
                int32_t l_368 = 0L;
                int i, j;
                l_304++;
                if (((void*)0 != &p_1676->g_276[0]))
                { /* block id: 136 */
                    uint16_t *l_309 = (void*)0;
                    uint16_t *l_310[7][1] = {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}};
                    int8_t *l_319 = &p_1676->g_158[3];
                    int64_t *l_321 = &p_1676->g_156;
                    int32_t l_330 = 0x3B4FB396L;
                    int16_t *l_331 = &p_1676->g_81;
                    int16_t *l_332 = &p_1676->g_333;
                    int32_t l_336 = 0x1C13B8FAL;
                    int32_t l_339[10] = {0x043406EDL,0x043406EDL,0x043406EDL,0x043406EDL,0x043406EDL,0x043406EDL,0x043406EDL,0x043406EDL,0x043406EDL,0x043406EDL};
                    int i, j;
                    l_316 = ((**p_1676->g_136) , ((safe_add_func_int32_t_s_s(((~0x9670F25AL) ^ l_304), (((65535UL > (p_1676->g_311 = 0xB6B5L)) || (safe_rshift_func_int8_t_s_u((safe_mul_func_uint8_t_u_u(((-1L) || p_1676->g_44[1][0][3]), p_1676->g_187)), p_62))) || p_62))) <= l_292[1][0][3]));
                    if (((safe_mod_func_int8_t_s_s(l_292[6][2][1], ((*l_319) = p_1676->g_260))) , (p_62 , (safe_unary_minus_func_int16_t_s((l_330 = ((*l_332) |= (((void*)0 == l_321) && (safe_div_func_int64_t_s_s((((safe_lshift_func_uint16_t_u_s(p_62, (~((*l_331) = ((safe_mul_func_int16_t_s_s((!p_1676->g_158[3]), ((safe_lshift_func_int16_t_s_s((l_330 != (-5L)), p_62)) != p_62))) < p_1676->g_83))))) ^ GROUP_DIVERGE(0, 1)) != p_62), p_62))))))))))
                    { /* block id: 143 */
                        int32_t l_334 = 0x756EBC41L;
                        int32_t l_337 = 0x2BBC0EFAL;
                        int32_t l_338[9] = {0x68F932CAL,0x68F932CAL,0x68F932CAL,0x68F932CAL,0x68F932CAL,0x68F932CAL,0x68F932CAL,0x68F932CAL,0x68F932CAL};
                        int i;
                        --l_346;
                    }
                    else
                    { /* block id: 145 */
                        (*p_1676->g_136) = (**p_1676->g_258);
                        if (l_339[9])
                            continue;
                    }
                }
                else
                { /* block id: 149 */
                    uint32_t l_361 = 4294967292UL;
                    int16_t *l_367[2][10] = {{(void*)0,(void*)0,&p_1676->g_83,&p_1676->g_83,&p_1676->g_333,&p_1676->g_83,&p_1676->g_83,(void*)0,(void*)0,&p_1676->g_83},{(void*)0,(void*)0,&p_1676->g_83,&p_1676->g_83,&p_1676->g_333,&p_1676->g_83,&p_1676->g_83,(void*)0,(void*)0,&p_1676->g_83}};
                    int32_t l_369 = 0x3E8AA566L;
                    int i, j;
                    l_368 |= (p_62 < (+(p_1676->g_83 = (safe_lshift_func_int16_t_s_u((l_335[0][0] ^= (safe_div_func_uint32_t_u_u((safe_sub_func_uint8_t_u_u(p_62, (((((((safe_add_func_int32_t_s_s((safe_mod_func_int8_t_s_s(((l_340[0][0] ^= p_62) <= (safe_div_func_int8_t_s_s((((((l_361 |= (**p_1676->g_136)) & p_1676->g_2) | p_1676->g_156) || ((l_292[0][0][1] > l_343) , (safe_lshift_func_uint8_t_u_u(((safe_mul_func_uint16_t_u_u((0x5FL > p_1676->g_156), p_1676->g_44[2][0][2])) <= l_366), 5)))) | 0x2AL), (-1L)))), p_1676->g_156)), 4294967295UL)) , (void*)0) != (void*)0) <= p_62) , FAKE_DIVERGE(p_1676->group_1_offset, get_group_id(1), 10)) | p_1676->g_276[0]) || 0x0EL))), (-1L)))), p_1676->g_44[3][1][1])))));
                    l_316 ^= (p_1676->g_48 || 0x58A028EC4BC7899AL);
                    l_369 &= (~(-1L));
                }
                for (l_343 = 20; (l_343 == 19); l_343 = safe_sub_func_uint16_t_u_u(l_343, 4))
                { /* block id: 160 */
                    return p_63;
                }
                if (l_346)
                    goto lbl_372;
            }
        }
        for (p_1676->g_156 = 0; (p_1676->g_156 <= 6); p_1676->g_156 += 1)
        { /* block id: 168 */
            uint32_t l_377 = 0UL;
            for (p_1676->g_107 = 2; (p_1676->g_107 <= 6); p_1676->g_107 += 1)
            { /* block id: 171 */
                int32_t *l_373 = &p_1676->g_64;
                return l_373;
            }
            for (p_1676->g_260 = 0; (p_1676->g_260 <= 9); p_1676->g_260 += 1)
            { /* block id: 176 */
                uint8_t *l_376 = &p_1676->g_44[4][0][2];
                uint8_t **l_375 = &l_376;
                uint8_t ***l_374 = &l_375;
                int i;
                p_1676->g_137[p_1676->g_156] = p_1676->g_137[p_1676->g_156];
                (*l_374) = (void*)0;
            }
            --l_377;
            for (l_377 = 2; (l_377 <= 6); l_377 += 1)
            { /* block id: 183 */
                int32_t *l_380[5][10] = {{&p_1676->g_311,(void*)0,&p_1676->g_6,&p_1676->g_64,&l_340[0][0],&p_1676->g_64,&p_1676->g_6,(void*)0,&p_1676->g_311,&p_1676->g_6},{&p_1676->g_311,(void*)0,&p_1676->g_6,&p_1676->g_64,&l_340[0][0],&p_1676->g_64,&p_1676->g_6,(void*)0,&p_1676->g_311,&p_1676->g_6},{&p_1676->g_311,(void*)0,&p_1676->g_6,&p_1676->g_64,&l_340[0][0],&p_1676->g_64,&p_1676->g_6,(void*)0,&p_1676->g_311,&p_1676->g_6},{&p_1676->g_311,(void*)0,&p_1676->g_6,&p_1676->g_64,&l_340[0][0],&p_1676->g_64,&p_1676->g_6,(void*)0,&p_1676->g_311,&p_1676->g_6},{&p_1676->g_311,(void*)0,&p_1676->g_6,&p_1676->g_64,&l_340[0][0],&p_1676->g_64,&p_1676->g_6,(void*)0,&p_1676->g_311,&p_1676->g_6}};
                int i, j;
                (**l_228) = p_63;
                (*p_1676->g_136) = l_380[1][0];
                for (p_1676->g_333 = 0; (p_1676->g_333 <= 6); p_1676->g_333 += 1)
                { /* block id: 188 */
                    return p_63;
                }
                return p_63;
            }
        }
        for (p_1676->g_333 = (-1); (p_1676->g_333 != 13); ++p_1676->g_333)
        { /* block id: 196 */
            (**l_228) = l_383;
            return p_63;
        }
    }
    return p_63;
}


/* ------------------------------------------ */
/* 
 * reads : p_1676->g_71 p_1676->g_2 p_1676->g_64 p_1676->g_6 p_1676->g_44 p_1676->g_81 p_1676->g_107 p_1676->g_136 p_1676->g_48 p_1676->g_97 p_1676->g_187 p_1676->g_137 p_1676->g_156 p_1676->g_158 p_1676->g_94
 * writes: p_1676->g_71 p_1676->g_81 p_1676->g_83 p_1676->g_97 p_1676->g_107 p_1676->g_64 p_1676->g_136 p_1676->g_156 p_1676->g_158 p_1676->g_94
 */
int32_t  func_65(uint32_t  p_66, struct S0 * p_1676)
{ /* block id: 30 */
    int32_t *l_70[3];
    uint8_t *l_78 = &p_1676->g_48;
    int16_t *l_79 = (void*)0;
    int16_t *l_80 = &p_1676->g_81;
    int16_t *l_82 = &p_1676->g_83;
    int64_t l_90 = 0x2CFEAA3CE9D1BBA4L;
    uint8_t *l_121 = &p_1676->g_107;
    uint8_t **l_120 = &l_121;
    uint32_t *l_122 = &p_1676->g_71;
    int16_t l_125 = (-1L);
    uint32_t l_126[6][9][4] = {{{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L}},{{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L}},{{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L}},{{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L}},{{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L}},{{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L},{0x129FF954L,0x543FBE49L,0UL,0x543FBE49L}}};
    int8_t l_160 = (-8L);
    uint32_t l_161 = 0x02A3EB5BL;
    uint32_t l_172 = 4294967292UL;
    int8_t *l_198 = &l_160;
    int32_t ***l_204 = &p_1676->g_136;
    int32_t ****l_203 = &l_204;
    uint16_t *l_205[2][5][8] = {{{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94},{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94},{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94},{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94},{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94}},{{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94},{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94},{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94},{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94},{&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94}}};
    uint64_t l_206 = 0x58A5ED254771272EL;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_70[i] = &p_1676->g_64;
    --p_1676->g_71;
lbl_174:
    if (((((((*l_82) = (safe_mul_func_int8_t_s_s(0x6DL, ((safe_sub_func_int8_t_s_s(3L, (l_78 != (void*)0))) ^ ((*l_80) = p_66))))) | (safe_sub_func_int32_t_s_s(((safe_sub_func_int8_t_s_s(((p_1676->g_2 & p_1676->g_64) | ((safe_div_func_int32_t_s_s((((p_1676->g_6 != (p_1676->g_44[1][0][3] && p_1676->g_2)) , p_1676->g_44[1][0][3]) , p_66), p_66)) , l_90)), 1L)) < p_66), p_1676->g_6))) <= p_66) ^ p_1676->g_44[2][0][2]) , p_1676->g_71))
    { /* block id: 34 */
        uint16_t *l_93[9] = {&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94,&p_1676->g_94};
        int32_t l_95 = 0x41D31AB1L;
        uint8_t *l_96 = &p_1676->g_97;
        uint32_t *l_105 = &p_1676->g_71;
        uint32_t **l_104 = &l_105;
        uint8_t *l_106 = &p_1676->g_107;
        int i;
        p_1676->g_64 = ((safe_rshift_func_uint8_t_u_u((((*l_80) &= p_66) <= 0x762BL), ((l_95 = p_1676->g_44[1][0][3]) > 0xD9B2L))) > (((&l_70[1] != &l_70[0]) || (((*l_96) = 0xE6L) ^ ((safe_mod_func_int16_t_s_s(((safe_sub_func_uint8_t_u_u(((*l_106) ^= (safe_rshift_func_uint16_t_u_s(p_66, (((*l_104) = l_70[1]) != &p_1676->g_71)))), 1L)) && 4294967288UL), p_66)) >= p_66))) & p_1676->g_2));
    }
    else
    { /* block id: 41 */
        int32_t *l_112 = (void*)0;
        for (p_1676->g_81 = 2; (p_1676->g_81 == (-23)); p_1676->g_81--)
        { /* block id: 44 */
            for (p_1676->g_107 = 10; (p_1676->g_107 == 30); p_1676->g_107 = safe_add_func_uint64_t_u_u(p_1676->g_107, 8))
            { /* block id: 47 */
                int32_t **l_113 = &l_70[2];
                (*l_113) = l_112;
            }
        }
    }
    if ((safe_sub_func_int8_t_s_s((0x07F6L != (((((l_126[1][4][1] &= ((safe_sub_func_uint16_t_u_u((safe_add_func_uint8_t_u_u(((!(((((l_78 == ((*l_120) = l_78)) > (((((l_82 == l_80) || (--(*l_122))) != 0x27L) > (p_66 != ((void*)0 == l_70[1]))) , p_1676->g_6)) | 5UL) & p_1676->g_6) && l_125)) | 0x4CC8L), p_66)), 1L)) == p_66)) == p_66) ^ 0x6A50E264L) , p_1676->g_2) | 0x479BL)), p_66)))
    { /* block id: 55 */
        int32_t **l_135[2][8] = {{&l_70[1],&l_70[0],&l_70[0],&l_70[1],&l_70[1],&l_70[0],&l_70[0],&l_70[1]},{&l_70[1],&l_70[0],&l_70[0],&l_70[1],&l_70[1],&l_70[0],&l_70[0],&l_70[1]}};
        int32_t ***l_138 = &p_1676->g_136;
        uint16_t *l_147 = &p_1676->g_94;
        int64_t *l_155 = &p_1676->g_156;
        int8_t *l_157 = &p_1676->g_158[3];
        uint32_t l_159 = 4294967288UL;
        int i, j;
        l_161 &= (l_160 = ((safe_div_func_int32_t_s_s(p_1676->g_107, (+(safe_sub_func_uint8_t_u_u(((void*)0 == &p_1676->g_48), (((safe_add_func_uint8_t_u_u(((safe_rshift_func_int16_t_s_u((((p_1676->g_71 = (l_135[0][5] != ((*l_138) = p_1676->g_136))) == ((safe_div_func_int8_t_s_s(((*l_157) = (safe_add_func_int32_t_s_s((safe_add_func_uint32_t_u_u((safe_sub_func_uint64_t_u_u(((void*)0 != l_147), (safe_lshift_func_int8_t_s_s((safe_div_func_uint16_t_u_u((&p_1676->g_94 != (((*l_155) = (safe_div_func_uint64_t_u_u((safe_unary_minus_func_uint64_t_u(((p_66 && p_66) || p_66))), 1UL))) , (void*)0)), p_66)), 0)))), p_66)), p_66))), p_1676->g_64)) && l_159)) & p_1676->g_107), 8)) != p_66), p_1676->g_44[3][0][1])) != 0L) <= 255UL)))))) , p_66));
        return p_66;
    }
    else
    { /* block id: 63 */
        int16_t l_184 = 9L;
        int32_t l_188 = 0x51A7C047L;
        uint8_t *l_193 = &p_1676->g_107;
        int32_t l_195 = 0x27F255F0L;
        for (l_160 = 0; (l_160 > 25); l_160 = safe_add_func_int16_t_s_s(l_160, 8))
        { /* block id: 66 */
            uint8_t l_173 = 1UL;
            int32_t l_179 = (-7L);
            int64_t *l_191 = (void*)0;
            int32_t l_192 = 0L;
            int32_t l_194 = 0x0C39DA6AL;
            l_173 = ((safe_rshift_func_int8_t_s_s((9L >= ((safe_sub_func_uint8_t_u_u(p_66, (safe_add_func_int32_t_s_s((safe_rshift_func_int8_t_s_s(p_1676->g_2, ((void*)0 != &p_1676->g_94))), l_172)))) <= p_1676->g_48)), 7)) <= p_1676->g_44[4][1][5]);
            if (l_172)
                goto lbl_174;
            l_195 = (safe_add_func_uint8_t_u_u(p_1676->g_71, (l_194 &= ((((((l_192 |= ((p_66 || (safe_lshift_func_int8_t_s_s(0x1FL, 2))) , ((l_179 ^= 247UL) <= (((safe_div_func_int8_t_s_s((safe_sub_func_int8_t_s_s(p_1676->g_97, l_184)), (safe_add_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), p_1676->g_187)))) | (l_188 = (**p_1676->g_136))) > (((*l_80) = (safe_lshift_func_int8_t_s_s(p_1676->g_6, p_1676->g_156))) , p_66))))) , l_184) && GROUP_DIVERGE(0, 1)) , l_193) != (void*)0) , p_1676->g_44[4][0][0]))));
        }
        for (p_1676->g_71 = 0; (p_1676->g_71 != 46); ++p_1676->g_71)
        { /* block id: 78 */
            return p_66;
        }
    }
    l_206 = ((p_66 , ((*l_198) ^= (p_1676->g_158[6] = p_1676->g_158[1]))) != (((((p_1676->g_94 |= (safe_rshift_func_uint16_t_u_u(((((safe_add_func_int16_t_s_s((((void*)0 == &p_1676->g_48) && p_1676->g_187), ((((((*l_203) = &p_1676->g_136) != &p_1676->g_136) ^ 0x700CL) , 0xE2L) , 0x37D3L))) != 0x3028EE80L) == p_66) > 0xE08B5220E952B729L), p_1676->g_64))) != p_66) <= p_1676->g_64) < p_1676->g_156) , p_1676->g_107));
    return p_66;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_1677;
    struct S0* p_1676 = &c_1677;
    struct S0 c_1678 = {
        3L, // p_1676->g_2
        0L, // p_1676->g_6
        0x5362DAABL, // p_1676->g_8
        2UL, // p_1676->g_21
        {{{0x90L,0x90L,1UL,0x25L,0UL,248UL,0x06L},{0x90L,0x90L,1UL,0x25L,0UL,248UL,0x06L}},{{0x90L,0x90L,1UL,0x25L,0UL,248UL,0x06L},{0x90L,0x90L,1UL,0x25L,0UL,248UL,0x06L}},{{0x90L,0x90L,1UL,0x25L,0UL,248UL,0x06L},{0x90L,0x90L,1UL,0x25L,0UL,248UL,0x06L}},{{0x90L,0x90L,1UL,0x25L,0UL,248UL,0x06L},{0x90L,0x90L,1UL,0x25L,0UL,248UL,0x06L}},{{0x90L,0x90L,1UL,0x25L,0UL,248UL,0x06L},{0x90L,0x90L,1UL,0x25L,0UL,248UL,0x06L}},{{0x90L,0x90L,1UL,0x25L,0UL,248UL,0x06L},{0x90L,0x90L,1UL,0x25L,0UL,248UL,0x06L}}}, // p_1676->g_44
        0xA6L, // p_1676->g_48
        9L, // p_1676->g_64
        0xDFAE38EDL, // p_1676->g_71
        1L, // p_1676->g_81
        0x011EL, // p_1676->g_83
        0x46DAL, // p_1676->g_94
        0UL, // p_1676->g_97
        2UL, // p_1676->g_107
        {&p_1676->g_2,&p_1676->g_6,&p_1676->g_2,&p_1676->g_2,&p_1676->g_6,&p_1676->g_2,&p_1676->g_2,&p_1676->g_6}, // p_1676->g_137
        &p_1676->g_137[4], // p_1676->g_136
        0x117292063B3D75BCL, // p_1676->g_156
        {0L,(-1L),0L,0L,(-1L),0L,0L}, // p_1676->g_158
        0xE0L, // p_1676->g_187
        1L, // p_1676->g_231
        &p_1676->g_136, // p_1676->g_256
        {&p_1676->g_256,&p_1676->g_256,&p_1676->g_256,&p_1676->g_256,&p_1676->g_256,&p_1676->g_256,&p_1676->g_256,&p_1676->g_256,&p_1676->g_256,&p_1676->g_256}, // p_1676->g_255
        &p_1676->g_136, // p_1676->g_258
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1676->g_257
        0x7C32AD57L, // p_1676->g_260
        {0xA36ACEA4BFB77E27L}, // p_1676->g_276
        0x0B4AEAAAD8483F44L, // p_1676->g_300
        (-8L), // p_1676->g_311
        0L, // p_1676->g_333
        1L, // p_1676->g_399
        &p_1676->g_399, // p_1676->g_398
        &p_1676->g_398, // p_1676->g_397
        0xB2EF82F4B32328A2L, // p_1676->g_422
        (void*)0, // p_1676->g_434
        18446744073709551615UL, // p_1676->g_440
        {{{&p_1676->g_6,&p_1676->g_2,&p_1676->g_6,(void*)0,&p_1676->g_2},{&p_1676->g_6,&p_1676->g_2,&p_1676->g_6,(void*)0,&p_1676->g_2},{&p_1676->g_6,&p_1676->g_2,&p_1676->g_6,(void*)0,&p_1676->g_2},{&p_1676->g_6,&p_1676->g_2,&p_1676->g_6,(void*)0,&p_1676->g_2},{&p_1676->g_6,&p_1676->g_2,&p_1676->g_6,(void*)0,&p_1676->g_2}},{{&p_1676->g_6,&p_1676->g_2,&p_1676->g_6,(void*)0,&p_1676->g_2},{&p_1676->g_6,&p_1676->g_2,&p_1676->g_6,(void*)0,&p_1676->g_2},{&p_1676->g_6,&p_1676->g_2,&p_1676->g_6,(void*)0,&p_1676->g_2},{&p_1676->g_6,&p_1676->g_2,&p_1676->g_6,(void*)0,&p_1676->g_2},{&p_1676->g_6,&p_1676->g_2,&p_1676->g_6,(void*)0,&p_1676->g_2}},{{&p_1676->g_6,&p_1676->g_2,&p_1676->g_6,(void*)0,&p_1676->g_2},{&p_1676->g_6,&p_1676->g_2,&p_1676->g_6,(void*)0,&p_1676->g_2},{&p_1676->g_6,&p_1676->g_2,&p_1676->g_6,(void*)0,&p_1676->g_2},{&p_1676->g_6,&p_1676->g_2,&p_1676->g_6,(void*)0,&p_1676->g_2},{&p_1676->g_6,&p_1676->g_2,&p_1676->g_6,(void*)0,&p_1676->g_2}},{{&p_1676->g_6,&p_1676->g_2,&p_1676->g_6,(void*)0,&p_1676->g_2},{&p_1676->g_6,&p_1676->g_2,&p_1676->g_6,(void*)0,&p_1676->g_2},{&p_1676->g_6,&p_1676->g_2,&p_1676->g_6,(void*)0,&p_1676->g_2},{&p_1676->g_6,&p_1676->g_2,&p_1676->g_6,(void*)0,&p_1676->g_2},{&p_1676->g_6,&p_1676->g_2,&p_1676->g_6,(void*)0,&p_1676->g_2}}}, // p_1676->g_458
        0xFA052F83L, // p_1676->g_476
        0x6EC09278L, // p_1676->g_477
        0x0C70F2E8L, // p_1676->g_540
        &p_1676->g_257[5], // p_1676->g_604
        &p_1676->g_604, // p_1676->g_603
        0xD4D7DF2DL, // p_1676->g_618
        1L, // p_1676->g_695
        {{{(void*)0,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,(void*)0,&p_1676->g_136,(void*)0},{(void*)0,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,(void*)0,&p_1676->g_136,(void*)0},{(void*)0,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,(void*)0,&p_1676->g_136,(void*)0},{(void*)0,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,(void*)0,&p_1676->g_136,(void*)0},{(void*)0,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,(void*)0,&p_1676->g_136,(void*)0},{(void*)0,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,(void*)0,&p_1676->g_136,(void*)0},{(void*)0,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,(void*)0,&p_1676->g_136,(void*)0},{(void*)0,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,(void*)0,&p_1676->g_136,(void*)0},{(void*)0,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,(void*)0,&p_1676->g_136,(void*)0}},{{(void*)0,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,(void*)0,&p_1676->g_136,(void*)0},{(void*)0,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,(void*)0,&p_1676->g_136,(void*)0},{(void*)0,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,(void*)0,&p_1676->g_136,(void*)0},{(void*)0,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,(void*)0,&p_1676->g_136,(void*)0},{(void*)0,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,(void*)0,&p_1676->g_136,(void*)0},{(void*)0,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,(void*)0,&p_1676->g_136,(void*)0},{(void*)0,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,(void*)0,&p_1676->g_136,(void*)0},{(void*)0,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,(void*)0,&p_1676->g_136,(void*)0},{(void*)0,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,&p_1676->g_136,(void*)0,&p_1676->g_136,(void*)0}}}, // p_1676->g_785
        65535UL, // p_1676->g_802
        {{(-3L),1L,0x28L,(-8L),0x28L,1L,(-3L),0x36L,(-7L)},{(-3L),1L,0x28L,(-8L),0x28L,1L,(-3L),0x36L,(-7L)},{(-3L),1L,0x28L,(-8L),0x28L,1L,(-3L),0x36L,(-7L)},{(-3L),1L,0x28L,(-8L),0x28L,1L,(-3L),0x36L,(-7L)},{(-3L),1L,0x28L,(-8L),0x28L,1L,(-3L),0x36L,(-7L)},{(-3L),1L,0x28L,(-8L),0x28L,1L,(-3L),0x36L,(-7L)},{(-3L),1L,0x28L,(-8L),0x28L,1L,(-3L),0x36L,(-7L)},{(-3L),1L,0x28L,(-8L),0x28L,1L,(-3L),0x36L,(-7L)}}, // p_1676->g_812
        0x55D61079L, // p_1676->g_873
        1UL, // p_1676->g_874
        0x16F9CAA2L, // p_1676->g_875
        4294967295UL, // p_1676->g_876
        {{0x1DACA4B2L,0UL,4294967291UL,0x2BCD9C65L,9UL,0x2BCD9C65L,4294967291UL,0UL},{0x1DACA4B2L,0UL,4294967291UL,0x2BCD9C65L,9UL,0x2BCD9C65L,4294967291UL,0UL},{0x1DACA4B2L,0UL,4294967291UL,0x2BCD9C65L,9UL,0x2BCD9C65L,4294967291UL,0UL},{0x1DACA4B2L,0UL,4294967291UL,0x2BCD9C65L,9UL,0x2BCD9C65L,4294967291UL,0UL},{0x1DACA4B2L,0UL,4294967291UL,0x2BCD9C65L,9UL,0x2BCD9C65L,4294967291UL,0UL},{0x1DACA4B2L,0UL,4294967291UL,0x2BCD9C65L,9UL,0x2BCD9C65L,4294967291UL,0UL},{0x1DACA4B2L,0UL,4294967291UL,0x2BCD9C65L,9UL,0x2BCD9C65L,4294967291UL,0UL},{0x1DACA4B2L,0UL,4294967291UL,0x2BCD9C65L,9UL,0x2BCD9C65L,4294967291UL,0UL}}, // p_1676->g_877
        4294967294UL, // p_1676->g_878
        0xF6615961L, // p_1676->g_879
        {{5UL,5UL,0x33DD5EEAL},{5UL,5UL,0x33DD5EEAL},{5UL,5UL,0x33DD5EEAL},{5UL,5UL,0x33DD5EEAL},{5UL,5UL,0x33DD5EEAL},{5UL,5UL,0x33DD5EEAL}}, // p_1676->g_880
        0x75709693L, // p_1676->g_881
        4294967294UL, // p_1676->g_882
        4UL, // p_1676->g_883
        {{{1UL,0x7CDC4121L,4294967291UL,1UL,5UL,0x9C5B32A1L,1UL,0x5E6538A7L,0UL},{1UL,0x7CDC4121L,4294967291UL,1UL,5UL,0x9C5B32A1L,1UL,0x5E6538A7L,0UL}},{{1UL,0x7CDC4121L,4294967291UL,1UL,5UL,0x9C5B32A1L,1UL,0x5E6538A7L,0UL},{1UL,0x7CDC4121L,4294967291UL,1UL,5UL,0x9C5B32A1L,1UL,0x5E6538A7L,0UL}},{{1UL,0x7CDC4121L,4294967291UL,1UL,5UL,0x9C5B32A1L,1UL,0x5E6538A7L,0UL},{1UL,0x7CDC4121L,4294967291UL,1UL,5UL,0x9C5B32A1L,1UL,0x5E6538A7L,0UL}},{{1UL,0x7CDC4121L,4294967291UL,1UL,5UL,0x9C5B32A1L,1UL,0x5E6538A7L,0UL},{1UL,0x7CDC4121L,4294967291UL,1UL,5UL,0x9C5B32A1L,1UL,0x5E6538A7L,0UL}},{{1UL,0x7CDC4121L,4294967291UL,1UL,5UL,0x9C5B32A1L,1UL,0x5E6538A7L,0UL},{1UL,0x7CDC4121L,4294967291UL,1UL,5UL,0x9C5B32A1L,1UL,0x5E6538A7L,0UL}},{{1UL,0x7CDC4121L,4294967291UL,1UL,5UL,0x9C5B32A1L,1UL,0x5E6538A7L,0UL},{1UL,0x7CDC4121L,4294967291UL,1UL,5UL,0x9C5B32A1L,1UL,0x5E6538A7L,0UL}}}, // p_1676->g_884
        {0x7E2BF78AL,0x7E2BF78AL,0x7E2BF78AL,0x7E2BF78AL,0x7E2BF78AL,0x7E2BF78AL}, // p_1676->g_885
        4294967290UL, // p_1676->g_886
        0xE060F729L, // p_1676->g_887
        4294967295UL, // p_1676->g_888
        4294967295UL, // p_1676->g_889
        0xD7078536L, // p_1676->g_890
        0xDDDFAA2DL, // p_1676->g_891
        0x0C22D10CL, // p_1676->g_892
        0x7BB7C63FL, // p_1676->g_893
        0x17867013L, // p_1676->g_894
        1UL, // p_1676->g_895
        0xF5326544L, // p_1676->g_896
        0UL, // p_1676->g_897
        {0xA6FC92D1L,0xA6FC92D1L}, // p_1676->g_898
        1UL, // p_1676->g_899
        4294967295UL, // p_1676->g_900
        {{0x570087E3L,0x570087E3L},{0x570087E3L,0x570087E3L},{0x570087E3L,0x570087E3L},{0x570087E3L,0x570087E3L},{0x570087E3L,0x570087E3L},{0x570087E3L,0x570087E3L},{0x570087E3L,0x570087E3L},{0x570087E3L,0x570087E3L},{0x570087E3L,0x570087E3L}}, // p_1676->g_901
        0x93D1C484L, // p_1676->g_902
        0x31C3810BL, // p_1676->g_903
        {0xDD2D0EADL,0xDD2D0EADL,0xDD2D0EADL,0xDD2D0EADL,0xDD2D0EADL,0xDD2D0EADL}, // p_1676->g_904
        0xAEFA4DE5L, // p_1676->g_905
        {{1UL,0xD9968E0BL,0xD9968E0BL,1UL,4294967295UL,5UL,0x672A2928L,0xCE806750L,9UL,0x425925BAL},{1UL,0xD9968E0BL,0xD9968E0BL,1UL,4294967295UL,5UL,0x672A2928L,0xCE806750L,9UL,0x425925BAL},{1UL,0xD9968E0BL,0xD9968E0BL,1UL,4294967295UL,5UL,0x672A2928L,0xCE806750L,9UL,0x425925BAL},{1UL,0xD9968E0BL,0xD9968E0BL,1UL,4294967295UL,5UL,0x672A2928L,0xCE806750L,9UL,0x425925BAL},{1UL,0xD9968E0BL,0xD9968E0BL,1UL,4294967295UL,5UL,0x672A2928L,0xCE806750L,9UL,0x425925BAL},{1UL,0xD9968E0BL,0xD9968E0BL,1UL,4294967295UL,5UL,0x672A2928L,0xCE806750L,9UL,0x425925BAL},{1UL,0xD9968E0BL,0xD9968E0BL,1UL,4294967295UL,5UL,0x672A2928L,0xCE806750L,9UL,0x425925BAL},{1UL,0xD9968E0BL,0xD9968E0BL,1UL,4294967295UL,5UL,0x672A2928L,0xCE806750L,9UL,0x425925BAL}}, // p_1676->g_906
        {{0x06B7D468L,0x796BB842L},{0x06B7D468L,0x796BB842L},{0x06B7D468L,0x796BB842L},{0x06B7D468L,0x796BB842L},{0x06B7D468L,0x796BB842L},{0x06B7D468L,0x796BB842L}}, // p_1676->g_907
        1UL, // p_1676->g_908
        0xB69CD60FL, // p_1676->g_909
        {0x16EF87F2L,0x16EF87F2L,0x16EF87F2L,0x16EF87F2L}, // p_1676->g_910
        8UL, // p_1676->g_911
        {{0xD36F340DL,8UL,0xD36F340DL,0xD36F340DL,8UL,0xD36F340DL,0xD36F340DL,8UL},{0xD36F340DL,8UL,0xD36F340DL,0xD36F340DL,8UL,0xD36F340DL,0xD36F340DL,8UL}}, // p_1676->g_912
        {{{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]}},{{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]}},{{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]}},{{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]}},{{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]}},{{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]},{&p_1676->g_886,(void*)0,&p_1676->g_891,&p_1676->g_898[1]}}}, // p_1676->g_872
        &p_1676->g_872[0][5][0], // p_1676->g_871
        {&p_1676->g_156,&p_1676->g_156,&p_1676->g_156,&p_1676->g_156,&p_1676->g_156,&p_1676->g_156,&p_1676->g_156,&p_1676->g_156,&p_1676->g_156,&p_1676->g_156}, // p_1676->g_1078
        0x9AL, // p_1676->g_1132
        1L, // p_1676->g_1274
        0x594E052FC3A2E083L, // p_1676->g_1364
        &p_1676->g_1364, // p_1676->g_1363
        &p_1676->g_1363, // p_1676->g_1362
        (void*)0, // p_1676->g_1368
        &p_1676->g_1368, // p_1676->g_1367
        0x383CL, // p_1676->g_1490
        18446744073709551615UL, // p_1676->g_1531
        0x6F87L, // p_1676->g_1533
        0x5D56EE4AL, // p_1676->g_1551
        (void*)0, // p_1676->g_1619
        &p_1676->g_1619, // p_1676->g_1618
        sequence_input[get_global_id(0)], // p_1676->global_0_offset
        sequence_input[get_global_id(1)], // p_1676->global_1_offset
        sequence_input[get_global_id(2)], // p_1676->global_2_offset
        sequence_input[get_local_id(0)], // p_1676->local_0_offset
        sequence_input[get_local_id(1)], // p_1676->local_1_offset
        sequence_input[get_local_id(2)], // p_1676->local_2_offset
        sequence_input[get_group_id(0)], // p_1676->group_0_offset
        sequence_input[get_group_id(1)], // p_1676->group_1_offset
        sequence_input[get_group_id(2)], // p_1676->group_2_offset
    };
    c_1677 = c_1678;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1676);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1676->g_2, "p_1676->g_2", print_hash_value);
    transparent_crc(p_1676->g_6, "p_1676->g_6", print_hash_value);
    transparent_crc(p_1676->g_8, "p_1676->g_8", print_hash_value);
    transparent_crc(p_1676->g_21, "p_1676->g_21", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_1676->g_44[i][j][k], "p_1676->g_44[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1676->g_48, "p_1676->g_48", print_hash_value);
    transparent_crc(p_1676->g_64, "p_1676->g_64", print_hash_value);
    transparent_crc(p_1676->g_71, "p_1676->g_71", print_hash_value);
    transparent_crc(p_1676->g_81, "p_1676->g_81", print_hash_value);
    transparent_crc(p_1676->g_83, "p_1676->g_83", print_hash_value);
    transparent_crc(p_1676->g_94, "p_1676->g_94", print_hash_value);
    transparent_crc(p_1676->g_97, "p_1676->g_97", print_hash_value);
    transparent_crc(p_1676->g_107, "p_1676->g_107", print_hash_value);
    transparent_crc(p_1676->g_156, "p_1676->g_156", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1676->g_158[i], "p_1676->g_158[i]", print_hash_value);

    }
    transparent_crc(p_1676->g_187, "p_1676->g_187", print_hash_value);
    transparent_crc(p_1676->g_231, "p_1676->g_231", print_hash_value);
    transparent_crc(p_1676->g_260, "p_1676->g_260", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1676->g_276[i], "p_1676->g_276[i]", print_hash_value);

    }
    transparent_crc(p_1676->g_300, "p_1676->g_300", print_hash_value);
    transparent_crc(p_1676->g_311, "p_1676->g_311", print_hash_value);
    transparent_crc(p_1676->g_333, "p_1676->g_333", print_hash_value);
    transparent_crc(p_1676->g_399, "p_1676->g_399", print_hash_value);
    transparent_crc(p_1676->g_422, "p_1676->g_422", print_hash_value);
    transparent_crc(p_1676->g_440, "p_1676->g_440", print_hash_value);
    transparent_crc(p_1676->g_476, "p_1676->g_476", print_hash_value);
    transparent_crc(p_1676->g_477, "p_1676->g_477", print_hash_value);
    transparent_crc(p_1676->g_540, "p_1676->g_540", print_hash_value);
    transparent_crc(p_1676->g_618, "p_1676->g_618", print_hash_value);
    transparent_crc(p_1676->g_695, "p_1676->g_695", print_hash_value);
    transparent_crc(p_1676->g_802, "p_1676->g_802", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1676->g_812[i][j], "p_1676->g_812[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1676->g_873, "p_1676->g_873", print_hash_value);
    transparent_crc(p_1676->g_874, "p_1676->g_874", print_hash_value);
    transparent_crc(p_1676->g_875, "p_1676->g_875", print_hash_value);
    transparent_crc(p_1676->g_876, "p_1676->g_876", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1676->g_877[i][j], "p_1676->g_877[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1676->g_878, "p_1676->g_878", print_hash_value);
    transparent_crc(p_1676->g_879, "p_1676->g_879", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1676->g_880[i][j], "p_1676->g_880[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1676->g_881, "p_1676->g_881", print_hash_value);
    transparent_crc(p_1676->g_882, "p_1676->g_882", print_hash_value);
    transparent_crc(p_1676->g_883, "p_1676->g_883", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_1676->g_884[i][j][k], "p_1676->g_884[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1676->g_885[i], "p_1676->g_885[i]", print_hash_value);

    }
    transparent_crc(p_1676->g_886, "p_1676->g_886", print_hash_value);
    transparent_crc(p_1676->g_887, "p_1676->g_887", print_hash_value);
    transparent_crc(p_1676->g_888, "p_1676->g_888", print_hash_value);
    transparent_crc(p_1676->g_889, "p_1676->g_889", print_hash_value);
    transparent_crc(p_1676->g_890, "p_1676->g_890", print_hash_value);
    transparent_crc(p_1676->g_891, "p_1676->g_891", print_hash_value);
    transparent_crc(p_1676->g_892, "p_1676->g_892", print_hash_value);
    transparent_crc(p_1676->g_893, "p_1676->g_893", print_hash_value);
    transparent_crc(p_1676->g_894, "p_1676->g_894", print_hash_value);
    transparent_crc(p_1676->g_895, "p_1676->g_895", print_hash_value);
    transparent_crc(p_1676->g_896, "p_1676->g_896", print_hash_value);
    transparent_crc(p_1676->g_897, "p_1676->g_897", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1676->g_898[i], "p_1676->g_898[i]", print_hash_value);

    }
    transparent_crc(p_1676->g_899, "p_1676->g_899", print_hash_value);
    transparent_crc(p_1676->g_900, "p_1676->g_900", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1676->g_901[i][j], "p_1676->g_901[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1676->g_902, "p_1676->g_902", print_hash_value);
    transparent_crc(p_1676->g_903, "p_1676->g_903", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1676->g_904[i], "p_1676->g_904[i]", print_hash_value);

    }
    transparent_crc(p_1676->g_905, "p_1676->g_905", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1676->g_906[i][j], "p_1676->g_906[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1676->g_907[i][j], "p_1676->g_907[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1676->g_908, "p_1676->g_908", print_hash_value);
    transparent_crc(p_1676->g_909, "p_1676->g_909", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1676->g_910[i], "p_1676->g_910[i]", print_hash_value);

    }
    transparent_crc(p_1676->g_911, "p_1676->g_911", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1676->g_912[i][j], "p_1676->g_912[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1676->g_1132, "p_1676->g_1132", print_hash_value);
    transparent_crc(p_1676->g_1274, "p_1676->g_1274", print_hash_value);
    transparent_crc(p_1676->g_1364, "p_1676->g_1364", print_hash_value);
    transparent_crc(p_1676->g_1490, "p_1676->g_1490", print_hash_value);
    transparent_crc(p_1676->g_1531, "p_1676->g_1531", print_hash_value);
    transparent_crc(p_1676->g_1533, "p_1676->g_1533", print_hash_value);
    transparent_crc(p_1676->g_1551, "p_1676->g_1551", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
