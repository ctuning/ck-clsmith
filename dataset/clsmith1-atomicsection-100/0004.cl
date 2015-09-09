// --atomics 74 ---fake_divergence -g 45,99,1 -l 45,3,1
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


// Seed: 4

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_2[8];
    uint64_t g_31;
    uint64_t g_42[10][7];
    int32_t g_46;
    int32_t g_52;
    volatile int32_t g_58;
    volatile int32_t g_59;
    int32_t g_60;
    uint64_t g_71;
    uint16_t g_116;
    int32_t *g_124;
    int32_t ** volatile g_123;
    int32_t **g_128;
    int16_t g_146;
    uint64_t *g_160[3];
    uint64_t **g_159;
    volatile uint64_t g_170;
    uint32_t g_211[5];
    volatile int8_t g_218;
    volatile uint64_t g_219[8];
    int8_t g_233[10];
    int32_t g_234;
    uint8_t g_235;
    volatile int16_t g_282;
    volatile int16_t *g_281;
    volatile int16_t ** volatile g_280;
    int64_t g_296[7];
    int16_t **g_302;
    int8_t *g_345;
    int8_t g_351;
    int64_t g_374;
    int8_t g_433;
    volatile int8_t g_436;
    volatile int64_t g_437;
    volatile int8_t g_438[3];
    volatile int16_t g_439[1][2][3];
    volatile int32_t g_440;
    volatile int64_t g_441;
    volatile int16_t g_442;
    int64_t g_443;
    uint32_t g_444;
    int8_t g_462;
    int32_t ** volatile g_615;
    int32_t ** volatile g_622;
    int32_t *g_624[8];
    int32_t ** volatile g_623;
    int32_t g_632;
    int32_t g_634;
    int8_t **g_639;
    int8_t ***g_638;
    volatile int16_t * volatile *g_645[4][7];
    volatile int16_t * volatile * volatile *g_644;
    volatile int16_t * volatile * volatile ** volatile g_643;
    int32_t * volatile g_646;
    uint16_t * volatile g_653[7];
    uint16_t * volatile *g_652;
    int16_t g_668;
    int32_t * volatile g_672[10][9];
    uint32_t g_684;
    int32_t * volatile g_687;
    uint16_t g_695;
    uint16_t *g_694;
    uint32_t g_707;
    uint8_t g_734;
    int32_t ** volatile g_782;
    int32_t ** volatile g_783;
    int32_t * volatile g_784;
    int32_t * volatile g_787;
    int32_t * volatile g_788;
    uint64_t *** volatile g_799[4][8];
    int32_t * volatile *g_935;
    int32_t * volatile **g_934[2][2][6];
    int32_t * volatile ** volatile * volatile g_933;
    int32_t g_953;
    uint32_t *g_1057;
    int64_t g_1095;
    int16_t ***g_1253;
    int16_t ****g_1252;
    volatile int8_t * volatile ** volatile * volatile *g_1283;
    uint16_t g_1304;
    int32_t g_1305;
    uint32_t *g_1309[10][5];
    uint32_t ** volatile g_1308[10];
    int32_t g_1322;
    uint32_t **g_1357;
    uint32_t *** volatile g_1356;
    uint32_t g_1367[7];
    int8_t ** volatile * volatile g_1450;
    uint64_t g_1452;
    uint8_t *g_1511[9][3];
    uint8_t **g_1510;
    uint8_t **g_1515;
    uint8_t *** volatile g_1514;
    int32_t * volatile g_1532;
    uint16_t g_1539;
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
int32_t  func_1(struct S0 * p_1704);
uint64_t  func_7(uint64_t  p_8, uint8_t  p_9, int32_t  p_10, uint64_t  p_11, int8_t  p_12, struct S0 * p_1704);
uint16_t  func_17(uint32_t  p_18, int8_t  p_19, int32_t  p_20, struct S0 * p_1704);
int32_t  func_22(uint16_t  p_23, uint32_t  p_24, uint16_t  p_25, uint16_t  p_26, uint32_t  p_27, struct S0 * p_1704);
int64_t  func_33(int32_t  p_34, uint64_t * p_35, uint32_t  p_36, struct S0 * p_1704);
uint32_t  func_37(int64_t  p_38, int32_t  p_39, uint64_t * p_40, struct S0 * p_1704);
uint64_t ** func_77(uint64_t  p_78, uint64_t ** p_79, int32_t * p_80, uint64_t * p_81, int32_t * p_82, struct S0 * p_1704);
uint64_t ** func_83(uint64_t  p_84, struct S0 * p_1704);
int32_t * func_88(int64_t  p_89, uint64_t ** p_90, int32_t * p_91, int32_t  p_92, uint8_t  p_93, struct S0 * p_1704);
uint64_t ** func_95(uint64_t  p_96, int32_t * p_97, struct S0 * p_1704);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1704->g_2 p_1704->g_634 p_1704->g_935 p_1704->g_52 p_1704->g_374 p_1704->g_42 p_1704->g_219 p_1704->g_1309 p_1704->g_638 p_1704->g_639 p_1704->g_345 p_1704->g_233 p_1704->g_170 p_1704->g_694 p_1704->g_695 p_1704->g_351 p_1704->g_159 p_1704->g_160 p_1704->g_128 p_1704->g_124 p_1704->g_59
 * writes: p_1704->g_2 p_1704->g_634 p_1704->g_787 p_1704->g_52 p_1704->g_374 p_1704->g_734 p_1704->g_351
 */
int32_t  func_1(struct S0 * p_1704)
{ /* block id: 4 */
    uint64_t *l_41 = &p_1704->g_42[6][2];
    int32_t l_47 = (-5L);
    int16_t l_1218 = 0x4DACL;
    int8_t *****l_1284 = (void*)0;
    uint64_t l_1298 = 0UL;
    int8_t l_1345 = (-1L);
    uint8_t l_1389 = 8UL;
    int32_t **l_1407 = &p_1704->g_624[4];
    int32_t l_1428 = 0x73A9D8FFL;
    int32_t l_1429 = 0x3F780481L;
    uint64_t l_1540 = 9UL;
    uint8_t l_1547 = 0xACL;
    int64_t l_1566 = 0x78DDBC506AFFDA02L;
    uint64_t ***l_1691 = &p_1704->g_159;
    uint64_t ****l_1690 = &l_1691;
    int8_t *l_1700 = &l_1345;
    uint8_t *l_1701 = &p_1704->g_734;
    uint8_t l_1702 = 255UL;
    uint8_t l_1703 = 255UL;
    for (p_1704->g_2[4] = 0; (p_1704->g_2[4] == (-10)); --p_1704->g_2[4])
    { /* block id: 7 */
        uint32_t l_21 = 4294967287UL;
        uint64_t *l_30 = &p_1704->g_31;
        int32_t *l_952 = &p_1704->g_953;
        uint16_t *l_1130 = &p_1704->g_116;
        int32_t l_1268 = (-1L);
        uint64_t l_1274 = 18446744073709551615UL;
        uint8_t l_1354 = 0x56L;
        int32_t l_1365[8][5] = {{5L,5L,5L,5L,5L},{5L,5L,5L,5L,5L},{5L,5L,5L,5L,5L},{5L,5L,5L,5L,5L},{5L,5L,5L,5L,5L},{5L,5L,5L,5L,5L},{5L,5L,5L,5L,5L},{5L,5L,5L,5L,5L}};
        int8_t ***l_1453 = &p_1704->g_639;
        uint16_t **l_1542 = &p_1704->g_694;
        int64_t *l_1550 = &p_1704->g_296[5];
        int64_t *l_1551 = (void*)0;
        int32_t *l_1552 = (void*)0;
        int32_t *l_1553 = (void*)0;
        int32_t *l_1554 = &p_1704->g_632;
        int i, j;
        (1 + 1);
    }
    for (p_1704->g_634 = 7; (p_1704->g_634 >= 2); p_1704->g_634 -= 1)
    { /* block id: 945 */
        int32_t l_1567 = 0x573DA20CL;
        int32_t l_1568[8][5][1] = {{{5L},{5L},{5L},{5L},{5L}},{{5L},{5L},{5L},{5L},{5L}},{{5L},{5L},{5L},{5L},{5L}},{{5L},{5L},{5L},{5L},{5L}},{{5L},{5L},{5L},{5L},{5L}},{{5L},{5L},{5L},{5L},{5L}},{{5L},{5L},{5L},{5L},{5L}},{{5L},{5L},{5L},{5L},{5L}}};
        int i, j, k;
        (*p_1704->g_935) = &p_1704->g_2[p_1704->g_634];
        for (p_1704->g_52 = 5; (p_1704->g_52 >= 0); p_1704->g_52 -= 1)
        { /* block id: 949 */
            int32_t l_1559 = (-1L);
            int32_t l_1560 = (-5L);
            int32_t l_1561 = 7L;
            int32_t l_1562 = 0x6F44E35EL;
            int32_t l_1563 = 0x484C774AL;
            int32_t l_1564 = 1L;
            int32_t l_1565 = 0x67D60510L;
            int32_t l_1569 = 0x59324DD9L;
            int32_t l_1570 = (-3L);
            int32_t l_1571 = 0x3B429B4EL;
            for (p_1704->g_374 = 1; (p_1704->g_374 <= 7); p_1704->g_374 += 1)
            { /* block id: 952 */
                int32_t *l_1555 = &l_47;
                int32_t *l_1556 = &p_1704->g_2[p_1704->g_634];
                int32_t *l_1557 = (void*)0;
                int32_t *l_1558[3];
                uint64_t l_1572[1][7];
                int i, j;
                for (i = 0; i < 3; i++)
                    l_1558[i] = &l_47;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 7; j++)
                        l_1572[i][j] = 0UL;
                }
                ++l_1572[0][4];
                return l_1563;
            }
            return l_1571;
        }
    }
    if ((atomic_inc(&p_1704->l_atomic_input[44]) == 3))
    { /* block id: 960 */
        int32_t l_1575[2][4][8] = {{{(-1L),(-1L),0x22B02472L,0x138DF4FDL,(-10L),0x0DCACD9BL,0x0DDDB85AL,0x034E3D35L},{(-1L),(-1L),0x22B02472L,0x138DF4FDL,(-10L),0x0DCACD9BL,0x0DDDB85AL,0x034E3D35L},{(-1L),(-1L),0x22B02472L,0x138DF4FDL,(-10L),0x0DCACD9BL,0x0DDDB85AL,0x034E3D35L},{(-1L),(-1L),0x22B02472L,0x138DF4FDL,(-10L),0x0DCACD9BL,0x0DDDB85AL,0x034E3D35L}},{{(-1L),(-1L),0x22B02472L,0x138DF4FDL,(-10L),0x0DCACD9BL,0x0DDDB85AL,0x034E3D35L},{(-1L),(-1L),0x22B02472L,0x138DF4FDL,(-10L),0x0DCACD9BL,0x0DDDB85AL,0x034E3D35L},{(-1L),(-1L),0x22B02472L,0x138DF4FDL,(-10L),0x0DCACD9BL,0x0DDDB85AL,0x034E3D35L},{(-1L),(-1L),0x22B02472L,0x138DF4FDL,(-10L),0x0DCACD9BL,0x0DDDB85AL,0x034E3D35L}}};
        int16_t l_1654 = 0x5180L;
        uint32_t l_1655 = 0xACE2798AL;
        int32_t l_1675 = 0L;
        uint8_t l_1676 = 255UL;
        int16_t l_1677 = (-7L);
        int i, j, k;
        for (l_1575[1][3][7] = 0; (l_1575[1][3][7] <= 7); l_1575[1][3][7] += 1)
        { /* block id: 963 */
            int32_t l_1576 = 0x757ED85EL;
            for (l_1576 = 7; (l_1576 >= 0); l_1576 -= 1)
            { /* block id: 966 */
                int32_t l_1577[9][3] = {{9L,2L,1L},{9L,2L,1L},{9L,2L,1L},{9L,2L,1L},{9L,2L,1L},{9L,2L,1L},{9L,2L,1L},{9L,2L,1L},{9L,2L,1L}};
                int32_t *l_1593 = &l_1577[8][1];
                uint16_t l_1594 = 0x8784L;
                int i, j;
                for (l_1577[8][1] = 6; (l_1577[8][1] >= 2); l_1577[8][1] -= 1)
                { /* block id: 969 */
                    int32_t l_1578 = 0L;
                    uint16_t l_1587 = 0xBCC5L;
                    int16_t l_1588[8];
                    int32_t *l_1589 = &l_1578;
                    int32_t *l_1590 = &l_1578;
                    int i, j;
                    for (i = 0; i < 8; i++)
                        l_1588[i] = 0x635AL;
                    for (l_1578 = 0; (l_1578 <= 7); l_1578 += 1)
                    { /* block id: 972 */
                        int32_t *l_1579 = (void*)0;
                        int32_t l_1581[6][3][4];
                        int32_t *l_1580 = &l_1581[1][1][2];
                        int32_t l_1582 = 0x573B8C44L;
                        int8_t l_1583 = 0x2AL;
                        uint16_t l_1584 = 0x8CB5L;
                        int i, j, k;
                        for (i = 0; i < 6; i++)
                        {
                            for (j = 0; j < 3; j++)
                            {
                                for (k = 0; k < 4; k++)
                                    l_1581[i][j][k] = 2L;
                            }
                        }
                        l_1579 = (void*)0;
                        l_1580 = l_1580;
                        l_1584--;
                    }
                    l_1590 = ((l_1588[6] = (l_1587 |= p_1704->g_42[l_1576][l_1577[8][1]])) , l_1589);
                    for (l_1587 = 0; (l_1587 <= 6); l_1587 += 1)
                    { /* block id: 982 */
                        int16_t l_1591 = (-9L);
                        uint64_t l_1592 = 4UL;
                        int i;
                        (*l_1589) |= p_1704->g_219[l_1576];
                        l_1592 = (l_1591 , 3L);
                    }
                }
                l_1593 = l_1593;
                if (l_1594)
                { /* block id: 988 */
                    int32_t l_1595[9][1];
                    int32_t *l_1610 = &l_1595[0][0];
                    int32_t *l_1611 = &l_1595[0][0];
                    int32_t *l_1612[2][2] = {{&l_1595[1][0],&l_1595[1][0]},{&l_1595[1][0],&l_1595[1][0]}};
                    int i, j;
                    for (i = 0; i < 9; i++)
                    {
                        for (j = 0; j < 1; j++)
                            l_1595[i][j] = 0x5C37D569L;
                    }
                    for (l_1595[0][0] = 8; (l_1595[0][0] >= 0); l_1595[0][0] -= 1)
                    { /* block id: 991 */
                        int16_t l_1596 = 1L;
                        uint16_t l_1597 = 1UL;
                        uint16_t l_1600[7] = {0xBC92L,0x965CL,0xBC92L,0xBC92L,0x965CL,0xBC92L,0xBC92L};
                        int16_t l_1603[3];
                        int8_t l_1604[4] = {0x72L,0x72L,0x72L,0x72L};
                        int32_t l_1605 = 1L;
                        uint8_t l_1606[10][6] = {{0xC8L,255UL,1UL,246UL,1UL,255UL},{0xC8L,255UL,1UL,246UL,1UL,255UL},{0xC8L,255UL,1UL,246UL,1UL,255UL},{0xC8L,255UL,1UL,246UL,1UL,255UL},{0xC8L,255UL,1UL,246UL,1UL,255UL},{0xC8L,255UL,1UL,246UL,1UL,255UL},{0xC8L,255UL,1UL,246UL,1UL,255UL},{0xC8L,255UL,1UL,246UL,1UL,255UL},{0xC8L,255UL,1UL,246UL,1UL,255UL},{0xC8L,255UL,1UL,246UL,1UL,255UL}};
                        uint32_t l_1607 = 0x3A3A0B51L;
                        int i, j;
                        for (i = 0; i < 3; i++)
                            l_1603[i] = 0x755CL;
                        --l_1597;
                        l_1600[0]--;
                        l_1606[1][0] |= (l_1605 = (l_1603[2] , ((*l_1593) = l_1604[1])));
                        l_1607--;
                    }
                    l_1611 = (l_1610 = (l_1593 = (void*)0));
                    l_1612[1][1] = l_1612[1][1];
                    for (l_1595[0][0] = 4; (l_1595[0][0] >= 0); l_1595[0][0] -= 1)
                    { /* block id: 1005 */
                        int32_t l_1614 = 0x60291C76L;
                        int32_t *l_1613 = &l_1614;
                        int32_t *l_1615 = &l_1614;
                        int32_t *l_1616[6] = {&l_1614,&l_1614,&l_1614,&l_1614,&l_1614,&l_1614};
                        int8_t l_1617 = 0x05L;
                        int i;
                        l_1615 = l_1613;
                        l_1610 = l_1616[2];
                        (*l_1610) ^= l_1617;
                    }
                }
                else
                { /* block id: 1010 */
                    uint16_t l_1618 = 0x6D0CL;
                    int32_t l_1619 = 0x46FD4954L;
                    int32_t l_1620 = 0x488115A9L;
                    uint16_t l_1621 = 65535UL;
                    int8_t l_1622[3];
                    int8_t l_1623 = 0L;
                    int i;
                    for (i = 0; i < 3; i++)
                        l_1622[i] = 2L;
                    (*l_1593) = ((l_1622[1] = (((l_1618 , (l_1620 = (l_1619 , 0x6846CCF7L))) , (l_1621 = 4294967294UL)) , 1L)) , l_1623);
                }
            }
            for (l_1576 = 1; (l_1576 <= 6); l_1576 += 1)
            { /* block id: 1019 */
                int32_t l_1624 = (-5L);
                int16_t l_1646 = 8L;
                uint32_t l_1647 = 4294967291UL;
                int32_t l_1648[7][9][2] = {{{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L}},{{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L}},{{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L}},{{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L}},{{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L}},{{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L}},{{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L},{(-4L),0L}}};
                int32_t *l_1652 = &l_1648[2][6][1];
                int32_t *l_1653[2][10][2] = {{{&l_1648[4][6][0],&l_1648[6][4][0]},{&l_1648[4][6][0],&l_1648[6][4][0]},{&l_1648[4][6][0],&l_1648[6][4][0]},{&l_1648[4][6][0],&l_1648[6][4][0]},{&l_1648[4][6][0],&l_1648[6][4][0]},{&l_1648[4][6][0],&l_1648[6][4][0]},{&l_1648[4][6][0],&l_1648[6][4][0]},{&l_1648[4][6][0],&l_1648[6][4][0]},{&l_1648[4][6][0],&l_1648[6][4][0]},{&l_1648[4][6][0],&l_1648[6][4][0]}},{{&l_1648[4][6][0],&l_1648[6][4][0]},{&l_1648[4][6][0],&l_1648[6][4][0]},{&l_1648[4][6][0],&l_1648[6][4][0]},{&l_1648[4][6][0],&l_1648[6][4][0]},{&l_1648[4][6][0],&l_1648[6][4][0]},{&l_1648[4][6][0],&l_1648[6][4][0]},{&l_1648[4][6][0],&l_1648[6][4][0]},{&l_1648[4][6][0],&l_1648[6][4][0]},{&l_1648[4][6][0],&l_1648[6][4][0]},{&l_1648[4][6][0],&l_1648[6][4][0]}}};
                int i, j, k;
                for (l_1624 = 6; (l_1624 >= 0); l_1624 -= 1)
                { /* block id: 1022 */
                    int32_t l_1625 = 0x24949C44L;
                    int64_t l_1634 = 0x732A9BB4213DB492L;
                    uint32_t l_1635 = 3UL;
                    int32_t *l_1638 = &l_1625;
                    int32_t *l_1639 = &l_1625;
                    for (l_1625 = 0; (l_1625 <= 6); l_1625 += 1)
                    { /* block id: 1025 */
                        uint8_t l_1626 = 0xB1L;
                        uint16_t l_1629 = 0UL;
                        int32_t l_1630 = 6L;
                        uint32_t l_1631 = 0x7B7917DCL;
                        l_1626--;
                        l_1630 |= l_1629;
                        --l_1631;
                    }
                    ++l_1635;
                    l_1639 = l_1638;
                    for (l_1634 = 2; (l_1634 <= 6); l_1634 += 1)
                    { /* block id: 1034 */
                        int32_t l_1640 = 0x25A662F2L;
                        int16_t l_1641 = 0x4D19L;
                        int8_t l_1642 = (-7L);
                        uint16_t l_1643 = 0x2EC2L;
                        l_1643--;
                    }
                }
                l_1648[3][1][1] = ((l_1646 , 0x54319CC9L) , l_1647);
                for (l_1646 = 0; (l_1646 <= 2); l_1646 += 1)
                { /* block id: 1041 */
                    int32_t l_1651 = 2L;
                    int32_t *l_1650[7] = {&l_1651,&l_1651,&l_1651,&l_1651,&l_1651,&l_1651,&l_1651};
                    int32_t **l_1649 = &l_1650[3];
                    int i;
                    l_1649 = (void*)0;
                }
                l_1653[0][5][0] = l_1652;
            }
        }
        l_1655 |= l_1654;
        for (l_1654 = (-29); (l_1654 == (-11)); l_1654 = safe_add_func_int16_t_s_s(l_1654, 3))
        { /* block id: 1050 */
            int32_t l_1658 = 1L;
            for (l_1658 = (-14); (l_1658 < 18); ++l_1658)
            { /* block id: 1053 */
                int32_t l_1661 = 0x532D770AL;
                for (l_1661 = 4; (l_1661 >= 0); l_1661 -= 1)
                { /* block id: 1056 */
                    uint64_t l_1662 = 18446744073709551615UL;
                    uint32_t l_1663[9] = {5UL,0xCCEB0FA2L,5UL,5UL,0xCCEB0FA2L,5UL,5UL,0xCCEB0FA2L,5UL};
                    uint16_t l_1664[10][1] = {{0x181CL},{0x181CL},{0x181CL},{0x181CL},{0x181CL},{0x181CL},{0x181CL},{0x181CL},{0x181CL},{0x181CL}};
                    int16_t l_1665 = 9L;
                    uint64_t l_1666[10][1][8] = {{{0xC781770166103B67L,18446744073709551615UL,18446744073709551615UL,0UL,0xC1AD80B538C8EE54L,0UL,0xFE4D81922CA114FFL,0x22FCA240604BF7CDL}},{{0xC781770166103B67L,18446744073709551615UL,18446744073709551615UL,0UL,0xC1AD80B538C8EE54L,0UL,0xFE4D81922CA114FFL,0x22FCA240604BF7CDL}},{{0xC781770166103B67L,18446744073709551615UL,18446744073709551615UL,0UL,0xC1AD80B538C8EE54L,0UL,0xFE4D81922CA114FFL,0x22FCA240604BF7CDL}},{{0xC781770166103B67L,18446744073709551615UL,18446744073709551615UL,0UL,0xC1AD80B538C8EE54L,0UL,0xFE4D81922CA114FFL,0x22FCA240604BF7CDL}},{{0xC781770166103B67L,18446744073709551615UL,18446744073709551615UL,0UL,0xC1AD80B538C8EE54L,0UL,0xFE4D81922CA114FFL,0x22FCA240604BF7CDL}},{{0xC781770166103B67L,18446744073709551615UL,18446744073709551615UL,0UL,0xC1AD80B538C8EE54L,0UL,0xFE4D81922CA114FFL,0x22FCA240604BF7CDL}},{{0xC781770166103B67L,18446744073709551615UL,18446744073709551615UL,0UL,0xC1AD80B538C8EE54L,0UL,0xFE4D81922CA114FFL,0x22FCA240604BF7CDL}},{{0xC781770166103B67L,18446744073709551615UL,18446744073709551615UL,0UL,0xC1AD80B538C8EE54L,0UL,0xFE4D81922CA114FFL,0x22FCA240604BF7CDL}},{{0xC781770166103B67L,18446744073709551615UL,18446744073709551615UL,0UL,0xC1AD80B538C8EE54L,0UL,0xFE4D81922CA114FFL,0x22FCA240604BF7CDL}},{{0xC781770166103B67L,18446744073709551615UL,18446744073709551615UL,0UL,0xC1AD80B538C8EE54L,0UL,0xFE4D81922CA114FFL,0x22FCA240604BF7CDL}}};
                    uint32_t l_1667 = 0xD2E43B6FL;
                    int32_t l_1668 = 1L;
                    int32_t *l_1674 = &l_1668;
                    int i, j, k;
                    l_1575[1][1][4] = l_1662;
                    l_1668 = (l_1575[0][0][0] = (((l_1663[4] |= 0UL) , ((l_1666[0][0][6] = (l_1665 &= l_1664[9][0])) , l_1667)) , 0x5BAAF920L));
                    for (l_1663[1] = 0; (l_1663[1] <= 4); l_1663[1] += 1)
                    { /* block id: 1065 */
                        int32_t l_1670 = 0x4A2EDFFDL;
                        int32_t *l_1669 = &l_1670;
                        int32_t *l_1671 = &l_1670;
                        int32_t *l_1672 = &l_1670;
                        int32_t *l_1673 = &l_1670;
                        int i, j;
                        l_1669 = (void*)0;
                        l_1671 = (l_1669 = p_1704->g_1309[(l_1661 + 4)][l_1661]);
                        l_1673 = l_1672;
                    }
                    l_1674 = (void*)0;
                }
            }
            l_1575[1][0][7] = 0x2B628A8AL;
        }
        l_1677 |= (l_1676 &= l_1675);
        unsigned int result = 0;
        int l_1575_i0, l_1575_i1, l_1575_i2;
        for (l_1575_i0 = 0; l_1575_i0 < 2; l_1575_i0++) {
            for (l_1575_i1 = 0; l_1575_i1 < 4; l_1575_i1++) {
                for (l_1575_i2 = 0; l_1575_i2 < 8; l_1575_i2++) {
                    result += l_1575[l_1575_i0][l_1575_i1][l_1575_i2];
                }
            }
        }
        result += l_1654;
        result += l_1655;
        result += l_1675;
        result += l_1676;
        result += l_1677;
        atomic_add(&p_1704->l_special_values[44], result);
    }
    else
    { /* block id: 1078 */
        (1 + 1);
    }
    (**p_1704->g_128) ^= (safe_rshift_func_uint16_t_u_s((((safe_rshift_func_int16_t_s_u(((***p_1704->g_638) | (safe_div_func_uint64_t_u_u(((l_1540 && (safe_div_func_int32_t_s_s((safe_mul_func_int8_t_s_s(1L, (-1L))), (safe_rshift_func_uint8_t_u_s((l_1690 == &p_1704->g_799[2][6]), (p_1704->g_351 ^= ((((*l_1701) = (safe_lshift_func_int8_t_s_s(((*l_1700) = ((p_1704->g_170 ^ (safe_mul_func_uint8_t_u_u(((*p_1704->g_694) || (safe_mod_func_int8_t_s_s((+(**p_1704->g_639)), 0x50L))), l_1218))) == 0L)), 2))) ^ l_1702) && 0x1642L))))))) , l_1703), (**p_1704->g_159)))), 14)) , l_1428) && (*p_1704->g_694)), l_1547));
    return p_1704->g_59;
}


/* ------------------------------------------ */
/* 
 * reads : p_1704->g_634 p_1704->g_440 p_1704->g_694 p_1704->g_116 p_1704->g_695 p_1704->g_433 p_1704->g_280 p_1704->g_281 p_1704->g_282 p_1704->g_639 p_1704->g_345 p_1704->g_233 p_1704->g_128 p_1704->g_146 p_1704->g_441
 * writes: p_1704->g_634 p_1704->g_668 p_1704->g_146 p_1704->g_116 p_1704->g_695 p_1704->g_124
 */
uint64_t  func_7(uint64_t  p_8, uint8_t  p_9, int32_t  p_10, uint64_t  p_11, int8_t  p_12, struct S0 * p_1704)
{ /* block id: 725 */
    int8_t l_1137 = 0x6EL;
    int32_t l_1149 = 0x6B049732L;
    int32_t l_1151 = 0x6D9DE682L;
    int32_t l_1152[10][6][4] = {{{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)}},{{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)}},{{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)}},{{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)}},{{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)}},{{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)}},{{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)}},{{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)}},{{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)}},{{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)},{(-3L),1L,1L,(-3L)}}};
    int32_t l_1153 = (-5L);
    uint32_t l_1155 = 0UL;
    uint32_t *l_1217 = (void*)0;
    int i, j, k;
    for (p_1704->g_634 = 0; (p_1704->g_634 >= 20); p_1704->g_634++)
    { /* block id: 728 */
        uint32_t l_1142 = 2UL;
        int32_t l_1147 = (-1L);
        int32_t *l_1150[4] = {&p_1704->g_632,&p_1704->g_632,&p_1704->g_632,&p_1704->g_632};
        int32_t l_1154 = 0x4B3A28E6L;
        int i;
        for (p_1704->g_668 = 12; (p_1704->g_668 >= (-20)); p_1704->g_668 = safe_sub_func_int16_t_s_s(p_1704->g_668, 1))
        { /* block id: 731 */
            int32_t l_1143 = 0x57BBA9E7L;
            int16_t *l_1144 = &p_1704->g_146;
            uint32_t *l_1145[8][3] = {{&p_1704->g_707,&l_1142,&p_1704->g_707},{&p_1704->g_707,&l_1142,&p_1704->g_707},{&p_1704->g_707,&l_1142,&p_1704->g_707},{&p_1704->g_707,&l_1142,&p_1704->g_707},{&p_1704->g_707,&l_1142,&p_1704->g_707},{&p_1704->g_707,&l_1142,&p_1704->g_707},{&p_1704->g_707,&l_1142,&p_1704->g_707},{&p_1704->g_707,&l_1142,&p_1704->g_707}};
            int32_t l_1146 = 0x259B4C73L;
            int32_t *l_1148[4];
            int i, j;
            for (i = 0; i < 4; i++)
                l_1148[i] = &p_1704->g_632;
            l_1149 &= (l_1147 = (safe_mul_func_int16_t_s_s((p_1704->g_440 && (((*p_1704->g_694) = (((((+((l_1137 > (safe_sub_func_uint8_t_u_u(((safe_lshift_func_uint8_t_u_s((((0xFAL ^ ((l_1142 , (((((*l_1144) = l_1143) , ((p_8 , (1L != ((+l_1137) , (((((l_1143 = (0x91L | 0xA7L)) && p_12) < l_1146) | (*p_1704->g_694)) != l_1146)))) == GROUP_DIVERGE(2, 1))) >= l_1142) == 0x0EL)) && p_1704->g_433)) & l_1142) < p_11), 5)) , p_1704->g_634), p_11))) > p_8)) ^ 0x174BL) | p_12) > 0x07L) | (**p_1704->g_280))) , (**p_1704->g_639))), p_12)));
            (*p_1704->g_128) = &l_1149;
        }
        --l_1155;
        if ((atomic_inc(&p_1704->l_atomic_input[17]) == 0))
        { /* block id: 741 */
            int32_t l_1158[8] = {0x01160F12L,0x01160F12L,0x01160F12L,0x01160F12L,0x01160F12L,0x01160F12L,0x01160F12L,0x01160F12L};
            int32_t *l_1200 = &l_1158[4];
            int32_t *l_1201 = &l_1158[7];
            int8_t l_1202[1][1];
            int16_t l_1203 = (-2L);
            int32_t l_1204[10][10][2] = {{{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L}},{{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L}},{{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L}},{{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L}},{{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L}},{{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L}},{{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L}},{{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L}},{{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L}},{{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L},{5L,5L}}};
            uint8_t l_1205 = 4UL;
            int64_t l_1206 = 0x12A68FF3B0DB0137L;
            int i, j, k;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 1; j++)
                    l_1202[i][j] = 0x01L;
            }
            for (l_1158[0] = (-20); (l_1158[0] > 6); l_1158[0] = safe_add_func_int8_t_s_s(l_1158[0], 9))
            { /* block id: 744 */
                int32_t l_1162 = 1L;
                int32_t *l_1161[2][4][9] = {{{(void*)0,&l_1162,(void*)0,(void*)0,&l_1162,(void*)0,(void*)0,&l_1162,(void*)0},{(void*)0,&l_1162,(void*)0,(void*)0,&l_1162,(void*)0,(void*)0,&l_1162,(void*)0},{(void*)0,&l_1162,(void*)0,(void*)0,&l_1162,(void*)0,(void*)0,&l_1162,(void*)0},{(void*)0,&l_1162,(void*)0,(void*)0,&l_1162,(void*)0,(void*)0,&l_1162,(void*)0}},{{(void*)0,&l_1162,(void*)0,(void*)0,&l_1162,(void*)0,(void*)0,&l_1162,(void*)0},{(void*)0,&l_1162,(void*)0,(void*)0,&l_1162,(void*)0,(void*)0,&l_1162,(void*)0},{(void*)0,&l_1162,(void*)0,(void*)0,&l_1162,(void*)0,(void*)0,&l_1162,(void*)0},{(void*)0,&l_1162,(void*)0,(void*)0,&l_1162,(void*)0,(void*)0,&l_1162,(void*)0}}};
                int i, j, k;
                l_1161[0][0][3] = (void*)0;
            }
            for (l_1158[0] = 0; (l_1158[0] < (-14)); l_1158[0]--)
            { /* block id: 749 */
                int32_t l_1165[4] = {0L,0L,0L,0L};
                int32_t *l_1198[4][1][8] = {{{&l_1165[2],&l_1165[2],&l_1165[2],&l_1165[2],&l_1165[2],&l_1165[2],&l_1165[2],&l_1165[2]}},{{&l_1165[2],&l_1165[2],&l_1165[2],&l_1165[2],&l_1165[2],&l_1165[2],&l_1165[2],&l_1165[2]}},{{&l_1165[2],&l_1165[2],&l_1165[2],&l_1165[2],&l_1165[2],&l_1165[2],&l_1165[2],&l_1165[2]}},{{&l_1165[2],&l_1165[2],&l_1165[2],&l_1165[2],&l_1165[2],&l_1165[2],&l_1165[2],&l_1165[2]}}};
                int32_t *l_1199 = &l_1165[0];
                int i, j, k;
                for (l_1165[2] = (-23); (l_1165[2] != (-20)); l_1165[2] = safe_add_func_int64_t_s_s(l_1165[2], 3))
                { /* block id: 752 */
                    uint64_t l_1168 = 18446744073709551611UL;
                    uint16_t l_1192 = 1UL;
                    uint64_t l_1193 = 0x322226DB29F340A7L;
                    int32_t l_1195 = 6L;
                    int32_t *l_1194 = &l_1195;
                    int32_t *l_1196 = &l_1195;
                    int32_t *l_1197 = &l_1195;
                    if (l_1168)
                    { /* block id: 753 */
                        uint8_t l_1169 = 255UL;
                        uint64_t l_1170 = 0x83D58D830E70C065L;
                        int16_t l_1171 = 7L;
                        int16_t l_1172 = (-1L);
                        int32_t l_1173 = 3L;
                        int32_t l_1174 = (-10L);
                        int64_t l_1175[5];
                        int64_t l_1176[9] = {0x181EC999F9B246FEL,0x181EC999F9B246FEL,0x181EC999F9B246FEL,0x181EC999F9B246FEL,0x181EC999F9B246FEL,0x181EC999F9B246FEL,0x181EC999F9B246FEL,0x181EC999F9B246FEL,0x181EC999F9B246FEL};
                        uint8_t l_1177 = 251UL;
                        uint8_t l_1180[1][10][3] = {{{0xC8L,1UL,0xC8L},{0xC8L,1UL,0xC8L},{0xC8L,1UL,0xC8L},{0xC8L,1UL,0xC8L},{0xC8L,1UL,0xC8L},{0xC8L,1UL,0xC8L},{0xC8L,1UL,0xC8L},{0xC8L,1UL,0xC8L},{0xC8L,1UL,0xC8L},{0xC8L,1UL,0xC8L}}};
                        int32_t l_1181 = 0L;
                        int32_t *l_1182[2][5][7] = {{{&l_1173,&l_1173,&l_1173,&l_1173,&l_1173,&l_1173,&l_1173},{&l_1173,&l_1173,&l_1173,&l_1173,&l_1173,&l_1173,&l_1173},{&l_1173,&l_1173,&l_1173,&l_1173,&l_1173,&l_1173,&l_1173},{&l_1173,&l_1173,&l_1173,&l_1173,&l_1173,&l_1173,&l_1173},{&l_1173,&l_1173,&l_1173,&l_1173,&l_1173,&l_1173,&l_1173}},{{&l_1173,&l_1173,&l_1173,&l_1173,&l_1173,&l_1173,&l_1173},{&l_1173,&l_1173,&l_1173,&l_1173,&l_1173,&l_1173,&l_1173},{&l_1173,&l_1173,&l_1173,&l_1173,&l_1173,&l_1173,&l_1173},{&l_1173,&l_1173,&l_1173,&l_1173,&l_1173,&l_1173,&l_1173},{&l_1173,&l_1173,&l_1173,&l_1173,&l_1173,&l_1173,&l_1173}}};
                        int i, j, k;
                        for (i = 0; i < 5; i++)
                            l_1175[i] = 0x5BC3F460AA2B5EE4L;
                        l_1171 = (l_1170 = l_1169);
                        l_1181 &= ((l_1177++) , l_1180[0][6][2]);
                        l_1182[1][0][1] = (void*)0;
                    }
                    else
                    { /* block id: 759 */
                        int64_t l_1183 = 0x0174E17769982C36L;
                        int32_t l_1184[6][2][2] = {{{0x42EEF36DL,0x42EEF36DL},{0x42EEF36DL,0x42EEF36DL}},{{0x42EEF36DL,0x42EEF36DL},{0x42EEF36DL,0x42EEF36DL}},{{0x42EEF36DL,0x42EEF36DL},{0x42EEF36DL,0x42EEF36DL}},{{0x42EEF36DL,0x42EEF36DL},{0x42EEF36DL,0x42EEF36DL}},{{0x42EEF36DL,0x42EEF36DL},{0x42EEF36DL,0x42EEF36DL}},{{0x42EEF36DL,0x42EEF36DL},{0x42EEF36DL,0x42EEF36DL}}};
                        int32_t l_1186[3][4] = {{0L,0x63DA1C2EL,0L,0L},{0L,0x63DA1C2EL,0L,0L},{0L,0x63DA1C2EL,0L,0L}};
                        int32_t *l_1185[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        int32_t *l_1187 = &l_1186[0][3];
                        uint8_t l_1188 = 0x6EL;
                        int32_t *l_1189 = &l_1186[2][3];
                        int32_t *l_1190 = &l_1186[2][1];
                        int32_t *l_1191 = &l_1186[0][0];
                        int i, j, k;
                        l_1184[1][0][0] = l_1183;
                        l_1187 = l_1185[1];
                        l_1191 = (l_1188 , (l_1190 = l_1189));
                    }
                    l_1193 ^= l_1192;
                    l_1197 = (l_1196 = l_1194);
                }
                l_1199 = l_1198[1][0][5];
            }
            l_1201 = l_1200;
            l_1206 = ((l_1202[0][0] , l_1203) , (l_1204[4][4][1] , l_1205));
            unsigned int result = 0;
            int l_1158_i0;
            for (l_1158_i0 = 0; l_1158_i0 < 8; l_1158_i0++) {
                result += l_1158[l_1158_i0];
            }
            int l_1202_i0, l_1202_i1;
            for (l_1202_i0 = 0; l_1202_i0 < 1; l_1202_i0++) {
                for (l_1202_i1 = 0; l_1202_i1 < 1; l_1202_i1++) {
                    result += l_1202[l_1202_i0][l_1202_i1];
                }
            }
            result += l_1203;
            int l_1204_i0, l_1204_i1, l_1204_i2;
            for (l_1204_i0 = 0; l_1204_i0 < 10; l_1204_i0++) {
                for (l_1204_i1 = 0; l_1204_i1 < 10; l_1204_i1++) {
                    for (l_1204_i2 = 0; l_1204_i2 < 2; l_1204_i2++) {
                        result += l_1204[l_1204_i0][l_1204_i1][l_1204_i2];
                    }
                }
            }
            result += l_1205;
            result += l_1206;
            atomic_add(&p_1704->l_special_values[17], result);
        }
        else
        { /* block id: 773 */
            (1 + 1);
        }
        l_1152[2][3][3] = ((safe_add_func_int64_t_s_s(p_1704->g_146, 18446744073709551615UL)) ^ (safe_div_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((0x150A906A6897F43EL >= (safe_lshift_func_uint16_t_u_u((1L > p_1704->g_441), 8))), 251UL)), (l_1153 && (l_1150[1] == (((safe_mul_func_uint8_t_u_u(0UL, (*p_1704->g_345))) , p_9) , l_1217))))));
    }
    return l_1155;
}


/* ------------------------------------------ */
/* 
 * reads : p_1704->g_46 p_1704->g_219 p_1704->g_788 p_1704->g_71 p_1704->g_953 p_1704->g_42 p_1704->g_296 p_1704->g_639 p_1704->g_345 p_1704->g_233 p_1704->g_234 p_1704->g_935 p_1704->g_695 p_1704->g_116 p_1704->g_644 p_1704->g_645 p_1704->g_281 p_1704->g_282 p_1704->g_351 p_1704->g_159 p_1704->g_160 p_1704->g_433 p_1704->g_638 p_1704->g_128 p_1704->g_933 p_1704->g_934 p_1704->g_623 p_1704->g_624 p_1704->g_694 p_1704->g_52 p_1704->g_462 p_1704->g_440 p_1704->g_211 p_1704->g_684 p_1704->g_123 p_1704->g_438 p_1704->g_615 p_1704->g_124 p_1704->g_443 p_1704->g_444 p_1704->g_632 p_1704->g_643 p_1704->g_646 p_1704->g_783 p_1704->g_302 p_1704->g_1095 p_1704->g_734 p_1704->g_439 p_1704->g_2
 * writes: p_1704->g_46 p_1704->g_634 p_1704->g_71 p_1704->g_953 p_1704->g_374 p_1704->g_235 p_1704->g_694 p_1704->g_146 p_1704->g_787 p_1704->g_233 p_1704->g_116 p_1704->g_296 p_1704->g_124 p_1704->g_734 p_1704->g_1057 p_1704->g_42 p_1704->g_159 p_1704->g_433 p_1704->g_624 p_1704->g_351 p_1704->g_443 p_1704->g_444 p_1704->g_632 p_1704->g_707 p_1704->g_302
 */
uint16_t  func_17(uint32_t  p_18, int8_t  p_19, int32_t  p_20, struct S0 * p_1704)
{ /* block id: 610 */
    int32_t *l_954[8][2][6] = {{{&p_1704->g_2[4],&p_1704->g_60,&p_1704->g_632,&p_1704->g_52,&p_1704->g_634,&p_1704->g_52},{&p_1704->g_2[4],&p_1704->g_60,&p_1704->g_632,&p_1704->g_52,&p_1704->g_634,&p_1704->g_52}},{{&p_1704->g_2[4],&p_1704->g_60,&p_1704->g_632,&p_1704->g_52,&p_1704->g_634,&p_1704->g_52},{&p_1704->g_2[4],&p_1704->g_60,&p_1704->g_632,&p_1704->g_52,&p_1704->g_634,&p_1704->g_52}},{{&p_1704->g_2[4],&p_1704->g_60,&p_1704->g_632,&p_1704->g_52,&p_1704->g_634,&p_1704->g_52},{&p_1704->g_2[4],&p_1704->g_60,&p_1704->g_632,&p_1704->g_52,&p_1704->g_634,&p_1704->g_52}},{{&p_1704->g_2[4],&p_1704->g_60,&p_1704->g_632,&p_1704->g_52,&p_1704->g_634,&p_1704->g_52},{&p_1704->g_2[4],&p_1704->g_60,&p_1704->g_632,&p_1704->g_52,&p_1704->g_634,&p_1704->g_52}},{{&p_1704->g_2[4],&p_1704->g_60,&p_1704->g_632,&p_1704->g_52,&p_1704->g_634,&p_1704->g_52},{&p_1704->g_2[4],&p_1704->g_60,&p_1704->g_632,&p_1704->g_52,&p_1704->g_634,&p_1704->g_52}},{{&p_1704->g_2[4],&p_1704->g_60,&p_1704->g_632,&p_1704->g_52,&p_1704->g_634,&p_1704->g_52},{&p_1704->g_2[4],&p_1704->g_60,&p_1704->g_632,&p_1704->g_52,&p_1704->g_634,&p_1704->g_52}},{{&p_1704->g_2[4],&p_1704->g_60,&p_1704->g_632,&p_1704->g_52,&p_1704->g_634,&p_1704->g_52},{&p_1704->g_2[4],&p_1704->g_60,&p_1704->g_632,&p_1704->g_52,&p_1704->g_634,&p_1704->g_52}},{{&p_1704->g_2[4],&p_1704->g_60,&p_1704->g_632,&p_1704->g_52,&p_1704->g_634,&p_1704->g_52},{&p_1704->g_2[4],&p_1704->g_60,&p_1704->g_632,&p_1704->g_52,&p_1704->g_634,&p_1704->g_52}}};
    uint32_t *l_1043[8][6] = {{&p_1704->g_684,(void*)0,(void*)0,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684},{&p_1704->g_684,(void*)0,(void*)0,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684},{&p_1704->g_684,(void*)0,(void*)0,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684},{&p_1704->g_684,(void*)0,(void*)0,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684},{&p_1704->g_684,(void*)0,(void*)0,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684},{&p_1704->g_684,(void*)0,(void*)0,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684},{&p_1704->g_684,(void*)0,(void*)0,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684},{&p_1704->g_684,(void*)0,(void*)0,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684}};
    uint32_t **l_1042[10][1] = {{&l_1043[2][0]},{&l_1043[2][0]},{&l_1043[2][0]},{&l_1043[2][0]},{&l_1043[2][0]},{&l_1043[2][0]},{&l_1043[2][0]},{&l_1043[2][0]},{&l_1043[2][0]},{&l_1043[2][0]}};
    uint32_t *l_1056 = &p_1704->g_211[3];
    uint64_t **l_1063 = &p_1704->g_160[2];
    int64_t l_1068 = 0x55A4A53720A743DDL;
    uint8_t l_1080 = 0x8DL;
    uint8_t l_1127 = 1UL;
    int i, j, k;
    l_954[3][1][1] = l_954[5][0][4];
    for (p_1704->g_46 = 0; (p_1704->g_46 <= 6); p_1704->g_46 += 1)
    { /* block id: 614 */
        int32_t l_956 = 1L;
        int32_t ***l_1045 = &p_1704->g_128;
        int16_t ***l_1062 = &p_1704->g_302;
        int i;
        (*p_1704->g_788) = p_1704->g_219[(p_1704->g_46 + 1)];
        for (p_19 = 0; (p_19 <= 6); p_19 += 1)
        { /* block id: 618 */
            uint16_t *l_983 = &p_1704->g_116;
            int32_t l_1004 = 1L;
            uint64_t l_1006 = 1UL;
            int64_t l_1032[10][9] = {{(-1L),0x107173355F0CCC5CL,0x6E8D7818804CFE17L,(-1L),0x5CC47845024CEC3CL,0x14F4D3B2DF9F2D61L,(-1L),(-4L),(-1L)},{(-1L),0x107173355F0CCC5CL,0x6E8D7818804CFE17L,(-1L),0x5CC47845024CEC3CL,0x14F4D3B2DF9F2D61L,(-1L),(-4L),(-1L)},{(-1L),0x107173355F0CCC5CL,0x6E8D7818804CFE17L,(-1L),0x5CC47845024CEC3CL,0x14F4D3B2DF9F2D61L,(-1L),(-4L),(-1L)},{(-1L),0x107173355F0CCC5CL,0x6E8D7818804CFE17L,(-1L),0x5CC47845024CEC3CL,0x14F4D3B2DF9F2D61L,(-1L),(-4L),(-1L)},{(-1L),0x107173355F0CCC5CL,0x6E8D7818804CFE17L,(-1L),0x5CC47845024CEC3CL,0x14F4D3B2DF9F2D61L,(-1L),(-4L),(-1L)},{(-1L),0x107173355F0CCC5CL,0x6E8D7818804CFE17L,(-1L),0x5CC47845024CEC3CL,0x14F4D3B2DF9F2D61L,(-1L),(-4L),(-1L)},{(-1L),0x107173355F0CCC5CL,0x6E8D7818804CFE17L,(-1L),0x5CC47845024CEC3CL,0x14F4D3B2DF9F2D61L,(-1L),(-4L),(-1L)},{(-1L),0x107173355F0CCC5CL,0x6E8D7818804CFE17L,(-1L),0x5CC47845024CEC3CL,0x14F4D3B2DF9F2D61L,(-1L),(-4L),(-1L)},{(-1L),0x107173355F0CCC5CL,0x6E8D7818804CFE17L,(-1L),0x5CC47845024CEC3CL,0x14F4D3B2DF9F2D61L,(-1L),(-4L),(-1L)},{(-1L),0x107173355F0CCC5CL,0x6E8D7818804CFE17L,(-1L),0x5CC47845024CEC3CL,0x14F4D3B2DF9F2D61L,(-1L),(-4L),(-1L)}};
            int i, j;
            for (p_1704->g_71 = 2; (p_1704->g_71 <= 6); p_1704->g_71 += 1)
            { /* block id: 621 */
                uint32_t l_957 = 0x982E033CL;
                uint16_t **l_984 = &l_983;
                int32_t l_990 = 0x53A4ECA8L;
                int32_t **l_994 = &l_954[4][1][3];
                uint64_t l_1033 = 0xB65265FE91DB69DDL;
                int32_t l_1069 = (-8L);
                int i, j;
                for (p_1704->g_953 = 0; (p_1704->g_953 <= 6); p_1704->g_953 += 1)
                { /* block id: 624 */
                    uint32_t l_955 = 4294967286UL;
                    for (p_1704->g_374 = 6; (p_1704->g_374 >= 1); p_1704->g_374 -= 1)
                    { /* block id: 627 */
                        int i, j;
                        if (p_1704->g_42[(p_1704->g_953 + 2)][p_1704->g_953])
                            break;
                        l_955 &= p_1704->g_296[p_19];
                        --l_957;
                    }
                }
                if ((+(l_956 = (p_1704->g_42[p_1704->g_46][p_1704->g_71] == (safe_lshift_func_uint16_t_u_u((safe_sub_func_uint32_t_u_u((safe_mod_func_uint16_t_u_u(((((safe_div_func_int64_t_s_s((safe_unary_minus_func_uint64_t_u((p_1704->g_42[(p_1704->g_71 + 1)][p_1704->g_71] , (p_1704->g_296[p_1704->g_71] <= ((safe_rshift_func_int8_t_s_u(((((safe_sub_func_uint8_t_u_u(((p_1704->g_235 = p_1704->g_219[(p_1704->g_46 + 1)]) , (0x42CC84F2L > l_956)), (safe_rshift_func_int8_t_s_s((**p_1704->g_639), 4)))) > (safe_sub_func_uint16_t_u_u(((safe_div_func_int16_t_s_s(0x0838L, ((safe_mod_func_int16_t_s_s(((p_1704->g_694 = ((*l_984) = l_983)) == (void*)0), p_18)) ^ p_20))) , l_956), FAKE_DIVERGE(p_1704->group_2_offset, get_group_id(2), 10)))) , p_20) | p_18), 2)) | 0L))))), p_1704->g_234)) && 0xFEL) | l_956) , 9UL), p_18)), 0x28A43AFBL)), 3))))))
                { /* block id: 637 */
                    uint16_t l_989 = 65526UL;
                    int32_t l_991[5];
                    int32_t **l_1005 = &p_1704->g_624[1];
                    uint32_t *l_1028 = &p_1704->g_684;
                    int i;
                    for (i = 0; i < 5; i++)
                        l_991[i] = 1L;
                    if ((atomic_inc(&p_1704->l_atomic_input[59]) == 1))
                    { /* block id: 639 */
                        int32_t l_985 = 1L;
                        int8_t l_986 = 0x37L;
                        uint64_t l_987 = 0x2B74E8D2D307F2CCL;
                        int32_t l_988 = 1L;
                        l_988 |= (l_987 = (l_985 , l_986));
                        unsigned int result = 0;
                        result += l_985;
                        result += l_986;
                        result += l_987;
                        result += l_988;
                        atomic_add(&p_1704->l_special_values[59], result);
                    }
                    else
                    { /* block id: 642 */
                        (1 + 1);
                    }
                    for (p_1704->g_146 = 6; (p_1704->g_146 >= 2); p_1704->g_146 -= 1)
                    { /* block id: 647 */
                        l_990 = l_989;
                        l_956 ^= (l_991[0] = p_19);
                        (*p_1704->g_935) = l_954[5][0][4];
                    }
                    if (((l_1006 = (0x19E5L || (safe_lshift_func_int8_t_s_s(((l_994 == ((safe_lshift_func_int8_t_s_u((l_956 || ((safe_sub_func_uint16_t_u_u(l_991[0], (safe_mod_func_uint16_t_u_u(0x1250L, (p_20 ^ (((safe_unary_minus_func_uint16_t_u(p_18)) > 0x3C6BL) <= (l_1004 || p_19))))))) , 0x97366A3BL)), p_1704->g_695)) , l_1005)) || 1UL), p_20)))) | l_1004))
                    { /* block id: 654 */
                        return p_19;
                    }
                    else
                    { /* block id: 656 */
                        int8_t l_1020 = 0x38L;
                        int32_t *l_1025 = &p_1704->g_953;
                        uint8_t *l_1029 = &p_1704->g_235;
                        int64_t *l_1030 = &p_1704->g_296[1];
                        int32_t l_1031 = (-5L);
                        l_1004 = p_19;
                        if (p_19)
                            break;
                        l_1004 = (safe_rshift_func_int16_t_s_u(((safe_sub_func_uint8_t_u_u(p_20, ((**p_1704->g_639) = p_18))) || (safe_unary_minus_func_uint16_t_u((((safe_mod_func_int32_t_s_s((safe_sub_func_uint8_t_u_u((((l_1031 = ((((*l_1030) = (((--(**l_984)) , 3L) , (safe_mul_func_int16_t_s_s((p_20 == l_1020), (p_19 >= (safe_sub_func_uint8_t_u_u(p_20, (safe_mul_func_int16_t_s_s(((((*l_1025) ^= (-4L)) , ((safe_sub_func_uint8_t_u_u(((*l_1029) = (((0x11E7L != (***p_1704->g_644)) , l_1028) != (void*)0)), p_20)) , p_1704->g_351)) || 1L), p_20))))))))) >= l_956) && (**p_1704->g_159))) && p_20) <= p_1704->g_433), (***p_1704->g_638))), p_20)) & FAKE_DIVERGE(p_1704->local_0_offset, get_local_id(0), 10)) ^ 0x19E6E365L)))), 15));
                        ++l_1033;
                    }
                    for (l_956 = 2; (l_956 >= 0); l_956 -= 1)
                    { /* block id: 670 */
                        uint16_t l_1036 = 0x66A0L;
                        (*p_1704->g_128) = (void*)0;
                        l_991[0] = (l_990 &= (-9L));
                        l_1036 = (-1L);
                    }
                }
                else
                { /* block id: 676 */
                    uint8_t l_1037[8] = {246UL,246UL,246UL,246UL,246UL,246UL,246UL,246UL};
                    uint32_t *l_1041 = &p_1704->g_684;
                    uint32_t **l_1040 = &l_1041;
                    uint32_t ***l_1044 = &l_1042[1][0];
                    int i;
                    if (l_1037[4])
                        break;
                    if ((!(safe_mul_func_int16_t_s_s((((8UL & (l_1040 != ((*l_1044) = l_1042[4][0]))) , &p_1704->g_639) != &p_1704->g_639), ((*p_1704->g_933) == l_1045)))))
                    { /* block id: 679 */
                        uint64_t **l_1058 = &p_1704->g_160[1];
                        int32_t l_1059 = (-1L);
                        uint32_t *l_1079 = &p_1704->g_707;
                        int i, j;
                        (*l_994) = (*p_1704->g_623);
                        (**l_1045) = func_88((((safe_mod_func_uint8_t_u_u((p_1704->g_734 = l_1037[4]), ((safe_mod_func_uint8_t_u_u((+(safe_div_func_uint64_t_u_u(((((p_1704->g_1057 = (l_1056 = &p_18)) != &p_1704->g_211[0]) && ((void*)0 != l_1058)) <= ((p_19 && l_1059) , ((p_1704->g_42[(p_19 + 2)][p_19] = (((((((((safe_lshift_func_uint16_t_u_u(0x5EBFL, 11)) , l_1062) != (void*)0) && (***p_1704->g_638)) | l_1032[2][7]) | GROUP_DIVERGE(0, 1)) == p_19) & 0x26L) != (*p_1704->g_694))) == p_19))), p_1704->g_52))), (***p_1704->g_638))) , p_1704->g_219[(p_1704->g_46 + 1)]))) && p_1704->g_42[(p_19 + 2)][p_19]) & 0L), l_1063, l_1041, p_19, p_19, p_1704);
                        l_990 &= (+(safe_sub_func_uint16_t_u_u((!((1L < (safe_add_func_int16_t_s_s(p_18, ((*p_1704->g_694) || p_19)))) != (l_1068 < (~((*l_1058) != (void*)0))))), l_1069)));
                        l_1004 = (((*l_1079) = ((safe_mod_func_uint8_t_u_u(((*p_1704->g_783) == ((GROUP_DIVERGE(0, 1) && (((safe_sub_func_uint64_t_u_u((safe_unary_minus_func_uint16_t_u((safe_mul_func_int16_t_s_s(p_18, l_1032[2][7])))), (p_19 ^ 65528UL))) > (*p_1704->g_694)) > FAKE_DIVERGE(p_1704->local_0_offset, get_local_id(0), 10))) , (*p_1704->g_128))), p_20)) <= (safe_mod_func_int64_t_s_s((((l_1037[4] >= (***l_1045)) == (*p_1704->g_345)) & 0x08D81D4D7C5A5CA7L), 4UL)))) || l_1080);
                    }
                    else
                    { /* block id: 689 */
                        int8_t *l_1100 = &p_1704->g_433;
                        int32_t l_1101 = 0x3FE388CFL;
                        l_1101 = ((safe_lshift_func_uint16_t_u_s((((*l_1100) = (((safe_lshift_func_int8_t_s_u((safe_rshift_func_int8_t_s_u((((*l_1062) = p_1704->g_302) != (**p_1704->g_643)), 0)), 4)) , 3L) > (((((safe_add_func_int32_t_s_s((GROUP_DIVERGE(0, 1) <= p_1704->g_443), (l_1004 ^= ((safe_rshift_func_uint8_t_u_s(p_19, 4)) || 0x56L)))) | (safe_div_func_int8_t_s_s((safe_add_func_int16_t_s_s(p_1704->g_1095, (5L || ((((**p_1704->g_639) = (((safe_lshift_func_uint8_t_u_u(((safe_sub_func_int32_t_s_s((-1L), p_18)) , p_18), 7)) ^ 65535UL) ^ l_1006)) > l_1006) | l_1037[4])))), FAKE_DIVERGE(p_1704->global_2_offset, get_global_id(2), 10)))) ^ p_18) , 4L) <= p_1704->g_42[6][2]))) || 0x39L), p_1704->g_211[0])) <= p_18);
                    }
                    return p_20;
                }
            }
            return p_1704->g_42[p_19][p_1704->g_46];
        }
    }
    for (p_1704->g_953 = 0; (p_1704->g_953 <= 3); p_1704->g_953 += 1)
    { /* block id: 704 */
        uint32_t *l_1102[7][7] = {{&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684},{&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684},{&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684},{&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684},{&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684},{&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684},{&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684}};
        int32_t l_1103 = 0x753D5466L;
        int32_t l_1106[8];
        int32_t l_1128 = 0L;
        int i, j;
        for (i = 0; i < 8; i++)
            l_1106[i] = 0x3C2B9FEAL;
        l_1103 = ((void*)0 == l_1102[3][4]);
        l_1106[6] |= (safe_mod_func_int8_t_s_s((**p_1704->g_639), (l_1103 = (*p_1704->g_345))));
        (*p_1704->g_935) = l_954[4][0][4];
        for (l_1068 = 3; (l_1068 >= 0); l_1068 -= 1)
        { /* block id: 711 */
            int32_t l_1126 = 0x53088ECBL;
            uint8_t *l_1129 = &l_1127;
            int i, j;
            for (p_1704->g_734 = 0; (p_1704->g_734 <= 0); p_1704->g_734 += 1)
            { /* block id: 714 */
                int i, j, k;
                return p_1704->g_439[p_1704->g_734][p_1704->g_734][(p_1704->g_734 + 1)];
            }
            l_1126 = (p_18 < ((*l_1129) = ((p_19 && (safe_sub_func_int16_t_s_s((((safe_lshift_func_int8_t_s_s((p_20 <= (l_1128 |= (((l_1106[4] || 18446744073709551609UL) >= (~((***p_1704->g_638) > (safe_mul_func_uint16_t_u_u((safe_unary_minus_func_int32_t_s(((safe_rshift_func_int16_t_s_s(((safe_mod_func_int32_t_s_s(((p_20 >= 0x70E37ED695F83DC6L) <= (safe_mul_func_uint8_t_u_u((safe_mod_func_uint32_t_u_u((safe_mul_func_int16_t_s_s((((((safe_add_func_uint32_t_u_u(0xA7442375L, l_1126)) >= 0x4364FD73L) , p_1704->g_233[2]) == l_1106[1]) , 0x7148L), p_20)), p_20)), l_1127))), 8L)) == p_18), 2)) , p_19))), 65528UL))))) <= l_1103))), 3)) , (void*)0) != (void*)0), l_1126))) < p_1704->g_2[7])));
        }
    }
    return p_20;
}


/* ------------------------------------------ */
/* 
 * reads : p_1704->g_128
 * writes: p_1704->g_124
 */
int32_t  func_22(uint16_t  p_23, uint32_t  p_24, uint16_t  p_25, uint16_t  p_26, uint32_t  p_27, struct S0 * p_1704)
{ /* block id: 603 */
    uint32_t *l_944 = (void*)0;
    uint32_t *l_945 = &p_1704->g_707;
    uint64_t *l_948 = &p_1704->g_71;
    int32_t l_951 = 0x0B0AD5ACL;
    (*p_1704->g_128) = &l_951;
    l_951 |= p_27;
    return p_27;
}


/* ------------------------------------------ */
/* 
 * reads : p_1704->g_46 p_1704->g_52 p_1704->g_42 p_1704->g_71 p_1704->g_128 p_1704->g_623 p_1704->g_624 p_1704->g_124 p_1704->g_280 p_1704->g_281 p_1704->g_282 p_1704->g_734 p_1704->g_462 p_1704->g_695 p_1704->g_638 p_1704->g_639 p_1704->g_345 p_1704->g_233 p_1704->g_694 p_1704->g_235 p_1704->g_783 p_1704->g_351 p_1704->g_684 p_1704->g_123 p_1704->g_374 p_1704->g_644 p_1704->g_645 p_1704->g_116 p_1704->g_159 p_1704->g_160 p_1704->g_146 p_1704->g_440
 * writes: p_1704->g_46 p_1704->g_52 p_1704->g_60 p_1704->g_71 p_1704->g_124 p_1704->g_734 p_1704->g_235 p_1704->g_351 p_1704->g_374 p_1704->g_668 p_1704->g_233 p_1704->g_42 p_1704->g_128 p_1704->g_160
 */
int64_t  func_33(int32_t  p_34, uint64_t * p_35, uint32_t  p_36, struct S0 * p_1704)
{ /* block id: 12 */
    int16_t l_63[4][4] = {{(-1L),(-1L),0x34C0L,0x4D98L},{(-1L),(-1L),0x34C0L,0x4D98L},{(-1L),(-1L),0x34C0L,0x4D98L},{(-1L),(-1L),0x34C0L,0x4D98L}};
    int32_t l_69 = 8L;
    int32_t *l_712 = (void*)0;
    int32_t l_814[5];
    int32_t ***l_839 = &p_1704->g_128;
    int8_t ***l_840 = &p_1704->g_639;
    int32_t l_887 = 0x4FFCDFC6L;
    int32_t l_888 = (-1L);
    uint16_t l_889 = 0x1488L;
    int32_t *l_900 = &l_887;
    int8_t l_909 = 0x28L;
    int32_t *l_910[4];
    uint16_t l_911 = 0x25A1L;
    uint64_t **l_916 = &p_1704->g_160[1];
    uint64_t ***l_917[9][2] = {{&p_1704->g_159,&p_1704->g_159},{&p_1704->g_159,&p_1704->g_159},{&p_1704->g_159,&p_1704->g_159},{&p_1704->g_159,&p_1704->g_159},{&p_1704->g_159,&p_1704->g_159},{&p_1704->g_159,&p_1704->g_159},{&p_1704->g_159,&p_1704->g_159},{&p_1704->g_159,&p_1704->g_159},{&p_1704->g_159,&p_1704->g_159}};
    uint64_t **l_918[7] = {&p_1704->g_160[2],&p_1704->g_160[2],&p_1704->g_160[2],&p_1704->g_160[2],&p_1704->g_160[2],&p_1704->g_160[2],&p_1704->g_160[2]};
    uint8_t l_919 = 7UL;
    int32_t l_930[10] = {0L,0L,0L,0L,0L,0L,0L,0L,0L,0L};
    int i, j;
    for (i = 0; i < 5; i++)
        l_814[i] = 1L;
    for (i = 0; i < 4; i++)
        l_910[i] = &p_1704->g_634;
    for (p_1704->g_46 = 0; (p_1704->g_46 <= (-23)); --p_1704->g_46)
    { /* block id: 15 */
        int32_t l_68[1][10][4] = {{{0x51E91BE6L,0x6CD85683L,0x51E91BE6L,0x51E91BE6L},{0x51E91BE6L,0x6CD85683L,0x51E91BE6L,0x51E91BE6L},{0x51E91BE6L,0x6CD85683L,0x51E91BE6L,0x51E91BE6L},{0x51E91BE6L,0x6CD85683L,0x51E91BE6L,0x51E91BE6L},{0x51E91BE6L,0x6CD85683L,0x51E91BE6L,0x51E91BE6L},{0x51E91BE6L,0x6CD85683L,0x51E91BE6L,0x51E91BE6L},{0x51E91BE6L,0x6CD85683L,0x51E91BE6L,0x51E91BE6L},{0x51E91BE6L,0x6CD85683L,0x51E91BE6L,0x51E91BE6L},{0x51E91BE6L,0x6CD85683L,0x51E91BE6L,0x51E91BE6L},{0x51E91BE6L,0x6CD85683L,0x51E91BE6L,0x51E91BE6L}}};
        uint64_t *l_86 = &p_1704->g_42[6][2];
        uint64_t **l_85 = &l_86;
        int32_t l_812 = 0x54F00776L;
        int32_t l_818[3];
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_818[i] = 1L;
        for (p_36 = 25; (p_36 > 24); --p_36)
        { /* block id: 18 */
            int64_t l_67[3][7][1] = {{{0x093F7740323AA363L},{0x093F7740323AA363L},{0x093F7740323AA363L},{0x093F7740323AA363L},{0x093F7740323AA363L},{0x093F7740323AA363L},{0x093F7740323AA363L}},{{0x093F7740323AA363L},{0x093F7740323AA363L},{0x093F7740323AA363L},{0x093F7740323AA363L},{0x093F7740323AA363L},{0x093F7740323AA363L},{0x093F7740323AA363L}},{{0x093F7740323AA363L},{0x093F7740323AA363L},{0x093F7740323AA363L},{0x093F7740323AA363L},{0x093F7740323AA363L},{0x093F7740323AA363L},{0x093F7740323AA363L}}};
            int32_t l_70 = (-1L);
            int8_t ***l_847 = (void*)0;
            uint64_t l_849 = 18446744073709551615UL;
            int32_t l_886 = 0x18E507B6L;
            int i, j, k;
            for (p_34 = 0; (p_34 <= 6); p_34 += 1)
            { /* block id: 21 */
                int32_t l_61 = (-4L);
                int32_t l_66 = 0x59F1AA49L;
                int64_t *l_811 = &l_67[2][0][0];
                int32_t *l_813[3][9][1] = {{{&l_812},{&l_812},{&l_812},{&l_812},{&l_812},{&l_812},{&l_812},{&l_812},{&l_812}},{{&l_812},{&l_812},{&l_812},{&l_812},{&l_812},{&l_812},{&l_812},{&l_812},{&l_812}},{{&l_812},{&l_812},{&l_812},{&l_812},{&l_812},{&l_812},{&l_812},{&l_812},{&l_812}}};
                int32_t *l_815 = (void*)0;
                int32_t *l_816 = &l_69;
                int32_t *l_817 = &l_70;
                uint32_t l_819 = 8UL;
                int16_t *l_846 = &p_1704->g_668;
                int i, j, k;
                for (p_1704->g_52 = 5; (p_1704->g_52 >= 2); p_1704->g_52 -= 1)
                { /* block id: 24 */
                    uint8_t l_74 = 0xFAL;
                    uint64_t **l_800 = (void*)0;
                    if ((atomic_inc(&p_1704->g_atomic_input[74 * get_linear_group_id() + 42]) == 3))
                    { /* block id: 26 */
                        uint16_t l_53 = 0xA078L;
                        int32_t l_56 = (-1L);
                        int32_t *l_57[1][9] = {{&l_56,&l_56,&l_56,&l_56,&l_56,&l_56,&l_56,&l_56,&l_56}};
                        int i, j;
                        ++l_53;
                        l_56 |= p_1704->g_42[(p_1704->g_52 + 2)][p_34];
                        l_57[0][0] = (void*)0;
                        unsigned int result = 0;
                        result += l_53;
                        result += l_56;
                        atomic_add(&p_1704->g_special_values[74 * get_linear_group_id() + 42], result);
                    }
                    else
                    { /* block id: 30 */
                        (1 + 1);
                    }
                    for (p_1704->g_60 = 5; (p_1704->g_60 >= 0); p_1704->g_60 -= 1)
                    { /* block id: 35 */
                        int32_t *l_62 = &l_61;
                        int32_t *l_64 = &l_61;
                        int32_t *l_65[8] = {&l_61,&l_61,&l_61,&l_61,&l_61,&l_61,&l_61,&l_61};
                        uint64_t **l_87 = &l_86;
                        int i;
                        p_1704->g_71++;
                        l_74--;
                    }
                    (*p_1704->g_128) = &l_70;
                }
                (*l_817) &= ((*l_816) &= ((((l_814[0] = ((safe_rshift_func_int16_t_s_u(((!(safe_mul_func_uint16_t_u_u((((*p_1704->g_623) != ((*p_1704->g_128) = &p_34)) , 65534UL), ((1L >= 0x52L) , (safe_add_func_uint64_t_u_u((safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), (l_68[0][9][2] != ((safe_sub_func_int64_t_s_s(((*l_811) = (1UL >= l_68[0][7][2])), ((4294967291UL <= 0xB4C5BF9CL) | (-4L)))) >= 0x25L)))), l_812)))))) ^ p_34), 14)) & p_36)) , 4294967286UL) , (void*)0) == &p_1704->g_707));
                if (l_818[0])
                { /* block id: 549 */
                    int32_t ****l_834 = (void*)0;
                    int32_t ***l_836[8][9] = {{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128,(void*)0},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128,(void*)0},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128,(void*)0},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128,(void*)0},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128,(void*)0},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128,(void*)0},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128,(void*)0},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128,(void*)0}};
                    int32_t ****l_835 = &l_836[2][3];
                    uint8_t *l_843 = &p_1704->g_734;
                    uint8_t *l_848 = &p_1704->g_235;
                    int i, j;
                    l_819 = l_68[0][7][1];
                    l_70 = (safe_rshift_func_uint16_t_u_u((l_67[2][0][0] <= (safe_sub_func_int64_t_s_s((safe_mod_func_int32_t_s_s(((safe_lshift_func_int8_t_s_s(1L, 2)) == (~(+((*p_35) >= (safe_lshift_func_uint16_t_u_s((&p_1704->g_128 == (l_839 = ((safe_add_func_int16_t_s_s((safe_add_func_int16_t_s_s(7L, (&p_1704->g_622 == ((*l_835) = (void*)0)))), ((safe_add_func_int8_t_s_s(((void*)0 != &p_1704->g_211[0]), 6UL)) , 65527UL))) , &p_1704->g_128))), l_818[0])))))), 1UL)), l_67[2][2][0]))), p_36));
                    if (((((*l_848) ^= ((((((l_840 != (((***l_839) < (((safe_sub_func_int16_t_s_s((**p_1704->g_280), 0x3195L)) | ((((((((((((*l_843)--) != 1L) >= (l_846 != &l_63[3][2])) , p_36) <= (p_1704->g_462 | l_67[2][0][0])) != 0x58FA940CA5BBEA5FL) ^ 7L) , p_1704->g_695) & 0x86FBL) > l_818[1]) == p_34)) | p_34)) , l_847)) < (*p_35)) >= (***p_1704->g_638)) >= (*p_1704->g_694)) ^ 0xC6F5L) != 1UL)) | 0x76L) < l_849))
                    { /* block id: 556 */
                        (*l_816) = p_36;
                        (*p_1704->g_128) = &l_70;
                        if (p_36)
                            continue;
                    }
                    else
                    { /* block id: 560 */
                        (*l_817) |= 0x480649A7L;
                    }
                }
                else
                { /* block id: 563 */
                    uint64_t l_852 = 1UL;
                    (**l_839) = (*p_1704->g_783);
                    for (p_1704->g_351 = 0; (p_1704->g_351 <= 6); p_1704->g_351 += 1)
                    { /* block id: 567 */
                        int16_t l_850 = 0x7484L;
                        int32_t *l_851[10][3][1] = {{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}}};
                        int i, j, k;
                        (*l_816) |= (p_1704->g_684 | l_850);
                        (*p_1704->g_128) = (*p_1704->g_123);
                        (**l_839) = (**l_839);
                        l_852++;
                    }
                    (*l_816) |= 7L;
                }
                for (p_1704->g_374 = 0; (p_1704->g_374 <= 6); p_1704->g_374 += 1)
                { /* block id: 577 */
                    uint32_t *l_860 = &p_1704->g_684;
                    uint32_t **l_859 = &l_860;
                    int32_t l_865 = 0L;
                    int32_t *l_878 = &l_69;
                    int32_t *l_879 = &l_66;
                    int32_t *l_880 = (void*)0;
                    int32_t *l_881 = &p_1704->g_634;
                    int32_t *l_882 = &p_1704->g_632;
                    int32_t *l_883 = &l_69;
                    int32_t *l_884 = &l_865;
                    int32_t *l_885[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_885[i] = (void*)0;
                    l_68[0][3][3] = (safe_mod_func_uint32_t_u_u((safe_rshift_func_int16_t_s_s(0x2BEFL, ((*l_846) = p_34))), l_67[0][4][0]));
                    if (l_818[0])
                        break;
                    l_70 = ((((*l_859) = &p_1704->g_684) == &p_1704->g_684) , (((***p_1704->g_638) = (safe_mod_func_int32_t_s_s(((((safe_add_func_uint64_t_u_u(l_865, (safe_div_func_uint8_t_u_u((((((safe_add_func_int16_t_s_s((((safe_lshift_func_int16_t_s_u((safe_div_func_uint64_t_u_u((4L >= ((+p_36) , ((safe_div_func_int8_t_s_s((GROUP_DIVERGE(0, 1) >= 0x46L), (**p_1704->g_639))) > 0xEA09L))), (safe_rshift_func_int16_t_s_u(0x4729L, (*p_1704->g_694))))), p_36)) >= 0x18EE896AL) , (**p_1704->g_280)), 0x1EB8L)) >= p_36) , p_34) > 0x32630309L) == (*p_35)), l_67[2][0][0])))) && (***p_1704->g_644)) , p_34) <= p_34), 3L))) != p_1704->g_116));
                    l_889++;
                }
            }
        }
    }
    l_911 &= ((((safe_lshift_func_uint16_t_u_s(GROUP_DIVERGE(1, 1), (safe_mod_func_uint64_t_u_u((p_34 || (l_814[0] && ((**p_1704->g_159) = 18446744073709551615UL))), (safe_lshift_func_int16_t_s_u(p_36, (safe_add_func_uint64_t_u_u(((((*l_900) |= p_36) ^ (safe_lshift_func_int8_t_s_u(0x60L, 2))) , ((safe_rshift_func_int16_t_s_u((*p_1704->g_281), (safe_add_func_uint8_t_u_u((safe_lshift_func_int8_t_s_u(0L, 1)), (*p_1704->g_345))))) ^ p_1704->g_695)), l_909)))))))) >= p_36) > 0x2B864E0AL) && 249UL);
    l_930[7] = (((safe_div_func_int16_t_s_s((((l_919 &= ((***p_1704->g_638) = ((((*p_35) != (safe_rshift_func_uint16_t_u_u(((l_918[2] = l_916) != &p_35), 15))) , GROUP_DIVERGE(0, 1)) , (*p_1704->g_345)))) , ((p_34 = ((safe_mul_func_uint8_t_u_u((((*p_1704->g_159) = ((safe_div_func_int64_t_s_s((((*l_839) = (*l_839)) != (void*)0), (safe_add_func_int8_t_s_s((FAKE_DIVERGE(p_1704->group_1_offset, get_group_id(1), 10) > ((**p_1704->g_639) = (safe_lshift_func_uint16_t_u_s(((*l_900) = (safe_mod_func_int16_t_s_s(0x1D30L, ((p_1704->g_146 && p_1704->g_71) , p_36)))), 3)))), 1L)))) , (*p_1704->g_159))) != p_35), FAKE_DIVERGE(p_1704->local_1_offset, get_local_id(1), 10))) && p_34)) ^ 0x07C1BCF9L)) , (**p_1704->g_280)), p_36)) <= (*p_35)) | 1L);
    (*p_1704->g_128) = (*p_1704->g_783);
    return p_1704->g_440;
}


/* ------------------------------------------ */
/* 
 * reads : p_1704->g_46
 * writes: p_1704->g_46
 */
uint32_t  func_37(int64_t  p_38, int32_t  p_39, uint64_t * p_40, struct S0 * p_1704)
{ /* block id: 9 */
    int32_t *l_45 = &p_1704->g_46;
    (*l_45) = (-1L);
    return (*l_45);
}


/* ------------------------------------------ */
/* 
 * reads : p_1704->g_71 p_1704->g_634 p_1704->g_643 p_1704->g_644 p_1704->g_645 p_1704->g_146 p_1704->g_160 p_1704->g_235 p_1704->g_42 p_1704->g_296 p_1704->g_783 p_1704->g_788
 * writes: p_1704->g_71 p_1704->g_433 p_1704->g_146 p_1704->g_235 p_1704->g_234 p_1704->g_42 p_1704->g_444 p_1704->g_624 p_1704->g_634
 */
uint64_t ** func_77(uint64_t  p_78, uint64_t ** p_79, int32_t * p_80, uint64_t * p_81, int32_t * p_82, struct S0 * p_1704)
{ /* block id: 503 */
    int16_t *l_721 = &p_1704->g_668;
    int16_t **l_720 = &l_721;
    int32_t l_745[3][10][2] = {{{0x2B685123L,0x28B1B04EL},{0x2B685123L,0x28B1B04EL},{0x2B685123L,0x28B1B04EL},{0x2B685123L,0x28B1B04EL},{0x2B685123L,0x28B1B04EL},{0x2B685123L,0x28B1B04EL},{0x2B685123L,0x28B1B04EL},{0x2B685123L,0x28B1B04EL},{0x2B685123L,0x28B1B04EL},{0x2B685123L,0x28B1B04EL}},{{0x2B685123L,0x28B1B04EL},{0x2B685123L,0x28B1B04EL},{0x2B685123L,0x28B1B04EL},{0x2B685123L,0x28B1B04EL},{0x2B685123L,0x28B1B04EL},{0x2B685123L,0x28B1B04EL},{0x2B685123L,0x28B1B04EL},{0x2B685123L,0x28B1B04EL},{0x2B685123L,0x28B1B04EL},{0x2B685123L,0x28B1B04EL}},{{0x2B685123L,0x28B1B04EL},{0x2B685123L,0x28B1B04EL},{0x2B685123L,0x28B1B04EL},{0x2B685123L,0x28B1B04EL},{0x2B685123L,0x28B1B04EL},{0x2B685123L,0x28B1B04EL},{0x2B685123L,0x28B1B04EL},{0x2B685123L,0x28B1B04EL},{0x2B685123L,0x28B1B04EL},{0x2B685123L,0x28B1B04EL}}};
    int8_t ****l_753 = &p_1704->g_638;
    int32_t *l_789 = &p_1704->g_634;
    int32_t *l_790 = &l_745[1][5][1];
    int32_t *l_791 = (void*)0;
    int32_t *l_792 = &l_745[0][8][1];
    int32_t *l_793[2][1][8] = {{{(void*)0,(void*)0,&p_1704->g_60,&l_745[1][2][0],(void*)0,&l_745[1][2][0],&p_1704->g_60,(void*)0}},{{(void*)0,(void*)0,&p_1704->g_60,&l_745[1][2][0],(void*)0,&l_745[1][2][0],&p_1704->g_60,(void*)0}}};
    int32_t l_794 = 0x2FA61FDCL;
    uint32_t l_795 = 4294967295UL;
    uint64_t **l_798 = &p_1704->g_160[1];
    int i, j, k;
    for (p_1704->g_71 = 0; (p_1704->g_71 == 59); p_1704->g_71++)
    { /* block id: 506 */
        uint8_t l_717 = 9UL;
        int32_t l_735 = 0x1C38CD11L;
        int8_t ****l_750 = &p_1704->g_638;
        int8_t *l_756 = &p_1704->g_233[2];
        int32_t l_777[6] = {0L,0x281066BAL,0L,0L,0x281066BAL,0L};
        int32_t *l_785 = (void*)0;
        int32_t *l_786 = (void*)0;
        int i;
        for (p_1704->g_433 = (-1); (p_1704->g_433 > 15); p_1704->g_433++)
        { /* block id: 509 */
            int8_t l_736[5];
            int32_t l_739 = 0x0A83ABE4L;
            int8_t *l_757 = (void*)0;
            int32_t l_778 = 0L;
            int i;
            for (i = 0; i < 5; i++)
                l_736[i] = 0L;
            for (p_1704->g_146 = 0; (p_1704->g_146 <= 2); p_1704->g_146 += 1)
            { /* block id: 512 */
                uint8_t *l_730 = &p_1704->g_235;
                uint8_t *l_733[4] = {&p_1704->g_734,&p_1704->g_734,&p_1704->g_734,&p_1704->g_734};
                int i;
                l_736[3] = (p_78 >= (l_717 > (((safe_mod_func_int64_t_s_s(p_1704->g_634, p_78)) && ((((l_720 == (**p_1704->g_643)) , p_1704->g_160[p_1704->g_146]) == p_1704->g_160[p_1704->g_146]) == ((safe_mul_func_int8_t_s_s((safe_mul_func_int8_t_s_s((safe_div_func_int32_t_s_s(((safe_add_func_uint8_t_u_u((l_735 = (++(*l_730))), p_78)) & (**p_79)), 4L)), p_78)), (-8L))) , (-7L)))) != (*p_81))));
            }
            for (p_1704->g_234 = 0; (p_1704->g_234 != 3); p_1704->g_234 = safe_add_func_uint32_t_u_u(p_1704->g_234, 5))
            { /* block id: 519 */
                int64_t l_744[5] = {0x070657C99B62703EL,0x070657C99B62703EL,0x070657C99B62703EL,0x070657C99B62703EL,0x070657C99B62703EL};
                int16_t ***l_746[5][1][2];
                int32_t l_776[3];
                int i, j, k;
                for (i = 0; i < 5; i++)
                {
                    for (j = 0; j < 1; j++)
                    {
                        for (k = 0; k < 2; k++)
                            l_746[i][j][k] = &l_720;
                    }
                }
                for (i = 0; i < 3; i++)
                    l_776[i] = (-1L);
                l_739 = 5L;
                if ((safe_add_func_int32_t_s_s((p_78 , (safe_mod_func_uint32_t_u_u(p_78, l_744[3]))), l_745[0][8][1])))
                { /* block id: 521 */
                    int16_t ****l_747 = &l_746[2][0][0];
                    int8_t *****l_751 = (void*)0;
                    int8_t *****l_752[9][2] = {{&l_750,&l_750},{&l_750,&l_750},{&l_750,&l_750},{&l_750,&l_750},{&l_750,&l_750},{&l_750,&l_750},{&l_750,&l_750},{&l_750,&l_750},{&l_750,&l_750}};
                    uint32_t *l_760 = (void*)0;
                    uint32_t *l_761 = &p_1704->g_444;
                    int32_t *l_762 = &p_1704->g_632;
                    int32_t *l_763 = (void*)0;
                    int32_t *l_764 = &p_1704->g_632;
                    int32_t *l_765 = (void*)0;
                    int32_t *l_766 = &p_1704->g_632;
                    int32_t *l_767 = &l_739;
                    int32_t *l_768 = (void*)0;
                    int32_t *l_769 = (void*)0;
                    int32_t *l_770 = &l_745[2][1][1];
                    int32_t *l_771 = &l_739;
                    int32_t *l_772 = &p_1704->g_632;
                    int32_t *l_773 = &p_1704->g_632;
                    int32_t *l_774 = &l_745[0][8][1];
                    int32_t *l_775[9];
                    uint16_t l_779 = 0x8F71L;
                    int i, j;
                    for (i = 0; i < 9; i++)
                        l_775[i] = (void*)0;
                    (*p_80) ^= (((((*l_747) = l_746[2][0][0]) == (void*)0) , ((((safe_rshift_func_uint16_t_u_s(((l_750 = l_750) != l_753), (GROUP_DIVERGE(0, 1) & (safe_mod_func_uint8_t_u_u((((*l_761) = (((**p_79) = (((l_756 != l_757) > (**p_79)) > 1UL)) , ((safe_mul_func_int8_t_s_s(((1L ^ p_1704->g_296[1]) , p_78), 1UL)) | (*p_81)))) , 0x56L), l_744[4]))))) & p_78) , l_745[2][0][0]) < l_717)) && 1UL);
                    --l_779;
                    (*p_1704->g_783) = &l_776[0];
                    if ((*p_80))
                        break;
                }
                else
                { /* block id: 530 */
                    return &p_1704->g_160[1];
                }
            }
        }
        (*p_1704->g_788) &= (*p_80);
    }
    --l_795;
    return l_798;
}


/* ------------------------------------------ */
/* 
 * reads : p_1704->g_52 p_1704->g_60 p_1704->g_58 p_1704->g_116 p_1704->g_123 p_1704->g_59 p_1704->g_71 p_1704->g_2 p_1704->g_146 p_1704->g_124 p_1704->g_159 p_1704->g_170 p_1704->g_160 p_1704->g_42 p_1704->g_211 p_1704->g_219 p_1704->g_235 p_1704->g_280 p_1704->g_351 p_1704->g_234 p_1704->g_281 p_1704->g_282 p_1704->g_233 p_1704->g_345 p_1704->g_302 p_1704->g_374 p_1704->g_444 p_1704->g_296 p_1704->g_462 p_1704->g_440 p_1704->g_46 p_1704->g_438 p_1704->g_615 p_1704->g_623 p_1704->g_443 p_1704->g_632 p_1704->g_638 p_1704->g_643 p_1704->g_646
 * writes: p_1704->g_116 p_1704->g_124 p_1704->g_71 p_1704->g_128 p_1704->g_146 p_1704->g_170 p_1704->g_211 p_1704->g_219 p_1704->g_235 p_1704->g_280 p_1704->g_345 p_1704->g_351 p_1704->g_234 p_1704->g_374 p_1704->g_444 p_1704->g_159 p_1704->g_296 p_1704->g_433 p_1704->g_624 p_1704->g_443 p_1704->g_632 p_1704->g_634
 */
uint64_t ** func_83(uint64_t  p_84, struct S0 * p_1704)
{ /* block id: 38 */
    int16_t l_94 = (-1L);
    int8_t l_106 = 1L;
    int32_t *l_109 = &p_1704->g_52;
    int32_t **l_710 = &p_1704->g_124;
    uint64_t **l_711 = &p_1704->g_160[1];
    l_109 = func_88(l_94, func_95(((safe_sub_func_uint64_t_u_u((safe_div_func_uint16_t_u_u(p_84, (safe_lshift_func_uint8_t_u_s((l_94 == (safe_sub_func_int16_t_s_s((((((FAKE_DIVERGE(p_1704->global_0_offset, get_global_id(0), 10) & l_106) , (safe_sub_func_uint64_t_u_u(((l_109 == &p_1704->g_2[1]) && (safe_add_func_uint32_t_u_u((p_1704->g_116 = ((safe_mul_func_int16_t_s_s((safe_rshift_func_int16_t_s_u((-9L), (0x5DDBF1A1L <= ((void*)0 != l_109)))), (*l_109))) & p_1704->g_60)), 0x689573D5L))), p_1704->g_58))) >= (*l_109)) < 0x44CFL) == 1UL), (-3L)))), p_84)))), 6L)) && GROUP_DIVERGE(2, 1)), l_109, p_1704), &p_1704->g_46, p_84, p_1704->g_296[3], p_1704);
    (*l_710) = l_109;
    return l_711;
}


/* ------------------------------------------ */
/* 
 * reads : p_1704->g_233 p_1704->g_42 p_1704->g_462 p_1704->g_440 p_1704->g_211 p_1704->g_46 p_1704->g_296 p_1704->g_123 p_1704->g_219 p_1704->g_438 p_1704->g_615 p_1704->g_623 p_1704->g_351 p_1704->g_124 p_1704->g_443 p_1704->g_444 p_1704->g_632 p_1704->g_638 p_1704->g_643 p_1704->g_646 p_1704->g_116 p_1704->g_684 p_1704->g_953
 * writes: p_1704->g_159 p_1704->g_296 p_1704->g_124 p_1704->g_433 p_1704->g_624 p_1704->g_351 p_1704->g_443 p_1704->g_444 p_1704->g_632 p_1704->g_634 p_1704->g_116
 */
int32_t * func_88(int64_t  p_89, uint64_t ** p_90, int32_t * p_91, int32_t  p_92, uint8_t  p_93, struct S0 * p_1704)
{ /* block id: 294 */
    uint64_t l_449 = 0x19AF3AF556C2B703L;
    uint64_t ***l_452 = &p_1704->g_159;
    uint32_t l_467 = 4294967295UL;
    uint64_t l_468 = 2UL;
    int32_t *l_614 = &p_1704->g_46;
    int8_t ***l_640 = &p_1704->g_639;
    int32_t l_709 = (-1L);
    if ((safe_sub_func_int8_t_s_s(l_449, ((safe_lshift_func_uint16_t_u_u(p_1704->g_233[2], 7)) <= (((((*l_452) = (void*)0) == (p_90 = (void*)0)) > p_93) , (((0L < ((safe_rshift_func_int8_t_s_s(5L, (p_92 >= p_1704->g_42[6][2]))) , l_449)) & 7L) , 0x42FB95E0CD68CDD4L))))))
    { /* block id: 297 */
        uint64_t l_455[10][10][1] = {{{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL}},{{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL}},{{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL}},{{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL}},{{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL}},{{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL}},{{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL}},{{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL}},{{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL}},{{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL}}};
        int32_t l_469 = 0x12CC2FFFL;
        int32_t l_470[8][10][3] = {{{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL}},{{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL}},{{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL}},{{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL}},{{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL}},{{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL}},{{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL}},{{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL},{0x138B69AAL,0x704AC2E8L,0x1E5AA65BL}}};
        int64_t *l_471 = &p_1704->g_296[1];
        int i, j, k;
        (*p_1704->g_123) = (((*l_471) = (((l_455[0][6][0] <= (safe_mod_func_uint16_t_u_u((FAKE_DIVERGE(p_1704->global_2_offset, get_global_id(2), 10) , p_92), (((p_92 != ((!0x3DL) >= ((safe_sub_func_uint8_t_u_u(((((l_470[3][3][0] = ((((l_469 = ((p_1704->g_462 & ((p_93 , p_1704->g_440) < (((safe_mul_func_uint16_t_u_u(((l_467 >= (((((p_89 < p_1704->g_211[0]) == l_449) >= l_468) | p_1704->g_211[0]) , l_455[5][7][0])) ^ p_1704->g_42[6][2]), p_93)) < l_467) >= l_455[0][6][0]))) > p_89)) , l_455[0][6][0]) , (*p_91)) < p_93)) , &p_1704->g_302) != &p_1704->g_302) && 0x277713E2L), p_1704->g_296[1])) , p_92))) | l_467) , p_92)))) && 251UL) ^ p_92)) , (void*)0);
        if ((atomic_inc(&p_1704->g_atomic_input[74 * get_linear_group_id() + 67]) == 8))
        { /* block id: 303 */
            uint32_t l_472 = 4294967288UL;
            int64_t l_473[1];
            int16_t l_494 = 0x1D9CL;
            int32_t l_495 = 1L;
            int32_t l_612 = 0x0049B5AFL;
            int8_t l_613 = 0x7BL;
            int i;
            for (i = 0; i < 1; i++)
                l_473[i] = 1L;
            if (((l_472 , 0xDA6895BFL) , l_473[0]))
            { /* block id: 304 */
                uint8_t l_474 = 248UL;
                uint32_t l_475[7] = {4294967286UL,4294967295UL,4294967286UL,4294967286UL,4294967295UL,4294967286UL,4294967286UL};
                uint32_t l_476 = 0x3FB20CDAL;
                uint32_t l_477[3][6][7] = {{{4294967286UL,4294967287UL,4294967290UL,4294967287UL,4294967286UL,0xCC9A09EBL,4294967295UL},{4294967286UL,4294967287UL,4294967290UL,4294967287UL,4294967286UL,0xCC9A09EBL,4294967295UL},{4294967286UL,4294967287UL,4294967290UL,4294967287UL,4294967286UL,0xCC9A09EBL,4294967295UL},{4294967286UL,4294967287UL,4294967290UL,4294967287UL,4294967286UL,0xCC9A09EBL,4294967295UL},{4294967286UL,4294967287UL,4294967290UL,4294967287UL,4294967286UL,0xCC9A09EBL,4294967295UL},{4294967286UL,4294967287UL,4294967290UL,4294967287UL,4294967286UL,0xCC9A09EBL,4294967295UL}},{{4294967286UL,4294967287UL,4294967290UL,4294967287UL,4294967286UL,0xCC9A09EBL,4294967295UL},{4294967286UL,4294967287UL,4294967290UL,4294967287UL,4294967286UL,0xCC9A09EBL,4294967295UL},{4294967286UL,4294967287UL,4294967290UL,4294967287UL,4294967286UL,0xCC9A09EBL,4294967295UL},{4294967286UL,4294967287UL,4294967290UL,4294967287UL,4294967286UL,0xCC9A09EBL,4294967295UL},{4294967286UL,4294967287UL,4294967290UL,4294967287UL,4294967286UL,0xCC9A09EBL,4294967295UL},{4294967286UL,4294967287UL,4294967290UL,4294967287UL,4294967286UL,0xCC9A09EBL,4294967295UL}},{{4294967286UL,4294967287UL,4294967290UL,4294967287UL,4294967286UL,0xCC9A09EBL,4294967295UL},{4294967286UL,4294967287UL,4294967290UL,4294967287UL,4294967286UL,0xCC9A09EBL,4294967295UL},{4294967286UL,4294967287UL,4294967290UL,4294967287UL,4294967286UL,0xCC9A09EBL,4294967295UL},{4294967286UL,4294967287UL,4294967290UL,4294967287UL,4294967286UL,0xCC9A09EBL,4294967295UL},{4294967286UL,4294967287UL,4294967290UL,4294967287UL,4294967286UL,0xCC9A09EBL,4294967295UL},{4294967286UL,4294967287UL,4294967290UL,4294967287UL,4294967286UL,0xCC9A09EBL,4294967295UL}}};
                uint16_t l_478[9][7][2] = {{{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L}},{{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L}},{{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L}},{{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L}},{{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L}},{{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L}},{{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L}},{{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L}},{{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L},{0x7737L,0x6A24L}}};
                int i, j, k;
                l_477[1][2][1] |= (l_476 = (l_475[0] |= l_474));
                if ((l_478[5][2][1] = 0x28E0AA27L))
                { /* block id: 309 */
                    uint16_t l_479 = 65535UL;
                    l_479 |= 0L;
                }
                else
                { /* block id: 311 */
                    int16_t l_480 = 1L;
                    int32_t l_481 = (-1L);
                    uint64_t l_482 = 0x1255775F2979F33BL;
                    uint16_t l_483[9];
                    int32_t l_485[7] = {(-1L),(-6L),(-1L),(-1L),(-6L),(-1L),(-1L)};
                    int32_t *l_484 = &l_485[0];
                    int32_t *l_486 = &l_485[4];
                    int i;
                    for (i = 0; i < 9; i++)
                        l_483[i] = 0x361CL;
                    l_482 &= (l_481 = l_480);
                    l_486 = (l_483[2] , l_484);
                }
            }
            else
            { /* block id: 316 */
                int32_t l_487[7] = {1L,0L,1L,1L,0L,1L,1L};
                int16_t l_493 = (-3L);
                int i;
                for (l_487[0] = (-17); (l_487[0] < (-10)); ++l_487[0])
                { /* block id: 319 */
                    uint64_t l_490 = 18446744073709551615UL;
                    uint64_t l_491 = 0x13C06DF61988AAA2L;
                    int8_t l_492[3][1][10] = {{{0x35L,0x35L,7L,0x7AL,0L,0x7AL,7L,0x35L,0x35L,7L}},{{0x35L,0x35L,7L,0x7AL,0L,0x7AL,7L,0x35L,0x35L,7L}},{{0x35L,0x35L,7L,0x7AL,0L,0x7AL,7L,0x35L,0x35L,7L}}};
                    int i, j, k;
                    l_491 |= l_490;
                    l_492[2][0][8] ^= 0x54281A25L;
                }
                l_493 = 0x73501F0DL;
            }
            if ((l_494 , l_495))
            { /* block id: 325 */
                uint16_t l_496[2];
                int32_t l_583 = 1L;
                int32_t *l_582 = &l_583;
                int32_t *l_584[5][2] = {{&l_583,&l_583},{&l_583,&l_583},{&l_583,&l_583},{&l_583,&l_583},{&l_583,&l_583}};
                int64_t l_585[10] = {0L,0x37E0B8E243164700L,0x6A33C9281DF6E759L,0x37E0B8E243164700L,0L,0L,0x37E0B8E243164700L,0x6A33C9281DF6E759L,0x37E0B8E243164700L,0L};
                uint64_t l_586[1];
                int i, j;
                for (i = 0; i < 2; i++)
                    l_496[i] = 0x0FE7L;
                for (i = 0; i < 1; i++)
                    l_586[i] = 0x2636526992F04EA2L;
                if (l_496[0])
                { /* block id: 326 */
                    uint64_t l_497[1][5];
                    int8_t l_498 = 0x51L;
                    uint32_t l_499 = 8UL;
                    int32_t l_500 = 0x4B596BF2L;
                    uint32_t l_501[2][2][6] = {{{0x5F535460L,0x5F535460L,0x5F535460L,0x5F535460L,0x5F535460L,0x5F535460L},{0x5F535460L,0x5F535460L,0x5F535460L,0x5F535460L,0x5F535460L,0x5F535460L}},{{0x5F535460L,0x5F535460L,0x5F535460L,0x5F535460L,0x5F535460L,0x5F535460L},{0x5F535460L,0x5F535460L,0x5F535460L,0x5F535460L,0x5F535460L,0x5F535460L}}};
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 5; j++)
                            l_497[i][j] = 0xDFDC1F9FC4D470DDL;
                    }
                    l_501[0][1][4] = (l_497[0][1] , ((l_498 , l_499) , l_500));
                    for (l_499 = 0; (l_499 < 34); l_499 = safe_add_func_uint8_t_u_u(l_499, 1))
                    { /* block id: 330 */
                        int32_t l_504 = 0x5F1E5383L;
                        int8_t l_505[10][5][4] = {{{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL}},{{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL}},{{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL}},{{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL}},{{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL}},{{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL}},{{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL}},{{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL}},{{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL}},{{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL},{0x68L,0x68L,0x4BL,0x0FL}}};
                        int64_t l_506 = 0L;
                        uint16_t l_507 = 0x06D4L;
                        uint32_t l_510[7];
                        int32_t l_511 = 0x38E4A193L;
                        int32_t *l_512 = (void*)0;
                        int32_t *l_513[4][2] = {{&l_504,&l_511},{&l_504,&l_511},{&l_504,&l_511},{&l_504,&l_511}};
                        uint64_t l_514 = 0xB95CB760FD40EFD2L;
                        int8_t l_515 = 0x3AL;
                        uint64_t l_516 = 0x0870CD68B6221DC8L;
                        uint64_t l_517 = 0x9DF6294C5F2D90EBL;
                        uint32_t l_518 = 0x7CA0E828L;
                        uint16_t l_519 = 65527UL;
                        uint32_t l_520 = 4294967294UL;
                        int i, j, k;
                        for (i = 0; i < 7; i++)
                            l_510[i] = 4294967288UL;
                        ++l_507;
                        l_513[3][0] = (l_510[4] , (l_511 , l_512));
                        l_514 |= 0L;
                        l_520 ^= (l_519 = (l_518 = (l_515 , (l_517 ^= (l_500 = l_516)))));
                    }
                }
                else
                { /* block id: 340 */
                    int32_t l_521[2];
                    int32_t *l_545 = &l_521[1];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_521[i] = 1L;
                    for (l_521[0] = 0; (l_521[0] < 1); l_521[0] = safe_add_func_uint64_t_u_u(l_521[0], 7))
                    { /* block id: 343 */
                        int32_t l_524[4][4][6] = {{{(-5L),0x7BBFC4A9L,(-1L),0x57D0F462L,(-1L),(-5L)},{(-5L),0x7BBFC4A9L,(-1L),0x57D0F462L,(-1L),(-5L)},{(-5L),0x7BBFC4A9L,(-1L),0x57D0F462L,(-1L),(-5L)},{(-5L),0x7BBFC4A9L,(-1L),0x57D0F462L,(-1L),(-5L)}},{{(-5L),0x7BBFC4A9L,(-1L),0x57D0F462L,(-1L),(-5L)},{(-5L),0x7BBFC4A9L,(-1L),0x57D0F462L,(-1L),(-5L)},{(-5L),0x7BBFC4A9L,(-1L),0x57D0F462L,(-1L),(-5L)},{(-5L),0x7BBFC4A9L,(-1L),0x57D0F462L,(-1L),(-5L)}},{{(-5L),0x7BBFC4A9L,(-1L),0x57D0F462L,(-1L),(-5L)},{(-5L),0x7BBFC4A9L,(-1L),0x57D0F462L,(-1L),(-5L)},{(-5L),0x7BBFC4A9L,(-1L),0x57D0F462L,(-1L),(-5L)},{(-5L),0x7BBFC4A9L,(-1L),0x57D0F462L,(-1L),(-5L)}},{{(-5L),0x7BBFC4A9L,(-1L),0x57D0F462L,(-1L),(-5L)},{(-5L),0x7BBFC4A9L,(-1L),0x57D0F462L,(-1L),(-5L)},{(-5L),0x7BBFC4A9L,(-1L),0x57D0F462L,(-1L),(-5L)},{(-5L),0x7BBFC4A9L,(-1L),0x57D0F462L,(-1L),(-5L)}}};
                        int16_t l_525 = 0x579DL;
                        uint64_t l_526 = 1UL;
                        uint32_t l_527 = 0xA55DF478L;
                        int32_t l_530 = 0L;
                        int32_t l_531 = 0L;
                        int32_t l_532 = 0x0C997053L;
                        int64_t l_533 = 0x08312DB3FA153593L;
                        int i, j, k;
                        l_526 |= (l_525 = l_524[2][2][2]);
                        l_527++;
                        l_531 = (l_530 |= 0L);
                        l_533 = l_532;
                    }
                    for (l_521[0] = 0; (l_521[0] > 16); l_521[0]++)
                    { /* block id: 353 */
                        uint64_t l_536 = 18446744073709551608UL;
                        int64_t l_537 = 0x2A3B798B4D766E82L;
                        uint16_t l_540 = 0x3C5CL;
                        uint16_t *l_539[5][9][5] = {{{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540}},{{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540}},{{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540}},{{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540}},{{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540},{&l_540,&l_540,(void*)0,&l_540,&l_540}}};
                        uint16_t **l_538[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
                        uint16_t **l_541 = &l_539[2][1][1];
                        int32_t l_543 = 0x4F66DC44L;
                        int32_t *l_542 = &l_543;
                        int32_t *l_544 = &l_543;
                        int i, j, k;
                        l_541 = ((l_536 , (l_494 = l_537)) , (l_538[1] = l_538[3]));
                        l_544 = l_542;
                    }
                    l_545 = (void*)0;
                    for (l_521[0] = 0; (l_521[0] >= 0); l_521[0] -= 1)
                    { /* block id: 362 */
                        uint8_t l_546 = 0x99L;
                        int16_t l_547 = (-1L);
                        uint64_t l_548 = 1UL;
                        uint32_t l_549 = 4294967295UL;
                        uint64_t l_550 = 0x9D9DF692B8BC5623L;
                        int32_t l_551 = (-7L);
                        uint32_t l_552 = 0x8438359BL;
                        uint16_t l_553 = 0x798AL;
                        int8_t l_554 = 0x77L;
                        int i;
                        l_546 = (-1L);
                        l_547 ^= 0x579A6CECL;
                        l_548 = 0x37348889L;
                        l_554 = ((((l_549 &= p_1704->g_219[(l_521[0] + 7)]) , l_550) , (l_551 , l_552)) , l_553);
                    }
                }
                for (l_496[0] = 0; (l_496[0] <= 0); l_496[0] += 1)
                { /* block id: 372 */
                    int16_t l_555 = 0L;
                    if (l_555)
                    { /* block id: 373 */
                        uint16_t l_556 = 65535UL;
                        int16_t l_557 = 0x57D6L;
                        int32_t l_558 = 0x71214D2DL;
                        int32_t l_559 = 0L;
                        uint8_t l_560 = 255UL;
                        uint8_t l_561 = 0x9EL;
                        int8_t l_562 = (-8L);
                        int32_t l_563[4] = {3L,3L,3L,3L};
                        int16_t l_564 = (-6L);
                        int32_t *l_565 = (void*)0;
                        int32_t l_567[3][4] = {{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L}};
                        int32_t *l_566 = &l_567[0][1];
                        uint8_t l_568 = 0xDEL;
                        int8_t l_569 = (-1L);
                        uint8_t l_570[3][8][9] = {{{9UL,0x97L,246UL,0xD5L,0x6FL,0UL,0x26L,0x14L,0x5AL},{9UL,0x97L,246UL,0xD5L,0x6FL,0UL,0x26L,0x14L,0x5AL},{9UL,0x97L,246UL,0xD5L,0x6FL,0UL,0x26L,0x14L,0x5AL},{9UL,0x97L,246UL,0xD5L,0x6FL,0UL,0x26L,0x14L,0x5AL},{9UL,0x97L,246UL,0xD5L,0x6FL,0UL,0x26L,0x14L,0x5AL},{9UL,0x97L,246UL,0xD5L,0x6FL,0UL,0x26L,0x14L,0x5AL},{9UL,0x97L,246UL,0xD5L,0x6FL,0UL,0x26L,0x14L,0x5AL},{9UL,0x97L,246UL,0xD5L,0x6FL,0UL,0x26L,0x14L,0x5AL}},{{9UL,0x97L,246UL,0xD5L,0x6FL,0UL,0x26L,0x14L,0x5AL},{9UL,0x97L,246UL,0xD5L,0x6FL,0UL,0x26L,0x14L,0x5AL},{9UL,0x97L,246UL,0xD5L,0x6FL,0UL,0x26L,0x14L,0x5AL},{9UL,0x97L,246UL,0xD5L,0x6FL,0UL,0x26L,0x14L,0x5AL},{9UL,0x97L,246UL,0xD5L,0x6FL,0UL,0x26L,0x14L,0x5AL},{9UL,0x97L,246UL,0xD5L,0x6FL,0UL,0x26L,0x14L,0x5AL},{9UL,0x97L,246UL,0xD5L,0x6FL,0UL,0x26L,0x14L,0x5AL},{9UL,0x97L,246UL,0xD5L,0x6FL,0UL,0x26L,0x14L,0x5AL}},{{9UL,0x97L,246UL,0xD5L,0x6FL,0UL,0x26L,0x14L,0x5AL},{9UL,0x97L,246UL,0xD5L,0x6FL,0UL,0x26L,0x14L,0x5AL},{9UL,0x97L,246UL,0xD5L,0x6FL,0UL,0x26L,0x14L,0x5AL},{9UL,0x97L,246UL,0xD5L,0x6FL,0UL,0x26L,0x14L,0x5AL},{9UL,0x97L,246UL,0xD5L,0x6FL,0UL,0x26L,0x14L,0x5AL},{9UL,0x97L,246UL,0xD5L,0x6FL,0UL,0x26L,0x14L,0x5AL},{9UL,0x97L,246UL,0xD5L,0x6FL,0UL,0x26L,0x14L,0x5AL},{9UL,0x97L,246UL,0xD5L,0x6FL,0UL,0x26L,0x14L,0x5AL}}};
                        int32_t l_571 = (-10L);
                        int32_t l_572 = (-1L);
                        int32_t l_573 = 1L;
                        int i, j, k;
                        l_564 |= (((l_556 , l_557) , 1L) , ((l_558 , ((l_559 , l_560) , (l_562 &= l_561))) , l_563[1]));
                        l_566 = l_565;
                        l_569 ^= l_568;
                        l_573 ^= (l_572 |= (l_571 = (GROUP_DIVERGE(1, 1) , l_570[1][5][4])));
                    }
                    else
                    { /* block id: 381 */
                        int32_t l_574 = 0L;
                        int32_t l_575 = 0x5B39DD81L;
                        uint16_t l_576[3][5][5] = {{{1UL,65535UL,0xCF2CL,65534UL,65535UL},{1UL,65535UL,0xCF2CL,65534UL,65535UL},{1UL,65535UL,0xCF2CL,65534UL,65535UL},{1UL,65535UL,0xCF2CL,65534UL,65535UL},{1UL,65535UL,0xCF2CL,65534UL,65535UL}},{{1UL,65535UL,0xCF2CL,65534UL,65535UL},{1UL,65535UL,0xCF2CL,65534UL,65535UL},{1UL,65535UL,0xCF2CL,65534UL,65535UL},{1UL,65535UL,0xCF2CL,65534UL,65535UL},{1UL,65535UL,0xCF2CL,65534UL,65535UL}},{{1UL,65535UL,0xCF2CL,65534UL,65535UL},{1UL,65535UL,0xCF2CL,65534UL,65535UL},{1UL,65535UL,0xCF2CL,65534UL,65535UL},{1UL,65535UL,0xCF2CL,65534UL,65535UL},{1UL,65535UL,0xCF2CL,65534UL,65535UL}}};
                        int i, j, k;
                        l_576[2][0][2]++;
                    }
                    for (l_555 = 0; (l_555 <= 2); l_555 += 1)
                    { /* block id: 386 */
                        uint8_t l_579 = 1UL;
                        l_579--;
                    }
                }
                l_584[3][0] = l_582;
                l_586[0] |= l_585[9];
            }
            else
            { /* block id: 392 */
                int32_t l_587 = 0L;
                int32_t *l_611[7][2][5] = {{{&l_587,&l_587,&l_587,&l_587,&l_587},{&l_587,&l_587,&l_587,&l_587,&l_587}},{{&l_587,&l_587,&l_587,&l_587,&l_587},{&l_587,&l_587,&l_587,&l_587,&l_587}},{{&l_587,&l_587,&l_587,&l_587,&l_587},{&l_587,&l_587,&l_587,&l_587,&l_587}},{{&l_587,&l_587,&l_587,&l_587,&l_587},{&l_587,&l_587,&l_587,&l_587,&l_587}},{{&l_587,&l_587,&l_587,&l_587,&l_587},{&l_587,&l_587,&l_587,&l_587,&l_587}},{{&l_587,&l_587,&l_587,&l_587,&l_587},{&l_587,&l_587,&l_587,&l_587,&l_587}},{{&l_587,&l_587,&l_587,&l_587,&l_587},{&l_587,&l_587,&l_587,&l_587,&l_587}}};
                int i, j, k;
                for (l_587 = 0; (l_587 <= 2); l_587 += 1)
                { /* block id: 395 */
                    int32_t l_588[10] = {0x2ED01CF8L,0x2ED01CF8L,0x2ED01CF8L,0x2ED01CF8L,0x2ED01CF8L,0x2ED01CF8L,0x2ED01CF8L,0x2ED01CF8L,0x2ED01CF8L,0x2ED01CF8L};
                    int8_t l_590 = 0x69L;
                    int64_t l_591 = (-4L);
                    int16_t l_592 = (-6L);
                    uint32_t l_593[5][6][1] = {{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}}};
                    int32_t l_596 = 0x1D913416L;
                    uint32_t l_597 = 1UL;
                    int64_t l_598[4][6] = {{(-1L),4L,(-1L),(-1L),4L,(-1L)},{(-1L),4L,(-1L),(-1L),4L,(-1L)},{(-1L),4L,(-1L),(-1L),4L,(-1L)},{(-1L),4L,(-1L),(-1L),4L,(-1L)}};
                    int16_t l_599[10][8] = {{0x094EL,0x094EL,0x1DD5L,0x34F7L,(-1L),0L,0x013FL,0x4D72L},{0x094EL,0x094EL,0x1DD5L,0x34F7L,(-1L),0L,0x013FL,0x4D72L},{0x094EL,0x094EL,0x1DD5L,0x34F7L,(-1L),0L,0x013FL,0x4D72L},{0x094EL,0x094EL,0x1DD5L,0x34F7L,(-1L),0L,0x013FL,0x4D72L},{0x094EL,0x094EL,0x1DD5L,0x34F7L,(-1L),0L,0x013FL,0x4D72L},{0x094EL,0x094EL,0x1DD5L,0x34F7L,(-1L),0L,0x013FL,0x4D72L},{0x094EL,0x094EL,0x1DD5L,0x34F7L,(-1L),0L,0x013FL,0x4D72L},{0x094EL,0x094EL,0x1DD5L,0x34F7L,(-1L),0L,0x013FL,0x4D72L},{0x094EL,0x094EL,0x1DD5L,0x34F7L,(-1L),0L,0x013FL,0x4D72L},{0x094EL,0x094EL,0x1DD5L,0x34F7L,(-1L),0L,0x013FL,0x4D72L}};
                    int i, j, k;
                    for (l_588[0] = 2; (l_588[0] >= 0); l_588[0] -= 1)
                    { /* block id: 398 */
                        volatile uint64_t l_589 = 0x2BA3C2C2EFE5B846L;/* VOLATILE GLOBAL l_589 */
                        int i;
                        l_589 = p_1704->g_438[l_587];
                    }
                    ++l_593[0][2][0];
                    l_599[9][0] = (l_598[3][4] = (l_597 = (l_596 = (-1L))));
                    for (l_597 = 0; (l_597 <= 2); l_597 += 1)
                    { /* block id: 408 */
                        int16_t l_600[4];
                        uint64_t l_601 = 0x905836199C53270EL;
                        uint32_t l_604 = 1UL;
                        int32_t l_605 = 0x3ADEC67FL;
                        int64_t l_606 = 0x1434A59498C6CCEFL;
                        uint64_t l_607 = 18446744073709551610UL;
                        int8_t l_608[1];
                        int32_t *l_609 = &l_605;
                        int32_t *l_610 = &l_605;
                        int i;
                        for (i = 0; i < 4; i++)
                            l_600[i] = 0x32CEL;
                        for (i = 0; i < 1; i++)
                            l_608[i] = (-1L);
                        l_608[0] &= ((l_605 = (l_588[7] = (p_1704->g_438[l_587] , ((l_601++) , l_604)))) , (l_606 , l_607));
                        l_610 = l_609;
                    }
                }
                l_611[5][0][4] = (void*)0;
            }
            l_613 |= l_612;
            unsigned int result = 0;
            result += l_472;
            int l_473_i0;
            for (l_473_i0 = 0; l_473_i0 < 1; l_473_i0++) {
                result += l_473[l_473_i0];
            }
            result += l_494;
            result += l_495;
            result += l_612;
            result += l_613;
            atomic_add(&p_1704->g_special_values[74 * get_linear_group_id() + 67], result);
        }
        else
        { /* block id: 419 */
            (1 + 1);
        }
    }
    else
    { /* block id: 422 */
        return p_91;
    }
    (*p_1704->g_615) = l_614;
    for (l_468 = 0; (l_468 > 58); l_468++)
    { /* block id: 428 */
        uint64_t l_671[3];
        int i;
        for (i = 0; i < 3; i++)
            l_671[i] = 18446744073709551615UL;
        for (l_467 = (-12); (l_467 <= 56); ++l_467)
        { /* block id: 431 */
            int8_t **l_636 = &p_1704->g_345;
            int8_t ***l_635 = &l_636;
            int32_t l_656 = 0x0F94E9FFL;
            for (p_93 = 1; (p_93 <= 6); p_93 += 1)
            { /* block id: 434 */
                int i;
                if (p_1704->g_296[p_93])
                    break;
                for (p_1704->g_433 = 4; (p_1704->g_433 >= 0); p_1704->g_433 -= 1)
                { /* block id: 438 */
                    int32_t **l_620 = (void*)0;
                    int32_t **l_621 = (void*)0;
                    int i;
                    if (p_1704->g_233[(p_93 + 1)])
                        break;
                    (*p_1704->g_623) = ((*p_1704->g_615) = p_91);
                }
            }
            for (p_1704->g_351 = 0; (p_1704->g_351 >= 12); ++p_1704->g_351)
            { /* block id: 446 */
                uint32_t l_627 = 1UL;
                l_627 = 1L;
                for (p_93 = (-27); (p_93 != 59); p_93 = safe_add_func_uint32_t_u_u(p_93, 7))
                { /* block id: 450 */
                    int32_t **l_630 = &l_614;
                    (*l_630) = (void*)0;
                    return (*p_1704->g_615);
                }
                for (p_1704->g_443 = 4; (p_1704->g_443 >= 0); p_1704->g_443 -= 1)
                { /* block id: 456 */
                    int8_t ****l_637[4][8] = {{&l_635,(void*)0,&l_635,&l_635,(void*)0,&l_635,&l_635,(void*)0},{&l_635,(void*)0,&l_635,&l_635,(void*)0,&l_635,&l_635,(void*)0},{&l_635,(void*)0,&l_635,&l_635,(void*)0,&l_635,&l_635,(void*)0},{&l_635,(void*)0,&l_635,&l_635,(void*)0,&l_635,&l_635,(void*)0}};
                    int16_t ***l_642 = (void*)0;
                    int16_t ****l_641[6][2];
                    int i, j;
                    for (i = 0; i < 6; i++)
                    {
                        for (j = 0; j < 2; j++)
                            l_641[i][j] = &l_642;
                    }
                    for (p_1704->g_444 = 0; (p_1704->g_444 <= 6); p_1704->g_444 += 1)
                    { /* block id: 459 */
                        int32_t *l_631 = &p_1704->g_632;
                        int32_t *l_633 = &p_1704->g_634;
                        int i, j;
                        (*l_631) ^= p_1704->g_42[(p_1704->g_443 + 5)][p_1704->g_444];
                        (*l_633) = ((*l_631) = (-1L));
                    }
                    (*p_1704->g_646) = (((l_635 = l_635) != (l_640 = p_1704->g_638)) < (l_641[5][1] != p_1704->g_643));
                }
            }
            for (p_1704->g_116 = 2; (p_1704->g_116 <= 6); p_1704->g_116 += 1)
            { /* block id: 471 */
                int32_t l_651[4][10] = {{(-1L),(-6L),(-1L),(-1L),(-6L),(-1L),(-1L),(-6L),(-1L),(-1L)},{(-1L),(-6L),(-1L),(-1L),(-6L),(-1L),(-1L),(-6L),(-1L),(-1L)},{(-1L),(-6L),(-1L),(-1L),(-6L),(-1L),(-1L),(-6L),(-1L),(-1L)},{(-1L),(-6L),(-1L),(-1L),(-6L),(-1L),(-1L),(-6L),(-1L),(-1L)}};
                int16_t *l_667 = &p_1704->g_668;
                uint64_t *l_669[6] = {&l_449,&l_449,&l_449,&l_449,&l_449,&l_449};
                int32_t l_670 = (-1L);
                uint32_t *l_683 = &p_1704->g_684;
                int i, j;
                (1 + 1);
            }
        }
    }
    return p_91;
}


/* ------------------------------------------ */
/* 
 * reads : p_1704->g_116 p_1704->g_123 p_1704->g_59 p_1704->g_60 p_1704->g_71 p_1704->g_2 p_1704->g_146 p_1704->g_124 p_1704->g_159 p_1704->g_170 p_1704->g_58 p_1704->g_160 p_1704->g_42 p_1704->g_211 p_1704->g_219 p_1704->g_235 p_1704->g_280 p_1704->g_52 p_1704->g_351 p_1704->g_234 p_1704->g_281 p_1704->g_282 p_1704->g_233 p_1704->g_345 p_1704->g_302 p_1704->g_374 p_1704->g_444
 * writes: p_1704->g_116 p_1704->g_124 p_1704->g_71 p_1704->g_128 p_1704->g_146 p_1704->g_170 p_1704->g_211 p_1704->g_219 p_1704->g_235 p_1704->g_280 p_1704->g_345 p_1704->g_351 p_1704->g_234 p_1704->g_374 p_1704->g_444
 */
uint64_t ** func_95(uint64_t  p_96, int32_t * p_97, struct S0 * p_1704)
{ /* block id: 40 */
    uint16_t l_119 = 0x493BL;
    int8_t l_147 = 0x0BL;
    int32_t l_149 = 0L;
    int64_t l_161 = 1L;
    int32_t l_165 = (-1L);
    int32_t l_167 = 1L;
    int32_t l_169 = 7L;
    int16_t *l_179 = &p_1704->g_146;
    int16_t *l_181 = &p_1704->g_146;
    int16_t **l_180 = &l_181;
    int16_t *l_183 = &p_1704->g_146;
    int16_t **l_182 = &l_183;
    uint64_t **l_190 = &p_1704->g_160[2];
    int32_t l_191 = (-1L);
    int32_t *l_192 = (void*)0;
    int32_t *l_193 = &l_165;
    int32_t ***l_222 = &p_1704->g_128;
    int8_t l_232[2][1][3];
    int32_t **l_299 = &p_1704->g_124;
    int16_t ***l_319 = &l_180;
    uint32_t l_325 = 0UL;
    int8_t *l_344 = (void*)0;
    int8_t *l_349 = &l_232[1][0][0];
    int8_t **l_348[10][2][9] = {{{&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349},{&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349}},{{&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349},{&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349}},{{&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349},{&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349}},{{&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349},{&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349}},{{&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349},{&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349}},{{&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349},{&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349}},{{&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349},{&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349}},{{&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349},{&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349}},{{&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349},{&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349}},{{&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349},{&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349,&l_349}}};
    int32_t l_350[4][4];
    uint64_t l_381 = 0xFCB661F05CBE08F6L;
    uint8_t l_422[5] = {0x37L,0x37L,0x37L,0x37L,0x37L};
    int32_t l_435[6][2][5] = {{{(-2L),(-3L),0L,0L,0L},{(-2L),(-3L),0L,0L,0L}},{{(-2L),(-3L),0L,0L,0L},{(-2L),(-3L),0L,0L,0L}},{{(-2L),(-3L),0L,0L,0L},{(-2L),(-3L),0L,0L,0L}},{{(-2L),(-3L),0L,0L,0L},{(-2L),(-3L),0L,0L,0L}},{{(-2L),(-3L),0L,0L,0L},{(-2L),(-3L),0L,0L,0L}},{{(-2L),(-3L),0L,0L,0L},{(-2L),(-3L),0L,0L,0L}}};
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 3; k++)
                l_232[i][j][k] = 0x05L;
        }
    }
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 4; j++)
            l_350[i][j] = 0x5BF143CCL;
    }
    for (p_1704->g_116 = 0; (p_1704->g_116 <= 17); p_1704->g_116 = safe_add_func_uint32_t_u_u(p_1704->g_116, 5))
    { /* block id: 43 */
        int32_t *l_120 = &p_1704->g_60;
        int32_t **l_121 = (void*)0;
        int32_t **l_122 = &l_120;
        uint32_t l_148 = 0UL;
        int32_t l_162 = 0L;
        int32_t l_163 = 0x0BEEA7B1L;
        int32_t l_164 = 0x36E33FDBL;
        int32_t l_166 = 0x618B63CEL;
        int32_t l_168 = 0x68E36131L;
        if (l_119)
            break;
        (*p_1704->g_123) = ((*l_122) = l_120);
        for (p_1704->g_71 = 0; (p_1704->g_71 <= 41); ++p_1704->g_71)
        { /* block id: 49 */
            int32_t ***l_127[8][8][4];
            int16_t *l_145 = &p_1704->g_146;
            uint64_t *l_157 = &p_1704->g_71;
            uint64_t **l_156 = &l_157;
            int i, j, k;
            for (i = 0; i < 8; i++)
            {
                for (j = 0; j < 8; j++)
                {
                    for (k = 0; k < 4; k++)
                        l_127[i][j][k] = &l_122;
                }
            }
            l_149 |= (((p_1704->g_59 , (p_1704->g_128 = &l_120)) != (((((safe_sub_func_uint32_t_u_u((safe_lshift_func_int8_t_s_s(((((((*l_145) &= ((safe_lshift_func_int16_t_s_s((((4294967288UL >= ((safe_add_func_int64_t_s_s((l_119 <= (**l_122)), (safe_add_func_int16_t_s_s((FAKE_DIVERGE(p_1704->group_1_offset, get_group_id(1), 10) == (!p_96)), (((safe_lshift_func_uint8_t_u_u((((((safe_mul_func_uint8_t_u_u((safe_div_func_uint64_t_u_u(((0x5EL >= p_96) || p_1704->g_71), p_96)), 0x25L)) , p_96) && 0x45L) & 0x7D80L) , p_96), 4)) , GROUP_DIVERGE(0, 1)) != p_96))))) >= 0x7FA0514BL)) >= p_1704->g_2[5]) && p_96), 4)) == p_96)) & l_119) , p_1704->g_2[4]) , p_1704->g_146) != 0x4CC2L), l_147)), (*p_1704->g_124))) | p_96) && 0x2AL) & (**l_122)) , (void*)0)) <= l_148);
            for (p_96 = 0; (p_96 < 7); ++p_96)
            { /* block id: 55 */
                for (l_119 = 17; (l_119 != 48); l_119 = safe_add_func_uint16_t_u_u(l_119, 2))
                { /* block id: 58 */
                    uint64_t *l_155 = (void*)0;
                    uint64_t **l_154[5] = {&l_155,&l_155,&l_155,&l_155,&l_155};
                    int i;
                    for (l_148 = 0; (l_148 <= 6); l_148 += 1)
                    { /* block id: 61 */
                        uint64_t **l_158 = &l_155;
                        return p_1704->g_159;
                    }
                    return &p_1704->g_160[2];
                }
                l_149 = ((p_96 , &p_1704->g_128) != l_127[2][3][1]);
            }
            --p_1704->g_170;
        }
    }
    if (((*l_193) = (p_1704->g_116 == ((((safe_mod_func_int64_t_s_s(((((safe_rshift_func_int8_t_s_u(p_1704->g_2[6], (safe_lshift_func_uint8_t_u_u((~((((-6L) || (l_179 != ((*l_182) = ((*l_180) = &p_1704->g_146)))) >= (((-1L) == (safe_add_func_uint64_t_u_u((safe_sub_func_int32_t_s_s((((*l_179) = (safe_mod_func_int16_t_s_s(((l_167 &= (l_191 ^= ((&p_1704->g_160[1] != (l_190 = l_190)) <= (0x2632C09F95BEDFB2L || l_147)))) , p_1704->g_58), p_96))) ^ p_96), l_165)), p_96))) > 0x423DL)) == p_1704->g_2[6])), l_161)))) ^ GROUP_DIVERGE(2, 1)) , l_169) ^ p_1704->g_60), (**p_1704->g_159))) | p_96) >= p_96) | 0x119967109F51DABAL))))
    { /* block id: 78 */
        uint32_t l_194 = 0x7F3C6194L;
        int32_t l_212 = 0x681AC69CL;
        int32_t l_216 = 0x2275D252L;
        int32_t l_217 = 0x3AE3880BL;
        int32_t ***l_223[8] = {&p_1704->g_128,(void*)0,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128,&p_1704->g_128,(void*)0};
        uint64_t **l_292 = &p_1704->g_160[1];
        int16_t ***l_316[1];
        int8_t *l_343[2][6][2] = {{{&p_1704->g_233[2],&l_147},{&p_1704->g_233[2],&l_147},{&p_1704->g_233[2],&l_147},{&p_1704->g_233[2],&l_147},{&p_1704->g_233[2],&l_147},{&p_1704->g_233[2],&l_147}},{{&p_1704->g_233[2],&l_147},{&p_1704->g_233[2],&l_147},{&p_1704->g_233[2],&l_147},{&p_1704->g_233[2],&l_147},{&p_1704->g_233[2],&l_147},{&p_1704->g_233[2],&l_147}}};
        int8_t **l_342[9] = {&l_343[1][5][0],(void*)0,&l_343[1][5][0],&l_343[1][5][0],(void*)0,&l_343[1][5][0],&l_343[1][5][0],(void*)0,&l_343[1][5][0]};
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_316[i] = (void*)0;
        l_194 = 0x733D140EL;
        for (l_194 = 0; (l_194 != 33); l_194 = safe_add_func_uint64_t_u_u(l_194, 1))
        { /* block id: 82 */
            uint64_t l_200 = 0xEEE6CD1A5B37FBF5L;
            int32_t l_210 = (-1L);
            int32_t l_214 = 0L;
            int32_t l_215 = 0L;
            for (l_149 = (-4); (l_149 > 17); ++l_149)
            { /* block id: 85 */
                int32_t *l_199[10][8][2] = {{{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46}},{{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46}},{{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46}},{{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46}},{{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46}},{{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46}},{{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46}},{{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46}},{{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46}},{{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46},{&l_169,&p_1704->g_46}}};
                int32_t l_213 = 0L;
                int i, j, k;
                l_200++;
                for (l_165 = 0; (l_165 >= 14); l_165 = safe_add_func_uint16_t_u_u(l_165, 3))
                { /* block id: 89 */
                    int32_t *l_209 = (void*)0;
                    for (p_1704->g_71 = (-27); (p_1704->g_71 <= 25); ++p_1704->g_71)
                    { /* block id: 92 */
                        int32_t **l_207 = &p_1704->g_124;
                        int32_t *l_208 = &l_167;
                        l_208 = ((*l_207) = (*p_1704->g_123));
                    }
                    p_97 = l_209;
                    if (l_210)
                        continue;
                    l_212 ^= (p_1704->g_211[0] ^= (!(l_200 | l_194)));
                }
                if (p_96)
                    break;
                --p_1704->g_219[6];
            }
            if ((l_222 == ((FAKE_DIVERGE(p_1704->global_0_offset, get_global_id(0), 10) < FAKE_DIVERGE(p_1704->global_0_offset, get_global_id(0), 10)) , l_223[0])))
            { /* block id: 104 */
                int32_t *l_224 = &l_212;
                p_97 = l_224;
            }
            else
            { /* block id: 106 */
                int64_t l_228 = 7L;
                int32_t l_230 = 0x118B3C7FL;
                int32_t l_231[1][9] = {{0x2A7A5E96L,0x2A7A5E96L,0x2A7A5E96L,0x2A7A5E96L,0x2A7A5E96L,0x2A7A5E96L,0x2A7A5E96L,0x2A7A5E96L,0x2A7A5E96L}};
                int i, j;
                for (l_191 = 0; (l_191 <= 7); l_191 += 1)
                { /* block id: 109 */
                    int32_t l_229 = 0x1A248FCCL;
                    int i;
                    if ((atomic_inc(&p_1704->l_atomic_input[36]) == 8))
                    { /* block id: 111 */
                        int32_t l_226 = (-4L);
                        int32_t *l_225[5][5][6] = {{{&l_226,&l_226,&l_226,&l_226,&l_226,&l_226},{&l_226,&l_226,&l_226,&l_226,&l_226,&l_226},{&l_226,&l_226,&l_226,&l_226,&l_226,&l_226},{&l_226,&l_226,&l_226,&l_226,&l_226,&l_226},{&l_226,&l_226,&l_226,&l_226,&l_226,&l_226}},{{&l_226,&l_226,&l_226,&l_226,&l_226,&l_226},{&l_226,&l_226,&l_226,&l_226,&l_226,&l_226},{&l_226,&l_226,&l_226,&l_226,&l_226,&l_226},{&l_226,&l_226,&l_226,&l_226,&l_226,&l_226},{&l_226,&l_226,&l_226,&l_226,&l_226,&l_226}},{{&l_226,&l_226,&l_226,&l_226,&l_226,&l_226},{&l_226,&l_226,&l_226,&l_226,&l_226,&l_226},{&l_226,&l_226,&l_226,&l_226,&l_226,&l_226},{&l_226,&l_226,&l_226,&l_226,&l_226,&l_226},{&l_226,&l_226,&l_226,&l_226,&l_226,&l_226}},{{&l_226,&l_226,&l_226,&l_226,&l_226,&l_226},{&l_226,&l_226,&l_226,&l_226,&l_226,&l_226},{&l_226,&l_226,&l_226,&l_226,&l_226,&l_226},{&l_226,&l_226,&l_226,&l_226,&l_226,&l_226},{&l_226,&l_226,&l_226,&l_226,&l_226,&l_226}},{{&l_226,&l_226,&l_226,&l_226,&l_226,&l_226},{&l_226,&l_226,&l_226,&l_226,&l_226,&l_226},{&l_226,&l_226,&l_226,&l_226,&l_226,&l_226},{&l_226,&l_226,&l_226,&l_226,&l_226,&l_226},{&l_226,&l_226,&l_226,&l_226,&l_226,&l_226}}};
                        int32_t *l_227 = &l_226;
                        int i, j, k;
                        l_227 = (l_225[4][2][1] = (void*)0);
                        unsigned int result = 0;
                        result += l_226;
                        atomic_add(&p_1704->l_special_values[36], result);
                    }
                    else
                    { /* block id: 114 */
                        (1 + 1);
                    }
                    p_97 = p_97;
                    p_1704->g_235--;
                }
                for (p_1704->g_235 = 0; (p_1704->g_235 == 18); p_1704->g_235 = safe_add_func_uint16_t_u_u(p_1704->g_235, 1))
                { /* block id: 122 */
                    (*p_1704->g_123) = (*p_1704->g_123);
                }
                if ((atomic_inc(&p_1704->l_atomic_input[30]) == 6))
                { /* block id: 126 */
                    int32_t l_240 = 0x5A364DE6L;
                    uint64_t l_256 = 0x31F2D73772E7577DL;
                    int32_t l_257 = (-1L);
                    int64_t l_274 = 7L;
                    int16_t l_275 = 0x6B68L;
                    int64_t l_276 = 0L;
                    uint32_t l_277 = 4UL;
                    uint32_t l_278[8][1][6] = {{{0x7D3FE88EL,0x1E026637L,0x1E026637L,0x7D3FE88EL,0x7D3FE88EL,0x1E026637L}},{{0x7D3FE88EL,0x1E026637L,0x1E026637L,0x7D3FE88EL,0x7D3FE88EL,0x1E026637L}},{{0x7D3FE88EL,0x1E026637L,0x1E026637L,0x7D3FE88EL,0x7D3FE88EL,0x1E026637L}},{{0x7D3FE88EL,0x1E026637L,0x1E026637L,0x7D3FE88EL,0x7D3FE88EL,0x1E026637L}},{{0x7D3FE88EL,0x1E026637L,0x1E026637L,0x7D3FE88EL,0x7D3FE88EL,0x1E026637L}},{{0x7D3FE88EL,0x1E026637L,0x1E026637L,0x7D3FE88EL,0x7D3FE88EL,0x1E026637L}},{{0x7D3FE88EL,0x1E026637L,0x1E026637L,0x7D3FE88EL,0x7D3FE88EL,0x1E026637L}},{{0x7D3FE88EL,0x1E026637L,0x1E026637L,0x7D3FE88EL,0x7D3FE88EL,0x1E026637L}}};
                    uint16_t l_279[6] = {0xC3DFL,0x1DF5L,0xC3DFL,0xC3DFL,0x1DF5L,0xC3DFL};
                    int i, j, k;
                    for (l_240 = 0; (l_240 == 14); l_240 = safe_add_func_uint16_t_u_u(l_240, 1))
                    { /* block id: 129 */
                        uint32_t l_243 = 1UL;
                        uint16_t l_244 = 4UL;
                        int64_t l_245 = (-8L);
                        uint64_t l_246 = 0UL;
                        int16_t l_247 = 0L;
                        int64_t l_248 = 0x18B2DAAAC5D9CE62L;
                        uint8_t l_249 = 1UL;
                        int16_t *l_251[7];
                        int16_t **l_250 = &l_251[6];
                        uint64_t l_252 = 18446744073709551609UL;
                        uint32_t l_253 = 4294967295UL;
                        uint64_t l_254 = 0xB9CF8BAB20AB7912L;
                        uint32_t l_255 = 3UL;
                        int i;
                        for (i = 0; i < 7; i++)
                            l_251[i] = &l_247;
                        l_249 = ((l_245 = (l_243 , l_244)) , ((l_246 = 5UL) , (l_248 = l_247)));
                        l_250 = (void*)0;
                        l_252 |= 7L;
                        l_255 &= ((l_253 ^= 1L) , l_254);
                    }
                    if ((l_256 , l_257))
                    { /* block id: 139 */
                        int32_t l_259 = (-1L);
                        int32_t *l_258 = &l_259;
                        int32_t *l_260 = &l_259;
                        int32_t l_261[10][5] = {{0x4D836B3EL,0x0D991BF4L,9L,0L,9L},{0x4D836B3EL,0x0D991BF4L,9L,0L,9L},{0x4D836B3EL,0x0D991BF4L,9L,0L,9L},{0x4D836B3EL,0x0D991BF4L,9L,0L,9L},{0x4D836B3EL,0x0D991BF4L,9L,0L,9L},{0x4D836B3EL,0x0D991BF4L,9L,0L,9L},{0x4D836B3EL,0x0D991BF4L,9L,0L,9L},{0x4D836B3EL,0x0D991BF4L,9L,0L,9L},{0x4D836B3EL,0x0D991BF4L,9L,0L,9L},{0x4D836B3EL,0x0D991BF4L,9L,0L,9L}};
                        int8_t l_262[9];
                        int i, j;
                        for (i = 0; i < 9; i++)
                            l_262[i] = 1L;
                        l_260 = (l_258 = (void*)0);
                        l_240 ^= (((l_262[5] = (l_261[1][1] = 65535UL)) , 1L) , 0x52D930D7L);
                        l_240 ^= (-1L);
                    }
                    else
                    { /* block id: 146 */
                        uint64_t **l_263 = (void*)0;
                        uint64_t l_266 = 0xD717D0708E555903L;
                        uint64_t *l_265 = &l_266;
                        uint64_t **l_264 = &l_265;
                        int32_t l_267[8][3] = {{0x05B0D0C2L,0x78A7C919L,0x38831052L},{0x05B0D0C2L,0x78A7C919L,0x38831052L},{0x05B0D0C2L,0x78A7C919L,0x38831052L},{0x05B0D0C2L,0x78A7C919L,0x38831052L},{0x05B0D0C2L,0x78A7C919L,0x38831052L},{0x05B0D0C2L,0x78A7C919L,0x38831052L},{0x05B0D0C2L,0x78A7C919L,0x38831052L},{0x05B0D0C2L,0x78A7C919L,0x38831052L}};
                        int32_t l_268 = 0x78DD13CFL;
                        int8_t l_269 = 0x18L;
                        uint16_t l_270 = 0UL;
                        int16_t l_271 = (-4L);
                        uint64_t l_272 = 0xB99F19B798C47F8CL;
                        int64_t l_273[9] = {0L,0x15F6EF4A846E4403L,0L,0L,0x15F6EF4A846E4403L,0L,0L,0x15F6EF4A846E4403L,0L};
                        int i, j;
                        l_264 = l_263;
                        l_270 = (l_267[2][1] , ((FAKE_DIVERGE(p_1704->group_1_offset, get_group_id(1), 10) , l_268) , (l_240 = l_269)));
                        l_240 = (l_271 , l_272);
                        l_240 &= l_273[6];
                    }
                    l_279[4] |= (l_278[3][0][5] = (l_277 |= (l_276 = (l_275 = l_274))));
                    unsigned int result = 0;
                    result += l_240;
                    result += l_256;
                    result += l_257;
                    result += l_274;
                    result += l_275;
                    result += l_276;
                    result += l_277;
                    int l_278_i0, l_278_i1, l_278_i2;
                    for (l_278_i0 = 0; l_278_i0 < 8; l_278_i0++) {
                        for (l_278_i1 = 0; l_278_i1 < 1; l_278_i1++) {
                            for (l_278_i2 = 0; l_278_i2 < 6; l_278_i2++) {
                                result += l_278[l_278_i0][l_278_i1][l_278_i2];
                            }
                        }
                    }
                    int l_279_i0;
                    for (l_279_i0 = 0; l_279_i0 < 6; l_279_i0++) {
                        result += l_279[l_279_i0];
                    }
                    atomic_add(&p_1704->l_special_values[30], result);
                }
                else
                { /* block id: 158 */
                    (1 + 1);
                }
            }
            for (p_96 = 1; (p_96 <= 4); p_96 += 1)
            { /* block id: 164 */
                int32_t ***l_293 = &p_1704->g_128;
                int8_t l_306 = (-6L);
                int32_t l_320[9][4][5] = {{{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L},{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L},{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L},{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L}},{{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L},{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L},{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L},{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L}},{{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L},{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L},{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L},{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L}},{{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L},{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L},{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L},{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L}},{{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L},{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L},{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L},{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L}},{{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L},{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L},{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L},{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L}},{{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L},{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L},{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L},{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L}},{{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L},{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L},{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L},{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L}},{{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L},{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L},{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L},{(-1L),0x396CAC7BL,1L,(-1L),0x6F715648L}}};
                uint16_t l_321[8][10][3] = {{{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL}},{{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL}},{{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL}},{{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL}},{{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL}},{{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL}},{{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL}},{{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL},{0UL,1UL,9UL}}};
                uint64_t **l_324 = &p_1704->g_160[2];
                int i, j, k;
                for (l_191 = 4; (l_191 >= 0); l_191 -= 1)
                { /* block id: 167 */
                    volatile int16_t ** volatile *l_283 = &p_1704->g_280;
                    int32_t ***l_294 = &p_1704->g_128;
                    int64_t *l_295[4][3] = {{(void*)0,&l_161,(void*)0},{(void*)0,&l_161,(void*)0},{(void*)0,&l_161,(void*)0},{(void*)0,&l_161,(void*)0}};
                    int16_t **l_305[1][3];
                    int i, j;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 3; j++)
                            l_305[i][j] = &l_179;
                    }
                    (*l_283) = p_1704->g_280;
                }
                --l_321[4][1][2];
                for (p_1704->g_235 = 0; (p_1704->g_235 <= 4); p_1704->g_235 += 1)
                { /* block id: 193 */
                    return l_324;
                }
                l_215 &= 0x29A96D1DL;
            }
            l_325--;
        }
        p_1704->g_351 |= ((*l_193) = (((safe_mod_func_int32_t_s_s(((void*)0 != &l_161), (safe_div_func_uint32_t_u_u(((safe_mul_func_uint16_t_u_u((safe_add_func_int64_t_s_s((((((safe_add_func_int16_t_s_s(((GROUP_DIVERGE(2, 1) , ((safe_lshift_func_int8_t_s_s((safe_div_func_int32_t_s_s(((p_96 , ((p_96 ^ 0x1BDD9EDA58A444AFL) == p_96)) == ((p_1704->g_345 = (l_344 = &l_147)) == ((((((**l_180) ^= (safe_rshift_func_uint16_t_u_s(((void*)0 != l_348[6][0][8]), (**l_299)))) , (*p_1704->g_124)) < 0x4FBFE7C5L) == l_350[0][3]) , (void*)0))), (**l_299))), p_1704->g_52)) , (void*)0)) != (*l_180)), (*l_193))) , p_96) | p_96) && p_96) , p_96), 6UL)), p_96)) & p_96), p_96)))) > p_96) , (**p_1704->g_123)));
        (*l_193) = (-1L);
    }
    else
    { /* block id: 206 */
        int8_t l_360 = 1L;
        uint32_t l_363 = 0xDF20487EL;
        int8_t **l_368 = &l_344;
        int32_t *l_377 = &l_149;
        int32_t *l_378 = &l_167;
        int32_t *l_379 = &l_167;
        int32_t *l_380[10][2][4] = {{{&l_167,&l_167,&p_1704->g_60,&p_1704->g_2[4]},{&l_167,&l_167,&p_1704->g_60,&p_1704->g_2[4]}},{{&l_167,&l_167,&p_1704->g_60,&p_1704->g_2[4]},{&l_167,&l_167,&p_1704->g_60,&p_1704->g_2[4]}},{{&l_167,&l_167,&p_1704->g_60,&p_1704->g_2[4]},{&l_167,&l_167,&p_1704->g_60,&p_1704->g_2[4]}},{{&l_167,&l_167,&p_1704->g_60,&p_1704->g_2[4]},{&l_167,&l_167,&p_1704->g_60,&p_1704->g_2[4]}},{{&l_167,&l_167,&p_1704->g_60,&p_1704->g_2[4]},{&l_167,&l_167,&p_1704->g_60,&p_1704->g_2[4]}},{{&l_167,&l_167,&p_1704->g_60,&p_1704->g_2[4]},{&l_167,&l_167,&p_1704->g_60,&p_1704->g_2[4]}},{{&l_167,&l_167,&p_1704->g_60,&p_1704->g_2[4]},{&l_167,&l_167,&p_1704->g_60,&p_1704->g_2[4]}},{{&l_167,&l_167,&p_1704->g_60,&p_1704->g_2[4]},{&l_167,&l_167,&p_1704->g_60,&p_1704->g_2[4]}},{{&l_167,&l_167,&p_1704->g_60,&p_1704->g_2[4]},{&l_167,&l_167,&p_1704->g_60,&p_1704->g_2[4]}},{{&l_167,&l_167,&p_1704->g_60,&p_1704->g_2[4]},{&l_167,&l_167,&p_1704->g_60,&p_1704->g_2[4]}}};
        uint16_t *l_406 = (void*)0;
        int i, j, k;
        (*l_299) = p_97;
        for (p_1704->g_235 = 0; (p_1704->g_235 <= 0); p_1704->g_235 += 1)
        { /* block id: 210 */
            int32_t ***l_361[6][4][5] = {{{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128}},{{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128}},{{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128}},{{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128}},{{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128}},{{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128,(void*)0,&p_1704->g_128}}};
            int i, j, k;
            for (p_96 = 3; (p_96 <= 9); p_96 += 1)
            { /* block id: 213 */
                uint16_t l_352[7][5] = {{65533UL,65535UL,65533UL,65533UL,65535UL},{65533UL,65535UL,65533UL,65533UL,65535UL},{65533UL,65535UL,65533UL,65533UL,65535UL},{65533UL,65535UL,65533UL,65533UL,65535UL},{65533UL,65535UL,65533UL,65533UL,65535UL},{65533UL,65535UL,65533UL,65533UL,65535UL},{65533UL,65535UL,65533UL,65533UL,65535UL}};
                int i, j;
                (*l_193) ^= 2L;
                for (p_1704->g_234 = 6; (p_1704->g_234 >= 0); p_1704->g_234 -= 1)
                { /* block id: 217 */
                    l_352[3][1]++;
                    for (l_167 = 0; (l_167 <= 0); l_167 += 1)
                    { /* block id: 221 */
                        int32_t l_355 = 0x55CA80E3L;
                        int32_t ***l_362[10][8][3] = {{{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128}},{{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128}},{{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128}},{{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128}},{{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128}},{{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128}},{{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128}},{{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128}},{{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128}},{{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128},{&p_1704->g_128,&p_1704->g_128,&p_1704->g_128}}};
                        int i, j, k;
                        if (l_350[(l_167 + 2)][(l_167 + 1)])
                            break;
                        (*l_193) = (l_355 = (**p_1704->g_123));
                        if ((**p_1704->g_123))
                            continue;
                        (*l_193) &= (safe_rshift_func_int8_t_s_u((((p_1704->g_71 | p_96) && (safe_rshift_func_uint8_t_u_s((p_96 >= (p_96 & ((*p_1704->g_281) >= (l_355 , ((p_1704->g_233[2] ^ ((l_360 , l_361[4][2][2]) != l_362[7][0][1])) , p_1704->g_234))))), (*p_1704->g_345)))) | l_363), 2));
                    }
                }
            }
            if ((**l_299))
                continue;
            for (l_325 = 0; (l_325 <= 2); l_325 += 1)
            { /* block id: 233 */
                int8_t **l_366 = &l_344;
                int8_t ***l_367[2][5] = {{&l_348[5][0][3],&l_348[5][0][3],&l_348[5][0][3],&l_348[5][0][3],&l_348[5][0][3]},{&l_348[5][0][3],&l_348[5][0][3],&l_348[5][0][3],&l_348[5][0][3],&l_348[5][0][3]}};
                int16_t **l_371 = &l_181;
                int64_t *l_372 = (void*)0;
                int64_t *l_373 = &l_161;
                int32_t l_375 = 0x7D86DE9CL;
                uint64_t **l_376[9][4] = {{&p_1704->g_160[2],&p_1704->g_160[2],&p_1704->g_160[2],&p_1704->g_160[2]},{&p_1704->g_160[2],&p_1704->g_160[2],&p_1704->g_160[2],&p_1704->g_160[2]},{&p_1704->g_160[2],&p_1704->g_160[2],&p_1704->g_160[2],&p_1704->g_160[2]},{&p_1704->g_160[2],&p_1704->g_160[2],&p_1704->g_160[2],&p_1704->g_160[2]},{&p_1704->g_160[2],&p_1704->g_160[2],&p_1704->g_160[2],&p_1704->g_160[2]},{&p_1704->g_160[2],&p_1704->g_160[2],&p_1704->g_160[2],&p_1704->g_160[2]},{&p_1704->g_160[2],&p_1704->g_160[2],&p_1704->g_160[2],&p_1704->g_160[2]},{&p_1704->g_160[2],&p_1704->g_160[2],&p_1704->g_160[2],&p_1704->g_160[2]},{&p_1704->g_160[2],&p_1704->g_160[2],&p_1704->g_160[2],&p_1704->g_160[2]}};
                int i, j;
                (*l_193) |= (!0x7D8D51A2L);
                p_1704->g_374 ^= ((safe_mod_func_int64_t_s_s(p_1704->g_42[6][2], (((&p_1704->g_345 != (l_368 = l_366)) , (*p_1704->g_345)) & ((p_96 <= (p_96 ^ (((*l_373) = (safe_lshift_func_int16_t_s_u((((*l_193) = (((*l_319) = p_1704->g_302) == l_371)) ^ p_1704->g_219[6]), 9))) | l_363))) < 2L)))) || GROUP_DIVERGE(1, 1));
                for (p_96 = 0; (p_96 <= 2); p_96 += 1)
                { /* block id: 242 */
                    int i, j, k;
                    l_375 |= l_232[p_1704->g_235][p_1704->g_235][l_325];
                    return &p_1704->g_160[0];
                }
                return l_376[6][2];
            }
        }
        l_381++;
        for (p_1704->g_71 = (-17); (p_1704->g_71 == 4); p_1704->g_71++)
        { /* block id: 252 */
            int32_t l_386 = 0x2E5DE149L;
            uint64_t **l_403 = &p_1704->g_160[2];
            uint16_t **l_407 = &l_406;
            int32_t *l_423 = (void*)0;
            for (p_1704->g_351 = 3; (p_1704->g_351 >= 0); p_1704->g_351 -= 1)
            { /* block id: 255 */
                uint8_t l_387[9][1][8] = {{{0x26L,0x2DL,0x18L,5UL,249UL,249UL,5UL,0x18L}},{{0x26L,0x2DL,0x18L,5UL,249UL,249UL,5UL,0x18L}},{{0x26L,0x2DL,0x18L,5UL,249UL,249UL,5UL,0x18L}},{{0x26L,0x2DL,0x18L,5UL,249UL,249UL,5UL,0x18L}},{{0x26L,0x2DL,0x18L,5UL,249UL,249UL,5UL,0x18L}},{{0x26L,0x2DL,0x18L,5UL,249UL,249UL,5UL,0x18L}},{{0x26L,0x2DL,0x18L,5UL,249UL,249UL,5UL,0x18L}},{{0x26L,0x2DL,0x18L,5UL,249UL,249UL,5UL,0x18L}},{{0x26L,0x2DL,0x18L,5UL,249UL,249UL,5UL,0x18L}}};
                int32_t *l_401 = (void*)0;
                int i, j, k;
                (1 + 1);
            }
            (*l_379) = ((((safe_rshift_func_int16_t_s_u((~(*p_1704->g_281)), (((*l_407) = l_406) != (void*)0))) & ((l_386 | (((*l_368) = &p_1704->g_351) == (p_1704->g_345 = &p_1704->g_351))) ^ (safe_mul_func_int8_t_s_s((safe_add_func_uint64_t_u_u(0x852837A09856A42AL, ((safe_mod_func_int64_t_s_s((((-9L) & ((safe_mul_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), (safe_mod_func_int64_t_s_s(p_1704->g_374, (**p_1704->g_159))))) , p_96)) , 0x75A9B57CE6A74B90L), p_96)) , 0x38BF8F9B7C2FF9EDL))), 0L)))) | l_386) > (*p_1704->g_124));
            (*l_377) = (safe_sub_func_uint64_t_u_u((p_1704->g_116 ^ (safe_add_func_uint32_t_u_u(l_422[0], FAKE_DIVERGE(p_1704->local_2_offset, get_local_id(2), 10)))), p_96));
            l_423 = p_97;
        }
    }
    (*l_193) |= (**l_299);
    for (l_149 = 0; (l_149 < 22); ++l_149)
    { /* block id: 288 */
        uint8_t l_426 = 1UL;
        int32_t *l_429 = &l_167;
        int32_t *l_430 = (void*)0;
        int32_t *l_431 = &l_169;
        int32_t *l_432[2];
        int8_t l_434 = 0x55L;
        int i;
        for (i = 0; i < 2; i++)
            l_432[i] = &l_169;
        if ((**p_1704->g_123))
            break;
        l_426--;
        ++p_1704->g_444;
    }
    return &p_1704->g_160[1];
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[74];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 74; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[74];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 74; i++)
            l_special_values[i] = 0;
    struct S0 c_1705;
    struct S0* p_1704 = &c_1705;
    struct S0 c_1706 = {
        {0x6DB50520L,0x6DB50520L,0x6DB50520L,0x6DB50520L,0x6DB50520L,0x6DB50520L,0x6DB50520L,0x6DB50520L}, // p_1704->g_2
        18446744073709551614UL, // p_1704->g_31
        {{0xDC14C38D679BDD86L,0x83B91359A7032F1EL,0x0725FC1C57511ECBL,0UL,0x83B91359A7032F1EL,0UL,0x0725FC1C57511ECBL},{0xDC14C38D679BDD86L,0x83B91359A7032F1EL,0x0725FC1C57511ECBL,0UL,0x83B91359A7032F1EL,0UL,0x0725FC1C57511ECBL},{0xDC14C38D679BDD86L,0x83B91359A7032F1EL,0x0725FC1C57511ECBL,0UL,0x83B91359A7032F1EL,0UL,0x0725FC1C57511ECBL},{0xDC14C38D679BDD86L,0x83B91359A7032F1EL,0x0725FC1C57511ECBL,0UL,0x83B91359A7032F1EL,0UL,0x0725FC1C57511ECBL},{0xDC14C38D679BDD86L,0x83B91359A7032F1EL,0x0725FC1C57511ECBL,0UL,0x83B91359A7032F1EL,0UL,0x0725FC1C57511ECBL},{0xDC14C38D679BDD86L,0x83B91359A7032F1EL,0x0725FC1C57511ECBL,0UL,0x83B91359A7032F1EL,0UL,0x0725FC1C57511ECBL},{0xDC14C38D679BDD86L,0x83B91359A7032F1EL,0x0725FC1C57511ECBL,0UL,0x83B91359A7032F1EL,0UL,0x0725FC1C57511ECBL},{0xDC14C38D679BDD86L,0x83B91359A7032F1EL,0x0725FC1C57511ECBL,0UL,0x83B91359A7032F1EL,0UL,0x0725FC1C57511ECBL},{0xDC14C38D679BDD86L,0x83B91359A7032F1EL,0x0725FC1C57511ECBL,0UL,0x83B91359A7032F1EL,0UL,0x0725FC1C57511ECBL},{0xDC14C38D679BDD86L,0x83B91359A7032F1EL,0x0725FC1C57511ECBL,0UL,0x83B91359A7032F1EL,0UL,0x0725FC1C57511ECBL}}, // p_1704->g_42
        (-6L), // p_1704->g_46
        1L, // p_1704->g_52
        0x4CAD7069L, // p_1704->g_58
        0x1653144DL, // p_1704->g_59
        0L, // p_1704->g_60
        1UL, // p_1704->g_71
        0xBD3BL, // p_1704->g_116
        &p_1704->g_52, // p_1704->g_124
        &p_1704->g_124, // p_1704->g_123
        &p_1704->g_124, // p_1704->g_128
        0L, // p_1704->g_146
        {&p_1704->g_42[1][1],&p_1704->g_42[1][1],&p_1704->g_42[1][1]}, // p_1704->g_160
        &p_1704->g_160[1], // p_1704->g_159
        3UL, // p_1704->g_170
        {1UL,1UL,1UL,1UL,1UL}, // p_1704->g_211
        0x63L, // p_1704->g_218
        {0x0728480904A3EDBDL,0x0728480904A3EDBDL,0x0728480904A3EDBDL,0x0728480904A3EDBDL,0x0728480904A3EDBDL,0x0728480904A3EDBDL,0x0728480904A3EDBDL,0x0728480904A3EDBDL}, // p_1704->g_219
        {0x6AL,0x6AL,0x6AL,0x6AL,0x6AL,0x6AL,0x6AL,0x6AL,0x6AL,0x6AL}, // p_1704->g_233
        0x4EB943A5L, // p_1704->g_234
        0x23L, // p_1704->g_235
        4L, // p_1704->g_282
        &p_1704->g_282, // p_1704->g_281
        &p_1704->g_281, // p_1704->g_280
        {0x5C5F0A01DEA12953L,0x5C5F0A01DEA12953L,0x5C5F0A01DEA12953L,0x5C5F0A01DEA12953L,0x5C5F0A01DEA12953L,0x5C5F0A01DEA12953L,0x5C5F0A01DEA12953L}, // p_1704->g_296
        (void*)0, // p_1704->g_302
        &p_1704->g_233[2], // p_1704->g_345
        0x11L, // p_1704->g_351
        0x4BAAC38457D29463L, // p_1704->g_374
        (-1L), // p_1704->g_433
        0x76L, // p_1704->g_436
        1L, // p_1704->g_437
        {0x5AL,0x5AL,0x5AL}, // p_1704->g_438
        {{{0x0CD0L,0x0CD0L,0x0CD0L},{0x0CD0L,0x0CD0L,0x0CD0L}}}, // p_1704->g_439
        0x18035B68L, // p_1704->g_440
        0x2D824A4C45551B5AL, // p_1704->g_441
        1L, // p_1704->g_442
        0x6A168FF8E282461EL, // p_1704->g_443
        1UL, // p_1704->g_444
        0L, // p_1704->g_462
        &p_1704->g_124, // p_1704->g_615
        (void*)0, // p_1704->g_622
        {&p_1704->g_2[2],(void*)0,&p_1704->g_2[2],&p_1704->g_2[2],(void*)0,&p_1704->g_2[2],&p_1704->g_2[2],(void*)0}, // p_1704->g_624
        &p_1704->g_624[4], // p_1704->g_623
        0L, // p_1704->g_632
        (-6L), // p_1704->g_634
        &p_1704->g_345, // p_1704->g_639
        &p_1704->g_639, // p_1704->g_638
        {{&p_1704->g_281,&p_1704->g_281,&p_1704->g_281,&p_1704->g_281,&p_1704->g_281,&p_1704->g_281,&p_1704->g_281},{&p_1704->g_281,&p_1704->g_281,&p_1704->g_281,&p_1704->g_281,&p_1704->g_281,&p_1704->g_281,&p_1704->g_281},{&p_1704->g_281,&p_1704->g_281,&p_1704->g_281,&p_1704->g_281,&p_1704->g_281,&p_1704->g_281,&p_1704->g_281},{&p_1704->g_281,&p_1704->g_281,&p_1704->g_281,&p_1704->g_281,&p_1704->g_281,&p_1704->g_281,&p_1704->g_281}}, // p_1704->g_645
        &p_1704->g_645[3][0], // p_1704->g_644
        &p_1704->g_644, // p_1704->g_643
        &p_1704->g_632, // p_1704->g_646
        {&p_1704->g_116,(void*)0,&p_1704->g_116,&p_1704->g_116,(void*)0,&p_1704->g_116,&p_1704->g_116}, // p_1704->g_653
        &p_1704->g_653[5], // p_1704->g_652
        (-2L), // p_1704->g_668
        {{&p_1704->g_52,&p_1704->g_52,&p_1704->g_2[4],(void*)0,&p_1704->g_634,(void*)0,&p_1704->g_60,&p_1704->g_2[1],&p_1704->g_632},{&p_1704->g_52,&p_1704->g_52,&p_1704->g_2[4],(void*)0,&p_1704->g_634,(void*)0,&p_1704->g_60,&p_1704->g_2[1],&p_1704->g_632},{&p_1704->g_52,&p_1704->g_52,&p_1704->g_2[4],(void*)0,&p_1704->g_634,(void*)0,&p_1704->g_60,&p_1704->g_2[1],&p_1704->g_632},{&p_1704->g_52,&p_1704->g_52,&p_1704->g_2[4],(void*)0,&p_1704->g_634,(void*)0,&p_1704->g_60,&p_1704->g_2[1],&p_1704->g_632},{&p_1704->g_52,&p_1704->g_52,&p_1704->g_2[4],(void*)0,&p_1704->g_634,(void*)0,&p_1704->g_60,&p_1704->g_2[1],&p_1704->g_632},{&p_1704->g_52,&p_1704->g_52,&p_1704->g_2[4],(void*)0,&p_1704->g_634,(void*)0,&p_1704->g_60,&p_1704->g_2[1],&p_1704->g_632},{&p_1704->g_52,&p_1704->g_52,&p_1704->g_2[4],(void*)0,&p_1704->g_634,(void*)0,&p_1704->g_60,&p_1704->g_2[1],&p_1704->g_632},{&p_1704->g_52,&p_1704->g_52,&p_1704->g_2[4],(void*)0,&p_1704->g_634,(void*)0,&p_1704->g_60,&p_1704->g_2[1],&p_1704->g_632},{&p_1704->g_52,&p_1704->g_52,&p_1704->g_2[4],(void*)0,&p_1704->g_634,(void*)0,&p_1704->g_60,&p_1704->g_2[1],&p_1704->g_632},{&p_1704->g_52,&p_1704->g_52,&p_1704->g_2[4],(void*)0,&p_1704->g_634,(void*)0,&p_1704->g_60,&p_1704->g_2[1],&p_1704->g_632}}, // p_1704->g_672
        4294967292UL, // p_1704->g_684
        &p_1704->g_634, // p_1704->g_687
        0xC503L, // p_1704->g_695
        &p_1704->g_695, // p_1704->g_694
        0xCFFB4738L, // p_1704->g_707
        0x62L, // p_1704->g_734
        (void*)0, // p_1704->g_782
        &p_1704->g_624[6], // p_1704->g_783
        (void*)0, // p_1704->g_784
        (void*)0, // p_1704->g_787
        &p_1704->g_634, // p_1704->g_788
        {{&p_1704->g_159,&p_1704->g_159,&p_1704->g_159,&p_1704->g_159,&p_1704->g_159,&p_1704->g_159,&p_1704->g_159,&p_1704->g_159},{&p_1704->g_159,&p_1704->g_159,&p_1704->g_159,&p_1704->g_159,&p_1704->g_159,&p_1704->g_159,&p_1704->g_159,&p_1704->g_159},{&p_1704->g_159,&p_1704->g_159,&p_1704->g_159,&p_1704->g_159,&p_1704->g_159,&p_1704->g_159,&p_1704->g_159,&p_1704->g_159},{&p_1704->g_159,&p_1704->g_159,&p_1704->g_159,&p_1704->g_159,&p_1704->g_159,&p_1704->g_159,&p_1704->g_159,&p_1704->g_159}}, // p_1704->g_799
        &p_1704->g_787, // p_1704->g_935
        {{{&p_1704->g_935,&p_1704->g_935,&p_1704->g_935,&p_1704->g_935,&p_1704->g_935,&p_1704->g_935},{&p_1704->g_935,&p_1704->g_935,&p_1704->g_935,&p_1704->g_935,&p_1704->g_935,&p_1704->g_935}},{{&p_1704->g_935,&p_1704->g_935,&p_1704->g_935,&p_1704->g_935,&p_1704->g_935,&p_1704->g_935},{&p_1704->g_935,&p_1704->g_935,&p_1704->g_935,&p_1704->g_935,&p_1704->g_935,&p_1704->g_935}}}, // p_1704->g_934
        &p_1704->g_934[1][0][1], // p_1704->g_933
        0L, // p_1704->g_953
        &p_1704->g_211[3], // p_1704->g_1057
        0x042E47E19B3BC632L, // p_1704->g_1095
        &p_1704->g_302, // p_1704->g_1253
        &p_1704->g_1253, // p_1704->g_1252
        (void*)0, // p_1704->g_1283
        0x2877L, // p_1704->g_1304
        0x39E9AE35L, // p_1704->g_1305
        {{&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684},{&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684},{&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684},{&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684},{&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684},{&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684},{&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684},{&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684},{&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684},{&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684,&p_1704->g_684}}, // p_1704->g_1309
        {&p_1704->g_1309[9][0],&p_1704->g_1309[6][4],&p_1704->g_1309[3][0],&p_1704->g_1309[6][4],&p_1704->g_1309[9][0],&p_1704->g_1309[9][0],&p_1704->g_1309[6][4],&p_1704->g_1309[3][0],&p_1704->g_1309[6][4],&p_1704->g_1309[9][0]}, // p_1704->g_1308
        0x5883BCB9L, // p_1704->g_1322
        (void*)0, // p_1704->g_1357
        &p_1704->g_1357, // p_1704->g_1356
        {6UL,6UL,6UL,6UL,6UL,6UL,6UL}, // p_1704->g_1367
        (void*)0, // p_1704->g_1450
        0x94268EE7606AA25BL, // p_1704->g_1452
        {{&p_1704->g_235,&p_1704->g_734,&p_1704->g_235},{&p_1704->g_235,&p_1704->g_734,&p_1704->g_235},{&p_1704->g_235,&p_1704->g_734,&p_1704->g_235},{&p_1704->g_235,&p_1704->g_734,&p_1704->g_235},{&p_1704->g_235,&p_1704->g_734,&p_1704->g_235},{&p_1704->g_235,&p_1704->g_734,&p_1704->g_235},{&p_1704->g_235,&p_1704->g_734,&p_1704->g_235},{&p_1704->g_235,&p_1704->g_734,&p_1704->g_235},{&p_1704->g_235,&p_1704->g_734,&p_1704->g_235}}, // p_1704->g_1511
        &p_1704->g_1511[5][2], // p_1704->g_1510
        &p_1704->g_1511[2][2], // p_1704->g_1515
        &p_1704->g_1515, // p_1704->g_1514
        &p_1704->g_60, // p_1704->g_1532
        5UL, // p_1704->g_1539
        sequence_input[get_global_id(0)], // p_1704->global_0_offset
        sequence_input[get_global_id(1)], // p_1704->global_1_offset
        sequence_input[get_global_id(2)], // p_1704->global_2_offset
        sequence_input[get_local_id(0)], // p_1704->local_0_offset
        sequence_input[get_local_id(1)], // p_1704->local_1_offset
        sequence_input[get_local_id(2)], // p_1704->local_2_offset
        sequence_input[get_group_id(0)], // p_1704->group_0_offset
        sequence_input[get_group_id(1)], // p_1704->group_1_offset
        sequence_input[get_group_id(2)], // p_1704->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_1705 = c_1706;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1704);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1704->g_2[i], "p_1704->g_2[i]", print_hash_value);

    }
    transparent_crc(p_1704->g_31, "p_1704->g_31", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1704->g_42[i][j], "p_1704->g_42[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1704->g_46, "p_1704->g_46", print_hash_value);
    transparent_crc(p_1704->g_52, "p_1704->g_52", print_hash_value);
    transparent_crc(p_1704->g_58, "p_1704->g_58", print_hash_value);
    transparent_crc(p_1704->g_59, "p_1704->g_59", print_hash_value);
    transparent_crc(p_1704->g_60, "p_1704->g_60", print_hash_value);
    transparent_crc(p_1704->g_71, "p_1704->g_71", print_hash_value);
    transparent_crc(p_1704->g_116, "p_1704->g_116", print_hash_value);
    transparent_crc(p_1704->g_146, "p_1704->g_146", print_hash_value);
    transparent_crc(p_1704->g_170, "p_1704->g_170", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1704->g_211[i], "p_1704->g_211[i]", print_hash_value);

    }
    transparent_crc(p_1704->g_218, "p_1704->g_218", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1704->g_219[i], "p_1704->g_219[i]", print_hash_value);

    }
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1704->g_233[i], "p_1704->g_233[i]", print_hash_value);

    }
    transparent_crc(p_1704->g_234, "p_1704->g_234", print_hash_value);
    transparent_crc(p_1704->g_235, "p_1704->g_235", print_hash_value);
    transparent_crc(p_1704->g_282, "p_1704->g_282", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1704->g_296[i], "p_1704->g_296[i]", print_hash_value);

    }
    transparent_crc(p_1704->g_351, "p_1704->g_351", print_hash_value);
    transparent_crc(p_1704->g_374, "p_1704->g_374", print_hash_value);
    transparent_crc(p_1704->g_433, "p_1704->g_433", print_hash_value);
    transparent_crc(p_1704->g_436, "p_1704->g_436", print_hash_value);
    transparent_crc(p_1704->g_437, "p_1704->g_437", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1704->g_438[i], "p_1704->g_438[i]", print_hash_value);

    }
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1704->g_439[i][j][k], "p_1704->g_439[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1704->g_440, "p_1704->g_440", print_hash_value);
    transparent_crc(p_1704->g_441, "p_1704->g_441", print_hash_value);
    transparent_crc(p_1704->g_442, "p_1704->g_442", print_hash_value);
    transparent_crc(p_1704->g_443, "p_1704->g_443", print_hash_value);
    transparent_crc(p_1704->g_444, "p_1704->g_444", print_hash_value);
    transparent_crc(p_1704->g_462, "p_1704->g_462", print_hash_value);
    transparent_crc(p_1704->g_632, "p_1704->g_632", print_hash_value);
    transparent_crc(p_1704->g_634, "p_1704->g_634", print_hash_value);
    transparent_crc(p_1704->g_668, "p_1704->g_668", print_hash_value);
    transparent_crc(p_1704->g_684, "p_1704->g_684", print_hash_value);
    transparent_crc(p_1704->g_695, "p_1704->g_695", print_hash_value);
    transparent_crc(p_1704->g_707, "p_1704->g_707", print_hash_value);
    transparent_crc(p_1704->g_734, "p_1704->g_734", print_hash_value);
    transparent_crc(p_1704->g_953, "p_1704->g_953", print_hash_value);
    transparent_crc(p_1704->g_1095, "p_1704->g_1095", print_hash_value);
    transparent_crc(p_1704->g_1304, "p_1704->g_1304", print_hash_value);
    transparent_crc(p_1704->g_1305, "p_1704->g_1305", print_hash_value);
    transparent_crc(p_1704->g_1322, "p_1704->g_1322", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1704->g_1367[i], "p_1704->g_1367[i]", print_hash_value);

    }
    transparent_crc(p_1704->g_1452, "p_1704->g_1452", print_hash_value);
    transparent_crc(p_1704->g_1539, "p_1704->g_1539", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 74; i++)
            transparent_crc(p_1704->g_special_values[i + 74 * get_linear_group_id()], "p_1704->g_special_values[i + 74 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 74; i++)
            transparent_crc(p_1704->l_special_values[i], "p_1704->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
