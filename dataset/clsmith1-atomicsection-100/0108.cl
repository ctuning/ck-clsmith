// --atomics 4 ---fake_divergence -g 1,47,77 -l 1,1,1
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


// Seed: 108

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_2;
    volatile int32_t g_5;
    volatile int32_t g_6;
    volatile int32_t g_7;
    volatile int32_t g_8;
    int32_t g_9;
    volatile int32_t g_13;
    volatile int32_t g_14;
    int32_t g_15;
    int32_t g_21;
    int32_t *g_20;
    uint32_t g_62;
    int32_t g_65[9][3][1];
    int32_t g_75[3];
    uint64_t g_77;
    int32_t *g_95;
    int32_t **g_94;
    uint8_t g_129;
    uint8_t g_133;
    int8_t g_137[3];
    int64_t g_164;
    int16_t g_166;
    int16_t g_168;
    uint8_t g_200;
    uint32_t g_229;
    int8_t g_231[8];
    int32_t g_237;
    uint32_t g_238;
    uint16_t g_262;
    uint32_t g_272[1][10];
    int64_t g_333[10];
    int16_t g_392;
    uint64_t *g_398;
    uint64_t **g_397;
    uint64_t ** volatile * volatile g_396[10][2];
    uint32_t *g_410;
    uint32_t **g_409;
    uint16_t g_425;
    uint8_t *g_515;
    uint8_t ** volatile g_514[6];
    int64_t g_524;
    uint8_t g_527;
    volatile uint32_t g_622;
    volatile uint32_t *g_621;
    volatile uint32_t ** volatile g_620[8];
    volatile int16_t g_634[7][6];
    uint16_t g_718;
    int64_t g_749;
    int32_t g_803;
    int32_t ***g_823;
    int32_t ****g_822;
    int8_t ***g_874;
    uint32_t g_899;
    int8_t *g_912;
    int8_t **g_911;
    uint8_t **g_952;
    volatile uint32_t g_983[9][5][2];
    uint64_t g_1041[6];
    uint16_t *g_1073;
    uint16_t **g_1072;
    volatile uint32_t g_1076;
    volatile int32_t *g_1100[1];
    volatile int32_t ** volatile g_1099;
    int32_t * volatile g_1129[2][5][9];
    int32_t *g_1142;
    int32_t ** volatile g_1141;
    volatile uint32_t g_1291;
    int64_t *g_1311;
    int64_t **g_1310;
    int32_t g_1386;
    uint16_t ***g_1406;
    int32_t **g_1423;
    int64_t *g_1430[1];
    int64_t **g_1429;
    int32_t *g_1455[8][5];
    int32_t **g_1454[3][4];
    volatile int32_t g_1478;
    int8_t g_1603[8];
    int16_t g_1620[9];
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
uint8_t  func_1(struct S0 * p_1630);
int8_t  func_24(int64_t  p_25, uint64_t  p_26, int8_t  p_27, int64_t  p_28, int64_t  p_29, struct S0 * p_1630);
uint32_t  func_33(uint32_t  p_34, uint16_t  p_35, uint16_t  p_36, struct S0 * p_1630);
int16_t  func_38(int32_t * p_39, int32_t ** p_40, uint32_t  p_41, int32_t ** p_42, int32_t  p_43, struct S0 * p_1630);
int64_t  func_44(int32_t  p_45, int32_t  p_46, uint32_t  p_47, struct S0 * p_1630);
uint64_t  func_53(uint32_t  p_54, uint32_t  p_55, struct S0 * p_1630);
int32_t * func_59(uint32_t  p_60, struct S0 * p_1630);
int64_t  func_66(uint8_t  p_67, int8_t  p_68, uint64_t  p_69, int32_t * p_70, struct S0 * p_1630);
int32_t * func_80(int32_t  p_81, uint8_t  p_82, int32_t ** p_83, int32_t * p_84, uint64_t  p_85, struct S0 * p_1630);
uint8_t  func_87(int32_t  p_88, int8_t  p_89, int32_t ** p_90, int32_t * p_91, int32_t * p_92, struct S0 * p_1630);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1630->g_2 p_1630->g_21 p_1630->g_262 p_1630->g_94 p_1630->g_425 p_1630->g_8 p_1630->g_1620 p_1630->g_168 p_1630->g_231 p_1630->g_823 p_1630->g_95 p_1630->g_75 p_1630->g_6 p_1630->g_129 p_1630->g_15 p_1630->g_803 p_1630->g_1041 p_1630->g_822
 * writes: p_1630->g_2 p_1630->g_9 p_1630->g_15 p_1630->g_20 p_1630->g_21 p_1630->g_262 p_1630->g_95 p_1630->g_874 p_1630->g_168 p_1630->g_75 p_1630->g_129 p_1630->g_133 p_1630->g_137 p_1630->g_62 p_1630->g_397
 */
uint8_t  func_1(struct S0 * p_1630)
{ /* block id: 4 */
    int64_t l_12[5][8][1] = {{{4L},{4L},{4L},{4L},{4L},{4L},{4L},{4L}},{{4L},{4L},{4L},{4L},{4L},{4L},{4L},{4L}},{{4L},{4L},{4L},{4L},{4L},{4L},{4L},{4L}},{{4L},{4L},{4L},{4L},{4L},{4L},{4L},{4L}},{{4L},{4L},{4L},{4L},{4L},{4L},{4L},{4L}}};
    uint8_t l_1385[5][2] = {{1UL,1UL},{1UL,1UL},{1UL,1UL},{1UL,1UL},{1UL,1UL}};
    int32_t **l_1421 = (void*)0;
    uint32_t *l_1433 = &p_1630->g_272[0][2];
    uint32_t **l_1432 = &l_1433;
    uint32_t ***l_1431 = &l_1432;
    int8_t **l_1441 = &p_1630->g_912;
    int32_t ***l_1444[3];
    uint64_t l_1563 = 7UL;
    int32_t *l_1607 = (void*)0;
    int8_t ****l_1608 = &p_1630->g_874;
    int8_t l_1609 = 0x3CL;
    uint16_t *l_1612 = &p_1630->g_262;
    int32_t *****l_1619 = (void*)0;
    uint32_t l_1621 = 4294967295UL;
    int16_t *l_1622 = &p_1630->g_168;
    int8_t l_1623 = 4L;
    uint32_t l_1624[5] = {0UL,0UL,0UL,0UL,0UL};
    uint16_t l_1625[1][6];
    uint64_t ***l_1626 = &p_1630->g_397;
    uint64_t **l_1627 = &p_1630->g_398;
    int32_t *l_1628 = (void*)0;
    int32_t l_1629 = 0x50648D6CL;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_1444[i] = &p_1630->g_1423;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 6; j++)
            l_1625[i][j] = 4UL;
    }
    for (p_1630->g_2 = (-24); (p_1630->g_2 >= (-28)); p_1630->g_2--)
    { /* block id: 7 */
        int64_t l_32[1][8];
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 8; j++)
                l_32[i][j] = 0x29D707D8EB7BFBC3L;
        }
        for (p_1630->g_9 = 0; (p_1630->g_9 >= 27); p_1630->g_9++)
        { /* block id: 10 */
            uint8_t l_1132 = 0x63L;
            int32_t l_1363[6][1][3] = {{{5L,(-1L),(-4L)}},{{5L,(-1L),(-4L)}},{{5L,(-1L),(-4L)}},{{5L,(-1L),(-4L)}},{{5L,(-1L),(-4L)}},{{5L,(-1L),(-4L)}}};
            int i, j, k;
            for (p_1630->g_15 = 0; (p_1630->g_15 <= 0); p_1630->g_15 += 1)
            { /* block id: 13 */
                int32_t **l_16 = (void*)0;
                int32_t **l_17 = (void*)0;
                int32_t *l_19 = (void*)0;
                int32_t **l_18[7][7] = {{&l_19,&l_19,&l_19,&l_19,&l_19,&l_19,&l_19},{&l_19,&l_19,&l_19,&l_19,&l_19,&l_19,&l_19},{&l_19,&l_19,&l_19,&l_19,&l_19,&l_19,&l_19},{&l_19,&l_19,&l_19,&l_19,&l_19,&l_19,&l_19},{&l_19,&l_19,&l_19,&l_19,&l_19,&l_19,&l_19},{&l_19,&l_19,&l_19,&l_19,&l_19,&l_19,&l_19},{&l_19,&l_19,&l_19,&l_19,&l_19,&l_19,&l_19}};
                int i, j;
                p_1630->g_20 = (void*)0;
                for (p_1630->g_21 = 0; (p_1630->g_21 >= 0); p_1630->g_21 -= 1)
                { /* block id: 17 */
                    uint64_t l_37 = 0UL;
                    int16_t l_48 = 0x0456L;
                    (1 + 1);
                }
            }
        }
    }
    for (p_1630->g_262 = 0; (p_1630->g_262 <= 7); p_1630->g_262 += 1)
    { /* block id: 721 */
        int32_t l_1376 = 0x1DBEA877L;
        uint32_t *l_1377 = &p_1630->g_62;
        uint64_t *l_1384 = &p_1630->g_1041[4];
        int32_t l_1387 = 0x63FA89D2L;
        int64_t *l_1418 = &l_12[4][3][0];
        int32_t l_1425 = (-1L);
        int8_t **l_1442 = (void*)0;
        int32_t l_1482[6] = {0L,0L,0L,0L,0L,0L};
        uint16_t *l_1489 = &p_1630->g_262;
        int64_t ***l_1574 = &p_1630->g_1429;
        uint8_t l_1604 = 0xD9L;
        int i;
        (1 + 1);
    }
    (*p_1630->g_94) = l_1607;
    (***p_1630->g_822) = ((((((*l_1608) = &l_1441) == &p_1630->g_911) && p_1630->g_425) | ((-1L) >= 65532UL)) , ((((*l_1626) = ((((((**l_1431) = func_80(l_1609, (((safe_add_func_uint16_t_u_u(((*l_1612) = p_1630->g_8), (safe_sub_func_int8_t_s_s((safe_add_func_int16_t_s_s(((*l_1622) ^= ((safe_sub_func_uint32_t_u_u((l_1619 != l_1619), p_1630->g_1620[4])) ^ l_1621)), l_1623)), (-1L))))) || p_1630->g_231[3]) , l_1624[4]), (*p_1630->g_823), (*p_1630->g_94), l_1625[0][2], p_1630)) != &p_1630->g_272[0][2]) >= p_1630->g_803) & p_1630->g_1041[1]) , &p_1630->g_398)) == l_1627) , l_1628));
    return l_1629;
}


/* ------------------------------------------ */
/* 
 * reads : p_1630->g_822 p_1630->g_823 p_1630->g_94 p_1630->g_1141 p_1630->g_15 p_1630->g_1099 p_1630->g_1100 p_1630->g_527 p_1630->g_912 p_1630->g_137 p_1630->g_7 p_1630->g_168 p_1630->g_983 p_1630->g_515 p_1630->g_129 p_1630->g_62 p_1630->g_272 p_1630->g_9 p_1630->g_634 p_1630->g_718 p_1630->g_164 p_1630->g_911 p_1630->g_95 p_1630->g_229 p_1630->g_1041 p_1630->g_262 p_1630->g_1291 p_1630->g_1310 p_1630->g_899 p_1630->g_65 p_1630->g_524 p_1630->g_13 p_1630->g_749
 * writes: p_1630->g_95 p_1630->g_20 p_1630->g_1142 p_1630->g_333 p_1630->g_7 p_1630->g_13 p_1630->g_527 p_1630->g_129 p_1630->g_133 p_1630->g_62 p_1630->g_262 p_1630->g_166 p_1630->g_168 p_1630->g_229 p_1630->g_1041 p_1630->g_718 p_1630->g_899 p_1630->g_392 p_1630->g_137 p_1630->g_749
 */
int8_t  func_24(int64_t  p_25, uint64_t  p_26, int8_t  p_27, int64_t  p_28, int64_t  p_29, struct S0 * p_1630)
{ /* block id: 621 */
    int32_t *l_1137[8][4] = {{&p_1630->g_803,&p_1630->g_803,(void*)0,&p_1630->g_803},{&p_1630->g_803,&p_1630->g_803,(void*)0,&p_1630->g_803},{&p_1630->g_803,&p_1630->g_803,(void*)0,&p_1630->g_803},{&p_1630->g_803,&p_1630->g_803,(void*)0,&p_1630->g_803},{&p_1630->g_803,&p_1630->g_803,(void*)0,&p_1630->g_803},{&p_1630->g_803,&p_1630->g_803,(void*)0,&p_1630->g_803},{&p_1630->g_803,&p_1630->g_803,(void*)0,&p_1630->g_803},{&p_1630->g_803,&p_1630->g_803,(void*)0,&p_1630->g_803}};
    uint16_t ***l_1153 = &p_1630->g_1072;
    uint16_t ***l_1154 = (void*)0;
    int64_t l_1219 = 0L;
    int8_t l_1292 = 3L;
    uint8_t *l_1293 = &p_1630->g_133;
    int64_t **l_1309 = (void*)0;
    int32_t *****l_1312 = &p_1630->g_822;
    uint16_t l_1361 = 65535UL;
    int i, j;
    for (p_28 = 0; (p_28 <= 5); p_28 += 1)
    { /* block id: 624 */
        int32_t **l_1138 = (void*)0;
        int32_t **l_1139 = (void*)0;
        int32_t **l_1140 = &p_1630->g_20;
        int64_t *l_1155 = &p_1630->g_333[2];
        uint16_t l_1156 = 0x5E73L;
        uint64_t l_1157 = 0x5A4356F194B9598EL;
        uint8_t ****l_1165 = (void*)0;
        int32_t l_1238[6][3][9] = {{{(-3L),0L,0x1E5C1CE6L,0x2D5AAF15L,0x2D5AAF15L,0x1E5C1CE6L,0L,(-3L),9L},{(-3L),0L,0x1E5C1CE6L,0x2D5AAF15L,0x2D5AAF15L,0x1E5C1CE6L,0L,(-3L),9L},{(-3L),0L,0x1E5C1CE6L,0x2D5AAF15L,0x2D5AAF15L,0x1E5C1CE6L,0L,(-3L),9L}},{{(-3L),0L,0x1E5C1CE6L,0x2D5AAF15L,0x2D5AAF15L,0x1E5C1CE6L,0L,(-3L),9L},{(-3L),0L,0x1E5C1CE6L,0x2D5AAF15L,0x2D5AAF15L,0x1E5C1CE6L,0L,(-3L),9L},{(-3L),0L,0x1E5C1CE6L,0x2D5AAF15L,0x2D5AAF15L,0x1E5C1CE6L,0L,(-3L),9L}},{{(-3L),0L,0x1E5C1CE6L,0x2D5AAF15L,0x2D5AAF15L,0x1E5C1CE6L,0L,(-3L),9L},{(-3L),0L,0x1E5C1CE6L,0x2D5AAF15L,0x2D5AAF15L,0x1E5C1CE6L,0L,(-3L),9L},{(-3L),0L,0x1E5C1CE6L,0x2D5AAF15L,0x2D5AAF15L,0x1E5C1CE6L,0L,(-3L),9L}},{{(-3L),0L,0x1E5C1CE6L,0x2D5AAF15L,0x2D5AAF15L,0x1E5C1CE6L,0L,(-3L),9L},{(-3L),0L,0x1E5C1CE6L,0x2D5AAF15L,0x2D5AAF15L,0x1E5C1CE6L,0L,(-3L),9L},{(-3L),0L,0x1E5C1CE6L,0x2D5AAF15L,0x2D5AAF15L,0x1E5C1CE6L,0L,(-3L),9L}},{{(-3L),0L,0x1E5C1CE6L,0x2D5AAF15L,0x2D5AAF15L,0x1E5C1CE6L,0L,(-3L),9L},{(-3L),0L,0x1E5C1CE6L,0x2D5AAF15L,0x2D5AAF15L,0x1E5C1CE6L,0L,(-3L),9L},{(-3L),0L,0x1E5C1CE6L,0x2D5AAF15L,0x2D5AAF15L,0x1E5C1CE6L,0L,(-3L),9L}},{{(-3L),0L,0x1E5C1CE6L,0x2D5AAF15L,0x2D5AAF15L,0x1E5C1CE6L,0L,(-3L),9L},{(-3L),0L,0x1E5C1CE6L,0x2D5AAF15L,0x2D5AAF15L,0x1E5C1CE6L,0L,(-3L),9L},{(-3L),0L,0x1E5C1CE6L,0x2D5AAF15L,0x2D5AAF15L,0x1E5C1CE6L,0L,(-3L),9L}}};
        int8_t l_1275[6];
        uint32_t *l_1300[4][2] = {{&p_1630->g_238,&p_1630->g_229},{&p_1630->g_238,&p_1630->g_229},{&p_1630->g_238,&p_1630->g_229},{&p_1630->g_238,&p_1630->g_229}};
        int32_t l_1338 = (-1L);
        uint32_t l_1341 = 0xB2DFED23L;
        int32_t l_1342 = (-2L);
        int i, j, k;
        for (i = 0; i < 6; i++)
            l_1275[i] = 1L;
        (*p_1630->g_1141) = ((*l_1140) = (l_1137[0][2] = ((***p_1630->g_822) = l_1137[0][2])));
        (**p_1630->g_1099) = ((p_29 < (safe_mod_func_int32_t_s_s(0L, (((((safe_sub_func_uint16_t_u_u(p_25, (p_25 <= ((*l_1155) = ((safe_rshift_func_int16_t_s_s(p_29, ((0x308A845F4FED235AL == 0xDA23AB83C407EDF2L) || (p_29 ^ ((safe_add_func_int64_t_s_s((((((p_25 & p_1630->g_15) , p_25) , l_1153) != l_1154) <= 0x2FL), p_28)) && p_25))))) == GROUP_DIVERGE(0, 1)))))) && p_25) ^ p_28) & l_1156) && p_29)))) != l_1157);
        for (p_1630->g_527 = 0; (p_1630->g_527 <= 5); p_1630->g_527 += 1)
        { /* block id: 634 */
            uint64_t l_1162 = 0x719C1C742B404A92L;
            uint8_t ****l_1166 = (void*)0;
            int32_t l_1167 = (-1L);
            int32_t l_1213[10][10] = {{0x363C2A47L,0x580F1A96L,9L,0x433E09D9L,5L,0x433E09D9L,9L,0x580F1A96L,0x363C2A47L,9L},{0x363C2A47L,0x580F1A96L,9L,0x433E09D9L,5L,0x433E09D9L,9L,0x580F1A96L,0x363C2A47L,9L},{0x363C2A47L,0x580F1A96L,9L,0x433E09D9L,5L,0x433E09D9L,9L,0x580F1A96L,0x363C2A47L,9L},{0x363C2A47L,0x580F1A96L,9L,0x433E09D9L,5L,0x433E09D9L,9L,0x580F1A96L,0x363C2A47L,9L},{0x363C2A47L,0x580F1A96L,9L,0x433E09D9L,5L,0x433E09D9L,9L,0x580F1A96L,0x363C2A47L,9L},{0x363C2A47L,0x580F1A96L,9L,0x433E09D9L,5L,0x433E09D9L,9L,0x580F1A96L,0x363C2A47L,9L},{0x363C2A47L,0x580F1A96L,9L,0x433E09D9L,5L,0x433E09D9L,9L,0x580F1A96L,0x363C2A47L,9L},{0x363C2A47L,0x580F1A96L,9L,0x433E09D9L,5L,0x433E09D9L,9L,0x580F1A96L,0x363C2A47L,9L},{0x363C2A47L,0x580F1A96L,9L,0x433E09D9L,5L,0x433E09D9L,9L,0x580F1A96L,0x363C2A47L,9L},{0x363C2A47L,0x580F1A96L,9L,0x433E09D9L,5L,0x433E09D9L,9L,0x580F1A96L,0x363C2A47L,9L}};
            int32_t l_1243 = 1L;
            int32_t l_1261 = 1L;
            uint16_t l_1305 = 0UL;
            int i, j;
            l_1167 |= (!(safe_lshift_func_uint8_t_u_u((safe_sub_func_int64_t_s_s((((0x17B621B1L > (~(((l_1162 || ((((safe_sub_func_uint16_t_u_u((!(0x5831L ^ ((l_1166 = l_1165) == (void*)0))), (p_28 == ((*p_1630->g_912) & p_26)))) || (p_26 >= p_25)) , 5UL) , p_1630->g_7)) | p_1630->g_168) >= 0x00C8L))) <= 0xBCL) ^ p_25), GROUP_DIVERGE(2, 1))), p_28)));
            for (p_26 = 0; (p_26 <= 1); p_26 += 1)
            { /* block id: 639 */
                uint32_t l_1168[10] = {4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL};
                int32_t l_1181[8][7] = {{0x4FC6F955L,0x0690D3B5L,0x0690D3B5L,0x4FC6F955L,0L,(-1L),(-1L)},{0x4FC6F955L,0x0690D3B5L,0x0690D3B5L,0x4FC6F955L,0L,(-1L),(-1L)},{0x4FC6F955L,0x0690D3B5L,0x0690D3B5L,0x4FC6F955L,0L,(-1L),(-1L)},{0x4FC6F955L,0x0690D3B5L,0x0690D3B5L,0x4FC6F955L,0L,(-1L),(-1L)},{0x4FC6F955L,0x0690D3B5L,0x0690D3B5L,0x4FC6F955L,0L,(-1L),(-1L)},{0x4FC6F955L,0x0690D3B5L,0x0690D3B5L,0x4FC6F955L,0L,(-1L),(-1L)},{0x4FC6F955L,0x0690D3B5L,0x0690D3B5L,0x4FC6F955L,0L,(-1L),(-1L)},{0x4FC6F955L,0x0690D3B5L,0x0690D3B5L,0x4FC6F955L,0L,(-1L),(-1L)}};
                uint8_t *l_1184 = &p_1630->g_133;
                uint32_t ***l_1207 = &p_1630->g_409;
                uint32_t *l_1212[1];
                uint16_t *l_1218 = &p_1630->g_262;
                uint16_t l_1237 = 0UL;
                uint64_t l_1245 = 8UL;
                int32_t ****l_1248 = &p_1630->g_823;
                int32_t l_1262 = (-5L);
                int32_t *****l_1313 = (void*)0;
                int i, j, k;
                for (i = 0; i < 1; i++)
                    l_1212[i] = &l_1168[8];
                l_1219 = (p_1630->g_983[p_26][(p_26 + 2)][p_26] , (p_1630->g_983[p_26][(p_26 + 2)][p_26] , (p_26 ^ ((l_1168[8] || ((safe_lshift_func_uint8_t_u_u((safe_div_func_uint16_t_u_u(((safe_div_func_int8_t_s_s(((safe_div_func_int16_t_s_s(((safe_mul_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(((*p_1630->g_515)++), ((*l_1184) = l_1167))), (((safe_mod_func_uint16_t_u_u((((safe_rshift_func_uint16_t_u_s((safe_mul_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u((safe_div_func_uint64_t_u_u((safe_sub_func_int32_t_s_s(((safe_mod_func_uint16_t_u_u(((*l_1218) = (safe_sub_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u((!(l_1181[0][4] = ((safe_div_func_uint16_t_u_u((0x683DB7DDAC55DD26L != (((void*)0 == l_1207) < ((safe_lshift_func_int8_t_s_u((safe_mod_func_uint32_t_u_u((++p_1630->g_62), (safe_mod_func_int64_t_s_s((0x4918L & l_1162), p_25)))), 2)) & FAKE_DIVERGE(p_1630->global_2_offset, get_global_id(2), 10)))), l_1168[8])) ^ p_26))), p_26)), l_1168[8]))), l_1167)) , l_1162), (-9L))), p_1630->g_272[0][2])), p_28)), p_1630->g_9)), 3)) ^ 0L) | 1UL), p_1630->g_634[2][1])) || l_1162) >= 1L))) > l_1213[7][7]), 3UL)) , (-9L)), 0xF2L)) < p_29), 0xDE49L)), 2)) ^ p_29)) && p_27))));
                for (l_1167 = 1; (l_1167 >= 0); l_1167 -= 1)
                { /* block id: 648 */
                    int16_t *l_1222 = &p_1630->g_166;
                    int16_t *l_1223 = &p_1630->g_168;
                    int32_t l_1236 = 0x0F46EE9EL;
                    int32_t l_1240 = 1L;
                    int32_t l_1241 = (-7L);
                    int32_t l_1242 = 0x19907BF9L;
                    int32_t l_1244 = 0x2F8BF8DFL;
                    int32_t l_1271[7] = {0x342AF5F4L,(-1L),0x342AF5F4L,0x342AF5F4L,(-1L),0x342AF5F4L,0x342AF5F4L};
                    int32_t l_1273 = 0x4670F2ABL;
                    int i, j, k;
                    if ((p_1630->g_983[(p_28 + 2)][(p_26 + 3)][p_26] || ((((*l_1223) &= ((*l_1222) = 0x6C1AL)) , func_59(((p_1630->g_718 && (safe_div_func_int32_t_s_s(p_27, p_27))) > (p_28 && ((safe_rshift_func_uint8_t_u_s((safe_add_func_uint16_t_u_u((~(((((((((safe_div_func_int16_t_s_s(((!((0x39L >= (safe_add_func_int8_t_s_s((safe_rshift_func_uint16_t_u_s(((l_1236 = ((1UL != (!p_25)) && l_1236)) , p_25), 8)), 0L))) , 0xEFE6D8E8L)) == GROUP_DIVERGE(1, 1)), p_27)) != FAKE_DIVERGE(p_1630->global_2_offset, get_global_id(2), 10)) < p_1630->g_164) || (*p_1630->g_515)) , p_25) ^ p_25) && p_28) > (**p_1630->g_911)) != p_29)), 1UL)), l_1237)) , p_27))), p_1630)) != &l_1181[1][2])))
                    { /* block id: 652 */
                        int32_t l_1239 = 1L;
                        int i, j;
                        l_1245--;
                        l_1238[0][0][8] = (p_1630->g_129 < (0x66L >= ((void*)0 != l_1248)));
                        (***l_1248) = (void*)0;
                    }
                    else
                    { /* block id: 656 */
                        uint32_t *l_1249 = &p_1630->g_229;
                        int16_t **l_1252 = &l_1223;
                        int32_t l_1263 = 0x315CAED4L;
                        int32_t l_1264 = 1L;
                        int32_t l_1265 = (-6L);
                        int64_t l_1266 = 0x375F919F1B193C2AL;
                        int32_t l_1267 = (-9L);
                        int32_t l_1268 = 0x12498D54L;
                        int32_t l_1269 = (-2L);
                        int32_t l_1270[4];
                        int32_t l_1272[5];
                        int16_t l_1274 = 9L;
                        uint16_t l_1276 = 0x52BBL;
                        int i;
                        for (i = 0; i < 4; i++)
                            l_1270[i] = 9L;
                        for (i = 0; i < 5; i++)
                            l_1272[i] = 1L;
                        if (l_1244)
                            break;
                        l_1261 |= (&p_27 != ((((*l_1249) &= FAKE_DIVERGE(p_1630->global_0_offset, get_global_id(0), 10)) , (0x4BL >= (safe_rshift_func_int8_t_s_u(((void*)0 != l_1252), ((safe_mod_func_int16_t_s_s(((((safe_lshift_func_uint16_t_u_s((l_1242 &= p_26), ((p_1630->g_1041[(p_26 + 4)] &= 0xCFAACCD680428EF9L) == (safe_lshift_func_uint8_t_u_u(0x3EL, 3))))) , p_26) | (l_1244 = (safe_lshift_func_uint16_t_u_s(l_1240, 7)))) & l_1213[7][9]), p_28)) , (*p_1630->g_515)))))) , (*p_1630->g_911)));
                        l_1236 &= 0x6F62B477L;
                        l_1276--;
                    }
                    return p_26;
                }
                for (l_1261 = 0; (l_1261 <= 1); l_1261 += 1)
                { /* block id: 670 */
                    uint32_t l_1286 = 0xA903FD28L;
                    uint8_t *l_1294[2][2][6] = {{{&p_1630->g_133,&p_1630->g_133,&p_1630->g_133,&p_1630->g_133,&p_1630->g_133,&p_1630->g_133},{&p_1630->g_133,&p_1630->g_133,&p_1630->g_133,&p_1630->g_133,&p_1630->g_133,&p_1630->g_133}},{{&p_1630->g_133,&p_1630->g_133,&p_1630->g_133,&p_1630->g_133,&p_1630->g_133,&p_1630->g_133},{&p_1630->g_133,&p_1630->g_133,&p_1630->g_133,&p_1630->g_133,&p_1630->g_133,&p_1630->g_133}}};
                    int i, j, k;
                    l_1167 = (safe_sub_func_uint16_t_u_u((((6L == (safe_unary_minus_func_int16_t_s((safe_mul_func_int8_t_s_s((l_1167 || (((p_25 , 3UL) < (safe_mod_func_int8_t_s_s((0L && (((l_1262 = ((((l_1286 && (safe_div_func_uint64_t_u_u(p_25, (safe_mod_func_int32_t_s_s((0L | (((*l_1218) |= p_25) >= (-1L))), p_1630->g_1291))))) ^ 0x49L) && p_29) < l_1292)) , l_1293) != l_1294[1][0][5])), l_1167))) , 7UL)), l_1181[1][4]))))) , p_25) < 0L), l_1213[7][9]));
                }
                for (p_1630->g_129 = 0; (p_1630->g_129 <= 5); p_1630->g_129 += 1)
                { /* block id: 677 */
                    uint32_t *l_1301[4];
                    uint32_t **l_1302 = &l_1301[3];
                    int32_t l_1306 = 0x41469F6BL;
                    int i;
                    for (i = 0; i < 4; i++)
                        l_1301[i] = &p_1630->g_238;
                    (**p_1630->g_1099) = (l_1305 |= (((safe_add_func_int64_t_s_s((((safe_unary_minus_func_uint32_t_u(((safe_lshift_func_int16_t_s_s((l_1300[2][0] != ((*l_1302) = l_1301[1])), ((-10L) == (~65530UL)))) && ((0x6066L & ((l_1212[0] == (void*)0) , p_1630->g_272[0][0])) & (safe_div_func_int8_t_s_s(0x12L, (**p_1630->g_911))))))) == (-1L)) , p_25), p_26)) < 0x66F6L) || p_28));
                    (****l_1312) = func_59((l_1306 ^ (safe_sub_func_int32_t_s_s((l_1309 == p_1630->g_1310), (l_1312 == l_1313)))), p_1630);
                }
            }
        }
        for (p_1630->g_718 = 0; (p_1630->g_718 <= 5); p_1630->g_718 += 1)
        { /* block id: 687 */
            int64_t l_1321 = 1L;
            uint32_t l_1340[1];
            int32_t l_1362 = 0x03BC232DL;
            int i;
            for (i = 0; i < 1; i++)
                l_1340[i] = 1UL;
            for (p_1630->g_899 = 0; (p_1630->g_899 <= 5); p_1630->g_899 += 1)
            { /* block id: 690 */
                int32_t l_1314 = 8L;
                uint32_t *l_1315 = &p_1630->g_62;
                uint16_t *l_1316 = &p_1630->g_262;
                int16_t *l_1339 = &p_1630->g_392;
                int i;
                l_1238[2][1][2] |= (p_27 && (8L && ((((p_1630->g_1041[p_1630->g_899] = p_27) > (5L >= ((p_27 && ((*l_1315) |= (p_1630->g_137[1] > l_1314))) || (((((*l_1316) = p_26) == ((safe_sub_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u(p_27, p_28)), p_27)) , p_27)) >= l_1314) || l_1321)))) & (**p_1630->g_911)) >= (*p_1630->g_515))));
                l_1341 = ((!6UL) >= (((safe_rshift_func_int8_t_s_u(p_27, ((*l_1293) = p_26))) < (safe_mul_func_uint8_t_u_u((((void*)0 != l_1309) ^ p_1630->g_634[0][4]), (safe_sub_func_uint8_t_u_u((*p_1630->g_515), (((safe_mul_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_u((+(safe_sub_func_uint16_t_u_u((((((((((*p_1630->g_912) = (safe_mul_func_int16_t_s_s(((*l_1339) = ((safe_sub_func_uint32_t_u_u(((+(-1L)) ^ ((((**p_1630->g_911) && l_1314) != p_1630->g_1041[p_1630->g_899]) != l_1338)), 0x4C0040DBL)) != p_28)), l_1340[0]))) && p_29) <= (-6L)) < p_26) != 0xEAL) != p_1630->g_1041[p_1630->g_899]) <= l_1340[0]) < p_1630->g_65[1][2][0]), (-1L)))), 5)), p_1630->g_527)) , l_1321) >= p_25)))))) > p_1630->g_1041[p_1630->g_899]));
                l_1342 |= l_1340[0];
            }
            if (p_28)
                continue;
            l_1362 |= (p_1630->g_524 , ((((safe_add_func_int64_t_s_s((safe_sub_func_uint8_t_u_u((safe_mod_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(l_1321, 0x47L)), (safe_sub_func_uint16_t_u_u((safe_add_func_int16_t_s_s(1L, ((FAKE_DIVERGE(p_1630->local_1_offset, get_local_id(1), 10) || (safe_lshift_func_int8_t_s_u((safe_mul_func_uint8_t_u_u(0xB7L, 255UL)), ((*p_1630->g_515) = p_28)))) , p_1630->g_13))), (safe_div_func_uint64_t_u_u(1UL, 5L)))))), (*p_1630->g_912))), l_1361)) != (**p_1630->g_911)) <= p_27) > p_27));
            l_1362 = p_26;
        }
    }
    for (p_1630->g_749 = 0; (p_1630->g_749 <= 0); p_1630->g_749 += 1)
    { /* block id: 709 */
        int i;
        return p_1630->g_137[(p_1630->g_749 + 2)];
    }
    return p_29;
}


/* ------------------------------------------ */
/* 
 * reads : p_1630->g_803 p_1630->g_75 p_1630->g_94
 * writes: p_1630->g_803 p_1630->g_75 p_1630->g_95
 */
uint32_t  func_33(uint32_t  p_34, uint16_t  p_35, uint16_t  p_36, struct S0 * p_1630)
{ /* block id: 611 */
    int64_t l_1131 = 0x178F7E6C2ABB39C1L;
    for (p_1630->g_803 = 11; (p_1630->g_803 != (-7)); p_1630->g_803 = safe_sub_func_int8_t_s_s(p_1630->g_803, 7))
    { /* block id: 614 */
        int32_t *l_1130 = &p_1630->g_75[2];
        (*l_1130) ^= p_36;
        (*p_1630->g_94) = l_1130;
        if ((*l_1130))
            break;
        return p_36;
    }
    return l_1131;
}


/* ------------------------------------------ */
/* 
 * reads : p_1630->g_392 p_1630->g_129 p_1630->g_164 p_1630->g_62 p_1630->g_137 p_1630->g_77 p_1630->g_1041 p_1630->g_803 p_1630->g_15 p_1630->g_911 p_1630->g_912 p_1630->g_1072 p_1630->g_262 p_1630->g_20 p_1630->g_1076 p_1630->g_1099 p_1630->g_333 p_1630->g_1100
 * writes: p_1630->g_392 p_1630->g_129 p_1630->g_164 p_1630->g_62 p_1630->g_166 p_1630->g_77 p_1630->g_1041 p_1630->g_803 p_1630->g_1100 p_1630->g_899 p_1630->g_7 p_1630->g_13
 */
int16_t  func_38(int32_t * p_39, int32_t ** p_40, uint32_t  p_41, int32_t ** p_42, int32_t  p_43, struct S0 * p_1630)
{ /* block id: 578 */
    uint16_t *l_1052 = (void*)0;
    uint16_t **l_1051 = &l_1052;
    int32_t l_1075 = 0x7E112F0AL;
    int32_t l_1077 = 0x3185EB56L;
    int16_t l_1096[3][6] = {{(-10L),(-10L),(-10L),(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L),(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L),(-10L),(-10L),(-10L)}};
    int32_t ****l_1097 = &p_1630->g_823;
    uint32_t l_1098 = 1UL;
    int64_t ***l_1101 = (void*)0;
    int64_t ***l_1102 = (void*)0;
    int64_t *l_1105 = &p_1630->g_749;
    int64_t **l_1104 = &l_1105;
    int64_t ***l_1103 = &l_1104;
    int8_t ****l_1122 = &p_1630->g_874;
    uint32_t *l_1123 = (void*)0;
    uint32_t *l_1124 = (void*)0;
    uint32_t *l_1125 = &p_1630->g_899;
    int64_t l_1126 = 0L;
    int i, j;
    for (p_1630->g_392 = 0; (p_1630->g_392 > 29); p_1630->g_392++)
    { /* block id: 581 */
        uint64_t *l_1058 = (void*)0;
        uint64_t *l_1059 = &p_1630->g_1041[0];
        int32_t l_1074 = (-1L);
        for (p_1630->g_129 = 0; (p_1630->g_129 <= 5); p_1630->g_129 += 1)
        { /* block id: 584 */
            uint16_t *l_1049 = &p_1630->g_718;
            uint16_t **l_1048 = &l_1049;
            for (p_1630->g_164 = 2; (p_1630->g_164 >= 0); p_1630->g_164 -= 1)
            { /* block id: 587 */
                for (p_1630->g_62 = 0; (p_1630->g_62 <= 5); p_1630->g_62 += 1)
                { /* block id: 590 */
                    int16_t *l_1038 = &p_1630->g_166;
                    uint64_t *l_1039 = &p_1630->g_77;
                    uint64_t *l_1040 = &p_1630->g_1041[0];
                    uint32_t *l_1043 = &p_1630->g_272[0][2];
                    uint32_t **l_1042 = &l_1043;
                    uint32_t ***l_1044[4] = {&l_1042,&l_1042,&l_1042,&l_1042};
                    uint32_t **l_1045[1][7];
                    uint16_t ***l_1050 = &l_1048;
                    int32_t *l_1053 = &p_1630->g_803;
                    int i, j;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 7; j++)
                            l_1045[i][j] = (void*)0;
                    }
                    (*l_1053) |= (0xD082L <= (safe_mul_func_int8_t_s_s(((((*l_1039) |= (safe_lshift_func_int16_t_s_s(((*l_1038) = (-5L)), p_1630->g_137[p_1630->g_164]))) <= ((*l_1040) |= 18446744073709551610UL)) , (((!((((l_1045[0][6] = l_1042) == &p_1630->g_621) > p_41) , (safe_lshift_func_int8_t_s_s((((*l_1050) = l_1048) != l_1051), 2)))) >= 0x08A1C61CL) ^ 0xFAL)), 0L)));
                    return p_43;
                }
                return p_1630->g_1041[0];
            }
        }
        if ((*p_39))
            break;
        l_1077 &= (safe_add_func_int8_t_s_s((**p_1630->g_911), ((safe_rshift_func_int16_t_s_u(((--(*l_1059)) | (p_43 >= (4UL && (((safe_mod_func_uint32_t_u_u(p_43, (safe_div_func_int64_t_s_s(((~p_43) && ((safe_sub_func_int64_t_s_s((p_43 || ((((((((safe_rshift_func_int8_t_s_u((p_43 == (p_1630->g_1072 == (FAKE_DIVERGE(p_1630->local_1_offset, get_local_id(1), 10) , (p_43 , &l_1052)))), 7)) | 0x3A960AACFCF133E8L) < l_1074) >= 0x2EL) , p_43) & p_1630->g_262) != FAKE_DIVERGE(p_1630->group_1_offset, get_group_id(1), 10)) == 0x58FCL)), l_1075)) , p_43)), p_43)))) != l_1074) , (*p_1630->g_20))))), 5)) == p_1630->g_1076)));
    }
    (*p_1630->g_1099) = &p_1630->g_7;
    (*l_1103) = (void*)0;
    (**p_1630->g_1099) = ((((((safe_mul_func_uint16_t_u_u((~(p_43 ^ ((((*l_1125) = (safe_add_func_int16_t_s_s(((safe_rshift_func_uint8_t_u_s((&p_1630->g_409 != (void*)0), 6)) < (safe_lshift_func_uint16_t_u_u((65533UL >= 65535UL), (safe_sub_func_uint8_t_u_u(((safe_mul_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((((p_1630->g_62 | (l_1122 != &p_1630->g_874)) , (0x49L != p_41)) || 248UL), (*p_1630->g_912))), p_43)), p_41)) >= p_1630->g_333[1]), (**p_1630->g_911)))))), l_1098))) ^ p_41) <= p_41))), FAKE_DIVERGE(p_1630->global_2_offset, get_global_id(2), 10))) != p_43) , 4294967293UL) == (*p_39)) > 1L) ^ p_43);
    return l_1126;
}


/* ------------------------------------------ */
/* 
 * reads : p_1630->g_13 p_1630->g_15 p_1630->g_62 p_1630->g_94 p_1630->g_95 p_1630->g_272 p_1630->g_75 p_1630->g_9 p_1630->g_200 p_1630->g_229 p_1630->g_333 p_1630->g_515 p_1630->g_822 p_1630->g_77 p_1630->g_2 p_1630->g_823 p_1630->g_524 p_1630->g_409 p_1630->g_410 p_1630->g_634 p_1630->g_392 p_1630->g_231 p_1630->g_874 p_1630->g_803 p_1630->g_21 p_1630->g_129 p_1630->g_164 p_1630->g_911 p_1630->g_137 p_1630->g_912 p_1630->g_718 p_1630->g_262 p_1630->g_6 p_1630->g_983 p_1630->g_425 p_1630->g_166 p_1630->g_133
 * writes: p_1630->g_62 p_1630->g_95 p_1630->g_75 p_1630->g_803 p_1630->g_333 p_1630->g_129 p_1630->g_822 p_1630->g_524 p_1630->g_262 p_1630->g_874 p_1630->g_231 p_1630->g_718 p_1630->g_952 p_1630->g_392 p_1630->g_133 p_1630->g_137 p_1630->g_983 p_1630->g_425 p_1630->g_166 p_1630->g_77
 */
int64_t  func_44(int32_t  p_45, int32_t  p_46, uint32_t  p_47, struct S0 * p_1630)
{ /* block id: 19 */
    int32_t *l_58 = &p_1630->g_2;
    uint32_t *l_61 = &p_1630->g_62;
    uint64_t *l_793 = &p_1630->g_77;
    int32_t l_1028 = 5L;
    l_1028 &= (((safe_mod_func_uint8_t_u_u((safe_rshift_func_int16_t_s_s(p_1630->g_13, 0)), p_1630->g_15)) , ((*l_793) = func_53(((*l_61) = (safe_rshift_func_uint8_t_u_u(((l_58 != ((*p_1630->g_94) = func_59((--(*l_61)), p_1630))) <= FAKE_DIVERGE(p_1630->group_0_offset, get_group_id(0), 10)), (safe_rshift_func_int8_t_s_s(p_1630->g_272[0][2], 5))))), (l_793 == (void*)0), p_1630))) | (l_793 != (void*)0));
    for (p_1630->g_133 = 0; (p_1630->g_133 <= 2); p_1630->g_133 += 1)
    { /* block id: 574 */
        uint32_t l_1029 = 5UL;
        int i;
        --l_1029;
    }
    return (*l_58);
}


/* ------------------------------------------ */
/* 
 * reads : p_1630->g_75 p_1630->g_95 p_1630->g_9 p_1630->g_200 p_1630->g_229 p_1630->g_272 p_1630->g_94 p_1630->g_333 p_1630->g_515 p_1630->g_822 p_1630->g_77 p_1630->g_2 p_1630->g_823 p_1630->g_524 p_1630->g_409 p_1630->g_410 p_1630->g_634 p_1630->g_392 p_1630->g_231 p_1630->g_15 p_1630->g_62 p_1630->g_874 p_1630->g_803 p_1630->g_21 p_1630->g_129 p_1630->g_164 p_1630->g_911 p_1630->g_137 p_1630->g_912 p_1630->g_718 p_1630->g_262 p_1630->g_6 p_1630->g_983 p_1630->g_425 p_1630->g_166 p_1630->g_13
 * writes: p_1630->g_75 p_1630->g_803 p_1630->g_95 p_1630->g_333 p_1630->g_129 p_1630->g_822 p_1630->g_524 p_1630->g_62 p_1630->g_262 p_1630->g_874 p_1630->g_231 p_1630->g_718 p_1630->g_952 p_1630->g_392 p_1630->g_133 p_1630->g_137 p_1630->g_983 p_1630->g_425 p_1630->g_166
 */
uint64_t  func_53(uint32_t  p_54, uint32_t  p_55, struct S0 * p_1630)
{ /* block id: 470 */
    uint32_t l_794 = 0x8F6C36A5L;
    int32_t *l_795 = &p_1630->g_75[1];
    int32_t *l_802 = &p_1630->g_803;
    int32_t ****l_825[4][2][5] = {{{(void*)0,&p_1630->g_823,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1630->g_823,(void*)0,(void*)0,(void*)0}},{{(void*)0,&p_1630->g_823,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1630->g_823,(void*)0,(void*)0,(void*)0}},{{(void*)0,&p_1630->g_823,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1630->g_823,(void*)0,(void*)0,(void*)0}},{{(void*)0,&p_1630->g_823,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1630->g_823,(void*)0,(void*)0,(void*)0}}};
    int8_t l_827 = 0x4AL;
    uint64_t **l_855 = &p_1630->g_398;
    uint32_t ***l_861 = (void*)0;
    int8_t *l_879[7] = {&p_1630->g_137[1],&p_1630->g_137[1],&p_1630->g_137[1],&p_1630->g_137[1],&p_1630->g_137[1],&p_1630->g_137[1],&p_1630->g_137[1]};
    int8_t **l_878 = &l_879[0];
    int8_t ***l_877 = &l_878;
    int64_t *l_935 = &p_1630->g_333[2];
    uint8_t **l_953 = &p_1630->g_515;
    int16_t l_977[5][4] = {{7L,0x70FAL,(-1L),0x70FAL},{7L,0x70FAL,(-1L),0x70FAL},{7L,0x70FAL,(-1L),0x70FAL},{7L,0x70FAL,(-1L),0x70FAL},{7L,0x70FAL,(-1L),0x70FAL}};
    uint16_t l_1008 = 1UL;
    int i, j, k;
    if (((*l_802) = (l_794 , ((0x756C3EC8L && (((*l_795) ^= ((p_54 == 0x2943D2A6L) , 1L)) , ((~p_54) , (safe_mod_func_int64_t_s_s(((safe_add_func_int16_t_s_s(((((p_54 | (safe_sub_func_int16_t_s_s(((((*l_795) || ((*l_795) != 0L)) >= (*p_1630->g_95)) , p_1630->g_200), 0x5A8BL))) | GROUP_DIVERGE(2, 1)) <= p_1630->g_229) , 4L), 9L)) <= (*l_795)), (*l_795)))))) || p_1630->g_272[0][2]))))
    { /* block id: 473 */
        int32_t *l_804 = &p_1630->g_21;
        (*p_1630->g_94) = l_804;
        return p_54;
    }
    else
    { /* block id: 476 */
        int32_t l_817[7][9] = {{(-1L),(-1L),1L,0x04B404D7L,3L,0x04B404D7L,1L,(-1L),(-1L)},{(-1L),(-1L),1L,0x04B404D7L,3L,0x04B404D7L,1L,(-1L),(-1L)},{(-1L),(-1L),1L,0x04B404D7L,3L,0x04B404D7L,1L,(-1L),(-1L)},{(-1L),(-1L),1L,0x04B404D7L,3L,0x04B404D7L,1L,(-1L),(-1L)},{(-1L),(-1L),1L,0x04B404D7L,3L,0x04B404D7L,1L,(-1L),(-1L)},{(-1L),(-1L),1L,0x04B404D7L,3L,0x04B404D7L,1L,(-1L),(-1L)},{(-1L),(-1L),1L,0x04B404D7L,3L,0x04B404D7L,1L,(-1L),(-1L)}};
        int64_t *l_819 = &p_1630->g_333[6];
        int32_t *****l_824 = &p_1630->g_822;
        int32_t *****l_826 = &l_825[0][0][3];
        int8_t *l_828[9] = {&p_1630->g_137[1],&p_1630->g_137[1],&p_1630->g_137[1],&p_1630->g_137[1],&p_1630->g_137[1],&p_1630->g_137[1],&p_1630->g_137[1],&p_1630->g_137[1],&p_1630->g_137[1]};
        uint8_t l_873 = 1UL;
        uint64_t ***l_915 = (void*)0;
        uint16_t *l_933 = &p_1630->g_718;
        int32_t l_966 = 1L;
        int32_t l_972 = 1L;
        int32_t l_974 = (-4L);
        int32_t l_976[1];
        int i, j;
        for (i = 0; i < 1; i++)
            l_976[i] = (-1L);
        if (((+(safe_sub_func_int16_t_s_s((1UL | ((*l_795) = (safe_rshift_func_int8_t_s_u((((safe_mul_func_uint8_t_u_u((safe_sub_func_uint32_t_u_u(p_1630->g_200, (l_827 &= (((p_54 >= (safe_rshift_func_uint8_t_u_u(((safe_lshift_func_uint8_t_u_s((FAKE_DIVERGE(p_1630->group_0_offset, get_group_id(0), 10) & ((*p_1630->g_515) = (+(+((l_817[1][1] <= ((*l_819) &= (safe_unary_minus_func_int16_t_s(p_55)))) != (p_54 == (**p_1630->g_94))))))), (((safe_sub_func_int16_t_s_s((((*l_824) = p_1630->g_822) == ((*l_826) = l_825[0][0][3])), p_54)) | (*l_795)) <= (*l_795)))) < p_54), 2))) ^ p_54) < p_55)))), p_1630->g_77)) == FAKE_DIVERGE(p_1630->group_2_offset, get_group_id(2), 10)) || 3UL), p_55)))), p_1630->g_2))) , (***p_1630->g_823)))
        { /* block id: 483 */
            int32_t l_856[1][6][7] = {{{5L,1L,1L,1L,(-1L),5L,1L},{5L,1L,1L,1L,(-1L),5L,1L},{5L,1L,1L,1L,(-1L),5L,1L},{5L,1L,1L,1L,(-1L),5L,1L},{5L,1L,1L,1L,(-1L),5L,1L},{5L,1L,1L,1L,(-1L),5L,1L}}};
            int32_t l_858[2];
            uint32_t *l_872 = &p_1630->g_62;
            int8_t ****l_875 = (void*)0;
            int8_t ****l_876 = &p_1630->g_874;
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_858[i] = (-6L);
            for (p_1630->g_524 = 8; (p_1630->g_524 >= 0); p_1630->g_524 -= 1)
            { /* block id: 486 */
                uint32_t l_847 = 0xC2D48C10L;
                uint32_t *l_857 = &p_1630->g_62;
                int32_t l_859[4][6] = {{(-1L),(-3L),(-3L),(-1L),(-1L),(-3L)},{(-1L),(-3L),(-3L),(-1L),(-1L),(-3L)},{(-1L),(-3L),(-3L),(-1L),(-1L),(-3L)},{(-1L),(-3L),(-3L),(-1L),(-1L),(-3L)}};
                uint32_t ***l_860[9][10] = {{&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409},{&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409},{&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409},{&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409},{&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409},{&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409},{&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409},{&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409},{&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409,&p_1630->g_409}};
                int32_t ****l_870 = &p_1630->g_823;
                uint16_t *l_871 = &p_1630->g_262;
                int i, j;
                l_859[2][1] = (safe_lshift_func_int8_t_s_s((safe_mul_func_uint16_t_u_u(((l_858[1] = (safe_div_func_int8_t_s_s((((safe_rshift_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(((safe_mul_func_uint16_t_u_u(p_55, (((*****l_824) && (safe_sub_func_int8_t_s_s(p_54, ((safe_sub_func_uint16_t_u_u(3UL, p_55)) , (safe_mul_func_uint8_t_u_u((l_847 >= ((safe_unary_minus_func_uint64_t_u((safe_rshift_func_int16_t_s_s(((safe_div_func_uint32_t_u_u((safe_mod_func_uint32_t_u_u(FAKE_DIVERGE(p_1630->local_2_offset, get_local_id(2), 10), ((*l_857) = ((((void*)0 != l_855) & ((((255UL < 0UL) > p_54) == l_856[0][5][1]) <= l_856[0][5][1])) , 0x8190EDE2L)))), (-5L))) & l_847), 7)))) > p_55)), p_54)))))) >= p_54))) ^ (-3L)), l_847)), p_55)) ^ 3L) || 2UL), 0x3AL))) < (-9L)), l_847)), l_847));
                (*l_795) = (((*l_871) = ((l_858[1] < (((void*)0 != (*p_1630->g_409)) > (l_860[0][0] != l_861))) == ((safe_mod_func_int32_t_s_s(p_54, (safe_sub_func_int64_t_s_s((((p_1630->g_634[1][0] | ((safe_lshift_func_uint16_t_u_s((safe_sub_func_int16_t_s_s(((void*)0 == l_870), (*****l_824))), p_1630->g_392)) || 0xBF7A905D459BB776L)) & (-2L)) && p_54), p_1630->g_231[3])))) && 0x71E8E7EBF462F873L))) | p_1630->g_15);
                return (*l_795);
            }
            (*l_795) = (((((((l_873 = (((*l_872) &= 4294967287UL) && p_55)) | (((*l_876) = p_1630->g_874) == l_877)) == l_856[0][1][6]) < (((safe_rshift_func_uint16_t_u_u((safe_unary_minus_func_int8_t_s(((0xAC527A8DL && (safe_lshift_func_int8_t_s_u((((*l_802) = (*l_802)) && ((safe_lshift_func_uint16_t_u_u(l_856[0][0][3], 11)) && (((((safe_mod_func_int8_t_s_s((((p_1630->g_21 > (*****l_824)) ^ p_55) & l_856[0][5][1]), l_858[1])) != (*p_1630->g_95)) , p_54) <= (-5L)) <= l_856[0][3][3]))), 3))) , p_55))), 7)) , p_54) , p_55)) < 1UL) , (void*)0) == (void*)0);
        }
        else
        { /* block id: 499 */
            uint32_t *l_897 = &p_1630->g_62;
            uint32_t *l_898[3][5][9] = {{{&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899},{&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899},{&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899},{&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899},{&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899}},{{&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899},{&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899},{&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899},{&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899},{&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899}},{{&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899},{&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899},{&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899},{&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899},{&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899,&p_1630->g_899}}};
            int32_t l_900[6] = {1L,1L,1L,1L,1L,1L};
            int32_t **l_901 = &l_802;
            int8_t **l_909 = &l_879[0];
            uint64_t **l_925 = (void*)0;
            int i, j, k;
            (*l_795) &= (((((*l_802) = (safe_rshift_func_int8_t_s_s(((safe_div_func_uint8_t_u_u((--(*p_1630->g_515)), 0x7EL)) , ((*****l_824) , ((((((p_54 || (p_54 > 65527UL)) < (safe_add_func_int8_t_s_s(((l_900[2] = (p_55 = ((*l_897) = (*****l_824)))) , l_900[2]), 9L))) > p_1630->g_164) , (void*)0) == (void*)0) ^ 0L))), 5))) , l_901) != l_901) ^ 4UL);
            if (p_54)
            { /* block id: 506 */
                int32_t *l_902 = &l_900[2];
                int16_t l_910 = 0x2EAAL;
                int32_t l_916[3][6] = {{1L,1L,(-1L),0x4881B9F4L,1L,0x4881B9F4L},{1L,1L,(-1L),0x4881B9F4L,1L,0x4881B9F4L},{1L,1L,(-1L),0x4881B9F4L,1L,0x4881B9F4L}};
                int64_t **l_926 = &l_819;
                int8_t *l_932[5] = {&p_1630->g_137[2],&p_1630->g_137[2],&p_1630->g_137[2],&p_1630->g_137[2],&p_1630->g_137[2]};
                uint16_t *l_934[9] = {&p_1630->g_262,&p_1630->g_262,&p_1630->g_262,&p_1630->g_262,&p_1630->g_262,&p_1630->g_262,&p_1630->g_262,&p_1630->g_262,&p_1630->g_262};
                int16_t *l_947 = &p_1630->g_166;
                int16_t **l_946[7] = {&l_947,&l_947,&l_947,&l_947,&l_947,&l_947,&l_947};
                int8_t ***l_956 = &p_1630->g_911;
                uint64_t *l_965 = &p_1630->g_77;
                int i, j;
                (****l_824) = l_902;
                l_916[0][3] &= (((safe_add_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u(0x471BL, (((((!(p_1630->g_231[3] = (*l_902))) < (safe_unary_minus_func_uint32_t_u((safe_unary_minus_func_uint64_t_u((l_909 == (l_910 , p_1630->g_911))))))) < ((*l_897) = (safe_lshift_func_int8_t_s_u(((void*)0 != l_902), ((*p_1630->g_515) = (l_915 != (void*)0)))))) > p_55) && p_55))), p_1630->g_137[2])) >= (*p_1630->g_912)) | (**p_1630->g_911));
                if (((**p_1630->g_94) = (safe_sub_func_int16_t_s_s((((((safe_add_func_uint8_t_u_u((*p_1630->g_515), (safe_mod_func_uint8_t_u_u((safe_add_func_int64_t_s_s(((((void*)0 != l_925) | ((void*)0 == (***l_824))) || (((*l_926) = &p_1630->g_164) == ((safe_unary_minus_func_uint16_t_u((l_916[0][3] &= ((*l_902) , ((*l_933) = ((FAKE_DIVERGE(p_1630->group_2_offset, get_group_id(2), 10) , (((safe_div_func_int64_t_s_s(0x5C6667E1405E42DBL, (safe_lshift_func_uint16_t_u_s(((**l_877) == l_932[0]), (*l_795))))) , &p_1630->g_718) != l_933)) , p_1630->g_200)))))) , l_935))), (*l_902))), (**p_1630->g_911))))) , FAKE_DIVERGE(p_1630->group_0_offset, get_group_id(0), 10)) != FAKE_DIVERGE(p_1630->local_2_offset, get_local_id(2), 10)) | 0UL) ^ p_55), GROUP_DIVERGE(1, 1)))))
                { /* block id: 516 */
                    uint8_t **l_942 = &p_1630->g_515;
                    int32_t l_943 = 0L;
                    int32_t l_967 = (-4L);
                    int32_t l_968 = 0x48BC0AF0L;
                    int32_t l_969 = 0x5D49A82DL;
                    int32_t l_970 = 0x6D3E8D23L;
                    int32_t l_971 = 1L;
                    int32_t l_973 = 0x012E7A0BL;
                    int32_t l_975 = 1L;
                    int32_t l_978 = (-4L);
                    int32_t l_979 = 0x2C1BC5CCL;
                    int32_t l_980 = 0x5A7D74FDL;
                    int32_t l_981 = 6L;
                    int32_t l_982[5] = {4L,4L,4L,4L,4L};
                    int i;
                    for (p_1630->g_718 = 0; (p_1630->g_718 == 50); p_1630->g_718++)
                    { /* block id: 519 */
                        int16_t ***l_948 = &l_946[4];
                        uint8_t **l_950 = &p_1630->g_515;
                        uint8_t ***l_949 = &l_950;
                        int32_t l_951 = (-1L);
                        (*l_802) ^= (safe_rshift_func_uint16_t_u_u(65535UL, (safe_lshift_func_uint16_t_u_u(((p_1630->g_333[1] = p_1630->g_75[0]) && p_54), ((l_942 == (l_953 = (p_1630->g_952 = ((((**l_942) = ((l_943 = p_55) >= ((*****l_824) = (((*l_949) = ((((safe_add_func_int64_t_s_s(0L, (((*l_948) = l_946[4]) == (void*)0))) < (((+p_54) , p_55) < FAKE_DIVERGE(p_1630->global_2_offset, get_global_id(2), 10))) , p_54) , (void*)0)) != (void*)0)))) || l_951) , &p_1630->g_515)))) , p_1630->g_262)))));
                    }
                    (*p_1630->g_94) = (void*)0;
                    (*p_1630->g_94) = func_80((safe_mod_func_uint32_t_u_u(((((*l_795) = (0x20L || p_54)) , l_956) != &l_909), (safe_mod_func_uint8_t_u_u(((void*)0 == (*l_953)), (safe_div_func_int8_t_s_s(p_55, (l_943 = (safe_mul_func_uint8_t_u_u(((safe_mul_func_int16_t_s_s((p_1630->g_392 = (l_965 == (void*)0)), p_1630->g_262)) >= (**l_901)), p_54))))))))), p_55, (*p_1630->g_823), (**p_1630->g_823), p_55, p_1630);
                    --p_1630->g_983[1][3][0];
                }
                else
                { /* block id: 536 */
                    return (**l_901);
                }
                for (p_1630->g_425 = 0; (p_1630->g_425 <= 5); p_1630->g_425 += 1)
                { /* block id: 541 */
                    uint32_t l_992 = 0x819898A7L;
                    int i;
                    (*l_901) = (void*)0;
                    if ((safe_lshift_func_int8_t_s_u((l_900[p_1630->g_425] <= ((*l_947) |= (safe_rshift_func_uint8_t_u_s(0x38L, 3)))), 5)))
                    { /* block id: 544 */
                        int64_t l_990 = 0x3FBE0B22C06E1598L;
                        int32_t l_991[3][8][3] = {{{(-1L),0x6BB85887L,0x6BB85887L},{(-1L),0x6BB85887L,0x6BB85887L},{(-1L),0x6BB85887L,0x6BB85887L},{(-1L),0x6BB85887L,0x6BB85887L},{(-1L),0x6BB85887L,0x6BB85887L},{(-1L),0x6BB85887L,0x6BB85887L},{(-1L),0x6BB85887L,0x6BB85887L},{(-1L),0x6BB85887L,0x6BB85887L}},{{(-1L),0x6BB85887L,0x6BB85887L},{(-1L),0x6BB85887L,0x6BB85887L},{(-1L),0x6BB85887L,0x6BB85887L},{(-1L),0x6BB85887L,0x6BB85887L},{(-1L),0x6BB85887L,0x6BB85887L},{(-1L),0x6BB85887L,0x6BB85887L},{(-1L),0x6BB85887L,0x6BB85887L},{(-1L),0x6BB85887L,0x6BB85887L}},{{(-1L),0x6BB85887L,0x6BB85887L},{(-1L),0x6BB85887L,0x6BB85887L},{(-1L),0x6BB85887L,0x6BB85887L},{(-1L),0x6BB85887L,0x6BB85887L},{(-1L),0x6BB85887L,0x6BB85887L},{(-1L),0x6BB85887L,0x6BB85887L},{(-1L),0x6BB85887L,0x6BB85887L},{(-1L),0x6BB85887L,0x6BB85887L}}};
                        uint8_t ***l_996 = (void*)0;
                        uint8_t ****l_995 = &l_996;
                        int i, j, k;
                        l_992--;
                        (*l_902) = (((&p_1630->g_514[p_1630->g_425] != ((*l_995) = &p_1630->g_952)) , (((*l_902) > ((+((safe_rshift_func_uint8_t_u_s(((((*l_897) = p_55) || (safe_sub_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_u(p_55, 3)), (l_992 == FAKE_DIVERGE(p_1630->group_2_offset, get_group_id(2), 10))))) || (safe_unary_minus_func_int64_t_s((safe_rshift_func_uint16_t_u_u(((0x26L && (((((*l_933) = (p_54 , ((((((*p_1630->g_515)--) != l_991[2][7][0]) == (*l_902)) | l_992) ^ l_991[2][0][1]))) < p_1630->g_229) , 0xA6CF6CC3L) == p_55)) , 0UL), (*l_902)))))), p_55)) && 0x9F77L)) , FAKE_DIVERGE(p_1630->global_2_offset, get_global_id(2), 10))) < p_1630->g_13)) & FAKE_DIVERGE(p_1630->global_2_offset, get_global_id(2), 10));
                        if (l_991[1][4][0])
                            continue;
                        if (p_55)
                            continue;
                    }
                    else
                    { /* block id: 553 */
                        return p_55;
                    }
                    return l_1008;
                }
            }
            else
            { /* block id: 558 */
                (*l_802) = (safe_rshift_func_uint16_t_u_u(0xAB22L, (safe_unary_minus_func_int64_t_s((((*l_795) = (safe_add_func_uint8_t_u_u(((**l_953) = GROUP_DIVERGE(2, 1)), (-1L)))) & (safe_div_func_uint64_t_u_u((**l_901), ((safe_sub_func_int64_t_s_s((safe_sub_func_uint32_t_u_u((((++p_54) && (**l_901)) && p_54), 0x076E0766L)), ((safe_add_func_uint64_t_u_u((safe_mul_func_uint16_t_u_u(((*l_933) = (safe_sub_func_uint8_t_u_u((1UL >= p_55), (((*l_802) != 0x70E490DD4792A658L) , 0x32L)))), p_1630->g_524)), 1UL)) != p_55))) , 0x5AF5C9865B10262BL))))))));
                (***p_1630->g_822) = (**p_1630->g_823);
                (*l_795) &= p_54;
            }
        }
    }
    return p_55;
}


/* ------------------------------------------ */
/* 
 * reads : p_1630->g_94 p_1630->g_95
 * writes:
 */
int32_t * func_59(uint32_t  p_60, struct S0 * p_1630)
{ /* block id: 21 */
    int16_t l_86 = 2L;
    int32_t *l_96[8] = {&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1]};
    int32_t *l_150 = &p_1630->g_9;
    int32_t *l_430 = (void*)0;
    int32_t *l_448 = (void*)0;
    int16_t l_619 = 0x03D0L;
    int32_t *l_697 = &p_1630->g_237;
    int8_t *l_762 = &p_1630->g_137[0];
    int8_t **l_761 = &l_762;
    int8_t ***l_760 = &l_761;
    uint8_t **l_776 = &p_1630->g_515;
    int32_t l_779 = (-9L);
    int i;
    for (p_60 = 0; (p_60 <= 0); p_60 += 1)
    { /* block id: 24 */
        int32_t l_71 = 0x6D870B1CL;
        int32_t *l_74[7][9] = {{&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1]},{&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1]},{&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1]},{&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1]},{&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1]},{&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1]},{&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_75[1]}};
        uint64_t *l_76 = &p_1630->g_77;
        int32_t *l_93 = &p_1630->g_65[5][1][0];
        int32_t **l_149 = &l_96[6];
        int32_t l_452 = 0x68DCC7CEL;
        uint32_t l_455 = 4294967295UL;
        uint32_t l_503 = 0x45671FF4L;
        uint8_t **l_516[2];
        uint32_t l_639 = 0UL;
        int16_t l_778 = 0x6F28L;
        int64_t l_781 = 0x5A6612F15792FAC9L;
        uint64_t l_786[4] = {0x3F0201A880AA1872L,0x3F0201A880AA1872L,0x3F0201A880AA1872L,0x3F0201A880AA1872L};
        int i, j;
        for (i = 0; i < 2; i++)
            l_516[i] = (void*)0;
        (1 + 1);
    }
    return (*p_1630->g_94);
}


/* ------------------------------------------ */
/* 
 * reads : p_1630->g_129 p_1630->g_77 p_1630->g_9 p_1630->g_133 p_1630->g_65 p_1630->g_6 p_1630->g_21 p_1630->g_137 p_1630->g_62 p_1630->g_14 p_1630->g_15 p_1630->g_7 p_1630->g_168 p_1630->g_13 p_1630->g_229 p_1630->g_237 p_1630->g_231 p_1630->g_238 p_1630->g_200 p_1630->g_75 p_1630->g_166 p_1630->g_8 p_1630->g_272 p_1630->g_164 p_1630->g_333 p_1630->g_262 p_1630->g_95 p_1630->g_396 p_1630->g_409 p_1630->g_425
 * writes: p_1630->g_129 p_1630->g_133 p_1630->g_94 p_1630->g_77 p_1630->g_75 p_1630->g_164 p_1630->g_166 p_1630->g_168 p_1630->g_62 p_1630->g_95 p_1630->g_237 p_1630->g_238 p_1630->g_262 p_1630->g_272 p_1630->g_200 p_1630->g_231 p_1630->g_137 p_1630->g_333 p_1630->g_392 p_1630->g_7 p_1630->g_425
 */
int64_t  func_66(uint8_t  p_67, int8_t  p_68, uint64_t  p_69, int32_t * p_70, struct S0 * p_1630)
{ /* block id: 60 */
    uint64_t *l_152 = &p_1630->g_77;
    uint64_t **l_151[7][9][4] = {{{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0}},{{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0}},{{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0}},{{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0}},{{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0}},{{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0}},{{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0},{(void*)0,&l_152,&l_152,(void*)0}}};
    int32_t l_155 = 1L;
    int32_t ***l_280 = (void*)0;
    int32_t l_318 = 0L;
    int8_t **l_343 = (void*)0;
    int8_t l_387 = 0x11L;
    int32_t *l_394 = (void*)0;
    uint32_t *l_408 = &p_1630->g_62;
    uint32_t **l_407[5] = {&l_408,&l_408,&l_408,&l_408,&l_408};
    uint32_t ***l_411[5][2] = {{&p_1630->g_409,&p_1630->g_409},{&p_1630->g_409,&p_1630->g_409},{&p_1630->g_409,&p_1630->g_409},{&p_1630->g_409,&p_1630->g_409},{&p_1630->g_409,&p_1630->g_409}};
    uint32_t **l_412[2];
    int8_t ***l_414[4][6];
    int8_t ****l_413[10][9] = {{&l_414[2][4],&l_414[3][3],&l_414[3][0],&l_414[2][4],&l_414[3][0],&l_414[3][0],&l_414[3][0],&l_414[3][0],&l_414[2][4]},{&l_414[2][4],&l_414[3][3],&l_414[3][0],&l_414[2][4],&l_414[3][0],&l_414[3][0],&l_414[3][0],&l_414[3][0],&l_414[2][4]},{&l_414[2][4],&l_414[3][3],&l_414[3][0],&l_414[2][4],&l_414[3][0],&l_414[3][0],&l_414[3][0],&l_414[3][0],&l_414[2][4]},{&l_414[2][4],&l_414[3][3],&l_414[3][0],&l_414[2][4],&l_414[3][0],&l_414[3][0],&l_414[3][0],&l_414[3][0],&l_414[2][4]},{&l_414[2][4],&l_414[3][3],&l_414[3][0],&l_414[2][4],&l_414[3][0],&l_414[3][0],&l_414[3][0],&l_414[3][0],&l_414[2][4]},{&l_414[2][4],&l_414[3][3],&l_414[3][0],&l_414[2][4],&l_414[3][0],&l_414[3][0],&l_414[3][0],&l_414[3][0],&l_414[2][4]},{&l_414[2][4],&l_414[3][3],&l_414[3][0],&l_414[2][4],&l_414[3][0],&l_414[3][0],&l_414[3][0],&l_414[3][0],&l_414[2][4]},{&l_414[2][4],&l_414[3][3],&l_414[3][0],&l_414[2][4],&l_414[3][0],&l_414[3][0],&l_414[3][0],&l_414[3][0],&l_414[2][4]},{&l_414[2][4],&l_414[3][3],&l_414[3][0],&l_414[2][4],&l_414[3][0],&l_414[3][0],&l_414[3][0],&l_414[3][0],&l_414[2][4]},{&l_414[2][4],&l_414[3][3],&l_414[3][0],&l_414[2][4],&l_414[3][0],&l_414[3][0],&l_414[3][0],&l_414[3][0],&l_414[2][4]}};
    int8_t ***l_415[7];
    uint16_t *l_423 = &p_1630->g_262;
    uint16_t *l_424 = (void*)0;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_412[i] = &l_408;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 6; j++)
            l_414[i][j] = &l_343;
    }
    for (i = 0; i < 7; i++)
        l_415[i] = &l_343;
    for (p_1630->g_129 = 0; (p_1630->g_129 <= 2); p_1630->g_129 += 1)
    { /* block id: 63 */
        uint64_t ***l_153 = (void*)0;
        int32_t l_154 = 1L;
        int32_t ***l_171[10] = {&p_1630->g_94,&p_1630->g_94,&p_1630->g_94,&p_1630->g_94,&p_1630->g_94,&p_1630->g_94,&p_1630->g_94,&p_1630->g_94,&p_1630->g_94,&p_1630->g_94};
        int16_t l_303 = (-9L);
        uint32_t *l_312 = &p_1630->g_272[0][2];
        uint32_t l_354 = 5UL;
        int8_t l_372[4];
        int32_t *l_393 = &p_1630->g_75[1];
        int i;
        for (i = 0; i < 4; i++)
            l_372[i] = (-1L);
        l_151[0][5][1] = l_151[0][5][1];
        if (l_154)
            continue;
        for (p_1630->g_133 = 0; (p_1630->g_133 <= 2); p_1630->g_133 += 1)
        { /* block id: 68 */
            int32_t ***l_158 = &p_1630->g_94;
            uint8_t *l_199 = &p_1630->g_200;
            int32_t l_202 = 0x11E64B53L;
            int32_t *l_251 = &p_1630->g_65[2][2][0];
            uint64_t l_292 = 0xF01E3291E4BA6C3AL;
            uint64_t l_334 = 0x43558DE3D5871B23L;
            int32_t *l_345 = &p_1630->g_75[1];
            uint16_t **l_362 = (void*)0;
            uint32_t *l_382[5];
            int i;
            for (i = 0; i < 5; i++)
                l_382[i] = &p_1630->g_62;
            if (l_155)
                break;
            if (((p_1630->g_129 | (((*l_158) = (void*)0) != (p_1630->g_77 , &p_1630->g_95))) >= (*p_70)))
            { /* block id: 71 */
                int32_t **l_183[2];
                int i;
                for (i = 0; i < 2; i++)
                    l_183[i] = &p_1630->g_95;
                for (p_69 = 0; (p_69 <= 0); p_69 += 1)
                { /* block id: 74 */
                    int16_t *l_195 = (void*)0;
                    int16_t *l_196 = &p_1630->g_168;
                    uint8_t *l_198 = (void*)0;
                    uint8_t **l_197[1];
                    int64_t l_201 = 8L;
                    int32_t *l_254[9] = {&p_1630->g_65[7][2][0],&p_1630->g_65[7][2][0],&p_1630->g_65[7][2][0],&p_1630->g_65[7][2][0],&p_1630->g_65[7][2][0],&p_1630->g_65[7][2][0],&p_1630->g_65[7][2][0],&p_1630->g_65[7][2][0],&p_1630->g_65[7][2][0]};
                    uint32_t l_266 = 1UL;
                    int i;
                    for (i = 0; i < 1; i++)
                        l_197[i] = &l_198;
                    for (p_1630->g_77 = 0; (p_1630->g_77 <= 0); p_1630->g_77 += 1)
                    { /* block id: 77 */
                        int32_t **l_159[3];
                        int64_t *l_163 = &p_1630->g_164;
                        int16_t *l_165 = &p_1630->g_166;
                        int16_t *l_167 = &p_1630->g_168;
                        uint32_t *l_172 = &p_1630->g_62;
                        uint64_t l_186[7][10][3] = {{{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL}},{{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL}},{{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL}},{{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL}},{{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL}},{{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL}},{{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL},{18446744073709551615UL,18446744073709551613UL,0x65B679A5ECE6941CL}}};
                        int i, j, k;
                        for (i = 0; i < 3; i++)
                            l_159[i] = &p_1630->g_95;
                        p_70 = &l_155;
                        (*p_70) = ((safe_unary_minus_func_int16_t_s(((*l_167) = ((*l_165) = ((p_1630->g_75[p_1630->g_129] = (l_151[p_1630->g_77][(p_1630->g_77 + 2)][(p_69 + 2)] == (void*)0)) == (safe_sub_func_uint64_t_u_u(p_1630->g_65[(p_1630->g_129 + 1)][p_1630->g_133][p_1630->g_77], ((*l_163) = p_1630->g_77)))))))) != ((((~p_1630->g_6) <= p_1630->g_21) <= p_69) < (((*l_172) = (l_171[8] != &p_1630->g_94)) != p_1630->g_77)));
                        l_186[2][6][2] &= (((safe_add_func_int32_t_s_s(0x74CEC627L, (+(safe_mul_func_uint8_t_u_u(((l_155 > (safe_sub_func_uint16_t_u_u(p_1630->g_137[0], (((p_1630->g_62 , 9L) | (safe_mul_func_int8_t_s_s(p_1630->g_14, (safe_mod_func_uint32_t_u_u((((void*)0 == l_183[1]) == (safe_rshift_func_uint8_t_u_s(FAKE_DIVERGE(p_1630->group_2_offset, get_group_id(2), 10), p_68))), (*p_70)))))) , 4L)))) && l_155), p_68))))) | 1L) && 0L);
                    }
                    p_1630->g_95 = p_70;
                    l_202 |= (safe_lshift_func_uint16_t_u_u((!0xEDA8L), ((p_1630->g_15 >= ((~(p_67 = (((l_199 = ((safe_sub_func_int64_t_s_s(((FAKE_DIVERGE(p_1630->global_1_offset, get_global_id(1), 10) , ((*l_196) ^= (safe_lshift_func_int8_t_s_s(((((safe_lshift_func_int8_t_s_s((p_69 > 4L), 1)) , &p_1630->g_164) == (void*)0) >= p_69), ((~p_1630->g_15) , (p_68 <= p_1630->g_7)))))) && l_155), 0UL)) , &p_1630->g_129)) == &p_1630->g_200) < p_1630->g_129))) == l_201)) , 0x6138L)));
                    if ((+(*p_70)))
                    { /* block id: 92 */
                        int8_t *l_230[10][9] = {{&p_1630->g_231[3],(void*)0,(void*)0,&p_1630->g_231[3],&p_1630->g_231[3],&p_1630->g_137[1],&p_1630->g_231[3],&p_1630->g_231[2],(void*)0},{&p_1630->g_231[3],(void*)0,(void*)0,&p_1630->g_231[3],&p_1630->g_231[3],&p_1630->g_137[1],&p_1630->g_231[3],&p_1630->g_231[2],(void*)0},{&p_1630->g_231[3],(void*)0,(void*)0,&p_1630->g_231[3],&p_1630->g_231[3],&p_1630->g_137[1],&p_1630->g_231[3],&p_1630->g_231[2],(void*)0},{&p_1630->g_231[3],(void*)0,(void*)0,&p_1630->g_231[3],&p_1630->g_231[3],&p_1630->g_137[1],&p_1630->g_231[3],&p_1630->g_231[2],(void*)0},{&p_1630->g_231[3],(void*)0,(void*)0,&p_1630->g_231[3],&p_1630->g_231[3],&p_1630->g_137[1],&p_1630->g_231[3],&p_1630->g_231[2],(void*)0},{&p_1630->g_231[3],(void*)0,(void*)0,&p_1630->g_231[3],&p_1630->g_231[3],&p_1630->g_137[1],&p_1630->g_231[3],&p_1630->g_231[2],(void*)0},{&p_1630->g_231[3],(void*)0,(void*)0,&p_1630->g_231[3],&p_1630->g_231[3],&p_1630->g_137[1],&p_1630->g_231[3],&p_1630->g_231[2],(void*)0},{&p_1630->g_231[3],(void*)0,(void*)0,&p_1630->g_231[3],&p_1630->g_231[3],&p_1630->g_137[1],&p_1630->g_231[3],&p_1630->g_231[2],(void*)0},{&p_1630->g_231[3],(void*)0,(void*)0,&p_1630->g_231[3],&p_1630->g_231[3],&p_1630->g_137[1],&p_1630->g_231[3],&p_1630->g_231[2],(void*)0},{&p_1630->g_231[3],(void*)0,(void*)0,&p_1630->g_231[3],&p_1630->g_231[3],&p_1630->g_137[1],&p_1630->g_231[3],&p_1630->g_231[2],(void*)0}};
                        int32_t l_232 = (-3L);
                        int32_t l_233 = 0L;
                        int32_t *l_234 = (void*)0;
                        int32_t *l_235 = (void*)0;
                        int32_t *l_236 = &p_1630->g_237;
                        int32_t *l_253 = &p_1630->g_65[8][0][0];
                        int32_t **l_252[8][6][2] = {{{&l_251,&l_251},{&l_251,&l_251},{&l_251,&l_251},{&l_251,&l_251},{&l_251,&l_251},{&l_251,&l_251}},{{&l_251,&l_251},{&l_251,&l_251},{&l_251,&l_251},{&l_251,&l_251},{&l_251,&l_251},{&l_251,&l_251}},{{&l_251,&l_251},{&l_251,&l_251},{&l_251,&l_251},{&l_251,&l_251},{&l_251,&l_251},{&l_251,&l_251}},{{&l_251,&l_251},{&l_251,&l_251},{&l_251,&l_251},{&l_251,&l_251},{&l_251,&l_251},{&l_251,&l_251}},{{&l_251,&l_251},{&l_251,&l_251},{&l_251,&l_251},{&l_251,&l_251},{&l_251,&l_251},{&l_251,&l_251}},{{&l_251,&l_251},{&l_251,&l_251},{&l_251,&l_251},{&l_251,&l_251},{&l_251,&l_251},{&l_251,&l_251}},{{&l_251,&l_251},{&l_251,&l_251},{&l_251,&l_251},{&l_251,&l_251},{&l_251,&l_251},{&l_251,&l_251}},{{&l_251,&l_251},{&l_251,&l_251},{&l_251,&l_251},{&l_251,&l_251},{&l_251,&l_251},{&l_251,&l_251}}};
                        uint16_t *l_261 = &p_1630->g_262;
                        int32_t l_263 = (-1L);
                        int i, j, k;
                        p_1630->g_238 |= (safe_sub_func_uint64_t_u_u(((((safe_mod_func_uint8_t_u_u(p_1630->g_129, (p_67 &= GROUP_DIVERGE(2, 1)))) || (p_1630->g_65[2][2][0] , 0L)) == (((*l_236) |= (GROUP_DIVERGE(1, 1) ^ (safe_mod_func_uint64_t_u_u(((p_1630->g_75[1] = (*p_70)) < (safe_sub_func_int16_t_s_s((safe_mod_func_int8_t_s_s(p_68, (safe_div_func_int8_t_s_s((1UL <= p_1630->g_13), ((safe_sub_func_uint64_t_u_u((safe_rshift_func_int8_t_s_u((l_232 &= ((safe_rshift_func_int8_t_s_s((safe_mul_func_int16_t_s_s(((*l_196) = (safe_mod_func_int32_t_s_s(0x1EA07113L, (safe_sub_func_uint32_t_u_u(((safe_rshift_func_int8_t_s_s(0x54L, l_201)) ^ p_1630->g_21), 0x9C2C3B88L))))), 0x03E5L)), p_1630->g_229)) <= p_1630->g_137[0])), 3)), p_69)) || p_69))))), l_233))), 0x0C973DCB5AACB81CL)))) , p_1630->g_231[3])) ^ p_69), p_1630->g_65[2][0][0]));
                        l_263 ^= ((safe_mul_func_int8_t_s_s(((GROUP_DIVERGE(1, 1) >= ((l_233 , l_232) ^ (&p_67 == (((p_1630->g_13 || p_69) >= (safe_mod_func_uint16_t_u_u(((*l_261) = (((p_1630->g_200 | (safe_sub_func_int64_t_s_s((((safe_div_func_uint32_t_u_u((((safe_rshift_func_uint16_t_u_s(((safe_sub_func_int32_t_s_s((l_251 != (l_254[0] = p_70)), (safe_rshift_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_u((~(safe_add_func_uint8_t_u_u((9UL ^ l_233), p_69))), 7)), 2)))) > 0x6C267DE7L), p_1630->g_237)) == p_1630->g_231[3]) && 0x213EL), 8L)) && 3L) >= 0x3955L), p_67))) >= p_67) || 255UL)), p_1630->g_75[1]))) , (void*)0)))) , p_68), p_1630->g_137[1])) ^ p_69);
                        return p_68;
                    }
                    else
                    { /* block id: 103 */
                        p_1630->g_75[2] = (safe_sub_func_uint8_t_u_u((p_1630->g_13 && ((*l_152) ^= p_69)), (8L >= p_69)));
                        l_266++;
                    }
                    for (p_1630->g_262 = 0; (p_1630->g_262 <= 3); p_1630->g_262 += 1)
                    { /* block id: 110 */
                        return p_68;
                    }
                }
                p_1630->g_95 = p_70;
            }
            else
            { /* block id: 115 */
                uint32_t l_273 = 4294967295UL;
                int i;
                for (p_1630->g_262 = 0; (p_1630->g_262 <= 0); p_1630->g_262 += 1)
                { /* block id: 118 */
                    uint16_t l_281 = 65527UL;
                    int32_t l_302 = (-1L);
                    for (p_1630->g_237 = 0; (p_1630->g_237 <= 7); p_1630->g_237 += 1)
                    { /* block id: 121 */
                        uint32_t *l_271 = &p_1630->g_272[0][2];
                        uint16_t *l_295 = &l_281;
                        int i, j, k;
                        p_1630->g_75[p_1630->g_133] = ((((*l_271) = p_1630->g_231[p_1630->g_129]) , l_273) > ((0x0E397699D0BD61A3L < ((safe_rshift_func_int16_t_s_s(0x202FL, (+p_1630->g_231[p_1630->g_129]))) , ((safe_lshift_func_int8_t_s_s(l_155, (p_1630->g_229 , ((safe_add_func_uint64_t_u_u((((l_280 == l_280) || p_1630->g_166) != p_1630->g_8), p_69)) <= l_281)))) , 4L))) != p_67));
                        l_303 = (safe_mul_func_int8_t_s_s(((safe_mod_func_uint8_t_u_u((safe_rshift_func_int8_t_s_s((!l_273), 4)), ((*l_199) = (~p_1630->g_168)))) <= (255UL ^ (safe_mul_func_uint16_t_u_u(((safe_sub_func_uint32_t_u_u(FAKE_DIVERGE(p_1630->group_0_offset, get_group_id(0), 10), ((l_292 && ((*l_152)++)) >= ((*l_295)--)))) , (safe_mul_func_int16_t_s_s(0x00F8L, ((*l_295) = ((((safe_mul_func_uint32_t_u_u(p_68, (p_1630->g_237 > ((0x57729DA9L < p_67) , p_68)))) ^ p_68) ^ 4294967294UL) == l_273))))), p_1630->g_75[1])))), l_302));
                    }
                }
                p_1630->g_75[p_1630->g_133] = 1L;
                p_70 = p_70;
                p_1630->g_95 = p_70;
            }
            if ((*p_70))
            { /* block id: 135 */
                uint16_t *l_307 = &p_1630->g_262;
                uint16_t **l_306 = &l_307;
                uint64_t **l_308[4][3][8] = {{{&l_152,&l_152,(void*)0,&l_152,&l_152,&l_152,&l_152,&l_152},{&l_152,&l_152,(void*)0,&l_152,&l_152,&l_152,&l_152,&l_152},{&l_152,&l_152,(void*)0,&l_152,&l_152,&l_152,&l_152,&l_152}},{{&l_152,&l_152,(void*)0,&l_152,&l_152,&l_152,&l_152,&l_152},{&l_152,&l_152,(void*)0,&l_152,&l_152,&l_152,&l_152,&l_152},{&l_152,&l_152,(void*)0,&l_152,&l_152,&l_152,&l_152,&l_152}},{{&l_152,&l_152,(void*)0,&l_152,&l_152,&l_152,&l_152,&l_152},{&l_152,&l_152,(void*)0,&l_152,&l_152,&l_152,&l_152,&l_152},{&l_152,&l_152,(void*)0,&l_152,&l_152,&l_152,&l_152,&l_152}},{{&l_152,&l_152,(void*)0,&l_152,&l_152,&l_152,&l_152,&l_152},{&l_152,&l_152,(void*)0,&l_152,&l_152,&l_152,&l_152,&l_152},{&l_152,&l_152,(void*)0,&l_152,&l_152,&l_152,&l_152,&l_152}}};
                int8_t *l_309 = &p_1630->g_231[3];
                int8_t *l_319 = &p_1630->g_137[2];
                int32_t l_331 = 0x052F5961L;
                int32_t l_341 = 0L;
                int8_t ***l_344 = &l_343;
                int i, j, k;
                if ((((*l_309) = (safe_mul_func_uint8_t_u_u((((*l_306) = &p_1630->g_262) == (void*)0), (l_308[2][2][1] == (void*)0)))) >= ((*l_319) = ((safe_mul_func_int8_t_s_s(((void*)0 == l_312), ((safe_rshift_func_int8_t_s_s((safe_sub_func_uint32_t_u_u((safe_unary_minus_func_int16_t_s(p_1630->g_7)), (((l_318 , (0UL && (*p_70))) || 0x30L) > p_1630->g_129))), 0)) > 0x32L))) ^ p_69))))
                { /* block id: 139 */
                    uint32_t l_324 = 0xFCAB4B80L;
                    int i;
                    p_1630->g_75[p_1630->g_133] &= ((safe_add_func_int32_t_s_s((safe_rshift_func_int8_t_s_u(p_67, 3)), (*p_70))) <= (l_324 ^ (-1L)));
                    if (p_1630->g_75[p_1630->g_133])
                        break;
                }
                else
                { /* block id: 142 */
                    int64_t *l_332 = &p_1630->g_164;
                    int32_t l_342 = 4L;
                    int i;
                    p_1630->g_75[p_1630->g_129] = ((safe_add_func_int8_t_s_s(((safe_add_func_int8_t_s_s(((p_1630->g_272[0][2] || ((((p_1630->g_333[1] &= ((*l_332) ^= (safe_sub_func_int8_t_s_s(l_331, 0xD9L)))) , p_1630->g_137[0]) , 1L) != l_334)) , (GROUP_DIVERGE(1, 1) & ((safe_add_func_int8_t_s_s(((*l_309) = 7L), (safe_rshift_func_int16_t_s_u(((l_331 = p_67) == (safe_sub_func_uint32_t_u_u(l_341, 4294967287UL))), 12)))) == FAKE_DIVERGE(p_1630->global_2_offset, get_global_id(2), 10)))), l_341)) != l_342), (-1L))) , 0x47A7DE53L);
                }
                (*l_344) = l_343;
                l_345 = (p_70 = p_70);
                for (p_1630->g_238 = 0; (p_1630->g_238 <= 0); p_1630->g_238 += 1)
                { /* block id: 154 */
                    uint32_t *l_358[4];
                    uint32_t **l_357 = &l_358[2];
                    int64_t *l_359 = (void*)0;
                    int64_t *l_360 = &p_1630->g_164;
                    int32_t l_361[4] = {0x57602EC6L,0x57602EC6L,0x57602EC6L,0x57602EC6L};
                    int i;
                    for (i = 0; i < 4; i++)
                        l_358[i] = (void*)0;
                    l_331 ^= (((safe_mod_func_int16_t_s_s(((p_1630->g_75[1] ^= (l_155 = ((0x33F7561DF3716DEDL | (safe_lshift_func_int8_t_s_s(0x6CL, 7))) != (-1L)))) | 0xCFEF7487L), (safe_mod_func_int64_t_s_s(((*l_360) = (((((safe_div_func_int32_t_s_s(1L, l_354)) < ((*l_307) &= (safe_mod_func_int8_t_s_s((((*l_357) = (void*)0) != &p_1630->g_62), p_1630->g_15)))) && p_1630->g_231[3]) && 0x05D28358FC43C31EL) , 0x714AEFDD36A248ADL)), p_67)))) & p_1630->g_6) == p_67);
                    for (p_1630->g_168 = 0; (p_1630->g_168 <= 0); p_1630->g_168 += 1)
                    { /* block id: 163 */
                        int8_t l_371 = 0x1BL;
                        int16_t *l_373 = &p_1630->g_166;
                        int32_t l_374[1][5] = {{0x74FAC663L,0x74FAC663L,0x74FAC663L,0x74FAC663L,0x74FAC663L}};
                        uint32_t *l_379 = &p_1630->g_272[0][6];
                        int i, j;
                        l_374[0][2] ^= ((p_1630->g_229 ^ ((((*l_373) ^= ((((((l_361[0] , (((l_362 != (((safe_mod_func_int32_t_s_s((l_331 = (*p_70)), (*p_70))) ^ (p_69 != ((*l_319) = ((((safe_add_func_int64_t_s_s(0L, ((safe_mul_func_int16_t_s_s((4UL && (safe_mul_func_int8_t_s_s((((((p_69 ^ l_371) < l_372[3]) <= p_1630->g_6) , 18446744073709551606UL) != p_67), l_371))), GROUP_DIVERGE(2, 1))) || 0L))) | 2L) , (*p_70)) == 0x65866FCBL)))) , (void*)0)) >= FAKE_DIVERGE(p_1630->local_0_offset, get_local_id(0), 10)) | 0UL)) < p_1630->g_164) , 0x6CL) != 255UL) && 1UL) >= 1UL)) | 0xB7CAL) , p_1630->g_237)) < FAKE_DIVERGE(p_1630->local_0_offset, get_local_id(0), 10));
                        p_1630->g_7 &= ((((safe_sub_func_int16_t_s_s(0x6CCAL, (((((safe_div_func_int32_t_s_s((&p_1630->g_272[0][2] == l_379), ((safe_sub_func_uint64_t_u_u((p_70 != (l_382[4] = l_379)), (safe_div_func_int8_t_s_s((((safe_add_func_uint16_t_u_u(p_68, ((p_69 = l_387) > ((p_1630->g_392 = ((((*l_307) = (safe_mod_func_int8_t_s_s(((safe_rshift_func_int16_t_s_s(p_1630->g_164, 14)) , p_68), (-6L)))) < p_67) && FAKE_DIVERGE(p_1630->global_0_offset, get_global_id(0), 10))) , p_67)))) <= p_1630->g_231[7]) | 0x31L), p_1630->g_164)))) , 0x64C0C737L))) , &l_331) != (void*)0) >= 1UL) == (*l_345)))) & p_1630->g_272[0][7]) ^ 253UL) > p_1630->g_21);
                    }
                    for (p_1630->g_166 = 3; (p_1630->g_166 >= 0); p_1630->g_166 -= 1)
                    { /* block id: 176 */
                        l_394 = l_393;
                        p_70 = p_70;
                    }
                    (*l_393) = (p_1630->g_272[0][2] & 1L);
                }
            }
            else
            { /* block id: 182 */
                for (l_354 = 0; (l_354 <= 0); l_354 += 1)
                { /* block id: 185 */
                    p_1630->g_95 = p_70;
                    return p_67;
                }
                if ((*p_1630->g_95))
                    break;
                p_1630->g_95 = &p_1630->g_75[1];
                (*l_345) = (*p_1630->g_95);
            }
            for (l_303 = 0; (l_303 <= 0); l_303 += 1)
            { /* block id: 195 */
                p_70 = p_70;
                (*l_393) &= (safe_unary_minus_func_int32_t_s(((&l_151[0][5][1] == p_1630->g_396[2][0]) ^ (*p_70))));
                p_1630->g_95 = p_70;
            }
        }
        for (l_318 = 0; (l_318 >= 0); l_318 -= 1)
        { /* block id: 203 */
            return p_69;
        }
    }
    l_155 = (((((safe_sub_func_uint64_t_u_u(((((safe_lshift_func_uint16_t_u_u(((((safe_rshift_func_int8_t_s_s((!(p_1630->g_200 & ((safe_mod_func_int16_t_s_s((((l_407[3] == (l_412[1] = p_1630->g_409)) <= (&l_343 == (l_415[5] = &l_343))) || (safe_unary_minus_func_int8_t_s((safe_add_func_uint32_t_u_u(p_69, (safe_add_func_int32_t_s_s((l_318 = (*p_70)), ((safe_sub_func_int64_t_s_s(p_1630->g_133, ((p_1630->g_425 |= ((*l_423) = ((p_68 | (-1L)) , 0xD435L))) || 0UL))) , p_1630->g_237)))))))), 6L)) || p_1630->g_133))), 6)) >= p_67) , (*p_70)) > FAKE_DIVERGE(p_1630->group_1_offset, get_group_id(1), 10)), 13)) != p_1630->g_75[1]) , &l_394) == &p_1630->g_95), 18446744073709551615UL)) >= 0x54D17695L) , p_1630->g_15) >= p_68) & p_67);
    return p_1630->g_14;
}


/* ------------------------------------------ */
/* 
 * reads : p_1630->g_94 p_1630->g_75 p_1630->g_95 p_1630->g_6 p_1630->g_129 p_1630->g_15
 * writes: p_1630->g_95 p_1630->g_75 p_1630->g_129 p_1630->g_133 p_1630->g_137 p_1630->g_62
 */
int32_t * func_80(int32_t  p_81, uint8_t  p_82, int32_t ** p_83, int32_t * p_84, uint64_t  p_85, struct S0 * p_1630)
{ /* block id: 33 */
    uint64_t *l_114 = &p_1630->g_77;
    int32_t *l_118 = &p_1630->g_75[0];
    int32_t *l_138 = &p_1630->g_75[1];
    int32_t *l_139 = (void*)0;
    int32_t *l_140 = &p_1630->g_75[1];
    int32_t *l_141 = (void*)0;
    int32_t *l_142 = &p_1630->g_75[2];
    int32_t l_143 = (-7L);
    int32_t *l_144 = &p_1630->g_75[1];
    int32_t *l_145[10] = {&l_143,(void*)0,&l_143,&l_143,(void*)0,&l_143,&l_143,(void*)0,&l_143,&l_143};
    uint64_t l_146 = 4UL;
    int i;
    for (p_85 = 0; (p_85 <= 2); p_85 += 1)
    { /* block id: 36 */
        int i;
        (*p_1630->g_94) = (void*)0;
        p_1630->g_75[p_85] = (l_114 == ((p_1630->g_75[p_85] | p_82) , &p_1630->g_77));
        for (p_82 = (-2); (p_82 != 30); ++p_82)
        { /* block id: 41 */
            int32_t *l_117[4];
            uint8_t *l_128 = &p_1630->g_129;
            uint8_t *l_132[8];
            int8_t *l_136[9] = {&p_1630->g_137[1],&p_1630->g_137[1],&p_1630->g_137[1],&p_1630->g_137[1],&p_1630->g_137[1],&p_1630->g_137[1],&p_1630->g_137[1],&p_1630->g_137[1],&p_1630->g_137[1]};
            int i;
            for (i = 0; i < 4; i++)
                l_117[i] = &p_1630->g_15;
            for (i = 0; i < 8; i++)
                l_132[i] = &p_1630->g_133;
            l_118 = l_117[1];
            for (p_81 = 0; (p_81 == 11); ++p_81)
            { /* block id: 45 */
                return (*p_1630->g_94);
            }
            (*p_1630->g_94) = l_118;
            p_1630->g_75[p_85] = ((9L | (safe_rshift_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(p_1630->g_6, 255UL)), 1))) == (safe_unary_minus_func_int64_t_s(((safe_mul_func_int8_t_s_s((((p_85 != 0x79D8L) < (p_1630->g_133 = (--(*l_128)))) && 65532UL), p_1630->g_15)) , ((GROUP_DIVERGE(0, 1) >= (*l_118)) != (p_1630->g_62 = (safe_rshift_func_uint8_t_u_s((((p_1630->g_137[1] = 6L) > p_82) >= 0x73838C22L), 3))))))));
        }
    }
    l_146--;
    return (*p_83);
}


/* ------------------------------------------ */
/* 
 * reads : p_1630->g_95 p_1630->g_9 p_1630->g_14
 * writes: p_1630->g_75
 */
uint8_t  func_87(int32_t  p_88, int8_t  p_89, int32_t ** p_90, int32_t * p_91, int32_t * p_92, struct S0 * p_1630)
{ /* block id: 28 */
    int32_t *l_97 = (void*)0;
    int32_t *l_98 = (void*)0;
    int32_t *l_99 = &p_1630->g_75[1];
    int32_t *l_100 = &p_1630->g_75[0];
    int32_t l_101[5][8] = {{2L,0x0796DE13L,0x0796DE13L,2L,2L,0x0796DE13L,0x0796DE13L,2L},{2L,0x0796DE13L,0x0796DE13L,2L,2L,0x0796DE13L,0x0796DE13L,2L},{2L,0x0796DE13L,0x0796DE13L,2L,2L,0x0796DE13L,0x0796DE13L,2L},{2L,0x0796DE13L,0x0796DE13L,2L,2L,0x0796DE13L,0x0796DE13L,2L},{2L,0x0796DE13L,0x0796DE13L,2L,2L,0x0796DE13L,0x0796DE13L,2L}};
    int32_t *l_102 = &l_101[2][6];
    int32_t *l_103 = (void*)0;
    int32_t *l_104 = &p_1630->g_75[2];
    int32_t *l_105 = &l_101[2][6];
    int32_t *l_106[4];
    int64_t l_107[4] = {0x4F7409415F90230FL,0x4F7409415F90230FL,0x4F7409415F90230FL,0x4F7409415F90230FL};
    int32_t l_108 = 1L;
    int8_t l_109 = (-1L);
    int32_t l_110 = 1L;
    uint16_t l_111 = 65535UL;
    int i, j;
    for (i = 0; i < 4; i++)
        l_106[i] = &p_1630->g_75[1];
    --l_111;
    (*l_102) |= ((*l_99) = (**p_90));
    return p_1630->g_14;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[4];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 4; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[4];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 4; i++)
            l_special_values[i] = 0;
    struct S0 c_1631;
    struct S0* p_1630 = &c_1631;
    struct S0 c_1632 = {
        0x794964A5L, // p_1630->g_2
        0x2B165808L, // p_1630->g_5
        0x045D811FL, // p_1630->g_6
        0x4BC662A2L, // p_1630->g_7
        9L, // p_1630->g_8
        0x5B5CABFCL, // p_1630->g_9
        0x6C995F76L, // p_1630->g_13
        0L, // p_1630->g_14
        0x77C422D5L, // p_1630->g_15
        0x5520F303L, // p_1630->g_21
        &p_1630->g_21, // p_1630->g_20
        0xD52FFABEL, // p_1630->g_62
        {{{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)}}}, // p_1630->g_65
        {(-5L),(-5L),(-5L)}, // p_1630->g_75
        0x12B152D5F2ABA01CL, // p_1630->g_77
        &p_1630->g_9, // p_1630->g_95
        &p_1630->g_95, // p_1630->g_94
        0x53L, // p_1630->g_129
        0xF1L, // p_1630->g_133
        {0L,0L,0L}, // p_1630->g_137
        0x25C51E81E1FAD2F1L, // p_1630->g_164
        0L, // p_1630->g_166
        (-1L), // p_1630->g_168
        0x51L, // p_1630->g_200
        4294967292UL, // p_1630->g_229
        {(-10L),(-1L),(-10L),(-10L),(-1L),(-10L),(-10L),(-1L)}, // p_1630->g_231
        1L, // p_1630->g_237
        4294967294UL, // p_1630->g_238
        0x6017L, // p_1630->g_262
        {{0xD34A9AF0L,0xEDD34A8CL,4294967287UL,0xEDD34A8CL,0xD34A9AF0L,0xD34A9AF0L,0xEDD34A8CL,4294967287UL,0xEDD34A8CL,0xD34A9AF0L}}, // p_1630->g_272
        {3L,3L,3L,3L,3L,3L,3L,3L,3L,3L}, // p_1630->g_333
        0x5C1EL, // p_1630->g_392
        (void*)0, // p_1630->g_398
        &p_1630->g_398, // p_1630->g_397
        {{&p_1630->g_397,&p_1630->g_397},{&p_1630->g_397,&p_1630->g_397},{&p_1630->g_397,&p_1630->g_397},{&p_1630->g_397,&p_1630->g_397},{&p_1630->g_397,&p_1630->g_397},{&p_1630->g_397,&p_1630->g_397},{&p_1630->g_397,&p_1630->g_397},{&p_1630->g_397,&p_1630->g_397},{&p_1630->g_397,&p_1630->g_397},{&p_1630->g_397,&p_1630->g_397}}, // p_1630->g_396
        (void*)0, // p_1630->g_410
        &p_1630->g_410, // p_1630->g_409
        65535UL, // p_1630->g_425
        &p_1630->g_129, // p_1630->g_515
        {&p_1630->g_515,&p_1630->g_515,&p_1630->g_515,&p_1630->g_515,&p_1630->g_515,&p_1630->g_515}, // p_1630->g_514
        4L, // p_1630->g_524
        0UL, // p_1630->g_527
        0x6AE3A0E2L, // p_1630->g_622
        &p_1630->g_622, // p_1630->g_621
        {&p_1630->g_621,&p_1630->g_621,&p_1630->g_621,&p_1630->g_621,&p_1630->g_621,&p_1630->g_621,&p_1630->g_621,&p_1630->g_621}, // p_1630->g_620
        {{0x6875L,0x6875L,4L,1L,0x22B9L,1L},{0x6875L,0x6875L,4L,1L,0x22B9L,1L},{0x6875L,0x6875L,4L,1L,0x22B9L,1L},{0x6875L,0x6875L,4L,1L,0x22B9L,1L},{0x6875L,0x6875L,4L,1L,0x22B9L,1L},{0x6875L,0x6875L,4L,1L,0x22B9L,1L},{0x6875L,0x6875L,4L,1L,0x22B9L,1L}}, // p_1630->g_634
        0x30C9L, // p_1630->g_718
        1L, // p_1630->g_749
        1L, // p_1630->g_803
        &p_1630->g_94, // p_1630->g_823
        &p_1630->g_823, // p_1630->g_822
        (void*)0, // p_1630->g_874
        1UL, // p_1630->g_899
        &p_1630->g_137[1], // p_1630->g_912
        &p_1630->g_912, // p_1630->g_911
        (void*)0, // p_1630->g_952
        {{{1UL,0xF9A10335L},{1UL,0xF9A10335L},{1UL,0xF9A10335L},{1UL,0xF9A10335L},{1UL,0xF9A10335L}},{{1UL,0xF9A10335L},{1UL,0xF9A10335L},{1UL,0xF9A10335L},{1UL,0xF9A10335L},{1UL,0xF9A10335L}},{{1UL,0xF9A10335L},{1UL,0xF9A10335L},{1UL,0xF9A10335L},{1UL,0xF9A10335L},{1UL,0xF9A10335L}},{{1UL,0xF9A10335L},{1UL,0xF9A10335L},{1UL,0xF9A10335L},{1UL,0xF9A10335L},{1UL,0xF9A10335L}},{{1UL,0xF9A10335L},{1UL,0xF9A10335L},{1UL,0xF9A10335L},{1UL,0xF9A10335L},{1UL,0xF9A10335L}},{{1UL,0xF9A10335L},{1UL,0xF9A10335L},{1UL,0xF9A10335L},{1UL,0xF9A10335L},{1UL,0xF9A10335L}},{{1UL,0xF9A10335L},{1UL,0xF9A10335L},{1UL,0xF9A10335L},{1UL,0xF9A10335L},{1UL,0xF9A10335L}},{{1UL,0xF9A10335L},{1UL,0xF9A10335L},{1UL,0xF9A10335L},{1UL,0xF9A10335L},{1UL,0xF9A10335L}},{{1UL,0xF9A10335L},{1UL,0xF9A10335L},{1UL,0xF9A10335L},{1UL,0xF9A10335L},{1UL,0xF9A10335L}}}, // p_1630->g_983
        {8UL,18446744073709551610UL,8UL,8UL,18446744073709551610UL,8UL}, // p_1630->g_1041
        (void*)0, // p_1630->g_1073
        &p_1630->g_1073, // p_1630->g_1072
        0UL, // p_1630->g_1076
        {&p_1630->g_13}, // p_1630->g_1100
        &p_1630->g_1100[0], // p_1630->g_1099
        {{{&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_2,&p_1630->g_75[1],&p_1630->g_2,&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_21,&p_1630->g_9},{&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_2,&p_1630->g_75[1],&p_1630->g_2,&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_21,&p_1630->g_9},{&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_2,&p_1630->g_75[1],&p_1630->g_2,&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_21,&p_1630->g_9},{&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_2,&p_1630->g_75[1],&p_1630->g_2,&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_21,&p_1630->g_9},{&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_2,&p_1630->g_75[1],&p_1630->g_2,&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_21,&p_1630->g_9}},{{&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_2,&p_1630->g_75[1],&p_1630->g_2,&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_21,&p_1630->g_9},{&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_2,&p_1630->g_75[1],&p_1630->g_2,&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_21,&p_1630->g_9},{&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_2,&p_1630->g_75[1],&p_1630->g_2,&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_21,&p_1630->g_9},{&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_2,&p_1630->g_75[1],&p_1630->g_2,&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_21,&p_1630->g_9},{&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_2,&p_1630->g_75[1],&p_1630->g_2,&p_1630->g_75[1],&p_1630->g_75[1],&p_1630->g_21,&p_1630->g_9}}}, // p_1630->g_1129
        (void*)0, // p_1630->g_1142
        &p_1630->g_1142, // p_1630->g_1141
        0xCF378F7AL, // p_1630->g_1291
        &p_1630->g_333[1], // p_1630->g_1311
        &p_1630->g_1311, // p_1630->g_1310
        0x0EDE0C14L, // p_1630->g_1386
        &p_1630->g_1072, // p_1630->g_1406
        (void*)0, // p_1630->g_1423
        {&p_1630->g_524}, // p_1630->g_1430
        &p_1630->g_1430[0], // p_1630->g_1429
        {{(void*)0,(void*)0,&p_1630->g_65[2][1][0],&p_1630->g_65[8][1][0],(void*)0},{(void*)0,(void*)0,&p_1630->g_65[2][1][0],&p_1630->g_65[8][1][0],(void*)0},{(void*)0,(void*)0,&p_1630->g_65[2][1][0],&p_1630->g_65[8][1][0],(void*)0},{(void*)0,(void*)0,&p_1630->g_65[2][1][0],&p_1630->g_65[8][1][0],(void*)0},{(void*)0,(void*)0,&p_1630->g_65[2][1][0],&p_1630->g_65[8][1][0],(void*)0},{(void*)0,(void*)0,&p_1630->g_65[2][1][0],&p_1630->g_65[8][1][0],(void*)0},{(void*)0,(void*)0,&p_1630->g_65[2][1][0],&p_1630->g_65[8][1][0],(void*)0},{(void*)0,(void*)0,&p_1630->g_65[2][1][0],&p_1630->g_65[8][1][0],(void*)0}}, // p_1630->g_1455
        {{&p_1630->g_1455[1][1],&p_1630->g_1455[1][1],&p_1630->g_1455[1][1],&p_1630->g_1455[1][1]},{&p_1630->g_1455[1][1],&p_1630->g_1455[1][1],&p_1630->g_1455[1][1],&p_1630->g_1455[1][1]},{&p_1630->g_1455[1][1],&p_1630->g_1455[1][1],&p_1630->g_1455[1][1],&p_1630->g_1455[1][1]}}, // p_1630->g_1454
        (-9L), // p_1630->g_1478
        {(-9L),(-9L),(-9L),(-9L),(-9L),(-9L),(-9L),(-9L)}, // p_1630->g_1603
        {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}, // p_1630->g_1620
        sequence_input[get_global_id(0)], // p_1630->global_0_offset
        sequence_input[get_global_id(1)], // p_1630->global_1_offset
        sequence_input[get_global_id(2)], // p_1630->global_2_offset
        sequence_input[get_local_id(0)], // p_1630->local_0_offset
        sequence_input[get_local_id(1)], // p_1630->local_1_offset
        sequence_input[get_local_id(2)], // p_1630->local_2_offset
        sequence_input[get_group_id(0)], // p_1630->group_0_offset
        sequence_input[get_group_id(1)], // p_1630->group_1_offset
        sequence_input[get_group_id(2)], // p_1630->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_1631 = c_1632;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1630);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1630->g_2, "p_1630->g_2", print_hash_value);
    transparent_crc(p_1630->g_5, "p_1630->g_5", print_hash_value);
    transparent_crc(p_1630->g_6, "p_1630->g_6", print_hash_value);
    transparent_crc(p_1630->g_7, "p_1630->g_7", print_hash_value);
    transparent_crc(p_1630->g_8, "p_1630->g_8", print_hash_value);
    transparent_crc(p_1630->g_9, "p_1630->g_9", print_hash_value);
    transparent_crc(p_1630->g_13, "p_1630->g_13", print_hash_value);
    transparent_crc(p_1630->g_14, "p_1630->g_14", print_hash_value);
    transparent_crc(p_1630->g_15, "p_1630->g_15", print_hash_value);
    transparent_crc(p_1630->g_21, "p_1630->g_21", print_hash_value);
    transparent_crc(p_1630->g_62, "p_1630->g_62", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_1630->g_65[i][j][k], "p_1630->g_65[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1630->g_75[i], "p_1630->g_75[i]", print_hash_value);

    }
    transparent_crc(p_1630->g_77, "p_1630->g_77", print_hash_value);
    transparent_crc(p_1630->g_129, "p_1630->g_129", print_hash_value);
    transparent_crc(p_1630->g_133, "p_1630->g_133", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1630->g_137[i], "p_1630->g_137[i]", print_hash_value);

    }
    transparent_crc(p_1630->g_164, "p_1630->g_164", print_hash_value);
    transparent_crc(p_1630->g_166, "p_1630->g_166", print_hash_value);
    transparent_crc(p_1630->g_168, "p_1630->g_168", print_hash_value);
    transparent_crc(p_1630->g_200, "p_1630->g_200", print_hash_value);
    transparent_crc(p_1630->g_229, "p_1630->g_229", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1630->g_231[i], "p_1630->g_231[i]", print_hash_value);

    }
    transparent_crc(p_1630->g_237, "p_1630->g_237", print_hash_value);
    transparent_crc(p_1630->g_238, "p_1630->g_238", print_hash_value);
    transparent_crc(p_1630->g_262, "p_1630->g_262", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1630->g_272[i][j], "p_1630->g_272[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1630->g_333[i], "p_1630->g_333[i]", print_hash_value);

    }
    transparent_crc(p_1630->g_392, "p_1630->g_392", print_hash_value);
    transparent_crc(p_1630->g_425, "p_1630->g_425", print_hash_value);
    transparent_crc(p_1630->g_524, "p_1630->g_524", print_hash_value);
    transparent_crc(p_1630->g_527, "p_1630->g_527", print_hash_value);
    transparent_crc(p_1630->g_622, "p_1630->g_622", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_1630->g_634[i][j], "p_1630->g_634[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1630->g_718, "p_1630->g_718", print_hash_value);
    transparent_crc(p_1630->g_749, "p_1630->g_749", print_hash_value);
    transparent_crc(p_1630->g_803, "p_1630->g_803", print_hash_value);
    transparent_crc(p_1630->g_899, "p_1630->g_899", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1630->g_983[i][j][k], "p_1630->g_983[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1630->g_1041[i], "p_1630->g_1041[i]", print_hash_value);

    }
    transparent_crc(p_1630->g_1076, "p_1630->g_1076", print_hash_value);
    transparent_crc(p_1630->g_1291, "p_1630->g_1291", print_hash_value);
    transparent_crc(p_1630->g_1386, "p_1630->g_1386", print_hash_value);
    transparent_crc(p_1630->g_1478, "p_1630->g_1478", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1630->g_1603[i], "p_1630->g_1603[i]", print_hash_value);

    }
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1630->g_1620[i], "p_1630->g_1620[i]", print_hash_value);

    }
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 4; i++)
            transparent_crc(p_1630->g_special_values[i + 4 * get_linear_group_id()], "p_1630->g_special_values[i + 4 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 4; i++)
            transparent_crc(p_1630->l_special_values[i], "p_1630->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
