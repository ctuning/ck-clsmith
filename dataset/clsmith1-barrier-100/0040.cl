// ---fake_divergence ---inter_thread_comm -g 75,17,1 -l 25,1,1
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

__constant uint32_t permutations[10][25] = {
{3,10,2,7,14,17,12,11,5,9,18,22,21,6,4,23,1,24,15,0,13,16,20,19,8}, // permutation 0
{9,17,23,4,19,3,10,16,1,11,5,14,18,15,22,21,7,24,8,0,13,6,12,2,20}, // permutation 1
{8,4,12,5,16,24,19,17,22,11,10,15,13,9,1,2,0,14,21,7,23,18,3,6,20}, // permutation 2
{5,15,18,21,10,9,13,11,22,12,8,17,14,19,2,23,4,20,3,16,6,7,1,24,0}, // permutation 3
{20,21,9,2,12,14,5,16,23,18,3,15,17,8,6,19,11,1,10,7,24,13,0,22,4}, // permutation 4
{5,4,6,8,11,21,3,14,9,1,7,15,16,19,12,20,0,23,2,24,13,18,17,10,22}, // permutation 5
{14,7,16,13,2,21,0,11,19,20,12,22,1,3,10,8,24,4,17,6,15,5,23,18,9}, // permutation 6
{3,22,16,14,1,23,8,24,5,20,9,11,18,7,17,10,15,4,0,6,19,21,2,13,12}, // permutation 7
{17,11,12,21,8,5,9,15,22,23,0,18,6,4,24,14,13,16,10,20,3,7,2,19,1}, // permutation 8
{2,17,15,6,11,14,0,21,20,13,18,5,23,9,12,4,19,10,8,24,22,1,3,16,7} // permutation 9
};

// Seed: 40

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint32_t  f0;
};

union U1 {
   volatile int8_t * volatile  f0;
   int64_t  f1;
   volatile int8_t  f2;
   uint64_t  f3;
};

struct S2 {
    int32_t g_2;
    int16_t g_5[7];
    volatile int32_t g_6[8];
    volatile int32_t g_7;
    volatile int32_t g_8;
    int32_t g_9;
    int8_t g_27;
    uint8_t g_54[4];
    uint8_t *g_65;
    int32_t g_67[4];
    union U1 g_92[1][8];
    union U1 *g_91;
    union U1 g_94[2];
    union U1 g_95;
    union U1 g_96;
    union U1 g_97;
    union U1 g_98;
    union U1 g_99;
    union U1 g_100;
    union U1 g_101;
    union U1 g_102;
    union U1 g_103[6];
    union U1 g_104;
    union U1 g_105;
    union U1 g_106;
    union U1 g_107[8];
    union U1 g_108;
    union U1 g_109;
    union U1 g_110;
    union U1 g_111;
    union U1 g_112[6][8];
    union U1 g_113;
    union U1 g_114;
    union U1 g_115;
    union U1 g_116;
    union U1 g_117;
    union U1 g_118;
    union U1 g_119;
    union U1 g_120;
    union U1 g_121;
    union U1 g_122;
    union U1 g_123;
    union U1 g_124;
    union U1 g_125[6];
    union U1 g_126;
    union U1 g_127;
    union U1 g_128;
    union U1 g_129;
    union U1 g_130[5];
    union U1 g_131;
    union U1 g_132;
    union U1 g_133;
    union U1 g_134;
    union U1 g_135;
    union U1 g_136;
    union U1 g_137;
    union U1 g_138;
    union U1 g_139;
    union U1 g_140;
    union U1 g_141;
    int64_t g_155;
    volatile int8_t g_180;
    volatile int8_t *g_179;
    volatile int8_t **g_178;
    int64_t g_271;
    uint32_t g_303;
    int16_t *g_337;
    int16_t **g_336;
    int8_t g_342;
    int32_t g_344;
    volatile int32_t g_395[4];
    volatile int32_t *g_394;
    volatile int32_t ** volatile g_393;
    volatile int32_t ** volatile *g_392;
    uint32_t g_416;
    int32_t *g_422;
    union U1 **g_467;
    union U1 ** volatile *g_466;
    int32_t **g_478;
    int32_t ***g_477;
    int32_t *g_551[5];
    int8_t *g_553;
    union U0 g_554;
    uint8_t g_586;
    volatile union U1 g_637;
    volatile uint32_t g_652[5][9];
    volatile uint32_t *g_651;
    volatile uint32_t **g_650;
    union U0 *g_655;
    union U0 ** volatile g_654;
    int16_t g_674;
    volatile uint64_t g_688;
    volatile uint64_t g_710;
    union U1 g_761;
    union U1 g_763[5];
    volatile uint32_t g_784;
    uint16_t g_822[1];
    uint32_t *g_833;
    uint32_t **g_832;
    union U1 g_919;
    uint32_t g_929[6][10][3];
    uint32_t g_944;
    uint32_t g_1004[8];
    uint16_t g_1006;
    volatile union U1 g_1049;
    volatile int64_t * volatile *g_1084;
    uint16_t g_1134[8][4][2];
    int64_t g_1143;
    uint8_t g_1262;
    int8_t g_1304;
    union U0 **g_1316;
    uint64_t g_1346[4];
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
int16_t  func_1(struct S2 * p_1418);
uint32_t  func_14(uint32_t  p_15, uint32_t  p_16, struct S2 * p_1418);
uint64_t  func_17(union U0  p_18, struct S2 * p_1418);
int8_t  func_21(uint32_t  p_22, int8_t * p_23, struct S2 * p_1418);
int8_t  func_30(union U0  p_31, int32_t  p_32, int16_t  p_33, struct S2 * p_1418);
union U0  func_34(int8_t * p_35, int32_t  p_36, uint32_t  p_37, int64_t  p_38, int8_t * p_39, struct S2 * p_1418);
int8_t * func_40(uint64_t  p_41, int64_t  p_42, struct S2 * p_1418);
uint16_t  func_45(uint32_t  p_46, uint8_t  p_47, int8_t * p_48, uint32_t  p_49, struct S2 * p_1418);
int8_t * func_55(uint32_t  p_56, int32_t  p_57, struct S2 * p_1418);
uint64_t  func_60(int32_t  p_61, int32_t * p_62, uint8_t * p_63, struct S2 * p_1418);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1418->g_comm_values p_1418->g_8 p_1418->g_65 p_1418->g_9 p_1418->g_91 p_1418->g_2 p_1418->g_54 p_1418->g_178 p_1418->g_67 p_1418->l_comm_values p_1418->g_27 p_1418->g_271 p_1418->g_5 p_1418->g_155 p_1418->g_342 p_1418->g_303 p_1418->g_344 p_1418->g_337 p_1418->g_392 p_1418->g_466 p_1418->g_477 p_1418->g_478 p_1418->g_551 p_1418->g_553 p_1418->g_554 p_1418->g_422 p_1418->g_393 p_1418->g_394 p_1418->g_6 p_1418->g_395 p_1418->g_179 p_1418->g_180 p_1418->g_1004 p_1418->g_674 p_1418->g_1049 p_1418->g_654 p_1418->g_655 p_1418->g_467 p_1418->g_652 p_1418->g_1084 p_1418->g_651 p_1418->g_929 p_1418->g_822 p_1418->g_688 p_1418->g_650 p_1418->g_1134 p_1418->g_554.f0
 * writes: p_1418->g_2 p_1418->g_9 p_1418->g_54 p_1418->g_67 p_1418->g_27 p_1418->g_155 p_1418->g_111.f3 p_1418->l_comm_values p_1418->g_5 p_1418->g_303 p_1418->g_98.f3 p_1418->g_91 p_1418->g_336 p_1418->g_344 p_1418->g_416 p_1418->g_422 p_1418->g_477 p_1418->g_6 p_1418->g_395 p_1418->g_822 p_1418->g_1006 p_1418->g_674 p_1418->g_126.f1 p_1418->g_105.f1 p_1418->g_1134 p_1418->g_1143 p_1418->g_394 p_1418->g_342
 */
int16_t  func_1(struct S2 * p_1418)
{ /* block id: 4 */
    int32_t l_1140 = 0x5ED1E8ACL;
    int32_t l_1141 = 0x3DC6018CL;
    int32_t l_1183 = 0x5429CCA3L;
    int32_t l_1185 = 0L;
    int32_t l_1192[7] = {(-4L),(-4L),(-4L),(-4L),(-4L),(-4L),(-4L)};
    int8_t *l_1208 = &p_1418->g_27;
    union U1 *l_1212[5] = {&p_1418->g_113,&p_1418->g_113,&p_1418->g_113,&p_1418->g_113,&p_1418->g_113};
    uint16_t *l_1217 = &p_1418->g_1006;
    uint32_t *l_1228 = (void*)0;
    int8_t l_1252 = 1L;
    int32_t l_1305 = 0x0597061EL;
    uint16_t l_1415 = 2UL;
    int i;
    for (p_1418->g_2 = (-14); (p_1418->g_2 == 21); p_1418->g_2 = safe_add_func_int64_t_s_s(p_1418->g_2, 8))
    { /* block id: 7 */
        uint32_t l_11 = 0x4A55F07CL;
        int32_t l_1139 = 3L;
        int32_t l_1153 = 0x6BDB611AL;
        int32_t l_1154 = 0x77C9662DL;
        int32_t l_1155 = 1L;
        int32_t l_1156[10];
        int64_t l_1184 = 0L;
        int32_t l_1199 = 0x783926D6L;
        int16_t *l_1206 = &p_1418->g_674;
        int64_t *l_1207 = &p_1418->g_271;
        union U0 l_1209 = {0x18061AA7L};
        int i;
        for (i = 0; i < 10; i++)
            l_1156[i] = 0x7C30045FL;
        for (p_1418->g_9 = 0; (p_1418->g_9 <= 6); p_1418->g_9 += 1)
        { /* block id: 10 */
            int32_t *l_10 = (void*)0;
            union U0 l_19 = {0x2DB80EBBL};
            uint16_t *l_1133 = &p_1418->g_1134[3][3][1];
            int64_t *l_1142 = &p_1418->g_1143;
            int32_t l_1150 = (-6L);
            int32_t l_1151 = 0x1A14E1DEL;
            int32_t l_1152 = 0x26BAC545L;
            int16_t l_1161[8][10][3] = {{{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)}},{{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)}},{{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)}},{{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)}},{{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)}},{{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)}},{{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)}},{{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)},{(-4L),0L,(-1L)}}};
            int32_t l_1191[6] = {(-10L),7L,(-10L),(-10L),7L,(-10L)};
            uint32_t l_1194 = 1UL;
            int i, j, k;
            l_11 = p_1418->g_comm_values[p_1418->tid];
            (*p_1418->g_394) = (safe_sub_func_uint32_t_u_u(func_14((l_11 && ((void*)0 != &p_1418->g_6[6])), (func_17(l_19, p_1418) & 0L), p_1418), (((*l_1142) = ((safe_div_func_uint64_t_u_u(((safe_rshift_func_uint16_t_u_u((--(*l_1133)), ((p_1418->g_554.f0 <= ((safe_mod_func_int8_t_s_s((l_1139 = l_11), l_11)) != l_1140)) != 3UL))) <= l_1141), 18446744073709551608UL)) && l_11)) <= p_1418->g_1004[6])));
            for (l_1140 = 0; (l_1140 <= 2); l_1140 += 1)
            { /* block id: 554 */
                int32_t *l_1144 = &l_1139;
                int32_t *l_1145 = &p_1418->g_67[2];
                int32_t *l_1146 = &l_1139;
                int32_t *l_1147 = &l_1139;
                int32_t *l_1148 = &l_1139;
                int32_t *l_1149[2][7] = {{&l_1141,&p_1418->g_67[1],&l_1141,&l_1141,&p_1418->g_67[1],&l_1141,&l_1141},{&l_1141,&p_1418->g_67[1],&l_1141,&l_1141,&p_1418->g_67[1],&l_1141,&l_1141}};
                uint32_t l_1157 = 7UL;
                int i, j;
                (**p_1418->g_392) = &p_1418->g_6[(p_1418->g_9 + 1)];
                ++l_1157;
            }
            for (l_1150 = 6; (l_1150 >= 0); l_1150 -= 1)
            { /* block id: 560 */
                int64_t l_1166 = 0x1822F22DE5435696L;
                int32_t l_1177 = 1L;
                int32_t l_1182 = 1L;
                int32_t l_1187 = 0x50A7532FL;
                int32_t l_1189 = 1L;
                int32_t l_1193 = 0x13BFCF59L;
                if ((***p_1418->g_392))
                    break;
            }
        }
        (***p_1418->g_392) = (safe_div_func_int32_t_s_s(((l_1209 = func_34(func_55(l_1156[9], p_1418->g_652[3][7], p_1418), ((safe_rshift_func_int16_t_s_s(((*l_1206) ^= (l_1153 , (*p_1418->g_337))), 2)) >= (&p_1418->g_271 != l_1207)), (l_1155 && l_1141), p_1418->g_155, l_1208, p_1418)) , l_1192[5]), l_1192[0]));
        for (p_1418->g_344 = 0; (p_1418->g_344 != 9); p_1418->g_344 = safe_add_func_uint32_t_u_u(p_1418->g_344, 7))
        { /* block id: 604 */
            (*p_1418->g_467) = l_1212[4];
        }
    }
    for (p_1418->g_342 = 0; (p_1418->g_342 != 13); p_1418->g_342 = safe_add_func_int64_t_s_s(p_1418->g_342, 1))
    { /* block id: 610 */
        int32_t l_1229 = (-9L);
        union U1 **l_1250 = &p_1418->g_91;
        int32_t l_1271 = 0x412E0D45L;
        uint32_t l_1272 = 0xFDD21CECL;
        union U0 l_1317 = {1UL};
        union U0 **l_1352 = &p_1418->g_655;
        int32_t **l_1381 = &p_1418->g_551[0];
        int32_t *l_1412 = &l_1192[4];
        int32_t *l_1413 = &l_1141;
        int32_t *l_1414[8][5][6] = {{{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]},{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]},{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]},{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]},{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]}},{{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]},{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]},{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]},{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]},{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]}},{{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]},{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]},{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]},{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]},{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]}},{{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]},{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]},{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]},{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]},{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]}},{{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]},{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]},{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]},{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]},{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]}},{{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]},{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]},{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]},{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]},{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]}},{{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]},{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]},{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]},{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]},{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]}},{{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]},{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]},{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]},{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]},{&p_1418->g_67[3],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[3],&l_1192[5],&p_1418->g_67[2]}}};
        int i, j, k;
        for (l_1140 = 0; (l_1140 <= 3); l_1140 += 1)
        { /* block id: 613 */
            uint8_t *l_1230 = (void*)0;
            uint8_t *l_1231[1];
            int32_t l_1232 = 0x3B4EEF9FL;
            uint32_t *l_1233 = &p_1418->g_303;
            uint32_t *l_1234[8] = {&p_1418->g_929[2][1][1],&p_1418->g_929[3][3][2],&p_1418->g_929[2][1][1],&p_1418->g_929[2][1][1],&p_1418->g_929[3][3][2],&p_1418->g_929[2][1][1],&p_1418->g_929[2][1][1],&p_1418->g_929[3][3][2]};
            union U0 l_1235 = {0x9DBD0E07L};
            int64_t *l_1251 = &p_1418->g_155;
            int32_t l_1269 = 0x0FFA8A24L;
            int32_t l_1270 = 6L;
            int32_t l_1411[2][1][5] = {{{(-1L),0x40C8A6F3L,(-1L),(-1L),0x40C8A6F3L}},{{(-1L),0x40C8A6F3L,(-1L),(-1L),0x40C8A6F3L}}};
            int i, j, k;
            for (i = 0; i < 1; i++)
                l_1231[i] = &p_1418->g_586;
            (1 + 1);
        }
        l_1415--;
    }
    return (*p_1418->g_337);
}


/* ------------------------------------------ */
/* 
 * reads : p_1418->g_477 p_1418->g_478 p_1418->g_422 p_1418->g_394 p_1418->g_650 p_1418->g_651 p_1418->g_652
 * writes: p_1418->g_422 p_1418->g_67 p_1418->g_395 p_1418->g_6
 */
uint32_t  func_14(uint32_t  p_15, uint32_t  p_16, struct S2 * p_1418)
{ /* block id: 543 */
    int32_t *l_1128 = &p_1418->g_67[1];
    (**p_1418->g_477) = l_1128;
    (*p_1418->g_394) = ((**p_1418->g_478) = p_16);
    return (**p_1418->g_650);
}


/* ------------------------------------------ */
/* 
 * reads : p_1418->g_8 p_1418->g_65 p_1418->g_comm_values p_1418->g_9 p_1418->g_91 p_1418->g_2 p_1418->g_54 p_1418->g_178 p_1418->g_67 p_1418->l_comm_values p_1418->g_27 p_1418->g_271 p_1418->g_5 p_1418->g_155 p_1418->g_342 p_1418->g_303 p_1418->g_344 p_1418->g_337 p_1418->g_392 p_1418->g_466 p_1418->g_477 p_1418->g_478 p_1418->g_551 p_1418->g_553 p_1418->g_554 p_1418->g_422 p_1418->g_393 p_1418->g_394 p_1418->g_395 p_1418->g_179 p_1418->g_180 p_1418->g_1004 p_1418->g_674 p_1418->g_1049 p_1418->g_654 p_1418->g_655 p_1418->g_467 p_1418->g_652 p_1418->g_1084 p_1418->g_651 p_1418->g_929 p_1418->g_822 p_1418->g_1006 p_1418->g_688 p_1418->g_6
 * writes: p_1418->g_54 p_1418->g_67 p_1418->g_27 p_1418->g_155 p_1418->g_111.f3 p_1418->l_comm_values p_1418->g_5 p_1418->g_303 p_1418->g_98.f3 p_1418->g_91 p_1418->g_336 p_1418->g_344 p_1418->g_416 p_1418->g_422 p_1418->g_477 p_1418->g_395 p_1418->g_822 p_1418->g_1006 p_1418->g_674 p_1418->g_126.f1 p_1418->g_105.f1 p_1418->g_6
 */
uint64_t  func_17(union U0  p_18, struct S2 * p_1418)
{ /* block id: 12 */
    int64_t l_20 = 0x163EC58F5537C57FL;
    int8_t *l_26 = &p_1418->g_27;
    uint8_t *l_52 = (void*)0;
    uint8_t *l_53 = &p_1418->g_54[0];
    int32_t *l_64 = &p_1418->g_9;
    int8_t *l_69 = &p_1418->g_27;
    int8_t **l_68 = &l_69;
    int32_t **l_70 = (void*)0;
    int32_t **l_71 = &l_64;
    int8_t *l_72 = &p_1418->g_27;
    int16_t l_73 = 0x6434L;
    int32_t l_1025 = 1L;
    uint32_t **l_1029 = (void*)0;
    l_20 |= p_18.f0;
    if (((p_18.f0 == (((func_21((safe_lshift_func_int8_t_s_s((((l_26 != ((*l_68) = ((safe_mul_func_uint8_t_u_u(p_1418->g_8, func_30(func_34(func_40((((safe_mod_func_uint16_t_u_u(func_45(p_18.f0, (safe_lshift_func_uint8_t_u_u((~((*l_53) = p_18.f0)), ((p_18.f0 ^ (&p_1418->g_2 != ((*l_71) = ((((*l_68) = func_55((safe_add_func_uint64_t_u_u(func_60(p_18.f0, l_64, p_1418->g_65, p_1418), p_18.f0)), p_18.f0, p_1418)) == (void*)0) , &p_1418->g_67[1])))) < 1UL))), l_72, l_73, p_1418), p_1418->g_2)) , 0x0EL) , 0x993F83081576C48EL), p_18.f0, p_1418), p_18.f0, p_18.f0, p_1418->g_9, p_1418->g_553, p_1418), p_18.f0, p_18.f0, p_1418))) , (void*)0))) ^ 8L) , 0x01L), p_18.f0)), &p_1418->g_342, p_1418) != 0UL) , 0UL) || 1UL)) < GROUP_DIVERGE(0, 1)))
    { /* block id: 489 */
        uint32_t l_1015 = 1UL;
        int64_t *l_1020 = &p_1418->g_126.f1;
        int64_t *l_1021 = (void*)0;
        int64_t *l_1022[7] = {&p_1418->g_271,&p_1418->g_271,&p_1418->g_271,&p_1418->g_271,&p_1418->g_271,&p_1418->g_271,&p_1418->g_271};
        uint64_t *l_1023[7];
        int32_t l_1024 = 0x50C90C1BL;
        int64_t *l_1028 = &l_20;
        int i;
        for (i = 0; i < 7; i++)
            l_1023[i] = &p_1418->g_138.f3;
        (***p_1418->g_392) = (((*l_1028) = ((*l_64) = (!(((l_1015 , (safe_div_func_uint16_t_u_u(((safe_lshift_func_int16_t_s_u((!(+(((p_1418->g_105.f1 = ((*l_1020) = ((**l_71) <= p_18.f0))) , ((p_18.f0 >= p_18.f0) , p_1418->g_67[1])) < (!(l_1015 || (l_1025 ^= (l_1024 &= l_1015))))))), (safe_sub_func_int8_t_s_s(l_1015, p_18.f0)))) , 0x88D8L), l_1015))) <= 0L) , p_1418->g_comm_values[p_1418->tid])))) ^ l_1015);
    }
    else
    { /* block id: 497 */
        uint32_t *l_1031 = &p_1418->g_929[4][3][2];
        uint32_t **l_1030 = &l_1031;
        int32_t l_1054 = 1L;
        uint32_t l_1055[8] = {0x0599BE62L,0x0599BE62L,0x0599BE62L,0x0599BE62L,0x0599BE62L,0x0599BE62L,0x0599BE62L,0x0599BE62L};
        int32_t l_1091 = 0x14A46072L;
        int32_t l_1097 = 0x4D72B50DL;
        int8_t *l_1110 = &p_1418->g_342;
        int64_t l_1120 = (-7L);
        int i;
        if ((l_1029 == l_1030))
        { /* block id: 498 */
            int32_t l_1038 = (-4L);
            union U1 *l_1052 = &p_1418->g_136;
            union U1 *l_1053 = &p_1418->g_109;
            uint16_t l_1070 = 0xC645L;
            int32_t l_1090 = 1L;
            (***p_1418->g_392) = ((safe_div_func_int8_t_s_s((safe_add_func_uint8_t_u_u((safe_add_func_int64_t_s_s(l_1038, (safe_sub_func_int64_t_s_s(p_18.f0, (safe_add_func_int32_t_s_s(((safe_mod_func_uint16_t_u_u((safe_sub_func_uint16_t_u_u((255UL != (safe_sub_func_uint16_t_u_u((p_1418->g_1049 , (safe_sub_func_uint8_t_u_u(((((void*)0 != (*p_1418->g_654)) , (((*p_1418->g_467) = l_1052) == (l_1053 = l_1052))) != (*p_1418->g_337)), 252UL))), p_18.f0))), l_1054)), FAKE_DIVERGE(p_1418->group_0_offset, get_group_id(0), 10))) <= p_1418->g_67[3]), p_18.f0)))))), 2L)), p_18.f0)) >= l_1055[4]);
            if ((safe_sub_func_uint16_t_u_u(l_1055[4], ((safe_div_func_uint16_t_u_u(p_18.f0, 1L)) & (safe_mod_func_uint8_t_u_u(((*l_53) = ((safe_add_func_int64_t_s_s((safe_sub_func_uint8_t_u_u(p_18.f0, 0x90L)), p_18.f0)) , (((~(+p_1418->g_652[4][4])) , ((safe_div_func_int32_t_s_s(((0x1BL == ((*l_72) = 0x4EL)) | p_18.f0), GROUP_DIVERGE(0, 1))) , (*p_1418->g_337))) >= l_1038))), p_18.f0))))))
            { /* block id: 504 */
                int64_t **l_1083 = (void*)0;
                int32_t l_1089 = 3L;
                (***p_1418->g_392) = (((safe_rshift_func_uint16_t_u_u((((((+((p_18.f0 , (l_1070 <= ((safe_sub_func_int32_t_s_s((safe_mod_func_int64_t_s_s((l_1090 ^= (safe_mul_func_uint16_t_u_u((safe_lshift_func_int16_t_s_s(((safe_add_func_uint64_t_u_u(((safe_lshift_func_uint8_t_u_u(((l_1038 <= ((l_1083 == p_1418->g_1084) | ((p_18.f0 <= (0x73L >= (*l_64))) | (safe_div_func_int32_t_s_s(((safe_sub_func_int32_t_s_s((**p_1418->g_478), 4L)) ^ p_18.f0), (*p_1418->g_651)))))) | p_18.f0), (**l_71))) || p_1418->g_303), l_1055[0])) == l_1089), 14)), p_1418->g_929[5][4][2]))), p_1418->g_344)), p_18.f0)) && 8UL))) && 0x058C90FB9707D655L)) | 0xA7D6L) > 0x3AL) ^ p_18.f0) , p_1418->g_180), FAKE_DIVERGE(p_1418->local_2_offset, get_local_id(2), 10))) , (*p_1418->g_655)) , 0x570B51BEL);
                if ((***p_1418->g_477))
                { /* block id: 507 */
                    return l_1091;
                }
                else
                { /* block id: 509 */
                    uint8_t l_1101[5];
                    int i;
                    for (i = 0; i < 5; i++)
                        l_1101[i] = 7UL;
                    (***p_1418->g_392) = p_18.f0;
                    for (p_18.f0 = (-24); (p_18.f0 == 7); p_18.f0 = safe_add_func_uint64_t_u_u(p_18.f0, 7))
                    { /* block id: 513 */
                        int32_t *l_1096 = &p_1418->g_67[0];
                        int32_t *l_1098 = &l_1090;
                        int32_t *l_1099 = &p_1418->g_67[1];
                        int32_t *l_1100[10] = {&l_1090,&l_1054,&l_1090,&l_1090,&l_1054,&l_1090,&l_1090,&l_1054,&l_1090,&l_1090};
                        int64_t *l_1104 = &l_20;
                        int i, j;
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        p_1418->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 25)), permutations[(safe_mod_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_u(p_1418->g_395[0], 6)), 10))][(safe_mod_func_uint32_t_u_u(p_1418->tid, 25))]));
                        ++l_1101[0];
                        (*l_1099) = (((*l_1104) = 1L) < 0xC4FA62834F5CCEF7L);
                    }
                    (**p_1418->g_478) |= (safe_unary_minus_func_uint64_t_u(p_1418->g_822[0]));
                    (*p_1418->g_478) = &l_1089;
                }
                (*l_71) = &l_1089;
                for (p_1418->g_1006 = 3; (p_1418->g_1006 < 56); p_1418->g_1006 = safe_add_func_int32_t_s_s(p_1418->g_1006, 1))
                { /* block id: 527 */
                    return p_1418->g_comm_values[p_1418->tid];
                }
            }
            else
            { /* block id: 530 */
                return l_1090;
            }
        }
        else
        { /* block id: 533 */
            uint32_t ***l_1111 = &p_1418->g_832;
            uint64_t *l_1121 = &p_1418->g_131.f3;
            uint64_t *l_1122 = (void*)0;
            uint64_t *l_1123 = &p_1418->g_132.f3;
            uint64_t *l_1124 = &p_1418->g_763[1].f3;
            uint64_t *l_1125 = (void*)0;
            uint64_t *l_1126 = &p_1418->g_92[0][4].f3;
            int32_t l_1127 = 0x5FF217B7L;
            l_1097 ^= ((safe_rshift_func_int8_t_s_u(((*l_26) = (((void*)0 == l_1110) ^ ((void*)0 == l_1111))), 5)) , ((*p_1418->g_337) , (l_1127 = ((safe_sub_func_uint8_t_u_u(0x85L, (safe_mod_func_uint32_t_u_u((((*l_64) |= (safe_add_func_int8_t_s_s((((*l_1030) = (*l_1030)) == l_64), (safe_lshift_func_uint16_t_u_u(((((~((void*)0 != l_1110)) & l_1120) < 2UL) >= (***p_1418->g_392)), 2))))) , 1UL), 1UL)))) && p_18.f0))));
        }
        return l_1055[4];
    }
    return p_1418->g_688;
}


/* ------------------------------------------ */
/* 
 * reads : p_1418->g_478 p_1418->g_422 p_1418->g_67 p_1418->g_392 p_1418->g_393 p_1418->g_394 p_1418->g_395 p_1418->g_179 p_1418->g_180 p_1418->g_1004 p_1418->g_303 p_1418->g_337 p_1418->g_5 p_1418->g_155 p_1418->g_674 p_1418->g_342 p_1418->g_6
 * writes: p_1418->g_395 p_1418->g_822 p_1418->g_1006 p_1418->g_303 p_1418->g_674 p_1418->g_67 p_1418->g_6
 */
int8_t  func_21(uint32_t  p_22, int8_t * p_23, struct S2 * p_1418)
{ /* block id: 240 */
    int32_t l_558 = 0L;
    int16_t **l_568 = &p_1418->g_337;
    int8_t **l_574 = &p_1418->g_553;
    int64_t l_588 = (-1L);
    uint32_t *l_606 = (void*)0;
    uint32_t *l_608[2][5] = {{&p_1418->g_554.f0,&p_1418->g_554.f0,&p_1418->g_554.f0,&p_1418->g_554.f0,&p_1418->g_554.f0},{&p_1418->g_554.f0,&p_1418->g_554.f0,&p_1418->g_554.f0,&p_1418->g_554.f0,&p_1418->g_554.f0}};
    int64_t l_610 = 0x2A76A489089E91BAL;
    int32_t l_615 = 0x27FC01F1L;
    int32_t l_619 = 1L;
    int32_t l_622 = 0x49A835BFL;
    int32_t l_624[8] = {0x74585F95L,0x47C77527L,0x74585F95L,0x74585F95L,0x47C77527L,0x74585F95L,0x74585F95L,0x47C77527L};
    union U0 l_642 = {0UL};
    int32_t **l_669 = (void*)0;
    volatile int8_t **l_699 = &p_1418->g_179;
    int32_t *l_702[3];
    uint8_t **l_722 = &p_1418->g_65;
    uint32_t **l_836 = &p_1418->g_833;
    uint32_t l_841 = 0xB9CE15AEL;
    int32_t l_952 = 1L;
    int32_t l_987 = 0x10425207L;
    uint8_t l_989 = 247UL;
    uint16_t *l_1005[10] = {&p_1418->g_822[0],&p_1418->g_822[0],&p_1418->g_822[0],&p_1418->g_822[0],&p_1418->g_822[0],&p_1418->g_822[0],&p_1418->g_822[0],&p_1418->g_822[0],&p_1418->g_822[0],&p_1418->g_822[0]};
    uint32_t *l_1007 = &p_1418->g_303;
    int16_t *l_1014[1][4][9] = {{{&p_1418->g_5[5],&p_1418->g_5[1],(void*)0,&p_1418->g_5[1],&p_1418->g_5[5],&p_1418->g_5[5],&p_1418->g_5[1],(void*)0,&p_1418->g_5[1]},{&p_1418->g_5[5],&p_1418->g_5[1],(void*)0,&p_1418->g_5[1],&p_1418->g_5[5],&p_1418->g_5[5],&p_1418->g_5[1],(void*)0,&p_1418->g_5[1]},{&p_1418->g_5[5],&p_1418->g_5[1],(void*)0,&p_1418->g_5[1],&p_1418->g_5[5],&p_1418->g_5[5],&p_1418->g_5[1],(void*)0,&p_1418->g_5[1]},{&p_1418->g_5[5],&p_1418->g_5[1],(void*)0,&p_1418->g_5[1],&p_1418->g_5[5],&p_1418->g_5[5],&p_1418->g_5[1],(void*)0,&p_1418->g_5[1]}}};
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_702[i] = &p_1418->g_2;
    (***p_1418->g_392) = (safe_sub_func_uint32_t_u_u(((p_22 , l_558) > (safe_mod_func_uint32_t_u_u((safe_unary_minus_func_uint32_t_u((&p_1418->g_467 != &p_1418->g_467))), GROUP_DIVERGE(2, 1)))), (**p_1418->g_478)));
    for (p_22 = 0; (p_22 == 14); p_22 = safe_add_func_uint8_t_u_u(p_22, 6))
    { /* block id: 244 */
        int16_t **l_569 = &p_1418->g_337;
        int8_t ***l_575 = &l_574;
        uint32_t *l_578 = &p_1418->g_303;
        int32_t l_585[9][8][3] = {{{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L}},{{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L}},{{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L}},{{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L}},{{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L}},{{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L}},{{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L}},{{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L}},{{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L},{0x12CA690FL,9L,0L}}};
        int8_t *l_587 = &p_1418->g_27;
        int16_t l_644[2];
        union U0 *l_657 = &l_642;
        int32_t l_735 = 8L;
        int32_t l_781 = (-1L);
        uint64_t l_904 = 0x6175BC981DD1B6A3L;
        union U1 *l_918[5][1];
        uint32_t *l_956[1][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        int32_t *l_992[9][6] = {{&l_585[2][1][1],&l_781,&p_1418->g_9,&l_558,&p_1418->g_9,(void*)0},{&l_585[2][1][1],&l_781,&p_1418->g_9,&l_558,&p_1418->g_9,(void*)0},{&l_585[2][1][1],&l_781,&p_1418->g_9,&l_558,&p_1418->g_9,(void*)0},{&l_585[2][1][1],&l_781,&p_1418->g_9,&l_558,&p_1418->g_9,(void*)0},{&l_585[2][1][1],&l_781,&p_1418->g_9,&l_558,&p_1418->g_9,(void*)0},{&l_585[2][1][1],&l_781,&p_1418->g_9,&l_558,&p_1418->g_9,(void*)0},{&l_585[2][1][1],&l_781,&p_1418->g_9,&l_558,&p_1418->g_9,(void*)0},{&l_585[2][1][1],&l_781,&p_1418->g_9,&l_558,&p_1418->g_9,(void*)0},{&l_585[2][1][1],&l_781,&p_1418->g_9,&l_558,&p_1418->g_9,(void*)0}};
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_644[i] = (-1L);
        for (i = 0; i < 5; i++)
        {
            for (j = 0; j < 1; j++)
                l_918[i][j] = &p_1418->g_919;
        }
        if ((**p_1418->g_393))
            break;
    }
    (***p_1418->g_392) = ((*p_1418->g_422) ^= (safe_mul_func_int16_t_s_s(1L, (p_1418->g_674 ^= ((safe_lshift_func_int16_t_s_s((p_22 | ((((safe_unary_minus_func_uint16_t_u((safe_rshift_func_uint16_t_u_u(((safe_lshift_func_int16_t_s_s((((*p_1418->g_179) , (safe_rshift_func_int16_t_s_u(p_1418->g_1004[6], (p_1418->g_1006 = (p_1418->g_822[0] = GROUP_DIVERGE(1, 1)))))) & (--(*l_1007))), (*p_1418->g_337))) | ((*p_1418->g_337) , GROUP_DIVERGE(2, 1))), 10)))) , (safe_lshift_func_uint16_t_u_u((safe_mod_func_int64_t_s_s(((p_22 | p_1418->g_155) && p_22), 0xC2F8AFA3A7D66EACL)), 11))) > FAKE_DIVERGE(p_1418->global_0_offset, get_global_id(0), 10)) <= 0UL)), p_22)) , p_22)))));
    return (*p_23);
}


/* ------------------------------------------ */
/* 
 * reads : p_1418->g_478 p_1418->g_67
 * writes: p_1418->g_422
 */
int8_t  func_30(union U0  p_31, int32_t  p_32, int16_t  p_33, struct S2 * p_1418)
{ /* block id: 236 */
    int32_t *l_555 = &p_1418->g_67[2];
    (*p_1418->g_478) = l_555;
    return (*l_555);
}


/* ------------------------------------------ */
/* 
 * reads : p_1418->g_554
 * writes:
 */
union U0  func_34(int8_t * p_35, int32_t  p_36, uint32_t  p_37, int64_t  p_38, int8_t * p_39, struct S2 * p_1418)
{ /* block id: 234 */
    return p_1418->g_554;
}


/* ------------------------------------------ */
/* 
 * reads : p_1418->g_478 p_1418->g_551 p_1418->g_477
 * writes: p_1418->g_422
 */
int8_t * func_40(uint64_t  p_41, int64_t  p_42, struct S2 * p_1418)
{ /* block id: 225 */
    int32_t *l_549 = &p_1418->g_67[1];
    int8_t *l_552 = (void*)0;
    (*p_1418->g_478) = l_549;
    for (p_42 = 0; (p_42 <= 3); p_42 += 1)
    { /* block id: 229 */
        int8_t *l_550 = &p_1418->g_342;
        return l_550;
    }
    (**p_1418->g_477) = p_1418->g_551[1];
    return l_552;
}


/* ------------------------------------------ */
/* 
 * reads : p_1418->g_91 p_1418->g_2 p_1418->g_54 p_1418->g_178 p_1418->g_comm_values p_1418->g_9 p_1418->g_67 p_1418->l_comm_values p_1418->g_27 p_1418->g_271 p_1418->g_5 p_1418->g_155 p_1418->g_342 p_1418->g_303 p_1418->g_344 p_1418->g_337 p_1418->g_392 p_1418->g_466 p_1418->g_477 p_1418->g_478
 * writes: p_1418->g_27 p_1418->g_67 p_1418->g_155 p_1418->g_111.f3 p_1418->l_comm_values p_1418->g_54 p_1418->g_5 p_1418->g_303 p_1418->g_98.f3 p_1418->g_91 p_1418->g_336 p_1418->g_344 p_1418->g_416 p_1418->g_422 p_1418->g_477
 */
uint16_t  func_45(uint32_t  p_46, uint8_t  p_47, int8_t * p_48, uint32_t  p_49, struct S2 * p_1418)
{ /* block id: 22 */
    uint8_t l_86 = 0x8AL;
    int32_t l_144 = (-3L);
    int32_t l_146[4][3] = {{6L,0x173B00C6L,6L},{6L,0x173B00C6L,6L},{6L,0x173B00C6L,6L},{6L,0x173B00C6L,6L}};
    int8_t l_152 = 0x38L;
    uint8_t l_200 = 0xD8L;
    int32_t l_225[3][7] = {{0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L}};
    int64_t l_237 = 0x50FCE14DB3FF0B44L;
    uint32_t l_281 = 0x95FA5FF6L;
    uint16_t l_296[9][6] = {{0x4204L,0x4204L,0xD2E8L,1UL,65532UL,0x3B80L},{0x4204L,0x4204L,0xD2E8L,1UL,65532UL,0x3B80L},{0x4204L,0x4204L,0xD2E8L,1UL,65532UL,0x3B80L},{0x4204L,0x4204L,0xD2E8L,1UL,65532UL,0x3B80L},{0x4204L,0x4204L,0xD2E8L,1UL,65532UL,0x3B80L},{0x4204L,0x4204L,0xD2E8L,1UL,65532UL,0x3B80L},{0x4204L,0x4204L,0xD2E8L,1UL,65532UL,0x3B80L},{0x4204L,0x4204L,0xD2E8L,1UL,65532UL,0x3B80L},{0x4204L,0x4204L,0xD2E8L,1UL,65532UL,0x3B80L}};
    int16_t *l_333 = &p_1418->g_5[6];
    union U1 **l_465 = &p_1418->g_91;
    int i, j;
    for (p_47 = (-24); (p_47 == 56); p_47++)
    { /* block id: 25 */
        int8_t l_145 = (-1L);
        int32_t l_150 = (-7L);
        int32_t l_151[4];
        int32_t l_154 = 0x75A7A75AL;
        uint64_t l_158 = 0x6254A21752400A85L;
        union U0 l_161 = {0x5EB2E64DL};
        int8_t *l_177 = &l_145;
        int8_t **l_176 = &l_177;
        uint16_t l_243[4][9][7] = {{{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL},{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL},{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL},{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL},{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL},{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL},{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL},{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL},{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL}},{{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL},{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL},{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL},{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL},{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL},{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL},{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL},{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL},{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL}},{{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL},{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL},{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL},{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL},{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL},{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL},{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL},{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL},{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL}},{{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL},{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL},{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL},{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL},{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL},{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL},{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL},{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL},{2UL,65532UL,0x726DL,0xBBDFL,7UL,0xF07EL,0xF07EL}}};
        int32_t *l_247[9][3] = {{(void*)0,(void*)0,&l_150},{(void*)0,(void*)0,&l_150},{(void*)0,(void*)0,&l_150},{(void*)0,(void*)0,&l_150},{(void*)0,(void*)0,&l_150},{(void*)0,(void*)0,&l_150},{(void*)0,(void*)0,&l_150},{(void*)0,(void*)0,&l_150},{(void*)0,(void*)0,&l_150}};
        int64_t *l_270[3][10] = {{&p_1418->g_271,&p_1418->g_271,&p_1418->g_271,&p_1418->g_271,&p_1418->g_271,&p_1418->g_271,&p_1418->g_271,&p_1418->g_271,&p_1418->g_271,&p_1418->g_271},{&p_1418->g_271,&p_1418->g_271,&p_1418->g_271,&p_1418->g_271,&p_1418->g_271,&p_1418->g_271,&p_1418->g_271,&p_1418->g_271,&p_1418->g_271,&p_1418->g_271},{&p_1418->g_271,&p_1418->g_271,&p_1418->g_271,&p_1418->g_271,&p_1418->g_271,&p_1418->g_271,&p_1418->g_271,&p_1418->g_271,&p_1418->g_271,&p_1418->g_271}};
        int16_t *l_276 = (void*)0;
        int16_t *l_277[6];
        int32_t l_278 = 0L;
        uint8_t *l_282 = &p_1418->g_54[0];
        int32_t l_283 = 6L;
        uint32_t *l_284 = &l_161.f0;
        int32_t l_318 = 5L;
        int32_t **l_354[4] = {&l_247[8][2],&l_247[8][2],&l_247[8][2],&l_247[8][2]};
        uint8_t l_402 = 0x27L;
        union U0 l_403 = {0x2DEE5409L};
        int16_t l_417 = 0x48E4L;
        int64_t l_433 = 0L;
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_151[i] = 0L;
        for (i = 0; i < 6; i++)
            l_277[i] = (void*)0;
        for (p_1418->g_27 = 0; (p_1418->g_27 >= (-5)); p_1418->g_27 = safe_sub_func_int64_t_s_s(p_1418->g_27, 9))
        { /* block id: 28 */
            int32_t *l_80 = &p_1418->g_67[1];
            int32_t l_85 = (-1L);
            int32_t l_147 = (-10L);
            int32_t l_148 = (-5L);
            int32_t l_149[7];
            int64_t l_153 = 0x00F4AA1FF75AEE60L;
            int32_t l_156 = (-9L);
            int32_t l_157 = 0x5250D909L;
            int64_t *l_175 = &p_1418->g_119.f1;
            int16_t *l_218[5][2] = {{&p_1418->g_5[3],&p_1418->g_5[5]},{&p_1418->g_5[3],&p_1418->g_5[5]},{&p_1418->g_5[3],&p_1418->g_5[5]},{&p_1418->g_5[3],&p_1418->g_5[5]},{&p_1418->g_5[3],&p_1418->g_5[5]}};
            int8_t l_238 = 0x4EL;
            int32_t **l_246[7][4][3] = {{{&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80}},{{&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80}},{{&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80}},{{&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80}},{{&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80}},{{&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80}},{{&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80}}};
            int i, j, k;
            for (i = 0; i < 7; i++)
                l_149[i] = (-10L);
            for (p_46 = 0; (p_46 <= 15); p_46 = safe_add_func_uint8_t_u_u(p_46, 9))
            { /* block id: 31 */
                l_80 = l_80;
            }
            for (p_46 = 0; (p_46 <= 10); p_46++)
            { /* block id: 36 */
                int32_t *l_142 = &p_1418->g_67[1];
                int32_t *l_143[4] = {&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[1],&p_1418->g_67[1]};
                int i;
                for (p_49 = 21; (p_49 >= 20); p_49 = safe_sub_func_int32_t_s_s(p_49, 1))
                { /* block id: 39 */
                    --l_86;
                }
                for (l_85 = 0; (l_85 <= (-8)); l_85 = safe_sub_func_int64_t_s_s(l_85, 1))
                { /* block id: 44 */
                    union U1 *l_93[5][10][5] = {{{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135}},{{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135}},{{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135}},{{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135}},{{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135},{&p_1418->g_105,&p_1418->g_95,(void*)0,(void*)0,&p_1418->g_135}}};
                    int i, j, k;
                    l_93[1][9][2] = p_1418->g_91;
                    if (p_1418->g_2)
                        continue;
                }
                l_158++;
            }
            if ((l_161 , ((((safe_lshift_func_int8_t_s_u((safe_unary_minus_func_uint64_t_u((((safe_add_func_uint64_t_u_u((0x6923BBB90FA72BBAL & ((safe_div_func_uint64_t_u_u(18446744073709551608UL, (((safe_add_func_int32_t_s_s((((0x36F8L | p_1418->g_54[3]) || ((((l_148 &= (safe_lshift_func_uint8_t_u_u((safe_div_func_int16_t_s_s(((((*l_80) = (+((l_145 | ((-1L) < l_151[1])) <= p_47))) || 0L) && p_49), 0x335AL)), FAKE_DIVERGE(p_1418->group_2_offset, get_group_id(2), 10)))) , l_176) == p_1418->g_178) , p_49)) > p_1418->g_comm_values[p_1418->tid]), l_146[3][1])) < p_1418->g_9) , FAKE_DIVERGE(p_1418->local_0_offset, get_local_id(0), 10)))) , (*l_80))), p_1418->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1418->tid, 25))])) && p_1418->g_27) >= l_144))), l_151[0])) != p_49) < p_49) <= l_150)))
            { /* block id: 52 */
                for (p_46 = 0; p_46 < 4; p_46 += 1)
                {
                    p_1418->g_67[p_46] = 0L;
                }
            }
            else
            { /* block id: 54 */
                uint32_t l_223 = 4294967291UL;
                int32_t l_232 = 0x0C1F7B2AL;
                int32_t l_233 = 0x09A84692L;
                int32_t l_234 = 0L;
                int32_t l_235 = 0x7047D995L;
                int32_t l_236[6][5] = {{1L,(-1L),(-1L),1L,1L},{1L,(-1L),(-1L),1L,1L},{1L,(-1L),(-1L),1L,1L},{1L,(-1L),(-1L),1L,1L},{1L,(-1L),(-1L),1L,1L},{1L,(-1L),(-1L),1L,1L}};
                int32_t *l_242[7][10] = {{&p_1418->g_67[3],(void*)0,(void*)0,&p_1418->g_67[3],&l_147,&l_149[3],(void*)0,&p_1418->g_67[0],&l_146[3][0],&l_234},{&p_1418->g_67[3],(void*)0,(void*)0,&p_1418->g_67[3],&l_147,&l_149[3],(void*)0,&p_1418->g_67[0],&l_146[3][0],&l_234},{&p_1418->g_67[3],(void*)0,(void*)0,&p_1418->g_67[3],&l_147,&l_149[3],(void*)0,&p_1418->g_67[0],&l_146[3][0],&l_234},{&p_1418->g_67[3],(void*)0,(void*)0,&p_1418->g_67[3],&l_147,&l_149[3],(void*)0,&p_1418->g_67[0],&l_146[3][0],&l_234},{&p_1418->g_67[3],(void*)0,(void*)0,&p_1418->g_67[3],&l_147,&l_149[3],(void*)0,&p_1418->g_67[0],&l_146[3][0],&l_234},{&p_1418->g_67[3],(void*)0,(void*)0,&p_1418->g_67[3],&l_147,&l_149[3],(void*)0,&p_1418->g_67[0],&l_146[3][0],&l_234},{&p_1418->g_67[3],(void*)0,(void*)0,&p_1418->g_67[3],&l_147,&l_149[3],(void*)0,&p_1418->g_67[0],&l_146[3][0],&l_234}};
                int i, j;
                for (l_144 = 3; (l_144 >= 0); l_144 -= 1)
                { /* block id: 57 */
                    int16_t l_190[8][6][5] = {{{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L}},{{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L}},{{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L}},{{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L}},{{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L}},{{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L}},{{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L}},{{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L},{(-1L),0x6D62L,(-2L),0x65D2L,0x2465L}}};
                    int32_t *l_226 = &l_150;
                    int32_t *l_227 = &l_151[1];
                    int32_t *l_228 = (void*)0;
                    int32_t *l_229 = &l_150;
                    int32_t *l_230 = &l_157;
                    int32_t *l_231[6] = {&l_85,&l_147,&l_85,&l_85,&l_147,&l_85};
                    uint32_t l_239 = 4294967295UL;
                    int i, j, k;
                    for (l_158 = 0; (l_158 <= 3); l_158 += 1)
                    { /* block id: 60 */
                        int32_t **l_181 = &l_80;
                        uint64_t *l_197 = &p_1418->g_103[1].f3;
                        uint64_t *l_198 = &p_1418->g_111.f3;
                        uint64_t *l_199[5] = {&p_1418->g_100.f3,&p_1418->g_100.f3,&p_1418->g_100.f3,&p_1418->g_100.f3,&p_1418->g_100.f3};
                        int16_t *l_214 = (void*)0;
                        int16_t *l_215 = &l_190[1][4][0];
                        int16_t **l_219 = &l_218[1][1];
                        int16_t *l_220[3][5] = {{&p_1418->g_5[4],&p_1418->g_5[4],&p_1418->g_5[0],&p_1418->g_5[4],&p_1418->g_5[4]},{&p_1418->g_5[4],&p_1418->g_5[4],&p_1418->g_5[0],&p_1418->g_5[4],&p_1418->g_5[4]},{&p_1418->g_5[4],&p_1418->g_5[4],&p_1418->g_5[0],&p_1418->g_5[4],&p_1418->g_5[4]}};
                        int64_t *l_221 = (void*)0;
                        int64_t *l_222 = &p_1418->g_155;
                        int64_t *l_224[2];
                        int i, j;
                        for (i = 0; i < 2; i++)
                            l_224[i] = &l_153;
                        (*l_181) = (void*)0;
                        (*l_181) = &p_1418->g_67[l_158];
                        l_151[1] ^= ((safe_div_func_int8_t_s_s(((p_1418->g_comm_values[p_1418->tid] == ((((safe_rshift_func_int16_t_s_s((safe_div_func_int64_t_s_s((((safe_div_func_int32_t_s_s((((0x0F77C65BL && 0UL) & (((l_190[7][1][2] || (((((~(safe_sub_func_uint32_t_u_u(((((p_47 & (safe_div_func_int64_t_s_s((safe_rshift_func_int16_t_s_s(((l_200 &= 0xA24BEC2C41774F4BL) || (p_1418->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1418->tid, 25))] ^= ((safe_lshift_func_uint16_t_u_s(((safe_sub_func_uint64_t_u_u(((*l_198) = ((FAKE_DIVERGE(p_1418->group_0_offset, get_group_id(0), 10) < (safe_mod_func_int64_t_s_s(((safe_div_func_int16_t_s_s((safe_mod_func_uint32_t_u_u(((safe_unary_minus_func_int64_t_s(((((0x24B0658D7BDA1314L == ((*l_222) = (safe_mul_func_int16_t_s_s(((*l_215) = 5L), (((safe_mul_func_int16_t_s_s(((**l_181) = (((*l_219) = l_218[1][0]) == (void*)0)), (-2L))) != p_46) ^ p_1418->g_9))))) && 0L) > GROUP_DIVERGE(2, 1)) <= l_223))) , GROUP_DIVERGE(0, 1)), p_1418->g_comm_values[p_1418->tid])), 65527UL)) > p_1418->g_27), (-9L)))) | l_86)), p_46)) >= p_47), p_1418->g_27)) && 0UL))), l_154)), p_47))) != 1L) >= 0x7DL) > p_49), 0x1C5EEF02L))) || 1UL) , p_46) , p_49) <= p_1418->g_2)) <= p_1418->g_2) > p_1418->g_9)) > p_49), p_1418->g_9)) > l_86) && GROUP_DIVERGE(2, 1)), 0xFDC0412EF527235EL)), l_152)) , l_175) != (void*)0) != 0xE8AB1B66BC57D954L)) <= 0x1ABC1FECL), l_225[2][3])) <= p_1418->g_2);
                        if (p_49)
                            continue;
                    }
                    l_239--;
                    l_242[3][0] = (void*)0;
                    l_243[0][1][3]++;
                }
            }
            l_247[8][2] = &l_151[2];
        }
        if (((((safe_sub_func_int16_t_s_s((safe_div_func_int16_t_s_s(((safe_mul_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s((!p_46), 0)), (!(safe_mul_func_int8_t_s_s(((safe_mul_func_int16_t_s_s(((((*l_284) = (&p_1418->g_2 == (((safe_div_func_uint64_t_u_u(l_225[2][3], (safe_sub_func_uint32_t_u_u((safe_add_func_int32_t_s_s((p_1418->g_67[0] = (((*l_282) &= ((safe_rshift_func_uint16_t_u_u((8UL == ((void*)0 == l_270[1][9])), (safe_mod_func_int8_t_s_s(((safe_lshift_func_int16_t_s_u((l_278 &= p_46), ((safe_mul_func_uint8_t_u_u((((l_161 , (l_281 , p_1418->g_271)) != (*p_48)) | 3UL), 0x8CL)) >= 0x3669113FL))) & p_1418->g_5[3]), p_46)))) & p_49)) != p_1418->g_2)), 2UL)), l_283)))) != 0L) , &p_1418->g_67[0]))) , 0x2D4D634411993899L) && 18446744073709551615UL), p_47)) , 0x03L), FAKE_DIVERGE(p_1418->global_2_offset, get_global_id(2), 10)))))) || p_49), FAKE_DIVERGE(p_1418->group_0_offset, get_group_id(0), 10))), FAKE_DIVERGE(p_1418->local_0_offset, get_local_id(0), 10))) >= p_47) & p_1418->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1418->tid, 25))]) , 4L))
        { /* block id: 84 */
            return p_1418->g_271;
        }
        else
        { /* block id: 86 */
            uint32_t l_289 = 3UL;
            uint32_t *l_302 = &p_1418->g_303;
            int32_t l_314 = 0x1B4D005CL;
            int32_t l_316 = 0x29C5D720L;
            uint64_t *l_390 = (void*)0;
            if ((safe_lshift_func_uint8_t_u_u((safe_sub_func_uint8_t_u_u(((l_289 < (((safe_div_func_int32_t_s_s(((safe_mul_func_uint8_t_u_u(0x80L, (p_1418->g_67[1] ^ ((safe_add_func_uint8_t_u_u((l_296[3][4] = FAKE_DIVERGE(p_1418->group_1_offset, get_group_id(1), 10)), ((void*)0 == l_247[0][1]))) | l_146[2][2])))) != (p_49 > p_49)), (safe_lshift_func_uint8_t_u_s(((safe_unary_minus_func_uint32_t_u((((*l_302) = (((safe_sub_func_uint32_t_u_u(((p_1418->g_5[0] ^= (p_49 ^ 18446744073709551606UL)) || p_1418->g_155), 0x7944C8F2L)) != 0x7E01L) != p_46)) & p_1418->g_2))) , 0x64L), 6)))) > 0x7261L) < p_1418->g_67[1])) == 8UL), p_1418->g_2)), 3)))
            { /* block id: 90 */
                uint32_t l_319 = 0x8A97BCDCL;
                union U0 l_328 = {0xBC2BDD61L};
                int16_t **l_338 = (void*)0;
                int32_t l_345 = 0x3FF0094EL;
                for (l_283 = 4; (l_283 >= 1); l_283 -= 1)
                { /* block id: 93 */
                    uint32_t l_311 = 0UL;
                    int32_t l_315 = 0x79754819L;
                    int32_t l_317[1][6] = {{(-7L),(-7L),(-7L),(-7L),(-7L),(-7L)}};
                    union U0 l_351 = {1UL};
                    int32_t **l_353 = &l_247[8][2];
                    int32_t ***l_352[9] = {&l_353,&l_353,&l_353,&l_353,&l_353,&l_353,&l_353,&l_353,&l_353};
                    int i, j;
                    for (l_237 = 4; (l_237 >= 0); l_237 -= 1)
                    { /* block id: 96 */
                        uint64_t *l_308[10][2][2] = {{{(void*)0,&l_158},{(void*)0,&l_158}},{{(void*)0,&l_158},{(void*)0,&l_158}},{{(void*)0,&l_158},{(void*)0,&l_158}},{{(void*)0,&l_158},{(void*)0,&l_158}},{{(void*)0,&l_158},{(void*)0,&l_158}},{{(void*)0,&l_158},{(void*)0,&l_158}},{{(void*)0,&l_158},{(void*)0,&l_158}},{{(void*)0,&l_158},{(void*)0,&l_158}},{{(void*)0,&l_158},{(void*)0,&l_158}},{{(void*)0,&l_158},{(void*)0,&l_158}}};
                        int32_t l_312 = 0x55363CB6L;
                        union U1 **l_313 = &p_1418->g_91;
                        int i, j, k;
                        p_1418->g_67[0] = (((p_1418->g_67[3] != (safe_rshift_func_int8_t_s_u((*p_48), 7))) < ((p_1418->g_54[0] != p_1418->g_155) == ((void*)0 == &p_1418->g_303))) == 0x89L);
                        l_312 = (safe_sub_func_uint64_t_u_u((p_1418->g_98.f3 = p_1418->g_2), (safe_mod_func_int16_t_s_s(p_1418->g_27, l_311))));
                        (*l_313) = (void*)0;
                        ++l_319;
                    }
                    if ((((18446744073709551612UL < ((safe_add_func_uint16_t_u_u(((safe_rshift_func_int8_t_s_s((safe_div_func_uint32_t_u_u(4294967292UL, p_47)), (l_328 , ((**l_176) = (l_317[0][2] != (safe_sub_func_int64_t_s_s(((safe_div_func_uint8_t_u_u(((*l_282) = (l_328 , ((((void*)0 != l_333) && l_317[0][2]) > (-2L)))), p_46)) && l_328.f0), 0x36C45A12C6DBBE11L))))))) >= 0x5B04L), 0x6DF3L)) && FAKE_DIVERGE(p_1418->group_1_offset, get_group_id(1), 10))) , p_47) & p_49))
                    { /* block id: 105 */
                        int16_t **l_335 = &l_276;
                        int16_t ***l_334[9][7] = {{&l_335,&l_335,&l_335,&l_335,&l_335,&l_335,&l_335},{&l_335,&l_335,&l_335,&l_335,&l_335,&l_335,&l_335},{&l_335,&l_335,&l_335,&l_335,&l_335,&l_335,&l_335},{&l_335,&l_335,&l_335,&l_335,&l_335,&l_335,&l_335},{&l_335,&l_335,&l_335,&l_335,&l_335,&l_335,&l_335},{&l_335,&l_335,&l_335,&l_335,&l_335,&l_335,&l_335},{&l_335,&l_335,&l_335,&l_335,&l_335,&l_335,&l_335},{&l_335,&l_335,&l_335,&l_335,&l_335,&l_335,&l_335},{&l_335,&l_335,&l_335,&l_335,&l_335,&l_335,&l_335}};
                        union U0 l_341 = {0UL};
                        uint8_t *l_343 = &l_200;
                        int i, j;
                        p_1418->g_344 ^= ((l_338 = (p_1418->g_336 = ((p_1418->g_67[1] = 1L) , (void*)0))) == ((safe_lshift_func_int16_t_s_s(((((*l_282) |= 0UL) != (((p_1418->g_2 , 0xA7L) ^ (l_341 , (0L ^ p_1418->g_271))) | ((*l_343) &= (0x6FL ^ p_1418->g_342)))) > p_1418->g_303), 9)) , (void*)0));
                        l_345 ^= (p_47 || 0L);
                        if (l_86)
                            continue;
                    }
                    else
                    { /* block id: 114 */
                        int32_t **l_346 = &l_247[8][2];
                        (*l_346) = &l_345;
                    }
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    p_1418->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 25)), permutations[(safe_mod_func_uint32_t_u_u(((safe_mul_func_int8_t_s_s(((*p_1418->g_337) >= ((((**l_176) ^= (((l_351 , &l_247[1][1]) == (l_354[0] = (void*)0)) > p_47)) ^ FAKE_DIVERGE(p_1418->group_2_offset, get_group_id(2), 10)) != ((p_46 >= (*p_48)) ^ (((safe_lshift_func_int8_t_s_u((safe_rshift_func_int16_t_s_u(0x3768L, (safe_rshift_func_int16_t_s_u((safe_add_func_uint64_t_u_u(((safe_mul_func_uint16_t_u_u(((((safe_rshift_func_int16_t_s_s(((safe_mod_func_uint64_t_u_u(((safe_sub_func_uint64_t_u_u(FAKE_DIVERGE(p_1418->local_2_offset, get_local_id(2), 10), (safe_add_func_uint64_t_u_u((safe_add_func_int32_t_s_s(p_46, FAKE_DIVERGE(p_1418->group_0_offset, get_group_id(0), 10))), p_1418->g_303)))) <= p_47), 1UL)) != (-10L)), 1)) , FAKE_DIVERGE(p_1418->local_0_offset, get_local_id(0), 10)) & (*p_1418->g_337)) ^ p_49), p_46)) , 18446744073709551612UL), 0x8A28EE43EF6C8359L)), 6)))), p_47)) || (-10L)) | p_1418->g_303)))), l_319)) < 0L), 10))][(safe_mod_func_uint32_t_u_u(p_1418->tid, 25))]));
                }
            }
            else
            { /* block id: 123 */
                uint64_t *l_391 = (void*)0;
                int64_t *l_396 = &p_1418->g_155;
                int64_t l_413 = 0x4B634654585D67A7L;
                if ((((safe_div_func_int64_t_s_s((safe_mul_func_int16_t_s_s((((safe_mod_func_int16_t_s_s((((((+(((((safe_mul_func_int16_t_s_s((safe_unary_minus_func_uint8_t_u((safe_lshift_func_uint16_t_u_u(((((safe_add_func_int64_t_s_s(p_47, ((*l_396) = (safe_add_func_int64_t_s_s((0x02L == ((((l_390 != l_391) <= 0x3F9C2A4EL) , p_1418->g_392) != &l_354[2])), p_1418->g_2))))) , (((((void*)0 != &l_333) && GROUP_DIVERGE(0, 1)) ^ p_46) , p_49)) | 3L) <= p_1418->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1418->tid, 25))]), p_1418->g_54[0])))), 1UL)) <= p_47) ^ p_47) > l_316) || l_237)) >= 0x21D5L) || l_289) == 0x2CL) , (*p_1418->g_337)), p_49)) > l_225[1][4]) < (-1L)), p_49)), p_1418->g_2)) & l_146[3][0]) , 5L))
                { /* block id: 125 */
                    for (l_314 = 7; (l_314 < 6); l_314--)
                    { /* block id: 128 */
                        uint16_t l_399 = 7UL;
                        p_1418->g_67[1] = (l_399 && (safe_sub_func_uint64_t_u_u(l_399, 9L)));
                    }
                }
                else
                { /* block id: 131 */
                    int8_t l_412[6] = {0x2FL,0x73L,0x2FL,0x2FL,0x73L,0x2FL};
                    uint32_t *l_414 = (void*)0;
                    uint32_t *l_415 = &p_1418->g_416;
                    int i;
                    l_402 = p_1418->g_54[3];
                    l_314 |= (((p_47 >= (((*l_396) = (((&p_1418->g_155 != &l_237) , (l_403 , func_55((((void*)0 == &p_49) && p_46), (((((*l_415) = (((safe_sub_func_int16_t_s_s((safe_sub_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u(255UL, 2)), ((((((*l_177) = ((((*l_396) = (safe_rshift_func_uint8_t_u_u(l_412[3], GROUP_DIVERGE(2, 1)))) == 1UL) | 0x24L)) >= 0x80L) & p_1418->g_2) != p_46) ^ l_413))), p_46)) && l_412[3]) <= p_1418->g_2)) , 0L) && 1UL) , l_413), p_1418))) == &l_86)) , l_417)) , 0x4881A1E6C8FC4445L) , p_1418->g_344);
                    p_1418->g_67[2] ^= (safe_rshift_func_int8_t_s_s((safe_div_func_int32_t_s_s(0x3845AE73L, l_413)), 2));
                }
                if (p_1418->g_342)
                    continue;
                p_1418->g_422 = &l_314;
                for (p_46 = (-15); (p_46 == 54); ++p_46)
                { /* block id: 144 */
                    p_1418->g_422 = &l_146[2][2];
                    return p_1418->g_67[1];
                }
            }
        }
        for (l_158 = 0; (l_158 <= 5); l_158 += 1)
        { /* block id: 152 */
            uint8_t **l_450 = &l_282;
            int32_t l_451 = 0x47CB1160L;
            uint64_t *l_452 = (void*)0;
            uint64_t *l_453 = (void*)0;
            int32_t l_454 = 0x73AC1E6FL;
            int32_t l_455 = (-8L);
            int i;
            p_1418->g_67[1] = ((((*l_333) = l_86) & ((!(safe_mod_func_uint8_t_u_u(((safe_div_func_uint8_t_u_u(((((p_46 , (*p_48)) == (safe_sub_func_uint8_t_u_u(((((((((safe_div_func_uint64_t_u_u((l_433 , (!(l_454 = (((((safe_mod_func_int8_t_s_s((safe_add_func_uint16_t_u_u(3UL, (safe_div_func_int8_t_s_s((((l_451 = (((**l_176) = 0x78L) <= (safe_sub_func_int32_t_s_s(0x3EE92EF1L, (safe_add_func_uint16_t_u_u(((safe_rshift_func_int16_t_s_s((safe_div_func_int8_t_s_s((((safe_sub_func_int64_t_s_s((&p_1418->g_54[1] != ((*l_450) = func_55(p_49, l_146[3][0], p_1418))), p_1418->g_comm_values[p_1418->tid])) , (void*)0) != (void*)0), (*p_48))), 0)) , p_47), p_1418->g_54[1])))))) < l_144) == p_1418->g_303), (*p_48))))), 248UL)) && p_1418->g_67[0]) , p_49) != l_146[0][0]) , GROUP_DIVERGE(1, 1))))), p_47)) , p_1418->g_344) ^ l_146[3][0]) <= p_1418->g_2) && 0UL) >= p_1418->g_155) > l_455) ^ p_46), p_46))) >= (*p_48)) != (*p_48)), FAKE_DIVERGE(p_1418->group_0_offset, get_group_id(0), 10))) == p_49), 0x5BL))) , p_1418->g_303)) | 0x51F74BA9E946E8ECL);
        }
        for (l_403.f0 = 0; (l_403.f0 > 7); l_403.f0 = safe_add_func_uint8_t_u_u(l_403.f0, 9))
        { /* block id: 162 */
            int32_t ***l_460 = &l_354[0];
            int32_t l_483 = 0x75BB8A01L;
            int16_t **l_498 = &p_1418->g_337;
            uint8_t l_546 = 0UL;
            for (l_200 = 0; (l_200 <= 2); l_200 += 1)
            { /* block id: 165 */
                int16_t l_469 = 1L;
                int32_t l_504 = 0x56ADABFFL;
                for (p_46 = 0; (p_46 <= 2); p_46 += 1)
                { /* block id: 168 */
                    uint32_t l_468 = 1UL;
                    int32_t l_484 = 0x49178BEBL;
                    int32_t l_491 = 0x425A7515L;
                    int i, j;
                    for (l_402 = 0; (l_402 <= 3); l_402 += 1)
                    { /* block id: 171 */
                        union U1 **l_464 = &p_1418->g_91;
                        union U1 ***l_463 = &l_464;
                        uint16_t l_476[1];
                        int32_t ****l_479 = &p_1418->g_477;
                        int32_t ****l_480 = &l_460;
                        int64_t *l_503 = &l_433;
                        int i, j;
                        for (i = 0; i < 1; i++)
                            l_476[i] = 0xB1A6L;
                        l_151[l_402] = (safe_add_func_uint64_t_u_u((l_460 != (void*)0), (safe_sub_func_int16_t_s_s(((((*l_463) = &p_1418->g_91) == l_465) , (-1L)), (8UL <= (((0x843AL >= (0x392451225828548AL >= FAKE_DIVERGE(p_1418->global_2_offset, get_global_id(2), 10))) , l_463) != p_1418->g_466))))));
                        l_468 = (l_151[p_46] = l_146[(p_46 + 1)][p_46]);
                        l_484 &= (((((*p_1418->g_337) == (l_469 , ((safe_sub_func_uint8_t_u_u(FAKE_DIVERGE(p_1418->local_0_offset, get_local_id(0), 10), (safe_rshift_func_uint8_t_u_s(p_46, (safe_mul_func_int16_t_s_s((((l_225[1][4] = ((&p_1418->g_179 == &p_1418->g_179) | l_476[0])) , ((*l_479) = p_1418->g_477)) == ((*l_480) = l_460)), (((safe_add_func_int32_t_s_s(((void*)0 == &l_152), p_1418->g_54[0])) && 0x2664L) < 1L))))))) , 0x4C13L))) > l_483) >= l_146[3][0]) == p_1418->g_2);
                        l_504 = (((safe_rshift_func_int8_t_s_s((safe_mod_func_uint32_t_u_u((+4294967293UL), (((p_1418->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1418->tid, 25))] = ((((((safe_rshift_func_uint16_t_u_s((l_491 & l_200), 7)) , ((*l_282)++)) < ((safe_div_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_u(((l_152 , l_498) == (p_1418->g_342 , &p_1418->g_337)), (safe_rshift_func_int8_t_s_u(0L, 3)))), ((*l_503) = (safe_sub_func_int64_t_s_s(p_1418->g_303, 9UL))))) || (*p_1418->g_337))) ^ 2UL) < l_237) , 0x4010609C211777CCL)) ^ (-7L)) && p_47))), 2)) && p_1418->g_comm_values[p_1418->tid]) < 0x339FF6B9L);
                    }
                    if (l_146[p_46][p_46])
                        continue;
                    if (l_146[(p_46 + 1)][l_200])
                        continue;
                    (**p_1418->g_477) = &l_146[p_46][l_200];
                }
            }
            if (l_146[1][2])
                break;
            for (l_144 = 5; (l_144 >= 0); l_144 -= 1)
            { /* block id: 193 */
                int64_t l_529[4] = {1L,1L,1L,1L};
                int32_t l_544[9][2][5] = {{{0x690EF11AL,0x690EF11AL,0x233DEA87L,1L,0x7E552976L},{0x690EF11AL,0x690EF11AL,0x233DEA87L,1L,0x7E552976L}},{{0x690EF11AL,0x690EF11AL,0x233DEA87L,1L,0x7E552976L},{0x690EF11AL,0x690EF11AL,0x233DEA87L,1L,0x7E552976L}},{{0x690EF11AL,0x690EF11AL,0x233DEA87L,1L,0x7E552976L},{0x690EF11AL,0x690EF11AL,0x233DEA87L,1L,0x7E552976L}},{{0x690EF11AL,0x690EF11AL,0x233DEA87L,1L,0x7E552976L},{0x690EF11AL,0x690EF11AL,0x233DEA87L,1L,0x7E552976L}},{{0x690EF11AL,0x690EF11AL,0x233DEA87L,1L,0x7E552976L},{0x690EF11AL,0x690EF11AL,0x233DEA87L,1L,0x7E552976L}},{{0x690EF11AL,0x690EF11AL,0x233DEA87L,1L,0x7E552976L},{0x690EF11AL,0x690EF11AL,0x233DEA87L,1L,0x7E552976L}},{{0x690EF11AL,0x690EF11AL,0x233DEA87L,1L,0x7E552976L},{0x690EF11AL,0x690EF11AL,0x233DEA87L,1L,0x7E552976L}},{{0x690EF11AL,0x690EF11AL,0x233DEA87L,1L,0x7E552976L},{0x690EF11AL,0x690EF11AL,0x233DEA87L,1L,0x7E552976L}},{{0x690EF11AL,0x690EF11AL,0x233DEA87L,1L,0x7E552976L},{0x690EF11AL,0x690EF11AL,0x233DEA87L,1L,0x7E552976L}}};
                int32_t l_545 = 0x2E0B0EFBL;
                int i, j, k;
                for (l_402 = 1; (l_402 <= 5); l_402 += 1)
                { /* block id: 196 */
                    union U1 **l_509 = &p_1418->g_91;
                    int32_t l_510 = (-2L);
                    int64_t *l_530 = &p_1418->g_271;
                    for (l_433 = 5; (l_433 >= 0); l_433 -= 1)
                    { /* block id: 199 */
                        int i, j;
                        return l_296[l_433][l_402];
                    }
                    l_510 = ((((GROUP_DIVERGE(2, 1) || ((*l_282) = (safe_lshift_func_uint16_t_u_s(((safe_sub_func_uint8_t_u_u((l_509 == (void*)0), (*p_48))) != ((0L ^ l_510) || (safe_sub_func_uint8_t_u_u(l_86, 4L)))), ((((safe_mul_func_uint8_t_u_u(p_49, (!(((safe_rshift_func_uint16_t_u_u(FAKE_DIVERGE(p_1418->global_1_offset, get_global_id(1), 10), 4)) == (safe_sub_func_uint16_t_u_u((0xBEL | p_47), (*p_1418->g_337)))) > 0L)))) | (*p_48)) == 65535UL) == p_1418->g_67[1]))))) > 1L) | 249UL) , 1L);
                    for (l_200 = 1; (l_200 <= 5); l_200 += 1)
                    { /* block id: 206 */
                        int64_t *l_539[10][6] = {{&l_433,&p_1418->g_155,&l_237,&l_433,&l_529[3],&l_237},{&l_433,&p_1418->g_155,&l_237,&l_433,&l_529[3],&l_237},{&l_433,&p_1418->g_155,&l_237,&l_433,&l_529[3],&l_237},{&l_433,&p_1418->g_155,&l_237,&l_433,&l_529[3],&l_237},{&l_433,&p_1418->g_155,&l_237,&l_433,&l_529[3],&l_237},{&l_433,&p_1418->g_155,&l_237,&l_433,&l_529[3],&l_237},{&l_433,&p_1418->g_155,&l_237,&l_433,&l_529[3],&l_237},{&l_433,&p_1418->g_155,&l_237,&l_433,&l_529[3],&l_237},{&l_433,&p_1418->g_155,&l_237,&l_433,&l_529[3],&l_237},{&l_433,&p_1418->g_155,&l_237,&l_433,&l_529[3],&l_237}};
                        uint32_t *l_540[3][10][6] = {{{&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,(void*)0},{&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,(void*)0},{&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,(void*)0},{&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,(void*)0},{&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,(void*)0},{&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,(void*)0},{&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,(void*)0},{&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,(void*)0},{&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,(void*)0},{&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,(void*)0}},{{&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,(void*)0},{&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,(void*)0},{&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,(void*)0},{&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,(void*)0},{&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,(void*)0},{&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,(void*)0},{&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,(void*)0},{&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,(void*)0},{&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,(void*)0},{&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,(void*)0}},{{&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,(void*)0},{&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,(void*)0},{&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,(void*)0},{&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,(void*)0},{&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,(void*)0},{&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,(void*)0},{&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,(void*)0},{&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,(void*)0},{&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,(void*)0},{&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,&p_1418->g_303,(void*)0}}};
                        int32_t l_541 = 0L;
                        int32_t l_542 = 0x7DFE5017L;
                        int32_t l_543 = 0x19138241L;
                        int i, j, k;
                        l_543 = (safe_div_func_int32_t_s_s(0x3F557955L, (l_542 = (safe_mod_func_int64_t_s_s(((safe_mod_func_uint16_t_u_u((l_296[l_200][l_402] = l_510), (((((safe_rshift_func_int16_t_s_s(((l_541 = ((p_49 , l_529[3]) & ((((p_1418->g_303 = (((&p_1418->g_271 != l_530) < ((GROUP_DIVERGE(2, 1) & (safe_lshift_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u((safe_mod_func_int64_t_s_s(l_529[3], 6L)), (safe_add_func_int64_t_s_s((p_1418->g_155 &= p_1418->g_54[0]), p_1418->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1418->tid, 25))])))), 3))) < (*p_48))) < 0xDD759CC1B78A636DL)) | p_49) , l_540[2][3][4]) == &p_1418->g_2))) | 0x2284L), p_49)) ^ p_1418->g_27) , (*p_1418->g_337)) != 6L) && p_1418->g_271))) <= p_47), 0x3AB0AC08BE4CE7C7L)))));
                        p_1418->g_67[1] &= 0x71CB1B95L;
                        l_541 = ((~0x6E65D76E74166DD4L) | (l_545 = (l_544[4][0][3] &= p_46)));
                        return p_46;
                    }
                    l_546--;
                }
            }
        }
    }
    return l_237;
}


/* ------------------------------------------ */
/* 
 * reads : p_1418->g_9
 * writes: p_1418->g_67
 */
int8_t * func_55(uint32_t  p_56, int32_t  p_57, struct S2 * p_1418)
{ /* block id: 17 */
    int32_t *l_66 = &p_1418->g_67[1];
    (*l_66) = p_1418->g_9;
    return &p_1418->g_27;
}


/* ------------------------------------------ */
/* 
 * reads : p_1418->g_comm_values
 * writes:
 */
uint64_t  func_60(int32_t  p_61, int32_t * p_62, uint8_t * p_63, struct S2 * p_1418)
{ /* block id: 15 */
    return p_1418->g_comm_values[p_1418->tid];
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[25];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 25; i++)
            l_comm_values[i] = 1;
    struct S2 c_1419;
    struct S2* p_1418 = &c_1419;
    struct S2 c_1420 = {
        0x54EA6801L, // p_1418->g_2
        {7L,0x594BL,7L,7L,0x594BL,7L,7L}, // p_1418->g_5
        {0x281D21F1L,0x281D21F1L,0x281D21F1L,0x281D21F1L,0x281D21F1L,0x281D21F1L,0x281D21F1L,0x281D21F1L}, // p_1418->g_6
        (-1L), // p_1418->g_7
        (-2L), // p_1418->g_8
        0L, // p_1418->g_9
        0x29L, // p_1418->g_27
        {0xA5L,0xA5L,0xA5L,0xA5L}, // p_1418->g_54
        (void*)0, // p_1418->g_65
        {0x600AC80EL,0x600AC80EL,0x600AC80EL,0x600AC80EL}, // p_1418->g_67
        {{{0},{0},{0},{0},{0},{0},{0},{0}}}, // p_1418->g_92
        &p_1418->g_92[0][4], // p_1418->g_91
        {{0},{0}}, // p_1418->g_94
        {0}, // p_1418->g_95
        {0}, // p_1418->g_96
        {0}, // p_1418->g_97
        {0}, // p_1418->g_98
        {0}, // p_1418->g_99
        {0}, // p_1418->g_100
        {0}, // p_1418->g_101
        {0}, // p_1418->g_102
        {{0},{0},{0},{0},{0},{0}}, // p_1418->g_103
        {0}, // p_1418->g_104
        {0}, // p_1418->g_105
        {0}, // p_1418->g_106
        {{0},{0},{0},{0},{0},{0},{0},{0}}, // p_1418->g_107
        {0}, // p_1418->g_108
        {0}, // p_1418->g_109
        {0}, // p_1418->g_110
        {0}, // p_1418->g_111
        {{{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0}}}, // p_1418->g_112
        {0}, // p_1418->g_113
        {0}, // p_1418->g_114
        {0}, // p_1418->g_115
        {0}, // p_1418->g_116
        {0}, // p_1418->g_117
        {0}, // p_1418->g_118
        {0}, // p_1418->g_119
        {0}, // p_1418->g_120
        {0}, // p_1418->g_121
        {0}, // p_1418->g_122
        {0}, // p_1418->g_123
        {0}, // p_1418->g_124
        {{0},{0},{0},{0},{0},{0}}, // p_1418->g_125
        {0}, // p_1418->g_126
        {0}, // p_1418->g_127
        {0}, // p_1418->g_128
        {0}, // p_1418->g_129
        {{0},{0},{0},{0},{0}}, // p_1418->g_130
        {0}, // p_1418->g_131
        {0}, // p_1418->g_132
        {0}, // p_1418->g_133
        {0}, // p_1418->g_134
        {0}, // p_1418->g_135
        {0}, // p_1418->g_136
        {0}, // p_1418->g_137
        {0}, // p_1418->g_138
        {0}, // p_1418->g_139
        {0}, // p_1418->g_140
        {0}, // p_1418->g_141
        0L, // p_1418->g_155
        0x22L, // p_1418->g_180
        &p_1418->g_180, // p_1418->g_179
        &p_1418->g_179, // p_1418->g_178
        0x20082BE534CB37EDL, // p_1418->g_271
        0UL, // p_1418->g_303
        &p_1418->g_5[4], // p_1418->g_337
        &p_1418->g_337, // p_1418->g_336
        1L, // p_1418->g_342
        4L, // p_1418->g_344
        {0L,0L,0L,0L}, // p_1418->g_395
        &p_1418->g_395[0], // p_1418->g_394
        &p_1418->g_394, // p_1418->g_393
        &p_1418->g_393, // p_1418->g_392
        0x629AF9D0L, // p_1418->g_416
        &p_1418->g_67[1], // p_1418->g_422
        &p_1418->g_91, // p_1418->g_467
        &p_1418->g_467, // p_1418->g_466
        &p_1418->g_422, // p_1418->g_478
        &p_1418->g_478, // p_1418->g_477
        {&p_1418->g_9,&p_1418->g_9,&p_1418->g_9,&p_1418->g_9,&p_1418->g_9}, // p_1418->g_551
        (void*)0, // p_1418->g_553
        {1UL}, // p_1418->g_554
        0xECL, // p_1418->g_586
        {0}, // p_1418->g_637
        {{4294967293UL,4294967288UL,4294967293UL,4294967293UL,4294967288UL,4294967293UL,4294967293UL,4294967288UL,4294967293UL},{4294967293UL,4294967288UL,4294967293UL,4294967293UL,4294967288UL,4294967293UL,4294967293UL,4294967288UL,4294967293UL},{4294967293UL,4294967288UL,4294967293UL,4294967293UL,4294967288UL,4294967293UL,4294967293UL,4294967288UL,4294967293UL},{4294967293UL,4294967288UL,4294967293UL,4294967293UL,4294967288UL,4294967293UL,4294967293UL,4294967288UL,4294967293UL},{4294967293UL,4294967288UL,4294967293UL,4294967293UL,4294967288UL,4294967293UL,4294967293UL,4294967288UL,4294967293UL}}, // p_1418->g_652
        &p_1418->g_652[0][4], // p_1418->g_651
        &p_1418->g_651, // p_1418->g_650
        &p_1418->g_554, // p_1418->g_655
        &p_1418->g_655, // p_1418->g_654
        1L, // p_1418->g_674
        18446744073709551615UL, // p_1418->g_688
        1UL, // p_1418->g_710
        {0}, // p_1418->g_761
        {{0},{0},{0},{0},{0}}, // p_1418->g_763
        0x8D3001A4L, // p_1418->g_784
        {65532UL}, // p_1418->g_822
        &p_1418->g_554.f0, // p_1418->g_833
        &p_1418->g_833, // p_1418->g_832
        {0}, // p_1418->g_919
        {{{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L}},{{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L}},{{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L}},{{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L}},{{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L}},{{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L},{0x05D717E9L,0x6D921994L,0x86EF8505L}}}, // p_1418->g_929
        0x8F32FB86L, // p_1418->g_944
        {0x51078379L,5UL,0x51078379L,0x51078379L,5UL,0x51078379L,0x51078379L,5UL}, // p_1418->g_1004
        0x144FL, // p_1418->g_1006
        {0}, // p_1418->g_1049
        (void*)0, // p_1418->g_1084
        {{{0xC40CL,65534UL},{0xC40CL,65534UL},{0xC40CL,65534UL},{0xC40CL,65534UL}},{{0xC40CL,65534UL},{0xC40CL,65534UL},{0xC40CL,65534UL},{0xC40CL,65534UL}},{{0xC40CL,65534UL},{0xC40CL,65534UL},{0xC40CL,65534UL},{0xC40CL,65534UL}},{{0xC40CL,65534UL},{0xC40CL,65534UL},{0xC40CL,65534UL},{0xC40CL,65534UL}},{{0xC40CL,65534UL},{0xC40CL,65534UL},{0xC40CL,65534UL},{0xC40CL,65534UL}},{{0xC40CL,65534UL},{0xC40CL,65534UL},{0xC40CL,65534UL},{0xC40CL,65534UL}},{{0xC40CL,65534UL},{0xC40CL,65534UL},{0xC40CL,65534UL},{0xC40CL,65534UL}},{{0xC40CL,65534UL},{0xC40CL,65534UL},{0xC40CL,65534UL},{0xC40CL,65534UL}}}, // p_1418->g_1134
        0L, // p_1418->g_1143
        0xFEL, // p_1418->g_1262
        0L, // p_1418->g_1304
        (void*)0, // p_1418->g_1316
        {0xAA91361C4BD4A124L,0xAA91361C4BD4A124L,0xAA91361C4BD4A124L,0xAA91361C4BD4A124L}, // p_1418->g_1346
        sequence_input[get_global_id(0)], // p_1418->global_0_offset
        sequence_input[get_global_id(1)], // p_1418->global_1_offset
        sequence_input[get_global_id(2)], // p_1418->global_2_offset
        sequence_input[get_local_id(0)], // p_1418->local_0_offset
        sequence_input[get_local_id(1)], // p_1418->local_1_offset
        sequence_input[get_local_id(2)], // p_1418->local_2_offset
        sequence_input[get_group_id(0)], // p_1418->group_0_offset
        sequence_input[get_group_id(1)], // p_1418->group_1_offset
        sequence_input[get_group_id(2)], // p_1418->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 25)), permutations[0][get_linear_local_id()])), // p_1418->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1419 = c_1420;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1418);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1418->g_2, "p_1418->g_2", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1418->g_5[i], "p_1418->g_5[i]", print_hash_value);

    }
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1418->g_6[i], "p_1418->g_6[i]", print_hash_value);

    }
    transparent_crc(p_1418->g_7, "p_1418->g_7", print_hash_value);
    transparent_crc(p_1418->g_8, "p_1418->g_8", print_hash_value);
    transparent_crc(p_1418->g_9, "p_1418->g_9", print_hash_value);
    transparent_crc(p_1418->g_27, "p_1418->g_27", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1418->g_54[i], "p_1418->g_54[i]", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1418->g_67[i], "p_1418->g_67[i]", print_hash_value);

    }
    transparent_crc(p_1418->g_155, "p_1418->g_155", print_hash_value);
    transparent_crc(p_1418->g_180, "p_1418->g_180", print_hash_value);
    transparent_crc(p_1418->g_271, "p_1418->g_271", print_hash_value);
    transparent_crc(p_1418->g_303, "p_1418->g_303", print_hash_value);
    transparent_crc(p_1418->g_342, "p_1418->g_342", print_hash_value);
    transparent_crc(p_1418->g_344, "p_1418->g_344", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1418->g_395[i], "p_1418->g_395[i]", print_hash_value);

    }
    transparent_crc(p_1418->g_416, "p_1418->g_416", print_hash_value);
    transparent_crc(p_1418->g_554.f0, "p_1418->g_554.f0", print_hash_value);
    transparent_crc(p_1418->g_586, "p_1418->g_586", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1418->g_652[i][j], "p_1418->g_652[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1418->g_674, "p_1418->g_674", print_hash_value);
    transparent_crc(p_1418->g_688, "p_1418->g_688", print_hash_value);
    transparent_crc(p_1418->g_710, "p_1418->g_710", print_hash_value);
    transparent_crc(p_1418->g_784, "p_1418->g_784", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1418->g_822[i], "p_1418->g_822[i]", print_hash_value);

    }
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1418->g_929[i][j][k], "p_1418->g_929[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1418->g_944, "p_1418->g_944", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1418->g_1004[i], "p_1418->g_1004[i]", print_hash_value);

    }
    transparent_crc(p_1418->g_1006, "p_1418->g_1006", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1418->g_1134[i][j][k], "p_1418->g_1134[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1418->g_1143, "p_1418->g_1143", print_hash_value);
    transparent_crc(p_1418->g_1262, "p_1418->g_1262", print_hash_value);
    transparent_crc(p_1418->g_1304, "p_1418->g_1304", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1418->g_1346[i], "p_1418->g_1346[i]", print_hash_value);

    }
    transparent_crc(p_1418->l_comm_values[get_linear_local_id()], "p_1418->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1418->g_comm_values[get_linear_group_id() * 25 + get_linear_local_id()], "p_1418->g_comm_values[get_linear_group_id() * 25 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
