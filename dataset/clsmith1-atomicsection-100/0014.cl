// --atomics 33 ---fake_divergence -g 98,68,1 -l 7,17,1
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


// Seed: 14

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint32_t  f0;
   int8_t  f1;
   int8_t  f2;
   int32_t  f3;
};

union U1 {
   int64_t  f0;
   int32_t  f1;
};

union U2 {
   volatile int32_t  f0;
   volatile uint8_t  f1;
   uint32_t  f2;
   int8_t * f3;
   volatile int16_t  f4;
};

union U3 {
   uint32_t  f0;
   int8_t  f1;
   int8_t * f2;
   volatile int8_t  f3;
};

union U4 {
   volatile int32_t  f0;
   int8_t * f1;
   volatile int64_t  f2;
   volatile int32_t  f3;
};

union U5 {
   int64_t  f0;
   uint8_t  f1;
   uint64_t  f2;
   uint16_t  f3;
};

struct S6 {
    int16_t g_8;
    volatile int32_t g_32;
    int32_t g_33[7];
    int32_t g_34;
    union U0 g_48[1];
    union U5 g_63;
    union U2 g_65;
    uint32_t g_75[5][6];
    union U0 g_83;
    union U0 * volatile g_82[10];
    volatile union U4 g_91;
    int32_t g_95;
    int32_t g_98;
    volatile union U3 g_105;
    uint16_t g_106;
    uint32_t g_130;
    int8_t g_132;
    union U4 g_134[10];
    uint32_t g_150[1];
    int8_t *g_164;
    int32_t g_165;
    int32_t * volatile g_168;
    int32_t * volatile * volatile g_167;
    int32_t *g_175;
    int32_t **g_174;
    union U4 g_189;
    int64_t g_219;
    union U4 g_263;
    int32_t g_269;
    int32_t g_271;
    int16_t g_291[5][10][5];
    volatile union U3 g_324;
    union U0 *g_337;
    union U0 ** volatile g_336;
    int32_t * volatile g_339[2];
    int32_t * volatile g_340;
    int32_t * volatile g_341;
    volatile union U4 g_361;
    union U0 **g_367;
    union U0 ***g_366;
    int32_t g_379;
    uint64_t g_380[10];
    union U4 g_410[5][3];
    volatile union U3 g_432;
    union U5 g_481[5];
    int16_t g_520;
    int16_t g_523;
    int32_t g_534[2];
    uint64_t g_535;
    int64_t *g_552;
    union U2 g_578[10];
    volatile union U4 g_603[9][7][4];
    int16_t g_619;
    int8_t **g_624;
    uint64_t g_657[3];
    volatile union U2 g_661;
    union U4 g_674;
    uint64_t *g_690[3][10];
    uint64_t **g_689[3];
    uint64_t *g_718;
    uint64_t **g_717;
    int64_t g_725;
    union U4 g_753;
    uint8_t g_764;
    union U4 g_793[5][5];
    union U3 g_796;
    volatile int32_t g_876;
    uint32_t * volatile * volatile g_898;
    uint64_t ***g_921;
    volatile uint64_t g_947;
    volatile uint64_t *g_946;
    int32_t * volatile g_962;
    volatile int16_t g_965;
    volatile int16_t *g_964[7][3];
    volatile int16_t ** volatile g_963;
    union U1 g_1031;
    int32_t *g_1056;
    int32_t ** volatile g_1055;
    volatile uint32_t g_1065;
    uint64_t g_1076[9];
    volatile uint32_t g_1098;
    volatile union U4 g_1123[6][4][5];
    volatile union U2 g_1188;
    int32_t **g_1199;
    int32_t *** volatile g_1198[8];
    volatile union U2 g_1219;
    int8_t g_1242[5][9][4];
    volatile union U4 g_1266;
    volatile union U2 g_1273;
    volatile int8_t ** volatile **g_1278;
    union U4 g_1294;
    volatile union U2 g_1329;
    uint32_t **g_1332;
    uint32_t ***g_1331;
    volatile union U2 g_1335;
    volatile union U2 g_1372;
    volatile union U2 g_1376[8][9][3];
    volatile union U2 *g_1375;
    volatile union U4 *g_1388;
    volatile union U4 * volatile * volatile g_1387;
    union U4 g_1391;
    volatile int32_t g_1411[1];
    uint8_t g_1468;
    volatile uint8_t g_1474;
    int32_t g_1483[4][7];
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
union U1  func_1(struct S6 * p_1484);
int32_t  func_2(int32_t  p_3, int8_t * p_4, struct S6 * p_1484);
uint64_t  func_18(int32_t  p_19, int8_t * p_20, int8_t * p_21, uint32_t  p_22, union U0  p_23, struct S6 * p_1484);
int8_t * func_24(int8_t * p_25, uint16_t  p_26, struct S6 * p_1484);
union U1  func_27(int32_t  p_28, struct S6 * p_1484);
int8_t ** func_35(int8_t ** p_36, struct S6 * p_1484);
int8_t ** func_37(int8_t ** p_38, int32_t  p_39, struct S6 * p_1484);
int64_t  func_42(int64_t  p_43, uint32_t  p_44, union U0  p_45, int16_t  p_46, uint16_t  p_47, struct S6 * p_1484);
uint32_t  func_50(uint16_t  p_51, int64_t  p_52, struct S6 * p_1484);
union U4  func_55(union U5  p_56, union U0  p_57, struct S6 * p_1484);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1484->g_8 p_1484->g_1031 p_1484->g_336 p_1484->g_337 p_1484->g_83 p_1484->g_219 p_1484->g_174 p_1484->g_175 p_1484->g_624 p_1484->g_164 p_1484->g_98 p_1484->g_95 p_1484->g_657 p_1484->g_132 p_1484->g_552 p_1484->g_1055 p_1484->g_1065 p_1484->g_367 p_1484->g_963 p_1484->g_964 p_1484->g_725 p_1484->g_534 p_1484->g_1076 p_1484->g_947 p_1484->g_764 p_1484->g_165 p_1484->g_1098 p_1484->g_33 p_1484->g_150 p_1484->g_34 p_1484->g_1123 p_1484->g_366 p_1484->g_361.f0 p_1484->g_380 p_1484->g_271 p_1484->g_75 p_1484->g_65 p_1484->g_1031.f0 p_1484->g_379 p_1484->g_168 p_1484->g_1483
 * writes: p_1484->g_32 p_1484->g_33 p_1484->g_34 p_1484->g_95 p_1484->g_132 p_1484->g_271 p_1484->g_175 p_1484->g_1056 p_1484->g_1065 p_1484->g_725 p_1484->g_83 p_1484->g_534 p_1484->g_1076 p_1484->g_380 p_1484->g_1098 p_1484->g_1031.f0 p_1484->g_367 p_1484->g_219 p_1484->g_764 p_1484->g_63.f1 p_1484->g_481.f1 p_1484->g_150 p_1484->g_1123 p_1484->g_337 p_1484->g_1483
 */
union U1  func_1(struct S6 * p_1484)
{ /* block id: 4 */
    union U1 l_5 = {0L};
    uint64_t l_17 = 18446744073709551615UL;
    int8_t *l_1032[10][9] = {{&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132},{&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132},{&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132},{&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132},{&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132},{&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132},{&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132},{&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132},{&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132},{&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132,&p_1484->g_132}};
    union U0 l_1034 = {0x13A44B5BL};
    int32_t l_1480 = 4L;
    int32_t l_1481 = 0x657E227EL;
    int32_t *l_1482 = &p_1484->g_1483[2][1];
    int i, j;
    (*l_1482) |= (l_1481 = func_2((l_5 , (safe_add_func_int32_t_s_s((((+p_1484->g_8) >= (safe_div_func_int8_t_s_s((((l_1480 ^= (safe_add_func_int32_t_s_s(0x023F126CL, (p_1484->g_8 , (safe_rshift_func_uint16_t_u_u((safe_add_func_uint64_t_u_u(l_17, func_18(l_5.f0, func_24((func_27(p_1484->g_8, p_1484) , ((**p_1484->g_336) , l_1032[1][6])), p_1484->g_219, p_1484), (*p_1484->g_624), p_1484->g_98, l_1034, p_1484))), 2)))))) ^ p_1484->g_379) & 248UL), l_1481))) || l_1034.f0), l_17))), l_1032[1][6], p_1484));
    return p_1484->g_1031;
}


/* ------------------------------------------ */
/* 
 * reads : p_1484->g_168 p_1484->g_34
 * writes:
 */
int32_t  func_2(int32_t  p_3, int8_t * p_4, struct S6 * p_1484)
{ /* block id: 817 */
    return (*p_1484->g_168);
}


/* ------------------------------------------ */
/* 
 * reads : p_1484->g_95 p_1484->g_657 p_1484->g_175 p_1484->g_132 p_1484->g_552 p_1484->g_219 p_1484->g_174 p_1484->g_1055 p_1484->g_1065 p_1484->g_367 p_1484->g_337 p_1484->g_963 p_1484->g_964 p_1484->g_725 p_1484->g_534 p_1484->g_1076 p_1484->g_947 p_1484->g_764 p_1484->g_165 p_1484->g_1098 p_1484->g_33 p_1484->g_150 p_1484->g_34 p_1484->g_98 p_1484->g_1123 p_1484->g_366 p_1484->g_361.f0 p_1484->g_380 p_1484->g_271 p_1484->g_75 p_1484->g_8 p_1484->g_65 p_1484->g_1031.f0
 * writes: p_1484->g_95 p_1484->g_34 p_1484->g_132 p_1484->g_271 p_1484->g_175 p_1484->g_1056 p_1484->g_33 p_1484->g_1065 p_1484->g_725 p_1484->g_83 p_1484->g_534 p_1484->g_1076 p_1484->g_380 p_1484->g_1098 p_1484->g_1031.f0 p_1484->g_367 p_1484->g_219 p_1484->g_764 p_1484->g_63.f1 p_1484->g_481.f1 p_1484->g_150 p_1484->g_1123 p_1484->g_337
 */
uint64_t  func_18(int32_t  p_19, int8_t * p_20, int8_t * p_21, uint32_t  p_22, union U0  p_23, struct S6 * p_1484)
{ /* block id: 578 */
    int32_t l_1035 = (-9L);
    uint8_t *l_1043 = &p_1484->g_764;
    uint32_t *l_1049 = &p_1484->g_150[0];
    uint32_t **l_1048 = &l_1049;
    int32_t l_1053 = 0x5676F6C7L;
    int32_t l_1060 = 0x6C4A2750L;
    int32_t l_1061 = (-4L);
    int32_t l_1062[5][2] = {{0x2B507CE0L,(-1L)},{0x2B507CE0L,(-1L)},{0x2B507CE0L,(-1L)},{0x2B507CE0L,(-1L)},{0x2B507CE0L,(-1L)}};
    int16_t *l_1068 = (void*)0;
    int16_t l_1229[7][7][5] = {{{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L}},{{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L}},{{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L}},{{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L}},{{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L}},{{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L}},{{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L},{0x47DCL,0L,0x07A4L,0L,1L}}};
    uint64_t *l_1286 = &p_1484->g_657[2];
    int64_t **l_1339 = (void*)0;
    uint16_t l_1347 = 0x9680L;
    union U4 *l_1390 = &p_1484->g_1391;
    union U4 **l_1389 = &l_1390;
    int64_t l_1404 = 1L;
    union U0 *l_1470 = &p_1484->g_83;
    int i, j, k;
    for (p_1484->g_95 = 0; (p_1484->g_95 <= 2); p_1484->g_95 += 1)
    { /* block id: 581 */
        uint8_t *l_1042 = &p_1484->g_764;
        uint32_t ***l_1050 = &l_1048;
        uint32_t **l_1051 = &l_1049;
        int8_t *l_1052 = &p_1484->g_132;
        int32_t l_1054 = 0x2D5A19DDL;
        int32_t l_1063 = (-1L);
        int32_t l_1064 = 0x485F003EL;
        int8_t l_1072 = 0x06L;
        int32_t l_1073 = 8L;
        int32_t l_1074 = 0L;
        int32_t l_1075 = 0x76AA4E35L;
        int64_t **l_1079 = &p_1484->g_552;
        int32_t l_1103 = 0x6F15D9CCL;
        union U0 l_1128 = {0UL};
        int32_t l_1167[8][3] = {{0x74263873L,2L,0x11F6DF55L},{0x74263873L,2L,0x11F6DF55L},{0x74263873L,2L,0x11F6DF55L},{0x74263873L,2L,0x11F6DF55L},{0x74263873L,2L,0x11F6DF55L},{0x74263873L,2L,0x11F6DF55L},{0x74263873L,2L,0x11F6DF55L},{0x74263873L,2L,0x11F6DF55L}};
        int32_t *l_1201 = &p_1484->g_269;
        int32_t **l_1200 = &l_1201;
        int16_t **l_1313 = &l_1068;
        int8_t l_1410 = 0x4BL;
        int32_t l_1415 = (-1L);
        uint32_t l_1435 = 0UL;
        int32_t * volatile l_1473 = &l_1062[4][0];/* VOLATILE GLOBAL l_1473 */
        uint64_t l_1477[1];
        int i, j;
        for (i = 0; i < 1; i++)
            l_1477[i] = 0UL;
        (*p_1484->g_175) = p_1484->g_657[p_1484->g_95];
        if ((l_1054 |= (((l_1053 |= ((7L & ((l_1035 | (1UL >= (safe_lshift_func_uint16_t_u_s((((((2UL == p_22) != ((safe_add_func_int64_t_s_s(((safe_sub_func_uint32_t_u_u((l_1042 != l_1043), (safe_div_func_int8_t_s_s(((*l_1052) &= (safe_lshift_func_uint16_t_u_u(0x4B55L, (((*l_1050) = l_1048) == l_1051)))), l_1035)))) , p_22), (*p_1484->g_552))) <= l_1035)) < 255UL) , p_23.f0) , 0x7AEAL), 10)))) , l_1035)) > 0x7D51L)) || (*p_1484->g_552)) , (-1L))))
        { /* block id: 587 */
            return p_23.f0;
        }
        else
        { /* block id: 589 */
            int32_t *l_1058 = &p_1484->g_33[3];
            int32_t *l_1059[8][8][1] = {{{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98}},{{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98}},{{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98}},{{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98}},{{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98}},{{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98}},{{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98}},{{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98},{&p_1484->g_98}}};
            union U0 **l_1135[1];
            int i, j, k;
            for (i = 0; i < 1; i++)
                l_1135[i] = &p_1484->g_337;
            for (p_1484->g_271 = 2; (p_1484->g_271 >= 0); p_1484->g_271 -= 1)
            { /* block id: 592 */
                uint32_t l_1057 = 9UL;
                int i;
                (*p_1484->g_1055) = ((*p_1484->g_174) = &p_19);
                p_1484->g_33[(p_1484->g_95 + 1)] = l_1057;
            }
            ++p_1484->g_1065;
            for (p_1484->g_725 = 1; (p_1484->g_725 >= 0); p_1484->g_725 -= 1)
            { /* block id: 600 */
                int16_t l_1069[3];
                int32_t l_1070 = 0x7B4E5310L;
                int32_t *l_1134 = &l_1061;
                int i;
                for (i = 0; i < 3; i++)
                    l_1069[i] = 1L;
                p_1484->g_534[p_1484->g_725] &= ((((**p_1484->g_367) = p_23) , l_1068) == (*p_1484->g_963));
                for (l_1063 = 0; (l_1063 <= 2); l_1063 += 1)
                { /* block id: 605 */
                    int32_t l_1071[1];
                    int64_t ***l_1080 = &l_1079;
                    int8_t l_1097 = (-1L);
                    int i, j;
                    for (i = 0; i < 1; i++)
                        l_1071[i] = (-1L);
                    --p_1484->g_1076[6];
                    (*p_1484->g_175) = (&p_1484->g_552 == ((*l_1080) = l_1079));
                    l_1073 |= (~((p_1484->g_380[(p_1484->g_725 + 6)] = p_1484->g_534[p_1484->g_725]) <= ((safe_mul_func_uint16_t_u_u(p_19, (safe_lshift_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(p_1484->g_947, ((((p_23 , (1L <= (safe_lshift_func_int8_t_s_u((!p_1484->g_534[p_1484->g_725]), (((safe_mul_func_uint16_t_u_u(p_22, p_1484->g_725)) , (((+((safe_mul_func_uint16_t_u_u((((safe_div_func_uint64_t_u_u(p_22, (-8L))) == 0x3D9A6DFCL) < p_1484->g_764), l_1063)) == l_1063)) ^ 0x21FFL) == 65535UL)) > p_19))))) & l_1097) <= p_1484->g_165) != l_1075))), 5)))) != p_1484->g_1076[2])));
                }
                p_1484->g_1098++;
                l_1054 &= (safe_lshift_func_uint16_t_u_s(((l_1103 > p_1484->g_657[p_1484->g_95]) > ((safe_sub_func_uint32_t_u_u((l_1062[1][0] |= (p_19 , ((((&l_1069[1] != ((safe_sub_func_uint64_t_u_u((safe_mod_func_int8_t_s_s((l_1035 ^ ((safe_mod_func_uint64_t_u_u((*l_1058), (safe_sub_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_s(p_1484->g_150[0], (safe_add_func_int32_t_s_s(p_22, (5UL & (*l_1058)))))), 0UL)))) , (*p_1484->g_175))), l_1103)), l_1064)) , (*p_1484->g_963))) < p_19) , p_22) > p_1484->g_98))), 0x4C5C7769L)) | l_1053)), p_19));
                for (p_1484->g_1031.f0 = 0; (p_1484->g_1031.f0 <= 2); p_1484->g_1031.f0 += 1)
                { /* block id: 617 */
                    int16_t *l_1122 = &l_1069[1];
                    int32_t l_1133 = 0x232176F5L;
                    (*p_1484->g_175) ^= ((!((*p_1484->g_552) >= ((safe_mul_func_uint16_t_u_u(((l_1035 <= (*p_1484->g_552)) != ((((*l_1052) = (safe_lshift_func_int16_t_s_s(p_1484->g_657[p_1484->g_95], ((*l_1122) |= p_1484->g_657[p_1484->g_95])))) && ((p_1484->g_1123[2][3][2] , (((((*l_1058) |= l_1062[3][1]) | (l_1061 = ((safe_div_func_int16_t_s_s((safe_mod_func_uint16_t_u_u((l_1128 , (safe_rshift_func_int16_t_s_u((((safe_mul_func_uint8_t_u_u((l_1073 , l_1069[1]), p_1484->g_150[0])) > (-3L)) == FAKE_DIVERGE(p_1484->global_1_offset, get_global_id(1), 10)), 3))), 0x3A9CL)), p_23.f0)) > 0x113EL))) > l_1133) , &p_1484->g_341)) != (void*)0)) != FAKE_DIVERGE(p_1484->group_2_offset, get_group_id(2), 10))), 1L)) , l_1069[0]))) > l_1133);
                    l_1134 = &p_19;
                    return p_22;
                }
            }
            l_1063 |= (((((p_23.f0 >= (((((((**l_1079) = (l_1135[0] == ((*p_1484->g_366) = (l_1060 , l_1135[0])))) != ((p_22 | (GROUP_DIVERGE(1, 1) || ((safe_lshift_func_uint8_t_u_s((safe_mul_func_int8_t_s_s((~(safe_rshift_func_uint8_t_u_u((p_1484->g_63.f1 = (safe_add_func_int64_t_s_s((p_19 < (GROUP_DIVERGE(2, 1) == (safe_rshift_func_int8_t_s_s(p_1484->g_657[p_1484->g_95], ((0x670F0EFE29D6CDCDL >= (safe_sub_func_uint32_t_u_u(((((*l_1042)++) != ((safe_mul_func_uint16_t_u_u(((p_22 , p_19) >= (*l_1058)), 65533UL)) & 7L)) & (-1L)), 0x39C79FA7L))) , 0x26L))))), p_1484->g_361.f0))), l_1053))), GROUP_DIVERGE(2, 1))), l_1053)) < (*l_1058)))) > 4294967295UL)) && p_19) == 0xA76B8BB1L) < GROUP_DIVERGE(0, 1)) , p_22)) <= 0x856F1B03L) < p_1484->g_534[1]) , p_19) == p_1484->g_380[7]);
        }
        for (p_1484->g_219 = 2; (p_1484->g_219 >= 0); p_1484->g_219 -= 1)
        { /* block id: 635 */
            uint32_t l_1175 = 4294967290UL;
            uint32_t l_1182[9][3] = {{4294967295UL,0xAE545C41L,4294967289UL},{4294967295UL,0xAE545C41L,4294967289UL},{4294967295UL,0xAE545C41L,4294967289UL},{4294967295UL,0xAE545C41L,4294967289UL},{4294967295UL,0xAE545C41L,4294967289UL},{4294967295UL,0xAE545C41L,4294967289UL},{4294967295UL,0xAE545C41L,4294967289UL},{4294967295UL,0xAE545C41L,4294967289UL},{4294967295UL,0xAE545C41L,4294967289UL}};
            int i, j;
            if ((atomic_inc(&p_1484->g_atomic_input[33 * get_linear_group_id() + 20]) == 2))
            { /* block id: 637 */
                int32_t l_1153 = 0L;
                int32_t *l_1152 = &l_1153;
                union U0 *l_1154 = (void*)0;
                union U0 l_1156 = {0x9F12F156L};
                union U0 *l_1155[6] = {&l_1156,(void*)0,&l_1156,&l_1156,(void*)0,&l_1156};
                int i;
                l_1152 = (void*)0;
                l_1155[2] = l_1154;
                unsigned int result = 0;
                result += l_1153;
                result += l_1156.f0;
                result += l_1156.f1;
                result += l_1156.f2;
                result += l_1156.f3;
                atomic_add(&p_1484->g_special_values[33 * get_linear_group_id() + 20], result);
            }
            else
            { /* block id: 640 */
                (1 + 1);
            }
            (*p_1484->g_174) = &p_19;
            for (p_1484->g_764 = 0; (p_1484->g_764 <= 2); p_1484->g_764 += 1)
            { /* block id: 646 */
                int8_t l_1176 = 0x4AL;
                int32_t l_1179 = 1L;
                for (p_1484->g_271 = 0; (p_1484->g_271 <= 2); p_1484->g_271 += 1)
                { /* block id: 649 */
                    uint64_t *l_1164 = &p_1484->g_380[3];
                    uint8_t *l_1174 = &p_1484->g_481[4].f1;
                    uint16_t *l_1177 = (void*)0;
                    int32_t l_1178 = 0L;
                    int i, j;
                    (*p_1484->g_174) = &p_19;
                    p_19 = ((p_1484->g_75[p_1484->g_95][(p_1484->g_271 + 2)] > l_1074) | ((safe_div_func_int16_t_s_s((safe_add_func_uint16_t_u_u(((((((l_1179 = ((safe_mul_func_uint16_t_u_u(p_23.f0, (l_1178 = ((safe_unary_minus_func_uint8_t_u((l_1176 ^= ((((*l_1164) = p_19) || (((**l_1051) = ((((safe_mul_func_int16_t_s_s(((l_1167[5][2] & (-1L)) > p_22), FAKE_DIVERGE(p_1484->local_2_offset, get_local_id(2), 10))) != ((1UL ^ (safe_mod_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s((safe_lshift_func_uint8_t_u_s(((*l_1174) = (p_23 , 1UL)), p_23.f0)), 5)), 9UL))) & p_1484->g_657[p_1484->g_95])) < p_1484->g_657[p_1484->g_95]) <= l_1103)) , l_1175)) | l_1062[0][1])))) && (*p_1484->g_552))))) != p_1484->g_75[p_1484->g_95][(p_1484->g_271 + 2)])) == 0x045359C1L) >= l_1175) | l_1035) && 0L) && l_1176), p_1484->g_8)), l_1074)) && l_1060));
                }
                if ((safe_lshift_func_int16_t_s_s(l_1182[5][1], 6)))
                { /* block id: 659 */
                    (**p_1484->g_174) |= l_1060;
                    for (l_1128.f3 = 0; l_1128.f3 < 6; l_1128.f3 += 1)
                    {
                        for (p_23.f2 = 0; p_23.f2 < 4; p_23.f2 += 1)
                        {
                            for (l_1176 = 0; l_1176 < 5; l_1176 += 1)
                            {
                                union U4 tmp = {{0L}};
                                p_1484->g_1123[l_1128.f3][p_23.f2][l_1176] = tmp;
                            }
                        }
                    }
                }
                else
                { /* block id: 662 */
                    (*p_1484->g_174) = (p_1484->g_65 , (*p_1484->g_174));
                    (*p_1484->g_367) = &p_23;
                    (*p_1484->g_174) = &p_19;
                }
            }
        }
        for (p_1484->g_1031.f0 = 0; (p_1484->g_1031.f0 <= 2); p_1484->g_1031.f0 += 1)
        { /* block id: 671 */
            int8_t *l_1185 = &l_1072;
            uint16_t **l_1189 = (void*)0;
            uint16_t *l_1191[3][1];
            uint16_t **l_1190 = &l_1191[2][0];
            int32_t l_1204 = 0x57EA0C95L;
            uint32_t l_1244 = 4UL;
            uint64_t l_1346[5];
            int32_t l_1413 = 0x7F00F735L;
            int32_t l_1414 = 1L;
            int32_t l_1416 = 0x7DFF80A9L;
            int32_t *l_1426 = &p_1484->g_271;
            int32_t l_1453 = (-10L);
            int i, j;
            for (i = 0; i < 3; i++)
            {
                for (j = 0; j < 1; j++)
                    l_1191[i][j] = (void*)0;
            }
            for (i = 0; i < 5; i++)
                l_1346[i] = 18446744073709551610UL;
            (1 + 1);
        }
    }
    return p_22;
}


/* ------------------------------------------ */
/* 
 * reads : p_1484->g_174 p_1484->g_175
 * writes: p_1484->g_34
 */
int8_t * func_24(int8_t * p_25, uint16_t  p_26, struct S6 * p_1484)
{ /* block id: 575 */
    int8_t *l_1033 = (void*)0;
    (**p_1484->g_174) = p_26;
    return l_1033;
}


/* ------------------------------------------ */
/* 
 * reads : p_1484->g_1031
 * writes: p_1484->g_32 p_1484->g_33 p_1484->g_34
 */
union U1  func_27(int32_t  p_28, struct S6 * p_1484)
{ /* block id: 5 */
    int8_t l_31[1][8][1] = {{{2L},{2L},{2L},{2L},{2L},{2L},{2L},{2L}}};
    int8_t *l_41 = &l_31[0][5][0];
    int8_t **l_40 = &l_41;
    union U5 l_58 = {7L};
    union U0 l_64 = {0xDCAF6DDFL};
    int i, j, k;
    for (p_28 = 0; (p_28 == 12); p_28 = safe_add_func_uint64_t_u_u(p_28, 1))
    { /* block id: 8 */
        union U0 *l_49[7][7] = {{&p_1484->g_48[0],&p_1484->g_48[0],&p_1484->g_48[0],(void*)0,&p_1484->g_48[0],(void*)0,&p_1484->g_48[0]},{&p_1484->g_48[0],&p_1484->g_48[0],&p_1484->g_48[0],(void*)0,&p_1484->g_48[0],(void*)0,&p_1484->g_48[0]},{&p_1484->g_48[0],&p_1484->g_48[0],&p_1484->g_48[0],(void*)0,&p_1484->g_48[0],(void*)0,&p_1484->g_48[0]},{&p_1484->g_48[0],&p_1484->g_48[0],&p_1484->g_48[0],(void*)0,&p_1484->g_48[0],(void*)0,&p_1484->g_48[0]},{&p_1484->g_48[0],&p_1484->g_48[0],&p_1484->g_48[0],(void*)0,&p_1484->g_48[0],(void*)0,&p_1484->g_48[0]},{&p_1484->g_48[0],&p_1484->g_48[0],&p_1484->g_48[0],(void*)0,&p_1484->g_48[0],(void*)0,&p_1484->g_48[0]},{&p_1484->g_48[0],&p_1484->g_48[0],&p_1484->g_48[0],(void*)0,&p_1484->g_48[0],(void*)0,&p_1484->g_48[0]}};
        union U5 *l_59 = &l_58;
        union U5 *l_60 = (void*)0;
        union U5 *l_61 = (void*)0;
        union U5 *l_62[1];
        int8_t *l_190 = (void*)0;
        int8_t ***l_623[8] = {&l_40,(void*)0,&l_40,&l_40,(void*)0,&l_40,&l_40,(void*)0};
        int i, j;
        for (i = 0; i < 1; i++)
            l_62[i] = &p_1484->g_63;
        for (p_1484->g_32 = 0; p_1484->g_32 < 1; p_1484->g_32 += 1)
        {
            for (p_1484->g_33[3] = 0; p_1484->g_33[3] < 8; p_1484->g_33[3] += 1)
            {
                for (p_1484->g_34 = 0; p_1484->g_34 < 1; p_1484->g_34 += 1)
                {
                    l_31[p_1484->g_32][p_1484->g_33[3]][p_1484->g_34] = 1L;
                }
            }
        }
    }
    return p_1484->g_1031;
}


/* ------------------------------------------ */
/* 
 * reads : p_1484->g_189.f0 p_1484->g_534 p_1484->g_520 p_1484->g_552 p_1484->g_150 p_1484->g_535 p_1484->g_219 p_1484->g_33 p_1484->g_661 p_1484->g_174 p_1484->g_481 p_1484->g_674 p_1484->g_523 p_1484->g_75 p_1484->g_324.f0 p_1484->g_619 p_1484->g_717 p_1484->g_725 p_1484->g_34 p_1484->g_380 p_1484->g_167 p_1484->g_168 p_1484->g_366 p_1484->g_367 p_1484->g_578 p_1484->g_753 p_1484->g_361.f0 p_1484->g_8 p_1484->g_764 p_1484->g_337 p_1484->g_48 p_1484->g_83 p_1484->g_95 p_1484->g_793 p_1484->g_796 p_1484->g_269 p_1484->g_130 p_1484->g_32 p_1484->g_91.f0 p_1484->g_98 p_1484->g_876 p_1484->g_291 p_1484->g_134 p_1484->g_898 p_1484->g_132 p_1484->g_603.f0 p_1484->g_106 p_1484->g_718 p_1484->g_946 p_1484->g_63.f1 p_1484->g_657 p_1484->g_962 p_1484->g_963
 * writes: p_1484->g_535 p_1484->g_219 p_1484->g_63.f1 p_1484->g_83.f2 p_1484->g_175 p_1484->g_33 p_1484->g_689 p_1484->g_291 p_1484->g_619 p_1484->g_717 p_1484->g_83.f3 p_1484->g_34 p_1484->g_63.f2 p_1484->g_337 p_1484->g_764 p_1484->g_95 p_1484->g_165 p_1484->g_725 p_1484->g_269 p_1484->g_48.f1 p_1484->g_98 p_1484->g_552 p_1484->g_921 p_1484->g_106 p_1484->g_963 p_1484->g_523
 */
int8_t ** func_35(int8_t ** p_36, struct S6 * p_1484)
{ /* block id: 310 */
    int32_t l_625 = 1L;
    int8_t ***l_633 = &p_1484->g_624;
    int8_t ****l_632 = &l_633;
    uint8_t *l_636 = &p_1484->g_63.f1;
    int32_t l_639 = (-10L);
    int32_t l_640 = 0x7D1C5B83L;
    uint8_t l_641 = 0xC0L;
    uint64_t *l_658 = &p_1484->g_657[0];
    int8_t l_681 = 0x24L;
    uint64_t *l_688 = &p_1484->g_535;
    uint64_t **l_687[3][8][7] = {{{&l_688,&l_688,&l_688,&l_688,&l_688,&l_688,&l_688},{&l_688,&l_688,&l_688,&l_688,&l_688,&l_688,&l_688},{&l_688,&l_688,&l_688,&l_688,&l_688,&l_688,&l_688},{&l_688,&l_688,&l_688,&l_688,&l_688,&l_688,&l_688},{&l_688,&l_688,&l_688,&l_688,&l_688,&l_688,&l_688},{&l_688,&l_688,&l_688,&l_688,&l_688,&l_688,&l_688},{&l_688,&l_688,&l_688,&l_688,&l_688,&l_688,&l_688},{&l_688,&l_688,&l_688,&l_688,&l_688,&l_688,&l_688}},{{&l_688,&l_688,&l_688,&l_688,&l_688,&l_688,&l_688},{&l_688,&l_688,&l_688,&l_688,&l_688,&l_688,&l_688},{&l_688,&l_688,&l_688,&l_688,&l_688,&l_688,&l_688},{&l_688,&l_688,&l_688,&l_688,&l_688,&l_688,&l_688},{&l_688,&l_688,&l_688,&l_688,&l_688,&l_688,&l_688},{&l_688,&l_688,&l_688,&l_688,&l_688,&l_688,&l_688},{&l_688,&l_688,&l_688,&l_688,&l_688,&l_688,&l_688},{&l_688,&l_688,&l_688,&l_688,&l_688,&l_688,&l_688}},{{&l_688,&l_688,&l_688,&l_688,&l_688,&l_688,&l_688},{&l_688,&l_688,&l_688,&l_688,&l_688,&l_688,&l_688},{&l_688,&l_688,&l_688,&l_688,&l_688,&l_688,&l_688},{&l_688,&l_688,&l_688,&l_688,&l_688,&l_688,&l_688},{&l_688,&l_688,&l_688,&l_688,&l_688,&l_688,&l_688},{&l_688,&l_688,&l_688,&l_688,&l_688,&l_688,&l_688},{&l_688,&l_688,&l_688,&l_688,&l_688,&l_688,&l_688},{&l_688,&l_688,&l_688,&l_688,&l_688,&l_688,&l_688}}};
    int32_t l_756[6];
    uint8_t *l_759 = (void*)0;
    uint8_t *l_760 = &p_1484->g_63.f1;
    uint8_t *l_761 = &p_1484->g_481[4].f1;
    uint8_t *l_762 = &p_1484->g_63.f1;
    uint8_t *l_763[4][6] = {{&l_641,&l_641,(void*)0,&l_641,(void*)0,&l_641},{&l_641,&l_641,(void*)0,&l_641,(void*)0,&l_641},{&l_641,&l_641,(void*)0,&l_641,(void*)0,&l_641},{&l_641,&l_641,(void*)0,&l_641,(void*)0,&l_641}};
    union U0 ***l_803[5][5][7] = {{{&p_1484->g_367,&p_1484->g_367,&p_1484->g_367,(void*)0,(void*)0,&p_1484->g_367,&p_1484->g_367},{&p_1484->g_367,&p_1484->g_367,&p_1484->g_367,(void*)0,(void*)0,&p_1484->g_367,&p_1484->g_367},{&p_1484->g_367,&p_1484->g_367,&p_1484->g_367,(void*)0,(void*)0,&p_1484->g_367,&p_1484->g_367},{&p_1484->g_367,&p_1484->g_367,&p_1484->g_367,(void*)0,(void*)0,&p_1484->g_367,&p_1484->g_367},{&p_1484->g_367,&p_1484->g_367,&p_1484->g_367,(void*)0,(void*)0,&p_1484->g_367,&p_1484->g_367}},{{&p_1484->g_367,&p_1484->g_367,&p_1484->g_367,(void*)0,(void*)0,&p_1484->g_367,&p_1484->g_367},{&p_1484->g_367,&p_1484->g_367,&p_1484->g_367,(void*)0,(void*)0,&p_1484->g_367,&p_1484->g_367},{&p_1484->g_367,&p_1484->g_367,&p_1484->g_367,(void*)0,(void*)0,&p_1484->g_367,&p_1484->g_367},{&p_1484->g_367,&p_1484->g_367,&p_1484->g_367,(void*)0,(void*)0,&p_1484->g_367,&p_1484->g_367},{&p_1484->g_367,&p_1484->g_367,&p_1484->g_367,(void*)0,(void*)0,&p_1484->g_367,&p_1484->g_367}},{{&p_1484->g_367,&p_1484->g_367,&p_1484->g_367,(void*)0,(void*)0,&p_1484->g_367,&p_1484->g_367},{&p_1484->g_367,&p_1484->g_367,&p_1484->g_367,(void*)0,(void*)0,&p_1484->g_367,&p_1484->g_367},{&p_1484->g_367,&p_1484->g_367,&p_1484->g_367,(void*)0,(void*)0,&p_1484->g_367,&p_1484->g_367},{&p_1484->g_367,&p_1484->g_367,&p_1484->g_367,(void*)0,(void*)0,&p_1484->g_367,&p_1484->g_367},{&p_1484->g_367,&p_1484->g_367,&p_1484->g_367,(void*)0,(void*)0,&p_1484->g_367,&p_1484->g_367}},{{&p_1484->g_367,&p_1484->g_367,&p_1484->g_367,(void*)0,(void*)0,&p_1484->g_367,&p_1484->g_367},{&p_1484->g_367,&p_1484->g_367,&p_1484->g_367,(void*)0,(void*)0,&p_1484->g_367,&p_1484->g_367},{&p_1484->g_367,&p_1484->g_367,&p_1484->g_367,(void*)0,(void*)0,&p_1484->g_367,&p_1484->g_367},{&p_1484->g_367,&p_1484->g_367,&p_1484->g_367,(void*)0,(void*)0,&p_1484->g_367,&p_1484->g_367},{&p_1484->g_367,&p_1484->g_367,&p_1484->g_367,(void*)0,(void*)0,&p_1484->g_367,&p_1484->g_367}},{{&p_1484->g_367,&p_1484->g_367,&p_1484->g_367,(void*)0,(void*)0,&p_1484->g_367,&p_1484->g_367},{&p_1484->g_367,&p_1484->g_367,&p_1484->g_367,(void*)0,(void*)0,&p_1484->g_367,&p_1484->g_367},{&p_1484->g_367,&p_1484->g_367,&p_1484->g_367,(void*)0,(void*)0,&p_1484->g_367,&p_1484->g_367},{&p_1484->g_367,&p_1484->g_367,&p_1484->g_367,(void*)0,(void*)0,&p_1484->g_367,&p_1484->g_367},{&p_1484->g_367,&p_1484->g_367,&p_1484->g_367,(void*)0,(void*)0,&p_1484->g_367,&p_1484->g_367}}};
    int64_t l_867[8][7][4] = {{{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL}},{{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL}},{{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL}},{{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL}},{{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL}},{{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL}},{{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL}},{{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL},{(-7L),1L,0x5178AFE22F83D61EL,0x5178AFE22F83D61EL}}};
    uint64_t ***l_927[10] = {&p_1484->g_717,(void*)0,&p_1484->g_717,(void*)0,&p_1484->g_717,&p_1484->g_717,(void*)0,&p_1484->g_717,(void*)0,&p_1484->g_717};
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_756[i] = 0x4E77DE8DL;
    if ((l_625 || (safe_div_func_uint64_t_u_u(p_1484->g_189.f0, (safe_mod_func_uint64_t_u_u(((((*l_636) = (((safe_mul_func_uint16_t_u_u((((p_1484->g_534[1] && (-10L)) ^ ((((*l_632) = &p_36) == (void*)0) != GROUP_DIVERGE(1, 1))) ^ FAKE_DIVERGE(p_1484->group_0_offset, get_group_id(0), 10)), (0x92F2378E59058F3EL <= (((*p_1484->g_552) = (((safe_rshift_func_uint8_t_u_u((((l_625 < l_625) > l_625) | l_625), 2)) < 1UL) | p_1484->g_520)) ^ 0x142B59D30E2EBE69L)))) <= 0x8D31L) | l_625)) != 0x6AL) ^ 0L), p_1484->g_150[0]))))))
    { /* block id: 314 */
        int32_t *l_637 = &p_1484->g_33[2];
        int32_t *l_638[5][7][4] = {{{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]},{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]},{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]},{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]},{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]},{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]},{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]}},{{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]},{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]},{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]},{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]},{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]},{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]},{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]}},{{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]},{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]},{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]},{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]},{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]},{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]},{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]}},{{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]},{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]},{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]},{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]},{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]},{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]},{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]}},{{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]},{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]},{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]},{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]},{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]},{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]},{&p_1484->g_95,&p_1484->g_33[3],(void*)0,&p_1484->g_33[3]}}};
        uint64_t **l_693 = &l_688;
        union U0 *l_739[6];
        int i, j, k;
        for (i = 0; i < 6; i++)
            l_739[i] = &p_1484->g_48[0];
        l_641++;
        for (l_639 = 0; (l_639 == 14); l_639++)
        { /* block id: 318 */
            int8_t *l_648 = &p_1484->g_83.f2;
            union U5 l_653 = {0x62B75CBAE7ED7736L};
            uint64_t *l_656 = &p_1484->g_657[2];
            uint64_t **l_659 = &l_658;
            int32_t l_660 = 0L;
            uint64_t **l_686 = (void*)0;
            uint64_t **l_721 = &l_656;
            int32_t l_729 = 0x2832CBF8L;
            if ((l_660 = ((safe_mul_func_int8_t_s_s(((*l_648) = l_641), (l_640 = ((l_625 && (safe_mul_func_uint16_t_u_u((((void*)0 != &p_1484->g_481[4]) > (safe_add_func_int16_t_s_s((l_653 , (safe_rshift_func_int8_t_s_s((((((*p_1484->g_552) &= ((void*)0 == l_656)) && ((*p_1484->g_552) = l_653.f0)) , ((*l_659) = l_658)) == (void*)0), 1))), 0x334EL))), 0L))) & 8L)))) & p_1484->g_33[3])))
            { /* block id: 325 */
                union U5 l_668 = {-6L};
                uint64_t **l_669 = &l_656;
                int32_t *l_675 = (void*)0;
                uint16_t l_680[2][7][5] = {{{0x438CL,0x438CL,0x438CL,0x438CL,0x438CL},{0x438CL,0x438CL,0x438CL,0x438CL,0x438CL},{0x438CL,0x438CL,0x438CL,0x438CL,0x438CL},{0x438CL,0x438CL,0x438CL,0x438CL,0x438CL},{0x438CL,0x438CL,0x438CL,0x438CL,0x438CL},{0x438CL,0x438CL,0x438CL,0x438CL,0x438CL},{0x438CL,0x438CL,0x438CL,0x438CL,0x438CL}},{{0x438CL,0x438CL,0x438CL,0x438CL,0x438CL},{0x438CL,0x438CL,0x438CL,0x438CL,0x438CL},{0x438CL,0x438CL,0x438CL,0x438CL,0x438CL},{0x438CL,0x438CL,0x438CL,0x438CL,0x438CL},{0x438CL,0x438CL,0x438CL,0x438CL,0x438CL},{0x438CL,0x438CL,0x438CL,0x438CL,0x438CL},{0x438CL,0x438CL,0x438CL,0x438CL,0x438CL}}};
                uint64_t ***l_682 = (void*)0;
                uint64_t *l_685 = &p_1484->g_380[5];
                uint64_t **l_684[2][9][5] = {{{&l_685,&l_685,&l_685,&l_685,&l_685},{&l_685,&l_685,&l_685,&l_685,&l_685},{&l_685,&l_685,&l_685,&l_685,&l_685},{&l_685,&l_685,&l_685,&l_685,&l_685},{&l_685,&l_685,&l_685,&l_685,&l_685},{&l_685,&l_685,&l_685,&l_685,&l_685},{&l_685,&l_685,&l_685,&l_685,&l_685},{&l_685,&l_685,&l_685,&l_685,&l_685},{&l_685,&l_685,&l_685,&l_685,&l_685}},{{&l_685,&l_685,&l_685,&l_685,&l_685},{&l_685,&l_685,&l_685,&l_685,&l_685},{&l_685,&l_685,&l_685,&l_685,&l_685},{&l_685,&l_685,&l_685,&l_685,&l_685},{&l_685,&l_685,&l_685,&l_685,&l_685},{&l_685,&l_685,&l_685,&l_685,&l_685},{&l_685,&l_685,&l_685,&l_685,&l_685},{&l_685,&l_685,&l_685,&l_685,&l_685},{&l_685,&l_685,&l_685,&l_685,&l_685}}};
                uint64_t ***l_683[9][1][5] = {{{&l_684[1][8][0],&l_684[1][8][0],&l_684[1][8][0],(void*)0,(void*)0}},{{&l_684[1][8][0],&l_684[1][8][0],&l_684[1][8][0],(void*)0,(void*)0}},{{&l_684[1][8][0],&l_684[1][8][0],&l_684[1][8][0],(void*)0,(void*)0}},{{&l_684[1][8][0],&l_684[1][8][0],&l_684[1][8][0],(void*)0,(void*)0}},{{&l_684[1][8][0],&l_684[1][8][0],&l_684[1][8][0],(void*)0,(void*)0}},{{&l_684[1][8][0],&l_684[1][8][0],&l_684[1][8][0],(void*)0,(void*)0}},{{&l_684[1][8][0],&l_684[1][8][0],&l_684[1][8][0],(void*)0,(void*)0}},{{&l_684[1][8][0],&l_684[1][8][0],&l_684[1][8][0],(void*)0,(void*)0}},{{&l_684[1][8][0],&l_684[1][8][0],&l_684[1][8][0],(void*)0,(void*)0}}};
                int i, j, k;
                (*p_1484->g_174) = (p_1484->g_661 , (void*)0);
                p_1484->g_689[1] = (l_687[1][4][0] = (l_686 = (((safe_sub_func_uint64_t_u_u((safe_mul_func_uint8_t_u_u((safe_mul_func_int8_t_s_s(((*l_637) = (l_668 , (((1UL || ((l_658 != ((*l_669) = &p_1484->g_657[2])) , ((p_1484->g_481[2] , (safe_add_func_int32_t_s_s((((safe_rshift_func_int16_t_s_u(((p_1484->g_674 , l_675) == ((safe_mod_func_uint16_t_u_u((l_641 >= ((safe_div_func_uint16_t_u_u(FAKE_DIVERGE(p_1484->global_0_offset, get_global_id(0), 10), (p_1484->g_523 , 0xDCCFL))) >= p_1484->g_75[3][0])), l_680[0][3][3])) , &p_1484->g_165)), l_653.f0)) >= 0UL) != l_641), l_653.f0))) && l_625))) != FAKE_DIVERGE(p_1484->local_0_offset, get_local_id(0), 10)) != 0xA044L))), l_681)), l_668.f0)), l_681)) >= 0x4E93L) , (void*)0)));
            }
            else
            { /* block id: 332 */
                uint64_t **l_691 = &p_1484->g_690[2][2];
                uint64_t ***l_692[2];
                int32_t l_696 = 0x58193AC1L;
                uint8_t *l_697 = &l_641;
                int16_t *l_710 = &p_1484->g_291[1][5][4];
                uint64_t ***l_716 = &l_659;
                uint64_t ***l_719 = (void*)0;
                uint64_t ***l_720 = &p_1484->g_717;
                uint16_t *l_724 = &l_653.f3;
                int32_t l_731[9];
                union U2 *l_745 = &p_1484->g_578[7];
                int i;
                for (i = 0; i < 2; i++)
                    l_692[i] = &l_687[0][7][3];
                for (i = 0; i < 9; i++)
                    l_731[i] = (-2L);
                l_693 = l_691;
                if ((safe_mod_func_uint8_t_u_u((++(*l_697)), ((safe_mod_func_uint16_t_u_u(((safe_rshift_func_int16_t_s_s((safe_add_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u((((9UL || GROUP_DIVERGE(2, 1)) >= ((safe_rshift_func_int16_t_s_s((p_1484->g_619 &= ((*l_710) = p_1484->g_324.f0)), 10)) ^ ((safe_unary_minus_func_int32_t_s((safe_add_func_int32_t_s_s(l_625, (l_636 != l_636))))) != (safe_mod_func_uint32_t_u_u(((((*l_716) = &l_656) == (l_721 = ((*l_720) = p_1484->g_717))) & ((*l_724) = (l_660 | (safe_mod_func_int64_t_s_s((l_660 == (-9L)), 0x5BCEBBB3A348FC22L))))), p_1484->g_725))))) >= 0xAA5CL), p_1484->g_34)), l_696)), 7)) | (-1L)), l_640)) & p_1484->g_380[1]))))
                { /* block id: 341 */
                    int32_t l_728 = (-4L);
                    int32_t l_730 = (-3L);
                    for (p_1484->g_83.f3 = 0; (p_1484->g_83.f3 >= 10); ++p_1484->g_83.f3)
                    { /* block id: 344 */
                        uint32_t l_732 = 0UL;
                        union U2 *l_736[1][4][4] = {{{&p_1484->g_578[4],(void*)0,&p_1484->g_578[4],&p_1484->g_578[4]},{&p_1484->g_578[4],(void*)0,&p_1484->g_578[4],&p_1484->g_578[4]},{&p_1484->g_578[4],(void*)0,&p_1484->g_578[4],&p_1484->g_578[4]},{&p_1484->g_578[4],(void*)0,&p_1484->g_578[4],&p_1484->g_578[4]}}};
                        union U2 **l_735 = &l_736[0][2][1];
                        int i, j, k;
                        (**p_1484->g_167) = ((*l_637) |= l_660);
                        l_732--;
                        (*l_735) = (void*)0;
                    }
                    for (p_1484->g_63.f2 = 0; (p_1484->g_63.f2 == 13); p_1484->g_63.f2++)
                    { /* block id: 352 */
                        int8_t ****l_740 = &l_633;
                        uint32_t *l_748[6][8][5] = {{{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0}},{{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0}},{{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0}},{{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0}},{{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0}},{{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0},{&p_1484->g_150[0],(void*)0,(void*)0,&p_1484->g_75[3][0],(void*)0}}};
                        int32_t l_749[2][10] = {{0x72D47193L,8L,0x19426C31L,8L,0x72D47193L,0x72D47193L,8L,0x19426C31L,8L,0x72D47193L},{0x72D47193L,8L,0x19426C31L,8L,0x72D47193L,0x72D47193L,8L,0x19426C31L,8L,0x72D47193L}};
                        int i, j, k;
                        if (l_639)
                            break;
                        (**p_1484->g_366) = l_739[1];
                        (*l_637) |= (l_660 || (((*l_688) = (p_1484->g_578[2] , (l_740 != l_740))) && (l_639 > (l_749[0][4] = (safe_div_func_uint16_t_u_u(l_731[8], (safe_lshift_func_uint8_t_u_u((((void*)0 != l_745) , ((*l_697) = ((p_36 = ((safe_sub_func_int8_t_s_s((&p_1484->g_150[0] == (void*)0), 0x21L)) , &l_648)) != &p_1484->g_164))), 5))))))));
                    }
                }
                else
                { /* block id: 361 */
                    uint32_t l_750 = 4294967292UL;
                    l_750--;
                    if ((*p_1484->g_168))
                        break;
                    if (l_640)
                        break;
                    (*l_637) |= ((p_1484->g_753 , (!l_639)) , (safe_lshift_func_uint8_t_u_s(p_1484->g_361.f0, 5)));
                }
                (*l_637) = (+0x28EADA9FL);
            }
        }
        l_756[0] |= ((*l_637) = (l_639 = l_640));
        (*l_637) = (&l_625 == &l_625);
    }
    else
    { /* block id: 374 */
        (*p_1484->g_174) = &l_756[0];
    }
    l_639 = (((((p_1484->g_8 == (safe_div_func_uint32_t_u_u((l_639 != (--p_1484->g_764)), l_681))) , (safe_lshift_func_uint8_t_u_u(((FAKE_DIVERGE(p_1484->global_1_offset, get_global_id(1), 10) == ((!(safe_mod_func_int64_t_s_s((safe_add_func_int16_t_s_s(((*p_1484->g_337) , (safe_add_func_uint8_t_u_u(1UL, (safe_mul_func_int16_t_s_s((l_641 | (safe_mul_func_uint8_t_u_u((l_756[2] |= (safe_sub_func_uint32_t_u_u(l_625, l_640))), 250UL))), 65526UL))))), p_1484->g_75[4][1])), 1UL))) || l_639)) > l_625), 4))) <= l_625) != GROUP_DIVERGE(0, 1)) && l_681);
    for (p_1484->g_95 = 0; (p_1484->g_95 >= (-25)); --p_1484->g_95)
    { /* block id: 382 */
        uint32_t l_786[10] = {0xA4274C1DL,0x9F823F74L,0UL,0x9F823F74L,0xA4274C1DL,0xA4274C1DL,0x9F823F74L,0UL,0x9F823F74L,0xA4274C1DL};
        int32_t l_791[2][4][6] = {{{0x3BFB7254L,0L,0x04F2E6B4L,0x69001295L,(-7L),0x69001295L},{0x3BFB7254L,0L,0x04F2E6B4L,0x69001295L,(-7L),0x69001295L},{0x3BFB7254L,0L,0x04F2E6B4L,0x69001295L,(-7L),0x69001295L},{0x3BFB7254L,0L,0x04F2E6B4L,0x69001295L,(-7L),0x69001295L}},{{0x3BFB7254L,0L,0x04F2E6B4L,0x69001295L,(-7L),0x69001295L},{0x3BFB7254L,0L,0x04F2E6B4L,0x69001295L,(-7L),0x69001295L},{0x3BFB7254L,0L,0x04F2E6B4L,0x69001295L,(-7L),0x69001295L},{0x3BFB7254L,0L,0x04F2E6B4L,0x69001295L,(-7L),0x69001295L}}};
        int32_t l_804[1][7][8] = {{{0x23814052L,9L,0x22B9F84EL,(-9L),0x6683F989L,(-9L),0x22B9F84EL,9L},{0x23814052L,9L,0x22B9F84EL,(-9L),0x6683F989L,(-9L),0x22B9F84EL,9L},{0x23814052L,9L,0x22B9F84EL,(-9L),0x6683F989L,(-9L),0x22B9F84EL,9L},{0x23814052L,9L,0x22B9F84EL,(-9L),0x6683F989L,(-9L),0x22B9F84EL,9L},{0x23814052L,9L,0x22B9F84EL,(-9L),0x6683F989L,(-9L),0x22B9F84EL,9L},{0x23814052L,9L,0x22B9F84EL,(-9L),0x6683F989L,(-9L),0x22B9F84EL,9L},{0x23814052L,9L,0x22B9F84EL,(-9L),0x6683F989L,(-9L),0x22B9F84EL,9L}}};
        int i, j, k;
        for (l_641 = 0; (l_641 == 11); l_641++)
        { /* block id: 385 */
            int32_t *l_785[9][8] = {{&p_1484->g_34,&p_1484->g_34,(void*)0,&p_1484->g_534[0],&l_756[0],&p_1484->g_534[0],(void*)0,&p_1484->g_34},{&p_1484->g_34,&p_1484->g_34,(void*)0,&p_1484->g_534[0],&l_756[0],&p_1484->g_534[0],(void*)0,&p_1484->g_34},{&p_1484->g_34,&p_1484->g_34,(void*)0,&p_1484->g_534[0],&l_756[0],&p_1484->g_534[0],(void*)0,&p_1484->g_34},{&p_1484->g_34,&p_1484->g_34,(void*)0,&p_1484->g_534[0],&l_756[0],&p_1484->g_534[0],(void*)0,&p_1484->g_34},{&p_1484->g_34,&p_1484->g_34,(void*)0,&p_1484->g_534[0],&l_756[0],&p_1484->g_534[0],(void*)0,&p_1484->g_34},{&p_1484->g_34,&p_1484->g_34,(void*)0,&p_1484->g_534[0],&l_756[0],&p_1484->g_534[0],(void*)0,&p_1484->g_34},{&p_1484->g_34,&p_1484->g_34,(void*)0,&p_1484->g_534[0],&l_756[0],&p_1484->g_534[0],(void*)0,&p_1484->g_34},{&p_1484->g_34,&p_1484->g_34,(void*)0,&p_1484->g_534[0],&l_756[0],&p_1484->g_534[0],(void*)0,&p_1484->g_34},{&p_1484->g_34,&p_1484->g_34,(void*)0,&p_1484->g_534[0],&l_756[0],&p_1484->g_534[0],(void*)0,&p_1484->g_34}};
            int64_t *l_807 = &p_1484->g_725;
            int i, j;
            ++l_786[6];
            for (p_1484->g_165 = 0; (p_1484->g_165 == (-25)); p_1484->g_165--)
            { /* block id: 389 */
                uint32_t l_792 = 0xB28BD771L;
                l_792 = (l_791[1][2][1] &= (-8L));
                (*p_1484->g_174) = (p_1484->g_793[1][1] , &l_791[1][2][1]);
            }
            l_640 = ((safe_mod_func_int32_t_s_s(((l_786[2] < (p_1484->g_796 , (safe_lshift_func_uint8_t_u_s((((*l_807) = ((*p_1484->g_552) = ((((safe_mod_func_uint64_t_u_u((safe_sub_func_uint16_t_u_u(l_791[0][1][2], (l_804[0][0][5] = (l_803[0][3][2] == (void*)0)))), (safe_rshift_func_uint16_t_u_u(FAKE_DIVERGE(p_1484->global_1_offset, get_global_id(1), 10), 15)))) , (*p_1484->g_552)) , 3L) >= l_791[1][2][1]))) > l_640), 5)))) == l_639), l_640)) && 4294967287UL);
        }
        if ((atomic_inc(&p_1484->g_atomic_input[33 * get_linear_group_id() + 25]) == 4))
        { /* block id: 400 */
            int32_t l_808 = 0x218AABC5L;
            int64_t l_840 = (-1L);
            int64_t l_841 = 1L;
            int8_t l_842 = (-1L);
            int16_t l_843 = 0x153CL;
            int16_t l_844 = 6L;
            int32_t l_845[1];
            int32_t l_846 = 0x4464CC29L;
            int64_t l_847 = 0x2C424051561395C2L;
            int32_t l_848 = 0x3B53EE08L;
            int32_t l_849 = 0x3BCB1991L;
            int16_t l_850[8] = {0x7E56L,0x7E56L,0x7E56L,0x7E56L,0x7E56L,0x7E56L,0x7E56L,0x7E56L};
            int32_t l_851 = (-1L);
            int8_t l_852 = 0x10L;
            uint16_t l_853 = 0x7564L;
            union U2 l_857 = {0x23CC7064L};/* VOLATILE GLOBAL l_857 */
            union U2 *l_856 = &l_857;
            union U2 *l_858 = &l_857;
            union U2 *l_859 = &l_857;
            int i;
            for (i = 0; i < 1; i++)
                l_845[i] = 0x674A39B0L;
            for (l_808 = 0; (l_808 <= 4); l_808 += 1)
            { /* block id: 403 */
                uint32_t l_809 = 0x9FB5E721L;
                uint16_t l_835 = 65528UL;
                if (l_809)
                { /* block id: 404 */
                    uint8_t l_810 = 0x36L;
                    if (l_810)
                    { /* block id: 405 */
                        int8_t l_811 = 0x41L;
                        int8_t l_812 = (-6L);
                        uint32_t l_813 = 1UL;
                        int32_t l_817 = 0x2786B324L;
                        int32_t *l_816 = &l_817;
                        int32_t *l_818 = &l_817;
                        int64_t l_819 = (-1L);
                        uint8_t l_820 = 0xA0L;
                        int32_t l_821 = 0x5F3FE8B1L;
                        --l_813;
                        l_818 = l_816;
                        l_820 &= (l_819 , 0x14B6D5D7L);
                        (*l_816) &= l_821;
                    }
                    else
                    { /* block id: 410 */
                        uint64_t l_822 = 0x2BE07E74559E12A3L;
                        int32_t l_823 = 1L;
                        uint16_t l_824 = 0x397EL;
                        int8_t l_825 = 1L;
                        int32_t l_826 = 0x418F15E9L;
                        l_824 = (l_823 = (l_822 = 0x3B46D735L));
                        l_826 = l_825;
                    }
                }
                else
                { /* block id: 416 */
                    int32_t l_827 = 0x38A561A6L;
                    uint32_t l_833[3][3][3] = {{{1UL,4294967295UL,1UL},{1UL,4294967295UL,1UL},{1UL,4294967295UL,1UL}},{{1UL,4294967295UL,1UL},{1UL,4294967295UL,1UL},{1UL,4294967295UL,1UL}},{{1UL,4294967295UL,1UL},{1UL,4294967295UL,1UL},{1UL,4294967295UL,1UL}}};
                    int64_t l_834 = 0L;
                    int i, j, k;
                    for (l_827 = 4; (l_827 >= 0); l_827 -= 1)
                    { /* block id: 419 */
                        int64_t l_828[2];
                        int64_t l_829 = 0L;
                        uint16_t l_830 = 0x2DCDL;
                        int i;
                        for (i = 0; i < 2; i++)
                            l_828[i] = 0x006DB83436DB2BAAL;
                        l_830++;
                    }
                    l_834 = (l_833[2][1][2] = 0x7AEA3990L);
                }
                l_835 |= 0L;
                for (l_809 = 0; (l_809 <= 4); l_809 += 1)
                { /* block id: 428 */
                    int32_t l_836 = 7L;
                    for (l_836 = 0; (l_836 <= 4); l_836 += 1)
                    { /* block id: 431 */
                        uint64_t l_837 = 18446744073709551614UL;
                        int8_t l_838 = (-1L);
                        uint32_t l_839 = 0x56ADAA84L;
                        int i;
                        l_839 |= (l_838 ^= (l_786[(l_808 + 4)] , l_837));
                    }
                }
            }
            --l_853;
            l_859 = (l_858 = l_856);
            unsigned int result = 0;
            result += l_808;
            result += l_840;
            result += l_841;
            result += l_842;
            result += l_843;
            result += l_844;
            int l_845_i0;
            for (l_845_i0 = 0; l_845_i0 < 1; l_845_i0++) {
                result += l_845[l_845_i0];
            }
            result += l_846;
            result += l_847;
            result += l_848;
            result += l_849;
            int l_850_i0;
            for (l_850_i0 = 0; l_850_i0 < 8; l_850_i0++) {
                result += l_850[l_850_i0];
            }
            result += l_851;
            result += l_852;
            result += l_853;
            result += l_857.f0;
            result += l_857.f1;
            result += l_857.f2;
            result += l_857.f3;
            result += l_857.f4;
            atomic_add(&p_1484->g_special_values[33 * get_linear_group_id() + 25], result);
        }
        else
        { /* block id: 440 */
            (1 + 1);
        }
    }
    for (p_1484->g_269 = 9; (p_1484->g_269 >= 0); p_1484->g_269 -= 1)
    { /* block id: 446 */
        int32_t **l_860 = (void*)0;
        int32_t l_863 = 1L;
        int64_t *l_882 = &p_1484->g_725;
        union U5 l_887 = {-1L};
        union U0 l_889 = {0x210B9AFAL};
        uint64_t ***l_922 = &p_1484->g_689[1];
        uint64_t l_925 = 0x65DE52D7E10EB4B9L;
        uint32_t l_926[10][7] = {{0xEB6EDE4EL,1UL,0x8662FABEL,3UL,4294967291UL,4294967292UL,4294967292UL},{0xEB6EDE4EL,1UL,0x8662FABEL,3UL,4294967291UL,4294967292UL,4294967292UL},{0xEB6EDE4EL,1UL,0x8662FABEL,3UL,4294967291UL,4294967292UL,4294967292UL},{0xEB6EDE4EL,1UL,0x8662FABEL,3UL,4294967291UL,4294967292UL,4294967292UL},{0xEB6EDE4EL,1UL,0x8662FABEL,3UL,4294967291UL,4294967292UL,4294967292UL},{0xEB6EDE4EL,1UL,0x8662FABEL,3UL,4294967291UL,4294967292UL,4294967292UL},{0xEB6EDE4EL,1UL,0x8662FABEL,3UL,4294967291UL,4294967292UL,4294967292UL},{0xEB6EDE4EL,1UL,0x8662FABEL,3UL,4294967291UL,4294967292UL,4294967292UL},{0xEB6EDE4EL,1UL,0x8662FABEL,3UL,4294967291UL,4294967292UL,4294967292UL},{0xEB6EDE4EL,1UL,0x8662FABEL,3UL,4294967291UL,4294967292UL,4294967292UL}};
        int i, j;
        for (l_641 = 0; (l_641 <= 9); l_641 += 1)
        { /* block id: 449 */
            int16_t l_866 = 0x5947L;
            uint8_t l_870 = 255UL;
            int8_t *l_871 = &p_1484->g_48[0].f1;
            int32_t *l_872 = &p_1484->g_98;
            int32_t l_873 = 4L;
            int16_t *l_879 = &l_866;
            int64_t **l_883[2][7] = {{&p_1484->g_552,&p_1484->g_552,&p_1484->g_552,&p_1484->g_552,&p_1484->g_552,&p_1484->g_552,&p_1484->g_552},{&p_1484->g_552,&p_1484->g_552,&p_1484->g_552,&p_1484->g_552,&p_1484->g_552,&p_1484->g_552,&p_1484->g_552}};
            union U0 l_884 = {7UL};
            uint8_t l_885[10][9] = {{0x35L,0xA7L,0x07L,0UL,0xA7L,0UL,0x07L,0xA7L,0x35L},{0x35L,0xA7L,0x07L,0UL,0xA7L,0UL,0x07L,0xA7L,0x35L},{0x35L,0xA7L,0x07L,0UL,0xA7L,0UL,0x07L,0xA7L,0x35L},{0x35L,0xA7L,0x07L,0UL,0xA7L,0UL,0x07L,0xA7L,0x35L},{0x35L,0xA7L,0x07L,0UL,0xA7L,0UL,0x07L,0xA7L,0x35L},{0x35L,0xA7L,0x07L,0UL,0xA7L,0UL,0x07L,0xA7L,0x35L},{0x35L,0xA7L,0x07L,0UL,0xA7L,0UL,0x07L,0xA7L,0x35L},{0x35L,0xA7L,0x07L,0UL,0xA7L,0UL,0x07L,0xA7L,0x35L},{0x35L,0xA7L,0x07L,0UL,0xA7L,0UL,0x07L,0xA7L,0x35L},{0x35L,0xA7L,0x07L,0UL,0xA7L,0UL,0x07L,0xA7L,0x35L}};
            int16_t *l_886 = &p_1484->g_619;
            uint32_t **l_899 = (void*)0;
            union U0 ***l_957 = (void*)0;
            int i, j;
            l_860 = l_860;
            (*l_872) &= (safe_mod_func_uint32_t_u_u(((l_863 != (((GROUP_DIVERGE(1, 1) , ((l_866 && l_863) < ((((*l_688) |= (l_867[7][5][0] <= (safe_lshift_func_int16_t_s_s(((((l_866 < ((((((((&l_625 != (l_870 , &p_1484->g_165)) >= ((*l_871) = ((FAKE_DIVERGE(p_1484->local_1_offset, get_local_id(1), 10) != l_866) | l_863))) != l_866) | 18446744073709551615UL) | 0L) & l_863) < p_1484->g_75[3][0]) < l_863)) & p_1484->g_130) > l_867[7][5][0]) , p_1484->g_32), 12)))) ^ l_681) >= 0xF8L))) && l_870) , p_1484->g_91.f0)) <= 18446744073709551611UL), 0x50D5E09BL));
            if (((((*l_760) = (+(++p_1484->g_764))) <= (*l_872)) & (((*l_886) = (p_1484->g_876 == (l_885[3][6] ^= (safe_lshift_func_int16_t_s_s((((*l_879) &= p_1484->g_520) != ((safe_sub_func_uint32_t_u_u(5UL, ((p_1484->g_552 = l_882) != ((***p_1484->g_366) , &l_867[7][3][1])))) <= (l_884 , l_863))), 7))))) || p_1484->g_291[1][2][0])))
            { /* block id: 460 */
                union U5 *l_888 = &l_887;
                int i;
                (*l_872) = (p_1484->g_134[p_1484->g_269] , ((safe_mul_func_int8_t_s_s((l_863 = (safe_mul_func_uint8_t_u_u((safe_mod_func_uint32_t_u_u(4294967291UL, (safe_add_func_uint8_t_u_u(((p_1484->g_898 == l_899) == ((*l_871) = (p_1484->g_132 >= ((&p_1484->g_552 == l_883[1][5]) ^ l_756[0])))), 0x53L)))), p_1484->g_34))), (*l_872))) & (*l_872)));
                return &p_1484->g_164;
            }
            else
            { /* block id: 466 */
                int64_t l_902 = 0x06A9ACED51EA960AL;
                int32_t l_917 = (-3L);
                uint64_t ***l_920 = (void*)0;
                uint64_t ****l_919[9] = {&l_920,&l_920,&l_920,&l_920,&l_920,&l_920,&l_920,&l_920,&l_920};
                int i;
                l_863 = (safe_rshift_func_int8_t_s_s((l_902 = (-3L)), (GROUP_DIVERGE(2, 1) < (FAKE_DIVERGE(p_1484->group_1_offset, get_group_id(1), 10) >= ((safe_div_func_int32_t_s_s(((*l_872) <= ((((((safe_lshift_func_int8_t_s_u((safe_mul_func_int8_t_s_s((*l_872), (safe_lshift_func_uint16_t_u_s((safe_mul_func_int8_t_s_s((l_917 > (0UL >= (safe_unary_minus_func_uint64_t_u(((((&l_687[1][4][0] != (l_922 = (p_1484->g_921 = &p_1484->g_689[1]))) <= ((((0x38L == (safe_div_func_int64_t_s_s(0x48A96DBAC4A644BBL, (*p_1484->g_552)))) | l_867[5][4][0]) & (*l_872)) || l_925)) && l_926[4][4]) == (*p_1484->g_552)))))), l_917)), 5)))), 3)) >= 0x1187L) & GROUP_DIVERGE(0, 1)) >= 0x49ADB5A1BFE58D79L) , l_927[5]) == (void*)0)), 7L)) > l_917)))));
            }
            for (l_887.f2 = 0; (l_887.f2 <= 9); l_887.f2 += 1)
            { /* block id: 474 */
                union U0 *l_930 = (void*)0;
                uint16_t *l_939 = &p_1484->g_106;
                int32_t l_948 = 0x4295AA43L;
                int32_t l_949[5] = {0x71B32A7BL,0x71B32A7BL,0x71B32A7BL,0x71B32A7BL,0x71B32A7BL};
                int32_t *l_950 = &l_873;
                volatile int16_t ** volatile *l_966 = &p_1484->g_963;
                int i;
                (*l_950) &= ((((safe_lshift_func_uint8_t_u_s((((**p_1484->g_366) == (l_930 = &l_889)) != ((safe_div_func_uint8_t_u_u(0xF6L, ((p_1484->g_603[3][2][1].f0 ^ (safe_mod_func_int16_t_s_s((safe_sub_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_u(((5UL && ((*l_939)++)) <= ((l_948 = ((safe_mod_func_uint8_t_u_u(((((((*l_760) = ((l_889.f0 , ((*l_872) <= 65530UL)) == ((safe_add_func_int16_t_s_s(((~l_681) , 9L), p_1484->g_619)) , 0xE3EE4A4022AA3843L))) , (*p_1484->g_717)) == p_1484->g_946) | l_756[0]) ^ 0xD5F695E2L), p_1484->g_269)) & l_889.f0)) == (*l_872))), 6)), 0xC6L)), l_887.f2))) && p_1484->g_619))) <= l_949[2])), 4)) , p_1484->g_134[l_641]) , p_1484->g_63.f1) && (-1L));
                (*p_1484->g_962) &= (safe_add_func_uint8_t_u_u((((safe_mul_func_int16_t_s_s((safe_mul_func_int8_t_s_s((0x587FB4D8L == ((((void*)0 != l_957) ^ (safe_div_func_int16_t_s_s(((**p_1484->g_717) , (safe_mul_func_uint16_t_u_u((((*p_1484->g_552) = (*l_950)) | 1L), (*l_872)))), (((l_939 == &p_1484->g_520) >= FAKE_DIVERGE(p_1484->global_2_offset, get_global_id(2), 10)) || 0x2E5FA005394D7EACL)))) | (*l_950))), (*l_872))), (*l_950))) <= 1L) < 0UL), p_1484->g_106));
                (*l_966) = p_1484->g_963;
            }
        }
        for (p_1484->g_523 = 9; (p_1484->g_523 >= 0); p_1484->g_523 -= 1)
        { /* block id: 487 */
            int32_t *l_967 = &l_756[0];
            int32_t l_968 = 0L;
            int32_t *l_969 = &l_756[0];
            int32_t *l_970 = &p_1484->g_33[6];
            int32_t *l_971 = &p_1484->g_33[5];
            int32_t *l_972 = &l_756[0];
            uint64_t l_973 = 0x07E8FC7F13183EBDL;
            ++l_973;
        }
        if (l_926[8][1])
            continue;
    }
    return &p_1484->g_164;
}


/* ------------------------------------------ */
/* 
 * reads : p_1484->g_83.f0 p_1484->g_432.f0 p_1484->g_150 p_1484->g_65 p_1484->g_106 p_1484->g_63 p_1484->g_132 p_1484->g_8 p_1484->g_167 p_1484->g_168 p_1484->g_379 p_1484->g_63.f0 p_1484->g_269 p_1484->g_291 p_1484->g_165 p_1484->g_33 p_1484->g_34 p_1484->g_271 p_1484->g_520 p_1484->g_105.f0 p_1484->g_174 p_1484->g_535 p_1484->g_134 p_1484->g_366 p_1484->g_367 p_1484->g_534 p_1484->g_523 p_1484->g_552 p_1484->g_219 p_1484->g_578 p_1484->g_603
 * writes: p_1484->g_83.f0 p_1484->g_165 p_1484->g_63.f1 p_1484->g_48.f3 p_1484->g_481 p_1484->g_34 p_1484->g_269 p_1484->g_63.f0 p_1484->g_379 p_1484->g_291 p_1484->g_520 p_1484->g_523 p_1484->g_130 p_1484->g_175 p_1484->g_535 p_1484->g_132 p_1484->g_106 p_1484->g_552
 */
int8_t ** func_37(int8_t ** p_38, int32_t  p_39, struct S6 * p_1484)
{ /* block id: 213 */
    union U0 ****l_455 = &p_1484->g_366;
    int32_t l_458[2];
    int64_t l_479 = (-1L);
    int64_t l_511 = 0x01F0FD2C81B8B2BCL;
    int32_t l_553 = (-3L);
    uint64_t l_570[1][8][10] = {{{0xAD8547802D0260EBL,0xC123EA1DD0F041ADL,0UL,2UL,0UL,5UL,0x00D4DE8D42702593L,1UL,0x00D4DE8D42702593L,5UL},{0xAD8547802D0260EBL,0xC123EA1DD0F041ADL,0UL,2UL,0UL,5UL,0x00D4DE8D42702593L,1UL,0x00D4DE8D42702593L,5UL},{0xAD8547802D0260EBL,0xC123EA1DD0F041ADL,0UL,2UL,0UL,5UL,0x00D4DE8D42702593L,1UL,0x00D4DE8D42702593L,5UL},{0xAD8547802D0260EBL,0xC123EA1DD0F041ADL,0UL,2UL,0UL,5UL,0x00D4DE8D42702593L,1UL,0x00D4DE8D42702593L,5UL},{0xAD8547802D0260EBL,0xC123EA1DD0F041ADL,0UL,2UL,0UL,5UL,0x00D4DE8D42702593L,1UL,0x00D4DE8D42702593L,5UL},{0xAD8547802D0260EBL,0xC123EA1DD0F041ADL,0UL,2UL,0UL,5UL,0x00D4DE8D42702593L,1UL,0x00D4DE8D42702593L,5UL},{0xAD8547802D0260EBL,0xC123EA1DD0F041ADL,0UL,2UL,0UL,5UL,0x00D4DE8D42702593L,1UL,0x00D4DE8D42702593L,5UL},{0xAD8547802D0260EBL,0xC123EA1DD0F041ADL,0UL,2UL,0UL,5UL,0x00D4DE8D42702593L,1UL,0x00D4DE8D42702593L,5UL}}};
    union U0 ****l_604[5][10][3] = {{{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366}},{{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366}},{{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366}},{{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366}},{{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366},{&p_1484->g_366,&p_1484->g_366,&p_1484->g_366}}};
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_458[i] = 0x3AD9B7FCL;
    p_39 = (safe_mul_func_int8_t_s_s(0x57L, (0x31FF26321250E1EBL >= (safe_lshift_func_uint16_t_u_u((((safe_sub_func_uint64_t_u_u(p_39, (0L || (0x099BD3302B4DBB95L || ((void*)0 != l_455))))) <= (safe_mul_func_int8_t_s_s(((l_458[0] > l_458[0]) | l_458[0]), (**p_38)))) >= 0x17979A8BL), GROUP_DIVERGE(2, 1))))));
    for (p_1484->g_83.f0 = 0; (p_1484->g_83.f0 == 28); p_1484->g_83.f0 = safe_add_func_int32_t_s_s(p_1484->g_83.f0, 8))
    { /* block id: 217 */
        union U1 l_478[1] = {{-1L}};
        int16_t *l_512 = &p_1484->g_8;
        int32_t *l_528 = &l_458[0];
        int8_t *l_538 = &p_1484->g_132;
        uint64_t *l_543 = &p_1484->g_535;
        uint32_t l_561 = 4294967294UL;
        int16_t *l_569[6];
        union U0 ****l_573 = &p_1484->g_366;
        uint32_t *l_579[3][2][6] = {{{&p_1484->g_150[0],&p_1484->g_150[0],&p_1484->g_150[0],&p_1484->g_150[0],&p_1484->g_150[0],&p_1484->g_150[0]},{&p_1484->g_150[0],&p_1484->g_150[0],&p_1484->g_150[0],&p_1484->g_150[0],&p_1484->g_150[0],&p_1484->g_150[0]}},{{&p_1484->g_150[0],&p_1484->g_150[0],&p_1484->g_150[0],&p_1484->g_150[0],&p_1484->g_150[0],&p_1484->g_150[0]},{&p_1484->g_150[0],&p_1484->g_150[0],&p_1484->g_150[0],&p_1484->g_150[0],&p_1484->g_150[0],&p_1484->g_150[0]}},{{&p_1484->g_150[0],&p_1484->g_150[0],&p_1484->g_150[0],&p_1484->g_150[0],&p_1484->g_150[0],&p_1484->g_150[0]},{&p_1484->g_150[0],&p_1484->g_150[0],&p_1484->g_150[0],&p_1484->g_150[0],&p_1484->g_150[0],&p_1484->g_150[0]}}};
        int32_t l_607 = 0x3BF4C27EL;
        int32_t l_608 = 0x67F7A28AL;
        int32_t l_609 = 0L;
        int32_t l_610 = 0x72D2C594L;
        int32_t l_611 = 8L;
        int32_t l_612 = 1L;
        int32_t l_613 = 0x6B9E785BL;
        int32_t l_614 = (-1L);
        int32_t l_615 = 4L;
        int32_t l_616 = 0L;
        int32_t l_617 = 0x32418FCAL;
        int32_t l_618[3][5][5] = {{{5L,1L,0x38835D3EL,1L,(-1L)},{5L,1L,0x38835D3EL,1L,(-1L)},{5L,1L,0x38835D3EL,1L,(-1L)},{5L,1L,0x38835D3EL,1L,(-1L)},{5L,1L,0x38835D3EL,1L,(-1L)}},{{5L,1L,0x38835D3EL,1L,(-1L)},{5L,1L,0x38835D3EL,1L,(-1L)},{5L,1L,0x38835D3EL,1L,(-1L)},{5L,1L,0x38835D3EL,1L,(-1L)},{5L,1L,0x38835D3EL,1L,(-1L)}},{{5L,1L,0x38835D3EL,1L,(-1L)},{5L,1L,0x38835D3EL,1L,(-1L)},{5L,1L,0x38835D3EL,1L,(-1L)},{5L,1L,0x38835D3EL,1L,(-1L)},{5L,1L,0x38835D3EL,1L,(-1L)}}};
        int i, j, k;
        for (i = 0; i < 6; i++)
            l_569[i] = &p_1484->g_291[4][8][0];
        for (p_1484->g_165 = 1; (p_1484->g_165 <= 4); p_1484->g_165 += 1)
        { /* block id: 220 */
            uint8_t *l_473 = &p_1484->g_63.f1;
            int32_t *l_474 = (void*)0;
            int32_t *l_475 = &p_1484->g_48[0].f3;
            union U5 *l_480 = &p_1484->g_481[4];
            int32_t *l_482[10] = {&p_1484->g_98,(void*)0,&p_1484->g_98,&p_1484->g_98,(void*)0,&p_1484->g_98,&p_1484->g_98,(void*)0,&p_1484->g_98,&p_1484->g_98};
            int8_t **l_527 = &p_1484->g_164;
            uint64_t *l_544 = &p_1484->g_535;
            int i;
            p_39 ^= (0UL | (safe_rshift_func_int8_t_s_u(l_458[0], 6)));
            (**p_1484->g_167) = (safe_rshift_func_int8_t_s_s(((p_39 ^ FAKE_DIVERGE(p_1484->group_1_offset, get_group_id(1), 10)) , (8UL || (((safe_div_func_uint32_t_u_u((safe_div_func_int16_t_s_s((((((*l_480) = (((safe_lshift_func_int16_t_s_u((safe_lshift_func_uint16_t_u_s((p_1484->g_432.f0 , ((((*l_473) = GROUP_DIVERGE(0, 1)) || (((*l_475) = ((void*)0 == l_474)) , (p_1484->g_150[0] , (p_1484->g_65 , ((safe_sub_func_int16_t_s_s((l_478[0] , (l_479 != 1UL)), p_39)) & l_479))))) == p_1484->g_106)), 12)), l_478[0].f0)) <= p_39) , p_1484->g_63)) , p_39) && p_39) != (-5L)), p_1484->g_132)), (-1L))) , p_39) != (**p_38)))), p_1484->g_8));
            if ((atomic_inc(&p_1484->g_atomic_input[33 * get_linear_group_id() + 8]) == 7))
            { /* block id: 227 */
                int32_t l_483 = 0x088FB3B7L;
                int32_t l_487 = (-5L);
                int32_t l_488 = 0x3893CF23L;
                uint16_t l_489[5];
                uint64_t l_492 = 0xFD3185044645AC53L;
                uint16_t l_493 = 65535UL;
                int32_t *l_494 = &l_483;
                int i;
                for (i = 0; i < 5; i++)
                    l_489[i] = 65532UL;
                for (l_483 = 4; (l_483 >= 0); l_483 -= 1)
                { /* block id: 230 */
                    uint32_t l_484 = 4294967295UL;
                    l_484++;
                }
                l_489[0]--;
                l_493 = l_492;
                l_494 = (void*)0;
                unsigned int result = 0;
                result += l_483;
                result += l_487;
                result += l_488;
                int l_489_i0;
                for (l_489_i0 = 0; l_489_i0 < 5; l_489_i0++) {
                    result += l_489[l_489_i0];
                }
                result += l_492;
                result += l_493;
                atomic_add(&p_1484->g_special_values[33 * get_linear_group_id() + 8], result);
            }
            else
            { /* block id: 236 */
                (1 + 1);
            }
            for (p_1484->g_269 = 0; (p_1484->g_269 <= 4); p_1484->g_269 += 1)
            { /* block id: 241 */
                int32_t l_515[6] = {0x275F9DC5L,0x275F9DC5L,0x275F9DC5L,0x275F9DC5L,0x275F9DC5L,0x275F9DC5L};
                union U5 l_551 = {0x2242E48B42619A35L};
                int i;
                for (p_1484->g_63.f0 = 0; (p_1484->g_63.f0 <= 4); p_1484->g_63.f0 += 1)
                { /* block id: 244 */
                    union U0 **l_516 = (void*)0;
                    int32_t l_524 = (-3L);
                    uint64_t *l_533[4];
                    int16_t *l_545[7][4] = {{&p_1484->g_291[1][3][4],&p_1484->g_291[4][1][0],&p_1484->g_291[1][3][4],&p_1484->g_291[1][3][4]},{&p_1484->g_291[1][3][4],&p_1484->g_291[4][1][0],&p_1484->g_291[1][3][4],&p_1484->g_291[1][3][4]},{&p_1484->g_291[1][3][4],&p_1484->g_291[4][1][0],&p_1484->g_291[1][3][4],&p_1484->g_291[1][3][4]},{&p_1484->g_291[1][3][4],&p_1484->g_291[4][1][0],&p_1484->g_291[1][3][4],&p_1484->g_291[1][3][4]},{&p_1484->g_291[1][3][4],&p_1484->g_291[4][1][0],&p_1484->g_291[1][3][4],&p_1484->g_291[1][3][4]},{&p_1484->g_291[1][3][4],&p_1484->g_291[4][1][0],&p_1484->g_291[1][3][4],&p_1484->g_291[1][3][4]},{&p_1484->g_291[1][3][4],&p_1484->g_291[4][1][0],&p_1484->g_291[1][3][4],&p_1484->g_291[1][3][4]}};
                    int8_t *l_546 = &p_1484->g_132;
                    int i, j;
                    for (i = 0; i < 4; i++)
                        l_533[i] = &p_1484->g_481[4].f2;
                    for (p_1484->g_379 = 0; (p_1484->g_379 <= 4); p_1484->g_379 += 1)
                    { /* block id: 247 */
                        uint8_t *l_517 = &p_1484->g_481[4].f1;
                        int64_t *l_518 = &l_479;
                        int16_t *l_519 = &p_1484->g_520;
                        int32_t l_521 = 0x0E7296D8L;
                        int16_t *l_522 = &p_1484->g_523;
                        int i, j, k;
                        if (p_1484->g_291[p_1484->g_379][(p_1484->g_63.f0 + 3)][p_1484->g_269])
                            break;
                        l_524 |= (((safe_sub_func_int16_t_s_s(((+0x82363B6C7A86EC37L) & (GROUP_DIVERGE(1, 1) & ((safe_sub_func_int32_t_s_s((safe_add_func_int64_t_s_s(0L, ((safe_mul_func_uint16_t_u_u(p_39, ((*l_522) = (!(safe_add_func_int64_t_s_s(((safe_lshift_func_int16_t_s_u((safe_div_func_int16_t_s_s((!((safe_div_func_int64_t_s_s(l_511, 0x63EC79D8EDF34D92L)) <= ((*l_519) |= ((l_512 != &p_1484->g_291[1][2][0]) != (safe_sub_func_int64_t_s_s(((*l_518) ^= ((((l_515[2] != ((((*l_517) = ((((((p_1484->g_291[p_1484->g_165][(p_1484->g_269 + 1)][p_1484->g_165] = ((void*)0 == l_516)) , l_458[0]) >= l_458[0]) <= p_1484->g_33[3]) & 0x7AF3AAD1F59B6CD4L) <= p_1484->g_34)) , 0x6D5F6A0BL) , p_1484->g_271)) || p_39) <= p_39) & 0xF92433FFC3DD684CL)), 1L)))))), 65535UL)), l_521)) ^ 0x1CE716D60E2B3679L), 1L)))))) && p_1484->g_520))), l_515[1])) | p_39))), p_1484->g_105.f0)) | p_1484->g_34) , 0x1576D313L);
                        if (l_478[0].f0)
                            continue;
                        l_521 ^= (safe_sub_func_uint8_t_u_u(((void*)0 == l_527), GROUP_DIVERGE(2, 1)));
                    }
                    for (p_1484->g_130 = 0; (p_1484->g_130 <= 0); p_1484->g_130 += 1)
                    { /* block id: 260 */
                        (*p_1484->g_174) = l_528;
                        return &p_1484->g_164;
                    }
                    p_39 = (safe_mul_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s((((*l_528) = ((--p_1484->g_535) , 0x4F481F72L)) , p_39), 13)), (**p_38)));
                    (*l_528) = (((p_1484->g_134[8] , ((0L > ((l_458[0] != ((*l_538) = (((*p_38) = l_538) == ((p_1484->g_291[3][3][3] = ((safe_lshift_func_uint8_t_u_s((safe_sub_func_uint64_t_u_u(FAKE_DIVERGE(p_1484->local_2_offset, get_local_id(2), 10), 18446744073709551614UL)), l_515[2])) != ((l_544 = l_543) == &p_1484->g_535))) , l_546)))) && l_524)) == l_515[2])) ^ p_39) == 0x2233D9DEL);
                }
                for (p_1484->g_106 = 0; (p_1484->g_106 == 17); p_1484->g_106 = safe_add_func_int32_t_s_s(p_1484->g_106, 1))
                { /* block id: 275 */
                    uint8_t l_556 = 0UL;
                    int32_t l_559 = 1L;
                    int32_t l_560 = (-1L);
                    l_553 &= (((*p_1484->g_366) != (void*)0) , ((0L == (&p_1484->g_219 != (void*)0)) <= (l_458[0] <= (p_39 ^ (safe_add_func_int64_t_s_s(((l_551 , (p_1484->g_552 = l_543)) != &l_479), (-7L)))))));
                    for (l_551.f3 = 0; (l_551.f3 == 21); l_551.f3++)
                    { /* block id: 280 */
                        l_556--;
                    }
                    l_561--;
                }
                for (l_551.f1 = 0; (l_551.f1 == 23); l_551.f1++)
                { /* block id: 287 */
                    (*l_528) = (*l_528);
                }
                (*p_1484->g_174) = &p_39;
            }
        }
        if (((+(safe_rshift_func_int8_t_s_u((safe_unary_minus_func_int16_t_s((p_1484->g_523 &= p_1484->g_534[1]))), l_570[0][1][8]))) && ((safe_mod_func_uint8_t_u_u((l_573 == (void*)0), p_1484->g_291[2][2][0])) | ((*p_1484->g_552) < (safe_add_func_int64_t_s_s(((l_553 = (safe_rshift_func_uint8_t_u_s(p_39, (p_1484->g_578[3] , (!(*l_528)))))) | p_39), p_1484->g_150[0]))))))
        { /* block id: 295 */
            return p_38;
        }
        else
        { /* block id: 297 */
            int32_t l_597 = (-3L);
            union U0 l_602 = {4294967295UL};
            int32_t *l_606[1][2][4] = {{{&l_458[0],&l_458[0],&l_458[0],&l_458[0]},{&l_458[0],&l_458[0],&l_458[0],&l_458[0]}}};
            uint32_t l_620 = 0x03958B0EL;
            int i, j, k;
            for (p_1484->g_132 = (-22); (p_1484->g_132 != (-3)); p_1484->g_132 = safe_add_func_uint32_t_u_u(p_1484->g_132, 4))
            { /* block id: 300 */
                uint16_t l_596 = 0x726FL;
                int32_t l_605 = 9L;
                (*l_528) |= (safe_lshift_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u(((~(safe_lshift_func_int8_t_s_s((safe_mul_func_uint16_t_u_u((p_1484->g_291[1][2][0] && (safe_rshift_func_int16_t_s_u((l_597 = (safe_add_func_int8_t_s_s(p_1484->g_535, (safe_lshift_func_uint8_t_u_s((l_596 <= p_39), (**p_38)))))), p_39))), ((safe_sub_func_int8_t_s_s(((safe_add_func_uint8_t_u_u((l_455 == (p_1484->g_603[3][2][1] , l_604[3][9][1])), l_605)) >= 0x396B81357AE4DBFCL), l_602.f0)) || (**p_1484->g_167)))), 3))) == p_1484->g_132), 4)), GROUP_DIVERGE(2, 1)));
                (*p_1484->g_174) = &p_39;
            }
            l_620--;
        }
    }
    return &p_1484->g_164;
}


/* ------------------------------------------ */
/* 
 * reads : p_1484->g_95
 * writes: p_1484->g_95
 */
int64_t  func_42(int64_t  p_43, uint32_t  p_44, union U0  p_45, int16_t  p_46, uint16_t  p_47, struct S6 * p_1484)
{ /* block id: 210 */
    int32_t *l_448 = &p_1484->g_95;
    (*l_448) &= 0x211EDAA2L;
    return (*l_448);
}


/* ------------------------------------------ */
/* 
 * reads : p_1484->g_83.f3 p_1484->g_167 p_1484->g_168 p_1484->g_95 p_1484->g_105.f0 p_1484->g_219 p_1484->g_63.f2 p_1484->g_34 p_1484->g_63.f1 p_1484->g_174 p_1484->g_175 p_1484->g_150 p_1484->g_263 p_1484->g_98 p_1484->g_269 p_1484->g_271 p_1484->g_164 p_1484->g_75 p_1484->g_33 p_1484->g_132 p_1484->g_324 p_1484->g_63.f3 p_1484->g_336 p_1484->g_83 p_1484->g_337 p_1484->g_324.f0 p_1484->g_361 p_1484->g_366 p_1484->g_380 p_1484->g_361.f0 p_1484->g_410 p_1484->g_63 p_1484->g_106 p_1484->g_379 p_1484->g_8 p_1484->g_432
 * writes: p_1484->g_83.f3 p_1484->g_63.f1 p_1484->g_95 p_1484->g_219 p_1484->g_63.f2 p_1484->g_175 p_1484->g_150 p_1484->g_269 p_1484->g_271 p_1484->g_291 p_1484->g_132 p_1484->g_63.f3 p_1484->g_337 p_1484->g_83 p_1484->g_98 p_1484->g_366 p_1484->g_380
 */
uint32_t  func_50(uint16_t  p_51, int64_t  p_52, struct S6 * p_1484)
{ /* block id: 62 */
    uint32_t l_193 = 4294967295UL;
    int32_t *l_202 = &p_1484->g_33[3];
    uint32_t *l_216[7][7] = {{&l_193,&p_1484->g_150[0],&p_1484->g_75[4][0],&p_1484->g_150[0],&l_193,&l_193,&p_1484->g_150[0]},{&l_193,&p_1484->g_150[0],&p_1484->g_75[4][0],&p_1484->g_150[0],&l_193,&l_193,&p_1484->g_150[0]},{&l_193,&p_1484->g_150[0],&p_1484->g_75[4][0],&p_1484->g_150[0],&l_193,&l_193,&p_1484->g_150[0]},{&l_193,&p_1484->g_150[0],&p_1484->g_75[4][0],&p_1484->g_150[0],&l_193,&l_193,&p_1484->g_150[0]},{&l_193,&p_1484->g_150[0],&p_1484->g_75[4][0],&p_1484->g_150[0],&l_193,&l_193,&p_1484->g_150[0]},{&l_193,&p_1484->g_150[0],&p_1484->g_75[4][0],&p_1484->g_150[0],&l_193,&l_193,&p_1484->g_150[0]},{&l_193,&p_1484->g_150[0],&p_1484->g_75[4][0],&p_1484->g_150[0],&l_193,&l_193,&p_1484->g_150[0]}};
    uint8_t l_264 = 0x4DL;
    int32_t l_274 = 0L;
    uint16_t l_318 = 0x81C0L;
    uint32_t l_323 = 0x481B8D09L;
    int32_t l_338 = 0x4D84C3E9L;
    int64_t *l_354 = &p_1484->g_219;
    int32_t *l_430 = &p_1484->g_271;
    int8_t *l_441 = &p_1484->g_132;
    uint8_t *l_442 = &l_264;
    int16_t *l_443 = (void*)0;
    int16_t *l_444 = (void*)0;
    int16_t *l_445 = (void*)0;
    int16_t *l_446 = &p_1484->g_291[0][8][4];
    int32_t *l_447 = &l_338;
    int i, j;
    for (p_1484->g_83.f3 = 20; (p_1484->g_83.f3 < 19); p_1484->g_83.f3 = safe_sub_func_int64_t_s_s(p_1484->g_83.f3, 6))
    { /* block id: 65 */
        uint64_t l_196 = 0xB4DFD0E00C26BE9DL;
        int8_t *l_197 = &p_1484->g_132;
        uint8_t *l_200 = (void*)0;
        uint8_t *l_201 = &p_1484->g_63.f1;
        uint8_t l_217 = 0xF7L;
        int64_t *l_218 = &p_1484->g_219;
        union U5 l_256 = {-8L};
        int32_t l_292 = 0x30F51270L;
        union U0 *l_308 = &p_1484->g_83;
        union U0 **l_307 = &l_308;
        union U0 ***l_309 = &l_307;
        if (((p_52 < ((((p_51 , 0x782676FAL) != (p_52 && (l_193 & (safe_mul_func_uint8_t_u_u(l_196, ((*l_201) = (l_197 == ((safe_mul_func_uint8_t_u_u((&p_1484->g_175 != &p_1484->g_175), 1UL)) , (void*)0)))))))) , l_202) == (*p_1484->g_167))) | 0x38L))
        { /* block id: 67 */
            uint32_t l_203 = 0x89994865L;
            return l_203;
        }
        else
        { /* block id: 69 */
            uint32_t *l_214 = (void*)0;
            int8_t *l_220 = (void*)0;
            int32_t l_226 = 1L;
            int32_t l_273 = 3L;
            for (p_1484->g_95 = 0; (p_1484->g_95 < (-15)); p_1484->g_95 = safe_sub_func_int32_t_s_s(p_1484->g_95, 9))
            { /* block id: 72 */
                uint32_t **l_215[7][8][4] = {{{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214}},{{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214}},{{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214}},{{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214}},{{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214}},{{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214}},{{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214},{&l_214,&l_214,(void*)0,&l_214}}};
                int8_t **l_221 = &l_197;
                int32_t l_224 = (-1L);
                int32_t l_225 = 0x75635189L;
                uint8_t *l_240 = &l_217;
                union U1 l_289 = {0x7F8BF7227BF97041L};
                int i, j, k;
                if ((safe_mul_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(p_1484->g_105.f0, ((safe_lshift_func_int16_t_s_s((p_52 <= GROUP_DIVERGE(1, 1)), 6)) & (0L != (safe_mod_func_uint16_t_u_u(((l_216[4][2] = l_214) != ((((l_217 , l_218) != l_218) & ((*l_218) = ((p_1484->g_63.f1 = (((((((*l_221) = l_220) != ((safe_add_func_uint32_t_u_u((l_224 = p_51), 0xCD65A0D8L)) , &p_1484->g_132)) , p_1484->g_219) , 0x2CL) && 0xA4L) != p_1484->g_95)) <= l_225))) , &p_1484->g_75[3][0])), l_226)))))), p_51)))
                { /* block id: 78 */
                    int16_t l_237 = 0x7E17L;
                    int32_t *l_243 = &l_226;
                    if ((atomic_inc(&p_1484->l_atomic_input[32]) == 9))
                    { /* block id: 80 */
                        int32_t l_227 = 0L;
                        int16_t l_228 = 0L;
                        uint16_t l_229 = 0xFAD7L;
                        uint16_t l_230 = 0xEFECL;
                        int64_t l_231[8] = {0x58EA20BC5C362547L,0x58EA20BC5C362547L,0x58EA20BC5C362547L,0x58EA20BC5C362547L,0x58EA20BC5C362547L,0x58EA20BC5C362547L,0x58EA20BC5C362547L,0x58EA20BC5C362547L};
                        uint64_t l_232 = 18446744073709551609UL;
                        int64_t l_233[10][8] = {{(-10L),8L,0x7B07EE75AF26B099L,0x416219075D6D8AE4L,8L,0x416219075D6D8AE4L,0x7B07EE75AF26B099L,8L},{(-10L),8L,0x7B07EE75AF26B099L,0x416219075D6D8AE4L,8L,0x416219075D6D8AE4L,0x7B07EE75AF26B099L,8L},{(-10L),8L,0x7B07EE75AF26B099L,0x416219075D6D8AE4L,8L,0x416219075D6D8AE4L,0x7B07EE75AF26B099L,8L},{(-10L),8L,0x7B07EE75AF26B099L,0x416219075D6D8AE4L,8L,0x416219075D6D8AE4L,0x7B07EE75AF26B099L,8L},{(-10L),8L,0x7B07EE75AF26B099L,0x416219075D6D8AE4L,8L,0x416219075D6D8AE4L,0x7B07EE75AF26B099L,8L},{(-10L),8L,0x7B07EE75AF26B099L,0x416219075D6D8AE4L,8L,0x416219075D6D8AE4L,0x7B07EE75AF26B099L,8L},{(-10L),8L,0x7B07EE75AF26B099L,0x416219075D6D8AE4L,8L,0x416219075D6D8AE4L,0x7B07EE75AF26B099L,8L},{(-10L),8L,0x7B07EE75AF26B099L,0x416219075D6D8AE4L,8L,0x416219075D6D8AE4L,0x7B07EE75AF26B099L,8L},{(-10L),8L,0x7B07EE75AF26B099L,0x416219075D6D8AE4L,8L,0x416219075D6D8AE4L,0x7B07EE75AF26B099L,8L},{(-10L),8L,0x7B07EE75AF26B099L,0x416219075D6D8AE4L,8L,0x416219075D6D8AE4L,0x7B07EE75AF26B099L,8L}};
                        int i, j;
                        l_227 |= (-3L);
                        l_229 = l_228;
                        l_231[0] ^= (l_230 &= 9L);
                        l_233[4][0] = l_232;
                        unsigned int result = 0;
                        result += l_227;
                        result += l_228;
                        result += l_229;
                        result += l_230;
                        int l_231_i0;
                        for (l_231_i0 = 0; l_231_i0 < 8; l_231_i0++) {
                            result += l_231[l_231_i0];
                        }
                        result += l_232;
                        int l_233_i0, l_233_i1;
                        for (l_233_i0 = 0; l_233_i0 < 10; l_233_i0++) {
                            for (l_233_i1 = 0; l_233_i1 < 8; l_233_i1++) {
                                result += l_233[l_233_i0][l_233_i1];
                            }
                        }
                        atomic_add(&p_1484->l_special_values[32], result);
                    }
                    else
                    { /* block id: 86 */
                        (1 + 1);
                    }
                    for (p_1484->g_63.f2 = 0; (p_1484->g_63.f2 == 2); p_1484->g_63.f2 = safe_add_func_int64_t_s_s(p_1484->g_63.f2, 4))
                    { /* block id: 91 */
                        int32_t *l_236 = &l_226;
                        (*l_236) ^= l_225;
                        if (l_237)
                            continue;
                        (*l_236) = ((safe_mod_func_uint32_t_u_u(GROUP_DIVERGE(2, 1), (**p_1484->g_167))) && ((-1L) >= 0x24EDL));
                        (*l_236) = ((void*)0 != l_240);
                    }
                    for (p_1484->g_63.f1 = (-15); (p_1484->g_63.f1 > 3); p_1484->g_63.f1++)
                    { /* block id: 99 */
                        (*p_1484->g_174) = l_243;
                        if ((**p_1484->g_174))
                            break;
                    }
                }
                else
                { /* block id: 103 */
                    uint16_t l_267 = 65535UL;
                    int32_t *l_268 = &p_1484->g_269;
                    int32_t *l_270 = &p_1484->g_271;
                    uint8_t *l_272 = &l_264;
                    l_274 ^= ((safe_rshift_func_uint16_t_u_s(((((--p_1484->g_150[0]) ^ ((safe_rshift_func_int16_t_s_s((safe_mul_func_int8_t_s_s(((safe_add_func_int8_t_s_s(p_51, (safe_mul_func_uint8_t_u_u((l_273 = ((l_256 , (((safe_lshift_func_int16_t_s_s((p_51 ^ (safe_rshift_func_int16_t_s_u((safe_rshift_func_int8_t_s_u(l_225, 7)), GROUP_DIVERGE(0, 1)))), p_52)) > (p_1484->g_263 , (((l_264 ^ ((((safe_rshift_func_int8_t_s_u(((l_226 = l_267) <= ((((*l_270) &= ((*l_268) &= ((4294967295UL != (*p_1484->g_175)) < p_1484->g_98))) , p_1484->g_164) == l_272)), p_1484->g_63.f1)) ^ l_267) != l_224) > GROUP_DIVERGE(1, 1))) , (void*)0) == (*p_1484->g_174)))) & (-1L))) & p_1484->g_34)), 0x2AL)))) , p_52), 0x60L)), 11)) == GROUP_DIVERGE(1, 1))) >= 0x6C21DDFAL) , p_1484->g_63.f1), 12)) ^ 7L);
                    for (p_1484->g_63.f2 = 0; (p_1484->g_63.f2 == 18); p_1484->g_63.f2 = safe_add_func_int64_t_s_s(p_1484->g_63.f2, 1))
                    { /* block id: 112 */
                        int16_t *l_290 = &p_1484->g_291[1][2][0];
                        int64_t *l_293 = &l_256.f0;
                        union U1 l_294 = {0x4A3E1B3F8737C3F5L};
                        int32_t *l_295 = &l_273;
                        (*l_295) = (safe_sub_func_int64_t_s_s((((l_267 ^ (((*p_1484->g_167) != &l_225) ^ (((safe_rshift_func_int8_t_s_u((safe_div_func_uint64_t_u_u((p_1484->g_34 , (FAKE_DIVERGE(p_1484->group_1_offset, get_group_id(1), 10) || (((*l_293) ^= ((*l_218) &= (safe_rshift_func_int8_t_s_u(p_51, (l_292 ^= (safe_div_func_int32_t_s_s(((-3L) < ((*l_290) = (0x16L < (safe_div_func_int8_t_s_s((&l_256 == (l_289 , &l_256)), p_1484->g_75[1][0]))))), (*p_1484->g_175)))))))) & 0xF94C00EDCAE9CAECL))), l_289.f0)), GROUP_DIVERGE(2, 1))) , l_294) , FAKE_DIVERGE(p_1484->global_0_offset, get_global_id(0), 10)))) ^ 0x0EE351D1072CD445L) > 0UL), l_294.f0));
                        if ((*p_1484->g_168))
                            continue;
                    }
                    if ((atomic_inc(&p_1484->l_atomic_input[23]) == 0))
                    { /* block id: 121 */
                        int32_t l_296 = 0x72D46976L;
                        uint8_t l_297 = 0x3EL;
                        int16_t l_298[8][4] = {{0x081EL,0L,0x70D7L,0L},{0x081EL,0L,0x70D7L,0L},{0x081EL,0L,0x70D7L,0L},{0x081EL,0L,0x70D7L,0L},{0x081EL,0L,0x70D7L,0L},{0x081EL,0L,0x70D7L,0L},{0x081EL,0L,0x70D7L,0L},{0x081EL,0L,0x70D7L,0L}};
                        uint64_t l_299 = 1UL;
                        int16_t l_302 = 0x6397L;
                        int32_t l_303 = 0L;
                        union U4 l_305[5] = {{0L},{0L},{0L},{0L},{0L}};
                        union U4 *l_304 = &l_305[2];
                        union U4 *l_306 = &l_305[1];
                        int i, j;
                        l_297 = l_296;
                        ++l_299;
                        l_303 = (l_302 , 7L);
                        l_306 = l_304;
                        unsigned int result = 0;
                        result += l_296;
                        result += l_297;
                        int l_298_i0, l_298_i1;
                        for (l_298_i0 = 0; l_298_i0 < 8; l_298_i0++) {
                            for (l_298_i1 = 0; l_298_i1 < 4; l_298_i1++) {
                                result += l_298[l_298_i0][l_298_i1];
                            }
                        }
                        result += l_299;
                        result += l_302;
                        result += l_303;
                        int l_305_i0;
                        for (l_305_i0 = 0; l_305_i0 < 5; l_305_i0++) {
                            result += l_305[l_305_i0].f0;
                            result += l_305[l_305_i0].f1;
                            result += l_305[l_305_i0].f2;
                            result += l_305[l_305_i0].f3;
                        }
                        atomic_add(&p_1484->l_special_values[23], result);
                    }
                    else
                    { /* block id: 126 */
                        (1 + 1);
                    }
                }
                return l_273;
            }
        }
        (*l_309) = l_307;
        return (*l_202);
    }
    for (p_1484->g_63.f2 = 0; (p_1484->g_63.f2 <= 6); p_1484->g_63.f2 += 1)
    { /* block id: 138 */
        uint16_t l_310 = 0x68A7L;
        return l_310;
    }
    for (p_1484->g_132 = 0; (p_1484->g_132 >= (-13)); p_1484->g_132 = safe_sub_func_uint16_t_u_u(p_1484->g_132, 4))
    { /* block id: 143 */
        int32_t l_315 = 0x5760842BL;
        int8_t l_325[7][6][6] = {{{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L}},{{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L}},{{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L}},{{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L}},{{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L}},{{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L}},{{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L},{0x26L,2L,0x31L,0L,1L,0x40L}}};
        int64_t *l_326 = &p_1484->g_63.f0;
        int64_t *l_327[9] = {&p_1484->g_63.f0,&p_1484->g_63.f0,&p_1484->g_63.f0,&p_1484->g_63.f0,&p_1484->g_63.f0,&p_1484->g_63.f0,&p_1484->g_63.f0,&p_1484->g_63.f0,&p_1484->g_63.f0};
        int32_t l_328[9];
        union U0 *l_394 = &p_1484->g_83;
        int i, j, k;
        for (i = 0; i < 9; i++)
            l_328[i] = (-1L);
        if ((safe_mod_func_int64_t_s_s(l_315, (l_328[0] &= ((safe_lshift_func_uint16_t_u_u(l_318, (((&p_1484->g_63 != &p_1484->g_63) > (safe_sub_func_int16_t_s_s(((**p_1484->g_174) & l_315), p_51))) || ((safe_rshift_func_int8_t_s_u(l_323, 4)) || (p_1484->g_324 , p_52))))) | l_325[0][5][5])))))
        { /* block id: 145 */
            if (p_52)
                break;
            if (p_52)
                break;
            for (p_1484->g_63.f3 = 25; (p_1484->g_63.f3 < 16); --p_1484->g_63.f3)
            { /* block id: 150 */
                uint32_t l_345 = 0x32767108L;
                for (l_274 = 0; (l_274 != (-8)); l_274--)
                { /* block id: 153 */
                    union U0 *l_335 = &p_1484->g_83;
                    for (p_52 = 0; (p_52 < (-26)); p_52 = safe_sub_func_int32_t_s_s(p_52, 7))
                    { /* block id: 156 */
                        int32_t *l_342 = (void*)0;
                        int32_t *l_343 = (void*)0;
                        int32_t *l_344 = &l_328[2];
                        (*p_1484->g_336) = l_335;
                        p_1484->g_98 |= ((p_1484->g_219 &= (((*p_1484->g_337) = (*l_335)) , (1L > p_1484->g_324.f0))) <= p_52);
                        l_338 = 6L;
                        (*l_344) = (!p_51);
                    }
                }
                ++l_345;
            }
        }
        else
        { /* block id: 167 */
            uint8_t l_385 = 0UL;
            int16_t *l_400 = &p_1484->g_291[1][2][0];
            int32_t l_405 = (-6L);
            int8_t *l_411 = &p_1484->g_132;
            for (p_51 = (-10); (p_51 != 5); p_51 = safe_add_func_int64_t_s_s(p_51, 4))
            { /* block id: 170 */
                int16_t *l_350 = (void*)0;
                int16_t *l_351 = &p_1484->g_291[2][5][2];
                int64_t *l_355[6];
                union U0 **l_356 = &p_1484->g_337;
                int32_t l_370 = 6L;
                int32_t l_376 = (-9L);
                int i;
                for (i = 0; i < 6; i++)
                    l_355[i] = &p_1484->g_219;
                if ((!(+(((*l_351) = (-6L)) < (safe_sub_func_int16_t_s_s((0x029A7A9CL || (p_51 >= 6UL)), (((l_354 != l_355[2]) , l_356) == &p_1484->g_337)))))))
                { /* block id: 172 */
                    union U0 ****l_368 = (void*)0;
                    union U0 ****l_369 = &p_1484->g_366;
                    uint8_t *l_373 = &p_1484->g_63.f1;
                    uint8_t *l_374 = &p_1484->g_63.f1;
                    uint8_t *l_375[6][7] = {{&l_264,&l_264,(void*)0,&l_264,&l_264,&l_264,(void*)0},{&l_264,&l_264,(void*)0,&l_264,&l_264,&l_264,(void*)0},{&l_264,&l_264,(void*)0,&l_264,&l_264,&l_264,(void*)0},{&l_264,&l_264,(void*)0,&l_264,&l_264,&l_264,(void*)0},{&l_264,&l_264,(void*)0,&l_264,&l_264,&l_264,(void*)0},{&l_264,&l_264,(void*)0,&l_264,&l_264,&l_264,(void*)0}};
                    int32_t l_377 = 7L;
                    int32_t l_378 = (-6L);
                    int i, j;
                    l_376 = (((p_51 >= (safe_mod_func_uint64_t_u_u(((safe_div_func_uint64_t_u_u((p_1484->g_361 , (safe_mul_func_uint8_t_u_u(6UL, (safe_sub_func_uint16_t_u_u(65535UL, ((*l_351) = (-1L))))))), FAKE_DIVERGE(p_1484->group_1_offset, get_group_id(1), 10))) , (((((*l_369) = p_1484->g_366) == (((((l_370 & (((*l_202) , (p_1484->g_380[3]++)) >= (((safe_mul_func_uint16_t_u_u((((!(((p_52 != GROUP_DIVERGE(2, 1)) > (*p_1484->g_168)) < p_1484->g_150[0])) <= p_51) & 0xC72F8FDAL), 0x4EE6L)) , (void*)0) == (void*)0))) != p_1484->g_95) <= (**p_1484->g_174)) , l_315) , (void*)0)) < p_52) , l_385)), p_52))) , (*l_202)) < (*l_202));
                }
                else
                { /* block id: 177 */
                    union U0 *l_395 = (void*)0;
                    int8_t **l_412 = &l_411;
                    int32_t l_419 = (-1L);
                    for (l_338 = 0; (l_338 == (-7)); --l_338)
                    { /* block id: 180 */
                        int16_t *l_401[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
                        uint64_t *l_402 = &p_1484->g_380[7];
                        int32_t *l_403 = &l_328[0];
                        int32_t *l_404 = &l_370;
                        int i;
                        (*l_404) = (((*l_202) , (safe_rshift_func_int16_t_s_u(((p_1484->g_95 >= (safe_add_func_uint32_t_u_u(l_385, (safe_mul_func_int8_t_s_s(((l_394 != l_395) > 0xAE93L), (((*l_354) = 0x41CC60DBF6BAB203L) || (((*l_403) = (0x83D8C6B96F129DDEL && ((*l_402) = (safe_mod_func_int64_t_s_s((safe_sub_func_int64_t_s_s((((l_400 != l_401[3]) < l_385) < 5UL), p_52)), p_51))))) != 6UL))))))) == p_1484->g_361.f0), p_51))) < p_52);
                        if (p_51)
                            break;
                        l_405 = 1L;
                        (*p_1484->g_174) = (void*)0;
                    }
                    if ((safe_add_func_uint8_t_u_u(((((p_51 | ((safe_mul_func_uint16_t_u_u((((*l_354) ^= (p_52 <= ((p_1484->g_410[0][0] , (((*l_412) = l_411) != ((safe_sub_func_uint64_t_u_u(p_1484->g_105.f0, (((safe_div_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), (safe_mul_func_uint8_t_u_u(p_51, ((((l_385 != (l_419 ^= 9L)) | (safe_div_func_uint32_t_u_u(((p_1484->g_63 , &p_1484->g_164) == (void*)0), p_1484->g_98))) & 0x088D73E6L) == 0x4B555033L))))) > p_1484->g_106) ^ p_1484->g_380[3]))) , &p_1484->g_132))) > l_405))) < 0x951D64A8A4F5FCD8L), p_52)) && p_1484->g_379)) <= p_52) ^ p_52) , p_1484->g_105.f0), p_1484->g_83.f3)))
                    { /* block id: 192 */
                        (*p_1484->g_174) = (void*)0;
                        return p_51;
                    }
                    else
                    { /* block id: 195 */
                        return p_1484->g_361.f0;
                    }
                }
                return p_1484->g_95;
            }
        }
        return p_52;
    }
    (*l_447) &= (((safe_sub_func_uint8_t_u_u((*l_202), 0xCAL)) , (safe_div_func_int16_t_s_s(p_1484->g_8, (l_274 &= (&l_202 != ((safe_mod_func_uint32_t_u_u(((safe_add_func_uint16_t_u_u((l_430 != (void*)0), ((*l_446) = (safe_unary_minus_func_uint64_t_u((((p_1484->g_432 , FAKE_DIVERGE(p_1484->group_1_offset, get_group_id(1), 10)) > (((FAKE_DIVERGE(p_1484->group_0_offset, get_group_id(0), 10) > ((-5L) >= (safe_lshift_func_uint8_t_u_u(((*l_442) = (safe_sub_func_int32_t_s_s((safe_rshift_func_uint8_t_u_s((((*l_441) = (((safe_rshift_func_uint16_t_u_s((*l_202), p_1484->g_150[0])) < (*p_1484->g_175)) != (*p_1484->g_175))) < 0x59L), p_1484->g_271)), p_52))), p_1484->g_269)))) || GROUP_DIVERGE(1, 1)) & 1UL)) == 0x1A2BL)))))) < p_51), GROUP_DIVERGE(0, 1))) , &p_1484->g_339[0])))))) >= 0x04L);
    return p_51;
}


/* ------------------------------------------ */
/* 
 * reads : p_1484->g_65 p_1484->g_65.f0 p_1484->g_34 p_1484->g_75 p_1484->g_33 p_1484->g_82 p_1484->g_132 p_1484->g_134 p_1484->g_83.f0 p_1484->g_167 p_1484->g_174 p_1484->g_63.f0 p_1484->g_175 p_1484->g_189
 * writes: p_1484->g_63.f0 p_1484->g_75 p_1484->g_164 p_1484->g_165 p_1484->g_95 p_1484->g_98
 */
union U4  func_55(union U5  p_56, union U0  p_57, struct S6 * p_1484)
{ /* block id: 13 */
    int64_t l_72 = 0x4E4CA00AF4084F7CL;
    int64_t *l_73 = (void*)0;
    uint32_t *l_74 = &p_1484->g_75[3][0];
    int16_t *l_78[2][2];
    int32_t l_79 = (-6L);
    int32_t l_145 = 0x4E0C39D9L;
    int32_t l_149 = 1L;
    int8_t *l_163 = (void*)0;
    int32_t l_179 = 0x3D54A883L;
    int32_t l_180 = (-4L);
    int32_t l_181 = 0x2EDFD8EEL;
    int32_t l_183 = 0x4BF6C0B2L;
    int32_t l_184 = 0x517D0ED0L;
    int32_t *l_188 = &l_181;
    int i, j;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 2; j++)
            l_78[i][j] = (void*)0;
    }
    if ((p_1484->g_65 , (((((-2L) && ((safe_mod_func_int16_t_s_s((l_79 = (safe_mod_func_int8_t_s_s((!(safe_lshift_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), ((FAKE_DIVERGE(p_1484->global_1_offset, get_global_id(1), 10) ^ 0x9900L) || (((l_72 < (p_1484->g_63.f0 = l_72)) <= ((p_1484->g_65.f0 != p_1484->g_34) != (--(*l_74)))) && FAKE_DIVERGE(p_1484->global_0_offset, get_global_id(0), 10)))))), p_56.f0))), (safe_mul_func_int8_t_s_s(((l_72 , p_57.f0) && p_56.f0), FAKE_DIVERGE(p_1484->global_2_offset, get_global_id(2), 10))))) | p_1484->g_33[3])) , p_1484->g_34) , p_1484->g_82[5]) != &p_57)))
    { /* block id: 17 */
        int32_t *l_85 = &p_1484->g_34;
        int32_t **l_84 = &l_85;
        int32_t l_139 = 1L;
        int32_t l_148 = 0x08DCF833L;
        int32_t *l_153 = &p_1484->g_95;
        int8_t l_158 = 0x0FL;
        int8_t *l_162 = &l_158;
        int8_t **l_161[5][1];
        int64_t l_166[10][1][3] = {{{0L,1L,0x7B72FBF4AD52605CL}},{{0L,1L,0x7B72FBF4AD52605CL}},{{0L,1L,0x7B72FBF4AD52605CL}},{{0L,1L,0x7B72FBF4AD52605CL}},{{0L,1L,0x7B72FBF4AD52605CL}},{{0L,1L,0x7B72FBF4AD52605CL}},{{0L,1L,0x7B72FBF4AD52605CL}},{{0L,1L,0x7B72FBF4AD52605CL}},{{0L,1L,0x7B72FBF4AD52605CL}},{{0L,1L,0x7B72FBF4AD52605CL}}};
        int i, j, k;
        for (i = 0; i < 5; i++)
        {
            for (j = 0; j < 1; j++)
                l_161[i][j] = &l_162;
        }
        (*l_84) = &p_1484->g_33[3];
        for (l_79 = 0; (l_79 < 3); l_79++)
        { /* block id: 21 */
            uint32_t *l_90 = &p_1484->g_75[4][1];
            int32_t *l_94 = &p_1484->g_95;
            int32_t l_146 = (-4L);
            int32_t l_147 = 0x1DCF4DCFL;
            (1 + 1);
        }
        l_153 = &p_1484->g_95;
        (*l_153) = ((p_1484->g_33[3] && (safe_mod_func_uint8_t_u_u(((((*l_74) = ((safe_add_func_uint16_t_u_u((l_158 , p_57.f0), (safe_add_func_int16_t_s_s((&p_1484->g_132 == (p_1484->g_164 = (l_163 = &p_1484->g_132))), GROUP_DIVERGE(0, 1))))) || (p_1484->g_165 = (((l_145 &= 0x7402L) || (p_1484->g_132 && (p_1484->g_134[8] , (8UL || (**l_84))))) > p_56.f0)))) | p_57.f0) && l_166[6][0][2]), l_72))) | p_1484->g_83.f0);
    }
    else
    { /* block id: 54 */
        int32_t *l_171 = &p_1484->g_98;
        int32_t *l_176 = &l_145;
        int32_t *l_177[7][5] = {{&l_145,&l_79,&p_1484->g_34,&l_79,&l_145},{&l_145,&l_79,&p_1484->g_34,&l_79,&l_145},{&l_145,&l_79,&p_1484->g_34,&l_79,&l_145},{&l_145,&l_79,&p_1484->g_34,&l_79,&l_145},{&l_145,&l_79,&p_1484->g_34,&l_79,&l_145},{&l_145,&l_79,&p_1484->g_34,&l_79,&l_145},{&l_145,&l_79,&p_1484->g_34,&l_79,&l_145}};
        int32_t l_178 = 0x00449F6AL;
        int32_t l_182 = 0x3175C3F9L;
        uint16_t l_185 = 0xB19BL;
        int i, j;
        (*l_176) = ((((p_57.f0 <= 18446744073709551610UL) | (((void*)0 != p_1484->g_167) != ((safe_sub_func_uint32_t_u_u((((*l_171) = l_149) > 8UL), (safe_add_func_int8_t_s_s(((GROUP_DIVERGE(1, 1) <= (-1L)) == (0x5E74A5FEA7228B4AL != ((p_1484->g_174 == (void*)0) ^ 1UL))), 0x38L)))) == p_1484->g_63.f0))) ^ p_57.f0) || 0x5B360F52L);
        l_185--;
    }
    (*l_188) &= (*p_1484->g_175);
    return p_1484->g_189;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[33];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 33; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[33];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 33; i++)
            l_special_values[i] = 0;
    struct S6 c_1485;
    struct S6* p_1484 = &c_1485;
    struct S6 c_1486 = {
        (-1L), // p_1484->g_8
        0x14B58FE4L, // p_1484->g_32
        {1L,1L,1L,1L,1L,1L,1L}, // p_1484->g_33
        1L, // p_1484->g_34
        {{0x66B3883FL}}, // p_1484->g_48
        {-10L}, // p_1484->g_63
        {-5L}, // p_1484->g_65
        {{0xBE4B24D3L,0x667D1577L,4294967289UL,4294967292UL,0x667D1577L,4294967292UL},{0xBE4B24D3L,0x667D1577L,4294967289UL,4294967292UL,0x667D1577L,4294967292UL},{0xBE4B24D3L,0x667D1577L,4294967289UL,4294967292UL,0x667D1577L,4294967292UL},{0xBE4B24D3L,0x667D1577L,4294967289UL,4294967292UL,0x667D1577L,4294967292UL},{0xBE4B24D3L,0x667D1577L,4294967289UL,4294967292UL,0x667D1577L,4294967292UL}}, // p_1484->g_75
        {1UL}, // p_1484->g_83
        {&p_1484->g_83,&p_1484->g_83,&p_1484->g_83,&p_1484->g_83,&p_1484->g_83,&p_1484->g_83,&p_1484->g_83,&p_1484->g_83,&p_1484->g_83,&p_1484->g_83}, // p_1484->g_82
        {0x76120E7AL}, // p_1484->g_91
        0x73FCFB24L, // p_1484->g_95
        0x5C07A264L, // p_1484->g_98
        {4UL}, // p_1484->g_105
        65535UL, // p_1484->g_106
        0xBFD28FE8L, // p_1484->g_130
        0x07L, // p_1484->g_132
        {{5L},{5L},{5L},{5L},{5L},{5L},{5L},{5L},{5L},{5L}}, // p_1484->g_134
        {0x68CF5763L}, // p_1484->g_150
        (void*)0, // p_1484->g_164
        0x5F296341L, // p_1484->g_165
        &p_1484->g_34, // p_1484->g_168
        &p_1484->g_168, // p_1484->g_167
        &p_1484->g_34, // p_1484->g_175
        &p_1484->g_175, // p_1484->g_174
        {-10L}, // p_1484->g_189
        0x072545833043BC25L, // p_1484->g_219
        {-9L}, // p_1484->g_263
        0x6273A6DBL, // p_1484->g_269
        0x7954EC6FL, // p_1484->g_271
        {{{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L}},{{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L}},{{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L}},{{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L}},{{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L},{1L,(-1L),(-1L),(-9L),1L}}}, // p_1484->g_291
        {7UL}, // p_1484->g_324
        &p_1484->g_83, // p_1484->g_337
        &p_1484->g_337, // p_1484->g_336
        {&p_1484->g_95,&p_1484->g_95}, // p_1484->g_339
        (void*)0, // p_1484->g_340
        (void*)0, // p_1484->g_341
        {1L}, // p_1484->g_361
        &p_1484->g_337, // p_1484->g_367
        &p_1484->g_367, // p_1484->g_366
        1L, // p_1484->g_379
        {3UL,0x28970B20D0595477L,18446744073709551615UL,0x28970B20D0595477L,3UL,3UL,0x28970B20D0595477L,18446744073709551615UL,0x28970B20D0595477L,3UL}, // p_1484->g_380
        {{{0L},{0L},{0x6895FE29L}},{{0L},{0L},{0x6895FE29L}},{{0L},{0L},{0x6895FE29L}},{{0L},{0L},{0x6895FE29L}},{{0L},{0L},{0x6895FE29L}}}, // p_1484->g_410
        {4294967286UL}, // p_1484->g_432
        {{-1L},{-1L},{-1L},{-1L},{-1L}}, // p_1484->g_481
        1L, // p_1484->g_520
        0L, // p_1484->g_523
        {1L,1L}, // p_1484->g_534
        18446744073709551607UL, // p_1484->g_535
        &p_1484->g_219, // p_1484->g_552
        {{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}}, // p_1484->g_578
        {{{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}}},{{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}}},{{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}}},{{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}}},{{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}}},{{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}}},{{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}}},{{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}}},{{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}},{{0x685E7BF9L},{3L},{-1L},{0x35346294L}}}}, // p_1484->g_603
        7L, // p_1484->g_619
        &p_1484->g_164, // p_1484->g_624
        {0UL,0UL,0UL}, // p_1484->g_657
        {3L}, // p_1484->g_661
        {0x5B95EFFAL}, // p_1484->g_674
        {{&p_1484->g_380[7],&p_1484->g_535,&p_1484->g_380[3],&p_1484->g_380[3],&p_1484->g_380[3],&p_1484->g_535,&p_1484->g_380[7],&p_1484->g_380[7],(void*)0,(void*)0},{&p_1484->g_380[7],&p_1484->g_535,&p_1484->g_380[3],&p_1484->g_380[3],&p_1484->g_380[3],&p_1484->g_535,&p_1484->g_380[7],&p_1484->g_380[7],(void*)0,(void*)0},{&p_1484->g_380[7],&p_1484->g_535,&p_1484->g_380[3],&p_1484->g_380[3],&p_1484->g_380[3],&p_1484->g_535,&p_1484->g_380[7],&p_1484->g_380[7],(void*)0,(void*)0}}, // p_1484->g_690
        {&p_1484->g_690[2][2],&p_1484->g_690[2][2],&p_1484->g_690[2][2]}, // p_1484->g_689
        &p_1484->g_657[2], // p_1484->g_718
        &p_1484->g_718, // p_1484->g_717
        0x33757D9ACB2DA21BL, // p_1484->g_725
        {-4L}, // p_1484->g_753
        0xC8L, // p_1484->g_764
        {{{0x31F22BCFL},{0x31F22BCFL},{0x31F22BCFL},{0x31F22BCFL},{0x31F22BCFL}},{{0x31F22BCFL},{0x31F22BCFL},{0x31F22BCFL},{0x31F22BCFL},{0x31F22BCFL}},{{0x31F22BCFL},{0x31F22BCFL},{0x31F22BCFL},{0x31F22BCFL},{0x31F22BCFL}},{{0x31F22BCFL},{0x31F22BCFL},{0x31F22BCFL},{0x31F22BCFL},{0x31F22BCFL}},{{0x31F22BCFL},{0x31F22BCFL},{0x31F22BCFL},{0x31F22BCFL},{0x31F22BCFL}}}, // p_1484->g_793
        {1UL}, // p_1484->g_796
        0x21D29713L, // p_1484->g_876
        (void*)0, // p_1484->g_898
        (void*)0, // p_1484->g_921
        0xE1BDAEF2A6EAC5B7L, // p_1484->g_947
        &p_1484->g_947, // p_1484->g_946
        &p_1484->g_33[5], // p_1484->g_962
        (-1L), // p_1484->g_965
        {{&p_1484->g_965,&p_1484->g_965,&p_1484->g_965},{&p_1484->g_965,&p_1484->g_965,&p_1484->g_965},{&p_1484->g_965,&p_1484->g_965,&p_1484->g_965},{&p_1484->g_965,&p_1484->g_965,&p_1484->g_965},{&p_1484->g_965,&p_1484->g_965,&p_1484->g_965},{&p_1484->g_965,&p_1484->g_965,&p_1484->g_965},{&p_1484->g_965,&p_1484->g_965,&p_1484->g_965}}, // p_1484->g_964
        &p_1484->g_964[1][0], // p_1484->g_963
        {0x381D07D1A7B30D17L}, // p_1484->g_1031
        (void*)0, // p_1484->g_1056
        &p_1484->g_1056, // p_1484->g_1055
        0UL, // p_1484->g_1065
        {0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL}, // p_1484->g_1076
        1UL, // p_1484->g_1098
        {{{{1L},{1L},{-1L},{0L},{0x04BDBC27L}},{{1L},{1L},{-1L},{0L},{0x04BDBC27L}},{{1L},{1L},{-1L},{0L},{0x04BDBC27L}},{{1L},{1L},{-1L},{0L},{0x04BDBC27L}}},{{{1L},{1L},{-1L},{0L},{0x04BDBC27L}},{{1L},{1L},{-1L},{0L},{0x04BDBC27L}},{{1L},{1L},{-1L},{0L},{0x04BDBC27L}},{{1L},{1L},{-1L},{0L},{0x04BDBC27L}}},{{{1L},{1L},{-1L},{0L},{0x04BDBC27L}},{{1L},{1L},{-1L},{0L},{0x04BDBC27L}},{{1L},{1L},{-1L},{0L},{0x04BDBC27L}},{{1L},{1L},{-1L},{0L},{0x04BDBC27L}}},{{{1L},{1L},{-1L},{0L},{0x04BDBC27L}},{{1L},{1L},{-1L},{0L},{0x04BDBC27L}},{{1L},{1L},{-1L},{0L},{0x04BDBC27L}},{{1L},{1L},{-1L},{0L},{0x04BDBC27L}}},{{{1L},{1L},{-1L},{0L},{0x04BDBC27L}},{{1L},{1L},{-1L},{0L},{0x04BDBC27L}},{{1L},{1L},{-1L},{0L},{0x04BDBC27L}},{{1L},{1L},{-1L},{0L},{0x04BDBC27L}}},{{{1L},{1L},{-1L},{0L},{0x04BDBC27L}},{{1L},{1L},{-1L},{0L},{0x04BDBC27L}},{{1L},{1L},{-1L},{0L},{0x04BDBC27L}},{{1L},{1L},{-1L},{0L},{0x04BDBC27L}}}}, // p_1484->g_1123
        {0x52228BD8L}, // p_1484->g_1188
        (void*)0, // p_1484->g_1199
        {&p_1484->g_1199,&p_1484->g_1199,&p_1484->g_1199,&p_1484->g_1199,&p_1484->g_1199,&p_1484->g_1199,&p_1484->g_1199,&p_1484->g_1199}, // p_1484->g_1198
        {0x3FE79503L}, // p_1484->g_1219
        {{{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L}},{{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L}},{{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L}},{{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L}},{{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L},{0x0FL,0L,7L,0x56L}}}, // p_1484->g_1242
        {0x7762D0A5L}, // p_1484->g_1266
        {0x4B7D367AL}, // p_1484->g_1273
        (void*)0, // p_1484->g_1278
        {0L}, // p_1484->g_1294
        {0x7014D11CL}, // p_1484->g_1329
        (void*)0, // p_1484->g_1332
        &p_1484->g_1332, // p_1484->g_1331
        {0x4C1E70B8L}, // p_1484->g_1335
        {0L}, // p_1484->g_1372
        {{{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}}},{{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}}},{{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}}},{{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}}},{{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}}},{{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}}},{{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}}},{{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}},{{1L},{-9L},{0x7A7D77D3L}}}}, // p_1484->g_1376
        &p_1484->g_1376[0][0][1], // p_1484->g_1375
        &p_1484->g_1123[2][3][2], // p_1484->g_1388
        &p_1484->g_1388, // p_1484->g_1387
        {0x67481291L}, // p_1484->g_1391
        {0x273F8BDEL}, // p_1484->g_1411
        0UL, // p_1484->g_1468
        0x8CL, // p_1484->g_1474
        {{0x3C9E66F6L,(-8L),5L,(-8L),0x3C9E66F6L,0x3C9E66F6L,(-8L)},{0x3C9E66F6L,(-8L),5L,(-8L),0x3C9E66F6L,0x3C9E66F6L,(-8L)},{0x3C9E66F6L,(-8L),5L,(-8L),0x3C9E66F6L,0x3C9E66F6L,(-8L)},{0x3C9E66F6L,(-8L),5L,(-8L),0x3C9E66F6L,0x3C9E66F6L,(-8L)}}, // p_1484->g_1483
        sequence_input[get_global_id(0)], // p_1484->global_0_offset
        sequence_input[get_global_id(1)], // p_1484->global_1_offset
        sequence_input[get_global_id(2)], // p_1484->global_2_offset
        sequence_input[get_local_id(0)], // p_1484->local_0_offset
        sequence_input[get_local_id(1)], // p_1484->local_1_offset
        sequence_input[get_local_id(2)], // p_1484->local_2_offset
        sequence_input[get_group_id(0)], // p_1484->group_0_offset
        sequence_input[get_group_id(1)], // p_1484->group_1_offset
        sequence_input[get_group_id(2)], // p_1484->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_1485 = c_1486;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1484);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1484->g_8, "p_1484->g_8", print_hash_value);
    transparent_crc(p_1484->g_32, "p_1484->g_32", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1484->g_33[i], "p_1484->g_33[i]", print_hash_value);

    }
    transparent_crc(p_1484->g_34, "p_1484->g_34", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1484->g_48[i].f0, "p_1484->g_48[i].f0", print_hash_value);

    }
    transparent_crc(p_1484->g_65.f0, "p_1484->g_65.f0", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_1484->g_75[i][j], "p_1484->g_75[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1484->g_83.f0, "p_1484->g_83.f0", print_hash_value);
    transparent_crc(p_1484->g_91.f0, "p_1484->g_91.f0", print_hash_value);
    transparent_crc(p_1484->g_95, "p_1484->g_95", print_hash_value);
    transparent_crc(p_1484->g_98, "p_1484->g_98", print_hash_value);
    transparent_crc(p_1484->g_105.f0, "p_1484->g_105.f0", print_hash_value);
    transparent_crc(p_1484->g_106, "p_1484->g_106", print_hash_value);
    transparent_crc(p_1484->g_130, "p_1484->g_130", print_hash_value);
    transparent_crc(p_1484->g_132, "p_1484->g_132", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1484->g_134[i].f0, "p_1484->g_134[i].f0", print_hash_value);

    }
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1484->g_150[i], "p_1484->g_150[i]", print_hash_value);

    }
    transparent_crc(p_1484->g_165, "p_1484->g_165", print_hash_value);
    transparent_crc(p_1484->g_189.f0, "p_1484->g_189.f0", print_hash_value);
    transparent_crc(p_1484->g_219, "p_1484->g_219", print_hash_value);
    transparent_crc(p_1484->g_263.f0, "p_1484->g_263.f0", print_hash_value);
    transparent_crc(p_1484->g_269, "p_1484->g_269", print_hash_value);
    transparent_crc(p_1484->g_271, "p_1484->g_271", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1484->g_291[i][j][k], "p_1484->g_291[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1484->g_324.f0, "p_1484->g_324.f0", print_hash_value);
    transparent_crc(p_1484->g_361.f0, "p_1484->g_361.f0", print_hash_value);
    transparent_crc(p_1484->g_379, "p_1484->g_379", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1484->g_380[i], "p_1484->g_380[i]", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1484->g_410[i][j].f0, "p_1484->g_410[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1484->g_432.f0, "p_1484->g_432.f0", print_hash_value);
    transparent_crc(p_1484->g_520, "p_1484->g_520", print_hash_value);
    transparent_crc(p_1484->g_523, "p_1484->g_523", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1484->g_534[i], "p_1484->g_534[i]", print_hash_value);

    }
    transparent_crc(p_1484->g_535, "p_1484->g_535", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1484->g_578[i].f0, "p_1484->g_578[i].f0", print_hash_value);

    }
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1484->g_603[i][j][k].f0, "p_1484->g_603[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1484->g_619, "p_1484->g_619", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1484->g_657[i], "p_1484->g_657[i]", print_hash_value);

    }
    transparent_crc(p_1484->g_661.f0, "p_1484->g_661.f0", print_hash_value);
    transparent_crc(p_1484->g_674.f0, "p_1484->g_674.f0", print_hash_value);
    transparent_crc(p_1484->g_725, "p_1484->g_725", print_hash_value);
    transparent_crc(p_1484->g_753.f0, "p_1484->g_753.f0", print_hash_value);
    transparent_crc(p_1484->g_764, "p_1484->g_764", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1484->g_793[i][j].f0, "p_1484->g_793[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1484->g_796.f0, "p_1484->g_796.f0", print_hash_value);
    transparent_crc(p_1484->g_876, "p_1484->g_876", print_hash_value);
    transparent_crc(p_1484->g_947, "p_1484->g_947", print_hash_value);
    transparent_crc(p_1484->g_965, "p_1484->g_965", print_hash_value);
    transparent_crc(p_1484->g_1031.f0, "p_1484->g_1031.f0", print_hash_value);
    transparent_crc(p_1484->g_1065, "p_1484->g_1065", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1484->g_1076[i], "p_1484->g_1076[i]", print_hash_value);

    }
    transparent_crc(p_1484->g_1098, "p_1484->g_1098", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1484->g_1123[i][j][k].f0, "p_1484->g_1123[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1484->g_1188.f0, "p_1484->g_1188.f0", print_hash_value);
    transparent_crc(p_1484->g_1219.f0, "p_1484->g_1219.f0", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1484->g_1242[i][j][k], "p_1484->g_1242[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1484->g_1266.f0, "p_1484->g_1266.f0", print_hash_value);
    transparent_crc(p_1484->g_1273.f0, "p_1484->g_1273.f0", print_hash_value);
    transparent_crc(p_1484->g_1294.f0, "p_1484->g_1294.f0", print_hash_value);
    transparent_crc(p_1484->g_1329.f0, "p_1484->g_1329.f0", print_hash_value);
    transparent_crc(p_1484->g_1335.f0, "p_1484->g_1335.f0", print_hash_value);
    transparent_crc(p_1484->g_1372.f0, "p_1484->g_1372.f0", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1484->g_1376[i][j][k].f0, "p_1484->g_1376[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1484->g_1391.f0, "p_1484->g_1391.f0", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1484->g_1411[i], "p_1484->g_1411[i]", print_hash_value);

    }
    transparent_crc(p_1484->g_1468, "p_1484->g_1468", print_hash_value);
    transparent_crc(p_1484->g_1474, "p_1484->g_1474", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1484->g_1483[i][j], "p_1484->g_1483[i][j]", print_hash_value);

        }
    }
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 33; i++)
            transparent_crc(p_1484->g_special_values[i + 33 * get_linear_group_id()], "p_1484->g_special_values[i + 33 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 33; i++)
            transparent_crc(p_1484->l_special_values[i], "p_1484->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
