// --atomics 17 ---fake_divergence -g 15,52,12 -l 3,1,3
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


// Seed: 5

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   volatile uint8_t  f0;
   volatile uint32_t  f1;
   int64_t  f2;
   uint16_t  f3;
   int32_t  f4;
};

struct S1 {
    volatile union U0 g_16[7];
    uint8_t g_27;
    int32_t g_36;
    int32_t *g_35;
    int32_t *g_37;
    int32_t g_64;
    int32_t g_69;
    volatile int16_t g_79[2];
    volatile int16_t g_84;
    uint64_t g_99;
    int8_t g_101;
    int16_t g_102;
    uint32_t g_103;
    int8_t g_121[9][9];
    uint16_t g_123;
    int8_t *g_131[7][1];
    uint32_t g_137[10][1][10];
    int32_t **g_156;
    int32_t ***g_155;
    int32_t ***g_160;
    int64_t g_169;
    uint32_t g_188;
    volatile union U0 g_201;
    int16_t g_205;
    union U0 *g_236;
    uint64_t g_240;
    int32_t g_241;
    int16_t g_242;
    union U0 g_262;
    union U0 g_265[5][8][4];
    uint32_t g_298;
    volatile union U0 g_317;
    volatile uint32_t g_344;
    int8_t g_364[7][4][8];
    uint32_t g_372;
    volatile uint64_t g_407[1][9][6];
    int16_t g_429[4][7];
    volatile int8_t g_430;
    volatile int32_t g_431;
    int64_t g_432;
    volatile int32_t g_434;
    volatile int8_t g_436;
    volatile int32_t g_437;
    uint64_t g_469[9];
    uint64_t g_550;
    int64_t **g_566[1][5];
    uint32_t *g_610[7];
    uint32_t **g_609[4][5][6];
    volatile uint32_t g_647[10][8][3];
    int16_t *g_722[3][9];
    int16_t **g_721;
    volatile uint64_t g_767;
    int32_t ** volatile g_794;
    uint8_t g_853[10];
    uint8_t g_859;
    union U0 g_862;
    union U0 g_892;
    int32_t g_991;
    uint64_t g_998;
    union U0 *** volatile g_1003;
    union U0 g_1014;
    uint32_t g_1167;
    uint64_t *g_1212[8][8][3];
    uint64_t * volatile *g_1211[10][7][3];
    uint64_t * volatile ** volatile g_1213;
    int32_t g_1234;
    int32_t * volatile g_1244;
    uint8_t g_1264;
    volatile uint16_t g_1332;
    volatile uint16_t * volatile g_1331;
    volatile uint16_t * volatile *g_1330;
    volatile union U0 *g_1343;
    volatile union U0 ** volatile g_1342;
    union U0 g_1356;
    uint16_t g_1382[4];
    uint32_t g_1391;
    uint16_t *g_1411[7];
    uint16_t **g_1410;
    int32_t ****g_1417;
    uint32_t g_1450;
    uint32_t ***g_1471[8];
    int64_t g_1483;
    uint32_t g_1524[2];
    int8_t g_1584;
    uint32_t ****g_1587;
    volatile uint32_t g_1614;
    int8_t **g_1625;
    int32_t g_1693;
    union U0 g_1710[8][9][3];
    uint32_t g_1726[4];
    uint64_t **g_1799;
    uint16_t g_1802[3];
    volatile int16_t *g_1825[1];
    volatile int16_t * volatile *g_1824;
    volatile int16_t * volatile ** volatile g_1823;
    volatile int16_t * volatile ** volatile *g_1822;
    volatile uint16_t g_1928;
    volatile int64_t g_1953[4][9][6];
    int16_t g_1966;
    union U0 g_1983;
    volatile int32_t g_2022;
    int8_t g_2060;
    uint32_t g_2139;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    __local volatile uint32_t *l_atomic_input;
    __local volatile uint32_t *l_special_values;
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
};


/* --- FORWARD DECLARATIONS --- */
uint32_t  func_1(struct S1 * p_2177);
int32_t * func_2(int32_t  p_3, int32_t * p_4, struct S1 * p_2177);
int32_t * func_6(int32_t * p_7, int32_t * p_8, int32_t * p_9, struct S1 * p_2177);
int32_t * func_10(int32_t * p_11, int64_t  p_12, int32_t * p_13, uint8_t  p_14, int64_t  p_15, struct S1 * p_2177);
int32_t * func_17(uint32_t  p_18, int32_t * p_19, int32_t  p_20, struct S1 * p_2177);
int32_t * func_22(int32_t  p_23, int32_t  p_24, struct S1 * p_2177);
int32_t * func_32(int32_t * p_33, int32_t * p_34, struct S1 * p_2177);
int64_t  func_39(uint64_t  p_40, int32_t * p_41, struct S1 * p_2177);
uint16_t  func_44(int16_t  p_45, int32_t ** p_46, int32_t ** p_47, uint32_t  p_48, struct S1 * p_2177);
int32_t * func_70(int64_t  p_71, uint64_t  p_72, struct S1 * p_2177);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2177->g_16 p_2177->g_16.f0 p_2177->g_27 p_2177->g_647 p_2177->g_434 p_2177->g_35 p_2177->g_241 p_2177->g_317.f0 p_2177->g_36 p_2177->g_242 p_2177->g_262.f0 p_2177->g_469 p_2177->g_160 p_2177->g_156 p_2177->g_721 p_2177->g_767 p_2177->g_566 p_2177->g_407 p_2177->g_205 p_2177->g_722 p_2177->g_37 p_2177->g_859 p_2177->g_892 p_2177->g_103 p_2177->g_240 p_2177->g_99 p_2177->g_429 p_2177->g_84 p_2177->g_79 p_2177->g_155 p_2177->g_794 p_2177->g_188 p_2177->g_430 p_2177->g_169 p_2177->g_998 p_2177->g_1014 p_2177->g_101 p_2177->g_853 p_2177->g_102 p_2177->g_201.f0 p_2177->g_892.f3 p_2177->g_121 p_2177->g_123 p_2177->g_1167 p_2177->g_69 p_2177->g_137 p_2177->g_1211 p_2177->g_1213 p_2177->g_550 p_2177->g_1264 p_2177->g_1234 p_2177->g_431 p_2177->g_432 p_2177->g_364 p_2177->g_298 p_2177->g_610 p_2177->g_1625 p_2177->g_131 p_2177->g_1693 p_2177->g_1710 p_2177->g_1726 p_2177->g_1332 p_2177->g_1584 p_2177->g_1928 p_2177->g_1391 p_2177->g_1823 p_2177->g_1824 p_2177->g_1825 p_2177->g_892.f2 p_2177->g_1953 p_2177->g_1382 p_2177->g_1966 p_2177->g_1524 p_2177->g_1983 p_2177->g_1802 p_2177->g_1356.f2 p_2177->g_1822 p_2177->g_2022 p_2177->g_2060 p_2177->g_1014.f2 p_2177->g_1331 p_2177->g_1799 p_2177->g_1212 p_2177->g_1330 p_2177->g_1483
 * writes: p_2177->g_647 p_2177->g_103 p_2177->g_36 p_2177->g_241 p_2177->g_432 p_2177->g_298 p_2177->g_37 p_2177->g_35 p_2177->g_767 p_2177->g_566 p_2177->g_859 p_2177->g_240 p_2177->g_99 p_2177->g_205 p_2177->g_169 p_2177->g_862.f4 p_2177->g_27 p_2177->g_892.f2 p_2177->g_991 p_2177->g_998 p_2177->g_892.f3 p_2177->g_1014.f3 p_2177->g_236 p_2177->g_1167 p_2177->g_69 p_2177->g_123 p_2177->g_1211 p_2177->g_1264 p_2177->g_550 p_2177->g_121 p_2177->g_242 p_2177->g_1234 p_2177->g_102 p_2177->g_1410 p_2177->g_1417 p_2177->g_853 p_2177->g_137 p_2177->g_1524 p_2177->g_1212 p_2177->g_1693 p_2177->g_262.f2 p_2177->g_722 p_2177->g_469 p_2177->g_1802 p_2177->g_1587 p_2177->g_1356.f2 p_2177->g_429 p_2177->g_2060 p_2177->g_1014.f2 p_2177->g_188 p_2177->g_101 p_2177->g_862.f3 p_2177->g_2139 p_2177->g_1391 p_2177->g_1356.f4
 */
uint32_t  func_1(struct S1 * p_2177)
{ /* block id: 4 */
    int32_t l_5 = 0L;
    int32_t l_21 = 0x32A17D0BL;
    int32_t **l_716 = (void*)0;
    int32_t **l_717 = &p_2177->g_35;
    uint32_t l_1256 = 1UL;
    int32_t *l_1267 = &p_2177->g_1234;
    int16_t ***l_1690 = &p_2177->g_721;
    uint32_t l_1735[6];
    uint64_t l_1744[7] = {0x3E443AE2495833D2L,0x3E443AE2495833D2L,0x3E443AE2495833D2L,0x3E443AE2495833D2L,0x3E443AE2495833D2L,0x3E443AE2495833D2L,0x3E443AE2495833D2L};
    union U0 **l_1771 = &p_2177->g_236;
    uint64_t l_1878 = 0xC55C9245545DCF9EL;
    uint32_t l_1911 = 0x1DC49A2EL;
    int8_t **l_2010 = &p_2177->g_131[1][0];
    int64_t l_2057 = (-6L);
    int32_t l_2059 = 6L;
    uint64_t l_2062 = 0xDB5C45974297B0BBL;
    uint32_t l_2074 = 0x30E1003DL;
    uint8_t l_2088[3];
    int32_t l_2123 = 0L;
    int32_t l_2126 = 5L;
    int32_t l_2127[4][4][4] = {{{2L,2L,(-1L),(-1L)},{2L,2L,(-1L),(-1L)},{2L,2L,(-1L),(-1L)},{2L,2L,(-1L),(-1L)}},{{2L,2L,(-1L),(-1L)},{2L,2L,(-1L),(-1L)},{2L,2L,(-1L),(-1L)},{2L,2L,(-1L),(-1L)}},{{2L,2L,(-1L),(-1L)},{2L,2L,(-1L),(-1L)},{2L,2L,(-1L),(-1L)},{2L,2L,(-1L),(-1L)}},{{2L,2L,(-1L),(-1L)},{2L,2L,(-1L),(-1L)},{2L,2L,(-1L),(-1L)},{2L,2L,(-1L),(-1L)}}};
    int64_t l_2135 = 2L;
    uint16_t l_2150[7][6] = {{65535UL,0x64F9L,65535UL,65535UL,0x64F9L,65535UL},{65535UL,0x64F9L,65535UL,65535UL,0x64F9L,65535UL},{65535UL,0x64F9L,65535UL,65535UL,0x64F9L,65535UL},{65535UL,0x64F9L,65535UL,65535UL,0x64F9L,65535UL},{65535UL,0x64F9L,65535UL,65535UL,0x64F9L,65535UL},{65535UL,0x64F9L,65535UL,65535UL,0x64F9L,65535UL},{65535UL,0x64F9L,65535UL,65535UL,0x64F9L,65535UL}};
    uint8_t l_2151 = 0x6DL;
    int32_t *****l_2152[1];
    int16_t l_2172 = (-1L);
    int8_t l_2175 = 0L;
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_1735[i] = 0xBB10B4E8L;
    for (i = 0; i < 3; i++)
        l_2088[i] = 0x06L;
    for (i = 0; i < 1; i++)
        l_2152[i] = &p_2177->g_1417;
    (*l_717) = func_2(l_5, func_6(func_10((p_2177->g_16[4] , func_17((l_21 &= 0UL), &l_5, (0L > ((((*l_717) = func_22(l_5, ((safe_mul_func_uint16_t_u_u((l_5 , (+p_2177->g_16[4].f0)), ((p_2177->g_27 > FAKE_DIVERGE(p_2177->local_1_offset, get_local_id(1), 10)) > l_5))) & 0x38F7L), p_2177)) == (void*)0) && (**l_717))), p_2177)), p_2177->g_101, &p_2177->g_1234, l_1256, p_2177->g_550, p_2177), &l_5, l_1267, p_2177), p_2177);
    for (p_2177->g_99 = 0; (p_2177->g_99 <= 0); p_2177->g_99 += 1)
    { /* block id: 876 */
        int32_t *l_1671 = (void*)0;
        int16_t ***l_1687[3][3] = {{&p_2177->g_721,&p_2177->g_721,&p_2177->g_721},{&p_2177->g_721,&p_2177->g_721,&p_2177->g_721},{&p_2177->g_721,&p_2177->g_721,&p_2177->g_721}};
        int32_t l_1691 = (-7L);
        int32_t l_1692 = 0x52E0951CL;
        int64_t l_1694[6] = {0x60F1086CBDA989FEL,0x60F1086CBDA989FEL,0x60F1086CBDA989FEL,0x60F1086CBDA989FEL,0x60F1086CBDA989FEL,0x60F1086CBDA989FEL};
        uint64_t *l_1731 = (void*)0;
        int i, j;
        if ((atomic_inc(&p_2177->l_atomic_input[11]) == 0))
        { /* block id: 878 */
            int64_t l_1635 = 1L;
            l_1635 = 0x47853CDDL;
            for (l_1635 = 3; (l_1635 >= 0); l_1635 -= 1)
            { /* block id: 882 */
                int32_t l_1636 = 7L;
                for (l_1636 = 0; (l_1636 >= 0); l_1636 -= 1)
                { /* block id: 885 */
                    int16_t l_1637 = 0x0993L;
                    int32_t l_1638 = 1L;
                    int8_t l_1639[4][9] = {{(-8L),1L,0x3EL,1L,(-8L),(-8L),1L,0x3EL,1L},{(-8L),1L,0x3EL,1L,(-8L),(-8L),1L,0x3EL,1L},{(-8L),1L,0x3EL,1L,(-8L),(-8L),1L,0x3EL,1L},{(-8L),1L,0x3EL,1L,(-8L),(-8L),1L,0x3EL,1L}};
                    int i, j, k;
                    l_1639[2][8] &= (p_2177->g_407[p_2177->g_99][(l_1635 + 1)][(l_1636 + 5)] , (l_1637 , l_1638));
                    for (l_1639[2][4] = 0; (l_1639[2][4] <= 6); l_1639[2][4] += 1)
                    { /* block id: 889 */
                        int32_t l_1640 = (-1L);
                        uint64_t l_1641[1][10] = {{18446744073709551615UL,1UL,18446744073709551615UL,18446744073709551615UL,1UL,18446744073709551615UL,18446744073709551615UL,1UL,18446744073709551615UL,18446744073709551615UL}};
                        uint32_t l_1642 = 0xA34A6D5BL;
                        uint64_t l_1643[2][7] = {{18446744073709551613UL,18446744073709551613UL,18446744073709551613UL,18446744073709551613UL,18446744073709551613UL,18446744073709551613UL,18446744073709551613UL},{18446744073709551613UL,18446744073709551613UL,18446744073709551613UL,18446744073709551613UL,18446744073709551613UL,18446744073709551613UL,18446744073709551613UL}};
                        int16_t l_1644 = 0x3829L;
                        uint64_t l_1645 = 1UL;
                        int32_t l_1646 = 0x3510F78CL;
                        int32_t l_1647 = 0x0B1510F0L;
                        uint64_t l_1648 = 18446744073709551609UL;
                        int16_t l_1649 = 0x21CFL;
                        int16_t l_1650 = 0L;
                        int16_t l_1651 = 0x0D88L;
                        int i, j, k;
                        l_1651 = (l_1650 = (l_1640 , ((l_1641[0][2] , (l_1643[1][4] = l_1642)) , (l_1649 = ((l_1638 = ((l_1644 , ((l_1646 = l_1645) , l_1647)) , (-2L))) , (l_1647 |= l_1648))))));
                    }
                }
                for (l_1636 = 6; (l_1636 >= 2); l_1636 -= 1)
                { /* block id: 901 */
                    int16_t l_1652 = 0x531BL;
                    uint16_t l_1653 = 65530UL;
                    l_1653 |= l_1652;
                }
            }
            for (l_1635 = 0; (l_1635 <= 6); l_1635 += 1)
            { /* block id: 907 */
                uint64_t l_1654 = 0x915DDB6E76BA8261L;
                int32_t l_1658 = 0x55C647BDL;
                int32_t *l_1657 = &l_1658;
                int32_t *l_1659 = &l_1658;
                int i;
                l_1654--;
                l_1659 = (l_1657 = p_2177->g_610[l_1635]);
                for (l_1654 = 0; (l_1654 <= 6); l_1654 += 1)
                { /* block id: 913 */
                    int32_t l_1660 = 0x05BFFDADL;
                    for (l_1660 = 0; (l_1660 <= 6); l_1660 += 1)
                    { /* block id: 916 */
                        uint32_t l_1661 = 4294967293UL;
                        uint32_t l_1664 = 0xA9FD0A72L;
                        int64_t l_1665 = 0L;
                        int32_t l_1666[2][4] = {{0x48124925L,0x48124925L,0x48124925L,0x48124925L},{0x48124925L,0x48124925L,0x48124925L,0x48124925L}};
                        int i, j, k;
                        l_1661++;
                        (*l_1659) |= p_2177->g_407[p_2177->g_99][(l_1654 + 1)][(p_2177->g_99 + 1)];
                        (*l_1657) = (p_2177->g_407[p_2177->g_99][(l_1660 + 1)][(p_2177->g_99 + 2)] , (l_1664 , (l_1665 , l_1666[0][0])));
                    }
                    for (l_1660 = 1; (l_1660 <= 6); l_1660 += 1)
                    { /* block id: 923 */
                        uint64_t l_1667 = 0UL;
                        l_1667++;
                    }
                }
            }
            unsigned int result = 0;
            result += l_1635;
            atomic_add(&p_2177->l_special_values[11], result);
        }
        else
        { /* block id: 928 */
            (1 + 1);
        }
        for (p_2177->g_1014.f3 = 2; (p_2177->g_1014.f3 <= 6); p_2177->g_1014.f3 += 1)
        { /* block id: 933 */
            int32_t l_1670[9];
            uint32_t *l_1676 = &p_2177->g_1524[0];
            uint32_t l_1679 = 0xCFE51302L;
            int16_t *l_1680[7] = {&p_2177->g_102,(void*)0,&p_2177->g_102,&p_2177->g_102,(void*)0,&p_2177->g_102,&p_2177->g_102};
            int16_t ****l_1688 = (void*)0;
            int16_t ****l_1689[9];
            int32_t l_1695 = 0x2FC108D8L;
            int32_t l_1696 = (-6L);
            int i;
            for (i = 0; i < 9; i++)
                l_1670[i] = 8L;
            for (i = 0; i < 9; i++)
                l_1689[i] = &l_1687[2][1];
            l_1670[4] = ((**l_717) ^= 0x00D99515L);
            l_1671 = (void*)0;
            l_1696 = ((l_1670[4] , (safe_sub_func_int8_t_s_s(((((safe_mod_func_int16_t_s_s(((-4L) != (((((((((*l_1676) = ((*p_2177->g_1625) == (void*)0)) != (safe_add_func_int16_t_s_s((((((*l_1267) = l_1679) >= (((safe_lshift_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((l_1679 | ((safe_sub_func_int64_t_s_s(((l_1690 = l_1687[2][1]) != (void*)0), (p_2177->g_79[0] , l_1691))) == l_1670[4])), l_1670[0])), l_1670[0])) | p_2177->g_429[3][1]) | 0L)) < l_1692) && (*l_1267)), 0x24CFL))) >= GROUP_DIVERGE(0, 1)) <= p_2177->g_1693) ^ l_1694[5]) & l_1692) > GROUP_DIVERGE(2, 1)) < l_1679)), l_21)) && 0xDF034253L) , l_1670[4]) || l_1695), FAKE_DIVERGE(p_2177->local_0_offset, get_local_id(0), 10)))) , (*p_2177->g_35));
        }
        if ((atomic_inc(&p_2177->l_atomic_input[9]) == 9))
        { /* block id: 943 */
            int64_t l_1697[2];
            uint16_t l_1698 = 65529UL;
            uint64_t l_1699 = 1UL;
            uint32_t l_1700 = 4294967290UL;
            uint64_t l_1701[1][4];
            int32_t l_1702 = 1L;
            int16_t l_1703 = (-6L);
            uint8_t l_1704 = 0xFAL;
            uint64_t l_1705 = 6UL;
            int64_t l_1706 = 0x43A4D25C24439593L;
            int32_t *l_1707 = (void*)0;
            uint8_t l_1708 = 9UL;
            int32_t l_1709 = 0x29F5EF27L;
            int i, j;
            for (i = 0; i < 2; i++)
                l_1697[i] = 1L;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 4; j++)
                    l_1701[i][j] = 18446744073709551610UL;
            }
            l_1699 = (l_1698 = l_1697[1]);
            l_1702 ^= (l_1701[0][3] = l_1700);
            l_1707 = (l_1703 , (l_1704 , ((l_1706 = l_1705) , (void*)0)));
            l_1709 = (l_1708 = (-10L));
            unsigned int result = 0;
            int l_1697_i0;
            for (l_1697_i0 = 0; l_1697_i0 < 2; l_1697_i0++) {
                result += l_1697[l_1697_i0];
            }
            result += l_1698;
            result += l_1699;
            result += l_1700;
            int l_1701_i0, l_1701_i1;
            for (l_1701_i0 = 0; l_1701_i0 < 1; l_1701_i0++) {
                for (l_1701_i1 = 0; l_1701_i1 < 4; l_1701_i1++) {
                    result += l_1701[l_1701_i0][l_1701_i1];
                }
            }
            result += l_1702;
            result += l_1703;
            result += l_1704;
            result += l_1705;
            result += l_1706;
            result += l_1708;
            result += l_1709;
            atomic_add(&p_2177->l_special_values[9], result);
        }
        else
        { /* block id: 952 */
            (1 + 1);
        }
        for (p_2177->g_1264 = 0; (p_2177->g_1264 <= 6); p_2177->g_1264 += 1)
        { /* block id: 957 */
            uint16_t ***l_1711 = &p_2177->g_1410;
            uint16_t ***l_1712 = &p_2177->g_1410;
            uint16_t ***l_1713 = &p_2177->g_1410;
            uint16_t ***l_1714 = (void*)0;
            uint16_t ***l_1715 = (void*)0;
            uint16_t ***l_1716 = &p_2177->g_1410;
            uint16_t ***l_1717 = &p_2177->g_1410;
            uint16_t ***l_1718 = (void*)0;
            uint16_t ***l_1719 = &p_2177->g_1410;
            uint16_t ***l_1720 = &p_2177->g_1410;
            uint16_t **l_1721[7] = {&p_2177->g_1411[4],&p_2177->g_1411[4],&p_2177->g_1411[4],&p_2177->g_1411[4],&p_2177->g_1411[4],&p_2177->g_1411[4],&p_2177->g_1411[4]};
            int32_t l_1732 = 0x2AB2CCF1L;
            int i;
            (*l_1267) = (((*l_1267) | ((p_2177->g_1710[0][0][0] , &p_2177->g_1411[1]) == (l_1721[3] = &p_2177->g_1411[6]))) > (safe_lshift_func_int8_t_s_u((safe_add_func_int8_t_s_s((0x6C6251E2L != (((p_2177->g_1726[1] && ((safe_div_func_uint64_t_u_u((safe_lshift_func_int8_t_s_s((((p_2177->g_1212[7][4][0] = &p_2177->g_469[1]) == (p_2177->g_364[6][0][6] , l_1731)) == l_1732), (**l_717))), p_2177->g_469[8])) ^ l_1732)) , 0xACL) >= (*l_1267))), 0x0FL)), 5)));
        }
    }
    (*l_1267) = (safe_add_func_int64_t_s_s(((*l_1267) & l_1735[0]), 8UL));
    if ((2L != (((*l_1267) || (safe_mul_func_int16_t_s_s(((((*l_1267) , (+(safe_div_func_int64_t_s_s((*l_1267), 0x59E438CAD06E8429L)))) >= (-1L)) > p_2177->g_1332), (**l_717)))) && (safe_mul_func_int16_t_s_s((safe_rshift_func_int8_t_s_s((0x51L == 0UL), l_1744[1])), 65529UL)))))
    { /* block id: 964 */
        int32_t l_1749 = 1L;
        int32_t l_1801 = 0x3DC2CE2EL;
        int32_t l_1816 = 3L;
        int8_t **l_1901 = &p_2177->g_131[2][0];
        uint16_t l_1910 = 65534UL;
        int32_t l_1920 = (-8L);
        int32_t l_1921 = 0x698A39ECL;
        int16_t l_1952 = 0x5A1FL;
        uint32_t ****l_1991 = &p_2177->g_1471[0];
        union U0 **l_2136 = &p_2177->g_236;
        if ((safe_add_func_uint32_t_u_u((safe_rshift_func_int8_t_s_s(l_1749, 7)), l_1749)))
        { /* block id: 965 */
            int8_t l_1755 = (-7L);
            int32_t l_1760 = 7L;
            uint16_t l_1800 = 0x3B59L;
            int32_t l_1855 = 0x367F8172L;
            int32_t *l_1875 = &p_2177->g_1693;
            uint8_t *l_1884 = &p_2177->g_27;
            int8_t l_1915[9] = {1L,1L,1L,1L,1L,1L,1L,1L,1L};
            int i;
            for (p_2177->g_69 = (-30); (p_2177->g_69 >= (-14)); p_2177->g_69 = safe_add_func_int16_t_s_s(p_2177->g_69, 9))
            { /* block id: 968 */
                uint64_t *l_1754[6] = {(void*)0,&p_2177->g_998,(void*)0,(void*)0,&p_2177->g_998,(void*)0};
                uint64_t *l_1761 = &p_2177->g_469[5];
                int32_t l_1766 = 0x00BF496AL;
                int32_t l_1803[2];
                int32_t l_1804 = 0L;
                uint8_t l_1872 = 0xBEL;
                int i;
                for (i = 0; i < 2; i++)
                    l_1803[i] = 4L;
                (1 + 1);
            }
            for (l_1800 = 8; (l_1800 != 17); l_1800 = safe_add_func_int32_t_s_s(l_1800, 1))
            { /* block id: 1015 */
                uint16_t l_1883 = 0xC13EL;
                int32_t l_1885 = (-9L);
                int16_t *l_1888[9] = {&p_2177->g_102,&p_2177->g_429[0][3],&p_2177->g_102,&p_2177->g_102,&p_2177->g_429[0][3],&p_2177->g_102,&p_2177->g_102,&p_2177->g_429[0][3],&p_2177->g_102};
                uint64_t *l_1912 = (void*)0;
                uint64_t *l_1913 = (void*)0;
                uint64_t *l_1914 = &l_1744[6];
                int i;
                (*l_1267) = ((0UL <= (l_1883 ^= (safe_mod_func_int32_t_s_s((**p_2177->g_156), ((*l_1875) = (**l_717)))))) & ((p_2177->g_137[2][0][3] && (((((l_1884 == ((**l_717) , &p_2177->g_853[8])) & l_1885) || (l_1885 = ((safe_lshift_func_uint8_t_u_s(0x85L, 4)) , (**l_717)))) , (void*)0) != l_1875)) > l_1816));
                (***p_2177->g_160) = ((safe_add_func_int8_t_s_s((safe_mod_func_int64_t_s_s(((((safe_div_func_uint32_t_u_u(((((0x2CL | (((*l_1914) = (((1UL >= (safe_sub_func_uint32_t_u_u((safe_mod_func_int16_t_s_s((safe_mod_func_int8_t_s_s((*l_1875), p_2177->g_364[6][0][6])), (**l_717))), (l_1901 != &p_2177->g_131[1][0])))) < ((((safe_sub_func_uint64_t_u_u((0x4B4725A2L ^ (safe_sub_func_uint32_t_u_u(((safe_lshift_func_uint16_t_u_s(((safe_div_func_int32_t_s_s((-1L), 0x7580831EL)) || l_1885), 12)) < l_1816), l_1801))), l_1910)) || (*l_1875)) || l_1816) & l_1911)) , p_2177->g_137[2][0][7])) == p_2177->g_1584)) | 4L) <= l_1883) | 0x37L), 4294967291UL)) & (*l_1875)) <= l_1915[6]) == l_1801), l_1883)), 0x0FL)) > p_2177->g_1264);
            }
        }
        else
        { /* block id: 1023 */
            uint64_t l_1916 = 0x82CFE921E3FB6A75L;
            int32_t l_1922 = 0x01B2C587L;
            int16_t *l_1956 = &p_2177->g_429[0][3];
            uint64_t *l_1965 = &p_2177->g_469[5];
            uint32_t l_1995 = 1UL;
            ++l_1916;
            for (p_2177->g_1264 = 0; (p_2177->g_1264 <= 6); p_2177->g_1264 += 1)
            { /* block id: 1027 */
                int32_t l_1939 = 0x34770575L;
                int32_t l_1951[7] = {(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L)};
                int i;
                for (p_2177->g_103 = 2; (p_2177->g_103 <= 6); p_2177->g_103 += 1)
                { /* block id: 1030 */
                    uint32_t l_1923 = 4294967295UL;
                    uint64_t l_1933 = 0xEA0C21B894841AE7L;
                    int32_t l_1944[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_1944[i] = 0x518B3971L;
                    for (p_2177->g_262.f2 = 4; (p_2177->g_262.f2 >= 0); p_2177->g_262.f2 -= 1)
                    { /* block id: 1033 */
                        int32_t *l_1919[7][3][9] = {{{&p_2177->g_241,&l_1816,&p_2177->g_1234,&p_2177->g_1693,(void*)0,&p_2177->g_241,&p_2177->g_64,&l_1816,&p_2177->g_64},{&p_2177->g_241,&l_1816,&p_2177->g_1234,&p_2177->g_1693,(void*)0,&p_2177->g_241,&p_2177->g_64,&l_1816,&p_2177->g_64},{&p_2177->g_241,&l_1816,&p_2177->g_1234,&p_2177->g_1693,(void*)0,&p_2177->g_241,&p_2177->g_64,&l_1816,&p_2177->g_64}},{{&p_2177->g_241,&l_1816,&p_2177->g_1234,&p_2177->g_1693,(void*)0,&p_2177->g_241,&p_2177->g_64,&l_1816,&p_2177->g_64},{&p_2177->g_241,&l_1816,&p_2177->g_1234,&p_2177->g_1693,(void*)0,&p_2177->g_241,&p_2177->g_64,&l_1816,&p_2177->g_64},{&p_2177->g_241,&l_1816,&p_2177->g_1234,&p_2177->g_1693,(void*)0,&p_2177->g_241,&p_2177->g_64,&l_1816,&p_2177->g_64}},{{&p_2177->g_241,&l_1816,&p_2177->g_1234,&p_2177->g_1693,(void*)0,&p_2177->g_241,&p_2177->g_64,&l_1816,&p_2177->g_64},{&p_2177->g_241,&l_1816,&p_2177->g_1234,&p_2177->g_1693,(void*)0,&p_2177->g_241,&p_2177->g_64,&l_1816,&p_2177->g_64},{&p_2177->g_241,&l_1816,&p_2177->g_1234,&p_2177->g_1693,(void*)0,&p_2177->g_241,&p_2177->g_64,&l_1816,&p_2177->g_64}},{{&p_2177->g_241,&l_1816,&p_2177->g_1234,&p_2177->g_1693,(void*)0,&p_2177->g_241,&p_2177->g_64,&l_1816,&p_2177->g_64},{&p_2177->g_241,&l_1816,&p_2177->g_1234,&p_2177->g_1693,(void*)0,&p_2177->g_241,&p_2177->g_64,&l_1816,&p_2177->g_64},{&p_2177->g_241,&l_1816,&p_2177->g_1234,&p_2177->g_1693,(void*)0,&p_2177->g_241,&p_2177->g_64,&l_1816,&p_2177->g_64}},{{&p_2177->g_241,&l_1816,&p_2177->g_1234,&p_2177->g_1693,(void*)0,&p_2177->g_241,&p_2177->g_64,&l_1816,&p_2177->g_64},{&p_2177->g_241,&l_1816,&p_2177->g_1234,&p_2177->g_1693,(void*)0,&p_2177->g_241,&p_2177->g_64,&l_1816,&p_2177->g_64},{&p_2177->g_241,&l_1816,&p_2177->g_1234,&p_2177->g_1693,(void*)0,&p_2177->g_241,&p_2177->g_64,&l_1816,&p_2177->g_64}},{{&p_2177->g_241,&l_1816,&p_2177->g_1234,&p_2177->g_1693,(void*)0,&p_2177->g_241,&p_2177->g_64,&l_1816,&p_2177->g_64},{&p_2177->g_241,&l_1816,&p_2177->g_1234,&p_2177->g_1693,(void*)0,&p_2177->g_241,&p_2177->g_64,&l_1816,&p_2177->g_64},{&p_2177->g_241,&l_1816,&p_2177->g_1234,&p_2177->g_1693,(void*)0,&p_2177->g_241,&p_2177->g_64,&l_1816,&p_2177->g_64}},{{&p_2177->g_241,&l_1816,&p_2177->g_1234,&p_2177->g_1693,(void*)0,&p_2177->g_241,&p_2177->g_64,&l_1816,&p_2177->g_64},{&p_2177->g_241,&l_1816,&p_2177->g_1234,&p_2177->g_1693,(void*)0,&p_2177->g_241,&p_2177->g_64,&l_1816,&p_2177->g_64},{&p_2177->g_241,&l_1816,&p_2177->g_1234,&p_2177->g_1693,(void*)0,&p_2177->g_241,&p_2177->g_64,&l_1816,&p_2177->g_64}}};
                        int64_t *l_1932[3];
                        int32_t *l_1936 = &p_2177->g_991;
                        int i, j, k;
                        for (i = 0; i < 3; i++)
                            l_1932[i] = &p_2177->g_892.f2;
                        l_1923++;
                        (*p_2177->g_35) = (((p_2177->g_137[8][0][2] & (safe_lshift_func_uint16_t_u_u(l_1916, 2))) , (!(p_2177->g_1928 >= l_1923))) ^ (((l_1922 = (safe_lshift_func_uint16_t_u_s(((FAKE_DIVERGE(p_2177->group_2_offset, get_group_id(2), 10) , (*p_2177->g_160)) != (*p_2177->g_160)), (((safe_unary_minus_func_int16_t_s(0x5E9CL)) || (-1L)) <= p_2177->g_432)))) != p_2177->g_1726[1]) , l_1933));
                        l_1922 = (((p_2177->g_1391 , ((((((safe_lshift_func_int16_t_s_s((l_1936 == ((p_2177->g_1234 , (((l_1933 && l_1749) , l_1939) && (6UL == ((!(safe_rshift_func_int8_t_s_s(((safe_mod_func_int32_t_s_s(((((l_1939 ^ (l_1944[0] = FAKE_DIVERGE(p_2177->local_2_offset, get_local_id(2), 10))) && ((safe_lshift_func_uint16_t_u_s((safe_add_func_uint8_t_u_u((safe_lshift_func_int16_t_s_u((***p_2177->g_1823), l_1923)), l_1749)), l_1749)) ^ l_1951[0])) ^ l_1922) || (**l_717)), FAKE_DIVERGE(p_2177->local_0_offset, get_local_id(0), 10))) , 0L), 6))) || l_1951[0])))) , &p_2177->g_991)), (*l_1267))) && l_1916) > FAKE_DIVERGE(p_2177->local_2_offset, get_local_id(2), 10)) , 3UL) != l_1951[5]) < l_1952)) ^ 6L) <= l_1910);
                        (**p_2177->g_160) = (**p_2177->g_155);
                    }
                    (*l_717) = (*p_2177->g_794);
                    for (p_2177->g_892.f2 = 2; (p_2177->g_892.f2 <= 6); p_2177->g_892.f2 += 1)
                    { /* block id: 1044 */
                        (*p_2177->g_35) |= l_1916;
                    }
                }
                (*l_1267) = l_1922;
                if (l_1916)
                    break;
            }
            if (((p_2177->g_1953[2][7][2] & (((safe_lshift_func_uint8_t_u_s(l_1922, 5)) > (((*p_2177->g_721) = l_1956) == &p_2177->g_429[0][3])) != (p_2177->g_1382[2] != (((safe_add_func_uint16_t_u_u((((safe_lshift_func_int16_t_s_u(((safe_sub_func_int8_t_s_s((safe_div_func_uint8_t_u_u(((((*l_1965) = (&p_2177->g_99 != &p_2177->g_998)) , 0x54EF4582L) & (((*l_1267) <= FAKE_DIVERGE(p_2177->group_1_offset, get_group_id(1), 10)) , (*p_2177->g_35))), 0x74L)), GROUP_DIVERGE(1, 1))) != p_2177->g_27), 8)) , 0L) < 0x6D0CL), p_2177->g_1966)) <= l_1749) < 0UL)))) , (**p_2177->g_156)))
            { /* block id: 1053 */
                uint32_t *l_1967 = &p_2177->g_1524[0];
                int32_t l_1970 = 0x658BC52AL;
                uint16_t *l_1984 = &p_2177->g_1802[1];
                uint32_t *****l_1992 = &p_2177->g_1587;
                uint64_t *l_1993 = (void*)0;
                uint64_t *l_1994 = &l_1744[1];
                int64_t *l_1996[10][4][4] = {{{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0},{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0},{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0},{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0}},{{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0},{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0},{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0},{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0}},{{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0},{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0},{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0},{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0}},{{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0},{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0},{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0},{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0}},{{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0},{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0},{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0},{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0}},{{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0},{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0},{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0},{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0}},{{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0},{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0},{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0},{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0}},{{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0},{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0},{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0},{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0}},{{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0},{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0},{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0},{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0}},{{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0},{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0},{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0},{&p_2177->g_432,(void*)0,&p_2177->g_432,(void*)0}}};
                int32_t l_1997 = 0x332FECBBL;
                int i, j, k;
                (**p_2177->g_156) &= (p_2177->g_121[5][5] || ((*l_1967)++));
                (***p_2177->g_160) = l_1970;
                l_1970 = ((l_1997 &= (safe_div_func_uint32_t_u_u((safe_div_func_uint16_t_u_u(l_1952, 0x680CL)), (safe_add_func_int32_t_s_s(((safe_mod_func_int32_t_s_s((l_1921 > GROUP_DIVERGE(0, 1)), ((((safe_rshift_func_uint16_t_u_s(((safe_lshift_func_int8_t_s_u(((*l_1267) = ((p_2177->g_1983 , l_1922) < (((*l_1994) = (l_1920 = (FAKE_DIVERGE(p_2177->group_0_offset, get_group_id(0), 10) , ((((*l_1984) ^= l_1921) >= 1L) >= ((*l_1967) = (safe_mod_func_int32_t_s_s((safe_div_func_uint16_t_u_u((safe_add_func_int8_t_s_s(((&p_2177->g_1471[2] == ((*l_1992) = l_1991)) ^ l_1970), l_1922)), 1UL)), GROUP_DIVERGE(2, 1)))))))) > l_1995))), GROUP_DIVERGE(2, 1))) & p_2177->g_1391), l_1922)) ^ l_1921) && 0x48L) , p_2177->g_137[8][0][2]))) | (-1L)), FAKE_DIVERGE(p_2177->group_1_offset, get_group_id(1), 10)))))) != 0xB8E95732DEB86525L);
            }
            else
            { /* block id: 1065 */
                (*p_2177->g_37) = l_1920;
            }
        }
        for (p_2177->g_103 = 21; (p_2177->g_103 >= 18); --p_2177->g_103)
        { /* block id: 1071 */
            uint16_t l_2021 = 65535UL;
            int32_t l_2024 = (-1L);
            int32_t l_2054 = 0x4332D540L;
            int32_t l_2055 = 0x3BC4F690L;
            int32_t l_2058 = 1L;
            uint32_t *****l_2070 = &l_1991;
            int8_t *l_2075 = (void*)0;
            int8_t *l_2076 = &p_2177->g_2060;
            for (p_2177->g_998 = 0; (p_2177->g_998 >= 24); p_2177->g_998 = safe_add_func_uint32_t_u_u(p_2177->g_998, 3))
            { /* block id: 1074 */
                uint32_t *l_2019 = &l_1911;
                int32_t l_2020 = 0x7DBE0E3DL;
                int16_t *l_2034 = &p_2177->g_429[2][0];
                int32_t l_2050[10] = {0x2991D2E0L,0x2991D2E0L,0x2991D2E0L,0x2991D2E0L,0x2991D2E0L,0x2991D2E0L,0x2991D2E0L,0x2991D2E0L,0x2991D2E0L,0x2991D2E0L};
                int32_t l_2053[7][4][2] = {{{1L,0x720CAED6L},{1L,0x720CAED6L},{1L,0x720CAED6L},{1L,0x720CAED6L}},{{1L,0x720CAED6L},{1L,0x720CAED6L},{1L,0x720CAED6L},{1L,0x720CAED6L}},{{1L,0x720CAED6L},{1L,0x720CAED6L},{1L,0x720CAED6L},{1L,0x720CAED6L}},{{1L,0x720CAED6L},{1L,0x720CAED6L},{1L,0x720CAED6L},{1L,0x720CAED6L}},{{1L,0x720CAED6L},{1L,0x720CAED6L},{1L,0x720CAED6L},{1L,0x720CAED6L}},{{1L,0x720CAED6L},{1L,0x720CAED6L},{1L,0x720CAED6L},{1L,0x720CAED6L}},{{1L,0x720CAED6L},{1L,0x720CAED6L},{1L,0x720CAED6L},{1L,0x720CAED6L}}};
                int i, j, k;
                for (p_2177->g_1356.f2 = 0; (p_2177->g_1356.f2 <= 3); p_2177->g_1356.f2 += 1)
                { /* block id: 1077 */
                    uint64_t *l_2023[8] = {&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878,&l_1878};
                    int i, j, k;
                    (*l_717) = func_70(p_2177->g_364[(p_2177->g_1356.f2 + 1)][p_2177->g_1356.f2][p_2177->g_1356.f2], (l_2024 |= (p_2177->g_550 = (safe_mul_func_int8_t_s_s(((safe_sub_func_int64_t_s_s(((safe_add_func_uint64_t_u_u(((safe_mod_func_int32_t_s_s(((void*)0 != l_2010), ((**l_717) ^= ((void*)0 != (**p_2177->g_1822))))) , ((safe_lshift_func_int8_t_s_u((((l_1920 ^= (safe_div_func_int8_t_s_s(p_2177->g_364[(p_2177->g_1356.f2 + 1)][p_2177->g_1356.f2][p_2177->g_1356.f2], (p_2177->g_431 ^ (safe_mod_func_uint32_t_u_u(((safe_lshift_func_uint8_t_u_s(((void*)0 != l_2019), l_2020)) >= l_2021), 4294967295UL)))))) , p_2177->g_2022) <= 8UL), 4)) >= p_2177->g_137[1][0][7])), l_1921)) ^ l_2021), p_2177->g_1726[1])) , l_2021), l_2021)))), p_2177);
                }
                if (((safe_sub_func_int32_t_s_s((~(((safe_unary_minus_func_int64_t_s(((l_2020 >= (**p_2177->g_156)) | ((!(safe_mod_func_uint64_t_u_u(((safe_mod_func_uint8_t_u_u(l_2020, ((safe_div_func_int16_t_s_s(((*l_2034) &= ((void*)0 != (*p_2177->g_155))), l_2020)) | (8UL <= ((0xC9E2E0B9L < 0UL) && (*p_2177->g_37)))))) && 5UL), 7UL))) , 0x190D7090L)))) && (-1L)) >= p_2177->g_998)), FAKE_DIVERGE(p_2177->local_0_offset, get_local_id(0), 10))) <= GROUP_DIVERGE(1, 1)))
                { /* block id: 1085 */
                    int32_t l_2035 = 0x0601C08BL;
                    int32_t *l_2036 = &p_2177->g_1356.f4;
                    int32_t *l_2037 = &p_2177->g_862.f4;
                    int32_t *l_2038 = &p_2177->g_64;
                    int32_t *l_2039 = &l_1921;
                    int32_t *l_2040 = &p_2177->g_1983.f4;
                    int32_t *l_2041 = &p_2177->g_1014.f4;
                    int32_t *l_2042 = &l_1816;
                    int32_t *l_2043 = &l_21;
                    int32_t *l_2044 = (void*)0;
                    int32_t *l_2045 = &p_2177->g_862.f4;
                    int32_t *l_2046 = (void*)0;
                    int32_t *l_2047 = &p_2177->g_241;
                    int32_t *l_2048 = &p_2177->g_241;
                    int32_t *l_2049 = &l_1921;
                    int32_t *l_2051 = &l_21;
                    int32_t *l_2052[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int32_t l_2056 = 0x17F9BE7FL;
                    int32_t l_2061 = 0x5ADE678AL;
                    int i;
                    l_2062--;
                    for (l_1920 = (-1); (l_1920 > (-28)); l_1920 = safe_sub_func_uint8_t_u_u(l_1920, 1))
                    { /* block id: 1089 */
                        uint64_t l_2067 = 0x273D28C2CB212E18L;
                        --l_2067;
                        return l_2067;
                    }
                }
                else
                { /* block id: 1093 */
                    uint32_t ******l_2071 = (void*)0;
                    uint32_t *****l_2073 = &p_2177->g_1587;
                    uint32_t ******l_2072 = &l_2073;
                    (*p_2177->g_37) = (l_2070 == ((*l_2072) = &p_2177->g_1587));
                }
            }
            (*l_717) = ((**p_2177->g_160) = func_32(&l_1801, (((GROUP_DIVERGE(2, 1) , 0xFD90AD51L) || (l_2074 & ((*l_2076) &= l_2058))) , ((*l_717) = &l_1921)), p_2177));
            if ((*p_2177->g_37))
                continue;
            for (p_2177->g_1014.f2 = 0; (p_2177->g_1014.f2 == (-18)); p_2177->g_1014.f2 = safe_sub_func_uint16_t_u_u(p_2177->g_1014.f2, 9))
            { /* block id: 1105 */
                int64_t l_2094 = 0x2C7C90AB32E5AA0BL;
                uint64_t *l_2101[10];
                int8_t l_2124 = 0x0DL;
                int32_t l_2129 = 0x2D7E48E2L;
                int i;
                for (i = 0; i < 10; i++)
                    l_2101[i] = &p_2177->g_469[3];
                for (p_2177->g_188 = 3; (p_2177->g_188 == 27); p_2177->g_188 = safe_add_func_int64_t_s_s(p_2177->g_188, 1))
                { /* block id: 1108 */
                    int64_t l_2083 = 0x73F5C22475A4C92AL;
                    int32_t l_2125 = (-10L);
                    int32_t l_2128 = (-7L);
                    for (p_2177->g_101 = 18; (p_2177->g_101 < 29); p_2177->g_101 = safe_add_func_uint16_t_u_u(p_2177->g_101, 3))
                    { /* block id: 1111 */
                        (***p_2177->g_160) ^= l_2083;
                    }
                    for (l_21 = 0; (l_21 <= (-9)); l_21 = safe_sub_func_int8_t_s_s(l_21, 2))
                    { /* block id: 1116 */
                        uint16_t *l_2089 = &p_2177->g_862.f3;
                        int32_t l_2102 = 0x2FE851F3L;
                        int32_t *l_2103 = &l_2059;
                        uint16_t *l_2104 = &p_2177->g_123;
                        int32_t *l_2105 = &p_2177->g_265[1][1][3].f4;
                        int32_t *l_2106 = &l_2058;
                        int32_t *l_2107 = &p_2177->g_892.f4;
                        int32_t *l_2108 = &l_1816;
                        int32_t *l_2109 = &p_2177->g_69;
                        int32_t *l_2110 = &l_5;
                        int32_t *l_2111 = &l_1921;
                        int32_t *l_2112 = (void*)0;
                        int32_t *l_2113 = &p_2177->g_1983.f4;
                        int32_t *l_2114 = &p_2177->g_265[1][1][3].f4;
                        int32_t *l_2115 = &l_1801;
                        int32_t *l_2116 = &p_2177->g_1983.f4;
                        int32_t *l_2117 = &l_1921;
                        int32_t *l_2118 = (void*)0;
                        int32_t *l_2119 = &p_2177->g_241;
                        int32_t *l_2120 = &p_2177->g_36;
                        int32_t *l_2121 = &l_1920;
                        int32_t *l_2122[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        uint64_t l_2130[9][4][7] = {{{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL},{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL},{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL},{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL}},{{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL},{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL},{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL},{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL}},{{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL},{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL},{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL},{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL}},{{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL},{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL},{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL},{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL}},{{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL},{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL},{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL},{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL}},{{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL},{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL},{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL},{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL}},{{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL},{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL},{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL},{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL}},{{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL},{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL},{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL},{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL}},{{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL},{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL},{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL},{0UL,0x52B10B3FF093102EL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,9UL,1UL}}};
                        int i, j, k;
                        (*p_2177->g_35) = ((*p_2177->g_1331) ^ (safe_div_func_uint32_t_u_u((((*l_2089) = l_2088[1]) == (safe_mul_func_uint16_t_u_u((safe_add_func_uint32_t_u_u((l_2094 & ((~0xE76FF3A1L) || (safe_mul_func_int16_t_s_s((l_1801 = (((***p_2177->g_155) >= (safe_rshift_func_int16_t_s_s(0x0B7FL, (safe_mod_func_uint16_t_u_u(((*l_2104) ^= ((((*l_2103) = (l_2102 &= (l_2101[7] != (*p_2177->g_1799)))) > p_2177->g_1391) && p_2177->g_1014.f2)), (**l_717)))))) <= p_2177->g_99)), l_2021)))), (*p_2177->g_35))), l_2024))), (-5L))));
                        ++l_2130[0][3][5];
                        (*p_2177->g_156) = (l_2124 , (*p_2177->g_794));
                    }
                }
            }
        }
        (*p_2177->g_37) = (safe_mul_func_int8_t_s_s(l_2135, (l_2136 == &p_2177->g_236)));
    }
    else
    { /* block id: 1130 */
        int64_t l_2137 = (-1L);
        uint32_t *l_2138 = &p_2177->g_2139;
        int32_t *****l_2141[8] = {&p_2177->g_1417,&p_2177->g_1417,&p_2177->g_1417,&p_2177->g_1417,&p_2177->g_1417,&p_2177->g_1417,&p_2177->g_1417,&p_2177->g_1417};
        int32_t ******l_2140 = &l_2141[1];
        int32_t *****l_2143 = &p_2177->g_1417;
        int32_t ******l_2142 = &l_2143;
        int32_t l_2153 = 0x628AB882L;
        uint32_t *l_2159 = (void*)0;
        uint32_t **l_2158 = &l_2159;
        uint8_t l_2171 = 0x9DL;
        uint16_t *l_2173 = (void*)0;
        uint16_t *l_2174 = &l_2150[5][1];
        int8_t l_2176 = 0x33L;
        int i;
        l_2153 = ((l_2137 & ((-5L) ^ ((((**l_717) &= ((*l_2138) = p_2177->g_317.f0)) , ((***p_2177->g_155) & FAKE_DIVERGE(p_2177->global_1_offset, get_global_id(1), 10))) != (((*l_2142) = ((*l_2140) = &p_2177->g_1417)) == ((0x307186D0L && ((safe_rshift_func_uint8_t_u_u(((~p_2177->g_998) && (safe_sub_func_int16_t_s_s((((safe_rshift_func_uint16_t_u_u(l_2137, 12)) > (l_2150[5][0] <= 0x0856L)) , l_2151), 0xFCA7L))), 1)) , p_2177->g_99)) , l_2152[0]))))) , (***p_2177->g_160));
        (*p_2177->g_37) = (safe_add_func_int64_t_s_s(((((*l_2174) ^= ((((*l_1267) , (*l_1267)) | (safe_lshift_func_uint16_t_u_s(((((*l_2158) = l_2138) == &p_2177->g_1167) && ((**p_2177->g_1330) ^ (safe_mod_func_uint16_t_u_u(((((safe_add_func_uint64_t_u_u(GROUP_DIVERGE(1, 1), (safe_div_func_uint8_t_u_u((((((((p_2177->g_1391 = 6UL) < (***p_2177->g_160)) || (safe_mod_func_uint64_t_u_u((((safe_unary_minus_func_uint32_t_u((safe_rshift_func_uint16_t_u_u(0x6A39L, 11)))) != (p_2177->g_1356.f4 = (p_2177->g_241 = (p_2177->g_1524[0] == 8UL)))) & l_2171), 6L))) ^ 0x664D2ED76940F400L) || (**l_717)) >= p_2177->g_1726[1]) > l_2172), (*l_1267))))) , (*l_1267)) && FAKE_DIVERGE(p_2177->local_1_offset, get_local_id(1), 10)) < (***p_2177->g_155)), (*l_1267))))), 6))) == p_2177->g_853[6])) | l_2175) , l_2176), p_2177->g_1483));
    }
    return (**l_717);
}


/* ------------------------------------------ */
/* 
 * reads : p_2177->g_156 p_2177->g_37 p_2177->g_1234 p_2177->g_103 p_2177->g_241 p_2177->g_121 p_2177->g_431 p_2177->g_432 p_2177->g_1167 p_2177->g_364 p_2177->g_155 p_2177->g_298 p_2177->g_69 p_2177->g_160 p_2177->g_859 p_2177->g_794 p_2177->g_35
 * writes: p_2177->g_27 p_2177->g_121 p_2177->g_1167 p_2177->g_242 p_2177->g_1234 p_2177->g_37 p_2177->g_298 p_2177->g_102 p_2177->g_1410 p_2177->g_432 p_2177->g_1417 p_2177->g_853 p_2177->g_103 p_2177->g_859
 */
int32_t * func_2(int32_t  p_3, int32_t * p_4, struct S1 * p_2177)
{ /* block id: 722 */
    int64_t l_1289 = 0x007E2A34A66D3477L;
    uint8_t *l_1290 = (void*)0;
    uint8_t *l_1291 = &p_2177->g_27;
    int8_t *l_1292 = &p_2177->g_121[0][5];
    int32_t *l_1293 = &p_2177->g_241;
    uint8_t l_1306 = 1UL;
    int32_t l_1396 = 0x0B2E9F6BL;
    int32_t l_1397 = 1L;
    int32_t l_1398 = 0x0F3FAD7BL;
    int32_t l_1400 = (-1L);
    int32_t l_1401 = (-1L);
    uint16_t *l_1409 = &p_2177->g_1382[2];
    uint16_t **l_1408[9] = {&l_1409,&l_1409,&l_1409,&l_1409,&l_1409,&l_1409,&l_1409,&l_1409,&l_1409};
    int32_t ****l_1416 = &p_2177->g_160;
    uint8_t l_1432 = 252UL;
    int64_t ***l_1523 = &p_2177->g_566[0][0];
    union U0 *l_1551[6][7][4] = {{{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0}},{{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0}},{{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0}},{{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0}},{{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0}},{{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0},{&p_2177->g_892,(void*)0,(void*)0,(void*)0}}};
    uint32_t l_1555 = 1UL;
    int32_t *l_1558 = &l_1397;
    int64_t *l_1579 = &p_2177->g_1483;
    uint32_t ****l_1585 = &p_2177->g_1471[7];
    int32_t l_1609 = (-1L);
    int32_t l_1610 = 0x1E338EE2L;
    int32_t l_1611 = 0x4BF0FDE4L;
    int32_t l_1612 = 0x645CA3B0L;
    int32_t l_1613[9][5] = {{1L,0x28D3348DL,(-6L),6L,(-6L)},{1L,0x28D3348DL,(-6L),6L,(-6L)},{1L,0x28D3348DL,(-6L),6L,(-6L)},{1L,0x28D3348DL,(-6L),6L,(-6L)},{1L,0x28D3348DL,(-6L),6L,(-6L)},{1L,0x28D3348DL,(-6L),6L,(-6L)},{1L,0x28D3348DL,(-6L),6L,(-6L)},{1L,0x28D3348DL,(-6L),6L,(-6L)},{1L,0x28D3348DL,(-6L),6L,(-6L)}};
    int i, j, k;
    if ((safe_mul_func_int16_t_s_s((safe_sub_func_int64_t_s_s((safe_rshift_func_uint8_t_u_u((((safe_unary_minus_func_uint64_t_u((safe_mod_func_int8_t_s_s(((*l_1292) = ((~((*l_1291) = ((0UL != (**p_2177->g_156)) , (0xBD17L < (safe_mul_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((safe_sub_func_uint64_t_u_u(((p_3 || (0x779A48680AE6A63EL | (safe_lshift_func_uint8_t_u_s((l_1289 , p_3), l_1289)))) < 1UL), 0x747EAABE40F55046L)), l_1289)), 5UL)))))) || p_3)), l_1289)))) != 0xF1L) | (-1L)), p_2177->g_103)), GROUP_DIVERGE(2, 1))), l_1289)))
    { /* block id: 725 */
        return l_1293;
    }
    else
    { /* block id: 727 */
        int16_t *l_1309 = &p_2177->g_242;
        (*p_2177->g_37) = (((safe_rshift_func_uint8_t_u_u((((safe_add_func_int32_t_s_s((safe_lshift_func_uint16_t_u_s(((GROUP_DIVERGE(2, 1) || (((*l_1292) &= (*l_1293)) == 0x5CL)) , ((safe_lshift_func_int16_t_s_s((p_2177->g_431 <= 1L), (safe_add_func_int32_t_s_s((safe_mul_func_uint16_t_u_u(p_2177->g_432, l_1306)), (p_2177->g_1167++))))) & (-1L))), ((*l_1309) = 0x3D6AL))), 1L)) != p_2177->g_364[6][0][6]) >= 65535UL), 6)) , FAKE_DIVERGE(p_2177->global_1_offset, get_global_id(1), 10)) || p_3);
        (**p_2177->g_155) = (**p_2177->g_155);
    }
    for (p_2177->g_298 = 0; (p_2177->g_298 >= 8); p_2177->g_298 = safe_add_func_uint64_t_u_u(p_2177->g_298, 5))
    { /* block id: 736 */
        uint64_t l_1316 = 18446744073709551614UL;
        uint64_t *l_1336 = &p_2177->g_469[5];
        uint16_t *l_1381 = &p_2177->g_1382[2];
        uint16_t **l_1380[2][7][8] = {{{&l_1381,&l_1381,&l_1381,&l_1381,&l_1381,(void*)0,&l_1381,&l_1381},{&l_1381,&l_1381,&l_1381,&l_1381,&l_1381,(void*)0,&l_1381,&l_1381},{&l_1381,&l_1381,&l_1381,&l_1381,&l_1381,(void*)0,&l_1381,&l_1381},{&l_1381,&l_1381,&l_1381,&l_1381,&l_1381,(void*)0,&l_1381,&l_1381},{&l_1381,&l_1381,&l_1381,&l_1381,&l_1381,(void*)0,&l_1381,&l_1381},{&l_1381,&l_1381,&l_1381,&l_1381,&l_1381,(void*)0,&l_1381,&l_1381},{&l_1381,&l_1381,&l_1381,&l_1381,&l_1381,(void*)0,&l_1381,&l_1381}},{{&l_1381,&l_1381,&l_1381,&l_1381,&l_1381,(void*)0,&l_1381,&l_1381},{&l_1381,&l_1381,&l_1381,&l_1381,&l_1381,(void*)0,&l_1381,&l_1381},{&l_1381,&l_1381,&l_1381,&l_1381,&l_1381,(void*)0,&l_1381,&l_1381},{&l_1381,&l_1381,&l_1381,&l_1381,&l_1381,(void*)0,&l_1381,&l_1381},{&l_1381,&l_1381,&l_1381,&l_1381,&l_1381,(void*)0,&l_1381,&l_1381},{&l_1381,&l_1381,&l_1381,&l_1381,&l_1381,(void*)0,&l_1381,&l_1381},{&l_1381,&l_1381,&l_1381,&l_1381,&l_1381,(void*)0,&l_1381,&l_1381}}};
        uint16_t ***l_1379[1];
        int16_t **l_1383 = &p_2177->g_722[2][8];
        int32_t *l_1392 = &p_2177->g_69;
        int32_t l_1395[3][5][7] = {{{1L,1L,0L,1L,(-6L),0L,0L},{1L,1L,0L,1L,(-6L),0L,0L},{1L,1L,0L,1L,(-6L),0L,0L},{1L,1L,0L,1L,(-6L),0L,0L},{1L,1L,0L,1L,(-6L),0L,0L}},{{1L,1L,0L,1L,(-6L),0L,0L},{1L,1L,0L,1L,(-6L),0L,0L},{1L,1L,0L,1L,(-6L),0L,0L},{1L,1L,0L,1L,(-6L),0L,0L},{1L,1L,0L,1L,(-6L),0L,0L}},{{1L,1L,0L,1L,(-6L),0L,0L},{1L,1L,0L,1L,(-6L),0L,0L},{1L,1L,0L,1L,(-6L),0L,0L},{1L,1L,0L,1L,(-6L),0L,0L},{1L,1L,0L,1L,(-6L),0L,0L}}};
        uint32_t l_1403 = 0x6594A2B1L;
        uint64_t ***l_1458 = (void*)0;
        uint32_t ***l_1469[4][3] = {{&p_2177->g_609[1][1][3],&p_2177->g_609[1][1][3],&p_2177->g_609[2][2][0]},{&p_2177->g_609[1][1][3],&p_2177->g_609[1][1][3],&p_2177->g_609[2][2][0]},{&p_2177->g_609[1][1][3],&p_2177->g_609[1][1][3],&p_2177->g_609[2][2][0]},{&p_2177->g_609[1][1][3],&p_2177->g_609[1][1][3],&p_2177->g_609[2][2][0]}};
        int32_t l_1474 = 0x2607A049L;
        uint16_t l_1549 = 1UL;
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_1379[i] = &l_1380[0][2][7];
        for (p_2177->g_27 = 0; (p_2177->g_27 != 32); p_2177->g_27 = safe_add_func_int8_t_s_s(p_2177->g_27, 1))
        { /* block id: 739 */
            union U0 **l_1318 = &p_2177->g_236;
            union U0 ***l_1317 = &l_1318;
            int32_t l_1323[2];
            uint16_t **l_1333 = (void*)0;
            uint32_t l_1378 = 0x28660DD8L;
            int16_t l_1402 = 0x6CB7L;
            int64_t *l_1414 = &p_2177->g_262.f2;
            int64_t *l_1415 = &p_2177->g_432;
            uint8_t *l_1418 = &p_2177->g_853[0];
            uint8_t *l_1419 = &l_1306;
            uint64_t **l_1420[9] = {&p_2177->g_1212[7][4][0],&p_2177->g_1212[7][4][0],&p_2177->g_1212[7][4][0],&p_2177->g_1212[7][4][0],&p_2177->g_1212[7][4][0],&p_2177->g_1212[7][4][0],&p_2177->g_1212[7][4][0],&p_2177->g_1212[7][4][0],&p_2177->g_1212[7][4][0]};
            int i;
            for (i = 0; i < 2; i++)
                l_1323[i] = 0x238B4A89L;
            for (p_2177->g_102 = 25; (p_2177->g_102 == (-15)); p_2177->g_102 = safe_sub_func_uint16_t_u_u(p_2177->g_102, 6))
            { /* block id: 742 */
                uint64_t *l_1334 = &p_2177->g_469[5];
                union U0 *l_1357 = &p_2177->g_892;
                int32_t l_1365[5][9][5] = {{{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)}},{{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)}},{{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)}},{{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)}},{{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)},{0x2A711805L,0L,0x299523ABL,0x4A491E8EL,(-1L)}}};
                int32_t l_1399[7][1] = {{1L},{1L},{1L},{1L},{1L},{1L},{1L}};
                int i, j, k;
                (1 + 1);
            }
            (**p_2177->g_156) |= (safe_mod_func_int8_t_s_s(((p_2177->g_1410 = l_1408[6]) != (((*l_1392) , ((((((((p_3 , &p_2177->g_1264) == (void*)0) >= ((safe_add_func_int64_t_s_s(((*l_1415) &= (*l_1293)), ((p_2177->g_1417 = l_1416) == (void*)0))) >= ((*l_1419) = ((*l_1418) = (18446744073709551613UL < l_1378))))) , p_3) < 0x0E0B456AEDB19A02L) == p_3) , l_1420[4]) == (void*)0)) , l_1333)), 6UL));
            if ((****l_1416))
                continue;
        }
        (*p_2177->g_37) = (****l_1416);
        for (p_2177->g_103 = 0; (p_2177->g_103 == 47); ++p_2177->g_103)
        { /* block id: 786 */
            uint64_t l_1429 = 0x1353781E6B478CDBL;
            int64_t *l_1430[3][5] = {{(void*)0,(void*)0,&p_2177->g_169,&p_2177->g_892.f2,(void*)0},{(void*)0,(void*)0,&p_2177->g_169,&p_2177->g_892.f2,(void*)0},{(void*)0,(void*)0,&p_2177->g_169,&p_2177->g_892.f2,(void*)0}};
            int32_t l_1431 = 0x50B2B536L;
            int16_t l_1438 = 4L;
            int32_t l_1439 = 0x51AB262EL;
            int32_t l_1440 = 7L;
            int32_t l_1441 = (-1L);
            int32_t l_1442 = (-1L);
            int32_t l_1443 = 0x2EADD054L;
            int32_t l_1444 = 0x675401B8L;
            int32_t l_1445 = 1L;
            int32_t l_1446 = (-1L);
            int32_t l_1447 = 0x5F4AA91DL;
            int32_t l_1448 = (-4L);
            int32_t l_1449 = 0x207270EBL;
            uint32_t ***l_1472[4] = {&p_2177->g_609[1][1][3],&p_2177->g_609[1][1][3],&p_2177->g_609[1][1][3],&p_2177->g_609[1][1][3]};
            uint16_t ***l_1536 = &l_1408[1];
            uint16_t ***l_1538 = &l_1380[0][2][3];
            int32_t *l_1601 = &p_2177->g_262.f4;
            int32_t *l_1602 = &l_1447;
            int32_t *l_1603 = &p_2177->g_1014.f4;
            int32_t *l_1604 = &p_2177->g_241;
            int32_t *l_1605 = (void*)0;
            int32_t *l_1606 = (void*)0;
            int32_t *l_1607 = (void*)0;
            int32_t *l_1608[10] = {(void*)0,&l_1448,(void*)0,(void*)0,&l_1448,(void*)0,(void*)0,&l_1448,(void*)0,(void*)0};
            uint8_t *l_1632[5][9] = {{&p_2177->g_1264,(void*)0,&l_1306,&l_1432,&l_1306,(void*)0,&p_2177->g_1264,&p_2177->g_853[8],(void*)0},{&p_2177->g_1264,(void*)0,&l_1306,&l_1432,&l_1306,(void*)0,&p_2177->g_1264,&p_2177->g_853[8],(void*)0},{&p_2177->g_1264,(void*)0,&l_1306,&l_1432,&l_1306,(void*)0,&p_2177->g_1264,&p_2177->g_853[8],(void*)0},{&p_2177->g_1264,(void*)0,&l_1306,&l_1432,&l_1306,(void*)0,&p_2177->g_1264,&p_2177->g_853[8],(void*)0},{&p_2177->g_1264,(void*)0,&l_1306,&l_1432,&l_1306,(void*)0,&p_2177->g_1264,&p_2177->g_853[8],(void*)0}};
            int i, j;
            (1 + 1);
        }
    }
    for (p_2177->g_859 = 0; (p_2177->g_859 <= 3); p_2177->g_859 += 1)
    { /* block id: 868 */
        int32_t *l_1633 = &l_1401;
        return (*p_2177->g_156);
    }
    (*l_1558) = (safe_unary_minus_func_uint32_t_u(p_2177->g_364[4][0][4]));
    return (*p_2177->g_794);
}


/* ------------------------------------------ */
/* 
 * reads : p_2177->g_160 p_2177->g_156 p_2177->g_550 p_2177->g_794 p_2177->g_35 p_2177->g_37 p_2177->g_155 p_2177->g_1234
 * writes: p_2177->g_37 p_2177->g_550 p_2177->g_36
 */
int32_t * func_6(int32_t * p_7, int32_t * p_8, int32_t * p_9, struct S1 * p_2177)
{ /* block id: 712 */
    int32_t *l_1268 = &p_2177->g_1234;
    (**p_2177->g_160) = l_1268;
    for (p_2177->g_550 = 16; (p_2177->g_550 < 55); p_2177->g_550++)
    { /* block id: 716 */
        int32_t *l_1271 = (void*)0;
        if ((*p_8))
            break;
        l_1271 = func_32(l_1268, (*p_2177->g_794), p_2177);
        return (*p_2177->g_156);
    }
    return (**p_2177->g_155);
}


/* ------------------------------------------ */
/* 
 * reads : p_2177->g_1264
 * writes: p_2177->g_1264
 */
int32_t * func_10(int32_t * p_11, int64_t  p_12, int32_t * p_13, uint8_t  p_14, int64_t  p_15, struct S1 * p_2177)
{ /* block id: 709 */
    int32_t *l_1257 = &p_2177->g_1014.f4;
    int32_t *l_1258 = &p_2177->g_36;
    int32_t *l_1259 = &p_2177->g_262.f4;
    int32_t *l_1260 = (void*)0;
    int32_t *l_1261 = (void*)0;
    int32_t *l_1262 = &p_2177->g_64;
    int32_t *l_1263[6];
    int i;
    for (i = 0; i < 6; i++)
        l_1263[i] = (void*)0;
    ++p_2177->g_1264;
    return l_1263[2];
}


/* ------------------------------------------ */
/* 
 * reads : p_2177->g_721 p_2177->g_36 p_2177->g_767 p_2177->g_566 p_2177->g_156 p_2177->g_407 p_2177->g_205 p_2177->g_722 p_2177->g_37 p_2177->g_35 p_2177->g_859 p_2177->g_892 p_2177->g_103 p_2177->g_240 p_2177->g_99 p_2177->g_429 p_2177->g_647 p_2177->g_84 p_2177->g_160 p_2177->g_79 p_2177->g_155 p_2177->g_794 p_2177->g_27 p_2177->g_469 p_2177->g_188 p_2177->g_430 p_2177->g_169 p_2177->g_434 p_2177->g_317.f0 p_2177->g_242 p_2177->g_262.f0 p_2177->g_998 p_2177->g_1014 p_2177->g_101 p_2177->g_853 p_2177->g_102 p_2177->g_241 p_2177->g_201.f0 p_2177->g_892.f3 p_2177->g_121 p_2177->g_123 p_2177->g_1167 p_2177->g_69 p_2177->g_137 p_2177->g_1211 p_2177->g_1213
 * writes: p_2177->g_36 p_2177->g_767 p_2177->g_566 p_2177->g_37 p_2177->g_859 p_2177->g_240 p_2177->g_99 p_2177->g_205 p_2177->g_169 p_2177->g_862.f4 p_2177->g_27 p_2177->g_892.f2 p_2177->g_991 p_2177->g_647 p_2177->g_103 p_2177->g_241 p_2177->g_432 p_2177->g_298 p_2177->g_998 p_2177->g_892.f3 p_2177->g_1014.f3 p_2177->g_236 p_2177->g_1167 p_2177->g_69 p_2177->g_123 p_2177->g_1211
 */
int32_t * func_17(uint32_t  p_18, int32_t * p_19, int32_t  p_20, struct S1 * p_2177)
{ /* block id: 366 */
    uint16_t l_720 = 0x66E9L;
    int16_t **l_725[1][8][3] = {{{&p_2177->g_722[0][0],&p_2177->g_722[2][4],&p_2177->g_722[0][0]},{&p_2177->g_722[0][0],&p_2177->g_722[2][4],&p_2177->g_722[0][0]},{&p_2177->g_722[0][0],&p_2177->g_722[2][4],&p_2177->g_722[0][0]},{&p_2177->g_722[0][0],&p_2177->g_722[2][4],&p_2177->g_722[0][0]},{&p_2177->g_722[0][0],&p_2177->g_722[2][4],&p_2177->g_722[0][0]},{&p_2177->g_722[0][0],&p_2177->g_722[2][4],&p_2177->g_722[0][0]},{&p_2177->g_722[0][0],&p_2177->g_722[2][4],&p_2177->g_722[0][0]},{&p_2177->g_722[0][0],&p_2177->g_722[2][4],&p_2177->g_722[0][0]}}};
    int32_t l_756 = 0x3FE3F7E9L;
    int32_t l_760 = 0x0C8C2C19L;
    int32_t l_763 = 0x43E5EADAL;
    int32_t l_766 = 0L;
    int32_t *l_797[9] = {&l_756,&l_756,&l_756,&l_756,&l_756,&l_756,&l_756,&l_756,&l_756};
    uint8_t l_878 = 1UL;
    uint32_t *l_885 = &p_2177->g_137[4][0][6];
    int16_t l_902 = 0x3899L;
    uint8_t l_934 = 1UL;
    int64_t ***l_942 = (void*)0;
    uint16_t *l_1052 = &l_720;
    union U0 **l_1077[2];
    int32_t l_1078 = (-10L);
    int16_t l_1079 = 0x64D3L;
    int32_t l_1080 = 0x75E2CD9EL;
    uint32_t ***l_1086 = &p_2177->g_609[1][1][3];
    int64_t **l_1110 = (void*)0;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_1077[i] = &p_2177->g_236;
    if (((safe_add_func_int64_t_s_s(0x622992B049D8A164L, (0UL <= l_720))) | (p_2177->g_721 == ((safe_add_func_int8_t_s_s(0x19L, p_18)) , l_725[0][6][2]))))
    { /* block id: 367 */
        int8_t l_761[2];
        int32_t l_762 = (-2L);
        int32_t l_764 = 0x0B40C33FL;
        int32_t l_765 = 4L;
        int64_t *l_771[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int64_t **l_770 = &l_771[0];
        int32_t l_793 = 1L;
        int32_t ***l_799 = &p_2177->g_156;
        uint16_t *l_815 = &l_720;
        uint16_t **l_814 = &l_815;
        uint16_t l_832 = 65535UL;
        int32_t l_854 = 3L;
        int32_t l_871 = 0x32185AAAL;
        uint32_t **l_879[5][1][4] = {{{&p_2177->g_610[0],&p_2177->g_610[1],&p_2177->g_610[4],&p_2177->g_610[1]}},{{&p_2177->g_610[0],&p_2177->g_610[1],&p_2177->g_610[4],&p_2177->g_610[1]}},{{&p_2177->g_610[0],&p_2177->g_610[1],&p_2177->g_610[4],&p_2177->g_610[1]}},{{&p_2177->g_610[0],&p_2177->g_610[1],&p_2177->g_610[4],&p_2177->g_610[1]}},{{&p_2177->g_610[0],&p_2177->g_610[1],&p_2177->g_610[4],&p_2177->g_610[1]}}};
        int16_t *l_880 = (void*)0;
        int32_t l_897 = 0x77DB7C72L;
        int64_t l_903[6];
        uint64_t l_935 = 18446744073709551615UL;
        int32_t **l_1013 = &l_797[8];
        uint32_t *l_1047 = &p_2177->g_103;
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_761[i] = 0x46L;
        for (i = 0; i < 6; i++)
            l_903[i] = (-6L);
        for (p_2177->g_36 = 3; (p_2177->g_36 >= 0); p_2177->g_36 -= 1)
        { /* block id: 370 */
            int32_t *l_757 = (void*)0;
            int32_t *l_758 = (void*)0;
            int32_t *l_759[8] = {&p_2177->g_69,&p_2177->g_69,&p_2177->g_69,&p_2177->g_69,&p_2177->g_69,&p_2177->g_69,&p_2177->g_69,&p_2177->g_69};
            int64_t ***l_772 = &l_770;
            int i;
            if ((atomic_inc(&p_2177->l_atomic_input[3]) == 4))
            { /* block id: 372 */
                uint16_t l_726 = 4UL;
                uint16_t l_727 = 0UL;
                uint8_t l_728 = 247UL;
                int32_t l_730 = 0x1B88C9AFL;
                int32_t *l_729 = &l_730;
                int32_t *l_731[5][4][5] = {{{&l_730,&l_730,&l_730,&l_730,&l_730},{&l_730,&l_730,&l_730,&l_730,&l_730},{&l_730,&l_730,&l_730,&l_730,&l_730},{&l_730,&l_730,&l_730,&l_730,&l_730}},{{&l_730,&l_730,&l_730,&l_730,&l_730},{&l_730,&l_730,&l_730,&l_730,&l_730},{&l_730,&l_730,&l_730,&l_730,&l_730},{&l_730,&l_730,&l_730,&l_730,&l_730}},{{&l_730,&l_730,&l_730,&l_730,&l_730},{&l_730,&l_730,&l_730,&l_730,&l_730},{&l_730,&l_730,&l_730,&l_730,&l_730},{&l_730,&l_730,&l_730,&l_730,&l_730}},{{&l_730,&l_730,&l_730,&l_730,&l_730},{&l_730,&l_730,&l_730,&l_730,&l_730},{&l_730,&l_730,&l_730,&l_730,&l_730},{&l_730,&l_730,&l_730,&l_730,&l_730}},{{&l_730,&l_730,&l_730,&l_730,&l_730},{&l_730,&l_730,&l_730,&l_730,&l_730},{&l_730,&l_730,&l_730,&l_730,&l_730},{&l_730,&l_730,&l_730,&l_730,&l_730}}};
                union U0 *l_752 = (void*)0;
                union U0 **l_751[3][4][7] = {{{&l_752,&l_752,&l_752,&l_752,&l_752,&l_752,&l_752},{&l_752,&l_752,&l_752,&l_752,&l_752,&l_752,&l_752},{&l_752,&l_752,&l_752,&l_752,&l_752,&l_752,&l_752},{&l_752,&l_752,&l_752,&l_752,&l_752,&l_752,&l_752}},{{&l_752,&l_752,&l_752,&l_752,&l_752,&l_752,&l_752},{&l_752,&l_752,&l_752,&l_752,&l_752,&l_752,&l_752},{&l_752,&l_752,&l_752,&l_752,&l_752,&l_752,&l_752},{&l_752,&l_752,&l_752,&l_752,&l_752,&l_752,&l_752}},{{&l_752,&l_752,&l_752,&l_752,&l_752,&l_752,&l_752},{&l_752,&l_752,&l_752,&l_752,&l_752,&l_752,&l_752},{&l_752,&l_752,&l_752,&l_752,&l_752,&l_752,&l_752},{&l_752,&l_752,&l_752,&l_752,&l_752,&l_752,&l_752}}};
                union U0 **l_753[10] = {&l_752,&l_752,&l_752,&l_752,&l_752,&l_752,&l_752,&l_752,&l_752,&l_752};
                int32_t *l_754 = &l_730;
                int32_t *l_755 = &l_730;
                int i, j, k;
                l_731[3][0][1] = ((l_726 , l_727) , (l_728 , l_729));
                for (l_730 = 0; (l_730 <= 3); l_730 += 1)
                { /* block id: 376 */
                    int32_t l_732 = 0x4CC8FD4DL;
                    int8_t l_735 = 1L;
                    uint32_t l_736 = 1UL;
                    for (l_732 = 0; (l_732 >= 0); l_732 -= 1)
                    { /* block id: 379 */
                        int32_t l_734 = 0x6890B81AL;
                        int32_t *l_733 = &l_734;
                        l_731[3][0][1] = l_733;
                    }
                    l_732 &= l_735;
                    if (l_736)
                    { /* block id: 383 */
                        uint8_t l_737 = 0xF0L;
                        uint8_t l_738 = 0xD5L;
                        int64_t l_739[10] = {0x2EAAC9F93FE468AAL,0x2EAAC9F93FE468AAL,0x2EAAC9F93FE468AAL,0x2EAAC9F93FE468AAL,0x2EAAC9F93FE468AAL,0x2EAAC9F93FE468AAL,0x2EAAC9F93FE468AAL,0x2EAAC9F93FE468AAL,0x2EAAC9F93FE468AAL,0x2EAAC9F93FE468AAL};
                        uint16_t l_740 = 0x57CFL;
                        int8_t l_741 = 0x1FL;
                        uint8_t l_742[4][9][2] = {{{0x41L,253UL},{0x41L,253UL},{0x41L,253UL},{0x41L,253UL},{0x41L,253UL},{0x41L,253UL},{0x41L,253UL},{0x41L,253UL},{0x41L,253UL}},{{0x41L,253UL},{0x41L,253UL},{0x41L,253UL},{0x41L,253UL},{0x41L,253UL},{0x41L,253UL},{0x41L,253UL},{0x41L,253UL},{0x41L,253UL}},{{0x41L,253UL},{0x41L,253UL},{0x41L,253UL},{0x41L,253UL},{0x41L,253UL},{0x41L,253UL},{0x41L,253UL},{0x41L,253UL},{0x41L,253UL}},{{0x41L,253UL},{0x41L,253UL},{0x41L,253UL},{0x41L,253UL},{0x41L,253UL},{0x41L,253UL},{0x41L,253UL},{0x41L,253UL},{0x41L,253UL}}};
                        int i, j, k;
                        l_738 = l_737;
                        l_740 = l_739[7];
                        l_742[3][5][0] = l_741;
                    }
                    else
                    { /* block id: 387 */
                        uint8_t l_743 = 0xDEL;
                        uint8_t l_744 = 250UL;
                        int32_t *l_745 = (void*)0;
                        int16_t l_746 = 0L;
                        uint64_t l_747 = 0xF8226D5B108FF915L;
                        int16_t l_750 = 1L;
                        l_744 = l_743;
                        l_731[3][0][1] = l_745;
                        l_747--;
                        l_750 = 0L;
                    }
                    for (l_736 = 0; (l_736 <= 0); l_736 += 1)
                    { /* block id: 395 */
                        l_729 = (void*)0;
                    }
                }
                l_753[4] = (l_751[1][1][5] = (void*)0);
                l_755 = l_754;
                unsigned int result = 0;
                result += l_726;
                result += l_727;
                result += l_728;
                result += l_730;
                atomic_add(&p_2177->l_special_values[3], result);
            }
            else
            { /* block id: 402 */
                (1 + 1);
            }
            p_2177->g_767--;
            l_765 = (((*l_772) = l_770) != (p_2177->g_566[0][0] = p_2177->g_566[0][0]));
        }
        (*p_2177->g_156) = p_19;
        (*p_2177->g_35) = (((safe_lshift_func_int16_t_s_u((l_878 = (safe_sub_func_uint16_t_u_u((p_2177->g_407[0][4][2] < (safe_rshift_func_uint16_t_u_s(((void*)0 != p_2177->g_566[0][0]), 7))), p_2177->g_205))), 6)) , (*p_2177->g_721)) == (l_880 = ((+(0x18L & ((***l_799) , (l_879[3][0][1] != l_879[3][0][1])))) , (*p_2177->g_721))));
        for (p_2177->g_859 = 9; (p_2177->g_859 <= 16); ++p_2177->g_859)
        { /* block id: 493 */
            uint64_t l_904 = 0xE79E0A7DAEE27BDCL;
            uint64_t *l_905 = (void*)0;
            uint64_t *l_906 = &p_2177->g_240;
            uint64_t *l_907 = &p_2177->g_99;
            uint32_t *l_908 = &p_2177->g_137[9][0][3];
            int32_t l_909 = 0x27AE8AC6L;
            int32_t l_910 = 0x797C5EE2L;
            uint8_t l_933[1][5][7] = {{{0UL,4UL,0x6CL,4UL,0UL,0UL,4UL},{0UL,4UL,0x6CL,4UL,0UL,0UL,4UL},{0UL,4UL,0x6CL,4UL,0UL,0UL,4UL},{0UL,4UL,0x6CL,4UL,0UL,0UL,4UL},{0UL,4UL,0x6CL,4UL,0UL,0UL,4UL}}};
            uint32_t l_953 = 4294967293UL;
            int32_t l_995 = (-9L);
            union U0 **l_1004 = &p_2177->g_236;
            int8_t *l_1015 = &l_761[1];
            uint16_t ***l_1050[9][7][4] = {{{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814}},{{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814}},{{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814}},{{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814}},{{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814}},{{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814}},{{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814}},{{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814}},{{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814},{&l_814,&l_814,&l_814,&l_814}}};
            int i, j, k;
            (*p_2177->g_156) = (void*)0;
            l_910 ^= (safe_div_func_int64_t_s_s((l_909 = (((~((*p_19) && (((l_885 = l_797[6]) == (l_908 = func_70(((safe_mod_func_int8_t_s_s(((&p_2177->g_469[1] == l_771[0]) < ((*l_815) = (safe_sub_func_uint64_t_u_u(((safe_sub_func_uint64_t_u_u((p_18 , ((*l_907) ^= (p_2177->g_892 , ((*l_906) ^= (safe_lshift_func_uint8_t_u_s((((safe_lshift_func_int16_t_s_s(l_897, (safe_mod_func_int16_t_s_s((((*p_2177->g_35) > ((safe_rshift_func_uint8_t_u_s(p_18, l_902)) | (*p_19))) & l_903[2]), l_904)))) >= 0x05E3446EL) , p_2177->g_103), 0)))))), l_904)) < GROUP_DIVERGE(0, 1)), 0x12CB6A089FD7E5B1L)))), p_2177->g_429[0][3])) , p_18), p_18, p_2177))) && p_2177->g_647[6][3][2]))) && 0x87CA596B9A9E653DL) <= l_762)), (-5L)));
            if ((p_20 <= ((p_2177->g_84 , (safe_mul_func_int16_t_s_s((l_910 = (safe_rshift_func_uint16_t_u_s(l_910, (l_935 = (safe_mod_func_int64_t_s_s(0L, (safe_sub_func_uint16_t_u_u((safe_add_func_int64_t_s_s(((-1L) <= p_20), (safe_add_func_int32_t_s_s(((((*l_815) ^= p_18) == GROUP_DIVERGE(0, 1)) < ((safe_sub_func_int16_t_s_s((l_909 == (safe_sub_func_uint64_t_u_u((safe_add_func_int32_t_s_s((((safe_mul_func_int16_t_s_s((((((*p_2177->g_35) = (safe_rshift_func_uint16_t_u_s((p_20 & p_2177->g_859), 5))) >= l_933[0][1][0]) , 0UL) > l_934), p_20)) & 6UL) | p_2177->g_103), 0x3C14BEDAL)), p_20))), p_18)) > 0xA6CCAC9CL)), l_904)))), 1UL)))))))), l_933[0][1][0]))) == 0x2147F40DL)))
            { /* block id: 506 */
                int32_t *l_951 = (void*)0;
                int32_t *l_954 = &l_909;
                for (p_2177->g_205 = 8; (p_2177->g_205 >= 2); p_2177->g_205 -= 1)
                { /* block id: 509 */
                    uint32_t l_936 = 0xD65E6112L;
                    if (l_936)
                        break;
                    for (p_2177->g_169 = 8; (p_2177->g_169 >= 0); p_2177->g_169 -= 1)
                    { /* block id: 513 */
                        (*p_2177->g_35) &= (*p_19);
                    }
                }
                l_797[8] = (**p_2177->g_160);
                for (l_871 = 0; (l_871 >= (-24)); --l_871)
                { /* block id: 520 */
                    int64_t ****l_939 = (void*)0;
                    int64_t ***l_941 = (void*)0;
                    int64_t ****l_940 = &l_941;
                    int32_t l_952 = 0L;
                    l_953 = ((((*l_940) = &l_770) == l_942) , (safe_add_func_int16_t_s_s((3L ^ ((((p_2177->g_79[1] == (l_909 = p_20)) > ((*l_907) = ((*l_906) = (((*p_2177->g_156) = (**p_2177->g_155)) == ((safe_div_func_int32_t_s_s((safe_lshift_func_int8_t_s_s(((-1L) == (p_20 > ((*l_815) = p_20))), l_904)), (*p_19))) , l_951))))) , l_952) == 0x757012527A2B41DCL)), p_2177->g_205)));
                    return (**p_2177->g_160);
                }
            }
            else
            { /* block id: 530 */
                uint64_t *l_983 = &p_2177->g_469[1];
                int32_t l_984 = (-6L);
                int32_t l_985 = 0x72CA0A46L;
                int32_t l_986 = 1L;
                int32_t l_987 = 0L;
                union U0 **l_1001 = &p_2177->g_236;
                (*p_2177->g_35) |= (-1L);
                for (p_2177->g_862.f4 = 0; (p_2177->g_862.f4 > (-1)); --p_2177->g_862.f4)
                { /* block id: 534 */
                    int8_t l_973 = 0x70L;
                    uint8_t *l_978 = &p_2177->g_27;
                    uint64_t *l_982 = &p_2177->g_469[5];
                    uint64_t **l_981 = &l_982;
                    int32_t *l_992 = &l_793;
                    int32_t l_994 = (-1L);
                    int32_t l_996 = 0x34EADF9BL;
                    (**l_799) = (*p_2177->g_794);
                    (*p_2177->g_35) = (!((((safe_mod_func_int32_t_s_s((safe_lshift_func_uint16_t_u_s((safe_div_func_uint8_t_u_u(((((safe_div_func_int64_t_s_s(((-10L) != ((safe_sub_func_int32_t_s_s(((((safe_sub_func_int64_t_s_s((safe_mul_func_uint16_t_u_u((4UL >= (((safe_add_func_uint8_t_u_u(p_18, GROUP_DIVERGE(2, 1))) && (l_985 &= (l_984 ^= (((*l_907) = (((l_973 || (1UL & ((safe_div_func_uint8_t_u_u(((safe_rshift_func_uint8_t_u_s(((*l_978)++), 4)) ^ (((&p_2177->g_469[5] == (l_983 = ((*l_981) = l_771[0]))) >= p_2177->g_469[5]) , 0x3BL)), (***l_799))) <= 8UL))) && FAKE_DIVERGE(p_2177->global_2_offset, get_global_id(2), 10)) != l_973)) , l_973)))) > p_20)), 0x39B0L)), (***l_799))) ^ p_18) | 0x56L) > (***l_799)), (***p_2177->g_155))) >= l_973)), p_20)) , 1UL) <= (*p_19)) , p_18), 255UL)), p_18)), p_20)) >= (*p_19)) & l_986) >= (***l_799)));
                    for (p_2177->g_892.f2 = 0; (p_2177->g_892.f2 <= 2); p_2177->g_892.f2 += 1)
                    { /* block id: 545 */
                        int32_t *l_990 = &p_2177->g_991;
                        int32_t l_993 = 0x3414C339L;
                        int32_t l_997 = 1L;
                        union U0 ***l_1002 = (void*)0;
                        (**l_799) = func_22(l_987, ((*l_990) = (safe_div_func_uint64_t_u_u(((((void*)0 == (*l_770)) || (***l_799)) , ((p_2177->g_188 >= (4294967289UL <= (p_2177->g_430 | p_2177->g_169))) >= (((*l_981) = (*l_981)) == (void*)0))), (-1L)))), p_2177);
                        l_992 = l_990;
                        p_2177->g_998++;
                        l_1004 = l_1001;
                    }
                }
            }
            if ((safe_rshift_func_uint8_t_u_u((safe_rshift_func_int16_t_s_u((l_910 = (((((((safe_mul_func_uint8_t_u_u((safe_lshift_func_int8_t_s_u(((*l_1015) = (l_1013 == (p_2177->g_1014 , (*p_2177->g_160)))), ((p_2177->g_101 != ((*l_906)--)) & 0x22D7L))), ((((safe_mod_func_int8_t_s_s((safe_mod_func_int64_t_s_s((safe_lshift_func_int16_t_s_u(p_18, (!p_2177->g_853[8]))), (safe_unary_minus_func_int64_t_s((safe_mod_func_int16_t_s_s((p_20 ^ p_18), p_18)))))), 255UL)) >= p_18) <= 0UL) <= 65531UL))) | l_904) > p_20) , (void*)0) != (*p_2177->g_155)) && p_20) & p_20)), 12)), p_2177->g_99)))
            { /* block id: 558 */
                uint8_t l_1027[2];
                int i;
                for (i = 0; i < 2; i++)
                    l_1027[i] = 0x7EL;
                ++l_1027[1];
            }
            else
            { /* block id: 560 */
                uint64_t l_1030 = 1UL;
                int32_t l_1051 = 1L;
                l_1030--;
                (*p_2177->g_35) = ((((safe_mod_func_int16_t_s_s((l_910 && (safe_add_func_uint64_t_u_u((18446744073709551611UL ^ ((safe_sub_func_uint64_t_u_u(p_2177->g_407[0][4][2], ((safe_sub_func_uint8_t_u_u((l_1030 | ((((l_1047 = &p_18) != ((safe_rshift_func_uint8_t_u_s((l_1050[6][5][2] != &l_814), 4)) , (void*)0)) & (&l_1015 == &p_2177->g_131[5][0])) , p_20)), p_20)) || 0x71A67EEEL))) <= p_2177->g_102)), p_18))), 4UL)) < 0UL) , (*p_19)) > p_2177->g_103);
                l_1051 = (*p_19);
            }
        }
    }
    else
    { /* block id: 567 */
        (*p_2177->g_35) &= 0x4238F231L;
    }
    l_1080 |= (p_2177->g_862.f4 = ((*p_2177->g_35) = (((*l_1052) |= ((p_2177->g_566[0][1] != p_2177->g_566[0][0]) < (~p_2177->g_469[3]))) | ((((((safe_sub_func_uint32_t_u_u((safe_sub_func_int32_t_s_s((safe_add_func_int16_t_s_s(p_18, ((safe_sub_func_uint32_t_u_u(1UL, (safe_div_func_uint32_t_u_u((safe_rshift_func_uint8_t_u_s(p_18, ((0UL > (((safe_mul_func_uint16_t_u_u((((safe_sub_func_uint64_t_u_u((safe_mod_func_int64_t_s_s(((safe_mul_func_uint16_t_u_u((p_20 & (((safe_sub_func_uint8_t_u_u(((safe_mul_func_int8_t_s_s(((0x06FE823EL || FAKE_DIVERGE(p_2177->local_1_offset, get_local_id(1), 10)) ^ p_2177->g_241), 0x3FL)) | p_2177->g_201.f0), 0x40L)) || 0x6E05L) == 6L)), p_20)) != p_20), p_2177->g_853[8])), p_20)) , l_1077[0]) != l_1077[0]), (-1L))) & 3UL) < FAKE_DIVERGE(p_2177->group_2_offset, get_group_id(2), 10))) > 0x3414A0C04599B160L))), 0x7E67BBCDL)))) | l_1078))), p_2177->g_853[8])), 6UL)) == l_1079) && 1UL) <= p_18) < p_2177->g_429[2][6]) , 0x5412L))));
    if ((*p_19))
    { /* block id: 574 */
        uint16_t ***l_1085 = (void*)0;
        uint32_t l_1093 = 0xD351D6C2L;
        int64_t ****l_1116[1][1];
        int32_t *l_1146 = &p_2177->g_69;
        int32_t l_1163 = 0x15E16051L;
        int32_t l_1164[8] = {0x685E4E1DL,0x685E4E1DL,0x685E4E1DL,0x685E4E1DL,0x685E4E1DL,0x685E4E1DL,0x685E4E1DL,0x685E4E1DL};
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 1; j++)
                l_1116[i][j] = &l_942;
        }
        for (p_2177->g_892.f3 = 0; (p_2177->g_892.f3 <= 2); p_2177->g_892.f3 += 1)
        { /* block id: 577 */
            uint32_t ****l_1087 = &l_1086;
            int32_t l_1092 = (-1L);
            l_1093 = ((((safe_mod_func_uint16_t_u_u((safe_add_func_int32_t_s_s(((*p_2177->g_35) = 0x7DFD486CL), (((void*)0 != l_1085) == (((*l_1087) = l_1086) != &p_2177->g_609[1][1][3])))), p_20)) , p_20) , (((0x7E3CL == (safe_rshift_func_int8_t_s_s((safe_rshift_func_uint8_t_u_s(p_2177->g_121[8][3], l_1092)), p_18))) <= p_18) >= (*p_2177->g_35))) < (*p_19));
            for (p_2177->g_99 = 0; (p_2177->g_99 <= 2); p_2177->g_99 += 1)
            { /* block id: 583 */
                if ((*p_19))
                    break;
                (**p_2177->g_794) = 0x64B65AE9L;
                return p_19;
            }
        }
        if ((*p_19))
        { /* block id: 589 */
            uint16_t l_1094 = 0x25ABL;
            int32_t l_1123 = 0x10789B94L;
            int64_t l_1144 = 0x4C9BDF8E3D6C31E9L;
            for (p_2177->g_169 = 0; (p_2177->g_169 >= 0); p_2177->g_169 -= 1)
            { /* block id: 592 */
                uint16_t l_1124 = 8UL;
                p_19 = p_19;
                ++l_1094;
                if ((*p_19))
                    break;
                for (p_2177->g_1014.f3 = 0; (p_2177->g_1014.f3 <= 0); p_2177->g_1014.f3 += 1)
                { /* block id: 598 */
                    uint64_t l_1115 = 8UL;
                    int64_t ****l_1117 = &l_942;
                    uint64_t *l_1118 = &p_2177->g_550;
                    (1 + 1);
                }
            }
            (*p_2177->g_35) = l_1093;
            (*p_2177->g_35) = ((safe_lshift_func_uint16_t_u_u((safe_mul_func_int16_t_s_s((p_20 <= (p_2177->g_469[6] && (0x883948CDL <= (safe_rshift_func_int8_t_s_s((safe_mod_func_uint64_t_u_u(p_2177->g_123, (GROUP_DIVERGE(2, 1) ^ FAKE_DIVERGE(p_2177->local_1_offset, get_local_id(1), 10)))), l_1094))))), (safe_sub_func_uint16_t_u_u(((*l_1052) = 0UL), (l_1093 >= ((FAKE_DIVERGE(p_2177->local_2_offset, get_local_id(2), 10) == ((safe_lshift_func_uint8_t_u_u((safe_lshift_func_int16_t_s_s(((safe_unary_minus_func_uint8_t_u(0x57L)) < (*p_19)), p_18)), l_1144)) <= 0x7E5AL)) , p_18)))))), l_1144)) ^ l_1093);
        }
        else
        { /* block id: 629 */
            int32_t *l_1145 = &l_766;
            union U0 *l_1159 = (void*)0;
            (*p_2177->g_156) = p_19;
            if ((atomic_inc(&p_2177->g_atomic_input[17 * get_linear_group_id() + 13]) == 0))
            { /* block id: 632 */
                uint64_t l_1147[6];
                uint8_t l_1148 = 2UL;
                int32_t l_1150 = (-8L);
                int32_t *l_1149 = &l_1150;
                int32_t *l_1151 = (void*)0;
                uint32_t l_1152 = 4294967295UL;
                uint16_t l_1153 = 0x82BBL;
                int32_t l_1154 = 0x5953B822L;
                uint16_t l_1155 = 6UL;
                uint32_t l_1156 = 4294967295UL;
                int32_t *l_1157 = &l_1150;
                int32_t *l_1158 = &l_1150;
                int i;
                for (i = 0; i < 6; i++)
                    l_1147[i] = 18446744073709551615UL;
                l_1148 = (l_1147[3] = 0x1B5C620BL);
                l_1151 = l_1149;
                l_1153 = l_1152;
                l_1158 = (l_1154 , (l_1157 = ((l_1156 = (l_1155 = 0UL)) , (void*)0)));
                unsigned int result = 0;
                int l_1147_i0;
                for (l_1147_i0 = 0; l_1147_i0 < 6; l_1147_i0++) {
                    result += l_1147[l_1147_i0];
                }
                result += l_1148;
                result += l_1150;
                result += l_1152;
                result += l_1153;
                result += l_1154;
                result += l_1155;
                result += l_1156;
                atomic_add(&p_2177->g_special_values[17 * get_linear_group_id() + 13], result);
            }
            else
            { /* block id: 641 */
                (1 + 1);
            }
            p_2177->g_236 = l_1159;
        }
        for (l_878 = 0; (l_878 >= 50); ++l_878)
        { /* block id: 648 */
            int8_t l_1162[5][2] = {{0x55L,0x55L},{0x55L,0x55L},{0x55L,0x55L},{0x55L,0x55L},{0x55L,0x55L}};
            int32_t l_1165 = (-2L);
            int32_t l_1166[1][8][4] = {{{0x42A34993L,8L,0x42A34993L,0x42A34993L},{0x42A34993L,8L,0x42A34993L,0x42A34993L},{0x42A34993L,8L,0x42A34993L,0x42A34993L},{0x42A34993L,8L,0x42A34993L,0x42A34993L},{0x42A34993L,8L,0x42A34993L,0x42A34993L},{0x42A34993L,8L,0x42A34993L,0x42A34993L},{0x42A34993L,8L,0x42A34993L,0x42A34993L},{0x42A34993L,8L,0x42A34993L,0x42A34993L}}};
            int16_t ***l_1198 = &l_725[0][6][2];
            int64_t *l_1201[1][4];
            int32_t l_1202 = 0x44C698DAL;
            int i, j, k;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 4; j++)
                    l_1201[i][j] = &p_2177->g_432;
            }
            p_2177->g_1167--;
            l_1202 ^= ((*l_1146) = (safe_add_func_int64_t_s_s(((safe_mod_func_int64_t_s_s(((!((safe_mod_func_uint32_t_u_u((safe_add_func_uint32_t_u_u(((safe_mul_func_int16_t_s_s(p_20, (safe_sub_func_uint16_t_u_u((safe_mod_func_int8_t_s_s((safe_div_func_int16_t_s_s(0x2073L, ((safe_sub_func_uint64_t_u_u((safe_mod_func_int32_t_s_s((l_1165 ^= (safe_mul_func_int8_t_s_s((safe_mul_func_int8_t_s_s((safe_mod_func_uint8_t_u_u((safe_div_func_int8_t_s_s(((void*)0 != &l_1162[3][0]), (((l_1198 != &p_2177->g_721) || ((*p_2177->g_35) = (((p_20 & (safe_mul_func_int16_t_s_s((((void*)0 == l_1201[0][1]) , (-1L)), p_20))) ^ 0x6157AF4A3AED5F16L) <= (*p_19)))) & (*p_19)))), l_1162[3][0])), l_1166[0][1][1])), (*l_1146)))), FAKE_DIVERGE(p_2177->group_2_offset, get_group_id(2), 10))), 0x0B06FAB6DD114D4BL)) | p_18))), l_1162[3][0])), (*l_1146))))) > (*l_1146)), p_18)), (*p_19))) | 0x46BF4569L)) < p_2177->g_137[8][0][2]), l_1166[0][1][1])) & 0L), p_20)));
        }
    }
    else
    { /* block id: 655 */
        uint32_t l_1207 = 0x489E6858L;
        int32_t l_1228[5] = {0L,0L,0L,0L,0L};
        uint64_t l_1253 = 18446744073709551606UL;
        int i;
        for (p_2177->g_123 = 11; (p_2177->g_123 <= 48); p_2177->g_123 = safe_add_func_uint32_t_u_u(p_2177->g_123, 7))
        { /* block id: 658 */
            if ((**p_2177->g_794))
                break;
            return p_19;
        }
        for (p_20 = 0; (p_20 >= (-8)); p_20 = safe_sub_func_uint64_t_u_u(p_20, 4))
        { /* block id: 664 */
            uint32_t l_1210 = 4294967292UL;
            l_1207--;
            if (l_1210)
                continue;
        }
        for (p_2177->g_859 = 0; (p_2177->g_859 <= 0); p_2177->g_859 += 1)
        { /* block id: 670 */
            uint16_t l_1214[2];
            int32_t l_1223 = 5L;
            int32_t l_1230 = 0x1E0F5216L;
            int32_t l_1235 = 0x2B24BE35L;
            uint16_t l_1255[4][1] = {{65535UL},{65535UL},{65535UL},{65535UL}};
            int i, j;
            for (i = 0; i < 2; i++)
                l_1214[i] = 0x1CD5L;
            (*p_2177->g_1213) = p_2177->g_1211[3][2][1];
            for (l_934 = 0; (l_934 <= 0); l_934 += 1)
            { /* block id: 674 */
                uint64_t *l_1221[6][1][6] = {{{&p_2177->g_469[0],&p_2177->g_469[0],&p_2177->g_469[0],&p_2177->g_469[0],&p_2177->g_469[0],&p_2177->g_469[0]}},{{&p_2177->g_469[0],&p_2177->g_469[0],&p_2177->g_469[0],&p_2177->g_469[0],&p_2177->g_469[0],&p_2177->g_469[0]}},{{&p_2177->g_469[0],&p_2177->g_469[0],&p_2177->g_469[0],&p_2177->g_469[0],&p_2177->g_469[0],&p_2177->g_469[0]}},{{&p_2177->g_469[0],&p_2177->g_469[0],&p_2177->g_469[0],&p_2177->g_469[0],&p_2177->g_469[0],&p_2177->g_469[0]}},{{&p_2177->g_469[0],&p_2177->g_469[0],&p_2177->g_469[0],&p_2177->g_469[0],&p_2177->g_469[0],&p_2177->g_469[0]}},{{&p_2177->g_469[0],&p_2177->g_469[0],&p_2177->g_469[0],&p_2177->g_469[0],&p_2177->g_469[0],&p_2177->g_469[0]}}};
                int32_t l_1224[8][9][2] = {{{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L}},{{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L}},{{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L}},{{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L}},{{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L}},{{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L}},{{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L}},{{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L},{0x67E5B021L,0x3E5ADFE4L}}};
                uint16_t l_1236 = 0xB4D2L;
                int i, j, k;
                (1 + 1);
            }
        }
    }
    return p_19;
}


/* ------------------------------------------ */
/* 
 * reads : p_2177->g_647 p_2177->g_434 p_2177->g_35 p_2177->g_241 p_2177->g_317.f0 p_2177->g_36 p_2177->g_242 p_2177->g_262.f0 p_2177->g_469 p_2177->g_160 p_2177->g_156
 * writes: p_2177->g_647 p_2177->g_103 p_2177->g_36 p_2177->g_241 p_2177->g_432 p_2177->g_298 p_2177->g_37
 */
int32_t * func_22(int32_t  p_23, int32_t  p_24, struct S1 * p_2177)
{ /* block id: 6 */
    uint16_t l_54 = 0x11E3L;
    int32_t **l_55 = &p_2177->g_35;
    int32_t l_388 = 0L;
    uint32_t l_398 = 4294967295UL;
    int32_t l_403 = 1L;
    int32_t l_425 = 0x44BC7899L;
    int32_t l_435 = 2L;
    uint8_t l_438 = 0xDDL;
    int8_t **l_467 = &p_2177->g_131[2][0];
    int16_t ***l_497 = (void*)0;
    int32_t ****l_502 = &p_2177->g_155;
    int32_t *****l_501[9] = {&l_502,&l_502,&l_502,&l_502,&l_502,&l_502,&l_502,&l_502,&l_502};
    uint64_t l_641 = 0x5A61027F3C70D02CL;
    uint32_t *l_660 = &p_2177->g_103;
    int16_t l_704 = 0x0082L;
    uint32_t l_706 = 0UL;
    int32_t *l_715 = &l_435;
    int i;
    for (p_23 = 0; (p_23 <= 22); p_23 = safe_add_func_int16_t_s_s(p_23, 1))
    { /* block id: 9 */
        uint32_t l_52 = 0xDC28BF2FL;
        uint32_t l_124 = 4294967295UL;
        int32_t l_387 = 0x08D911FEL;
        int32_t l_402 = 0x04F4C1FBL;
        int32_t l_405[1][10] = {{0x42B7FE28L,0x42B7FE28L,0x42B7FE28L,0x42B7FE28L,0x42B7FE28L,0x42B7FE28L,0x42B7FE28L,0x42B7FE28L,0x42B7FE28L,0x42B7FE28L}};
        int32_t l_419 = 0x610425D6L;
        uint64_t *l_492 = (void*)0;
        int16_t *l_500 = &p_2177->g_102;
        int16_t **l_499[3];
        int16_t ***l_498[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        uint32_t *l_606 = &p_2177->g_372;
        uint32_t **l_605 = &l_606;
        uint8_t l_623 = 0x73L;
        int i, j;
        for (i = 0; i < 3; i++)
            l_499[i] = &l_500;
        (1 + 1);
    }
    ++p_2177->g_647[6][3][2];
    (*p_2177->g_35) = (safe_lshift_func_uint8_t_u_u((p_2177->g_434 && (safe_sub_func_uint8_t_u_u((safe_div_func_uint8_t_u_u(3UL, p_24)), (((((*l_660) = p_24) != ((safe_mul_func_uint8_t_u_u((safe_mod_func_int16_t_s_s((l_467 != ((safe_add_func_uint64_t_u_u((safe_lshift_func_int8_t_s_s((safe_sub_func_int16_t_s_s((((p_23 | 0x64A4449563ECD250L) && 0x5FL) ^ (safe_div_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((safe_rshift_func_int8_t_s_u((&l_641 != &p_2177->g_407[0][6][4]), 6)), FAKE_DIVERGE(p_2177->global_1_offset, get_global_id(1), 10))), 0x39L))), 0x09BFL)), 3)), (-8L))) , l_467)), FAKE_DIVERGE(p_2177->group_2_offset, get_group_id(2), 10))), p_24)) == p_23)) < 0L) >= 0xC1L)))), 4));
    for (p_2177->g_241 = 26; (p_2177->g_241 == 16); p_2177->g_241--)
    { /* block id: 347 */
        uint64_t l_681 = 0x5EB42FD08842318EL;
        int64_t *l_682 = &p_2177->g_432;
        int32_t l_691 = 1L;
        int16_t l_705[8] = {0x7C9FL,0x5777L,0x7C9FL,0x7C9FL,0x5777L,0x7C9FL,0x7C9FL,0x5777L};
        uint8_t *l_707 = &l_438;
        int32_t l_708 = 3L;
        int32_t l_709[9][5][3] = {{{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL}},{{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL}},{{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL}},{{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL}},{{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL}},{{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL}},{{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL}},{{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL}},{{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL},{3L,1L,0x18D45ADDL}}};
        uint32_t l_712[6][8] = {{0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL}};
        int i, j, k;
        l_709[0][0][2] = ((((safe_rshift_func_int8_t_s_u(l_681, GROUP_DIVERGE(1, 1))) , ((*l_682) = 5L)) >= (((safe_rshift_func_uint16_t_u_u((l_708 |= (safe_rshift_func_int8_t_s_u(((safe_lshift_func_int8_t_s_u(p_23, (((FAKE_DIVERGE(p_2177->group_0_offset, get_group_id(0), 10) >= 9UL) & ((**l_55) ^= p_2177->g_317.f0)) , (safe_add_func_uint8_t_u_u(((*l_707) = ((l_691 |= p_24) >= (l_706 = (safe_add_func_int32_t_s_s(((*p_2177->g_35) = ((safe_sub_func_int64_t_s_s((((safe_rshift_func_uint16_t_u_u((safe_sub_func_int8_t_s_s(l_681, (safe_sub_func_uint32_t_u_u((safe_sub_func_uint16_t_u_u(p_23, (p_2177->g_242 , 0x5E3BL))), GROUP_DIVERGE(2, 1))))), l_704)) , l_705[6]) , l_705[6]), l_705[6])) == 0x44L)), p_2177->g_262.f0))))), l_681))))) && p_23), p_2177->g_469[5]))), FAKE_DIVERGE(p_2177->global_0_offset, get_global_id(0), 10))) != l_705[6]) != p_24)) == p_24);
        for (p_2177->g_298 = 7; (p_2177->g_298 >= 24); p_2177->g_298 = safe_add_func_int64_t_s_s(p_2177->g_298, 4))
        { /* block id: 358 */
            (**l_55) |= 0x1F9BA150L;
        }
        l_712[2][7]++;
        (**p_2177->g_160) = &l_691;
    }
    return (*l_55);
}


/* ------------------------------------------ */
/* 
 * reads : p_2177->g_36 p_2177->g_37
 * writes: p_2177->g_36
 */
int32_t * func_32(int32_t * p_33, int32_t * p_34, struct S1 * p_2177)
{ /* block id: 13 */
    for (p_2177->g_36 = 4; (p_2177->g_36 >= 0); p_2177->g_36 -= 1)
    { /* block id: 16 */
        return &p_2177->g_36;
    }
    return p_2177->g_37;
}


/* ------------------------------------------ */
/* 
 * reads : p_2177->g_36 p_2177->g_69
 * writes: p_2177->g_36 p_2177->g_131 p_2177->g_102 p_2177->g_37 p_2177->g_69
 */
int64_t  func_39(uint64_t  p_40, int32_t * p_41, struct S1 * p_2177)
{ /* block id: 85 */
    int8_t *l_130 = &p_2177->g_121[4][2];
    int32_t **l_140 = &p_2177->g_37;
    int32_t ***l_139 = &l_140;
    uint64_t l_258 = 0x986F86244AF00ECBL;
    int32_t l_286 = 0x123D58B1L;
    int32_t l_297 = 0x0590ADC0L;
    uint8_t l_304 = 0xA5L;
    union U0 **l_362 = &p_2177->g_236;
    uint16_t l_374[8][4] = {{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL}};
    int16_t *l_382 = &p_2177->g_205;
    int16_t **l_381[4][1][4] = {{{(void*)0,&l_382,&l_382,(void*)0}},{{(void*)0,&l_382,&l_382,(void*)0}},{{(void*)0,&l_382,&l_382,(void*)0}},{{(void*)0,&l_382,&l_382,(void*)0}}};
    int i, j, k;
    for (p_2177->g_36 = 0; (p_2177->g_36 != 6); p_2177->g_36 = safe_add_func_int64_t_s_s(p_2177->g_36, 3))
    { /* block id: 88 */
        uint32_t *l_136[10][10] = {{&p_2177->g_137[8][0][2],&p_2177->g_137[8][0][2],&p_2177->g_137[6][0][0],&p_2177->g_137[8][0][2],&p_2177->g_137[9][0][6],&p_2177->g_137[8][0][2],&p_2177->g_137[6][0][0],&p_2177->g_137[8][0][2],&p_2177->g_137[8][0][2],&p_2177->g_137[6][0][0]},{&p_2177->g_137[8][0][2],&p_2177->g_137[8][0][2],&p_2177->g_137[6][0][0],&p_2177->g_137[8][0][2],&p_2177->g_137[9][0][6],&p_2177->g_137[8][0][2],&p_2177->g_137[6][0][0],&p_2177->g_137[8][0][2],&p_2177->g_137[8][0][2],&p_2177->g_137[6][0][0]},{&p_2177->g_137[8][0][2],&p_2177->g_137[8][0][2],&p_2177->g_137[6][0][0],&p_2177->g_137[8][0][2],&p_2177->g_137[9][0][6],&p_2177->g_137[8][0][2],&p_2177->g_137[6][0][0],&p_2177->g_137[8][0][2],&p_2177->g_137[8][0][2],&p_2177->g_137[6][0][0]},{&p_2177->g_137[8][0][2],&p_2177->g_137[8][0][2],&p_2177->g_137[6][0][0],&p_2177->g_137[8][0][2],&p_2177->g_137[9][0][6],&p_2177->g_137[8][0][2],&p_2177->g_137[6][0][0],&p_2177->g_137[8][0][2],&p_2177->g_137[8][0][2],&p_2177->g_137[6][0][0]},{&p_2177->g_137[8][0][2],&p_2177->g_137[8][0][2],&p_2177->g_137[6][0][0],&p_2177->g_137[8][0][2],&p_2177->g_137[9][0][6],&p_2177->g_137[8][0][2],&p_2177->g_137[6][0][0],&p_2177->g_137[8][0][2],&p_2177->g_137[8][0][2],&p_2177->g_137[6][0][0]},{&p_2177->g_137[8][0][2],&p_2177->g_137[8][0][2],&p_2177->g_137[6][0][0],&p_2177->g_137[8][0][2],&p_2177->g_137[9][0][6],&p_2177->g_137[8][0][2],&p_2177->g_137[6][0][0],&p_2177->g_137[8][0][2],&p_2177->g_137[8][0][2],&p_2177->g_137[6][0][0]},{&p_2177->g_137[8][0][2],&p_2177->g_137[8][0][2],&p_2177->g_137[6][0][0],&p_2177->g_137[8][0][2],&p_2177->g_137[9][0][6],&p_2177->g_137[8][0][2],&p_2177->g_137[6][0][0],&p_2177->g_137[8][0][2],&p_2177->g_137[8][0][2],&p_2177->g_137[6][0][0]},{&p_2177->g_137[8][0][2],&p_2177->g_137[8][0][2],&p_2177->g_137[6][0][0],&p_2177->g_137[8][0][2],&p_2177->g_137[9][0][6],&p_2177->g_137[8][0][2],&p_2177->g_137[6][0][0],&p_2177->g_137[8][0][2],&p_2177->g_137[8][0][2],&p_2177->g_137[6][0][0]},{&p_2177->g_137[8][0][2],&p_2177->g_137[8][0][2],&p_2177->g_137[6][0][0],&p_2177->g_137[8][0][2],&p_2177->g_137[9][0][6],&p_2177->g_137[8][0][2],&p_2177->g_137[6][0][0],&p_2177->g_137[8][0][2],&p_2177->g_137[8][0][2],&p_2177->g_137[6][0][0]},{&p_2177->g_137[8][0][2],&p_2177->g_137[8][0][2],&p_2177->g_137[6][0][0],&p_2177->g_137[8][0][2],&p_2177->g_137[9][0][6],&p_2177->g_137[8][0][2],&p_2177->g_137[6][0][0],&p_2177->g_137[8][0][2],&p_2177->g_137[8][0][2],&p_2177->g_137[6][0][0]}};
        int32_t l_138 = (-6L);
        int8_t *l_141 = &p_2177->g_121[5][4];
        int16_t *l_144 = &p_2177->g_102;
        int32_t l_185 = 1L;
        int32_t l_206 = 0x1D1CEE3CL;
        int64_t *l_285 = &p_2177->g_169;
        int32_t **l_324 = (void*)0;
        uint8_t l_386 = 0x07L;
        int i, j;
        (**l_139) = func_70((safe_div_func_int32_t_s_s((((((p_2177->g_131[2][0] = l_130) != ((((l_138 = (safe_lshift_func_uint16_t_u_s((safe_add_func_uint16_t_u_u(FAKE_DIVERGE(p_2177->group_0_offset, get_group_id(0), 10), (-8L))), p_40))) , l_139) == &l_140) , l_141)) != ((*l_144) = ((!p_40) ^ (safe_sub_func_uint16_t_u_u(1UL, p_40))))) >= p_40) != GROUP_DIVERGE(1, 1)), 0xE5287C32L)), p_40, p_2177);
        for (p_2177->g_69 = 0; (p_2177->g_69 >= 17); ++p_2177->g_69)
        { /* block id: 95 */
            int32_t l_153[9] = {0x3CBD2EE5L,0x3CBD2EE5L,0x3CBD2EE5L,0x3CBD2EE5L,0x3CBD2EE5L,0x3CBD2EE5L,0x3CBD2EE5L,0x3CBD2EE5L,0x3CBD2EE5L};
            volatile union U0 *l_174 = &p_2177->g_16[4];
            int32_t l_191 = (-1L);
            uint32_t l_198 = 4294967295UL;
            int32_t l_261 = 0x3ADCDCB9L;
            uint16_t *l_284 = &p_2177->g_123;
            uint64_t l_370 = 18446744073709551615UL;
            int32_t *l_375 = &l_191;
            int i;
            (1 + 1);
        }
    }
    return p_40;
}


/* ------------------------------------------ */
/* 
 * reads : p_2177->g_36 p_2177->g_16.f0 p_2177->g_101 p_2177->g_103 p_2177->g_69 p_2177->g_37 p_2177->g_99 p_2177->g_64 p_2177->g_121
 * writes: p_2177->g_36 p_2177->g_27 p_2177->g_64 p_2177->g_99 p_2177->g_101 p_2177->g_102 p_2177->g_103 p_2177->g_37
 */
uint16_t  func_44(int16_t  p_45, int32_t ** p_46, int32_t ** p_47, uint32_t  p_48, struct S1 * p_2177)
{ /* block id: 22 */
    uint32_t l_62 = 0x427032CDL;
    int32_t l_75[8] = {(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L)};
    int i;
    for (p_2177->g_36 = 24; (p_2177->g_36 < (-7)); p_2177->g_36--)
    { /* block id: 25 */
        int64_t l_86[10][1][2] = {{{0x75605658C465D2E0L,0x2A3B2A51D28A62AFL}},{{0x75605658C465D2E0L,0x2A3B2A51D28A62AFL}},{{0x75605658C465D2E0L,0x2A3B2A51D28A62AFL}},{{0x75605658C465D2E0L,0x2A3B2A51D28A62AFL}},{{0x75605658C465D2E0L,0x2A3B2A51D28A62AFL}},{{0x75605658C465D2E0L,0x2A3B2A51D28A62AFL}},{{0x75605658C465D2E0L,0x2A3B2A51D28A62AFL}},{{0x75605658C465D2E0L,0x2A3B2A51D28A62AFL}},{{0x75605658C465D2E0L,0x2A3B2A51D28A62AFL}},{{0x75605658C465D2E0L,0x2A3B2A51D28A62AFL}}};
        uint8_t l_87 = 0x59L;
        int32_t l_117 = 0x593BA38BL;
        int32_t *l_120 = &p_2177->g_64;
        int i, j, k;
        for (p_45 = 9; (p_45 != 4); p_45--)
        { /* block id: 28 */
            int16_t l_65 = 0x043AL;
            int32_t l_74 = 0x7637114CL;
            int32_t **l_96 = &p_2177->g_37;
            uint32_t *l_97 = &l_62;
            uint64_t *l_98 = &p_2177->g_99;
            int8_t *l_100[9] = {&p_2177->g_101,&p_2177->g_101,&p_2177->g_101,&p_2177->g_101,&p_2177->g_101,&p_2177->g_101,&p_2177->g_101,&p_2177->g_101,&p_2177->g_101};
            int32_t ***l_114 = &l_96;
            int i;
            for (p_2177->g_27 = 21; (p_2177->g_27 <= 8); p_2177->g_27 = safe_sub_func_uint16_t_u_u(p_2177->g_27, 1))
            { /* block id: 31 */
                int32_t *l_63 = &p_2177->g_64;
                l_62 ^= 0x3F199737L;
                (*l_63) = 0x17315BB9L;
            }
            for (p_2177->g_64 = 2; (p_2177->g_64 <= 6); p_2177->g_64 += 1)
            { /* block id: 37 */
                int32_t *l_68 = &p_2177->g_69;
                int32_t l_81 = 0x7FD74DCCL;
                for (l_62 = 0; (l_62 <= 6); l_62 += 1)
                { /* block id: 40 */
                    return p_45;
                }
                if (l_65)
                    continue;
            }
            (*p_47) = func_70(l_75[5], (((safe_add_func_int8_t_s_s((p_2177->g_103 ^= (p_2177->g_102 = (p_2177->g_101 &= (((safe_lshift_func_int16_t_s_s(((safe_lshift_func_int16_t_s_u(((p_46 = l_96) != &p_2177->g_35), p_2177->g_16[4].f0)) ^ (~0UL)), 1)) , (((*l_98) = ((0x4072L && (p_2177->g_36 ^ (0UL > ((*l_97) = (((p_48 != 0x42B7543FBE49ECA5L) || 0x1FL) == FAKE_DIVERGE(p_2177->group_1_offset, get_group_id(1), 10)))))) , p_45)) | l_86[6][0][1])) , l_75[5])))), 0xC3L)) && p_48) == p_2177->g_69), p_2177);
            l_117 = (safe_rshift_func_uint8_t_u_s((safe_div_func_int8_t_s_s(((+(safe_rshift_func_uint8_t_u_u(((0L != (l_75[5] & ((safe_mul_func_int8_t_s_s(l_86[6][0][1], ((l_87 >= (**p_46)) , (safe_sub_func_uint16_t_u_u(((((*l_114) = (l_87 , p_47)) != (((safe_lshift_func_uint16_t_u_u((((*p_46) = &p_2177->g_69) != (p_45 , (void*)0)), l_86[0][0][0])) , 0x5E43CA2BCDE28A80L) , (void*)0)) , p_2177->g_99), 0x03A0L))))) , 1L))) < p_2177->g_16[4].f0), p_2177->g_103))) != GROUP_DIVERGE(0, 1)), p_2177->g_69)), p_48));
        }
        (*l_120) |= (safe_add_func_uint16_t_u_u(1UL, p_45));
        return p_2177->g_121[8][3];
    }
    return p_45;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_70(int64_t  p_71, uint64_t  p_72, struct S1 * p_2177)
{ /* block id: 52 */
    return &p_2177->g_69;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[17];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 17; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[17];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 17; i++)
            l_special_values[i] = 0;
    struct S1 c_2178;
    struct S1* p_2177 = &c_2178;
    struct S1 c_2179 = {
        {{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}}, // p_2177->g_16
        0x48L, // p_2177->g_27
        0x5FF57440L, // p_2177->g_36
        &p_2177->g_36, // p_2177->g_35
        (void*)0, // p_2177->g_37
        (-6L), // p_2177->g_64
        0x4018302AL, // p_2177->g_69
        {0x69B2L,0x69B2L}, // p_2177->g_79
        7L, // p_2177->g_84
        0xE2640699D302D723L, // p_2177->g_99
        0x02L, // p_2177->g_101
        8L, // p_2177->g_102
        0UL, // p_2177->g_103
        {{0x4AL,0x04L,0x4AL,0x4AL,0x04L,0x4AL,0x4AL,0x04L,0x4AL},{0x4AL,0x04L,0x4AL,0x4AL,0x04L,0x4AL,0x4AL,0x04L,0x4AL},{0x4AL,0x04L,0x4AL,0x4AL,0x04L,0x4AL,0x4AL,0x04L,0x4AL},{0x4AL,0x04L,0x4AL,0x4AL,0x04L,0x4AL,0x4AL,0x04L,0x4AL},{0x4AL,0x04L,0x4AL,0x4AL,0x04L,0x4AL,0x4AL,0x04L,0x4AL},{0x4AL,0x04L,0x4AL,0x4AL,0x04L,0x4AL,0x4AL,0x04L,0x4AL},{0x4AL,0x04L,0x4AL,0x4AL,0x04L,0x4AL,0x4AL,0x04L,0x4AL},{0x4AL,0x04L,0x4AL,0x4AL,0x04L,0x4AL,0x4AL,0x04L,0x4AL},{0x4AL,0x04L,0x4AL,0x4AL,0x04L,0x4AL,0x4AL,0x04L,0x4AL}}, // p_2177->g_121
        0x0E55L, // p_2177->g_123
        {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}, // p_2177->g_131
        {{{0xBDBECFBBL,0xCC86662DL,0xCC86662DL,0xBDBECFBBL,0xBDBECFBBL,0xCC86662DL,0xCC86662DL,0xBDBECFBBL,0xBDBECFBBL,0xCC86662DL}},{{0xBDBECFBBL,0xCC86662DL,0xCC86662DL,0xBDBECFBBL,0xBDBECFBBL,0xCC86662DL,0xCC86662DL,0xBDBECFBBL,0xBDBECFBBL,0xCC86662DL}},{{0xBDBECFBBL,0xCC86662DL,0xCC86662DL,0xBDBECFBBL,0xBDBECFBBL,0xCC86662DL,0xCC86662DL,0xBDBECFBBL,0xBDBECFBBL,0xCC86662DL}},{{0xBDBECFBBL,0xCC86662DL,0xCC86662DL,0xBDBECFBBL,0xBDBECFBBL,0xCC86662DL,0xCC86662DL,0xBDBECFBBL,0xBDBECFBBL,0xCC86662DL}},{{0xBDBECFBBL,0xCC86662DL,0xCC86662DL,0xBDBECFBBL,0xBDBECFBBL,0xCC86662DL,0xCC86662DL,0xBDBECFBBL,0xBDBECFBBL,0xCC86662DL}},{{0xBDBECFBBL,0xCC86662DL,0xCC86662DL,0xBDBECFBBL,0xBDBECFBBL,0xCC86662DL,0xCC86662DL,0xBDBECFBBL,0xBDBECFBBL,0xCC86662DL}},{{0xBDBECFBBL,0xCC86662DL,0xCC86662DL,0xBDBECFBBL,0xBDBECFBBL,0xCC86662DL,0xCC86662DL,0xBDBECFBBL,0xBDBECFBBL,0xCC86662DL}},{{0xBDBECFBBL,0xCC86662DL,0xCC86662DL,0xBDBECFBBL,0xBDBECFBBL,0xCC86662DL,0xCC86662DL,0xBDBECFBBL,0xBDBECFBBL,0xCC86662DL}},{{0xBDBECFBBL,0xCC86662DL,0xCC86662DL,0xBDBECFBBL,0xBDBECFBBL,0xCC86662DL,0xCC86662DL,0xBDBECFBBL,0xBDBECFBBL,0xCC86662DL}},{{0xBDBECFBBL,0xCC86662DL,0xCC86662DL,0xBDBECFBBL,0xBDBECFBBL,0xCC86662DL,0xCC86662DL,0xBDBECFBBL,0xBDBECFBBL,0xCC86662DL}}}, // p_2177->g_137
        &p_2177->g_37, // p_2177->g_156
        &p_2177->g_156, // p_2177->g_155
        &p_2177->g_156, // p_2177->g_160
        0L, // p_2177->g_169
        0xAD96D95FL, // p_2177->g_188
        {0x76L}, // p_2177->g_201
        4L, // p_2177->g_205
        (void*)0, // p_2177->g_236
        0x9F2FE954CA7728DFL, // p_2177->g_240
        0x1FB0C5DDL, // p_2177->g_241
        0x6898L, // p_2177->g_242
        {0x89L}, // p_2177->g_262
        {{{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}}},{{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}}},{{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}}},{{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}}},{{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}},{{0x3DL},{0x12L},{0xA2L},{0x5EL}}}}, // p_2177->g_265
        4294967295UL, // p_2177->g_298
        {255UL}, // p_2177->g_317
        1UL, // p_2177->g_344
        {{{0x78L,0L,0x07L,0x08L,(-10L),(-1L),(-1L),0x25L},{0x78L,0L,0x07L,0x08L,(-10L),(-1L),(-1L),0x25L},{0x78L,0L,0x07L,0x08L,(-10L),(-1L),(-1L),0x25L},{0x78L,0L,0x07L,0x08L,(-10L),(-1L),(-1L),0x25L}},{{0x78L,0L,0x07L,0x08L,(-10L),(-1L),(-1L),0x25L},{0x78L,0L,0x07L,0x08L,(-10L),(-1L),(-1L),0x25L},{0x78L,0L,0x07L,0x08L,(-10L),(-1L),(-1L),0x25L},{0x78L,0L,0x07L,0x08L,(-10L),(-1L),(-1L),0x25L}},{{0x78L,0L,0x07L,0x08L,(-10L),(-1L),(-1L),0x25L},{0x78L,0L,0x07L,0x08L,(-10L),(-1L),(-1L),0x25L},{0x78L,0L,0x07L,0x08L,(-10L),(-1L),(-1L),0x25L},{0x78L,0L,0x07L,0x08L,(-10L),(-1L),(-1L),0x25L}},{{0x78L,0L,0x07L,0x08L,(-10L),(-1L),(-1L),0x25L},{0x78L,0L,0x07L,0x08L,(-10L),(-1L),(-1L),0x25L},{0x78L,0L,0x07L,0x08L,(-10L),(-1L),(-1L),0x25L},{0x78L,0L,0x07L,0x08L,(-10L),(-1L),(-1L),0x25L}},{{0x78L,0L,0x07L,0x08L,(-10L),(-1L),(-1L),0x25L},{0x78L,0L,0x07L,0x08L,(-10L),(-1L),(-1L),0x25L},{0x78L,0L,0x07L,0x08L,(-10L),(-1L),(-1L),0x25L},{0x78L,0L,0x07L,0x08L,(-10L),(-1L),(-1L),0x25L}},{{0x78L,0L,0x07L,0x08L,(-10L),(-1L),(-1L),0x25L},{0x78L,0L,0x07L,0x08L,(-10L),(-1L),(-1L),0x25L},{0x78L,0L,0x07L,0x08L,(-10L),(-1L),(-1L),0x25L},{0x78L,0L,0x07L,0x08L,(-10L),(-1L),(-1L),0x25L}},{{0x78L,0L,0x07L,0x08L,(-10L),(-1L),(-1L),0x25L},{0x78L,0L,0x07L,0x08L,(-10L),(-1L),(-1L),0x25L},{0x78L,0L,0x07L,0x08L,(-10L),(-1L),(-1L),0x25L},{0x78L,0L,0x07L,0x08L,(-10L),(-1L),(-1L),0x25L}}}, // p_2177->g_364
        0x14C7D5ECL, // p_2177->g_372
        {{{0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L},{0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L},{0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L},{0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L},{0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L},{0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L},{0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L},{0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L},{0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L,0x006916F802E40A81L}}}, // p_2177->g_407
        {{0x69E9L,0x5E2AL,0L,0x5E2AL,0x69E9L,0x69E9L,0x5E2AL},{0x69E9L,0x5E2AL,0L,0x5E2AL,0x69E9L,0x69E9L,0x5E2AL},{0x69E9L,0x5E2AL,0L,0x5E2AL,0x69E9L,0x69E9L,0x5E2AL},{0x69E9L,0x5E2AL,0L,0x5E2AL,0x69E9L,0x69E9L,0x5E2AL}}, // p_2177->g_429
        0x32L, // p_2177->g_430
        (-9L), // p_2177->g_431
        0x3E5292C6BECCE365L, // p_2177->g_432
        1L, // p_2177->g_434
        (-2L), // p_2177->g_436
        0x6CF28333L, // p_2177->g_437
        {2UL,0xF3A05C9A7E7673ABL,2UL,2UL,0xF3A05C9A7E7673ABL,2UL,2UL,0xF3A05C9A7E7673ABL,2UL}, // p_2177->g_469
        0x2F7D0F367449045CL, // p_2177->g_550
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_2177->g_566
        {&p_2177->g_137[8][0][2],&p_2177->g_137[8][0][2],&p_2177->g_137[8][0][2],&p_2177->g_137[8][0][2],&p_2177->g_137[8][0][2],&p_2177->g_137[8][0][2],&p_2177->g_137[8][0][2]}, // p_2177->g_610
        {{{&p_2177->g_610[0],&p_2177->g_610[0],&p_2177->g_610[2],&p_2177->g_610[5],&p_2177->g_610[5],(void*)0},{&p_2177->g_610[0],&p_2177->g_610[0],&p_2177->g_610[2],&p_2177->g_610[5],&p_2177->g_610[5],(void*)0},{&p_2177->g_610[0],&p_2177->g_610[0],&p_2177->g_610[2],&p_2177->g_610[5],&p_2177->g_610[5],(void*)0},{&p_2177->g_610[0],&p_2177->g_610[0],&p_2177->g_610[2],&p_2177->g_610[5],&p_2177->g_610[5],(void*)0},{&p_2177->g_610[0],&p_2177->g_610[0],&p_2177->g_610[2],&p_2177->g_610[5],&p_2177->g_610[5],(void*)0}},{{&p_2177->g_610[0],&p_2177->g_610[0],&p_2177->g_610[2],&p_2177->g_610[5],&p_2177->g_610[5],(void*)0},{&p_2177->g_610[0],&p_2177->g_610[0],&p_2177->g_610[2],&p_2177->g_610[5],&p_2177->g_610[5],(void*)0},{&p_2177->g_610[0],&p_2177->g_610[0],&p_2177->g_610[2],&p_2177->g_610[5],&p_2177->g_610[5],(void*)0},{&p_2177->g_610[0],&p_2177->g_610[0],&p_2177->g_610[2],&p_2177->g_610[5],&p_2177->g_610[5],(void*)0},{&p_2177->g_610[0],&p_2177->g_610[0],&p_2177->g_610[2],&p_2177->g_610[5],&p_2177->g_610[5],(void*)0}},{{&p_2177->g_610[0],&p_2177->g_610[0],&p_2177->g_610[2],&p_2177->g_610[5],&p_2177->g_610[5],(void*)0},{&p_2177->g_610[0],&p_2177->g_610[0],&p_2177->g_610[2],&p_2177->g_610[5],&p_2177->g_610[5],(void*)0},{&p_2177->g_610[0],&p_2177->g_610[0],&p_2177->g_610[2],&p_2177->g_610[5],&p_2177->g_610[5],(void*)0},{&p_2177->g_610[0],&p_2177->g_610[0],&p_2177->g_610[2],&p_2177->g_610[5],&p_2177->g_610[5],(void*)0},{&p_2177->g_610[0],&p_2177->g_610[0],&p_2177->g_610[2],&p_2177->g_610[5],&p_2177->g_610[5],(void*)0}},{{&p_2177->g_610[0],&p_2177->g_610[0],&p_2177->g_610[2],&p_2177->g_610[5],&p_2177->g_610[5],(void*)0},{&p_2177->g_610[0],&p_2177->g_610[0],&p_2177->g_610[2],&p_2177->g_610[5],&p_2177->g_610[5],(void*)0},{&p_2177->g_610[0],&p_2177->g_610[0],&p_2177->g_610[2],&p_2177->g_610[5],&p_2177->g_610[5],(void*)0},{&p_2177->g_610[0],&p_2177->g_610[0],&p_2177->g_610[2],&p_2177->g_610[5],&p_2177->g_610[5],(void*)0},{&p_2177->g_610[0],&p_2177->g_610[0],&p_2177->g_610[2],&p_2177->g_610[5],&p_2177->g_610[5],(void*)0}}}, // p_2177->g_609
        {{{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL}},{{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL}},{{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL}},{{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL}},{{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL}},{{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL}},{{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL}},{{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL}},{{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL}},{{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL},{1UL,0x1DDA9276L,4294967293UL}}}, // p_2177->g_647
        {{&p_2177->g_205,&p_2177->g_205,&p_2177->g_205,&p_2177->g_205,&p_2177->g_205,&p_2177->g_205,&p_2177->g_205,&p_2177->g_205,&p_2177->g_205},{&p_2177->g_205,&p_2177->g_205,&p_2177->g_205,&p_2177->g_205,&p_2177->g_205,&p_2177->g_205,&p_2177->g_205,&p_2177->g_205,&p_2177->g_205},{&p_2177->g_205,&p_2177->g_205,&p_2177->g_205,&p_2177->g_205,&p_2177->g_205,&p_2177->g_205,&p_2177->g_205,&p_2177->g_205,&p_2177->g_205}}, // p_2177->g_722
        &p_2177->g_722[0][0], // p_2177->g_721
        4UL, // p_2177->g_767
        &p_2177->g_35, // p_2177->g_794
        {254UL,0x45L,255UL,0x45L,254UL,254UL,0x45L,255UL,0x45L,254UL}, // p_2177->g_853
        8UL, // p_2177->g_859
        {5UL}, // p_2177->g_862
        {255UL}, // p_2177->g_892
        0x6FB07E47L, // p_2177->g_991
        0UL, // p_2177->g_998
        (void*)0, // p_2177->g_1003
        {0x66L}, // p_2177->g_1014
        1UL, // p_2177->g_1167
        {{{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0}},{{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0}},{{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0}},{{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0}},{{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0}},{{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0}},{{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0}},{{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0},{&p_2177->g_469[5],&p_2177->g_469[5],(void*)0}}}, // p_2177->g_1212
        {{{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]}},{{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]}},{{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]}},{{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]}},{{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]}},{{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]}},{{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]}},{{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]}},{{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]}},{{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]},{&p_2177->g_1212[7][4][0],(void*)0,&p_2177->g_1212[7][4][0]}}}, // p_2177->g_1211
        &p_2177->g_1211[7][5][1], // p_2177->g_1213
        0x3DFD29F4L, // p_2177->g_1234
        &p_2177->g_991, // p_2177->g_1244
        0x41L, // p_2177->g_1264
        1UL, // p_2177->g_1332
        &p_2177->g_1332, // p_2177->g_1331
        &p_2177->g_1331, // p_2177->g_1330
        &p_2177->g_16[4], // p_2177->g_1343
        &p_2177->g_1343, // p_2177->g_1342
        {1UL}, // p_2177->g_1356
        {0xC455L,0xC455L,0xC455L,0xC455L}, // p_2177->g_1382
        4294967295UL, // p_2177->g_1391
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_2177->g_1411
        &p_2177->g_1411[4], // p_2177->g_1410
        (void*)0, // p_2177->g_1417
        0xB762DF79L, // p_2177->g_1450
        {&p_2177->g_609[1][1][3],&p_2177->g_609[1][1][3],&p_2177->g_609[1][1][3],&p_2177->g_609[1][1][3],&p_2177->g_609[1][1][3],&p_2177->g_609[1][1][3],&p_2177->g_609[1][1][3],&p_2177->g_609[1][1][3]}, // p_2177->g_1471
        (-1L), // p_2177->g_1483
        {0UL,0UL}, // p_2177->g_1524
        0L, // p_2177->g_1584
        &p_2177->g_1471[1], // p_2177->g_1587
        6UL, // p_2177->g_1614
        &p_2177->g_131[3][0], // p_2177->g_1625
        (-3L), // p_2177->g_1693
        {{{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}}},{{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}}},{{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}}},{{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}}},{{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}}},{{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}}},{{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}}},{{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}},{{252UL},{0xEFL},{0x55L}}}}, // p_2177->g_1710
        {5UL,5UL,5UL,5UL}, // p_2177->g_1726
        &p_2177->g_1212[2][6][1], // p_2177->g_1799
        {0x5C1EL,0x5C1EL,0x5C1EL}, // p_2177->g_1802
        {&p_2177->g_79[1]}, // p_2177->g_1825
        &p_2177->g_1825[0], // p_2177->g_1824
        &p_2177->g_1824, // p_2177->g_1823
        &p_2177->g_1823, // p_2177->g_1822
        0xCC12L, // p_2177->g_1928
        {{{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL},{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL},{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL},{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL},{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL},{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL},{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL},{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL},{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL}},{{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL},{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL},{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL},{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL},{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL},{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL},{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL},{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL},{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL}},{{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL},{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL},{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL},{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL},{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL},{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL},{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL},{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL},{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL}},{{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL},{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL},{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL},{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL},{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL},{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL},{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL},{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL},{0x4A3AD0166733CA5BL,0x6FAA8FEF467BF1BEL,(-1L),0x7324D0E91DF9B510L,7L,0x7E1FDA937DDDCF8EL}}}, // p_2177->g_1953
        (-2L), // p_2177->g_1966
        {0x33L}, // p_2177->g_1983
        1L, // p_2177->g_2022
        0x3CL, // p_2177->g_2060
        4294967295UL, // p_2177->g_2139
        sequence_input[get_global_id(0)], // p_2177->global_0_offset
        sequence_input[get_global_id(1)], // p_2177->global_1_offset
        sequence_input[get_global_id(2)], // p_2177->global_2_offset
        sequence_input[get_local_id(0)], // p_2177->local_0_offset
        sequence_input[get_local_id(1)], // p_2177->local_1_offset
        sequence_input[get_local_id(2)], // p_2177->local_2_offset
        sequence_input[get_group_id(0)], // p_2177->group_0_offset
        sequence_input[get_group_id(1)], // p_2177->group_1_offset
        sequence_input[get_group_id(2)], // p_2177->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_2178 = c_2179;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2177);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2177->g_16[i].f0, "p_2177->g_16[i].f0", print_hash_value);

    }
    transparent_crc(p_2177->g_27, "p_2177->g_27", print_hash_value);
    transparent_crc(p_2177->g_36, "p_2177->g_36", print_hash_value);
    transparent_crc(p_2177->g_64, "p_2177->g_64", print_hash_value);
    transparent_crc(p_2177->g_69, "p_2177->g_69", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_2177->g_79[i], "p_2177->g_79[i]", print_hash_value);

    }
    transparent_crc(p_2177->g_84, "p_2177->g_84", print_hash_value);
    transparent_crc(p_2177->g_99, "p_2177->g_99", print_hash_value);
    transparent_crc(p_2177->g_101, "p_2177->g_101", print_hash_value);
    transparent_crc(p_2177->g_102, "p_2177->g_102", print_hash_value);
    transparent_crc(p_2177->g_103, "p_2177->g_103", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_2177->g_121[i][j], "p_2177->g_121[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2177->g_123, "p_2177->g_123", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 10; k++)
            {
                transparent_crc(p_2177->g_137[i][j][k], "p_2177->g_137[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2177->g_169, "p_2177->g_169", print_hash_value);
    transparent_crc(p_2177->g_188, "p_2177->g_188", print_hash_value);
    transparent_crc(p_2177->g_201.f0, "p_2177->g_201.f0", print_hash_value);
    transparent_crc(p_2177->g_205, "p_2177->g_205", print_hash_value);
    transparent_crc(p_2177->g_240, "p_2177->g_240", print_hash_value);
    transparent_crc(p_2177->g_241, "p_2177->g_241", print_hash_value);
    transparent_crc(p_2177->g_242, "p_2177->g_242", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_2177->g_265[i][j][k].f0, "p_2177->g_265[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_2177->g_298, "p_2177->g_298", print_hash_value);
    transparent_crc(p_2177->g_317.f0, "p_2177->g_317.f0", print_hash_value);
    transparent_crc(p_2177->g_344, "p_2177->g_344", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_2177->g_364[i][j][k], "p_2177->g_364[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2177->g_372, "p_2177->g_372", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_2177->g_407[i][j][k], "p_2177->g_407[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_2177->g_429[i][j], "p_2177->g_429[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2177->g_430, "p_2177->g_430", print_hash_value);
    transparent_crc(p_2177->g_431, "p_2177->g_431", print_hash_value);
    transparent_crc(p_2177->g_432, "p_2177->g_432", print_hash_value);
    transparent_crc(p_2177->g_434, "p_2177->g_434", print_hash_value);
    transparent_crc(p_2177->g_436, "p_2177->g_436", print_hash_value);
    transparent_crc(p_2177->g_437, "p_2177->g_437", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_2177->g_469[i], "p_2177->g_469[i]", print_hash_value);

    }
    transparent_crc(p_2177->g_550, "p_2177->g_550", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_2177->g_647[i][j][k], "p_2177->g_647[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2177->g_767, "p_2177->g_767", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2177->g_853[i], "p_2177->g_853[i]", print_hash_value);

    }
    transparent_crc(p_2177->g_859, "p_2177->g_859", print_hash_value);
    transparent_crc(p_2177->g_991, "p_2177->g_991", print_hash_value);
    transparent_crc(p_2177->g_998, "p_2177->g_998", print_hash_value);
    transparent_crc(p_2177->g_1167, "p_2177->g_1167", print_hash_value);
    transparent_crc(p_2177->g_1234, "p_2177->g_1234", print_hash_value);
    transparent_crc(p_2177->g_1264, "p_2177->g_1264", print_hash_value);
    transparent_crc(p_2177->g_1332, "p_2177->g_1332", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2177->g_1382[i], "p_2177->g_1382[i]", print_hash_value);

    }
    transparent_crc(p_2177->g_1391, "p_2177->g_1391", print_hash_value);
    transparent_crc(p_2177->g_1450, "p_2177->g_1450", print_hash_value);
    transparent_crc(p_2177->g_1483, "p_2177->g_1483", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_2177->g_1524[i], "p_2177->g_1524[i]", print_hash_value);

    }
    transparent_crc(p_2177->g_1584, "p_2177->g_1584", print_hash_value);
    transparent_crc(p_2177->g_1614, "p_2177->g_1614", print_hash_value);
    transparent_crc(p_2177->g_1693, "p_2177->g_1693", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_2177->g_1710[i][j][k].f0, "p_2177->g_1710[i][j][k].f0", print_hash_value);

            }
        }
    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2177->g_1726[i], "p_2177->g_1726[i]", print_hash_value);

    }
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_2177->g_1802[i], "p_2177->g_1802[i]", print_hash_value);

    }
    transparent_crc(p_2177->g_1928, "p_2177->g_1928", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_2177->g_1953[i][j][k], "p_2177->g_1953[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2177->g_1966, "p_2177->g_1966", print_hash_value);
    transparent_crc(p_2177->g_1983.f0, "p_2177->g_1983.f0", print_hash_value);
    transparent_crc(p_2177->g_2022, "p_2177->g_2022", print_hash_value);
    transparent_crc(p_2177->g_2060, "p_2177->g_2060", print_hash_value);
    transparent_crc(p_2177->g_2139, "p_2177->g_2139", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 17; i++)
            transparent_crc(p_2177->g_special_values[i + 17 * get_linear_group_id()], "p_2177->g_special_values[i + 17 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 17; i++)
            transparent_crc(p_2177->l_special_values[i], "p_2177->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
