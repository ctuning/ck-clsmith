// ---fake_divergence ---inter_thread_comm -g 78,36,1 -l 3,3,1
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

__constant uint32_t permutations[10][9] = {
{6,0,8,4,2,5,1,3,7}, // permutation 0
{5,2,4,6,7,1,8,0,3}, // permutation 1
{5,8,3,4,0,1,6,2,7}, // permutation 2
{4,8,6,3,1,7,0,2,5}, // permutation 3
{3,4,8,2,0,7,5,1,6}, // permutation 4
{6,7,4,1,0,3,5,8,2}, // permutation 5
{4,6,0,8,5,1,2,7,3}, // permutation 6
{3,0,1,5,7,6,8,4,2}, // permutation 7
{7,3,5,6,2,8,4,1,0}, // permutation 8
{2,7,1,8,4,5,3,6,0} // permutation 9
};

// Seed: 102

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile int32_t g_2[2][5];
    int32_t g_3;
    volatile int32_t g_6[7][1][10];
    volatile int32_t g_7;
    volatile int32_t g_8;
    volatile int32_t g_9;
    int32_t g_10;
    int32_t g_12;
    volatile int32_t g_17;
    int32_t g_18;
    int32_t g_36;
    volatile int32_t g_37;
    int32_t g_38;
    int32_t g_98;
    uint32_t g_102;
    uint64_t g_108;
    volatile uint64_t g_111;
    volatile uint64_t g_112;
    volatile uint64_t g_113;
    volatile uint64_t *g_110[10];
    uint64_t g_117;
    int64_t g_124;
    uint8_t g_125[2];
    int8_t g_151;
    uint32_t g_152;
    int32_t g_154[3];
    int32_t *g_153;
    uint16_t g_165;
    uint64_t g_233;
    int32_t * volatile *g_292;
    int32_t * volatile **g_291;
    int64_t g_302;
    int64_t g_305[1][6][6];
    uint8_t g_322;
    uint8_t g_324[9][3][7];
    int32_t **g_336;
    int64_t *g_351;
    int8_t g_357[4];
    int16_t g_359;
    uint32_t g_365;
    int32_t g_370;
    volatile uint16_t g_459;
    uint8_t *g_463;
    uint8_t **g_462;
    uint8_t *** volatile g_461;
    int32_t * volatile g_497[5][3];
    volatile uint16_t g_514;
    uint64_t *g_561[10][2][3];
    uint64_t **g_560;
    int32_t g_617;
    int16_t g_655;
    volatile uint64_t g_657;
    uint32_t g_768;
    uint32_t *g_767;
    int32_t g_787;
    uint8_t g_864;
    int32_t *g_1043[2];
    int32_t * volatile *g_1042;
    uint16_t g_1092;
    volatile uint32_t * volatile * volatile g_1153[5];
    int32_t * volatile g_1183;
    uint32_t ***g_1187;
    uint32_t * volatile g_1190[9];
    uint32_t g_1268;
    int16_t *g_1297[5][10];
    int16_t **g_1296;
    int16_t * volatile *g_1422;
    int16_t * volatile * volatile *g_1421;
    int64_t *g_1482;
    int64_t **g_1481;
    int64_t *** volatile g_1480;
    int16_t g_1483;
    volatile uint32_t g_1489;
    uint16_t *g_1510;
    int32_t g_1609;
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
uint32_t  func_1(struct S0 * p_1634);
int16_t  func_26(int32_t * p_27, int32_t * p_28, int32_t * p_29, int32_t * p_30, struct S0 * p_1634);
int32_t  func_32(uint32_t  p_33, struct S0 * p_1634);
int32_t * func_60(int32_t * p_61, uint64_t  p_62, int64_t  p_63, struct S0 * p_1634);
int32_t * func_64(int64_t  p_65, uint8_t  p_66, int16_t  p_67, struct S0 * p_1634);
int64_t  func_68(uint32_t  p_69, int32_t  p_70, int32_t  p_71, uint8_t  p_72, struct S0 * p_1634);
uint64_t  func_78(int32_t * p_79, uint8_t  p_80, struct S0 * p_1634);
int32_t * func_81(uint32_t  p_82, struct S0 * p_1634);
uint32_t  func_83(int8_t  p_84, int32_t * p_85, int32_t  p_86, int64_t  p_87, struct S0 * p_1634);
uint8_t  func_95(int32_t * p_96, int32_t * p_97, struct S0 * p_1634);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1634->g_3 p_1634->g_10 p_1634->g_12 p_1634->g_18 p_1634->g_2 p_1634->g_291 p_1634->g_292 p_1634->g_153 p_1634->g_154 p_1634->g_463 p_1634->g_125 p_1634->g_1510 p_1634->g_1092 p_1634->g_9 p_1634->g_767 p_1634->g_768 p_1634->g_38 p_1634->g_336
 * writes: p_1634->g_3 p_1634->g_6 p_1634->g_7 p_1634->g_2 p_1634->g_10 p_1634->g_12 p_1634->g_18 p_1634->g_154 p_1634->g_117 p_1634->g_1092 p_1634->g_38
 */
uint32_t  func_1(struct S0 * p_1634)
{ /* block id: 4 */
    uint16_t l_21 = 0x52DEL;
    uint8_t ***l_1544[6] = {&p_1634->g_462,&p_1634->g_462,&p_1634->g_462,&p_1634->g_462,&p_1634->g_462,&p_1634->g_462};
    int32_t **l_1545 = &p_1634->g_153;
    uint32_t l_1546 = 9UL;
    uint32_t ***l_1548 = (void*)0;
    int16_t l_1572 = (-4L);
    int64_t l_1610 = 0x16AFE4411E16B412L;
    uint8_t l_1633 = 0xCDL;
    int i;
    for (p_1634->g_3 = 0; (p_1634->g_3 >= (-4)); p_1634->g_3--)
    { /* block id: 7 */
        uint64_t l_14[5] = {0xDE283BC1B0FE2CF4L,0xDE283BC1B0FE2CF4L,0xDE283BC1B0FE2CF4L,0xDE283BC1B0FE2CF4L,0xDE283BC1B0FE2CF4L};
        int32_t l_1526 = 9L;
        uint8_t ***l_1543 = &p_1634->g_462;
        uint64_t *l_1631 = &p_1634->g_117;
        int32_t *l_1632 = &p_1634->g_38;
        int i;
        for (p_1634->g_6[3][0][6] = 0; p_1634->g_6[3][0][6] < 2; p_1634->g_6[3][0][6] += 1)
        {
            for (p_1634->g_7 = 0; p_1634->g_7 < 5; p_1634->g_7 += 1)
            {
                p_1634->g_2[p_1634->g_6[3][0][6]][p_1634->g_7] = 0x5F9C7104L;
            }
        }
        for (p_1634->g_10 = 1; (p_1634->g_10 >= 0); p_1634->g_10 -= 1)
        { /* block id: 11 */
            int32_t *l_11 = &p_1634->g_12;
            int32_t *l_13[4];
            int16_t l_1547 = 0x1DECL;
            int i;
            for (i = 0; i < 4; i++)
                l_13[i] = &p_1634->g_12;
            --l_14[2];
            for (p_1634->g_12 = 3; (p_1634->g_12 >= 0); p_1634->g_12 -= 1)
            { /* block id: 15 */
                int32_t l_19 = 0x5C3C3AE5L;
                int i;
                l_13[p_1634->g_10] = (void*)0;
                for (p_1634->g_18 = 0; (p_1634->g_18 <= 1); p_1634->g_18 += 1)
                { /* block id: 19 */
                    int i, j;
                    p_1634->g_2[p_1634->g_10][(p_1634->g_12 + 1)] &= (-8L);
                }
                for (p_1634->g_18 = 1; (p_1634->g_18 >= 0); p_1634->g_18 -= 1)
                { /* block id: 24 */
                    int32_t l_20[10][7][3] = {{{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L}},{{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L}},{{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L}},{{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L}},{{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L}},{{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L}},{{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L}},{{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L}},{{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L}},{{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L},{5L,0x5F7F7777L,1L}}};
                    int i, j, k;
                    l_21++;
                    return p_1634->g_2[p_1634->g_10][(p_1634->g_12 + 1)];
                }
            }
            for (l_21 = 0; (l_21 <= 1); l_21 += 1)
            { /* block id: 31 */
                uint32_t **l_1140 = &p_1634->g_767;
                int32_t l_1500 = 0x0E9B0A12L;
                int32_t ***l_1542 = &p_1634->g_336;
                int32_t ****l_1541 = &l_1542;
                (1 + 1);
            }
            (*p_1634->g_153) = (***p_1634->g_291);
        }
        (*l_1632) ^= (((safe_lshift_func_uint8_t_u_u((safe_lshift_func_int16_t_s_s((**l_1545), 12)), (*p_1634->g_463))) , ((safe_rshift_func_int16_t_s_u((2L && (safe_div_func_uint32_t_u_u((((safe_rshift_func_int8_t_s_u((safe_lshift_func_int16_t_s_u((((GROUP_DIVERGE(1, 1) , ((*p_1634->g_1510) = (safe_add_func_int64_t_s_s((l_14[1] > 0L), ((((**l_1545) ^ (*p_1634->g_1510)) || (((**l_1545) , ((*l_1631) = l_14[2])) >= l_14[1])) != (**l_1545)))))) & 0x6146L) < p_1634->g_9), l_1526)), 1)) , 0xE9L) , (*p_1634->g_767)), l_14[2]))), l_1526)) , (**l_1545))) > (**p_1634->g_292));
        (**p_1634->g_336) |= 0x31365D33L;
    }
    return l_1633;
}


/* ------------------------------------------ */
/* 
 * reads : p_1634->g_768 p_1634->g_1153 p_1634->g_291 p_1634->g_292 p_1634->g_153 p_1634->g_305 p_1634->g_655 p_1634->g_154 p_1634->g_463 p_1634->g_125 p_1634->g_617 p_1634->g_359 p_1634->g_1489
 * writes: p_1634->g_768 p_1634->g_154 p_1634->g_617 p_1634->g_359 p_1634->g_1489
 */
int16_t  func_26(int32_t * p_27, int32_t * p_28, int32_t * p_29, int32_t * p_30, struct S0 * p_1634)
{ /* block id: 509 */
    uint32_t **l_1152 = (void*)0;
    int32_t l_1169[1];
    int16_t *l_1193[8] = {&p_1634->g_655,&p_1634->g_655,&p_1634->g_655,&p_1634->g_655,&p_1634->g_655,&p_1634->g_655,&p_1634->g_655,&p_1634->g_655};
    uint16_t l_1235[6][8] = {{0x5F11L,0x5F11L,0xF704L,0xDB67L,0UL,0xDB67L,0xF704L,0x5F11L},{0x5F11L,0x5F11L,0xF704L,0xDB67L,0UL,0xDB67L,0xF704L,0x5F11L},{0x5F11L,0x5F11L,0xF704L,0xDB67L,0UL,0xDB67L,0xF704L,0x5F11L},{0x5F11L,0x5F11L,0xF704L,0xDB67L,0UL,0xDB67L,0xF704L,0x5F11L},{0x5F11L,0x5F11L,0xF704L,0xDB67L,0UL,0xDB67L,0xF704L,0x5F11L},{0x5F11L,0x5F11L,0xF704L,0xDB67L,0UL,0xDB67L,0xF704L,0x5F11L}};
    int32_t l_1270 = 0x55BA344FL;
    uint8_t *l_1346 = (void*)0;
    uint32_t l_1420[5] = {4294967289UL,4294967289UL,4294967289UL,4294967289UL,4294967289UL};
    int16_t ***l_1423 = &p_1634->g_1296;
    int32_t l_1424 = 0x63AE53AFL;
    int64_t *l_1479[2];
    int64_t **l_1478 = &l_1479[1];
    uint32_t l_1492 = 6UL;
    int i, j;
    for (i = 0; i < 1; i++)
        l_1169[i] = 7L;
    for (i = 0; i < 2; i++)
        l_1479[i] = &p_1634->g_305[0][4][3];
    for (p_1634->g_768 = 0; (p_1634->g_768 != 12); p_1634->g_768 = safe_add_func_int32_t_s_s(p_1634->g_768, 4))
    { /* block id: 512 */
        uint32_t **l_1165 = (void*)0;
        uint32_t ***l_1164 = &l_1165;
        int32_t l_1168[2][8] = {{0x281122AAL,0x281122AAL,(-1L),(-1L),0x1C6CA0DBL,(-1L),(-1L),0x281122AAL},{0x281122AAL,0x281122AAL,(-1L),(-1L),0x1C6CA0DBL,(-1L),(-1L),0x281122AAL}};
        int32_t *l_1170 = (void*)0;
        int i, j;
        l_1169[0] = (safe_lshift_func_int8_t_s_u((((safe_lshift_func_int16_t_s_s((l_1152 != p_1634->g_1153[4]), (((void*)0 != &p_1634->g_767) > ((-5L) != (safe_rshift_func_uint16_t_u_u(((((***p_1634->g_291) = 0x47BDF30CL) , (safe_lshift_func_int16_t_s_s((safe_add_func_int16_t_s_s((safe_mod_func_uint64_t_u_u((((void*)0 != l_1164) || (safe_rshift_func_int16_t_s_u((p_1634->g_305[0][4][3] < 7UL), 7))), l_1168[1][6])), l_1169[0])), p_1634->g_655))) >= 1L), 11)))))) , (**p_1634->g_292)) == l_1168[0][5]), (*p_1634->g_463)));
    }
    if (p_1634->g_655)
        goto lbl_1484;
lbl_1484:
    for (p_1634->g_617 = 0; (p_1634->g_617 >= 0); p_1634->g_617 -= 1)
    { /* block id: 518 */
        uint16_t l_1171 = 1UL;
        int16_t *l_1192 = &p_1634->g_655;
        int16_t **l_1191 = &l_1192;
        int32_t l_1200 = 0x1155FD24L;
        uint64_t l_1224 = 18446744073709551613UL;
        int32_t l_1232 = 0x23877780L;
        int32_t l_1233 = 0x45151ED6L;
        int32_t l_1234 = 0x156D1050L;
        uint8_t l_1256 = 255UL;
        int32_t *l_1281 = &p_1634->g_370;
        int16_t ***l_1298 = &l_1191;
        int32_t **l_1364 = (void*)0;
        uint32_t l_1454 = 0xBBC92CC4L;
        (1 + 1);
    }
    for (p_1634->g_359 = 0; (p_1634->g_359 <= 2); p_1634->g_359 += 1)
    { /* block id: 702 */
        int32_t l_1485 = 0L;
        int32_t *l_1486 = &p_1634->g_154[1];
        int32_t *l_1487 = &l_1485;
        int32_t *l_1488[1];
        int i;
        for (i = 0; i < 1; i++)
            l_1488[i] = &p_1634->g_370;
        p_1634->g_1489++;
        if (p_1634->g_154[p_1634->g_359])
            continue;
        (**p_1634->g_292) &= (l_1492 , 5L);
    }
    return l_1169[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1634->g_3 p_1634->g_36 p_1634->g_38 p_1634->g_2 p_1634->g_153 p_1634->g_151 p_1634->g_292
 * writes: p_1634->g_36 p_1634->g_38 p_1634->g_154 p_1634->g_151
 */
int32_t  func_32(uint32_t  p_33, struct S0 * p_1634)
{ /* block id: 38 */
    uint64_t l_46[5][7][2] = {{{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL}},{{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL}},{{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL}},{{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL}},{{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL},{1UL,18446744073709551615UL}}};
    int32_t l_52 = 0x67FEFA8CL;
    int32_t l_992 = (-5L);
    uint32_t l_1031[3][7] = {{0xF3468E95L,0x6615AE36L,0x87CC5F70L,0x6615AE36L,0xF3468E95L,0xF3468E95L,0x6615AE36L},{0xF3468E95L,0x6615AE36L,0x87CC5F70L,0x6615AE36L,0xF3468E95L,0xF3468E95L,0x6615AE36L},{0xF3468E95L,0x6615AE36L,0x87CC5F70L,0x6615AE36L,0xF3468E95L,0xF3468E95L,0x6615AE36L}};
    int32_t **l_1107 = &p_1634->g_1043[0];
    int32_t l_1125[6][3][2] = {{{0x3178D730L,0x3178D730L},{0x3178D730L,0x3178D730L},{0x3178D730L,0x3178D730L}},{{0x3178D730L,0x3178D730L},{0x3178D730L,0x3178D730L},{0x3178D730L,0x3178D730L}},{{0x3178D730L,0x3178D730L},{0x3178D730L,0x3178D730L},{0x3178D730L,0x3178D730L}},{{0x3178D730L,0x3178D730L},{0x3178D730L,0x3178D730L},{0x3178D730L,0x3178D730L}},{{0x3178D730L,0x3178D730L},{0x3178D730L,0x3178D730L},{0x3178D730L,0x3178D730L}},{{0x3178D730L,0x3178D730L},{0x3178D730L,0x3178D730L},{0x3178D730L,0x3178D730L}}};
    uint64_t l_1135 = 0xB06347A931751264L;
    int i, j, k;
lbl_1115:
    for (p_33 = (-5); (p_33 != 46); p_33 = safe_add_func_int8_t_s_s(p_33, 7))
    { /* block id: 41 */
        uint32_t l_43[9][3][9] = {{{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL}},{{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL}},{{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL}},{{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL}},{{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL}},{{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL}},{{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL}},{{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL}},{{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL},{4294967295UL,4294967295UL,6UL,0x64E3C6AAL,4294967292UL,0UL,4294967295UL,9UL,4294967295UL}}};
        int32_t l_53 = 8L;
        int32_t l_54 = 8L;
        int32_t l_55[4][3] = {{(-5L),0x1050BF12L,(-5L)},{(-5L),0x1050BF12L,(-5L)},{(-5L),0x1050BF12L,(-5L)},{(-5L),0x1050BF12L,(-5L)}};
        int64_t l_56 = 0x400369CA922C56DEL;
        uint64_t ***l_883 = &p_1634->g_560;
        uint64_t ***l_884 = &p_1634->g_560;
        uint32_t l_911 = 0x42C0A563L;
        uint32_t l_914 = 7UL;
        int i, j, k;
        if (p_1634->g_3)
            break;
        for (p_1634->g_36 = 1; (p_1634->g_36 >= 0); p_1634->g_36 -= 1)
        { /* block id: 45 */
            int32_t *l_40 = &p_1634->g_38;
            int32_t *l_41 = (void*)0;
            int32_t *l_42[5][8] = {{&p_1634->g_18,&p_1634->g_18,&p_1634->g_18,(void*)0,&p_1634->g_36,&p_1634->g_38,&p_1634->g_18,&p_1634->g_36},{&p_1634->g_18,&p_1634->g_18,&p_1634->g_18,(void*)0,&p_1634->g_36,&p_1634->g_38,&p_1634->g_18,&p_1634->g_36},{&p_1634->g_18,&p_1634->g_18,&p_1634->g_18,(void*)0,&p_1634->g_36,&p_1634->g_38,&p_1634->g_18,&p_1634->g_36},{&p_1634->g_18,&p_1634->g_18,&p_1634->g_18,(void*)0,&p_1634->g_36,&p_1634->g_38,&p_1634->g_18,&p_1634->g_36},{&p_1634->g_18,&p_1634->g_18,&p_1634->g_18,(void*)0,&p_1634->g_36,&p_1634->g_38,&p_1634->g_18,&p_1634->g_36}};
            uint32_t l_49 = 1UL;
            uint32_t l_957 = 0x6AAE3CB4L;
            uint8_t l_1040 = 0UL;
            uint32_t *l_1109 = (void*)0;
            int i, j;
            for (p_1634->g_38 = 1; (p_1634->g_38 >= 0); p_1634->g_38 -= 1)
            { /* block id: 48 */
                volatile int32_t *l_39 = (void*)0;
                int i, j;
                l_39 = &p_1634->g_2[p_1634->g_38][(p_1634->g_38 + 1)];
            }
            if (p_1634->g_2[1][4])
                continue;
            --l_43[1][1][6];
            ++l_46[2][0][1];
            for (p_1634->g_38 = 0; (p_1634->g_38 <= 0); p_1634->g_38 += 1)
            { /* block id: 56 */
                int32_t *l_90 = &l_53;
                volatile int32_t *l_995 = &p_1634->g_9;
                uint64_t l_1039 = 18446744073709551608UL;
                int32_t l_1064[7][1][3] = {{{(-1L),0x5625427BL,0L}},{{(-1L),0x5625427BL,0L}},{{(-1L),0x5625427BL,0L}},{{(-1L),0x5625427BL,0L}},{{(-1L),0x5625427BL,0L}},{{(-1L),0x5625427BL,0L}},{{(-1L),0x5625427BL,0L}}};
                uint32_t l_1067 = 0x2C883451L;
                int i, j, k;
                (1 + 1);
            }
        }
        (*p_1634->g_153) = 0x30B34C8DL;
    }
    for (p_1634->g_151 = 0; (p_1634->g_151 >= (-23)); p_1634->g_151 = safe_sub_func_int8_t_s_s(p_1634->g_151, 7))
    { /* block id: 494 */
        int32_t *l_1116 = &l_992;
        int32_t *l_1117 = &p_1634->g_154[2];
        int32_t *l_1118 = &p_1634->g_154[2];
        int32_t *l_1119 = &l_992;
        int32_t *l_1120 = &p_1634->g_38;
        int32_t *l_1121[2][5][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
        uint64_t l_1122 = 0xC896E20F24F8EC97L;
        uint64_t l_1126 = 1UL;
        int i, j, k;
        if (p_33)
            goto lbl_1115;
        --l_1122;
        l_1126--;
        if ((*l_1119))
            break;
    }
    for (l_52 = 0; (l_52 != (-21)); l_52--)
    { /* block id: 502 */
        int32_t l_1131 = 6L;
        int32_t *l_1132 = &p_1634->g_98;
        int32_t *l_1133 = &l_1131;
        int32_t *l_1134[10] = {&p_1634->g_3,&p_1634->g_370,&p_1634->g_3,&p_1634->g_3,&p_1634->g_370,&p_1634->g_3,&p_1634->g_3,&p_1634->g_370,&p_1634->g_3,&p_1634->g_3};
        int i;
        l_1135--;
        (**p_1634->g_292) = 0L;
        if (p_33)
            continue;
    }
    return p_33;
}


/* ------------------------------------------ */
/* 
 * reads : p_1634->g_152 p_1634->g_125 p_1634->g_370 p_1634->g_291 p_1634->g_292 p_1634->g_336 p_1634->g_153
 * writes: p_1634->g_152 p_1634->g_154 p_1634->g_370 p_1634->g_153
 */
int32_t * func_60(int32_t * p_61, uint64_t  p_62, int64_t  p_63, struct S0 * p_1634)
{ /* block id: 390 */
    uint64_t l_874 = 18446744073709551615UL;
    int32_t *l_877 = &p_1634->g_370;
    for (p_1634->g_152 = 0; (p_1634->g_152 <= 1); p_1634->g_152 += 1)
    { /* block id: 393 */
        uint32_t l_868 = 9UL;
        int32_t l_871 = 0x6B6A5F04L;
        int32_t *l_872 = &p_1634->g_154[1];
        int32_t *l_873[7] = {(void*)0,&p_1634->g_36,(void*)0,(void*)0,&p_1634->g_36,(void*)0,(void*)0};
        int i;
        --l_868;
        l_874--;
        (*l_872) = p_1634->g_125[p_1634->g_152];
    }
    (*l_877) &= l_874;
    (**p_1634->g_291) = (void*)0;
    return (*p_1634->g_336);
}


/* ------------------------------------------ */
/* 
 * reads : p_1634->g_108 p_1634->g_102 p_1634->g_117 p_1634->g_322 p_1634->g_324 p_1634->g_125 p_1634->g_151 p_1634->g_153 p_1634->g_36 p_1634->g_18 p_1634->g_2 p_1634->g_459 p_1634->g_154 p_1634->g_461 p_1634->g_336 p_1634->g_370 p_1634->g_365 p_1634->g_291 p_1634->g_292 p_1634->g_462 p_1634->g_463 p_1634->g_6 p_1634->g_124 p_1634->g_12 p_1634->g_359 p_1634->g_98 p_1634->g_514 p_1634->g_3 p_1634->g_357 p_1634->g_351 p_1634->g_560 p_1634->g_152 p_1634->g_165 p_1634->g_302 p_1634->g_657 p_1634->g_9 p_1634->g_561 p_1634->g_233
 * writes: p_1634->g_108 p_1634->g_102 p_1634->g_117 p_1634->g_125 p_1634->g_151 p_1634->g_124 p_1634->g_370 p_1634->g_365 p_1634->g_165 p_1634->g_233 p_1634->g_98 p_1634->g_514 p_1634->g_359 p_1634->g_351 p_1634->g_560 p_1634->g_302 p_1634->g_655 p_1634->g_324 p_1634->g_153 p_1634->g_657 p_1634->g_617 p_1634->g_6 p_1634->g_154
 */
int32_t * func_64(int64_t  p_65, uint8_t  p_66, int16_t  p_67, struct S0 * p_1634)
{ /* block id: 200 */
    int64_t l_452 = 0x3AB5F643539FFBFBL;
    int32_t l_464 = 0x7CD5E790L;
    uint32_t l_541[8] = {0x470E2D56L,0x470E2D56L,0x470E2D56L,0x470E2D56L,0x470E2D56L,0x470E2D56L,0x470E2D56L,0x470E2D56L};
    int32_t l_548 = 1L;
    uint8_t *l_552[7] = {(void*)0,&p_1634->g_324[6][1][5],(void*)0,(void*)0,&p_1634->g_324[6][1][5],(void*)0,(void*)0};
    int32_t ***l_557 = &p_1634->g_336;
    uint64_t **l_564 = &p_1634->g_561[7][1][1];
    int32_t l_573 = 0x35DD1BB5L;
    int32_t l_574 = (-1L);
    int32_t l_576 = 0x640A0F2CL;
    int32_t l_577 = (-1L);
    int32_t l_582[4][7][8] = {{{0L,0L,0x39ADE215L,1L,5L,0x3583E42BL,0x350A8EB4L,0x60CB1356L},{0L,0L,0x39ADE215L,1L,5L,0x3583E42BL,0x350A8EB4L,0x60CB1356L},{0L,0L,0x39ADE215L,1L,5L,0x3583E42BL,0x350A8EB4L,0x60CB1356L},{0L,0L,0x39ADE215L,1L,5L,0x3583E42BL,0x350A8EB4L,0x60CB1356L},{0L,0L,0x39ADE215L,1L,5L,0x3583E42BL,0x350A8EB4L,0x60CB1356L},{0L,0L,0x39ADE215L,1L,5L,0x3583E42BL,0x350A8EB4L,0x60CB1356L},{0L,0L,0x39ADE215L,1L,5L,0x3583E42BL,0x350A8EB4L,0x60CB1356L}},{{0L,0L,0x39ADE215L,1L,5L,0x3583E42BL,0x350A8EB4L,0x60CB1356L},{0L,0L,0x39ADE215L,1L,5L,0x3583E42BL,0x350A8EB4L,0x60CB1356L},{0L,0L,0x39ADE215L,1L,5L,0x3583E42BL,0x350A8EB4L,0x60CB1356L},{0L,0L,0x39ADE215L,1L,5L,0x3583E42BL,0x350A8EB4L,0x60CB1356L},{0L,0L,0x39ADE215L,1L,5L,0x3583E42BL,0x350A8EB4L,0x60CB1356L},{0L,0L,0x39ADE215L,1L,5L,0x3583E42BL,0x350A8EB4L,0x60CB1356L},{0L,0L,0x39ADE215L,1L,5L,0x3583E42BL,0x350A8EB4L,0x60CB1356L}},{{0L,0L,0x39ADE215L,1L,5L,0x3583E42BL,0x350A8EB4L,0x60CB1356L},{0L,0L,0x39ADE215L,1L,5L,0x3583E42BL,0x350A8EB4L,0x60CB1356L},{0L,0L,0x39ADE215L,1L,5L,0x3583E42BL,0x350A8EB4L,0x60CB1356L},{0L,0L,0x39ADE215L,1L,5L,0x3583E42BL,0x350A8EB4L,0x60CB1356L},{0L,0L,0x39ADE215L,1L,5L,0x3583E42BL,0x350A8EB4L,0x60CB1356L},{0L,0L,0x39ADE215L,1L,5L,0x3583E42BL,0x350A8EB4L,0x60CB1356L},{0L,0L,0x39ADE215L,1L,5L,0x3583E42BL,0x350A8EB4L,0x60CB1356L}},{{0L,0L,0x39ADE215L,1L,5L,0x3583E42BL,0x350A8EB4L,0x60CB1356L},{0L,0L,0x39ADE215L,1L,5L,0x3583E42BL,0x350A8EB4L,0x60CB1356L},{0L,0L,0x39ADE215L,1L,5L,0x3583E42BL,0x350A8EB4L,0x60CB1356L},{0L,0L,0x39ADE215L,1L,5L,0x3583E42BL,0x350A8EB4L,0x60CB1356L},{0L,0L,0x39ADE215L,1L,5L,0x3583E42BL,0x350A8EB4L,0x60CB1356L},{0L,0L,0x39ADE215L,1L,5L,0x3583E42BL,0x350A8EB4L,0x60CB1356L},{0L,0L,0x39ADE215L,1L,5L,0x3583E42BL,0x350A8EB4L,0x60CB1356L}}};
    int8_t l_612 = 0x04L;
    int32_t *l_616 = &p_1634->g_617;
    uint64_t l_702 = 0UL;
    int8_t l_705 = (-8L);
    uint64_t *l_732 = (void*)0;
    uint64_t *l_733 = &l_702;
    int64_t l_738 = 0x3F7DF2E604EA299FL;
    int64_t *l_739 = &l_452;
    int32_t *l_740 = &p_1634->g_154[2];
    uint32_t l_773 = 4294967286UL;
    uint16_t l_794 = 0x8A14L;
    int32_t l_847[5][9] = {{0x4F92DAB2L,0x4F92DAB2L,0x3C137442L,0x7881D346L,0x653645B6L,0x7881D346L,0x3C137442L,0x4F92DAB2L,0x4F92DAB2L},{0x4F92DAB2L,0x4F92DAB2L,0x3C137442L,0x7881D346L,0x653645B6L,0x7881D346L,0x3C137442L,0x4F92DAB2L,0x4F92DAB2L},{0x4F92DAB2L,0x4F92DAB2L,0x3C137442L,0x7881D346L,0x653645B6L,0x7881D346L,0x3C137442L,0x4F92DAB2L,0x4F92DAB2L},{0x4F92DAB2L,0x4F92DAB2L,0x3C137442L,0x7881D346L,0x653645B6L,0x7881D346L,0x3C137442L,0x4F92DAB2L,0x4F92DAB2L},{0x4F92DAB2L,0x4F92DAB2L,0x3C137442L,0x7881D346L,0x653645B6L,0x7881D346L,0x3C137442L,0x4F92DAB2L,0x4F92DAB2L}};
    int i, j, k;
    for (p_1634->g_108 = 7; (p_1634->g_108 != 17); p_1634->g_108++)
    { /* block id: 203 */
        int64_t *l_422 = (void*)0;
        int32_t l_440 = 0x715121DDL;
        int64_t l_458 = (-1L);
        uint32_t l_569 = 0UL;
        int32_t l_575 = (-1L);
        int32_t l_578 = 0x07E581DFL;
        int32_t l_579 = (-1L);
        int32_t l_580 = 1L;
        int32_t l_581 = (-1L);
        int32_t l_583 = 0x51136EE0L;
        int32_t l_584[10][2] = {{(-10L),0x1361A3AFL},{(-10L),0x1361A3AFL},{(-10L),0x1361A3AFL},{(-10L),0x1361A3AFL},{(-10L),0x1361A3AFL},{(-10L),0x1361A3AFL},{(-10L),0x1361A3AFL},{(-10L),0x1361A3AFL},{(-10L),0x1361A3AFL},{(-10L),0x1361A3AFL}};
        uint32_t l_585 = 0xBE9E8150L;
        uint32_t l_613 = 0x7DFE5AC8L;
        int i, j;
        for (p_1634->g_102 = 0; (p_1634->g_102 > 1); ++p_1634->g_102)
        { /* block id: 206 */
            uint64_t *l_431 = &p_1634->g_117;
            int32_t l_441[2];
            int8_t *l_450 = &p_1634->g_151;
            int16_t *l_451[5][8][6] = {{{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359}},{{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359}},{{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359}},{{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359}},{{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359},{&p_1634->g_359,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,&p_1634->g_359}}};
            uint8_t *l_453 = &p_1634->g_125[1];
            int32_t l_454[5][7][1] = {{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}}};
            int64_t *l_455 = (void*)0;
            int64_t *l_456 = (void*)0;
            int64_t *l_457 = &p_1634->g_124;
            uint32_t l_460[9][10][2] = {{{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL}},{{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL}},{{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL}},{{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL}},{{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL}},{{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL}},{{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL}},{{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL}},{{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL},{0x62E02450L,0UL}}};
            uint8_t **l_485 = &p_1634->g_463;
            uint64_t ***l_562 = (void*)0;
            uint64_t ***l_563 = &p_1634->g_560;
            int32_t *l_570 = &p_1634->g_370;
            int32_t *l_571 = &p_1634->g_154[0];
            int32_t *l_572[7] = {(void*)0,&p_1634->g_38,(void*)0,(void*)0,&p_1634->g_38,(void*)0,(void*)0};
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_441[i] = (-9L);
            if ((((safe_div_func_int16_t_s_s((safe_mul_func_int16_t_s_s((l_441[0] = ((l_422 = &p_1634->g_305[0][4][3]) == ((safe_sub_func_uint32_t_u_u(((safe_rshift_func_uint16_t_u_s(((safe_div_func_uint8_t_u_u(((safe_div_func_uint64_t_u_u((+((++(*l_431)) || ((((safe_sub_func_uint32_t_u_u(((safe_mod_func_int64_t_s_s(((safe_add_func_uint32_t_u_u(l_440, ((((((l_441[0] && p_65) != ((*l_457) = (safe_add_func_int64_t_s_s((safe_mul_func_int8_t_s_s(((*l_450) |= ((safe_rshift_func_uint8_t_u_u(p_1634->g_322, ((l_454[2][2][0] |= (safe_lshift_func_uint8_t_u_u(0xF5L, ((*l_453) &= (((void*)0 == l_450) , ((l_452 = ((l_440 | p_1634->g_324[1][0][2]) == 0x0236L)) & 0x1157L)))))) ^ p_1634->g_117))) == p_65)), FAKE_DIVERGE(p_1634->global_1_offset, get_global_id(1), 10))), 0x13C6A15DF48449C6L)))) & (*p_1634->g_153)) , 0xF6F0L) < 1UL) != (*p_1634->g_153)))) , l_458), p_66)) ^ l_440), p_65)) != p_1634->g_2[1][4]) < p_66) > (-1L)))), 0x6303131CCC5579FFL)) , p_67), p_66)) , p_1634->g_459), 1)) , p_65), 0L)) , &p_65))), p_1634->g_154[1])), (-4L))) <= GROUP_DIVERGE(0, 1)) , l_460[7][6][0]))
            { /* block id: 215 */
                int32_t *l_465 = &p_1634->g_370;
                int32_t l_466 = 0x3D463A5FL;
                int32_t * volatile l_469 = &l_454[2][2][0];/* VOLATILE GLOBAL l_469 */
                l_464 ^= ((void*)0 == p_1634->g_461);
                l_466 |= ((*l_465) &= (**p_1634->g_336));
                (*l_465) &= ((1L & (l_451[0][5][0] != (void*)0)) != (-7L));
                if ((**p_1634->g_336))
                { /* block id: 220 */
                    return (*p_1634->g_336);
                }
                else
                { /* block id: 222 */
                    uint64_t l_482 = 4UL;
                    for (p_1634->g_365 = 0; (p_1634->g_365 < 34); p_1634->g_365 = safe_add_func_uint8_t_u_u(p_1634->g_365, 3))
                    { /* block id: 225 */
                        l_469 = (**p_1634->g_291);
                    }
                    for (p_65 = 29; (p_65 != 22); --p_65)
                    { /* block id: 230 */
                        uint16_t *l_483 = &p_1634->g_165;
                        uint8_t ***l_484[4];
                        int i, j;
                        for (i = 0; i < 4; i++)
                            l_484[i] = &p_1634->g_462;
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        p_1634->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 9)), permutations[(safe_mod_func_uint32_t_u_u((p_66 || (((*l_483) = ((0x5B2F3097L < (((((*l_457) |= (0x41AAL >= (((p_66 >= p_67) , (((((safe_rshift_func_uint8_t_u_s((safe_lshift_func_uint16_t_u_s(((safe_mul_func_int8_t_s_s(((p_1634->g_153 != (void*)0) | ((((**p_1634->g_462) && ((safe_add_func_int64_t_s_s(p_1634->g_324[6][2][4], l_482)) & FAKE_DIVERGE(p_1634->local_0_offset, get_local_id(0), 10))) || 3UL) | 0L)), p_1634->g_154[0])) & 18446744073709551614UL), 4)), p_1634->g_6[3][0][6])) != (*l_465)) < 0UL) | p_67) == p_66)) >= 0x2415567A5E661701L))) != (-1L)) , (-1L)) > FAKE_DIVERGE(p_1634->local_1_offset, get_local_id(1), 10))) && p_66)) && p_65)), 10))][(safe_mod_func_uint32_t_u_u(p_1634->tid, 9))]));
                        l_485 = (void*)0;
                    }
                }
            }
            else
            { /* block id: 239 */
                uint64_t *l_488 = (void*)0;
                uint64_t *l_489[8];
                int32_t l_492 = 0x5B5E9356L;
                uint16_t *l_495 = &p_1634->g_165;
                int32_t *l_496 = (void*)0;
                int32_t *l_498 = (void*)0;
                int32_t *l_499 = &p_1634->g_98;
                int16_t l_536 = (-1L);
                int32_t ***l_556[1];
                int i;
                for (i = 0; i < 8; i++)
                    l_489[i] = &p_1634->g_233;
                for (i = 0; i < 1; i++)
                    l_556[i] = &p_1634->g_336;
                (*l_499) = (safe_lshift_func_int8_t_s_s((p_1634->g_12 <= ((((p_1634->g_233 = l_452) , (safe_mod_func_uint64_t_u_u((((*l_495) = ((p_1634->g_359 == (((l_492 < (!((1UL | (safe_sub_func_uint64_t_u_u(p_65, (((((!(p_1634->g_125[0] == (((void*)0 != p_1634->g_153) > 0UL))) & p_66) >= l_441[0]) < p_67) && p_67)))) <= p_1634->g_322))) || l_458) && (-5L))) == (-3L))) , p_67), p_67))) , 0x401061F75A280EA4L) , 0x695D466DE73A0E2AL)), 7));
                for (p_1634->g_98 = 0; (p_1634->g_98 <= 0); p_1634->g_98 += 1)
                { /* block id: 245 */
                    int32_t *l_500 = &l_492;
                    int32_t *l_501 = &l_441[0];
                    int32_t *l_502 = &l_440;
                    int32_t *l_503 = (void*)0;
                    int32_t *l_504 = &l_492;
                    int32_t *l_505 = &l_441[1];
                    int32_t *l_506 = &p_1634->g_154[1];
                    int32_t *l_507 = &l_440;
                    int32_t *l_508 = &l_454[2][2][0];
                    int32_t *l_509 = &l_454[2][2][0];
                    int32_t *l_510 = &l_492;
                    int32_t *l_511 = &l_454[2][2][0];
                    int32_t *l_512 = &l_441[0];
                    int32_t *l_513[10] = {&l_454[2][2][0],&l_464,&l_454[2][2][0],&l_454[2][2][0],&l_464,&l_454[2][2][0],&l_454[2][2][0],&l_464,&l_454[2][2][0],&l_454[2][2][0]};
                    int i, j, k;
                    p_1634->g_514++;
                }
                if (p_66)
                { /* block id: 248 */
                    if (p_65)
                        break;
                }
                else
                { /* block id: 250 */
                    int32_t *l_519 = &p_1634->g_12;
                    uint8_t *l_553 = (void*)0;
                    for (l_440 = (-29); (l_440 < 8); ++l_440)
                    { /* block id: 253 */
                        return l_519;
                    }
                    for (p_1634->g_359 = (-13); (p_1634->g_359 != 9); p_1634->g_359 = safe_add_func_int64_t_s_s(p_1634->g_359, 6))
                    { /* block id: 258 */
                        int64_t **l_537 = &p_1634->g_351;
                        int32_t l_549 = (-4L);
                        if ((*l_519))
                            break;
                        if (l_452)
                            break;
                        l_549 |= (l_548 |= (((safe_lshift_func_int16_t_s_s((((safe_div_func_uint16_t_u_u(((safe_sub_func_int16_t_s_s((safe_add_func_uint8_t_u_u(((**p_1634->g_462) = (((((void*)0 == &p_67) >= (safe_rshift_func_int8_t_s_s(((((*l_457) = (((p_1634->g_18 , (safe_add_func_int32_t_s_s(((((*l_431) = (safe_lshift_func_int8_t_s_u(p_1634->g_3, (&p_1634->g_124 == (l_536 , ((*l_537) = &p_1634->g_124)))))) | FAKE_DIVERGE(p_1634->local_0_offset, get_local_id(0), 10)) > ((p_66 = (safe_mul_func_int16_t_s_s(((safe_unary_minus_func_int8_t_s((+l_541[1]))) >= (!(safe_add_func_uint8_t_u_u(((safe_div_func_int8_t_s_s((safe_sub_func_int32_t_s_s(((*l_499) = ((((((~(*l_519)) , p_1634->g_6[6][0][9]) == (*l_519)) != 0x7880AFE2L) || FAKE_DIVERGE(p_1634->local_1_offset, get_local_id(1), 10)) && p_65)), (*l_519))), l_440)) , GROUP_DIVERGE(0, 1)), p_66)))), 0x7E82L))) | p_67)), (***p_1634->g_291)))) <= 0xB2L) == 0xC892L)) & (-9L)) <= 18446744073709551608UL), 4))) == l_464) , 6UL)), 1L)), p_1634->g_357[1])) ^ (-5L)), p_65)) != p_67) | l_441[0]), 5)) > p_65) , l_454[1][6][0]));
                        l_440 ^= ((((0x75C5F31F38411CFBL != (safe_sub_func_uint8_t_u_u(((((GROUP_DIVERGE(2, 1) , l_552[0]) == l_553) || l_549) , ((safe_div_func_uint64_t_u_u((!(((l_556[0] != l_557) , func_81((safe_mul_func_uint8_t_u_u(0x6FL, ((p_66 < 1L) || 8UL))), p_1634)) != (void*)0)), 5UL)) <= 1UL)), p_1634->g_324[6][1][5]))) , 0x4CE9CE2CL) , (*p_1634->g_351)) != 0x5F9B359AF8D58A18L);
                    }
                    return (*p_1634->g_336);
                }
                if (p_67)
                    continue;
            }
            l_548 &= (((((((*l_563) = p_1634->g_560) == l_564) ^ 0x2BL) & p_1634->g_324[7][1][2]) ^ l_460[2][4][1]) & ((safe_lshift_func_uint8_t_u_u((((0x4C37L ^ (safe_lshift_func_uint8_t_u_u(((*p_1634->g_463) = (((void*)0 != &p_67) , p_67)), l_569))) , p_67) & p_65), p_65)) , p_1634->g_152));
            --l_585;
            if (l_583)
                continue;
        }
        for (p_1634->g_302 = 0; p_1634->g_302 < 8; p_1634->g_302 += 1)
        {
            l_541[p_1634->g_302] = 0UL;
        }
        for (p_1634->g_124 = 0; (p_1634->g_124 >= 0); p_1634->g_124 -= 1)
        { /* block id: 284 */
            int32_t *l_588 = &l_577;
            int32_t *l_589 = (void*)0;
            int32_t *l_590 = &l_578;
            int32_t *l_591 = &l_584[0][0];
            int32_t *l_592 = &p_1634->g_98;
            int32_t *l_593 = &l_548;
            int32_t *l_594 = &l_574;
            int32_t *l_595 = (void*)0;
            int32_t *l_596 = &l_582[2][5][4];
            int32_t *l_597 = &l_578;
            int32_t *l_598 = &l_584[7][0];
            int32_t *l_599 = &l_582[2][5][4];
            int32_t *l_600 = &l_573;
            int32_t *l_601 = &l_583;
            int32_t *l_602 = &l_576;
            int32_t *l_603 = &l_574;
            int32_t *l_604 = &l_440;
            int32_t *l_605 = &l_584[1][0];
            int32_t *l_606 = (void*)0;
            int32_t l_607[6] = {(-4L),0x679CA122L,(-4L),(-4L),0x679CA122L,(-4L)};
            int32_t *l_608 = &l_574;
            int32_t *l_609 = &l_581;
            int32_t *l_610 = &l_548;
            int32_t *l_611[6] = {&l_575,&l_575,&l_575,&l_575,&l_575,&l_575};
            uint64_t *l_662[9];
            int32_t ****l_669 = (void*)0;
            uint8_t l_676 = 0xB3L;
            int64_t l_677 = 0x2DF36B078E373E9CL;
            uint16_t *l_678 = &p_1634->g_165;
            int i;
            for (i = 0; i < 9; i++)
                l_662[i] = &p_1634->g_117;
            l_613++;
            for (l_581 = 0; (l_581 >= 0); l_581 -= 1)
            { /* block id: 288 */
                int8_t l_652[10][5] = {{0x33L,0x60L,0x78L,(-5L),0x60L},{0x33L,0x60L,0x78L,(-5L),0x60L},{0x33L,0x60L,0x78L,(-5L),0x60L},{0x33L,0x60L,0x78L,(-5L),0x60L},{0x33L,0x60L,0x78L,(-5L),0x60L},{0x33L,0x60L,0x78L,(-5L),0x60L},{0x33L,0x60L,0x78L,(-5L),0x60L},{0x33L,0x60L,0x78L,(-5L),0x60L},{0x33L,0x60L,0x78L,(-5L),0x60L},{0x33L,0x60L,0x78L,(-5L),0x60L}};
                int16_t *l_653 = &p_1634->g_359;
                uint32_t *l_654[1];
                int32_t l_656 = 0x0E8A0D0AL;
                int i, j, k;
                for (i = 0; i < 1; i++)
                    l_654[i] = (void*)0;
                (**p_1634->g_291) = func_81((((void*)0 == l_616) > (((p_1634->g_324[(l_581 + 8)][p_1634->g_124][(p_1634->g_124 + 5)] = (((safe_div_func_uint32_t_u_u(p_1634->g_514, (safe_div_func_int16_t_s_s((safe_mul_func_int16_t_s_s(((safe_div_func_int64_t_s_s((*l_608), (((--p_1634->g_165) <= p_1634->g_357[1]) | p_66))) , (safe_mul_func_int16_t_s_s((safe_lshift_func_int16_t_s_s(((safe_mod_func_uint8_t_u_u(((p_1634->g_655 = ((safe_mul_func_uint16_t_u_u((((safe_sub_func_int16_t_s_s((((safe_lshift_func_int16_t_s_u((((*l_653) = (((((*l_590) |= ((safe_rshift_func_uint8_t_u_u((safe_mod_func_uint8_t_u_u(((+((p_66 == (((**p_1634->g_462) , (((safe_lshift_func_uint8_t_u_u(((p_1634->g_151 = ((((safe_div_func_int32_t_s_s((250UL || l_581), 1L)) , &p_67) != (void*)0) > l_652[5][2])) | p_65), p_67)) | 18446744073709551610UL) ^ (-7L))) > 1UL)) != 1UL)) ^ p_1634->g_324[6][1][5]), p_67)), 5)) || l_652[9][3])) < 9L) >= l_652[5][2]) & 0L)) | FAKE_DIVERGE(p_1634->local_2_offset, get_local_id(2), 10)), 11)) , p_1634->g_108) ^ FAKE_DIVERGE(p_1634->group_1_offset, get_group_id(1), 10)), p_1634->g_302)) || (-9L)) > (**p_1634->g_462)), p_1634->g_365)) != (***l_557))) | 0x78DFE4E6L), (*p_1634->g_463))) > 7UL), 9)), p_1634->g_154[1]))), 0x4856L)), p_67)))) != p_1634->g_324[4][1][1]) <= p_1634->g_324[6][1][5])) & (*l_588)) , (*l_598))), p_1634);
                p_1634->g_657--;
            }
            if (((((*l_600) , (((void*)0 == l_662[4]) | (safe_lshift_func_uint16_t_u_u(FAKE_DIVERGE(p_1634->group_0_offset, get_group_id(0), 10), 9)))) > ((((*l_590) = ((*l_602) &= (+((((*l_616) = (safe_rshift_func_uint8_t_u_s(FAKE_DIVERGE(p_1634->group_0_offset, get_group_id(0), 10), (p_67 || (((0x7AL ^ 0xEAL) , ((l_557 = &p_1634->g_336) != &p_1634->g_336)) == ((safe_lshift_func_int16_t_s_u((safe_mod_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_s((l_676 && l_677), p_1634->g_9)), p_67)), p_1634->g_3)) != (-2L))))))) , &p_1634->g_292) != (void*)0)))) , (void*)0) != l_678)) & p_65))
            { /* block id: 302 */
                return (*p_1634->g_336);
            }
            else
            { /* block id: 304 */
                return (*p_1634->g_336);
            }
        }
        for (p_1634->g_124 = 0; (p_1634->g_124 <= 0); p_1634->g_124 += 1)
        { /* block id: 310 */
            uint32_t l_695[4];
            int32_t l_700 = 0x1C4521EDL;
            int32_t l_701[8][6][5] = {{{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L}},{{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L}},{{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L}},{{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L}},{{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L}},{{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L}},{{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L}},{{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L},{0x552686C0L,(-6L),0x5C795F66L,0L,0x76E1F450L}}};
            int i, j, k;
            for (i = 0; i < 4; i++)
                l_695[i] = 0x0EAAE731L;
            for (l_578 = 0; (l_578 <= 0); l_578 += 1)
            { /* block id: 313 */
                uint64_t **l_694 = &p_1634->g_561[6][0][1];
                int32_t l_698 = 0x2670CF58L;
                int i, j, k;
                for (p_65 = 1; (p_65 >= 0); p_65 -= 1)
                { /* block id: 316 */
                    int32_t l_691 = 0L;
                    int32_t *l_696 = &l_581;
                    int i, j, k;
                    p_1634->g_6[(l_578 + 1)][l_578][(p_1634->g_124 + 5)] = ((*l_696) ^= (safe_sub_func_int32_t_s_s((((((safe_add_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_s(FAKE_DIVERGE(p_1634->group_1_offset, get_group_id(1), 10), (p_1634->g_6[(l_578 + 1)][l_578][(p_65 + 7)] , ((((l_584[(p_65 + 2)][l_578] , (((safe_mul_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s(l_584[(p_65 + 1)][p_1634->g_124], 7)), (safe_mul_func_uint8_t_u_u((+((((l_691 = p_1634->g_514) && (safe_add_func_int64_t_s_s(((p_66 , (((&p_1634->g_561[0][1][2] == (((***l_557) ^ (***l_557)) , l_694)) , 2L) >= p_65)) || l_695[2]), GROUP_DIVERGE(1, 1)))) , 0x1F3850A1C29F6847L) <= FAKE_DIVERGE(p_1634->group_2_offset, get_group_id(2), 10))), l_575)))) < (*p_1634->g_153)) <= (***l_557))) | p_66) <= p_65) < l_578)))), p_1634->g_151)) == p_65) ^ l_583) & (***l_557)) <= p_65), p_67)));
                    for (l_452 = 0; (l_452 <= 1); l_452 += 1)
                    { /* block id: 322 */
                        uint32_t l_697 = 4294967288UL;
                        l_698 = ((p_67 <= p_67) , l_697);
                        return (*p_1634->g_336);
                    }
                }
                if (p_1634->g_6[p_1634->g_124][l_578][(p_1634->g_124 + 7)])
                    continue;
            }
            for (l_612 = 0; (l_612 >= 0); l_612 -= 1)
            { /* block id: 331 */
                int32_t *l_699[6] = {&p_1634->g_98,&l_582[3][3][2],&p_1634->g_98,&p_1634->g_98,&l_582[3][3][2],&p_1634->g_98};
                uint32_t l_717 = 0UL;
                int i, j, k;
                ++l_702;
                for (l_464 = 0; (l_464 <= 0); l_464 += 1)
                { /* block id: 335 */
                    int32_t l_715 = 0x0E8CB081L;
                    int32_t l_716[1][1];
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 1; j++)
                            l_716[i][j] = 0x45FBF71AL;
                    }
                    if ((p_1634->g_6[(l_612 + 5)][p_1634->g_124][(p_1634->g_124 + 2)] , (l_582[l_612][(l_612 + 1)][(l_612 + 6)] = 9L)))
                    { /* block id: 337 */
                        volatile int32_t *l_707 = (void*)0;
                        volatile int32_t **l_706 = &l_707;
                        int i, j, k;
                        (*l_706) = ((p_1634->g_6[(l_612 + 3)][l_612][(l_464 + 5)] && (l_705 = l_695[(l_464 + 2)])) , &p_1634->g_6[(l_612 + 3)][l_612][(l_464 + 5)]);
                    }
                    else
                    { /* block id: 340 */
                        int32_t *l_708 = (void*)0;
                        return l_708;
                    }
                    l_582[3][0][4] = (safe_add_func_int64_t_s_s((l_582[l_612][(l_612 + 1)][(l_612 + 6)] && (p_66 && (p_66 , (((((safe_lshift_func_int8_t_s_s(1L, (safe_div_func_uint16_t_u_u((~p_65), 65535UL)))) <= (***l_557)) >= p_65) , (l_440 , 0x74L)) <= 0L)))), p_67));
                    l_717++;
                }
            }
        }
    }
    (*l_740) &= ((((*l_739) = (safe_div_func_uint32_t_u_u((safe_sub_func_int32_t_s_s(((***l_557) >= (((!(((safe_lshift_func_uint16_t_u_s((p_1634->g_18 | (safe_mul_func_uint8_t_u_u((((!((p_1634->g_117 || (((safe_rshift_func_uint8_t_u_u(((***l_557) , ((-5L) && (((*l_733) = p_65) == (safe_sub_func_int16_t_s_s((***l_557), (p_1634->g_6[6][0][8] , ((safe_mod_func_int16_t_s_s(p_1634->g_2[1][4], p_1634->g_124)) , p_66))))))), p_66)) ^ 0UL) , 0x49CFL)) == p_1634->g_102)) && p_67) ^ (***l_557)), 1L))), 13)) , (*p_1634->g_560)) != (*p_1634->g_560))) >= FAKE_DIVERGE(p_1634->global_0_offset, get_global_id(0), 10)) <= 0x28CFL)), (***p_1634->g_291))), l_738))) && (***l_557)) >= p_65);
    for (p_1634->g_108 = 0; (p_1634->g_108 < 18); p_1634->g_108++)
    { /* block id: 354 */
        uint64_t l_759 = 18446744073709551615UL;
        int8_t *l_760 = &l_705;
        (*l_740) &= ((+((p_1634->g_98 < (safe_mul_func_int8_t_s_s((+((*l_760) = (~((((safe_div_func_int16_t_s_s(((safe_div_func_uint8_t_u_u(4UL, (((((safe_mul_func_int16_t_s_s((safe_add_func_int16_t_s_s(p_1634->g_6[4][0][3], ((safe_rshift_func_int16_t_s_u(0L, (~GROUP_DIVERGE(1, 1)))) , ((safe_add_func_int64_t_s_s((-6L), ((*l_733) = ((((***l_557) > (safe_sub_func_int8_t_s_s((p_67 , (((**p_1634->g_462) != ((((0xAFCBC684L ^ 0x21F814FEL) ^ p_66) ^ (*p_1634->g_153)) ^ p_67)) != 18446744073709551606UL)), l_759))) <= 0x1149L) || GROUP_DIVERGE(2, 1))))) <= p_66)))), p_1634->g_117)) <= (-1L)) ^ 0xE8F25EB3L) > (**p_1634->g_462)) , p_67))) < 1UL), p_1634->g_12)) , &l_733) != &l_733) ^ p_66)))), p_1634->g_359))) != 0xEA27041B22F70A40L)) ^ p_67);
    }
    for (p_1634->g_233 = 25; (p_1634->g_233 == 22); --p_1634->g_233)
    { /* block id: 361 */
        uint32_t *l_765 = &l_541[1];
        int32_t l_789 = 0x300D1765L;
        int32_t l_793[6][2] = {{0x03960CD9L,0x03960CD9L},{0x03960CD9L,0x03960CD9L},{0x03960CD9L,0x03960CD9L},{0x03960CD9L,0x03960CD9L},{0x03960CD9L,0x03960CD9L},{0x03960CD9L,0x03960CD9L}};
        int32_t l_862 = 8L;
        int32_t *l_863[5][2];
        int32_t **l_867[1];
        int i, j;
        for (i = 0; i < 5; i++)
        {
            for (j = 0; j < 2; j++)
                l_863[i][j] = &l_576;
        }
        for (i = 0; i < 1; i++)
            l_867[i] = &l_863[4][1];
        (1 + 1);
    }
    return (**l_557);
}


/* ------------------------------------------ */
/* 
 * reads : p_1634->g_305 p_1634->g_38 p_1634->g_370 p_1634->g_8 p_1634->g_292 p_1634->g_153 p_1634->g_36 p_1634->g_18 p_1634->g_124 p_1634->g_3
 * writes: p_1634->g_324 p_1634->g_124
 */
int64_t  func_68(uint32_t  p_69, int32_t  p_70, int32_t  p_71, uint8_t  p_72, struct S0 * p_1634)
{ /* block id: 193 */
    uint8_t **l_389 = (void*)0;
    uint8_t ***l_388 = &l_389;
    int32_t l_405 = 6L;
    uint8_t *l_410 = &p_1634->g_324[1][2][1];
    int32_t l_411 = (-1L);
    int64_t *l_412 = &p_1634->g_124;
    int32_t l_413 = 0x3C982421L;
    l_413 = ((safe_mul_func_uint16_t_u_u((safe_sub_func_int8_t_s_s(0L, (l_388 == (void*)0))), ((((((safe_mod_func_uint64_t_u_u((safe_rshift_func_uint16_t_u_s((((*l_412) ^= ((l_411 = (safe_rshift_func_int8_t_s_u((-1L), (safe_sub_func_uint8_t_u_u(((*l_410) = ((safe_sub_func_uint8_t_u_u((safe_div_func_int8_t_s_s(((((l_405 = (p_70 ^ (((3L && ((safe_div_func_int16_t_s_s((safe_unary_minus_func_int16_t_s(0x3BE2L)), (((l_405 , ((safe_mod_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u(1UL, 2)), 0x08L)) | p_1634->g_305[0][4][3])) , p_69) , 4UL))) != p_71)) <= p_1634->g_38) , p_71))) && p_72) > p_1634->g_370) | p_71), p_1634->g_8)), 0L)) ^ p_69)), 1UL))))) == (**p_1634->g_292))) <= l_413), l_413)), l_413)) > p_1634->g_3) , p_72) , p_70) <= 2UL) , p_1634->g_18))) , 0x485EFD7DL);
    return p_70;
}


/* ------------------------------------------ */
/* 
 * reads : p_1634->g_108 p_1634->g_117 p_1634->l_comm_values p_1634->g_151 p_1634->g_165 p_1634->g_125 p_1634->g_233 p_1634->g_292 p_1634->g_153 p_1634->g_36 p_1634->g_18 p_1634->g_302 p_1634->g_305 p_1634->g_291 p_1634->g_324 p_1634->g_3 p_1634->g_154 p_1634->g_322 p_1634->g_98 p_1634->g_10 p_1634->g_336 p_1634->g_124 p_1634->g_357 p_1634->g_comm_values p_1634->g_152 p_1634->g_365 p_1634->g_370 p_1634->g_359
 * writes: p_1634->g_233 p_1634->g_108 p_1634->g_154 p_1634->g_117 p_1634->g_125 p_1634->g_165 p_1634->g_322 p_1634->g_324 p_1634->g_153 p_1634->g_336 p_1634->g_351 p_1634->g_98 p_1634->g_357 p_1634->g_359 p_1634->g_365 p_1634->g_370
 */
uint64_t  func_78(int32_t * p_79, uint8_t  p_80, struct S0 * p_1634)
{ /* block id: 105 */
    uint32_t l_202 = 2UL;
    int32_t l_209[2];
    uint32_t l_231[5] = {0x818F2E10L,0x818F2E10L,0x818F2E10L,0x818F2E10L,0x818F2E10L};
    uint32_t l_286 = 4294967292UL;
    uint64_t *l_296 = (void*)0;
    int32_t l_363[4][10] = {{0x09AC77AAL,1L,0x79FE42F1L,0x1579A839L,0x0B7DF140L,0x0B7DF140L,0x1579A839L,0x79FE42F1L,1L,0x09AC77AAL},{0x09AC77AAL,1L,0x79FE42F1L,0x1579A839L,0x0B7DF140L,0x0B7DF140L,0x1579A839L,0x79FE42F1L,1L,0x09AC77AAL},{0x09AC77AAL,1L,0x79FE42F1L,0x1579A839L,0x0B7DF140L,0x0B7DF140L,0x1579A839L,0x79FE42F1L,1L,0x09AC77AAL},{0x09AC77AAL,1L,0x79FE42F1L,0x1579A839L,0x0B7DF140L,0x0B7DF140L,0x1579A839L,0x79FE42F1L,1L,0x09AC77AAL}};
    uint16_t *l_371 = &p_1634->g_165;
    int16_t *l_376 = &p_1634->g_359;
    int8_t *l_377[10] = {&p_1634->g_357[1],&p_1634->g_151,&p_1634->g_357[1],&p_1634->g_357[1],&p_1634->g_151,&p_1634->g_357[1],&p_1634->g_357[1],&p_1634->g_151,&p_1634->g_357[1],&p_1634->g_357[1]};
    int32_t l_378 = (-9L);
    uint8_t **l_381 = (void*)0;
    int i, j;
    for (i = 0; i < 2; i++)
        l_209[i] = 0L;
lbl_216:
    --l_202;
    if (((safe_add_func_uint32_t_u_u((safe_add_func_int64_t_s_s((l_209[1] ^= 0x020D4C6C70B23678L), (safe_lshift_func_int16_t_s_u(0x0B35L, 3)))), (p_1634->g_108 || (safe_lshift_func_int8_t_s_u((safe_lshift_func_int8_t_s_s(l_202, 4)), 1))))) & GROUP_DIVERGE(1, 1)))
    { /* block id: 108 */
        if (p_1634->g_108)
            goto lbl_216;
    }
    else
    { /* block id: 110 */
        uint64_t *l_232[8][7] = {{&p_1634->g_233,&p_1634->g_233,(void*)0,&p_1634->g_233,(void*)0,(void*)0,(void*)0},{&p_1634->g_233,&p_1634->g_233,(void*)0,&p_1634->g_233,(void*)0,(void*)0,(void*)0},{&p_1634->g_233,&p_1634->g_233,(void*)0,&p_1634->g_233,(void*)0,(void*)0,(void*)0},{&p_1634->g_233,&p_1634->g_233,(void*)0,&p_1634->g_233,(void*)0,(void*)0,(void*)0},{&p_1634->g_233,&p_1634->g_233,(void*)0,&p_1634->g_233,(void*)0,(void*)0,(void*)0},{&p_1634->g_233,&p_1634->g_233,(void*)0,&p_1634->g_233,(void*)0,(void*)0,(void*)0},{&p_1634->g_233,&p_1634->g_233,(void*)0,&p_1634->g_233,(void*)0,(void*)0,(void*)0},{&p_1634->g_233,&p_1634->g_233,(void*)0,&p_1634->g_233,(void*)0,(void*)0,(void*)0}};
        int32_t l_234 = 0x349C2E44L;
        uint64_t **l_238 = (void*)0;
        int32_t **l_266 = &p_1634->g_153;
        int16_t l_278 = 0x27D7L;
        uint8_t *l_280 = &p_1634->g_125[0];
        int i, j;
        if (((!GROUP_DIVERGE(2, 1)) , ((((safe_rshift_func_int16_t_s_u(p_1634->g_108, (p_1634->g_117 ^ ((p_1634->g_233 ^= (p_80 || (((((safe_rshift_func_int8_t_s_s(((safe_lshift_func_int16_t_s_s((safe_mul_func_int16_t_s_s(1L, (safe_rshift_func_uint16_t_u_s((safe_mod_func_uint32_t_u_u(((p_80 , (0x37L != (safe_div_func_uint16_t_u_u(((((void*)0 == &p_79) != (p_1634->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1634->tid, 9))] || 3UL)) >= p_1634->g_151), 0x6933L)))) ^ p_80), l_209[0])), p_1634->g_165)))), 8)) > l_231[1]), 3)) , p_1634->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1634->tid, 9))]) && 8UL) && p_1634->g_125[0]) >= FAKE_DIVERGE(p_1634->group_2_offset, get_group_id(2), 10)))) , l_234)))) & p_80) && 0x02E7L) > p_80)))
        { /* block id: 112 */
            int64_t *l_235 = &p_1634->g_124;
            int32_t *l_239 = &p_1634->g_154[1];
            (*l_239) = ((l_235 == ((0L && (FAKE_DIVERGE(p_1634->local_2_offset, get_local_id(2), 10) == ((+(p_80 <= p_1634->g_108)) , (l_234 , (p_80 > (safe_sub_func_uint64_t_u_u((p_1634->g_108 |= (!(l_231[1] | ((+((((l_238 != &p_1634->g_110[3]) , p_80) >= FAKE_DIVERGE(p_1634->global_0_offset, get_global_id(0), 10)) > l_231[1])) , 18446744073709551606UL)))), l_209[0]))))))) , l_232[0][1])) | 0x06L);
        }
        else
        { /* block id: 115 */
            int32_t l_244 = 0L;
            int32_t *l_245 = (void*)0;
            int32_t *l_246 = &l_209[1];
            uint8_t l_247 = 0x56L;
            uint16_t *l_341 = &p_1634->g_165;
            uint64_t *l_364[8] = {&p_1634->g_117,&p_1634->g_117,&p_1634->g_117,&p_1634->g_117,&p_1634->g_117,&p_1634->g_117,&p_1634->g_117,&p_1634->g_117};
            int i;
            if (((*l_246) &= (safe_lshift_func_uint16_t_u_s((safe_mul_func_int16_t_s_s(0x4367L, (l_244 = 0x6AFEL))), 6))))
            { /* block id: 118 */
                uint64_t *l_252 = &p_1634->g_233;
                int32_t l_285 = 0x6B3636E8L;
                uint8_t *l_310 = &l_247;
                uint16_t l_317[9][6] = {{0xAC62L,0xAC62L,0xAC62L,0xAC62L,0xAC62L,0xAC62L},{0xAC62L,0xAC62L,0xAC62L,0xAC62L,0xAC62L,0xAC62L},{0xAC62L,0xAC62L,0xAC62L,0xAC62L,0xAC62L,0xAC62L},{0xAC62L,0xAC62L,0xAC62L,0xAC62L,0xAC62L,0xAC62L},{0xAC62L,0xAC62L,0xAC62L,0xAC62L,0xAC62L,0xAC62L},{0xAC62L,0xAC62L,0xAC62L,0xAC62L,0xAC62L,0xAC62L},{0xAC62L,0xAC62L,0xAC62L,0xAC62L,0xAC62L,0xAC62L},{0xAC62L,0xAC62L,0xAC62L,0xAC62L,0xAC62L,0xAC62L},{0xAC62L,0xAC62L,0xAC62L,0xAC62L,0xAC62L,0xAC62L}};
                uint16_t *l_320 = &p_1634->g_165;
                uint8_t *l_321 = &p_1634->g_322;
                uint8_t *l_323 = &p_1634->g_324[6][1][5];
                uint16_t l_325 = 65529UL;
                int i, j;
                (*l_246) |= l_247;
                for (p_1634->g_117 = 0; (p_1634->g_117 == 41); p_1634->g_117 = safe_add_func_int64_t_s_s(p_1634->g_117, 9))
                { /* block id: 122 */
                    int32_t **l_264 = &l_245;
                    int32_t ***l_265 = &l_264;
                    uint8_t *l_269 = &p_1634->g_125[1];
                    uint8_t *l_279 = &l_247;
                    int32_t l_283 = 0x6F8543DDL;
                    int32_t l_284 = (-4L);
                    uint64_t *l_299 = &p_1634->g_233;
                    (1 + 1);
                }
                if ((((*l_280) = ((**p_1634->g_292) != 0x3051C18DL)) ^ (((0x52F4L == ((((safe_add_func_uint8_t_u_u(0x6CL, ((*l_323) &= ((safe_lshift_func_uint8_t_u_s(((*l_310)--), (((((safe_rshift_func_uint8_t_u_u(((*l_321) = (safe_div_func_uint8_t_u_u(((((l_317[0][5] == p_80) != (((safe_rshift_func_int8_t_s_u((p_1634->g_36 == ((*l_320) = l_286)), (l_285 |= 0x74L))) <= p_1634->g_117) || p_1634->g_302)) | p_1634->g_305[0][4][0]) != p_1634->g_305[0][4][3]), FAKE_DIVERGE(p_1634->local_1_offset, get_local_id(1), 10)))), 0)) & (***p_1634->g_291)) , (void*)0) == l_296) , l_202))) == p_80)))) & p_1634->g_3) , &p_1634->g_124) != (void*)0)) < l_325) && p_1634->g_154[1])))
                { /* block id: 147 */
                    return p_80;
                }
                else
                { /* block id: 149 */
                    (*l_266) = (*l_266);
                    for (p_1634->g_322 = (-2); (p_1634->g_322 <= 8); ++p_1634->g_322)
                    { /* block id: 153 */
                        (*l_266) = &l_285;
                    }
                }
            }
            else
            { /* block id: 157 */
                int32_t **l_334 = &p_1634->g_153;
                (*l_266) = &p_1634->g_10;
                for (l_278 = 2; (l_278 >= 0); l_278 -= 1)
                { /* block id: 161 */
                    int32_t ***l_335[10] = {&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334};
                    int64_t *l_337[6][2] = {{&p_1634->g_124,&p_1634->g_124},{&p_1634->g_124,&p_1634->g_124},{&p_1634->g_124,&p_1634->g_124},{&p_1634->g_124,&p_1634->g_124},{&p_1634->g_124,&p_1634->g_124},{&p_1634->g_124,&p_1634->g_124}};
                    uint16_t *l_340 = &p_1634->g_165;
                    int64_t **l_350[3];
                    int8_t *l_356[6] = {(void*)0,&p_1634->g_357[2],(void*)0,(void*)0,&p_1634->g_357[2],(void*)0};
                    int16_t *l_358[1][6];
                    int32_t *l_360 = (void*)0;
                    int32_t *l_361 = (void*)0;
                    uint32_t *l_362 = &l_231[1];
                    int i, j;
                    for (i = 0; i < 3; i++)
                        l_350[i] = &l_337[1][1];
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 6; j++)
                            l_358[i][j] = &p_1634->g_359;
                    }
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    p_1634->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 9)), permutations[(safe_mod_func_uint32_t_u_u((((safe_mul_func_int16_t_s_s(p_1634->g_154[l_278], p_1634->g_125[0])) < p_1634->g_98) < ((safe_lshift_func_int16_t_s_u((-1L), 2)) , (safe_rshift_func_int16_t_s_s((((((((((((*p_1634->g_291) == (p_1634->g_336 = l_334)) , l_337[0][1]) != (FAKE_DIVERGE(p_1634->local_0_offset, get_local_id(0), 10) , l_337[0][1])) > (safe_rshift_func_uint8_t_u_s((p_1634->g_324[6][1][5] = (((p_80 , l_340) == l_341) & p_80)), 0))) , (**l_266)) & p_1634->g_117) , p_1634->g_233) && p_1634->g_154[1]) >= l_286) ^ (**l_334)), 8)))), 10))][(safe_mod_func_uint32_t_u_u(p_1634->tid, 9))]));
                    (*p_1634->g_336) = (void*)0;
                    l_363[2][0] = (p_1634->g_108 == ((safe_mul_func_uint8_t_u_u(((safe_lshift_func_int16_t_s_s((((*l_362) = ((l_209[1] = ((+(safe_lshift_func_int16_t_s_s((p_1634->g_359 = (safe_sub_func_uint64_t_u_u((*l_246), (((p_1634->g_357[1] &= ((((p_1634->g_154[l_278] = 0x17EC0654L) < (l_232[5][6] == (p_1634->g_351 = l_232[0][4]))) < (((p_1634->g_98 = ((0x3DC8L | (safe_sub_func_uint64_t_u_u((safe_sub_func_int64_t_s_s(p_1634->g_151, ((0xECL != ((GROUP_DIVERGE(2, 1) , p_1634->g_124) , GROUP_DIVERGE(0, 1))) | p_80))), 4L))) < 0L)) < FAKE_DIVERGE(p_1634->global_1_offset, get_global_id(1), 10)) <= p_1634->g_233)) == p_80)) && p_1634->g_comm_values[p_1634->tid]) ^ p_1634->g_152)))), 0))) , (-1L))) , 1UL)) & p_80), 3)) == p_80), 0x31L)) , p_80));
                }
            }
            p_1634->g_370 ^= (((p_1634->g_365++) , (--(*l_280))) < 1L);
        }
    }
    (*p_1634->g_336) = p_79;
    if (((((((*l_371) = p_80) == (((safe_lshift_func_int16_t_s_u((((((safe_rshift_func_int16_t_s_u(((*l_376) &= (-3L)), 3)) | l_363[2][9]) == 2L) | 0x748600ED8D9A0E59L) && (l_378 = 0x03L)), 13)) >= (p_1634->g_3 || ((+(0L > (safe_add_func_uint64_t_u_u(0UL, p_80)))) ^ (-10L)))) ^ p_1634->g_117)) < l_363[2][0]) <= l_363[1][5]) , l_209[0]))
    { /* block id: 187 */
        l_363[3][2] = ((void*)0 != (*p_1634->g_291));
    }
    else
    { /* block id: 189 */
        uint8_t ***l_382 = (void*)0;
        uint8_t ***l_383 = &l_381;
        (*l_383) = l_381;
    }
    return p_1634->g_125[1];
}


/* ------------------------------------------ */
/* 
 * reads : p_1634->g_36 p_1634->g_124 p_1634->g_117 p_1634->g_151
 * writes: p_1634->g_125 p_1634->g_98 p_1634->g_151
 */
int32_t * func_81(uint32_t  p_82, struct S0 * p_1634)
{ /* block id: 93 */
    int32_t *l_184 = &p_1634->g_36;
    uint8_t *l_189 = &p_1634->g_125[0];
    int32_t *l_198 = &p_1634->g_98;
    int8_t *l_199 = &p_1634->g_151;
    int32_t *l_200 = &p_1634->g_18;
    (*l_198) = (safe_div_func_int16_t_s_s(((safe_rshift_func_int8_t_s_u(((safe_unary_minus_func_uint8_t_u(((*l_189) = (((l_184 == l_184) , p_82) , (safe_mul_func_int8_t_s_s(((void*)0 == &p_1634->g_110[3]), (safe_add_func_int64_t_s_s((+(*l_184)), (*l_184))))))))) >= ((safe_rshift_func_int16_t_s_u((p_82 == (safe_div_func_uint8_t_u_u((safe_div_func_uint8_t_u_u((safe_rshift_func_int8_t_s_s(0L, p_1634->g_124)), p_82)), GROUP_DIVERGE(1, 1)))), FAKE_DIVERGE(p_1634->local_1_offset, get_local_id(1), 10))) >= p_82)), 1)) > p_1634->g_117), 0x21EFL));
    (*l_198) = ((+((*l_199) = (0x4AL == 0xE2L))) , p_82);
    for (p_1634->g_151 = 0; (p_1634->g_151 <= 1); p_1634->g_151 += 1)
    { /* block id: 100 */
        return &p_1634->g_36;
    }
    return l_200;
}


/* ------------------------------------------ */
/* 
 * reads : p_1634->g_comm_values p_1634->g_36 p_1634->g_153 p_1634->g_154 p_1634->g_108 p_1634->g_102
 * writes: p_1634->g_151
 */
uint32_t  func_83(int8_t  p_84, int32_t * p_85, int32_t  p_86, int64_t  p_87, struct S0 * p_1634)
{ /* block id: 86 */
    int64_t *l_158 = (void*)0;
    int64_t *l_159[6][5][4] = {{{&p_1634->g_124,&p_1634->g_124,&p_1634->g_124,&p_1634->g_124},{&p_1634->g_124,&p_1634->g_124,&p_1634->g_124,&p_1634->g_124},{&p_1634->g_124,&p_1634->g_124,&p_1634->g_124,&p_1634->g_124},{&p_1634->g_124,&p_1634->g_124,&p_1634->g_124,&p_1634->g_124},{&p_1634->g_124,&p_1634->g_124,&p_1634->g_124,&p_1634->g_124}},{{&p_1634->g_124,&p_1634->g_124,&p_1634->g_124,&p_1634->g_124},{&p_1634->g_124,&p_1634->g_124,&p_1634->g_124,&p_1634->g_124},{&p_1634->g_124,&p_1634->g_124,&p_1634->g_124,&p_1634->g_124},{&p_1634->g_124,&p_1634->g_124,&p_1634->g_124,&p_1634->g_124},{&p_1634->g_124,&p_1634->g_124,&p_1634->g_124,&p_1634->g_124}},{{&p_1634->g_124,&p_1634->g_124,&p_1634->g_124,&p_1634->g_124},{&p_1634->g_124,&p_1634->g_124,&p_1634->g_124,&p_1634->g_124},{&p_1634->g_124,&p_1634->g_124,&p_1634->g_124,&p_1634->g_124},{&p_1634->g_124,&p_1634->g_124,&p_1634->g_124,&p_1634->g_124},{&p_1634->g_124,&p_1634->g_124,&p_1634->g_124,&p_1634->g_124}},{{&p_1634->g_124,&p_1634->g_124,&p_1634->g_124,&p_1634->g_124},{&p_1634->g_124,&p_1634->g_124,&p_1634->g_124,&p_1634->g_124},{&p_1634->g_124,&p_1634->g_124,&p_1634->g_124,&p_1634->g_124},{&p_1634->g_124,&p_1634->g_124,&p_1634->g_124,&p_1634->g_124},{&p_1634->g_124,&p_1634->g_124,&p_1634->g_124,&p_1634->g_124}},{{&p_1634->g_124,&p_1634->g_124,&p_1634->g_124,&p_1634->g_124},{&p_1634->g_124,&p_1634->g_124,&p_1634->g_124,&p_1634->g_124},{&p_1634->g_124,&p_1634->g_124,&p_1634->g_124,&p_1634->g_124},{&p_1634->g_124,&p_1634->g_124,&p_1634->g_124,&p_1634->g_124},{&p_1634->g_124,&p_1634->g_124,&p_1634->g_124,&p_1634->g_124}},{{&p_1634->g_124,&p_1634->g_124,&p_1634->g_124,&p_1634->g_124},{&p_1634->g_124,&p_1634->g_124,&p_1634->g_124,&p_1634->g_124},{&p_1634->g_124,&p_1634->g_124,&p_1634->g_124,&p_1634->g_124},{&p_1634->g_124,&p_1634->g_124,&p_1634->g_124,&p_1634->g_124},{&p_1634->g_124,&p_1634->g_124,&p_1634->g_124,&p_1634->g_124}}};
    int32_t l_160 = 2L;
    uint16_t *l_164 = &p_1634->g_165;
    int32_t l_169 = 9L;
    uint32_t l_174[9];
    int8_t *l_175 = &p_1634->g_151;
    int8_t l_176 = (-1L);
    int32_t *l_177[3][7][2] = {{{&p_1634->g_154[1],&p_1634->g_36},{&p_1634->g_154[1],&p_1634->g_36},{&p_1634->g_154[1],&p_1634->g_36},{&p_1634->g_154[1],&p_1634->g_36},{&p_1634->g_154[1],&p_1634->g_36},{&p_1634->g_154[1],&p_1634->g_36},{&p_1634->g_154[1],&p_1634->g_36}},{{&p_1634->g_154[1],&p_1634->g_36},{&p_1634->g_154[1],&p_1634->g_36},{&p_1634->g_154[1],&p_1634->g_36},{&p_1634->g_154[1],&p_1634->g_36},{&p_1634->g_154[1],&p_1634->g_36},{&p_1634->g_154[1],&p_1634->g_36},{&p_1634->g_154[1],&p_1634->g_36}},{{&p_1634->g_154[1],&p_1634->g_36},{&p_1634->g_154[1],&p_1634->g_36},{&p_1634->g_154[1],&p_1634->g_36},{&p_1634->g_154[1],&p_1634->g_36},{&p_1634->g_154[1],&p_1634->g_36},{&p_1634->g_154[1],&p_1634->g_36},{&p_1634->g_154[1],&p_1634->g_36}}};
    int32_t l_178 = 0L;
    int i, j, k;
    for (i = 0; i < 9; i++)
        l_174[i] = 5UL;
    l_178 = ((safe_add_func_int64_t_s_s((l_160 = 0x2F910644F255190DL), (-1L))) & (((p_87 = (l_169 = (p_84 | ((((safe_unary_minus_func_uint32_t_u((safe_add_func_uint16_t_u_u(65533UL, (+(l_164 != (((((*l_175) = ((safe_unary_minus_func_uint64_t_u((safe_mod_func_uint8_t_u_u((((l_169 < (((safe_rshift_func_int8_t_s_s((safe_add_func_int8_t_s_s((p_1634->g_comm_values[p_1634->tid] != p_1634->g_36), ((l_158 == l_159[0][2][3]) && (-9L)))), 6)) , (-3L)) ^ l_169)) , l_174[1]) | l_174[1]), l_174[1])))) >= l_174[1])) ^ 0x1AL) > (*p_1634->g_153)) , l_164))))))) < l_176) != 65535UL) , p_87)))) <= p_1634->g_108) ^ GROUP_DIVERGE(1, 1)));
    return p_1634->g_102;
}


/* ------------------------------------------ */
/* 
 * reads : p_1634->g_98 p_1634->g_102 p_1634->l_comm_values p_1634->g_10 p_1634->g_110 p_1634->g_38 p_1634->g_comm_values p_1634->g_36 p_1634->g_117 p_1634->g_125 p_1634->g_12 p_1634->g_151
 * writes: p_1634->g_98 p_1634->g_102 p_1634->g_108 p_1634->g_comm_values p_1634->g_124 p_1634->g_125 p_1634->g_152 p_1634->g_153
 */
uint8_t  func_95(int32_t * p_96, int32_t * p_97, struct S0 * p_1634)
{ /* block id: 61 */
    int32_t *l_104 = &p_1634->g_36;
    int32_t l_106 = 0x0C321860L;
    for (p_1634->g_98 = 27; (p_1634->g_98 > (-4)); p_1634->g_98 = safe_sub_func_int8_t_s_s(p_1634->g_98, 1))
    { /* block id: 64 */
        uint16_t l_101 = 1UL;
        int32_t *l_103[6][3][8] = {{{&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10},{&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10},{&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10}},{{&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10},{&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10},{&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10}},{{&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10},{&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10},{&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10}},{{&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10},{&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10},{&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10}},{{&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10},{&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10},{&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10}},{{&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10},{&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10},{&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10,&p_1634->g_10}}};
        int32_t **l_105 = &l_104;
        uint64_t *l_116 = &p_1634->g_117;
        uint64_t *l_119 = &p_1634->g_117;
        int i, j, k;
        p_1634->g_102 &= l_101;
        if (((l_103[5][0][7] == ((*l_105) = l_104)) <= l_106))
        { /* block id: 67 */
            uint64_t *l_107 = &p_1634->g_108;
            uint64_t **l_118 = &l_116;
            int32_t l_122 = 0x63BBE5BFL;
            int64_t *l_123 = &p_1634->g_124;
            uint16_t *l_140 = &l_101;
            uint32_t l_149 = 5UL;
            int64_t l_150 = 0L;
            p_1634->g_125[1] = ((((((*l_107) = p_1634->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1634->tid, 9))]) <= (safe_unary_minus_func_int8_t_s((p_1634->g_10 > (p_1634->g_110[3] == ((((*l_123) = (+(p_1634->g_comm_values[p_1634->tid] = (FAKE_DIVERGE(p_1634->global_1_offset, get_global_id(1), 10) >= ((safe_sub_func_int64_t_s_s((((+(~4294967295UL)) && ((((*l_118) = l_116) == l_119) == (&p_1634->g_3 == ((*l_105) = p_96)))) ^ ((safe_mul_func_uint16_t_u_u((p_1634->g_38 , 5UL), 65526UL)) >= 0x248B132FL)), 18446744073709551613UL)) > l_122))))) || 0xDD266C56F7F9ADABL) , (void*)0)))))) || p_1634->g_comm_values[p_1634->tid]) , p_1634->g_38) , 0x5898A221L);
            p_1634->g_152 = ((((safe_div_func_uint8_t_u_u((((**l_105) , (safe_div_func_int8_t_s_s((((safe_div_func_uint16_t_u_u((safe_sub_func_int8_t_s_s((((safe_sub_func_uint16_t_u_u((p_1634->g_10 | (safe_mod_func_uint64_t_u_u(((safe_div_func_int8_t_s_s((((*l_140)--) && (l_122 >= (p_1634->g_38 , ((((18446744073709551612UL ^ (((safe_mod_func_int16_t_s_s((safe_mod_func_uint16_t_u_u((0x107BL ^ (&p_97 == (void*)0)), p_1634->g_117)), 65535UL)) && 1L) | (*p_96))) >= l_122) & p_1634->g_125[0]) < (*l_104))))), l_149)) >= p_1634->g_125[1]), l_149))), l_150)) == p_1634->g_12) ^ 0x62EA09826EB6F187L), l_122)), p_1634->g_117)) | 0x3425CBB4L) || p_1634->g_151), 0x6FL))) , 0x63L), p_1634->g_36)) && p_1634->g_125[1]) < 1L) , 0x3FF11E01L);
        }
        else
        { /* block id: 76 */
            (*l_105) = (p_1634->g_153 = (*l_105));
            return p_1634->g_117;
        }
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        p_1634->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 9)), permutations[(safe_mod_func_uint32_t_u_u((*l_104), 10))][(safe_mod_func_uint32_t_u_u(p_1634->tid, 9))]));
    }
    return (*l_104);
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[9];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 9; i++)
            l_comm_values[i] = 1;
    struct S0 c_1635;
    struct S0* p_1634 = &c_1635;
    struct S0 c_1636 = {
        {{0x17A4A12BL,0x17A4A12BL,0x17A4A12BL,0x17A4A12BL,0x17A4A12BL},{0x17A4A12BL,0x17A4A12BL,0x17A4A12BL,0x17A4A12BL,0x17A4A12BL}}, // p_1634->g_2
        3L, // p_1634->g_3
        {{{0x33E34B64L,0x196A162CL,0x196A162CL,0x33E34B64L,1L,0x15768819L,0x15768819L,1L,0x33E34B64L,0x196A162CL}},{{0x33E34B64L,0x196A162CL,0x196A162CL,0x33E34B64L,1L,0x15768819L,0x15768819L,1L,0x33E34B64L,0x196A162CL}},{{0x33E34B64L,0x196A162CL,0x196A162CL,0x33E34B64L,1L,0x15768819L,0x15768819L,1L,0x33E34B64L,0x196A162CL}},{{0x33E34B64L,0x196A162CL,0x196A162CL,0x33E34B64L,1L,0x15768819L,0x15768819L,1L,0x33E34B64L,0x196A162CL}},{{0x33E34B64L,0x196A162CL,0x196A162CL,0x33E34B64L,1L,0x15768819L,0x15768819L,1L,0x33E34B64L,0x196A162CL}},{{0x33E34B64L,0x196A162CL,0x196A162CL,0x33E34B64L,1L,0x15768819L,0x15768819L,1L,0x33E34B64L,0x196A162CL}},{{0x33E34B64L,0x196A162CL,0x196A162CL,0x33E34B64L,1L,0x15768819L,0x15768819L,1L,0x33E34B64L,0x196A162CL}}}, // p_1634->g_6
        0x3B8BFFBEL, // p_1634->g_7
        0x6EED1E12L, // p_1634->g_8
        1L, // p_1634->g_9
        (-6L), // p_1634->g_10
        2L, // p_1634->g_12
        0L, // p_1634->g_17
        0x3FE73744L, // p_1634->g_18
        0x3B921586L, // p_1634->g_36
        0x6F5E1357L, // p_1634->g_37
        0x60B9F0A6L, // p_1634->g_38
        1L, // p_1634->g_98
        5UL, // p_1634->g_102
        1UL, // p_1634->g_108
        0x4B88B552A0AEB11FL, // p_1634->g_111
        0UL, // p_1634->g_112
        0xE667A4CD60AC8F59L, // p_1634->g_113
        {&p_1634->g_113,&p_1634->g_111,&p_1634->g_112,&p_1634->g_111,&p_1634->g_113,&p_1634->g_113,&p_1634->g_111,&p_1634->g_112,&p_1634->g_111,&p_1634->g_113}, // p_1634->g_110
        0x8C7137E7E5D39A1AL, // p_1634->g_117
        0x3D5F4407CCE436C4L, // p_1634->g_124
        {0UL,0UL}, // p_1634->g_125
        0L, // p_1634->g_151
        1UL, // p_1634->g_152
        {0x2306168AL,0x2306168AL,0x2306168AL}, // p_1634->g_154
        &p_1634->g_154[1], // p_1634->g_153
        65535UL, // p_1634->g_165
        0UL, // p_1634->g_233
        &p_1634->g_153, // p_1634->g_292
        &p_1634->g_292, // p_1634->g_291
        0x46F13C1FFC5D27DDL, // p_1634->g_302
        {{{0x01F91BB542E95D1BL,(-1L),7L,(-1L),0x01F91BB542E95D1BL,0x01F91BB542E95D1BL},{0x01F91BB542E95D1BL,(-1L),7L,(-1L),0x01F91BB542E95D1BL,0x01F91BB542E95D1BL},{0x01F91BB542E95D1BL,(-1L),7L,(-1L),0x01F91BB542E95D1BL,0x01F91BB542E95D1BL},{0x01F91BB542E95D1BL,(-1L),7L,(-1L),0x01F91BB542E95D1BL,0x01F91BB542E95D1BL},{0x01F91BB542E95D1BL,(-1L),7L,(-1L),0x01F91BB542E95D1BL,0x01F91BB542E95D1BL},{0x01F91BB542E95D1BL,(-1L),7L,(-1L),0x01F91BB542E95D1BL,0x01F91BB542E95D1BL}}}, // p_1634->g_305
        0x2BL, // p_1634->g_322
        {{{253UL,0x3AL,0xE6L,0xAEL,0xE6L,0x3AL,253UL},{253UL,0x3AL,0xE6L,0xAEL,0xE6L,0x3AL,253UL},{253UL,0x3AL,0xE6L,0xAEL,0xE6L,0x3AL,253UL}},{{253UL,0x3AL,0xE6L,0xAEL,0xE6L,0x3AL,253UL},{253UL,0x3AL,0xE6L,0xAEL,0xE6L,0x3AL,253UL},{253UL,0x3AL,0xE6L,0xAEL,0xE6L,0x3AL,253UL}},{{253UL,0x3AL,0xE6L,0xAEL,0xE6L,0x3AL,253UL},{253UL,0x3AL,0xE6L,0xAEL,0xE6L,0x3AL,253UL},{253UL,0x3AL,0xE6L,0xAEL,0xE6L,0x3AL,253UL}},{{253UL,0x3AL,0xE6L,0xAEL,0xE6L,0x3AL,253UL},{253UL,0x3AL,0xE6L,0xAEL,0xE6L,0x3AL,253UL},{253UL,0x3AL,0xE6L,0xAEL,0xE6L,0x3AL,253UL}},{{253UL,0x3AL,0xE6L,0xAEL,0xE6L,0x3AL,253UL},{253UL,0x3AL,0xE6L,0xAEL,0xE6L,0x3AL,253UL},{253UL,0x3AL,0xE6L,0xAEL,0xE6L,0x3AL,253UL}},{{253UL,0x3AL,0xE6L,0xAEL,0xE6L,0x3AL,253UL},{253UL,0x3AL,0xE6L,0xAEL,0xE6L,0x3AL,253UL},{253UL,0x3AL,0xE6L,0xAEL,0xE6L,0x3AL,253UL}},{{253UL,0x3AL,0xE6L,0xAEL,0xE6L,0x3AL,253UL},{253UL,0x3AL,0xE6L,0xAEL,0xE6L,0x3AL,253UL},{253UL,0x3AL,0xE6L,0xAEL,0xE6L,0x3AL,253UL}},{{253UL,0x3AL,0xE6L,0xAEL,0xE6L,0x3AL,253UL},{253UL,0x3AL,0xE6L,0xAEL,0xE6L,0x3AL,253UL},{253UL,0x3AL,0xE6L,0xAEL,0xE6L,0x3AL,253UL}},{{253UL,0x3AL,0xE6L,0xAEL,0xE6L,0x3AL,253UL},{253UL,0x3AL,0xE6L,0xAEL,0xE6L,0x3AL,253UL},{253UL,0x3AL,0xE6L,0xAEL,0xE6L,0x3AL,253UL}}}, // p_1634->g_324
        &p_1634->g_153, // p_1634->g_336
        (void*)0, // p_1634->g_351
        {(-1L),(-1L),(-1L),(-1L)}, // p_1634->g_357
        0x37F0L, // p_1634->g_359
        0x9D7135F0L, // p_1634->g_365
        0x4D92F0E6L, // p_1634->g_370
        0x9628L, // p_1634->g_459
        &p_1634->g_125[0], // p_1634->g_463
        &p_1634->g_463, // p_1634->g_462
        &p_1634->g_462, // p_1634->g_461
        {{&p_1634->g_12,(void*)0,&p_1634->g_12},{&p_1634->g_12,(void*)0,&p_1634->g_12},{&p_1634->g_12,(void*)0,&p_1634->g_12},{&p_1634->g_12,(void*)0,&p_1634->g_12},{&p_1634->g_12,(void*)0,&p_1634->g_12}}, // p_1634->g_497
        0x896EL, // p_1634->g_514
        {{{&p_1634->g_233,&p_1634->g_233,&p_1634->g_233},{&p_1634->g_233,&p_1634->g_233,&p_1634->g_233}},{{&p_1634->g_233,&p_1634->g_233,&p_1634->g_233},{&p_1634->g_233,&p_1634->g_233,&p_1634->g_233}},{{&p_1634->g_233,&p_1634->g_233,&p_1634->g_233},{&p_1634->g_233,&p_1634->g_233,&p_1634->g_233}},{{&p_1634->g_233,&p_1634->g_233,&p_1634->g_233},{&p_1634->g_233,&p_1634->g_233,&p_1634->g_233}},{{&p_1634->g_233,&p_1634->g_233,&p_1634->g_233},{&p_1634->g_233,&p_1634->g_233,&p_1634->g_233}},{{&p_1634->g_233,&p_1634->g_233,&p_1634->g_233},{&p_1634->g_233,&p_1634->g_233,&p_1634->g_233}},{{&p_1634->g_233,&p_1634->g_233,&p_1634->g_233},{&p_1634->g_233,&p_1634->g_233,&p_1634->g_233}},{{&p_1634->g_233,&p_1634->g_233,&p_1634->g_233},{&p_1634->g_233,&p_1634->g_233,&p_1634->g_233}},{{&p_1634->g_233,&p_1634->g_233,&p_1634->g_233},{&p_1634->g_233,&p_1634->g_233,&p_1634->g_233}},{{&p_1634->g_233,&p_1634->g_233,&p_1634->g_233},{&p_1634->g_233,&p_1634->g_233,&p_1634->g_233}}}, // p_1634->g_561
        &p_1634->g_561[0][1][2], // p_1634->g_560
        (-8L), // p_1634->g_617
        0x65A7L, // p_1634->g_655
        0x8B59B02D50294869L, // p_1634->g_657
        1UL, // p_1634->g_768
        &p_1634->g_768, // p_1634->g_767
        0x7606FBE6L, // p_1634->g_787
        0xD4L, // p_1634->g_864
        {&p_1634->g_787,&p_1634->g_787}, // p_1634->g_1043
        &p_1634->g_1043[0], // p_1634->g_1042
        0UL, // p_1634->g_1092
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1634->g_1153
        &p_1634->g_370, // p_1634->g_1183
        (void*)0, // p_1634->g_1187
        {&p_1634->g_768,&p_1634->g_768,&p_1634->g_768,&p_1634->g_768,&p_1634->g_768,&p_1634->g_768,&p_1634->g_768,&p_1634->g_768,&p_1634->g_768}, // p_1634->g_1190
        1UL, // p_1634->g_1268
        {{(void*)0,(void*)0,&p_1634->g_655,(void*)0,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1634->g_655,(void*)0,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1634->g_655,(void*)0,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1634->g_655,(void*)0,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1634->g_655,(void*)0,&p_1634->g_359,(void*)0,(void*)0,&p_1634->g_359,(void*)0,(void*)0}}, // p_1634->g_1297
        &p_1634->g_1297[2][0], // p_1634->g_1296
        &p_1634->g_1297[4][7], // p_1634->g_1422
        &p_1634->g_1422, // p_1634->g_1421
        &p_1634->g_305[0][3][3], // p_1634->g_1482
        &p_1634->g_1482, // p_1634->g_1481
        &p_1634->g_1481, // p_1634->g_1480
        7L, // p_1634->g_1483
        7UL, // p_1634->g_1489
        &p_1634->g_1092, // p_1634->g_1510
        1L, // p_1634->g_1609
        sequence_input[get_global_id(0)], // p_1634->global_0_offset
        sequence_input[get_global_id(1)], // p_1634->global_1_offset
        sequence_input[get_global_id(2)], // p_1634->global_2_offset
        sequence_input[get_local_id(0)], // p_1634->local_0_offset
        sequence_input[get_local_id(1)], // p_1634->local_1_offset
        sequence_input[get_local_id(2)], // p_1634->local_2_offset
        sequence_input[get_group_id(0)], // p_1634->group_0_offset
        sequence_input[get_group_id(1)], // p_1634->group_1_offset
        sequence_input[get_group_id(2)], // p_1634->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 9)), permutations[0][get_linear_local_id()])), // p_1634->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1635 = c_1636;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1634);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1634->g_2[i][j], "p_1634->g_2[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1634->g_3, "p_1634->g_3", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 10; k++)
            {
                transparent_crc(p_1634->g_6[i][j][k], "p_1634->g_6[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1634->g_7, "p_1634->g_7", print_hash_value);
    transparent_crc(p_1634->g_8, "p_1634->g_8", print_hash_value);
    transparent_crc(p_1634->g_9, "p_1634->g_9", print_hash_value);
    transparent_crc(p_1634->g_10, "p_1634->g_10", print_hash_value);
    transparent_crc(p_1634->g_12, "p_1634->g_12", print_hash_value);
    transparent_crc(p_1634->g_17, "p_1634->g_17", print_hash_value);
    transparent_crc(p_1634->g_18, "p_1634->g_18", print_hash_value);
    transparent_crc(p_1634->g_36, "p_1634->g_36", print_hash_value);
    transparent_crc(p_1634->g_37, "p_1634->g_37", print_hash_value);
    transparent_crc(p_1634->g_38, "p_1634->g_38", print_hash_value);
    transparent_crc(p_1634->g_98, "p_1634->g_98", print_hash_value);
    transparent_crc(p_1634->g_102, "p_1634->g_102", print_hash_value);
    transparent_crc(p_1634->g_108, "p_1634->g_108", print_hash_value);
    transparent_crc(p_1634->g_111, "p_1634->g_111", print_hash_value);
    transparent_crc(p_1634->g_112, "p_1634->g_112", print_hash_value);
    transparent_crc(p_1634->g_113, "p_1634->g_113", print_hash_value);
    transparent_crc(p_1634->g_117, "p_1634->g_117", print_hash_value);
    transparent_crc(p_1634->g_124, "p_1634->g_124", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1634->g_125[i], "p_1634->g_125[i]", print_hash_value);

    }
    transparent_crc(p_1634->g_151, "p_1634->g_151", print_hash_value);
    transparent_crc(p_1634->g_152, "p_1634->g_152", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1634->g_154[i], "p_1634->g_154[i]", print_hash_value);

    }
    transparent_crc(p_1634->g_165, "p_1634->g_165", print_hash_value);
    transparent_crc(p_1634->g_233, "p_1634->g_233", print_hash_value);
    transparent_crc(p_1634->g_302, "p_1634->g_302", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_1634->g_305[i][j][k], "p_1634->g_305[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1634->g_322, "p_1634->g_322", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_1634->g_324[i][j][k], "p_1634->g_324[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1634->g_357[i], "p_1634->g_357[i]", print_hash_value);

    }
    transparent_crc(p_1634->g_359, "p_1634->g_359", print_hash_value);
    transparent_crc(p_1634->g_365, "p_1634->g_365", print_hash_value);
    transparent_crc(p_1634->g_370, "p_1634->g_370", print_hash_value);
    transparent_crc(p_1634->g_459, "p_1634->g_459", print_hash_value);
    transparent_crc(p_1634->g_514, "p_1634->g_514", print_hash_value);
    transparent_crc(p_1634->g_617, "p_1634->g_617", print_hash_value);
    transparent_crc(p_1634->g_655, "p_1634->g_655", print_hash_value);
    transparent_crc(p_1634->g_657, "p_1634->g_657", print_hash_value);
    transparent_crc(p_1634->g_768, "p_1634->g_768", print_hash_value);
    transparent_crc(p_1634->g_787, "p_1634->g_787", print_hash_value);
    transparent_crc(p_1634->g_864, "p_1634->g_864", print_hash_value);
    transparent_crc(p_1634->g_1092, "p_1634->g_1092", print_hash_value);
    transparent_crc(p_1634->g_1268, "p_1634->g_1268", print_hash_value);
    transparent_crc(p_1634->g_1483, "p_1634->g_1483", print_hash_value);
    transparent_crc(p_1634->g_1489, "p_1634->g_1489", print_hash_value);
    transparent_crc(p_1634->g_1609, "p_1634->g_1609", print_hash_value);
    transparent_crc(p_1634->l_comm_values[get_linear_local_id()], "p_1634->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1634->g_comm_values[get_linear_group_id() * 9 + get_linear_local_id()], "p_1634->g_comm_values[get_linear_group_id() * 9 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
