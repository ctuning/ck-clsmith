// ---atomic_reductions ---fake_divergence -g 43,21,3 -l 43,1,1
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


// Seed: 120

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile int32_t g_2;
    int32_t g_3[6][7];
    volatile int32_t g_6;
    int32_t g_7;
    int32_t g_11;
    uint16_t g_12;
    int32_t *g_54;
    int32_t **g_53[2];
    uint8_t g_93[1];
    uint8_t g_123;
    int64_t g_127;
    uint32_t g_131;
    int16_t g_134;
    volatile uint32_t g_151;
    int32_t g_174[2][4];
    int8_t g_205[2][5];
    int32_t ** volatile g_226;
    uint32_t g_300;
    uint32_t ** volatile * volatile *g_322;
    uint8_t *g_337[9];
    uint32_t *g_402;
    uint16_t *g_407;
    uint16_t *g_409;
    int8_t *g_414;
    int8_t * volatile *g_413[7];
    int32_t g_436;
    uint64_t g_479;
    int16_t g_485;
    int8_t g_487;
    int32_t * volatile g_491;
    int32_t ** volatile g_494;
    int32_t ** volatile g_495[9];
    volatile uint32_t g_531[10][10];
    int32_t * volatile g_579;
    uint16_t * volatile *g_628[3][1][2];
    uint16_t * volatile * volatile * volatile g_627;
    int64_t g_631;
    int32_t *g_687;
    int32_t ** volatile g_686;
    uint32_t **g_720;
    uint32_t ***g_719;
    uint32_t ****g_718;
    uint16_t **g_748[2][8][10];
    uint16_t ***g_747[8];
    volatile int32_t g_753;
    volatile int64_t g_761;
    volatile int64_t *g_760;
    uint64_t g_788[8];
    volatile uint32_t * volatile * volatile * volatile g_794;
    volatile uint32_t * volatile * volatile * volatile *g_793;
    volatile int64_t g_796[9][5][2];
    int8_t **g_815;
    int32_t ** volatile g_818;
    int16_t *g_835;
    int16_t **g_834[5];
    int16_t *** volatile g_833;
    int16_t g_840[6];
    int8_t ***g_901[3][10][8];
    uint16_t g_958[7][4];
    uint32_t *g_970;
    int32_t ** volatile g_978[10];
    int32_t ** volatile g_979;
    int32_t ** volatile g_991;
    int32_t *g_1022;
    int32_t ** volatile g_1041[3];
    int32_t ** volatile g_1042;
    volatile uint16_t g_1125;
    uint16_t * volatile ** volatile **g_1135;
    int32_t *g_1136;
    uint64_t g_1191;
    int32_t *g_1193[8];
    int32_t ** volatile g_1209[10];
    volatile uint8_t * volatile ** volatile g_1301;
    volatile int32_t * volatile g_1312[1][6][1];
    volatile int32_t * volatile * volatile g_1313;
    int32_t ** volatile g_1348[3][4];
    int32_t ** volatile g_1349;
    int16_t g_1434;
    int32_t ** volatile g_1439;
    int64_t g_1460;
    uint64_t *g_1472;
    uint64_t * volatile * volatile g_1471[6];
    int32_t ** volatile g_1495;
    int32_t ** volatile g_1503;
    int32_t ** volatile g_1505;
    uint16_t ****g_1536;
    uint16_t *****g_1535;
    uint16_t ******g_1534;
    int32_t g_1561;
    int32_t g_1567;
    volatile uint32_t g_1575[9];
    uint64_t g_1581;
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
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
};


/* --- FORWARD DECLARATIONS --- */
int32_t  func_1(struct S0 * p_1589);
int32_t * func_16(int32_t  p_17, int32_t * p_18, struct S0 * p_1589);
int32_t  func_19(uint8_t  p_20, int32_t * p_21, int64_t  p_22, int32_t * p_23, struct S0 * p_1589);
uint8_t  func_24(int32_t * p_25, int8_t  p_26, int32_t * p_27, uint32_t  p_28, struct S0 * p_1589);
int32_t * func_29(int32_t * p_30, int32_t * p_31, int32_t * p_32, int32_t * p_33, struct S0 * p_1589);
int32_t * func_34(int8_t  p_35, struct S0 * p_1589);
int32_t  func_36(uint32_t  p_37, struct S0 * p_1589);
int32_t * func_41(uint32_t  p_42, int32_t * p_43, int32_t * p_44, int32_t  p_45, int32_t * p_46, struct S0 * p_1589);
int32_t * func_48(int32_t ** p_49, uint8_t  p_50, struct S0 * p_1589);
uint32_t  func_51(int32_t ** p_52, struct S0 * p_1589);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1589->g_3 p_1589->g_7 p_1589->g_12 p_1589->g_11 p_1589->g_93
 * writes: p_1589->g_3 p_1589->g_7 p_1589->g_12 p_1589->g_11
 */
int32_t  func_1(struct S0 * p_1589)
{ /* block id: 4 */
    uint32_t l_456 = 4294967288UL;
    int32_t *l_459[3][1][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    int32_t l_1582 = 0x6F6D2B7FL;
    int16_t l_1583[1][1][2];
    int32_t l_1584[10] = {0x3C5A328BL,0x3C5A328BL,0x3C5A328BL,0x3C5A328BL,0x3C5A328BL,0x3C5A328BL,0x3C5A328BL,0x3C5A328BL,0x3C5A328BL,0x3C5A328BL};
    int32_t l_1585 = 0x401867C7L;
    uint16_t l_1586 = 0x30BCL;
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 2; k++)
                l_1583[i][j][k] = 0x5864L;
        }
    }
    for (p_1589->g_3[2][3] = (-20); (p_1589->g_3[2][3] != (-2)); p_1589->g_3[2][3]++)
    { /* block id: 7 */
        int16_t l_15[4] = {0x441AL,0x441AL,0x441AL,0x441AL};
        int32_t *l_457 = &p_1589->g_3[3][0];
        uint16_t l_1542 = 0x0CEEL;
        uint64_t **l_1547 = &p_1589->g_1472;
        int32_t l_1555 = 0x2AF0A16DL;
        int32_t l_1558 = 2L;
        int8_t l_1559[7][4] = {{(-6L),8L,(-7L),8L},{(-6L),8L,(-7L),8L},{(-6L),8L,(-7L),8L},{(-6L),8L,(-7L),8L},{(-6L),8L,(-7L),8L},{(-6L),8L,(-7L),8L},{(-6L),8L,(-7L),8L}};
        int32_t l_1560 = 1L;
        int32_t l_1562[7][4] = {{0x47A1CF69L,0x47A1CF69L,(-1L),1L},{0x47A1CF69L,0x47A1CF69L,(-1L),1L},{0x47A1CF69L,0x47A1CF69L,(-1L),1L},{0x47A1CF69L,0x47A1CF69L,(-1L),1L},{0x47A1CF69L,0x47A1CF69L,(-1L),1L},{0x47A1CF69L,0x47A1CF69L,(-1L),1L},{0x47A1CF69L,0x47A1CF69L,(-1L),1L}};
        int i, j;
        for (p_1589->g_7 = 0; (p_1589->g_7 <= (-21)); --p_1589->g_7)
        { /* block id: 10 */
            int32_t *l_10 = &p_1589->g_11;
            p_1589->g_12++;
        }
        p_1589->g_11 |= p_1589->g_7;
        for (p_1589->g_7 = 0; (p_1589->g_7 <= 3); p_1589->g_7 += 1)
        { /* block id: 16 */
            int32_t *l_458[7][6] = {{&p_1589->g_7,&p_1589->g_7,&p_1589->g_7,&p_1589->g_7,&p_1589->g_7,&p_1589->g_7},{&p_1589->g_7,&p_1589->g_7,&p_1589->g_7,&p_1589->g_7,&p_1589->g_7,&p_1589->g_7},{&p_1589->g_7,&p_1589->g_7,&p_1589->g_7,&p_1589->g_7,&p_1589->g_7,&p_1589->g_7},{&p_1589->g_7,&p_1589->g_7,&p_1589->g_7,&p_1589->g_7,&p_1589->g_7,&p_1589->g_7},{&p_1589->g_7,&p_1589->g_7,&p_1589->g_7,&p_1589->g_7,&p_1589->g_7,&p_1589->g_7},{&p_1589->g_7,&p_1589->g_7,&p_1589->g_7,&p_1589->g_7,&p_1589->g_7,&p_1589->g_7},{&p_1589->g_7,&p_1589->g_7,&p_1589->g_7,&p_1589->g_7,&p_1589->g_7,&p_1589->g_7}};
            int32_t l_762[9][9][3] = {{{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L}},{{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L}},{{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L}},{{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L}},{{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L}},{{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L}},{{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L}},{{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L}},{{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L},{(-1L),1L,1L}}};
            uint16_t l_1526 = 0UL;
            uint32_t l_1530 = 0UL;
            uint8_t l_1533 = 0xD1L;
            uint64_t l_1539 = 0x4A27F1C364A63427L;
            int64_t l_1557 = (-4L);
            uint8_t l_1569 = 248UL;
            uint8_t l_1580 = 4UL;
            int i, j, k;
            (1 + 1);
        }
    }
    --l_1586;
    return p_1589->g_93[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1589->g_1439 p_1589->g_1193
 * writes:
 */
int32_t * func_16(int32_t  p_17, int32_t * p_18, struct S0 * p_1589)
{ /* block id: 589 */
    uint32_t l_1160 = 1UL;
    int8_t *l_1165 = &p_1589->g_205[0][1];
    int8_t *l_1166 = &p_1589->g_205[1][1];
    int64_t *l_1169 = &p_1589->g_127;
    uint32_t *l_1170 = &l_1160;
    int32_t l_1171 = 0x43E53D8FL;
    int8_t **l_1183 = &l_1166;
    int32_t l_1207 = (-1L);
    int16_t **l_1257 = &p_1589->g_835;
    uint32_t l_1258 = 0xDEACD299L;
    uint16_t ***l_1260 = (void*)0;
    int64_t l_1288 = (-5L);
    uint8_t **l_1290[1];
    uint8_t ***l_1289 = &l_1290[0];
    uint64_t *l_1291[5];
    int32_t l_1292 = 0x612A928EL;
    uint32_t ****l_1354 = &p_1589->g_719;
    uint16_t ****l_1371 = &p_1589->g_747[2];
    uint16_t *****l_1370 = &l_1371;
    int32_t l_1383 = (-5L);
    int32_t l_1385 = 0x7518D761L;
    int32_t l_1386 = (-1L);
    int32_t l_1388[7] = {0x330A2A19L,0x330A2A19L,0x330A2A19L,0x330A2A19L,0x330A2A19L,0x330A2A19L,0x330A2A19L};
    uint64_t l_1394 = 18446744073709551615UL;
    int32_t *l_1438 = &p_1589->g_3[2][3];
    uint64_t l_1498 = 18446744073709551615UL;
    int32_t *l_1504[4][7] = {{(void*)0,(void*)0,&p_1589->g_7,&l_1292,&l_1383,&l_1292,&p_1589->g_7},{(void*)0,(void*)0,&p_1589->g_7,&l_1292,&l_1383,&l_1292,&p_1589->g_7},{(void*)0,(void*)0,&p_1589->g_7,&l_1292,&l_1383,&l_1292,&p_1589->g_7},{(void*)0,(void*)0,&p_1589->g_7,&l_1292,&l_1383,&l_1292,&p_1589->g_7}};
    int i, j;
    for (i = 0; i < 1; i++)
        l_1290[i] = &p_1589->g_337[7];
    for (i = 0; i < 5; i++)
        l_1291[i] = &p_1589->g_788[2];
    return (*p_1589->g_1439);
}


/* ------------------------------------------ */
/* 
 * reads : p_1589->g_3 p_1589->g_1022
 * writes: p_1589->g_174
 */
int32_t  func_19(uint8_t  p_20, int32_t * p_21, int64_t  p_22, int32_t * p_23, struct S0 * p_1589)
{ /* block id: 583 */
    int64_t l_1137 = 3L;
    int8_t *l_1146 = &p_1589->g_205[1][1];
    int8_t *l_1147 = &p_1589->g_205[1][1];
    int32_t l_1148 = 0x690F2AB2L;
    int32_t *l_1149[10][9][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
    int8_t l_1150 = 1L;
    uint32_t l_1151 = 0x11885159L;
    int i, j, k;
    l_1137 = 0x6AB96808L;
    (*p_1589->g_1022) = ((*p_23) != (safe_add_func_uint64_t_u_u((safe_mul_func_int8_t_s_s(p_22, (0x08L & l_1137))), (safe_lshift_func_int8_t_s_s((0x465B2441855ECFB0L >= ((safe_add_func_int16_t_s_s(((*p_23) < (((((l_1146 = l_1146) == l_1147) <= l_1137) , (*p_21)) == 0x3387AD68L)), 0x7005L)) ^ p_20)), p_20)))));
    l_1151--;
    return (*p_21);
}


/* ------------------------------------------ */
/* 
 * reads : p_1589->g_479 p_1589->g_835 p_1589->g_485 p_1589->g_174 p_1589->g_788 p_1589->g_760 p_1589->g_761 p_1589->g_3 p_1589->g_7 p_1589->g_123 p_1589->g_1125 p_1589->g_1135
 * writes: p_1589->g_479 p_1589->g_788 p_1589->g_123 p_1589->g_1125
 */
uint8_t  func_24(int32_t * p_25, int8_t  p_26, int32_t * p_27, uint32_t  p_28, struct S0 * p_1589)
{ /* block id: 384 */
    int16_t l_784 = 0x5C84L;
    uint8_t l_798 = 8UL;
    int32_t l_801 = 0x45CB7B2AL;
    int8_t **l_813 = (void*)0;
    int64_t l_819[6][8][5] = {{{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)}},{{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)}},{{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)}},{{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)}},{{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)}},{{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)},{0x285E009E3EE9A954L,0x47EB56FA8DC681B5L,(-5L),0x48B3906A8DEE6C37L,(-6L)}}};
    int32_t l_839[9] = {(-1L),0x5A48DE59L,(-1L),(-1L),0x5A48DE59L,(-1L),(-1L),0x5A48DE59L,(-1L)};
    int32_t l_846[10][9][2] = {{{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L}},{{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L}},{{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L}},{{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L}},{{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L}},{{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L}},{{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L}},{{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L}},{{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L}},{{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L}}};
    int32_t l_876 = (-1L);
    uint32_t l_906 = 0xE9C4E078L;
    uint8_t **l_921 = &p_1589->g_337[7];
    uint64_t l_929 = 18446744073709551615UL;
    uint32_t *l_969 = &l_906;
    int32_t *l_972 = &l_846[5][6][0];
    int32_t *l_1037 = (void*)0;
    uint32_t l_1064 = 0UL;
    int32_t **l_1115 = &l_1037;
    uint16_t l_1131[10] = {0x5F4EL,0xB0F9L,0x0059L,0xB0F9L,0x5F4EL,0x5F4EL,0xB0F9L,0x0059L,0xB0F9L,0x5F4EL};
    uint64_t *l_1132 = (void*)0;
    uint64_t *l_1133 = (void*)0;
    uint64_t *l_1134 = &p_1589->g_788[2];
    int i, j, k;
    for (p_26 = (-22); (p_26 <= 4); p_26++)
    { /* block id: 387 */
        int32_t l_795 = (-4L);
        int32_t l_797 = (-3L);
        int8_t **l_814 = &p_1589->g_414;
        int32_t l_847[9] = {0x355DDF63L,0x67285ABFL,0x355DDF63L,0x355DDF63L,0x67285ABFL,0x355DDF63L,0x355DDF63L,0x67285ABFL,0x355DDF63L};
        int32_t l_851[7][5][7] = {{{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L},{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L},{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L},{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L},{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L}},{{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L},{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L},{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L},{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L},{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L}},{{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L},{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L},{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L},{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L},{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L}},{{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L},{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L},{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L},{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L},{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L}},{{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L},{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L},{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L},{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L},{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L}},{{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L},{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L},{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L},{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L},{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L}},{{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L},{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L},{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L},{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L},{(-1L),0x3571A036L,1L,0x1C24AB81L,(-1L),0x1C24AB81L,1L}}};
        uint16_t l_852 = 7UL;
        uint32_t ****l_871 = &p_1589->g_719;
        uint8_t l_881[6];
        uint8_t l_977[3];
        int16_t l_1025 = 0x17EFL;
        int32_t *l_1034 = &p_1589->g_174[1][3];
        uint64_t *l_1073 = &p_1589->g_788[2];
        uint64_t *l_1075 = &p_1589->g_788[2];
        int64_t *l_1101 = (void*)0;
        int64_t *l_1102 = &l_819[1][4][3];
        uint16_t ****l_1110 = &p_1589->g_747[7];
        uint16_t *****l_1109 = &l_1110;
        uint32_t l_1111 = 1UL;
        int32_t **l_1114 = &l_1037;
        int i, j, k;
        for (i = 0; i < 6; i++)
            l_881[i] = 255UL;
        for (i = 0; i < 3; i++)
            l_977[i] = 4UL;
        for (p_1589->g_479 = 0; (p_1589->g_479 <= 1); p_1589->g_479 += 1)
        { /* block id: 390 */
            uint32_t *l_779 = &p_1589->g_131;
            uint64_t *l_787 = &p_1589->g_788[2];
            int32_t l_845[9];
            uint64_t l_860[2];
            uint32_t *l_874 = &p_1589->g_131;
            uint8_t *l_885 = &p_1589->g_123;
            uint16_t *l_894[3][1][2] = {{{&l_852,&l_852}},{{&l_852,&l_852}},{{&l_852,&l_852}}};
            uint8_t l_949 = 0x51L;
            int32_t *l_1043[10];
            uint16_t l_1057[3][5][3] = {{{0x3E34L,0x3435L,0x3435L},{0x3E34L,0x3435L,0x3435L},{0x3E34L,0x3435L,0x3435L},{0x3E34L,0x3435L,0x3435L},{0x3E34L,0x3435L,0x3435L}},{{0x3E34L,0x3435L,0x3435L},{0x3E34L,0x3435L,0x3435L},{0x3E34L,0x3435L,0x3435L},{0x3E34L,0x3435L,0x3435L},{0x3E34L,0x3435L,0x3435L}},{{0x3E34L,0x3435L,0x3435L},{0x3E34L,0x3435L,0x3435L},{0x3E34L,0x3435L,0x3435L},{0x3E34L,0x3435L,0x3435L},{0x3E34L,0x3435L,0x3435L}}};
            int8_t **l_1061[7] = {(void*)0,&p_1589->g_414,(void*)0,(void*)0,&p_1589->g_414,(void*)0,(void*)0};
            int i, j, k;
            for (i = 0; i < 9; i++)
                l_845[i] = 0L;
            for (i = 0; i < 2; i++)
                l_860[i] = 0x3FFE677E7E8D5F9FL;
            for (i = 0; i < 10; i++)
                l_1043[i] = &p_1589->g_436;
            (1 + 1);
        }
        (*l_972) |= (safe_lshift_func_int16_t_s_s(((*p_1589->g_835) , (((*l_1102) = ((*l_1034) , ((void*)0 == &l_839[8]))) | (((0UL <= ((safe_mod_func_uint32_t_u_u(p_28, FAKE_DIVERGE(p_1589->local_0_offset, get_local_id(0), 10))) && (-3L))) , ((--(*l_1073)) || (safe_mod_func_uint16_t_u_u((l_1109 != (p_26 , (void*)0)), 0x6313L)))) , (*p_1589->g_760)))), (*l_1034)));
        if ((*p_25))
            break;
        (*l_1114) = (*l_1114);
    }
    (*l_1115) = (void*)0;
    for (p_1589->g_123 = 15; (p_1589->g_123 <= 55); p_1589->g_123 = safe_add_func_uint64_t_u_u(p_1589->g_123, 2))
    { /* block id: 577 */
        int32_t *l_1118 = &p_1589->g_174[1][2];
        int32_t *l_1119 = &p_1589->g_174[1][1];
        int32_t *l_1120 = &p_1589->g_174[1][3];
        int32_t *l_1121 = &p_1589->g_11;
        int32_t *l_1122 = &p_1589->g_174[1][3];
        int32_t *l_1123[2][3][8] = {{{(void*)0,(void*)0,(void*)0,&p_1589->g_174[1][3],&l_801,&p_1589->g_174[1][3],(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1589->g_174[1][3],&l_801,&p_1589->g_174[1][3],(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1589->g_174[1][3],&l_801,&p_1589->g_174[1][3],(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,&p_1589->g_174[1][3],&l_801,&p_1589->g_174[1][3],(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1589->g_174[1][3],&l_801,&p_1589->g_174[1][3],(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1589->g_174[1][3],&l_801,&p_1589->g_174[1][3],(void*)0,(void*)0}}};
        int8_t l_1124 = 0x6EL;
        int i, j, k;
        --p_1589->g_1125;
    }
    (*l_972) |= (+((((*p_1589->g_760) > ((safe_unary_minus_func_uint64_t_u(((*l_1134) |= ((((0x41F980EA2E33064FL && 0L) == GROUP_DIVERGE(0, 1)) & GROUP_DIVERGE(2, 1)) >= l_1131[8])))) == ((void*)0 != &p_1589->g_337[7]))) , p_1589->g_1135) != p_1589->g_1135));
    return p_28;
}


/* ------------------------------------------ */
/* 
 * reads : p_1589->g_226 p_1589->g_54 p_1589->g_3 p_1589->g_7 p_1589->g_414 p_1589->g_205 p_1589->g_174 p_1589->g_479 p_1589->g_436 p_1589->g_12 p_1589->g_491 p_1589->g_11 p_1589->g_131 p_1589->g_93 p_1589->g_485 p_1589->g_531 p_1589->g_123 p_1589->g_409 p_1589->g_127 p_1589->g_579 p_1589->g_134 p_1589->g_627 p_1589->g_300 p_1589->g_2 p_1589->g_686 p_1589->g_407
 * writes: p_1589->g_127 p_1589->g_479 p_1589->g_436 p_1589->g_485 p_1589->g_11 p_1589->g_54 p_1589->g_123 p_1589->g_131 p_1589->g_407 p_1589->g_134 p_1589->g_174 p_1589->g_12 p_1589->g_300 p_1589->g_631 p_1589->g_205 p_1589->g_687 p_1589->g_718
 */
int32_t * func_29(int32_t * p_30, int32_t * p_31, int32_t * p_32, int32_t * p_33, struct S0 * p_1589)
{ /* block id: 220 */
    uint64_t l_466 = 0xC7718B64A7C32050L;
    uint64_t l_483 = 0UL;
    int32_t l_488 = 1L;
    int32_t l_513 = 0x0E582BB0L;
    uint16_t **l_515 = &p_1589->g_407;
    uint16_t ***l_514[5][1];
    uint32_t l_575[3];
    int32_t l_576 = 1L;
    int32_t *l_632[5][6][6] = {{{&l_513,&p_1589->g_174[1][3],&l_513,&p_1589->g_3[4][5],&l_513,(void*)0},{&l_513,&p_1589->g_174[1][3],&l_513,&p_1589->g_3[4][5],&l_513,(void*)0},{&l_513,&p_1589->g_174[1][3],&l_513,&p_1589->g_3[4][5],&l_513,(void*)0},{&l_513,&p_1589->g_174[1][3],&l_513,&p_1589->g_3[4][5],&l_513,(void*)0},{&l_513,&p_1589->g_174[1][3],&l_513,&p_1589->g_3[4][5],&l_513,(void*)0},{&l_513,&p_1589->g_174[1][3],&l_513,&p_1589->g_3[4][5],&l_513,(void*)0}},{{&l_513,&p_1589->g_174[1][3],&l_513,&p_1589->g_3[4][5],&l_513,(void*)0},{&l_513,&p_1589->g_174[1][3],&l_513,&p_1589->g_3[4][5],&l_513,(void*)0},{&l_513,&p_1589->g_174[1][3],&l_513,&p_1589->g_3[4][5],&l_513,(void*)0},{&l_513,&p_1589->g_174[1][3],&l_513,&p_1589->g_3[4][5],&l_513,(void*)0},{&l_513,&p_1589->g_174[1][3],&l_513,&p_1589->g_3[4][5],&l_513,(void*)0},{&l_513,&p_1589->g_174[1][3],&l_513,&p_1589->g_3[4][5],&l_513,(void*)0}},{{&l_513,&p_1589->g_174[1][3],&l_513,&p_1589->g_3[4][5],&l_513,(void*)0},{&l_513,&p_1589->g_174[1][3],&l_513,&p_1589->g_3[4][5],&l_513,(void*)0},{&l_513,&p_1589->g_174[1][3],&l_513,&p_1589->g_3[4][5],&l_513,(void*)0},{&l_513,&p_1589->g_174[1][3],&l_513,&p_1589->g_3[4][5],&l_513,(void*)0},{&l_513,&p_1589->g_174[1][3],&l_513,&p_1589->g_3[4][5],&l_513,(void*)0},{&l_513,&p_1589->g_174[1][3],&l_513,&p_1589->g_3[4][5],&l_513,(void*)0}},{{&l_513,&p_1589->g_174[1][3],&l_513,&p_1589->g_3[4][5],&l_513,(void*)0},{&l_513,&p_1589->g_174[1][3],&l_513,&p_1589->g_3[4][5],&l_513,(void*)0},{&l_513,&p_1589->g_174[1][3],&l_513,&p_1589->g_3[4][5],&l_513,(void*)0},{&l_513,&p_1589->g_174[1][3],&l_513,&p_1589->g_3[4][5],&l_513,(void*)0},{&l_513,&p_1589->g_174[1][3],&l_513,&p_1589->g_3[4][5],&l_513,(void*)0},{&l_513,&p_1589->g_174[1][3],&l_513,&p_1589->g_3[4][5],&l_513,(void*)0}},{{&l_513,&p_1589->g_174[1][3],&l_513,&p_1589->g_3[4][5],&l_513,(void*)0},{&l_513,&p_1589->g_174[1][3],&l_513,&p_1589->g_3[4][5],&l_513,(void*)0},{&l_513,&p_1589->g_174[1][3],&l_513,&p_1589->g_3[4][5],&l_513,(void*)0},{&l_513,&p_1589->g_174[1][3],&l_513,&p_1589->g_3[4][5],&l_513,(void*)0},{&l_513,&p_1589->g_174[1][3],&l_513,&p_1589->g_3[4][5],&l_513,(void*)0},{&l_513,&p_1589->g_174[1][3],&l_513,&p_1589->g_3[4][5],&l_513,(void*)0}}};
    int64_t l_650 = 0x0D29B817403859B3L;
    uint32_t **l_669 = &p_1589->g_402;
    int16_t l_682 = (-2L);
    int i, j, k;
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 1; j++)
            l_514[i][j] = &l_515;
    }
    for (i = 0; i < 3; i++)
        l_575[i] = 0UL;
    if ((**p_1589->g_226))
    { /* block id: 221 */
        int64_t *l_471[1];
        uint64_t *l_478 = &p_1589->g_479;
        int32_t l_482 = 1L;
        int32_t *l_484 = &p_1589->g_436;
        int8_t *l_486[6];
        uint64_t l_489 = 0x3E25D42C20603BE7L;
        uint32_t l_490 = 0xE0427C1CL;
        int i;
        for (i = 0; i < 1; i++)
            l_471[i] = (void*)0;
        for (i = 0; i < 6; i++)
            l_486[i] = &p_1589->g_487;
lbl_492:
        (*p_1589->g_491) = (((((*p_1589->g_414) , ((safe_lshift_func_int8_t_s_u((safe_sub_func_int16_t_s_s((safe_mod_func_int32_t_s_s((l_466 ^ ((safe_lshift_func_uint8_t_u_s(((+(p_1589->g_127 = l_466)) <= (((p_1589->g_174[1][3] , l_466) ^ (*p_1589->g_414)) <= (l_488 = ((safe_lshift_func_int8_t_s_u((GROUP_DIVERGE(0, 1) , (l_482 = (((safe_lshift_func_uint16_t_u_s(((safe_div_func_uint64_t_u_u((p_1589->g_485 = ((*p_30) || ((((*l_478)++) < l_482) , ((*l_484) &= (l_482 & l_483))))), FAKE_DIVERGE(p_1589->local_2_offset, get_local_id(2), 10))) ^ l_466), 5)) == FAKE_DIVERGE(p_1589->local_1_offset, get_local_id(1), 10)) | l_483))), FAKE_DIVERGE(p_1589->global_2_offset, get_global_id(2), 10))) && (*l_484))))), 6)) != p_1589->g_12)), l_489)), 65529UL)), 2)) , l_490)) ^ (*p_1589->g_414)) != (*p_31)) && l_488);
        for (l_490 = 1; (l_490 <= 6); l_490 += 1)
        { /* block id: 231 */
            int32_t *l_493 = (void*)0;
            int32_t **l_496 = &p_1589->g_54;
            int64_t l_511 = (-8L);
            if (l_489)
                goto lbl_492;
            (*l_496) = l_493;
            for (p_1589->g_123 = 1; (p_1589->g_123 <= 6); p_1589->g_123 += 1)
            { /* block id: 236 */
                uint32_t l_498[5][9] = {{0UL,0UL,0xBB186D42L,1UL,0xD8CF652EL,1UL,0xBB186D42L,0UL,0UL},{0UL,0UL,0xBB186D42L,1UL,0xD8CF652EL,1UL,0xBB186D42L,0UL,0UL},{0UL,0UL,0xBB186D42L,1UL,0xD8CF652EL,1UL,0xBB186D42L,0UL,0UL},{0UL,0UL,0xBB186D42L,1UL,0xD8CF652EL,1UL,0xBB186D42L,0UL,0UL},{0UL,0UL,0xBB186D42L,1UL,0xD8CF652EL,1UL,0xBB186D42L,0UL,0UL}};
                uint32_t *l_503 = &p_1589->g_131;
                int16_t *l_510[3][9] = {{&p_1589->g_134,&p_1589->g_134,&p_1589->g_485,&p_1589->g_134,&p_1589->g_134,&p_1589->g_134,&p_1589->g_134,&p_1589->g_485,&p_1589->g_134},{&p_1589->g_134,&p_1589->g_134,&p_1589->g_485,&p_1589->g_134,&p_1589->g_134,&p_1589->g_134,&p_1589->g_134,&p_1589->g_485,&p_1589->g_134},{&p_1589->g_134,&p_1589->g_134,&p_1589->g_485,&p_1589->g_134,&p_1589->g_134,&p_1589->g_134,&p_1589->g_134,&p_1589->g_485,&p_1589->g_134}};
                int i, j;
                for (l_466 = 1; (l_466 <= 6); l_466 += 1)
                { /* block id: 239 */
                    int32_t *l_497[3][6][2] = {{{&p_1589->g_436,&p_1589->g_174[1][3]},{&p_1589->g_436,&p_1589->g_174[1][3]},{&p_1589->g_436,&p_1589->g_174[1][3]},{&p_1589->g_436,&p_1589->g_174[1][3]},{&p_1589->g_436,&p_1589->g_174[1][3]},{&p_1589->g_436,&p_1589->g_174[1][3]}},{{&p_1589->g_436,&p_1589->g_174[1][3]},{&p_1589->g_436,&p_1589->g_174[1][3]},{&p_1589->g_436,&p_1589->g_174[1][3]},{&p_1589->g_436,&p_1589->g_174[1][3]},{&p_1589->g_436,&p_1589->g_174[1][3]},{&p_1589->g_436,&p_1589->g_174[1][3]}},{{&p_1589->g_436,&p_1589->g_174[1][3]},{&p_1589->g_436,&p_1589->g_174[1][3]},{&p_1589->g_436,&p_1589->g_174[1][3]},{&p_1589->g_436,&p_1589->g_174[1][3]},{&p_1589->g_436,&p_1589->g_174[1][3]},{&p_1589->g_436,&p_1589->g_174[1][3]}}};
                    int i, j, k;
                    l_497[2][0][0] = ((*l_496) = p_32);
                    if ((*p_1589->g_54))
                        break;
                    (*l_484) ^= l_498[2][5];
                }
                (*l_484) = (((*l_484) > ((safe_add_func_int32_t_s_s((*p_1589->g_491), l_498[1][4])) | ((safe_sub_func_uint32_t_u_u((--(*l_503)), (safe_div_func_int32_t_s_s((safe_add_func_uint16_t_u_u(1UL, (~l_488))), (l_513 |= ((p_1589->g_485 = (*l_484)) <= (l_511 > (safe_unary_minus_func_uint8_t_u(0xB1L))))))))) != (((l_498[2][5] , 0x045A9651L) , l_514[3][0]) != (void*)0)))) && 1L);
                for (l_482 = 6; (l_482 >= 0); l_482 -= 1)
                { /* block id: 251 */
                    for (l_513 = 0; l_513 < 1; l_513 += 1)
                    {
                        l_471[l_513] = &p_1589->g_127;
                    }
                    (*l_496) = (*l_496);
                }
            }
        }
    }
    else
    { /* block id: 257 */
        int32_t **l_516 = &p_1589->g_54;
        int32_t l_519 = 1L;
        uint16_t **l_528 = &p_1589->g_407;
        int64_t *l_532 = &p_1589->g_127;
        int16_t l_596 = 0x2EEFL;
        int32_t l_634 = 1L;
        int32_t l_635 = 0x67EAACB7L;
        uint32_t **l_670[9];
        uint32_t l_676 = 0x9FF9039AL;
        int32_t l_754 = 0x3E51AAE4L;
        int32_t l_755 = 0x22A72CDCL;
        int32_t l_756[4][4][7] = {{{0x06F2CB34L,0x21C11CAFL,7L,1L,0x3FE3D5DBL,(-1L),(-9L)},{0x06F2CB34L,0x21C11CAFL,7L,1L,0x3FE3D5DBL,(-1L),(-9L)},{0x06F2CB34L,0x21C11CAFL,7L,1L,0x3FE3D5DBL,(-1L),(-9L)},{0x06F2CB34L,0x21C11CAFL,7L,1L,0x3FE3D5DBL,(-1L),(-9L)}},{{0x06F2CB34L,0x21C11CAFL,7L,1L,0x3FE3D5DBL,(-1L),(-9L)},{0x06F2CB34L,0x21C11CAFL,7L,1L,0x3FE3D5DBL,(-1L),(-9L)},{0x06F2CB34L,0x21C11CAFL,7L,1L,0x3FE3D5DBL,(-1L),(-9L)},{0x06F2CB34L,0x21C11CAFL,7L,1L,0x3FE3D5DBL,(-1L),(-9L)}},{{0x06F2CB34L,0x21C11CAFL,7L,1L,0x3FE3D5DBL,(-1L),(-9L)},{0x06F2CB34L,0x21C11CAFL,7L,1L,0x3FE3D5DBL,(-1L),(-9L)},{0x06F2CB34L,0x21C11CAFL,7L,1L,0x3FE3D5DBL,(-1L),(-9L)},{0x06F2CB34L,0x21C11CAFL,7L,1L,0x3FE3D5DBL,(-1L),(-9L)}},{{0x06F2CB34L,0x21C11CAFL,7L,1L,0x3FE3D5DBL,(-1L),(-9L)},{0x06F2CB34L,0x21C11CAFL,7L,1L,0x3FE3D5DBL,(-1L),(-9L)},{0x06F2CB34L,0x21C11CAFL,7L,1L,0x3FE3D5DBL,(-1L),(-9L)},{0x06F2CB34L,0x21C11CAFL,7L,1L,0x3FE3D5DBL,(-1L),(-9L)}}};
        uint16_t l_757 = 0UL;
        int i, j, k;
        for (i = 0; i < 9; i++)
            l_670[i] = &p_1589->g_402;
        (*l_516) = p_33;
lbl_633:
        (*l_516) = p_30;
        if (((safe_div_func_uint8_t_u_u((((l_519 = (-4L)) < (((l_466 , ((**l_516) && (safe_add_func_uint64_t_u_u(((p_1589->g_93[0] < 1UL) >= ((*l_532) = (0x30L | ((safe_mod_func_int8_t_s_s((((((+(!((safe_rshift_func_uint8_t_u_u(((safe_rshift_func_int16_t_s_s(((l_528 == l_528) , (safe_mod_func_uint64_t_u_u(p_1589->g_485, (**l_516)))), p_1589->g_174[1][3])) , p_1589->g_531[4][3]), 3)) , l_466))) == p_1589->g_123) ^ 0x2FL) > 18446744073709551612UL) != l_488), l_513)) < 246UL)))), 0x7379373BE726E596L)))) <= (**l_516)) > l_513)) , l_513), 1UL)) < 0x45DA0001L))
        { /* block id: 262 */
            uint32_t l_543[6];
            int i;
            for (i = 0; i < 6; i++)
                l_543[i] = 0x28CE2040L;
            l_488 = (safe_mod_func_int8_t_s_s((safe_lshift_func_int16_t_s_s((safe_lshift_func_int8_t_s_u((**l_516), ((safe_lshift_func_int16_t_s_u((safe_mul_func_int8_t_s_s((0x7D23L > ((((l_543[4] != (0x7442L ^ p_1589->g_174[1][1])) || ((safe_lshift_func_int16_t_s_u((l_543[4] > (+GROUP_DIVERGE(2, 1))), 14)) , ((void*)0 == &p_1589->g_413[1]))) == (safe_rshift_func_uint8_t_u_s(((**l_516) , 0UL), (*p_1589->g_414)))) && l_543[4])), (**l_516))), (*p_1589->g_409))) != l_543[5]))), l_513)), (-1L)));
        }
        else
        { /* block id: 264 */
            uint8_t *l_560[3];
            int32_t l_561 = 0x460899FFL;
            uint16_t *l_566 = &p_1589->g_12;
            uint16_t *l_567[9] = {&p_1589->g_12,&p_1589->g_12,&p_1589->g_12,&p_1589->g_12,&p_1589->g_12,&p_1589->g_12,&p_1589->g_12,&p_1589->g_12,&p_1589->g_12};
            int32_t l_572 = 0x092A7830L;
            int16_t *l_574[2];
            uint32_t l_577[5][2][3];
            uint16_t ***l_619 = &l_515;
            uint32_t *l_663 = (void*)0;
            uint32_t *l_664 = &p_1589->g_131;
            uint32_t ***l_671 = &l_669;
            uint32_t ***l_672 = (void*)0;
            uint32_t ***l_673 = (void*)0;
            uint32_t **l_675 = (void*)0;
            uint32_t ***l_674 = &l_675;
            int32_t l_681[5][5] = {{8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L}};
            int32_t *l_735 = &l_681[2][0];
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_560[i] = &p_1589->g_93[0];
            for (i = 0; i < 2; i++)
                l_574[i] = &p_1589->g_134;
            for (i = 0; i < 5; i++)
            {
                for (j = 0; j < 2; j++)
                {
                    for (k = 0; k < 3; k++)
                        l_577[i][j][k] = 4294967286UL;
                }
            }
            if ((((safe_rshift_func_int16_t_s_u((safe_lshift_func_int16_t_s_s((l_576 ^= (((((safe_rshift_func_uint8_t_u_u(0x09L, ((safe_mod_func_uint32_t_u_u((safe_lshift_func_uint16_t_u_s(0xD29EL, (safe_rshift_func_uint8_t_u_u((l_561 = FAKE_DIVERGE(p_1589->global_1_offset, get_global_id(1), 10)), ((safe_mod_func_int16_t_s_s(((safe_div_func_int16_t_s_s((((*l_515) = l_566) != (l_567[5] = &p_1589->g_12)), (p_1589->g_134 = (safe_mul_func_int8_t_s_s(((~(safe_lshift_func_uint8_t_u_u(l_572, (**l_516)))) == 2UL), (safe_unary_minus_func_uint32_t_u(0x37DDF1DDL))))))) > (l_575[0] & l_488)), l_513)) & 0x816EL))))), (*p_32))) && p_1589->g_127))) ^ (-10L)) != 0x5B2AL) , 3L) <= (*p_1589->g_409))), l_577[3][1][2])), 1)) , l_483) & p_1589->g_3[5][4]))
            { /* block id: 270 */
                int32_t l_588 = 0x72C25543L;
                int8_t *l_589 = &p_1589->g_205[1][1];
                int32_t l_608 = (-10L);
                for (p_1589->g_131 = 0; (p_1589->g_131 <= 8); p_1589->g_131 += 1)
                { /* block id: 273 */
                    int8_t l_578 = 0x5DL;
                    (*l_516) = &l_513;
                    if (l_578)
                        break;
                    (*p_1589->g_579) &= (*p_1589->g_54);
                    for (l_572 = 0; l_572 < 5; l_572 += 1)
                    {
                        for (p_1589->g_12 = 0; p_1589->g_12 < 2; p_1589->g_12 += 1)
                        {
                            for (p_1589->g_134 = 0; p_1589->g_134 < 3; p_1589->g_134 += 1)
                            {
                                l_577[l_572][p_1589->g_12][p_1589->g_134] = 0x386AC842L;
                            }
                        }
                    }
                }
                for (p_1589->g_436 = 0; (p_1589->g_436 <= 1); p_1589->g_436 += 1)
                { /* block id: 281 */
                    uint8_t l_597 = 0x22L;
                    uint32_t *l_614 = &p_1589->g_300;
                    uint16_t ****l_620 = (void*)0;
                    uint16_t ****l_621 = &l_514[0][0];
                    int8_t *l_624[2];
                    int8_t **l_626 = &l_624[1];
                    int8_t ***l_625 = &l_626;
                    int16_t l_629 = 1L;
                    uint8_t l_630 = 1UL;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_624[i] = &p_1589->g_487;
                    l_519 = (((safe_mod_func_uint32_t_u_u(((safe_mul_func_uint8_t_u_u((0x493F02EBE50E91ABL != (**l_516)), (GROUP_DIVERGE(2, 1) >= (safe_div_func_int8_t_s_s(((~(safe_mul_func_int8_t_s_s(l_577[4][1][1], l_588))) >= (((void*)0 == l_589) && (-1L))), (l_577[3][1][1] , l_488)))))) | 0x043B2AB1L), (*p_30))) , l_588) ^ (**l_516));
                    (*p_1589->g_579) = (safe_mul_func_uint16_t_u_u(((safe_mul_func_uint8_t_u_u((((**l_516) == ((*l_532) = (0x366200C363599A88L <= (((l_483 ^ (safe_mul_func_int8_t_s_s((l_596 == 0x6658EF33L), l_597))) , (safe_lshift_func_int16_t_s_s((((l_597 == (safe_lshift_func_int16_t_s_u(p_1589->g_93[0], (safe_div_func_int32_t_s_s((safe_div_func_int8_t_s_s((((((safe_div_func_uint64_t_u_u(p_1589->g_134, l_597)) || FAKE_DIVERGE(p_1589->group_2_offset, get_group_id(2), 10)) < 0x58F8E186L) || (*p_1589->g_54)) , l_575[0]), l_597)), l_561))))) , l_597) ^ l_608), 11))) <= 0x735836EA15F2B1AFL)))) & l_608), l_608)) , FAKE_DIVERGE(p_1589->group_1_offset, get_group_id(1), 10)), 2L));
                    if (((safe_add_func_int32_t_s_s((((*p_1589->g_414) = ((l_588 &= (safe_unary_minus_func_int8_t_s((((safe_sub_func_uint64_t_u_u((((((*l_614) = l_572) , l_572) , (!0x0106L)) == (p_1589->g_205[1][1] != (p_1589->g_631 = (((((safe_sub_func_int64_t_s_s((((((*l_621) = l_619) != (((safe_rshift_func_int8_t_s_u((l_513 = l_597), ((&l_624[1] != ((*l_625) = &l_589)) || ((*l_532) = p_1589->g_436)))) && l_575[0]) , p_1589->g_627)) , l_608) & l_629), l_630)) | l_629) ^ p_1589->g_174[1][3]) , l_572) <= (*p_1589->g_409))))), p_1589->g_436)) > 0L) , 0x42L)))) , 0x01L)) >= 0x01L), l_561)) == l_575[0]))
                    { /* block id: 293 */
                        return p_31;
                    }
                    else
                    { /* block id: 295 */
                        (*l_516) = &l_488;
                        if (l_488)
                            continue;
                    }
                    if (l_608)
                        continue;
                    for (l_630 = 0; (l_630 <= 1); l_630 += 1)
                    { /* block id: 302 */
                        return p_31;
                    }
                }
                if (l_588)
                    goto lbl_633;
            }
            else
            { /* block id: 307 */
                uint32_t l_636[6][3];
                int i, j;
                for (i = 0; i < 6; i++)
                {
                    for (j = 0; j < 3; j++)
                        l_636[i][j] = 4294967287UL;
                }
                (*l_516) = (void*)0;
                l_636[3][2]++;
            }
            (*l_516) = &l_576;
            (*l_516) = func_48(&p_31, ((safe_lshift_func_int8_t_s_s(0L, (((l_572 ^ l_572) != (*p_30)) != 0x51L))) ^ (safe_add_func_int64_t_s_s((safe_lshift_func_int8_t_s_s((safe_lshift_func_uint16_t_u_u((**l_516), (safe_mul_func_int16_t_s_s(((((((safe_div_func_int64_t_s_s(p_1589->g_300, ((--(*l_664)) | (safe_add_func_uint64_t_u_u(((((*p_1589->g_414) = (((*l_674) = ((*l_671) = (l_670[2] = l_669))) == (void*)0)) >= 9UL) != l_676), 1UL))))) , (**l_516)) , l_561) >= (**l_516)) | l_572) > 0x0EL), 0L)))), 2)), l_572))), p_1589);
            for (p_1589->g_436 = (-18); (p_1589->g_436 >= 12); p_1589->g_436++)
            { /* block id: 324 */
                int8_t l_715 = (-1L);
                uint64_t *l_716 = &l_483;
                uint32_t l_727 = 4UL;
                int32_t l_750 = 0L;
                if ((*p_1589->g_491))
                    break;
                for (p_1589->g_11 = 0; (p_1589->g_11 != (-23)); p_1589->g_11 = safe_sub_func_uint8_t_u_u(p_1589->g_11, 5))
                { /* block id: 328 */
                    uint32_t l_683 = 0x0496CFCDL;
                    uint16_t ****l_713 = (void*)0;
                    int32_t l_724 = (-9L);
                    l_683++;
                    if ((*p_30))
                    { /* block id: 330 */
                        int32_t *l_688[5][3] = {{&p_1589->g_7,&p_1589->g_7,&p_1589->g_7},{&p_1589->g_7,&p_1589->g_7,&p_1589->g_7},{&p_1589->g_7,&p_1589->g_7,&p_1589->g_7},{&p_1589->g_7,&p_1589->g_7,&p_1589->g_7},{&p_1589->g_7,&p_1589->g_7,&p_1589->g_7}};
                        int i, j;
                        (*p_1589->g_686) = ((*l_516) = p_32);
                        (*p_1589->g_686) = (void*)0;
                        return p_30;
                    }
                    else
                    { /* block id: 335 */
                        uint32_t ****l_693 = &l_671;
                        uint32_t *****l_694 = &l_693;
                        int32_t l_699[8][3] = {{1L,0L,1L},{1L,0L,1L},{1L,0L,1L},{1L,0L,1L},{1L,0L,1L},{1L,0L,1L},{1L,0L,1L},{1L,0L,1L}};
                        int8_t ***l_707 = (void*)0;
                        int8_t ****l_706 = &l_707;
                        int8_t **l_710 = &p_1589->g_414;
                        int8_t ***l_709 = &l_710;
                        int8_t ****l_708 = &l_709;
                        uint16_t *****l_714 = &l_713;
                        uint32_t ****l_717 = &l_671;
                        uint32_t *****l_721 = &l_717;
                        int i, j;
                        l_572 ^= (0L || ((p_1589->g_7 != ((**l_528) = ((safe_lshift_func_uint16_t_u_s(((safe_mod_func_int32_t_s_s(((((*l_694) = l_693) != ((*l_721) = (p_1589->g_718 = ((safe_rshift_func_int8_t_s_u((((0x656EL && ((safe_lshift_func_uint8_t_u_s((l_699[4][1] && (safe_lshift_func_int8_t_s_u((safe_mul_func_int8_t_s_s((((((*l_664)++) | (((*l_708) = ((*l_706) = (void*)0)) != &p_1589->g_413[0])) < ((((((safe_add_func_uint32_t_u_u(((&p_1589->g_627 == ((*l_714) = l_713)) , (**l_516)), l_561)) , l_577[3][1][2]) & 4294967292UL) , l_681[2][0]) < l_715) <= p_1589->g_3[2][3])) > (*p_32)), 255UL)), 7))), 2)) , (-1L))) , (void*)0) != l_716), l_699[4][1])) , l_717)))) , (*p_30)), 4294967286UL)) < (**l_516)), l_699[4][1])) & 0x7B223C9CL))) && 9UL));
                        l_724 = (safe_sub_func_int32_t_s_s((*p_31), (l_699[7][0] < l_715)));
                    }
                    for (l_634 = 0; (l_634 < (-7)); l_634--)
                    { /* block id: 349 */
                        int32_t *l_730[8][8] = {{&p_1589->g_3[2][3],(void*)0,&l_519,(void*)0,&p_1589->g_3[2][3],&p_1589->g_3[2][3],(void*)0,&l_519},{&p_1589->g_3[2][3],(void*)0,&l_519,(void*)0,&p_1589->g_3[2][3],&p_1589->g_3[2][3],(void*)0,&l_519},{&p_1589->g_3[2][3],(void*)0,&l_519,(void*)0,&p_1589->g_3[2][3],&p_1589->g_3[2][3],(void*)0,&l_519},{&p_1589->g_3[2][3],(void*)0,&l_519,(void*)0,&p_1589->g_3[2][3],&p_1589->g_3[2][3],(void*)0,&l_519},{&p_1589->g_3[2][3],(void*)0,&l_519,(void*)0,&p_1589->g_3[2][3],&p_1589->g_3[2][3],(void*)0,&l_519},{&p_1589->g_3[2][3],(void*)0,&l_519,(void*)0,&p_1589->g_3[2][3],&p_1589->g_3[2][3],(void*)0,&l_519},{&p_1589->g_3[2][3],(void*)0,&l_519,(void*)0,&p_1589->g_3[2][3],&p_1589->g_3[2][3],(void*)0,&l_519},{&p_1589->g_3[2][3],(void*)0,&l_519,(void*)0,&p_1589->g_3[2][3],&p_1589->g_3[2][3],(void*)0,&l_519}};
                        int i, j;
                        ++l_727;
                        (*p_1589->g_686) = l_730[2][1];
                    }
                }
                for (l_519 = (-26); (l_519 >= 5); l_519 = safe_add_func_uint8_t_u_u(l_519, 5))
                { /* block id: 356 */
                    uint8_t l_736 = 248UL;
                    int32_t *l_737 = &p_1589->g_3[0][4];
                    uint16_t ****l_749[7][5][3] = {{{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]},{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]},{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]},{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]},{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]}},{{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]},{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]},{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]},{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]},{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]}},{{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]},{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]},{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]},{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]},{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]}},{{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]},{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]},{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]},{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]},{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]}},{{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]},{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]},{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]},{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]},{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]}},{{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]},{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]},{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]},{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]},{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]}},{{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]},{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]},{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]},{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]},{&p_1589->g_747[5],&l_514[3][0],&p_1589->g_747[4]}}};
                    int i, j, k;
                    for (l_513 = 27; (l_513 >= 21); l_513 = safe_sub_func_uint16_t_u_u(l_513, 4))
                    { /* block id: 359 */
                        l_735 = (*l_516);
                        l_736 &= (l_635 = (-3L));
                        if ((*p_1589->g_54))
                            continue;
                    }
                    l_735 = l_737;
                    l_737 = p_30;
                }
                for (l_727 = 0; (l_727 <= 59); l_727++)
                { /* block id: 374 */
                    (*p_1589->g_491) = (-1L);
                    if ((*p_31))
                        continue;
                    if (l_715)
                        continue;
                }
            }
        }
        ++l_757;
    }
    return p_32;
}


/* ------------------------------------------ */
/* 
 * reads : p_1589->g_3 p_1589->g_53 p_1589->g_2 p_1589->g_12 p_1589->g_54 p_1589->g_93 p_1589->g_11 p_1589->g_123 p_1589->g_127 p_1589->g_131 p_1589->g_7 p_1589->g_134 p_1589->g_151 p_1589->g_174 p_1589->g_6 p_1589->g_226
 * writes: p_1589->g_93 p_1589->g_11 p_1589->g_123 p_1589->g_127 p_1589->g_134 p_1589->g_54 p_1589->g_174 p_1589->g_12 p_1589->g_205 p_1589->g_131 p_1589->g_337
 */
int32_t * func_34(int8_t  p_35, struct S0 * p_1589)
{ /* block id: 17 */
    uint32_t l_38 = 0xD97867A7L;
    uint16_t l_227 = 0UL;
    int32_t **l_233 = &p_1589->g_54;
    int32_t *l_241[5];
    int64_t *l_248 = &p_1589->g_127;
    uint32_t *l_263 = &p_1589->g_131;
    uint32_t **l_262 = &l_263;
    uint16_t *l_334 = (void*)0;
    uint16_t **l_333[8][4][8] = {{{(void*)0,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334},{(void*)0,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334},{(void*)0,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334},{(void*)0,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334}},{{(void*)0,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334},{(void*)0,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334},{(void*)0,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334},{(void*)0,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334}},{{(void*)0,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334},{(void*)0,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334},{(void*)0,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334},{(void*)0,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334}},{{(void*)0,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334},{(void*)0,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334},{(void*)0,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334},{(void*)0,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334}},{{(void*)0,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334},{(void*)0,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334},{(void*)0,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334},{(void*)0,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334}},{{(void*)0,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334},{(void*)0,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334},{(void*)0,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334},{(void*)0,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334}},{{(void*)0,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334},{(void*)0,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334},{(void*)0,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334},{(void*)0,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334}},{{(void*)0,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334},{(void*)0,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334},{(void*)0,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334},{(void*)0,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334,&l_334}}};
    uint32_t l_378 = 0UL;
    int8_t *l_394 = &p_1589->g_205[1][1];
    int8_t **l_393 = &l_394;
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_241[i] = &p_1589->g_11;
    if (func_36(l_38, p_1589))
    { /* block id: 52 */
        int32_t *l_180 = &p_1589->g_3[2][3];
        uint32_t l_273 = 4294967290UL;
        uint32_t ***l_282[10];
        uint32_t l_326 = 0x3080555AL;
        int32_t l_327 = (-1L);
        int32_t l_362 = (-1L);
        int i;
        for (i = 0; i < 10; i++)
            l_282[i] = &l_262;
lbl_249:
        if ((+9L))
        { /* block id: 53 */
            uint32_t l_182[10][2] = {{0xE0DFFA39L,0xAD3B0C1BL},{0xE0DFFA39L,0xAD3B0C1BL},{0xE0DFFA39L,0xAD3B0C1BL},{0xE0DFFA39L,0xAD3B0C1BL},{0xE0DFFA39L,0xAD3B0C1BL},{0xE0DFFA39L,0xAD3B0C1BL},{0xE0DFFA39L,0xAD3B0C1BL},{0xE0DFFA39L,0xAD3B0C1BL},{0xE0DFFA39L,0xAD3B0C1BL},{0xE0DFFA39L,0xAD3B0C1BL}};
            int32_t *l_214 = &p_1589->g_174[1][1];
            uint32_t *l_220 = (void*)0;
            uint32_t **l_219[1];
            int i, j;
            for (i = 0; i < 1; i++)
                l_219[i] = &l_220;
            for (l_38 = 0; (l_38 == 60); l_38 = safe_add_func_int32_t_s_s(l_38, 9))
            { /* block id: 56 */
                uint16_t l_197 = 0x06FBL;
                int32_t l_209 = (-1L);
                for (p_35 = 0; (p_35 != (-30)); p_35 = safe_sub_func_uint32_t_u_u(p_35, 1))
                { /* block id: 59 */
                    int32_t l_194[10] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
                    int32_t *l_212 = &l_209;
                    int32_t **l_213[6][5][2] = {{{&l_212,&l_212},{&l_212,&l_212},{&l_212,&l_212},{&l_212,&l_212},{&l_212,&l_212}},{{&l_212,&l_212},{&l_212,&l_212},{&l_212,&l_212},{&l_212,&l_212},{&l_212,&l_212}},{{&l_212,&l_212},{&l_212,&l_212},{&l_212,&l_212},{&l_212,&l_212},{&l_212,&l_212}},{{&l_212,&l_212},{&l_212,&l_212},{&l_212,&l_212},{&l_212,&l_212},{&l_212,&l_212}},{{&l_212,&l_212},{&l_212,&l_212},{&l_212,&l_212},{&l_212,&l_212},{&l_212,&l_212}},{{&l_212,&l_212},{&l_212,&l_212},{&l_212,&l_212},{&l_212,&l_212},{&l_212,&l_212}}};
                    int i, j, k;
                    for (p_1589->g_12 = 0; (p_1589->g_12 <= 1); p_1589->g_12 += 1)
                    { /* block id: 62 */
                        int32_t **l_181 = &l_180;
                        int8_t *l_204 = &p_1589->g_205[1][1];
                        uint32_t *l_206 = &p_1589->g_131;
                        uint32_t l_207 = 4294967287UL;
                        int16_t *l_208 = &p_1589->g_134;
                        int32_t *l_210 = &p_1589->g_174[1][3];
                        int32_t *l_211 = &p_1589->g_11;
                        int i, j;
                        (*l_181) = l_180;
                        l_182[6][0]++;
                        (*l_211) = (((safe_rshift_func_int16_t_s_s(((((safe_mod_func_int64_t_s_s((**l_181), (((((*l_210) = (l_209 = ((*p_1589->g_54) <= (0x2DA4L >= ((p_35 & ((*l_208) = (safe_div_func_uint16_t_u_u((safe_unary_minus_func_uint64_t_u((((((l_194[1] || ((safe_mul_func_uint8_t_u_u(l_197, (0L || 18446744073709551615UL))) <= ((*l_206) &= (safe_mul_func_uint16_t_u_u(((safe_add_func_uint64_t_u_u((safe_mul_func_int8_t_s_s(((*l_204) = p_1589->g_127), p_35)), l_197)) && p_35), 1UL))))) > p_35) == p_35) , (-10L)) , p_35))), l_207)))) >= 0xA459L))))) > p_35) , l_197) , l_209))) ^ p_1589->g_6) <= p_1589->g_127) , 0x00EFL), 0)) > p_35) & FAKE_DIVERGE(p_1589->group_2_offset, get_group_id(2), 10));
                        if (l_197)
                            goto lbl_249;
                    }
                    l_214 = l_212;
                }
            }
        }
        else
        { /* block id: 99 */
            uint8_t l_240 = 0xC0L;
            l_227 = (**p_1589->g_226);
            for (l_227 = (-13); (l_227 != 40); ++l_227)
            { /* block id: 103 */
                int32_t *l_230 = &p_1589->g_174[1][1];
                int32_t *l_231 = (void*)0;
                int32_t *l_232 = &p_1589->g_11;
                int16_t *l_245 = &p_1589->g_134;
                (*l_232) |= ((*l_230) |= (p_1589->g_6 , l_227));
                if (p_35)
                    break;
                (*p_1589->g_226) = l_231;
                (*l_233) = l_180;
            }
        }
        for (p_1589->g_12 = 23; (p_1589->g_12 > 55); ++p_1589->g_12)
        { /* block id: 116 */
            uint32_t l_270 = 0x5E65BEFBL;
            for (l_38 = (-6); (l_38 != 23); l_38++)
            { /* block id: 119 */
                int8_t *l_266[9][9][3] = {{{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]}},{{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]}},{{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]}},{{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]}},{{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]}},{{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]}},{{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]}},{{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]}},{{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]},{(void*)0,&p_1589->g_205[1][1],&p_1589->g_205[1][2]}}};
                int32_t l_267 = 0x6D0E048CL;
                int32_t l_271 = 0x3E857C81L;
                int32_t l_272 = 0L;
                int i, j, k;
                l_272 |= (((safe_rshift_func_int8_t_s_u((((((safe_rshift_func_uint16_t_u_s((5L == p_35), ((safe_add_func_int32_t_s_s((((safe_mod_func_uint16_t_u_u(65531UL, ((0xB098L > (l_262 == &l_263)) | (safe_add_func_int8_t_s_s((l_267 = ((*l_180) || p_35)), (((safe_add_func_int16_t_s_s((l_270 <= p_35), p_35)) , p_1589->g_131) & 0x08A6FAE5F79DBF3EL)))))) >= 0xACDE27D56CCA4D00L) >= p_1589->g_134), p_35)) , p_35))) != p_35) == p_35) & l_271) && p_1589->g_11), p_35)) , p_1589->g_131) && 0x4C0637CDB33FEF1AL);
                return l_180;
            }
        }
        l_273 &= ((void*)0 == (*l_233));
        for (l_227 = 0; (l_227 != 14); ++l_227)
        { /* block id: 128 */
            uint32_t ***l_281 = &l_262;
            uint32_t ****l_280 = &l_281;
            int32_t l_285 = 8L;
            uint16_t *l_288 = (void*)0;
            uint16_t *l_289 = &p_1589->g_12;
            int32_t l_299 = 1L;
            uint8_t *l_338 = &p_1589->g_93[0];
            uint64_t l_372 = 18446744073709551615UL;
            int8_t **l_412[6][2] = {{&l_394,&l_394},{&l_394,&l_394},{&l_394,&l_394},{&l_394,&l_394},{&l_394,&l_394},{&l_394,&l_394}};
            int i, j;
            (1 + 1);
        }
    }
    else
    { /* block id: 198 */
        int16_t l_434 = 0L;
        int32_t l_435 = 1L;
        int32_t l_439 = 5L;
        int32_t l_440 = (-4L);
        int32_t l_441 = 0x3EB76F20L;
        int32_t l_443 = (-1L);
        for (p_1589->g_127 = 3; (p_1589->g_127 == 3); ++p_1589->g_127)
        { /* block id: 201 */
            int32_t l_437[3][1][4] = {{{0x6CCF4F49L,0x6CCF4F49L,0x6CCF4F49L,0x6CCF4F49L}},{{0x6CCF4F49L,0x6CCF4F49L,0x6CCF4F49L,0x6CCF4F49L}},{{0x6CCF4F49L,0x6CCF4F49L,0x6CCF4F49L,0x6CCF4F49L}}};
            int32_t l_438 = 0x0B23FD4FL;
            int32_t l_442 = 0x75AF13EEL;
            uint16_t l_444[1][3][1];
            int i, j, k;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 3; j++)
                {
                    for (k = 0; k < 1; k++)
                        l_444[i][j][k] = 1UL;
                }
            }
            l_444[0][2][0]++;
            return (*l_233);
        }
        return (*p_1589->g_226);
    }
    for (l_227 = (-22); (l_227 == 26); ++l_227)
    { /* block id: 209 */
        uint64_t l_454[6][3] = {{1UL,18446744073709551615UL,0xB4FC96F67719E055L},{1UL,18446744073709551615UL,0xB4FC96F67719E055L},{1UL,18446744073709551615UL,0xB4FC96F67719E055L},{1UL,18446744073709551615UL,0xB4FC96F67719E055L},{1UL,18446744073709551615UL,0xB4FC96F67719E055L},{1UL,18446744073709551615UL,0xB4FC96F67719E055L}};
        int i, j;
        if (p_35)
            break;
        for (p_1589->g_127 = 0; (p_1589->g_127 >= (-18)); p_1589->g_127 = safe_sub_func_uint16_t_u_u(p_1589->g_127, 9))
        { /* block id: 213 */
            uint8_t *l_451 = (void*)0;
            uint8_t **l_452 = (void*)0;
            uint8_t **l_453 = &p_1589->g_337[7];
            int32_t *l_455[1];
            int i;
            for (i = 0; i < 1; i++)
                l_455[i] = &p_1589->g_11;
            l_454[4][0] = (p_35 != (((*l_453) = l_451) != &p_1589->g_93[0]));
            l_455[0] = (*l_233);
        }
    }
    return (*l_233);
}


/* ------------------------------------------ */
/* 
 * reads : p_1589->g_3 p_1589->g_53 p_1589->g_2 p_1589->g_12 p_1589->g_54 p_1589->g_93 p_1589->g_11 p_1589->g_123 p_1589->g_127 p_1589->g_131 p_1589->g_7 p_1589->g_134 p_1589->g_151 p_1589->g_174
 * writes: p_1589->g_93 p_1589->g_11 p_1589->g_123 p_1589->g_127 p_1589->g_134 p_1589->g_54 p_1589->g_174
 */
int32_t  func_36(uint32_t  p_37, struct S0 * p_1589)
{ /* block id: 18 */
    int32_t *l_39 = (void*)0;
    int32_t l_40 = 0x19FA9EF8L;
    int32_t **l_47 = &l_39;
    uint8_t *l_92[3][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int i, j;
    l_40 |= 0x626B5CFDL;
    (*l_47) = func_41(((((((*l_47) = (void*)0) == (GROUP_DIVERGE(2, 1) , func_48(l_47, (p_1589->g_93[0] = ((p_1589->g_3[2][3] <= (func_51(p_1589->g_53[1], p_1589) , (((void*)0 == &l_40) < (((safe_rshift_func_uint16_t_u_u(((safe_rshift_func_uint8_t_u_u(((safe_mul_func_int16_t_s_s((safe_lshift_func_uint8_t_u_s(p_37, (0L != p_37))), p_1589->g_3[4][0])) , 1UL), p_1589->g_2)) , p_1589->g_3[4][3]), 0)) != p_1589->g_12) , FAKE_DIVERGE(p_1589->local_0_offset, get_local_id(0), 10))))) ^ 0x2CDC9FF6L)), p_1589))) < 5UL) == p_1589->g_3[2][3]) || p_1589->g_134), &l_40, &l_40, p_37, &l_40, p_1589);
    return p_37;
}


/* ------------------------------------------ */
/* 
 * reads : p_1589->g_3 p_1589->g_54 p_1589->g_151 p_1589->g_12 p_1589->g_123 p_1589->g_131 p_1589->g_127 p_1589->g_174 p_1589->g_134 p_1589->g_93 p_1589->g_2 p_1589->g_11 p_1589->g_7 p_1589->g_436
 * writes: p_1589->g_54 p_1589->g_127 p_1589->g_11 p_1589->g_174 p_1589->g_123 p_1589->g_134
 */
int32_t * func_41(uint32_t  p_42, int32_t * p_43, int32_t * p_44, int32_t  p_45, int32_t * p_46, struct S0 * p_1589)
{ /* block id: 39 */
    int32_t **l_140 = &p_1589->g_54;
    int16_t *l_145[1][9];
    int32_t l_150 = (-10L);
    int64_t *l_152[9][10] = {{&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127},{&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127},{&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127},{&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127},{&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127},{&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127},{&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127},{&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127},{&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127,&p_1589->g_127}};
    int64_t l_171 = 0L;
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 9; j++)
            l_145[i][j] = &p_1589->g_134;
    }
lbl_175:
    (*l_140) = p_43;
    if ((0x86L > (((FAKE_DIVERGE(p_1589->local_2_offset, get_local_id(2), 10) || ((safe_div_func_uint32_t_u_u(((safe_div_func_int8_t_s_s(((void*)0 != l_145[0][4]), (+p_1589->g_3[4][0]))) || ((**l_140) ^ (p_1589->g_127 = ((*p_1589->g_54) ^ (safe_sub_func_int32_t_s_s((**l_140), ((((safe_sub_func_int8_t_s_s((l_150 , p_45), 0x93L)) ^ p_1589->g_151) == 9L) & p_42))))))), (**l_140))) | p_1589->g_3[4][4])) & 4294967295UL) || 0x7036850D544D09D3L)))
    { /* block id: 42 */
        uint64_t l_155 = 18446744073709551610UL;
        int16_t *l_158 = (void*)0;
        int32_t *l_172 = &p_1589->g_11;
        int32_t *l_173 = &p_1589->g_174[1][3];
        (*l_173) |= ((((safe_mul_func_int16_t_s_s(((p_42 | l_155) == ((safe_lshift_func_uint16_t_u_s((((+p_45) , l_158) != l_158), 12)) , ((safe_rshift_func_int8_t_s_s(p_1589->g_3[2][3], 7)) < (((((safe_sub_func_int32_t_s_s((*p_1589->g_54), (safe_rshift_func_uint16_t_u_u((safe_add_func_uint32_t_u_u(l_155, (((*l_172) = (safe_rshift_func_int16_t_s_u(((((safe_div_func_uint8_t_u_u(p_1589->g_12, 1L)) != p_1589->g_151) <= l_171) || p_45), p_1589->g_12))) >= p_1589->g_123))), p_1589->g_131)))) <= p_45) , 1L) != p_1589->g_127) | GROUP_DIVERGE(0, 1))))), l_155)) , (*p_1589->g_54)) == FAKE_DIVERGE(p_1589->group_2_offset, get_group_id(2), 10)) , (*p_46));
    }
    else
    { /* block id: 45 */
        if (p_1589->g_123)
            goto lbl_175;
    }
    (*l_140) = func_48(&p_1589->g_54, p_1589->g_134, p_1589);
    return (*l_140);
}


/* ------------------------------------------ */
/* 
 * reads : p_1589->g_54 p_1589->g_12 p_1589->g_93 p_1589->g_2 p_1589->g_11 p_1589->g_123 p_1589->g_127 p_1589->g_131 p_1589->g_3 p_1589->g_7 l_40 l_1217
 * writes: p_1589->g_11 p_1589->g_123 p_1589->g_127 p_1589->g_134 l_40 l_1217
 */
int32_t * func_48(int32_t ** p_49, uint8_t  p_50, struct S0 * p_1589)
{ /* block id: 25 */
    int32_t **l_94 = (void*)0;
    int32_t **l_95[10];
    int32_t *l_96 = &p_1589->g_11;
    int32_t l_97 = 1L;
    uint32_t l_98[4][3][6] = {{{4UL,0x3E796DA1L,4294967295UL,0x1C4852B1L,0x2F2FD220L,1UL},{4UL,0x3E796DA1L,4294967295UL,0x1C4852B1L,0x2F2FD220L,1UL},{4UL,0x3E796DA1L,4294967295UL,0x1C4852B1L,0x2F2FD220L,1UL}},{{4UL,0x3E796DA1L,4294967295UL,0x1C4852B1L,0x2F2FD220L,1UL},{4UL,0x3E796DA1L,4294967295UL,0x1C4852B1L,0x2F2FD220L,1UL},{4UL,0x3E796DA1L,4294967295UL,0x1C4852B1L,0x2F2FD220L,1UL}},{{4UL,0x3E796DA1L,4294967295UL,0x1C4852B1L,0x2F2FD220L,1UL},{4UL,0x3E796DA1L,4294967295UL,0x1C4852B1L,0x2F2FD220L,1UL},{4UL,0x3E796DA1L,4294967295UL,0x1C4852B1L,0x2F2FD220L,1UL}},{{4UL,0x3E796DA1L,4294967295UL,0x1C4852B1L,0x2F2FD220L,1UL},{4UL,0x3E796DA1L,4294967295UL,0x1C4852B1L,0x2F2FD220L,1UL},{4UL,0x3E796DA1L,4294967295UL,0x1C4852B1L,0x2F2FD220L,1UL}}};
    uint32_t l_99 = 4294967289UL;
    int32_t *l_111 = &p_1589->g_3[3][3];
    int32_t *l_112 = &p_1589->g_11;
    int32_t *l_113 = &l_97;
    uint8_t *l_122 = &p_1589->g_123;
    int64_t *l_126 = &p_1589->g_127;
    uint32_t l_132 = 1UL;
    int16_t *l_133 = &p_1589->g_134;
    int32_t *l_135 = &l_97;
    int32_t *l_136 = &p_1589->g_3[0][0];
    int32_t *l_137 = &p_1589->g_7;
    int32_t *l_138 = &p_1589->g_11;
    int32_t *l_139[6] = {&p_1589->g_7,&p_1589->g_7,&p_1589->g_7,&p_1589->g_7,&p_1589->g_7,&p_1589->g_7};
    int i, j, k;
    for (i = 0; i < 10; i++)
        l_95[i] = &p_1589->g_54;
    l_96 = (void*)0;
    l_99 = (l_98[3][2][3] &= ((*p_1589->g_54) = l_97));
    (*l_135) = ((((((((safe_div_func_uint16_t_u_u((p_50 | ((*l_133) = (((~(((safe_lshift_func_uint8_t_u_s((((p_1589->g_12 > ((((safe_mul_func_uint8_t_u_u((0UL | p_1589->g_93[0]), (safe_mod_func_int32_t_s_s((l_132 |= (safe_sub_func_uint8_t_u_u(((safe_unary_minus_func_int32_t_s((((l_112 = l_111) == (l_113 = (void*)0)) >= (((safe_div_func_int16_t_s_s(p_1589->g_2, (safe_div_func_uint16_t_u_u(((safe_sub_func_int64_t_s_s(((*l_126) &= (safe_mul_func_int8_t_s_s(p_1589->g_11, (--(*l_122))))), ((safe_add_func_uint64_t_u_u(GROUP_DIVERGE(1, 1), ((safe_unary_minus_func_uint32_t_u((0xFDE04AB7L || p_50))) , GROUP_DIVERGE(1, 1)))) || p_1589->g_131))) == (*p_1589->g_54)), 65526UL)))) , &p_1589->g_93[0]) != (void*)0)))) != (*p_1589->g_54)), 0x03L))), GROUP_DIVERGE(2, 1))))) ^ p_1589->g_3[2][3]) >= p_1589->g_93[0]) , p_50)) >= 8L) && p_50), p_50)) >= p_50) , 0xF1CBD15FE66233F1L)) && p_50) >= p_1589->g_3[2][3]))), 0x0ED0L)) != p_1589->g_7) , l_135) == l_136) <= (*l_136)) && (*l_136)) != p_1589->g_3[0][4]) <= p_1589->g_12);
    l_138 = l_137;
    return l_139[2];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint32_t  func_51(int32_t ** p_52, struct S0 * p_1589)
{ /* block id: 21 */
    int32_t *l_55 = &p_1589->g_11;
    int32_t *l_56 = &p_1589->g_11;
    int32_t *l_57 = (void*)0;
    int32_t *l_58 = &p_1589->g_11;
    int32_t *l_59 = &p_1589->g_11;
    int32_t *l_60 = (void*)0;
    int32_t *l_61 = &p_1589->g_11;
    int32_t *l_62 = &p_1589->g_11;
    int32_t *l_63 = &p_1589->g_11;
    int32_t *l_64 = (void*)0;
    int32_t *l_65 = &p_1589->g_11;
    int32_t l_66 = 1L;
    int32_t *l_67 = &l_66;
    int32_t *l_68 = &p_1589->g_11;
    int32_t *l_69 = (void*)0;
    int32_t *l_70 = (void*)0;
    int32_t *l_71 = (void*)0;
    int32_t *l_72 = &l_66;
    int32_t *l_73 = &l_66;
    int32_t *l_74 = &p_1589->g_11;
    int32_t *l_75 = &p_1589->g_11;
    int32_t *l_76 = &l_66;
    int32_t *l_77 = (void*)0;
    int32_t *l_78[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t l_79 = 0x54D44114L;
    uint32_t l_80 = 0x987EDF5AL;
    int8_t l_83 = (-6L);
    int i;
    ++l_80;
    return l_83;
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S0 c_1590;
    struct S0* p_1589 = &c_1590;
    struct S0 c_1591 = {
        0x60F57A7CL, // p_1589->g_2
        {{4L,(-4L),0x25C62E08L,2L,0x25C62E08L,(-4L),4L},{4L,(-4L),0x25C62E08L,2L,0x25C62E08L,(-4L),4L},{4L,(-4L),0x25C62E08L,2L,0x25C62E08L,(-4L),4L},{4L,(-4L),0x25C62E08L,2L,0x25C62E08L,(-4L),4L},{4L,(-4L),0x25C62E08L,2L,0x25C62E08L,(-4L),4L},{4L,(-4L),0x25C62E08L,2L,0x25C62E08L,(-4L),4L}}, // p_1589->g_3
        (-1L), // p_1589->g_6
        (-1L), // p_1589->g_7
        1L, // p_1589->g_11
        0x78F4L, // p_1589->g_12
        &p_1589->g_11, // p_1589->g_54
        {&p_1589->g_54,&p_1589->g_54}, // p_1589->g_53
        {0xF9L}, // p_1589->g_93
        0x13L, // p_1589->g_123
        (-10L), // p_1589->g_127
        4294967295UL, // p_1589->g_131
        0x7418L, // p_1589->g_134
        0x5CBA6E25L, // p_1589->g_151
        {{0x4CDCF2E0L,0x4CDCF2E0L,0x4CDCF2E0L,0x4CDCF2E0L},{0x4CDCF2E0L,0x4CDCF2E0L,0x4CDCF2E0L,0x4CDCF2E0L}}, // p_1589->g_174
        {{(-1L),(-9L),(-1L),(-1L),(-9L)},{(-1L),(-9L),(-1L),(-1L),(-9L)}}, // p_1589->g_205
        &p_1589->g_54, // p_1589->g_226
        0x78FE824BL, // p_1589->g_300
        (void*)0, // p_1589->g_322
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1589->g_337
        (void*)0, // p_1589->g_402
        &p_1589->g_12, // p_1589->g_407
        &p_1589->g_12, // p_1589->g_409
        &p_1589->g_205[0][2], // p_1589->g_414
        {&p_1589->g_414,&p_1589->g_414,&p_1589->g_414,&p_1589->g_414,&p_1589->g_414,&p_1589->g_414,&p_1589->g_414}, // p_1589->g_413
        3L, // p_1589->g_436
        1UL, // p_1589->g_479
        0x2EDFL, // p_1589->g_485
        1L, // p_1589->g_487
        &p_1589->g_11, // p_1589->g_491
        (void*)0, // p_1589->g_494
        {&p_1589->g_54,&p_1589->g_54,&p_1589->g_54,&p_1589->g_54,&p_1589->g_54,&p_1589->g_54,&p_1589->g_54,&p_1589->g_54,&p_1589->g_54}, // p_1589->g_495
        {{0UL,0x47AA6B28L,5UL,0x47AA6B28L,0UL,0UL,0x47AA6B28L,5UL,0x47AA6B28L,0UL},{0UL,0x47AA6B28L,5UL,0x47AA6B28L,0UL,0UL,0x47AA6B28L,5UL,0x47AA6B28L,0UL},{0UL,0x47AA6B28L,5UL,0x47AA6B28L,0UL,0UL,0x47AA6B28L,5UL,0x47AA6B28L,0UL},{0UL,0x47AA6B28L,5UL,0x47AA6B28L,0UL,0UL,0x47AA6B28L,5UL,0x47AA6B28L,0UL},{0UL,0x47AA6B28L,5UL,0x47AA6B28L,0UL,0UL,0x47AA6B28L,5UL,0x47AA6B28L,0UL},{0UL,0x47AA6B28L,5UL,0x47AA6B28L,0UL,0UL,0x47AA6B28L,5UL,0x47AA6B28L,0UL},{0UL,0x47AA6B28L,5UL,0x47AA6B28L,0UL,0UL,0x47AA6B28L,5UL,0x47AA6B28L,0UL},{0UL,0x47AA6B28L,5UL,0x47AA6B28L,0UL,0UL,0x47AA6B28L,5UL,0x47AA6B28L,0UL},{0UL,0x47AA6B28L,5UL,0x47AA6B28L,0UL,0UL,0x47AA6B28L,5UL,0x47AA6B28L,0UL},{0UL,0x47AA6B28L,5UL,0x47AA6B28L,0UL,0UL,0x47AA6B28L,5UL,0x47AA6B28L,0UL}}, // p_1589->g_531
        &p_1589->g_174[1][3], // p_1589->g_579
        {{{&p_1589->g_407,(void*)0}},{{&p_1589->g_407,(void*)0}},{{&p_1589->g_407,(void*)0}}}, // p_1589->g_628
        &p_1589->g_628[2][0][0], // p_1589->g_627
        (-9L), // p_1589->g_631
        &p_1589->g_3[2][3], // p_1589->g_687
        &p_1589->g_687, // p_1589->g_686
        &p_1589->g_402, // p_1589->g_720
        &p_1589->g_720, // p_1589->g_719
        &p_1589->g_719, // p_1589->g_718
        {{{&p_1589->g_409,&p_1589->g_409,&p_1589->g_407,&p_1589->g_407,&p_1589->g_409,&p_1589->g_407,&p_1589->g_407,&p_1589->g_409,&p_1589->g_409,&p_1589->g_407},{&p_1589->g_409,&p_1589->g_409,&p_1589->g_407,&p_1589->g_407,&p_1589->g_409,&p_1589->g_407,&p_1589->g_407,&p_1589->g_409,&p_1589->g_409,&p_1589->g_407},{&p_1589->g_409,&p_1589->g_409,&p_1589->g_407,&p_1589->g_407,&p_1589->g_409,&p_1589->g_407,&p_1589->g_407,&p_1589->g_409,&p_1589->g_409,&p_1589->g_407},{&p_1589->g_409,&p_1589->g_409,&p_1589->g_407,&p_1589->g_407,&p_1589->g_409,&p_1589->g_407,&p_1589->g_407,&p_1589->g_409,&p_1589->g_409,&p_1589->g_407},{&p_1589->g_409,&p_1589->g_409,&p_1589->g_407,&p_1589->g_407,&p_1589->g_409,&p_1589->g_407,&p_1589->g_407,&p_1589->g_409,&p_1589->g_409,&p_1589->g_407},{&p_1589->g_409,&p_1589->g_409,&p_1589->g_407,&p_1589->g_407,&p_1589->g_409,&p_1589->g_407,&p_1589->g_407,&p_1589->g_409,&p_1589->g_409,&p_1589->g_407},{&p_1589->g_409,&p_1589->g_409,&p_1589->g_407,&p_1589->g_407,&p_1589->g_409,&p_1589->g_407,&p_1589->g_407,&p_1589->g_409,&p_1589->g_409,&p_1589->g_407},{&p_1589->g_409,&p_1589->g_409,&p_1589->g_407,&p_1589->g_407,&p_1589->g_409,&p_1589->g_407,&p_1589->g_407,&p_1589->g_409,&p_1589->g_409,&p_1589->g_407}},{{&p_1589->g_409,&p_1589->g_409,&p_1589->g_407,&p_1589->g_407,&p_1589->g_409,&p_1589->g_407,&p_1589->g_407,&p_1589->g_409,&p_1589->g_409,&p_1589->g_407},{&p_1589->g_409,&p_1589->g_409,&p_1589->g_407,&p_1589->g_407,&p_1589->g_409,&p_1589->g_407,&p_1589->g_407,&p_1589->g_409,&p_1589->g_409,&p_1589->g_407},{&p_1589->g_409,&p_1589->g_409,&p_1589->g_407,&p_1589->g_407,&p_1589->g_409,&p_1589->g_407,&p_1589->g_407,&p_1589->g_409,&p_1589->g_409,&p_1589->g_407},{&p_1589->g_409,&p_1589->g_409,&p_1589->g_407,&p_1589->g_407,&p_1589->g_409,&p_1589->g_407,&p_1589->g_407,&p_1589->g_409,&p_1589->g_409,&p_1589->g_407},{&p_1589->g_409,&p_1589->g_409,&p_1589->g_407,&p_1589->g_407,&p_1589->g_409,&p_1589->g_407,&p_1589->g_407,&p_1589->g_409,&p_1589->g_409,&p_1589->g_407},{&p_1589->g_409,&p_1589->g_409,&p_1589->g_407,&p_1589->g_407,&p_1589->g_409,&p_1589->g_407,&p_1589->g_407,&p_1589->g_409,&p_1589->g_409,&p_1589->g_407},{&p_1589->g_409,&p_1589->g_409,&p_1589->g_407,&p_1589->g_407,&p_1589->g_409,&p_1589->g_407,&p_1589->g_407,&p_1589->g_409,&p_1589->g_409,&p_1589->g_407},{&p_1589->g_409,&p_1589->g_409,&p_1589->g_407,&p_1589->g_407,&p_1589->g_409,&p_1589->g_407,&p_1589->g_407,&p_1589->g_409,&p_1589->g_409,&p_1589->g_407}}}, // p_1589->g_748
        {&p_1589->g_748[0][1][4],&p_1589->g_748[0][1][4],&p_1589->g_748[0][1][4],&p_1589->g_748[0][1][4],&p_1589->g_748[0][1][4],&p_1589->g_748[0][1][4],&p_1589->g_748[0][1][4],&p_1589->g_748[0][1][4]}, // p_1589->g_747
        (-1L), // p_1589->g_753
        0x4E4096728D3CE85CL, // p_1589->g_761
        &p_1589->g_761, // p_1589->g_760
        {0xF4669244C2CB07BBL,0xF4669244C2CB07BBL,0xF4669244C2CB07BBL,0xF4669244C2CB07BBL,0xF4669244C2CB07BBL,0xF4669244C2CB07BBL,0xF4669244C2CB07BBL,0xF4669244C2CB07BBL}, // p_1589->g_788
        (void*)0, // p_1589->g_794
        &p_1589->g_794, // p_1589->g_793
        {{{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL}},{{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL}},{{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL}},{{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL}},{{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL}},{{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL}},{{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL}},{{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL}},{{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL},{0x7E5813357FE72459L,0x7A66826602CD782BL}}}, // p_1589->g_796
        (void*)0, // p_1589->g_815
        &p_1589->g_687, // p_1589->g_818
        &p_1589->g_485, // p_1589->g_835
        {&p_1589->g_835,&p_1589->g_835,&p_1589->g_835,&p_1589->g_835,&p_1589->g_835}, // p_1589->g_834
        &p_1589->g_834[3], // p_1589->g_833
        {0L,0L,0L,0L,0L,0L}, // p_1589->g_840
        {{{(void*)0,&p_1589->g_815,(void*)0,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815},{(void*)0,&p_1589->g_815,(void*)0,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815},{(void*)0,&p_1589->g_815,(void*)0,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815},{(void*)0,&p_1589->g_815,(void*)0,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815},{(void*)0,&p_1589->g_815,(void*)0,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815},{(void*)0,&p_1589->g_815,(void*)0,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815},{(void*)0,&p_1589->g_815,(void*)0,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815},{(void*)0,&p_1589->g_815,(void*)0,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815},{(void*)0,&p_1589->g_815,(void*)0,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815},{(void*)0,&p_1589->g_815,(void*)0,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815}},{{(void*)0,&p_1589->g_815,(void*)0,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815},{(void*)0,&p_1589->g_815,(void*)0,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815},{(void*)0,&p_1589->g_815,(void*)0,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815},{(void*)0,&p_1589->g_815,(void*)0,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815},{(void*)0,&p_1589->g_815,(void*)0,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815},{(void*)0,&p_1589->g_815,(void*)0,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815},{(void*)0,&p_1589->g_815,(void*)0,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815},{(void*)0,&p_1589->g_815,(void*)0,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815},{(void*)0,&p_1589->g_815,(void*)0,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815},{(void*)0,&p_1589->g_815,(void*)0,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815}},{{(void*)0,&p_1589->g_815,(void*)0,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815},{(void*)0,&p_1589->g_815,(void*)0,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815},{(void*)0,&p_1589->g_815,(void*)0,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815},{(void*)0,&p_1589->g_815,(void*)0,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815},{(void*)0,&p_1589->g_815,(void*)0,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815},{(void*)0,&p_1589->g_815,(void*)0,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815},{(void*)0,&p_1589->g_815,(void*)0,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815},{(void*)0,&p_1589->g_815,(void*)0,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815},{(void*)0,&p_1589->g_815,(void*)0,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815},{(void*)0,&p_1589->g_815,(void*)0,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815,&p_1589->g_815}}}, // p_1589->g_901
        {{0x28BDL,1UL,65531UL,0x2C88L},{0x28BDL,1UL,65531UL,0x2C88L},{0x28BDL,1UL,65531UL,0x2C88L},{0x28BDL,1UL,65531UL,0x2C88L},{0x28BDL,1UL,65531UL,0x2C88L},{0x28BDL,1UL,65531UL,0x2C88L},{0x28BDL,1UL,65531UL,0x2C88L}}, // p_1589->g_958
        &p_1589->g_300, // p_1589->g_970
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1589->g_978
        &p_1589->g_54, // p_1589->g_979
        &p_1589->g_687, // p_1589->g_991
        &p_1589->g_174[1][3], // p_1589->g_1022
        {&p_1589->g_687,&p_1589->g_687,&p_1589->g_687}, // p_1589->g_1041
        (void*)0, // p_1589->g_1042
        1UL, // p_1589->g_1125
        (void*)0, // p_1589->g_1135
        &p_1589->g_3[2][3], // p_1589->g_1136
        18446744073709551613UL, // p_1589->g_1191
        {&p_1589->g_174[1][3],&p_1589->g_174[1][3],&p_1589->g_174[1][3],&p_1589->g_174[1][3],&p_1589->g_174[1][3],&p_1589->g_174[1][3],&p_1589->g_174[1][3],&p_1589->g_174[1][3]}, // p_1589->g_1193
        {&p_1589->g_1136,&p_1589->g_1136,&p_1589->g_1136,&p_1589->g_1136,&p_1589->g_1136,&p_1589->g_1136,&p_1589->g_1136,&p_1589->g_1136,&p_1589->g_1136,&p_1589->g_1136}, // p_1589->g_1209
        (void*)0, // p_1589->g_1301
        {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}}, // p_1589->g_1312
        (void*)0, // p_1589->g_1313
        {{&p_1589->g_687,(void*)0,&p_1589->g_687,&p_1589->g_687},{&p_1589->g_687,(void*)0,&p_1589->g_687,&p_1589->g_687},{&p_1589->g_687,(void*)0,&p_1589->g_687,&p_1589->g_687}}, // p_1589->g_1348
        &p_1589->g_1136, // p_1589->g_1349
        2L, // p_1589->g_1434
        &p_1589->g_1193[7], // p_1589->g_1439
        0x439BB346842C9AE1L, // p_1589->g_1460
        &p_1589->g_1191, // p_1589->g_1472
        {&p_1589->g_1472,&p_1589->g_1472,&p_1589->g_1472,&p_1589->g_1472,&p_1589->g_1472,&p_1589->g_1472}, // p_1589->g_1471
        &p_1589->g_1022, // p_1589->g_1495
        &p_1589->g_687, // p_1589->g_1503
        &p_1589->g_54, // p_1589->g_1505
        &p_1589->g_747[5], // p_1589->g_1536
        &p_1589->g_1536, // p_1589->g_1535
        &p_1589->g_1535, // p_1589->g_1534
        0x1AF0360AL, // p_1589->g_1561
        0x63C4274EL, // p_1589->g_1567
        {1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL}, // p_1589->g_1575
        7UL, // p_1589->g_1581
        0, // p_1589->v_collective
        sequence_input[get_global_id(0)], // p_1589->global_0_offset
        sequence_input[get_global_id(1)], // p_1589->global_1_offset
        sequence_input[get_global_id(2)], // p_1589->global_2_offset
        sequence_input[get_local_id(0)], // p_1589->local_0_offset
        sequence_input[get_local_id(1)], // p_1589->local_1_offset
        sequence_input[get_local_id(2)], // p_1589->local_2_offset
        sequence_input[get_group_id(0)], // p_1589->group_0_offset
        sequence_input[get_group_id(1)], // p_1589->group_1_offset
        sequence_input[get_group_id(2)], // p_1589->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_1590 = c_1591;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1589);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1589->g_2, "p_1589->g_2", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1589->g_3[i][j], "p_1589->g_3[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1589->g_6, "p_1589->g_6", print_hash_value);
    transparent_crc(p_1589->g_7, "p_1589->g_7", print_hash_value);
    transparent_crc(p_1589->g_11, "p_1589->g_11", print_hash_value);
    transparent_crc(p_1589->g_12, "p_1589->g_12", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1589->g_93[i], "p_1589->g_93[i]", print_hash_value);

    }
    transparent_crc(p_1589->g_123, "p_1589->g_123", print_hash_value);
    transparent_crc(p_1589->g_127, "p_1589->g_127", print_hash_value);
    transparent_crc(p_1589->g_131, "p_1589->g_131", print_hash_value);
    transparent_crc(p_1589->g_134, "p_1589->g_134", print_hash_value);
    transparent_crc(p_1589->g_151, "p_1589->g_151", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1589->g_174[i][j], "p_1589->g_174[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1589->g_205[i][j], "p_1589->g_205[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1589->g_300, "p_1589->g_300", print_hash_value);
    transparent_crc(p_1589->g_436, "p_1589->g_436", print_hash_value);
    transparent_crc(p_1589->g_479, "p_1589->g_479", print_hash_value);
    transparent_crc(p_1589->g_485, "p_1589->g_485", print_hash_value);
    transparent_crc(p_1589->g_487, "p_1589->g_487", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1589->g_531[i][j], "p_1589->g_531[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1589->g_631, "p_1589->g_631", print_hash_value);
    transparent_crc(p_1589->g_753, "p_1589->g_753", print_hash_value);
    transparent_crc(p_1589->g_761, "p_1589->g_761", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1589->g_788[i], "p_1589->g_788[i]", print_hash_value);

    }
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1589->g_796[i][j][k], "p_1589->g_796[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1589->g_840[i], "p_1589->g_840[i]", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1589->g_958[i][j], "p_1589->g_958[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1589->g_1125, "p_1589->g_1125", print_hash_value);
    transparent_crc(p_1589->g_1191, "p_1589->g_1191", print_hash_value);
    transparent_crc(p_1589->g_1434, "p_1589->g_1434", print_hash_value);
    transparent_crc(p_1589->g_1460, "p_1589->g_1460", print_hash_value);
    transparent_crc(p_1589->g_1561, "p_1589->g_1561", print_hash_value);
    transparent_crc(p_1589->g_1567, "p_1589->g_1567", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1589->g_1575[i], "p_1589->g_1575[i]", print_hash_value);

    }
    transparent_crc(p_1589->g_1581, "p_1589->g_1581", print_hash_value);
    transparent_crc(p_1589->v_collective, "p_1589->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
