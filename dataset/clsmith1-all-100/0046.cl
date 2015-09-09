// --atomics 80 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 46,80,2 -l 1,10,2
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

__constant uint32_t permutations[10][20] = {
{10,0,9,12,11,6,14,8,3,19,17,18,16,4,13,15,7,1,5,2}, // permutation 0
{15,14,13,12,7,1,9,4,2,10,0,17,19,16,11,8,5,18,3,6}, // permutation 1
{5,19,13,0,10,11,17,12,16,4,14,8,2,7,9,15,6,1,18,3}, // permutation 2
{19,9,16,2,14,13,17,8,0,7,18,4,15,3,12,5,6,1,10,11}, // permutation 3
{9,7,0,4,2,18,6,3,5,11,14,1,8,19,13,15,10,16,17,12}, // permutation 4
{6,5,11,17,0,7,16,10,18,9,4,14,13,19,1,15,3,8,12,2}, // permutation 5
{12,3,15,7,14,13,17,18,6,19,0,11,1,10,9,5,16,2,8,4}, // permutation 6
{10,16,15,4,14,17,0,11,8,18,1,3,5,7,2,12,13,9,19,6}, // permutation 7
{5,16,19,6,17,4,18,15,9,14,1,2,0,8,11,3,12,10,13,7}, // permutation 8
{1,10,15,8,17,18,4,19,7,11,14,16,12,6,0,2,3,5,9,13} // permutation 9
};

// Seed: 46

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint16_t  f0;
   volatile uint32_t  f1;
};

struct S1 {
    uint64_t g_23;
    volatile int32_t * volatile g_28;
    volatile int32_t * volatile * volatile g_29;
    int32_t g_36[9][8][3];
    int16_t g_46;
    volatile VECTOR(int16_t, 16) g_70;
    uint64_t g_82;
    uint64_t *g_81;
    uint16_t g_87;
    int32_t g_96[2];
    uint32_t g_108[3];
    uint32_t g_128[8];
    VECTOR(uint64_t, 2) g_130;
    uint8_t g_149;
    uint8_t *g_148;
    int8_t g_151;
    uint64_t g_165;
    volatile VECTOR(int64_t, 2) g_181;
    VECTOR(int8_t, 2) g_189;
    VECTOR(uint8_t, 4) g_190;
    volatile VECTOR(int8_t, 8) g_191;
    int32_t *g_204;
    int32_t **g_203;
    volatile VECTOR(int32_t, 2) g_215;
    uint16_t g_227;
    VECTOR(int32_t, 4) g_232;
    volatile VECTOR(int32_t, 8) g_233;
    VECTOR(int32_t, 4) g_234;
    struct S0 g_247;
    VECTOR(int8_t, 16) g_254;
    VECTOR(uint16_t, 8) g_263;
    VECTOR(uint16_t, 4) g_265;
    uint8_t *g_275;
    volatile VECTOR(int32_t, 8) g_284;
    VECTOR(uint32_t, 8) g_304;
    VECTOR(int32_t, 2) g_310;
    struct S0 g_328;
    uint64_t * volatile * volatile g_344;
    uint64_t * volatile * volatile *g_343;
    VECTOR(int16_t, 16) g_358;
    VECTOR(uint16_t, 16) g_378;
    VECTOR(uint16_t, 2) g_379;
    volatile VECTOR(int32_t, 16) g_387;
    volatile VECTOR(int32_t, 16) g_389;
    volatile VECTOR(int32_t, 16) g_390;
    volatile VECTOR(int32_t, 8) g_391;
    volatile int64_t g_408;
    struct S0 g_409;
    VECTOR(uint32_t, 8) g_667;
    volatile VECTOR(uint32_t, 2) g_669;
    volatile VECTOR(uint32_t, 8) g_670;
    VECTOR(uint64_t, 4) g_676;
    uint16_t g_687[6];
    volatile VECTOR(int32_t, 2) g_710;
    volatile uint32_t g_754;
    volatile VECTOR(int8_t, 8) g_858;
    int32_t g_861;
    struct S0 g_865;
    struct S0 * volatile g_866;
    volatile struct S0 g_869;
    volatile VECTOR(int8_t, 16) g_963;
    VECTOR(uint16_t, 16) g_980;
    VECTOR(uint64_t, 8) g_997;
    volatile VECTOR(uint64_t, 8) g_999;
    VECTOR(int16_t, 4) g_1065;
    int16_t *g_1090[7];
    VECTOR(uint32_t, 16) g_1092;
    VECTOR(uint32_t, 4) g_1126;
    uint32_t *g_1131;
    uint32_t **g_1130;
    uint32_t g_1133;
    int32_t * volatile g_1169[7][5];
    int32_t * volatile g_1170;
    VECTOR(int16_t, 2) g_1195;
    VECTOR(uint8_t, 16) g_1231;
    volatile int32_t g_1237;
    volatile int32_t *g_1236;
    VECTOR(uint16_t, 8) g_1284;
    volatile VECTOR(uint16_t, 4) g_1286;
    VECTOR(uint16_t, 16) g_1287;
    uint8_t * volatile * volatile g_1297;
    uint8_t * volatile * volatile *g_1296;
    VECTOR(uint64_t, 2) g_1303;
    VECTOR(uint8_t, 8) g_1321;
    VECTOR(int64_t, 16) g_1326;
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
uint32_t  func_1(struct S1 * p_1338);
uint32_t  func_4(int32_t  p_5, uint32_t  p_6, int64_t  p_7, struct S1 * p_1338);
int8_t  func_10(int32_t  p_11, uint64_t  p_12, struct S1 * p_1338);
uint32_t  func_26(uint64_t * p_27, struct S1 * p_1338);
uint64_t * func_47(uint32_t  p_48, int64_t  p_49, int32_t * p_50, uint64_t * p_51, int64_t  p_52, struct S1 * p_1338);
int32_t * func_62(uint32_t  p_63, uint64_t * p_64, uint16_t  p_65, int32_t  p_66, int64_t  p_67, struct S1 * p_1338);
int32_t * func_89(uint8_t  p_90, int64_t  p_91, int64_t  p_92, int64_t  p_93, uint8_t  p_94, struct S1 * p_1338);
uint64_t * func_100(uint64_t * p_101, uint32_t  p_102, int8_t  p_103, int8_t  p_104, uint16_t  p_105, struct S1 * p_1338);
int8_t  func_115(uint32_t * p_116, int16_t  p_117, uint8_t  p_118, struct S1 * p_1338);
uint32_t * func_119(uint32_t  p_120, struct S1 * p_1338);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1338->g_comm_values p_1338->l_comm_values p_1338->g_28 p_1338->g_29 p_1338->g_36 p_1338->g_70 p_1338->g_81 p_1338->g_46 p_1338->g_82 p_1338->g_108 p_1338->g_128 p_1338->g_130 p_1338->g_96 p_1338->g_148 p_1338->g_165 p_1338->g_87 p_1338->g_181 p_1338->g_189 p_1338->g_190 p_1338->g_191 p_1338->g_23 p_1338->g_203 p_1338->g_215 p_1338->g_149 p_1338->g_204 p_1338->g_151 p_1338->g_227 p_1338->g_232 p_1338->g_233 p_1338->g_234 p_1338->g_247 p_1338->g_254 p_1338->g_263 p_1338->g_265 p_1338->g_284 p_1338->g_304 p_1338->g_310 p_1338->g_328 p_1338->g_343 p_1338->g_275 p_1338->g_358 p_1338->g_378 p_1338->g_379 p_1338->g_387 p_1338->g_389 p_1338->g_390 p_1338->g_391 p_1338->g_408 p_1338->g_687 p_1338->g_710 p_1338->g_754 p_1338->g_865 p_1338->g_866 p_1338->g_869 p_1338->g_669 p_1338->g_963 p_1338->g_1065 p_1338->g_670 p_1338->g_1130 p_1338->g_1133 p_1338->g_1131 p_1338->g_1170 p_1338->g_409.f0 p_1338->g_1195 p_1338->g_861 p_1338->g_409 p_1338->g_1236 p_1338->g_1303 p_1338->g_676
 * writes: p_1338->g_23 p_1338->g_28 p_1338->g_36 p_1338->g_46 p_1338->g_87 p_1338->g_96 p_1338->g_108 p_1338->g_148 p_1338->g_151 p_1338->g_165 p_1338->g_81 p_1338->g_149 p_1338->g_227 p_1338->g_82 p_1338->g_275 p_1338->g_204 p_1338->g_247 p_1338->g_409 p_1338->g_328.f0 p_1338->g_687 p_1338->g_869 p_1338->g_128 p_1338->g_232 p_1338->g_234 p_1338->g_263 p_1338->g_358 p_1338->g_861 p_1338->g_304 p_1338->g_1133 p_1338->g_comm_values p_1338->g_1237
 */
uint32_t  func_1(struct S1 * p_1338)
{ /* block id: 4 */
    VECTOR(uint8_t, 8) l_17 = (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x15L), 0x15L), 0x15L, 255UL, 0x15L);
    VECTOR(uint8_t, 16) l_18 = (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 6UL), 6UL), 6UL, 0UL, 6UL, (VECTOR(uint8_t, 2))(0UL, 6UL), (VECTOR(uint8_t, 2))(0UL, 6UL), 0UL, 6UL, 0UL, 6UL);
    VECTOR(uint8_t, 4) l_19 = (VECTOR(uint8_t, 4))(0x39L, (VECTOR(uint8_t, 2))(0x39L, 0xB6L), 0xB6L);
    uint64_t *l_22 = &p_1338->g_23;
    int32_t l_899 = 0x3CFC83F2L;
    uint32_t l_1167 = 4294967294UL;
    struct S0 *l_1184 = &p_1338->g_328;
    struct S0 *l_1185[8];
    int32_t *l_1189[5] = {&p_1338->g_861,&p_1338->g_861,&p_1338->g_861,&p_1338->g_861,&p_1338->g_861};
    VECTOR(uint16_t, 2) l_1196 = (VECTOR(uint16_t, 2))(0x3A58L, 5UL);
    int32_t l_1280 = 0x0B880447L;
    VECTOR(uint16_t, 8) l_1285 = (VECTOR(uint16_t, 8))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x353EL), 0x353EL), 0x353EL, 65535UL, 0x353EL);
    VECTOR(uint16_t, 16) l_1288 = (VECTOR(uint16_t, 16))(0xEE05L, (VECTOR(uint16_t, 4))(0xEE05L, (VECTOR(uint16_t, 2))(0xEE05L, 0x4A94L), 0x4A94L), 0x4A94L, 0xEE05L, 0x4A94L, (VECTOR(uint16_t, 2))(0xEE05L, 0x4A94L), (VECTOR(uint16_t, 2))(0xEE05L, 0x4A94L), 0xEE05L, 0x4A94L, 0xEE05L, 0x4A94L);
    VECTOR(uint16_t, 4) l_1289 = (VECTOR(uint16_t, 4))(0x91C5L, (VECTOR(uint16_t, 2))(0x91C5L, 65535UL), 65535UL);
    VECTOR(uint64_t, 2) l_1302 = (VECTOR(uint64_t, 2))(0x7041CF692E82D377L, 0x6C6D4005AB8F3617L);
    VECTOR(uint8_t, 16) l_1304 = (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0xB6L), 0xB6L), 0xB6L, 255UL, 0xB6L, (VECTOR(uint8_t, 2))(255UL, 0xB6L), (VECTOR(uint8_t, 2))(255UL, 0xB6L), 255UL, 0xB6L, 255UL, 0xB6L);
    VECTOR(uint8_t, 8) l_1319 = (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 254UL), 254UL), 254UL, 0UL, 254UL);
    VECTOR(uint8_t, 16) l_1320 = (VECTOR(uint8_t, 16))(0x3DL, (VECTOR(uint8_t, 4))(0x3DL, (VECTOR(uint8_t, 2))(0x3DL, 0x4BL), 0x4BL), 0x4BL, 0x3DL, 0x4BL, (VECTOR(uint8_t, 2))(0x3DL, 0x4BL), (VECTOR(uint8_t, 2))(0x3DL, 0x4BL), 0x3DL, 0x4BL, 0x3DL, 0x4BL);
    int32_t l_1331 = 0L;
    int32_t *l_1332 = &p_1338->g_96[1];
    int16_t l_1337 = 0x0EDFL;
    int i;
    for (i = 0; i < 8; i++)
        l_1185[i] = &p_1338->g_328;
    if (((((safe_lshift_func_uint8_t_u_u(0xD1L, (func_4((safe_mul_func_int8_t_s_s(func_10(p_1338->g_comm_values[p_1338->tid], ((safe_mul_func_uint8_t_u_u(((GROUP_DIVERGE(2, 1) >= ((*l_22) = (((VECTOR(uint8_t, 16))(hadd(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(sub_sat(((VECTOR(uint8_t, 8))(clz(((VECTOR(uint8_t, 16))(l_17.s2566617341720340)).even))).lo, ((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 2))(l_18.s42)).xxyxxyyx, ((VECTOR(uint8_t, 2))(0x8EL, 0xE5L)).xyyxyxxy))).lo))).lo)).xxyy, ((VECTOR(uint8_t, 2))(0UL, 0x7FL)).xyyx))).wzzxwxyzywxwzxxz)), ((VECTOR(uint8_t, 8))(l_19.yywwxzwy)).s6220477772223240))).s1 != ((safe_div_func_uint64_t_u_u(l_18.sb, l_18.se)) , 0UL)))) ^ p_1338->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1338->tid, 20))]), (safe_sub_func_uint32_t_u_u(func_26(l_22, p_1338), (-10L))))) , 0x82A74DB503B5B0D6L), p_1338), p_1338->g_comm_values[p_1338->tid])), l_19.w, l_899, p_1338) < 0x3F9AD5D7L))) ^ 0x60ACEC69L) , l_1167) , l_19.x))
    { /* block id: 480 */
        uint32_t l_1168 = 0UL;
        uint16_t *l_1173 = &p_1338->g_409.f0;
        int16_t *l_1176 = (void*)0;
        int16_t *l_1177 = (void*)0;
        int16_t *l_1178[7][4] = {{&p_1338->g_46,(void*)0,&p_1338->g_46,&p_1338->g_46},{&p_1338->g_46,(void*)0,&p_1338->g_46,&p_1338->g_46},{&p_1338->g_46,(void*)0,&p_1338->g_46,&p_1338->g_46},{&p_1338->g_46,(void*)0,&p_1338->g_46,&p_1338->g_46},{&p_1338->g_46,(void*)0,&p_1338->g_46,&p_1338->g_46},{&p_1338->g_46,(void*)0,&p_1338->g_46,&p_1338->g_46},{&p_1338->g_46,(void*)0,&p_1338->g_46,&p_1338->g_46}};
        int32_t l_1179[10][9][1] = {{{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)}},{{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)}},{{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)}},{{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)}},{{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)}},{{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)}},{{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)}},{{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)}},{{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)}},{{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)},{(-2L)}}};
        int8_t l_1182 = 1L;
        VECTOR(uint16_t, 2) l_1183 = (VECTOR(uint16_t, 2))(9UL, 0x9886L);
        int32_t **l_1186 = (void*)0;
        int32_t *l_1188 = (void*)0;
        int32_t **l_1187 = &l_1188;
        int32_t *l_1190 = (void*)0;
        int32_t *l_1191[5][10][5] = {{{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]}},{{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]}},{{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]}},{{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]}},{{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]},{&p_1338->g_36[7][0][1],&p_1338->g_36[7][2][2],&p_1338->g_96[1],&p_1338->g_96[1],&p_1338->g_36[3][7][0]}}};
        int8_t l_1192 = 0x62L;
        int i, j, k;
        (*p_1338->g_1170) = l_1168;
        l_1192 ^= (p_1338->g_23 , ((((*p_1338->g_1170) = ((safe_mul_func_uint16_t_u_u((--(*l_1173)), (l_1179[3][4][0] = l_1168))) ^ (((((safe_sub_func_int32_t_s_s((l_1168 , (l_1182 = l_1168)), l_1167)) < ((VECTOR(int8_t, 2))(0x3AL, 0L)).lo) & ((VECTOR(uint16_t, 2))(l_1183.xy)).odd) != 0UL) <= (((*l_1187) = (((l_1184 != l_1185[6]) || 9L) , (void*)0)) == l_1189[1])))) || 0x343C95A4L) == l_18.s4));
        (*p_1338->g_1170) = (safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(p_1338->g_1195.xxyy)).wwxyywxwzxzxzzzy)).s0, ((VECTOR(uint16_t, 2))(l_1196.xx)).odd));
    }
    else
    { /* block id: 489 */
        int64_t l_1213 = (-10L);
        uint32_t l_1221 = 0xF883720CL;
        VECTOR(int32_t, 2) l_1234 = (VECTOR(int32_t, 2))(0L, 0x351B4F72L);
        VECTOR(uint16_t, 4) l_1283 = (VECTOR(uint16_t, 4))(3UL, (VECTOR(uint16_t, 2))(3UL, 5UL), 5UL);
        uint8_t **l_1295 = &p_1338->g_275;
        uint8_t ***l_1294 = &l_1295;
        int i;
        for (p_1338->g_861 = 0; (p_1338->g_861 != (-4)); p_1338->g_861--)
        { /* block id: 492 */
            int16_t l_1207 = (-9L);
            VECTOR(int8_t, 8) l_1210 = (VECTOR(int8_t, 8))(0x59L, (VECTOR(int8_t, 4))(0x59L, (VECTOR(int8_t, 2))(0x59L, (-5L)), (-5L)), (-5L), 0x59L, (-5L));
            int64_t *l_1218 = (void*)0;
            int64_t *l_1219 = (void*)0;
            int64_t *l_1220[6];
            int8_t l_1222 = 0x61L;
            int32_t l_1240 = 0x79575C1BL;
            int i;
            for (i = 0; i < 6; i++)
                l_1220[i] = (void*)0;
            if ((safe_mod_func_uint8_t_u_u(((*p_1338->g_275) = ((0x948502DAD7D83A95L || ((safe_rshift_func_int16_t_s_u((((!(~(safe_mod_func_int8_t_s_s((safe_add_func_int8_t_s_s(2L, (((l_1207 || 0x2196A637L) < (safe_add_func_int8_t_s_s(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(mad_sat(((VECTOR(int8_t, 8))(l_1210.s33713513)), ((VECTOR(int8_t, 2))(1L, 0L)).yxxyyyxy, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(0L, 0x0BL, ((VECTOR(int8_t, 8))(0L, (-1L), (-3L), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(0L, (-10L))))), ((VECTOR(int8_t, 16))(1L, l_1210.s0, ((-2L) & ((0x7452AF4DBB565998L || (p_1338->g_comm_values[p_1338->tid] |= (safe_mul_func_uint8_t_u_u((l_1213 == (((safe_div_func_uint16_t_u_u((safe_sub_func_uint16_t_u_u(p_1338->g_82, l_1210.s0)), l_1210.s4)) < FAKE_DIVERGE(p_1338->group_0_offset, get_group_id(0), 10)) == 0x4D6712DE106F8FF7L)), (*p_1338->g_275))))) || 0x81A6L)), ((VECTOR(int8_t, 8))(0x62L)), 0x61L, ((VECTOR(int8_t, 4))(0L)))).s00, ((VECTOR(int8_t, 2))(0x5BL))))).yyyx)), 0x1EL)), 1L, p_1338->g_254.s4, p_1338->g_304.s3, ((VECTOR(int8_t, 2))(2L)), 0x56L)).sa7d6)))).wxzxxwxzzyxzwzwz)).lo))).s2162655051175656)).sd1d7)).x, 0x19L))) , 0xBFL))), GROUP_DIVERGE(0, 1))))) , &p_1338->g_861) == (void*)0), p_1338->g_687[0])) == FAKE_DIVERGE(p_1338->global_1_offset, get_global_id(1), 10))) && (*p_1338->g_148))), l_1221)))
            { /* block id: 495 */
                return l_1213;
            }
            else
            { /* block id: 497 */
                int32_t l_1238 = (-2L);
                int64_t *l_1247 = &l_1213;
                if (l_1221)
                { /* block id: 498 */
                    int64_t l_1227 = (-10L);
                    int32_t *l_1235 = (void*)0;
                    if (l_1222)
                    { /* block id: 499 */
                        int8_t l_1230[4][3][10] = {{{3L,0x7CL,0L,0x29L,1L,3L,0x29L,1L,0x29L,3L},{3L,0x7CL,0L,0x29L,1L,3L,0x29L,1L,0x29L,3L},{3L,0x7CL,0L,0x29L,1L,3L,0x29L,1L,0x29L,3L}},{{3L,0x7CL,0L,0x29L,1L,3L,0x29L,1L,0x29L,3L},{3L,0x7CL,0L,0x29L,1L,3L,0x29L,1L,0x29L,3L},{3L,0x7CL,0L,0x29L,1L,3L,0x29L,1L,0x29L,3L}},{{3L,0x7CL,0L,0x29L,1L,3L,0x29L,1L,0x29L,3L},{3L,0x7CL,0L,0x29L,1L,3L,0x29L,1L,0x29L,3L},{3L,0x7CL,0L,0x29L,1L,3L,0x29L,1L,0x29L,3L}},{{3L,0x7CL,0L,0x29L,1L,3L,0x29L,1L,0x29L,3L},{3L,0x7CL,0L,0x29L,1L,3L,0x29L,1L,0x29L,3L},{3L,0x7CL,0L,0x29L,1L,3L,0x29L,1L,0x29L,3L}}};
                        uint8_t *l_1239 = (void*)0;
                        int i, j, k;
                        (*p_1338->g_203) = l_1235;
                        (*p_1338->g_203) = (*p_1338->g_203);
                        (*p_1338->g_866) = (*p_1338->g_866);
                    }
                    else
                    { /* block id: 506 */
                        int32_t l_1250 = 0L;
                        int32_t l_1251 = 1L;
                        l_1251 |= ((((*p_1338->g_1170) >= p_1338->g_1065.w) , ((safe_rshift_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s(((l_1196.x & (0x41D3E8890D240523L > ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(0x3A15C2CDD57361BAL, 0x26A83F1E8179D0EFL)))).yyxx)).w)) && (GROUP_DIVERGE(0, 1) , (safe_sub_func_int32_t_s_s(((((void*)0 != l_1247) && l_1196.y) == 252UL), (safe_add_func_uint32_t_u_u(FAKE_DIVERGE(p_1338->local_1_offset, get_local_id(1), 10), (p_1338->g_358.se && 1L))))))), l_1250)), p_1338->g_391.s6)) ^ 1UL)) == 0L);
                    }
                    if (l_1238)
                        continue;
                }
                else
                { /* block id: 510 */
                    (*p_1338->g_1236) = 8L;
                }
                if ((*p_1338->g_1170))
                    break;
                if ((atomic_inc(&p_1338->g_atomic_input[80 * get_linear_group_id() + 31]) == 4))
                { /* block id: 515 */
                    int8_t l_1252 = 0x61L;
                    if (l_1252)
                    { /* block id: 516 */
                        uint32_t l_1253 = 0xA9575314L;
                        int16_t l_1254[10][6] = {{0x5B49L,0x7AD7L,4L,(-1L),1L,(-6L)},{0x5B49L,0x7AD7L,4L,(-1L),1L,(-6L)},{0x5B49L,0x7AD7L,4L,(-1L),1L,(-6L)},{0x5B49L,0x7AD7L,4L,(-1L),1L,(-6L)},{0x5B49L,0x7AD7L,4L,(-1L),1L,(-6L)},{0x5B49L,0x7AD7L,4L,(-1L),1L,(-6L)},{0x5B49L,0x7AD7L,4L,(-1L),1L,(-6L)},{0x5B49L,0x7AD7L,4L,(-1L),1L,(-6L)},{0x5B49L,0x7AD7L,4L,(-1L),1L,(-6L)},{0x5B49L,0x7AD7L,4L,(-1L),1L,(-6L)}};
                        int8_t l_1255 = 8L;
                        int i, j;
                        l_1255 = (l_1254[8][0] = l_1253);
                    }
                    else
                    { /* block id: 519 */
                        uint16_t l_1256 = 65531UL;
                        VECTOR(int16_t, 16) l_1257 = (VECTOR(int16_t, 16))(0x2175L, (VECTOR(int16_t, 4))(0x2175L, (VECTOR(int16_t, 2))(0x2175L, 0x590BL), 0x590BL), 0x590BL, 0x2175L, 0x590BL, (VECTOR(int16_t, 2))(0x2175L, 0x590BL), (VECTOR(int16_t, 2))(0x2175L, 0x590BL), 0x2175L, 0x590BL, 0x2175L, 0x590BL);
                        VECTOR(uint32_t, 4) l_1258 = (VECTOR(uint32_t, 4))(0x53D2D5AEL, (VECTOR(uint32_t, 2))(0x53D2D5AEL, 0UL), 0UL);
                        int32_t l_1259 = 0x7B5760F2L;
                        int32_t l_1260 = 0x79DB1A9EL;
                        uint64_t l_1261 = 0x78061C0D4BF05479L;
                        uint8_t l_1262 = 0UL;
                        int32_t l_1263 = 7L;
                        int8_t l_1264[10];
                        int64_t l_1267 = 1L;
                        VECTOR(uint32_t, 2) l_1268 = (VECTOR(uint32_t, 2))(0xB87CB9C8L, 4294967290UL);
                        VECTOR(uint32_t, 4) l_1269 = (VECTOR(uint32_t, 4))(5UL, (VECTOR(uint32_t, 2))(5UL, 0x4D5D231DL), 0x4D5D231DL);
                        int16_t l_1270 = 0x32DCL;
                        int32_t l_1271 = 0x39546771L;
                        uint32_t l_1272 = 1UL;
                        int16_t l_1275 = (-1L);
                        uint8_t l_1276 = 7UL;
                        uint16_t l_1277 = 0x85F4L;
                        uint64_t l_1278 = 0x01A6B87A8F20DCB8L;
                        int32_t l_1279 = (-2L);
                        int i;
                        for (i = 0; i < 10; i++)
                            l_1264[i] = 0L;
                        l_1277 &= ((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 4))(l_1256, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(min(((VECTOR(int16_t, 4))(l_1257.saa8f)), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(0x451AL, ((l_1270 = ((VECTOR(uint32_t, 4))(safe_clamp_func(VECTOR(uint32_t, 4),VECTOR(uint32_t, 4),((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(l_1258.yzwzyzxywwyxzyyy)))).s79fb, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(0x7A062A3DL, 0xFBFA3E08L, 1UL, ((VECTOR(uint32_t, 8))(0xA3269146L, l_1259, 0x3105F03DL, (l_1260 , (((VECTOR(int32_t, 4))(l_1261, (l_1264[8] |= (l_1263 = l_1262)), 0x45F48C7EL, 2L)).w , ((l_1258.x++) , l_1267))), FAKE_DIVERGE(p_1338->group_1_offset, get_group_id(1), 10), ((VECTOR(uint32_t, 2))(0xFCBBA97AL, 4294967289UL)), 1UL)), ((VECTOR(uint32_t, 2))(l_1268.yy)), 0x96DFC27FL, 0x774CA53AL, 0x24055154L)).sb3)).yyxx, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(l_1269.wwww)).zwyzxzxzzyzxxzzw)).s8374))).w) , ((((l_1272++) , l_1275) , (-1L)) , (l_1276 &= 0x14FFL))), ((VECTOR(int16_t, 2))(1L)), ((VECTOR(int16_t, 4))(0x470DL)))).s25)).yyyx))).even)), 1L)).xyzyxyyxwzxwywxx, ((VECTOR(uint16_t, 16))(0x49CDL))))).s7;
                        l_1259 |= (l_1279 = l_1278);
                    }
                    unsigned int result = 0;
                    result += l_1252;
                    atomic_add(&p_1338->g_special_values[80 * get_linear_group_id() + 31], result);
                }
                else
                { /* block id: 530 */
                    (1 + 1);
                }
            }
        }
        (*p_1338->g_1236) = l_1280;
        (*p_1338->g_203) = l_1332;
    }
    l_1332 = &l_1331;
    l_1337 &= (((safe_lshift_func_int16_t_s_s((GROUP_DIVERGE(2, 1) , 0x538FL), 10)) == 8UL) == (p_1338->g_1303.y < ((*p_1338->g_866) , (*l_1332))));
    return p_1338->g_676.y;
}


/* ------------------------------------------ */
/* 
 * reads : p_1338->g_128 p_1338->g_204 p_1338->g_96 p_1338->g_275 p_1338->g_151 p_1338->g_869.f1 p_1338->g_232 p_1338->g_149 p_1338->g_669 p_1338->g_203 p_1338->g_963 p_1338->g_378 p_1338->g_234 p_1338->g_865.f0 p_1338->g_189 p_1338->g_379 p_1338->g_148 p_1338->g_754 p_1338->g_1065 p_1338->g_687 p_1338->g_670 p_1338->g_358 p_1338->g_1130 p_1338->g_1133 p_1338->g_387 p_1338->g_1131 p_1338->g_70
 * writes: p_1338->g_81 p_1338->g_36 p_1338->g_151 p_1338->g_232 p_1338->g_149 p_1338->g_128 p_1338->g_96 p_1338->g_234 p_1338->g_263 p_1338->g_687 p_1338->g_204 p_1338->g_358 p_1338->g_861 p_1338->g_304 p_1338->g_1133 p_1338->g_comm_values p_1338->g_23
 */
uint32_t  func_4(int32_t  p_5, uint32_t  p_6, int64_t  p_7, struct S1 * p_1338)
{ /* block id: 397 */
    uint64_t *l_911 = &p_1338->g_23;
    VECTOR(int32_t, 8) l_912 = (VECTOR(int32_t, 8))(0x2D4E88AFL, (VECTOR(int32_t, 4))(0x2D4E88AFL, (VECTOR(int32_t, 2))(0x2D4E88AFL, (-7L)), (-7L)), (-7L), 0x2D4E88AFL, (-7L));
    int8_t *l_913[8][4] = {{(void*)0,(void*)0,(void*)0,&p_1338->g_151},{(void*)0,(void*)0,(void*)0,&p_1338->g_151},{(void*)0,(void*)0,(void*)0,&p_1338->g_151},{(void*)0,(void*)0,(void*)0,&p_1338->g_151},{(void*)0,(void*)0,(void*)0,&p_1338->g_151},{(void*)0,(void*)0,(void*)0,&p_1338->g_151},{(void*)0,(void*)0,(void*)0,&p_1338->g_151},{(void*)0,(void*)0,(void*)0,&p_1338->g_151}};
    int32_t l_914 = 0L;
    uint32_t *l_915[5][7] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    uint64_t l_916 = 18446744073709551606UL;
    VECTOR(int32_t, 16) l_925 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x48A7F71FL), 0x48A7F71FL), 0x48A7F71FL, 1L, 0x48A7F71FL, (VECTOR(int32_t, 2))(1L, 0x48A7F71FL), (VECTOR(int32_t, 2))(1L, 0x48A7F71FL), 1L, 0x48A7F71FL, 1L, 0x48A7F71FL);
    int32_t *l_928 = (void*)0;
    int32_t *l_929[2][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    uint16_t l_945 = 65535UL;
    VECTOR(int32_t, 8) l_952 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L));
    uint32_t l_956 = 4294967295UL;
    int32_t *l_969[9];
    int32_t **l_968 = &l_969[3];
    VECTOR(int32_t, 8) l_972 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x79B326B3L), 0x79B326B3L), 0x79B326B3L, 1L, 0x79B326B3L);
    VECTOR(uint64_t, 8) l_996 = (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 1UL), 1UL), 1UL, 1UL, 1UL);
    VECTOR(uint64_t, 16) l_1000 = (VECTOR(uint64_t, 16))(0xA1752FB424BB269DL, (VECTOR(uint64_t, 4))(0xA1752FB424BB269DL, (VECTOR(uint64_t, 2))(0xA1752FB424BB269DL, 18446744073709551606UL), 18446744073709551606UL), 18446744073709551606UL, 0xA1752FB424BB269DL, 18446744073709551606UL, (VECTOR(uint64_t, 2))(0xA1752FB424BB269DL, 18446744073709551606UL), (VECTOR(uint64_t, 2))(0xA1752FB424BB269DL, 18446744073709551606UL), 0xA1752FB424BB269DL, 18446744073709551606UL, 0xA1752FB424BB269DL, 18446744073709551606UL);
    VECTOR(uint64_t, 8) l_1028 = (VECTOR(uint64_t, 8))(0xA9451B4EF0AEC780L, (VECTOR(uint64_t, 4))(0xA9451B4EF0AEC780L, (VECTOR(uint64_t, 2))(0xA9451B4EF0AEC780L, 0xD2E71149CC7227E7L), 0xD2E71149CC7227E7L), 0xD2E71149CC7227E7L, 0xA9451B4EF0AEC780L, 0xD2E71149CC7227E7L);
    VECTOR(uint64_t, 8) l_1029 = (VECTOR(uint64_t, 8))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0UL), 0UL), 0UL, 18446744073709551615UL, 0UL);
    VECTOR(uint64_t, 4) l_1043 = (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x2FC95F0FFEC1BF02L), 0x2FC95F0FFEC1BF02L);
    VECTOR(int16_t, 4) l_1061 = (VECTOR(int16_t, 4))(0x71E7L, (VECTOR(int16_t, 2))(0x71E7L, 9L), 9L);
    VECTOR(int16_t, 8) l_1064 = (VECTOR(int16_t, 8))((-7L), (VECTOR(int16_t, 4))((-7L), (VECTOR(int16_t, 2))((-7L), (-1L)), (-1L)), (-1L), (-7L), (-1L));
    VECTOR(int32_t, 4) l_1083 = (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), 9L), 9L);
    VECTOR(int32_t, 16) l_1085 = (VECTOR(int32_t, 16))(0x1CA9675CL, (VECTOR(int32_t, 4))(0x1CA9675CL, (VECTOR(int32_t, 2))(0x1CA9675CL, 0x4E9B8884L), 0x4E9B8884L), 0x4E9B8884L, 0x1CA9675CL, 0x4E9B8884L, (VECTOR(int32_t, 2))(0x1CA9675CL, 0x4E9B8884L), (VECTOR(int32_t, 2))(0x1CA9675CL, 0x4E9B8884L), 0x1CA9675CL, 0x4E9B8884L, 0x1CA9675CL, 0x4E9B8884L);
    int16_t *l_1089[1];
    VECTOR(int32_t, 8) l_1106 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 1L), 1L), 1L, 0L, 1L);
    uint32_t *l_1115 = &p_1338->g_128[3];
    uint32_t **l_1114[8];
    VECTOR(uint64_t, 16) l_1140 = (VECTOR(uint64_t, 16))(5UL, (VECTOR(uint64_t, 4))(5UL, (VECTOR(uint64_t, 2))(5UL, 0xC85F4F2D48574F6EL), 0xC85F4F2D48574F6EL), 0xC85F4F2D48574F6EL, 5UL, 0xC85F4F2D48574F6EL, (VECTOR(uint64_t, 2))(5UL, 0xC85F4F2D48574F6EL), (VECTOR(uint64_t, 2))(5UL, 0xC85F4F2D48574F6EL), 5UL, 0xC85F4F2D48574F6EL, 5UL, 0xC85F4F2D48574F6EL);
    int i, j;
    for (i = 0; i < 9; i++)
        l_969[i] = &p_1338->g_861;
    for (i = 0; i < 1; i++)
        l_1089[i] = &p_1338->g_46;
    for (i = 0; i < 8; i++)
        l_1114[i] = &l_1115;
    p_1338->g_232.y ^= (safe_mul_func_uint16_t_u_u((safe_lshift_func_int16_t_s_u(p_1338->g_128[2], 8)), (safe_add_func_uint32_t_u_u(((safe_mod_func_uint32_t_u_u((l_916 = (safe_lshift_func_int8_t_s_s((safe_unary_minus_func_int32_t_s((p_1338->g_36[1][3][0] = ((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 4))((*p_1338->g_204), ((p_6 && ((p_1338->g_81 = &p_1338->g_82) == l_911)) & l_912.s6), 0x3E7DFE81L, 0x58398D75L)).wxyywxzwwyyywyxx, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(0x3ED75B95L, 0x007908E0L)))), (-1L), 9L)))).yxyywwyyzzywxxyy))))).sb))), (l_914 = p_7)))), ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(0xE1E1D3D5L, 0x4B7B6EC2L)), 2UL, 4294967295UL)).y)) && (++(*p_1338->g_275))), (((safe_add_func_int16_t_s_s((p_1338->g_869.f1 , (safe_mod_func_int8_t_s_s((safe_lshift_func_uint8_t_u_s(((((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(l_925.s50e09c5f)).lo)).wxzyzxwx)).even)).x >= (safe_mul_func_int8_t_s_s(p_7, 0x43L))) ^ 0xBB8BL), 6)), FAKE_DIVERGE(p_1338->global_2_offset, get_global_id(2), 10)))), 1UL)) == 0x52B8L) , 3UL)))));
    for (p_1338->g_149 = 0; (p_1338->g_149 == 26); ++p_1338->g_149)
    { /* block id: 406 */
        int8_t l_932 = (-5L);
        int32_t l_933 = 0x3082D3FCL;
        int32_t l_934 = 0L;
        int32_t l_935 = 0L;
        int32_t l_936 = 0x2CCB65C6L;
        int32_t l_937 = 1L;
        int32_t l_938 = (-1L);
        int32_t l_939 = (-1L);
        int32_t l_940 = 0x283D962FL;
        int32_t l_941 = 0x2EC945E9L;
        int32_t l_942 = (-3L);
        int32_t l_943 = 0x52D98903L;
        int32_t l_944[4][5][4] = {{{0L,0L,0x1C5635A8L,0L},{0L,0L,0x1C5635A8L,0L},{0L,0L,0x1C5635A8L,0L},{0L,0L,0x1C5635A8L,0L},{0L,0L,0x1C5635A8L,0L}},{{0L,0L,0x1C5635A8L,0L},{0L,0L,0x1C5635A8L,0L},{0L,0L,0x1C5635A8L,0L},{0L,0L,0x1C5635A8L,0L},{0L,0L,0x1C5635A8L,0L}},{{0L,0L,0x1C5635A8L,0L},{0L,0L,0x1C5635A8L,0L},{0L,0L,0x1C5635A8L,0L},{0L,0L,0x1C5635A8L,0L},{0L,0L,0x1C5635A8L,0L}},{{0L,0L,0x1C5635A8L,0L},{0L,0L,0x1C5635A8L,0L},{0L,0L,0x1C5635A8L,0L},{0L,0L,0x1C5635A8L,0L},{0L,0L,0x1C5635A8L,0L}}};
        VECTOR(int16_t, 4) l_953 = (VECTOR(int16_t, 4))(0x5ED4L, (VECTOR(int16_t, 2))(0x5ED4L, 6L), 6L);
        int i, j, k;
        l_945--;
        (**p_1338->g_203) |= ((l_942 = p_1338->g_669.y) && (safe_rshift_func_uint16_t_u_s((p_7 ^ (safe_sub_func_int32_t_s_s(((VECTOR(int32_t, 2))(l_952.s54)).even, l_943))), ((VECTOR(int16_t, 16))(l_953.wwxxzxzzyyzzxxzz)).se)));
    }
    p_1338->g_234.z |= (safe_mul_func_uint8_t_u_u(((l_956 &= (**p_1338->g_203)) < (**p_1338->g_203)), (((((safe_mod_func_int32_t_s_s((0x11CB8AEB194EDB50L && (safe_rshift_func_int8_t_s_s((((VECTOR(uint32_t, 2))(0xE161503FL, 0xF9719FE5L)).hi , (safe_sub_func_int8_t_s_s(((VECTOR(int8_t, 4))(p_1338->g_963.s3520)).w, (~0x71L)))), p_6))), (safe_lshift_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_u((p_1338->g_378.s6 < (((*l_968) = &p_1338->g_861) != (void*)0)), (*p_1338->g_275))), 10)))) > p_6) == p_6) < 0x2EL) < 0x46L)));
    for (p_1338->g_151 = 14; (p_1338->g_151 >= (-23)); p_1338->g_151 = safe_sub_func_uint16_t_u_u(p_1338->g_151, 6))
    { /* block id: 416 */
        int16_t *l_974 = (void*)0;
        int16_t **l_975 = &l_974;
        int16_t *l_977 = &p_1338->g_46;
        int16_t **l_976 = &l_977;
        int32_t l_983 = 0x679503CBL;
        uint64_t *l_1013 = &p_1338->g_23;
        int32_t l_1020[3];
        VECTOR(uint64_t, 8) l_1045 = (VECTOR(uint64_t, 8))(18446744073709551606UL, (VECTOR(uint64_t, 4))(18446744073709551606UL, (VECTOR(uint64_t, 2))(18446744073709551606UL, 0x36D4178E14AF8E37L), 0x36D4178E14AF8E37L), 0x36D4178E14AF8E37L, 18446744073709551606UL, 0x36D4178E14AF8E37L);
        int32_t l_1048 = 0L;
        VECTOR(uint64_t, 2) l_1058 = (VECTOR(uint64_t, 2))(0xE1BDAF5DCFFB6C8FL, 0x7F877A7F2ACC8C7BL);
        VECTOR(int16_t, 8) l_1062 = (VECTOR(int16_t, 8))(0x51FFL, (VECTOR(int16_t, 4))(0x51FFL, (VECTOR(int16_t, 2))(0x51FFL, 0L), 0L), 0L, 0x51FFL, 0L);
        VECTOR(uint32_t, 2) l_1107 = (VECTOR(uint32_t, 2))(0x64435053L, 4294967295UL);
        VECTOR(int8_t, 4) l_1119 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x02L), 0x02L);
        VECTOR(int64_t, 2) l_1129 = (VECTOR(int64_t, 2))(0x435F807260DC37C8L, 2L);
        int64_t l_1150 = 0x22CB3D843A30BC93L;
        VECTOR(uint8_t, 8) l_1160 = (VECTOR(uint8_t, 8))(0x98L, (VECTOR(uint8_t, 4))(0x98L, (VECTOR(uint8_t, 2))(0x98L, 0x2DL), 0x2DL), 0x2DL, 0x98L, 0x2DL);
        uint32_t *l_1166 = (void*)0;
        int i;
        for (i = 0; i < 3; i++)
            l_1020[i] = 0x5EEB2E63L;
        if (((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 8))(l_972.s46616224)).s5750073620470346, ((VECTOR(int32_t, 4))(0x0FF8767AL, (GROUP_DIVERGE(2, 1) | (safe_unary_minus_func_int8_t_s(((((*l_975) = l_974) != ((*l_976) = (void*)0)) > ((VECTOR(uint16_t, 2))(0x250AL, 0x4A88L)).odd)))), 0x357EA0C9L, 0x42FA83ABL)).xzyzwywzywzywxxx))).sf)
        { /* block id: 419 */
            uint64_t l_1014 = 7UL;
            int32_t l_1017[1];
            int32_t l_1051 = 0x219B1947L;
            VECTOR(int16_t, 2) l_1063 = (VECTOR(int16_t, 2))(0x19C1L, 0x03C5L);
            uint16_t l_1076 = 0UL;
            uint16_t l_1078 = 1UL;
            int32_t l_1081[5][5][2] = {{{0x0439853EL,0x0439853EL},{0x0439853EL,0x0439853EL},{0x0439853EL,0x0439853EL},{0x0439853EL,0x0439853EL},{0x0439853EL,0x0439853EL}},{{0x0439853EL,0x0439853EL},{0x0439853EL,0x0439853EL},{0x0439853EL,0x0439853EL},{0x0439853EL,0x0439853EL},{0x0439853EL,0x0439853EL}},{{0x0439853EL,0x0439853EL},{0x0439853EL,0x0439853EL},{0x0439853EL,0x0439853EL},{0x0439853EL,0x0439853EL},{0x0439853EL,0x0439853EL}},{{0x0439853EL,0x0439853EL},{0x0439853EL,0x0439853EL},{0x0439853EL,0x0439853EL},{0x0439853EL,0x0439853EL},{0x0439853EL,0x0439853EL}},{{0x0439853EL,0x0439853EL},{0x0439853EL,0x0439853EL},{0x0439853EL,0x0439853EL},{0x0439853EL,0x0439853EL},{0x0439853EL,0x0439853EL}}};
            VECTOR(int32_t, 8) l_1086 = (VECTOR(int32_t, 8))(0x4F95A8AFL, (VECTOR(int32_t, 4))(0x4F95A8AFL, (VECTOR(int32_t, 2))(0x4F95A8AFL, (-6L)), (-6L)), (-6L), 0x4F95A8AFL, (-6L));
            VECTOR(uint64_t, 4) l_1091 = (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0xC8EB6FA6D4404768L), 0xC8EB6FA6D4404768L);
            uint16_t *l_1093 = (void*)0;
            uint16_t *l_1094 = &p_1338->g_247.f0;
            int i, j, k;
            for (i = 0; i < 1; i++)
                l_1017[i] = 0x4CCB964BL;
            if ((safe_lshift_func_uint16_t_u_s(((VECTOR(uint16_t, 16))(p_1338->g_980.s700d696d8f262bde)).sf, 3)))
            { /* block id: 420 */
                int32_t l_992 = 0x4E28EC18L;
                VECTOR(uint64_t, 2) l_998 = (VECTOR(uint64_t, 2))(0xBF94DE7399378172L, 1UL);
                int64_t *l_1003 = (void*)0;
                int64_t *l_1004 = (void*)0;
                int64_t *l_1005 = (void*)0;
                int64_t *l_1006[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                VECTOR(uint32_t, 4) l_1009 = (VECTOR(uint32_t, 4))(0xFDBF8658L, (VECTOR(uint32_t, 2))(0xFDBF8658L, 0xA7EFB03BL), 0xA7EFB03BL);
                VECTOR(int8_t, 8) l_1012 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x73L), 0x73L), 0x73L, 1L, 0x73L);
                uint64_t *l_1015 = (void*)0;
                uint64_t *l_1016 = (void*)0;
                uint16_t *l_1018 = &p_1338->g_247.f0;
                uint16_t *l_1019 = &p_1338->g_409.f0;
                VECTOR(uint64_t, 8) l_1027 = (VECTOR(uint64_t, 8))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551612UL), 18446744073709551612UL), 18446744073709551612UL, 18446744073709551615UL, 18446744073709551612UL);
                int16_t *l_1042[6];
                VECTOR(uint64_t, 8) l_1044 = (VECTOR(uint64_t, 8))(0xA8BC114ADAA566A8L, (VECTOR(uint64_t, 4))(0xA8BC114ADAA566A8L, (VECTOR(uint64_t, 2))(0xA8BC114ADAA566A8L, 0UL), 0UL), 0UL, 0xA8BC114ADAA566A8L, 0UL);
                uint64_t **l_1050 = &p_1338->g_81;
                uint64_t ***l_1049[4][4] = {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}};
                int i, j;
                for (i = 0; i < 6; i++)
                    l_1042[i] = (void*)0;
                (**p_1338->g_203) = ((((safe_add_func_uint16_t_u_u(p_1338->g_865.f0, (l_983 & (+(safe_rshift_func_int16_t_s_u(p_1338->g_189.y, 6)))))) , (((GROUP_DIVERGE(0, 1) , ((VECTOR(int16_t, 2))(1L, 2L)).hi) >= ((GROUP_DIVERGE(2, 1) || ((safe_sub_func_int32_t_s_s((((safe_rshift_func_uint16_t_u_u((p_1338->g_263.s7 = ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(65534UL, ((safe_add_func_int16_t_s_s((p_1338->g_46 = ((!l_992) > (safe_rshift_func_int16_t_s_u((safe_unary_minus_func_uint8_t_u((((*l_1019) = (((*l_1018) = ((l_1017[0] &= ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(add_sat(((VECTOR(uint64_t, 2))(rhadd(((VECTOR(uint64_t, 2))(l_996.s42)), ((VECTOR(uint64_t, 8))(1UL, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(min(((VECTOR(uint64_t, 2))(p_1338->g_997.s27)).yyyxyxxyxyyxxyyx, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(l_998.xyyyxxyy)).s2776021125664336))))).sd8)), ((VECTOR(uint64_t, 2))(0x948A7E33ADC183ADL, 0x9C1589F70D2E195AL)), ((VECTOR(uint64_t, 2))(0x43FDF7DC0DD60D0CL, 3UL)), 0xEF2A261ECF03ECC8L)).s55))).yyyx, ((VECTOR(uint64_t, 16))(0x1CD482569E21ED07L, 0xD0DF5FE150B710D1L, ((VECTOR(uint64_t, 4))(p_1338->g_999.s4005)), 0xF807BFF61F47DC6BL, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(mul_hi(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(l_1000.sd6)), (((l_983 = 0x38EF39A8B185B7C3L) || (((((safe_add_func_uint32_t_u_u((!(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 4))(l_1009.xyxx)))).y , (p_1338->g_304.s7 = ((safe_rshift_func_int8_t_s_u(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(min(((VECTOR(int8_t, 4))(l_1012.s3357)).ywxzzxxwzwywzwwx, ((VECTOR(int8_t, 2))(0x76L, (-1L))).yxyxyxyxxyyxxyxx))).s17)).hi, 6)) | ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(8UL, 4294967288UL, ((-7L) || (l_1013 == (void*)0)), ((VECTOR(uint32_t, 8))(0x164E4597L)), ((VECTOR(uint32_t, 4))(0x8BBA258FL)), 0xD998C638L)).lo)))).s7)))), 0x526B2D14L)) ^ (**p_1338->g_203)) , 0x00C9L) && p_1338->g_997.s2) != p_1338->g_378.s3)) , l_1014), p_7, ((VECTOR(uint64_t, 2))(0xD772548E32826586L)), ((VECTOR(uint64_t, 8))(0xA3E57997409811CAL)), 0xBFD17B8028F17297L, 0x3C29A1F2207A5D4BL)).lo)), ((VECTOR(uint64_t, 8))(0x133BD4CE252CD68DL))))).lo)), ((VECTOR(uint64_t, 2))(0xDBFDE9AC20B53569L)), 0UL, 0x862481344F88DD5DL, 0xA112135007D0C509L)).sa18a))).wzyxwxyxzxzxxzxw)).sf) , p_1338->g_379.x)) != 65533UL)) & l_1020[1]))), 14)))), p_1338->g_149)) > 4L), ((VECTOR(uint16_t, 4))(1UL)), 0x1687L, 65535UL)).s0074277306221102)).s8), l_1020[1])) || FAKE_DIVERGE(p_1338->group_1_offset, get_group_id(1), 10)) != p_5), p_1338->g_379.y)) & 0xCC3BCCC6L)) , 7L)) , (*p_1338->g_148))) , l_1009.z) >= l_992);
                l_1051 |= ((safe_div_func_int8_t_s_s(((safe_div_func_uint32_t_u_u(((VECTOR(uint32_t, 16))(0x6F09B814L, ((p_1338->g_869.f0 , p_1338->g_389.s5) == (((((l_992 |= ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(0x65L, (l_1017[0] ^ (safe_add_func_int8_t_s_s(l_983, (((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(hadd(((VECTOR(uint64_t, 4))(mad_hi(((VECTOR(uint64_t, 2))(0x224D1E1EAD91B054L, 0x9AC1EB69BC1B364CL)).yxxx, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(mad_sat(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(l_1027.s3663757212555343)).s8f)).yyxxxxyxyxxxyxxx, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(l_1028.s1740)), ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(l_1029.s0203711556235762)).hi)), ((VECTOR(uint64_t, 2))(0x502139A9E31A9EBBL, 4UL)), 0xDA66EC4E7A877B4CL, 0xE7558393CB5311DDL)), ((VECTOR(uint64_t, 2))(abs(((VECTOR(int64_t, 4))((safe_div_func_uint32_t_u_u(((safe_rshift_func_int16_t_s_s((safe_add_func_uint8_t_u_u((p_1338->g_108[0] ^ ((((safe_lshift_func_int8_t_s_u((safe_sub_func_int16_t_s_s((safe_mul_func_int16_t_s_s((p_1338->g_46 = ((VECTOR(int16_t, 2))(0x52EEL, 0x63D9L)).odd), (-1L))), ((((VECTOR(uint64_t, 8))(sub_sat(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(l_1043.xy)), 0xCE3556EBB7D11393L, 18446744073709551615UL)).xwwxwzwx, ((VECTOR(uint64_t, 4))(min(((VECTOR(uint64_t, 16))(l_1044.s1416055015663576)).sb70b, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(l_1045.s03)), l_1020[2], 0x6D1B5F498D56B39EL, ((((l_1020[1] ^= (safe_add_func_uint8_t_u_u(l_1048, (1L > 0x16L)))) | p_1338->g_667.s2) , l_998.y) == p_1338->g_997.s0), 9UL, ((VECTOR(uint64_t, 4))(0UL)), 0x5A422DF1C03B17F8L, 1UL, p_7, ((VECTOR(uint64_t, 2))(18446744073709551615UL)), 0UL)).s5ad7))).zyxwxwyz))).s0 , l_1049[0][0]) != (void*)0))), 1)) , p_1338->g_23) == p_5) < p_1338->g_358.s3)), (-1L))), 1)) != 0x5BL), l_1009.x)), 4L, 1L, 0x09498E18A7554030L)).lo))).yxxyxyyyyxyxyyxy))).sde)).xyxy, ((VECTOR(uint64_t, 4))(18446744073709551615UL))))).odd, ((VECTOR(uint64_t, 2))(18446744073709551612UL))))).yyyxxyyxxyxyyyxx)).s74)).lo , (-9L))))), (-4L), 0x08L)).hi)).lo) & 0x78L) != p_7) && l_1020[2]) && 0x1EL)), ((VECTOR(uint32_t, 4))(0x569B7D8CL)), 0UL, 0x74A0B2BBL, 0x25265560L, 0x3AA92069L, ((VECTOR(uint32_t, 4))(4294967294UL)), 1UL, 0UL)).s2, l_1044.s0)) || l_1020[2]), l_1027.s3)) || l_1014);
            }
            else
            { /* block id: 433 */
                uint16_t *l_1070 = (void*)0;
                uint16_t *l_1071 = &p_1338->g_687[1];
                int32_t l_1077 = 0x3E754433L;
                int64_t *l_1079 = (void*)0;
                int64_t *l_1080 = (void*)0;
                int32_t l_1082 = 4L;
                atomic_add(&p_1338->g_atomic_reduction[get_linear_group_id()], ((!((+(safe_sub_func_int64_t_s_s((l_1077 = ((safe_mul_func_uint16_t_u_u((p_7 , 1UL), (((*p_1338->g_148) = (safe_div_func_uint32_t_u_u((l_1017[0] > (l_1048 , ((p_7 != ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))(add_sat(((VECTOR(uint64_t, 2))(mad_sat(((VECTOR(uint64_t, 2))(l_1058.xx)), ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))((safe_add_func_int16_t_s_s(((VECTOR(int16_t, 8))(mul_hi(((VECTOR(int16_t, 4))(mad_sat(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(l_1061.zzzxwxxy)), 0L, p_1338->g_754, (-10L), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 8))(mul_hi(((VECTOR(int16_t, 8))(sub_sat(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(l_1062.s0465)).zyzxwwxy)).s33, ((VECTOR(int16_t, 16))(0x6C90L, ((VECTOR(int16_t, 8))(min(((VECTOR(int16_t, 16))(hadd(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_1063.xx)), 0x33C8L, (-1L))))).xywwxyxzxwywwwxy, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 4),((VECTOR(int16_t, 2))(l_1064.s14)).xxyy, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))((-1L), (-1L))).xyxy)), ((VECTOR(int16_t, 8))(p_1338->g_1065.xwyzzxzx)).lo))).even)).xyyxxyyyyxxxyxxy))).lo, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0x40C4L, (-2L))), 5L, 0x4CD3L)).wwywxyzx))), (safe_div_func_int64_t_s_s(((safe_add_func_uint64_t_u_u(1UL, ((+((**p_1338->g_203) = (((VECTOR(int16_t, 2))((-6L), (-1L))).hi || ((++(*l_1071)) || (~(safe_div_func_int32_t_s_s(0x21CECB6CL, p_7))))))) <= p_6))) != 0x17L), l_1076)), l_1077, (-1L), p_1338->g_670.s2, 0x4494L, 0x6588L, 1L)).s4c))), ((VECTOR(int16_t, 2))(0x671DL))))), 0x067AL, 1L)).zywzwxwz, ((VECTOR(int16_t, 8))(0x5248L))))), ((VECTOR(int16_t, 8))(0x439BL))))).s0577141705256166, (int16_t)l_983))).s0f)), ((VECTOR(int16_t, 2))(0x157EL)), 0x2785L)).s44)).xxxx, ((VECTOR(int16_t, 4))(0x145FL)), ((VECTOR(int16_t, 4))(0L))))).yxwywzyx, ((VECTOR(int16_t, 8))((-1L)))))).s7, p_7)), 18446744073709551615UL, 2UL, l_1020[0], 0x504710825580FEAEL, 0x1E8135C0BB6ACBCAL, ((VECTOR(uint64_t, 4))(0x25BA48D1A2DA2717L)), 18446744073709551610UL, 0x9840CB9B610B9C90L, 18446744073709551609UL, ((VECTOR(uint64_t, 2))(1UL)), 0x4D7DCAD196803EE5L)).s84)), ((VECTOR(uint64_t, 2))(0x7C66E7C8F0B8246BL))))).yxyxyxxyxxyxxxyy, ((VECTOR(uint64_t, 16))(0x1638F34F6A7980DAL))))))).even)).s4) == l_1078))), 0x631A4D61L))) < 255UL))) ^ p_6)), l_1081[3][1][1]))) == l_1082)) & l_1082));
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                if (get_linear_local_id() == 0)
                    p_1338->v_collective += p_1338->g_atomic_reduction[get_linear_group_id()];
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                l_983 ^= ((*p_1338->g_204) ^= ((VECTOR(int32_t, 16))(l_1083.zxwxxzwyxywzzwww)).s1);
                (*p_1338->g_203) = &l_914;
            }
            l_1081[3][1][1] = (l_1020[1] > (((p_1338->g_358.s7 ^= (l_983 = (((((VECTOR(int8_t, 4))(0x3BL, ((VECTOR(int8_t, 2))(0x01L, (-6L))), 0x4BL)).w ^ (safe_unary_minus_func_int32_t_s((p_5 = ((*p_1338->g_204) = ((void*)0 != &p_1338->g_108[2])))))) >= ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(l_1085.s34e6f949)), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(l_1086.s53750014)).s45, ((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))((-2L), 8L, (safe_lshift_func_int16_t_s_s((p_6 >= (((*p_1338->g_148) ^= (((l_1089[0] != (p_1338->g_1090[5] = (void*)0)) & (((FAKE_DIVERGE(p_1338->global_2_offset, get_global_id(2), 10) , (void*)0) != (void*)0) & ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(mad_hi(((VECTOR(uint64_t, 16))(l_1091.yzzxxzwyxwxxzyzy)).s0117, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(upsample(((VECTOR(uint32_t, 2))(mad_sat(((VECTOR(uint32_t, 16))(min(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(p_1338->g_1092.sfc5f121416690fc4)).odd)).s5572720217012700, ((VECTOR(uint32_t, 16))(abs(((VECTOR(uint32_t, 16))(rhadd(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))((((*l_1094) = ((p_1338->g_379.y >= p_7) & p_6)) > (-1L)), 0x313F4F57L, 0x7685E42CL, 0x1762879AL)).hi)), 0x22BC7018L, 4294967290UL)).wwwyxzywyyxxzyxw, ((VECTOR(uint32_t, 16))(0x6C71C172L))))))))))).s65, ((VECTOR(uint32_t, 2))(0x34A36213L)), ((VECTOR(uint32_t, 2))(4294967290UL))))), ((VECTOR(uint32_t, 2))(9UL))))), 1UL, ((VECTOR(uint64_t, 4))(18446744073709551612UL)), 1UL, ((VECTOR(uint64_t, 4))(0x221164DB111A2D1AL)), ((VECTOR(uint64_t, 4))(18446744073709551613UL)))).sacf0, ((VECTOR(uint64_t, 4))(0UL))))), ((VECTOR(uint64_t, 4))(18446744073709551615UL)), ((VECTOR(uint64_t, 2))(0xB4ED49423080CD74L)), ((VECTOR(uint64_t, 2))(0x119858C4A2308385L)), l_1020[1], ((VECTOR(uint64_t, 2))(0x82EC7235E4E90463L)), 18446744073709551614UL)))))).sb)) <= l_1062.s1)) & l_1020[1])), 13)), 0L, 9L, p_7, (-7L), 0x4217L)).hi)), ((VECTOR(uint16_t, 4))(0UL))))).odd, ((VECTOR(int32_t, 2))((-1L)))))).xyyxxyyy)))), ((VECTOR(int32_t, 8))(0x3863BA65L))))).s40, ((VECTOR(int32_t, 2))(0x74558850L))))).yxxxxxyxxyxxxyxy, ((VECTOR(int32_t, 16))((-1L)))))).sd1e4)).y) == 255UL))) >= 0x29BBL) ^ p_1338->g_754));
        }
        else
        { /* block id: 451 */
            return p_5;
        }
        if (p_7)
            break;
        if ((*p_1338->g_204))
            continue;
        for (p_1338->g_861 = 17; (p_1338->g_861 != 12); p_1338->g_861--)
        { /* block id: 458 */
            VECTOR(int16_t, 8) l_1101 = (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0L), 0L), 0L, 0L, 0L);
            VECTOR(int16_t, 16) l_1116 = (VECTOR(int16_t, 16))(0x5734L, (VECTOR(int16_t, 4))(0x5734L, (VECTOR(int16_t, 2))(0x5734L, 0x274FL), 0x274FL), 0x274FL, 0x5734L, 0x274FL, (VECTOR(int16_t, 2))(0x5734L, 0x274FL), (VECTOR(int16_t, 2))(0x5734L, 0x274FL), 0x5734L, 0x274FL, 0x5734L, 0x274FL);
            int32_t ***l_1128 = (void*)0;
            int32_t ****l_1127 = &l_1128;
            int64_t *l_1132[7][4][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
            VECTOR(uint64_t, 8) l_1141 = (VECTOR(uint64_t, 8))(0xD852DA6017C55867L, (VECTOR(uint64_t, 4))(0xD852DA6017C55867L, (VECTOR(uint64_t, 2))(0xD852DA6017C55867L, 0xD9AA5A5D2BAB8B2CL), 0xD9AA5A5D2BAB8B2CL), 0xD9AA5A5D2BAB8B2CL, 0xD852DA6017C55867L, 0xD9AA5A5D2BAB8B2CL);
            uint64_t l_1153 = 0x262918F4AEFC00CEL;
            int i, j, k;
            (**p_1338->g_203) = (safe_mod_func_int64_t_s_s((p_1338->g_comm_values[p_1338->tid] = (p_1338->g_1133 ^= (safe_div_func_uint8_t_u_u((l_1101.s5 == (safe_add_func_uint16_t_u_u((((safe_div_func_int32_t_s_s(((VECTOR(int32_t, 4))(l_1106.s7702)).y, (p_1338->g_304.s3 = ((VECTOR(uint32_t, 8))(l_1107.yyyyxxxx)).s7))) < ((FAKE_DIVERGE(p_1338->global_0_offset, get_global_id(0), 10) , ((0x40B4L == (safe_div_func_uint64_t_u_u(((+((safe_sub_func_int32_t_s_s(((void*)0 == &p_1338->g_149), 8UL)) < ((safe_div_func_uint64_t_u_u((l_1114[4] != (((VECTOR(int16_t, 8))(hadd(((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(l_1116.s6bb3)).zwwwyxwx)), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 2))(9L, (-7L))), ((VECTOR(int16_t, 4))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 4),((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(0x69FAL, (-9L), 0L, (safe_div_func_int8_t_s_s((((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 4))(l_1119.xzxx)).xzyyzywxywwwxywy))).s5 != (safe_div_func_uint8_t_u_u(((safe_mul_func_int16_t_s_s(p_6, (safe_div_func_uint32_t_u_u((&p_1338->g_203 != ((*l_1127) = (((p_1338->g_1126.z |= ((void*)0 == l_1089[0])) && p_1338->g_130.y) , (void*)0))), p_1338->g_378.s3)))) > l_1116.s1), p_1338->g_379.y))), l_1129.x)), (-7L), 4L, 0x73D0L, 0x036DL)).even)), ((VECTOR(int16_t, 4))(0L)), ((VECTOR(int16_t, 4))(0L))))).odd))).xxyy)).yxywxyyy, ((VECTOR(int16_t, 8))(0x11A4L))))), ((VECTOR(int16_t, 8))(1L))))).s0 , p_1338->g_1130)), p_7)) <= p_6))) & 0x6FA91167L), 0xDC2465A3C6F3F88DL))) & FAKE_DIVERGE(p_1338->global_2_offset, get_global_id(2), 10))) <= p_1338->g_379.x)) > p_6), 65533UL))), p_5)))), p_1338->g_378.s7));
            (*p_1338->g_204) = (safe_sub_func_uint16_t_u_u((p_1338->g_387.s7 , 65535UL), ((safe_add_func_uint64_t_u_u((((1L ^ ((safe_sub_func_uint64_t_u_u(((*l_911) = ((VECTOR(uint64_t, 16))(rotate(((VECTOR(uint64_t, 2))(l_1140.sdc)).xxxyxxyxyyyxxxxy, ((VECTOR(uint64_t, 8))(l_1141.s21744425)).s5214347522560066))).s7), (safe_mul_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u((safe_rshift_func_int8_t_s_u((((((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(0UL, 4294967295UL, ((VECTOR(uint32_t, 4))(0xFD18C9BAL, 0x4A1775ACL, 4294967295UL, 0xCF8AFD52L)), 6UL, 8UL)).odd)).z > (*p_1338->g_204)) || ((safe_rshift_func_uint8_t_u_u(((**p_1338->g_203) , p_5), (~p_7))) <= 0x346515E3CDE5DBD4L)) , p_7), p_7)), 2)), p_5)))) , (-1L))) , FAKE_DIVERGE(p_1338->global_0_offset, get_global_id(0), 10)) > 0xE0L), l_1150)) ^ (*p_1338->g_275))));
            for (p_1338->g_1133 = (-1); (p_1338->g_1133 > 13); ++p_1338->g_1133)
            { /* block id: 469 */
                uint16_t *l_1164 = (void*)0;
                uint16_t *l_1165[2];
                int i;
                for (i = 0; i < 2; i++)
                    l_1165[i] = &p_1338->g_328.f0;
                l_1153--;
                (*p_1338->g_204) = ((safe_lshift_func_int16_t_s_s((((((*p_1338->g_148) = ((*p_1338->g_1130) == (l_1166 = func_119((((safe_rshift_func_int8_t_s_u(p_7, FAKE_DIVERGE(p_1338->local_2_offset, get_local_id(2), 10))) == (((0UL ^ ((((*p_1338->g_148) = ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(l_1160.s75)), 0x22L, p_6, 0x66L, 0xFAL, 0x1CL, (safe_unary_minus_func_uint64_t_u(p_5)), (p_5 <= (0xC3CC98C9L != (safe_mod_func_uint8_t_u_u(((((l_983 = p_6) == ((0UL > 1UL) ^ l_1160.s4)) == p_5) < 0x6C1F74DF9C229842L), p_5)))), ((VECTOR(uint8_t, 4))(0xCEL)), ((VECTOR(uint8_t, 2))(0x7DL)), 0x0CL)).sc) < GROUP_DIVERGE(0, 1)) || p_6)) | 0x1A55E02AL) , p_1338->g_189.x)) == p_6), p_1338)))) < 0L) , p_6) < l_1129.x), 4)) | p_1338->g_189.x);
            }
        }
    }
    return p_1338->g_70.s3;
}


/* ------------------------------------------ */
/* 
 * reads : p_1338->g_28 p_1338->g_29 p_1338->g_36 p_1338->g_70 p_1338->l_comm_values p_1338->g_comm_values p_1338->g_81 p_1338->g_46 p_1338->g_82 p_1338->g_108 p_1338->g_128 p_1338->g_130 p_1338->g_96 p_1338->g_148 p_1338->g_165 p_1338->g_87 p_1338->g_181 p_1338->g_189 p_1338->g_190 p_1338->g_191 p_1338->g_23 p_1338->g_203 p_1338->g_215 p_1338->g_149 p_1338->g_204 p_1338->g_151 p_1338->g_227 p_1338->g_232 p_1338->g_233 p_1338->g_234 p_1338->g_247 p_1338->g_254 p_1338->g_263 p_1338->g_265 p_1338->g_284 p_1338->g_304 p_1338->g_310 p_1338->g_328 p_1338->g_343 p_1338->g_275 p_1338->g_358 p_1338->g_378 p_1338->g_379 p_1338->g_387 p_1338->g_389 p_1338->g_390 p_1338->g_391 p_1338->g_408 p_1338->g_687 p_1338->g_710 p_1338->g_754 p_1338->g_865 p_1338->g_866 p_1338->g_869 p_1338->g_669
 * writes: p_1338->g_28 p_1338->g_36 p_1338->g_46 p_1338->g_23 p_1338->g_87 p_1338->g_96 p_1338->g_108 p_1338->g_148 p_1338->g_151 p_1338->g_165 p_1338->g_81 p_1338->g_149 p_1338->g_227 p_1338->g_82 p_1338->g_275 p_1338->g_204 p_1338->g_247 p_1338->g_409 p_1338->g_328.f0 p_1338->g_687 p_1338->g_869 p_1338->g_128
 */
int8_t  func_10(int32_t  p_11, uint64_t  p_12, struct S1 * p_1338)
{ /* block id: 9 */
    VECTOR(uint64_t, 8) l_33 = (VECTOR(uint64_t, 8))(18446744073709551606UL, (VECTOR(uint64_t, 4))(18446744073709551606UL, (VECTOR(uint64_t, 2))(18446744073709551606UL, 18446744073709551610UL), 18446744073709551610UL), 18446744073709551610UL, 18446744073709551606UL, 18446744073709551610UL);
    int32_t l_34 = 4L;
    int32_t *l_35 = &p_1338->g_36[3][7][0];
    uint64_t *l_43 = &p_1338->g_23;
    int64_t l_44 = 4L;
    int16_t *l_45 = &p_1338->g_46;
    uint64_t *l_898 = (void*)0;
    int i;
    (*l_35) |= (safe_lshift_func_int16_t_s_s((l_34 = (((VECTOR(uint64_t, 16))(l_33.s6150663300372205)).s8 & func_26(&p_1338->g_23, p_1338))), 10));
    atomic_add(&p_1338->l_atomic_reduction[0], ((((safe_rshift_func_int8_t_s_s((*l_35), ((safe_lshift_func_int16_t_s_u(((*l_45) = (safe_rshift_func_int16_t_s_s((l_43 == (void*)0), l_44))), 8)) == 0x76L))) , ((((l_43 != (l_898 = func_47(p_11, (((void*)0 == (*p_1338->g_29)) , 7L), &p_1338->g_36[0][7][2], &p_1338->g_23, p_12, p_1338))) <= 0UL) < 1UL) && p_1338->g_130.x)) > p_11) , (*l_35)) + get_linear_global_id());
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (get_linear_local_id() == 0)
        p_1338->v_collective += p_1338->l_atomic_reduction[0];
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    return p_1338->g_669.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_1338->g_28 p_1338->g_29
 * writes: p_1338->g_28
 */
uint32_t  func_26(uint64_t * p_27, struct S1 * p_1338)
{ /* block id: 6 */
    int32_t l_30 = 0x5F0E77DAL;
    (*p_1338->g_29) = ((6UL >= 0x56A9B03BL) , p_1338->g_28);
    return l_30;
}


/* ------------------------------------------ */
/* 
 * reads : p_1338->g_70 p_1338->l_comm_values p_1338->g_comm_values p_1338->g_81 p_1338->g_28 p_1338->g_29 p_1338->g_46 p_1338->g_82 p_1338->g_36 p_1338->g_108 p_1338->g_128 p_1338->g_130 p_1338->g_96 p_1338->g_148 p_1338->g_165 p_1338->g_87 p_1338->g_181 p_1338->g_189 p_1338->g_190 p_1338->g_191 p_1338->g_23 p_1338->g_203 p_1338->g_215 p_1338->g_149 p_1338->g_204 p_1338->g_151 p_1338->g_227 p_1338->g_232 p_1338->g_233 p_1338->g_234 p_1338->g_247 p_1338->g_254 p_1338->g_263 p_1338->g_265 p_1338->g_284 p_1338->g_304 p_1338->g_310 p_1338->g_328 p_1338->g_343 p_1338->g_275 p_1338->g_358 p_1338->g_378 p_1338->g_379 p_1338->g_387 p_1338->g_389 p_1338->g_390 p_1338->g_391 p_1338->g_408 p_1338->g_687 p_1338->g_710 p_1338->g_754 p_1338->g_865 p_1338->g_866 p_1338->g_869
 * writes: p_1338->g_23 p_1338->g_28 p_1338->g_87 p_1338->g_36 p_1338->g_96 p_1338->g_108 p_1338->g_46 p_1338->g_148 p_1338->g_151 p_1338->g_165 p_1338->g_81 p_1338->g_149 p_1338->g_227 p_1338->g_82 p_1338->g_275 p_1338->g_204 p_1338->g_247 p_1338->g_409 p_1338->g_328.f0 p_1338->g_687 p_1338->g_869 p_1338->g_128
 */
uint64_t * func_47(uint32_t  p_48, int64_t  p_49, int32_t * p_50, uint64_t * p_51, int64_t  p_52, struct S1 * p_1338)
{ /* block id: 13 */
    int32_t *l_53 = (void*)0;
    int32_t l_54 = 0x737D796EL;
    int32_t l_55 = 0x591A4AC1L;
    int32_t *l_56[4][1];
    int32_t l_57 = 0x7CB2C1D3L;
    int32_t l_58 = 0L;
    uint32_t l_59 = 1UL;
    VECTOR(int16_t, 2) l_68 = (VECTOR(int16_t, 2))(0x6531L, 1L);
    VECTOR(int16_t, 4) l_69 = (VECTOR(int16_t, 4))(0x3DABL, (VECTOR(int16_t, 2))(0x3DABL, 0x516CL), 0x516CL);
    VECTOR(uint16_t, 4) l_83 = (VECTOR(uint16_t, 4))(0xEB6CL, (VECTOR(uint16_t, 2))(0xEB6CL, 0UL), 0UL);
    int8_t l_84[2];
    int32_t l_85 = 0x0A01F12AL;
    uint32_t *l_86[4];
    int i, j;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 1; j++)
            l_56[i][j] = &p_1338->g_36[0][7][1];
    }
    for (i = 0; i < 2; i++)
        l_84[i] = 0L;
    for (i = 0; i < 4; i++)
        l_86[i] = (void*)0;
    l_59++;
    (*p_1338->g_203) = func_62((p_1338->g_87 = (((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))((-1L), 0L)), ((VECTOR(int16_t, 2))(l_68.yy)), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(0x4067L, 4L, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(l_69.wwyyzxxwyzywzzzw)).s9d)).yyyx)), ((VECTOR(int16_t, 2))(rotate(((VECTOR(int16_t, 16))(rhadd(((VECTOR(int16_t, 4))(add_sat(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(p_1338->g_70.see33)), p_49, 0x3095L, 0x1D60L, 1L)).hi, ((VECTOR(int16_t, 2))(upsample(((VECTOR(int8_t, 8))(p_1338->g_70.sc, p_1338->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1338->tid, 20))], ((safe_sub_func_int32_t_s_s(((((*p_51) = (safe_rshift_func_uint16_t_u_s(p_49, 12))) | (((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x4DA42CEDL, (-7L))), 0x415673F5L, 0x405CDAFBL)).z & ((safe_add_func_uint32_t_u_u(((safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))((p_1338->g_comm_values[p_1338->tid] , (safe_add_func_uint64_t_u_u(func_26(p_1338->g_81, p_1338), 0x462F16C98A276184L))), ((VECTOR(uint16_t, 4))(rhadd(((VECTOR(uint16_t, 2))(l_83.yw)).xyxx, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(1UL, 0x465DL)).yxxy))))), (p_1338->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1338->tid, 20))] | p_1338->g_70.s0), p_1338->g_70.s9, 0xDFE2L, 65532UL, 0xEDB3L, 0xEAE7L, 0UL, FAKE_DIVERGE(p_1338->group_0_offset, get_group_id(0), 10), 4UL, 0x1DB4L, 0x6C24L)).s7, ((VECTOR(uint16_t, 2))(65528UL)), 0UL)), 65532UL, ((VECTOR(uint16_t, 2))(2UL)), 65531UL)).s6, p_1338->g_46)) < (*p_1338->g_81)), 0L)) || p_1338->g_70.sf))) != l_84[0]), 0xA8B53E2DL)) , p_1338->g_36[4][5][1]), ((VECTOR(int8_t, 4))(0L)), (-1L))).s12, ((VECTOR(uint8_t, 2))(0x82L))))).yxxx))).xyzxzzwyyyywxzzy, ((VECTOR(int16_t, 16))(0x47F7L))))).sc8, ((VECTOR(int16_t, 2))(0x12F5L))))), ((VECTOR(int16_t, 2))(0x6876L)), ((VECTOR(int16_t, 4))((-9L))), 0x60A5L, 0x3C0FL)).even)), 0x2BBFL, p_1338->g_36[3][7][0], p_1338->g_36[6][2][2], p_1338->g_36[3][7][0], p_48, l_85, 1L, 1L)).s72)), 0x62EDL, 0x63F7L)).s56, ((VECTOR(int16_t, 2))(0x7D25L))))).yxxy)).z ^ p_1338->g_comm_values[p_1338->tid])), &p_1338->g_82, p_52, p_49, p_1338->g_36[3][7][0], p_1338);
    return &p_1338->g_165;
}


/* ------------------------------------------ */
/* 
 * reads : p_1338->g_36 p_1338->g_28 p_1338->g_29 p_1338->g_108 p_1338->g_81 p_1338->g_82 p_1338->g_128 p_1338->g_130 p_1338->l_comm_values p_1338->g_70 p_1338->g_96 p_1338->g_148 p_1338->g_165 p_1338->g_87 p_1338->g_181 p_1338->g_189 p_1338->g_190 p_1338->g_191 p_1338->g_23 p_1338->g_203 p_1338->g_215 p_1338->g_149 p_1338->g_204 p_1338->g_151 p_1338->g_227 p_1338->g_46 p_1338->g_232 p_1338->g_233 p_1338->g_234 p_1338->g_247 p_1338->g_254 p_1338->g_263 p_1338->g_265 p_1338->g_284 p_1338->g_304 p_1338->g_310 p_1338->g_328 p_1338->g_343 p_1338->g_275 p_1338->g_358 p_1338->g_378 p_1338->g_379 p_1338->g_387 p_1338->g_389 p_1338->g_390 p_1338->g_391 p_1338->g_408 p_1338->g_687 p_1338->g_710 p_1338->g_754 p_1338->g_865 p_1338->g_866 p_1338->g_869
 * writes: p_1338->g_36 p_1338->g_28 p_1338->g_96 p_1338->g_108 p_1338->g_46 p_1338->g_148 p_1338->g_151 p_1338->g_165 p_1338->g_87 p_1338->g_81 p_1338->g_149 p_1338->g_227 p_1338->g_82 p_1338->g_275 p_1338->g_204 p_1338->g_247 p_1338->g_409 p_1338->g_328.f0 p_1338->g_687 p_1338->g_23 p_1338->g_869 p_1338->g_128
 */
int32_t * func_62(uint32_t  p_63, uint64_t * p_64, uint16_t  p_65, int32_t  p_66, int64_t  p_67, struct S1 * p_1338)
{ /* block id: 17 */
    int32_t *l_88 = &p_1338->g_36[5][5][2];
    uint8_t *l_95 = (void*)0;
    int32_t ***l_690 = &p_1338->g_203;
    uint64_t *l_695 = (void*)0;
    int8_t l_696 = 0x04L;
    int32_t l_699 = 1L;
    int32_t l_700 = 0x09B89852L;
    int32_t l_701 = 0x36EDE4E3L;
    int32_t l_702[3];
    VECTOR(uint32_t, 4) l_736 = (VECTOR(uint32_t, 4))(0x14541862L, (VECTOR(uint32_t, 2))(0x14541862L, 0xA9D0B2EFL), 0xA9D0B2EFL);
    uint32_t *l_894 = (void*)0;
    uint32_t **l_893[2][3];
    int i, j;
    for (i = 0; i < 3; i++)
        l_702[i] = (-1L);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 3; j++)
            l_893[i][j] = &l_894;
    }
    (*l_88) ^= 0x1DCF4DCFL;
    (*p_1338->g_203) = func_89(((*l_88) = func_26(&p_1338->g_23, p_1338)), p_67, p_63, (p_1338->g_96[1] = 0x4D8866DC531F22FFL), p_67, p_1338);
    if ((safe_sub_func_uint8_t_u_u((((-3L) || FAKE_DIVERGE(p_1338->group_2_offset, get_group_id(2), 10)) < (((((void*)0 != l_690) , 65527UL) & p_1338->g_304.s6) && (safe_sub_func_uint64_t_u_u((((***l_690) , (safe_sub_func_int16_t_s_s(((void*)0 != l_695), p_1338->g_189.y))) > FAKE_DIVERGE(p_1338->local_0_offset, get_local_id(0), 10)), l_696)))), p_65)))
    { /* block id: 275 */
        int32_t *l_697 = &p_1338->g_96[1];
        int32_t *l_698[9];
        uint64_t l_703 = 0x86421625CCB5FEDBL;
        int i;
        for (i = 0; i < 9; i++)
            l_698[i] = &p_1338->g_96[1];
        l_703++;
        (**p_1338->g_203) ^= 8L;
    }
    else
    { /* block id: 278 */
        uint64_t *l_711 = &p_1338->g_23;
        uint8_t **l_714 = &l_95;
        uint8_t ***l_715 = &l_714;
        VECTOR(int8_t, 16) l_721 = (VECTOR(int8_t, 16))(0x56L, (VECTOR(int8_t, 4))(0x56L, (VECTOR(int8_t, 2))(0x56L, 0x6EL), 0x6EL), 0x6EL, 0x56L, 0x6EL, (VECTOR(int8_t, 2))(0x56L, 0x6EL), (VECTOR(int8_t, 2))(0x56L, 0x6EL), 0x56L, 0x6EL, 0x56L, 0x6EL);
        uint32_t *l_745 = (void*)0;
        int32_t l_897[5][9] = {{0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L},{0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L},{0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L},{0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L},{0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L,0x13EA2BA2L}};
        int i, j;
        (*l_88) &= ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),int32_t,((VECTOR(int32_t, 8))(3L, 0x118D1CD2L, (safe_lshift_func_uint16_t_u_s((safe_rshift_func_uint16_t_u_u(((~((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(p_1338->g_710.yxyxyyyyyxyyxxxx)).sd1d6)).z) < ((p_67 > p_65) > (p_65 ^ (p_67 | (***l_690))))), (((p_67 , l_711) == ((safe_mul_func_int8_t_s_s(0x68L, p_67)) , (void*)0)) < p_1338->g_263.s4))), 4)), ((VECTOR(int32_t, 2))(0x4B77C0A8L)), ((VECTOR(int32_t, 2))(0x3573EE99L)), (-1L))).s24, (int32_t)p_65, (int32_t)(*p_1338->g_204)))).yxyxyyxx)), ((VECTOR(int32_t, 8))(0x3E234A2EL))))))).s1;
        (*l_715) = l_714;
        for (p_65 = 0; (p_65 != 4); p_65++)
        { /* block id: 283 */
            int8_t l_734 = 1L;
            int32_t ****l_755 = &l_690;
            int16_t *l_756 = (void*)0;
            int16_t *l_757 = (void*)0;
            int16_t *l_758[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int i, j;
            (*p_1338->g_204) &= 0x71E0382AL;
            if ((+p_67))
            { /* block id: 285 */
                return (*p_1338->g_203);
            }
            else
            { /* block id: 287 */
                uint32_t l_718 = 4294967295UL;
                uint64_t **l_726 = &l_695;
                VECTOR(uint32_t, 16) l_735 = (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 4294967288UL), 4294967288UL), 4294967288UL, 1UL, 4294967288UL, (VECTOR(uint32_t, 2))(1UL, 4294967288UL), (VECTOR(uint32_t, 2))(1UL, 4294967288UL), 1UL, 4294967288UL, 1UL, 4294967288UL);
                int8_t *l_743 = (void*)0;
                int8_t *l_744 = &p_1338->g_151;
                int i;
                if (l_718)
                    break;
                (**l_690) = ((safe_lshift_func_int8_t_s_u(((*l_744) |= ((VECTOR(int8_t, 16))(safe_clamp_func(VECTOR(int8_t, 16),int8_t,((VECTOR(int8_t, 2))(l_721.sae)).xyyxyyyxyxyyyyyy, (int8_t)(safe_div_func_uint16_t_u_u(p_1338->g_181.y, (safe_div_func_int8_t_s_s((((*l_726) = p_64) != p_64), ((safe_div_func_uint8_t_u_u((safe_unary_minus_func_uint64_t_u((((p_1338->g_36[8][5][2] > ((safe_sub_func_int16_t_s_s((l_718 , (safe_rshift_func_int8_t_s_u((l_734 , (((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(upsample(((VECTOR(uint32_t, 4))(l_735.s61d9)), ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(l_736.xxxxwzyz)).s12)).yxyx))))).z , p_1338->g_687[5])), 6))), (safe_mul_func_uint8_t_u_u(((((safe_add_func_uint64_t_u_u(((((safe_rshift_func_uint8_t_u_u((((0L != p_67) && (*l_88)) | (*p_1338->g_204)), FAKE_DIVERGE(p_1338->global_2_offset, get_global_id(2), 10))) && p_63) , p_66) <= (*l_88)), p_1338->g_46)) , p_66) >= p_67) ^ (**p_1338->g_203)), p_67)))) | (*p_64))) > l_721.sf) != l_721.s1))), l_734)) , p_1338->g_36[3][7][0]))))), (int8_t)0x08L))).s3), 6)) , (**l_690));
            }
            if (l_734)
                continue;
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            p_1338->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 20)), permutations[(safe_mod_func_uint32_t_u_u(((((*p_1338->g_29) != ((((*p_64) = 1UL) < ((*l_711) = 18446744073709551607UL)) , (**l_690))) > ((void*)0 == l_745)) , ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))((((*l_88) = (safe_sub_func_int8_t_s_s((safe_sub_func_int8_t_s_s((l_721.s9 >= 0x99474FB1L), (((safe_add_func_uint8_t_u_u(((~((safe_add_func_int64_t_s_s(((*l_88) ^ 0x7CL), p_66)) , 65526UL)) & p_1338->g_754), 0x2CL)) , (void*)0) != l_755))), p_65))) >= 5UL), p_65, 0xF8158EE2L, 0xE0339E92L)).lo)).lo), 10))][(safe_mod_func_uint32_t_u_u(p_1338->tid, 20))]));
        }
        if ((*p_1338->g_204))
        { /* block id: 301 */
            for (p_66 = 0; (p_66 >= (-28)); --p_66)
            { /* block id: 304 */
                if (l_721.s7)
                    break;
            }
        }
        else
        { /* block id: 307 */
            VECTOR(int16_t, 16) l_859 = (VECTOR(int16_t, 16))(0x51DDL, (VECTOR(int16_t, 4))(0x51DDL, (VECTOR(int16_t, 2))(0x51DDL, 1L), 1L), 1L, 0x51DDL, 1L, (VECTOR(int16_t, 2))(0x51DDL, 1L), (VECTOR(int16_t, 2))(0x51DDL, 1L), 0x51DDL, 1L, 0x51DDL, 1L);
            int32_t *l_864 = &p_1338->g_96[0];
            int i;
            if ((atomic_inc(&p_1338->g_atomic_input[80 * get_linear_group_id() + 12]) == 9))
            { /* block id: 309 */
                int32_t l_761 = 0x24BF9405L;
                int32_t *l_806 = &l_761;
                int32_t *l_807 = &l_761;
                for (l_761 = 0; (l_761 > 2); l_761 = safe_add_func_uint16_t_u_u(l_761, 1))
                { /* block id: 312 */
                    uint8_t l_766[4] = {0xD4L,0xD4L,0xD4L,0xD4L};
                    uint8_t *l_765[7] = {&l_766[3],&l_766[1],&l_766[3],&l_766[3],&l_766[1],&l_766[3],&l_766[3]};
                    uint8_t **l_764[5][4][6] = {{{&l_765[1],&l_765[1],&l_765[1],&l_765[1],&l_765[3],&l_765[1]},{&l_765[1],&l_765[1],&l_765[1],&l_765[1],&l_765[3],&l_765[1]},{&l_765[1],&l_765[1],&l_765[1],&l_765[1],&l_765[3],&l_765[1]},{&l_765[1],&l_765[1],&l_765[1],&l_765[1],&l_765[3],&l_765[1]}},{{&l_765[1],&l_765[1],&l_765[1],&l_765[1],&l_765[3],&l_765[1]},{&l_765[1],&l_765[1],&l_765[1],&l_765[1],&l_765[3],&l_765[1]},{&l_765[1],&l_765[1],&l_765[1],&l_765[1],&l_765[3],&l_765[1]},{&l_765[1],&l_765[1],&l_765[1],&l_765[1],&l_765[3],&l_765[1]}},{{&l_765[1],&l_765[1],&l_765[1],&l_765[1],&l_765[3],&l_765[1]},{&l_765[1],&l_765[1],&l_765[1],&l_765[1],&l_765[3],&l_765[1]},{&l_765[1],&l_765[1],&l_765[1],&l_765[1],&l_765[3],&l_765[1]},{&l_765[1],&l_765[1],&l_765[1],&l_765[1],&l_765[3],&l_765[1]}},{{&l_765[1],&l_765[1],&l_765[1],&l_765[1],&l_765[3],&l_765[1]},{&l_765[1],&l_765[1],&l_765[1],&l_765[1],&l_765[3],&l_765[1]},{&l_765[1],&l_765[1],&l_765[1],&l_765[1],&l_765[3],&l_765[1]},{&l_765[1],&l_765[1],&l_765[1],&l_765[1],&l_765[3],&l_765[1]}},{{&l_765[1],&l_765[1],&l_765[1],&l_765[1],&l_765[3],&l_765[1]},{&l_765[1],&l_765[1],&l_765[1],&l_765[1],&l_765[3],&l_765[1]},{&l_765[1],&l_765[1],&l_765[1],&l_765[1],&l_765[3],&l_765[1]},{&l_765[1],&l_765[1],&l_765[1],&l_765[1],&l_765[3],&l_765[1]}}};
                    uint8_t **l_767 = &l_765[1];
                    uint8_t **l_768 = &l_765[1];
                    uint64_t l_791 = 7UL;
                    uint64_t l_792 = 18446744073709551611UL;
                    int32_t l_793 = 0x6015D7B9L;
                    uint32_t l_794 = 0UL;
                    uint32_t l_795 = 4UL;
                    int32_t l_796 = (-9L);
                    int16_t l_797 = 0L;
                    int64_t l_798 = 0x06BCC53BD1672ADEL;
                    int32_t l_799 = 0x2ECD74EFL;
                    int32_t l_800 = 0x7BAEA5C4L;
                    int16_t l_801 = (-1L);
                    int32_t l_802 = 0x64E4254BL;
                    uint32_t l_803[4];
                    int i, j, k;
                    for (i = 0; i < 4; i++)
                        l_803[i] = 0x3AACECD0L;
                    l_768 = (l_767 = l_764[3][1][5]);
                    for (l_766[3] = (-25); (l_766[3] >= 20); l_766[3] = safe_add_func_uint8_t_u_u(l_766[3], 1))
                    { /* block id: 317 */
                        uint32_t l_771 = 0UL;
                        VECTOR(int8_t, 2) l_772 = (VECTOR(int8_t, 2))(0L, 0x1CL);
                        VECTOR(int8_t, 4) l_773 = (VECTOR(int8_t, 4))(0x2CL, (VECTOR(int8_t, 2))(0x2CL, 0x18L), 0x18L);
                        int32_t l_774 = 0L;
                        VECTOR(int8_t, 16) l_775 = (VECTOR(int8_t, 16))(9L, (VECTOR(int8_t, 4))(9L, (VECTOR(int8_t, 2))(9L, 8L), 8L), 8L, 9L, 8L, (VECTOR(int8_t, 2))(9L, 8L), (VECTOR(int8_t, 2))(9L, 8L), 9L, 8L, 9L, 8L);
                        VECTOR(int8_t, 4) l_776 = (VECTOR(int8_t, 4))(0x2BL, (VECTOR(int8_t, 2))(0x2BL, 8L), 8L);
                        int64_t l_777 = 0x3D59AA61ACD88584L;
                        uint32_t l_778 = 7UL;
                        uint64_t l_779 = 0xE1FAEA1F3D847A55L;
                        uint8_t l_780[7] = {0xC0L,250UL,0xC0L,0xC0L,250UL,0xC0L,0xC0L};
                        uint8_t l_781 = 255UL;
                        uint32_t l_782 = 4UL;
                        uint16_t l_783 = 0x7605L;
                        int32_t l_784 = 0x7F1C3B55L;
                        VECTOR(int8_t, 4) l_785 = (VECTOR(int8_t, 4))(0x06L, (VECTOR(int8_t, 2))(0x06L, (-10L)), (-10L));
                        VECTOR(int16_t, 8) l_786 = (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 1L), 1L), 1L, 0L, 1L);
                        int32_t l_787 = (-2L);
                        struct S0 *l_788[2];
                        struct S0 l_790 = {0x23A8L,0UL};/* VOLATILE GLOBAL l_790 */
                        struct S0 *l_789 = &l_790;
                        int i;
                        for (i = 0; i < 2; i++)
                            l_788[i] = (void*)0;
                        l_789 = ((((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(5L, 0L)))).even , ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 16))(2L, 0x274EL, l_771, 0x3ECCL, ((VECTOR(int16_t, 2))(upsample(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(rhadd(((VECTOR(int8_t, 16))(l_772.yyxxyxyyyxyyyyxx)).sd594, ((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(l_773.yw)))), ((VECTOR(int8_t, 4))((FAKE_DIVERGE(p_1338->local_0_offset, get_local_id(0), 10) , l_774), ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 4))(l_775.s04cf)), ((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 16))(l_776.zxxyxwxwzywwywwz)).s1ce5)))))).wwzxwxwx)).s72)), 0x53L)).hi, ((VECTOR(int8_t, 8))((l_778 = l_777), 2L, (l_775.s8 |= l_779), (l_781 = l_780[3]), 6L, (l_784 = (l_782 , l_783)), (-1L), 0x04L)).s14))), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(min(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(l_785.yxww)).xwxwwyyzwwzwxxyz)), (int8_t)(l_786.s1 = 0x4CL)))).s2884)).even, ((VECTOR(int8_t, 2))(1L))))).xyxy))).lo)), ((VECTOR(uint8_t, 2))(0x7DL))))), l_787, ((VECTOR(int16_t, 8))(0x5766L)), 1L)).s165a, ((VECTOR(int16_t, 4))((-10L)))))), 0x3D59L, ((VECTOR(int16_t, 2))(0x1879L)), (-1L))).odd)).xwxyzxzyyxxywzzz)).s1) , l_788[0]);
                    }
                    l_797 = (l_791 , (l_796 ^= (l_795 = (l_794 = (l_793 = (l_792 , 0x35119BA0L))))));
                    l_803[1]--;
                }
                l_807 = l_806;
                for (l_761 = 17; (l_761 < (-13)); --l_761)
                { /* block id: 335 */
                    uint64_t l_810 = 18446744073709551608UL;
                    int16_t l_847 = 0x7047L;
                    int8_t l_848 = 0x01L;
                    int8_t l_849 = 0x2DL;
                    uint8_t l_850 = 255UL;
                    int32_t l_854 = (-4L);
                    int32_t *l_853 = &l_854;
                    if ((l_810 ^= (-9L)))
                    { /* block id: 337 */
                        int32_t l_811 = (-1L);
                        VECTOR(uint32_t, 4) l_812 = (VECTOR(uint32_t, 4))(0x46832BA1L, (VECTOR(uint32_t, 2))(0x46832BA1L, 1UL), 1UL);
                        VECTOR(int8_t, 4) l_813 = (VECTOR(int8_t, 4))((-7L), (VECTOR(int8_t, 2))((-7L), 0x21L), 0x21L);
                        VECTOR(int8_t, 8) l_814 = (VECTOR(int8_t, 8))(0x65L, (VECTOR(int8_t, 4))(0x65L, (VECTOR(int8_t, 2))(0x65L, 0x2AL), 0x2AL), 0x2AL, 0x65L, 0x2AL);
                        VECTOR(int8_t, 16) l_815 = (VECTOR(int8_t, 16))(0x75L, (VECTOR(int8_t, 4))(0x75L, (VECTOR(int8_t, 2))(0x75L, (-3L)), (-3L)), (-3L), 0x75L, (-3L), (VECTOR(int8_t, 2))(0x75L, (-3L)), (VECTOR(int8_t, 2))(0x75L, (-3L)), 0x75L, (-3L), 0x75L, (-3L));
                        VECTOR(int8_t, 8) l_816 = (VECTOR(int8_t, 8))(2L, (VECTOR(int8_t, 4))(2L, (VECTOR(int8_t, 2))(2L, 0x30L), 0x30L), 0x30L, 2L, 0x30L);
                        int16_t l_817 = 0x1018L;
                        uint16_t l_818 = 1UL;
                        uint16_t l_819 = 2UL;
                        uint8_t l_820 = 0x3FL;
                        uint16_t l_821 = 0x0280L;
                        int8_t l_822 = 0L;
                        VECTOR(int8_t, 16) l_823 = (VECTOR(int8_t, 16))(0x3FL, (VECTOR(int8_t, 4))(0x3FL, (VECTOR(int8_t, 2))(0x3FL, (-1L)), (-1L)), (-1L), 0x3FL, (-1L), (VECTOR(int8_t, 2))(0x3FL, (-1L)), (VECTOR(int8_t, 2))(0x3FL, (-1L)), 0x3FL, (-1L), 0x3FL, (-1L));
                        VECTOR(int8_t, 2) l_824 = (VECTOR(int8_t, 2))(0x40L, 1L);
                        VECTOR(int8_t, 16) l_825 = (VECTOR(int8_t, 16))(0x2DL, (VECTOR(int8_t, 4))(0x2DL, (VECTOR(int8_t, 2))(0x2DL, (-8L)), (-8L)), (-8L), 0x2DL, (-8L), (VECTOR(int8_t, 2))(0x2DL, (-8L)), (VECTOR(int8_t, 2))(0x2DL, (-8L)), 0x2DL, (-8L), 0x2DL, (-8L));
                        int32_t l_826 = 0L;
                        int8_t l_827 = 0x33L;
                        uint32_t l_828 = 1UL;
                        int32_t l_829 = 0x43C60CC7L;
                        int8_t l_830 = 0x7FL;
                        uint32_t l_831 = 0x71FF07A5L;
                        VECTOR(int32_t, 4) l_832 = (VECTOR(int32_t, 4))(0x0B1A9D31L, (VECTOR(int32_t, 2))(0x0B1A9D31L, 0L), 0L);
                        int16_t l_833 = 0x4A27L;
                        uint32_t l_834 = 0xA5F32427L;
                        VECTOR(int32_t, 8) l_835 = (VECTOR(int32_t, 8))(2L, (VECTOR(int32_t, 4))(2L, (VECTOR(int32_t, 2))(2L, 0x2A057C68L), 0x2A057C68L), 0x2A057C68L, 2L, 0x2A057C68L);
                        int32_t l_836 = (-1L);
                        uint16_t l_837 = 0xDBC9L;
                        int i;
                        l_830 ^= (((VECTOR(int16_t, 4))(mad_sat(((VECTOR(int16_t, 8))(0x7693L, (l_812.z = l_811), 0x30FAL, ((VECTOR(int16_t, 2))(upsample(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 16))(l_813.xxxyyyxzzxxxxxwx))))).sc20d)), ((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(0x48L, 0x0FL)).xxxxyxxyxyyyyyyy)).s4, ((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),VECTOR(int8_t, 4),((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(0x09L, 0x6AL)).yxxx)), ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(l_814.s0251)).wyyyzwzz)).lo, ((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(l_815.sb0)).yyyx)).y, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(l_816.s42)), 0L, 1L)), 0x79L, 0x38L, 1L)), 1L, ((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(min(((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),int8_t,((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(1L, ((((l_818 = l_817) , l_819) , FAKE_DIVERGE(p_1338->global_2_offset, get_global_id(2), 10)) , l_820), 0x78L, (-1L))), ((VECTOR(int8_t, 4))(0x35L, 0L, 0x0DL, 8L)))).odd, (int8_t)(l_821 ^= 1L), (int8_t)l_822))).zyyzzzwxzzywzwzz, (int8_t)0x41L))))).sbde1, ((VECTOR(int8_t, 8))(l_823.s86d92647)).hi))), ((VECTOR(int8_t, 2))(l_824.xy)), (-1L))).odd)))).even, ((VECTOR(int8_t, 8))(mad_sat(((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 8))((-4L), 0x28L, 0x76L, ((VECTOR(int8_t, 2))(l_825.s1f)), l_826, 0x12L, 1L)), ((VECTOR(int8_t, 8))(0x5AL))))).lo))).xywwxwxy, ((VECTOR(int8_t, 8))(8L)), ((VECTOR(int8_t, 8))(0x09L))))).lo)))))), 0x4BL, 0L, 0x36L)).hi)), ((VECTOR(int8_t, 4))(0x6BL))))), l_827, 0x6AL, l_828, l_829, ((VECTOR(int8_t, 4))(6L)))).even)).s40, ((VECTOR(uint8_t, 2))(0x81L))))), ((VECTOR(int16_t, 2))((-10L))), 7L)).lo, ((VECTOR(int16_t, 4))(0x18C3L)), ((VECTOR(int16_t, 4))(0x6E06L))))).x , 0x2EE52EDAL);
                        l_807 = (l_831 , (void*)0);
                        l_834 |= (l_833 = ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(l_832.yxyzxxywyxwxyxww)).hi)).s7);
                        l_837 = (l_836 = ((VECTOR(int32_t, 2))(l_835.s33)).even);
                    }
                    else
                    { /* block id: 347 */
                        struct S0 l_838 = {0x7A00L,0UL};/* VOLATILE GLOBAL l_838 */
                        struct S0 l_839 = {0UL,4294967291UL};/* VOLATILE GLOBAL l_839 */
                        VECTOR(uint32_t, 16) l_840 = (VECTOR(uint32_t, 16))(4294967293UL, (VECTOR(uint32_t, 4))(4294967293UL, (VECTOR(uint32_t, 2))(4294967293UL, 4294967295UL), 4294967295UL), 4294967295UL, 4294967293UL, 4294967295UL, (VECTOR(uint32_t, 2))(4294967293UL, 4294967295UL), (VECTOR(uint32_t, 2))(4294967293UL, 4294967295UL), 4294967293UL, 4294967295UL, 4294967293UL, 4294967295UL);
                        VECTOR(int32_t, 16) l_841 = (VECTOR(int32_t, 16))(0x136F60BEL, (VECTOR(int32_t, 4))(0x136F60BEL, (VECTOR(int32_t, 2))(0x136F60BEL, 0L), 0L), 0L, 0x136F60BEL, 0L, (VECTOR(int32_t, 2))(0x136F60BEL, 0L), (VECTOR(int32_t, 2))(0x136F60BEL, 0L), 0x136F60BEL, 0L, 0x136F60BEL, 0L);
                        uint8_t l_842[5] = {252UL,252UL,252UL,252UL,252UL};
                        int32_t l_843 = 0x5E478953L;
                        int32_t l_844[7][7] = {{0x07CC74A1L,0x07CC74A1L,0x07CC74A1L,0x07CC74A1L,0x07CC74A1L,0x07CC74A1L,0x07CC74A1L},{0x07CC74A1L,0x07CC74A1L,0x07CC74A1L,0x07CC74A1L,0x07CC74A1L,0x07CC74A1L,0x07CC74A1L},{0x07CC74A1L,0x07CC74A1L,0x07CC74A1L,0x07CC74A1L,0x07CC74A1L,0x07CC74A1L,0x07CC74A1L},{0x07CC74A1L,0x07CC74A1L,0x07CC74A1L,0x07CC74A1L,0x07CC74A1L,0x07CC74A1L,0x07CC74A1L},{0x07CC74A1L,0x07CC74A1L,0x07CC74A1L,0x07CC74A1L,0x07CC74A1L,0x07CC74A1L,0x07CC74A1L},{0x07CC74A1L,0x07CC74A1L,0x07CC74A1L,0x07CC74A1L,0x07CC74A1L,0x07CC74A1L,0x07CC74A1L},{0x07CC74A1L,0x07CC74A1L,0x07CC74A1L,0x07CC74A1L,0x07CC74A1L,0x07CC74A1L,0x07CC74A1L}};
                        int64_t l_845 = 0x7D421668F8194C52L;
                        uint16_t l_846 = 65534UL;
                        int i, j;
                        l_839 = l_838;
                        l_842[4] &= (((VECTOR(uint32_t, 16))(l_840.sfb2009abe2c92a71)).s0 , ((VECTOR(int32_t, 8))(l_841.s96ca10e7)).s0);
                        l_844[4][1] = l_843;
                        l_846 = l_845;
                    }
                    l_850--;
                    l_807 = l_853;
                }
                unsigned int result = 0;
                result += l_761;
                atomic_add(&p_1338->g_special_values[80 * get_linear_group_id() + 12], result);
            }
            else
            { /* block id: 356 */
                (1 + 1);
            }
            for (p_63 = 0; (p_63 < 52); p_63 = safe_add_func_int32_t_s_s(p_63, 5))
            { /* block id: 361 */
                VECTOR(int32_t, 4) l_857 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-1L)), (-1L));
                int32_t *l_860 = &p_1338->g_861;
                int i;
                (*p_1338->g_866) = (((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(l_857.xy)))).odd , (((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 2))(p_1338->g_858.s62)).yyyy, (int8_t)((((VECTOR(int16_t, 4))(l_859.s9460)).y && (&l_714 == (((VECTOR(int32_t, 4))(((*l_860) = p_1338->g_387.s6), (-8L), 0x33CB109DL, 1L)).w , ((p_1338->g_190.x & (safe_mul_func_int64_t_s_s(p_1338->g_387.sc, ((*p_64) = (((**l_690) = (*p_1338->g_203)) != l_864))))) , &l_714)))) <= (((void*)0 == &p_1338->g_23) <= 4UL))))).hi, ((VECTOR(int8_t, 2))(0x7DL))))))), 0L, 0x49L)).w , p_1338->g_865));
                for (p_67 = 0; (p_67 <= 1); ++p_67)
                { /* block id: 368 */
                    volatile struct S0 *l_870 = &p_1338->g_869;
                    int32_t l_896 = 4L;
                    (*l_870) = p_1338->g_869;
                    if ((atomic_inc(&p_1338->l_atomic_input[15]) == 9))
                    { /* block id: 371 */
                        int32_t l_872 = 0x244076C0L;
                        int32_t *l_871 = &l_872;
                        int32_t *l_873 = &l_872;
                        l_873 = l_871;
                        unsigned int result = 0;
                        result += l_872;
                        atomic_add(&p_1338->l_special_values[15], result);
                    }
                    else
                    { /* block id: 373 */
                        (1 + 1);
                    }
                    for (l_699 = 0; (l_699 < 17); l_699 = safe_add_func_uint16_t_u_u(l_699, 5))
                    { /* block id: 378 */
                        uint32_t l_886 = 0x145586EAL;
                        uint32_t ***l_895 = &l_893[0][0];
                        (*l_88) = 0x1EE2BCB2L;
                        (**p_1338->g_203) |= (&p_1338->g_148 == (void*)0);
                        (*p_1338->g_203) = func_119(((safe_div_func_uint32_t_u_u((((p_1338->g_391.s1 , ((safe_mod_func_uint8_t_u_u(((safe_sub_func_int64_t_s_s(((&p_63 != (void*)0) | ((safe_mul_func_uint8_t_u_u(((((safe_mod_func_int8_t_s_s((p_66 , (((l_886 ^ (safe_add_func_uint8_t_u_u(((-3L) || (p_1338->g_710.y <= (safe_div_func_int16_t_s_s(p_1338->g_130.x, ((safe_div_func_uint64_t_u_u((((((*l_895) = l_893[0][0]) == (void*)0) == 254UL) >= l_896), 0x57F121B5131B1065L)) || l_886))))), p_65))) , p_1338->g_687[0]) ^ p_1338->g_310.y)), p_1338->g_149)) == 0x75L) != (*p_64)) == 4L), (*l_88))) | l_721.s0)), l_896)) || p_1338->g_130.x), 0x01L)) <= 65535UL)) , l_886) >= 0L), 0x4F0EE776L)) > l_896), p_1338);
                    }
                    if (l_857.w)
                        continue;
                }
                (*p_1338->g_204) |= 0x0FE9814EL;
                l_897[4][3] &= ((void*)0 == &p_1338->g_46);
            }
        }
    }
    return (*p_1338->g_203);
}


/* ------------------------------------------ */
/* 
 * reads : p_1338->g_108 p_1338->g_81 p_1338->g_82 p_1338->g_128 p_1338->g_130 p_1338->l_comm_values p_1338->g_36 p_1338->g_70 p_1338->g_96 p_1338->g_148 p_1338->g_165 p_1338->g_87 p_1338->g_181 p_1338->g_189 p_1338->g_190 p_1338->g_191 p_1338->g_23 p_1338->g_203 p_1338->g_29 p_1338->g_28 p_1338->g_215 p_1338->g_149 p_1338->g_204 p_1338->g_151 p_1338->g_227 p_1338->g_46 p_1338->g_232 p_1338->g_233 p_1338->g_234 p_1338->g_247 p_1338->g_254 p_1338->g_263 p_1338->g_265 p_1338->g_284 p_1338->g_304 p_1338->g_310 p_1338->g_328 p_1338->g_343 p_1338->g_275 p_1338->g_358 p_1338->g_378 p_1338->g_379 p_1338->g_387 p_1338->g_389 p_1338->g_390 p_1338->g_391 p_1338->g_408 p_1338->g_687
 * writes: p_1338->g_108 p_1338->g_36 p_1338->g_46 p_1338->g_96 p_1338->g_148 p_1338->g_151 p_1338->g_165 p_1338->g_87 p_1338->g_81 p_1338->g_149 p_1338->g_227 p_1338->g_82 p_1338->g_28 p_1338->g_275 p_1338->g_204 p_1338->g_247 p_1338->g_409 p_1338->g_328.f0 p_1338->g_687
 */
int32_t * func_89(uint8_t  p_90, int64_t  p_91, int64_t  p_92, int64_t  p_93, uint8_t  p_94, struct S1 * p_1338)
{ /* block id: 21 */
    uint8_t l_99[2][5][2] = {{{0xA5L,6UL},{0xA5L,6UL},{0xA5L,6UL},{0xA5L,6UL},{0xA5L,6UL}},{{0xA5L,6UL},{0xA5L,6UL},{0xA5L,6UL},{0xA5L,6UL},{0xA5L,6UL}}};
    uint64_t *l_106 = &p_1338->g_82;
    uint32_t *l_107 = &p_1338->g_108[2];
    int32_t *l_123[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    VECTOR(uint64_t, 2) l_124 = (VECTOR(uint64_t, 2))(18446744073709551607UL, 7UL);
    VECTOR(uint64_t, 16) l_125 = (VECTOR(uint64_t, 16))(0xC2139280DD1ACC90L, (VECTOR(uint64_t, 4))(0xC2139280DD1ACC90L, (VECTOR(uint64_t, 2))(0xC2139280DD1ACC90L, 0UL), 0UL), 0UL, 0xC2139280DD1ACC90L, 0UL, (VECTOR(uint64_t, 2))(0xC2139280DD1ACC90L, 0UL), (VECTOR(uint64_t, 2))(0xC2139280DD1ACC90L, 0UL), 0xC2139280DD1ACC90L, 0UL, 0xC2139280DD1ACC90L, 0UL);
    VECTOR(uint64_t, 16) l_126 = (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0UL), 0UL), 0UL, 18446744073709551615UL, 0UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0UL), (VECTOR(uint64_t, 2))(18446744073709551615UL, 0UL), 18446744073709551615UL, 0UL, 18446744073709551615UL, 0UL);
    VECTOR(uint64_t, 8) l_127 = (VECTOR(uint64_t, 8))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0x3311D11F0E80B645L), 0x3311D11F0E80B645L), 0x3311D11F0E80B645L, 0UL, 0x3311D11F0E80B645L);
    int i, j, k;
    p_1338->g_687[0] |= (safe_sub_func_int64_t_s_s((FAKE_DIVERGE(p_1338->group_2_offset, get_group_id(2), 10) , l_99[1][3][0]), (l_99[0][3][1] , ((func_26(func_100(l_106, ((*l_107)++), (((func_26((((safe_add_func_int16_t_s_s((safe_rshift_func_int8_t_s_u(func_115(func_119((safe_sub_func_int32_t_s_s((p_1338->g_36[3][7][0] = l_99[1][3][0]), ((0UL && ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(0xF1L, 251UL, ((((VECTOR(uint64_t, 16))(mad_sat(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(l_124.yy)), 0x2132D04EE4DB16BEL, 0x8CA683B8F37F1D82L)), 0x87B70EE5EE185A6AL, 0xBEDEDAE182EB9260L, 0UL, 1UL)), 1UL, 0x962913F7DCBD80DBL, ((VECTOR(uint64_t, 2))(l_125.s96)), ((VECTOR(uint64_t, 2))(0UL, 18446744073709551615UL)), 1UL, 18446744073709551606UL)), ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(l_126.s44fb72fbf4ad5260)).s5c)).xyyxyxxyxyxyyyxx, ((VECTOR(uint64_t, 8))(l_127.s72142277)).s3460567030176555))).se >= (((p_94 != ((+((*p_1338->g_81) || p_1338->g_128[3])) , (0xEF8690FF8399E06EL && (*p_1338->g_81)))) , FAKE_DIVERGE(p_1338->local_0_offset, get_local_id(0), 10)) < 0x21DEL)) , 0x09L), ((VECTOR(uint8_t, 8))(1UL)), ((VECTOR(uint8_t, 4))(255UL)), 1UL)))).sa) | 0x5FL))), p_1338), p_1338->g_130.y, p_94, p_1338), p_1338->g_189.y)), p_93)) || 1L) , &p_1338->g_165), p_1338) , (-3L)) > 0x5E08E7A2256CC374L) && p_92), p_1338->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1338->tid, 20))], p_92, p_1338), p_1338) <= 7L) & 0x1AL))));
    return &p_1338->g_96[1];
}


/* ------------------------------------------ */
/* 
 * reads : p_1338->g_254 p_1338->g_151 p_1338->g_82 p_1338->g_96 p_1338->g_263 p_1338->g_265 p_1338->g_203 p_1338->g_204 p_1338->g_284 p_1338->g_87 p_1338->g_304 p_1338->g_148 p_1338->g_149 p_1338->g_310 p_1338->g_227 p_1338->g_328 p_1338->g_343 p_1338->g_36 p_1338->g_215 p_1338->g_275 p_1338->g_358 p_1338->g_247 p_1338->g_378 p_1338->g_379 p_1338->g_387 p_1338->g_389 p_1338->g_390 p_1338->g_391 p_1338->g_408 p_1338->g_130
 * writes: p_1338->g_151 p_1338->g_36 p_1338->g_148 p_1338->g_275 p_1338->g_87 p_1338->g_96 p_1338->g_204 p_1338->g_227 p_1338->g_247 p_1338->g_149 p_1338->g_46 p_1338->g_409 p_1338->g_328.f0
 */
uint64_t * func_100(uint64_t * p_101, uint32_t  p_102, int8_t  p_103, int8_t  p_104, uint16_t  p_105, struct S1 * p_1338)
{ /* block id: 60 */
    VECTOR(int32_t, 16) l_253 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x0D4D9973L), 0x0D4D9973L), 0x0D4D9973L, 0L, 0x0D4D9973L, (VECTOR(int32_t, 2))(0L, 0x0D4D9973L), (VECTOR(int32_t, 2))(0L, 0x0D4D9973L), 0L, 0x0D4D9973L, 0L, 0x0D4D9973L);
    int8_t *l_255[5] = {&p_1338->g_151,&p_1338->g_151,&p_1338->g_151,&p_1338->g_151,&p_1338->g_151};
    VECTOR(uint16_t, 4) l_262 = (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 3UL), 3UL);
    VECTOR(uint16_t, 8) l_264 = (VECTOR(uint16_t, 8))(0xAE09L, (VECTOR(uint16_t, 4))(0xAE09L, (VECTOR(uint16_t, 2))(0xAE09L, 1UL), 1UL), 1UL, 0xAE09L, 1UL);
    int32_t l_270 = 2L;
    uint8_t **l_273 = &p_1338->g_148;
    uint8_t **l_274 = (void*)0;
    VECTOR(uint8_t, 16) l_276 = (VECTOR(uint8_t, 16))(0x05L, (VECTOR(uint8_t, 4))(0x05L, (VECTOR(uint8_t, 2))(0x05L, 251UL), 251UL), 251UL, 0x05L, 251UL, (VECTOR(uint8_t, 2))(0x05L, 251UL), (VECTOR(uint8_t, 2))(0x05L, 251UL), 0x05L, 251UL, 0x05L, 251UL);
    uint32_t *l_283 = (void*)0;
    uint64_t *l_285 = (void*)0;
    VECTOR(uint32_t, 8) l_316 = (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0x25C83480L), 0x25C83480L), 0x25C83480L, 0UL, 0x25C83480L);
    uint32_t l_321 = 0xD1CE45BCL;
    uint64_t **l_352 = &p_1338->g_81;
    uint64_t ***l_351[2][1];
    struct S0 *l_361[9][3][7] = {{{(void*)0,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328},{(void*)0,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328},{(void*)0,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328}},{{(void*)0,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328},{(void*)0,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328},{(void*)0,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328}},{{(void*)0,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328},{(void*)0,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328},{(void*)0,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328}},{{(void*)0,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328},{(void*)0,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328},{(void*)0,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328}},{{(void*)0,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328},{(void*)0,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328},{(void*)0,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328}},{{(void*)0,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328},{(void*)0,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328},{(void*)0,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328}},{{(void*)0,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328},{(void*)0,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328},{(void*)0,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328}},{{(void*)0,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328},{(void*)0,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328},{(void*)0,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328}},{{(void*)0,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328},{(void*)0,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328},{(void*)0,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328,&p_1338->g_328}}};
    VECTOR(int64_t, 8) l_664 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x1D282454B6711E79L), 0x1D282454B6711E79L), 0x1D282454B6711E79L, 1L, 0x1D282454B6711E79L);
    VECTOR(uint32_t, 2) l_668 = (VECTOR(uint32_t, 2))(6UL, 0x9FC287ECL);
    VECTOR(uint32_t, 2) l_671 = (VECTOR(uint32_t, 2))(0x0BAD1EC3L, 4294967294UL);
    VECTOR(uint32_t, 2) l_684 = (VECTOR(uint32_t, 2))(0UL, 4294967290UL);
    uint64_t l_685 = 0xF452DF62B91C6AD2L;
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
            l_351[i][j] = &l_352;
    }
    if ((atomic_inc(&p_1338->l_atomic_input[7]) == 2))
    { /* block id: 62 */
        int32_t *l_251 = (void*)0;
        int32_t **l_250 = &l_251;
        int32_t **l_252 = &l_251;
        l_252 = l_250;
        unsigned int result = 0;
        atomic_add(&p_1338->l_special_values[7], result);
    }
    else
    { /* block id: 64 */
        (1 + 1);
    }
    (**p_1338->g_203) = (l_253.s3 && ((p_1338->g_151 &= ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(p_1338->g_254.sda5f92203d504f63)).lo)).s5) >= ((l_270 |= (safe_add_func_uint8_t_u_u(((void*)0 != &p_1338->g_29), ((p_1338->g_82 > ((safe_add_func_uint16_t_u_u((safe_add_func_uint32_t_u_u(p_1338->g_96[1], FAKE_DIVERGE(p_1338->local_1_offset, get_local_id(1), 10))), ((VECTOR(uint16_t, 16))(mad_hi(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(sub_sat(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(hadd(((VECTOR(uint16_t, 8))(0x256CL, 0UL, ((VECTOR(uint16_t, 2))(l_262.xx)), ((VECTOR(uint16_t, 4))(p_1338->g_263.s6066)))).s1746351100241510, ((VECTOR(uint16_t, 16))(l_264.s5560157621105270))))))).sdc, ((VECTOR(uint16_t, 8))((l_264.s0 | ((VECTOR(uint16_t, 16))(p_1338->g_265.yyzxyxyyxzzzyyxw)).s5), (((((0x1231B19AL > GROUP_DIVERGE(1, 1)) ^ (safe_rshift_func_int16_t_s_s((safe_mul_func_int16_t_s_s(0x3BD8L, (((((((void*)0 != &p_1338->g_46) , 3UL) || 65535UL) < 255UL) , 4294967292UL) > p_1338->g_96[1]))), p_103))) & l_253.s7) <= 0x2E72L) ^ l_264.s4), p_104, 3UL, p_104, p_104, 65535UL, 0xB3D9L)).s51))), ((VECTOR(uint16_t, 2))(0UL)), l_264.s2, 0x9F9EL, 1UL, 0x9055L, ((VECTOR(uint16_t, 2))(0xBEF0L)), ((VECTOR(uint16_t, 4))(6UL)), 7UL, 0x5110L)), ((VECTOR(uint16_t, 16))(65533UL)), ((VECTOR(uint16_t, 16))(65535UL))))).s9)) < 0x55L)) , l_262.z)))) >= 0x4CL)));
    if ((safe_rshift_func_uint8_t_u_s((((*l_273) = &p_1338->g_149) != (p_1338->g_275 = l_255[4])), (((VECTOR(uint8_t, 16))(l_276.sb7cd2b7093241f1a)).s4 , ((p_104 = l_270) ^ l_253.s4)))))
    { /* block id: 73 */
        int8_t l_286 = 0x2DL;
        VECTOR(int32_t, 2) l_287 = (VECTOR(int32_t, 2))(0L, 0x59D80AB0L);
        VECTOR(uint32_t, 16) l_302 = (VECTOR(uint32_t, 16))(0x62B9EE0CL, (VECTOR(uint32_t, 4))(0x62B9EE0CL, (VECTOR(uint32_t, 2))(0x62B9EE0CL, 8UL), 8UL), 8UL, 0x62B9EE0CL, 8UL, (VECTOR(uint32_t, 2))(0x62B9EE0CL, 8UL), (VECTOR(uint32_t, 2))(0x62B9EE0CL, 8UL), 0x62B9EE0CL, 8UL, 0x62B9EE0CL, 8UL);
        uint32_t l_307 = 0x9C4B21BEL;
        int32_t ***l_332 = &p_1338->g_203;
        int32_t ***l_334 = &p_1338->g_203;
        int32_t ****l_333 = &l_334;
        uint64_t ***l_353 = &l_352;
        int i;
        if ((safe_lshift_func_uint16_t_u_s((safe_rshift_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s(((void*)0 == l_283), 4)), 14)), (((VECTOR(int32_t, 16))(p_1338->g_284.s6572765705056475)).sb ^ (p_101 != l_285)))))
        { /* block id: 74 */
            VECTOR(uint32_t, 8) l_303 = (VECTOR(uint32_t, 8))(0x36CD7011L, (VECTOR(uint32_t, 4))(0x36CD7011L, (VECTOR(uint32_t, 2))(0x36CD7011L, 0xE47FC431L), 0xE47FC431L), 0xE47FC431L, 0x36CD7011L, 0xE47FC431L);
            VECTOR(int32_t, 4) l_317 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-1L)), (-1L));
            uint32_t *l_323 = &p_1338->g_108[2];
            int i;
            l_286 = ((void*)0 != &p_105);
            if (((VECTOR(int32_t, 16))(l_287.xyxyxxyyxyyyxxyy)).s7)
            { /* block id: 76 */
                int64_t l_293 = 7L;
                VECTOR(int32_t, 16) l_311 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 1L), 1L), 1L, 0L, 1L, (VECTOR(int32_t, 2))(0L, 1L), (VECTOR(int32_t, 2))(0L, 1L), 0L, 1L, 0L, 1L);
                int i;
                for (p_1338->g_87 = 1; (p_1338->g_87 < 8); p_1338->g_87++)
                { /* block id: 79 */
                    uint64_t *l_308 = (void*)0;
                    int32_t *l_318 = &l_270;
                    if (((safe_mul_func_uint16_t_u_u((0xC0L >= 1UL), (safe_unary_minus_func_uint16_t_u(((p_103 <= (l_262.x < l_293)) != ((safe_mul_func_int16_t_s_s(((l_293 >= (safe_mul_func_int16_t_s_s((safe_mul_func_uint16_t_u_u((l_270 | (-4L)), (safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(mul_hi(((VECTOR(uint32_t, 16))(l_302.s41bd850105d0d24d)), ((VECTOR(uint32_t, 8))(add_sat(((VECTOR(uint32_t, 16))(l_303.s7726321250616330)).lo, ((VECTOR(uint32_t, 8))(p_1338->g_304.s55346232))))).s3101557336011270))).s92)).odd, (safe_mod_func_uint32_t_u_u(FAKE_DIVERGE(p_1338->group_0_offset, get_group_id(0), 10), l_293)))))), l_303.s2))) & p_1338->g_263.s1), 0L)) <= (*p_1338->g_148))))))) , l_307))
                    { /* block id: 80 */
                        return l_308;
                    }
                    else
                    { /* block id: 82 */
                        VECTOR(int32_t, 4) l_309 = (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, (-1L)), (-1L));
                        int i;
                        (**p_1338->g_203) = ((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))(l_309.wzzxyywzzzxzwzyx)).s02b9, ((VECTOR(int32_t, 4))(p_1338->g_310.xxyy)), ((VECTOR(int32_t, 2))((-1L), 1L)).xxyy))).zwxzywxz, ((VECTOR(int32_t, 16))(l_311.s83cfde086a9aada1)).lo))).s2;
                        l_318 = func_119((safe_add_func_int32_t_s_s((safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 8))(p_105, ((VECTOR(uint32_t, 4))(l_316.s1012)), 4294967295UL, 4294967294UL, 0x3F4BB786L)).s3, ((**p_1338->g_203) = p_104))), ((VECTOR(int32_t, 2))(l_317.wx)).even)), p_1338);
                    }
                }
                for (p_105 = 0; (p_105 == 12); p_105 = safe_add_func_int16_t_s_s(p_105, 4))
                { /* block id: 90 */
                    uint32_t **l_322 = (void*)0;
                    atomic_add(&p_1338->l_atomic_reduction[0], ((l_321 , &p_102) == (l_323 = &p_102)));
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    if (get_linear_local_id() == 0)
                        p_1338->v_collective += p_1338->l_atomic_reduction[0];
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    (*p_1338->g_203) = &l_270;
                    if ((*p_1338->g_204))
                        continue;
                }
            }
            else
            { /* block id: 96 */
                return &p_1338->g_165;
            }
            for (p_1338->g_227 = (-15); (p_1338->g_227 <= 27); p_1338->g_227 = safe_add_func_uint8_t_u_u(p_1338->g_227, 5))
            { /* block id: 101 */
                return &p_1338->g_82;
            }
        }
        else
        { /* block id: 104 */
            for (p_103 = (-21); (p_103 > (-3)); p_103 = safe_add_func_uint16_t_u_u(p_103, 1))
            { /* block id: 107 */
                struct S0 *l_329 = (void*)0;
                p_1338->g_247 = p_1338->g_328;
            }
        }
        (*p_1338->g_204) = (safe_mod_func_int32_t_s_s(((VECTOR(int32_t, 4))((l_332 == ((*l_333) = l_332)), ((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((safe_sub_func_uint32_t_u_u((((safe_rshift_func_int16_t_s_s(p_105, p_105)) , (safe_mul_func_int16_t_s_s((((*p_1338->g_148)--) ^ (p_1338->g_263.s4 == (((p_1338->g_343 != ((safe_add_func_uint16_t_u_u((safe_div_func_int64_t_s_s((FAKE_DIVERGE(p_1338->local_1_offset, get_local_id(1), 10) != 0x2064537709C69C08L), (safe_div_func_uint64_t_u_u(GROUP_DIVERGE(2, 1), FAKE_DIVERGE(p_1338->local_2_offset, get_local_id(2), 10))))), 1L)) , l_351[1][0])) , l_353) != &l_352))), (***l_332)))) < 0x4645AC530D03220BL), p_1338->g_215.y)) <= FAKE_DIVERGE(p_1338->group_2_offset, get_group_id(2), 10)), (**p_1338->g_203), (**p_1338->g_203), ((VECTOR(int32_t, 2))((-1L))), p_102, 0x3DC1306BL, 0x4E8454D5L)).odd)))).lo, ((VECTOR(int32_t, 2))(1L))))), 0x4116CDAFL)).z, p_102));
    }
    else
    { /* block id: 114 */
        struct S0 *l_363 = &p_1338->g_328;
        int32_t l_380 = 1L;
        int8_t *l_385 = (void*)0;
        (*p_1338->g_203) = (*p_1338->g_203);
        l_270 = (safe_lshift_func_uint16_t_u_s((safe_add_func_uint64_t_u_u((l_262.z != ((*p_1338->g_275) ^= GROUP_DIVERGE(0, 1))), p_102)), ((VECTOR(int16_t, 2))(p_1338->g_358.sea)).hi));
        for (p_1338->g_151 = 0; (p_1338->g_151 > 17); p_1338->g_151 = safe_add_func_int64_t_s_s(p_1338->g_151, 4))
        { /* block id: 120 */
            int8_t l_386[2];
            uint8_t *l_395 = &p_1338->g_149;
            struct S0 *l_414 = &p_1338->g_328;
            int32_t l_415[2][1];
            int i, j;
            for (i = 0; i < 2; i++)
                l_386[i] = (-2L);
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 1; j++)
                    l_415[i][j] = 0x3FE43353L;
            }
            p_1338->g_247 = p_1338->g_247;
            if ((**p_1338->g_203))
            { /* block id: 122 */
                return p_101;
            }
            else
            { /* block id: 124 */
                struct S0 **l_362[5][3][4] = {{{&l_361[6][2][6],&l_361[6][2][6],&l_361[6][2][6],&l_361[6][2][6]},{&l_361[6][2][6],&l_361[6][2][6],&l_361[6][2][6],&l_361[6][2][6]},{&l_361[6][2][6],&l_361[6][2][6],&l_361[6][2][6],&l_361[6][2][6]}},{{&l_361[6][2][6],&l_361[6][2][6],&l_361[6][2][6],&l_361[6][2][6]},{&l_361[6][2][6],&l_361[6][2][6],&l_361[6][2][6],&l_361[6][2][6]},{&l_361[6][2][6],&l_361[6][2][6],&l_361[6][2][6],&l_361[6][2][6]}},{{&l_361[6][2][6],&l_361[6][2][6],&l_361[6][2][6],&l_361[6][2][6]},{&l_361[6][2][6],&l_361[6][2][6],&l_361[6][2][6],&l_361[6][2][6]},{&l_361[6][2][6],&l_361[6][2][6],&l_361[6][2][6],&l_361[6][2][6]}},{{&l_361[6][2][6],&l_361[6][2][6],&l_361[6][2][6],&l_361[6][2][6]},{&l_361[6][2][6],&l_361[6][2][6],&l_361[6][2][6],&l_361[6][2][6]},{&l_361[6][2][6],&l_361[6][2][6],&l_361[6][2][6],&l_361[6][2][6]}},{{&l_361[6][2][6],&l_361[6][2][6],&l_361[6][2][6],&l_361[6][2][6]},{&l_361[6][2][6],&l_361[6][2][6],&l_361[6][2][6],&l_361[6][2][6]},{&l_361[6][2][6],&l_361[6][2][6],&l_361[6][2][6],&l_361[6][2][6]}}};
                uint16_t *l_370 = &p_1338->g_227;
                uint32_t *l_375 = &l_321;
                int32_t l_383 = 0x2CF0830DL;
                int32_t l_384 = 0x6B0F938EL;
                VECTOR(int16_t, 16) l_398 = (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x13F7L), 0x13F7L), 0x13F7L, 0L, 0x13F7L, (VECTOR(int16_t, 2))(0L, 0x13F7L), (VECTOR(int16_t, 2))(0L, 0x13F7L), 0L, 0x13F7L, 0L, 0x13F7L);
                VECTOR(uint8_t, 2) l_422 = (VECTOR(uint8_t, 2))(0x74L, 0xE6L);
                int i, j, k;
                l_363 = l_361[6][2][6];
                if (((safe_add_func_int16_t_s_s((((safe_add_func_uint32_t_u_u((safe_mod_func_uint16_t_u_u((0x07L ^ (*p_1338->g_148)), (p_1338->g_215.y , ((*l_370)++)))), (p_1338->g_304.s3 < (l_375 != p_1338->g_204)))) , (((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 16))(((p_104 < ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(p_1338->g_378.s8047da7e)).s73)), 1UL, ((VECTOR(uint16_t, 4))(FAKE_DIVERGE(p_1338->local_2_offset, get_local_id(2), 10), ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(abs_diff(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(p_1338->g_379.yxyyyxyy)), 0x69A2L, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(safe_clamp_func(VECTOR(uint16_t, 16),VECTOR(uint16_t, 16),((VECTOR(uint16_t, 16))(((l_380 , (((((safe_lshift_func_uint16_t_u_s(p_1338->g_265.y, 15)) < l_253.s4) | l_383) || p_103) , 5L)) > (*p_1338->g_204)), ((VECTOR(uint16_t, 8))(65535UL)), 0UL, 0x4AB8L, ((VECTOR(uint16_t, 2))(0xCAE0L)), p_1338->g_96[1], 0x2417L, 65527UL)), ((VECTOR(uint16_t, 16))(65535UL)), ((VECTOR(uint16_t, 16))(0xCF7DL))))).s7b6c)), ((VECTOR(uint16_t, 2))(0x1BFBL)), 0x2EDAL)).s09, ((VECTOR(uint16_t, 2))(9UL))))).yyxyyxxy)).s77)), 0xDB2BL)), 0x1B59L)).s4) | 0x0454A53BL), l_383, ((VECTOR(int8_t, 4))((-1L))), 0x6BL, ((VECTOR(int8_t, 2))(0x2DL)), (-1L), 0x2BL, ((VECTOR(int8_t, 2))(8L)), 0x04L, 0x53L, 1L)).se8, ((VECTOR(int8_t, 2))(0x05L))))).hi, p_104)) != l_384) , l_385)) == (void*)0), (-2L))) , l_386[0]))
                { /* block id: 127 */
                    VECTOR(int32_t, 8) l_388 = (VECTOR(int32_t, 8))(0x411C6604L, (VECTOR(int32_t, 4))(0x411C6604L, (VECTOR(int32_t, 2))(0x411C6604L, 0x69263383L), 0x69263383L), 0x69263383L, 0x411C6604L, 0x69263383L);
                    uint8_t *l_394 = &p_1338->g_149;
                    VECTOR(uint32_t, 2) l_401 = (VECTOR(uint32_t, 2))(0x19A35713L, 0xE0062A4DL);
                    int16_t *l_406 = (void*)0;
                    int16_t *l_407[2][10];
                    int i, j;
                    for (i = 0; i < 2; i++)
                    {
                        for (j = 0; j < 10; j++)
                            l_407[i][j] = (void*)0;
                    }
                    (*p_1338->g_204) ^= (((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(0x25FF860DL, 1L, 0L, ((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 2))((-6L), 0x3F517D3BL)).yxxy, ((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 16))(p_1338->g_387.s66dcfdb93c4e6b91)).lo))).lo, (int32_t)(!((VECTOR(int32_t, 2))(l_388.s03)).hi))))))).yzyywwwy, ((VECTOR(int32_t, 4))(p_1338->g_389.s8267)).ywxxwzzy, ((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 8))(p_1338->g_390.scecd7a0e)).s70, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(p_1338->g_391.s24334511)))).s30))).yxxxxxyy))).lo)).ywxyywxz, ((VECTOR(int32_t, 2))(0x65399F39L, (-1L))).yxyxyxyy))), (safe_mod_func_uint16_t_u_u(0xCC26L, ((*l_370) ^= (l_394 != l_395)))), (((*p_101) >= ((((safe_rshift_func_int16_t_s_s((~((VECTOR(int16_t, 2))(l_398.s5f)).hi), (safe_lshift_func_int8_t_s_s(8L, 3)))) < (l_383 ^ (((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(l_401.xxyyxxyx)).s05)), 0xAE9AD4C7L, 4294967295UL)).y > p_1338->g_96[1]))) ^ (((*l_370) |= (((safe_lshift_func_int16_t_s_s((((((safe_mul_func_uint16_t_u_u(1UL, (p_1338->g_46 = (l_380 & l_383)))) || FAKE_DIVERGE(p_1338->global_0_offset, get_global_id(0), 10)) != FAKE_DIVERGE(p_1338->local_0_offset, get_local_id(0), 10)) & 0x32C6D27BL) & (-1L)), l_388.s6)) | p_1338->g_408) < FAKE_DIVERGE(p_1338->local_0_offset, get_local_id(0), 10))) == p_105)) > l_380)) > 65527UL), ((VECTOR(int32_t, 2))(0x1BB08323L)), 0x70C12E7CL)).hi)).s13)).yxyy)).even, ((VECTOR(int32_t, 2))(0x19BBCC8EL)), ((VECTOR(int32_t, 2))(0x2A61A511L))))).odd && p_103);
                }
                else
                { /* block id: 132 */
                    p_1338->g_409 = p_1338->g_328;
                    for (l_384 = 0; (l_384 < 26); ++l_384)
                    { /* block id: 136 */
                        int32_t *l_416 = &p_1338->g_96[1];
                        int32_t *l_417 = &l_383;
                        int32_t *l_418 = &p_1338->g_36[2][6][1];
                        int32_t *l_419 = (void*)0;
                        int32_t *l_420 = &p_1338->g_36[3][7][0];
                        int32_t *l_421[6][10][4] = {{{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383}},{{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383}},{{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383}},{{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383}},{{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383}},{{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383},{(void*)0,&l_415[1][0],(void*)0,&l_383}}};
                        int i, j, k;
                        (*p_1338->g_204) ^= (safe_div_func_int64_t_s_s(0x7700D4DE8D427025L, p_103));
                        l_414 = l_414;
                        l_422.x--;
                        if ((**p_1338->g_203))
                            break;
                    }
                }
            }
        }
        (**p_1338->g_203) = (**p_1338->g_203);
    }
    for (p_1338->g_328.f0 = (-25); (p_1338->g_328.f0 >= 18); ++p_1338->g_328.f0)
    { /* block id: 149 */
        int8_t l_653 = 0x27L;
        uint32_t *l_661 = &p_1338->g_108[0];
        uint32_t **l_660[7][1][9] = {{{&l_661,&l_661,&l_661,(void*)0,&l_661,&l_661,(void*)0,&l_661,(void*)0}},{{&l_661,&l_661,&l_661,(void*)0,&l_661,&l_661,(void*)0,&l_661,(void*)0}},{{&l_661,&l_661,&l_661,(void*)0,&l_661,&l_661,(void*)0,&l_661,(void*)0}},{{&l_661,&l_661,&l_661,(void*)0,&l_661,&l_661,(void*)0,&l_661,(void*)0}},{{&l_661,&l_661,&l_661,(void*)0,&l_661,&l_661,(void*)0,&l_661,(void*)0}},{{&l_661,&l_661,&l_661,(void*)0,&l_661,&l_661,(void*)0,&l_661,(void*)0}},{{&l_661,&l_661,&l_661,(void*)0,&l_661,&l_661,(void*)0,&l_661,(void*)0}}};
        int32_t l_683[9][7][2] = {{{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)}},{{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)}},{{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)}},{{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)}},{{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)}},{{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)}},{{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)}},{{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)}},{{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)},{0L,(-10L)}}};
        uint8_t l_686[7] = {0xB3L,0xB3L,0xB3L,0xB3L,0xB3L,0xB3L,0xB3L};
        int i, j, k;
        if ((atomic_inc(&p_1338->l_atomic_input[60]) == 6))
        { /* block id: 151 */
            VECTOR(uint32_t, 16) l_427 = (VECTOR(uint32_t, 16))(4294967293UL, (VECTOR(uint32_t, 4))(4294967293UL, (VECTOR(uint32_t, 2))(4294967293UL, 0xE95A4929L), 0xE95A4929L), 0xE95A4929L, 4294967293UL, 0xE95A4929L, (VECTOR(uint32_t, 2))(4294967293UL, 0xE95A4929L), (VECTOR(uint32_t, 2))(4294967293UL, 0xE95A4929L), 4294967293UL, 0xE95A4929L, 4294967293UL, 0xE95A4929L);
            VECTOR(uint16_t, 2) l_428 = (VECTOR(uint16_t, 2))(65535UL, 0x49BFL);
            uint32_t l_429 = 0UL;
            VECTOR(uint16_t, 2) l_430 = (VECTOR(uint16_t, 2))(65531UL, 0x5D52L);
            VECTOR(uint16_t, 2) l_431 = (VECTOR(uint16_t, 2))(4UL, 1UL);
            VECTOR(uint16_t, 2) l_432 = (VECTOR(uint16_t, 2))(0x000CL, 0xB393L);
            VECTOR(uint32_t, 4) l_433 = (VECTOR(uint32_t, 4))(0xAF8020E6L, (VECTOR(uint32_t, 2))(0xAF8020E6L, 0xE30651D0L), 0xE30651D0L);
            struct S0 l_435 = {0x0BD2L,0xC972BED4L};/* VOLATILE GLOBAL l_435 */
            struct S0 *l_434 = &l_435;
            uint64_t l_436 = 0x01CE1BD27BA36C1BL;
            uint32_t l_437 = 0x5FED94A2L;
            int8_t l_438 = 0x40L;
            uint16_t l_439 = 0x5E7BL;
            uint64_t l_440 = 0x16ADAC044D772B57L;
            int i;
            l_434 = (((VECTOR(uint64_t, 16))(upsample(((VECTOR(uint32_t, 8))(sub_sat(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(0x3DA6972CL, 0x8BD2C3F5L)))).xxyyyyyy, ((VECTOR(uint32_t, 16))(l_427.s0f9dc89929233747)).even))).s5232361606245455, ((VECTOR(uint32_t, 4))(mad_hi(((VECTOR(uint32_t, 2))(0xA1734212L, 0UL)).yyyy, ((VECTOR(uint32_t, 4))(upsample(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(8UL, 0x8001L)).xxxy)), ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(mad_hi(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(65527UL, ((VECTOR(uint16_t, 4))(l_428.yyxy)), 1UL, 1UL, 1UL)))).odd, ((VECTOR(uint16_t, 16))((l_428.x = (l_429 , 9UL)), ((VECTOR(uint16_t, 8))(l_430.yyyyxxxx)), ((VECTOR(uint16_t, 4))(l_431.yxxy)), ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(0UL, 9UL)))), 0xEA84L)).se436, ((VECTOR(uint16_t, 2))(l_432.xy)).yxxx))).wwwxwzyxyywyxzxy)).s5f41))), ((VECTOR(uint32_t, 2))(l_433.xz)).yyxy))).xyyxxwzwxzwxxwwx))).sf , (void*)0);
            l_438 |= (l_437 |= l_436);
            if ((l_440 = (l_439 , (-3L))))
            { /* block id: 157 */
                int32_t l_441 = 0x2A21D33FL;
                uint64_t l_495 = 0x0718F7F0EEA9EBCBL;
                uint16_t l_496[2];
                int8_t l_497 = 0x0CL;
                int32_t l_498 = 0x008964C8L;
                VECTOR(int32_t, 16) l_499 = (VECTOR(int32_t, 16))(0x496D31B9L, (VECTOR(int32_t, 4))(0x496D31B9L, (VECTOR(int32_t, 2))(0x496D31B9L, 1L), 1L), 1L, 0x496D31B9L, 1L, (VECTOR(int32_t, 2))(0x496D31B9L, 1L), (VECTOR(int32_t, 2))(0x496D31B9L, 1L), 0x496D31B9L, 1L, 0x496D31B9L, 1L);
                int32_t l_500 = (-1L);
                int i;
                for (i = 0; i < 2; i++)
                    l_496[i] = 0UL;
                for (l_441 = 4; (l_441 <= (-28)); l_441--)
                { /* block id: 160 */
                    int32_t *l_444 = (void*)0;
                    int32_t l_446 = 0x4AD73B57L;
                    int32_t *l_445 = &l_446;
                    uint8_t l_447[5][9][5] = {{{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL}},{{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL}},{{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL}},{{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL}},{{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL},{0x0AL,8UL,0x57L,0x95L,252UL}}};
                    int64_t l_448 = 1L;
                    uint32_t l_449 = 0UL;
                    uint32_t l_450 = 0x3E619681L;
                    VECTOR(int32_t, 2) l_451 = (VECTOR(int32_t, 2))(0x4CAC7C4DL, (-1L));
                    VECTOR(int32_t, 2) l_452 = (VECTOR(int32_t, 2))(0L, 0x2CC88157L);
                    VECTOR(int32_t, 4) l_453 = (VECTOR(int32_t, 4))(0x646501F7L, (VECTOR(int32_t, 2))(0x646501F7L, (-10L)), (-10L));
                    VECTOR(int32_t, 8) l_454 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0L), 0L), 0L, 1L, 0L);
                    uint8_t l_455 = 9UL;
                    uint32_t l_456 = 1UL;
                    VECTOR(int16_t, 8) l_457 = (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x3E79L), 0x3E79L), 0x3E79L, 0L, 0x3E79L);
                    VECTOR(int16_t, 2) l_458 = (VECTOR(int16_t, 2))(0x2422L, (-3L));
                    VECTOR(uint16_t, 8) l_459 = (VECTOR(uint16_t, 8))(5UL, (VECTOR(uint16_t, 4))(5UL, (VECTOR(uint16_t, 2))(5UL, 0x4CDFL), 0x4CDFL), 0x4CDFL, 5UL, 0x4CDFL);
                    VECTOR(int32_t, 4) l_460 = (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), 0L), 0L);
                    VECTOR(int32_t, 16) l_461 = (VECTOR(int32_t, 16))(0x1A6FC8ABL, (VECTOR(int32_t, 4))(0x1A6FC8ABL, (VECTOR(int32_t, 2))(0x1A6FC8ABL, (-1L)), (-1L)), (-1L), 0x1A6FC8ABL, (-1L), (VECTOR(int32_t, 2))(0x1A6FC8ABL, (-1L)), (VECTOR(int32_t, 2))(0x1A6FC8ABL, (-1L)), 0x1A6FC8ABL, (-1L), 0x1A6FC8ABL, (-1L));
                    VECTOR(int32_t, 2) l_462 = (VECTOR(int32_t, 2))((-1L), 0x74444836L);
                    VECTOR(int32_t, 16) l_463 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L, (VECTOR(int32_t, 2))((-1L), 0L), (VECTOR(int32_t, 2))((-1L), 0L), (-1L), 0L, (-1L), 0L);
                    VECTOR(int32_t, 2) l_464 = (VECTOR(int32_t, 2))(0x0F4B1FEAL, (-4L));
                    VECTOR(int32_t, 8) l_465 = (VECTOR(int32_t, 8))(0x1AE0E9EEL, (VECTOR(int32_t, 4))(0x1AE0E9EEL, (VECTOR(int32_t, 2))(0x1AE0E9EEL, (-1L)), (-1L)), (-1L), 0x1AE0E9EEL, (-1L));
                    VECTOR(int32_t, 16) l_466 = (VECTOR(int32_t, 16))(0x497990BEL, (VECTOR(int32_t, 4))(0x497990BEL, (VECTOR(int32_t, 2))(0x497990BEL, 0x13D7B2C9L), 0x13D7B2C9L), 0x13D7B2C9L, 0x497990BEL, 0x13D7B2C9L, (VECTOR(int32_t, 2))(0x497990BEL, 0x13D7B2C9L), (VECTOR(int32_t, 2))(0x497990BEL, 0x13D7B2C9L), 0x497990BEL, 0x13D7B2C9L, 0x497990BEL, 0x13D7B2C9L);
                    VECTOR(int32_t, 2) l_467 = (VECTOR(int32_t, 2))((-1L), 0x5DDEE2ABL);
                    VECTOR(int32_t, 2) l_468 = (VECTOR(int32_t, 2))(0L, 0x2F74CB91L);
                    uint8_t l_469 = 1UL;
                    VECTOR(int32_t, 8) l_470 = (VECTOR(int32_t, 8))(0x6481E56AL, (VECTOR(int32_t, 4))(0x6481E56AL, (VECTOR(int32_t, 2))(0x6481E56AL, 0x7EA09EE0L), 0x7EA09EE0L), 0x7EA09EE0L, 0x6481E56AL, 0x7EA09EE0L);
                    int32_t l_471 = 0x24F517A7L;
                    VECTOR(int32_t, 8) l_472 = (VECTOR(int32_t, 8))(0x3D667145L, (VECTOR(int32_t, 4))(0x3D667145L, (VECTOR(int32_t, 2))(0x3D667145L, 0L), 0L), 0L, 0x3D667145L, 0L);
                    VECTOR(int32_t, 8) l_473 = (VECTOR(int32_t, 8))(0x26FFAFC9L, (VECTOR(int32_t, 4))(0x26FFAFC9L, (VECTOR(int32_t, 2))(0x26FFAFC9L, (-1L)), (-1L)), (-1L), 0x26FFAFC9L, (-1L));
                    VECTOR(int8_t, 4) l_474 = (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0L), 0L);
                    VECTOR(int8_t, 16) l_475 = (VECTOR(int8_t, 16))((-6L), (VECTOR(int8_t, 4))((-6L), (VECTOR(int8_t, 2))((-6L), (-1L)), (-1L)), (-1L), (-6L), (-1L), (VECTOR(int8_t, 2))((-6L), (-1L)), (VECTOR(int8_t, 2))((-6L), (-1L)), (-6L), (-1L), (-6L), (-1L));
                    VECTOR(int32_t, 2) l_476 = (VECTOR(int32_t, 2))(0x4A9CED94L, 0x7F6A1569L);
                    VECTOR(int32_t, 8) l_477 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x3BAE886FL), 0x3BAE886FL), 0x3BAE886FL, (-1L), 0x3BAE886FL);
                    VECTOR(int32_t, 8) l_478 = (VECTOR(int32_t, 8))(0x126B1329L, (VECTOR(int32_t, 4))(0x126B1329L, (VECTOR(int32_t, 2))(0x126B1329L, (-6L)), (-6L)), (-6L), 0x126B1329L, (-6L));
                    VECTOR(int32_t, 2) l_479 = (VECTOR(int32_t, 2))(0x707449CEL, (-1L));
                    int8_t l_480 = 9L;
                    int64_t l_481 = 1L;
                    uint32_t l_482 = 4UL;
                    int16_t l_483 = 0x5881L;
                    int32_t l_484 = (-4L);
                    uint32_t l_485 = 4294967295UL;
                    struct S0 l_486[4][10] = {{{0UL,3UL},{0UL,3UL},{0xF74FL,1UL},{1UL,6UL},{65532UL,4294967295UL},{1UL,6UL},{0xF74FL,1UL},{0UL,3UL},{0UL,3UL},{0xF74FL,1UL}},{{0UL,3UL},{0UL,3UL},{0xF74FL,1UL},{1UL,6UL},{65532UL,4294967295UL},{1UL,6UL},{0xF74FL,1UL},{0UL,3UL},{0UL,3UL},{0xF74FL,1UL}},{{0UL,3UL},{0UL,3UL},{0xF74FL,1UL},{1UL,6UL},{65532UL,4294967295UL},{1UL,6UL},{0xF74FL,1UL},{0UL,3UL},{0UL,3UL},{0xF74FL,1UL}},{{0UL,3UL},{0UL,3UL},{0xF74FL,1UL},{1UL,6UL},{65532UL,4294967295UL},{1UL,6UL},{0xF74FL,1UL},{0UL,3UL},{0UL,3UL},{0xF74FL,1UL}}};
                    uint64_t l_487 = 0x5EF8645B00C73116L;
                    uint32_t l_488[3][6] = {{3UL,0x0CA8DE6EL,8UL,4294967290UL,0x0CA8DE6EL,4294967290UL},{3UL,0x0CA8DE6EL,8UL,4294967290UL,0x0CA8DE6EL,4294967290UL},{3UL,0x0CA8DE6EL,8UL,4294967290UL,0x0CA8DE6EL,4294967290UL}};
                    uint16_t l_489 = 0xAFDEL;
                    int64_t l_490 = 1L;
                    int32_t l_491 = 0x10D1AF47L;
                    uint64_t l_492 = 1UL;
                    int32_t *l_493[6] = {&l_491,&l_491,&l_491,&l_491,&l_491,&l_491};
                    int32_t *l_494 = (void*)0;
                    int i, j, k;
                    l_445 = l_444;
                    l_489 |= (l_488[0][1] = (((l_485 = ((l_450 = (((l_447[0][0][2] , l_448) , FAKE_DIVERGE(p_1338->global_0_offset, get_global_id(0), 10)) , l_449)) , ((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 8))(max(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 16))(1L, (-7L), 0x3F10ACCFL, ((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))((-1L), (-6L))).yyyxyxxx, ((VECTOR(int32_t, 8))(l_451.yyyyxxyy)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_452.xy)), 5L, (-1L))).yxzwzxww))), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(l_453.xywy)).lo)), 0x7EF20B9DL, 1L, 6L)), ((VECTOR(int32_t, 16))(l_454.s3753414522005662))))).even)), (int32_t)(l_456 = l_455)))), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))((-1L), ((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 8))(add_sat(((VECTOR(int16_t, 16))(l_457.s1260560517615463)).lo, ((VECTOR(int16_t, 2))(l_458.yy)).xxxxyyxy))).s02, ((VECTOR(uint16_t, 2))(l_459.s67))))), 0x07FECBACL)).odd)), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(l_460.xyzzzyzwwwxwwzww)))).sbf))).xxxxyxyx)), ((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_461.s8d2591ff)).s20)).yyxyxyxxyyxyyyxy, ((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 4))(l_462.yyxy)).lo))).yxyyyxyyxyxxyyxy, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_463.s7a)), 3L, 3L)).ywxxwwzyxxwxyxxy))))).s3b, ((VECTOR(int32_t, 16))(l_464.xyyxxxyxyxyxyxyy)).s6f))).xyxyxxyx))).s5267023550206335)).hi, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_465.s71)).xxxx)).yyyyzxxy, ((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(l_466.sd11a)), ((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))(l_467.yx)), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_468.yx)), 1L, ((VECTOR(int32_t, 4))(l_469, 0x2017BF5AL, (-6L), 0x2B8CA537L)).y, ((VECTOR(int32_t, 4))(l_470.s1673)).z, ((VECTOR(int32_t, 2))(0x070139B2L, 0x51EC7923L)), 0x77D0EF83L)))).s50))).xyxx, ((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(0x46B36B9EL, l_471, (-9L), 0L)).xxywwzywzyxzwzyz)).s3a, ((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))((-7L), 0x740E523DL)), ((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 8))(l_472.s32410742)), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(l_473.s70124442))))))))).s76, (int32_t)(((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 2))(l_474.zy)).xxxy, ((VECTOR(int8_t, 2))(l_475.sa9)).yxxy))).y , ((VECTOR(int32_t, 4))(l_476.xxyy)).z)))).odd, (-3L), ((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 2))(0x7340DEBFL, 0L)).xxyy, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))((-1L), 0x15D7A159L)), 0x533D6697L, 0x6B65B423L))))))).odd, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(l_477.s0011123550546062)).sf1)).yxyx, ((VECTOR(int32_t, 8))(0x77E78062L, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 2))(l_478.s67)).xxyxxxxyxxxyyyyx, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 8))(l_479.yxxxyyxx)).lo))).xxxzyzzywzyzzxxz)).s78)).yyyyxyxy)).s2647637000477545))))).s00)).xyyx)), 0x66D14C51L, 8L, 0x67B92A35L)).odd))).hi)), (-3L), 0L, (l_480 = (-1L)), (l_481 , 0x0C5E6A30L), l_482, 0x1983D008L, 0x666DD0E0L, ((VECTOR(int32_t, 4))(0x50FBFFAAL)), ((VECTOR(int32_t, 2))(0x318F1394L)), 0x3EBA3B46L)).sd125))).hi)).lo, 1L, 0x486955E5L, ((VECTOR(int32_t, 2))(0x3ED2B4FDL)), 1L, 0x27B5E62AL, l_483, (-1L), 0x183ABFC4L, ((VECTOR(int32_t, 4))((-7L))), (-1L), 0x2786D432L)).s4a)).yxyyyyxx)), ((VECTOR(int32_t, 8))(0x5DF7CCFDL))))).lo)).hi)), ((VECTOR(int32_t, 4))(0L)), l_484, ((VECTOR(int32_t, 4))(2L)), (-1L), 1L, 0x3169FBA3L, 0L, (-9L))).lo, ((VECTOR(int32_t, 8))(4L))))).s50))).xxxy))).zxywwzyz))).s5)) , l_486[2][3]) , l_487));
                    l_491 = l_490;
                    l_494 = ((l_492 , 0x2AFDL) , (l_493[3] = (void*)0));
                }
                l_498 &= ((l_496[1] |= l_495) , l_497);
                l_500 = ((VECTOR(int32_t, 8))(l_499.sa03958b0)).s6;
            }
            else
            { /* block id: 175 */
                VECTOR(int32_t, 16) l_501 = (VECTOR(int32_t, 16))((-7L), (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), (-1L)), (-1L)), (-1L), (-7L), (-1L), (VECTOR(int32_t, 2))((-7L), (-1L)), (VECTOR(int32_t, 2))((-7L), (-1L)), (-7L), (-1L), (-7L), (-1L));
                int32_t l_502 = 0x6395B63DL;
                uint64_t l_505 = 0xED43AEA9E8349339L;
                uint64_t *l_504 = &l_505;
                uint64_t **l_503 = &l_504;
                uint64_t **l_506 = (void*)0;
                int i;
                l_502 |= ((VECTOR(int32_t, 16))(l_501.s7ef4bca88d76fe24)).s5;
                l_506 = l_503;
            }
            for (l_428.x = 0; (l_428.x < 12); l_428.x = safe_add_func_int8_t_s_s(l_428.x, 2))
            { /* block id: 181 */
                int32_t l_509 = (-1L);
                VECTOR(int32_t, 16) l_602 = (VECTOR(int32_t, 16))(0x74399235L, (VECTOR(int32_t, 4))(0x74399235L, (VECTOR(int32_t, 2))(0x74399235L, 1L), 1L), 1L, 0x74399235L, 1L, (VECTOR(int32_t, 2))(0x74399235L, 1L), (VECTOR(int32_t, 2))(0x74399235L, 1L), 0x74399235L, 1L, 0x74399235L, 1L);
                VECTOR(int32_t, 4) l_603 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x0FDDB590L), 0x0FDDB590L);
                uint32_t l_604 = 0xF1C99609L;
                uint32_t l_605 = 0x2BB0B254L;
                int64_t l_606 = 0x4DF41D58D55A0DDBL;
                int i;
                for (l_509 = (-23); (l_509 > 22); l_509++)
                { /* block id: 184 */
                    int32_t l_513 = 0x51FC2CE4L;
                    int32_t *l_512 = &l_513;
                    int32_t *l_514 = &l_513;
                    int32_t l_515 = (-4L);
                    VECTOR(int32_t, 16) l_538 = (VECTOR(int32_t, 16))((-9L), (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), (-5L)), (-5L)), (-5L), (-9L), (-5L), (VECTOR(int32_t, 2))((-9L), (-5L)), (VECTOR(int32_t, 2))((-9L), (-5L)), (-9L), (-5L), (-9L), (-5L));
                    VECTOR(int32_t, 16) l_539 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x5A014212L), 0x5A014212L), 0x5A014212L, 1L, 0x5A014212L, (VECTOR(int32_t, 2))(1L, 0x5A014212L), (VECTOR(int32_t, 2))(1L, 0x5A014212L), 1L, 0x5A014212L, 1L, 0x5A014212L);
                    int32_t l_540[9][10][2] = {{{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L}},{{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L}},{{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L}},{{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L}},{{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L}},{{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L}},{{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L}},{{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L}},{{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L},{0x6FA8D10CL,0L}}};
                    uint8_t l_541 = 0x4DL;
                    uint32_t l_542 = 9UL;
                    int32_t l_543[10][2] = {{3L,3L},{3L,3L},{3L,3L},{3L,3L},{3L,3L},{3L,3L},{3L,3L},{3L,3L},{3L,3L},{3L,3L}};
                    int32_t l_544 = 0x172E9FC3L;
                    VECTOR(int32_t, 8) l_545 = (VECTOR(int32_t, 8))(0x5F6C13DAL, (VECTOR(int32_t, 4))(0x5F6C13DAL, (VECTOR(int32_t, 2))(0x5F6C13DAL, 0x36133192L), 0x36133192L), 0x36133192L, 0x5F6C13DAL, 0x36133192L);
                    VECTOR(int32_t, 4) l_546 = (VECTOR(int32_t, 4))(0x3142A539L, (VECTOR(int32_t, 2))(0x3142A539L, 0x0965218EL), 0x0965218EL);
                    VECTOR(int32_t, 8) l_547 = (VECTOR(int32_t, 8))((-6L), (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), 0x0CD92080L), 0x0CD92080L), 0x0CD92080L, (-6L), 0x0CD92080L);
                    uint64_t l_548 = 18446744073709551615UL;
                    uint8_t l_549 = 0xFEL;
                    VECTOR(int32_t, 16) l_550 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L), (VECTOR(int32_t, 2))(0L, (-1L)), (VECTOR(int32_t, 2))(0L, (-1L)), 0L, (-1L), 0L, (-1L));
                    int8_t l_551[2][5] = {{(-4L),0L,(-4L),(-4L),0L},{(-4L),0L,(-4L),(-4L),0L}};
                    int32_t l_552[6][9][4] = {{{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL}},{{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL}},{{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL}},{{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL}},{{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL}},{{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL},{(-8L),1L,0x117994C6L,0x6AEADC2BL}}};
                    int8_t l_553[2];
                    int i, j, k;
                    for (i = 0; i < 2; i++)
                        l_553[i] = 0x18L;
                    l_514 = l_512;
                    if (l_515)
                    { /* block id: 186 */
                        uint16_t l_516 = 65535UL;
                        uint64_t l_519 = 18446744073709551606UL;
                        int32_t l_522 = (-1L);
                        VECTOR(uint64_t, 16) l_523 = (VECTOR(uint64_t, 16))(0xC92CC67CF598642EL, (VECTOR(uint64_t, 4))(0xC92CC67CF598642EL, (VECTOR(uint64_t, 2))(0xC92CC67CF598642EL, 18446744073709551610UL), 18446744073709551610UL), 18446744073709551610UL, 0xC92CC67CF598642EL, 18446744073709551610UL, (VECTOR(uint64_t, 2))(0xC92CC67CF598642EL, 18446744073709551610UL), (VECTOR(uint64_t, 2))(0xC92CC67CF598642EL, 18446744073709551610UL), 0xC92CC67CF598642EL, 18446744073709551610UL, 0xC92CC67CF598642EL, 18446744073709551610UL);
                        VECTOR(uint64_t, 8) l_524 = (VECTOR(uint64_t, 8))(0xC056375EC06F564DL, (VECTOR(uint64_t, 4))(0xC056375EC06F564DL, (VECTOR(uint64_t, 2))(0xC056375EC06F564DL, 18446744073709551607UL), 18446744073709551607UL), 18446744073709551607UL, 0xC056375EC06F564DL, 18446744073709551607UL);
                        uint32_t l_525[7];
                        uint64_t l_526[4];
                        uint32_t l_527 = 0x7B72D0C4L;
                        VECTOR(uint64_t, 8) l_528 = (VECTOR(uint64_t, 8))(0x50916E4F1FC2FFD1L, (VECTOR(uint64_t, 4))(0x50916E4F1FC2FFD1L, (VECTOR(uint64_t, 2))(0x50916E4F1FC2FFD1L, 0UL), 0UL), 0UL, 0x50916E4F1FC2FFD1L, 0UL);
                        VECTOR(uint64_t, 8) l_529 = (VECTOR(uint64_t, 8))(18446744073709551613UL, (VECTOR(uint64_t, 4))(18446744073709551613UL, (VECTOR(uint64_t, 2))(18446744073709551613UL, 18446744073709551608UL), 18446744073709551608UL), 18446744073709551608UL, 18446744073709551613UL, 18446744073709551608UL);
                        uint32_t l_530 = 0xC58509C9L;
                        int16_t l_531[2];
                        int64_t l_532 = 0x326384EF6546CA53L;
                        VECTOR(uint16_t, 2) l_533 = (VECTOR(uint16_t, 2))(0x78C0L, 1UL);
                        VECTOR(uint16_t, 16) l_534 = (VECTOR(uint16_t, 16))(0x4889L, (VECTOR(uint16_t, 4))(0x4889L, (VECTOR(uint16_t, 2))(0x4889L, 65535UL), 65535UL), 65535UL, 0x4889L, 65535UL, (VECTOR(uint16_t, 2))(0x4889L, 65535UL), (VECTOR(uint16_t, 2))(0x4889L, 65535UL), 0x4889L, 65535UL, 0x4889L, 65535UL);
                        uint32_t l_535[6] = {4294967286UL,0x418B49FAL,4294967286UL,4294967286UL,0x418B49FAL,4294967286UL};
                        int i;
                        for (i = 0; i < 7; i++)
                            l_525[i] = 0x2EBE6962L;
                        for (i = 0; i < 4; i++)
                            l_526[i] = 18446744073709551615UL;
                        for (i = 0; i < 2; i++)
                            l_531[i] = 1L;
                        l_516++;
                        ++l_519;
                        l_522 = 1L;
                        l_512 = (((VECTOR(uint64_t, 4))(safe_clamp_func(VECTOR(uint64_t, 4),VECTOR(uint64_t, 4),((VECTOR(uint64_t, 16))(0x09EC46868658D902L, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(l_523.sccdb)).w, 0x9CC474AB9C3E9E2CL, ((VECTOR(uint64_t, 2))(l_524.s40)), l_525[3], 1UL, 0x5157075594575731L, 0xF3C96A96F33B2B33L)), 5UL, (GROUP_DIVERGE(2, 1) , l_526[1]), ((VECTOR(uint64_t, 2))(0x67C0A7CD8F7A51C4L, 1UL)), l_527, 0x65C0A6C7084D8D6FL, 0x461A968B2075B8F8L)).s2095, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(l_528.s75655750)))).lo, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))(hadd(((VECTOR(uint64_t, 8))(18446744073709551615UL, ((VECTOR(uint64_t, 2))(l_529.s60)), l_530, 0xF7EA55D0D9FF14B9L, (l_531[0] , 0UL), 2UL, 0xCDB8D7CEACB3A8A1L)).s1276242411474343, ((VECTOR(uint64_t, 8))(upsample(((VECTOR(uint32_t, 2))(safe_clamp_func(VECTOR(uint32_t, 2),VECTOR(uint32_t, 2),((VECTOR(uint32_t, 4))((l_427.sc = (GROUP_DIVERGE(2, 1) , 0x1C5B83D4L)), l_532, 1UL, 0UL)).even, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(safe_clamp_func(VECTOR(uint32_t, 8),uint32_t,((VECTOR(uint32_t, 8))(upsample(((VECTOR(uint16_t, 16))(l_533.xxyyyxxxyyxxxyxx)).odd, ((VECTOR(uint16_t, 16))(l_534.s83dbc6f60d302c98)).hi))), (uint32_t)l_535[4], (uint32_t)FAKE_DIVERGE(p_1338->group_1_offset, get_group_id(1), 10)))).s62)), ((VECTOR(uint32_t, 2))(9UL))))).yxyyyyyy, ((VECTOR(uint32_t, 8))(0x2409035EL))))).s7406767755266664))))).sf25b))).y , (void*)0);
                    }
                    else
                    { /* block id: 192 */
                        struct S0 l_536 = {0x122CL,1UL};/* VOLATILE GLOBAL l_536 */
                        struct S0 *l_537 = &l_536;
                        l_435 = l_536;
                        l_434 = l_537;
                    }
                    l_552[2][0][0] ^= (((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 8))(0x537C94E5L, 0x53AC8BF8L, ((VECTOR(int32_t, 4))((-3L), ((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(l_538.s0397)).yzxxzzzwwzwzxzww)).s40, ((VECTOR(int32_t, 2))(0L, 0x6E9D4E43L))))), 1L)), 0x39630B3FL, 0x1D12604DL)).s7111233466707376, ((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),int32_t,((VECTOR(int32_t, 8))(l_539.sa6bd3ba0)), (int32_t)0x227DB1B4L, (int32_t)(((l_541 = l_540[6][9][0]) , l_542) , (l_544 = l_543[0][1]))))).s1756451044557333))).s1d9e, ((VECTOR(int32_t, 8))(l_545.s05462230)).odd, ((VECTOR(int32_t, 16))(l_546.xxwywwywyyzwwzyx)).seff7))).wyyxyxxx, ((VECTOR(int32_t, 4))(l_547.s3646)).wyywwzzz))).s0 , (l_551[0][2] = ((l_549 = l_548) , ((VECTOR(int32_t, 16))(l_550.scdccfb369480ea3a)).s0)));
                    if (l_553[0])
                    { /* block id: 201 */
                        VECTOR(int32_t, 16) l_554 = (VECTOR(int32_t, 16))((-5L), (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), 0x41F7DFDEL), 0x41F7DFDEL), 0x41F7DFDEL, (-5L), 0x41F7DFDEL, (VECTOR(int32_t, 2))((-5L), 0x41F7DFDEL), (VECTOR(int32_t, 2))((-5L), 0x41F7DFDEL), (-5L), 0x41F7DFDEL, (-5L), 0x41F7DFDEL);
                        uint64_t l_555 = 1UL;
                        VECTOR(uint64_t, 2) l_558 = (VECTOR(uint64_t, 2))(18446744073709551610UL, 0x7CEB6250BCF7A4DAL);
                        uint32_t l_559[10][8][3] = {{{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL}},{{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL}},{{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL}},{{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL}},{{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL}},{{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL}},{{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL}},{{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL}},{{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL}},{{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL},{0UL,0x83B212CDL,0xFA064AEFL}}};
                        uint32_t l_560 = 0x27B7CB0BL;
                        int32_t l_561 = (-6L);
                        VECTOR(int64_t, 2) l_562 = (VECTOR(int64_t, 2))(0x49777FDB1C20998DL, 0x07CB1FCDC99DB8DAL);
                        uint16_t l_563 = 0xE0FBL;
                        VECTOR(int32_t, 4) l_564 = (VECTOR(int32_t, 4))(0x4E489270L, (VECTOR(int32_t, 2))(0x4E489270L, (-1L)), (-1L));
                        int32_t l_565 = 0x370AD0EEL;
                        VECTOR(uint64_t, 16) l_566 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0xD244B5D92F532AFEL), 0xD244B5D92F532AFEL), 0xD244B5D92F532AFEL, 0UL, 0xD244B5D92F532AFEL, (VECTOR(uint64_t, 2))(0UL, 0xD244B5D92F532AFEL), (VECTOR(uint64_t, 2))(0UL, 0xD244B5D92F532AFEL), 0UL, 0xD244B5D92F532AFEL, 0UL, 0xD244B5D92F532AFEL);
                        uint32_t l_567[2];
                        uint8_t l_568 = 1UL;
                        uint64_t l_569 = 0x3A8DB38F093F3B5EL;
                        uint32_t l_570 = 0xE6E36AFBL;
                        int32_t l_571 = 0x697539DCL;
                        int16_t l_572 = 0x5AAAL;
                        uint32_t l_573 = 4294967295UL;
                        int64_t l_574 = 0x4D21B4EB1F0BA860L;
                        uint8_t l_575 = 0x82L;
                        struct S0 l_576 = {0xDC01L,0x2E439B2BL};/* VOLATILE GLOBAL l_576 */
                        VECTOR(int32_t, 2) l_577 = (VECTOR(int32_t, 2))(0x009DB8F2L, (-10L));
                        int i, j, k;
                        for (i = 0; i < 2; i++)
                            l_567[i] = 0x2AE2A3A8L;
                        ++l_555;
                        l_540[6][9][0] = ((GROUP_DIVERGE(1, 1) , 0x3A940B28L) , ((VECTOR(int32_t, 16))(l_558.x, ((VECTOR(int32_t, 2))(0x123E02EAL, 1L)), 0L, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x48CE245CL, 0x0718DB7BL)).xyxy)), 0x460FA50EL, (l_546.y &= ((*l_514) &= (l_560 = l_559[4][3][1]))), ((l_561 &= 0x4CC53D16DDAA5C4AL) , (((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(l_562.xyxxxyyxyxyyxyxx)).even)).s7 , l_563)), ((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(l_564.zzxyzyxyyzzzxwyx)).s37)).xyxx, ((VECTOR(int32_t, 8))((((VECTOR(uint64_t, 16))(18446744073709551612UL, 0UL, 0xA7F3EA876D816E68L, 0xA3CE98FFB688EBD9L, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(0xCCF9573A0D40E97CL, 0x318EDB5CFCBD7575L)), (l_565 , (l_440 = ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(l_566.s26040fa06e5e5bcf)).lo)).s0)), 0xBE553D2030CB06DBL, ((VECTOR(uint64_t, 2))(5UL, 18446744073709551615UL)), 0x7FEA82374DB23C17L, 18446744073709551615UL)), 6UL, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(rhadd(((VECTOR(uint64_t, 4))(0x4555EFDA55E42C0FL, (l_548 = (((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(l_567[1], 0x53L, 0xB6L, 0x91L)).ywzyyxzy)).s0 , l_568)), 0UL, 0x2D444B7D2E5C3632L)).xxzzyyzxxzzzwzxy, ((VECTOR(uint64_t, 16))(0x2928C682B4BB0647L))))).sa1)), 0x84FFF1458DB51071L)).s3 , l_569), (-9L), 0L, l_570, l_571, l_572, 9L, (-1L))).lo))), 0x7124DBC0L)).s1);
                        l_435 = (l_573 , ((l_515 = ((l_574 = ((VECTOR(int32_t, 2))(1L, (-7L))).hi) , (l_544 = l_575))) , l_576));
                        l_539.s3 = ((*l_514) = ((VECTOR(int32_t, 4))(l_577.xyxx)).x);
                    }
                    else
                    { /* block id: 216 */
                        VECTOR(int32_t, 2) l_578 = (VECTOR(int32_t, 2))(0x78A0C35FL, (-4L));
                        VECTOR(int16_t, 2) l_579 = (VECTOR(int16_t, 2))(6L, 0x7BEBL);
                        VECTOR(uint16_t, 8) l_580 = (VECTOR(uint16_t, 8))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 1UL), 1UL), 1UL, 65535UL, 1UL);
                        VECTOR(uint16_t, 4) l_581 = (VECTOR(uint16_t, 4))(65532UL, (VECTOR(uint16_t, 2))(65532UL, 65535UL), 65535UL);
                        VECTOR(uint16_t, 8) l_582 = (VECTOR(uint16_t, 8))(65531UL, (VECTOR(uint16_t, 4))(65531UL, (VECTOR(uint16_t, 2))(65531UL, 9UL), 9UL), 9UL, 65531UL, 9UL);
                        VECTOR(uint16_t, 4) l_585 = (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0UL), 0UL);
                        int64_t l_586 = 3L;
                        VECTOR(uint8_t, 2) l_587 = (VECTOR(uint8_t, 2))(255UL, 0xBCL);
                        VECTOR(uint8_t, 8) l_588 = (VECTOR(uint8_t, 8))(0xD0L, (VECTOR(uint8_t, 4))(0xD0L, (VECTOR(uint8_t, 2))(0xD0L, 4UL), 4UL), 4UL, 0xD0L, 4UL);
                        VECTOR(uint8_t, 4) l_589 = (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x9FL), 0x9FL);
                        VECTOR(uint8_t, 4) l_590 = (VECTOR(uint8_t, 4))(0x80L, (VECTOR(uint8_t, 2))(0x80L, 1UL), 1UL);
                        VECTOR(uint8_t, 16) l_591 = (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 253UL), 253UL), 253UL, 0UL, 253UL, (VECTOR(uint8_t, 2))(0UL, 253UL), (VECTOR(uint8_t, 2))(0UL, 253UL), 0UL, 253UL, 0UL, 253UL);
                        VECTOR(int64_t, 2) l_592 = (VECTOR(int64_t, 2))(0x02B96743E3148E4FL, (-1L));
                        uint64_t l_593 = 0x5397CAFDA0547236L;
                        uint64_t l_594 = 0UL;
                        VECTOR(uint8_t, 8) l_595 = (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x48L), 0x48L), 0x48L, 255UL, 0x48L);
                        int32_t l_596 = (-10L);
                        uint64_t l_597 = 18446744073709551609UL;
                        VECTOR(uint8_t, 16) l_598 = (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 1UL), 1UL), 1UL, 1UL, 1UL, (VECTOR(uint8_t, 2))(1UL, 1UL), (VECTOR(uint8_t, 2))(1UL, 1UL), 1UL, 1UL, 1UL, 1UL);
                        VECTOR(uint8_t, 16) l_599 = (VECTOR(uint8_t, 16))(3UL, (VECTOR(uint8_t, 4))(3UL, (VECTOR(uint8_t, 2))(3UL, 0x2AL), 0x2AL), 0x2AL, 3UL, 0x2AL, (VECTOR(uint8_t, 2))(3UL, 0x2AL), (VECTOR(uint8_t, 2))(3UL, 0x2AL), 3UL, 0x2AL, 3UL, 0x2AL);
                        VECTOR(uint8_t, 2) l_600 = (VECTOR(uint8_t, 2))(1UL, 0x4BL);
                        int8_t l_601 = 0L;
                        int i;
                        (*l_514) &= (l_578.y = ((VECTOR(int32_t, 8))(l_578.xyxxxxyy)).s2);
                        (*l_514) = ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(0x5A62L, ((VECTOR(int16_t, 2))(l_579.yx)), 0x0280L)).odd)).yyyyyxyx, ((VECTOR(uint16_t, 8))(rotate(((VECTOR(uint16_t, 2))(hadd(((VECTOR(uint16_t, 8))(l_580.s63422063)).s43, ((VECTOR(uint16_t, 4))(l_581.wwyw)).hi))).xyyxxxyy, ((VECTOR(uint16_t, 16))(mad_hi(((VECTOR(uint16_t, 2))(add_sat(((VECTOR(uint16_t, 8))(l_582.s22253100)).s61, ((VECTOR(uint16_t, 2))(mad_sat(((VECTOR(uint16_t, 16))(min(((VECTOR(uint16_t, 2))(0UL, 0x0C8CL)).xxxyxyyyxyyxyyyy, (uint16_t)(--l_432.x)))).s31, ((VECTOR(uint16_t, 2))(l_585.yy)), ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(abs(((VECTOR(uint16_t, 8))(max(((VECTOR(uint16_t, 2))(upsample(((VECTOR(uint8_t, 8))(abs(((VECTOR(int8_t, 8))((-6L), (l_551[0][4] |= ((l_586 = (l_541 = FAKE_DIVERGE(p_1338->local_2_offset, get_local_id(2), 10))) , 8L)), 0x62L, (((VECTOR(uint8_t, 8))(rotate(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(mul_hi(((VECTOR(uint8_t, 16))(mad_sat(((VECTOR(uint8_t, 2))(sub_sat(((VECTOR(uint8_t, 8))(clz(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(FAKE_DIVERGE(p_1338->group_0_offset, get_group_id(0), 10), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(rhadd(((VECTOR(uint8_t, 4))(l_587.xyyy)).xzzxxyxyxyxzyxxw, ((VECTOR(uint8_t, 16))(sub_sat(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(0x7CL, ((VECTOR(uint8_t, 2))(l_588.s74)), 255UL)).hi)).xxxyxxxxyyxxxxyy, ((VECTOR(uint8_t, 16))(add_sat(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(min(((VECTOR(uint8_t, 2))(0x18L, 1UL)).xyyy, ((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 16))(l_589.xxxzxzwxxxwwzwxy)).hi, ((VECTOR(uint8_t, 4))(l_590.yzzy)).wwwwzxxx))).lo, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(l_591.s7d)), 255UL, 0x26L, ((VECTOR(uint8_t, 2))(0UL, 0x11L)), 1UL, 0x26L)).lo)))))).zwxxwzzw)).s7420352100726074, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(0x62L, 0xB3L, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(1UL, 0UL)), 255UL, 1UL)), l_592.x, ((l_593 , l_594) , (l_541 = ((VECTOR(uint8_t, 16))(l_595.s0503707343644065)).sb)), l_596, l_597, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(rhadd(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(l_598.s02f14b5d0cbdc186)).sc037)).zyyzzyzwxxzywzxw, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(l_599.s482e)).zyywwyxwwyxxyywy))))).lo)).s57)), 255UL, 250UL, 0x65L, 1UL)).s927e)).hi)))).yxxyyyxyxxxyxxxx))))))))).sc, ((VECTOR(uint8_t, 2))(l_600.yx)), 0x99L)), ((l_601 , 18446744073709551615UL) , 247UL), 0UL, 253UL)).s45)).xyxyxxyx))).s25, ((VECTOR(uint8_t, 2))(0xF3L))))).yxxyxxyyyyyyxyyx, ((VECTOR(uint8_t, 16))(3UL)), ((VECTOR(uint8_t, 16))(0x9FL))))), ((VECTOR(uint8_t, 16))(3UL))))).s7d38)).xwzwyxzz, ((VECTOR(uint8_t, 8))(0xE3L))))).s1 , 8L), 0x18L, 0x02L, 0x39L, (-1L)))))).s23, ((VECTOR(uint8_t, 2))(0xCCL))))).yyxxxxxx, ((VECTOR(uint16_t, 8))(65526UL))))).hi))).xyyzyzxywwyzyxzw)).s2e)))))).yyyyyyxyyxxyyyyy, ((VECTOR(uint16_t, 16))(0xC4A5L)), ((VECTOR(uint16_t, 16))(6UL))))).hi)))))).s4076753242714520)).lo)).s4;
                    }
                }
                l_509 |= ((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 4))((-1L), ((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))((-3L), 0x3F074B4FL)), 0x01BFF25EL, 0x1402E375L)).wzwzwywyyzzzxzzz)).s30, ((VECTOR(int32_t, 16))(l_602.sc5832b6f395c99c0)).s22))), 1L)), (int32_t)(l_606 = ((l_604 |= ((VECTOR(int32_t, 2))(l_603.yz)).lo) , l_605))))).z;
                for (l_605 = (-27); (l_605 >= 21); l_605 = safe_add_func_int32_t_s_s(l_605, 5))
                { /* block id: 232 */
                    int32_t l_609 = 1L;
                    VECTOR(int32_t, 8) l_635 = (VECTOR(int32_t, 8))(0x61395C24L, (VECTOR(int32_t, 4))(0x61395C24L, (VECTOR(int32_t, 2))(0x61395C24L, 0x4E3B53EEL), 0x4E3B53EEL), 0x4E3B53EEL, 0x61395C24L, 0x4E3B53EEL);
                    VECTOR(int32_t, 4) l_636 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0L), 0L);
                    VECTOR(int32_t, 2) l_637 = (VECTOR(int32_t, 2))(6L, 0x323049D7L);
                    VECTOR(uint16_t, 2) l_638 = (VECTOR(uint16_t, 2))(0x35A6L, 0x45F9L);
                    VECTOR(uint16_t, 4) l_639 = (VECTOR(uint16_t, 4))(0x47CEL, (VECTOR(uint16_t, 2))(0x47CEL, 0xFC03L), 0xFC03L);
                    int8_t l_640 = 5L;
                    VECTOR(uint32_t, 2) l_641 = (VECTOR(uint32_t, 2))(1UL, 4294967286UL);
                    int64_t l_642 = 0x777497322A8AC4C4L;
                    uint8_t l_643[7] = {0xC8L,1UL,0xC8L,0xC8L,1UL,0xC8L,0xC8L};
                    uint64_t l_644[4];
                    uint16_t l_645[5][7] = {{1UL,65529UL,1UL,1UL,65529UL,1UL,1UL},{1UL,65529UL,1UL,1UL,65529UL,1UL,1UL},{1UL,65529UL,1UL,1UL,65529UL,1UL,1UL},{1UL,65529UL,1UL,1UL,65529UL,1UL,1UL},{1UL,65529UL,1UL,1UL,65529UL,1UL,1UL}};
                    uint32_t l_646 = 4294967295UL;
                    int32_t l_647 = (-1L);
                    int i, j;
                    for (i = 0; i < 4; i++)
                        l_644[i] = 0xFF4883CDAEEEACB4L;
                    for (l_609 = (-3); (l_609 == 6); l_609 = safe_add_func_int32_t_s_s(l_609, 6))
                    { /* block id: 235 */
                        VECTOR(int32_t, 8) l_613 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-7L)), (-7L)), (-7L), (-1L), (-7L));
                        int32_t *l_612 = (void*)0;
                        int32_t *l_614[4][8][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
                        int32_t *l_615[1];
                        int16_t l_616 = 0x7D21L;
                        uint8_t l_617 = 0xD2L;
                        int8_t l_620 = 0x4AL;
                        uint32_t l_621 = 4UL;
                        int16_t l_622 = 0x65F3L;
                        int64_t l_623[8] = {(-3L),(-3L),(-3L),(-3L),(-3L),(-3L),(-3L),(-3L)};
                        VECTOR(int32_t, 2) l_624 = (VECTOR(int32_t, 2))((-3L), (-9L));
                        uint16_t l_625 = 0xBC52L;
                        VECTOR(int32_t, 8) l_626 = (VECTOR(int32_t, 8))(0x21C9EA51L, (VECTOR(int32_t, 4))(0x21C9EA51L, (VECTOR(int32_t, 2))(0x21C9EA51L, 0x572FF033L), 0x572FF033L), 0x572FF033L, 0x21C9EA51L, 0x572FF033L);
                        int8_t l_627[1][10][9] = {{{0x0AL,0x75L,0x65L,(-3L),0L,0L,(-3L),0x65L,0x75L},{0x0AL,0x75L,0x65L,(-3L),0L,0L,(-3L),0x65L,0x75L},{0x0AL,0x75L,0x65L,(-3L),0L,0L,(-3L),0x65L,0x75L},{0x0AL,0x75L,0x65L,(-3L),0L,0L,(-3L),0x65L,0x75L},{0x0AL,0x75L,0x65L,(-3L),0L,0L,(-3L),0x65L,0x75L},{0x0AL,0x75L,0x65L,(-3L),0L,0L,(-3L),0x65L,0x75L},{0x0AL,0x75L,0x65L,(-3L),0L,0L,(-3L),0x65L,0x75L},{0x0AL,0x75L,0x65L,(-3L),0L,0L,(-3L),0x65L,0x75L},{0x0AL,0x75L,0x65L,(-3L),0L,0L,(-3L),0x65L,0x75L},{0x0AL,0x75L,0x65L,(-3L),0L,0L,(-3L),0x65L,0x75L}}};
                        VECTOR(int32_t, 16) l_628 = (VECTOR(int32_t, 16))(0x46D73590L, (VECTOR(int32_t, 4))(0x46D73590L, (VECTOR(int32_t, 2))(0x46D73590L, 0L), 0L), 0L, 0x46D73590L, 0L, (VECTOR(int32_t, 2))(0x46D73590L, 0L), (VECTOR(int32_t, 2))(0x46D73590L, 0L), 0x46D73590L, 0L, 0x46D73590L, 0L);
                        VECTOR(int32_t, 2) l_629 = (VECTOR(int32_t, 2))(0L, (-1L));
                        VECTOR(int32_t, 2) l_630 = (VECTOR(int32_t, 2))(0L, 2L);
                        int16_t l_631 = 0x6A39L;
                        uint32_t l_632 = 1UL;
                        int8_t l_633 = (-8L);
                        uint16_t l_634 = 1UL;
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                            l_615[i] = (void*)0;
                        l_615[0] = (l_614[1][1][3] = l_612);
                        l_602.s3 ^= l_616;
                        ++l_617;
                        l_634 ^= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 16))((l_622 = (l_620 , (l_602.s5 = (l_509 = l_621)))), l_623[1], 1L, ((VECTOR(int32_t, 2))(l_624.xx)), (-5L), 0L, ((VECTOR(int32_t, 2))(0x6648ECD4L, 0L)), 0x026EFA85L, l_625, 0L, (-5L), (l_509 = ((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 16))(l_626.s6751742304415163)).sf0, ((VECTOR(int32_t, 16))(9L, l_627[0][7][5], ((VECTOR(int32_t, 8))(rotate(((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0x4895F3FEL, 0x1CAE15F4L)), ((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(l_628.sbe07e745)).odd, ((VECTOR(int32_t, 4))((-3L), 0x53F9E3A5L, 0x7EF44185L, 1L)), ((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 4))(l_629.yyxy)).ywxywxzyzyzzyyzz, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(l_630.yy)))).xyxx)).xzywxwxwzywzwzzz))).sb671))), 1L, ((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(0L, (l_631 , l_632), 0x31441F0DL, 0x20B05B99L, ((VECTOR(int32_t, 8))(1L)), ((VECTOR(int32_t, 2))((-9L))), 5L, 0L)).sa9, ((VECTOR(int32_t, 2))(0x705C5AC3L))))).lo, l_633, ((VECTOR(int32_t, 4))(0x0DADECC7L)), (-6L), (-6L), ((VECTOR(int32_t, 2))(0x5D0E528DL)), (-9L))).seb90, ((VECTOR(int32_t, 4))(0x23F1C7DDL))))), 0x44A1D638L, 1L))))), ((VECTOR(int32_t, 8))(0x49F21EF1L))))), ((VECTOR(int32_t, 4))(0x401888D4L)), 0x02CB5CE5L, 0x0A2CCE45L)).s29))).xyxxyyxyxxxyyxxx, ((VECTOR(int32_t, 16))(0L)), ((VECTOR(int32_t, 16))((-5L)))))).saa84, ((VECTOR(int32_t, 4))(0x03C7B896L)), ((VECTOR(int32_t, 4))((-9L)))))).y), 1L, 1L)).sd0, ((VECTOR(int32_t, 2))(2L))))).yxyyyyxyyxxyyxyx)).s7;
                    }
                    if ((l_609 = ((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 2))(l_635.s00)).yxxxxyyx, ((VECTOR(int32_t, 16))((-7L), (-1L), 9L, (l_602.s0 &= 0x72F8FA8CL), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 16))(l_636.zwxxwxzxwzwzwwzy)).sf500, ((VECTOR(int32_t, 2))((-8L), 2L)).xxxy))).zwwzzwxwzzyxzzyw)).lo, ((VECTOR(int32_t, 4))(l_637.xxyy)).wwwyyxzy))).s26)).yxyx, ((VECTOR(int32_t, 8))(0x6686024EL, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 2))(0x1477L, (-1L))), ((VECTOR(uint16_t, 16))(mul_hi(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(l_638.yyxxyyyxyxxxyyyy)))), ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(l_639.ywzxxzywwyzwwxzx)).s98)))).xxxyxxxxyxxxxxyy))).s94))).xxyx)), (-2L), 6L, 7L)).hi))).lo, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(0x77A7FD4AL, 0x118BB4DCL)))).yxyxyyxy)).s03))))), 0x31A3E686L, 0x0E6A28C8L, ((l_640 |= 0xFFB6D695L) , 1L), 0x09098419L, (l_509 = (l_602.s4 ^= 0x19A03688L)), ((l_643[4] &= (l_642 = ((VECTOR(uint32_t, 8))(l_641.xxyyxyxx)).s4)) , l_644[0]), 0x342290D0L, l_645[3][2], (-10L), (-10L))).lo))).odd, ((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 4))(l_646, ((VECTOR(int32_t, 2))(7L, (-4L))), 0x6D007995L)).yzwxzwxz, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(l_647, 0x540964D3L, ((VECTOR(int32_t, 4))(0x6F86D004L)), 0L, 0x28FF89D2L)).even)).zxyxywzx))).lo))).even, ((VECTOR(int32_t, 2))(0x4F0D556BL))))).hi))
                    { /* block id: 253 */
                        VECTOR(int32_t, 8) l_648 = (VECTOR(int32_t, 8))(9L, (VECTOR(int32_t, 4))(9L, (VECTOR(int32_t, 2))(9L, 0x23C3C824L), 0x23C3C824L), 0x23C3C824L, 9L, 0x23C3C824L);
                        int i;
                        l_648.s2 = (l_637.y &= ((VECTOR(int32_t, 16))(l_648.s6240220150257610)).s9);
                    }
                    else
                    { /* block id: 256 */
                        struct S0 l_649 = {1UL,0xD79DE093L};/* VOLATILE GLOBAL l_649 */
                        int32_t *l_650 = (void*)0;
                        l_435 = (FAKE_DIVERGE(p_1338->local_1_offset, get_local_id(1), 10) , (((((VECTOR(int16_t, 4))(0L, 0x7F39L, 6L, 0x7BF6L)).w , 0x30DB51E4L) , 1L) , l_649));
                        l_650 = (void*)0;
                    }
                }
            }
            unsigned int result = 0;
            result += l_427.sf;
            result += l_427.se;
            result += l_427.sd;
            result += l_427.sc;
            result += l_427.sb;
            result += l_427.sa;
            result += l_427.s9;
            result += l_427.s8;
            result += l_427.s7;
            result += l_427.s6;
            result += l_427.s5;
            result += l_427.s4;
            result += l_427.s3;
            result += l_427.s2;
            result += l_427.s1;
            result += l_427.s0;
            result += l_428.y;
            result += l_428.x;
            result += l_429;
            result += l_430.y;
            result += l_430.x;
            result += l_431.y;
            result += l_431.x;
            result += l_432.y;
            result += l_432.x;
            result += l_433.w;
            result += l_433.z;
            result += l_433.y;
            result += l_433.x;
            result += l_435.f0;
            result += l_435.f1;
            result += l_436;
            result += l_437;
            result += l_438;
            result += l_439;
            result += l_440;
            atomic_add(&p_1338->l_special_values[60], result);
        }
        else
        { /* block id: 262 */
            (1 + 1);
        }
        (*p_1338->g_203) = func_119((((((p_104 = ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(0x1CL, ((VECTOR(int8_t, 2))(8L, 0x04L)).odd, 1L, 0x79L, (safe_add_func_int32_t_s_s(0x217FECC8L, (l_653 && ((safe_mul_func_uint16_t_u_u((safe_add_func_uint16_t_u_u((((((((((void*)0 == l_660[3][0][6]) < (safe_sub_func_int64_t_s_s(p_104, ((VECTOR(int64_t, 8))(sub_sat(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(l_664.s14233120)), ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))((safe_mod_func_uint32_t_u_u(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(safe_clamp_func(VECTOR(uint32_t, 16),VECTOR(uint32_t, 16),((VECTOR(uint32_t, 4))(p_1338->g_667.s1275)).zwwxxzyxxzxyzwxw, ((VECTOR(uint32_t, 4))(mul_hi(((VECTOR(uint32_t, 4))(0xA2BF2916L, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(rhadd(((VECTOR(uint32_t, 4))(min(((VECTOR(uint32_t, 16))(l_668.xyyxxyxxxyyxyyxy)).s6787, ((VECTOR(uint32_t, 8))(p_1338->g_669.yxxyyyyy)).lo))).xxyywwxw, ((VECTOR(uint32_t, 2))(2UL, 4294967295UL)).xyyxyyyx))).s15)), 0x5F8E38B8L)), ((VECTOR(uint32_t, 8))(p_1338->g_670.s02457051)).even))).xzzwyyyzzzwxzxyx, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(l_671.xyyx)).ywwwxwzy)).s5635760576745461))).sfe)))).lo, (((safe_lshift_func_uint8_t_u_s((safe_lshift_func_uint8_t_u_s(((*p_1338->g_275) &= (((*p_101) ^= ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(abs(((VECTOR(uint64_t, 16))(p_1338->g_676.yywwzwzwyxyyzxyw)).s2f))).xxyyyxyx)).s5) != ((safe_add_func_int8_t_s_s(((VECTOR(int8_t, 4))(l_668.y, 0x09L, 0x3EL, 0x39L)).x, ((p_1338->g_254.s4 = p_104) , (safe_mul_func_uint16_t_u_u((safe_add_func_int64_t_s_s(l_653, l_316.s7)), p_1338->g_667.s7))))) > 0x03L))), p_1338->g_232.w)), 6)) | 0x29A1L) ^ 0x24D5L))), 0x59E16C6972482448L, 2L, ((VECTOR(int64_t, 2))((-8L))), p_104, (-2L), 0x48221298B0E1E491L, 4L, 0L, ((VECTOR(int64_t, 4))(0x71BB5D15F46C7562L)), (-4L), 0x56FC0A9AEFB2C4F9L)).hi)).s76)), 0x17FA8FAFE0BCE070L, ((VECTOR(int64_t, 2))(7L)), ((VECTOR(int64_t, 2))(4L)), (-1L))).even, ((VECTOR(int64_t, 8))(0x66C6DF8C2F39F218L))))).s4))) >= l_683[0][0][0]) == (*p_1338->g_204)) == l_684.y) , p_1338->g_70.s0) <= 0L) >= 5UL), 0x1E8CL)), l_685)) < 18446744073709551615UL)))), p_1338->g_328.f1, 0x71L, 0L)).s41)).odd) ^ l_686[1]) , 0x1C0BL) > p_1338->g_130.y) || FAKE_DIVERGE(p_1338->local_0_offset, get_local_id(0), 10)), p_1338);
    }
    return &p_1338->g_23;
}


/* ------------------------------------------ */
/* 
 * reads : p_1338->g_148 p_1338->g_165 p_1338->g_87 p_1338->g_181 p_1338->g_81 p_1338->g_82 p_1338->g_96 p_1338->g_189 p_1338->g_190 p_1338->g_191 p_1338->g_23 p_1338->g_203 p_1338->g_29 p_1338->g_28 p_1338->g_215 p_1338->g_149 p_1338->g_204 p_1338->g_151 p_1338->g_36 p_1338->g_227 p_1338->g_46 p_1338->g_232 p_1338->g_233 p_1338->g_234 p_1338->g_247 p_1338->g_130
 * writes: p_1338->g_148 p_1338->g_151 p_1338->g_165 p_1338->g_87 p_1338->g_96 p_1338->g_81 p_1338->g_149 p_1338->g_227 p_1338->g_82 p_1338->g_36
 */
int8_t  func_115(uint32_t * p_116, int16_t  p_117, uint8_t  p_118, struct S1 * p_1338)
{ /* block id: 28 */
    uint8_t **l_150 = &p_1338->g_148;
    int32_t l_152[8][3][1] = {{{0x3DDE750DL},{0x3DDE750DL},{0x3DDE750DL}},{{0x3DDE750DL},{0x3DDE750DL},{0x3DDE750DL}},{{0x3DDE750DL},{0x3DDE750DL},{0x3DDE750DL}},{{0x3DDE750DL},{0x3DDE750DL},{0x3DDE750DL}},{{0x3DDE750DL},{0x3DDE750DL},{0x3DDE750DL}},{{0x3DDE750DL},{0x3DDE750DL},{0x3DDE750DL}},{{0x3DDE750DL},{0x3DDE750DL},{0x3DDE750DL}},{{0x3DDE750DL},{0x3DDE750DL},{0x3DDE750DL}}};
    int32_t *l_153 = &p_1338->g_96[1];
    int32_t *l_154 = &l_152[0][1][0];
    int32_t *l_155 = (void*)0;
    int32_t *l_156 = &l_152[0][1][0];
    int32_t *l_157 = &p_1338->g_96[0];
    int32_t *l_158 = &p_1338->g_96[1];
    int32_t *l_159 = &p_1338->g_96[1];
    int32_t *l_160 = &l_152[0][1][0];
    int32_t *l_161 = &p_1338->g_96[1];
    int32_t *l_162 = (void*)0;
    int32_t *l_163 = (void*)0;
    int32_t *l_164[6][3][5] = {{{&p_1338->g_96[1],&l_152[4][2][0],&p_1338->g_96[0],&l_152[4][2][0],&p_1338->g_96[1]},{&p_1338->g_96[1],&l_152[4][2][0],&p_1338->g_96[0],&l_152[4][2][0],&p_1338->g_96[1]},{&p_1338->g_96[1],&l_152[4][2][0],&p_1338->g_96[0],&l_152[4][2][0],&p_1338->g_96[1]}},{{&p_1338->g_96[1],&l_152[4][2][0],&p_1338->g_96[0],&l_152[4][2][0],&p_1338->g_96[1]},{&p_1338->g_96[1],&l_152[4][2][0],&p_1338->g_96[0],&l_152[4][2][0],&p_1338->g_96[1]},{&p_1338->g_96[1],&l_152[4][2][0],&p_1338->g_96[0],&l_152[4][2][0],&p_1338->g_96[1]}},{{&p_1338->g_96[1],&l_152[4][2][0],&p_1338->g_96[0],&l_152[4][2][0],&p_1338->g_96[1]},{&p_1338->g_96[1],&l_152[4][2][0],&p_1338->g_96[0],&l_152[4][2][0],&p_1338->g_96[1]},{&p_1338->g_96[1],&l_152[4][2][0],&p_1338->g_96[0],&l_152[4][2][0],&p_1338->g_96[1]}},{{&p_1338->g_96[1],&l_152[4][2][0],&p_1338->g_96[0],&l_152[4][2][0],&p_1338->g_96[1]},{&p_1338->g_96[1],&l_152[4][2][0],&p_1338->g_96[0],&l_152[4][2][0],&p_1338->g_96[1]},{&p_1338->g_96[1],&l_152[4][2][0],&p_1338->g_96[0],&l_152[4][2][0],&p_1338->g_96[1]}},{{&p_1338->g_96[1],&l_152[4][2][0],&p_1338->g_96[0],&l_152[4][2][0],&p_1338->g_96[1]},{&p_1338->g_96[1],&l_152[4][2][0],&p_1338->g_96[0],&l_152[4][2][0],&p_1338->g_96[1]},{&p_1338->g_96[1],&l_152[4][2][0],&p_1338->g_96[0],&l_152[4][2][0],&p_1338->g_96[1]}},{{&p_1338->g_96[1],&l_152[4][2][0],&p_1338->g_96[0],&l_152[4][2][0],&p_1338->g_96[1]},{&p_1338->g_96[1],&l_152[4][2][0],&p_1338->g_96[0],&l_152[4][2][0],&p_1338->g_96[1]},{&p_1338->g_96[1],&l_152[4][2][0],&p_1338->g_96[0],&l_152[4][2][0],&p_1338->g_96[1]}}};
    int8_t l_173 = 0L;
    uint64_t *l_180 = (void*)0;
    VECTOR(uint8_t, 4) l_188 = (VECTOR(uint8_t, 4))(0x35L, (VECTOR(uint8_t, 2))(0x35L, 0x10L), 0x10L);
    VECTOR(int64_t, 2) l_193 = (VECTOR(int64_t, 2))(0x13DD203B5EF5EFCAL, (-7L));
    int32_t **l_206 = &l_155;
    uint8_t l_228 = 9UL;
    volatile int32_t * volatile l_231[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    VECTOR(int32_t, 16) l_235 = (VECTOR(int32_t, 16))(0x48541361L, (VECTOR(int32_t, 4))(0x48541361L, (VECTOR(int32_t, 2))(0x48541361L, 1L), 1L), 1L, 0x48541361L, 1L, (VECTOR(int32_t, 2))(0x48541361L, 1L), (VECTOR(int32_t, 2))(0x48541361L, 1L), 0x48541361L, 1L, 0x48541361L, 1L);
    uint64_t **l_240 = &l_180;
    int32_t l_249 = 0x328FE34AL;
    int i, j, k;
    p_1338->g_151 = (((*l_150) = p_1338->g_148) == &p_1338->g_149);
    --p_1338->g_165;
    for (p_1338->g_87 = (-6); (p_1338->g_87 != 31); p_1338->g_87 = safe_add_func_uint32_t_u_u(p_1338->g_87, 1))
    { /* block id: 34 */
        uint32_t l_170[2][10] = {{1UL,1UL,0x1F8926AFL,0xCD65DFEDL,0UL,0xCD65DFEDL,0x1F8926AFL,1UL,1UL,0x1F8926AFL},{1UL,1UL,0x1F8926AFL,0xCD65DFEDL,0UL,0xCD65DFEDL,0x1F8926AFL,1UL,1UL,0x1F8926AFL}};
        int32_t l_171 = (-1L);
        int32_t l_172[3];
        uint32_t l_174[8];
        uint64_t *l_179[1][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        uint64_t l_182[2][2][4] = {{{0x46B7A6E9C09C7496L,0x84A5B2B4A886C267L,0x46B7A6E9C09C7496L,0x46B7A6E9C09C7496L},{0x46B7A6E9C09C7496L,0x84A5B2B4A886C267L,0x46B7A6E9C09C7496L,0x46B7A6E9C09C7496L}},{{0x46B7A6E9C09C7496L,0x84A5B2B4A886C267L,0x46B7A6E9C09C7496L,0x46B7A6E9C09C7496L},{0x46B7A6E9C09C7496L,0x84A5B2B4A886C267L,0x46B7A6E9C09C7496L,0x46B7A6E9C09C7496L}}};
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_172[i] = (-5L);
        for (i = 0; i < 8; i++)
            l_174[i] = 0UL;
        if (l_170[0][4])
            break;
        --l_174[6];
        if (p_118)
            continue;
        l_171 |= ((*l_153) = (safe_sub_func_int8_t_s_s(((!(l_179[0][3] == ((p_118 < (&p_1338->g_46 != (void*)0)) , l_180))) ^ (((((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(p_1338->g_181.xyxy)), (-7L), 0x1F7FF7380DA34F26L, 5L, 0x4F06DE3E1FD3E131L)).s4 ^ (*p_1338->g_81)) >= (*l_160)) | l_182[0][1][3])), (*l_159))));
    }
    if (p_118)
    { /* block id: 41 */
        VECTOR(int8_t, 16) l_187 = (VECTOR(int8_t, 16))(0x18L, (VECTOR(int8_t, 4))(0x18L, (VECTOR(int8_t, 2))(0x18L, 0x12L), 0x12L), 0x12L, 0x18L, 0x12L, (VECTOR(int8_t, 2))(0x18L, 0x12L), (VECTOR(int8_t, 2))(0x18L, 0x12L), 0x18L, 0x12L, 0x18L, 0x12L);
        VECTOR(int8_t, 4) l_192 = (VECTOR(int8_t, 4))(0x76L, (VECTOR(int8_t, 2))(0x76L, 0x69L), 0x69L);
        uint16_t *l_200 = &p_1338->g_87;
        int32_t ***l_205[2];
        int32_t l_207 = 0x467D1249L;
        uint64_t **l_208[2];
        VECTOR(int32_t, 16) l_220 = (VECTOR(int32_t, 16))((-8L), (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), 0x256B7D81L), 0x256B7D81L), 0x256B7D81L, (-8L), 0x256B7D81L, (VECTOR(int32_t, 2))((-8L), 0x256B7D81L), (VECTOR(int32_t, 2))((-8L), 0x256B7D81L), (-8L), 0x256B7D81L, (-8L), 0x256B7D81L);
        uint32_t *l_221 = &p_1338->g_128[3];
        uint16_t *l_226 = &p_1338->g_227;
        int i, j;
        for (i = 0; i < 2; i++)
            l_205[i] = &p_1338->g_203;
        for (i = 0; i < 2; i++)
            l_208[i] = &l_180;
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        p_1338->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 20)), permutations[(safe_mod_func_uint32_t_u_u(((safe_lshift_func_int16_t_s_u((((((safe_mod_func_uint16_t_u_u((((+((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(mad_sat(((VECTOR(int16_t, 16))(upsample(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(l_187.s7283ca3e)).s13)).yyxyyyxyyyyyyyxx, ((VECTOR(uint8_t, 4))(l_188.wzxy)).xxyzxyxzxzxwzzww))).sb84c, ((VECTOR(int16_t, 16))(sub_sat(((VECTOR(int16_t, 4))(upsample(((VECTOR(int8_t, 2))(p_1338->g_189.yy)).yxyy, ((VECTOR(uint8_t, 4))(p_1338->g_190.yywz))))).yxzywzwxwzwzwzyx, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(min(((VECTOR(int16_t, 16))(rhadd(((VECTOR(int16_t, 2))((-7L), 0x7808L)).yxxyxxxyyyyyyxxy, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(upsample(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 16))(p_117, ((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(p_1338->g_191.s7622)).zzyyzwxyyzxwxwwz)).s22, ((VECTOR(int8_t, 4))(l_192.zzwx)).hi))), (((VECTOR(int64_t, 2))(l_193.yy)).hi <= (((*l_200) |= (safe_div_func_int16_t_s_s(p_118, (safe_add_func_int16_t_s_s((*l_154), (safe_mod_func_int8_t_s_s(p_1338->g_23, 0x0BL))))))) < ((safe_sub_func_int64_t_s_s(p_117, ((((l_206 = p_1338->g_203) != &l_163) , (0x2831C4C9FA8FE3F0L | (*p_1338->g_81))) && p_118))) , l_207))), p_1338->g_165, 0x2EL, 0x3BL, 1L, ((VECTOR(int8_t, 8))(0L)))).s37, ((VECTOR(int8_t, 2))(1L))))))).yxxxxxyy, ((VECTOR(uint8_t, 8))(0xB0L))))))).s1054644553463162))).s357f, (int16_t)p_1338->g_191.s2))).xwzzyzzz)).odd)).xywwxxxzwyxyzwyw))).sd05e, ((VECTOR(int16_t, 4))(0x022BL))))).zywxzzyz)).s54)).yyxyyxxyxyxyyxxx)).sc) != 0x1D02L) >= FAKE_DIVERGE(p_1338->group_2_offset, get_group_id(2), 10)), p_118)) , p_116) != l_158) , 4UL) > 0x6764DF80EDAA46B1L), 7)) >= 1L), 10))][(safe_mod_func_uint32_t_u_u(p_1338->tid, 20))]));
        (*l_153) |= ((VECTOR(int32_t, 4))((p_116 == (*p_1338->g_29)), (0x7139L && (((p_1338->g_81 = l_180) != &p_1338->g_82) ^ ((p_117 & ((safe_div_func_int8_t_s_s(((((((l_228 = ((*l_226) &= ((safe_sub_func_uint32_t_u_u((((p_118 > (((VECTOR(int32_t, 16))(p_1338->g_215.yxxyyyxxyxxxyxxx)).s6 && ((+(safe_lshift_func_uint8_t_u_u((safe_sub_func_int32_t_s_s((((VECTOR(int32_t, 2))(l_220.s10)).even , (l_221 != ((((*l_200) = (safe_mul_func_uint8_t_u_u((++(**l_150)), ((*l_206) != (*p_1338->g_203))))) != p_1338->g_151) , l_159))), (-1L))), (*l_154)))) > 0x23L))) == (**p_1338->g_203)) <= p_1338->g_165), p_118)) <= p_1338->g_82))) || p_1338->g_151) && 0x66L) && p_1338->g_191.s1) ^ p_118) && p_118), p_1338->g_46)) ^ p_1338->g_23)) == 0x29L))), 0x603B855AL, 0x5FE6B94FL)).w;
    }
    else
    { /* block id: 53 */
        volatile int32_t * volatile *l_229 = (void*)0;
        volatile int32_t * volatile *l_230 = (void*)0;
        uint64_t **l_239 = &p_1338->g_81;
        uint64_t ***l_238[7][3] = {{(void*)0,&l_239,(void*)0},{(void*)0,&l_239,(void*)0},{(void*)0,&l_239,(void*)0},{(void*)0,&l_239,(void*)0},{(void*)0,&l_239,(void*)0},{(void*)0,&l_239,(void*)0},{(void*)0,&l_239,(void*)0}};
        int32_t l_248 = 0L;
        int i, j;
        l_231[4] = (*p_1338->g_29);
        (*p_1338->g_204) |= ((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 4))(p_1338->g_232.wxyz)), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 16))(p_1338->g_233.s6643730363127564)).se252, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 2))(0x758A27CFL, 0x2345CDD0L)).yyxyxxxyxxyxyxyx, ((VECTOR(int32_t, 16))(0x45228ABCL, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(p_1338->g_234.ww)))), ((VECTOR(int32_t, 8))(0x17F69D9BL, 0x0D230653L, ((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_235.sad)), (safe_add_func_uint16_t_u_u(((l_240 = (void*)0) == (void*)0), (safe_mod_func_int32_t_s_s((0L != ((**l_239) |= (safe_mul_func_int8_t_s_s((((VECTOR(int8_t, 2))(0x42L, 0L)).odd , (safe_lshift_func_int8_t_s_s((p_1338->g_247 , (*l_160)), 2))), p_117)))), l_248)))), (p_1338->g_130.y | (p_118 || p_1338->g_130.y)), l_249, ((VECTOR(int32_t, 2))(0x620321E0L)), 0x252CBBBFL)).lo)).even, ((VECTOR(int32_t, 2))(0x09075B70L))))), 1L, ((VECTOR(int32_t, 2))(6L)), 0x6228E72DL)), ((VECTOR(int32_t, 2))(0x6894E0F6L)), 1L, 0x5E8029F2L, 1L)), ((VECTOR(int32_t, 16))(0x571D7B26L))))))).sae71)).xzxwzxyxzxwxwwyw)).s3cae))).ywxzwxzx)).hi))).w;
    }
    return p_1338->g_233.s4;
}


/* ------------------------------------------ */
/* 
 * reads : p_1338->g_130 p_1338->l_comm_values p_1338->g_82 p_1338->g_36 p_1338->g_70 p_1338->g_81 p_1338->g_96
 * writes: p_1338->g_46 p_1338->g_96
 */
uint32_t * func_119(uint32_t  p_120, struct S1 * p_1338)
{ /* block id: 24 */
    VECTOR(uint64_t, 2) l_129 = (VECTOR(uint64_t, 2))(1UL, 0x16DB70B35F69D681L);
    VECTOR(uint64_t, 2) l_131 = (VECTOR(uint64_t, 2))(0x1B49479A416FBCE5L, 0UL);
    VECTOR(int8_t, 16) l_132 = (VECTOR(int8_t, 16))(0x3AL, (VECTOR(int8_t, 4))(0x3AL, (VECTOR(int8_t, 2))(0x3AL, 0x77L), 0x77L), 0x77L, 0x3AL, 0x77L, (VECTOR(int8_t, 2))(0x3AL, 0x77L), (VECTOR(int8_t, 2))(0x3AL, 0x77L), 0x3AL, 0x77L, 0x3AL, 0x77L);
    uint32_t *l_145 = &p_1338->g_128[3];
    uint64_t *l_146[6][1];
    int32_t *l_147[2][9] = {{&p_1338->g_36[3][7][0],&p_1338->g_36[3][7][0],&p_1338->g_96[1],(void*)0,&p_1338->g_96[1],(void*)0,&p_1338->g_96[1],&p_1338->g_36[3][7][0],&p_1338->g_36[3][7][0]},{&p_1338->g_36[3][7][0],&p_1338->g_36[3][7][0],&p_1338->g_96[1],(void*)0,&p_1338->g_96[1],(void*)0,&p_1338->g_96[1],&p_1338->g_36[3][7][0],&p_1338->g_36[3][7][0]}};
    int i, j;
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 1; j++)
            l_146[i][j] = (void*)0;
    }
    p_1338->g_96[1] |= (1UL == (((0UL | ((VECTOR(uint64_t, 16))(rotate(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(mul_hi(((VECTOR(uint64_t, 2))(l_129.yy)), ((VECTOR(uint64_t, 4))(p_1338->g_130.xyyx)).lo))), 3UL, 18446744073709551615UL)), ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(rotate(((VECTOR(uint64_t, 8))(safe_clamp_func(VECTOR(uint64_t, 8),VECTOR(uint64_t, 8),((VECTOR(uint64_t, 2))(abs(((VECTOR(uint64_t, 4))(mul_hi(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(l_131.yyxx)), 1UL, 0x427BCE4062863D54L, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(abs_diff(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))((((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(l_132.sb9)))).hi || (((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(0xAEL, 3UL)).yxxyyyxyyxxxyyxx)).s0 & (safe_sub_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(((safe_mul_func_int8_t_s_s((((safe_rshift_func_int16_t_s_s((((p_1338->g_46 = 0x22EDL) >= p_1338->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1338->tid, 20))]) < (((safe_div_func_uint8_t_u_u(8UL, (safe_add_func_uint64_t_u_u(((l_145 == &p_1338->g_128[5]) != ((void*)0 == l_146[3][0])), p_120)))) <= l_132.s2) != p_120)), 10)) == 0xD73731C8D9C584D3L) ^ p_1338->g_82), 0x74L)) , p_1338->g_36[3][7][0]), 0xBAL)), p_1338->g_70.sb)))), l_132.se, 0x776C4A1A27E34FB1L, 0x034DBD4EC956AC2AL)))).yxxwyyxxxwyzwywz, ((VECTOR(int64_t, 16))(0x04DEB07070580F47L))))).s724b)), (*p_1338->g_81), ((VECTOR(uint64_t, 4))(0x4364D310EF4BC92DL)), 0x5E4B7D50DD5D1929L)).sa791, ((VECTOR(uint64_t, 4))(18446744073709551612UL))))).lo))).xxyxyyxx, ((VECTOR(uint64_t, 8))(9UL)), ((VECTOR(uint64_t, 8))(0UL))))).odd, ((VECTOR(uint64_t, 4))(0xE1754CC00686086EL))))).wyywzyxz)).s75)))), (*p_1338->g_81), ((VECTOR(uint64_t, 8))(0x7CF6DD3D46EF5501L)), 1UL)), ((VECTOR(uint64_t, 16))(18446744073709551609UL))))).s6) , 0x10L) & p_120));
    return l_145;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[80];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 80; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[80];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 80; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[20];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 20; i++)
            l_comm_values[i] = 1;
    struct S1 c_1339;
    struct S1* p_1338 = &c_1339;
    struct S1 c_1340 = {
        0UL, // p_1338->g_23
        (void*)0, // p_1338->g_28
        &p_1338->g_28, // p_1338->g_29
        {{{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL}},{{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL}},{{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL}},{{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL}},{{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL}},{{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL}},{{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL}},{{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL}},{{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL},{0x1B93B3BBL,0x61A7160CL,0x1B93B3BBL}}}, // p_1338->g_36
        (-1L), // p_1338->g_46
        (VECTOR(int16_t, 16))(0x2442L, (VECTOR(int16_t, 4))(0x2442L, (VECTOR(int16_t, 2))(0x2442L, (-1L)), (-1L)), (-1L), 0x2442L, (-1L), (VECTOR(int16_t, 2))(0x2442L, (-1L)), (VECTOR(int16_t, 2))(0x2442L, (-1L)), 0x2442L, (-1L), 0x2442L, (-1L)), // p_1338->g_70
        0UL, // p_1338->g_82
        &p_1338->g_82, // p_1338->g_81
        0x4623L, // p_1338->g_87
        {0x1ADE1D7CL,0x1ADE1D7CL}, // p_1338->g_96
        {0x34B39CDCL,0x34B39CDCL,0x34B39CDCL}, // p_1338->g_108
        {0xB1F6A926L,4294967288UL,0xB1F6A926L,0xB1F6A926L,4294967288UL,0xB1F6A926L,0xB1F6A926L,4294967288UL}, // p_1338->g_128
        (VECTOR(uint64_t, 2))(0xA5DD5B360F52E2E7L, 0x5ACE6E74F6A41899L), // p_1338->g_130
        1UL, // p_1338->g_149
        &p_1338->g_149, // p_1338->g_148
        0x36L, // p_1338->g_151
        0xB18FCEAAE32F378EL, // p_1338->g_165
        (VECTOR(int64_t, 2))(0L, (-8L)), // p_1338->g_181
        (VECTOR(int8_t, 2))(0x59L, 8L), // p_1338->g_189
        (VECTOR(uint8_t, 4))(3UL, (VECTOR(uint8_t, 2))(3UL, 251UL), 251UL), // p_1338->g_190
        (VECTOR(int8_t, 8))(0x40L, (VECTOR(int8_t, 4))(0x40L, (VECTOR(int8_t, 2))(0x40L, 0x40L), 0x40L), 0x40L, 0x40L, 0x40L), // p_1338->g_191
        &p_1338->g_36[3][7][0], // p_1338->g_204
        &p_1338->g_204, // p_1338->g_203
        (VECTOR(int32_t, 2))(0x285EEF71L, 0x32767108L), // p_1338->g_215
        0x72A1L, // p_1338->g_227
        (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x522CCE88L), 0x522CCE88L), // p_1338->g_232
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-4L)), (-4L)), (-4L), 1L, (-4L)), // p_1338->g_233
        (VECTOR(int32_t, 4))(0x170B20D0L, (VECTOR(int32_t, 2))(0x170B20D0L, 1L), 1L), // p_1338->g_234
        {0xB946L,0x18C4B75CL}, // p_1338->g_247
        (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x6DL), 0x6DL), 0x6DL, 0L, 0x6DL, (VECTOR(int8_t, 2))(0L, 0x6DL), (VECTOR(int8_t, 2))(0L, 0x6DL), 0L, 0x6DL, 0L, 0x6DL), // p_1338->g_254
        (VECTOR(uint16_t, 8))(0x0734L, (VECTOR(uint16_t, 4))(0x0734L, (VECTOR(uint16_t, 2))(0x0734L, 0UL), 0UL), 0UL, 0x0734L, 0UL), // p_1338->g_263
        (VECTOR(uint16_t, 4))(0x24FDL, (VECTOR(uint16_t, 2))(0x24FDL, 0xF73BL), 0xF73BL), // p_1338->g_265
        (void*)0, // p_1338->g_275
        (VECTOR(int32_t, 8))(0x15BF7E9FL, (VECTOR(int32_t, 4))(0x15BF7E9FL, (VECTOR(int32_t, 2))(0x15BF7E9FL, 0x463CD88CL), 0x463CD88CL), 0x463CD88CL, 0x15BF7E9FL, 0x463CD88CL), // p_1338->g_284
        (VECTOR(uint32_t, 8))(0xA9A81A79L, (VECTOR(uint32_t, 4))(0xA9A81A79L, (VECTOR(uint32_t, 2))(0xA9A81A79L, 0UL), 0UL), 0UL, 0xA9A81A79L, 0UL), // p_1338->g_304
        (VECTOR(int32_t, 2))(0x36BCEFBDL, 2L), // p_1338->g_310
        {1UL,1UL}, // p_1338->g_328
        &p_1338->g_81, // p_1338->g_344
        &p_1338->g_344, // p_1338->g_343
        (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L), (VECTOR(int16_t, 2))(1L, (-1L)), (VECTOR(int16_t, 2))(1L, (-1L)), 1L, (-1L), 1L, (-1L)), // p_1338->g_358
        (VECTOR(uint16_t, 16))(0xCB1DL, (VECTOR(uint16_t, 4))(0xCB1DL, (VECTOR(uint16_t, 2))(0xCB1DL, 0x7F55L), 0x7F55L), 0x7F55L, 0xCB1DL, 0x7F55L, (VECTOR(uint16_t, 2))(0xCB1DL, 0x7F55L), (VECTOR(uint16_t, 2))(0xCB1DL, 0x7F55L), 0xCB1DL, 0x7F55L, 0xCB1DL, 0x7F55L), // p_1338->g_378
        (VECTOR(uint16_t, 2))(1UL, 3UL), // p_1338->g_379
        (VECTOR(int32_t, 16))(0x4DF4D3C1L, (VECTOR(int32_t, 4))(0x4DF4D3C1L, (VECTOR(int32_t, 2))(0x4DF4D3C1L, 0x661CDA29L), 0x661CDA29L), 0x661CDA29L, 0x4DF4D3C1L, 0x661CDA29L, (VECTOR(int32_t, 2))(0x4DF4D3C1L, 0x661CDA29L), (VECTOR(int32_t, 2))(0x4DF4D3C1L, 0x661CDA29L), 0x4DF4D3C1L, 0x661CDA29L, 0x4DF4D3C1L, 0x661CDA29L), // p_1338->g_387
        (VECTOR(int32_t, 16))(2L, (VECTOR(int32_t, 4))(2L, (VECTOR(int32_t, 2))(2L, 0x03FBAA5EL), 0x03FBAA5EL), 0x03FBAA5EL, 2L, 0x03FBAA5EL, (VECTOR(int32_t, 2))(2L, 0x03FBAA5EL), (VECTOR(int32_t, 2))(2L, 0x03FBAA5EL), 2L, 0x03FBAA5EL, 2L, 0x03FBAA5EL), // p_1338->g_389
        (VECTOR(int32_t, 16))(0x6D11A5F5L, (VECTOR(int32_t, 4))(0x6D11A5F5L, (VECTOR(int32_t, 2))(0x6D11A5F5L, 0x54E2116BL), 0x54E2116BL), 0x54E2116BL, 0x6D11A5F5L, 0x54E2116BL, (VECTOR(int32_t, 2))(0x6D11A5F5L, 0x54E2116BL), (VECTOR(int32_t, 2))(0x6D11A5F5L, 0x54E2116BL), 0x6D11A5F5L, 0x54E2116BL, 0x6D11A5F5L, 0x54E2116BL), // p_1338->g_390
        (VECTOR(int32_t, 8))(0x3EDF0C6BL, (VECTOR(int32_t, 4))(0x3EDF0C6BL, (VECTOR(int32_t, 2))(0x3EDF0C6BL, 0x257F10DDL), 0x257F10DDL), 0x257F10DDL, 0x3EDF0C6BL, 0x257F10DDL), // p_1338->g_391
        0x060CD6494AE4D4F3L, // p_1338->g_408
        {0x54BAL,0x36D55F53L}, // p_1338->g_409
        (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0x8D27DA97L), 0x8D27DA97L), 0x8D27DA97L, 4294967295UL, 0x8D27DA97L), // p_1338->g_667
        (VECTOR(uint32_t, 2))(1UL, 0x1E9AE273L), // p_1338->g_669
        (VECTOR(uint32_t, 8))(7UL, (VECTOR(uint32_t, 4))(7UL, (VECTOR(uint32_t, 2))(7UL, 9UL), 9UL), 9UL, 7UL, 9UL), // p_1338->g_670
        (VECTOR(uint64_t, 4))(0x48EC5BD62199F51FL, (VECTOR(uint64_t, 2))(0x48EC5BD62199F51FL, 18446744073709551612UL), 18446744073709551612UL), // p_1338->g_676
        {1UL,65533UL,1UL,1UL,65533UL,1UL}, // p_1338->g_687
        (VECTOR(int32_t, 2))(1L, 1L), // p_1338->g_710
        0x17ACC1A3L, // p_1338->g_754
        (VECTOR(int8_t, 8))(0x72L, (VECTOR(int8_t, 4))(0x72L, (VECTOR(int8_t, 2))(0x72L, 0L), 0L), 0L, 0x72L, 0L), // p_1338->g_858
        0x5AC7383AL, // p_1338->g_861
        {0UL,4294967295UL}, // p_1338->g_865
        &p_1338->g_409, // p_1338->g_866
        {9UL,0x1B74F65BL}, // p_1338->g_869
        (VECTOR(int8_t, 16))(0x28L, (VECTOR(int8_t, 4))(0x28L, (VECTOR(int8_t, 2))(0x28L, 1L), 1L), 1L, 0x28L, 1L, (VECTOR(int8_t, 2))(0x28L, 1L), (VECTOR(int8_t, 2))(0x28L, 1L), 0x28L, 1L, 0x28L, 1L), // p_1338->g_963
        (VECTOR(uint16_t, 16))(0xDF6AL, (VECTOR(uint16_t, 4))(0xDF6AL, (VECTOR(uint16_t, 2))(0xDF6AL, 0x8660L), 0x8660L), 0x8660L, 0xDF6AL, 0x8660L, (VECTOR(uint16_t, 2))(0xDF6AL, 0x8660L), (VECTOR(uint16_t, 2))(0xDF6AL, 0x8660L), 0xDF6AL, 0x8660L, 0xDF6AL, 0x8660L), // p_1338->g_980
        (VECTOR(uint64_t, 8))(0xD50DFA28FB8350CBL, (VECTOR(uint64_t, 4))(0xD50DFA28FB8350CBL, (VECTOR(uint64_t, 2))(0xD50DFA28FB8350CBL, 5UL), 5UL), 5UL, 0xD50DFA28FB8350CBL, 5UL), // p_1338->g_997
        (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x880890A4F961BB5BL), 0x880890A4F961BB5BL), 0x880890A4F961BB5BL, 1UL, 0x880890A4F961BB5BL), // p_1338->g_999
        (VECTOR(int16_t, 4))(8L, (VECTOR(int16_t, 2))(8L, 0x215FL), 0x215FL), // p_1338->g_1065
        {(void*)0,&p_1338->g_46,(void*)0,(void*)0,&p_1338->g_46,(void*)0,(void*)0}, // p_1338->g_1090
        (VECTOR(uint32_t, 16))(0xE481304DL, (VECTOR(uint32_t, 4))(0xE481304DL, (VECTOR(uint32_t, 2))(0xE481304DL, 0UL), 0UL), 0UL, 0xE481304DL, 0UL, (VECTOR(uint32_t, 2))(0xE481304DL, 0UL), (VECTOR(uint32_t, 2))(0xE481304DL, 0UL), 0xE481304DL, 0UL, 0xE481304DL, 0UL), // p_1338->g_1092
        (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x30B29C45L), 0x30B29C45L), // p_1338->g_1126
        (void*)0, // p_1338->g_1131
        &p_1338->g_1131, // p_1338->g_1130
        0xDAC7426AL, // p_1338->g_1133
        {{(void*)0,(void*)0,&p_1338->g_96[1],(void*)0,(void*)0},{(void*)0,(void*)0,&p_1338->g_96[1],(void*)0,(void*)0},{(void*)0,(void*)0,&p_1338->g_96[1],(void*)0,(void*)0},{(void*)0,(void*)0,&p_1338->g_96[1],(void*)0,(void*)0},{(void*)0,(void*)0,&p_1338->g_96[1],(void*)0,(void*)0},{(void*)0,(void*)0,&p_1338->g_96[1],(void*)0,(void*)0},{(void*)0,(void*)0,&p_1338->g_96[1],(void*)0,(void*)0}}, // p_1338->g_1169
        &p_1338->g_36[3][7][0], // p_1338->g_1170
        (VECTOR(int16_t, 2))(0x1F5EL, (-1L)), // p_1338->g_1195
        (VECTOR(uint8_t, 16))(6UL, (VECTOR(uint8_t, 4))(6UL, (VECTOR(uint8_t, 2))(6UL, 0x65L), 0x65L), 0x65L, 6UL, 0x65L, (VECTOR(uint8_t, 2))(6UL, 0x65L), (VECTOR(uint8_t, 2))(6UL, 0x65L), 6UL, 0x65L, 6UL, 0x65L), // p_1338->g_1231
        (-1L), // p_1338->g_1237
        &p_1338->g_1237, // p_1338->g_1236
        (VECTOR(uint16_t, 8))(4UL, (VECTOR(uint16_t, 4))(4UL, (VECTOR(uint16_t, 2))(4UL, 0UL), 0UL), 0UL, 4UL, 0UL), // p_1338->g_1284
        (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x3D91L), 0x3D91L), // p_1338->g_1286
        (VECTOR(uint16_t, 16))(0x46CCL, (VECTOR(uint16_t, 4))(0x46CCL, (VECTOR(uint16_t, 2))(0x46CCL, 0xAC5EL), 0xAC5EL), 0xAC5EL, 0x46CCL, 0xAC5EL, (VECTOR(uint16_t, 2))(0x46CCL, 0xAC5EL), (VECTOR(uint16_t, 2))(0x46CCL, 0xAC5EL), 0x46CCL, 0xAC5EL, 0x46CCL, 0xAC5EL), // p_1338->g_1287
        &p_1338->g_275, // p_1338->g_1297
        &p_1338->g_1297, // p_1338->g_1296
        (VECTOR(uint64_t, 2))(0x369165D2661FA566L, 0x6418D37F24DC35B4L), // p_1338->g_1303
        (VECTOR(uint8_t, 8))(6UL, (VECTOR(uint8_t, 4))(6UL, (VECTOR(uint8_t, 2))(6UL, 0UL), 0UL), 0UL, 6UL, 0UL), // p_1338->g_1321
        (VECTOR(int64_t, 16))(0x42D2492F22C0CF6EL, (VECTOR(int64_t, 4))(0x42D2492F22C0CF6EL, (VECTOR(int64_t, 2))(0x42D2492F22C0CF6EL, 0L), 0L), 0L, 0x42D2492F22C0CF6EL, 0L, (VECTOR(int64_t, 2))(0x42D2492F22C0CF6EL, 0L), (VECTOR(int64_t, 2))(0x42D2492F22C0CF6EL, 0L), 0x42D2492F22C0CF6EL, 0L, 0x42D2492F22C0CF6EL, 0L), // p_1338->g_1326
        0, // p_1338->v_collective
        sequence_input[get_global_id(0)], // p_1338->global_0_offset
        sequence_input[get_global_id(1)], // p_1338->global_1_offset
        sequence_input[get_global_id(2)], // p_1338->global_2_offset
        sequence_input[get_local_id(0)], // p_1338->local_0_offset
        sequence_input[get_local_id(1)], // p_1338->local_1_offset
        sequence_input[get_local_id(2)], // p_1338->local_2_offset
        sequence_input[get_group_id(0)], // p_1338->group_0_offset
        sequence_input[get_group_id(1)], // p_1338->group_1_offset
        sequence_input[get_group_id(2)], // p_1338->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 20)), permutations[0][get_linear_local_id()])), // p_1338->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1339 = c_1340;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1338);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1338->g_23, "p_1338->g_23", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1338->g_36[i][j][k], "p_1338->g_36[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1338->g_46, "p_1338->g_46", print_hash_value);
    transparent_crc(p_1338->g_70.s0, "p_1338->g_70.s0", print_hash_value);
    transparent_crc(p_1338->g_70.s1, "p_1338->g_70.s1", print_hash_value);
    transparent_crc(p_1338->g_70.s2, "p_1338->g_70.s2", print_hash_value);
    transparent_crc(p_1338->g_70.s3, "p_1338->g_70.s3", print_hash_value);
    transparent_crc(p_1338->g_70.s4, "p_1338->g_70.s4", print_hash_value);
    transparent_crc(p_1338->g_70.s5, "p_1338->g_70.s5", print_hash_value);
    transparent_crc(p_1338->g_70.s6, "p_1338->g_70.s6", print_hash_value);
    transparent_crc(p_1338->g_70.s7, "p_1338->g_70.s7", print_hash_value);
    transparent_crc(p_1338->g_70.s8, "p_1338->g_70.s8", print_hash_value);
    transparent_crc(p_1338->g_70.s9, "p_1338->g_70.s9", print_hash_value);
    transparent_crc(p_1338->g_70.sa, "p_1338->g_70.sa", print_hash_value);
    transparent_crc(p_1338->g_70.sb, "p_1338->g_70.sb", print_hash_value);
    transparent_crc(p_1338->g_70.sc, "p_1338->g_70.sc", print_hash_value);
    transparent_crc(p_1338->g_70.sd, "p_1338->g_70.sd", print_hash_value);
    transparent_crc(p_1338->g_70.se, "p_1338->g_70.se", print_hash_value);
    transparent_crc(p_1338->g_70.sf, "p_1338->g_70.sf", print_hash_value);
    transparent_crc(p_1338->g_82, "p_1338->g_82", print_hash_value);
    transparent_crc(p_1338->g_87, "p_1338->g_87", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1338->g_96[i], "p_1338->g_96[i]", print_hash_value);

    }
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1338->g_108[i], "p_1338->g_108[i]", print_hash_value);

    }
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1338->g_128[i], "p_1338->g_128[i]", print_hash_value);

    }
    transparent_crc(p_1338->g_130.x, "p_1338->g_130.x", print_hash_value);
    transparent_crc(p_1338->g_130.y, "p_1338->g_130.y", print_hash_value);
    transparent_crc(p_1338->g_149, "p_1338->g_149", print_hash_value);
    transparent_crc(p_1338->g_151, "p_1338->g_151", print_hash_value);
    transparent_crc(p_1338->g_165, "p_1338->g_165", print_hash_value);
    transparent_crc(p_1338->g_181.x, "p_1338->g_181.x", print_hash_value);
    transparent_crc(p_1338->g_181.y, "p_1338->g_181.y", print_hash_value);
    transparent_crc(p_1338->g_189.x, "p_1338->g_189.x", print_hash_value);
    transparent_crc(p_1338->g_189.y, "p_1338->g_189.y", print_hash_value);
    transparent_crc(p_1338->g_190.x, "p_1338->g_190.x", print_hash_value);
    transparent_crc(p_1338->g_190.y, "p_1338->g_190.y", print_hash_value);
    transparent_crc(p_1338->g_190.z, "p_1338->g_190.z", print_hash_value);
    transparent_crc(p_1338->g_190.w, "p_1338->g_190.w", print_hash_value);
    transparent_crc(p_1338->g_191.s0, "p_1338->g_191.s0", print_hash_value);
    transparent_crc(p_1338->g_191.s1, "p_1338->g_191.s1", print_hash_value);
    transparent_crc(p_1338->g_191.s2, "p_1338->g_191.s2", print_hash_value);
    transparent_crc(p_1338->g_191.s3, "p_1338->g_191.s3", print_hash_value);
    transparent_crc(p_1338->g_191.s4, "p_1338->g_191.s4", print_hash_value);
    transparent_crc(p_1338->g_191.s5, "p_1338->g_191.s5", print_hash_value);
    transparent_crc(p_1338->g_191.s6, "p_1338->g_191.s6", print_hash_value);
    transparent_crc(p_1338->g_191.s7, "p_1338->g_191.s7", print_hash_value);
    transparent_crc(p_1338->g_215.x, "p_1338->g_215.x", print_hash_value);
    transparent_crc(p_1338->g_215.y, "p_1338->g_215.y", print_hash_value);
    transparent_crc(p_1338->g_227, "p_1338->g_227", print_hash_value);
    transparent_crc(p_1338->g_232.x, "p_1338->g_232.x", print_hash_value);
    transparent_crc(p_1338->g_232.y, "p_1338->g_232.y", print_hash_value);
    transparent_crc(p_1338->g_232.z, "p_1338->g_232.z", print_hash_value);
    transparent_crc(p_1338->g_232.w, "p_1338->g_232.w", print_hash_value);
    transparent_crc(p_1338->g_233.s0, "p_1338->g_233.s0", print_hash_value);
    transparent_crc(p_1338->g_233.s1, "p_1338->g_233.s1", print_hash_value);
    transparent_crc(p_1338->g_233.s2, "p_1338->g_233.s2", print_hash_value);
    transparent_crc(p_1338->g_233.s3, "p_1338->g_233.s3", print_hash_value);
    transparent_crc(p_1338->g_233.s4, "p_1338->g_233.s4", print_hash_value);
    transparent_crc(p_1338->g_233.s5, "p_1338->g_233.s5", print_hash_value);
    transparent_crc(p_1338->g_233.s6, "p_1338->g_233.s6", print_hash_value);
    transparent_crc(p_1338->g_233.s7, "p_1338->g_233.s7", print_hash_value);
    transparent_crc(p_1338->g_234.x, "p_1338->g_234.x", print_hash_value);
    transparent_crc(p_1338->g_234.y, "p_1338->g_234.y", print_hash_value);
    transparent_crc(p_1338->g_234.z, "p_1338->g_234.z", print_hash_value);
    transparent_crc(p_1338->g_234.w, "p_1338->g_234.w", print_hash_value);
    transparent_crc(p_1338->g_247.f0, "p_1338->g_247.f0", print_hash_value);
    transparent_crc(p_1338->g_247.f1, "p_1338->g_247.f1", print_hash_value);
    transparent_crc(p_1338->g_254.s0, "p_1338->g_254.s0", print_hash_value);
    transparent_crc(p_1338->g_254.s1, "p_1338->g_254.s1", print_hash_value);
    transparent_crc(p_1338->g_254.s2, "p_1338->g_254.s2", print_hash_value);
    transparent_crc(p_1338->g_254.s3, "p_1338->g_254.s3", print_hash_value);
    transparent_crc(p_1338->g_254.s4, "p_1338->g_254.s4", print_hash_value);
    transparent_crc(p_1338->g_254.s5, "p_1338->g_254.s5", print_hash_value);
    transparent_crc(p_1338->g_254.s6, "p_1338->g_254.s6", print_hash_value);
    transparent_crc(p_1338->g_254.s7, "p_1338->g_254.s7", print_hash_value);
    transparent_crc(p_1338->g_254.s8, "p_1338->g_254.s8", print_hash_value);
    transparent_crc(p_1338->g_254.s9, "p_1338->g_254.s9", print_hash_value);
    transparent_crc(p_1338->g_254.sa, "p_1338->g_254.sa", print_hash_value);
    transparent_crc(p_1338->g_254.sb, "p_1338->g_254.sb", print_hash_value);
    transparent_crc(p_1338->g_254.sc, "p_1338->g_254.sc", print_hash_value);
    transparent_crc(p_1338->g_254.sd, "p_1338->g_254.sd", print_hash_value);
    transparent_crc(p_1338->g_254.se, "p_1338->g_254.se", print_hash_value);
    transparent_crc(p_1338->g_254.sf, "p_1338->g_254.sf", print_hash_value);
    transparent_crc(p_1338->g_263.s0, "p_1338->g_263.s0", print_hash_value);
    transparent_crc(p_1338->g_263.s1, "p_1338->g_263.s1", print_hash_value);
    transparent_crc(p_1338->g_263.s2, "p_1338->g_263.s2", print_hash_value);
    transparent_crc(p_1338->g_263.s3, "p_1338->g_263.s3", print_hash_value);
    transparent_crc(p_1338->g_263.s4, "p_1338->g_263.s4", print_hash_value);
    transparent_crc(p_1338->g_263.s5, "p_1338->g_263.s5", print_hash_value);
    transparent_crc(p_1338->g_263.s6, "p_1338->g_263.s6", print_hash_value);
    transparent_crc(p_1338->g_263.s7, "p_1338->g_263.s7", print_hash_value);
    transparent_crc(p_1338->g_265.x, "p_1338->g_265.x", print_hash_value);
    transparent_crc(p_1338->g_265.y, "p_1338->g_265.y", print_hash_value);
    transparent_crc(p_1338->g_265.z, "p_1338->g_265.z", print_hash_value);
    transparent_crc(p_1338->g_265.w, "p_1338->g_265.w", print_hash_value);
    transparent_crc(p_1338->g_284.s0, "p_1338->g_284.s0", print_hash_value);
    transparent_crc(p_1338->g_284.s1, "p_1338->g_284.s1", print_hash_value);
    transparent_crc(p_1338->g_284.s2, "p_1338->g_284.s2", print_hash_value);
    transparent_crc(p_1338->g_284.s3, "p_1338->g_284.s3", print_hash_value);
    transparent_crc(p_1338->g_284.s4, "p_1338->g_284.s4", print_hash_value);
    transparent_crc(p_1338->g_284.s5, "p_1338->g_284.s5", print_hash_value);
    transparent_crc(p_1338->g_284.s6, "p_1338->g_284.s6", print_hash_value);
    transparent_crc(p_1338->g_284.s7, "p_1338->g_284.s7", print_hash_value);
    transparent_crc(p_1338->g_304.s0, "p_1338->g_304.s0", print_hash_value);
    transparent_crc(p_1338->g_304.s1, "p_1338->g_304.s1", print_hash_value);
    transparent_crc(p_1338->g_304.s2, "p_1338->g_304.s2", print_hash_value);
    transparent_crc(p_1338->g_304.s3, "p_1338->g_304.s3", print_hash_value);
    transparent_crc(p_1338->g_304.s4, "p_1338->g_304.s4", print_hash_value);
    transparent_crc(p_1338->g_304.s5, "p_1338->g_304.s5", print_hash_value);
    transparent_crc(p_1338->g_304.s6, "p_1338->g_304.s6", print_hash_value);
    transparent_crc(p_1338->g_304.s7, "p_1338->g_304.s7", print_hash_value);
    transparent_crc(p_1338->g_310.x, "p_1338->g_310.x", print_hash_value);
    transparent_crc(p_1338->g_310.y, "p_1338->g_310.y", print_hash_value);
    transparent_crc(p_1338->g_328.f0, "p_1338->g_328.f0", print_hash_value);
    transparent_crc(p_1338->g_328.f1, "p_1338->g_328.f1", print_hash_value);
    transparent_crc(p_1338->g_358.s0, "p_1338->g_358.s0", print_hash_value);
    transparent_crc(p_1338->g_358.s1, "p_1338->g_358.s1", print_hash_value);
    transparent_crc(p_1338->g_358.s2, "p_1338->g_358.s2", print_hash_value);
    transparent_crc(p_1338->g_358.s3, "p_1338->g_358.s3", print_hash_value);
    transparent_crc(p_1338->g_358.s4, "p_1338->g_358.s4", print_hash_value);
    transparent_crc(p_1338->g_358.s5, "p_1338->g_358.s5", print_hash_value);
    transparent_crc(p_1338->g_358.s6, "p_1338->g_358.s6", print_hash_value);
    transparent_crc(p_1338->g_358.s7, "p_1338->g_358.s7", print_hash_value);
    transparent_crc(p_1338->g_358.s8, "p_1338->g_358.s8", print_hash_value);
    transparent_crc(p_1338->g_358.s9, "p_1338->g_358.s9", print_hash_value);
    transparent_crc(p_1338->g_358.sa, "p_1338->g_358.sa", print_hash_value);
    transparent_crc(p_1338->g_358.sb, "p_1338->g_358.sb", print_hash_value);
    transparent_crc(p_1338->g_358.sc, "p_1338->g_358.sc", print_hash_value);
    transparent_crc(p_1338->g_358.sd, "p_1338->g_358.sd", print_hash_value);
    transparent_crc(p_1338->g_358.se, "p_1338->g_358.se", print_hash_value);
    transparent_crc(p_1338->g_358.sf, "p_1338->g_358.sf", print_hash_value);
    transparent_crc(p_1338->g_378.s0, "p_1338->g_378.s0", print_hash_value);
    transparent_crc(p_1338->g_378.s1, "p_1338->g_378.s1", print_hash_value);
    transparent_crc(p_1338->g_378.s2, "p_1338->g_378.s2", print_hash_value);
    transparent_crc(p_1338->g_378.s3, "p_1338->g_378.s3", print_hash_value);
    transparent_crc(p_1338->g_378.s4, "p_1338->g_378.s4", print_hash_value);
    transparent_crc(p_1338->g_378.s5, "p_1338->g_378.s5", print_hash_value);
    transparent_crc(p_1338->g_378.s6, "p_1338->g_378.s6", print_hash_value);
    transparent_crc(p_1338->g_378.s7, "p_1338->g_378.s7", print_hash_value);
    transparent_crc(p_1338->g_378.s8, "p_1338->g_378.s8", print_hash_value);
    transparent_crc(p_1338->g_378.s9, "p_1338->g_378.s9", print_hash_value);
    transparent_crc(p_1338->g_378.sa, "p_1338->g_378.sa", print_hash_value);
    transparent_crc(p_1338->g_378.sb, "p_1338->g_378.sb", print_hash_value);
    transparent_crc(p_1338->g_378.sc, "p_1338->g_378.sc", print_hash_value);
    transparent_crc(p_1338->g_378.sd, "p_1338->g_378.sd", print_hash_value);
    transparent_crc(p_1338->g_378.se, "p_1338->g_378.se", print_hash_value);
    transparent_crc(p_1338->g_378.sf, "p_1338->g_378.sf", print_hash_value);
    transparent_crc(p_1338->g_379.x, "p_1338->g_379.x", print_hash_value);
    transparent_crc(p_1338->g_379.y, "p_1338->g_379.y", print_hash_value);
    transparent_crc(p_1338->g_387.s0, "p_1338->g_387.s0", print_hash_value);
    transparent_crc(p_1338->g_387.s1, "p_1338->g_387.s1", print_hash_value);
    transparent_crc(p_1338->g_387.s2, "p_1338->g_387.s2", print_hash_value);
    transparent_crc(p_1338->g_387.s3, "p_1338->g_387.s3", print_hash_value);
    transparent_crc(p_1338->g_387.s4, "p_1338->g_387.s4", print_hash_value);
    transparent_crc(p_1338->g_387.s5, "p_1338->g_387.s5", print_hash_value);
    transparent_crc(p_1338->g_387.s6, "p_1338->g_387.s6", print_hash_value);
    transparent_crc(p_1338->g_387.s7, "p_1338->g_387.s7", print_hash_value);
    transparent_crc(p_1338->g_387.s8, "p_1338->g_387.s8", print_hash_value);
    transparent_crc(p_1338->g_387.s9, "p_1338->g_387.s9", print_hash_value);
    transparent_crc(p_1338->g_387.sa, "p_1338->g_387.sa", print_hash_value);
    transparent_crc(p_1338->g_387.sb, "p_1338->g_387.sb", print_hash_value);
    transparent_crc(p_1338->g_387.sc, "p_1338->g_387.sc", print_hash_value);
    transparent_crc(p_1338->g_387.sd, "p_1338->g_387.sd", print_hash_value);
    transparent_crc(p_1338->g_387.se, "p_1338->g_387.se", print_hash_value);
    transparent_crc(p_1338->g_387.sf, "p_1338->g_387.sf", print_hash_value);
    transparent_crc(p_1338->g_389.s0, "p_1338->g_389.s0", print_hash_value);
    transparent_crc(p_1338->g_389.s1, "p_1338->g_389.s1", print_hash_value);
    transparent_crc(p_1338->g_389.s2, "p_1338->g_389.s2", print_hash_value);
    transparent_crc(p_1338->g_389.s3, "p_1338->g_389.s3", print_hash_value);
    transparent_crc(p_1338->g_389.s4, "p_1338->g_389.s4", print_hash_value);
    transparent_crc(p_1338->g_389.s5, "p_1338->g_389.s5", print_hash_value);
    transparent_crc(p_1338->g_389.s6, "p_1338->g_389.s6", print_hash_value);
    transparent_crc(p_1338->g_389.s7, "p_1338->g_389.s7", print_hash_value);
    transparent_crc(p_1338->g_389.s8, "p_1338->g_389.s8", print_hash_value);
    transparent_crc(p_1338->g_389.s9, "p_1338->g_389.s9", print_hash_value);
    transparent_crc(p_1338->g_389.sa, "p_1338->g_389.sa", print_hash_value);
    transparent_crc(p_1338->g_389.sb, "p_1338->g_389.sb", print_hash_value);
    transparent_crc(p_1338->g_389.sc, "p_1338->g_389.sc", print_hash_value);
    transparent_crc(p_1338->g_389.sd, "p_1338->g_389.sd", print_hash_value);
    transparent_crc(p_1338->g_389.se, "p_1338->g_389.se", print_hash_value);
    transparent_crc(p_1338->g_389.sf, "p_1338->g_389.sf", print_hash_value);
    transparent_crc(p_1338->g_390.s0, "p_1338->g_390.s0", print_hash_value);
    transparent_crc(p_1338->g_390.s1, "p_1338->g_390.s1", print_hash_value);
    transparent_crc(p_1338->g_390.s2, "p_1338->g_390.s2", print_hash_value);
    transparent_crc(p_1338->g_390.s3, "p_1338->g_390.s3", print_hash_value);
    transparent_crc(p_1338->g_390.s4, "p_1338->g_390.s4", print_hash_value);
    transparent_crc(p_1338->g_390.s5, "p_1338->g_390.s5", print_hash_value);
    transparent_crc(p_1338->g_390.s6, "p_1338->g_390.s6", print_hash_value);
    transparent_crc(p_1338->g_390.s7, "p_1338->g_390.s7", print_hash_value);
    transparent_crc(p_1338->g_390.s8, "p_1338->g_390.s8", print_hash_value);
    transparent_crc(p_1338->g_390.s9, "p_1338->g_390.s9", print_hash_value);
    transparent_crc(p_1338->g_390.sa, "p_1338->g_390.sa", print_hash_value);
    transparent_crc(p_1338->g_390.sb, "p_1338->g_390.sb", print_hash_value);
    transparent_crc(p_1338->g_390.sc, "p_1338->g_390.sc", print_hash_value);
    transparent_crc(p_1338->g_390.sd, "p_1338->g_390.sd", print_hash_value);
    transparent_crc(p_1338->g_390.se, "p_1338->g_390.se", print_hash_value);
    transparent_crc(p_1338->g_390.sf, "p_1338->g_390.sf", print_hash_value);
    transparent_crc(p_1338->g_391.s0, "p_1338->g_391.s0", print_hash_value);
    transparent_crc(p_1338->g_391.s1, "p_1338->g_391.s1", print_hash_value);
    transparent_crc(p_1338->g_391.s2, "p_1338->g_391.s2", print_hash_value);
    transparent_crc(p_1338->g_391.s3, "p_1338->g_391.s3", print_hash_value);
    transparent_crc(p_1338->g_391.s4, "p_1338->g_391.s4", print_hash_value);
    transparent_crc(p_1338->g_391.s5, "p_1338->g_391.s5", print_hash_value);
    transparent_crc(p_1338->g_391.s6, "p_1338->g_391.s6", print_hash_value);
    transparent_crc(p_1338->g_391.s7, "p_1338->g_391.s7", print_hash_value);
    transparent_crc(p_1338->g_408, "p_1338->g_408", print_hash_value);
    transparent_crc(p_1338->g_409.f0, "p_1338->g_409.f0", print_hash_value);
    transparent_crc(p_1338->g_409.f1, "p_1338->g_409.f1", print_hash_value);
    transparent_crc(p_1338->g_667.s0, "p_1338->g_667.s0", print_hash_value);
    transparent_crc(p_1338->g_667.s1, "p_1338->g_667.s1", print_hash_value);
    transparent_crc(p_1338->g_667.s2, "p_1338->g_667.s2", print_hash_value);
    transparent_crc(p_1338->g_667.s3, "p_1338->g_667.s3", print_hash_value);
    transparent_crc(p_1338->g_667.s4, "p_1338->g_667.s4", print_hash_value);
    transparent_crc(p_1338->g_667.s5, "p_1338->g_667.s5", print_hash_value);
    transparent_crc(p_1338->g_667.s6, "p_1338->g_667.s6", print_hash_value);
    transparent_crc(p_1338->g_667.s7, "p_1338->g_667.s7", print_hash_value);
    transparent_crc(p_1338->g_669.x, "p_1338->g_669.x", print_hash_value);
    transparent_crc(p_1338->g_669.y, "p_1338->g_669.y", print_hash_value);
    transparent_crc(p_1338->g_670.s0, "p_1338->g_670.s0", print_hash_value);
    transparent_crc(p_1338->g_670.s1, "p_1338->g_670.s1", print_hash_value);
    transparent_crc(p_1338->g_670.s2, "p_1338->g_670.s2", print_hash_value);
    transparent_crc(p_1338->g_670.s3, "p_1338->g_670.s3", print_hash_value);
    transparent_crc(p_1338->g_670.s4, "p_1338->g_670.s4", print_hash_value);
    transparent_crc(p_1338->g_670.s5, "p_1338->g_670.s5", print_hash_value);
    transparent_crc(p_1338->g_670.s6, "p_1338->g_670.s6", print_hash_value);
    transparent_crc(p_1338->g_670.s7, "p_1338->g_670.s7", print_hash_value);
    transparent_crc(p_1338->g_676.x, "p_1338->g_676.x", print_hash_value);
    transparent_crc(p_1338->g_676.y, "p_1338->g_676.y", print_hash_value);
    transparent_crc(p_1338->g_676.z, "p_1338->g_676.z", print_hash_value);
    transparent_crc(p_1338->g_676.w, "p_1338->g_676.w", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1338->g_687[i], "p_1338->g_687[i]", print_hash_value);

    }
    transparent_crc(p_1338->g_710.x, "p_1338->g_710.x", print_hash_value);
    transparent_crc(p_1338->g_710.y, "p_1338->g_710.y", print_hash_value);
    transparent_crc(p_1338->g_754, "p_1338->g_754", print_hash_value);
    transparent_crc(p_1338->g_858.s0, "p_1338->g_858.s0", print_hash_value);
    transparent_crc(p_1338->g_858.s1, "p_1338->g_858.s1", print_hash_value);
    transparent_crc(p_1338->g_858.s2, "p_1338->g_858.s2", print_hash_value);
    transparent_crc(p_1338->g_858.s3, "p_1338->g_858.s3", print_hash_value);
    transparent_crc(p_1338->g_858.s4, "p_1338->g_858.s4", print_hash_value);
    transparent_crc(p_1338->g_858.s5, "p_1338->g_858.s5", print_hash_value);
    transparent_crc(p_1338->g_858.s6, "p_1338->g_858.s6", print_hash_value);
    transparent_crc(p_1338->g_858.s7, "p_1338->g_858.s7", print_hash_value);
    transparent_crc(p_1338->g_861, "p_1338->g_861", print_hash_value);
    transparent_crc(p_1338->g_865.f0, "p_1338->g_865.f0", print_hash_value);
    transparent_crc(p_1338->g_865.f1, "p_1338->g_865.f1", print_hash_value);
    transparent_crc(p_1338->g_869.f0, "p_1338->g_869.f0", print_hash_value);
    transparent_crc(p_1338->g_869.f1, "p_1338->g_869.f1", print_hash_value);
    transparent_crc(p_1338->g_963.s0, "p_1338->g_963.s0", print_hash_value);
    transparent_crc(p_1338->g_963.s1, "p_1338->g_963.s1", print_hash_value);
    transparent_crc(p_1338->g_963.s2, "p_1338->g_963.s2", print_hash_value);
    transparent_crc(p_1338->g_963.s3, "p_1338->g_963.s3", print_hash_value);
    transparent_crc(p_1338->g_963.s4, "p_1338->g_963.s4", print_hash_value);
    transparent_crc(p_1338->g_963.s5, "p_1338->g_963.s5", print_hash_value);
    transparent_crc(p_1338->g_963.s6, "p_1338->g_963.s6", print_hash_value);
    transparent_crc(p_1338->g_963.s7, "p_1338->g_963.s7", print_hash_value);
    transparent_crc(p_1338->g_963.s8, "p_1338->g_963.s8", print_hash_value);
    transparent_crc(p_1338->g_963.s9, "p_1338->g_963.s9", print_hash_value);
    transparent_crc(p_1338->g_963.sa, "p_1338->g_963.sa", print_hash_value);
    transparent_crc(p_1338->g_963.sb, "p_1338->g_963.sb", print_hash_value);
    transparent_crc(p_1338->g_963.sc, "p_1338->g_963.sc", print_hash_value);
    transparent_crc(p_1338->g_963.sd, "p_1338->g_963.sd", print_hash_value);
    transparent_crc(p_1338->g_963.se, "p_1338->g_963.se", print_hash_value);
    transparent_crc(p_1338->g_963.sf, "p_1338->g_963.sf", print_hash_value);
    transparent_crc(p_1338->g_980.s0, "p_1338->g_980.s0", print_hash_value);
    transparent_crc(p_1338->g_980.s1, "p_1338->g_980.s1", print_hash_value);
    transparent_crc(p_1338->g_980.s2, "p_1338->g_980.s2", print_hash_value);
    transparent_crc(p_1338->g_980.s3, "p_1338->g_980.s3", print_hash_value);
    transparent_crc(p_1338->g_980.s4, "p_1338->g_980.s4", print_hash_value);
    transparent_crc(p_1338->g_980.s5, "p_1338->g_980.s5", print_hash_value);
    transparent_crc(p_1338->g_980.s6, "p_1338->g_980.s6", print_hash_value);
    transparent_crc(p_1338->g_980.s7, "p_1338->g_980.s7", print_hash_value);
    transparent_crc(p_1338->g_980.s8, "p_1338->g_980.s8", print_hash_value);
    transparent_crc(p_1338->g_980.s9, "p_1338->g_980.s9", print_hash_value);
    transparent_crc(p_1338->g_980.sa, "p_1338->g_980.sa", print_hash_value);
    transparent_crc(p_1338->g_980.sb, "p_1338->g_980.sb", print_hash_value);
    transparent_crc(p_1338->g_980.sc, "p_1338->g_980.sc", print_hash_value);
    transparent_crc(p_1338->g_980.sd, "p_1338->g_980.sd", print_hash_value);
    transparent_crc(p_1338->g_980.se, "p_1338->g_980.se", print_hash_value);
    transparent_crc(p_1338->g_980.sf, "p_1338->g_980.sf", print_hash_value);
    transparent_crc(p_1338->g_997.s0, "p_1338->g_997.s0", print_hash_value);
    transparent_crc(p_1338->g_997.s1, "p_1338->g_997.s1", print_hash_value);
    transparent_crc(p_1338->g_997.s2, "p_1338->g_997.s2", print_hash_value);
    transparent_crc(p_1338->g_997.s3, "p_1338->g_997.s3", print_hash_value);
    transparent_crc(p_1338->g_997.s4, "p_1338->g_997.s4", print_hash_value);
    transparent_crc(p_1338->g_997.s5, "p_1338->g_997.s5", print_hash_value);
    transparent_crc(p_1338->g_997.s6, "p_1338->g_997.s6", print_hash_value);
    transparent_crc(p_1338->g_997.s7, "p_1338->g_997.s7", print_hash_value);
    transparent_crc(p_1338->g_999.s0, "p_1338->g_999.s0", print_hash_value);
    transparent_crc(p_1338->g_999.s1, "p_1338->g_999.s1", print_hash_value);
    transparent_crc(p_1338->g_999.s2, "p_1338->g_999.s2", print_hash_value);
    transparent_crc(p_1338->g_999.s3, "p_1338->g_999.s3", print_hash_value);
    transparent_crc(p_1338->g_999.s4, "p_1338->g_999.s4", print_hash_value);
    transparent_crc(p_1338->g_999.s5, "p_1338->g_999.s5", print_hash_value);
    transparent_crc(p_1338->g_999.s6, "p_1338->g_999.s6", print_hash_value);
    transparent_crc(p_1338->g_999.s7, "p_1338->g_999.s7", print_hash_value);
    transparent_crc(p_1338->g_1065.x, "p_1338->g_1065.x", print_hash_value);
    transparent_crc(p_1338->g_1065.y, "p_1338->g_1065.y", print_hash_value);
    transparent_crc(p_1338->g_1065.z, "p_1338->g_1065.z", print_hash_value);
    transparent_crc(p_1338->g_1065.w, "p_1338->g_1065.w", print_hash_value);
    transparent_crc(p_1338->g_1092.s0, "p_1338->g_1092.s0", print_hash_value);
    transparent_crc(p_1338->g_1092.s1, "p_1338->g_1092.s1", print_hash_value);
    transparent_crc(p_1338->g_1092.s2, "p_1338->g_1092.s2", print_hash_value);
    transparent_crc(p_1338->g_1092.s3, "p_1338->g_1092.s3", print_hash_value);
    transparent_crc(p_1338->g_1092.s4, "p_1338->g_1092.s4", print_hash_value);
    transparent_crc(p_1338->g_1092.s5, "p_1338->g_1092.s5", print_hash_value);
    transparent_crc(p_1338->g_1092.s6, "p_1338->g_1092.s6", print_hash_value);
    transparent_crc(p_1338->g_1092.s7, "p_1338->g_1092.s7", print_hash_value);
    transparent_crc(p_1338->g_1092.s8, "p_1338->g_1092.s8", print_hash_value);
    transparent_crc(p_1338->g_1092.s9, "p_1338->g_1092.s9", print_hash_value);
    transparent_crc(p_1338->g_1092.sa, "p_1338->g_1092.sa", print_hash_value);
    transparent_crc(p_1338->g_1092.sb, "p_1338->g_1092.sb", print_hash_value);
    transparent_crc(p_1338->g_1092.sc, "p_1338->g_1092.sc", print_hash_value);
    transparent_crc(p_1338->g_1092.sd, "p_1338->g_1092.sd", print_hash_value);
    transparent_crc(p_1338->g_1092.se, "p_1338->g_1092.se", print_hash_value);
    transparent_crc(p_1338->g_1092.sf, "p_1338->g_1092.sf", print_hash_value);
    transparent_crc(p_1338->g_1126.x, "p_1338->g_1126.x", print_hash_value);
    transparent_crc(p_1338->g_1126.y, "p_1338->g_1126.y", print_hash_value);
    transparent_crc(p_1338->g_1126.z, "p_1338->g_1126.z", print_hash_value);
    transparent_crc(p_1338->g_1126.w, "p_1338->g_1126.w", print_hash_value);
    transparent_crc(p_1338->g_1133, "p_1338->g_1133", print_hash_value);
    transparent_crc(p_1338->g_1195.x, "p_1338->g_1195.x", print_hash_value);
    transparent_crc(p_1338->g_1195.y, "p_1338->g_1195.y", print_hash_value);
    transparent_crc(p_1338->g_1231.s0, "p_1338->g_1231.s0", print_hash_value);
    transparent_crc(p_1338->g_1231.s1, "p_1338->g_1231.s1", print_hash_value);
    transparent_crc(p_1338->g_1231.s2, "p_1338->g_1231.s2", print_hash_value);
    transparent_crc(p_1338->g_1231.s3, "p_1338->g_1231.s3", print_hash_value);
    transparent_crc(p_1338->g_1231.s4, "p_1338->g_1231.s4", print_hash_value);
    transparent_crc(p_1338->g_1231.s5, "p_1338->g_1231.s5", print_hash_value);
    transparent_crc(p_1338->g_1231.s6, "p_1338->g_1231.s6", print_hash_value);
    transparent_crc(p_1338->g_1231.s7, "p_1338->g_1231.s7", print_hash_value);
    transparent_crc(p_1338->g_1231.s8, "p_1338->g_1231.s8", print_hash_value);
    transparent_crc(p_1338->g_1231.s9, "p_1338->g_1231.s9", print_hash_value);
    transparent_crc(p_1338->g_1231.sa, "p_1338->g_1231.sa", print_hash_value);
    transparent_crc(p_1338->g_1231.sb, "p_1338->g_1231.sb", print_hash_value);
    transparent_crc(p_1338->g_1231.sc, "p_1338->g_1231.sc", print_hash_value);
    transparent_crc(p_1338->g_1231.sd, "p_1338->g_1231.sd", print_hash_value);
    transparent_crc(p_1338->g_1231.se, "p_1338->g_1231.se", print_hash_value);
    transparent_crc(p_1338->g_1231.sf, "p_1338->g_1231.sf", print_hash_value);
    transparent_crc(p_1338->g_1237, "p_1338->g_1237", print_hash_value);
    transparent_crc(p_1338->g_1284.s0, "p_1338->g_1284.s0", print_hash_value);
    transparent_crc(p_1338->g_1284.s1, "p_1338->g_1284.s1", print_hash_value);
    transparent_crc(p_1338->g_1284.s2, "p_1338->g_1284.s2", print_hash_value);
    transparent_crc(p_1338->g_1284.s3, "p_1338->g_1284.s3", print_hash_value);
    transparent_crc(p_1338->g_1284.s4, "p_1338->g_1284.s4", print_hash_value);
    transparent_crc(p_1338->g_1284.s5, "p_1338->g_1284.s5", print_hash_value);
    transparent_crc(p_1338->g_1284.s6, "p_1338->g_1284.s6", print_hash_value);
    transparent_crc(p_1338->g_1284.s7, "p_1338->g_1284.s7", print_hash_value);
    transparent_crc(p_1338->g_1286.x, "p_1338->g_1286.x", print_hash_value);
    transparent_crc(p_1338->g_1286.y, "p_1338->g_1286.y", print_hash_value);
    transparent_crc(p_1338->g_1286.z, "p_1338->g_1286.z", print_hash_value);
    transparent_crc(p_1338->g_1286.w, "p_1338->g_1286.w", print_hash_value);
    transparent_crc(p_1338->g_1287.s0, "p_1338->g_1287.s0", print_hash_value);
    transparent_crc(p_1338->g_1287.s1, "p_1338->g_1287.s1", print_hash_value);
    transparent_crc(p_1338->g_1287.s2, "p_1338->g_1287.s2", print_hash_value);
    transparent_crc(p_1338->g_1287.s3, "p_1338->g_1287.s3", print_hash_value);
    transparent_crc(p_1338->g_1287.s4, "p_1338->g_1287.s4", print_hash_value);
    transparent_crc(p_1338->g_1287.s5, "p_1338->g_1287.s5", print_hash_value);
    transparent_crc(p_1338->g_1287.s6, "p_1338->g_1287.s6", print_hash_value);
    transparent_crc(p_1338->g_1287.s7, "p_1338->g_1287.s7", print_hash_value);
    transparent_crc(p_1338->g_1287.s8, "p_1338->g_1287.s8", print_hash_value);
    transparent_crc(p_1338->g_1287.s9, "p_1338->g_1287.s9", print_hash_value);
    transparent_crc(p_1338->g_1287.sa, "p_1338->g_1287.sa", print_hash_value);
    transparent_crc(p_1338->g_1287.sb, "p_1338->g_1287.sb", print_hash_value);
    transparent_crc(p_1338->g_1287.sc, "p_1338->g_1287.sc", print_hash_value);
    transparent_crc(p_1338->g_1287.sd, "p_1338->g_1287.sd", print_hash_value);
    transparent_crc(p_1338->g_1287.se, "p_1338->g_1287.se", print_hash_value);
    transparent_crc(p_1338->g_1287.sf, "p_1338->g_1287.sf", print_hash_value);
    transparent_crc(p_1338->g_1303.x, "p_1338->g_1303.x", print_hash_value);
    transparent_crc(p_1338->g_1303.y, "p_1338->g_1303.y", print_hash_value);
    transparent_crc(p_1338->g_1321.s0, "p_1338->g_1321.s0", print_hash_value);
    transparent_crc(p_1338->g_1321.s1, "p_1338->g_1321.s1", print_hash_value);
    transparent_crc(p_1338->g_1321.s2, "p_1338->g_1321.s2", print_hash_value);
    transparent_crc(p_1338->g_1321.s3, "p_1338->g_1321.s3", print_hash_value);
    transparent_crc(p_1338->g_1321.s4, "p_1338->g_1321.s4", print_hash_value);
    transparent_crc(p_1338->g_1321.s5, "p_1338->g_1321.s5", print_hash_value);
    transparent_crc(p_1338->g_1321.s6, "p_1338->g_1321.s6", print_hash_value);
    transparent_crc(p_1338->g_1321.s7, "p_1338->g_1321.s7", print_hash_value);
    transparent_crc(p_1338->g_1326.s0, "p_1338->g_1326.s0", print_hash_value);
    transparent_crc(p_1338->g_1326.s1, "p_1338->g_1326.s1", print_hash_value);
    transparent_crc(p_1338->g_1326.s2, "p_1338->g_1326.s2", print_hash_value);
    transparent_crc(p_1338->g_1326.s3, "p_1338->g_1326.s3", print_hash_value);
    transparent_crc(p_1338->g_1326.s4, "p_1338->g_1326.s4", print_hash_value);
    transparent_crc(p_1338->g_1326.s5, "p_1338->g_1326.s5", print_hash_value);
    transparent_crc(p_1338->g_1326.s6, "p_1338->g_1326.s6", print_hash_value);
    transparent_crc(p_1338->g_1326.s7, "p_1338->g_1326.s7", print_hash_value);
    transparent_crc(p_1338->g_1326.s8, "p_1338->g_1326.s8", print_hash_value);
    transparent_crc(p_1338->g_1326.s9, "p_1338->g_1326.s9", print_hash_value);
    transparent_crc(p_1338->g_1326.sa, "p_1338->g_1326.sa", print_hash_value);
    transparent_crc(p_1338->g_1326.sb, "p_1338->g_1326.sb", print_hash_value);
    transparent_crc(p_1338->g_1326.sc, "p_1338->g_1326.sc", print_hash_value);
    transparent_crc(p_1338->g_1326.sd, "p_1338->g_1326.sd", print_hash_value);
    transparent_crc(p_1338->g_1326.se, "p_1338->g_1326.se", print_hash_value);
    transparent_crc(p_1338->g_1326.sf, "p_1338->g_1326.sf", print_hash_value);
    transparent_crc(p_1338->v_collective, "p_1338->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 80; i++)
            transparent_crc(p_1338->g_special_values[i + 80 * get_linear_group_id()], "p_1338->g_special_values[i + 80 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 80; i++)
            transparent_crc(p_1338->l_special_values[i], "p_1338->l_special_values[i]", print_hash_value);
    transparent_crc(p_1338->l_comm_values[get_linear_local_id()], "p_1338->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1338->g_comm_values[get_linear_group_id() * 20 + get_linear_local_id()], "p_1338->g_comm_values[get_linear_group_id() * 20 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
