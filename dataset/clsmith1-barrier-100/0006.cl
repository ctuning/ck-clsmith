// ---fake_divergence ---inter_thread_comm -g 86,52,2 -l 1,13,2
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

__constant uint32_t permutations[10][26] = {
{8,20,25,0,21,7,19,5,22,23,4,3,16,12,18,2,15,10,9,24,11,13,14,1,17,6}, // permutation 0
{1,24,12,21,9,13,25,16,14,0,20,10,3,22,17,4,2,19,5,15,18,6,7,23,8,11}, // permutation 1
{17,2,25,18,15,8,11,21,9,10,19,23,1,24,20,13,7,12,22,6,4,5,3,14,16,0}, // permutation 2
{2,21,25,5,11,10,23,7,8,6,14,17,15,24,22,16,0,12,20,3,13,9,4,19,1,18}, // permutation 3
{16,10,21,3,17,14,22,9,7,24,0,4,8,25,5,23,1,20,12,11,19,18,13,2,15,6}, // permutation 4
{1,17,3,16,4,14,6,11,21,5,8,10,23,7,25,2,0,18,20,12,13,19,22,24,9,15}, // permutation 5
{10,11,14,18,24,1,25,23,22,3,9,2,19,15,16,0,17,4,21,6,5,8,7,12,13,20}, // permutation 6
{3,11,17,1,4,0,7,12,14,13,8,21,5,20,23,2,16,18,19,24,9,10,6,22,25,15}, // permutation 7
{14,24,22,0,15,9,3,4,11,2,12,20,13,5,23,21,8,1,6,7,25,10,17,16,18,19}, // permutation 8
{8,24,19,18,9,16,10,1,13,4,3,25,22,2,6,20,23,14,0,11,17,5,12,21,15,7} // permutation 9
};

// Seed: 6

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   volatile int32_t  f0;
};

struct S1 {
    int32_t g_3;
    int32_t g_5;
    int32_t g_10;
    volatile int32_t g_11;
    volatile uint32_t g_14;
    volatile uint32_t g_85[10][5];
    int32_t *g_105;
    int8_t g_109[7];
    int32_t g_115;
    int32_t **g_119;
    uint8_t g_137;
    int32_t *g_165;
    uint16_t g_172;
    uint64_t g_174[4];
    uint16_t g_176;
    uint64_t * volatile g_182;
    int32_t g_196[10];
    uint64_t * volatile ** volatile g_237;
    uint64_t * volatile *g_239;
    uint64_t * volatile ** volatile g_238[4][6][8];
    uint16_t *g_246;
    uint16_t **g_245;
    uint16_t *** volatile g_244;
    int16_t g_269;
    int16_t *g_303;
    volatile union U0 g_323[6];
    union U0 g_402;
    volatile int8_t ** volatile * volatile g_436;
    union U0 *g_442[8];
    union U0 ** volatile g_441;
    uint16_t g_469;
    uint32_t *g_495;
    uint32_t **g_494;
    int32_t g_517[7];
    volatile uint32_t g_573;
    volatile union U0 g_626;
    int64_t *g_629[5];
    int64_t *g_630;
    uint32_t g_642;
    union U0 g_655;
    uint8_t g_665;
    union U0 g_702;
    int32_t ** volatile **g_785;
    int32_t ** volatile ** volatile *g_784;
    int32_t ***g_790;
    int16_t g_794[1];
    int64_t g_795;
    volatile union U0 g_814;
    int8_t g_829;
    int8_t g_831;
    int8_t g_833;
    uint32_t g_858[8][9];
    int32_t * volatile g_877[6][7];
    volatile int8_t * volatile * volatile g_912;
    volatile int8_t * volatile * volatile *g_911;
    uint16_t ****g_913;
    int16_t **g_948;
    int16_t ***g_947;
    volatile union U0 g_954;
    uint64_t g_986;
    volatile uint32_t g_1043[10][8];
    union U0 g_1058[3];
    volatile union U0 g_1090;
    int64_t g_1108;
    int32_t g_1111;
    union U0 **g_1119[8];
    uint8_t *g_1131;
    uint8_t **g_1130;
    union U0 g_1150;
    uint32_t g_1171;
    int8_t g_1184;
    int16_t **g_1227[2];
    int16_t g_1232;
    volatile union U0 g_1233;
    union U0 g_1236;
    int8_t g_1239[2];
    int32_t * volatile g_1314[10];
    uint64_t g_1358;
    uint32_t g_1376;
    uint32_t *g_1375[10][7][3];
    uint32_t **g_1374[7];
    volatile union U0 g_1413;
    uint16_t g_1549;
    volatile uint64_t g_1623;
    int64_t g_1631[7];
    volatile int32_t g_1642;
    volatile int32_t *g_1641;
    volatile int32_t **g_1640;
    int8_t *g_1658[7];
    int64_t g_1659;
    int8_t ***g_1666;
    int8_t ****g_1665;
    union U0 g_1685;
    volatile union U0 g_1708;
    int64_t g_1808[5][8];
    volatile int32_t g_1837[5][4][2];
    volatile uint16_t g_1849;
    int32_t g_1889[4];
    volatile int32_t g_1959;
    uint32_t *g_2013;
    volatile uint16_t g_2025[5];
    volatile uint64_t g_2052;
    volatile uint64_t g_2053[8][3];
    volatile uint64_t g_2054[3];
    volatile uint64_t g_2055;
    volatile uint64_t g_2056;
    volatile uint64_t *g_2051[10];
    volatile uint64_t * volatile * volatile g_2050;
    volatile uint64_t * volatile * volatile * volatile g_2049;
    volatile uint64_t * volatile * volatile * volatile *g_2048;
    volatile uint64_t * volatile * volatile * volatile **g_2047;
    uint32_t g_2058[4][5];
    int64_t *g_2141;
    int64_t ** volatile g_2140;
    int32_t *g_2147;
    int32_t **g_2146[2];
    int8_t g_2178;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    uint32_t tid;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
uint32_t  func_1(struct S1 * p_2179);
int32_t  func_18(int32_t * p_19, int32_t  p_20, int64_t  p_21, struct S1 * p_2179);
int32_t * func_22(uint32_t  p_23, uint32_t  p_24, uint32_t  p_25, struct S1 * p_2179);
uint32_t  func_34(int32_t * p_35, int32_t  p_36, int32_t * p_37, uint32_t  p_38, int32_t * p_39, struct S1 * p_2179);
int32_t * func_40(int32_t * p_41, struct S1 * p_2179);
int32_t * func_44(int32_t * p_45, struct S1 * p_2179);
int32_t * func_46(int32_t * p_47, int32_t * p_48, int32_t * p_49, int32_t * p_50, int16_t  p_51, struct S1 * p_2179);
int32_t * func_52(int64_t  p_53, uint64_t  p_54, struct S1 * p_2179);
int32_t * func_56(uint32_t  p_57, struct S1 * p_2179);
int32_t ** func_88(uint32_t  p_89, struct S1 * p_2179);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2179->g_3 p_2179->g_14 p_2179->l_comm_values p_2179->g_11 p_2179->g_5 p_2179->g_85 p_2179->g_comm_values p_2179->g_10 p_2179->g_115 p_2179->g_119 p_2179->g_105 p_2179->g_109 p_2179->g_182 p_2179->g_172 p_2179->g_196 p_2179->g_176 p_2179->g_402 p_2179->g_244 p_2179->g_245 p_2179->g_246 p_2179->g_165 p_2179->g_436 p_2179->g_441 p_2179->g_303 p_2179->g_269 p_2179->g_174 p_2179->g_494 p_2179->g_442 p_2179->g_517 p_2179->g_239 p_2179->g_323 p_2179->g_402.f0 p_2179->g_573 p_2179->g_323.f0 p_2179->g_469 p_2179->g_626 p_2179->g_137 p_2179->g_642 p_2179->g_655 p_2179->g_629 p_2179->g_655.f0 p_2179->g_702 p_2179->g_665 p_2179->g_784 p_2179->g_794 p_2179->g_814 p_2179->g_833 p_2179->g_829 p_2179->g_858 p_2179->g_790 p_2179->g_911 p_2179->g_913 p_2179->g_947 p_2179->g_954 p_2179->g_831 p_2179->g_986 p_2179->g_1043 p_2179->g_1058 p_2179->g_948 p_2179->g_1090 p_2179->g_1108 p_2179->g_1111 p_2179->g_1130 p_2179->g_1150 p_2179->g_1131 p_2179->g_1171 p_2179->g_1184 p_2179->g_1232 p_2179->g_1233 p_2179->g_1236 p_2179->g_1239 p_2179->g_1413 p_2179->g_795 p_2179->g_1623 p_2179->g_1640 p_2179->g_626.f0 p_2179->g_1659 p_2179->g_1665 p_2179->g_1641 p_2179->g_1708 p_2179->g_495 p_2179->g_1631 p_2179->g_1849 p_2179->g_1808 p_2179->g_1889 p_2179->g_1959 p_2179->g_2025 p_2179->g_1837 p_2179->g_2047 p_2179->g_2058 permutations p_2179->g_1549 p_2179->g_1236.f0 p_2179->g_2178
 * writes: p_2179->g_3 p_2179->g_14 p_2179->g_5 p_2179->g_85 p_2179->g_105 p_2179->g_109 p_2179->g_115 p_2179->g_119 p_2179->g_137 p_2179->g_10 p_2179->g_165 p_2179->g_172 p_2179->g_174 p_2179->g_176 p_2179->g_196 p_2179->l_comm_values p_2179->g_442 p_2179->g_573 p_2179->g_269 p_2179->g_629 p_2179->g_630 p_2179->g_642 p_2179->g_665 p_2179->g_790 p_2179->g_794 p_2179->g_795 p_2179->g_469 p_2179->g_829 p_2179->g_831 p_2179->g_833 p_2179->g_858 p_2179->g_913 p_2179->g_947 p_2179->g_517 p_2179->g_1111 p_2179->g_1119 p_2179->g_1130 p_2179->g_1171 p_2179->g_1184 p_2179->g_1108 p_2179->g_948 p_2179->g_1227 p_2179->g_1232 p_2179->g_986 p_2179->g_1374 p_2179->g_1623 p_2179->g_1640 p_2179->g_1658 p_2179->g_1659 p_2179->g_1665 p_2179->g_1849 p_2179->g_1889 p_2179->g_2013 p_2179->g_1239
 */
uint32_t  func_1(struct S1 * p_2179)
{ /* block id: 4 */
    uint64_t l_2[2];
    int32_t l_12 = 0x0AE505B0L;
    int32_t l_13 = 0x2BA75A59L;
    int32_t *l_1178 = &l_13;
    int8_t *l_1183 = &p_2179->g_1184;
    int32_t l_1190 = 0x37E4DEAFL;
    int32_t l_1580 = 0x5B4427EDL;
    int32_t l_1582 = 1L;
    int32_t l_1583 = 0x743F275DL;
    int32_t l_1584 = 0L;
    int32_t l_1586 = 0x64D00F7EL;
    int32_t l_1589 = 1L;
    int32_t l_1591 = 0x487D43E2L;
    uint8_t l_1596 = 0x3EL;
    int16_t **l_1619 = &p_2179->g_303;
    int64_t l_1629 = 0L;
    int32_t l_1630 = 1L;
    int32_t l_1632 = 0x2E241DD0L;
    int32_t l_1633 = 5L;
    int32_t l_1634 = 0x5B275368L;
    int32_t l_1635 = 0x38A18342L;
    int32_t l_1636 = 4L;
    uint64_t l_1637[10][9][2] = {{{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL}},{{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL}},{{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL}},{{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL}},{{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL}},{{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL}},{{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL}},{{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL}},{{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL}},{{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL},{0x4A11A0235259F75DL,0UL}}};
    int32_t l_1709 = (-10L);
    int32_t l_1712 = 0x5D082185L;
    uint32_t l_1774 = 0x91EFF8EFL;
    int16_t l_1820 = 0x44DCL;
    int8_t l_1852 = 1L;
    uint32_t l_1865 = 4UL;
    int16_t l_1866 = 0x6412L;
    int64_t l_1888 = 8L;
    uint32_t **l_1901[10][4] = {{&p_2179->g_1375[0][0][2],(void*)0,&p_2179->g_1375[5][3][0],(void*)0},{&p_2179->g_1375[0][0][2],(void*)0,&p_2179->g_1375[5][3][0],(void*)0},{&p_2179->g_1375[0][0][2],(void*)0,&p_2179->g_1375[5][3][0],(void*)0},{&p_2179->g_1375[0][0][2],(void*)0,&p_2179->g_1375[5][3][0],(void*)0},{&p_2179->g_1375[0][0][2],(void*)0,&p_2179->g_1375[5][3][0],(void*)0},{&p_2179->g_1375[0][0][2],(void*)0,&p_2179->g_1375[5][3][0],(void*)0},{&p_2179->g_1375[0][0][2],(void*)0,&p_2179->g_1375[5][3][0],(void*)0},{&p_2179->g_1375[0][0][2],(void*)0,&p_2179->g_1375[5][3][0],(void*)0},{&p_2179->g_1375[0][0][2],(void*)0,&p_2179->g_1375[5][3][0],(void*)0},{&p_2179->g_1375[0][0][2],(void*)0,&p_2179->g_1375[5][3][0],(void*)0}};
    int64_t l_1902 = (-1L);
    uint8_t l_1903 = 0x6BL;
    uint32_t l_1914[8] = {0xF8B60994L,0xF8B60994L,0xF8B60994L,0xF8B60994L,0xF8B60994L,0xF8B60994L,0xF8B60994L,0xF8B60994L};
    int8_t *****l_1921 = &p_2179->g_1665;
    uint16_t l_1961 = 2UL;
    int64_t l_1976[4][10] = {{0x1C47532359186C9AL,(-1L),0x100790139A8107EBL,1L,0x0177920A21F1409EL,0x0177920A21F1409EL,1L,0x100790139A8107EBL,(-1L),0x1C47532359186C9AL},{0x1C47532359186C9AL,(-1L),0x100790139A8107EBL,1L,0x0177920A21F1409EL,0x0177920A21F1409EL,1L,0x100790139A8107EBL,(-1L),0x1C47532359186C9AL},{0x1C47532359186C9AL,(-1L),0x100790139A8107EBL,1L,0x0177920A21F1409EL,0x0177920A21F1409EL,1L,0x100790139A8107EBL,(-1L),0x1C47532359186C9AL},{0x1C47532359186C9AL,(-1L),0x100790139A8107EBL,1L,0x0177920A21F1409EL,0x0177920A21F1409EL,1L,0x100790139A8107EBL,(-1L),0x1C47532359186C9AL}};
    uint64_t **l_1989 = (void*)0;
    uint64_t ***l_1988 = &l_1989;
    uint64_t ****l_1987 = &l_1988;
    int64_t l_2002 = 0x093AD84D34A62418L;
    uint16_t *****l_2116 = &p_2179->g_913;
    int32_t **l_2145 = (void*)0;
    int32_t *l_2177 = &l_1633;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_2[i] = 0x7E8B72FD4914D2EDL;
lbl_17:
    for (p_2179->g_3 = 1; (p_2179->g_3 >= 0); p_2179->g_3 -= 1)
    { /* block id: 7 */
        int32_t *l_4 = &p_2179->g_5;
        int32_t *l_6 = &p_2179->g_5;
        int32_t *l_7 = &p_2179->g_5;
        int32_t *l_8 = &p_2179->g_5;
        int32_t *l_9[6] = {&p_2179->g_3,&p_2179->g_3,&p_2179->g_3,&p_2179->g_3,&p_2179->g_3,&p_2179->g_3};
        int i;
        --p_2179->g_14;
    }
    for (l_13 = 1; (l_13 >= 0); l_13 -= 1)
    { /* block id: 12 */
        int i;
        for (p_2179->g_3 = 1; (p_2179->g_3 >= 0); p_2179->g_3 -= 1)
        { /* block id: 15 */
            int i;
            return l_2[l_13];
        }
        if (p_2179->g_3)
            goto lbl_17;
        return l_2[l_13];
    }
    if (func_18(func_22((safe_mod_func_uint64_t_u_u((safe_sub_func_int64_t_s_s((((*l_1183) &= (safe_sub_func_uint64_t_u_u(5UL, (safe_mod_func_int16_t_s_s(((func_34(func_40(&l_12, p_2179), ((l_2[0] ^ 0x3293A5B0L) | (safe_lshift_func_int8_t_s_u(p_2179->g_1108, 2))), &l_13, ((safe_add_func_uint8_t_u_u(((0xFF199BE0E1436A0FL < (GROUP_DIVERGE(0, 1) ^ 0xCFE3D72092D7DC91L)) != l_2[1]), l_2[0])) ^ p_2179->g_986), l_1178, p_2179) == l_2[0]) && 1L), l_2[1]))))) <= 0x10L), 0x18C992C9C83979E0L)), l_2[1])), p_2179->g_1108, p_2179->g_986, p_2179), l_1190, p_2179->g_comm_values[p_2179->tid], p_2179))
    { /* block id: 817 */
        int32_t l_1571[3][10] = {{0x177B70FDL,(-1L),0L,(-1L),0x177B70FDL,0x177B70FDL,(-1L),0L,(-1L),0x177B70FDL},{0x177B70FDL,(-1L),0L,(-1L),0x177B70FDL,0x177B70FDL,(-1L),0L,(-1L),0x177B70FDL},{0x177B70FDL,(-1L),0L,(-1L),0x177B70FDL,0x177B70FDL,(-1L),0L,(-1L),0x177B70FDL}};
        int32_t l_1581 = 0L;
        int32_t l_1585 = 0x0CD44335L;
        int32_t l_1587 = 0x0B25EA4EL;
        int32_t l_1588 = 0x7C73BF54L;
        int16_t l_1590 = (-1L);
        uint8_t l_1592 = 250UL;
        uint16_t l_1620 = 65535UL;
        int i, j;
        if (l_1571[0][7])
        { /* block id: 818 */
            uint32_t l_1572 = 3UL;
            return l_1572;
        }
        else
        { /* block id: 820 */
            int32_t *l_1573 = &p_2179->g_115;
            int32_t *l_1574 = &l_12;
            int32_t *l_1575 = (void*)0;
            int32_t *l_1576 = &p_2179->g_3;
            int32_t *l_1577 = &p_2179->g_3;
            int32_t *l_1578 = &p_2179->g_517[2];
            int32_t *l_1579[1][1][4] = {{{&p_2179->g_5,&p_2179->g_5,&p_2179->g_5,&p_2179->g_5}}};
            int8_t l_1595 = 0x1EL;
            int16_t l_1621[10][8][1] = {{{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)}},{{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)}},{{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)}},{{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)}},{{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)}},{{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)}},{{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)}},{{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)}},{{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)}},{{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)}}};
            uint16_t *l_1622[10][2][6] = {{{&p_2179->g_469,&p_2179->g_172,&p_2179->g_469,&p_2179->g_469,&p_2179->g_172,&p_2179->g_469},{&p_2179->g_469,&p_2179->g_172,&p_2179->g_469,&p_2179->g_469,&p_2179->g_172,&p_2179->g_469}},{{&p_2179->g_469,&p_2179->g_172,&p_2179->g_469,&p_2179->g_469,&p_2179->g_172,&p_2179->g_469},{&p_2179->g_469,&p_2179->g_172,&p_2179->g_469,&p_2179->g_469,&p_2179->g_172,&p_2179->g_469}},{{&p_2179->g_469,&p_2179->g_172,&p_2179->g_469,&p_2179->g_469,&p_2179->g_172,&p_2179->g_469},{&p_2179->g_469,&p_2179->g_172,&p_2179->g_469,&p_2179->g_469,&p_2179->g_172,&p_2179->g_469}},{{&p_2179->g_469,&p_2179->g_172,&p_2179->g_469,&p_2179->g_469,&p_2179->g_172,&p_2179->g_469},{&p_2179->g_469,&p_2179->g_172,&p_2179->g_469,&p_2179->g_469,&p_2179->g_172,&p_2179->g_469}},{{&p_2179->g_469,&p_2179->g_172,&p_2179->g_469,&p_2179->g_469,&p_2179->g_172,&p_2179->g_469},{&p_2179->g_469,&p_2179->g_172,&p_2179->g_469,&p_2179->g_469,&p_2179->g_172,&p_2179->g_469}},{{&p_2179->g_469,&p_2179->g_172,&p_2179->g_469,&p_2179->g_469,&p_2179->g_172,&p_2179->g_469},{&p_2179->g_469,&p_2179->g_172,&p_2179->g_469,&p_2179->g_469,&p_2179->g_172,&p_2179->g_469}},{{&p_2179->g_469,&p_2179->g_172,&p_2179->g_469,&p_2179->g_469,&p_2179->g_172,&p_2179->g_469},{&p_2179->g_469,&p_2179->g_172,&p_2179->g_469,&p_2179->g_469,&p_2179->g_172,&p_2179->g_469}},{{&p_2179->g_469,&p_2179->g_172,&p_2179->g_469,&p_2179->g_469,&p_2179->g_172,&p_2179->g_469},{&p_2179->g_469,&p_2179->g_172,&p_2179->g_469,&p_2179->g_469,&p_2179->g_172,&p_2179->g_469}},{{&p_2179->g_469,&p_2179->g_172,&p_2179->g_469,&p_2179->g_469,&p_2179->g_172,&p_2179->g_469},{&p_2179->g_469,&p_2179->g_172,&p_2179->g_469,&p_2179->g_469,&p_2179->g_172,&p_2179->g_469}},{{&p_2179->g_469,&p_2179->g_172,&p_2179->g_469,&p_2179->g_469,&p_2179->g_172,&p_2179->g_469},{&p_2179->g_469,&p_2179->g_172,&p_2179->g_469,&p_2179->g_469,&p_2179->g_172,&p_2179->g_469}}};
            int i, j, k;
            l_1592--;
            l_1596++;
            l_1580 &= ((+(safe_lshift_func_int8_t_s_u((safe_mul_func_int16_t_s_s(((safe_rshift_func_uint8_t_u_s((*l_1178), 0)) , (~(l_1592 || ((*l_1178) = (((*l_1574) != ((l_1620 = (safe_rshift_func_uint16_t_u_u((0xFB30334D84EB071FL < ((safe_add_func_uint8_t_u_u((((*l_1178) , (((safe_mul_func_uint16_t_u_u((safe_lshift_func_int8_t_s_u((*l_1574), 2)), ((*l_1578) > ((*l_1573) >= ((*p_2179->g_303) = (!(safe_mod_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u((*l_1178), 9)), 0xFAF0L)))))))) , l_1619) != (*p_2179->g_947))) >= l_1588), 0x47L)) >= 0x92F785BA49DC143DL)), 5))) != 0x1319L)) , l_1621[9][2][0]))))), l_1588)), GROUP_DIVERGE(1, 1)))) & l_1571[0][3]);
            p_2179->g_1623++;
        }
    }
    else
    { /* block id: 829 */
        int32_t *l_1626 = (void*)0;
        int32_t *l_1627 = &p_2179->g_115;
        int32_t *l_1628[7][3] = {{&p_2179->g_517[0],&l_12,&p_2179->g_3},{&p_2179->g_517[0],&l_12,&p_2179->g_3},{&p_2179->g_517[0],&l_12,&p_2179->g_3},{&p_2179->g_517[0],&l_12,&p_2179->g_3},{&p_2179->g_517[0],&l_12,&p_2179->g_3},{&p_2179->g_517[0],&l_12,&p_2179->g_3},{&p_2179->g_517[0],&l_12,&p_2179->g_3}};
        int8_t *l_1673 = &p_2179->g_831;
        uint8_t l_1674 = 8UL;
        uint32_t l_1675 = 4294967295UL;
        uint8_t l_1731[6] = {0x99L,0x99L,0x99L,0x99L,0x99L,0x99L};
        uint16_t **l_1778 = &p_2179->g_246;
        int32_t l_1796 = (-1L);
        uint16_t l_1802 = 0x39CDL;
        int32_t ****l_1819 = &p_2179->g_790;
        int32_t *****l_1818[7] = {&l_1819,&l_1819,&l_1819,&l_1819,&l_1819,&l_1819,&l_1819};
        int64_t l_1904 = 0x7D1EB605C065BE07L;
        int i, j;
        --l_1637[1][4][1];
        if ((*l_1178))
        { /* block id: 831 */
            volatile int32_t ***l_1643 = (void*)0;
            volatile int32_t ***l_1644 = &p_2179->g_1640;
            int32_t l_1647 = 0x0A8B05F8L;
            uint32_t *l_1660[2][3];
            int8_t *****l_1667 = &p_2179->g_1665;
            int8_t ****l_1668 = &p_2179->g_1666;
            uint8_t l_1711 = 0x2EL;
            int8_t **l_1728 = &p_2179->g_1658[3];
            uint32_t l_1730 = 0UL;
            uint16_t l_1772 = 0UL;
            int16_t l_1780 = 0x5263L;
            uint32_t l_1829 = 0xDF1893EEL;
            uint8_t l_1831 = 0x91L;
            int i, j;
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 3; j++)
                    l_1660[i][j] = (void*)0;
            }
            (*l_1644) = p_2179->g_1640;
            (*p_2179->g_119) = func_56((l_1647 = (((((((p_2179->g_1659 |= ((safe_rshift_func_int8_t_s_s(l_1647, (((((l_1647 || p_2179->g_109[0]) <= ((safe_mod_func_int64_t_s_s((safe_mul_func_uint8_t_u_u((((safe_mul_func_int16_t_s_s(((*p_2179->g_303) ^= (+((safe_add_func_uint32_t_u_u((*l_1178), (*l_1178))) != l_1647))), (*l_1627))) <= (safe_sub_func_uint16_t_u_u(((p_2179->g_1658[1] = &p_2179->g_829) != (void*)0), (*l_1178)))) || (*l_1178)), l_1647)), l_1647)) ^ 65535UL)) , p_2179->g_626.f0) , 0xC4399611L) || p_2179->g_137))) || (*l_1178))) == l_1647) , 0xA6L) && (*p_2179->g_1131)) == p_2179->g_137) | 0x3D63L) || 18446744073709551611UL)), p_2179);
            if ((((((&p_2179->g_239 == (void*)0) <= ((safe_sub_func_int8_t_s_s((((**p_2179->g_1130) < (safe_sub_func_int8_t_s_s((((*l_1667) = p_2179->g_1665) != l_1668), ((l_1635 ^= (((safe_lshift_func_int8_t_s_u((safe_lshift_func_uint16_t_u_s((((l_1647 & 5UL) , (l_1673 == (void*)0)) > 0L), (*l_1178))), 3)) , l_1647) | l_1674)) >= l_1647)))) , 0x00L), (*l_1178))) , (*p_2179->g_303))) <= (*l_1178)) < (*l_1627)) == (*l_1178)))
            { /* block id: 840 */
                int16_t l_1682 = 0x7267L;
                uint16_t *l_1683 = (void*)0;
                uint16_t *l_1684 = &p_2179->g_469;
                int32_t *l_1687[7];
                int32_t **l_1686 = &l_1687[4];
                int32_t l_1688 = 4L;
                uint16_t ******l_1703 = (void*)0;
                uint16_t *****l_1705 = &p_2179->g_913;
                uint16_t ******l_1704 = &l_1705;
                int16_t *l_1706 = (void*)0;
                int16_t *l_1707 = &p_2179->g_794[0];
                int64_t *l_1710[3];
                union U0 **l_1713 = &p_2179->g_442[4];
                int32_t l_1770 = 0x4AA9DBA1L;
                int32_t l_1773 = 0x07B762E6L;
                int32_t l_1775 = 1L;
                int i, j;
                for (i = 0; i < 7; i++)
                    l_1687[i] = &p_2179->g_196[5];
                for (i = 0; i < 3; i++)
                    l_1710[i] = &p_2179->g_1631[0];
                l_1675++;
lbl_1716:
                l_1688 = (((*l_1686) = l_1178) == (*p_2179->g_1640));
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                p_2179->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 26)), permutations[(safe_mod_func_uint32_t_u_u((((((safe_mod_func_int8_t_s_s((safe_sub_func_uint32_t_u_u((*l_1178), ((safe_sub_func_int64_t_s_s((l_1711 = (l_1688 = (safe_mul_func_int8_t_s_s((safe_sub_func_uint64_t_u_u(GROUP_DIVERGE(2, 1), ((&l_1183 == (void*)0) > (0x0BE9L < ((safe_rshift_func_int8_t_s_s((-1L), (safe_add_func_int16_t_s_s((+(((&p_2179->g_913 == ((*l_1704) = &p_2179->g_913)) ^ ((((*l_1707) |= (*p_2179->g_303)) >= (p_2179->g_1708 , l_1647)) , l_1647)) || FAKE_DIVERGE(p_2179->local_2_offset, get_local_id(2), 10))), l_1709)))) , (*l_1178)))))), GROUP_DIVERGE(0, 1))))), FAKE_DIVERGE(p_2179->group_0_offset, get_group_id(0), 10))) , l_1712))), GROUP_DIVERGE(1, 1))) , 4294967295UL) , (void*)0) == l_1713) | 0x35079851D1AA9E03L), 10))][(safe_mod_func_uint32_t_u_u(p_2179->tid, 26))]));
                for (p_2179->g_176 = 0; (p_2179->g_176 < 31); ++p_2179->g_176)
                { /* block id: 854 */
                    uint64_t *l_1719[4];
                    int32_t l_1729 = 9L;
                    int16_t ***l_1748 = (void*)0;
                    uint8_t *l_1769 = &l_1731[1];
                    uint32_t l_1771[10][4] = {{0x8489ED68L,4294967295UL,0xCC5393A3L,0x14497111L},{0x8489ED68L,4294967295UL,0xCC5393A3L,0x14497111L},{0x8489ED68L,4294967295UL,0xCC5393A3L,0x14497111L},{0x8489ED68L,4294967295UL,0xCC5393A3L,0x14497111L},{0x8489ED68L,4294967295UL,0xCC5393A3L,0x14497111L},{0x8489ED68L,4294967295UL,0xCC5393A3L,0x14497111L},{0x8489ED68L,4294967295UL,0xCC5393A3L,0x14497111L},{0x8489ED68L,4294967295UL,0xCC5393A3L,0x14497111L},{0x8489ED68L,4294967295UL,0xCC5393A3L,0x14497111L},{0x8489ED68L,4294967295UL,0xCC5393A3L,0x14497111L}};
                    int i, j;
                    for (i = 0; i < 4; i++)
                        l_1719[i] = &l_2[1];
                    if (p_2179->g_5)
                        goto lbl_1716;
                    (*p_2179->g_105) = (((safe_add_func_int16_t_s_s((0x39L < ((((((l_1719[3] != ((safe_lshift_func_uint8_t_u_u((safe_mul_func_int8_t_s_s(l_1682, (safe_sub_func_int32_t_s_s(((*l_1627) && (safe_sub_func_uint64_t_u_u(((&l_1183 == l_1728) >= (-1L)), (*l_1178)))), l_1729)))), (*p_2179->g_1131))) , l_1710[1])) == l_1729) | l_1730) ^ (*p_2179->g_1131)) , l_1731[4]) | 0xCE5F06F203AC3916L)), l_1647)) | 0x27L) ^ (*l_1178));
                    l_1775 |= (safe_add_func_uint32_t_u_u((safe_div_func_int8_t_s_s((((*l_1686) = &p_2179->g_196[5]) != l_1626), ((((*l_1183) = (((((safe_div_func_uint64_t_u_u((((((safe_lshift_func_uint8_t_u_s((safe_sub_func_uint64_t_u_u(((*p_2179->g_182) = GROUP_DIVERGE(2, 1)), (safe_add_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((safe_mod_func_uint8_t_u_u((l_1773 = ((l_1748 != ((((((*l_1178) = (safe_rshift_func_int16_t_s_s((l_1772 = (safe_sub_func_int16_t_s_s((*p_2179->g_303), (((*l_1673) = ((safe_sub_func_int8_t_s_s((*l_1627), (l_1770 = (((safe_div_func_uint32_t_u_u(((l_1719[2] == ((safe_mod_func_int8_t_s_s((((((((*l_1769) = ((**p_2179->g_1130) ^= ((safe_add_func_int16_t_s_s((((safe_mod_func_int8_t_s_s(((l_1688 = (l_1647 &= l_1711)) ^ ((((safe_mul_func_int8_t_s_s((safe_div_func_uint8_t_u_u(l_1730, (safe_div_func_int8_t_s_s(l_1682, l_1711)))), FAKE_DIVERGE(p_2179->local_2_offset, get_local_id(2), 10))) < l_1729) <= l_1729) , l_1711)), l_1682)) | l_1682) || (*l_1627)), l_1711)) >= l_1711))) | l_1682) , &p_2179->g_858[4][6]) == l_1660[0][1]) == l_1729) || (*l_1178)), l_1729)) , &p_2179->g_1108)) == l_1729), 3L)) & p_2179->g_5) & 8L)))) && (*l_1627))) == l_1771[9][1])))), (*p_2179->g_303)))) , 4L) && l_1729) , l_1729) , (void*)0)) || 0x6EL)), 0x8CL)), l_1774)), l_1730)))), l_1682)) , (*l_1178)) || l_1771[9][1]) <= l_1771[9][1]) ^ l_1730), p_2179->g_196[8])) ^ 0x441EDB3CL) && (*l_1178)) , (*p_2179->g_494)) == l_1627)) , (*l_1178)) ^ 9UL))), (*p_2179->g_105)));
                }
            }
            else
            { /* block id: 871 */
                int8_t l_1801[5] = {0x64L,0x64L,0x64L,0x64L,0x64L};
                uint32_t l_1828 = 0x197A7165L;
                int16_t l_1830 = 0x4D8BL;
                int i;
                (*l_1178) = ((safe_sub_func_uint32_t_u_u((p_2179->g_642 &= ((*p_2179->g_244) != l_1778)), (safe_unary_minus_func_int8_t_s(l_1780)))) || (~(*l_1178)));
                for (p_2179->g_172 = (-8); (p_2179->g_172 != 60); ++p_2179->g_172)
                { /* block id: 876 */
                    int16_t l_1792 = 0L;
                    uint16_t *l_1793 = &l_1772;
                    int64_t *l_1807[10] = {&p_2179->g_1808[4][7],&p_2179->g_1808[4][7],&p_2179->g_1808[4][7],&p_2179->g_1808[4][7],&p_2179->g_1808[4][7],&p_2179->g_1808[4][7],&p_2179->g_1808[4][7],&p_2179->g_1808[4][7],&p_2179->g_1808[4][7],&p_2179->g_1808[4][7]};
                    int32_t l_1809[9] = {0x689D9B1DL,0x6D1E425CL,0x689D9B1DL,0x689D9B1DL,0x6D1E425CL,0x689D9B1DL,0x689D9B1DL,0x6D1E425CL,0x689D9B1DL};
                    uint64_t *l_1824[4] = {&p_2179->g_174[3],&p_2179->g_174[3],&p_2179->g_174[3],&p_2179->g_174[3]};
                    uint64_t **l_1823 = &l_1824[2];
                    uint64_t ***l_1822 = &l_1823;
                    uint64_t ****l_1821 = &l_1822;
                    uint16_t *l_1825 = (void*)0;
                    uint16_t *l_1826 = (void*)0;
                    uint16_t *l_1827 = &p_2179->g_1549;
                    int64_t *l_1832 = &p_2179->g_1631[2];
                    int i;
                    (1 + 1);
                }
            }
        }
        else
        { /* block id: 892 */
            int64_t l_1844 = (-1L);
            int32_t l_1847 = 0x46D1575CL;
            uint16_t ***l_1876 = &l_1778;
            uint16_t ****l_1875[6] = {(void*)0,&l_1876,(void*)0,(void*)0,&l_1876,(void*)0};
            uint64_t l_1881[1];
            uint32_t l_1892 = 1UL;
            uint64_t l_1897 = 4UL;
            uint32_t **l_1900[4] = {&p_2179->g_1375[0][0][2],&p_2179->g_1375[0][0][2],&p_2179->g_1375[0][0][2],&p_2179->g_1375[0][0][2]};
            int32_t *l_1905 = &l_1591;
            int32_t *l_1906 = &l_1635;
            int i;
            for (i = 0; i < 1; i++)
                l_1881[i] = 0x8319DDDC2BC2FB85L;
            for (l_1583 = 7; (l_1583 >= 3); l_1583 -= 1)
            { /* block id: 895 */
                int8_t l_1833[5] = {(-4L),(-4L),(-4L),(-4L),(-4L)};
                int32_t l_1841[6][3] = {{0x3192C7FDL,0x7490C430L,0x3192C7FDL},{0x3192C7FDL,0x7490C430L,0x3192C7FDL},{0x3192C7FDL,0x7490C430L,0x3192C7FDL},{0x3192C7FDL,0x7490C430L,0x3192C7FDL},{0x3192C7FDL,0x7490C430L,0x3192C7FDL},{0x3192C7FDL,0x7490C430L,0x3192C7FDL}};
                int i, j;
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                p_2179->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 26)), permutations[(safe_mod_func_uint32_t_u_u(l_1833[4], 10))][(safe_mod_func_uint32_t_u_u(p_2179->tid, 26))]));
                for (p_2179->g_176 = 0; (p_2179->g_176 <= 6); p_2179->g_176 += 1)
                { /* block id: 901 */
                    int32_t l_1835 = (-1L);
                    int32_t l_1836 = 1L;
                    int32_t l_1839[8] = {0x4E8972FCL,0x4E8972FCL,0x4E8972FCL,0x4E8972FCL,0x4E8972FCL,0x4E8972FCL,0x4E8972FCL,0x4E8972FCL};
                    int i;
                    if (p_2179->g_1631[p_2179->g_176])
                    { /* block id: 902 */
                        int i;
                        (*l_1627) |= (*l_1178);
                    }
                    else
                    { /* block id: 904 */
                        int32_t l_1834 = 0x753340FDL;
                        int32_t l_1838 = (-1L);
                        int32_t l_1840 = (-1L);
                        int32_t l_1842 = 0x6AF8306CL;
                        int32_t l_1843 = 0x76B39120L;
                        int32_t l_1845 = 0x579B90C1L;
                        int32_t l_1846 = 9L;
                        int32_t l_1848 = (-7L);
                        int i;
                        p_2179->g_1849++;
                        if (l_1847)
                            continue;
                        if (l_1852)
                            break;
                    }
                    for (l_1190 = 1; (l_1190 >= 0); l_1190 -= 1)
                    { /* block id: 911 */
                        (*l_1627) = l_1841[5][2];
                        l_1866 |= (((safe_sub_func_uint8_t_u_u(((safe_mul_func_uint8_t_u_u((((((+1L) , (safe_rshift_func_uint8_t_u_s(((safe_mul_func_int16_t_s_s(0x6F70L, (&p_2179->g_10 == ((safe_rshift_func_uint16_t_u_u(l_1841[5][2], 13)) , func_56(p_2179->g_1631[p_2179->g_176], p_2179))))) , ((**p_2179->g_1130) = FAKE_DIVERGE(p_2179->group_2_offset, get_group_id(2), 10))), 4))) != ((*l_1627) = 1L)) & ((void*)0 == (*p_2179->g_494))) , l_1841[1][2]), (*l_1178))) && 4294967295UL), (*l_1178))) == l_1865) , l_1847);
                    }
                }
            }
            l_1881[0] ^= ((l_1847 > (safe_add_func_int8_t_s_s(((**p_2179->g_1130) > ((++(**p_2179->g_239)) && (safe_lshift_func_int8_t_s_u((0x00L || (!0x12L)), ((void*)0 != l_1875[2]))))), l_1844))) && ((((safe_mod_func_uint8_t_u_u(((((safe_mul_func_int8_t_s_s((-7L), (&l_12 == &l_1632))) , (*p_2179->g_1131)) & l_1844) != l_1844), 0x75L)) >= p_2179->g_1808[4][7]) && (-10L)) > (*p_2179->g_303)));
            (*p_2179->g_119) = &l_1847;
            l_1906 = (l_1905 = (p_2179->g_323[4].f0 , func_56(((((safe_add_func_uint16_t_u_u(FAKE_DIVERGE(p_2179->local_0_offset, get_local_id(0), 10), (*p_2179->g_303))) != ((safe_add_func_int32_t_s_s(((l_1903 |= ((((*p_2179->g_182) && (p_2179->g_1889[0] |= (((**p_2179->g_1130) = FAKE_DIVERGE(p_2179->group_0_offset, get_group_id(0), 10)) | (safe_add_func_uint64_t_u_u(l_1881[0], l_1888))))) & ((safe_mod_func_int8_t_s_s(((l_1892 >= ((safe_sub_func_int8_t_s_s((GROUP_DIVERGE(0, 1) , (*l_1178)), (safe_div_func_int8_t_s_s(l_1897, ((*l_1673) = (safe_add_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), ((l_1900[2] = &p_2179->g_1375[6][1][2]) != l_1901[4][3])))))))) != GROUP_DIVERGE(0, 1))) != l_1902), l_1881[0])) ^ 1UL)) , 8UL)) < (*l_1178)), (*l_1627))) ^ l_1904)) , 0x94C8A633184AF2EFL) , 4294967293UL), p_2179)));
        }
        for (l_1852 = 7; (l_1852 != 17); l_1852 = safe_add_func_uint32_t_u_u(l_1852, 7))
        { /* block id: 932 */
            uint32_t l_1909 = 0x196D0414L;
            ++l_1909;
            (*l_1178) = (safe_div_func_uint32_t_u_u(0xB680014AL, l_1909));
            if (l_1909)
                break;
        }
        --l_1914[7];
    }
    if (((safe_mul_func_int8_t_s_s(((void*)0 != &p_2179->g_1130), ((safe_div_func_int16_t_s_s((l_1921 == l_1921), (*l_1178))) < (((*l_1183) |= 0x66L) >= (((*l_1178) , (!(safe_mod_func_int32_t_s_s((safe_add_func_uint8_t_u_u(((**p_2179->g_1130) >= ((*l_1178) , FAKE_DIVERGE(p_2179->local_0_offset, get_local_id(0), 10))), (*l_1178))), (*l_1178))))) || 0x8DL))))) != 0UL))
    { /* block id: 940 */
        int32_t l_1958 = (-2L);
        uint16_t l_1962 = 0x0EEDL;
        int32_t l_1963 = 0x5F50B4FBL;
        for (l_1596 = (-6); (l_1596 > 13); l_1596++)
        { /* block id: 943 */
            int32_t *l_1930 = (void*)0;
            int32_t l_1936 = (-1L);
            uint32_t *l_1977[4][9][7] = {{{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642},{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642},{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642},{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642},{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642},{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642},{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642},{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642},{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642}},{{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642},{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642},{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642},{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642},{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642},{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642},{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642},{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642},{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642}},{{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642},{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642},{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642},{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642},{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642},{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642},{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642},{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642},{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642}},{{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642},{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642},{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642},{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642},{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642},{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642},{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642},{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642},{&l_1914[7],&l_1865,&l_1865,&l_1914[1],&l_1914[7],&p_2179->g_1171,&p_2179->g_642}}};
            int64_t *l_1978 = &p_2179->g_1108;
            int32_t *l_1979 = &l_1636;
            int i, j, k;
            for (l_1635 = (-8); (l_1635 <= 12); l_1635++)
            { /* block id: 946 */
                uint32_t l_1931[4][3] = {{0x7E3F2EB3L,0x7E3F2EB3L,0x7E3F2EB3L},{0x7E3F2EB3L,0x7E3F2EB3L,0x7E3F2EB3L},{0x7E3F2EB3L,0x7E3F2EB3L,0x7E3F2EB3L},{0x7E3F2EB3L,0x7E3F2EB3L,0x7E3F2EB3L}};
                int64_t *l_1960 = &l_1902;
                int i, j;
                (*p_2179->g_119) = l_1930;
                l_1963 |= (l_1931[3][1] | (((safe_rshift_func_uint16_t_u_s(((*l_1178) = (safe_div_func_int32_t_s_s((((l_1936 && 0L) & (safe_mod_func_int32_t_s_s((safe_lshift_func_int16_t_s_s((safe_mod_func_uint8_t_u_u(((safe_add_func_int8_t_s_s(0x12L, ((safe_add_func_uint16_t_u_u((!(safe_mul_func_uint16_t_u_u(((safe_div_func_uint8_t_u_u((--(*p_2179->g_1131)), p_2179->g_469)) & 18446744073709551606UL), ((**p_2179->g_441) , ((p_2179->g_10 , ((*l_1960) ^= ((safe_rshift_func_uint16_t_u_s(GROUP_DIVERGE(1, 1), (safe_sub_func_int32_t_s_s(((+((safe_unary_minus_func_int64_t_s(((246UL == GROUP_DIVERGE(2, 1)) <= l_1958))) >= (*l_1178))) ^ p_2179->g_1959), p_2179->g_115)))) <= l_1931[3][1]))) & l_1958))))), l_1961)) || l_1958))) > p_2179->g_109[2]), l_1931[0][1])), (*p_2179->g_303))), l_1931[3][1]))) >= GROUP_DIVERGE(0, 1)), l_1962))), (*p_2179->g_303))) , p_2179->g_402.f0) , l_1931[3][1]));
                if ((*l_1178))
                    break;
            }
            (*l_1979) ^= (safe_mod_func_int32_t_s_s(((*l_1178) = (((*l_1978) = (FAKE_DIVERGE(p_2179->group_0_offset, get_group_id(0), 10) >= ((((*l_1178) & l_1958) | ((l_1936 >= (l_1963 = ((safe_lshift_func_uint16_t_u_s(0xAB65L, ((safe_add_func_int8_t_s_s((safe_lshift_func_int8_t_s_u(l_1962, 5)), (l_1936 == ((safe_sub_func_int64_t_s_s(((((((*l_1178) ^ 0x17F87057AB5DA4ABL) , (void*)0) != (void*)0) == (*l_1178)) >= l_1976[1][5]), 0x76629737D23CDF24L)) , 0x7A74808DDBBDF9F5L)))) == p_2179->g_402.f0))) , FAKE_DIVERGE(p_2179->group_1_offset, get_group_id(1), 10)))) == l_1958)) , 0xB35AL))) < (*l_1178))), 0x6B6D02F2L));
        }
    }
    else
    { /* block id: 959 */
        uint64_t *l_1998 = (void*)0;
        int32_t l_2000 = 6L;
        int32_t **l_2001[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int8_t l_2014 = 0x1CL;
        uint32_t l_2061 = 0xBE799838L;
        uint16_t **l_2066 = &p_2179->g_246;
        int8_t l_2071 = 0L;
        int16_t l_2113 = (-9L);
        uint8_t ***l_2148[9] = {&p_2179->g_1130,(void*)0,&p_2179->g_1130,&p_2179->g_1130,(void*)0,&p_2179->g_1130,&p_2179->g_1130,(void*)0,&p_2179->g_1130};
        int i;
        for (l_1774 = 0; (l_1774 <= 1); l_1774 += 1)
        { /* block id: 962 */
            uint64_t *l_1985 = &p_2179->g_986;
            uint64_t **l_1984[1];
            uint64_t ***l_1983 = &l_1984[0];
            uint64_t ****l_1982 = &l_1983;
            uint64_t *****l_1986 = &l_1982;
            int64_t *l_1991 = &p_2179->g_1808[4][7];
            int64_t **l_1990 = &l_1991;
            int64_t l_1999 = 0x70B68C50C7B4467FL;
            int32_t l_2035 = (-9L);
            uint32_t l_2044 = 0x6691CFE0L;
            int16_t ****l_2081 = &p_2179->g_947;
            int32_t l_2082 = 0x5A0FBD7CL;
            int64_t *l_2112[2][2][9] = {{{&l_1999,&l_2002,&l_1902,&l_2002,&l_2002,&l_2002,&l_1902,&l_2002,&l_1999},{&l_1999,&l_2002,&l_1902,&l_2002,&l_2002,&l_2002,&l_1902,&l_2002,&l_1999}},{{&l_1999,&l_2002,&l_1902,&l_2002,&l_2002,&l_2002,&l_1902,&l_2002,&l_1999},{&l_1999,&l_2002,&l_1902,&l_2002,&l_2002,&l_2002,&l_1902,&l_2002,&l_1999}}};
            int8_t l_2129 = 1L;
            int8_t l_2166 = (-1L);
            int32_t *l_2176 = &l_1584;
            int i, j, k;
            for (i = 0; i < 1; i++)
                l_1984[i] = &l_1985;
            if ((((safe_rshift_func_uint16_t_u_u((((*l_1178) ^= p_2179->g_174[(l_1774 + 2)]) | p_2179->g_174[(l_1774 + 2)]), 3)) != ((0x3DE2L != ((((*l_1986) = l_1982) == l_1987) , (&p_2179->g_1808[1][7] == ((*l_1990) = l_1985)))) != p_2179->g_174[(l_1774 + 2)])) > (safe_lshift_func_uint16_t_u_s(((safe_sub_func_int8_t_s_s(((((((safe_sub_func_int16_t_s_s((l_1999 = ((**l_1619) = (((l_1998 != l_1998) || p_2179->g_174[(l_1774 + 2)]) < 0x4127EB846FE26DBAL))), 0x95DCL)) & p_2179->g_1108) != GROUP_DIVERGE(2, 1)) && l_2000) , l_2001[3]) == (void*)0), (-6L))) || 0L), p_2179->g_174[(l_1774 + 2)]))))
            { /* block id: 968 */
                int32_t l_2005 = 0x652E43DBL;
                if (l_2002)
                    break;
                for (l_1583 = 1; (l_1583 >= 0); l_1583 -= 1)
                { /* block id: 972 */
                    uint8_t l_2008 = 0x7CL;
                    uint32_t *l_2012[6] = {&p_2179->g_858[7][3],&p_2179->g_858[7][3],&p_2179->g_858[7][3],&p_2179->g_858[7][3],&p_2179->g_858[7][3],&p_2179->g_858[7][3]};
                    uint32_t **l_2011 = &l_2012[4];
                    uint32_t *l_2034 = &l_1865;
                    int8_t *l_2036 = &p_2179->g_829;
                    int i, j;
                    (*l_1178) &= ((safe_sub_func_int32_t_s_s((((p_2179->g_174[(l_1774 + 2)] < (**p_2179->g_239)) | 65529UL) ^ l_2005), ((((!(safe_mul_func_int8_t_s_s(l_2008, (p_2179->g_1239[l_1774] = (safe_sub_func_int64_t_s_s(1L, ((p_2179->g_2013 = ((*l_2011) = (void*)0)) != (l_2005 , (void*)0)))))))) >= l_2014) , 1UL) & l_2008))) > p_2179->g_174[(l_1774 + 2)]);
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    p_2179->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 26)), permutations[(safe_mod_func_uint32_t_u_u((((((*p_2179->g_1131) > ((void*)0 != &p_2179->g_1375[0][0][1])) ^ (&p_2179->g_785 == (void*)0)) == p_2179->g_1239[l_1774]) ^ ((*l_1183) |= (0x1792L || l_2005))), 10))][(safe_mod_func_uint32_t_u_u(p_2179->tid, 26))]));
                    (*l_1178) = (safe_mul_func_int8_t_s_s(((safe_lshift_func_uint8_t_u_u((*p_2179->g_1131), ((safe_mod_func_int8_t_s_s((safe_mod_func_uint16_t_u_u((l_1999 , (safe_sub_func_uint32_t_u_u(p_2179->g_2025[2], (((*l_2036) ^= (((((safe_lshift_func_int8_t_s_s(((safe_add_func_int16_t_s_s((safe_div_func_int16_t_s_s((*l_1178), (safe_mod_func_uint32_t_u_u(((!((*l_2034) = (0UL && (1UL > (0x84L && (**p_2179->g_1130)))))) && ((*l_2034) ^= p_2179->g_137)), p_2179->g_174[(l_1774 + 2)])))), 0x1A80L)) >= GROUP_DIVERGE(0, 1)), 6)) & l_1999) < 0L) < l_2035) >= 0x4F8B874BL)) , 0x2A6CA0CEL)))), (*l_1178))), 0x08L)) & l_2008))) && l_2005), (*p_2179->g_1131)));
                    for (l_1635 = 0; (l_1635 <= 1); l_1635 += 1)
                    { /* block id: 987 */
                        int32_t l_2039 = 0x04D23765L;
                        uint16_t l_2057[7] = {0xC4EEL,0xC4EEL,0xC4EEL,0xC4EEL,0xC4EEL,0xC4EEL,0xC4EEL};
                        int16_t *l_2059 = &p_2179->g_794[0];
                        int16_t *l_2060[6][2] = {{&p_2179->g_1232,&p_2179->g_1232},{&p_2179->g_1232,&p_2179->g_1232},{&p_2179->g_1232,&p_2179->g_1232},{&p_2179->g_1232,&p_2179->g_1232},{&p_2179->g_1232,&p_2179->g_1232},{&p_2179->g_1232,&p_2179->g_1232}};
                        uint16_t *l_2062 = &p_2179->g_172;
                        int i, j, k;
                        (*l_1178) = (safe_mul_func_int8_t_s_s((((((*l_2062) = (((p_2179->g_1837[(l_1635 + 2)][(l_1635 + 2)][l_1774] > (l_2061 = ((*l_2059) = ((((l_2005 && (((**l_1619) = ((l_2039 != (&l_1982 == (((safe_lshift_func_int8_t_s_u(((((safe_mod_func_int8_t_s_s(l_2044, (*l_1178))) >= (((****l_1982)++) | (1L == (*p_2179->g_303)))) && 0x7CA1L) & (*l_1178)), FAKE_DIVERGE(p_2179->local_0_offset, get_local_id(0), 10))) , (*l_1178)) , p_2179->g_2047))) > 0x4F031B10L)) == l_2057[5])) ^ (*l_1178)) & p_2179->g_2058[3][2]) | l_2005)))) < l_2039) || 4294967295UL)) , p_2179->g_1239[l_1774]) > (*l_1178)) ^ 0x1F0EL), (**p_2179->g_1130)));
                    }
                }
            }
            else
            { /* block id: 996 */
                uint16_t *l_2072 = &p_2179->g_469;
                int16_t ****l_2104[10];
                int i, j;
                for (i = 0; i < 10; i++)
                    l_2104[i] = (void*)0;
                for (l_2002 = 3; (l_2002 >= 0); l_2002 -= 1)
                { /* block id: 999 */
                    int32_t l_2064 = 3L;
                    uint32_t l_2065 = 0xB8E2A662L;
                    int32_t l_2068 = 3L;
                    int i;
                    for (p_2179->g_665 = 0; (p_2179->g_665 <= 4); p_2179->g_665 += 1)
                    { /* block id: 1002 */
                        int32_t *l_2063 = &l_12;
                        int i, j;
                        (*p_2179->g_119) = l_2063;
                        if (p_2179->g_1808[l_2002][(l_1774 + 6)])
                            continue;
                        if (p_2179->g_1808[p_2179->g_665][(l_1774 + 1)])
                            break;
                    }
                    p_2179->g_1889[l_2002] &= (l_2064 , l_2065);
                    for (l_1591 = 0; (l_1591 <= 3); l_1591 += 1)
                    { /* block id: 1010 */
                        int i;
                        if (p_2179->g_1889[(l_1774 + 1)])
                            break;
                    }
                    for (l_1190 = 1; (l_1190 >= 0); l_1190 -= 1)
                    { /* block id: 1015 */
                        uint16_t ***l_2067 = &l_2066;
                        (*l_1178) = ((*p_2179->g_244) != ((*l_2067) = l_2066));
                        return l_2068;
                    }
                }
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                p_2179->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 26)), permutations[(safe_mod_func_uint32_t_u_u(1UL, 10))][(safe_mod_func_uint32_t_u_u(p_2179->tid, 26))]));
                (*l_1178) = (safe_rshift_func_uint8_t_u_s(1UL, (l_2082 = (((((*l_2072) = (~l_2071)) , (safe_mod_func_int16_t_s_s((*l_1178), (safe_div_func_uint8_t_u_u((safe_unary_minus_func_int8_t_s(p_2179->g_174[(l_1774 + 2)])), permutations[(safe_mod_func_uint32_t_u_u(1UL, 10))][(safe_mod_func_uint32_t_u_u(p_2179->tid, 26))]))))) < 3UL) < (permutations[(safe_mod_func_uint32_t_u_u(1UL, 10))][(safe_mod_func_uint32_t_u_u(p_2179->tid, 26))] | ((***l_1983) = (safe_mul_func_int8_t_s_s(((1UL != (safe_unary_minus_func_int64_t_s((((((void*)0 == l_2072) , (void*)0) == l_2081) | 0x7668EA8FD6C63221L)))) == permutations[(safe_mod_func_uint32_t_u_u(1UL, 10))][(safe_mod_func_uint32_t_u_u(p_2179->tid, 26))]), 255UL))))))));
                for (p_2179->g_469 = 0; (p_2179->g_469 <= 6); p_2179->g_469 += 1)
                { /* block id: 1030 */
                    int64_t l_2106[10];
                    int i;
                    for (i = 0; i < 10; i++)
                        l_2106[i] = (-8L);
                    for (l_1596 = 0; (l_1596 <= 6); l_1596 += 1)
                    { /* block id: 1033 */
                        int32_t l_2083 = (-1L);
                        int32_t l_2084 = 0x21150147L;
                        uint16_t *l_2095 = &p_2179->g_176;
                        uint16_t *****l_2105 = &p_2179->g_913;
                        l_2084 |= ((*l_1178) = l_2083);
                        l_2106[6] ^= ((safe_mod_func_uint64_t_u_u((safe_mod_func_uint64_t_u_u(((((((safe_div_func_uint64_t_u_u((safe_add_func_int64_t_s_s(((((&p_2179->g_1375[0][0][2] != &p_2179->g_1375[0][0][2]) , (((((*l_2095) = l_2083) && (safe_sub_func_int8_t_s_s(0x7AL, (**p_2179->g_1130)))) & ((**p_2179->g_1130) == ((safe_rshift_func_int16_t_s_s((*p_2179->g_303), 0)) > (((safe_mul_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u(0xA331L, l_2084)), (*l_1178))) , l_2104[3]) == &p_2179->g_947)))) , 0x096152EFL)) , 65527UL) & permutations[(safe_mod_func_uint32_t_u_u(1UL, 10))][(safe_mod_func_uint32_t_u_u(p_2179->tid, 26))]), permutations[(safe_mod_func_uint32_t_u_u(1UL, 10))][(safe_mod_func_uint32_t_u_u(p_2179->tid, 26))])), permutations[(safe_mod_func_uint32_t_u_u(1UL, 10))][(safe_mod_func_uint32_t_u_u(p_2179->tid, 26))])) , l_2105) != &p_2179->g_913) <= 0x48L) , 0x31L) | (-6L)), permutations[(safe_mod_func_uint32_t_u_u(1UL, 10))][(safe_mod_func_uint32_t_u_u(p_2179->tid, 26))])), l_2084)) > permutations[(safe_mod_func_uint32_t_u_u(1UL, 10))][(safe_mod_func_uint32_t_u_u(p_2179->tid, 26))]);
                        if ((*l_1178))
                            continue;
                        return permutations[(safe_mod_func_uint32_t_u_u(1UL, 10))][(safe_mod_func_uint32_t_u_u(p_2179->tid, 26))];
                    }
                    return p_2179->g_174[(l_1774 + 2)];
                }
            }
            (*l_1178) = (safe_unary_minus_func_int16_t_s((252UL ^ ((safe_lshift_func_uint16_t_u_s(GROUP_DIVERGE(0, 1), (!(((((*****l_1986) ^= 18446744073709551615UL) > (l_2113 &= (l_1999 || 0UL))) == ((**p_2179->g_239) = (l_2082 = ((l_2035 <= ((((safe_lshift_func_int8_t_s_s((l_2116 == (void*)0), (*l_1178))) || 0x04CDL) , p_2179->g_1549) , (*l_1178))) != p_2179->g_1236.f0)))) ^ (*l_1178))))) < 0x353BB8E87DE450C1L))));
            for (l_1961 = 0; (l_1961 <= 1); l_1961 += 1)
            { /* block id: 1051 */
                uint32_t l_2119 = 4294967295UL;
                int32_t l_2139 = 1L;
                int32_t l_2174 = 1L;
                (1 + 1);
            }
        }
    }
    return p_2179->g_2178;
}


/* ------------------------------------------ */
/* 
 * reads : p_2179->g_948 p_2179->g_303 p_2179->g_269 p_2179->g_642 p_2179->g_1131 p_2179->g_665 p_2179->g_1108 p_2179->g_947 p_2179->g_829 p_2179->g_1232 p_2179->g_517 p_2179->g_1233 p_2179->g_1171 p_2179->g_1236 p_2179->g_182 p_2179->g_174 p_2179->g_1239 p_2179->g_239 p_2179->g_11 p_2179->l_comm_values p_2179->g_5 p_2179->g_119 p_2179->g_858 p_2179->g_176 p_2179->g_833 p_2179->g_1130 p_2179->g_10 p_2179->g_1413 p_2179->g_795 p_2179->g_105 p_2179->g_441 p_2179->g_442
 * writes: p_2179->g_642 p_2179->g_1108 p_2179->g_665 p_2179->g_137 p_2179->g_948 p_2179->g_1227 p_2179->g_829 p_2179->g_1232 p_2179->g_517 p_2179->g_1171 p_2179->g_5 p_2179->g_105 p_2179->g_1111 p_2179->g_986 p_2179->g_833 p_2179->g_269 p_2179->g_174 p_2179->g_176 p_2179->g_831 p_2179->g_165 p_2179->g_10 p_2179->g_1374 p_2179->g_172 p_2179->g_469 p_2179->g_795
 */
int32_t  func_18(int32_t * p_19, int32_t  p_20, int64_t  p_21, struct S1 * p_2179)
{ /* block id: 616 */
    int32_t l_1191 = 0x70D13F17L;
    int32_t l_1215[3];
    int32_t l_1219 = 0x6AAA29F8L;
    int32_t ***l_1340[10] = {&p_2179->g_119,&p_2179->g_119,&p_2179->g_119,&p_2179->g_119,&p_2179->g_119,&p_2179->g_119,&p_2179->g_119,&p_2179->g_119,&p_2179->g_119,&p_2179->g_119};
    uint32_t l_1367[9][4][5] = {{{1UL,0UL,0UL,1UL,0x11D79120L},{1UL,0UL,0UL,1UL,0x11D79120L},{1UL,0UL,0UL,1UL,0x11D79120L},{1UL,0UL,0UL,1UL,0x11D79120L}},{{1UL,0UL,0UL,1UL,0x11D79120L},{1UL,0UL,0UL,1UL,0x11D79120L},{1UL,0UL,0UL,1UL,0x11D79120L},{1UL,0UL,0UL,1UL,0x11D79120L}},{{1UL,0UL,0UL,1UL,0x11D79120L},{1UL,0UL,0UL,1UL,0x11D79120L},{1UL,0UL,0UL,1UL,0x11D79120L},{1UL,0UL,0UL,1UL,0x11D79120L}},{{1UL,0UL,0UL,1UL,0x11D79120L},{1UL,0UL,0UL,1UL,0x11D79120L},{1UL,0UL,0UL,1UL,0x11D79120L},{1UL,0UL,0UL,1UL,0x11D79120L}},{{1UL,0UL,0UL,1UL,0x11D79120L},{1UL,0UL,0UL,1UL,0x11D79120L},{1UL,0UL,0UL,1UL,0x11D79120L},{1UL,0UL,0UL,1UL,0x11D79120L}},{{1UL,0UL,0UL,1UL,0x11D79120L},{1UL,0UL,0UL,1UL,0x11D79120L},{1UL,0UL,0UL,1UL,0x11D79120L},{1UL,0UL,0UL,1UL,0x11D79120L}},{{1UL,0UL,0UL,1UL,0x11D79120L},{1UL,0UL,0UL,1UL,0x11D79120L},{1UL,0UL,0UL,1UL,0x11D79120L},{1UL,0UL,0UL,1UL,0x11D79120L}},{{1UL,0UL,0UL,1UL,0x11D79120L},{1UL,0UL,0UL,1UL,0x11D79120L},{1UL,0UL,0UL,1UL,0x11D79120L},{1UL,0UL,0UL,1UL,0x11D79120L}},{{1UL,0UL,0UL,1UL,0x11D79120L},{1UL,0UL,0UL,1UL,0x11D79120L},{1UL,0UL,0UL,1UL,0x11D79120L},{1UL,0UL,0UL,1UL,0x11D79120L}}};
    union U0 *l_1371 = (void*)0;
    uint8_t l_1393 = 4UL;
    int16_t **l_1409 = &p_2179->g_303;
    int32_t l_1427 = (-6L);
    uint16_t *l_1443 = (void*)0;
    uint16_t *l_1444 = (void*)0;
    uint16_t *l_1445 = &p_2179->g_469;
    uint16_t **l_1450 = (void*)0;
    uint8_t l_1451 = 0UL;
    uint64_t *l_1452 = &p_2179->g_174[2];
    int8_t ***l_1478 = (void*)0;
    int32_t l_1498 = 0x6384742BL;
    int16_t l_1500 = 0x3579L;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_1215[i] = 0x2DD0D12FL;
    if (l_1191)
    { /* block id: 617 */
        int64_t l_1204 = 0x0D3792E8A120F4DBL;
        uint32_t *l_1216 = &p_2179->g_642;
        int64_t *l_1217 = (void*)0;
        int64_t *l_1218 = &p_2179->g_1108;
        uint8_t l_1249[9] = {0x45L,0x45L,0x45L,0x45L,0x45L,0x45L,0x45L,0x45L,0x45L};
        int32_t l_1310[4] = {0x0D40425AL,0x0D40425AL,0x0D40425AL,0x0D40425AL};
        int i;
        if (((l_1215[0] = ((*l_1218) &= (((safe_lshift_func_int8_t_s_u((safe_add_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u((((((~(((safe_mod_func_int64_t_s_s((safe_add_func_uint32_t_u_u(((*l_1216) ^= ((FAKE_DIVERGE(p_2179->group_2_offset, get_group_id(2), 10) , (safe_lshift_func_uint16_t_u_u((p_20 , p_21), (l_1204 , (safe_rshift_func_int16_t_s_s((~(1UL && ((l_1191 = (safe_lshift_func_uint8_t_u_s(5UL, 5))) & (safe_lshift_func_uint8_t_u_s(((((18446744073709551612UL || (safe_lshift_func_int8_t_s_s((&p_2179->g_442[5] != (void*)0), (safe_div_func_int64_t_s_s(((((252UL || l_1215[0]) > 4L) > 0x403CL) != l_1215[0]), p_20))))) > (**p_2179->g_948)) , (-1L)) | l_1204), p_20))))), 13)))))) <= l_1215[1])), p_20)), 0x5A197B9A568EC71FL)) | l_1215[0]) & 0xF00B4499193E6DDEL)) , &p_2179->g_785) == &p_2179->g_785) >= l_1215[0]) , (*p_2179->g_1131)), 6)), p_20)), GROUP_DIVERGE(0, 1))) < 0xAFL) && 4L))) != l_1219))
        { /* block id: 622 */
            return l_1215[0];
        }
        else
        { /* block id: 624 */
            int16_t **l_1228[6];
            int i;
            for (i = 0; i < 6; i++)
                l_1228[i] = (void*)0;
            for (l_1204 = 0; (l_1204 == 22); l_1204 = safe_add_func_uint32_t_u_u(l_1204, 4))
            { /* block id: 627 */
                int32_t l_1222 = 0x222F7943L;
                uint8_t *l_1223 = &p_2179->g_137;
                int16_t **l_1226[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int8_t *l_1229[2];
                int i;
                for (i = 0; i < 2; i++)
                    l_1229[i] = &p_2179->g_109[2];
                if (l_1215[1])
                    break;
                (*p_19) = (p_2179->g_1232 &= (((*l_1223) = (!(!((*p_2179->g_1131) = l_1222)))) >= (safe_sub_func_int8_t_s_s(((l_1215[0] = (((*p_2179->g_947) = l_1226[4]) != (l_1228[5] = (p_2179->g_1227[1] = l_1226[4])))) <= (p_2179->g_829 &= (((safe_lshift_func_uint16_t_u_u((~GROUP_DIVERGE(2, 1)), ((5UL & (p_21 >= l_1222)) , 0x215DL))) | (p_21 | l_1222)) != (*p_2179->g_303)))), l_1222))));
                l_1222 |= (*p_19);
            }
        }
        l_1191 |= (p_2179->g_1233 , (*p_19));
        for (p_2179->g_1171 = 15; (p_2179->g_1171 >= 7); p_2179->g_1171 = safe_sub_func_uint16_t_u_u(p_2179->g_1171, 8))
        { /* block id: 644 */
            uint64_t l_1240 = 0xEE5F0CE1A34DE44BL;
            (*p_19) |= (p_2179->g_1236 , ((safe_rshift_func_int8_t_s_s((1UL & ((*p_2179->g_182) >= p_2179->g_1239[1])), (FAKE_DIVERGE(p_2179->group_2_offset, get_group_id(2), 10) > (FAKE_DIVERGE(p_2179->global_1_offset, get_global_id(1), 10) , 2UL)))) || (**p_2179->g_239)));
            (*p_19) = l_1215[2];
            (*p_19) = (*p_19);
            (*p_2179->g_119) = func_56(l_1240, p_2179);
        }
        for (l_1219 = 0; (l_1219 <= 4); l_1219 += 1)
        { /* block id: 652 */
            int8_t l_1243[7][2][1] = {{{0x4EL},{0x4EL}},{{0x4EL},{0x4EL}},{{0x4EL},{0x4EL}},{{0x4EL},{0x4EL}},{{0x4EL},{0x4EL}},{{0x4EL},{0x4EL}},{{0x4EL},{0x4EL}}};
            int64_t l_1244 = 0x1258D2C994D12271L;
            int32_t l_1245 = (-9L);
            int32_t l_1246 = 1L;
            int32_t l_1247 = 0x4BE3628BL;
            int32_t l_1248 = 1L;
            int32_t *l_1290 = &p_2179->g_10;
            int32_t **l_1289 = &l_1290;
            int32_t l_1293 = 0x71E04D0FL;
            int i, j, k;
            for (p_2179->g_1111 = 3; (p_2179->g_1111 >= 0); p_2179->g_1111 -= 1)
            { /* block id: 655 */
                int32_t *l_1241 = &p_2179->g_5;
                int32_t *l_1242[10][6] = {{&l_1191,&p_2179->g_5,&l_1191,&l_1191,&p_2179->g_5,&l_1191},{&l_1191,&p_2179->g_5,&l_1191,&l_1191,&p_2179->g_5,&l_1191},{&l_1191,&p_2179->g_5,&l_1191,&l_1191,&p_2179->g_5,&l_1191},{&l_1191,&p_2179->g_5,&l_1191,&l_1191,&p_2179->g_5,&l_1191},{&l_1191,&p_2179->g_5,&l_1191,&l_1191,&p_2179->g_5,&l_1191},{&l_1191,&p_2179->g_5,&l_1191,&l_1191,&p_2179->g_5,&l_1191},{&l_1191,&p_2179->g_5,&l_1191,&l_1191,&p_2179->g_5,&l_1191},{&l_1191,&p_2179->g_5,&l_1191,&l_1191,&p_2179->g_5,&l_1191},{&l_1191,&p_2179->g_5,&l_1191,&l_1191,&p_2179->g_5,&l_1191},{&l_1191,&p_2179->g_5,&l_1191,&l_1191,&p_2179->g_5,&l_1191}};
                int i, j;
                l_1249[3]--;
            }
            for (p_2179->g_986 = 1; (p_2179->g_986 <= 4); p_2179->g_986 += 1)
            { /* block id: 660 */
                return (*p_19);
            }
            for (l_1247 = 4; (l_1247 >= 0); l_1247 -= 1)
            { /* block id: 665 */
                uint64_t l_1311 = 7UL;
                int8_t l_1316 = 0x67L;
                uint16_t *l_1319 = (void*)0;
                uint16_t *l_1320 = &p_2179->g_469;
                int32_t **l_1321 = &p_2179->g_165;
                for (p_2179->g_833 = 4; (p_2179->g_833 >= 0); p_2179->g_833 -= 1)
                { /* block id: 668 */
                    uint32_t l_1264[7];
                    int32_t *l_1288 = &p_2179->g_10;
                    int32_t **l_1287 = &l_1288;
                    uint8_t l_1291 = 253UL;
                    int32_t l_1307 = 0x2687868EL;
                    int64_t l_1309 = 0x00B92960A4735A7EL;
                    int32_t *l_1315[6] = {&l_1246,(void*)0,&l_1246,&l_1246,(void*)0,&l_1246};
                    int i;
                    for (i = 0; i < 7; i++)
                        l_1264[i] = 1UL;
                    for (p_2179->g_1108 = 0; (p_2179->g_1108 <= 4); p_2179->g_1108 += 1)
                    { /* block id: 671 */
                        int32_t l_1284 = (-5L);
                        uint16_t *l_1292 = &p_2179->g_176;
                        int32_t *l_1294 = &l_1248;
                        int32_t *l_1295 = (void*)0;
                        int32_t *l_1296 = &p_2179->g_517[0];
                        int32_t *l_1297 = (void*)0;
                        int32_t *l_1298 = &l_1245;
                        int32_t *l_1299 = (void*)0;
                        int32_t *l_1300 = &p_2179->g_115;
                        int32_t *l_1301 = &l_1215[2];
                        int32_t *l_1302 = (void*)0;
                        int32_t *l_1303 = &l_1191;
                        int32_t *l_1304 = &l_1245;
                        int32_t *l_1305 = (void*)0;
                        int32_t *l_1306 = &l_1215[0];
                        int32_t *l_1308[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
                        int i, j;
                        (*p_19) &= (((safe_rshift_func_uint16_t_u_u((safe_mul_func_int16_t_s_s(p_21, (-1L))), 5)) , (safe_mod_func_uint8_t_u_u(((safe_div_func_uint32_t_u_u(((safe_sub_func_uint16_t_u_u(p_20, ((p_21 = (+((safe_div_func_uint32_t_u_u(l_1249[0], l_1264[3])) || 0x2A54C463L))) , ((*p_2179->g_303) &= (safe_div_func_uint64_t_u_u((((safe_mod_func_int8_t_s_s(((((p_20 > ((FAKE_DIVERGE(p_2179->local_0_offset, get_local_id(0), 10) , (void*)0) != (void*)0)) , GROUP_DIVERGE(2, 1)) > p_20) >= (-3L)), p_21)) || FAKE_DIVERGE(p_2179->group_0_offset, get_group_id(0), 10)) ^ p_21), 0x4F48737CED927FD3L)))))) || p_21), l_1247)) == p_20), p_20))) , 1L);
                        (*p_19) = (safe_add_func_int64_t_s_s((p_21 = ((safe_lshift_func_int8_t_s_u((((**p_2179->g_239) = (*p_2179->g_182)) >= (p_2179->g_858[0][3] < ((*l_1292) ^= ((safe_div_func_uint16_t_u_u(((safe_lshift_func_uint16_t_u_s(65535UL, (safe_lshift_func_int8_t_s_s(l_1264[3], (((safe_unary_minus_func_int8_t_s(((safe_div_func_int8_t_s_s((((l_1243[0][1][0] || l_1284) & (safe_rshift_func_int8_t_s_s((l_1287 != l_1289), 1))) > (l_1291 | (*p_2179->g_1131))), l_1249[3])) == GROUP_DIVERGE(2, 1)))) >= l_1191) , 0x5EL))))) < 254UL), FAKE_DIVERGE(p_2179->global_0_offset, get_global_id(0), 10))) ^ 0x2B63L)))), 2)) >= p_20)), l_1293));
                        ++l_1311;
                    }
                    l_1215[0] &= (*p_19);
                }
                for (p_2179->g_831 = 0; (p_2179->g_831 <= 4); p_2179->g_831 += 1)
                { /* block id: 685 */
                    if (l_1316)
                        break;
                    (*p_19) &= 0x7CDDA3E2L;
                }
                (*p_19) = l_1245;
                (*l_1321) = ((*p_2179->g_119) = p_19);
            }
        }
    }
    else
    { /* block id: 697 */
        int8_t l_1348 = (-4L);
        int64_t *l_1352 = &p_2179->g_1108;
        int32_t l_1356 = 0L;
        int32_t l_1359 = 0x715BC413L;
        int32_t l_1360[4][8][7] = {{{1L,0x13EE0CD7L,(-1L),0x0129A5C7L,(-1L),0x13EE0CD7L,1L},{1L,0x13EE0CD7L,(-1L),0x0129A5C7L,(-1L),0x13EE0CD7L,1L},{1L,0x13EE0CD7L,(-1L),0x0129A5C7L,(-1L),0x13EE0CD7L,1L},{1L,0x13EE0CD7L,(-1L),0x0129A5C7L,(-1L),0x13EE0CD7L,1L},{1L,0x13EE0CD7L,(-1L),0x0129A5C7L,(-1L),0x13EE0CD7L,1L},{1L,0x13EE0CD7L,(-1L),0x0129A5C7L,(-1L),0x13EE0CD7L,1L},{1L,0x13EE0CD7L,(-1L),0x0129A5C7L,(-1L),0x13EE0CD7L,1L},{1L,0x13EE0CD7L,(-1L),0x0129A5C7L,(-1L),0x13EE0CD7L,1L}},{{1L,0x13EE0CD7L,(-1L),0x0129A5C7L,(-1L),0x13EE0CD7L,1L},{1L,0x13EE0CD7L,(-1L),0x0129A5C7L,(-1L),0x13EE0CD7L,1L},{1L,0x13EE0CD7L,(-1L),0x0129A5C7L,(-1L),0x13EE0CD7L,1L},{1L,0x13EE0CD7L,(-1L),0x0129A5C7L,(-1L),0x13EE0CD7L,1L},{1L,0x13EE0CD7L,(-1L),0x0129A5C7L,(-1L),0x13EE0CD7L,1L},{1L,0x13EE0CD7L,(-1L),0x0129A5C7L,(-1L),0x13EE0CD7L,1L},{1L,0x13EE0CD7L,(-1L),0x0129A5C7L,(-1L),0x13EE0CD7L,1L},{1L,0x13EE0CD7L,(-1L),0x0129A5C7L,(-1L),0x13EE0CD7L,1L}},{{1L,0x13EE0CD7L,(-1L),0x0129A5C7L,(-1L),0x13EE0CD7L,1L},{1L,0x13EE0CD7L,(-1L),0x0129A5C7L,(-1L),0x13EE0CD7L,1L},{1L,0x13EE0CD7L,(-1L),0x0129A5C7L,(-1L),0x13EE0CD7L,1L},{1L,0x13EE0CD7L,(-1L),0x0129A5C7L,(-1L),0x13EE0CD7L,1L},{1L,0x13EE0CD7L,(-1L),0x0129A5C7L,(-1L),0x13EE0CD7L,1L},{1L,0x13EE0CD7L,(-1L),0x0129A5C7L,(-1L),0x13EE0CD7L,1L},{1L,0x13EE0CD7L,(-1L),0x0129A5C7L,(-1L),0x13EE0CD7L,1L},{1L,0x13EE0CD7L,(-1L),0x0129A5C7L,(-1L),0x13EE0CD7L,1L}},{{1L,0x13EE0CD7L,(-1L),0x0129A5C7L,(-1L),0x13EE0CD7L,1L},{1L,0x13EE0CD7L,(-1L),0x0129A5C7L,(-1L),0x13EE0CD7L,1L},{1L,0x13EE0CD7L,(-1L),0x0129A5C7L,(-1L),0x13EE0CD7L,1L},{1L,0x13EE0CD7L,(-1L),0x0129A5C7L,(-1L),0x13EE0CD7L,1L},{1L,0x13EE0CD7L,(-1L),0x0129A5C7L,(-1L),0x13EE0CD7L,1L},{1L,0x13EE0CD7L,(-1L),0x0129A5C7L,(-1L),0x13EE0CD7L,1L},{1L,0x13EE0CD7L,(-1L),0x0129A5C7L,(-1L),0x13EE0CD7L,1L},{1L,0x13EE0CD7L,(-1L),0x0129A5C7L,(-1L),0x13EE0CD7L,1L}}};
        union U0 *l_1370 = &p_2179->g_655;
        uint32_t **l_1373 = (void*)0;
        uint8_t *l_1388[3];
        int8_t *l_1394[2];
        int64_t l_1430 = 1L;
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_1388[i] = (void*)0;
        for (i = 0; i < 2; i++)
            l_1394[i] = &p_2179->g_829;
        for (p_2179->g_833 = 29; (p_2179->g_833 <= (-17)); --p_2179->g_833)
        { /* block id: 700 */
            int8_t l_1361[5] = {0L,0L,0L,0L,0L};
            int32_t l_1363 = 0x07672542L;
            int32_t l_1365 = 0x43D2B33FL;
            int i;
            for (l_1219 = 0; (l_1219 <= (-20)); l_1219 = safe_sub_func_uint32_t_u_u(l_1219, 4))
            { /* block id: 703 */
                uint8_t l_1349[9] = {0x3CL,0xD0L,0x3CL,0x3CL,0xD0L,0x3CL,0x3CL,0xD0L,0x3CL};
                int32_t l_1351 = 0x650AD67DL;
                int32_t l_1362 = 0x41C3FF2AL;
                int32_t l_1364 = 0x384FC784L;
                int32_t l_1366 = 0x28118E4FL;
                int i;
                for (p_2179->g_1108 = 10; (p_2179->g_1108 == 22); ++p_2179->g_1108)
                { /* block id: 706 */
                    int16_t l_1339 = 0x149EL;
                    int32_t *l_1353 = &p_2179->g_517[0];
                    uint64_t *l_1357[10] = {&p_2179->g_1358,&p_2179->g_1358,&p_2179->g_1358,&p_2179->g_1358,&p_2179->g_1358,&p_2179->g_1358,&p_2179->g_1358,&p_2179->g_1358,&p_2179->g_1358,&p_2179->g_1358};
                    int i;
                    for (p_2179->g_10 = 0; (p_2179->g_10 >= 19); p_2179->g_10 = safe_add_func_int64_t_s_s(p_2179->g_10, 6))
                    { /* block id: 709 */
                        int8_t l_1338 = 0L;
                        uint8_t *l_1343 = &p_2179->g_137;
                        uint64_t l_1350[5][10][1] = {{{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L}},{{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L}},{{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L}},{{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L}},{{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L},{0x037AE9D251BC07E6L}}};
                        int i, j, k;
                        (*p_19) = (((safe_mod_func_uint16_t_u_u((((((p_20 == ((safe_mod_func_int8_t_s_s((((safe_div_func_uint32_t_u_u(((((safe_lshift_func_int16_t_s_s((l_1338 == l_1339), 7)) != 1L) < ((void*)0 != l_1340[6])) != ((((safe_rshift_func_uint8_t_u_s((((((((*p_2179->g_1130) == l_1343) <= (safe_div_func_int8_t_s_s((safe_rshift_func_int16_t_s_u(((-1L) >= (**p_2179->g_1130)), 10)), 8L))) | (-1L)) || l_1348) >= p_20) || p_20), l_1338)) , 4294967295UL) > l_1349[7]) , (**p_2179->g_239))), FAKE_DIVERGE(p_2179->global_0_offset, get_global_id(0), 10))) >= l_1350[3][6][0]) | FAKE_DIVERGE(p_2179->group_0_offset, get_group_id(0), 10)), l_1349[7])) <= l_1351)) < l_1348) , l_1352) != (void*)0) == 0x2514L), p_21)) != l_1350[3][6][0]) < p_21);
                        p_19 = l_1353;
                        if ((*p_19))
                            continue;
                    }
                    if ((safe_div_func_int8_t_s_s((((l_1367[0][3][3]++) , l_1370) == l_1371), 0xBBL)))
                    { /* block id: 715 */
                        int32_t *l_1372 = &p_2179->g_3;
                        (*p_2179->g_119) = l_1372;
                    }
                    else
                    { /* block id: 717 */
                        p_2179->g_1374[5] = l_1373;
                    }
                }
            }
        }
        for (p_2179->g_10 = 3; (p_2179->g_10 >= 0); p_2179->g_10 -= 1)
        { /* block id: 725 */
            uint32_t l_1377 = 0xCF3B8EB7L;
            int i;
            ++l_1377;
            if (p_2179->g_174[p_2179->g_10])
                break;
            if (l_1348)
                break;
        }
        if ((0x6BC9AD85FEA65FE0L < (l_1356 >= (safe_mod_func_int8_t_s_s((l_1359 &= ((!(l_1360[2][7][1] = (safe_div_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_s((*p_2179->g_1131), 6)), (((((((safe_sub_func_int8_t_s_s((l_1388[2] != ((((l_1360[2][7][1] >= (safe_lshift_func_int8_t_s_u(p_20, FAKE_DIVERGE(p_2179->local_0_offset, get_local_id(0), 10)))) , ((*p_2179->g_303) = (safe_add_func_int32_t_s_s(0x7940F6FCL, ((((((p_21 , (p_21 , 0x06ABL)) & 0L) > p_21) > p_20) ^ (*p_19)) <= 0x68A07D43L))))) && p_21) , (void*)0)), l_1348)) ^ l_1393) , p_20) , FAKE_DIVERGE(p_2179->local_0_offset, get_local_id(0), 10)) && (*p_19)) && FAKE_DIVERGE(p_2179->local_2_offset, get_local_id(2), 10)) & (*p_19)))))) < 0x2EL)), (*p_2179->g_1131))))))
        { /* block id: 733 */
            uint16_t l_1408[9] = {0x08F9L,0x08F9L,0x08F9L,0x08F9L,0x08F9L,0x08F9L,0x08F9L,0x08F9L,0x08F9L};
            int32_t l_1410 = 0x0547D297L;
            uint32_t *l_1411 = (void*)0;
            uint32_t *l_1412 = &p_2179->g_642;
            uint16_t *l_1414 = &p_2179->g_172;
            uint16_t *l_1415 = &p_2179->g_469;
            int i;
lbl_1397:
            p_19 = &l_1359;
            for (p_2179->g_665 = 12; (p_2179->g_665 > 29); ++p_2179->g_665)
            { /* block id: 737 */
                if (p_2179->g_176)
                    goto lbl_1397;
                if ((*p_19))
                    break;
            }
            (*p_19) = ((safe_div_func_int16_t_s_s(p_21, ((*l_1415) = (safe_sub_func_uint16_t_u_u(((*l_1414) = (safe_mul_func_uint8_t_u_u((((safe_add_func_uint8_t_u_u((p_20 <= (safe_add_func_int8_t_s_s(l_1408[4], (l_1410 = ((void*)0 == l_1409))))), p_21)) < ((((*l_1412) = p_21) <= (1L >= (((p_2179->g_1413 , (-1L)) , l_1408[4]) == GROUP_DIVERGE(1, 1)))) == p_21)) == GROUP_DIVERGE(1, 1)), l_1359))), (***p_2179->g_947)))))) && l_1348);
        }
        else
        { /* block id: 746 */
            uint8_t *l_1431 = &l_1393;
            int16_t **l_1433[4][7][2];
            union U0 **l_1434 = &l_1371;
            int i, j, k;
            for (i = 0; i < 4; i++)
            {
                for (j = 0; j < 7; j++)
                {
                    for (k = 0; k < 2; k++)
                        l_1433[i][j][k] = &p_2179->g_303;
                }
            }
            (*p_2179->g_119) = &l_1356;
            for (p_2179->g_795 = 29; (p_2179->g_795 != (-6)); --p_2179->g_795)
            { /* block id: 750 */
                int16_t l_1418 = (-3L);
                uint64_t *l_1424[7][9][4] = {{{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]}},{{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]}},{{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]}},{{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]}},{{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]}},{{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]}},{{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]},{&p_2179->g_174[0],&p_2179->g_174[0],&p_2179->g_174[3],&p_2179->g_174[0]}}};
                uint64_t **l_1423[1];
                uint64_t ***l_1422 = &l_1423[0];
                int32_t l_1432 = 1L;
                int i, j, k;
                for (i = 0; i < 1; i++)
                    l_1423[i] = &l_1424[6][1][2];
                if ((*p_19))
                    break;
                (**p_2179->g_119) = l_1418;
                (*p_2179->g_119) = p_19;
            }
            (*l_1434) = ((65535UL == (((*p_2179->g_947) = (*p_2179->g_947)) == l_1433[3][0][1])) , (*p_2179->g_441));
        }
    }
    (*p_2179->g_119) = &p_2179->g_517[0];
    for (p_2179->g_795 = 28; (p_2179->g_795 < 6); --p_2179->g_795)
    { /* block id: 769 */
        uint16_t ****l_1460 = (void*)0;
        int8_t *l_1477[1];
        int8_t **l_1476 = &l_1477[0];
        int8_t ***l_1475 = &l_1476;
        int8_t ****l_1479 = (void*)0;
        int8_t ****l_1480 = &l_1478;
        int32_t l_1499 = 0L;
        int32_t l_1502 = (-4L);
        int32_t l_1503[1];
        uint8_t l_1565 = 3UL;
        int32_t l_1567[9][7] = {{1L,(-1L),0x5EDFBA9FL,0x7A41B19EL,(-9L),(-9L),0x7A41B19EL},{1L,(-1L),0x5EDFBA9FL,0x7A41B19EL,(-9L),(-9L),0x7A41B19EL},{1L,(-1L),0x5EDFBA9FL,0x7A41B19EL,(-9L),(-9L),0x7A41B19EL},{1L,(-1L),0x5EDFBA9FL,0x7A41B19EL,(-9L),(-9L),0x7A41B19EL},{1L,(-1L),0x5EDFBA9FL,0x7A41B19EL,(-9L),(-9L),0x7A41B19EL},{1L,(-1L),0x5EDFBA9FL,0x7A41B19EL,(-9L),(-9L),0x7A41B19EL},{1L,(-1L),0x5EDFBA9FL,0x7A41B19EL,(-9L),(-9L),0x7A41B19EL},{1L,(-1L),0x5EDFBA9FL,0x7A41B19EL,(-9L),(-9L),0x7A41B19EL},{1L,(-1L),0x5EDFBA9FL,0x7A41B19EL,(-9L),(-9L),0x7A41B19EL}};
        int16_t l_1569 = 0L;
        int32_t l_1570 = (-1L);
        int i, j;
        for (i = 0; i < 1; i++)
            l_1477[i] = &p_2179->g_1239[1];
        for (i = 0; i < 1; i++)
            l_1503[i] = 0x42103584L;
        for (p_2179->g_5 = 0; (p_2179->g_5 >= 0); p_2179->g_5 = safe_add_func_int8_t_s_s(p_2179->g_5, 1))
        { /* block id: 772 */
            int64_t l_1459 = 1L;
            (1 + 1);
        }
    }
    return (*p_2179->g_105);
}


/* ------------------------------------------ */
/* 
 * reads : p_2179->g_119 p_2179->g_829
 * writes: p_2179->g_105 p_2179->g_829
 */
int32_t * func_22(uint32_t  p_23, uint32_t  p_24, uint32_t  p_25, struct S1 * p_2179)
{ /* block id: 607 */
    uint8_t l_1185 = 255UL;
    int32_t l_1186[6] = {(-7L),1L,(-7L),(-7L),1L,(-7L)};
    int32_t *l_1189[3];
    int i;
    for (i = 0; i < 3; i++)
        l_1189[i] = &p_2179->g_517[2];
    l_1186[4] = l_1185;
    (*p_2179->g_119) = (void*)0;
    for (p_2179->g_829 = 0; (p_2179->g_829 != 27); p_2179->g_829 = safe_add_func_int32_t_s_s(p_2179->g_829, 8))
    { /* block id: 612 */
        (*p_2179->g_119) = &l_1186[5];
    }
    return l_1189[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_2179->g_642
 * writes:
 */
uint32_t  func_34(int32_t * p_35, int32_t  p_36, int32_t * p_37, uint32_t  p_38, int32_t * p_39, struct S1 * p_2179)
{ /* block id: 602 */
    int32_t *l_1179[5][5] = {{&p_2179->g_517[1],&p_2179->g_517[0],&p_2179->g_517[0],&p_2179->g_517[0],&p_2179->g_517[1]},{&p_2179->g_517[1],&p_2179->g_517[0],&p_2179->g_517[0],&p_2179->g_517[0],&p_2179->g_517[1]},{&p_2179->g_517[1],&p_2179->g_517[0],&p_2179->g_517[0],&p_2179->g_517[0],&p_2179->g_517[1]},{&p_2179->g_517[1],&p_2179->g_517[0],&p_2179->g_517[0],&p_2179->g_517[0],&p_2179->g_517[1]},{&p_2179->g_517[1],&p_2179->g_517[0],&p_2179->g_517[0],&p_2179->g_517[0],&p_2179->g_517[1]}};
    uint16_t l_1180[6] = {8UL,0xF55FL,8UL,8UL,0xF55FL,8UL};
    int i, j;
    (*p_37) = 0x66AB04BDL;
    ++l_1180[1];
    return p_2179->g_642;
}


/* ------------------------------------------ */
/* 
 * reads : p_2179->l_comm_values p_2179->g_11 p_2179->g_5 p_2179->g_85 p_2179->g_comm_values p_2179->g_3 p_2179->g_10 p_2179->g_115 p_2179->g_119 p_2179->g_105 p_2179->g_109 p_2179->g_182 p_2179->g_172 p_2179->g_196 p_2179->g_176 p_2179->g_402 p_2179->g_244 p_2179->g_245 p_2179->g_246 p_2179->g_165 p_2179->g_436 p_2179->g_441 p_2179->g_14 p_2179->g_303 p_2179->g_269 p_2179->g_174 p_2179->g_494 p_2179->g_442 p_2179->g_517 p_2179->g_239 p_2179->g_323 p_2179->g_402.f0 p_2179->g_573 p_2179->g_323.f0 p_2179->g_469 p_2179->g_626 p_2179->g_137 p_2179->g_642 p_2179->g_655 p_2179->g_629 p_2179->g_655.f0 p_2179->g_702 p_2179->g_665 p_2179->g_784 p_2179->g_794 p_2179->g_814 p_2179->g_833 p_2179->g_829 p_2179->g_858 p_2179->g_790 p_2179->g_911 p_2179->g_913 p_2179->g_947 p_2179->g_954 p_2179->g_831 p_2179->g_986 p_2179->g_1043 p_2179->g_1058 p_2179->g_948 p_2179->g_1090 p_2179->g_1108 p_2179->g_1111 p_2179->g_1130 p_2179->g_1150 p_2179->g_1131 p_2179->g_1171
 * writes: p_2179->g_5 p_2179->g_85 p_2179->g_105 p_2179->g_109 p_2179->g_115 p_2179->g_119 p_2179->g_137 p_2179->g_3 p_2179->g_10 p_2179->g_165 p_2179->g_172 p_2179->g_174 p_2179->g_176 p_2179->g_196 p_2179->l_comm_values p_2179->g_442 p_2179->g_573 p_2179->g_269 p_2179->g_629 p_2179->g_630 p_2179->g_642 p_2179->g_665 p_2179->g_790 p_2179->g_794 p_2179->g_795 p_2179->g_469 p_2179->g_829 p_2179->g_831 p_2179->g_833 p_2179->g_858 p_2179->g_913 p_2179->g_947 p_2179->g_517 p_2179->g_1111 p_2179->g_1119 p_2179->g_1130 p_2179->g_1171
 */
int32_t * func_40(int32_t * p_41, struct S1 * p_2179)
{ /* block id: 21 */
    int64_t l_55 = (-9L);
    int32_t *l_761 = (void*)0;
    int32_t **l_1109 = &l_761;
    int32_t *l_1110[3][6][1] = {{{&p_2179->g_1111},{&p_2179->g_1111},{&p_2179->g_1111},{&p_2179->g_1111},{&p_2179->g_1111},{&p_2179->g_1111}},{{&p_2179->g_1111},{&p_2179->g_1111},{&p_2179->g_1111},{&p_2179->g_1111},{&p_2179->g_1111},{&p_2179->g_1111}},{{&p_2179->g_1111},{&p_2179->g_1111},{&p_2179->g_1111},{&p_2179->g_1111},{&p_2179->g_1111},{&p_2179->g_1111}}};
    int64_t *l_1112 = &l_55;
    union U0 **l_1117 = &p_2179->g_442[5];
    union U0 ***l_1118[10];
    int64_t l_1120 = 0L;
    int32_t l_1121 = (-1L);
    uint64_t *l_1124 = (void*)0;
    uint64_t *l_1125 = &p_2179->g_174[3];
    uint8_t **l_1133 = &p_2179->g_1131;
    uint8_t **l_1136 = &p_2179->g_1131;
    uint32_t **l_1138[4][8][2] = {{{&p_2179->g_495,(void*)0},{&p_2179->g_495,(void*)0},{&p_2179->g_495,(void*)0},{&p_2179->g_495,(void*)0},{&p_2179->g_495,(void*)0},{&p_2179->g_495,(void*)0},{&p_2179->g_495,(void*)0},{&p_2179->g_495,(void*)0}},{{&p_2179->g_495,(void*)0},{&p_2179->g_495,(void*)0},{&p_2179->g_495,(void*)0},{&p_2179->g_495,(void*)0},{&p_2179->g_495,(void*)0},{&p_2179->g_495,(void*)0},{&p_2179->g_495,(void*)0},{&p_2179->g_495,(void*)0}},{{&p_2179->g_495,(void*)0},{&p_2179->g_495,(void*)0},{&p_2179->g_495,(void*)0},{&p_2179->g_495,(void*)0},{&p_2179->g_495,(void*)0},{&p_2179->g_495,(void*)0},{&p_2179->g_495,(void*)0},{&p_2179->g_495,(void*)0}},{{&p_2179->g_495,(void*)0},{&p_2179->g_495,(void*)0},{&p_2179->g_495,(void*)0},{&p_2179->g_495,(void*)0},{&p_2179->g_495,(void*)0},{&p_2179->g_495,(void*)0},{&p_2179->g_495,(void*)0},{&p_2179->g_495,(void*)0}}};
    uint64_t **l_1142 = &l_1124;
    uint64_t ***l_1141[8][3][10] = {{{&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,(void*)0,(void*)0},{&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,(void*)0,(void*)0},{&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,(void*)0,(void*)0}},{{&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,(void*)0,(void*)0},{&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,(void*)0,(void*)0},{&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,(void*)0,(void*)0}},{{&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,(void*)0,(void*)0},{&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,(void*)0,(void*)0},{&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,(void*)0,(void*)0}},{{&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,(void*)0,(void*)0},{&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,(void*)0,(void*)0},{&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,(void*)0,(void*)0}},{{&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,(void*)0,(void*)0},{&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,(void*)0,(void*)0},{&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,(void*)0,(void*)0}},{{&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,(void*)0,(void*)0},{&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,(void*)0,(void*)0},{&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,(void*)0,(void*)0}},{{&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,(void*)0,(void*)0},{&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,(void*)0,(void*)0},{&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,(void*)0,(void*)0}},{{&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,(void*)0,(void*)0},{&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,(void*)0,(void*)0},{&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,&l_1142,(void*)0,(void*)0}}};
    uint8_t l_1153 = 0x40L;
    uint32_t l_1165 = 9UL;
    int32_t *l_1166 = &p_2179->g_3;
    uint8_t *l_1169 = &l_1153;
    uint8_t **l_1170 = &l_1169;
    int32_t *l_1173 = (void*)0;
    int i, j, k;
    for (i = 0; i < 10; i++)
        l_1118[i] = (void*)0;
    p_2179->g_1111 ^= (safe_mul_func_int16_t_s_s(((((*l_1112) = (((*l_1109) = (p_41 = func_44(func_46(p_41, func_52(((((l_55 , GROUP_DIVERGE(1, 1)) , func_56(p_2179->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2179->tid, 26))], p_2179)) == &p_2179->g_3) || (l_55 & FAKE_DIVERGE(p_2179->local_0_offset, get_local_id(0), 10))), p_2179->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2179->tid, 26))], p_2179), ((safe_div_func_int32_t_s_s((((l_55 | 0x9503970C67ADA944L) < l_55) <= l_55), GROUP_DIVERGE(2, 1))) , l_761), &p_2179->g_517[4], l_55, p_2179), p_2179))) != l_1110[1][4][0])) && 0x84A1B48740F64829L) , (***p_2179->g_947)), p_2179->g_1108));
lbl_1172:
    if ((((safe_div_func_int32_t_s_s((safe_div_func_int8_t_s_s((FAKE_DIVERGE(p_2179->group_1_offset, get_group_id(1), 10) >= (!(l_1117 != (p_2179->g_1119[4] = &p_2179->g_442[5])))), (0x5BL ^ 0x0DL))), (l_1121 = l_1120))) && (((*l_1125) &= (((safe_sub_func_int16_t_s_s((***p_2179->g_947), (!(&l_1117 == &l_1117)))) , 0x6BL) < p_2179->g_14)) , p_2179->g_174[2])) || 0xE338B932C12477C7L))
    { /* block id: 581 */
        int32_t l_1128 = (-10L);
        int16_t l_1129 = 0x1C33L;
        l_1129 &= (safe_lshift_func_uint8_t_u_s(0x63L, l_1128));
    }
    else
    { /* block id: 583 */
        uint8_t ***l_1132 = &p_2179->g_1130;
        uint8_t **l_1135 = &p_2179->g_1131;
        uint8_t ***l_1134[3][7] = {{&l_1135,&l_1135,&l_1135,&l_1135,&l_1135,&l_1135,&l_1135},{&l_1135,&l_1135,&l_1135,&l_1135,&l_1135,&l_1135,&l_1135},{&l_1135,&l_1135,&l_1135,&l_1135,&l_1135,&l_1135,&l_1135}};
        int32_t l_1137 = (-1L);
        int32_t l_1147[4];
        int64_t *l_1151 = &p_2179->g_1108;
        int64_t *l_1152 = &p_2179->g_1108;
        uint32_t l_1154 = 0UL;
        int i, j;
        for (i = 0; i < 4; i++)
            l_1147[i] = 0L;
        l_1137 = (((((*l_1132) = p_2179->g_1130) != (l_1136 = (l_1133 = (void*)0))) < (l_1137 & (0x14L | l_1137))) < ((void*)0 != l_1138[3][4][0]));
        for (p_2179->g_3 = 0; (p_2179->g_3 < (-20)); p_2179->g_3 = safe_sub_func_uint16_t_u_u(p_2179->g_3, 6))
        { /* block id: 590 */
            int64_t l_1155 = 9L;
            int32_t l_1156 = 1L;
            l_1137 |= (((void*)0 != l_1141[7][0][6]) != (**p_2179->g_948));
            l_1156 &= (safe_mod_func_uint32_t_u_u((safe_lshift_func_int8_t_s_s(l_1137, (((l_1147[3] = l_1137) ^ ((((l_1109 = &l_1110[1][4][0]) == (void*)0) > ((void*)0 == &p_2179->g_495)) < (safe_div_func_int32_t_s_s((((p_2179->g_1150 , l_1151) != l_1152) | l_1153), l_1154)))) < l_1155))), 4294967291UL));
            if (l_1156)
                continue;
        }
    }
    p_2179->g_1171 ^= ((!(safe_sub_func_int8_t_s_s(((-1L) > p_2179->g_517[3]), ((FAKE_DIVERGE(p_2179->group_2_offset, get_group_id(2), 10) , ((safe_add_func_int8_t_s_s((((4294967295UL | ((safe_rshift_func_uint8_t_u_u(((((0UL < p_2179->g_1043[5][5]) || l_1165) ^ (l_1166 == ((safe_add_func_uint16_t_u_u(((*p_2179->g_1130) != ((*l_1170) = l_1169)), (*l_1166))) , (void*)0))) | 0x2C3D2C3A281A5335L), (*l_1166))) == (*l_1166))) >= 1L) & 0x2EL), p_2179->g_174[1])) , &p_2179->g_912)) == (void*)0)))) <= (*l_1166));
    if (p_2179->g_1108)
        goto lbl_1172;
    return l_1173;
}


/* ------------------------------------------ */
/* 
 * reads : p_2179->g_469 p_2179->g_119 p_2179->g_115 p_2179->g_85 p_2179->g_239 p_2179->g_182 p_2179->g_174 p_2179->g_814 p_2179->g_642 p_2179->g_303 p_2179->g_833 p_2179->g_5 p_2179->g_829 p_2179->g_665 p_2179->g_858 p_2179->g_790 p_2179->g_269 p_2179->g_794 p_2179->g_196 p_2179->g_436 p_2179->g_911 p_2179->g_913 p_2179->g_947 p_2179->g_954 p_2179->g_831 p_2179->g_517 p_2179->g_986 p_2179->g_176 p_2179->g_1043 p_2179->g_1058 p_2179->g_948 p_2179->g_109 p_2179->g_3 p_2179->g_1090 p_2179->g_1108
 * writes: p_2179->g_469 p_2179->g_176 p_2179->g_105 p_2179->g_115 p_2179->g_137 p_2179->g_109 p_2179->g_174 p_2179->g_642 p_2179->g_829 p_2179->g_269 p_2179->g_831 p_2179->g_833 p_2179->g_858 p_2179->g_665 p_2179->g_3 p_2179->g_119 p_2179->g_795 p_2179->g_10 p_2179->g_913 p_2179->g_947 p_2179->g_517 p_2179->g_630 p_2179->g_790
 */
int32_t * func_44(int32_t * p_45, struct S1 * p_2179)
{ /* block id: 388 */
    uint32_t l_803 = 2UL;
    int32_t l_827 = 0x69E0F161L;
    int8_t l_856 = 1L;
    int32_t *l_888[6][8][5] = {{{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10}},{{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10}},{{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10}},{{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10}},{{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10}},{{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10},{&p_2179->g_10,(void*)0,&p_2179->g_10,&p_2179->g_10,&p_2179->g_10}}};
    int32_t **l_887[10] = {&l_888[1][3][4],(void*)0,&l_888[1][3][4],&l_888[1][3][4],(void*)0,&l_888[1][3][4],&l_888[1][3][4],(void*)0,&l_888[1][3][4],&l_888[1][3][4]};
    uint16_t ***l_916 = (void*)0;
    uint16_t ****l_915 = &l_916;
    int32_t l_927 = (-2L);
    int32_t l_930 = 0x3A42D3B6L;
    int32_t l_968[3][8][7] = {{{(-1L),0x5F36E09DL,0x14F7AAF7L,0x0341598AL,(-1L),0x6729A170L,(-6L)},{(-1L),0x5F36E09DL,0x14F7AAF7L,0x0341598AL,(-1L),0x6729A170L,(-6L)},{(-1L),0x5F36E09DL,0x14F7AAF7L,0x0341598AL,(-1L),0x6729A170L,(-6L)},{(-1L),0x5F36E09DL,0x14F7AAF7L,0x0341598AL,(-1L),0x6729A170L,(-6L)},{(-1L),0x5F36E09DL,0x14F7AAF7L,0x0341598AL,(-1L),0x6729A170L,(-6L)},{(-1L),0x5F36E09DL,0x14F7AAF7L,0x0341598AL,(-1L),0x6729A170L,(-6L)},{(-1L),0x5F36E09DL,0x14F7AAF7L,0x0341598AL,(-1L),0x6729A170L,(-6L)},{(-1L),0x5F36E09DL,0x14F7AAF7L,0x0341598AL,(-1L),0x6729A170L,(-6L)}},{{(-1L),0x5F36E09DL,0x14F7AAF7L,0x0341598AL,(-1L),0x6729A170L,(-6L)},{(-1L),0x5F36E09DL,0x14F7AAF7L,0x0341598AL,(-1L),0x6729A170L,(-6L)},{(-1L),0x5F36E09DL,0x14F7AAF7L,0x0341598AL,(-1L),0x6729A170L,(-6L)},{(-1L),0x5F36E09DL,0x14F7AAF7L,0x0341598AL,(-1L),0x6729A170L,(-6L)},{(-1L),0x5F36E09DL,0x14F7AAF7L,0x0341598AL,(-1L),0x6729A170L,(-6L)},{(-1L),0x5F36E09DL,0x14F7AAF7L,0x0341598AL,(-1L),0x6729A170L,(-6L)},{(-1L),0x5F36E09DL,0x14F7AAF7L,0x0341598AL,(-1L),0x6729A170L,(-6L)},{(-1L),0x5F36E09DL,0x14F7AAF7L,0x0341598AL,(-1L),0x6729A170L,(-6L)}},{{(-1L),0x5F36E09DL,0x14F7AAF7L,0x0341598AL,(-1L),0x6729A170L,(-6L)},{(-1L),0x5F36E09DL,0x14F7AAF7L,0x0341598AL,(-1L),0x6729A170L,(-6L)},{(-1L),0x5F36E09DL,0x14F7AAF7L,0x0341598AL,(-1L),0x6729A170L,(-6L)},{(-1L),0x5F36E09DL,0x14F7AAF7L,0x0341598AL,(-1L),0x6729A170L,(-6L)},{(-1L),0x5F36E09DL,0x14F7AAF7L,0x0341598AL,(-1L),0x6729A170L,(-6L)},{(-1L),0x5F36E09DL,0x14F7AAF7L,0x0341598AL,(-1L),0x6729A170L,(-6L)},{(-1L),0x5F36E09DL,0x14F7AAF7L,0x0341598AL,(-1L),0x6729A170L,(-6L)},{(-1L),0x5F36E09DL,0x14F7AAF7L,0x0341598AL,(-1L),0x6729A170L,(-6L)}}};
    int64_t *l_981 = (void*)0;
    int64_t **l_982[6][9] = {{&p_2179->g_629[3],&p_2179->g_630,&p_2179->g_630,&l_981,&p_2179->g_630,&p_2179->g_630,&p_2179->g_629[3],&l_981,&p_2179->g_629[0]},{&p_2179->g_629[3],&p_2179->g_630,&p_2179->g_630,&l_981,&p_2179->g_630,&p_2179->g_630,&p_2179->g_629[3],&l_981,&p_2179->g_629[0]},{&p_2179->g_629[3],&p_2179->g_630,&p_2179->g_630,&l_981,&p_2179->g_630,&p_2179->g_630,&p_2179->g_629[3],&l_981,&p_2179->g_629[0]},{&p_2179->g_629[3],&p_2179->g_630,&p_2179->g_630,&l_981,&p_2179->g_630,&p_2179->g_630,&p_2179->g_629[3],&l_981,&p_2179->g_629[0]},{&p_2179->g_629[3],&p_2179->g_630,&p_2179->g_630,&l_981,&p_2179->g_630,&p_2179->g_630,&p_2179->g_629[3],&l_981,&p_2179->g_629[0]},{&p_2179->g_629[3],&p_2179->g_630,&p_2179->g_630,&l_981,&p_2179->g_630,&p_2179->g_630,&p_2179->g_629[3],&l_981,&p_2179->g_629[0]}};
    int32_t ****l_983[5][10] = {{&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790},{&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790},{&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790},{&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790},{&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790,&p_2179->g_790}};
    int32_t l_984 = 0x09996333L;
    int8_t l_985[1][3][3] = {{{(-1L),0x70L,(-1L)},{(-1L),0x70L,(-1L)},{(-1L),0x70L,(-1L)}}};
    int16_t l_987 = 0x4F5EL;
    int8_t l_988 = 0x73L;
    int16_t l_989 = 6L;
    uint64_t *l_1064 = &p_2179->g_174[1];
    uint64_t **l_1063 = &l_1064;
    uint32_t l_1070 = 0x24C6C7B9L;
    uint32_t l_1072[9] = {4294967292UL,0x23A84D54L,4294967292UL,4294967292UL,0x23A84D54L,4294967292UL,4294967292UL,0x23A84D54L,4294967292UL};
    int i, j, k;
    for (p_2179->g_469 = 1; (p_2179->g_469 <= 4); p_2179->g_469 += 1)
    { /* block id: 391 */
        int32_t *l_797 = &p_2179->g_115;
        uint64_t l_838[10][3] = {{1UL,1UL,18446744073709551615UL},{1UL,1UL,18446744073709551615UL},{1UL,1UL,18446744073709551615UL},{1UL,1UL,18446744073709551615UL},{1UL,1UL,18446744073709551615UL},{1UL,1UL,18446744073709551615UL},{1UL,1UL,18446744073709551615UL},{1UL,1UL,18446744073709551615UL},{1UL,1UL,18446744073709551615UL},{1UL,1UL,18446744073709551615UL}};
        int8_t *l_886 = (void*)0;
        int8_t **l_885 = &l_886;
        int32_t l_920[5] = {5L,5L,5L,5L,5L};
        int16_t ***l_951 = &p_2179->g_948;
        uint16_t *****l_953 = &p_2179->g_913;
        int i, j;
        for (p_2179->g_176 = 0; (p_2179->g_176 <= 7); p_2179->g_176 += 1)
        { /* block id: 394 */
            return l_797;
        }
        (*p_2179->g_119) = (void*)0;
        for (p_2179->g_115 = 4; (p_2179->g_115 >= 0); p_2179->g_115 -= 1)
        { /* block id: 400 */
            int32_t l_809 = (-1L);
            uint32_t l_855 = 4UL;
            int32_t l_882 = 0x6F57CF88L;
            int32_t l_928 = (-1L);
            uint32_t l_932 = 1UL;
            uint16_t **l_952 = &p_2179->g_246;
            int64_t l_967[4] = {3L,3L,3L,3L};
            int64_t l_969 = 7L;
            int i, j;
            if (p_2179->g_85[(p_2179->g_469 + 5)][p_2179->g_115])
            { /* block id: 401 */
                int16_t l_815 = 0x3E16L;
                int32_t l_860 = 0x261D2693L;
                int32_t *l_906 = &l_809;
                uint16_t ****l_917[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                uint8_t l_923 = 0x78L;
                int32_t l_929 = (-8L);
                int32_t l_931 = 0x44562EC9L;
                int i;
                for (p_2179->g_137 = 0; (p_2179->g_137 <= 4); p_2179->g_137 += 1)
                { /* block id: 404 */
                    int8_t *l_802 = &p_2179->g_109[0];
                    int32_t l_806 = 1L;
                    uint32_t *l_816 = &p_2179->g_642;
                    int8_t *l_828 = &p_2179->g_829;
                    int8_t *l_830 = &p_2179->g_831;
                    int8_t *l_832 = &p_2179->g_833;
                    int64_t l_841[8][4][5] = {{{0x40ED3121D58A26FCL,8L,1L,1L,0x03675521B965B4EFL},{0x40ED3121D58A26FCL,8L,1L,1L,0x03675521B965B4EFL},{0x40ED3121D58A26FCL,8L,1L,1L,0x03675521B965B4EFL},{0x40ED3121D58A26FCL,8L,1L,1L,0x03675521B965B4EFL}},{{0x40ED3121D58A26FCL,8L,1L,1L,0x03675521B965B4EFL},{0x40ED3121D58A26FCL,8L,1L,1L,0x03675521B965B4EFL},{0x40ED3121D58A26FCL,8L,1L,1L,0x03675521B965B4EFL},{0x40ED3121D58A26FCL,8L,1L,1L,0x03675521B965B4EFL}},{{0x40ED3121D58A26FCL,8L,1L,1L,0x03675521B965B4EFL},{0x40ED3121D58A26FCL,8L,1L,1L,0x03675521B965B4EFL},{0x40ED3121D58A26FCL,8L,1L,1L,0x03675521B965B4EFL},{0x40ED3121D58A26FCL,8L,1L,1L,0x03675521B965B4EFL}},{{0x40ED3121D58A26FCL,8L,1L,1L,0x03675521B965B4EFL},{0x40ED3121D58A26FCL,8L,1L,1L,0x03675521B965B4EFL},{0x40ED3121D58A26FCL,8L,1L,1L,0x03675521B965B4EFL},{0x40ED3121D58A26FCL,8L,1L,1L,0x03675521B965B4EFL}},{{0x40ED3121D58A26FCL,8L,1L,1L,0x03675521B965B4EFL},{0x40ED3121D58A26FCL,8L,1L,1L,0x03675521B965B4EFL},{0x40ED3121D58A26FCL,8L,1L,1L,0x03675521B965B4EFL},{0x40ED3121D58A26FCL,8L,1L,1L,0x03675521B965B4EFL}},{{0x40ED3121D58A26FCL,8L,1L,1L,0x03675521B965B4EFL},{0x40ED3121D58A26FCL,8L,1L,1L,0x03675521B965B4EFL},{0x40ED3121D58A26FCL,8L,1L,1L,0x03675521B965B4EFL},{0x40ED3121D58A26FCL,8L,1L,1L,0x03675521B965B4EFL}},{{0x40ED3121D58A26FCL,8L,1L,1L,0x03675521B965B4EFL},{0x40ED3121D58A26FCL,8L,1L,1L,0x03675521B965B4EFL},{0x40ED3121D58A26FCL,8L,1L,1L,0x03675521B965B4EFL},{0x40ED3121D58A26FCL,8L,1L,1L,0x03675521B965B4EFL}},{{0x40ED3121D58A26FCL,8L,1L,1L,0x03675521B965B4EFL},{0x40ED3121D58A26FCL,8L,1L,1L,0x03675521B965B4EFL},{0x40ED3121D58A26FCL,8L,1L,1L,0x03675521B965B4EFL},{0x40ED3121D58A26FCL,8L,1L,1L,0x03675521B965B4EFL}}};
                    int16_t l_854[1];
                    uint32_t *l_875 = &p_2179->g_858[5][7];
                    int16_t l_878 = 0x5E1CL;
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                        l_854[i] = 0x607DL;
                    if ((safe_sub_func_int8_t_s_s((-1L), ((*l_832) &= ((*l_830) = (((((*l_802) = (safe_sub_func_int32_t_s_s((*l_797), 0x334E83F1L))) ^ l_803) ^ (l_806 < (((((*p_2179->g_303) = (safe_lshift_func_uint8_t_u_s((!((++(**p_2179->g_239)) , (((*l_828) = (safe_mul_func_int16_t_s_s(((p_2179->g_814 , (++(*l_816))) , ((safe_mul_func_int16_t_s_s((safe_sub_func_uint32_t_u_u((((*l_797) > l_806) != (((l_827 = (((safe_lshift_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s((&p_2179->g_629[0] != (void*)0), l_809)), 0)) <= l_815) <= l_806)) ^ l_809) , GROUP_DIVERGE(2, 1))), 0UL)), l_815)) && l_806)), l_803))) > GROUP_DIVERGE(2, 1)))), 4))) != l_809) < (*l_797)) >= 0xED74E632L))) && (*l_797)))))))
                    { /* block id: 413 */
                        int8_t l_852 = 6L;
                        uint16_t *l_853 = &p_2179->g_176;
                        uint32_t *l_857 = &p_2179->g_858[3][4];
                        uint8_t *l_859 = &p_2179->g_665;
                        l_860 = ((p_2179->g_5 ^ ((*l_859) = (((*l_857) |= (((safe_add_func_uint64_t_u_u(l_803, (((((+(((safe_rshift_func_int8_t_s_s((((l_838[9][2] >= (GROUP_DIVERGE(2, 1) , (l_809 != (safe_div_func_uint16_t_u_u(l_841[3][3][0], (*l_797)))))) & ((safe_div_func_uint16_t_u_u(((((*l_853) = (((*l_828) ^= ((safe_add_func_int64_t_s_s((((safe_mul_func_uint16_t_u_u(((safe_div_func_int32_t_s_s(l_827, (((*p_2179->g_303) = ((safe_lshift_func_uint8_t_u_u((((5L <= (l_815 & l_803)) > FAKE_DIVERGE(p_2179->local_2_offset, get_local_id(2), 10)) , l_809), 4)) && l_815)) && p_2179->g_85[(p_2179->g_469 + 5)][p_2179->g_115]))) & (-4L)), l_815)) | 8L) >= l_852), l_815)) > 1L)) < p_2179->g_5)) , 0xB0B9ED5DF6999A58L) || 8L), l_841[2][3][3])) , l_854[0])) ^ l_855), p_2179->g_665)) >= (*l_797)) > 4294967288UL)) | 0x00D17655L) || l_856) || (*l_797)) | p_2179->g_174[3]))) , 0xECE37C192204A890L) && FAKE_DIVERGE(p_2179->group_0_offset, get_group_id(0), 10))) , l_827))) | (*l_797));
                        return p_45;
                    }
                    else
                    { /* block id: 421 */
                        uint8_t l_876 = 0x93L;
                        p_2179->g_3 = (safe_rshift_func_int8_t_s_s(p_2179->g_833, 4));
                        (**p_2179->g_790) = p_45;
                        l_878 = (safe_mod_func_int16_t_s_s(((safe_mod_func_int64_t_s_s((safe_mul_func_uint16_t_u_u((safe_lshift_func_int8_t_s_s((safe_mul_func_int16_t_s_s(((0x308BL != (*p_2179->g_303)) && ((((safe_div_func_uint16_t_u_u(((((l_875 = &p_2179->g_858[1][6]) != (void*)0) && (*l_797)) , ((l_856 | ((l_854[0] && 0xD1751983C3DE3E98L) || 0x0193L)) || (*l_797))), (*p_2179->g_303))) >= (**p_2179->g_239)) & l_809) | (*l_797))), l_876)), p_2179->g_794[0])), 0x1A88L)), 0x018119CA1E49E535L)) & 0x399B2006D92F44DEL), GROUP_DIVERGE(0, 1)));
                        return p_45;
                    }
                }
                for (l_809 = 4; (l_809 >= 0); l_809 -= 1)
                { /* block id: 431 */
                    int8_t *l_881[3];
                    int64_t *l_889 = &p_2179->g_795;
                    int32_t l_890 = 1L;
                    int i, j;
                    for (i = 0; i < 3; i++)
                        l_881[i] = &p_2179->g_829;
                    if ((l_890 = ((safe_mul_func_int8_t_s_s((l_882 |= 1L), ((((*l_889) = ((GROUP_DIVERGE(2, 1) > ((safe_mod_func_int8_t_s_s(((void*)0 != l_885), p_2179->g_196[(l_809 + 3)])) ^ ((void*)0 != l_887[4]))) , ((((*p_2179->g_790) = (*p_2179->g_790)) != &p_2179->g_877[p_2179->g_469][(l_809 + 2)]) , (-9L)))) > l_856) == l_890))) <= l_856)))
                    { /* block id: 436 */
                        int32_t l_897 = (-9L);
                        uint8_t *l_898 = &p_2179->g_665;
                        uint8_t *l_905[1][2];
                        uint8_t **l_904 = &l_905[0][0];
                        int i, j;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 2; j++)
                                l_905[i][j] = (void*)0;
                        }
                        l_860 = ((l_803 <= l_827) < (safe_lshift_func_int16_t_s_s(((FAKE_DIVERGE(p_2179->local_1_offset, get_local_id(1), 10) != (safe_mul_func_uint8_t_u_u(((*l_898) |= (safe_mul_func_uint8_t_u_u(p_2179->g_85[(p_2179->g_469 + 5)][p_2179->g_115], l_897))), ((safe_div_func_int32_t_s_s((safe_unary_minus_func_int8_t_s(((safe_div_func_uint8_t_u_u((((0L < l_815) | (((*l_904) = &p_2179->g_137) != &p_2179->g_137)) ^ l_856), 0x4DL)) , p_2179->g_829))), l_856)) , p_2179->g_642)))) == 8L), l_827)));
                        if (l_897)
                            break;
                        return p_45;
                    }
                    else
                    { /* block id: 442 */
                        return p_45;
                    }
                }
                for (p_2179->g_10 = 0; (p_2179->g_10 <= 4); p_2179->g_10 += 1)
                { /* block id: 448 */
                    (*l_906) = 0x1D2BCE3CL;
                    for (l_855 = 1; (l_855 <= 4); l_855 += 1)
                    { /* block id: 452 */
                        uint64_t l_907 = 18446744073709551607UL;
                        uint32_t l_910[7][7] = {{0x2C3D3964L,4294967295UL,0x10B7B2F8L,8UL,0xEDD91228L,0xEDD91228L,8UL},{0x2C3D3964L,4294967295UL,0x10B7B2F8L,8UL,0xEDD91228L,0xEDD91228L,8UL},{0x2C3D3964L,4294967295UL,0x10B7B2F8L,8UL,0xEDD91228L,0xEDD91228L,8UL},{0x2C3D3964L,4294967295UL,0x10B7B2F8L,8UL,0xEDD91228L,0xEDD91228L,8UL},{0x2C3D3964L,4294967295UL,0x10B7B2F8L,8UL,0xEDD91228L,0xEDD91228L,8UL},{0x2C3D3964L,4294967295UL,0x10B7B2F8L,8UL,0xEDD91228L,0xEDD91228L,8UL},{0x2C3D3964L,4294967295UL,0x10B7B2F8L,8UL,0xEDD91228L,0xEDD91228L,8UL}};
                        int i, j;
                        --l_907;
                        l_910[2][6] ^= (*l_797);
                        (*l_906) = l_907;
                    }
                }
                for (p_2179->g_10 = 0; (p_2179->g_10 <= 7); p_2179->g_10 += 1)
                { /* block id: 460 */
                    int32_t *l_921 = &p_2179->g_517[0];
                    int32_t *l_922[7][4] = {{&p_2179->g_517[0],&l_809,&p_2179->g_5,&l_809},{&p_2179->g_517[0],&l_809,&p_2179->g_5,&l_809},{&p_2179->g_517[0],&l_809,&p_2179->g_5,&l_809},{&p_2179->g_517[0],&l_809,&p_2179->g_5,&l_809},{&p_2179->g_517[0],&l_809,&p_2179->g_5,&l_809},{&p_2179->g_517[0],&l_809,&p_2179->g_5,&l_809},{&p_2179->g_517[0],&l_809,&p_2179->g_5,&l_809}};
                    int8_t ***l_926 = &l_885;
                    int i, j;
                    for (l_855 = 0; (l_855 <= 4); l_855 += 1)
                    { /* block id: 463 */
                        uint16_t *****l_914[9][10] = {{&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913},{&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913},{&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913},{&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913},{&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913},{&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913},{&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913},{&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913},{&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913,&p_2179->g_913}};
                        int i, j;
                        l_827 ^= (p_2179->g_436 != p_2179->g_911);
                        (*l_906) = ((l_915 = (p_2179->g_913 = p_2179->g_913)) == (l_917[7] = &l_916));
                        if (p_2179->g_858[(l_855 + 1)][(p_2179->g_469 + 2)])
                            continue;
                        l_920[0] = (safe_rshift_func_int8_t_s_s(0L, 7));
                    }
                    ++l_923;
                    (*p_2179->g_119) = p_45;
                    ++l_932;
                }
            }
            else
            { /* block id: 476 */
                int32_t l_956 = 0x18F14AEDL;
                int32_t l_957[8];
                int32_t *l_963 = &p_2179->g_517[0];
                int32_t *l_964 = &l_930;
                int32_t *l_965 = &l_927;
                int32_t *l_966[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                uint16_t l_970[5][7] = {{0xFBE6L,65527UL,0xD4FAL,65527UL,0xFBE6L,0xFBE6L,65527UL},{0xFBE6L,65527UL,0xD4FAL,65527UL,0xFBE6L,0xFBE6L,65527UL},{0xFBE6L,65527UL,0xD4FAL,65527UL,0xFBE6L,0xFBE6L,65527UL},{0xFBE6L,65527UL,0xD4FAL,65527UL,0xFBE6L,0xFBE6L,65527UL},{0xFBE6L,65527UL,0xD4FAL,65527UL,0xFBE6L,0xFBE6L,65527UL}};
                int i, j;
                for (i = 0; i < 8; i++)
                    l_957[i] = 0x6D7BA149L;
                for (l_827 = 4; (l_827 >= 0); l_827 -= 1)
                { /* block id: 479 */
                    int64_t l_944 = 0x10BAF841716C2D69L;
                    int32_t l_955 = 0L;
                    for (l_932 = 0; (l_932 <= 0); l_932 += 1)
                    { /* block id: 482 */
                        uint8_t *l_943[10][9] = {{&p_2179->g_137,&p_2179->g_137,(void*)0,&p_2179->g_137,(void*)0,&p_2179->g_665,&p_2179->g_137,&p_2179->g_665,&p_2179->g_665},{&p_2179->g_137,&p_2179->g_137,(void*)0,&p_2179->g_137,(void*)0,&p_2179->g_665,&p_2179->g_137,&p_2179->g_665,&p_2179->g_665},{&p_2179->g_137,&p_2179->g_137,(void*)0,&p_2179->g_137,(void*)0,&p_2179->g_665,&p_2179->g_137,&p_2179->g_665,&p_2179->g_665},{&p_2179->g_137,&p_2179->g_137,(void*)0,&p_2179->g_137,(void*)0,&p_2179->g_665,&p_2179->g_137,&p_2179->g_665,&p_2179->g_665},{&p_2179->g_137,&p_2179->g_137,(void*)0,&p_2179->g_137,(void*)0,&p_2179->g_665,&p_2179->g_137,&p_2179->g_665,&p_2179->g_665},{&p_2179->g_137,&p_2179->g_137,(void*)0,&p_2179->g_137,(void*)0,&p_2179->g_665,&p_2179->g_137,&p_2179->g_665,&p_2179->g_665},{&p_2179->g_137,&p_2179->g_137,(void*)0,&p_2179->g_137,(void*)0,&p_2179->g_665,&p_2179->g_137,&p_2179->g_665,&p_2179->g_665},{&p_2179->g_137,&p_2179->g_137,(void*)0,&p_2179->g_137,(void*)0,&p_2179->g_665,&p_2179->g_137,&p_2179->g_665,&p_2179->g_665},{&p_2179->g_137,&p_2179->g_137,(void*)0,&p_2179->g_137,(void*)0,&p_2179->g_665,&p_2179->g_137,&p_2179->g_665,&p_2179->g_665},{&p_2179->g_137,&p_2179->g_137,(void*)0,&p_2179->g_137,(void*)0,&p_2179->g_665,&p_2179->g_137,&p_2179->g_665,&p_2179->g_665}};
                        int16_t ****l_949 = (void*)0;
                        int16_t ****l_950 = &p_2179->g_947;
                        int i, j;
                        (**p_2179->g_790) = (((((safe_lshift_func_uint16_t_u_u(((+(((((((p_45 == (((safe_add_func_uint16_t_u_u(((safe_sub_func_int16_t_s_s(p_2179->g_794[l_932], l_803)) & 0x1426L), (l_928 >= (safe_div_func_int64_t_s_s((((p_2179->g_137 = (p_2179->g_174[3] & 249UL)) & l_944) | ((safe_sub_func_int8_t_s_s((((*l_950) = p_2179->g_947) == l_951), l_944)) | 0x6A70C07CL)), l_944))))) && l_803) , (void*)0)) || 0x62007714ADF6A417L) , l_952) == (void*)0) <= 65535UL) , 0x93ADCA7075FCB794L) <= l_944)) | p_2179->g_794[l_932]), l_932)) , l_953) == (void*)0) , p_2179->g_954) , (void*)0);
                        if (l_932)
                            break;
                        if (l_928)
                            break;
                    }
                    if (l_955)
                        continue;
                }
                if ((p_2179->g_831 & 0x20L))
                { /* block id: 491 */
                    for (p_2179->g_3 = 4; (p_2179->g_3 >= 1); p_2179->g_3 -= 1)
                    { /* block id: 494 */
                        int8_t l_958 = (-1L);
                        int32_t *l_961 = &p_2179->g_517[3];
                        if (l_882)
                            break;
                        l_957[7] &= (l_956 = (l_930 < 0x4ACCL));
                        if (l_958)
                            break;
                        (*l_961) ^= (l_809 = (safe_rshift_func_int16_t_s_u((*l_797), 6)));
                    }
                }
                else
                { /* block id: 502 */
                    uint64_t l_962 = 18446744073709551615UL;
                    for (l_855 = 1; (l_855 <= 7); l_855 += 1)
                    { /* block id: 505 */
                        return p_45;
                    }
                    l_930 = l_962;
                }
                ++l_970[2][5];
            }
            l_928 &= l_882;
        }
    }
    l_989 ^= (((safe_rshift_func_uint8_t_u_u((0x228ECACB891C91E5L >= (l_987 = (GROUP_DIVERGE(2, 1) == ((safe_mod_func_uint16_t_u_u((safe_lshift_func_int8_t_s_s((((((l_984 &= (l_803 != ((((safe_sub_func_uint8_t_u_u(((p_2179->g_630 = l_981) == &p_2179->g_795), l_968[0][7][3])) ^ 4L) , (((p_2179->g_790 = (void*)0) != (p_2179->g_794[0] , &p_2179->g_119)) < FAKE_DIVERGE(p_2179->local_2_offset, get_local_id(2), 10))) ^ 0x64E88910L))) > p_2179->g_5) , l_985[0][0][0]) | p_2179->g_986) | 0xB353L), 0)), 2UL)) & (**p_2179->g_239))))), 6)) , l_988) != p_2179->g_829);
    for (p_2179->g_642 = 0; (p_2179->g_642 < 54); p_2179->g_642 = safe_add_func_int8_t_s_s(p_2179->g_642, 1))
    { /* block id: 522 */
        int32_t l_1007 = 0x31359F7CL;
        int32_t l_1037 = 1L;
        int16_t l_1067[5][9][5] = {{{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L}},{{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L}},{{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L}},{{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L}},{{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L},{0x7106L,0x59E5L,0x2648L,0x67BEL,0x3B59L}}};
        int i, j, k;
        for (p_2179->g_176 = 0; (p_2179->g_176 < 45); p_2179->g_176 = safe_add_func_int16_t_s_s(p_2179->g_176, 4))
        { /* block id: 525 */
            int64_t l_996[1];
            uint32_t l_1020 = 4294967295UL;
            int32_t l_1028 = 0x15E20349L;
            int16_t *l_1031 = &l_987;
            int32_t l_1034[10][6][4] = {{{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)}},{{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)}},{{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)}},{{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)}},{{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)}},{{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)}},{{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)}},{{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)}},{{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)}},{{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)},{0L,0x2375534EL,(-1L),(-10L)}}};
            uint64_t **l_1065 = &l_1064;
            int8_t *l_1066 = &l_985[0][0][0];
            int i, j, k;
            for (i = 0; i < 1; i++)
                l_996[i] = 0x51D555E12FCB64A9L;
            for (p_2179->g_831 = 27; (p_2179->g_831 == (-28)); p_2179->g_831 = safe_sub_func_int32_t_s_s(p_2179->g_831, 2))
            { /* block id: 528 */
                uint32_t l_1027 = 0x625427B3L;
                int32_t l_1032 = 0L;
                int8_t *l_1033 = &p_2179->g_829;
                int8_t *l_1035[3];
                int32_t l_1036 = 0x1DF94168L;
                int i;
                for (i = 0; i < 3; i++)
                    l_1035[i] = &p_2179->g_833;
                l_1037 &= (l_996[0] != ((((l_1032 = (safe_mod_func_uint8_t_u_u((safe_div_func_int32_t_s_s(((((safe_add_func_int8_t_s_s((FAKE_DIVERGE(p_2179->local_2_offset, get_local_id(2), 10) ^ (p_2179->g_109[2] = ((safe_lshift_func_int16_t_s_u(((l_1034[9][3][0] ^= ((*l_1033) = (safe_mul_func_int8_t_s_s(l_1007, (safe_sub_func_uint16_t_u_u((safe_sub_func_uint8_t_u_u(0xC8L, (safe_mod_func_int32_t_s_s(((safe_div_func_int8_t_s_s(((safe_lshift_func_int8_t_s_s(l_996[0], ((safe_sub_func_uint64_t_u_u(l_1020, (((((safe_div_func_int64_t_s_s((safe_div_func_int64_t_s_s((l_1028 &= (l_1027 |= (((safe_lshift_func_uint16_t_u_s(FAKE_DIVERGE(p_2179->local_2_offset, get_local_id(2), 10), 14)) , l_1007) ^ 0L))), FAKE_DIVERGE(p_2179->global_1_offset, get_global_id(1), 10))), (safe_div_func_uint16_t_u_u((l_1031 == (void*)0), 0x25E9L)))) >= l_996[0]) , 0x4C57B830L) && l_1027) < l_996[0]))) <= (-1L)))) , (-1L)), l_1032)) , l_1007), l_1032)))), 0x7E07L)))))) != 8L), 2)) > l_996[0]))), l_1007)) | 0L) , l_1034[9][3][0]) && l_1007), l_996[0])), l_1032))) & l_1036) >= l_1020) | l_1007));
                l_1036 = l_1007;
                for (l_989 = (-26); (l_989 > 15); l_989++)
                { /* block id: 539 */
                    uint32_t l_1042 = 4294967295UL;
                    for (l_1020 = (-13); (l_1020 >= 42); ++l_1020)
                    { /* block id: 542 */
                        if (l_1042)
                            break;
                    }
                }
            }
            if (p_2179->g_1043[3][6])
                continue;
            l_1067[2][4][2] ^= (safe_add_func_uint16_t_u_u(((((((safe_div_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), 2)), (safe_lshift_func_int8_t_s_u((0xC2D2DEDBFAF6F12BL | (0UL == ((*l_1066) = (((((!(p_45 == (p_2179->g_517[0] , p_45))) < ((((safe_mul_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(p_2179->g_831, ((safe_div_func_int64_t_s_s(l_1007, (l_1034[9][3][0] = (l_1037 = (p_2179->g_1058[0] , (safe_div_func_int8_t_s_s((safe_div_func_uint64_t_u_u(18446744073709551607UL, l_1028)), p_2179->g_174[3]))))))) | l_1007))), 251UL)) , l_1063) != l_1065) < l_1028)) || (-4L)) , &p_2179->g_196[5]) != p_45)))), 5)))) >= l_1007) != p_2179->g_829) >= (**p_2179->g_948)) < p_2179->g_109[2]) & p_2179->g_665), l_1007));
        }
    }
    for (p_2179->g_829 = 0; (p_2179->g_829 < 21); p_2179->g_829 = safe_add_func_int32_t_s_s(p_2179->g_829, 4))
    { /* block id: 556 */
        int32_t l_1071 = (-2L);
        int16_t l_1077 = 1L;
        uint64_t **l_1081 = (void*)0;
        int32_t l_1091 = 3L;
        uint8_t *l_1092[9][9][2] = {{{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665}},{{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665}},{{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665}},{{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665}},{{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665}},{{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665}},{{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665}},{{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665}},{{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665},{&p_2179->g_665,&p_2179->g_665}}};
        int32_t l_1093 = 1L;
        int32_t l_1094 = 0x463B3DB1L;
        int16_t *l_1103 = (void*)0;
        int16_t *l_1104 = &l_989;
        int8_t *l_1107 = &p_2179->g_833;
        int i, j, k;
        l_1071 = l_1070;
        for (p_2179->g_3 = 0; (p_2179->g_3 <= 3); p_2179->g_3 += 1)
        { /* block id: 560 */
            int8_t *l_1075 = &p_2179->g_109[0];
            int8_t *l_1076 = &l_988;
            int32_t l_1078 = 0x58A4C819L;
            int i;
            l_1072[2] |= p_2179->g_174[p_2179->g_3];
            l_1078 |= (safe_sub_func_uint16_t_u_u((l_1071 > ((*l_1076) = ((*l_1075) = 0x6AL))), l_1077));
            (*p_2179->g_119) = (void*)0;
        }
        l_1091 = ((safe_add_func_int16_t_s_s((+(**p_2179->g_948)), ((((l_1081 == &l_1064) && (safe_lshift_func_int8_t_s_s(((*l_1107) |= ((safe_lshift_func_uint8_t_u_s((((safe_mul_func_int16_t_s_s((***p_2179->g_947), ((p_2179->g_1090 , ((p_2179->g_665++) >= FAKE_DIVERGE(p_2179->group_2_offset, get_group_id(2), 10))) || ((safe_mul_func_uint8_t_u_u(((((safe_add_func_int16_t_s_s(((*l_1104) &= (safe_mod_func_uint16_t_u_u(l_1093, (l_1094 || l_1077)))), ((safe_mod_func_uint16_t_u_u(((+(l_1094 , FAKE_DIVERGE(p_2179->local_0_offset, get_local_id(0), 10))) , 0UL), l_1091)) < (***p_2179->g_947)))) == l_1071) || (-1L)) || l_1091), 1L)) > l_1093)))) < p_2179->g_794[0]) <= l_1094), 0)) && l_1093)), p_2179->g_642))) , 0x0574L) , p_2179->g_1108))) & 8UL);
        l_1094 = (-1L);
    }
    return p_45;
}


/* ------------------------------------------ */
/* 
 * reads : p_2179->g_784 p_2179->g_196 p_2179->g_517 p_2179->g_303 p_2179->g_794 p_2179->g_5 l_12
 * writes: p_2179->g_790 p_2179->g_269 p_2179->g_794 p_2179->g_795 p_2179->g_5 l_12
 */
int32_t * func_46(int32_t * p_47, int32_t * p_48, int32_t * p_49, int32_t * p_50, int16_t  p_51, struct S1 * p_2179)
{ /* block id: 375 */
    int16_t l_775 = 1L;
    uint64_t l_780 = 0UL;
    int32_t *****l_783 = (void*)0;
    int32_t ***l_789 = &p_2179->g_119;
    int32_t ****l_788[9] = {&l_789,&l_789,&l_789,&l_789,&l_789,&l_789,&l_789,&l_789,&l_789};
    int32_t ***l_791[3];
    int16_t l_792 = 0x56CCL;
    int16_t *l_793 = &p_2179->g_794[0];
    int32_t *l_796[10];
    int i;
    for (i = 0; i < 3; i++)
        l_791[i] = &p_2179->g_119;
    for (i = 0; i < 10; i++)
        l_796[i] = (void*)0;
    for (p_51 = 11; (p_51 >= (-28)); p_51--)
    { /* block id: 378 */
        int32_t *l_764 = &p_2179->g_517[5];
        return l_764;
    }
    p_2179->g_5 &= ((*p_47) = ((1L != ((safe_rshift_func_int8_t_s_s((safe_mod_func_uint16_t_u_u(FAKE_DIVERGE(p_2179->global_1_offset, get_global_id(1), 10), (p_2179->g_795 = ((safe_sub_func_int16_t_s_s(0x6618L, ((safe_add_func_uint64_t_u_u((GROUP_DIVERGE(2, 1) >= (safe_sub_func_int64_t_s_s(l_775, (((*l_793) |= (((*p_2179->g_303) = (safe_lshift_func_int8_t_s_s(((safe_add_func_int64_t_s_s((p_51 ^ l_780), ((safe_mul_func_uint16_t_u_u((l_783 == p_2179->g_784), (safe_mul_func_int16_t_s_s(((((p_2179->g_790 = &p_2179->g_119) == (FAKE_DIVERGE(p_2179->local_2_offset, get_local_id(2), 10) , l_791[1])) | (*p_47)) ^ l_792), 0x3097L)))) ^ p_2179->g_196[5]))) < 3UL), p_2179->g_517[2]))) > p_51)) , p_51)))), p_51)) < 0x27L))) || 7L)))), 1)) , p_51)) > p_51));
    return l_796[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_2179->g_85 p_2179->g_5 p_2179->g_comm_values p_2179->g_3 p_2179->g_10 p_2179->g_115 p_2179->g_11 p_2179->l_comm_values p_2179->g_119 p_2179->g_105 p_2179->g_109 p_2179->g_182 p_2179->g_172 p_2179->g_196 p_2179->g_402 p_2179->g_244 p_2179->g_245 p_2179->g_246 p_2179->g_165 p_2179->g_436 p_2179->g_441 p_2179->g_14 p_2179->g_176 p_2179->g_303 p_2179->g_269 p_2179->g_174 p_2179->g_494 p_2179->g_442 p_2179->g_517 p_2179->g_239 p_2179->g_323 p_2179->g_402.f0 p_2179->g_573 p_2179->g_323.f0 p_2179->g_469 p_2179->g_626 p_2179->g_137 p_2179->g_642 p_2179->g_655 p_2179->g_629 p_2179->g_655.f0 p_2179->g_702 p_2179->g_665
 * writes: p_2179->g_85 p_2179->g_105 p_2179->g_109 p_2179->g_115 p_2179->g_5 p_2179->g_119 p_2179->g_137 p_2179->g_3 p_2179->g_10 p_2179->g_165 p_2179->g_172 p_2179->g_174 p_2179->g_176 p_2179->g_196 p_2179->l_comm_values p_2179->g_442 p_2179->g_573 p_2179->g_269 p_2179->g_629 p_2179->g_630 p_2179->g_642 p_2179->g_665
 */
int32_t * func_52(int64_t  p_53, uint64_t  p_54, struct S1 * p_2179)
{ /* block id: 25 */
    int32_t *l_67 = &p_2179->g_3;
    int32_t *l_68 = &p_2179->g_3;
    int32_t *l_69 = (void*)0;
    int32_t *l_70 = &p_2179->g_5;
    int32_t l_71 = 0x4165AAE7L;
    int32_t *l_72 = &l_71;
    int32_t *l_73 = &p_2179->g_3;
    int32_t *l_74 = (void*)0;
    int32_t *l_75 = &p_2179->g_3;
    int32_t *l_76 = &p_2179->g_5;
    int32_t *l_77 = &l_71;
    int32_t *l_78 = &p_2179->g_5;
    int32_t *l_79 = &p_2179->g_5;
    int32_t *l_80 = &p_2179->g_3;
    int32_t *l_81 = (void*)0;
    int32_t *l_82 = &l_71;
    int32_t *l_83 = &p_2179->g_3;
    int32_t *l_84 = &l_71;
    int32_t **l_118[3][4];
    int32_t ***l_117[3];
    int8_t *l_128 = &p_2179->g_109[3];
    uint8_t *l_136 = &p_2179->g_137;
    uint32_t l_181 = 0x99AC2BE0L;
    uint16_t *l_243 = &p_2179->g_176;
    uint16_t **l_242 = &l_243;
    int16_t *l_268 = &p_2179->g_269;
    uint16_t ***l_273 = &l_242;
    int8_t **l_291 = &l_128;
    uint32_t l_322[8] = {4294967289UL,4294967289UL,4294967289UL,4294967289UL,4294967289UL,4294967289UL,4294967289UL,4294967289UL};
    int8_t l_389 = 0x6CL;
    uint64_t l_397[1];
    int32_t *l_405 = &p_2179->g_5;
    volatile union U0 *l_419 = &p_2179->g_323[4];
    uint32_t l_437 = 0UL;
    int64_t l_535 = 0x6A05840F3624F4D2L;
    int32_t l_580 = 2L;
    uint8_t l_623 = 253UL;
    int64_t l_656 = 0x7231E8CEEA165BD3L;
    uint32_t *l_735 = &p_2179->g_642;
    uint32_t l_756 = 4294967288UL;
    int64_t l_757 = (-3L);
    int32_t *l_758 = (void*)0;
    int i, j;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 4; j++)
            l_118[i][j] = &l_74;
    }
    for (i = 0; i < 3; i++)
        l_117[i] = &l_118[1][3];
    for (i = 0; i < 1; i++)
        l_397[i] = 0x44ECC76CC31A9D30L;
    p_2179->g_85[9][4]++;
lbl_686:
    p_2179->g_119 = func_88((safe_sub_func_int8_t_s_s((((p_53 & p_2179->g_5) , (void*)0) == &l_81), (p_2179->g_comm_values[p_2179->tid] || 8UL))), p_2179);
    if ((((safe_add_func_int16_t_s_s((((((*p_2179->g_119) = (*p_2179->g_119)) != ((((safe_mod_func_int8_t_s_s((safe_sub_func_int8_t_s_s(((0xD400D3BCL || ((*l_72) = (p_2179->g_119 != p_2179->g_119))) , ((*l_128) = (!p_2179->g_comm_values[p_2179->tid]))), ((*l_136) = (safe_unary_minus_func_uint8_t_u(((((GROUP_DIVERGE(0, 1) < (0x56D9707EL & (safe_lshift_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_s(0UL, 0)), (((p_54 < (safe_rshift_func_uint8_t_u_s((p_2179->g_85[3][4] > (-2L)), p_2179->g_3))) | 0x5A10L) != (*l_80)))))) , l_128) == (void*)0) & p_53)))))), 0x54L)) , p_2179->g_115) <= 5L) , &p_2179->g_3)) , (*l_70)) , p_2179->g_3), (*l_75))) , (void*)0) == l_128))
    { /* block id: 41 */
        int32_t l_138 = (-1L);
        int32_t *l_163 = (void*)0;
        int32_t l_175 = 0x73575615L;
        int8_t l_184 = 1L;
        int32_t ***l_192 = &l_118[1][3];
        uint8_t l_257 = 0x41L;
        int32_t ***l_316 = &l_118[1][3];
        uint16_t *l_363 = (void*)0;
        union U0 *l_440 = &p_2179->g_402;
        int64_t l_447 = (-4L);
        int32_t l_479 = 0L;
        uint64_t l_501 = 0xD9FDEA11C1A807DCL;
        uint64_t *l_519 = &l_397[0];
        int32_t l_563 = 0L;
        int32_t l_566 = 0x38A85D32L;
        int32_t l_567 = 5L;
        int32_t l_568 = 0x797909ACL;
        int32_t l_569[2][10] = {{0L,0x2ECBFDEEL,0x0EA0470EL,0x2ECBFDEEL,0L,0L,0x2ECBFDEEL,0x0EA0470EL,0x2ECBFDEEL,0L},{0L,0x2ECBFDEEL,0x0EA0470EL,0x2ECBFDEEL,0L,0L,0x2ECBFDEEL,0x0EA0470EL,0x2ECBFDEEL,0L}};
        int i, j;
lbl_183:
        (*p_2179->g_119) = (*p_2179->g_119);
        for (l_71 = 4; (l_71 >= 0); l_71 -= 1)
        { /* block id: 45 */
            int32_t *l_164[1][4][8] = {{{&p_2179->g_115,&p_2179->g_115,&p_2179->g_115,&p_2179->g_3,&p_2179->g_115,&p_2179->g_3,&p_2179->g_115,&p_2179->g_115},{&p_2179->g_115,&p_2179->g_115,&p_2179->g_115,&p_2179->g_3,&p_2179->g_115,&p_2179->g_3,&p_2179->g_115,&p_2179->g_115},{&p_2179->g_115,&p_2179->g_115,&p_2179->g_115,&p_2179->g_3,&p_2179->g_115,&p_2179->g_3,&p_2179->g_115,&p_2179->g_115},{&p_2179->g_115,&p_2179->g_115,&p_2179->g_115,&p_2179->g_3,&p_2179->g_115,&p_2179->g_3,&p_2179->g_115,&p_2179->g_115}}};
            uint8_t *l_189[6] = {&p_2179->g_137,&p_2179->g_137,&p_2179->g_137,&p_2179->g_137,&p_2179->g_137,&p_2179->g_137};
            uint8_t *l_190 = &p_2179->g_137;
            int i, j, k;
            (*l_73) = l_138;
            for (p_2179->g_115 = 0; (p_2179->g_115 <= 4); p_2179->g_115 += 1)
            { /* block id: 49 */
                uint8_t l_178 = 9UL;
                for (p_2179->g_10 = 3; (p_2179->g_10 >= 0); p_2179->g_10 -= 1)
                { /* block id: 52 */
                    uint64_t l_177[2][3][4] = {{{0x5DFB398794C979CEL,0x62718EDF5E4C99D6L,0x5DFB398794C979CEL,0x5DFB398794C979CEL},{0x5DFB398794C979CEL,0x62718EDF5E4C99D6L,0x5DFB398794C979CEL,0x5DFB398794C979CEL},{0x5DFB398794C979CEL,0x62718EDF5E4C99D6L,0x5DFB398794C979CEL,0x5DFB398794C979CEL}},{{0x5DFB398794C979CEL,0x62718EDF5E4C99D6L,0x5DFB398794C979CEL,0x5DFB398794C979CEL},{0x5DFB398794C979CEL,0x62718EDF5E4C99D6L,0x5DFB398794C979CEL,0x5DFB398794C979CEL},{0x5DFB398794C979CEL,0x62718EDF5E4C99D6L,0x5DFB398794C979CEL,0x5DFB398794C979CEL}}};
                    int i, j, k;
                    for (p_54 = 0; (p_54 <= 2); p_54 += 1)
                    { /* block id: 55 */
                        uint16_t *l_170 = (void*)0;
                        uint16_t *l_171 = &p_2179->g_172;
                        uint64_t *l_173[5] = {&p_2179->g_174[3],&p_2179->g_174[3],&p_2179->g_174[3],&p_2179->g_174[3],&p_2179->g_174[3]};
                        int i, j;
                        (*l_75) = (safe_sub_func_uint32_t_u_u(((safe_sub_func_uint64_t_u_u(0xD3B5AAABC806B18CL, FAKE_DIVERGE(p_2179->local_1_offset, get_local_id(1), 10))) != (((safe_mul_func_int8_t_s_s((safe_mod_func_int8_t_s_s(p_2179->g_85[(l_71 + 5)][p_2179->g_115], (safe_mod_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(((safe_div_func_int8_t_s_s((-8L), p_2179->g_109[2])) == (p_2179->g_176 = (((FAKE_DIVERGE(p_2179->local_1_offset, get_local_id(1), 10) == (!(safe_lshift_func_int8_t_s_s((safe_add_func_uint64_t_u_u((((safe_sub_func_uint64_t_u_u((p_2179->g_174[3] = (l_175 &= ((safe_mul_func_uint8_t_u_u((((*p_2179->g_119) = l_163) != (p_2179->g_165 = l_164[0][1][4])), (&p_2179->g_137 != ((safe_mod_func_int32_t_s_s((65527UL <= ((*l_171) = (~((((safe_mod_func_int64_t_s_s(((void*)0 != l_118[p_54][p_2179->g_10]), p_53)) & 4L) , FAKE_DIVERGE(p_2179->global_2_offset, get_global_id(2), 10)) != p_54)))), 0x448BB85DL)) , l_136)))) , 0xF0232DB0CE1991DEL))), p_53)) , (void*)0) != &p_2179->g_137), p_54)), 7)))) , GROUP_DIVERGE(2, 1)) < p_2179->g_5))), GROUP_DIVERGE(1, 1))), p_53)))), l_177[0][2][1])) || p_54) != 65535UL)), p_53));
                        l_178--;
                    }
                    if (l_178)
                        break;
                }
                (*l_70) ^= p_53;
            }
            (*p_2179->g_119) = func_56(p_53, p_2179);
            (**p_2179->g_119) ^= ((l_181 , p_2179->g_182) != (void*)0);
            for (l_175 = 0; (l_175 <= 2); l_175 += 1)
            { /* block id: 73 */
                uint8_t *l_187 = (void*)0;
                uint8_t **l_188[5][3][9] = {{{&l_136,&l_136,&l_187,&l_187,&l_136,&l_187,&l_187,&l_136,&l_136},{&l_136,&l_136,&l_187,&l_187,&l_136,&l_187,&l_187,&l_136,&l_136},{&l_136,&l_136,&l_187,&l_187,&l_136,&l_187,&l_187,&l_136,&l_136}},{{&l_136,&l_136,&l_187,&l_187,&l_136,&l_187,&l_187,&l_136,&l_136},{&l_136,&l_136,&l_187,&l_187,&l_136,&l_187,&l_187,&l_136,&l_136},{&l_136,&l_136,&l_187,&l_187,&l_136,&l_187,&l_187,&l_136,&l_136}},{{&l_136,&l_136,&l_187,&l_187,&l_136,&l_187,&l_187,&l_136,&l_136},{&l_136,&l_136,&l_187,&l_187,&l_136,&l_187,&l_187,&l_136,&l_136},{&l_136,&l_136,&l_187,&l_187,&l_136,&l_187,&l_187,&l_136,&l_136}},{{&l_136,&l_136,&l_187,&l_187,&l_136,&l_187,&l_187,&l_136,&l_136},{&l_136,&l_136,&l_187,&l_187,&l_136,&l_187,&l_187,&l_136,&l_136},{&l_136,&l_136,&l_187,&l_187,&l_136,&l_187,&l_187,&l_136,&l_136}},{{&l_136,&l_136,&l_187,&l_187,&l_136,&l_187,&l_187,&l_136,&l_136},{&l_136,&l_136,&l_187,&l_187,&l_136,&l_187,&l_187,&l_136,&l_136},{&l_136,&l_136,&l_187,&l_187,&l_136,&l_187,&l_187,&l_136,&l_136}}};
                int32_t ****l_191 = (void*)0;
                int32_t ****l_193 = &l_117[0];
                int32_t *l_194 = (void*)0;
                int32_t *l_195 = &p_2179->g_196[5];
                int i, j, k;
                if (p_53)
                    goto lbl_183;
                p_2179->g_115 &= (p_2179->g_172 , ((l_184 != (**p_2179->g_119)) , (safe_mod_func_int32_t_s_s((((*l_128) = ((l_189[5] = l_187) == (l_190 = l_190))) , (((l_192 = &l_118[0][2]) == ((*l_193) = &p_2179->g_119)) ^ 4294967295UL)), (((*l_195) ^= ((GROUP_DIVERGE(2, 1) || p_2179->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2179->tid, 26))]) > p_2179->g_85[4][1])) , (*l_75))))));
            }
        }
        if ((p_53 & 0xCC889B63L))
        { /* block id: 84 */
            int16_t l_204 = (-6L);
            int32_t l_249 = (-1L);
            int32_t l_250 = 0x7B58E865L;
            int32_t l_251 = 0x002F3114L;
            int8_t **l_288 = &l_128;
            int32_t *l_339 = (void*)0;
            uint64_t l_359 = 0x99D3E902532BCFAFL;
            for (p_2179->g_172 = 25; (p_2179->g_172 > 18); p_2179->g_172 = safe_sub_func_int64_t_s_s(p_2179->g_172, 7))
            { /* block id: 87 */
                uint8_t l_223 = 4UL;
                int32_t l_225 = 0L;
                int32_t l_226 = 0x719709B9L;
                (1 + 1);
            }
            for (l_71 = 21; (l_71 <= 1); l_71 = safe_sub_func_int8_t_s_s(l_71, 4))
            { /* block id: 118 */
                uint8_t l_252 = 0x78L;
                l_252++;
                for (p_2179->g_176 = 0; (p_2179->g_176 >= 39); p_2179->g_176 = safe_add_func_int16_t_s_s(p_2179->g_176, 9))
                { /* block id: 122 */
                    --l_257;
                }
            }
            for (p_2179->g_10 = (-17); (p_2179->g_10 <= 8); ++p_2179->g_10)
            { /* block id: 128 */
                uint32_t *l_264 = &l_181;
                int32_t l_267 = 0x2170A1CFL;
                int16_t **l_270 = &l_268;
                uint16_t ***l_272 = &l_242;
                uint16_t ****l_271[7][3][5] = {{{&l_272,&l_272,&l_272,&l_272,&l_272},{&l_272,&l_272,&l_272,&l_272,&l_272},{&l_272,&l_272,&l_272,&l_272,&l_272}},{{&l_272,&l_272,&l_272,&l_272,&l_272},{&l_272,&l_272,&l_272,&l_272,&l_272},{&l_272,&l_272,&l_272,&l_272,&l_272}},{{&l_272,&l_272,&l_272,&l_272,&l_272},{&l_272,&l_272,&l_272,&l_272,&l_272},{&l_272,&l_272,&l_272,&l_272,&l_272}},{{&l_272,&l_272,&l_272,&l_272,&l_272},{&l_272,&l_272,&l_272,&l_272,&l_272},{&l_272,&l_272,&l_272,&l_272,&l_272}},{{&l_272,&l_272,&l_272,&l_272,&l_272},{&l_272,&l_272,&l_272,&l_272,&l_272},{&l_272,&l_272,&l_272,&l_272,&l_272}},{{&l_272,&l_272,&l_272,&l_272,&l_272},{&l_272,&l_272,&l_272,&l_272,&l_272},{&l_272,&l_272,&l_272,&l_272,&l_272}},{{&l_272,&l_272,&l_272,&l_272,&l_272},{&l_272,&l_272,&l_272,&l_272,&l_272},{&l_272,&l_272,&l_272,&l_272,&l_272}}};
                uint8_t **l_340 = &l_136;
                int32_t l_344 = 0L;
                int32_t l_348 = 0x0B13B508L;
                int32_t l_364 = 0x08DA7AD1L;
                int32_t *l_367 = &p_2179->g_196[5];
                int i, j, k;
                (1 + 1);
            }
        }
        else
        { /* block id: 189 */
            uint32_t *l_398 = (void*)0;
            uint32_t *l_399 = &l_322[7];
            int32_t l_400 = (-1L);
            int32_t **l_401[8];
            int i;
            for (i = 0; i < 8; i++)
                l_401[i] = &l_68;
            (*l_75) = (safe_mod_func_int16_t_s_s(((safe_mod_func_uint8_t_u_u((((*l_399) = ((l_389 , ((*l_84) = ((safe_add_func_uint32_t_u_u((((248UL == ((safe_unary_minus_func_uint32_t_u((0xE0L || ((**l_291) = (safe_rshift_func_uint8_t_u_u((0x5445L <= 0UL), ((safe_div_func_uint64_t_u_u(l_397[0], p_2179->g_comm_values[p_2179->tid])) || ((FAKE_DIVERGE(p_2179->global_1_offset, get_global_id(1), 10) , ((*l_83) & (FAKE_DIVERGE(p_2179->global_0_offset, get_global_id(0), 10) > 0x6790ED09D8D0A3EDL))) ^ p_2179->g_10)))))))) || p_53)) == 65531UL) || p_53), p_54)) ^ p_53))) != p_2179->g_172)) , 0xA2L), (-6L))) , l_400), p_53));
            (*l_72) = 9L;
            (*l_192) = l_401[5];
        }
        if (((p_2179->g_11 , p_2179->g_402) , (*l_78)))
        { /* block id: 197 */
            uint32_t l_408 = 7UL;
            uint32_t *l_417 = (void*)0;
            uint64_t *l_424 = &p_2179->g_174[3];
            uint64_t **l_423 = &l_424;
            uint64_t ***l_422 = &l_423;
            int32_t l_439 = 0L;
            int32_t ***l_513[6] = {&l_118[1][3],&l_118[1][3],&l_118[1][3],&l_118[1][3],&l_118[1][3],&l_118[1][3]};
            uint32_t l_516 = 0xFA465732L;
            int64_t *l_534[2][8][3] = {{{&l_447,&l_447,&l_447},{&l_447,&l_447,&l_447},{&l_447,&l_447,&l_447},{&l_447,&l_447,&l_447},{&l_447,&l_447,&l_447},{&l_447,&l_447,&l_447},{&l_447,&l_447,&l_447},{&l_447,&l_447,&l_447}},{{&l_447,&l_447,&l_447},{&l_447,&l_447,&l_447},{&l_447,&l_447,&l_447},{&l_447,&l_447,&l_447},{&l_447,&l_447,&l_447},{&l_447,&l_447,&l_447},{&l_447,&l_447,&l_447},{&l_447,&l_447,&l_447}}};
            int i, j, k;
            for (p_2179->g_115 = 0; (p_2179->g_115 >= (-28)); p_2179->g_115 = safe_sub_func_int32_t_s_s(p_2179->g_115, 9))
            { /* block id: 200 */
                return l_405;
            }
            if (p_53)
            { /* block id: 203 */
                uint16_t *l_414 = &p_2179->g_176;
                int32_t l_415 = 0x0D9A0E59L;
                for (l_71 = 0; (l_71 < 0); l_71++)
                { /* block id: 206 */
                    uint32_t l_416 = 4294967290UL;
                    uint32_t **l_418 = &l_417;
                    int32_t l_453 = 0x61D4F1E7L;
                    l_408--;
                    if ((((*l_418) = (((safe_add_func_int8_t_s_s(((safe_unary_minus_func_uint32_t_u(((**p_2179->g_244) != (l_414 = (*p_2179->g_245))))) | (p_2179->g_10 || l_415)), (-2L))) <= l_416) , l_417)) != p_2179->g_165))
                    { /* block id: 210 */
                        if (p_54)
                            break;
                    }
                    else
                    { /* block id: 212 */
                        int64_t *l_433[7][10][3];
                        int32_t *l_438 = &p_2179->g_10;
                        int i, j, k;
                        for (i = 0; i < 7; i++)
                        {
                            for (j = 0; j < 10; j++)
                            {
                                for (k = 0; k < 3; k++)
                                    l_433[i][j][k] = (void*)0;
                            }
                        }
                        l_419 = &p_2179->g_323[2];
                        l_439 = (p_53 & (safe_lshift_func_int16_t_s_u(3L, ((l_422 != ((((*l_438) = ((safe_mul_func_int16_t_s_s(p_54, (((safe_div_func_int8_t_s_s((safe_mul_func_uint16_t_u_u(((safe_add_func_int8_t_s_s(((p_2179->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2179->tid, 26))] = 0x3795734132EE4A3EL) , (0x353F86A5L < (&l_118[0][2] == &l_118[1][3]))), (p_2179->g_436 != (void*)0))) & l_437), 0xA36EL)), 0x41L)) || p_53) >= 1L))) , p_53)) , 8L) , &l_423)) , p_54))));
                        (**l_316) = (**l_316);
                    }
                    (*p_2179->g_441) = l_440;
                    (*p_2179->g_119) = func_56(((l_453 ^= (safe_add_func_int32_t_s_s((safe_add_func_int32_t_s_s(((-3L) == (p_2179->g_3 != ((((*l_76) = l_416) < ((l_447 >= p_53) < (safe_mod_func_uint8_t_u_u(p_2179->g_14, (l_415 |= (l_408 , p_53)))))) > ((safe_unary_minus_func_uint8_t_u(FAKE_DIVERGE(p_2179->group_2_offset, get_group_id(2), 10))) == ((p_54 < 0UL) != 0x5A551108L))))), p_2179->g_109[5])), p_2179->g_115))) != l_439), p_2179);
                }
            }
            else
            { /* block id: 225 */
                uint32_t l_467[10][5][1] = {{{9UL},{9UL},{9UL},{9UL},{9UL}},{{9UL},{9UL},{9UL},{9UL},{9UL}},{{9UL},{9UL},{9UL},{9UL},{9UL}},{{9UL},{9UL},{9UL},{9UL},{9UL}},{{9UL},{9UL},{9UL},{9UL},{9UL}},{{9UL},{9UL},{9UL},{9UL},{9UL}},{{9UL},{9UL},{9UL},{9UL},{9UL}},{{9UL},{9UL},{9UL},{9UL},{9UL}},{{9UL},{9UL},{9UL},{9UL},{9UL}},{{9UL},{9UL},{9UL},{9UL},{9UL}}};
                int32_t l_491 = 4L;
                uint8_t **l_506 = &l_136;
                int64_t l_522[6] = {1L,0x400201681FC9CFEEL,1L,1L,0x400201681FC9CFEEL,1L};
                uint64_t **l_553 = &l_424;
                int32_t l_565 = 7L;
                int32_t l_572[3][1][1];
                int i, j, k;
                for (i = 0; i < 3; i++)
                {
                    for (j = 0; j < 1; j++)
                    {
                        for (k = 0; k < 1; k++)
                            l_572[i][j][k] = 1L;
                    }
                }
                if (p_53)
                { /* block id: 226 */
                    int64_t l_472 = 0x0D26EC3D97539E3BL;
                    int64_t l_473 = 0x5814FB9CD520236DL;
                    for (l_408 = 0; (l_408 <= 3); l_408 += 1)
                    { /* block id: 229 */
                        int32_t ***l_466 = &p_2179->g_119;
                        uint16_t *l_468[6][7] = {{&p_2179->g_172,&p_2179->g_172,&p_2179->g_172,&p_2179->g_172,&p_2179->g_172,&p_2179->g_172,&p_2179->g_172},{&p_2179->g_172,&p_2179->g_172,&p_2179->g_172,&p_2179->g_172,&p_2179->g_172,&p_2179->g_172,&p_2179->g_172},{&p_2179->g_172,&p_2179->g_172,&p_2179->g_172,&p_2179->g_172,&p_2179->g_172,&p_2179->g_172,&p_2179->g_172},{&p_2179->g_172,&p_2179->g_172,&p_2179->g_172,&p_2179->g_172,&p_2179->g_172,&p_2179->g_172,&p_2179->g_172},{&p_2179->g_172,&p_2179->g_172,&p_2179->g_172,&p_2179->g_172,&p_2179->g_172,&p_2179->g_172,&p_2179->g_172},{&p_2179->g_172,&p_2179->g_172,&p_2179->g_172,&p_2179->g_172,&p_2179->g_172,&p_2179->g_172,&p_2179->g_172}};
                        int i, j;
                        (*l_75) ^= ((safe_div_func_int16_t_s_s((((p_2179->g_109[(l_408 + 2)] , ((safe_add_func_int8_t_s_s((safe_rshift_func_int16_t_s_u(((safe_mul_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_u(((*l_243)++), 13)), p_54)) , ((void*)0 != l_466)), 3)), (p_2179->g_172 != (l_467[5][3][0] == ((*l_79) = 65533UL))))) < (p_54 && (safe_lshift_func_int8_t_s_s(((**l_291) &= (&p_2179->g_269 == (void*)0)), l_472))))) != 0x9D2DL) >= 0x1380L), l_473)) , (-10L));
                    }
lbl_496:
                    for (p_2179->g_3 = (-28); (p_2179->g_3 == 10); p_2179->g_3++)
                    { /* block id: 237 */
                        uint16_t ***l_478 = &l_242;
                        int32_t l_492[3][10][2] = {{{0x17751CF3L,0x564D6352L},{0x17751CF3L,0x564D6352L},{0x17751CF3L,0x564D6352L},{0x17751CF3L,0x564D6352L},{0x17751CF3L,0x564D6352L},{0x17751CF3L,0x564D6352L},{0x17751CF3L,0x564D6352L},{0x17751CF3L,0x564D6352L},{0x17751CF3L,0x564D6352L},{0x17751CF3L,0x564D6352L}},{{0x17751CF3L,0x564D6352L},{0x17751CF3L,0x564D6352L},{0x17751CF3L,0x564D6352L},{0x17751CF3L,0x564D6352L},{0x17751CF3L,0x564D6352L},{0x17751CF3L,0x564D6352L},{0x17751CF3L,0x564D6352L},{0x17751CF3L,0x564D6352L},{0x17751CF3L,0x564D6352L},{0x17751CF3L,0x564D6352L}},{{0x17751CF3L,0x564D6352L},{0x17751CF3L,0x564D6352L},{0x17751CF3L,0x564D6352L},{0x17751CF3L,0x564D6352L},{0x17751CF3L,0x564D6352L},{0x17751CF3L,0x564D6352L},{0x17751CF3L,0x564D6352L},{0x17751CF3L,0x564D6352L},{0x17751CF3L,0x564D6352L},{0x17751CF3L,0x564D6352L}}};
                        uint32_t **l_493 = &l_417;
                        int i, j, k;
                        (*l_72) = (p_54 != (p_2179->g_85[9][4] < (l_473 <= p_54)));
                        if (l_389)
                            goto lbl_496;
                        (*l_79) = ((((l_472 ^ (((~(-10L)) , &p_2179->g_245) != (l_467[5][3][0] , l_478))) == ((l_479 > (safe_lshift_func_int8_t_s_s((((safe_add_func_int16_t_s_s(((((safe_lshift_func_uint8_t_u_s(((*l_136) = p_2179->g_5), 2)) || ((**l_423) |= (l_491 &= (safe_div_func_int16_t_s_s(((safe_unary_minus_func_int16_t_s((safe_rshift_func_int16_t_s_s(((3L >= (l_163 == (void*)0)) , (*p_2179->g_303)), (*p_2179->g_303))))) & 1L), 0x380FL))))) != 9UL) != l_492[0][5][0]), l_439)) , l_493) == p_2179->g_494), p_53))) >= p_54)) && (-1L)) > l_439);
                    }
                    for (p_2179->g_172 = 0; (p_2179->g_172 <= 0); p_2179->g_172 += 1)
                    { /* block id: 247 */
                        uint16_t l_497[9][3] = {{6UL,0x21CBL,0xEF34L},{6UL,0x21CBL,0xEF34L},{6UL,0x21CBL,0xEF34L},{6UL,0x21CBL,0xEF34L},{6UL,0x21CBL,0xEF34L},{6UL,0x21CBL,0xEF34L},{6UL,0x21CBL,0xEF34L},{6UL,0x21CBL,0xEF34L},{6UL,0x21CBL,0xEF34L}};
                        int32_t l_498 = 8L;
                        int32_t l_499 = 0x0F0C9E56L;
                        int32_t l_500 = (-1L);
                        int i, j;
                        (*l_67) |= l_473;
                        if (l_497[5][2])
                            break;
                        (*l_405) = (-1L);
                        ++l_501;
                    }
                }
                else
                { /* block id: 253 */
                    int64_t *l_518 = &l_447;
                    (*l_73) = (((safe_rshift_func_uint8_t_u_u((l_506 != (void*)0), 1)) , (**p_2179->g_441)) , (!((*l_79) = (~(safe_sub_func_uint64_t_u_u((safe_mul_func_uint8_t_u_u((((*l_518) = (~(safe_mul_func_int16_t_s_s((l_513[0] != ((l_516 ^ (p_2179->g_517[0] <= 0x176A83A9L)) , l_316)), l_491)))) == p_54), 0x61L)), (**p_2179->g_239)))))));
                }
                if (((*l_75) = ((((void*)0 != l_519) & p_53) <= (1L & (l_467[5][3][0] < (0xB1L >= (((p_53 | (safe_mul_func_int16_t_s_s((*p_2179->g_303), (p_2179->g_517[4] != l_522[0])))) , l_467[5][3][0]) , p_54)))))))
                { /* block id: 259 */
                    uint32_t l_523 = 0x641AAD81L;
                    int64_t *l_533 = &l_522[0];
                    l_523++;
                    (*l_67) |= ((**p_2179->g_239) >= (safe_div_func_uint16_t_u_u((safe_unary_minus_func_int8_t_s(((*l_77) = (safe_add_func_int16_t_s_s(((+(0x40AD110CAFEE9071L != p_54)) & p_54), (safe_rshift_func_int16_t_s_u((*p_2179->g_303), ((p_54 & ((*l_533) |= p_2179->g_174[3])) | ((p_53 , (l_534[1][6][1] == (void*)0)) >= 18446744073709551613UL))))))))), l_535)));
                    (**l_316) = ((safe_rshift_func_int16_t_s_s((!l_523), (GROUP_DIVERGE(2, 1) ^ ((*l_419) , (*p_2179->g_303))))) , (*p_2179->g_119));
                }
                else
                { /* block id: 265 */
                    int8_t l_548 = (-3L);
                    int32_t l_559 = 0x7EBD4C40L;
                    int32_t l_560 = 0x7E3D3659L;
                    int32_t l_561 = 0x539F7D08L;
                    int32_t l_562 = 0x00A275DAL;
                    int32_t l_564 = 0x790AEDD2L;
                    int32_t l_570 = 0L;
                    int32_t l_571[8] = {0x5A927395L,0x5A927395L,0x5A927395L,0x5A927395L,0x5A927395L,0x5A927395L,0x5A927395L,0x5A927395L};
                    int i;
                    for (l_447 = 0; (l_447 > 23); l_447++)
                    { /* block id: 268 */
                        uint16_t l_554 = 0UL;
                        (*l_78) ^= (safe_mul_func_int16_t_s_s((p_53 , (safe_mod_func_int8_t_s_s(p_2179->g_402.f0, ((safe_rshift_func_int16_t_s_s((((((**l_192) = (void*)0) != (*p_2179->g_119)) > ((((p_2179->g_517[6] == (safe_rshift_func_int16_t_s_u((l_548 == 0x91B26C7D905ACEABL), (((safe_div_func_uint64_t_u_u(((((1L <= ((safe_mul_func_uint16_t_u_u((FAKE_DIVERGE(p_2179->global_2_offset, get_global_id(2), 10) ^ p_53), 0x5D8AL)) > 1L)) & (*l_77)) > l_491) <= 0L), 1L)) | 0UL) ^ p_54)))) , l_553) != (void*)0) <= l_548)) <= p_53), 1)) ^ p_54)))), 1UL));
                        l_554++;
                        if (l_554)
                            continue;
                    }
                    for (p_2179->g_176 = 0; (p_2179->g_176 >= 13); p_2179->g_176 = safe_add_func_uint8_t_u_u(p_2179->g_176, 8))
                    { /* block id: 276 */
                        if (l_548)
                            goto lbl_183;
                    }
                    p_2179->g_573--;
                }
                (**l_192) = (*p_2179->g_119);
            }
        }
        else
        { /* block id: 283 */
            int32_t *l_583 = (void*)0;
            int32_t **l_582 = &l_583;
            int32_t *l_584 = (void*)0;
            uint8_t **l_589 = &l_136;
            int32_t l_590 = 0x72CACC8CL;
            int32_t l_591 = 1L;
            int32_t l_592 = 0x1DB7370CL;
            int32_t l_593[8][2] = {{0L,0x6ED9FFBFL},{0L,0x6ED9FFBFL},{0L,0x6ED9FFBFL},{0L,0x6ED9FFBFL},{0L,0x6ED9FFBFL},{0L,0x6ED9FFBFL},{0L,0x6ED9FFBFL},{0L,0x6ED9FFBFL}};
            uint16_t l_594 = 0x51A9L;
            int i, j;
            (*l_83) ^= (((*l_82) , (p_2179->g_573 , (safe_sub_func_uint32_t_u_u(((safe_rshift_func_uint8_t_u_s(p_2179->g_323[4].f0, ((((l_580 >= ((((*l_582) = ((safe_unary_minus_func_int64_t_s((*l_72))) , &p_2179->g_10)) == (l_584 = l_73)) & p_53)) <= (((*l_589) = ((safe_lshift_func_int16_t_s_u((((safe_add_func_uint32_t_u_u(((p_2179->g_115 & 0L) != p_2179->g_196[5]), (*l_77))) && 0x01AB6D3F0EDEC78DL) == p_2179->g_comm_values[p_2179->tid]), p_2179->g_115)) , l_128)) == &l_257)) == p_53) , p_54))) , 0x96FE5B10L), p_53)))) && (*p_2179->g_182));
            (*l_83) = 4L;
            l_594++;
        }
    }
    else
    { /* block id: 291 */
        uint64_t l_621[4];
        int32_t l_622 = 0L;
        int i;
        for (i = 0; i < 4; i++)
            l_621[i] = 0xF5712BABEC759361L;
        for (p_53 = (-7); (p_53 >= 19); p_53 = safe_add_func_uint64_t_u_u(p_53, 3))
        { /* block id: 294 */
            uint16_t l_599 = 65535UL;
            int32_t ****l_607 = &l_117[2];
            int32_t *****l_606 = &l_607;
            uint16_t l_616 = 65535UL;
            int16_t l_619 = (-1L);
            int16_t *l_620[7] = {&l_619,&l_619,&l_619,&l_619,&l_619,&l_619,&l_619};
            int64_t *l_628 = &l_535;
            int64_t **l_627[2];
            uint8_t *l_641[2];
            int32_t l_645 = 0L;
            int i;
            for (i = 0; i < 2; i++)
                l_627[i] = &l_628;
            for (i = 0; i < 2; i++)
                l_641[i] = &l_623;
            if (p_53)
                break;
            l_599--;
            (*l_77) ^= (safe_lshift_func_int8_t_s_s(((void*)0 != &p_2179->g_196[9]), (safe_sub_func_uint64_t_u_u(((((*l_606) = &l_117[2]) != (void*)0) , (safe_add_func_int32_t_s_s((l_622 = (((p_53 , ((safe_lshift_func_int16_t_s_s((0L && (safe_lshift_func_uint16_t_u_u(((*p_2179->g_165) <= (safe_lshift_func_uint16_t_u_s((~l_616), 6))), 8))), (l_621[3] = ((*p_2179->g_303) ^= (safe_mul_func_int8_t_s_s(((l_619 <= 0x60L) || 0x68844D13E5E833D1L), p_2179->g_85[9][4])))))) , l_621[3])) , 0x45L) > p_2179->g_469)), l_623))), p_2179->g_174[3]))));
            if (((+p_53) & (((safe_sub_func_uint32_t_u_u(GROUP_DIVERGE(0, 1), (((((p_54 , p_2179->g_626) , ((FAKE_DIVERGE(p_2179->local_2_offset, get_local_id(2), 10) != ((p_2179->g_630 = (p_2179->g_629[0] = (void*)0)) != &p_53)) == (((**l_291) = ((((l_622 = ((((((FAKE_DIVERGE(p_2179->group_2_offset, get_group_id(2), 10) <= ((p_53 >= (((safe_rshift_func_uint16_t_u_s(GROUP_DIVERGE(2, 1), (safe_lshift_func_int8_t_s_s((((*l_70) = (safe_rshift_func_int16_t_s_u((65535UL || (safe_lshift_func_uint8_t_u_u(p_2179->g_3, (p_2179->g_642 |= ((*l_136) |= l_621[0]))))), p_54))) | p_54), l_621[3])))) && p_54) ^ GROUP_DIVERGE(1, 1))) != p_2179->g_469)) <= p_2179->g_196[5]) <= l_622) >= l_621[3]) && 18446744073709551615UL) >= 3L)) ^ p_54) , p_2179->g_3) , p_53)) , p_53))) >= 0UL) || p_2179->g_642) != 1UL))) , p_54) , 0x1E0C77E0D4B8624EL)))
            { /* block id: 309 */
                uint32_t *l_654[9] = {(void*)0,&l_181,(void*)0,(void*)0,&l_181,(void*)0,(void*)0,&l_181,(void*)0};
                int32_t l_667[10][9][2] = {{{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL}},{{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL}},{{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL}},{{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL}},{{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL}},{{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL}},{{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL}},{{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL}},{{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL}},{{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL},{0x6FE22DEDL,0x64E6167CL}}};
                int32_t l_681 = (-1L);
                int i, j, k;
                (*l_67) = ((((((*l_76) = p_53) <= (((*l_128) = (4UL == (p_54 == (safe_add_func_int16_t_s_s(l_645, (safe_sub_func_int64_t_s_s(p_54, ((safe_rshift_func_uint16_t_u_s((((safe_mul_func_int16_t_s_s(((safe_add_func_uint32_t_u_u(0x242EF76AL, (&p_54 == ((p_53 & (p_2179->g_642 = GROUP_DIVERGE(1, 1))) , (p_2179->g_655 , &p_54))))) | (*l_82)), p_54)) >= p_2179->g_196[5]) , 0x6F16L), 4)) >= l_656)))))))) || p_54)) != p_54) >= p_54) <= 0x01A2L);
                for (l_71 = 2; (l_71 >= 0); l_71 -= 1)
                { /* block id: 316 */
                    int32_t l_666 = 0x2639F61CL;
                    int16_t **l_676 = &p_2179->g_303;
                    int i;
                    (*l_75) = l_621[l_71];
                    for (l_580 = 3; (l_580 >= 0); l_580 -= 1)
                    { /* block id: 320 */
                        int16_t **l_677[8];
                        int16_t ***l_678 = &l_677[6];
                        int i, j, k;
                        for (i = 0; i < 8; i++)
                            l_677[i] = &p_2179->g_303;
                        l_667[0][3][1] = (((safe_lshift_func_uint8_t_u_s(3UL, 1)) | l_621[(l_71 + 1)]) || (l_621[l_580] , (((safe_mod_func_uint16_t_u_u((((l_621[l_71] > (l_666 = ((*l_628) = (((**p_2179->g_239) = (p_54 > (&p_53 != (p_2179->g_629[0] = ((safe_sub_func_int64_t_s_s((p_54 | ((safe_add_func_int16_t_s_s((*p_2179->g_303), (p_2179->g_665 = (*p_2179->g_303)))) && 1L)), p_54)) , p_2179->g_629[0]))))) == 0x17CC83FDD2CD8B53L)))) & p_2179->g_115) & l_621[2]), (-9L))) && l_621[3]) & l_667[0][3][1])));
                        l_681 ^= (safe_lshift_func_uint8_t_u_s(((((((*l_628) ^= (4294967293UL > ((&p_2179->g_105 == (void*)0) > ((*l_136) |= (((*l_83) = p_53) ^ (safe_sub_func_int8_t_s_s(((+l_621[2]) && ((((safe_div_func_int32_t_s_s((*p_2179->g_165), (safe_add_func_uint32_t_u_u(FAKE_DIVERGE(p_2179->global_0_offset, get_global_id(0), 10), (l_676 != ((*l_678) = l_677[6])))))) | (safe_add_func_int8_t_s_s((p_53 , p_2179->g_655.f0), GROUP_DIVERGE(1, 1)))) > l_667[2][3][1]) <= (*p_2179->g_303))), 1L))))))) || (*p_2179->g_182)) && p_54) >= p_2179->g_109[1]) > 0xB55930FEF0BFA526L), 2));
                    }
                }
            }
            else
            { /* block id: 334 */
                uint64_t l_696 = 18446744073709551608UL;
                int64_t l_709 = 0x1E0CE11F555CF535L;
                int8_t *l_732 = &p_2179->g_109[5];
                for (p_2179->g_642 = 0; (p_2179->g_642 != 27); ++p_2179->g_642)
                { /* block id: 337 */
                    int32_t l_689 = 0x240F8DEAL;
                    int32_t *l_710 = &p_2179->g_517[0];
                    uint32_t *l_725 = &l_181;
                    for (p_54 = (-22); (p_54 <= 31); ++p_54)
                    { /* block id: 340 */
                        if (p_2179->g_10)
                            goto lbl_686;
                    }
                    for (l_71 = (-12); (l_71 < 8); ++l_71)
                    { /* block id: 345 */
                        uint32_t *l_697 = &l_181;
                        (*l_83) ^= p_54;
                        l_689 = 0x64D35B60L;
                        (*l_79) = ((safe_sub_func_uint16_t_u_u(65526UL, ((*p_2179->g_303) = (safe_sub_func_int16_t_s_s(((-1L) > (safe_mod_func_uint32_t_u_u((l_696 , ((*l_697) = 0x83078762L)), (p_54 || ((safe_sub_func_int8_t_s_s((((safe_mul_func_int16_t_s_s((*p_2179->g_303), 0x4400L)) < (p_2179->g_702 , ((*l_628) ^= l_689))) || FAKE_DIVERGE(p_2179->group_2_offset, get_group_id(2), 10)), p_54)) ^ l_696))))), (*p_2179->g_303)))))) == (*l_75));
                    }
                    for (l_696 = 0; (l_696 < 43); l_696 = safe_add_func_int32_t_s_s(l_696, 6))
                    { /* block id: 355 */
                        if ((*p_2179->g_165))
                            break;
                        (*l_67) &= p_53;
                        (*p_2179->g_119) = (((((void*)0 == l_73) | (safe_rshift_func_int8_t_s_s((p_54 , (GROUP_DIVERGE(2, 1) , (l_621[3] || (18446744073709551608UL != (p_54 || ((safe_add_func_uint64_t_u_u((p_53 & 7UL), l_621[3])) >= p_53)))))), l_696))) ^ l_709) , l_710);
                    }
                    (*l_70) = ((*l_68) = (safe_add_func_uint64_t_u_u(p_53, ((3UL == ((((safe_rshift_func_int16_t_s_u(((safe_mul_func_int8_t_s_s(((safe_mul_func_uint16_t_u_u(3UL, (((++(*l_243)) > p_53) < (((--(*l_725)) | FAKE_DIVERGE(p_2179->group_2_offset, get_group_id(2), 10)) <= ((**l_291) = ((+(((&l_117[1] != (void*)0) > (((*p_2179->g_165) & (safe_mul_func_uint16_t_u_u(((safe_lshift_func_int16_t_s_u(((void*)0 == l_732), 8)) || GROUP_DIVERGE(0, 1)), FAKE_DIVERGE(p_2179->global_0_offset, get_global_id(0), 10)))) == FAKE_DIVERGE(p_2179->group_1_offset, get_group_id(1), 10))) < l_621[0])) == 0x51ABL)))))) != p_53), l_696)) , l_621[0]), GROUP_DIVERGE(1, 1))) & (*p_2179->g_303)) <= 1UL) <= (*l_67))) || l_621[3]))));
                }
            }
        }
        (*p_2179->g_119) = &l_622;
    }
    (*l_84) = (((safe_add_func_uint32_t_u_u((++(*l_735)), ((safe_mul_func_uint16_t_u_u(65526UL, (((p_53 > (safe_add_func_uint32_t_u_u(p_2179->g_665, ((*l_80) = (p_2179->g_174[3] , ((safe_mod_func_int8_t_s_s(0x46L, ((safe_lshift_func_int8_t_s_u(((((((((safe_mul_func_uint8_t_u_u((safe_mod_func_uint64_t_u_u(((((((((**p_2179->g_239) = ((0x849E26D52023B69FL ^ 0xC7E42AB15CF4F6E1L) , (safe_div_func_int64_t_s_s((((safe_div_func_int16_t_s_s((*l_78), (safe_mod_func_uint16_t_u_u(p_53, 0x48AEL)))) & l_756) , (*l_78)), 0xBE94D29816CD8A1CL)))) , 0x6662135E5AF76936L) < p_53) & 0L) == 1UL) | 1UL) , GROUP_DIVERGE(0, 1)), p_54)), 1UL)) == l_757) > (*p_2179->g_303)) , (*l_419)) , (*l_419)) , (-1L)) , (void*)0) != (void*)0), p_54)) , p_53))) >= (*l_84))))))) > p_2179->g_196[5]) && (*l_72)))) != 0L))) >= p_2179->g_172) && 3UL);
    return l_758;
}


/* ------------------------------------------ */
/* 
 * reads : p_2179->g_11 p_2179->l_comm_values p_2179->g_5
 * writes: p_2179->g_5
 */
int32_t * func_56(uint32_t  p_57, struct S1 * p_2179)
{ /* block id: 22 */
    int8_t l_62[4][8][8] = {{{0x4BL,(-1L),(-1L),0x4BL,0x42L,8L,8L,0x42L},{0x4BL,(-1L),(-1L),0x4BL,0x42L,8L,8L,0x42L},{0x4BL,(-1L),(-1L),0x4BL,0x42L,8L,8L,0x42L},{0x4BL,(-1L),(-1L),0x4BL,0x42L,8L,8L,0x42L},{0x4BL,(-1L),(-1L),0x4BL,0x42L,8L,8L,0x42L},{0x4BL,(-1L),(-1L),0x4BL,0x42L,8L,8L,0x42L},{0x4BL,(-1L),(-1L),0x4BL,0x42L,8L,8L,0x42L},{0x4BL,(-1L),(-1L),0x4BL,0x42L,8L,8L,0x42L}},{{0x4BL,(-1L),(-1L),0x4BL,0x42L,8L,8L,0x42L},{0x4BL,(-1L),(-1L),0x4BL,0x42L,8L,8L,0x42L},{0x4BL,(-1L),(-1L),0x4BL,0x42L,8L,8L,0x42L},{0x4BL,(-1L),(-1L),0x4BL,0x42L,8L,8L,0x42L},{0x4BL,(-1L),(-1L),0x4BL,0x42L,8L,8L,0x42L},{0x4BL,(-1L),(-1L),0x4BL,0x42L,8L,8L,0x42L},{0x4BL,(-1L),(-1L),0x4BL,0x42L,8L,8L,0x42L},{0x4BL,(-1L),(-1L),0x4BL,0x42L,8L,8L,0x42L}},{{0x4BL,(-1L),(-1L),0x4BL,0x42L,8L,8L,0x42L},{0x4BL,(-1L),(-1L),0x4BL,0x42L,8L,8L,0x42L},{0x4BL,(-1L),(-1L),0x4BL,0x42L,8L,8L,0x42L},{0x4BL,(-1L),(-1L),0x4BL,0x42L,8L,8L,0x42L},{0x4BL,(-1L),(-1L),0x4BL,0x42L,8L,8L,0x42L},{0x4BL,(-1L),(-1L),0x4BL,0x42L,8L,8L,0x42L},{0x4BL,(-1L),(-1L),0x4BL,0x42L,8L,8L,0x42L},{0x4BL,(-1L),(-1L),0x4BL,0x42L,8L,8L,0x42L}},{{0x4BL,(-1L),(-1L),0x4BL,0x42L,8L,8L,0x42L},{0x4BL,(-1L),(-1L),0x4BL,0x42L,8L,8L,0x42L},{0x4BL,(-1L),(-1L),0x4BL,0x42L,8L,8L,0x42L},{0x4BL,(-1L),(-1L),0x4BL,0x42L,8L,8L,0x42L},{0x4BL,(-1L),(-1L),0x4BL,0x42L,8L,8L,0x42L},{0x4BL,(-1L),(-1L),0x4BL,0x42L,8L,8L,0x42L},{0x4BL,(-1L),(-1L),0x4BL,0x42L,8L,8L,0x42L},{0x4BL,(-1L),(-1L),0x4BL,0x42L,8L,8L,0x42L}}};
    int32_t *l_63 = &p_2179->g_5;
    int i, j, k;
    (*l_63) &= (safe_add_func_uint64_t_u_u(p_2179->g_11, (((void*)0 == &p_2179->g_5) , ((p_2179->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2179->tid, 26))] != ((safe_add_func_int32_t_s_s(l_62[0][3][0], ((((void*)0 != l_63) & 1L) , (safe_unary_minus_func_int64_t_s((safe_lshift_func_int16_t_s_s(0x161DL, 10))))))) > 0L)) && FAKE_DIVERGE(p_2179->group_0_offset, get_group_id(0), 10)))));
    return l_63;
}


/* ------------------------------------------ */
/* 
 * reads : p_2179->g_85 p_2179->g_3 p_2179->g_5 p_2179->g_10 p_2179->g_115 p_2179->g_11 p_2179->l_comm_values
 * writes: p_2179->g_105 p_2179->g_109 p_2179->g_115 p_2179->g_5
 */
int32_t ** func_88(uint32_t  p_89, struct S1 * p_2179)
{ /* block id: 27 */
    int32_t *l_92 = &p_2179->g_3;
    int32_t *l_102 = &p_2179->g_3;
    int32_t **l_101 = &l_102;
    int32_t *l_107 = &p_2179->g_3;
    int32_t **l_106 = &l_107;
    int8_t *l_108 = &p_2179->g_109[2];
    int32_t *l_112 = (void*)0;
    int32_t l_113[6][7] = {{(-4L),0x0E3606ECL,(-7L),0x1B1975C8L,(-7L),0x0E3606ECL,(-4L)},{(-4L),0x0E3606ECL,(-7L),0x1B1975C8L,(-7L),0x0E3606ECL,(-4L)},{(-4L),0x0E3606ECL,(-7L),0x1B1975C8L,(-7L),0x0E3606ECL,(-4L)},{(-4L),0x0E3606ECL,(-7L),0x1B1975C8L,(-7L),0x0E3606ECL,(-4L)},{(-4L),0x0E3606ECL,(-7L),0x1B1975C8L,(-7L),0x0E3606ECL,(-4L)},{(-4L),0x0E3606ECL,(-7L),0x1B1975C8L,(-7L),0x0E3606ECL,(-4L)}};
    int32_t *l_114 = &p_2179->g_115;
    int32_t l_116 = 1L;
    int i, j;
    l_116 &= (l_92 != ((*l_106) = func_56((((((*l_114) ^= (((safe_div_func_int16_t_s_s(((((safe_sub_func_uint64_t_u_u(p_89, ((GROUP_DIVERGE(0, 1) && (((0x5CL >= (safe_rshift_func_uint16_t_u_s(((safe_mod_func_int64_t_s_s((((*l_101) = &p_2179->g_5) == l_92), ((safe_mul_func_uint8_t_u_u(p_2179->g_85[9][4], ((*l_108) = ((p_2179->g_105 = &p_2179->g_5) == ((*l_106) = l_92))))) & ((safe_add_func_int16_t_s_s((-1L), p_89)) , p_89)))) > 0x76A8L), (*l_92)))) , l_112) != &p_2179->g_5)) ^ l_113[5][2]))) > 0x71BA0D89L) != (*l_92)) , (*l_102)), p_2179->g_10)) >= p_89) >= p_89)) > p_89) || 0x5528475AL) < 65532UL), p_2179)));
    return &p_2179->g_105;
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[26];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 26; i++)
            l_comm_values[i] = 1;
    struct S1 c_2180;
    struct S1* p_2179 = &c_2180;
    struct S1 c_2181 = {
        0x6FA9D19AL, // p_2179->g_3
        1L, // p_2179->g_5
        (-1L), // p_2179->g_10
        5L, // p_2179->g_11
        0x1E12AA53L, // p_2179->g_14
        {{0x60D197A0L,0xDE1722BBL,0x6E0E3F56L,0xDE1722BBL,0x60D197A0L},{0x60D197A0L,0xDE1722BBL,0x6E0E3F56L,0xDE1722BBL,0x60D197A0L},{0x60D197A0L,0xDE1722BBL,0x6E0E3F56L,0xDE1722BBL,0x60D197A0L},{0x60D197A0L,0xDE1722BBL,0x6E0E3F56L,0xDE1722BBL,0x60D197A0L},{0x60D197A0L,0xDE1722BBL,0x6E0E3F56L,0xDE1722BBL,0x60D197A0L},{0x60D197A0L,0xDE1722BBL,0x6E0E3F56L,0xDE1722BBL,0x60D197A0L},{0x60D197A0L,0xDE1722BBL,0x6E0E3F56L,0xDE1722BBL,0x60D197A0L},{0x60D197A0L,0xDE1722BBL,0x6E0E3F56L,0xDE1722BBL,0x60D197A0L},{0x60D197A0L,0xDE1722BBL,0x6E0E3F56L,0xDE1722BBL,0x60D197A0L},{0x60D197A0L,0xDE1722BBL,0x6E0E3F56L,0xDE1722BBL,0x60D197A0L}}, // p_2179->g_85
        (void*)0, // p_2179->g_105
        {1L,1L,1L,1L,1L,1L,1L}, // p_2179->g_109
        (-4L), // p_2179->g_115
        &p_2179->g_105, // p_2179->g_119
        253UL, // p_2179->g_137
        &p_2179->g_5, // p_2179->g_165
        0xD45CL, // p_2179->g_172
        {0UL,0UL,0UL,0UL}, // p_2179->g_174
        1UL, // p_2179->g_176
        &p_2179->g_174[2], // p_2179->g_182
        {0x0E320F67L,0x0E320F67L,0x0E320F67L,0x0E320F67L,0x0E320F67L,0x0E320F67L,0x0E320F67L,0x0E320F67L,0x0E320F67L,0x0E320F67L}, // p_2179->g_196
        (void*)0, // p_2179->g_237
        &p_2179->g_182, // p_2179->g_239
        {{{&p_2179->g_239,(void*)0,&p_2179->g_239,(void*)0,(void*)0,&p_2179->g_239,(void*)0,&p_2179->g_239},{&p_2179->g_239,(void*)0,&p_2179->g_239,(void*)0,(void*)0,&p_2179->g_239,(void*)0,&p_2179->g_239},{&p_2179->g_239,(void*)0,&p_2179->g_239,(void*)0,(void*)0,&p_2179->g_239,(void*)0,&p_2179->g_239},{&p_2179->g_239,(void*)0,&p_2179->g_239,(void*)0,(void*)0,&p_2179->g_239,(void*)0,&p_2179->g_239},{&p_2179->g_239,(void*)0,&p_2179->g_239,(void*)0,(void*)0,&p_2179->g_239,(void*)0,&p_2179->g_239},{&p_2179->g_239,(void*)0,&p_2179->g_239,(void*)0,(void*)0,&p_2179->g_239,(void*)0,&p_2179->g_239}},{{&p_2179->g_239,(void*)0,&p_2179->g_239,(void*)0,(void*)0,&p_2179->g_239,(void*)0,&p_2179->g_239},{&p_2179->g_239,(void*)0,&p_2179->g_239,(void*)0,(void*)0,&p_2179->g_239,(void*)0,&p_2179->g_239},{&p_2179->g_239,(void*)0,&p_2179->g_239,(void*)0,(void*)0,&p_2179->g_239,(void*)0,&p_2179->g_239},{&p_2179->g_239,(void*)0,&p_2179->g_239,(void*)0,(void*)0,&p_2179->g_239,(void*)0,&p_2179->g_239},{&p_2179->g_239,(void*)0,&p_2179->g_239,(void*)0,(void*)0,&p_2179->g_239,(void*)0,&p_2179->g_239},{&p_2179->g_239,(void*)0,&p_2179->g_239,(void*)0,(void*)0,&p_2179->g_239,(void*)0,&p_2179->g_239}},{{&p_2179->g_239,(void*)0,&p_2179->g_239,(void*)0,(void*)0,&p_2179->g_239,(void*)0,&p_2179->g_239},{&p_2179->g_239,(void*)0,&p_2179->g_239,(void*)0,(void*)0,&p_2179->g_239,(void*)0,&p_2179->g_239},{&p_2179->g_239,(void*)0,&p_2179->g_239,(void*)0,(void*)0,&p_2179->g_239,(void*)0,&p_2179->g_239},{&p_2179->g_239,(void*)0,&p_2179->g_239,(void*)0,(void*)0,&p_2179->g_239,(void*)0,&p_2179->g_239},{&p_2179->g_239,(void*)0,&p_2179->g_239,(void*)0,(void*)0,&p_2179->g_239,(void*)0,&p_2179->g_239},{&p_2179->g_239,(void*)0,&p_2179->g_239,(void*)0,(void*)0,&p_2179->g_239,(void*)0,&p_2179->g_239}},{{&p_2179->g_239,(void*)0,&p_2179->g_239,(void*)0,(void*)0,&p_2179->g_239,(void*)0,&p_2179->g_239},{&p_2179->g_239,(void*)0,&p_2179->g_239,(void*)0,(void*)0,&p_2179->g_239,(void*)0,&p_2179->g_239},{&p_2179->g_239,(void*)0,&p_2179->g_239,(void*)0,(void*)0,&p_2179->g_239,(void*)0,&p_2179->g_239},{&p_2179->g_239,(void*)0,&p_2179->g_239,(void*)0,(void*)0,&p_2179->g_239,(void*)0,&p_2179->g_239},{&p_2179->g_239,(void*)0,&p_2179->g_239,(void*)0,(void*)0,&p_2179->g_239,(void*)0,&p_2179->g_239},{&p_2179->g_239,(void*)0,&p_2179->g_239,(void*)0,(void*)0,&p_2179->g_239,(void*)0,&p_2179->g_239}}}, // p_2179->g_238
        (void*)0, // p_2179->g_246
        &p_2179->g_246, // p_2179->g_245
        &p_2179->g_245, // p_2179->g_244
        0x2F1DL, // p_2179->g_269
        &p_2179->g_269, // p_2179->g_303
        {{-1L},{0x2FA52297L},{-1L},{-1L},{0x2FA52297L},{-1L}}, // p_2179->g_323
        {0x49D7135FL}, // p_2179->g_402
        (void*)0, // p_2179->g_436
        {&p_2179->g_402,&p_2179->g_402,&p_2179->g_402,&p_2179->g_402,&p_2179->g_402,&p_2179->g_402,&p_2179->g_402,&p_2179->g_402}, // p_2179->g_442
        &p_2179->g_442[5], // p_2179->g_441
        0x058CL, // p_2179->g_469
        (void*)0, // p_2179->g_495
        &p_2179->g_495, // p_2179->g_494
        {(-6L),(-7L),(-6L),(-6L),(-7L),(-6L),(-6L)}, // p_2179->g_517
        4UL, // p_2179->g_573
        {0x6A923FF8L}, // p_2179->g_626
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_2179->g_629
        (void*)0, // p_2179->g_630
        0xDB8FA933L, // p_2179->g_642
        {4L}, // p_2179->g_655
        1UL, // p_2179->g_665
        {-2L}, // p_2179->g_702
        (void*)0, // p_2179->g_785
        &p_2179->g_785, // p_2179->g_784
        &p_2179->g_119, // p_2179->g_790
        {0x681CL}, // p_2179->g_794
        0L, // p_2179->g_795
        {0x3E253826L}, // p_2179->g_814
        (-2L), // p_2179->g_829
        (-10L), // p_2179->g_831
        0x63L, // p_2179->g_833
        {{0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L},{0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L},{0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L},{0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L},{0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L},{0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L},{0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L},{0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L,0xAB641A88L}}, // p_2179->g_858
        {{&p_2179->g_3,&p_2179->g_3,&p_2179->g_3,&p_2179->g_3,&p_2179->g_3,&p_2179->g_3,&p_2179->g_3},{&p_2179->g_3,&p_2179->g_3,&p_2179->g_3,&p_2179->g_3,&p_2179->g_3,&p_2179->g_3,&p_2179->g_3},{&p_2179->g_3,&p_2179->g_3,&p_2179->g_3,&p_2179->g_3,&p_2179->g_3,&p_2179->g_3,&p_2179->g_3},{&p_2179->g_3,&p_2179->g_3,&p_2179->g_3,&p_2179->g_3,&p_2179->g_3,&p_2179->g_3,&p_2179->g_3},{&p_2179->g_3,&p_2179->g_3,&p_2179->g_3,&p_2179->g_3,&p_2179->g_3,&p_2179->g_3,&p_2179->g_3},{&p_2179->g_3,&p_2179->g_3,&p_2179->g_3,&p_2179->g_3,&p_2179->g_3,&p_2179->g_3,&p_2179->g_3}}, // p_2179->g_877
        (void*)0, // p_2179->g_912
        &p_2179->g_912, // p_2179->g_911
        (void*)0, // p_2179->g_913
        &p_2179->g_303, // p_2179->g_948
        &p_2179->g_948, // p_2179->g_947
        {0x272A9A0AL}, // p_2179->g_954
        3UL, // p_2179->g_986
        {{0xA79670FDL,0xA79670FDL,4294967295UL,0xACD3776DL,1UL,1UL,0x78D730B2L,8UL},{0xA79670FDL,0xA79670FDL,4294967295UL,0xACD3776DL,1UL,1UL,0x78D730B2L,8UL},{0xA79670FDL,0xA79670FDL,4294967295UL,0xACD3776DL,1UL,1UL,0x78D730B2L,8UL},{0xA79670FDL,0xA79670FDL,4294967295UL,0xACD3776DL,1UL,1UL,0x78D730B2L,8UL},{0xA79670FDL,0xA79670FDL,4294967295UL,0xACD3776DL,1UL,1UL,0x78D730B2L,8UL},{0xA79670FDL,0xA79670FDL,4294967295UL,0xACD3776DL,1UL,1UL,0x78D730B2L,8UL},{0xA79670FDL,0xA79670FDL,4294967295UL,0xACD3776DL,1UL,1UL,0x78D730B2L,8UL},{0xA79670FDL,0xA79670FDL,4294967295UL,0xACD3776DL,1UL,1UL,0x78D730B2L,8UL},{0xA79670FDL,0xA79670FDL,4294967295UL,0xACD3776DL,1UL,1UL,0x78D730B2L,8UL},{0xA79670FDL,0xA79670FDL,4294967295UL,0xACD3776DL,1UL,1UL,0x78D730B2L,8UL}}, // p_2179->g_1043
        {{0x67C57E14L},{0x67C57E14L},{0x67C57E14L}}, // p_2179->g_1058
        {8L}, // p_2179->g_1090
        0x572318C344161212L, // p_2179->g_1108
        0x6538D5F6L, // p_2179->g_1111
        {&p_2179->g_442[5],(void*)0,&p_2179->g_442[5],&p_2179->g_442[5],(void*)0,&p_2179->g_442[5],&p_2179->g_442[5],(void*)0}, // p_2179->g_1119
        &p_2179->g_665, // p_2179->g_1131
        &p_2179->g_1131, // p_2179->g_1130
        {1L}, // p_2179->g_1150
        0x73269C50L, // p_2179->g_1171
        0x49L, // p_2179->g_1184
        {&p_2179->g_303,&p_2179->g_303}, // p_2179->g_1227
        0x68DAL, // p_2179->g_1232
        {-4L}, // p_2179->g_1233
        {0x23DD0588L}, // p_2179->g_1236
        {(-1L),(-1L)}, // p_2179->g_1239
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_2179->g_1314
        8UL, // p_2179->g_1358
        4294967288UL, // p_2179->g_1376
        {{{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376}},{{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376}},{{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376}},{{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376}},{{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376}},{{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376}},{{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376}},{{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376}},{{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376}},{{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376},{&p_2179->g_1376,&p_2179->g_1376,&p_2179->g_1376}}}, // p_2179->g_1375
        {&p_2179->g_1375[0][0][2],&p_2179->g_1375[0][0][2],&p_2179->g_1375[0][0][2],&p_2179->g_1375[0][0][2],&p_2179->g_1375[0][0][2],&p_2179->g_1375[0][0][2],&p_2179->g_1375[0][0][2]}, // p_2179->g_1374
        {0L}, // p_2179->g_1413
        0x853CL, // p_2179->g_1549
        18446744073709551615UL, // p_2179->g_1623
        {0x0099EA258CB95382L,0x0099EA258CB95382L,0x0099EA258CB95382L,0x0099EA258CB95382L,0x0099EA258CB95382L,0x0099EA258CB95382L,0x0099EA258CB95382L}, // p_2179->g_1631
        0x0A3082EEL, // p_2179->g_1642
        &p_2179->g_1642, // p_2179->g_1641
        &p_2179->g_1641, // p_2179->g_1640
        {&p_2179->g_1239[1],&p_2179->g_831,&p_2179->g_1239[1],&p_2179->g_1239[1],&p_2179->g_831,&p_2179->g_1239[1],&p_2179->g_1239[1]}, // p_2179->g_1658
        0x0939BDC789A60B83L, // p_2179->g_1659
        (void*)0, // p_2179->g_1666
        &p_2179->g_1666, // p_2179->g_1665
        {-10L}, // p_2179->g_1685
        {0x44FE4A30L}, // p_2179->g_1708
        {{0x394D668E5821587BL,0x165528F7F5A842EDL,(-1L),1L,(-1L),0x165528F7F5A842EDL,0x394D668E5821587BL,(-4L)},{0x394D668E5821587BL,0x165528F7F5A842EDL,(-1L),1L,(-1L),0x165528F7F5A842EDL,0x394D668E5821587BL,(-4L)},{0x394D668E5821587BL,0x165528F7F5A842EDL,(-1L),1L,(-1L),0x165528F7F5A842EDL,0x394D668E5821587BL,(-4L)},{0x394D668E5821587BL,0x165528F7F5A842EDL,(-1L),1L,(-1L),0x165528F7F5A842EDL,0x394D668E5821587BL,(-4L)},{0x394D668E5821587BL,0x165528F7F5A842EDL,(-1L),1L,(-1L),0x165528F7F5A842EDL,0x394D668E5821587BL,(-4L)}}, // p_2179->g_1808
        {{{0x1AEF3760L,0x1AEF3760L},{0x1AEF3760L,0x1AEF3760L},{0x1AEF3760L,0x1AEF3760L},{0x1AEF3760L,0x1AEF3760L}},{{0x1AEF3760L,0x1AEF3760L},{0x1AEF3760L,0x1AEF3760L},{0x1AEF3760L,0x1AEF3760L},{0x1AEF3760L,0x1AEF3760L}},{{0x1AEF3760L,0x1AEF3760L},{0x1AEF3760L,0x1AEF3760L},{0x1AEF3760L,0x1AEF3760L},{0x1AEF3760L,0x1AEF3760L}},{{0x1AEF3760L,0x1AEF3760L},{0x1AEF3760L,0x1AEF3760L},{0x1AEF3760L,0x1AEF3760L},{0x1AEF3760L,0x1AEF3760L}},{{0x1AEF3760L,0x1AEF3760L},{0x1AEF3760L,0x1AEF3760L},{0x1AEF3760L,0x1AEF3760L},{0x1AEF3760L,0x1AEF3760L}}}, // p_2179->g_1837
        0x67CBL, // p_2179->g_1849
        {(-8L),(-8L),(-8L),(-8L)}, // p_2179->g_1889
        7L, // p_2179->g_1959
        (void*)0, // p_2179->g_2013
        {0xA9D6L,0xA9D6L,0xA9D6L,0xA9D6L,0xA9D6L}, // p_2179->g_2025
        4UL, // p_2179->g_2052
        {{0UL,18446744073709551615UL,0UL},{0UL,18446744073709551615UL,0UL},{0UL,18446744073709551615UL,0UL},{0UL,18446744073709551615UL,0UL},{0UL,18446744073709551615UL,0UL},{0UL,18446744073709551615UL,0UL},{0UL,18446744073709551615UL,0UL},{0UL,18446744073709551615UL,0UL}}, // p_2179->g_2053
        {0x8AAF453288EE1EFBL,0x8AAF453288EE1EFBL,0x8AAF453288EE1EFBL}, // p_2179->g_2054
        0x86636311489D4C80L, // p_2179->g_2055
        1UL, // p_2179->g_2056
        {&p_2179->g_2056,&p_2179->g_2054[0],&p_2179->g_2055,&p_2179->g_2054[0],&p_2179->g_2056,&p_2179->g_2056,&p_2179->g_2054[0],&p_2179->g_2055,&p_2179->g_2054[0],&p_2179->g_2056}, // p_2179->g_2051
        &p_2179->g_2051[1], // p_2179->g_2050
        &p_2179->g_2050, // p_2179->g_2049
        &p_2179->g_2049, // p_2179->g_2048
        &p_2179->g_2048, // p_2179->g_2047
        {{0x053AAA0CL,0x053AAA0CL,0x053AAA0CL,0x053AAA0CL,0x053AAA0CL},{0x053AAA0CL,0x053AAA0CL,0x053AAA0CL,0x053AAA0CL,0x053AAA0CL},{0x053AAA0CL,0x053AAA0CL,0x053AAA0CL,0x053AAA0CL,0x053AAA0CL},{0x053AAA0CL,0x053AAA0CL,0x053AAA0CL,0x053AAA0CL,0x053AAA0CL}}, // p_2179->g_2058
        &p_2179->g_1808[4][7], // p_2179->g_2141
        &p_2179->g_2141, // p_2179->g_2140
        &p_2179->g_10, // p_2179->g_2147
        {&p_2179->g_2147,&p_2179->g_2147}, // p_2179->g_2146
        0x08L, // p_2179->g_2178
        sequence_input[get_global_id(0)], // p_2179->global_0_offset
        sequence_input[get_global_id(1)], // p_2179->global_1_offset
        sequence_input[get_global_id(2)], // p_2179->global_2_offset
        sequence_input[get_local_id(0)], // p_2179->local_0_offset
        sequence_input[get_local_id(1)], // p_2179->local_1_offset
        sequence_input[get_local_id(2)], // p_2179->local_2_offset
        sequence_input[get_group_id(0)], // p_2179->group_0_offset
        sequence_input[get_group_id(1)], // p_2179->group_1_offset
        sequence_input[get_group_id(2)], // p_2179->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 26)), permutations[0][get_linear_local_id()])), // p_2179->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_2180 = c_2181;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2179);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2179->g_3, "p_2179->g_3", print_hash_value);
    transparent_crc(p_2179->g_5, "p_2179->g_5", print_hash_value);
    transparent_crc(p_2179->g_10, "p_2179->g_10", print_hash_value);
    transparent_crc(p_2179->g_11, "p_2179->g_11", print_hash_value);
    transparent_crc(p_2179->g_14, "p_2179->g_14", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_2179->g_85[i][j], "p_2179->g_85[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2179->g_109[i], "p_2179->g_109[i]", print_hash_value);

    }
    transparent_crc(p_2179->g_115, "p_2179->g_115", print_hash_value);
    transparent_crc(p_2179->g_137, "p_2179->g_137", print_hash_value);
    transparent_crc(p_2179->g_172, "p_2179->g_172", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2179->g_174[i], "p_2179->g_174[i]", print_hash_value);

    }
    transparent_crc(p_2179->g_176, "p_2179->g_176", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2179->g_196[i], "p_2179->g_196[i]", print_hash_value);

    }
    transparent_crc(p_2179->g_269, "p_2179->g_269", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_2179->g_323[i].f0, "p_2179->g_323[i].f0", print_hash_value);

    }
    transparent_crc(p_2179->g_402.f0, "p_2179->g_402.f0", print_hash_value);
    transparent_crc(p_2179->g_469, "p_2179->g_469", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2179->g_517[i], "p_2179->g_517[i]", print_hash_value);

    }
    transparent_crc(p_2179->g_573, "p_2179->g_573", print_hash_value);
    transparent_crc(p_2179->g_626.f0, "p_2179->g_626.f0", print_hash_value);
    transparent_crc(p_2179->g_642, "p_2179->g_642", print_hash_value);
    transparent_crc(p_2179->g_655.f0, "p_2179->g_655.f0", print_hash_value);
    transparent_crc(p_2179->g_665, "p_2179->g_665", print_hash_value);
    transparent_crc(p_2179->g_702.f0, "p_2179->g_702.f0", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_2179->g_794[i], "p_2179->g_794[i]", print_hash_value);

    }
    transparent_crc(p_2179->g_795, "p_2179->g_795", print_hash_value);
    transparent_crc(p_2179->g_814.f0, "p_2179->g_814.f0", print_hash_value);
    transparent_crc(p_2179->g_829, "p_2179->g_829", print_hash_value);
    transparent_crc(p_2179->g_831, "p_2179->g_831", print_hash_value);
    transparent_crc(p_2179->g_833, "p_2179->g_833", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_2179->g_858[i][j], "p_2179->g_858[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2179->g_954.f0, "p_2179->g_954.f0", print_hash_value);
    transparent_crc(p_2179->g_986, "p_2179->g_986", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_2179->g_1043[i][j], "p_2179->g_1043[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_2179->g_1058[i].f0, "p_2179->g_1058[i].f0", print_hash_value);

    }
    transparent_crc(p_2179->g_1090.f0, "p_2179->g_1090.f0", print_hash_value);
    transparent_crc(p_2179->g_1108, "p_2179->g_1108", print_hash_value);
    transparent_crc(p_2179->g_1111, "p_2179->g_1111", print_hash_value);
    transparent_crc(p_2179->g_1150.f0, "p_2179->g_1150.f0", print_hash_value);
    transparent_crc(p_2179->g_1171, "p_2179->g_1171", print_hash_value);
    transparent_crc(p_2179->g_1184, "p_2179->g_1184", print_hash_value);
    transparent_crc(p_2179->g_1232, "p_2179->g_1232", print_hash_value);
    transparent_crc(p_2179->g_1233.f0, "p_2179->g_1233.f0", print_hash_value);
    transparent_crc(p_2179->g_1236.f0, "p_2179->g_1236.f0", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_2179->g_1239[i], "p_2179->g_1239[i]", print_hash_value);

    }
    transparent_crc(p_2179->g_1358, "p_2179->g_1358", print_hash_value);
    transparent_crc(p_2179->g_1376, "p_2179->g_1376", print_hash_value);
    transparent_crc(p_2179->g_1413.f0, "p_2179->g_1413.f0", print_hash_value);
    transparent_crc(p_2179->g_1549, "p_2179->g_1549", print_hash_value);
    transparent_crc(p_2179->g_1623, "p_2179->g_1623", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2179->g_1631[i], "p_2179->g_1631[i]", print_hash_value);

    }
    transparent_crc(p_2179->g_1642, "p_2179->g_1642", print_hash_value);
    transparent_crc(p_2179->g_1659, "p_2179->g_1659", print_hash_value);
    transparent_crc(p_2179->g_1685.f0, "p_2179->g_1685.f0", print_hash_value);
    transparent_crc(p_2179->g_1708.f0, "p_2179->g_1708.f0", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_2179->g_1808[i][j], "p_2179->g_1808[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_2179->g_1837[i][j][k], "p_2179->g_1837[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2179->g_1849, "p_2179->g_1849", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2179->g_1889[i], "p_2179->g_1889[i]", print_hash_value);

    }
    transparent_crc(p_2179->g_1959, "p_2179->g_1959", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_2179->g_2025[i], "p_2179->g_2025[i]", print_hash_value);

    }
    transparent_crc(p_2179->g_2052, "p_2179->g_2052", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_2179->g_2053[i][j], "p_2179->g_2053[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_2179->g_2054[i], "p_2179->g_2054[i]", print_hash_value);

    }
    transparent_crc(p_2179->g_2055, "p_2179->g_2055", print_hash_value);
    transparent_crc(p_2179->g_2056, "p_2179->g_2056", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_2179->g_2058[i][j], "p_2179->g_2058[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2179->g_2178, "p_2179->g_2178", print_hash_value);
    transparent_crc(p_2179->l_comm_values[get_linear_local_id()], "p_2179->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_2179->g_comm_values[get_linear_group_id() * 26 + get_linear_local_id()], "p_2179->g_comm_values[get_linear_group_id() * 26 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
