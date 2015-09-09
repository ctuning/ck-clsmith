// ---fake_divergence ---inter_thread_comm -g 1,47,77 -l 1,1,1
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

__constant uint32_t permutations[10][1] = {
{0}, // permutation 0
{0}, // permutation 1
{0}, // permutation 2
{0}, // permutation 3
{0}, // permutation 4
{0}, // permutation 5
{0}, // permutation 6
{0}, // permutation 7
{0}, // permutation 8
{0} // permutation 9
};

// Seed: 108

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile int32_t  f0;
   uint64_t  f1;
};

union U1 {
   int32_t  f0;
   volatile int64_t  f1;
};

struct S2 {
    int16_t g_10;
    int32_t g_34;
    uint32_t g_39;
    int16_t g_56;
    int32_t g_83;
    volatile int16_t * volatile * volatile g_99;
    volatile union U1 g_128[7][9][2];
    uint8_t g_140[4][2];
    uint8_t g_147;
    uint32_t g_153;
    int8_t g_154;
    int32_t g_159;
    uint32_t g_162;
    volatile int16_t g_169;
    volatile int16_t *g_168;
    volatile int16_t **g_167;
    int16_t g_172;
    int16_t *g_175;
    int16_t **g_174[2][1][3];
    volatile uint64_t g_184;
    int32_t *g_222[4][6];
    int32_t ** volatile g_221;
    struct S0 g_223;
    struct S0 g_229;
    struct S0 g_238;
    struct S0 g_240;
    volatile uint8_t g_273;
    volatile uint8_t *g_272;
    volatile uint8_t * volatile * volatile g_271;
    uint16_t g_275;
    uint64_t g_279[9];
    int16_t g_282;
    uint8_t *g_312;
    uint8_t **g_311;
    uint8_t *** volatile g_310[9];
    struct S0 g_333;
    volatile uint32_t g_393;
    volatile uint32_t *g_392;
    volatile uint32_t ** volatile g_391;
    volatile uint32_t ** volatile * volatile g_390;
    int64_t g_396;
    struct S0 g_412;
    uint64_t ***g_434;
    uint16_t g_463;
    uint32_t g_490;
    int64_t g_512;
    volatile struct S0 g_521;
    uint8_t ***g_525;
    uint16_t g_545;
    int32_t * volatile g_551[6][8][5];
    int32_t * volatile g_552;
    int32_t ** volatile g_553;
    int32_t ** volatile g_554;
    int32_t * volatile g_557;
    volatile struct S0 g_558;
    struct S0 g_559;
    int32_t g_562;
    int32_t g_568;
    int32_t * volatile g_569;
    struct S0 g_570;
    int32_t * volatile g_601;
    uint8_t g_606[6][7][6];
    volatile struct S0 ** volatile g_635;
    volatile struct S0 **g_659;
    int32_t * volatile g_706[10][4];
    int32_t * volatile g_707[3];
    int32_t * volatile g_708;
    int32_t * volatile g_715;
    uint64_t ****g_722;
    union U1 g_763;
    struct S0 g_793;
    struct S0 * volatile g_794;
    uint32_t *g_853;
    uint32_t **g_852[8][5];
    uint32_t ***g_851;
    volatile struct S0 g_931;
    struct S0 g_939;
    int32_t * volatile g_967;
    volatile struct S0 g_980;
    volatile uint32_t * volatile * volatile *** volatile g_996;
    int16_t * volatile g_1019;
    volatile union U1 g_1031;
    int32_t *g_1169;
    int32_t ** volatile g_1168[3];
    int32_t ** volatile g_1170;
    struct S0 *g_1175;
    struct S0 ** volatile g_1174;
    int32_t * volatile g_1185;
    volatile uint8_t g_1215;
    int8_t g_1220;
    int32_t * volatile g_1247;
    uint32_t g_1249;
    int32_t * volatile g_1253[3][7];
    int32_t * volatile g_1254;
    uint32_t g_1310[6][1];
    union U1 g_1352;
    int32_t g_1390;
    int64_t g_1402;
    union U1 g_1417;
    union U1 *g_1423;
    union U1 ** volatile g_1422[3][8][9];
    union U1 ** volatile g_1424;
    union U1 g_1450[3][5][9];
    uint32_t ****g_1462;
    int32_t * volatile g_1495;
    volatile struct S0 g_1500;
    int64_t *g_1539;
    struct S0 g_1577;
    volatile union U1 g_1586[7][5];
    volatile int32_t g_1619;
    union U1 g_1648;
    union U1 g_1652;
    union U1 g_1668[10][5];
    int32_t g_1701;
    int32_t ** volatile g_1702;
    int32_t ** volatile g_1703;
    int32_t *g_1755;
    int32_t **g_1754;
    union U1 g_1759;
    volatile struct S0 g_1781;
    volatile struct S0 * volatile g_1782;
    volatile struct S0 * volatile g_1783;
    uint8_t ****g_1790;
    int16_t g_1797;
    uint64_t ****g_1824;
    struct S0 g_1834;
    int32_t ** volatile g_1883;
    int32_t **g_1888;
    int32_t ***g_1887;
    int32_t *** volatile * volatile g_1886[10][6];
    int32_t ** volatile g_1892;
    struct S0 g_1905[9][4];
    volatile union U1 g_1980;
    volatile union U1 g_1999;
    volatile union U1 g_2002;
    int64_t g_2023;
    struct S0 g_2042;
    struct S0 g_2043[6];
    int16_t g_2061[5];
    uint8_t g_2078;
    struct S0 g_2191[1];
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
uint16_t  func_1(struct S2 * p_2211);
uint32_t  func_4(int16_t  p_5, int8_t  p_6, struct S2 * p_2211);
uint32_t  func_11(int16_t * p_12, struct S2 * p_2211);
int16_t * func_13(int16_t * p_14, int16_t * p_15, uint16_t  p_16, struct S2 * p_2211);
int16_t * func_18(int16_t * p_19, uint32_t  p_20, int64_t  p_21, uint32_t  p_22, struct S2 * p_2211);
int16_t * func_23(int16_t * p_24, int16_t * p_25, int16_t  p_26, int32_t  p_27, int16_t * p_28, struct S2 * p_2211);
int16_t * func_29(int32_t  p_30, int32_t  p_31, struct S2 * p_2211);
int32_t * func_44(uint64_t  p_45, int32_t ** p_46, uint8_t  p_47, uint64_t  p_48, struct S2 * p_2211);
struct S0  func_49(int16_t  p_50, uint32_t  p_51, struct S2 * p_2211);
uint32_t  func_52(int32_t * p_53, int16_t * p_54, struct S2 * p_2211);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2211->g_184
 * writes:
 */
uint16_t  func_1(struct S2 * p_2211)
{ /* block id: 4 */
    int16_t *l_9 = &p_2211->g_10;
    int32_t l_17[2];
    int8_t l_32[1];
    int16_t *l_705 = &p_2211->g_282;
    int16_t **l_1141 = &l_705;
    int16_t *l_1142 = (void*)0;
    int32_t *l_1700 = &p_2211->g_1701;
    int32_t l_1708 = 0x29D1F292L;
    uint64_t l_1720 = 18446744073709551615UL;
    int32_t l_1811 = 0L;
    int8_t l_1812[2];
    uint32_t *****l_1844 = &p_2211->g_1462;
    uint64_t l_1870[3];
    uint32_t l_1924 = 4294967294UL;
    int32_t *l_1931 = &l_17[1];
    uint16_t *l_1984 = &p_2211->g_545;
    uint16_t **l_1983 = &l_1984;
    int32_t l_2060 = 0x4E3FCE1CL;
    int8_t l_2062 = 0L;
    uint32_t l_2131 = 1UL;
    uint64_t **l_2210 = (void*)0;
    int i;
    for (i = 0; i < 2; i++)
        l_17[i] = (-1L);
    for (i = 0; i < 1; i++)
        l_32[i] = (-1L);
    for (i = 0; i < 2; i++)
        l_1812[i] = 0x22L;
    for (i = 0; i < 3; i++)
        l_1870[i] = 0xB91E1D326E086B84L;
    return p_2211->g_184;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint32_t  func_4(int16_t  p_5, int8_t  p_6, struct S2 * p_2211)
{ /* block id: 790 */
    return p_5;
}


/* ------------------------------------------ */
/* 
 * reads : p_2211->g_282 p_2211->g_1390 p_2211->g_1310 p_2211->g_1668 p_2211->g_392 p_2211->g_393 p_2211->g_140 p_2211->g_525 p_2211->g_311 p_2211->g_312 p_2211->g_229.f1 p_2211->g_601 p_2211->g_34
 * writes: p_2211->g_282 p_2211->g_559.f1 p_2211->g_570.f1 p_2211->g_1390 p_2211->g_1169 p_2211->g_562 p_2211->g_279 p_2211->g_83 p_2211->g_34
 */
uint32_t  func_11(int16_t * p_12, struct S2 * p_2211)
{ /* block id: 765 */
    int32_t *l_1666 = &p_2211->g_763.f0;
    int32_t *l_1674 = (void*)0;
    int32_t l_1683 = (-4L);
    int32_t l_1685 = 0x117576B5L;
    int32_t l_1687 = (-10L);
    int32_t l_1688[5];
    uint32_t l_1692 = 4294967293UL;
    uint16_t l_1697 = 0x2A89L;
    int i;
    for (i = 0; i < 5; i++)
        l_1688[i] = 0x23F2D40BL;
    for (p_2211->g_282 = 0; (p_2211->g_282 != 15); p_2211->g_282 = safe_add_func_uint64_t_u_u(p_2211->g_282, 1))
    { /* block id: 768 */
        uint16_t l_1672 = 0x3F10L;
        int32_t l_1684 = 1L;
        int32_t l_1686 = 1L;
        int32_t l_1689 = 0L;
        int32_t l_1690 = 0x34D70662L;
        int32_t l_1691 = 0L;
        int32_t *l_1695 = &l_1688[0];
        int32_t *l_1696[3][6][9] = {{{&l_1688[0],&l_1683,&l_1685,&l_1687,&p_2211->g_34,&l_1683,&l_1689,&l_1691,&l_1683},{&l_1688[0],&l_1683,&l_1685,&l_1687,&p_2211->g_34,&l_1683,&l_1689,&l_1691,&l_1683},{&l_1688[0],&l_1683,&l_1685,&l_1687,&p_2211->g_34,&l_1683,&l_1689,&l_1691,&l_1683},{&l_1688[0],&l_1683,&l_1685,&l_1687,&p_2211->g_34,&l_1683,&l_1689,&l_1691,&l_1683},{&l_1688[0],&l_1683,&l_1685,&l_1687,&p_2211->g_34,&l_1683,&l_1689,&l_1691,&l_1683},{&l_1688[0],&l_1683,&l_1685,&l_1687,&p_2211->g_34,&l_1683,&l_1689,&l_1691,&l_1683}},{{&l_1688[0],&l_1683,&l_1685,&l_1687,&p_2211->g_34,&l_1683,&l_1689,&l_1691,&l_1683},{&l_1688[0],&l_1683,&l_1685,&l_1687,&p_2211->g_34,&l_1683,&l_1689,&l_1691,&l_1683},{&l_1688[0],&l_1683,&l_1685,&l_1687,&p_2211->g_34,&l_1683,&l_1689,&l_1691,&l_1683},{&l_1688[0],&l_1683,&l_1685,&l_1687,&p_2211->g_34,&l_1683,&l_1689,&l_1691,&l_1683},{&l_1688[0],&l_1683,&l_1685,&l_1687,&p_2211->g_34,&l_1683,&l_1689,&l_1691,&l_1683},{&l_1688[0],&l_1683,&l_1685,&l_1687,&p_2211->g_34,&l_1683,&l_1689,&l_1691,&l_1683}},{{&l_1688[0],&l_1683,&l_1685,&l_1687,&p_2211->g_34,&l_1683,&l_1689,&l_1691,&l_1683},{&l_1688[0],&l_1683,&l_1685,&l_1687,&p_2211->g_34,&l_1683,&l_1689,&l_1691,&l_1683},{&l_1688[0],&l_1683,&l_1685,&l_1687,&p_2211->g_34,&l_1683,&l_1689,&l_1691,&l_1683},{&l_1688[0],&l_1683,&l_1685,&l_1687,&p_2211->g_34,&l_1683,&l_1689,&l_1691,&l_1683},{&l_1688[0],&l_1683,&l_1685,&l_1687,&p_2211->g_34,&l_1683,&l_1689,&l_1691,&l_1683},{&l_1688[0],&l_1683,&l_1685,&l_1687,&p_2211->g_34,&l_1683,&l_1689,&l_1691,&l_1683}}};
        int i, j, k;
        for (p_2211->g_559.f1 = 0; (p_2211->g_559.f1 <= 45); p_2211->g_559.f1 = safe_add_func_int32_t_s_s(p_2211->g_559.f1, 7))
        { /* block id: 771 */
            int32_t *l_1665[9][2][2] = {{{&p_2211->g_1648.f0,&p_2211->g_1652.f0},{&p_2211->g_1648.f0,&p_2211->g_1652.f0}},{{&p_2211->g_1648.f0,&p_2211->g_1652.f0},{&p_2211->g_1648.f0,&p_2211->g_1652.f0}},{{&p_2211->g_1648.f0,&p_2211->g_1652.f0},{&p_2211->g_1648.f0,&p_2211->g_1652.f0}},{{&p_2211->g_1648.f0,&p_2211->g_1652.f0},{&p_2211->g_1648.f0,&p_2211->g_1652.f0}},{{&p_2211->g_1648.f0,&p_2211->g_1652.f0},{&p_2211->g_1648.f0,&p_2211->g_1652.f0}},{{&p_2211->g_1648.f0,&p_2211->g_1652.f0},{&p_2211->g_1648.f0,&p_2211->g_1652.f0}},{{&p_2211->g_1648.f0,&p_2211->g_1652.f0},{&p_2211->g_1648.f0,&p_2211->g_1652.f0}},{{&p_2211->g_1648.f0,&p_2211->g_1652.f0},{&p_2211->g_1648.f0,&p_2211->g_1652.f0}},{{&p_2211->g_1648.f0,&p_2211->g_1652.f0},{&p_2211->g_1648.f0,&p_2211->g_1652.f0}}};
            int32_t l_1667[3][8][8] = {{{5L,0x14858EE1L,5L,(-6L),(-1L),0x79C00E4EL,0x270F398CL,0x03618952L},{5L,0x14858EE1L,5L,(-6L),(-1L),0x79C00E4EL,0x270F398CL,0x03618952L},{5L,0x14858EE1L,5L,(-6L),(-1L),0x79C00E4EL,0x270F398CL,0x03618952L},{5L,0x14858EE1L,5L,(-6L),(-1L),0x79C00E4EL,0x270F398CL,0x03618952L},{5L,0x14858EE1L,5L,(-6L),(-1L),0x79C00E4EL,0x270F398CL,0x03618952L},{5L,0x14858EE1L,5L,(-6L),(-1L),0x79C00E4EL,0x270F398CL,0x03618952L},{5L,0x14858EE1L,5L,(-6L),(-1L),0x79C00E4EL,0x270F398CL,0x03618952L},{5L,0x14858EE1L,5L,(-6L),(-1L),0x79C00E4EL,0x270F398CL,0x03618952L}},{{5L,0x14858EE1L,5L,(-6L),(-1L),0x79C00E4EL,0x270F398CL,0x03618952L},{5L,0x14858EE1L,5L,(-6L),(-1L),0x79C00E4EL,0x270F398CL,0x03618952L},{5L,0x14858EE1L,5L,(-6L),(-1L),0x79C00E4EL,0x270F398CL,0x03618952L},{5L,0x14858EE1L,5L,(-6L),(-1L),0x79C00E4EL,0x270F398CL,0x03618952L},{5L,0x14858EE1L,5L,(-6L),(-1L),0x79C00E4EL,0x270F398CL,0x03618952L},{5L,0x14858EE1L,5L,(-6L),(-1L),0x79C00E4EL,0x270F398CL,0x03618952L},{5L,0x14858EE1L,5L,(-6L),(-1L),0x79C00E4EL,0x270F398CL,0x03618952L},{5L,0x14858EE1L,5L,(-6L),(-1L),0x79C00E4EL,0x270F398CL,0x03618952L}},{{5L,0x14858EE1L,5L,(-6L),(-1L),0x79C00E4EL,0x270F398CL,0x03618952L},{5L,0x14858EE1L,5L,(-6L),(-1L),0x79C00E4EL,0x270F398CL,0x03618952L},{5L,0x14858EE1L,5L,(-6L),(-1L),0x79C00E4EL,0x270F398CL,0x03618952L},{5L,0x14858EE1L,5L,(-6L),(-1L),0x79C00E4EL,0x270F398CL,0x03618952L},{5L,0x14858EE1L,5L,(-6L),(-1L),0x79C00E4EL,0x270F398CL,0x03618952L},{5L,0x14858EE1L,5L,(-6L),(-1L),0x79C00E4EL,0x270F398CL,0x03618952L},{5L,0x14858EE1L,5L,(-6L),(-1L),0x79C00E4EL,0x270F398CL,0x03618952L},{5L,0x14858EE1L,5L,(-6L),(-1L),0x79C00E4EL,0x270F398CL,0x03618952L}}};
            int32_t *l_1676 = &p_2211->g_83;
            int32_t *l_1677 = (void*)0;
            int32_t *l_1678 = &l_1667[1][2][0];
            int32_t *l_1679 = &l_1667[0][6][3];
            int32_t *l_1680 = &l_1667[0][0][4];
            int32_t *l_1681 = &p_2211->g_34;
            int32_t *l_1682[9][5] = {{&l_1667[0][3][5],&p_2211->g_34,&l_1667[0][7][1],&p_2211->g_34,&l_1667[0][3][5]},{&l_1667[0][3][5],&p_2211->g_34,&l_1667[0][7][1],&p_2211->g_34,&l_1667[0][3][5]},{&l_1667[0][3][5],&p_2211->g_34,&l_1667[0][7][1],&p_2211->g_34,&l_1667[0][3][5]},{&l_1667[0][3][5],&p_2211->g_34,&l_1667[0][7][1],&p_2211->g_34,&l_1667[0][3][5]},{&l_1667[0][3][5],&p_2211->g_34,&l_1667[0][7][1],&p_2211->g_34,&l_1667[0][3][5]},{&l_1667[0][3][5],&p_2211->g_34,&l_1667[0][7][1],&p_2211->g_34,&l_1667[0][3][5]},{&l_1667[0][3][5],&p_2211->g_34,&l_1667[0][7][1],&p_2211->g_34,&l_1667[0][3][5]},{&l_1667[0][3][5],&p_2211->g_34,&l_1667[0][7][1],&p_2211->g_34,&l_1667[0][3][5]},{&l_1667[0][3][5],&p_2211->g_34,&l_1667[0][7][1],&p_2211->g_34,&l_1667[0][3][5]}};
            int i, j, k;
            for (p_2211->g_570.f1 = 0; (p_2211->g_570.f1 <= 0); p_2211->g_570.f1 += 1)
            { /* block id: 774 */
                uint8_t l_1673 = 0xA9L;
                for (p_2211->g_1390 = 0; (p_2211->g_1390 >= 0); p_2211->g_1390 -= 1)
                { /* block id: 777 */
                    int32_t **l_1669 = &p_2211->g_1169;
                    int32_t *l_1675 = &p_2211->g_34;
                    int i, j;
                    (*l_1675) &= ((safe_lshift_func_uint8_t_u_s(p_2211->g_1310[(p_2211->g_1390 + 4)][p_2211->g_1390], 6)) || (safe_add_func_int32_t_s_s(((-7L) && ((l_1665[6][1][0] = &p_2211->g_568) != l_1666)), ((l_1667[1][2][0] >= (p_2211->g_1668[0][4] , (((*l_1669) = l_1666) == (l_1674 = func_44((safe_rshift_func_uint16_t_u_u((l_1672 , l_1667[1][2][0]), 0)), l_1669, l_1672, l_1673, p_2211))))) >= FAKE_DIVERGE(p_2211->group_1_offset, get_group_id(1), 10)))));
                }
            }
            l_1692--;
        }
        --l_1697;
    }
    return l_1687;
}


/* ------------------------------------------ */
/* 
 * reads : p_2211->g_1170 p_2211->g_1174 p_2211->g_570.f0 p_2211->g_793.f0 p_2211->g_1169 p_2211->g_34 p_2211->g_1215 p_2211->g_1220 p_2211->g_390 p_2211->g_391 p_2211->g_392 p_2211->g_393 p_2211->g_240.f1 p_2211->g_175 p_2211->g_172 p_2211->g_1175 p_2211->g_333 p_2211->g_853 p_2211->g_162 p_2211->g_525 p_2211->g_311 p_2211->g_312 p_2211->g_1247 p_2211->g_1249 p_2211->g_159 p_2211->g_1254 p_2211->g_168 p_2211->g_169 p_2211->g_463 p_2211->g_279 p_2211->g_167 p_2211->g_512 p_2211->g_140 p_2211->g_606 p_2211->g_229.f1 p_2211->g_601 p_2211->g_153 p_2211->g_83 p_2211->g_1310 p_2211->g_794 p_2211->g_412 p_2211->g_271 p_2211->g_272 p_2211->g_273 p_2211->g_147 p_2211->g_793.f1 p_2211->g_967 p_2211->g_comm_values p_2211->g_275 p_2211->g_1352 p_2211->g_722 p_2211->g_434 p_2211->g_708 p_2211->g_154 p_2211->g_1390 p_2211->g_238 p_2211->g_1402 p_2211->g_223.f0 p_2211->g_1417 p_2211->g_980.f1 p_2211->g_1424 p_2211->g_221 p_2211->g_1450 p_2211->g_1462 p_2211->g_851 p_2211->g_1495 p_2211->g_1500 p_2211->g_1450.f0 p_2211->g_715 p_2211->g_1577 p_2211->g_569 p_2211->g_1586 p_2211->g_1539 p_2211->g_396 p_2211->g_545 p_2211->g_1648 p_2211->g_939.f1 p_2211->g_559.f1 p_2211->g_568 p_2211->g_1352.f0 p_2211->g_570.f1
 * writes: p_2211->g_222 p_2211->g_1169 p_2211->g_34 p_2211->g_1175 p_2211->g_162 p_2211->g_172 p_2211->g_154 p_2211->g_568 p_2211->g_463 p_2211->g_1215 p_2211->g_140 p_2211->g_83 p_2211->g_1249 p_2211->g_396 p_2211->g_279 p_2211->g_512 p_2211->g_939.f1 p_2211->g_147 p_2211->g_562 p_2211->g_153 p_2211->g_333 p_2211->g_238 p_2211->g_275 p_2211->g_434 p_2211->g_1423 p_2211->g_706 p_2211->g_851 p_2211->g_545 p_2211->g_1352.f0 p_2211->g_1390 p_2211->g_1462 p_2211->g_570.f1 p_2211->g_559 p_2211->g_229.f1 p_2211->g_1450.f0 p_2211->g_1539 p_2211->g_159 p_2211->g_1402
 */
int16_t * func_13(int16_t * p_14, int16_t * p_15, uint16_t  p_16, struct S2 * p_2211)
{ /* block id: 518 */
    int32_t *l_1166 = &p_2211->g_34;
    int32_t **l_1167 = &p_2211->g_222[2][4];
    struct S0 *l_1173 = &p_2211->g_333;
    int32_t l_1209 = 0x585F032AL;
    int32_t l_1210 = 5L;
    int32_t l_1212 = (-1L);
    int16_t *l_1243 = &p_2211->g_172;
    uint64_t l_1266 = 0xC16537A1418E255BL;
    struct S0 *l_1333 = &p_2211->g_559;
    uint8_t l_1334 = 0x4DL;
    int16_t l_1387[7] = {0L,0x7ACAL,0L,0L,0x7ACAL,0L,0L};
    int32_t ***l_1449 = &l_1167;
    int32_t ****l_1448 = &l_1449;
    int64_t *l_1538 = (void*)0;
    int32_t l_1567 = (-1L);
    int32_t l_1569 = 3L;
    int32_t l_1615[7];
    uint8_t l_1620 = 0x0DL;
    union U1 *l_1651 = &p_2211->g_1652;
    int8_t l_1653[5];
    int i;
    for (i = 0; i < 7; i++)
        l_1615[i] = (-1L);
    for (i = 0; i < 5; i++)
        l_1653[i] = 0x4FL;
    (*p_2211->g_1170) = ((*l_1167) = l_1166);
lbl_1541:
    for (p_2211->g_34 = 0; (p_2211->g_34 != 15); p_2211->g_34 = safe_add_func_uint32_t_u_u(p_2211->g_34, 9))
    { /* block id: 523 */
        uint8_t *l_1198 = (void*)0;
        int32_t l_1201 = 0x4214F5ACL;
        int32_t l_1205[6];
        uint32_t l_1222 = 0x9F076FC2L;
        uint8_t l_1241 = 0x3AL;
        int16_t *l_1242[6][10] = {{&p_2211->g_56,(void*)0,(void*)0,&p_2211->g_56,&p_2211->g_56,&p_2211->g_56,&p_2211->g_282,&p_2211->g_56,(void*)0,&p_2211->g_56},{&p_2211->g_56,(void*)0,(void*)0,&p_2211->g_56,&p_2211->g_56,&p_2211->g_56,&p_2211->g_282,&p_2211->g_56,(void*)0,&p_2211->g_56},{&p_2211->g_56,(void*)0,(void*)0,&p_2211->g_56,&p_2211->g_56,&p_2211->g_56,&p_2211->g_282,&p_2211->g_56,(void*)0,&p_2211->g_56},{&p_2211->g_56,(void*)0,(void*)0,&p_2211->g_56,&p_2211->g_56,&p_2211->g_56,&p_2211->g_282,&p_2211->g_56,(void*)0,&p_2211->g_56},{&p_2211->g_56,(void*)0,(void*)0,&p_2211->g_56,&p_2211->g_56,&p_2211->g_56,&p_2211->g_282,&p_2211->g_56,(void*)0,&p_2211->g_56},{&p_2211->g_56,(void*)0,(void*)0,&p_2211->g_56,&p_2211->g_56,&p_2211->g_56,&p_2211->g_282,&p_2211->g_56,(void*)0,&p_2211->g_56}};
        uint32_t l_1244 = 4294967295UL;
        struct S0 *l_1252[10] = {(void*)0,&p_2211->g_939,(void*)0,(void*)0,&p_2211->g_939,(void*)0,(void*)0,&p_2211->g_939,(void*)0,(void*)0};
        int32_t *l_1257 = &l_1205[2];
        int i, j;
        for (i = 0; i < 6; i++)
            l_1205[i] = 0x243D302EL;
        (*p_2211->g_1174) = l_1173;
        for (p_2211->g_162 = (-9); (p_2211->g_162 > 25); p_2211->g_162++)
        { /* block id: 527 */
            uint32_t l_1186 = 0x03EB34B8L;
            int32_t l_1206[9] = {(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L)};
            uint16_t *l_1221[5][7] = {{&p_2211->g_275,&p_2211->g_463,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545,&p_2211->g_463,&p_2211->g_275},{&p_2211->g_275,&p_2211->g_463,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545,&p_2211->g_463,&p_2211->g_275},{&p_2211->g_275,&p_2211->g_463,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545,&p_2211->g_463,&p_2211->g_275},{&p_2211->g_275,&p_2211->g_463,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545,&p_2211->g_463,&p_2211->g_275},{&p_2211->g_275,&p_2211->g_463,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545,&p_2211->g_463,&p_2211->g_275}};
            uint32_t l_1229 = 0x863736F3L;
            uint32_t *l_1240 = &p_2211->g_490;
            uint32_t *l_1248 = &p_2211->g_1249;
            int i, j;
            for (p_2211->g_172 = 0; (p_2211->g_172 < (-21)); p_2211->g_172 = safe_sub_func_int64_t_s_s(p_2211->g_172, 1))
            { /* block id: 530 */
                int64_t *l_1182[10] = {&p_2211->g_512,(void*)0,&p_2211->g_512,&p_2211->g_512,(void*)0,&p_2211->g_512,&p_2211->g_512,(void*)0,&p_2211->g_512,&p_2211->g_512};
                int32_t l_1183 = 0x6D6F4E6FL;
                struct S0 **l_1184 = &p_2211->g_1175;
                int16_t l_1204 = 0x2C96L;
                int32_t l_1211 = 0x2F247B95L;
                int32_t l_1214 = 0x1BCB633EL;
                int i;
                l_1186 = (((l_1183 = ((safe_add_func_int8_t_s_s(1L, (p_2211->g_154 = 0x5AL))) > p_16)) & FAKE_DIVERGE(p_2211->group_2_offset, get_group_id(2), 10)) , (&l_1173 != (l_1184 = (p_2211->g_570.f0 , &p_2211->g_1175))));
                for (p_2211->g_568 = 9; (p_2211->g_568 >= 1); p_2211->g_568 -= 1)
                { /* block id: 537 */
                    uint32_t l_1187 = 0x2B07DAE3L;
                    int8_t *l_1203 = &p_2211->g_154;
                    int32_t *l_1207 = &l_1206[2];
                    int32_t *l_1208[4][8] = {{&l_1201,&l_1201,&l_1205[4],(void*)0,&l_1201,(void*)0,&l_1205[4],&l_1201},{&l_1201,&l_1201,&l_1205[4],(void*)0,&l_1201,(void*)0,&l_1205[4],&l_1201},{&l_1201,&l_1201,&l_1205[4],(void*)0,&l_1201,(void*)0,&l_1205[4],&l_1201},{&l_1201,&l_1201,&l_1205[4],(void*)0,&l_1201,(void*)0,&l_1205[4],&l_1201}};
                    int64_t l_1213 = 0x17BCCD7A59EB713DL;
                    int i, j;
                    l_1187 |= p_16;
                    if (p_16)
                        break;
                    l_1204 = (safe_mod_func_uint64_t_u_u((safe_mod_func_uint32_t_u_u(((((safe_sub_func_int8_t_s_s(0x76L, (GROUP_DIVERGE(1, 1) & (((safe_lshift_func_int16_t_s_s(((*p_15) = (-5L)), 13)) < 0xE7B2B37BL) != ((safe_mul_func_uint8_t_u_u((((void*)0 != l_1198) | ((*l_1203) = (safe_mod_func_uint64_t_u_u((l_1201 = GROUP_DIVERGE(0, 1)), (safe_unary_minus_func_uint32_t_u((l_1183 ^= 5UL))))))), (&p_2211->g_794 == &l_1173))) , p_2211->g_793.f0))))) , 0UL) >= (*p_2211->g_1169)) < (-6L)), p_16)), GROUP_DIVERGE(2, 1)));
                    ++p_2211->g_1215;
                }
            }
            l_1205[5] = (!((((((l_1186 < (((safe_mod_func_uint64_t_u_u(0x885EB9982099CB30L, p_16)) | ((((l_1222 = p_2211->g_1220) <= (safe_mod_func_int32_t_s_s((safe_sub_func_uint8_t_u_u((safe_div_func_uint8_t_u_u((((l_1229 , ((***p_2211->g_390) && (((p_16 <= (safe_rshift_func_int8_t_s_u((safe_sub_func_int16_t_s_s(((((l_1241 = (safe_sub_func_uint64_t_u_u((safe_rshift_func_int16_t_s_s(((void*)0 == l_1240), 5)), l_1206[7]))) , p_16) , l_1242[0][1]) == l_1243), p_2211->g_240.f1)), 3))) > p_16) < (*p_2211->g_175)))) >= 0xA6519B39L) & p_16), l_1206[2])), 1UL)), 0x5DBB8DDFL))) && (*l_1166)) > 0x30AB5C1BL)) < l_1244)) , p_16) , (**p_2211->g_1174)) , l_1222) || 0xD006F9B1C11D997DL) < (*p_2211->g_853)));
            (*p_2211->g_1247) = (safe_rshift_func_uint8_t_u_u(((0x78296069L || 1L) , ((***p_2211->g_525) = l_1244)), 4));
            (*p_2211->g_1254) = ((((*l_1248)--) , l_1252[3]) == ((l_1206[7] == (((*p_2211->g_1175) , &p_2211->g_167) != ((l_1205[4] <= ((!p_2211->g_159) != p_16)) , &p_2211->g_174[1][0][1]))) , l_1252[9]));
        }
        (*l_1257) &= ((p_16 , (safe_mul_func_int16_t_s_s(((*p_2211->g_168) > (+0x11F3L)), (*p_15)))) < ((void*)0 == &p_2211->g_1249));
    }
    for (p_2211->g_396 = 0; (p_2211->g_396 <= 26); ++p_2211->g_396)
    { /* block id: 560 */
        int8_t l_1260 = 0x7FL;
        int16_t *l_1292 = (void*)0;
        uint32_t ****l_1304 = &p_2211->g_851;
        uint32_t *****l_1303 = &l_1304;
        uint32_t l_1315 = 5UL;
        int64_t l_1391[7];
        uint8_t ***l_1401 = &p_2211->g_311;
        int32_t l_1420 = (-1L);
        int32_t *l_1425 = (void*)0;
        int i;
        for (i = 0; i < 7; i++)
            l_1391[i] = 0x76D427F52F8BF8DFL;
        if (l_1260)
        { /* block id: 561 */
            uint64_t *l_1267 = &p_2211->g_279[7];
            int32_t l_1268 = (-1L);
            uint16_t *l_1272 = &p_2211->g_545;
            uint16_t **l_1271 = &l_1272;
            int64_t *l_1275 = &p_2211->g_512;
            int8_t *l_1276 = &l_1260;
            l_1268 ^= ((safe_unary_minus_func_uint16_t_u(p_2211->g_1220)) ^ (((((safe_rshift_func_uint16_t_u_s(0x978FL, (safe_rshift_func_int16_t_s_u(0x4A38L, (((*l_1267) ^= l_1266) || 7UL))))) , (((*p_15) && ((*p_2211->g_175) |= l_1260)) & ((p_16 ^ ((**p_2211->g_311) = FAKE_DIVERGE(p_2211->global_0_offset, get_global_id(0), 10))) ^ p_16))) || l_1260) <= (**p_2211->g_167)) ^ (*p_15)));
            l_1268 = ((*l_1166) = ((safe_rshift_func_uint16_t_u_s((0xF2763C4ACEBD6D7FL || ((*l_1275) ^= ((((*l_1271) = &p_2211->g_463) != &p_16) == (safe_mod_func_int8_t_s_s(l_1268, (-4L)))))), (((*l_1276) |= (254UL == 1L)) >= (safe_mod_func_uint64_t_u_u(0x8130113587F7D739L, 18446744073709551608UL))))) <= GROUP_DIVERGE(2, 1)));
            return p_14;
        }
        else
        { /* block id: 572 */
            int16_t l_1283[9] = {0x3FEBL,0x3FEBL,0x3FEBL,0x3FEBL,0x3FEBL,0x3FEBL,0x3FEBL,0x3FEBL,0x3FEBL};
            struct S0 **l_1284 = &p_2211->g_1175;
            int32_t **l_1285[7];
            int8_t *l_1337 = &l_1260;
            int i;
            for (i = 0; i < 7; i++)
                l_1285[i] = &p_2211->g_222[1][0];
            for (p_2211->g_939.f1 = 0; (p_2211->g_939.f1 == 4); p_2211->g_939.f1 = safe_add_func_uint16_t_u_u(p_2211->g_939.f1, 6))
            { /* block id: 575 */
                for (p_2211->g_147 = 0; (p_2211->g_147 > 32); p_2211->g_147 = safe_add_func_uint64_t_u_u(p_2211->g_147, 5))
                { /* block id: 578 */
                    struct S0 **l_1286 = &p_2211->g_1175;
                    int32_t l_1289 = 0x1598ED1CL;
                    uint32_t *****l_1305 = (void*)0;
                    (*l_1167) = func_44((((l_1283[0] & ((((void*)0 != l_1284) > ((*p_15) & (((p_16 & ((((((l_1285[0] == (void*)0) , l_1286) != ((((safe_rshift_func_uint8_t_u_s((**p_2211->g_311), 5)) | p_2211->g_606[2][5][4]) & p_16) , &p_2211->g_794)) || (-7L)) | l_1260) | l_1289)) || l_1260) && l_1260))) & 0x7842L)) == (-1L)) , 0x7D4C8F72B4AFC148L), &l_1166, (*p_2211->g_312), p_16, p_2211);
                    for (p_2211->g_153 = 0; (p_2211->g_153 <= 2); p_2211->g_153 += 1)
                    { /* block id: 582 */
                        int i, j;
                        p_2211->g_222[(p_2211->g_153 + 1)][(p_2211->g_153 + 1)] = (void*)0;
                    }
                    if ((safe_div_func_int8_t_s_s(p_16, p_16)))
                    { /* block id: 585 */
                        return l_1292;
                    }
                    else
                    { /* block id: 587 */
                        int64_t *l_1295 = (void*)0;
                        int64_t **l_1296 = (void*)0;
                        int64_t **l_1297 = &l_1295;
                        uint16_t *l_1298 = (void*)0;
                        uint16_t *l_1299 = (void*)0;
                        uint16_t *l_1300 = &p_2211->g_463;
                        (*l_1166) = ((((***p_2211->g_525) |= l_1289) == p_16) <= (((safe_sub_func_uint16_t_u_u((!(0x5831L ^ (((*l_1297) = l_1295) == &p_2211->g_396))), (--(*l_1300)))) || 1L) , (l_1303 == l_1305)));
                        if (l_1289)
                            continue;
                        (*p_2211->g_1247) = ((*p_2211->g_1169) = ((p_16 ^ (safe_mul_func_uint8_t_u_u(((p_16 & 252UL) | (safe_rshift_func_uint8_t_u_u((+((*l_1166) , (l_1260 , ((*p_2211->g_1247) ^ ((p_2211->g_1310[0][0] , ((safe_mul_func_uint16_t_u_u(65532UL, (safe_mod_func_uint64_t_u_u((((0x4F36L ^ FAKE_DIVERGE(p_2211->global_0_offset, get_global_id(0), 10)) == l_1289) || l_1315), FAKE_DIVERGE(p_2211->local_1_offset, get_local_id(1), 10))))) >= 0x58L)) , 0x3B503233L))))), (*l_1166)))), 7UL))) | (*p_2211->g_175)));
                    }
                }
                if (p_16)
                    continue;
                (**l_1284) = (*p_2211->g_794);
            }
            if ((*l_1166))
                continue;
            if (((((**p_2211->g_311) = l_1315) , (((*l_1337) = (safe_mul_func_uint8_t_u_u(((safe_mod_func_uint32_t_u_u(((safe_mul_func_uint16_t_u_u((+(safe_unary_minus_func_uint8_t_u(FAKE_DIVERGE(p_2211->global_2_offset, get_global_id(2), 10)))), (((safe_add_func_uint8_t_u_u(((safe_lshift_func_uint8_t_u_s(l_1260, (((safe_mod_func_int8_t_s_s(l_1260, ((safe_div_func_uint16_t_u_u((0x683DB7DDAC55DD26L & (((void*)0 == l_1333) < (4294967288UL >= (l_1334 >= (safe_mod_func_uint64_t_u_u(((l_1260 == (*l_1166)) | (*l_1166)), p_16)))))), 0x363CL)) ^ l_1315))) ^ p_16) == p_16))) , 1UL), (**p_2211->g_311))) <= (**p_2211->g_271)) != l_1260))) ^ (*p_2211->g_175)), (*l_1166))) | p_2211->g_147), p_2211->g_512))) | GROUP_DIVERGE(1, 1))) & (*l_1166)))
            { /* block id: 603 */
                uint32_t l_1344[5][7][5] = {{{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL},{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL},{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL},{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL},{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL},{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL},{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL}},{{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL},{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL},{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL},{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL},{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL},{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL},{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL}},{{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL},{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL},{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL},{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL},{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL},{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL},{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL}},{{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL},{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL},{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL},{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL},{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL},{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL},{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL}},{{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL},{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL},{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL},{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL},{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL},{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL},{0x2A937599L,0x2A937599L,0x6B517F66L,4UL,0x7E3C30CBL}}};
                int8_t *l_1347 = &p_2211->g_154;
                uint16_t *l_1348 = &p_2211->g_275;
                int64_t *l_1351 = &p_2211->g_512;
                int32_t l_1389 = 0x4A9B5516L;
                uint64_t l_1392[7][2][7] = {{{9UL,0UL,1UL,0x7A9CFAACCD680428L,0x7A9CFAACCD680428L,1UL,0UL},{9UL,0UL,1UL,0x7A9CFAACCD680428L,0x7A9CFAACCD680428L,1UL,0UL}},{{9UL,0UL,1UL,0x7A9CFAACCD680428L,0x7A9CFAACCD680428L,1UL,0UL},{9UL,0UL,1UL,0x7A9CFAACCD680428L,0x7A9CFAACCD680428L,1UL,0UL}},{{9UL,0UL,1UL,0x7A9CFAACCD680428L,0x7A9CFAACCD680428L,1UL,0UL},{9UL,0UL,1UL,0x7A9CFAACCD680428L,0x7A9CFAACCD680428L,1UL,0UL}},{{9UL,0UL,1UL,0x7A9CFAACCD680428L,0x7A9CFAACCD680428L,1UL,0UL},{9UL,0UL,1UL,0x7A9CFAACCD680428L,0x7A9CFAACCD680428L,1UL,0UL}},{{9UL,0UL,1UL,0x7A9CFAACCD680428L,0x7A9CFAACCD680428L,1UL,0UL},{9UL,0UL,1UL,0x7A9CFAACCD680428L,0x7A9CFAACCD680428L,1UL,0UL}},{{9UL,0UL,1UL,0x7A9CFAACCD680428L,0x7A9CFAACCD680428L,1UL,0UL},{9UL,0UL,1UL,0x7A9CFAACCD680428L,0x7A9CFAACCD680428L,1UL,0UL}},{{9UL,0UL,1UL,0x7A9CFAACCD680428L,0x7A9CFAACCD680428L,1UL,0UL},{9UL,0UL,1UL,0x7A9CFAACCD680428L,0x7A9CFAACCD680428L,1UL,0UL}}};
                uint8_t ***l_1399[2][3] = {{&p_2211->g_311,&p_2211->g_311,&p_2211->g_311},{&p_2211->g_311,&p_2211->g_311,&p_2211->g_311}};
                int i, j, k;
                if (((safe_lshift_func_uint16_t_u_u(FAKE_DIVERGE(p_2211->global_2_offset, get_global_id(2), 10), ((((p_16 , (((((GROUP_DIVERGE(2, 1) <= (*l_1166)) && GROUP_DIVERGE(1, 1)) || p_2211->g_793.f1) < ((((*l_1347) = ((*l_1337) = ((safe_div_func_uint32_t_u_u((l_1344[0][0][0]--), (*p_2211->g_967))) <= l_1315))) || 3UL) < p_2211->g_comm_values[p_2211->tid])) > ((*l_1351) = (((p_16 , (((*l_1348)++) <= (*p_15))) < 0xFF8F6933EF9876C3L) && p_16)))) > 0x44ECL) , 0x7925477EL) != (*p_2211->g_1169)))) & l_1315))
                { /* block id: 609 */
                    int32_t *l_1367 = &p_2211->g_562;
                    int32_t l_1368[3];
                    uint64_t *l_1382 = &p_2211->g_279[8];
                    uint64_t **l_1381 = &l_1382;
                    uint64_t ***l_1380 = &l_1381;
                    int i;
                    for (i = 0; i < 3; i++)
                        l_1368[i] = 0x7E43E6CDL;
                    if (((p_2211->g_1352 , ((safe_mul_func_int8_t_s_s(((safe_sub_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_u((((((safe_div_func_int16_t_s_s(((!((0x39L >= (safe_add_func_int8_t_s_s((safe_rshift_func_uint16_t_u_s((((*l_1243) = (safe_rshift_func_uint8_t_u_u(((*p_2211->g_168) < (((*l_1367) = ((0x3EL != 255UL) >= (p_16 || (*p_2211->g_175)))) , (((void*)0 == &p_16) < p_16))), 4))) , p_2211->g_463), 5)), p_2211->g_162))) , p_16)) == l_1315), p_2211->g_1310[5][0])) != l_1368[2]) < (-5L)) || 255UL) , p_16), p_16)), p_16)) || l_1315), p_16)) != 0x5E5FD88EL)) >= l_1368[2]))
                    { /* block id: 612 */
                        int16_t *l_1388 = &l_1283[0];
                        if (p_16)
                            break;
                        l_1392[2][0][5] |= ((((safe_div_func_uint8_t_u_u((safe_unary_minus_func_int32_t_s((l_1368[2] |= ((safe_add_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_s((safe_sub_func_int32_t_s_s((~p_16), (safe_rshift_func_int16_t_s_u(((((l_1380 != ((*p_2211->g_722) = (*p_2211->g_722))) , (l_1389 |= ((*p_15) = ((*l_1388) |= ((safe_sub_func_int16_t_s_s(((*p_2211->g_175) ^= (((l_1387[2] != ((*p_2211->g_708) <= p_16)) == ((p_2211->g_240.f1 < ((((**p_2211->g_525) == l_1347) ^ 0x10E8BC89L) < p_16)) > p_2211->g_154)) , l_1260)), 0x4E11L)) , (*p_15)))))) ^ 65535UL) < (*p_2211->g_1169)), p_16)))), p_2211->g_1390)), (*p_2211->g_1169))) | (-1L))))), l_1260)) >= FAKE_DIVERGE(p_2211->global_1_offset, get_global_id(1), 10)) & l_1391[1]) != p_2211->g_275);
                    }
                    else
                    { /* block id: 621 */
                        uint8_t ****l_1400 = &l_1399[0][0];
                        (*l_1166) |= ((p_16 | ((**l_1284) , (safe_div_func_uint16_t_u_u(0x6F62L, (p_2211->g_275 ^= (safe_rshift_func_uint8_t_u_s(1UL, (0x3CCFAA31721B66AEL == ((((l_1260 <= 0L) == (p_2211->g_333.f0 >= (safe_add_func_int32_t_s_s(((((*l_1400) = l_1399[0][0]) == l_1401) == l_1260), p_2211->g_1402)))) || 3UL) > p_16))))))))) | p_16);
                    }
                    return p_14;
                }
                else
                { /* block id: 627 */
                    uint64_t l_1419 = 18446744073709551615UL;
                    if ((safe_mul_func_uint8_t_u_u(0x08L, ((safe_mod_func_int16_t_s_s((((0x8056L || p_2211->g_169) , (safe_mul_func_uint16_t_u_u((safe_lshift_func_int16_t_s_s((((*l_1351) = (-4L)) <= (safe_mul_func_int8_t_s_s(((p_16 > p_16) , (-5L)), ((p_2211->g_223.f0 && p_16) > (*l_1166))))), (*p_2211->g_175))), FAKE_DIVERGE(p_2211->group_1_offset, get_group_id(1), 10)))) , 0L), 0x306BL)) == FAKE_DIVERGE(p_2211->local_0_offset, get_local_id(0), 10)))))
                    { /* block id: 629 */
                        if (p_16)
                            break;
                    }
                    else
                    { /* block id: 631 */
                        (*l_1173) = (**l_1284);
                        l_1212 &= (0x33L ^ (safe_div_func_int64_t_s_s(l_1391[1], (~(0L && ((l_1419 = (safe_sub_func_int64_t_s_s((p_2211->g_34 && (p_2211->g_1417 , (p_2211->g_980.f1 | ((((safe_unary_minus_func_uint32_t_u(((*p_15) , l_1392[5][0][3]))) , 1L) > p_16) & (*p_15))))), p_16))) || l_1420))))));
                    }
                }
                return p_14;
            }
            else
            { /* block id: 638 */
                union U1 *l_1421 = &p_2211->g_1352;
                uint16_t *l_1444[8];
                int32_t l_1445[8] = {0x20434A61L,0x20434A61L,0x20434A61L,0x20434A61L,0x20434A61L,0x20434A61L,0x20434A61L,0x20434A61L};
                int i;
                for (i = 0; i < 8; i++)
                    l_1444[i] = &p_2211->g_463;
                if (l_1420)
                    break;
                if (l_1315)
                    break;
                for (p_2211->g_238.f1 = 0; (p_2211->g_238.f1 <= 3); p_2211->g_238.f1 += 1)
                { /* block id: 643 */
                    int i, j;
                    (*p_2211->g_1424) = l_1421;
                    for (p_2211->g_512 = 0; (p_2211->g_512 <= 3); p_2211->g_512 += 1)
                    { /* block id: 647 */
                        if ((*p_2211->g_708))
                            break;
                    }
                    p_2211->g_706[(p_2211->g_238.f1 + 4)][p_2211->g_238.f1] = (void*)0;
                    (*p_2211->g_221) = l_1425;
                }
                (*p_2211->g_1169) = (safe_mul_func_uint16_t_u_u(((safe_rshift_func_int16_t_s_s((((*l_1166) , (GROUP_DIVERGE(1, 1) != ((safe_lshift_func_uint16_t_u_u(((*p_2211->g_601) || p_16), (safe_sub_func_int8_t_s_s((safe_mul_func_uint16_t_u_u(65533UL, (safe_mod_func_uint64_t_u_u(p_16, (-9L))))), ((safe_div_func_uint64_t_u_u((((**l_1303) = &p_2211->g_852[7][1]) == ((safe_sub_func_uint16_t_u_u((p_2211->g_545 = ((safe_rshift_func_uint16_t_u_s((&p_2211->g_1175 != (void*)0), (*p_15))) , p_16)), (*p_2211->g_175))) , (void*)0)), p_16)) != p_16))))) < l_1445[5]))) < p_16), (*p_15))) != p_16), p_16));
            }
            if (l_1260)
                break;
        }
    }
    if ((((safe_mul_func_uint8_t_u_u((((*l_1448) = &l_1167) != (p_2211->g_1450[1][0][6] , &p_2211->g_553)), 0x85L)) || ((*p_15) | ((-1L) || p_16))) >= ((*p_2211->g_1169) = p_16)))
    { /* block id: 662 */
        uint32_t l_1453 = 0xD3CAE474L;
        int32_t l_1467 = 3L;
        int32_t *l_1487 = &p_2211->g_159;
        int32_t l_1564[1][3][5] = {{{0x1731EA4AL,0x1631E663L,0x1731EA4AL,0x1731EA4AL,0x1631E663L},{0x1731EA4AL,0x1631E663L,0x1731EA4AL,0x1731EA4AL,0x1631E663L},{0x1731EA4AL,0x1631E663L,0x1731EA4AL,0x1731EA4AL,0x1631E663L}}};
        int16_t *l_1623 = (void*)0;
        int i, j, k;
        for (p_2211->g_1352.f0 = (-22); (p_2211->g_1352.f0 <= 7); p_2211->g_1352.f0 = safe_add_func_uint32_t_u_u(p_2211->g_1352.f0, 7))
        { /* block id: 665 */
            return p_15;
        }
lbl_1540:
        l_1453--;
        for (p_2211->g_1390 = 0; (p_2211->g_1390 != (-10)); p_2211->g_1390 = safe_sub_func_uint64_t_u_u(p_2211->g_1390, 5))
        { /* block id: 671 */
            uint32_t ****l_1461 = &p_2211->g_851;
            uint32_t *****l_1460 = &l_1461;
            int64_t *l_1465 = &p_2211->g_396;
            int64_t *l_1466 = (void*)0;
            int32_t l_1489 = 2L;
            int32_t *l_1494 = &p_2211->g_159;
            uint32_t ****l_1527 = &p_2211->g_851;
            uint8_t ****l_1535 = &p_2211->g_525;
            int32_t l_1561 = 0x6B7845ABL;
            int32_t l_1565 = 0L;
            int32_t l_1570 = 0x23BFF5F6L;
            int32_t l_1571 = 0x09D23285L;
            int32_t l_1613 = (-2L);
            int32_t l_1616[1];
            int i;
            for (i = 0; i < 1; i++)
                l_1616[i] = 0x03BB8550L;
            if ((p_16 < (p_16 | ((&p_2211->g_568 != (void*)0) , (safe_rshift_func_int8_t_s_u((~(((*l_1460) = &p_2211->g_851) != (p_2211->g_1462 = &p_2211->g_851))), ((*p_2211->g_312) = (l_1453 || (GROUP_DIVERGE(0, 1) == (safe_sub_func_int64_t_s_s((l_1467 = ((*l_1465) = p_16)), ((**p_2211->g_167) & 5UL))))))))))))
            { /* block id: 677 */
                uint32_t l_1468 = 4294967295UL;
                uint16_t *l_1479 = &p_2211->g_463;
                uint64_t *l_1482 = &p_2211->g_279[7];
                uint64_t *l_1483 = (void*)0;
                uint64_t *l_1484[7];
                int32_t *l_1486 = &p_2211->g_1390;
                int32_t **l_1485[5] = {&l_1486,&l_1486,&l_1486,&l_1486,&l_1486};
                uint16_t *l_1488[9][5][5] = {{{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545}},{{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545}},{{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545}},{{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545}},{{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545}},{{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545}},{{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545}},{{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545}},{{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545},{&p_2211->g_275,&p_2211->g_275,&p_2211->g_545,&p_2211->g_275,&p_2211->g_545}}};
                int i, j, k;
                for (i = 0; i < 7; i++)
                    l_1484[i] = &p_2211->g_229.f1;
                (*l_1166) = ((((((((&p_2211->g_396 != (void*)0) , (*p_2211->g_1462)) != (void*)0) != l_1468) , (safe_lshift_func_uint16_t_u_u(((safe_lshift_func_uint16_t_u_s((l_1467 = (~((safe_add_func_uint16_t_u_u(((safe_div_func_uint32_t_u_u((safe_sub_func_uint16_t_u_u((++(*l_1479)), (((l_1487 = func_44((p_2211->g_570.f1 = (((*p_2211->g_1169) = p_16) >= (+(l_1482 == l_1466)))), &p_2211->g_222[1][0], (**p_2211->g_311), p_16, p_2211)) != &p_2211->g_159) ^ p_16))), p_16)) > 1UL), (-1L))) > p_16))), l_1489)) , 9UL), 11))) || 0x021E1163L) , l_1489) <= p_16);
                (*l_1166) = (safe_mul_func_int8_t_s_s((safe_lshift_func_uint16_t_u_u(((l_1494 = l_1487) != p_2211->g_1495), 10)), GROUP_DIVERGE(0, 1)));
                for (p_2211->g_570.f1 = 0; (p_2211->g_570.f1 >= 23); p_2211->g_570.f1++)
                { /* block id: 688 */
                    int32_t l_1526 = 2L;
                    uint32_t *l_1531[4][3] = {{&p_2211->g_1249,&p_2211->g_1249,&p_2211->g_1249},{&p_2211->g_1249,&p_2211->g_1249,&p_2211->g_1249},{&p_2211->g_1249,&p_2211->g_1249,&p_2211->g_1249},{&p_2211->g_1249,&p_2211->g_1249,&p_2211->g_1249}};
                    uint8_t ****l_1534 = &p_2211->g_525;
                    int i, j;
                    for (p_2211->g_83 = 0; (p_2211->g_83 != 21); ++p_2211->g_83)
                    { /* block id: 691 */
                        (*l_1333) = p_2211->g_1500;
                    }
                    for (p_2211->g_229.f1 = 2; (p_2211->g_229.f1 > 45); p_2211->g_229.f1++)
                    { /* block id: 696 */
                        int32_t l_1517[4] = {0x12D4E95DL,0x12D4E95DL,0x12D4E95DL,0x12D4E95DL};
                        uint32_t l_1528 = 0x5519EF8FL;
                        int32_t *l_1529 = &p_2211->g_1450[1][0][6].f0;
                        int32_t l_1530 = 0x0945D853L;
                        int i, j;
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        p_2211->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 1)), permutations[(safe_mod_func_uint32_t_u_u((((((safe_rshift_func_int8_t_s_u(0x32L, 3)) <= ((safe_lshift_func_uint8_t_u_s(((safe_add_func_uint32_t_u_u(p_16, 0UL)) && 0xAEL), 5)) != ((safe_sub_func_int16_t_s_s((safe_mod_func_uint16_t_u_u((l_1530 = (((((*l_1529) |= ((*l_1166) , ((safe_add_func_int16_t_s_s((((l_1517[0] = (safe_rshift_func_int16_t_s_u(l_1489, 13))) , (safe_div_func_int8_t_s_s(((+((safe_sub_func_int64_t_s_s((!((safe_mod_func_int8_t_s_s((0L && (((p_2211->g_279[7] = ((((l_1468 && (p_2211->g_275 = ((((safe_mod_func_int32_t_s_s((0L | (**p_2211->g_311)), l_1489)) | FAKE_DIVERGE(p_2211->group_1_offset, get_group_id(1), 10)) ^ l_1526) && (*l_1166)))) ^ 0x73L) && (-2L)) < 0x491A65A6L)) , l_1527) != (void*)0)), 1L)) && l_1517[2])), l_1467)) > p_16)) < l_1453), 0x7CL))) ^ l_1528), l_1468)) , 7L))) , p_2211->g_412.f0) , 0x98E73B6B2009B1A5L) == 0L)), (*p_2211->g_175))), FAKE_DIVERGE(p_2211->group_2_offset, get_group_id(2), 10))) >= l_1489))) , &p_2211->g_1249) != l_1531[0][0]) , p_16), 10))][(safe_mod_func_uint32_t_u_u(p_2211->tid, 1))]));
                        (*l_1166) |= (((safe_lshift_func_int16_t_s_s((l_1534 != l_1535), ((safe_lshift_func_uint16_t_u_s(0xDF35L, 12)) > (~(-6L))))) && ((0x6066L & ((l_1538 == (p_2211->g_1539 = &p_2211->g_1402)) , 0x7E20L)) & 0UL)) & p_16);
                        if (l_1526)
                            continue;
                        if (p_2211->g_1249)
                            goto lbl_1540;
                    }
                    l_1467 = p_16;
                }
            }
            else
            { /* block id: 712 */
                union U1 **l_1544 = (void*)0;
                int32_t l_1553 = 0x5D9EB94BL;
                int32_t l_1555 = (-9L);
                int32_t l_1558 = 1L;
                int32_t l_1559[7] = {0x2EE60983L,0x2EE60983L,0x2EE60983L,0x2EE60983L,0x2EE60983L,0x2EE60983L,0x2EE60983L};
                uint8_t l_1572 = 255UL;
                int i;
                for (p_2211->g_154 = 0; (p_2211->g_154 <= 3); p_2211->g_154 += 1)
                { /* block id: 715 */
                    int8_t l_1547 = 9L;
                    int16_t **l_1552 = &l_1243;
                    int32_t l_1560 = 1L;
                    int32_t l_1562 = 1L;
                    int32_t l_1563 = 0x2664F8C6L;
                    int32_t l_1568 = 0x2274CA85L;
                    int16_t *l_1579 = &p_2211->g_172;
                    int i, j;
                    if (p_2211->g_238.f1)
                        goto lbl_1541;
                    if ((safe_mul_func_uint8_t_u_u(((void*)0 != l_1544), ((p_16 && ((p_16 < ((p_16 > (-1L)) ^ (safe_add_func_int8_t_s_s((((*l_1166) = 255UL) | ((l_1547 & (safe_lshift_func_int8_t_s_u((safe_sub_func_int32_t_s_s((&p_15 == l_1552), 5UL)), 0))) || 0x6124214BL)), GROUP_DIVERGE(1, 1))))) < (*p_2211->g_715))) ^ 0L))))
                    { /* block id: 718 */
                        int32_t *l_1554 = &p_2211->g_34;
                        int32_t *l_1556 = &l_1553;
                        int32_t *l_1557[3][8][3] = {{{&p_2211->g_83,&l_1553,&l_1212},{&p_2211->g_83,&l_1553,&l_1212},{&p_2211->g_83,&l_1553,&l_1212},{&p_2211->g_83,&l_1553,&l_1212},{&p_2211->g_83,&l_1553,&l_1212},{&p_2211->g_83,&l_1553,&l_1212},{&p_2211->g_83,&l_1553,&l_1212},{&p_2211->g_83,&l_1553,&l_1212}},{{&p_2211->g_83,&l_1553,&l_1212},{&p_2211->g_83,&l_1553,&l_1212},{&p_2211->g_83,&l_1553,&l_1212},{&p_2211->g_83,&l_1553,&l_1212},{&p_2211->g_83,&l_1553,&l_1212},{&p_2211->g_83,&l_1553,&l_1212},{&p_2211->g_83,&l_1553,&l_1212},{&p_2211->g_83,&l_1553,&l_1212}},{{&p_2211->g_83,&l_1553,&l_1212},{&p_2211->g_83,&l_1553,&l_1212},{&p_2211->g_83,&l_1553,&l_1212},{&p_2211->g_83,&l_1553,&l_1212},{&p_2211->g_83,&l_1553,&l_1212},{&p_2211->g_83,&l_1553,&l_1212},{&p_2211->g_83,&l_1553,&l_1212},{&p_2211->g_83,&l_1553,&l_1212}}};
                        int32_t l_1566 = 0x4789F573L;
                        uint64_t *l_1576[7][3];
                        uint64_t **l_1575 = &l_1576[6][0];
                        int i, j, k;
                        for (i = 0; i < 7; i++)
                        {
                            for (j = 0; j < 3; j++)
                                l_1576[i][j] = (void*)0;
                        }
                        l_1572--;
                        l_1575 = l_1575;
                    }
                    else
                    { /* block id: 721 */
                        (*l_1173) = p_2211->g_1577;
                        (*p_2211->g_1169) = (*p_2211->g_569);
                        (*l_1166) = p_16;
                        return p_15;
                    }
                    for (p_2211->g_159 = 8; (p_2211->g_159 >= 0); p_2211->g_159 -= 1)
                    { /* block id: 729 */
                        return p_14;
                    }
                    for (l_1572 = 0; (l_1572 <= 2); l_1572 += 1)
                    { /* block id: 734 */
                        uint32_t l_1578 = 0xEC1840EBL;
                        int i;
                        l_1578 ^= (*l_1166);
                        return l_1579;
                    }
                }
                (*l_1167) = (void*)0;
                for (p_2211->g_333.f1 = 0; (p_2211->g_333.f1 < 21); p_2211->g_333.f1 = safe_add_func_int8_t_s_s(p_2211->g_333.f1, 2))
                { /* block id: 742 */
                    int8_t *l_1594 = (void*)0;
                    int32_t l_1607 = (-1L);
                    int32_t l_1608 = (-1L);
                    int32_t l_1609 = 9L;
                    int64_t l_1610 = (-1L);
                    int32_t l_1611 = 0x1901EC39L;
                    int32_t l_1612 = (-1L);
                    int32_t l_1614 = 0L;
                    int32_t l_1617 = 0x59F5C1D9L;
                    int32_t l_1618[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_1618[i] = (-6L);
                    (*l_1166) = ((safe_add_func_int64_t_s_s((safe_sub_func_int64_t_s_s((p_2211->g_1586[5][0] , (safe_div_func_int64_t_s_s(((safe_unary_minus_func_uint32_t_u(((safe_mul_func_int8_t_s_s((safe_div_func_int8_t_s_s((l_1559[0] = (p_14 != p_14)), (~((safe_rshift_func_uint8_t_u_s(((l_1561 == (safe_lshift_func_int16_t_s_s(((safe_mod_func_uint16_t_u_u((0x4954DD88L | (((((p_16 & 0x2D97F600L) < 1UL) != ((*p_2211->g_1539) ^= ((safe_rshift_func_uint8_t_u_u(0x02L, 1)) > (*l_1166)))) > l_1571) <= FAKE_DIVERGE(p_2211->global_1_offset, get_global_id(1), 10))), p_16)) , 6L), 9))) , p_16), 3)) == (*p_2211->g_175))))), p_16)) , 4294967295UL))) ^ 0x1E796CDEL), p_16))), p_16)), p_16)) > (*p_2211->g_175));
                    for (p_2211->g_154 = 8; (p_2211->g_154 >= 3); p_2211->g_154 -= 1)
                    { /* block id: 748 */
                        int32_t *l_1603 = &l_1565;
                        int32_t *l_1604 = &l_1569;
                        int32_t *l_1605 = &l_1210;
                        int32_t *l_1606[5];
                        int i;
                        for (i = 0; i < 5; i++)
                            l_1606[i] = &p_2211->g_34;
                        l_1620++;
                        l_1489 |= l_1559[0];
                    }
                    return l_1623;
                }
            }
        }
    }
    else
    { /* block id: 756 */
        int8_t l_1628[3][3][7] = {{{(-2L),6L,6L,(-2L),0x75L,0x36L,9L},{(-2L),6L,6L,(-2L),0x75L,0x36L,9L},{(-2L),6L,6L,(-2L),0x75L,0x36L,9L}},{{(-2L),6L,6L,(-2L),0x75L,0x36L,9L},{(-2L),6L,6L,(-2L),0x75L,0x36L,9L},{(-2L),6L,6L,(-2L),0x75L,0x36L,9L}},{{(-2L),6L,6L,(-2L),0x75L,0x36L,9L},{(-2L),6L,6L,(-2L),0x75L,0x36L,9L},{(-2L),6L,6L,(-2L),0x75L,0x36L,9L}}};
        uint16_t *l_1629[9][10][2] = {{{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275}},{{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275}},{{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275}},{{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275}},{{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275}},{{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275}},{{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275}},{{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275}},{{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275},{&p_2211->g_545,&p_2211->g_275}}};
        int32_t l_1630 = (-1L);
        int8_t *l_1645 = &p_2211->g_154;
        int64_t l_1649 = (-1L);
        union U1 *l_1650 = (void*)0;
        int16_t *l_1654 = &l_1387[2];
        uint32_t l_1655 = 0x9D70D706L;
        int32_t *l_1656 = &l_1569;
        int i, j, k;
        (*l_1656) &= (((*l_1654) ^= (safe_lshift_func_uint16_t_u_u((safe_div_func_uint32_t_u_u(4294967295UL, (0xE0L && (((((((l_1628[2][0][0] == (p_2211->g_545--)) <= ((safe_add_func_int16_t_s_s(1L, (((safe_sub_func_uint8_t_u_u((safe_rshift_func_int16_t_s_s((*p_2211->g_175), ((((safe_add_func_int64_t_s_s((safe_mul_func_uint8_t_u_u((0x8F84L != (((*p_2211->g_853) = ((((safe_rshift_func_uint8_t_u_s(((~(((((**p_2211->g_311) &= (((*l_1645) &= p_16) ^ (~p_16))) && (safe_sub_func_int32_t_s_s(((p_2211->g_1648 , 6L) == 0x21L), (*p_2211->g_1169)))) & p_2211->g_159) | (*p_15))) | l_1628[2][0][0]), p_16)) >= l_1649) , l_1650) == l_1651)) != 0x05E1C4F9L)), p_2211->g_939.f1)), 1L)) ^ 0x30A08F16L) < (-1L)) != l_1628[2][0][0]))), p_2211->g_559.f1)) & FAKE_DIVERGE(p_2211->group_1_offset, get_group_id(1), 10)) >= p_16))) > p_16)) ^ p_16) , p_16) != l_1653[2]) || 0x517CL) , p_16)))), l_1630))) ^ l_1655);
    }
    return p_14;
}


/* ------------------------------------------ */
/* 
 * reads : p_2211->g_175 p_2211->g_853 p_2211->g_525 p_2211->g_311 p_2211->g_312 p_2211->g_140 p_2211->g_606 p_2211->g_793.f1 p_2211->g_153 p_2211->g_1031.f0 p_2211->g_559.f1 p_2211->g_552
 * writes: p_2211->g_172 p_2211->g_162 p_2211->g_606 p_2211->g_463 p_2211->g_83
 */
int16_t * func_18(int16_t * p_19, uint32_t  p_20, int64_t  p_21, uint32_t  p_22, struct S2 * p_2211)
{ /* block id: 507 */
    uint16_t l_1143 = 0xBA5AL;
    int32_t **l_1154 = &p_2211->g_222[1][0];
    int32_t **l_1155 = &p_2211->g_222[2][0];
    uint8_t *l_1156 = &p_2211->g_606[5][1][3];
    uint32_t *****l_1161 = (void*)0;
    uint16_t *l_1162 = &p_2211->g_463;
    int8_t l_1163 = 0x77L;
    int32_t *l_1164[10];
    int i;
    for (i = 0; i < 10; i++)
        l_1164[i] = &p_2211->g_34;
lbl_1165:
    l_1143++;
    (*p_2211->g_552) = ((safe_rshift_func_int16_t_s_s(((*p_2211->g_175) = 0L), 8)) <= (((safe_add_func_int8_t_s_s((((safe_rshift_func_uint8_t_u_s(((((*p_2211->g_853) = p_21) || (((safe_add_func_uint8_t_u_u((***p_2211->g_525), (l_1154 != (l_1155 = l_1154)))) ^ (0x26L && (((((*l_1162) = (p_22 , ((((((*l_1156)--) != (safe_lshift_func_int8_t_s_u(l_1143, ((((void*)0 == l_1161) ^ p_21) >= 0L)))) == 0x40L) | l_1143) ^ FAKE_DIVERGE(p_2211->local_1_offset, get_local_id(1), 10)))) < l_1163) , FAKE_DIVERGE(p_2211->global_2_offset, get_global_id(2), 10)) == l_1143))) > p_2211->g_793.f1)) || GROUP_DIVERGE(2, 1)), 5)) && p_2211->g_153) ^ p_2211->g_1031.f0), FAKE_DIVERGE(p_2211->local_2_offset, get_local_id(2), 10))) == p_2211->g_559.f1) >= 0x2B2214CBL));
    if (p_2211->g_559.f1)
        goto lbl_1165;
    return l_1162;
}


/* ------------------------------------------ */
/* 
 * reads : p_2211->g_708 p_2211->g_83 p_2211->g_56 p_2211->g_715 p_2211->g_722 p_2211->g_434 p_2211->g_463 p_2211->g_525 p_2211->g_311 p_2211->g_312 p_2211->g_140 p_2211->g_558.f1 p_2211->g_392 p_2211->g_393 p_2211->g_229.f1 p_2211->g_601 p_2211->g_562 p_2211->g_169 p_2211->g_606 p_2211->g_763 p_2211->g_34 p_2211->g_568 p_2211->g_167 p_2211->g_168 p_2211->g_comm_values p_2211->g_793 p_2211->g_794 p_2211->g_490 p_2211->g_175
 * writes: p_2211->g_83 p_2211->g_56 p_2211->g_722 p_2211->g_490 p_2211->g_463 p_2211->g_562 p_2211->g_279 p_2211->g_412 p_2211->g_172
 */
int16_t * func_23(int16_t * p_24, int16_t * p_25, int16_t  p_26, int32_t  p_27, int16_t * p_28, struct S2 * p_2211)
{ /* block id: 300 */
    int64_t l_713 = 1L;
    int32_t l_714 = 6L;
    uint32_t l_757 = 0x9784323EL;
    int32_t l_784 = 5L;
    int32_t l_786 = 6L;
    int32_t l_788[2][4][1] = {{{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)}}};
    uint8_t **l_795 = &p_2211->g_312;
    int32_t l_820[5][10] = {{0x1CF050FCL,3L,0x7F638D91L,(-1L),0x7F638D91L,3L,0x1CF050FCL,0x35C75495L,(-1L),1L},{0x1CF050FCL,3L,0x7F638D91L,(-1L),0x7F638D91L,3L,0x1CF050FCL,0x35C75495L,(-1L),1L},{0x1CF050FCL,3L,0x7F638D91L,(-1L),0x7F638D91L,3L,0x1CF050FCL,0x35C75495L,(-1L),1L},{0x1CF050FCL,3L,0x7F638D91L,(-1L),0x7F638D91L,3L,0x1CF050FCL,0x35C75495L,(-1L),1L},{0x1CF050FCL,3L,0x7F638D91L,(-1L),0x7F638D91L,3L,0x1CF050FCL,0x35C75495L,(-1L),1L}};
    uint8_t *l_823 = (void*)0;
    int32_t **l_842 = &p_2211->g_222[3][5];
    uint16_t l_893 = 0x8ED9L;
    int16_t l_922 = 0x7B61L;
    uint32_t ***l_985 = &p_2211->g_852[3][0];
    uint8_t l_1028 = 0UL;
    int16_t **l_1039 = &p_2211->g_175;
    uint8_t l_1050 = 1UL;
    int16_t l_1124 = 9L;
    int i, j, k;
    (*p_2211->g_708) &= (p_27 ^ 0xF57DFE00AC51E5F6L);
lbl_862:
    for (p_2211->g_56 = 14; (p_2211->g_56 == (-7)); --p_2211->g_56)
    { /* block id: 304 */
        int64_t l_712 = 5L;
        int32_t l_718 = (-3L);
        uint64_t *****l_719 = (void*)0;
        uint64_t ****l_721[9][5] = {{&p_2211->g_434,&p_2211->g_434,&p_2211->g_434,&p_2211->g_434,&p_2211->g_434},{&p_2211->g_434,&p_2211->g_434,&p_2211->g_434,&p_2211->g_434,&p_2211->g_434},{&p_2211->g_434,&p_2211->g_434,&p_2211->g_434,&p_2211->g_434,&p_2211->g_434},{&p_2211->g_434,&p_2211->g_434,&p_2211->g_434,&p_2211->g_434,&p_2211->g_434},{&p_2211->g_434,&p_2211->g_434,&p_2211->g_434,&p_2211->g_434,&p_2211->g_434},{&p_2211->g_434,&p_2211->g_434,&p_2211->g_434,&p_2211->g_434,&p_2211->g_434},{&p_2211->g_434,&p_2211->g_434,&p_2211->g_434,&p_2211->g_434,&p_2211->g_434},{&p_2211->g_434,&p_2211->g_434,&p_2211->g_434,&p_2211->g_434,&p_2211->g_434},{&p_2211->g_434,&p_2211->g_434,&p_2211->g_434,&p_2211->g_434,&p_2211->g_434}};
        uint64_t *****l_720[8][10][3] = {{{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0}},{{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0}},{{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0}},{{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0}},{{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0}},{{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0}},{{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0}},{{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0},{&l_721[1][4],&l_721[1][4],(void*)0}}};
        uint32_t *l_723 = &p_2211->g_490;
        int32_t *l_726 = &l_714;
        int32_t *l_727 = &p_2211->g_83;
        uint16_t *l_729 = &p_2211->g_463;
        int32_t **l_732 = &l_726;
        int8_t l_779 = (-1L);
        int32_t l_781 = 0L;
        int64_t l_782 = 0x48E2D593A734AEC9L;
        int32_t l_783 = 0L;
        int32_t l_785 = 0x18B52A92L;
        int32_t l_787 = 1L;
        int32_t l_789[10];
        uint64_t l_790 = 9UL;
        int32_t l_807 = 0L;
        uint64_t l_847 = 1UL;
        int i, j, k;
        for (i = 0; i < 10; i++)
            l_789[i] = 0x67E54309L;
        (*p_2211->g_715) = (!((l_713 = (safe_unary_minus_func_uint32_t_u(((l_712 = 0x1D68L) & 65535UL)))) > l_714));
        (*l_732) = func_44((l_718 <= ((((*l_723) = ((p_2211->g_722 = &p_2211->g_434) != (void*)0)) < l_714) , (l_712 <= (safe_sub_func_uint16_t_u_u((((*l_727) ^= ((*l_726) ^= p_27)) <= (safe_unary_minus_func_uint16_t_u(((void*)0 == (*p_2211->g_722))))), (--(*l_729))))))), &p_2211->g_222[2][5], (***p_2211->g_525), p_2211->g_558.f1, p_2211);
        if ((safe_sub_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u(l_714, (safe_sub_func_uint64_t_u_u(p_2211->g_562, (safe_add_func_int16_t_s_s(1L, (safe_mul_func_uint16_t_u_u(((safe_add_func_uint16_t_u_u(((~(safe_div_func_uint64_t_u_u((safe_mul_func_int16_t_s_s((safe_div_func_int32_t_s_s((safe_mod_func_uint64_t_u_u(p_27, (p_27 || (((p_2211->g_169 , (l_714 < (((safe_mod_func_int64_t_s_s((safe_div_func_int32_t_s_s(((p_26 , p_2211->g_606[4][5][2]) || 1UL), l_757)), p_27)) == l_714) || p_26))) > p_2211->g_606[2][4][5]) == 0xA5DE775AL)))), p_2211->g_606[3][0][2])), 0xB669L)), p_27))) >= (*l_727)), (*l_727))) , p_26), (-5L))))))))), (-1L))))
        { /* block id: 314 */
            int8_t l_758 = 0x7BL;
            int32_t *l_780[6][2][1];
            int i, j, k;
            for (i = 0; i < 6; i++)
            {
                for (j = 0; j < 2; j++)
                {
                    for (k = 0; k < 1; k++)
                        l_780[i][j][k] = &p_2211->g_34;
                }
            }
            (*l_727) = (l_758 ^ (safe_lshift_func_uint16_t_u_u((safe_add_func_uint64_t_u_u(((void*)0 == &p_2211->g_545), ((p_2211->g_763 , (safe_mod_func_uint64_t_u_u((safe_mod_func_uint16_t_u_u((safe_add_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((((-5L) || ((0x799DL != (safe_div_func_uint16_t_u_u(((*l_729) = (safe_lshift_func_int8_t_s_s((((safe_unary_minus_func_int32_t_s((safe_rshift_func_int16_t_s_s((((1UL == ((((((void*)0 != &p_2211->g_545) <= p_2211->g_34) <= 65535UL) && 0x0D99L) != p_2211->g_83)) & p_2211->g_568) < FAKE_DIVERGE(p_2211->group_0_offset, get_group_id(0), 10)), (**p_2211->g_167))))) ^ l_714) ^ l_779), p_27))), 0xDD8BL))) | 0x6BB8L)) != l_714), 1L)), 0x1FL)), p_2211->g_comm_values[p_2211->tid])), p_27))) , p_27))), 11)));
            l_790++;
            if (p_27)
                break;
            (*p_2211->g_794) = p_2211->g_793;
        }
        else
        { /* block id: 320 */
            uint32_t l_804[6] = {0UL,4294967288UL,0UL,0UL,4294967288UL,0UL};
            uint32_t l_817 = 4294967295UL;
            int32_t l_818[2];
            uint8_t *l_821 = &p_2211->g_140[3][0];
            int32_t l_822 = 0x423F234FL;
            int32_t *l_845 = &l_788[0][0][0];
            int i;
            for (i = 0; i < 2; i++)
                l_818[i] = 8L;
            p_27 = (l_786 = (((void*)0 != l_795) != 4294967295UL));
            for (p_2211->g_490 = 0; (p_2211->g_490 <= 5); p_2211->g_490 += 1)
            { /* block id: 325 */
                int64_t *l_798 = &l_782;
                int32_t l_799[8][6] = {{0L,0x60B0D283L,(-4L),(-6L),(-4L),0x60B0D283L},{0L,0x60B0D283L,(-4L),(-6L),(-4L),0x60B0D283L},{0L,0x60B0D283L,(-4L),(-6L),(-4L),0x60B0D283L},{0L,0x60B0D283L,(-4L),(-6L),(-4L),0x60B0D283L},{0L,0x60B0D283L,(-4L),(-6L),(-4L),0x60B0D283L},{0L,0x60B0D283L,(-4L),(-6L),(-4L),0x60B0D283L},{0L,0x60B0D283L,(-4L),(-6L),(-4L),0x60B0D283L},{0L,0x60B0D283L,(-4L),(-6L),(-4L),0x60B0D283L}};
                uint16_t l_808 = 5UL;
                int32_t *l_819[9] = {&p_2211->g_763.f0,&p_2211->g_763.f0,&p_2211->g_763.f0,&p_2211->g_763.f0,&p_2211->g_763.f0,&p_2211->g_763.f0,&p_2211->g_763.f0,&p_2211->g_763.f0,&p_2211->g_763.f0};
                int i, j;
                (1 + 1);
            }
        }
    }
    for (l_757 = 0; (l_757 != 5); l_757 = safe_add_func_int16_t_s_s(l_757, 7))
    { /* block id: 384 */
        int16_t *l_863 = &p_2211->g_56;
        int32_t l_888 = 0L;
        int32_t l_892 = 0x530DB91CL;
        int16_t **l_897 = (void*)0;
        int16_t **l_898 = &p_2211->g_175;
        int16_t *l_900 = &p_2211->g_282;
        int16_t **l_899 = &l_900;
        int64_t l_992[5][7] = {{0x68E2858F44549192L,1L,0x1361352C77AFD708L,3L,0x1361352C77AFD708L,1L,0x68E2858F44549192L},{0x68E2858F44549192L,1L,0x1361352C77AFD708L,3L,0x1361352C77AFD708L,1L,0x68E2858F44549192L},{0x68E2858F44549192L,1L,0x1361352C77AFD708L,3L,0x1361352C77AFD708L,1L,0x68E2858F44549192L},{0x68E2858F44549192L,1L,0x1361352C77AFD708L,3L,0x1361352C77AFD708L,1L,0x68E2858F44549192L},{0x68E2858F44549192L,1L,0x1361352C77AFD708L,3L,0x1361352C77AFD708L,1L,0x68E2858F44549192L}};
        int32_t l_1004 = (-1L);
        struct S0 *l_1014 = &p_2211->g_793;
        int8_t l_1029 = 0x1AL;
        uint8_t l_1044 = 4UL;
        uint32_t l_1121 = 0x287070F9L;
        int32_t l_1122 = 0x730058F9L;
        uint16_t l_1140 = 0xCA6CL;
        int i, j;
        for (p_2211->g_172 = 14; (p_2211->g_172 != (-29)); --p_2211->g_172)
        { /* block id: 387 */
            if (p_26)
                goto lbl_862;
            return l_863;
        }
    }
    return (*l_1039);
}


/* ------------------------------------------ */
/* 
 * reads : p_2211->g_39 p_2211->g_147 p_2211->g_34 p_2211->g_635 p_2211->g_282 p_2211->g_154 p_2211->g_279 p_2211->g_659 p_2211->g_175 p_2211->g_172 p_2211->g_169 p_2211->g_271 p_2211->g_272 p_2211->g_273 p_2211->g_559.f1 p_2211->g_56
 * writes: p_2211->g_39 p_2211->g_147 p_2211->g_34 p_2211->g_490 p_2211->g_154 p_2211->g_172 p_2211->g_56 p_2211->g_512
 */
int16_t * func_29(int32_t  p_30, int32_t  p_31, struct S2 * p_2211)
{ /* block id: 6 */
    int32_t *l_33 = &p_2211->g_34;
    int32_t *l_35 = &p_2211->g_34;
    int32_t *l_36 = &p_2211->g_34;
    int32_t *l_37 = &p_2211->g_34;
    int32_t *l_38[7][9] = {{&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34}};
    uint8_t l_158 = 0x07L;
    int16_t *l_171 = &p_2211->g_172;
    int16_t **l_170 = &l_171;
    int32_t l_630 = 0x139798A4L;
    uint64_t l_631 = 0x4B0719BB40CF64BAL;
    uint32_t l_655 = 4294967295UL;
    int64_t l_700[8][8] = {{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}};
    int16_t *l_703[4][9] = {{&p_2211->g_56,(void*)0,&p_2211->g_282,&p_2211->g_172,&p_2211->g_282,(void*)0,&p_2211->g_56,&p_2211->g_172,(void*)0},{&p_2211->g_56,(void*)0,&p_2211->g_282,&p_2211->g_172,&p_2211->g_282,(void*)0,&p_2211->g_56,&p_2211->g_172,(void*)0},{&p_2211->g_56,(void*)0,&p_2211->g_282,&p_2211->g_172,&p_2211->g_282,(void*)0,&p_2211->g_56,&p_2211->g_172,(void*)0},{&p_2211->g_56,(void*)0,&p_2211->g_282,&p_2211->g_172,&p_2211->g_282,(void*)0,&p_2211->g_56,&p_2211->g_172,(void*)0}};
    int16_t *l_704 = &p_2211->g_282;
    int i, j;
    ++p_2211->g_39;
    for (p_31 = 4; (p_31 >= 1); p_31 -= 1)
    { /* block id: 10 */
        int32_t **l_42 = (void*)0;
        int32_t **l_43 = &l_35;
        int16_t *l_55 = &p_2211->g_56;
        int16_t **l_57[2];
        int16_t *l_58 = &p_2211->g_56;
        uint32_t *l_160 = (void*)0;
        uint32_t *l_161 = &p_2211->g_162;
        int16_t ***l_173[3][4] = {{&l_57[1],&l_57[1],&l_57[1],&l_57[1]},{&l_57[1],&l_57[1],&l_57[1],&l_57[1]},{&l_57[1],&l_57[1],&l_57[1],&l_57[1]}};
        int32_t l_603 = 0x4A08564FL;
        int i, j;
        for (i = 0; i < 2; i++)
            l_57[i] = &l_55;
        (*l_43) = l_38[3][7];
    }
    for (p_2211->g_147 = 0; (p_2211->g_147 <= 3); p_2211->g_147 += 1)
    { /* block id: 278 */
        uint32_t l_642[10][2][7] = {{{0UL,4294967295UL,0x2F97B7E1L,4294967288UL,0x2F97B7E1L,4294967295UL,0UL},{0UL,4294967295UL,0x2F97B7E1L,4294967288UL,0x2F97B7E1L,4294967295UL,0UL}},{{0UL,4294967295UL,0x2F97B7E1L,4294967288UL,0x2F97B7E1L,4294967295UL,0UL},{0UL,4294967295UL,0x2F97B7E1L,4294967288UL,0x2F97B7E1L,4294967295UL,0UL}},{{0UL,4294967295UL,0x2F97B7E1L,4294967288UL,0x2F97B7E1L,4294967295UL,0UL},{0UL,4294967295UL,0x2F97B7E1L,4294967288UL,0x2F97B7E1L,4294967295UL,0UL}},{{0UL,4294967295UL,0x2F97B7E1L,4294967288UL,0x2F97B7E1L,4294967295UL,0UL},{0UL,4294967295UL,0x2F97B7E1L,4294967288UL,0x2F97B7E1L,4294967295UL,0UL}},{{0UL,4294967295UL,0x2F97B7E1L,4294967288UL,0x2F97B7E1L,4294967295UL,0UL},{0UL,4294967295UL,0x2F97B7E1L,4294967288UL,0x2F97B7E1L,4294967295UL,0UL}},{{0UL,4294967295UL,0x2F97B7E1L,4294967288UL,0x2F97B7E1L,4294967295UL,0UL},{0UL,4294967295UL,0x2F97B7E1L,4294967288UL,0x2F97B7E1L,4294967295UL,0UL}},{{0UL,4294967295UL,0x2F97B7E1L,4294967288UL,0x2F97B7E1L,4294967295UL,0UL},{0UL,4294967295UL,0x2F97B7E1L,4294967288UL,0x2F97B7E1L,4294967295UL,0UL}},{{0UL,4294967295UL,0x2F97B7E1L,4294967288UL,0x2F97B7E1L,4294967295UL,0UL},{0UL,4294967295UL,0x2F97B7E1L,4294967288UL,0x2F97B7E1L,4294967295UL,0UL}},{{0UL,4294967295UL,0x2F97B7E1L,4294967288UL,0x2F97B7E1L,4294967295UL,0UL},{0UL,4294967295UL,0x2F97B7E1L,4294967288UL,0x2F97B7E1L,4294967295UL,0UL}},{{0UL,4294967295UL,0x2F97B7E1L,4294967288UL,0x2F97B7E1L,4294967295UL,0UL},{0UL,4294967295UL,0x2F97B7E1L,4294967288UL,0x2F97B7E1L,4294967295UL,0UL}}};
        int32_t l_656 = 1L;
        int32_t l_658 = 0x7B78CCCDL;
        int32_t l_661 = 0x4600FDB8L;
        int32_t l_662[4];
        int16_t l_701 = 2L;
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_662[i] = 0x6203B599L;
        for (p_2211->g_34 = 0; (p_2211->g_34 <= 3); p_2211->g_34 += 1)
        { /* block id: 281 */
            int32_t l_629 = 1L;
            uint32_t *l_634 = &p_2211->g_490;
            uint32_t *l_657 = &p_2211->g_39;
            int16_t *l_660 = &p_2211->g_56;
            struct S0 *l_665 = &p_2211->g_223;
            int64_t *l_698 = (void*)0;
            int64_t *l_699[3];
            int32_t l_702 = 0x69E6734CL;
            int i, j;
            for (i = 0; i < 3; i++)
                l_699[i] = &p_2211->g_512;
            --l_631;
            l_662[1] ^= (((*l_634) = p_31) <= ((l_661 ^= ((*l_660) = ((*p_2211->g_175) &= ((p_2211->g_635 == (((safe_add_func_int8_t_s_s(l_629, (safe_lshift_func_int16_t_s_u((l_658 = ((((*l_657) &= ((safe_mod_func_int8_t_s_s((l_656 = (p_2211->g_154 |= ((!(l_642[9][0][5] || (((((((((0L | p_31) >= (((l_642[9][0][5] == ((safe_mod_func_int64_t_s_s(((safe_mul_func_uint16_t_u_u((safe_add_func_uint32_t_u_u((safe_div_func_int16_t_s_s((safe_sub_func_int8_t_s_s(((safe_rshift_func_int16_t_s_s(0L, (0x1EA6L < p_2211->g_34))) & p_31), p_31)), 0x5979L)), 0x107D789DL)), l_655)) < p_31), p_30)) , 0xE7FBDCF8L)) , p_2211->g_282) <= 0xA8L)) > p_31) ^ l_642[9][0][5]) , &p_2211->g_168) != &p_2211->g_175) & p_30) ^ p_30) & (*l_33)))) , p_30))), 0x72L)) > p_2211->g_279[8])) >= l_642[6][1][5]) == p_31)), FAKE_DIVERGE(p_2211->group_1_offset, get_group_id(1), 10))))) , 2L) , p_2211->g_659)) == 0L)))) < p_31));
            l_702 ^= ((safe_mod_func_int32_t_s_s(((l_665 != l_665) > (((safe_add_func_int16_t_s_s(((*l_660) &= (safe_add_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((safe_mod_func_uint64_t_u_u((safe_div_func_int16_t_s_s((safe_mul_func_int8_t_s_s((!(safe_sub_func_uint8_t_u_u(255UL, (safe_rshift_func_int16_t_s_u((safe_mul_func_uint16_t_u_u(p_2211->g_282, (safe_div_func_int64_t_s_s(((safe_mod_func_int16_t_s_s(((+((p_2211->g_169 && (safe_div_func_int32_t_s_s((((p_2211->g_512 = ((safe_div_func_int32_t_s_s(((l_629 = p_30) > (p_31 < (~((safe_rshift_func_int16_t_s_s((safe_add_func_uint8_t_u_u(p_31, ((((safe_mod_func_uint8_t_u_u((**p_2211->g_271), p_30)) , p_2211->g_559.f1) >= p_31) && p_2211->g_559.f1))), 11)) <= 0L)))), p_30)) == p_31)) <= GROUP_DIVERGE(1, 1)) >= (*p_2211->g_175)), 0x73B2E8B8L))) , l_661)) == FAKE_DIVERGE(p_2211->group_0_offset, get_group_id(0), 10)), p_30)) , p_30), l_700[0][2])))), 2))))), 1UL)), 65535UL)), FAKE_DIVERGE(p_2211->group_2_offset, get_group_id(2), 10))), l_642[9][0][5])), 0x3851L))), p_31)) , l_642[9][0][5]) , (*p_2211->g_272))), l_701)) ^ GROUP_DIVERGE(0, 1));
        }
        return l_703[3][6];
    }
    return l_704;
}


/* ------------------------------------------ */
/* 
 * reads : p_2211->g_562 p_2211->g_392 p_2211->g_393 p_2211->g_140 p_2211->g_525 p_2211->g_311 p_2211->g_312 p_2211->g_229.f1 p_2211->g_601
 * writes: p_2211->g_562 p_2211->g_279 p_2211->g_83
 */
int32_t * func_44(uint64_t  p_45, int32_t ** p_46, uint8_t  p_47, uint64_t  p_48, struct S2 * p_2211)
{ /* block id: 244 */
    uint32_t l_571 = 0x5671FF41L;
    uint32_t *l_580[5][9][1] = {{{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39}},{{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39}},{{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39}},{{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39}},{{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39},{&p_2211->g_39}}};
    uint32_t *l_590 = (void*)0;
    uint32_t **l_589 = &l_590;
    int32_t l_595 = 0x1EEA9F96L;
    int32_t l_597 = 0x5685C06DL;
    uint64_t *l_600 = (void*)0;
    int32_t *l_602 = &l_595;
    int i, j, k;
    --l_571;
    for (p_2211->g_562 = 17; (p_2211->g_562 < 28); p_2211->g_562++)
    { /* block id: 248 */
        uint64_t *l_583 = (void*)0;
        uint64_t *l_584 = &p_2211->g_279[7];
        uint32_t **l_588 = &l_580[1][5][0];
        uint32_t ***l_587[7][7] = {{&l_588,&l_588,(void*)0,&l_588,(void*)0,&l_588,&l_588},{&l_588,&l_588,(void*)0,&l_588,(void*)0,&l_588,&l_588},{&l_588,&l_588,(void*)0,&l_588,(void*)0,&l_588,&l_588},{&l_588,&l_588,(void*)0,&l_588,(void*)0,&l_588,&l_588},{&l_588,&l_588,(void*)0,&l_588,(void*)0,&l_588,&l_588},{&l_588,&l_588,(void*)0,&l_588,(void*)0,&l_588,&l_588},{&l_588,&l_588,(void*)0,&l_588,(void*)0,&l_588,&l_588}};
        int32_t l_596 = 0x37F5828BL;
        uint32_t l_598 = 0xEC9472EFL;
        int32_t *l_599 = (void*)0;
        int i, j;
        if ((safe_mod_func_uint32_t_u_u(((safe_sub_func_int8_t_s_s(((l_597 = (((*p_2211->g_392) ^ (l_580[0][2][0] == ((safe_add_func_uint16_t_u_u((((*l_584) = p_47) & p_45), ((safe_lshift_func_int16_t_s_u(l_571, 15)) != (&p_2211->g_392 != (l_589 = &l_580[0][2][0]))))) , (*l_589)))) , (safe_mod_func_int32_t_s_s((l_595 |= ((safe_rshift_func_int8_t_s_u((l_571 , p_45), p_45)) != p_47)), l_596)))) == p_2211->g_140[0][0]), (***p_2211->g_525))) , 0x8DEF3E67L), l_598)))
        { /* block id: 253 */
            return l_599;
        }
        else
        { /* block id: 255 */
            (*p_2211->g_601) = (~((p_2211->g_229.f1 , l_583) != l_600));
        }
    }
    (*l_602) &= 0L;
    return &p_2211->g_34;
}


/* ------------------------------------------ */
/* 
 * reads : p_2211->g_184 p_2211->g_162 p_2211->g_168 p_2211->g_169 p_2211->g_221 p_2211->g_223 p_2211->g_34 p_2211->g_222 p_2211->g_229 p_2211->g_39 p_2211->g_83 p_2211->g_175 p_2211->g_172 p_2211->g_271 p_2211->g_275 p_2211->g_56 p_2211->g_272 p_2211->g_273 p_2211->g_154 p_2211->g_333 p_2211->g_238 p_2211->g_390 p_2211->g_312 p_2211->g_240.f1 p_2211->g_412 p_2211->g_147 p_2211->g_140 p_2211->l_comm_values p_2211->g_279 p_2211->g_463 p_2211->g_282 p_2211->g_490 p_2211->g_393 p_2211->g_396 p_2211->g_512 p_2211->g_128 p_2211->g_521 p_2211->g_240 p_2211->g_311 p_2211->g_545 p_2211->g_552 p_2211->g_554 p_2211->g_559 p_2211->g_562 p_2211->g_569 p_2211->g_570
 * writes: p_2211->g_83 p_2211->g_34 p_2211->g_184 p_2211->g_172 p_2211->g_154 p_2211->g_222 p_2211->g_147 p_2211->g_223.f1 p_2211->g_229 p_2211->g_153 p_2211->g_275 p_2211->g_56 p_2211->g_282 p_2211->g_238.f1 p_2211->g_396 p_2211->g_140 p_2211->g_434 p_2211->g_175 p_2211->g_463 p_2211->g_174 p_2211->g_512 p_2211->g_525 p_2211->g_558 p_2211->g_568
 */
struct S0  func_49(int16_t  p_50, uint32_t  p_51, struct S2 * p_2211)
{ /* block id: 66 */
    int32_t l_183 = 0x1FAD2F18L;
    int32_t l_268 = 0x71DB39C2L;
    uint64_t *l_278[7] = {(void*)0,&p_2211->g_279[7],(void*)0,(void*)0,&p_2211->g_279[7],(void*)0,(void*)0};
    int32_t l_305 = 0x40F11B7DL;
    int32_t l_361 = 7L;
    int32_t l_362 = 0x602DF714L;
    int32_t l_364 = 0x1BB8CC1EL;
    int32_t l_365[10][1] = {{0x561DF371L},{0x561DF371L},{0x561DF371L},{0x561DF371L},{0x561DF371L},{0x561DF371L},{0x561DF371L},{0x561DF371L},{0x561DF371L},{0x561DF371L}};
    uint32_t *l_382 = (void*)0;
    uint32_t **l_381[2];
    uint16_t *l_397 = (void*)0;
    int32_t *l_420 = &l_305;
    int16_t l_477 = 0x5B74L;
    int16_t **l_481 = &p_2211->g_175;
    int16_t l_546 = 0x1EE9L;
    int32_t l_548 = (-3L);
    int16_t ***l_565 = (void*)0;
    int16_t ***l_566[4];
    int32_t *l_567 = &p_2211->g_568;
    int i, j;
    for (i = 0; i < 2; i++)
        l_381[i] = &l_382;
    for (i = 0; i < 4; i++)
        l_566[i] = &p_2211->g_174[1][0][0];
    if ((~p_51))
    { /* block id: 67 */
        uint64_t l_191 = 0UL;
        int32_t l_192 = 0x3AC83724L;
        int32_t l_193 = 5L;
        uint32_t l_219 = 0UL;
        uint32_t l_246 = 0xD2117EA6L;
        uint64_t *l_290 = &l_191;
        uint64_t *l_293 = &l_191;
        uint32_t *l_347 = &p_2211->g_153;
        uint32_t **l_346 = &l_347;
        struct S0 *l_352[6][3] = {{&p_2211->g_333,&p_2211->g_333,&p_2211->g_333},{&p_2211->g_333,&p_2211->g_333,&p_2211->g_333},{&p_2211->g_333,&p_2211->g_333,&p_2211->g_333},{&p_2211->g_333,&p_2211->g_333,&p_2211->g_333},{&p_2211->g_333,&p_2211->g_333,&p_2211->g_333},{&p_2211->g_333,&p_2211->g_333,&p_2211->g_333}};
        int32_t l_355 = 3L;
        int32_t l_356 = 0x759A4694L;
        int32_t l_357[4][8] = {{0x679F912CL,0x728C40FEL,0x679F912CL,0x679F912CL,0x728C40FEL,0x679F912CL,0x679F912CL,0x728C40FEL},{0x679F912CL,0x728C40FEL,0x679F912CL,0x679F912CL,0x728C40FEL,0x679F912CL,0x679F912CL,0x728C40FEL},{0x679F912CL,0x728C40FEL,0x679F912CL,0x679F912CL,0x728C40FEL,0x679F912CL,0x679F912CL,0x728C40FEL},{0x679F912CL,0x728C40FEL,0x679F912CL,0x679F912CL,0x728C40FEL,0x679F912CL,0x679F912CL,0x728C40FEL}};
        uint8_t ***l_522 = (void*)0;
        int i, j;
        for (p_51 = 0; (p_51 == 53); p_51++)
        { /* block id: 70 */
            int32_t *l_180 = &p_2211->g_83;
            int32_t *l_181 = &p_2211->g_34;
            int32_t *l_182[7];
            uint8_t *l_202 = &p_2211->g_140[0][1];
            struct S0 *l_237 = &p_2211->g_238;
            struct S0 *l_239[2];
            uint64_t *l_291[9] = {&p_2211->g_279[7],(void*)0,&p_2211->g_279[7],&p_2211->g_279[7],(void*)0,&p_2211->g_279[7],&p_2211->g_279[7],(void*)0,&p_2211->g_279[7]};
            int32_t l_303 = 0x4C213E5AL;
            uint32_t l_304 = 4294967290UL;
            int i;
            for (i = 0; i < 7; i++)
                l_182[i] = (void*)0;
            for (i = 0; i < 2; i++)
                l_239[i] = &p_2211->g_240;
            p_2211->g_34 = ((*l_180) = (-9L));
            --p_2211->g_184;
            l_193 = (safe_rshift_func_uint8_t_u_u((safe_add_func_uint16_t_u_u((p_51 != (l_192 &= l_191)), p_50)), 1));
            for (p_2211->g_172 = 0; (p_2211->g_172 < (-12)); p_2211->g_172 = safe_sub_func_int16_t_s_s(p_2211->g_172, 8))
            { /* block id: 78 */
                int32_t *l_220[5];
                uint32_t *l_242 = (void*)0;
                uint32_t *l_243 = &p_2211->g_153;
                uint32_t *l_247 = &l_219;
                uint16_t *l_274[10] = {&p_2211->g_275,&p_2211->g_275,&p_2211->g_275,&p_2211->g_275,&p_2211->g_275,&p_2211->g_275,&p_2211->g_275,&p_2211->g_275,&p_2211->g_275,&p_2211->g_275};
                int16_t *l_276 = (void*)0;
                int16_t *l_277 = &p_2211->g_56;
                uint64_t *l_280[1];
                int16_t *l_281 = &p_2211->g_282;
                uint8_t **l_309 = &l_202;
                uint8_t ***l_313 = &l_309;
                int i;
                for (i = 0; i < 5; i++)
                    l_220[i] = (void*)0;
                for (i = 0; i < 1; i++)
                    l_280[i] = &p_2211->g_279[7];
                for (p_2211->g_154 = 1; (p_2211->g_154 >= 0); p_2211->g_154 -= 1)
                { /* block id: 81 */
                    int32_t l_209 = 0x55B538ADL;
                    int16_t *l_214[6];
                    int16_t l_215[10] = {(-1L),(-1L),0x0749L,(-1L),(-1L),(-1L),(-1L),0x0749L,(-1L),(-1L)};
                    int16_t l_216[7][3][4] = {{{(-1L),(-1L),6L,0L},{(-1L),(-1L),6L,0L},{(-1L),(-1L),6L,0L}},{{(-1L),(-1L),6L,0L},{(-1L),(-1L),6L,0L},{(-1L),(-1L),6L,0L}},{{(-1L),(-1L),6L,0L},{(-1L),(-1L),6L,0L},{(-1L),(-1L),6L,0L}},{{(-1L),(-1L),6L,0L},{(-1L),(-1L),6L,0L},{(-1L),(-1L),6L,0L}},{{(-1L),(-1L),6L,0L},{(-1L),(-1L),6L,0L},{(-1L),(-1L),6L,0L}},{{(-1L),(-1L),6L,0L},{(-1L),(-1L),6L,0L},{(-1L),(-1L),6L,0L}},{{(-1L),(-1L),6L,0L},{(-1L),(-1L),6L,0L},{(-1L),(-1L),6L,0L}}};
                    uint8_t *l_218[5][10][5] = {{{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]}},{{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]}},{{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]}},{{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]}},{{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]},{(void*)0,&p_2211->g_140[2][0],&p_2211->g_140[2][1],&p_2211->g_140[2][1],&p_2211->g_140[2][0]}}};
                    uint8_t **l_217 = &l_218[0][9][3];
                    int i, j, k;
                    for (i = 0; i < 6; i++)
                        l_214[i] = &p_2211->g_56;
                    if (((*l_181) = (safe_lshift_func_uint16_t_u_u(((safe_sub_func_uint16_t_u_u(p_2211->g_162, ((safe_lshift_func_uint8_t_u_u(9UL, 3)) && (((l_202 == ((*l_217) = ((safe_rshift_func_uint8_t_u_u((((safe_div_func_int16_t_s_s((p_50 = (+(safe_sub_func_uint32_t_u_u(l_209, (9L > (safe_rshift_func_int8_t_s_s(((safe_div_func_int16_t_s_s((+p_50), p_50)) == ((p_2211->g_184 <= 9L) && (*p_2211->g_168))), p_50))))))), p_51)) != l_183) & l_215[9]), l_216[1][2][2])) , &p_2211->g_140[0][1]))) > l_219) >= l_216[4][1][2])))) & p_51), l_191))))
                    { /* block id: 85 */
                        (*p_2211->g_221) = l_220[3];
                    }
                    else
                    { /* block id: 87 */
                        (*l_181) = 8L;
                        return p_2211->g_223;
                    }
                    if (p_51)
                        continue;
                    for (p_2211->g_147 = 0; (p_2211->g_147 <= 0); p_2211->g_147 += 1)
                    { /* block id: 94 */
                        int16_t l_224[6][6][6] = {{{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL},{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL},{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL},{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL},{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL},{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL}},{{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL},{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL},{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL},{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL},{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL},{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL}},{{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL},{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL},{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL},{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL},{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL},{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL}},{{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL},{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL},{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL},{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL},{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL},{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL}},{{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL},{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL},{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL},{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL},{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL},{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL}},{{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL},{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL},{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL},{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL},{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL},{0x3DFEL,0x4214L,(-6L),(-6L),0x4214L,0x3DFEL}}};
                        int i, j, k;
                        l_224[0][0][0] = (*l_181);
                    }
                }
                for (p_2211->g_223.f1 = 0; (p_2211->g_223.f1 > 11); ++p_2211->g_223.f1)
                { /* block id: 100 */
                    int32_t **l_227 = &p_2211->g_222[1][0];
                    int32_t **l_228 = &l_182[0];
                    struct S0 *l_230 = (void*)0;
                    struct S0 *l_231 = (void*)0;
                    struct S0 *l_232 = &p_2211->g_229;
                    struct S0 **l_241 = &l_231;
                    (*l_228) = ((*l_227) = (*p_2211->g_221));
                    (*l_232) = p_2211->g_229;
                    (*l_180) = ((safe_rshift_func_int16_t_s_s((*p_2211->g_168), 7)) == (((*l_181) ^= ((p_2211->g_39 < FAKE_DIVERGE(p_2211->group_0_offset, get_group_id(0), 10)) == p_2211->g_83)) <= (l_237 != ((*l_241) = l_239[1]))));
                }
                if (((((*l_243) = p_2211->g_83) != ((*l_247) = (safe_div_func_int32_t_s_s((-1L), l_246)))) <= (safe_div_func_int8_t_s_s((1UL <= (*p_2211->g_175)), ((safe_sub_func_uint64_t_u_u((safe_rshift_func_int8_t_s_u(((*l_181) &= ((safe_rshift_func_int8_t_s_s((safe_mul_func_int16_t_s_s(((*l_281) = (safe_mod_func_int32_t_s_s(0x1EA07113L, (safe_sub_func_uint32_t_u_u(((safe_rshift_func_int8_t_s_s(0x54L, (safe_rshift_func_int16_t_s_u((safe_mul_func_uint16_t_u_u(l_268, ((((*l_277) |= (p_50 = (safe_rshift_func_uint16_t_u_s((p_2211->g_275 |= (p_2211->g_271 == (void*)0)), (*p_2211->g_175))))) , l_278[6]) != l_280[0]))), l_193)))) ^ 0x1C1D8338L), 0xDDF52832L))))), (*p_2211->g_175))), p_51)) <= 0x6F4EA06207C1DD5FL)), 1)), 0x023D53BC850E0C1AL)) || 0x3F57L)))))
                { /* block id: 115 */
                    uint64_t *l_287 = &p_2211->g_279[4];
                    uint64_t **l_292[7][10][3] = {{{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]}},{{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]}},{{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]}},{{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]}},{{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]}},{{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]}},{{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]},{&l_291[4],&l_280[0],&l_280[0]}}};
                    int32_t l_302 = (-1L);
                    int i, j, k;
                    (*l_181) ^= (safe_div_func_int64_t_s_s((((((*p_2211->g_272) || p_50) >= (safe_mod_func_uint16_t_u_u((l_302 = (((p_2211->g_154 | (l_287 == l_280[0])) >= ((p_2211->g_153 = ((((safe_sub_func_int32_t_s_s((l_290 != (l_293 = l_291[2])), (safe_rshift_func_int16_t_s_s(l_268, 15)))) > ((((safe_mul_func_int16_t_s_s((safe_rshift_func_uint16_t_u_u((~(safe_add_func_uint8_t_u_u((9UL ^ l_302), p_50))), 7)), 1UL)) <= 0x6C267DE76BAA813BL) <= 1UL) ^ l_303)) , FAKE_DIVERGE(p_2211->global_1_offset, get_global_id(1), 10)) & 3L)) > l_304)) || l_183)), 65535UL))) , &l_220[0]) != &p_2211->g_222[1][0]), 5UL));
                    if (p_51)
                        break;
                }
                else
                { /* block id: 121 */
                    uint8_t l_306 = 255UL;
                    --l_306;
                }
                (*l_313) = l_309;
            }
        }
lbl_464:
        for (p_2211->g_238.f1 = 6; (p_2211->g_238.f1 >= 27); ++p_2211->g_238.f1)
        { /* block id: 129 */
            int32_t l_328 = (-9L);
            int32_t l_329 = 0x7505137FL;
            uint16_t l_342 = 0x783EL;
            int32_t l_363 = 0x37210143L;
            int32_t l_366 = 0L;
            int32_t l_367 = (-10L);
            int32_t l_368 = 0x1D21E9CEL;
            int32_t l_369 = 0x1ED3A678L;
            uint64_t l_370 = 0xEA1D27C7C07CC9AFL;
            int16_t **l_394[7] = {&p_2211->g_175,&p_2211->g_175,&p_2211->g_175,&p_2211->g_175,&p_2211->g_175,&p_2211->g_175,&p_2211->g_175};
            uint16_t l_409 = 65535UL;
            int32_t *l_417 = &l_366;
            int i;
            for (p_2211->g_147 = 0; (p_2211->g_147 != 47); ++p_2211->g_147)
            { /* block id: 132 */
                uint32_t l_330 = 0x82215A0CL;
                int32_t *l_345[10][7][2] = {{{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329}},{{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329}},{{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329}},{{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329}},{{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329}},{{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329}},{{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329}},{{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329}},{{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329}},{{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329},{(void*)0,&l_329}}};
                int i, j, k;
                for (l_192 = 1; (l_192 >= 0); l_192 -= 1)
                { /* block id: 135 */
                    int32_t *l_318 = &l_183;
                    int32_t *l_319 = (void*)0;
                    int32_t *l_320 = &p_2211->g_83;
                    int32_t *l_321 = (void*)0;
                    int32_t *l_322 = &l_193;
                    int32_t *l_323 = &l_183;
                    int32_t *l_324 = &p_2211->g_83;
                    int32_t l_325 = 1L;
                    int32_t *l_326 = (void*)0;
                    int32_t *l_327[6][1] = {{&p_2211->g_34},{&p_2211->g_34},{&p_2211->g_34},{&p_2211->g_34},{&p_2211->g_34},{&p_2211->g_34}};
                    int i, j;
                    l_330++;
                    return p_2211->g_333;
                }
                for (p_2211->g_282 = 6; (p_2211->g_282 <= (-20)); --p_2211->g_282)
                { /* block id: 141 */
                    for (l_330 = 0; (l_330 == 12); ++l_330)
                    { /* block id: 144 */
                        uint64_t **l_338 = &l_278[6];
                        uint64_t ***l_339 = &l_338;
                        int32_t **l_340 = &p_2211->g_222[1][0];
                        int32_t *l_341[7] = {&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34};
                        int i;
                        (*l_339) = l_338;
                        (*l_340) = &l_305;
                        --l_342;
                    }
                }
                l_183 &= (-1L);
                l_346 = (void*)0;
            }
            for (p_2211->g_172 = 8; (p_2211->g_172 >= 1); p_2211->g_172 -= 1)
            { /* block id: 155 */
                int32_t *l_348 = &l_183;
                int32_t **l_349 = &l_348;
                int32_t l_358 = 0x1193143BL;
                int32_t l_359 = (-2L);
                int32_t l_360[4][7][9] = {{{0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL,0x44AB7DA0L,0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL},{0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL,0x44AB7DA0L,0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL},{0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL,0x44AB7DA0L,0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL},{0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL,0x44AB7DA0L,0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL},{0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL,0x44AB7DA0L,0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL},{0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL,0x44AB7DA0L,0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL},{0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL,0x44AB7DA0L,0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL}},{{0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL,0x44AB7DA0L,0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL},{0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL,0x44AB7DA0L,0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL},{0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL,0x44AB7DA0L,0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL},{0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL,0x44AB7DA0L,0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL},{0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL,0x44AB7DA0L,0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL},{0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL,0x44AB7DA0L,0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL},{0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL,0x44AB7DA0L,0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL}},{{0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL,0x44AB7DA0L,0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL},{0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL,0x44AB7DA0L,0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL},{0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL,0x44AB7DA0L,0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL},{0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL,0x44AB7DA0L,0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL},{0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL,0x44AB7DA0L,0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL},{0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL,0x44AB7DA0L,0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL},{0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL,0x44AB7DA0L,0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL}},{{0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL,0x44AB7DA0L,0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL},{0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL,0x44AB7DA0L,0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL},{0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL,0x44AB7DA0L,0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL},{0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL,0x44AB7DA0L,0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL},{0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL,0x44AB7DA0L,0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL},{0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL,0x44AB7DA0L,0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL},{0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL,0x44AB7DA0L,0x44AB7DA0L,0x669BB4CBL,1L,0x669BB4CBL}}};
                uint32_t ***l_383 = &l_381[0];
                int64_t *l_395 = &p_2211->g_396;
                int32_t *l_398 = &l_368;
                int32_t *l_399 = &l_364;
                int32_t *l_400 = (void*)0;
                int32_t *l_401 = &l_193;
                int32_t *l_402 = &p_2211->g_34;
                int32_t *l_403 = &l_365[6][0];
                int32_t *l_404 = &l_355;
                int32_t *l_405 = &p_2211->g_34;
                int32_t *l_406 = (void*)0;
                int32_t *l_407 = &l_366;
                int32_t *l_408[8] = {&l_357[2][2],&l_357[2][2],&l_357[2][2],&l_357[2][2],&l_357[2][2],&l_357[2][2],&l_357[2][2],&l_357[2][2]};
                int i, j, k;
                (*l_349) = l_348;
                for (l_193 = 2; (l_193 <= 8); l_193 += 1)
                { /* block id: 159 */
                    struct S0 *l_351 = &p_2211->g_333;
                    struct S0 **l_350 = &l_351;
                    int32_t *l_353 = &p_2211->g_83;
                    int32_t *l_354[8] = {&p_2211->g_83,&p_2211->g_83,&p_2211->g_83,&p_2211->g_83,&p_2211->g_83,&p_2211->g_83,&p_2211->g_83,&p_2211->g_83};
                    int i;
                    (**l_349) = (((*l_350) = (FAKE_DIVERGE(p_2211->local_0_offset, get_local_id(0), 10) , &p_2211->g_223)) == l_352[2][2]);
                    --l_370;
                    for (p_2211->g_56 = 1; (p_2211->g_56 >= 0); p_2211->g_56 -= 1)
                    { /* block id: 165 */
                        return p_2211->g_238;
                    }
                    if (l_183)
                        break;
                }
                (**l_349) &= (((((safe_mod_func_int64_t_s_s((safe_div_func_int32_t_s_s((safe_mul_func_int8_t_s_s((((((p_51 ^ (((*p_2211->g_312) = (safe_mul_func_int16_t_s_s((((*l_383) = l_381[0]) == (void*)0), ((safe_unary_minus_func_int64_t_s((safe_div_func_uint64_t_u_u((((FAKE_DIVERGE(p_2211->global_1_offset, get_global_id(1), 10) | (safe_lshift_func_int8_t_s_s(p_51, ((!(safe_unary_minus_func_int64_t_s(((void*)0 != p_2211->g_390)))) || ((*l_395) = (l_370 < (((0x37CABE5EL != 0x202D725EL) , l_394[0]) == l_394[4]))))))) , (void*)0) != l_397), 0x53A32646635DCA35L)))) != 1L)))) & p_50)) < p_50) <= p_50) , p_50) != p_51), p_50)), p_2211->g_240.f1)), l_368)) , l_356) , 0x38L) , 0x2368AEAEA2844BE8L) <= p_2211->g_238.f1);
                l_409++;
            }
            if ((l_278[6] == &p_2211->g_396))
            { /* block id: 176 */
                return p_2211->g_412;
            }
            else
            { /* block id: 178 */
                int32_t *l_413 = &l_369;
                int32_t **l_418 = (void*)0;
                int32_t **l_419 = &l_417;
                uint64_t **l_432 = &l_278[5];
                uint64_t ***l_431 = &l_432;
                uint64_t ****l_433 = (void*)0;
                int8_t l_443 = (-1L);
                (*l_413) = 1L;
                for (l_246 = 0; (l_246 > 29); l_246++)
                { /* block id: 182 */
                    int32_t **l_416 = &l_413;
                    (*l_416) = l_413;
                }
                l_420 = ((*l_419) = l_417);
                (*l_420) = (safe_rshift_func_uint8_t_u_u(((safe_mod_func_int8_t_s_s((safe_lshift_func_uint8_t_u_s((safe_add_func_int64_t_s_s((((((((*p_2211->g_221) = &l_363) != (((safe_sub_func_int32_t_s_s((*l_420), p_51)) > ((l_431 == (p_2211->g_434 = &l_432)) <= (safe_add_func_uint64_t_u_u(((safe_mod_func_int64_t_s_s((safe_add_func_uint32_t_u_u(((safe_div_func_int8_t_s_s(0x4AL, p_50)) , 1UL), p_2211->g_229.f1)), 18446744073709551615UL)) ^ p_51), p_2211->g_147)))) , &p_2211->g_34)) , (*p_2211->g_312)) && p_51) , p_2211->g_172) , (-1L)), p_2211->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2211->tid, 1))])), (*l_420))), 5L)) , FAKE_DIVERGE(p_2211->local_0_offset, get_local_id(0), 10)), l_443));
            }
        }
        for (p_2211->g_223.f1 = 11; (p_2211->g_223.f1 != 20); p_2211->g_223.f1++)
        { /* block id: 194 */
            uint8_t l_488[4];
            int32_t *l_555 = (void*)0;
            int32_t *l_556 = (void*)0;
            int i;
            for (i = 0; i < 4; i++)
                l_488[i] = 1UL;
            for (p_2211->g_238.f1 = 18; (p_2211->g_238.f1 != 39); p_2211->g_238.f1 = safe_add_func_uint64_t_u_u(p_2211->g_238.f1, 3))
            { /* block id: 197 */
                int16_t **l_450 = &p_2211->g_175;
                int32_t l_451 = 0L;
                uint64_t **l_458 = (void*)0;
                uint64_t **l_460 = &l_278[2];
                uint64_t ***l_459 = &l_460;
                uint16_t *l_461 = &p_2211->g_275;
                uint16_t *l_462 = &p_2211->g_463;
                uint8_t ***l_523 = &p_2211->g_311;
                if ((safe_lshift_func_uint8_t_u_s((((*l_450) = l_397) == &p_50), ((p_51 & (l_451 >= ((safe_sub_func_int64_t_s_s(p_2211->g_279[2], (((*l_462) |= ((*l_461) = ((p_50 | ((((((safe_rshift_func_int16_t_s_u((safe_div_func_int64_t_s_s(((((((l_458 != ((*l_459) = &l_278[6])) < (~p_2211->g_238.f0)) , l_356) & p_2211->g_34) || l_451) , p_2211->g_412.f1), 18446744073709551615UL)), 0)) , 0x54D17695L) , p_2211->g_279[6]) && p_50) || (*p_2211->g_272)) , p_2211->g_412.f1)) , p_2211->g_273))) || 8UL))) > l_451))) || 0xFBL))))
                { /* block id: 202 */
                    int16_t ***l_480 = &p_2211->g_174[1][0][1];
                    int32_t l_489 = 0x308AA401L;
                    int32_t *l_491 = &l_357[3][3];
                    if (p_2211->g_275)
                        goto lbl_464;
                    (*l_491) &= (safe_mod_func_int32_t_s_s((safe_add_func_int16_t_s_s((((safe_sub_func_uint64_t_u_u(((*l_290) = ((safe_rshift_func_int16_t_s_u(8L, 7)) == (safe_rshift_func_int8_t_s_s((safe_lshift_func_int8_t_s_u(p_2211->g_282, 0)), l_477)))), ((l_355 == ((safe_div_func_int16_t_s_s(((((*l_480) = l_450) == l_481) <= ((*p_2211->g_168) && p_2211->g_172)), (safe_div_func_uint16_t_u_u((safe_mod_func_uint8_t_u_u((safe_add_func_uint8_t_u_u(((*p_2211->g_312) ^= p_50), l_355)), p_50)), l_488[2])))) & p_50)) , 0UL))) == p_2211->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2211->tid, 1))]) == l_489), p_2211->g_490)), 0x21F58EE1L));
                }
                else
                { /* block id: 208 */
                    int16_t *l_508 = &p_2211->g_282;
                    int32_t l_509[10] = {0L,0L,0L,0L,0L,0L,0L,0L,0L,0L};
                    int64_t *l_510 = (void*)0;
                    int64_t *l_511 = &p_2211->g_512;
                    uint8_t ***l_524 = &p_2211->g_311;
                    int i;
                    for (l_477 = 3; (l_477 >= 0); l_477 -= 1)
                    { /* block id: 211 */
                        int i, j;
                        l_357[l_477][l_477] |= 0x58EC1ED4L;
                    }
                    l_356 = (safe_div_func_uint64_t_u_u((safe_rshift_func_int8_t_s_u(p_2211->g_162, 4)), (((p_2211->g_393 != (l_451 || (((p_2211->g_154 , ((*l_511) &= (l_488[1] != ((safe_sub_func_uint64_t_u_u((safe_mod_func_uint64_t_u_u((p_2211->g_83 , (~(((l_509[7] = (safe_sub_func_uint8_t_u_u((((*l_347) = (+(safe_mod_func_int8_t_s_s((((l_451 , ((0x2A82DE67L | (safe_rshift_func_int16_t_s_u(((*l_508) = (!(safe_mul_func_int16_t_s_s(5L, 0x3C9DL)))), p_2211->g_396))) || FAKE_DIVERGE(p_2211->group_2_offset, get_group_id(2), 10))) , p_51) ^ (*p_2211->g_312)), 0x6EL)))) <= p_50), (-1L)))) , 1UL) ^ l_488[1]))), p_50)), p_51)) < p_2211->g_279[7])))) > 1UL) && l_246))) != 0L) || 18446744073709551615UL)));
                    if (((l_357[0][2] <= (l_509[7] == (safe_rshift_func_int8_t_s_s(8L, (((l_509[8] <= (safe_rshift_func_int8_t_s_s((safe_div_func_int32_t_s_s((safe_mul_func_uint16_t_u_u(((p_2211->g_128[5][7][0] , p_2211->g_521) , (((l_523 = l_522) == (p_2211->g_525 = l_524)) && (safe_add_func_int8_t_s_s(p_50, p_2211->g_412.f1)))), 0x63DEL)), l_488[3])), p_50))) , p_51) >= 0x1FL))))) & FAKE_DIVERGE(p_2211->group_2_offset, get_group_id(2), 10)))
                    { /* block id: 221 */
                        return p_2211->g_240;
                    }
                    else
                    { /* block id: 223 */
                        uint32_t l_544[10];
                        int8_t *l_547 = (void*)0;
                        int32_t l_549 = (-6L);
                        int32_t *l_550 = (void*)0;
                        int i;
                        for (i = 0; i < 10; i++)
                            l_544[i] = 4294967295UL;
                        l_549 ^= (safe_add_func_int32_t_s_s((((**p_2211->g_271) > ((***l_524) |= FAKE_DIVERGE(p_2211->global_1_offset, get_global_id(1), 10))) , 0x6DA1E71EL), ((&l_488[2] == &l_488[3]) | (safe_sub_func_int8_t_s_s(0x5CL, (l_548 |= ((safe_rshift_func_uint8_t_u_s((safe_sub_func_int64_t_s_s((~(safe_sub_func_int8_t_s_s((safe_sub_func_int32_t_s_s((0x2C08L > ((safe_sub_func_int32_t_s_s(0x135D3C51L, (safe_mod_func_uint32_t_u_u(p_51, l_544[0])))) <= 254UL)), 1L)), p_2211->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2211->tid, 1))]))), p_2211->g_545)), p_50)) , l_546)))))));
                        l_509[7] = l_488[2];
                        (*p_2211->g_552) = p_51;
                        if (l_509[3])
                            break;
                    }
                    (*p_2211->g_554) = &l_509[2];
                }
            }
            l_361 ^= p_50;
            p_2211->g_558 = p_2211->g_521;
        }
    }
    else
    { /* block id: 237 */
        return p_2211->g_559;
    }
    (*p_2211->g_569) = (p_2211->g_240.f1 > ((((safe_rshift_func_int16_t_s_u(p_2211->g_562, 13)) , &p_2211->g_271) != (((*l_567) = ((~(safe_mul_func_int8_t_s_s(0x0FL, (~(0x5364EDFAB536FF42L || ((&p_2211->g_168 != (p_2211->g_174[1][0][1] = (void*)0)) , p_50)))))) > ((+(~(((0x0D5142E8L <= p_50) , p_50) & l_268))) >= 0x0D8F312EL))) , (void*)0)) , 0x05L));
    return p_2211->g_570;
}


/* ------------------------------------------ */
/* 
 * reads : p_2211->g_56 p_2211->g_34 p_2211->g_39 p_2211->l_comm_values p_2211->g_99 p_2211->g_83 p_2211->g_128 p_2211->g_comm_values p_2211->g_147 p_2211->g_128.f0 p_2211->g_153
 * writes: p_2211->g_56 p_2211->g_34 p_2211->g_39 p_2211->g_83 p_2211->g_140 p_2211->g_147 p_2211->g_153 p_2211->g_154
 */
uint32_t  func_52(int32_t * p_53, int16_t * p_54, struct S2 * p_2211)
{ /* block id: 13 */
    uint64_t l_63[6][2][1];
    int32_t *l_77 = &p_2211->g_34;
    int32_t **l_76 = &l_77;
    int8_t l_84 = 0x71L;
    uint16_t l_98 = 0x7069L;
    uint32_t l_100[7] = {4294967292UL,4294967289UL,4294967292UL,4294967292UL,4294967289UL,4294967292UL,4294967292UL};
    uint64_t l_125 = 7UL;
    int16_t *l_129 = &p_2211->g_56;
    int32_t *l_136 = &p_2211->g_83;
    uint8_t *l_139[1];
    int32_t *l_152 = &p_2211->g_83;
    int32_t l_155[2];
    int i, j, k;
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 1; k++)
                l_63[i][j][k] = 0x153AA9B223541209L;
        }
    }
    for (i = 0; i < 1; i++)
        l_139[i] = &p_2211->g_140[0][1];
    for (i = 0; i < 2; i++)
        l_155[i] = 0x6BD04F64L;
    for (p_2211->g_56 = 17; (p_2211->g_56 < (-23)); p_2211->g_56--)
    { /* block id: 16 */
        return p_2211->g_34;
    }
    for (p_2211->g_56 = 0; (p_2211->g_56 <= 17); p_2211->g_56 = safe_add_func_uint32_t_u_u(p_2211->g_56, 8))
    { /* block id: 21 */
        int16_t l_68[3][6][5] = {{{(-4L),7L,(-1L),0x6194L,(-1L)},{(-4L),7L,(-1L),0x6194L,(-1L)},{(-4L),7L,(-1L),0x6194L,(-1L)},{(-4L),7L,(-1L),0x6194L,(-1L)},{(-4L),7L,(-1L),0x6194L,(-1L)},{(-4L),7L,(-1L),0x6194L,(-1L)}},{{(-4L),7L,(-1L),0x6194L,(-1L)},{(-4L),7L,(-1L),0x6194L,(-1L)},{(-4L),7L,(-1L),0x6194L,(-1L)},{(-4L),7L,(-1L),0x6194L,(-1L)},{(-4L),7L,(-1L),0x6194L,(-1L)},{(-4L),7L,(-1L),0x6194L,(-1L)}},{{(-4L),7L,(-1L),0x6194L,(-1L)},{(-4L),7L,(-1L),0x6194L,(-1L)},{(-4L),7L,(-1L),0x6194L,(-1L)},{(-4L),7L,(-1L),0x6194L,(-1L)},{(-4L),7L,(-1L),0x6194L,(-1L)},{(-4L),7L,(-1L),0x6194L,(-1L)}}};
        int16_t *l_91 = &l_68[0][2][0];
        int16_t **l_90 = &l_91;
        uint64_t *l_104 = &l_63[4][1][0];
        uint32_t l_130[8];
        uint32_t *l_131 = (void*)0;
        uint32_t *l_132[3];
        int32_t **l_133 = &l_77;
        int32_t *l_135 = &p_2211->g_34;
        int32_t **l_134[5];
        int i, j, k;
        for (i = 0; i < 8; i++)
            l_130[i] = 8UL;
        for (i = 0; i < 3; i++)
            l_132[i] = (void*)0;
        for (i = 0; i < 5; i++)
            l_134[i] = &l_135;
        for (p_2211->g_34 = 0; (p_2211->g_34 >= 0); p_2211->g_34 -= 1)
        { /* block id: 24 */
            int32_t *l_65 = &p_2211->g_34;
            int32_t **l_64 = &l_65;
            int32_t l_85 = (-2L);
            int32_t l_86[8] = {1L,1L,1L,1L,1L,1L,1L,1L};
            int i;
            (*l_64) = &p_2211->g_34;
            if ((*p_53))
                break;
            for (p_2211->g_39 = 0; (p_2211->g_39 <= 0); p_2211->g_39 += 1)
            { /* block id: 29 */
                int32_t **l_75 = (void*)0;
                int16_t *l_79[7];
                int16_t **l_78 = &l_79[5];
                int32_t *l_82[2][8][10] = {{{&p_2211->g_34,&p_2211->g_83,&p_2211->g_83,(void*)0,&p_2211->g_83,(void*)0,&p_2211->g_83,&p_2211->g_83,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_83,&p_2211->g_83,(void*)0,&p_2211->g_83,(void*)0,&p_2211->g_83,&p_2211->g_83,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_83,&p_2211->g_83,(void*)0,&p_2211->g_83,(void*)0,&p_2211->g_83,&p_2211->g_83,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_83,&p_2211->g_83,(void*)0,&p_2211->g_83,(void*)0,&p_2211->g_83,&p_2211->g_83,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_83,&p_2211->g_83,(void*)0,&p_2211->g_83,(void*)0,&p_2211->g_83,&p_2211->g_83,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_83,&p_2211->g_83,(void*)0,&p_2211->g_83,(void*)0,&p_2211->g_83,&p_2211->g_83,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_83,&p_2211->g_83,(void*)0,&p_2211->g_83,(void*)0,&p_2211->g_83,&p_2211->g_83,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_83,&p_2211->g_83,(void*)0,&p_2211->g_83,(void*)0,&p_2211->g_83,&p_2211->g_83,&p_2211->g_34,&p_2211->g_34}},{{&p_2211->g_34,&p_2211->g_83,&p_2211->g_83,(void*)0,&p_2211->g_83,(void*)0,&p_2211->g_83,&p_2211->g_83,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_83,&p_2211->g_83,(void*)0,&p_2211->g_83,(void*)0,&p_2211->g_83,&p_2211->g_83,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_83,&p_2211->g_83,(void*)0,&p_2211->g_83,(void*)0,&p_2211->g_83,&p_2211->g_83,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_83,&p_2211->g_83,(void*)0,&p_2211->g_83,(void*)0,&p_2211->g_83,&p_2211->g_83,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_83,&p_2211->g_83,(void*)0,&p_2211->g_83,(void*)0,&p_2211->g_83,&p_2211->g_83,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_83,&p_2211->g_83,(void*)0,&p_2211->g_83,(void*)0,&p_2211->g_83,&p_2211->g_83,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_83,&p_2211->g_83,(void*)0,&p_2211->g_83,(void*)0,&p_2211->g_83,&p_2211->g_83,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_83,&p_2211->g_83,(void*)0,&p_2211->g_83,(void*)0,&p_2211->g_83,&p_2211->g_83,&p_2211->g_34,&p_2211->g_34}}};
                int i, j, k;
                for (i = 0; i < 7; i++)
                    l_79[i] = &p_2211->g_56;
                l_86[5] ^= (l_85 |= ((((safe_sub_func_uint8_t_u_u((l_68[0][2][0] = 0xE2L), l_63[p_2211->g_34][(p_2211->g_39 + 1)][p_2211->g_34])) < ((l_84 = (safe_lshift_func_int16_t_s_u((safe_rshift_func_int16_t_s_u((*p_54), ((safe_rshift_func_int16_t_s_u(((((l_76 = l_75) != &p_53) , &p_2211->g_56) != ((*l_78) = (void*)0)), 2)) | (safe_div_func_uint8_t_u_u(p_2211->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2211->tid, 1))], ((*p_53) | 0x71BFD6FFL)))))), 11))) != (*p_53))) < p_2211->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2211->tid, 1))]) , 0x18F97443L));
            }
        }
        for (p_2211->g_39 = 2; (p_2211->g_39 == 42); p_2211->g_39 = safe_add_func_uint8_t_u_u(p_2211->g_39, 8))
        { /* block id: 40 */
            uint32_t l_89 = 0x40F8590CL;
            int32_t *l_101[4][1] = {{&p_2211->g_83},{&p_2211->g_83},{&p_2211->g_83},{&p_2211->g_83}};
            int i, j;
            p_2211->g_83 |= ((*p_53) = (l_89 && (((void*)0 != l_90) & (0x37L < (l_68[0][2][0] , (safe_sub_func_uint16_t_u_u(((0x3FDF2DC13529C6F6L > p_2211->g_56) ^ ((p_2211->g_34 , (FAKE_DIVERGE(p_2211->global_2_offset, get_global_id(2), 10) <= (safe_lshift_func_uint16_t_u_u((((((0x172CL >= l_68[0][2][0]) == 0UL) && l_98) , p_2211->g_99) == (void*)0), 5)))) != l_100[5])), 1UL)))))));
            for (l_98 = 0; (l_98 <= 9); l_98 = safe_add_func_uint8_t_u_u(l_98, 9))
            { /* block id: 45 */
                (*l_77) ^= (-6L);
            }
            (*p_53) = (*p_53);
        }
        l_136 = ((((~(((*l_104) = p_2211->g_56) ^ l_68[2][3][3])) < (safe_div_func_uint32_t_u_u((safe_div_func_uint32_t_u_u((FAKE_DIVERGE(p_2211->group_0_offset, get_group_id(0), 10) > (safe_sub_func_int32_t_s_s((safe_lshift_func_int16_t_s_s(((((((*l_133) = ((p_2211->g_39 = (((((p_2211->g_56 , p_53) != (void*)0) < (!(safe_lshift_func_int16_t_s_u(((((safe_mod_func_uint32_t_u_u(((safe_mod_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s((safe_rshift_func_uint8_t_u_s((safe_mod_func_int8_t_s_s((((l_125 , (safe_mul_func_int16_t_s_s(((p_2211->g_128[5][7][0] , l_129) != (void*)0), 0x89FDL))) , l_129) == (void*)0), (*l_77))), l_130[6])), p_2211->g_34)), (-1L))) > l_130[6]), p_2211->g_comm_values[p_2211->tid])) , p_54) != &p_2211->g_56) < 1L), 3)))) | 0x70BCD743L) , (*l_77))) , p_53)) == (void*)0) != p_2211->g_83) <= (*p_54)) < p_2211->g_comm_values[p_2211->tid]), 7)), p_2211->g_83))), l_68[0][2][0])), (*p_53)))) <= (*p_53)) , (void*)0);
    }
    l_155[1] ^= (p_2211->g_154 = (((*p_53) = 0x38B245C3L) >= ((safe_div_func_int64_t_s_s(((p_2211->g_140[0][1] = (&l_125 == &l_63[2][1][0])) <= (p_2211->g_153 |= (safe_rshift_func_int8_t_s_u((safe_div_func_uint32_t_u_u(((safe_sub_func_uint8_t_u_u((((p_2211->g_147 = 1L) || (safe_mod_func_int8_t_s_s((-6L), (((*l_152) = ((p_53 == ((safe_add_func_uint32_t_u_u(0x3959C9A8L, 1UL)) , l_77)) || p_2211->g_147)) && p_2211->g_83)))) < (*p_54)), p_2211->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2211->tid, 1))])) ^ p_2211->g_128[5][7][0].f0), p_2211->g_56)), 7)))), p_2211->g_56)) <= 0x4FA702CAL)));
    return (*l_77);
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_comm_values[i] = 1;
    struct S2 c_2212;
    struct S2* p_2211 = &c_2212;
    struct S2 c_2213 = {
        0x4AFEL, // p_2211->g_10
        1L, // p_2211->g_34
        1UL, // p_2211->g_39
        (-3L), // p_2211->g_56
        0L, // p_2211->g_83
        (void*)0, // p_2211->g_99
        {{{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}}},{{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}}},{{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}}},{{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}}},{{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}}},{{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}}},{{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}}}}, // p_2211->g_128
        {{0x87L,255UL},{0x87L,255UL},{0x87L,255UL},{0x87L,255UL}}, // p_2211->g_140
        0x6DL, // p_2211->g_147
        4294967295UL, // p_2211->g_153
        0x7DL, // p_2211->g_154
        0x5C3B9D74L, // p_2211->g_159
        0x75917A22L, // p_2211->g_162
        1L, // p_2211->g_169
        &p_2211->g_169, // p_2211->g_168
        &p_2211->g_168, // p_2211->g_167
        (-1L), // p_2211->g_172
        &p_2211->g_172, // p_2211->g_175
        {{{&p_2211->g_175,&p_2211->g_175,&p_2211->g_175}},{{&p_2211->g_175,&p_2211->g_175,&p_2211->g_175}}}, // p_2211->g_174
        1UL, // p_2211->g_184
        {{&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34}}, // p_2211->g_222
        &p_2211->g_222[1][0], // p_2211->g_221
        {0x6506466BL,0x169658B35087B765L}, // p_2211->g_223
        {0x189E9F6BL,1UL}, // p_2211->g_229
        {0x7DF0B75FL,0xBA5A16B7DE68C300L}, // p_2211->g_238
        {1L,0UL}, // p_2211->g_240
        0x0EL, // p_2211->g_273
        &p_2211->g_273, // p_2211->g_272
        &p_2211->g_272, // p_2211->g_271
        0UL, // p_2211->g_275
        {18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL}, // p_2211->g_279
        0x60C9L, // p_2211->g_282
        &p_2211->g_140[3][0], // p_2211->g_312
        &p_2211->g_312, // p_2211->g_311
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_2211->g_310
        {0x3AE7E86BL,0x1674906479404D51L}, // p_2211->g_333
        0UL, // p_2211->g_393
        &p_2211->g_393, // p_2211->g_392
        &p_2211->g_392, // p_2211->g_391
        &p_2211->g_391, // p_2211->g_390
        0x796545FCD3875BE9L, // p_2211->g_396
        {-2L,0xB0F51D359E288209L}, // p_2211->g_412
        (void*)0, // p_2211->g_434
        0x316DL, // p_2211->g_463
        4294967286UL, // p_2211->g_490
        0x5267E1E53B8AF24DL, // p_2211->g_512
        {-7L,0xC18352C009823C35L}, // p_2211->g_521
        &p_2211->g_311, // p_2211->g_525
        0xA524L, // p_2211->g_545
        {{{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34}},{{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34}},{{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34}},{{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34}},{{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34}},{{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,(void*)0,&p_2211->g_34,&p_2211->g_34}}}, // p_2211->g_551
        &p_2211->g_83, // p_2211->g_552
        (void*)0, // p_2211->g_553
        &p_2211->g_222[0][4], // p_2211->g_554
        (void*)0, // p_2211->g_557
        {-1L,0xA0CE58E331A5054AL}, // p_2211->g_558
        {0x06785D5DL,0UL}, // p_2211->g_559
        0x40151BD9L, // p_2211->g_562
        0x319E215AL, // p_2211->g_568
        &p_2211->g_83, // p_2211->g_569
        {-1L,0xE43DBF84F4D9183EL}, // p_2211->g_570
        &p_2211->g_83, // p_2211->g_601
        {{{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL}},{{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL}},{{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL}},{{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL}},{{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL}},{{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL},{249UL,247UL,0x6AL,247UL,249UL,0xFFL}}}, // p_2211->g_606
        (void*)0, // p_2211->g_635
        (void*)0, // p_2211->g_659
        {{&p_2211->g_83,(void*)0,&p_2211->g_83,&p_2211->g_34},{&p_2211->g_83,(void*)0,&p_2211->g_83,&p_2211->g_34},{&p_2211->g_83,(void*)0,&p_2211->g_83,&p_2211->g_34},{&p_2211->g_83,(void*)0,&p_2211->g_83,&p_2211->g_34},{&p_2211->g_83,(void*)0,&p_2211->g_83,&p_2211->g_34},{&p_2211->g_83,(void*)0,&p_2211->g_83,&p_2211->g_34},{&p_2211->g_83,(void*)0,&p_2211->g_83,&p_2211->g_34},{&p_2211->g_83,(void*)0,&p_2211->g_83,&p_2211->g_34},{&p_2211->g_83,(void*)0,&p_2211->g_83,&p_2211->g_34},{&p_2211->g_83,(void*)0,&p_2211->g_83,&p_2211->g_34}}, // p_2211->g_706
        {&p_2211->g_83,&p_2211->g_83,&p_2211->g_83}, // p_2211->g_707
        &p_2211->g_83, // p_2211->g_708
        &p_2211->g_83, // p_2211->g_715
        &p_2211->g_434, // p_2211->g_722
        {-1L}, // p_2211->g_763
        {0x40E9F8B8L,4UL}, // p_2211->g_793
        &p_2211->g_412, // p_2211->g_794
        &p_2211->g_162, // p_2211->g_853
        {{(void*)0,(void*)0,&p_2211->g_853,&p_2211->g_853,(void*)0},{(void*)0,(void*)0,&p_2211->g_853,&p_2211->g_853,(void*)0},{(void*)0,(void*)0,&p_2211->g_853,&p_2211->g_853,(void*)0},{(void*)0,(void*)0,&p_2211->g_853,&p_2211->g_853,(void*)0},{(void*)0,(void*)0,&p_2211->g_853,&p_2211->g_853,(void*)0},{(void*)0,(void*)0,&p_2211->g_853,&p_2211->g_853,(void*)0},{(void*)0,(void*)0,&p_2211->g_853,&p_2211->g_853,(void*)0},{(void*)0,(void*)0,&p_2211->g_853,&p_2211->g_853,(void*)0}}, // p_2211->g_852
        &p_2211->g_852[3][0], // p_2211->g_851
        {0x48F96CF0L,18446744073709551613UL}, // p_2211->g_931
        {-1L,0xD204B26A778AC527L}, // p_2211->g_939
        &p_2211->g_83, // p_2211->g_967
        {-10L,0xEF23811CFF59742DL}, // p_2211->g_980
        (void*)0, // p_2211->g_996
        &p_2211->g_172, // p_2211->g_1019
        {0x2430309BL}, // p_2211->g_1031
        &p_2211->g_34, // p_2211->g_1169
        {&p_2211->g_1169,&p_2211->g_1169,&p_2211->g_1169}, // p_2211->g_1168
        &p_2211->g_1169, // p_2211->g_1170
        &p_2211->g_238, // p_2211->g_1175
        &p_2211->g_1175, // p_2211->g_1174
        (void*)0, // p_2211->g_1185
        255UL, // p_2211->g_1215
        0L, // p_2211->g_1220
        &p_2211->g_83, // p_2211->g_1247
        0UL, // p_2211->g_1249
        {{&p_2211->g_34,&p_2211->g_34,&p_2211->g_83,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,&p_2211->g_83,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34},{&p_2211->g_34,&p_2211->g_34,&p_2211->g_83,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34,&p_2211->g_34}}, // p_2211->g_1253
        &p_2211->g_83, // p_2211->g_1254
        {{0x2300CE5FL},{0x2300CE5FL},{0x2300CE5FL},{0x2300CE5FL},{0x2300CE5FL},{0x2300CE5FL}}, // p_2211->g_1310
        {0x45FEDD0AL}, // p_2211->g_1352
        1L, // p_2211->g_1390
        0L, // p_2211->g_1402
        {0x35EBE162L}, // p_2211->g_1417
        (void*)0, // p_2211->g_1423
        {{{&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423},{&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423},{&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423},{&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423},{&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423},{&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423},{&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423},{&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423}},{{&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423},{&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423},{&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423},{&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423},{&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423},{&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423},{&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423},{&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423}},{{&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423},{&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423},{&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423},{&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423},{&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423},{&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423},{&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423},{&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423,&p_2211->g_1423}}}, // p_2211->g_1422
        &p_2211->g_1423, // p_2211->g_1424
        {{{{1L},{1L},{-10L},{-10L},{-1L},{-10L},{-10L},{1L},{1L}},{{1L},{1L},{-10L},{-10L},{-1L},{-10L},{-10L},{1L},{1L}},{{1L},{1L},{-10L},{-10L},{-1L},{-10L},{-10L},{1L},{1L}},{{1L},{1L},{-10L},{-10L},{-1L},{-10L},{-10L},{1L},{1L}},{{1L},{1L},{-10L},{-10L},{-1L},{-10L},{-10L},{1L},{1L}}},{{{1L},{1L},{-10L},{-10L},{-1L},{-10L},{-10L},{1L},{1L}},{{1L},{1L},{-10L},{-10L},{-1L},{-10L},{-10L},{1L},{1L}},{{1L},{1L},{-10L},{-10L},{-1L},{-10L},{-10L},{1L},{1L}},{{1L},{1L},{-10L},{-10L},{-1L},{-10L},{-10L},{1L},{1L}},{{1L},{1L},{-10L},{-10L},{-1L},{-10L},{-10L},{1L},{1L}}},{{{1L},{1L},{-10L},{-10L},{-1L},{-10L},{-10L},{1L},{1L}},{{1L},{1L},{-10L},{-10L},{-1L},{-10L},{-10L},{1L},{1L}},{{1L},{1L},{-10L},{-10L},{-1L},{-10L},{-10L},{1L},{1L}},{{1L},{1L},{-10L},{-10L},{-1L},{-10L},{-10L},{1L},{1L}},{{1L},{1L},{-10L},{-10L},{-1L},{-10L},{-10L},{1L},{1L}}}}, // p_2211->g_1450
        &p_2211->g_851, // p_2211->g_1462
        &p_2211->g_159, // p_2211->g_1495
        {0x61AF21A0L,0UL}, // p_2211->g_1500
        &p_2211->g_396, // p_2211->g_1539
        {8L,0UL}, // p_2211->g_1577
        {{{0x04D28EE4L},{0x6A75EC80L},{1L},{0x6A75EC80L},{0x04D28EE4L}},{{0x04D28EE4L},{0x6A75EC80L},{1L},{0x6A75EC80L},{0x04D28EE4L}},{{0x04D28EE4L},{0x6A75EC80L},{1L},{0x6A75EC80L},{0x04D28EE4L}},{{0x04D28EE4L},{0x6A75EC80L},{1L},{0x6A75EC80L},{0x04D28EE4L}},{{0x04D28EE4L},{0x6A75EC80L},{1L},{0x6A75EC80L},{0x04D28EE4L}},{{0x04D28EE4L},{0x6A75EC80L},{1L},{0x6A75EC80L},{0x04D28EE4L}},{{0x04D28EE4L},{0x6A75EC80L},{1L},{0x6A75EC80L},{0x04D28EE4L}}}, // p_2211->g_1586
        (-9L), // p_2211->g_1619
        {0x6C0DAE3DL}, // p_2211->g_1648
        {1L}, // p_2211->g_1652
        {{{0x308E5F45L},{0x162762ECL},{0x162762ECL},{0x308E5F45L},{-1L}},{{0x308E5F45L},{0x162762ECL},{0x162762ECL},{0x308E5F45L},{-1L}},{{0x308E5F45L},{0x162762ECL},{0x162762ECL},{0x308E5F45L},{-1L}},{{0x308E5F45L},{0x162762ECL},{0x162762ECL},{0x308E5F45L},{-1L}},{{0x308E5F45L},{0x162762ECL},{0x162762ECL},{0x308E5F45L},{-1L}},{{0x308E5F45L},{0x162762ECL},{0x162762ECL},{0x308E5F45L},{-1L}},{{0x308E5F45L},{0x162762ECL},{0x162762ECL},{0x308E5F45L},{-1L}},{{0x308E5F45L},{0x162762ECL},{0x162762ECL},{0x308E5F45L},{-1L}},{{0x308E5F45L},{0x162762ECL},{0x162762ECL},{0x308E5F45L},{-1L}},{{0x308E5F45L},{0x162762ECL},{0x162762ECL},{0x308E5F45L},{-1L}}}, // p_2211->g_1668
        (-1L), // p_2211->g_1701
        (void*)0, // p_2211->g_1702
        &p_2211->g_1169, // p_2211->g_1703
        &p_2211->g_1390, // p_2211->g_1755
        &p_2211->g_1755, // p_2211->g_1754
        {-1L}, // p_2211->g_1759
        {0x1E31544AL,9UL}, // p_2211->g_1781
        (void*)0, // p_2211->g_1782
        (void*)0, // p_2211->g_1783
        &p_2211->g_525, // p_2211->g_1790
        0x704BL, // p_2211->g_1797
        &p_2211->g_434, // p_2211->g_1824
        {0x2161035AL,7UL}, // p_2211->g_1834
        &p_2211->g_222[1][0], // p_2211->g_1883
        (void*)0, // p_2211->g_1888
        &p_2211->g_1888, // p_2211->g_1887
        {{&p_2211->g_1887,&p_2211->g_1887,(void*)0,&p_2211->g_1887,&p_2211->g_1887,&p_2211->g_1887},{&p_2211->g_1887,&p_2211->g_1887,(void*)0,&p_2211->g_1887,&p_2211->g_1887,&p_2211->g_1887},{&p_2211->g_1887,&p_2211->g_1887,(void*)0,&p_2211->g_1887,&p_2211->g_1887,&p_2211->g_1887},{&p_2211->g_1887,&p_2211->g_1887,(void*)0,&p_2211->g_1887,&p_2211->g_1887,&p_2211->g_1887},{&p_2211->g_1887,&p_2211->g_1887,(void*)0,&p_2211->g_1887,&p_2211->g_1887,&p_2211->g_1887},{&p_2211->g_1887,&p_2211->g_1887,(void*)0,&p_2211->g_1887,&p_2211->g_1887,&p_2211->g_1887},{&p_2211->g_1887,&p_2211->g_1887,(void*)0,&p_2211->g_1887,&p_2211->g_1887,&p_2211->g_1887},{&p_2211->g_1887,&p_2211->g_1887,(void*)0,&p_2211->g_1887,&p_2211->g_1887,&p_2211->g_1887},{&p_2211->g_1887,&p_2211->g_1887,(void*)0,&p_2211->g_1887,&p_2211->g_1887,&p_2211->g_1887},{&p_2211->g_1887,&p_2211->g_1887,(void*)0,&p_2211->g_1887,&p_2211->g_1887,&p_2211->g_1887}}, // p_2211->g_1886
        &p_2211->g_1169, // p_2211->g_1892
        {{{0L,0xE8A4073A25AF53E2L},{0x18C5A011L,0x10A444E25ABEA821L},{0L,0x58073DCF870A4F90L},{0x18C5A011L,0x10A444E25ABEA821L}},{{0L,0xE8A4073A25AF53E2L},{0x18C5A011L,0x10A444E25ABEA821L},{0L,0x58073DCF870A4F90L},{0x18C5A011L,0x10A444E25ABEA821L}},{{0L,0xE8A4073A25AF53E2L},{0x18C5A011L,0x10A444E25ABEA821L},{0L,0x58073DCF870A4F90L},{0x18C5A011L,0x10A444E25ABEA821L}},{{0L,0xE8A4073A25AF53E2L},{0x18C5A011L,0x10A444E25ABEA821L},{0L,0x58073DCF870A4F90L},{0x18C5A011L,0x10A444E25ABEA821L}},{{0L,0xE8A4073A25AF53E2L},{0x18C5A011L,0x10A444E25ABEA821L},{0L,0x58073DCF870A4F90L},{0x18C5A011L,0x10A444E25ABEA821L}},{{0L,0xE8A4073A25AF53E2L},{0x18C5A011L,0x10A444E25ABEA821L},{0L,0x58073DCF870A4F90L},{0x18C5A011L,0x10A444E25ABEA821L}},{{0L,0xE8A4073A25AF53E2L},{0x18C5A011L,0x10A444E25ABEA821L},{0L,0x58073DCF870A4F90L},{0x18C5A011L,0x10A444E25ABEA821L}},{{0L,0xE8A4073A25AF53E2L},{0x18C5A011L,0x10A444E25ABEA821L},{0L,0x58073DCF870A4F90L},{0x18C5A011L,0x10A444E25ABEA821L}},{{0L,0xE8A4073A25AF53E2L},{0x18C5A011L,0x10A444E25ABEA821L},{0L,0x58073DCF870A4F90L},{0x18C5A011L,0x10A444E25ABEA821L}}}, // p_2211->g_1905
        {0x34DDAA81L}, // p_2211->g_1980
        {0x68BCCEE7L}, // p_2211->g_1999
        {0x3F73ACD3L}, // p_2211->g_2002
        5L, // p_2211->g_2023
        {0x31812B2EL,0xDD7A6EA943752735L}, // p_2211->g_2042
        {{0x00BEE009L,6UL},{0x00BEE009L,6UL},{0x00BEE009L,6UL},{0x00BEE009L,6UL},{0x00BEE009L,6UL},{0x00BEE009L,6UL}}, // p_2211->g_2043
        {(-1L),(-1L),(-1L),(-1L),(-1L)}, // p_2211->g_2061
        0xC4L, // p_2211->g_2078
        {{-9L,6UL}}, // p_2211->g_2191
        sequence_input[get_global_id(0)], // p_2211->global_0_offset
        sequence_input[get_global_id(1)], // p_2211->global_1_offset
        sequence_input[get_global_id(2)], // p_2211->global_2_offset
        sequence_input[get_local_id(0)], // p_2211->local_0_offset
        sequence_input[get_local_id(1)], // p_2211->local_1_offset
        sequence_input[get_local_id(2)], // p_2211->local_2_offset
        sequence_input[get_group_id(0)], // p_2211->group_0_offset
        sequence_input[get_group_id(1)], // p_2211->group_1_offset
        sequence_input[get_group_id(2)], // p_2211->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 1)), permutations[0][get_linear_local_id()])), // p_2211->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_2212 = c_2213;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2211);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2211->g_10, "p_2211->g_10", print_hash_value);
    transparent_crc(p_2211->g_34, "p_2211->g_34", print_hash_value);
    transparent_crc(p_2211->g_39, "p_2211->g_39", print_hash_value);
    transparent_crc(p_2211->g_56, "p_2211->g_56", print_hash_value);
    transparent_crc(p_2211->g_83, "p_2211->g_83", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_2211->g_128[i][j][k].f0, "p_2211->g_128[i][j][k].f0", print_hash_value);

            }
        }
    }
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_2211->g_140[i][j], "p_2211->g_140[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2211->g_147, "p_2211->g_147", print_hash_value);
    transparent_crc(p_2211->g_153, "p_2211->g_153", print_hash_value);
    transparent_crc(p_2211->g_154, "p_2211->g_154", print_hash_value);
    transparent_crc(p_2211->g_159, "p_2211->g_159", print_hash_value);
    transparent_crc(p_2211->g_162, "p_2211->g_162", print_hash_value);
    transparent_crc(p_2211->g_169, "p_2211->g_169", print_hash_value);
    transparent_crc(p_2211->g_172, "p_2211->g_172", print_hash_value);
    transparent_crc(p_2211->g_184, "p_2211->g_184", print_hash_value);
    transparent_crc(p_2211->g_223.f0, "p_2211->g_223.f0", print_hash_value);
    transparent_crc(p_2211->g_223.f1, "p_2211->g_223.f1", print_hash_value);
    transparent_crc(p_2211->g_229.f0, "p_2211->g_229.f0", print_hash_value);
    transparent_crc(p_2211->g_229.f1, "p_2211->g_229.f1", print_hash_value);
    transparent_crc(p_2211->g_238.f0, "p_2211->g_238.f0", print_hash_value);
    transparent_crc(p_2211->g_238.f1, "p_2211->g_238.f1", print_hash_value);
    transparent_crc(p_2211->g_240.f0, "p_2211->g_240.f0", print_hash_value);
    transparent_crc(p_2211->g_240.f1, "p_2211->g_240.f1", print_hash_value);
    transparent_crc(p_2211->g_273, "p_2211->g_273", print_hash_value);
    transparent_crc(p_2211->g_275, "p_2211->g_275", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_2211->g_279[i], "p_2211->g_279[i]", print_hash_value);

    }
    transparent_crc(p_2211->g_282, "p_2211->g_282", print_hash_value);
    transparent_crc(p_2211->g_333.f0, "p_2211->g_333.f0", print_hash_value);
    transparent_crc(p_2211->g_333.f1, "p_2211->g_333.f1", print_hash_value);
    transparent_crc(p_2211->g_393, "p_2211->g_393", print_hash_value);
    transparent_crc(p_2211->g_396, "p_2211->g_396", print_hash_value);
    transparent_crc(p_2211->g_412.f0, "p_2211->g_412.f0", print_hash_value);
    transparent_crc(p_2211->g_412.f1, "p_2211->g_412.f1", print_hash_value);
    transparent_crc(p_2211->g_463, "p_2211->g_463", print_hash_value);
    transparent_crc(p_2211->g_490, "p_2211->g_490", print_hash_value);
    transparent_crc(p_2211->g_512, "p_2211->g_512", print_hash_value);
    transparent_crc(p_2211->g_521.f0, "p_2211->g_521.f0", print_hash_value);
    transparent_crc(p_2211->g_521.f1, "p_2211->g_521.f1", print_hash_value);
    transparent_crc(p_2211->g_545, "p_2211->g_545", print_hash_value);
    transparent_crc(p_2211->g_558.f0, "p_2211->g_558.f0", print_hash_value);
    transparent_crc(p_2211->g_558.f1, "p_2211->g_558.f1", print_hash_value);
    transparent_crc(p_2211->g_559.f0, "p_2211->g_559.f0", print_hash_value);
    transparent_crc(p_2211->g_559.f1, "p_2211->g_559.f1", print_hash_value);
    transparent_crc(p_2211->g_562, "p_2211->g_562", print_hash_value);
    transparent_crc(p_2211->g_568, "p_2211->g_568", print_hash_value);
    transparent_crc(p_2211->g_570.f0, "p_2211->g_570.f0", print_hash_value);
    transparent_crc(p_2211->g_570.f1, "p_2211->g_570.f1", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_2211->g_606[i][j][k], "p_2211->g_606[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2211->g_763.f0, "p_2211->g_763.f0", print_hash_value);
    transparent_crc(p_2211->g_793.f0, "p_2211->g_793.f0", print_hash_value);
    transparent_crc(p_2211->g_793.f1, "p_2211->g_793.f1", print_hash_value);
    transparent_crc(p_2211->g_931.f0, "p_2211->g_931.f0", print_hash_value);
    transparent_crc(p_2211->g_931.f1, "p_2211->g_931.f1", print_hash_value);
    transparent_crc(p_2211->g_939.f0, "p_2211->g_939.f0", print_hash_value);
    transparent_crc(p_2211->g_939.f1, "p_2211->g_939.f1", print_hash_value);
    transparent_crc(p_2211->g_980.f0, "p_2211->g_980.f0", print_hash_value);
    transparent_crc(p_2211->g_980.f1, "p_2211->g_980.f1", print_hash_value);
    transparent_crc(p_2211->g_1031.f0, "p_2211->g_1031.f0", print_hash_value);
    transparent_crc(p_2211->g_1215, "p_2211->g_1215", print_hash_value);
    transparent_crc(p_2211->g_1220, "p_2211->g_1220", print_hash_value);
    transparent_crc(p_2211->g_1249, "p_2211->g_1249", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_2211->g_1310[i][j], "p_2211->g_1310[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2211->g_1352.f0, "p_2211->g_1352.f0", print_hash_value);
    transparent_crc(p_2211->g_1390, "p_2211->g_1390", print_hash_value);
    transparent_crc(p_2211->g_1402, "p_2211->g_1402", print_hash_value);
    transparent_crc(p_2211->g_1417.f0, "p_2211->g_1417.f0", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_2211->g_1450[i][j][k].f0, "p_2211->g_1450[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_2211->g_1500.f0, "p_2211->g_1500.f0", print_hash_value);
    transparent_crc(p_2211->g_1500.f1, "p_2211->g_1500.f1", print_hash_value);
    transparent_crc(p_2211->g_1577.f0, "p_2211->g_1577.f0", print_hash_value);
    transparent_crc(p_2211->g_1577.f1, "p_2211->g_1577.f1", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_2211->g_1586[i][j].f0, "p_2211->g_1586[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_2211->g_1619, "p_2211->g_1619", print_hash_value);
    transparent_crc(p_2211->g_1648.f0, "p_2211->g_1648.f0", print_hash_value);
    transparent_crc(p_2211->g_1652.f0, "p_2211->g_1652.f0", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_2211->g_1668[i][j].f0, "p_2211->g_1668[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_2211->g_1701, "p_2211->g_1701", print_hash_value);
    transparent_crc(p_2211->g_1759.f0, "p_2211->g_1759.f0", print_hash_value);
    transparent_crc(p_2211->g_1781.f0, "p_2211->g_1781.f0", print_hash_value);
    transparent_crc(p_2211->g_1781.f1, "p_2211->g_1781.f1", print_hash_value);
    transparent_crc(p_2211->g_1797, "p_2211->g_1797", print_hash_value);
    transparent_crc(p_2211->g_1834.f0, "p_2211->g_1834.f0", print_hash_value);
    transparent_crc(p_2211->g_1834.f1, "p_2211->g_1834.f1", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_2211->g_1905[i][j].f0, "p_2211->g_1905[i][j].f0", print_hash_value);
            transparent_crc(p_2211->g_1905[i][j].f1, "p_2211->g_1905[i][j].f1", print_hash_value);

        }
    }
    transparent_crc(p_2211->g_1980.f0, "p_2211->g_1980.f0", print_hash_value);
    transparent_crc(p_2211->g_1999.f0, "p_2211->g_1999.f0", print_hash_value);
    transparent_crc(p_2211->g_2002.f0, "p_2211->g_2002.f0", print_hash_value);
    transparent_crc(p_2211->g_2023, "p_2211->g_2023", print_hash_value);
    transparent_crc(p_2211->g_2042.f0, "p_2211->g_2042.f0", print_hash_value);
    transparent_crc(p_2211->g_2042.f1, "p_2211->g_2042.f1", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_2211->g_2043[i].f0, "p_2211->g_2043[i].f0", print_hash_value);
        transparent_crc(p_2211->g_2043[i].f1, "p_2211->g_2043[i].f1", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_2211->g_2061[i], "p_2211->g_2061[i]", print_hash_value);

    }
    transparent_crc(p_2211->g_2078, "p_2211->g_2078", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_2211->g_2191[i].f0, "p_2211->g_2191[i].f0", print_hash_value);
        transparent_crc(p_2211->g_2191[i].f1, "p_2211->g_2191[i].f1", print_hash_value);

    }
    transparent_crc(p_2211->l_comm_values[get_linear_local_id()], "p_2211->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_2211->g_comm_values[get_linear_group_id() * 1 + get_linear_local_id()], "p_2211->g_comm_values[get_linear_group_id() * 1 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
