// ---fake_divergence ---inter_thread_comm -g 24,9,43 -l 3,1,1
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

__constant uint32_t permutations[10][3] = {
{1,2,0}, // permutation 0
{2,0,1}, // permutation 1
{1,2,0}, // permutation 2
{1,2,0}, // permutation 3
{1,0,2}, // permutation 4
{1,0,2}, // permutation 5
{1,0,2}, // permutation 6
{1,2,0}, // permutation 7
{1,0,2}, // permutation 8
{1,0,2} // permutation 9
};

// Seed: 87

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile int32_t g_2;
    volatile int32_t g_3;
    volatile int32_t g_4;
    int32_t g_5;
    volatile int32_t g_9;
    int32_t g_10;
    int32_t g_15;
    int32_t *g_17;
    int32_t *g_62[10];
    int32_t **g_61[3];
    uint16_t g_87;
    uint32_t g_103;
    uint8_t g_116;
    int8_t g_121;
    uint64_t g_124[7];
    uint32_t g_144;
    int16_t g_146;
    int32_t g_148;
    int32_t * volatile g_147;
    int32_t ** volatile g_149;
    volatile uint8_t g_156[5];
    uint16_t g_222;
    volatile int64_t g_289[7];
    volatile int64_t *g_288;
    uint8_t *g_358;
    uint8_t **g_357;
    volatile uint8_t *g_362;
    int32_t * volatile g_368;
    uint64_t g_391;
    int16_t g_393;
    int32_t * volatile g_395;
    volatile int32_t * volatile g_397;
    int32_t g_409[5][3][9];
    int32_t * volatile g_412;
    int32_t * volatile g_413;
    int32_t ** volatile g_414;
    int32_t * volatile g_428;
    int32_t * volatile g_432;
    uint32_t g_453[6][4];
    uint64_t *g_470;
    uint64_t * volatile * volatile g_469;
    int16_t g_471;
    volatile int16_t *g_548[6];
    volatile int16_t **g_547;
    volatile int16_t ** volatile * volatile g_546;
    volatile int16_t ** volatile * volatile g_564;
    volatile uint8_t * volatile * volatile g_569[6];
    volatile uint8_t * volatile * volatile *g_568;
    volatile uint8_t * volatile * volatile ** volatile g_567;
    uint64_t **g_587;
    int32_t ** volatile g_608[2];
    int32_t ** volatile g_609;
    int32_t ** volatile g_670;
    int32_t **g_673[7];
    int32_t *** volatile g_672;
    int32_t * volatile * volatile g_794;
    int32_t * volatile * volatile *g_793[8];
    int32_t g_863;
    int32_t * volatile g_890;
    uint8_t g_944;
    uint32_t * volatile *g_980;
    volatile int16_t g_1013;
    int16_t *g_1030;
    int16_t **g_1029;
    uint8_t ***g_1085;
    uint8_t ****g_1084[1][1];
    volatile int8_t g_1132;
    volatile int8_t *g_1131;
    volatile int8_t ** volatile g_1130;
    volatile int8_t g_1162;
    int64_t g_1209;
    uint32_t *g_1220;
    int32_t ** volatile * volatile g_1242[8];
    int8_t *g_1270;
    volatile int32_t g_1329[6][7][6];
    volatile int32_t * volatile g_1328;
    volatile int32_t * volatile *g_1327;
    int64_t g_1339;
    int8_t g_1359;
    int16_t g_1467;
    int16_t g_1514;
    uint32_t *g_1541;
    uint8_t g_1545;
    int8_t ***g_1552;
    uint64_t g_1561;
    int32_t g_1581;
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
uint16_t  func_1(struct S0 * p_1606);
int32_t * func_18(int32_t * p_19, int64_t  p_20, struct S0 * p_1606);
int32_t * func_21(uint64_t  p_22, int64_t  p_23, uint32_t  p_24, uint16_t  p_25, struct S0 * p_1606);
int32_t  func_33(int16_t  p_34, uint32_t  p_35, int32_t ** p_36, struct S0 * p_1606);
uint64_t  func_39(int32_t  p_40, int32_t  p_41, struct S0 * p_1606);
uint64_t  func_45(int32_t * p_46, int32_t  p_47, int32_t * p_48, struct S0 * p_1606);
int32_t  func_52(uint64_t  p_53, int32_t ** p_54, uint32_t  p_55, struct S0 * p_1606);
int32_t ** func_56(uint64_t  p_57, int32_t ** p_58, int32_t ** p_59, int32_t ** p_60, struct S0 * p_1606);
uint32_t  func_63(uint16_t  p_64, int32_t  p_65, int32_t  p_66, struct S0 * p_1606);
int32_t ** func_69(int32_t  p_70, int64_t  p_71, int32_t * p_72, uint64_t  p_73, struct S0 * p_1606);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1606->g_5 p_1606->g_4 p_1606->g_15 p_1606->g_9 p_1606->l_comm_values p_1606->g_1030 p_1606->g_393 p_1606->g_116 p_1606->g_62 p_1606->g_414 p_1606->g_1130 p_1606->g_1131 p_1606->g_1132 p_1606->g_1029 p_1606->g_863 p_1606->g_568 p_1606->g_569 p_1606->g_362 p_1606->g_156 p_1606->g_1085 p_1606->g_357 p_1606->g_358 p_1606->g_148 p_1606->g_1242 p_1606->g_567 p_1606->g_1270 p_1606->g_121 p_1606->g_672 p_1606->g_673 p_1606->g_413 p_1606->g_147 p_1606->g_288 p_1606->g_289 p_1606->g_87 p_1606->g_124 p_1606->g_794 p_1606->g_428 p_1606->g_1327 p_1606->g_222 p_1606->g_453 p_1606->g_144 p_1606->g_1359 p_1606->g_397 p_1606->g_103 p_1606->g_10 p_1606->g_1328 p_1606->g_395 p_1606->g_890 p_1606->g_471 p_1606->g_1339 p_1606->g_comm_values p_1606->g_1514 p_1606->g_670 p_1606->g_409 p_1606->g_146 p_1606->g_1541 p_1606->g_1545 p_1606->g_1552 p_1606->g_1209 p_1606->g_609 p_1606->g_1561 p_1606->g_149 p_1606->g_1467 p_1606->g_1013
 * writes: p_1606->g_5 p_1606->g_10 p_1606->g_15 p_1606->g_17 p_1606->g_4 p_1606->g_62 p_1606->g_863 p_1606->g_124 p_1606->g_1209 p_1606->g_116 p_1606->g_1220 p_1606->g_148 p_1606->g_87 p_1606->g_393 p_1606->g_1270 p_1606->g_673 p_1606->g_61 p_1606->g_121 p_1606->g_368 p_1606->g_1339 p_1606->g_103 p_1606->g_470 p_1606->g_1359 p_1606->g_144 p_1606->g_1467 p_1606->g_222 p_1606->g_471 p_1606->g_comm_values p_1606->g_1552 p_1606->g_1561 p_1606->g_1581
 */
uint16_t  func_1(struct S0 * p_1606)
{ /* block id: 4 */
    uint32_t l_26 = 4294967295UL;
    int32_t *l_1291 = &p_1606->g_15;
    int32_t l_1292 = 0x7E349F68L;
    int32_t l_1378 = 8L;
    int32_t l_1427 = 0L;
    uint8_t *l_1461 = &p_1606->g_944;
    int64_t *l_1498[5][2][5] = {{{&p_1606->g_1339,&p_1606->g_1339,&p_1606->g_1339,&p_1606->g_1339,(void*)0},{&p_1606->g_1339,&p_1606->g_1339,&p_1606->g_1339,&p_1606->g_1339,(void*)0}},{{&p_1606->g_1339,&p_1606->g_1339,&p_1606->g_1339,&p_1606->g_1339,(void*)0},{&p_1606->g_1339,&p_1606->g_1339,&p_1606->g_1339,&p_1606->g_1339,(void*)0}},{{&p_1606->g_1339,&p_1606->g_1339,&p_1606->g_1339,&p_1606->g_1339,(void*)0},{&p_1606->g_1339,&p_1606->g_1339,&p_1606->g_1339,&p_1606->g_1339,(void*)0}},{{&p_1606->g_1339,&p_1606->g_1339,&p_1606->g_1339,&p_1606->g_1339,(void*)0},{&p_1606->g_1339,&p_1606->g_1339,&p_1606->g_1339,&p_1606->g_1339,(void*)0}},{{&p_1606->g_1339,&p_1606->g_1339,&p_1606->g_1339,&p_1606->g_1339,(void*)0},{&p_1606->g_1339,&p_1606->g_1339,&p_1606->g_1339,&p_1606->g_1339,(void*)0}}};
    int64_t l_1510 = 0x12A17C386E5744DCL;
    int i, j, k;
    for (p_1606->g_5 = (-26); (p_1606->g_5 >= 27); p_1606->g_5++)
    { /* block id: 7 */
        int16_t l_8[10][2][9] = {{{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)},{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)}},{{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)},{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)}},{{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)},{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)}},{{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)},{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)}},{{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)},{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)}},{{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)},{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)}},{{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)},{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)}},{{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)},{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)}},{{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)},{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)}},{{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)},{(-1L),(-1L),0L,0x34AAL,(-1L),0x34AAL,0L,(-1L),(-1L)}}};
        int32_t l_1315 = 8L;
        int32_t l_1338[2];
        int32_t l_1342 = (-1L);
        uint16_t l_1445 = 0UL;
        int32_t *l_1476 = &p_1606->g_10;
        int8_t l_1478 = 0x7EL;
        int32_t ***l_1486[5][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
        uint32_t *l_1511 = &p_1606->g_103;
        uint16_t l_1582 = 3UL;
        uint64_t *l_1599 = (void*)0;
        uint64_t *l_1600 = (void*)0;
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_1338[i] = (-9L);
        for (p_1606->g_10 = 1; (p_1606->g_10 >= 0); p_1606->g_10 -= 1)
        { /* block id: 10 */
            uint16_t l_1314 = 1UL;
            int32_t l_1316[4][5][6] = {{{1L,2L,(-5L),0x2A6AF3E5L,(-1L),1L},{1L,2L,(-5L),0x2A6AF3E5L,(-1L),1L},{1L,2L,(-5L),0x2A6AF3E5L,(-1L),1L},{1L,2L,(-5L),0x2A6AF3E5L,(-1L),1L},{1L,2L,(-5L),0x2A6AF3E5L,(-1L),1L}},{{1L,2L,(-5L),0x2A6AF3E5L,(-1L),1L},{1L,2L,(-5L),0x2A6AF3E5L,(-1L),1L},{1L,2L,(-5L),0x2A6AF3E5L,(-1L),1L},{1L,2L,(-5L),0x2A6AF3E5L,(-1L),1L},{1L,2L,(-5L),0x2A6AF3E5L,(-1L),1L}},{{1L,2L,(-5L),0x2A6AF3E5L,(-1L),1L},{1L,2L,(-5L),0x2A6AF3E5L,(-1L),1L},{1L,2L,(-5L),0x2A6AF3E5L,(-1L),1L},{1L,2L,(-5L),0x2A6AF3E5L,(-1L),1L},{1L,2L,(-5L),0x2A6AF3E5L,(-1L),1L}},{{1L,2L,(-5L),0x2A6AF3E5L,(-1L),1L},{1L,2L,(-5L),0x2A6AF3E5L,(-1L),1L},{1L,2L,(-5L),0x2A6AF3E5L,(-1L),1L},{1L,2L,(-5L),0x2A6AF3E5L,(-1L),1L},{1L,2L,(-5L),0x2A6AF3E5L,(-1L),1L}}};
            int32_t *l_1341 = &p_1606->g_409[3][2][4];
            int32_t **l_1340 = &l_1341;
            int32_t *l_1343 = (void*)0;
            int32_t *l_1344 = &p_1606->g_15;
            uint64_t l_1379[6][2][6] = {{{0x0CD952A87A5F0BDEL,0xD241FDD30A46C1FAL,1UL,0x303C6C8F91581FBFL,0UL,0x0CD952A87A5F0BDEL},{0x0CD952A87A5F0BDEL,0xD241FDD30A46C1FAL,1UL,0x303C6C8F91581FBFL,0UL,0x0CD952A87A5F0BDEL}},{{0x0CD952A87A5F0BDEL,0xD241FDD30A46C1FAL,1UL,0x303C6C8F91581FBFL,0UL,0x0CD952A87A5F0BDEL},{0x0CD952A87A5F0BDEL,0xD241FDD30A46C1FAL,1UL,0x303C6C8F91581FBFL,0UL,0x0CD952A87A5F0BDEL}},{{0x0CD952A87A5F0BDEL,0xD241FDD30A46C1FAL,1UL,0x303C6C8F91581FBFL,0UL,0x0CD952A87A5F0BDEL},{0x0CD952A87A5F0BDEL,0xD241FDD30A46C1FAL,1UL,0x303C6C8F91581FBFL,0UL,0x0CD952A87A5F0BDEL}},{{0x0CD952A87A5F0BDEL,0xD241FDD30A46C1FAL,1UL,0x303C6C8F91581FBFL,0UL,0x0CD952A87A5F0BDEL},{0x0CD952A87A5F0BDEL,0xD241FDD30A46C1FAL,1UL,0x303C6C8F91581FBFL,0UL,0x0CD952A87A5F0BDEL}},{{0x0CD952A87A5F0BDEL,0xD241FDD30A46C1FAL,1UL,0x303C6C8F91581FBFL,0UL,0x0CD952A87A5F0BDEL},{0x0CD952A87A5F0BDEL,0xD241FDD30A46C1FAL,1UL,0x303C6C8F91581FBFL,0UL,0x0CD952A87A5F0BDEL}},{{0x0CD952A87A5F0BDEL,0xD241FDD30A46C1FAL,1UL,0x303C6C8F91581FBFL,0UL,0x0CD952A87A5F0BDEL},{0x0CD952A87A5F0BDEL,0xD241FDD30A46C1FAL,1UL,0x303C6C8F91581FBFL,0UL,0x0CD952A87A5F0BDEL}}};
            int32_t **l_1416 = &l_1291;
            int32_t **l_1418 = &p_1606->g_62[1];
            uint32_t l_1429 = 0x6FBBCF7CL;
            int64_t l_1462 = 0x030037C59AF753BFL;
            int i, j, k;
            if (((safe_sub_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), 0xFDL)) , p_1606->g_4))
            { /* block id: 11 */
                int32_t *l_13 = (void*)0;
                int32_t *l_14 = &p_1606->g_15;
                int32_t **l_16[9];
                uint16_t *l_1297[8][8][4] = {{{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222}},{{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222}},{{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222}},{{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222}},{{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222}},{{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222}},{{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222}},{{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222},{&p_1606->g_87,&p_1606->g_87,(void*)0,&p_1606->g_222}}};
                int i, j, k;
                for (i = 0; i < 9; i++)
                    l_16[i] = &l_14;
                (*l_14) |= p_1606->g_4;
                l_1292 &= (((p_1606->g_17 = (void*)0) != (l_1291 = func_18(func_21(l_8[2][1][4], l_26, ((FAKE_DIVERGE(p_1606->group_0_offset, get_group_id(0), 10) || p_1606->g_9) || p_1606->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1606->tid, 3))]), p_1606->g_15, p_1606), ((p_1606->g_1270 = &p_1606->g_121) != (void*)0), p_1606))) , (*p_1606->g_147));
                l_1316[3][1][4] |= ((safe_add_func_int16_t_s_s(((*p_1606->g_288) != (((safe_mul_func_uint16_t_u_u((p_1606->g_87 &= (0x16L >= (FAKE_DIVERGE(p_1606->local_0_offset, get_local_id(0), 10) , 0L))), (!(+0x6669L)))) , ((*p_1606->g_1270) = (l_1315 = ((safe_mul_func_uint8_t_u_u((safe_rshift_func_int8_t_s_s((FAKE_DIVERGE(p_1606->group_1_offset, get_group_id(1), 10) , (*p_1606->g_1270)), 2)), ((safe_div_func_int16_t_s_s((!(safe_add_func_int32_t_s_s((((safe_add_func_int32_t_s_s((safe_rshift_func_uint8_t_u_s((**p_1606->g_357), ((((*l_14) == (-10L)) , (safe_rshift_func_uint16_t_u_u((safe_sub_func_uint64_t_u_u(l_1314, p_1606->g_124[4])), p_1606->g_863))) || 0xCDB1FD29L))), 0x0320C3A5L)) > 0x051BD923AC3BEA49L) , l_8[9][0][8]), 0x35B6D06BL))), FAKE_DIVERGE(p_1606->global_0_offset, get_global_id(0), 10))) == FAKE_DIVERGE(p_1606->group_1_offset, get_group_id(1), 10)))) < l_8[8][1][8])))) > 0x7CL)), (*p_1606->g_1030))) || 0x9751L);
            }
            else
            { /* block id: 649 */
                uint16_t *l_1317 = &l_1314;
                int32_t l_1320 = 0x5E2700F3L;
                (*p_1606->g_794) = &l_1315;
                l_1316[3][1][4] = ((++(*l_1317)) <= l_1320);
            }
            (*l_1344) &= ((safe_rshift_func_uint16_t_u_u(((-1L) == (++(**p_1606->g_357))), 5)) > (l_8[0][0][4] , (((*p_1606->g_428) > ((safe_lshift_func_uint16_t_u_u((p_1606->g_1327 == ((((*p_1606->g_1270) = l_1315) == (p_1606->g_1339 = (((0x157CL && (((*p_1606->g_1030) = ((safe_sub_func_int8_t_s_s(p_1606->g_222, ((safe_rshift_func_uint16_t_u_u(((--p_1606->g_87) <= (!(safe_div_func_int32_t_s_s(l_1314, (l_1338[0] = l_1314))))), p_1606->g_393)) == p_1606->g_393))) || (**p_1606->g_1029))) || p_1606->g_453[3][3])) == l_8[3][1][5]) , l_1316[1][0][2]))) , l_1340)), l_1342)) <= 0UL)) && l_1338[0])));
            l_1338[0] |= ((safe_mul_func_int16_t_s_s((((((safe_add_func_uint8_t_u_u(1UL, l_26)) != p_1606->g_144) < (safe_mod_func_uint8_t_u_u(((((void*)0 == (*p_1606->g_1130)) == (&p_1606->g_62[1] == &l_1343)) >= (*l_1344)), (safe_rshift_func_uint16_t_u_s((safe_sub_func_uint64_t_u_u((safe_mul_func_uint8_t_u_u(((safe_mul_func_int8_t_s_s(l_1315, 0x61L)) , 248UL), 0UL)), p_1606->g_1359)), (*p_1606->g_1030)))))) && 4L) , (*l_1344)), (**p_1606->g_1029))) , (*p_1606->g_397));
            for (p_1606->g_103 = 0; (p_1606->g_103 <= 1); p_1606->g_103 += 1)
            { /* block id: 664 */
                uint8_t l_1376[7] = {0x15L,0x15L,0x15L,0x15L,0x15L,0x15L,0x15L};
                int32_t *l_1406 = &l_1316[3][1][4];
                int32_t l_1426[6] = {(-1L),0x2691C399L,(-1L),(-1L),0x2691C399L,(-1L)};
                int i, j, k;
                for (l_1314 = 0; (l_1314 <= 0); l_1314 += 1)
                { /* block id: 667 */
                    uint64_t **l_1364 = (void*)0;
                    uint64_t **l_1365 = &p_1606->g_470;
                    uint32_t *l_1377 = (void*)0;
                    int i, j, k;
                    if ((safe_mul_func_int16_t_s_s(((safe_lshift_func_int8_t_s_u((((*l_1365) = &p_1606->g_124[1]) == &p_1606->g_391), (((l_8[(p_1606->g_103 + 8)][p_1606->g_103][(l_1314 + 7)] ^ ((void*)0 == &p_1606->g_1327)) <= (((safe_lshift_func_int8_t_s_s((0xAD518E2C85AAC69BL & (safe_mul_func_int16_t_s_s(((l_1315 = ((*l_1344) = l_1316[(l_1314 + 1)][l_1314][p_1606->g_10])) , (((safe_sub_func_int16_t_s_s((safe_mul_func_int8_t_s_s(((l_1338[0] &= ((l_1376[1] < ((&p_1606->g_547 != (void*)0) || 0x02L)) < (-1L))) || l_8[4][0][1]), (*p_1606->g_362))), (*p_1606->g_1030))) & 0xB340L) , (**p_1606->g_1029))), (*p_1606->g_1030)))), l_1316[(l_1314 + 1)][l_1314][p_1606->g_10])) < 4294967295UL) == l_1378)) , l_1376[2]))) , l_1338[0]), l_1379[0][1][1])))
                    { /* block id: 672 */
                        uint32_t l_1383 = 5UL;
                        l_1383 &= (safe_mul_func_uint16_t_u_u((safe_unary_minus_func_uint16_t_u(((void*)0 != (*p_1606->g_1327)))), 0UL));
                    }
                    else
                    { /* block id: 674 */
                        (*p_1606->g_428) = 0x00F1BC18L;
                        return p_1606->g_1359;
                    }
                }
                if (((safe_add_func_int64_t_s_s((safe_lshift_func_int8_t_s_u((!((safe_div_func_uint32_t_u_u(((safe_sub_func_int8_t_s_s(l_8[(p_1606->g_103 + 1)][p_1606->g_103][(p_1606->g_103 + 7)], l_1342)) && (((safe_mul_func_uint8_t_u_u(((***p_1606->g_1085) <= ((safe_mod_func_int64_t_s_s(0x04FAF05739725E0CL, (safe_div_func_int32_t_s_s(((safe_div_func_uint32_t_u_u(((safe_lshift_func_uint16_t_u_u(((((safe_lshift_func_int8_t_s_s(((l_1315 , l_1344) != &p_1606->g_144), ((p_1606->g_124[5] < ((((l_1315 , &p_1606->g_1339) != (void*)0) > l_1376[1]) , (*p_1606->g_1030))) < FAKE_DIVERGE(p_1606->global_1_offset, get_global_id(1), 10)))) >= l_1376[1]) > l_1292) | l_1376[1]), 12)) < (*l_1344)), (*l_1344))) > 0x4614L), 0x9418B579L)))) == p_1606->g_15)), 1L)) >= (****p_1606->g_567)) & (*p_1606->g_1270))), 0xD243CE51L)) <= l_1376[3])), 1)), p_1606->g_453[3][3])) , (*l_1344)))
                { /* block id: 679 */
                    uint32_t l_1407 = 4294967295UL;
                    int32_t l_1428 = 3L;
                    l_1406 = func_18(&l_1378, (safe_sub_func_int32_t_s_s(0x70889D19L, ((*l_1344) = 0x5A3BFA8EL))), p_1606);
                    for (p_1606->g_1359 = 0; (p_1606->g_1359 <= 1); p_1606->g_1359 += 1)
                    { /* block id: 684 */
                        return p_1606->g_144;
                    }
                    for (p_1606->g_144 = 0; (p_1606->g_144 <= 1); p_1606->g_144 += 1)
                    { /* block id: 689 */
                        int32_t ***l_1417 = &p_1606->g_61[1];
                        int32_t **l_1419 = &l_1343;
                        int32_t *l_1420 = &l_1292;
                        int32_t *l_1421 = &l_1316[1][1][1];
                        int32_t *l_1422 = (void*)0;
                        int32_t *l_1423 = (void*)0;
                        int32_t *l_1424 = &l_1378;
                        int32_t *l_1425[3];
                        int i, j, k;
                        for (i = 0; i < 3; i++)
                            l_1425[i] = &p_1606->g_148;
                        (*p_1606->g_413) = l_1407;
                        (*l_1419) = func_18(&l_1316[0][4][1], (safe_lshift_func_int8_t_s_s((((*p_1606->g_395) | (safe_lshift_func_int8_t_s_u(0x52L, ((***p_1606->g_1085) != (safe_mul_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_u((((((*l_1417) = (l_1416 = &l_1406)) == (l_1418 = (p_1606->g_673[0] = &l_1291))) >= (((0xCD43L <= (l_8[(p_1606->g_10 + 5)][p_1606->g_103][(p_1606->g_144 + 2)] = (p_1606->g_124[5] ^ 1L))) , 0x56569DC3L) | 1L)) == l_1342), 14)), FAKE_DIVERGE(p_1606->local_2_offset, get_local_id(2), 10))))))) < 65534UL), 4)), p_1606);
                        l_1429++;
                        (*l_1424) = (*p_1606->g_428);
                    }
                    for (p_1606->g_121 = 0; (p_1606->g_121 == 24); p_1606->g_121 = safe_add_func_int16_t_s_s(p_1606->g_121, 5))
                    { /* block id: 702 */
                        int32_t *l_1434 = &p_1606->g_148;
                        int32_t *l_1435 = &l_1315;
                        int32_t *l_1436 = &l_1316[3][2][0];
                        int32_t *l_1437 = (void*)0;
                        int32_t *l_1438 = &l_1292;
                        int32_t *l_1439 = (void*)0;
                        int32_t *l_1440 = &l_1316[3][1][4];
                        int32_t *l_1441 = &l_1378;
                        int32_t *l_1442 = (void*)0;
                        int32_t *l_1443 = &l_1426[0];
                        int32_t *l_1444[2][8] = {{&l_1316[1][3][1],&l_1426[3],&l_1316[1][3][1],&l_1316[1][3][1],&l_1426[3],&l_1316[1][3][1],&l_1316[1][3][1],&l_1426[3]},{&l_1316[1][3][1],&l_1426[3],&l_1316[1][3][1],&l_1316[1][3][1],&l_1426[3],&l_1316[1][3][1],&l_1316[1][3][1],&l_1426[3]}};
                        int i, j;
                        l_1445++;
                        (*l_1443) = (GROUP_DIVERGE(2, 1) & (FAKE_DIVERGE(p_1606->local_0_offset, get_local_id(0), 10) , 0x54DC9F5B96A99532L));
                        if (l_8[1][0][7])
                            continue;
                        (*l_1344) ^= l_1407;
                    }
                }
                else
                { /* block id: 708 */
                    int16_t l_1454[2];
                    int64_t *l_1463 = &l_1462;
                    int64_t **l_1464 = &l_1463;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_1454[i] = 0L;
                    (*l_1406) = (((*l_1406) > (*l_1406)) && (!(0UL < ((***p_1606->g_1085) = (((safe_mod_func_uint64_t_u_u((*l_1406), l_1454[1])) > (*p_1606->g_395)) != (&p_1606->g_1209 != ((safe_add_func_int8_t_s_s((3L > (safe_mod_func_int32_t_s_s(1L, l_1454[1]))), l_1454[1])) , (void*)0)))))));
                    p_1606->g_1467 = ((((l_1454[1] | l_1454[1]) , ((safe_rshift_func_uint16_t_u_s(((void*)0 == l_1461), 9)) & (l_1462 & (&p_1606->g_1339 == ((*l_1464) = l_1463))))) & (0x3F03L <= ((**p_1606->g_1029) = (safe_add_func_uint16_t_u_u((&l_1429 == l_1406), 65535UL))))) || (*p_1606->g_1270));
                }
                for (p_1606->g_393 = 1; (p_1606->g_393 <= 5); p_1606->g_393 += 1)
                { /* block id: 717 */
                    uint64_t l_1470 = 0UL;
                    int i;
                    (*l_1344) = (l_1315 ^= (((((safe_add_func_int32_t_s_s(l_1470, (GROUP_DIVERGE(1, 1) , p_1606->g_289[5]))) != (safe_lshift_func_uint8_t_u_u(((!(safe_unary_minus_func_uint32_t_u((safe_div_func_int64_t_s_s(((((void*)0 != &p_1606->g_144) & 0xF6DBL) <= ((&p_1606->g_1084[0][0] != &p_1606->g_1084[0][0]) , ((void*)0 == &p_1606->g_103))), l_1338[0]))))) , (*p_1606->g_358)), (**p_1606->g_357)))) >= (*p_1606->g_1030)) , 0L) > 1UL));
                }
            }
        }
        (*l_1476) = (*p_1606->g_890);
        for (l_26 = 0; (l_26 <= 1); l_26 += 1)
        { /* block id: 726 */
            uint64_t l_1477[5][5][7] = {{{1UL,0UL,0x7201298CA6AB7DC3L,18446744073709551615UL,0UL,18446744073709551615UL,0x7201298CA6AB7DC3L},{1UL,0UL,0x7201298CA6AB7DC3L,18446744073709551615UL,0UL,18446744073709551615UL,0x7201298CA6AB7DC3L},{1UL,0UL,0x7201298CA6AB7DC3L,18446744073709551615UL,0UL,18446744073709551615UL,0x7201298CA6AB7DC3L},{1UL,0UL,0x7201298CA6AB7DC3L,18446744073709551615UL,0UL,18446744073709551615UL,0x7201298CA6AB7DC3L},{1UL,0UL,0x7201298CA6AB7DC3L,18446744073709551615UL,0UL,18446744073709551615UL,0x7201298CA6AB7DC3L}},{{1UL,0UL,0x7201298CA6AB7DC3L,18446744073709551615UL,0UL,18446744073709551615UL,0x7201298CA6AB7DC3L},{1UL,0UL,0x7201298CA6AB7DC3L,18446744073709551615UL,0UL,18446744073709551615UL,0x7201298CA6AB7DC3L},{1UL,0UL,0x7201298CA6AB7DC3L,18446744073709551615UL,0UL,18446744073709551615UL,0x7201298CA6AB7DC3L},{1UL,0UL,0x7201298CA6AB7DC3L,18446744073709551615UL,0UL,18446744073709551615UL,0x7201298CA6AB7DC3L},{1UL,0UL,0x7201298CA6AB7DC3L,18446744073709551615UL,0UL,18446744073709551615UL,0x7201298CA6AB7DC3L}},{{1UL,0UL,0x7201298CA6AB7DC3L,18446744073709551615UL,0UL,18446744073709551615UL,0x7201298CA6AB7DC3L},{1UL,0UL,0x7201298CA6AB7DC3L,18446744073709551615UL,0UL,18446744073709551615UL,0x7201298CA6AB7DC3L},{1UL,0UL,0x7201298CA6AB7DC3L,18446744073709551615UL,0UL,18446744073709551615UL,0x7201298CA6AB7DC3L},{1UL,0UL,0x7201298CA6AB7DC3L,18446744073709551615UL,0UL,18446744073709551615UL,0x7201298CA6AB7DC3L},{1UL,0UL,0x7201298CA6AB7DC3L,18446744073709551615UL,0UL,18446744073709551615UL,0x7201298CA6AB7DC3L}},{{1UL,0UL,0x7201298CA6AB7DC3L,18446744073709551615UL,0UL,18446744073709551615UL,0x7201298CA6AB7DC3L},{1UL,0UL,0x7201298CA6AB7DC3L,18446744073709551615UL,0UL,18446744073709551615UL,0x7201298CA6AB7DC3L},{1UL,0UL,0x7201298CA6AB7DC3L,18446744073709551615UL,0UL,18446744073709551615UL,0x7201298CA6AB7DC3L},{1UL,0UL,0x7201298CA6AB7DC3L,18446744073709551615UL,0UL,18446744073709551615UL,0x7201298CA6AB7DC3L},{1UL,0UL,0x7201298CA6AB7DC3L,18446744073709551615UL,0UL,18446744073709551615UL,0x7201298CA6AB7DC3L}},{{1UL,0UL,0x7201298CA6AB7DC3L,18446744073709551615UL,0UL,18446744073709551615UL,0x7201298CA6AB7DC3L},{1UL,0UL,0x7201298CA6AB7DC3L,18446744073709551615UL,0UL,18446744073709551615UL,0x7201298CA6AB7DC3L},{1UL,0UL,0x7201298CA6AB7DC3L,18446744073709551615UL,0UL,18446744073709551615UL,0x7201298CA6AB7DC3L},{1UL,0UL,0x7201298CA6AB7DC3L,18446744073709551615UL,0UL,18446744073709551615UL,0x7201298CA6AB7DC3L},{1UL,0UL,0x7201298CA6AB7DC3L,18446744073709551615UL,0UL,18446744073709551615UL,0x7201298CA6AB7DC3L}}};
            int32_t l_1518[7][1] = {{5L},{5L},{5L},{5L},{5L},{5L},{5L}};
            int32_t *l_1519 = &l_1315;
            int64_t *l_1550 = &l_1510;
            int i, j, k;
            for (p_1606->g_1359 = 0; (p_1606->g_1359 <= 1); p_1606->g_1359 += 1)
            { /* block id: 729 */
                int32_t l_1495 = 0x53EE953DL;
                int32_t ***l_1517 = (void*)0;
                int32_t *l_1560[4];
                int16_t *l_1579 = (void*)0;
                int i;
                for (i = 0; i < 4; i++)
                    l_1560[i] = &l_1338[0];
                (*l_1476) ^= ((l_1477[1][4][1] = 4294967295UL) ^ l_1338[l_26]);
                for (p_1606->g_144 = 0; (p_1606->g_144 <= 7); p_1606->g_144 += 1)
                { /* block id: 734 */
                    uint16_t *l_1479 = &p_1606->g_222;
                    int32_t l_1499 = 0x018DEB88L;
                    int32_t l_1500 = 8L;
                    int16_t *l_1501 = &p_1606->g_471;
                    int32_t *l_1502 = &l_1338[0];
                    int64_t **l_1509[2][8][4] = {{{&l_1498[0][0][3],&l_1498[2][0][1],&l_1498[2][0][1],&l_1498[0][0][3]},{&l_1498[0][0][3],&l_1498[2][0][1],&l_1498[2][0][1],&l_1498[0][0][3]},{&l_1498[0][0][3],&l_1498[2][0][1],&l_1498[2][0][1],&l_1498[0][0][3]},{&l_1498[0][0][3],&l_1498[2][0][1],&l_1498[2][0][1],&l_1498[0][0][3]},{&l_1498[0][0][3],&l_1498[2][0][1],&l_1498[2][0][1],&l_1498[0][0][3]},{&l_1498[0][0][3],&l_1498[2][0][1],&l_1498[2][0][1],&l_1498[0][0][3]},{&l_1498[0][0][3],&l_1498[2][0][1],&l_1498[2][0][1],&l_1498[0][0][3]},{&l_1498[0][0][3],&l_1498[2][0][1],&l_1498[2][0][1],&l_1498[0][0][3]}},{{&l_1498[0][0][3],&l_1498[2][0][1],&l_1498[2][0][1],&l_1498[0][0][3]},{&l_1498[0][0][3],&l_1498[2][0][1],&l_1498[2][0][1],&l_1498[0][0][3]},{&l_1498[0][0][3],&l_1498[2][0][1],&l_1498[2][0][1],&l_1498[0][0][3]},{&l_1498[0][0][3],&l_1498[2][0][1],&l_1498[2][0][1],&l_1498[0][0][3]},{&l_1498[0][0][3],&l_1498[2][0][1],&l_1498[2][0][1],&l_1498[0][0][3]},{&l_1498[0][0][3],&l_1498[2][0][1],&l_1498[2][0][1],&l_1498[0][0][3]},{&l_1498[0][0][3],&l_1498[2][0][1],&l_1498[2][0][1],&l_1498[0][0][3]},{&l_1498[0][0][3],&l_1498[2][0][1],&l_1498[2][0][1],&l_1498[0][0][3]}}};
                    int32_t ***l_1515 = (void*)0;
                    int32_t ****l_1516 = &l_1486[2][1];
                    uint64_t *l_1542[7] = {&l_1477[4][2][0],&l_1477[4][2][0],&l_1477[4][2][0],&l_1477[4][2][0],&l_1477[4][2][0],&l_1477[4][2][0],&l_1477[4][2][0]};
                    int8_t **l_1555[1];
                    int8_t ***l_1554 = &l_1555[0];
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                        l_1555[i] = &p_1606->g_1270;
                    l_1502 = func_21(l_1478, p_1606->g_5, (p_1606->g_5 , ((((((--(*l_1479)) | 0x266AL) > ((*l_1501) |= (0UL > (safe_rshift_func_uint8_t_u_s(((*p_1606->g_358) = (safe_rshift_func_int16_t_s_s((&p_1606->g_414 == l_1486[2][1]), (safe_mul_func_uint8_t_u_u((safe_add_func_int32_t_s_s((l_1500 &= (safe_mul_func_uint8_t_u_u((((((safe_mul_func_uint16_t_u_u(((l_1495 < ((safe_div_func_int8_t_s_s(((void*)0 != l_1498[2][0][1]), (**p_1606->g_1130))) , (*l_1476))) == l_1499), (-2L))) & p_1606->g_393) && 0x688849174DA430CEL) < 1L) & 0x432A4B8FL), 0xE3L))), 0x098A42CDL)), (*p_1606->g_358)))))), 6))))) || 0x6DL) , l_1499) && l_1477[1][0][5])), p_1606->g_87, p_1606);
                    l_1292 = (safe_sub_func_uint64_t_u_u((p_1606->g_863 > 65534UL), (((p_1606->g_comm_values[p_1606->tid] |= (((safe_sub_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(((((&p_1606->g_288 != l_1509[0][0][2]) || l_1510) > (l_1511 != (void*)0)) >= (safe_lshift_func_uint16_t_u_u(((*l_1479) ^= ((void*)0 != (*p_1606->g_1327))), p_1606->g_1339))), (*p_1606->g_1270))), 0x2FL)) == 0x9E60B82226ECC008L) <= l_1477[1][4][1])) == p_1606->g_1514) , 18446744073709551611UL)));
                    if ((l_1518[6][0] = ((((*l_1516) = l_1515) != l_1517) && (*l_1476))))
                    { /* block id: 745 */
                        l_1519 = (*p_1606->g_670);
                    }
                    else
                    { /* block id: 747 */
                        int32_t *l_1520 = &l_1338[l_26];
                        int32_t *l_1521 = &l_1338[l_26];
                        l_1521 = func_18(l_1520, p_1606->g_409[3][2][4], p_1606);
                        if ((*p_1606->g_147))
                            continue;
                    }
                    if ((((p_1606->g_124[3] = (((((safe_unary_minus_func_int8_t_s(0L)) > ((safe_add_func_int8_t_s_s((0xD7L < ((safe_rshift_func_int8_t_s_s((-8L), 0)) , (0x116A5045L != (-1L)))), (safe_mod_func_uint32_t_u_u(p_1606->g_146, (safe_lshift_func_int16_t_s_s((+((safe_lshift_func_int16_t_s_u((safe_mod_func_int8_t_s_s((((safe_mul_func_uint8_t_u_u(1UL, (safe_mod_func_uint64_t_u_u(((safe_lshift_func_int8_t_s_s(0x26L, 4)) == (((((*p_1606->g_1270) >= 0L) ^ 0L) , l_1291) != p_1606->g_1541)), (*p_1606->g_288))))) & (*p_1606->g_358)) <= (*p_1606->g_1030)), (**p_1606->g_357))), 8)) != (*p_1606->g_1541))), 5)))))) , GROUP_DIVERGE(1, 1))) != (-10L)) , (void*)0) != &p_1606->g_1084[0][0])) > p_1606->g_409[3][2][4]) | p_1606->g_10))
                    { /* block id: 752 */
                        int64_t *l_1551 = &p_1606->g_1339;
                        int8_t ****l_1553 = &p_1606->g_1552;
                        int8_t ****l_1556 = &l_1554;
                        int16_t l_1559 = 1L;
                        l_1338[l_26] ^= (safe_div_func_int16_t_s_s(p_1606->g_1545, (safe_lshift_func_uint8_t_u_s((((*l_1479) &= ((safe_rshift_func_int8_t_s_s(0x2CL, ((((((*p_1606->g_1131) < (((-7L) && (l_1550 != l_1551)) < (((*l_1553) = p_1606->g_1552) == ((*l_1556) = l_1554)))) ^ (((***p_1606->g_1085)--) <= (((void*)0 != (*p_1606->g_1085)) , (*p_1606->g_1270)))) == (**p_1606->g_1029)) <= p_1606->g_1209) <= l_1559))) >= (-1L))) | l_1477[1][4][1]), (*p_1606->g_1270)))));
                        return l_1559;
                    }
                    else
                    { /* block id: 759 */
                        uint16_t *l_1572 = &p_1606->g_87;
                        int32_t *l_1580 = &l_1427;
                        int i;
                        l_1560[3] = (*p_1606->g_609);
                        --p_1606->g_1561;
                        (*p_1606->g_149) = (*p_1606->g_670);
                        (*l_1476) = (p_1606->g_1581 = ((safe_lshift_func_uint16_t_u_u(((*l_1479) = p_1606->g_4), (safe_sub_func_uint16_t_u_u(p_1606->g_1467, ((((safe_rshift_func_int8_t_s_u((safe_lshift_func_uint16_t_u_s(((*l_1572)--), 4)), ((((*l_1580) &= (((&p_1606->g_793[3] != &p_1606->g_793[3]) > (safe_lshift_func_uint16_t_u_u((((**p_1606->g_1029) = ((((*p_1606->g_1270) <= (safe_rshift_func_uint8_t_u_u(((**p_1606->g_1029) < p_1606->g_5), l_26))) < ((l_1579 != l_1572) & 0L)) <= (-1L))) <= p_1606->g_15), 15))) , 0x3F097A65L)) , l_1518[3][0]) || 0x5157191DL))) > GROUP_DIVERGE(1, 1)) ^ p_1606->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1606->tid, 3))]) , 0UL))))) > 0x0F8575FAF9C65D5EL));
                    }
                }
                return l_1582;
            }
            for (p_1606->g_863 = 0; (p_1606->g_863 >= (-20)); p_1606->g_863 = safe_sub_func_int8_t_s_s(p_1606->g_863, 1))
            { /* block id: 775 */
                int32_t *l_1590 = &l_1378;
                for (p_1606->g_471 = 0; (p_1606->g_471 != 29); p_1606->g_471++)
                { /* block id: 778 */
                    uint32_t l_1587 = 4294967295UL;
                    --l_1587;
                    (*l_1519) = (*p_1606->g_397);
                }
                l_1590 = (void*)0;
            }
            (*p_1606->g_609) = &l_1292;
        }
        l_1292 |= (safe_lshift_func_int16_t_s_s((((safe_sub_func_int64_t_s_s(0x1CC284EC66F2AD38L, ((~(safe_mod_func_int64_t_s_s(((safe_rshift_func_uint16_t_u_u((((void*)0 != &p_1606->g_1130) , (((0L || 18446744073709551608UL) | (((*l_1476) = GROUP_DIVERGE(2, 1)) < ((safe_sub_func_uint16_t_u_u(0UL, ((*p_1606->g_288) | p_1606->g_146))) ^ 0x74L))) < l_26)), p_1606->g_453[0][2])) || 9L), p_1606->g_146))) <= 0UL))) == 0x30B3C27FL) != l_1378), 13));
    }
    if ((*p_1606->g_890))
    { /* block id: 789 */
        int32_t l_1603 = 9L;
        int32_t *l_1604 = &l_1378;
        (*l_1604) = l_1603;
    }
    else
    { /* block id: 791 */
        int32_t **l_1605 = &p_1606->g_17;
        (*l_1605) = (void*)0;
    }
    return p_1606->g_1013;
}


/* ------------------------------------------ */
/* 
 * reads : p_1606->g_1270 p_1606->g_121 p_1606->g_1085 p_1606->g_357 p_1606->g_358 p_1606->g_672 p_1606->g_673 p_1606->g_413 p_1606->g_414 p_1606->g_62
 * writes: p_1606->g_116 p_1606->g_673 p_1606->g_61 p_1606->g_148
 */
int32_t * func_18(int32_t * p_19, int64_t  p_20, struct S0 * p_1606)
{ /* block id: 636 */
    uint64_t l_1273 = 18446744073709551613UL;
    int32_t ***l_1286 = &p_1606->g_673[5];
    int32_t ***l_1287 = &p_1606->g_61[1];
    int32_t **l_1289 = &p_1606->g_62[1];
    int32_t ***l_1288 = &l_1289;
    int32_t l_1290 = 1L;
    (*p_1606->g_413) = ((safe_add_func_uint32_t_u_u(((*p_1606->g_1270) && l_1273), (safe_rshift_func_int8_t_s_s((+(safe_mod_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(((***p_1606->g_1085) = 0x17L), ((((safe_sub_func_int8_t_s_s(((safe_rshift_func_int8_t_s_u((((l_1273 , (l_1273 & ((((safe_mod_func_uint32_t_u_u((((((*l_1286) = (*p_1606->g_672)) == ((*l_1288) = ((*l_1287) = &p_1606->g_62[1]))) , ((0xB2L <= 0xADL) >= p_20)) , 0x5911DBEFL), 0x18E3D796L)) , &l_1273) != (void*)0) == 2UL))) != 2UL) >= p_20), 3)) , (-2L)), 0x67L)) , l_1290) , p_20) != p_20))), p_20))), (*p_1606->g_1270))))) , 0L);
    return (*p_1606->g_414);
}


/* ------------------------------------------ */
/* 
 * reads : p_1606->g_15 p_1606->g_1030 p_1606->g_393 p_1606->g_116 p_1606->g_62 p_1606->g_414 p_1606->g_1130 p_1606->g_1131 p_1606->g_1132 p_1606->g_9 p_1606->g_1029 p_1606->g_863 p_1606->g_568 p_1606->g_569 p_1606->g_362 p_1606->g_156 p_1606->g_1085 p_1606->g_357 p_1606->g_358 p_1606->g_148 p_1606->g_1242 p_1606->g_567
 * writes: p_1606->g_4 p_1606->g_62 p_1606->g_863 p_1606->g_124 p_1606->g_1209 p_1606->g_116 p_1606->g_1220 p_1606->g_148 p_1606->g_87 p_1606->g_393
 */
int32_t * func_21(uint64_t  p_22, int64_t  p_23, uint32_t  p_24, uint16_t  p_25, struct S0 * p_1606)
{ /* block id: 14 */
    int32_t l_42 = 1L;
    int16_t *l_1144[5][3][6] = {{{&p_1606->g_393,&p_1606->g_393,&p_1606->g_146,&p_1606->g_471,(void*)0,&p_1606->g_471},{&p_1606->g_393,&p_1606->g_393,&p_1606->g_146,&p_1606->g_471,(void*)0,&p_1606->g_471},{&p_1606->g_393,&p_1606->g_393,&p_1606->g_146,&p_1606->g_471,(void*)0,&p_1606->g_471}},{{&p_1606->g_393,&p_1606->g_393,&p_1606->g_146,&p_1606->g_471,(void*)0,&p_1606->g_471},{&p_1606->g_393,&p_1606->g_393,&p_1606->g_146,&p_1606->g_471,(void*)0,&p_1606->g_471},{&p_1606->g_393,&p_1606->g_393,&p_1606->g_146,&p_1606->g_471,(void*)0,&p_1606->g_471}},{{&p_1606->g_393,&p_1606->g_393,&p_1606->g_146,&p_1606->g_471,(void*)0,&p_1606->g_471},{&p_1606->g_393,&p_1606->g_393,&p_1606->g_146,&p_1606->g_471,(void*)0,&p_1606->g_471},{&p_1606->g_393,&p_1606->g_393,&p_1606->g_146,&p_1606->g_471,(void*)0,&p_1606->g_471}},{{&p_1606->g_393,&p_1606->g_393,&p_1606->g_146,&p_1606->g_471,(void*)0,&p_1606->g_471},{&p_1606->g_393,&p_1606->g_393,&p_1606->g_146,&p_1606->g_471,(void*)0,&p_1606->g_471},{&p_1606->g_393,&p_1606->g_393,&p_1606->g_146,&p_1606->g_471,(void*)0,&p_1606->g_471}},{{&p_1606->g_393,&p_1606->g_393,&p_1606->g_146,&p_1606->g_471,(void*)0,&p_1606->g_471},{&p_1606->g_393,&p_1606->g_393,&p_1606->g_146,&p_1606->g_471,(void*)0,&p_1606->g_471},{&p_1606->g_393,&p_1606->g_393,&p_1606->g_146,&p_1606->g_471,(void*)0,&p_1606->g_471}}};
    int32_t l_1145 = 0x0B0822E3L;
    int32_t **l_1146 = &p_1606->g_62[1];
    int32_t l_1150 = 0L;
    int32_t l_1159 = 0L;
    int32_t l_1160 = 0x15989562L;
    int32_t l_1161 = 0x2E9855BEL;
    int32_t l_1163 = 0x4CE7F675L;
    int32_t l_1164 = 0x2FBF1EF9L;
    uint32_t l_1165 = 1UL;
    int32_t *l_1171 = &p_1606->g_409[0][0][4];
    int32_t **l_1170 = &l_1171;
    int32_t **l_1173 = &l_1171;
    int32_t **l_1174 = (void*)0;
    int32_t l_1191 = 0x6C2FBC17L;
    int32_t l_1192 = 0x195029DDL;
    int32_t l_1193 = 0x6DF006C7L;
    int32_t l_1194[3][4] = {{0x43B7D131L,0x43B7D131L,0x43B7D131L,0x43B7D131L},{0x43B7D131L,0x43B7D131L,0x43B7D131L,0x43B7D131L},{0x43B7D131L,0x43B7D131L,0x43B7D131L,0x43B7D131L}};
    int32_t l_1195[6];
    int8_t l_1196 = 0x37L;
    uint64_t l_1198 = 18446744073709551614UL;
    uint8_t ****l_1210[4][7][9] = {{{&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085},{&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085},{&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085},{&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085},{&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085},{&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085},{&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085}},{{&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085},{&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085},{&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085},{&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085},{&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085},{&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085},{&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085}},{{&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085},{&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085},{&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085},{&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085},{&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085},{&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085},{&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085}},{{&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085},{&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085},{&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085},{&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085},{&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085},{&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085},{&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085,&p_1606->g_1085}}};
    int16_t ***l_1250 = &p_1606->g_1029;
    int32_t *l_1261 = &l_1161;
    int32_t *l_1262 = &p_1606->g_863;
    int32_t *l_1263 = &l_1192;
    int32_t *l_1264 = (void*)0;
    int32_t *l_1265 = &l_1161;
    int32_t *l_1266[2];
    uint64_t l_1267 = 18446744073709551615UL;
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_1195[i] = 0x1B504863L;
    for (i = 0; i < 2; i++)
        l_1266[i] = &p_1606->g_863;
    if ((l_1150 &= (safe_mod_func_uint64_t_u_u(((safe_rshift_func_uint8_t_u_u(((safe_lshift_func_int8_t_s_s((func_33((safe_add_func_uint32_t_u_u(((func_39(p_25, l_42, p_1606) ^ 0UL) > l_42), (safe_add_func_int32_t_s_s((safe_div_func_uint64_t_u_u((&p_22 != (void*)0), (safe_mul_func_int16_t_s_s((*p_1606->g_1030), (l_1145 = 0x3458L))))), p_23)))), p_1606->g_116, l_1146, p_1606) , (**p_1606->g_1130)), 1)) || 0x25F72CFE406EF37AL), p_23)) < p_24), 0x19362CC027427AC9L))))
    { /* block id: 597 */
        int16_t l_1151 = (-4L);
        int32_t *l_1152 = &p_1606->g_863;
        int32_t *l_1153 = &p_1606->g_148;
        int32_t *l_1154 = &p_1606->g_148;
        int32_t *l_1155 = &l_1145;
        int32_t *l_1156 = &l_1145;
        int32_t *l_1157 = &p_1606->g_863;
        int32_t *l_1158[3];
        int i;
        for (i = 0; i < 3; i++)
            l_1158[i] = &l_1150;
        l_1165++;
    }
    else
    { /* block id: 599 */
        int32_t ***l_1172 = &l_1170;
        int32_t *l_1183 = &p_1606->g_863;
        int32_t *l_1186 = &l_1163;
        int32_t *l_1187 = &p_1606->g_15;
        int32_t *l_1188 = &l_1145;
        int32_t *l_1189 = &l_1160;
        int32_t *l_1190[3];
        int8_t l_1197 = 0x33L;
        int64_t *l_1207 = (void*)0;
        int64_t *l_1208[6][7][6] = {{{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0}},{{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0}},{{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0}},{{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0}},{{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0}},{{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0},{&p_1606->g_1209,&p_1606->g_1209,&p_1606->g_1209,(void*)0,&p_1606->g_1209,(void*)0}}};
        int16_t **l_1259 = &l_1144[3][0][3];
        uint32_t l_1260[2][6];
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_1190[i] = &p_1606->g_148;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 6; j++)
                l_1260[i][j] = 0x4D39B9C9L;
        }
        (*l_1183) &= (l_1160 = (safe_div_func_uint8_t_u_u(((l_1173 = ((*l_1172) = l_1170)) == l_1174), (safe_sub_func_int16_t_s_s((safe_mul_func_int16_t_s_s(((p_1606->g_9 ^ (safe_add_func_uint32_t_u_u(0UL, (((p_24 > ((safe_lshift_func_uint16_t_u_s(0x98BEL, (**p_1606->g_1029))) && (~p_23))) , 0x67L) || p_22)))) != 1UL), p_22)), (**p_1606->g_1029))))));
        for (p_24 = 0; (p_24 >= 31); p_24++)
        { /* block id: 606 */
            for (l_1165 = 0; l_1165 < 7; l_1165 += 1)
            {
                p_1606->g_124[l_1165] = 0UL;
            }
        }
        --l_1198;
        if (((*l_1189) |= ((safe_mul_func_uint8_t_u_u(((((safe_sub_func_int32_t_s_s((safe_add_func_int32_t_s_s((((p_1606->g_1209 = p_22) , p_22) < ((***p_1606->g_568) , ((!((((*l_1187) && (p_24 , ((***p_1606->g_1085) |= (l_1210[0][5][0] != (void*)0)))) | (safe_mod_func_int16_t_s_s((safe_mod_func_int8_t_s_s((~((p_23 && p_22) && p_22)), p_22)), (**p_1606->g_1029)))) ^ p_22)) != (*p_1606->g_1030)))), (*l_1183))), p_22)) || 8L) , (void*)0) != (void*)0), 0UL)) && 0x9C9BL)))
        { /* block id: 613 */
            int32_t *l_1215 = &p_1606->g_148;
            uint32_t *l_1219[3];
            uint32_t **l_1218[3][6][6] = {{{(void*)0,&l_1219[1],&l_1219[1],(void*)0,(void*)0,(void*)0},{(void*)0,&l_1219[1],&l_1219[1],(void*)0,(void*)0,(void*)0},{(void*)0,&l_1219[1],&l_1219[1],(void*)0,(void*)0,(void*)0},{(void*)0,&l_1219[1],&l_1219[1],(void*)0,(void*)0,(void*)0},{(void*)0,&l_1219[1],&l_1219[1],(void*)0,(void*)0,(void*)0},{(void*)0,&l_1219[1],&l_1219[1],(void*)0,(void*)0,(void*)0}},{{(void*)0,&l_1219[1],&l_1219[1],(void*)0,(void*)0,(void*)0},{(void*)0,&l_1219[1],&l_1219[1],(void*)0,(void*)0,(void*)0},{(void*)0,&l_1219[1],&l_1219[1],(void*)0,(void*)0,(void*)0},{(void*)0,&l_1219[1],&l_1219[1],(void*)0,(void*)0,(void*)0},{(void*)0,&l_1219[1],&l_1219[1],(void*)0,(void*)0,(void*)0},{(void*)0,&l_1219[1],&l_1219[1],(void*)0,(void*)0,(void*)0}},{{(void*)0,&l_1219[1],&l_1219[1],(void*)0,(void*)0,(void*)0},{(void*)0,&l_1219[1],&l_1219[1],(void*)0,(void*)0,(void*)0},{(void*)0,&l_1219[1],&l_1219[1],(void*)0,(void*)0,(void*)0},{(void*)0,&l_1219[1],&l_1219[1],(void*)0,(void*)0,(void*)0},{(void*)0,&l_1219[1],&l_1219[1],(void*)0,(void*)0,(void*)0},{(void*)0,&l_1219[1],&l_1219[1],(void*)0,(void*)0,(void*)0}}};
            int8_t *l_1231 = (void*)0;
            int8_t *l_1232 = &l_1196;
            uint16_t *l_1235 = &p_1606->g_87;
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_1219[i] = (void*)0;
            (*l_1146) = l_1215;
            (*l_1215) = ((*l_1186) = (0UL > ((safe_lshift_func_uint8_t_u_u(p_23, 5)) , ((p_1606->g_1220 = &p_1606->g_453[1][0]) != &p_1606->g_453[0][3]))));
            (*l_1183) ^= (((0x60CCF48619ED0526L && (GROUP_DIVERGE(2, 1) >= (((**p_1606->g_357) = ((safe_lshift_func_int8_t_s_u(p_22, (safe_sub_func_int64_t_s_s((safe_rshift_func_uint8_t_u_u((((((void*)0 != &p_1606->g_103) != ((+(safe_mod_func_uint32_t_u_u(GROUP_DIVERGE(2, 1), ((*l_1215) = (p_24 & (safe_mod_func_uint8_t_u_u((&l_1146 != ((((*l_1232) = p_25) && (safe_rshift_func_uint16_t_u_u(((*l_1235) = (*l_1189)), (!(((**p_1606->g_1029) &= p_22) , GROUP_DIVERGE(1, 1)))))) , &p_1606->g_673[4])), (*p_1606->g_1131)))))))) , (**p_1606->g_357))) && 0x25A601A9CE69BE47L) , FAKE_DIVERGE(p_1606->group_2_offset, get_group_id(2), 10)), p_22)), p_23)))) >= 1UL)) != 255UL))) , (*l_1215)) , 3L);
        }
        else
        { /* block id: 624 */
            uint32_t *l_1244 = &l_1165;
            int16_t ***l_1248 = &p_1606->g_1029;
            int16_t ****l_1247 = &l_1248;
            int32_t l_1249[10][1][9] = {{{1L,0x5BB29CE9L,(-1L),0x424E5CC2L,0x1588F3DAL,0x49C3003BL,0L,(-1L),0x4322F9A4L}},{{1L,0x5BB29CE9L,(-1L),0x424E5CC2L,0x1588F3DAL,0x49C3003BL,0L,(-1L),0x4322F9A4L}},{{1L,0x5BB29CE9L,(-1L),0x424E5CC2L,0x1588F3DAL,0x49C3003BL,0L,(-1L),0x4322F9A4L}},{{1L,0x5BB29CE9L,(-1L),0x424E5CC2L,0x1588F3DAL,0x49C3003BL,0L,(-1L),0x4322F9A4L}},{{1L,0x5BB29CE9L,(-1L),0x424E5CC2L,0x1588F3DAL,0x49C3003BL,0L,(-1L),0x4322F9A4L}},{{1L,0x5BB29CE9L,(-1L),0x424E5CC2L,0x1588F3DAL,0x49C3003BL,0L,(-1L),0x4322F9A4L}},{{1L,0x5BB29CE9L,(-1L),0x424E5CC2L,0x1588F3DAL,0x49C3003BL,0L,(-1L),0x4322F9A4L}},{{1L,0x5BB29CE9L,(-1L),0x424E5CC2L,0x1588F3DAL,0x49C3003BL,0L,(-1L),0x4322F9A4L}},{{1L,0x5BB29CE9L,(-1L),0x424E5CC2L,0x1588F3DAL,0x49C3003BL,0L,(-1L),0x4322F9A4L}},{{1L,0x5BB29CE9L,(-1L),0x424E5CC2L,0x1588F3DAL,0x49C3003BL,0L,(-1L),0x4322F9A4L}}};
            int i, j, k;
            (*l_1183) |= ((safe_rshift_func_uint8_t_u_s((safe_div_func_int8_t_s_s(l_1145, (safe_sub_func_uint16_t_u_u(0UL, (1UL ^ ((void*)0 == p_1606->g_1242[0])))))), 4)) ^ ((safe_unary_minus_func_uint32_t_u(((*l_1244) = (*l_1189)))) , (!(safe_mul_func_int16_t_s_s((((((((*l_1247) = &p_1606->g_1029) != (l_1249[7][0][5] , l_1250)) , &l_1197) == (void*)0) , 18446744073709551614UL) , p_24), p_23)))));
            (*l_1146) = ((((safe_div_func_int64_t_s_s((safe_sub_func_int16_t_s_s((-1L), (safe_lshift_func_uint16_t_u_u(((safe_div_func_int64_t_s_s((p_22 && ((*l_1189) = ((((l_1259 == (void*)0) != ((-6L) | ((**p_1606->g_357) ^= ((void*)0 != (***p_1606->g_567))))) != l_1249[7][0][5]) >= (&p_1606->g_453[2][0] != l_1171)))), l_1249[7][0][5])) || 1UL), GROUP_DIVERGE(1, 1))))), l_1260[0][0])) > 4UL) == (*l_1186)) , (void*)0);
        }
    }
    --l_1267;
    return (*l_1146);
}


/* ------------------------------------------ */
/* 
 * reads : p_1606->g_62 p_1606->g_414
 * writes: p_1606->g_62
 */
int32_t  func_33(int16_t  p_34, uint32_t  p_35, int32_t ** p_36, struct S0 * p_1606)
{ /* block id: 592 */
    uint32_t l_1147 = 0x3EB378F0L;
    (*p_1606->g_414) = (*p_36);
    l_1147++;
    return p_35;
}


/* ------------------------------------------ */
/* 
 * reads : p_1606->g_15
 * writes: p_1606->g_4
 */
uint64_t  func_39(int32_t  p_40, int32_t  p_41, struct S0 * p_1606)
{ /* block id: 15 */
    int32_t *l_49 = &p_1606->g_15;
    int32_t **l_370 = &p_1606->g_62[9];
    int32_t l_820 = 0x2FCABCECL;
    int32_t l_834 = (-1L);
    int32_t l_866 = 0x0BC1ECA5L;
    int32_t l_869 = 0L;
    int32_t l_870[10][6][1] = {{{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL}},{{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL}},{{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL}},{{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL}},{{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL}},{{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL}},{{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL}},{{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL}},{{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL}},{{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL},{0x5099DB4FL}}};
    uint8_t ***l_977 = &p_1606->g_357;
    int32_t l_983 = 0x41A73F25L;
    int32_t l_1015 = 1L;
    uint16_t l_1016 = 1UL;
    uint16_t l_1108[10][9][2] = {{{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL}},{{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL}},{{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL}},{{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL}},{{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL}},{{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL}},{{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL}},{{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL}},{{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL}},{{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL},{1UL,65530UL}}};
    int i, j, k;
    p_1606->g_4 = 0x7E497D6AL;
    return (*l_49);
}


/* ------------------------------------------ */
/* 
 * reads : p_1606->g_414 p_1606->g_15 p_1606->g_148 p_1606->g_409 p_1606->g_358 p_1606->g_116 p_1606->g_146 p_1606->g_156 p_1606->g_222 p_1606->g_395 p_1606->g_121 p_1606->g_471 p_1606->g_10 p_1606->g_5 p_1606->g_453 p_1606->g_546 p_1606->g_547 p_1606->g_564 p_1606->g_567 p_1606->g_609 p_1606->g_568 p_1606->g_569 p_1606->g_103 p_1606->g_288 p_1606->g_289 p_1606->g_362 p_1606->g_9 p_1606->g_393 p_1606->g_670 p_1606->g_672 p_1606->g_144 p_1606->g_124 p_1606->g_147 p_1606->g_comm_values p_1606->g_149
 * writes: p_1606->g_62 p_1606->g_15 p_1606->g_121 p_1606->g_146 p_1606->g_222 p_1606->g_61 p_1606->g_148 p_1606->g_547 p_1606->g_587 p_1606->g_471 p_1606->g_569 p_1606->g_116 p_1606->g_144 p_1606->g_673 p_1606->g_103 p_1606->l_comm_values p_1606->g_409 p_1606->g_124
 */
uint64_t  func_45(int32_t * p_46, int32_t  p_47, int32_t * p_48, struct S0 * p_1606)
{ /* block id: 171 */
    uint8_t **l_427 = &p_1606->g_358;
    int32_t l_440 = 0x7F79AD8FL;
    int32_t l_448 = (-5L);
    int32_t l_449[8][7] = {{(-7L),0x3B2F03D2L,0x6188042BL,0x647CC65FL,0x6188042BL,0x3B2F03D2L,(-7L)},{(-7L),0x3B2F03D2L,0x6188042BL,0x647CC65FL,0x6188042BL,0x3B2F03D2L,(-7L)},{(-7L),0x3B2F03D2L,0x6188042BL,0x647CC65FL,0x6188042BL,0x3B2F03D2L,(-7L)},{(-7L),0x3B2F03D2L,0x6188042BL,0x647CC65FL,0x6188042BL,0x3B2F03D2L,(-7L)},{(-7L),0x3B2F03D2L,0x6188042BL,0x647CC65FL,0x6188042BL,0x3B2F03D2L,(-7L)},{(-7L),0x3B2F03D2L,0x6188042BL,0x647CC65FL,0x6188042BL,0x3B2F03D2L,(-7L)},{(-7L),0x3B2F03D2L,0x6188042BL,0x647CC65FL,0x6188042BL,0x3B2F03D2L,(-7L)},{(-7L),0x3B2F03D2L,0x6188042BL,0x647CC65FL,0x6188042BL,0x3B2F03D2L,(-7L)}};
    uint64_t l_465[1];
    int8_t *l_486 = &p_1606->g_121;
    int32_t *l_503 = &p_1606->g_148;
    uint8_t l_516 = 0x65L;
    uint16_t l_519 = 0xC01FL;
    int16_t *l_538 = &p_1606->g_471;
    int16_t **l_537 = &l_538;
    int16_t **l_539 = &l_538;
    uint64_t l_667 = 0x1E8BADFCC1C30738L;
    int32_t l_680[8] = {0x2F15C7B3L,0x2F15C7B3L,0x2F15C7B3L,0x2F15C7B3L,0x2F15C7B3L,0x2F15C7B3L,0x2F15C7B3L,0x2F15C7B3L};
    int16_t l_690 = (-1L);
    uint32_t *l_723 = &p_1606->g_144;
    uint32_t **l_722 = &l_723;
    int i, j;
    for (i = 0; i < 1; i++)
        l_465[i] = 0xA236A14391649F35L;
    (*p_1606->g_414) = p_46;
    p_46 = p_48;
    for (p_1606->g_15 = 0; (p_1606->g_15 > 7); p_1606->g_15 = safe_add_func_uint8_t_u_u(p_1606->g_15, 4))
    { /* block id: 176 */
        uint64_t l_424[10] = {18446744073709551607UL,18446744073709551607UL,18446744073709551607UL,18446744073709551607UL,18446744073709551607UL,18446744073709551607UL,18446744073709551607UL,18446744073709551607UL,18446744073709551607UL,18446744073709551607UL};
        int32_t l_433[4] = {7L,7L,7L,7L};
        int32_t *l_513 = (void*)0;
        int32_t **l_512 = &l_513;
        int16_t *l_517 = &p_1606->g_146;
        uint64_t l_554 = 0UL;
        int32_t l_595 = 0x0EE4602DL;
        int8_t l_628 = 8L;
        uint16_t l_638 = 0xD9A4L;
        uint8_t ***l_646 = &l_427;
        uint8_t ****l_645 = &l_646;
        int32_t l_666[8] = {0x3E546EA0L,0x3E546EA0L,0x3E546EA0L,0x3E546EA0L,0x3E546EA0L,0x3E546EA0L,0x3E546EA0L,0x3E546EA0L};
        int32_t l_711 = 1L;
        int32_t **l_737 = &p_1606->g_62[1];
        int i;
        for (p_1606->g_121 = 0; (p_1606->g_121 <= 2); p_1606->g_121 += 1)
        { /* block id: 179 */
            int32_t l_423 = (-1L);
            int8_t l_434 = 0x47L;
            uint8_t ***l_437[6] = {&l_427,&l_427,&l_427,&l_427,&l_427,&l_427};
            int32_t l_450 = 0x6F9E77E9L;
            int32_t l_451 = 0x799E3412L;
            int64_t l_501 = 0L;
            int32_t *l_502 = &l_433[1];
            int i;
            (1 + 1);
        }
        l_503 = l_503;
        if ((safe_lshift_func_int16_t_s_u((safe_add_func_uint8_t_u_u(p_47, (safe_lshift_func_int16_t_s_s(((safe_mod_func_uint32_t_u_u(((l_503 != ((*l_512) = &p_1606->g_409[3][2][4])) < ((+((safe_add_func_uint64_t_u_u(0x2999EC830973FE36L, (!((*l_503) ^ (~((p_1606->g_409[3][2][4] , &l_433[1]) != (void*)0)))))) , (((*l_517) ^= ((((*p_46) || (-9L)) & l_516) & (*p_1606->g_358))) || 6UL))) & 0L)), p_1606->g_156[4])) | p_47), p_47)))), p_1606->g_222)))
        { /* block id: 234 */
            int32_t *l_518[1];
            int i;
            for (i = 0; i < 1; i++)
                l_518[i] = &l_433[1];
            if ((*p_1606->g_395))
                break;
            ++l_519;
            for (p_1606->g_222 = 0; p_1606->g_222 < 3; p_1606->g_222 += 1)
            {
                p_1606->g_61[p_1606->g_222] = &p_1606->g_62[4];
            }
        }
        else
        { /* block id: 238 */
            uint64_t l_530 = 18446744073709551615UL;
            int8_t *l_560 = &p_1606->g_121;
            int32_t l_593 = (-4L);
            for (p_1606->g_146 = 4; (p_1606->g_146 >= 1); p_1606->g_146 -= 1)
            { /* block id: 241 */
                uint16_t *l_531 = &l_519;
                int8_t *l_534 = &p_1606->g_121;
                uint64_t **l_586 = &p_1606->g_470;
                uint8_t ****l_647 = &l_646;
                int i, j;
                if ((l_449[(p_1606->g_146 + 3)][(p_1606->g_146 + 1)] = (safe_mul_func_uint8_t_u_u(p_1606->g_156[p_1606->g_146], (((*l_486) = p_47) && (((((safe_add_func_int64_t_s_s(((*l_503) & (safe_add_func_int16_t_s_s(((safe_rshift_func_int16_t_s_s(p_47, 10)) == (p_47 != ((*l_531) = (l_530 & 0x2F72A849L)))), ((((((((safe_mod_func_uint32_t_u_u((0x33L && (l_534 != (void*)0)), 0x7663A88CL)) > 0UL) < p_47) > p_1606->g_121) , 2L) && (*l_503)) , p_47) <= p_47)))), p_1606->g_471)) ^ p_1606->g_10) <= p_1606->g_5) ^ p_47) & p_1606->g_453[1][0]))))))
                { /* block id: 245 */
                    int16_t **l_536 = (void*)0;
                    int16_t ***l_535[10][1][5] = {{{&l_536,&l_536,&l_536,&l_536,&l_536}},{{&l_536,&l_536,&l_536,&l_536,&l_536}},{{&l_536,&l_536,&l_536,&l_536,&l_536}},{{&l_536,&l_536,&l_536,&l_536,&l_536}},{{&l_536,&l_536,&l_536,&l_536,&l_536}},{{&l_536,&l_536,&l_536,&l_536,&l_536}},{{&l_536,&l_536,&l_536,&l_536,&l_536}},{{&l_536,&l_536,&l_536,&l_536,&l_536}},{{&l_536,&l_536,&l_536,&l_536,&l_536}},{{&l_536,&l_536,&l_536,&l_536,&l_536}}};
                    uint64_t *l_549 = &l_465[0];
                    int8_t *l_561 = &p_1606->g_121;
                    int32_t l_594 = 0x223D378DL;
                    uint8_t l_605 = 1UL;
                    int i, j, k;
                    l_539 = (l_537 = (void*)0);
                    (*l_503) = (*p_48);
                    if (((l_424[7] && (safe_mul_func_int8_t_s_s((((((safe_mul_func_int16_t_s_s(0x0982L, ((safe_sub_func_uint16_t_u_u(((p_47 , &l_536) != p_1606->g_546), (((*l_549) = 0x4C94EB04BF4A5773L) <= (safe_rshift_func_int16_t_s_s(p_47, 9))))) == 4L))) && (safe_add_func_int32_t_s_s((-1L), (*p_48)))) >= GROUP_DIVERGE(1, 1)) < p_47) , l_530), l_424[1]))) < l_554))
                    { /* block id: 250 */
                        uint8_t l_559 = 3UL;
                        int32_t l_562 = (-1L);
                        int32_t *l_563 = &l_433[0];
                        uint8_t ***l_571 = &l_427;
                        uint8_t ****l_570 = &l_571;
                        int64_t *l_588 = (void*)0;
                        int64_t *l_589 = (void*)0;
                        int64_t *l_590 = (void*)0;
                        int64_t *l_591 = (void*)0;
                        int64_t *l_592[6][1][2] = {{{(void*)0,(void*)0}},{{(void*)0,(void*)0}},{{(void*)0,(void*)0}},{{(void*)0,(void*)0}},{{(void*)0,(void*)0}},{{(void*)0,(void*)0}}};
                        int i, j, k;
                        l_449[6][1] ^= ((safe_mul_func_int8_t_s_s(l_530, ((!0x50805788L) >= ((*l_563) = (safe_add_func_uint16_t_u_u(((l_559 < p_47) > (l_562 = ((*l_503) = (l_560 == l_561)))), 65532UL)))))) , (*l_503));
                        (*p_1606->g_564) = (*p_1606->g_546);
                        l_595 = ((safe_lshift_func_int16_t_s_u((p_1606->g_567 != l_570), 3)) < (safe_mod_func_uint64_t_u_u((((*l_563) &= ((safe_lshift_func_int8_t_s_u((safe_sub_func_uint64_t_u_u((*l_503), (safe_add_func_uint16_t_u_u(((*l_531) ^= (!(l_531 != (l_517 = l_517)))), p_47)))), 2)) != (0x97F23A8BL >= ((~((((*l_538) = ((safe_add_func_uint32_t_u_u(((l_593 = (safe_mod_func_uint32_t_u_u((((&l_549 == (p_1606->g_587 = l_586)) < p_1606->g_409[0][0][7]) == (*l_503)), 1L))) == l_594), l_449[(p_1606->g_146 + 3)][(p_1606->g_146 + 1)])) > p_47)) >= l_449[(p_1606->g_146 + 3)][(p_1606->g_146 + 1)]) >= 4UL)) , 0x28BD31E2L)))) , 18446744073709551608UL), FAKE_DIVERGE(p_1606->global_1_offset, get_global_id(1), 10))));
                    }
                    else
                    { /* block id: 263 */
                        int32_t *l_596 = &l_433[0];
                        int32_t *l_597 = &l_594;
                        int32_t *l_598 = &l_449[2][2];
                        int32_t *l_599 = &l_449[0][0];
                        int32_t *l_600 = &l_433[1];
                        int32_t *l_601 = &l_595;
                        int32_t *l_602 = &l_448;
                        int32_t *l_603 = &p_1606->g_148;
                        int32_t *l_604[8][4] = {{(void*)0,&l_449[0][4],&l_449[0][4],(void*)0},{(void*)0,&l_449[0][4],&l_449[0][4],(void*)0},{(void*)0,&l_449[0][4],&l_449[0][4],(void*)0},{(void*)0,&l_449[0][4],&l_449[0][4],(void*)0},{(void*)0,&l_449[0][4],&l_449[0][4],(void*)0},{(void*)0,&l_449[0][4],&l_449[0][4],(void*)0},{(void*)0,&l_449[0][4],&l_449[0][4],(void*)0},{(void*)0,&l_449[0][4],&l_449[0][4],(void*)0}};
                        int i, j;
                        ++l_605;
                    }
                    (*p_1606->g_609) = p_46;
                }
                else
                { /* block id: 267 */
                    (*p_1606->g_568) = (**p_1606->g_567);
                    (*l_503) ^= (safe_unary_minus_func_uint16_t_u((safe_unary_minus_func_int64_t_s(p_47))));
                }
                for (p_1606->g_116 = 0; (p_1606->g_116 <= 9); p_1606->g_116 += 1)
                { /* block id: 273 */
                    uint8_t *l_622 = (void*)0;
                    uint8_t *l_623 = (void*)0;
                    uint8_t *l_624 = &l_516;
                    uint16_t *l_635[8][7] = {{&p_1606->g_222,&p_1606->g_87,&p_1606->g_87,&p_1606->g_222,&p_1606->g_222,&p_1606->g_87,&p_1606->g_87},{&p_1606->g_222,&p_1606->g_87,&p_1606->g_87,&p_1606->g_222,&p_1606->g_222,&p_1606->g_87,&p_1606->g_87},{&p_1606->g_222,&p_1606->g_87,&p_1606->g_87,&p_1606->g_222,&p_1606->g_222,&p_1606->g_87,&p_1606->g_87},{&p_1606->g_222,&p_1606->g_87,&p_1606->g_87,&p_1606->g_222,&p_1606->g_222,&p_1606->g_87,&p_1606->g_87},{&p_1606->g_222,&p_1606->g_87,&p_1606->g_87,&p_1606->g_222,&p_1606->g_222,&p_1606->g_87,&p_1606->g_87},{&p_1606->g_222,&p_1606->g_87,&p_1606->g_87,&p_1606->g_222,&p_1606->g_222,&p_1606->g_87,&p_1606->g_87},{&p_1606->g_222,&p_1606->g_87,&p_1606->g_87,&p_1606->g_222,&p_1606->g_222,&p_1606->g_87,&p_1606->g_87},{&p_1606->g_222,&p_1606->g_87,&p_1606->g_87,&p_1606->g_222,&p_1606->g_222,&p_1606->g_87,&p_1606->g_87}};
                    int32_t *l_636 = &l_440;
                    uint32_t *l_637 = &p_1606->g_144;
                    int64_t *l_652 = (void*)0;
                    int32_t l_657 = 0x4DA2677FL;
                    int i, j;
                    if (((((safe_rshift_func_uint16_t_u_u((++(*l_531)), (p_47 , (((safe_add_func_uint32_t_u_u((safe_mul_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(((*l_624) = 0x65L), (l_433[1] = (safe_sub_func_uint32_t_u_u((l_628 = (safe_unary_minus_func_int32_t_s(((((*l_560) = (l_433[2] || 0x54F546B1L)) , p_47) <= ((void*)0 != &p_1606->g_568))))), ((*l_637) = ((((*l_636) = (safe_lshift_func_uint16_t_u_u(p_1606->g_103, ((*l_503) = (((((safe_sub_func_int64_t_s_s(((safe_mul_func_uint8_t_u_u((l_554 | 0x806EL), 0x63L)) , 0x1E4E674668FDB671L), (*p_1606->g_288))) | p_1606->g_5) != p_47) , (***p_1606->g_568)) , p_47))))) != l_433[0]) , p_47))))))), 0x31E4L)), p_47)) != l_638) && 5L)))) , 0x5BL) != p_47) ^ (*p_48)))
                    { /* block id: 282 */
                        int32_t **l_639 = &p_1606->g_62[6];
                        (*l_639) = &l_449[(p_1606->g_146 + 3)][(p_1606->g_146 + 1)];
                        if ((*p_46))
                            break;
                    }
                    else
                    { /* block id: 285 */
                        int32_t l_640 = 0x708B31FBL;
                        return l_640;
                    }
                    if (((l_424[(p_1606->g_146 + 5)] ^= ((safe_add_func_int16_t_s_s((0x4CL && (*p_1606->g_358)), ((((((safe_div_func_uint8_t_u_u((l_645 != l_647), p_1606->g_121)) > (((safe_mul_func_int16_t_s_s(0x1BBFL, (((((((((safe_div_func_uint8_t_u_u((((*l_503) = p_47) , (safe_add_func_int8_t_s_s((safe_mul_func_int8_t_s_s(p_1606->g_289[5], ((*l_503) > FAKE_DIVERGE(p_1606->local_2_offset, get_local_id(2), 10)))), p_47))), l_449[(p_1606->g_146 + 3)][(p_1606->g_146 + 1)])) , p_1606->g_9) == 0x1AL) && 0x73L) , p_47) , (void*)0) != (void*)0) == 0x09F280FDAD4D27EEL) ^ p_47))) ^ 4UL) && (*l_503))) | (-7L)) & l_530) > 0L) ^ p_1606->g_393))) <= 255UL)) >= l_657))
                    { /* block id: 290 */
                        int32_t **l_658 = &p_1606->g_62[(p_1606->g_146 + 3)];
                        (*l_658) = &l_433[1];
                        return p_47;
                    }
                    else
                    { /* block id: 293 */
                        l_449[(p_1606->g_146 + 3)][(p_1606->g_146 + 1)] ^= ((*l_636) = (*p_48));
                    }
                }
                (*l_503) = (((safe_mul_func_int8_t_s_s((((l_530 , ((p_47 || l_424[3]) ^ 0x6709DAADF07A3815L)) > p_47) ^ p_47), (safe_rshift_func_uint16_t_u_u(p_47, ((*l_531) = (((l_530 != ((safe_add_func_int8_t_s_s((safe_unary_minus_func_int32_t_s(((l_449[(p_1606->g_146 + 3)][(p_1606->g_146 + 1)] = (*p_1606->g_288)) < l_666[6]))), l_667)) , (*l_503))) | 0x64BA7E0BL) <= p_1606->g_116)))))) & 0xB15A2948L) | 0xFD381CBFL);
            }
            for (l_530 = 0; (l_530 <= 55); l_530 = safe_add_func_int8_t_s_s(l_530, 1))
            { /* block id: 304 */
                for (p_47 = 3; (p_47 >= 0); p_47 -= 1)
                { /* block id: 307 */
                    (*p_1606->g_670) = p_46;
                    for (p_1606->g_471 = 0; (p_1606->g_471 <= 4); p_1606->g_471 += 1)
                    { /* block id: 311 */
                        int32_t ***l_671 = &p_1606->g_61[1];
                        (*p_1606->g_672) = ((*l_671) = &p_48);
                    }
                    if ((*p_48))
                        continue;
                }
            }
        }
        for (l_516 = 0; (l_516 < 30); l_516 = safe_add_func_uint16_t_u_u(l_516, 6))
        { /* block id: 321 */
            int64_t l_689 = 1L;
            uint16_t *l_691 = &l_638;
            int32_t l_692 = 0x131878D2L;
            uint32_t *l_714[3];
            uint16_t l_718[1];
            int32_t ***l_738 = &l_737;
            uint8_t ****l_743 = (void*)0;
            uint64_t l_771 = 0xA085E733496F9B1AL;
            int i;
            for (i = 0; i < 3; i++)
                l_714[i] = &p_1606->g_103;
            for (i = 0; i < 1; i++)
                l_718[i] = 0UL;
            l_692 ^= ((*l_503) = (safe_rshift_func_uint16_t_u_u(((*l_691) = (safe_mul_func_int8_t_s_s(((l_680[3] || (safe_add_func_uint32_t_u_u(4294967295UL, ((safe_div_func_uint16_t_u_u(p_47, ((safe_mul_func_uint8_t_u_u((*p_1606->g_362), (p_47 > 65528UL))) && ((l_666[6] <= (((void*)0 == &l_424[9]) , l_689)) < p_1606->g_144)))) > 0x08E67622E2CEFB49L)))) , p_47), l_690))), 14)));
            for (p_1606->g_144 = 21; (p_1606->g_144 >= 15); p_1606->g_144 = safe_sub_func_int16_t_s_s(p_1606->g_144, 2))
            { /* block id: 327 */
                int32_t **l_695 = &p_1606->g_62[1];
                int32_t *l_698 = &p_1606->g_409[3][2][5];
                (*l_695) = &l_692;
                for (p_1606->g_103 = 0; (p_1606->g_103 >= 11); ++p_1606->g_103)
                { /* block id: 331 */
                    int64_t *l_712 = (void*)0;
                    int64_t *l_713 = &l_689;
                    int64_t *l_715 = (void*)0;
                    int64_t *l_716 = (void*)0;
                    int64_t *l_717[2][2];
                    int8_t l_719 = (-3L);
                    int i, j;
                    for (i = 0; i < 2; i++)
                    {
                        for (j = 0; j < 2; j++)
                            l_717[i][j] = (void*)0;
                    }
                    (*l_503) ^= (*p_46);
                    l_719 = (l_698 == ((safe_mul_func_uint8_t_u_u((((((safe_add_func_uint64_t_u_u(0x1D89CA1D6FA7C6B1L, ((safe_lshift_func_int16_t_s_u(((*l_503) | ((safe_rshift_func_int16_t_s_s((((safe_mod_func_uint8_t_u_u(((8UL & p_47) != (((*l_713) = (safe_rshift_func_int16_t_s_u(l_711, 1))) == (p_1606->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1606->tid, 3))] = (l_692 <= (l_714[2] == p_48))))), l_692)) & l_692) > (-1L)), p_47)) , p_1606->g_146)), 7)) >= p_47))) & (*l_503)) > l_718[0]) < p_47) || 0x14L), p_47)) , p_46));
                    for (l_448 = 0; (l_448 == 27); ++l_448)
                    { /* block id: 338 */
                        uint32_t ***l_724 = &l_722;
                        (*l_724) = l_722;
                        (*l_503) |= (*p_48);
                    }
                    (*l_503) ^= (safe_add_func_int16_t_s_s((((*p_1606->g_288) == ((void*)0 == (*l_427))) && (0x6F41DE3DL ^ ((((safe_mod_func_uint32_t_u_u((((((*l_517) ^= (~0x4430L)) & 0x8BF5L) || ((safe_rshift_func_int8_t_s_s((l_711 <= 0xDE780E1E9345424AL), 0)) != (0x754CDD7FL >= 7L))) <= 0x6FF9CFB649AB0240L), p_1606->g_10)) , 1L) & (*p_1606->g_288)) , 0x4659BB84L))), p_47));
                }
            }
            (*l_503) = (safe_mul_func_uint16_t_u_u(((safe_mul_func_uint8_t_u_u(0x63L, ((*p_1606->g_288) >= (safe_sub_func_uint16_t_u_u((((*l_738) = l_737) == &p_1606->g_62[1]), (safe_mod_func_int16_t_s_s((+(safe_div_func_int32_t_s_s((!((5UL & (l_743 != (((*l_513) = p_47) , l_743))) > ((void*)0 != &p_1606->g_62[2]))), (-8L)))), p_1606->g_124[5]))))))) >= p_47), p_1606->g_146));
            for (p_1606->g_222 = 0; (p_1606->g_222 < 44); p_1606->g_222 = safe_add_func_uint16_t_u_u(p_1606->g_222, 7))
            { /* block id: 351 */
                uint64_t *l_762 = (void*)0;
                uint64_t *l_763 = &p_1606->g_124[5];
                uint8_t *****l_768[3];
                int16_t l_769 = 0x4935L;
                uint16_t l_770 = 0x917AL;
                int i;
                for (i = 0; i < 3; i++)
                    l_768[i] = &l_743;
                if ((*l_503))
                    break;
                if ((*l_503))
                    continue;
                (*p_1606->g_149) = ((((safe_sub_func_int32_t_s_s((((safe_lshift_func_uint8_t_u_u(p_47, 6)) > (0x1BB5F90BL != (p_1606->g_103 = ((**l_722) = FAKE_DIVERGE(p_1606->global_2_offset, get_global_id(2), 10))))) ^ (((((65532UL && ((((safe_div_func_uint64_t_u_u(p_47, p_47)) , (safe_sub_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u(((((safe_div_func_uint32_t_u_u((safe_mul_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u((((*l_763) ^= 5UL) != (((((safe_div_func_int64_t_s_s(((p_1606->g_5 ^ ((safe_lshift_func_uint8_t_u_u(((l_645 = &l_646) == (l_743 = &l_646)), l_769)) < FAKE_DIVERGE(p_1606->local_0_offset, get_local_id(0), 10))) && (*l_503)), 0x1D93DD2B1F4A4111L)) <= p_47) & GROUP_DIVERGE(1, 1)) || (*p_1606->g_147)) <= (*l_503))), p_1606->g_148)), p_1606->g_146)), p_1606->g_148)) , p_47) && 0xAD790AD0A9C9CAC1L) != p_1606->g_comm_values[p_1606->tid]), l_770)), p_47))) != 0x31L) != 1L)) , p_1606->g_comm_values[p_1606->tid]) , p_47) | l_771) <= (*p_48))), (*p_48))) && p_47) | (*l_503)) , p_48);
                (*l_503) = (safe_mod_func_int16_t_s_s(((*l_517) &= p_47), 0x548CL));
            }
        }
    }
    return p_47;
}


/* ------------------------------------------ */
/* 
 * reads : p_1606->g_144 p_1606->g_288 p_1606->g_289 p_1606->g_148 p_1606->g_146 p_1606->g_comm_values p_1606->g_393 p_1606->g_5 p_1606->g_395 p_1606->g_121 p_1606->g_103 p_1606->g_397 p_1606->g_409 p_1606->g_413 p_1606->g_4
 * writes: p_1606->g_124 p_1606->g_391 p_1606->g_393 p_1606->g_121 p_1606->g_15 p_1606->g_103 p_1606->g_4 p_1606->g_62 p_1606->g_409 p_1606->g_148
 */
int32_t  func_52(uint64_t  p_53, int32_t ** p_54, uint32_t  p_55, struct S0 * p_1606)
{ /* block id: 144 */
    uint8_t l_373 = 249UL;
    uint64_t *l_384 = &p_1606->g_124[4];
    uint64_t *l_389 = (void*)0;
    uint64_t *l_390 = &p_1606->g_391;
    int16_t *l_392 = &p_1606->g_393;
    int8_t *l_394 = &p_1606->g_121;
    uint32_t l_410 = 0x01A879F8L;
    (*p_1606->g_395) = (~(safe_lshift_func_int16_t_s_s(((((*l_394) = (l_373 , (p_1606->g_144 , ((-8L) < ((safe_mod_func_int16_t_s_s((GROUP_DIVERGE(2, 1) & ((0x1EE1L <= ((safe_rshift_func_int16_t_s_s(((*l_392) ^= ((((*p_1606->g_288) , 0x2881L) != (!(safe_mul_func_uint16_t_u_u(((+((*l_390) = (((safe_mod_func_int16_t_s_s((((*l_384) = ((safe_rshift_func_int8_t_s_s(p_1606->g_148, 3)) > GROUP_DIVERGE(2, 1))) && ((safe_lshift_func_int8_t_s_u((safe_div_func_int32_t_s_s(l_373, l_373)), l_373)) , 0x8C5A12C736E722EFL)), p_1606->g_146)) ^ l_373) , p_1606->g_144))) , p_1606->g_comm_values[p_1606->tid]), 0UL)))) ^ p_1606->g_comm_values[p_1606->tid])), 8)) | p_55)) , 0x60A0BDABL)), p_55)) <= p_53))))) ^ 254UL) == l_373), p_1606->g_5)));
    for (p_1606->g_121 = 7; (p_1606->g_121 >= 0); p_1606->g_121 -= 1)
    { /* block id: 152 */
        uint32_t l_400 = 4294967293UL;
        int32_t l_411 = 0x0D647973L;
        int i;
        for (p_1606->g_103 = 2; (p_1606->g_103 <= 6); p_1606->g_103 += 1)
        { /* block id: 155 */
            volatile int32_t *l_396 = (void*)0;
            int i;
            (*p_1606->g_397) = p_1606->g_289[p_1606->g_103];
            (*p_54) = (void*)0;
        }
        for (p_1606->g_103 = 0; (p_1606->g_103 <= 6); p_1606->g_103 += 1)
        { /* block id: 161 */
            int32_t l_401 = 3L;
            uint8_t **l_406 = &p_1606->g_358;
            uint8_t **l_407 = &p_1606->g_358;
            int32_t *l_408 = &p_1606->g_409[3][2][4];
            int i;
            (*p_1606->g_413) = (p_1606->g_289[p_1606->g_103] | ((l_411 &= ((0x38L || (p_55 ^ (safe_mul_func_uint16_t_u_u((p_53 == l_400), l_401)))) & (safe_div_func_int8_t_s_s(((((((*l_408) &= (((safe_mul_func_int8_t_s_s(p_53, ((((l_406 = l_406) == l_407) & p_53) < 0x76L))) && 1L) >= 1L)) , l_373) == 8L) , 0xCBFE1E81L) || 0x9E1EC82DL), l_410)))) && p_1606->g_121));
            return (*p_1606->g_413);
        }
        if (l_400)
            break;
    }
    return (*p_1606->g_397);
}


/* ------------------------------------------ */
/* 
 * reads : p_1606->g_362 p_1606->g_358 p_1606->g_156 p_1606->g_147
 * writes: p_1606->g_357 p_1606->g_121 p_1606->g_116 p_1606->g_15 p_1606->g_222 p_1606->g_148
 */
int32_t ** func_56(uint64_t  p_57, int32_t ** p_58, int32_t ** p_59, int32_t ** p_60, struct S0 * p_1606)
{ /* block id: 132 */
    int8_t l_349 = 0x2FL;
    uint8_t *l_353 = &p_1606->g_116;
    uint8_t **l_352 = &l_353;
    uint8_t ***l_354 = &l_352;
    uint8_t ***l_355 = (void*)0;
    uint8_t **l_356 = &l_353;
    uint8_t **l_359 = &l_353;
    int8_t *l_367 = &p_1606->g_121;
    int32_t *l_369[10] = {&p_1606->g_148,&p_1606->g_148,&p_1606->g_148,&p_1606->g_148,&p_1606->g_148,&p_1606->g_148,&p_1606->g_148,&p_1606->g_148,&p_1606->g_148,&p_1606->g_148};
    int i;
    (*p_1606->g_147) = ((l_349 , l_349) <= (((l_349 ^ ((l_356 = ((*l_354) = l_352)) != (l_359 = (p_1606->g_357 = &l_353)))) > (((safe_rshift_func_uint16_t_u_s((p_1606->g_222 = (((((**p_59) = (((l_353 == p_1606->g_362) , ((*p_1606->g_358) = (safe_rshift_func_int8_t_s_u((safe_div_func_uint8_t_u_u(l_349, ((*l_367) = p_57))), 4)))) >= l_349)) == GROUP_DIVERGE(1, 1)) <= GROUP_DIVERGE(1, 1)) < GROUP_DIVERGE(0, 1))), p_1606->g_156[4])) ^ p_57) , 4UL)) , 0x042AL));
    return &p_1606->g_62[7];
}


/* ------------------------------------------ */
/* 
 * reads : p_1606->g_103 p_1606->g_144 p_1606->g_124 p_1606->g_15 p_1606->g_222 p_1606->g_156 p_1606->g_288 p_1606->g_2 p_1606->g_148 p_1606->g_121 p_1606->g_5 p_1606->g_146 p_1606->g_comm_values p_1606->g_289 p_1606->g_147
 * writes: p_1606->g_144 p_1606->g_222 p_1606->g_87 p_1606->l_comm_values p_1606->g_146 p_1606->g_103
 */
uint32_t  func_63(uint16_t  p_64, int32_t  p_65, int32_t  p_66, struct S0 * p_1606)
{ /* block id: 95 */
    int32_t l_246[6][2][4] = {{{7L,0x3BEA14DDL,7L,7L},{7L,0x3BEA14DDL,7L,7L}},{{7L,0x3BEA14DDL,7L,7L},{7L,0x3BEA14DDL,7L,7L}},{{7L,0x3BEA14DDL,7L,7L},{7L,0x3BEA14DDL,7L,7L}},{{7L,0x3BEA14DDL,7L,7L},{7L,0x3BEA14DDL,7L,7L}},{{7L,0x3BEA14DDL,7L,7L},{7L,0x3BEA14DDL,7L,7L}},{{7L,0x3BEA14DDL,7L,7L},{7L,0x3BEA14DDL,7L,7L}}};
    uint32_t *l_247 = &p_1606->g_144;
    uint16_t *l_252 = &p_1606->g_87;
    int64_t *l_261[7][3][1] = {{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}}};
    int32_t l_262 = 0x7D2ABBEEL;
    uint8_t l_304[5][10] = {{0UL,0x76L,255UL,0UL,0x69L,255UL,255UL,0x69L,0UL,255UL},{0UL,0x76L,255UL,0UL,0x69L,255UL,255UL,0x69L,0UL,255UL},{0UL,0x76L,255UL,0UL,0x69L,255UL,255UL,0x69L,0UL,255UL},{0UL,0x76L,255UL,0UL,0x69L,255UL,255UL,0x69L,0UL,255UL},{0UL,0x76L,255UL,0UL,0x69L,255UL,255UL,0x69L,0UL,255UL}};
    uint8_t **l_330 = (void*)0;
    int8_t l_341 = 0x2AL;
    int i, j, k;
    if ((((*l_247) = l_246[0][1][2]) && (safe_mod_func_uint16_t_u_u(((safe_rshift_func_uint16_t_u_u(((&p_64 == l_252) , (8L | (safe_sub_func_uint32_t_u_u(2UL, ((((safe_sub_func_uint16_t_u_u((safe_add_func_int32_t_s_s(l_246[0][1][2], (((safe_mul_func_uint16_t_u_u(((l_262 &= (p_1606->g_103 && p_1606->g_144)) || (safe_lshift_func_uint8_t_u_u(FAKE_DIVERGE(p_1606->group_0_offset, get_group_id(0), 10), 1))), p_65)) & p_1606->g_124[5]) < 7UL))), l_246[2][1][2])) | l_246[0][1][2]) && p_65) == l_246[3][1][1]))))), 7)) >= p_1606->g_15), 0x1A07L))))
    { /* block id: 98 */
        uint64_t *l_286 = &p_1606->g_124[4];
        uint64_t **l_287 = &l_286;
        int32_t l_303 = (-8L);
        int32_t l_305 = 1L;
        int32_t *l_306[10][4][3] = {{{&p_1606->g_10,&p_1606->g_148,&l_303},{&p_1606->g_10,&p_1606->g_148,&l_303},{&p_1606->g_10,&p_1606->g_148,&l_303},{&p_1606->g_10,&p_1606->g_148,&l_303}},{{&p_1606->g_10,&p_1606->g_148,&l_303},{&p_1606->g_10,&p_1606->g_148,&l_303},{&p_1606->g_10,&p_1606->g_148,&l_303},{&p_1606->g_10,&p_1606->g_148,&l_303}},{{&p_1606->g_10,&p_1606->g_148,&l_303},{&p_1606->g_10,&p_1606->g_148,&l_303},{&p_1606->g_10,&p_1606->g_148,&l_303},{&p_1606->g_10,&p_1606->g_148,&l_303}},{{&p_1606->g_10,&p_1606->g_148,&l_303},{&p_1606->g_10,&p_1606->g_148,&l_303},{&p_1606->g_10,&p_1606->g_148,&l_303},{&p_1606->g_10,&p_1606->g_148,&l_303}},{{&p_1606->g_10,&p_1606->g_148,&l_303},{&p_1606->g_10,&p_1606->g_148,&l_303},{&p_1606->g_10,&p_1606->g_148,&l_303},{&p_1606->g_10,&p_1606->g_148,&l_303}},{{&p_1606->g_10,&p_1606->g_148,&l_303},{&p_1606->g_10,&p_1606->g_148,&l_303},{&p_1606->g_10,&p_1606->g_148,&l_303},{&p_1606->g_10,&p_1606->g_148,&l_303}},{{&p_1606->g_10,&p_1606->g_148,&l_303},{&p_1606->g_10,&p_1606->g_148,&l_303},{&p_1606->g_10,&p_1606->g_148,&l_303},{&p_1606->g_10,&p_1606->g_148,&l_303}},{{&p_1606->g_10,&p_1606->g_148,&l_303},{&p_1606->g_10,&p_1606->g_148,&l_303},{&p_1606->g_10,&p_1606->g_148,&l_303},{&p_1606->g_10,&p_1606->g_148,&l_303}},{{&p_1606->g_10,&p_1606->g_148,&l_303},{&p_1606->g_10,&p_1606->g_148,&l_303},{&p_1606->g_10,&p_1606->g_148,&l_303},{&p_1606->g_10,&p_1606->g_148,&l_303}},{{&p_1606->g_10,&p_1606->g_148,&l_303},{&p_1606->g_10,&p_1606->g_148,&l_303},{&p_1606->g_10,&p_1606->g_148,&l_303},{&p_1606->g_10,&p_1606->g_148,&l_303}}};
        uint32_t l_307 = 0x34EDAD87L;
        int i, j, k;
        for (p_1606->g_222 = 0; (p_1606->g_222 <= 4); p_1606->g_222 += 1)
        { /* block id: 101 */
            int i;
            l_262 |= p_1606->g_156[p_1606->g_222];
            return p_1606->g_156[p_1606->g_222];
        }
        l_262 ^= ((safe_add_func_int16_t_s_s((safe_div_func_int16_t_s_s((l_305 &= ((safe_lshift_func_int16_t_s_u(p_64, ((~((((safe_unary_minus_func_uint64_t_u((safe_rshift_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((((safe_lshift_func_uint16_t_u_s(((safe_rshift_func_uint8_t_u_s(((+((*l_252) = (safe_mul_func_uint16_t_u_u(((((((*l_287) = l_286) == (void*)0) , l_286) != p_1606->g_288) & (((l_304[0][9] = (safe_unary_minus_func_uint8_t_u((((safe_lshift_func_int16_t_s_s(p_1606->g_2, (safe_lshift_func_int8_t_s_s((((p_1606->g_148 | (safe_div_func_uint16_t_u_u((0x45D7L < (safe_add_func_int8_t_s_s(((safe_add_func_int32_t_s_s((safe_lshift_func_uint8_t_u_s((p_64 == p_1606->g_121), l_303)), p_64)) != p_1606->g_5), (-10L)))), p_1606->g_146))) , (void*)0) != &p_1606->g_116), l_246[0][1][2])))) , 0xC1L) < 0x4AL)))) | GROUP_DIVERGE(1, 1)) < (-1L))), p_1606->g_121)))) != p_66), 5)) || p_66), 10)) | p_1606->g_comm_values[p_1606->tid]) ^ l_303), p_1606->g_146)), 3)))) , p_66) , p_1606->g_289[5]) > 0L)) , FAKE_DIVERGE(p_1606->local_2_offset, get_local_id(2), 10)))) >= 0xE4L)), l_303)), p_1606->g_124[5])) & GROUP_DIVERGE(1, 1));
        l_307--;
    }
    else
    { /* block id: 111 */
        uint8_t l_316[9][4][4] = {{{254UL,0x66L,255UL,255UL},{254UL,0x66L,255UL,255UL},{254UL,0x66L,255UL,255UL},{254UL,0x66L,255UL,255UL}},{{254UL,0x66L,255UL,255UL},{254UL,0x66L,255UL,255UL},{254UL,0x66L,255UL,255UL},{254UL,0x66L,255UL,255UL}},{{254UL,0x66L,255UL,255UL},{254UL,0x66L,255UL,255UL},{254UL,0x66L,255UL,255UL},{254UL,0x66L,255UL,255UL}},{{254UL,0x66L,255UL,255UL},{254UL,0x66L,255UL,255UL},{254UL,0x66L,255UL,255UL},{254UL,0x66L,255UL,255UL}},{{254UL,0x66L,255UL,255UL},{254UL,0x66L,255UL,255UL},{254UL,0x66L,255UL,255UL},{254UL,0x66L,255UL,255UL}},{{254UL,0x66L,255UL,255UL},{254UL,0x66L,255UL,255UL},{254UL,0x66L,255UL,255UL},{254UL,0x66L,255UL,255UL}},{{254UL,0x66L,255UL,255UL},{254UL,0x66L,255UL,255UL},{254UL,0x66L,255UL,255UL},{254UL,0x66L,255UL,255UL}},{{254UL,0x66L,255UL,255UL},{254UL,0x66L,255UL,255UL},{254UL,0x66L,255UL,255UL},{254UL,0x66L,255UL,255UL}},{{254UL,0x66L,255UL,255UL},{254UL,0x66L,255UL,255UL},{254UL,0x66L,255UL,255UL},{254UL,0x66L,255UL,255UL}}};
        int32_t l_321 = 6L;
        int8_t *l_324[5] = {&p_1606->g_121,&p_1606->g_121,&p_1606->g_121,&p_1606->g_121,&p_1606->g_121};
        int32_t l_325 = (-9L);
        uint8_t *l_332 = &l_304[1][1];
        uint8_t **l_331 = &l_332;
        int32_t l_333 = 0L;
        int16_t *l_334 = &p_1606->g_146;
        int32_t l_340[7][8][4] = {{{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L}},{{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L}},{{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L}},{{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L}},{{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L}},{{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L}},{{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L},{0x2AEBCDC3L,(-1L),0x64BC9DD5L,0L}}};
        uint32_t l_343 = 2UL;
        int16_t **l_347 = &l_334;
        int16_t ***l_346 = &l_347;
        int32_t *l_348 = &l_325;
        int i, j, k;
        if ((safe_mod_func_int32_t_s_s(p_65, (safe_sub_func_uint16_t_u_u(((safe_lshift_func_int8_t_s_u((p_65 >= (l_316[0][3][2] = (p_1606->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1606->tid, 3))] = 0x33C0C0E665C51183L))), (safe_div_func_uint64_t_u_u((safe_add_func_int32_t_s_s((((l_321 & ((safe_div_func_int16_t_s_s((p_1606->g_2 & (l_325 = (l_261[5][2][0] == l_261[4][2][0]))), ((*l_334) = (~(safe_mul_func_uint16_t_u_u((GROUP_DIVERGE(1, 1) & (3L & ((safe_mul_func_int16_t_s_s((l_330 == l_331), 0x7880L)) > 0x24L))), l_333)))))) >= p_65)) & p_64) <= FAKE_DIVERGE(p_1606->group_2_offset, get_group_id(2), 10)), 1UL)), 0xF3373FF71A98D6A6L)))) && p_66), 0x130CL)))))
        { /* block id: 116 */
            int32_t *l_338 = &l_333;
            int32_t *l_339[3][4][3];
            int64_t l_342[3][10] = {{0x5E35BB5CDEB02BB9L,0x5E35BB5CDEB02BB9L,0x5E35BB5CDEB02BB9L,0x5E35BB5CDEB02BB9L,0x5E35BB5CDEB02BB9L,0x5E35BB5CDEB02BB9L,0x5E35BB5CDEB02BB9L,0x5E35BB5CDEB02BB9L,0x5E35BB5CDEB02BB9L,0x5E35BB5CDEB02BB9L},{0x5E35BB5CDEB02BB9L,0x5E35BB5CDEB02BB9L,0x5E35BB5CDEB02BB9L,0x5E35BB5CDEB02BB9L,0x5E35BB5CDEB02BB9L,0x5E35BB5CDEB02BB9L,0x5E35BB5CDEB02BB9L,0x5E35BB5CDEB02BB9L,0x5E35BB5CDEB02BB9L,0x5E35BB5CDEB02BB9L},{0x5E35BB5CDEB02BB9L,0x5E35BB5CDEB02BB9L,0x5E35BB5CDEB02BB9L,0x5E35BB5CDEB02BB9L,0x5E35BB5CDEB02BB9L,0x5E35BB5CDEB02BB9L,0x5E35BB5CDEB02BB9L,0x5E35BB5CDEB02BB9L,0x5E35BB5CDEB02BB9L,0x5E35BB5CDEB02BB9L}};
            int i, j, k;
            for (i = 0; i < 3; i++)
            {
                for (j = 0; j < 4; j++)
                {
                    for (k = 0; k < 3; k++)
                        l_339[i][j][k] = &l_333;
                }
            }
            for (p_1606->g_103 = 9; (p_1606->g_103 != 29); p_1606->g_103++)
            { /* block id: 119 */
                uint32_t l_337 = 0x9C53CE2AL;
                if (l_337)
                    break;
            }
            ++l_343;
        }
        else
        { /* block id: 123 */
            return l_304[0][9];
        }
        (*l_346) = &l_334;
        l_246[0][1][2] = ((*l_348) = (*p_1606->g_147));
        return p_64;
    }
    return p_65;
}


/* ------------------------------------------ */
/* 
 * reads : p_1606->g_15 p_1606->g_4 p_1606->g_comm_values p_1606->l_comm_values p_1606->g_5 p_1606->g_103 p_1606->g_116 p_1606->g_144 p_1606->g_10 p_1606->g_2 p_1606->g_147 p_1606->g_148 p_1606->g_146 p_1606->g_149 p_1606->g_121 p_1606->g_156 p_1606->g_3 p_1606->g_9 p_1606->g_222 p_1606->g_124
 * writes: p_1606->g_87 p_1606->g_103 p_1606->g_116 p_1606->g_121 p_1606->g_146 p_1606->g_148 p_1606->g_62 p_1606->g_156 p_1606->g_comm_values p_1606->g_124 p_1606->g_222 p_1606->l_comm_values
 */
int32_t ** func_69(int32_t  p_70, int64_t  p_71, int32_t * p_72, uint64_t  p_73, struct S0 * p_1606)
{ /* block id: 17 */
    uint16_t *l_86 = &p_1606->g_87;
    int32_t l_90 = (-1L);
    int32_t *l_153[7][10] = {{&p_1606->g_15,&p_1606->g_148,(void*)0,&p_1606->g_15,&l_90,&p_1606->g_5,&p_1606->g_5,(void*)0,&p_1606->g_148,&p_1606->g_15},{&p_1606->g_15,&p_1606->g_148,(void*)0,&p_1606->g_15,&l_90,&p_1606->g_5,&p_1606->g_5,(void*)0,&p_1606->g_148,&p_1606->g_15},{&p_1606->g_15,&p_1606->g_148,(void*)0,&p_1606->g_15,&l_90,&p_1606->g_5,&p_1606->g_5,(void*)0,&p_1606->g_148,&p_1606->g_15},{&p_1606->g_15,&p_1606->g_148,(void*)0,&p_1606->g_15,&l_90,&p_1606->g_5,&p_1606->g_5,(void*)0,&p_1606->g_148,&p_1606->g_15},{&p_1606->g_15,&p_1606->g_148,(void*)0,&p_1606->g_15,&l_90,&p_1606->g_5,&p_1606->g_5,(void*)0,&p_1606->g_148,&p_1606->g_15},{&p_1606->g_15,&p_1606->g_148,(void*)0,&p_1606->g_15,&l_90,&p_1606->g_5,&p_1606->g_5,(void*)0,&p_1606->g_148,&p_1606->g_15},{&p_1606->g_15,&p_1606->g_148,(void*)0,&p_1606->g_15,&l_90,&p_1606->g_5,&p_1606->g_5,(void*)0,&p_1606->g_148,&p_1606->g_15}};
    int8_t *l_165 = &p_1606->g_121;
    uint16_t l_244 = 0UL;
    int i, j;
    if (((safe_rshift_func_uint8_t_u_s(((((safe_mul_func_int8_t_s_s((-3L), FAKE_DIVERGE(p_1606->global_0_offset, get_global_id(0), 10))) & (*p_72)) || (safe_mul_func_uint16_t_u_u((((((safe_lshift_func_int16_t_s_s((-1L), 4)) && ((*l_86) = 0xF778L)) , (safe_mul_func_uint8_t_u_u((l_90 < 0xA0C7D0B67C402FB5L), (safe_sub_func_uint64_t_u_u(p_71, 0x5234D5E33AB57C19L))))) , &l_90) != &l_90), p_1606->g_4))) & p_73), 3)) && p_1606->g_4))
    { /* block id: 19 */
        uint16_t *l_98 = &p_1606->g_87;
        uint32_t *l_102[6][2][5];
        int32_t l_104 = 4L;
        int64_t l_142 = (-1L);
        int64_t l_197 = 1L;
        int16_t l_206[3][6][10] = {{{0x1417L,7L,0x4AFBL,0x5721L,0x349FL,0x2783L,0x6D17L,0x01E7L,0x3857L,(-1L)},{0x1417L,7L,0x4AFBL,0x5721L,0x349FL,0x2783L,0x6D17L,0x01E7L,0x3857L,(-1L)},{0x1417L,7L,0x4AFBL,0x5721L,0x349FL,0x2783L,0x6D17L,0x01E7L,0x3857L,(-1L)},{0x1417L,7L,0x4AFBL,0x5721L,0x349FL,0x2783L,0x6D17L,0x01E7L,0x3857L,(-1L)},{0x1417L,7L,0x4AFBL,0x5721L,0x349FL,0x2783L,0x6D17L,0x01E7L,0x3857L,(-1L)},{0x1417L,7L,0x4AFBL,0x5721L,0x349FL,0x2783L,0x6D17L,0x01E7L,0x3857L,(-1L)}},{{0x1417L,7L,0x4AFBL,0x5721L,0x349FL,0x2783L,0x6D17L,0x01E7L,0x3857L,(-1L)},{0x1417L,7L,0x4AFBL,0x5721L,0x349FL,0x2783L,0x6D17L,0x01E7L,0x3857L,(-1L)},{0x1417L,7L,0x4AFBL,0x5721L,0x349FL,0x2783L,0x6D17L,0x01E7L,0x3857L,(-1L)},{0x1417L,7L,0x4AFBL,0x5721L,0x349FL,0x2783L,0x6D17L,0x01E7L,0x3857L,(-1L)},{0x1417L,7L,0x4AFBL,0x5721L,0x349FL,0x2783L,0x6D17L,0x01E7L,0x3857L,(-1L)},{0x1417L,7L,0x4AFBL,0x5721L,0x349FL,0x2783L,0x6D17L,0x01E7L,0x3857L,(-1L)}},{{0x1417L,7L,0x4AFBL,0x5721L,0x349FL,0x2783L,0x6D17L,0x01E7L,0x3857L,(-1L)},{0x1417L,7L,0x4AFBL,0x5721L,0x349FL,0x2783L,0x6D17L,0x01E7L,0x3857L,(-1L)},{0x1417L,7L,0x4AFBL,0x5721L,0x349FL,0x2783L,0x6D17L,0x01E7L,0x3857L,(-1L)},{0x1417L,7L,0x4AFBL,0x5721L,0x349FL,0x2783L,0x6D17L,0x01E7L,0x3857L,(-1L)},{0x1417L,7L,0x4AFBL,0x5721L,0x349FL,0x2783L,0x6D17L,0x01E7L,0x3857L,(-1L)},{0x1417L,7L,0x4AFBL,0x5721L,0x349FL,0x2783L,0x6D17L,0x01E7L,0x3857L,(-1L)}}};
        int32_t l_208[5][1][2];
        int32_t l_241 = (-1L);
        int32_t l_243 = 0x5DF0252EL;
        int i, j, k;
        for (i = 0; i < 6; i++)
        {
            for (j = 0; j < 2; j++)
            {
                for (k = 0; k < 5; k++)
                    l_102[i][j][k] = &p_1606->g_103;
            }
        }
        for (i = 0; i < 5; i++)
        {
            for (j = 0; j < 1; j++)
            {
                for (k = 0; k < 2; k++)
                    l_208[i][j][k] = 0x00E47E4DL;
            }
        }
        if ((((safe_unary_minus_func_int16_t_s(0x3248L)) ^ p_1606->g_comm_values[p_1606->tid]) || ((251UL == ((safe_div_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_s(p_1606->g_4, (l_90 > ((p_1606->g_103 ^= ((l_98 != &p_1606->g_87) < ((safe_lshift_func_int16_t_s_u((l_90 , ((safe_unary_minus_func_uint32_t_u((((((4294967286UL || (-1L)) > p_71) <= GROUP_DIVERGE(2, 1)) , p_1606->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1606->tid, 3))]) || p_1606->g_5))) < (-4L))), p_1606->g_15)) , 0x61L))) , l_104)))), p_71)) < l_104)) | p_73)))
        { /* block id: 21 */
            uint8_t *l_115 = &p_1606->g_116;
            int8_t *l_119 = (void*)0;
            int8_t *l_120[8] = {&p_1606->g_121,&p_1606->g_121,&p_1606->g_121,&p_1606->g_121,&p_1606->g_121,&p_1606->g_121,&p_1606->g_121,&p_1606->g_121};
            int32_t l_122 = 7L;
            uint64_t *l_123[1];
            int32_t l_125[2];
            int32_t l_126[8][2];
            int i, j;
            for (i = 0; i < 1; i++)
                l_123[i] = &p_1606->g_124[5];
            for (i = 0; i < 2; i++)
                l_125[i] = (-4L);
            for (i = 0; i < 8; i++)
            {
                for (j = 0; j < 2; j++)
                    l_126[i][j] = 0x1DCA8204L;
            }
            l_126[7][0] = ((safe_mul_func_uint8_t_u_u((safe_sub_func_int8_t_s_s((safe_sub_func_uint64_t_u_u((l_125[0] = (((l_90 > (~((p_1606->g_121 = (l_122 = ((safe_mod_func_int32_t_s_s((((l_104 , ((((safe_lshift_func_int8_t_s_s(((p_1606->g_5 >= ((*l_115)--)) >= ((void*)0 != l_115)), 6)) || p_70) < FAKE_DIVERGE(p_1606->global_1_offset, get_global_id(1), 10)) , (-9L))) && (p_71 == (*p_72))) , (*p_72)), l_104)) , p_1606->g_4))) >= 0x57L))) , l_122) ^ 0x3567L)), l_126[7][0])), 0xD3L)), 255UL)) | (*p_72));
            for (l_122 = 0; (l_122 <= (-19)); l_122 = safe_sub_func_uint32_t_u_u(l_122, 6))
            { /* block id: 29 */
                uint16_t *l_129 = &p_1606->g_87;
                int8_t *l_137[8] = {&p_1606->g_121,&p_1606->g_121,&p_1606->g_121,&p_1606->g_121,&p_1606->g_121,&p_1606->g_121,&p_1606->g_121,&p_1606->g_121};
                int32_t l_143[2][10][6] = {{{(-1L),(-1L),0L,0x459D1A19L,2L,0x498811EAL},{(-1L),(-1L),0L,0x459D1A19L,2L,0x498811EAL},{(-1L),(-1L),0L,0x459D1A19L,2L,0x498811EAL},{(-1L),(-1L),0L,0x459D1A19L,2L,0x498811EAL},{(-1L),(-1L),0L,0x459D1A19L,2L,0x498811EAL},{(-1L),(-1L),0L,0x459D1A19L,2L,0x498811EAL},{(-1L),(-1L),0L,0x459D1A19L,2L,0x498811EAL},{(-1L),(-1L),0L,0x459D1A19L,2L,0x498811EAL},{(-1L),(-1L),0L,0x459D1A19L,2L,0x498811EAL},{(-1L),(-1L),0L,0x459D1A19L,2L,0x498811EAL}},{{(-1L),(-1L),0L,0x459D1A19L,2L,0x498811EAL},{(-1L),(-1L),0L,0x459D1A19L,2L,0x498811EAL},{(-1L),(-1L),0L,0x459D1A19L,2L,0x498811EAL},{(-1L),(-1L),0L,0x459D1A19L,2L,0x498811EAL},{(-1L),(-1L),0L,0x459D1A19L,2L,0x498811EAL},{(-1L),(-1L),0L,0x459D1A19L,2L,0x498811EAL},{(-1L),(-1L),0L,0x459D1A19L,2L,0x498811EAL},{(-1L),(-1L),0L,0x459D1A19L,2L,0x498811EAL},{(-1L),(-1L),0L,0x459D1A19L,2L,0x498811EAL},{(-1L),(-1L),0L,0x459D1A19L,2L,0x498811EAL}}};
                int16_t *l_145 = &p_1606->g_146;
                int i, j, k;
                p_70 = (((0xBA94L ^ ((((l_129 != l_98) >= ((*l_145) = ((safe_div_func_uint32_t_u_u((safe_div_func_int16_t_s_s(((((safe_add_func_int8_t_s_s((safe_unary_minus_func_uint32_t_u(((l_137[5] != (void*)0) || (safe_mul_func_int16_t_s_s((safe_div_func_uint8_t_u_u(p_71, (((&p_1606->g_103 == (p_70 , p_72)) != l_142) , l_143[0][6][5]))), p_70))))), 246UL)) | 0x9C3FL) , p_1606->g_144) , p_1606->g_10), p_73)), p_70)) , l_143[0][8][5]))) > (*p_72)) | l_142)) < p_1606->g_2) == 0xD572512C82440A59L);
            }
            (*p_1606->g_147) |= l_126[7][0];
            for (p_1606->g_146 = 1; (p_1606->g_146 >= 0); p_1606->g_146 -= 1)
            { /* block id: 36 */
                int i;
                (*p_1606->g_149) = (l_125[p_1606->g_146] , &l_104);
                for (p_1606->g_116 = 0; (p_1606->g_116 <= 7); p_1606->g_116 += 1)
                { /* block id: 40 */
                    return &p_1606->g_62[1];
                }
                for (p_73 = 0; (p_73 <= 7); p_73 += 1)
                { /* block id: 45 */
                    return &p_1606->g_62[1];
                }
            }
        }
        else
        { /* block id: 49 */
            int32_t **l_150 = &p_1606->g_62[8];
            int32_t *l_152[7];
            int32_t **l_151 = &l_152[6];
            int64_t l_171[5][2][1] = {{{0x5CD7AFF6306CC1A3L},{0x5CD7AFF6306CC1A3L}},{{0x5CD7AFF6306CC1A3L},{0x5CD7AFF6306CC1A3L}},{{0x5CD7AFF6306CC1A3L},{0x5CD7AFF6306CC1A3L}},{{0x5CD7AFF6306CC1A3L},{0x5CD7AFF6306CC1A3L}},{{0x5CD7AFF6306CC1A3L},{0x5CD7AFF6306CC1A3L}}};
            uint8_t *l_191 = &p_1606->g_116;
            int16_t *l_195 = &p_1606->g_146;
            int64_t *l_242[9] = {&l_171[3][1][0],&l_171[3][1][0],&l_171[3][1][0],&l_171[3][1][0],&l_171[3][1][0],&l_171[3][1][0],&l_171[3][1][0],&l_171[3][1][0],&l_171[3][1][0]};
            int i, j, k;
            for (i = 0; i < 7; i++)
                l_152[i] = &l_90;
            (*l_151) = ((*l_150) = &p_70);
            l_153[1][4] = (void*)0;
            for (p_1606->g_121 = 25; (p_1606->g_121 > (-13)); p_1606->g_121 = safe_sub_func_int8_t_s_s(p_1606->g_121, 4))
            { /* block id: 55 */
                int32_t l_170 = 0x092A32DBL;
                int64_t *l_174 = &l_142;
                uint64_t *l_177 = &p_1606->g_124[6];
                uint8_t *l_180 = &p_1606->g_116;
                uint8_t **l_192 = &l_180;
                int16_t **l_196 = &l_195;
                uint8_t *l_198 = &p_1606->g_116;
                int32_t *l_199 = &l_170;
                int32_t l_204 = 0x6229C2D6L;
                int32_t l_207 = 7L;
                int32_t l_210 = 0x29FD9D25L;
                int32_t l_211 = 0x1BA1BEA9L;
                int32_t l_213 = 1L;
                int32_t l_214 = 9L;
                int32_t l_216[3][10][2] = {{{0x6B39EC00L,0x6AB28833L},{0x6B39EC00L,0x6AB28833L},{0x6B39EC00L,0x6AB28833L},{0x6B39EC00L,0x6AB28833L},{0x6B39EC00L,0x6AB28833L},{0x6B39EC00L,0x6AB28833L},{0x6B39EC00L,0x6AB28833L},{0x6B39EC00L,0x6AB28833L},{0x6B39EC00L,0x6AB28833L},{0x6B39EC00L,0x6AB28833L}},{{0x6B39EC00L,0x6AB28833L},{0x6B39EC00L,0x6AB28833L},{0x6B39EC00L,0x6AB28833L},{0x6B39EC00L,0x6AB28833L},{0x6B39EC00L,0x6AB28833L},{0x6B39EC00L,0x6AB28833L},{0x6B39EC00L,0x6AB28833L},{0x6B39EC00L,0x6AB28833L},{0x6B39EC00L,0x6AB28833L},{0x6B39EC00L,0x6AB28833L}},{{0x6B39EC00L,0x6AB28833L},{0x6B39EC00L,0x6AB28833L},{0x6B39EC00L,0x6AB28833L},{0x6B39EC00L,0x6AB28833L},{0x6B39EC00L,0x6AB28833L},{0x6B39EC00L,0x6AB28833L},{0x6B39EC00L,0x6AB28833L},{0x6B39EC00L,0x6AB28833L},{0x6B39EC00L,0x6AB28833L},{0x6B39EC00L,0x6AB28833L}}};
                int i, j, k;
                p_1606->g_156[4]--;
                (*l_150) = (((p_1606->g_103 |= ((safe_rshift_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_u((safe_sub_func_int16_t_s_s(((l_165 != &p_1606->g_121) != (safe_mod_func_uint64_t_u_u(((safe_mod_func_int32_t_s_s((l_171[3][1][0] = ((l_170 & 0x1EL) >= l_104)), (safe_sub_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), ((((*l_98) = (((*l_174) ^= 0x335F78ABD9249688L) | ((*l_177) = (((l_170 , (safe_lshift_func_uint8_t_u_u((((p_1606->g_comm_values[p_1606->tid] = p_1606->g_156[4]) < p_70) >= 1UL), 1))) || 0UL) >= 0L)))) && (-9L)) , 0x8316L))))) , p_1606->g_3), 1L))), p_1606->g_146)), 7)), 8)) , l_104)) && l_142) , &p_70);
                l_170 = ((safe_mod_func_int16_t_s_s(p_1606->g_comm_values[p_1606->tid], (~((((*l_180) = p_1606->g_9) > ((l_180 != (((p_70 || (4294967287UL && p_1606->g_10)) >= (0xDCD2A6C3B223AF51L != (safe_mod_func_int16_t_s_s((FAKE_DIVERGE(p_1606->local_0_offset, get_local_id(0), 10) & ((safe_lshift_func_int16_t_s_u(p_73, (safe_sub_func_int32_t_s_s((+(l_170 ^ 0x359A0B5EL)), (*p_72))))) , l_170)), l_142)))) , l_165)) & (**l_151))) != l_170)))) , 0x537CAC03L);
                if ((p_1606->g_103 && (safe_mod_func_int32_t_s_s((((l_191 != ((*l_192) = l_165)) == p_73) >= (((((0xB2L == ((0x2847B0D8L ^ (((*p_72) != (safe_mod_func_int64_t_s_s((((*l_196) = l_195) == &p_1606->g_146), l_197))) , (*p_72))) , p_1606->g_148)) && l_142) != p_73) >= 0x13L) != l_197)), 0x047A856CL))))
                { /* block id: 68 */
                    int8_t l_209 = (-1L);
                    int32_t l_212 = 0x2C60171FL;
                    int32_t l_215 = 0x5BDFB80BL;
                    (**l_151) = (&p_1606->g_116 != (l_191 = l_198));
                    l_199 = &l_90;
                    for (p_71 = 0; (p_71 > (-7)); p_71 = safe_sub_func_uint8_t_u_u(p_71, 7))
                    { /* block id: 74 */
                        int32_t *l_202 = (void*)0;
                        int32_t l_203 = 0x19D508ECL;
                        int32_t l_205[2][8][1] = {{{0x3A823D4BL},{0x3A823D4BL},{0x3A823D4BL},{0x3A823D4BL},{0x3A823D4BL},{0x3A823D4BL},{0x3A823D4BL},{0x3A823D4BL}},{{0x3A823D4BL},{0x3A823D4BL},{0x3A823D4BL},{0x3A823D4BL},{0x3A823D4BL},{0x3A823D4BL},{0x3A823D4BL},{0x3A823D4BL}}};
                        uint8_t l_217 = 255UL;
                        int i, j, k;
                        (*l_150) = l_202;
                        l_217++;
                        if ((*p_72))
                            continue;
                    }
                }
                else
                { /* block id: 79 */
                    int16_t l_220 = 0x641CL;
                    int32_t l_221[4][1];
                    int i, j;
                    for (i = 0; i < 4; i++)
                    {
                        for (j = 0; j < 1; j++)
                            l_221[i][j] = 0x0EFBC22AL;
                    }
                    p_1606->g_222--;
                }
            }
            (*p_1606->g_147) = (safe_mod_func_int16_t_s_s((safe_sub_func_int64_t_s_s(p_71, ((((l_243 ^= ((5UL <= (l_241 ^= (p_1606->g_121 ^ ((((safe_div_func_uint16_t_u_u((FAKE_DIVERGE(p_1606->global_0_offset, get_global_id(0), 10) || (p_1606->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1606->tid, 3))] = (((safe_rshift_func_int8_t_s_u(((((safe_mod_func_int16_t_s_s((safe_add_func_int8_t_s_s(((((l_165 == &p_1606->g_156[4]) > (+(p_71 | ((p_71 <= ((safe_div_func_uint8_t_u_u(p_1606->g_3, ((((safe_div_func_int32_t_s_s((l_104 = (*p_72)), p_1606->g_5)) ^ 0x16A90EFAL) ^ p_1606->g_222) , l_208[2][0][1]))) & l_197)) ^ 0xFB3BCDCEL)))) ^ p_70) < (**l_151)), p_1606->g_144)), p_73)) <= p_1606->g_116) | p_1606->g_144) | p_73), 0)) < 0xF2CE4898L) >= p_71))), p_1606->g_148)) , 0x4ABC8373L) , (void*)0) != (void*)0)))) | p_73)) && 1UL) || 0xAB405F77L) < p_1606->g_146))), p_1606->g_124[0]));
        }
        return &p_1606->g_62[9];
    }
    else
    { /* block id: 90 */
lbl_245:
        (*p_1606->g_147) = l_244;
    }
    if (p_1606->g_144)
        goto lbl_245;
    return &p_1606->g_62[1];
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[3];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 3; i++)
            l_comm_values[i] = 1;
    struct S0 c_1607;
    struct S0* p_1606 = &c_1607;
    struct S0 c_1608 = {
        0x48094A18L, // p_1606->g_2
        0x46F1BF50L, // p_1606->g_3
        0x0B0CEAFDL, // p_1606->g_4
        0x65F36F6DL, // p_1606->g_5
        0x378470EDL, // p_1606->g_9
        (-3L), // p_1606->g_10
        0x6A37BD55L, // p_1606->g_15
        &p_1606->g_15, // p_1606->g_17
        {&p_1606->g_5,&p_1606->g_10,&p_1606->g_15,&p_1606->g_10,&p_1606->g_5,&p_1606->g_5,&p_1606->g_10,&p_1606->g_15,&p_1606->g_10,&p_1606->g_5}, // p_1606->g_62
        {&p_1606->g_62[1],&p_1606->g_62[1],&p_1606->g_62[1]}, // p_1606->g_61
        0x99D6L, // p_1606->g_87
        0x7B12BF80L, // p_1606->g_103
        0x18L, // p_1606->g_116
        0x1DL, // p_1606->g_121
        {0xAC8E61696E83D706L,0xAC8E61696E83D706L,0xAC8E61696E83D706L,0xAC8E61696E83D706L,0xAC8E61696E83D706L,0xAC8E61696E83D706L,0xAC8E61696E83D706L}, // p_1606->g_124
        1UL, // p_1606->g_144
        0x51A9L, // p_1606->g_146
        0x7616C200L, // p_1606->g_148
        &p_1606->g_148, // p_1606->g_147
        &p_1606->g_62[1], // p_1606->g_149
        {255UL,255UL,255UL,255UL,255UL}, // p_1606->g_156
        0xDF84L, // p_1606->g_222
        {0x7A9AE85249B6448EL,0x7A9AE85249B6448EL,0x7A9AE85249B6448EL,0x7A9AE85249B6448EL,0x7A9AE85249B6448EL,0x7A9AE85249B6448EL,0x7A9AE85249B6448EL}, // p_1606->g_289
        &p_1606->g_289[5], // p_1606->g_288
        &p_1606->g_116, // p_1606->g_358
        &p_1606->g_358, // p_1606->g_357
        &p_1606->g_156[4], // p_1606->g_362
        (void*)0, // p_1606->g_368
        18446744073709551615UL, // p_1606->g_391
        0x28E8L, // p_1606->g_393
        &p_1606->g_15, // p_1606->g_395
        &p_1606->g_4, // p_1606->g_397
        {{{0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL},{0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL},{0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL}},{{0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL},{0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL},{0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL}},{{0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL},{0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL},{0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL}},{{0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL},{0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL},{0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL}},{{0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL},{0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL},{0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL,0x3147327AL}}}, // p_1606->g_409
        (void*)0, // p_1606->g_412
        &p_1606->g_148, // p_1606->g_413
        &p_1606->g_62[1], // p_1606->g_414
        &p_1606->g_148, // p_1606->g_428
        (void*)0, // p_1606->g_432
        {{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL}}, // p_1606->g_453
        (void*)0, // p_1606->g_470
        &p_1606->g_470, // p_1606->g_469
        0x0CDDL, // p_1606->g_471
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1606->g_548
        &p_1606->g_548[1], // p_1606->g_547
        &p_1606->g_547, // p_1606->g_546
        &p_1606->g_547, // p_1606->g_564
        {&p_1606->g_362,&p_1606->g_362,&p_1606->g_362,&p_1606->g_362,&p_1606->g_362,&p_1606->g_362}, // p_1606->g_569
        &p_1606->g_569[2], // p_1606->g_568
        &p_1606->g_568, // p_1606->g_567
        (void*)0, // p_1606->g_587
        {&p_1606->g_62[1],&p_1606->g_62[1]}, // p_1606->g_608
        &p_1606->g_62[1], // p_1606->g_609
        &p_1606->g_62[3], // p_1606->g_670
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1606->g_673
        &p_1606->g_673[5], // p_1606->g_672
        &p_1606->g_368, // p_1606->g_794
        {&p_1606->g_794,&p_1606->g_794,&p_1606->g_794,&p_1606->g_794,&p_1606->g_794,&p_1606->g_794,&p_1606->g_794,&p_1606->g_794}, // p_1606->g_793
        0x74D90359L, // p_1606->g_863
        &p_1606->g_863, // p_1606->g_890
        1UL, // p_1606->g_944
        (void*)0, // p_1606->g_980
        0L, // p_1606->g_1013
        &p_1606->g_393, // p_1606->g_1030
        &p_1606->g_1030, // p_1606->g_1029
        &p_1606->g_357, // p_1606->g_1085
        {{&p_1606->g_1085}}, // p_1606->g_1084
        0x67L, // p_1606->g_1132
        &p_1606->g_1132, // p_1606->g_1131
        &p_1606->g_1131, // p_1606->g_1130
        0x6DL, // p_1606->g_1162
        0x2846E3D414D5587EL, // p_1606->g_1209
        &p_1606->g_453[0][2], // p_1606->g_1220
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1606->g_1242
        &p_1606->g_121, // p_1606->g_1270
        {{{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L}},{{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L}},{{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L}},{{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L}},{{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L}},{{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L},{0x648012B8L,1L,0x1D647723L,0x1D647723L,1L,0x648012B8L}}}, // p_1606->g_1329
        &p_1606->g_1329[3][1][2], // p_1606->g_1328
        &p_1606->g_1328, // p_1606->g_1327
        0x2DC3A1EA0CC06EB1L, // p_1606->g_1339
        6L, // p_1606->g_1359
        1L, // p_1606->g_1467
        0x6E6DL, // p_1606->g_1514
        &p_1606->g_103, // p_1606->g_1541
        246UL, // p_1606->g_1545
        (void*)0, // p_1606->g_1552
        0xE2B5BBAF10D60A3AL, // p_1606->g_1561
        0x25AF4AE2L, // p_1606->g_1581
        sequence_input[get_global_id(0)], // p_1606->global_0_offset
        sequence_input[get_global_id(1)], // p_1606->global_1_offset
        sequence_input[get_global_id(2)], // p_1606->global_2_offset
        sequence_input[get_local_id(0)], // p_1606->local_0_offset
        sequence_input[get_local_id(1)], // p_1606->local_1_offset
        sequence_input[get_local_id(2)], // p_1606->local_2_offset
        sequence_input[get_group_id(0)], // p_1606->group_0_offset
        sequence_input[get_group_id(1)], // p_1606->group_1_offset
        sequence_input[get_group_id(2)], // p_1606->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 3)), permutations[0][get_linear_local_id()])), // p_1606->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1607 = c_1608;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1606);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1606->g_2, "p_1606->g_2", print_hash_value);
    transparent_crc(p_1606->g_3, "p_1606->g_3", print_hash_value);
    transparent_crc(p_1606->g_4, "p_1606->g_4", print_hash_value);
    transparent_crc(p_1606->g_5, "p_1606->g_5", print_hash_value);
    transparent_crc(p_1606->g_9, "p_1606->g_9", print_hash_value);
    transparent_crc(p_1606->g_10, "p_1606->g_10", print_hash_value);
    transparent_crc(p_1606->g_15, "p_1606->g_15", print_hash_value);
    transparent_crc(p_1606->g_87, "p_1606->g_87", print_hash_value);
    transparent_crc(p_1606->g_103, "p_1606->g_103", print_hash_value);
    transparent_crc(p_1606->g_116, "p_1606->g_116", print_hash_value);
    transparent_crc(p_1606->g_121, "p_1606->g_121", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1606->g_124[i], "p_1606->g_124[i]", print_hash_value);

    }
    transparent_crc(p_1606->g_144, "p_1606->g_144", print_hash_value);
    transparent_crc(p_1606->g_146, "p_1606->g_146", print_hash_value);
    transparent_crc(p_1606->g_148, "p_1606->g_148", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1606->g_156[i], "p_1606->g_156[i]", print_hash_value);

    }
    transparent_crc(p_1606->g_222, "p_1606->g_222", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1606->g_289[i], "p_1606->g_289[i]", print_hash_value);

    }
    transparent_crc(p_1606->g_391, "p_1606->g_391", print_hash_value);
    transparent_crc(p_1606->g_393, "p_1606->g_393", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_1606->g_409[i][j][k], "p_1606->g_409[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1606->g_453[i][j], "p_1606->g_453[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1606->g_471, "p_1606->g_471", print_hash_value);
    transparent_crc(p_1606->g_863, "p_1606->g_863", print_hash_value);
    transparent_crc(p_1606->g_944, "p_1606->g_944", print_hash_value);
    transparent_crc(p_1606->g_1013, "p_1606->g_1013", print_hash_value);
    transparent_crc(p_1606->g_1132, "p_1606->g_1132", print_hash_value);
    transparent_crc(p_1606->g_1162, "p_1606->g_1162", print_hash_value);
    transparent_crc(p_1606->g_1209, "p_1606->g_1209", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_1606->g_1329[i][j][k], "p_1606->g_1329[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1606->g_1339, "p_1606->g_1339", print_hash_value);
    transparent_crc(p_1606->g_1359, "p_1606->g_1359", print_hash_value);
    transparent_crc(p_1606->g_1467, "p_1606->g_1467", print_hash_value);
    transparent_crc(p_1606->g_1514, "p_1606->g_1514", print_hash_value);
    transparent_crc(p_1606->g_1545, "p_1606->g_1545", print_hash_value);
    transparent_crc(p_1606->g_1561, "p_1606->g_1561", print_hash_value);
    transparent_crc(p_1606->g_1581, "p_1606->g_1581", print_hash_value);
    transparent_crc(p_1606->l_comm_values[get_linear_local_id()], "p_1606->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1606->g_comm_values[get_linear_group_id() * 3 + get_linear_local_id()], "p_1606->g_comm_values[get_linear_group_id() * 3 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
