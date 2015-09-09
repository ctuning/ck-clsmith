// ---fake_divergence ---inter_thread_comm -g 47,20,8 -l 1,10,4
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

__constant uint32_t permutations[10][40] = {
{18,19,27,11,15,1,20,2,31,34,7,21,38,10,0,29,23,39,25,4,33,32,17,13,36,35,8,9,28,37,26,5,12,16,3,22,24,6,14,30}, // permutation 0
{6,26,8,4,7,36,16,22,32,20,14,28,39,3,1,33,30,12,27,37,10,15,19,29,5,18,23,38,34,0,13,25,2,17,35,24,11,21,31,9}, // permutation 1
{38,31,4,29,0,33,20,9,15,22,2,12,34,10,37,35,21,13,28,5,19,36,17,3,7,30,39,8,11,18,16,6,26,24,1,27,25,23,14,32}, // permutation 2
{9,11,19,7,13,5,12,6,14,22,27,30,10,33,3,16,31,29,38,32,18,15,23,37,21,0,35,24,36,34,20,39,4,28,2,25,26,8,17,1}, // permutation 3
{39,19,29,14,27,5,3,9,16,11,10,12,13,17,28,24,21,0,33,34,32,20,8,22,35,38,2,25,1,37,7,30,36,4,26,18,15,23,31,6}, // permutation 4
{25,15,6,9,16,35,36,39,19,1,14,31,3,17,21,37,4,30,28,12,33,29,23,32,2,11,8,22,26,18,7,34,0,13,10,5,27,24,38,20}, // permutation 5
{21,39,25,10,2,32,24,35,19,37,6,27,34,33,8,15,30,22,26,28,29,17,1,9,12,20,7,4,16,11,38,36,3,0,13,18,23,14,5,31}, // permutation 6
{16,29,32,30,2,3,12,9,21,1,23,18,5,37,4,19,11,27,36,39,25,22,14,24,33,20,10,15,35,26,31,8,38,34,6,13,7,28,17,0}, // permutation 7
{9,12,14,24,6,28,38,27,11,19,3,7,25,22,39,36,5,31,16,8,23,30,34,10,35,26,17,2,4,15,21,20,33,32,18,29,13,1,0,37}, // permutation 8
{15,31,11,35,13,39,33,38,24,21,30,28,7,8,3,12,23,19,18,29,16,10,37,34,1,2,17,9,25,14,0,20,27,6,32,4,22,5,26,36} // permutation 9
};

// Seed: 93

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint64_t  f0;
};

struct S1 {
    volatile int32_t g_2;
    volatile int32_t g_3[2];
    int32_t g_4;
    int32_t g_7[4];
    uint8_t g_17;
    uint64_t g_31;
    uint64_t g_35[10];
    int32_t g_47;
    int32_t g_49;
    uint32_t g_56[1];
    volatile int32_t g_104;
    int32_t g_105;
    int32_t g_108;
    int32_t g_109[10];
    int8_t g_120;
    int32_t g_123[2];
    uint16_t g_127[1][6];
    int16_t g_133;
    int64_t *g_138;
    volatile int32_t ** volatile g_140;
    volatile int32_t *g_142;
    volatile int32_t ** volatile g_141[10][2][6];
    volatile int32_t ** volatile g_143;
    uint32_t g_160[5];
    uint32_t g_178[1][2][5];
    int32_t g_209;
    uint64_t g_246[1][5];
    uint32_t g_248;
    int32_t *g_262[3][8];
    int32_t g_286;
    uint16_t g_288;
    uint8_t g_296;
    int8_t g_353;
    uint16_t g_434;
    int8_t g_435;
    uint64_t *g_437;
    uint64_t **g_436;
    int8_t *g_449[4][5];
    int8_t **g_448[2];
    int8_t g_504[8];
    volatile struct S0 g_530;
    volatile uint32_t g_561;
    int8_t ***g_599;
    int8_t ****g_598;
    volatile int32_t ** volatile g_602[4];
    volatile int32_t ** volatile g_603;
    uint32_t g_623;
    volatile int32_t ** volatile g_625;
    volatile int32_t ** volatile g_626;
    struct S0 g_637;
    struct S0 * volatile g_646;
    int32_t *g_680;
    int32_t **g_679;
    volatile int32_t ** volatile g_753;
    struct S0 g_801;
    struct S0 * volatile g_800;
    volatile uint32_t g_831;
    uint8_t g_863;
    uint32_t *g_865;
    uint32_t **g_864[3];
    int32_t *g_933[9];
    struct S0 * volatile g_954;
    uint16_t g_981[5][7];
    volatile int32_t ** volatile g_1033;
    int32_t ** volatile g_1078[5][1];
    int32_t ** volatile g_1079;
    struct S0 * volatile g_1091;
    int32_t ** volatile g_1153[7];
    int32_t ** volatile g_1154;
    int32_t ** volatile g_1295[9];
    uint32_t * volatile *g_1302;
    uint32_t * volatile ** volatile g_1301;
    uint32_t * volatile ** volatile * volatile g_1300;
    int8_t **g_1325;
    int8_t *** volatile g_1324;
    int32_t ** volatile g_1346;
    int32_t ** volatile g_1412;
    int32_t ** volatile g_1416;
    uint8_t g_1423[10];
    int16_t g_1447;
    int16_t * volatile g_1446[6][7];
    int16_t * volatile *g_1445;
    int16_t * volatile * volatile *g_1444;
    int32_t ** volatile g_1513;
    volatile int32_t ** volatile g_1515;
    int32_t ** volatile g_1616;
    uint64_t **g_1624[6][4][5];
    uint32_t *** volatile g_1682;
    uint32_t *** volatile *g_1681;
    struct S0 * volatile g_1692;
    struct S0 * volatile g_1717;
    int32_t g_1746;
    struct S0 *g_1839;
    struct S0 **g_1838;
    int32_t ** volatile g_1842[4][1];
    uint32_t *g_1851;
    int32_t ** volatile g_1864;
    volatile int32_t g_1933;
    int32_t ** volatile g_1937;
    int32_t ** volatile g_1939[2][7][3];
    int32_t ** volatile g_1941;
    volatile int32_t g_1950;
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
uint8_t  func_1(struct S1 * p_1955);
int32_t  func_8(uint32_t  p_9, int32_t  p_10, int32_t  p_11, uint16_t  p_12, struct S1 * p_1955);
uint64_t  func_18(uint32_t  p_19, int8_t  p_20, int16_t  p_21, int32_t  p_22, struct S1 * p_1955);
uint32_t  func_23(uint32_t  p_24, struct S1 * p_1955);
int32_t * func_36(uint64_t * p_37, int32_t  p_38, uint32_t  p_39, int32_t  p_40, struct S1 * p_1955);
int8_t  func_50(uint8_t  p_51, int32_t  p_52, int8_t  p_53, int64_t  p_54, int32_t * p_55, struct S1 * p_1955);
uint32_t  func_57(uint32_t  p_58, uint32_t  p_59, int32_t * p_60, uint32_t  p_61, struct S1 * p_1955);
int32_t  func_63(uint16_t  p_64, int16_t  p_65, int32_t * p_66, struct S1 * p_1955);
uint64_t  func_79(uint64_t ** p_80, struct S1 * p_1955);
uint64_t * func_86(uint64_t * p_87, int32_t  p_88, int32_t * p_89, struct S1 * p_1955);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1955->g_4 p_1955->g_2 p_1955->g_7 p_1955->g_209 p_1955->g_1838 p_1955->g_1839 p_1955->g_637
 * writes: p_1955->g_4 p_1955->g_2 p_1955->g_7 p_1955->g_209 p_1955->g_637
 */
uint8_t  func_1(struct S1 * p_1955)
{ /* block id: 4 */
    int16_t l_16 = 8L;
    uint8_t *l_1422 = &p_1955->g_1423[0];
    uint64_t l_1426 = 1UL;
    int32_t l_1684[3];
    int32_t l_1685 = 7L;
    int32_t l_1686 = 2L;
    struct S0 l_1690 = {0x6D6531E38FAF3012L};
    uint32_t l_1716[2];
    int32_t l_1741 = 0x0904716DL;
    int32_t *l_1747 = &p_1955->g_209;
    int32_t *l_1751 = &p_1955->g_109[1];
    uint32_t l_1781[10];
    uint64_t l_1788[1][3];
    int8_t l_1791 = 0x54L;
    uint32_t *l_1819 = &p_1955->g_623;
    uint32_t **l_1818 = &l_1819;
    uint8_t l_1840 = 248UL;
    int8_t ***l_1922 = &p_1955->g_448[0];
    uint32_t l_1924 = 4294967294UL;
    int i, j;
    for (i = 0; i < 3; i++)
        l_1684[i] = 0L;
    for (i = 0; i < 2; i++)
        l_1716[i] = 0xD323380AL;
    for (i = 0; i < 10; i++)
        l_1781[i] = 4294967295UL;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
            l_1788[i][j] = 0x39E56A61EB4A84B3L;
    }
    for (p_1955->g_4 = 0; (p_1955->g_4 > (-3)); --p_1955->g_4)
    { /* block id: 7 */
        int32_t l_29 = 0x4512DC6DL;
        uint64_t *l_34 = &p_1955->g_35[7];
        uint32_t *l_1655[5][7] = {{&p_1955->g_160[3],&p_1955->g_248,&p_1955->g_248,&p_1955->g_160[3],(void*)0,&p_1955->g_248,&p_1955->g_248},{&p_1955->g_160[3],&p_1955->g_248,&p_1955->g_248,&p_1955->g_160[3],(void*)0,&p_1955->g_248,&p_1955->g_248},{&p_1955->g_160[3],&p_1955->g_248,&p_1955->g_248,&p_1955->g_160[3],(void*)0,&p_1955->g_248,&p_1955->g_248},{&p_1955->g_160[3],&p_1955->g_248,&p_1955->g_248,&p_1955->g_160[3],(void*)0,&p_1955->g_248,&p_1955->g_248},{&p_1955->g_160[3],&p_1955->g_248,&p_1955->g_248,&p_1955->g_160[3],(void*)0,&p_1955->g_248,&p_1955->g_248}};
        uint32_t *l_1659 = &p_1955->g_160[2];
        int8_t **l_1687 = &p_1955->g_449[0][4];
        int8_t l_1768 = 0L;
        int8_t l_1789 = 0x36L;
        int32_t l_1792[6];
        int32_t l_1944 = 0x4AA1915BL;
        int16_t l_1945[2][5][7] = {{{0L,5L,1L,1L,0x1567L,1L,0L},{0L,5L,1L,1L,0x1567L,1L,0L},{0L,5L,1L,1L,0x1567L,1L,0L},{0L,5L,1L,1L,0x1567L,1L,0L},{0L,5L,1L,1L,0x1567L,1L,0L}},{{0L,5L,1L,1L,0x1567L,1L,0L},{0L,5L,1L,1L,0x1567L,1L,0L},{0L,5L,1L,1L,0x1567L,1L,0L},{0L,5L,1L,1L,0x1567L,1L,0L},{0L,5L,1L,1L,0x1567L,1L,0L}}};
        int i, j, k;
        for (i = 0; i < 6; i++)
            l_1792[i] = 0x30F23A94L;
        p_1955->g_2 |= (-10L);
        for (p_1955->g_7[0] = 1; (p_1955->g_7[0] >= 0); p_1955->g_7[0] -= 1)
        { /* block id: 11 */
            uint64_t l_13 = 0x2BFBD3AEB59008CFL;
            uint64_t *l_30 = &p_1955->g_31;
            int32_t l_1425[6][4][6] = {{{0x1EF67C2CL,0x663DD4C1L,(-1L),0x54C7A93BL,(-8L),0x1EF67C2CL},{0x1EF67C2CL,0x663DD4C1L,(-1L),0x54C7A93BL,(-8L),0x1EF67C2CL},{0x1EF67C2CL,0x663DD4C1L,(-1L),0x54C7A93BL,(-8L),0x1EF67C2CL},{0x1EF67C2CL,0x663DD4C1L,(-1L),0x54C7A93BL,(-8L),0x1EF67C2CL}},{{0x1EF67C2CL,0x663DD4C1L,(-1L),0x54C7A93BL,(-8L),0x1EF67C2CL},{0x1EF67C2CL,0x663DD4C1L,(-1L),0x54C7A93BL,(-8L),0x1EF67C2CL},{0x1EF67C2CL,0x663DD4C1L,(-1L),0x54C7A93BL,(-8L),0x1EF67C2CL},{0x1EF67C2CL,0x663DD4C1L,(-1L),0x54C7A93BL,(-8L),0x1EF67C2CL}},{{0x1EF67C2CL,0x663DD4C1L,(-1L),0x54C7A93BL,(-8L),0x1EF67C2CL},{0x1EF67C2CL,0x663DD4C1L,(-1L),0x54C7A93BL,(-8L),0x1EF67C2CL},{0x1EF67C2CL,0x663DD4C1L,(-1L),0x54C7A93BL,(-8L),0x1EF67C2CL},{0x1EF67C2CL,0x663DD4C1L,(-1L),0x54C7A93BL,(-8L),0x1EF67C2CL}},{{0x1EF67C2CL,0x663DD4C1L,(-1L),0x54C7A93BL,(-8L),0x1EF67C2CL},{0x1EF67C2CL,0x663DD4C1L,(-1L),0x54C7A93BL,(-8L),0x1EF67C2CL},{0x1EF67C2CL,0x663DD4C1L,(-1L),0x54C7A93BL,(-8L),0x1EF67C2CL},{0x1EF67C2CL,0x663DD4C1L,(-1L),0x54C7A93BL,(-8L),0x1EF67C2CL}},{{0x1EF67C2CL,0x663DD4C1L,(-1L),0x54C7A93BL,(-8L),0x1EF67C2CL},{0x1EF67C2CL,0x663DD4C1L,(-1L),0x54C7A93BL,(-8L),0x1EF67C2CL},{0x1EF67C2CL,0x663DD4C1L,(-1L),0x54C7A93BL,(-8L),0x1EF67C2CL},{0x1EF67C2CL,0x663DD4C1L,(-1L),0x54C7A93BL,(-8L),0x1EF67C2CL}},{{0x1EF67C2CL,0x663DD4C1L,(-1L),0x54C7A93BL,(-8L),0x1EF67C2CL},{0x1EF67C2CL,0x663DD4C1L,(-1L),0x54C7A93BL,(-8L),0x1EF67C2CL},{0x1EF67C2CL,0x663DD4C1L,(-1L),0x54C7A93BL,(-8L),0x1EF67C2CL},{0x1EF67C2CL,0x663DD4C1L,(-1L),0x54C7A93BL,(-8L),0x1EF67C2CL}}};
            uint64_t **l_1626 = &p_1955->g_437;
            int64_t l_1640 = 0x280E1294952E9B94L;
            uint32_t *l_1657[6];
            uint32_t *l_1658 = &p_1955->g_160[1];
            int i, j, k;
            for (i = 0; i < 6; i++)
                l_1657[i] = &p_1955->g_248;
            (1 + 1);
        }
        for (l_29 = 0; (l_29 <= 2); l_29++)
        { /* block id: 864 */
            uint32_t l_1757 = 0x158CAAFBL;
            int32_t l_1769 = 0x0AE1F099L;
            int64_t l_1797[7] = {0x277931FE51B364A1L,0x277931FE51B364A1L,0x277931FE51B364A1L,0x277931FE51B364A1L,0x277931FE51B364A1L,0x277931FE51B364A1L,0x277931FE51B364A1L};
            uint32_t l_1862 = 0UL;
            int32_t l_1869 = 0x628ECEB6L;
            int32_t l_1879 = 0x742E6E8CL;
            int8_t **l_1886 = &p_1955->g_449[0][1];
            uint16_t l_1916 = 0x5ADAL;
            int8_t *****l_1923 = &p_1955->g_598;
            int64_t l_1925 = 0x3F71567920A7713BL;
            uint64_t *l_1930[2];
            int32_t l_1946 = 5L;
            int32_t l_1947 = 0x2A0E64D4L;
            int32_t l_1948 = 0x615C24FBL;
            int32_t l_1949[4];
            int i;
            for (i = 0; i < 2; i++)
                l_1930[i] = &p_1955->g_31;
            for (i = 0; i < 4; i++)
                l_1949[i] = 0x4A533B3DL;
            (*l_1747) |= 0x11488AD3L;
        }
        (*p_1955->g_1839) = (**p_1955->g_1838);
    }
    return (*l_1747);
}


/* ------------------------------------------ */
/* 
 * reads : p_1955->g_133 p_1955->g_1444 p_1955->g_353 p_1955->g_47 p_1955->g_1033 p_1955->g_142 p_1955->g_3 p_1955->g_2 p_1955->g_7 p_1955->g_865 p_1955->g_160 p_1955->g_49 p_1955->g_286 p_1955->g_1513 p_1955->g_626 p_1955->g_1515 p_1955->g_1447 p_1955->g_143 p_1955->g_296 p_1955->g_504 p_1955->g_437 p_1955->g_35 p_1955->g_104 p_1955->g_248 p_1955->g_120 p_1955->g_105 p_1955->g_561 p_1955->g_1423 p_1955->g_178 p_1955->g_435 p_1955->g_1091 p_1955->g_801 p_1955->g_1616 p_1955->g_123 p_1955->g_434 p_1955->g_31
 * writes: p_1955->g_133 p_1955->g_435 p_1955->g_981 p_1955->g_47 p_1955->g_434 p_1955->g_248 p_1955->g_31 p_1955->g_108 p_1955->g_3 p_1955->g_2 p_1955->g_17 p_1955->g_262 p_1955->g_142 p_1955->g_1447 p_1955->g_623 p_1955->g_296 p_1955->g_105 p_1955->g_353 p_1955->g_35 p_1955->g_637 p_1955->g_933
 */
int32_t  func_8(uint32_t  p_9, int32_t  p_10, int32_t  p_11, uint16_t  p_12, struct S1 * p_1955)
{ /* block id: 703 */
    int16_t *l_1443 = &p_1955->g_133;
    int8_t *l_1448 = &p_1955->g_435;
    int32_t l_1449[5][3] = {{0x71940FBEL,0x5EF5A94FL,0x71940FBEL},{0x71940FBEL,0x5EF5A94FL,0x71940FBEL},{0x71940FBEL,0x5EF5A94FL,0x71940FBEL},{0x71940FBEL,0x5EF5A94FL,0x71940FBEL},{0x71940FBEL,0x5EF5A94FL,0x71940FBEL}};
    int8_t l_1450[8];
    uint16_t *l_1451[5][3][4] = {{{&p_1955->g_127[0][3],&p_1955->g_434,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_434,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_434,&p_1955->g_127[0][3],&p_1955->g_127[0][3]}},{{&p_1955->g_127[0][3],&p_1955->g_434,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_434,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_434,&p_1955->g_127[0][3],&p_1955->g_127[0][3]}},{{&p_1955->g_127[0][3],&p_1955->g_434,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_434,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_434,&p_1955->g_127[0][3],&p_1955->g_127[0][3]}},{{&p_1955->g_127[0][3],&p_1955->g_434,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_434,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_434,&p_1955->g_127[0][3],&p_1955->g_127[0][3]}},{{&p_1955->g_127[0][3],&p_1955->g_434,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_434,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_434,&p_1955->g_127[0][3],&p_1955->g_127[0][3]}}};
    int32_t l_1452 = 0x7BEA10DBL;
    int32_t *l_1453 = &p_1955->g_47;
    volatile int64_t l_1521 = (-1L);/* VOLATILE GLOBAL l_1521 */
    int64_t l_1570 = 0x31F98F00D1C51FBCL;
    int i, j, k;
    for (i = 0; i < 8; i++)
        l_1450[i] = 0x60L;
lbl_1517:
    p_11 = (safe_add_func_int64_t_s_s(0x26BB359BCB7078F5L, ((safe_mul_func_int8_t_s_s((safe_mod_func_int32_t_s_s(((*l_1453) &= (l_1452 |= (safe_mod_func_uint16_t_u_u((p_11 > ((safe_rshift_func_int16_t_s_s(0x4183L, 5)) | (p_1955->g_981[4][2] = (p_12 = ((p_9 || (safe_sub_func_int16_t_s_s((safe_mod_func_int32_t_s_s((safe_add_func_int8_t_s_s((((((((*l_1443) |= p_10) < (p_1955->g_1444 == (void*)0)) < ((*l_1448) = p_10)) && ((l_1449[1][0] != 0UL) > p_1955->g_353)) ^ 0UL) || l_1449[0][0]), l_1450[2])), p_9)), l_1450[2]))) && p_12))))), 1L)))), FAKE_DIVERGE(p_1955->global_1_offset, get_global_id(1), 10))), 8UL)) , (*l_1453))));
    for (p_1955->g_434 = 24; (p_1955->g_434 == 60); p_1955->g_434 = safe_add_func_uint64_t_u_u(p_1955->g_434, 2))
    { /* block id: 713 */
        uint32_t *l_1460 = &p_1955->g_178[0][1][3];
        int32_t l_1467 = 0L;
        uint32_t l_1505 = 0x317CD547L;
        uint64_t **l_1516[2];
        struct S0 *l_1558 = &p_1955->g_637;
        struct S0 **l_1557 = &l_1558;
        int32_t ***l_1567 = &p_1955->g_679;
        int32_t l_1606[4][2][10];
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_1516[i] = &p_1955->g_437;
        for (i = 0; i < 4; i++)
        {
            for (j = 0; j < 2; j++)
            {
                for (k = 0; k < 10; k++)
                    l_1606[i][j][k] = 2L;
            }
        }
        for (p_1955->g_248 = 0; (p_1955->g_248 == 52); p_1955->g_248 = safe_add_func_uint16_t_u_u(p_1955->g_248, 3))
        { /* block id: 716 */
            uint32_t **l_1461 = (void*)0;
            uint32_t **l_1462 = &l_1460;
            int32_t l_1468 = 0x32A52A51L;
            int32_t l_1475 = 0x5A24AF44L;
            uint32_t *l_1508 = &p_1955->g_248;
            int16_t **l_1518 = &l_1443;
            int16_t ***l_1519 = (void*)0;
            int16_t ***l_1520 = &l_1518;
            if (((*l_1453) = (((*l_1443) = 0L) == (GROUP_DIVERGE(0, 1) < (safe_add_func_uint64_t_u_u(FAKE_DIVERGE(p_1955->local_1_offset, get_local_id(1), 10), (((*l_1462) = l_1460) == (void*)0)))))))
            { /* block id: 720 */
                int8_t l_1474 = (-9L);
                for (p_1955->g_31 = 0; (p_1955->g_31 != 1); ++p_1955->g_31)
                { /* block id: 723 */
                    uint64_t l_1476 = 0UL;
                    uint32_t *l_1509[1];
                    uint32_t **l_1510 = &l_1509[0];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_1509[i] = &p_1955->g_160[4];
                    if (((**p_1955->g_1033) != (safe_div_func_int64_t_s_s((~(8L == (!p_12))), l_1467))))
                    { /* block id: 724 */
                        int32_t *l_1469 = &p_1955->g_108;
                        int32_t *l_1470 = (void*)0;
                        int32_t *l_1471 = &l_1467;
                        int32_t *l_1472 = &p_1955->g_49;
                        int32_t *l_1473[1];
                        int i;
                        for (i = 0; i < 1; i++)
                            l_1473[i] = &p_1955->g_105;
                        l_1476++;
                        (*p_1955->g_142) ^= ((*l_1469) = (((safe_add_func_int8_t_s_s(((safe_mod_func_uint32_t_u_u(p_12, (safe_mul_func_int16_t_s_s((((safe_sub_func_uint8_t_u_u((((*l_1453) ^ p_9) , (safe_mul_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((safe_add_func_int32_t_s_s((*l_1453), (safe_mod_func_int16_t_s_s(((safe_mod_func_int8_t_s_s(1L, (safe_lshift_func_uint16_t_u_s(p_1955->g_7[0], ((safe_add_func_uint32_t_u_u((safe_add_func_int8_t_s_s(((l_1468 |= 0x4AC349AADF1F6851L) != p_9), p_9)), (*p_1955->g_865))) , (*l_1472)))))) , (*l_1453)), p_1955->g_286)))), p_11)), 0x4F65L))), 0x08L)) < 0x544B6924L) || p_10), 65530UL)))) & 0x7BL), 0x1DL)) < 0L) >= p_9));
                    }
                    else
                    { /* block id: 729 */
                        if (p_10)
                            break;
                        if (p_11)
                            continue;
                        if (l_1468)
                            break;
                        ++l_1505;
                    }
                    (*l_1453) = (((p_10 , l_1508) == (void*)0) & (((*l_1510) = l_1509[0]) == (p_10 , &l_1505)));
                    if (l_1474)
                        break;
                    for (p_1955->g_17 = 0; (p_1955->g_17 > 35); p_1955->g_17 = safe_add_func_int64_t_s_s(p_1955->g_17, 6))
                    { /* block id: 740 */
                        uint8_t l_1514[7] = {247UL,247UL,247UL,247UL,247UL,247UL,247UL};
                        int i;
                        (*p_1955->g_1513) = &p_11;
                        if (l_1514[4])
                            break;
                        (*p_1955->g_1515) = (*p_1955->g_626);
                        (*l_1453) |= ((void*)0 != l_1516[1]);
                    }
                }
                l_1468 |= p_11;
            }
            else
            { /* block id: 748 */
                if (l_1467)
                    break;
                return l_1468;
            }
            if (l_1467)
                break;
            for (p_1955->g_1447 = 0; (p_1955->g_1447 <= 4); p_1955->g_1447 += 1)
            { /* block id: 755 */
                if (p_1955->g_47)
                    goto lbl_1517;
            }
            (*l_1453) = (p_10 | (((*l_1520) = l_1518) == (void*)0));
        }
        (*l_1453) = ((*l_1453) , p_11);
        l_1521 = (**p_1955->g_143);
        for (l_1505 = 0; (l_1505 >= 7); l_1505 = safe_add_func_int8_t_s_s(l_1505, 4))
        { /* block id: 765 */
            struct S0 l_1540 = {18446744073709551606UL};
            uint64_t **l_1568 = (void*)0;
            uint8_t *l_1602 = &p_1955->g_1423[0];
            for (l_1452 = 0; (l_1452 != 22); l_1452 = safe_add_func_uint64_t_u_u(l_1452, 1))
            { /* block id: 768 */
                int8_t *l_1541[7];
                int32_t l_1542 = 0x303716A8L;
                int i;
                for (i = 0; i < 7; i++)
                    l_1541[i] = &l_1450[6];
                if ((safe_mod_func_int32_t_s_s((**p_1955->g_1515), (safe_mod_func_int32_t_s_s((((safe_sub_func_int8_t_s_s((((p_1955->g_623 = (p_1955->g_296 >= (p_12--))) , ((safe_add_func_uint32_t_u_u((safe_mod_func_uint64_t_u_u(1UL, (*l_1453))), 0UL)) , p_1955->g_504[7])) ^ GROUP_DIVERGE(0, 1)), ((((0x79L != (l_1540 , (((((void*)0 != l_1541[2]) && GROUP_DIVERGE(0, 1)) , 0x02769F0EL) != (*l_1453)))) | l_1542) , 0x6E593F13L) ^ l_1540.f0))) || p_11) , p_9), p_10)))))
                { /* block id: 771 */
                    int8_t l_1547[8][9] = {{1L,9L,1L,1L,9L,1L,1L,9L,1L},{1L,9L,1L,1L,9L,1L,1L,9L,1L},{1L,9L,1L,1L,9L,1L,1L,9L,1L},{1L,9L,1L,1L,9L,1L,1L,9L,1L},{1L,9L,1L,1L,9L,1L,1L,9L,1L},{1L,9L,1L,1L,9L,1L,1L,9L,1L},{1L,9L,1L,1L,9L,1L,1L,9L,1L},{1L,9L,1L,1L,9L,1L,1L,9L,1L}};
                    uint8_t *l_1561 = (void*)0;
                    uint8_t *l_1562[2][5] = {{&p_1955->g_863,&p_1955->g_863,&p_1955->g_863,&p_1955->g_863,&p_1955->g_863},{&p_1955->g_863,&p_1955->g_863,&p_1955->g_863,&p_1955->g_863,&p_1955->g_863}};
                    uint64_t **l_1569 = &p_1955->g_437;
                    int32_t *l_1571 = &p_1955->g_105;
                    int i, j;
                    (*l_1571) ^= (safe_sub_func_uint16_t_u_u(((((((l_1568 = (((safe_sub_func_uint16_t_u_u((l_1547[3][3] ^= p_11), ((safe_unary_minus_func_uint32_t_u(0xE98C7DABL)) < (safe_lshift_func_int16_t_s_u((((safe_mul_func_uint16_t_u_u(65535UL, (((safe_sub_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_s(((void*)0 != l_1557), 10)), (safe_add_func_int32_t_s_s(0L, ((((2L | ((p_1955->g_296++) ^ (safe_rshift_func_int16_t_s_u(((((*p_1955->g_437) <= l_1540.f0) , p_1955->g_104) >= p_1955->g_248), p_10)))) == GROUP_DIVERGE(0, 1)) ^ (*l_1453)) & p_11))))) ^ l_1540.f0) >= p_1955->g_120))) , &p_1955->g_679) != l_1567), l_1505))))) <= (-3L)) , &p_1955->g_437)) == l_1569) > (-7L)) <= p_9) > (*l_1453)) ^ l_1570), p_11));
                    for (p_1955->g_353 = 3; (p_1955->g_353 >= 0); p_1955->g_353 -= 1)
                    { /* block id: 778 */
                        int64_t l_1594 = 0x7141B53835144B51L;
                        volatile int32_t **l_1595 = &p_1955->g_142;
                        uint8_t *l_1605 = &p_1955->g_1423[5];
                        int8_t l_1609 = 0x5AL;
                        int i;
                        (*l_1453) = ((*l_1571) = (safe_unary_minus_func_int16_t_s((safe_add_func_uint16_t_u_u((p_10 , (((safe_mod_func_uint32_t_u_u((*p_1955->g_865), FAKE_DIVERGE(p_1955->global_1_offset, get_global_id(1), 10))) , p_10) && ((safe_sub_func_uint64_t_u_u(((safe_add_func_uint64_t_u_u(((safe_unary_minus_func_int64_t_s((&p_1955->g_863 != &p_1955->g_863))) , (((safe_rshift_func_uint16_t_u_u(((safe_rshift_func_int8_t_s_s((((p_9 | (safe_mod_func_int8_t_s_s(((!GROUP_DIVERGE(0, 1)) <= ((0x05L <= (safe_sub_func_int32_t_s_s((p_1955->g_561 < ((safe_mod_func_int8_t_s_s(l_1594, l_1594)) && p_1955->g_504[1])), p_10))) < p_9)), 0x72L))) >= (*p_1955->g_437)) < l_1505), 6)) & 0x6A7D1A44D72A27D3L), p_11)) == 1UL) ^ 0x3EL)), GROUP_DIVERGE(1, 1))) >= 0x62L), p_1955->g_1423[3])) <= p_10))), 0x75C7L)))));
                        (*l_1595) = (*p_1955->g_626);
                        (**l_1595) ^= (0x39BC762EL < (safe_mod_func_uint8_t_u_u((l_1467 | ((*l_1443) ^= ((safe_div_func_int8_t_s_s(p_12, (safe_div_func_int8_t_s_s(((l_1602 != (((*p_1955->g_437)--) , l_1605)) <= p_1955->g_178[0][1][1]), (((l_1606[2][0][6] ^= (*l_1453)) < (((safe_mul_func_uint16_t_u_u(p_9, GROUP_DIVERGE(2, 1))) != (+p_12)) > l_1542)) , 1UL))))) ^ 0x2310CD74E56F987BL))), l_1609)));
                    }
                    for (p_1955->g_435 = 13; (p_1955->g_435 < (-14)); p_1955->g_435--)
                    { /* block id: 789 */
                        uint64_t l_1612 = 0UL;
                        return l_1612;
                    }
                }
                else
                { /* block id: 792 */
                    return (**p_1955->g_1033);
                }
                (**l_1557) = (*p_1955->g_1091);
            }
        }
    }
    if (p_12)
    { /* block id: 799 */
        int32_t *l_1613[7];
        int32_t **l_1614[8];
        int i;
        for (i = 0; i < 7; i++)
            l_1613[i] = &p_1955->g_123[0];
        for (i = 0; i < 8; i++)
            l_1614[i] = (void*)0;
        l_1453 = l_1613[6];
    }
    else
    { /* block id: 801 */
        int32_t **l_1615 = &p_1955->g_262[0][2];
        (*l_1615) = &l_1449[1][0];
    }
    (*p_1955->g_1616) = &p_11;
    return (*l_1453);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint64_t  func_18(uint32_t  p_19, int8_t  p_20, int16_t  p_21, int32_t  p_22, struct S1 * p_1955)
{ /* block id: 701 */
    int16_t l_1424 = 0x50F9L;
    return l_1424;
}


/* ------------------------------------------ */
/* 
 * reads : p_1955->l_comm_values p_1955->g_31 p_1955->g_7 p_1955->g_35 p_1955->g_comm_values p_1955->g_4 p_1955->g_3 p_1955->g_56 p_1955->g_108 p_1955->g_127 p_1955->g_2 p_1955->g_138 p_1955->g_133 p_1955->g_143 p_1955->g_142 p_1955->g_160 p_1955->g_178 p_1955->g_105 p_1955->g_109 p_1955->g_209 p_1955->g_120 p_1955->g_246 p_1955->g_248 p_1955->g_104 p_1955->g_296 p_1955->g_123 p_1955->g_288 p_1955->g_434 p_1955->g_435 p_1955->g_448 p_1955->g_286 p_1955->g_437 p_1955->g_504 p_1955->g_530 p_1955->g_262 p_1955->g_353 p_1955->g_561 p_1955->g_598 p_1955->g_603 p_1955->g_626 p_1955->g_436 p_1955->g_637 p_1955->g_646 p_1955->g_680 p_1955->g_623 p_1955->g_753 p_1955->g_800 p_1955->g_831 p_1955->g_863 p_1955->g_864 p_1955->g_865 p_1955->g_801 p_1955->g_49 p_1955->g_954 p_1955->g_981 p_1955->g_1033 p_1955->g_1079 p_1955->g_1091 p_1955->g_599 p_1955->g_933 p_1955->g_1154 p_1955->g_47 p_1955->g_1300 p_1955->g_1324 p_1955->g_1346 p_1955->g_1302 p_1955->g_1412 p_1955->g_1416
 * writes: p_1955->g_47 p_1955->g_49 p_1955->g_56 p_1955->g_35 p_1955->g_31 p_1955->g_3 p_1955->g_105 p_1955->g_108 p_1955->g_109 p_1955->g_123 p_1955->g_120 p_1955->g_127 p_1955->g_133 p_1955->g_142 p_1955->g_160 p_1955->g_178 p_1955->g_2 p_1955->g_209 p_1955->g_248 p_1955->g_262 p_1955->g_286 p_1955->g_288 p_1955->g_296 p_1955->g_353 p_1955->g_comm_values p_1955->g_436 p_1955->g_448 p_1955->g_138 p_1955->g_504 p_1955->g_561 p_1955->g_598 p_1955->g_637 p_1955->g_434 p_1955->g_679 p_1955->g_435 p_1955->g_801 p_1955->g_623 p_1955->g_864 p_1955->g_933 p_1955->g_863 p_1955->g_981 p_1955->l_comm_values p_1955->g_246 p_1955->g_1325 p_1955->g_141
 */
uint32_t  func_23(uint32_t  p_24, struct S1 * p_1955)
{ /* block id: 14 */
    uint64_t *l_41 = &p_1955->g_35[5];
    uint64_t **l_42 = &l_41;
    int32_t *l_45 = (void*)0;
    int32_t *l_46 = &p_1955->g_47;
    int32_t *l_48 = &p_1955->g_49;
    uint64_t *l_62 = &p_1955->g_35[7];
    uint32_t *l_806[7] = {(void*)0,&p_1955->g_623,(void*)0,(void*)0,&p_1955->g_623,(void*)0,(void*)0};
    int32_t l_807 = 0x503049B4L;
    struct S0 l_1155 = {0UL};
    int32_t l_1176 = 0x5802313DL;
    int32_t l_1177 = 0x0D55C7CAL;
    int32_t l_1178 = 0x7B4FDF90L;
    int32_t l_1179 = 0x1178BCE4L;
    int64_t l_1180 = 0L;
    int32_t l_1181 = 0x1844FB8AL;
    int32_t l_1182 = 0L;
    int32_t l_1183 = 0x1BD34F33L;
    int32_t l_1184 = 1L;
    uint64_t l_1191 = 18446744073709551615UL;
    int32_t l_1319[2];
    uint32_t l_1320 = 0x4629DA1DL;
    uint32_t l_1326 = 4294967289UL;
    uint32_t l_1409 = 0UL;
    struct S0 l_1414 = {0xFB759E09F45C1206L};
    int i;
    for (i = 0; i < 2; i++)
        l_1319[i] = 0x7FEA66C1L;
    (*p_1955->g_1154) = func_36(((*l_42) = l_41), ((*l_48) = ((*l_46) = (safe_mul_func_int8_t_s_s(p_1955->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1955->tid, 40))], FAKE_DIVERGE(p_1955->group_2_offset, get_group_id(2), 10))))), (p_1955->g_623 = (p_1955->g_178[0][1][1] = ((((func_50(p_24, (((p_1955->g_56[0] = 0x38L) < p_1955->g_31) , (func_57(p_1955->g_7[0], p_24, ((l_62 == &p_1955->g_35[7]) , &p_1955->g_7[2]), p_24, p_1955) >= GROUP_DIVERGE(2, 1))), p_1955->g_comm_values[p_1955->tid], p_1955->g_246[0][1], l_45, p_1955) >= 0x75L) || (-10L)) , l_46) == l_48))), l_807, p_1955);
    if ((*l_48))
    { /* block id: 572 */
        uint64_t *l_1161 = (void*)0;
        int32_t l_1164[9] = {3L,0x541A850CL,3L,3L,0x541A850CL,3L,3L,0x541A850CL,3L};
        uint64_t l_1165 = 0UL;
        uint64_t *l_1167[5][7] = {{&p_1955->g_246[0][3],&p_1955->g_31,&p_1955->g_246[0][3],(void*)0,&p_1955->g_31,(void*)0,&p_1955->g_246[0][3]},{&p_1955->g_246[0][3],&p_1955->g_31,&p_1955->g_246[0][3],(void*)0,&p_1955->g_31,(void*)0,&p_1955->g_246[0][3]},{&p_1955->g_246[0][3],&p_1955->g_31,&p_1955->g_246[0][3],(void*)0,&p_1955->g_31,(void*)0,&p_1955->g_246[0][3]},{&p_1955->g_246[0][3],&p_1955->g_31,&p_1955->g_246[0][3],(void*)0,&p_1955->g_31,(void*)0,&p_1955->g_246[0][3]},{&p_1955->g_246[0][3],&p_1955->g_31,&p_1955->g_246[0][3],(void*)0,&p_1955->g_31,(void*)0,&p_1955->g_246[0][3]}};
        uint64_t l_1243 = 0x1706D0B765DA9ACDL;
        int i, j;
lbl_1294:
        (*p_1955->g_646) = l_1155;
        for (p_1955->g_209 = (-26); (p_1955->g_209 != (-30)); p_1955->g_209 = safe_sub_func_int16_t_s_s(p_1955->g_209, 6))
        { /* block id: 576 */
            uint64_t *l_1160 = &l_1155.f0;
            int32_t l_1174 = 1L;
            int32_t l_1175[6];
            uint8_t l_1185 = 0xD5L;
            int8_t l_1235 = 0x2AL;
            uint32_t *l_1284 = &p_1955->g_160[0];
            int32_t *l_1297 = &l_1184;
            int i;
            for (i = 0; i < 6; i++)
                l_1175[i] = 0L;
            for (l_1155.f0 = (-23); (l_1155.f0 < 39); l_1155.f0++)
            { /* block id: 579 */
                int32_t **l_1166 = &l_48;
                int32_t *l_1168 = &p_1955->g_109[8];
                int32_t *l_1169 = (void*)0;
                int32_t *l_1170 = &p_1955->g_109[1];
                int32_t *l_1171 = &l_1164[7];
                int32_t *l_1172 = &p_1955->g_109[6];
                int32_t *l_1173[7] = {&p_1955->g_123[0],&p_1955->g_109[8],&p_1955->g_123[0],&p_1955->g_123[0],&p_1955->g_109[8],&p_1955->g_123[0],&p_1955->g_123[0]};
                int32_t **l_1188 = &p_1955->g_262[1][5];
                int8_t ****l_1218 = &p_1955->g_599;
                uint64_t *l_1220 = &l_1155.f0;
                int32_t l_1221 = (-1L);
                int i;
                (*l_1166) = (*l_1166);
                ++l_1185;
                (*l_1188) = ((*l_1166) = (*l_1166));
                for (p_1955->g_435 = 29; (p_1955->g_435 < 26); --p_1955->g_435)
                { /* block id: 590 */
                    uint32_t l_1208 = 0x71C73DBEL;
                    uint16_t *l_1209[4][7][8] = {{{&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6],&p_1955->g_434,&p_1955->g_981[4][2],&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6]},{&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6],&p_1955->g_434,&p_1955->g_981[4][2],&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6]},{&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6],&p_1955->g_434,&p_1955->g_981[4][2],&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6]},{&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6],&p_1955->g_434,&p_1955->g_981[4][2],&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6]},{&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6],&p_1955->g_434,&p_1955->g_981[4][2],&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6]},{&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6],&p_1955->g_434,&p_1955->g_981[4][2],&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6]},{&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6],&p_1955->g_434,&p_1955->g_981[4][2],&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6]}},{{&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6],&p_1955->g_434,&p_1955->g_981[4][2],&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6]},{&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6],&p_1955->g_434,&p_1955->g_981[4][2],&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6]},{&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6],&p_1955->g_434,&p_1955->g_981[4][2],&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6]},{&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6],&p_1955->g_434,&p_1955->g_981[4][2],&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6]},{&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6],&p_1955->g_434,&p_1955->g_981[4][2],&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6]},{&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6],&p_1955->g_434,&p_1955->g_981[4][2],&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6]},{&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6],&p_1955->g_434,&p_1955->g_981[4][2],&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6]}},{{&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6],&p_1955->g_434,&p_1955->g_981[4][2],&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6]},{&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6],&p_1955->g_434,&p_1955->g_981[4][2],&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6]},{&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6],&p_1955->g_434,&p_1955->g_981[4][2],&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6]},{&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6],&p_1955->g_434,&p_1955->g_981[4][2],&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6]},{&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6],&p_1955->g_434,&p_1955->g_981[4][2],&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6]},{&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6],&p_1955->g_434,&p_1955->g_981[4][2],&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6]},{&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6],&p_1955->g_434,&p_1955->g_981[4][2],&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6]}},{{&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6],&p_1955->g_434,&p_1955->g_981[4][2],&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6]},{&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6],&p_1955->g_434,&p_1955->g_981[4][2],&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6]},{&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6],&p_1955->g_434,&p_1955->g_981[4][2],&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6]},{&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6],&p_1955->g_434,&p_1955->g_981[4][2],&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6]},{&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6],&p_1955->g_434,&p_1955->g_981[4][2],&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6]},{&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6],&p_1955->g_434,&p_1955->g_981[4][2],&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6]},{&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6],&p_1955->g_434,&p_1955->g_981[4][2],&p_1955->g_981[4][2],&p_1955->g_434,&p_1955->g_981[4][6]}}};
                    int64_t **l_1219 = &p_1955->g_138;
                    int16_t l_1230 = (-1L);
                    uint64_t *l_1231 = &p_1955->g_35[9];
                    int32_t l_1234 = 9L;
                    int32_t l_1238 = 0x7038984CL;
                    int32_t l_1239[5][10] = {{(-1L),0x2C427D84L,0x2C427D84L,(-1L),(-1L),0x2C427D84L,0x2C427D84L,(-1L),(-1L),0x2C427D84L},{(-1L),0x2C427D84L,0x2C427D84L,(-1L),(-1L),0x2C427D84L,0x2C427D84L,(-1L),(-1L),0x2C427D84L},{(-1L),0x2C427D84L,0x2C427D84L,(-1L),(-1L),0x2C427D84L,0x2C427D84L,(-1L),(-1L),0x2C427D84L},{(-1L),0x2C427D84L,0x2C427D84L,(-1L),(-1L),0x2C427D84L,0x2C427D84L,(-1L),(-1L),0x2C427D84L},{(-1L),0x2C427D84L,0x2C427D84L,(-1L),(-1L),0x2C427D84L,0x2C427D84L,(-1L),(-1L),0x2C427D84L}};
                    int i, j, k;
                    l_1191--;
                    (*l_1166) = &l_1164[1];
                    (*l_1170) |= (((*l_1219) = (void*)0) == (((((l_1220 != (((l_1221 = (0x795579A5FB22913DL > (*p_1955->g_437))) , (+((l_1175[1] = (18446744073709551615UL & (~((((safe_sub_func_int32_t_s_s((~(safe_sub_func_uint64_t_u_u(((*l_41) = p_24), (safe_mod_func_uint16_t_u_u((!(safe_add_func_int16_t_s_s((p_24 < 0xA8805FDF63C5D380L), 0L))), p_1955->g_288))))), l_1208)) != l_1230) , p_24) <= (*p_1955->g_865))))) , (-1L)))) , l_1231)) != FAKE_DIVERGE(p_1955->local_1_offset, get_local_id(1), 10)) <= 0x0332A13AL) >= p_24) , (void*)0));
                    for (l_1230 = 17; (l_1230 > 26); ++l_1230)
                    { /* block id: 601 */
                        int32_t l_1236 = 0x31D73F55L;
                        int32_t l_1237 = 1L;
                        int32_t l_1240 = 2L;
                        int32_t l_1241 = 1L;
                        int32_t l_1242 = 0x1708B10EL;
                        --l_1243;
                    }
                }
            }
            for (l_1235 = (-27); (l_1235 >= 21); l_1235++)
            { /* block id: 608 */
                int16_t *l_1282 = &p_1955->g_133;
                uint8_t *l_1283 = &p_1955->g_863;
                int32_t l_1285 = 0x537F6E64L;
                if ((((safe_mod_func_int64_t_s_s(((safe_mul_func_uint8_t_u_u((safe_div_func_uint32_t_u_u(4UL, 0x3A477647L)), (safe_mod_func_int8_t_s_s((safe_mod_func_uint64_t_u_u(((*l_62) = ((safe_mod_func_int16_t_s_s(((safe_rshift_func_uint16_t_u_s((GROUP_DIVERGE(1, 1) > (((safe_div_func_uint8_t_u_u((safe_sub_func_int16_t_s_s(p_1955->g_56[0], (+((safe_add_func_uint32_t_u_u(l_1243, (p_24 == (*l_48)))) , (((safe_unary_minus_func_int8_t_s(((safe_mul_func_int8_t_s_s((safe_mul_func_uint16_t_u_u((p_1955->g_160[4] | (((safe_mul_func_uint8_t_u_u(((*l_1283) = (safe_unary_minus_func_int64_t_s((~((safe_add_func_uint64_t_u_u((safe_add_func_int16_t_s_s(p_1955->g_120, ((*l_1282) = ((+p_1955->g_246[0][2]) != 1UL)))), 9UL)) >= 0xEAL))))), l_1164[3])) , l_1165) >= p_24)), p_1955->g_3[1])), p_24)) != (*l_48)))) > 0x416C6362L) ^ 0x4C09A790206C2294L))))), 0x66L)) , (void*)0) == l_1284)), 4)) , l_1285), 0x0D28L)) != 0x74D4E53284653544L)), l_1285)), 255UL)))) >= 0UL), p_24)) == p_24) , p_24))
                { /* block id: 612 */
                    uint32_t l_1290[8][10] = {{0UL,0x13D9B236L,0x942D6E7CL,4294967295UL,0x13D9B236L,4294967295UL,0x942D6E7CL,0x13D9B236L,0UL,0UL},{0UL,0x13D9B236L,0x942D6E7CL,4294967295UL,0x13D9B236L,4294967295UL,0x942D6E7CL,0x13D9B236L,0UL,0UL},{0UL,0x13D9B236L,0x942D6E7CL,4294967295UL,0x13D9B236L,4294967295UL,0x942D6E7CL,0x13D9B236L,0UL,0UL},{0UL,0x13D9B236L,0x942D6E7CL,4294967295UL,0x13D9B236L,4294967295UL,0x942D6E7CL,0x13D9B236L,0UL,0UL},{0UL,0x13D9B236L,0x942D6E7CL,4294967295UL,0x13D9B236L,4294967295UL,0x942D6E7CL,0x13D9B236L,0UL,0UL},{0UL,0x13D9B236L,0x942D6E7CL,4294967295UL,0x13D9B236L,4294967295UL,0x942D6E7CL,0x13D9B236L,0UL,0UL},{0UL,0x13D9B236L,0x942D6E7CL,4294967295UL,0x13D9B236L,4294967295UL,0x942D6E7CL,0x13D9B236L,0UL,0UL},{0UL,0x13D9B236L,0x942D6E7CL,4294967295UL,0x13D9B236L,4294967295UL,0x942D6E7CL,0x13D9B236L,0UL,0UL}};
                    int32_t **l_1296[9][10][2];
                    int i, j, k;
                    for (i = 0; i < 9; i++)
                    {
                        for (j = 0; j < 10; j++)
                        {
                            for (k = 0; k < 2; k++)
                                l_1296[i][j][k] = &l_45;
                        }
                    }
                    for (p_1955->g_286 = 0; (p_1955->g_286 > 6); ++p_1955->g_286)
                    { /* block id: 615 */
                        int32_t *l_1288 = (void*)0;
                        int32_t *l_1289[6] = {&l_1176,(void*)0,&l_1176,&l_1176,(void*)0,&l_1176};
                        int32_t **l_1293 = &l_1289[0];
                        int i;
                        (*l_46) |= p_24;
                        l_1290[1][8]++;
                        (*l_1293) = l_1289[0];
                        if (p_1955->g_353)
                            goto lbl_1294;
                    }
                    l_1297 = &l_1174;
                }
                else
                { /* block id: 622 */
                    uint32_t ***l_1299 = &p_1955->g_864[0];
                    uint32_t ****l_1298 = &l_1299;
                    if (((l_1298 == p_1955->g_1300) || (l_1155 , (!(-4L)))))
                    { /* block id: 623 */
                        uint16_t l_1303 = 0xC586L;
                        --l_1303;
                    }
                    else
                    { /* block id: 625 */
                        uint16_t l_1306 = 65534UL;
                        if ((*l_1297))
                            break;
                        return l_1306;
                    }
                }
            }
        }
    }
    else
    { /* block id: 632 */
        int64_t l_1307 = 0x5A24ED8B903E2A6DL;
        int32_t *l_1308 = &l_1184;
        int32_t *l_1309 = &l_1184;
        int32_t l_1310 = 0x598578FCL;
        int32_t *l_1311 = &l_1310;
        int32_t *l_1312 = &p_1955->g_49;
        int32_t *l_1313 = (void*)0;
        int32_t *l_1314 = (void*)0;
        int32_t *l_1315 = &p_1955->g_109[8];
        int32_t *l_1316 = &l_1178;
        int32_t *l_1317 = &l_1177;
        int32_t *l_1318[7];
        int8_t **l_1323 = &p_1955->g_449[0][1];
        uint64_t ***l_1345 = &p_1955->g_436;
        int i;
        for (i = 0; i < 7; i++)
            l_1318[i] = &l_1178;
        ++l_1320;
        (*p_1955->g_1324) = ((*p_1955->g_599) = l_1323);
        (*p_1955->g_1346) = &l_1310;
    }
    for (l_1155.f0 = 0; (l_1155.f0 > 47); ++l_1155.f0)
    { /* block id: 640 */
        int32_t l_1381 = 0x07758643L;
        uint32_t l_1382[4][3][4] = {{{0xF993D2A4L,0UL,0x09AA10A4L,4294967289UL},{0xF993D2A4L,0UL,0x09AA10A4L,4294967289UL},{0xF993D2A4L,0UL,0x09AA10A4L,4294967289UL}},{{0xF993D2A4L,0UL,0x09AA10A4L,4294967289UL},{0xF993D2A4L,0UL,0x09AA10A4L,4294967289UL},{0xF993D2A4L,0UL,0x09AA10A4L,4294967289UL}},{{0xF993D2A4L,0UL,0x09AA10A4L,4294967289UL},{0xF993D2A4L,0UL,0x09AA10A4L,4294967289UL},{0xF993D2A4L,0UL,0x09AA10A4L,4294967289UL}},{{0xF993D2A4L,0UL,0x09AA10A4L,4294967289UL},{0xF993D2A4L,0UL,0x09AA10A4L,4294967289UL},{0xF993D2A4L,0UL,0x09AA10A4L,4294967289UL}}};
        int32_t l_1408[7] = {0x05EB930BL,0x05EB930BL,0x05EB930BL,0x05EB930BL,0x05EB930BL,0x05EB930BL,0x05EB930BL};
        int64_t l_1419[5] = {0x5D3368380E579E17L,0x5D3368380E579E17L,0x5D3368380E579E17L,0x5D3368380E579E17L,0x5D3368380E579E17L};
        int i, j, k;
        for (l_1177 = 0; (l_1177 > (-18)); --l_1177)
        { /* block id: 643 */
            uint32_t l_1364 = 0xE39029F8L;
            int32_t l_1402 = 0x5995D2CAL;
            int32_t l_1405 = 0x23048CA8L;
            struct S0 *l_1420 = &l_1414;
            if ((**p_1955->g_143))
            { /* block id: 644 */
                uint8_t l_1384 = 252UL;
                for (l_1182 = (-11); (l_1182 != 21); ++l_1182)
                { /* block id: 647 */
                    int8_t l_1375[9] = {0x29L,0x29L,0x29L,0x29L,0x29L,0x29L,0x29L,0x29L,0x29L};
                    int32_t l_1376 = 0L;
                    uint8_t *l_1383 = &p_1955->g_863;
                    int32_t **l_1385 = &l_46;
                    int i;
                    (1 + 1);
                }
                return (**p_1955->g_1302);
            }
            else
            { /* block id: 664 */
                uint32_t l_1388 = 1UL;
                uint64_t ***l_1393 = &p_1955->g_436;
                int32_t l_1403[6] = {2L,0x7BFAB362L,2L,2L,0x7BFAB362L,2L};
                struct S0 *l_1413[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int32_t *l_1415 = (void*)0;
                int i;
                (*p_1955->g_142) |= (safe_rshift_func_uint16_t_u_s(p_1955->g_127[0][3], ((((l_1388 == (*p_1955->g_437)) == l_1382[3][0][0]) && GROUP_DIVERGE(2, 1)) ^ (l_1364 , (safe_mod_func_uint64_t_u_u((((((&p_1955->g_436 == l_1393) == ((255UL && (safe_rshift_func_int16_t_s_s((((safe_rshift_func_int16_t_s_s(p_1955->g_109[3], 14)) , (void*)0) != &p_1955->g_436), 4))) < l_1382[2][0][2])) , &p_1955->g_800) == (void*)0) < 0x252EEBDF22AD25DFL), FAKE_DIVERGE(p_1955->group_2_offset, get_group_id(2), 10)))))));
                for (l_1364 = 20; (l_1364 >= 4); --l_1364)
                { /* block id: 668 */
                    int32_t l_1404 = 0L;
                    int32_t l_1406 = 1L;
                    int32_t l_1407 = 0x68FDF52BL;
                    for (p_1955->g_435 = 0; (p_1955->g_435 <= 8); p_1955->g_435 += 1)
                    { /* block id: 671 */
                        int32_t *l_1400 = &l_1179;
                        int32_t *l_1401[9] = {&l_1181,&l_1181,&l_1181,&l_1181,&l_1181,&l_1181,&l_1181,&l_1181,&l_1181};
                        int i;
                        l_1409++;
                        (*p_1955->g_1412) = &l_1183;
                    }
                }
                l_1414 = l_1155;
                (*p_1955->g_1416) = l_1415;
            }
            for (p_1955->g_248 = 6; (p_1955->g_248 <= 11); p_1955->g_248 = safe_add_func_uint32_t_u_u(p_1955->g_248, 2))
            { /* block id: 681 */
                (*p_1955->g_1091) = (*p_1955->g_954);
                return l_1419[0];
            }
            (*l_46) ^= l_1381;
            (*l_1420) = (*p_1955->g_800);
        }
    }
    for (l_1191 = 1; (l_1191 <= 8); l_1191 += 1)
    { /* block id: 691 */
        for (p_1955->g_296 = 0; p_1955->g_296 < 10; p_1955->g_296 += 1)
        {
            for (l_1409 = 0; l_1409 < 2; l_1409 += 1)
            {
                for (l_1181 = 0; l_1181 < 6; l_1181 += 1)
                {
                    p_1955->g_141[p_1955->g_296][l_1409][l_1181] = &p_1955->g_142;
                }
            }
        }
        for (p_1955->g_49 = 1; (p_1955->g_49 <= 7); p_1955->g_49 += 1)
        { /* block id: 695 */
            int32_t **l_1421 = &l_48;
            int i;
            p_1955->g_933[p_1955->g_49] = (void*)0;
            (*l_1421) = &l_1178;
        }
    }
    return p_24;
}


/* ------------------------------------------ */
/* 
 * reads : p_1955->g_120 p_1955->g_831 p_1955->g_31 p_1955->g_108 p_1955->g_435 p_1955->g_248 p_1955->g_3 p_1955->g_646 p_1955->g_637 p_1955->g_246 p_1955->g_109 p_1955->g_504 p_1955->g_437 p_1955->g_35 p_1955->l_comm_values p_1955->g_142 p_1955->g_863 p_1955->g_864 p_1955->g_865 p_1955->g_800 p_1955->g_801 p_1955->g_753 p_1955->g_626 p_1955->g_178 p_1955->g_434 p_1955->g_353 p_1955->g_288 p_1955->g_623 p_1955->g_49 p_1955->g_954 p_1955->g_209 p_1955->g_981 p_1955->g_104 p_1955->g_296 p_1955->g_127 p_1955->g_2 p_1955->g_1033 p_1955->g_1079 p_1955->g_1091 p_1955->g_598 p_1955->g_599 p_1955->g_448 p_1955->g_160 p_1955->g_133 p_1955->g_933 p_1955->g_286
 * writes: p_1955->g_133 p_1955->g_31 p_1955->g_248 p_1955->g_434 p_1955->g_3 p_1955->g_109 p_1955->g_2 p_1955->g_864 p_1955->g_160 p_1955->g_801 p_1955->g_353 p_1955->g_142 p_1955->g_35 p_1955->g_262 p_1955->g_933 p_1955->g_863 p_1955->g_49 p_1955->g_981 p_1955->g_296 p_1955->g_138 p_1955->l_comm_values p_1955->g_448 p_1955->g_286 p_1955->g_108 p_1955->g_246
 */
int32_t * func_36(uint64_t * p_37, int32_t  p_38, uint32_t  p_39, int32_t  p_40, struct S1 * p_1955)
{ /* block id: 408 */
    uint32_t l_810[10][2] = {{0x8318FD07L,0x8318FD07L},{0x8318FD07L,0x8318FD07L},{0x8318FD07L,0x8318FD07L},{0x8318FD07L,0x8318FD07L},{0x8318FD07L,0x8318FD07L},{0x8318FD07L,0x8318FD07L},{0x8318FD07L,0x8318FD07L},{0x8318FD07L,0x8318FD07L},{0x8318FD07L,0x8318FD07L},{0x8318FD07L,0x8318FD07L}};
    uint64_t l_832 = 1UL;
    int16_t *l_833 = (void*)0;
    int16_t *l_834[6];
    int32_t l_835 = 1L;
    int16_t l_836 = 0x33E6L;
    struct S0 l_942 = {0xFF243118DFFEB602L};
    uint32_t ***l_951 = &p_1955->g_864[1];
    uint32_t ****l_950 = &l_951;
    int32_t l_1069 = 0x21E8D62EL;
    int32_t l_1072 = 0x0E3EDA15L;
    int32_t l_1073 = 0x7317877CL;
    int32_t l_1074 = 0x2A07B282L;
    int32_t l_1127 = (-7L);
    int32_t *l_1145 = &p_1955->g_108;
    int32_t l_1147[9][5] = {{0x1674CC66L,0x2FC363F1L,0x574D708BL,0x2665360DL,0x2FC363F1L},{0x1674CC66L,0x2FC363F1L,0x574D708BL,0x2665360DL,0x2FC363F1L},{0x1674CC66L,0x2FC363F1L,0x574D708BL,0x2665360DL,0x2FC363F1L},{0x1674CC66L,0x2FC363F1L,0x574D708BL,0x2665360DL,0x2FC363F1L},{0x1674CC66L,0x2FC363F1L,0x574D708BL,0x2665360DL,0x2FC363F1L},{0x1674CC66L,0x2FC363F1L,0x574D708BL,0x2665360DL,0x2FC363F1L},{0x1674CC66L,0x2FC363F1L,0x574D708BL,0x2665360DL,0x2FC363F1L},{0x1674CC66L,0x2FC363F1L,0x574D708BL,0x2665360DL,0x2FC363F1L},{0x1674CC66L,0x2FC363F1L,0x574D708BL,0x2665360DL,0x2FC363F1L}};
    int32_t l_1148[1];
    int8_t l_1149 = 0x12L;
    uint32_t l_1150 = 4294967293UL;
    int i, j;
    for (i = 0; i < 6; i++)
        l_834[i] = &p_1955->g_133;
    for (i = 0; i < 1; i++)
        l_1148[i] = (-1L);
    if ((((((safe_add_func_int8_t_s_s(l_810[0][0], ((safe_rshift_func_uint8_t_u_s((safe_div_func_uint32_t_u_u((((safe_mul_func_int8_t_s_s((!(((safe_div_func_int64_t_s_s((0x2661D949L ^ 4294967294UL), 0x63CDA8E85A81B7ABL)) != l_810[6][1]) > 2L)), (((safe_mul_func_uint16_t_u_u((safe_sub_func_uint16_t_u_u((p_1955->g_120 <= ((safe_mod_func_uint8_t_u_u((((safe_sub_func_int8_t_s_s(0x1BL, (safe_mul_func_uint8_t_u_u((((safe_rshift_func_int16_t_s_u((p_1955->g_133 = (l_835 = (p_1955->g_831 && l_832))), 12)) & l_810[0][0]) & p_38), 0x02L)))) | l_810[5][1]) || l_835), l_810[6][1])) <= l_836)), p_1955->g_31)), p_1955->g_108)) && p_40) & p_38))) || l_836) == 8L), p_1955->g_435)), 0)) , p_40))) && l_832) ^ l_832) , p_39) > l_810[8][1]))
    { /* block id: 411 */
        uint32_t l_837 = 4294967295UL;
        uint32_t *l_838 = &p_1955->g_160[2];
        struct S0 l_841 = {0x33FBC2A64A4B0E88L};
        uint8_t l_853 = 0x82L;
        struct S0 l_946 = {0x23205D05B8E1FC39L};
        int32_t **l_976 = (void*)0;
        int32_t l_978 = 0x0EE94E52L;
        int64_t *l_1013 = (void*)0;
        int32_t l_1061 = 1L;
        int32_t l_1065 = 0L;
        int32_t l_1066 = 0L;
        int32_t l_1067 = 0x6C0D48D8L;
        int32_t l_1068[7] = {1L,4L,1L,1L,4L,1L,1L};
        int8_t *****l_1142 = &p_1955->g_598;
        int i;
lbl_1133:
        if (l_837)
        { /* block id: 412 */
            int8_t l_856 = 0x0CL;
            uint32_t **l_867 = &l_838;
            uint64_t ***l_882 = &p_1955->g_436;
            int32_t l_929[8][7] = {{(-1L),0x073E7B87L,0x073E7B87L,(-1L),(-1L),0x073E7B87L,0x073E7B87L},{(-1L),0x073E7B87L,0x073E7B87L,(-1L),(-1L),0x073E7B87L,0x073E7B87L},{(-1L),0x073E7B87L,0x073E7B87L,(-1L),(-1L),0x073E7B87L,0x073E7B87L},{(-1L),0x073E7B87L,0x073E7B87L,(-1L),(-1L),0x073E7B87L,0x073E7B87L},{(-1L),0x073E7B87L,0x073E7B87L,(-1L),(-1L),0x073E7B87L,0x073E7B87L},{(-1L),0x073E7B87L,0x073E7B87L,(-1L),(-1L),0x073E7B87L,0x073E7B87L},{(-1L),0x073E7B87L,0x073E7B87L,(-1L),(-1L),0x073E7B87L,0x073E7B87L},{(-1L),0x073E7B87L,0x073E7B87L,(-1L),(-1L),0x073E7B87L,0x073E7B87L}};
            int64_t **l_949 = &p_1955->g_138;
            uint32_t ****l_952[2][5] = {{(void*)0,(void*)0,&l_951,(void*)0,(void*)0},{(void*)0,(void*)0,&l_951,(void*)0,(void*)0}};
            int32_t *l_953 = &p_1955->g_49;
            int i, j;
            for (p_1955->g_31 = 0; (p_1955->g_31 <= 1); p_1955->g_31 += 1)
            { /* block id: 415 */
                int8_t l_855 = 0x45L;
                int8_t *l_877 = &p_1955->g_353;
                uint32_t ***l_884[5];
                uint32_t ****l_883 = &l_884[1];
                struct S0 l_945 = {0x57F3361794E36A46L};
                int i;
                for (i = 0; i < 5; i++)
                    l_884[i] = &l_867;
                for (p_1955->g_248 = 0; (p_1955->g_248 <= 0); p_1955->g_248 += 1)
                { /* block id: 418 */
                    int32_t l_844 = 0x2763BC8EL;
                    int32_t *l_861 = (void*)0;
                    int32_t *l_862[1][3];
                    uint32_t ***l_866 = &p_1955->g_864[1];
                    int i, j;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 3; j++)
                            l_862[i][j] = (void*)0;
                    }
                    for (p_1955->g_434 = 0; (p_1955->g_434 <= 0); p_1955->g_434 += 1)
                    { /* block id: 421 */
                        uint32_t *l_840 = &p_1955->g_160[2];
                        uint32_t **l_839 = &l_840;
                        int i;
                        p_1955->g_3[(p_1955->g_248 + 1)] |= (l_838 != ((*l_839) = &p_1955->g_160[2]));
                        l_841 = (*p_1955->g_646);
                    }
                    p_1955->g_109[(p_1955->g_31 + 6)] |= p_1955->g_246[p_1955->g_248][(p_1955->g_248 + 4)];
                    (*p_1955->g_142) = (~(safe_mod_func_int8_t_s_s(p_1955->g_109[(p_1955->g_31 + 8)], ((((((l_844 = 65531UL) || p_39) , (~(p_39 || (safe_mul_func_int8_t_s_s((1UL >= (l_837 != (((safe_mul_func_int16_t_s_s(((safe_sub_func_uint32_t_u_u(((+((safe_mod_func_uint16_t_u_u((l_853 , (safe_unary_minus_func_uint32_t_u(l_855))), 0x30ADL)) < p_1955->g_504[7])) && p_39), l_856)) || (*p_1955->g_437)), p_1955->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1955->tid, 40))])) == 0UL) >= 0L))), p_38))))) , 0xE494FF243C0CCB3AL) == l_855) , GROUP_DIVERGE(2, 1)))));
                    (*p_1955->g_142) = (safe_lshift_func_uint8_t_u_s(p_39, (((((FAKE_DIVERGE(p_1955->global_0_offset, get_global_id(0), 10) < ((safe_lshift_func_uint16_t_u_u((((p_38 = 0x4E8B8109L) ^ p_39) , p_1955->g_863), (((*l_866) = p_1955->g_864[1]) == ((p_40 , (((((*p_1955->g_865) = ((p_40 > (((p_40 != 0x15357FDDL) != 0x84L) != l_855)) == l_855)) <= 4L) , 0x5F84L) == p_1955->g_246[0][3])) , l_867)))) , l_856)) <= 7L) != 1UL) , &p_1955->g_598) == &p_1955->g_598)));
                    for (p_1955->g_133 = 0; (p_1955->g_133 <= 1); p_1955->g_133 += 1)
                    { /* block id: 435 */
                        struct S0 *l_868 = &p_1955->g_801;
                        int i, j, k;
                        (*l_868) = (*p_1955->g_800);
                        (*p_1955->g_142) = 0x3D651084L;
                    }
                }
                p_1955->g_3[p_1955->g_31] = ((safe_rshift_func_int16_t_s_s((safe_lshift_func_uint8_t_u_s((safe_rshift_func_int16_t_s_s(0x6175L, 12)), l_856)), 7)) | (safe_mod_func_int8_t_s_s(((*l_877) = 0x3AL), ((safe_lshift_func_int8_t_s_u((safe_mod_func_int32_t_s_s((((((((void*)0 != l_882) || ((((((*l_883) = &l_867) == &l_867) >= 18446744073709551615UL) | l_855) , 0x6B9B2C799DDFD390L)) & (-1L)) ^ 0UL) , (*p_1955->g_753)) != (void*)0), 3L)), l_856)) , p_38))));
                for (l_855 = 0; (l_855 <= 0); l_855 += 1)
                { /* block id: 445 */
                    uint8_t l_887 = 0x85L;
                    int32_t l_925 = 2L;
                    uint16_t l_926 = 1UL;
                    int32_t l_928 = 0x5A6101A1L;
                    uint32_t ***l_941 = &p_1955->g_864[1];
                    for (p_38 = 0; (p_38 >= 0); p_38 -= 1)
                    { /* block id: 448 */
                        int32_t **l_885 = (void*)0;
                        int32_t *l_886[7];
                        volatile int32_t **l_890 = &p_1955->g_142;
                        uint8_t *l_924[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
                        uint16_t *l_927[3];
                        int i, j, k;
                        for (i = 0; i < 7; i++)
                            l_886[i] = &p_1955->g_47;
                        for (i = 0; i < 3; i++)
                            l_927[i] = &p_1955->g_434;
                        (*p_1955->g_626) = (void*)0;
                        l_887++;
                        (*l_890) = &p_1955->g_3[p_1955->g_31];
                        l_929[3][6] &= (safe_mul_func_uint16_t_u_u(p_1955->g_246[l_855][(l_855 + 1)], (safe_mod_func_int8_t_s_s((safe_div_func_int8_t_s_s(p_1955->g_178[l_855][p_1955->g_31][(p_1955->g_31 + 3)], (safe_mul_func_int8_t_s_s((safe_div_func_uint16_t_u_u(FAKE_DIVERGE(p_1955->local_1_offset, get_local_id(1), 10), ((safe_rshift_func_int8_t_s_s((safe_add_func_int16_t_s_s((safe_lshift_func_int16_t_s_u(((safe_mul_func_uint16_t_u_u(l_853, (l_928 = (safe_div_func_int8_t_s_s(((safe_add_func_int16_t_s_s((safe_sub_func_uint64_t_u_u((((*p_37) = (safe_lshift_func_int16_t_s_s((-3L), (255UL ^ 0xA6L)))) , (safe_unary_minus_func_int64_t_s((+(safe_mod_func_uint64_t_u_u(l_887, (FAKE_DIVERGE(p_1955->group_2_offset, get_group_id(2), 10) | (GROUP_DIVERGE(1, 1) , (((l_925 |= (safe_div_func_uint8_t_u_u((+p_1955->g_434), (+((*l_877) &= (safe_div_func_uint32_t_u_u(p_38, 0x2C374C2FL))))))) <= FAKE_DIVERGE(p_1955->group_0_offset, get_group_id(0), 10)) <= p_39))))))))), l_856)), p_39)) < l_926), 0x76L))))) , 0x26D4L), 3)), p_1955->g_109[8])), p_39)) ^ GROUP_DIVERGE(2, 1)))), 0x38L)))), p_40))));
                    }
                    for (p_38 = 0; (p_38 >= 0); p_38 -= 1)
                    { /* block id: 460 */
                        int32_t **l_930 = &p_1955->g_262[1][5];
                        int32_t *l_932 = &p_1955->g_123[0];
                        int32_t **l_931 = &l_932;
                        uint8_t *l_938 = (void*)0;
                        uint8_t *l_939 = (void*)0;
                        uint8_t *l_940 = &p_1955->g_863;
                        struct S0 *l_943 = (void*)0;
                        struct S0 *l_944[4][10] = {{&l_841,&l_942,&l_841,&p_1955->g_637,&l_841,&l_942,&l_841,&p_1955->g_801,&l_942,&l_942},{&l_841,&l_942,&l_841,&p_1955->g_637,&l_841,&l_942,&l_841,&p_1955->g_801,&l_942,&l_942},{&l_841,&l_942,&l_841,&p_1955->g_637,&l_841,&l_942,&l_841,&p_1955->g_801,&l_942,&l_942},{&l_841,&l_942,&l_841,&p_1955->g_637,&l_841,&l_942,&l_841,&p_1955->g_801,&l_942,&l_942}};
                        int i, j;
                        p_1955->g_933[1] = ((*l_931) = ((*l_930) = &p_1955->g_49));
                        if (p_1955->g_801.f0)
                            goto lbl_1133;
                        (*l_932) = (safe_mul_func_uint8_t_u_u(((~((safe_mul_func_int16_t_s_s(l_837, p_1955->g_288)) , ((((*l_940) = p_1955->g_248) , l_941) == &p_1955->g_864[0]))) == ((l_946 = (l_945 = l_942)) , (safe_mul_func_int16_t_s_s(p_40, ((void*)0 != l_949))))), p_1955->g_623));
                    }
                }
            }
            (*p_1955->g_142) = ((*l_953) |= (l_950 == l_952[0][0]));
        }
        else
        { /* block id: 473 */
            int8_t *l_977[6] = {&p_1955->g_504[4],&p_1955->g_504[3],&p_1955->g_504[4],&p_1955->g_504[4],&p_1955->g_504[3],&p_1955->g_504[4]};
            int64_t l_979[7];
            uint8_t *l_980[10][7] = {{&l_853,&p_1955->g_296,&l_853,&l_853,&p_1955->g_296,&l_853,&l_853},{&l_853,&p_1955->g_296,&l_853,&l_853,&p_1955->g_296,&l_853,&l_853},{&l_853,&p_1955->g_296,&l_853,&l_853,&p_1955->g_296,&l_853,&l_853},{&l_853,&p_1955->g_296,&l_853,&l_853,&p_1955->g_296,&l_853,&l_853},{&l_853,&p_1955->g_296,&l_853,&l_853,&p_1955->g_296,&l_853,&l_853},{&l_853,&p_1955->g_296,&l_853,&l_853,&p_1955->g_296,&l_853,&l_853},{&l_853,&p_1955->g_296,&l_853,&l_853,&p_1955->g_296,&l_853,&l_853},{&l_853,&p_1955->g_296,&l_853,&l_853,&p_1955->g_296,&l_853,&l_853},{&l_853,&p_1955->g_296,&l_853,&l_853,&p_1955->g_296,&l_853,&l_853},{&l_853,&p_1955->g_296,&l_853,&l_853,&p_1955->g_296,&l_853,&l_853}};
            int32_t l_1030 = 0x6A6018BFL;
            int32_t l_1063 = 0x69BB307DL;
            int32_t l_1070[7] = {0x25FA8FA8L,0x25FA8FA8L,0x25FA8FA8L,0x25FA8FA8L,0x25FA8FA8L,0x25FA8FA8L,0x25FA8FA8L};
            int32_t *l_1081 = &l_1069;
            int32_t *l_1084[4][7][2] = {{{&l_1063,&l_1065},{&l_1063,&l_1065},{&l_1063,&l_1065},{&l_1063,&l_1065},{&l_1063,&l_1065},{&l_1063,&l_1065},{&l_1063,&l_1065}},{{&l_1063,&l_1065},{&l_1063,&l_1065},{&l_1063,&l_1065},{&l_1063,&l_1065},{&l_1063,&l_1065},{&l_1063,&l_1065},{&l_1063,&l_1065}},{{&l_1063,&l_1065},{&l_1063,&l_1065},{&l_1063,&l_1065},{&l_1063,&l_1065},{&l_1063,&l_1065},{&l_1063,&l_1065},{&l_1063,&l_1065}},{{&l_1063,&l_1065},{&l_1063,&l_1065},{&l_1063,&l_1065},{&l_1063,&l_1065},{&l_1063,&l_1065},{&l_1063,&l_1065},{&l_1063,&l_1065}}};
            int32_t *l_1085 = (void*)0;
            int i, j, k;
            for (i = 0; i < 7; i++)
                l_979[i] = 0x68D7C000B237524FL;
            (*p_1955->g_954) = l_942;
            for (p_1955->g_49 = 0; (p_1955->g_49 >= (-9)); --p_1955->g_49)
            { /* block id: 477 */
                return &p_1955->g_7[0];
            }
            if ((safe_rshift_func_int16_t_s_u((p_1955->g_981[4][2] = (p_1955->g_133 = (0xA75492ECL & (~((safe_sub_func_int16_t_s_s(((p_1955->g_863 |= (safe_mul_func_uint16_t_u_u((p_38 > 0x55CBL), ((safe_sub_func_uint32_t_u_u(((*l_838) = (safe_div_func_uint16_t_u_u((safe_add_func_uint8_t_u_u((safe_unary_minus_func_uint8_t_u(4UL)), (l_978 |= (((((((p_38 <= p_38) , (FAKE_DIVERGE(p_1955->group_2_offset, get_group_id(2), 10) & (FAKE_DIVERGE(p_1955->group_2_offset, get_group_id(2), 10) | p_39))) <= (((safe_sub_func_int64_t_s_s(2L, ((GROUP_DIVERGE(0, 1) & (safe_sub_func_int32_t_s_s((((void*)0 != l_976) , 0L), p_38))) > p_38))) || 0x28F6F2E1B5BAF173L) >= l_841.f0)) , &p_1955->g_598) == (void*)0) , 0x99B3L) != p_1955->g_109[8])))), p_1955->g_209))), l_979[4])) | l_810[0][0])))) > (-3L)), 7L)) | 0x66D03B0CL))))), p_1955->g_246[0][0])))
            { /* block id: 485 */
                uint32_t l_985 = 4294967290UL;
                int32_t l_1029 = (-1L);
                int32_t l_1064 = 0x20323F78L;
                int32_t l_1071[2][8];
                uint64_t l_1075 = 0xF338980DEDFC3976L;
                int i, j;
                for (i = 0; i < 2; i++)
                {
                    for (j = 0; j < 8; j++)
                        l_1071[i][j] = (-1L);
                }
                for (l_946.f0 = 0; (l_946.f0 < 11); l_946.f0++)
                { /* block id: 488 */
                    int32_t *l_984 = &p_1955->g_109[5];
                    --l_985;
                    if (p_1955->g_108)
                        goto lbl_988;
                }
lbl_988:
                (*p_1955->g_142) = 0x5DF5A313L;
                for (l_832 = 1; (l_832 <= 4); l_832 += 1)
                { /* block id: 495 */
                    struct S0 l_990 = {0x4A80DE41524CE3ADL};
                    int32_t l_1032[3][2][5] = {{{4L,4L,4L,4L,4L},{4L,4L,4L,4L,4L}},{{4L,4L,4L,4L,4L},{4L,4L,4L,4L,4L}},{{4L,4L,4L,4L,4L},{4L,4L,4L,4L,4L}}};
                    int32_t *l_1034 = &p_1955->g_123[0];
                    int32_t *l_1035 = &l_1032[0][1][0];
                    int32_t *l_1036 = &p_1955->g_123[0];
                    int32_t *l_1037 = (void*)0;
                    int32_t *l_1038 = &l_1030;
                    int32_t *l_1039 = &l_1032[1][1][0];
                    int32_t *l_1040 = &l_1032[0][1][1];
                    int32_t *l_1041 = &p_1955->g_123[0];
                    int32_t *l_1042 = (void*)0;
                    int32_t *l_1043 = &l_978;
                    int32_t *l_1044 = &p_1955->g_47;
                    int32_t *l_1045 = &p_1955->g_109[8];
                    int32_t *l_1046 = &l_1032[0][1][0];
                    int32_t *l_1047 = &p_1955->g_109[8];
                    int32_t *l_1048 = (void*)0;
                    int32_t *l_1049 = &p_1955->g_123[1];
                    int32_t *l_1050 = &p_1955->g_47;
                    int32_t *l_1051 = (void*)0;
                    int32_t *l_1052 = &p_1955->g_109[8];
                    int32_t *l_1053 = (void*)0;
                    int32_t *l_1054 = &p_1955->g_49;
                    int32_t *l_1055 = &p_1955->g_105;
                    int32_t *l_1056 = &p_1955->g_109[8];
                    int32_t *l_1057 = &p_1955->g_47;
                    int32_t *l_1058 = (void*)0;
                    int32_t *l_1059 = &p_1955->g_109[8];
                    int32_t *l_1060 = (void*)0;
                    int32_t *l_1062[3];
                    int i, j, k;
                    for (i = 0; i < 3; i++)
                        l_1062[i] = &p_1955->g_49;
                    for (l_841.f0 = 0; (l_841.f0 <= 7); l_841.f0 += 1)
                    { /* block id: 498 */
                        int32_t **l_989 = &p_1955->g_933[1];
                        (*l_989) = &p_38;
                    }
                    for (p_1955->g_296 = 1; (p_1955->g_296 <= 5); p_1955->g_296 += 1)
                    { /* block id: 503 */
                        struct S0 *l_991 = (void*)0;
                        struct S0 l_992[1][8] = {{{0x942D6C1141A38376L},{0x942D6C1141A38376L},{0x942D6C1141A38376L},{0x942D6C1141A38376L},{0x942D6C1141A38376L},{0x942D6C1141A38376L},{0x942D6C1141A38376L},{0x942D6C1141A38376L}}};
                        int64_t **l_1014 = &p_1955->g_138;
                        int64_t *l_1016 = &l_979[0];
                        int64_t **l_1015 = &l_1016;
                        int32_t *l_1031[8] = {&p_1955->g_108,&p_1955->g_108,&p_1955->g_108,&p_1955->g_108,&p_1955->g_108,&p_1955->g_108,&p_1955->g_108,&p_1955->g_108};
                        int i, j;
                        l_992[0][6] = l_990;
                        (*p_1955->g_142) = (l_1032[0][1][0] = ((((safe_add_func_uint64_t_u_u((safe_add_func_uint16_t_u_u(((FAKE_DIVERGE(p_1955->group_0_offset, get_group_id(0), 10) <= (safe_lshift_func_int16_t_s_s((safe_lshift_func_int8_t_s_u((safe_div_func_uint16_t_u_u(p_1955->g_981[l_832][(l_832 + 2)], (safe_sub_func_int32_t_s_s((p_38 = (l_978 , (~(+(safe_div_func_int64_t_s_s((safe_add_func_uint8_t_u_u(l_985, ((safe_rshift_func_uint16_t_u_u(p_1955->g_104, (l_985 < ((((p_1955->g_863--) , ((*l_1014) = l_1013)) == ((*l_1015) = p_1955->g_437)) , ((FAKE_DIVERGE(p_1955->local_1_offset, get_local_id(1), 10) || (safe_sub_func_uint64_t_u_u(l_985, (safe_sub_func_int64_t_s_s(((((safe_div_func_int16_t_s_s((l_1030 = ((!((safe_mul_func_int8_t_s_s((safe_div_func_int64_t_s_s(((safe_mul_func_int8_t_s_s((-3L), p_40)) > 65526UL), p_39)), l_990.f0)) | l_1029)) != p_1955->g_296)), p_38)) , (void*)0) != &p_1955->g_108) , p_1955->g_109[0]), 1L))))) > p_40))))) && (*p_37)))), (*p_37))))))), p_39)))), 7)), 11))) >= p_1955->g_637.f0), 0x21DEL)), l_810[0][0])) ^ p_40) | p_1955->g_127[0][2]) <= p_39));
                        if ((*p_1955->g_142))
                            break;
                        (*p_1955->g_1033) = (*p_1955->g_753);
                    }
                    if (p_40)
                        break;
                    l_1075--;
                    for (l_946.f0 = 0; (l_946.f0 <= 5); l_946.f0 += 1)
                    { /* block id: 519 */
                        int32_t *l_1080 = &l_1069;
                        int32_t *l_1082[8][5] = {{&p_1955->g_4,&p_1955->g_109[8],(void*)0,&p_1955->g_7[0],&l_1065},{&p_1955->g_4,&p_1955->g_109[8],(void*)0,&p_1955->g_7[0],&l_1065},{&p_1955->g_4,&p_1955->g_109[8],(void*)0,&p_1955->g_7[0],&l_1065},{&p_1955->g_4,&p_1955->g_109[8],(void*)0,&p_1955->g_7[0],&l_1065},{&p_1955->g_4,&p_1955->g_109[8],(void*)0,&p_1955->g_7[0],&l_1065},{&p_1955->g_4,&p_1955->g_109[8],(void*)0,&p_1955->g_7[0],&l_1065},{&p_1955->g_4,&p_1955->g_109[8],(void*)0,&p_1955->g_7[0],&l_1065},{&p_1955->g_4,&p_1955->g_109[8],(void*)0,&p_1955->g_7[0],&l_1065}};
                        int32_t *l_1083 = &l_1066;
                        int i, j;
                        (*p_1955->g_1079) = &p_38;
                        return l_1085;
                    }
                }
            }
            else
            { /* block id: 524 */
                uint16_t l_1126 = 3UL;
                for (l_1066 = 0; (l_1066 > 21); ++l_1066)
                { /* block id: 527 */
                    int16_t l_1088 = 1L;
                    int32_t l_1089 = 0x1CA69017L;
                    struct S0 l_1090 = {18446744073709551615UL};
                    uint32_t l_1102[4][6][7] = {{{3UL,0xF6D41470L,0xCE711840L,0xB153989DL,4UL,8UL,4294967295UL},{3UL,0xF6D41470L,0xCE711840L,0xB153989DL,4UL,8UL,4294967295UL},{3UL,0xF6D41470L,0xCE711840L,0xB153989DL,4UL,8UL,4294967295UL},{3UL,0xF6D41470L,0xCE711840L,0xB153989DL,4UL,8UL,4294967295UL},{3UL,0xF6D41470L,0xCE711840L,0xB153989DL,4UL,8UL,4294967295UL},{3UL,0xF6D41470L,0xCE711840L,0xB153989DL,4UL,8UL,4294967295UL}},{{3UL,0xF6D41470L,0xCE711840L,0xB153989DL,4UL,8UL,4294967295UL},{3UL,0xF6D41470L,0xCE711840L,0xB153989DL,4UL,8UL,4294967295UL},{3UL,0xF6D41470L,0xCE711840L,0xB153989DL,4UL,8UL,4294967295UL},{3UL,0xF6D41470L,0xCE711840L,0xB153989DL,4UL,8UL,4294967295UL},{3UL,0xF6D41470L,0xCE711840L,0xB153989DL,4UL,8UL,4294967295UL},{3UL,0xF6D41470L,0xCE711840L,0xB153989DL,4UL,8UL,4294967295UL}},{{3UL,0xF6D41470L,0xCE711840L,0xB153989DL,4UL,8UL,4294967295UL},{3UL,0xF6D41470L,0xCE711840L,0xB153989DL,4UL,8UL,4294967295UL},{3UL,0xF6D41470L,0xCE711840L,0xB153989DL,4UL,8UL,4294967295UL},{3UL,0xF6D41470L,0xCE711840L,0xB153989DL,4UL,8UL,4294967295UL},{3UL,0xF6D41470L,0xCE711840L,0xB153989DL,4UL,8UL,4294967295UL},{3UL,0xF6D41470L,0xCE711840L,0xB153989DL,4UL,8UL,4294967295UL}},{{3UL,0xF6D41470L,0xCE711840L,0xB153989DL,4UL,8UL,4294967295UL},{3UL,0xF6D41470L,0xCE711840L,0xB153989DL,4UL,8UL,4294967295UL},{3UL,0xF6D41470L,0xCE711840L,0xB153989DL,4UL,8UL,4294967295UL},{3UL,0xF6D41470L,0xCE711840L,0xB153989DL,4UL,8UL,4294967295UL},{3UL,0xF6D41470L,0xCE711840L,0xB153989DL,4UL,8UL,4294967295UL},{3UL,0xF6D41470L,0xCE711840L,0xB153989DL,4UL,8UL,4294967295UL}}};
                    int64_t *l_1103 = &l_979[2];
                    int64_t *l_1106 = (void*)0;
                    int64_t *l_1107 = (void*)0;
                    int32_t l_1128 = 0x34CA6452L;
                    uint16_t l_1129 = 1UL;
                    int i, j, k;
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    p_1955->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 40)), permutations[(safe_mod_func_uint32_t_u_u((((-5L) ^ (*l_1081)) | (l_1089 = l_1088)), 10))][(safe_mod_func_uint32_t_u_u(p_1955->tid, 40))]));
                    (*p_1955->g_1091) = l_1090;
                    (*l_1081) = (((safe_lshift_func_uint8_t_u_u(p_39, (safe_div_func_uint64_t_u_u(0xDA13CE7BDCBA4B23L, (safe_rshift_func_uint16_t_u_s((safe_add_func_uint16_t_u_u(65534UL, FAKE_DIVERGE(p_1955->group_2_offset, get_group_id(2), 10))), ((safe_sub_func_int64_t_s_s((p_1955->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1955->tid, 40))] = (!((*l_1103) = l_1102[2][2][2]))), (((((*p_1955->g_599) = (**p_1955->g_598)) == &p_1955->g_449[0][1]) || 0L) , 0x7C83B31E07844E8EL))) != ((l_1067 = (safe_sub_func_uint32_t_u_u(((((((((p_1955->g_801.f0 == l_1068[3]) >= (*p_1955->g_865)) & p_40) < 0L) || 0x618F007CCA411C6FL) == 5UL) == (**p_1955->g_626)) ^ FAKE_DIVERGE(p_1955->group_0_offset, get_group_id(0), 10)), 0x17D570C4L))) <= (*p_37))))))))) == 0x3AF5FD4A5C815795L) == 0x3DL);
                    for (p_1955->g_286 = 0; (p_1955->g_286 < 27); p_1955->g_286 = safe_add_func_uint8_t_u_u(p_1955->g_286, 2))
                    { /* block id: 540 */
                        int32_t l_1123[10] = {0x506C8C01L,0x506C8C01L,0x506C8C01L,0x506C8C01L,0x506C8C01L,0x506C8C01L,0x506C8C01L,0x506C8C01L,0x506C8C01L,0x506C8C01L};
                        int32_t **l_1130[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        struct S0 *l_1131 = (void*)0;
                        struct S0 *l_1132 = &l_946;
                        int i;
                        l_1129 ^= (safe_sub_func_int8_t_s_s(((safe_mod_func_int8_t_s_s((safe_div_func_int64_t_s_s(((((0x33L <= (safe_add_func_int8_t_s_s((-9L), ((((GROUP_DIVERGE(1, 1) , p_1955->g_133) < (((safe_rshift_func_uint8_t_u_u(((0x3481B004A377A6A1L | ((0x84E057AA63573C0AL != (safe_unary_minus_func_int8_t_s(((l_1128 = (((((l_1068[1] > (safe_sub_func_uint64_t_u_u(l_1123[4], p_40))) ^ ((*p_1955->g_437) = (((((safe_sub_func_int32_t_s_s(((l_1072 ^= (((l_978 = (p_1955->g_2 , l_1068[1])) , (void*)0) != &l_1090)) , 0x786825AAL), p_39)) != 0x1FB6166DL) >= l_1126) <= l_836) | 3L))) , 0L) > 0x90FEEB0CBDB45D11L) , l_1127)) || p_38)))) == 0L)) >= 0x6BE49D39FD881B06L), 6)) , 0x0DL) <= 0UL)) , p_1955->g_801.f0) <= GROUP_DIVERGE(0, 1))))) != l_1123[9]) ^ p_38) & l_1126), FAKE_DIVERGE(p_1955->group_2_offset, get_group_id(2), 10))), p_40)) <= l_853), p_38));
                        l_1085 = (void*)0;
                        (*l_1132) = (*p_1955->g_1091);
                    }
                }
            }
        }
        for (l_1067 = (-29); (l_1067 == 8); l_1067 = safe_add_func_int64_t_s_s(l_1067, 1))
        { /* block id: 555 */
            for (p_1955->g_353 = (-21); (p_1955->g_353 > (-15)); p_1955->g_353 = safe_add_func_int16_t_s_s(p_1955->g_353, 2))
            { /* block id: 558 */
                int8_t *****l_1143 = &p_1955->g_598;
                int32_t *l_1144 = &l_1127;
                if (p_39)
                    break;
                p_38 |= ((*l_1144) = (safe_add_func_uint16_t_u_u(((safe_add_func_uint8_t_u_u(FAKE_DIVERGE(p_1955->group_0_offset, get_group_id(0), 10), 0x15L)) <= ((l_1142 = (void*)0) == l_1143)), 65534UL)));
            }
        }
        return l_1145;
    }
    else
    { /* block id: 566 */
        int32_t *l_1146[4] = {&p_1955->g_123[0],&p_1955->g_123[0],&p_1955->g_123[0],&p_1955->g_123[0]};
        int i;
        l_1150++;
        for (p_1955->g_353 = 0; p_1955->g_353 < 1; p_1955->g_353 += 1)
        {
            for (p_1955->g_108 = 0; p_1955->g_108 < 5; p_1955->g_108 += 1)
            {
                p_1955->g_246[p_1955->g_353][p_1955->g_108] = 6UL;
            }
        }
    }
    return (*p_1955->g_1079);
}


/* ------------------------------------------ */
/* 
 * reads : p_1955->g_comm_values p_1955->g_108 p_1955->g_123 p_1955->g_35 p_1955->g_133 p_1955->g_120 p_1955->g_160 p_1955->g_142 p_1955->g_31 p_1955->g_127 p_1955->g_178 p_1955->g_209 p_1955->g_288 p_1955->g_248 p_1955->g_246 p_1955->g_3 p_1955->g_2 p_1955->g_434 p_1955->g_435 p_1955->g_448 p_1955->g_286 p_1955->g_56 p_1955->g_437 p_1955->g_7 p_1955->g_504 p_1955->l_comm_values p_1955->g_530 p_1955->g_262 p_1955->g_353 p_1955->g_561 p_1955->g_104 p_1955->g_598 p_1955->g_143 p_1955->g_603 p_1955->g_626 p_1955->g_436 p_1955->g_637 p_1955->g_4 p_1955->g_646 p_1955->g_680 p_1955->g_623 p_1955->g_105 p_1955->g_753 p_1955->g_109 p_1955->g_800
 * writes: p_1955->g_133 p_1955->g_127 p_1955->g_120 p_1955->g_353 p_1955->g_123 p_1955->g_3 p_1955->g_2 p_1955->g_160 p_1955->g_288 p_1955->g_comm_values p_1955->g_436 p_1955->g_448 p_1955->g_138 p_1955->g_35 p_1955->g_504 p_1955->g_286 p_1955->g_209 p_1955->g_262 p_1955->g_561 p_1955->g_248 p_1955->g_598 p_1955->g_142 p_1955->g_178 p_1955->g_637 p_1955->g_434 p_1955->g_679 p_1955->g_108 p_1955->g_435 p_1955->g_801
 */
int8_t  func_50(uint8_t  p_51, int32_t  p_52, int8_t  p_53, int64_t  p_54, int32_t * p_55, struct S1 * p_1955)
{ /* block id: 129 */
    uint16_t l_315 = 0x0543L;
    int16_t *l_324 = &p_1955->g_133;
    int32_t l_325 = 0x0327DCEDL;
    int32_t *l_363 = (void*)0;
    uint64_t *l_393 = (void*)0;
    int32_t l_394 = 6L;
    int32_t l_397 = 0x3D48EDBFL;
    int32_t l_398 = 0x6D271362L;
    int8_t **l_470 = &p_1955->g_449[3][4];
    int32_t l_486 = 1L;
    int32_t **l_507 = &p_1955->g_262[2][4];
    uint8_t *l_510 = &p_1955->g_296;
    int8_t ***l_513 = &p_1955->g_448[0];
    struct S0 l_519 = {0x1DB47940FB91D7C2L};
    uint8_t l_645[10][8] = {{0xCBL,0xA3L,0x79L,0x23L,0xCBL,247UL,0xA3L,0xAFL},{0xCBL,0xA3L,0x79L,0x23L,0xCBL,247UL,0xA3L,0xAFL},{0xCBL,0xA3L,0x79L,0x23L,0xCBL,247UL,0xA3L,0xAFL},{0xCBL,0xA3L,0x79L,0x23L,0xCBL,247UL,0xA3L,0xAFL},{0xCBL,0xA3L,0x79L,0x23L,0xCBL,247UL,0xA3L,0xAFL},{0xCBL,0xA3L,0x79L,0x23L,0xCBL,247UL,0xA3L,0xAFL},{0xCBL,0xA3L,0x79L,0x23L,0xCBL,247UL,0xA3L,0xAFL},{0xCBL,0xA3L,0x79L,0x23L,0xCBL,247UL,0xA3L,0xAFL},{0xCBL,0xA3L,0x79L,0x23L,0xCBL,247UL,0xA3L,0xAFL},{0xCBL,0xA3L,0x79L,0x23L,0xCBL,247UL,0xA3L,0xAFL}};
    uint8_t l_655[1];
    int32_t l_668 = (-9L);
    int32_t l_669 = 0x54A7C5A1L;
    uint64_t l_722 = 0xABEC357E63ED9EDEL;
    int i, j;
    for (i = 0; i < 1; i++)
        l_655[i] = 1UL;
    if ((((safe_rshift_func_int16_t_s_u(1L, ((safe_lshift_func_uint8_t_u_u((((((safe_rshift_func_uint8_t_u_s((((((0x6D58L != p_1955->g_comm_values[p_1955->tid]) >= p_1955->g_108) == (safe_mod_func_int8_t_s_s(((safe_rshift_func_int16_t_s_u((safe_mul_func_uint8_t_u_u((((safe_sub_func_int32_t_s_s(l_315, (safe_add_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), ((&p_1955->g_120 == (void*)0) || (l_325 = (GROUP_DIVERGE(0, 1) > ((safe_rshift_func_int8_t_s_u((p_1955->g_123[1] && (((*l_324) = (safe_sub_func_int32_t_s_s((safe_mod_func_uint64_t_u_u(p_51, 1L)), p_53))) , 0x75A861F5L)), 5)) || l_315)))))))) >= FAKE_DIVERGE(p_1955->local_0_offset, get_local_id(0), 10)) , p_1955->g_35[6]), l_315)), l_315)) < 0x7219D6A0E19129FBL), l_315))) & p_1955->g_35[7]) , 0x65L), 3)) , p_1955->g_108) < 255UL) && l_325) && GROUP_DIVERGE(1, 1)), 3)) && l_325))) ^ l_315) | 4L))
    { /* block id: 132 */
        uint8_t l_328 = 4UL;
        int16_t **l_331 = &l_324;
        uint16_t *l_340 = &p_1955->g_127[0][1];
        uint8_t l_349[7][8] = {{0x8BL,6UL,0UL,0x8BL,0x4DL,0UL,0UL,0x4DL},{0x8BL,6UL,0UL,0x8BL,0x4DL,0UL,0UL,0x4DL},{0x8BL,6UL,0UL,0x8BL,0x4DL,0UL,0UL,0x4DL},{0x8BL,6UL,0UL,0x8BL,0x4DL,0UL,0UL,0x4DL},{0x8BL,6UL,0UL,0x8BL,0x4DL,0UL,0UL,0x4DL},{0x8BL,6UL,0UL,0x8BL,0x4DL,0UL,0UL,0x4DL},{0x8BL,6UL,0UL,0x8BL,0x4DL,0UL,0UL,0x4DL}};
        int8_t *l_350 = &p_1955->g_120;
        int8_t *l_351 = (void*)0;
        int8_t *l_352 = &p_1955->g_353;
        int32_t *l_354 = &p_1955->g_123[1];
        int32_t *l_362 = (void*)0;
        int32_t **l_361 = &l_362;
        uint64_t *l_371[5];
        uint64_t **l_370 = &l_371[0];
        uint8_t *l_372 = &l_328;
        uint32_t *l_373 = &p_1955->g_160[2];
        uint16_t *l_374 = &p_1955->g_288;
        uint64_t l_395 = 0xFB62C209327271CBL;
        int32_t *l_396[9][4][4] = {{{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]},{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]},{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]},{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]}},{{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]},{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]},{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]},{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]}},{{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]},{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]},{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]},{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]}},{{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]},{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]},{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]},{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]}},{{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]},{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]},{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]},{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]}},{{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]},{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]},{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]},{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]}},{{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]},{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]},{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]},{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]}},{{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]},{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]},{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]},{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]}},{{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]},{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]},{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]},{&p_1955->g_109[8],&p_1955->g_123[0],&l_325,&p_1955->g_123[0]}}};
        uint32_t l_516 = 1UL;
        uint32_t l_536[1][1];
        uint32_t l_552 = 4294967295UL;
        uint64_t l_553 = 0UL;
        int16_t l_560 = 0x70E5L;
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_371[i] = &p_1955->g_35[6];
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 1; j++)
                l_536[i][j] = 4294967289UL;
        }
        l_325 ^= (&p_1955->g_35[6] != (void*)0);
        (*p_1955->g_142) = ((*l_354) = (safe_lshift_func_uint8_t_u_s(((((l_328 == GROUP_DIVERGE(2, 1)) && (safe_add_func_int16_t_s_s((((*l_331) = &p_1955->g_133) == (void*)0), (safe_mod_func_uint8_t_u_u(8UL, (safe_add_func_uint16_t_u_u(((((safe_mod_func_int64_t_s_s(((safe_sub_func_int16_t_s_s(p_54, ((*l_340) = (&p_51 == (void*)0)))) , l_315), ((safe_lshift_func_uint16_t_u_u((((((GROUP_DIVERGE(2, 1) <= ((*l_352) = ((*l_350) |= ((safe_sub_func_uint64_t_u_u((safe_sub_func_int16_t_s_s(((safe_mul_func_int8_t_s_s((l_315 | 7L), l_328)) ^ l_315), l_325)), l_349[4][3])) , p_1955->g_133)))) > p_53) , p_52) || 0x11L) , 7UL), 6)) && 1UL))) <= p_51) , l_325) != l_349[0][4]), p_1955->g_108))))))) || l_328) > p_1955->g_160[3]), 1)));
        (*l_354) = (((safe_lshift_func_uint16_t_u_s(((*l_374) &= (((safe_rshift_func_uint16_t_u_u(((((*l_373) = ((((((+GROUP_DIVERGE(0, 1)) | p_1955->g_31) && (safe_add_func_uint16_t_u_u((*l_354), (&p_52 != (l_363 = ((*l_361) = &p_1955->g_286)))))) , (safe_add_func_uint32_t_u_u((l_315 == (safe_lshift_func_uint8_t_u_u((((~p_1955->g_127[0][3]) <= ((*l_372) = ((p_1955->g_178[0][0][3] >= l_315) < (safe_div_func_int8_t_s_s((((+((void*)0 == l_370)) ^ 0x523CL) >= p_53), p_51))))) && (*l_354)), 0))), l_325))) > p_1955->g_209) ^ p_1955->g_178[0][0][3])) >= 1L) >= 1UL), 4)) , &p_1955->g_133) != (void*)0)), l_315)) , l_340) == (void*)0);
        if (((safe_sub_func_uint16_t_u_u(((*l_374) = (l_325 , (safe_sub_func_uint16_t_u_u((p_1955->g_127[0][4] = (p_1955->g_35[7] || l_325)), (safe_mul_func_int16_t_s_s(((safe_mod_func_int32_t_s_s((((*l_372) = ((&p_1955->g_133 != (void*)0) > p_52)) && ((safe_mod_func_uint32_t_u_u((safe_div_func_int8_t_s_s(((*l_350) = (safe_mod_func_uint64_t_u_u((((l_398 ^= ((*l_354) = (l_397 |= (safe_lshift_func_int16_t_s_s((((safe_lshift_func_int8_t_s_s((+((p_51 > p_1955->g_123[0]) >= (((l_394 &= (((*l_370) = l_393) == (void*)0)) != 3UL) | (*l_354)))), p_53)) , l_395) != 4294967287UL), 10))))) != 0xEFE2CFEDL) < 0x52E092D3DB410359L), p_1955->g_248))), p_52)), p_1955->g_246[0][3])) || p_52)), p_1955->g_3[1])) != p_54), p_54)))))), FAKE_DIVERGE(p_1955->global_2_offset, get_global_id(2), 10))) >= 0xA0DFL))
        { /* block id: 155 */
            int16_t **l_403 = &l_324;
            int32_t l_431[9][3] = {{(-2L),0x22FA2DB4L,0x22FA2DB4L},{(-2L),0x22FA2DB4L,0x22FA2DB4L},{(-2L),0x22FA2DB4L,0x22FA2DB4L},{(-2L),0x22FA2DB4L,0x22FA2DB4L},{(-2L),0x22FA2DB4L,0x22FA2DB4L},{(-2L),0x22FA2DB4L,0x22FA2DB4L},{(-2L),0x22FA2DB4L,0x22FA2DB4L},{(-2L),0x22FA2DB4L,0x22FA2DB4L},{(-2L),0x22FA2DB4L,0x22FA2DB4L}};
            uint32_t *l_432 = &p_1955->g_160[4];
            int64_t *l_433[1][3];
            int16_t l_467 = 0x58EFL;
            int32_t l_471 = 0x51A9CCD3L;
            uint8_t l_487 = 8UL;
            int8_t ***l_514 = &p_1955->g_448[1];
            int i, j;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 3; j++)
                    l_433[i][j] = (void*)0;
            }
            if ((((safe_sub_func_uint16_t_u_u((safe_mul_func_uint64_t_u_u(p_54, (((void*)0 == l_403) < (safe_rshift_func_uint16_t_u_s(((safe_div_func_int16_t_s_s((safe_mul_func_uint16_t_u_u((safe_sub_func_int32_t_s_s((safe_unary_minus_func_uint16_t_u(l_398)), (safe_rshift_func_int16_t_s_s((!((**l_331) = ((p_53 , ((4294967292UL | (l_325 ^= (*p_1955->g_142))) && ((p_1955->g_comm_values[p_1955->tid] = (+(safe_add_func_int64_t_s_s((safe_add_func_uint8_t_u_u(((l_432 = ((safe_mul_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_s((!(safe_mul_func_int16_t_s_s(((((safe_rshift_func_int16_t_s_u((p_1955->g_160[2] , (safe_lshift_func_uint8_t_u_s(((p_1955->g_178[0][0][3] , p_1955->g_248) || (-10L)), l_397))), 6)) >= p_1955->g_246[0][3]) > p_54) | 0x64L), 65527UL))), l_431[6][0])), p_53)) , l_373)) != p_55), p_1955->g_127[0][3])), p_53)))) == 1L))) | p_51))), p_1955->g_434)))), 1L)), p_54)) & p_52), l_431[6][0]))))), (*l_354))) , 0x86L) < p_1955->g_435))
            { /* block id: 160 */
                p_55 = p_55;
            }
            else
            { /* block id: 162 */
                int8_t ***l_450[3];
                int16_t **l_457 = (void*)0;
                int32_t l_458 = 0x44EE3AA8L;
                uint64_t l_468 = 18446744073709551608UL;
                int32_t l_469 = 0x54492AE3L;
                int64_t l_482 = 0x725DF65DA8DEC17CL;
                int64_t **l_485[2];
                uint32_t *l_503 = &p_1955->g_178[0][0][3];
                int i;
                for (i = 0; i < 3; i++)
                    l_450[i] = &p_1955->g_448[0];
                for (i = 0; i < 2; i++)
                    l_485[i] = &l_433[0][1];
                (*l_354) |= (&l_371[2] != (p_1955->g_436 = &l_393));
                l_471 &= (0x55FB2CD8L ^ ((safe_add_func_uint32_t_u_u(((~((safe_mod_func_uint64_t_u_u(GROUP_DIVERGE(1, 1), ((((l_398 = ((safe_sub_func_uint64_t_u_u((safe_lshift_func_int16_t_s_u((((((((safe_mul_func_int16_t_s_s(((p_1955->g_448[0] = p_1955->g_448[0]) == (((((*l_354) = (l_469 &= (safe_lshift_func_uint16_t_u_s((safe_mul_func_uint8_t_u_u(1UL, (safe_add_func_uint64_t_u_u((((((l_457 == &l_324) , (l_458 >= ((((*l_372) = ((*l_354) != (safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), (safe_add_func_int64_t_s_s((safe_add_func_int32_t_s_s((safe_mul_func_int16_t_s_s((0x9AF59C54L && (*p_1955->g_142)), p_1955->g_286)), p_51)), (-6L))))))) >= l_467) , l_468))) , l_468) <= p_1955->g_31) == 0UL), (-1L))))), 14)))) , 1UL) & p_1955->g_160[2]) , l_470)), GROUP_DIVERGE(0, 1))) == p_54) != 0x6C78L) && 0x23L) ^ l_431[6][0]) , FAKE_DIVERGE(p_1955->local_0_offset, get_local_id(0), 10)) & p_52), 0)), p_54)) , 18446744073709551612UL)) < p_53) < l_397) | p_52))) && l_394)) < 7L), p_1955->g_56[0])) != p_1955->g_comm_values[p_1955->tid]));
                if (((((*l_432) = ((((*l_354) = (safe_add_func_int64_t_s_s((safe_sub_func_uint16_t_u_u(0xA850L, (&p_1955->g_286 != ((*l_361) = (void*)0)))), l_394))) == ((safe_sub_func_uint64_t_u_u((p_1955->g_127[0][1] <= (p_1955->g_133 &= 0x72FBL)), (safe_mul_func_uint16_t_u_u(((safe_rshift_func_uint8_t_u_s(l_482, ((((((p_54 || (l_486 = (safe_div_func_uint64_t_u_u(((p_1955->g_138 = l_393) != p_1955->g_437), p_53)))) | (*p_1955->g_437)) , (*p_1955->g_437)) <= p_54) <= l_431[3][1]) && p_1955->g_35[1]))) , p_1955->g_56[0]), l_468)))) , l_469)) , p_1955->g_286)) ^ l_458) ^ 0L))
                { /* block id: 177 */
                    return l_487;
                }
                else
                { /* block id: 179 */
                    int8_t ****l_500 = &l_450[0];
                    (*p_1955->g_142) &= ((p_1955->g_178[0][0][1] && (safe_rshift_func_int16_t_s_u(0x2DABL, 0))) | 0x13F7DEC0CF2E55F8L);
                    p_1955->g_504[7] &= (safe_div_func_int16_t_s_s(0x3E7FL, (safe_rshift_func_int8_t_s_u(8L, (((safe_mul_func_uint8_t_u_u((p_52 & (safe_rshift_func_uint16_t_u_u((safe_lshift_func_int16_t_s_u((l_487 & ((*p_1955->g_437) = (((*l_500) = &p_1955->g_448[0]) == &l_470))), ((~(((*l_373) ^= ((safe_mod_func_int8_t_s_s(((0x69142EFFL <= (l_503 != (p_1955->g_7[2] , (void*)0))) != p_52), 255UL)) | p_1955->g_comm_values[p_1955->tid])) ^ p_52)) || p_53))), p_1955->g_2))), l_482)) != GROUP_DIVERGE(2, 1)) ^ p_52)))));
                }
            }
            for (p_53 = (-12); (p_53 >= 7); ++p_53)
            { /* block id: 189 */
                int8_t ****l_515 = &l_514;
                (*l_354) = ((((void*)0 == l_507) == (safe_mod_func_uint64_t_u_u((*p_1955->g_437), ((0x97L ^ (&p_1955->g_296 == l_510)) , (l_397 ^= (safe_add_func_int8_t_s_s(((*l_352) = (((4294967288UL < ((l_513 = &p_1955->g_448[1]) == ((*l_515) = l_514))) && 1UL) ^ 0xAA9BE3D456494F16L)), l_516))))))) , l_431[4][1]);
                if (l_431[6][2])
                    continue;
            }
        }
        else
        { /* block id: 197 */
            uint8_t l_517 = 0xFFL;
            int32_t l_518 = 0x513B137FL;
            int32_t **l_521 = &l_354;
            int32_t l_555 = 0x3775DB9EL;
            int32_t l_556 = 0L;
            int32_t l_557 = 0x31252006L;
            int32_t l_558 = 0x0E3D8CE3L;
            int32_t l_559 = (-1L);
            l_518 |= l_517;
            if (l_517)
            { /* block id: 199 */
                struct S0 *l_520 = &l_519;
                int32_t l_528 = 0x7E1442F0L;
                int8_t l_529 = 0x38L;
                (*l_520) = l_519;
                (*p_1955->g_142) = (l_529 = ((l_521 == &l_354) != (safe_sub_func_uint32_t_u_u(((((**l_331) |= 9L) , (safe_rshift_func_int16_t_s_u(((void*)0 == &p_53), 3))) >= ((((((((safe_rshift_func_uint8_t_u_u(p_1955->g_435, ((*l_372) = ((((void*)0 == &p_51) >= p_1955->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1955->tid, 40))]) || l_528)))) || p_1955->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1955->tid, 40))]) <= p_53) <= (**l_521)) || p_51) >= FAKE_DIVERGE(p_1955->global_0_offset, get_global_id(0), 10)) , 6L) > p_51)), 0x13D7436CL))));
                (*l_520) = p_1955->g_530;
            }
            else
            { /* block id: 206 */
                int32_t l_543 = 0L;
                int32_t l_554[5];
                int i;
                for (i = 0; i < 5; i++)
                    l_554[i] = (-5L);
                for (p_1955->g_286 = 0; (p_1955->g_286 <= 20); p_1955->g_286 = safe_add_func_int64_t_s_s(p_1955->g_286, 1))
                { /* block id: 209 */
                    uint32_t l_533[6] = {4294967289UL,4294967289UL,4294967289UL,4294967289UL,4294967289UL,4294967289UL};
                    int i;
                    l_533[4]--;
                    if (l_533[1])
                        continue;
                }
                for (l_315 = 0; (l_315 <= 2); l_315 += 1)
                { /* block id: 215 */
                    (*l_354) |= p_54;
                    for (p_1955->g_209 = 2; (p_1955->g_209 >= 0); p_1955->g_209 -= 1)
                    { /* block id: 219 */
                        int i, j;
                        p_1955->g_262[l_315][(p_1955->g_209 + 3)] = p_1955->g_262[p_1955->g_209][(p_1955->g_209 + 4)];
                        l_536[0][0]--;
                    }
                    (**l_521) &= 0x0A5A4341L;
                    (*l_507) = p_55;
                }
                l_486 |= (safe_div_func_uint64_t_u_u((((void*)0 != l_363) != ((*l_340) = (p_1955->g_comm_values[p_1955->tid] ^ (p_52 ^ 0x5FL)))), ((safe_add_func_int32_t_s_s(l_543, ((((safe_div_func_int16_t_s_s(((safe_lshift_func_int16_t_s_u(((*l_354) = p_1955->g_2), 2)) != (((*l_350) ^= p_51) < (((safe_add_func_int64_t_s_s(p_1955->g_353, p_53)) && p_1955->g_160[2]) > l_552))), l_543)) == 0x6183L) != GROUP_DIVERGE(1, 1)) >= p_52))) && l_553)));
                --p_1955->g_561;
            }
            (*l_354) &= (*p_1955->g_142);
            (*l_521) = (*l_507);
        }
    }
    else
    { /* block id: 235 */
        uint64_t l_583 = 0UL;
        uint32_t l_601 = 4294967295UL;
        int32_t l_654 = 0x008EEE84L;
        int32_t l_665 = 0L;
        int32_t l_666 = 0L;
        int32_t l_667[5];
        int i;
        for (i = 0; i < 5; i++)
            l_667[i] = 0x17593302L;
        (*l_507) = p_55;
        for (p_52 = 3; (p_52 == 2); p_52 = safe_sub_func_uint64_t_u_u(p_52, 2))
        { /* block id: 239 */
            int32_t **l_568 = &l_363;
            int32_t l_577[1];
            uint64_t **l_597 = (void*)0;
            int i;
            for (i = 0; i < 1; i++)
                l_577[i] = 1L;
            if (((+(p_54 >= (l_568 != &l_363))) <= (6UL ^ (safe_rshift_func_uint8_t_u_s(l_325, 5)))))
            { /* block id: 240 */
                uint8_t l_580 = 1UL;
                uint32_t *l_581 = &p_1955->g_248;
                int8_t l_582 = 0x02L;
                int32_t l_584 = 0x1C5347B0L;
                if ((safe_mul_func_uint8_t_u_u((safe_mod_func_int64_t_s_s((((!p_1955->g_104) , (p_1955->g_178[0][0][3] || (safe_sub_func_uint8_t_u_u((l_577[0] >= ((GROUP_DIVERGE(1, 1) ^ ((((0UL > (0xF72BL && p_1955->g_246[0][4])) , ((*l_581) = (safe_add_func_uint16_t_u_u(FAKE_DIVERGE(p_1955->local_1_offset, get_local_id(1), 10), (((l_580 <= (l_580 <= 0x3E0619F5L)) , 0x6700268388516687L) >= l_577[0]))))) >= l_582) | FAKE_DIVERGE(p_1955->group_0_offset, get_group_id(0), 10))) == 0x40FD5DB01E4D28A3L)), p_51)))) > 0x083EEAE3L), l_583)), p_52)))
                { /* block id: 242 */
                    uint16_t l_585 = 7UL;
                    l_584 &= 0x3EA115DFL;
                    return l_585;
                }
                else
                { /* block id: 245 */
                    uint16_t l_594 = 65528UL;
                    int8_t *****l_600 = &p_1955->g_598;
                    struct S0 l_604 = {0xA0623B5432795577L};
                    uint32_t *l_620 = (void*)0;
                    uint32_t *l_621 = &p_1955->g_178[0][0][3];
                    uint32_t *l_622[8] = {&p_1955->g_623,&p_1955->g_623,&p_1955->g_623,&p_1955->g_623,&p_1955->g_623,&p_1955->g_623,&p_1955->g_623,&p_1955->g_623};
                    int32_t l_624 = 0x324C5C13L;
                    uint8_t l_644 = 7UL;
                    int i;
                    if ((safe_div_func_uint16_t_u_u(((p_52 , p_1955->g_56[0]) & ((safe_lshift_func_uint8_t_u_u((9L && (0x3438C2ACL > ((((safe_lshift_func_uint16_t_u_u(p_51, 14)) ^ (safe_sub_func_uint8_t_u_u((p_54 || p_51), ((((*l_600) = ((l_594 , ((safe_lshift_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), (l_597 != l_597))) || p_54)) , p_1955->g_598)) != &p_1955->g_599) == FAKE_DIVERGE(p_1955->global_1_offset, get_global_id(1), 10))))) | 8UL) | 0x3005L))), l_601)) , p_53)), l_580)))
                    { /* block id: 247 */
                        (*p_1955->g_142) &= 0x6EFBF95EL;
                        (*p_1955->g_603) = (*p_1955->g_143);
                    }
                    else
                    { /* block id: 250 */
                        struct S0 *l_605 = &l_604;
                        (*l_605) = l_604;
                    }
                    (*p_1955->g_626) = ((l_398 = (l_624 = ((*l_621) = (safe_lshift_func_int16_t_s_s(((((safe_sub_func_int8_t_s_s((safe_div_func_uint16_t_u_u(((((void*)0 == &l_577[0]) <= 1L) <= (l_584 = (safe_mod_func_uint64_t_u_u((p_53 > (safe_add_func_int16_t_s_s(0x7466L, ((p_53 <= p_54) & (safe_sub_func_uint32_t_u_u(((safe_add_func_uint32_t_u_u(((*p_1955->g_437) <= p_54), FAKE_DIVERGE(p_1955->group_0_offset, get_group_id(0), 10))) ^ l_577[0]), l_604.f0)))))), l_584)))), p_1955->g_2)), 1UL)) <= p_1955->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1955->tid, 40))]) | l_601) , 0x2D2AL), l_582))))) , (*p_1955->g_143));
                    l_645[0][7] &= (!(safe_mod_func_int32_t_s_s(((((+(safe_add_func_int8_t_s_s(((((safe_rshift_func_uint16_t_u_s((safe_mul_func_int64_t_s_s((((**p_1955->g_436) &= p_52) > p_51), (p_1955->g_2 <= (safe_add_func_uint64_t_u_u((p_1955->g_637 , ((l_601 > (safe_sub_func_int16_t_s_s(((*l_324) = (safe_sub_func_uint32_t_u_u(p_1955->g_209, (p_1955->g_4 & ((safe_mul_func_int16_t_s_s(p_53, 65529UL)) != GROUP_DIVERGE(2, 1)))))), p_1955->g_434))) , 0xC92ED9BB491C393BL)), p_51))))), 13)) | 0xB807B4E1BD922411L) & l_644) , 0x0DL), p_54))) , p_54) == 0x31F7B8333C931233L) != l_577[0]), FAKE_DIVERGE(p_1955->group_0_offset, get_group_id(0), 10))));
                    (*p_1955->g_646) = p_1955->g_637;
                }
                (*p_1955->g_142) = 0x389B71ECL;
            }
            else
            { /* block id: 264 */
                int32_t l_651 = 9L;
                int8_t l_660 = 0x03L;
                int32_t l_661[4] = {(-1L),(-1L),(-1L),(-1L)};
                int64_t l_662 = 0x0619E8E9128A1D75L;
                int i;
                if (l_601)
                    break;
                for (p_1955->g_434 = 0; (p_1955->g_434 >= 2); ++p_1955->g_434)
                { /* block id: 268 */
                    int32_t *l_649 = &l_577[0];
                    int32_t l_650[4] = {0x013B3333L,0x013B3333L,0x013B3333L,0x013B3333L};
                    int32_t *l_652 = &p_1955->g_123[0];
                    int32_t *l_653[8][5] = {{&p_1955->g_4,(void*)0,&l_486,(void*)0,&p_1955->g_4},{&p_1955->g_4,(void*)0,&l_486,(void*)0,&p_1955->g_4},{&p_1955->g_4,(void*)0,&l_486,(void*)0,&p_1955->g_4},{&p_1955->g_4,(void*)0,&l_486,(void*)0,&p_1955->g_4},{&p_1955->g_4,(void*)0,&l_486,(void*)0,&p_1955->g_4},{&p_1955->g_4,(void*)0,&l_486,(void*)0,&p_1955->g_4},{&p_1955->g_4,(void*)0,&l_486,(void*)0,&p_1955->g_4},{&p_1955->g_4,(void*)0,&l_486,(void*)0,&p_1955->g_4}};
                    int i, j;
                    ++l_655[0];
                    for (l_486 = 0; (l_486 < 21); ++l_486)
                    { /* block id: 272 */
                        int16_t l_663 = 0x30BDL;
                        int32_t l_664[4];
                        uint64_t l_670 = 1UL;
                        int i;
                        for (i = 0; i < 4; i++)
                            l_664[i] = (-1L);
                        ++l_670;
                        (*l_507) = &l_650[1];
                    }
                    if (p_51)
                        continue;
                }
                if ((*p_1955->g_142))
                    break;
            }
            if (p_52)
                break;
        }
    }
    (*l_507) = p_55;
    for (l_315 = 9; (l_315 != 25); l_315 = safe_add_func_uint32_t_u_u(l_315, 1))
    { /* block id: 286 */
        int32_t **l_677 = &l_363;
        int32_t l_708 = 1L;
        int32_t l_719[8] = {1L,1L,1L,1L,1L,1L,1L,1L};
        int32_t l_732[9] = {(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L)};
        int16_t **l_760 = &l_324;
        struct S0 l_770[2] = {{18446744073709551606UL},{18446744073709551606UL}};
        uint32_t l_796 = 0x1E04E3A5L;
        int i;
        if ((**p_1955->g_626))
        { /* block id: 287 */
            int32_t **l_676 = &l_363;
            int32_t ***l_678[10][4][3] = {{{&l_677,&l_677,&l_677},{&l_677,&l_677,&l_677},{&l_677,&l_677,&l_677},{&l_677,&l_677,&l_677}},{{&l_677,&l_677,&l_677},{&l_677,&l_677,&l_677},{&l_677,&l_677,&l_677},{&l_677,&l_677,&l_677}},{{&l_677,&l_677,&l_677},{&l_677,&l_677,&l_677},{&l_677,&l_677,&l_677},{&l_677,&l_677,&l_677}},{{&l_677,&l_677,&l_677},{&l_677,&l_677,&l_677},{&l_677,&l_677,&l_677},{&l_677,&l_677,&l_677}},{{&l_677,&l_677,&l_677},{&l_677,&l_677,&l_677},{&l_677,&l_677,&l_677},{&l_677,&l_677,&l_677}},{{&l_677,&l_677,&l_677},{&l_677,&l_677,&l_677},{&l_677,&l_677,&l_677},{&l_677,&l_677,&l_677}},{{&l_677,&l_677,&l_677},{&l_677,&l_677,&l_677},{&l_677,&l_677,&l_677},{&l_677,&l_677,&l_677}},{{&l_677,&l_677,&l_677},{&l_677,&l_677,&l_677},{&l_677,&l_677,&l_677},{&l_677,&l_677,&l_677}},{{&l_677,&l_677,&l_677},{&l_677,&l_677,&l_677},{&l_677,&l_677,&l_677},{&l_677,&l_677,&l_677}},{{&l_677,&l_677,&l_677},{&l_677,&l_677,&l_677},{&l_677,&l_677,&l_677},{&l_677,&l_677,&l_677}}};
            int32_t l_687 = 0x0720277CL;
            int32_t l_690 = 0x22321063L;
            uint64_t **l_691[10];
            struct S0 *l_694 = &l_519;
            struct S0 *l_695 = &p_1955->g_637;
            int i, j, k;
            for (i = 0; i < 10; i++)
                l_691[i] = &l_393;
            if ((safe_unary_minus_func_int16_t_s(((l_676 = &l_363) == (p_1955->g_679 = l_677)))))
            { /* block id: 290 */
                uint64_t **l_688 = &l_393;
                uint64_t ***l_689 = &p_1955->g_436;
                struct S0 *l_693[10] = {&p_1955->g_637,(void*)0,&l_519,(void*)0,&p_1955->g_637,&p_1955->g_637,(void*)0,&l_519,(void*)0,&p_1955->g_637};
                struct S0 **l_692 = &l_693[4];
                int16_t l_696[7];
                int32_t *l_699 = &p_1955->g_123[1];
                int i;
                for (i = 0; i < 7; i++)
                    l_696[i] = (-1L);
                if ((safe_add_func_uint8_t_u_u((((safe_mul_func_int16_t_s_s((((safe_add_func_int64_t_s_s(p_1955->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1955->tid, 40))], l_687)) < (((*l_689) = l_688) != ((l_690 = (&p_55 == &p_1955->g_142)) , l_691[5]))) >= (((*p_1955->g_437) = ((l_694 = ((*l_692) = &p_1955->g_637)) != ((*p_1955->g_680) , l_695))) > l_696[6])), p_1955->g_623)) == p_1955->g_248) >= l_696[4]), p_51)))
                { /* block id: 296 */
                    return p_51;
                }
                else
                { /* block id: 298 */
                    if ((**p_1955->g_143))
                        break;
                }
                (*l_507) = (((safe_rshift_func_uint8_t_u_s(255UL, 2)) ^ (((*l_689) = (void*)0) != &p_1955->g_437)) , l_699);
                if (p_52)
                    continue;
            }
            else
            { /* block id: 304 */
                int64_t l_709 = 1L;
                int32_t **l_712[4];
                int8_t *l_715 = (void*)0;
                int8_t *l_716 = (void*)0;
                int8_t *l_717 = (void*)0;
                int8_t *l_718 = &p_1955->g_353;
                int i;
                for (i = 0; i < 4; i++)
                    l_712[i] = &l_363;
                l_719[7] ^= (safe_div_func_int32_t_s_s((((*p_1955->g_142) < (safe_mod_func_int32_t_s_s((safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_1955->group_2_offset, get_group_id(2), 10), (((((safe_add_func_int8_t_s_s(((l_708 , ((!((*l_324) = (p_1955->g_623 , l_709))) == 0UL)) , (safe_mul_func_uint8_t_u_u(0x81L, ((l_677 = &p_1955->g_680) != (FAKE_DIVERGE(p_1955->group_1_offset, get_group_id(1), 10) , l_712[0]))))), ((((safe_rshift_func_int8_t_s_s(((*l_718) = p_54), 4)) , p_53) , p_53) | l_708))) , p_1955->g_105) & l_708) || GROUP_DIVERGE(1, 1)) | GROUP_DIVERGE(2, 1)))), l_690))) != 0x50035F483F0E7607L), FAKE_DIVERGE(p_1955->local_1_offset, get_local_id(1), 10)));
                for (p_52 = (-1); (p_52 == (-4)); --p_52)
                { /* block id: 311 */
                    return l_709;
                }
            }
            return p_53;
        }
        else
        { /* block id: 316 */
            int16_t **l_727 = &l_324;
            int32_t l_747[8][8] = {{5L,0x12F2A5EAL,0x1A789677L,0x5DFA391FL,0x12F2A5EAL,0x5DFA391FL,0x1A789677L,0x12F2A5EAL},{5L,0x12F2A5EAL,0x1A789677L,0x5DFA391FL,0x12F2A5EAL,0x5DFA391FL,0x1A789677L,0x12F2A5EAL},{5L,0x12F2A5EAL,0x1A789677L,0x5DFA391FL,0x12F2A5EAL,0x5DFA391FL,0x1A789677L,0x12F2A5EAL},{5L,0x12F2A5EAL,0x1A789677L,0x5DFA391FL,0x12F2A5EAL,0x5DFA391FL,0x1A789677L,0x12F2A5EAL},{5L,0x12F2A5EAL,0x1A789677L,0x5DFA391FL,0x12F2A5EAL,0x5DFA391FL,0x1A789677L,0x12F2A5EAL},{5L,0x12F2A5EAL,0x1A789677L,0x5DFA391FL,0x12F2A5EAL,0x5DFA391FL,0x1A789677L,0x12F2A5EAL},{5L,0x12F2A5EAL,0x1A789677L,0x5DFA391FL,0x12F2A5EAL,0x5DFA391FL,0x1A789677L,0x12F2A5EAL},{5L,0x12F2A5EAL,0x1A789677L,0x5DFA391FL,0x12F2A5EAL,0x5DFA391FL,0x1A789677L,0x12F2A5EAL}};
            int16_t l_750 = 0x59DCL;
            struct S0 l_768 = {0x6BFE50928A072572L};
            int i, j;
            (*p_1955->g_142) ^= l_722;
            if (((safe_rshift_func_uint16_t_u_u(0UL, 10)) & (safe_rshift_func_int8_t_s_s((l_669 , ((l_727 != l_727) , ((p_1955->g_31 <= p_1955->g_123[0]) < l_719[7]))), 1))))
            { /* block id: 318 */
                if (p_51)
                    break;
            }
            else
            { /* block id: 320 */
                uint64_t *l_748 = (void*)0;
                uint64_t *l_749 = &l_722;
                int32_t *l_751[6][5];
                volatile int32_t **l_752 = (void*)0;
                int16_t ***l_761 = &l_760;
                int32_t **l_769 = (void*)0;
                int i, j;
                for (i = 0; i < 6; i++)
                {
                    for (j = 0; j < 5; j++)
                        l_751[i][j] = &p_1955->g_105;
                }
                l_397 &= ((l_719[4] &= (l_750 = (((**l_727) = 0x458BL) & (safe_mul_func_uint16_t_u_u((+(p_1955->g_288 = ((safe_div_func_uint32_t_u_u(((((*l_749) &= ((((((l_732[4] && ((safe_rshift_func_uint8_t_u_u((safe_add_func_uint8_t_u_u((((((safe_lshift_func_uint8_t_u_s(FAKE_DIVERGE(p_1955->global_1_offset, get_global_id(1), 10), 1)) | (FAKE_DIVERGE(p_1955->global_2_offset, get_global_id(2), 10) > ((((GROUP_DIVERGE(2, 1) | ((((safe_rshift_func_int16_t_s_s(((safe_mod_func_uint16_t_u_u(((p_51 & 0L) | (1UL >= (((FAKE_DIVERGE(p_1955->group_0_offset, get_group_id(0), 10) != ((void*)0 == p_55)) ^ ((GROUP_DIVERGE(0, 1) || ((*p_1955->g_437) = (0x22L <= (safe_rshift_func_int16_t_s_s((p_1955->g_160[4] | l_747[1][6]), 6))))) && p_51)) >= p_54))), p_51)) | FAKE_DIVERGE(p_1955->local_0_offset, get_local_id(0), 10)), 0)) > 0x6E30937BAFB3A529L) == FAKE_DIVERGE(p_1955->global_1_offset, get_global_id(1), 10)) || p_1955->g_comm_values[p_1955->tid])) > GROUP_DIVERGE(0, 1)) || l_747[1][6]) > (-5L)))) >= 0UL) >= 1L) == p_53), p_1955->g_288)), p_1955->g_246[0][3])) & p_1955->g_435)) > (-5L)) && p_1955->g_435) < l_732[2]) ^ p_51) | (-4L))) == p_52) || p_1955->g_623), p_1955->g_56[0])) > GROUP_DIVERGE(1, 1)))), p_51))))) & l_732[6]);
                (*p_1955->g_753) = (*p_1955->g_143);
                l_732[4] |= (safe_sub_func_int64_t_s_s(0x306D364438F1CC96L, (safe_add_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(0x78L, ((((*l_324) = (((*l_761) = l_760) == (void*)0)) <= 0UL) != (safe_sub_func_int16_t_s_s((((safe_lshift_func_uint8_t_u_s(p_53, p_53)) , ((safe_mul_func_uint8_t_u_u(((l_768 , ((p_55 = p_55) != &l_747[7][6])) & l_768.f0), 0x0FL)) ^ l_719[6])) <= p_53), p_1955->g_3[0]))))), 0x82L))));
                if ((**p_1955->g_143))
                    continue;
            }
            for (p_1955->g_108 = 0; (p_1955->g_108 >= 0); p_1955->g_108 -= 1)
            { /* block id: 337 */
                int16_t l_775 = 0x1095L;
                for (p_1955->g_353 = 7; (p_1955->g_353 >= 0); p_1955->g_353 -= 1)
                { /* block id: 340 */
                    for (p_1955->g_435 = 0; (p_1955->g_435 >= 0); p_1955->g_435 -= 1)
                    { /* block id: 343 */
                        int i;
                        return l_655[p_1955->g_435];
                    }
                    for (p_1955->g_133 = 5; (p_1955->g_133 >= 0); p_1955->g_133 -= 1)
                    { /* block id: 348 */
                        int i;
                        (*l_507) = (p_1955->g_123[p_1955->g_108] , p_55);
                        (*l_507) = p_55;
                        if (p_1955->g_123[p_1955->g_108])
                            continue;
                    }
                }
                for (p_1955->g_133 = 0; (p_1955->g_133 <= 7); p_1955->g_133 += 1)
                { /* block id: 356 */
                    struct S0 *l_771 = &l_770[0];
                    int64_t *l_774 = (void*)0;
                    int64_t *l_776 = (void*)0;
                    int64_t *l_777 = (void*)0;
                    int64_t *l_778 = (void*)0;
                    int64_t *l_779 = (void*)0;
                    int64_t *l_780[3][10] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                    int i, j;
                    (*l_771) = l_770[1];
                    (*l_771) = (*l_771);
                    (*l_507) = &p_1955->g_123[p_1955->g_108];
                    l_719[p_1955->g_133] = (((9L >= (safe_add_func_uint64_t_u_u(l_655[p_1955->g_108], (p_1955->g_123[p_1955->g_108] |= (p_54 = (l_775 = 7L)))))) , (safe_sub_func_uint8_t_u_u((l_645[0][7] , (safe_lshift_func_int8_t_s_s((l_747[1][6] , 1L), 6))), (p_54 && ((safe_sub_func_int64_t_s_s(((p_1955->g_504[7] ^ ((((l_750 < p_52) || l_747[1][6]) != l_775) == (**p_1955->g_143))) <= 0L), GROUP_DIVERGE(1, 1))) < p_52))))) < (-9L));
                }
                for (p_1955->g_434 = 1; (p_1955->g_434 <= 7); p_1955->g_434 += 1)
                { /* block id: 367 */
                    int32_t l_795 = 0L;
                    int i;
                    l_719[(p_1955->g_108 + 4)] ^= ((p_1955->g_comm_values[p_1955->tid] = (l_796 = (safe_lshift_func_uint16_t_u_u(((p_1955->g_109[1] == (p_51 >= ((*l_324) = 0L))) >= ((**p_1955->g_143) , (safe_div_func_int16_t_s_s((p_1955->g_353 > l_795), (((void*)0 == &p_1955->g_679) | (65530UL || l_747[1][2])))))), GROUP_DIVERGE(1, 1))))) , p_54);
                }
            }
            for (p_51 = 0; (p_51 <= 0); p_51 += 1)
            { /* block id: 376 */
                struct S0 *l_799 = &p_1955->g_637;
                for (p_1955->g_209 = 0; (p_1955->g_209 >= 0); p_1955->g_209 -= 1)
                { /* block id: 379 */
                    int i, j;
                    if ((safe_lshift_func_uint8_t_u_u(((void*)0 != &p_1955->g_178[0][0][3]), p_1955->g_127[p_1955->g_209][p_51])))
                    { /* block id: 380 */
                        int i, j;
                        (*l_507) = p_55;
                        return p_1955->g_127[p_51][p_1955->g_209];
                    }
                    else
                    { /* block id: 383 */
                        return p_54;
                    }
                }
                (*p_1955->g_800) = ((*l_799) = (*p_1955->g_646));
                if (p_54)
                    break;
                for (l_519.f0 = 29; (l_519.f0 >= 10); l_519.f0--)
                { /* block id: 392 */
                    for (l_325 = 3; (l_325 <= 3); l_325 = safe_add_func_uint16_t_u_u(l_325, 2))
                    { /* block id: 395 */
                        int i, j;
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        p_1955->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 40)), permutations[(safe_mod_func_uint32_t_u_u(p_54, 10))][(safe_mod_func_uint32_t_u_u(p_1955->tid, 40))]));
                        if ((**p_1955->g_603))
                            break;
                    }
                }
            }
        }
    }
    return p_52;
}


/* ------------------------------------------ */
/* 
 * reads : p_1955->g_35 p_1955->g_comm_values p_1955->g_4 p_1955->g_31 p_1955->g_3 p_1955->g_56 p_1955->g_108 p_1955->g_7 p_1955->g_127 p_1955->g_2 p_1955->g_138 p_1955->l_comm_values p_1955->g_133 p_1955->g_143 p_1955->g_142 p_1955->g_160 p_1955->g_178 p_1955->g_105 p_1955->g_109 p_1955->g_209 p_1955->g_120 p_1955->g_246 p_1955->g_248 p_1955->g_104 p_1955->g_296
 * writes: p_1955->g_35 p_1955->g_31 p_1955->g_3 p_1955->g_105 p_1955->g_108 p_1955->g_109 p_1955->g_123 p_1955->g_120 p_1955->g_127 p_1955->g_133 p_1955->g_142 p_1955->g_160 p_1955->g_178 p_1955->g_2 p_1955->g_209 p_1955->g_248 p_1955->g_262 p_1955->g_286 p_1955->g_288 p_1955->g_296
 */
uint32_t  func_57(uint32_t  p_58, uint32_t  p_59, int32_t * p_60, uint32_t  p_61, struct S1 * p_1955)
{ /* block id: 19 */
    uint64_t *l_71 = (void*)0;
    uint64_t *l_72 = (void*)0;
    int32_t l_73 = 0x08211ABDL;
    uint64_t *l_74 = &p_1955->g_35[7];
    uint64_t **l_167 = (void*)0;
    int8_t l_170 = 0x02L;
    uint32_t *l_177 = &p_1955->g_178[0][0][3];
    uint16_t *l_181 = (void*)0;
    uint16_t *l_182 = (void*)0;
    uint16_t *l_183 = &p_1955->g_127[0][0];
    int32_t *l_208[5][8] = {{(void*)0,&p_1955->g_7[1],(void*)0,(void*)0,&p_1955->g_7[1],(void*)0,(void*)0,&p_1955->g_7[1]},{(void*)0,&p_1955->g_7[1],(void*)0,(void*)0,&p_1955->g_7[1],(void*)0,(void*)0,&p_1955->g_7[1]},{(void*)0,&p_1955->g_7[1],(void*)0,(void*)0,&p_1955->g_7[1],(void*)0,(void*)0,&p_1955->g_7[1]},{(void*)0,&p_1955->g_7[1],(void*)0,(void*)0,&p_1955->g_7[1],(void*)0,(void*)0,&p_1955->g_7[1]},{(void*)0,&p_1955->g_7[1],(void*)0,(void*)0,&p_1955->g_7[1],(void*)0,(void*)0,&p_1955->g_7[1]}};
    int64_t **l_264 = &p_1955->g_138;
    uint32_t l_265 = 0xF3D50A5CL;
    int32_t l_268 = (-1L);
    int32_t *l_285 = &p_1955->g_286;
    uint16_t *l_287 = &p_1955->g_288;
    uint8_t *l_295 = &p_1955->g_296;
    int16_t *l_299 = &p_1955->g_133;
    int8_t *l_300 = &p_1955->g_120;
    int i, j;
    p_1955->g_209 &= (l_73 = (func_63((!(safe_mod_func_uint16_t_u_u((safe_add_func_uint64_t_u_u(((*l_74)--), p_1955->g_comm_values[p_1955->tid])), ((safe_sub_func_uint64_t_u_u(func_79(&l_74, p_1955), (safe_lshift_func_int8_t_s_s(l_73, 7)))) || ((((l_72 = l_72) != &p_1955->g_31) < ((*l_183) = ((safe_div_func_uint64_t_u_u(((l_170 && l_170) <= (~(safe_mod_func_uint32_t_u_u((~(safe_div_func_uint32_t_u_u((safe_div_func_uint32_t_u_u(((--(*l_177)) , (p_1955->g_160[2] &= p_61)), p_1955->g_127[0][3])), (*p_1955->g_142)))), p_1955->g_105)))), (-1L))) & p_1955->g_7[0]))) , p_61))))), p_1955->g_7[0], p_60, p_1955) , l_170));
    for (p_59 = 0; (p_59 <= 0); p_59 += 1)
    { /* block id: 95 */
        int8_t *l_210[10][2][10] = {{{&l_170,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&l_170,(void*)0,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120},{&l_170,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&l_170,(void*)0,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120}},{{&l_170,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&l_170,(void*)0,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120},{&l_170,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&l_170,(void*)0,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120}},{{&l_170,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&l_170,(void*)0,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120},{&l_170,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&l_170,(void*)0,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120}},{{&l_170,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&l_170,(void*)0,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120},{&l_170,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&l_170,(void*)0,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120}},{{&l_170,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&l_170,(void*)0,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120},{&l_170,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&l_170,(void*)0,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120}},{{&l_170,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&l_170,(void*)0,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120},{&l_170,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&l_170,(void*)0,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120}},{{&l_170,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&l_170,(void*)0,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120},{&l_170,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&l_170,(void*)0,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120}},{{&l_170,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&l_170,(void*)0,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120},{&l_170,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&l_170,(void*)0,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120}},{{&l_170,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&l_170,(void*)0,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120},{&l_170,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&l_170,(void*)0,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120}},{{&l_170,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&l_170,(void*)0,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120},{&l_170,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&l_170,(void*)0,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120}}};
        int8_t *l_212[5];
        int32_t l_217 = 0x41E25E91L;
        int16_t l_220 = (-1L);
        int32_t l_221 = 0x47419DDAL;
        uint8_t l_241 = 1UL;
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_212[i] = &l_170;
        for (p_58 = 0; (p_58 <= 0); p_58 += 1)
        { /* block id: 98 */
            int8_t **l_211 = &l_210[1][0][3];
            int16_t *l_224 = &p_1955->g_133;
            int32_t l_242 = 0L;
            uint32_t *l_243 = (void*)0;
            uint32_t *l_244 = &p_1955->g_160[2];
            uint8_t *l_245 = &l_241;
            uint32_t *l_247 = &p_1955->g_248;
            int32_t **l_258 = &l_208[1][4];
            int32_t **l_259 = (void*)0;
            int32_t *l_261 = &l_242;
            int32_t **l_260[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int i;
            l_221 &= (((((*l_211) = l_210[1][0][3]) != l_212[3]) ^ ((((&p_1955->g_3[(p_58 + 1)] == ((+(safe_rshift_func_int8_t_s_s(((safe_add_func_int8_t_s_s((l_217 = (p_1955->g_120 = (l_183 == (void*)0))), 0x9CL)) > (safe_sub_func_uint64_t_u_u((p_61 , p_1955->g_56[0]), (p_1955->g_31 ^ p_58)))), l_220))) , (void*)0)) && p_1955->g_7[3]) >= p_1955->g_105) >= 0xDD0FD29ABEE815A8L)) <= p_1955->g_209);
            p_1955->g_209 &= (p_1955->g_123[1] = (safe_mod_func_int8_t_s_s(0L, (((l_224 != (void*)0) || ((safe_mul_func_int16_t_s_s((((*l_247) |= (p_1955->g_160[1] , (((safe_mul_func_int8_t_s_s(p_59, ((*l_245) = ((((*l_244) &= (safe_sub_func_int32_t_s_s((0x6ABED768CE296E4BL | ((safe_div_func_uint64_t_u_u(((((safe_lshift_func_int16_t_s_u(((p_1955->g_120 , 1L) >= ((((safe_mod_func_uint64_t_u_u(((safe_sub_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(1UL, 1UL)), p_61)) , p_1955->g_35[7]), p_1955->g_2)) < p_1955->g_105) || p_1955->g_3[(p_58 + 1)]) ^ FAKE_DIVERGE(p_1955->global_2_offset, get_global_id(2), 10))), p_1955->g_133)) | 0L) , 6L) | 0x221A5A38L), p_59)) || l_241)), l_242))) ^ (-1L)) , 251UL)))) | 0x65EAA200B0FF158EL) && p_1955->g_246[0][3]))) & (-7L)), p_58)) & 9L)) , 0x0CL))));
            p_1955->g_105 &= (p_1955->g_7[0] ^ ((safe_unary_minus_func_uint32_t_u((((safe_mod_func_int8_t_s_s(((p_1955->g_3[(p_58 + 1)] && (safe_rshift_func_int16_t_s_s((p_59 & (-1L)), 15))) , ((safe_add_func_uint32_t_u_u(((safe_mul_func_int8_t_s_s((((*l_247) |= p_1955->g_3[(p_58 + 1)]) > 0x963BEDA2L), (((((*l_258) = &l_242) != ((*p_60) , (p_1955->g_262[1][5] = &p_1955->g_109[5]))) & 0x00L) && FAKE_DIVERGE(p_1955->local_1_offset, get_local_id(1), 10)))) , p_1955->g_4), GROUP_DIVERGE(2, 1))) >= p_1955->g_209)), p_59)) < 0L) , p_1955->g_3[1]))) > p_59));
            for (l_220 = 1; (l_220 >= 0); l_220 -= 1)
            { /* block id: 114 */
                uint8_t l_263 = 1UL;
                (*p_1955->g_142) = (4L > l_263);
            }
        }
        l_264 = &p_1955->g_138;
    }
    l_265++;
    (*p_1955->g_142) = (l_268 | (safe_div_func_uint64_t_u_u((((*l_183) |= 1UL) , (safe_div_func_int32_t_s_s((safe_mul_func_int8_t_s_s(0x02L, (safe_div_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u((p_1955->g_31 || (safe_div_func_int8_t_s_s(p_1955->g_127[0][0], (safe_mod_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_s(((*l_287) = ((((*l_285) = 0x220A6329L) , (*p_60)) > p_1955->g_104)), ((safe_sub_func_int16_t_s_s((safe_mod_func_int64_t_s_s((((*l_300) = ((safe_lshift_func_uint8_t_u_u((++(*l_295)), 0)) , ((((((*l_299) &= (0x12015246L && p_58)) & p_58) == p_59) || 0L) ^ p_1955->g_7[2]))) < p_1955->g_4), 18446744073709551608UL)), 0x39C4L)) , p_1955->g_109[8]))), (*p_60)))))), 4)), p_58)))), (*p_60)))), p_58)));
    return p_1955->g_178[0][0][3];
}


/* ------------------------------------------ */
/* 
 * reads : p_1955->g_35 p_1955->g_109 p_1955->g_142 p_1955->g_108
 * writes: p_1955->g_108 p_1955->g_3 p_1955->g_2
 */
int32_t  func_63(uint16_t  p_64, int16_t  p_65, int32_t * p_66, struct S1 * p_1955)
{ /* block id: 86 */
    int32_t *l_184 = (void*)0;
    int32_t *l_185 = &p_1955->g_109[8];
    int32_t *l_186 = &p_1955->g_108;
    int32_t *l_187[9][8] = {{&p_1955->g_7[0],&p_1955->g_123[0],&p_1955->g_123[0],&p_1955->g_7[0],&p_1955->g_7[0],&p_1955->g_123[0],&p_1955->g_123[0],&p_1955->g_7[0]},{&p_1955->g_7[0],&p_1955->g_123[0],&p_1955->g_123[0],&p_1955->g_7[0],&p_1955->g_7[0],&p_1955->g_123[0],&p_1955->g_123[0],&p_1955->g_7[0]},{&p_1955->g_7[0],&p_1955->g_123[0],&p_1955->g_123[0],&p_1955->g_7[0],&p_1955->g_7[0],&p_1955->g_123[0],&p_1955->g_123[0],&p_1955->g_7[0]},{&p_1955->g_7[0],&p_1955->g_123[0],&p_1955->g_123[0],&p_1955->g_7[0],&p_1955->g_7[0],&p_1955->g_123[0],&p_1955->g_123[0],&p_1955->g_7[0]},{&p_1955->g_7[0],&p_1955->g_123[0],&p_1955->g_123[0],&p_1955->g_7[0],&p_1955->g_7[0],&p_1955->g_123[0],&p_1955->g_123[0],&p_1955->g_7[0]},{&p_1955->g_7[0],&p_1955->g_123[0],&p_1955->g_123[0],&p_1955->g_7[0],&p_1955->g_7[0],&p_1955->g_123[0],&p_1955->g_123[0],&p_1955->g_7[0]},{&p_1955->g_7[0],&p_1955->g_123[0],&p_1955->g_123[0],&p_1955->g_7[0],&p_1955->g_7[0],&p_1955->g_123[0],&p_1955->g_123[0],&p_1955->g_7[0]},{&p_1955->g_7[0],&p_1955->g_123[0],&p_1955->g_123[0],&p_1955->g_7[0],&p_1955->g_7[0],&p_1955->g_123[0],&p_1955->g_123[0],&p_1955->g_7[0]},{&p_1955->g_7[0],&p_1955->g_123[0],&p_1955->g_123[0],&p_1955->g_7[0],&p_1955->g_7[0],&p_1955->g_123[0],&p_1955->g_123[0],&p_1955->g_7[0]}};
    int16_t l_188 = (-1L);
    uint8_t l_189 = 0xE1L;
    int8_t *l_200 = &p_1955->g_120;
    int8_t *l_203[8] = {&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120,&p_1955->g_120};
    int i, j;
    ++l_189;
    (*p_1955->g_142) = ((safe_mod_func_uint32_t_u_u(((*l_186) = ((void*)0 == &p_1955->g_142)), (safe_mul_func_uint8_t_u_u((((safe_mul_func_uint16_t_u_u((1L | ((void*)0 != l_200)), (safe_div_func_int64_t_s_s(((void*)0 != l_203[3]), ((((safe_mod_func_int8_t_s_s(((void*)0 != p_66), p_65)) <= 0xF640BDDAL) > 0UL) || p_1955->g_35[7]))))) < p_1955->g_109[0]) < GROUP_DIVERGE(2, 1)), FAKE_DIVERGE(p_1955->local_0_offset, get_local_id(0), 10))))) ^ 4294967295UL);
    return (*l_186);
}


/* ------------------------------------------ */
/* 
 * reads : p_1955->g_4 p_1955->g_31 p_1955->g_3 p_1955->g_56 p_1955->g_108 p_1955->g_7 p_1955->g_127 p_1955->g_2 p_1955->g_138 p_1955->l_comm_values p_1955->g_133 p_1955->g_143 p_1955->g_142 p_1955->g_160
 * writes: p_1955->g_31 p_1955->g_3 p_1955->g_105 p_1955->g_108 p_1955->g_109 p_1955->g_123 p_1955->g_120 p_1955->g_127 p_1955->g_133 p_1955->g_142 p_1955->g_160
 */
uint64_t  func_79(uint64_t ** p_80, struct S1 * p_1955)
{ /* block id: 21 */
    int16_t l_85[6][7];
    uint64_t *l_90[6] = {&p_1955->g_31,&p_1955->g_31,&p_1955->g_31,&p_1955->g_31,&p_1955->g_31,&p_1955->g_31};
    int32_t *l_97[2];
    struct S0 *l_161 = (void*)0;
    uint64_t l_162 = 0x8C4A8B706D4C3360L;
    int i, j;
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 7; j++)
            l_85[i][j] = 7L;
    }
    for (i = 0; i < 2; i++)
        l_97[i] = &p_1955->g_7[0];
    p_1955->g_160[2] &= (safe_mod_func_uint64_t_u_u(((safe_mul_func_uint16_t_u_u(l_85[1][2], l_85[1][2])) || (((+l_85[1][2]) , func_86(l_90[5], ((safe_mul_func_int8_t_s_s(l_85[1][2], (safe_sub_func_uint64_t_u_u(0x9D6F4693715CD22FL, l_85[1][2])))) && (safe_rshift_func_uint8_t_u_s((p_1955->g_4 > l_85[1][2]), l_85[2][2]))), l_97[0], p_1955)) != (void*)0)), 0x78FA292BBD1EA290L));
    l_161 = (void*)0;
    --l_162;
    return p_1955->g_133;
}


/* ------------------------------------------ */
/* 
 * reads : p_1955->g_31 p_1955->g_3 p_1955->g_56 p_1955->g_108 p_1955->g_7 p_1955->g_4 p_1955->g_127 p_1955->g_2 p_1955->g_138 p_1955->l_comm_values p_1955->g_133 p_1955->g_143 p_1955->g_142
 * writes: p_1955->g_31 p_1955->g_3 p_1955->g_105 p_1955->g_108 p_1955->g_109 p_1955->g_123 p_1955->g_120 p_1955->g_127 p_1955->g_133 p_1955->g_142
 */
uint64_t * func_86(uint64_t * p_87, int32_t  p_88, int32_t * p_89, struct S1 * p_1955)
{ /* block id: 22 */
    int64_t l_113 = 0x71DC8D5A9C18A2FDL;
    int32_t *l_144 = &p_1955->g_123[0];
    int32_t *l_145 = &p_1955->g_108;
    int32_t *l_146 = &p_1955->g_123[0];
    int32_t *l_147 = &p_1955->g_123[0];
    int32_t *l_148 = &p_1955->g_109[8];
    int32_t l_149 = 0x4899312AL;
    int32_t *l_150 = &p_1955->g_123[0];
    int32_t *l_151 = &p_1955->g_109[6];
    int32_t *l_152 = &p_1955->g_109[8];
    int32_t *l_153[10] = {&l_149,&p_1955->g_123[0],&l_149,&l_149,&p_1955->g_123[0],&l_149,&l_149,&p_1955->g_123[0],&l_149,&l_149};
    int64_t l_154[3][4] = {{0x4FB355C915C06DEDL,0x4FB355C915C06DEDL,0x4FB355C915C06DEDL,0x4FB355C915C06DEDL},{0x4FB355C915C06DEDL,0x4FB355C915C06DEDL,0x4FB355C915C06DEDL,0x4FB355C915C06DEDL},{0x4FB355C915C06DEDL,0x4FB355C915C06DEDL,0x4FB355C915C06DEDL,0x4FB355C915C06DEDL}};
    int64_t l_155 = (-8L);
    uint32_t l_156 = 4294967287UL;
    uint64_t *l_159 = &p_1955->g_31;
    int i, j;
    for (p_1955->g_31 = 16; (p_1955->g_31 <= 59); p_1955->g_31++)
    { /* block id: 25 */
        int32_t *l_101 = &p_1955->g_7[0];
        int32_t **l_100 = &l_101;
        (*l_100) = &p_88;
        for (p_88 = 0; (p_88 >= 0); p_88 -= 1)
        { /* block id: 29 */
            int64_t l_110 = 0x567548BA0296C032L;
            int32_t l_121 = 0x12C12148L;
            int i;
            p_1955->g_3[(p_88 + 1)] &= (safe_rshift_func_int16_t_s_u(1L, 4));
            for (p_1955->g_105 = 0; (p_1955->g_105 <= 0); p_1955->g_105 += 1)
            { /* block id: 33 */
                int32_t *l_107 = &p_1955->g_108;
                int i;
                (*l_107) &= ((safe_unary_minus_func_uint32_t_u(p_1955->g_56[p_88])) > p_1955->g_3[(p_88 + 1)]);
                for (p_1955->g_108 = 0; (p_1955->g_108 <= 0); p_1955->g_108 += 1)
                { /* block id: 37 */
                    uint32_t l_114 = 0x5E6AD316L;
                    for (p_1955->g_109[8] = 0; (p_1955->g_109[8] <= 0); p_1955->g_109[8] += 1)
                    { /* block id: 40 */
                        int64_t *l_115 = &l_113;
                        int8_t *l_118 = (void*)0;
                        int8_t *l_119[8][8][2] = {{{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120}},{{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120}},{{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120}},{{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120}},{{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120}},{{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120}},{{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120}},{{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120},{&p_1955->g_120,&p_1955->g_120}}};
                        int32_t *l_122 = &p_1955->g_123[0];
                        int i, j, k;
                        if (l_110)
                            break;
                        (*l_122) = ((p_88 , (((safe_mul_func_int16_t_s_s(((p_88 , (l_113 , (((*l_115) = l_114) != ((&p_88 != (void*)0) , p_88)))) < (GROUP_DIVERGE(1, 1) <= (p_1955->g_108 ^ (safe_div_func_uint16_t_u_u(((l_121 = ((p_1955->g_7[3] , p_1955->g_4) <= (*p_89))) || FAKE_DIVERGE(p_1955->group_0_offset, get_group_id(0), 10)), 0x5F46L))))), 0L)) ^ 0x62L) < (*p_89))) & p_1955->g_3[0]);
                    }
                }
            }
            for (p_1955->g_108 = 0; (p_1955->g_108 <= 0); p_1955->g_108 += 1)
            { /* block id: 50 */
                for (p_1955->g_120 = 0; (p_1955->g_120 <= 0); p_1955->g_120 += 1)
                { /* block id: 53 */
                    uint16_t *l_126[5][7][7] = {{{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]}},{{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]}},{{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]}},{{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]}},{{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]},{&p_1955->g_127[0][3],&p_1955->g_127[0][3],(void*)0,&p_1955->g_127[0][1],(void*)0,&p_1955->g_127[0][3],&p_1955->g_127[0][3]}}};
                    int16_t *l_132 = &p_1955->g_133;
                    int32_t l_139[9][6];
                    int i, j, k;
                    for (i = 0; i < 9; i++)
                    {
                        for (j = 0; j < 6; j++)
                            l_139[i][j] = 0x06BD4EB1L;
                    }
                    l_139[7][5] = (((safe_rshift_func_int16_t_s_s((+((((p_88 != 0x8750L) & (((*l_132) = ((p_1955->g_127[0][3]--) , (safe_div_func_int8_t_s_s((0x4D7AA0E7L != p_1955->g_2), p_88)))) == (safe_mul_func_int16_t_s_s(0x063DL, ((((safe_rshift_func_uint8_t_u_u(p_88, 6)) == (((p_1955->g_138 != (void*)0) <= 0UL) ^ p_88)) ^ l_121) ^ 0x4AL))))) | l_110) <= 4L)), 8)) ^ p_1955->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1955->tid, 40))]) || p_1955->g_3[(p_88 + 1)]);
                    for (p_1955->g_133 = 1; (p_1955->g_133 <= 5); p_1955->g_133 += 1)
                    { /* block id: 59 */
                        int i, j;
                        l_139[(p_88 + 7)][p_1955->g_133] &= (*p_89);
                        if (l_113)
                            continue;
                    }
                    for (p_1955->g_133 = 0; (p_1955->g_133 >= 0); p_1955->g_133 -= 1)
                    { /* block id: 65 */
                        if (p_1955->g_3[1])
                            break;
                        if ((*p_89))
                            break;
                        if ((*p_89))
                            break;
                        (*p_1955->g_143) = &p_1955->g_3[1];
                    }
                }
            }
        }
        (**l_100) &= (*p_1955->g_142);
    }
    l_156++;
    return l_159;
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[40];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 40; i++)
            l_comm_values[i] = 1;
    struct S1 c_1956;
    struct S1* p_1955 = &c_1956;
    struct S1 c_1957 = {
        0x7BC75286L, // p_1955->g_2
        {3L,3L}, // p_1955->g_3
        1L, // p_1955->g_4
        {1L,1L,1L,1L}, // p_1955->g_7
        255UL, // p_1955->g_17
        0xF4B3F4B14151C8B9L, // p_1955->g_31
        {0x7279C90E69CD17CDL,0x7279C90E69CD17CDL,0x7279C90E69CD17CDL,0x7279C90E69CD17CDL,0x7279C90E69CD17CDL,0x7279C90E69CD17CDL,0x7279C90E69CD17CDL,0x7279C90E69CD17CDL,0x7279C90E69CD17CDL,0x7279C90E69CD17CDL}, // p_1955->g_35
        0x2D11E758L, // p_1955->g_47
        0x637D660FL, // p_1955->g_49
        {4294967291UL}, // p_1955->g_56
        0x60069ABCL, // p_1955->g_104
        0x7C85E2D2L, // p_1955->g_105
        (-6L), // p_1955->g_108
        {1L,0x66FA5B36L,1L,0x66FA5B36L,1L,1L,0x66FA5B36L,1L,0x66FA5B36L,1L}, // p_1955->g_109
        0L, // p_1955->g_120
        {(-1L),(-1L)}, // p_1955->g_123
        {{0UL,0UL,0UL,0UL,0UL,0UL}}, // p_1955->g_127
        0x1DE5L, // p_1955->g_133
        (void*)0, // p_1955->g_138
        (void*)0, // p_1955->g_140
        &p_1955->g_2, // p_1955->g_142
        {{{&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142},{&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142}},{{&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142},{&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142}},{{&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142},{&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142}},{{&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142},{&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142}},{{&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142},{&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142}},{{&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142},{&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142}},{{&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142},{&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142}},{{&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142},{&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142}},{{&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142},{&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142}},{{&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142},{&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142}}}, // p_1955->g_141
        &p_1955->g_142, // p_1955->g_143
        {0x11F43073L,0x11F43073L,0x11F43073L,0x11F43073L,0x11F43073L}, // p_1955->g_160
        {{{4294967295UL,0x58010A5CL,4294967295UL,0x58010A5CL,4294967295UL},{4294967295UL,0x58010A5CL,4294967295UL,0x58010A5CL,4294967295UL}}}, // p_1955->g_178
        0x46BD8380L, // p_1955->g_209
        {{0x7B45DCA988B8C5FCL,0x7B45DCA988B8C5FCL,0x7B45DCA988B8C5FCL,0x7B45DCA988B8C5FCL,0x7B45DCA988B8C5FCL}}, // p_1955->g_246
        4294967295UL, // p_1955->g_248
        {{&p_1955->g_108,(void*)0,(void*)0,&p_1955->g_108,&p_1955->g_108,(void*)0,(void*)0,&p_1955->g_108},{&p_1955->g_108,(void*)0,(void*)0,&p_1955->g_108,&p_1955->g_108,(void*)0,(void*)0,&p_1955->g_108},{&p_1955->g_108,(void*)0,(void*)0,&p_1955->g_108,&p_1955->g_108,(void*)0,(void*)0,&p_1955->g_108}}, // p_1955->g_262
        0x50DB601AL, // p_1955->g_286
        0xC27DL, // p_1955->g_288
        0x65L, // p_1955->g_296
        (-1L), // p_1955->g_353
        0x6858L, // p_1955->g_434
        0x4EL, // p_1955->g_435
        &p_1955->g_35[7], // p_1955->g_437
        &p_1955->g_437, // p_1955->g_436
        {{&p_1955->g_120,(void*)0,&p_1955->g_120,&p_1955->g_353,(void*)0},{&p_1955->g_120,(void*)0,&p_1955->g_120,&p_1955->g_353,(void*)0},{&p_1955->g_120,(void*)0,&p_1955->g_120,&p_1955->g_353,(void*)0},{&p_1955->g_120,(void*)0,&p_1955->g_120,&p_1955->g_353,(void*)0}}, // p_1955->g_449
        {&p_1955->g_449[0][1],&p_1955->g_449[0][1]}, // p_1955->g_448
        {1L,1L,1L,1L,1L,1L,1L,1L}, // p_1955->g_504
        {0x58A473685FFBF652L}, // p_1955->g_530
        0xDA75E510L, // p_1955->g_561
        &p_1955->g_448[0], // p_1955->g_599
        &p_1955->g_599, // p_1955->g_598
        {&p_1955->g_142,&p_1955->g_142,&p_1955->g_142,&p_1955->g_142}, // p_1955->g_602
        &p_1955->g_142, // p_1955->g_603
        0x53ABE80FL, // p_1955->g_623
        (void*)0, // p_1955->g_625
        &p_1955->g_142, // p_1955->g_626
        {0xDD358567D96892A6L}, // p_1955->g_637
        &p_1955->g_637, // p_1955->g_646
        &p_1955->g_286, // p_1955->g_680
        &p_1955->g_680, // p_1955->g_679
        &p_1955->g_142, // p_1955->g_753
        {0x816C9AF7EDA7C271L}, // p_1955->g_801
        &p_1955->g_801, // p_1955->g_800
        0x91D8DFACL, // p_1955->g_831
        0x32L, // p_1955->g_863
        &p_1955->g_160[3], // p_1955->g_865
        {&p_1955->g_865,&p_1955->g_865,&p_1955->g_865}, // p_1955->g_864
        {&p_1955->g_123[1],&p_1955->g_123[1],&p_1955->g_123[1],&p_1955->g_123[1],&p_1955->g_123[1],&p_1955->g_123[1],&p_1955->g_123[1],&p_1955->g_123[1],&p_1955->g_123[1]}, // p_1955->g_933
        &p_1955->g_801, // p_1955->g_954
        {{3UL,3UL,3UL,3UL,3UL,3UL,3UL},{3UL,3UL,3UL,3UL,3UL,3UL,3UL},{3UL,3UL,3UL,3UL,3UL,3UL,3UL},{3UL,3UL,3UL,3UL,3UL,3UL,3UL},{3UL,3UL,3UL,3UL,3UL,3UL,3UL}}, // p_1955->g_981
        &p_1955->g_142, // p_1955->g_1033
        {{&p_1955->g_933[1]},{&p_1955->g_933[1]},{&p_1955->g_933[1]},{&p_1955->g_933[1]},{&p_1955->g_933[1]}}, // p_1955->g_1078
        &p_1955->g_933[0], // p_1955->g_1079
        &p_1955->g_801, // p_1955->g_1091
        {&p_1955->g_262[1][7],&p_1955->g_262[1][7],&p_1955->g_262[1][7],&p_1955->g_262[1][7],&p_1955->g_262[1][7],&p_1955->g_262[1][7],&p_1955->g_262[1][7]}, // p_1955->g_1153
        &p_1955->g_933[6], // p_1955->g_1154
        {&p_1955->g_262[0][4],&p_1955->g_262[0][4],&p_1955->g_262[0][4],&p_1955->g_262[0][4],&p_1955->g_262[0][4],&p_1955->g_262[0][4],&p_1955->g_262[0][4],&p_1955->g_262[0][4],&p_1955->g_262[0][4]}, // p_1955->g_1295
        &p_1955->g_865, // p_1955->g_1302
        &p_1955->g_1302, // p_1955->g_1301
        &p_1955->g_1301, // p_1955->g_1300
        &p_1955->g_449[3][4], // p_1955->g_1325
        &p_1955->g_1325, // p_1955->g_1324
        &p_1955->g_262[1][5], // p_1955->g_1346
        &p_1955->g_933[0], // p_1955->g_1412
        &p_1955->g_933[3], // p_1955->g_1416
        {253UL,1UL,255UL,1UL,253UL,253UL,1UL,255UL,1UL,253UL}, // p_1955->g_1423
        1L, // p_1955->g_1447
        {{&p_1955->g_1447,&p_1955->g_1447,&p_1955->g_1447,(void*)0,&p_1955->g_1447,(void*)0,&p_1955->g_1447},{&p_1955->g_1447,&p_1955->g_1447,&p_1955->g_1447,(void*)0,&p_1955->g_1447,(void*)0,&p_1955->g_1447},{&p_1955->g_1447,&p_1955->g_1447,&p_1955->g_1447,(void*)0,&p_1955->g_1447,(void*)0,&p_1955->g_1447},{&p_1955->g_1447,&p_1955->g_1447,&p_1955->g_1447,(void*)0,&p_1955->g_1447,(void*)0,&p_1955->g_1447},{&p_1955->g_1447,&p_1955->g_1447,&p_1955->g_1447,(void*)0,&p_1955->g_1447,(void*)0,&p_1955->g_1447},{&p_1955->g_1447,&p_1955->g_1447,&p_1955->g_1447,(void*)0,&p_1955->g_1447,(void*)0,&p_1955->g_1447}}, // p_1955->g_1446
        &p_1955->g_1446[5][4], // p_1955->g_1445
        &p_1955->g_1445, // p_1955->g_1444
        &p_1955->g_262[2][3], // p_1955->g_1513
        &p_1955->g_142, // p_1955->g_1515
        &p_1955->g_933[1], // p_1955->g_1616
        {{{&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437},{&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437},{&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437},{&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437}},{{&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437},{&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437},{&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437},{&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437}},{{&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437},{&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437},{&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437},{&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437}},{{&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437},{&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437},{&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437},{&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437}},{{&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437},{&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437},{&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437},{&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437}},{{&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437},{&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437},{&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437},{&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437,&p_1955->g_437}}}, // p_1955->g_1624
        &p_1955->g_864[1], // p_1955->g_1682
        &p_1955->g_1682, // p_1955->g_1681
        &p_1955->g_637, // p_1955->g_1692
        &p_1955->g_637, // p_1955->g_1717
        0x2BA46716L, // p_1955->g_1746
        &p_1955->g_637, // p_1955->g_1839
        &p_1955->g_1839, // p_1955->g_1838
        {{&p_1955->g_933[1]},{&p_1955->g_933[1]},{&p_1955->g_933[1]},{&p_1955->g_933[1]}}, // p_1955->g_1842
        &p_1955->g_623, // p_1955->g_1851
        &p_1955->g_262[2][0], // p_1955->g_1864
        0L, // p_1955->g_1933
        (void*)0, // p_1955->g_1937
        {{{&p_1955->g_262[1][5],&p_1955->g_262[1][5],&p_1955->g_262[1][5]},{&p_1955->g_262[1][5],&p_1955->g_262[1][5],&p_1955->g_262[1][5]},{&p_1955->g_262[1][5],&p_1955->g_262[1][5],&p_1955->g_262[1][5]},{&p_1955->g_262[1][5],&p_1955->g_262[1][5],&p_1955->g_262[1][5]},{&p_1955->g_262[1][5],&p_1955->g_262[1][5],&p_1955->g_262[1][5]},{&p_1955->g_262[1][5],&p_1955->g_262[1][5],&p_1955->g_262[1][5]},{&p_1955->g_262[1][5],&p_1955->g_262[1][5],&p_1955->g_262[1][5]}},{{&p_1955->g_262[1][5],&p_1955->g_262[1][5],&p_1955->g_262[1][5]},{&p_1955->g_262[1][5],&p_1955->g_262[1][5],&p_1955->g_262[1][5]},{&p_1955->g_262[1][5],&p_1955->g_262[1][5],&p_1955->g_262[1][5]},{&p_1955->g_262[1][5],&p_1955->g_262[1][5],&p_1955->g_262[1][5]},{&p_1955->g_262[1][5],&p_1955->g_262[1][5],&p_1955->g_262[1][5]},{&p_1955->g_262[1][5],&p_1955->g_262[1][5],&p_1955->g_262[1][5]},{&p_1955->g_262[1][5],&p_1955->g_262[1][5],&p_1955->g_262[1][5]}}}, // p_1955->g_1939
        &p_1955->g_933[1], // p_1955->g_1941
        (-1L), // p_1955->g_1950
        sequence_input[get_global_id(0)], // p_1955->global_0_offset
        sequence_input[get_global_id(1)], // p_1955->global_1_offset
        sequence_input[get_global_id(2)], // p_1955->global_2_offset
        sequence_input[get_local_id(0)], // p_1955->local_0_offset
        sequence_input[get_local_id(1)], // p_1955->local_1_offset
        sequence_input[get_local_id(2)], // p_1955->local_2_offset
        sequence_input[get_group_id(0)], // p_1955->group_0_offset
        sequence_input[get_group_id(1)], // p_1955->group_1_offset
        sequence_input[get_group_id(2)], // p_1955->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 40)), permutations[0][get_linear_local_id()])), // p_1955->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1956 = c_1957;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1955);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1955->g_2, "p_1955->g_2", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1955->g_3[i], "p_1955->g_3[i]", print_hash_value);

    }
    transparent_crc(p_1955->g_4, "p_1955->g_4", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1955->g_7[i], "p_1955->g_7[i]", print_hash_value);

    }
    transparent_crc(p_1955->g_17, "p_1955->g_17", print_hash_value);
    transparent_crc(p_1955->g_31, "p_1955->g_31", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1955->g_35[i], "p_1955->g_35[i]", print_hash_value);

    }
    transparent_crc(p_1955->g_47, "p_1955->g_47", print_hash_value);
    transparent_crc(p_1955->g_49, "p_1955->g_49", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1955->g_56[i], "p_1955->g_56[i]", print_hash_value);

    }
    transparent_crc(p_1955->g_104, "p_1955->g_104", print_hash_value);
    transparent_crc(p_1955->g_105, "p_1955->g_105", print_hash_value);
    transparent_crc(p_1955->g_108, "p_1955->g_108", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1955->g_109[i], "p_1955->g_109[i]", print_hash_value);

    }
    transparent_crc(p_1955->g_120, "p_1955->g_120", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1955->g_123[i], "p_1955->g_123[i]", print_hash_value);

    }
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_1955->g_127[i][j], "p_1955->g_127[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1955->g_133, "p_1955->g_133", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1955->g_160[i], "p_1955->g_160[i]", print_hash_value);

    }
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1955->g_178[i][j][k], "p_1955->g_178[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1955->g_209, "p_1955->g_209", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1955->g_246[i][j], "p_1955->g_246[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1955->g_248, "p_1955->g_248", print_hash_value);
    transparent_crc(p_1955->g_286, "p_1955->g_286", print_hash_value);
    transparent_crc(p_1955->g_288, "p_1955->g_288", print_hash_value);
    transparent_crc(p_1955->g_296, "p_1955->g_296", print_hash_value);
    transparent_crc(p_1955->g_353, "p_1955->g_353", print_hash_value);
    transparent_crc(p_1955->g_434, "p_1955->g_434", print_hash_value);
    transparent_crc(p_1955->g_435, "p_1955->g_435", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1955->g_504[i], "p_1955->g_504[i]", print_hash_value);

    }
    transparent_crc(p_1955->g_530.f0, "p_1955->g_530.f0", print_hash_value);
    transparent_crc(p_1955->g_561, "p_1955->g_561", print_hash_value);
    transparent_crc(p_1955->g_623, "p_1955->g_623", print_hash_value);
    transparent_crc(p_1955->g_637.f0, "p_1955->g_637.f0", print_hash_value);
    transparent_crc(p_1955->g_801.f0, "p_1955->g_801.f0", print_hash_value);
    transparent_crc(p_1955->g_831, "p_1955->g_831", print_hash_value);
    transparent_crc(p_1955->g_863, "p_1955->g_863", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1955->g_981[i][j], "p_1955->g_981[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1955->g_1423[i], "p_1955->g_1423[i]", print_hash_value);

    }
    transparent_crc(p_1955->g_1447, "p_1955->g_1447", print_hash_value);
    transparent_crc(p_1955->g_1746, "p_1955->g_1746", print_hash_value);
    transparent_crc(p_1955->g_1933, "p_1955->g_1933", print_hash_value);
    transparent_crc(p_1955->g_1950, "p_1955->g_1950", print_hash_value);
    transparent_crc(p_1955->l_comm_values[get_linear_local_id()], "p_1955->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1955->g_comm_values[get_linear_group_id() * 40 + get_linear_local_id()], "p_1955->g_comm_values[get_linear_group_id() * 40 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
