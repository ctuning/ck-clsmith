// --atomics 91 ---fake_divergence -g 51,37,1 -l 51,1,1
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


// Seed: 24

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile int32_t g_60;
    volatile int32_t g_61;
    volatile int32_t g_62[7][4];
    int32_t g_63[6];
    int32_t g_113;
    uint16_t g_118;
    uint32_t g_122;
    int64_t g_131;
    uint8_t g_141;
    uint8_t g_143;
    uint32_t g_150;
    uint32_t g_151;
    uint8_t g_152[8];
    int8_t g_154;
    uint16_t g_155[3];
    uint16_t g_158;
    int32_t g_175[8][2][7];
    int64_t *g_180;
    uint8_t g_210[10];
    int8_t g_244;
    int32_t *g_271;
    int32_t **g_270;
    uint16_t g_327;
    uint16_t *g_353;
    int32_t g_369;
    uint64_t g_396;
    int32_t **g_407;
    int32_t ***g_406;
    int16_t g_428;
    volatile int64_t * volatile **g_450[2];
    int8_t g_452[1][10];
    int64_t g_515;
    int8_t g_549;
    uint16_t g_655;
    int64_t **g_665;
    int64_t ***g_664[9][2];
    int64_t ***g_667[1][10][3];
    int64_t g_683;
    int64_t *g_689;
    uint64_t g_711;
    uint64_t g_766[1];
    volatile uint16_t g_799;
    volatile uint8_t * volatile g_818[6][5];
    volatile uint8_t * volatile *g_817[3][7][6];
    volatile uint8_t * volatile ** volatile g_816;
    uint32_t *g_841;
    uint32_t **g_840;
    volatile int8_t g_848[6];
    volatile int8_t g_849;
    volatile int8_t * volatile g_847[4];
    volatile int8_t * volatile *g_846;
    volatile int32_t g_1005;
    int8_t *g_1035[4];
    int8_t **g_1034;
    int16_t *g_1165;
    int16_t ** volatile g_1164;
    volatile uint32_t g_1178;
    int8_t **g_1208;
    int8_t ***g_1207;
    uint8_t g_1211[9][1];
    volatile int8_t * volatile * volatile *g_1214[9];
    volatile int8_t * volatile * volatile **g_1213;
    uint64_t *** volatile g_1274;
    uint32_t g_1352;
    int32_t g_1359;
    int8_t ***g_1365;
    volatile uint64_t g_1458;
    uint8_t *g_1509;
    uint8_t **g_1508;
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
int16_t  func_1(struct S0 * p_1582);
int32_t * func_66(int32_t * p_67, int32_t  p_68, int32_t * p_69, int32_t * p_70, struct S0 * p_1582);
int32_t * func_71(int32_t * p_72, struct S0 * p_1582);
int32_t * func_73(int32_t * p_74, uint16_t  p_75, int8_t  p_76, int32_t * p_77, struct S0 * p_1582);
int32_t * func_78(uint16_t  p_79, int32_t * p_80, struct S0 * p_1582);
int32_t * func_84(uint8_t  p_85, struct S0 * p_1582);
int32_t  func_87(int64_t  p_88, uint16_t  p_89, int32_t * p_90, struct S0 * p_1582);
int32_t  func_91(uint32_t  p_92, int32_t * p_93, struct S0 * p_1582);
int8_t  func_103(int32_t * p_104, int32_t * p_105, uint64_t  p_106, uint32_t  p_107, int32_t * p_108, struct S0 * p_1582);
int32_t * func_109(int32_t * p_110, int32_t  p_111, int64_t  p_112, struct S0 * p_1582);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1582->g_63
 * writes: p_1582->g_63
 */
int16_t  func_1(struct S0 * p_1582)
{ /* block id: 4 */
    int8_t **l_1205 = &p_1582->g_1035[3];
    int8_t ***l_1204 = &l_1205;
    int32_t l_1209[7][9][2] = {{{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL}},{{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL}},{{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL}},{{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL}},{{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL}},{{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL}},{{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL},{0x57E2912AL,0x57E2912AL}}};
    int32_t *l_1580 = &p_1582->g_1359;
    int64_t l_1581 = 1L;
    int i, j, k;
    if ((atomic_inc(&p_1582->g_atomic_input[91 * get_linear_group_id() + 13]) == 1))
    { /* block id: 6 */
        int32_t l_2 = 0x42039807L;
        int32_t l_12[5];
        uint32_t l_30[6] = {9UL,0xEC6C0484L,9UL,9UL,0xEC6C0484L,9UL};
        int i;
        for (i = 0; i < 5; i++)
            l_12[i] = 0x5CC80FC3L;
        for (l_2 = 0; (l_2 <= (-12)); l_2 = safe_sub_func_uint8_t_u_u(l_2, 8))
        { /* block id: 9 */
            int64_t l_5 = (-1L);
            uint32_t l_6 = 0UL;
            uint8_t l_7 = 253UL;
            uint32_t l_8[9][7] = {{0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL},{0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL},{0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL},{0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL},{0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL},{0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL},{0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL},{0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL},{0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL,0xAE649F6DL}};
            int i, j;
            l_5 = 0x3666A756L;
            l_7 = (l_6 ^= 0x11151C3CL);
            for (l_8[8][4] = 0; (l_8[8][4] <= 6); l_8[8][4] += 1)
            { /* block id: 15 */
                uint64_t l_9 = 1UL;
                int16_t l_25 = 0x74F5L;
                int32_t l_26 = 0x197EC53AL;
                uint8_t l_27[8];
                uint32_t l_28 = 0xDBEC151DL;
                uint16_t l_29 = 0x505DL;
                int i, j;
                for (i = 0; i < 8; i++)
                    l_27[i] = 250UL;
                --l_9;
                for (l_9 = 0; (l_9 <= 6); l_9 += 1)
                { /* block id: 19 */
                    int32_t l_13[7][6] = {{0x4B0BEFCDL,(-1L),(-1L),0x4B0BEFCDL,0x4B0BEFCDL,(-1L)},{0x4B0BEFCDL,(-1L),(-1L),0x4B0BEFCDL,0x4B0BEFCDL,(-1L)},{0x4B0BEFCDL,(-1L),(-1L),0x4B0BEFCDL,0x4B0BEFCDL,(-1L)},{0x4B0BEFCDL,(-1L),(-1L),0x4B0BEFCDL,0x4B0BEFCDL,(-1L)},{0x4B0BEFCDL,(-1L),(-1L),0x4B0BEFCDL,0x4B0BEFCDL,(-1L)},{0x4B0BEFCDL,(-1L),(-1L),0x4B0BEFCDL,0x4B0BEFCDL,(-1L)},{0x4B0BEFCDL,(-1L),(-1L),0x4B0BEFCDL,0x4B0BEFCDL,(-1L)}};
                    int32_t *l_21 = (void*)0;
                    int32_t *l_22 = &l_13[4][4];
                    int8_t l_23 = 0L;
                    int16_t l_24 = 0x57F2L;
                    int i, j;
                    for (l_13[4][3] = 4; (l_13[4][3] >= 0); l_13[4][3] -= 1)
                    { /* block id: 22 */
                        int8_t l_14 = 0x3AL;
                        uint32_t l_17 = 0xD1883800L;
                        int32_t *l_18 = &l_12[l_13[4][3]];
                        int32_t *l_19[8][3] = {{&l_12[l_13[4][3]],&l_12[l_13[4][3]],&l_12[l_13[4][3]]},{&l_12[l_13[4][3]],&l_12[l_13[4][3]],&l_12[l_13[4][3]]},{&l_12[l_13[4][3]],&l_12[l_13[4][3]],&l_12[l_13[4][3]]},{&l_12[l_13[4][3]],&l_12[l_13[4][3]],&l_12[l_13[4][3]]},{&l_12[l_13[4][3]],&l_12[l_13[4][3]],&l_12[l_13[4][3]]},{&l_12[l_13[4][3]],&l_12[l_13[4][3]],&l_12[l_13[4][3]]},{&l_12[l_13[4][3]],&l_12[l_13[4][3]],&l_12[l_13[4][3]]},{&l_12[l_13[4][3]],&l_12[l_13[4][3]],&l_12[l_13[4][3]]}};
                        int32_t l_20 = 0x0299FA9EL;
                        int i, j;
                        l_19[7][1] = ((l_8[(l_9 + 2)][(l_13[4][3] + 1)] , ((l_7++) , (l_17 &= (l_12[l_13[4][3]] , l_12[l_13[4][3]])))) , l_18);
                        l_20 = 0x7DA6C2E3L;
                    }
                    l_22 = l_21;
                    l_24 = (l_8[(l_9 + 2)][l_8[8][4]] , l_23);
                }
                l_25 &= l_8[(l_8[8][4] + 2)][l_8[8][4]];
                l_29 = ((l_28 = (l_27[0] = (l_26 = l_8[(l_8[8][4] + 1)][l_8[8][4]]))) , 0x3B1D4416L);
            }
        }
        if (l_30[4])
        { /* block id: 38 */
            int32_t l_31 = (-1L);
            for (l_31 = 4; (l_31 >= 1); l_31 -= 1)
            { /* block id: 41 */
                int32_t l_32 = 1L;
                for (l_32 = 0; (l_32 <= 5); l_32 += 1)
                { /* block id: 44 */
                    int32_t l_33 = 0x111ACA8BL;
                    uint32_t l_49 = 0x792179B1L;
                    int32_t l_55 = 0L;
                    uint32_t l_56 = 4294967295UL;
                    for (l_33 = 0; (l_33 <= 5); l_33 += 1)
                    { /* block id: 47 */
                        int32_t l_34[7];
                        uint32_t l_35 = 1UL;
                        int32_t *l_36 = &l_34[3];
                        int32_t *l_37[9] = {&l_34[4],&l_34[4],&l_34[4],&l_34[4],&l_34[4],&l_34[4],&l_34[4],&l_34[4],&l_34[4]};
                        int8_t l_38 = 0x6FL;
                        int i;
                        for (i = 0; i < 7; i++)
                            l_34[i] = 0x4086237DL;
                        l_2 ^= (l_12[3] = 0L);
                        l_12[3] = (l_30[l_33] , l_34[4]);
                        l_37[3] = (l_36 = (l_35 , (void*)0));
                        l_12[0] = l_38;
                    }
                    for (l_33 = 0; (l_33 <= (-17)); l_33 = safe_sub_func_int16_t_s_s(l_33, 1))
                    { /* block id: 57 */
                        int8_t l_41 = 1L;
                        int16_t l_42[5];
                        int64_t l_43 = 8L;
                        int32_t l_44 = 0x67338D58L;
                        uint32_t l_45 = 0xF497A847L;
                        int64_t l_48 = 3L;
                        int i;
                        for (i = 0; i < 5; i++)
                            l_42[i] = (-6L);
                        l_45++;
                        l_2 ^= l_48;
                    }
                    if (l_49)
                    { /* block id: 61 */
                        int32_t l_51 = 2L;
                        int32_t *l_50[4];
                        int32_t *l_52 = (void*)0;
                        int i;
                        for (i = 0; i < 4; i++)
                            l_50[i] = &l_51;
                        l_52 = l_50[2];
                    }
                    else
                    { /* block id: 63 */
                        uint64_t l_53 = 9UL;
                        int64_t l_54 = 0x30392260F1475AC3L;
                        l_33 = 0L;
                        l_54 &= l_53;
                    }
                    l_56 |= l_55;
                }
            }
        }
        else
        { /* block id: 70 */
            uint16_t l_57 = 0UL;
            l_57--;
        }
        unsigned int result = 0;
        result += l_2;
        int l_12_i0;
        for (l_12_i0 = 0; l_12_i0 < 5; l_12_i0++) {
            result += l_12[l_12_i0];
        }
        int l_30_i0;
        for (l_30_i0 = 0; l_30_i0 < 6; l_30_i0++) {
            result += l_30[l_30_i0];
        }
        atomic_add(&p_1582->g_special_values[91 * get_linear_group_id() + 13], result);
    }
    else
    { /* block id: 73 */
        (1 + 1);
    }
    for (p_1582->g_63[0] = 8; (p_1582->g_63[0] >= 12); p_1582->g_63[0] = safe_add_func_uint8_t_u_u(p_1582->g_63[0], 2))
    { /* block id: 78 */
        int8_t ****l_1206[6] = {&l_1204,&l_1204,&l_1204,&l_1204,&l_1204,&l_1204};
        uint8_t *l_1210 = &p_1582->g_1211[6][0];
        uint8_t l_1212 = 0x1AL;
        int32_t *l_1215 = &p_1582->g_63[0];
        int i;
        (1 + 1);
    }
    return l_1581;
}


/* ------------------------------------------ */
/* 
 * reads : p_1582->g_353 p_1582->g_158 p_1582->g_655 p_1582->g_155 p_1582->g_154 p_1582->g_270 p_1582->g_175 p_1582->g_122 p_1582->g_131 p_1582->g_840 p_1582->g_841 p_1582->g_271 p_1582->g_63 p_1582->g_396 p_1582->g_141 p_1582->g_152 p_1582->g_407 p_1582->g_143 p_1582->g_1508 p_1582->g_62
 * writes: p_1582->g_155 p_1582->g_154 p_1582->g_271 p_1582->g_711 p_1582->g_1211 p_1582->g_131 p_1582->g_158 p_1582->g_655 p_1582->g_122 p_1582->g_150 p_1582->g_396 p_1582->g_141 p_1582->g_1508
 */
int32_t * func_66(int32_t * p_67, int32_t  p_68, int32_t * p_69, int32_t * p_70, struct S0 * p_1582)
{ /* block id: 633 */
    uint16_t l_1219[9];
    uint16_t *l_1222[2][4][3] = {{{&p_1582->g_155[0],&p_1582->g_155[2],&p_1582->g_155[0]},{&p_1582->g_155[0],&p_1582->g_155[2],&p_1582->g_155[0]},{&p_1582->g_155[0],&p_1582->g_155[2],&p_1582->g_155[0]},{&p_1582->g_155[0],&p_1582->g_155[2],&p_1582->g_155[0]}},{{&p_1582->g_155[0],&p_1582->g_155[2],&p_1582->g_155[0]},{&p_1582->g_155[0],&p_1582->g_155[2],&p_1582->g_155[0]},{&p_1582->g_155[0],&p_1582->g_155[2],&p_1582->g_155[0]},{&p_1582->g_155[0],&p_1582->g_155[2],&p_1582->g_155[0]}}};
    int32_t l_1223 = 0x252BA32AL;
    int32_t l_1224 = 1L;
    int32_t l_1225 = (-3L);
    int32_t l_1226 = 0L;
    uint64_t *l_1230 = (void*)0;
    int8_t l_1236 = 7L;
    uint32_t l_1251 = 0xB6B2EF67L;
    int8_t ****l_1266 = &p_1582->g_1207;
    uint8_t *l_1272 = (void*)0;
    uint8_t **l_1271[9][1] = {{&l_1272},{&l_1272},{&l_1272},{&l_1272},{&l_1272},{&l_1272},{&l_1272},{&l_1272},{&l_1272}};
    uint64_t **l_1273 = &l_1230;
    uint32_t **l_1324 = (void*)0;
    int32_t l_1341 = 0L;
    uint32_t l_1342 = 4294967295UL;
    int32_t ***l_1441 = (void*)0;
    int32_t l_1454 = (-3L);
    uint64_t **l_1568 = &l_1230;
    int32_t l_1576[10][4][3] = {{{0x2CC23E71L,0x1C289368L,0x2CC23E71L},{0x2CC23E71L,0x1C289368L,0x2CC23E71L},{0x2CC23E71L,0x1C289368L,0x2CC23E71L},{0x2CC23E71L,0x1C289368L,0x2CC23E71L}},{{0x2CC23E71L,0x1C289368L,0x2CC23E71L},{0x2CC23E71L,0x1C289368L,0x2CC23E71L},{0x2CC23E71L,0x1C289368L,0x2CC23E71L},{0x2CC23E71L,0x1C289368L,0x2CC23E71L}},{{0x2CC23E71L,0x1C289368L,0x2CC23E71L},{0x2CC23E71L,0x1C289368L,0x2CC23E71L},{0x2CC23E71L,0x1C289368L,0x2CC23E71L},{0x2CC23E71L,0x1C289368L,0x2CC23E71L}},{{0x2CC23E71L,0x1C289368L,0x2CC23E71L},{0x2CC23E71L,0x1C289368L,0x2CC23E71L},{0x2CC23E71L,0x1C289368L,0x2CC23E71L},{0x2CC23E71L,0x1C289368L,0x2CC23E71L}},{{0x2CC23E71L,0x1C289368L,0x2CC23E71L},{0x2CC23E71L,0x1C289368L,0x2CC23E71L},{0x2CC23E71L,0x1C289368L,0x2CC23E71L},{0x2CC23E71L,0x1C289368L,0x2CC23E71L}},{{0x2CC23E71L,0x1C289368L,0x2CC23E71L},{0x2CC23E71L,0x1C289368L,0x2CC23E71L},{0x2CC23E71L,0x1C289368L,0x2CC23E71L},{0x2CC23E71L,0x1C289368L,0x2CC23E71L}},{{0x2CC23E71L,0x1C289368L,0x2CC23E71L},{0x2CC23E71L,0x1C289368L,0x2CC23E71L},{0x2CC23E71L,0x1C289368L,0x2CC23E71L},{0x2CC23E71L,0x1C289368L,0x2CC23E71L}},{{0x2CC23E71L,0x1C289368L,0x2CC23E71L},{0x2CC23E71L,0x1C289368L,0x2CC23E71L},{0x2CC23E71L,0x1C289368L,0x2CC23E71L},{0x2CC23E71L,0x1C289368L,0x2CC23E71L}},{{0x2CC23E71L,0x1C289368L,0x2CC23E71L},{0x2CC23E71L,0x1C289368L,0x2CC23E71L},{0x2CC23E71L,0x1C289368L,0x2CC23E71L},{0x2CC23E71L,0x1C289368L,0x2CC23E71L}},{{0x2CC23E71L,0x1C289368L,0x2CC23E71L},{0x2CC23E71L,0x1C289368L,0x2CC23E71L},{0x2CC23E71L,0x1C289368L,0x2CC23E71L},{0x2CC23E71L,0x1C289368L,0x2CC23E71L}}};
    int i, j, k;
    for (i = 0; i < 9; i++)
        l_1219[i] = 65531UL;
    if ((safe_add_func_uint16_t_u_u((((l_1225 = (0x2361129C6956F3E0L && (((((safe_unary_minus_func_int64_t_s((l_1219[4] = (((void*)0 != &p_69) | GROUP_DIVERGE(1, 1))))) ^ (0x29L | (p_68 , (safe_rshift_func_uint16_t_u_u((*p_1582->g_353), (--p_1582->g_155[2])))))) < ((safe_unary_minus_func_int8_t_s((-8L))) & (p_68 < ((void*)0 != &l_1222[0][3][2])))) != 0x6DL) > l_1223))) | 0x3CA67E61E1012C10L) & 0x08CD7F5AC9B56070L), l_1226)))
    { /* block id: 637 */
        int16_t l_1231 = (-6L);
        uint32_t l_1252 = 0x878F022FL;
        int32_t *l_1253 = &l_1226;
        for (p_1582->g_154 = 0; (p_1582->g_154 <= 1); p_1582->g_154 += 1)
        { /* block id: 640 */
            uint32_t l_1247 = 0x568EDF2CL;
            uint64_t *l_1250 = &p_1582->g_711;
            int i;
            (*p_1582->g_270) = p_67;
            (*p_1582->g_270) = p_70;
        }
        l_1224 = ((safe_mod_func_uint32_t_u_u((safe_mul_func_int16_t_s_s((*l_1253), (0x466E87EAL || (0L || ((safe_mod_func_uint16_t_u_u((safe_mod_func_int64_t_s_s((p_68 && (((0xC3L || p_68) , (safe_rshift_func_int8_t_s_s((((p_1582->g_711 = ((~((((l_1251 && GROUP_DIVERGE(0, 1)) > (65535UL & (((safe_sub_func_int32_t_s_s((((*l_1253) , 8UL) >= p_1582->g_175[1][1][0]), p_68)) & p_68) , p_68))) || 0x1EDAL) <= l_1219[5])) , 0x7B71C036CB8312D0L)) & p_1582->g_122) , p_68), p_68))) > 0x172C2929L)), 0x12BEE71E89323AA1L)), 0x2683L)) >= l_1224))))), p_68)) <= p_68);
    }
    else
    { /* block id: 648 */
        uint8_t *l_1269 = &p_1582->g_1211[0][0];
        int32_t l_1270 = 0x4A8C778CL;
        uint64_t ***l_1275 = (void*)0;
        uint64_t ***l_1276 = &l_1273;
        uint64_t *l_1283[4][1][8] = {{{&p_1582->g_711,&p_1582->g_711,&p_1582->g_396,&p_1582->g_711,&p_1582->g_711,&p_1582->g_711,&p_1582->g_711,&p_1582->g_396}},{{&p_1582->g_711,&p_1582->g_711,&p_1582->g_396,&p_1582->g_711,&p_1582->g_711,&p_1582->g_711,&p_1582->g_711,&p_1582->g_396}},{{&p_1582->g_711,&p_1582->g_711,&p_1582->g_396,&p_1582->g_711,&p_1582->g_711,&p_1582->g_711,&p_1582->g_711,&p_1582->g_396}},{{&p_1582->g_711,&p_1582->g_711,&p_1582->g_396,&p_1582->g_711,&p_1582->g_711,&p_1582->g_711,&p_1582->g_711,&p_1582->g_396}}};
        uint16_t **l_1304 = &p_1582->g_353;
        int32_t l_1345 = 2L;
        uint32_t l_1361 = 4294967289UL;
        int64_t **l_1364[8] = {&p_1582->g_689,&p_1582->g_689,&p_1582->g_689,&p_1582->g_689,&p_1582->g_689,&p_1582->g_689,&p_1582->g_689,&p_1582->g_689};
        int16_t l_1412 = 0x4807L;
        int32_t l_1434 = 0x2A8BDEB4L;
        int32_t l_1448 = 0x4BB1985FL;
        int32_t l_1451 = 0x40E72E2EL;
        int32_t l_1453 = 0x4E402471L;
        uint32_t *l_1506 = &p_1582->g_1352;
        uint32_t **l_1505 = &l_1506;
        uint32_t ***l_1504 = &l_1505;
        int32_t l_1524 = 0x1B393E89L;
        uint64_t l_1577[9][3] = {{0x5AD8C148A4157E55L,2UL,0x5AD8C148A4157E55L},{0x5AD8C148A4157E55L,2UL,0x5AD8C148A4157E55L},{0x5AD8C148A4157E55L,2UL,0x5AD8C148A4157E55L},{0x5AD8C148A4157E55L,2UL,0x5AD8C148A4157E55L},{0x5AD8C148A4157E55L,2UL,0x5AD8C148A4157E55L},{0x5AD8C148A4157E55L,2UL,0x5AD8C148A4157E55L},{0x5AD8C148A4157E55L,2UL,0x5AD8C148A4157E55L},{0x5AD8C148A4157E55L,2UL,0x5AD8C148A4157E55L},{0x5AD8C148A4157E55L,2UL,0x5AD8C148A4157E55L}};
        int i, j, k;
        (*p_69) |= ((((l_1266 = &p_1582->g_1207) != (((l_1223 = (safe_sub_func_uint8_t_u_u(((*l_1269) = p_68), 0x7DL))) , (1UL || p_68)) , (void*)0)) || p_68) && (p_68 >= ((l_1270 , &l_1269) == l_1271[7][0])));
        (*l_1276) = l_1273;
        for (p_1582->g_131 = 0; (p_1582->g_131 < 1); ++p_1582->g_131)
        { /* block id: 656 */
            uint16_t **l_1305[3][10][8] = {{{&p_1582->g_353,&l_1222[1][2][2],&p_1582->g_353,&p_1582->g_353,(void*)0,&l_1222[1][0][0],&l_1222[1][0][0],&p_1582->g_353},{&p_1582->g_353,&l_1222[1][2][2],&p_1582->g_353,&p_1582->g_353,(void*)0,&l_1222[1][0][0],&l_1222[1][0][0],&p_1582->g_353},{&p_1582->g_353,&l_1222[1][2][2],&p_1582->g_353,&p_1582->g_353,(void*)0,&l_1222[1][0][0],&l_1222[1][0][0],&p_1582->g_353},{&p_1582->g_353,&l_1222[1][2][2],&p_1582->g_353,&p_1582->g_353,(void*)0,&l_1222[1][0][0],&l_1222[1][0][0],&p_1582->g_353},{&p_1582->g_353,&l_1222[1][2][2],&p_1582->g_353,&p_1582->g_353,(void*)0,&l_1222[1][0][0],&l_1222[1][0][0],&p_1582->g_353},{&p_1582->g_353,&l_1222[1][2][2],&p_1582->g_353,&p_1582->g_353,(void*)0,&l_1222[1][0][0],&l_1222[1][0][0],&p_1582->g_353},{&p_1582->g_353,&l_1222[1][2][2],&p_1582->g_353,&p_1582->g_353,(void*)0,&l_1222[1][0][0],&l_1222[1][0][0],&p_1582->g_353},{&p_1582->g_353,&l_1222[1][2][2],&p_1582->g_353,&p_1582->g_353,(void*)0,&l_1222[1][0][0],&l_1222[1][0][0],&p_1582->g_353},{&p_1582->g_353,&l_1222[1][2][2],&p_1582->g_353,&p_1582->g_353,(void*)0,&l_1222[1][0][0],&l_1222[1][0][0],&p_1582->g_353},{&p_1582->g_353,&l_1222[1][2][2],&p_1582->g_353,&p_1582->g_353,(void*)0,&l_1222[1][0][0],&l_1222[1][0][0],&p_1582->g_353}},{{&p_1582->g_353,&l_1222[1][2][2],&p_1582->g_353,&p_1582->g_353,(void*)0,&l_1222[1][0][0],&l_1222[1][0][0],&p_1582->g_353},{&p_1582->g_353,&l_1222[1][2][2],&p_1582->g_353,&p_1582->g_353,(void*)0,&l_1222[1][0][0],&l_1222[1][0][0],&p_1582->g_353},{&p_1582->g_353,&l_1222[1][2][2],&p_1582->g_353,&p_1582->g_353,(void*)0,&l_1222[1][0][0],&l_1222[1][0][0],&p_1582->g_353},{&p_1582->g_353,&l_1222[1][2][2],&p_1582->g_353,&p_1582->g_353,(void*)0,&l_1222[1][0][0],&l_1222[1][0][0],&p_1582->g_353},{&p_1582->g_353,&l_1222[1][2][2],&p_1582->g_353,&p_1582->g_353,(void*)0,&l_1222[1][0][0],&l_1222[1][0][0],&p_1582->g_353},{&p_1582->g_353,&l_1222[1][2][2],&p_1582->g_353,&p_1582->g_353,(void*)0,&l_1222[1][0][0],&l_1222[1][0][0],&p_1582->g_353},{&p_1582->g_353,&l_1222[1][2][2],&p_1582->g_353,&p_1582->g_353,(void*)0,&l_1222[1][0][0],&l_1222[1][0][0],&p_1582->g_353},{&p_1582->g_353,&l_1222[1][2][2],&p_1582->g_353,&p_1582->g_353,(void*)0,&l_1222[1][0][0],&l_1222[1][0][0],&p_1582->g_353},{&p_1582->g_353,&l_1222[1][2][2],&p_1582->g_353,&p_1582->g_353,(void*)0,&l_1222[1][0][0],&l_1222[1][0][0],&p_1582->g_353},{&p_1582->g_353,&l_1222[1][2][2],&p_1582->g_353,&p_1582->g_353,(void*)0,&l_1222[1][0][0],&l_1222[1][0][0],&p_1582->g_353}},{{&p_1582->g_353,&l_1222[1][2][2],&p_1582->g_353,&p_1582->g_353,(void*)0,&l_1222[1][0][0],&l_1222[1][0][0],&p_1582->g_353},{&p_1582->g_353,&l_1222[1][2][2],&p_1582->g_353,&p_1582->g_353,(void*)0,&l_1222[1][0][0],&l_1222[1][0][0],&p_1582->g_353},{&p_1582->g_353,&l_1222[1][2][2],&p_1582->g_353,&p_1582->g_353,(void*)0,&l_1222[1][0][0],&l_1222[1][0][0],&p_1582->g_353},{&p_1582->g_353,&l_1222[1][2][2],&p_1582->g_353,&p_1582->g_353,(void*)0,&l_1222[1][0][0],&l_1222[1][0][0],&p_1582->g_353},{&p_1582->g_353,&l_1222[1][2][2],&p_1582->g_353,&p_1582->g_353,(void*)0,&l_1222[1][0][0],&l_1222[1][0][0],&p_1582->g_353},{&p_1582->g_353,&l_1222[1][2][2],&p_1582->g_353,&p_1582->g_353,(void*)0,&l_1222[1][0][0],&l_1222[1][0][0],&p_1582->g_353},{&p_1582->g_353,&l_1222[1][2][2],&p_1582->g_353,&p_1582->g_353,(void*)0,&l_1222[1][0][0],&l_1222[1][0][0],&p_1582->g_353},{&p_1582->g_353,&l_1222[1][2][2],&p_1582->g_353,&p_1582->g_353,(void*)0,&l_1222[1][0][0],&l_1222[1][0][0],&p_1582->g_353},{&p_1582->g_353,&l_1222[1][2][2],&p_1582->g_353,&p_1582->g_353,(void*)0,&l_1222[1][0][0],&l_1222[1][0][0],&p_1582->g_353},{&p_1582->g_353,&l_1222[1][2][2],&p_1582->g_353,&p_1582->g_353,(void*)0,&l_1222[1][0][0],&l_1222[1][0][0],&p_1582->g_353}}};
            int32_t l_1306 = 0x0A5B6DADL;
            uint32_t *l_1307 = &p_1582->g_150;
            int8_t *l_1332 = (void*)0;
            int32_t l_1373 = 0x36321239L;
            int32_t l_1374 = 0x457F228EL;
            uint32_t l_1378 = 0UL;
            int i, j, k;
            (*p_69) = (safe_mul_func_int16_t_s_s((safe_sub_func_uint64_t_u_u((l_1283[2][0][3] != (void*)0), ((l_1270 = ((safe_sub_func_uint32_t_u_u((l_1226 = (safe_div_func_uint16_t_u_u(p_68, (((((*l_1307) = (safe_sub_func_int32_t_s_s((safe_div_func_int32_t_s_s(((safe_add_func_int32_t_s_s(((((*p_1582->g_353) &= 0xB227L) || p_68) < (safe_add_func_int8_t_s_s((((l_1283[2][0][3] != ((safe_sub_func_uint16_t_u_u((p_68 || (safe_add_func_uint64_t_u_u((((safe_unary_minus_func_int32_t_s((safe_unary_minus_func_uint32_t_u((safe_mod_func_int64_t_s_s(((((**p_1582->g_840) = (&p_67 != &p_67)) && 0x547F7651L) == 0x09ACL), 0x4BA0DDB0561DEB53L)))))) , l_1304) != l_1305[2][0][6]), p_68))), p_68)) , &p_1582->g_515)) , 0x9854L) , l_1306), l_1306))), (*p_69))) < 0x8E92L), l_1270)), l_1270))) | (**p_1582->g_270)) , GROUP_DIVERGE(0, 1)) ^ l_1306)))), (*p_69))) < p_68)) , 0x4EEA0EC574463DCEL))), 1UL));
            for (p_1582->g_396 = 0; (p_1582->g_396 <= 47); ++p_1582->g_396)
            { /* block id: 665 */
                uint32_t *l_1327 = (void*)0;
                int16_t *l_1343 = &p_1582->g_428;
                uint64_t l_1344 = 1UL;
                uint64_t **l_1346 = &l_1230;
                int8_t ***l_1363 = (void*)0;
                int32_t l_1368 = 0x77305F8EL;
                int32_t l_1375 = 0x32A0505AL;
                int32_t l_1376 = 0L;
                int32_t l_1377[5] = {0x77CB3946L,0x77CB3946L,0x77CB3946L,0x77CB3946L,0x77CB3946L};
                int32_t *l_1381 = &l_1270;
                int i;
                (1 + 1);
            }
        }
        for (p_1582->g_141 = 0; (p_1582->g_141 <= 2); p_1582->g_141 += 1)
        { /* block id: 704 */
            int8_t *l_1411[5];
            int32_t l_1413 = 0L;
            int32_t l_1455 = (-1L);
            int64_t *l_1466 = &p_1582->g_683;
            int32_t l_1485 = 0x34C280D8L;
            int32_t l_1486 = 5L;
            uint32_t l_1495 = 0x4DEC1FA2L;
            uint32_t l_1570 = 0x0EBFE1F5L;
            int32_t l_1575[10][4][1] = {{{0x6BE1BA98L},{0x6BE1BA98L},{0x6BE1BA98L},{0x6BE1BA98L}},{{0x6BE1BA98L},{0x6BE1BA98L},{0x6BE1BA98L},{0x6BE1BA98L}},{{0x6BE1BA98L},{0x6BE1BA98L},{0x6BE1BA98L},{0x6BE1BA98L}},{{0x6BE1BA98L},{0x6BE1BA98L},{0x6BE1BA98L},{0x6BE1BA98L}},{{0x6BE1BA98L},{0x6BE1BA98L},{0x6BE1BA98L},{0x6BE1BA98L}},{{0x6BE1BA98L},{0x6BE1BA98L},{0x6BE1BA98L},{0x6BE1BA98L}},{{0x6BE1BA98L},{0x6BE1BA98L},{0x6BE1BA98L},{0x6BE1BA98L}},{{0x6BE1BA98L},{0x6BE1BA98L},{0x6BE1BA98L},{0x6BE1BA98L}},{{0x6BE1BA98L},{0x6BE1BA98L},{0x6BE1BA98L},{0x6BE1BA98L}},{{0x6BE1BA98L},{0x6BE1BA98L},{0x6BE1BA98L},{0x6BE1BA98L}}};
            int i, j, k;
            for (i = 0; i < 5; i++)
                l_1411[i] = &p_1582->g_452[0][1];
            if (((p_1582->g_152[(p_1582->g_141 + 3)] | (safe_sub_func_int8_t_s_s(((((((*p_1582->g_841) && (((safe_mul_func_uint8_t_u_u((safe_unary_minus_func_int32_t_s((p_68 || (safe_add_func_int16_t_s_s((safe_div_func_int8_t_s_s(((**p_1582->g_407) != ((l_1413 = (((l_1270 == (((0x7E36L & (safe_add_func_uint16_t_u_u(((**l_1304)++), ((!(safe_mod_func_uint16_t_u_u((safe_sub_func_uint8_t_u_u(((l_1226 = (safe_rshift_func_int16_t_s_s(p_1582->g_152[(p_1582->g_141 + 3)], ((safe_rshift_func_uint16_t_u_u((safe_add_func_uint16_t_u_u((~(p_68 && (((safe_lshift_func_int8_t_s_u((((safe_div_func_uint16_t_u_u((0UL || 0x6EL), 0x7640L)) , (*p_70)) >= 0UL), 7)) | l_1219[4]) , l_1270))), l_1224)), p_68)) <= p_1582->g_152[(p_1582->g_141 + 3)])))) != p_1582->g_152[(p_1582->g_141 + 3)]), FAKE_DIVERGE(p_1582->local_0_offset, get_local_id(0), 10))), 1L))) , l_1341)))) == l_1412) != GROUP_DIVERGE(2, 1))) & p_68) , (*p_1582->g_353))) & l_1361)), p_68)), 0x43B7L))))), l_1412)) <= p_68) , 0x5088972AL)) < p_68) , 0L) , (void*)0) != (*l_1304)), p_68))) , l_1412))
            { /* block id: 708 */
                uint32_t **l_1422 = &p_1582->g_841;
                int32_t l_1442 = 0x4FF8615EL;
                int32_t l_1443 = 4L;
                int32_t l_1456 = 8L;
                int32_t l_1457 = 0L;
                int64_t *l_1467 = &p_1582->g_515;
                int64_t ****l_1478 = &p_1582->g_664[7][1];
                uint32_t ***l_1507 = &l_1505;
                uint8_t ***l_1510 = &p_1582->g_1508;
                for (p_1582->g_655 = 0; (p_1582->g_655 <= 2); p_1582->g_655 += 1)
                { /* block id: 711 */
                    uint32_t l_1415 = 0x5D59B9C9L;
                    int32_t ***l_1429 = &p_1582->g_407;
                    int32_t l_1447 = 0x04B8C831L;
                    int32_t l_1449 = 0x6C51D50DL;
                    int32_t l_1452 = 0x1F1AEC57L;
                    int64_t *l_1465[7][6] = {{&p_1582->g_683,&p_1582->g_683,&p_1582->g_515,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683},{&p_1582->g_683,&p_1582->g_683,&p_1582->g_515,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683},{&p_1582->g_683,&p_1582->g_683,&p_1582->g_515,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683},{&p_1582->g_683,&p_1582->g_683,&p_1582->g_515,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683},{&p_1582->g_683,&p_1582->g_683,&p_1582->g_515,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683},{&p_1582->g_683,&p_1582->g_683,&p_1582->g_515,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683},{&p_1582->g_683,&p_1582->g_683,&p_1582->g_515,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683}};
                    uint64_t l_1487[9][9][3] = {{{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L}},{{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L}},{{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L}},{{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L}},{{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L}},{{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L}},{{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L}},{{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L}},{{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L},{3UL,0xB5916E24413C3296L,0x698E8E1CD5F08054L}}};
                    int i, j, k;
                    for (l_1223 = 0; (l_1223 <= 2); l_1223 += 1)
                    { /* block id: 714 */
                        int32_t *l_1414[3];
                        int i;
                        for (i = 0; i < 3; i++)
                            l_1414[i] = &l_1225;
                        (1 + 1);
                    }
                }
                (*p_69) = (l_1451 &= (((~(safe_mul_func_uint8_t_u_u((l_1456 || 9UL), (((((*l_1510) = ((((l_1434 = (((safe_sub_func_uint64_t_u_u(((safe_lshift_func_uint16_t_u_u(((*p_1582->g_271) && (p_1582->g_143 , ((void*)0 == &p_1582->g_689))), (p_68 >= (((0x44BBC664L ^ (*p_1582->g_841)) > p_68) || 0x0CB2L)))) > (*p_70)), p_68)) == (-1L)) && 0x91742AA8L)) , l_1504) == l_1507) , p_1582->g_1508)) != (void*)0) > GROUP_DIVERGE(1, 1)) || l_1485)))) <= l_1486) & p_68));
                if ((*p_1582->g_271))
                    continue;
            }
            else
            { /* block id: 759 */
                int32_t *l_1511 = (void*)0;
                int32_t *l_1512 = (void*)0;
                int32_t *l_1513[7];
                uint8_t l_1514 = 2UL;
                int i;
                for (i = 0; i < 7; i++)
                    l_1513[i] = &l_1448;
                (*p_1582->g_270) = p_70;
                l_1514--;
            }
            for (l_1225 = 2; (l_1225 >= 0); l_1225 -= 1)
            { /* block id: 765 */
                uint32_t l_1517 = 5UL;
                int32_t l_1522 = 0x44F2A319L;
                int32_t l_1523 = 0x700E4D6FL;
                int32_t l_1525 = (-4L);
                int64_t l_1526 = (-1L);
                int32_t l_1527[5] = {1L,1L,1L,1L,1L};
                uint32_t l_1540 = 0UL;
                int8_t l_1549 = 4L;
                int32_t *l_1550 = &l_1527[3];
                int i;
                for (p_1582->g_396 = 0; (p_1582->g_396 <= 2); p_1582->g_396 += 1)
                { /* block id: 768 */
                    int i, j;
                    l_1517 = ((*p_69) = p_1582->g_62[(p_1582->g_396 + 2)][(l_1225 + 1)]);
                }
            }
        }
    }
    return (*p_1582->g_270);
}


/* ------------------------------------------ */
/* 
 * reads : p_1582->g_61 p_1582->g_63 p_1582->g_62 p_1582->g_113 p_1582->g_118 p_1582->g_131 p_1582->g_141 p_1582->g_122 p_1582->g_150 p_1582->g_152 p_1582->g_143 p_1582->g_155 p_1582->g_158 p_1582->g_175 p_1582->g_180 p_1582->g_210 p_1582->g_244 p_1582->g_270 p_1582->g_271 p_1582->g_327 p_1582->g_151 p_1582->g_369 p_1582->g_154 p_1582->g_353 p_1582->g_406 p_1582->g_407 p_1582->g_450 p_1582->g_428 p_1582->g_396 p_1582->g_452 p_1582->g_60 p_1582->g_655 p_1582->g_683 p_1582->g_711 p_1582->g_515 p_1582->g_766 p_1582->g_799 p_1582->g_816 p_1582->g_840 p_1582->g_846 p_1582->g_841 p_1582->g_847 p_1582->g_849 p_1582->g_848 p_1582->g_1034 p_1582->g_1164 p_1582->g_689 p_1582->g_1178
 * writes: p_1582->g_131 p_1582->g_141 p_1582->g_143 p_1582->g_150 p_1582->g_151 p_1582->g_152 p_1582->g_154 p_1582->g_155 p_1582->g_158 p_1582->g_175 p_1582->g_180 p_1582->g_122 p_1582->g_244 p_1582->g_118 p_1582->g_271 p_1582->g_327 p_1582->g_353 p_1582->g_369 p_1582->g_62 p_1582->g_396 p_1582->g_406 p_1582->g_452 p_1582->g_428 p_1582->g_210 p_1582->g_113 p_1582->g_515 p_1582->g_549 p_1582->g_664 p_1582->g_667 p_1582->g_689 p_1582->g_711 p_1582->g_766 p_1582->g_60 p_1582->g_61 p_1582->g_1034 p_1582->g_840 p_1582->g_683 p_1582->g_1178 p_1582->g_655
 */
int32_t * func_71(int32_t * p_72, struct S0 * p_1582)
{ /* block id: 79 */
    int32_t *l_81 = &p_1582->g_63[4];
    int64_t *l_673 = (void*)0;
    int64_t **l_672[7] = {&l_673,&l_673,&l_673,&l_673,&l_673,&l_673,&l_673};
    int64_t **l_680 = (void*)0;
    int64_t *l_682 = &p_1582->g_683;
    int64_t **l_681 = &l_682;
    int64_t **l_684 = (void*)0;
    int64_t *l_686 = &p_1582->g_683;
    int64_t **l_685 = &l_686;
    int64_t *l_688[6][8] = {{&p_1582->g_683,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683},{&p_1582->g_683,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683},{&p_1582->g_683,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683},{&p_1582->g_683,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683},{&p_1582->g_683,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683},{&p_1582->g_683,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683,&p_1582->g_683}};
    int64_t **l_687[8][2][10] = {{{(void*)0,&l_688[3][6],&l_688[3][6],(void*)0,(void*)0,&l_688[3][6],&l_688[3][6],(void*)0,(void*)0,&l_688[3][6]},{(void*)0,&l_688[3][6],&l_688[3][6],(void*)0,(void*)0,&l_688[3][6],&l_688[3][6],(void*)0,(void*)0,&l_688[3][6]}},{{(void*)0,&l_688[3][6],&l_688[3][6],(void*)0,(void*)0,&l_688[3][6],&l_688[3][6],(void*)0,(void*)0,&l_688[3][6]},{(void*)0,&l_688[3][6],&l_688[3][6],(void*)0,(void*)0,&l_688[3][6],&l_688[3][6],(void*)0,(void*)0,&l_688[3][6]}},{{(void*)0,&l_688[3][6],&l_688[3][6],(void*)0,(void*)0,&l_688[3][6],&l_688[3][6],(void*)0,(void*)0,&l_688[3][6]},{(void*)0,&l_688[3][6],&l_688[3][6],(void*)0,(void*)0,&l_688[3][6],&l_688[3][6],(void*)0,(void*)0,&l_688[3][6]}},{{(void*)0,&l_688[3][6],&l_688[3][6],(void*)0,(void*)0,&l_688[3][6],&l_688[3][6],(void*)0,(void*)0,&l_688[3][6]},{(void*)0,&l_688[3][6],&l_688[3][6],(void*)0,(void*)0,&l_688[3][6],&l_688[3][6],(void*)0,(void*)0,&l_688[3][6]}},{{(void*)0,&l_688[3][6],&l_688[3][6],(void*)0,(void*)0,&l_688[3][6],&l_688[3][6],(void*)0,(void*)0,&l_688[3][6]},{(void*)0,&l_688[3][6],&l_688[3][6],(void*)0,(void*)0,&l_688[3][6],&l_688[3][6],(void*)0,(void*)0,&l_688[3][6]}},{{(void*)0,&l_688[3][6],&l_688[3][6],(void*)0,(void*)0,&l_688[3][6],&l_688[3][6],(void*)0,(void*)0,&l_688[3][6]},{(void*)0,&l_688[3][6],&l_688[3][6],(void*)0,(void*)0,&l_688[3][6],&l_688[3][6],(void*)0,(void*)0,&l_688[3][6]}},{{(void*)0,&l_688[3][6],&l_688[3][6],(void*)0,(void*)0,&l_688[3][6],&l_688[3][6],(void*)0,(void*)0,&l_688[3][6]},{(void*)0,&l_688[3][6],&l_688[3][6],(void*)0,(void*)0,&l_688[3][6],&l_688[3][6],(void*)0,(void*)0,&l_688[3][6]}},{{(void*)0,&l_688[3][6],&l_688[3][6],(void*)0,(void*)0,&l_688[3][6],&l_688[3][6],(void*)0,(void*)0,&l_688[3][6]},{(void*)0,&l_688[3][6],&l_688[3][6],(void*)0,(void*)0,&l_688[3][6],&l_688[3][6],(void*)0,(void*)0,&l_688[3][6]}}};
    int32_t *l_690 = (void*)0;
    int32_t *l_1051 = &p_1582->g_175[1][1][0];
    int64_t ***l_1075 = &l_672[2];
    int32_t l_1098 = 0x7157BC6DL;
    int32_t l_1100 = (-5L);
    int32_t l_1104 = (-1L);
    int32_t l_1105 = 0x58F1F577L;
    int32_t l_1106 = 2L;
    int32_t l_1109[3];
    int16_t l_1119 = 0x1A18L;
    int64_t l_1177 = 0x3D85C1220A493435L;
    uint16_t l_1193 = 0x6204L;
    int32_t *l_1197 = &p_1582->g_63[4];
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_1109[i] = 0x0DD2E933L;
    (*p_1582->g_407) = func_73(func_78(p_1582->g_61, l_81, p_1582), ((((((l_672[3] = l_672[3]) != &l_673) & ((safe_sub_func_uint8_t_u_u(FAKE_DIVERGE(p_1582->group_0_offset, get_group_id(0), 10), ((safe_mul_func_uint8_t_u_u((((safe_mul_func_uint16_t_u_u((*l_81), (!(*l_81)))) , (((*l_685) = ((*l_681) = l_673)) != (p_1582->g_689 = &p_1582->g_683))) == 0x68300AF3L), (*l_81))) > 0x5F07L))) < p_1582->g_683)) && p_1582->g_655) && p_1582->g_655) >= GROUP_DIVERGE(2, 1)), p_1582->g_63[0], l_690, p_1582);
    (*l_1051) = 0L;
    if ((*l_81))
    { /* block id: 552 */
        uint16_t *l_1058 = &p_1582->g_118;
        uint16_t **l_1059 = &p_1582->g_353;
        uint64_t *l_1060 = (void*)0;
        int32_t l_1061 = 0x651A541AL;
        uint64_t *l_1063 = &p_1582->g_396;
        uint64_t **l_1062 = &l_1063;
        int64_t ***l_1064[9] = {&l_672[3],&l_672[3],&l_672[3],&l_672[3],&l_672[3],&l_672[3],&l_672[3],&l_672[3],&l_672[3]};
        uint32_t **l_1076 = &p_1582->g_841;
        uint32_t **l_1077 = (void*)0;
        int32_t l_1113 = 0x79B1F70FL;
        int32_t l_1114 = 0x779D4050L;
        int32_t l_1116 = (-1L);
        int32_t l_1118 = 0x5194D6E3L;
        int32_t l_1120[5] = {9L,9L,9L,9L,9L};
        uint8_t *l_1148[10] = {&p_1582->g_210[1],&p_1582->g_210[1],&p_1582->g_210[1],&p_1582->g_210[1],&p_1582->g_210[1],&p_1582->g_210[1],&p_1582->g_210[1],&p_1582->g_210[1],&p_1582->g_210[1],&p_1582->g_210[1]};
        int32_t *l_1173 = &l_1104;
        int32_t *l_1174 = &l_1061;
        int32_t *l_1175 = &l_1113;
        int32_t *l_1176[7][3][6] = {{{(void*)0,&l_1098,&l_1114,&l_1120[0],&l_1106,&l_1120[0]},{(void*)0,&l_1098,&l_1114,&l_1120[0],&l_1106,&l_1120[0]},{(void*)0,&l_1098,&l_1114,&l_1120[0],&l_1106,&l_1120[0]}},{{(void*)0,&l_1098,&l_1114,&l_1120[0],&l_1106,&l_1120[0]},{(void*)0,&l_1098,&l_1114,&l_1120[0],&l_1106,&l_1120[0]},{(void*)0,&l_1098,&l_1114,&l_1120[0],&l_1106,&l_1120[0]}},{{(void*)0,&l_1098,&l_1114,&l_1120[0],&l_1106,&l_1120[0]},{(void*)0,&l_1098,&l_1114,&l_1120[0],&l_1106,&l_1120[0]},{(void*)0,&l_1098,&l_1114,&l_1120[0],&l_1106,&l_1120[0]}},{{(void*)0,&l_1098,&l_1114,&l_1120[0],&l_1106,&l_1120[0]},{(void*)0,&l_1098,&l_1114,&l_1120[0],&l_1106,&l_1120[0]},{(void*)0,&l_1098,&l_1114,&l_1120[0],&l_1106,&l_1120[0]}},{{(void*)0,&l_1098,&l_1114,&l_1120[0],&l_1106,&l_1120[0]},{(void*)0,&l_1098,&l_1114,&l_1120[0],&l_1106,&l_1120[0]},{(void*)0,&l_1098,&l_1114,&l_1120[0],&l_1106,&l_1120[0]}},{{(void*)0,&l_1098,&l_1114,&l_1120[0],&l_1106,&l_1120[0]},{(void*)0,&l_1098,&l_1114,&l_1120[0],&l_1106,&l_1120[0]},{(void*)0,&l_1098,&l_1114,&l_1120[0],&l_1106,&l_1120[0]}},{{(void*)0,&l_1098,&l_1114,&l_1120[0],&l_1106,&l_1120[0]},{(void*)0,&l_1098,&l_1114,&l_1120[0],&l_1106,&l_1120[0]},{(void*)0,&l_1098,&l_1114,&l_1120[0],&l_1106,&l_1120[0]}}};
        int i, j, k;
        if ((atomic_inc(&p_1582->g_atomic_input[91 * get_linear_group_id() + 44]) == 7))
        { /* block id: 554 */
            int8_t l_1052 = 0x3AL;
            int16_t l_1053 = 0x4B2EL;
            int32_t l_1055 = 1L;
            int32_t *l_1054 = &l_1055;
            int32_t *l_1056 = (void*)0;
            int32_t *l_1057 = &l_1055;
            l_1053 = (l_1052 , 0x1132C33BL);
            l_1056 = l_1054;
            l_1057 = (void*)0;
            unsigned int result = 0;
            result += l_1052;
            result += l_1053;
            result += l_1055;
            atomic_add(&p_1582->g_special_values[91 * get_linear_group_id() + 44], result);
        }
        else
        { /* block id: 558 */
            (1 + 1);
        }
        l_690 = ((*p_1582->g_407) = ((((l_1058 != ((*l_1059) = &p_1582->g_655)) || ((GROUP_DIVERGE(0, 1) , l_1060) != (l_1061 , ((*l_1062) = l_1060)))) , (l_1064[0] != &p_1582->g_665)) , p_72));
        if ((((safe_mod_func_int64_t_s_s(l_1061, 0xFFE677E7E8D5F9F6L)) < (*p_1582->g_353)) , (*p_72)))
        { /* block id: 565 */
            uint64_t l_1069 = 0UL;
            int64_t ***l_1072[7] = {&l_672[3],&l_672[2],&l_672[3],&l_672[3],&l_672[2],&l_672[3],&l_672[3]};
            int64_t ****l_1073 = (void*)0;
            int64_t ****l_1074[7][3][6] = {{{(void*)0,&l_1072[5],&l_1072[2],&l_1072[5],(void*)0,&p_1582->g_667[0][7][2]},{(void*)0,&l_1072[5],&l_1072[2],&l_1072[5],(void*)0,&p_1582->g_667[0][7][2]},{(void*)0,&l_1072[5],&l_1072[2],&l_1072[5],(void*)0,&p_1582->g_667[0][7][2]}},{{(void*)0,&l_1072[5],&l_1072[2],&l_1072[5],(void*)0,&p_1582->g_667[0][7][2]},{(void*)0,&l_1072[5],&l_1072[2],&l_1072[5],(void*)0,&p_1582->g_667[0][7][2]},{(void*)0,&l_1072[5],&l_1072[2],&l_1072[5],(void*)0,&p_1582->g_667[0][7][2]}},{{(void*)0,&l_1072[5],&l_1072[2],&l_1072[5],(void*)0,&p_1582->g_667[0][7][2]},{(void*)0,&l_1072[5],&l_1072[2],&l_1072[5],(void*)0,&p_1582->g_667[0][7][2]},{(void*)0,&l_1072[5],&l_1072[2],&l_1072[5],(void*)0,&p_1582->g_667[0][7][2]}},{{(void*)0,&l_1072[5],&l_1072[2],&l_1072[5],(void*)0,&p_1582->g_667[0][7][2]},{(void*)0,&l_1072[5],&l_1072[2],&l_1072[5],(void*)0,&p_1582->g_667[0][7][2]},{(void*)0,&l_1072[5],&l_1072[2],&l_1072[5],(void*)0,&p_1582->g_667[0][7][2]}},{{(void*)0,&l_1072[5],&l_1072[2],&l_1072[5],(void*)0,&p_1582->g_667[0][7][2]},{(void*)0,&l_1072[5],&l_1072[2],&l_1072[5],(void*)0,&p_1582->g_667[0][7][2]},{(void*)0,&l_1072[5],&l_1072[2],&l_1072[5],(void*)0,&p_1582->g_667[0][7][2]}},{{(void*)0,&l_1072[5],&l_1072[2],&l_1072[5],(void*)0,&p_1582->g_667[0][7][2]},{(void*)0,&l_1072[5],&l_1072[2],&l_1072[5],(void*)0,&p_1582->g_667[0][7][2]},{(void*)0,&l_1072[5],&l_1072[2],&l_1072[5],(void*)0,&p_1582->g_667[0][7][2]}},{{(void*)0,&l_1072[5],&l_1072[2],&l_1072[5],(void*)0,&p_1582->g_667[0][7][2]},{(void*)0,&l_1072[5],&l_1072[2],&l_1072[5],(void*)0,&p_1582->g_667[0][7][2]},{(void*)0,&l_1072[5],&l_1072[2],&l_1072[5],(void*)0,&p_1582->g_667[0][7][2]}}};
            uint32_t ***l_1078[4] = {&p_1582->g_840,&p_1582->g_840,&p_1582->g_840,&p_1582->g_840};
            int i, j, k;
            l_1061 |= (safe_rshift_func_int8_t_s_u(l_1069, 7));
            (*l_1051) = (((safe_add_func_int32_t_s_s((*p_72), (l_1069 , (0x286F5932L > (l_1061 , ((l_1064[0] = l_1072[5]) == (l_1075 = &l_672[1]))))))) == (0x7476C19BL || (((((l_1076 == (p_1582->g_840 = (l_1077 = &p_1582->g_841))) & 0x7DAC7CD1L) < l_1061) , l_1061) <= 7L))) , (*p_1582->g_271));
        }
        else
        { /* block id: 572 */
            int32_t *l_1081 = (void*)0;
            int32_t l_1094 = (-7L);
            int32_t l_1102 = 0x65BB69F7L;
            int32_t l_1107 = 0x69C4E078L;
            int32_t l_1110 = 1L;
            int32_t l_1111 = 0L;
            int64_t l_1115 = 1L;
            int32_t l_1117[7] = {0x4B71A303L,0x73726931L,0x4B71A303L,0x4B71A303L,0x73726931L,0x4B71A303L,0x4B71A303L};
            int16_t **l_1166 = &p_1582->g_1165;
            int i;
            for (p_1582->g_369 = 16; (p_1582->g_369 <= 15); --p_1582->g_369)
            { /* block id: 575 */
                for (p_1582->g_396 = 0; (p_1582->g_396 <= 1); p_1582->g_396 += 1)
                { /* block id: 578 */
                    return l_1081;
                }
            }
            (*l_1051) = (l_1061 < l_1061);
            (*p_1582->g_270) = p_72;
            if ((*p_72))
            { /* block id: 584 */
                (*l_1051) &= (0x00L <= (safe_lshift_func_int16_t_s_u(0L, (*p_1582->g_353))));
                (*p_1582->g_407) = (*p_1582->g_407);
            }
            else
            { /* block id: 587 */
                int32_t l_1103 = (-9L);
                int32_t l_1108 = 7L;
                int32_t l_1112[8] = {0L,0L,0L,0L,0L,0L,0L,0L};
                int i;
                for (p_1582->g_683 = (-16); (p_1582->g_683 < (-13)); p_1582->g_683 = safe_add_func_int32_t_s_s(p_1582->g_683, 3))
                { /* block id: 590 */
                    int32_t *l_1088 = &p_1582->g_63[1];
                    int32_t l_1091[9] = {0L,0L,0L,0L,0L,0L,0L,0L,0L};
                    int i;
                    for (p_1582->g_151 = 0; (p_1582->g_151 > 35); p_1582->g_151++)
                    { /* block id: 593 */
                        return l_1088;
                    }
                    l_1061 = ((-1L) != (**p_1582->g_840));
                    for (p_1582->g_113 = 0; (p_1582->g_113 > (-18)); p_1582->g_113 = safe_sub_func_int32_t_s_s(p_1582->g_113, 1))
                    { /* block id: 599 */
                        int32_t *l_1092 = (void*)0;
                        int32_t *l_1093 = &p_1582->g_175[6][0][4];
                        int32_t *l_1095 = (void*)0;
                        int32_t *l_1096 = &l_1061;
                        int32_t *l_1097 = &l_1091[4];
                        int32_t *l_1099 = &p_1582->g_175[0][0][3];
                        int32_t *l_1101[3];
                        uint64_t l_1121 = 0xFEC1D0277EFA1C85L;
                        uint64_t *l_1132 = (void*)0;
                        uint64_t *l_1133[2];
                        int i;
                        for (i = 0; i < 3; i++)
                            l_1101[i] = (void*)0;
                        for (i = 0; i < 2; i++)
                            l_1133[i] = &l_1121;
                        if ((*p_72))
                            break;
                        l_1121++;
                        (*l_1097) &= (safe_lshift_func_uint16_t_u_s((0L < (l_1112[7] &= 4294967287UL)), (safe_rshift_func_uint16_t_u_s((safe_sub_func_uint16_t_u_u(((l_1108 = p_1582->g_848[5]) >= ((*l_1088) <= (safe_lshift_func_uint16_t_u_u((safe_sub_func_int64_t_s_s((*l_1051), ((((safe_mul_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_u((l_1103 > ((safe_div_func_int16_t_s_s((safe_rshift_func_int16_t_s_s((safe_sub_func_int32_t_s_s(l_1118, (p_1582->g_396 , ((~(&p_1582->g_143 == l_1148[4])) > l_1103)))), 15)), (*l_690))) || 0x0DL)), 2)), 250UL)) || (*l_81)) == (*l_1088)) <= p_1582->g_63[0]))), l_1116)))), 0xCAD6L)), 15))));
                    }
                    for (p_1582->g_150 = 0; (p_1582->g_150 > 43); ++p_1582->g_150)
                    { /* block id: 608 */
                        p_1582->g_369 &= (safe_div_func_int8_t_s_s((*l_1088), ((l_1116 == (**p_1582->g_846)) , 0x22L)));
                        (*p_1582->g_270) = p_72;
                    }
                }
                l_1061 |= ((safe_sub_func_uint32_t_u_u((((safe_unary_minus_func_int8_t_s((!((safe_sub_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_u((safe_rshift_func_int8_t_s_u(0x6AL, ((*p_72) == (safe_sub_func_uint32_t_u_u(((p_1582->g_1164 == l_1166) > (l_1112[6] = l_1108)), (safe_sub_func_uint8_t_u_u((((*l_1051) <= (+(l_1114 || (safe_mod_func_uint8_t_u_u(0UL, (safe_mul_func_int8_t_s_s((l_1108 | p_1582->g_452[0][7]), 255UL))))))) < 0x7FA7C0A1L), 0xC0L))))))), 13)), (*l_81))) > 0x172F5E7A01EAF19AL)))) , (*p_1582->g_689)) , l_1118), (*p_72))) , (*p_1582->g_271));
                p_1582->g_62[6][1] = l_1117[0];
            }
        }
        ++p_1582->g_1178;
    }
    else
    { /* block id: 619 */
        int64_t ****l_1194 = (void*)0;
        int32_t l_1196 = 1L;
        for (p_1582->g_655 = 0; (p_1582->g_655 <= 37); p_1582->g_655++)
        { /* block id: 622 */
            int32_t l_1195 = 0x4D77A9F3L;
            (*p_1582->g_270) = p_72;
            (*l_1051) = (&p_1582->g_665 == ((safe_div_func_int32_t_s_s((**p_1582->g_407), (safe_rshift_func_uint16_t_u_u(((safe_sub_func_int64_t_s_s((((((safe_mul_func_uint8_t_u_u(0x85L, (safe_mul_func_int16_t_s_s((&p_1582->g_450[1] != (l_1193 , l_1194)), (&p_1582->g_1005 != l_690))))) , (*p_1582->g_353)) , 0x4DA5L) | l_1195) >= (*p_1582->g_841)), 0x5C8C565E213F3A89L)) , 0xE28BL), 11)))) , &l_672[3]));
        }
        l_1196 ^= ((*l_1051) = (*l_1051));
        return l_1197;
    }
    return p_72;
}


/* ------------------------------------------ */
/* 
 * reads : p_1582->g_151 p_1582->g_711 p_1582->g_327 p_1582->g_155 p_1582->g_244 p_1582->g_210 p_1582->g_63 p_1582->g_61 p_1582->g_428 p_1582->g_118 p_1582->g_515 p_1582->g_270 p_1582->g_271 p_1582->g_407 p_1582->g_353 p_1582->g_158 p_1582->g_396 p_1582->g_143 p_1582->g_60 p_1582->g_406 p_1582->g_62 p_1582->g_150 p_1582->g_766 p_1582->g_799 p_1582->g_452 p_1582->g_369 p_1582->g_175 p_1582->g_816 p_1582->g_113 p_1582->g_840 p_1582->g_846 p_1582->g_841 p_1582->g_122 p_1582->g_131 p_1582->g_141 p_1582->g_152 p_1582->g_847 p_1582->g_849 p_1582->g_848 p_1582->g_1034
 * writes: p_1582->g_151 p_1582->g_131 p_1582->g_711 p_1582->g_369 p_1582->g_175 p_1582->g_428 p_1582->g_118 p_1582->g_515 p_1582->g_271 p_1582->g_766 p_1582->g_62 p_1582->g_158 p_1582->g_452 p_1582->g_396 p_1582->g_60 p_1582->g_549 p_1582->g_406 p_1582->g_152 p_1582->g_122 p_1582->g_150 p_1582->g_141 p_1582->g_210 p_1582->g_61 p_1582->g_1034 p_1582->g_327
 */
int32_t * func_73(int32_t * p_74, uint16_t  p_75, int8_t  p_76, int32_t * p_77, struct S0 * p_1582)
{ /* block id: 393 */
    uint8_t l_691 = 1UL;
    uint8_t l_717 = 0x02L;
    int32_t l_723 = 0x2BFC2BA3L;
    int32_t l_724 = 1L;
    uint16_t l_781 = 4UL;
    uint64_t l_783 = 0x60B24F8F3C005B4DL;
    int64_t ***l_784 = (void*)0;
    uint32_t *l_839 = (void*)0;
    uint32_t **l_838[5][6][6] = {{{&l_839,&l_839,&l_839,&l_839,&l_839,&l_839},{&l_839,&l_839,&l_839,&l_839,&l_839,&l_839},{&l_839,&l_839,&l_839,&l_839,&l_839,&l_839},{&l_839,&l_839,&l_839,&l_839,&l_839,&l_839},{&l_839,&l_839,&l_839,&l_839,&l_839,&l_839},{&l_839,&l_839,&l_839,&l_839,&l_839,&l_839}},{{&l_839,&l_839,&l_839,&l_839,&l_839,&l_839},{&l_839,&l_839,&l_839,&l_839,&l_839,&l_839},{&l_839,&l_839,&l_839,&l_839,&l_839,&l_839},{&l_839,&l_839,&l_839,&l_839,&l_839,&l_839},{&l_839,&l_839,&l_839,&l_839,&l_839,&l_839},{&l_839,&l_839,&l_839,&l_839,&l_839,&l_839}},{{&l_839,&l_839,&l_839,&l_839,&l_839,&l_839},{&l_839,&l_839,&l_839,&l_839,&l_839,&l_839},{&l_839,&l_839,&l_839,&l_839,&l_839,&l_839},{&l_839,&l_839,&l_839,&l_839,&l_839,&l_839},{&l_839,&l_839,&l_839,&l_839,&l_839,&l_839},{&l_839,&l_839,&l_839,&l_839,&l_839,&l_839}},{{&l_839,&l_839,&l_839,&l_839,&l_839,&l_839},{&l_839,&l_839,&l_839,&l_839,&l_839,&l_839},{&l_839,&l_839,&l_839,&l_839,&l_839,&l_839},{&l_839,&l_839,&l_839,&l_839,&l_839,&l_839},{&l_839,&l_839,&l_839,&l_839,&l_839,&l_839},{&l_839,&l_839,&l_839,&l_839,&l_839,&l_839}},{{&l_839,&l_839,&l_839,&l_839,&l_839,&l_839},{&l_839,&l_839,&l_839,&l_839,&l_839,&l_839},{&l_839,&l_839,&l_839,&l_839,&l_839,&l_839},{&l_839,&l_839,&l_839,&l_839,&l_839,&l_839},{&l_839,&l_839,&l_839,&l_839,&l_839,&l_839},{&l_839,&l_839,&l_839,&l_839,&l_839,&l_839}}};
    int16_t **l_864 = (void*)0;
    int32_t ***l_951[9][7][3] = {{{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407}},{{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407}},{{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407}},{{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407}},{{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407}},{{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407}},{{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407}},{{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407}},{{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407},{&p_1582->g_270,&p_1582->g_270,&p_1582->g_407}}};
    uint8_t l_1003 = 0x94L;
    uint32_t ***l_1016 = (void*)0;
    int32_t l_1024 = 0x697CCD8EL;
    uint32_t l_1029[2];
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_1029[i] = 0x34C40E7AL;
    l_691++;
    for (p_1582->g_151 = 14; (p_1582->g_151 < 11); p_1582->g_151 = safe_sub_func_int8_t_s_s(p_1582->g_151, 3))
    { /* block id: 397 */
        int8_t l_706[1][5][1];
        int64_t *l_707 = (void*)0;
        int64_t *l_708 = (void*)0;
        int64_t *l_709 = &p_1582->g_131;
        uint8_t *l_710[6][9][4] = {{{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]}},{{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]}},{{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]}},{{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]}},{{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]}},{{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]},{(void*)0,&p_1582->g_210[9],(void*)0,&p_1582->g_210[1]}}};
        int32_t l_720 = (-1L);
        int8_t l_721 = 8L;
        int32_t *l_722[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int64_t ***l_752 = (void*)0;
        uint64_t *l_763 = (void*)0;
        uint64_t *l_764 = (void*)0;
        uint64_t *l_765 = &p_1582->g_766[0];
        uint32_t *l_769 = &p_1582->g_122;
        uint32_t **l_768[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        uint32_t ***l_767 = &l_768[5];
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 5; j++)
            {
                for (k = 0; k < 1; k++)
                    l_706[i][j][k] = 0x61L;
            }
        }
        l_724 |= (p_1582->g_175[0][1][0] = (((-1L) == ((((safe_mul_func_int8_t_s_s(((l_723 &= ((safe_sub_func_int8_t_s_s(((safe_add_func_uint8_t_u_u(((safe_rshift_func_uint8_t_u_u((((*l_709) = (l_706[0][2][0] ^= (safe_rshift_func_uint16_t_u_u(1UL, 0)))) , 0UL), (p_1582->g_711 &= 0xD8L))) == ((safe_mul_func_int16_t_s_s(((safe_unary_minus_func_uint32_t_u((safe_div_func_int64_t_s_s((((l_717 < (p_1582->g_369 = ((1UL <= 0xC294L) >= (safe_add_func_int8_t_s_s((!p_1582->g_327), ((((((p_1582->g_155[2] < p_75) , 7L) >= l_717) > l_720) != l_721) | 0L)))))) < p_75) && FAKE_DIVERGE(p_1582->group_1_offset, get_group_id(1), 10)), p_75)))) >= GROUP_DIVERGE(2, 1)), 1L)) && p_1582->g_244)), p_1582->g_210[1])) | 0xFCDC7068L), p_75)) ^ 5L)) ^ (*p_74)), l_691)) ^ p_76) > p_75) & p_1582->g_61)) && FAKE_DIVERGE(p_1582->local_2_offset, get_local_id(2), 10)));
        for (p_1582->g_428 = 0; (p_1582->g_428 >= 19); p_1582->g_428++)
        { /* block id: 407 */
            if ((atomic_inc(&p_1582->g_atomic_input[91 * get_linear_group_id() + 88]) == 5))
            { /* block id: 409 */
                int8_t l_727 = 0x69L;
                uint32_t l_728 = 4294967286UL;
                uint16_t l_729 = 0x63CFL;
                int32_t l_732 = 0x6AA1EC64L;
                int8_t l_733 = (-9L);
                l_733 &= ((l_727 , (l_728 , (++l_729))) , l_732);
                unsigned int result = 0;
                result += l_727;
                result += l_728;
                result += l_729;
                result += l_732;
                result += l_733;
                atomic_add(&p_1582->g_special_values[91 * get_linear_group_id() + 88], result);
            }
            else
            { /* block id: 412 */
                (1 + 1);
            }
            for (p_1582->g_118 = 1; (p_1582->g_118 <= 9); p_1582->g_118 += 1)
            { /* block id: 417 */
                uint32_t l_734 = 0UL;
                for (p_1582->g_515 = 3; (p_1582->g_515 >= 0); p_1582->g_515 -= 1)
                { /* block id: 420 */
                    int i;
                    if (p_1582->g_210[p_1582->g_118])
                        break;
                }
                if (l_734)
                    continue;
                if ((**p_1582->g_270))
                    continue;
                return (*p_1582->g_270);
            }
        }
        (*p_1582->g_407) = p_74;
        p_1582->g_62[6][1] = (safe_add_func_uint64_t_u_u(((((((safe_unary_minus_func_uint16_t_u((((safe_rshift_func_uint16_t_u_u(p_76, 10)) && (safe_mul_func_int8_t_s_s(1L, (((p_75 && FAKE_DIVERGE(p_1582->global_0_offset, get_global_id(0), 10)) > ((safe_rshift_func_uint16_t_u_u(((((safe_add_func_uint64_t_u_u(((safe_rshift_func_uint8_t_u_u((((safe_mul_func_uint8_t_u_u(p_76, ((safe_add_func_int16_t_s_s(0x3D4EL, (((void*)0 == l_752) & l_724))) <= (safe_rshift_func_uint8_t_u_s((safe_add_func_uint16_t_u_u((safe_sub_func_int16_t_s_s((safe_lshift_func_int16_t_s_s(((((((*l_765) = ((safe_add_func_uint64_t_u_u(p_76, p_76)) | 0x7BL)) , (*p_1582->g_353)) , &p_1582->g_689) != (void*)0) ^ l_691), p_1582->g_711)), l_723)), p_1582->g_210[0])), p_1582->g_396))))) <= p_76) || (*p_1582->g_353)), l_717)) , 0x21BB0050980E3B34L), 0x5532E8A625460EF1L)) <= p_1582->g_143) , (void*)0) == l_767), GROUP_DIVERGE(0, 1))) != (*p_74))) ^ p_1582->g_428)))) ^ 0x3202F815L))) ^ 0x2BDA93EBL) == p_75) ^ (*p_74)) ^ p_76) , p_1582->g_60), l_717));
    }
    if ((***p_1582->g_406))
    { /* block id: 432 */
        int32_t l_780 = 2L;
        int16_t *l_782 = &p_1582->g_428;
        int64_t *l_788 = &p_1582->g_515;
        uint16_t **l_797 = (void*)0;
        uint8_t l_853 = 247UL;
        uint16_t l_860 = 0xA0F5L;
        int32_t l_862 = 0x6977C4A8L;
        int32_t l_929 = 0x747246FAL;
        uint64_t *l_988 = &p_1582->g_711;
        uint8_t l_990 = 0x6EL;
        int8_t l_993 = (-6L);
        int32_t l_1000 = 1L;
        if ((safe_mul_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s((FAKE_DIVERGE(p_1582->global_2_offset, get_global_id(2), 10) & (l_724 = (safe_rshift_func_int8_t_s_u(0x52L, 0)))), ((((safe_lshift_func_int16_t_s_u(p_1582->g_62[6][1], ((*p_1582->g_353) &= 0xC826L))) != (safe_lshift_func_uint16_t_u_u((((l_780 , ((+(!(l_781 , (((*l_782) |= 0x033FL) && p_1582->g_210[6])))) >= (-1L))) < l_783) >= (***p_1582->g_406)), p_1582->g_150))) > (**p_1582->g_270)) , p_1582->g_766[0]))), 65535UL)))
        { /* block id: 436 */
            uint64_t *l_785 = &p_1582->g_711;
            int32_t l_798 = 0x5F116C49L;
            int8_t *l_800 = (void*)0;
            int8_t *l_801 = &p_1582->g_452[0][1];
            uint32_t l_852 = 0x44273A67L;
            int32_t l_927 = (-1L);
            int32_t l_930 = 0x7636C46FL;
            uint32_t **l_958 = &p_1582->g_841;
            if (((l_780 && ((*l_785) = (l_784 == (void*)0))) , ((p_1582->g_766[0] | ((*l_801) |= (((+((safe_rshift_func_int8_t_s_s((-1L), ((((l_785 == l_788) > (((safe_mul_func_int16_t_s_s(((safe_div_func_int16_t_s_s((safe_mul_func_uint16_t_u_u((safe_add_func_int16_t_s_s(((*l_782) ^= (-2L)), (l_797 != &p_1582->g_353))), 65533UL)), p_1582->g_62[6][1])) <= l_780), 0x07D2L)) || 6UL) <= l_798)) == l_798) == l_780))) , p_1582->g_799)) , &p_1582->g_664[2][0]) != &p_1582->g_450[1]))) & p_1582->g_151)))
            { /* block id: 440 */
                int32_t *l_810 = (void*)0;
                int32_t *l_811[1][7][8] = {{{&p_1582->g_175[7][0][6],&l_798,&p_1582->g_63[0],(void*)0,&l_798,(void*)0,&p_1582->g_63[0],&l_798},{&p_1582->g_175[7][0][6],&l_798,&p_1582->g_63[0],(void*)0,&l_798,(void*)0,&p_1582->g_63[0],&l_798},{&p_1582->g_175[7][0][6],&l_798,&p_1582->g_63[0],(void*)0,&l_798,(void*)0,&p_1582->g_63[0],&l_798},{&p_1582->g_175[7][0][6],&l_798,&p_1582->g_63[0],(void*)0,&l_798,(void*)0,&p_1582->g_63[0],&l_798},{&p_1582->g_175[7][0][6],&l_798,&p_1582->g_63[0],(void*)0,&l_798,(void*)0,&p_1582->g_63[0],&l_798},{&p_1582->g_175[7][0][6],&l_798,&p_1582->g_63[0],(void*)0,&l_798,(void*)0,&p_1582->g_63[0],&l_798},{&p_1582->g_175[7][0][6],&l_798,&p_1582->g_63[0],(void*)0,&l_798,(void*)0,&p_1582->g_63[0],&l_798}}};
                int16_t l_845 = (-9L);
                int32_t ****l_888[6] = {(void*)0,&p_1582->g_406,(void*)0,(void*)0,&p_1582->g_406,(void*)0};
                int64_t ***l_892[1][1];
                int64_t **l_905 = &p_1582->g_689;
                int32_t l_926 = 0x6475D8CFL;
                int i, j, k;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_892[i][j] = &p_1582->g_665;
                }
                p_1582->g_369 |= ((safe_rshift_func_int8_t_s_u(((safe_add_func_int8_t_s_s(l_781, 0L)) , ((safe_add_func_uint8_t_u_u((0x7AL >= p_1582->g_62[6][0]), p_1582->g_210[7])) > ((void*)0 != l_785))), 3)) > (safe_sub_func_int8_t_s_s(0x1EL, 0L)));
                if ((p_1582->g_175[1][1][0] > 0UL))
                { /* block id: 442 */
                    uint32_t **l_844 = &p_1582->g_841;
                    int32_t l_863[5][4] = {{1L,(-10L),1L,1L},{1L,(-10L),1L,1L},{1L,(-10L),1L,1L},{1L,(-10L),1L,1L},{1L,(-10L),1L,1L}};
                    int16_t **l_865 = (void*)0;
                    uint64_t *l_891 = (void*)0;
                    uint64_t *l_904 = &p_1582->g_766[0];
                    int i, j;
                    for (l_783 = 27; (l_783 != 19); l_783 = safe_sub_func_uint16_t_u_u(l_783, 2))
                    { /* block id: 445 */
                        uint8_t *l_821 = (void*)0;
                        uint8_t **l_820 = &l_821;
                        uint8_t ***l_819[5][10][2] = {{{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820}},{{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820}},{{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820}},{{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820}},{{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820},{&l_820,&l_820}}};
                        uint32_t ***l_842 = (void*)0;
                        uint32_t ***l_843[1][5][7] = {{{&l_838[4][4][5],&p_1582->g_840,(void*)0,&l_838[0][2][4],&p_1582->g_840,&l_838[0][2][4],(void*)0},{&l_838[4][4][5],&p_1582->g_840,(void*)0,&l_838[0][2][4],&p_1582->g_840,&l_838[0][2][4],(void*)0},{&l_838[4][4][5],&p_1582->g_840,(void*)0,&l_838[0][2][4],&p_1582->g_840,&l_838[0][2][4],(void*)0},{&l_838[4][4][5],&p_1582->g_840,(void*)0,&l_838[0][2][4],&p_1582->g_840,&l_838[0][2][4],(void*)0},{&l_838[4][4][5],&p_1582->g_840,(void*)0,&l_838[0][2][4],&p_1582->g_840,&l_838[0][2][4],(void*)0}}};
                        int32_t l_850[8] = {0x1D08AB36L,9L,0x1D08AB36L,0x1D08AB36L,9L,0x1D08AB36L,0x1D08AB36L,9L};
                        int32_t l_851[10][1];
                        int16_t *l_889 = &l_845;
                        uint64_t *l_890 = &p_1582->g_396;
                        int i, j, k;
                        for (i = 0; i < 10; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_851[i][j] = 0x6C448E3CL;
                        }
                        l_852 = (safe_add_func_int64_t_s_s(p_75, ((p_1582->g_816 == l_819[0][3][1]) & (l_851[7][0] = (p_1582->g_113 != (safe_rshift_func_uint16_t_u_s(GROUP_DIVERGE(2, 1), (safe_mul_func_int16_t_s_s((safe_lshift_func_int16_t_s_s((safe_div_func_int32_t_s_s((safe_mul_func_int8_t_s_s(((l_850[4] = ((+(!((&p_1582->g_549 != &p_76) || (safe_mul_func_int8_t_s_s(((safe_rshift_func_uint16_t_u_u(((((p_76 < ((l_798 = (safe_add_func_int8_t_s_s((l_724 = ((((*l_785) ^= ((l_838[0][2][4] != (l_844 = p_1582->g_840)) != l_845)) | p_76) , l_780)), l_780))) , l_798)) && 2L) , (void*)0) == p_1582->g_846), 13)) == p_1582->g_155[2]), p_76))))) ^ l_780)) != (***p_1582->g_406)), p_75)), (*p_1582->g_841))), p_75)), p_75)))))))));
                        l_863[0][1] = ((((((l_853 < ((0x9AL != (safe_mod_func_uint32_t_u_u(((((safe_div_func_uint8_t_u_u(((safe_mod_func_uint8_t_u_u((0x7F1CL | (0x5C8DBA64L >= (p_1582->g_175[7][1][2] = (p_1582->g_369 = ((l_862 = (((l_860 , ((l_853 , (-1L)) & l_852)) , ((*p_1582->g_353) |= (safe_unary_minus_func_uint8_t_u(((l_851[8][0] = l_852) && p_75))))) || (*p_1582->g_353))) || GROUP_DIVERGE(0, 1)))))), 0x6EL)) >= l_860), 0x0EL)) > l_863[0][1]) <= (-10L)) ^ 0x61L), (*p_74)))) < (**p_1582->g_407))) , l_864) != l_865) < p_75) == 1L) > p_75);
                        p_1582->g_60 ^= (((((((((~(l_780 & 0L)) , (&p_1582->g_515 == l_785)) , ((safe_add_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u((0x26L < (safe_add_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_s(((((*l_890) &= (safe_mod_func_int8_t_s_s(((safe_mul_func_int8_t_s_s((((safe_div_func_uint8_t_u_u((safe_rshift_func_int16_t_s_u((l_724 = (((void*)0 != &p_1582->g_407) == (++(*l_785)))), 3)), (safe_mod_func_int32_t_s_s((safe_mod_func_uint16_t_u_u(((((void*)0 == l_888[3]) , l_889) == &p_1582->g_428), l_723)), l_798)))) , p_76) < 1L), 4L)) , (-2L)), 0x13L))) >= l_717) , 255UL), 6)), 18446744073709551615UL))), 2)), l_780)) , l_788)) != l_891) , &p_1582->g_665) != l_892[0][0]) && l_860) , p_76) || l_862);
                        p_1582->g_175[4][1][4] = (0x0958L == p_76);
                    }
                    for (p_1582->g_131 = 0; (p_1582->g_131 <= (-14)); --p_1582->g_131)
                    { /* block id: 467 */
                        uint64_t l_895 = 0x68D308C50F167D78L;
                        --l_895;
                    }
                    l_798 = (safe_mul_func_uint8_t_u_u(252UL, (safe_mul_func_int16_t_s_s(((((GROUP_DIVERGE(2, 1) & (safe_sub_func_uint16_t_u_u((((((*l_782) = l_798) == 0xBF66L) >= (((*l_904) |= (2L < (p_76 , 1UL))) , (((((void*)0 != l_905) ^ 0xA58E2237L) == 1UL) && l_780))) , p_76), p_1582->g_131))) , l_863[1][2]) | FAKE_DIVERGE(p_1582->global_1_offset, get_global_id(1), 10)) < p_75), p_1582->g_452[0][6]))));
                    return (*p_1582->g_270);
                }
                else
                { /* block id: 474 */
                    uint8_t *l_910 = &l_691;
                    int32_t l_925 = 0x27B8F968L;
                    int32_t l_928 = (-9L);
                    if (((p_76 | ((!0x3F70FECEL) >= (!((safe_sub_func_int16_t_s_s(((((p_76 || (safe_add_func_uint8_t_u_u(((*l_910) = (p_75 > p_1582->g_428)), ((safe_lshift_func_uint8_t_u_s(((!((((safe_mod_func_int16_t_s_s((safe_sub_func_int8_t_s_s((p_76 > (safe_mod_func_int32_t_s_s((safe_rshift_func_uint8_t_u_u((safe_mul_func_int16_t_s_s((((safe_mul_func_uint16_t_u_u(((*p_1582->g_353) = p_76), (&p_1582->g_766[0] != l_788))) & p_75) != p_76), p_1582->g_452[0][2])), 1)), p_75))), p_75)), 0x2AD9L)) >= (-1L)) && 0UL) || l_852)) < 0x7A67L), 0)) > p_75)))) , p_74) != (*p_1582->g_407)) , 0x28DEL), 0x370BL)) , (*p_74))))) , (**p_1582->g_270)))
                    { /* block id: 477 */
                        uint32_t l_931[9] = {4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL};
                        int i;
                        --l_931[2];
                        l_724 |= (safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_1582->global_2_offset, get_global_id(2), 10), l_780));
                        p_1582->g_175[7][0][0] = (safe_rshift_func_uint8_t_u_s(p_76, 5));
                    }
                    else
                    { /* block id: 481 */
                        uint64_t l_938 = 0x509BBFC57CECDC1DL;
                        p_74 = (**p_1582->g_406);
                        l_938++;
                    }
                }
                p_1582->g_175[4][0][2] |= (***p_1582->g_406);
                for (p_1582->g_549 = 0; p_1582->g_549 < 1; p_1582->g_549 += 1)
                {
                    for (l_845 = 0; l_845 < 7; l_845 += 1)
                    {
                        for (p_1582->g_515 = 0; p_1582->g_515 < 8; p_1582->g_515 += 1)
                        {
                            l_811[p_1582->g_549][l_845][p_1582->g_515] = &p_1582->g_175[1][1][0];
                        }
                    }
                }
            }
            else
            { /* block id: 488 */
                int32_t l_957 = 1L;
                for (l_860 = 10; (l_860 < 15); l_860 = safe_add_func_int16_t_s_s(l_860, 3))
                { /* block id: 491 */
                    int32_t ****l_952 = (void*)0;
                    int32_t ****l_953 = &p_1582->g_406;
                    uint8_t *l_956 = &p_1582->g_152[0];
                    l_957 ^= (safe_mul_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u(((safe_div_func_int16_t_s_s((((void*)0 != l_797) || (&p_1582->g_270 != ((*l_953) = l_951[7][1][1]))), (safe_mod_func_uint16_t_u_u((&p_1582->g_799 != (void*)0), 7L)))) < (FAKE_DIVERGE(p_1582->group_2_offset, get_group_id(2), 10) , ((*l_956) = 7UL))), 13)), l_929));
                }
                l_930 = (**p_1582->g_407);
                p_74 = (*p_1582->g_407);
            }
        }
        else
        { /* block id: 499 */
            uint16_t l_961 = 0xF8DFL;
            int32_t l_968 = 2L;
            uint32_t l_983 = 6UL;
            p_1582->g_62[4][1] = (safe_mul_func_int16_t_s_s(((l_961 ^ (p_1582->g_150 = (((p_75 , l_780) , ((**p_1582->g_840) |= 0xD156B162L)) > (safe_sub_func_uint16_t_u_u((*p_1582->g_353), (((safe_sub_func_int16_t_s_s((l_968 = ((*l_782) = (safe_add_func_uint16_t_u_u(5UL, FAKE_DIVERGE(p_1582->group_2_offset, get_group_id(2), 10))))), p_75)) == 0x74L) && (-1L))))))) , p_75), 0x614CL));
            for (p_1582->g_141 = 0; (p_1582->g_141 < 60); p_1582->g_141 = safe_add_func_int8_t_s_s(p_1582->g_141, 3))
            { /* block id: 507 */
                uint8_t *l_989 = &p_1582->g_210[1];
                l_968 |= (safe_lshift_func_int16_t_s_u((safe_add_func_uint32_t_u_u((safe_lshift_func_int8_t_s_u((((0x0D6A6343L || (safe_rshift_func_int16_t_s_u(((safe_sub_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_s((l_961 & (FAKE_DIVERGE(p_1582->local_1_offset, get_local_id(1), 10) <= 0x4D6B111BL)), (p_76 && l_780))), l_983)) ^ (((*l_989) |= (safe_mul_func_uint16_t_u_u((+(safe_div_func_int64_t_s_s((((l_862 == p_76) && ((&p_1582->g_711 == l_988) | (**p_1582->g_840))) ^ 18446744073709551615UL), p_76))), GROUP_DIVERGE(1, 1)))) == l_780)), 7))) & 0x193A20E791D7CE0CL) , 0x38L), 1)), 0L)), (*p_1582->g_353)));
                return p_74;
            }
        }
        p_1582->g_60 &= (!(((0x35L | (p_1582->g_766[0] , ((0UL != ((l_990 & ((safe_sub_func_int64_t_s_s((l_993 >= (safe_add_func_int64_t_s_s((safe_div_func_int16_t_s_s((4294967295UL | ((safe_div_func_uint64_t_u_u(l_1000, ((GROUP_DIVERGE(2, 1) | (safe_sub_func_uint64_t_u_u(p_1582->g_152[7], ((((~p_1582->g_141) | (*p_1582->g_353)) == p_75) == p_75)))) && 65535UL))) > 0x6E27A05789813340L)), l_862)), p_75))), l_862)) | 0x90L)) , p_75)) | 0x1643AC4C54FAEBCAL))) != p_75) && p_1582->g_369));
        (*p_1582->g_407) = (*p_1582->g_407);
    }
    else
    { /* block id: 515 */
        int32_t l_1004[4][8][1] = {{{(-5L)},{(-5L)},{(-5L)},{(-5L)},{(-5L)},{(-5L)},{(-5L)},{(-5L)}},{{(-5L)},{(-5L)},{(-5L)},{(-5L)},{(-5L)},{(-5L)},{(-5L)},{(-5L)}},{{(-5L)},{(-5L)},{(-5L)},{(-5L)},{(-5L)},{(-5L)},{(-5L)},{(-5L)}},{{(-5L)},{(-5L)},{(-5L)},{(-5L)},{(-5L)},{(-5L)},{(-5L)},{(-5L)}}};
        uint8_t l_1006 = 0xF8L;
        int8_t **l_1037 = &p_1582->g_1035[0];
        int32_t l_1049 = 0L;
        int i, j, k;
        l_1004[3][2][0] &= l_1003;
        ++l_1006;
        for (p_1582->g_369 = 0; (p_1582->g_369 >= (-28)); p_1582->g_369 = safe_sub_func_uint8_t_u_u(p_1582->g_369, 5))
        { /* block id: 520 */
            int8_t *l_1011[7][9][4] = {{{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549}},{{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549}},{{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549}},{{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549}},{{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549}},{{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549}},{{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549},{&p_1582->g_244,&p_1582->g_549,&p_1582->g_452[0][0],&p_1582->g_549}}};
            int32_t l_1017[3][3][10] = {{{0x1B7F8FCBL,(-3L),0x511F2715L,0x511F2715L,(-3L),0x1B7F8FCBL,(-3L),0L,1L,0x1ED0813DL},{0x1B7F8FCBL,(-3L),0x511F2715L,0x511F2715L,(-3L),0x1B7F8FCBL,(-3L),0L,1L,0x1ED0813DL},{0x1B7F8FCBL,(-3L),0x511F2715L,0x511F2715L,(-3L),0x1B7F8FCBL,(-3L),0L,1L,0x1ED0813DL}},{{0x1B7F8FCBL,(-3L),0x511F2715L,0x511F2715L,(-3L),0x1B7F8FCBL,(-3L),0L,1L,0x1ED0813DL},{0x1B7F8FCBL,(-3L),0x511F2715L,0x511F2715L,(-3L),0x1B7F8FCBL,(-3L),0L,1L,0x1ED0813DL},{0x1B7F8FCBL,(-3L),0x511F2715L,0x511F2715L,(-3L),0x1B7F8FCBL,(-3L),0L,1L,0x1ED0813DL}},{{0x1B7F8FCBL,(-3L),0x511F2715L,0x511F2715L,(-3L),0x1B7F8FCBL,(-3L),0L,1L,0x1ED0813DL},{0x1B7F8FCBL,(-3L),0x511F2715L,0x511F2715L,(-3L),0x1B7F8FCBL,(-3L),0L,1L,0x1ED0813DL},{0x1B7F8FCBL,(-3L),0x511F2715L,0x511F2715L,(-3L),0x1B7F8FCBL,(-3L),0L,1L,0x1ED0813DL}}};
            int i, j, k;
            p_1582->g_61 = (((l_1004[3][2][0] = 0x69L) != (0x78L && (**p_1582->g_846))) <= ((safe_add_func_uint32_t_u_u(((safe_mul_func_uint16_t_u_u((*p_1582->g_353), (((l_1016 == (p_1582->g_327 , &l_838[2][4][4])) && (l_1017[2][0][1] , 65535UL)) || 0UL))) < l_1006), GROUP_DIVERGE(1, 1))) > l_1006));
            for (l_691 = (-27); (l_691 != 32); l_691++)
            { /* block id: 525 */
                int64_t l_1025 = 0x6597AF0BB7FF10EDL;
                int32_t l_1026 = 1L;
                int32_t l_1027 = 0x6422127FL;
                int32_t l_1028 = 0x725BB888L;
                for (p_1582->g_150 = 0; (p_1582->g_150 <= 7); p_1582->g_150 += 1)
                { /* block id: 528 */
                    int32_t l_1023[9][8][3] = {{{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)}},{{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)}},{{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)}},{{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)}},{{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)}},{{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)}},{{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)}},{{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)}},{{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L)}}};
                    int32_t *l_1050 = &l_1027;
                    int i, j, k;
                    if ((p_1582->g_152[p_1582->g_150] && ((safe_unary_minus_func_int16_t_s(p_75)) | FAKE_DIVERGE(p_1582->local_1_offset, get_local_id(1), 10))))
                    { /* block id: 529 */
                        int32_t l_1021 = 0x76EA22F5L;
                        int32_t l_1022[1];
                        int i;
                        for (i = 0; i < 1; i++)
                            l_1022[i] = 7L;
                        if (l_1017[2][0][1])
                            break;
                        l_1029[1]++;
                        return (*p_1582->g_407);
                    }
                    else
                    { /* block id: 533 */
                        int8_t ***l_1036 = &p_1582->g_1034;
                        int64_t *l_1040[6] = {&p_1582->g_131,&p_1582->g_131,&p_1582->g_131,&p_1582->g_131,&p_1582->g_131,&p_1582->g_131};
                        int32_t l_1041 = 0x37DDFCAAL;
                        uint64_t *l_1044 = (void*)0;
                        uint64_t *l_1045 = (void*)0;
                        uint16_t *l_1048 = &p_1582->g_327;
                        int i;
                        l_1023[0][1][0] = (safe_mod_func_uint64_t_u_u((!(((~(((*l_1036) = p_1582->g_1034) == l_1037)) , (!(*p_1582->g_353))) & 1L)), (((safe_sub_func_int32_t_s_s(((4294967295UL != (((((p_75 >= (-7L)) >= p_75) != (l_1041 ^= 0x40F057768E975286L)) , p_76) ^ p_1582->g_452[0][1])) ^ (*p_74)), 0x921C5204L)) ^ 0x5127CD00665D479FL) | (*p_1582->g_841))));
                        l_1027 = 0x72813D07L;
                        l_1049 ^= ((l_1004[0][1][0] > 9L) <= (safe_mul_func_int8_t_s_s(((l_1023[4][1][1] = (&p_1582->g_766[0] == (void*)0)) , p_75), (((((safe_rshift_func_int8_t_s_s(0x78L, 7)) != (0x5871D5BCL ^ (((*l_1048) = ((*p_1582->g_353) = (((void*)0 == &p_1582->g_353) < (*p_1582->g_353)))) | l_1004[3][2][0]))) , p_75) < p_1582->g_63[4]) < 0UL))));
                    }
                    l_1050 = p_77;
                }
            }
        }
        (**p_1582->g_406) = p_77;
    }
    return p_74;
}


/* ------------------------------------------ */
/* 
 * reads : p_1582->g_63 p_1582->g_62 p_1582->g_113 p_1582->g_118 p_1582->g_131 p_1582->g_141 p_1582->g_122 p_1582->g_150 p_1582->g_152 p_1582->g_143 p_1582->g_155 p_1582->g_158 p_1582->g_175 p_1582->g_180 p_1582->g_210 p_1582->g_244 p_1582->g_270 p_1582->g_271 p_1582->g_327 p_1582->g_151 p_1582->g_369 p_1582->g_154 p_1582->g_353 p_1582->g_406 p_1582->g_407 p_1582->g_450 p_1582->g_428 p_1582->g_396 p_1582->g_452 p_1582->g_60 p_1582->g_655
 * writes: p_1582->g_131 p_1582->g_141 p_1582->g_143 p_1582->g_150 p_1582->g_151 p_1582->g_152 p_1582->g_154 p_1582->g_155 p_1582->g_158 p_1582->g_175 p_1582->g_180 p_1582->g_122 p_1582->g_244 p_1582->g_118 p_1582->g_271 p_1582->g_327 p_1582->g_353 p_1582->g_369 p_1582->g_62 p_1582->g_396 p_1582->g_406 p_1582->g_452 p_1582->g_428 p_1582->g_210 p_1582->g_113 p_1582->g_515 p_1582->g_549 p_1582->g_664 p_1582->g_667
 */
int32_t * func_78(uint16_t  p_79, int32_t * p_80, struct S0 * p_1582)
{ /* block id: 80 */
    uint8_t l_97 = 255UL;
    int32_t *l_100 = &p_1582->g_63[0];
    int64_t **l_663 = (void*)0;
    int64_t ***l_662 = &l_663;
    int64_t ****l_666[8] = {&l_662,&l_662,&l_662,&l_662,&l_662,&l_662,&l_662,&l_662};
    int8_t l_668 = 0x30L;
    uint32_t *l_669 = (void*)0;
    uint32_t *l_670 = &p_1582->g_122;
    int32_t *l_671 = &p_1582->g_369;
    int i;
    for (p_79 = 0; (p_79 != 32); p_79++)
    { /* block id: 83 */
        int64_t l_86[7] = {0x33286B001120EAC2L,0x33286B001120EAC2L,0x33286B001120EAC2L,0x33286B001120EAC2L,0x33286B001120EAC2L,0x33286B001120EAC2L,0x33286B001120EAC2L};
        int32_t l_96 = 1L;
        uint16_t *l_326 = &p_1582->g_327;
        int i;
        (*p_1582->g_270) = func_84((l_86[6] >= ((*p_80) > func_87(p_1582->g_62[6][1], ((*l_326) &= (func_91((safe_rshift_func_int16_t_s_s((l_96 = ((void*)0 != p_80)), (((l_97 && ((safe_rshift_func_int8_t_s_u((+(1UL & p_1582->g_63[0])), 5)) , ((void*)0 == l_100))) , p_79) < p_1582->g_63[5]))), p_80, p_1582) == FAKE_DIVERGE(p_1582->local_0_offset, get_local_id(0), 10))), &p_1582->g_63[0], p_1582))), p_1582);
    }
    (*p_1582->g_407) = func_109(func_109(p_80, p_79, p_79, p_1582), (safe_mod_func_int8_t_s_s((-10L), 250UL)), ((safe_rshift_func_uint8_t_u_u(((((p_1582->g_667[0][6][2] = (p_1582->g_664[2][0] = l_662)) != (void*)0) || (((*l_670) |= (((*p_80) != l_668) <= p_1582->g_158)) > (*p_80))) < p_79), 7)) , 0x1D9B47E1CDA56DFBL), p_1582);
    (*l_671) |= 0x156CC8B6L;
    return p_80;
}


/* ------------------------------------------ */
/* 
 * reads : p_1582->g_154 p_1582->g_141 p_1582->g_62 p_1582->g_210 p_1582->g_327 p_1582->g_180 p_1582->g_155 p_1582->g_113 p_1582->g_353 p_1582->g_158 p_1582->g_175 p_1582->g_270 p_1582->g_271 p_1582->g_152 p_1582->g_131 p_1582->g_118 p_1582->g_122 p_1582->g_406 p_1582->g_407 p_1582->g_450 p_1582->g_428 p_1582->g_150 p_1582->g_151 p_1582->g_63 p_1582->g_396 p_1582->g_244 p_1582->g_452 p_1582->g_60 p_1582->g_655
 * writes: p_1582->g_154 p_1582->g_141 p_1582->g_327 p_1582->g_62 p_1582->g_151 p_1582->g_271 p_1582->g_396 p_1582->g_406 p_1582->g_155 p_1582->g_152 p_1582->g_244 p_1582->g_452 p_1582->g_175 p_1582->g_428 p_1582->g_158 p_1582->g_210 p_1582->g_131 p_1582->g_113 p_1582->g_515 p_1582->g_549 p_1582->g_122
 */
int32_t * func_84(uint8_t  p_85, struct S0 * p_1582)
{ /* block id: 197 */
    int64_t l_385 = 0x46FC845DF1FDC091L;
    uint64_t *l_395 = &p_1582->g_396;
    uint64_t **l_394 = &l_395;
    int32_t *l_411[9] = {&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]};
    int8_t *l_420 = &p_1582->g_244;
    int16_t *l_544 = (void*)0;
    uint8_t *l_629[9] = {&p_1582->g_152[0],&p_1582->g_152[0],&p_1582->g_152[0],&p_1582->g_152[0],&p_1582->g_152[0],&p_1582->g_152[0],&p_1582->g_152[0],&p_1582->g_152[0],&p_1582->g_152[0]};
    uint8_t **l_628 = &l_629[0];
    int i;
    for (p_1582->g_154 = 0; (p_1582->g_154 <= 1); p_1582->g_154 += 1)
    { /* block id: 200 */
        int32_t *l_403 = &p_1582->g_175[0][0][5];
        int32_t *l_435 = &p_1582->g_175[1][1][6];
        int64_t **l_458[2][4][3] = {{{&p_1582->g_180,&p_1582->g_180,&p_1582->g_180},{&p_1582->g_180,&p_1582->g_180,&p_1582->g_180},{&p_1582->g_180,&p_1582->g_180,&p_1582->g_180},{&p_1582->g_180,&p_1582->g_180,&p_1582->g_180}},{{&p_1582->g_180,&p_1582->g_180,&p_1582->g_180},{&p_1582->g_180,&p_1582->g_180,&p_1582->g_180},{&p_1582->g_180,&p_1582->g_180,&p_1582->g_180},{&p_1582->g_180,&p_1582->g_180,&p_1582->g_180}}};
        int16_t *l_468 = &p_1582->g_428;
        int32_t ***l_479 = &p_1582->g_407;
        int32_t l_488[6] = {0x3EBCEDCDL,0x3EBCEDCDL,0x3EBCEDCDL,0x3EBCEDCDL,0x3EBCEDCDL,0x3EBCEDCDL};
        uint32_t l_526 = 5UL;
        uint32_t l_545[4][2];
        uint64_t *l_552 = &p_1582->g_396;
        uint16_t **l_657[1];
        int i, j, k;
        for (i = 0; i < 4; i++)
        {
            for (j = 0; j < 2; j++)
                l_545[i][j] = 0xF501F7BDL;
        }
        for (i = 0; i < 1; i++)
            l_657[i] = &p_1582->g_353;
        for (p_1582->g_141 = 0; (p_1582->g_141 <= 1); p_1582->g_141 += 1)
        { /* block id: 203 */
            uint32_t *l_391 = &p_1582->g_150;
            int64_t **l_454 = &p_1582->g_180;
            int32_t l_471 = (-1L);
            int i, j;
            if (p_1582->g_62[(p_1582->g_141 + 5)][(p_1582->g_154 + 1)])
                break;
            for (p_1582->g_327 = 0; (p_1582->g_327 <= 3); p_1582->g_327 += 1)
            { /* block id: 207 */
                uint64_t *l_393 = (void*)0;
                uint64_t **l_392 = &l_393;
                int8_t *l_424 = (void*)0;
                int8_t *l_425 = &p_1582->g_244;
                int16_t *l_427 = &p_1582->g_428;
                int16_t **l_426 = &l_427;
                int16_t **l_429 = (void*)0;
                int16_t *l_431 = &p_1582->g_428;
                int16_t **l_430 = &l_431;
                int64_t **l_432 = &p_1582->g_180;
                int64_t **l_434 = (void*)0;
                int64_t ***l_433 = &l_434;
                int i, j;
                p_1582->g_62[(p_1582->g_141 + 5)][p_1582->g_327] = (((safe_sub_func_int16_t_s_s(p_1582->g_210[(p_1582->g_141 + 3)], ((safe_mul_func_int8_t_s_s((safe_sub_func_int16_t_s_s((p_1582->g_210[(p_1582->g_327 + 3)] && 0x0FL), ((safe_sub_func_uint32_t_u_u((p_1582->g_180 == p_1582->g_180), p_1582->g_155[p_1582->g_154])) , (-1L)))), l_385)) , l_385))) == (-7L)) <= 6UL);
                for (p_1582->g_151 = 0; (p_1582->g_151 <= 2); p_1582->g_151 += 1)
                { /* block id: 211 */
                    uint32_t *l_390 = &p_1582->g_122;
                    int32_t l_408 = 0x77F9DD4EL;
                    int64_t **l_410[2];
                    int8_t *l_418 = &p_1582->g_154;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_410[i] = &p_1582->g_180;
                    if ((((safe_rshift_func_int8_t_s_s(((&p_1582->g_131 != (void*)0) < p_1582->g_113), 0)) , ((safe_rshift_func_uint16_t_u_u((l_390 == l_391), (*p_1582->g_353))) , (l_392 != l_394))) <= (p_1582->g_175[1][1][0] , p_85)))
                    { /* block id: 212 */
                        (*p_1582->g_270) = (*p_1582->g_270);
                        return l_391;
                    }
                    else
                    { /* block id: 215 */
                        int32_t *l_409 = (void*)0;
                        int8_t **l_419 = &l_418;
                        uint16_t **l_421 = &p_1582->g_353;
                        int i;
                        (*p_1582->g_270) = l_390;
                        (*p_1582->g_270) = ((p_1582->g_155[(p_1582->g_141 + 1)] |= (safe_lshift_func_uint16_t_u_u((safe_sub_func_int8_t_s_s((((**l_394) = ((safe_sub_func_int8_t_s_s((-1L), p_85)) ^ ((*p_1582->g_270) == l_403))) < (safe_mul_func_int16_t_s_s(((((p_85 == (p_1582->g_62[(p_1582->g_141 + 5)][(p_1582->g_154 + 1)] == (((p_1582->g_406 = (p_1582->g_152[0] , &p_1582->g_270)) != &p_1582->g_407) >= (*p_1582->g_180)))) < l_408) & 0x59L) < p_85), 0x529AL))), 0x3EL)), 12))) , l_409);
                        (*p_1582->g_270) = func_109((((void*)0 == l_410[1]) , func_109(func_109(l_411[8], (safe_div_func_uint8_t_u_u(((safe_add_func_int64_t_s_s((p_1582->g_154 | p_1582->g_155[p_1582->g_154]), ((((safe_rshift_func_uint8_t_u_s((p_1582->g_152[p_1582->g_327] |= (((*l_419) = l_418) == (l_420 = &p_1582->g_154))), (p_1582->g_244 = (l_421 == (void*)0)))) != (-5L)) , p_1582->g_113) >= 0x7DL))) , p_1582->g_118), p_85)), p_85, p_1582), p_85, (*p_1582->g_180), p_1582)), p_1582->g_122, l_408, p_1582);
                        (**p_1582->g_406) = l_409;
                    }
                    if (p_1582->g_62[(p_1582->g_141 + 5)][(p_1582->g_154 + 1)])
                        break;
                    if (p_85)
                        continue;
                }
                if ((1UL != ((safe_sub_func_uint8_t_u_u(p_1582->g_62[(p_1582->g_141 + 5)][(p_1582->g_154 + 1)], 254UL)) ^ ((((*l_425) = p_1582->g_155[2]) | (((((p_1582->g_210[0] , ((*l_426) = p_1582->g_353)) == ((*l_430) = (void*)0)) , l_432) != ((*l_433) = (void*)0)) || p_85)) != (*p_1582->g_180)))))
                { /* block id: 235 */
                    int8_t *l_451 = &p_1582->g_452[0][1];
                    int32_t l_453 = (-6L);
                    int i, j, k;
                    (*p_1582->g_407) = l_435;
                    p_1582->g_175[(p_1582->g_141 + 3)][p_1582->g_154][(p_1582->g_327 + 3)] = (safe_lshift_func_uint8_t_u_s(((safe_add_func_int16_t_s_s((safe_div_func_uint8_t_u_u(((0x37C3L | (safe_div_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(p_85, ((*l_451) = ((safe_sub_func_uint32_t_u_u((p_1582->g_62[(p_1582->g_141 + 5)][(p_1582->g_154 + 1)] > (((*l_425) = 0x45L) , p_85)), (p_85 & (((p_85 < (safe_rshift_func_int16_t_s_u(((p_1582->g_450[1] == (void*)0) == p_85), 6))) != p_85) & 0x2FL)))) != p_85)))), FAKE_DIVERGE(p_1582->local_2_offset, get_local_id(2), 10)))) || 3UL), l_453)), (*p_1582->g_353))) != 0x4C37FB32L), (*l_403)));
                    (*l_433) = l_454;
                }
                else
                { /* block id: 241 */
                    int32_t l_455 = 0x6751C904L;
                    int i;
                    l_471 &= (((l_455 && p_85) , (safe_sub_func_int8_t_s_s((*l_435), (l_458[0][0][2] == l_458[0][0][2])))) , (safe_sub_func_uint64_t_u_u((safe_lshift_func_uint16_t_u_s((((((*l_425) = ((safe_unary_minus_func_uint32_t_u(((safe_lshift_func_uint8_t_u_s(GROUP_DIVERGE(1, 1), (((safe_rshift_func_int16_t_s_u(p_85, (((((*l_430) != l_468) || ((((*l_468) |= ((p_1582->g_155[p_1582->g_141] = (safe_lshift_func_int16_t_s_u((*l_403), p_85))) <= p_1582->g_62[(p_1582->g_141 + 5)][(p_1582->g_154 + 1)])) >= p_1582->g_154) | p_85)) != (*p_1582->g_180)) | 0xAC7AD3C1L))) & p_85) & p_85))) , 0x591BB09EL))) == 4294967288UL)) && p_1582->g_210[2]) , p_85) , 1UL), 9)), (*p_1582->g_180))));
                }
                (*p_1582->g_270) = (*p_1582->g_407);
            }
            if (p_1582->g_62[(p_1582->g_141 + 5)][(p_1582->g_154 + 1)])
                break;
            for (p_1582->g_158 = 0; (p_1582->g_158 <= 1); p_1582->g_158 += 1)
            { /* block id: 252 */
                int64_t **l_474 = (void*)0;
                uint8_t *l_475 = (void*)0;
                uint8_t *l_476 = &p_1582->g_210[1];
                int32_t ****l_480[5][7] = {{&p_1582->g_406,&p_1582->g_406,&p_1582->g_406,&p_1582->g_406,&p_1582->g_406,&p_1582->g_406,&p_1582->g_406},{&p_1582->g_406,&p_1582->g_406,&p_1582->g_406,&p_1582->g_406,&p_1582->g_406,&p_1582->g_406,&p_1582->g_406},{&p_1582->g_406,&p_1582->g_406,&p_1582->g_406,&p_1582->g_406,&p_1582->g_406,&p_1582->g_406,&p_1582->g_406},{&p_1582->g_406,&p_1582->g_406,&p_1582->g_406,&p_1582->g_406,&p_1582->g_406,&p_1582->g_406,&p_1582->g_406},{&p_1582->g_406,&p_1582->g_406,&p_1582->g_406,&p_1582->g_406,&p_1582->g_406,&p_1582->g_406,&p_1582->g_406}};
                int8_t *l_487 = &p_1582->g_244;
                int32_t *l_512 = (void*)0;
                int32_t *l_513 = &p_1582->g_113;
                int64_t *l_514 = &p_1582->g_515;
                int i, j, k;
                l_488[3] |= (((safe_add_func_int8_t_s_s(p_85, ((void*)0 == l_474))) && ((*l_476)--)) < ((((*p_1582->g_180) = (FAKE_DIVERGE(p_1582->group_0_offset, get_group_id(0), 10) < (p_85 != (7UL | (p_85 | (l_479 != (p_1582->g_406 = &p_1582->g_270))))))) < (p_1582->g_396 = (((safe_add_func_uint8_t_u_u(((safe_add_func_int32_t_s_s((p_1582->g_175[(p_1582->g_154 + 4)][p_1582->g_154][(p_1582->g_141 + 4)] = ((safe_lshift_func_int8_t_s_u(((((*l_487) = ((~p_1582->g_150) != p_1582->g_62[(p_1582->g_141 + 5)][(p_1582->g_154 + 1)])) <= p_85) , p_85), GROUP_DIVERGE(1, 1))) != p_85)), p_1582->g_155[0])) == p_85), l_471)) > p_1582->g_151) || p_1582->g_175[1][1][0]))) , l_471));
                l_411[0] = (void*)0;
                if ((safe_lshift_func_uint8_t_u_s((p_85 , (!(safe_sub_func_uint8_t_u_u((((((*l_514) = ((((((*l_513) = (((safe_mul_func_int16_t_s_s((((safe_rshift_func_int16_t_s_s((p_85 || (safe_mod_func_int8_t_s_s((((((0xEE10D031L != (((safe_lshift_func_int16_t_s_s(p_1582->g_62[6][1], 4)) , ((safe_div_func_int32_t_s_s((safe_mul_func_uint8_t_u_u(p_85, (safe_lshift_func_uint16_t_u_u((*p_1582->g_353), 11)))), p_85)) , ((safe_add_func_int16_t_s_s(((*l_468) = ((safe_unary_minus_func_uint16_t_u(p_85)) , (safe_mul_func_int8_t_s_s(0x2BL, 252UL)))), 1L)) , p_85))) < p_85)) < FAKE_DIVERGE(p_1582->local_0_offset, get_local_id(0), 10)) , p_85) || (*l_435)) == p_85), (-10L)))), p_85)) , p_1582->g_63[4]) < p_85), FAKE_DIVERGE(p_1582->group_1_offset, get_group_id(1), 10))) == GROUP_DIVERGE(2, 1)) , p_1582->g_62[(p_1582->g_141 + 5)][(p_1582->g_154 + 1)])) , &l_385) == (void*)0) | p_1582->g_396) , 0x03C523A51829DB34L)) , 5L) || 0x5391E9E2L) == 8L), p_85)))), 4)))
                { /* block id: 264 */
                    uint8_t l_518 = 3UL;
                    int32_t l_521 = 1L;
                    for (p_1582->g_428 = 0; (p_1582->g_428 >= 5); ++p_1582->g_428)
                    { /* block id: 267 */
                        l_518++;
                    }
                    if (p_85)
                        continue;
                    l_521 ^= (GROUP_DIVERGE(1, 1) >= 0x6BL);
                }
                else
                { /* block id: 272 */
                    return (**p_1582->g_406);
                }
            }
        }
        (**p_1582->g_406) = (void*)0;
        if (((((void*)0 == &l_385) | (p_85 == (safe_lshift_func_int8_t_s_u(((void*)0 == &p_1582->g_428), ((void*)0 == l_411[0]))))) < (+((*l_435) ^= ((safe_mul_func_uint16_t_u_u(l_526, (*p_1582->g_353))) >= p_85)))))
        { /* block id: 279 */
            int16_t l_531 = 1L;
            int16_t l_539[2];
            int32_t *l_567 = &l_488[3];
            int32_t l_606 = 0x0F0950F3L;
            int32_t l_609 = 0x422AB5D2L;
            int32_t l_613 = 0x0980E7CFL;
            int32_t l_614[8][4] = {{0x1A88A0F4L,0x1A88A0F4L,4L,0x6AA0C259L},{0x1A88A0F4L,0x1A88A0F4L,4L,0x6AA0C259L},{0x1A88A0F4L,0x1A88A0F4L,4L,0x6AA0C259L},{0x1A88A0F4L,0x1A88A0F4L,4L,0x6AA0C259L},{0x1A88A0F4L,0x1A88A0F4L,4L,0x6AA0C259L},{0x1A88A0F4L,0x1A88A0F4L,4L,0x6AA0C259L},{0x1A88A0F4L,0x1A88A0F4L,4L,0x6AA0C259L},{0x1A88A0F4L,0x1A88A0F4L,4L,0x6AA0C259L}};
            int i, j;
            for (i = 0; i < 2; i++)
                l_539[i] = 0x3DFCL;
            for (p_1582->g_141 = 0; (p_1582->g_141 <= 29); p_1582->g_141 = safe_add_func_uint8_t_u_u(p_1582->g_141, 2))
            { /* block id: 282 */
                int32_t l_536 = 3L;
                int32_t *l_558 = &p_1582->g_175[1][1][0];
                int64_t **l_563 = &p_1582->g_180;
                for (l_385 = (-17); (l_385 == 16); l_385 = safe_add_func_uint16_t_u_u(l_385, 4))
                { /* block id: 285 */
                    int8_t *l_546 = (void*)0;
                    int8_t *l_547 = (void*)0;
                    int8_t *l_548 = &p_1582->g_549;
                    int32_t l_550 = 0x7B38248EL;
                    uint64_t *l_551 = (void*)0;
                    int32_t l_553 = 1L;
                    l_553 &= (((l_531 , 0UL) || ((((((safe_add_func_uint64_t_u_u((safe_add_func_int8_t_s_s(((~(((l_536 & 0UL) && (0x29651528A50D8690L | p_85)) == p_85)) == (GROUP_DIVERGE(1, 1) || ((*l_548) = (p_1582->g_452[0][1] |= (safe_rshift_func_int8_t_s_s(l_539[1], ((((safe_lshift_func_uint8_t_u_s((safe_lshift_func_int8_t_s_s((p_1582->g_244 |= (((&p_1582->g_428 == l_544) | l_545[2][0]) || l_531)), l_536)), 4)) , 0x49L) , p_85) && 0xB1L))))))), l_550)), p_1582->g_62[6][1])) , l_551) == l_552) , l_539[0]) | l_536) >= p_1582->g_141)) >= p_1582->g_154);
                }
                for (p_1582->g_151 = 0; (p_1582->g_151 != 17); ++p_1582->g_151)
                { /* block id: 293 */
                    for (l_526 = (-8); (l_526 > 14); l_526 = safe_add_func_int8_t_s_s(l_526, 1))
                    { /* block id: 296 */
                        int32_t *l_566 = &l_488[3];
                        (**p_1582->g_406) = l_558;
                        l_411[8] = func_109((**l_479), p_1582->g_151, (safe_sub_func_int8_t_s_s((p_1582->g_60 < (((safe_div_func_int64_t_s_s(((((void*)0 != l_563) || (-1L)) != (safe_add_func_int8_t_s_s(((l_566 == l_411[2]) < ((((*l_558) != (***p_1582->g_406)) & p_85) , p_85)), p_85))), p_85)) & 0UL) , (*p_1582->g_180))), l_531)), p_1582);
                        if ((**p_1582->g_270))
                            break;
                    }
                    l_567 = l_558;
                }
                for (p_1582->g_113 = (-9); (p_1582->g_113 > 7); p_1582->g_113 = safe_add_func_int32_t_s_s(p_1582->g_113, 4))
                { /* block id: 305 */
                    int64_t l_572 = 1L;
                    int32_t *l_582[9][8][1] = {{{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113}},{{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113}},{{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113}},{{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113}},{{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113}},{{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113}},{{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113}},{{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113}},{{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113},{&p_1582->g_113}}};
                    int i, j, k;
                    for (p_1582->g_158 = 23; (p_1582->g_158 > 13); p_1582->g_158 = safe_sub_func_int64_t_s_s(p_1582->g_158, 6))
                    { /* block id: 308 */
                        uint8_t *l_575 = &p_1582->g_152[1];
                        int16_t *l_583 = (void*)0;
                        int16_t *l_584[1];
                        int32_t l_585 = 0L;
                        int32_t **l_590 = &l_411[8];
                        int64_t *l_591 = &p_1582->g_515;
                        uint32_t **l_593[5];
                        uint32_t ***l_592 = &l_593[2];
                        int i;
                        for (i = 0; i < 1; i++)
                            l_584[i] = &l_531;
                        for (i = 0; i < 5; i++)
                            l_593[i] = (void*)0;
                        (*l_558) = ((l_572 != (safe_mul_func_uint8_t_u_u(((*l_575) = (+(0UL | 0xA7374C6BL))), (((((safe_lshift_func_uint16_t_u_u((l_572 | ((safe_lshift_func_int16_t_s_s((l_585 = ((*l_468) &= (!(&p_1582->g_113 == l_582[8][2][0])))), 11)) , ((!(safe_mod_func_uint8_t_u_u(0x11L, (p_1582->g_154 || (safe_sub_func_uint32_t_u_u(((((~(+(l_590 != (*p_1582->g_406)))) , 0x6FAF08A24C2464C9L) , l_591) != l_395), 8L)))))) == (-1L)))), (*p_1582->g_353))) >= p_85) | (*l_567)) >= 1UL) | (*p_1582->g_353))))) && p_1582->g_396);
                        (*l_592) = (void*)0;
                        (*l_590) = (**p_1582->g_406);
                    }
                    for (l_572 = 3; (l_572 >= 0); l_572 -= 1)
                    { /* block id: 318 */
                        int i, j;
                        (**p_1582->g_406) = l_411[8];
                        p_1582->g_62[(p_1582->g_154 + 2)][(p_1582->g_154 + 1)] |= p_1582->g_210[(l_572 + 5)];
                        if (p_1582->g_210[(l_572 + 1)])
                            continue;
                        p_1582->g_62[(l_572 + 2)][(p_1582->g_154 + 2)] = p_85;
                    }
                }
                if ((atomic_inc(&p_1582->l_atomic_input[45]) == 0))
                { /* block id: 326 */
                    int32_t *l_594 = (void*)0;
                    int32_t l_596 = 0x091A6DC4L;
                    int32_t *l_595 = &l_596;
                    uint16_t l_600 = 7UL;
                    uint8_t l_601 = 0xEDL;
                    int32_t l_602 = 0x71DDB686L;
                    l_595 = l_594;
                    for (l_596 = 28; (l_596 >= 26); l_596--)
                    { /* block id: 330 */
                        uint16_t l_599 = 0x363DL;
                        l_599 |= 0x2D831DE8L;
                    }
                    l_602 = (l_601 &= l_600);
                    unsigned int result = 0;
                    result += l_596;
                    result += l_600;
                    result += l_601;
                    result += l_602;
                    atomic_add(&p_1582->l_special_values[45], result);
                }
                else
                { /* block id: 335 */
                    (1 + 1);
                }
            }
            for (p_1582->g_122 = 6; (p_1582->g_122 == 32); ++p_1582->g_122)
            { /* block id: 341 */
                int8_t l_605 = 0x37L;
                int32_t l_607 = 0x237516A4L;
                int32_t l_608 = 0x455D6945L;
                int32_t l_610 = (-8L);
                int32_t l_611 = (-1L);
                int32_t l_612[2][1][7] = {{{(-1L),0x49C33843L,(-1L),(-1L),0x49C33843L,(-1L),(-1L)}},{{(-1L),0x49C33843L,(-1L),(-1L),0x49C33843L,(-1L),(-1L)}}};
                int8_t l_615 = 0x2CL;
                uint32_t l_616 = 4294967288UL;
                int i, j, k;
                l_616--;
            }
            if (p_85)
                break;
        }
        else
        { /* block id: 345 */
            uint64_t **l_619 = &l_552;
            int32_t l_652 = 0x48710610L;
            (*l_435) |= ((void*)0 == l_619);
            for (l_385 = 1; (l_385 >= 0); l_385 -= 1)
            { /* block id: 349 */
                uint8_t *l_627 = &p_1582->g_210[1];
                uint8_t **l_626 = &l_627;
                uint8_t ***l_625[1][10] = {{&l_626,&l_626,&l_626,&l_626,&l_626,&l_626,&l_626,&l_626,&l_626,&l_626}};
                int32_t *l_647 = (void*)0;
                int32_t l_656 = 0x1C24A1D1L;
                int i, j;
                if ((atomic_inc(&p_1582->l_atomic_input[77]) == 6))
                { /* block id: 351 */
                    int32_t l_620 = 0x2288C4BBL;
                    int32_t l_621 = 0x140804DAL;
                    int32_t *l_622 = &l_620;
                    int32_t *l_623 = &l_620;
                    int32_t *l_624[5] = {&l_620,&l_620,&l_620,&l_620,&l_620};
                    int i, j;
                    for (l_620 = 0; l_620 < 7; l_620 += 1)
                    {
                        for (l_621 = 0; l_621 < 4; l_621 += 1)
                        {
                            p_1582->g_62[l_620][l_621] = (-4L);
                        }
                    }
                    l_623 = (l_622 = (void*)0);
                    l_624[3] = (l_545[l_385][p_1582->g_154] , l_411[(p_1582->g_154 + 4)]);
                    unsigned int result = 0;
                    result += l_620;
                    result += l_621;
                    atomic_add(&p_1582->l_special_values[77], result);
                }
                else
                { /* block id: 356 */
                    (1 + 1);
                }
                l_628 = (void*)0;
                if ((atomic_inc(&p_1582->l_atomic_input[87]) == 9))
                { /* block id: 361 */
                    int32_t l_630 = 5L;
                    int16_t l_631 = 0x634BL;
                    int32_t *l_632 = (void*)0;
                    uint16_t l_633 = 2UL;
                    l_631 &= l_630;
                    l_632 = (void*)0;
                    if (l_633)
                    { /* block id: 364 */
                        int32_t l_635[9][9][3] = {{{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L}},{{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L}},{{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L}},{{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L}},{{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L}},{{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L}},{{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L}},{{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L}},{{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L},{0x312B1D51L,1L,1L}}};
                        int32_t *l_634 = &l_635[8][0][1];
                        int32_t *l_636 = &l_635[6][6][2];
                        int i, j, k;
                        l_636 = (l_634 = (l_632 = (void*)0));
                    }
                    else
                    { /* block id: 368 */
                        int32_t l_637 = 0x601D9ECEL;
                        uint32_t l_638 = 0x5C66CB27L;
                        l_638++;
                    }
                    unsigned int result = 0;
                    result += l_630;
                    result += l_631;
                    result += l_633;
                    atomic_add(&p_1582->l_special_values[87], result);
                }
                else
                { /* block id: 371 */
                    (1 + 1);
                }
                p_1582->g_62[6][1] &= (safe_lshift_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((((((safe_mul_func_int8_t_s_s((((((void*)0 == l_647) != (safe_lshift_func_uint16_t_u_u((safe_sub_func_int64_t_s_s(((((((*l_435) = (((*p_1582->g_180) = p_85) > p_85)) & ((-1L) <= p_1582->g_63[3])) > l_652) , ((safe_sub_func_int32_t_s_s((((((+4294967294UL) >= l_652) == p_1582->g_655) , l_652) , p_85), p_85)) < p_85)) & 5UL), 0x2193EBE9E1A58A38L)), GROUP_DIVERGE(0, 1)))) <= (*p_1582->g_353)) > l_656), 1L)) , l_657[0]) != &p_1582->g_353) >= p_1582->g_151) , (*p_1582->g_353)), l_652)), (*p_1582->g_353)));
            }
        }
    }
    return l_411[7];
}


/* ------------------------------------------ */
/* 
 * reads : p_1582->g_152 p_1582->g_151 p_1582->g_175 p_1582->g_118 p_1582->g_244 p_1582->g_369 p_1582->g_63
 * writes: p_1582->g_180 p_1582->g_353 p_1582->g_369
 */
int32_t  func_87(int64_t  p_88, uint16_t  p_89, int32_t * p_90, struct S0 * p_1582)
{ /* block id: 186 */
    int64_t *l_328 = &p_1582->g_131;
    int64_t **l_329 = &l_328;
    int64_t **l_330[5][10][1] = {{{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180}},{{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180}},{{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180}},{{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180}},{{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180},{&p_1582->g_180}}};
    int64_t *l_331 = &p_1582->g_131;
    int8_t *l_332[5] = {&p_1582->g_154,&p_1582->g_154,&p_1582->g_154,&p_1582->g_154,&p_1582->g_154};
    int32_t l_333 = 1L;
    uint16_t **l_350 = (void*)0;
    uint16_t *l_352[5];
    uint16_t **l_351[2][1][3] = {{{&l_352[3],&l_352[3],&l_352[3]}},{{&l_352[3],&l_352[3],&l_352[3]}}};
    int16_t l_360 = 0L;
    int16_t *l_365 = &l_360;
    int32_t l_366 = 0x4407AAD6L;
    int32_t l_367 = 0L;
    int32_t *l_368 = &p_1582->g_369;
    int32_t *l_370 = (void*)0;
    int32_t *l_371 = &p_1582->g_369;
    int32_t *l_372 = &p_1582->g_175[4][0][6];
    int32_t *l_373[6][1];
    uint16_t l_374 = 65531UL;
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_352[i] = &p_1582->g_327;
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 1; j++)
            l_373[i][j] = &p_1582->g_369;
    }
    (*l_368) |= ((((p_1582->g_180 = ((*l_329) = l_328)) == l_331) , (l_333 = 5L)) > (safe_mod_func_uint8_t_u_u(((safe_add_func_int8_t_s_s((((safe_mul_func_int8_t_s_s((((safe_mod_func_uint64_t_u_u(p_88, (l_367 ^= (safe_div_func_int64_t_s_s((safe_add_func_int64_t_s_s(((((safe_sub_func_int32_t_s_s((safe_div_func_int8_t_s_s(((p_1582->g_353 = &p_1582->g_158) == ((safe_rshift_func_uint16_t_u_s((p_89--), ((*l_365) = ((safe_rshift_func_int8_t_s_s((((-6L) & ((l_360 > p_1582->g_152[0]) == (safe_lshift_func_int16_t_s_u((safe_sub_func_uint8_t_u_u(((void*)0 != l_332[0]), 0x2AL)), p_1582->g_151)))) , l_360), 3)) > 0x066EL)))) , &p_1582->g_155[0])), p_88)), FAKE_DIVERGE(p_1582->global_1_offset, get_global_id(1), 10))) & FAKE_DIVERGE(p_1582->global_0_offset, get_global_id(0), 10)) ^ (-10L)) == p_1582->g_175[7][1][2]), l_366)), l_366))))) && p_89) && p_1582->g_118), l_366)) && p_88) == p_1582->g_244), 0x3BL)) | l_366), 0xB1L)));
    l_374--;
    return (*p_90);
}


/* ------------------------------------------ */
/* 
 * reads : p_1582->g_63 p_1582->g_113 p_1582->g_118 p_1582->g_131 p_1582->g_141 p_1582->g_122 p_1582->g_150 p_1582->g_152 p_1582->g_143 p_1582->g_155 p_1582->g_158 p_1582->g_175 p_1582->g_180 p_1582->g_210 p_1582->g_151 p_1582->g_244 p_1582->g_270 p_1582->g_271
 * writes: p_1582->g_131 p_1582->g_141 p_1582->g_143 p_1582->g_150 p_1582->g_151 p_1582->g_152 p_1582->g_154 p_1582->g_155 p_1582->g_158 p_1582->g_175 p_1582->g_180 p_1582->g_122 p_1582->g_244 p_1582->g_118 p_1582->g_271
 */
int32_t  func_91(uint32_t  p_92, int32_t * p_93, struct S0 * p_1582)
{ /* block id: 85 */
    uint8_t l_114[5] = {0xC0L,0xC0L,0xC0L,0xC0L,0xC0L};
    int16_t l_115 = (-1L);
    uint32_t *l_121[8][6] = {{(void*)0,&p_1582->g_122,&p_1582->g_122,&p_1582->g_122,(void*)0,(void*)0},{(void*)0,&p_1582->g_122,&p_1582->g_122,&p_1582->g_122,(void*)0,(void*)0},{(void*)0,&p_1582->g_122,&p_1582->g_122,&p_1582->g_122,(void*)0,(void*)0},{(void*)0,&p_1582->g_122,&p_1582->g_122,&p_1582->g_122,(void*)0,(void*)0},{(void*)0,&p_1582->g_122,&p_1582->g_122,&p_1582->g_122,(void*)0,(void*)0},{(void*)0,&p_1582->g_122,&p_1582->g_122,&p_1582->g_122,(void*)0,(void*)0},{(void*)0,&p_1582->g_122,&p_1582->g_122,&p_1582->g_122,(void*)0,(void*)0},{(void*)0,&p_1582->g_122,&p_1582->g_122,&p_1582->g_122,(void*)0,(void*)0}};
    uint64_t l_132 = 18446744073709551612UL;
    int32_t l_133[1][6][8] = {{{0x22EB29FAL,0L,0L,0x76CE6111L,0L,0L,0x22EB29FAL,0x24FECFE7L},{0x22EB29FAL,0L,0L,0x76CE6111L,0L,0L,0x22EB29FAL,0x24FECFE7L},{0x22EB29FAL,0L,0L,0x76CE6111L,0L,0L,0x22EB29FAL,0x24FECFE7L},{0x22EB29FAL,0L,0L,0x76CE6111L,0L,0L,0x22EB29FAL,0x24FECFE7L},{0x22EB29FAL,0L,0L,0x76CE6111L,0L,0L,0x22EB29FAL,0x24FECFE7L},{0x22EB29FAL,0L,0L,0x76CE6111L,0L,0L,0x22EB29FAL,0x24FECFE7L}}};
    int32_t l_134[5][4] = {{7L,7L,(-4L),0x4A7B6579L},{7L,7L,(-4L),0x4A7B6579L},{7L,7L,(-4L),0x4A7B6579L},{7L,7L,(-4L),0x4A7B6579L},{7L,7L,(-4L),0x4A7B6579L}};
    int64_t *l_135 = &p_1582->g_131;
    uint32_t l_224 = 4294967295UL;
    uint32_t l_278 = 0x6860F106L;
    int32_t *l_317 = (void*)0;
    int8_t *l_321 = &p_1582->g_244;
    int i, j, k;
    if ((p_1582->g_63[0] , (safe_rshift_func_int8_t_s_u(func_103(func_109(&p_1582->g_63[0], (((p_1582->g_113 || ((l_114[4] || ((*l_135) = ((l_115 | ((l_134[2][3] = (((((safe_add_func_uint32_t_u_u((l_133[0][4][0] = (p_1582->g_118 && (safe_add_func_uint32_t_u_u((p_92 |= GROUP_DIVERGE(2, 1)), (safe_add_func_uint8_t_u_u((safe_sub_func_int64_t_s_s((safe_add_func_int8_t_s_s((((safe_sub_func_int16_t_s_s((((l_114[1] == (((l_114[1] == (l_114[1] , l_114[0])) >= p_1582->g_113) , 0x4D50L)) > GROUP_DIVERGE(1, 1)) < p_1582->g_131), l_115)) & l_114[4]) > 0x72C0L), l_132)), l_115)), l_132)))))), p_1582->g_63[4])) , &l_133[0][2][0]) == (void*)0) <= 4294967292UL) >= p_1582->g_118)) || p_1582->g_131)) || p_1582->g_63[0]))) < p_1582->g_118)) > p_1582->g_63[0]) || p_1582->g_131), p_1582->g_63[0], p_1582), &p_1582->g_63[0], l_114[4], p_1582->g_113, &p_1582->g_63[0], p_1582), 4))))
    { /* block id: 108 */
        int16_t l_173 = 0x5369L;
        int32_t *l_174 = &p_1582->g_175[1][1][0];
        (*l_174) ^= (p_1582->g_155[0] | (safe_mod_func_uint16_t_u_u(((void*)0 == &p_93), (safe_add_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((5UL <= ((safe_mod_func_int16_t_s_s((safe_lshift_func_uint16_t_u_s((((~(safe_rshift_func_int8_t_s_u(((l_173 == l_134[4][3]) != ((p_1582->g_152[0] ^ p_1582->g_150) , (l_133[0][2][0] = p_1582->g_152[0]))), 6))) ^ p_1582->g_143) <= (-1L)), p_92)), 0x0EBBL)) >= 1L)), 0x7FL)), p_1582->g_155[0])))));
    }
    else
    { /* block id: 111 */
        int64_t *l_179[9];
        int64_t **l_178[1];
        uint64_t *l_188 = &l_132;
        int32_t l_197[5][5] = {{4L,4L,4L,4L,4L},{4L,4L,4L,4L,4L},{4L,4L,4L,4L,4L},{4L,4L,4L,4L,4L},{4L,4L,4L,4L,4L}};
        int32_t *l_198 = &p_1582->g_175[3][0][0];
        uint64_t **l_205 = &l_188;
        uint16_t *l_217 = &p_1582->g_155[0];
        int8_t *l_249 = (void*)0;
        int64_t *l_250[9][2] = {{&p_1582->g_131,&p_1582->g_131},{&p_1582->g_131,&p_1582->g_131},{&p_1582->g_131,&p_1582->g_131},{&p_1582->g_131,&p_1582->g_131},{&p_1582->g_131,&p_1582->g_131},{&p_1582->g_131,&p_1582->g_131},{&p_1582->g_131,&p_1582->g_131},{&p_1582->g_131,&p_1582->g_131},{&p_1582->g_131,&p_1582->g_131}};
        int i, j;
        for (i = 0; i < 9; i++)
            l_179[i] = &p_1582->g_131;
        for (i = 0; i < 1; i++)
            l_178[i] = &l_179[3];
        (*l_198) = (safe_mod_func_int32_t_s_s(((l_135 != (p_1582->g_180 = &p_1582->g_131)) > (((safe_mul_func_int8_t_s_s(p_1582->g_152[6], p_92)) , ((safe_add_func_uint64_t_u_u((safe_unary_minus_func_int32_t_s(p_1582->g_155[2])), ((safe_mod_func_uint64_t_u_u((--(*l_188)), (safe_mod_func_int8_t_s_s((0xC7829F08L >= (p_1582->g_175[7][1][1] & ((((safe_div_func_int8_t_s_s(l_133[0][4][0], (safe_mod_func_int16_t_s_s((p_1582->g_155[0] & p_1582->g_150), p_1582->g_113)))) >= p_92) == p_1582->g_175[1][1][0]) < p_1582->g_175[6][0][6]))), l_197[3][3])))) != p_1582->g_131))) >= 0x3798L)) || 0x0697B8A6L)), p_1582->g_118));
        (*l_198) = ((((((safe_div_func_int32_t_s_s(0x4B4A69FFL, ((((+(((((*l_217) ^= (((*p_1582->g_180) = (p_1582->g_118 && (safe_mod_func_int32_t_s_s((safe_div_func_uint16_t_u_u((p_1582->g_180 != ((*l_205) = l_179[2])), ((safe_sub_func_uint64_t_u_u((safe_mod_func_uint32_t_u_u(p_1582->g_210[1], 4294967286UL)), (safe_sub_func_uint32_t_u_u((((safe_div_func_int32_t_s_s((p_1582->g_63[1] , ((l_132 , (safe_rshift_func_int8_t_s_u((((((p_1582->g_118 > p_1582->g_210[1]) , 1UL) == p_92) | 0x4D78L) & p_1582->g_175[6][1][4]), 4))) , 5L)), (*p_93))) & FAKE_DIVERGE(p_1582->group_2_offset, get_group_id(2), 10)) , 2UL), p_1582->g_118)))) , 0xDF1BL))), GROUP_DIVERGE(0, 1))))) >= l_114[4])) == p_1582->g_152[0]) , FAKE_DIVERGE(p_1582->local_1_offset, get_local_id(1), 10)) < 0x23A1L)) == p_92) >= 0x5591L) ^ (-1L)))) , (void*)0) == (void*)0) >= (-10L)) , 0x69D3L) == p_1582->g_175[7][0][6]);
        for (p_1582->g_151 = 0; (p_1582->g_151 < 10); p_1582->g_151 = safe_add_func_uint64_t_u_u(p_1582->g_151, 1))
        { /* block id: 121 */
            uint32_t l_245 = 2UL;
            uint32_t l_311[8][5][4] = {{{0x4E592116L,4294967295UL,0x9757676AL,8UL},{0x4E592116L,4294967295UL,0x9757676AL,8UL},{0x4E592116L,4294967295UL,0x9757676AL,8UL},{0x4E592116L,4294967295UL,0x9757676AL,8UL},{0x4E592116L,4294967295UL,0x9757676AL,8UL}},{{0x4E592116L,4294967295UL,0x9757676AL,8UL},{0x4E592116L,4294967295UL,0x9757676AL,8UL},{0x4E592116L,4294967295UL,0x9757676AL,8UL},{0x4E592116L,4294967295UL,0x9757676AL,8UL},{0x4E592116L,4294967295UL,0x9757676AL,8UL}},{{0x4E592116L,4294967295UL,0x9757676AL,8UL},{0x4E592116L,4294967295UL,0x9757676AL,8UL},{0x4E592116L,4294967295UL,0x9757676AL,8UL},{0x4E592116L,4294967295UL,0x9757676AL,8UL},{0x4E592116L,4294967295UL,0x9757676AL,8UL}},{{0x4E592116L,4294967295UL,0x9757676AL,8UL},{0x4E592116L,4294967295UL,0x9757676AL,8UL},{0x4E592116L,4294967295UL,0x9757676AL,8UL},{0x4E592116L,4294967295UL,0x9757676AL,8UL},{0x4E592116L,4294967295UL,0x9757676AL,8UL}},{{0x4E592116L,4294967295UL,0x9757676AL,8UL},{0x4E592116L,4294967295UL,0x9757676AL,8UL},{0x4E592116L,4294967295UL,0x9757676AL,8UL},{0x4E592116L,4294967295UL,0x9757676AL,8UL},{0x4E592116L,4294967295UL,0x9757676AL,8UL}},{{0x4E592116L,4294967295UL,0x9757676AL,8UL},{0x4E592116L,4294967295UL,0x9757676AL,8UL},{0x4E592116L,4294967295UL,0x9757676AL,8UL},{0x4E592116L,4294967295UL,0x9757676AL,8UL},{0x4E592116L,4294967295UL,0x9757676AL,8UL}},{{0x4E592116L,4294967295UL,0x9757676AL,8UL},{0x4E592116L,4294967295UL,0x9757676AL,8UL},{0x4E592116L,4294967295UL,0x9757676AL,8UL},{0x4E592116L,4294967295UL,0x9757676AL,8UL},{0x4E592116L,4294967295UL,0x9757676AL,8UL}},{{0x4E592116L,4294967295UL,0x9757676AL,8UL},{0x4E592116L,4294967295UL,0x9757676AL,8UL},{0x4E592116L,4294967295UL,0x9757676AL,8UL},{0x4E592116L,4294967295UL,0x9757676AL,8UL},{0x4E592116L,4294967295UL,0x9757676AL,8UL}}};
            int32_t l_318 = 0L;
            int i, j, k;
            for (p_92 = (-25); (p_92 <= 58); ++p_92)
            { /* block id: 124 */
                uint32_t l_277 = 0x92F73DE9L;
                for (p_1582->g_158 = 25; (p_1582->g_158 != 5); p_1582->g_158--)
                { /* block id: 127 */
                    uint16_t l_267 = 0xD0BAL;
                    if (l_224)
                        break;
                }
                p_1582->g_175[1][1][4] = 0x699A6343L;
            }
            for (p_1582->g_122 = (-26); (p_1582->g_122 < 13); ++p_1582->g_122)
            { /* block id: 153 */
                uint32_t l_285 = 0xF8D497B3L;
                for (l_224 = 0; (l_224 == 27); ++l_224)
                { /* block id: 156 */
                    uint8_t l_313 = 0xE0L;
                    for (l_132 = 0; (l_132 <= 5); l_132 += 1)
                    { /* block id: 159 */
                        uint16_t *l_312 = &p_1582->g_118;
                        int32_t *l_314 = &l_197[3][3];
                        int i;
                        if (p_1582->g_152[(l_132 + 2)])
                            break;
                        (*p_1582->g_270) = func_109(((*p_1582->g_270) = (((safe_mod_func_int32_t_s_s((4294967287UL == (+((!0x1430AAFB5A1B66CBL) < 5UL))), ((*l_198) |= l_285))) >= (p_1582->g_154 = (((safe_mod_func_uint16_t_u_u((safe_div_func_uint8_t_u_u((safe_sub_func_int64_t_s_s((((safe_sub_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_u(((*l_312) = ((safe_unary_minus_func_uint32_t_u((safe_rshift_func_uint16_t_u_s(((*l_217) = 65533UL), ((p_1582->g_152[(l_132 + 2)] | (safe_mod_func_uint32_t_u_u(0x90D0EAF7L, (p_1582->g_150--)))) , (!(safe_mod_func_int32_t_s_s((safe_mul_func_int8_t_s_s((safe_lshift_func_uint8_t_u_u(p_1582->g_122, 0)), ((safe_mod_func_int8_t_s_s((p_1582->g_244 |= l_311[2][0][2]), (-1L))) != p_1582->g_141))), l_224)))))))) || p_92)), 9)), GROUP_DIVERGE(2, 1))) , (*p_1582->g_270)) == (*p_1582->g_270)), 2UL)), 0x64L)), 65535UL)) & l_313) , p_1582->g_152[(l_132 + 2)]))) , l_314)), p_92, l_114[2], p_1582);
                    }
                }
            }
            for (p_1582->g_141 = 0; (p_1582->g_141 >= 17); p_1582->g_141++)
            { /* block id: 174 */
                (*p_1582->g_270) = l_317;
                if (l_311[2][0][2])
                    break;
                (*l_198) ^= (l_318 = 0x67E77126L);
            }
        }
    }
    (*p_1582->g_270) = func_109(&l_133[0][3][3], (safe_div_func_int8_t_s_s(((*p_93) == p_92), ((-1L) && ((p_1582->g_155[1] > ((*l_321) = p_92)) ^ 0xAB93L)))), (safe_mod_func_uint8_t_u_u((safe_add_func_int64_t_s_s(0x10758B9927379416L, (p_1582->g_175[1][1][2] <= p_1582->g_122))), p_92)), p_1582);
    return (*p_93);
}


/* ------------------------------------------ */
/* 
 * reads : p_1582->g_141 p_1582->g_122 p_1582->g_63 p_1582->g_150 p_1582->g_152 p_1582->g_143 p_1582->g_113 p_1582->g_131 p_1582->g_155 p_1582->g_158
 * writes: p_1582->g_141 p_1582->g_143 p_1582->g_150 p_1582->g_151 p_1582->g_152 p_1582->g_154 p_1582->g_155 p_1582->g_158
 */
int8_t  func_103(int32_t * p_104, int32_t * p_105, uint64_t  p_106, uint32_t  p_107, int32_t * p_108, struct S0 * p_1582)
{ /* block id: 92 */
    int32_t *l_137[10][4][4] = {{{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]},{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]},{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]},{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]}},{{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]},{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]},{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]},{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]}},{{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]},{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]},{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]},{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]}},{{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]},{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]},{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]},{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]}},{{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]},{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]},{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]},{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]}},{{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]},{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]},{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]},{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]}},{{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]},{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]},{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]},{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]}},{{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]},{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]},{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]},{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]}},{{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]},{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]},{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]},{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]}},{{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]},{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]},{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]},{&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0],&p_1582->g_63[0]}}};
    int32_t **l_136 = &l_137[2][1][1];
    uint8_t *l_140 = &p_1582->g_141;
    uint8_t *l_142 = &p_1582->g_143;
    int8_t *l_153[9][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int i, j, k;
    (*l_136) = &p_1582->g_63[0];
    p_1582->g_155[2] &= (((((safe_mul_func_int8_t_s_s((((((*l_142) = ((*l_140) ^= p_106)) && (p_1582->g_154 = ((((((safe_mod_func_int64_t_s_s(((p_1582->g_152[0] &= ((safe_add_func_uint8_t_u_u(p_107, (0x0113L || p_1582->g_122))) >= ((p_1582->g_63[0] <= (safe_div_func_int8_t_s_s(0x59L, p_107))) == ((p_1582->g_151 = (p_1582->g_150 &= p_1582->g_63[4])) >= p_1582->g_122)))) | p_1582->g_143), 0x0367A8BF02E390C4L)) , p_1582->g_113) > (*p_104)) , 0UL) & p_1582->g_63[3]) && p_1582->g_63[3]))) <= p_1582->g_63[0]) >= GROUP_DIVERGE(0, 1)), p_107)) ^ p_1582->g_131) , p_1582->g_141) , 0xCC3E7F264C02D86DL) < p_1582->g_63[0]);
    for (p_107 = 0; (p_107 <= 52); p_107 = safe_add_func_uint8_t_u_u(p_107, 6))
    { /* block id: 103 */
        if ((*p_105))
            break;
    }
    p_1582->g_158++;
    return p_1582->g_155[2];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_109(int32_t * p_110, int32_t  p_111, int64_t  p_112, struct S0 * p_1582)
{ /* block id: 90 */
    return &p_1582->g_63[3];
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[91];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 91; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[91];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 91; i++)
            l_special_values[i] = 0;
    struct S0 c_1583;
    struct S0* p_1582 = &c_1583;
    struct S0 c_1584 = {
        0x4B98F8D6L, // p_1582->g_60
        0x24BDACABL, // p_1582->g_61
        {{(-3L),7L,0x5F89738BL,1L},{(-3L),7L,0x5F89738BL,1L},{(-3L),7L,0x5F89738BL,1L},{(-3L),7L,0x5F89738BL,1L},{(-3L),7L,0x5F89738BL,1L},{(-3L),7L,0x5F89738BL,1L},{(-3L),7L,0x5F89738BL,1L}}, // p_1582->g_62
        {0x442E2EE0L,0x442E2EE0L,0x442E2EE0L,0x442E2EE0L,0x442E2EE0L,0x442E2EE0L}, // p_1582->g_63
        0x2B86B6EFL, // p_1582->g_113
        0x7C3EL, // p_1582->g_118
        8UL, // p_1582->g_122
        (-8L), // p_1582->g_131
        0xC6L, // p_1582->g_141
        1UL, // p_1582->g_143
        1UL, // p_1582->g_150
        0UL, // p_1582->g_151
        {247UL,247UL,247UL,247UL,247UL,247UL,247UL,247UL}, // p_1582->g_152
        0L, // p_1582->g_154
        {0x7FAEL,0x7FAEL,0x7FAEL}, // p_1582->g_155
        1UL, // p_1582->g_158
        {{{0x17036850L,0x65BD8F16L,0x65BD8F16L,0x17036850L,(-1L),0x38158088L,6L},{0x17036850L,0x65BD8F16L,0x65BD8F16L,0x17036850L,(-1L),0x38158088L,6L}},{{0x17036850L,0x65BD8F16L,0x65BD8F16L,0x17036850L,(-1L),0x38158088L,6L},{0x17036850L,0x65BD8F16L,0x65BD8F16L,0x17036850L,(-1L),0x38158088L,6L}},{{0x17036850L,0x65BD8F16L,0x65BD8F16L,0x17036850L,(-1L),0x38158088L,6L},{0x17036850L,0x65BD8F16L,0x65BD8F16L,0x17036850L,(-1L),0x38158088L,6L}},{{0x17036850L,0x65BD8F16L,0x65BD8F16L,0x17036850L,(-1L),0x38158088L,6L},{0x17036850L,0x65BD8F16L,0x65BD8F16L,0x17036850L,(-1L),0x38158088L,6L}},{{0x17036850L,0x65BD8F16L,0x65BD8F16L,0x17036850L,(-1L),0x38158088L,6L},{0x17036850L,0x65BD8F16L,0x65BD8F16L,0x17036850L,(-1L),0x38158088L,6L}},{{0x17036850L,0x65BD8F16L,0x65BD8F16L,0x17036850L,(-1L),0x38158088L,6L},{0x17036850L,0x65BD8F16L,0x65BD8F16L,0x17036850L,(-1L),0x38158088L,6L}},{{0x17036850L,0x65BD8F16L,0x65BD8F16L,0x17036850L,(-1L),0x38158088L,6L},{0x17036850L,0x65BD8F16L,0x65BD8F16L,0x17036850L,(-1L),0x38158088L,6L}},{{0x17036850L,0x65BD8F16L,0x65BD8F16L,0x17036850L,(-1L),0x38158088L,6L},{0x17036850L,0x65BD8F16L,0x65BD8F16L,0x17036850L,(-1L),0x38158088L,6L}}}, // p_1582->g_175
        (void*)0, // p_1582->g_180
        {0x12L,0x12L,0x12L,0x12L,0x12L,0x12L,0x12L,0x12L,0x12L,0x12L}, // p_1582->g_210
        (-1L), // p_1582->g_244
        &p_1582->g_63[0], // p_1582->g_271
        &p_1582->g_271, // p_1582->g_270
        0xCA4FL, // p_1582->g_327
        &p_1582->g_158, // p_1582->g_353
        0x1F7B7DE3L, // p_1582->g_369
        4UL, // p_1582->g_396
        &p_1582->g_271, // p_1582->g_407
        &p_1582->g_407, // p_1582->g_406
        1L, // p_1582->g_428
        {(void*)0,(void*)0}, // p_1582->g_450
        {{3L,3L,3L,3L,3L,3L,3L,3L,3L,3L}}, // p_1582->g_452
        0x73510A282EDF9273L, // p_1582->g_515
        0x3AL, // p_1582->g_549
        0xC8E1L, // p_1582->g_655
        &p_1582->g_180, // p_1582->g_665
        {{&p_1582->g_665,&p_1582->g_665},{&p_1582->g_665,&p_1582->g_665},{&p_1582->g_665,&p_1582->g_665},{&p_1582->g_665,&p_1582->g_665},{&p_1582->g_665,&p_1582->g_665},{&p_1582->g_665,&p_1582->g_665},{&p_1582->g_665,&p_1582->g_665},{&p_1582->g_665,&p_1582->g_665},{&p_1582->g_665,&p_1582->g_665}}, // p_1582->g_664
        {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}}, // p_1582->g_667
        0x49155B732FF020BEL, // p_1582->g_683
        &p_1582->g_683, // p_1582->g_689
        0UL, // p_1582->g_711
        {1UL}, // p_1582->g_766
        0x7DF2L, // p_1582->g_799
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_1582->g_818
        {{{&p_1582->g_818[3][1],&p_1582->g_818[3][1],&p_1582->g_818[1][3],&p_1582->g_818[3][1],&p_1582->g_818[4][3],&p_1582->g_818[3][1]},{&p_1582->g_818[3][1],&p_1582->g_818[3][1],&p_1582->g_818[1][3],&p_1582->g_818[3][1],&p_1582->g_818[4][3],&p_1582->g_818[3][1]},{&p_1582->g_818[3][1],&p_1582->g_818[3][1],&p_1582->g_818[1][3],&p_1582->g_818[3][1],&p_1582->g_818[4][3],&p_1582->g_818[3][1]},{&p_1582->g_818[3][1],&p_1582->g_818[3][1],&p_1582->g_818[1][3],&p_1582->g_818[3][1],&p_1582->g_818[4][3],&p_1582->g_818[3][1]},{&p_1582->g_818[3][1],&p_1582->g_818[3][1],&p_1582->g_818[1][3],&p_1582->g_818[3][1],&p_1582->g_818[4][3],&p_1582->g_818[3][1]},{&p_1582->g_818[3][1],&p_1582->g_818[3][1],&p_1582->g_818[1][3],&p_1582->g_818[3][1],&p_1582->g_818[4][3],&p_1582->g_818[3][1]},{&p_1582->g_818[3][1],&p_1582->g_818[3][1],&p_1582->g_818[1][3],&p_1582->g_818[3][1],&p_1582->g_818[4][3],&p_1582->g_818[3][1]}},{{&p_1582->g_818[3][1],&p_1582->g_818[3][1],&p_1582->g_818[1][3],&p_1582->g_818[3][1],&p_1582->g_818[4][3],&p_1582->g_818[3][1]},{&p_1582->g_818[3][1],&p_1582->g_818[3][1],&p_1582->g_818[1][3],&p_1582->g_818[3][1],&p_1582->g_818[4][3],&p_1582->g_818[3][1]},{&p_1582->g_818[3][1],&p_1582->g_818[3][1],&p_1582->g_818[1][3],&p_1582->g_818[3][1],&p_1582->g_818[4][3],&p_1582->g_818[3][1]},{&p_1582->g_818[3][1],&p_1582->g_818[3][1],&p_1582->g_818[1][3],&p_1582->g_818[3][1],&p_1582->g_818[4][3],&p_1582->g_818[3][1]},{&p_1582->g_818[3][1],&p_1582->g_818[3][1],&p_1582->g_818[1][3],&p_1582->g_818[3][1],&p_1582->g_818[4][3],&p_1582->g_818[3][1]},{&p_1582->g_818[3][1],&p_1582->g_818[3][1],&p_1582->g_818[1][3],&p_1582->g_818[3][1],&p_1582->g_818[4][3],&p_1582->g_818[3][1]},{&p_1582->g_818[3][1],&p_1582->g_818[3][1],&p_1582->g_818[1][3],&p_1582->g_818[3][1],&p_1582->g_818[4][3],&p_1582->g_818[3][1]}},{{&p_1582->g_818[3][1],&p_1582->g_818[3][1],&p_1582->g_818[1][3],&p_1582->g_818[3][1],&p_1582->g_818[4][3],&p_1582->g_818[3][1]},{&p_1582->g_818[3][1],&p_1582->g_818[3][1],&p_1582->g_818[1][3],&p_1582->g_818[3][1],&p_1582->g_818[4][3],&p_1582->g_818[3][1]},{&p_1582->g_818[3][1],&p_1582->g_818[3][1],&p_1582->g_818[1][3],&p_1582->g_818[3][1],&p_1582->g_818[4][3],&p_1582->g_818[3][1]},{&p_1582->g_818[3][1],&p_1582->g_818[3][1],&p_1582->g_818[1][3],&p_1582->g_818[3][1],&p_1582->g_818[4][3],&p_1582->g_818[3][1]},{&p_1582->g_818[3][1],&p_1582->g_818[3][1],&p_1582->g_818[1][3],&p_1582->g_818[3][1],&p_1582->g_818[4][3],&p_1582->g_818[3][1]},{&p_1582->g_818[3][1],&p_1582->g_818[3][1],&p_1582->g_818[1][3],&p_1582->g_818[3][1],&p_1582->g_818[4][3],&p_1582->g_818[3][1]},{&p_1582->g_818[3][1],&p_1582->g_818[3][1],&p_1582->g_818[1][3],&p_1582->g_818[3][1],&p_1582->g_818[4][3],&p_1582->g_818[3][1]}}}, // p_1582->g_817
        &p_1582->g_817[1][0][3], // p_1582->g_816
        &p_1582->g_122, // p_1582->g_841
        &p_1582->g_841, // p_1582->g_840
        {0L,0L,0L,0L,0L,0L}, // p_1582->g_848
        5L, // p_1582->g_849
        {&p_1582->g_848[5],&p_1582->g_848[5],&p_1582->g_848[5],&p_1582->g_848[5]}, // p_1582->g_847
        &p_1582->g_847[0], // p_1582->g_846
        3L, // p_1582->g_1005
        {&p_1582->g_244,&p_1582->g_244,&p_1582->g_244,&p_1582->g_244}, // p_1582->g_1035
        &p_1582->g_1035[3], // p_1582->g_1034
        (void*)0, // p_1582->g_1165
        &p_1582->g_1165, // p_1582->g_1164
        4294967290UL, // p_1582->g_1178
        (void*)0, // p_1582->g_1208
        &p_1582->g_1208, // p_1582->g_1207
        {{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}}, // p_1582->g_1211
        {&p_1582->g_846,&p_1582->g_846,&p_1582->g_846,&p_1582->g_846,&p_1582->g_846,&p_1582->g_846,&p_1582->g_846,&p_1582->g_846,&p_1582->g_846}, // p_1582->g_1214
        &p_1582->g_1214[7], // p_1582->g_1213
        (void*)0, // p_1582->g_1274
        0xCFA03042L, // p_1582->g_1352
        0L, // p_1582->g_1359
        &p_1582->g_1034, // p_1582->g_1365
        18446744073709551611UL, // p_1582->g_1458
        &p_1582->g_141, // p_1582->g_1509
        &p_1582->g_1509, // p_1582->g_1508
        sequence_input[get_global_id(0)], // p_1582->global_0_offset
        sequence_input[get_global_id(1)], // p_1582->global_1_offset
        sequence_input[get_global_id(2)], // p_1582->global_2_offset
        sequence_input[get_local_id(0)], // p_1582->local_0_offset
        sequence_input[get_local_id(1)], // p_1582->local_1_offset
        sequence_input[get_local_id(2)], // p_1582->local_2_offset
        sequence_input[get_group_id(0)], // p_1582->group_0_offset
        sequence_input[get_group_id(1)], // p_1582->group_1_offset
        sequence_input[get_group_id(2)], // p_1582->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_1583 = c_1584;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1582);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1582->g_60, "p_1582->g_60", print_hash_value);
    transparent_crc(p_1582->g_61, "p_1582->g_61", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1582->g_62[i][j], "p_1582->g_62[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1582->g_63[i], "p_1582->g_63[i]", print_hash_value);

    }
    transparent_crc(p_1582->g_113, "p_1582->g_113", print_hash_value);
    transparent_crc(p_1582->g_118, "p_1582->g_118", print_hash_value);
    transparent_crc(p_1582->g_122, "p_1582->g_122", print_hash_value);
    transparent_crc(p_1582->g_131, "p_1582->g_131", print_hash_value);
    transparent_crc(p_1582->g_141, "p_1582->g_141", print_hash_value);
    transparent_crc(p_1582->g_143, "p_1582->g_143", print_hash_value);
    transparent_crc(p_1582->g_150, "p_1582->g_150", print_hash_value);
    transparent_crc(p_1582->g_151, "p_1582->g_151", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1582->g_152[i], "p_1582->g_152[i]", print_hash_value);

    }
    transparent_crc(p_1582->g_154, "p_1582->g_154", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1582->g_155[i], "p_1582->g_155[i]", print_hash_value);

    }
    transparent_crc(p_1582->g_158, "p_1582->g_158", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_1582->g_175[i][j][k], "p_1582->g_175[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1582->g_210[i], "p_1582->g_210[i]", print_hash_value);

    }
    transparent_crc(p_1582->g_244, "p_1582->g_244", print_hash_value);
    transparent_crc(p_1582->g_327, "p_1582->g_327", print_hash_value);
    transparent_crc(p_1582->g_369, "p_1582->g_369", print_hash_value);
    transparent_crc(p_1582->g_396, "p_1582->g_396", print_hash_value);
    transparent_crc(p_1582->g_428, "p_1582->g_428", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1582->g_452[i][j], "p_1582->g_452[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1582->g_515, "p_1582->g_515", print_hash_value);
    transparent_crc(p_1582->g_549, "p_1582->g_549", print_hash_value);
    transparent_crc(p_1582->g_655, "p_1582->g_655", print_hash_value);
    transparent_crc(p_1582->g_683, "p_1582->g_683", print_hash_value);
    transparent_crc(p_1582->g_711, "p_1582->g_711", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1582->g_766[i], "p_1582->g_766[i]", print_hash_value);

    }
    transparent_crc(p_1582->g_799, "p_1582->g_799", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1582->g_848[i], "p_1582->g_848[i]", print_hash_value);

    }
    transparent_crc(p_1582->g_849, "p_1582->g_849", print_hash_value);
    transparent_crc(p_1582->g_1005, "p_1582->g_1005", print_hash_value);
    transparent_crc(p_1582->g_1178, "p_1582->g_1178", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1582->g_1211[i][j], "p_1582->g_1211[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1582->g_1352, "p_1582->g_1352", print_hash_value);
    transparent_crc(p_1582->g_1359, "p_1582->g_1359", print_hash_value);
    transparent_crc(p_1582->g_1458, "p_1582->g_1458", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 91; i++)
            transparent_crc(p_1582->g_special_values[i + 91 * get_linear_group_id()], "p_1582->g_special_values[i + 91 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 91; i++)
            transparent_crc(p_1582->l_special_values[i], "p_1582->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
