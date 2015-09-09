// ---fake_divergence ---inter_thread_comm -g 77,78,1 -l 1,13,1
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

__constant uint32_t permutations[10][13] = {
{7,9,10,12,2,5,0,1,11,8,6,3,4}, // permutation 0
{2,11,3,1,0,5,6,7,9,4,10,12,8}, // permutation 1
{4,6,12,2,5,3,10,11,0,7,9,8,1}, // permutation 2
{10,9,8,7,0,11,4,3,12,5,1,6,2}, // permutation 3
{11,7,2,0,8,5,6,12,10,4,1,9,3}, // permutation 4
{6,5,4,8,12,2,9,10,1,11,3,7,0}, // permutation 5
{9,0,7,12,6,11,1,4,5,10,2,8,3}, // permutation 6
{7,0,4,2,5,12,10,3,11,6,9,8,1}, // permutation 7
{1,12,10,11,4,2,0,3,5,8,7,6,9}, // permutation 8
{2,8,5,9,11,10,7,3,0,12,1,4,6} // permutation 9
};

// Seed: 97

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t *g_18;
    int32_t g_41;
    uint64_t g_45[3];
    int16_t g_65;
    int16_t g_67;
    int32_t g_78;
    int32_t g_94[6][10];
    int32_t * volatile g_95;
    int32_t g_97;
    int32_t *g_111;
    int32_t **g_110[2];
    int8_t g_131;
    uint32_t g_146;
    int16_t *g_171;
    volatile uint8_t g_172[9][4];
    uint32_t g_190;
    int32_t ** volatile g_192;
    int32_t g_194;
    int32_t g_199;
    volatile uint32_t * volatile * volatile g_201;
    volatile uint32_t * volatile * volatile * volatile g_202;
    uint32_t g_232;
    int32_t g_240;
    int64_t g_243;
    volatile int8_t g_262;
    uint8_t g_278;
    int64_t g_285[1];
    uint8_t g_318[2][5];
    int16_t g_328;
    int32_t *g_329;
    uint64_t g_370[2];
    int32_t * volatile g_378;
    uint8_t g_380[2];
    volatile uint32_t g_392;
    int64_t *g_399;
    int64_t **g_398;
    int64_t *** volatile g_397;
    uint16_t g_417;
    uint32_t *g_460;
    uint32_t **g_459;
    uint32_t g_479;
    uint32_t g_484;
    uint16_t g_488;
    int32_t * volatile g_497[9][2][1];
    uint32_t *** volatile g_578;
    int16_t g_583[7];
    uint16_t *g_588;
    uint16_t **g_587;
    uint16_t **g_589;
    int32_t g_594;
    int32_t *g_593[4][4][8];
    int32_t * volatile *g_592[8][8][4];
    uint32_t g_601;
    uint32_t * volatile g_600;
    uint32_t * volatile *g_599;
    uint32_t *g_714;
    volatile uint64_t g_719[5];
    uint64_t g_721;
    int32_t * volatile g_732;
    int32_t g_743;
    int8_t g_916;
    uint64_t *g_954;
    uint64_t **g_953;
    uint32_t ***g_987[4][1][7];
    uint32_t ****g_986;
    uint32_t ****g_989;
    int8_t *** volatile g_996;
    int8_t g_1006;
    uint8_t g_1007;
    int32_t g_1040[6];
    uint8_t **g_1102;
    uint8_t *** volatile g_1101;
    int64_t * volatile g_1226;
    int64_t * volatile *g_1225[4];
    volatile int16_t * volatile * volatile g_1261;
    volatile int16_t * volatile * volatile *g_1260;
    int64_t g_1325[4];
    uint64_t g_1329;
    uint16_t ***g_1367;
    uint16_t ***g_1399;
    uint32_t g_1468[6];
    int32_t g_1471[4];
    volatile int8_t * volatile g_1475;
    volatile int8_t * volatile * volatile g_1474[3][2];
    volatile int8_t * volatile * volatile * volatile g_1476;
    int64_t ***g_1489;
    int64_t ****g_1488;
    int32_t g_1517;
    int32_t ** volatile g_1532;
    int64_t **g_1541;
    int32_t ** volatile g_1579;
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
uint64_t  func_1(struct S0 * p_1651);
int32_t * func_3(uint64_t  p_4, struct S0 * p_1651);
int32_t * func_19(int32_t  p_20, uint32_t  p_21, int32_t * p_22, int32_t * p_23, int32_t * p_24, struct S0 * p_1651);
int64_t  func_27(int32_t  p_28, uint32_t  p_29, uint32_t  p_30, uint32_t  p_31, struct S0 * p_1651);
int16_t  func_36(int32_t * p_37, struct S0 * p_1651);
uint16_t  func_60(int16_t  p_61, int32_t * p_62, struct S0 * p_1651);
int16_t * func_73(uint64_t  p_74, struct S0 * p_1651);
int32_t * func_80(int32_t ** p_81, int32_t * p_82, int16_t * p_83, int32_t * p_84, int32_t * p_85, struct S0 * p_1651);
int32_t ** func_86(int32_t * p_87, struct S0 * p_1651);
int32_t  func_90(int8_t  p_91, struct S0 * p_1651);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1651->g_1579 p_1651->g_45 p_1651->g_417 p_1651->g_1006 p_1651->g_18 p_1651->g_111 p_1651->g_94 p_1651->g_243 p_1651->g_380 p_1651->g_1475 p_1651->g_262 p_1651->g_194 p_1651->g_1468 p_1651->g_202 p_1651->g_201 p_1651->g_192
 * writes: p_1651->g_18 p_1651->g_417 p_1651->g_94 p_1651->g_243 p_1651->g_318 p_1651->g_65 p_1651->g_583 p_1651->g_194 p_1651->g_146 p_1651->g_488 p_1651->g_278 p_1651->g_67 p_1651->g_392 p_1651->g_41 p_1651->g_172
 */
uint64_t  func_1(struct S0 * p_1651)
{ /* block id: 4 */
    uint64_t l_2[8][7] = {{7UL,0UL,0UL,7UL,0x6B6CD33356370016L,0x98D72A67F8B4DFECL,0xC1DA7BC99958900FL},{7UL,0UL,0UL,7UL,0x6B6CD33356370016L,0x98D72A67F8B4DFECL,0xC1DA7BC99958900FL},{7UL,0UL,0UL,7UL,0x6B6CD33356370016L,0x98D72A67F8B4DFECL,0xC1DA7BC99958900FL},{7UL,0UL,0UL,7UL,0x6B6CD33356370016L,0x98D72A67F8B4DFECL,0xC1DA7BC99958900FL},{7UL,0UL,0UL,7UL,0x6B6CD33356370016L,0x98D72A67F8B4DFECL,0xC1DA7BC99958900FL},{7UL,0UL,0UL,7UL,0x6B6CD33356370016L,0x98D72A67F8B4DFECL,0xC1DA7BC99958900FL},{7UL,0UL,0UL,7UL,0x6B6CD33356370016L,0x98D72A67F8B4DFECL,0xC1DA7BC99958900FL},{7UL,0UL,0UL,7UL,0x6B6CD33356370016L,0x98D72A67F8B4DFECL,0xC1DA7BC99958900FL}};
    int32_t l_5 = (-1L);
    int32_t l_33 = 0x069719EFL;
    uint64_t l_761 = 18446744073709551610UL;
    uint16_t l_1544 = 0x1F9EL;
    int8_t *l_1616 = &p_1651->g_1006;
    int8_t **l_1615 = &l_1616;
    uint8_t l_1628 = 0x94L;
    uint32_t **l_1629 = &p_1651->g_714;
    uint8_t *l_1635 = (void*)0;
    uint8_t *l_1636 = &l_1628;
    int16_t *l_1645 = &p_1651->g_583[6];
    uint8_t l_1648 = 1UL;
    int32_t *l_1649 = &p_1651->g_41;
    int32_t **l_1650 = &p_1651->g_18;
    int i, j;
    if ((4294967290UL >= l_2[4][6]))
    { /* block id: 5 */
        uint16_t l_32 = 3UL;
        uint32_t l_762 = 4UL;
        int32_t *l_804 = &p_1651->g_594;
        int64_t *l_1324[6] = {&p_1651->g_1325[2],&p_1651->g_1325[2],&p_1651->g_1325[2],&p_1651->g_1325[2],&p_1651->g_1325[2],&p_1651->g_1325[2]};
        int32_t **l_1543 = &l_804;
        int64_t *l_1575 = &p_1651->g_243;
        int64_t **l_1574[7];
        uint32_t **l_1576 = &p_1651->g_460;
        int i;
        for (i = 0; i < 7; i++)
            l_1574[i] = &l_1575;
        (1 + 1);
    }
    else
    { /* block id: 838 */
        int8_t l_1591 = 0x00L;
        int32_t l_1598 = 0x4E46A9A5L;
        (*p_1651->g_1579) = &l_5;
        for (l_33 = 0; (l_33 <= 2); l_33 += 1)
        { /* block id: 842 */
            uint16_t l_1592 = 65535UL;
            int32_t l_1599[10][4] = {{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L}};
            int i, j;
            for (l_761 = 0; (l_761 <= 2); l_761 += 1)
            { /* block id: 845 */
                uint16_t *l_1586 = &l_1544;
                int8_t *l_1596[9][7][4] = {{{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591}},{{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591}},{{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591}},{{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591}},{{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591}},{{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591}},{{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591}},{{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591}},{{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591},{(void*)0,&p_1651->g_131,&l_1591,&l_1591}}};
                int8_t **l_1595[9] = {&l_1596[3][0][1],&l_1596[3][0][1],&l_1596[3][0][1],&l_1596[3][0][1],&l_1596[3][0][1],&l_1596[3][0][1],&l_1596[3][0][1],&l_1596[3][0][1],&l_1596[3][0][1]};
                int8_t ***l_1594 = &l_1595[5];
                int8_t ****l_1593 = &l_1594;
                int32_t l_1597 = 0L;
                uint16_t *l_1600 = &p_1651->g_417;
                int8_t *l_1622 = &l_1591;
                int i, j, k;
                (*p_1651->g_111) |= (((safe_div_func_uint16_t_u_u((safe_sub_func_int64_t_s_s(p_1651->g_45[l_761], (safe_mul_func_uint16_t_u_u((--(*l_1586)), (((l_2[(l_33 + 4)][(l_33 + 1)] > ((safe_lshift_func_int8_t_s_u(l_1591, (l_1592 >= 0x43L))) < ((void*)0 == l_1593))) >= 0x9541424CL) , FAKE_DIVERGE(p_1651->local_2_offset, get_local_id(2), 10)))))), ((*l_1600)--))) , ((safe_lshift_func_int8_t_s_u((l_1597 &= 0L), GROUP_DIVERGE(0, 1))) , p_1651->g_1006)) , (**p_1651->g_1579));
                for (p_1651->g_243 = 1; (p_1651->g_243 >= 0); p_1651->g_243 -= 1)
                { /* block id: 852 */
                    uint8_t *l_1617 = &p_1651->g_318[1][0];
                    int16_t *l_1623 = &p_1651->g_65;
                    int16_t *l_1624 = &p_1651->g_583[3];
                    int32_t l_1625 = 0x48DD311EL;
                    int i;
                    (*p_1651->g_18) = (safe_lshift_func_int16_t_s_u((safe_lshift_func_int16_t_s_s(p_1651->g_380[p_1651->g_243], 15)), (safe_sub_func_int8_t_s_s(0x53L, (((*l_1622) = (safe_mod_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s(((*l_1617) = (((void*)0 == l_1615) > GROUP_DIVERGE(0, 1))), (~((safe_sub_func_uint64_t_u_u((safe_mul_func_uint16_t_u_u((l_1622 != ((*l_1615) = ((***l_1593) = (*l_1615)))), (l_1625 = ((*l_1624) = ((*l_1623) = l_1597))))), (~l_1591))) >= (((safe_mod_func_uint64_t_u_u(((0x25L & 0L) <= l_1599[3][1]), 0xA682383B1CB0C2DDL)) , (*p_1651->g_1475)) || 1L))))), l_1628))) | p_1651->g_380[p_1651->g_243])))));
                    for (p_1651->g_194 = 6; (p_1651->g_194 >= 0); p_1651->g_194 -= 1)
                    { /* block id: 863 */
                        int i;
                        l_5 ^= (((p_1651->g_1468[(l_761 + 2)] || 0x12324CBE4653C2B4L) , l_1629) != (*p_1651->g_202));
                    }
                }
            }
        }
    }
    (*l_1650) = (l_1649 = func_19(((*p_1651->g_111) = 0x491D1BDEL), (safe_lshift_func_uint16_t_u_u((safe_unary_minus_func_int32_t_s(l_33)), (safe_sub_func_uint8_t_u_u(((*l_1636) = 0x7CL), ((+(safe_rshift_func_uint16_t_u_s((safe_lshift_func_int16_t_s_u((safe_add_func_uint32_t_u_u(((l_1544 && (safe_add_func_int8_t_s_s((((*l_1645) = 1L) , ((0x9DL <= (l_1544 , 0x08L)) <= ((safe_mul_func_uint8_t_u_u(l_1648, FAKE_DIVERGE(p_1651->local_1_offset, get_local_id(1), 10))) && GROUP_DIVERGE(1, 1)))), l_2[4][6]))) , 4294967289UL), 0x2800DA62L)), l_1544)), 4))) > l_761))))), &l_5, (*p_1651->g_1579), l_1649, p_1651));
    return (**l_1650);
}


/* ------------------------------------------ */
/* 
 * reads : p_1651->g_1329 p_1651->g_599 p_1651->g_600 p_1651->g_601 p_1651->g_719 p_1651->g_202 p_1651->g_201 p_1651->g_1007 p_1651->g_94 p_1651->g_78 p_1651->g_380 p_1651->g_192 p_1651->g_111 p_1651->g_954 p_1651->g_916 p_1651->g_588 p_1651->g_953 p_1651->g_1468 p_1651->g_1471 p_1651->g_240 p_1651->g_1474 p_1651->g_1476 p_1651->g_488 p_1651->g_484 p_1651->g_97 p_1651->g_1488 p_1651->g_370 p_1651->g_1489 p_1651->g_285 p_1651->g_1517 p_1651->g_199 p_1651->g_1541 p_1651->g_194 p_1651->g_479
 * writes: p_1651->g_1329 p_1651->g_194 p_1651->g_479 p_1651->g_110 p_1651->g_601 p_1651->g_285 p_1651->g_1367 p_1651->g_131 p_1651->g_1007 p_1651->g_78 p_1651->g_1399 p_1651->g_146 p_1651->g_488 p_1651->g_278 p_1651->g_67 p_1651->g_392 p_1651->g_41 p_1651->g_172 p_1651->g_370 p_1651->g_94 p_1651->g_45 p_1651->g_240 p_1651->g_1474 p_1651->g_484 p_1651->g_97 p_1651->g_1488 p_1651->g_111 p_1651->g_1517 p_1651->g_199 p_1651->g_1471 p_1651->g_1541
 */
int32_t * func_3(uint64_t  p_4, struct S0 * p_1651)
{ /* block id: 692 */
    int64_t ***l_1327 = (void*)0;
    int64_t ****l_1326 = &l_1327;
    uint64_t *l_1328 = &p_1651->g_1329;
    int32_t ***l_1330 = &p_1651->g_110[1];
    int32_t *l_1331 = (void*)0;
    int32_t *l_1332[9][10] = {{&p_1651->g_594,&p_1651->g_594,&p_1651->g_94[2][4],&p_1651->g_97,(void*)0,&p_1651->g_97,&p_1651->g_94[2][4],&p_1651->g_594,&p_1651->g_594,&p_1651->g_94[2][4]},{&p_1651->g_594,&p_1651->g_594,&p_1651->g_94[2][4],&p_1651->g_97,(void*)0,&p_1651->g_97,&p_1651->g_94[2][4],&p_1651->g_594,&p_1651->g_594,&p_1651->g_94[2][4]},{&p_1651->g_594,&p_1651->g_594,&p_1651->g_94[2][4],&p_1651->g_97,(void*)0,&p_1651->g_97,&p_1651->g_94[2][4],&p_1651->g_594,&p_1651->g_594,&p_1651->g_94[2][4]},{&p_1651->g_594,&p_1651->g_594,&p_1651->g_94[2][4],&p_1651->g_97,(void*)0,&p_1651->g_97,&p_1651->g_94[2][4],&p_1651->g_594,&p_1651->g_594,&p_1651->g_94[2][4]},{&p_1651->g_594,&p_1651->g_594,&p_1651->g_94[2][4],&p_1651->g_97,(void*)0,&p_1651->g_97,&p_1651->g_94[2][4],&p_1651->g_594,&p_1651->g_594,&p_1651->g_94[2][4]},{&p_1651->g_594,&p_1651->g_594,&p_1651->g_94[2][4],&p_1651->g_97,(void*)0,&p_1651->g_97,&p_1651->g_94[2][4],&p_1651->g_594,&p_1651->g_594,&p_1651->g_94[2][4]},{&p_1651->g_594,&p_1651->g_594,&p_1651->g_94[2][4],&p_1651->g_97,(void*)0,&p_1651->g_97,&p_1651->g_94[2][4],&p_1651->g_594,&p_1651->g_594,&p_1651->g_94[2][4]},{&p_1651->g_594,&p_1651->g_594,&p_1651->g_94[2][4],&p_1651->g_97,(void*)0,&p_1651->g_97,&p_1651->g_94[2][4],&p_1651->g_594,&p_1651->g_594,&p_1651->g_94[2][4]},{&p_1651->g_594,&p_1651->g_594,&p_1651->g_94[2][4],&p_1651->g_97,(void*)0,&p_1651->g_97,&p_1651->g_94[2][4],&p_1651->g_594,&p_1651->g_594,&p_1651->g_94[2][4]}};
    uint8_t l_1333 = 0x41L;
    int16_t l_1359 = 2L;
    int16_t l_1376[10] = {0L,0L,0L,0L,0L,0L,0L,0L,0L,0L};
    int32_t **l_1396 = &p_1651->g_329;
    uint8_t l_1406 = 1UL;
    uint64_t l_1432 = 0xB1AFB4C085A7EEBEL;
    uint32_t l_1504[1];
    int64_t *l_1540 = &p_1651->g_243;
    int64_t **l_1539 = &l_1540;
    int i, j;
    for (i = 0; i < 1; i++)
        l_1504[i] = 4294967295UL;
lbl_1385:
    l_1333 = ((l_1326 != &p_1651->g_397) <= ((((*l_1328) &= 0x78AF2AD99405B5E6L) , l_1330) == (void*)0));
    for (p_1651->g_194 = (-14); (p_1651->g_194 == 2); ++p_1651->g_194)
    { /* block id: 697 */
        int32_t l_1340 = (-2L);
        int32_t l_1357 = (-1L);
        uint16_t ***l_1364[8][7] = {{(void*)0,(void*)0,&p_1651->g_589,&p_1651->g_587,&p_1651->g_587,&p_1651->g_587,(void*)0},{(void*)0,(void*)0,&p_1651->g_589,&p_1651->g_587,&p_1651->g_587,&p_1651->g_587,(void*)0},{(void*)0,(void*)0,&p_1651->g_589,&p_1651->g_587,&p_1651->g_587,&p_1651->g_587,(void*)0},{(void*)0,(void*)0,&p_1651->g_589,&p_1651->g_587,&p_1651->g_587,&p_1651->g_587,(void*)0},{(void*)0,(void*)0,&p_1651->g_589,&p_1651->g_587,&p_1651->g_587,&p_1651->g_587,(void*)0},{(void*)0,(void*)0,&p_1651->g_589,&p_1651->g_587,&p_1651->g_587,&p_1651->g_587,(void*)0},{(void*)0,(void*)0,&p_1651->g_589,&p_1651->g_587,&p_1651->g_587,&p_1651->g_587,(void*)0},{(void*)0,(void*)0,&p_1651->g_589,&p_1651->g_587,&p_1651->g_587,&p_1651->g_587,(void*)0}};
        uint32_t l_1373 = 0UL;
        int32_t l_1433 = (-1L);
        int8_t l_1434 = 6L;
        int32_t l_1455 = 0x31F18B1FL;
        int32_t l_1456[1][6] = {{0x16B4733AL,0x16B4733AL,0x16B4733AL,0x16B4733AL,0x16B4733AL,0x16B4733AL}};
        int i, j;
        for (p_1651->g_479 = (-13); (p_1651->g_479 != 31); p_1651->g_479++)
        { /* block id: 700 */
            int8_t *l_1355 = (void*)0;
            int8_t *l_1356[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t l_1358 = 0x3B310D14L;
            int32_t l_1360[4] = {0x4B45A700L,0x4B45A700L,0x4B45A700L,0x4B45A700L};
            int64_t *l_1361 = &p_1651->g_285[0];
            uint16_t ***l_1368 = &p_1651->g_587;
            uint16_t **l_1375 = &p_1651->g_588;
            uint16_t l_1457 = 0x10D0L;
            int i;
            if ((safe_sub_func_uint64_t_u_u(l_1340, (p_4 <= (p_4 < ((safe_mul_func_int8_t_s_s((safe_mul_func_int8_t_s_s(p_4, (safe_sub_func_int64_t_s_s(((*l_1361) = (l_1360[2] |= ((~(((((((*l_1328) = ((((((safe_add_func_uint32_t_u_u(((**p_1651->g_599) ^= ((&p_1651->g_593[0][1][4] == ((*l_1330) = &p_1651->g_18)) & (p_4 || (safe_mul_func_int8_t_s_s(l_1340, ((l_1357 = (safe_rshift_func_int16_t_s_s(p_4, 10))) <= l_1340)))))), l_1358)) ^ 2UL) >= l_1359) == 0x2F6DA04CL) & 9L) <= p_4)) , p_4) >= p_4) > l_1358) <= p_4) , p_4)) == p_4))), 0x75ED4704F383253CL)))), GROUP_DIVERGE(2, 1))) < 0x0AL))))))
            { /* block id: 707 */
                uint16_t ****l_1365 = (void*)0;
                uint16_t ****l_1366[7];
                int32_t l_1374 = 6L;
                int32_t l_1379 = 0L;
                int32_t l_1380 = (-1L);
                int32_t l_1381 = 1L;
                int8_t **l_1421 = (void*)0;
                int8_t ***l_1420 = &l_1421;
                uint64_t *l_1435 = &p_1651->g_45[2];
                int i;
                for (i = 0; i < 7; i++)
                    l_1366[i] = &l_1364[2][0];
                if ((((p_4 & (safe_mul_func_uint16_t_u_u((l_1357 &= p_4), ((((p_1651->g_1367 = l_1364[7][2]) != (l_1368 = &p_1651->g_587)) , ((!(((((0xC4C6L || (safe_mod_func_int32_t_s_s((safe_div_func_int8_t_s_s(((l_1373 , &p_1651->g_1367) == l_1365), (((l_1340 ^ p_4) == 0x63L) ^ l_1374))), p_4))) >= l_1360[2]) != 65535UL) , l_1375) == (void*)0)) > 65530UL)) , l_1376[1])))) , 0x7BA6FFD9L) || 0x76763E37L))
                { /* block id: 711 */
                    for (p_1651->g_131 = (-14); (p_1651->g_131 == (-8)); ++p_1651->g_131)
                    { /* block id: 714 */
                        uint64_t l_1382[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_1382[i] = 0x6DE04ACDE266A43BL;
                        l_1382[1]--;
                    }
                }
                else
                { /* block id: 717 */
                    if (p_4)
                        break;
                    if (l_1340)
                        continue;
                    l_1357 = (((l_1360[2] , p_1651->g_719[4]) , (*p_1651->g_202)) != &p_1651->g_714);
                    if (p_1651->g_1329)
                        goto lbl_1385;
                }
                if (p_4)
                    break;
                for (p_1651->g_1007 = 0; (p_1651->g_1007 <= 5); p_1651->g_1007 += 1)
                { /* block id: 726 */
                    uint16_t ***l_1394[4];
                    uint16_t ***l_1395 = &p_1651->g_587;
                    int8_t ****l_1422 = &l_1420;
                    int32_t l_1423 = 0x4A25C584L;
                    int i, j;
                    for (i = 0; i < 4; i++)
                        l_1394[i] = &p_1651->g_587;
                    for (p_1651->g_78 = 0; (p_1651->g_78 <= 1); p_1651->g_78 += 1)
                    { /* block id: 729 */
                        int32_t **l_1397 = (void*)0;
                        uint16_t ***l_1398 = &l_1375;
                        int32_t *l_1407 = (void*)0;
                        int i, j;
                        l_1332[2][7] = func_19(p_1651->g_94[p_1651->g_1007][(p_1651->g_1007 + 2)], (safe_rshift_func_uint8_t_u_s(GROUP_DIVERGE(2, 1), 5)), ((l_1379 &= (safe_lshift_func_uint8_t_u_s(((safe_mul_func_int8_t_s_s((safe_mod_func_int64_t_s_s(((l_1395 = (l_1394[0] = &l_1375)) != (p_1651->g_1399 = ((&p_1651->g_329 == (l_1397 = l_1396)) , (p_1651->g_1367 = l_1398)))), l_1376[p_1651->g_1007])), ((((0xB1C5DB56L | ((safe_div_func_uint32_t_u_u(l_1376[(p_1651->g_78 + 3)], FAKE_DIVERGE(p_1651->local_2_offset, get_local_id(2), 10))) || ((safe_div_func_uint32_t_u_u((safe_mod_func_uint32_t_u_u((0UL <= p_1651->g_380[p_1651->g_78]), p_1651->g_380[p_1651->g_78])), p_4)) & p_4))) , l_1376[(p_1651->g_78 + 3)]) != 0x172E85DF5F88F91BL) == (-10L)))) >= l_1406), 4))) , (void*)0), &l_1381, l_1407, p_1651);
                    }
                    l_1423 ^= (+(safe_div_func_uint32_t_u_u((safe_add_func_int16_t_s_s(p_1651->g_94[p_1651->g_1007][(p_1651->g_1007 + 1)], (((~(l_1373 , (-8L))) , ((*p_1651->g_954) = (safe_mod_func_uint64_t_u_u((l_1381 = GROUP_DIVERGE(1, 1)), 18446744073709551615UL)))) == (safe_sub_func_int32_t_s_s(((((+0x689CD7BEC516155DL) > p_1651->g_916) > l_1373) , (safe_sub_func_int16_t_s_s((+(safe_sub_func_uint32_t_u_u(0x6B817B9FL, (((*l_1422) = l_1420) != &l_1421)))), GROUP_DIVERGE(0, 1)))), p_4))))), l_1358)));
                    p_1651->g_94[p_1651->g_1007][(p_1651->g_1007 + 1)] ^= p_4;
                    if (l_1423)
                        continue;
                }
                l_1358 = (((l_1357 <= (((void*)0 != (*l_1375)) > ((*l_1435) = (((!((p_4 , ((~l_1379) <= p_4)) != ((((*p_1651->g_954) = p_4) < (safe_mod_func_int8_t_s_s((l_1433 = (safe_mul_func_int8_t_s_s(0x20L, ((((safe_add_func_uint8_t_u_u((safe_div_func_uint32_t_u_u(p_4, l_1432)), 0x0DL)) || l_1358) , (void*)0) != (void*)0)))), p_4))) == p_4))) | 0xCCB5FC7FL) || l_1434)))) , GROUP_DIVERGE(2, 1)) || 4UL);
            }
            else
            { /* block id: 749 */
                uint32_t l_1440 = 1UL;
                int32_t l_1441 = 0x1BA12174L;
                int32_t **l_1451 = &l_1331;
                l_1358 |= ((safe_lshift_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_u((l_1441 = (l_1440 <= 0UL)), (safe_div_func_uint16_t_u_u(65535UL, p_4)))), 15)) < (+(((safe_unary_minus_func_int16_t_s(l_1440)) != (((safe_add_func_uint32_t_u_u(l_1360[2], (safe_mul_func_uint16_t_u_u((0UL && ((safe_lshift_func_int16_t_s_s(((void*)0 != (*p_1651->g_953)), 15)) <= 1L)), (-1L))))) == 0x5E3BA766AE2A7AABL) , 0x1201B5A3L)) <= 0xA20AL)));
                (*l_1451) = &l_1360[2];
                for (l_1433 = 0; (l_1433 < (-2)); l_1433 = safe_sub_func_int16_t_s_s(l_1433, 4))
                { /* block id: 755 */
                    int32_t *l_1454[9][3] = {{(void*)0,(void*)0,&l_1357},{(void*)0,(void*)0,&l_1357},{(void*)0,(void*)0,&l_1357},{(void*)0,(void*)0,&l_1357},{(void*)0,(void*)0,&l_1357},{(void*)0,(void*)0,&l_1357},{(void*)0,(void*)0,&l_1357},{(void*)0,(void*)0,&l_1357},{(void*)0,(void*)0,&l_1357}};
                    int i, j;
                    return (*p_1651->g_192);
                }
                return (*p_1651->g_192);
            }
            l_1457--;
            l_1360[3] = (((-1L) && (((safe_mul_func_uint8_t_u_u((l_1360[2] || ((safe_mul_func_uint8_t_u_u((l_1358 = (safe_mul_func_uint8_t_u_u(0x63L, ((safe_lshift_func_uint16_t_u_u(65528UL, ((((p_4 && p_1651->g_1468[2]) & (((safe_div_func_uint32_t_u_u((((p_4 & ((0x50DC4BC3L != (0UL != l_1357)) >= 0xCEL)) && p_4) != (-1L)), p_4)) , p_4) < 0x37FD767DL)) || p_1651->g_1471[3]) , GROUP_DIVERGE(1, 1)))) > p_4)))), p_4)) < p_4)), p_4)) > p_4) | p_1651->g_1468[0])) | l_1360[2]);
        }
    }
    for (p_1651->g_240 = 29; (p_1651->g_240 != 12); --p_1651->g_240)
    { /* block id: 767 */
        uint32_t l_1486[2];
        int32_t l_1492 = 0x19FEE974L;
        int32_t l_1508[1];
        uint16_t l_1514 = 0UL;
        int64_t ***l_1542 = &p_1651->g_1541;
        int i;
        for (i = 0; i < 2; i++)
            l_1486[i] = 1UL;
        for (i = 0; i < 1; i++)
            l_1508[i] = 0x0844F5FCL;
        (*p_1651->g_1476) = p_1651->g_1474[1][1];
        for (p_1651->g_488 = 0; (p_1651->g_488 <= 3); p_1651->g_488 += 1)
        { /* block id: 771 */
            int32_t *l_1485[8] = {&p_1651->g_199,&p_1651->g_199,&p_1651->g_199,&p_1651->g_199,&p_1651->g_199,&p_1651->g_199,&p_1651->g_199,&p_1651->g_199};
            int64_t ****l_1487 = &l_1327;
            int16_t l_1507[8] = {0x408BL,0x107AL,0x408BL,0x408BL,0x107AL,0x408BL,0x408BL,0x107AL};
            uint8_t *l_1524 = &p_1651->g_318[0][2];
            int32_t *l_1531 = &p_1651->g_1471[3];
            int i;
            for (p_1651->g_484 = 0; (p_1651->g_484 <= 3); p_1651->g_484 += 1)
            { /* block id: 774 */
                uint32_t l_1491 = 1UL;
                int32_t l_1509 = 0L;
                int32_t l_1510 = 0x3EE37DA8L;
                int32_t l_1511 = 1L;
                int32_t l_1512 = 0x22DC34CDL;
                int32_t l_1513 = 0x1CA71E74L;
                for (p_1651->g_97 = 3; (p_1651->g_97 >= 0); p_1651->g_97 -= 1)
                { /* block id: 777 */
                    int64_t *****l_1490 = &p_1651->g_1488;
                    int i, j, k;
                    l_1492 |= (l_1491 &= (safe_rshift_func_int16_t_s_s((safe_mul_func_int16_t_s_s(((safe_sub_func_uint64_t_u_u((0x34F96FD363BA97C0L && (safe_mod_func_uint64_t_u_u(((l_1485[5] != (void*)0) > l_1486[1]), ((!(((((l_1487 == ((*l_1490) = p_1651->g_1488)) , ((~(((**p_1651->g_953) == p_4) == ((p_4 | p_4) == 1L))) >= p_4)) || p_4) == 0L) > FAKE_DIVERGE(p_1651->local_2_offset, get_local_id(2), 10))) || p_4)))), 18446744073709551615UL)) != p_4), p_4)), 15)));
                }
                for (p_4 = 0; (p_4 != 59); p_4 = safe_add_func_uint64_t_u_u(p_4, 6))
                { /* block id: 784 */
                    uint16_t l_1499[2];
                    int64_t *l_1500 = &p_1651->g_285[0];
                    int32_t l_1503 = (-1L);
                    int32_t l_1505 = (-5L);
                    int32_t l_1506 = 5L;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_1499[i] = 0xC3F2L;
                    (*p_1651->g_192) = (((**p_1651->g_953) , ((safe_add_func_int32_t_s_s((l_1492 = p_4), ((safe_div_func_int8_t_s_s(l_1491, (p_4 && ((!l_1499[1]) && ((*l_1500) &= ((void*)0 == (*p_1651->g_1488))))))) ^ (((**p_1651->g_953) = (*p_1651->g_954)) == (safe_rshift_func_int16_t_s_u(0x4AEBL, l_1503)))))) , 0xFCFEF4A7C409AD9CL)) , (void*)0);
                    l_1504[0] = 2L;
                    ++l_1514;
                }
            }
            p_1651->g_1517 |= (l_1492 = p_4);
            if ((safe_mul_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u(p_4, 7)), (+(l_1508[0] = ((safe_rshift_func_uint16_t_u_s(((void*)0 == l_1524), (safe_div_func_uint64_t_u_u((*p_1651->g_954), (safe_mul_func_uint8_t_u_u((safe_mul_func_int16_t_s_s(p_4, ((p_4 == p_4) < (p_4 , p_4)))), p_4)))))) < 0x429B7E1582A3CBA9L))))))
            { /* block id: 796 */
                int32_t **l_1533 = &l_1485[5];
                (*l_1533) = l_1531;
            }
            else
            { /* block id: 798 */
                for (p_1651->g_199 = 2; (p_1651->g_199 >= 0); p_1651->g_199 -= 1)
                { /* block id: 801 */
                    int32_t *l_1534[4] = {&p_1651->g_594,&p_1651->g_594,&p_1651->g_594,&p_1651->g_594};
                    int i;
                    for (l_1514 = 0; (l_1514 <= 2); l_1514 += 1)
                    { /* block id: 804 */
                        int i;
                        if (p_1651->g_1471[p_1651->g_199])
                            break;
                        p_1651->g_1471[p_1651->g_488] ^= 0x198FF56AL;
                    }
                    l_1534[3] = (void*)0;
                    if (p_1651->g_1471[p_1651->g_488])
                        continue;
                }
            }
        }
        l_1492 = ((safe_rshift_func_int16_t_s_u((safe_sub_func_uint8_t_u_u((65530UL >= GROUP_DIVERGE(1, 1)), ((p_4 > 0xEC05L) && p_4))), (l_1539 == ((*l_1542) = p_1651->g_1541)))) > l_1508[0]);
    }
    return (*p_1651->g_192);
}


/* ------------------------------------------ */
/* 
 * reads : p_1651->g_146 p_1651->g_488 p_1651->g_192 p_1651->g_111
 * writes: p_1651->g_146 p_1651->g_488 p_1651->g_278 p_1651->g_67 p_1651->g_392 p_1651->g_41 p_1651->g_172
 */
int32_t * func_19(int32_t  p_20, uint32_t  p_21, int32_t * p_22, int32_t * p_23, int32_t * p_24, struct S0 * p_1651)
{ /* block id: 423 */
    int32_t ***l_805[6][2][1];
    uint32_t **l_810 = &p_1651->g_460;
    int32_t *l_813[6][8][2] = {{{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194}},{{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194}},{{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194}},{{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194}},{{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194}},{{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194},{&p_1651->g_78,&p_1651->g_194}}};
    int16_t *l_816 = (void*)0;
    int8_t l_823 = 0x7FL;
    uint16_t l_824 = 65529UL;
    int32_t l_873 = 8L;
    int16_t **l_876 = &l_816;
    uint32_t l_906 = 2UL;
    int16_t l_908[4];
    int32_t l_917 = 0x1A0AC74CL;
    uint64_t *l_932 = &p_1651->g_45[0];
    uint32_t l_1029 = 0x3DA9F34EL;
    uint32_t l_1209 = 0xB6A6731FL;
    int32_t *l_1263[3];
    int16_t l_1300 = 0x4CCCL;
    uint16_t l_1316 = 0UL;
    uint64_t l_1319[10][8] = {{0xFFD283EA79B2F8EEL,18446744073709551613UL,18446744073709551615UL,7UL,0x5783B027863EBAA5L,0xFFD283EA79B2F8EEL,7UL,1UL},{0xFFD283EA79B2F8EEL,18446744073709551613UL,18446744073709551615UL,7UL,0x5783B027863EBAA5L,0xFFD283EA79B2F8EEL,7UL,1UL},{0xFFD283EA79B2F8EEL,18446744073709551613UL,18446744073709551615UL,7UL,0x5783B027863EBAA5L,0xFFD283EA79B2F8EEL,7UL,1UL},{0xFFD283EA79B2F8EEL,18446744073709551613UL,18446744073709551615UL,7UL,0x5783B027863EBAA5L,0xFFD283EA79B2F8EEL,7UL,1UL},{0xFFD283EA79B2F8EEL,18446744073709551613UL,18446744073709551615UL,7UL,0x5783B027863EBAA5L,0xFFD283EA79B2F8EEL,7UL,1UL},{0xFFD283EA79B2F8EEL,18446744073709551613UL,18446744073709551615UL,7UL,0x5783B027863EBAA5L,0xFFD283EA79B2F8EEL,7UL,1UL},{0xFFD283EA79B2F8EEL,18446744073709551613UL,18446744073709551615UL,7UL,0x5783B027863EBAA5L,0xFFD283EA79B2F8EEL,7UL,1UL},{0xFFD283EA79B2F8EEL,18446744073709551613UL,18446744073709551615UL,7UL,0x5783B027863EBAA5L,0xFFD283EA79B2F8EEL,7UL,1UL},{0xFFD283EA79B2F8EEL,18446744073709551613UL,18446744073709551615UL,7UL,0x5783B027863EBAA5L,0xFFD283EA79B2F8EEL,7UL,1UL},{0xFFD283EA79B2F8EEL,18446744073709551613UL,18446744073709551615UL,7UL,0x5783B027863EBAA5L,0xFFD283EA79B2F8EEL,7UL,1UL}};
    int i, j, k;
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 1; k++)
                l_805[i][j][k] = &p_1651->g_110[0];
        }
    }
    for (i = 0; i < 4; i++)
        l_908[i] = 0x7048L;
    for (i = 0; i < 3; i++)
        l_1263[i] = &p_1651->g_78;
    p_24 = &p_20;
    for (p_1651->g_146 = 0; (p_1651->g_146 <= 51); p_1651->g_146++)
    { /* block id: 428 */
        int16_t l_819 = (-5L);
        int32_t l_820 = (-3L);
        int32_t l_821 = 0x1D5031BEL;
        int32_t l_822[6][5] = {{0x538C5C2FL,9L,0x538C5C2FL,0x538C5C2FL,9L},{0x538C5C2FL,9L,0x538C5C2FL,0x538C5C2FL,9L},{0x538C5C2FL,9L,0x538C5C2FL,0x538C5C2FL,9L},{0x538C5C2FL,9L,0x538C5C2FL,0x538C5C2FL,9L},{0x538C5C2FL,9L,0x538C5C2FL,0x538C5C2FL,9L},{0x538C5C2FL,9L,0x538C5C2FL,0x538C5C2FL,9L}};
        uint32_t l_920 = 0x4EC2C44AL;
        uint64_t **l_956 = (void*)0;
        int64_t **l_957 = &p_1651->g_399;
        int16_t l_990 = 0L;
        int8_t *l_995 = &l_823;
        int8_t **l_994 = &l_995;
        int8_t l_1032 = 0x02L;
        int8_t l_1034 = 0x18L;
        uint8_t *l_1045 = (void*)0;
        int64_t *l_1046 = &p_1651->g_243;
        int16_t l_1060 = (-9L);
        int16_t l_1077 = 6L;
        uint32_t **l_1079 = &p_1651->g_714;
        int i, j;
        l_824--;
    }
    for (l_1029 = 0; (l_1029 >= 34); l_1029 = safe_add_func_int64_t_s_s(l_1029, 2))
    { /* block id: 597 */
        int32_t **l_1085 = &p_1651->g_329;
        int8_t l_1090 = 0x7DL;
        uint32_t *****l_1091 = &p_1651->g_986;
        uint16_t *l_1094[5];
        uint8_t *l_1100 = (void*)0;
        uint8_t **l_1099 = &l_1100;
        int32_t l_1103 = 0x63D75EE9L;
        int32_t l_1105 = 9L;
        int32_t l_1106 = 0x07E22564L;
        int32_t l_1108 = (-1L);
        int32_t l_1109 = 0x5189AB9FL;
        int32_t l_1110 = 0x199132CEL;
        int32_t l_1114 = 0L;
        int32_t l_1115 = 1L;
        int32_t l_1116 = 0x730F855EL;
        int64_t l_1152 = 0x4A05BFACFD88DC5CL;
        uint32_t l_1158 = 4UL;
        int8_t l_1183[6][9][4];
        uint8_t l_1190 = 250UL;
        int16_t l_1210 = 0x242BL;
        uint64_t l_1211 = 18446744073709551615UL;
        int32_t **l_1250 = (void*)0;
        int32_t *l_1289 = &l_917;
        uint32_t ****l_1298 = (void*)0;
        int64_t *l_1299 = &p_1651->g_285[0];
        int32_t *l_1301 = &p_1651->g_743;
        int8_t *l_1317 = &p_1651->g_916;
        int8_t *l_1318[4][3][9] = {{{&p_1651->g_131,&p_1651->g_1006,(void*)0,&p_1651->g_1006,&p_1651->g_131,&p_1651->g_131,&p_1651->g_1006,(void*)0,&p_1651->g_1006},{&p_1651->g_131,&p_1651->g_1006,(void*)0,&p_1651->g_1006,&p_1651->g_131,&p_1651->g_131,&p_1651->g_1006,(void*)0,&p_1651->g_1006},{&p_1651->g_131,&p_1651->g_1006,(void*)0,&p_1651->g_1006,&p_1651->g_131,&p_1651->g_131,&p_1651->g_1006,(void*)0,&p_1651->g_1006}},{{&p_1651->g_131,&p_1651->g_1006,(void*)0,&p_1651->g_1006,&p_1651->g_131,&p_1651->g_131,&p_1651->g_1006,(void*)0,&p_1651->g_1006},{&p_1651->g_131,&p_1651->g_1006,(void*)0,&p_1651->g_1006,&p_1651->g_131,&p_1651->g_131,&p_1651->g_1006,(void*)0,&p_1651->g_1006},{&p_1651->g_131,&p_1651->g_1006,(void*)0,&p_1651->g_1006,&p_1651->g_131,&p_1651->g_131,&p_1651->g_1006,(void*)0,&p_1651->g_1006}},{{&p_1651->g_131,&p_1651->g_1006,(void*)0,&p_1651->g_1006,&p_1651->g_131,&p_1651->g_131,&p_1651->g_1006,(void*)0,&p_1651->g_1006},{&p_1651->g_131,&p_1651->g_1006,(void*)0,&p_1651->g_1006,&p_1651->g_131,&p_1651->g_131,&p_1651->g_1006,(void*)0,&p_1651->g_1006},{&p_1651->g_131,&p_1651->g_1006,(void*)0,&p_1651->g_1006,&p_1651->g_131,&p_1651->g_131,&p_1651->g_1006,(void*)0,&p_1651->g_1006}},{{&p_1651->g_131,&p_1651->g_1006,(void*)0,&p_1651->g_1006,&p_1651->g_131,&p_1651->g_131,&p_1651->g_1006,(void*)0,&p_1651->g_1006},{&p_1651->g_131,&p_1651->g_1006,(void*)0,&p_1651->g_1006,&p_1651->g_131,&p_1651->g_131,&p_1651->g_1006,(void*)0,&p_1651->g_1006},{&p_1651->g_131,&p_1651->g_1006,(void*)0,&p_1651->g_1006,&p_1651->g_131,&p_1651->g_131,&p_1651->g_1006,(void*)0,&p_1651->g_1006}}};
        uint64_t l_1320 = 1UL;
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_1094[i] = &l_824;
        for (i = 0; i < 6; i++)
        {
            for (j = 0; j < 9; j++)
            {
                for (k = 0; k < 4; k++)
                    l_1183[i][j][k] = 0x02L;
            }
        }
        (1 + 1);
    }
    for (p_1651->g_488 = 0; (p_1651->g_488 != 11); p_1651->g_488 = safe_add_func_int16_t_s_s(p_1651->g_488, 8))
    { /* block id: 684 */
        uint32_t l_1323 = 0x7B7CF0C8L;
        if ((*p_24))
            break;
        if (l_1323)
            break;
        for (p_1651->g_278 = 0; p_1651->g_278 < 6; p_1651->g_278 += 1)
        {
            for (p_1651->g_67 = 0; p_1651->g_67 < 2; p_1651->g_67 += 1)
            {
                for (p_1651->g_392 = 0; p_1651->g_392 < 1; p_1651->g_392 += 1)
                {
                    l_805[p_1651->g_278][p_1651->g_67][p_1651->g_392] = (void*)0;
                }
            }
        }
        for (p_1651->g_41 = 0; p_1651->g_41 < 9; p_1651->g_41 += 1)
        {
            for (l_1209 = 0; l_1209 < 4; l_1209 += 1)
            {
                p_1651->g_172[p_1651->g_41][l_1209] = 248UL;
            }
        }
    }
    return (*p_1651->g_192);
}


/* ------------------------------------------ */
/* 
 * reads : p_1651->g_417 p_1651->g_comm_values p_1651->g_380 p_1651->g_41 p_1651->g_94 p_1651->g_199 p_1651->g_599 p_1651->g_600 p_1651->g_131 p_1651->g_318
 * writes: p_1651->g_380 p_1651->g_199 p_1651->g_601 p_1651->g_417 p_1651->g_41
 */
int64_t  func_27(int32_t  p_28, uint32_t  p_29, uint32_t  p_30, uint32_t  p_31, struct S0 * p_1651)
{ /* block id: 411 */
    uint32_t l_763 = 0x6756CC4DL;
    int32_t l_764 = 0x46DED0EDL;
    int32_t *l_765 = &p_1651->g_199;
    int32_t *l_766 = &p_1651->g_41;
    int32_t *l_767 = (void*)0;
    int32_t *l_768 = &p_1651->g_94[0][3];
    int32_t *l_769[10][7] = {{&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0]},{&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0]},{&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0]},{&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0]},{&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0]},{&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0]},{&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0]},{&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0]},{&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0]},{&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0],&p_1651->g_94[0][0]}};
    uint32_t l_770 = 0xEB3E02D2L;
    int64_t **l_779[5][9][5] = {{{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399}},{{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399}},{{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399}},{{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399}},{{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399},{&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399,&p_1651->g_399}}};
    int64_t ***l_780 = &l_779[1][6][0];
    int64_t **l_781 = &p_1651->g_399;
    int64_t ***l_782 = &l_781;
    uint8_t *l_787 = &p_1651->g_380[1];
    uint64_t *l_797 = &p_1651->g_370[1];
    uint64_t **l_796 = &l_797;
    uint16_t *l_800 = (void*)0;
    uint16_t *l_801 = &p_1651->g_417;
    uint8_t l_802 = 255UL;
    int16_t l_803 = 0L;
    int i, j, k;
    l_764 ^= l_763;
    --l_770;
    l_803 ^= ((*l_766) = (p_1651->g_417 || (safe_add_func_int16_t_s_s(((safe_add_func_uint64_t_u_u(p_1651->g_comm_values[p_1651->tid], ((0x30260CE8L != (((~((((safe_add_func_uint16_t_u_u((((*l_780) = l_779[0][7][4]) == ((*l_782) = l_781)), (safe_div_func_uint64_t_u_u((safe_sub_func_uint8_t_u_u(((*l_787)--), (p_30 , (safe_lshift_func_int16_t_s_s(((*l_766) , ((safe_mul_func_uint16_t_u_u(((*l_801) &= (safe_lshift_func_int8_t_s_s((((**p_1651->g_599) = (l_796 == ((FAKE_DIVERGE(p_1651->global_2_offset, get_global_id(2), 10) , ((safe_add_func_uint16_t_u_u(((*l_765) &= ((FAKE_DIVERGE(p_1651->group_2_offset, get_group_id(2), 10) ^ p_29) ^ (*l_768))), 65527UL)) , (*l_766))) , (void*)0))) , p_1651->g_131), 4))), p_28)) , 0x1D22L)), 0))))), 0xEFD259D54F72B926L)))) < p_29) == p_1651->g_318[0][2]) ^ (*l_768))) , l_802) , p_30)) ^ p_30))) && (*l_766)), p_30))));
    return p_30;
}


/* ------------------------------------------ */
/* 
 * reads : p_1651->g_45 p_1651->g_65 p_1651->l_comm_values p_1651->g_67 p_1651->g_94 p_1651->g_97 p_1651->g_78 p_1651->g_192 p_1651->g_194 p_1651->g_201 p_1651->g_202 p_1651->g_190 p_1651->g_131 p_1651->g_199 p_1651->g_172 p_1651->g_232 p_1651->g_240 p_1651->g_243 p_1651->g_comm_values p_1651->g_41 p_1651->g_285 p_1651->g_146 p_1651->g_329 p_1651->g_370 p_1651->g_328 p_1651->g_318 p_1651->g_378 p_1651->g_380 p_1651->g_392 p_1651->g_397 p_1651->g_278 p_1651->g_459 p_1651->g_417 p_1651->g_479 p_1651->g_171 p_1651->g_484 p_1651->g_262 p_1651->g_111 p_1651->g_578 p_1651->g_592 p_1651->g_594 p_1651->g_583 p_1651->g_599 p_1651->g_601 p_1651->g_719 p_1651->g_721 p_1651->g_732 p_1651->g_743
 * writes: p_1651->g_45 p_1651->g_65 p_1651->g_67 p_1651->g_78 p_1651->g_41 p_1651->g_94 p_1651->g_97 p_1651->g_111 p_1651->g_194 p_1651->g_201 p_1651->g_190 p_1651->g_199 p_1651->g_232 p_1651->g_131 p_1651->g_240 p_1651->g_243 p_1651->g_278 p_1651->g_285 p_1651->g_318 p_1651->g_146 p_1651->g_328 p_1651->g_370 p_1651->g_110 p_1651->g_380 p_1651->g_392 p_1651->g_398 p_1651->g_417 p_1651->g_479 p_1651->g_488 p_1651->g_484 p_1651->g_459 p_1651->g_587 p_1651->g_589 p_1651->g_601 p_1651->g_593 p_1651->g_714 p_1651->l_comm_values p_1651->g_721
 */
int16_t  func_36(int32_t * p_37, struct S0 * p_1651)
{ /* block id: 7 */
    int64_t l_38 = 0L;
    int32_t l_42 = 3L;
    int32_t l_43 = (-8L);
    int32_t l_44 = (-1L);
    int16_t l_606[8][4];
    int32_t l_637 = 1L;
    int32_t **l_647 = (void*)0;
    int32_t l_677 = 0x3FB865F0L;
    int32_t l_683 = 0x2DB52C13L;
    int16_t l_706[2][1];
    int64_t ***l_709[1];
    uint32_t ***l_717 = &p_1651->g_459;
    uint16_t *l_744 = &p_1651->g_417;
    uint32_t l_754 = 0xD2FCA3FCL;
    uint8_t *l_756 = &p_1651->g_318[0][2];
    int i, j;
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 4; j++)
            l_606[i][j] = 0L;
    }
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
            l_706[i][j] = 0L;
    }
    for (i = 0; i < 1; i++)
        l_709[i] = (void*)0;
    (*p_37) |= (-1L);
    if (l_38)
    { /* block id: 9 */
        int32_t *l_39 = (void*)0;
        int32_t *l_40[3][7][8] = {{{&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,(void*)0,(void*)0,&p_1651->g_41,(void*)0},{&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,(void*)0,(void*)0,&p_1651->g_41,(void*)0},{&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,(void*)0,(void*)0,&p_1651->g_41,(void*)0},{&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,(void*)0,(void*)0,&p_1651->g_41,(void*)0},{&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,(void*)0,(void*)0,&p_1651->g_41,(void*)0},{&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,(void*)0,(void*)0,&p_1651->g_41,(void*)0},{&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,(void*)0,(void*)0,&p_1651->g_41,(void*)0}},{{&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,(void*)0,(void*)0,&p_1651->g_41,(void*)0},{&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,(void*)0,(void*)0,&p_1651->g_41,(void*)0},{&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,(void*)0,(void*)0,&p_1651->g_41,(void*)0},{&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,(void*)0,(void*)0,&p_1651->g_41,(void*)0},{&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,(void*)0,(void*)0,&p_1651->g_41,(void*)0},{&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,(void*)0,(void*)0,&p_1651->g_41,(void*)0},{&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,(void*)0,(void*)0,&p_1651->g_41,(void*)0}},{{&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,(void*)0,(void*)0,&p_1651->g_41,(void*)0},{&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,(void*)0,(void*)0,&p_1651->g_41,(void*)0},{&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,(void*)0,(void*)0,&p_1651->g_41,(void*)0},{&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,(void*)0,(void*)0,&p_1651->g_41,(void*)0},{&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,(void*)0,(void*)0,&p_1651->g_41,(void*)0},{&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,(void*)0,(void*)0,&p_1651->g_41,(void*)0},{&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,&p_1651->g_41,(void*)0,(void*)0,&p_1651->g_41,(void*)0}}};
        int16_t *l_63 = (void*)0;
        int16_t *l_64 = &p_1651->g_65;
        int16_t *l_66 = &p_1651->g_67;
        int32_t **l_68 = &l_40[0][6][4];
        int32_t **l_596 = &p_1651->g_593[2][3][7];
        int32_t ***l_595 = &l_596;
        uint32_t *l_603 = &p_1651->g_601;
        uint32_t **l_602 = &l_603;
        int32_t l_642 = 0x411CAE52L;
        int64_t l_678 = (-1L);
        uint16_t l_755 = 0xC330L;
        int i, j, k;
lbl_607:
        p_1651->g_45[0]--;
        if (((safe_lshift_func_int8_t_s_s(l_43, (safe_sub_func_int32_t_s_s((safe_sub_func_uint32_t_u_u(((**l_602) |= (safe_lshift_func_uint16_t_u_s(((safe_div_func_uint8_t_u_u((~l_38), ((func_60(((*l_66) = ((*l_64) ^= l_44)), ((*l_68) = &p_1651->g_41), p_1651) < (((p_1651->g_592[2][5][1] != ((*l_595) = &p_1651->g_593[0][1][7])) || (p_1651->g_594 , (((l_42 ^= ((safe_mul_func_uint8_t_u_u(p_1651->g_583[1], p_1651->g_583[5])) , l_44)) , p_1651->g_599) == l_602))) <= l_44)) ^ l_44))) && l_42), l_44))), p_1651->g_594)), 0x47109A72L)))) , 8L))
        { /* block id: 314 */
            uint8_t l_608 = 0UL;
            int8_t *l_634 = &p_1651->g_131;
            uint16_t l_638 = 8UL;
            int32_t **l_646 = (void*)0;
            int16_t l_664 = 0x716BL;
            int32_t *l_667[8] = {&p_1651->g_78,&p_1651->g_78,&p_1651->g_78,&p_1651->g_78,&p_1651->g_78,&p_1651->g_78,&p_1651->g_78,&p_1651->g_78};
            int32_t l_681[8][3][3] = {{{0x0A98D728L,(-1L),(-10L)},{0x0A98D728L,(-1L),(-10L)},{0x0A98D728L,(-1L),(-10L)}},{{0x0A98D728L,(-1L),(-10L)},{0x0A98D728L,(-1L),(-10L)},{0x0A98D728L,(-1L),(-10L)}},{{0x0A98D728L,(-1L),(-10L)},{0x0A98D728L,(-1L),(-10L)},{0x0A98D728L,(-1L),(-10L)}},{{0x0A98D728L,(-1L),(-10L)},{0x0A98D728L,(-1L),(-10L)},{0x0A98D728L,(-1L),(-10L)}},{{0x0A98D728L,(-1L),(-10L)},{0x0A98D728L,(-1L),(-10L)},{0x0A98D728L,(-1L),(-10L)}},{{0x0A98D728L,(-1L),(-10L)},{0x0A98D728L,(-1L),(-10L)},{0x0A98D728L,(-1L),(-10L)}},{{0x0A98D728L,(-1L),(-10L)},{0x0A98D728L,(-1L),(-10L)},{0x0A98D728L,(-1L),(-10L)}},{{0x0A98D728L,(-1L),(-10L)},{0x0A98D728L,(-1L),(-10L)},{0x0A98D728L,(-1L),(-10L)}}};
            uint32_t l_684[5];
            int16_t **l_694 = &l_64;
            int16_t **l_695 = &l_64;
            int i, j, k;
            for (i = 0; i < 5; i++)
                l_684[i] = 0xB532D647L;
            for (p_1651->g_41 = (-9); (p_1651->g_41 == (-5)); p_1651->g_41 = safe_add_func_int8_t_s_s(p_1651->g_41, 1))
            { /* block id: 317 */
                uint8_t l_636 = 1UL;
                int32_t **l_650 = &p_1651->g_111;
                if (l_606[6][0])
                { /* block id: 318 */
                    if (p_1651->g_232)
                        goto lbl_607;
                    return l_608;
                }
                else
                { /* block id: 321 */
                    uint8_t l_635[5][10][5] = {{{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL}},{{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL}},{{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL}},{{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL}},{{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL},{6UL,253UL,253UL,6UL,0UL}}};
                    int32_t l_639[4] = {1L,1L,1L,1L};
                    int32_t **l_645 = (void*)0;
                    uint32_t l_653 = 0UL;
                    int64_t *l_660 = &l_38;
                    int i, j, k;
                    for (l_43 = 0; (l_43 != 7); l_43 = safe_add_func_int32_t_s_s(l_43, 2))
                    { /* block id: 324 */
                        int32_t ***l_627[3];
                        int i;
                        for (i = 0; i < 3; i++)
                            l_627[i] = &l_68;
                        l_639[3] = (safe_unary_minus_func_uint32_t_u((((safe_rshift_func_int16_t_s_s((safe_unary_minus_func_uint16_t_u(((safe_div_func_int64_t_s_s(l_606[6][0], (safe_rshift_func_int16_t_s_s((((249UL <= (l_608 != (safe_div_func_int8_t_s_s((safe_sub_func_uint64_t_u_u(((*p_37) , ((safe_mul_func_int8_t_s_s((((void*)0 == l_627[2]) < (safe_lshift_func_int16_t_s_u(0x43FCL, l_43))), (safe_sub_func_uint16_t_u_u(((safe_mul_func_uint8_t_u_u(((l_634 != &p_1651->g_262) | p_1651->g_583[4]), l_635[0][0][2])) == l_608), p_1651->g_370[0])))) <= l_635[0][0][2])), p_1651->g_479)), l_636)))) | l_637) != 5UL), 11)))) , l_638))), l_635[1][9][2])) != 0xABF0L) <= GROUP_DIVERGE(1, 1))));
                        (*l_68) = ((**l_595) = (*p_1651->g_192));
                        return p_1651->g_94[2][9];
                    }
                    for (p_1651->g_328 = 26; (p_1651->g_328 > (-19)); p_1651->g_328 = safe_sub_func_int64_t_s_s(p_1651->g_328, 2))
                    { /* block id: 332 */
                        if ((*p_37))
                            break;
                    }
                    if (l_642)
                        break;
                    if ((((*l_64) = l_42) , ((~((l_635[0][0][2] <= (((((*l_595) = l_645) != (l_647 = l_646)) , (+(safe_mul_func_uint16_t_u_u(((l_650 != ((*l_595) = &p_1651->g_593[0][1][7])) < ((*l_660) = (safe_lshift_func_int16_t_s_s(((*l_64) = ((((&l_38 == ((l_653 || (((safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_1651->global_0_offset, get_global_id(0), 10), (((safe_div_func_int64_t_s_s((safe_sub_func_int16_t_s_s(((((*l_602) = &p_1651->g_601) == (void*)0) == l_639[3]), (-5L))), p_1651->g_94[1][5])) < (-3L)) == l_636))) && p_1651->g_318[0][2]) & (*p_37))) , &p_1651->g_285[0])) , 0x0C2554D0L) != 0xB57AFDCBL) != 0x56L)), p_1651->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1651->tid, 13))])))), p_1651->g_243)))) <= l_637)) > (*p_37))) , 3L)))
                    { /* block id: 343 */
                        uint32_t l_661[6] = {0x4A45BC9CL,4294967289UL,0x4A45BC9CL,0x4A45BC9CL,4294967289UL,0x4A45BC9CL};
                        int i;
                        --l_661[1];
                        return l_653;
                    }
                    else
                    { /* block id: 346 */
                        return l_664;
                    }
                }
            }
            if ((*p_37))
            { /* block id: 351 */
                uint16_t l_672 = 0x4D46L;
                uint16_t *l_679 = &p_1651->g_488;
                uint8_t *l_680 = &p_1651->g_278;
                int32_t l_682[4] = {(-1L),(-1L),(-1L),(-1L)};
                int i;
                p_37 = (*p_1651->g_192);
                l_684[4]++;
            }
            else
            { /* block id: 357 */
                uint32_t l_693 = 4294967295UL;
                for (p_1651->g_190 = 0; (p_1651->g_190 > 50); p_1651->g_190++)
                { /* block id: 360 */
                    (*l_596) = p_37;
                }
                (*p_37) = (safe_sub_func_int32_t_s_s(((l_606[5][3] | (safe_mul_func_int8_t_s_s(l_693, ((*l_634) = ((((~(l_694 == l_695)) , ((safe_sub_func_uint32_t_u_u((safe_sub_func_int16_t_s_s((((-1L) || 0x5BF0D90F2342CA9CL) > (safe_lshift_func_int16_t_s_u((safe_sub_func_int64_t_s_s(((((safe_add_func_int64_t_s_s(l_693, l_706[1][0])) , (((l_684[2] >= (-6L)) && p_1651->g_262) ^ l_693)) , 4294967289UL) <= p_1651->g_370[1]), p_1651->g_67)), 5))), l_684[4])), l_693)) , (-1L))) , 4294967292UL) | (*p_37)))))) , 0x7093FE10L), 1UL));
                (*p_37) = ((*p_37) ^ 0x301A2F06L);
            }
        }
        else
        { /* block id: 367 */
            int64_t ***l_708 = &p_1651->g_398;
            int64_t ****l_707 = &l_708;
            uint32_t *l_711 = &p_1651->g_601;
            uint32_t **l_710 = &l_711;
            uint32_t *l_713 = &p_1651->g_601;
            uint32_t **l_712[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            uint32_t ****l_718 = &l_717;
            uint64_t *l_720 = &p_1651->g_721;
            uint16_t *l_722 = &p_1651->g_488;
            int32_t l_730 = 9L;
            int32_t l_731 = 0x29B4ABB6L;
            int32_t **l_753 = &p_1651->g_593[2][0][5];
            int32_t *l_757 = (void*)0;
            int32_t *l_758 = &l_42;
            int i;
            (*p_37) = (p_1651->g_232 >= (((p_1651->g_45[0] |= 18446744073709551615UL) > (((p_1651->g_370[0] >= (((*l_707) = &p_1651->g_398) != (l_677 , l_709[0]))) <= ((*l_722) = (((p_1651->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1651->tid, 13))] = (((*l_710) = ((*l_602) = &p_1651->g_479)) != (p_1651->g_714 = &p_1651->g_479))) || (!((*l_720) ^= (safe_div_func_int16_t_s_s((+((*l_66) = (((*l_718) = l_717) != &p_1651->g_459))), p_1651->g_719[2]))))) <= l_606[6][0]))) > p_1651->g_94[0][6])) >= FAKE_DIVERGE(p_1651->global_2_offset, get_global_id(2), 10)));
            for (p_1651->g_65 = 20; (p_1651->g_65 > 8); p_1651->g_65 = safe_sub_func_int64_t_s_s(p_1651->g_65, 5))
            { /* block id: 381 */
                uint32_t *l_727 = &p_1651->g_232;
                int32_t l_735 = 1L;
                uint16_t *l_736 = &p_1651->g_417;
                (*p_1651->g_732) = (((safe_sub_func_int32_t_s_s((p_1651->g_262 , ((*p_37) = ((((*l_727) = 4294967290UL) , (safe_sub_func_uint64_t_u_u(9UL, GROUP_DIVERGE(0, 1)))) || (((((((l_731 |= (!(l_683 = (0UL <= (l_730 == (((*l_68) = &l_730) == (void*)0)))))) & ((*l_720) = p_1651->g_278)) > l_730) <= 1L) , 0x83L) && 0UL) & 0x273F8556L)))), 0x66F27135L)) & l_730) || 0x23L);
                (*p_37) = (l_731 = ((safe_div_func_int32_t_s_s(((((((((*l_736) = ((*l_722) = l_735)) > l_730) & l_735) , (((void*)0 != (*p_1651->g_202)) & (safe_sub_func_int16_t_s_s((safe_add_func_uint32_t_u_u(0x0274ABD1L, l_735)), (!(safe_mul_func_int8_t_s_s(((!p_1651->g_328) , (((*l_720) |= (p_1651->g_743 < 0x3FC3E111L)) ^ l_735)), l_735))))))) ^ p_1651->g_240) ^ l_735) & 0L), l_731)) <= p_1651->g_65));
                l_735 = ((*p_37) |= 6L);
            }
            (*l_758) |= ((((void*)0 == l_744) > (((l_731 && ((safe_lshift_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(0x7CL, (safe_div_func_uint32_t_u_u((safe_sub_func_int64_t_s_s(((l_730 , ((&l_730 != ((*l_68) = func_80(l_753, p_37, &l_606[4][1], p_37, &p_1651->g_194, p_1651))) == (-9L))) || 0xF3DF9D52L), l_754)), (*p_37))))), p_1651->g_484)) || l_755)) , l_756) == &p_1651->g_318[0][2])) || p_1651->g_172[0][0]);
        }
        return l_677;
    }
    else
    { /* block id: 401 */
        for (p_1651->g_328 = (-12); (p_1651->g_328 != (-6)); ++p_1651->g_328)
        { /* block id: 404 */
            (*p_1651->g_111) = (-10L);
        }
        (*p_1651->g_732) = (-1L);
        (*p_1651->g_111) = 0x2649E704L;
    }
    return l_706[0][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1651->l_comm_values p_1651->g_45 p_1651->g_65 p_1651->g_41 p_1651->g_67 p_1651->g_94 p_1651->g_97 p_1651->g_78 p_1651->g_192 p_1651->g_194 p_1651->g_201 p_1651->g_202 p_1651->g_190 p_1651->g_131 p_1651->g_199 p_1651->g_172 p_1651->g_232 p_1651->g_240 p_1651->g_243 p_1651->g_comm_values p_1651->g_285 p_1651->g_146 p_1651->g_329 p_1651->g_370 p_1651->g_328 p_1651->g_318 p_1651->g_378 p_1651->g_380 p_1651->g_392 p_1651->g_397 p_1651->g_278 p_1651->g_459 p_1651->g_417 p_1651->g_479 p_1651->g_171 p_1651->g_484 p_1651->g_262 p_1651->g_111 p_1651->g_578
 * writes: p_1651->g_78 p_1651->g_41 p_1651->g_94 p_1651->g_97 p_1651->g_65 p_1651->g_111 p_1651->g_194 p_1651->g_201 p_1651->g_190 p_1651->g_199 p_1651->g_232 p_1651->g_131 p_1651->g_240 p_1651->g_243 p_1651->g_278 p_1651->g_285 p_1651->g_67 p_1651->g_318 p_1651->g_146 p_1651->g_328 p_1651->g_370 p_1651->g_110 p_1651->g_380 p_1651->g_392 p_1651->g_398 p_1651->g_417 p_1651->g_479 p_1651->g_488 p_1651->g_484 p_1651->g_459 p_1651->g_587 p_1651->g_589
 */
uint16_t  func_60(int16_t  p_61, int32_t * p_62, struct S0 * p_1651)
{ /* block id: 14 */
    uint8_t l_72[1];
    int16_t **l_581 = (void*)0;
    int16_t *l_582[8] = {&p_1651->g_583[5],&p_1651->g_583[5],&p_1651->g_583[5],&p_1651->g_583[5],&p_1651->g_583[5],&p_1651->g_583[5],&p_1651->g_583[5],&p_1651->g_583[5]};
    uint16_t *l_585 = &p_1651->g_417;
    uint16_t **l_584 = &l_585;
    uint16_t ***l_586[10] = {&l_584,&l_584,&l_584,&l_584,&l_584,&l_584,&l_584,&l_584,&l_584,&l_584};
    int i;
    for (i = 0; i < 1; i++)
        l_72[i] = 0UL;
    (*p_62) = (((safe_rshift_func_int8_t_s_s((p_1651->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1651->tid, 13))] , (safe_unary_minus_func_uint64_t_u((l_72[0] | (p_1651->g_45[1] < (((p_1651->g_65 , func_73((safe_mul_func_int8_t_s_s(0x7CL, 1UL)), p_1651)) == (l_582[2] = p_1651->g_171)) | l_72[0])))))), p_61)) < 1L) <= l_72[0]);
    p_1651->g_589 = (p_1651->g_587 = l_584);
    p_62 = (((*p_62) < l_72[0]) , p_62);
    return p_61;
}


/* ------------------------------------------ */
/* 
 * reads : p_1651->g_45 p_1651->g_67 p_1651->g_94 p_1651->g_97 p_1651->g_78 p_1651->g_65 p_1651->g_192 p_1651->g_194 p_1651->g_201 p_1651->g_202 p_1651->g_190 p_1651->l_comm_values p_1651->g_131 p_1651->g_199 p_1651->g_172 p_1651->g_232 p_1651->g_240 p_1651->g_243 p_1651->g_comm_values p_1651->g_41 p_1651->g_285 p_1651->g_146 p_1651->g_329 p_1651->g_370 p_1651->g_328 p_1651->g_318 p_1651->g_378 p_1651->g_380 p_1651->g_392 p_1651->g_397 p_1651->g_278 p_1651->g_459 p_1651->g_417 p_1651->g_479 p_1651->g_171 p_1651->g_484 p_1651->g_262 p_1651->g_111 p_1651->g_578
 * writes: p_1651->g_78 p_1651->g_41 p_1651->g_94 p_1651->g_97 p_1651->g_65 p_1651->g_111 p_1651->g_194 p_1651->g_201 p_1651->g_190 p_1651->g_199 p_1651->g_232 p_1651->g_131 p_1651->g_240 p_1651->g_243 p_1651->g_278 p_1651->g_285 p_1651->g_67 p_1651->g_318 p_1651->g_146 p_1651->g_328 p_1651->g_370 p_1651->g_110 p_1651->g_380 p_1651->g_392 p_1651->g_398 p_1651->g_417 p_1651->g_479 p_1651->g_488 p_1651->g_484 p_1651->g_459
 */
int16_t * func_73(uint64_t  p_74, struct S0 * p_1651)
{ /* block id: 15 */
    int32_t *l_77[2];
    int32_t l_79 = 0x76A774B6L;
    int16_t *l_327 = &p_1651->g_328;
    int32_t *l_384 = &p_1651->g_41;
    int32_t **l_385 = &p_1651->g_111;
    int32_t l_390 = 0x440149D3L;
    int32_t l_391[4] = {0x39F0B637L,0x39F0B637L,0x39F0B637L,0x39F0B637L};
    uint8_t l_408 = 1UL;
    int16_t l_485 = 3L;
    uint32_t l_496[6][4] = {{0xD6C78D60L,0xD6C78D60L,1UL,0x1DBFE411L},{0xD6C78D60L,0xD6C78D60L,1UL,0x1DBFE411L},{0xD6C78D60L,0xD6C78D60L,1UL,0x1DBFE411L},{0xD6C78D60L,0xD6C78D60L,1UL,0x1DBFE411L},{0xD6C78D60L,0xD6C78D60L,1UL,0x1DBFE411L},{0xD6C78D60L,0xD6C78D60L,1UL,0x1DBFE411L}};
    int8_t *l_533 = &p_1651->g_131;
    int i, j;
    for (i = 0; i < 2; i++)
        l_77[i] = &p_1651->g_78;
lbl_411:
    (*l_385) = (l_384 = ((p_1651->g_78 = (l_79 = p_1651->g_45[0])) , func_80(func_86(&p_1651->g_78, p_1651), l_77[0], l_327, p_1651->g_329, p_1651->g_329, p_1651)));
    for (l_79 = 0; (l_79 != 21); ++l_79)
    { /* block id: 193 */
        int32_t *l_388 = &p_1651->g_94[0][1];
        int32_t *l_389[2][9];
        int8_t l_406 = 0x2AL;
        int16_t l_407 = 1L;
        int64_t *l_454 = (void*)0;
        uint32_t l_486 = 0xD0B2AD18L;
        int32_t l_493[7];
        int i, j;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 9; j++)
                l_389[i][j] = &p_1651->g_94[0][0];
        }
        for (i = 0; i < 7; i++)
            l_493[i] = (-7L);
        p_1651->g_392--;
        if ((p_74 < 65531UL))
        { /* block id: 195 */
            int64_t *l_396 = &p_1651->g_285[0];
            int64_t **l_395 = &l_396;
            int32_t l_400 = (-1L);
            int32_t l_401 = (-1L);
            int32_t l_402 = 0x37D8999AL;
            int32_t l_403 = 0x2CFB8C91L;
            int32_t l_404[10][2] = {{0x10EBAF8DL,0x2EDBF376L},{0x10EBAF8DL,0x2EDBF376L},{0x10EBAF8DL,0x2EDBF376L},{0x10EBAF8DL,0x2EDBF376L},{0x10EBAF8DL,0x2EDBF376L},{0x10EBAF8DL,0x2EDBF376L},{0x10EBAF8DL,0x2EDBF376L},{0x10EBAF8DL,0x2EDBF376L},{0x10EBAF8DL,0x2EDBF376L},{0x10EBAF8DL,0x2EDBF376L}};
            int32_t l_405 = 0x0D94FDDDL;
            uint32_t *l_449 = &p_1651->g_190;
            uint32_t *l_458[3][9] = {{(void*)0,(void*)0,&p_1651->g_232,&p_1651->g_190,&p_1651->g_232,&p_1651->g_190,&p_1651->g_190,&p_1651->g_232,&p_1651->g_190},{(void*)0,(void*)0,&p_1651->g_232,&p_1651->g_190,&p_1651->g_232,&p_1651->g_190,&p_1651->g_190,&p_1651->g_232,&p_1651->g_190},{(void*)0,(void*)0,&p_1651->g_232,&p_1651->g_190,&p_1651->g_232,&p_1651->g_190,&p_1651->g_190,&p_1651->g_232,&p_1651->g_190}};
            uint32_t **l_457[6][6] = {{&l_458[1][8],&l_458[2][3],&l_458[1][8],&l_458[1][8],&l_458[1][8],&l_458[2][3]},{&l_458[1][8],&l_458[2][3],&l_458[1][8],&l_458[1][8],&l_458[1][8],&l_458[2][3]},{&l_458[1][8],&l_458[2][3],&l_458[1][8],&l_458[1][8],&l_458[1][8],&l_458[2][3]},{&l_458[1][8],&l_458[2][3],&l_458[1][8],&l_458[1][8],&l_458[1][8],&l_458[2][3]},{&l_458[1][8],&l_458[2][3],&l_458[1][8],&l_458[1][8],&l_458[1][8],&l_458[2][3]},{&l_458[1][8],&l_458[2][3],&l_458[1][8],&l_458[1][8],&l_458[1][8],&l_458[2][3]}};
            int i, j;
            (*p_1651->g_397) = l_395;
            ++l_408;
            if (p_1651->g_240)
                goto lbl_411;
            for (l_402 = 0; (l_402 <= (-17)); l_402--)
            { /* block id: 201 */
                uint64_t l_418[6][4][3] = {{{0x3FB0436F921DAD43L,0x3FB0436F921DAD43L,8UL},{0x3FB0436F921DAD43L,0x3FB0436F921DAD43L,8UL},{0x3FB0436F921DAD43L,0x3FB0436F921DAD43L,8UL},{0x3FB0436F921DAD43L,0x3FB0436F921DAD43L,8UL}},{{0x3FB0436F921DAD43L,0x3FB0436F921DAD43L,8UL},{0x3FB0436F921DAD43L,0x3FB0436F921DAD43L,8UL},{0x3FB0436F921DAD43L,0x3FB0436F921DAD43L,8UL},{0x3FB0436F921DAD43L,0x3FB0436F921DAD43L,8UL}},{{0x3FB0436F921DAD43L,0x3FB0436F921DAD43L,8UL},{0x3FB0436F921DAD43L,0x3FB0436F921DAD43L,8UL},{0x3FB0436F921DAD43L,0x3FB0436F921DAD43L,8UL},{0x3FB0436F921DAD43L,0x3FB0436F921DAD43L,8UL}},{{0x3FB0436F921DAD43L,0x3FB0436F921DAD43L,8UL},{0x3FB0436F921DAD43L,0x3FB0436F921DAD43L,8UL},{0x3FB0436F921DAD43L,0x3FB0436F921DAD43L,8UL},{0x3FB0436F921DAD43L,0x3FB0436F921DAD43L,8UL}},{{0x3FB0436F921DAD43L,0x3FB0436F921DAD43L,8UL},{0x3FB0436F921DAD43L,0x3FB0436F921DAD43L,8UL},{0x3FB0436F921DAD43L,0x3FB0436F921DAD43L,8UL},{0x3FB0436F921DAD43L,0x3FB0436F921DAD43L,8UL}},{{0x3FB0436F921DAD43L,0x3FB0436F921DAD43L,8UL},{0x3FB0436F921DAD43L,0x3FB0436F921DAD43L,8UL},{0x3FB0436F921DAD43L,0x3FB0436F921DAD43L,8UL},{0x3FB0436F921DAD43L,0x3FB0436F921DAD43L,8UL}}};
                uint32_t *l_447[8] = {&p_1651->g_232,&p_1651->g_232,&p_1651->g_232,&p_1651->g_232,&p_1651->g_232,&p_1651->g_232,&p_1651->g_232,&p_1651->g_232};
                int i, j, k;
                for (p_1651->g_41 = 0; (p_1651->g_41 < (-19)); p_1651->g_41 = safe_sub_func_int32_t_s_s(p_1651->g_41, 9))
                { /* block id: 204 */
                    uint8_t *l_425 = &p_1651->g_278;
                    uint8_t *l_440 = &p_1651->g_318[0][2];
                    uint32_t *l_444 = &p_1651->g_232;
                    uint32_t **l_443 = &l_444;
                    uint32_t *l_446 = &p_1651->g_190;
                    uint32_t **l_445 = &l_446;
                    uint32_t **l_448[2][1];
                    uint64_t *l_456 = &l_418[2][0][2];
                    uint32_t *l_461 = &p_1651->g_146;
                    uint8_t *l_462 = &p_1651->g_380[1];
                    int32_t l_463 = 0x333E0784L;
                    int i, j;
                    for (i = 0; i < 2; i++)
                    {
                        for (j = 0; j < 1; j++)
                            l_448[i][j] = &l_447[7];
                    }
                    for (l_405 = 0; (l_405 <= 1); l_405 += 1)
                    { /* block id: 207 */
                        uint16_t *l_416[5];
                        int i;
                        for (i = 0; i < 5; i++)
                            l_416[i] = &p_1651->g_417;
                        (*l_388) = (0x0345L >= (l_418[2][0][2]--));
                    }
                    l_463 = (safe_lshift_func_uint8_t_u_u((((safe_add_func_uint8_t_u_u(((*l_425) &= FAKE_DIVERGE(p_1651->local_0_offset, get_local_id(0), 10)), (+((safe_mul_func_uint8_t_u_u((p_1651->g_232 < ((*l_327) = (safe_mul_func_uint8_t_u_u(((*l_462) = (((safe_sub_func_uint8_t_u_u((GROUP_DIVERGE(2, 1) || (((safe_mul_func_uint16_t_u_u(p_74, (safe_mod_func_uint32_t_u_u((!((*l_461) &= ((((safe_add_func_int16_t_s_s((((FAKE_DIVERGE(p_1651->global_0_offset, get_global_id(0), 10) & (--(*l_440))) , ((*l_445) = ((*l_443) = &p_1651->g_232))) == (l_449 = l_447[7])), (safe_mod_func_uint8_t_u_u((safe_mod_func_int64_t_s_s((l_454 == ((safe_unary_minus_func_int32_t_s(p_74)) , (void*)0)), ((*l_456) = GROUP_DIVERGE(2, 1)))), p_74)))) & (l_457[2][0] == p_1651->g_459)) >= p_1651->g_232) & GROUP_DIVERGE(1, 1)))), 0x15D6B1DCL)))) | GROUP_DIVERGE(0, 1)) >= (*l_388))), 0x48L)) < p_74) & p_1651->g_417)), 0xB3L)))), 0x02L)) , p_1651->g_131)))) == p_74) , 1UL), FAKE_DIVERGE(p_1651->group_1_offset, get_group_id(1), 10)));
                }
                (*l_388) = p_74;
            }
        }
        else
        { /* block id: 224 */
            uint16_t *l_472 = &p_1651->g_417;
            int8_t *l_482[2][7] = {{&l_406,&l_406,&l_406,&l_406,&l_406,&l_406,&l_406},{&l_406,&l_406,&l_406,&l_406,&l_406,&l_406,&l_406}};
            int32_t l_483 = 0x58D75F91L;
            uint16_t *l_487 = &p_1651->g_488;
            int32_t l_489 = 0x587B877AL;
            uint8_t *l_490 = &p_1651->g_380[1];
            uint64_t *l_491 = &p_1651->g_370[1];
            int32_t *l_492 = (void*)0;
            int i, j;
            (*l_388) = ((p_1651->g_392 <= ((*l_491) = ((((*l_490) = (safe_rshift_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_u((p_1651->g_380[1] && ((p_74 , ((((safe_add_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(((*l_472) = (0UL <= 0xD0L)), ((*l_327) = (safe_mod_func_int16_t_s_s(((((*l_487) = (+((*l_388) <= (l_486 = (safe_lshift_func_int16_t_s_u(((l_483 = (safe_mul_func_uint16_t_u_u((--p_1651->g_479), p_1651->g_278))) != (((((void*)0 == p_1651->g_171) , p_1651->g_484) >= 4294967295UL) || (*l_388))), l_485)))))) <= 0x3282L) <= l_489), p_74))))), GROUP_DIVERGE(1, 1))) == GROUP_DIVERGE(0, 1)) | p_74) == FAKE_DIVERGE(p_1651->group_2_offset, get_group_id(2), 10))) || p_74)), 3)), 2))) > p_1651->g_41) && l_483))) , p_74);
            (*l_385) = func_80((FAKE_DIVERGE(p_1651->group_0_offset, get_group_id(0), 10) , &l_388), l_389[1][2], &p_1651->g_65, l_492, l_492, p_1651);
            if (l_493[0])
                break;
        }
        if (p_74)
            continue;
    }
    l_390 = (safe_div_func_int8_t_s_s(p_74, l_496[5][1]));
    for (l_390 = 1; (l_390 >= 0); l_390 -= 1)
    { /* block id: 242 */
        int16_t l_505[8] = {0x58CBL,(-1L),0x58CBL,0x58CBL,(-1L),0x58CBL,0x58CBL,(-1L)};
        int32_t l_508 = 0x320AA72EL;
        int32_t l_523[3];
        int32_t *l_535 = (void*)0;
        int16_t *l_536[6][4] = {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}};
        int8_t l_558 = 2L;
        int i, j;
        for (i = 0; i < 3; i++)
            l_523[i] = 0x37A59DE4L;
        for (p_1651->g_278 = 0; (p_1651->g_278 <= 1); p_1651->g_278 += 1)
        { /* block id: 245 */
            uint8_t *l_504 = (void*)0;
            uint64_t *l_527 = (void*)0;
            uint64_t **l_526 = &l_527;
            int32_t l_528 = 0x6BC1AB0FL;
            int i, j;
            l_528 |= (safe_lshift_func_uint16_t_u_u(((safe_sub_func_uint32_t_u_u(((p_1651->g_243 = ((safe_lshift_func_uint8_t_u_u((p_1651->g_318[p_1651->g_278][l_390] || ((l_505[1] = (p_1651->g_318[p_1651->g_278][l_390] = p_74)) <= ((safe_mul_func_int16_t_s_s(((l_508 , ((*l_526) = (((safe_add_func_uint8_t_u_u(p_1651->g_131, (safe_mul_func_int16_t_s_s((safe_div_func_int32_t_s_s((safe_mod_func_int32_t_s_s((safe_lshift_func_uint8_t_u_s((((((l_523[2] |= (safe_mul_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s(FAKE_DIVERGE(p_1651->global_0_offset, get_global_id(0), 10), 10)), ((l_508 , (l_508 , &p_1651->g_488)) != (void*)0)))) == ((safe_rshift_func_int8_t_s_u(p_74, p_74)) || 0x33E5ED29L)) || p_74) != p_74) , p_1651->g_285[0]), 1)), l_508)), l_508)), p_74)))) , 1UL) , (void*)0))) != &p_74), GROUP_DIVERGE(0, 1))) , 0x78L))), p_74)) > 1L)) , GROUP_DIVERGE(2, 1)), 0x62D86F80L)) <= p_1651->g_392), p_1651->g_240));
            for (l_508 = 1; (l_508 >= 0); l_508 -= 1)
            { /* block id: 254 */
                int32_t *l_534 = &l_528;
                int i;
                (*l_534) = ((safe_lshift_func_uint16_t_u_s(0xFC1FL, l_528)) != (((safe_mod_func_int16_t_s_s((l_533 == (void*)0), p_74)) , l_77[p_1651->g_278]) == l_77[p_1651->g_278]));
                (*l_534) ^= ((l_77[l_390] = l_535) == &p_1651->g_78);
            }
            return &p_1651->g_328;
        }
        for (p_1651->g_146 = 0; (p_1651->g_146 <= 10); p_1651->g_146 = safe_add_func_int8_t_s_s(p_1651->g_146, 7))
        { /* block id: 263 */
            int32_t *l_561 = &p_1651->g_97;
            uint16_t l_567[2];
            uint64_t l_575 = 18446744073709551613UL;
            int16_t *l_580 = (void*)0;
            int i;
            for (i = 0; i < 2; i++)
                l_567[i] = 1UL;
            for (p_1651->g_484 = 6; (p_1651->g_484 >= 50); ++p_1651->g_484)
            { /* block id: 266 */
                uint8_t *l_541 = &p_1651->g_380[1];
                int64_t l_556 = (-1L);
                uint64_t *l_557 = &p_1651->g_370[1];
                l_558 |= ((p_74 , ((*l_541) = p_1651->g_417)) > (safe_rshift_func_int8_t_s_s((-1L), ((*l_533) = (safe_mul_func_uint16_t_u_u(((safe_mod_func_int16_t_s_s((((*l_557) = (((safe_add_func_int8_t_s_s(p_74, (((((&p_1651->g_262 != l_533) | (safe_mul_func_int8_t_s_s(((safe_sub_func_uint16_t_u_u(((safe_lshift_func_int8_t_s_s((l_508 < 4294967295UL), 6)) & p_1651->g_41), (-1L))) && p_74), p_74))) , p_74) , l_523[0]) > p_74))) == l_556) > (-1L))) == l_505[1]), l_505[5])) ^ GROUP_DIVERGE(0, 1)), p_1651->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1651->tid, 13))]))))));
                for (p_1651->g_78 = 0; (p_1651->g_78 < 4); p_1651->g_78++)
                { /* block id: 273 */
                    int32_t **l_562 = &l_384;
                    (*l_562) = ((*l_385) = l_561);
                }
                for (p_74 = 0; (p_74 <= 3); p_74 += 1)
                { /* block id: 279 */
                    int i, j;
                    (*l_385) = ((((l_523[1] = (0x109275C013047E85L && ((safe_mul_func_int16_t_s_s(0x2C73L, (((p_1651->g_488 = 0xC5D3L) | (safe_add_func_int64_t_s_s(((0x63369B15F8D27722L < l_505[(p_74 + 2)]) < l_567[1]), (safe_add_func_int8_t_s_s((p_1651->g_131 = (safe_sub_func_int32_t_s_s((safe_sub_func_int16_t_s_s(p_74, p_74)), ((((*l_541) = p_1651->g_65) || (*l_561)) && GROUP_DIVERGE(0, 1))))), 0x4AL))))) == l_508))) == (*l_561)))) , 18446744073709551607UL) <= p_1651->g_262) , l_561);
                    for (p_1651->g_97 = 1; (p_1651->g_97 <= 7); p_1651->g_97 += 1)
                    { /* block id: 287 */
                        int32_t **l_574 = &l_384;
                        (*l_574) = ((*l_385) = (*p_1651->g_192));
                        (*p_1651->g_192) = (p_74 , (*p_1651->g_192));
                    }
                    for (p_1651->g_278 = 0; (p_1651->g_278 <= 3); p_1651->g_278 += 1)
                    { /* block id: 294 */
                        int32_t *l_579 = &p_1651->g_94[0][2];
                        l_575++;
                        (*p_1651->g_578) = &p_1651->g_460;
                        (*l_385) = l_579;
                    }
                }
            }
            return l_580;
        }
    }
    return &p_1651->g_67;
}


/* ------------------------------------------ */
/* 
 * reads : p_1651->g_232 p_1651->g_97 p_1651->g_194 p_1651->g_78 p_1651->g_131 p_1651->g_240 p_1651->g_190 p_1651->g_370 p_1651->g_comm_values p_1651->g_328 p_1651->g_318 p_1651->g_378 p_1651->g_380 p_1651->g_65 p_1651->g_583
 * writes: p_1651->g_232 p_1651->g_199 p_1651->g_278 p_1651->g_111 p_1651->g_328 p_1651->g_370 p_1651->g_110 p_1651->g_94 p_1651->g_380 p_1651->g_65 p_1651->g_593 p_1651->g_583
 */
int32_t * func_80(int32_t ** p_81, int32_t * p_82, int16_t * p_83, int32_t * p_84, int32_t * p_85, struct S0 * p_1651)
{ /* block id: 156 */
    uint32_t l_341[10][6][4] = {{{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL}},{{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL}},{{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL}},{{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL}},{{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL}},{{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL}},{{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL}},{{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL}},{{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL}},{{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL},{0x4ABC0ED7L,0xFB11891AL,4294967295UL,4294967290UL}}};
    int32_t l_353[5];
    uint8_t *l_366 = &p_1651->g_278;
    int32_t l_371 = 0x45D6A0C8L;
    int32_t l_375 = 0x40D838D8L;
    int32_t *l_379[4][4][10] = {{{(void*)0,(void*)0,&p_1651->g_94[0][3],&p_1651->g_97,&p_1651->g_94[0][3],(void*)0,(void*)0,(void*)0,&p_1651->g_97,&p_1651->g_41},{(void*)0,(void*)0,&p_1651->g_94[0][3],&p_1651->g_97,&p_1651->g_94[0][3],(void*)0,(void*)0,(void*)0,&p_1651->g_97,&p_1651->g_41},{(void*)0,(void*)0,&p_1651->g_94[0][3],&p_1651->g_97,&p_1651->g_94[0][3],(void*)0,(void*)0,(void*)0,&p_1651->g_97,&p_1651->g_41},{(void*)0,(void*)0,&p_1651->g_94[0][3],&p_1651->g_97,&p_1651->g_94[0][3],(void*)0,(void*)0,(void*)0,&p_1651->g_97,&p_1651->g_41}},{{(void*)0,(void*)0,&p_1651->g_94[0][3],&p_1651->g_97,&p_1651->g_94[0][3],(void*)0,(void*)0,(void*)0,&p_1651->g_97,&p_1651->g_41},{(void*)0,(void*)0,&p_1651->g_94[0][3],&p_1651->g_97,&p_1651->g_94[0][3],(void*)0,(void*)0,(void*)0,&p_1651->g_97,&p_1651->g_41},{(void*)0,(void*)0,&p_1651->g_94[0][3],&p_1651->g_97,&p_1651->g_94[0][3],(void*)0,(void*)0,(void*)0,&p_1651->g_97,&p_1651->g_41},{(void*)0,(void*)0,&p_1651->g_94[0][3],&p_1651->g_97,&p_1651->g_94[0][3],(void*)0,(void*)0,(void*)0,&p_1651->g_97,&p_1651->g_41}},{{(void*)0,(void*)0,&p_1651->g_94[0][3],&p_1651->g_97,&p_1651->g_94[0][3],(void*)0,(void*)0,(void*)0,&p_1651->g_97,&p_1651->g_41},{(void*)0,(void*)0,&p_1651->g_94[0][3],&p_1651->g_97,&p_1651->g_94[0][3],(void*)0,(void*)0,(void*)0,&p_1651->g_97,&p_1651->g_41},{(void*)0,(void*)0,&p_1651->g_94[0][3],&p_1651->g_97,&p_1651->g_94[0][3],(void*)0,(void*)0,(void*)0,&p_1651->g_97,&p_1651->g_41},{(void*)0,(void*)0,&p_1651->g_94[0][3],&p_1651->g_97,&p_1651->g_94[0][3],(void*)0,(void*)0,(void*)0,&p_1651->g_97,&p_1651->g_41}},{{(void*)0,(void*)0,&p_1651->g_94[0][3],&p_1651->g_97,&p_1651->g_94[0][3],(void*)0,(void*)0,(void*)0,&p_1651->g_97,&p_1651->g_41},{(void*)0,(void*)0,&p_1651->g_94[0][3],&p_1651->g_97,&p_1651->g_94[0][3],(void*)0,(void*)0,(void*)0,&p_1651->g_97,&p_1651->g_41},{(void*)0,(void*)0,&p_1651->g_94[0][3],&p_1651->g_97,&p_1651->g_94[0][3],(void*)0,(void*)0,(void*)0,&p_1651->g_97,&p_1651->g_41},{(void*)0,(void*)0,&p_1651->g_94[0][3],&p_1651->g_97,&p_1651->g_94[0][3],(void*)0,(void*)0,(void*)0,&p_1651->g_97,&p_1651->g_41}}};
    int32_t *l_383 = &p_1651->g_41;
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_353[i] = 0x090D7A6AL;
    for (p_1651->g_232 = 0; (p_1651->g_232 == 27); p_1651->g_232 = safe_add_func_int64_t_s_s(p_1651->g_232, 4))
    { /* block id: 159 */
        uint32_t *l_349 = &p_1651->g_190;
        uint32_t **l_348 = &l_349;
        int32_t l_350[4] = {0L,0L,0L,0L};
        int16_t *l_351[8];
        int32_t l_352 = 0x3FB4DD98L;
        uint64_t *l_369 = &p_1651->g_370[1];
        int32_t **l_372 = (void*)0;
        int32_t ***l_373 = &p_1651->g_110[0];
        int64_t *l_374 = (void*)0;
        uint8_t *l_376[3];
        int8_t l_377 = 0L;
        int i;
        for (i = 0; i < 8; i++)
            l_351[i] = &p_1651->g_67;
        for (i = 0; i < 3; i++)
            l_376[i] = (void*)0;
        for (p_1651->g_199 = (-12); (p_1651->g_199 < (-3)); ++p_1651->g_199)
        { /* block id: 162 */
            for (p_1651->g_278 = 1; (p_1651->g_278 == 14); p_1651->g_278++)
            { /* block id: 165 */
                int32_t *l_336 = &p_1651->g_97;
                (*p_81) = l_336;
                if ((*l_336))
                    break;
            }
        }
        for (p_1651->g_199 = (-30); (p_1651->g_199 != (-21)); p_1651->g_199 = safe_add_func_uint16_t_u_u(p_1651->g_199, 6))
        { /* block id: 172 */
            return p_84;
        }
        l_350[1] = (safe_lshift_func_int8_t_s_u(((l_341[9][4][1] != (((safe_sub_func_int16_t_s_s(0x6B6EL, l_341[6][3][0])) & (~(l_341[9][1][0] ^ (p_1651->g_194 >= ((l_341[5][2][0] == (safe_mul_func_uint16_t_u_u(((l_353[3] = (safe_rshift_func_int16_t_s_u(0x383EL, (((l_352 ^= ((*p_83) = ((p_1651->g_78 != (FAKE_DIVERGE(p_1651->global_1_offset, get_global_id(1), 10) || ((((*l_348) = &p_1651->g_190) == &p_1651->g_232) , 4294967295UL))) , l_350[2]))) < l_350[2]) > 0x68378C8CFC6677F1L)))) && p_1651->g_131), 1L))) > p_1651->g_240))))) & p_1651->g_190)) | l_341[3][1][2]), FAKE_DIVERGE(p_1651->local_1_offset, get_local_id(1), 10)));
        (*p_1651->g_378) = (((safe_sub_func_int8_t_s_s(((((safe_sub_func_int8_t_s_s(((((safe_lshift_func_int8_t_s_s((((safe_lshift_func_int8_t_s_u(((l_350[2] = l_353[3]) != ((safe_div_func_int16_t_s_s((safe_add_func_uint32_t_u_u(4294967295UL, (l_366 != (((l_371 = (!((*l_369) |= (+(safe_lshift_func_uint8_t_u_s(((FAKE_DIVERGE(p_1651->local_2_offset, get_local_id(2), 10) >= 0x6CD814C3L) , 0x92L), l_352)))))) < ((l_375 = (((*l_373) = l_372) != (l_341[9][4][1] , &p_1651->g_95))) , 0UL)) , l_376[2])))), l_341[9][4][1])) || l_375)), l_341[9][3][1])) , l_376[2]) == &p_1651->g_318[0][2]), l_341[9][4][1])) , 0xF3B99123L) , l_377) <= 0x2ECF334DL), p_1651->g_240)) , p_1651->g_240) <= p_1651->g_comm_values[p_1651->tid]) & (*p_83)), p_1651->g_232)) | p_1651->g_318[0][1]) < 0xB5AC5323B5B3055FL);
    }
    p_1651->g_380[1]--;
    return l_383;
}


/* ------------------------------------------ */
/* 
 * reads : p_1651->g_67 p_1651->g_94 p_1651->g_97 p_1651->g_78 p_1651->g_65 p_1651->g_45 p_1651->g_192 p_1651->g_194 p_1651->g_201 p_1651->g_202 p_1651->g_190 p_1651->l_comm_values p_1651->g_131 p_1651->g_199 p_1651->g_172 p_1651->g_232 p_1651->g_240 p_1651->g_243 p_1651->g_comm_values p_1651->g_41 p_1651->g_285 p_1651->g_146
 * writes: p_1651->g_41 p_1651->g_94 p_1651->g_97 p_1651->g_78 p_1651->g_65 p_1651->g_111 p_1651->g_194 p_1651->g_201 p_1651->g_190 p_1651->g_199 p_1651->g_232 p_1651->g_131 p_1651->g_240 p_1651->g_243 p_1651->g_278 p_1651->g_285 p_1651->g_67 p_1651->g_318 p_1651->g_146
 */
int32_t ** func_86(int32_t * p_87, struct S0 * p_1651)
{ /* block id: 18 */
    int32_t *l_197 = &p_1651->g_97;
    int32_t *l_198[3];
    int32_t l_200[5] = {0x7EADB0F8L,0x7EADB0F8L,0x7EADB0F8L,0x7EADB0F8L,0x7EADB0F8L};
    uint32_t *l_214 = (void*)0;
    uint32_t **l_213[1][10][7] = {{{&l_214,&l_214,&l_214,&l_214,&l_214,&l_214,&l_214},{&l_214,&l_214,&l_214,&l_214,&l_214,&l_214,&l_214},{&l_214,&l_214,&l_214,&l_214,&l_214,&l_214,&l_214},{&l_214,&l_214,&l_214,&l_214,&l_214,&l_214,&l_214},{&l_214,&l_214,&l_214,&l_214,&l_214,&l_214,&l_214},{&l_214,&l_214,&l_214,&l_214,&l_214,&l_214,&l_214},{&l_214,&l_214,&l_214,&l_214,&l_214,&l_214,&l_214},{&l_214,&l_214,&l_214,&l_214,&l_214,&l_214,&l_214},{&l_214,&l_214,&l_214,&l_214,&l_214,&l_214,&l_214},{&l_214,&l_214,&l_214,&l_214,&l_214,&l_214,&l_214}}};
    uint32_t ***l_212 = &l_213[0][4][6];
    uint32_t ***l_245 = &l_213[0][4][2];
    int8_t *l_321 = &p_1651->g_131;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_198[i] = &p_1651->g_199;
lbl_228:
    for (p_1651->g_41 = 0; (p_1651->g_41 < 27); p_1651->g_41 = safe_add_func_int8_t_s_s(p_1651->g_41, 1))
    { /* block id: 21 */
        int32_t *l_193 = &p_1651->g_194;
        int32_t **l_195 = &p_1651->g_111;
        int32_t **l_196[6] = {&p_1651->g_111,&p_1651->g_111,&p_1651->g_111,&p_1651->g_111,&p_1651->g_111,&p_1651->g_111};
        int i;
        l_200[2] &= ((((*l_193) ^= func_90(p_1651->g_67, p_1651)) , (l_197 = p_87)) != (l_198[2] = p_87));
        (*p_1651->g_202) = p_1651->g_201;
        (*l_197) = (*l_197);
    }
    if ((0L & ((*l_197) != (!p_1651->g_97))))
    { /* block id: 90 */
        int8_t l_217 = 0x7FL;
        uint64_t l_222[2][8][4] = {{{0xDFA59AC468D78F43L,0UL,18446744073709551615UL,0xFDCE9B7E83AC69C9L},{0xDFA59AC468D78F43L,0UL,18446744073709551615UL,0xFDCE9B7E83AC69C9L},{0xDFA59AC468D78F43L,0UL,18446744073709551615UL,0xFDCE9B7E83AC69C9L},{0xDFA59AC468D78F43L,0UL,18446744073709551615UL,0xFDCE9B7E83AC69C9L},{0xDFA59AC468D78F43L,0UL,18446744073709551615UL,0xFDCE9B7E83AC69C9L},{0xDFA59AC468D78F43L,0UL,18446744073709551615UL,0xFDCE9B7E83AC69C9L},{0xDFA59AC468D78F43L,0UL,18446744073709551615UL,0xFDCE9B7E83AC69C9L},{0xDFA59AC468D78F43L,0UL,18446744073709551615UL,0xFDCE9B7E83AC69C9L}},{{0xDFA59AC468D78F43L,0UL,18446744073709551615UL,0xFDCE9B7E83AC69C9L},{0xDFA59AC468D78F43L,0UL,18446744073709551615UL,0xFDCE9B7E83AC69C9L},{0xDFA59AC468D78F43L,0UL,18446744073709551615UL,0xFDCE9B7E83AC69C9L},{0xDFA59AC468D78F43L,0UL,18446744073709551615UL,0xFDCE9B7E83AC69C9L},{0xDFA59AC468D78F43L,0UL,18446744073709551615UL,0xFDCE9B7E83AC69C9L},{0xDFA59AC468D78F43L,0UL,18446744073709551615UL,0xFDCE9B7E83AC69C9L},{0xDFA59AC468D78F43L,0UL,18446744073709551615UL,0xFDCE9B7E83AC69C9L},{0xDFA59AC468D78F43L,0UL,18446744073709551615UL,0xFDCE9B7E83AC69C9L}}};
        uint32_t *l_223[3];
        int32_t **l_227 = &l_198[2];
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_223[i] = &p_1651->g_190;
        (*l_197) = (*l_197);
        if ((((GROUP_DIVERGE(2, 1) && (safe_unary_minus_func_uint16_t_u((safe_div_func_int16_t_s_s((safe_div_func_uint32_t_u_u(((~(p_1651->g_67 , (safe_mod_func_uint8_t_u_u(((-1L) | (safe_add_func_int32_t_s_s((l_212 == (void*)0), 0x6780686CL))), (safe_add_func_int16_t_s_s(l_217, 0x456CL)))))) & (safe_sub_func_uint8_t_u_u(((safe_mod_func_uint8_t_u_u(((l_222[0][4][2] , ((p_1651->g_190--) , p_1651->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1651->tid, 13))])) , l_222[0][3][0]), p_1651->g_97)) && p_1651->g_131), (*l_197)))), l_222[0][3][1])), 0x1830L))))) , &l_217) == &l_217))
        { /* block id: 93 */
            int32_t **l_226 = &l_198[1];
            return &p_1651->g_111;
        }
        else
        { /* block id: 95 */
            if (p_1651->g_131)
                goto lbl_228;
        }
        if (l_217)
            goto lbl_228;
    }
    else
    { /* block id: 99 */
        uint16_t l_241[3][2][7] = {{{0x01ACL,0x01ACL,0x01ACL,0x01ACL,0x01ACL,0x01ACL,0x01ACL},{0x01ACL,0x01ACL,0x01ACL,0x01ACL,0x01ACL,0x01ACL,0x01ACL}},{{0x01ACL,0x01ACL,0x01ACL,0x01ACL,0x01ACL,0x01ACL,0x01ACL},{0x01ACL,0x01ACL,0x01ACL,0x01ACL,0x01ACL,0x01ACL,0x01ACL}},{{0x01ACL,0x01ACL,0x01ACL,0x01ACL,0x01ACL,0x01ACL,0x01ACL},{0x01ACL,0x01ACL,0x01ACL,0x01ACL,0x01ACL,0x01ACL,0x01ACL}}};
        int32_t l_247 = 0L;
        int32_t l_248 = 0x6F94F6C1L;
        int32_t l_249 = 0x7F4C1165L;
        int32_t l_251[1][6] = {{(-9L),(-9L),(-9L),(-9L),(-9L),(-9L)}};
        int16_t *l_294 = &p_1651->g_67;
        int8_t *l_297[1];
        int8_t **l_322 = &l_297[0];
        int8_t *l_323 = &p_1651->g_131;
        uint8_t *l_326 = &p_1651->g_278;
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_297[i] = &p_1651->g_131;
        for (p_1651->g_78 = 0; (p_1651->g_78 <= 3); p_1651->g_78 += 1)
        { /* block id: 102 */
            int8_t l_246 = 1L;
            int32_t l_252[9] = {4L,4L,4L,4L,4L,4L,4L,4L,4L};
            int i;
            for (p_1651->g_199 = 0; (p_1651->g_199 <= 3); p_1651->g_199 += 1)
            { /* block id: 105 */
                int32_t l_237 = 0x57D5BE43L;
                int16_t **l_244 = &p_1651->g_171;
                int32_t l_250 = 8L;
                int32_t l_253 = (-4L);
                int32_t l_254 = 1L;
                int32_t l_255 = 0L;
                int32_t l_256 = (-1L);
                int32_t l_257 = 0x783E5766L;
                int32_t l_258 = 1L;
                int32_t l_259 = 0x5E0F676DL;
                int32_t l_260 = 0x2A5EDB7CL;
                int32_t l_261[10][9][2] = {{{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L}},{{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L}},{{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L}},{{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L}},{{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L}},{{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L}},{{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L}},{{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L}},{{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L}},{{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L},{0x7F33174DL,0L}}};
                uint64_t l_263 = 0x24F6860CB6A6315EL;
                int32_t **l_266[10] = {&l_198[2],&l_198[2],&l_198[2],&l_198[2],&l_198[2],&l_198[2],&l_198[2],&l_198[2],&l_198[2],&l_198[2]};
                int i, j, k;
                if (p_1651->g_172[(p_1651->g_78 + 5)][p_1651->g_199])
                { /* block id: 106 */
                    if (p_1651->g_199)
                        goto lbl_228;
                }
                else
                { /* block id: 108 */
                    uint32_t ***l_229[7] = {&l_213[0][4][6],&l_213[0][4][6],&l_213[0][4][6],&l_213[0][4][6],&l_213[0][4][6],&l_213[0][4][6],&l_213[0][4][6]};
                    int8_t *l_238 = (void*)0;
                    int8_t *l_239 = &p_1651->g_131;
                    int64_t *l_242 = &p_1651->g_243;
                    int i, j;
                    l_246 = (l_229[0] == ((&p_1651->g_171 == (((safe_add_func_uint8_t_u_u((((p_1651->g_232++) == (((*l_242) &= ((0xC9L && (+(p_1651->g_172[(p_1651->g_78 + 2)][p_1651->g_199] | (safe_lshift_func_uint16_t_u_u((255UL == (p_1651->g_240 |= ((*l_239) &= l_237))), 2))))) , (l_241[0][0][1] == 0UL))) , l_241[0][0][1])) & l_241[1][0][0]), 0x8DL)) , p_1651->g_240) , l_244)) , l_245));
                    return &p_1651->g_111;
                }
                --l_263;
                l_198[1] = p_87;
            }
            l_252[0] = 0x3CB9D5C4L;
            l_249 = (l_252[8] = l_252[0]);
            for (p_1651->g_194 = 3; (p_1651->g_194 >= 0); p_1651->g_194 -= 1)
            { /* block id: 124 */
                int32_t l_273 = 0x564B5113L;
                int8_t *l_274[10][7] = {{&l_246,&l_246,&l_246,&p_1651->g_131,&l_246,&p_1651->g_131,&l_246},{&l_246,&l_246,&l_246,&p_1651->g_131,&l_246,&p_1651->g_131,&l_246},{&l_246,&l_246,&l_246,&p_1651->g_131,&l_246,&p_1651->g_131,&l_246},{&l_246,&l_246,&l_246,&p_1651->g_131,&l_246,&p_1651->g_131,&l_246},{&l_246,&l_246,&l_246,&p_1651->g_131,&l_246,&p_1651->g_131,&l_246},{&l_246,&l_246,&l_246,&p_1651->g_131,&l_246,&p_1651->g_131,&l_246},{&l_246,&l_246,&l_246,&p_1651->g_131,&l_246,&p_1651->g_131,&l_246},{&l_246,&l_246,&l_246,&p_1651->g_131,&l_246,&p_1651->g_131,&l_246},{&l_246,&l_246,&l_246,&p_1651->g_131,&l_246,&p_1651->g_131,&l_246},{&l_246,&l_246,&l_246,&p_1651->g_131,&l_246,&p_1651->g_131,&l_246}};
                uint8_t *l_277 = &p_1651->g_278;
                int64_t *l_283[4][2][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0}}};
                int32_t l_284 = 0x45E3A8EFL;
                int32_t l_286 = 0x299B7AB3L;
                int32_t l_287 = 0x3F810539L;
                int i, j, k;
                l_252[0] = (p_1651->g_172[(p_1651->g_78 + 2)][p_1651->g_194] || l_251[0][4]);
                if (l_252[8])
                    break;
                l_252[4] = ((l_287 = (((safe_rshift_func_int8_t_s_s(p_1651->g_94[0][3], ((safe_lshift_func_int16_t_s_u(((safe_sub_func_int8_t_s_s((p_1651->g_172[0][0] < ((p_1651->g_131 = (l_273 && (l_273 = l_249))) ^ (safe_rshift_func_uint8_t_u_s((l_251[0][5] || (((l_286 = (((*l_277) = l_246) | ((safe_rshift_func_int16_t_s_u((((p_1651->g_285[0] = (safe_sub_func_int64_t_s_s((l_251[0][1] |= l_252[0]), ((l_284 = (((l_284 ^ (((1L | p_1651->g_comm_values[p_1651->tid]) || l_246) & (-9L))) <= p_1651->g_232) & l_246)) == (-1L))))) > p_1651->g_65) & l_286), p_1651->g_45[0])) > 6UL))) <= l_248) <= p_1651->g_97)), l_287)))), l_249)) && (*l_197)), l_246)) == l_241[2][0][4]))) > 0x62A763A4L) > l_287)) , 7L);
            }
            for (l_248 = 0; (l_248 <= 3); l_248 += 1)
            { /* block id: 139 */
                return &p_1651->g_111;
            }
        }
        l_247 = l_241[0][0][1];
        l_251[0][4] = ((*l_197) = (!(((((*l_197) != ((GROUP_DIVERGE(1, 1) != (safe_lshift_func_int8_t_s_s(p_1651->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1651->tid, 13))], ((l_247 = (((*l_294) = (safe_rshift_func_int16_t_s_s((-1L), 2))) != (safe_div_func_uint16_t_u_u(p_1651->g_41, 0x1993L)))) || 0x35L)))) < (((*l_197) | (safe_sub_func_int32_t_s_s((-6L), ((safe_div_func_int16_t_s_s((safe_div_func_uint32_t_u_u(((l_249 , l_248) != (*l_197)), l_241[1][0][4])), p_1651->g_285[0])) && l_241[0][0][1])))) || (-1L)))) , 1UL) || (-10L)) >= (-1L))));
        (*l_197) = (safe_rshift_func_int8_t_s_u((safe_sub_func_uint32_t_u_u(((GROUP_DIVERGE(0, 1) , GROUP_DIVERGE(1, 1)) , (p_1651->g_146 |= (safe_mul_func_uint8_t_u_u((safe_div_func_uint32_t_u_u(1UL, (safe_mul_func_int16_t_s_s(p_1651->g_78, ((((safe_sub_func_uint16_t_u_u((safe_sub_func_int8_t_s_s((65527UL > (GROUP_DIVERGE(0, 1) ^ (p_1651->g_318[0][2] = 18446744073709551611UL))), (p_1651->g_67 < ((*l_326) = (safe_lshift_func_uint8_t_u_u(((((*l_322) = l_321) != (l_323 = &p_1651->g_131)) != ((((((safe_div_func_int32_t_s_s(((p_1651->g_94[0][3] , 0x1F84829650C281D8L) <= (*l_197)), l_241[1][1][4])) && (*l_197)) != l_241[0][0][1]) , 0x1F4C2F19964D2EB6L) , l_248) ^ p_1651->g_comm_values[p_1651->tid])), GROUP_DIVERGE(2, 1))))))), p_1651->g_172[6][3])) <= 0x7BA8L) >= (*l_197)) , (*l_197)))))), 0x25L)))), l_249)), 3));
    }
    return &p_1651->g_111;
}


/* ------------------------------------------ */
/* 
 * reads : p_1651->g_94 p_1651->g_97 p_1651->g_78 p_1651->g_65 p_1651->g_45 p_1651->g_192 p_1651->g_67
 * writes: p_1651->g_94 p_1651->g_97 p_1651->g_78 p_1651->g_65 p_1651->g_111
 */
int32_t  func_90(int8_t  p_91, struct S0 * p_1651)
{ /* block id: 22 */
    uint32_t l_92[6];
    int32_t *l_93 = &p_1651->g_94[0][3];
    int32_t *l_96 = &p_1651->g_97;
    int16_t *l_104 = (void*)0;
    int32_t **l_112 = (void*)0;
    int32_t l_129 = (-4L);
    int32_t l_148 = (-1L);
    int32_t l_149 = 1L;
    int32_t l_150 = 0x1FEA8EEEL;
    int32_t l_151[7][5][7] = {{{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)},{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)},{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)},{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)},{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)}},{{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)},{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)},{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)},{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)},{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)}},{{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)},{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)},{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)},{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)},{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)}},{{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)},{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)},{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)},{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)},{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)}},{{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)},{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)},{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)},{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)},{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)}},{{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)},{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)},{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)},{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)},{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)}},{{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)},{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)},{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)},{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)},{0x2E06E0E4L,(-1L),0x383EC2E7L,0x28707BADL,0x28707BADL,0x383EC2E7L,(-1L)}}};
    int8_t *l_187 = &p_1651->g_131;
    uint32_t l_191[5];
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_92[i] = 4294967290UL;
    for (i = 0; i < 5; i++)
        l_191[i] = 1UL;
    (*l_96) |= ((*l_93) &= l_92[0]);
    (*l_96) = (*l_96);
    for (p_91 = 0; (p_91 <= 5); p_91 += 1)
    { /* block id: 28 */
        int32_t **l_124[1];
        int i;
        for (i = 0; i < 1; i++)
            l_124[i] = &p_1651->g_111;
        for (p_1651->g_78 = 5; (p_1651->g_78 >= 0); p_1651->g_78 -= 1)
        { /* block id: 31 */
            int64_t *l_107 = (void*)0;
            int i, j;
            (*l_96) &= ((0x7DL >= 0x1FL) , p_1651->g_94[p_1651->g_78][(p_1651->g_78 + 3)]);
            (*l_96) = ((safe_mod_func_int16_t_s_s(((safe_mul_func_int16_t_s_s((safe_rshift_func_int8_t_s_s((65535UL & (&p_1651->g_41 == &p_1651->g_94[0][3])), l_92[p_91])), (p_1651->g_65 = p_1651->g_65))) ^ (((((void*)0 == l_104) || (p_1651->g_94[p_91][p_1651->g_78] = (safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_1651->group_0_offset, get_group_id(0), 10), FAKE_DIVERGE(p_1651->local_1_offset, get_local_id(1), 10))))) ^ (p_91 >= (&p_1651->g_95 == (void*)0))) || p_91)), 0x7A1EL)) >= p_1651->g_45[0]);
        }
        for (p_1651->g_97 = 0; (p_1651->g_97 != 3); ++p_1651->g_97)
        { /* block id: 39 */
            (*l_93) = (-4L);
        }
    }
    (*p_1651->g_192) = &l_148;
    return p_1651->g_67;
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[13];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 13; i++)
            l_comm_values[i] = 1;
    struct S0 c_1652;
    struct S0* p_1651 = &c_1652;
    struct S0 c_1653 = {
        (void*)0, // p_1651->g_18
        0x4DF493ABL, // p_1651->g_41
        {18446744073709551615UL,18446744073709551615UL,18446744073709551615UL}, // p_1651->g_45
        0x3FEEL, // p_1651->g_65
        0x6E74L, // p_1651->g_67
        0x7FAA682DL, // p_1651->g_78
        {{0x449D34E1L,0L,0x449D34E1L,0x449D34E1L,0L,0x449D34E1L,0x449D34E1L,0L,0x449D34E1L,0x449D34E1L},{0x449D34E1L,0L,0x449D34E1L,0x449D34E1L,0L,0x449D34E1L,0x449D34E1L,0L,0x449D34E1L,0x449D34E1L},{0x449D34E1L,0L,0x449D34E1L,0x449D34E1L,0L,0x449D34E1L,0x449D34E1L,0L,0x449D34E1L,0x449D34E1L},{0x449D34E1L,0L,0x449D34E1L,0x449D34E1L,0L,0x449D34E1L,0x449D34E1L,0L,0x449D34E1L,0x449D34E1L},{0x449D34E1L,0L,0x449D34E1L,0x449D34E1L,0L,0x449D34E1L,0x449D34E1L,0L,0x449D34E1L,0x449D34E1L},{0x449D34E1L,0L,0x449D34E1L,0x449D34E1L,0L,0x449D34E1L,0x449D34E1L,0L,0x449D34E1L,0x449D34E1L}}, // p_1651->g_94
        (void*)0, // p_1651->g_95
        0x0DEE7960L, // p_1651->g_97
        &p_1651->g_94[0][3], // p_1651->g_111
        {&p_1651->g_111,&p_1651->g_111}, // p_1651->g_110
        0x16L, // p_1651->g_131
        0xE3089434L, // p_1651->g_146
        (void*)0, // p_1651->g_171
        {{0xCFL,0xC4L,0xCFL,0xCFL},{0xCFL,0xC4L,0xCFL,0xCFL},{0xCFL,0xC4L,0xCFL,0xCFL},{0xCFL,0xC4L,0xCFL,0xCFL},{0xCFL,0xC4L,0xCFL,0xCFL},{0xCFL,0xC4L,0xCFL,0xCFL},{0xCFL,0xC4L,0xCFL,0xCFL},{0xCFL,0xC4L,0xCFL,0xCFL},{0xCFL,0xC4L,0xCFL,0xCFL}}, // p_1651->g_172
        0x52EE5E14L, // p_1651->g_190
        &p_1651->g_111, // p_1651->g_192
        (-1L), // p_1651->g_194
        (-1L), // p_1651->g_199
        (void*)0, // p_1651->g_201
        &p_1651->g_201, // p_1651->g_202
        0x07E18782L, // p_1651->g_232
        1L, // p_1651->g_240
        0x178109C5ACBA4C37L, // p_1651->g_243
        0x28L, // p_1651->g_262
        0x58L, // p_1651->g_278
        {3L}, // p_1651->g_285
        {{0xD8L,0xD8L,0xD8L,0xD8L,0xD8L},{0xD8L,0xD8L,0xD8L,0xD8L,0xD8L}}, // p_1651->g_318
        0x6560L, // p_1651->g_328
        (void*)0, // p_1651->g_329
        {6UL,6UL}, // p_1651->g_370
        &p_1651->g_94[0][3], // p_1651->g_378
        {0x5BL,0x5BL}, // p_1651->g_380
        1UL, // p_1651->g_392
        (void*)0, // p_1651->g_399
        &p_1651->g_399, // p_1651->g_398
        &p_1651->g_398, // p_1651->g_397
        1UL, // p_1651->g_417
        (void*)0, // p_1651->g_460
        &p_1651->g_460, // p_1651->g_459
        2UL, // p_1651->g_479
        4294967295UL, // p_1651->g_484
        1UL, // p_1651->g_488
        {{{&p_1651->g_94[2][7]},{&p_1651->g_94[2][7]}},{{&p_1651->g_94[2][7]},{&p_1651->g_94[2][7]}},{{&p_1651->g_94[2][7]},{&p_1651->g_94[2][7]}},{{&p_1651->g_94[2][7]},{&p_1651->g_94[2][7]}},{{&p_1651->g_94[2][7]},{&p_1651->g_94[2][7]}},{{&p_1651->g_94[2][7]},{&p_1651->g_94[2][7]}},{{&p_1651->g_94[2][7]},{&p_1651->g_94[2][7]}},{{&p_1651->g_94[2][7]},{&p_1651->g_94[2][7]}},{{&p_1651->g_94[2][7]},{&p_1651->g_94[2][7]}}}, // p_1651->g_497
        &p_1651->g_459, // p_1651->g_578
        {5L,0x6259L,5L,5L,0x6259L,5L,5L}, // p_1651->g_583
        (void*)0, // p_1651->g_588
        &p_1651->g_588, // p_1651->g_587
        &p_1651->g_588, // p_1651->g_589
        6L, // p_1651->g_594
        {{{(void*)0,&p_1651->g_594,(void*)0,&p_1651->g_594,(void*)0,(void*)0,&p_1651->g_594,&p_1651->g_594},{(void*)0,&p_1651->g_594,(void*)0,&p_1651->g_594,(void*)0,(void*)0,&p_1651->g_594,&p_1651->g_594},{(void*)0,&p_1651->g_594,(void*)0,&p_1651->g_594,(void*)0,(void*)0,&p_1651->g_594,&p_1651->g_594},{(void*)0,&p_1651->g_594,(void*)0,&p_1651->g_594,(void*)0,(void*)0,&p_1651->g_594,&p_1651->g_594}},{{(void*)0,&p_1651->g_594,(void*)0,&p_1651->g_594,(void*)0,(void*)0,&p_1651->g_594,&p_1651->g_594},{(void*)0,&p_1651->g_594,(void*)0,&p_1651->g_594,(void*)0,(void*)0,&p_1651->g_594,&p_1651->g_594},{(void*)0,&p_1651->g_594,(void*)0,&p_1651->g_594,(void*)0,(void*)0,&p_1651->g_594,&p_1651->g_594},{(void*)0,&p_1651->g_594,(void*)0,&p_1651->g_594,(void*)0,(void*)0,&p_1651->g_594,&p_1651->g_594}},{{(void*)0,&p_1651->g_594,(void*)0,&p_1651->g_594,(void*)0,(void*)0,&p_1651->g_594,&p_1651->g_594},{(void*)0,&p_1651->g_594,(void*)0,&p_1651->g_594,(void*)0,(void*)0,&p_1651->g_594,&p_1651->g_594},{(void*)0,&p_1651->g_594,(void*)0,&p_1651->g_594,(void*)0,(void*)0,&p_1651->g_594,&p_1651->g_594},{(void*)0,&p_1651->g_594,(void*)0,&p_1651->g_594,(void*)0,(void*)0,&p_1651->g_594,&p_1651->g_594}},{{(void*)0,&p_1651->g_594,(void*)0,&p_1651->g_594,(void*)0,(void*)0,&p_1651->g_594,&p_1651->g_594},{(void*)0,&p_1651->g_594,(void*)0,&p_1651->g_594,(void*)0,(void*)0,&p_1651->g_594,&p_1651->g_594},{(void*)0,&p_1651->g_594,(void*)0,&p_1651->g_594,(void*)0,(void*)0,&p_1651->g_594,&p_1651->g_594},{(void*)0,&p_1651->g_594,(void*)0,&p_1651->g_594,(void*)0,(void*)0,&p_1651->g_594,&p_1651->g_594}}}, // p_1651->g_593
        {{{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0}},{{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0}},{{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0}},{{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0}},{{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0}},{{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0}},{{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0}},{{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0},{&p_1651->g_593[2][0][3],(void*)0,&p_1651->g_593[0][1][7],(void*)0}}}, // p_1651->g_592
        4294967295UL, // p_1651->g_601
        &p_1651->g_601, // p_1651->g_600
        &p_1651->g_600, // p_1651->g_599
        &p_1651->g_479, // p_1651->g_714
        {0xE754DC219C44CE20L,0xE754DC219C44CE20L,0xE754DC219C44CE20L,0xE754DC219C44CE20L,0xE754DC219C44CE20L}, // p_1651->g_719
        0x3640B1833E6D605CL, // p_1651->g_721
        &p_1651->g_41, // p_1651->g_732
        0x169038D5L, // p_1651->g_743
        0x2AL, // p_1651->g_916
        &p_1651->g_370[1], // p_1651->g_954
        &p_1651->g_954, // p_1651->g_953
        {{{&p_1651->g_459,&p_1651->g_459,&p_1651->g_459,&p_1651->g_459,&p_1651->g_459,&p_1651->g_459,&p_1651->g_459}},{{&p_1651->g_459,&p_1651->g_459,&p_1651->g_459,&p_1651->g_459,&p_1651->g_459,&p_1651->g_459,&p_1651->g_459}},{{&p_1651->g_459,&p_1651->g_459,&p_1651->g_459,&p_1651->g_459,&p_1651->g_459,&p_1651->g_459,&p_1651->g_459}},{{&p_1651->g_459,&p_1651->g_459,&p_1651->g_459,&p_1651->g_459,&p_1651->g_459,&p_1651->g_459,&p_1651->g_459}}}, // p_1651->g_987
        &p_1651->g_987[2][0][2], // p_1651->g_986
        &p_1651->g_987[2][0][2], // p_1651->g_989
        (void*)0, // p_1651->g_996
        7L, // p_1651->g_1006
        0xDFL, // p_1651->g_1007
        {1L,1L,1L,1L,1L,1L}, // p_1651->g_1040
        (void*)0, // p_1651->g_1102
        &p_1651->g_1102, // p_1651->g_1101
        (void*)0, // p_1651->g_1226
        {&p_1651->g_1226,&p_1651->g_1226,&p_1651->g_1226,&p_1651->g_1226}, // p_1651->g_1225
        (void*)0, // p_1651->g_1261
        &p_1651->g_1261, // p_1651->g_1260
        {4L,4L,4L,4L}, // p_1651->g_1325
        0xD4F75B457DD02A04L, // p_1651->g_1329
        &p_1651->g_589, // p_1651->g_1367
        &p_1651->g_589, // p_1651->g_1399
        {0xB98EA04BL,0xB98EA04BL,0xB98EA04BL,0xB98EA04BL,0xB98EA04BL,0xB98EA04BL}, // p_1651->g_1468
        {(-7L),(-7L),(-7L),(-7L)}, // p_1651->g_1471
        &p_1651->g_262, // p_1651->g_1475
        {{(void*)0,&p_1651->g_1475},{(void*)0,&p_1651->g_1475},{(void*)0,&p_1651->g_1475}}, // p_1651->g_1474
        &p_1651->g_1474[1][1], // p_1651->g_1476
        (void*)0, // p_1651->g_1489
        &p_1651->g_1489, // p_1651->g_1488
        0x5B123869L, // p_1651->g_1517
        (void*)0, // p_1651->g_1532
        (void*)0, // p_1651->g_1541
        &p_1651->g_18, // p_1651->g_1579
        sequence_input[get_global_id(0)], // p_1651->global_0_offset
        sequence_input[get_global_id(1)], // p_1651->global_1_offset
        sequence_input[get_global_id(2)], // p_1651->global_2_offset
        sequence_input[get_local_id(0)], // p_1651->local_0_offset
        sequence_input[get_local_id(1)], // p_1651->local_1_offset
        sequence_input[get_local_id(2)], // p_1651->local_2_offset
        sequence_input[get_group_id(0)], // p_1651->group_0_offset
        sequence_input[get_group_id(1)], // p_1651->group_1_offset
        sequence_input[get_group_id(2)], // p_1651->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 13)), permutations[0][get_linear_local_id()])), // p_1651->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1652 = c_1653;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1651);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1651->g_41, "p_1651->g_41", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1651->g_45[i], "p_1651->g_45[i]", print_hash_value);

    }
    transparent_crc(p_1651->g_65, "p_1651->g_65", print_hash_value);
    transparent_crc(p_1651->g_67, "p_1651->g_67", print_hash_value);
    transparent_crc(p_1651->g_78, "p_1651->g_78", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1651->g_94[i][j], "p_1651->g_94[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1651->g_97, "p_1651->g_97", print_hash_value);
    transparent_crc(p_1651->g_131, "p_1651->g_131", print_hash_value);
    transparent_crc(p_1651->g_146, "p_1651->g_146", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1651->g_172[i][j], "p_1651->g_172[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1651->g_190, "p_1651->g_190", print_hash_value);
    transparent_crc(p_1651->g_194, "p_1651->g_194", print_hash_value);
    transparent_crc(p_1651->g_199, "p_1651->g_199", print_hash_value);
    transparent_crc(p_1651->g_232, "p_1651->g_232", print_hash_value);
    transparent_crc(p_1651->g_240, "p_1651->g_240", print_hash_value);
    transparent_crc(p_1651->g_243, "p_1651->g_243", print_hash_value);
    transparent_crc(p_1651->g_262, "p_1651->g_262", print_hash_value);
    transparent_crc(p_1651->g_278, "p_1651->g_278", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1651->g_285[i], "p_1651->g_285[i]", print_hash_value);

    }
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1651->g_318[i][j], "p_1651->g_318[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1651->g_328, "p_1651->g_328", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1651->g_370[i], "p_1651->g_370[i]", print_hash_value);

    }
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1651->g_380[i], "p_1651->g_380[i]", print_hash_value);

    }
    transparent_crc(p_1651->g_392, "p_1651->g_392", print_hash_value);
    transparent_crc(p_1651->g_417, "p_1651->g_417", print_hash_value);
    transparent_crc(p_1651->g_479, "p_1651->g_479", print_hash_value);
    transparent_crc(p_1651->g_484, "p_1651->g_484", print_hash_value);
    transparent_crc(p_1651->g_488, "p_1651->g_488", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1651->g_583[i], "p_1651->g_583[i]", print_hash_value);

    }
    transparent_crc(p_1651->g_594, "p_1651->g_594", print_hash_value);
    transparent_crc(p_1651->g_601, "p_1651->g_601", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1651->g_719[i], "p_1651->g_719[i]", print_hash_value);

    }
    transparent_crc(p_1651->g_721, "p_1651->g_721", print_hash_value);
    transparent_crc(p_1651->g_743, "p_1651->g_743", print_hash_value);
    transparent_crc(p_1651->g_916, "p_1651->g_916", print_hash_value);
    transparent_crc(p_1651->g_1006, "p_1651->g_1006", print_hash_value);
    transparent_crc(p_1651->g_1007, "p_1651->g_1007", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1651->g_1040[i], "p_1651->g_1040[i]", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1651->g_1325[i], "p_1651->g_1325[i]", print_hash_value);

    }
    transparent_crc(p_1651->g_1329, "p_1651->g_1329", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1651->g_1468[i], "p_1651->g_1468[i]", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1651->g_1471[i], "p_1651->g_1471[i]", print_hash_value);

    }
    transparent_crc(p_1651->g_1517, "p_1651->g_1517", print_hash_value);
    transparent_crc(p_1651->l_comm_values[get_linear_local_id()], "p_1651->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1651->g_comm_values[get_linear_group_id() * 13 + get_linear_local_id()], "p_1651->g_comm_values[get_linear_group_id() * 13 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
