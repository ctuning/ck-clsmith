// --atomics 19 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 72,10,3 -l 4,10,3
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

__constant uint32_t permutations[10][120] = {
{46,22,95,72,31,113,69,34,115,85,19,28,6,82,1,114,39,21,102,35,105,79,40,5,9,96,24,110,86,50,93,75,111,97,107,62,91,119,54,8,108,12,17,103,42,3,71,65,61,118,76,49,81,16,70,32,92,4,112,53,104,13,45,14,80,27,55,64,52,0,117,78,43,20,47,68,41,77,83,15,99,90,2,89,59,74,44,25,101,30,109,66,67,26,100,48,11,23,38,7,88,63,87,60,58,94,36,33,18,57,84,37,51,29,98,116,73,10,56,106}, // permutation 0
{74,116,95,18,52,36,76,8,24,68,59,100,50,3,118,60,119,86,81,48,88,57,62,113,16,111,70,37,11,14,7,80,97,45,21,30,109,2,102,78,20,38,13,108,107,58,41,10,66,9,106,85,12,23,1,104,22,44,110,27,5,65,94,75,15,4,79,17,19,93,77,83,40,0,105,112,73,91,55,117,31,67,46,6,71,90,72,98,103,53,35,39,42,54,63,49,47,29,101,25,114,33,92,34,61,96,32,89,115,26,82,56,64,43,28,87,99,69,51,84}, // permutation 1
{55,44,111,117,20,112,56,46,108,66,82,31,32,40,28,81,25,22,4,75,78,105,79,99,45,74,5,19,64,50,11,67,0,114,109,91,70,69,48,3,76,6,24,110,98,77,85,58,12,2,61,107,52,104,15,89,86,97,80,34,60,8,18,1,30,49,17,27,116,94,73,59,88,23,90,29,83,36,38,87,42,57,65,84,39,115,35,41,63,68,33,92,51,93,13,54,106,95,118,9,119,103,21,53,43,14,62,113,96,72,16,102,100,37,47,26,7,71,10,101}, // permutation 2
{92,48,32,33,50,95,14,91,90,56,31,77,42,117,5,57,102,4,105,101,18,10,7,6,113,60,116,100,106,86,64,99,85,62,63,80,44,119,8,22,111,11,93,73,30,114,28,52,118,84,16,3,55,54,1,98,46,41,68,12,97,13,65,34,75,87,20,66,115,25,40,94,69,83,45,49,2,59,43,107,89,67,110,112,70,21,51,15,58,78,71,103,53,17,104,61,35,109,0,38,82,79,23,74,47,76,39,26,96,88,27,9,108,81,19,24,37,29,72,36}, // permutation 3
{10,87,112,97,7,67,35,100,106,44,36,0,110,5,12,29,17,75,43,74,86,55,78,109,9,94,62,70,16,71,40,25,50,72,99,27,28,103,57,83,92,32,31,38,93,47,77,3,85,53,58,19,37,22,30,81,108,107,18,56,116,115,98,73,14,61,20,90,117,41,8,1,101,46,2,119,96,6,4,49,23,51,39,84,102,24,63,42,111,11,69,15,95,33,65,88,26,48,13,76,91,52,82,60,45,113,104,66,118,21,105,68,79,64,34,59,89,80,114,54}, // permutation 4
{99,15,39,48,23,82,111,96,107,47,79,26,113,109,110,21,70,49,11,37,69,5,89,114,90,7,2,74,65,34,58,119,95,35,0,51,28,66,19,98,24,50,25,22,67,40,117,88,44,45,77,31,13,80,118,59,30,104,84,97,115,18,3,76,54,43,62,42,108,36,14,41,87,94,53,8,61,4,106,91,100,101,20,32,105,64,73,16,56,52,86,78,116,29,83,68,85,33,6,27,71,1,57,55,81,63,75,38,12,46,92,103,102,17,60,9,72,10,93,112}, // permutation 5
{26,118,73,51,65,113,37,0,107,20,103,21,54,96,85,22,53,5,87,86,98,83,29,14,59,105,44,27,106,63,4,102,8,111,9,68,28,79,75,3,88,95,30,74,52,41,78,10,33,93,94,82,110,38,12,108,66,89,119,90,109,11,84,91,15,77,34,40,16,97,17,115,42,45,25,112,24,61,6,117,23,47,76,43,72,104,36,56,50,69,60,101,18,2,67,62,49,58,48,19,55,92,57,116,80,7,1,32,46,114,35,31,99,64,70,71,100,13,39,81}, // permutation 6
{105,91,70,4,14,11,68,16,93,38,89,85,10,9,101,61,3,113,104,33,80,98,36,47,112,115,73,90,49,75,15,46,19,48,20,35,45,54,51,97,44,2,99,59,0,56,29,84,82,65,39,92,62,117,17,83,118,1,79,77,32,60,111,18,88,24,31,23,34,50,66,95,12,102,26,87,69,58,37,21,43,25,67,103,27,108,55,40,53,7,114,41,30,8,64,57,119,28,116,86,76,71,13,106,81,96,52,74,63,5,94,78,42,22,109,72,107,110,6,100}, // permutation 7
{30,43,13,96,7,108,50,0,92,106,80,34,9,51,23,54,64,94,2,25,59,48,102,65,97,116,27,14,98,63,112,11,24,16,119,38,87,56,66,109,89,29,44,62,76,74,100,113,85,36,60,1,53,75,20,118,57,90,39,73,115,40,19,78,18,12,88,81,86,6,28,42,70,71,26,93,52,69,45,114,99,47,41,5,68,58,10,104,32,15,55,101,33,77,111,110,3,35,82,83,22,46,72,4,49,21,91,107,8,79,105,67,95,117,61,84,37,17,31,103}, // permutation 8
{99,68,69,85,117,100,10,82,74,4,14,65,75,53,22,83,40,112,115,61,38,84,31,25,13,106,67,44,73,88,63,27,93,101,87,77,110,81,59,102,11,60,57,36,45,18,114,113,89,26,80,15,55,30,96,98,52,95,72,116,19,108,90,2,6,105,34,46,24,66,35,62,76,118,33,64,21,71,119,5,20,47,42,54,97,104,86,111,29,56,92,17,0,48,94,39,49,32,9,41,16,3,51,70,7,8,23,79,78,12,109,91,43,107,103,58,37,50,28,1} // permutation 9
};

// Seed: 114

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   volatile int32_t  f0;
};

union U1 {
   int32_t  f0;
   uint64_t  f1;
};

struct S2 {
    int32_t g_2;
    VECTOR(int32_t, 2) g_46;
    int32_t g_62;
    int32_t * volatile g_61;
    uint64_t g_75;
    union U0 g_80;
    VECTOR(int32_t, 2) g_134;
    int8_t g_150;
    volatile VECTOR(int8_t, 8) g_155;
    volatile VECTOR(int8_t, 4) g_156;
    int8_t *g_158[1][6];
    int16_t g_163;
    volatile int16_t g_164;
    int32_t *g_173;
    int32_t ** volatile g_172[1];
    union U1 g_175;
    volatile VECTOR(uint64_t, 4) g_184;
    VECTOR(uint64_t, 8) g_187;
    volatile union U0 g_188;
    uint16_t g_201;
    int8_t *g_255;
    VECTOR(int32_t, 16) g_265;
    VECTOR(int32_t, 4) g_266;
    VECTOR(uint32_t, 4) g_271;
    volatile int64_t g_294;
    int64_t *g_306;
    int64_t **g_305[2][7];
    int64_t *** volatile g_304;
    int32_t ** volatile g_307;
    int32_t ** volatile g_308;
    uint8_t g_365;
    uint8_t g_368;
    int32_t *g_682;
    volatile union U0 g_693;
    VECTOR(int8_t, 16) g_696;
    uint16_t g_705;
    uint32_t *g_707[4][8][8];
    uint32_t **g_706;
    VECTOR(uint8_t, 8) g_757;
    VECTOR(uint32_t, 16) g_758;
    VECTOR(uint16_t, 2) g_888;
    VECTOR(uint16_t, 16) g_889;
    VECTOR(int64_t, 8) g_891;
    int64_t g_893;
    int64_t g_895[1];
    int32_t * volatile g_939;
    int32_t ** volatile g_951;
    volatile VECTOR(int8_t, 4) g_966;
    VECTOR(uint8_t, 2) g_968;
    int64_t *** volatile g_975;
    volatile VECTOR(uint64_t, 16) g_980;
    int16_t *g_995;
    int16_t **g_994[4][1][4];
    volatile VECTOR(int8_t, 16) g_1040;
    VECTOR(int64_t, 4) g_1041;
    int32_t ** volatile g_1048;
    int32_t ** volatile g_1049;
    int32_t ** volatile g_1050;
    int64_t *g_1056;
    volatile VECTOR(int64_t, 16) g_1114;
    uint32_t g_1152;
    int32_t g_1169;
    uint32_t g_1181;
    int32_t ** volatile g_1184;
    int8_t g_1191;
    int32_t * volatile g_1209;
    VECTOR(uint32_t, 4) g_1255;
    volatile VECTOR(int16_t, 2) g_1259;
    int32_t * volatile g_1263;
    int32_t * volatile g_1264;
    int32_t * volatile g_1288;
    volatile int8_t g_1302;
    uint32_t **g_1330[7];
    VECTOR(uint32_t, 8) g_1336;
    volatile VECTOR(uint32_t, 4) g_1337;
    volatile VECTOR(int8_t, 4) g_1349;
    VECTOR(int32_t, 16) g_1425;
    int32_t * volatile g_1428;
    int32_t * volatile g_1429;
    int32_t g_1440[9];
    union U0 **g_1447;
    union U1 *g_1462;
    uint32_t g_1472[10];
    volatile union U0 g_1495[1];
    VECTOR(int32_t, 8) g_1499;
    int64_t g_1506[7];
    int64_t g_1508[7][8];
    int8_t g_1541;
    uint64_t g_1542;
    uint8_t g_1554;
    volatile VECTOR(uint8_t, 8) g_1579;
    int16_t g_1608;
    VECTOR(int64_t, 2) g_1623;
    VECTOR(int8_t, 4) g_1649;
    volatile union U0 g_1650;
    VECTOR(int8_t, 16) g_1655;
    int32_t ** volatile g_1683;
    volatile uint64_t g_1691[7];
    volatile uint64_t *g_1690;
    volatile uint64_t * volatile * volatile g_1689;
    volatile uint64_t * volatile * volatile *g_1688;
    volatile VECTOR(uint64_t, 16) g_1696;
    int8_t **g_1710;
    int8_t ***g_1709[8][3][6];
    VECTOR(uint64_t, 8) g_1746;
    VECTOR(int16_t, 4) g_1767;
    int32_t g_1768[2][10][7];
    volatile uint32_t g_1837;
    VECTOR(int8_t, 2) g_1853;
    VECTOR(uint32_t, 2) g_1889;
    uint32_t v_collective;
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
    __local volatile uint32_t *l_atomic_input;
    __local volatile uint32_t *l_special_values;
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
uint64_t  func_1(struct S2 * p_1912);
int32_t * func_5(int32_t  p_6, int16_t  p_7, int32_t  p_8, struct S2 * p_1912);
int32_t  func_9(uint64_t  p_10, int32_t * p_11, struct S2 * p_1912);
int32_t * func_13(int64_t  p_14, int32_t * p_15, int32_t * p_16, int32_t  p_17, uint32_t  p_18, struct S2 * p_1912);
uint8_t  func_19(uint32_t  p_20, int32_t * p_21, struct S2 * p_1912);
int32_t * func_30(uint8_t  p_31, int16_t  p_32, int32_t  p_33, struct S2 * p_1912);
uint8_t  func_34(int32_t  p_35, int32_t  p_36, uint32_t  p_37, uint32_t  p_38, struct S2 * p_1912);
uint8_t  func_51(uint8_t  p_52, struct S2 * p_1912);
int8_t  func_57(int16_t  p_58, int8_t * p_59, int32_t * p_60, struct S2 * p_1912);
union U1  func_68(uint64_t  p_69, int16_t  p_70, uint8_t  p_71, struct S2 * p_1912);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1912->g_2 p_1912->g_1889 p_1912->g_995 p_1912->g_163 p_1912->g_966 p_1912->g_1649 p_1912->g_1288 p_1912->g_62 p_1912->g_682 p_1912->g_175.f0 p_1912->g_1688 p_1912->g_1689 p_1912->g_255 p_1912->g_150 p_1912->g_1690 p_1912->g_1691
 * writes: p_1912->g_2 p_1912->g_175.f0
 */
uint64_t  func_1(struct S2 * p_1912)
{ /* block id: 4 */
    int8_t l_22 = 0x57L;
    VECTOR(int8_t, 8) l_24 = (VECTOR(int8_t, 8))(6L, (VECTOR(int8_t, 4))(6L, (VECTOR(int8_t, 2))(6L, 0x14L), 0x14L), 0x14L, 6L, 0x14L);
    int32_t l_29 = 0L;
    VECTOR(int32_t, 8) l_45 = (VECTOR(int32_t, 8))(7L, (VECTOR(int32_t, 4))(7L, (VECTOR(int32_t, 2))(7L, 0x16D72793L), 0x16D72793L), 0x16D72793L, 7L, 0x16D72793L);
    int32_t *l_310 = (void*)0;
    int16_t **l_1788 = &p_1912->g_995;
    int64_t **l_1792 = &p_1912->g_306;
    int8_t l_1804 = (-1L);
    uint8_t l_1806 = 3UL;
    VECTOR(uint8_t, 8) l_1823 = (VECTOR(uint8_t, 8))(0xEAL, (VECTOR(uint8_t, 4))(0xEAL, (VECTOR(uint8_t, 2))(0xEAL, 6UL), 6UL), 6UL, 0xEAL, 6UL);
    uint32_t *l_1847 = &p_1912->g_1472[2];
    uint32_t **l_1846 = &l_1847;
    int32_t l_1854 = (-1L);
    int32_t *l_1883 = (void*)0;
    int16_t l_1885[8];
    VECTOR(uint32_t, 4) l_1888 = (VECTOR(uint32_t, 4))(4294967293UL, (VECTOR(uint32_t, 2))(4294967293UL, 4294967293UL), 4294967293UL);
    VECTOR(uint32_t, 8) l_1890 = (VECTOR(uint32_t, 8))(0xA5FD5C3AL, (VECTOR(uint32_t, 4))(0xA5FD5C3AL, (VECTOR(uint32_t, 2))(0xA5FD5C3AL, 0xA7C490E5L), 0xA7C490E5L), 0xA7C490E5L, 0xA5FD5C3AL, 0xA7C490E5L);
    VECTOR(int8_t, 2) l_1893 = (VECTOR(int8_t, 2))(0x68L, (-2L));
    VECTOR(int8_t, 16) l_1894 = (VECTOR(int8_t, 16))(0x69L, (VECTOR(int8_t, 4))(0x69L, (VECTOR(int8_t, 2))(0x69L, 0x00L), 0x00L), 0x00L, 0x69L, 0x00L, (VECTOR(int8_t, 2))(0x69L, 0x00L), (VECTOR(int8_t, 2))(0x69L, 0x00L), 0x69L, 0x00L, 0x69L, 0x00L);
    union U1 l_1895 = {-8L};
    uint8_t *l_1904[2];
    uint32_t l_1905 = 4294967286UL;
    uint16_t l_1906 = 0x1599L;
    uint32_t l_1907[6] = {7UL,0x73613246L,7UL,7UL,0x73613246L,7UL};
    uint32_t l_1908 = 4294967286UL;
    uint32_t *l_1909 = (void*)0;
    uint32_t *l_1910 = &l_1907[5];
    uint32_t l_1911[8][5][6] = {{{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L},{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L},{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L},{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L},{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L}},{{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L},{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L},{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L},{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L},{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L}},{{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L},{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L},{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L},{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L},{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L}},{{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L},{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L},{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L},{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L},{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L}},{{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L},{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L},{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L},{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L},{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L}},{{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L},{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L},{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L},{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L},{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L}},{{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L},{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L},{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L},{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L},{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L}},{{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L},{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L},{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L},{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L},{0x69FC186FL,0xA76C0FFBL,0x28B0E1DEL,0xC8F806F3L,0x2E3E7599L,0xC8F806F3L}}};
    int i, j, k;
    for (i = 0; i < 8; i++)
        l_1885[i] = 0L;
    for (i = 0; i < 2; i++)
        l_1904[i] = &p_1912->g_365;
    for (p_1912->g_2 = (-3); (p_1912->g_2 <= 13); p_1912->g_2 = safe_add_func_uint64_t_u_u(p_1912->g_2, 3))
    { /* block id: 7 */
        int16_t l_12 = 1L;
        int8_t *l_25 = (void*)0;
        int8_t *l_26 = (void*)0;
        int8_t *l_27 = (void*)0;
        int8_t *l_28[5][7][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
        int32_t **l_1712 = &p_1912->g_173;
        int32_t l_1718 = 0L;
        int16_t **l_1776 = &p_1912->g_995;
        uint32_t l_1803[6][10] = {{4294967295UL,0x52AEBD4BL,0x876901E4L,4294967295UL,4294967288UL,0x876901E4L,0x876901E4L,4294967288UL,4294967295UL,0x876901E4L},{4294967295UL,0x52AEBD4BL,0x876901E4L,4294967295UL,4294967288UL,0x876901E4L,0x876901E4L,4294967288UL,4294967295UL,0x876901E4L},{4294967295UL,0x52AEBD4BL,0x876901E4L,4294967295UL,4294967288UL,0x876901E4L,0x876901E4L,4294967288UL,4294967295UL,0x876901E4L},{4294967295UL,0x52AEBD4BL,0x876901E4L,4294967295UL,4294967288UL,0x876901E4L,0x876901E4L,4294967288UL,4294967295UL,0x876901E4L},{4294967295UL,0x52AEBD4BL,0x876901E4L,4294967295UL,4294967288UL,0x876901E4L,0x876901E4L,4294967288UL,4294967295UL,0x876901E4L},{4294967295UL,0x52AEBD4BL,0x876901E4L,4294967295UL,4294967288UL,0x876901E4L,0x876901E4L,4294967288UL,4294967295UL,0x876901E4L}};
        int16_t l_1840[7];
        int32_t l_1860 = 0L;
        int32_t l_1861 = 0x4E7022C9L;
        int32_t l_1862 = 0x53DC631AL;
        int32_t l_1863 = (-1L);
        uint16_t l_1864 = 0x1913L;
        int i, j, k;
        for (i = 0; i < 7; i++)
            l_1840[i] = 0x7F81L;
        (1 + 1);
    }
    (*p_1912->g_682) = ((l_1885[4] | (safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 8))(1UL, ((VECTOR(uint32_t, 4))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 4),((VECTOR(uint32_t, 16))(l_1888.zzyyyyywwxzyxwyy)).sdb0d, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(p_1912->g_1889.yy)))).yyxx))), ((VECTOR(uint32_t, 2))(l_1890.s05)), 5UL)).s1, (0L && (((-1L) & ((*l_1910) = (l_1908 = (safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 4))(abs_diff(((VECTOR(int8_t, 8))(max(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 8))((-2L), ((VECTOR(int8_t, 4))(l_1893.yxxy)), l_45.s2, (-1L), 0x0EL)).hi, ((VECTOR(int8_t, 8))(l_1894.s33d0bf8a)).hi, ((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 16))((3UL > (((VECTOR(int32_t, 2))(0x7CA8E68CL, (-5L))).odd < 0x63C6C1BFL)), (l_1895 , (((safe_mod_func_uint8_t_u_u(((((FAKE_DIVERGE(p_1912->local_1_offset, get_local_id(1), 10) || (((safe_mod_func_int32_t_s_s(((((safe_mul_func_uint8_t_u_u(((1UL != ((safe_mul_func_uint8_t_u_u((l_1905 = 0x10L), FAKE_DIVERGE(p_1912->group_1_offset, get_group_id(1), 10))) < (*p_1912->g_995))) , p_1912->g_966.z), p_1912->g_1649.z)) & 0L) , (*p_1912->g_1288)) <= FAKE_DIVERGE(p_1912->global_0_offset, get_global_id(0), 10)), (*p_1912->g_682))) && l_1906) && l_1885[4])) == 0L) , (*p_1912->g_1688)) != (void*)0), (*p_1912->g_255))) >= (-1L)) | l_1907[5])), l_1823.s3, (*p_1912->g_255), ((VECTOR(int8_t, 4))(0x7CL)), 0x46L, 0x22L, ((VECTOR(int8_t, 4))(3L)), (-1L), (-1L))).s1b, ((VECTOR(int8_t, 2))((-1L)))))).xyyy))).hi)).xyxxxyxy, (int8_t)0x12L))).hi, ((VECTOR(int8_t, 4))(0x70L))))).y, 0))))) , l_1911[5][0][1]))))) | l_1906);
    return (***p_1912->g_1688);
}


/* ------------------------------------------ */
/* 
 * reads : p_1912->g_163 p_1912->g_1683 p_1912->g_1191 p_1912->g_1688 p_1912->g_62 p_1912->g_1696 p_1912->g_1649 p_1912->g_895 p_1912->g_150 p_1912->g_1709 p_1912->g_1184 p_1912->g_682
 * writes: p_1912->g_163 p_1912->g_173 p_1912->g_1191 p_1912->g_62 p_1912->g_895 p_1912->g_150 p_1912->g_1709
 */
int32_t * func_5(int32_t  p_6, int16_t  p_7, int32_t  p_8, struct S2 * p_1912)
{ /* block id: 594 */
    VECTOR(int32_t, 16) l_1320 = (VECTOR(int32_t, 16))(0x23127579L, (VECTOR(int32_t, 4))(0x23127579L, (VECTOR(int32_t, 2))(0x23127579L, (-1L)), (-1L)), (-1L), 0x23127579L, (-1L), (VECTOR(int32_t, 2))(0x23127579L, (-1L)), (VECTOR(int32_t, 2))(0x23127579L, (-1L)), 0x23127579L, (-1L), 0x23127579L, (-1L));
    int64_t **l_1322 = &p_1912->g_306;
    int32_t l_1354 = 0x45C833E8L;
    union U1 *l_1449[4] = {&p_1912->g_175,&p_1912->g_175,&p_1912->g_175,&p_1912->g_175};
    int32_t *l_1474 = &p_1912->g_62;
    VECTOR(uint32_t, 4) l_1482 = (VECTOR(uint32_t, 4))(4294967289UL, (VECTOR(uint32_t, 2))(4294967289UL, 0x2A2F81DBL), 0x2A2F81DBL);
    VECTOR(uint32_t, 8) l_1483 = (VECTOR(uint32_t, 8))(0x1AF70011L, (VECTOR(uint32_t, 4))(0x1AF70011L, (VECTOR(uint32_t, 2))(0x1AF70011L, 0x39E654BEL), 0x39E654BEL), 0x39E654BEL, 0x1AF70011L, 0x39E654BEL);
    VECTOR(int32_t, 8) l_1500 = (VECTOR(int32_t, 8))(0x27F22247L, (VECTOR(int32_t, 4))(0x27F22247L, (VECTOR(int32_t, 2))(0x27F22247L, 0L), 0L), 0L, 0x27F22247L, 0L);
    int16_t **l_1501[7];
    int16_t **l_1503[2][1];
    uint32_t **l_1537 = &p_1912->g_707[0][6][3];
    int8_t l_1543[9][6][4] = {{{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)}},{{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)}},{{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)}},{{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)}},{{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)}},{{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)}},{{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)}},{{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)}},{{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)},{0x30L,1L,7L,(-2L)}}};
    VECTOR(uint32_t, 16) l_1560 = (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0x44F755DDL), 0x44F755DDL), 0x44F755DDL, 0UL, 0x44F755DDL, (VECTOR(uint32_t, 2))(0UL, 0x44F755DDL), (VECTOR(uint32_t, 2))(0UL, 0x44F755DDL), 0UL, 0x44F755DDL, 0UL, 0x44F755DDL);
    uint32_t l_1629 = 0UL;
    int i, j, k;
    for (i = 0; i < 7; i++)
        l_1501[i] = &p_1912->g_995;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
            l_1503[i][j] = (void*)0;
    }
    for (p_1912->g_163 = 0; (p_1912->g_163 > 20); p_1912->g_163 = safe_add_func_int8_t_s_s(p_1912->g_163, 2))
    { /* block id: 597 */
        uint64_t *l_1316 = (void*)0;
        int64_t **l_1321[6];
        int32_t l_1323 = (-5L);
        VECTOR(uint32_t, 2) l_1344 = (VECTOR(uint32_t, 2))(0x26828590L, 0xD4BED46BL);
        int16_t *l_1375 = &p_1912->g_163;
        int32_t l_1415 = (-1L);
        int32_t l_1416 = 3L;
        int32_t l_1417 = 9L;
        int32_t l_1435 = (-4L);
        int32_t l_1436 = 0x7D0BD827L;
        int32_t l_1437 = 0x5F2D015BL;
        int32_t l_1438 = (-1L);
        int32_t l_1439[3];
        int16_t ***l_1502 = &l_1501[0];
        int64_t *l_1504 = (void*)0;
        int64_t *l_1505 = &p_1912->g_1506[4];
        int64_t *l_1507[8][5][3] = {{{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0},{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0},{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0},{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0},{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0}},{{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0},{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0},{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0},{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0},{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0}},{{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0},{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0},{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0},{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0},{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0}},{{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0},{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0},{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0},{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0},{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0}},{{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0},{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0},{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0},{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0},{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0}},{{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0},{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0},{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0},{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0},{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0}},{{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0},{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0},{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0},{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0},{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0}},{{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0},{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0},{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0},{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0},{&p_1912->g_1508[6][5],&p_1912->g_1508[6][5],(void*)0}}};
        uint32_t **l_1535[1][4] = {{&p_1912->g_707[1][6][1],&p_1912->g_707[1][6][1],&p_1912->g_707[1][6][1],&p_1912->g_707[1][6][1]}};
        uint32_t ***l_1536 = &p_1912->g_1330[2];
        uint8_t *l_1538 = (void*)0;
        uint8_t *l_1539 = (void*)0;
        uint8_t *l_1540 = &p_1912->g_365;
        int64_t ***l_1549 = &p_1912->g_305[1][0];
        VECTOR(uint16_t, 2) l_1566 = (VECTOR(uint16_t, 2))(0x9E61L, 0x62EBL);
        VECTOR(uint8_t, 8) l_1578 = (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 252UL), 252UL), 252UL, 1UL, 252UL);
        int32_t *l_1595 = &l_1439[1];
        int8_t l_1613 = 1L;
        uint16_t l_1628 = 0x7AECL;
        uint64_t l_1646 = 18446744073709551614UL;
        int i, j, k;
        for (i = 0; i < 6; i++)
            l_1321[i] = &p_1912->g_306;
        for (i = 0; i < 3; i++)
            l_1439[i] = 0x6E48E82CL;
        (1 + 1);
    }
    for (p_6 = (-7); (p_6 == 4); p_6 = safe_add_func_uint32_t_u_u(p_6, 7))
    { /* block id: 734 */
        int32_t *l_1682[1];
        int i;
        for (i = 0; i < 1; i++)
            l_1682[i] = (void*)0;
        (*p_1912->g_1683) = l_1682[0];
    }
    for (p_1912->g_1191 = 0; (p_1912->g_1191 < (-5)); --p_1912->g_1191)
    { /* block id: 739 */
        VECTOR(int32_t, 2) l_1692 = (VECTOR(int32_t, 2))(0x06312771L, 0L);
        VECTOR(int32_t, 2) l_1693 = (VECTOR(int32_t, 2))(0x157AC739L, (-1L));
        int64_t *l_1699 = (void*)0;
        int64_t *l_1700 = (void*)0;
        int64_t *l_1701 = (void*)0;
        int64_t *l_1702 = &p_1912->g_895[0];
        int32_t *l_1703 = (void*)0;
        int32_t *l_1704 = &l_1354;
        int8_t l_1707 = 5L;
        int i;
        (*l_1474) = p_6;
        (*l_1704) |= (((((safe_add_func_uint32_t_u_u((((void*)0 == p_1912->g_1688) , (*l_1474)), (*l_1474))) > ((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 2))(l_1692.yy)).yyyxxxxxyxyxxxxy, ((VECTOR(int32_t, 16))(l_1693.yyxyxyxxxyxyyyyy))))).s5) >= ((safe_sub_func_uint64_t_u_u(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(p_1912->g_1696.s2e)).xyxy)).x, (safe_div_func_uint64_t_u_u((((void*)0 != &p_7) && p_1912->g_1649.y), ((p_7 ^= (0L && ((*l_1702) |= (*l_1474)))) & l_1692.x))))) , p_7)) <= p_6) > 0x07B071EAL);
        for (p_1912->g_150 = (-22); (p_1912->g_150 >= (-5)); p_1912->g_150++)
        { /* block id: 746 */
            int32_t l_1708 = 1L;
            int8_t ****l_1711 = &p_1912->g_1709[3][1][3];
            if (l_1707)
                break;
            if (l_1708)
                break;
            (*l_1704) = (((*l_1711) = p_1912->g_1709[1][1][3]) != &p_1912->g_1710);
            (*l_1474) = 7L;
        }
    }
    return (*p_1912->g_1184);
}


/* ------------------------------------------ */
/* 
 * reads : p_1912->g_75 p_1912->g_265 p_1912->g_201 p_1912->g_2 p_1912->g_682 p_1912->g_175.f0 p_1912->g_80.f0 p_1912->g_757 p_1912->g_758 p_1912->g_696 p_1912->g_134 p_1912->g_693 p_1912->g_188.f0 p_1912->g_187 p_1912->g_888 p_1912->g_889 p_1912->g_891 p_1912->g_1114 p_1912->g_46 p_1912->g_895 p_1912->g_968 p_1912->g_163 p_1912->g_1152 p_1912->g_951 p_1912->g_706 p_1912->g_80 p_1912->g_61 p_1912->g_62 p_1912->l_comm_values p_1912->g_comm_values p_1912->g_175 p_1912->g_266 p_1912->g_1181 p_1912->g_1184 p_1912->g_995 p_1912->g_1191 p_1912->g_368 p_1912->g_1209 p_1912->g_306 p_1912->g_1255 p_1912->g_1259 p_1912->g_705 p_1912->g_893 p_1912->g_1288 p_1912->g_188
 * writes: p_1912->g_150 p_1912->g_201 p_1912->g_706 p_1912->g_175.f0 p_1912->g_46 p_1912->g_163 p_1912->g_187 p_1912->g_893 p_1912->g_895 p_1912->g_705 p_1912->l_comm_values p_1912->g_62 p_1912->g_158 p_1912->g_1169 p_1912->g_682 p_1912->g_1191 p_1912->g_1181
 */
int32_t  func_9(uint64_t  p_10, int32_t * p_11, struct S2 * p_1912)
{ /* block id: 339 */
    int32_t l_719 = 0x4F8EB071L;
    union U0 *l_725 = &p_1912->g_80;
    union U0 **l_724 = &l_725;
    union U0 *l_726 = &p_1912->g_80;
    int8_t *l_729 = &p_1912->g_150;
    uint64_t *l_730 = (void*)0;
    uint8_t l_731 = 0xD5L;
    VECTOR(uint64_t, 8) l_741 = (VECTOR(uint64_t, 8))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0xCCEEA473D6D29CC2L), 0xCCEEA473D6D29CC2L), 0xCCEEA473D6D29CC2L, 0UL, 0xCCEEA473D6D29CC2L);
    VECTOR(uint64_t, 8) l_742 = (VECTOR(uint64_t, 8))(0x46B22B43FD81D559L, (VECTOR(uint64_t, 4))(0x46B22B43FD81D559L, (VECTOR(uint64_t, 2))(0x46B22B43FD81D559L, 0x476BBC37FB586080L), 0x476BBC37FB586080L), 0x476BBC37FB586080L, 0x46B22B43FD81D559L, 0x476BBC37FB586080L);
    VECTOR(int8_t, 4) l_753 = (VECTOR(int8_t, 4))((-2L), (VECTOR(int8_t, 2))((-2L), 0x67L), 0x67L);
    int64_t l_899 = 0x78328F6852363DF9L;
    int32_t l_902 = 0x7601DA13L;
    int32_t l_906[10] = {1L,0L,1L,1L,0L,1L,1L,0L,1L,1L};
    VECTOR(uint64_t, 2) l_965 = (VECTOR(uint64_t, 2))(0x582DEEA87B35EAE5L, 0xD91B210E2E69594EL);
    uint64_t *l_971 = (void*)0;
    int16_t *l_1034 = &p_1912->g_163;
    VECTOR(int32_t, 16) l_1055 = (VECTOR(int32_t, 16))(0x7BB05F74L, (VECTOR(int32_t, 4))(0x7BB05F74L, (VECTOR(int32_t, 2))(0x7BB05F74L, 0x2BA52F56L), 0x2BA52F56L), 0x2BA52F56L, 0x7BB05F74L, 0x2BA52F56L, (VECTOR(int32_t, 2))(0x7BB05F74L, 0x2BA52F56L), (VECTOR(int32_t, 2))(0x7BB05F74L, 0x2BA52F56L), 0x7BB05F74L, 0x2BA52F56L, 0x7BB05F74L, 0x2BA52F56L);
    VECTOR(int64_t, 2) l_1115 = (VECTOR(int64_t, 2))(1L, (-1L));
    VECTOR(uint64_t, 4) l_1116 = (VECTOR(uint64_t, 4))(0xF90156A0A6108A98L, (VECTOR(uint64_t, 2))(0xF90156A0A6108A98L, 18446744073709551614UL), 18446744073709551614UL);
    uint64_t *l_1122 = &p_1912->g_75;
    uint64_t **l_1121 = &l_1122;
    uint64_t ***l_1123 = (void*)0;
    int64_t l_1126 = 0x5D7660C7CE782F43L;
    VECTOR(uint8_t, 8) l_1132 = (VECTOR(uint8_t, 8))(0x9DL, (VECTOR(uint8_t, 4))(0x9DL, (VECTOR(uint8_t, 2))(0x9DL, 0UL), 0UL), 0UL, 0x9DL, 0UL);
    union U1 l_1180 = {8L};
    VECTOR(uint32_t, 8) l_1256 = (VECTOR(uint32_t, 8))(0xCB664185L, (VECTOR(uint32_t, 4))(0xCB664185L, (VECTOR(uint32_t, 2))(0xCB664185L, 0xB738637FL), 0xB738637FL), 0xB738637FL, 0xCB664185L, 0xB738637FL);
    VECTOR(int8_t, 2) l_1270 = (VECTOR(int8_t, 2))((-6L), 1L);
    uint32_t l_1289[7][10][3] = {{{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL}},{{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL}},{{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL}},{{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL}},{{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL}},{{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL}},{{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL},{1UL,0UL,0x962F4DDDL}}};
    VECTOR(uint16_t, 16) l_1290 = (VECTOR(uint16_t, 16))(0x309FL, (VECTOR(uint16_t, 4))(0x309FL, (VECTOR(uint16_t, 2))(0x309FL, 0x1CFAL), 0x1CFAL), 0x1CFAL, 0x309FL, 0x1CFAL, (VECTOR(uint16_t, 2))(0x309FL, 0x1CFAL), (VECTOR(uint16_t, 2))(0x309FL, 0x1CFAL), 0x309FL, 0x1CFAL, 0x309FL, 0x1CFAL);
    int16_t l_1301 = 0x63E6L;
    int32_t **l_1308[10] = {&p_1912->g_173,&p_1912->g_173,&p_1912->g_173,&p_1912->g_173,&p_1912->g_173,&p_1912->g_173,&p_1912->g_173,&p_1912->g_173,&p_1912->g_173,&p_1912->g_173};
    int i, j, k;
    if ((l_719 = (safe_div_func_int16_t_s_s((safe_rshift_func_int16_t_s_u(((-1L) && p_1912->g_75), 8)), (l_731 |= ((safe_mul_func_uint8_t_u_u((safe_add_func_int64_t_s_s(l_719, (0xFA00FC2522D85465L & (safe_sub_func_int8_t_s_s(((safe_add_func_int16_t_s_s(p_1912->g_265.s5, ((((*l_729) = ((((*l_724) = &p_1912->g_80) != l_726) == ((safe_div_func_uint32_t_u_u(p_10, (((p_10 , l_729) == l_729) ^ 0x9BL))) || p_10))) , (void*)0) == l_730))) <= 0x44L), p_10))))), 0x6CL)) & p_10))))))
    { /* block id: 344 */
        VECTOR(uint64_t, 4) l_744 = (VECTOR(uint64_t, 4))(0xE9DE17E818E5DE07L, (VECTOR(uint64_t, 2))(0xE9DE17E818E5DE07L, 0x32ABDC153E4F7755L), 0x32ABDC153E4F7755L);
        VECTOR(uint8_t, 2) l_756 = (VECTOR(uint8_t, 2))(0x65L, 0UL);
        int32_t **l_761[1][9][9] = {{{&p_1912->g_682,(void*)0,&p_1912->g_682,(void*)0,&p_1912->g_682,&p_1912->g_173,&p_1912->g_682,(void*)0,&p_1912->g_682},{&p_1912->g_682,(void*)0,&p_1912->g_682,(void*)0,&p_1912->g_682,&p_1912->g_173,&p_1912->g_682,(void*)0,&p_1912->g_682},{&p_1912->g_682,(void*)0,&p_1912->g_682,(void*)0,&p_1912->g_682,&p_1912->g_173,&p_1912->g_682,(void*)0,&p_1912->g_682},{&p_1912->g_682,(void*)0,&p_1912->g_682,(void*)0,&p_1912->g_682,&p_1912->g_173,&p_1912->g_682,(void*)0,&p_1912->g_682},{&p_1912->g_682,(void*)0,&p_1912->g_682,(void*)0,&p_1912->g_682,&p_1912->g_173,&p_1912->g_682,(void*)0,&p_1912->g_682},{&p_1912->g_682,(void*)0,&p_1912->g_682,(void*)0,&p_1912->g_682,&p_1912->g_173,&p_1912->g_682,(void*)0,&p_1912->g_682},{&p_1912->g_682,(void*)0,&p_1912->g_682,(void*)0,&p_1912->g_682,&p_1912->g_173,&p_1912->g_682,(void*)0,&p_1912->g_682},{&p_1912->g_682,(void*)0,&p_1912->g_682,(void*)0,&p_1912->g_682,&p_1912->g_173,&p_1912->g_682,(void*)0,&p_1912->g_682},{&p_1912->g_682,(void*)0,&p_1912->g_682,(void*)0,&p_1912->g_682,&p_1912->g_173,&p_1912->g_682,(void*)0,&p_1912->g_682}}};
        VECTOR(int8_t, 16) l_838 = (VECTOR(int8_t, 16))(0x1CL, (VECTOR(int8_t, 4))(0x1CL, (VECTOR(int8_t, 2))(0x1CL, 0x5EL), 0x5EL), 0x5EL, 0x1CL, 0x5EL, (VECTOR(int8_t, 2))(0x1CL, 0x5EL), (VECTOR(int8_t, 2))(0x1CL, 0x5EL), 0x1CL, 0x5EL, 0x1CL, 0x5EL);
        union U0 *l_890 = &p_1912->g_80;
        uint64_t l_912 = 2UL;
        int64_t l_919 = 0x091A9BD0392D3811L;
        uint16_t l_926 = 0xBE49L;
        int i, j, k;
        for (p_1912->g_201 = 0; (p_1912->g_201 <= 46); p_1912->g_201 = safe_add_func_int32_t_s_s(p_1912->g_201, 1))
        { /* block id: 347 */
            VECTOR(uint64_t, 16) l_743 = (VECTOR(uint64_t, 16))(18446744073709551609UL, (VECTOR(uint64_t, 4))(18446744073709551609UL, (VECTOR(uint64_t, 2))(18446744073709551609UL, 9UL), 9UL), 9UL, 18446744073709551609UL, 9UL, (VECTOR(uint64_t, 2))(18446744073709551609UL, 9UL), (VECTOR(uint64_t, 2))(18446744073709551609UL, 9UL), 18446744073709551609UL, 9UL, 18446744073709551609UL, 9UL);
            int i;
            for (l_719 = (-4); (l_719 != (-5)); l_719--)
            { /* block id: 350 */
                uint32_t ***l_736 = &p_1912->g_706;
                (*l_736) = &p_1912->g_707[3][5][4];
                if ((*p_11))
                    continue;
            }
            for (l_731 = (-26); (l_731 < 13); l_731 = safe_add_func_int64_t_s_s(l_731, 4))
            { /* block id: 356 */
                uint16_t l_745 = 0x34A4L;
                l_719 = (safe_mod_func_uint64_t_u_u(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(mad_sat(((VECTOR(uint64_t, 8))(min(((VECTOR(uint64_t, 16))(l_741.s0201456116607242)).even, ((VECTOR(uint64_t, 16))(l_742.s2513235631523437)).lo))).odd, ((VECTOR(uint64_t, 8))(l_743.s7f8b6245)).odd, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(rotate(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(0xCD3126891C0D739FL, 0x4645944653E81DAAL, ((VECTOR(uint64_t, 4))(l_744.wxxx)), 0UL, 0xD7889DF54977B362L)).s21)), ((VECTOR(uint64_t, 2))(1UL, 9UL))))).yyyxxyyy)).s4333526712043023)).s1267))).zwxwyyyx)).s4, l_743.sf));
                if (l_745)
                    break;
            }
            if ((*p_11))
                break;
        }
        (*p_1912->g_682) |= (*p_11);
        for (p_10 = (-17); (p_10 <= 34); p_10++)
        { /* block id: 365 */
            uint8_t l_748 = 0x0EL;
            int16_t *l_847 = &p_1912->g_163;
            VECTOR(uint64_t, 4) l_859 = (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x8DE2EDA4C54D33FBL), 0x8DE2EDA4C54D33FBL);
            int32_t l_868 = 0x34956FDFL;
            uint8_t l_869 = 253UL;
            uint32_t l_896[7][1];
            int32_t *l_898[2];
            int i, j;
            for (i = 0; i < 7; i++)
            {
                for (j = 0; j < 1; j++)
                    l_896[i][j] = 6UL;
            }
            for (i = 0; i < 2; i++)
                l_898[i] = (void*)0;
            (*p_1912->g_682) = (l_748 || ((((safe_lshift_func_uint8_t_u_s(((safe_sub_func_int16_t_s_s(p_1912->g_80.f0, (((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(l_753.yzzzyxxx)))).s1 && (safe_mul_func_int16_t_s_s(p_1912->g_175.f0, (((*p_11) > (((VECTOR(uint8_t, 8))(min(((VECTOR(uint8_t, 2))(l_756.yx)).xxyyxxxx, ((VECTOR(uint8_t, 2))(p_1912->g_757.s15)).yxxyyxxx))).s3 == ((*p_11) ^ (l_719 = (p_1912->g_46.x = ((VECTOR(int32_t, 16))(p_1912->g_758.s7, ((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 4))((((safe_add_func_uint32_t_u_u(((void*)0 != l_761[0][0][7]), FAKE_DIVERGE(p_1912->local_1_offset, get_local_id(1), 10))) , ((safe_mod_func_uint64_t_u_u(((0x63L != p_1912->g_696.s7) , 0xA8067FFC54B97C3FL), 0x101869470F153847L)) || p_1912->g_696.sf)) > 0x287CA743L), ((VECTOR(int32_t, 2))(0x5BA0C593L)), (-1L))).even, ((VECTOR(int32_t, 2))((-8L)))))), ((VECTOR(int32_t, 2))(0x378DA23CL))))), (-1L), l_748, ((VECTOR(int32_t, 8))(0L)), 0x6DFE8725L, 0x4E60E7CBL, 0x2C132D8CL)).s8))))) & l_742.s7)))))) , 8UL), l_748)) > 0x7BL) <= 0x28A9L) , (*p_1912->g_682)));
            if ((atomic_inc(&p_1912->l_atomic_input[5]) == 4))
            { /* block id: 370 */
                int32_t l_764[6][4] = {{(-1L),(-1L),1L,0x06901091L},{(-1L),(-1L),1L,0x06901091L},{(-1L),(-1L),1L,0x06901091L},{(-1L),(-1L),1L,0x06901091L},{(-1L),(-1L),1L,0x06901091L},{(-1L),(-1L),1L,0x06901091L}};
                uint32_t l_765 = 1UL;
                int32_t l_766 = (-8L);
                int32_t l_767 = (-1L);
                int8_t l_768 = 0x17L;
                int8_t l_769 = 0x5CL;
                int64_t l_770 = (-10L);
                int16_t l_771[8] = {0x60CFL,0x60CFL,0x60CFL,0x60CFL,0x60CFL,0x60CFL,0x60CFL,0x60CFL};
                uint32_t l_772 = 0x0ADD748EL;
                int16_t l_775 = 0x6D8EL;
                int i, j;
                l_766 &= (l_765 = l_764[0][3]);
                l_772--;
                if (l_775)
                { /* block id: 374 */
                    int32_t l_776[10] = {(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L)};
                    uint8_t l_788 = 0xAEL;
                    int i;
                    for (l_776[9] = (-4); (l_776[9] != 7); l_776[9] = safe_add_func_uint64_t_u_u(l_776[9], 8))
                    { /* block id: 377 */
                        uint32_t l_779 = 0x0A1C0E28L;
                        l_767 = l_779;
                    }
                    for (l_776[9] = 0; (l_776[9] == 18); ++l_776[9])
                    { /* block id: 382 */
                        int32_t l_783 = (-1L);
                        int32_t *l_782 = &l_783;
                        int32_t *l_784 = (void*)0;
                        union U0 l_786[2] = {{-1L},{-1L}};
                        union U0 *l_785 = &l_786[0];
                        int64_t l_787 = 0x0590EAACC63F19D0L;
                        int i;
                        l_784 = l_782;
                        l_785 = (void*)0;
                        l_767 &= l_787;
                    }
                    l_788 = (l_767 = (-9L));
                }
                else
                { /* block id: 389 */
                    int32_t l_789 = 5L;
                    int32_t *l_801 = &l_789;
                    int32_t *l_802 = &l_789;
                    uint32_t l_803 = 1UL;
                    VECTOR(int32_t, 4) l_806 = (VECTOR(int32_t, 4))(0x7E40089EL, (VECTOR(int32_t, 2))(0x7E40089EL, 0x2647471DL), 0x2647471DL);
                    VECTOR(int32_t, 2) l_807 = (VECTOR(int32_t, 2))((-4L), 0x650C8872L);
                    uint64_t l_808 = 1UL;
                    VECTOR(int32_t, 16) l_809 = (VECTOR(int32_t, 16))(0x50FD09A0L, (VECTOR(int32_t, 4))(0x50FD09A0L, (VECTOR(int32_t, 2))(0x50FD09A0L, 0x2E9B791CL), 0x2E9B791CL), 0x2E9B791CL, 0x50FD09A0L, 0x2E9B791CL, (VECTOR(int32_t, 2))(0x50FD09A0L, 0x2E9B791CL), (VECTOR(int32_t, 2))(0x50FD09A0L, 0x2E9B791CL), 0x50FD09A0L, 0x2E9B791CL, 0x50FD09A0L, 0x2E9B791CL);
                    VECTOR(int32_t, 8) l_810 = (VECTOR(int32_t, 8))(0x2099D614L, (VECTOR(int32_t, 4))(0x2099D614L, (VECTOR(int32_t, 2))(0x2099D614L, 1L), 1L), 1L, 0x2099D614L, 1L);
                    VECTOR(int32_t, 8) l_811 = (VECTOR(int32_t, 8))(0x2C71832BL, (VECTOR(int32_t, 4))(0x2C71832BL, (VECTOR(int32_t, 2))(0x2C71832BL, 0L), 0L), 0L, 0x2C71832BL, 0L);
                    VECTOR(int64_t, 4) l_812 = (VECTOR(int64_t, 4))(0x63462E40F566F8A9L, (VECTOR(int64_t, 2))(0x63462E40F566F8A9L, (-4L)), (-4L));
                    VECTOR(int32_t, 16) l_813 = (VECTOR(int32_t, 16))(0x57E27995L, (VECTOR(int32_t, 4))(0x57E27995L, (VECTOR(int32_t, 2))(0x57E27995L, 0L), 0L), 0L, 0x57E27995L, 0L, (VECTOR(int32_t, 2))(0x57E27995L, 0L), (VECTOR(int32_t, 2))(0x57E27995L, 0L), 0x57E27995L, 0L, 0x57E27995L, 0L);
                    VECTOR(int16_t, 16) l_814 = (VECTOR(int16_t, 16))((-4L), (VECTOR(int16_t, 4))((-4L), (VECTOR(int16_t, 2))((-4L), 0x00CBL), 0x00CBL), 0x00CBL, (-4L), 0x00CBL, (VECTOR(int16_t, 2))((-4L), 0x00CBL), (VECTOR(int16_t, 2))((-4L), 0x00CBL), (-4L), 0x00CBL, (-4L), 0x00CBL);
                    VECTOR(int32_t, 4) l_815 = (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), (-10L)), (-10L));
                    uint8_t l_816 = 1UL;
                    uint64_t l_817 = 0x1159CFD1783D17D9L;
                    VECTOR(int16_t, 4) l_818 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x39B6L), 0x39B6L);
                    VECTOR(int16_t, 4) l_819 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x11C9L), 0x11C9L);
                    VECTOR(int16_t, 16) l_820 = (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x0A1CL), 0x0A1CL), 0x0A1CL, 1L, 0x0A1CL, (VECTOR(int16_t, 2))(1L, 0x0A1CL), (VECTOR(int16_t, 2))(1L, 0x0A1CL), 1L, 0x0A1CL, 1L, 0x0A1CL);
                    VECTOR(int16_t, 4) l_821 = (VECTOR(int16_t, 4))(9L, (VECTOR(int16_t, 2))(9L, 0x23E0L), 0x23E0L);
                    VECTOR(int32_t, 2) l_822 = (VECTOR(int32_t, 2))(0x14A31433L, 0x0F5021CBL);
                    VECTOR(int32_t, 4) l_823 = (VECTOR(int32_t, 4))(0x5A741F4BL, (VECTOR(int32_t, 2))(0x5A741F4BL, (-5L)), (-5L));
                    VECTOR(int32_t, 2) l_824 = (VECTOR(int32_t, 2))(0x71604451L, 0x38F7FC19L);
                    uint8_t l_825 = 0x77L;
                    uint32_t l_826 = 0x5D21167FL;
                    VECTOR(int32_t, 2) l_827 = (VECTOR(int32_t, 2))(0x79A852D2L, 7L);
                    int16_t l_828 = (-2L);
                    union U1 l_829 = {0x738C76B1L};
                    int32_t l_830 = 0x4CD73F86L;
                    int16_t l_831 = 1L;
                    uint64_t l_832 = 0x4D4A8FB4E564AD1AL;
                    uint32_t l_833 = 0x0B8A5FFDL;
                    uint16_t l_834 = 0x8151L;
                    uint32_t l_835[9] = {0UL,0xA2D3EB9DL,0UL,0UL,0xA2D3EB9DL,0UL,0UL,0xA2D3EB9DL,0UL};
                    int i;
                    for (l_789 = 0; (l_789 != (-18)); l_789 = safe_sub_func_int8_t_s_s(l_789, 1))
                    { /* block id: 392 */
                        int8_t l_792 = 0x02L;
                        int32_t l_793 = 0x0C8A24BFL;
                        int32_t l_794 = 0x55119B48L;
                        int32_t l_795 = 0x7F6B5A02L;
                        int32_t l_796 = 0x4916919EL;
                        int64_t l_797 = (-1L);
                        uint32_t l_798 = 0xCEF79F7AL;
                        l_798++;
                    }
                    l_802 = l_801;
                    l_803--;
                    l_835[2] &= (l_834 = ((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 16))(l_806.yxxzyzzyyxyxwzyw)).s3a, ((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_807.xy)), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(0x7E5E42B8L, 0x0B50FA21L, 0x7B892C9AL, 0x3CEE1836L)), l_808, ((VECTOR(int32_t, 8))(l_809.sc219a3fc)).s0, 0x72BDC6B9L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 16))(7L, 4L, ((VECTOR(int32_t, 8))(l_810.s56246046)), ((VECTOR(int32_t, 2))(l_811.s57)), 0L, l_812.w, 1L, 1L)).even, ((VECTOR(int32_t, 4))(l_813.s67e1)).yyxyzxyy, ((VECTOR(int32_t, 8))(0x30EAEA8BL, (-1L), (((VECTOR(int16_t, 8))(l_814.s9f1b70ab)).s5 , ((VECTOR(int32_t, 2))(l_815.wy)).even), l_816, 0x0524F964L, l_817, 0x23043AE8L, (-9L)))))).s43)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 8))(rhadd(((VECTOR(int16_t, 16))(l_818.yxxyxyxwyyxzzzxw)).odd, ((VECTOR(int16_t, 4))(rotate(((VECTOR(int16_t, 8))(l_819.ywxyzzyy)).even, ((VECTOR(int16_t, 2))(l_820.sd2)).yyyy))).wyxzwwzx))).s32, ((VECTOR(int16_t, 8))(l_821.yywwzwwy)).s44))).xxxyxxxyxyyxxyxy, ((VECTOR(uint16_t, 8))(clz(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(65535UL, 8UL)).yyyxxyxxxyxyyxyx)))).hi))).s0517671067412715))).sa280, ((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 4))(l_822.yyxx)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(0x5890EF28L, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(l_823.wxyy)).zzxwzzxz, ((VECTOR(int32_t, 16))(sub_sat(((VECTOR(int32_t, 8))(l_824.yyxyxyxy)).s6040566231642106, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(0x149F91BCL, ((VECTOR(int32_t, 16))(l_825, 0x6A73D1EDL, l_826, ((VECTOR(int32_t, 4))(l_827.xyxy)), (l_767 = (((VECTOR(uint64_t, 16))(mad_hi(((VECTOR(uint64_t, 2))(1UL, 1UL)).yyyxxyyxyxyyxxyx, ((VECTOR(uint64_t, 8))(1UL, (((l_828 , l_829) , (l_830 , 0UL)) , 0x97B139D43FD5C945L), 0xDC12E15DA3CF4F51L, ((VECTOR(uint64_t, 4))(0x73F76D8D06B3EC91L)), 2UL)).s4316126373216530, ((VECTOR(uint64_t, 16))(0UL))))).s7 , l_831)), ((VECTOR(int32_t, 8))(0x0CA91066L)))).sf, l_832, ((VECTOR(int32_t, 2))(0x6C94BFCBL)), ((VECTOR(int32_t, 2))(0x26C99318L)), ((VECTOR(int32_t, 8))(0x432E6E03L)), 1L)), ((VECTOR(int32_t, 16))((-3L))), ((VECTOR(int32_t, 16))(0x0667B4DCL))))))).hi)).even, ((VECTOR(int32_t, 4))(0x3B2A43CBL)), ((VECTOR(int32_t, 4))(6L))))).xxzzyyxxzwwwwwwx, ((VECTOR(int32_t, 16))((-1L)))))).s83)).yxxxxxxxyxyxxyyx))).hi, ((VECTOR(int32_t, 8))(0x7C8CA267L))))))))), 6L, 0x2E24C3CBL, ((VECTOR(int32_t, 4))(0x0B0EBBBBL)), 0x1C8B4149L)))).s470e, ((VECTOR(int32_t, 4))(0x2AD5935DL))))).wwwwyzxz)).s17)).xxxxyxxyyxyxxxyx, ((VECTOR(int32_t, 16))(0x154669B3L))))).s18, ((VECTOR(int32_t, 2))(0x03114A9CL))))).yxxyxxxyxyxyxyxx, ((VECTOR(int32_t, 16))(0x6C871FCEL))))), ((VECTOR(int32_t, 16))((-4L)))))).s0f9a, ((VECTOR(int32_t, 4))(7L))))).ywyxwzzyzzyzyywx)).sba)).xxyx))), (int32_t)0x5D7E7165L))), ((VECTOR(int32_t, 4))(0x4E9D4902L))))).lo)), (-8L), ((VECTOR(int32_t, 2))(0x3591F0B1L)), 0x6002BC48L, 0x35E4A847L)).s4068, ((VECTOR(int32_t, 4))((-10L)))))).odd)).xyyxxxyy)), l_833, (-1L), 0x35EAE069L, 1L, 0x51EB3815L, 0x4E8A0783L)))).even, ((VECTOR(int32_t, 8))((-1L))), ((VECTOR(int32_t, 8))(0x578B2C0EL))))).s62))), ((VECTOR(int32_t, 2))(0x6FB1BAA7L))))).xxxyxyxx, ((VECTOR(int32_t, 8))(1L))))).s5);
                }
                unsigned int result = 0;
                int l_764_i0, l_764_i1;
                for (l_764_i0 = 0; l_764_i0 < 6; l_764_i0++) {
                    for (l_764_i1 = 0; l_764_i1 < 4; l_764_i1++) {
                        result += l_764[l_764_i0][l_764_i1];
                    }
                }
                result += l_765;
                result += l_766;
                result += l_767;
                result += l_768;
                result += l_769;
                result += l_770;
                int l_771_i0;
                for (l_771_i0 = 0; l_771_i0 < 8; l_771_i0++) {
                    result += l_771[l_771_i0];
                }
                result += l_772;
                result += l_775;
                atomic_add(&p_1912->l_special_values[5], result);
            }
            else
            { /* block id: 401 */
                (1 + 1);
            }
            if ((safe_sub_func_uint8_t_u_u(l_748, ((((0xAEL > ((VECTOR(int8_t, 8))(l_838.s23ef5d1b)).s5) != (p_1912->g_163 = (0UL & (safe_add_func_uint32_t_u_u(((!0x60D0L) > p_1912->g_134.x), ((safe_add_func_uint64_t_u_u(18446744073709551606UL, ((safe_mul_func_uint8_t_u_u((l_748 >= (safe_mul_func_int16_t_s_s(((l_753.z , l_847) == &p_1912->g_164), p_10))), p_10)) >= p_10))) >= l_748)))))) & p_10) , 0UL))))
            { /* block id: 405 */
                int32_t l_850 = (-8L);
                uint64_t *l_860 = (void*)0;
                uint64_t *l_861 = &p_1912->g_175.f1;
                uint64_t *l_862[1];
                int8_t l_867 = (-6L);
                int64_t *l_892 = &p_1912->g_893;
                int64_t *l_894 = (void*)0;
                int32_t *l_897 = &p_1912->g_62;
                int32_t l_900 = 0x155C4643L;
                int32_t l_901 = 9L;
                int32_t l_903 = 0x31194334L;
                int32_t l_904 = 0x04EA4FDFL;
                int32_t l_905 = 8L;
                int32_t l_907 = 0L;
                int32_t l_908 = (-6L);
                int32_t l_909 = 0x0511EB3DL;
                int32_t l_910 = 1L;
                int32_t l_911[9][9][3] = {{{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)}},{{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)}},{{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)}},{{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)}},{{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)}},{{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)}},{{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)}},{{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)}},{{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)},{0x60BC4B53L,0x217E96ECL,(-1L)}}};
                int i, j, k;
                for (i = 0; i < 1; i++)
                    l_862[i] = (void*)0;
                l_869 &= (l_719 &= (safe_mul_func_int16_t_s_s((l_850 || (!(l_868 ^= (((*p_11) , p_1912->g_693) , (safe_mul_func_int16_t_s_s((safe_div_func_uint64_t_u_u(((safe_add_func_int16_t_s_s(((&p_1912->g_188 != &p_1912->g_80) ^ (safe_add_func_int64_t_s_s(p_10, ((VECTOR(uint64_t, 8))(max(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(0UL, 1UL, 0x39755B9970DA8BB2L, 18446744073709551608UL)))).wzzywzzz, ((VECTOR(uint64_t, 2))(l_859.xx)).yxxyyyyx))).s7))), p_1912->g_188.f0)) , (p_1912->g_187.s2 &= l_859.y)), (safe_mul_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(2UL, l_867)), p_1912->g_175.f0)))), 0x35A1L)))))), (-1L))));
                (*p_1912->g_682) = (l_719 <= (safe_mod_func_uint16_t_u_u((~((p_1912->g_895[0] = (safe_add_func_uint64_t_u_u((safe_rshift_func_uint8_t_u_u((((((p_10 >= (safe_div_func_uint16_t_u_u(p_10, (safe_mul_func_int16_t_s_s((((safe_div_func_uint8_t_u_u((safe_rshift_func_int8_t_s_s(p_10, 0)), ((safe_add_func_uint64_t_u_u((safe_mod_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(max(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(p_1912->g_888.yy)), 0x3BA4L, 65532UL, ((VECTOR(uint16_t, 4))(p_1912->g_889.s830e)))).s2063424730132602)).sa7ed, ((VECTOR(uint16_t, 16))(clz(((VECTOR(uint16_t, 2))(3UL, 0xB46EL)).yxyyxyxyxyxyyxyx))).s3f88))).w, 0xECB5L)), ((void*)0 == l_890))) , (((*l_729) = (p_10 & (((*l_892) = ((VECTOR(int64_t, 8))(p_1912->g_891.s04143335)).s1) , (&p_1912->g_158[0][5] != (void*)0)))) && p_10)))) , &p_1912->g_368) == &l_731), p_1912->g_758.s2))))) , (*p_11)) != p_10) , p_10) != p_1912->g_187.s6), l_742.s4)), 0x6BDCB70D6EF761F6L))) , 0x8F5DL)), l_896[5][0])));
                l_898[1] = l_897;
                ++l_912;
            }
            else
            { /* block id: 416 */
                int32_t l_915 = 0x5CB7BB3BL;
                int32_t l_916 = 2L;
                int32_t l_917 = 0L;
                int32_t l_918 = 0L;
                int32_t l_920 = 0x7637D6B5L;
                int32_t l_921 = 0x5FEA0D44L;
                int32_t l_922 = 1L;
                int32_t l_923 = 0L;
                int8_t l_924 = 8L;
                int32_t l_925 = (-8L);
                ++l_926;
            }
            (*p_1912->g_682) &= (*p_11);
        }
    }
    else
    { /* block id: 421 */
        VECTOR(uint16_t, 16) l_956 = (VECTOR(uint16_t, 16))(0x27EDL, (VECTOR(uint16_t, 4))(0x27EDL, (VECTOR(uint16_t, 2))(0x27EDL, 0xBC2DL), 0xBC2DL), 0xBC2DL, 0x27EDL, 0xBC2DL, (VECTOR(uint16_t, 2))(0x27EDL, 0xBC2DL), (VECTOR(uint16_t, 2))(0x27EDL, 0xBC2DL), 0x27EDL, 0xBC2DL, 0x27EDL, 0xBC2DL);
        int16_t *l_993 = &p_1912->g_163;
        int16_t **l_992 = &l_993;
        int32_t *l_1016[3];
        uint64_t l_1045 = 18446744073709551610UL;
        VECTOR(uint16_t, 2) l_1066 = (VECTOR(uint16_t, 2))(1UL, 0UL);
        int32_t *l_1084 = (void*)0;
        int64_t l_1087 = 0x597A62D849DE5C7AL;
        int32_t l_1091 = 0x208A9A27L;
        uint64_t l_1105 = 0UL;
        int i;
        for (i = 0; i < 3; i++)
            l_1016[i] = &l_906[7];
        (*p_1912->g_682) &= 0x51FA24BDL;
        for (p_1912->g_175.f0 = 0; (p_1912->g_175.f0 > 9); p_1912->g_175.f0++)
        { /* block id: 425 */
            VECTOR(uint8_t, 4) l_933 = (VECTOR(uint8_t, 4))(0x66L, (VECTOR(uint8_t, 2))(0x66L, 0UL), 0UL);
            int32_t l_950 = 1L;
            int64_t *l_967 = &l_899;
            uint64_t l_969 = 18446744073709551615UL;
            uint16_t *l_970 = &p_1912->g_705;
            int32_t l_1021 = 3L;
            VECTOR(int8_t, 16) l_1037 = (VECTOR(int8_t, 16))(0x7FL, (VECTOR(int8_t, 4))(0x7FL, (VECTOR(int8_t, 2))(0x7FL, 1L), 1L), 1L, 0x7FL, 1L, (VECTOR(int8_t, 2))(0x7FL, 1L), (VECTOR(int8_t, 2))(0x7FL, 1L), 0x7FL, 1L, 0x7FL, 1L);
            VECTOR(int64_t, 16) l_1042 = (VECTOR(int64_t, 16))(6L, (VECTOR(int64_t, 4))(6L, (VECTOR(int64_t, 2))(6L, 7L), 7L), 7L, 6L, 7L, (VECTOR(int64_t, 2))(6L, 7L), (VECTOR(int64_t, 2))(6L, 7L), 6L, 7L, 6L, 7L);
            int16_t l_1092 = 4L;
            int32_t l_1094 = 0x6BED274CL;
            int32_t l_1095 = 0x00A88E84L;
            int32_t l_1102 = 7L;
            int32_t l_1104 = 1L;
            int i;
            (1 + 1);
        }
    }
    if (((safe_mod_func_uint64_t_u_u((safe_mul_func_int8_t_s_s(p_10, (safe_sub_func_int64_t_s_s(((void*)0 != &l_1034), (((VECTOR(int64_t, 8))(rhadd(((VECTOR(int64_t, 16))(p_1912->g_1114.s98152dda7e2fedaa)).even, ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(l_1115.xxxx)).zyxxzwwzyyzxzyxz)).hi))).s5 | (p_1912->g_187.s5 &= ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(l_1116.wxyxzywz)).s23)).hi)))))), p_1912->g_46.x)) <= ((VECTOR(uint16_t, 8))(mad_hi(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(65534UL, ((safe_lshift_func_int8_t_s_u(p_10, 6)) == (safe_rshift_func_uint16_t_u_u((((&p_1912->g_368 != &l_731) , (void*)0) == (l_1121 = l_1121)), 9))), 0UL, 0x32A4L, ((VECTOR(uint16_t, 4))(8UL)))).even)).yxzwwywz, ((VECTOR(uint16_t, 8))(6UL)), ((VECTOR(uint16_t, 8))(0x8EC6L))))).s3))
    { /* block id: 501 */
        VECTOR(uint64_t, 2) l_1124 = (VECTOR(uint64_t, 2))(0x481CD3D524578F22L, 0x0DBCD526120D5643L);
        int16_t *l_1125 = &p_1912->g_163;
        int64_t *l_1131 = &p_1912->g_895[0];
        VECTOR(uint8_t, 2) l_1133 = (VECTOR(uint8_t, 2))(0x11L, 252UL);
        uint8_t *l_1146 = (void*)0;
        int32_t l_1147 = (-6L);
        uint16_t l_1165 = 1UL;
        int i;
        (*p_1912->g_682) &= (((VECTOR(uint64_t, 16))(mul_hi(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(0x3E6CB7230AC6FA5AL, 6UL)).yxxyxxyyxxxxxyyy)), ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))(l_1124.yxxxxyyyyxyxxyxx)))).s81)).xyxxxxxyyyxyxxxy))).sc , (((+l_1124.x) , (l_1125 == l_1034)) , l_1126));
        if (((0x6E12A7FFL || (safe_sub_func_int64_t_s_s(((*l_1131) |= (safe_sub_func_uint8_t_u_u(6UL, p_10))), ((((((VECTOR(uint16_t, 16))(upsample(((VECTOR(uint8_t, 4))(add_sat(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(l_1132.s42237173)).s66)).yxxy, ((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 4))(l_1133.xyyx)).even, (uint8_t)(+(((safe_mod_func_uint32_t_u_u((safe_rshift_func_int8_t_s_u(p_10, 1)), (safe_rshift_func_uint16_t_u_s((safe_lshift_func_int16_t_s_u((safe_lshift_func_uint8_t_u_u(p_10, ((l_1147 = (((((l_741.s0 , ((((p_10 , 0x2B1E52481945CC03L) | (safe_div_func_uint64_t_u_u((p_1912->g_187.s0 |= 18446744073709551615UL), l_1124.y))) | 255UL) , l_1133.y)) && 3L) || l_1124.x) , 0x5379L) <= 0x4688L)) , l_1133.y))), p_10)), 15)))) ^ p_1912->g_968.y) <= l_1133.y))))).xyxx))).wywzxxwyyzwzxxxz, ((VECTOR(uint8_t, 16))(0x38L))))).s3 , &p_1912->g_175) == (void*)0) != 1UL) & 0UL)))) | p_10))
        { /* block id: 506 */
            int8_t l_1157 = 0x3EL;
            uint64_t *l_1158 = (void*)0;
            uint64_t *l_1159 = (void*)0;
            uint64_t *l_1160 = (void*)0;
            uint64_t *l_1161 = (void*)0;
            uint64_t *l_1162[7][10][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
            int i, j, k;
            p_11 = func_13(((safe_lshift_func_int16_t_s_u(((*l_1125) ^= (l_1133.y , ((void*)0 != &p_1912->g_893))), 1)) ^ (((safe_mul_func_int16_t_s_s((!(l_1147 = (p_1912->g_1152 >= (safe_lshift_func_int16_t_s_s((((safe_sub_func_uint64_t_u_u(p_10, (l_1133.y <= ((((~((l_1157 && ((p_1912->g_201 = ((l_1055.s2 | ((p_1912->g_187.s6--) > FAKE_DIVERGE(p_1912->local_0_offset, get_local_id(0), 10))) && 0x4A48F83EL)) | l_741.s0)) | p_10)) , l_1157) , p_10) <= l_1157)))) > p_10) | FAKE_DIVERGE(p_1912->global_0_offset, get_global_id(0), 10)), l_1055.s0))))), l_1165)) > (*p_11)) >= p_10)), (*p_1912->g_951), p_11, p_10, p_10, p_1912);
            for (l_1157 = 0; (l_1157 == 5); l_1157 = safe_add_func_uint64_t_u_u(l_1157, 1))
            { /* block id: 514 */
                return p_1912->g_757.s0;
            }
        }
        else
        { /* block id: 517 */
            int32_t *l_1168 = &p_1912->g_1169;
            int32_t l_1178 = 0x3556A552L;
            union U1 *l_1179[2];
            int32_t *l_1182[9][8] = {{&l_1147,&l_902,&l_902,&l_1147,&l_1147,&l_902,&l_902,&l_1147},{&l_1147,&l_902,&l_902,&l_1147,&l_1147,&l_902,&l_902,&l_1147},{&l_1147,&l_902,&l_902,&l_1147,&l_1147,&l_902,&l_902,&l_1147},{&l_1147,&l_902,&l_902,&l_1147,&l_1147,&l_902,&l_902,&l_1147},{&l_1147,&l_902,&l_902,&l_1147,&l_1147,&l_902,&l_902,&l_1147},{&l_1147,&l_902,&l_902,&l_1147,&l_1147,&l_902,&l_902,&l_1147},{&l_1147,&l_902,&l_902,&l_1147,&l_1147,&l_902,&l_902,&l_1147},{&l_1147,&l_902,&l_902,&l_1147,&l_1147,&l_902,&l_902,&l_1147},{&l_1147,&l_902,&l_902,&l_1147,&l_1147,&l_902,&l_902,&l_1147}};
            int i, j;
            for (i = 0; i < 2; i++)
                l_1179[i] = &p_1912->g_175;
            l_1147 = ((*p_1912->g_682) = ((((*l_1168) = 1L) , ((*l_1125) = (p_10 >= (0x46C4L >= ((0x68E2L > (safe_mul_func_int8_t_s_s((((l_1180 = func_68((safe_rshift_func_int8_t_s_s((safe_div_func_uint32_t_u_u(l_1133.y, l_906[9])), 1)), l_1178, p_1912->g_266.x, p_1912)) , (*p_11)) && p_1912->g_1181), l_1178))) || p_10))))) , (*p_11)));
        }
    }
    else
    { /* block id: 524 */
        VECTOR(uint32_t, 4) l_1183 = (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0x31E5606DL), 0x31E5606DL);
        int32_t l_1208[5];
        uint64_t *l_1252 = (void*)0;
        VECTOR(uint64_t, 8) l_1278 = (VECTOR(uint64_t, 8))(4UL, (VECTOR(uint64_t, 4))(4UL, (VECTOR(uint64_t, 2))(4UL, 0x04C0A258A7688E7DL), 0x04C0A258A7688E7DL), 0x04C0A258A7688E7DL, 4UL, 0x04C0A258A7688E7DL);
        int i;
        for (i = 0; i < 5; i++)
            l_1208[i] = 0x16A97ED8L;
        (*p_1912->g_1184) = (l_1183.z , p_11);
        for (l_899 = (-20); (l_899 != 1); l_899 = safe_add_func_int8_t_s_s(l_899, 2))
        { /* block id: 528 */
            int8_t l_1195 = 0x3BL;
            int32_t l_1198 = 7L;
            int32_t l_1260 = 0L;
            int16_t **l_1285 = (void*)0;
            uint16_t *l_1292 = (void*)0;
            if (l_753.x)
                break;
            if (((p_10 | (safe_add_func_uint32_t_u_u((safe_div_func_int16_t_s_s((*p_1912->g_995), FAKE_DIVERGE(p_1912->global_2_offset, get_global_id(2), 10))), p_10))) , (p_1912->g_1191 &= 0x02F27EC7L)))
            { /* block id: 531 */
                int8_t l_1199[4] = {0x06L,0x06L,0x06L,0x06L};
                uint32_t *l_1200 = (void*)0;
                uint32_t *l_1201 = &p_1912->g_1181;
                int32_t *l_1210 = &l_1208[3];
                int i;
                (*p_1912->g_1209) &= (safe_unary_minus_func_int8_t_s((!((0xC90EB61CC46178CCL <= p_1912->g_757.s4) > (l_1208[3] = (+((safe_rshift_func_uint16_t_u_u((((*p_1912->g_995) = l_1195) , (safe_sub_func_int64_t_s_s((((((*p_1912->g_995) = 1L) ^ (l_1055.s8 = l_906[9])) < ((FAKE_DIVERGE(p_1912->group_1_offset, get_group_id(1), 10) & (p_10 , (l_1198 = FAKE_DIVERGE(p_1912->global_2_offset, get_global_id(2), 10)))) && (!((*l_1201) |= l_1199[3])))) > ((0xEA96L ^ ((safe_div_func_int16_t_s_s((safe_add_func_uint64_t_u_u(((((safe_mul_func_uint8_t_u_u(p_1912->g_368, p_10)) ^ FAKE_DIVERGE(p_1912->global_0_offset, get_global_id(0), 10)) > 255UL) , 0UL), 0x1D6DE4F343F1A5B4L)), 0x1CC1L)) > (*p_11))) == 0UL)), p_10))), 4)) != (-3L))))))));
                (*l_1210) &= (~(**p_1912->g_1184));
                (*l_1210) &= (*p_11);
            }
            else
            { /* block id: 541 */
                int64_t *l_1249 = &p_1912->g_895[0];
                int64_t *l_1261[3][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
                int32_t l_1262 = 1L;
                int32_t *l_1265 = &l_1208[4];
                int i, j;
                if ((atomic_inc(&p_1912->l_atomic_input[15]) == 1))
                { /* block id: 543 */
                    uint16_t l_1211 = 65532UL;
                    int32_t l_1239 = 0x0F8AC9AEL;
                    int32_t *l_1238 = &l_1239;
                    int32_t *l_1240 = &l_1239;
                    l_1211++;
                    for (l_1211 = (-14); (l_1211 <= 1); l_1211++)
                    { /* block id: 547 */
                        int32_t l_1216 = 0x1AAF63FDL;
                        union U0 l_1217 = {-1L};/* VOLATILE GLOBAL l_1217 */
                        int32_t l_1218 = 0x6872AA0FL;
                        VECTOR(int32_t, 4) l_1219 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 1L), 1L);
                        VECTOR(int32_t, 2) l_1220 = (VECTOR(int32_t, 2))(0x4851B35CL, (-2L));
                        VECTOR(int32_t, 16) l_1221 = (VECTOR(int32_t, 16))(0x684A738AL, (VECTOR(int32_t, 4))(0x684A738AL, (VECTOR(int32_t, 2))(0x684A738AL, 8L), 8L), 8L, 0x684A738AL, 8L, (VECTOR(int32_t, 2))(0x684A738AL, 8L), (VECTOR(int32_t, 2))(0x684A738AL, 8L), 0x684A738AL, 8L, 0x684A738AL, 8L);
                        VECTOR(int32_t, 8) l_1222 = (VECTOR(int32_t, 8))(4L, (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, 0x00B26AE5L), 0x00B26AE5L), 0x00B26AE5L, 4L, 0x00B26AE5L);
                        VECTOR(int32_t, 2) l_1223 = (VECTOR(int32_t, 2))(0x6857C7ABL, 0x7CA1EEAFL);
                        uint32_t l_1224 = 0x00A8C8BFL;
                        VECTOR(uint16_t, 16) l_1225 = (VECTOR(uint16_t, 16))(0x8B67L, (VECTOR(uint16_t, 4))(0x8B67L, (VECTOR(uint16_t, 2))(0x8B67L, 3UL), 3UL), 3UL, 0x8B67L, 3UL, (VECTOR(uint16_t, 2))(0x8B67L, 3UL), (VECTOR(uint16_t, 2))(0x8B67L, 3UL), 0x8B67L, 3UL, 0x8B67L, 3UL);
                        VECTOR(uint16_t, 8) l_1226 = (VECTOR(uint16_t, 8))(0x4292L, (VECTOR(uint16_t, 4))(0x4292L, (VECTOR(uint16_t, 2))(0x4292L, 0x13A3L), 0x13A3L), 0x13A3L, 0x4292L, 0x13A3L);
                        uint32_t l_1227[3];
                        int32_t l_1228 = 0x3BEF7C09L;
                        uint64_t l_1229 = 18446744073709551607UL;
                        int32_t l_1230 = 0L;
                        int32_t l_1231 = 0x6DC030D2L;
                        uint32_t l_1232 = 0xCC0EDB59L;
                        VECTOR(uint16_t, 4) l_1233 = (VECTOR(uint16_t, 4))(0x142CL, (VECTOR(uint16_t, 2))(0x142CL, 0xB49AL), 0xB49AL);
                        int32_t *l_1234 = (void*)0;
                        int32_t *l_1235 = &l_1216;
                        uint64_t l_1236 = 0UL;
                        int32_t l_1237 = 6L;
                        int i;
                        for (i = 0; i < 3; i++)
                            l_1227[i] = 0x7AB46D14L;
                        l_1216 = 0x06D0EC63L;
                        l_1233.z = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(0x2B16563AL, 0x374AE24CL)))), ((l_1217 , ((VECTOR(int32_t, 4))(0x22B16638L, (l_1218 , ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_1219.zw)), (-1L), 0L)).even, (int32_t)((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0x29DD4B71L, 2L)).yxyxxxxx)).s40)))))).hi))).xyyxyyyxyyyxyxxx, ((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 8))(rotate(((VECTOR(int32_t, 8))(0L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_1220.yx)).yxxyyxxx)), ((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 8))(l_1221.sad584e5e)).s4642475462734474, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(l_1222.s3503253632322160)).s42)).yyxxyyyxxyyyxxxy))).lo, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(rotate(((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 4))(l_1223.yyyx)).lo, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 2))(0x227CL, 0x6178L)).yxxx, ((VECTOR(uint16_t, 8))(l_1224, ((VECTOR(uint16_t, 4))(l_1225.s79c2)), ((VECTOR(uint16_t, 2))(65532UL, 0x6FB7L)), 0x8FF2L)).lo))).zyywywwz)).s01))).xyyx, ((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 2))(safe_clamp_func(VECTOR(int16_t, 2),int16_t,((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(2L, (-10L), (-7L), 1L)).wxwzyxwz)).s47, (int16_t)1L, (int16_t)0x7DFFL))).yyyxyxyx, ((VECTOR(uint16_t, 16))(mad_sat(((VECTOR(uint16_t, 8))(0xB764L, 0x0B22L, ((VECTOR(uint16_t, 4))(l_1226.s1401)), 1UL, 65535UL)).s7166607362576550, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(clz(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(clz(((VECTOR(uint16_t, 4))(0x1E80L, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(sub_sat(((VECTOR(uint16_t, 2))(7UL, 0UL)).yyyx, ((VECTOR(uint16_t, 16))(0xADBFL, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(abs_diff(((VECTOR(int16_t, 4))((l_1229 &= (l_1227[0] , l_1228)), l_1230, 0x6194L, 0x76FBL)).yzwxzzyy, ((VECTOR(int16_t, 8))(2L))))).lo)), l_1231, 0x89C8L, 0x9283L, 0xC044L, FAKE_DIVERGE(p_1912->global_2_offset, get_global_id(2), 10), ((VECTOR(uint16_t, 2))(0xB5A2L)), ((VECTOR(uint16_t, 2))(0UL)), 0x3630L, 0UL)).s2b03))).hi)))).even, 0UL, 0xFC2CL)).yxxyzwyywzzwzzww))))).s18f6)).xwyxwzwx))).s30)).xyxxyyxxxyxyyxyx, ((VECTOR(uint16_t, 16))(1UL))))).odd))).lo, ((VECTOR(int32_t, 4))((-1L)))))).xwxywzzx, ((VECTOR(int32_t, 8))(0x379938F7L))))).s77)).yxyxyyxy))).s74)), 0x33173F70L, ((VECTOR(int32_t, 2))(0x3D61627AL)), 0x1B76A021L, 1L)), ((VECTOR(int32_t, 8))((-1L)))))).s3060266564617062, ((VECTOR(int32_t, 16))(0x3466E362L))))), ((VECTOR(int32_t, 16))(0L))))).se3)).yyxxxyyy)).s4), (-1L), 0x791FDC24L)).y) , 0x620589C0L), (-8L), ((VECTOR(int32_t, 4))(0L)), 0x66CDB29AL, 1L, l_1232, 0x0623D2EFL, ((VECTOR(int32_t, 2))(7L)), 0x1B4B6B80L, 1L)).s6;
                        l_1235 = l_1234;
                        l_1237 = l_1236;
                    }
                    l_1240 = (l_1238 = (void*)0);
                    unsigned int result = 0;
                    result += l_1211;
                    result += l_1239;
                    atomic_add(&p_1912->l_special_values[15], result);
                }
                else
                { /* block id: 556 */
                    (1 + 1);
                }
                l_1262 = ((p_10 & (~(safe_mod_func_int16_t_s_s((((FAKE_DIVERGE(p_1912->global_2_offset, get_global_id(2), 10) & (safe_add_func_int64_t_s_s(p_10, ((safe_mul_func_int8_t_s_s((((l_1208[3] = ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(max(((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 4))((safe_sub_func_int64_t_s_s(((*l_1249) = 0x397FAC1EDDF568FEL), ((((safe_mul_func_int16_t_s_s((p_1912->g_306 != l_1252), (safe_div_func_uint32_t_u_u(((VECTOR(uint32_t, 4))(mad_hi(((VECTOR(uint32_t, 4))(max(((VECTOR(uint32_t, 16))(rhadd(((VECTOR(uint32_t, 4))(p_1912->g_1255.yzwz)).wxwyyyzzxwyyywyx, ((VECTOR(uint32_t, 16))(9UL, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(sub_sat(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(0x7E289E7FL, ((VECTOR(uint32_t, 2))(min(((VECTOR(uint32_t, 2))(l_1256.s64)), ((VECTOR(uint32_t, 8))(((+(safe_mod_func_int16_t_s_s(((0xAF60DCC74351ADE1L | 3L) && (p_1912->g_1114.s7 , ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(p_1912->g_1259.xxxxyxyyxxxxxyxx)).sad)).yyxxxyxy)).s5)), l_1055.sa))) <= 0L), 0x1B7C92D4L, ((VECTOR(uint32_t, 4))(0x9384DB3DL)), 4294967292UL, 0x858BFAD9L)).s04))), 1UL)).xyzwzwyx)).odd, ((VECTOR(uint32_t, 4))(4294967295UL))))).lo)), 4294967295UL, ((VECTOR(uint32_t, 8))(0x8E6D7A7DL)), FAKE_DIVERGE(p_1912->group_2_offset, get_group_id(2), 10), 4294967291UL, 4294967295UL, 0x14A51094L))))).sc8cb, (uint32_t)GROUP_DIVERGE(1, 1)))), ((VECTOR(uint32_t, 4))(0xC99137F9L)), ((VECTOR(uint32_t, 4))(0xF84BAE5EL))))).z, (*p_1912->g_682))))) , 0x73DCL) , l_742.s1) ^ l_1260))), l_1183.w, (-10L), 1L)).lo, ((VECTOR(int64_t, 2))(0x69FEE01623CBBB6EL))))), ((VECTOR(int64_t, 2))((-1L)))))).xyxyxxxx)))))).s4) || p_1912->g_46.y) < (-1L)), 4L)) >= 0x57L)))) & l_1260) , (*p_1912->g_995)), (*p_1912->g_995))))) > l_741.s4);
                (*l_1265) ^= (*p_11);
                if (((VECTOR(int32_t, 2))((-3L), (-1L))).even)
                { /* block id: 563 */
                    for (p_10 = 0; (p_10 != 59); ++p_10)
                    { /* block id: 566 */
                        int8_t l_1273 = (-1L);
                        uint16_t *l_1286 = &p_1912->g_705;
                        uint32_t *l_1287[1][9][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
                        int i, j, k;
                        (*p_1912->g_1288) = ((l_902 |= ((safe_mod_func_uint16_t_u_u((((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(l_1270.yy)).yyyxyxyy)).s5 , (((safe_div_func_uint32_t_u_u((p_1912->g_888.y < ((((0L > l_1273) >= (~6L)) >= ((**l_724) , (l_1055.s4 |= ((((*l_1265) = (*l_1265)) <= (*p_11)) <= ((1UL >= (safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 8))(((func_68(((safe_sub_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(0x9710283061AD3930L, ((VECTOR(uint64_t, 4))(l_1278.s7630)), 0xDEE2D0B5A5306257L, 18446744073709551615UL, 0x8792F32DF576DAE4L)).s1512570443704052)))).s9, (((((*l_1286) |= (safe_mod_func_uint8_t_u_u(((safe_add_func_uint16_t_u_u(((safe_rshift_func_uint8_t_u_u(((void*)0 != l_1285), l_1273)) || (**p_1912->g_1184)), l_906[0])) > p_10), (-1L)))) , l_1286) != &p_1912->g_201) , 0xFC925A3BB97F1658L))) , p_10), l_1132.s4, l_1273, p_1912) , l_906[9]) && p_10), ((VECTOR(int16_t, 2))(1L)), ((VECTOR(int16_t, 2))(0x024EL)), p_10, 0x74E1L, 1L)).s4, 13))) | 0x5891L))))) > 0x81CEL)), (*p_11))) >= p_1912->g_893) | p_10)), GROUP_DIVERGE(2, 1))) <= p_1912->g_265.s6)) && 0x1DL);
                        if (l_1289[2][5][0])
                            continue;
                    }
                    if ((*p_1912->g_1209))
                        break;
                }
                else
                { /* block id: 575 */
                    int32_t *l_1291 = &l_1180.f0;
                    uint16_t **l_1293 = (void*)0;
                    uint16_t **l_1294 = &l_1292;
                    int i, j;
                    (*l_1291) ^= (((VECTOR(uint16_t, 4))(l_1290.s4c05)).y || (*l_1265));
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    p_1912->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 120)), permutations[(safe_mod_func_uint32_t_u_u((l_902 &= (((*l_1294) = l_1292) != &p_1912->g_705)), 10))][(safe_mod_func_uint32_t_u_u(p_1912->tid, 120))]));
                }
            }
        }
    }
    for (p_1912->g_201 = 0; (p_1912->g_201 == 15); p_1912->g_201++)
    { /* block id: 588 */
        int32_t *l_1297 = &p_1912->g_175.f0;
        int32_t *l_1298[2];
        int32_t l_1299 = 1L;
        int32_t l_1300 = 4L;
        int64_t l_1303 = 1L;
        int16_t l_1304 = (-6L);
        uint32_t l_1305 = 0x9BB7D43BL;
        int i;
        for (i = 0; i < 2; i++)
            l_1298[i] = (void*)0;
        l_906[8] ^= ((p_1912->g_188 , &l_731) != &l_731);
        --l_1305;
    }
    p_11 = p_11;
    return p_1912->g_758.se;
}


/* ------------------------------------------ */
/* 
 * reads : p_1912->g_163 p_1912->g_693 p_1912->g_696 p_1912->g_187 p_1912->g_175.f0 p_1912->g_62 p_1912->g_706 p_1912->g_46 p_1912->g_80 p_1912->g_2 p_1912->g_61 p_1912->l_comm_values p_1912->g_comm_values p_1912->g_175 p_1912->g_75 p_1912->g_201
 * writes: p_1912->g_163 p_1912->g_150 p_1912->g_705 p_1912->g_706 p_1912->l_comm_values p_1912->g_62 p_1912->g_158 p_1912->g_175.f0
 */
int32_t * func_13(int64_t  p_14, int32_t * p_15, int32_t * p_16, int32_t  p_17, uint32_t  p_18, struct S2 * p_1912)
{ /* block id: 330 */
    uint64_t l_683 = 0xDE4302FC91923BEDL;
    int16_t *l_688 = &p_1912->g_163;
    union U1 l_691 = {-6L};
    VECTOR(int16_t, 4) l_692 = (VECTOR(int16_t, 4))((-3L), (VECTOR(int16_t, 2))((-3L), 0x4914L), 0x4914L);
    int8_t *l_697 = &p_1912->g_150;
    uint32_t l_702[2][10] = {{0xCFD32203L,0xC134BB4EL,4UL,0xC134BB4EL,0xCFD32203L,0xCFD32203L,0xC134BB4EL,4UL,0xC134BB4EL,0xCFD32203L},{0xCFD32203L,0xC134BB4EL,4UL,0xC134BB4EL,0xCFD32203L,0xCFD32203L,0xC134BB4EL,4UL,0xC134BB4EL,0xCFD32203L}};
    int16_t *l_703 = (void*)0;
    int16_t *l_704[4];
    uint32_t ***l_708 = &p_1912->g_706;
    int32_t l_709 = 8L;
    int32_t *l_710 = &l_691.f0;
    int i, j;
    for (i = 0; i < 4; i++)
        l_704[i] = (void*)0;
    l_683++;
    (*p_15) = (l_709 |= (func_68((((*l_708) = ((l_683 <= ((safe_rshift_func_uint16_t_u_s(p_17, ((*l_688) |= p_14))) != (p_1912->g_705 = ((VECTOR(int16_t, 4))(min(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 16))(0x02B8L, 0x190FL, ((VECTOR(int16_t, 4))((safe_mul_func_uint16_t_u_u(p_14, (&p_1912->g_75 == (l_691 , &p_1912->g_75)))), (-3L), (-2L), 0x7CE2L)).x, ((VECTOR(int16_t, 2))(l_692.xw)), ((p_1912->g_693 , (safe_rshift_func_int8_t_s_u(((*l_697) = ((VECTOR(int8_t, 2))(p_1912->g_696.s54)).odd), (safe_div_func_int16_t_s_s((safe_mul_func_int16_t_s_s(0x167CL, l_702[0][9])), p_1912->g_187.s3))))) < (*p_15)), 0x2147L, ((VECTOR(int16_t, 4))(0x354CL)), ((VECTOR(int16_t, 4))(0x4715L)), 0x6F5EL)).hi, ((VECTOR(int16_t, 8))(1L)), ((VECTOR(int16_t, 8))(0x44E9L))))).s11)).xxxy, (int16_t)p_1912->g_62))).x))) , p_1912->g_706)) == (void*)0), p_1912->g_46.x, p_18, p_1912) , (*p_15)));
    return p_16;
}


/* ------------------------------------------ */
/* 
 * reads : p_1912->g_comm_values
 * writes:
 */
uint8_t  func_19(uint32_t  p_20, int32_t * p_21, struct S2 * p_1912)
{ /* block id: 8 */
    uint64_t l_23 = 0x3F4F88039D6B9C2DL;
    l_23 ^= p_1912->g_comm_values[p_1912->tid];
    return p_20;
}


/* ------------------------------------------ */
/* 
 * reads : p_1912->g_266 p_1912->g_175.f0 p_1912->g_682
 * writes: p_1912->g_163 p_1912->g_187 p_1912->g_150 p_1912->g_173
 */
int32_t * func_30(uint8_t  p_31, int16_t  p_32, int32_t  p_33, struct S2 * p_1912)
{ /* block id: 151 */
    uint32_t l_648 = 0xFF876542L;
    int16_t *l_675 = &p_1912->g_163;
    uint16_t l_676 = 65535UL;
    int32_t l_677[9][4][7] = {{{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L},{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L},{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L},{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L}},{{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L},{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L},{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L},{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L}},{{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L},{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L},{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L},{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L}},{{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L},{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L},{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L},{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L}},{{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L},{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L},{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L},{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L}},{{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L},{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L},{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L},{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L}},{{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L},{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L},{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L},{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L}},{{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L},{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L},{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L},{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L}},{{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L},{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L},{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L},{0L,0x563A9674L,0x2B8882C9L,1L,0x5E8B219DL,0x4C90C8A6L,0x3A8F5761L}}};
    uint64_t *l_678[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int8_t *l_679 = &p_1912->g_150;
    int32_t l_680[3][1][6] = {{{(-1L),0L,(-1L),0x61B057E0L,0L,0x61B057E0L}},{{(-1L),0L,(-1L),0x61B057E0L,0L,0x61B057E0L}},{{(-1L),0L,(-1L),0x61B057E0L,0L,0x61B057E0L}}};
    int32_t **l_681 = &p_1912->g_173;
    int i, j, k;
    if ((atomic_inc(&p_1912->l_atomic_input[12]) == 8))
    { /* block id: 153 */
        int32_t l_387 = (-1L);
        int32_t *l_397 = &l_387;
        int32_t *l_398 = &l_387;
        int64_t l_399 = 0L;
        for (l_387 = (-25); (l_387 == (-16)); l_387++)
        { /* block id: 156 */
            union U0 l_390 = {0x0F0049EFL};/* VOLATILE GLOBAL l_390 */
            uint64_t l_391 = 1UL;
            VECTOR(uint64_t, 8) l_392 = (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0xB2B47FD7588A92D1L), 0xB2B47FD7588A92D1L), 0xB2B47FD7588A92D1L, 1UL, 0xB2B47FD7588A92D1L);
            uint64_t l_395 = 1UL;
            uint64_t *l_394 = &l_395;
            uint64_t **l_393 = &l_394;
            uint64_t **l_396 = (void*)0;
            int i;
            l_396 = (((l_390 , l_391) , ((VECTOR(uint64_t, 8))(l_392.s65512055)).s1) , l_393);
        }
        l_398 = l_397;
        if (l_399)
        { /* block id: 160 */
            int32_t l_400 = 0x23A35FBDL;
            for (l_400 = 0; (l_400 <= 20); l_400 = safe_add_func_int32_t_s_s(l_400, 1))
            { /* block id: 163 */
                int32_t l_404 = 0x3C0F7A78L;
                int32_t *l_403 = &l_404;
                l_403 = (void*)0;
            }
            for (l_400 = 0; (l_400 != (-25)); l_400--)
            { /* block id: 168 */
                int32_t l_407 = 1L;
                for (l_407 = 24; (l_407 != 13); l_407--)
                { /* block id: 171 */
                    uint64_t l_410[4];
                    uint32_t l_411[10][4] = {{4294967293UL,0xC56D475DL,4294967293UL,4294967293UL},{4294967293UL,0xC56D475DL,4294967293UL,4294967293UL},{4294967293UL,0xC56D475DL,4294967293UL,4294967293UL},{4294967293UL,0xC56D475DL,4294967293UL,4294967293UL},{4294967293UL,0xC56D475DL,4294967293UL,4294967293UL},{4294967293UL,0xC56D475DL,4294967293UL,4294967293UL},{4294967293UL,0xC56D475DL,4294967293UL,4294967293UL},{4294967293UL,0xC56D475DL,4294967293UL,4294967293UL},{4294967293UL,0xC56D475DL,4294967293UL,4294967293UL},{4294967293UL,0xC56D475DL,4294967293UL,4294967293UL}};
                    uint32_t l_412 = 1UL;
                    uint64_t l_413 = 0xCF48C60A36105BC8L;
                    uint16_t l_414 = 65531UL;
                    int32_t l_416 = 0x47D3644FL;
                    int32_t *l_415[8][1] = {{&l_416},{&l_416},{&l_416},{&l_416},{&l_416},{&l_416},{&l_416},{&l_416}};
                    int32_t *l_417[6] = {&l_416,&l_416,&l_416,&l_416,&l_416,&l_416};
                    int i, j;
                    for (i = 0; i < 4; i++)
                        l_410[i] = 0x19BDABF775516BE7L;
                    l_411[9][3] &= l_410[1];
                    (*l_398) |= ((l_412 , (-4L)) , 0x58A45E11L);
                    l_417[0] = (l_413 , (l_414 , l_415[3][0]));
                    for (l_411[9][3] = 0; (l_411[9][3] < 18); l_411[9][3] = safe_add_func_uint16_t_u_u(l_411[9][3], 3))
                    { /* block id: 177 */
                        VECTOR(int16_t, 4) l_420 = (VECTOR(int16_t, 4))(0x5A5AL, (VECTOR(int16_t, 2))(0x5A5AL, 1L), 1L);
                        VECTOR(int16_t, 4) l_421 = (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x1600L), 0x1600L);
                        VECTOR(uint16_t, 16) l_422 = (VECTOR(uint16_t, 16))(0x01A9L, (VECTOR(uint16_t, 4))(0x01A9L, (VECTOR(uint16_t, 2))(0x01A9L, 0x327AL), 0x327AL), 0x327AL, 0x01A9L, 0x327AL, (VECTOR(uint16_t, 2))(0x01A9L, 0x327AL), (VECTOR(uint16_t, 2))(0x01A9L, 0x327AL), 0x01A9L, 0x327AL, 0x01A9L, 0x327AL);
                        VECTOR(uint16_t, 16) l_423 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 65527UL), 65527UL), 65527UL, 1UL, 65527UL, (VECTOR(uint16_t, 2))(1UL, 65527UL), (VECTOR(uint16_t, 2))(1UL, 65527UL), 1UL, 65527UL, 1UL, 65527UL);
                        VECTOR(uint16_t, 2) l_424 = (VECTOR(uint16_t, 2))(0xEC27L, 65535UL);
                        uint32_t l_425[6][8][1] = {{{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL}},{{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL}},{{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL}},{{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL}},{{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL}},{{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL},{4294967291UL}}};
                        int32_t l_426 = 0L;
                        int32_t l_427 = 0x0454CC60L;
                        uint32_t l_428 = 0xFCE235A5L;
                        int16_t l_429 = 6L;
                        int16_t l_430 = (-1L);
                        int16_t l_431 = 0L;
                        int i, j, k;
                        l_425[2][0][0] ^= ((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 8))(l_420.zxwzwzxz)).s66, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(l_421.xzyxzwzz)).odd)).even))).yxxxxyyyyxyxxyxx)).lo, ((VECTOR(uint16_t, 8))(min(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(mad_hi(((VECTOR(uint16_t, 4))(0x7A2BL, ((VECTOR(uint16_t, 2))(0x66F9L, 0xC580L)), 8UL)).zwzwwzyw, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(hadd(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(0xE80BL, 0UL)))), ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(l_422.s6e8e74ef)))))).s52))), 0UL, 65535UL)).xyyywyxy, ((VECTOR(uint16_t, 4))(0UL, ((VECTOR(uint16_t, 2))(l_423.s7a)), 0x85D9L)).xxwxxzzy))))), ((VECTOR(uint16_t, 16))(l_424.yyyxxyyyxyyxxyyy)).even)))))).s0;
                        l_427 = l_426;
                        l_431 |= (l_430 = (l_429 = (l_428 = ((*l_398) = 0x45D950EFL))));
                    }
                }
            }
            for (l_400 = 0; (l_400 == (-14)); l_400 = safe_sub_func_int32_t_s_s(l_400, 2))
            { /* block id: 190 */
                uint64_t l_434 = 0x3E35576D8273B4D8L;
                uint32_t l_437 = 4294967289UL;
                int64_t l_438 = 9L;
                int16_t l_439 = 0x4A1BL;
                ++l_434;
            }
            for (l_400 = 4; (l_400 <= 15); l_400 = safe_add_func_uint32_t_u_u(l_400, 4))
            { /* block id: 224 */
                int32_t l_480 = 0x294724DCL;
                VECTOR(int16_t, 4) l_481 = (VECTOR(int16_t, 4))((-4L), (VECTOR(int16_t, 2))((-4L), (-1L)), (-1L));
                uint32_t l_482 = 0x495B19ACL;
                uint64_t l_485 = 18446744073709551615UL;
                int8_t l_486[1];
                int32_t l_487 = 0x38F0D1F3L;
                uint32_t l_488 = 0x1A51D5DAL;
                uint64_t l_491 = 0x8CB0C1F3DE2645FCL;
                int i;
                for (i = 0; i < 1; i++)
                    l_486[i] = 0x02L;
                l_482--;
                l_486[0] |= l_485;
                l_488++;
            }
        }
        else
        { /* block id: 236 */
            int16_t l_495 = 4L;
            union U1 l_496 = {0L};
            int32_t l_497 = (-1L);
            int8_t l_498 = 0x21L;
            int64_t l_499 = 0x75BABD9F51E27F2DL;
            VECTOR(int32_t, 2) l_500 = (VECTOR(int32_t, 2))(1L, (-1L));
            VECTOR(int32_t, 8) l_501 = (VECTOR(int32_t, 8))(0x22E8FD7EL, (VECTOR(int32_t, 4))(0x22E8FD7EL, (VECTOR(int32_t, 2))(0x22E8FD7EL, 0x7F105BC7L), 0x7F105BC7L), 0x7F105BC7L, 0x22E8FD7EL, 0x7F105BC7L);
            VECTOR(int32_t, 8) l_502 = (VECTOR(int32_t, 8))(0x56E38703L, (VECTOR(int32_t, 4))(0x56E38703L, (VECTOR(int32_t, 2))(0x56E38703L, 0x3CB21160L), 0x3CB21160L), 0x3CB21160L, 0x56E38703L, 0x3CB21160L);
            VECTOR(int32_t, 8) l_503 = (VECTOR(int32_t, 8))(9L, (VECTOR(int32_t, 4))(9L, (VECTOR(int32_t, 2))(9L, (-4L)), (-4L)), (-4L), 9L, (-4L));
            int8_t l_504 = 0x7DL;
            VECTOR(int32_t, 4) l_505 = (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, 0L), 0L);
            VECTOR(int32_t, 16) l_506 = (VECTOR(int32_t, 16))((-5L), (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), 0x1B70DEBBL), 0x1B70DEBBL), 0x1B70DEBBL, (-5L), 0x1B70DEBBL, (VECTOR(int32_t, 2))((-5L), 0x1B70DEBBL), (VECTOR(int32_t, 2))((-5L), 0x1B70DEBBL), (-5L), 0x1B70DEBBL, (-5L), 0x1B70DEBBL);
            uint32_t l_507 = 4294967295UL;
            uint16_t l_508[10];
            uint64_t l_645 = 0xC5209DBED1A392F4L;
            VECTOR(int64_t, 16) l_646 = (VECTOR(int64_t, 16))(0x1E981E60CBF35B61L, (VECTOR(int64_t, 4))(0x1E981E60CBF35B61L, (VECTOR(int64_t, 2))(0x1E981E60CBF35B61L, 9L), 9L), 9L, 0x1E981E60CBF35B61L, 9L, (VECTOR(int64_t, 2))(0x1E981E60CBF35B61L, 9L), (VECTOR(int64_t, 2))(0x1E981E60CBF35B61L, 9L), 0x1E981E60CBF35B61L, 9L, 0x1E981E60CBF35B61L, 9L);
            int32_t *l_647[3];
            int i;
            for (i = 0; i < 10; i++)
                l_508[i] = 65530UL;
            for (i = 0; i < 3; i++)
                l_647[i] = (void*)0;
            if ((l_495 , (l_496 , (GROUP_DIVERGE(0, 1) , ((*l_398) |= (l_497 , ((VECTOR(int32_t, 16))(0L, 2L, 0L, l_498, l_499, 0x6D5F52EDL, ((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_500.yxyxxyyx)).s73)).xyxyxyyy)).s4645214560623136, ((VECTOR(int32_t, 2))(l_501.s71)).xyxyyyyyyxyyxxyy))).s5b)))).yyyx)).lo, ((VECTOR(int32_t, 16))(0x17CCEA3CL, ((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 4))(l_502.s2162)).even, ((VECTOR(int32_t, 4))(l_503.s3223)).lo))), 8L, l_504, 0x447B6D14L, 0x47BDAC3BL, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_505.zx)).yyyyxxyy)), (-1L))).s7a))).yxyxxxyx, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(l_506.s60fe3ded2dd5654e)).sb, ((VECTOR(int32_t, 2))(0x45D19D0CL, 0x3882ABB1L)), l_507, l_508[4], 0x6EC9C705L, (-1L), 4L)).s63)).xyxxyxyy))), 7L, 0x09BE3B71L)).sd))))))
            { /* block id: 238 */
                uint64_t l_509 = 18446744073709551615UL;
                (*l_398) = (-3L);
                (*l_398) = l_509;
                for (l_509 = 0; (l_509 < 44); ++l_509)
                { /* block id: 243 */
                    uint32_t l_512 = 0UL;
                    --l_512;
                    (*l_398) |= 0L;
                    for (l_512 = 12; (l_512 == 20); ++l_512)
                    { /* block id: 248 */
                        int32_t l_517 = 4L;
                        VECTOR(int8_t, 2) l_518 = (VECTOR(int8_t, 2))(1L, 0x6FL);
                        VECTOR(int8_t, 8) l_519 = (VECTOR(int8_t, 8))(0x32L, (VECTOR(int8_t, 4))(0x32L, (VECTOR(int8_t, 2))(0x32L, (-4L)), (-4L)), (-4L), 0x32L, (-4L));
                        uint8_t l_520 = 0xA6L;
                        int16_t l_521 = 0x1831L;
                        VECTOR(int8_t, 2) l_522 = (VECTOR(int8_t, 2))(0x4FL, 0x31L);
                        uint8_t l_523 = 254UL;
                        VECTOR(int8_t, 16) l_524 = (VECTOR(int8_t, 16))((-6L), (VECTOR(int8_t, 4))((-6L), (VECTOR(int8_t, 2))((-6L), 0x39L), 0x39L), 0x39L, (-6L), 0x39L, (VECTOR(int8_t, 2))((-6L), 0x39L), (VECTOR(int8_t, 2))((-6L), 0x39L), (-6L), 0x39L, (-6L), 0x39L);
                        VECTOR(int8_t, 8) l_525 = (VECTOR(int8_t, 8))(0x0CL, (VECTOR(int8_t, 4))(0x0CL, (VECTOR(int8_t, 2))(0x0CL, 0x06L), 0x06L), 0x06L, 0x0CL, 0x06L);
                        VECTOR(uint32_t, 4) l_526 = (VECTOR(uint32_t, 4))(0x923F2E14L, (VECTOR(uint32_t, 2))(0x923F2E14L, 0x41265D29L), 0x41265D29L);
                        VECTOR(uint32_t, 16) l_527 = (VECTOR(uint32_t, 16))(0x56AC0362L, (VECTOR(uint32_t, 4))(0x56AC0362L, (VECTOR(uint32_t, 2))(0x56AC0362L, 0x835FC95CL), 0x835FC95CL), 0x835FC95CL, 0x56AC0362L, 0x835FC95CL, (VECTOR(uint32_t, 2))(0x56AC0362L, 0x835FC95CL), (VECTOR(uint32_t, 2))(0x56AC0362L, 0x835FC95CL), 0x56AC0362L, 0x835FC95CL, 0x56AC0362L, 0x835FC95CL);
                        int64_t l_528 = 0x09BEB7636962805CL;
                        int64_t l_529 = 0x780160D09F8E03CEL;
                        uint32_t l_530 = 4294967295UL;
                        uint16_t l_531 = 0x8E2FL;
                        int8_t l_532[10][6] = {{0x3CL,0x6FL,0x1BL,0x26L,2L,2L},{0x3CL,0x6FL,0x1BL,0x26L,2L,2L},{0x3CL,0x6FL,0x1BL,0x26L,2L,2L},{0x3CL,0x6FL,0x1BL,0x26L,2L,2L},{0x3CL,0x6FL,0x1BL,0x26L,2L,2L},{0x3CL,0x6FL,0x1BL,0x26L,2L,2L},{0x3CL,0x6FL,0x1BL,0x26L,2L,2L},{0x3CL,0x6FL,0x1BL,0x26L,2L,2L},{0x3CL,0x6FL,0x1BL,0x26L,2L,2L},{0x3CL,0x6FL,0x1BL,0x26L,2L,2L}};
                        int32_t l_533 = 5L;
                        uint32_t l_534 = 0xB5F940EFL;
                        uint16_t l_535 = 0xCFD2L;
                        int32_t l_536 = 0x45A1B139L;
                        uint32_t l_537 = 0xA99D0033L;
                        uint32_t *l_539 = (void*)0;
                        uint32_t **l_538[3][4][2] = {{{&l_539,&l_539},{&l_539,&l_539},{&l_539,&l_539},{&l_539,&l_539}},{{&l_539,&l_539},{&l_539,&l_539},{&l_539,&l_539},{&l_539,&l_539}},{{&l_539,&l_539},{&l_539,&l_539},{&l_539,&l_539},{&l_539,&l_539}}};
                        uint32_t **l_540 = &l_539;
                        union U0 *l_541[3];
                        int16_t l_542[4][1][5] = {{{0x327EL,3L,(-6L),3L,0x327EL}},{{0x327EL,3L,(-6L),3L,0x327EL}},{{0x327EL,3L,(-6L),3L,0x327EL}},{{0x327EL,3L,(-6L),3L,0x327EL}}};
                        uint16_t l_543 = 0xDEF3L;
                        int32_t l_544 = 1L;
                        VECTOR(int16_t, 4) l_545 = (VECTOR(int16_t, 4))(0x6718L, (VECTOR(int16_t, 2))(0x6718L, 8L), 8L);
                        VECTOR(uint16_t, 2) l_546 = (VECTOR(uint16_t, 2))(65534UL, 1UL);
                        VECTOR(uint16_t, 2) l_547 = (VECTOR(uint16_t, 2))(0xBB19L, 65529UL);
                        VECTOR(uint16_t, 16) l_548 = (VECTOR(uint16_t, 16))(65532UL, (VECTOR(uint16_t, 4))(65532UL, (VECTOR(uint16_t, 2))(65532UL, 0x30ACL), 0x30ACL), 0x30ACL, 65532UL, 0x30ACL, (VECTOR(uint16_t, 2))(65532UL, 0x30ACL), (VECTOR(uint16_t, 2))(65532UL, 0x30ACL), 65532UL, 0x30ACL, 65532UL, 0x30ACL);
                        VECTOR(uint16_t, 16) l_549 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 65533UL), 65533UL), 65533UL, 1UL, 65533UL, (VECTOR(uint16_t, 2))(1UL, 65533UL), (VECTOR(uint16_t, 2))(1UL, 65533UL), 1UL, 65533UL, 1UL, 65533UL);
                        VECTOR(uint16_t, 4) l_550 = (VECTOR(uint16_t, 4))(0x084AL, (VECTOR(uint16_t, 2))(0x084AL, 65535UL), 65535UL);
                        VECTOR(uint16_t, 8) l_551 = (VECTOR(uint16_t, 8))(65526UL, (VECTOR(uint16_t, 4))(65526UL, (VECTOR(uint16_t, 2))(65526UL, 65535UL), 65535UL), 65535UL, 65526UL, 65535UL);
                        VECTOR(uint16_t, 4) l_552 = (VECTOR(uint16_t, 4))(65528UL, (VECTOR(uint16_t, 2))(65528UL, 0xF197L), 0xF197L);
                        VECTOR(uint16_t, 8) l_553 = (VECTOR(uint16_t, 8))(0x336FL, (VECTOR(uint16_t, 4))(0x336FL, (VECTOR(uint16_t, 2))(0x336FL, 0xC2B9L), 0xC2B9L), 0xC2B9L, 0x336FL, 0xC2B9L);
                        VECTOR(uint16_t, 16) l_554 = (VECTOR(uint16_t, 16))(0x4862L, (VECTOR(uint16_t, 4))(0x4862L, (VECTOR(uint16_t, 2))(0x4862L, 65530UL), 65530UL), 65530UL, 0x4862L, 65530UL, (VECTOR(uint16_t, 2))(0x4862L, 65530UL), (VECTOR(uint16_t, 2))(0x4862L, 65530UL), 0x4862L, 65530UL, 0x4862L, 65530UL);
                        VECTOR(uint16_t, 4) l_555 = (VECTOR(uint16_t, 4))(0xC562L, (VECTOR(uint16_t, 2))(0xC562L, 8UL), 8UL);
                        VECTOR(uint16_t, 16) l_556 = (VECTOR(uint16_t, 16))(0x39D8L, (VECTOR(uint16_t, 4))(0x39D8L, (VECTOR(uint16_t, 2))(0x39D8L, 1UL), 1UL), 1UL, 0x39D8L, 1UL, (VECTOR(uint16_t, 2))(0x39D8L, 1UL), (VECTOR(uint16_t, 2))(0x39D8L, 1UL), 0x39D8L, 1UL, 0x39D8L, 1UL);
                        VECTOR(uint16_t, 2) l_557 = (VECTOR(uint16_t, 2))(0x8B5CL, 65530UL);
                        int16_t l_558 = 0x7E70L;
                        uint16_t l_559[8] = {1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL};
                        uint32_t l_560[1][7][10] = {{{0x5C8A289AL,4294967288UL,0xD61BD524L,1UL,0xD61BD524L,4294967288UL,0x5C8A289AL,4294967295UL,1UL,1UL},{0x5C8A289AL,4294967288UL,0xD61BD524L,1UL,0xD61BD524L,4294967288UL,0x5C8A289AL,4294967295UL,1UL,1UL},{0x5C8A289AL,4294967288UL,0xD61BD524L,1UL,0xD61BD524L,4294967288UL,0x5C8A289AL,4294967295UL,1UL,1UL},{0x5C8A289AL,4294967288UL,0xD61BD524L,1UL,0xD61BD524L,4294967288UL,0x5C8A289AL,4294967295UL,1UL,1UL},{0x5C8A289AL,4294967288UL,0xD61BD524L,1UL,0xD61BD524L,4294967288UL,0x5C8A289AL,4294967295UL,1UL,1UL},{0x5C8A289AL,4294967288UL,0xD61BD524L,1UL,0xD61BD524L,4294967288UL,0x5C8A289AL,4294967295UL,1UL,1UL},{0x5C8A289AL,4294967288UL,0xD61BD524L,1UL,0xD61BD524L,4294967288UL,0x5C8A289AL,4294967295UL,1UL,1UL}}};
                        int8_t l_561[7][5] = {{0x22L,0L,(-1L),0L,0x22L},{0x22L,0L,(-1L),0L,0x22L},{0x22L,0L,(-1L),0L,0x22L},{0x22L,0L,(-1L),0L,0x22L},{0x22L,0L,(-1L),0L,0x22L},{0x22L,0L,(-1L),0L,0x22L},{0x22L,0L,(-1L),0L,0x22L}};
                        union U0 l_562 = {0L};/* VOLATILE GLOBAL l_562 */
                        int32_t *l_563 = &l_517;
                        int32_t *l_564 = (void*)0;
                        int i, j, k;
                        for (i = 0; i < 3; i++)
                            l_541[i] = (void*)0;
                        l_540 = (((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(clz(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))((l_399 = (l_499 = l_517)), 0x7EA501A820CC5F95L, 0x2D60C0022666ADF4L, 0x1CEDA2D746597E81L)).ywywyyyzyxxyyxxw)).hi))).even)).zwxwzyww)).s6 , (((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 4))(l_518.xyyy)), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(mul_hi(((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),int8_t,((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(mul_hi(((VECTOR(int8_t, 4))(rotate(((VECTOR(int8_t, 16))(l_519.s6476222344675070)).s38d8, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(l_520, ((VECTOR(int8_t, 4))(l_521, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(l_522.yyxy)).odd)), 0x4DL)), l_523, (-8L), (-3L), (l_504 = (l_498 |= ((VECTOR(int8_t, 2))(l_524.s2c)).lo)), 0x48L, 6L, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 4))(l_525.s5020)).odd, ((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 8))(0L, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(0x67L, 0x32L)), 0x37L, 1L)), ((((VECTOR(uint32_t, 16))(mul_hi(((VECTOR(uint32_t, 8))(l_526.xwwzywwx)).s4721413257426314, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(mul_hi(((VECTOR(uint32_t, 2))(safe_clamp_func(VECTOR(uint32_t, 2),uint32_t,((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(l_527.sd863552127907bec)).sc1)).xxyxxxyy)).even)).even, (uint32_t)0x7FD45FC4L, (uint32_t)FAKE_DIVERGE(p_1912->local_1_offset, get_local_id(1), 10)))), ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(sub_sat(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 4))(upsample(((VECTOR(uint16_t, 16))(0x9C8FL, 0xB84FL, ((VECTOR(uint16_t, 2))(mul_hi(((VECTOR(uint16_t, 8))(sub_sat(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(rotate(((VECTOR(uint16_t, 2))(65530UL, 0x75D1L)).yxxy, ((VECTOR(uint16_t, 4))(l_528, l_529, 65529UL, 65535UL))))))).xxwwyyzz, ((VECTOR(uint16_t, 8))(65535UL))))).s07, ((VECTOR(uint16_t, 2))(0x877CL))))), 0x25B9L, 7UL, ((VECTOR(uint16_t, 2))(0x5E8CL)), 65534UL, ((VECTOR(uint16_t, 2))(0xD6BAL)), l_530, l_531, ((VECTOR(uint16_t, 2))(0x13E1L)), 0x8946L)).sfe93, ((VECTOR(uint16_t, 4))(65535UL))))))).lo, ((VECTOR(uint32_t, 2))(4294967295UL))))), 0xE5AB36E5L, l_532[3][5], 0UL, ((VECTOR(uint32_t, 2))(0xD418378FL)), 4UL)).s54))))).odd, l_533, 3UL, 1UL)).zyyyyyzwwxywyxyx))).sd , l_534) , l_535), 0x6DL, (-1L))), ((VECTOR(int8_t, 8))(0x3DL))))).s05))).yyxyxyyy, ((VECTOR(int8_t, 8))(0x21L))))).s4660036617247716)), ((VECTOR(int8_t, 16))((-3L)))))).hi)).s53)), 0x43L, (-1L), 1L)).even)).odd))).xzxwxwyxzyzyywxy, ((VECTOR(int8_t, 16))(0x3DL))))).even)).s64, (int8_t)l_536, (int8_t)l_537))).xxyxyxxxyyxyyxxy, ((VECTOR(int8_t, 16))(0x47L))))))).s9a11))))).w , l_538[1][1][0]));
                        l_541[0] = (void*)0;
                    }
                    for (l_512 = (-27); (l_512 == 6); l_512 = safe_add_func_int16_t_s_s(l_512, 2))
                    { /* block id: 267 */
                        int32_t l_567 = 4L;
                        uint32_t l_568 = 0xB667B7F4L;
                        int64_t l_571 = 0L;
                        uint8_t l_572 = 0xE7L;
                        int32_t l_576 = 6L;
                        int32_t *l_575 = &l_576;
                        int32_t *l_577 = &l_576;
                        ++l_568;
                        l_571 &= 4L;
                        --l_572;
                        l_577 = (l_397 = l_575);
                    }
                }
            }
            else
            { /* block id: 275 */
                int32_t l_578 = 0x0CD2AE69L;
                int32_t l_582 = 0x0FB4FF55L;
                uint16_t l_583 = 0xD074L;
                int8_t l_584 = (-1L);
                uint32_t l_585 = 0xB174412EL;
                for (l_578 = 7; (l_578 > (-3)); --l_578)
                { /* block id: 278 */
                    int32_t l_581 = 6L;
                    (*l_398) |= l_581;
                }
                (*l_398) &= ((l_582 ^= 3UL) , (l_583 , l_584));
                if (l_585)
                { /* block id: 283 */
                    int32_t l_586 = 0L;
                    for (l_586 = 0; (l_586 != 21); l_586++)
                    { /* block id: 286 */
                        int32_t l_590 = 0x65C6438BL;
                        int32_t *l_589 = &l_590;
                        int8_t l_591 = 0x05L;
                        int64_t l_592 = (-1L);
                        VECTOR(uint8_t, 2) l_593 = (VECTOR(uint8_t, 2))(0xAAL, 0xEEL);
                        int32_t *l_596 = (void*)0;
                        int32_t *l_597 = (void*)0;
                        int i;
                        l_398 = l_589;
                        l_593.y++;
                        l_597 = l_596;
                    }
                }
                else
                { /* block id: 291 */
                    VECTOR(int32_t, 2) l_598 = (VECTOR(int32_t, 2))(0L, 0x34811E86L);
                    int i;
                    l_397 = (void*)0;
                    for (l_598.x = 0; (l_598.x != (-10)); l_598.x = safe_sub_func_int32_t_s_s(l_598.x, 6))
                    { /* block id: 295 */
                        uint16_t l_601 = 0UL;
                        uint32_t l_602 = 0x4A7000C2L;
                        VECTOR(uint64_t, 16) l_603 = (VECTOR(uint64_t, 16))(0x17AFFF678EB1019DL, (VECTOR(uint64_t, 4))(0x17AFFF678EB1019DL, (VECTOR(uint64_t, 2))(0x17AFFF678EB1019DL, 0xFBC9619374A1D617L), 0xFBC9619374A1D617L), 0xFBC9619374A1D617L, 0x17AFFF678EB1019DL, 0xFBC9619374A1D617L, (VECTOR(uint64_t, 2))(0x17AFFF678EB1019DL, 0xFBC9619374A1D617L), (VECTOR(uint64_t, 2))(0x17AFFF678EB1019DL, 0xFBC9619374A1D617L), 0x17AFFF678EB1019DL, 0xFBC9619374A1D617L, 0x17AFFF678EB1019DL, 0xFBC9619374A1D617L);
                        VECTOR(uint64_t, 16) l_604 = (VECTOR(uint64_t, 16))(0x299774314A0E5441L, (VECTOR(uint64_t, 4))(0x299774314A0E5441L, (VECTOR(uint64_t, 2))(0x299774314A0E5441L, 18446744073709551612UL), 18446744073709551612UL), 18446744073709551612UL, 0x299774314A0E5441L, 18446744073709551612UL, (VECTOR(uint64_t, 2))(0x299774314A0E5441L, 18446744073709551612UL), (VECTOR(uint64_t, 2))(0x299774314A0E5441L, 18446744073709551612UL), 0x299774314A0E5441L, 18446744073709551612UL, 0x299774314A0E5441L, 18446744073709551612UL);
                        int32_t l_605 = (-4L);
                        uint32_t l_606 = 0x24893A53L;
                        uint32_t l_607 = 0x6B766F5FL;
                        union U1 l_609 = {0x38D6D6C9L};
                        union U1 *l_608[6];
                        VECTOR(int32_t, 4) l_612 = (VECTOR(int32_t, 4))(0x003C3852L, (VECTOR(int32_t, 2))(0x003C3852L, (-5L)), (-5L));
                        VECTOR(int32_t, 8) l_613 = (VECTOR(int32_t, 8))(0x7AB58260L, (VECTOR(int32_t, 4))(0x7AB58260L, (VECTOR(int32_t, 2))(0x7AB58260L, (-5L)), (-5L)), (-5L), 0x7AB58260L, (-5L));
                        VECTOR(int32_t, 8) l_614 = (VECTOR(int32_t, 8))(0x754ED5E0L, (VECTOR(int32_t, 4))(0x754ED5E0L, (VECTOR(int32_t, 2))(0x754ED5E0L, 0x7F23A64DL), 0x7F23A64DL), 0x7F23A64DL, 0x754ED5E0L, 0x7F23A64DL);
                        VECTOR(int32_t, 16) l_615 = (VECTOR(int32_t, 16))(0x686B6859L, (VECTOR(int32_t, 4))(0x686B6859L, (VECTOR(int32_t, 2))(0x686B6859L, 0L), 0L), 0L, 0x686B6859L, 0L, (VECTOR(int32_t, 2))(0x686B6859L, 0L), (VECTOR(int32_t, 2))(0x686B6859L, 0L), 0x686B6859L, 0L, 0x686B6859L, 0L);
                        VECTOR(int32_t, 8) l_616 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-3L)), (-3L)), (-3L), 0L, (-3L));
                        uint32_t l_617 = 3UL;
                        VECTOR(int32_t, 2) l_618 = (VECTOR(int32_t, 2))(0x7965BB1AL, 0x4D2BF706L);
                        VECTOR(int32_t, 4) l_619 = (VECTOR(int32_t, 4))(0x173A06C0L, (VECTOR(int32_t, 2))(0x173A06C0L, 0x3A6E7D92L), 0x3A6E7D92L);
                        VECTOR(int32_t, 4) l_620 = (VECTOR(int32_t, 4))(0x73FD2848L, (VECTOR(int32_t, 2))(0x73FD2848L, 1L), 1L);
                        int16_t l_621 = 0x1D1CL;
                        uint8_t l_622 = 0xB7L;
                        VECTOR(int32_t, 16) l_623 = (VECTOR(int32_t, 16))((-4L), (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), 0x11CF3663L), 0x11CF3663L), 0x11CF3663L, (-4L), 0x11CF3663L, (VECTOR(int32_t, 2))((-4L), 0x11CF3663L), (VECTOR(int32_t, 2))((-4L), 0x11CF3663L), (-4L), 0x11CF3663L, (-4L), 0x11CF3663L);
                        VECTOR(int32_t, 2) l_624 = (VECTOR(int32_t, 2))(0L, 0x07624869L);
                        VECTOR(int32_t, 16) l_625 = (VECTOR(int32_t, 16))(0x139EC19FL, (VECTOR(int32_t, 4))(0x139EC19FL, (VECTOR(int32_t, 2))(0x139EC19FL, 0x63F97877L), 0x63F97877L), 0x63F97877L, 0x139EC19FL, 0x63F97877L, (VECTOR(int32_t, 2))(0x139EC19FL, 0x63F97877L), (VECTOR(int32_t, 2))(0x139EC19FL, 0x63F97877L), 0x139EC19FL, 0x63F97877L, 0x139EC19FL, 0x63F97877L);
                        VECTOR(int32_t, 8) l_626 = (VECTOR(int32_t, 8))(0x4E488A63L, (VECTOR(int32_t, 4))(0x4E488A63L, (VECTOR(int32_t, 2))(0x4E488A63L, 0x2E563C06L), 0x2E563C06L), 0x2E563C06L, 0x4E488A63L, 0x2E563C06L);
                        VECTOR(int32_t, 2) l_627 = (VECTOR(int32_t, 2))(0x26E1D2F6L, 0x48D11E3DL);
                        VECTOR(int16_t, 2) l_628 = (VECTOR(int16_t, 2))(0x32D7L, 0x6A09L);
                        VECTOR(int32_t, 2) l_629 = (VECTOR(int32_t, 2))(0x4A731513L, 8L);
                        VECTOR(int32_t, 8) l_630 = (VECTOR(int32_t, 8))((-9L), (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 6L), 6L), 6L, (-9L), 6L);
                        uint64_t l_631 = 0x32DB1B86600C5505L;
                        VECTOR(int32_t, 2) l_632 = (VECTOR(int32_t, 2))(0x742B6C3CL, 9L);
                        VECTOR(int32_t, 2) l_633 = (VECTOR(int32_t, 2))(0x3370C3B9L, (-7L));
                        VECTOR(int16_t, 16) l_634 = (VECTOR(int16_t, 16))(0x4E0BL, (VECTOR(int16_t, 4))(0x4E0BL, (VECTOR(int16_t, 2))(0x4E0BL, 1L), 1L), 1L, 0x4E0BL, 1L, (VECTOR(int16_t, 2))(0x4E0BL, 1L), (VECTOR(int16_t, 2))(0x4E0BL, 1L), 0x4E0BL, 1L, 0x4E0BL, 1L);
                        VECTOR(int64_t, 16) l_635 = (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L, (VECTOR(int64_t, 2))((-1L), 1L), (VECTOR(int64_t, 2))((-1L), 1L), (-1L), 1L, (-1L), 1L);
                        VECTOR(int64_t, 8) l_636 = (VECTOR(int64_t, 8))(5L, (VECTOR(int64_t, 4))(5L, (VECTOR(int64_t, 2))(5L, 0x621795F5BF0914F6L), 0x621795F5BF0914F6L), 0x621795F5BF0914F6L, 5L, 0x621795F5BF0914F6L);
                        uint32_t l_637 = 4294967289UL;
                        int16_t l_638 = 1L;
                        int32_t l_639 = 0x010F32B3L;
                        uint32_t l_640 = 0x82545906L;
                        int64_t l_641 = 3L;
                        int16_t l_642 = 0x1E2FL;
                        int32_t l_643 = 0x14FDC36AL;
                        uint32_t l_644 = 1UL;
                        int i;
                        for (i = 0; i < 6; i++)
                            l_608[i] = &l_609;
                        l_608[1] = ((l_607 &= (((l_601 , l_602) , (GROUP_DIVERGE(0, 1) , 0x59L)) , ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(rhadd(((VECTOR(uint64_t, 2))(l_603.s5d)), ((VECTOR(uint64_t, 16))(safe_clamp_func(VECTOR(uint64_t, 16),uint64_t,((VECTOR(uint64_t, 2))(l_604.s45)).yxxyyxyyxxyyyyxy, (uint64_t)l_605, (uint64_t)l_606))).se9))).yyxyyyxx)).s2)) , (void*)0);
                        l_605 = ((*l_398) |= ((++l_508[4]) , 0x406F6387L));
                        (*l_398) = ((VECTOR(int32_t, 8))(l_612.ywwyyyzw)).s1;
                        l_605 |= (l_502.s2 ^= ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(l_613.s1277141447076540)).s4b)).xxyx, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(l_614.s2541)).wyzzxwxyxwywwyyz)).sa7dc, ((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(l_615.secfcc57c7c562e95)).sd8, ((VECTOR(int32_t, 16))(1L, ((VECTOR(int32_t, 8))(l_616.s12035705)), l_617, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 8))(l_618.xyxyyxyx)).s6602020727324326, ((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_619.wwzzzyzx)).s53)), 0x0B846966L, 4L)).zwxyywxzzxywxzwx)).s71)).yxxyyyxy, ((VECTOR(int32_t, 8))(l_620.xxxwxyxx))))).s0275373712177367, ((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))((l_621 , ((*l_398) = (l_618.x &= l_622))), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(l_623.s66)))))))), 0x703D941EL)))), ((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 4))(l_624.xxxy)), ((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x4382DC21L, 1L)).xxxy)).wxyxxyyw, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(l_625.s1f2251d10c8e0b7c)))).odd))).even))), ((VECTOR(int32_t, 8))(l_626.s72723634)).even))).yyxxwwwzwwyywzyw))).s6d)), 0x4901B4BBL, (-3L), 0L, (-9L))).s05, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(0x4E7D2F1EL, 0x6DDC2CBBL))))))).xyxx, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(l_627.yxxyyyyy)).s6, (l_503.s0 = ((*l_398) |= ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(1L, (-4L))), 0x641AF88BL, 8L)).y)), 0x2293D646L, 0x28214A49L, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x5A46B213L, 0L)), 7L, 4L)).xwxxxxyx, ((VECTOR(int32_t, 2))(0x6BA56314L, 0L)).yyxxxyyy, ((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(l_628.xyyyyxxxxxxyxyyy)))).hi, ((VECTOR(uint16_t, 2))(65535UL, 0x0561L)).yyyxxyxx)))))).s61, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 2))(0x64E9828EL, 0L)).xyxx, ((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(l_629.xxxxxyyy)).s65, ((VECTOR(int32_t, 2))(1L, (-2L))), ((VECTOR(int32_t, 2))(l_630.s72))))).xyyx))).even)), 0x15F04853L, l_631, ((*l_398) &= ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(1L, 0x686D598AL)), 0x538D2559L, 0x373C8A67L)).y), ((*l_398) &= ((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_632.yy)).xxyxyyyx)).s44)).yyyy)), ((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 2))(0x10FF1F6FL, (-5L))).xyyx, ((VECTOR(int32_t, 16))(l_633.xxyxyxxyyxxxxyxx)).s53ef)))))).w), ((*l_398) = (((l_585 = 0x406F5314L) , ((((l_495 = ((VECTOR(int16_t, 8))(l_634.scb0f7858)).s7) , ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(0x5E46CB9C03165397L, ((VECTOR(int64_t, 8))(l_635.sdbf30cdf)), ((VECTOR(int64_t, 2))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 2),((VECTOR(int64_t, 2))(1L, 0x503D5BBCAFE04C5AL)), ((VECTOR(int64_t, 4))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 4),((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(l_636.s01111376)).s3226327767207267)), (int64_t)l_637))))))).s7198, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))((-1L), ((VECTOR(int64_t, 4))(clz(((VECTOR(int64_t, 8))(clz(((VECTOR(int64_t, 4))(mul_hi(((VECTOR(int64_t, 4))(clz(((VECTOR(int64_t, 2))(add_sat(((VECTOR(int64_t, 16))(l_638, ((VECTOR(int64_t, 4))(4L)), ((VECTOR(int64_t, 4))(2L)), 0x2A04542CB526C16DL, ((VECTOR(int64_t, 2))(0x5421C05D77FBA968L)), l_639, 0x16C14BAFED2DE29FL, 0x0C7ECD9C957BBB87L, 0x13B93BEE067EB8C8L)).sc3, ((VECTOR(int64_t, 2))(0x7DD8E5CA6EE1246CL))))).xxxx))), ((VECTOR(int64_t, 4))((-8L)))))).wzywxyzx))).odd))), ((VECTOR(int64_t, 2))(3L)), 0x038F151739E04EB5L)).s02)).xxyy, ((VECTOR(int64_t, 4))((-2L)))))).hi, ((VECTOR(int64_t, 2))(0x5224B27ADF0DA26DL))))), 0x193FB6E4555E0358L, (-1L), l_640, 0x28AF75B2A634D3C8L, 8L)).hi)).s3) , l_641) , l_642)) , l_643)), ((VECTOR(int32_t, 8))(0x32DADCC7L)), 4L)).sba))), ((VECTOR(int32_t, 4))(0x058C7AD6L)), (-4L), 0x2DC2F53CL)).s5, l_644, 0x30C6CA67L, 0L)))))).even, ((VECTOR(int32_t, 4))(8L))))).wzywzywzwyyyxyxw, ((VECTOR(int32_t, 16))(0x46029CF2L)), ((VECTOR(int32_t, 16))(0x65B1FCA0L))))).s20f8))).even)).yxxyxyxy)).s2);
                    }
                }
            }
            l_397 = (l_398 = (((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(1L, ((VECTOR(int64_t, 4))((-1L), (l_399 = l_645), (-9L), 1L)), ((VECTOR(int64_t, 8))(l_646.se22f66f5)), 4L, 0x7700EFAC120FABBDL, 1L)).sb7)).odd , l_647[1]));
        }
        unsigned int result = 0;
        result += l_387;
        result += l_399;
        atomic_add(&p_1912->l_special_values[12], result);
    }
    else
    { /* block id: 320 */
        (1 + 1);
    }
    l_680[1][0][5] |= ((((l_648 & (0UL == ((safe_mul_func_uint8_t_u_u(l_648, ((safe_rshift_func_int8_t_s_u(((safe_rshift_func_uint16_t_u_s((+p_33), 4)) ^ 0x4EL), (safe_rshift_func_uint8_t_u_u(((((*l_679) = (((l_677[6][0][4] = (p_1912->g_187.s2 = ((safe_mod_func_int32_t_s_s((safe_rshift_func_int8_t_s_u(((safe_rshift_func_int8_t_s_u((0x7008L == (safe_add_func_int16_t_s_s(((*l_675) = (safe_add_func_uint8_t_u_u(((safe_add_func_int8_t_s_s((safe_sub_func_int8_t_s_s((safe_div_func_uint16_t_u_u(p_1912->g_266.x, (((safe_rshift_func_uint16_t_u_s(0UL, p_32)) != p_31) && p_33))), p_32)), p_33)) , p_1912->g_266.x), p_31))), p_1912->g_266.y))), 6)) > l_676), l_648)), l_648)) || l_677[6][0][4]))) , p_31) || p_33)) , l_677[6][0][4]) >= l_648), p_1912->g_266.y)))) & 6UL))) != p_1912->g_175.f0))) || p_33) || p_32) && l_676);
    (*l_681) = &p_33;
    return p_1912->g_682;
}


/* ------------------------------------------ */
/* 
 * reads : p_1912->g_175 p_1912->g_271 p_1912->g_365 p_1912->g_201 p_1912->g_368 p_1912->g_80 p_1912->g_46 p_1912->g_2 p_1912->g_61 p_1912->g_62 p_1912->l_comm_values p_1912->g_comm_values p_1912->g_163 p_1912->g_75 p_1912->g_134
 * writes: p_1912->g_175.f0 p_1912->g_62 p_1912->g_271 p_1912->g_365 p_1912->g_150 p_1912->l_comm_values p_1912->g_158 p_1912->g_163
 */
uint8_t  func_34(int32_t  p_35, int32_t  p_36, uint32_t  p_37, uint32_t  p_38, struct S2 * p_1912)
{ /* block id: 120 */
    int32_t *l_311 = (void*)0;
    int32_t *l_312 = (void*)0;
    int32_t *l_313 = (void*)0;
    int32_t *l_314 = (void*)0;
    int32_t *l_315 = (void*)0;
    int32_t *l_316 = (void*)0;
    int32_t *l_317 = (void*)0;
    int32_t *l_318 = (void*)0;
    int32_t *l_319 = &p_1912->g_62;
    int32_t *l_320 = (void*)0;
    int32_t l_321[7] = {(-8L),5L,(-8L),(-8L),5L,(-8L),(-8L)};
    int32_t *l_322 = &p_1912->g_175.f0;
    int32_t *l_323 = (void*)0;
    int32_t *l_324[3][10][6] = {{{&l_321[5],&p_1912->g_62,(void*)0,&l_321[4],&l_321[1],&p_1912->g_62},{&l_321[5],&p_1912->g_62,(void*)0,&l_321[4],&l_321[1],&p_1912->g_62},{&l_321[5],&p_1912->g_62,(void*)0,&l_321[4],&l_321[1],&p_1912->g_62},{&l_321[5],&p_1912->g_62,(void*)0,&l_321[4],&l_321[1],&p_1912->g_62},{&l_321[5],&p_1912->g_62,(void*)0,&l_321[4],&l_321[1],&p_1912->g_62},{&l_321[5],&p_1912->g_62,(void*)0,&l_321[4],&l_321[1],&p_1912->g_62},{&l_321[5],&p_1912->g_62,(void*)0,&l_321[4],&l_321[1],&p_1912->g_62},{&l_321[5],&p_1912->g_62,(void*)0,&l_321[4],&l_321[1],&p_1912->g_62},{&l_321[5],&p_1912->g_62,(void*)0,&l_321[4],&l_321[1],&p_1912->g_62},{&l_321[5],&p_1912->g_62,(void*)0,&l_321[4],&l_321[1],&p_1912->g_62}},{{&l_321[5],&p_1912->g_62,(void*)0,&l_321[4],&l_321[1],&p_1912->g_62},{&l_321[5],&p_1912->g_62,(void*)0,&l_321[4],&l_321[1],&p_1912->g_62},{&l_321[5],&p_1912->g_62,(void*)0,&l_321[4],&l_321[1],&p_1912->g_62},{&l_321[5],&p_1912->g_62,(void*)0,&l_321[4],&l_321[1],&p_1912->g_62},{&l_321[5],&p_1912->g_62,(void*)0,&l_321[4],&l_321[1],&p_1912->g_62},{&l_321[5],&p_1912->g_62,(void*)0,&l_321[4],&l_321[1],&p_1912->g_62},{&l_321[5],&p_1912->g_62,(void*)0,&l_321[4],&l_321[1],&p_1912->g_62},{&l_321[5],&p_1912->g_62,(void*)0,&l_321[4],&l_321[1],&p_1912->g_62},{&l_321[5],&p_1912->g_62,(void*)0,&l_321[4],&l_321[1],&p_1912->g_62},{&l_321[5],&p_1912->g_62,(void*)0,&l_321[4],&l_321[1],&p_1912->g_62}},{{&l_321[5],&p_1912->g_62,(void*)0,&l_321[4],&l_321[1],&p_1912->g_62},{&l_321[5],&p_1912->g_62,(void*)0,&l_321[4],&l_321[1],&p_1912->g_62},{&l_321[5],&p_1912->g_62,(void*)0,&l_321[4],&l_321[1],&p_1912->g_62},{&l_321[5],&p_1912->g_62,(void*)0,&l_321[4],&l_321[1],&p_1912->g_62},{&l_321[5],&p_1912->g_62,(void*)0,&l_321[4],&l_321[1],&p_1912->g_62},{&l_321[5],&p_1912->g_62,(void*)0,&l_321[4],&l_321[1],&p_1912->g_62},{&l_321[5],&p_1912->g_62,(void*)0,&l_321[4],&l_321[1],&p_1912->g_62},{&l_321[5],&p_1912->g_62,(void*)0,&l_321[4],&l_321[1],&p_1912->g_62},{&l_321[5],&p_1912->g_62,(void*)0,&l_321[4],&l_321[1],&p_1912->g_62},{&l_321[5],&p_1912->g_62,(void*)0,&l_321[4],&l_321[1],&p_1912->g_62}}};
    uint64_t l_325 = 0x51ADBA321759A175L;
    int64_t l_335 = 4L;
    int64_t ***l_357 = &p_1912->g_305[0][5];
    int16_t l_366 = 0x634AL;
    int32_t l_371[7] = {0L,0x042DA64DL,0L,0L,0x042DA64DL,0L,0L};
    uint64_t l_372 = 1UL;
    int64_t **l_379[6] = {&p_1912->g_306,&p_1912->g_306,&p_1912->g_306,&p_1912->g_306,&p_1912->g_306,&p_1912->g_306};
    uint32_t l_386 = 0xCBBD7D85L;
    int i, j, k;
    ++l_325;
    if (((*l_322) = p_37))
    { /* block id: 123 */
        uint64_t l_334 = 1UL;
        int32_t l_337 = 0x7B39D564L;
        if (((*l_322) = (safe_sub_func_int8_t_s_s((((void*)0 != &p_1912->g_150) & (safe_lshift_func_int8_t_s_s((p_1912->g_175 , ((safe_sub_func_int16_t_s_s(p_1912->g_271.w, l_334)) > p_36)), ((void*)0 != &p_1912->g_201)))), (l_334 >= l_334)))))
        { /* block id: 125 */
            int32_t **l_336 = &l_311;
            l_335 = 0L;
            (*l_336) = &l_321[4];
            (*l_311) |= (((+l_337) , p_35) ^ l_337);
        }
        else
        { /* block id: 129 */
            return l_337;
        }
        for (l_325 = 22; (l_325 > 22); ++l_325)
        { /* block id: 134 */
            (*l_319) = ((void*)0 == &p_1912->g_201);
        }
    }
    else
    { /* block id: 137 */
        int16_t *l_355[4];
        int16_t **l_354 = &l_355[2];
        int64_t ***l_356[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        uint32_t *l_358 = (void*)0;
        uint32_t *l_359 = (void*)0;
        uint32_t *l_360[7];
        int32_t l_361 = 0x5C692EC0L;
        uint8_t *l_364 = &p_1912->g_365;
        uint8_t *l_367[5][6][4] = {{{&p_1912->g_368,&p_1912->g_368,&p_1912->g_368,&p_1912->g_368},{&p_1912->g_368,&p_1912->g_368,&p_1912->g_368,&p_1912->g_368},{&p_1912->g_368,&p_1912->g_368,&p_1912->g_368,&p_1912->g_368},{&p_1912->g_368,&p_1912->g_368,&p_1912->g_368,&p_1912->g_368},{&p_1912->g_368,&p_1912->g_368,&p_1912->g_368,&p_1912->g_368},{&p_1912->g_368,&p_1912->g_368,&p_1912->g_368,&p_1912->g_368}},{{&p_1912->g_368,&p_1912->g_368,&p_1912->g_368,&p_1912->g_368},{&p_1912->g_368,&p_1912->g_368,&p_1912->g_368,&p_1912->g_368},{&p_1912->g_368,&p_1912->g_368,&p_1912->g_368,&p_1912->g_368},{&p_1912->g_368,&p_1912->g_368,&p_1912->g_368,&p_1912->g_368},{&p_1912->g_368,&p_1912->g_368,&p_1912->g_368,&p_1912->g_368},{&p_1912->g_368,&p_1912->g_368,&p_1912->g_368,&p_1912->g_368}},{{&p_1912->g_368,&p_1912->g_368,&p_1912->g_368,&p_1912->g_368},{&p_1912->g_368,&p_1912->g_368,&p_1912->g_368,&p_1912->g_368},{&p_1912->g_368,&p_1912->g_368,&p_1912->g_368,&p_1912->g_368},{&p_1912->g_368,&p_1912->g_368,&p_1912->g_368,&p_1912->g_368},{&p_1912->g_368,&p_1912->g_368,&p_1912->g_368,&p_1912->g_368},{&p_1912->g_368,&p_1912->g_368,&p_1912->g_368,&p_1912->g_368}},{{&p_1912->g_368,&p_1912->g_368,&p_1912->g_368,&p_1912->g_368},{&p_1912->g_368,&p_1912->g_368,&p_1912->g_368,&p_1912->g_368},{&p_1912->g_368,&p_1912->g_368,&p_1912->g_368,&p_1912->g_368},{&p_1912->g_368,&p_1912->g_368,&p_1912->g_368,&p_1912->g_368},{&p_1912->g_368,&p_1912->g_368,&p_1912->g_368,&p_1912->g_368},{&p_1912->g_368,&p_1912->g_368,&p_1912->g_368,&p_1912->g_368}},{{&p_1912->g_368,&p_1912->g_368,&p_1912->g_368,&p_1912->g_368},{&p_1912->g_368,&p_1912->g_368,&p_1912->g_368,&p_1912->g_368},{&p_1912->g_368,&p_1912->g_368,&p_1912->g_368,&p_1912->g_368},{&p_1912->g_368,&p_1912->g_368,&p_1912->g_368,&p_1912->g_368},{&p_1912->g_368,&p_1912->g_368,&p_1912->g_368,&p_1912->g_368},{&p_1912->g_368,&p_1912->g_368,&p_1912->g_368,&p_1912->g_368}}};
        int32_t l_369[7] = {0x4A46979EL,0x4A46979EL,0x4A46979EL,0x4A46979EL,0x4A46979EL,0x4A46979EL,0x4A46979EL};
        int32_t l_370 = 0x387E986DL;
        int8_t *l_382 = (void*)0;
        int8_t *l_383 = &p_1912->g_150;
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_355[i] = &p_1912->g_163;
        for (i = 0; i < 7; i++)
            l_360[i] = (void*)0;
        (*l_322) = (p_35 = ((-7L) && (safe_lshift_func_uint8_t_u_s((safe_sub_func_uint32_t_u_u((l_369[0] = (safe_mul_func_uint8_t_u_u(0x56L, (safe_rshift_func_uint16_t_u_u(((p_35 >= ((*l_364) |= (safe_add_func_uint32_t_u_u((~((safe_lshift_func_uint8_t_u_s(p_35, ((void*)0 == l_354))) >= (l_356[4] != l_357))), (++p_1912->g_271.x))))) ^ ((l_361 = l_366) > 0x6DL)), 6))))), l_370)), l_370))));
        l_372--;
        l_386 |= (+(p_35 = (~(~((((safe_sub_func_int32_t_s_s((p_1912->g_201 | (((!(p_1912->g_271.z = l_370)) && (safe_mod_func_int8_t_s_s(l_361, ((((l_379[0] == l_379[3]) , (func_68((((safe_lshift_func_uint8_t_u_s(p_38, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((*l_383) = l_370), (safe_rshift_func_uint8_t_u_u(0xDAL, 4)), 1L, (-1L))).zwxywxyx)).s5)) & l_369[0]) >= 0x3C1AL), p_37, p_1912->g_368, p_1912) , p_38)) < p_38) , p_36)))) , 0L)), p_1912->g_134.y)) > 2UL) , p_36) && p_37)))));
    }
    return p_1912->g_46.y;
}


/* ------------------------------------------ */
/* 
 * reads : p_1912->g_comm_values p_1912->g_61 p_1912->g_188.f0 p_1912->g_75 p_1912->g_265 p_1912->g_266 p_1912->g_271 p_1912->g_62 p_1912->g_150 p_1912->g_304 p_1912->g_308 p_1912->g_173
 * writes: p_1912->g_62 p_1912->g_201 p_1912->g_158 p_1912->g_255 p_1912->g_75 p_1912->g_163 p_1912->g_175.f1 p_1912->g_150 p_1912->g_305 p_1912->g_173
 */
uint8_t  func_51(uint8_t  p_52, struct S2 * p_1912)
{ /* block id: 16 */
    int16_t l_66 = 0x0EFDL;
    int32_t *l_67[2];
    uint64_t *l_74[10][3][1] = {{{&p_1912->g_75},{&p_1912->g_75},{&p_1912->g_75}},{{&p_1912->g_75},{&p_1912->g_75},{&p_1912->g_75}},{{&p_1912->g_75},{&p_1912->g_75},{&p_1912->g_75}},{{&p_1912->g_75},{&p_1912->g_75},{&p_1912->g_75}},{{&p_1912->g_75},{&p_1912->g_75},{&p_1912->g_75}},{{&p_1912->g_75},{&p_1912->g_75},{&p_1912->g_75}},{{&p_1912->g_75},{&p_1912->g_75},{&p_1912->g_75}},{{&p_1912->g_75},{&p_1912->g_75},{&p_1912->g_75}},{{&p_1912->g_75},{&p_1912->g_75},{&p_1912->g_75}},{{&p_1912->g_75},{&p_1912->g_75},{&p_1912->g_75}}};
    int8_t *l_76[4];
    int64_t l_77[1][9] = {{0L,0L,0L,0L,0L,0L,0L,0L,0L}};
    uint16_t *l_249 = (void*)0;
    uint16_t *l_250 = &p_1912->g_201;
    VECTOR(uint32_t, 8) l_251 = (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 4294967295UL), 4294967295UL), 4294967295UL, 0UL, 4294967295UL);
    int8_t **l_252 = &p_1912->g_158[0][5];
    int8_t *l_254 = &p_1912->g_150;
    int8_t **l_253[9][4][7] = {{{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]},{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]},{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]},{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]}},{{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]},{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]},{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]},{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]}},{{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]},{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]},{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]},{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]}},{{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]},{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]},{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]},{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]}},{{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]},{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]},{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]},{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]}},{{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]},{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]},{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]},{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]}},{{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]},{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]},{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]},{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]}},{{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]},{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]},{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]},{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]}},{{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]},{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]},{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]},{&l_76[3],&l_254,(void*)0,&l_76[3],&l_76[2],&l_254,&l_76[2]}}};
    int64_t l_264 = 1L;
    VECTOR(int32_t, 2) l_267 = (VECTOR(int32_t, 2))((-1L), 0L);
    VECTOR(int32_t, 4) l_268 = (VECTOR(int32_t, 4))((-2L), (VECTOR(int32_t, 2))((-2L), 0x40F58D22L), 0x40F58D22L);
    uint8_t l_276 = 0x4FL;
    uint32_t l_277[2][3] = {{0x1DB38FF2L,0UL,0x1DB38FF2L},{0x1DB38FF2L,0UL,0x1DB38FF2L}};
    uint64_t *l_278 = &p_1912->g_175.f1;
    int32_t l_279 = 0x4760A830L;
    uint64_t l_280 = 0UL;
    int64_t l_281 = 0x65B1FA4407E7B2CCL;
    int32_t l_291 = 0x3F352B2FL;
    VECTOR(uint16_t, 2) l_299 = (VECTOR(uint16_t, 2))(65535UL, 1UL);
    int64_t *l_303 = (void*)0;
    int64_t **l_302[7][10][3] = {{{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303}},{{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303}},{{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303}},{{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303}},{{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303}},{{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303}},{{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303},{&l_303,&l_303,&l_303}}};
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_67[i] = (void*)0;
    for (i = 0; i < 4; i++)
        l_76[i] = (void*)0;
    (*p_1912->g_61) = ((safe_sub_func_uint8_t_u_u(l_66, func_19(l_66, l_67[1], p_1912))) , func_19(p_52, l_67[0], p_1912));
    l_281 = (p_1912->g_62 ^= ((((*l_250) = p_1912->g_188.f0) <= GROUP_DIVERGE(1, 1)) != (((VECTOR(uint32_t, 8))(l_251.s44326773)).s2 , ((((((*l_252) = l_76[3]) == (p_1912->g_255 = (void*)0)) , (safe_div_func_int8_t_s_s((((6L <= ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(1UL, ((safe_sub_func_uint8_t_u_u(((GROUP_DIVERGE(0, 1) && (safe_mod_func_int8_t_s_s(((((p_1912->g_75 = (safe_sub_func_uint32_t_u_u(l_264, (p_1912->g_75 <= p_52)))) , (((((*l_278) = ((p_1912->g_163 = (((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 16))((-1L), (-9L), 0x19BA29A5L, 0x5F916052L, 0x1574A671L, (-1L), 0x2699EA8DL, ((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(p_1912->g_265.s4b39)), ((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 8))(p_1912->g_266.xzwzxwwy)).s03, ((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 2))(l_267.yx)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(7L, (-1L))).xxyx)).odd)))))).xyyx))).yzwzwwzx, ((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),VECTOR(int32_t, 4),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 2))(l_268.zx)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(sub_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))((safe_mul_func_int8_t_s_s((FAKE_DIVERGE(p_1912->local_2_offset, get_local_id(2), 10) | ((VECTOR(uint32_t, 8))(p_1912->g_271.wzyxwzzz)).s2), (safe_rshift_func_uint16_t_u_s((safe_add_func_uint8_t_u_u(l_276, l_277[0][0])), 4)))), 0x4D831EBBL, (-7L), (-9L))).zyywxzzy)).s1410511520140643, ((VECTOR(int32_t, 16))(0x71449B13L))))).s6676)).hi))).yxyxyyyyxyyxxxyx)).sba9f, ((VECTOR(int32_t, 4))((-1L))), ((VECTOR(int32_t, 4))(1L))))).xzwyxwyw, ((VECTOR(int32_t, 8))(0x058B087DL)), ((VECTOR(int32_t, 8))(1L)))))))), 0x3BD9ACDCL)).s3d9e, ((VECTOR(int32_t, 4))((-1L)))))).xxyywyyxyywzyxyx)).sd < 8L)) < 0xB2AEL)) < 0x113CCDA484C74275L) , 0x46B94E045B28C403L) & p_1912->g_271.x)) > p_52) & 0x08L), p_52))) >= 0xE3D05E36L), l_279)) == l_280), ((VECTOR(uint32_t, 8))(0xE18C4BA0L)), 0x9665395DL, 0x41D9B12EL, 9UL, 9UL, 4294967293UL, 4294967289UL)).odd)).s7) , FAKE_DIVERGE(p_1912->group_0_offset, get_group_id(0), 10)) , p_52), p_52))) != 0xEF83DF6CL) || 0xCCL))));
    for (p_1912->g_150 = 0; (p_1912->g_150 != 11); p_1912->g_150 = safe_add_func_uint64_t_u_u(p_1912->g_150, 8))
    { /* block id: 113 */
        int32_t l_284 = 0L;
        int32_t l_285 = 4L;
        int32_t l_286 = (-4L);
        int32_t l_287 = 0x05F721C3L;
        int32_t l_288 = 0x2D3666B9L;
        int8_t l_289 = 1L;
        int32_t l_290 = 1L;
        int32_t l_292 = 6L;
        int32_t l_293 = (-10L);
        int32_t l_295 = 7L;
        VECTOR(int16_t, 8) l_296 = (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x6C5BL), 0x6C5BL), 0x6C5BL, 1L, 0x6C5BL);
        int32_t l_297 = (-1L);
        int32_t l_298[3];
        union U1 *l_309 = &p_1912->g_175;
        int i;
        for (i = 0; i < 3; i++)
            l_298[i] = 7L;
        l_299.x++;
        (*p_1912->g_304) = l_302[0][4][0];
        (*p_1912->g_308) = &l_293;
        (*p_1912->g_173) = ((l_309 != &p_1912->g_175) , l_290);
    }
    return p_52;
}


/* ------------------------------------------ */
/* 
 * reads : p_1912->g_2 p_1912->g_61 p_1912->g_62
 * writes: p_1912->g_62
 */
int8_t  func_57(int16_t  p_58, int8_t * p_59, int32_t * p_60, struct S2 * p_1912)
{ /* block id: 12 */
    int32_t *l_63 = &p_1912->g_62;
    (*p_1912->g_61) = (*p_60);
    (*l_63) &= 0x4CABBE7FL;
    return (*l_63);
}


/* ------------------------------------------ */
/* 
 * reads : p_1912->g_80 p_1912->g_46 p_1912->g_2 p_1912->g_61 p_1912->g_62 p_1912->l_comm_values p_1912->g_comm_values p_1912->g_134 p_1912->g_155 p_1912->g_156 p_1912->g_163 p_1912->g_175 p_1912->g_75 p_1912->g_184 p_1912->g_187 p_1912->g_188 p_1912->g_201
 * writes: p_1912->l_comm_values p_1912->g_62 p_1912->g_158 p_1912->g_163
 */
union U1  func_68(uint64_t  p_69, int16_t  p_70, uint8_t  p_71, struct S2 * p_1912)
{ /* block id: 18 */
    VECTOR(uint8_t, 8) l_85 = (VECTOR(uint8_t, 8))(0x81L, (VECTOR(uint8_t, 4))(0x81L, (VECTOR(uint8_t, 2))(0x81L, 255UL), 255UL), 255UL, 0x81L, 255UL);
    VECTOR(uint8_t, 8) l_86 = (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL);
    int32_t *l_93[1];
    uint16_t l_108 = 0UL;
    uint8_t l_119 = 1UL;
    int32_t l_120 = 7L;
    uint32_t l_121 = 0xF4C6C2C3L;
    int64_t *l_122 = (void*)0;
    int64_t *l_123 = (void*)0;
    int64_t *l_124 = (void*)0;
    int64_t *l_125 = (void*)0;
    int64_t *l_126 = (void*)0;
    int16_t l_127 = 0x43F0L;
    int64_t l_128 = 0x6848F5E8599F0A17L;
    int32_t l_129 = 0x45F53CA7L;
    int8_t *l_149 = &p_1912->g_150;
    int32_t l_160 = 0x0DFEC3DBL;
    uint32_t l_165[4] = {0x95E86A8CL,0x95E86A8CL,0x95E86A8CL,0x95E86A8CL};
    union U1 *l_203[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t **l_207 = &l_93[0];
    int i;
    for (i = 0; i < 1; i++)
        l_93[i] = &p_1912->g_62;
    l_129 = (((safe_rshift_func_uint16_t_u_s((0x068BD6B8L && ((p_1912->g_80 , (((safe_rshift_func_uint8_t_u_s((safe_rshift_func_uint16_t_u_s((!((VECTOR(uint16_t, 8))(upsample(((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(255UL, 0UL)), 0x79L, 1UL)), ((VECTOR(uint8_t, 8))(l_85.s41464427)).odd))).wxyxwyxw, ((VECTOR(uint8_t, 4))(l_86.s6254)).zxwxzyxx))).s7), ((safe_sub_func_int32_t_s_s((safe_div_func_uint16_t_u_u((safe_div_func_uint32_t_u_u((&p_1912->g_2 != l_93[0]), (safe_add_func_int64_t_s_s((p_1912->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1912->tid, 120))] = ((safe_sub_func_int8_t_s_s((safe_div_func_uint8_t_u_u((((safe_add_func_uint64_t_u_u((((safe_mod_func_uint32_t_u_u(((safe_mod_func_int16_t_s_s(((p_1912->g_46.y >= (((safe_sub_func_int64_t_s_s((l_108 ^ (((safe_mul_func_int8_t_s_s(0x70L, (safe_sub_func_int16_t_s_s((safe_add_func_uint64_t_u_u((safe_sub_func_uint64_t_u_u(6UL, (safe_lshift_func_int16_t_s_s(((l_119 &= ((0x25127A50812B24ABL ^ p_1912->g_2) , (*p_1912->g_61))) != 4294967292UL), p_69)))), p_70)), l_120)))) >= p_1912->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1912->tid, 120))]) != 251UL)), p_70)) , &p_1912->g_75) == &p_69)) , p_1912->g_46.x), 1L)) , p_1912->g_46.x), l_121)) ^ p_71) , p_71), p_1912->g_46.y)) | p_69) || (-1L)), p_71)), p_69)) >= p_69)), 0x4973AC029035E4B5L)))), l_127)), p_70)) <= p_71))), p_71)) , p_1912->g_2) >= 0x93L)) | l_128)), 15)) < p_1912->g_46.x) != p_1912->g_comm_values[p_1912->tid]);
    for (l_119 = 0; (l_119 == 40); l_119++)
    { /* block id: 24 */
        uint8_t l_132 = 0x9FL;
        int32_t *l_133 = &l_129;
        l_132 |= p_71;
        l_133 = l_133;
    }
    (*p_1912->g_61) |= ((VECTOR(int32_t, 16))(p_1912->g_134.xxxxxxyyyxxyyyxx)).s6;
    for (l_108 = 0; (l_108 == 22); l_108 = safe_add_func_uint64_t_u_u(l_108, 2))
    { /* block id: 31 */
        VECTOR(int32_t, 2) l_146 = (VECTOR(int32_t, 2))(0L, 9L);
        VECTOR(uint64_t, 4) l_185 = (VECTOR(uint64_t, 4))(0x5AEE717A6D3C7F17L, (VECTOR(uint64_t, 2))(0x5AEE717A6D3C7F17L, 0x9E99429188FF261EL), 0x9E99429188FF261EL);
        VECTOR(uint64_t, 2) l_186 = (VECTOR(uint64_t, 2))(3UL, 0x778384813EE79D9DL);
        int16_t *l_194[8] = {&p_1912->g_163,&p_1912->g_163,&p_1912->g_163,&p_1912->g_163,&p_1912->g_163,&p_1912->g_163,&p_1912->g_163,&p_1912->g_163};
        int16_t **l_193 = &l_194[4];
        uint64_t *l_195 = (void*)0;
        uint64_t *l_196 = (void*)0;
        uint64_t *l_197 = (void*)0;
        uint64_t *l_198 = (void*)0;
        uint64_t *l_199 = (void*)0;
        int32_t l_200 = 0x35DE02C9L;
        union U1 *l_202 = &p_1912->g_175;
        uint32_t l_210 = 6UL;
        int i;
        for (l_120 = 8; (l_120 == (-29)); l_120 = safe_sub_func_uint64_t_u_u(l_120, 6))
        { /* block id: 34 */
            uint8_t l_141[3];
            int8_t *l_157 = &p_1912->g_150;
            int64_t *l_159 = &l_128;
            int16_t *l_161 = &l_127;
            int16_t *l_162 = &p_1912->g_163;
            int i;
            for (i = 0; i < 3; i++)
                l_141[i] = 0xF8L;
            (*p_1912->g_61) = (((*l_162) ^= (safe_rshift_func_uint16_t_u_s((--l_141[2]), ((*l_161) = ((safe_sub_func_int32_t_s_s(((VECTOR(int32_t, 8))(l_146.yxxxxyxy)).s5, ((((safe_mul_func_int16_t_s_s((l_149 != (void*)0), ((((*l_159) ^= ((((((safe_mul_func_int16_t_s_s(6L, ((((((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 16))(p_1912->g_155.s2127535601031624)).s77ff, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(p_1912->g_156.wzywwzxzwyyywyzy)).lo)).s6013763736223270)).s3bf9))).zxyyzyyw)).s5 && FAKE_DIVERGE(p_1912->global_1_offset, get_global_id(1), 10)) > (&l_128 == (void*)0)) || GROUP_DIVERGE(1, 1)) ^ 0xF5L))) , l_157) == (p_1912->g_158[0][5] = l_149)) <= l_146.y) > p_1912->g_2) >= GROUP_DIVERGE(2, 1))) ^ l_160) | GROUP_DIVERGE(1, 1)))) >= GROUP_DIVERGE(2, 1)) >= l_146.y) , (-5L)))) && p_69))))) > l_146.y);
        }
        --l_165[2];
        for (p_1912->g_163 = 0; (p_1912->g_163 != 29); p_1912->g_163 = safe_add_func_uint8_t_u_u(p_1912->g_163, 3))
        { /* block id: 45 */
            for (l_128 = (-16); (l_128 == 15); l_128++)
            { /* block id: 48 */
                int32_t **l_174 = &l_93[0];
                (*l_174) = &p_1912->g_2;
                (*p_1912->g_61) = (*p_1912->g_61);
                return p_1912->g_175;
            }
        }
        if ((safe_lshift_func_int16_t_s_u((FAKE_DIVERGE(p_1912->local_1_offset, get_local_id(1), 10) , ((safe_mul_func_int16_t_s_s(p_1912->g_75, (safe_div_func_uint32_t_u_u((((safe_mod_func_int8_t_s_s(((((((VECTOR(uint64_t, 4))(sub_sat(((VECTOR(uint64_t, 8))(abs_diff(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(sub_sat(((VECTOR(uint64_t, 8))(p_1912->g_184.wyzwzxww)).s17, ((VECTOR(uint64_t, 8))(sub_sat(((VECTOR(uint64_t, 8))(l_185.xwwwzxyy)), ((VECTOR(uint64_t, 2))(mul_hi(((VECTOR(uint64_t, 2))(l_186.yx)), ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))(p_1912->g_187.s7633640567354466)))).even)).s56))).yyyyxyyy))).s00))), (&p_1912->g_164 != (p_1912->g_188 , &p_70)), 0UL, (safe_rshift_func_uint16_t_u_s(65535UL, 15)), (l_200 = ((l_146.y = 4294967294UL) <= (safe_div_func_uint16_t_u_u((((*l_193) = &p_1912->g_163) != &l_127), p_1912->g_155.s1)))), 0xCB8892D855E7E663L, ((VECTOR(uint64_t, 4))(0x9816CB2FF3143DF5L)), ((VECTOR(uint64_t, 2))(18446744073709551611UL)), 18446744073709551613UL, 0x43F2AAD057FE0C21L, 0x05ABF9FFA7629048L)).sf6ae)).xwzyywwy, ((VECTOR(uint64_t, 8))(0xF9FA0A2640D8B7E6L))))).lo, ((VECTOR(uint64_t, 4))(0x801E87EC680869E2L))))).y , 0xD5E7L) | 4UL) >= p_1912->g_46.y) | p_1912->g_62), FAKE_DIVERGE(p_1912->group_1_offset, get_group_id(1), 10))) != p_70) != 0x04A074EBL), p_1912->g_201)))) <= p_69)), 4)))
        { /* block id: 57 */
            int32_t **l_206 = &l_93[0];
            l_203[0] = l_202;
            for (l_160 = 23; (l_160 < 25); l_160 = safe_add_func_int32_t_s_s(l_160, 8))
            { /* block id: 61 */
                return p_1912->g_175;
            }
            l_207 = l_206;
        }
        else
        { /* block id: 65 */
            (**l_207) &= (-1L);
            for (p_71 = 22; (p_71 <= 24); p_71 = safe_add_func_uint16_t_u_u(p_71, 1))
            { /* block id: 69 */
                ++l_210;
            }
            if ((atomic_inc(&p_1912->g_atomic_input[19 * get_linear_group_id() + 10]) == 3))
            { /* block id: 73 */
                int32_t l_213[5];
                int i;
                for (i = 0; i < 5; i++)
                    l_213[i] = 0x1BC63782L;
                for (l_213[4] = (-28); (l_213[4] < (-13)); l_213[4]++)
                { /* block id: 76 */
                    int32_t l_216[7][2] = {{5L,(-1L)},{5L,(-1L)},{5L,(-1L)},{5L,(-1L)},{5L,(-1L)},{5L,(-1L)},{5L,(-1L)}};
                    uint8_t l_246[2];
                    int32_t *l_247 = &l_216[1][0];
                    int32_t *l_248[4] = {&l_216[1][0],&l_216[1][0],&l_216[1][0],&l_216[1][0]};
                    int i, j;
                    for (i = 0; i < 2; i++)
                        l_246[i] = 0x10L;
                    for (l_216[1][0] = 0; (l_216[1][0] != 20); l_216[1][0] = safe_add_func_uint64_t_u_u(l_216[1][0], 4))
                    { /* block id: 79 */
                        int32_t l_219 = 0x63A3262FL;
                        VECTOR(int8_t, 8) l_220 = (VECTOR(int8_t, 8))(2L, (VECTOR(int8_t, 4))(2L, (VECTOR(int8_t, 2))(2L, (-1L)), (-1L)), (-1L), 2L, (-1L));
                        int32_t l_221 = 0x4BD90867L;
                        int64_t l_222 = 4L;
                        int8_t l_223 = 1L;
                        VECTOR(uint8_t, 2) l_224 = (VECTOR(uint8_t, 2))(0x97L, 0xDCL);
                        int32_t l_227 = (-7L);
                        int8_t l_228 = 0x69L;
                        VECTOR(int32_t, 4) l_229 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-6L)), (-6L));
                        VECTOR(int32_t, 4) l_230 = (VECTOR(int32_t, 4))(0x5D64F156L, (VECTOR(int32_t, 2))(0x5D64F156L, 0x189A7F20L), 0x189A7F20L);
                        VECTOR(int32_t, 8) l_231 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x4D41B4FAL), 0x4D41B4FAL), 0x4D41B4FAL, 1L, 0x4D41B4FAL);
                        VECTOR(int32_t, 16) l_232 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x2AFCD277L), 0x2AFCD277L), 0x2AFCD277L, 0L, 0x2AFCD277L, (VECTOR(int32_t, 2))(0L, 0x2AFCD277L), (VECTOR(int32_t, 2))(0L, 0x2AFCD277L), 0L, 0x2AFCD277L, 0L, 0x2AFCD277L);
                        int64_t l_233 = (-6L);
                        uint64_t l_234 = 0xDBFA3D356C0FDE0FL;
                        int i;
                        l_224.x--;
                        l_227 = ((VECTOR(int32_t, 2))(0x34440451L, (-1L))).odd;
                        l_233 |= (l_228 , ((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 8))(l_229.wzzwzzzz)).even, (int32_t)0x5AADAC5AL))), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 8))(l_230.zwzxyxzw)).s6036422047724146, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(l_231.s7776)))).xywzwywxyxwyyywx, ((VECTOR(int32_t, 2))(l_232.scd)).xxyxyxxxxyyyxxyy))).s3a53))))).x);
                        l_234 ^= 2L;
                    }
                    for (l_216[1][0] = 8; (l_216[1][0] != (-24)); l_216[1][0]--)
                    { /* block id: 87 */
                        uint64_t l_237 = 0xBA377E9CDB69A65DL;
                        int32_t l_238 = 0x3F8993ECL;
                        int16_t l_239 = (-8L);
                        int8_t l_240 = 0L;
                        union U0 l_241 = {0x58C7E989L};/* VOLATILE GLOBAL l_241 */
                        int32_t *l_242 = (void*)0;
                        int32_t *l_243 = (void*)0;
                        int32_t l_245 = 0x599A488BL;
                        int32_t *l_244 = &l_245;
                        l_238 = (l_237 , 0x57ACCDA1L);
                        l_244 = (GROUP_DIVERGE(1, 1) , (l_243 = (((l_240 = l_239) , l_241) , l_242)));
                    }
                    l_246[1] &= 0x540DAFECL;
                    l_248[3] = l_247;
                }
                unsigned int result = 0;
                int l_213_i0;
                for (l_213_i0 = 0; l_213_i0 < 5; l_213_i0++) {
                    result += l_213[l_213_i0];
                }
                atomic_add(&p_1912->g_special_values[19 * get_linear_group_id() + 10], result);
            }
            else
            { /* block id: 96 */
                (1 + 1);
            }
        }
    }
    return p_1912->g_175;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[19];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 19; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[19];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 19; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[120];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 120; i++)
            l_comm_values[i] = 1;
    struct S2 c_1913;
    struct S2* p_1912 = &c_1913;
    struct S2 c_1914 = {
        0x772304B2L, // p_1912->g_2
        (VECTOR(int32_t, 2))((-8L), (-8L)), // p_1912->g_46
        3L, // p_1912->g_62
        &p_1912->g_62, // p_1912->g_61
        9UL, // p_1912->g_75
        {0x784CD17FL}, // p_1912->g_80
        (VECTOR(int32_t, 2))(0x2D3EDD01L, 0x2F6955C0L), // p_1912->g_134
        7L, // p_1912->g_150
        (VECTOR(int8_t, 8))(0x69L, (VECTOR(int8_t, 4))(0x69L, (VECTOR(int8_t, 2))(0x69L, 0x0BL), 0x0BL), 0x0BL, 0x69L, 0x0BL), // p_1912->g_155
        (VECTOR(int8_t, 4))(0x5AL, (VECTOR(int8_t, 2))(0x5AL, 0x0FL), 0x0FL), // p_1912->g_156
        {{&p_1912->g_150,(void*)0,&p_1912->g_150,&p_1912->g_150,(void*)0,&p_1912->g_150}}, // p_1912->g_158
        0x6B31L, // p_1912->g_163
        1L, // p_1912->g_164
        (void*)0, // p_1912->g_173
        {&p_1912->g_173}, // p_1912->g_172
        {-1L}, // p_1912->g_175
        (VECTOR(uint64_t, 4))(18446744073709551613UL, (VECTOR(uint64_t, 2))(18446744073709551613UL, 0xE723CEFFE510EADCL), 0xE723CEFFE510EADCL), // p_1912->g_184
        (VECTOR(uint64_t, 8))(0xE231E16E7FE30F79L, (VECTOR(uint64_t, 4))(0xE231E16E7FE30F79L, (VECTOR(uint64_t, 2))(0xE231E16E7FE30F79L, 0xBD1659E81E94F0C0L), 0xBD1659E81E94F0C0L), 0xBD1659E81E94F0C0L, 0xE231E16E7FE30F79L, 0xBD1659E81E94F0C0L), // p_1912->g_187
        {0x1533DA5EL}, // p_1912->g_188
        3UL, // p_1912->g_201
        &p_1912->g_150, // p_1912->g_255
        (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x34ABE8EAL), 0x34ABE8EAL), 0x34ABE8EAL, 0L, 0x34ABE8EAL, (VECTOR(int32_t, 2))(0L, 0x34ABE8EAL), (VECTOR(int32_t, 2))(0L, 0x34ABE8EAL), 0L, 0x34ABE8EAL, 0L, 0x34ABE8EAL), // p_1912->g_265
        (VECTOR(int32_t, 4))(0x53714A94L, (VECTOR(int32_t, 2))(0x53714A94L, 0L), 0L), // p_1912->g_266
        (VECTOR(uint32_t, 4))(6UL, (VECTOR(uint32_t, 2))(6UL, 8UL), 8UL), // p_1912->g_271
        0x1A2948B9686E4F01L, // p_1912->g_294
        (void*)0, // p_1912->g_306
        {{&p_1912->g_306,&p_1912->g_306,&p_1912->g_306,&p_1912->g_306,&p_1912->g_306,&p_1912->g_306,&p_1912->g_306},{&p_1912->g_306,&p_1912->g_306,&p_1912->g_306,&p_1912->g_306,&p_1912->g_306,&p_1912->g_306,&p_1912->g_306}}, // p_1912->g_305
        &p_1912->g_305[0][5], // p_1912->g_304
        (void*)0, // p_1912->g_307
        &p_1912->g_173, // p_1912->g_308
        1UL, // p_1912->g_365
        0xDBL, // p_1912->g_368
        &p_1912->g_175.f0, // p_1912->g_682
        {0x48C0752EL}, // p_1912->g_693
        (VECTOR(int8_t, 16))(0x1BL, (VECTOR(int8_t, 4))(0x1BL, (VECTOR(int8_t, 2))(0x1BL, 0x3AL), 0x3AL), 0x3AL, 0x1BL, 0x3AL, (VECTOR(int8_t, 2))(0x1BL, 0x3AL), (VECTOR(int8_t, 2))(0x1BL, 0x3AL), 0x1BL, 0x3AL, 0x1BL, 0x3AL), // p_1912->g_696
        0xE185L, // p_1912->g_705
        {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}}, // p_1912->g_707
        &p_1912->g_707[1][6][1], // p_1912->g_706
        (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 255UL), 255UL), 255UL, 255UL, 255UL), // p_1912->g_757
        (VECTOR(uint32_t, 16))(3UL, (VECTOR(uint32_t, 4))(3UL, (VECTOR(uint32_t, 2))(3UL, 0xB83CCD3DL), 0xB83CCD3DL), 0xB83CCD3DL, 3UL, 0xB83CCD3DL, (VECTOR(uint32_t, 2))(3UL, 0xB83CCD3DL), (VECTOR(uint32_t, 2))(3UL, 0xB83CCD3DL), 3UL, 0xB83CCD3DL, 3UL, 0xB83CCD3DL), // p_1912->g_758
        (VECTOR(uint16_t, 2))(0x1C76L, 0x84C0L), // p_1912->g_888
        (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 1UL), 1UL), 1UL, 65535UL, 1UL, (VECTOR(uint16_t, 2))(65535UL, 1UL), (VECTOR(uint16_t, 2))(65535UL, 1UL), 65535UL, 1UL, 65535UL, 1UL), // p_1912->g_889
        (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L)), // p_1912->g_891
        (-8L), // p_1912->g_893
        {(-2L)}, // p_1912->g_895
        (void*)0, // p_1912->g_939
        &p_1912->g_682, // p_1912->g_951
        (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x3DL), 0x3DL), // p_1912->g_966
        (VECTOR(uint8_t, 2))(246UL, 255UL), // p_1912->g_968
        &p_1912->g_305[0][5], // p_1912->g_975
        (VECTOR(uint64_t, 16))(0x06ABB265DBB00DE4L, (VECTOR(uint64_t, 4))(0x06ABB265DBB00DE4L, (VECTOR(uint64_t, 2))(0x06ABB265DBB00DE4L, 0x46C9D3E00BB21CAAL), 0x46C9D3E00BB21CAAL), 0x46C9D3E00BB21CAAL, 0x06ABB265DBB00DE4L, 0x46C9D3E00BB21CAAL, (VECTOR(uint64_t, 2))(0x06ABB265DBB00DE4L, 0x46C9D3E00BB21CAAL), (VECTOR(uint64_t, 2))(0x06ABB265DBB00DE4L, 0x46C9D3E00BB21CAAL), 0x06ABB265DBB00DE4L, 0x46C9D3E00BB21CAAL, 0x06ABB265DBB00DE4L, 0x46C9D3E00BB21CAAL), // p_1912->g_980
        &p_1912->g_163, // p_1912->g_995
        {{{(void*)0,&p_1912->g_995,(void*)0,(void*)0}},{{(void*)0,&p_1912->g_995,(void*)0,(void*)0}},{{(void*)0,&p_1912->g_995,(void*)0,(void*)0}},{{(void*)0,&p_1912->g_995,(void*)0,(void*)0}}}, // p_1912->g_994
        (VECTOR(int8_t, 16))(6L, (VECTOR(int8_t, 4))(6L, (VECTOR(int8_t, 2))(6L, 4L), 4L), 4L, 6L, 4L, (VECTOR(int8_t, 2))(6L, 4L), (VECTOR(int8_t, 2))(6L, 4L), 6L, 4L, 6L, 4L), // p_1912->g_1040
        (VECTOR(int64_t, 4))(0x42365E1DBBB309ADL, (VECTOR(int64_t, 2))(0x42365E1DBBB309ADL, (-7L)), (-7L)), // p_1912->g_1041
        (void*)0, // p_1912->g_1048
        (void*)0, // p_1912->g_1049
        (void*)0, // p_1912->g_1050
        &p_1912->g_893, // p_1912->g_1056
        (VECTOR(int64_t, 16))(0x6E7B8D0202537076L, (VECTOR(int64_t, 4))(0x6E7B8D0202537076L, (VECTOR(int64_t, 2))(0x6E7B8D0202537076L, 0x751369F5128FA7A4L), 0x751369F5128FA7A4L), 0x751369F5128FA7A4L, 0x6E7B8D0202537076L, 0x751369F5128FA7A4L, (VECTOR(int64_t, 2))(0x6E7B8D0202537076L, 0x751369F5128FA7A4L), (VECTOR(int64_t, 2))(0x6E7B8D0202537076L, 0x751369F5128FA7A4L), 0x6E7B8D0202537076L, 0x751369F5128FA7A4L, 0x6E7B8D0202537076L, 0x751369F5128FA7A4L), // p_1912->g_1114
        1UL, // p_1912->g_1152
        0L, // p_1912->g_1169
        8UL, // p_1912->g_1181
        &p_1912->g_682, // p_1912->g_1184
        (-4L), // p_1912->g_1191
        &p_1912->g_62, // p_1912->g_1209
        (VECTOR(uint32_t, 4))(0x7BD734B1L, (VECTOR(uint32_t, 2))(0x7BD734B1L, 0x9F14B652L), 0x9F14B652L), // p_1912->g_1255
        (VECTOR(int16_t, 2))(0x4BB2L, 0x002AL), // p_1912->g_1259
        (void*)0, // p_1912->g_1263
        (void*)0, // p_1912->g_1264
        &p_1912->g_62, // p_1912->g_1288
        0x40L, // p_1912->g_1302
        {&p_1912->g_707[1][6][1],&p_1912->g_707[1][6][1],&p_1912->g_707[1][6][1],&p_1912->g_707[1][6][1],&p_1912->g_707[1][6][1],&p_1912->g_707[1][6][1],&p_1912->g_707[1][6][1]}, // p_1912->g_1330
        (VECTOR(uint32_t, 8))(5UL, (VECTOR(uint32_t, 4))(5UL, (VECTOR(uint32_t, 2))(5UL, 0UL), 0UL), 0UL, 5UL, 0UL), // p_1912->g_1336
        (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0x12E9800BL), 0x12E9800BL), // p_1912->g_1337
        (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x75L), 0x75L), // p_1912->g_1349
        (VECTOR(int32_t, 16))(4L, (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, 0x30B9E35DL), 0x30B9E35DL), 0x30B9E35DL, 4L, 0x30B9E35DL, (VECTOR(int32_t, 2))(4L, 0x30B9E35DL), (VECTOR(int32_t, 2))(4L, 0x30B9E35DL), 4L, 0x30B9E35DL, 4L, 0x30B9E35DL), // p_1912->g_1425
        (void*)0, // p_1912->g_1428
        &p_1912->g_175.f0, // p_1912->g_1429
        {1L,1L,1L,1L,1L,1L,1L,1L,1L}, // p_1912->g_1440
        (void*)0, // p_1912->g_1447
        &p_1912->g_175, // p_1912->g_1462
        {0x9AF385F2L,0x9AF385F2L,0x9AF385F2L,0x9AF385F2L,0x9AF385F2L,0x9AF385F2L,0x9AF385F2L,0x9AF385F2L,0x9AF385F2L,0x9AF385F2L}, // p_1912->g_1472
        {{0x4119D5B1L}}, // p_1912->g_1495
        (VECTOR(int32_t, 8))(0x46EFAE3DL, (VECTOR(int32_t, 4))(0x46EFAE3DL, (VECTOR(int32_t, 2))(0x46EFAE3DL, 0x295CAF99L), 0x295CAF99L), 0x295CAF99L, 0x46EFAE3DL, 0x295CAF99L), // p_1912->g_1499
        {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}, // p_1912->g_1506
        {{6L,0L,(-8L),0x136D08CED01B50F3L,(-5L),0x136D08CED01B50F3L,(-8L),0L},{6L,0L,(-8L),0x136D08CED01B50F3L,(-5L),0x136D08CED01B50F3L,(-8L),0L},{6L,0L,(-8L),0x136D08CED01B50F3L,(-5L),0x136D08CED01B50F3L,(-8L),0L},{6L,0L,(-8L),0x136D08CED01B50F3L,(-5L),0x136D08CED01B50F3L,(-8L),0L},{6L,0L,(-8L),0x136D08CED01B50F3L,(-5L),0x136D08CED01B50F3L,(-8L),0L},{6L,0L,(-8L),0x136D08CED01B50F3L,(-5L),0x136D08CED01B50F3L,(-8L),0L},{6L,0L,(-8L),0x136D08CED01B50F3L,(-5L),0x136D08CED01B50F3L,(-8L),0L}}, // p_1912->g_1508
        0x13L, // p_1912->g_1541
        18446744073709551615UL, // p_1912->g_1542
        254UL, // p_1912->g_1554
        (VECTOR(uint8_t, 8))(0x96L, (VECTOR(uint8_t, 4))(0x96L, (VECTOR(uint8_t, 2))(0x96L, 255UL), 255UL), 255UL, 0x96L, 255UL), // p_1912->g_1579
        (-1L), // p_1912->g_1608
        (VECTOR(int64_t, 2))(0x3DDD2CD13E09CCF3L, 0L), // p_1912->g_1623
        (VECTOR(int8_t, 4))(0x18L, (VECTOR(int8_t, 2))(0x18L, 0x36L), 0x36L), // p_1912->g_1649
        {0x02A5DC8CL}, // p_1912->g_1650
        (VECTOR(int8_t, 16))(0x7AL, (VECTOR(int8_t, 4))(0x7AL, (VECTOR(int8_t, 2))(0x7AL, 0x09L), 0x09L), 0x09L, 0x7AL, 0x09L, (VECTOR(int8_t, 2))(0x7AL, 0x09L), (VECTOR(int8_t, 2))(0x7AL, 0x09L), 0x7AL, 0x09L, 0x7AL, 0x09L), // p_1912->g_1655
        &p_1912->g_173, // p_1912->g_1683
        {0x1AC385D9BD370414L,0x1AC385D9BD370414L,0x1AC385D9BD370414L,0x1AC385D9BD370414L,0x1AC385D9BD370414L,0x1AC385D9BD370414L,0x1AC385D9BD370414L}, // p_1912->g_1691
        &p_1912->g_1691[4], // p_1912->g_1690
        &p_1912->g_1690, // p_1912->g_1689
        &p_1912->g_1689, // p_1912->g_1688
        (VECTOR(uint64_t, 16))(0x57A877CA7A9F8EC6L, (VECTOR(uint64_t, 4))(0x57A877CA7A9F8EC6L, (VECTOR(uint64_t, 2))(0x57A877CA7A9F8EC6L, 18446744073709551608UL), 18446744073709551608UL), 18446744073709551608UL, 0x57A877CA7A9F8EC6L, 18446744073709551608UL, (VECTOR(uint64_t, 2))(0x57A877CA7A9F8EC6L, 18446744073709551608UL), (VECTOR(uint64_t, 2))(0x57A877CA7A9F8EC6L, 18446744073709551608UL), 0x57A877CA7A9F8EC6L, 18446744073709551608UL, 0x57A877CA7A9F8EC6L, 18446744073709551608UL), // p_1912->g_1696
        (void*)0, // p_1912->g_1710
        {{{(void*)0,(void*)0,&p_1912->g_1710,&p_1912->g_1710,&p_1912->g_1710,(void*)0},{(void*)0,(void*)0,&p_1912->g_1710,&p_1912->g_1710,&p_1912->g_1710,(void*)0},{(void*)0,(void*)0,&p_1912->g_1710,&p_1912->g_1710,&p_1912->g_1710,(void*)0}},{{(void*)0,(void*)0,&p_1912->g_1710,&p_1912->g_1710,&p_1912->g_1710,(void*)0},{(void*)0,(void*)0,&p_1912->g_1710,&p_1912->g_1710,&p_1912->g_1710,(void*)0},{(void*)0,(void*)0,&p_1912->g_1710,&p_1912->g_1710,&p_1912->g_1710,(void*)0}},{{(void*)0,(void*)0,&p_1912->g_1710,&p_1912->g_1710,&p_1912->g_1710,(void*)0},{(void*)0,(void*)0,&p_1912->g_1710,&p_1912->g_1710,&p_1912->g_1710,(void*)0},{(void*)0,(void*)0,&p_1912->g_1710,&p_1912->g_1710,&p_1912->g_1710,(void*)0}},{{(void*)0,(void*)0,&p_1912->g_1710,&p_1912->g_1710,&p_1912->g_1710,(void*)0},{(void*)0,(void*)0,&p_1912->g_1710,&p_1912->g_1710,&p_1912->g_1710,(void*)0},{(void*)0,(void*)0,&p_1912->g_1710,&p_1912->g_1710,&p_1912->g_1710,(void*)0}},{{(void*)0,(void*)0,&p_1912->g_1710,&p_1912->g_1710,&p_1912->g_1710,(void*)0},{(void*)0,(void*)0,&p_1912->g_1710,&p_1912->g_1710,&p_1912->g_1710,(void*)0},{(void*)0,(void*)0,&p_1912->g_1710,&p_1912->g_1710,&p_1912->g_1710,(void*)0}},{{(void*)0,(void*)0,&p_1912->g_1710,&p_1912->g_1710,&p_1912->g_1710,(void*)0},{(void*)0,(void*)0,&p_1912->g_1710,&p_1912->g_1710,&p_1912->g_1710,(void*)0},{(void*)0,(void*)0,&p_1912->g_1710,&p_1912->g_1710,&p_1912->g_1710,(void*)0}},{{(void*)0,(void*)0,&p_1912->g_1710,&p_1912->g_1710,&p_1912->g_1710,(void*)0},{(void*)0,(void*)0,&p_1912->g_1710,&p_1912->g_1710,&p_1912->g_1710,(void*)0},{(void*)0,(void*)0,&p_1912->g_1710,&p_1912->g_1710,&p_1912->g_1710,(void*)0}},{{(void*)0,(void*)0,&p_1912->g_1710,&p_1912->g_1710,&p_1912->g_1710,(void*)0},{(void*)0,(void*)0,&p_1912->g_1710,&p_1912->g_1710,&p_1912->g_1710,(void*)0},{(void*)0,(void*)0,&p_1912->g_1710,&p_1912->g_1710,&p_1912->g_1710,(void*)0}}}, // p_1912->g_1709
        (VECTOR(uint64_t, 8))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x9E9D3B1B94F3475EL), 0x9E9D3B1B94F3475EL), 0x9E9D3B1B94F3475EL, 18446744073709551615UL, 0x9E9D3B1B94F3475EL), // p_1912->g_1746
        (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), (-1L)), (-1L)), // p_1912->g_1767
        {{{0x25719ED7L,0x78E007D7L,0x4047969AL,0x1C07D7E6L,0x2A5B181BL,0x25719ED7L,0x1C07D7E6L},{0x25719ED7L,0x78E007D7L,0x4047969AL,0x1C07D7E6L,0x2A5B181BL,0x25719ED7L,0x1C07D7E6L},{0x25719ED7L,0x78E007D7L,0x4047969AL,0x1C07D7E6L,0x2A5B181BL,0x25719ED7L,0x1C07D7E6L},{0x25719ED7L,0x78E007D7L,0x4047969AL,0x1C07D7E6L,0x2A5B181BL,0x25719ED7L,0x1C07D7E6L},{0x25719ED7L,0x78E007D7L,0x4047969AL,0x1C07D7E6L,0x2A5B181BL,0x25719ED7L,0x1C07D7E6L},{0x25719ED7L,0x78E007D7L,0x4047969AL,0x1C07D7E6L,0x2A5B181BL,0x25719ED7L,0x1C07D7E6L},{0x25719ED7L,0x78E007D7L,0x4047969AL,0x1C07D7E6L,0x2A5B181BL,0x25719ED7L,0x1C07D7E6L},{0x25719ED7L,0x78E007D7L,0x4047969AL,0x1C07D7E6L,0x2A5B181BL,0x25719ED7L,0x1C07D7E6L},{0x25719ED7L,0x78E007D7L,0x4047969AL,0x1C07D7E6L,0x2A5B181BL,0x25719ED7L,0x1C07D7E6L},{0x25719ED7L,0x78E007D7L,0x4047969AL,0x1C07D7E6L,0x2A5B181BL,0x25719ED7L,0x1C07D7E6L}},{{0x25719ED7L,0x78E007D7L,0x4047969AL,0x1C07D7E6L,0x2A5B181BL,0x25719ED7L,0x1C07D7E6L},{0x25719ED7L,0x78E007D7L,0x4047969AL,0x1C07D7E6L,0x2A5B181BL,0x25719ED7L,0x1C07D7E6L},{0x25719ED7L,0x78E007D7L,0x4047969AL,0x1C07D7E6L,0x2A5B181BL,0x25719ED7L,0x1C07D7E6L},{0x25719ED7L,0x78E007D7L,0x4047969AL,0x1C07D7E6L,0x2A5B181BL,0x25719ED7L,0x1C07D7E6L},{0x25719ED7L,0x78E007D7L,0x4047969AL,0x1C07D7E6L,0x2A5B181BL,0x25719ED7L,0x1C07D7E6L},{0x25719ED7L,0x78E007D7L,0x4047969AL,0x1C07D7E6L,0x2A5B181BL,0x25719ED7L,0x1C07D7E6L},{0x25719ED7L,0x78E007D7L,0x4047969AL,0x1C07D7E6L,0x2A5B181BL,0x25719ED7L,0x1C07D7E6L},{0x25719ED7L,0x78E007D7L,0x4047969AL,0x1C07D7E6L,0x2A5B181BL,0x25719ED7L,0x1C07D7E6L},{0x25719ED7L,0x78E007D7L,0x4047969AL,0x1C07D7E6L,0x2A5B181BL,0x25719ED7L,0x1C07D7E6L},{0x25719ED7L,0x78E007D7L,0x4047969AL,0x1C07D7E6L,0x2A5B181BL,0x25719ED7L,0x1C07D7E6L}}}, // p_1912->g_1768
        4294967295UL, // p_1912->g_1837
        (VECTOR(int8_t, 2))(0L, (-1L)), // p_1912->g_1853
        (VECTOR(uint32_t, 2))(0x0761BA64L, 0UL), // p_1912->g_1889
        0, // p_1912->v_collective
        sequence_input[get_global_id(0)], // p_1912->global_0_offset
        sequence_input[get_global_id(1)], // p_1912->global_1_offset
        sequence_input[get_global_id(2)], // p_1912->global_2_offset
        sequence_input[get_local_id(0)], // p_1912->local_0_offset
        sequence_input[get_local_id(1)], // p_1912->local_1_offset
        sequence_input[get_local_id(2)], // p_1912->local_2_offset
        sequence_input[get_group_id(0)], // p_1912->group_0_offset
        sequence_input[get_group_id(1)], // p_1912->group_1_offset
        sequence_input[get_group_id(2)], // p_1912->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 120)), permutations[0][get_linear_local_id()])), // p_1912->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1913 = c_1914;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1912);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1912->g_2, "p_1912->g_2", print_hash_value);
    transparent_crc(p_1912->g_46.x, "p_1912->g_46.x", print_hash_value);
    transparent_crc(p_1912->g_46.y, "p_1912->g_46.y", print_hash_value);
    transparent_crc(p_1912->g_62, "p_1912->g_62", print_hash_value);
    transparent_crc(p_1912->g_75, "p_1912->g_75", print_hash_value);
    transparent_crc(p_1912->g_80.f0, "p_1912->g_80.f0", print_hash_value);
    transparent_crc(p_1912->g_134.x, "p_1912->g_134.x", print_hash_value);
    transparent_crc(p_1912->g_134.y, "p_1912->g_134.y", print_hash_value);
    transparent_crc(p_1912->g_150, "p_1912->g_150", print_hash_value);
    transparent_crc(p_1912->g_155.s0, "p_1912->g_155.s0", print_hash_value);
    transparent_crc(p_1912->g_155.s1, "p_1912->g_155.s1", print_hash_value);
    transparent_crc(p_1912->g_155.s2, "p_1912->g_155.s2", print_hash_value);
    transparent_crc(p_1912->g_155.s3, "p_1912->g_155.s3", print_hash_value);
    transparent_crc(p_1912->g_155.s4, "p_1912->g_155.s4", print_hash_value);
    transparent_crc(p_1912->g_155.s5, "p_1912->g_155.s5", print_hash_value);
    transparent_crc(p_1912->g_155.s6, "p_1912->g_155.s6", print_hash_value);
    transparent_crc(p_1912->g_155.s7, "p_1912->g_155.s7", print_hash_value);
    transparent_crc(p_1912->g_156.x, "p_1912->g_156.x", print_hash_value);
    transparent_crc(p_1912->g_156.y, "p_1912->g_156.y", print_hash_value);
    transparent_crc(p_1912->g_156.z, "p_1912->g_156.z", print_hash_value);
    transparent_crc(p_1912->g_156.w, "p_1912->g_156.w", print_hash_value);
    transparent_crc(p_1912->g_163, "p_1912->g_163", print_hash_value);
    transparent_crc(p_1912->g_164, "p_1912->g_164", print_hash_value);
    transparent_crc(p_1912->g_175.f0, "p_1912->g_175.f0", print_hash_value);
    transparent_crc(p_1912->g_184.x, "p_1912->g_184.x", print_hash_value);
    transparent_crc(p_1912->g_184.y, "p_1912->g_184.y", print_hash_value);
    transparent_crc(p_1912->g_184.z, "p_1912->g_184.z", print_hash_value);
    transparent_crc(p_1912->g_184.w, "p_1912->g_184.w", print_hash_value);
    transparent_crc(p_1912->g_187.s0, "p_1912->g_187.s0", print_hash_value);
    transparent_crc(p_1912->g_187.s1, "p_1912->g_187.s1", print_hash_value);
    transparent_crc(p_1912->g_187.s2, "p_1912->g_187.s2", print_hash_value);
    transparent_crc(p_1912->g_187.s3, "p_1912->g_187.s3", print_hash_value);
    transparent_crc(p_1912->g_187.s4, "p_1912->g_187.s4", print_hash_value);
    transparent_crc(p_1912->g_187.s5, "p_1912->g_187.s5", print_hash_value);
    transparent_crc(p_1912->g_187.s6, "p_1912->g_187.s6", print_hash_value);
    transparent_crc(p_1912->g_187.s7, "p_1912->g_187.s7", print_hash_value);
    transparent_crc(p_1912->g_188.f0, "p_1912->g_188.f0", print_hash_value);
    transparent_crc(p_1912->g_201, "p_1912->g_201", print_hash_value);
    transparent_crc(p_1912->g_265.s0, "p_1912->g_265.s0", print_hash_value);
    transparent_crc(p_1912->g_265.s1, "p_1912->g_265.s1", print_hash_value);
    transparent_crc(p_1912->g_265.s2, "p_1912->g_265.s2", print_hash_value);
    transparent_crc(p_1912->g_265.s3, "p_1912->g_265.s3", print_hash_value);
    transparent_crc(p_1912->g_265.s4, "p_1912->g_265.s4", print_hash_value);
    transparent_crc(p_1912->g_265.s5, "p_1912->g_265.s5", print_hash_value);
    transparent_crc(p_1912->g_265.s6, "p_1912->g_265.s6", print_hash_value);
    transparent_crc(p_1912->g_265.s7, "p_1912->g_265.s7", print_hash_value);
    transparent_crc(p_1912->g_265.s8, "p_1912->g_265.s8", print_hash_value);
    transparent_crc(p_1912->g_265.s9, "p_1912->g_265.s9", print_hash_value);
    transparent_crc(p_1912->g_265.sa, "p_1912->g_265.sa", print_hash_value);
    transparent_crc(p_1912->g_265.sb, "p_1912->g_265.sb", print_hash_value);
    transparent_crc(p_1912->g_265.sc, "p_1912->g_265.sc", print_hash_value);
    transparent_crc(p_1912->g_265.sd, "p_1912->g_265.sd", print_hash_value);
    transparent_crc(p_1912->g_265.se, "p_1912->g_265.se", print_hash_value);
    transparent_crc(p_1912->g_265.sf, "p_1912->g_265.sf", print_hash_value);
    transparent_crc(p_1912->g_266.x, "p_1912->g_266.x", print_hash_value);
    transparent_crc(p_1912->g_266.y, "p_1912->g_266.y", print_hash_value);
    transparent_crc(p_1912->g_266.z, "p_1912->g_266.z", print_hash_value);
    transparent_crc(p_1912->g_266.w, "p_1912->g_266.w", print_hash_value);
    transparent_crc(p_1912->g_271.x, "p_1912->g_271.x", print_hash_value);
    transparent_crc(p_1912->g_271.y, "p_1912->g_271.y", print_hash_value);
    transparent_crc(p_1912->g_271.z, "p_1912->g_271.z", print_hash_value);
    transparent_crc(p_1912->g_271.w, "p_1912->g_271.w", print_hash_value);
    transparent_crc(p_1912->g_294, "p_1912->g_294", print_hash_value);
    transparent_crc(p_1912->g_365, "p_1912->g_365", print_hash_value);
    transparent_crc(p_1912->g_368, "p_1912->g_368", print_hash_value);
    transparent_crc(p_1912->g_693.f0, "p_1912->g_693.f0", print_hash_value);
    transparent_crc(p_1912->g_696.s0, "p_1912->g_696.s0", print_hash_value);
    transparent_crc(p_1912->g_696.s1, "p_1912->g_696.s1", print_hash_value);
    transparent_crc(p_1912->g_696.s2, "p_1912->g_696.s2", print_hash_value);
    transparent_crc(p_1912->g_696.s3, "p_1912->g_696.s3", print_hash_value);
    transparent_crc(p_1912->g_696.s4, "p_1912->g_696.s4", print_hash_value);
    transparent_crc(p_1912->g_696.s5, "p_1912->g_696.s5", print_hash_value);
    transparent_crc(p_1912->g_696.s6, "p_1912->g_696.s6", print_hash_value);
    transparent_crc(p_1912->g_696.s7, "p_1912->g_696.s7", print_hash_value);
    transparent_crc(p_1912->g_696.s8, "p_1912->g_696.s8", print_hash_value);
    transparent_crc(p_1912->g_696.s9, "p_1912->g_696.s9", print_hash_value);
    transparent_crc(p_1912->g_696.sa, "p_1912->g_696.sa", print_hash_value);
    transparent_crc(p_1912->g_696.sb, "p_1912->g_696.sb", print_hash_value);
    transparent_crc(p_1912->g_696.sc, "p_1912->g_696.sc", print_hash_value);
    transparent_crc(p_1912->g_696.sd, "p_1912->g_696.sd", print_hash_value);
    transparent_crc(p_1912->g_696.se, "p_1912->g_696.se", print_hash_value);
    transparent_crc(p_1912->g_696.sf, "p_1912->g_696.sf", print_hash_value);
    transparent_crc(p_1912->g_705, "p_1912->g_705", print_hash_value);
    transparent_crc(p_1912->g_757.s0, "p_1912->g_757.s0", print_hash_value);
    transparent_crc(p_1912->g_757.s1, "p_1912->g_757.s1", print_hash_value);
    transparent_crc(p_1912->g_757.s2, "p_1912->g_757.s2", print_hash_value);
    transparent_crc(p_1912->g_757.s3, "p_1912->g_757.s3", print_hash_value);
    transparent_crc(p_1912->g_757.s4, "p_1912->g_757.s4", print_hash_value);
    transparent_crc(p_1912->g_757.s5, "p_1912->g_757.s5", print_hash_value);
    transparent_crc(p_1912->g_757.s6, "p_1912->g_757.s6", print_hash_value);
    transparent_crc(p_1912->g_757.s7, "p_1912->g_757.s7", print_hash_value);
    transparent_crc(p_1912->g_758.s0, "p_1912->g_758.s0", print_hash_value);
    transparent_crc(p_1912->g_758.s1, "p_1912->g_758.s1", print_hash_value);
    transparent_crc(p_1912->g_758.s2, "p_1912->g_758.s2", print_hash_value);
    transparent_crc(p_1912->g_758.s3, "p_1912->g_758.s3", print_hash_value);
    transparent_crc(p_1912->g_758.s4, "p_1912->g_758.s4", print_hash_value);
    transparent_crc(p_1912->g_758.s5, "p_1912->g_758.s5", print_hash_value);
    transparent_crc(p_1912->g_758.s6, "p_1912->g_758.s6", print_hash_value);
    transparent_crc(p_1912->g_758.s7, "p_1912->g_758.s7", print_hash_value);
    transparent_crc(p_1912->g_758.s8, "p_1912->g_758.s8", print_hash_value);
    transparent_crc(p_1912->g_758.s9, "p_1912->g_758.s9", print_hash_value);
    transparent_crc(p_1912->g_758.sa, "p_1912->g_758.sa", print_hash_value);
    transparent_crc(p_1912->g_758.sb, "p_1912->g_758.sb", print_hash_value);
    transparent_crc(p_1912->g_758.sc, "p_1912->g_758.sc", print_hash_value);
    transparent_crc(p_1912->g_758.sd, "p_1912->g_758.sd", print_hash_value);
    transparent_crc(p_1912->g_758.se, "p_1912->g_758.se", print_hash_value);
    transparent_crc(p_1912->g_758.sf, "p_1912->g_758.sf", print_hash_value);
    transparent_crc(p_1912->g_888.x, "p_1912->g_888.x", print_hash_value);
    transparent_crc(p_1912->g_888.y, "p_1912->g_888.y", print_hash_value);
    transparent_crc(p_1912->g_889.s0, "p_1912->g_889.s0", print_hash_value);
    transparent_crc(p_1912->g_889.s1, "p_1912->g_889.s1", print_hash_value);
    transparent_crc(p_1912->g_889.s2, "p_1912->g_889.s2", print_hash_value);
    transparent_crc(p_1912->g_889.s3, "p_1912->g_889.s3", print_hash_value);
    transparent_crc(p_1912->g_889.s4, "p_1912->g_889.s4", print_hash_value);
    transparent_crc(p_1912->g_889.s5, "p_1912->g_889.s5", print_hash_value);
    transparent_crc(p_1912->g_889.s6, "p_1912->g_889.s6", print_hash_value);
    transparent_crc(p_1912->g_889.s7, "p_1912->g_889.s7", print_hash_value);
    transparent_crc(p_1912->g_889.s8, "p_1912->g_889.s8", print_hash_value);
    transparent_crc(p_1912->g_889.s9, "p_1912->g_889.s9", print_hash_value);
    transparent_crc(p_1912->g_889.sa, "p_1912->g_889.sa", print_hash_value);
    transparent_crc(p_1912->g_889.sb, "p_1912->g_889.sb", print_hash_value);
    transparent_crc(p_1912->g_889.sc, "p_1912->g_889.sc", print_hash_value);
    transparent_crc(p_1912->g_889.sd, "p_1912->g_889.sd", print_hash_value);
    transparent_crc(p_1912->g_889.se, "p_1912->g_889.se", print_hash_value);
    transparent_crc(p_1912->g_889.sf, "p_1912->g_889.sf", print_hash_value);
    transparent_crc(p_1912->g_891.s0, "p_1912->g_891.s0", print_hash_value);
    transparent_crc(p_1912->g_891.s1, "p_1912->g_891.s1", print_hash_value);
    transparent_crc(p_1912->g_891.s2, "p_1912->g_891.s2", print_hash_value);
    transparent_crc(p_1912->g_891.s3, "p_1912->g_891.s3", print_hash_value);
    transparent_crc(p_1912->g_891.s4, "p_1912->g_891.s4", print_hash_value);
    transparent_crc(p_1912->g_891.s5, "p_1912->g_891.s5", print_hash_value);
    transparent_crc(p_1912->g_891.s6, "p_1912->g_891.s6", print_hash_value);
    transparent_crc(p_1912->g_891.s7, "p_1912->g_891.s7", print_hash_value);
    transparent_crc(p_1912->g_893, "p_1912->g_893", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1912->g_895[i], "p_1912->g_895[i]", print_hash_value);

    }
    transparent_crc(p_1912->g_966.x, "p_1912->g_966.x", print_hash_value);
    transparent_crc(p_1912->g_966.y, "p_1912->g_966.y", print_hash_value);
    transparent_crc(p_1912->g_966.z, "p_1912->g_966.z", print_hash_value);
    transparent_crc(p_1912->g_966.w, "p_1912->g_966.w", print_hash_value);
    transparent_crc(p_1912->g_968.x, "p_1912->g_968.x", print_hash_value);
    transparent_crc(p_1912->g_968.y, "p_1912->g_968.y", print_hash_value);
    transparent_crc(p_1912->g_980.s0, "p_1912->g_980.s0", print_hash_value);
    transparent_crc(p_1912->g_980.s1, "p_1912->g_980.s1", print_hash_value);
    transparent_crc(p_1912->g_980.s2, "p_1912->g_980.s2", print_hash_value);
    transparent_crc(p_1912->g_980.s3, "p_1912->g_980.s3", print_hash_value);
    transparent_crc(p_1912->g_980.s4, "p_1912->g_980.s4", print_hash_value);
    transparent_crc(p_1912->g_980.s5, "p_1912->g_980.s5", print_hash_value);
    transparent_crc(p_1912->g_980.s6, "p_1912->g_980.s6", print_hash_value);
    transparent_crc(p_1912->g_980.s7, "p_1912->g_980.s7", print_hash_value);
    transparent_crc(p_1912->g_980.s8, "p_1912->g_980.s8", print_hash_value);
    transparent_crc(p_1912->g_980.s9, "p_1912->g_980.s9", print_hash_value);
    transparent_crc(p_1912->g_980.sa, "p_1912->g_980.sa", print_hash_value);
    transparent_crc(p_1912->g_980.sb, "p_1912->g_980.sb", print_hash_value);
    transparent_crc(p_1912->g_980.sc, "p_1912->g_980.sc", print_hash_value);
    transparent_crc(p_1912->g_980.sd, "p_1912->g_980.sd", print_hash_value);
    transparent_crc(p_1912->g_980.se, "p_1912->g_980.se", print_hash_value);
    transparent_crc(p_1912->g_980.sf, "p_1912->g_980.sf", print_hash_value);
    transparent_crc(p_1912->g_1040.s0, "p_1912->g_1040.s0", print_hash_value);
    transparent_crc(p_1912->g_1040.s1, "p_1912->g_1040.s1", print_hash_value);
    transparent_crc(p_1912->g_1040.s2, "p_1912->g_1040.s2", print_hash_value);
    transparent_crc(p_1912->g_1040.s3, "p_1912->g_1040.s3", print_hash_value);
    transparent_crc(p_1912->g_1040.s4, "p_1912->g_1040.s4", print_hash_value);
    transparent_crc(p_1912->g_1040.s5, "p_1912->g_1040.s5", print_hash_value);
    transparent_crc(p_1912->g_1040.s6, "p_1912->g_1040.s6", print_hash_value);
    transparent_crc(p_1912->g_1040.s7, "p_1912->g_1040.s7", print_hash_value);
    transparent_crc(p_1912->g_1040.s8, "p_1912->g_1040.s8", print_hash_value);
    transparent_crc(p_1912->g_1040.s9, "p_1912->g_1040.s9", print_hash_value);
    transparent_crc(p_1912->g_1040.sa, "p_1912->g_1040.sa", print_hash_value);
    transparent_crc(p_1912->g_1040.sb, "p_1912->g_1040.sb", print_hash_value);
    transparent_crc(p_1912->g_1040.sc, "p_1912->g_1040.sc", print_hash_value);
    transparent_crc(p_1912->g_1040.sd, "p_1912->g_1040.sd", print_hash_value);
    transparent_crc(p_1912->g_1040.se, "p_1912->g_1040.se", print_hash_value);
    transparent_crc(p_1912->g_1040.sf, "p_1912->g_1040.sf", print_hash_value);
    transparent_crc(p_1912->g_1041.x, "p_1912->g_1041.x", print_hash_value);
    transparent_crc(p_1912->g_1041.y, "p_1912->g_1041.y", print_hash_value);
    transparent_crc(p_1912->g_1041.z, "p_1912->g_1041.z", print_hash_value);
    transparent_crc(p_1912->g_1041.w, "p_1912->g_1041.w", print_hash_value);
    transparent_crc(p_1912->g_1114.s0, "p_1912->g_1114.s0", print_hash_value);
    transparent_crc(p_1912->g_1114.s1, "p_1912->g_1114.s1", print_hash_value);
    transparent_crc(p_1912->g_1114.s2, "p_1912->g_1114.s2", print_hash_value);
    transparent_crc(p_1912->g_1114.s3, "p_1912->g_1114.s3", print_hash_value);
    transparent_crc(p_1912->g_1114.s4, "p_1912->g_1114.s4", print_hash_value);
    transparent_crc(p_1912->g_1114.s5, "p_1912->g_1114.s5", print_hash_value);
    transparent_crc(p_1912->g_1114.s6, "p_1912->g_1114.s6", print_hash_value);
    transparent_crc(p_1912->g_1114.s7, "p_1912->g_1114.s7", print_hash_value);
    transparent_crc(p_1912->g_1114.s8, "p_1912->g_1114.s8", print_hash_value);
    transparent_crc(p_1912->g_1114.s9, "p_1912->g_1114.s9", print_hash_value);
    transparent_crc(p_1912->g_1114.sa, "p_1912->g_1114.sa", print_hash_value);
    transparent_crc(p_1912->g_1114.sb, "p_1912->g_1114.sb", print_hash_value);
    transparent_crc(p_1912->g_1114.sc, "p_1912->g_1114.sc", print_hash_value);
    transparent_crc(p_1912->g_1114.sd, "p_1912->g_1114.sd", print_hash_value);
    transparent_crc(p_1912->g_1114.se, "p_1912->g_1114.se", print_hash_value);
    transparent_crc(p_1912->g_1114.sf, "p_1912->g_1114.sf", print_hash_value);
    transparent_crc(p_1912->g_1152, "p_1912->g_1152", print_hash_value);
    transparent_crc(p_1912->g_1169, "p_1912->g_1169", print_hash_value);
    transparent_crc(p_1912->g_1181, "p_1912->g_1181", print_hash_value);
    transparent_crc(p_1912->g_1191, "p_1912->g_1191", print_hash_value);
    transparent_crc(p_1912->g_1255.x, "p_1912->g_1255.x", print_hash_value);
    transparent_crc(p_1912->g_1255.y, "p_1912->g_1255.y", print_hash_value);
    transparent_crc(p_1912->g_1255.z, "p_1912->g_1255.z", print_hash_value);
    transparent_crc(p_1912->g_1255.w, "p_1912->g_1255.w", print_hash_value);
    transparent_crc(p_1912->g_1259.x, "p_1912->g_1259.x", print_hash_value);
    transparent_crc(p_1912->g_1259.y, "p_1912->g_1259.y", print_hash_value);
    transparent_crc(p_1912->g_1302, "p_1912->g_1302", print_hash_value);
    transparent_crc(p_1912->g_1336.s0, "p_1912->g_1336.s0", print_hash_value);
    transparent_crc(p_1912->g_1336.s1, "p_1912->g_1336.s1", print_hash_value);
    transparent_crc(p_1912->g_1336.s2, "p_1912->g_1336.s2", print_hash_value);
    transparent_crc(p_1912->g_1336.s3, "p_1912->g_1336.s3", print_hash_value);
    transparent_crc(p_1912->g_1336.s4, "p_1912->g_1336.s4", print_hash_value);
    transparent_crc(p_1912->g_1336.s5, "p_1912->g_1336.s5", print_hash_value);
    transparent_crc(p_1912->g_1336.s6, "p_1912->g_1336.s6", print_hash_value);
    transparent_crc(p_1912->g_1336.s7, "p_1912->g_1336.s7", print_hash_value);
    transparent_crc(p_1912->g_1337.x, "p_1912->g_1337.x", print_hash_value);
    transparent_crc(p_1912->g_1337.y, "p_1912->g_1337.y", print_hash_value);
    transparent_crc(p_1912->g_1337.z, "p_1912->g_1337.z", print_hash_value);
    transparent_crc(p_1912->g_1337.w, "p_1912->g_1337.w", print_hash_value);
    transparent_crc(p_1912->g_1349.x, "p_1912->g_1349.x", print_hash_value);
    transparent_crc(p_1912->g_1349.y, "p_1912->g_1349.y", print_hash_value);
    transparent_crc(p_1912->g_1349.z, "p_1912->g_1349.z", print_hash_value);
    transparent_crc(p_1912->g_1349.w, "p_1912->g_1349.w", print_hash_value);
    transparent_crc(p_1912->g_1425.s0, "p_1912->g_1425.s0", print_hash_value);
    transparent_crc(p_1912->g_1425.s1, "p_1912->g_1425.s1", print_hash_value);
    transparent_crc(p_1912->g_1425.s2, "p_1912->g_1425.s2", print_hash_value);
    transparent_crc(p_1912->g_1425.s3, "p_1912->g_1425.s3", print_hash_value);
    transparent_crc(p_1912->g_1425.s4, "p_1912->g_1425.s4", print_hash_value);
    transparent_crc(p_1912->g_1425.s5, "p_1912->g_1425.s5", print_hash_value);
    transparent_crc(p_1912->g_1425.s6, "p_1912->g_1425.s6", print_hash_value);
    transparent_crc(p_1912->g_1425.s7, "p_1912->g_1425.s7", print_hash_value);
    transparent_crc(p_1912->g_1425.s8, "p_1912->g_1425.s8", print_hash_value);
    transparent_crc(p_1912->g_1425.s9, "p_1912->g_1425.s9", print_hash_value);
    transparent_crc(p_1912->g_1425.sa, "p_1912->g_1425.sa", print_hash_value);
    transparent_crc(p_1912->g_1425.sb, "p_1912->g_1425.sb", print_hash_value);
    transparent_crc(p_1912->g_1425.sc, "p_1912->g_1425.sc", print_hash_value);
    transparent_crc(p_1912->g_1425.sd, "p_1912->g_1425.sd", print_hash_value);
    transparent_crc(p_1912->g_1425.se, "p_1912->g_1425.se", print_hash_value);
    transparent_crc(p_1912->g_1425.sf, "p_1912->g_1425.sf", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1912->g_1440[i], "p_1912->g_1440[i]", print_hash_value);

    }
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1912->g_1472[i], "p_1912->g_1472[i]", print_hash_value);

    }
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1912->g_1495[i].f0, "p_1912->g_1495[i].f0", print_hash_value);

    }
    transparent_crc(p_1912->g_1499.s0, "p_1912->g_1499.s0", print_hash_value);
    transparent_crc(p_1912->g_1499.s1, "p_1912->g_1499.s1", print_hash_value);
    transparent_crc(p_1912->g_1499.s2, "p_1912->g_1499.s2", print_hash_value);
    transparent_crc(p_1912->g_1499.s3, "p_1912->g_1499.s3", print_hash_value);
    transparent_crc(p_1912->g_1499.s4, "p_1912->g_1499.s4", print_hash_value);
    transparent_crc(p_1912->g_1499.s5, "p_1912->g_1499.s5", print_hash_value);
    transparent_crc(p_1912->g_1499.s6, "p_1912->g_1499.s6", print_hash_value);
    transparent_crc(p_1912->g_1499.s7, "p_1912->g_1499.s7", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1912->g_1506[i], "p_1912->g_1506[i]", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1912->g_1508[i][j], "p_1912->g_1508[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1912->g_1541, "p_1912->g_1541", print_hash_value);
    transparent_crc(p_1912->g_1542, "p_1912->g_1542", print_hash_value);
    transparent_crc(p_1912->g_1554, "p_1912->g_1554", print_hash_value);
    transparent_crc(p_1912->g_1579.s0, "p_1912->g_1579.s0", print_hash_value);
    transparent_crc(p_1912->g_1579.s1, "p_1912->g_1579.s1", print_hash_value);
    transparent_crc(p_1912->g_1579.s2, "p_1912->g_1579.s2", print_hash_value);
    transparent_crc(p_1912->g_1579.s3, "p_1912->g_1579.s3", print_hash_value);
    transparent_crc(p_1912->g_1579.s4, "p_1912->g_1579.s4", print_hash_value);
    transparent_crc(p_1912->g_1579.s5, "p_1912->g_1579.s5", print_hash_value);
    transparent_crc(p_1912->g_1579.s6, "p_1912->g_1579.s6", print_hash_value);
    transparent_crc(p_1912->g_1579.s7, "p_1912->g_1579.s7", print_hash_value);
    transparent_crc(p_1912->g_1608, "p_1912->g_1608", print_hash_value);
    transparent_crc(p_1912->g_1623.x, "p_1912->g_1623.x", print_hash_value);
    transparent_crc(p_1912->g_1623.y, "p_1912->g_1623.y", print_hash_value);
    transparent_crc(p_1912->g_1649.x, "p_1912->g_1649.x", print_hash_value);
    transparent_crc(p_1912->g_1649.y, "p_1912->g_1649.y", print_hash_value);
    transparent_crc(p_1912->g_1649.z, "p_1912->g_1649.z", print_hash_value);
    transparent_crc(p_1912->g_1649.w, "p_1912->g_1649.w", print_hash_value);
    transparent_crc(p_1912->g_1650.f0, "p_1912->g_1650.f0", print_hash_value);
    transparent_crc(p_1912->g_1655.s0, "p_1912->g_1655.s0", print_hash_value);
    transparent_crc(p_1912->g_1655.s1, "p_1912->g_1655.s1", print_hash_value);
    transparent_crc(p_1912->g_1655.s2, "p_1912->g_1655.s2", print_hash_value);
    transparent_crc(p_1912->g_1655.s3, "p_1912->g_1655.s3", print_hash_value);
    transparent_crc(p_1912->g_1655.s4, "p_1912->g_1655.s4", print_hash_value);
    transparent_crc(p_1912->g_1655.s5, "p_1912->g_1655.s5", print_hash_value);
    transparent_crc(p_1912->g_1655.s6, "p_1912->g_1655.s6", print_hash_value);
    transparent_crc(p_1912->g_1655.s7, "p_1912->g_1655.s7", print_hash_value);
    transparent_crc(p_1912->g_1655.s8, "p_1912->g_1655.s8", print_hash_value);
    transparent_crc(p_1912->g_1655.s9, "p_1912->g_1655.s9", print_hash_value);
    transparent_crc(p_1912->g_1655.sa, "p_1912->g_1655.sa", print_hash_value);
    transparent_crc(p_1912->g_1655.sb, "p_1912->g_1655.sb", print_hash_value);
    transparent_crc(p_1912->g_1655.sc, "p_1912->g_1655.sc", print_hash_value);
    transparent_crc(p_1912->g_1655.sd, "p_1912->g_1655.sd", print_hash_value);
    transparent_crc(p_1912->g_1655.se, "p_1912->g_1655.se", print_hash_value);
    transparent_crc(p_1912->g_1655.sf, "p_1912->g_1655.sf", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1912->g_1691[i], "p_1912->g_1691[i]", print_hash_value);

    }
    transparent_crc(p_1912->g_1696.s0, "p_1912->g_1696.s0", print_hash_value);
    transparent_crc(p_1912->g_1696.s1, "p_1912->g_1696.s1", print_hash_value);
    transparent_crc(p_1912->g_1696.s2, "p_1912->g_1696.s2", print_hash_value);
    transparent_crc(p_1912->g_1696.s3, "p_1912->g_1696.s3", print_hash_value);
    transparent_crc(p_1912->g_1696.s4, "p_1912->g_1696.s4", print_hash_value);
    transparent_crc(p_1912->g_1696.s5, "p_1912->g_1696.s5", print_hash_value);
    transparent_crc(p_1912->g_1696.s6, "p_1912->g_1696.s6", print_hash_value);
    transparent_crc(p_1912->g_1696.s7, "p_1912->g_1696.s7", print_hash_value);
    transparent_crc(p_1912->g_1696.s8, "p_1912->g_1696.s8", print_hash_value);
    transparent_crc(p_1912->g_1696.s9, "p_1912->g_1696.s9", print_hash_value);
    transparent_crc(p_1912->g_1696.sa, "p_1912->g_1696.sa", print_hash_value);
    transparent_crc(p_1912->g_1696.sb, "p_1912->g_1696.sb", print_hash_value);
    transparent_crc(p_1912->g_1696.sc, "p_1912->g_1696.sc", print_hash_value);
    transparent_crc(p_1912->g_1696.sd, "p_1912->g_1696.sd", print_hash_value);
    transparent_crc(p_1912->g_1696.se, "p_1912->g_1696.se", print_hash_value);
    transparent_crc(p_1912->g_1696.sf, "p_1912->g_1696.sf", print_hash_value);
    transparent_crc(p_1912->g_1746.s0, "p_1912->g_1746.s0", print_hash_value);
    transparent_crc(p_1912->g_1746.s1, "p_1912->g_1746.s1", print_hash_value);
    transparent_crc(p_1912->g_1746.s2, "p_1912->g_1746.s2", print_hash_value);
    transparent_crc(p_1912->g_1746.s3, "p_1912->g_1746.s3", print_hash_value);
    transparent_crc(p_1912->g_1746.s4, "p_1912->g_1746.s4", print_hash_value);
    transparent_crc(p_1912->g_1746.s5, "p_1912->g_1746.s5", print_hash_value);
    transparent_crc(p_1912->g_1746.s6, "p_1912->g_1746.s6", print_hash_value);
    transparent_crc(p_1912->g_1746.s7, "p_1912->g_1746.s7", print_hash_value);
    transparent_crc(p_1912->g_1767.x, "p_1912->g_1767.x", print_hash_value);
    transparent_crc(p_1912->g_1767.y, "p_1912->g_1767.y", print_hash_value);
    transparent_crc(p_1912->g_1767.z, "p_1912->g_1767.z", print_hash_value);
    transparent_crc(p_1912->g_1767.w, "p_1912->g_1767.w", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_1912->g_1768[i][j][k], "p_1912->g_1768[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1912->g_1837, "p_1912->g_1837", print_hash_value);
    transparent_crc(p_1912->g_1853.x, "p_1912->g_1853.x", print_hash_value);
    transparent_crc(p_1912->g_1853.y, "p_1912->g_1853.y", print_hash_value);
    transparent_crc(p_1912->g_1889.x, "p_1912->g_1889.x", print_hash_value);
    transparent_crc(p_1912->g_1889.y, "p_1912->g_1889.y", print_hash_value);
    transparent_crc(p_1912->v_collective, "p_1912->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 19; i++)
            transparent_crc(p_1912->g_special_values[i + 19 * get_linear_group_id()], "p_1912->g_special_values[i + 19 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 19; i++)
            transparent_crc(p_1912->l_special_values[i], "p_1912->l_special_values[i]", print_hash_value);
    transparent_crc(p_1912->l_comm_values[get_linear_local_id()], "p_1912->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1912->g_comm_values[get_linear_group_id() * 120 + get_linear_local_id()], "p_1912->g_comm_values[get_linear_group_id() * 120 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
