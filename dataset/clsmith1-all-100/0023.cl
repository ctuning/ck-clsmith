// --atomics 55 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 80,85,1 -l 1,5,1
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
{3,4,1,2,0}, // permutation 0
{4,3,2,0,1}, // permutation 1
{3,0,2,1,4}, // permutation 2
{1,2,0,3,4}, // permutation 3
{1,3,0,2,4}, // permutation 4
{2,0,1,3,4}, // permutation 5
{2,4,1,3,0}, // permutation 6
{1,0,2,3,4}, // permutation 7
{1,3,2,4,0}, // permutation 8
{1,2,0,4,3} // permutation 9
};

// Seed: 23

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int64_t  f0;
   uint8_t  f1;
   uint32_t  f2;
};

struct S1 {
   uint32_t  f0;
   volatile uint16_t  f1;
   int32_t  f2;
   uint16_t  f3;
   int32_t  f4;
   int8_t  f5;
   int16_t  f6;
   int32_t  f7;
   struct S0  f8;
   uint64_t  f9;
};

union U2 {
   int32_t  f0;
   uint32_t  f1;
   uint64_t  f2;
};

struct S3 {
    volatile VECTOR(uint8_t, 16) g_12;
    int64_t *g_26;
    int32_t g_29;
    int32_t g_38;
    volatile uint32_t g_39;
    volatile int16_t g_47;
    uint32_t g_48[7][6];
    uint64_t g_105;
    volatile VECTOR(uint8_t, 8) g_122;
    volatile VECTOR(uint16_t, 4) g_125;
    VECTOR(uint16_t, 8) g_127;
    uint64_t g_141;
    uint16_t g_143;
    int64_t *g_145;
    VECTOR(int32_t, 16) g_150;
    uint64_t * volatile g_155;
    uint64_t * volatile * volatile g_154;
    VECTOR(int8_t, 2) g_158;
    volatile VECTOR(int32_t, 16) g_165;
    union U2 g_167;
    VECTOR(uint16_t, 8) g_170;
    uint64_t g_179;
    volatile struct S1 g_199;
    uint32_t g_211;
    int32_t *g_245;
    volatile struct S1 * volatile g_246;
    uint32_t g_265;
    volatile VECTOR(int8_t, 16) g_268;
    uint8_t g_303;
    uint8_t *g_302;
    struct S0 g_322;
    struct S0 *g_321[2];
    int32_t ** volatile g_348[1];
    int32_t ** volatile g_350;
    int32_t ** volatile g_351;
    VECTOR(uint16_t, 4) g_534;
    volatile VECTOR(uint64_t, 16) g_538;
    int16_t g_540;
    int16_t g_547;
    int32_t * volatile g_548;
    volatile VECTOR(int16_t, 8) g_617;
    volatile VECTOR(int16_t, 2) g_618;
    VECTOR(int16_t, 16) g_637;
    uint64_t *g_671[2][2];
    uint64_t * volatile *g_670;
    uint64_t * volatile * volatile *g_669;
    int8_t **g_698;
    volatile struct S1 g_703;
    struct S0 g_727;
    volatile VECTOR(int16_t, 2) g_750;
    VECTOR(uint16_t, 4) g_751;
    uint16_t *g_768;
    uint16_t *g_769;
    int32_t * volatile g_789;
    int32_t g_816;
    VECTOR(uint16_t, 16) g_822;
    volatile VECTOR(int16_t, 16) g_861;
    volatile VECTOR(int8_t, 2) g_874;
    int32_t ** volatile g_891;
    VECTOR(int16_t, 8) g_922;
    volatile VECTOR(int32_t, 2) g_930;
    uint64_t *g_951;
    uint64_t * volatile *g_950;
    VECTOR(int32_t, 4) g_1004;
    struct S1 g_1017;
    int32_t g_1067;
    volatile struct S1 g_1081;
    volatile struct S1 g_1082;
    volatile VECTOR(uint8_t, 8) g_1089;
    VECTOR(uint8_t, 16) g_1090;
    volatile VECTOR(uint16_t, 2) g_1101;
    VECTOR(int16_t, 2) g_1104;
    VECTOR(int16_t, 8) g_1111;
    VECTOR(int32_t, 2) g_1119;
    uint16_t **g_1135;
    int16_t g_1136;
    int32_t ** volatile g_1146;
    int32_t ** volatile g_1147;
    VECTOR(int64_t, 4) g_1182;
    volatile VECTOR(int16_t, 16) g_1190;
    volatile int16_t g_1203[5][6];
    volatile VECTOR(uint32_t, 2) g_1258;
    VECTOR(uint16_t, 2) g_1263;
    int32_t ** volatile g_1280;
    struct S1 *g_1285[5][2];
    volatile VECTOR(uint8_t, 2) g_1297;
    volatile VECTOR(uint8_t, 4) g_1298;
    volatile VECTOR(int16_t, 2) g_1304;
    int32_t ** volatile g_1314;
    int32_t ** volatile g_1315;
    VECTOR(uint32_t, 8) g_1363;
    VECTOR(uint64_t, 8) g_1374;
    VECTOR(uint8_t, 2) g_1377;
    volatile VECTOR(int8_t, 16) g_1397;
    VECTOR(int8_t, 4) g_1398;
    struct S1 g_1407;
    struct S1 g_1408;
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
union U2  func_1(struct S3 * p_1415);
int8_t  func_5(int16_t  p_6, struct S3 * p_1415);
int16_t  func_7(uint32_t  p_8, int16_t  p_9, uint16_t  p_10, struct S3 * p_1415);
int32_t * func_51(int64_t * p_52, int64_t  p_53, uint16_t  p_54, struct S3 * p_1415);
uint32_t  func_60(int16_t  p_61, struct S3 * p_1415);
int16_t  func_68(int64_t * p_69, struct S3 * p_1415);
int64_t * func_70(int64_t * p_71, uint32_t  p_72, struct S3 * p_1415);
int64_t * func_73(uint32_t  p_74, struct S3 * p_1415);
uint64_t  func_79(int16_t  p_80, struct S0  p_81, int32_t * p_82, struct S3 * p_1415);
int16_t  func_83(uint64_t  p_84, uint64_t  p_85, int64_t * p_86, int8_t  p_87, struct S3 * p_1415);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1415->g_12 p_1415->g_comm_values p_1415->l_comm_values p_1415->g_26 p_1415->g_39 p_1415->g_48 p_1415->g_29 p_1415->g_38 p_1415->g_105 p_1415->g_122 p_1415->g_125 p_1415->g_127 p_1415->g_145 p_1415->g_143 p_1415->g_150 p_1415->g_154 p_1415->g_167 p_1415->g_199 p_1415->g_211 p_1415->g_167.f0 p_1415->g_158 p_1415->g_141 p_1415->g_246 p_1415->g_170 p_1415->g_265 p_1415->g_245 p_1415->g_268 p_1415->g_179 p_1415->g_165 p_1415->g_302 p_1415->g_321 p_1415->g_322.f2 p_1415->g_351 p_1415->g_534 p_1415->g_538 p_1415->g_303 p_1415->g_548 p_1415->g_47 p_1415->g_637 p_1415->g_547 p_1415->g_669 p_1415->g_322.f1 p_1415->g_698 p_1415->g_703 p_1415->g_727 p_1415->g_322.f0 p_1415->g_617 p_1415->g_540 p_1415->g_789 p_1415->g_816 p_1415->g_861 p_1415->g_769 p_1415->g_874 p_1415->g_891 p_1415->g_922 p_1415->g_930 p_1415->g_950 p_1415->g_751 p_1415->g_951 p_1415->g_1004 p_1415->g_1017 p_1415->g_618 p_1415->g_670 p_1415->g_1081 p_1415->g_1089 p_1415->g_1090 p_1415->g_1082.f4 p_1415->g_1101 p_1415->g_1104 p_1415->g_1111 p_1415->g_1147 p_1415->g_1182 p_1415->g_155 p_1415->g_1190 p_1415->g_1203 p_1415->g_322 p_1415->g_1258 p_1415->g_1263 p_1415->g_1119 p_1415->g_1067 p_1415->g_768 p_1415->g_1280 p_1415->g_1297 p_1415->g_1298 p_1415->g_1304 p_1415->g_1315 p_1415->g_1136 p_1415->g_1363 p_1415->g_1374 p_1415->g_1377 p_1415->g_1397 p_1415->g_1398
 * writes: p_1415->g_comm_values p_1415->g_29 p_1415->g_39 p_1415->g_48 p_1415->g_105 p_1415->g_26 p_1415->g_143 p_1415->g_154 p_1415->g_211 p_1415->g_245 p_1415->g_199 p_1415->g_170 p_1415->g_265 p_1415->g_179 p_1415->g_322.f2 p_1415->g_540 p_1415->g_547 p_1415->g_38 p_1415->g_167.f2 p_1415->g_303 p_1415->g_167.f1 p_1415->g_322.f1 p_1415->g_727.f2 p_1415->g_322 p_1415->g_768 p_1415->g_769 p_1415->g_321 p_1415->g_816 p_1415->g_727.f1 p_1415->g_158 p_1415->g_1017 p_1415->g_951 p_1415->g_1082 p_1415->g_637 p_1415->g_302 p_1415->g_167 p_1415->g_671 p_1415->g_1182 p_1415->g_1285 p_1415->g_150 p_1415->g_1136
 */
union U2  func_1(struct S3 * p_1415)
{ /* block id: 4 */
    VECTOR(int32_t, 16) l_2 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x18815CBCL), 0x18815CBCL), 0x18815CBCL, 0L, 0x18815CBCL, (VECTOR(int32_t, 2))(0L, 0x18815CBCL), (VECTOR(int32_t, 2))(0L, 0x18815CBCL), 0L, 0x18815CBCL, 0L, 0x18815CBCL);
    int64_t *l_27 = (void*)0;
    VECTOR(int16_t, 8) l_921 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L);
    uint32_t l_924 = 0UL;
    int32_t *l_957 = &p_1415->g_29;
    VECTOR(int32_t, 16) l_962 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0L), 0L), 0L, 1L, 0L, (VECTOR(int32_t, 2))(1L, 0L), (VECTOR(int32_t, 2))(1L, 0L), 1L, 0L, 1L, 0L);
    int32_t l_985 = 0x10904063L;
    uint32_t l_987 = 4294967290UL;
    struct S0 **l_1016 = &p_1415->g_321[0];
    int8_t *l_1061 = (void*)0;
    uint32_t l_1071[4];
    VECTOR(int16_t, 2) l_1072 = (VECTOR(int16_t, 2))(1L, 1L);
    int32_t l_1193 = 0L;
    uint8_t **l_1214 = (void*)0;
    int64_t l_1344 = 0x0D46DE5C2BB5AB24L;
    VECTOR(uint32_t, 8) l_1396 = (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 6UL), 6UL), 6UL, 0UL, 6UL);
    uint64_t **l_1401 = &p_1415->g_951;
    int16_t l_1405 = 0x0F9DL;
    struct S1 *l_1406[5][6][1] = {{{&p_1415->g_1407},{&p_1415->g_1407},{&p_1415->g_1407},{&p_1415->g_1407},{&p_1415->g_1407},{&p_1415->g_1407}},{{&p_1415->g_1407},{&p_1415->g_1407},{&p_1415->g_1407},{&p_1415->g_1407},{&p_1415->g_1407},{&p_1415->g_1407}},{{&p_1415->g_1407},{&p_1415->g_1407},{&p_1415->g_1407},{&p_1415->g_1407},{&p_1415->g_1407},{&p_1415->g_1407}},{{&p_1415->g_1407},{&p_1415->g_1407},{&p_1415->g_1407},{&p_1415->g_1407},{&p_1415->g_1407},{&p_1415->g_1407}},{{&p_1415->g_1407},{&p_1415->g_1407},{&p_1415->g_1407},{&p_1415->g_1407},{&p_1415->g_1407},{&p_1415->g_1407}}};
    int32_t *l_1410[4][9] = {{&p_1415->g_816,(void*)0,&p_1415->g_816,&p_1415->g_816,(void*)0,&p_1415->g_816,&p_1415->g_816,(void*)0,&p_1415->g_816},{&p_1415->g_816,(void*)0,&p_1415->g_816,&p_1415->g_816,(void*)0,&p_1415->g_816,&p_1415->g_816,(void*)0,&p_1415->g_816},{&p_1415->g_816,(void*)0,&p_1415->g_816,&p_1415->g_816,(void*)0,&p_1415->g_816,&p_1415->g_816,(void*)0,&p_1415->g_816},{&p_1415->g_816,(void*)0,&p_1415->g_816,&p_1415->g_816,(void*)0,&p_1415->g_816,&p_1415->g_816,(void*)0,&p_1415->g_816}};
    int32_t l_1411 = 0x25ACBCB2L;
    uint8_t l_1412 = 0xA9L;
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_1071[i] = 0x3BFA8E95L;
    if (l_2.se)
    { /* block id: 5 */
        int8_t l_11 = 0x56L;
        VECTOR(uint16_t, 4) l_19 = (VECTOR(uint16_t, 4))(0x9EB1L, (VECTOR(uint16_t, 2))(0x9EB1L, 0UL), 0UL);
        int64_t *l_24 = (void*)0;
        int64_t *l_25[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t *l_28 = &p_1415->g_29;
        int16_t *l_890 = &p_1415->g_540;
        int16_t l_963 = 8L;
        VECTOR(int32_t, 8) l_984 = (VECTOR(int32_t, 8))((-3L), (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), (-2L)), (-2L)), (-2L), (-3L), (-2L));
        uint8_t l_993 = 0x3BL;
        int8_t ***l_1003 = &p_1415->g_698;
        struct S0 l_1126 = {0x57DE6996ACC6FF04L,0x22L,0xAE9E121AL};
        uint16_t **l_1133[3];
        int32_t l_1158[5][7][5] = {{{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L},{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L},{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L},{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L},{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L},{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L},{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L}},{{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L},{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L},{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L},{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L},{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L},{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L},{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L}},{{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L},{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L},{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L},{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L},{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L},{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L},{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L}},{{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L},{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L},{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L},{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L},{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L},{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L},{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L}},{{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L},{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L},{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L},{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L},{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L},{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L},{0x624C3E1EL,0L,0x6A504519L,0x600356B8L,0x241C2708L}}};
        int8_t l_1181[2][2];
        int32_t l_1185 = 0x19CE46E9L;
        VECTOR(uint32_t, 8) l_1194 = (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0xC82A116EL), 0xC82A116EL), 0xC82A116EL, 4294967295UL, 0xC82A116EL);
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_1133[i] = &p_1415->g_768;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 2; j++)
                l_1181[i][j] = 0x27L;
        }
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        p_1415->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 5)), permutations[(safe_mod_func_uint32_t_u_u((safe_rshift_func_int8_t_s_u(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(func_5(func_7((l_11 == ((l_2.s8 == (((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(p_1415->g_12.sb1)), ((VECTOR(uint8_t, 4))(abs(((VECTOR(uint8_t, 16))(clz(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(3UL, 249UL)).xyxxyyxyxyyxxxxx)).s365d)).even)).xyyyxyyxxxyyyyyx))))).sa42b))), 255UL, 248UL)).lo)).x < ((((*l_28) = (safe_div_func_uint64_t_u_u((safe_rshift_func_uint8_t_u_u((safe_sub_func_uint32_t_u_u((((VECTOR(uint16_t, 2))(safe_clamp_func(VECTOR(uint16_t, 2),uint16_t,((VECTOR(uint16_t, 2))(l_19.zy)), (uint16_t)((p_1415->g_comm_values[p_1415->tid] = (l_2.sc & (p_1415->g_comm_values[p_1415->tid] == (safe_mul_func_int16_t_s_s(l_19.x, (((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(0x6658L, 0x9D1FL)), 65535UL, 0x7C41L)).w == (safe_mod_func_uint32_t_u_u((0x294FE874L & l_11), p_1415->g_comm_values[p_1415->tid])))))))) != (+(((l_2.s6 , p_1415->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1415->tid, 5))]) , p_1415->g_26) == l_27))), (uint16_t)p_1415->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1415->tid, 5))]))).hi ^ l_19.z), 0x1CFE0C2DL)), 1)), 0x3F0B62E56CDAA932L))) >= FAKE_DIVERGE(p_1415->local_2_offset, get_local_id(2), 10)) != l_2.s2))) , l_2.s9)), p_1415->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1415->tid, 5))], p_1415->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1415->tid, 5))], p_1415), p_1415), 6L, (-6L), 0x1AL, 5L, 0x79L, 0x79L, ((VECTOR(int8_t, 8))(0x60L)), 0x17L)).even)).s7, 3)), 10))][(safe_mod_func_uint32_t_u_u(p_1415->tid, 5))]));
        if ((safe_rshift_func_int16_t_s_u(((*l_890) = (safe_div_func_uint16_t_u_u((+((*p_1415->g_769) &= l_2.sb)), p_1415->g_703.f0))), 12)))
        { /* block id: 410 */
            union U2 l_892 = {9L};
            (*l_28) = l_2.sb;
            (*p_1415->g_891) = l_28;
            return l_892;
        }
        else
        { /* block id: 414 */
            struct S0 l_897 = {0x1C2540E5AE21BA47L,8UL,0x8F9E5DEEL};
            uint32_t *l_904 = &p_1415->g_48[5][5];
            uint32_t l_907 = 4294967295UL;
            int8_t *l_908 = (void*)0;
            int8_t *l_909 = &l_11;
            int8_t ***l_954 = &p_1415->g_698;
            uint64_t l_960 = 0x332CCD7A7F9D0247L;
            int32_t l_979 = 1L;
            int32_t l_981[3][9][3] = {{{8L,0x29BA676AL,0x1CE69BE4L},{8L,0x29BA676AL,0x1CE69BE4L},{8L,0x29BA676AL,0x1CE69BE4L},{8L,0x29BA676AL,0x1CE69BE4L},{8L,0x29BA676AL,0x1CE69BE4L},{8L,0x29BA676AL,0x1CE69BE4L},{8L,0x29BA676AL,0x1CE69BE4L},{8L,0x29BA676AL,0x1CE69BE4L},{8L,0x29BA676AL,0x1CE69BE4L}},{{8L,0x29BA676AL,0x1CE69BE4L},{8L,0x29BA676AL,0x1CE69BE4L},{8L,0x29BA676AL,0x1CE69BE4L},{8L,0x29BA676AL,0x1CE69BE4L},{8L,0x29BA676AL,0x1CE69BE4L},{8L,0x29BA676AL,0x1CE69BE4L},{8L,0x29BA676AL,0x1CE69BE4L},{8L,0x29BA676AL,0x1CE69BE4L},{8L,0x29BA676AL,0x1CE69BE4L}},{{8L,0x29BA676AL,0x1CE69BE4L},{8L,0x29BA676AL,0x1CE69BE4L},{8L,0x29BA676AL,0x1CE69BE4L},{8L,0x29BA676AL,0x1CE69BE4L},{8L,0x29BA676AL,0x1CE69BE4L},{8L,0x29BA676AL,0x1CE69BE4L},{8L,0x29BA676AL,0x1CE69BE4L},{8L,0x29BA676AL,0x1CE69BE4L},{8L,0x29BA676AL,0x1CE69BE4L}}};
            VECTOR(int32_t, 2) l_991 = (VECTOR(int32_t, 2))((-1L), (-3L));
            int32_t *l_996 = (void*)0;
            int32_t *l_997 = (void*)0;
            int32_t *l_998 = &p_1415->g_29;
            int32_t *l_999[4][6][8] = {{{(void*)0,(void*)0,&l_981[0][0][1],(void*)0,&l_981[0][6][0],&p_1415->g_816,(void*)0,&l_985},{(void*)0,(void*)0,&l_981[0][0][1],(void*)0,&l_981[0][6][0],&p_1415->g_816,(void*)0,&l_985},{(void*)0,(void*)0,&l_981[0][0][1],(void*)0,&l_981[0][6][0],&p_1415->g_816,(void*)0,&l_985},{(void*)0,(void*)0,&l_981[0][0][1],(void*)0,&l_981[0][6][0],&p_1415->g_816,(void*)0,&l_985},{(void*)0,(void*)0,&l_981[0][0][1],(void*)0,&l_981[0][6][0],&p_1415->g_816,(void*)0,&l_985},{(void*)0,(void*)0,&l_981[0][0][1],(void*)0,&l_981[0][6][0],&p_1415->g_816,(void*)0,&l_985}},{{(void*)0,(void*)0,&l_981[0][0][1],(void*)0,&l_981[0][6][0],&p_1415->g_816,(void*)0,&l_985},{(void*)0,(void*)0,&l_981[0][0][1],(void*)0,&l_981[0][6][0],&p_1415->g_816,(void*)0,&l_985},{(void*)0,(void*)0,&l_981[0][0][1],(void*)0,&l_981[0][6][0],&p_1415->g_816,(void*)0,&l_985},{(void*)0,(void*)0,&l_981[0][0][1],(void*)0,&l_981[0][6][0],&p_1415->g_816,(void*)0,&l_985},{(void*)0,(void*)0,&l_981[0][0][1],(void*)0,&l_981[0][6][0],&p_1415->g_816,(void*)0,&l_985},{(void*)0,(void*)0,&l_981[0][0][1],(void*)0,&l_981[0][6][0],&p_1415->g_816,(void*)0,&l_985}},{{(void*)0,(void*)0,&l_981[0][0][1],(void*)0,&l_981[0][6][0],&p_1415->g_816,(void*)0,&l_985},{(void*)0,(void*)0,&l_981[0][0][1],(void*)0,&l_981[0][6][0],&p_1415->g_816,(void*)0,&l_985},{(void*)0,(void*)0,&l_981[0][0][1],(void*)0,&l_981[0][6][0],&p_1415->g_816,(void*)0,&l_985},{(void*)0,(void*)0,&l_981[0][0][1],(void*)0,&l_981[0][6][0],&p_1415->g_816,(void*)0,&l_985},{(void*)0,(void*)0,&l_981[0][0][1],(void*)0,&l_981[0][6][0],&p_1415->g_816,(void*)0,&l_985},{(void*)0,(void*)0,&l_981[0][0][1],(void*)0,&l_981[0][6][0],&p_1415->g_816,(void*)0,&l_985}},{{(void*)0,(void*)0,&l_981[0][0][1],(void*)0,&l_981[0][6][0],&p_1415->g_816,(void*)0,&l_985},{(void*)0,(void*)0,&l_981[0][0][1],(void*)0,&l_981[0][6][0],&p_1415->g_816,(void*)0,&l_985},{(void*)0,(void*)0,&l_981[0][0][1],(void*)0,&l_981[0][6][0],&p_1415->g_816,(void*)0,&l_985},{(void*)0,(void*)0,&l_981[0][0][1],(void*)0,&l_981[0][6][0],&p_1415->g_816,(void*)0,&l_985},{(void*)0,(void*)0,&l_981[0][0][1],(void*)0,&l_981[0][6][0],&p_1415->g_816,(void*)0,&l_985},{(void*)0,(void*)0,&l_981[0][0][1],(void*)0,&l_981[0][6][0],&p_1415->g_816,(void*)0,&l_985}}};
            uint32_t l_1000[10][4] = {{0x89924F07L,0x89924F07L,0xEBFB2DACL,0x27F6774BL},{0x89924F07L,0x89924F07L,0xEBFB2DACL,0x27F6774BL},{0x89924F07L,0x89924F07L,0xEBFB2DACL,0x27F6774BL},{0x89924F07L,0x89924F07L,0xEBFB2DACL,0x27F6774BL},{0x89924F07L,0x89924F07L,0xEBFB2DACL,0x27F6774BL},{0x89924F07L,0x89924F07L,0xEBFB2DACL,0x27F6774BL},{0x89924F07L,0x89924F07L,0xEBFB2DACL,0x27F6774BL},{0x89924F07L,0x89924F07L,0xEBFB2DACL,0x27F6774BL},{0x89924F07L,0x89924F07L,0xEBFB2DACL,0x27F6774BL},{0x89924F07L,0x89924F07L,0xEBFB2DACL,0x27F6774BL}};
            uint8_t *l_1015 = &l_897.f1;
            uint64_t l_1037 = 0xF4B58C43352C9A8BL;
            int i, j, k;
            if ((safe_add_func_uint64_t_u_u(((0L && ((safe_lshift_func_uint8_t_u_s(0x23L, ((*l_909) &= (l_897 , (((((((*l_28) | ((safe_rshift_func_int8_t_s_s((0x5D3DL == (((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 16))(mad_sat(((VECTOR(int16_t, 16))(clz(((VECTOR(int16_t, 8))(0L, (safe_sub_func_uint32_t_u_u((safe_lshift_func_uint16_t_u_s(0UL, 12)), ((*l_904) = FAKE_DIVERGE(p_1415->local_2_offset, get_local_id(2), 10)))), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(upsample(((VECTOR(int8_t, 16))((-1L), 0x57L, ((VECTOR(int8_t, 4))(0x0AL, ((VECTOR(int8_t, 2))(1L, (-1L))), 0x20L)), 1L, (-10L), (p_1415->g_703.f3 && 0x35279BB0L), (safe_mul_func_int8_t_s_s(((*p_1415->g_302) , p_1415->g_165.s0), p_1415->g_322.f1)), p_1415->g_727.f0, 0x0EL, l_2.sb, p_1415->g_150.s8, (-4L), 0x41L)), ((VECTOR(uint8_t, 16))(252UL))))).s2929)), (-1L), (-6L))).s6635153734565643))), ((VECTOR(int16_t, 16))((-1L))), ((VECTOR(int16_t, 16))(1L))))).even, ((VECTOR(int16_t, 8))(7L))))))), ((VECTOR(int16_t, 8))((-7L)))))).s3 & l_2.sf)), 0)) & l_907)) , l_2.s7) , 1L) | 0x14L) | (-1L)) == (*p_1415->g_302)))))) > (*l_28))) , (*l_28)), (*l_28))))
            { /* block id: 417 */
                uint64_t *l_918 = &p_1415->g_105;
                union U2 l_923 = {1L};
                int64_t l_925 = 0x1CFC45531CA11025L;
                VECTOR(uint32_t, 4) l_927 = (VECTOR(uint32_t, 4))(0x61BF8F9AL, (VECTOR(uint32_t, 2))(0x61BF8F9AL, 0UL), 0UL);
                VECTOR(int32_t, 16) l_931 = (VECTOR(int32_t, 16))((-6L), (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), 1L), 1L), 1L, (-6L), 1L, (VECTOR(int32_t, 2))((-6L), 1L), (VECTOR(int32_t, 2))((-6L), 1L), (-6L), 1L, (-6L), 1L);
                int32_t *l_961 = (void*)0;
                int16_t l_982 = 0x2C3EL;
                int32_t l_983 = 4L;
                int32_t l_986 = 0x44D0402FL;
                int32_t **l_990 = &l_961;
                int i;
                if (((*l_28) = (safe_sub_func_int16_t_s_s(p_1415->g_268.s8, (safe_mod_func_uint64_t_u_u(((*l_918) |= ((safe_lshift_func_uint8_t_u_u(0UL, 5)) , (safe_lshift_func_int16_t_s_s((1L <= 0x5DC85293212FB748L), 15)))), (safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 16))(mul_hi(((VECTOR(int16_t, 4))(l_921.s1255)).xywyyxyxxxxyxywy, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(p_1415->g_922.s25733156)))).s3200633227055670))).sf, ((p_1415->g_727.f2 != ((l_923 , l_897) , (FAKE_DIVERGE(p_1415->global_2_offset, get_global_id(2), 10) && p_1415->g_922.s0))) & (p_1415->g_637.sc > l_924))))))))))
                { /* block id: 420 */
                    int32_t *l_926[3][7] = {{&p_1415->g_29,&p_1415->g_29,&p_1415->g_29,&p_1415->g_29,&p_1415->g_29,&p_1415->g_29,&p_1415->g_29},{&p_1415->g_29,&p_1415->g_29,&p_1415->g_29,&p_1415->g_29,&p_1415->g_29,&p_1415->g_29,&p_1415->g_29},{&p_1415->g_29,&p_1415->g_29,&p_1415->g_29,&p_1415->g_29,&p_1415->g_29,&p_1415->g_29,&p_1415->g_29}};
                    uint64_t *l_964 = (void*)0;
                    uint64_t *l_965[2];
                    int i, j;
                    for (i = 0; i < 2; i++)
                        l_965[i] = (void*)0;
                    ++l_927.x;
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    p_1415->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 5)), permutations[(safe_mod_func_uint32_t_u_u(((((((p_1415->g_922.s2 | ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(p_1415->g_930.xxyxyxyy)).hi)).hi, ((VECTOR(int32_t, 8))(l_931.sf8643f32)).s32))), 0x6B898DF9L, 9L)).y) & (*l_28)) , ((safe_add_func_uint8_t_u_u(((p_1415->g_179 |= (((safe_mul_func_uint16_t_u_u(((safe_mul_func_int8_t_s_s((((safe_mul_func_uint8_t_u_u((safe_div_func_uint64_t_u_u((safe_mul_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s(((*p_1415->g_769) = (((safe_sub_func_uint64_t_u_u(((((p_1415->g_950 == (((((((*l_904) = (safe_mod_func_uint16_t_u_u(((void*)0 != l_954), (safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 4))((((p_1415->g_167 , l_957) != ((safe_div_func_int16_t_s_s((p_1415->g_199.f8.f0 == (*l_28)), l_960)) , l_961)) != (*l_28)), ((VECTOR(int8_t, 2))(0x4AL)), (-8L))).w, (*p_1415->g_302)))))) , 0x0E240FD4L) > p_1415->g_751.z) != p_1415->g_322.f2) || 0x1390L) , &l_918)) <= 0x234BL) == p_1415->g_265) > 0x33L), 0x36AC4148F75BED05L)) & p_1415->g_158.y) == p_1415->g_158.y)), p_1415->g_170.s7)), (*l_957))), (*p_1415->g_951))), 0x77L)) | 0x097BL) && p_1415->g_703.f6), (*l_957))) || p_1415->g_170.s7), 1L)) , l_962.s4) != l_963)) == 0L), (*l_957))) || 0UL)) && 1L) , (void*)0) != (void*)0), 10))][(safe_mod_func_uint32_t_u_u(p_1415->tid, 5))]));
                    (*l_957) = (*l_28);
                }
                else
                { /* block id: 429 */
                    uint16_t l_966 = 65530UL;
                    int32_t *l_967 = (void*)0;
                    int32_t *l_968 = (void*)0;
                    int32_t *l_969 = (void*)0;
                    int32_t *l_970 = (void*)0;
                    int32_t *l_971 = &p_1415->g_29;
                    int32_t *l_972 = (void*)0;
                    int32_t *l_973 = (void*)0;
                    int32_t *l_974 = &p_1415->g_29;
                    int32_t *l_975 = &p_1415->g_29;
                    int32_t *l_976 = &p_1415->g_816;
                    int32_t *l_977 = &p_1415->g_29;
                    int32_t l_978 = 0L;
                    int32_t *l_980[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_980[i] = &p_1415->g_816;
                    l_966 |= ((*l_957) = (*l_957));
                    l_987++;
                }
                (*l_990) = (void*)0;
            }
            else
            { /* block id: 435 */
                int32_t *l_992[1][7] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                int i, j;
                (*l_28) ^= ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(l_991.yyxxyxxyyyxxxyxy)).se188)).odd)).yxyy)).z;
                ++l_993;
            }
            l_1000[7][2]--;
            (*l_28) = (l_1003 == &p_1415->g_698);
            if (((*p_1415->g_769) || (((*l_890) = (((*l_28) || (*l_957)) < ((((VECTOR(int32_t, 2))(p_1415->g_1004.xy)).hi && ((safe_mul_func_int16_t_s_s((safe_mul_func_int16_t_s_s((safe_mod_func_int64_t_s_s(0x05A6BE7EC11D0335L, ((**p_1415->g_950) = (**p_1415->g_950)))), (((((*l_28) != ((*p_1415->g_769) = (safe_sub_func_uint16_t_u_u((((*l_1015) = ((*l_28) , ((safe_mul_func_uint8_t_u_u(((*p_1415->g_769) || (((*p_1415->g_302) = (0x4C84L & 0x2D74L)) > p_1415->g_534.w)), (*l_957))) ^ 0x900C98F0563889DEL))) && FAKE_DIVERGE(p_1415->local_0_offset, get_local_id(0), 10)), (*l_957))))) , &p_1415->g_321[0]) != l_1016) >= (*l_957)))), 0x0F39L)) || p_1415->g_1004.y)) >= p_1415->g_158.y))) == FAKE_DIVERGE(p_1415->group_2_offset, get_group_id(2), 10))))
            { /* block id: 446 */
                struct S1 *l_1018 = &p_1415->g_1017;
                (*l_1018) = p_1415->g_1017;
            }
            else
            { /* block id: 448 */
                int64_t l_1029 = 4L;
                int32_t l_1030 = 0x355A8EEDL;
                int32_t l_1031 = 0x60B76F74L;
                int32_t l_1032 = 1L;
                int32_t l_1033 = (-9L);
                int32_t l_1034 = 0x49F6BB3DL;
                int32_t l_1035 = (-2L);
                VECTOR(int32_t, 8) l_1036 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 1L), 1L), 1L, 1L, 1L);
                int32_t l_1040 = (-5L);
                int i;
                if ((atomic_inc(&p_1415->g_atomic_input[55 * get_linear_group_id() + 34]) == 2))
                { /* block id: 450 */
                    int32_t l_1019[8] = {0x4949719DL,0x03C31F0BL,0x4949719DL,0x4949719DL,0x03C31F0BL,0x4949719DL,0x4949719DL,0x03C31F0BL};
                    int i;
                    for (l_1019[2] = 0; (l_1019[2] != (-25)); l_1019[2] = safe_sub_func_int64_t_s_s(l_1019[2], 7))
                    { /* block id: 453 */
                        VECTOR(uint32_t, 16) l_1022 = (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL, (VECTOR(uint32_t, 2))(0UL, 1UL), (VECTOR(uint32_t, 2))(0UL, 1UL), 0UL, 1UL, 0UL, 1UL);
                        int32_t l_1023 = 0x18F1FEC5L;
                        VECTOR(int32_t, 16) l_1024 = (VECTOR(int32_t, 16))((-4L), (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), (-1L)), (-1L)), (-1L), (-4L), (-1L), (VECTOR(int32_t, 2))((-4L), (-1L)), (VECTOR(int32_t, 2))((-4L), (-1L)), (-4L), (-1L), (-4L), (-1L));
                        uint32_t l_1025[6] = {0UL,0UL,0UL,0UL,0UL,0UL};
                        int16_t l_1026 = 0x6A79L;
                        int64_t l_1027[6][2][3] = {{{0x44DA26816DF569D8L,0x44DA26816DF569D8L,7L},{0x44DA26816DF569D8L,0x44DA26816DF569D8L,7L}},{{0x44DA26816DF569D8L,0x44DA26816DF569D8L,7L},{0x44DA26816DF569D8L,0x44DA26816DF569D8L,7L}},{{0x44DA26816DF569D8L,0x44DA26816DF569D8L,7L},{0x44DA26816DF569D8L,0x44DA26816DF569D8L,7L}},{{0x44DA26816DF569D8L,0x44DA26816DF569D8L,7L},{0x44DA26816DF569D8L,0x44DA26816DF569D8L,7L}},{{0x44DA26816DF569D8L,0x44DA26816DF569D8L,7L},{0x44DA26816DF569D8L,0x44DA26816DF569D8L,7L}},{{0x44DA26816DF569D8L,0x44DA26816DF569D8L,7L},{0x44DA26816DF569D8L,0x44DA26816DF569D8L,7L}}};
                        int64_t l_1028 = 1L;
                        int i, j, k;
                        l_1025[5] = (((VECTOR(uint32_t, 4))(l_1022.s1898)).x , ((l_1023 = (-1L)) , ((VECTOR(int32_t, 2))(l_1024.sc6)).odd));
                        l_1027[0][0][2] |= l_1026;
                        l_1024.s8 |= l_1028;
                    }
                    unsigned int result = 0;
                    int l_1019_i0;
                    for (l_1019_i0 = 0; l_1019_i0 < 8; l_1019_i0++) {
                        result += l_1019[l_1019_i0];
                    }
                    atomic_add(&p_1415->g_special_values[55 * get_linear_group_id() + 34], result);
                }
                else
                { /* block id: 459 */
                    (1 + 1);
                }
                l_1037--;
                l_1040 ^= (*l_28);
            }
        }
        if ((*l_28))
        { /* block id: 466 */
            int32_t l_1045[4][8][4] = {{{2L,0x53A28F24L,5L,0x577B9CF6L},{2L,0x53A28F24L,5L,0x577B9CF6L},{2L,0x53A28F24L,5L,0x577B9CF6L},{2L,0x53A28F24L,5L,0x577B9CF6L},{2L,0x53A28F24L,5L,0x577B9CF6L},{2L,0x53A28F24L,5L,0x577B9CF6L},{2L,0x53A28F24L,5L,0x577B9CF6L},{2L,0x53A28F24L,5L,0x577B9CF6L}},{{2L,0x53A28F24L,5L,0x577B9CF6L},{2L,0x53A28F24L,5L,0x577B9CF6L},{2L,0x53A28F24L,5L,0x577B9CF6L},{2L,0x53A28F24L,5L,0x577B9CF6L},{2L,0x53A28F24L,5L,0x577B9CF6L},{2L,0x53A28F24L,5L,0x577B9CF6L},{2L,0x53A28F24L,5L,0x577B9CF6L},{2L,0x53A28F24L,5L,0x577B9CF6L}},{{2L,0x53A28F24L,5L,0x577B9CF6L},{2L,0x53A28F24L,5L,0x577B9CF6L},{2L,0x53A28F24L,5L,0x577B9CF6L},{2L,0x53A28F24L,5L,0x577B9CF6L},{2L,0x53A28F24L,5L,0x577B9CF6L},{2L,0x53A28F24L,5L,0x577B9CF6L},{2L,0x53A28F24L,5L,0x577B9CF6L},{2L,0x53A28F24L,5L,0x577B9CF6L}},{{2L,0x53A28F24L,5L,0x577B9CF6L},{2L,0x53A28F24L,5L,0x577B9CF6L},{2L,0x53A28F24L,5L,0x577B9CF6L},{2L,0x53A28F24L,5L,0x577B9CF6L},{2L,0x53A28F24L,5L,0x577B9CF6L},{2L,0x53A28F24L,5L,0x577B9CF6L},{2L,0x53A28F24L,5L,0x577B9CF6L},{2L,0x53A28F24L,5L,0x577B9CF6L}}};
            int8_t *l_1055 = (void*)0;
            int64_t **l_1056 = &l_24;
            int8_t **l_1062 = &l_1061;
            uint64_t **l_1068 = &p_1415->g_951;
            VECTOR(int32_t, 16) l_1070 = (VECTOR(int32_t, 16))(0x314CCEEEL, (VECTOR(int32_t, 4))(0x314CCEEEL, (VECTOR(int32_t, 2))(0x314CCEEEL, 0x74A10038L), 0x74A10038L), 0x74A10038L, 0x314CCEEEL, 0x74A10038L, (VECTOR(int32_t, 2))(0x314CCEEEL, 0x74A10038L), (VECTOR(int32_t, 2))(0x314CCEEEL, 0x74A10038L), 0x314CCEEEL, 0x74A10038L, 0x314CCEEEL, 0x74A10038L);
            int64_t l_1138 = 1L;
            int i, j, k;
            for (p_1415->g_1017.f7 = 0; (p_1415->g_1017.f7 != 5); p_1415->g_1017.f7++)
            { /* block id: 469 */
                uint16_t l_1050 = 0xF915L;
                for (p_1415->g_1017.f8.f2 = (-11); (p_1415->g_1017.f8.f2 != 48); p_1415->g_1017.f8.f2++)
                { /* block id: 472 */
                    int64_t l_1046 = 0x294C5EB278DA5336L;
                    int32_t *l_1047 = (void*)0;
                    int32_t *l_1048 = &l_1045[3][2][3];
                    int32_t *l_1049[3];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_1049[i] = (void*)0;
                    ++l_1050;
                }
            }
            if (((safe_add_func_int16_t_s_s((((*l_1068) = l_25[2]) == (void*)0), p_1415->g_618.x)) || p_1415->g_150.s5))
            { /* block id: 479 */
                uint16_t l_1069 = 6UL;
                int32_t l_1095 = 0x70325FD9L;
                int32_t l_1097 = 0x459AF753L;
                int16_t *l_1108 = &p_1415->g_547;
                int16_t **l_1107 = &l_1108;
                int32_t *l_1114 = &p_1415->g_816;
                uint16_t **l_1132 = (void*)0;
                int32_t l_1139 = 0x219F1D6EL;
                union U2 l_1145 = {0x3F72649BL};
                if (((((*p_1415->g_669) == (*p_1415->g_669)) & l_1069) , ((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(0L, 0x112DEA85L)).even, ((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))((-1L), 0L, ((VECTOR(int32_t, 4))(l_1070.s92be)), (-10L), (-1L))).lo)).zzyxxxywwxxyywyz, ((VECTOR(int32_t, 4))((-1L), ((*l_957) = l_1071[0]), 0x51B80C27L, 0x1655C46FL)).zwxxzzyzyxwxyyyy))).odd)))).odd, ((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 2))(safe_clamp_func(VECTOR(int16_t, 2),VECTOR(int16_t, 2),((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(l_1072.xxxy)))), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))((safe_mod_func_int8_t_s_s((((*l_890) |= (1L < (safe_add_func_int64_t_s_s((((~((*l_957) <= (safe_rshift_func_int8_t_s_u(p_1415->g_322.f1, 6)))) == (-3L)) > (*p_1415->g_302)), (*l_28))))) > 65533UL), (*l_957))), (-6L), 1L, 0x20A7L)))).ywwywyzw)).s32)).xxxx))).lo, ((VECTOR(int16_t, 2))(0L)), ((VECTOR(int16_t, 2))((-4L)))))).yxyx, ((VECTOR(int16_t, 4))(0x543CL))))).odd)).yyyxyyyx)).s43, ((VECTOR(int16_t, 2))(0x0683L))))).xxyyyyxxxxyxxyyx, ((VECTOR(uint16_t, 16))(65528UL))))).s569d))), (-1L), 5L, l_1069, 9L, (*p_1415->g_548), 2L, ((VECTOR(int32_t, 4))(0x6770FD2FL)), 0x7E045E40L)).sc670, ((VECTOR(int32_t, 4))(0x070EF29EL))))).xywzywzx, ((VECTOR(int32_t, 8))(1L))))).s37))).odd))
                { /* block id: 482 */
                    int32_t l_1079 = (-6L);
                    int32_t *l_1080 = &p_1415->g_816;
                    l_1079 &= ((*p_1415->g_789) = ((void*)0 == &p_1415->g_48[3][3]));
                    l_1080 = &l_985;
                    p_1415->g_1082 = p_1415->g_1081;
                }
                else
                { /* block id: 487 */
                    int32_t l_1096 = 0x5DB7D6C5L;
                    int32_t **l_1098 = &l_957;
                    l_962.s1 = (safe_add_func_int8_t_s_s(((((*l_890) = ((l_1097 = (((*l_957) ^= (safe_rshift_func_int8_t_s_u(p_1415->g_703.f6, 6))) , (safe_rshift_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(upsample(((VECTOR(uint8_t, 16))(mad_hi(((VECTOR(uint8_t, 2))(255UL, 1UL)).yyxxyxyyxyyxyyyx, ((VECTOR(uint8_t, 2))(mad_sat(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(p_1415->g_1089.s25)))), ((VECTOR(uint8_t, 2))(p_1415->g_1090.s56)), ((VECTOR(uint8_t, 4))((safe_lshift_func_uint8_t_u_u(((safe_lshift_func_uint8_t_u_u(l_1095, 7)) & (p_1415->g_1082.f4 > (((((VECTOR(uint64_t, 4))((*l_28), ((VECTOR(uint64_t, 16))(0x14F624E038CBF5BEL, (*l_957), GROUP_DIVERGE(2, 1), ((VECTOR(uint64_t, 4))(0x7E56BCFDBAD4DC9FL, 0UL, 1UL, 0x40EDF4D229E64362L)), 0x92BC89B77128A004L, 1UL, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(((0x5BL & l_1096) ^ ((void*)0 != &p_1415->g_321[1])), 18446744073709551615UL, 0x663F979441C635CCL, 0x186574269A4D935BL, 0x96938CD9A7A1FCDDL, l_1070.sc, 0UL, 4UL)).lo)), 3UL, 0x5E1FCC9623111008L, 0x9AC8556CC2A23B70L)).s0, 1UL, 0UL)).x , p_1415->g_170.s7) & l_1096) <= p_1415->g_547))), (*p_1415->g_302))), (*p_1415->g_302), 0xAAL, 0x9AL)).hi))).xxyxyyxyxxyyxyxy, ((VECTOR(uint8_t, 16))(1UL))))).s64d9, ((VECTOR(uint8_t, 4))(5UL))))).w, 10)))) || FAKE_DIVERGE(p_1415->global_2_offset, get_global_id(2), 10))) | 0x7853L) <= 18446744073709551612UL), 9UL));
                    (*l_1098) = (void*)0;
                }
                (*l_1114) |= ((((safe_mul_func_uint16_t_u_u(((((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(min(((VECTOR(uint64_t, 2))(1UL, 0UL)), (uint64_t)((p_1415->g_211 >= ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(p_1415->g_1101.yxyy)))).y) , (0xBFL & ((*p_1415->g_302) &= (safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 16))(p_1415->g_1104.xyyxxxyyxyyxyxxy)).s8, ((safe_sub_func_uint32_t_u_u(((l_890 = &p_1415->g_540) == ((*l_1107) = &p_1415->g_547)), (safe_lshift_func_int16_t_s_s(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(p_1415->g_1111.s65)).yxxyxyyyyxxxyyxx)).s0, (p_1415->g_637.s3 = 0x2140L))))) & (0x73E3C041A6429EE9L == (safe_mul_func_int8_t_s_s(p_1415->g_1004.x, p_1415->g_1111.s3)))))))))))).xxyyyxyx)).s4 , (((l_1095 && p_1415->g_29) , (*l_28)) , 8L)) > 0x04D141502F2B87A4L), 0x6A88L)) > 0UL) , l_1069) | 0x72668FD4E0E668ABL);
                for (l_985 = 9; (l_985 <= 25); l_985 = safe_add_func_uint32_t_u_u(l_985, 9))
                { /* block id: 501 */
                    uint16_t ***l_1134[6][4][2] = {{{&l_1133[2],&l_1133[2]},{&l_1133[2],&l_1133[2]},{&l_1133[2],&l_1133[2]},{&l_1133[2],&l_1133[2]}},{{&l_1133[2],&l_1133[2]},{&l_1133[2],&l_1133[2]},{&l_1133[2],&l_1133[2]},{&l_1133[2],&l_1133[2]}},{{&l_1133[2],&l_1133[2]},{&l_1133[2],&l_1133[2]},{&l_1133[2],&l_1133[2]},{&l_1133[2],&l_1133[2]}},{{&l_1133[2],&l_1133[2]},{&l_1133[2],&l_1133[2]},{&l_1133[2],&l_1133[2]},{&l_1133[2],&l_1133[2]}},{{&l_1133[2],&l_1133[2]},{&l_1133[2],&l_1133[2]},{&l_1133[2],&l_1133[2]},{&l_1133[2],&l_1133[2]}},{{&l_1133[2],&l_1133[2]},{&l_1133[2],&l_1133[2]},{&l_1133[2],&l_1133[2]},{&l_1133[2],&l_1133[2]}}};
                    int32_t l_1137 = 0x06A35EEEL;
                    int i, j, k;
                    l_1139 = (safe_sub_func_int32_t_s_s((p_1415->g_617.s7 , ((*l_28) &= (l_1095 = ((*l_1114) = ((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 8))(p_1415->g_1119.xxyxyxxx)).odd, ((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(((((safe_add_func_int32_t_s_s((safe_sub_func_int8_t_s_s(((safe_div_func_uint32_t_u_u((l_1126 , p_1415->g_143), (safe_mod_func_int64_t_s_s((GROUP_DIVERGE(1, 1) >= (safe_mul_func_uint8_t_u_u((6L >= (p_1415->g_617.s7 ^ ((((VECTOR(int16_t, 16))(safe_clamp_func(VECTOR(int16_t, 16),int16_t,((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(0x3B44L, 0x1386L)).yxyxxxxxxyxxxxyy)).hi)).s6330003471630276)))).safc4)).xyxywzxyyxxzyzwz, (int16_t)((safe_unary_minus_func_int16_t_s(((*l_1114) ^ (l_1132 == (p_1415->g_1135 = l_1133[2]))))) >= (((p_1415->g_1136 && 0x17100E9D84104CECL) < p_1415->g_1004.y) & l_1070.s3)), (int16_t)l_1045[3][2][3]))).sf < l_1137) & p_1415->g_265))), l_1138))), l_1137)))) > (*p_1415->g_769)), p_1415->g_1104.x)), (*l_1114))) < FAKE_DIVERGE(p_1415->local_1_offset, get_local_id(1), 10)) | 0x2756BAF800684623L) == p_1415->g_540), ((VECTOR(int32_t, 2))((-1L))), 0x5D3B868DL)), ((VECTOR(int32_t, 4))((-3L))))))))).z)))), p_1415->g_534.x));
                }
                for (p_1415->g_265 = 0; (p_1415->g_265 < 10); p_1415->g_265 = safe_add_func_int64_t_s_s(p_1415->g_265, 1))
                { /* block id: 510 */
                    uint32_t l_1144 = 0UL;
                    if (l_1138)
                        break;
                    for (p_1415->g_1017.f9 = 7; (p_1415->g_1017.f9 == 54); p_1415->g_1017.f9 = safe_add_func_uint8_t_u_u(p_1415->g_1017.f9, 6))
                    { /* block id: 514 */
                        l_1144 |= ((*l_1114) ^= (*p_1415->g_789));
                        return l_1145;
                    }
                    (**l_1016) = l_1126;
                }
            }
            else
            { /* block id: 521 */
                int32_t *l_1148 = (void*)0;
                int32_t *l_1149 = &l_1045[2][4][1];
                int32_t *l_1150 = &p_1415->g_29;
                int32_t *l_1151 = &p_1415->g_1017.f4;
                int32_t *l_1152 = &l_1045[1][6][0];
                int32_t *l_1153 = &l_1045[0][2][1];
                int32_t *l_1154 = (void*)0;
                int32_t *l_1155 = (void*)0;
                int32_t *l_1156 = &p_1415->g_816;
                int32_t *l_1157[8][6][1] = {{{&p_1415->g_1017.f4},{&p_1415->g_1017.f4},{&p_1415->g_1017.f4},{&p_1415->g_1017.f4},{&p_1415->g_1017.f4},{&p_1415->g_1017.f4}},{{&p_1415->g_1017.f4},{&p_1415->g_1017.f4},{&p_1415->g_1017.f4},{&p_1415->g_1017.f4},{&p_1415->g_1017.f4},{&p_1415->g_1017.f4}},{{&p_1415->g_1017.f4},{&p_1415->g_1017.f4},{&p_1415->g_1017.f4},{&p_1415->g_1017.f4},{&p_1415->g_1017.f4},{&p_1415->g_1017.f4}},{{&p_1415->g_1017.f4},{&p_1415->g_1017.f4},{&p_1415->g_1017.f4},{&p_1415->g_1017.f4},{&p_1415->g_1017.f4},{&p_1415->g_1017.f4}},{{&p_1415->g_1017.f4},{&p_1415->g_1017.f4},{&p_1415->g_1017.f4},{&p_1415->g_1017.f4},{&p_1415->g_1017.f4},{&p_1415->g_1017.f4}},{{&p_1415->g_1017.f4},{&p_1415->g_1017.f4},{&p_1415->g_1017.f4},{&p_1415->g_1017.f4},{&p_1415->g_1017.f4},{&p_1415->g_1017.f4}},{{&p_1415->g_1017.f4},{&p_1415->g_1017.f4},{&p_1415->g_1017.f4},{&p_1415->g_1017.f4},{&p_1415->g_1017.f4},{&p_1415->g_1017.f4}},{{&p_1415->g_1017.f4},{&p_1415->g_1017.f4},{&p_1415->g_1017.f4},{&p_1415->g_1017.f4},{&p_1415->g_1017.f4},{&p_1415->g_1017.f4}}};
                uint8_t l_1159 = 7UL;
                int i, j, k;
                (*p_1415->g_1147) = &l_985;
                --l_1159;
                (*l_1156) &= (*l_957);
                (*l_1153) |= 0x16C1F5D7L;
            }
        }
        else
        { /* block id: 527 */
            int32_t **l_1162[7];
            int32_t *l_1163 = &p_1415->g_1067;
            uint16_t **l_1178 = &p_1415->g_768;
            int i;
            for (i = 0; i < 7; i++)
                l_1162[i] = &p_1415->g_245;
            l_1163 = (*p_1415->g_351);
            for (p_1415->g_1017.f2 = (-13); (p_1415->g_1017.f2 <= 19); ++p_1415->g_1017.f2)
            { /* block id: 531 */
                int8_t l_1175 = 1L;
                VECTOR(int64_t, 16) l_1183 = (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x4525D02C3CBCFB6BL), 0x4525D02C3CBCFB6BL), 0x4525D02C3CBCFB6BL, 1L, 0x4525D02C3CBCFB6BL, (VECTOR(int64_t, 2))(1L, 0x4525D02C3CBCFB6BL), (VECTOR(int64_t, 2))(1L, 0x4525D02C3CBCFB6BL), 1L, 0x4525D02C3CBCFB6BL, 1L, 0x4525D02C3CBCFB6BL);
                int i;
                for (p_1415->g_1017.f4 = 0; (p_1415->g_1017.f4 <= 17); p_1415->g_1017.f4 = safe_add_func_int8_t_s_s(p_1415->g_1017.f4, 4))
                { /* block id: 534 */
                    uint8_t **l_1170 = &p_1415->g_302;
                    int32_t l_1184 = 0x428F2A77L;
                    l_984.s0 &= (safe_rshift_func_int8_t_s_s((&p_1415->g_303 != ((*l_1170) = &l_993)), ((p_1415->g_1111.s3 ^ (((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 4))((((0x41E07A99L >= (((*l_1003) = p_1415->g_698) == (void*)0)) | (1UL > p_1415->g_303)) > ((safe_add_func_uint8_t_u_u((safe_div_func_int8_t_s_s(0x0CL, (*l_28))), 0x29L)) && GROUP_DIVERGE(1, 1))), ((VECTOR(int32_t, 2))(0x75AC38C8L)), (-7L))).odd, ((VECTOR(int32_t, 2))((-5L))), ((VECTOR(int32_t, 2))(0x32261A18L))))).yyyyyyyyxyyyyxyy)).s9 <= (*l_28))) || l_1175)));
                    l_1185 = (((((*l_28) | ((safe_add_func_uint64_t_u_u((**p_1415->g_950), (((void*)0 == l_1178) && (!(((((((safe_mul_func_int8_t_s_s((*l_28), ((VECTOR(uint8_t, 4))(clz(((VECTOR(uint8_t, 4))(0xBFL, 0x7AL, 0xA8L, 0x4BL))))).y)) , l_1181[1][0]) , ((p_1415->g_167 = p_1415->g_167) , ((VECTOR(int64_t, 16))(add_sat(((VECTOR(int64_t, 4))(p_1415->g_1182.ywzy)).zyzwxzxwxwyyxwww, ((VECTOR(int64_t, 4))(l_1183.s6d10)).ywxwwxywzwywxxxz))).s2)) == 0x0C84C92E6419554AL) || ((0x37659DBEL < (*p_1415->g_789)) , (*l_957))) , &p_1415->g_1135) == (void*)0))))) < p_1415->g_1111.s6)) < (**p_1415->g_950)) || l_1184) >= p_1415->g_1017.f8.f1);
                }
            }
        }
        if ((safe_mul_func_int8_t_s_s(((((*p_1415->g_154) != (void*)0) , (safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(safe_clamp_func(VECTOR(int16_t, 8),int16_t,((VECTOR(int16_t, 8))(0x21C7L, ((VECTOR(int16_t, 2))(1L, (-1L))), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(p_1415->g_1190.s07cd9c041cdac452)).s500c)), 0x5429L)), (int16_t)(safe_lshift_func_int16_t_s_u(l_1193, (*l_28))), (int16_t)p_1415->g_1089.s1))), 1L, ((((VECTOR(uint32_t, 4))(l_1194.s5720)).y , (safe_mul_func_uint8_t_u_u((*l_28), (+(safe_sub_func_int64_t_s_s((safe_mul_func_uint8_t_u_u((*p_1415->g_302), ((safe_lshift_func_int8_t_s_s(0x4CL, p_1415->g_1203[4][0])) < p_1415->g_727.f2))), p_1415->g_534.z)))))) < FAKE_DIVERGE(p_1415->group_1_offset, get_group_id(1), 10)), (*l_28), ((VECTOR(int16_t, 4))(5L)), (-1L))).s6, 14))) || GROUP_DIVERGE(1, 1)), 0x5BL)))
        { /* block id: 543 */
            uint16_t l_1206[7] = {65529UL,3UL,65529UL,65529UL,3UL,65529UL,65529UL};
            int64_t *l_1211 = (void*)0;
            uint8_t ***l_1215 = (void*)0;
            uint8_t **l_1217 = &p_1415->g_302;
            uint8_t ***l_1216 = &l_1217;
            int i;
            (*l_28) &= (safe_mul_func_uint16_t_u_u(0x534AL, (p_1415->g_930.x & l_1206[5])));
            for (p_1415->g_1017.f8.f0 = 28; (p_1415->g_1017.f8.f0 > 5); p_1415->g_1017.f8.f0 = safe_sub_func_uint16_t_u_u(p_1415->g_1017.f8.f0, 1))
            { /* block id: 547 */
                int32_t l_1212 = 0x3B4BC9E2L;
                uint64_t **l_1213 = &p_1415->g_671[1][0];
                (**l_1016) = (**l_1016);
                (*l_28) = ((((((l_1206[5] <= (safe_mod_func_uint16_t_u_u((((((((*l_1213) = &p_1415->g_141) == (*p_1415->g_154)) ^ l_1212) < ((p_1415->g_150.sf , &p_1415->g_303) == (void*)0)) | 0x7210A7A104FB38B5L) || (*p_1415->g_769)), l_1071[0]))) , GROUP_DIVERGE(2, 1)) != p_1415->g_534.w) && 5L) && (*l_28)) && l_1206[5]);
                return p_1415->g_167;
            }
            (*l_28) ^= (l_1214 != ((*l_1216) = &p_1415->g_302));
        }
        else
        { /* block id: 555 */
            int16_t l_1218 = 0x0B7EL;
            l_1218 = ((VECTOR(int32_t, 2))(0x1FD41516L, (-1L))).lo;
        }
    }
    else
    { /* block id: 558 */
        union U2 *l_1219 = &p_1415->g_167;
        int32_t l_1224 = (-1L);
        uint32_t *l_1249[1][4];
        int64_t l_1252 = 0L;
        VECTOR(uint16_t, 4) l_1266 = (VECTOR(uint16_t, 4))(0x78D6L, (VECTOR(uint16_t, 2))(0x78D6L, 5UL), 5UL);
        int32_t l_1269 = (-8L);
        uint16_t l_1278 = 0xB9A8L;
        VECTOR(uint8_t, 16) l_1296 = (VECTOR(uint8_t, 16))(4UL, (VECTOR(uint8_t, 4))(4UL, (VECTOR(uint8_t, 2))(4UL, 0x4EL), 0x4EL), 0x4EL, 4UL, 0x4EL, (VECTOR(uint8_t, 2))(4UL, 0x4EL), (VECTOR(uint8_t, 2))(4UL, 0x4EL), 4UL, 0x4EL, 4UL, 0x4EL);
        struct S0 l_1307 = {-1L,0x18L,4294967295UL};
        int8_t l_1311 = 4L;
        uint32_t l_1312 = 0x1D1AE9F5L;
        int32_t l_1338 = 0x3357CA86L;
        int32_t l_1342 = 1L;
        int32_t l_1343 = (-1L);
        uint16_t l_1345 = 5UL;
        VECTOR(uint32_t, 8) l_1395 = (VECTOR(uint32_t, 8))(0xDE18C35FL, (VECTOR(uint32_t, 4))(0xDE18C35FL, (VECTOR(uint32_t, 2))(0xDE18C35FL, 1UL), 1UL), 1UL, 0xDE18C35FL, 1UL);
        uint64_t ***l_1402 = &l_1401;
        struct S1 *l_1409 = (void*)0;
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 4; j++)
                l_1249[i][j] = (void*)0;
        }
        l_1219 = &p_1415->g_167;
        for (p_1415->g_211 = 0; (p_1415->g_211 != 18); ++p_1415->g_211)
        { /* block id: 562 */
            int32_t *l_1222 = (void*)0;
            int32_t *l_1223 = (void*)0;
            int32_t *l_1225 = &p_1415->g_816;
            int32_t *l_1226 = (void*)0;
            int32_t *l_1227 = (void*)0;
            int32_t *l_1228 = (void*)0;
            int32_t *l_1229 = (void*)0;
            int32_t l_1230 = 0L;
            int32_t *l_1231[1][9][8] = {{{&p_1415->g_1067,(void*)0,&p_1415->g_1067,&p_1415->g_1067,(void*)0,&p_1415->g_1067,&p_1415->g_1067,(void*)0},{&p_1415->g_1067,(void*)0,&p_1415->g_1067,&p_1415->g_1067,(void*)0,&p_1415->g_1067,&p_1415->g_1067,(void*)0},{&p_1415->g_1067,(void*)0,&p_1415->g_1067,&p_1415->g_1067,(void*)0,&p_1415->g_1067,&p_1415->g_1067,(void*)0},{&p_1415->g_1067,(void*)0,&p_1415->g_1067,&p_1415->g_1067,(void*)0,&p_1415->g_1067,&p_1415->g_1067,(void*)0},{&p_1415->g_1067,(void*)0,&p_1415->g_1067,&p_1415->g_1067,(void*)0,&p_1415->g_1067,&p_1415->g_1067,(void*)0},{&p_1415->g_1067,(void*)0,&p_1415->g_1067,&p_1415->g_1067,(void*)0,&p_1415->g_1067,&p_1415->g_1067,(void*)0},{&p_1415->g_1067,(void*)0,&p_1415->g_1067,&p_1415->g_1067,(void*)0,&p_1415->g_1067,&p_1415->g_1067,(void*)0},{&p_1415->g_1067,(void*)0,&p_1415->g_1067,&p_1415->g_1067,(void*)0,&p_1415->g_1067,&p_1415->g_1067,(void*)0},{&p_1415->g_1067,(void*)0,&p_1415->g_1067,&p_1415->g_1067,(void*)0,&p_1415->g_1067,&p_1415->g_1067,(void*)0}}};
            uint64_t l_1232 = 1UL;
            int i, j, k;
            --l_1232;
        }
        if ((safe_div_func_uint32_t_u_u(((!0UL) , p_1415->g_1081.f0), (-4L))))
        { /* block id: 565 */
            return p_1415->g_167;
        }
        else
        { /* block id: 567 */
            uint16_t l_1239 = 0x7740L;
            uint32_t *l_1248[4] = {&p_1415->g_211,&p_1415->g_211,&p_1415->g_211,&p_1415->g_211};
            int32_t l_1322 = 0x12BF8450L;
            int32_t l_1337 = 0x44A8329CL;
            int32_t l_1339 = 0L;
            int32_t l_1340[10] = {0x41D135A0L,0x1ED8C224L,0x41D135A0L,0x41D135A0L,0x1ED8C224L,0x41D135A0L,0x41D135A0L,0x1ED8C224L,0x41D135A0L,0x41D135A0L};
            int8_t l_1386 = 0x79L;
            int i;
            if (((*l_957) != (safe_lshift_func_uint8_t_u_s(l_1239, 7))))
            { /* block id: 568 */
                return p_1415->g_167;
            }
            else
            { /* block id: 570 */
                uint32_t l_1251 = 0x4F1392CEL;
                VECTOR(int32_t, 8) l_1274 = (VECTOR(int32_t, 8))(5L, (VECTOR(int32_t, 4))(5L, (VECTOR(int32_t, 2))(5L, 5L), 5L), 5L, 5L, 5L);
                struct S1 *l_1283 = &p_1415->g_1017;
                int32_t *l_1316 = &p_1415->g_1067;
                int32_t *l_1317 = &l_1224;
                int32_t *l_1318 = (void*)0;
                int32_t *l_1319 = &p_1415->g_1017.f4;
                int32_t *l_1320 = &p_1415->g_1067;
                int32_t *l_1321 = (void*)0;
                int32_t *l_1323 = &l_1193;
                int32_t *l_1324 = &p_1415->g_29;
                int32_t *l_1325 = &l_1193;
                int32_t *l_1326 = &l_1193;
                int32_t *l_1327 = &l_1193;
                int32_t *l_1328 = &l_1193;
                int32_t *l_1329 = &p_1415->g_1067;
                int32_t *l_1330 = &p_1415->g_1067;
                int32_t *l_1331 = (void*)0;
                int32_t *l_1332 = (void*)0;
                int32_t *l_1333 = &l_1322;
                int32_t *l_1334 = &l_985;
                int32_t *l_1335 = (void*)0;
                int32_t *l_1336[1];
                int8_t l_1341 = (-1L);
                int i;
                for (i = 0; i < 1; i++)
                    l_1336[i] = (void*)0;
                if (((*l_957) = (**p_1415->g_1147)))
                { /* block id: 572 */
                    uint32_t *l_1250[7][2][3] = {{{&p_1415->g_48[5][5],&l_1071[0],(void*)0},{&p_1415->g_48[5][5],&l_1071[0],(void*)0}},{{&p_1415->g_48[5][5],&l_1071[0],(void*)0},{&p_1415->g_48[5][5],&l_1071[0],(void*)0}},{{&p_1415->g_48[5][5],&l_1071[0],(void*)0},{&p_1415->g_48[5][5],&l_1071[0],(void*)0}},{{&p_1415->g_48[5][5],&l_1071[0],(void*)0},{&p_1415->g_48[5][5],&l_1071[0],(void*)0}},{{&p_1415->g_48[5][5],&l_1071[0],(void*)0},{&p_1415->g_48[5][5],&l_1071[0],(void*)0}},{{&p_1415->g_48[5][5],&l_1071[0],(void*)0},{&p_1415->g_48[5][5],&l_1071[0],(void*)0}},{{&p_1415->g_48[5][5],&l_1071[0],(void*)0},{&p_1415->g_48[5][5],&l_1071[0],(void*)0}}};
                    int32_t l_1253 = 1L;
                    uint16_t l_1273[1];
                    int32_t *l_1275 = &p_1415->g_1017.f7;
                    int32_t l_1276 = 0L;
                    int32_t *l_1277[4] = {&l_985,&l_985,&l_985,&l_985};
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                        l_1273[i] = 65535UL;
                    if ((atomic_inc(&p_1415->l_atomic_input[40]) == 8))
                    { /* block id: 574 */
                        int8_t l_1240 = 0x04L;
                        uint16_t l_1241 = 0UL;
                        struct S0 l_1244 = {0L,0xD9L,0x4B973376L};
                        struct S0 l_1245 = {0x7C9DF3F78E9B395AL,0UL,4294967295UL};
                        l_1240 = 0x1B7ACBFAL;
                        l_1241++;
                        l_1245 = l_1244;
                        unsigned int result = 0;
                        result += l_1240;
                        result += l_1241;
                        result += l_1244.f0;
                        result += l_1244.f1;
                        result += l_1244.f2;
                        result += l_1245.f0;
                        result += l_1245.f1;
                        result += l_1245.f2;
                        atomic_add(&p_1415->l_special_values[40], result);
                    }
                    else
                    { /* block id: 578 */
                        (1 + 1);
                    }
                    (*l_957) ^= (((safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 4))(0xC4794A2E41900A92L, 1UL, 0x861119DDCFF2132DL, 0x2D01748A08B486C0L)).x, (((&p_1415->g_211 == l_1248[2]) ^ 0x28E1BC3AL) >= (~(l_1249[0][3] == l_1250[2][0][2]))))) == l_1224) , (((l_1251 || (((VECTOR(int32_t, 2))((-9L), 7L)).hi ^ l_1252)) || l_1253) >= l_1252));
                    if ((l_1278 = ((safe_rshift_func_int8_t_s_u(((l_1276 = ((*l_957) = ((l_1239 || (((VECTOR(uint32_t, 16))(p_1415->g_1258.yyxyyxyyyxyxyxxy)).sb >= (((((*l_1275) = (safe_add_func_uint32_t_u_u((((safe_sub_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(p_1415->g_1263.xxyx)).z, (p_1415->g_1017.f8.f2 , (l_1274.s3 ^= (((safe_div_func_int64_t_s_s((((l_1253 = (l_1251 < ((GROUP_DIVERGE(1, 1) != ((*p_1415->g_769) = ((VECTOR(uint16_t, 16))(l_1266.wywxxwywyyxxxxww)).s1)) , (safe_lshift_func_uint8_t_u_u(((((p_1415->g_48[5][5] = l_1253) < p_1415->g_1004.w) < (*p_1415->g_302)) ^ (((!(l_1269 , (*l_957))) > (((safe_unary_minus_func_int64_t_s((safe_lshift_func_int16_t_s_s(((((*p_1415->g_951) ^= ((p_1415->g_1182.z ^= ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))((l_1251 , l_1251), l_1273[0], 0x6E4036FB362C66F8L, ((VECTOR(int64_t, 4))(8L)), ((VECTOR(int64_t, 2))(2L)), 0L, 1L, l_1251, ((VECTOR(int64_t, 4))(0x0D57935231B368F9L)))).s1f51)), ((VECTOR(int64_t, 4))(0x7138C7BA7F55021DL))))).odd)).lo) == p_1415->g_1119.y)) , p_1415->g_951) == p_1415->g_145), l_1251)))) > (*p_1415->g_769)) | 0x12A8482CL)) & p_1415->g_1090.s8)), (*p_1415->g_302)))))) , l_1251) | (-9L)), l_1251)) , 4294967292UL) != (-1L)))))) || p_1415->g_1067) == l_1266.z), l_1273[0]))) , (*p_1415->g_768)) <= l_1266.y) == p_1415->g_141))) > p_1415->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1415->tid, 5))]))) <= p_1415->g_150.sb), (*p_1415->g_302))) , (-1L))))
                    { /* block id: 592 */
                        union U2 **l_1279 = &l_1219;
                        (*l_1279) = (((*l_1219) = p_1415->g_167) , &p_1415->g_167);
                        (*p_1415->g_1280) = (*p_1415->g_1147);
                    }
                    else
                    { /* block id: 596 */
                        return p_1415->g_167;
                    }
                }
                else
                { /* block id: 599 */
                    struct S1 **l_1284[8] = {&l_1283,&l_1283,&l_1283,&l_1283,&l_1283,&l_1283,&l_1283,&l_1283};
                    int32_t l_1301[1];
                    int8_t *l_1308 = &p_1415->g_1017.f5;
                    uint8_t *l_1309 = (void*)0;
                    uint8_t *l_1310 = &p_1415->g_1017.f8.f1;
                    int32_t **l_1313 = (void*)0;
                    int i;
                    for (i = 0; i < 1; i++)
                        l_1301[i] = 0x2DFD4C84L;
                    p_1415->g_150.s5 |= (safe_sub_func_int16_t_s_s((((p_1415->g_1285[3][1] = l_1283) != &p_1415->g_199) != ((!((*l_957) = (safe_rshift_func_uint8_t_u_u(((*p_1415->g_302)++), 4)))) || ((safe_sub_func_int8_t_s_s(l_1274.s3, 0x56L)) >= l_1269))), ((safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(l_1296.s034f)).odd)))).xxxyyxxy, ((VECTOR(uint8_t, 4))(mad_sat(((VECTOR(uint8_t, 2))(p_1415->g_1297.xx)).yxyx, ((VECTOR(uint8_t, 4))(p_1415->g_1298.wwxy)), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(rhadd(((VECTOR(uint8_t, 16))(1UL, 252UL, l_1239, (p_1415->g_322.f2 , (((VECTOR(uint8_t, 8))(((((((safe_add_func_int8_t_s_s(l_1301[0], ((*l_1310) = ((safe_lshift_func_int16_t_s_s(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(1L, ((VECTOR(int16_t, 2))(p_1415->g_1304.yx)), (-7L))), 0x0569L, ((VECTOR(int16_t, 2))(1L, 0x6872L)), 0x7096L)).s1, 12)) & ((*l_1308) = (safe_mul_func_uint8_t_u_u((((p_1415->g_158.y = 0x38L) , l_1307) , l_1296.sc), 0x7CL))))))) <= l_1311) && l_1312) & 0x72L) == l_1301[0]) , p_1415->g_322.f2), ((VECTOR(uint8_t, 2))(6UL)), p_1415->g_268.sc, ((VECTOR(uint8_t, 2))(5UL)), 0x5CL, 9UL)).s1 < l_1239)), l_1301[0], 0xACL, 253UL, ((VECTOR(uint8_t, 8))(251UL)), 1UL)).sc1, ((VECTOR(uint8_t, 2))(0x04L))))), 255UL, 0UL))))).wzyzzzyx))).s2, 0x54L)) != l_1307.f1)));
                    (*p_1415->g_1315) = func_51(&l_1252, l_1274.s2, (*p_1415->g_768), p_1415);
                }
                --l_1345;
            }
            for (p_1415->g_1136 = 0; (p_1415->g_1136 > 12); p_1415->g_1136 = safe_add_func_int64_t_s_s(p_1415->g_1136, 1))
            { /* block id: 613 */
                uint32_t l_1360[10] = {4294967290UL,0xCC7162E1L,7UL,0xCC7162E1L,4294967290UL,4294967290UL,0xCC7162E1L,7UL,0xCC7162E1L,4294967290UL};
                int32_t l_1389[4] = {(-6L),(-6L),(-6L),(-6L)};
                int i;
                for (p_1415->g_1017.f8.f1 = 0; (p_1415->g_1017.f8.f1 != 34); p_1415->g_1017.f8.f1 = safe_add_func_uint64_t_u_u(p_1415->g_1017.f8.f1, 2))
                { /* block id: 616 */
                    int16_t l_1357 = 0x293AL;
                    int32_t l_1358 = 0x7070285DL;
                    int32_t l_1359 = 0x67E1AB0FL;
                    (**l_1016) = l_1307;
                    for (l_1345 = 21; (l_1345 == 28); ++l_1345)
                    { /* block id: 620 */
                        int32_t *l_1354 = (void*)0;
                        int32_t *l_1355 = (void*)0;
                        int32_t *l_1356[5][10] = {{&p_1415->g_1017.f4,&p_1415->g_1067,(void*)0,&p_1415->g_1067,&p_1415->g_1017.f4,&p_1415->g_1017.f4,&p_1415->g_1067,(void*)0,&p_1415->g_1067,&p_1415->g_1017.f4},{&p_1415->g_1017.f4,&p_1415->g_1067,(void*)0,&p_1415->g_1067,&p_1415->g_1017.f4,&p_1415->g_1017.f4,&p_1415->g_1067,(void*)0,&p_1415->g_1067,&p_1415->g_1017.f4},{&p_1415->g_1017.f4,&p_1415->g_1067,(void*)0,&p_1415->g_1067,&p_1415->g_1017.f4,&p_1415->g_1017.f4,&p_1415->g_1067,(void*)0,&p_1415->g_1067,&p_1415->g_1017.f4},{&p_1415->g_1017.f4,&p_1415->g_1067,(void*)0,&p_1415->g_1067,&p_1415->g_1017.f4,&p_1415->g_1017.f4,&p_1415->g_1067,(void*)0,&p_1415->g_1067,&p_1415->g_1017.f4},{&p_1415->g_1017.f4,&p_1415->g_1067,(void*)0,&p_1415->g_1067,&p_1415->g_1017.f4,&p_1415->g_1017.f4,&p_1415->g_1067,(void*)0,&p_1415->g_1067,&p_1415->g_1017.f4}};
                        int16_t *l_1387 = (void*)0;
                        int16_t *l_1388[7][9][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
                        int64_t *l_1390 = &l_1252;
                        int i, j, k;
                        l_1360[9]--;
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        p_1415->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 5)), permutations[(safe_mod_func_uint32_t_u_u(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(max(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(p_1415->g_1363.s02433660)).s06)).yxxyxxxy, (uint32_t)((((*l_1390) = (safe_mul_func_int16_t_s_s(((l_1360[9] < (*p_1415->g_951)) == (l_1389[3] = (safe_rshift_func_int16_t_s_u(((*l_957) = (((-2L) & ((safe_mul_func_uint8_t_u_u(l_1307.f1, l_1359)) == (3L || (safe_sub_func_int64_t_s_s((safe_add_func_uint16_t_u_u(((((**p_1415->g_950) <= ((VECTOR(uint64_t, 8))(abs(((VECTOR(uint64_t, 2))(p_1415->g_1374.s74)).yyxyxyyx))).s1) & ((safe_add_func_uint16_t_u_u(FAKE_DIVERGE(p_1415->local_2_offset, get_local_id(2), 10), p_1415->g_538.sd)) != ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(p_1415->g_1377.yy)).yxxxyyxy)).s6)) ^ (safe_lshift_func_uint16_t_u_s((safe_lshift_func_int16_t_s_s((safe_lshift_func_int16_t_s_u((((safe_mul_func_int16_t_s_s(p_1415->g_1067, l_1269)) <= l_1307.f2) > l_1252), l_1386)), 0)), 8))), p_1415->g_1017.f0)), (**p_1415->g_950)))))) | 0x53L)), 6)))), 2UL))) >= 7UL) | 0xDE097A280483D848L)))).s1721147777740321)).s4, 10))][(safe_mod_func_uint32_t_u_u(p_1415->tid, 5))]));
                    }
                }
                if ((*l_957))
                    continue;
                if (l_1338)
                    continue;
                for (l_1239 = (-3); (l_1239 > 50); l_1239 = safe_add_func_int64_t_s_s(l_1239, 1))
                { /* block id: 634 */
                    (*l_957) ^= (safe_mul_func_int16_t_s_s(l_1386, GROUP_DIVERGE(0, 1)));
                }
            }
        }
        (*l_957) = (GROUP_DIVERGE(2, 1) == ((VECTOR(uint32_t, 4))(safe_clamp_func(VECTOR(uint32_t, 4),VECTOR(uint32_t, 4),((VECTOR(uint32_t, 8))(l_1395.s57030132)).lo, ((VECTOR(uint32_t, 4))(l_1396.s0746)), ((VECTOR(uint32_t, 16))((((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 2))(3L, 1L)), ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 16))(hadd(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(p_1415->g_1397.s2e)).yyxyxxyy)).s5206700630261760, ((VECTOR(int8_t, 8))(p_1415->g_1398.wywwywyx)).s1161647453013177))).s9 | (((*l_957) & 6UL) || (safe_mod_func_int64_t_s_s(0x68379B5143373ACCL, (FAKE_DIVERGE(p_1415->global_1_offset, get_global_id(1), 10) | (((((((*l_1402) = l_1401) == &p_1415->g_951) || ((safe_lshift_func_int16_t_s_s(((void*)0 == &p_1415->g_671[1][1]), (FAKE_DIVERGE(p_1415->global_0_offset, get_global_id(0), 10) <= l_1405))) & (l_1406[1][0][0] == l_1409))) , (void*)0) != &p_1415->g_38) , (*l_957))))))), ((VECTOR(int8_t, 4))(0L)), 0x54L, 0x65L, (-1L))).s73))), ((VECTOR(int8_t, 2))((-1L)))))).yyyxxxxx)).s0765056545342566)).sf || (*l_957)), l_1345, ((VECTOR(uint32_t, 4))(0xBE603152L)), ((VECTOR(uint32_t, 4))(4294967289UL)), p_1415->g_199.f6, ((VECTOR(uint32_t, 2))(1UL)), ((VECTOR(uint32_t, 2))(4294967295UL)), 4294967292UL)).s2c43))).y);
    }
    ++l_1412;
    return p_1415->g_167;
}


/* ------------------------------------------ */
/* 
 * reads : p_1415->g_12 p_1415->g_48 p_1415->l_comm_values p_1415->g_29 p_1415->g_38 p_1415->g_comm_values p_1415->g_105 p_1415->g_122 p_1415->g_125 p_1415->g_127 p_1415->g_145 p_1415->g_143 p_1415->g_39 p_1415->g_150 p_1415->g_154 p_1415->g_167 p_1415->g_199 p_1415->g_211 p_1415->g_167.f0 p_1415->g_158 p_1415->g_141 p_1415->g_246 p_1415->g_170 p_1415->g_265 p_1415->g_245 p_1415->g_268 p_1415->g_179 p_1415->g_165 p_1415->g_302 p_1415->g_321 p_1415->g_322.f2 p_1415->g_351 p_1415->g_534 p_1415->g_538 p_1415->g_303 p_1415->g_548 p_1415->g_47 p_1415->g_637 p_1415->g_547 p_1415->g_669 p_1415->g_322.f1 p_1415->g_698 p_1415->g_703 p_1415->g_727 p_1415->g_322.f0 p_1415->g_617 p_1415->g_540 p_1415->g_789 p_1415->g_816 p_1415->g_861 p_1415->g_769 p_1415->g_874
 * writes: p_1415->g_105 p_1415->g_26 p_1415->g_29 p_1415->g_143 p_1415->g_154 p_1415->g_comm_values p_1415->g_211 p_1415->g_245 p_1415->g_199 p_1415->g_170 p_1415->g_265 p_1415->g_179 p_1415->g_322.f2 p_1415->g_540 p_1415->g_547 p_1415->g_38 p_1415->g_167.f2 p_1415->g_303 p_1415->g_167.f1 p_1415->g_322.f1 p_1415->g_727.f2 p_1415->g_322 p_1415->g_768 p_1415->g_769 p_1415->g_321 p_1415->g_816 p_1415->g_727.f1 p_1415->g_158
 */
int8_t  func_5(int16_t  p_6, struct S3 * p_1415)
{ /* block id: 17 */
    int16_t l_59 = 1L;
    VECTOR(uint8_t, 16) l_62 = (VECTOR(uint8_t, 16))(4UL, (VECTOR(uint8_t, 4))(4UL, (VECTOR(uint8_t, 2))(4UL, 0x9AL), 0x9AL), 0x9AL, 4UL, 0x9AL, (VECTOR(uint8_t, 2))(4UL, 0x9AL), (VECTOR(uint8_t, 2))(4UL, 0x9AL), 4UL, 0x9AL, 4UL, 0x9AL);
    int32_t l_63 = 0x1941B8E2L;
    int32_t *l_75 = &p_1415->g_29;
    VECTOR(int64_t, 16) l_78 = (VECTOR(int64_t, 16))(0x3F990BD688696B6CL, (VECTOR(int64_t, 4))(0x3F990BD688696B6CL, (VECTOR(int64_t, 2))(0x3F990BD688696B6CL, 0x4227312B8DC093C8L), 0x4227312B8DC093C8L), 0x4227312B8DC093C8L, 0x3F990BD688696B6CL, 0x4227312B8DC093C8L, (VECTOR(int64_t, 2))(0x3F990BD688696B6CL, 0x4227312B8DC093C8L), (VECTOR(int64_t, 2))(0x3F990BD688696B6CL, 0x4227312B8DC093C8L), 0x3F990BD688696B6CL, 0x4227312B8DC093C8L, 0x3F990BD688696B6CL, 0x4227312B8DC093C8L);
    int64_t *l_88 = (void*)0;
    struct S0 l_90 = {0x0329EC2202B94DD0L,0UL,4294967292UL};
    int32_t *l_285 = (void*)0;
    uint32_t l_758 = 0x4A4289BCL;
    int16_t l_817 = 6L;
    int32_t **l_881[4];
    int32_t *l_882[3][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    uint8_t l_883 = 3UL;
    int32_t *l_884 = &p_1415->g_816;
    int32_t *l_885 = &p_1415->g_816;
    int i, j;
    for (i = 0; i < 4; i++)
        l_881[i] = &l_285;
    l_882[2][3] = func_51((((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),VECTOR(int64_t, 2),((VECTOR(int64_t, 8))((safe_lshift_func_uint8_t_u_u((p_1415->g_816 &= (safe_div_func_int32_t_s_s((l_59 , ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x72AAF332L, 1L)), (-4L), 0x58E9B07DL)).y), (p_1415->g_12.s0 || func_60(((l_63 |= ((VECTOR(uint8_t, 8))(l_62.s4a7b5929)).s2) > ((VECTOR(int8_t, 8))((safe_lshift_func_int8_t_s_s(p_6, 4)), ((((((safe_rshift_func_int16_t_s_s(func_68(func_70(func_73(((l_75 == ((p_1415->g_12.s5 < p_1415->g_48[2][5]) , (((safe_div_func_int8_t_s_s((((VECTOR(int64_t, 4))(l_78.s8fd2)).z >= (func_79(func_83(p_1415->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1415->tid, 5))], ((*l_75) < p_1415->g_38), l_88, (*l_75), p_1415), l_90, l_75, p_1415) , 0xF8E5B7813A4B513DL)), l_78.s7)) || 1L) , l_285))) || 0UL), p_1415), l_62.s6, p_1415), p_1415), l_758)) && GROUP_DIVERGE(0, 1)) == 1UL) ^ 0x228FL) , p_6) <= p_1415->g_158.x), ((VECTOR(int8_t, 4))(6L)), 0x3FL, 0L)).s4), p_1415))))), p_6)), ((VECTOR(int64_t, 4))(0L)), ((VECTOR(int64_t, 2))(0x364774A38CC7CFBAL)), (-3L))).s62, ((VECTOR(int64_t, 2))((-3L))), ((VECTOR(int64_t, 2))((-6L)))))).yxyxyxxyyyxxyyyx)).s3 , l_88), p_6, l_817, p_1415);
    l_883 = ((*l_75) = p_6);
    l_885 = ((*p_1415->g_351) = l_884);
    (*p_1415->g_351) = (void*)0;
    return p_6;
}


/* ------------------------------------------ */
/* 
 * reads : p_1415->g_39 p_1415->g_48
 * writes: p_1415->g_39 p_1415->g_48
 */
int16_t  func_7(uint32_t  p_8, int16_t  p_9, uint16_t  p_10, struct S3 * p_1415)
{ /* block id: 8 */
    int32_t *l_30 = &p_1415->g_29;
    int32_t l_31 = 0x464BBCDFL;
    int32_t *l_32 = &l_31;
    int32_t *l_33 = &l_31;
    int32_t *l_34 = (void*)0;
    int32_t *l_35 = &p_1415->g_29;
    int32_t *l_36 = (void*)0;
    int32_t *l_37[5][10] = {{(void*)0,(void*)0,(void*)0,&l_31,&p_1415->g_29,&l_31,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_31,&p_1415->g_29,&l_31,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_31,&p_1415->g_29,&l_31,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_31,&p_1415->g_29,&l_31,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_31,&p_1415->g_29,&l_31,(void*)0,(void*)0,(void*)0,(void*)0}};
    int i, j;
    ++p_1415->g_39;
    for (l_31 = 0; (l_31 <= 29); l_31 = safe_add_func_uint8_t_u_u(l_31, 6))
    { /* block id: 12 */
        uint32_t l_44 = 4294967290UL;
        ++l_44;
    }
    p_1415->g_48[5][5]++;
    return p_9;
}


/* ------------------------------------------ */
/* 
 * reads : p_1415->g_540 p_1415->g_302 p_1415->g_303 p_1415->g_727.f1 p_1415->g_547 p_1415->g_158 p_1415->g_703.f4 p_1415->g_534 p_1415->g_816 p_1415->g_789 p_1415->g_29 p_1415->g_246 p_1415->g_199 p_1415->g_703.f8.f1 p_1415->g_861 p_1415->g_769 p_1415->g_143 p_1415->g_874
 * writes: p_1415->g_540 p_1415->g_727.f1 p_1415->g_547 p_1415->g_158 p_1415->g_105 p_1415->g_816 p_1415->g_29 p_1415->g_143
 */
int32_t * func_51(int64_t * p_52, int64_t  p_53, uint16_t  p_54, struct S3 * p_1415)
{ /* block id: 377 */
    int16_t l_828[7][9][4] = {{{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL}},{{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL}},{{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL}},{{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL}},{{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL}},{{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL}},{{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL},{(-1L),0x313CL,0x1ECFL,0x458DL}}};
    VECTOR(int64_t, 16) l_842 = (VECTOR(int64_t, 16))(6L, (VECTOR(int64_t, 4))(6L, (VECTOR(int64_t, 2))(6L, 3L), 3L), 3L, 6L, 3L, (VECTOR(int64_t, 2))(6L, 3L), (VECTOR(int64_t, 2))(6L, 3L), 6L, 3L, 6L, 3L);
    VECTOR(int32_t, 4) l_847 = (VECTOR(int32_t, 4))((-10L), (VECTOR(int32_t, 2))((-10L), 0x43948785L), 0x43948785L);
    int32_t *l_851 = &p_1415->g_29;
    int16_t *l_858 = &l_828[5][1][2];
    VECTOR(int16_t, 2) l_862 = (VECTOR(int16_t, 2))((-1L), (-4L));
    VECTOR(int16_t, 4) l_863 = (VECTOR(int16_t, 4))(0x0FB4L, (VECTOR(int16_t, 2))(0x0FB4L, 0L), 0L);
    VECTOR(int16_t, 8) l_864 = (VECTOR(int16_t, 8))(0x60DAL, (VECTOR(int16_t, 4))(0x60DAL, (VECTOR(int16_t, 2))(0x60DAL, 0x4CFEL), 0x4CFEL), 0x4CFEL, 0x60DAL, 0x4CFEL);
    VECTOR(int8_t, 8) l_873 = (VECTOR(int8_t, 8))((-4L), (VECTOR(int8_t, 4))((-4L), (VECTOR(int8_t, 2))((-4L), 1L), 1L), 1L, (-4L), 1L);
    VECTOR(int8_t, 8) l_875 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x43L), 0x43L), 0x43L, 1L, 0x43L);
    VECTOR(int8_t, 16) l_876 = (VECTOR(int8_t, 16))((-8L), (VECTOR(int8_t, 4))((-8L), (VECTOR(int8_t, 2))((-8L), (-4L)), (-4L)), (-4L), (-8L), (-4L), (VECTOR(int8_t, 2))((-8L), (-4L)), (VECTOR(int8_t, 2))((-8L), (-4L)), (-8L), (-4L), (-8L), (-4L));
    int32_t *l_877 = (void*)0;
    int32_t *l_878 = &p_1415->g_29;
    int32_t l_879 = 0x314342F8L;
    int32_t *l_880 = (void*)0;
    int i, j, k;
    for (p_1415->g_540 = 0; (p_1415->g_540 > 5); ++p_1415->g_540)
    { /* block id: 380 */
        uint8_t *l_827 = &p_1415->g_727.f1;
        int32_t l_829 = 0x78340F76L;
        VECTOR(int16_t, 4) l_830 = (VECTOR(int16_t, 4))(0x679FL, (VECTOR(int16_t, 2))(0x679FL, 6L), 6L);
        int16_t *l_831 = (void*)0;
        int16_t *l_832[1][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        VECTOR(int64_t, 16) l_841 = (VECTOR(int64_t, 16))(0x6B77C9C1671E9530L, (VECTOR(int64_t, 4))(0x6B77C9C1671E9530L, (VECTOR(int64_t, 2))(0x6B77C9C1671E9530L, 0L), 0L), 0L, 0x6B77C9C1671E9530L, 0L, (VECTOR(int64_t, 2))(0x6B77C9C1671E9530L, 0L), (VECTOR(int64_t, 2))(0x6B77C9C1671E9530L, 0L), 0x6B77C9C1671E9530L, 0L, 0x6B77C9C1671E9530L, 0L);
        uint64_t *l_848 = &p_1415->g_105;
        int32_t *l_849 = &p_1415->g_816;
        int32_t **l_850[3];
        int i, j;
        for (i = 0; i < 3; i++)
            l_850[i] = &l_849;
        l_828[5][1][2] |= (safe_rshift_func_uint16_t_u_s(((VECTOR(uint16_t, 2))(p_1415->g_822.s76)).odd, ((safe_mul_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), (safe_lshift_func_uint8_t_u_u((*p_1415->g_302), ((*l_827) ^= 0xA2L))))) , p_54)));
        (*l_849) |= ((((l_829 >= ((p_1415->g_547 ^= ((VECTOR(int16_t, 16))(l_830.xxxzzxxxzyzxwyyx)).sc) && ((safe_lshift_func_int8_t_s_u((p_1415->g_158.y |= p_54), (safe_lshift_func_int8_t_s_u((1UL && ((((safe_rshift_func_int16_t_s_s(l_828[1][8][2], 8)) > (p_1415->g_703.f4 & (((VECTOR(int64_t, 2))(mul_hi(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(l_841.s8c008b10)).s4710722417415403)).s57, ((VECTOR(int64_t, 2))(l_842.sed))))).odd == ((safe_rshift_func_int16_t_s_u(p_53, ((GROUP_DIVERGE(1, 1) , (safe_add_func_uint64_t_u_u(((*l_848) = ((p_1415->g_547 ^ ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(l_847.zzwywwwy)).s5100276574152426)).s1) >= 0x2A818594L)), l_830.x))) ^ p_1415->g_534.w))) == p_54)))) < (-1L)) < l_829)), (*p_1415->g_302))))) ^ (-2L)))) || l_841.s6) <= 4294967289UL) != l_830.x);
        l_851 = (l_842.se , (void*)0);
        (*p_1415->g_789) ^= ((*l_849) = (safe_sub_func_uint8_t_u_u(p_54, 0x56L)));
    }
    l_879 |= ((*p_1415->g_246) , ((*l_878) = (safe_rshift_func_uint8_t_u_s(((safe_lshift_func_uint8_t_u_u(((((VECTOR(int16_t, 16))(p_1415->g_703.f8.f1, ((*l_858) = p_1415->g_199.f8.f2), (safe_sub_func_uint8_t_u_u((*p_1415->g_302), l_847.z)), 3L, ((VECTOR(int16_t, 16))(p_1415->g_861.s0209b1c83683d6ce)).s9, (-1L), ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(rotate(((VECTOR(int16_t, 4))(l_862.xxyx)), ((VECTOR(int16_t, 16))(sub_sat(((VECTOR(int16_t, 2))(l_863.wx)).xyxxxyxxxyxyyyyx, ((VECTOR(int16_t, 4))(l_864.s2512)).xwxyyyzzxxyyzywx))).s558e))), (p_1415->g_540 = (((!p_54) != (safe_sub_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(((*p_1415->g_769)++), 0x5AFDL)), (((l_847.z = ((0UL && (safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(abs(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 4))(rotate(((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 2))(l_873.s17)).xyyx, ((VECTOR(int8_t, 16))(p_1415->g_874.xxyxyyyyxxxxyxyx)).s0ddb))), ((VECTOR(int8_t, 2))((-1L), 0L)).yyxx))), ((VECTOR(int8_t, 4))(l_875.s7045))))), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(l_876.s11a4b265)).even)).z, 0x0BL, 0x4FL, 0x33L)).hi))).yzxxwwzyzxzxyxyz)).sa, (*p_1415->g_302)))) > 0UL)) > 0x25L) < 0x083CL)))) ^ 65527UL)), 0x0ECDL, 0x634CL, (-1L))), 0x07D9L, 0x185BL)).s8 , FAKE_DIVERGE(p_1415->group_1_offset, get_group_id(1), 10)) <= 1UL), (*p_1415->g_302))) != 0x3913A1EAL), 3))));
    return l_880;
}


/* ------------------------------------------ */
/* 
 * reads : p_1415->g_199.f2 p_1415->g_48 p_1415->g_617 p_1415->g_302 p_1415->g_303 p_1415->g_comm_values p_1415->g_540 p_1415->g_548 p_1415->g_29 p_1415->g_789
 * writes: p_1415->g_768 p_1415->g_769 p_1415->g_540 p_1415->g_547 p_1415->g_29 p_1415->g_321 p_1415->g_179
 */
uint32_t  func_60(int16_t  p_61, struct S3 * p_1415)
{ /* block id: 362 */
    int64_t l_761 = 9L;
    uint16_t *l_766 = (void*)0;
    uint16_t **l_767[4][4] = {{(void*)0,&l_766,&l_766,&l_766},{(void*)0,&l_766,&l_766,&l_766},{(void*)0,&l_766,&l_766,&l_766},{(void*)0,&l_766,&l_766,&l_766}};
    int32_t l_770 = 0x70B6BCF2L;
    VECTOR(uint8_t, 2) l_775 = (VECTOR(uint8_t, 2))(0xD4L, 0x56L);
    VECTOR(uint8_t, 8) l_780 = (VECTOR(uint8_t, 8))(0x9CL, (VECTOR(uint8_t, 4))(0x9CL, (VECTOR(uint8_t, 2))(0x9CL, 0x9EL), 0x9EL), 0x9EL, 0x9CL, 0x9EL);
    uint8_t *l_781 = (void*)0;
    uint8_t *l_782 = (void*)0;
    uint8_t *l_783 = (void*)0;
    uint8_t *l_784[4];
    int16_t *l_785 = &p_1415->g_540;
    int32_t l_786 = 0x46BDC56CL;
    int16_t *l_787 = &p_1415->g_547;
    int32_t *l_788 = (void*)0;
    int32_t *l_790 = &p_1415->g_29;
    int32_t *l_791 = &p_1415->g_29;
    int32_t *l_792 = (void*)0;
    int32_t *l_793 = &p_1415->g_29;
    int32_t *l_794 = &l_770;
    int16_t l_795 = 1L;
    int32_t *l_796 = &p_1415->g_29;
    int32_t *l_797 = (void*)0;
    int32_t *l_798[8] = {&p_1415->g_29,&p_1415->g_29,&p_1415->g_29,&p_1415->g_29,&p_1415->g_29,&p_1415->g_29,&p_1415->g_29,&p_1415->g_29};
    uint32_t l_799 = 4294967295UL;
    VECTOR(int32_t, 4) l_802 = (VECTOR(int32_t, 4))(0x115A4B60L, (VECTOR(int32_t, 2))(0x115A4B60L, 0x493544E7L), 0x493544E7L);
    VECTOR(int32_t, 16) l_803 = (VECTOR(int32_t, 16))((-3L), (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), (-5L)), (-5L)), (-5L), (-3L), (-5L), (VECTOR(int32_t, 2))((-3L), (-5L)), (VECTOR(int32_t, 2))((-3L), (-5L)), (-3L), (-5L), (-3L), (-5L));
    struct S0 *l_806 = &p_1415->g_322;
    struct S0 **l_807 = &p_1415->g_321[0];
    uint64_t *l_808 = &p_1415->g_179;
    int32_t l_814 = 0x705AE015L;
    uint16_t l_815 = 0x0ED9L;
    int i, j;
    for (i = 0; i < 4; i++)
        l_784[i] = (void*)0;
    l_770 &= (~(safe_div_func_uint8_t_u_u((p_1415->g_199.f2 >= p_61), (((VECTOR(uint64_t, 2))(0xBC88796C60680718L, 1UL)).hi ^ (((VECTOR(uint64_t, 2))(min(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(0x9BCC403D9138FC10L, 0x1C19A2BB6A907385L, 0UL, 1UL)))))), 0xBD5C44CA2ED7A8FAL, 0xB4660E203CDB6E5AL, 0xD6610E5908C4A594L, 0x133AD62A5E3D6D55L)).odd)).even, (uint64_t)(l_761 != ((safe_add_func_int16_t_s_s(((((0UL >= (0xB79F848BL != ((safe_sub_func_uint8_t_u_u(((p_1415->g_768 = l_766) != (p_1415->g_769 = &p_1415->g_143)), 0x81L)) , p_61))) != p_61) == l_761) , l_761), p_1415->g_48[5][5])) || 0xC74A75D9L))))).lo > p_61)))));
    (*p_1415->g_789) = ((((safe_div_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 16))(l_775.xyyxyyxxyyxxyyxy)).s8, p_1415->g_617.s6)), (9UL || ((*l_787) = (safe_sub_func_int8_t_s_s(((*p_1415->g_302) && (*p_1415->g_302)), (l_775.x & ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(safe_clamp_func(VECTOR(uint32_t, 8),VECTOR(uint32_t, 8),((VECTOR(uint32_t, 4))(abs_diff(((VECTOR(uint32_t, 8))((safe_sub_func_int16_t_s_s(((*l_785) ^= ((p_1415->g_comm_values[p_1415->tid] > (p_61 >= ((l_770 = ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(l_780.s63)), ((VECTOR(uint8_t, 2))(0x61L, 0x9EL)), 7UL, ((((&p_1415->g_769 != (void*)0) && p_61) && p_61) , (*p_1415->g_302)), 1UL, 0x6AL)).s4) < GROUP_DIVERGE(2, 1)))) < GROUP_DIVERGE(0, 1))), l_786)), 1UL, 0x37C9A6C9L, ((VECTOR(uint32_t, 4))(0xE691D4C5L)), 0x977293F0L)).even, ((VECTOR(uint32_t, 4))(4294967295UL))))).zzwyywxx, ((VECTOR(uint32_t, 8))(0UL)), ((VECTOR(uint32_t, 8))(0xD84FB16AL))))))).s7))))))) >= (*p_1415->g_302)) || 1L) , (*p_1415->g_548));
    ++l_799;
    l_815 &= ((p_61 == (*l_791)) ^ (p_61 | ((*p_1415->g_302) , ((*l_794) = (((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),int32_t,((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 4))(l_802.wxzz)).zxwxwwzwyyxzwzzw, ((VECTOR(int32_t, 8))(l_803.s731d8313)).s7512172713220701))), (int32_t)((((safe_sub_func_uint64_t_u_u((((((*l_808) = (l_806 == ((*l_807) = l_806))) ^ (!((safe_unary_minus_func_uint8_t_u(((safe_add_func_uint16_t_u_u((*l_791), (*l_793))) || ((safe_add_func_uint64_t_u_u((((p_61 == p_61) == (*p_1415->g_302)) != 0UL), p_61)) > p_61)))) , (*l_794)))) <= p_61) | GROUP_DIVERGE(1, 1)), p_61)) || p_1415->g_48[5][5]) ^ l_814) || (*l_793)), (int32_t)p_61))).sf == (*l_791))))));
    return p_61;
}


/* ------------------------------------------ */
/* 
 * reads : p_1415->g_38 p_1415->g_302 p_1415->g_303 p_1415->g_47 p_1415->g_179 p_1415->g_127 p_1415->g_534 p_1415->g_637 p_1415->g_548 p_1415->g_29 p_1415->g_547 p_1415->g_669 p_1415->g_322.f1 p_1415->g_698 p_1415->g_703 p_1415->g_245 p_1415->g_167 p_1415->g_727 p_1415->g_150 p_1415->g_538 p_1415->g_158 p_1415->g_322.f0 p_1415->g_170
 * writes: p_1415->g_38 p_1415->g_167.f2 p_1415->g_540 p_1415->g_303 p_1415->g_143 p_1415->g_167.f1 p_1415->g_322.f2 p_1415->g_245 p_1415->g_322.f1 p_1415->g_727.f2 p_1415->g_322
 */
int16_t  func_68(int64_t * p_69, struct S3 * p_1415)
{ /* block id: 265 */
    int32_t l_613 = 0x4CA48485L;
    int64_t *l_622 = (void*)0;
    int32_t l_623 = 0x45249E66L;
    struct S0 *l_624 = (void*)0;
    uint64_t *l_638 = &p_1415->g_141;
    int8_t *l_639 = (void*)0;
    uint32_t l_641 = 0xE883CB38L;
    VECTOR(uint64_t, 4) l_679 = (VECTOR(uint64_t, 4))(18446744073709551613UL, (VECTOR(uint64_t, 2))(18446744073709551613UL, 0x412556A256AAB21EL), 0x412556A256AAB21EL);
    int8_t l_692 = 0x7AL;
    int8_t **l_696 = (void*)0;
    int16_t l_705 = 1L;
    struct S0 l_706 = {0x2F924975BE41D4B9L,1UL,0xF09458DDL};
    VECTOR(int32_t, 4) l_707 = (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 0x7B66DDA2L), 0x7B66DDA2L);
    VECTOR(int32_t, 4) l_708 = (VECTOR(int32_t, 4))(0x5385E465L, (VECTOR(int32_t, 2))(0x5385E465L, 0x4035D2C3L), 0x4035D2C3L);
    volatile struct S1 *l_712[10] = {&p_1415->g_199,&p_1415->g_199,&p_1415->g_199,&p_1415->g_199,&p_1415->g_199,&p_1415->g_199,&p_1415->g_199,&p_1415->g_199,&p_1415->g_199,&p_1415->g_199};
    int32_t l_724[2][6] = {{0x5AEEAAA6L,0x5AEEAAA6L,0x5AEEAAA6L,0x5AEEAAA6L,0x5AEEAAA6L,0x5AEEAAA6L},{0x5AEEAAA6L,0x5AEEAAA6L,0x5AEEAAA6L,0x5AEEAAA6L,0x5AEEAAA6L,0x5AEEAAA6L}};
    int64_t l_749 = (-1L);
    int32_t **l_756 = &p_1415->g_245;
    struct S0 *l_757 = &p_1415->g_322;
    int i, j;
    for (p_1415->g_38 = (-12); (p_1415->g_38 < 10); p_1415->g_38++)
    { /* block id: 268 */
        int32_t l_616[10] = {0x5B1FF20AL,0x320A72A7L,0x5B1FF20AL,0x5B1FF20AL,0x320A72A7L,0x5B1FF20AL,0x5B1FF20AL,0x320A72A7L,0x5B1FF20AL,0x5B1FF20AL};
        int32_t **l_621 = &p_1415->g_245;
        VECTOR(int32_t, 4) l_660 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x46313948L), 0x46313948L);
        int8_t **l_697 = &l_639;
        int64_t l_704 = (-1L);
        struct S0 **l_729 = (void*)0;
        VECTOR(int64_t, 4) l_746 = (VECTOR(int64_t, 4))(6L, (VECTOR(int64_t, 2))(6L, 1L), 1L);
        int i;
        if ((atomic_inc(&p_1415->g_atomic_input[55 * get_linear_group_id() + 28]) == 4))
        { /* block id: 270 */
            VECTOR(int32_t, 8) l_557 = (VECTOR(int32_t, 8))(0x4335A004L, (VECTOR(int32_t, 4))(0x4335A004L, (VECTOR(int32_t, 2))(0x4335A004L, 0x0E078633L), 0x0E078633L), 0x0E078633L, 0x4335A004L, 0x0E078633L);
            int i;
            if (((VECTOR(int32_t, 4))(l_557.s4561)).y)
            { /* block id: 271 */
                int8_t l_558 = 0x37L;
                l_557.s3 = (l_558 = ((VECTOR(int32_t, 2))((-1L), 0x73D15BA7L)).lo);
                for (l_558 = 0; (l_558 > (-17)); l_558 = safe_sub_func_uint8_t_u_u(l_558, 5))
                { /* block id: 276 */
                    uint32_t l_561[1];
                    uint64_t l_562 = 0x8524636CF44A599BL;
                    uint32_t l_563 = 4294967288UL;
                    uint8_t l_566 = 0x49L;
                    struct S1 l_567[4][6][10] = {{{{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{0x61B688F8L,0x2F13L,0x305293BDL,0x5E9BL,0L,0x38L,0x682AL,0L,{0x04C7B189F8C6990EL,0x94L,0UL},0xD16A7554AB943CBFL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{0xABEDD576L,0xCA08L,0L,65530UL,-6L,1L,0L,8L,{0L,0x51L,1UL},1UL},{4UL,65532UL,0x2A4FA167L,0x3D59L,0L,0x79L,0L,0x7CDD6FB6L,{8L,0x25L,0xA4204EA3L},0x93E9C979A337915BL},{0xC5CB3DE3L,0x43ACL,0x45C4E86CL,65530UL,-1L,0x34L,-1L,0x5B8C00B7L,{0x341057AF5976EA70L,253UL,4294967295UL},0x6BBFF09BCBF3B867L}},{{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{0x61B688F8L,0x2F13L,0x305293BDL,0x5E9BL,0L,0x38L,0x682AL,0L,{0x04C7B189F8C6990EL,0x94L,0UL},0xD16A7554AB943CBFL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{0xABEDD576L,0xCA08L,0L,65530UL,-6L,1L,0L,8L,{0L,0x51L,1UL},1UL},{4UL,65532UL,0x2A4FA167L,0x3D59L,0L,0x79L,0L,0x7CDD6FB6L,{8L,0x25L,0xA4204EA3L},0x93E9C979A337915BL},{0xC5CB3DE3L,0x43ACL,0x45C4E86CL,65530UL,-1L,0x34L,-1L,0x5B8C00B7L,{0x341057AF5976EA70L,253UL,4294967295UL},0x6BBFF09BCBF3B867L}},{{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{0x61B688F8L,0x2F13L,0x305293BDL,0x5E9BL,0L,0x38L,0x682AL,0L,{0x04C7B189F8C6990EL,0x94L,0UL},0xD16A7554AB943CBFL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{0xABEDD576L,0xCA08L,0L,65530UL,-6L,1L,0L,8L,{0L,0x51L,1UL},1UL},{4UL,65532UL,0x2A4FA167L,0x3D59L,0L,0x79L,0L,0x7CDD6FB6L,{8L,0x25L,0xA4204EA3L},0x93E9C979A337915BL},{0xC5CB3DE3L,0x43ACL,0x45C4E86CL,65530UL,-1L,0x34L,-1L,0x5B8C00B7L,{0x341057AF5976EA70L,253UL,4294967295UL},0x6BBFF09BCBF3B867L}},{{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{0x61B688F8L,0x2F13L,0x305293BDL,0x5E9BL,0L,0x38L,0x682AL,0L,{0x04C7B189F8C6990EL,0x94L,0UL},0xD16A7554AB943CBFL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{0xABEDD576L,0xCA08L,0L,65530UL,-6L,1L,0L,8L,{0L,0x51L,1UL},1UL},{4UL,65532UL,0x2A4FA167L,0x3D59L,0L,0x79L,0L,0x7CDD6FB6L,{8L,0x25L,0xA4204EA3L},0x93E9C979A337915BL},{0xC5CB3DE3L,0x43ACL,0x45C4E86CL,65530UL,-1L,0x34L,-1L,0x5B8C00B7L,{0x341057AF5976EA70L,253UL,4294967295UL},0x6BBFF09BCBF3B867L}},{{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{0x61B688F8L,0x2F13L,0x305293BDL,0x5E9BL,0L,0x38L,0x682AL,0L,{0x04C7B189F8C6990EL,0x94L,0UL},0xD16A7554AB943CBFL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{0xABEDD576L,0xCA08L,0L,65530UL,-6L,1L,0L,8L,{0L,0x51L,1UL},1UL},{4UL,65532UL,0x2A4FA167L,0x3D59L,0L,0x79L,0L,0x7CDD6FB6L,{8L,0x25L,0xA4204EA3L},0x93E9C979A337915BL},{0xC5CB3DE3L,0x43ACL,0x45C4E86CL,65530UL,-1L,0x34L,-1L,0x5B8C00B7L,{0x341057AF5976EA70L,253UL,4294967295UL},0x6BBFF09BCBF3B867L}},{{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{0x61B688F8L,0x2F13L,0x305293BDL,0x5E9BL,0L,0x38L,0x682AL,0L,{0x04C7B189F8C6990EL,0x94L,0UL},0xD16A7554AB943CBFL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{0xABEDD576L,0xCA08L,0L,65530UL,-6L,1L,0L,8L,{0L,0x51L,1UL},1UL},{4UL,65532UL,0x2A4FA167L,0x3D59L,0L,0x79L,0L,0x7CDD6FB6L,{8L,0x25L,0xA4204EA3L},0x93E9C979A337915BL},{0xC5CB3DE3L,0x43ACL,0x45C4E86CL,65530UL,-1L,0x34L,-1L,0x5B8C00B7L,{0x341057AF5976EA70L,253UL,4294967295UL},0x6BBFF09BCBF3B867L}}},{{{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{0x61B688F8L,0x2F13L,0x305293BDL,0x5E9BL,0L,0x38L,0x682AL,0L,{0x04C7B189F8C6990EL,0x94L,0UL},0xD16A7554AB943CBFL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{0xABEDD576L,0xCA08L,0L,65530UL,-6L,1L,0L,8L,{0L,0x51L,1UL},1UL},{4UL,65532UL,0x2A4FA167L,0x3D59L,0L,0x79L,0L,0x7CDD6FB6L,{8L,0x25L,0xA4204EA3L},0x93E9C979A337915BL},{0xC5CB3DE3L,0x43ACL,0x45C4E86CL,65530UL,-1L,0x34L,-1L,0x5B8C00B7L,{0x341057AF5976EA70L,253UL,4294967295UL},0x6BBFF09BCBF3B867L}},{{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{0x61B688F8L,0x2F13L,0x305293BDL,0x5E9BL,0L,0x38L,0x682AL,0L,{0x04C7B189F8C6990EL,0x94L,0UL},0xD16A7554AB943CBFL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{0xABEDD576L,0xCA08L,0L,65530UL,-6L,1L,0L,8L,{0L,0x51L,1UL},1UL},{4UL,65532UL,0x2A4FA167L,0x3D59L,0L,0x79L,0L,0x7CDD6FB6L,{8L,0x25L,0xA4204EA3L},0x93E9C979A337915BL},{0xC5CB3DE3L,0x43ACL,0x45C4E86CL,65530UL,-1L,0x34L,-1L,0x5B8C00B7L,{0x341057AF5976EA70L,253UL,4294967295UL},0x6BBFF09BCBF3B867L}},{{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{0x61B688F8L,0x2F13L,0x305293BDL,0x5E9BL,0L,0x38L,0x682AL,0L,{0x04C7B189F8C6990EL,0x94L,0UL},0xD16A7554AB943CBFL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{0xABEDD576L,0xCA08L,0L,65530UL,-6L,1L,0L,8L,{0L,0x51L,1UL},1UL},{4UL,65532UL,0x2A4FA167L,0x3D59L,0L,0x79L,0L,0x7CDD6FB6L,{8L,0x25L,0xA4204EA3L},0x93E9C979A337915BL},{0xC5CB3DE3L,0x43ACL,0x45C4E86CL,65530UL,-1L,0x34L,-1L,0x5B8C00B7L,{0x341057AF5976EA70L,253UL,4294967295UL},0x6BBFF09BCBF3B867L}},{{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{0x61B688F8L,0x2F13L,0x305293BDL,0x5E9BL,0L,0x38L,0x682AL,0L,{0x04C7B189F8C6990EL,0x94L,0UL},0xD16A7554AB943CBFL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{0xABEDD576L,0xCA08L,0L,65530UL,-6L,1L,0L,8L,{0L,0x51L,1UL},1UL},{4UL,65532UL,0x2A4FA167L,0x3D59L,0L,0x79L,0L,0x7CDD6FB6L,{8L,0x25L,0xA4204EA3L},0x93E9C979A337915BL},{0xC5CB3DE3L,0x43ACL,0x45C4E86CL,65530UL,-1L,0x34L,-1L,0x5B8C00B7L,{0x341057AF5976EA70L,253UL,4294967295UL},0x6BBFF09BCBF3B867L}},{{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{0x61B688F8L,0x2F13L,0x305293BDL,0x5E9BL,0L,0x38L,0x682AL,0L,{0x04C7B189F8C6990EL,0x94L,0UL},0xD16A7554AB943CBFL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{0xABEDD576L,0xCA08L,0L,65530UL,-6L,1L,0L,8L,{0L,0x51L,1UL},1UL},{4UL,65532UL,0x2A4FA167L,0x3D59L,0L,0x79L,0L,0x7CDD6FB6L,{8L,0x25L,0xA4204EA3L},0x93E9C979A337915BL},{0xC5CB3DE3L,0x43ACL,0x45C4E86CL,65530UL,-1L,0x34L,-1L,0x5B8C00B7L,{0x341057AF5976EA70L,253UL,4294967295UL},0x6BBFF09BCBF3B867L}},{{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{0x61B688F8L,0x2F13L,0x305293BDL,0x5E9BL,0L,0x38L,0x682AL,0L,{0x04C7B189F8C6990EL,0x94L,0UL},0xD16A7554AB943CBFL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{0xABEDD576L,0xCA08L,0L,65530UL,-6L,1L,0L,8L,{0L,0x51L,1UL},1UL},{4UL,65532UL,0x2A4FA167L,0x3D59L,0L,0x79L,0L,0x7CDD6FB6L,{8L,0x25L,0xA4204EA3L},0x93E9C979A337915BL},{0xC5CB3DE3L,0x43ACL,0x45C4E86CL,65530UL,-1L,0x34L,-1L,0x5B8C00B7L,{0x341057AF5976EA70L,253UL,4294967295UL},0x6BBFF09BCBF3B867L}}},{{{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{0x61B688F8L,0x2F13L,0x305293BDL,0x5E9BL,0L,0x38L,0x682AL,0L,{0x04C7B189F8C6990EL,0x94L,0UL},0xD16A7554AB943CBFL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{0xABEDD576L,0xCA08L,0L,65530UL,-6L,1L,0L,8L,{0L,0x51L,1UL},1UL},{4UL,65532UL,0x2A4FA167L,0x3D59L,0L,0x79L,0L,0x7CDD6FB6L,{8L,0x25L,0xA4204EA3L},0x93E9C979A337915BL},{0xC5CB3DE3L,0x43ACL,0x45C4E86CL,65530UL,-1L,0x34L,-1L,0x5B8C00B7L,{0x341057AF5976EA70L,253UL,4294967295UL},0x6BBFF09BCBF3B867L}},{{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{0x61B688F8L,0x2F13L,0x305293BDL,0x5E9BL,0L,0x38L,0x682AL,0L,{0x04C7B189F8C6990EL,0x94L,0UL},0xD16A7554AB943CBFL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{0xABEDD576L,0xCA08L,0L,65530UL,-6L,1L,0L,8L,{0L,0x51L,1UL},1UL},{4UL,65532UL,0x2A4FA167L,0x3D59L,0L,0x79L,0L,0x7CDD6FB6L,{8L,0x25L,0xA4204EA3L},0x93E9C979A337915BL},{0xC5CB3DE3L,0x43ACL,0x45C4E86CL,65530UL,-1L,0x34L,-1L,0x5B8C00B7L,{0x341057AF5976EA70L,253UL,4294967295UL},0x6BBFF09BCBF3B867L}},{{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{0x61B688F8L,0x2F13L,0x305293BDL,0x5E9BL,0L,0x38L,0x682AL,0L,{0x04C7B189F8C6990EL,0x94L,0UL},0xD16A7554AB943CBFL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{0xABEDD576L,0xCA08L,0L,65530UL,-6L,1L,0L,8L,{0L,0x51L,1UL},1UL},{4UL,65532UL,0x2A4FA167L,0x3D59L,0L,0x79L,0L,0x7CDD6FB6L,{8L,0x25L,0xA4204EA3L},0x93E9C979A337915BL},{0xC5CB3DE3L,0x43ACL,0x45C4E86CL,65530UL,-1L,0x34L,-1L,0x5B8C00B7L,{0x341057AF5976EA70L,253UL,4294967295UL},0x6BBFF09BCBF3B867L}},{{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{0x61B688F8L,0x2F13L,0x305293BDL,0x5E9BL,0L,0x38L,0x682AL,0L,{0x04C7B189F8C6990EL,0x94L,0UL},0xD16A7554AB943CBFL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{0xABEDD576L,0xCA08L,0L,65530UL,-6L,1L,0L,8L,{0L,0x51L,1UL},1UL},{4UL,65532UL,0x2A4FA167L,0x3D59L,0L,0x79L,0L,0x7CDD6FB6L,{8L,0x25L,0xA4204EA3L},0x93E9C979A337915BL},{0xC5CB3DE3L,0x43ACL,0x45C4E86CL,65530UL,-1L,0x34L,-1L,0x5B8C00B7L,{0x341057AF5976EA70L,253UL,4294967295UL},0x6BBFF09BCBF3B867L}},{{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{0x61B688F8L,0x2F13L,0x305293BDL,0x5E9BL,0L,0x38L,0x682AL,0L,{0x04C7B189F8C6990EL,0x94L,0UL},0xD16A7554AB943CBFL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{0xABEDD576L,0xCA08L,0L,65530UL,-6L,1L,0L,8L,{0L,0x51L,1UL},1UL},{4UL,65532UL,0x2A4FA167L,0x3D59L,0L,0x79L,0L,0x7CDD6FB6L,{8L,0x25L,0xA4204EA3L},0x93E9C979A337915BL},{0xC5CB3DE3L,0x43ACL,0x45C4E86CL,65530UL,-1L,0x34L,-1L,0x5B8C00B7L,{0x341057AF5976EA70L,253UL,4294967295UL},0x6BBFF09BCBF3B867L}},{{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{0x61B688F8L,0x2F13L,0x305293BDL,0x5E9BL,0L,0x38L,0x682AL,0L,{0x04C7B189F8C6990EL,0x94L,0UL},0xD16A7554AB943CBFL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{0xABEDD576L,0xCA08L,0L,65530UL,-6L,1L,0L,8L,{0L,0x51L,1UL},1UL},{4UL,65532UL,0x2A4FA167L,0x3D59L,0L,0x79L,0L,0x7CDD6FB6L,{8L,0x25L,0xA4204EA3L},0x93E9C979A337915BL},{0xC5CB3DE3L,0x43ACL,0x45C4E86CL,65530UL,-1L,0x34L,-1L,0x5B8C00B7L,{0x341057AF5976EA70L,253UL,4294967295UL},0x6BBFF09BCBF3B867L}}},{{{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{0x61B688F8L,0x2F13L,0x305293BDL,0x5E9BL,0L,0x38L,0x682AL,0L,{0x04C7B189F8C6990EL,0x94L,0UL},0xD16A7554AB943CBFL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{0xABEDD576L,0xCA08L,0L,65530UL,-6L,1L,0L,8L,{0L,0x51L,1UL},1UL},{4UL,65532UL,0x2A4FA167L,0x3D59L,0L,0x79L,0L,0x7CDD6FB6L,{8L,0x25L,0xA4204EA3L},0x93E9C979A337915BL},{0xC5CB3DE3L,0x43ACL,0x45C4E86CL,65530UL,-1L,0x34L,-1L,0x5B8C00B7L,{0x341057AF5976EA70L,253UL,4294967295UL},0x6BBFF09BCBF3B867L}},{{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{0x61B688F8L,0x2F13L,0x305293BDL,0x5E9BL,0L,0x38L,0x682AL,0L,{0x04C7B189F8C6990EL,0x94L,0UL},0xD16A7554AB943CBFL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{0xABEDD576L,0xCA08L,0L,65530UL,-6L,1L,0L,8L,{0L,0x51L,1UL},1UL},{4UL,65532UL,0x2A4FA167L,0x3D59L,0L,0x79L,0L,0x7CDD6FB6L,{8L,0x25L,0xA4204EA3L},0x93E9C979A337915BL},{0xC5CB3DE3L,0x43ACL,0x45C4E86CL,65530UL,-1L,0x34L,-1L,0x5B8C00B7L,{0x341057AF5976EA70L,253UL,4294967295UL},0x6BBFF09BCBF3B867L}},{{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{0x61B688F8L,0x2F13L,0x305293BDL,0x5E9BL,0L,0x38L,0x682AL,0L,{0x04C7B189F8C6990EL,0x94L,0UL},0xD16A7554AB943CBFL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{0xABEDD576L,0xCA08L,0L,65530UL,-6L,1L,0L,8L,{0L,0x51L,1UL},1UL},{4UL,65532UL,0x2A4FA167L,0x3D59L,0L,0x79L,0L,0x7CDD6FB6L,{8L,0x25L,0xA4204EA3L},0x93E9C979A337915BL},{0xC5CB3DE3L,0x43ACL,0x45C4E86CL,65530UL,-1L,0x34L,-1L,0x5B8C00B7L,{0x341057AF5976EA70L,253UL,4294967295UL},0x6BBFF09BCBF3B867L}},{{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{0x61B688F8L,0x2F13L,0x305293BDL,0x5E9BL,0L,0x38L,0x682AL,0L,{0x04C7B189F8C6990EL,0x94L,0UL},0xD16A7554AB943CBFL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{0xABEDD576L,0xCA08L,0L,65530UL,-6L,1L,0L,8L,{0L,0x51L,1UL},1UL},{4UL,65532UL,0x2A4FA167L,0x3D59L,0L,0x79L,0L,0x7CDD6FB6L,{8L,0x25L,0xA4204EA3L},0x93E9C979A337915BL},{0xC5CB3DE3L,0x43ACL,0x45C4E86CL,65530UL,-1L,0x34L,-1L,0x5B8C00B7L,{0x341057AF5976EA70L,253UL,4294967295UL},0x6BBFF09BCBF3B867L}},{{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{0x61B688F8L,0x2F13L,0x305293BDL,0x5E9BL,0L,0x38L,0x682AL,0L,{0x04C7B189F8C6990EL,0x94L,0UL},0xD16A7554AB943CBFL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{0xABEDD576L,0xCA08L,0L,65530UL,-6L,1L,0L,8L,{0L,0x51L,1UL},1UL},{4UL,65532UL,0x2A4FA167L,0x3D59L,0L,0x79L,0L,0x7CDD6FB6L,{8L,0x25L,0xA4204EA3L},0x93E9C979A337915BL},{0xC5CB3DE3L,0x43ACL,0x45C4E86CL,65530UL,-1L,0x34L,-1L,0x5B8C00B7L,{0x341057AF5976EA70L,253UL,4294967295UL},0x6BBFF09BCBF3B867L}},{{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{0x61B688F8L,0x2F13L,0x305293BDL,0x5E9BL,0L,0x38L,0x682AL,0L,{0x04C7B189F8C6990EL,0x94L,0UL},0xD16A7554AB943CBFL},{1UL,0xE1B5L,0x256A6A39L,0xFF53L,-8L,0x77L,-2L,1L,{0x66E34DC28A6A607EL,0xCAL,4294967291UL},0x4F24665EAC0188C1L},{4UL,0x5F0CL,0L,0xD20DL,0x32FC4E3FL,0x02L,1L,0L,{0x5A95DA510936DA26L,0xE9L,0xA347AA6CL},0x3DC9726C2FCABCECL},{3UL,0xB3B5L,0x55AC5C4CL,8UL,0x52419BF9L,0x4AL,-1L,-9L,{0x27CACF42B27C173AL,255UL,0x8FF7715EL},18446744073709551607UL},{0xABEDD576L,0xCA08L,0L,65530UL,-6L,1L,0L,8L,{0L,0x51L,1UL},1UL},{4UL,65532UL,0x2A4FA167L,0x3D59L,0L,0x79L,0L,0x7CDD6FB6L,{8L,0x25L,0xA4204EA3L},0x93E9C979A337915BL},{0xC5CB3DE3L,0x43ACL,0x45C4E86CL,65530UL,-1L,0x34L,-1L,0x5B8C00B7L,{0x341057AF5976EA70L,253UL,4294967295UL},0x6BBFF09BCBF3B867L}}}};
                    struct S1 l_568 = {0x948643E8L,0x5817L,0L,65535UL,0x78BF27E8L,0x07L,3L,0L,{0x51D199C0F60B4DA6L,1UL,4294967295UL},18446744073709551612UL};/* VOLATILE GLOBAL l_568 */
                    struct S1 l_569 = {0x23B19C2DL,0UL,-8L,0xD065L,0x21D0BCE2L,0x75L,0x3B36L,0x0A4CD4BAL,{0x702E970642DE5508L,1UL,0x8D2F43BDL},0UL};/* VOLATILE GLOBAL l_569 */
                    VECTOR(int32_t, 16) l_570 = (VECTOR(int32_t, 16))(0x5D56BC95L, (VECTOR(int32_t, 4))(0x5D56BC95L, (VECTOR(int32_t, 2))(0x5D56BC95L, 1L), 1L), 1L, 0x5D56BC95L, 1L, (VECTOR(int32_t, 2))(0x5D56BC95L, 1L), (VECTOR(int32_t, 2))(0x5D56BC95L, 1L), 0x5D56BC95L, 1L, 0x5D56BC95L, 1L);
                    int64_t l_571 = (-8L);
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                        l_561[i] = 4294967295UL;
                    l_562 = (l_557.s5 ^= l_561[0]);
                    l_563++;
                    l_569 = (l_566 , (l_567[2][5][6] , l_568));
                    if ((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(0x675B46FFL, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(l_570.s86)))), (-4L))).xxwxyzwzywxxxxwy)))).s0 , l_571))
                    { /* block id: 281 */
                        int16_t l_572[5];
                        int i;
                        for (i = 0; i < 5; i++)
                            l_572[i] = 0x71BAL;
                        l_557.s5 ^= l_572[0];
                    }
                    else
                    { /* block id: 283 */
                        VECTOR(int32_t, 16) l_573 = (VECTOR(int32_t, 16))(0x02D7FC6AL, (VECTOR(int32_t, 4))(0x02D7FC6AL, (VECTOR(int32_t, 2))(0x02D7FC6AL, 0x51EC8431L), 0x51EC8431L), 0x51EC8431L, 0x02D7FC6AL, 0x51EC8431L, (VECTOR(int32_t, 2))(0x02D7FC6AL, 0x51EC8431L), (VECTOR(int32_t, 2))(0x02D7FC6AL, 0x51EC8431L), 0x02D7FC6AL, 0x51EC8431L, 0x02D7FC6AL, 0x51EC8431L);
                        uint32_t l_574 = 4294967295UL;
                        int32_t *l_575 = (void*)0;
                        int32_t *l_576 = (void*)0;
                        VECTOR(int32_t, 2) l_577 = (VECTOR(int32_t, 2))(0x2B74365AL, (-3L));
                        VECTOR(int32_t, 16) l_578 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x72248661L), 0x72248661L), 0x72248661L, (-1L), 0x72248661L, (VECTOR(int32_t, 2))((-1L), 0x72248661L), (VECTOR(int32_t, 2))((-1L), 0x72248661L), (-1L), 0x72248661L, (-1L), 0x72248661L);
                        uint32_t l_579 = 0xE96E8FF6L;
                        VECTOR(int32_t, 8) l_580 = (VECTOR(int32_t, 8))(0x7403F0CEL, (VECTOR(int32_t, 4))(0x7403F0CEL, (VECTOR(int32_t, 2))(0x7403F0CEL, 0x589E6C7AL), 0x589E6C7AL), 0x589E6C7AL, 0x7403F0CEL, 0x589E6C7AL);
                        VECTOR(int32_t, 16) l_581 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x77D324E3L), 0x77D324E3L), 0x77D324E3L, (-1L), 0x77D324E3L, (VECTOR(int32_t, 2))((-1L), 0x77D324E3L), (VECTOR(int32_t, 2))((-1L), 0x77D324E3L), (-1L), 0x77D324E3L, (-1L), 0x77D324E3L);
                        int64_t l_582 = 4L;
                        VECTOR(uint16_t, 16) l_583 = (VECTOR(uint16_t, 16))(0xE1C1L, (VECTOR(uint16_t, 4))(0xE1C1L, (VECTOR(uint16_t, 2))(0xE1C1L, 0x709DL), 0x709DL), 0x709DL, 0xE1C1L, 0x709DL, (VECTOR(uint16_t, 2))(0xE1C1L, 0x709DL), (VECTOR(uint16_t, 2))(0xE1C1L, 0x709DL), 0xE1C1L, 0x709DL, 0xE1C1L, 0x709DL);
                        int32_t l_584[2];
                        int64_t l_585 = 0x19B11C9DC0EFDA91L;
                        uint8_t l_586 = 0x46L;
                        struct S1 l_587 = {0x53605A37L,0x8014L,2L,0UL,0x50807EE2L,0x4DL,0x3D93L,3L,{1L,0xF8L,0UL},0x10387701F0088722L};/* VOLATILE GLOBAL l_587 */
                        uint16_t l_588[3];
                        int8_t l_589[10][1] = {{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)}};
                        int32_t l_590 = 0x6236D8A8L;
                        int16_t l_591 = 0x5FA6L;
                        uint64_t l_592 = 0xE1BB2B2E74564BFBL;
                        int32_t l_593 = (-1L);
                        uint32_t l_594 = 0x45D6BE5CL;
                        uint8_t l_595 = 2UL;
                        uint32_t l_596 = 0UL;
                        int i, j;
                        for (i = 0; i < 2; i++)
                            l_584[i] = 0x4A5BD22EL;
                        for (i = 0; i < 3; i++)
                            l_588[i] = 0x76C2L;
                        l_567[2][5][6].f4 = (FAKE_DIVERGE(p_1415->global_2_offset, get_global_id(2), 10) , (l_557.s7 = ((VECTOR(int32_t, 8))(l_573.sc625640b)).s4));
                        l_576 = (l_574 , l_575);
                        l_569.f4 |= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 16))(l_577.xyyxyyxyxxxyxxxx)).sb30b, ((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(6L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 8))(0x529D34FBL, 0x3EB20698L, 0x4A6F2232L, (l_557.s7 = ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))((-2L), ((VECTOR(int32_t, 4))(l_578.sa277)), 0x276DD6C0L, l_579, ((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(l_580.s67400635)), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_581.sd147)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(7L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 16))(9L, 0x3808E5FFL, 1L, (-2L), (-7L), 0x4C746AD9L, 0x5326F300L, (l_582 , (((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(l_583.s86889eabbba6b2b6)))).s46)).lo , l_584[1])), 0x7F48FBD7L, l_585, (l_567[2][5][6].f4 = 6L), ((VECTOR(int32_t, 4))(l_586, (l_587 , l_588[0]), 0x4DCE579AL, 0x47000237L)), 5L)).sbea6, (int32_t)l_589[7][0]))).odd, ((VECTOR(int32_t, 2))(2L))))), ((VECTOR(int32_t, 2))(2L)), ((VECTOR(int32_t, 2))(0x7910B4BBL))))))))).yyxyxyyyyxyyxyxy, ((VECTOR(int32_t, 16))(0x6F765F8AL)), ((VECTOR(int32_t, 16))(1L))))).sb6)))), l_590, 0x78C39AFDL, ((VECTOR(int32_t, 2))(3L)), 2L)).odd)))).s67, (int32_t)l_591))), l_592, l_593, l_594, l_595, 0x5FBE06B6L, 0L)), ((VECTOR(int32_t, 8))(1L))))), 0x4FEFA3DEL)).hi)).s4), 0L, l_596, (-3L), 0x4D5ED59BL)), ((VECTOR(int32_t, 8))(0x326D13C2L))))).s64)), 0x7443685AL, 0x57B33123L, ((VECTOR(int32_t, 8))(0x482815A1L)), 0x3BAD5178L, 1L, 0x591260C1L)).sba)).yyyx)), ((VECTOR(int32_t, 4))(0x5EEF8C68L)), ((VECTOR(int32_t, 4))(0x30347633L)))))))).xyyxxzxxwxwyxywy)).s5;
                    }
                }
            }
            else
            { /* block id: 292 */
                struct S0 l_597 = {2L,0xEEL,0xE24A1B27L};
                VECTOR(uint32_t, 8) l_598 = (VECTOR(uint32_t, 8))(4294967291UL, (VECTOR(uint32_t, 4))(4294967291UL, (VECTOR(uint32_t, 2))(4294967291UL, 0UL), 0UL), 0UL, 4294967291UL, 0UL);
                int32_t l_600[3][2][9] = {{{0L,(-3L),(-1L),(-3L),0L,0L,(-3L),(-1L),(-3L)},{0L,(-3L),(-1L),(-3L),0L,0L,(-3L),(-1L),(-3L)}},{{0L,(-3L),(-1L),(-3L),0L,0L,(-3L),(-1L),(-3L)},{0L,(-3L),(-1L),(-3L),0L,0L,(-3L),(-1L),(-3L)}},{{0L,(-3L),(-1L),(-3L),0L,0L,(-3L),(-1L),(-3L)},{0L,(-3L),(-1L),(-3L),0L,0L,(-3L),(-1L),(-3L)}}};
                int32_t *l_599 = &l_600[0][0][8];
                int32_t *l_601 = &l_600[0][0][8];
                int32_t l_602 = 3L;
                uint32_t l_603 = 4294967295UL;
                VECTOR(int64_t, 4) l_604 = (VECTOR(int64_t, 4))(0x760CCEB4EB793B39L, (VECTOR(int64_t, 2))(0x760CCEB4EB793B39L, (-8L)), (-8L));
                uint16_t l_605 = 65532UL;
                uint8_t l_606 = 0x69L;
                uint32_t l_607[3];
                VECTOR(uint32_t, 2) l_608 = (VECTOR(uint32_t, 2))(0x85773336L, 4294967288UL);
                struct S1 l_609 = {4UL,65535UL,1L,0x137AL,7L,-1L,0x54CAL,0L,{0L,4UL,4294967287UL},0xF55FBBC42A23CACBL};/* VOLATILE GLOBAL l_609 */
                uint64_t l_610 = 0xDA229CF56C354F2CL;
                int i, j, k;
                for (i = 0; i < 3; i++)
                    l_607[i] = 0x278B6F61L;
                l_601 = (l_597 , (((VECTOR(uint32_t, 4))(l_598.s1306)).z , (l_599 = (void*)0)));
                l_557.s1 |= (((l_603 = l_602) , ((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 2))(l_604.wy)).yxxxyxxxxxyxxxxy, (int64_t)((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(l_605, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))((l_607[0] |= l_606), 1L, 0x4E493A8532D4A08DL, 0L)).hi)), ((VECTOR(int64_t, 4))(l_608.x, 0L, 0x55102EFC250FFD15L, 0x4CE8F8478343F18FL)), 0x3131D1A9CA686E6BL)).lo)).w))).se) , (l_609 , l_610));
            }
            unsigned int result = 0;
            result += l_557.s7;
            result += l_557.s6;
            result += l_557.s5;
            result += l_557.s4;
            result += l_557.s3;
            result += l_557.s2;
            result += l_557.s1;
            result += l_557.s0;
            atomic_add(&p_1415->g_special_values[55 * get_linear_group_id() + 28], result);
        }
        else
        { /* block id: 299 */
            (1 + 1);
        }
        for (p_1415->g_167.f2 = 18; (p_1415->g_167.f2 == 36); p_1415->g_167.f2 = safe_add_func_int8_t_s_s(p_1415->g_167.f2, 2))
        { /* block id: 304 */
            return l_613;
        }
        if ((((((VECTOR(int16_t, 2))(0x7A28L, 0x0239L)).odd , &p_1415->g_322) != ((safe_rshift_func_uint8_t_u_u(((((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(0x5DF2L, 1L)), 5L, 2L, 0x3805L, (p_69 == ((p_1415->g_179 &= l_616[4]) , p_69)), ((VECTOR(int16_t, 2))(0x3BEBL, 0x7E55L)), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(p_1415->g_617.s32)))), l_616[7], ((VECTOR(int16_t, 4))(p_1415->g_618.xxyy)), 0L)).se | ((safe_div_func_uint64_t_u_u(((l_621 != (((l_622 = (void*)0) == (l_613 , p_69)) , &p_1415->g_245)) >= l_623), 1UL)) , 2UL)) < l_616[8]), (*p_1415->g_302))) , l_624)) | 0UL))
        { /* block id: 309 */
            int16_t *l_631 = &p_1415->g_540;
            int32_t l_632 = 0L;
            uint64_t *l_640 = &p_1415->g_167.f2;
            uint16_t *l_650 = &p_1415->g_143;
            VECTOR(int32_t, 8) l_658 = (VECTOR(int32_t, 8))(0x41C89E3EL, (VECTOR(int32_t, 4))(0x41C89E3EL, (VECTOR(int32_t, 2))(0x41C89E3EL, 0x7F4B80F1L), 0x7F4B80F1L), 0x7F4B80F1L, 0x41C89E3EL, 0x7F4B80F1L);
            VECTOR(int32_t, 16) l_659 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-6L)), (-6L)), (-6L), 0L, (-6L), (VECTOR(int32_t, 2))(0L, (-6L)), (VECTOR(int32_t, 2))(0L, (-6L)), 0L, (-6L), 0L, (-6L));
            uint32_t *l_667 = &p_1415->g_167.f1;
            int32_t *l_668[2][4][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
            int i, j, k;
            l_641 = (p_1415->g_47 <= ((safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 2))(255UL, 255UL)).even, ((((((safe_mul_func_uint8_t_u_u((0x76F449EDL < (safe_rshift_func_int16_t_s_s((!((*l_631) = p_1415->g_179)), l_632))), (++(*p_1415->g_302)))) == (+(safe_lshift_func_int16_t_s_s(((VECTOR(int16_t, 4))(l_632, ((VECTOR(int16_t, 2))(p_1415->g_637.sbd)), 0x384DL)).y, 11)))) , l_638) == ((l_639 == p_1415->g_302) , l_640)) , l_616[5]) || 0xDCAC9F12L))) <= p_1415->g_127.s4));
            atomic_xor(&p_1415->l_atomic_reduction[0], (safe_mod_func_uint8_t_u_u(((0x003F666F6977A39AL >= (p_1415->g_534.w & (((safe_mul_func_int8_t_s_s(((safe_mul_func_int8_t_s_s(((l_623 = ((l_613 = (safe_lshift_func_uint16_t_u_u(((*l_650) = p_1415->g_637.sc), (safe_mod_func_uint32_t_u_u(l_632, ((((safe_add_func_int32_t_s_s((safe_mul_func_uint16_t_u_u((safe_unary_minus_func_uint8_t_u((*p_1415->g_302))), l_632)), ((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(l_658.s05)))))).even, 6L, 1L, ((VECTOR(int32_t, 4))(l_659.sda59)), 0x281460B4L)).s7744053063000702, ((VECTOR(int32_t, 4))(l_660.wzyz)).wwwzzxyywywzxyxy))).s2)) < (safe_add_func_uint64_t_u_u(6UL, (safe_sub_func_uint32_t_u_u(((*l_667) = (safe_mod_func_uint8_t_u_u((2UL >= l_641), 0x4FL))), 0x01F7C5E3L))))) || 0L) || (-6L))))))) < l_658.s1)) && (*p_1415->g_548)), (*p_1415->g_302))) <= p_1415->g_547), (*p_1415->g_302))) , (void*)0) == p_1415->g_669))) , 0UL), l_641)) + get_linear_global_id());
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            if (get_linear_local_id() == 0)
                p_1415->v_collective += p_1415->l_atomic_reduction[0];
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            for (p_1415->g_322.f2 = 0; (p_1415->g_322.f2 <= 29); p_1415->g_322.f2 = safe_add_func_uint8_t_u_u(p_1415->g_322.f2, 1))
            { /* block id: 320 */
                int32_t l_674 = (-1L);
                (*l_621) = &l_632;
                return l_674;
            }
        }
        else
        { /* block id: 324 */
            uint8_t *l_680 = (void*)0;
            uint8_t *l_681 = &p_1415->g_322.f1;
            VECTOR(uint32_t, 4) l_686 = (VECTOR(uint32_t, 4))(0xA6BCED68L, (VECTOR(uint32_t, 2))(0xA6BCED68L, 0x80527AA6L), 0x80527AA6L);
            int8_t *l_691 = (void*)0;
            int8_t ***l_693 = (void*)0;
            int8_t **l_695 = &l_691;
            int8_t ***l_694[9] = {&l_695,&l_695,&l_695,&l_695,&l_695,&l_695,&l_695,&l_695,&l_695};
            int32_t l_699 = 0x5874ECD4L;
            struct S0 l_702 = {1L,0x62L,4294967295UL};
            int32_t *l_709[8][9] = {{&l_623,&l_699,(void*)0,(void*)0,(void*)0,&l_699,&l_623,(void*)0,&p_1415->g_29},{&l_623,&l_699,(void*)0,(void*)0,(void*)0,&l_699,&l_623,(void*)0,&p_1415->g_29},{&l_623,&l_699,(void*)0,(void*)0,(void*)0,&l_699,&l_623,(void*)0,&p_1415->g_29},{&l_623,&l_699,(void*)0,(void*)0,(void*)0,&l_699,&l_623,(void*)0,&p_1415->g_29},{&l_623,&l_699,(void*)0,(void*)0,(void*)0,&l_699,&l_623,(void*)0,&p_1415->g_29},{&l_623,&l_699,(void*)0,(void*)0,(void*)0,&l_699,&l_623,(void*)0,&p_1415->g_29},{&l_623,&l_699,(void*)0,(void*)0,(void*)0,&l_699,&l_623,(void*)0,&p_1415->g_29},{&l_623,&l_699,(void*)0,(void*)0,(void*)0,&l_699,&l_623,(void*)0,&p_1415->g_29}};
            struct S0 **l_728 = &p_1415->g_321[1];
            int i, j;
            if (((safe_lshift_func_uint16_t_u_s(((l_623 <= l_613) && (safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(l_679.wzxwxyxwzxwxxyyz)).s8, (((4L || ((((((*p_1415->g_302) = GROUP_DIVERGE(1, 1)) <= ((*l_681)--)) && (*p_1415->g_548)) >= (safe_mod_func_uint64_t_u_u(((&p_1415->g_29 == (((VECTOR(uint32_t, 8))(l_686.zyyyxyyw)).s2 , &p_1415->g_29)) , (safe_add_func_int32_t_s_s(((l_692 ^= ((void*)0 != &p_1415->g_48[5][5])) >= (l_699 = ((l_697 = (l_696 = &l_691)) != p_1415->g_698))), l_613))), l_613))) <= l_660.y)) ^ 1UL) >= 0x4CL)))), 7)) < 0x370CCCB6B3D1CCDFL))
            { /* block id: 331 */
                (*l_621) = &l_623;
                for (l_623 = (-30); (l_623 >= 9); l_623 = safe_add_func_int16_t_s_s(l_623, 3))
                { /* block id: 335 */
                    l_705 ^= (0x05018D3D48033F3AL < (l_702 , (p_1415->g_703 , (l_702.f2 , (l_704 = l_679.w)))));
                    if (l_686.y)
                        break;
                    if ((*p_1415->g_245))
                        break;
                }
            }
            else
            { /* block id: 341 */
                if (l_705)
                    break;
            }
            l_616[4] = (p_1415->g_167 , ((VECTOR(int32_t, 16))(((l_706 , p_1415->g_199.f3) | l_702.f0), (-9L), 0x299919FDL, ((VECTOR(int32_t, 8))(l_707.wxyyyzzx)), 0x64280ED5L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(l_708.wwwz)).lo)), (-4L), 0x782EB640L)).s2);
            for (l_706.f2 = (-20); (l_706.f2 > 10); ++l_706.f2)
            { /* block id: 347 */
                uint64_t l_738 = 0x891541BF4E0A6121L;
                uint32_t *l_739 = &p_1415->g_727.f2;
                uint16_t l_740 = 0x3F73L;
                int32_t l_741 = 0x20EDD91FL;
                l_712[2] = &p_1415->g_199;
                l_741 = ((safe_mod_func_int64_t_s_s((((((((safe_rshift_func_uint16_t_u_u((safe_div_func_uint64_t_u_u((safe_unary_minus_func_uint64_t_u((safe_mul_func_int8_t_s_s((((0x4403FF83L > (safe_mod_func_uint16_t_u_u((((l_724[1][4] < (safe_mul_func_uint16_t_u_u((((((p_1415->g_727 , l_728) == l_729) , ((*l_739) ^= (p_1415->g_150.se ^ (safe_mul_func_uint8_t_u_u(((*l_681) = (((!(p_1415->g_538.sb & (0x3AL || ((safe_sub_func_uint64_t_u_u(((((safe_lshift_func_uint8_t_u_s(((*p_1415->g_302) &= ((l_708.w |= (safe_mod_func_int64_t_s_s(l_613, l_623))) & 0xF4L)), 1)) >= 1UL) & l_692) | FAKE_DIVERGE(p_1415->group_0_offset, get_group_id(0), 10)), p_1415->g_158.y)) || 18446744073709551615UL)))) , l_738) > 0x6BDAL)), l_705))))) , l_660.x) ^ l_616[7]), 0xE0E6L))) || 0x4A83748FDF973714L) < p_1415->g_29), GROUP_DIVERGE(2, 1)))) , 0x4606L) , l_738), 1L)))), l_724[1][4])), p_1415->g_322.f0)) < p_1415->g_322.f0) >= l_692) > l_738) , 0x595B7CC969E8BFB6L) , l_740) || (*p_1415->g_302)), 0x429D0B4BD5E1C711L)) <= 1L);
                if (l_641)
                    continue;
            }
            l_660.x |= (safe_add_func_int32_t_s_s(((safe_div_func_uint32_t_u_u(0xCE7CCA14L, (*p_1415->g_548))) || ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(rotate(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(clz(((VECTOR(int64_t, 16))(l_746.zwxyywyzzywyyyww)).hi))).even)).hi, ((VECTOR(int64_t, 4))(sub_sat(((VECTOR(int64_t, 4))(l_679.w, (((((safe_mod_func_uint64_t_u_u((p_1415->g_179 &= (l_749 > (((VECTOR(int16_t, 4))(p_1415->g_750.yxxy)).y | ((VECTOR(uint16_t, 4))(p_1415->g_751.xwww)).w))), (safe_mul_func_uint16_t_u_u(0xB397L, (safe_mul_func_int8_t_s_s((((void*)0 == &p_1415->g_145) == p_1415->g_170.s1), (((l_756 != &p_1415->g_245) , p_1415->g_170.s1) == p_1415->g_637.s2))))))) || p_1415->g_637.sf) <= GROUP_DIVERGE(1, 1)) , p_1415->g_170.s5) ^ (-1L)), 1L, (-3L))), ((VECTOR(int64_t, 4))(0x41D4B85EA9EFFD70L))))).lo))))).hi), 0L));
        }
    }
    (*l_757) = l_706;
    return p_1415->g_170.s2;
}


/* ------------------------------------------ */
/* 
 * reads : p_1415->g_302 p_1415->g_199.f8 p_1415->g_321 p_1415->g_322.f2 p_1415->g_29 p_1415->g_245 p_1415->g_351 p_1415->g_534 p_1415->g_538 p_1415->g_303 p_1415->g_150 p_1415->g_211 p_1415->g_48 p_1415->g_548
 * writes: p_1415->g_322.f2 p_1415->g_245 p_1415->g_29 p_1415->g_540 p_1415->g_547
 */
int64_t * func_70(int64_t * p_71, uint32_t  p_72, struct S3 * p_1415)
{ /* block id: 97 */
    uint16_t l_304 = 1UL;
    int8_t *l_305 = (void*)0;
    int8_t *l_306 = (void*)0;
    int8_t *l_307 = (void*)0;
    int8_t *l_308[10][8][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
    int32_t l_309[6] = {(-3L),(-6L),(-3L),(-3L),(-6L),(-3L)};
    int32_t l_314 = 1L;
    int32_t l_315 = (-10L);
    uint64_t ***l_316 = (void*)0;
    struct S0 *l_324[6] = {&p_1415->g_322,(void*)0,&p_1415->g_322,&p_1415->g_322,(void*)0,&p_1415->g_322};
    struct S0 *l_325 = (void*)0;
    VECTOR(int32_t, 16) l_328 = (VECTOR(int32_t, 16))(8L, (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, 0x51384B3AL), 0x51384B3AL), 0x51384B3AL, 8L, 0x51384B3AL, (VECTOR(int32_t, 2))(8L, 0x51384B3AL), (VECTOR(int32_t, 2))(8L, 0x51384B3AL), 8L, 0x51384B3AL, 8L, 0x51384B3AL);
    uint32_t l_406 = 6UL;
    VECTOR(uint16_t, 16) l_535 = (VECTOR(uint16_t, 16))(0x1921L, (VECTOR(uint16_t, 4))(0x1921L, (VECTOR(uint16_t, 2))(0x1921L, 0x91C5L), 0x91C5L), 0x91C5L, 0x1921L, 0x91C5L, (VECTOR(uint16_t, 2))(0x1921L, 0x91C5L), (VECTOR(uint16_t, 2))(0x1921L, 0x91C5L), 0x1921L, 0x91C5L, 0x1921L, 0x91C5L);
    int32_t *l_549 = &l_315;
    int32_t *l_550 = (void*)0;
    int32_t *l_551[4][10][4] = {{{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]}},{{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]}},{{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]}},{{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]},{&l_315,&l_315,&l_314,&l_309[3]}}};
    uint64_t l_552 = 0xE8CEE7667F308B9FL;
    int i, j, k;
    if ((safe_add_func_int16_t_s_s(((p_1415->g_302 == (void*)0) & ((l_309[3] |= l_304) > (l_304 != ((safe_sub_func_int8_t_s_s((l_314 = 1L), (p_72 <= 0L))) >= l_315)))), (((&p_1415->g_154 != l_316) == 0x4AL) & p_72))))
    { /* block id: 100 */
        struct S0 **l_323[5] = {&p_1415->g_321[0],&p_1415->g_321[0],&p_1415->g_321[0],&p_1415->g_321[0],&p_1415->g_321[0]};
        VECTOR(uint32_t, 2) l_329 = (VECTOR(uint32_t, 2))(0xA68F6FE3L, 0UL);
        uint64_t ****l_332 = &l_316;
        int32_t l_333 = 0L;
        int32_t l_405 = 0x62CDC6D3L;
        int i;
        l_333 = (safe_div_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(((((p_72 , &p_1415->g_303) == (void*)0) >= ((p_1415->g_199.f8 , (l_324[3] = p_1415->g_321[0])) != l_325)) && ((safe_lshift_func_int8_t_s_s(p_72, 2)) ^ ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(upsample(((VECTOR(int32_t, 4))(l_328.s84cd)).lo, ((VECTOR(uint32_t, 8))(l_329.yyxxyxxy)).s07))).xxyx)).x)), (p_72 & ((safe_mod_func_int64_t_s_s((&l_316 == l_332), l_329.x)) | GROUP_DIVERGE(0, 1))))), p_72));
        for (l_333 = 0; (l_333 != (-20)); --l_333)
        { /* block id: 105 */
            for (p_1415->g_322.f2 = (-3); (p_1415->g_322.f2 >= 55); p_1415->g_322.f2++)
            { /* block id: 108 */
                int32_t **l_338 = &p_1415->g_245;
                (*l_338) = &p_1415->g_29;
            }
            for (l_304 = 0; (l_304 >= 50); l_304 = safe_add_func_uint8_t_u_u(l_304, 9))
            { /* block id: 113 */
                int8_t l_341 = 0x6CL;
                int32_t *l_388 = (void*)0;
                int32_t *l_389 = &l_309[3];
                int32_t *l_390 = &l_314;
                int32_t *l_391 = &l_314;
                int32_t *l_392 = &l_314;
                int32_t *l_393 = (void*)0;
                int32_t *l_394 = (void*)0;
                int32_t *l_395 = &p_1415->g_29;
                int32_t *l_396 = &p_1415->g_29;
                int32_t *l_397 = &l_309[3];
                int32_t *l_398 = &l_309[0];
                int32_t *l_399 = (void*)0;
                int32_t *l_400 = &l_309[1];
                int32_t *l_401 = (void*)0;
                int32_t *l_402 = &l_309[3];
                int32_t *l_403 = &l_315;
                int32_t *l_404[6];
                int i;
                for (i = 0; i < 6; i++)
                    l_404[i] = &l_309[3];
                if (l_341)
                    break;
                for (p_1415->g_29 = (-3); (p_1415->g_29 > 8); ++p_1415->g_29)
                { /* block id: 117 */
                    int32_t **l_349 = (void*)0;
                    if ((*p_1415->g_245))
                        break;
                    if ((atomic_inc(&p_1415->l_atomic_input[46]) == 7))
                    { /* block id: 120 */
                        VECTOR(uint32_t, 16) l_344 = (VECTOR(uint32_t, 16))(4294967289UL, (VECTOR(uint32_t, 4))(4294967289UL, (VECTOR(uint32_t, 2))(4294967289UL, 0x239EF29DL), 0x239EF29DL), 0x239EF29DL, 4294967289UL, 0x239EF29DL, (VECTOR(uint32_t, 2))(4294967289UL, 0x239EF29DL), (VECTOR(uint32_t, 2))(4294967289UL, 0x239EF29DL), 4294967289UL, 0x239EF29DL, 4294967289UL, 0x239EF29DL);
                        VECTOR(int32_t, 2) l_346 = (VECTOR(int32_t, 2))(1L, 0x7564C0EFL);
                        int32_t *l_345[4][8][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
                        int32_t *l_347 = (void*)0;
                        int i, j, k;
                        l_347 = (l_345[0][7][0] = (l_344.s0 , (void*)0));
                        unsigned int result = 0;
                        result += l_344.sf;
                        result += l_344.se;
                        result += l_344.sd;
                        result += l_344.sc;
                        result += l_344.sb;
                        result += l_344.sa;
                        result += l_344.s9;
                        result += l_344.s8;
                        result += l_344.s7;
                        result += l_344.s6;
                        result += l_344.s5;
                        result += l_344.s4;
                        result += l_344.s3;
                        result += l_344.s2;
                        result += l_344.s1;
                        result += l_344.s0;
                        result += l_346.y;
                        result += l_346.x;
                        atomic_add(&p_1415->l_special_values[46], result);
                    }
                    else
                    { /* block id: 123 */
                        (1 + 1);
                    }
                    (*p_1415->g_351) = &p_1415->g_29;
                }
                if ((atomic_inc(&p_1415->l_atomic_input[44]) == 0))
                { /* block id: 129 */
                    uint8_t l_352 = 1UL;
                    VECTOR(int32_t, 4) l_353 = (VECTOR(int32_t, 4))(0x005F595BL, (VECTOR(int32_t, 2))(0x005F595BL, 0x1CB7FDE7L), 0x1CB7FDE7L);
                    uint32_t l_354 = 0xA7735C13L;
                    VECTOR(int16_t, 4) l_355 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x432DL), 0x432DL);
                    VECTOR(int16_t, 2) l_356 = (VECTOR(int16_t, 2))(0x7880L, 0x70F8L);
                    VECTOR(int16_t, 2) l_357 = (VECTOR(int16_t, 2))(0x07C6L, 0x3B0AL);
                    uint32_t l_358[6];
                    int8_t l_359 = 3L;
                    uint16_t l_360 = 0UL;
                    int8_t l_361 = 0x0AL;
                    VECTOR(int16_t, 16) l_362 = (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x5DEFL), 0x5DEFL), 0x5DEFL, 1L, 0x5DEFL, (VECTOR(int16_t, 2))(1L, 0x5DEFL), (VECTOR(int16_t, 2))(1L, 0x5DEFL), 1L, 0x5DEFL, 1L, 0x5DEFL);
                    uint8_t l_363 = 9UL;
                    uint32_t l_364 = 0xC9D5C334L;
                    VECTOR(uint16_t, 16) l_365 = (VECTOR(uint16_t, 16))(5UL, (VECTOR(uint16_t, 4))(5UL, (VECTOR(uint16_t, 2))(5UL, 65527UL), 65527UL), 65527UL, 5UL, 65527UL, (VECTOR(uint16_t, 2))(5UL, 65527UL), (VECTOR(uint16_t, 2))(5UL, 65527UL), 5UL, 65527UL, 5UL, 65527UL);
                    VECTOR(int32_t, 2) l_366 = (VECTOR(int32_t, 2))((-4L), 3L);
                    VECTOR(int32_t, 2) l_367 = (VECTOR(int32_t, 2))(1L, (-1L));
                    VECTOR(int16_t, 2) l_368 = (VECTOR(int16_t, 2))(5L, 1L);
                    uint16_t l_369 = 1UL;
                    int i;
                    for (i = 0; i < 6; i++)
                        l_358[i] = 0x1FE323B6L;
                    if ((l_352 , (l_369 = ((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 4))(l_353.zxyz)), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(1L, ((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(0x099BL, ((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 4))(l_354, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(l_355.wzzyzxyxwwzzzwyz)).sbc)), 1L)).hi, ((VECTOR(int16_t, 16))(rhadd(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(l_356.yxxx)).ywyzzwyzwwxzzzyx)), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(clz(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(l_357.xyyx)).lo)).yxyyyxyy))))).s0137632177337377)).s71)).xyxyxxxxyyyxyyyx))).s6b))), (((l_360 = (l_359 = l_358[2])) , l_361) , 0L), (l_364 = ((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 4))(l_362.s4633)).lo, (int16_t)l_363))).even), 0x5B7DL, 0x7538L, (-1L))))).s41)).yxyx, ((VECTOR(uint16_t, 16))(l_365.s1055d7a2844a8d60)).sda0d))), ((VECTOR(int32_t, 4))(l_366.yxyy)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(max(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(l_367.yxxxyxxxyxyxxyyx)).sdacd)).xxywyzzz, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0x3B281D13L, 0x1722E9D4L)).xyxyxxxx)).s04, ((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(l_368.yx)).xxxxyxxx)).odd, ((VECTOR(uint16_t, 2))(0x1705L, 3UL)).xyyy))).even))), (-7L), 3L)).zwwzzyww))).lo)).wzxwxyzzywywwwzw, ((VECTOR(int32_t, 2))(0x3A1EA0FCL, 0x5C72003CL)).xyxxxxyyyxyxxxxy))).s2d)).xxxx)), 0L, (-8L), 4L)))).s6068))).x)))
                    { /* block id: 134 */
                        int32_t l_371 = (-9L);
                        int32_t *l_370 = &l_371;
                        l_370 = (void*)0;
                    }
                    else
                    { /* block id: 136 */
                        uint64_t l_372 = 0UL;
                        uint64_t l_373 = 0xF1A8293C6370D1AFL;
                        uint32_t l_374 = 0xE416F84EL;
                        uint32_t l_375 = 0UL;
                        VECTOR(int64_t, 4) l_376 = (VECTOR(int64_t, 4))(0x06DC3EA2C5E25AF0L, (VECTOR(int64_t, 2))(0x06DC3EA2C5E25AF0L, 0L), 0L);
                        VECTOR(int64_t, 16) l_377 = (VECTOR(int64_t, 16))(0x43D27F1428284761L, (VECTOR(int64_t, 4))(0x43D27F1428284761L, (VECTOR(int64_t, 2))(0x43D27F1428284761L, 0x00230BBEDCA04988L), 0x00230BBEDCA04988L), 0x00230BBEDCA04988L, 0x43D27F1428284761L, 0x00230BBEDCA04988L, (VECTOR(int64_t, 2))(0x43D27F1428284761L, 0x00230BBEDCA04988L), (VECTOR(int64_t, 2))(0x43D27F1428284761L, 0x00230BBEDCA04988L), 0x43D27F1428284761L, 0x00230BBEDCA04988L, 0x43D27F1428284761L, 0x00230BBEDCA04988L);
                        VECTOR(int64_t, 4) l_378 = (VECTOR(int64_t, 4))(0x64F5F4F6064BC9DDL, (VECTOR(int64_t, 2))(0x64F5F4F6064BC9DDL, 1L), 1L);
                        VECTOR(int64_t, 4) l_379 = (VECTOR(int64_t, 4))(0x5EB326A87FDBA571L, (VECTOR(int64_t, 2))(0x5EB326A87FDBA571L, 0x16E1E992D7C48335L), 0x16E1E992D7C48335L);
                        uint32_t l_380 = 0xF2782616L;
                        VECTOR(int64_t, 2) l_381 = (VECTOR(int64_t, 2))(9L, 0x14E295ED87387957L);
                        uint32_t l_382 = 0xA4CB2ACAL;
                        int32_t l_383 = 0x00E88FADL;
                        VECTOR(uint64_t, 16) l_384 = (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL, (VECTOR(uint64_t, 2))(1UL, 0UL), (VECTOR(uint64_t, 2))(1UL, 0UL), 1UL, 0UL, 1UL, 0UL);
                        int32_t l_385 = 1L;
                        int64_t l_386 = (-6L);
                        struct S1 l_387 = {0xFFE96373L,65526UL,0x518AA6FBL,0xC7FCL,0x74930D50L,0x7AL,0x4354L,0L,{0x4F5295B9C1AB2321L,0xE1L,5UL},0x76A35EF47BC0F4C3L};/* VOLATILE GLOBAL l_387 */
                        int i;
                        l_366.x = l_372;
                        l_374 ^= l_373;
                        l_367.y = 0x37065886L;
                        l_387 = ((l_375 , (((VECTOR(int64_t, 8))(max(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(l_376.zwwz)), ((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 16))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 16),((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(l_377.s2b63dda6)), ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),VECTOR(int64_t, 2),((VECTOR(int64_t, 2))(l_378.zx)), ((VECTOR(int64_t, 16))(safe_clamp_func(VECTOR(int64_t, 16),int64_t,((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(0x1419BFA10C0AF77EL, ((VECTOR(int64_t, 4))(safe_clamp_func(VECTOR(int64_t, 4),int64_t,((VECTOR(int64_t, 16))(l_379.ywzywzyzzzyyyxyz)).safc8, (int64_t)l_380, (int64_t)(-8L)))), 0x321A14BD106D1ECFL, 0x0A72F707281002B0L, (-2L), ((VECTOR(int64_t, 8))(1L, ((VECTOR(int64_t, 2))(l_381.xx)), ((VECTOR(int64_t, 2))((-1L), 8L)), 0x5EF26BBBE7A0DD96L, 0x213FBFF314164311L, 0L)))).even)).s3707324177151005, (int64_t)((l_382 , 1UL) , (l_385 &= (l_383 , l_384.s9))), (int64_t)1L))).s2b, ((VECTOR(int64_t, 2))((-2L)))))).xyyyyxyyxxyxyxyy)).odd)))).s0970)).xwzzxxywxxwywzxw, ((VECTOR(int64_t, 16))(0x72EA180193144132L)), ((VECTOR(int64_t, 16))(0x0E547E5A8AB9211BL))))).sb2, ((VECTOR(int64_t, 2))(0x7B8B4C02CD9F8575L))))), 9L, 0x44E030BDD4939C1EL)).s36)), 1L, 3L)).xxyxxyxy, (int64_t)(-9L)))).s6 , l_386)) , l_387);
                    }
                    unsigned int result = 0;
                    result += l_352;
                    result += l_353.w;
                    result += l_353.z;
                    result += l_353.y;
                    result += l_353.x;
                    result += l_354;
                    result += l_355.w;
                    result += l_355.z;
                    result += l_355.y;
                    result += l_355.x;
                    result += l_356.y;
                    result += l_356.x;
                    result += l_357.y;
                    result += l_357.x;
                    int l_358_i0;
                    for (l_358_i0 = 0; l_358_i0 < 6; l_358_i0++) {
                        result += l_358[l_358_i0];
                    }
                    result += l_359;
                    result += l_360;
                    result += l_361;
                    result += l_362.sf;
                    result += l_362.se;
                    result += l_362.sd;
                    result += l_362.sc;
                    result += l_362.sb;
                    result += l_362.sa;
                    result += l_362.s9;
                    result += l_362.s8;
                    result += l_362.s7;
                    result += l_362.s6;
                    result += l_362.s5;
                    result += l_362.s4;
                    result += l_362.s3;
                    result += l_362.s2;
                    result += l_362.s1;
                    result += l_362.s0;
                    result += l_363;
                    result += l_364;
                    result += l_365.sf;
                    result += l_365.se;
                    result += l_365.sd;
                    result += l_365.sc;
                    result += l_365.sb;
                    result += l_365.sa;
                    result += l_365.s9;
                    result += l_365.s8;
                    result += l_365.s7;
                    result += l_365.s6;
                    result += l_365.s5;
                    result += l_365.s4;
                    result += l_365.s3;
                    result += l_365.s2;
                    result += l_365.s1;
                    result += l_365.s0;
                    result += l_366.y;
                    result += l_366.x;
                    result += l_367.y;
                    result += l_367.x;
                    result += l_368.y;
                    result += l_368.x;
                    result += l_369;
                    atomic_add(&p_1415->l_special_values[44], result);
                }
                else
                { /* block id: 143 */
                    (1 + 1);
                }
                ++l_406;
            }
            if ((atomic_inc(&p_1415->g_atomic_input[55 * get_linear_group_id() + 18]) == 1))
            { /* block id: 149 */
                int32_t l_409 = 0x3BBDEEA9L;
                int8_t l_443 = (-1L);
                int8_t l_471 = 1L;
                for (l_409 = (-14); (l_409 <= 10); l_409 = safe_add_func_int8_t_s_s(l_409, 5))
                { /* block id: 152 */
                    int32_t l_412 = 0x64FDE537L;
                    uint8_t l_413 = 255UL;
                    int32_t l_414 = (-1L);
                    uint32_t l_415 = 0xD4A6B513L;
                    VECTOR(int32_t, 8) l_416 = (VECTOR(int32_t, 8))(0x41EA757EL, (VECTOR(int32_t, 4))(0x41EA757EL, (VECTOR(int32_t, 2))(0x41EA757EL, (-3L)), (-3L)), (-3L), 0x41EA757EL, (-3L));
                    int8_t l_417 = 0x3CL;
                    int8_t l_418 = 8L;
                    int i;
                    l_413 = l_412;
                    if ((l_418 = (l_414 , (l_415 , (l_417 = ((VECTOR(int32_t, 4))(l_416.s7165)).z)))))
                    { /* block id: 156 */
                        int16_t l_419 = (-2L);
                        l_416.s6 = l_419;
                    }
                    else
                    { /* block id: 158 */
                        int32_t l_421 = (-1L);
                        int32_t *l_420[9] = {&l_421,&l_421,&l_421,&l_421,&l_421,&l_421,&l_421,&l_421,&l_421};
                        int32_t l_422[7][4];
                        int16_t l_423[5];
                        int64_t l_424[6] = {6L,6L,6L,6L,6L,6L};
                        VECTOR(uint32_t, 2) l_425 = (VECTOR(uint32_t, 2))(0xAC7C2A93L, 0xAFF37A7CL);
                        uint32_t l_426 = 0x3C7656BBL;
                        struct S0 l_427 = {-4L,1UL,5UL};
                        struct S0 l_428 = {0x7D343D978722913AL,0x6BL,0x6A1D3BACL};
                        int i, j;
                        for (i = 0; i < 7; i++)
                        {
                            for (j = 0; j < 4; j++)
                                l_422[i][j] = 0x5D45C5D2L;
                        }
                        for (i = 0; i < 5; i++)
                            l_423[i] = 0x5954L;
                        l_420[8] = (void*)0;
                        l_416.s1 &= (-1L);
                        l_424[3] = (l_423[2] = (l_416.s6 = l_422[5][3]));
                        l_428 = (((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(l_425.yx)), 4294967295UL, 0x481C8215L)).yyzzzwww)).s0 , (l_426 , l_427));
                    }
                }
                for (l_409 = 6; (l_409 != (-24)); --l_409)
                { /* block id: 169 */
                    int32_t l_431 = 1L;
                    VECTOR(uint64_t, 4) l_441 = (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 18446744073709551615UL), 18446744073709551615UL);
                    uint64_t *l_440 = (void*)0;
                    uint64_t **l_439 = &l_440;
                    uint64_t **l_442 = (void*)0;
                    int i;
                    for (l_431 = 0; (l_431 >= (-20)); l_431 = safe_sub_func_int8_t_s_s(l_431, 2))
                    { /* block id: 172 */
                        uint64_t l_434 = 18446744073709551615UL;
                        int32_t l_435 = 0x7CE1620AL;
                        uint16_t l_436 = 0xAF2EL;
                        uint64_t l_437 = 18446744073709551615UL;
                        uint32_t l_438 = 0x106C5341L;
                        l_434 &= 0x2CF6A21EL;
                        l_436 = l_435;
                        l_438 = l_437;
                    }
                    l_442 = l_439;
                }
                if (l_443)
                { /* block id: 179 */
                    VECTOR(int64_t, 8) l_444 = (VECTOR(int64_t, 8))((-10L), (VECTOR(int64_t, 4))((-10L), (VECTOR(int64_t, 2))((-10L), 2L), 2L), 2L, (-10L), 2L);
                    uint16_t l_452 = 0UL;
                    int8_t l_468 = (-1L);
                    int i;
                    if ((((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(l_444.s60)), 1L, (-9L))).z , 0x26AD30FCL))
                    { /* block id: 180 */
                        uint8_t l_445 = 252UL;
                        VECTOR(int32_t, 16) l_446 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0L), 0L), 0L, 0L, 0L, (VECTOR(int32_t, 2))(0L, 0L), (VECTOR(int32_t, 2))(0L, 0L), 0L, 0L, 0L, 0L);
                        VECTOR(int32_t, 2) l_447 = (VECTOR(int32_t, 2))(0L, 0x6E5A397BL);
                        int32_t l_448 = 0x40D58F68L;
                        VECTOR(int32_t, 2) l_449 = (VECTOR(int32_t, 2))(0x11446D9EL, 0x6E1C4D0BL);
                        VECTOR(int32_t, 4) l_450 = (VECTOR(int32_t, 4))(0x4E2B55BBL, (VECTOR(int32_t, 2))(0x4E2B55BBL, 0x7FA32881L), 0x7FA32881L);
                        int i;
                        l_409 = ((VECTOR(int32_t, 16))(l_445, ((VECTOR(int32_t, 2))(l_446.s70)), ((VECTOR(int32_t, 4))(l_447.yxyx)), 0x2DC2E902L, (l_447.x ^= l_448), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(l_449.yyyyyyyx)).s0736327125202317)).sbf)), ((VECTOR(int32_t, 4))(l_450.zyzx)), 9L)).s1;
                    }
                    else
                    { /* block id: 183 */
                        uint8_t l_451[1];
                        int i;
                        for (i = 0; i < 1; i++)
                            l_451[i] = 0UL;
                        l_409 = l_451[0];
                    }
                    if (l_452)
                    { /* block id: 186 */
                        int32_t l_454 = 1L;
                        int32_t *l_453 = &l_454;
                        int32_t *l_455 = &l_454;
                        int32_t *l_456[8][10] = {{&l_454,&l_454,&l_454,&l_454,&l_454,&l_454,&l_454,&l_454,&l_454,(void*)0},{&l_454,&l_454,&l_454,&l_454,&l_454,&l_454,&l_454,&l_454,&l_454,(void*)0},{&l_454,&l_454,&l_454,&l_454,&l_454,&l_454,&l_454,&l_454,&l_454,(void*)0},{&l_454,&l_454,&l_454,&l_454,&l_454,&l_454,&l_454,&l_454,&l_454,(void*)0},{&l_454,&l_454,&l_454,&l_454,&l_454,&l_454,&l_454,&l_454,&l_454,(void*)0},{&l_454,&l_454,&l_454,&l_454,&l_454,&l_454,&l_454,&l_454,&l_454,(void*)0},{&l_454,&l_454,&l_454,&l_454,&l_454,&l_454,&l_454,&l_454,&l_454,(void*)0},{&l_454,&l_454,&l_454,&l_454,&l_454,&l_454,&l_454,&l_454,&l_454,(void*)0}};
                        int32_t *l_457 = &l_454;
                        uint64_t l_458 = 0UL;
                        int32_t l_459 = 0x526F87D0L;
                        struct S0 l_460 = {4L,4UL,4294967287UL};
                        struct S0 l_461 = {-10L,8UL,0x8318166AL};
                        int32_t *l_462 = &l_454;
                        int32_t *l_463 = &l_459;
                        int i, j;
                        l_455 = l_453;
                        l_453 = (l_457 = l_456[7][7]);
                        l_409 = l_458;
                        l_463 = ((l_461 = (l_459 , l_460)) , l_462);
                    }
                    else
                    { /* block id: 193 */
                        int8_t l_466 = (-1L);
                        int8_t *l_465 = &l_466;
                        int8_t **l_464 = &l_465;
                        int8_t **l_467 = (void*)0;
                        l_467 = l_464;
                    }
                    l_409 &= l_468;
                }
                else
                { /* block id: 197 */
                    VECTOR(int32_t, 8) l_469 = (VECTOR(int32_t, 8))(0x322E90DFL, (VECTOR(int32_t, 4))(0x322E90DFL, (VECTOR(int32_t, 2))(0x322E90DFL, 0x6C0A4B4CL), 0x6C0A4B4CL), 0x6C0A4B4CL, 0x322E90DFL, 0x6C0A4B4CL);
                    uint8_t l_470 = 4UL;
                    int i;
                    l_470 |= (l_409 |= ((VECTOR(int32_t, 16))(l_469.s1011002316622363)).sb);
                }
                if ((l_409 = l_471))
                { /* block id: 202 */
                    int16_t l_472[3][10] = {{2L,2L,0x48C1L,0x0DB0L,(-1L),0x0DB0L,0x48C1L,2L,2L,0x48C1L},{2L,2L,0x48C1L,0x0DB0L,(-1L),0x0DB0L,0x48C1L,2L,2L,0x48C1L},{2L,2L,0x48C1L,0x0DB0L,(-1L),0x0DB0L,0x48C1L,2L,2L,0x48C1L}};
                    int32_t l_473 = 0x28B305B4L;
                    uint16_t l_474 = 65535UL;
                    uint16_t l_477 = 65528UL;
                    uint32_t l_478 = 0xD1F72FDBL;
                    uint32_t l_479 = 8UL;
                    uint16_t l_480[7][3] = {{0x2F5DL,1UL,0x3327L},{0x2F5DL,1UL,0x3327L},{0x2F5DL,1UL,0x3327L},{0x2F5DL,1UL,0x3327L},{0x2F5DL,1UL,0x3327L},{0x2F5DL,1UL,0x3327L},{0x2F5DL,1UL,0x3327L}};
                    int32_t l_495 = 0x3494BE3BL;
                    int i, j;
                    l_474--;
                    l_478 = l_477;
                    if ((l_480[6][0] = (l_479 = (l_409 = 8L))))
                    { /* block id: 208 */
                        VECTOR(uint64_t, 16) l_481 = (VECTOR(uint64_t, 16))(0x81BC790364BC2350L, (VECTOR(uint64_t, 4))(0x81BC790364BC2350L, (VECTOR(uint64_t, 2))(0x81BC790364BC2350L, 0x393006345ED48294L), 0x393006345ED48294L), 0x393006345ED48294L, 0x81BC790364BC2350L, 0x393006345ED48294L, (VECTOR(uint64_t, 2))(0x81BC790364BC2350L, 0x393006345ED48294L), (VECTOR(uint64_t, 2))(0x81BC790364BC2350L, 0x393006345ED48294L), 0x81BC790364BC2350L, 0x393006345ED48294L, 0x81BC790364BC2350L, 0x393006345ED48294L);
                        uint32_t l_482 = 4294967295UL;
                        int32_t l_484 = 0x4FE6EF8BL;
                        int32_t *l_483 = &l_484;
                        int32_t *l_485[2][8][5] = {{{&l_484,&l_484,&l_484,&l_484,&l_484},{&l_484,&l_484,&l_484,&l_484,&l_484},{&l_484,&l_484,&l_484,&l_484,&l_484},{&l_484,&l_484,&l_484,&l_484,&l_484},{&l_484,&l_484,&l_484,&l_484,&l_484},{&l_484,&l_484,&l_484,&l_484,&l_484},{&l_484,&l_484,&l_484,&l_484,&l_484},{&l_484,&l_484,&l_484,&l_484,&l_484}},{{&l_484,&l_484,&l_484,&l_484,&l_484},{&l_484,&l_484,&l_484,&l_484,&l_484},{&l_484,&l_484,&l_484,&l_484,&l_484},{&l_484,&l_484,&l_484,&l_484,&l_484},{&l_484,&l_484,&l_484,&l_484,&l_484},{&l_484,&l_484,&l_484,&l_484,&l_484},{&l_484,&l_484,&l_484,&l_484,&l_484},{&l_484,&l_484,&l_484,&l_484,&l_484}}};
                        int32_t *l_486 = &l_484;
                        int32_t *l_487[9][10] = {{&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484},{&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484},{&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484},{&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484},{&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484},{&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484},{&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484},{&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484},{&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484,&l_484}};
                        struct S1 l_488[6][7][6] = {{{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}}},{{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}}},{{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}}},{{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}}},{{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}}},{{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}},{{4294967293UL,0x0CDBL,0L,65529UL,0x301A2EABL,-1L,1L,1L,{0x64DECCE69348F481L,0xC9L,0x270DB94CL},18446744073709551611UL},{0x5D743792L,1UL,-1L,0xD25BL,0x09AFE9C2L,3L,0x72E6L,0x0697A3C1L,{-7L,0UL,0UL},7UL},{0x5A706DB8L,1UL,0x5C351724L,5UL,0x4B6FF3CBL,-1L,0x759EL,-9L,{0L,0x3EL,2UL},0UL},{4294967295UL,0x7D50L,0x6DD3F0F5L,0UL,-8L,-4L,0x7234L,-5L,{0x675832D1C12A96C7L,255UL,7UL},0x7471E1D25344A9DBL},{0UL,0xD405L,-10L,65529UL,-1L,1L,-1L,-10L,{1L,0x0FL,1UL},18446744073709551609UL},{0x36784AADL,0UL,8L,65535UL,-8L,4L,0x2B84L,0x35B3EBFCL,{-10L,1UL,0UL},18446744073709551615UL}}}};
                        struct S1 l_489 = {4294967295UL,0x714DL,7L,0x1FB5L,0x6C2F0111L,0x7BL,-1L,0L,{0x44DE7EC44BC734D2L,0x88L,0UL},0x3A364F5C6AF15C7BL};/* VOLATILE GLOBAL l_489 */
                        int i, j, k;
                        l_485[1][7][3] = ((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(l_481.sfb)).xyyy)).z , l_482) , l_483);
                        l_487[2][5] = (l_486 = (void*)0);
                        l_489 = l_488[1][1][3];
                    }
                    else
                    { /* block id: 213 */
                        int64_t l_490 = (-3L);
                        uint8_t l_491 = 0xF2L;
                        int16_t l_492 = 0x620CL;
                        uint64_t l_493 = 18446744073709551615UL;
                        int32_t *l_494 = (void*)0;
                        l_491 &= (l_409 ^= l_490);
                        l_493 ^= (l_409 = l_492);
                        l_494 = (void*)0;
                        l_409 &= 0x5365308EL;
                    }
                    if (l_495)
                    { /* block id: 221 */
                        uint32_t l_496 = 4294967287UL;
                        int32_t l_497 = 0L;
                        uint16_t l_498 = 0xD464L;
                        int32_t l_499 = (-5L);
                        l_409 = (l_496 , 0x2CEEE905L);
                        l_498 = l_497;
                        l_409 = l_499;
                    }
                    else
                    { /* block id: 225 */
                        uint64_t l_500 = 0xE856BBDD7AAF6656L;
                        --l_500;
                    }
                }
                else
                { /* block id: 228 */
                    int32_t l_503 = 3L;
                    int32_t l_510 = 6L;
                    for (l_503 = 25; (l_503 == (-23)); l_503 = safe_sub_func_int8_t_s_s(l_503, 9))
                    { /* block id: 231 */
                        uint16_t l_506 = 0x56ADL;
                        int64_t l_507 = 0x136871D89CA1D6FAL;
                        int32_t l_508[10][1][10] = {{{1L,0x5BED12D4L,(-8L),0x33B036A1L,0x33B036A1L,(-8L),0x5BED12D4L,1L,0x2057386EL,0L}},{{1L,0x5BED12D4L,(-8L),0x33B036A1L,0x33B036A1L,(-8L),0x5BED12D4L,1L,0x2057386EL,0L}},{{1L,0x5BED12D4L,(-8L),0x33B036A1L,0x33B036A1L,(-8L),0x5BED12D4L,1L,0x2057386EL,0L}},{{1L,0x5BED12D4L,(-8L),0x33B036A1L,0x33B036A1L,(-8L),0x5BED12D4L,1L,0x2057386EL,0L}},{{1L,0x5BED12D4L,(-8L),0x33B036A1L,0x33B036A1L,(-8L),0x5BED12D4L,1L,0x2057386EL,0L}},{{1L,0x5BED12D4L,(-8L),0x33B036A1L,0x33B036A1L,(-8L),0x5BED12D4L,1L,0x2057386EL,0L}},{{1L,0x5BED12D4L,(-8L),0x33B036A1L,0x33B036A1L,(-8L),0x5BED12D4L,1L,0x2057386EL,0L}},{{1L,0x5BED12D4L,(-8L),0x33B036A1L,0x33B036A1L,(-8L),0x5BED12D4L,1L,0x2057386EL,0L}},{{1L,0x5BED12D4L,(-8L),0x33B036A1L,0x33B036A1L,(-8L),0x5BED12D4L,1L,0x2057386EL,0L}},{{1L,0x5BED12D4L,(-8L),0x33B036A1L,0x33B036A1L,(-8L),0x5BED12D4L,1L,0x2057386EL,0L}}};
                        int32_t l_509 = 0L;
                        int i, j, k;
                        l_506 |= (l_409 = 0x292884A6L);
                        l_509 |= (l_508[1][0][4] = (l_409 = l_507));
                    }
                    if ((l_409 ^= l_510))
                    { /* block id: 239 */
                        union U2 l_511 = {9L};
                        int32_t l_513 = 0x1E91643BL;
                        int32_t *l_512 = &l_513;
                        int32_t *l_514 = &l_513;
                        VECTOR(int32_t, 4) l_515 = (VECTOR(int32_t, 4))(0x647C63F3L, (VECTOR(int32_t, 2))(0x647C63F3L, 2L), 2L);
                        int i;
                        l_514 = (l_511 , (l_512 = l_512));
                        l_409 = (l_503 = 0x1452C567L);
                        l_409 &= (l_510 &= (l_503 = ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(l_515.zwxxwyzw)).hi)).x));
                    }
                    else
                    { /* block id: 247 */
                        int16_t l_516 = (-1L);
                        int32_t l_517 = 0x7EB685D2L;
                        uint64_t l_518 = 0xC341E6F3FACBE40EL;
                        int32_t *l_521 = &l_517;
                        l_518--;
                        l_521 = (void*)0;
                    }
                }
                unsigned int result = 0;
                result += l_409;
                result += l_443;
                result += l_471;
                atomic_add(&p_1415->g_special_values[55 * get_linear_group_id() + 18], result);
            }
            else
            { /* block id: 252 */
                (1 + 1);
            }
        }
    }
    else
    { /* block id: 256 */
        int32_t *l_528 = &l_314;
        int32_t **l_529 = &p_1415->g_245;
        int32_t **l_530 = &l_528;
        VECTOR(uint16_t, 8) l_533 = (VECTOR(uint16_t, 8))(0x8D23L, (VECTOR(uint16_t, 4))(0x8D23L, (VECTOR(uint16_t, 2))(0x8D23L, 65535UL), 65535UL), 65535UL, 0x8D23L, 65535UL);
        VECTOR(uint16_t, 4) l_536 = (VECTOR(uint16_t, 4))(4UL, (VECTOR(uint16_t, 2))(4UL, 0x0281L), 0x0281L);
        VECTOR(uint16_t, 4) l_537 = (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0xF2D4L), 0xF2D4L);
        int16_t *l_539 = &p_1415->g_540;
        int i;
        (*p_1415->g_548) = (safe_mul_func_uint16_t_u_u(((safe_mod_func_int64_t_s_s((safe_sub_func_int8_t_s_s((((*l_530) = ((*l_529) = l_528)) == (((((l_314 | (safe_mod_func_int64_t_s_s((((((VECTOR(uint32_t, 4))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 4),((VECTOR(uint32_t, 2))(upsample(((VECTOR(uint16_t, 2))(mad_sat(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(rhadd(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(l_533.s47)).yxxyxyxx)).lo, ((VECTOR(uint16_t, 2))(0UL, 0xE545L)).xxxx))).lo)).xyyx)).lo, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(rotate(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(hadd(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(p_1415->g_534.wxxz)))).odd, ((VECTOR(uint16_t, 4))(l_535.s6074)).even))), 9UL, 9UL)).odd)), ((VECTOR(uint16_t, 16))(l_536.xyzxyxwzzzwyyyww)).s5d))), ((VECTOR(uint16_t, 2))(rotate(((VECTOR(uint16_t, 2))(0x428DL, 0x3C65L)), ((VECTOR(uint16_t, 2))(rotate(((VECTOR(uint16_t, 4))(add_sat(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(mad_sat(((VECTOR(uint16_t, 4))(l_537.zzzx)), ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(clz(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(rhadd(((VECTOR(uint16_t, 16))((1L == ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(p_1415->g_538.s54)), 0xACFCF9C8FBFB19B1L, 0xF4E5736DFFE83265L)).even)).hi), (l_328.s5 , (l_315 < ((*l_539) = p_72))), 1UL, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))((+((p_1415->g_547 = ((((safe_mod_func_int64_t_s_s(((((*p_1415->g_302) > (*p_1415->g_302)) , (safe_sub_func_int32_t_s_s(((safe_rshift_func_uint16_t_u_u(((p_1415->g_150.se , p_1415->g_211) ^ p_72), 6)) < p_72), FAKE_DIVERGE(p_1415->group_2_offset, get_group_id(2), 10)))) | p_72), 3UL)) | l_309[3]) || 0xDAEF0527L) , l_309[1])) >= (*p_1415->g_302))), ((VECTOR(uint16_t, 2))(0x5232L)), 0UL)).zyzzzxxx)), 0xF678L, 0xB1ABL, ((VECTOR(uint16_t, 2))(0xF8A9L)), 0x7BEFL)), ((VECTOR(uint16_t, 16))(0xC6DEL))))))).even))).odd)), ((VECTOR(uint16_t, 4))(1UL))))), ((VECTOR(uint16_t, 2))(0xB454L)), 0x68A4L, 65531UL)).odd, ((VECTOR(uint16_t, 4))(0x17C5L))))).lo, ((VECTOR(uint16_t, 2))(0x7B20L)))))))), 65535UL, ((VECTOR(uint16_t, 2))(0x200DL)), 0xC44EL)).s37, ((VECTOR(uint16_t, 2))(0x9F8CL))))), ((VECTOR(uint16_t, 2))(0x19EFL))))).yxyx, ((VECTOR(uint32_t, 4))(8UL))))).w , (void*)0) != (void*)0) < 0x228BL), 0x020E2E9D358EB5AEL))) > 9UL) >= 18446744073709551615UL) , 0UL) , (void*)0)), (-2L))), p_1415->g_48[4][2])) , GROUP_DIVERGE(2, 1)), p_72));
    }
    l_552--;
    return p_71;
}


/* ------------------------------------------ */
/* 
 * reads : p_1415->g_179 p_1415->g_165 p_1415->g_150 p_1415->g_comm_values p_1415->g_145
 * writes: p_1415->g_105 p_1415->g_179
 */
int64_t * func_73(uint32_t  p_74, struct S3 * p_1415)
{ /* block id: 90 */
    uint64_t *l_288 = &p_1415->g_179;
    uint64_t *l_296 = (void*)0;
    uint64_t **l_295[3];
    int32_t l_297 = 0x7EFCB922L;
    int i, j;
    for (i = 0; i < 3; i++)
        l_295[i] = &l_296;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    p_1415->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 5)), permutations[(safe_mod_func_uint32_t_u_u(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))((((safe_add_func_uint64_t_u_u((((*l_288) |= (p_1415->g_105 = ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(abs(((VECTOR(uint64_t, 2))(3UL, 18446744073709551608UL)).xxyyxxxyyxyyxxyx))).s4e)).yxxyyxxyyyyxyxyx)).s6)) >= p_1415->g_165.sd), p_74)) < (safe_add_func_int16_t_s_s((safe_mul_func_int16_t_s_s((p_74 , ((p_1415->g_150.s8 != (l_295[2] == (void*)0)) && l_297)), (p_1415->g_comm_values[p_1415->tid] > ((safe_mul_func_int8_t_s_s(p_74, GROUP_DIVERGE(0, 1))) == l_297)))), l_297))) , l_297), 0x18D16A7AL, 0UL, 1UL)).xzwxyyxywzxxwxxx)).s4, 10))][(safe_mod_func_uint32_t_u_u(p_1415->tid, 5))]));
    return p_1415->g_145;
}


/* ------------------------------------------ */
/* 
 * reads : p_1415->g_105 p_1415->g_122 p_1415->g_125 p_1415->g_127 p_1415->g_38 p_1415->g_comm_values p_1415->g_145 p_1415->g_143 p_1415->g_39 p_1415->g_150 p_1415->g_154 p_1415->g_167 p_1415->l_comm_values p_1415->g_48 p_1415->g_29 p_1415->g_199 p_1415->g_211 p_1415->g_167.f0 p_1415->g_158 p_1415->g_141 p_1415->g_246 p_1415->g_170 p_1415->g_265 p_1415->g_245 p_1415->g_268 p_1415->g_179
 * writes: p_1415->g_105 p_1415->g_26 p_1415->g_29 p_1415->g_143 p_1415->g_154 p_1415->g_comm_values p_1415->g_211 p_1415->g_245 p_1415->g_199 p_1415->g_170 p_1415->g_265 p_1415->g_179
 */
uint64_t  func_79(int16_t  p_80, struct S0  p_81, int32_t * p_82, struct S3 * p_1415)
{ /* block id: 22 */
    union U2 l_100 = {0x0180ABA0L};
    uint64_t *l_101 = (void*)0;
    uint64_t *l_102 = &l_100.f2;
    uint64_t *l_103 = &l_100.f2;
    uint64_t *l_104 = &l_100.f2;
    int32_t l_108 = 0x1BA941DAL;
    int64_t **l_117 = &p_1415->g_26;
    VECTOR(uint8_t, 16) l_123 = (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x69L), 0x69L), 0x69L, 1UL, 0x69L, (VECTOR(uint8_t, 2))(1UL, 0x69L), (VECTOR(uint8_t, 2))(1UL, 0x69L), 1UL, 0x69L, 1UL, 0x69L);
    VECTOR(uint16_t, 16) l_124 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 1UL), 1UL), 1UL, 1UL, 1UL, (VECTOR(uint16_t, 2))(1UL, 1UL), (VECTOR(uint16_t, 2))(1UL, 1UL), 1UL, 1UL, 1UL, 1UL);
    VECTOR(uint16_t, 2) l_126 = (VECTOR(uint16_t, 2))(0xBD4AL, 1UL);
    uint64_t *l_140 = &p_1415->g_141;
    uint16_t *l_142[2][2] = {{&p_1415->g_143,&p_1415->g_143},{&p_1415->g_143,&p_1415->g_143}};
    int32_t l_144 = 1L;
    uint64_t **l_160 = &l_140;
    uint64_t ***l_159 = &l_160;
    struct S0 l_172 = {5L,255UL,4294967295UL};
    VECTOR(uint32_t, 8) l_224 = (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967288UL), 4294967288UL), 4294967288UL, 4294967295UL, 4294967288UL);
    uint32_t *l_282 = (void*)0;
    int i, j;
    if ((atomic_inc(&p_1415->l_atomic_input[30]) == 5))
    { /* block id: 24 */
        int64_t l_93 = 2L;
        int64_t *l_92 = &l_93;
        int64_t **l_91[3][5][6] = {{{(void*)0,&l_92,&l_92,&l_92,&l_92,&l_92},{(void*)0,&l_92,&l_92,&l_92,&l_92,&l_92},{(void*)0,&l_92,&l_92,&l_92,&l_92,&l_92},{(void*)0,&l_92,&l_92,&l_92,&l_92,&l_92},{(void*)0,&l_92,&l_92,&l_92,&l_92,&l_92}},{{(void*)0,&l_92,&l_92,&l_92,&l_92,&l_92},{(void*)0,&l_92,&l_92,&l_92,&l_92,&l_92},{(void*)0,&l_92,&l_92,&l_92,&l_92,&l_92},{(void*)0,&l_92,&l_92,&l_92,&l_92,&l_92},{(void*)0,&l_92,&l_92,&l_92,&l_92,&l_92}},{{(void*)0,&l_92,&l_92,&l_92,&l_92,&l_92},{(void*)0,&l_92,&l_92,&l_92,&l_92,&l_92},{(void*)0,&l_92,&l_92,&l_92,&l_92,&l_92},{(void*)0,&l_92,&l_92,&l_92,&l_92,&l_92},{(void*)0,&l_92,&l_92,&l_92,&l_92,&l_92}}};
        int64_t **l_94 = &l_92;
        int32_t l_95 = (-3L);
        int64_t l_96 = 1L;
        int32_t *l_97 = (void*)0;
        int32_t l_99 = (-2L);
        int32_t *l_98 = &l_99;
        int i, j, k;
        l_94 = (l_91[2][3][5] = (void*)0);
        l_96 = l_95;
        l_98 = l_97;
        unsigned int result = 0;
        result += l_93;
        result += l_95;
        result += l_96;
        result += l_99;
        atomic_add(&p_1415->l_special_values[30], result);
    }
    else
    { /* block id: 29 */
        (1 + 1);
    }
    (*p_82) = (((l_108 |= (l_100 , (--p_1415->g_105))) , (!((safe_mod_func_int8_t_s_s(((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(max(((VECTOR(int8_t, 16))(((safe_add_func_int32_t_s_s((safe_add_func_int64_t_s_s((safe_mod_func_uint64_t_u_u((((*l_117) = l_102) == ((safe_sub_func_int8_t_s_s((((VECTOR(uint16_t, 2))(rotate(((VECTOR(uint16_t, 16))(sub_sat(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(mad_sat(((VECTOR(uint16_t, 16))(upsample(((VECTOR(uint8_t, 4))(rotate(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(0x1FL, 0xC2L)), 255UL, 255UL)), 255UL, 0xD8L, ((VECTOR(uint8_t, 4))(l_108, 0x5EL, 0xA3L, 0x25L)), ((VECTOR(uint8_t, 4))(p_1415->g_122.s3576)), 252UL, 0x86L)).s4f27, ((VECTOR(uint8_t, 2))(l_123.sd7)).yxxy))).wyyyyyzzxyxxyyzz, ((VECTOR(uint8_t, 2))(0xF8L, 0x09L)).xyyxxyyyyxyyyyxy))), ((VECTOR(uint16_t, 4))(clz(((VECTOR(uint16_t, 2))(l_124.s8f)).xyyy))).xxxzxzxyzxzwyxyw, ((VECTOR(uint16_t, 16))(p_1415->g_125.xwwwwwyyzxwzywww))))))).s52)).yxxxxyyyyxyxyyxx, ((VECTOR(uint16_t, 8))(l_126.xxyyyxxy)).s1776544141663207))).s27, ((VECTOR(uint16_t, 16))(p_1415->g_127.s3341437613762204)).s7c))).hi | ((((p_1415->g_105 , p_80) , 9UL) < (l_144 = (safe_mod_func_int8_t_s_s((safe_rshift_func_int8_t_s_u((safe_div_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_s(((!(safe_add_func_int64_t_s_s((safe_mul_func_int32_t_s_s(0x72512C82L, (l_140 != (void*)0))), p_1415->g_38))) , p_81.f1), 13)), 0xF5L)), p_1415->g_comm_values[p_1415->tid])), l_123.s1)))) == 4294967286UL)), l_123.s4)) , p_1415->g_145)), p_80)), p_1415->g_143)), p_81.f2)) >= p_81.f0), ((VECTOR(int8_t, 2))(0x7EL)), ((VECTOR(int8_t, 4))(1L)), 0x0FL, 0x00L, ((VECTOR(int8_t, 4))(0x02L)), ((VECTOR(int8_t, 2))(1L)), (-1L))), (int8_t)p_1415->g_39))).s8e87)).yzxyxxyyzzwxxwzx, ((VECTOR(int8_t, 16))(9L))))).s1, 0xF9L)) && p_1415->g_39))) & p_81.f2);
    for (l_144 = 0; (l_144 != 16); l_144 = safe_add_func_int64_t_s_s(l_144, 6))
    { /* block id: 39 */
        int16_t l_157 = 5L;
        uint64_t ***l_161 = (void*)0;
        uint64_t *l_178 = &p_1415->g_179;
        VECTOR(int16_t, 4) l_233 = (VECTOR(int16_t, 4))(0x345BL, (VECTOR(int16_t, 2))(0x345BL, 0x2940L), 0x2940L);
        int32_t l_236 = 0L;
        VECTOR(int32_t, 16) l_241 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 9L), 9L), 9L, (-1L), 9L, (VECTOR(int32_t, 2))((-1L), 9L), (VECTOR(int32_t, 2))((-1L), 9L), (-1L), 9L, (-1L), 9L);
        VECTOR(int8_t, 4) l_267 = (VECTOR(int8_t, 4))(0x16L, (VECTOR(int8_t, 2))(0x16L, 1L), 1L);
        int32_t l_281[6] = {0x097C5418L,4L,0x097C5418L,0x097C5418L,4L,0x097C5418L};
        int i;
        for (p_1415->g_143 = (-13); (p_1415->g_143 != 38); p_1415->g_143++)
        { /* block id: 42 */
            uint64_t l_151 = 18446744073709551615UL;
            int32_t l_181 = (-1L);
            int64_t *l_197[3][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
            uint64_t **l_201 = &l_104;
            VECTOR(int32_t, 4) l_226 = (VECTOR(int32_t, 4))(0x2B1FF79DL, (VECTOR(int32_t, 2))(0x2B1FF79DL, (-1L)), (-1L));
            uint32_t l_238 = 5UL;
            VECTOR(uint8_t, 8) l_258 = (VECTOR(uint8_t, 8))(0x79L, (VECTOR(uint8_t, 4))(0x79L, (VECTOR(uint8_t, 2))(0x79L, 0x41L), 0x41L), 0x41L, 0x79L, 0x41L);
            int8_t *l_279 = (void*)0;
            int8_t *l_280 = (void*)0;
            int16_t *l_283 = &l_157;
            int32_t *l_284 = &l_108;
            int i, j;
            l_151 = ((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 16))(p_1415->g_150.s2a32db51a9e36f56)).s0471, ((VECTOR(int32_t, 2))(0x38CBB9BCL, 0x1FBBDD62L)).yyyx))).w;
            for (l_151 = (-27); (l_151 <= 35); l_151++)
            { /* block id: 46 */
                uint64_t * volatile * volatile *l_156[1];
                uint64_t ****l_162 = &l_161;
                VECTOR(int32_t, 16) l_166 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L, (VECTOR(int32_t, 2))((-1L), 0L), (VECTOR(int32_t, 2))((-1L), 0L), (-1L), 0L, (-1L), 0L);
                VECTOR(int16_t, 8) l_173 = (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, (-4L)), (-4L)), (-4L), 0L, (-4L));
                VECTOR(uint8_t, 2) l_174 = (VECTOR(uint8_t, 2))(0x01L, 0UL);
                int64_t *l_198 = (void*)0;
                VECTOR(uint64_t, 8) l_230 = (VECTOR(uint64_t, 8))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xC5B9279E7B3D9BBBL), 0xC5B9279E7B3D9BBBL), 0xC5B9279E7B3D9BBBL, 18446744073709551615UL, 0xC5B9279E7B3D9BBBL);
                int i;
                for (i = 0; i < 1; i++)
                    l_156[i] = &p_1415->g_154;
                p_1415->g_154 = p_1415->g_154;
                if (l_157)
                    break;
                if ((((0x06L == (((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(p_1415->g_158.xxyxyyxyxyyyxyxx)).s0b2d)).y ^ 0x66L)) | (((l_159 == ((*l_162) = l_161)) && (p_1415->g_comm_values[p_1415->tid] ^= ((safe_mod_func_uint32_t_u_u(((VECTOR(uint32_t, 8))(4294967295UL, ((VECTOR(uint32_t, 4))(abs(((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(p_1415->g_165.s28ca52837081a23f)).sa78a)).hi)), ((VECTOR(int32_t, 16))(l_166.s212eb4f3a628d867)).sfb))).xxyx))), 1UL, 1UL, 4294967287UL)).s3, (p_1415->g_167 , (l_157 & (safe_add_func_int8_t_s_s(((-6L) ^ ((((VECTOR(uint16_t, 2))(p_1415->g_170.s54)).hi > (p_1415->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1415->tid, 5))] && 0L)) >= l_151)), p_1415->g_48[5][5])))))) , l_151))) == FAKE_DIVERGE(p_1415->local_1_offset, get_local_id(1), 10))) > p_80))
                { /* block id: 51 */
                    VECTOR(int16_t, 16) l_171 = (VECTOR(int16_t, 16))(0x223AL, (VECTOR(int16_t, 4))(0x223AL, (VECTOR(int16_t, 2))(0x223AL, 0L), 0L), 0L, 0x223AL, 0L, (VECTOR(int16_t, 2))(0x223AL, 0L), (VECTOR(int16_t, 2))(0x223AL, 0L), 0x223AL, 0L, 0x223AL, 0L);
                    uint64_t *l_177 = &p_1415->g_105;
                    uint64_t **l_180 = &l_178;
                    int i;
                    if (((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(l_171.s08e2)))))).yzyzyyxz, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(max(((VECTOR(uint16_t, 4))(add_sat(((VECTOR(uint16_t, 16))(min(((VECTOR(uint16_t, 16))(65535UL, 65531UL, 0xD4B5L, ((FAKE_DIVERGE(p_1415->group_0_offset, get_group_id(0), 10) >= l_171.sb) ^ ((((l_172 , ((((((VECTOR(int16_t, 4))(l_173.s0174)).y != l_151) , ((VECTOR(uint8_t, 8))(abs_diff(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(0x3DL, 255UL)), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(l_174.yyyyxxyxyyxyyxyy)).s471e)), 0x6FL, 0x47L)), ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(0x1FL, 3UL, 0xA8L, 0UL)).hi)), 0x4CL, 252UL)).wwyyxywywzzwzzzx)).even))))).s7) >= ((l_181 |= ((*p_82) = (safe_sub_func_uint64_t_u_u(((*l_177) |= p_1415->g_125.x), (p_1415->g_26 == ((*l_180) = l_178)))))) >= (safe_sub_func_uint32_t_u_u((safe_div_func_int8_t_s_s(((safe_div_func_int16_t_s_s(0x524CL, (safe_rshift_func_uint16_t_u_u(((safe_div_func_uint64_t_u_u((safe_div_func_uint8_t_u_u(((void*)0 != &p_1415->g_179), p_81.f0)), p_1415->g_127.s1)) , 65527UL), 5)))) < l_151), (-4L))), 1L)))) || p_1415->g_48[4][2])) > p_1415->g_150.s9) <= 0UL) > l_166.s6)), ((VECTOR(uint16_t, 2))(65535UL)), ((VECTOR(uint16_t, 4))(65534UL)), p_1415->g_167.f0, ((VECTOR(uint16_t, 4))(0UL)), 0x47D4L)), (uint16_t)p_1415->g_12.s3))).s36e5, ((VECTOR(uint16_t, 4))(0xD535L))))).even, (uint16_t)0x8BB7L))).yyxy)))).wzwxzwxx))).s4)
                    { /* block id: 56 */
                        uint64_t **l_200 = &l_101;
                        uint32_t *l_210[7];
                        VECTOR(uint32_t, 16) l_223 = (VECTOR(uint32_t, 16))(4294967290UL, (VECTOR(uint32_t, 4))(4294967290UL, (VECTOR(uint32_t, 2))(4294967290UL, 0UL), 0UL), 0UL, 4294967290UL, 0UL, (VECTOR(uint32_t, 2))(4294967290UL, 0UL), (VECTOR(uint32_t, 2))(4294967290UL, 0UL), 4294967290UL, 0UL, 4294967290UL, 0UL);
                        VECTOR(int32_t, 4) l_225 = (VECTOR(int32_t, 4))(0x2C27F2C4L, (VECTOR(int32_t, 2))(0x2C27F2C4L, 8L), 8L);
                        VECTOR(int32_t, 4) l_227 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x067139CEL), 0x067139CEL);
                        int8_t *l_234 = (void*)0;
                        int8_t *l_235[4][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                        int32_t *l_237 = &l_108;
                        int i, j;
                        for (i = 0; i < 7; i++)
                            l_210[i] = &p_1415->g_211;
                        (*p_82) = ((((((safe_unary_minus_func_uint32_t_u(p_1415->g_29)) > (safe_rshift_func_uint8_t_u_u(0UL, 3))) , l_177) == (((void*)0 == &l_144) , l_197[1][2])) ^ (l_198 != l_178)) <= (p_1415->g_199 , l_181));
                        l_201 = l_200;
                        (*p_82) = 0x789515C5L;
                        (*l_237) &= (safe_mod_func_uint64_t_u_u(((safe_mod_func_int8_t_s_s((((((safe_lshift_func_int8_t_s_u((((safe_sub_func_uint64_t_u_u(((p_1415->g_211--) , (+l_172.f0)), ((p_80 && (((safe_add_func_int16_t_s_s(p_1415->g_199.f4, (safe_lshift_func_int8_t_s_u((l_226.y = (((safe_lshift_func_int16_t_s_u(((0xCE0FD3D768784C1EL < (safe_unary_minus_func_uint16_t_u(l_181))) , p_1415->g_127.s5), (((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(l_223.s2cd2)), ((VECTOR(uint32_t, 4))(l_224.s6070)))).even)), ((VECTOR(uint32_t, 2))(abs_diff(((VECTOR(int32_t, 2))(l_225.zw)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 8))(l_226.yxyyxxyy)).s51, ((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(0x5A55CE7AL, 0L)))).xxyx, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 4))(l_227.zxxz)).hi, ((VECTOR(int32_t, 2))(3L, 0x417A0307L))))).xxxx))))).lo))).yyyy)).odd))), 0x45E776B2L, 4294967295UL)).s6 & (((safe_sub_func_uint8_t_u_u((((VECTOR(uint64_t, 4))(l_230.s4406)).y , (safe_add_func_int16_t_s_s(p_81.f1, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_233.yz)), 0x0FEDL, 1L)).y))), 0x29L)) > p_81.f2) <= p_81.f2)))) <= p_81.f0) >= (*p_82))), p_1415->g_167.f0)))) == p_80) != 0x3CE0F37C12618D2DL)) ^ p_1415->g_158.x))) == p_81.f0) > 9L), 1)) & (*p_82)) || 0xA964CF4CL) != l_236) & 0x74L), p_81.f0)) ^ p_1415->g_105), p_1415->g_141));
                    }
                    else
                    { /* block id: 63 */
                        uint8_t *l_242 = &l_172.f1;
                        (*p_82) |= (((&p_1415->g_154 != ((*l_162) = &l_201)) == (l_171.s6 && l_238)) && (safe_add_func_int32_t_s_s(0x24A73BDAL, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 8))(p_1415->g_199.f0, (-1L), 7L, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 2))(0x16B39EC0L, 0L)).xyxy, ((VECTOR(int32_t, 2))(l_241.s9e)).xxyy))))).ywxxyywwwywwzwyx)))).sc3fa)), 0L)).s5722347562351066, (int32_t)(-1L)))))).sd2, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x3D050AC2L, (-8L))).xxxx)).xyxwzwxx)).s54))).xxyx)).x)));
                        (*p_82) = (0x6CL == (--(*l_242)));
                        p_1415->g_245 = &p_1415->g_29;
                    }
                    (*p_1415->g_246) = p_1415->g_199;
                }
                else
                { /* block id: 71 */
                    int8_t l_251 = 0x4EL;
                    int8_t *l_256 = (void*)0;
                    int8_t *l_257 = &l_251;
                    int32_t l_261 = 0x6E482B48L;
                    uint8_t *l_264 = (void*)0;
                    volatile struct S0 *l_266 = &p_1415->g_199.f8;
                    if (l_226.y)
                        break;
                    (*p_1415->g_245) ^= (safe_div_func_uint8_t_u_u(p_80, (p_1415->g_265 ^= (safe_lshift_func_uint16_t_u_s((++p_1415->g_170.s2), (0x3E3177D20EFBC22AL > ((VECTOR(uint64_t, 8))(0x01BBE2534F437CBEL, 18446744073709551615UL, ((*l_178) = (safe_mul_func_int8_t_s_s(((((*l_257) &= 0x10L) ^ ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(l_258.s74365407)).hi)).ywyxwzwzwxyxyxzw)))).s0) || 0x4D36L), ((((safe_mod_func_uint64_t_u_u(l_261, ((l_236 ^ 0xDFD2789EL) , p_81.f0))) == (safe_div_func_uint8_t_u_u(l_261, p_81.f0))) , l_258.s0) <= l_173.s4)))), 1UL, ((VECTOR(uint64_t, 4))(0x70230D1EB583F5C3L)))).s0))))));
                    (*l_266) = p_1415->g_199.f8;
                }
            }
            (*l_284) ^= (((((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(int8_t, 2))(l_267.ww)), ((VECTOR(int8_t, 16))(p_1415->g_268.sb704d01aca74aedc)).se6))).hi > ((safe_div_func_int16_t_s_s(((((((*l_178)++) == p_1415->g_29) != (safe_sub_func_int16_t_s_s(((*l_283) = (((((safe_lshift_func_int8_t_s_s(((l_241.sa ^= p_1415->g_127.s1) >= (((l_281[5] = p_81.f0) || 0xADFCL) & FAKE_DIVERGE(p_1415->local_2_offset, get_local_id(2), 10))), (251UL != (l_144 ^ GROUP_DIVERGE(0, 1))))) != (((*p_1415->g_245) != (-1L)) , (&p_1415->g_211 != l_282))) , &l_201) != l_161) || (*p_1415->g_245))), 0x783AL))) & (-1L)) && 1UL), p_1415->g_105)) && l_224.s0)) ^ 0xCF54L) ^ p_81.f2);
            return p_1415->g_199.f0;
        }
    }
    return p_81.f1;
}


/* ------------------------------------------ */
/* 
 * reads : p_1415->g_comm_values
 * writes:
 */
int16_t  func_83(uint64_t  p_84, uint64_t  p_85, int64_t * p_86, int8_t  p_87, struct S3 * p_1415)
{ /* block id: 19 */
    int32_t *l_89 = (void*)0;
    l_89 = &p_1415->g_29;
    return p_1415->g_comm_values[p_1415->tid];
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j;
    __local volatile uint32_t l_atomic_input[55];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 55; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[55];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 55; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[5];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 5; i++)
            l_comm_values[i] = 1;
    struct S3 c_1416;
    struct S3* p_1415 = &c_1416;
    struct S3 c_1417 = {
        (VECTOR(uint8_t, 16))(0xE6L, (VECTOR(uint8_t, 4))(0xE6L, (VECTOR(uint8_t, 2))(0xE6L, 255UL), 255UL), 255UL, 0xE6L, 255UL, (VECTOR(uint8_t, 2))(0xE6L, 255UL), (VECTOR(uint8_t, 2))(0xE6L, 255UL), 0xE6L, 255UL, 0xE6L, 255UL), // p_1415->g_12
        (void*)0, // p_1415->g_26
        5L, // p_1415->g_29
        1L, // p_1415->g_38
        4294967290UL, // p_1415->g_39
        0x2FB5L, // p_1415->g_47
        {{0x839B4770L,0x9A1548EBL,1UL,4UL,0x387B67A0L,4UL},{0x839B4770L,0x9A1548EBL,1UL,4UL,0x387B67A0L,4UL},{0x839B4770L,0x9A1548EBL,1UL,4UL,0x387B67A0L,4UL},{0x839B4770L,0x9A1548EBL,1UL,4UL,0x387B67A0L,4UL},{0x839B4770L,0x9A1548EBL,1UL,4UL,0x387B67A0L,4UL},{0x839B4770L,0x9A1548EBL,1UL,4UL,0x387B67A0L,4UL},{0x839B4770L,0x9A1548EBL,1UL,4UL,0x387B67A0L,4UL}}, // p_1415->g_48
        5UL, // p_1415->g_105
        (VECTOR(uint8_t, 8))(0x82L, (VECTOR(uint8_t, 4))(0x82L, (VECTOR(uint8_t, 2))(0x82L, 0xFEL), 0xFEL), 0xFEL, 0x82L, 0xFEL), // p_1415->g_122
        (VECTOR(uint16_t, 4))(65533UL, (VECTOR(uint16_t, 2))(65533UL, 65535UL), 65535UL), // p_1415->g_125
        (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 65535UL), 65535UL), 65535UL, 0UL, 65535UL), // p_1415->g_127
        18446744073709551610UL, // p_1415->g_141
        1UL, // p_1415->g_143
        (void*)0, // p_1415->g_145
        (VECTOR(int32_t, 16))(0x060F980CL, (VECTOR(int32_t, 4))(0x060F980CL, (VECTOR(int32_t, 2))(0x060F980CL, 0x3F41E009L), 0x3F41E009L), 0x3F41E009L, 0x060F980CL, 0x3F41E009L, (VECTOR(int32_t, 2))(0x060F980CL, 0x3F41E009L), (VECTOR(int32_t, 2))(0x060F980CL, 0x3F41E009L), 0x060F980CL, 0x3F41E009L, 0x060F980CL, 0x3F41E009L), // p_1415->g_150
        &p_1415->g_141, // p_1415->g_155
        &p_1415->g_155, // p_1415->g_154
        (VECTOR(int8_t, 2))(0x49L, 0L), // p_1415->g_158
        (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 9L), 9L), 9L, 1L, 9L, (VECTOR(int32_t, 2))(1L, 9L), (VECTOR(int32_t, 2))(1L, 9L), 1L, 9L, 1L, 9L), // p_1415->g_165
        {0x490EA19DL}, // p_1415->g_167
        (VECTOR(uint16_t, 8))(0x35B6L, (VECTOR(uint16_t, 4))(0x35B6L, (VECTOR(uint16_t, 2))(0x35B6L, 0x5B57L), 0x5B57L), 0x5B57L, 0x35B6L, 0x5B57L), // p_1415->g_170
        1UL, // p_1415->g_179
        {0x59A47884L,0UL,0x346097EDL,0x1E79L,2L,0x5EL,0x4DA8L,0L,{6L,0x1BL,0x7E7B49F2L},1UL}, // p_1415->g_199
        0x161C1AEBL, // p_1415->g_211
        &p_1415->g_29, // p_1415->g_245
        &p_1415->g_199, // p_1415->g_246
        4294967289UL, // p_1415->g_265
        (VECTOR(int8_t, 16))(0x0AL, (VECTOR(int8_t, 4))(0x0AL, (VECTOR(int8_t, 2))(0x0AL, 0L), 0L), 0L, 0x0AL, 0L, (VECTOR(int8_t, 2))(0x0AL, 0L), (VECTOR(int8_t, 2))(0x0AL, 0L), 0x0AL, 0L, 0x0AL, 0L), // p_1415->g_268
        0UL, // p_1415->g_303
        &p_1415->g_303, // p_1415->g_302
        {9L,3UL,9UL}, // p_1415->g_322
        {&p_1415->g_322,&p_1415->g_322}, // p_1415->g_321
        {&p_1415->g_245}, // p_1415->g_348
        (void*)0, // p_1415->g_350
        &p_1415->g_245, // p_1415->g_351
        (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x579EL), 0x579EL), // p_1415->g_534
        (VECTOR(uint64_t, 16))(18446744073709551607UL, (VECTOR(uint64_t, 4))(18446744073709551607UL, (VECTOR(uint64_t, 2))(18446744073709551607UL, 0UL), 0UL), 0UL, 18446744073709551607UL, 0UL, (VECTOR(uint64_t, 2))(18446744073709551607UL, 0UL), (VECTOR(uint64_t, 2))(18446744073709551607UL, 0UL), 18446744073709551607UL, 0UL, 18446744073709551607UL, 0UL), // p_1415->g_538
        8L, // p_1415->g_540
        (-9L), // p_1415->g_547
        &p_1415->g_29, // p_1415->g_548
        (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x665AL), 0x665AL), 0x665AL, (-1L), 0x665AL), // p_1415->g_617
        (VECTOR(int16_t, 2))(0x6BB8L, 3L), // p_1415->g_618
        (VECTOR(int16_t, 16))(0x7376L, (VECTOR(int16_t, 4))(0x7376L, (VECTOR(int16_t, 2))(0x7376L, 0L), 0L), 0L, 0x7376L, 0L, (VECTOR(int16_t, 2))(0x7376L, 0L), (VECTOR(int16_t, 2))(0x7376L, 0L), 0x7376L, 0L, 0x7376L, 0L), // p_1415->g_637
        {{(void*)0,(void*)0},{(void*)0,(void*)0}}, // p_1415->g_671
        &p_1415->g_671[0][0], // p_1415->g_670
        &p_1415->g_670, // p_1415->g_669
        (void*)0, // p_1415->g_698
        {0x4CABAFEBL,65530UL,7L,1UL,0x2C6A12E3L,0x49L,0x2108L,4L,{8L,0xCCL,0x4CF02825L},7UL}, // p_1415->g_703
        {-3L,0xA3L,0x35668AC6L}, // p_1415->g_727
        (VECTOR(int16_t, 2))(0x2773L, 8L), // p_1415->g_750
        (VECTOR(uint16_t, 4))(9UL, (VECTOR(uint16_t, 2))(9UL, 65535UL), 65535UL), // p_1415->g_751
        &p_1415->g_143, // p_1415->g_768
        &p_1415->g_143, // p_1415->g_769
        &p_1415->g_29, // p_1415->g_789
        0x60DE3F22L, // p_1415->g_816
        (VECTOR(uint16_t, 16))(0x5DC3L, (VECTOR(uint16_t, 4))(0x5DC3L, (VECTOR(uint16_t, 2))(0x5DC3L, 0xFF48L), 0xFF48L), 0xFF48L, 0x5DC3L, 0xFF48L, (VECTOR(uint16_t, 2))(0x5DC3L, 0xFF48L), (VECTOR(uint16_t, 2))(0x5DC3L, 0xFF48L), 0x5DC3L, 0xFF48L, 0x5DC3L, 0xFF48L), // p_1415->g_822
        (VECTOR(int16_t, 16))(0x695EL, (VECTOR(int16_t, 4))(0x695EL, (VECTOR(int16_t, 2))(0x695EL, 0x0145L), 0x0145L), 0x0145L, 0x695EL, 0x0145L, (VECTOR(int16_t, 2))(0x695EL, 0x0145L), (VECTOR(int16_t, 2))(0x695EL, 0x0145L), 0x695EL, 0x0145L, 0x695EL, 0x0145L), // p_1415->g_861
        (VECTOR(int8_t, 2))((-3L), 0x7CL), // p_1415->g_874
        &p_1415->g_245, // p_1415->g_891
        (VECTOR(int16_t, 8))(0x3D38L, (VECTOR(int16_t, 4))(0x3D38L, (VECTOR(int16_t, 2))(0x3D38L, 1L), 1L), 1L, 0x3D38L, 1L), // p_1415->g_922
        (VECTOR(int32_t, 2))((-1L), 0x1FD83F7EL), // p_1415->g_930
        &p_1415->g_105, // p_1415->g_951
        &p_1415->g_951, // p_1415->g_950
        (VECTOR(int32_t, 4))(0x19D96C58L, (VECTOR(int32_t, 2))(0x19D96C58L, 1L), 1L), // p_1415->g_1004
        {0x9D344FA0L,65535UL,0x1DBEFA2CL,0x1321L,0x68418E3DL,0x16L,0L,1L,{0x7806BBC359F305FFL,251UL,4294967286UL},0x458837F1F8EB2392L}, // p_1415->g_1017
        0x0017C674L, // p_1415->g_1067
        {0x972B4104L,0x5FF9L,2L,0xA31CL,0x138850E4L,0x44L,-8L,-1L,{1L,0x1EL,0xE16EE7E3L},0x39192FCD858D84CAL}, // p_1415->g_1081
        {0x46233A27L,0UL,0x39F694A1L,0x83CEL,1L,-1L,0L,0x29F7D4C6L,{0x1664B7827F7C53A6L,255UL,0UL},0xE5890C9FE1978F49L}, // p_1415->g_1082
        (VECTOR(uint8_t, 8))(6UL, (VECTOR(uint8_t, 4))(6UL, (VECTOR(uint8_t, 2))(6UL, 0xEDL), 0xEDL), 0xEDL, 6UL, 0xEDL), // p_1415->g_1089
        (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 1UL), 1UL), 1UL, 255UL, 1UL, (VECTOR(uint8_t, 2))(255UL, 1UL), (VECTOR(uint8_t, 2))(255UL, 1UL), 255UL, 1UL, 255UL, 1UL), // p_1415->g_1090
        (VECTOR(uint16_t, 2))(0x21CDL, 8UL), // p_1415->g_1101
        (VECTOR(int16_t, 2))(1L, 1L), // p_1415->g_1104
        (VECTOR(int16_t, 8))(0x6311L, (VECTOR(int16_t, 4))(0x6311L, (VECTOR(int16_t, 2))(0x6311L, (-7L)), (-7L)), (-7L), 0x6311L, (-7L)), // p_1415->g_1111
        (VECTOR(int32_t, 2))(0x6AB7DC3CL, 0x7D075B83L), // p_1415->g_1119
        (void*)0, // p_1415->g_1135
        (-5L), // p_1415->g_1136
        (void*)0, // p_1415->g_1146
        &p_1415->g_245, // p_1415->g_1147
        (VECTOR(int64_t, 4))(0x230FDD6F144E6830L, (VECTOR(int64_t, 2))(0x230FDD6F144E6830L, 0x01DFE1B6F654F13CL), 0x01DFE1B6F654F13CL), // p_1415->g_1182
        (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x32B9L), 0x32B9L), 0x32B9L, 1L, 0x32B9L, (VECTOR(int16_t, 2))(1L, 0x32B9L), (VECTOR(int16_t, 2))(1L, 0x32B9L), 1L, 0x32B9L, 1L, 0x32B9L), // p_1415->g_1190
        {{0x2E38L,8L,(-4L),0x2469L,(-9L),0x2E38L},{0x2E38L,8L,(-4L),0x2469L,(-9L),0x2E38L},{0x2E38L,8L,(-4L),0x2469L,(-9L),0x2E38L},{0x2E38L,8L,(-4L),0x2469L,(-9L),0x2E38L},{0x2E38L,8L,(-4L),0x2469L,(-9L),0x2E38L}}, // p_1415->g_1203
        (VECTOR(uint32_t, 2))(0x2F3EDE07L, 0x4D3EBAA7L), // p_1415->g_1258
        (VECTOR(uint16_t, 2))(0x3BF5L, 65531UL), // p_1415->g_1263
        &p_1415->g_245, // p_1415->g_1280
        {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}, // p_1415->g_1285
        (VECTOR(uint8_t, 2))(1UL, 0x05L), // p_1415->g_1297
        (VECTOR(uint8_t, 4))(254UL, (VECTOR(uint8_t, 2))(254UL, 8UL), 8UL), // p_1415->g_1298
        (VECTOR(int16_t, 2))(0x4346L, 0x060FL), // p_1415->g_1304
        (void*)0, // p_1415->g_1314
        &p_1415->g_245, // p_1415->g_1315
        (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 7UL), 7UL), 7UL, 1UL, 7UL), // p_1415->g_1363
        (VECTOR(uint64_t, 8))(0xF5DC56257D0233B8L, (VECTOR(uint64_t, 4))(0xF5DC56257D0233B8L, (VECTOR(uint64_t, 2))(0xF5DC56257D0233B8L, 0xA2A1DE12B4F687E6L), 0xA2A1DE12B4F687E6L), 0xA2A1DE12B4F687E6L, 0xF5DC56257D0233B8L, 0xA2A1DE12B4F687E6L), // p_1415->g_1374
        (VECTOR(uint8_t, 2))(4UL, 0x74L), // p_1415->g_1377
        (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L), (VECTOR(int8_t, 2))((-1L), (-1L)), (VECTOR(int8_t, 2))((-1L), (-1L)), (-1L), (-1L), (-1L), (-1L)), // p_1415->g_1397
        (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x46L), 0x46L), // p_1415->g_1398
        {0UL,0x477CL,-1L,0xC43EL,0x757B1BFDL,-8L,0x3B90L,1L,{2L,0UL,0xBA41ED3FL},0UL}, // p_1415->g_1407
        {4294967295UL,0UL,0x41DD799BL,0xE559L,0x0138784EL,-4L,0x3F98L,0x301ECAE7L,{-1L,0xDCL,1UL},7UL}, // p_1415->g_1408
        0, // p_1415->v_collective
        sequence_input[get_global_id(0)], // p_1415->global_0_offset
        sequence_input[get_global_id(1)], // p_1415->global_1_offset
        sequence_input[get_global_id(2)], // p_1415->global_2_offset
        sequence_input[get_local_id(0)], // p_1415->local_0_offset
        sequence_input[get_local_id(1)], // p_1415->local_1_offset
        sequence_input[get_local_id(2)], // p_1415->local_2_offset
        sequence_input[get_group_id(0)], // p_1415->group_0_offset
        sequence_input[get_group_id(1)], // p_1415->group_1_offset
        sequence_input[get_group_id(2)], // p_1415->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 5)), permutations[0][get_linear_local_id()])), // p_1415->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1416 = c_1417;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1415);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1415->g_12.s0, "p_1415->g_12.s0", print_hash_value);
    transparent_crc(p_1415->g_12.s1, "p_1415->g_12.s1", print_hash_value);
    transparent_crc(p_1415->g_12.s2, "p_1415->g_12.s2", print_hash_value);
    transparent_crc(p_1415->g_12.s3, "p_1415->g_12.s3", print_hash_value);
    transparent_crc(p_1415->g_12.s4, "p_1415->g_12.s4", print_hash_value);
    transparent_crc(p_1415->g_12.s5, "p_1415->g_12.s5", print_hash_value);
    transparent_crc(p_1415->g_12.s6, "p_1415->g_12.s6", print_hash_value);
    transparent_crc(p_1415->g_12.s7, "p_1415->g_12.s7", print_hash_value);
    transparent_crc(p_1415->g_12.s8, "p_1415->g_12.s8", print_hash_value);
    transparent_crc(p_1415->g_12.s9, "p_1415->g_12.s9", print_hash_value);
    transparent_crc(p_1415->g_12.sa, "p_1415->g_12.sa", print_hash_value);
    transparent_crc(p_1415->g_12.sb, "p_1415->g_12.sb", print_hash_value);
    transparent_crc(p_1415->g_12.sc, "p_1415->g_12.sc", print_hash_value);
    transparent_crc(p_1415->g_12.sd, "p_1415->g_12.sd", print_hash_value);
    transparent_crc(p_1415->g_12.se, "p_1415->g_12.se", print_hash_value);
    transparent_crc(p_1415->g_12.sf, "p_1415->g_12.sf", print_hash_value);
    transparent_crc(p_1415->g_29, "p_1415->g_29", print_hash_value);
    transparent_crc(p_1415->g_38, "p_1415->g_38", print_hash_value);
    transparent_crc(p_1415->g_39, "p_1415->g_39", print_hash_value);
    transparent_crc(p_1415->g_47, "p_1415->g_47", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_1415->g_48[i][j], "p_1415->g_48[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1415->g_105, "p_1415->g_105", print_hash_value);
    transparent_crc(p_1415->g_122.s0, "p_1415->g_122.s0", print_hash_value);
    transparent_crc(p_1415->g_122.s1, "p_1415->g_122.s1", print_hash_value);
    transparent_crc(p_1415->g_122.s2, "p_1415->g_122.s2", print_hash_value);
    transparent_crc(p_1415->g_122.s3, "p_1415->g_122.s3", print_hash_value);
    transparent_crc(p_1415->g_122.s4, "p_1415->g_122.s4", print_hash_value);
    transparent_crc(p_1415->g_122.s5, "p_1415->g_122.s5", print_hash_value);
    transparent_crc(p_1415->g_122.s6, "p_1415->g_122.s6", print_hash_value);
    transparent_crc(p_1415->g_122.s7, "p_1415->g_122.s7", print_hash_value);
    transparent_crc(p_1415->g_125.x, "p_1415->g_125.x", print_hash_value);
    transparent_crc(p_1415->g_125.y, "p_1415->g_125.y", print_hash_value);
    transparent_crc(p_1415->g_125.z, "p_1415->g_125.z", print_hash_value);
    transparent_crc(p_1415->g_125.w, "p_1415->g_125.w", print_hash_value);
    transparent_crc(p_1415->g_127.s0, "p_1415->g_127.s0", print_hash_value);
    transparent_crc(p_1415->g_127.s1, "p_1415->g_127.s1", print_hash_value);
    transparent_crc(p_1415->g_127.s2, "p_1415->g_127.s2", print_hash_value);
    transparent_crc(p_1415->g_127.s3, "p_1415->g_127.s3", print_hash_value);
    transparent_crc(p_1415->g_127.s4, "p_1415->g_127.s4", print_hash_value);
    transparent_crc(p_1415->g_127.s5, "p_1415->g_127.s5", print_hash_value);
    transparent_crc(p_1415->g_127.s6, "p_1415->g_127.s6", print_hash_value);
    transparent_crc(p_1415->g_127.s7, "p_1415->g_127.s7", print_hash_value);
    transparent_crc(p_1415->g_141, "p_1415->g_141", print_hash_value);
    transparent_crc(p_1415->g_143, "p_1415->g_143", print_hash_value);
    transparent_crc(p_1415->g_150.s0, "p_1415->g_150.s0", print_hash_value);
    transparent_crc(p_1415->g_150.s1, "p_1415->g_150.s1", print_hash_value);
    transparent_crc(p_1415->g_150.s2, "p_1415->g_150.s2", print_hash_value);
    transparent_crc(p_1415->g_150.s3, "p_1415->g_150.s3", print_hash_value);
    transparent_crc(p_1415->g_150.s4, "p_1415->g_150.s4", print_hash_value);
    transparent_crc(p_1415->g_150.s5, "p_1415->g_150.s5", print_hash_value);
    transparent_crc(p_1415->g_150.s6, "p_1415->g_150.s6", print_hash_value);
    transparent_crc(p_1415->g_150.s7, "p_1415->g_150.s7", print_hash_value);
    transparent_crc(p_1415->g_150.s8, "p_1415->g_150.s8", print_hash_value);
    transparent_crc(p_1415->g_150.s9, "p_1415->g_150.s9", print_hash_value);
    transparent_crc(p_1415->g_150.sa, "p_1415->g_150.sa", print_hash_value);
    transparent_crc(p_1415->g_150.sb, "p_1415->g_150.sb", print_hash_value);
    transparent_crc(p_1415->g_150.sc, "p_1415->g_150.sc", print_hash_value);
    transparent_crc(p_1415->g_150.sd, "p_1415->g_150.sd", print_hash_value);
    transparent_crc(p_1415->g_150.se, "p_1415->g_150.se", print_hash_value);
    transparent_crc(p_1415->g_150.sf, "p_1415->g_150.sf", print_hash_value);
    transparent_crc(p_1415->g_158.x, "p_1415->g_158.x", print_hash_value);
    transparent_crc(p_1415->g_158.y, "p_1415->g_158.y", print_hash_value);
    transparent_crc(p_1415->g_165.s0, "p_1415->g_165.s0", print_hash_value);
    transparent_crc(p_1415->g_165.s1, "p_1415->g_165.s1", print_hash_value);
    transparent_crc(p_1415->g_165.s2, "p_1415->g_165.s2", print_hash_value);
    transparent_crc(p_1415->g_165.s3, "p_1415->g_165.s3", print_hash_value);
    transparent_crc(p_1415->g_165.s4, "p_1415->g_165.s4", print_hash_value);
    transparent_crc(p_1415->g_165.s5, "p_1415->g_165.s5", print_hash_value);
    transparent_crc(p_1415->g_165.s6, "p_1415->g_165.s6", print_hash_value);
    transparent_crc(p_1415->g_165.s7, "p_1415->g_165.s7", print_hash_value);
    transparent_crc(p_1415->g_165.s8, "p_1415->g_165.s8", print_hash_value);
    transparent_crc(p_1415->g_165.s9, "p_1415->g_165.s9", print_hash_value);
    transparent_crc(p_1415->g_165.sa, "p_1415->g_165.sa", print_hash_value);
    transparent_crc(p_1415->g_165.sb, "p_1415->g_165.sb", print_hash_value);
    transparent_crc(p_1415->g_165.sc, "p_1415->g_165.sc", print_hash_value);
    transparent_crc(p_1415->g_165.sd, "p_1415->g_165.sd", print_hash_value);
    transparent_crc(p_1415->g_165.se, "p_1415->g_165.se", print_hash_value);
    transparent_crc(p_1415->g_165.sf, "p_1415->g_165.sf", print_hash_value);
    transparent_crc(p_1415->g_170.s0, "p_1415->g_170.s0", print_hash_value);
    transparent_crc(p_1415->g_170.s1, "p_1415->g_170.s1", print_hash_value);
    transparent_crc(p_1415->g_170.s2, "p_1415->g_170.s2", print_hash_value);
    transparent_crc(p_1415->g_170.s3, "p_1415->g_170.s3", print_hash_value);
    transparent_crc(p_1415->g_170.s4, "p_1415->g_170.s4", print_hash_value);
    transparent_crc(p_1415->g_170.s5, "p_1415->g_170.s5", print_hash_value);
    transparent_crc(p_1415->g_170.s6, "p_1415->g_170.s6", print_hash_value);
    transparent_crc(p_1415->g_170.s7, "p_1415->g_170.s7", print_hash_value);
    transparent_crc(p_1415->g_179, "p_1415->g_179", print_hash_value);
    transparent_crc(p_1415->g_199.f0, "p_1415->g_199.f0", print_hash_value);
    transparent_crc(p_1415->g_199.f1, "p_1415->g_199.f1", print_hash_value);
    transparent_crc(p_1415->g_199.f2, "p_1415->g_199.f2", print_hash_value);
    transparent_crc(p_1415->g_199.f3, "p_1415->g_199.f3", print_hash_value);
    transparent_crc(p_1415->g_199.f4, "p_1415->g_199.f4", print_hash_value);
    transparent_crc(p_1415->g_199.f5, "p_1415->g_199.f5", print_hash_value);
    transparent_crc(p_1415->g_199.f6, "p_1415->g_199.f6", print_hash_value);
    transparent_crc(p_1415->g_199.f7, "p_1415->g_199.f7", print_hash_value);
    transparent_crc(p_1415->g_199.f8.f0, "p_1415->g_199.f8.f0", print_hash_value);
    transparent_crc(p_1415->g_199.f8.f1, "p_1415->g_199.f8.f1", print_hash_value);
    transparent_crc(p_1415->g_199.f8.f2, "p_1415->g_199.f8.f2", print_hash_value);
    transparent_crc(p_1415->g_199.f9, "p_1415->g_199.f9", print_hash_value);
    transparent_crc(p_1415->g_211, "p_1415->g_211", print_hash_value);
    transparent_crc(p_1415->g_265, "p_1415->g_265", print_hash_value);
    transparent_crc(p_1415->g_268.s0, "p_1415->g_268.s0", print_hash_value);
    transparent_crc(p_1415->g_268.s1, "p_1415->g_268.s1", print_hash_value);
    transparent_crc(p_1415->g_268.s2, "p_1415->g_268.s2", print_hash_value);
    transparent_crc(p_1415->g_268.s3, "p_1415->g_268.s3", print_hash_value);
    transparent_crc(p_1415->g_268.s4, "p_1415->g_268.s4", print_hash_value);
    transparent_crc(p_1415->g_268.s5, "p_1415->g_268.s5", print_hash_value);
    transparent_crc(p_1415->g_268.s6, "p_1415->g_268.s6", print_hash_value);
    transparent_crc(p_1415->g_268.s7, "p_1415->g_268.s7", print_hash_value);
    transparent_crc(p_1415->g_268.s8, "p_1415->g_268.s8", print_hash_value);
    transparent_crc(p_1415->g_268.s9, "p_1415->g_268.s9", print_hash_value);
    transparent_crc(p_1415->g_268.sa, "p_1415->g_268.sa", print_hash_value);
    transparent_crc(p_1415->g_268.sb, "p_1415->g_268.sb", print_hash_value);
    transparent_crc(p_1415->g_268.sc, "p_1415->g_268.sc", print_hash_value);
    transparent_crc(p_1415->g_268.sd, "p_1415->g_268.sd", print_hash_value);
    transparent_crc(p_1415->g_268.se, "p_1415->g_268.se", print_hash_value);
    transparent_crc(p_1415->g_268.sf, "p_1415->g_268.sf", print_hash_value);
    transparent_crc(p_1415->g_303, "p_1415->g_303", print_hash_value);
    transparent_crc(p_1415->g_322.f0, "p_1415->g_322.f0", print_hash_value);
    transparent_crc(p_1415->g_322.f1, "p_1415->g_322.f1", print_hash_value);
    transparent_crc(p_1415->g_322.f2, "p_1415->g_322.f2", print_hash_value);
    transparent_crc(p_1415->g_534.x, "p_1415->g_534.x", print_hash_value);
    transparent_crc(p_1415->g_534.y, "p_1415->g_534.y", print_hash_value);
    transparent_crc(p_1415->g_534.z, "p_1415->g_534.z", print_hash_value);
    transparent_crc(p_1415->g_534.w, "p_1415->g_534.w", print_hash_value);
    transparent_crc(p_1415->g_538.s0, "p_1415->g_538.s0", print_hash_value);
    transparent_crc(p_1415->g_538.s1, "p_1415->g_538.s1", print_hash_value);
    transparent_crc(p_1415->g_538.s2, "p_1415->g_538.s2", print_hash_value);
    transparent_crc(p_1415->g_538.s3, "p_1415->g_538.s3", print_hash_value);
    transparent_crc(p_1415->g_538.s4, "p_1415->g_538.s4", print_hash_value);
    transparent_crc(p_1415->g_538.s5, "p_1415->g_538.s5", print_hash_value);
    transparent_crc(p_1415->g_538.s6, "p_1415->g_538.s6", print_hash_value);
    transparent_crc(p_1415->g_538.s7, "p_1415->g_538.s7", print_hash_value);
    transparent_crc(p_1415->g_538.s8, "p_1415->g_538.s8", print_hash_value);
    transparent_crc(p_1415->g_538.s9, "p_1415->g_538.s9", print_hash_value);
    transparent_crc(p_1415->g_538.sa, "p_1415->g_538.sa", print_hash_value);
    transparent_crc(p_1415->g_538.sb, "p_1415->g_538.sb", print_hash_value);
    transparent_crc(p_1415->g_538.sc, "p_1415->g_538.sc", print_hash_value);
    transparent_crc(p_1415->g_538.sd, "p_1415->g_538.sd", print_hash_value);
    transparent_crc(p_1415->g_538.se, "p_1415->g_538.se", print_hash_value);
    transparent_crc(p_1415->g_538.sf, "p_1415->g_538.sf", print_hash_value);
    transparent_crc(p_1415->g_540, "p_1415->g_540", print_hash_value);
    transparent_crc(p_1415->g_547, "p_1415->g_547", print_hash_value);
    transparent_crc(p_1415->g_617.s0, "p_1415->g_617.s0", print_hash_value);
    transparent_crc(p_1415->g_617.s1, "p_1415->g_617.s1", print_hash_value);
    transparent_crc(p_1415->g_617.s2, "p_1415->g_617.s2", print_hash_value);
    transparent_crc(p_1415->g_617.s3, "p_1415->g_617.s3", print_hash_value);
    transparent_crc(p_1415->g_617.s4, "p_1415->g_617.s4", print_hash_value);
    transparent_crc(p_1415->g_617.s5, "p_1415->g_617.s5", print_hash_value);
    transparent_crc(p_1415->g_617.s6, "p_1415->g_617.s6", print_hash_value);
    transparent_crc(p_1415->g_617.s7, "p_1415->g_617.s7", print_hash_value);
    transparent_crc(p_1415->g_618.x, "p_1415->g_618.x", print_hash_value);
    transparent_crc(p_1415->g_618.y, "p_1415->g_618.y", print_hash_value);
    transparent_crc(p_1415->g_637.s0, "p_1415->g_637.s0", print_hash_value);
    transparent_crc(p_1415->g_637.s1, "p_1415->g_637.s1", print_hash_value);
    transparent_crc(p_1415->g_637.s2, "p_1415->g_637.s2", print_hash_value);
    transparent_crc(p_1415->g_637.s3, "p_1415->g_637.s3", print_hash_value);
    transparent_crc(p_1415->g_637.s4, "p_1415->g_637.s4", print_hash_value);
    transparent_crc(p_1415->g_637.s5, "p_1415->g_637.s5", print_hash_value);
    transparent_crc(p_1415->g_637.s6, "p_1415->g_637.s6", print_hash_value);
    transparent_crc(p_1415->g_637.s7, "p_1415->g_637.s7", print_hash_value);
    transparent_crc(p_1415->g_637.s8, "p_1415->g_637.s8", print_hash_value);
    transparent_crc(p_1415->g_637.s9, "p_1415->g_637.s9", print_hash_value);
    transparent_crc(p_1415->g_637.sa, "p_1415->g_637.sa", print_hash_value);
    transparent_crc(p_1415->g_637.sb, "p_1415->g_637.sb", print_hash_value);
    transparent_crc(p_1415->g_637.sc, "p_1415->g_637.sc", print_hash_value);
    transparent_crc(p_1415->g_637.sd, "p_1415->g_637.sd", print_hash_value);
    transparent_crc(p_1415->g_637.se, "p_1415->g_637.se", print_hash_value);
    transparent_crc(p_1415->g_637.sf, "p_1415->g_637.sf", print_hash_value);
    transparent_crc(p_1415->g_703.f0, "p_1415->g_703.f0", print_hash_value);
    transparent_crc(p_1415->g_703.f1, "p_1415->g_703.f1", print_hash_value);
    transparent_crc(p_1415->g_703.f2, "p_1415->g_703.f2", print_hash_value);
    transparent_crc(p_1415->g_703.f3, "p_1415->g_703.f3", print_hash_value);
    transparent_crc(p_1415->g_703.f4, "p_1415->g_703.f4", print_hash_value);
    transparent_crc(p_1415->g_703.f5, "p_1415->g_703.f5", print_hash_value);
    transparent_crc(p_1415->g_703.f6, "p_1415->g_703.f6", print_hash_value);
    transparent_crc(p_1415->g_703.f7, "p_1415->g_703.f7", print_hash_value);
    transparent_crc(p_1415->g_703.f8.f0, "p_1415->g_703.f8.f0", print_hash_value);
    transparent_crc(p_1415->g_703.f8.f1, "p_1415->g_703.f8.f1", print_hash_value);
    transparent_crc(p_1415->g_703.f8.f2, "p_1415->g_703.f8.f2", print_hash_value);
    transparent_crc(p_1415->g_703.f9, "p_1415->g_703.f9", print_hash_value);
    transparent_crc(p_1415->g_727.f0, "p_1415->g_727.f0", print_hash_value);
    transparent_crc(p_1415->g_727.f1, "p_1415->g_727.f1", print_hash_value);
    transparent_crc(p_1415->g_727.f2, "p_1415->g_727.f2", print_hash_value);
    transparent_crc(p_1415->g_750.x, "p_1415->g_750.x", print_hash_value);
    transparent_crc(p_1415->g_750.y, "p_1415->g_750.y", print_hash_value);
    transparent_crc(p_1415->g_751.x, "p_1415->g_751.x", print_hash_value);
    transparent_crc(p_1415->g_751.y, "p_1415->g_751.y", print_hash_value);
    transparent_crc(p_1415->g_751.z, "p_1415->g_751.z", print_hash_value);
    transparent_crc(p_1415->g_751.w, "p_1415->g_751.w", print_hash_value);
    transparent_crc(p_1415->g_816, "p_1415->g_816", print_hash_value);
    transparent_crc(p_1415->g_822.s0, "p_1415->g_822.s0", print_hash_value);
    transparent_crc(p_1415->g_822.s1, "p_1415->g_822.s1", print_hash_value);
    transparent_crc(p_1415->g_822.s2, "p_1415->g_822.s2", print_hash_value);
    transparent_crc(p_1415->g_822.s3, "p_1415->g_822.s3", print_hash_value);
    transparent_crc(p_1415->g_822.s4, "p_1415->g_822.s4", print_hash_value);
    transparent_crc(p_1415->g_822.s5, "p_1415->g_822.s5", print_hash_value);
    transparent_crc(p_1415->g_822.s6, "p_1415->g_822.s6", print_hash_value);
    transparent_crc(p_1415->g_822.s7, "p_1415->g_822.s7", print_hash_value);
    transparent_crc(p_1415->g_822.s8, "p_1415->g_822.s8", print_hash_value);
    transparent_crc(p_1415->g_822.s9, "p_1415->g_822.s9", print_hash_value);
    transparent_crc(p_1415->g_822.sa, "p_1415->g_822.sa", print_hash_value);
    transparent_crc(p_1415->g_822.sb, "p_1415->g_822.sb", print_hash_value);
    transparent_crc(p_1415->g_822.sc, "p_1415->g_822.sc", print_hash_value);
    transparent_crc(p_1415->g_822.sd, "p_1415->g_822.sd", print_hash_value);
    transparent_crc(p_1415->g_822.se, "p_1415->g_822.se", print_hash_value);
    transparent_crc(p_1415->g_822.sf, "p_1415->g_822.sf", print_hash_value);
    transparent_crc(p_1415->g_861.s0, "p_1415->g_861.s0", print_hash_value);
    transparent_crc(p_1415->g_861.s1, "p_1415->g_861.s1", print_hash_value);
    transparent_crc(p_1415->g_861.s2, "p_1415->g_861.s2", print_hash_value);
    transparent_crc(p_1415->g_861.s3, "p_1415->g_861.s3", print_hash_value);
    transparent_crc(p_1415->g_861.s4, "p_1415->g_861.s4", print_hash_value);
    transparent_crc(p_1415->g_861.s5, "p_1415->g_861.s5", print_hash_value);
    transparent_crc(p_1415->g_861.s6, "p_1415->g_861.s6", print_hash_value);
    transparent_crc(p_1415->g_861.s7, "p_1415->g_861.s7", print_hash_value);
    transparent_crc(p_1415->g_861.s8, "p_1415->g_861.s8", print_hash_value);
    transparent_crc(p_1415->g_861.s9, "p_1415->g_861.s9", print_hash_value);
    transparent_crc(p_1415->g_861.sa, "p_1415->g_861.sa", print_hash_value);
    transparent_crc(p_1415->g_861.sb, "p_1415->g_861.sb", print_hash_value);
    transparent_crc(p_1415->g_861.sc, "p_1415->g_861.sc", print_hash_value);
    transparent_crc(p_1415->g_861.sd, "p_1415->g_861.sd", print_hash_value);
    transparent_crc(p_1415->g_861.se, "p_1415->g_861.se", print_hash_value);
    transparent_crc(p_1415->g_861.sf, "p_1415->g_861.sf", print_hash_value);
    transparent_crc(p_1415->g_874.x, "p_1415->g_874.x", print_hash_value);
    transparent_crc(p_1415->g_874.y, "p_1415->g_874.y", print_hash_value);
    transparent_crc(p_1415->g_922.s0, "p_1415->g_922.s0", print_hash_value);
    transparent_crc(p_1415->g_922.s1, "p_1415->g_922.s1", print_hash_value);
    transparent_crc(p_1415->g_922.s2, "p_1415->g_922.s2", print_hash_value);
    transparent_crc(p_1415->g_922.s3, "p_1415->g_922.s3", print_hash_value);
    transparent_crc(p_1415->g_922.s4, "p_1415->g_922.s4", print_hash_value);
    transparent_crc(p_1415->g_922.s5, "p_1415->g_922.s5", print_hash_value);
    transparent_crc(p_1415->g_922.s6, "p_1415->g_922.s6", print_hash_value);
    transparent_crc(p_1415->g_922.s7, "p_1415->g_922.s7", print_hash_value);
    transparent_crc(p_1415->g_930.x, "p_1415->g_930.x", print_hash_value);
    transparent_crc(p_1415->g_930.y, "p_1415->g_930.y", print_hash_value);
    transparent_crc(p_1415->g_1004.x, "p_1415->g_1004.x", print_hash_value);
    transparent_crc(p_1415->g_1004.y, "p_1415->g_1004.y", print_hash_value);
    transparent_crc(p_1415->g_1004.z, "p_1415->g_1004.z", print_hash_value);
    transparent_crc(p_1415->g_1004.w, "p_1415->g_1004.w", print_hash_value);
    transparent_crc(p_1415->g_1017.f0, "p_1415->g_1017.f0", print_hash_value);
    transparent_crc(p_1415->g_1017.f1, "p_1415->g_1017.f1", print_hash_value);
    transparent_crc(p_1415->g_1017.f2, "p_1415->g_1017.f2", print_hash_value);
    transparent_crc(p_1415->g_1017.f3, "p_1415->g_1017.f3", print_hash_value);
    transparent_crc(p_1415->g_1017.f4, "p_1415->g_1017.f4", print_hash_value);
    transparent_crc(p_1415->g_1017.f5, "p_1415->g_1017.f5", print_hash_value);
    transparent_crc(p_1415->g_1017.f6, "p_1415->g_1017.f6", print_hash_value);
    transparent_crc(p_1415->g_1017.f7, "p_1415->g_1017.f7", print_hash_value);
    transparent_crc(p_1415->g_1017.f8.f0, "p_1415->g_1017.f8.f0", print_hash_value);
    transparent_crc(p_1415->g_1017.f8.f1, "p_1415->g_1017.f8.f1", print_hash_value);
    transparent_crc(p_1415->g_1017.f8.f2, "p_1415->g_1017.f8.f2", print_hash_value);
    transparent_crc(p_1415->g_1017.f9, "p_1415->g_1017.f9", print_hash_value);
    transparent_crc(p_1415->g_1067, "p_1415->g_1067", print_hash_value);
    transparent_crc(p_1415->g_1081.f0, "p_1415->g_1081.f0", print_hash_value);
    transparent_crc(p_1415->g_1081.f1, "p_1415->g_1081.f1", print_hash_value);
    transparent_crc(p_1415->g_1081.f2, "p_1415->g_1081.f2", print_hash_value);
    transparent_crc(p_1415->g_1081.f3, "p_1415->g_1081.f3", print_hash_value);
    transparent_crc(p_1415->g_1081.f4, "p_1415->g_1081.f4", print_hash_value);
    transparent_crc(p_1415->g_1081.f5, "p_1415->g_1081.f5", print_hash_value);
    transparent_crc(p_1415->g_1081.f6, "p_1415->g_1081.f6", print_hash_value);
    transparent_crc(p_1415->g_1081.f7, "p_1415->g_1081.f7", print_hash_value);
    transparent_crc(p_1415->g_1081.f8.f0, "p_1415->g_1081.f8.f0", print_hash_value);
    transparent_crc(p_1415->g_1081.f8.f1, "p_1415->g_1081.f8.f1", print_hash_value);
    transparent_crc(p_1415->g_1081.f8.f2, "p_1415->g_1081.f8.f2", print_hash_value);
    transparent_crc(p_1415->g_1081.f9, "p_1415->g_1081.f9", print_hash_value);
    transparent_crc(p_1415->g_1082.f0, "p_1415->g_1082.f0", print_hash_value);
    transparent_crc(p_1415->g_1082.f1, "p_1415->g_1082.f1", print_hash_value);
    transparent_crc(p_1415->g_1082.f2, "p_1415->g_1082.f2", print_hash_value);
    transparent_crc(p_1415->g_1082.f3, "p_1415->g_1082.f3", print_hash_value);
    transparent_crc(p_1415->g_1082.f4, "p_1415->g_1082.f4", print_hash_value);
    transparent_crc(p_1415->g_1082.f5, "p_1415->g_1082.f5", print_hash_value);
    transparent_crc(p_1415->g_1082.f6, "p_1415->g_1082.f6", print_hash_value);
    transparent_crc(p_1415->g_1082.f7, "p_1415->g_1082.f7", print_hash_value);
    transparent_crc(p_1415->g_1082.f8.f0, "p_1415->g_1082.f8.f0", print_hash_value);
    transparent_crc(p_1415->g_1082.f8.f1, "p_1415->g_1082.f8.f1", print_hash_value);
    transparent_crc(p_1415->g_1082.f8.f2, "p_1415->g_1082.f8.f2", print_hash_value);
    transparent_crc(p_1415->g_1082.f9, "p_1415->g_1082.f9", print_hash_value);
    transparent_crc(p_1415->g_1089.s0, "p_1415->g_1089.s0", print_hash_value);
    transparent_crc(p_1415->g_1089.s1, "p_1415->g_1089.s1", print_hash_value);
    transparent_crc(p_1415->g_1089.s2, "p_1415->g_1089.s2", print_hash_value);
    transparent_crc(p_1415->g_1089.s3, "p_1415->g_1089.s3", print_hash_value);
    transparent_crc(p_1415->g_1089.s4, "p_1415->g_1089.s4", print_hash_value);
    transparent_crc(p_1415->g_1089.s5, "p_1415->g_1089.s5", print_hash_value);
    transparent_crc(p_1415->g_1089.s6, "p_1415->g_1089.s6", print_hash_value);
    transparent_crc(p_1415->g_1089.s7, "p_1415->g_1089.s7", print_hash_value);
    transparent_crc(p_1415->g_1090.s0, "p_1415->g_1090.s0", print_hash_value);
    transparent_crc(p_1415->g_1090.s1, "p_1415->g_1090.s1", print_hash_value);
    transparent_crc(p_1415->g_1090.s2, "p_1415->g_1090.s2", print_hash_value);
    transparent_crc(p_1415->g_1090.s3, "p_1415->g_1090.s3", print_hash_value);
    transparent_crc(p_1415->g_1090.s4, "p_1415->g_1090.s4", print_hash_value);
    transparent_crc(p_1415->g_1090.s5, "p_1415->g_1090.s5", print_hash_value);
    transparent_crc(p_1415->g_1090.s6, "p_1415->g_1090.s6", print_hash_value);
    transparent_crc(p_1415->g_1090.s7, "p_1415->g_1090.s7", print_hash_value);
    transparent_crc(p_1415->g_1090.s8, "p_1415->g_1090.s8", print_hash_value);
    transparent_crc(p_1415->g_1090.s9, "p_1415->g_1090.s9", print_hash_value);
    transparent_crc(p_1415->g_1090.sa, "p_1415->g_1090.sa", print_hash_value);
    transparent_crc(p_1415->g_1090.sb, "p_1415->g_1090.sb", print_hash_value);
    transparent_crc(p_1415->g_1090.sc, "p_1415->g_1090.sc", print_hash_value);
    transparent_crc(p_1415->g_1090.sd, "p_1415->g_1090.sd", print_hash_value);
    transparent_crc(p_1415->g_1090.se, "p_1415->g_1090.se", print_hash_value);
    transparent_crc(p_1415->g_1090.sf, "p_1415->g_1090.sf", print_hash_value);
    transparent_crc(p_1415->g_1101.x, "p_1415->g_1101.x", print_hash_value);
    transparent_crc(p_1415->g_1101.y, "p_1415->g_1101.y", print_hash_value);
    transparent_crc(p_1415->g_1104.x, "p_1415->g_1104.x", print_hash_value);
    transparent_crc(p_1415->g_1104.y, "p_1415->g_1104.y", print_hash_value);
    transparent_crc(p_1415->g_1111.s0, "p_1415->g_1111.s0", print_hash_value);
    transparent_crc(p_1415->g_1111.s1, "p_1415->g_1111.s1", print_hash_value);
    transparent_crc(p_1415->g_1111.s2, "p_1415->g_1111.s2", print_hash_value);
    transparent_crc(p_1415->g_1111.s3, "p_1415->g_1111.s3", print_hash_value);
    transparent_crc(p_1415->g_1111.s4, "p_1415->g_1111.s4", print_hash_value);
    transparent_crc(p_1415->g_1111.s5, "p_1415->g_1111.s5", print_hash_value);
    transparent_crc(p_1415->g_1111.s6, "p_1415->g_1111.s6", print_hash_value);
    transparent_crc(p_1415->g_1111.s7, "p_1415->g_1111.s7", print_hash_value);
    transparent_crc(p_1415->g_1119.x, "p_1415->g_1119.x", print_hash_value);
    transparent_crc(p_1415->g_1119.y, "p_1415->g_1119.y", print_hash_value);
    transparent_crc(p_1415->g_1136, "p_1415->g_1136", print_hash_value);
    transparent_crc(p_1415->g_1182.x, "p_1415->g_1182.x", print_hash_value);
    transparent_crc(p_1415->g_1182.y, "p_1415->g_1182.y", print_hash_value);
    transparent_crc(p_1415->g_1182.z, "p_1415->g_1182.z", print_hash_value);
    transparent_crc(p_1415->g_1182.w, "p_1415->g_1182.w", print_hash_value);
    transparent_crc(p_1415->g_1190.s0, "p_1415->g_1190.s0", print_hash_value);
    transparent_crc(p_1415->g_1190.s1, "p_1415->g_1190.s1", print_hash_value);
    transparent_crc(p_1415->g_1190.s2, "p_1415->g_1190.s2", print_hash_value);
    transparent_crc(p_1415->g_1190.s3, "p_1415->g_1190.s3", print_hash_value);
    transparent_crc(p_1415->g_1190.s4, "p_1415->g_1190.s4", print_hash_value);
    transparent_crc(p_1415->g_1190.s5, "p_1415->g_1190.s5", print_hash_value);
    transparent_crc(p_1415->g_1190.s6, "p_1415->g_1190.s6", print_hash_value);
    transparent_crc(p_1415->g_1190.s7, "p_1415->g_1190.s7", print_hash_value);
    transparent_crc(p_1415->g_1190.s8, "p_1415->g_1190.s8", print_hash_value);
    transparent_crc(p_1415->g_1190.s9, "p_1415->g_1190.s9", print_hash_value);
    transparent_crc(p_1415->g_1190.sa, "p_1415->g_1190.sa", print_hash_value);
    transparent_crc(p_1415->g_1190.sb, "p_1415->g_1190.sb", print_hash_value);
    transparent_crc(p_1415->g_1190.sc, "p_1415->g_1190.sc", print_hash_value);
    transparent_crc(p_1415->g_1190.sd, "p_1415->g_1190.sd", print_hash_value);
    transparent_crc(p_1415->g_1190.se, "p_1415->g_1190.se", print_hash_value);
    transparent_crc(p_1415->g_1190.sf, "p_1415->g_1190.sf", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_1415->g_1203[i][j], "p_1415->g_1203[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1415->g_1258.x, "p_1415->g_1258.x", print_hash_value);
    transparent_crc(p_1415->g_1258.y, "p_1415->g_1258.y", print_hash_value);
    transparent_crc(p_1415->g_1263.x, "p_1415->g_1263.x", print_hash_value);
    transparent_crc(p_1415->g_1263.y, "p_1415->g_1263.y", print_hash_value);
    transparent_crc(p_1415->g_1297.x, "p_1415->g_1297.x", print_hash_value);
    transparent_crc(p_1415->g_1297.y, "p_1415->g_1297.y", print_hash_value);
    transparent_crc(p_1415->g_1298.x, "p_1415->g_1298.x", print_hash_value);
    transparent_crc(p_1415->g_1298.y, "p_1415->g_1298.y", print_hash_value);
    transparent_crc(p_1415->g_1298.z, "p_1415->g_1298.z", print_hash_value);
    transparent_crc(p_1415->g_1298.w, "p_1415->g_1298.w", print_hash_value);
    transparent_crc(p_1415->g_1304.x, "p_1415->g_1304.x", print_hash_value);
    transparent_crc(p_1415->g_1304.y, "p_1415->g_1304.y", print_hash_value);
    transparent_crc(p_1415->g_1363.s0, "p_1415->g_1363.s0", print_hash_value);
    transparent_crc(p_1415->g_1363.s1, "p_1415->g_1363.s1", print_hash_value);
    transparent_crc(p_1415->g_1363.s2, "p_1415->g_1363.s2", print_hash_value);
    transparent_crc(p_1415->g_1363.s3, "p_1415->g_1363.s3", print_hash_value);
    transparent_crc(p_1415->g_1363.s4, "p_1415->g_1363.s4", print_hash_value);
    transparent_crc(p_1415->g_1363.s5, "p_1415->g_1363.s5", print_hash_value);
    transparent_crc(p_1415->g_1363.s6, "p_1415->g_1363.s6", print_hash_value);
    transparent_crc(p_1415->g_1363.s7, "p_1415->g_1363.s7", print_hash_value);
    transparent_crc(p_1415->g_1374.s0, "p_1415->g_1374.s0", print_hash_value);
    transparent_crc(p_1415->g_1374.s1, "p_1415->g_1374.s1", print_hash_value);
    transparent_crc(p_1415->g_1374.s2, "p_1415->g_1374.s2", print_hash_value);
    transparent_crc(p_1415->g_1374.s3, "p_1415->g_1374.s3", print_hash_value);
    transparent_crc(p_1415->g_1374.s4, "p_1415->g_1374.s4", print_hash_value);
    transparent_crc(p_1415->g_1374.s5, "p_1415->g_1374.s5", print_hash_value);
    transparent_crc(p_1415->g_1374.s6, "p_1415->g_1374.s6", print_hash_value);
    transparent_crc(p_1415->g_1374.s7, "p_1415->g_1374.s7", print_hash_value);
    transparent_crc(p_1415->g_1377.x, "p_1415->g_1377.x", print_hash_value);
    transparent_crc(p_1415->g_1377.y, "p_1415->g_1377.y", print_hash_value);
    transparent_crc(p_1415->g_1397.s0, "p_1415->g_1397.s0", print_hash_value);
    transparent_crc(p_1415->g_1397.s1, "p_1415->g_1397.s1", print_hash_value);
    transparent_crc(p_1415->g_1397.s2, "p_1415->g_1397.s2", print_hash_value);
    transparent_crc(p_1415->g_1397.s3, "p_1415->g_1397.s3", print_hash_value);
    transparent_crc(p_1415->g_1397.s4, "p_1415->g_1397.s4", print_hash_value);
    transparent_crc(p_1415->g_1397.s5, "p_1415->g_1397.s5", print_hash_value);
    transparent_crc(p_1415->g_1397.s6, "p_1415->g_1397.s6", print_hash_value);
    transparent_crc(p_1415->g_1397.s7, "p_1415->g_1397.s7", print_hash_value);
    transparent_crc(p_1415->g_1397.s8, "p_1415->g_1397.s8", print_hash_value);
    transparent_crc(p_1415->g_1397.s9, "p_1415->g_1397.s9", print_hash_value);
    transparent_crc(p_1415->g_1397.sa, "p_1415->g_1397.sa", print_hash_value);
    transparent_crc(p_1415->g_1397.sb, "p_1415->g_1397.sb", print_hash_value);
    transparent_crc(p_1415->g_1397.sc, "p_1415->g_1397.sc", print_hash_value);
    transparent_crc(p_1415->g_1397.sd, "p_1415->g_1397.sd", print_hash_value);
    transparent_crc(p_1415->g_1397.se, "p_1415->g_1397.se", print_hash_value);
    transparent_crc(p_1415->g_1397.sf, "p_1415->g_1397.sf", print_hash_value);
    transparent_crc(p_1415->g_1398.x, "p_1415->g_1398.x", print_hash_value);
    transparent_crc(p_1415->g_1398.y, "p_1415->g_1398.y", print_hash_value);
    transparent_crc(p_1415->g_1398.z, "p_1415->g_1398.z", print_hash_value);
    transparent_crc(p_1415->g_1398.w, "p_1415->g_1398.w", print_hash_value);
    transparent_crc(p_1415->g_1407.f0, "p_1415->g_1407.f0", print_hash_value);
    transparent_crc(p_1415->g_1407.f1, "p_1415->g_1407.f1", print_hash_value);
    transparent_crc(p_1415->g_1407.f2, "p_1415->g_1407.f2", print_hash_value);
    transparent_crc(p_1415->g_1407.f3, "p_1415->g_1407.f3", print_hash_value);
    transparent_crc(p_1415->g_1407.f4, "p_1415->g_1407.f4", print_hash_value);
    transparent_crc(p_1415->g_1407.f5, "p_1415->g_1407.f5", print_hash_value);
    transparent_crc(p_1415->g_1407.f6, "p_1415->g_1407.f6", print_hash_value);
    transparent_crc(p_1415->g_1407.f7, "p_1415->g_1407.f7", print_hash_value);
    transparent_crc(p_1415->g_1407.f8.f0, "p_1415->g_1407.f8.f0", print_hash_value);
    transparent_crc(p_1415->g_1407.f8.f1, "p_1415->g_1407.f8.f1", print_hash_value);
    transparent_crc(p_1415->g_1407.f8.f2, "p_1415->g_1407.f8.f2", print_hash_value);
    transparent_crc(p_1415->g_1407.f9, "p_1415->g_1407.f9", print_hash_value);
    transparent_crc(p_1415->g_1408.f0, "p_1415->g_1408.f0", print_hash_value);
    transparent_crc(p_1415->g_1408.f1, "p_1415->g_1408.f1", print_hash_value);
    transparent_crc(p_1415->g_1408.f2, "p_1415->g_1408.f2", print_hash_value);
    transparent_crc(p_1415->g_1408.f3, "p_1415->g_1408.f3", print_hash_value);
    transparent_crc(p_1415->g_1408.f4, "p_1415->g_1408.f4", print_hash_value);
    transparent_crc(p_1415->g_1408.f5, "p_1415->g_1408.f5", print_hash_value);
    transparent_crc(p_1415->g_1408.f6, "p_1415->g_1408.f6", print_hash_value);
    transparent_crc(p_1415->g_1408.f7, "p_1415->g_1408.f7", print_hash_value);
    transparent_crc(p_1415->g_1408.f8.f0, "p_1415->g_1408.f8.f0", print_hash_value);
    transparent_crc(p_1415->g_1408.f8.f1, "p_1415->g_1408.f8.f1", print_hash_value);
    transparent_crc(p_1415->g_1408.f8.f2, "p_1415->g_1408.f8.f2", print_hash_value);
    transparent_crc(p_1415->g_1408.f9, "p_1415->g_1408.f9", print_hash_value);
    transparent_crc(p_1415->v_collective, "p_1415->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 55; i++)
            transparent_crc(p_1415->g_special_values[i + 55 * get_linear_group_id()], "p_1415->g_special_values[i + 55 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 55; i++)
            transparent_crc(p_1415->l_special_values[i], "p_1415->l_special_values[i]", print_hash_value);
    transparent_crc(p_1415->l_comm_values[get_linear_local_id()], "p_1415->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1415->g_comm_values[get_linear_group_id() * 5 + get_linear_local_id()], "p_1415->g_comm_values[get_linear_group_id() * 5 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
