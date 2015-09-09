// ---fake_divergence ---inter_thread_comm -g 92,1,85 -l 1,1,5
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

__constant uint32_t permutations[10][5] = {
{3,0,2,4,1}, // permutation 0
{1,0,2,4,3}, // permutation 1
{2,4,1,3,0}, // permutation 2
{1,0,3,2,4}, // permutation 3
{1,4,3,0,2}, // permutation 4
{4,2,0,1,3}, // permutation 5
{1,2,4,0,3}, // permutation 6
{4,0,2,1,3}, // permutation 7
{2,3,4,0,1}, // permutation 8
{1,2,0,3,4} // permutation 9
};

// Seed: 31

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile int32_t g_2;
    volatile int32_t g_3;
    int32_t g_4;
    volatile int32_t g_7;
    int32_t g_8;
    int32_t g_13;
    uint64_t g_25;
    volatile int16_t g_39;
    volatile uint8_t g_41;
    volatile int8_t g_47;
    volatile int64_t g_48;
    volatile uint64_t g_51;
    volatile int32_t g_61;
    int32_t g_69;
    volatile uint16_t g_71;
    uint16_t g_75[5][2];
    int16_t g_103;
    uint64_t g_104;
    uint32_t g_156;
    uint32_t g_181;
    int32_t *g_203[4][1];
    uint32_t *g_209[6];
    uint32_t **g_208;
    uint8_t g_218;
    uint8_t *g_217;
    int8_t g_237;
    int8_t g_239;
    int8_t g_391;
    volatile uint8_t g_412;
    volatile uint8_t g_413;
    volatile uint8_t g_414;
    volatile uint8_t g_415;
    volatile uint8_t g_416[8];
    volatile uint8_t g_417;
    volatile uint8_t g_418;
    volatile uint8_t g_419;
    volatile uint8_t g_420;
    volatile uint8_t g_421;
    volatile uint8_t g_422;
    volatile uint8_t g_423;
    volatile uint8_t g_424;
    volatile uint8_t g_425;
    volatile uint8_t g_426[6][8];
    volatile uint8_t g_427[5];
    volatile uint8_t g_428;
    volatile uint8_t g_429;
    volatile uint8_t g_430;
    volatile uint8_t g_431;
    volatile uint8_t g_432;
    volatile uint8_t g_433;
    volatile uint8_t g_434[8][5];
    volatile uint8_t g_435;
    volatile uint8_t g_436;
    volatile uint8_t g_437;
    volatile uint8_t g_438;
    volatile uint8_t g_439;
    volatile uint8_t g_440;
    volatile uint8_t g_441[10][1][6];
    volatile uint8_t g_442;
    volatile uint8_t g_443;
    volatile uint8_t g_444;
    volatile uint8_t g_445;
    volatile uint8_t g_446;
    volatile uint8_t g_447;
    volatile uint8_t g_448;
    volatile uint8_t g_449;
    volatile uint8_t g_450;
    volatile uint8_t g_451;
    volatile uint8_t g_452;
    volatile uint8_t g_453;
    volatile uint8_t g_454;
    volatile uint8_t g_455;
    volatile uint8_t g_456;
    volatile uint8_t g_457;
    volatile uint8_t g_458;
    volatile uint8_t g_459;
    volatile uint8_t g_460[3];
    volatile uint8_t g_461;
    volatile uint8_t g_462;
    volatile uint8_t g_463;
    volatile uint8_t g_464;
    volatile uint8_t g_465;
    volatile uint8_t g_466;
    volatile uint8_t g_467;
    volatile uint8_t g_468[6];
    volatile uint8_t g_469;
    volatile uint8_t g_470[4];
    volatile uint8_t g_471[10][5][5];
    volatile uint8_t g_472;
    volatile uint8_t *g_411[7][9][4];
    volatile uint8_t * volatile *g_410;
    uint32_t ***g_476;
    uint32_t *g_511;
    uint8_t g_563;
    int16_t g_610;
    int32_t g_678;
    int64_t g_712;
    uint64_t g_713;
    int32_t g_740;
    int8_t * volatile *g_805;
    int8_t * volatile **g_804;
    int32_t g_839[10];
    uint64_t g_853;
    int8_t **g_859[6];
    int16_t g_897;
    int16_t g_902;
    int32_t g_922;
    uint64_t *g_949[7][7];
    uint64_t * volatile *g_948;
    uint16_t * volatile *g_966[3][3];
    int16_t g_984;
    int64_t g_1021;
    uint64_t g_1113;
    uint32_t g_1139;
    int32_t g_1147[3];
    uint64_t **g_1191;
    uint64_t ***g_1190;
    uint8_t g_1193[9];
    int16_t g_1230;
    uint8_t g_1305;
    volatile uint16_t g_1369;
    volatile int32_t g_1384[4][10];
    uint32_t g_1399;
    int32_t ** volatile g_1483;
    int32_t g_1499[1][4];
    uint8_t g_1529;
    uint16_t ***g_1533;
    uint16_t *g_1536;
    uint16_t **g_1535;
    uint16_t ***g_1534;
    uint16_t ***g_1537[1];
    int16_t * volatile *g_1538;
    uint8_t g_1551;
    uint64_t *g_1574[4];
    uint64_t **g_1573[5][9];
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
int32_t  func_1(struct S0 * p_1608);
int64_t  func_54(uint16_t  p_55, int32_t * p_56, struct S0 * p_1608);
int8_t  func_86(int32_t * p_87, uint16_t * p_88, uint32_t  p_89, struct S0 * p_1608);
int32_t * func_90(uint16_t * p_91, struct S0 * p_1608);
int32_t * func_109(uint32_t  p_110, uint16_t * p_111, uint16_t * p_112, struct S0 * p_1608);
uint16_t * func_113(uint16_t * p_114, uint16_t  p_115, uint16_t * p_116, struct S0 * p_1608);
uint16_t * func_117(int32_t * p_118, uint32_t  p_119, int32_t * p_120, uint64_t  p_121, int32_t  p_122, struct S0 * p_1608);
int32_t * func_123(int32_t  p_124, struct S0 * p_1608);
int32_t  func_125(uint16_t * p_126, uint16_t * p_127, uint16_t  p_128, uint64_t  p_129, uint16_t * p_130, struct S0 * p_1608);
uint16_t * func_131(int16_t  p_132, uint16_t * p_133, uint64_t  p_134, int16_t  p_135, struct S0 * p_1608);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1608->g_4 p_1608->g_8 p_1608->g_25 p_1608->g_41 p_1608->g_51 p_1608->g_comm_values p_1608->g_13 p_1608->g_3 p_1608->g_71 p_1608->g_75 p_1608->g_1483 p_1608->g_203 p_1608->g_217 p_1608->g_218 p_1608->g_1536 p_1608->g_1190 p_1608->g_434 p_1608->g_1399 p_1608->g_511 p_1608->g_156
 * writes: p_1608->g_4 p_1608->g_8 p_1608->g_25 p_1608->g_41 p_1608->g_51 p_1608->g_13 p_1608->g_71 p_1608->g_75 p_1608->g_427 p_1608->g_218 p_1608->g_1191 p_1608->g_1139
 */
int32_t  func_1(struct S0 * p_1608)
{ /* block id: 4 */
    int16_t l_17 = 0x57D7L;
    int8_t l_23 = (-1L);
    int32_t l_31 = 5L;
    int32_t l_34 = 0x15D7C154L;
    int16_t l_38 = 0L;
    int32_t l_40 = 2L;
    int16_t l_70 = 0x1952L;
    uint32_t *l_1371 = &p_1608->g_1139;
    uint64_t l_1418 = 0x1F17E135496E2679L;
    uint64_t l_1460 = 0xCBD90012BB4E37D2L;
    int16_t l_1461 = 0x5B78L;
    uint64_t l_1514[9];
    uint16_t ***l_1566 = &p_1608->g_1535;
    int16_t l_1576 = 0x4CDFL;
    uint32_t l_1577 = 0x72AC3B40L;
    uint64_t **l_1585 = &p_1608->g_949[3][5];
    int32_t l_1604[6][6][1] = {{{0x094F4174L},{0x094F4174L},{0x094F4174L},{0x094F4174L},{0x094F4174L},{0x094F4174L}},{{0x094F4174L},{0x094F4174L},{0x094F4174L},{0x094F4174L},{0x094F4174L},{0x094F4174L}},{{0x094F4174L},{0x094F4174L},{0x094F4174L},{0x094F4174L},{0x094F4174L},{0x094F4174L}},{{0x094F4174L},{0x094F4174L},{0x094F4174L},{0x094F4174L},{0x094F4174L},{0x094F4174L}},{{0x094F4174L},{0x094F4174L},{0x094F4174L},{0x094F4174L},{0x094F4174L},{0x094F4174L}},{{0x094F4174L},{0x094F4174L},{0x094F4174L},{0x094F4174L},{0x094F4174L},{0x094F4174L}}};
    uint64_t **l_1606 = &p_1608->g_949[5][2];
    uint64_t ***l_1605 = &l_1606;
    uint64_t l_1607 = 1UL;
    int i, j, k;
    for (i = 0; i < 9; i++)
        l_1514[i] = 7UL;
lbl_1580:
    for (p_1608->g_4 = 0; (p_1608->g_4 == 28); p_1608->g_4 = safe_add_func_uint8_t_u_u(p_1608->g_4, 8))
    { /* block id: 7 */
        int8_t l_24 = 0x09L;
        int32_t l_30 = 0x1ACAE7BFL;
        int32_t l_32 = 0x057289C0L;
        int32_t l_35 = (-10L);
        int32_t l_36 = 0x43CBAA6FL;
        uint64_t l_1385 = 0x06245DD15A4F0A0AL;
        int32_t l_1401[6] = {1L,0x122FB3F0L,1L,1L,0x122FB3F0L,1L};
        uint64_t l_1407 = 0xEF55039EFE131D8AL;
        int32_t *l_1411 = &l_36;
        uint32_t ***l_1477 = &p_1608->g_208;
        uint32_t l_1482 = 0x34E99221L;
        int16_t *l_1532 = &p_1608->g_610;
        int16_t **l_1531 = &l_1532;
        int i;
        for (p_1608->g_8 = 24; (p_1608->g_8 != 19); p_1608->g_8 = safe_sub_func_int8_t_s_s(p_1608->g_8, 5))
        { /* block id: 10 */
            int32_t *l_11 = (void*)0;
            int32_t *l_12 = &p_1608->g_13;
            int32_t *l_14 = &p_1608->g_13;
            int32_t *l_15 = &p_1608->g_13;
            int32_t *l_16 = &p_1608->g_13;
            int32_t *l_18 = (void*)0;
            int32_t *l_19 = &p_1608->g_13;
            int32_t *l_20 = &p_1608->g_13;
            int32_t *l_21 = &p_1608->g_13;
            int32_t *l_22[5] = {&p_1608->g_13,&p_1608->g_13,&p_1608->g_13,&p_1608->g_13,&p_1608->g_13};
            uint16_t *l_92 = &p_1608->g_75[1][1];
            uint32_t **l_1391 = (void*)0;
            uint64_t *l_1430 = &l_1385;
            int8_t *l_1480 = &p_1608->g_239;
            uint8_t l_1498 = 8UL;
            uint64_t l_1509 = 18446744073709551615UL;
            int8_t l_1552 = 0x27L;
            int i;
            p_1608->g_25++;
            if (p_1608->g_8)
                goto lbl_1580;
            for (p_1608->g_25 = 21; (p_1608->g_25 < 13); p_1608->g_25--)
            { /* block id: 14 */
                int16_t l_33 = 1L;
                int32_t l_37 = 0L;
                int32_t l_46 = 0x0167BA9AL;
                int32_t l_49 = (-3L);
                int32_t l_50 = 0L;
                p_1608->g_41--;
                for (l_36 = 0; (l_36 == 8); ++l_36)
                { /* block id: 18 */
                    return l_37;
                }
                ++p_1608->g_51;
            }
            for (l_40 = 4; (l_40 >= 0); l_40 -= 1)
            { /* block id: 25 */
                int8_t l_65 = (-2L);
                int32_t l_66 = 1L;
                int32_t l_1380 = 5L;
                int8_t l_1382 = 9L;
                int32_t l_1383[3][10];
                uint32_t *l_1413 = &p_1608->g_181;
                uint32_t **l_1412 = &l_1413;
                int16_t *l_1416 = &l_70;
                int64_t l_1419 = 0x65C31A12831F9980L;
                int64_t *l_1420 = &p_1608->g_1021;
                uint32_t ***l_1435 = &l_1391;
                uint64_t *l_1485 = (void*)0;
                uint64_t l_1512 = 0x5D1103365761F761L;
                uint64_t l_1554 = 0xDBAF796AA5EAD356L;
                int i, j;
                for (i = 0; i < 3; i++)
                {
                    for (j = 0; j < 10; j++)
                        l_1383[i][j] = 0x7917FCACL;
                }
                for (l_36 = 4; (l_36 >= 0); l_36 -= 1)
                { /* block id: 28 */
                    int i;
                    l_66 = (func_54(p_1608->g_comm_values[p_1608->tid], l_22[l_36], p_1608) < (l_30 , l_65));
                    for (l_38 = 3; (l_38 >= 0); l_38 -= 1)
                    { /* block id: 36 */
                        int32_t l_67 = 0x1764C7F4L;
                        int32_t l_68 = 0L;
                        uint16_t *l_74 = &p_1608->g_75[3][0];
                        int i;
                        ++p_1608->g_71;
                        (*l_14) = (func_54(((*l_74) = 0xAEFAL), &p_1608->g_4, p_1608) >= p_1608->g_4);
                    }
                    for (l_17 = 0; (l_17 <= 1); l_17 += 1)
                    { /* block id: 43 */
                        int i, j;
                        return p_1608->g_75[(l_17 + 2)][l_17];
                    }
                }
                for (l_32 = 0; (l_32 <= 4); l_32 += 1)
                { /* block id: 49 */
                    uint32_t **l_1372 = &p_1608->g_511;
                    uint32_t **l_1373 = &l_1371;
                    uint8_t *l_1378 = &p_1608->g_563;
                    int32_t l_1381 = 0x5C625B54L;
                    int32_t l_1403 = 0L;
                    int32_t l_1404 = 0x7188681BL;
                    int32_t l_1406 = (-1L);
                    int i;
                    (1 + 1);
                }
            }
        }
        for (p_1608->g_41 = 0; p_1608->g_41 < 5; p_1608->g_41 += 1)
        {
            p_1608->g_427[p_1608->g_41] = 247UL;
        }
        l_1411 = (*p_1608->g_1483);
        if (l_17)
            continue;
    }
    l_40 ^= (((*l_1371) = (l_34 || ((l_31 , l_1576) && ((l_1514[1] , (((((l_31 |= (&p_1608->g_1573[4][4] == ((safe_div_func_uint8_t_u_u(((safe_add_func_uint32_t_u_u((((l_1604[1][1][0] = (l_1585 != ((*l_1605) = ((*p_1608->g_1190) = ((safe_sub_func_int8_t_s_s((safe_sub_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((safe_add_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_s((safe_add_func_int8_t_s_s((safe_mul_func_int8_t_s_s((safe_add_func_uint8_t_u_u((++(*p_1608->g_217)), 1L)), l_1418)), l_1604[1][1][0])), 2)), l_38)), l_1460)), (*p_1608->g_1536))), 254UL)) , l_1585))))) , p_1608->g_434[1][0]) , 0xB272BC4CL), FAKE_DIVERGE(p_1608->local_0_offset, get_local_id(0), 10))) != p_1608->g_1399), 247UL)) , (void*)0))) != l_1514[2]) <= l_1514[3]) & l_1607) != l_1460)) | l_1418)))) || (*p_1608->g_511));
    return l_1514[6];
}


/* ------------------------------------------ */
/* 
 * reads : p_1608->g_8 p_1608->g_13 p_1608->g_3
 * writes: p_1608->g_13
 */
int64_t  func_54(uint16_t  p_55, int32_t * p_56, struct S0 * p_1608)
{ /* block id: 29 */
    int8_t l_57 = 0x52L;
    int32_t *l_58 = &p_1608->g_13;
    int32_t *l_59 = &p_1608->g_13;
    int32_t *l_60[4] = {&p_1608->g_13,&p_1608->g_13,&p_1608->g_13,&p_1608->g_13};
    uint32_t l_62[5][8] = {{4294967286UL,0x5669DD8BL,3UL,0x14FAB084L,3UL,0x5669DD8BL,4294967286UL,4294967291UL},{4294967286UL,0x5669DD8BL,3UL,0x14FAB084L,3UL,0x5669DD8BL,4294967286UL,4294967291UL},{4294967286UL,0x5669DD8BL,3UL,0x14FAB084L,3UL,0x5669DD8BL,4294967286UL,4294967291UL},{4294967286UL,0x5669DD8BL,3UL,0x14FAB084L,3UL,0x5669DD8BL,4294967286UL,4294967291UL},{4294967286UL,0x5669DD8BL,3UL,0x14FAB084L,3UL,0x5669DD8BL,4294967286UL,4294967291UL}};
    int i, j;
    (*l_58) &= (l_57 & (0xF27260E960871E8EL != p_1608->g_8));
    --l_62[2][5];
    return p_1608->g_3;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t  func_86(int32_t * p_87, uint16_t * p_88, uint32_t  p_89, struct S0 * p_1608)
{ /* block id: 563 */
    int8_t l_1379 = 1L;
    return l_1379;
}


/* ------------------------------------------ */
/* 
 * reads : p_1608->g_104 p_1608->g_103 p_1608->g_13 p_1608->g_75 p_1608->g_1190 p_1608->g_217 p_1608->g_218 p_1608->g_comm_values p_1608->g_476 p_1608->g_208 p_1608->g_209 p_1608->g_156 p_1608->g_69 p_1608->g_439 p_1608->g_468 p_1608->g_1369 p_1608->g_1139
 * writes: p_1608->g_104 p_1608->g_103 p_1608->g_69 p_1608->g_75 p_1608->g_1191
 */
int32_t * func_90(uint16_t * p_91, struct S0 * p_1608)
{ /* block id: 50 */
    int32_t *l_93 = &p_1608->g_13;
    int32_t *l_94 = &p_1608->g_69;
    int32_t *l_95 = &p_1608->g_13;
    int32_t *l_96 = &p_1608->g_13;
    int32_t *l_97 = (void*)0;
    int32_t *l_98 = &p_1608->g_69;
    int32_t *l_99[1];
    int32_t l_100 = 0x68027EF3L;
    int8_t l_101 = 0x53L;
    int32_t l_102 = 0x18FE19D4L;
    uint16_t *l_334[9][7] = {{&p_1608->g_75[1][1],&p_1608->g_75[2][1],&p_1608->g_75[2][1],&p_1608->g_75[1][1],&p_1608->g_75[3][0],&p_1608->g_75[3][0],&p_1608->g_75[1][1]},{&p_1608->g_75[1][1],&p_1608->g_75[2][1],&p_1608->g_75[2][1],&p_1608->g_75[1][1],&p_1608->g_75[3][0],&p_1608->g_75[3][0],&p_1608->g_75[1][1]},{&p_1608->g_75[1][1],&p_1608->g_75[2][1],&p_1608->g_75[2][1],&p_1608->g_75[1][1],&p_1608->g_75[3][0],&p_1608->g_75[3][0],&p_1608->g_75[1][1]},{&p_1608->g_75[1][1],&p_1608->g_75[2][1],&p_1608->g_75[2][1],&p_1608->g_75[1][1],&p_1608->g_75[3][0],&p_1608->g_75[3][0],&p_1608->g_75[1][1]},{&p_1608->g_75[1][1],&p_1608->g_75[2][1],&p_1608->g_75[2][1],&p_1608->g_75[1][1],&p_1608->g_75[3][0],&p_1608->g_75[3][0],&p_1608->g_75[1][1]},{&p_1608->g_75[1][1],&p_1608->g_75[2][1],&p_1608->g_75[2][1],&p_1608->g_75[1][1],&p_1608->g_75[3][0],&p_1608->g_75[3][0],&p_1608->g_75[1][1]},{&p_1608->g_75[1][1],&p_1608->g_75[2][1],&p_1608->g_75[2][1],&p_1608->g_75[1][1],&p_1608->g_75[3][0],&p_1608->g_75[3][0],&p_1608->g_75[1][1]},{&p_1608->g_75[1][1],&p_1608->g_75[2][1],&p_1608->g_75[2][1],&p_1608->g_75[1][1],&p_1608->g_75[3][0],&p_1608->g_75[3][0],&p_1608->g_75[1][1]},{&p_1608->g_75[1][1],&p_1608->g_75[2][1],&p_1608->g_75[2][1],&p_1608->g_75[1][1],&p_1608->g_75[3][0],&p_1608->g_75[3][0],&p_1608->g_75[1][1]}};
    uint16_t l_398 = 0xFCFFL;
    int16_t l_1358 = 0x5D8FL;
    uint16_t **l_1364 = &l_334[7][6];
    uint16_t ***l_1363 = &l_1364;
    uint64_t **l_1366 = (void*)0;
    uint64_t **l_1367[10] = {&p_1608->g_949[5][2],&p_1608->g_949[5][2],&p_1608->g_949[5][2],&p_1608->g_949[5][2],&p_1608->g_949[5][2],&p_1608->g_949[5][2],&p_1608->g_949[5][2],&p_1608->g_949[5][2],&p_1608->g_949[5][2],&p_1608->g_949[5][2]};
    int32_t *l_1368 = &l_102;
    int32_t l_1370 = 8L;
    int i, j;
    for (i = 0; i < 1; i++)
        l_99[i] = &p_1608->g_69;
    p_1608->g_104--;
    for (p_1608->g_103 = 5; (p_1608->g_103 > (-26)); p_1608->g_103 = safe_sub_func_int64_t_s_s(p_1608->g_103, 9))
    { /* block id: 54 */
        int32_t *l_138 = &p_1608->g_8;
        uint16_t *l_139 = (void*)0;
        uint64_t *l_140 = (void*)0;
        uint64_t *l_141 = &p_1608->g_104;
        int32_t **l_1345 = &l_94;
        (1 + 1);
    }
    l_1370 ^= (safe_add_func_int8_t_s_s((safe_div_func_uint64_t_u_u(0UL, ((((*l_1368) = (((((((&p_91 == &p_91) == (((*l_94) = (*l_95)) <= ((safe_sub_func_uint16_t_u_u((safe_sub_func_uint64_t_u_u((safe_div_func_int32_t_s_s((safe_lshift_func_uint16_t_u_s((++(*p_91)), ((safe_mul_func_uint8_t_u_u((((!((((l_1363 == ((((*l_95) | (safe_unary_minus_func_int8_t_s((((*p_1608->g_1190) = l_1366) != l_1367[7])))) ^ (*l_96)) , &p_1608->g_966[2][1])) ^ (*l_95)) < (-1L)) & (*l_93))) > (*l_96)) , (*p_1608->g_217)), (*l_96))) ^ p_1608->g_comm_values[p_1608->tid]))), (***p_1608->g_476))), FAKE_DIVERGE(p_1608->group_1_offset, get_group_id(1), 10))), p_1608->g_218)) & (-7L)))) && (*l_98)) ^ 0x3E1CL) && 0L) || p_1608->g_439) , p_1608->g_468[5])) , (*p_91)) , p_1608->g_1369))), (*p_1608->g_217)));
    return &p_1608->g_922;
}


/* ------------------------------------------ */
/* 
 * reads : p_1608->g_75
 * writes: p_1608->g_13
 */
int32_t * func_109(uint32_t  p_110, uint16_t * p_111, uint16_t * p_112, struct S0 * p_1608)
{ /* block id: 545 */
    int16_t l_1338 = 0x50A7L;
    uint16_t *l_1340 = &p_1608->g_75[4][1];
    uint16_t **l_1339 = &l_1340;
    int32_t l_1341 = 1L;
    int32_t *l_1344 = &p_1608->g_13;
    (*l_1344) = (((+(((((FAKE_DIVERGE(p_1608->local_2_offset, get_local_id(2), 10) == ((3UL || ((l_1338 ^= p_110) , (l_1339 == (void*)0))) < l_1341)) , p_110) && p_110) , (((safe_add_func_uint16_t_u_u(((*p_111) <= (-4L)), l_1338)) ^ 0x7389CF1EL) < (*p_112))) ^ (-1L))) >= l_1341) , 1L);
    return &p_1608->g_839[5];
}


/* ------------------------------------------ */
/* 
 * reads : p_1608->g_217 p_1608->g_218 p_1608->g_69 p_1608->g_563 p_1608->g_comm_values p_1608->g_25 p_1608->g_391 p_1608->g_75 p_1608->g_104 p_1608->g_239 p_1608->g_209 p_1608->g_13 p_1608->g_103 p_1608->g_237 p_1608->g_181
 * writes: p_1608->g_563 p_1608->g_610 p_1608->g_239 p_1608->g_391 p_1608->g_203 p_1608->g_69 p_1608->g_13 p_1608->g_104 p_1608->g_25 p_1608->g_218
 */
uint16_t * func_113(uint16_t * p_114, uint16_t  p_115, uint16_t * p_116, struct S0 * p_1608)
{ /* block id: 216 */
    uint32_t l_588 = 1UL;
    int32_t l_601 = 0L;
    int32_t **l_638 = &p_1608->g_203[3][0];
    int16_t l_643 = (-9L);
    int32_t l_645 = 8L;
    uint32_t l_659 = 0x936DC8B9L;
    int32_t l_668 = 5L;
    int32_t l_669[2][7] = {{0x6D1250FCL,0x6D1250FCL,0x6D1250FCL,0x6D1250FCL,0x6D1250FCL,0x6D1250FCL,0x6D1250FCL},{0x6D1250FCL,0x6D1250FCL,0x6D1250FCL,0x6D1250FCL,0x6D1250FCL,0x6D1250FCL,0x6D1250FCL}};
    int32_t l_670 = 0L;
    uint16_t *l_675[2];
    int32_t *l_676 = (void*)0;
    int32_t *l_677[5][8][6] = {{{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13}},{{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13}},{{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13}},{{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13}},{{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13},{&p_1608->g_8,&p_1608->g_8,(void*)0,(void*)0,&l_669[1][5],&p_1608->g_13}}};
    uint64_t l_679[6];
    uint32_t l_684 = 0xCDDEE536L;
    uint32_t ***l_709[4];
    int32_t l_710 = 0L;
    int64_t *l_711[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t l_714 = 1L;
    int16_t *l_715[4];
    uint32_t l_716[4] = {4294967295UL,4294967295UL,4294967295UL,4294967295UL};
    uint32_t l_717[4];
    int64_t l_718 = 0x1AA15AAF805167F6L;
    uint16_t l_719 = 0xDD92L;
    uint8_t *l_720 = &p_1608->g_563;
    int32_t l_721 = 0x6969C85EL;
    uint64_t *l_739 = &l_679[0];
    int32_t l_813 = 0x09EC8742L;
    uint8_t l_838 = 0xE6L;
    uint16_t l_869[10][4] = {{0x7150L,0x7150L,0x7150L,0x7150L},{0x7150L,0x7150L,0x7150L,0x7150L},{0x7150L,0x7150L,0x7150L,0x7150L},{0x7150L,0x7150L,0x7150L,0x7150L},{0x7150L,0x7150L,0x7150L,0x7150L},{0x7150L,0x7150L,0x7150L,0x7150L},{0x7150L,0x7150L,0x7150L,0x7150L},{0x7150L,0x7150L,0x7150L,0x7150L},{0x7150L,0x7150L,0x7150L,0x7150L},{0x7150L,0x7150L,0x7150L,0x7150L}};
    int32_t *l_872[2][4][4] = {{{&p_1608->g_839[5],&l_645,(void*)0,(void*)0},{&p_1608->g_839[5],&l_645,(void*)0,(void*)0},{&p_1608->g_839[5],&l_645,(void*)0,(void*)0},{&p_1608->g_839[5],&l_645,(void*)0,(void*)0}},{{&p_1608->g_839[5],&l_645,(void*)0,(void*)0},{&p_1608->g_839[5],&l_645,(void*)0,(void*)0},{&p_1608->g_839[5],&l_645,(void*)0,(void*)0},{&p_1608->g_839[5],&l_645,(void*)0,(void*)0}}};
    int64_t l_885 = 0L;
    uint8_t l_903 = 1UL;
    uint32_t l_993 = 1UL;
    uint8_t l_1020 = 0UL;
    int8_t *l_1051 = &p_1608->g_239;
    int8_t **l_1050 = &l_1051;
    uint64_t l_1095 = 6UL;
    uint16_t l_1116 = 0x2E82L;
    int32_t l_1141 = 1L;
    uint64_t ***l_1185 = (void*)0;
    int16_t l_1212 = (-1L);
    int32_t l_1222[3][2][8] = {{{(-1L),1L,1L,(-1L),0x4272E001L,0x2CC5B12FL,0x4FF7F532L,0x65CA9E06L},{(-1L),1L,1L,(-1L),0x4272E001L,0x2CC5B12FL,0x4FF7F532L,0x65CA9E06L}},{{(-1L),1L,1L,(-1L),0x4272E001L,0x2CC5B12FL,0x4FF7F532L,0x65CA9E06L},{(-1L),1L,1L,(-1L),0x4272E001L,0x2CC5B12FL,0x4FF7F532L,0x65CA9E06L}},{{(-1L),1L,1L,(-1L),0x4272E001L,0x2CC5B12FL,0x4FF7F532L,0x65CA9E06L},{(-1L),1L,1L,(-1L),0x4272E001L,0x2CC5B12FL,0x4FF7F532L,0x65CA9E06L}}};
    int64_t l_1291 = 0L;
    int32_t *l_1292 = &l_721;
    int32_t l_1337 = 0x076128C1L;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_675[i] = &p_1608->g_75[3][0];
    for (i = 0; i < 6; i++)
        l_679[i] = 0x1C5B17CD8809E680L;
    for (i = 0; i < 4; i++)
        l_709[i] = &p_1608->g_208;
    for (i = 0; i < 4; i++)
        l_715[i] = &p_1608->g_610;
    for (i = 0; i < 4; i++)
        l_717[i] = 0x8914F3C0L;
    if ((safe_mod_func_uint8_t_u_u(((safe_div_func_int32_t_s_s(l_588, ((safe_sub_func_int16_t_s_s(((((safe_rshift_func_int16_t_s_s(6L, (((safe_div_func_uint8_t_u_u((*p_1608->g_217), FAKE_DIVERGE(p_1608->global_2_offset, get_global_id(2), 10))) >= ((0x46L || (safe_add_func_uint64_t_u_u((safe_add_func_uint16_t_u_u((p_115 || l_588), p_1608->g_69)), (safe_rshift_func_int8_t_s_s(p_115, (l_601 = (-1L))))))) && GROUP_DIVERGE(1, 1))) >= p_115))) & p_1608->g_563) == (-1L)) | 0x8EE156B0L), 0x0A63L)) , l_601))) && 1UL), p_1608->g_comm_values[p_1608->tid])))
    { /* block id: 218 */
        uint8_t *l_608 = (void*)0;
        int16_t *l_609 = &p_1608->g_610;
        int32_t l_615 = 0x3E9434CBL;
        int8_t *l_622 = &p_1608->g_239;
        int32_t l_623 = 0x38C580D7L;
        int32_t *l_626 = &p_1608->g_69;
        int32_t *l_667[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
        int64_t l_671 = 1L;
        uint16_t l_672[1];
        int i;
        for (i = 0; i < 1; i++)
            l_672[i] = 0x13AAL;
        if ((((safe_div_func_int8_t_s_s((~(safe_div_func_int32_t_s_s((safe_add_func_uint8_t_u_u((p_1608->g_563 ^= (*p_1608->g_217)), (p_1608->g_391 |= ((+(p_1608->g_25 <= ((*l_622) = ((((((*l_609) = l_588) , (0x2CL & 0x4AL)) ^ (l_601 = (safe_add_func_uint32_t_u_u((l_615 = ((safe_lshift_func_int8_t_s_s(l_615, ((safe_div_func_uint16_t_u_u((((safe_lshift_func_uint16_t_u_u((0x74L | (safe_mod_func_int8_t_s_s(((~((!0x4E31L) ^ (4294967289UL ^ l_601))) == p_115), p_1608->g_comm_values[p_1608->tid]))), 12)) , p_115) != l_615), 0x2AEAL)) > 8L))) > (-2L))), p_115)))) , 0UL) , l_588)))) || 0x2EF15C2DL)))), l_623))), 1L)) , 0UL) & 0xC411L))
        { /* block id: 225 */
            int32_t *l_624 = &l_601;
            int32_t **l_625[7];
            uint32_t *l_644[4];
            int i;
            for (i = 0; i < 7; i++)
                l_625[i] = &p_1608->g_203[1][0];
            for (i = 0; i < 4; i++)
                l_644[i] = &p_1608->g_156;
            p_1608->g_203[3][0] = l_624;
            if (p_115)
                goto lbl_627;
lbl_627:
            l_626 = &l_601;
            l_623 = (safe_div_func_uint32_t_u_u((((safe_lshift_func_uint16_t_u_s(p_1608->g_69, 15)) , (safe_mul_func_int16_t_s_s((safe_add_func_uint64_t_u_u((safe_lshift_func_int16_t_s_u(((&l_626 != l_638) || 0x3BEAL), 14)), ((((l_645 |= ((((*l_626) = ((safe_add_func_int16_t_s_s((0xC678BB1CL > (((p_1608->g_75[4][0] , 0x27L) != (l_601 <= ((safe_sub_func_uint8_t_u_u((l_643 , 246UL), (*p_1608->g_217))) == p_115))) == p_1608->g_104)), (-1L))) | 4L)) > p_115) , p_115)) != p_115) != p_115) <= p_115))), (*p_114)))) , p_115), 0x1C164704L));
        }
        else
        { /* block id: 232 */
            uint64_t l_663 = 0x27C4F5C918D87F5AL;
            uint16_t *l_666 = &p_1608->g_75[3][0];
            (*l_638) = func_123((safe_mod_func_int32_t_s_s(p_115, 3L)), p_1608);
            for (l_601 = 0; (l_601 <= 3); l_601 += 1)
            { /* block id: 236 */
                int8_t l_654 = 0x58L;
                int32_t l_661 = 1L;
                (*l_638) = func_123((safe_add_func_uint32_t_u_u((p_1608->g_75[3][0] | (((safe_mul_func_uint16_t_u_u(((p_1608->g_69 | p_1608->g_218) && (safe_sub_func_uint8_t_u_u((p_115 , ((*p_1608->g_217) = l_654)), ((((p_1608->g_237 >= (((((0x26L || (safe_mul_func_int16_t_s_s((((((*l_626) , (safe_rshift_func_int8_t_s_u(((l_654 & (-1L)) <= l_659), 2))) ^ l_654) <= (*l_626)) == p_1608->g_69), 0x44B8L))) <= GROUP_DIVERGE(0, 1)) == 1UL) , p_1608->g_69) == p_115)) != p_115) < p_115) != p_1608->g_comm_values[p_1608->tid])))), p_1608->g_563)) , (void*)0) == &p_1608->g_610)), p_115)), p_1608);
                for (p_1608->g_13 = 0; (p_1608->g_13 <= 3); p_1608->g_13 += 1)
                { /* block id: 241 */
                    (*l_638) = &p_1608->g_8;
                    for (p_1608->g_391 = 3; (p_1608->g_391 >= 0); p_1608->g_391 -= 1)
                    { /* block id: 245 */
                        int32_t *l_660 = &l_615;
                        int32_t *l_662[8] = {&l_623,&l_623,&l_623,&l_623,&l_623,&l_623,&l_623,&l_623};
                        int i;
                        l_663--;
                    }
                    for (p_1608->g_563 = 0; (p_1608->g_563 <= 3); p_1608->g_563 += 1)
                    { /* block id: 250 */
                        return l_666;
                    }
                }
            }
        }
        l_672[0]++;
    }
    else
    { /* block id: 257 */
        return l_675[1];
    }
    --l_679[3];
    return &p_1608->g_75[3][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1608->g_410 p_1608->g_8 p_1608->g_217 p_1608->g_218 p_1608->g_156 p_1608->g_391 p_1608->g_4 p_1608->g_13 p_1608->g_237 p_1608->g_25 p_1608->l_comm_values p_1608->g_208 p_1608->g_69 p_1608->g_239 p_1608->g_75 p_1608->g_181
 * writes: p_1608->g_476 p_1608->g_391 p_1608->g_218 p_1608->g_203 p_1608->g_209 p_1608->g_511 p_1608->g_13 p_1608->g_25 p_1608->g_69 p_1608->g_563
 */
uint16_t * func_117(int32_t * p_118, uint32_t  p_119, int32_t * p_120, uint64_t  p_121, int32_t  p_122, struct S0 * p_1608)
{ /* block id: 173 */
    int32_t l_399 = 0x33F5071EL;
    int8_t *l_477 = (void*)0;
    int32_t l_478 = (-2L);
    uint16_t *l_479 = (void*)0;
    int64_t l_480 = 0x53406E8FD16394A2L;
    uint32_t *l_508[4];
    int64_t l_575[10] = {(-10L),0L,(-10L),(-10L),0L,(-10L),(-10L),0L,(-10L),(-10L)};
    int32_t l_579 = 0x686415E5L;
    int32_t **l_583 = &p_1608->g_203[0][0];
    int i;
    for (i = 0; i < 4; i++)
        l_508[i] = (void*)0;
    if (((l_399 , (247UL ^ (((safe_rshift_func_uint8_t_u_u(((safe_mul_func_int8_t_s_s((safe_mul_func_int64_t_s_s(l_399, (((0x52EBL & (((safe_rshift_func_int8_t_s_s((p_1608->g_391 = (l_478 = (GROUP_DIVERGE(2, 1) | (((void*)0 != p_1608->g_410) , (((safe_mul_func_int16_t_s_s((safe_unary_minus_func_int8_t_s(0x7EL)), (((p_1608->g_476 = (void*)0) != &p_1608->g_208) <= 1L))) > 0L) >= p_122))))), 0)) && p_122) != 0x1C8407F379FCBA48L)) , l_479) == l_479))), l_480)) , 254UL), 0)) , p_122) < l_480))) < 0x662316A3CB14CF6BL))
    { /* block id: 177 */
        int32_t *l_483 = &l_478;
        int32_t **l_503 = &p_1608->g_203[2][0];
        uint8_t l_519 = 0x4BL;
        for (p_122 = (-2); (p_122 == (-13)); p_122 = safe_sub_func_uint64_t_u_u(p_122, 3))
        { /* block id: 180 */
            int8_t l_484 = 0x58L;
            l_483 = (p_120 = (void*)0);
            l_399 ^= ((((l_484 || ((safe_add_func_uint32_t_u_u(l_484, (p_119 = ((FAKE_DIVERGE(p_1608->global_0_offset, get_global_id(0), 10) , (safe_sub_func_uint8_t_u_u((safe_mod_func_int16_t_s_s((safe_div_func_uint32_t_u_u((((((((void*)0 != &p_1608->g_103) == (GROUP_DIVERGE(0, 1) || p_1608->g_8)) < ((safe_rshift_func_int8_t_s_u((((safe_sub_func_int32_t_s_s((!((safe_sub_func_uint16_t_u_u((((!(((~(safe_mul_func_int8_t_s_s((safe_add_func_int8_t_s_s(p_1608->g_8, ((*p_1608->g_217) = (*p_1608->g_217)))), p_1608->g_156))) == ((p_119 && 0x4C94E28BL) > p_1608->g_391)) , (*p_1608->g_217))) && (*p_1608->g_217)) | p_121), p_1608->g_4)) & l_484)), l_478)) , p_119) == p_122), p_1608->g_13)) <= p_1608->g_237)) , p_1608->g_156) & p_1608->g_25) >= p_1608->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1608->tid, 5))]), 0x796F58B7L)), p_1608->g_4)), 5UL))) | p_1608->g_8)))) , l_484)) , 2L) & 4L) | 254UL);
        }
        (*l_503) = (void*)0;
        if ((p_119 >= (((1L != (safe_mul_func_uint8_t_u_u((p_121 | (p_1608->g_13 != (safe_lshift_func_uint8_t_u_s(p_122, 1)))), FAKE_DIVERGE(p_1608->group_1_offset, get_group_id(1), 10)))) <= (((*p_1608->g_208) = l_508[3]) != (p_1608->g_511 = ((safe_sub_func_uint32_t_u_u(p_121, ((void*)0 != &p_121))) , l_508[3])))) == p_1608->g_69)))
        { /* block id: 190 */
            int32_t *l_512 = &p_1608->g_13;
            (*l_512) = (*p_118);
        }
        else
        { /* block id: 192 */
            uint16_t l_513[5];
            int8_t **l_515[4];
            int8_t ***l_514 = &l_515[2];
            int32_t *l_516 = &p_1608->g_13;
            int32_t *l_517 = &p_1608->g_69;
            int32_t *l_518[1][2];
            int i, j;
            for (i = 0; i < 5; i++)
                l_513[i] = 4UL;
            for (i = 0; i < 4; i++)
                l_515[i] = (void*)0;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 2; j++)
                    l_518[i][j] = (void*)0;
            }
            l_513[2] = (*p_118);
            (*l_514) = &l_477;
            --l_519;
            (*l_517) = ((p_1608->g_25 = GROUP_DIVERGE(2, 1)) , l_478);
        }
    }
    else
    { /* block id: 199 */
        uint8_t *l_536 = &p_1608->g_218;
        int32_t l_560[5] = {(-1L),(-1L),(-1L),(-1L),(-1L)};
        int32_t *l_576 = &l_560[4];
        int32_t *l_577 = &l_399;
        int32_t *l_578[10][3][3] = {{{(void*)0,&l_560[4],&p_1608->g_4},{(void*)0,&l_560[4],&p_1608->g_4},{(void*)0,&l_560[4],&p_1608->g_4}},{{(void*)0,&l_560[4],&p_1608->g_4},{(void*)0,&l_560[4],&p_1608->g_4},{(void*)0,&l_560[4],&p_1608->g_4}},{{(void*)0,&l_560[4],&p_1608->g_4},{(void*)0,&l_560[4],&p_1608->g_4},{(void*)0,&l_560[4],&p_1608->g_4}},{{(void*)0,&l_560[4],&p_1608->g_4},{(void*)0,&l_560[4],&p_1608->g_4},{(void*)0,&l_560[4],&p_1608->g_4}},{{(void*)0,&l_560[4],&p_1608->g_4},{(void*)0,&l_560[4],&p_1608->g_4},{(void*)0,&l_560[4],&p_1608->g_4}},{{(void*)0,&l_560[4],&p_1608->g_4},{(void*)0,&l_560[4],&p_1608->g_4},{(void*)0,&l_560[4],&p_1608->g_4}},{{(void*)0,&l_560[4],&p_1608->g_4},{(void*)0,&l_560[4],&p_1608->g_4},{(void*)0,&l_560[4],&p_1608->g_4}},{{(void*)0,&l_560[4],&p_1608->g_4},{(void*)0,&l_560[4],&p_1608->g_4},{(void*)0,&l_560[4],&p_1608->g_4}},{{(void*)0,&l_560[4],&p_1608->g_4},{(void*)0,&l_560[4],&p_1608->g_4},{(void*)0,&l_560[4],&p_1608->g_4}},{{(void*)0,&l_560[4],&p_1608->g_4},{(void*)0,&l_560[4],&p_1608->g_4},{(void*)0,&l_560[4],&p_1608->g_4}}};
        uint32_t l_580 = 0xBF506B4EL;
        int i, j, k;
        for (p_1608->g_218 = 0; (p_1608->g_218 > 7); p_1608->g_218++)
        { /* block id: 202 */
            uint8_t *l_537 = &p_1608->g_218;
            uint8_t *l_538[10][9][2] = {{{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0}},{{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0}},{{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0}},{{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0}},{{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0}},{{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0}},{{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0}},{{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0}},{{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0}},{{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0},{&p_1608->g_218,(void*)0}}};
            int32_t l_559 = 0x219D5F30L;
            int32_t l_561 = (-1L);
            uint8_t *l_562 = &p_1608->g_563;
            int8_t **l_572[2][6][8] = {{{&l_477,(void*)0,&l_477,&l_477,&l_477,&l_477,&l_477,&l_477},{&l_477,(void*)0,&l_477,&l_477,&l_477,&l_477,&l_477,&l_477},{&l_477,(void*)0,&l_477,&l_477,&l_477,&l_477,&l_477,&l_477},{&l_477,(void*)0,&l_477,&l_477,&l_477,&l_477,&l_477,&l_477},{&l_477,(void*)0,&l_477,&l_477,&l_477,&l_477,&l_477,&l_477},{&l_477,(void*)0,&l_477,&l_477,&l_477,&l_477,&l_477,&l_477}},{{&l_477,(void*)0,&l_477,&l_477,&l_477,&l_477,&l_477,&l_477},{&l_477,(void*)0,&l_477,&l_477,&l_477,&l_477,&l_477,&l_477},{&l_477,(void*)0,&l_477,&l_477,&l_477,&l_477,&l_477,&l_477},{&l_477,(void*)0,&l_477,&l_477,&l_477,&l_477,&l_477,&l_477},{&l_477,(void*)0,&l_477,&l_477,&l_477,&l_477,&l_477,&l_477},{&l_477,(void*)0,&l_477,&l_477,&l_477,&l_477,&l_477,&l_477}}};
            int i, j, k;
            (*p_120) = (safe_mod_func_int32_t_s_s(((safe_sub_func_uint32_t_u_u(l_399, ((safe_sub_func_uint8_t_u_u((p_122 && (+0x9F30E17634B35C6BL)), ((*l_562) = (safe_add_func_int32_t_s_s((*p_120), ((((((safe_mul_func_int16_t_s_s((safe_sub_func_int64_t_s_s((l_536 == (l_538[9][6][1] = l_537)), (((safe_div_func_int16_t_s_s((((safe_add_func_uint8_t_u_u((9L & ((safe_mul_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s(((((safe_sub_func_int8_t_s_s((safe_rshift_func_int8_t_s_u((safe_sub_func_int16_t_s_s(0x2AC0L, GROUP_DIVERGE(2, 1))), 6)), (((l_559 = ((safe_add_func_int8_t_s_s((((safe_rshift_func_uint8_t_u_s((safe_mod_func_int8_t_s_s(p_1608->g_239, l_559)), l_399)) == (-6L)) < p_122), 0L)) ^ 18446744073709551615UL)) , (void*)0) != (void*)0))) > p_122) | l_560[0]) && 2L), 7)), 0x6380L)) != l_478)), FAKE_DIVERGE(p_1608->local_0_offset, get_local_id(0), 10))) | p_1608->g_239) >= l_399), p_1608->g_75[3][1])) & l_561) != l_560[3]))), 0xC3FCL)) , p_1608->g_181) < p_119) , p_119) || l_399) > 65533UL)))))) == p_122))) , (*p_118)), 0x2B475DDAL));
            (*p_120) = ((p_1608->g_237 >= (((((safe_mul_func_uint8_t_u_u(0xFCL, (safe_lshift_func_uint8_t_u_s((*p_1608->g_217), ((safe_mod_func_uint32_t_u_u(GROUP_DIVERGE(0, 1), (p_1608->g_75[0][1] , (l_560[0] = ((*p_118) ^ ((safe_lshift_func_uint16_t_u_u((((l_477 = l_477) != (void*)0) , (safe_add_func_int8_t_s_s((l_478 &= ((p_121 && (-1L)) | p_121)), 0x24L))), p_1608->g_75[2][1])) > l_575[2])))))) && p_119))))) & p_1608->g_75[3][0]) >= p_119) >= (*p_1608->g_217)) >= 0x35L)) < (*p_118));
        }
        l_580++;
    }
    (*l_583) = &p_1608->g_13;
    return &p_1608->g_75[2][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_1608->g_69 p_1608->g_239 p_1608->g_209 p_1608->g_75 p_1608->g_13 p_1608->g_25 p_1608->g_comm_values p_1608->g_103 p_1608->g_237 p_1608->g_181
 * writes: p_1608->g_69 p_1608->g_239 p_1608->g_13 p_1608->g_104 p_1608->g_25 p_1608->g_218 p_1608->g_203
 */
int32_t * func_123(int32_t  p_124, struct S0 * p_1608)
{ /* block id: 138 */
    uint32_t l_336 = 4294967294UL;
    int32_t *l_337 = (void*)0;
    int32_t *l_338 = &p_1608->g_69;
    uint64_t *l_353[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint64_t **l_352 = &l_353[0];
    uint16_t *l_369[7] = {&p_1608->g_75[2][0],&p_1608->g_75[3][0],&p_1608->g_75[2][0],&p_1608->g_75[2][0],&p_1608->g_75[3][0],&p_1608->g_75[2][0],&p_1608->g_75[2][0]};
    int32_t l_382 = 0x05A9D1DCL;
    int32_t l_387 = 1L;
    int32_t l_388[2][7] = {{0x0074419AL,1L,0x1238BF04L,1L,0x0074419AL,0x0074419AL,1L},{0x0074419AL,1L,0x1238BF04L,1L,0x0074419AL,0x0074419AL,1L}};
    int i, j;
    (*l_338) = ((-1L) >= l_336);
    for (p_1608->g_69 = 5; (p_1608->g_69 >= 0); p_1608->g_69 -= 1)
    { /* block id: 142 */
        uint64_t **l_354 = &l_353[7];
        int32_t l_357[9][5] = {{4L,0L,0x4CB70635L,(-1L),0L},{4L,0L,0x4CB70635L,(-1L),0L},{4L,0L,0x4CB70635L,(-1L),0L},{4L,0L,0x4CB70635L,(-1L),0L},{4L,0L,0x4CB70635L,(-1L),0L},{4L,0L,0x4CB70635L,(-1L),0L},{4L,0L,0x4CB70635L,(-1L),0L},{4L,0L,0x4CB70635L,(-1L),0L},{4L,0L,0x4CB70635L,(-1L),0L}};
        int32_t l_358[2][6] = {{(-1L),(-3L),(-1L),(-1L),(-3L),(-1L)},{(-1L),(-3L),(-1L),(-1L),(-3L),(-1L)}};
        uint8_t l_367 = 0x41L;
        int8_t l_368 = 0x05L;
        int32_t l_370 = 0x5CD12C4DL;
        int32_t *l_371 = &l_357[8][1];
        uint8_t l_380[5][8][5] = {{{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL}},{{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL}},{{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL}},{{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL}},{{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL},{0x87L,1UL,9UL,0xB7L,1UL}}};
        int16_t l_389 = (-1L);
        int8_t l_390 = (-1L);
        int i, j, k;
        for (p_1608->g_239 = 5; (p_1608->g_239 >= 0); p_1608->g_239 -= 1)
        { /* block id: 145 */
            uint32_t l_347 = 0xF6C563D7L;
            int i;
            if (p_124)
                break;
            l_358[0][3] ^= (((((safe_lshift_func_uint8_t_u_u(((4L <= ((-1L) | 0x3A0C3D28L)) , (safe_rshift_func_int8_t_s_s((safe_sub_func_uint16_t_u_u(((safe_lshift_func_uint16_t_u_s((l_347 & (safe_mul_func_uint16_t_u_u(p_1608->g_239, ((safe_div_func_uint64_t_u_u((((l_354 = l_352) == &l_353[0]) > 18446744073709551615UL), (safe_add_func_int32_t_s_s(l_357[8][1], p_124)))) , 0x9A05L)))), p_124)) & 0x61E8E701A6F301E0L), p_1608->g_69)), p_124))), 7)) , (void*)0) == p_1608->g_209[p_1608->g_239]) , &p_1608->g_208) != &p_1608->g_208);
        }
        if (((*l_371) = (safe_mul_func_uint16_t_u_u(((p_1608->g_75[0][0] ^ p_124) <= (safe_sub_func_int64_t_s_s(0x70C18046F75AF68EL, p_124))), ((l_370 &= (GROUP_DIVERGE(0, 1) != (safe_sub_func_uint64_t_u_u((p_1608->g_25 = (&p_1608->g_75[3][0] != ((l_358[0][3] & 0L) , func_131((l_367 & l_368), l_369[5], l_357[4][4], p_124, p_1608)))), p_1608->g_237)))) , 0xA107L)))))
        { /* block id: 153 */
            int32_t *l_381 = &l_357[5][3];
            int32_t *l_383 = (void*)0;
            int32_t *l_384 = (void*)0;
            int32_t *l_385 = (void*)0;
            int32_t *l_386[8] = {&l_358[0][0],&l_358[0][0],&l_358[0][0],&l_358[0][0],&l_358[0][0],&l_358[0][0],&l_358[0][0],&l_358[0][0]};
            uint32_t l_392 = 0xCA36A913L;
            int i;
            for (p_1608->g_218 = 0; (p_1608->g_218 <= 5); p_1608->g_218 += 1)
            { /* block id: 156 */
                uint16_t l_376[2];
                int i;
                for (i = 0; i < 2; i++)
                    l_376[i] = 9UL;
                for (l_336 = 1; (l_336 <= 5); l_336 += 1)
                { /* block id: 159 */
                    uint8_t *l_377 = &l_367;
                    l_380[2][5][4] |= (safe_mod_func_int64_t_s_s(((safe_rshift_func_uint16_t_u_u((p_1608->g_181 == l_376[0]), 8)) | (++(*l_377))), p_124));
                }
                return p_1608->g_209[p_1608->g_69];
            }
            if ((*l_371))
                continue;
            ++l_392;
        }
        else
        { /* block id: 167 */
            uint32_t l_395 = 4294967291UL;
            --l_395;
        }
        p_1608->g_203[0][0] = p_1608->g_209[p_1608->g_69];
    }
    return &p_1608->g_8;
}


/* ------------------------------------------ */
/* 
 * reads : p_1608->g_203 p_1608->g_13 p_1608->g_69 p_1608->g_103
 * writes: p_1608->g_203 p_1608->g_13 p_1608->g_69
 */
int32_t  func_125(uint16_t * p_126, uint16_t * p_127, uint16_t  p_128, uint64_t  p_129, uint16_t * p_130, struct S0 * p_1608)
{ /* block id: 134 */
    int32_t **l_335 = &p_1608->g_203[3][0];
    (*l_335) = &p_1608->g_13;
    (**l_335) ^= 1L;
    return p_1608->g_103;
}


/* ------------------------------------------ */
/* 
 * reads : p_1608->g_13 p_1608->g_25 p_1608->g_comm_values p_1608->g_103 p_1608->g_69 p_1608->g_104
 * writes: p_1608->g_13 p_1608->g_104
 */
uint16_t * func_131(int16_t  p_132, uint16_t * p_133, uint64_t  p_134, int16_t  p_135, struct S0 * p_1608)
{ /* block id: 56 */
    int32_t l_142[1][8][6] = {{{0x7D128F2DL,1L,1L,0x7D128F2DL,0x7D128F2DL,1L},{0x7D128F2DL,1L,1L,0x7D128F2DL,0x7D128F2DL,1L},{0x7D128F2DL,1L,1L,0x7D128F2DL,0x7D128F2DL,1L},{0x7D128F2DL,1L,1L,0x7D128F2DL,0x7D128F2DL,1L},{0x7D128F2DL,1L,1L,0x7D128F2DL,0x7D128F2DL,1L},{0x7D128F2DL,1L,1L,0x7D128F2DL,0x7D128F2DL,1L},{0x7D128F2DL,1L,1L,0x7D128F2DL,0x7D128F2DL,1L},{0x7D128F2DL,1L,1L,0x7D128F2DL,0x7D128F2DL,1L}}};
    uint64_t *l_144 = &p_1608->g_25;
    int32_t *l_202 = &p_1608->g_69;
    uint16_t *l_333 = &p_1608->g_75[4][0];
    int i, j, k;
    for (p_135 = 0; (p_135 >= 0); p_135 -= 1)
    { /* block id: 59 */
        int32_t *l_143 = &p_1608->g_13;
        uint64_t *l_145 = &p_1608->g_25;
        int32_t l_147 = 0x5F837D81L;
        int32_t l_244 = 2L;
        int32_t l_247 = (-7L);
        int32_t l_249 = 1L;
        int32_t l_250[1];
        uint32_t l_273 = 4294967293UL;
        int16_t l_312 = 0L;
        int32_t l_317 = 0x5D4B7CB2L;
        int i;
        for (i = 0; i < 1; i++)
            l_250[i] = 6L;
        (*l_143) ^= 0x22F9BC03L;
        for (p_1608->g_13 = 0; (p_1608->g_13 >= 0); p_1608->g_13 -= 1)
        { /* block id: 63 */
            uint8_t l_146 = 8UL;
            int32_t *l_148 = &l_147;
            int32_t l_248[1];
            int32_t l_251 = 0x110114CDL;
            uint64_t l_252 = 0x6FE1DB370B68F89FL;
            uint32_t l_330 = 4294967295UL;
            int i;
            for (i = 0; i < 1; i++)
                l_248[i] = 0x7168B76DL;
            l_146 = (((65535UL <= p_1608->g_13) , l_144) != (l_145 = &p_134));
            l_147 = (*l_143);
            l_142[0][5][4] |= ((p_1608->g_25 != (p_1608->g_comm_values[p_1608->tid] || p_1608->g_103)) ^ 0x0C68L);
            (*l_148) |= p_1608->g_69;
            for (p_1608->g_104 = 0; (p_1608->g_104 <= 0); p_1608->g_104 += 1)
            { /* block id: 71 */
                uint32_t *l_155 = &p_1608->g_156;
                int64_t *l_168 = (void*)0;
                int64_t *l_169 = (void*)0;
                int64_t *l_170 = (void*)0;
                int64_t *l_171 = (void*)0;
                int64_t *l_172 = (void*)0;
                int64_t *l_173 = (void*)0;
                int64_t *l_174 = (void*)0;
                int64_t *l_175[6][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                int16_t l_199[1];
                uint8_t *l_220 = &l_146;
                uint16_t *l_257 = &p_1608->g_75[3][0];
                int32_t l_297 = 1L;
                int32_t l_314 = (-1L);
                int32_t l_315 = 0x436028CDL;
                int32_t l_320 = 0x3BED7776L;
                int32_t l_321 = (-10L);
                int32_t l_322 = 0x632A8D1FL;
                int32_t l_323 = (-1L);
                int32_t l_325 = 0x6A690759L;
                int32_t l_326 = 1L;
                int32_t l_327 = 0L;
                int32_t l_328 = 5L;
                int32_t l_329[9] = {0x57C8F7ECL,0x57C8F7ECL,0x57C8F7ECL,0x57C8F7ECL,0x57C8F7ECL,0x57C8F7ECL,0x57C8F7ECL,0x57C8F7ECL,0x57C8F7ECL};
                int i, j, k;
                for (i = 0; i < 1; i++)
                    l_199[i] = 0x33E2L;
                (1 + 1);
            }
        }
    }
    return l_333;
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[5];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 5; i++)
            l_comm_values[i] = 1;
    struct S0 c_1609;
    struct S0* p_1608 = &c_1609;
    struct S0 c_1610 = {
        (-9L), // p_1608->g_2
        0x4CC90A35L, // p_1608->g_3
        0L, // p_1608->g_4
        1L, // p_1608->g_7
        0x15747814L, // p_1608->g_8
        1L, // p_1608->g_13
        18446744073709551606UL, // p_1608->g_25
        0x5B9EL, // p_1608->g_39
        0x18L, // p_1608->g_41
        0L, // p_1608->g_47
        (-3L), // p_1608->g_48
        0UL, // p_1608->g_51
        0x78CCAA7AL, // p_1608->g_61
        6L, // p_1608->g_69
        0UL, // p_1608->g_71
        {{0x82AFL,0x82AFL},{0x82AFL,0x82AFL},{0x82AFL,0x82AFL},{0x82AFL,0x82AFL},{0x82AFL,0x82AFL}}, // p_1608->g_75
        0x045CL, // p_1608->g_103
        0UL, // p_1608->g_104
        4294967295UL, // p_1608->g_156
        0UL, // p_1608->g_181
        {{&p_1608->g_69},{&p_1608->g_69},{&p_1608->g_69},{&p_1608->g_69}}, // p_1608->g_203
        {&p_1608->g_156,&p_1608->g_156,&p_1608->g_156,&p_1608->g_156,&p_1608->g_156,&p_1608->g_156}, // p_1608->g_209
        &p_1608->g_209[5], // p_1608->g_208
        0UL, // p_1608->g_218
        &p_1608->g_218, // p_1608->g_217
        0L, // p_1608->g_237
        0x5CL, // p_1608->g_239
        0x3FL, // p_1608->g_391
        0x75L, // p_1608->g_412
        250UL, // p_1608->g_413
        255UL, // p_1608->g_414
        0xFDL, // p_1608->g_415
        {9UL,9UL,9UL,9UL,9UL,9UL,9UL,9UL}, // p_1608->g_416
        0x4CL, // p_1608->g_417
        0x38L, // p_1608->g_418
        0x4EL, // p_1608->g_419
        246UL, // p_1608->g_420
        255UL, // p_1608->g_421
        255UL, // p_1608->g_422
        0xF5L, // p_1608->g_423
        0x85L, // p_1608->g_424
        1UL, // p_1608->g_425
        {{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL}}, // p_1608->g_426
        {1UL,1UL,1UL,1UL,1UL}, // p_1608->g_427
        0x61L, // p_1608->g_428
        0xAEL, // p_1608->g_429
        0x6EL, // p_1608->g_430
        0xE3L, // p_1608->g_431
        0xEBL, // p_1608->g_432
        0xF6L, // p_1608->g_433
        {{255UL,255UL,255UL,0xA9L,255UL},{255UL,255UL,255UL,0xA9L,255UL},{255UL,255UL,255UL,0xA9L,255UL},{255UL,255UL,255UL,0xA9L,255UL},{255UL,255UL,255UL,0xA9L,255UL},{255UL,255UL,255UL,0xA9L,255UL},{255UL,255UL,255UL,0xA9L,255UL},{255UL,255UL,255UL,0xA9L,255UL}}, // p_1608->g_434
        0x70L, // p_1608->g_435
        0xAFL, // p_1608->g_436
        250UL, // p_1608->g_437
        1UL, // p_1608->g_438
        248UL, // p_1608->g_439
        0xA3L, // p_1608->g_440
        {{{1UL,0UL,0UL,1UL,0xAEL,0xE0L}},{{1UL,0UL,0UL,1UL,0xAEL,0xE0L}},{{1UL,0UL,0UL,1UL,0xAEL,0xE0L}},{{1UL,0UL,0UL,1UL,0xAEL,0xE0L}},{{1UL,0UL,0UL,1UL,0xAEL,0xE0L}},{{1UL,0UL,0UL,1UL,0xAEL,0xE0L}},{{1UL,0UL,0UL,1UL,0xAEL,0xE0L}},{{1UL,0UL,0UL,1UL,0xAEL,0xE0L}},{{1UL,0UL,0UL,1UL,0xAEL,0xE0L}},{{1UL,0UL,0UL,1UL,0xAEL,0xE0L}}}, // p_1608->g_441
        0xDAL, // p_1608->g_442
        0x66L, // p_1608->g_443
        0x21L, // p_1608->g_444
        1UL, // p_1608->g_445
        0x42L, // p_1608->g_446
        248UL, // p_1608->g_447
        0x5AL, // p_1608->g_448
        4UL, // p_1608->g_449
        247UL, // p_1608->g_450
        0UL, // p_1608->g_451
        0UL, // p_1608->g_452
        0x64L, // p_1608->g_453
        255UL, // p_1608->g_454
        252UL, // p_1608->g_455
        9UL, // p_1608->g_456
        0xE7L, // p_1608->g_457
        1UL, // p_1608->g_458
        1UL, // p_1608->g_459
        {0xB0L,0xB0L,0xB0L}, // p_1608->g_460
        0x4AL, // p_1608->g_461
        0x85L, // p_1608->g_462
        0xBAL, // p_1608->g_463
        251UL, // p_1608->g_464
        0UL, // p_1608->g_465
        0x22L, // p_1608->g_466
        0x6BL, // p_1608->g_467
        {0xCDL,3UL,0xCDL,0xCDL,3UL,0xCDL}, // p_1608->g_468
        5UL, // p_1608->g_469
        {0UL,0UL,0UL,0UL}, // p_1608->g_470
        {{{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L}},{{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L}},{{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L}},{{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L}},{{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L}},{{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L}},{{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L}},{{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L}},{{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L}},{{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L},{8UL,0x38L,0UL,0xC6L,0xC6L}}}, // p_1608->g_471
        0x64L, // p_1608->g_472
        {{{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467}},{{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467}},{{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467}},{{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467}},{{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467}},{{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467}},{{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467},{&p_1608->g_471[8][4][2],&p_1608->g_449,&p_1608->g_427[2],&p_1608->g_467}}}, // p_1608->g_411
        &p_1608->g_411[6][1][2], // p_1608->g_410
        &p_1608->g_208, // p_1608->g_476
        &p_1608->g_156, // p_1608->g_511
        0x9BL, // p_1608->g_563
        0x553DL, // p_1608->g_610
        (-7L), // p_1608->g_678
        0x319805B77AE02D14L, // p_1608->g_712
        0xA8299D647801EB66L, // p_1608->g_713
        0x1C084C88L, // p_1608->g_740
        (void*)0, // p_1608->g_805
        &p_1608->g_805, // p_1608->g_804
        {1L,1L,1L,1L,1L,1L,1L,1L,1L,1L}, // p_1608->g_839
        0x9A1FEC8C58A398BFL, // p_1608->g_853
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1608->g_859
        0x5214L, // p_1608->g_897
        0x2309L, // p_1608->g_902
        0L, // p_1608->g_922
        {{&p_1608->g_853,&p_1608->g_853,&p_1608->g_853,&p_1608->g_853,(void*)0,&p_1608->g_853,&p_1608->g_853},{&p_1608->g_853,&p_1608->g_853,&p_1608->g_853,&p_1608->g_853,(void*)0,&p_1608->g_853,&p_1608->g_853},{&p_1608->g_853,&p_1608->g_853,&p_1608->g_853,&p_1608->g_853,(void*)0,&p_1608->g_853,&p_1608->g_853},{&p_1608->g_853,&p_1608->g_853,&p_1608->g_853,&p_1608->g_853,(void*)0,&p_1608->g_853,&p_1608->g_853},{&p_1608->g_853,&p_1608->g_853,&p_1608->g_853,&p_1608->g_853,(void*)0,&p_1608->g_853,&p_1608->g_853},{&p_1608->g_853,&p_1608->g_853,&p_1608->g_853,&p_1608->g_853,(void*)0,&p_1608->g_853,&p_1608->g_853},{&p_1608->g_853,&p_1608->g_853,&p_1608->g_853,&p_1608->g_853,(void*)0,&p_1608->g_853,&p_1608->g_853}}, // p_1608->g_949
        &p_1608->g_949[5][2], // p_1608->g_948
        {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}, // p_1608->g_966
        0x7A42L, // p_1608->g_984
        0L, // p_1608->g_1021
        0x7EC615EA4F840357L, // p_1608->g_1113
        4294967295UL, // p_1608->g_1139
        {0x3F82331FL,0x3F82331FL,0x3F82331FL}, // p_1608->g_1147
        &p_1608->g_949[5][2], // p_1608->g_1191
        &p_1608->g_1191, // p_1608->g_1190
        {0x7FL,0x2CL,0x7FL,0x7FL,0x2CL,0x7FL,0x7FL,0x2CL,0x7FL}, // p_1608->g_1193
        0x51A8L, // p_1608->g_1230
        0x23L, // p_1608->g_1305
        65535UL, // p_1608->g_1369
        {{0x76E8FC3DL,0x76E8FC3DL,0x76E8FC3DL,0x76E8FC3DL,0x76E8FC3DL,0x76E8FC3DL,0x76E8FC3DL,0x76E8FC3DL,0x76E8FC3DL,0x76E8FC3DL},{0x76E8FC3DL,0x76E8FC3DL,0x76E8FC3DL,0x76E8FC3DL,0x76E8FC3DL,0x76E8FC3DL,0x76E8FC3DL,0x76E8FC3DL,0x76E8FC3DL,0x76E8FC3DL},{0x76E8FC3DL,0x76E8FC3DL,0x76E8FC3DL,0x76E8FC3DL,0x76E8FC3DL,0x76E8FC3DL,0x76E8FC3DL,0x76E8FC3DL,0x76E8FC3DL,0x76E8FC3DL},{0x76E8FC3DL,0x76E8FC3DL,0x76E8FC3DL,0x76E8FC3DL,0x76E8FC3DL,0x76E8FC3DL,0x76E8FC3DL,0x76E8FC3DL,0x76E8FC3DL,0x76E8FC3DL}}, // p_1608->g_1384
        0x0D275B83L, // p_1608->g_1399
        &p_1608->g_203[0][0], // p_1608->g_1483
        {{0x52E430EDL,0x52E430EDL,0x52E430EDL,0x52E430EDL}}, // p_1608->g_1499
        1UL, // p_1608->g_1529
        (void*)0, // p_1608->g_1533
        &p_1608->g_75[1][0], // p_1608->g_1536
        &p_1608->g_1536, // p_1608->g_1535
        &p_1608->g_1535, // p_1608->g_1534
        {&p_1608->g_1535}, // p_1608->g_1537
        (void*)0, // p_1608->g_1538
        0x1AL, // p_1608->g_1551
        {&p_1608->g_104,&p_1608->g_104,&p_1608->g_104,&p_1608->g_104}, // p_1608->g_1574
        {{&p_1608->g_1574[0],&p_1608->g_1574[0],&p_1608->g_1574[3],&p_1608->g_1574[1],&p_1608->g_1574[0],&p_1608->g_1574[0],&p_1608->g_1574[1],&p_1608->g_1574[2],&p_1608->g_1574[1]},{&p_1608->g_1574[0],&p_1608->g_1574[0],&p_1608->g_1574[3],&p_1608->g_1574[1],&p_1608->g_1574[0],&p_1608->g_1574[0],&p_1608->g_1574[1],&p_1608->g_1574[2],&p_1608->g_1574[1]},{&p_1608->g_1574[0],&p_1608->g_1574[0],&p_1608->g_1574[3],&p_1608->g_1574[1],&p_1608->g_1574[0],&p_1608->g_1574[0],&p_1608->g_1574[1],&p_1608->g_1574[2],&p_1608->g_1574[1]},{&p_1608->g_1574[0],&p_1608->g_1574[0],&p_1608->g_1574[3],&p_1608->g_1574[1],&p_1608->g_1574[0],&p_1608->g_1574[0],&p_1608->g_1574[1],&p_1608->g_1574[2],&p_1608->g_1574[1]},{&p_1608->g_1574[0],&p_1608->g_1574[0],&p_1608->g_1574[3],&p_1608->g_1574[1],&p_1608->g_1574[0],&p_1608->g_1574[0],&p_1608->g_1574[1],&p_1608->g_1574[2],&p_1608->g_1574[1]}}, // p_1608->g_1573
        sequence_input[get_global_id(0)], // p_1608->global_0_offset
        sequence_input[get_global_id(1)], // p_1608->global_1_offset
        sequence_input[get_global_id(2)], // p_1608->global_2_offset
        sequence_input[get_local_id(0)], // p_1608->local_0_offset
        sequence_input[get_local_id(1)], // p_1608->local_1_offset
        sequence_input[get_local_id(2)], // p_1608->local_2_offset
        sequence_input[get_group_id(0)], // p_1608->group_0_offset
        sequence_input[get_group_id(1)], // p_1608->group_1_offset
        sequence_input[get_group_id(2)], // p_1608->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 5)), permutations[0][get_linear_local_id()])), // p_1608->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1609 = c_1610;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1608);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1608->g_2, "p_1608->g_2", print_hash_value);
    transparent_crc(p_1608->g_3, "p_1608->g_3", print_hash_value);
    transparent_crc(p_1608->g_4, "p_1608->g_4", print_hash_value);
    transparent_crc(p_1608->g_7, "p_1608->g_7", print_hash_value);
    transparent_crc(p_1608->g_8, "p_1608->g_8", print_hash_value);
    transparent_crc(p_1608->g_13, "p_1608->g_13", print_hash_value);
    transparent_crc(p_1608->g_25, "p_1608->g_25", print_hash_value);
    transparent_crc(p_1608->g_39, "p_1608->g_39", print_hash_value);
    transparent_crc(p_1608->g_41, "p_1608->g_41", print_hash_value);
    transparent_crc(p_1608->g_47, "p_1608->g_47", print_hash_value);
    transparent_crc(p_1608->g_48, "p_1608->g_48", print_hash_value);
    transparent_crc(p_1608->g_51, "p_1608->g_51", print_hash_value);
    transparent_crc(p_1608->g_61, "p_1608->g_61", print_hash_value);
    transparent_crc(p_1608->g_69, "p_1608->g_69", print_hash_value);
    transparent_crc(p_1608->g_71, "p_1608->g_71", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1608->g_75[i][j], "p_1608->g_75[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1608->g_103, "p_1608->g_103", print_hash_value);
    transparent_crc(p_1608->g_104, "p_1608->g_104", print_hash_value);
    transparent_crc(p_1608->g_156, "p_1608->g_156", print_hash_value);
    transparent_crc(p_1608->g_181, "p_1608->g_181", print_hash_value);
    transparent_crc(p_1608->g_218, "p_1608->g_218", print_hash_value);
    transparent_crc(p_1608->g_237, "p_1608->g_237", print_hash_value);
    transparent_crc(p_1608->g_239, "p_1608->g_239", print_hash_value);
    transparent_crc(p_1608->g_391, "p_1608->g_391", print_hash_value);
    transparent_crc(p_1608->g_412, "p_1608->g_412", print_hash_value);
    transparent_crc(p_1608->g_413, "p_1608->g_413", print_hash_value);
    transparent_crc(p_1608->g_414, "p_1608->g_414", print_hash_value);
    transparent_crc(p_1608->g_415, "p_1608->g_415", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1608->g_416[i], "p_1608->g_416[i]", print_hash_value);

    }
    transparent_crc(p_1608->g_417, "p_1608->g_417", print_hash_value);
    transparent_crc(p_1608->g_418, "p_1608->g_418", print_hash_value);
    transparent_crc(p_1608->g_419, "p_1608->g_419", print_hash_value);
    transparent_crc(p_1608->g_420, "p_1608->g_420", print_hash_value);
    transparent_crc(p_1608->g_421, "p_1608->g_421", print_hash_value);
    transparent_crc(p_1608->g_422, "p_1608->g_422", print_hash_value);
    transparent_crc(p_1608->g_423, "p_1608->g_423", print_hash_value);
    transparent_crc(p_1608->g_424, "p_1608->g_424", print_hash_value);
    transparent_crc(p_1608->g_425, "p_1608->g_425", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1608->g_426[i][j], "p_1608->g_426[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1608->g_427[i], "p_1608->g_427[i]", print_hash_value);

    }
    transparent_crc(p_1608->g_428, "p_1608->g_428", print_hash_value);
    transparent_crc(p_1608->g_429, "p_1608->g_429", print_hash_value);
    transparent_crc(p_1608->g_430, "p_1608->g_430", print_hash_value);
    transparent_crc(p_1608->g_431, "p_1608->g_431", print_hash_value);
    transparent_crc(p_1608->g_432, "p_1608->g_432", print_hash_value);
    transparent_crc(p_1608->g_433, "p_1608->g_433", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1608->g_434[i][j], "p_1608->g_434[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1608->g_435, "p_1608->g_435", print_hash_value);
    transparent_crc(p_1608->g_436, "p_1608->g_436", print_hash_value);
    transparent_crc(p_1608->g_437, "p_1608->g_437", print_hash_value);
    transparent_crc(p_1608->g_438, "p_1608->g_438", print_hash_value);
    transparent_crc(p_1608->g_439, "p_1608->g_439", print_hash_value);
    transparent_crc(p_1608->g_440, "p_1608->g_440", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_1608->g_441[i][j][k], "p_1608->g_441[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1608->g_442, "p_1608->g_442", print_hash_value);
    transparent_crc(p_1608->g_443, "p_1608->g_443", print_hash_value);
    transparent_crc(p_1608->g_444, "p_1608->g_444", print_hash_value);
    transparent_crc(p_1608->g_445, "p_1608->g_445", print_hash_value);
    transparent_crc(p_1608->g_446, "p_1608->g_446", print_hash_value);
    transparent_crc(p_1608->g_447, "p_1608->g_447", print_hash_value);
    transparent_crc(p_1608->g_448, "p_1608->g_448", print_hash_value);
    transparent_crc(p_1608->g_449, "p_1608->g_449", print_hash_value);
    transparent_crc(p_1608->g_450, "p_1608->g_450", print_hash_value);
    transparent_crc(p_1608->g_451, "p_1608->g_451", print_hash_value);
    transparent_crc(p_1608->g_452, "p_1608->g_452", print_hash_value);
    transparent_crc(p_1608->g_453, "p_1608->g_453", print_hash_value);
    transparent_crc(p_1608->g_454, "p_1608->g_454", print_hash_value);
    transparent_crc(p_1608->g_455, "p_1608->g_455", print_hash_value);
    transparent_crc(p_1608->g_456, "p_1608->g_456", print_hash_value);
    transparent_crc(p_1608->g_457, "p_1608->g_457", print_hash_value);
    transparent_crc(p_1608->g_458, "p_1608->g_458", print_hash_value);
    transparent_crc(p_1608->g_459, "p_1608->g_459", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1608->g_460[i], "p_1608->g_460[i]", print_hash_value);

    }
    transparent_crc(p_1608->g_461, "p_1608->g_461", print_hash_value);
    transparent_crc(p_1608->g_462, "p_1608->g_462", print_hash_value);
    transparent_crc(p_1608->g_463, "p_1608->g_463", print_hash_value);
    transparent_crc(p_1608->g_464, "p_1608->g_464", print_hash_value);
    transparent_crc(p_1608->g_465, "p_1608->g_465", print_hash_value);
    transparent_crc(p_1608->g_466, "p_1608->g_466", print_hash_value);
    transparent_crc(p_1608->g_467, "p_1608->g_467", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1608->g_468[i], "p_1608->g_468[i]", print_hash_value);

    }
    transparent_crc(p_1608->g_469, "p_1608->g_469", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1608->g_470[i], "p_1608->g_470[i]", print_hash_value);

    }
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1608->g_471[i][j][k], "p_1608->g_471[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1608->g_472, "p_1608->g_472", print_hash_value);
    transparent_crc(p_1608->g_563, "p_1608->g_563", print_hash_value);
    transparent_crc(p_1608->g_610, "p_1608->g_610", print_hash_value);
    transparent_crc(p_1608->g_678, "p_1608->g_678", print_hash_value);
    transparent_crc(p_1608->g_712, "p_1608->g_712", print_hash_value);
    transparent_crc(p_1608->g_713, "p_1608->g_713", print_hash_value);
    transparent_crc(p_1608->g_740, "p_1608->g_740", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1608->g_839[i], "p_1608->g_839[i]", print_hash_value);

    }
    transparent_crc(p_1608->g_853, "p_1608->g_853", print_hash_value);
    transparent_crc(p_1608->g_897, "p_1608->g_897", print_hash_value);
    transparent_crc(p_1608->g_902, "p_1608->g_902", print_hash_value);
    transparent_crc(p_1608->g_922, "p_1608->g_922", print_hash_value);
    transparent_crc(p_1608->g_984, "p_1608->g_984", print_hash_value);
    transparent_crc(p_1608->g_1021, "p_1608->g_1021", print_hash_value);
    transparent_crc(p_1608->g_1113, "p_1608->g_1113", print_hash_value);
    transparent_crc(p_1608->g_1139, "p_1608->g_1139", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1608->g_1147[i], "p_1608->g_1147[i]", print_hash_value);

    }
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1608->g_1193[i], "p_1608->g_1193[i]", print_hash_value);

    }
    transparent_crc(p_1608->g_1230, "p_1608->g_1230", print_hash_value);
    transparent_crc(p_1608->g_1305, "p_1608->g_1305", print_hash_value);
    transparent_crc(p_1608->g_1369, "p_1608->g_1369", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1608->g_1384[i][j], "p_1608->g_1384[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1608->g_1399, "p_1608->g_1399", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1608->g_1499[i][j], "p_1608->g_1499[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1608->g_1529, "p_1608->g_1529", print_hash_value);
    transparent_crc(p_1608->g_1551, "p_1608->g_1551", print_hash_value);
    transparent_crc(p_1608->l_comm_values[get_linear_local_id()], "p_1608->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1608->g_comm_values[get_linear_group_id() * 5 + get_linear_local_id()], "p_1608->g_comm_values[get_linear_group_id() * 5 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
