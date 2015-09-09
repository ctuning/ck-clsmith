// ---atomic_reductions ---fake_divergence -g 4,46,50 -l 4,1,2
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


// Seed: 2

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_11[6][7];
    int32_t *g_50;
    int32_t **g_49;
    int16_t g_70;
    uint32_t g_72;
    int32_t **g_84;
    int8_t g_87;
    uint8_t g_92;
    uint8_t g_94[1][8][9];
    int32_t g_95;
    int32_t ***g_104[2][5];
    int32_t g_109;
    int64_t g_111;
    volatile int16_t g_112[1];
    int32_t **g_119;
    int64_t g_137;
    int16_t g_143;
    uint16_t g_176;
    uint32_t g_177[1][7][8];
    int32_t g_178;
    int32_t g_183;
    int64_t g_198;
    volatile uint32_t g_235;
    volatile uint32_t *g_234;
    volatile uint32_t **g_233;
    int16_t *g_247[4];
    int32_t *g_315;
    int32_t ** volatile g_314[9];
    uint64_t g_346;
    uint64_t g_361;
    uint64_t *g_360[5][5][2];
    uint32_t g_396;
    int16_t g_397[10][4][5];
    int64_t g_469;
    volatile int32_t g_497;
    volatile int32_t *g_496[2][7][7];
    volatile int32_t ** volatile g_495[4];
    uint64_t g_548;
    volatile uint32_t g_575;
    uint16_t g_579;
    uint16_t g_581[7][8][4];
    int16_t g_652;
    int64_t *g_708;
    int64_t **g_707[10][1];
    uint32_t g_750[4];
    uint64_t g_761;
    uint16_t g_790;
    int8_t *g_855[8];
    int8_t **g_854;
    uint32_t * volatile g_888[2];
    int32_t **g_895;
    uint64_t *g_931;
    uint64_t **g_930;
    uint64_t *** volatile g_929;
    volatile int64_t g_964[9];
    uint32_t g_1001;
    int16_t **g_1026;
    int16_t ***g_1025;
    volatile uint8_t g_1068;
    uint64_t ** volatile g_1113;
    uint64_t ** volatile *g_1112;
    uint8_t g_1133;
    uint8_t g_1170;
    volatile int32_t g_1191;
    volatile int16_t * volatile g_1212[4][3][2];
    int32_t *g_1213;
    int16_t ****g_1320;
    uint32_t g_1338;
    uint32_t g_1360;
    int32_t g_1395;
    int32_t * volatile g_1394;
    uint64_t g_1447;
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
uint64_t  func_1(struct S0 * p_1482);
int16_t  func_2(uint32_t  p_3, uint64_t  p_4, struct S0 * p_1482);
int32_t * func_20(int16_t  p_21, uint32_t  p_22, int8_t  p_23, int16_t  p_24, int64_t  p_25, struct S0 * p_1482);
uint32_t  func_26(int32_t  p_27, struct S0 * p_1482);
int8_t  func_32(uint32_t  p_33, uint64_t  p_34, uint32_t  p_35, struct S0 * p_1482);
int32_t * func_37(int32_t * p_38, int32_t * p_39, struct S0 * p_1482);
int32_t * func_40(int8_t  p_41, struct S0 * p_1482);
int32_t * func_44(uint16_t  p_45, int32_t ** p_46, struct S0 * p_1482);
uint64_t  func_51(int32_t  p_52, struct S0 * p_1482);
int64_t  func_55(int16_t  p_56, struct S0 * p_1482);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1482->g_854 p_1482->g_855 p_1482->g_87 p_1482->g_11 p_1482->g_1213 p_1482->g_94 p_1482->g_1360 p_1482->g_119
 * writes: p_1482->g_11 p_1482->g_143 p_1482->g_94 p_1482->g_137 p_1482->g_111 p_1482->g_50
 */
uint64_t  func_1(struct S0 * p_1482)
{ /* block id: 4 */
    int32_t l_5[7] = {0x058A835AL,8L,0x058A835AL,0x058A835AL,8L,0x058A835AL,0x058A835AL};
    int8_t *l_1465 = &p_1482->g_87;
    int32_t *l_1470 = &p_1482->g_11[4][0];
    int16_t *l_1475 = &p_1482->g_143;
    uint8_t *l_1478 = &p_1482->g_94[0][6][8];
    int64_t *l_1481[6] = {&p_1482->g_111,&p_1482->g_111,&p_1482->g_111,&p_1482->g_111,&p_1482->g_111,&p_1482->g_111};
    int i;
    (*l_1470) = (((func_2(l_5[6], l_5[0], p_1482) >= l_5[6]) , ((safe_unary_minus_func_uint64_t_u((safe_lshift_func_uint8_t_u_u((l_1465 == (*p_1482->g_854)), l_5[6])))) >= (safe_mod_func_int16_t_s_s(((safe_unary_minus_func_uint16_t_u(((((safe_unary_minus_func_uint64_t_u(((**p_1482->g_854) , l_5[6]))) , (void*)0) == l_1470) | 0x143843AE0677059CL))) > 1UL), 0x8EAEL)))) >= (*l_1470));
    (*p_1482->g_119) = func_40(((safe_add_func_int64_t_s_s(((*p_1482->g_1213) == (((((((((p_1482->g_111 = (p_1482->g_137 = (((*l_1475) = 0L) & ((9L ^ ((safe_mul_func_int8_t_s_s((((*l_1478) &= (*l_1470)) && ((*l_1470) | (1UL < (safe_mul_func_int8_t_s_s((0xD8F5L || (*l_1470)), (-4L)))))), (*l_1470))) == (*l_1470))) >= (*l_1470))))) == 3L) || GROUP_DIVERGE(0, 1)) , (*l_1470)) >= 0x43AC99A3L) , (*l_1470)) > (*l_1470)) , &p_1482->g_84) != &p_1482->g_119)), 5L)) ^ p_1482->g_1360), p_1482);
    return (*l_1470);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int16_t  func_2(uint32_t  p_3, uint64_t  p_4, struct S0 * p_1482)
{ /* block id: 5 */
    int16_t l_8[7];
    int32_t l_13[1][7] = {{0x3FFD03B1L,0x3FFD03B1L,0x3FFD03B1L,0x3FFD03B1L,0x3FFD03B1L,0x3FFD03B1L,0x3FFD03B1L}};
    uint8_t l_1042 = 255UL;
    int32_t l_1055 = 0L;
    int64_t l_1088 = 0x1872326B9DB40B81L;
    int64_t *l_1120 = &p_1482->g_198;
    uint32_t l_1127[2][1][3] = {{{0UL,0UL,0UL}},{{0UL,0UL,0UL}}};
    int32_t l_1132 = (-1L);
    uint64_t *l_1140 = &p_1482->g_761;
    int32_t **l_1169 = (void*)0;
    int32_t *l_1171 = &l_13[0][5];
    int16_t ****l_1178[2];
    int16_t l_1190[2];
    int8_t *l_1205 = &p_1482->g_87;
    uint32_t l_1208 = 4294967295UL;
    int64_t *l_1209 = &p_1482->g_111;
    uint32_t *l_1210 = (void*)0;
    uint32_t *l_1211 = &l_1208;
    int32_t l_1232[7][2][10] = {{{8L,(-1L),(-5L),0L,0x1F41009CL,0L,(-5L),(-1L),8L,0x5196757FL},{8L,(-1L),(-5L),0L,0x1F41009CL,0L,(-5L),(-1L),8L,0x5196757FL}},{{8L,(-1L),(-5L),0L,0x1F41009CL,0L,(-5L),(-1L),8L,0x5196757FL},{8L,(-1L),(-5L),0L,0x1F41009CL,0L,(-5L),(-1L),8L,0x5196757FL}},{{8L,(-1L),(-5L),0L,0x1F41009CL,0L,(-5L),(-1L),8L,0x5196757FL},{8L,(-1L),(-5L),0L,0x1F41009CL,0L,(-5L),(-1L),8L,0x5196757FL}},{{8L,(-1L),(-5L),0L,0x1F41009CL,0L,(-5L),(-1L),8L,0x5196757FL},{8L,(-1L),(-5L),0L,0x1F41009CL,0L,(-5L),(-1L),8L,0x5196757FL}},{{8L,(-1L),(-5L),0L,0x1F41009CL,0L,(-5L),(-1L),8L,0x5196757FL},{8L,(-1L),(-5L),0L,0x1F41009CL,0L,(-5L),(-1L),8L,0x5196757FL}},{{8L,(-1L),(-5L),0L,0x1F41009CL,0L,(-5L),(-1L),8L,0x5196757FL},{8L,(-1L),(-5L),0L,0x1F41009CL,0L,(-5L),(-1L),8L,0x5196757FL}},{{8L,(-1L),(-5L),0L,0x1F41009CL,0L,(-5L),(-1L),8L,0x5196757FL},{8L,(-1L),(-5L),0L,0x1F41009CL,0L,(-5L),(-1L),8L,0x5196757FL}}};
    uint32_t l_1237 = 4294967294UL;
    uint16_t l_1264 = 7UL;
    uint32_t l_1267[4][2] = {{7UL,0x31714A36L},{7UL,0x31714A36L},{7UL,0x31714A36L},{7UL,0x31714A36L}};
    uint16_t l_1289 = 6UL;
    uint32_t l_1325 = 0xF7590EABL;
    uint16_t l_1327[1][1][6];
    uint64_t l_1387 = 0x301929782A49B7E3L;
    uint32_t *l_1400 = &l_1127[1][0][1];
    int64_t l_1444[5];
    int64_t l_1456[4][10][3];
    int32_t l_1457 = 1L;
    uint16_t l_1458 = 0xC7EEL;
    uint32_t l_1461 = 4294967295UL;
    int i, j, k;
    for (i = 0; i < 7; i++)
        l_8[i] = 0x78D1L;
    for (i = 0; i < 2; i++)
        l_1178[i] = &p_1482->g_1025;
    for (i = 0; i < 2; i++)
        l_1190[i] = 0x6D68L;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 6; k++)
                l_1327[i][j][k] = 0UL;
        }
    }
    for (i = 0; i < 5; i++)
        l_1444[i] = 1L;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 3; k++)
                l_1456[i][j][k] = 0x6FD5529BBFBBF30AL;
        }
    }
    for (p_3 = 0; (p_3 >= 12); p_3 = safe_add_func_uint16_t_u_u(p_3, 3))
    { /* block id: 8 */
        int32_t *l_9 = (void*)0;
        int32_t *l_10 = &p_1482->g_11[4][0];
        int32_t *l_12 = &p_1482->g_11[4][2];
        int32_t l_14 = 0x3F1540EEL;
        int32_t *l_15 = &p_1482->g_11[0][4];
        int32_t *l_16[5][7][5] = {{{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0}},{{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0}},{{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0}},{{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0}},{{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0},{&p_1482->g_11[3][5],&l_13[0][2],&l_14,(void*)0,(void*)0}}};
        uint16_t l_17 = 8UL;
        uint32_t *l_1035 = (void*)0;
        uint32_t *l_1036 = &p_1482->g_750[3];
        uint16_t *l_1039 = &l_17;
        int32_t *l_1071[3][2];
        int8_t ***l_1087 = &p_1482->g_854;
        int32_t l_1122 = (-2L);
        int i, j, k;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 2; j++)
                l_1071[i][j] = (void*)0;
        }
        l_17--;
    }
    return l_1461;
}


/* ------------------------------------------ */
/* 
 * reads : p_1482->g_119 p_1482->g_50
 * writes:
 */
int32_t * func_20(int16_t  p_21, uint32_t  p_22, int8_t  p_23, int16_t  p_24, int64_t  p_25, struct S0 * p_1482)
{ /* block id: 492 */
    int32_t *l_1043 = &p_1482->g_11[4][0];
    int32_t *l_1044 = (void*)0;
    int32_t *l_1045 = &p_1482->g_11[4][0];
    int32_t *l_1046 = &p_1482->g_11[4][6];
    int32_t l_1047 = 0x5DC7EBADL;
    int32_t *l_1048 = &p_1482->g_11[4][0];
    int32_t *l_1049 = (void*)0;
    int32_t *l_1050 = (void*)0;
    int32_t *l_1051[4][2] = {{&l_1047,&l_1047},{&l_1047,&l_1047},{&l_1047,&l_1047},{&l_1047,&l_1047}};
    uint16_t l_1052 = 0x138BL;
    int i, j;
    --l_1052;
    return (*p_1482->g_119);
}


/* ------------------------------------------ */
/* 
 * reads : p_1482->g_11
 * writes: p_1482->g_11
 */
uint32_t  func_26(int32_t  p_27, struct S0 * p_1482)
{ /* block id: 10 */
    int32_t *l_36 = &p_1482->g_11[4][0];
    int32_t *l_43[2][3] = {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}};
    int32_t **l_42 = &l_43[1][0];
    int32_t *l_182 = &p_1482->g_183;
    uint8_t l_499 = 246UL;
    int16_t *l_651 = &p_1482->g_652;
    int64_t *l_656 = (void*)0;
    uint32_t l_719[1][8][8] = {{{0xC5E025BAL,0xFE40834AL,0UL,0UL,0xFE40834AL,0xC5E025BAL,0x1FD605D5L,4294967286UL},{0xC5E025BAL,0xFE40834AL,0UL,0UL,0xFE40834AL,0xC5E025BAL,0x1FD605D5L,4294967286UL},{0xC5E025BAL,0xFE40834AL,0UL,0UL,0xFE40834AL,0xC5E025BAL,0x1FD605D5L,4294967286UL},{0xC5E025BAL,0xFE40834AL,0UL,0UL,0xFE40834AL,0xC5E025BAL,0x1FD605D5L,4294967286UL},{0xC5E025BAL,0xFE40834AL,0UL,0UL,0xFE40834AL,0xC5E025BAL,0x1FD605D5L,4294967286UL},{0xC5E025BAL,0xFE40834AL,0UL,0UL,0xFE40834AL,0xC5E025BAL,0x1FD605D5L,4294967286UL},{0xC5E025BAL,0xFE40834AL,0UL,0UL,0xFE40834AL,0xC5E025BAL,0x1FD605D5L,4294967286UL},{0xC5E025BAL,0xFE40834AL,0UL,0UL,0xFE40834AL,0xC5E025BAL,0x1FD605D5L,4294967286UL}}};
    int64_t **l_720[9][5][3] = {{{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708}},{{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708}},{{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708}},{{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708}},{{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708}},{{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708}},{{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708}},{{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708}},{{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708},{&p_1482->g_708,&p_1482->g_708,&p_1482->g_708}}};
    uint64_t **l_727 = (void*)0;
    uint32_t l_735 = 0UL;
    int8_t *l_853 = (void*)0;
    int8_t **l_852 = &l_853;
    int16_t **l_979 = &l_651;
    int16_t ***l_978 = &l_979;
    int32_t l_1027[10] = {0x7BF4BCF7L,0x7BF4BCF7L,0x7BF4BCF7L,0x7BF4BCF7L,0x7BF4BCF7L,0x7BF4BCF7L,0x7BF4BCF7L,0x7BF4BCF7L,0x7BF4BCF7L,0x7BF4BCF7L};
    int16_t l_1028[5];
    int32_t l_1029[2];
    uint8_t l_1030[6][5] = {{0x67L,0x67L,0UL,246UL,0xA3L},{0x67L,0x67L,0UL,246UL,0xA3L},{0x67L,0x67L,0UL,246UL,0xA3L},{0x67L,0x67L,0UL,246UL,0xA3L},{0x67L,0x67L,0UL,246UL,0xA3L},{0x67L,0x67L,0UL,246UL,0xA3L}};
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_1028[i] = (-8L);
    for (i = 0; i < 2; i++)
        l_1029[i] = 0x064A2F6DL;
    p_1482->g_11[4][0] = p_1482->g_11[4][0];
    return (*l_36);
}


/* ------------------------------------------ */
/* 
 * reads : p_1482->g_70 p_1482->g_49 p_1482->g_315 p_1482->g_11 p_1482->g_234 p_1482->g_235 p_1482->g_112 p_1482->g_87 p_1482->g_111 p_1482->g_177 p_1482->g_397 p_1482->g_109 p_1482->g_575 p_1482->g_92 p_1482->g_579 p_1482->g_581 p_1482->g_143 p_1482->g_396 p_1482->g_176
 * writes: p_1482->g_49 p_1482->g_176 p_1482->g_361 p_1482->g_111 p_1482->g_548 p_1482->g_11 p_1482->g_579 p_1482->g_315 p_1482->g_346
 */
int8_t  func_32(uint32_t  p_33, uint64_t  p_34, uint32_t  p_35, struct S0 * p_1482)
{ /* block id: 230 */
    int32_t **l_504 = &p_1482->g_315;
    int32_t ***l_505 = &p_1482->g_49;
    int32_t l_506 = 0x01AEB489L;
    int32_t **l_507 = &p_1482->g_50;
    uint16_t *l_516 = &p_1482->g_176;
    int64_t l_524 = 0x32CF3524B37BD88DL;
    int16_t l_550 = (-7L);
    int8_t l_554 = 0L;
    int64_t *l_576 = &p_1482->g_198;
    int32_t l_580[8] = {0L,0L,0L,0L,0L,0L,0L,0L};
    uint8_t *l_605[4];
    uint8_t l_606 = 0xF5L;
    int16_t **l_637 = (void*)0;
    int i;
    for (i = 0; i < 4; i++)
        l_605[i] = (void*)0;
    if (((safe_rshift_func_uint8_t_u_s((&p_34 == &p_34), 6)) != (((l_504 = ((*l_505) = l_504)) == (l_506 , l_507)) , (safe_mul_func_uint16_t_u_u(((safe_mul_func_uint16_t_u_u((p_35 , p_1482->g_70), (safe_add_func_int32_t_s_s((p_33 != (((*l_516) = (safe_lshift_func_int8_t_s_u((p_34 > p_35), 3))) | p_34)), 0UL)))) , (***l_505)), p_33)))))
    { /* block id: 234 */
        int32_t ***l_523[6][8] = {{(void*)0,&p_1482->g_84,&l_507,&p_1482->g_119,&l_507,&p_1482->g_84,(void*)0,&p_1482->g_49},{(void*)0,&p_1482->g_84,&l_507,&p_1482->g_119,&l_507,&p_1482->g_84,(void*)0,&p_1482->g_49},{(void*)0,&p_1482->g_84,&l_507,&p_1482->g_119,&l_507,&p_1482->g_84,(void*)0,&p_1482->g_49},{(void*)0,&p_1482->g_84,&l_507,&p_1482->g_119,&l_507,&p_1482->g_84,(void*)0,&p_1482->g_49},{(void*)0,&p_1482->g_84,&l_507,&p_1482->g_119,&l_507,&p_1482->g_84,(void*)0,&p_1482->g_49},{(void*)0,&p_1482->g_84,&l_507,&p_1482->g_119,&l_507,&p_1482->g_84,(void*)0,&p_1482->g_49}};
        int16_t **l_526 = (void*)0;
        int16_t ***l_525 = &l_526;
        uint8_t l_549[10] = {1UL,253UL,1UL,1UL,253UL,1UL,1UL,253UL,1UL,1UL};
        int i, j;
        l_524 ^= ((*p_1482->g_234) == (safe_mul_func_uint8_t_u_u((((**l_504) | ((***l_505) , ((void*)0 == &p_1482->g_87))) || (((*p_1482->g_315) || (p_35 > (&l_507 != l_523[2][3]))) < 0x3A99L)), 0x4DL)));
        atomic_max(&p_1482->l_atomic_reduction[0], p_34);
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        if (get_linear_local_id() == 0)
            p_1482->v_collective += p_1482->l_atomic_reduction[0];
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        (*l_525) = (void*)0;
        for (l_524 = 0; (l_524 == (-6)); l_524--)
        { /* block id: 240 */
            uint64_t *l_533 = &p_1482->g_361;
            int64_t *l_536 = (void*)0;
            int64_t *l_537 = (void*)0;
            int64_t *l_538 = &p_1482->g_111;
            int32_t l_545 = 0x38DE718FL;
            uint64_t *l_546 = (void*)0;
            uint64_t *l_547 = &p_1482->g_548;
            int16_t *l_551 = &l_550;
            uint32_t l_574 = 0x8D4D1664L;
            int64_t *l_577 = &p_1482->g_198;
            uint16_t *l_578 = &p_1482->g_579;
            int8_t *l_607 = &l_554;
            (**l_504) ^= (p_1482->g_112[0] && ((safe_lshift_func_int8_t_s_u(3L, (+0UL))) > ((-9L) == ((p_1482->g_87 , (((0x10D9EEE9L || (safe_mul_func_int16_t_s_s((((*l_547) = (((*l_533) = 1UL) | (safe_mul_func_uint8_t_u_u((((*l_538) = 9L) , (((((*l_538) |= ((safe_mod_func_int64_t_s_s((((safe_add_func_uint64_t_u_u((p_35 ^ p_1482->g_235), l_545)) < 252UL) , p_1482->g_70), 0x314652A5FCED1F60L)) , (-1L))) == 0UL) , 1UL) != p_34)), p_1482->g_177[0][4][1])))) == l_549[9]), l_550))) , l_551) != (void*)0)) >= p_1482->g_397[3][3][1]))));
            (*l_504) = ((safe_lshift_func_uint8_t_u_u(l_545, ((l_554 ^ ((((safe_mul_func_uint16_t_u_u((safe_div_func_uint64_t_u_u(((safe_sub_func_int32_t_s_s(((p_1482->g_109 ^ (safe_div_func_uint32_t_u_u(0x9CDAC9AEL, 4294967286UL))) & ((safe_add_func_uint16_t_u_u(((*l_578) |= ((*l_516) = (((safe_add_func_uint8_t_u_u((safe_unary_minus_func_uint16_t_u((safe_sub_func_int64_t_s_s((GROUP_DIVERGE(1, 1) >= p_34), p_33)))), (safe_mod_func_int32_t_s_s((**p_1482->g_49), (((l_577 = ((((safe_mul_func_int8_t_s_s(p_33, l_574)) < p_1482->g_575) == p_35) , l_576)) == (void*)0) && p_35))))) ^ p_1482->g_92) | p_1482->g_70))), p_34)) , (*p_1482->g_234))), 0x6406A777L)) , p_35), l_574)), l_580[5])) == 9UL) != p_1482->g_581[1][4][1]) , p_34)) & p_35))) , (**l_505));
            (**p_1482->g_49) = (0xD65D9664106C4D9FL == (safe_sub_func_int32_t_s_s((safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_1482->global_1_offset, get_global_id(1), 10), (!((*l_607) = (safe_sub_func_int64_t_s_s(((*l_538) = (safe_div_func_int64_t_s_s((((+((((safe_mod_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s(p_1482->g_143, 13)), (safe_rshift_func_uint8_t_u_u((safe_unary_minus_func_int16_t_s(((((l_574 == (***l_505)) , (((&p_1482->g_143 == (void*)0) == ((safe_mod_func_uint64_t_u_u(((*l_547) = (**l_504)), ((+(((safe_mul_func_uint8_t_u_u((((*l_533) = (safe_lshift_func_uint16_t_u_s((0x6D183E6563E27559L ^ (((*l_516) = ((((((***l_505) , p_35) , 0x42E41BBCL) , (void*)0) == l_605[0]) || (-2L))) < FAKE_DIVERGE(p_1482->global_1_offset, get_global_id(1), 10))), 8))) == (**l_504)), p_35)) != p_33) != 0x2B13BBE7L)) || 0x74592E15L))) | 0UL)) >= 0x64C0L)) | p_34) , 0x0AB0L))), 5)))) >= p_1482->g_575) != p_1482->g_177[0][3][0]) , p_1482->g_581[3][2][1])) | p_35) < FAKE_DIVERGE(p_1482->local_0_offset, get_local_id(0), 10)), l_606))), (**l_504))))))), (**l_504))));
            l_580[5] ^= (safe_sub_func_int8_t_s_s((p_34 || ((((((safe_div_func_uint8_t_u_u(1UL, 0x48L)) , (p_33 , ((!p_34) , ((safe_div_func_int8_t_s_s((p_35 > (safe_mul_func_int8_t_s_s(l_545, ((*l_607) = ((safe_lshift_func_uint8_t_u_u(p_35, (((safe_mod_func_uint8_t_u_u(p_1482->g_396, p_1482->g_176)) <= p_34) ^ l_574))) >= (***l_505)))))), 0xD5L)) , (*p_1482->g_234))))) & p_35) , 1L) < 0x3D67A81681989220L) != p_1482->g_396)), 1UL));
        }
    }
    else
    { /* block id: 259 */
        int32_t *l_620 = &l_580[5];
        int32_t *l_621 = (void*)0;
        int32_t *l_622 = &l_580[6];
        int32_t *l_623[10][9] = {{&p_1482->g_11[4][0],&l_506,&l_580[5],&p_1482->g_11[5][6],&l_580[7],&p_1482->g_11[5][6],&l_580[5],&l_506,&p_1482->g_11[4][0]},{&p_1482->g_11[4][0],&l_506,&l_580[5],&p_1482->g_11[5][6],&l_580[7],&p_1482->g_11[5][6],&l_580[5],&l_506,&p_1482->g_11[4][0]},{&p_1482->g_11[4][0],&l_506,&l_580[5],&p_1482->g_11[5][6],&l_580[7],&p_1482->g_11[5][6],&l_580[5],&l_506,&p_1482->g_11[4][0]},{&p_1482->g_11[4][0],&l_506,&l_580[5],&p_1482->g_11[5][6],&l_580[7],&p_1482->g_11[5][6],&l_580[5],&l_506,&p_1482->g_11[4][0]},{&p_1482->g_11[4][0],&l_506,&l_580[5],&p_1482->g_11[5][6],&l_580[7],&p_1482->g_11[5][6],&l_580[5],&l_506,&p_1482->g_11[4][0]},{&p_1482->g_11[4][0],&l_506,&l_580[5],&p_1482->g_11[5][6],&l_580[7],&p_1482->g_11[5][6],&l_580[5],&l_506,&p_1482->g_11[4][0]},{&p_1482->g_11[4][0],&l_506,&l_580[5],&p_1482->g_11[5][6],&l_580[7],&p_1482->g_11[5][6],&l_580[5],&l_506,&p_1482->g_11[4][0]},{&p_1482->g_11[4][0],&l_506,&l_580[5],&p_1482->g_11[5][6],&l_580[7],&p_1482->g_11[5][6],&l_580[5],&l_506,&p_1482->g_11[4][0]},{&p_1482->g_11[4][0],&l_506,&l_580[5],&p_1482->g_11[5][6],&l_580[7],&p_1482->g_11[5][6],&l_580[5],&l_506,&p_1482->g_11[4][0]},{&p_1482->g_11[4][0],&l_506,&l_580[5],&p_1482->g_11[5][6],&l_580[7],&p_1482->g_11[5][6],&l_580[5],&l_506,&p_1482->g_11[4][0]}};
        uint32_t l_624 = 0x88E9C4E1L;
        uint64_t *l_649 = (void*)0;
        uint64_t *l_650[8] = {&p_1482->g_346,&p_1482->g_346,&p_1482->g_346,&p_1482->g_346,&p_1482->g_346,&p_1482->g_346,&p_1482->g_346,&p_1482->g_346};
        int i, j;
        --l_624;
        (*p_1482->g_315) = (safe_lshift_func_uint16_t_u_u(((((!((safe_lshift_func_uint16_t_u_s((+FAKE_DIVERGE(p_1482->local_1_offset, get_local_id(1), 10)), ((safe_rshift_func_int16_t_s_u((((safe_mod_func_uint16_t_u_u((((((safe_lshift_func_uint8_t_u_s(((((void*)0 == l_637) >= ((safe_mod_func_int8_t_s_s((-4L), (safe_unary_minus_func_int16_t_s((***l_505))))) , 0UL)) < ((p_1482->g_346 = (safe_mul_func_int8_t_s_s((safe_mod_func_int8_t_s_s(p_34, (safe_div_func_int64_t_s_s((((*l_622) = p_33) != (safe_lshift_func_uint16_t_u_s((p_33 & ((8UL == 3UL) < (*p_1482->g_315))), 2))), (***l_505))))), 0x48L))) , 0x56L)), 1)) , (void*)0) == (void*)0) , p_1482->g_177[0][1][1]) <= 250UL), p_1482->g_11[3][1])) , (*l_622)) != p_1482->g_397[0][1][0]), 2)) & p_33))) , (-7L))) > p_35) & p_33) & 4UL), (**l_504)));
    }
    return p_33;
}


/* ------------------------------------------ */
/* 
 * reads : p_1482->g_469 p_1482->g_49 p_1482->g_11
 * writes: p_1482->g_469 p_1482->g_50 p_1482->g_315
 */
int32_t * func_37(int32_t * p_38, int32_t * p_39, struct S0 * p_1482)
{ /* block id: 220 */
    for (p_1482->g_469 = 0; (p_1482->g_469 < (-16)); p_1482->g_469 = safe_sub_func_int64_t_s_s(p_1482->g_469, 8))
    { /* block id: 223 */
        (*p_1482->g_49) = (void*)0;
        if ((*p_38))
            break;
        if ((*p_39))
            break;
    }
    atomic_min(&p_1482->l_atomic_reduction[0], (*p_38));
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (get_linear_local_id() == 0)
        p_1482->v_collective += p_1482->l_atomic_reduction[0];
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    return p_38;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_40(int8_t  p_41, struct S0 * p_1482)
{ /* block id: 12 */
    return &p_1482->g_11[0][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_1482->g_315
 * writes:
 */
int32_t * func_44(uint16_t  p_45, int32_t ** p_46, struct S0 * p_1482)
{ /* block id: 217 */
    return (*p_46);
}


/* ------------------------------------------ */
/* 
 * reads : p_1482->g_11 p_1482->g_87 p_1482->g_94 p_1482->g_233 p_1482->g_95
 * writes: p_1482->g_198 p_1482->g_87 p_1482->g_95
 */
uint64_t  func_51(int32_t  p_52, struct S0 * p_1482)
{ /* block id: 54 */
    uint64_t l_186[8] = {8UL,18446744073709551609UL,8UL,8UL,18446744073709551609UL,8UL,8UL,18446744073709551609UL};
    uint16_t *l_191 = (void*)0;
    int64_t *l_196 = (void*)0;
    int64_t *l_197[1];
    int32_t l_203 = 0x4B9D369FL;
    uint64_t l_208 = 1UL;
    int32_t l_209 = 0x6B170D87L;
    int16_t *l_210[9] = {&p_1482->g_70,&p_1482->g_70,&p_1482->g_70,&p_1482->g_70,&p_1482->g_70,&p_1482->g_70,&p_1482->g_70,&p_1482->g_70,&p_1482->g_70};
    int32_t l_211 = 0L;
    uint8_t *l_227 = &p_1482->g_92;
    uint8_t *l_228 = &p_1482->g_92;
    int8_t *l_242 = &p_1482->g_87;
    int32_t ***l_243 = &p_1482->g_119;
    int16_t *l_310 = &p_1482->g_70;
    int32_t l_326[3][8] = {{0L,1L,0L,0L,1L,0L,0L,1L},{0L,1L,0L,0L,1L,0L,0L,1L},{0L,1L,0L,0L,1L,0L,0L,1L}};
    int32_t l_330 = 0x5A4B0D07L;
    uint16_t l_337 = 2UL;
    uint32_t l_444 = 1UL;
    int32_t l_468 = 0x45201438L;
    uint32_t **l_492 = (void*)0;
    int i, j;
    for (i = 0; i < 1; i++)
        l_197[i] = &p_1482->g_198;
    if ((((safe_div_func_int64_t_s_s((l_186[2] < (((safe_mul_func_int16_t_s_s((l_211 = ((l_209 &= ((0x8708D74EL | (l_191 == l_191)) && ((safe_rshift_func_int16_t_s_s((safe_add_func_int64_t_s_s(((p_1482->g_198 = 0x5A2A86C6973A35D5L) , ((safe_div_func_uint32_t_u_u((safe_mod_func_uint32_t_u_u(((+(l_203 = p_1482->g_11[3][2])) >= l_186[3]), (safe_sub_func_uint8_t_u_u((0xF1FCL ^ (l_186[1] <= l_186[2])), 0UL)))), 0x541012F7L)) , l_208)), GROUP_DIVERGE(2, 1))), l_186[5])) <= 0xC72FL))) , 0x77BEL)), p_52)) >= l_186[2]) < 0x78FCAF225372B5BDL)), l_208)) || 18446744073709551612UL) , p_52))
    { /* block id: 59 */
        uint64_t l_220 = 3UL;
        int8_t *l_231 = &p_1482->g_87;
        int32_t *l_232 = &l_203;
        volatile uint32_t **l_236[7][5][5] = {{{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234},{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234},{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234},{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234},{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234}},{{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234},{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234},{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234},{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234},{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234}},{{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234},{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234},{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234},{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234},{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234}},{{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234},{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234},{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234},{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234},{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234}},{{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234},{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234},{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234},{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234},{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234}},{{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234},{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234},{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234},{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234},{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234}},{{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234},{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234},{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234},{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234},{&p_1482->g_234,(void*)0,&p_1482->g_234,&p_1482->g_234,&p_1482->g_234}}};
        int i, j, k;
        (*l_232) = (((((safe_add_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u((l_209 = (GROUP_DIVERGE(2, 1) ^ ((-5L) == ((((safe_sub_func_uint16_t_u_u(65535UL, (safe_mod_func_int16_t_s_s(((l_220 < 4294967290UL) ^ (safe_add_func_int16_t_s_s((safe_rshift_func_int16_t_s_s((safe_mod_func_uint16_t_u_u(((l_227 == (l_228 = (void*)0)) , 65532UL), 0x6194L)), 2)), (safe_div_func_int8_t_s_s(((*l_231) |= (-10L)), p_52))))), 1L)))) == 0x05A429E2L) != p_52) , p_52)))), p_52)), p_1482->g_94[0][0][5])) == 0x20B7L) ^ FAKE_DIVERGE(p_1482->global_0_offset, get_global_id(0), 10)) < l_208) | l_186[2]);
        l_236[4][4][2] = p_1482->g_233;
    }
    else
    { /* block id: 65 */
        uint64_t l_237[1];
        int8_t *l_241 = (void*)0;
        int8_t **l_240[8] = {&l_241,&l_241,&l_241,&l_241,&l_241,&l_241,&l_241,&l_241};
        int16_t *l_246 = &p_1482->g_70;
        int32_t l_324 = 5L;
        int16_t l_325 = 0x3B77L;
        int8_t l_344[9][10] = {{1L,1L,1L,1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L,1L,1L,1L}};
        uint64_t *l_372[2];
        uint64_t **l_371 = &l_372[0];
        uint8_t l_395[1][1];
        int32_t l_434 = 2L;
        uint32_t *l_446[9][10] = {{(void*)0,(void*)0,&p_1482->g_72,&p_1482->g_72,(void*)0,&p_1482->g_72,&p_1482->g_72,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1482->g_72,&p_1482->g_72,(void*)0,&p_1482->g_72,&p_1482->g_72,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1482->g_72,&p_1482->g_72,(void*)0,&p_1482->g_72,&p_1482->g_72,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1482->g_72,&p_1482->g_72,(void*)0,&p_1482->g_72,&p_1482->g_72,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1482->g_72,&p_1482->g_72,(void*)0,&p_1482->g_72,&p_1482->g_72,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1482->g_72,&p_1482->g_72,(void*)0,&p_1482->g_72,&p_1482->g_72,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1482->g_72,&p_1482->g_72,(void*)0,&p_1482->g_72,&p_1482->g_72,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1482->g_72,&p_1482->g_72,(void*)0,&p_1482->g_72,&p_1482->g_72,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1482->g_72,&p_1482->g_72,(void*)0,&p_1482->g_72,&p_1482->g_72,(void*)0,(void*)0,(void*)0}};
        uint32_t **l_445 = &l_446[2][8];
        int32_t l_456[8][5] = {{0x18147C04L,7L,7L,0x18147C04L,0x18147C04L},{0x18147C04L,7L,7L,0x18147C04L,0x18147C04L},{0x18147C04L,7L,7L,0x18147C04L,0x18147C04L},{0x18147C04L,7L,7L,0x18147C04L,0x18147C04L},{0x18147C04L,7L,7L,0x18147C04L,0x18147C04L},{0x18147C04L,7L,7L,0x18147C04L,0x18147C04L},{0x18147C04L,7L,7L,0x18147C04L,0x18147C04L},{0x18147C04L,7L,7L,0x18147C04L,0x18147C04L}};
        int32_t l_458[6] = {0x0767E866L,0x0767E866L,0x0767E866L,0x0767E866L,0x0767E866L,0x0767E866L};
        int64_t l_490 = 0x0A22575DABE2094FL;
        int i, j;
        for (i = 0; i < 1; i++)
            l_237[i] = 1UL;
        for (i = 0; i < 2; i++)
            l_372[i] = &l_208;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 1; j++)
                l_395[i][j] = 0UL;
        }
        --l_237[0];
        for (p_1482->g_95 = 0; (p_1482->g_95 >= 0); p_1482->g_95 -= 1)
        { /* block id: 69 */
            int i;
            return l_237[p_1482->g_95];
        }
    }
    return p_52;
}


/* ------------------------------------------ */
/* 
 * reads : p_1482->g_72 p_1482->g_70 p_1482->g_11 p_1482->g_95 p_1482->g_94 p_1482->g_109 p_1482->g_112 p_1482->g_119 p_1482->g_137 p_1482->g_143 p_1482->g_92 p_1482->g_50 p_1482->g_178 p_1482->g_111
 * writes: p_1482->g_72 p_1482->g_84 p_1482->g_87 p_1482->g_92 p_1482->g_94 p_1482->g_95 p_1482->g_104 p_1482->g_109 p_1482->g_111 p_1482->g_112 p_1482->g_70 p_1482->g_137 p_1482->g_143 p_1482->g_50 p_1482->g_176 p_1482->g_177 p_1482->g_178
 */
int64_t  func_55(int16_t  p_56, struct S0 * p_1482)
{ /* block id: 15 */
    uint32_t *l_69 = (void*)0;
    uint32_t *l_71 = &p_1482->g_72;
    int32_t **l_81 = &p_1482->g_50;
    int32_t **l_82[4][3] = {{&p_1482->g_50,(void*)0,&p_1482->g_50},{&p_1482->g_50,(void*)0,&p_1482->g_50},{&p_1482->g_50,(void*)0,&p_1482->g_50},{&p_1482->g_50,(void*)0,&p_1482->g_50}};
    int32_t ***l_83[8];
    int8_t *l_85 = (void*)0;
    int8_t *l_86 = &p_1482->g_87;
    uint64_t l_90[10][2][2] = {{{8UL,0xD7628F8C84420CA5L},{8UL,0xD7628F8C84420CA5L}},{{8UL,0xD7628F8C84420CA5L},{8UL,0xD7628F8C84420CA5L}},{{8UL,0xD7628F8C84420CA5L},{8UL,0xD7628F8C84420CA5L}},{{8UL,0xD7628F8C84420CA5L},{8UL,0xD7628F8C84420CA5L}},{{8UL,0xD7628F8C84420CA5L},{8UL,0xD7628F8C84420CA5L}},{{8UL,0xD7628F8C84420CA5L},{8UL,0xD7628F8C84420CA5L}},{{8UL,0xD7628F8C84420CA5L},{8UL,0xD7628F8C84420CA5L}},{{8UL,0xD7628F8C84420CA5L},{8UL,0xD7628F8C84420CA5L}},{{8UL,0xD7628F8C84420CA5L},{8UL,0xD7628F8C84420CA5L}},{{8UL,0xD7628F8C84420CA5L},{8UL,0xD7628F8C84420CA5L}}};
    uint8_t *l_91 = &p_1482->g_92;
    uint8_t *l_93[10] = {&p_1482->g_94[0][0][5],&p_1482->g_94[0][0][5],&p_1482->g_94[0][0][5],&p_1482->g_94[0][0][5],&p_1482->g_94[0][0][5],&p_1482->g_94[0][0][5],&p_1482->g_94[0][0][5],&p_1482->g_94[0][0][5],&p_1482->g_94[0][0][5],&p_1482->g_94[0][0][5]};
    uint32_t l_107 = 1UL;
    uint64_t *l_108[1];
    int64_t *l_110 = &p_1482->g_111;
    int32_t **l_120 = &p_1482->g_50;
    int16_t *l_125 = &p_1482->g_70;
    uint16_t *l_175[1];
    uint32_t l_179 = 2UL;
    int i, j, k;
    for (i = 0; i < 8; i++)
        l_83[i] = &l_82[1][1];
    for (i = 0; i < 1; i++)
        l_108[i] = &l_90[6][1][1];
    for (i = 0; i < 1; i++)
        l_175[i] = &p_1482->g_176;
    p_1482->g_95 |= (safe_mod_func_uint64_t_u_u(((safe_rshift_func_uint8_t_u_s((p_1482->g_94[0][4][2] = ((*l_91) = (safe_lshift_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), (((safe_div_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s((safe_mod_func_uint32_t_u_u((p_56 | ((((--(*l_71)) > (safe_div_func_int8_t_s_s((safe_lshift_func_int16_t_s_s((((l_81 = ((safe_add_func_uint8_t_u_u(FAKE_DIVERGE(p_1482->global_2_offset, get_global_id(2), 10), (&p_1482->g_50 == (void*)0))) , l_81)) != (p_1482->g_84 = l_82[1][1])) ^ ((*l_86) = (4294967295UL ^ p_56))), 1)), ((safe_sub_func_uint8_t_u_u((p_56 & (p_1482->g_70 != p_1482->g_11[3][5])), p_1482->g_11[4][1])) , p_1482->g_70)))) | 0xB9L) | p_1482->g_11[2][4])), p_56)), p_56)), l_90[6][1][0])) || p_56) & 1L))))), p_1482->g_11[0][4])) < p_56), p_56));
    p_1482->g_112[0] &= ((safe_div_func_int16_t_s_s((((((((*l_110) = ((p_1482->g_109 &= (safe_div_func_int64_t_s_s((safe_mul_func_uint8_t_u_u((p_56 , 0x9DL), (safe_mul_func_int8_t_s_s(0x13L, (((p_56 <= (-1L)) , (void*)0) != (p_1482->g_104[0][1] = &p_1482->g_49)))))), ((!(((safe_mul_func_uint8_t_u_u(p_56, ((-2L) && l_107))) , p_56) | 1UL)) | p_1482->g_94[0][3][1])))) > p_1482->g_70)) , p_56) > p_56) > p_56) , 0x7338C8B0L) , p_56), p_56)) , (-3L));
    if ((safe_rshift_func_uint16_t_u_s((safe_div_func_uint64_t_u_u((safe_div_func_int32_t_s_s(1L, (p_56 ^ ((l_120 = p_1482->g_119) != (void*)0)))), ((safe_lshift_func_uint16_t_u_s(((p_1482->g_70 && p_1482->g_72) , (safe_mul_func_int16_t_s_s(((*l_125) |= (-10L)), ((((void*)0 != &l_90[6][1][0]) && p_56) != p_1482->g_112[0])))), p_56)) , p_1482->g_11[4][0]))), 12)))
    { /* block id: 29 */
        int8_t l_126 = 0x2CL;
        int32_t l_138 = 0x645DA593L;
        int8_t **l_141 = (void*)0;
        int8_t **l_142[3];
        uint64_t *l_146 = &l_90[7][1][0];
        int32_t *l_161 = &l_138;
        int i;
        for (i = 0; i < 3; i++)
            l_142[i] = &l_85;
        l_138 = ((2UL < 18446744073709551606UL) == (((l_126 || p_56) || ((((p_1482->g_137 ^= ((*l_110) = (+(p_1482->g_11[4][0] != ((((safe_add_func_int32_t_s_s((p_56 < (~(!(safe_mul_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u(FAKE_DIVERGE(p_1482->group_0_offset, get_group_id(0), 10), p_56)), (((((safe_mod_func_uint64_t_u_u(p_56, ((p_1482->g_11[5][4] != 7L) & p_56))) & 0L) , p_56) && p_56) | 0x0FL)))))), l_126)) ^ l_126) <= p_56) & p_56))))) > p_1482->g_112[0]) , 0L) && p_1482->g_72)) > (-7L)));
        (*p_1482->g_119) = func_40((safe_mod_func_int32_t_s_s((((p_1482->g_143 |= ((l_85 = &l_126) == (p_56 , &p_1482->g_87))) , (GROUP_DIVERGE(1, 1) == (p_56 , p_1482->g_92))) , ((safe_mul_func_uint16_t_u_u(((l_138 ^= (&l_90[6][1][0] == (p_56 , l_146))) , FAKE_DIVERGE(p_1482->global_1_offset, get_global_id(1), 10)), ((safe_sub_func_uint8_t_u_u((safe_sub_func_uint64_t_u_u((safe_mul_func_uint16_t_u_u((+l_126), 0xB10FL)), p_1482->g_94[0][4][2])), GROUP_DIVERGE(2, 1))) <= l_126))) < p_56)), 0x3789DB10L)), p_1482);
        l_161 = ((((safe_mod_func_uint8_t_u_u(252UL, l_126)) | (safe_sub_func_uint8_t_u_u(0xCBL, 255UL))) > ((safe_mod_func_uint64_t_u_u(0x11D999481441D509L, p_1482->g_72)) ^ (safe_sub_func_int16_t_s_s((p_1482->g_109 <= 1UL), (((*l_125) = (p_1482->g_143 ^= 0L)) <= (-1L)))))) , (*p_1482->g_119));
        (*l_81) = (l_161 = ((p_56 && (safe_lshift_func_uint16_t_u_u(p_56, (((*l_71) = (*l_161)) & (**l_81))))) , (*p_1482->g_119)));
    }
    else
    { /* block id: 43 */
        int32_t **l_164 = &p_1482->g_50;
        l_164 = l_164;
        return p_1482->g_143;
    }
    l_179 = (safe_rshift_func_int8_t_s_u(((*l_86) = (safe_div_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u(1UL, (&l_107 != &l_107))), (p_1482->g_178 |= (((((p_1482->g_177[0][3][0] = (safe_rshift_func_int16_t_s_u(p_56, (p_1482->g_176 = ((p_1482->g_95 == ((safe_rshift_func_int16_t_s_s((!0x7659L), 8)) && p_56)) > p_1482->g_94[0][6][5]))))) & p_1482->g_112[0]) , l_93[9]) != &p_1482->g_94[0][7][6]) && 65535UL))))), p_1482->g_111));
    return p_1482->g_143;
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S0 c_1483;
    struct S0* p_1482 = &c_1483;
    struct S0 c_1484 = {
        {{(-10L),2L,0x1CD43096L,2L,(-10L),(-10L),2L},{(-10L),2L,0x1CD43096L,2L,(-10L),(-10L),2L},{(-10L),2L,0x1CD43096L,2L,(-10L),(-10L),2L},{(-10L),2L,0x1CD43096L,2L,(-10L),(-10L),2L},{(-10L),2L,0x1CD43096L,2L,(-10L),(-10L),2L},{(-10L),2L,0x1CD43096L,2L,(-10L),(-10L),2L}}, // p_1482->g_11
        (void*)0, // p_1482->g_50
        &p_1482->g_50, // p_1482->g_49
        0x081FL, // p_1482->g_70
        4294967295UL, // p_1482->g_72
        (void*)0, // p_1482->g_84
        0x1EL, // p_1482->g_87
        0x92L, // p_1482->g_92
        {{{0x0EL,0x5CL,1UL,0x0EL,3UL,1UL,1UL,3UL,0x0EL},{0x0EL,0x5CL,1UL,0x0EL,3UL,1UL,1UL,3UL,0x0EL},{0x0EL,0x5CL,1UL,0x0EL,3UL,1UL,1UL,3UL,0x0EL},{0x0EL,0x5CL,1UL,0x0EL,3UL,1UL,1UL,3UL,0x0EL},{0x0EL,0x5CL,1UL,0x0EL,3UL,1UL,1UL,3UL,0x0EL},{0x0EL,0x5CL,1UL,0x0EL,3UL,1UL,1UL,3UL,0x0EL},{0x0EL,0x5CL,1UL,0x0EL,3UL,1UL,1UL,3UL,0x0EL},{0x0EL,0x5CL,1UL,0x0EL,3UL,1UL,1UL,3UL,0x0EL}}}, // p_1482->g_94
        0x617CC220L, // p_1482->g_95
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_1482->g_104
        (-10L), // p_1482->g_109
        0x30164B9299A07EF0L, // p_1482->g_111
        {0x7DF8L}, // p_1482->g_112
        &p_1482->g_50, // p_1482->g_119
        0x6916BB261D961218L, // p_1482->g_137
        0x438CL, // p_1482->g_143
        0x76D9L, // p_1482->g_176
        {{{1UL,4294967295UL,1UL,4294967295UL,1UL,1UL,4294967295UL,1UL},{1UL,4294967295UL,1UL,4294967295UL,1UL,1UL,4294967295UL,1UL},{1UL,4294967295UL,1UL,4294967295UL,1UL,1UL,4294967295UL,1UL},{1UL,4294967295UL,1UL,4294967295UL,1UL,1UL,4294967295UL,1UL},{1UL,4294967295UL,1UL,4294967295UL,1UL,1UL,4294967295UL,1UL},{1UL,4294967295UL,1UL,4294967295UL,1UL,1UL,4294967295UL,1UL},{1UL,4294967295UL,1UL,4294967295UL,1UL,1UL,4294967295UL,1UL}}}, // p_1482->g_177
        (-1L), // p_1482->g_178
        4L, // p_1482->g_183
        (-4L), // p_1482->g_198
        4294967295UL, // p_1482->g_235
        &p_1482->g_235, // p_1482->g_234
        &p_1482->g_234, // p_1482->g_233
        {&p_1482->g_70,&p_1482->g_70,&p_1482->g_70,&p_1482->g_70}, // p_1482->g_247
        &p_1482->g_11[4][0], // p_1482->g_315
        {&p_1482->g_315,(void*)0,&p_1482->g_315,&p_1482->g_315,(void*)0,&p_1482->g_315,&p_1482->g_315,(void*)0,&p_1482->g_315}, // p_1482->g_314
        0x57216A0719E04E5DL, // p_1482->g_346
        18446744073709551615UL, // p_1482->g_361
        {{{&p_1482->g_361,&p_1482->g_361},{&p_1482->g_361,&p_1482->g_361},{&p_1482->g_361,&p_1482->g_361},{&p_1482->g_361,&p_1482->g_361},{&p_1482->g_361,&p_1482->g_361}},{{&p_1482->g_361,&p_1482->g_361},{&p_1482->g_361,&p_1482->g_361},{&p_1482->g_361,&p_1482->g_361},{&p_1482->g_361,&p_1482->g_361},{&p_1482->g_361,&p_1482->g_361}},{{&p_1482->g_361,&p_1482->g_361},{&p_1482->g_361,&p_1482->g_361},{&p_1482->g_361,&p_1482->g_361},{&p_1482->g_361,&p_1482->g_361},{&p_1482->g_361,&p_1482->g_361}},{{&p_1482->g_361,&p_1482->g_361},{&p_1482->g_361,&p_1482->g_361},{&p_1482->g_361,&p_1482->g_361},{&p_1482->g_361,&p_1482->g_361},{&p_1482->g_361,&p_1482->g_361}},{{&p_1482->g_361,&p_1482->g_361},{&p_1482->g_361,&p_1482->g_361},{&p_1482->g_361,&p_1482->g_361},{&p_1482->g_361,&p_1482->g_361},{&p_1482->g_361,&p_1482->g_361}}}, // p_1482->g_360
        0xA7C9AF68L, // p_1482->g_396
        {{{0x3466L,0x3466L,(-3L),(-4L),0x540BL},{0x3466L,0x3466L,(-3L),(-4L),0x540BL},{0x3466L,0x3466L,(-3L),(-4L),0x540BL},{0x3466L,0x3466L,(-3L),(-4L),0x540BL}},{{0x3466L,0x3466L,(-3L),(-4L),0x540BL},{0x3466L,0x3466L,(-3L),(-4L),0x540BL},{0x3466L,0x3466L,(-3L),(-4L),0x540BL},{0x3466L,0x3466L,(-3L),(-4L),0x540BL}},{{0x3466L,0x3466L,(-3L),(-4L),0x540BL},{0x3466L,0x3466L,(-3L),(-4L),0x540BL},{0x3466L,0x3466L,(-3L),(-4L),0x540BL},{0x3466L,0x3466L,(-3L),(-4L),0x540BL}},{{0x3466L,0x3466L,(-3L),(-4L),0x540BL},{0x3466L,0x3466L,(-3L),(-4L),0x540BL},{0x3466L,0x3466L,(-3L),(-4L),0x540BL},{0x3466L,0x3466L,(-3L),(-4L),0x540BL}},{{0x3466L,0x3466L,(-3L),(-4L),0x540BL},{0x3466L,0x3466L,(-3L),(-4L),0x540BL},{0x3466L,0x3466L,(-3L),(-4L),0x540BL},{0x3466L,0x3466L,(-3L),(-4L),0x540BL}},{{0x3466L,0x3466L,(-3L),(-4L),0x540BL},{0x3466L,0x3466L,(-3L),(-4L),0x540BL},{0x3466L,0x3466L,(-3L),(-4L),0x540BL},{0x3466L,0x3466L,(-3L),(-4L),0x540BL}},{{0x3466L,0x3466L,(-3L),(-4L),0x540BL},{0x3466L,0x3466L,(-3L),(-4L),0x540BL},{0x3466L,0x3466L,(-3L),(-4L),0x540BL},{0x3466L,0x3466L,(-3L),(-4L),0x540BL}},{{0x3466L,0x3466L,(-3L),(-4L),0x540BL},{0x3466L,0x3466L,(-3L),(-4L),0x540BL},{0x3466L,0x3466L,(-3L),(-4L),0x540BL},{0x3466L,0x3466L,(-3L),(-4L),0x540BL}},{{0x3466L,0x3466L,(-3L),(-4L),0x540BL},{0x3466L,0x3466L,(-3L),(-4L),0x540BL},{0x3466L,0x3466L,(-3L),(-4L),0x540BL},{0x3466L,0x3466L,(-3L),(-4L),0x540BL}},{{0x3466L,0x3466L,(-3L),(-4L),0x540BL},{0x3466L,0x3466L,(-3L),(-4L),0x540BL},{0x3466L,0x3466L,(-3L),(-4L),0x540BL},{0x3466L,0x3466L,(-3L),(-4L),0x540BL}}}, // p_1482->g_397
        0x286C82FCC29A0704L, // p_1482->g_469
        0L, // p_1482->g_497
        {{{&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497},{&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497},{&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497},{&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497},{&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497},{&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497},{&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497}},{{&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497},{&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497},{&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497},{&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497},{&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497},{&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497},{&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497,&p_1482->g_497}}}, // p_1482->g_496
        {&p_1482->g_496[1][2][1],&p_1482->g_496[1][2][1],&p_1482->g_496[1][2][1],&p_1482->g_496[1][2][1]}, // p_1482->g_495
        0xCF6AA2BCC67D870BL, // p_1482->g_548
        0x5817068BL, // p_1482->g_575
        0x5CA4L, // p_1482->g_579
        {{{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL}},{{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL}},{{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL}},{{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL}},{{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL}},{{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL}},{{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL},{0x5F35L,1UL,0x5B0DL,0x4FCBL}}}, // p_1482->g_581
        (-1L), // p_1482->g_652
        &p_1482->g_198, // p_1482->g_708
        {{&p_1482->g_708},{&p_1482->g_708},{&p_1482->g_708},{&p_1482->g_708},{&p_1482->g_708},{&p_1482->g_708},{&p_1482->g_708},{&p_1482->g_708},{&p_1482->g_708},{&p_1482->g_708}}, // p_1482->g_707
        {0UL,0UL,0UL,0UL}, // p_1482->g_750
        9UL, // p_1482->g_761
        0x7F23L, // p_1482->g_790
        {&p_1482->g_87,&p_1482->g_87,&p_1482->g_87,&p_1482->g_87,&p_1482->g_87,&p_1482->g_87,&p_1482->g_87,&p_1482->g_87}, // p_1482->g_855
        &p_1482->g_855[0], // p_1482->g_854
        {(void*)0,(void*)0}, // p_1482->g_888
        (void*)0, // p_1482->g_895
        (void*)0, // p_1482->g_931
        &p_1482->g_931, // p_1482->g_930
        &p_1482->g_930, // p_1482->g_929
        {0x4BEAB4FEB7D9A17DL,0x4BEAB4FEB7D9A17DL,0x4BEAB4FEB7D9A17DL,0x4BEAB4FEB7D9A17DL,0x4BEAB4FEB7D9A17DL,0x4BEAB4FEB7D9A17DL,0x4BEAB4FEB7D9A17DL,0x4BEAB4FEB7D9A17DL,0x4BEAB4FEB7D9A17DL}, // p_1482->g_964
        0x05443212L, // p_1482->g_1001
        (void*)0, // p_1482->g_1026
        &p_1482->g_1026, // p_1482->g_1025
        1UL, // p_1482->g_1068
        &p_1482->g_360[4][2][1], // p_1482->g_1113
        &p_1482->g_1113, // p_1482->g_1112
        0x83L, // p_1482->g_1133
        1UL, // p_1482->g_1170
        8L, // p_1482->g_1191
        {{{&p_1482->g_112[0],&p_1482->g_112[0]},{&p_1482->g_112[0],&p_1482->g_112[0]},{&p_1482->g_112[0],&p_1482->g_112[0]}},{{&p_1482->g_112[0],&p_1482->g_112[0]},{&p_1482->g_112[0],&p_1482->g_112[0]},{&p_1482->g_112[0],&p_1482->g_112[0]}},{{&p_1482->g_112[0],&p_1482->g_112[0]},{&p_1482->g_112[0],&p_1482->g_112[0]},{&p_1482->g_112[0],&p_1482->g_112[0]}},{{&p_1482->g_112[0],&p_1482->g_112[0]},{&p_1482->g_112[0],&p_1482->g_112[0]},{&p_1482->g_112[0],&p_1482->g_112[0]}}}, // p_1482->g_1212
        &p_1482->g_11[4][0], // p_1482->g_1213
        &p_1482->g_1025, // p_1482->g_1320
        0UL, // p_1482->g_1338
        1UL, // p_1482->g_1360
        1L, // p_1482->g_1395
        &p_1482->g_1395, // p_1482->g_1394
        9UL, // p_1482->g_1447
        0, // p_1482->v_collective
        sequence_input[get_global_id(0)], // p_1482->global_0_offset
        sequence_input[get_global_id(1)], // p_1482->global_1_offset
        sequence_input[get_global_id(2)], // p_1482->global_2_offset
        sequence_input[get_local_id(0)], // p_1482->local_0_offset
        sequence_input[get_local_id(1)], // p_1482->local_1_offset
        sequence_input[get_local_id(2)], // p_1482->local_2_offset
        sequence_input[get_group_id(0)], // p_1482->group_0_offset
        sequence_input[get_group_id(1)], // p_1482->group_1_offset
        sequence_input[get_group_id(2)], // p_1482->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_1483 = c_1484;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1482);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1482->g_11[i][j], "p_1482->g_11[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1482->g_70, "p_1482->g_70", print_hash_value);
    transparent_crc(p_1482->g_72, "p_1482->g_72", print_hash_value);
    transparent_crc(p_1482->g_87, "p_1482->g_87", print_hash_value);
    transparent_crc(p_1482->g_92, "p_1482->g_92", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_1482->g_94[i][j][k], "p_1482->g_94[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1482->g_95, "p_1482->g_95", print_hash_value);
    transparent_crc(p_1482->g_109, "p_1482->g_109", print_hash_value);
    transparent_crc(p_1482->g_111, "p_1482->g_111", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1482->g_112[i], "p_1482->g_112[i]", print_hash_value);

    }
    transparent_crc(p_1482->g_137, "p_1482->g_137", print_hash_value);
    transparent_crc(p_1482->g_143, "p_1482->g_143", print_hash_value);
    transparent_crc(p_1482->g_176, "p_1482->g_176", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_1482->g_177[i][j][k], "p_1482->g_177[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1482->g_178, "p_1482->g_178", print_hash_value);
    transparent_crc(p_1482->g_183, "p_1482->g_183", print_hash_value);
    transparent_crc(p_1482->g_198, "p_1482->g_198", print_hash_value);
    transparent_crc(p_1482->g_235, "p_1482->g_235", print_hash_value);
    transparent_crc(p_1482->g_346, "p_1482->g_346", print_hash_value);
    transparent_crc(p_1482->g_361, "p_1482->g_361", print_hash_value);
    transparent_crc(p_1482->g_396, "p_1482->g_396", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1482->g_397[i][j][k], "p_1482->g_397[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1482->g_469, "p_1482->g_469", print_hash_value);
    transparent_crc(p_1482->g_497, "p_1482->g_497", print_hash_value);
    transparent_crc(p_1482->g_548, "p_1482->g_548", print_hash_value);
    transparent_crc(p_1482->g_575, "p_1482->g_575", print_hash_value);
    transparent_crc(p_1482->g_579, "p_1482->g_579", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1482->g_581[i][j][k], "p_1482->g_581[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1482->g_652, "p_1482->g_652", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1482->g_750[i], "p_1482->g_750[i]", print_hash_value);

    }
    transparent_crc(p_1482->g_761, "p_1482->g_761", print_hash_value);
    transparent_crc(p_1482->g_790, "p_1482->g_790", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1482->g_964[i], "p_1482->g_964[i]", print_hash_value);

    }
    transparent_crc(p_1482->g_1001, "p_1482->g_1001", print_hash_value);
    transparent_crc(p_1482->g_1068, "p_1482->g_1068", print_hash_value);
    transparent_crc(p_1482->g_1133, "p_1482->g_1133", print_hash_value);
    transparent_crc(p_1482->g_1170, "p_1482->g_1170", print_hash_value);
    transparent_crc(p_1482->g_1191, "p_1482->g_1191", print_hash_value);
    transparent_crc(p_1482->g_1338, "p_1482->g_1338", print_hash_value);
    transparent_crc(p_1482->g_1360, "p_1482->g_1360", print_hash_value);
    transparent_crc(p_1482->g_1395, "p_1482->g_1395", print_hash_value);
    transparent_crc(p_1482->g_1447, "p_1482->g_1447", print_hash_value);
    transparent_crc(p_1482->v_collective, "p_1482->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
