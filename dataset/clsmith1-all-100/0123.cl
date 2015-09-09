// --atomics 43 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 54,27,3 -l 6,1,1
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

__constant uint32_t permutations[10][6] = {
{1,4,0,5,3,2}, // permutation 0
{1,0,2,4,3,5}, // permutation 1
{2,0,3,1,5,4}, // permutation 2
{1,4,3,0,2,5}, // permutation 3
{4,0,3,2,5,1}, // permutation 4
{1,5,0,2,3,4}, // permutation 5
{5,0,4,3,2,1}, // permutation 6
{1,2,3,0,4,5}, // permutation 7
{5,4,0,1,2,3}, // permutation 8
{4,5,3,1,2,0} // permutation 9
};

// Seed: 123

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint16_t  f0;
};

struct S1 {
    VECTOR(int16_t, 4) g_7;
    struct S0 g_12;
    VECTOR(int16_t, 8) g_28;
    struct S0 g_61[3];
    struct S0 * volatile g_60;
    int32_t g_64;
    int32_t * volatile g_63;
    int32_t * volatile g_66;
    int32_t * volatile g_67;
    volatile VECTOR(uint16_t, 4) g_71;
    int8_t g_87;
    volatile VECTOR(int32_t, 4) g_90;
    int32_t g_105;
    uint64_t g_113;
    int8_t g_118;
    int32_t * volatile g_120[5][1];
    int16_t g_161;
    int32_t * volatile g_164[6];
    volatile VECTOR(int32_t, 2) g_174;
    VECTOR(int64_t, 16) g_180;
    volatile VECTOR(int32_t, 4) g_196;
    volatile VECTOR(int8_t, 4) g_222;
    VECTOR(uint64_t, 16) g_229;
    uint16_t *g_245;
    uint16_t *g_247;
    uint32_t g_250;
    int32_t * volatile g_252;
    int32_t *g_256[8][5];
    int32_t ** volatile g_255[10][2];
    int32_t ** volatile g_257;
    VECTOR(uint8_t, 4) g_260;
    volatile VECTOR(int32_t, 16) g_280;
    int32_t ** volatile g_302;
    volatile VECTOR(int32_t, 8) g_305;
    struct S0 * volatile g_312;
    uint32_t g_321;
    struct S0 * volatile g_338;
    int32_t ** volatile g_340;
    volatile uint32_t **g_372;
    volatile int8_t g_398;
    int16_t *g_440;
    int16_t **g_439[3][7];
    int32_t ** volatile g_478[4];
    uint32_t *g_490;
    int8_t g_499;
    VECTOR(int32_t, 4) g_514;
    VECTOR(int64_t, 8) g_531;
    struct S0 g_538;
    struct S0 * volatile g_537;
    VECTOR(int8_t, 2) g_553;
    volatile VECTOR(int16_t, 4) g_558;
    VECTOR(uint32_t, 2) g_562;
    VECTOR(uint32_t, 8) g_563;
    VECTOR(int8_t, 8) g_592;
    volatile int64_t g_595[6];
    volatile int64_t *g_594;
    volatile int64_t ** volatile g_593[5];
    volatile int64_t * volatile *g_596[2];
    volatile VECTOR(int16_t, 4) g_605;
    VECTOR(int64_t, 8) g_611;
    VECTOR(int32_t, 16) g_636;
    volatile VECTOR(uint16_t, 2) g_649;
    volatile VECTOR(int32_t, 4) g_711;
    uint32_t ***g_729;
    uint32_t **g_741;
    uint32_t ***g_740;
    uint32_t ****g_739;
    int32_t ** volatile g_862;
    int32_t ** volatile g_870;
    int32_t ** volatile g_873[10];
    int32_t * volatile g_928;
    int16_t g_938;
    VECTOR(uint64_t, 8) g_942;
    volatile uint16_t g_954[10][2];
    volatile VECTOR(int32_t, 16) g_984;
    VECTOR(int32_t, 8) g_985;
    VECTOR(uint16_t, 8) g_989;
    struct S0 * volatile g_1000[4][7][4];
    volatile VECTOR(uint16_t, 4) g_1017;
    VECTOR(uint16_t, 8) g_1022;
    int32_t ** volatile g_1057[10][7];
    int32_t ** volatile g_1058;
    int32_t ** volatile g_1082;
    volatile VECTOR(uint32_t, 2) g_1083;
    VECTOR(int64_t, 2) g_1084;
    VECTOR(int32_t, 16) g_1089;
    int32_t g_1092;
    volatile VECTOR(uint32_t, 2) g_1097;
    VECTOR(uint32_t, 2) g_1102;
    VECTOR(uint32_t, 8) g_1103;
    volatile VECTOR(int8_t, 16) g_1127;
    volatile VECTOR(int32_t, 8) g_1128;
    VECTOR(int8_t, 8) g_1154;
    int32_t * volatile g_1166;
    VECTOR(int64_t, 8) g_1175;
    VECTOR(int64_t, 8) g_1177;
    VECTOR(int16_t, 8) g_1179;
    volatile VECTOR(uint16_t, 16) g_1181;
    VECTOR(int32_t, 2) g_1182;
    VECTOR(int32_t, 2) g_1183;
    VECTOR(uint64_t, 2) g_1191;
    int64_t g_1214;
    VECTOR(int8_t, 16) g_1217;
    VECTOR(int32_t, 4) g_1250;
    int32_t g_1275;
    VECTOR(int8_t, 2) g_1277;
    uint32_t g_1283[7][9];
    volatile int32_t *g_1289;
    struct S0 * volatile g_1292;
    uint64_t *g_1297;
    uint32_t g_1312;
    volatile uint8_t g_1319[6][10];
    volatile uint8_t * volatile g_1318;
    int64_t *g_1363;
    int64_t **g_1362[10];
    volatile VECTOR(int16_t, 16) g_1375;
    int32_t * volatile g_1399;
    VECTOR(uint16_t, 2) g_1404;
    volatile VECTOR(int64_t, 8) g_1405;
    volatile VECTOR(int64_t, 8) g_1407;
    struct S0 *g_1424;
    VECTOR(uint32_t, 2) g_1430;
    VECTOR(uint32_t, 2) g_1432;
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
int32_t  func_1(struct S1 * p_1457);
int32_t  func_2(int16_t  p_3, int64_t  p_4, struct S1 * p_1457);
int16_t  func_10(struct S0  p_11, struct S1 * p_1457);
uint16_t  func_20(int32_t  p_21, int16_t  p_22, struct S1 * p_1457);
int16_t  func_32(int16_t ** p_33, struct S1 * p_1457);
int32_t  func_36(int16_t *** p_37, uint32_t  p_38, int16_t * p_39, struct S1 * p_1457);
int16_t *** func_40(int16_t * p_41, struct S1 * p_1457);
int16_t * func_42(int16_t * p_43, int16_t *** p_44, int8_t  p_45, uint64_t  p_46, uint16_t  p_47, struct S1 * p_1457);
struct S0  func_54(struct S0  p_55, struct S1 * p_1457);
int16_t  func_99(int32_t * p_100, struct S0 * p_101, int32_t * p_102, struct S1 * p_1457);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1457->l_comm_values p_1457->g_7 p_1457->g_12 p_1457->g_comm_values p_1457->g_60 p_1457->g_61.f0 p_1457->g_63 p_1457->g_67 p_1457->g_64 p_1457->g_71 p_1457->g_90 p_1457->g_105 p_1457->g_113 p_1457->g_61 p_1457->g_118 p_1457->g_87 p_1457->g_161 p_1457->g_174 p_1457->g_180 p_1457->g_196 p_1457->g_252 p_1457->g_250 p_1457->g_257 p_1457->g_260 p_1457->g_280 p_1457->g_302 p_1457->g_305 p_1457->g_338 p_1457->g_340 p_1457->g_222 p_1457->g_490 p_1457->g_499 p_1457->g_514 p_1457->g_440 p_1457->g_531 p_1457->g_229 p_1457->g_537 p_1457->g_553 p_1457->g_558 p_1457->g_562 p_1457->g_563 p_1457->g_592 p_1457->g_593 p_1457->g_596 p_1457->g_649 p_1457->g_594 p_1457->g_595 p_1457->g_711 p_1457->g_729 p_1457->g_636 p_1457->g_538 p_1457->g_739 p_1457->g_605 p_1457->g_611 p_1457->g_862 p_1457->g_870 p_1457->g_928 p_1457->g_942 p_1457->g_954 p_1457->g_321 p_1457->g_984 p_1457->g_985 p_1457->g_989 p_1457->g_1058 p_1457->g_1082 p_1457->g_1083 p_1457->g_1084 p_1457->g_1089 p_1457->g_1092 p_1457->g_1097 p_1457->g_1102 p_1457->g_1103 p_1457->g_1127 p_1457->g_1128 p_1457->g_1154 p_1457->g_1175 p_1457->g_1177 p_1457->g_1179 p_1457->g_1181 p_1457->g_1182 p_1457->g_1183 p_1457->g_1191 p_1457->g_1214 p_1457->g_1217 p_1457->g_1250 p_1457->g_1277 p_1457->g_1283 p_1457->g_1289 p_1457->g_1292 p_1457->g_740 p_1457->g_741 p_1457->g_1318 p_1457->g_1362 p_1457->g_1404 p_1457->g_1319 p_1457->g_1297
 * writes: p_1457->g_28 p_1457->g_61 p_1457->g_64 p_1457->g_87 p_1457->g_105 p_1457->g_113 p_1457->g_161 p_1457->g_118 p_1457->l_comm_values p_1457->g_250 p_1457->g_256 p_1457->g_321 p_1457->g_499 p_1457->g_260 p_1457->g_538 p_1457->g_439 p_1457->g_592 p_1457->g_729 p_1457->g_739 p_1457->g_938 p_1457->g_954 p_1457->g_12 p_1457->g_531 p_1457->g_1092 p_1457->g_942 p_1457->g_1084 p_1457->g_1154 p_1457->g_1275 p_1457->g_1289 p_1457->g_1297 p_1457->g_1312 p_1457->g_1362 p_1457->g_1404 p_1457->g_1424
 */
int32_t  func_1(struct S1 * p_1457)
{ /* block id: 4 */
    VECTOR(uint8_t, 2) l_939 = (VECTOR(uint8_t, 2))(255UL, 0x14L);
    int32_t l_960 = (-1L);
    int32_t l_973 = 0x767513DBL;
    int16_t l_978 = (-1L);
    struct S0 l_999 = {0x8E9AL};
    int32_t l_1037 = 9L;
    uint32_t l_1039[5][3][8] = {{{0xB8E744F3L,0x25852C7FL,0xF85A8E64L,0x7EEFCE1EL,4294967294UL,0xB8E744F3L,0x7EEFCE1EL,0xCA2220B8L},{0xB8E744F3L,0x25852C7FL,0xF85A8E64L,0x7EEFCE1EL,4294967294UL,0xB8E744F3L,0x7EEFCE1EL,0xCA2220B8L},{0xB8E744F3L,0x25852C7FL,0xF85A8E64L,0x7EEFCE1EL,4294967294UL,0xB8E744F3L,0x7EEFCE1EL,0xCA2220B8L}},{{0xB8E744F3L,0x25852C7FL,0xF85A8E64L,0x7EEFCE1EL,4294967294UL,0xB8E744F3L,0x7EEFCE1EL,0xCA2220B8L},{0xB8E744F3L,0x25852C7FL,0xF85A8E64L,0x7EEFCE1EL,4294967294UL,0xB8E744F3L,0x7EEFCE1EL,0xCA2220B8L},{0xB8E744F3L,0x25852C7FL,0xF85A8E64L,0x7EEFCE1EL,4294967294UL,0xB8E744F3L,0x7EEFCE1EL,0xCA2220B8L}},{{0xB8E744F3L,0x25852C7FL,0xF85A8E64L,0x7EEFCE1EL,4294967294UL,0xB8E744F3L,0x7EEFCE1EL,0xCA2220B8L},{0xB8E744F3L,0x25852C7FL,0xF85A8E64L,0x7EEFCE1EL,4294967294UL,0xB8E744F3L,0x7EEFCE1EL,0xCA2220B8L},{0xB8E744F3L,0x25852C7FL,0xF85A8E64L,0x7EEFCE1EL,4294967294UL,0xB8E744F3L,0x7EEFCE1EL,0xCA2220B8L}},{{0xB8E744F3L,0x25852C7FL,0xF85A8E64L,0x7EEFCE1EL,4294967294UL,0xB8E744F3L,0x7EEFCE1EL,0xCA2220B8L},{0xB8E744F3L,0x25852C7FL,0xF85A8E64L,0x7EEFCE1EL,4294967294UL,0xB8E744F3L,0x7EEFCE1EL,0xCA2220B8L},{0xB8E744F3L,0x25852C7FL,0xF85A8E64L,0x7EEFCE1EL,4294967294UL,0xB8E744F3L,0x7EEFCE1EL,0xCA2220B8L}},{{0xB8E744F3L,0x25852C7FL,0xF85A8E64L,0x7EEFCE1EL,4294967294UL,0xB8E744F3L,0x7EEFCE1EL,0xCA2220B8L},{0xB8E744F3L,0x25852C7FL,0xF85A8E64L,0x7EEFCE1EL,4294967294UL,0xB8E744F3L,0x7EEFCE1EL,0xCA2220B8L},{0xB8E744F3L,0x25852C7FL,0xF85A8E64L,0x7EEFCE1EL,4294967294UL,0xB8E744F3L,0x7EEFCE1EL,0xCA2220B8L}}};
    VECTOR(uint32_t, 16) l_1100 = (VECTOR(uint32_t, 16))(0x8DAC741FL, (VECTOR(uint32_t, 4))(0x8DAC741FL, (VECTOR(uint32_t, 2))(0x8DAC741FL, 4294967295UL), 4294967295UL), 4294967295UL, 0x8DAC741FL, 4294967295UL, (VECTOR(uint32_t, 2))(0x8DAC741FL, 4294967295UL), (VECTOR(uint32_t, 2))(0x8DAC741FL, 4294967295UL), 0x8DAC741FL, 4294967295UL, 0x8DAC741FL, 4294967295UL);
    VECTOR(int32_t, 16) l_1129 = (VECTOR(int32_t, 16))(4L, (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, 0x1CDD8402L), 0x1CDD8402L), 0x1CDD8402L, 4L, 0x1CDD8402L, (VECTOR(int32_t, 2))(4L, 0x1CDD8402L), (VECTOR(int32_t, 2))(4L, 0x1CDD8402L), 4L, 0x1CDD8402L, 4L, 0x1CDD8402L);
    int64_t *l_1163 = (void*)0;
    VECTOR(int16_t, 4) l_1180 = (VECTOR(int16_t, 4))((-4L), (VECTOR(int16_t, 2))((-4L), 0x38B9L), 0x38B9L);
    int32_t l_1210 = 5L;
    VECTOR(int8_t, 4) l_1218 = (VECTOR(int8_t, 4))(2L, (VECTOR(int8_t, 2))(2L, (-8L)), (-8L));
    VECTOR(int32_t, 2) l_1223 = (VECTOR(int32_t, 2))(0x560F3A42L, 1L);
    VECTOR(int16_t, 2) l_1230 = (VECTOR(int16_t, 2))((-4L), 7L);
    int8_t *l_1235 = &p_1457->g_118;
    uint8_t l_1251[8] = {0x57L,0x57L,0x57L,0x57L,0x57L,0x57L,0x57L,0x57L};
    uint8_t l_1286 = 0xFDL;
    struct S0 l_1291 = {1UL};
    int32_t *l_1300 = (void*)0;
    int8_t l_1398[10][1];
    int16_t l_1408[3][10] = {{(-6L),0x09B4L,(-6L),(-6L),0x09B4L,(-6L),(-6L),0x09B4L,(-6L),(-6L)},{(-6L),0x09B4L,(-6L),(-6L),0x09B4L,(-6L),(-6L),0x09B4L,(-6L),(-6L)},{(-6L),0x09B4L,(-6L),(-6L),0x09B4L,(-6L),(-6L),0x09B4L,(-6L),(-6L)}};
    int64_t l_1409[7][10][3] = {{{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)}},{{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)}},{{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)}},{{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)}},{{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)}},{{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)}},{{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)},{(-1L),0x706F4D3CF184E0B3L,(-2L)}}};
    struct S0 *l_1425 = &p_1457->g_61[2];
    VECTOR(uint32_t, 2) l_1433 = (VECTOR(uint32_t, 2))(0UL, 5UL);
    int i, j, k;
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 1; j++)
            l_1398[i][j] = (-4L);
    }
    if (p_1457->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1457->tid, 6))])
    { /* block id: 5 */
        int64_t *l_944 = (void*)0;
        int64_t **l_943 = &l_944;
        int64_t **l_946 = &l_944;
        int64_t ***l_945 = &l_946;
        int32_t l_949[6][3];
        VECTOR(int32_t, 2) l_983 = (VECTOR(int32_t, 2))(9L, 1L);
        struct S0 l_1002 = {7UL};
        uint8_t *l_1066 = (void*)0;
        VECTOR(int32_t, 4) l_1087 = (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, 1L), 1L);
        VECTOR(int32_t, 2) l_1088 = (VECTOR(int32_t, 2))(0x40D99ACEL, 0x0F8BB93BL);
        uint32_t l_1170 = 0x2E129568L;
        uint32_t l_1212 = 0x1ECF6649L;
        uint32_t l_1247 = 0UL;
        VECTOR(uint16_t, 4) l_1274 = (VECTOR(uint16_t, 4))(0x4105L, (VECTOR(uint16_t, 2))(0x4105L, 6UL), 6UL);
        int32_t *l_1293 = &p_1457->g_105;
        int i, j;
        for (i = 0; i < 6; i++)
        {
            for (j = 0; j < 3; j++)
                l_949[i][j] = 1L;
        }
        if (func_2((safe_div_func_int8_t_s_s((((-1L) < (((VECTOR(int16_t, 4))(p_1457->g_7.zzww)).z ^ ((safe_rshift_func_int16_t_s_u(func_10(p_1457->g_12, p_1457), (p_1457->g_636.sb , (p_1457->g_938 = 0x667DL)))) > ((VECTOR(uint8_t, 2))(abs(((VECTOR(uint8_t, 8))(mul_hi(((VECTOR(uint8_t, 8))(l_939.yxxxxxxx)), ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(add_sat(((VECTOR(uint8_t, 4))(max(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(max(((VECTOR(uint8_t, 4))(min(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(add_sat(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(rhadd(((VECTOR(uint8_t, 16))((safe_sub_func_int16_t_s_s((((VECTOR(uint64_t, 2))(p_1457->g_942.s77)).lo ^ (l_943 == ((*l_945) = (void*)0))), (((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(0x15F75630L, 6L)))).xxyx)), ((safe_lshift_func_int8_t_s_s((l_939.x & (l_949[5][1] > l_949[5][1])), p_1457->g_562.y)) == 255UL), ((VECTOR(int32_t, 4))(0L)), 0x6BB22FA1L, ((VECTOR(int32_t, 2))(0x0FDAABA1L)), 0x1AA5FC37L, ((VECTOR(int32_t, 2))(6L)), (-1L))).s8bc6, ((VECTOR(int32_t, 4))(7L))))).yxzxzwww)).s6 & l_949[5][1]))), 0x90L, ((VECTOR(uint8_t, 8))(0xB6L)), ((VECTOR(uint8_t, 4))(251UL)), 0xD5L, 248UL)).s09, ((VECTOR(uint8_t, 2))(247UL))))), ((VECTOR(uint8_t, 2))(5UL)), ((VECTOR(uint8_t, 4))(0xD4L)), p_1457->g_611.s3, ((VECTOR(uint8_t, 4))(0UL)), ((VECTOR(uint8_t, 2))(1UL)), 255UL)).s8505, ((VECTOR(uint8_t, 4))(4UL))))).xwzyzwxx)).hi, ((VECTOR(uint8_t, 4))(251UL))))).lo, (uint8_t)0xCAL))).xxyxxxyxyyxyyxyx)).lo)).s36)).yxxx, (uint8_t)0xDEL))).lo, ((VECTOR(uint8_t, 2))(249UL))))), ((VECTOR(uint8_t, 4))(0x56L)), 0x05L, 0x66L))))).s62))).lo))) , 0x15L), p_1457->g_942.s5)), p_1457->g_942.s6, p_1457))
        { /* block id: 503 */
            uint32_t l_963 = 1UL;
            int32_t l_975 = 4L;
            uint16_t l_979 = 0xDE58L;
            int32_t *l_982 = &l_949[5][1];
            VECTOR(int16_t, 4) l_986 = (VECTOR(int16_t, 4))(0x13CDL, (VECTOR(int16_t, 2))(0x13CDL, (-1L)), (-1L));
            int32_t l_996 = (-1L);
            int32_t *l_997[3];
            int i, j;
            for (i = 0; i < 3; i++)
                l_997[i] = &l_996;
            for (p_1457->g_321 = 0; (p_1457->g_321 == 59); p_1457->g_321++)
            { /* block id: 506 */
                int32_t *l_959 = &p_1457->g_64;
                int32_t l_961 = 0x30288C28L;
                int32_t *l_962[10][10][2] = {{{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961}},{{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961}},{{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961}},{{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961}},{{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961}},{{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961}},{{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961}},{{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961}},{{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961}},{{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961},{&l_960,&l_961}}};
                int32_t *l_970 = &l_949[5][1];
                int i, j, k;
                l_963--;
                for (p_1457->g_105 = 0; (p_1457->g_105 > 2); ++p_1457->g_105)
                { /* block id: 510 */
                    int32_t l_972 = 0x6AFCEC21L;
                    int32_t l_976 = (-4L);
                    int32_t l_977[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_977[i] = 0x4DDB2080L;
                    for (l_960 = 0; (l_960 > (-8)); l_960--)
                    { /* block id: 513 */
                        int64_t l_971 = (-1L);
                        VECTOR(int32_t, 2) l_974 = (VECTOR(int32_t, 2))(0x1D85393DL, (-1L));
                        int i;
                        (*p_1457->g_257) = l_970;
                        l_979++;
                    }
                }
            }
            l_960 &= ((*p_1457->g_252) = ((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 8))(((*l_982) &= 0x7A815761L), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 16))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(3L, (-5L))).xyyxyxyyxxyxyyxy)).sd8)).xyxyyxyxxyyxyxyy, ((VECTOR(int32_t, 16))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 8))(l_983.xxyyyxyy)).s4155104137643674, ((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(p_1457->g_984.saf102348f6d6b212)).sa468)).even)).xxxxxyxy, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(p_1457->g_985.s7474101526542210)).s0a08)).wwwyxzwy)).s3242536101553324)).even, ((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 4))(l_986.zzzx))))).zzzzwxyw, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(clz(((VECTOR(uint16_t, 8))(hadd(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(add_sat(((VECTOR(uint16_t, 16))(((p_1457->g_514.w , (safe_div_func_uint32_t_u_u((*l_982), ((((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))((*l_982), 0UL, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(p_1457->g_989.s6560)).lo)), ((VECTOR(uint16_t, 2))(6UL, 0x9DD3L)), 65533UL, 0xA6F0L)).odd)).w || ((!p_1457->g_611.s4) <= (safe_lshift_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u((((l_983.y <= ((((safe_rshift_func_int16_t_s_s((GROUP_DIVERGE(0, 1) & l_939.x), l_939.y)) , ((&p_1457->g_954[5][0] == &p_1457->g_954[4][1]) >= l_939.y)) <= (*p_1457->g_594)) > (*l_982))) ^ 0x40567DB3L) ^ l_983.y), GROUP_DIVERGE(1, 1))), GROUP_DIVERGE(1, 1))))) || 0xF2CD09E592EFEEBFL)))) , l_983.y), ((VECTOR(uint16_t, 2))(2UL)), 65535UL, ((VECTOR(uint16_t, 4))(0x1A4DL)), 65535UL, ((VECTOR(uint16_t, 2))(65535UL)), p_1457->g_174.x, 0xA37CL, l_996, 65534UL, 0x06FAL)).scc, ((VECTOR(uint16_t, 2))(0xFA25L))))).xyxyyyyxyyxxyyxx)).lo, ((VECTOR(uint16_t, 8))(0xBA8EL))))).s74))))).yxyxxyxy)))))).s1722173233275275, ((VECTOR(int32_t, 16))(3L))))), ((VECTOR(int32_t, 16))(0L))))), ((VECTOR(int32_t, 16))(0L))))).even)).s62)), 8L, (*l_982), ((VECTOR(int32_t, 2))(0x57F61085L)), 5L)).s16, ((VECTOR(int32_t, 2))((-1L))), ((VECTOR(int32_t, 2))(6L))))).even);
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            p_1457->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 6)), permutations[(safe_mod_func_uint32_t_u_u(((&p_1457->g_256[7][4] != &p_1457->g_66) <= (safe_unary_minus_func_uint16_t_u(0xEB9BL))), 10))][(safe_mod_func_uint32_t_u_u(p_1457->tid, 6))]));
            (*l_982) |= l_983.x;
        }
        else
        { /* block id: 526 */
            struct S0 *l_1001 = &p_1457->g_12;
            uint64_t *l_1003 = (void*)0;
            uint64_t *l_1004 = (void*)0;
            uint64_t *l_1005 = &p_1457->g_113;
            int32_t l_1010 = 0L;
            int16_t **l_1041 = (void*)0;
            int32_t l_1052 = 0L;
            int16_t l_1067 = (-1L);
            VECTOR(int8_t, 4) l_1079 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x1AL), 0x1AL);
            int64_t *l_1080 = (void*)0;
            VECTOR(int32_t, 2) l_1090 = (VECTOR(int32_t, 2))(0L, 0L);
            uint8_t *l_1094 = (void*)0;
            uint64_t l_1161 = 0UL;
            VECTOR(uint16_t, 16) l_1178 = (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x0E84L), 0x0E84L), 0x0E84L, 65535UL, 0x0E84L, (VECTOR(uint16_t, 2))(65535UL, 0x0E84L), (VECTOR(uint16_t, 2))(65535UL, 0x0E84L), 65535UL, 0x0E84L, 65535UL, 0x0E84L);
            int64_t l_1213 = 0x20FB9F04269C92F9L;
            uint8_t l_1236 = 0x8BL;
            int32_t l_1241[1][5] = {{0L,0L,0L,0L,0L}};
            int64_t l_1245 = 9L;
            int32_t *l_1282 = &l_973;
            int16_t l_1284 = 5L;
            int i, j;
            (*l_1001) = func_54(l_999, p_1457);
            (*l_1001) = func_54(l_1002, p_1457);
            if (((++(*l_1005)) && (safe_lshift_func_int16_t_s_u(l_1010, l_999.f0))))
            { /* block id: 530 */
                int32_t l_1051 = (-1L);
                uint64_t l_1053 = 0xEC7B481209983865L;
                uint32_t ***l_1070[3];
                VECTOR(uint32_t, 2) l_1096 = (VECTOR(uint32_t, 2))(0x23B05C79L, 0x824B6E9AL);
                VECTOR(uint32_t, 16) l_1101 = (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 4294967290UL), 4294967290UL), 4294967290UL, 0UL, 4294967290UL, (VECTOR(uint32_t, 2))(0UL, 4294967290UL), (VECTOR(uint32_t, 2))(0UL, 4294967290UL), 0UL, 4294967290UL, 0UL, 4294967290UL);
                int8_t *l_1112 = (void*)0;
                VECTOR(int32_t, 4) l_1130 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-2L)), (-2L));
                int i;
                for (i = 0; i < 3; i++)
                    l_1070[i] = &p_1457->g_741;
                for (p_1457->g_118 = (-18); (p_1457->g_118 < 27); p_1457->g_118 = safe_add_func_uint16_t_u_u(p_1457->g_118, 4))
                { /* block id: 533 */
                    uint16_t *l_1018 = &p_1457->g_61[2].f0;
                    int32_t l_1021[2];
                    int16_t **l_1038 = &p_1457->g_440;
                    int32_t *l_1040 = &p_1457->g_64;
                    uint8_t *l_1065 = (void*)0;
                    VECTOR(int32_t, 16) l_1086 = (VECTOR(int32_t, 16))(0x5BCF9AAEL, (VECTOR(int32_t, 4))(0x5BCF9AAEL, (VECTOR(int32_t, 2))(0x5BCF9AAEL, (-1L)), (-1L)), (-1L), 0x5BCF9AAEL, (-1L), (VECTOR(int32_t, 2))(0x5BCF9AAEL, (-1L)), (VECTOR(int32_t, 2))(0x5BCF9AAEL, (-1L)), 0x5BCF9AAEL, (-1L), 0x5BCF9AAEL, (-1L));
                    VECTOR(uint32_t, 8) l_1095 = (VECTOR(uint32_t, 8))(0x67877372L, (VECTOR(uint32_t, 4))(0x67877372L, (VECTOR(uint32_t, 2))(0x67877372L, 0x57C19771L), 0x57C19771L), 0x57C19771L, 0x67877372L, 0x57C19771L);
                    VECTOR(uint32_t, 2) l_1099 = (VECTOR(uint32_t, 2))(1UL, 0UL);
                    int i;
                    for (i = 0; i < 2; i++)
                        l_1021[i] = 0x0FC996FCL;
                    if (((*l_1040) = ((l_949[1][0] , (p_1457->g_64 && (((((safe_sub_func_int64_t_s_s(1L, ((safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(p_1457->g_1017.xxxw)).z, (--(*l_1018)))) | l_1021[0]))) || ((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(clz(((VECTOR(uint16_t, 16))(0x25EFL, ((VECTOR(uint16_t, 8))(p_1457->g_1022.s77504476)), 0x9204L, 65535UL, ((VECTOR(uint16_t, 2))(0xF8B5L, 3UL)), ((VECTOR(uint16_t, 2))(2UL, 0UL)), 0xAF0AL)).hi))).s3622250000657311)).sb ^ (safe_lshift_func_int16_t_s_s(((*p_1457->g_440) = (((((l_1002.f0 >= p_1457->g_985.s3) | (safe_sub_func_int8_t_s_s(((((safe_mul_func_uint16_t_u_u((safe_lshift_func_int16_t_s_u((((VECTOR(uint64_t, 4))((++(*l_1005)), ((VECTOR(uint64_t, 2))(0xD6E87F2C9D938138L, 0xC7F5508944035C12L)), 0UL)).x >= ((*p_1457->g_440) || (safe_lshift_func_uint8_t_u_s((safe_rshift_func_uint8_t_u_s(l_1002.f0, (3L != l_1021[0]))), 0)))), l_1037)), (*p_1457->g_440))) & 18446744073709551611UL) && l_983.y) > 0x292DL), l_1010))) , p_1457->g_499) , l_999.f0) >= 1L)), l_1010))) || l_1021[1])) , &p_1457->g_440) == l_1038) , p_1457->g_553.x))) > l_1039[2][1][3])))
                    { /* block id: 538 */
                        int64_t l_1042 = 0x5B745F60111781C7L;
                        (*l_1040) ^= (l_1041 == &p_1457->g_440);
                        if (l_1042)
                            break;
                    }
                    else
                    { /* block id: 541 */
                        int32_t *l_1043 = &l_949[5][1];
                        int32_t *l_1044 = &l_1021[0];
                        int32_t *l_1045 = &l_1021[0];
                        int32_t *l_1046 = &l_949[5][1];
                        int32_t *l_1047 = &l_1021[0];
                        int32_t *l_1048 = &l_1021[0];
                        int32_t *l_1049 = (void*)0;
                        int32_t *l_1050[3][1][10] = {{{&l_949[0][1],&l_949[0][1],&p_1457->g_105,&p_1457->g_64,(void*)0,(void*)0,(void*)0,&l_1010,(void*)0,(void*)0}},{{&l_949[0][1],&l_949[0][1],&p_1457->g_105,&p_1457->g_64,(void*)0,(void*)0,(void*)0,&l_1010,(void*)0,(void*)0}},{{&l_949[0][1],&l_949[0][1],&p_1457->g_105,&p_1457->g_64,(void*)0,(void*)0,(void*)0,&l_1010,(void*)0,(void*)0}}};
                        int32_t **l_1056 = (void*)0;
                        int i, j, k;
                        ++l_1053;
                        (*p_1457->g_1058) = &l_1010;
                        l_960 = (safe_mul_func_uint8_t_u_u((safe_mod_func_uint32_t_u_u(l_949[5][1], (safe_mul_func_int16_t_s_s(((l_1066 = l_1065) != l_1065), l_1067)))), 1L));
                    }
                    if (l_983.y)
                        continue;
                    for (p_1457->g_105 = 0; (p_1457->g_105 < (-25)); p_1457->g_105 = safe_sub_func_uint32_t_u_u(p_1457->g_105, 6))
                    { /* block id: 550 */
                        uint64_t l_1075 = 0x7F08ADBEFE846605L;
                        uint32_t **l_1078 = &p_1457->g_490;
                        int32_t **l_1081 = (void*)0;
                        VECTOR(int64_t, 16) l_1085 = (VECTOR(int64_t, 16))(0x49E81432D026EC87L, (VECTOR(int64_t, 4))(0x49E81432D026EC87L, (VECTOR(int64_t, 2))(0x49E81432D026EC87L, 0x21946346587BD137L), 0x21946346587BD137L), 0x21946346587BD137L, 0x49E81432D026EC87L, 0x21946346587BD137L, (VECTOR(int64_t, 2))(0x49E81432D026EC87L, 0x21946346587BD137L), (VECTOR(int64_t, 2))(0x49E81432D026EC87L, 0x21946346587BD137L), 0x49E81432D026EC87L, 0x21946346587BD137L, 0x49E81432D026EC87L, 0x21946346587BD137L);
                        int32_t *l_1091 = &p_1457->g_1092;
                        uint8_t *l_1093 = (void*)0;
                        VECTOR(uint32_t, 4) l_1098 = (VECTOR(uint32_t, 4))(0xDB29955AL, (VECTOR(uint32_t, 2))(0xDB29955AL, 3UL), 3UL);
                        int8_t *l_1111 = &p_1457->g_87;
                        int8_t **l_1110[1];
                        int i;
                        for (i = 0; i < 1; i++)
                            l_1110[i] = &l_1111;
                        (*l_1040) &= (p_1457->g_562.x >= ((l_1070[2] == l_1070[0]) , ((safe_div_func_int16_t_s_s((((safe_sub_func_uint8_t_u_u(l_1075, 0x06L)) < (--(*l_1005))) > (((void*)0 == l_1078) & ((l_1075 | ((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(l_1079.zy)), 0x09L, 0x56L)), 1L, (-3L), (-1L), 1L)).s37, ((VECTOR(int8_t, 16))((-5L), ((((*l_943) == l_1080) || 0x6DBF0F26L) & (*p_1457->g_594)), l_939.x, l_983.x, 0x74L, (-7L), 0x63L, l_1079.z, ((VECTOR(int8_t, 4))(0L)), (-2L), 0x4AL, (-8L), (-1L))).s20))).yxyxxyyy)).s65, ((VECTOR(int8_t, 2))((-2L)))))).odd) && GROUP_DIVERGE(0, 1)))), p_1457->g_12.f0)) || l_1037)));
                        (*p_1457->g_1082) = &l_949[5][0];
                        (*l_1040) &= ((((VECTOR(uint32_t, 2))(p_1457->g_1083.xy)).lo , (((VECTOR(int64_t, 16))((p_1457->g_531.s4 |= (-1L)), ((VECTOR(int64_t, 4))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 4),((VECTOR(int64_t, 2))(1L, 0x467F428939C5E533L)).xyxy, ((VECTOR(int64_t, 4))(p_1457->g_1084.xyyy)), ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(0x34B600B50E97A9E4L, 4L)), 0x10A6D3F7BA3CBF9FL, (-1L))), ((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 2))(3L, (-1L))), ((VECTOR(int64_t, 16))(clz(((VECTOR(int64_t, 2))(l_1085.s30)).yxxyyxxyxxxyyxyx))).sa7))), ((VECTOR(int64_t, 8))(upsample(((VECTOR(int32_t, 2))(l_1086.sfd)).xyxxyyxx, ((VECTOR(uint32_t, 16))(abs(((VECTOR(uint32_t, 2))(min(((VECTOR(uint32_t, 4))(rhadd(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(0x96977564L, ((((*l_1091) |= ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 4))(l_1087.zxww)).xxxywxwwwyzzxzxz, ((VECTOR(int32_t, 8))(l_1088.yxyxxxxy)).s4702003747221147))).s8a58, ((VECTOR(int32_t, 2))(p_1457->g_1089.sf5)).xyyy))), ((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(l_1090.xyxxyyyxxxyyyxxy)).odd)).lo))))).s0) , l_1093) != l_1094), ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(mad_sat(((VECTOR(uint32_t, 4))(l_1095.s4543)).even, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(rhadd(((VECTOR(uint32_t, 2))(0xCE881568L, 0xF546BCA7L)).yyxxxyxyxyxxyyxy, ((VECTOR(uint32_t, 4))(rotate(((VECTOR(uint32_t, 8))(l_1096.yyxxxxyx)).odd, ((VECTOR(uint32_t, 2))(1UL, 0UL)).yyyy))).ywyzxzzyxyzwxwww))).even)).s12, ((VECTOR(uint32_t, 2))(p_1457->g_1097.yy))))), 0xB54EC9D0L, 4294967295UL)), ((VECTOR(uint32_t, 8))(l_1096.y, ((VECTOR(uint32_t, 2))(l_1098.zw)), 0xE3CFD3D2L, 4294967295UL, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(l_1099.xxyyyyxyyyxxyxyx)).s07)), 0x0574FF9DL)), 0xC087500DL, 0x13C774E9L)).se161)), ((VECTOR(uint32_t, 8))(l_1100.s33081295)).hi))).even, ((VECTOR(uint32_t, 2))(clz(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(l_1101.s251b)), ((VECTOR(uint32_t, 8))(sub_sat(((VECTOR(uint32_t, 8))(mad_sat(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(clz(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(p_1457->g_1102.yxxx)).yyxyyxzy)).lo))))), ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 4))(p_1457->g_1103.s5465)).y, 3UL, 0x71F82F7BL, 4294967290UL)))), ((VECTOR(uint32_t, 4))(add_sat(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(p_1457->g_7.y, ((safe_lshift_func_uint8_t_u_u((safe_sub_func_uint64_t_u_u(l_1039[2][1][3], (safe_lshift_func_uint16_t_u_u((&p_1457->g_118 != (l_1112 = l_1065)), ((((*p_1457->g_490) > 0x5FB03B2CL) == (*p_1457->g_440)) | 0x62L))))), l_973)) <= 2L), 0x7344F4E3L, ((VECTOR(uint32_t, 2))(2UL)), ((VECTOR(uint32_t, 4))(4294967295UL)), 4294967286UL, 4294967287UL, ((VECTOR(uint32_t, 2))(1UL)), ((VECTOR(uint32_t, 2))(0x77B39162L)), 0xCEC22B40L)).sf6)).xxyx, ((VECTOR(uint32_t, 4))(1UL))))).yzxyzyww, ((VECTOR(uint32_t, 8))(4294967293UL))))), ((VECTOR(uint32_t, 8))(0xE6088C65L))))), l_1053, 0xF8582CC4L, 0UL, 0x0187D7E9L)).s98)).xyxyxyxyxxxyyxxy)).odd)).s37)))))).yxxyxyyyyxyxxxxy))).odd))), 0x3D5DA9C4FC772DBBL, 0x39DCD6C01AE22FC0L)).sd898))), 0x372D5F78A40BD45EL, 0L, 0x003F95A65AFBB9CEL, l_1037, 0x54EBCBCF103E4C7AL, 0x186E953B150FDC11L, ((VECTOR(int64_t, 4))(0x3AF3A184202AF42EL)), 0x709874AA5B78F931L)).s4 > 0x1A6E262D88CFAB0CL)) > (-2L));
                    }
                    if ((atomic_inc(&p_1457->g_atomic_input[43 * get_linear_group_id() + 21]) == 1))
                    { /* block id: 560 */
                        struct S0 l_1113 = {5UL};
                        struct S0 l_1114[3] = {{0x708BL},{0x708BL},{0x708BL}};
                        uint32_t l_1115 = 0x4FA80E81L;
                        int32_t l_1116 = 0x36FC9426L;
                        uint16_t l_1117[10][5] = {{0x8F77L,7UL,0x0F7AL,65535UL,0x0F7AL},{0x8F77L,7UL,0x0F7AL,65535UL,0x0F7AL},{0x8F77L,7UL,0x0F7AL,65535UL,0x0F7AL},{0x8F77L,7UL,0x0F7AL,65535UL,0x0F7AL},{0x8F77L,7UL,0x0F7AL,65535UL,0x0F7AL},{0x8F77L,7UL,0x0F7AL,65535UL,0x0F7AL},{0x8F77L,7UL,0x0F7AL,65535UL,0x0F7AL},{0x8F77L,7UL,0x0F7AL,65535UL,0x0F7AL},{0x8F77L,7UL,0x0F7AL,65535UL,0x0F7AL},{0x8F77L,7UL,0x0F7AL,65535UL,0x0F7AL}};
                        uint8_t l_1118 = 0xD6L;
                        int i, j;
                        l_1114[1] = l_1113;
                        l_1117[2][1] |= (l_1115 , l_1116);
                        l_1118++;
                        unsigned int result = 0;
                        result += l_1113.f0;
                        int l_1114_i0;
                        for (l_1114_i0 = 0; l_1114_i0 < 3; l_1114_i0++) {
                            result += l_1114[l_1114_i0].f0;
                        }
                        result += l_1115;
                        result += l_1116;
                        int l_1117_i0, l_1117_i1;
                        for (l_1117_i0 = 0; l_1117_i0 < 10; l_1117_i0++) {
                            for (l_1117_i1 = 0; l_1117_i1 < 5; l_1117_i1++) {
                                result += l_1117[l_1117_i0][l_1117_i1];
                            }
                        }
                        result += l_1118;
                        atomic_add(&p_1457->g_special_values[43 * get_linear_group_id() + 21], result);
                    }
                    else
                    { /* block id: 564 */
                        (1 + 1);
                    }
                }
                for (l_1053 = (-27); (l_1053 <= 24); l_1053 = safe_add_func_uint16_t_u_u(l_1053, 1))
                { /* block id: 570 */
                    int32_t **l_1123[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_1123[i] = (void*)0;
                    (*p_1457->g_257) = &l_949[5][1];
                }
                for (p_1457->g_538.f0 = 24; (p_1457->g_538.f0 != 57); p_1457->g_538.f0++)
                { /* block id: 575 */
                    VECTOR(int8_t, 2) l_1126 = (VECTOR(int8_t, 2))(7L, 0x7DL);
                    uint8_t *l_1137 = (void*)0;
                    uint8_t *l_1138 = (void*)0;
                    uint8_t *l_1139 = (void*)0;
                    uint8_t *l_1140 = (void*)0;
                    uint16_t l_1145[4];
                    VECTOR(int8_t, 2) l_1153 = (VECTOR(int8_t, 2))(8L, 0x1CL);
                    VECTOR(int8_t, 2) l_1155 = (VECTOR(int8_t, 2))(0L, 0x08L);
                    int64_t *l_1162 = (void*)0;
                    int i;
                    for (i = 0; i < 4; i++)
                        l_1145[i] = 65535UL;
                    if (((l_1129.s5 = ((((p_1457->g_64 | (+((+((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(max(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(add_sat(((VECTOR(uint8_t, 2))(mad_sat(((VECTOR(uint8_t, 2))(0x41L, 252UL)), ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 2))(0UL, 0xB7L)).xxyx, ((VECTOR(uint8_t, 4))((((0x24A5BB6AL || 0x9AB3BA3AL) & ((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 2))(1L, 7L)).yxyy, ((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 8))(l_1126.yxxxxyyx)).lo, ((VECTOR(int8_t, 2))(0x05L, 0x5EL)).xyxy, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(p_1457->g_1127.sb5)), 6L, 0x13L)), ((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(0x70L, (-1L), l_1039[3][2][7], (((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(p_1457->g_1128.s14300030)).hi)).lo, (int32_t)l_978))), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))((-10L), 0L)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x26D633D3L, 0x319C43D9L)).xxyx)), 1L, 0x1AAF2220L)), ((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 4))(l_1129.s4a04)), (int32_t)l_1126.y))), 0L, 0L)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(l_1079.w, ((*p_1457->g_594) < (p_1457->g_942.s5 |= ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))((--(*l_1005)), ((VECTOR(uint64_t, 2))(abs(((VECTOR(uint64_t, 8))((safe_add_func_int32_t_s_s(((safe_mul_func_uint8_t_u_u((p_1457->g_260.x ^= 249UL), l_1129.sf)) || 0x9087L), 0xB0B5A889L)), 0xFA85F9F939F67C1CL, 1UL, 0x79C4CD768B2EFAF6L, p_1457->g_989.s0, 1UL, 1UL, 0x451405D589D5364AL)).s53))), p_1457->g_260.z, 7UL, ((VECTOR(uint64_t, 2))(0x0C1B17BEB8243DF4L)), ((VECTOR(uint64_t, 2))(0UL)), 0xF565C42DC37FC2C0L, l_1090.x, 0x7FC0706C6DD9FDF7L, ((VECTOR(uint64_t, 2))(0x076D92C47423F9A4L)), 0UL, 0xC4300227E8789623L)).sd1)).even)), (-1L), 0x67CF322CL)))).ywzwzzxzxwyxyxyz))).seb3d)).z , l_1100.s0), ((VECTOR(int8_t, 4))(9L)))).s03)), ((VECTOR(int8_t, 2))(8L))))), (-6L), 9L)).odd)))))).x) | l_1090.x), 0UL, 1UL, 0xF6L))))).even)), ((VECTOR(uint8_t, 2))(8UL))))), ((VECTOR(uint8_t, 2))(0UL))))))).xyyxyyxyyxxyyyxy, ((VECTOR(uint8_t, 16))(3UL))))).odd)).s5) & 0x2AL))) , 1UL) || l_1126.y) > GROUP_DIVERGE(0, 1))) ^ p_1457->g_636.sd))
                    { /* block id: 580 */
                        uint16_t l_1148 = 0xB127L;
                        int16_t *l_1164 = (void*)0;
                        int16_t *l_1165 = &l_1067;
                        int32_t *l_1167 = &l_960;
                        (*l_1167) ^= ((((safe_mod_func_int16_t_s_s(((*p_1457->g_440) = (*p_1457->g_440)), (((safe_div_func_int8_t_s_s(l_1145[3], GROUP_DIVERGE(1, 1))) & (safe_sub_func_int16_t_s_s((~(l_1148 < (!(((safe_lshift_func_uint8_t_u_u((p_1457->g_260.y = p_1457->g_592.s3), 1)) , l_1148) && (((*l_1165) |= (safe_div_func_uint64_t_u_u((((-1L) == (p_1457->g_1084.x ^= 0x63C6DF4324CE122AL)) , FAKE_DIVERGE(p_1457->global_1_offset, get_global_id(1), 10)), (((((VECTOR(int8_t, 8))(l_1153.yyyxyxxy)).s2 | ((((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(p_1457->g_1154.s12543402)).s23)), 0L, (FAKE_DIVERGE(p_1457->global_1_offset, get_global_id(1), 10) < 7L), ((VECTOR(int8_t, 2))(l_1155.yy)), 0x54L, 3L)).s06)).lo > (safe_mul_func_int8_t_s_s(((safe_unary_minus_func_int64_t_s((((safe_sub_func_uint16_t_u_u(((((FAKE_DIVERGE(p_1457->global_0_offset, get_global_id(0), 10) ^ (l_983.y || l_1161)) & 0x5075L) , l_1162) == l_1163), l_1101.s5)) || l_1051) != 0xB157D17DB8BDACFFL))) && l_1148), 0x3AL))) , p_1457->g_611.s5)) ^ l_1129.s1) & p_1457->g_553.y)))) && l_1037))))), l_1148))) , 0x4A0EL))) == 0L) || l_983.x) == l_949[0][0]);
                        if ((*p_1457->g_928))
                            break;
                        if ((*l_1167))
                            continue;
                    }
                    else
                    { /* block id: 588 */
                        if ((*p_1457->g_67))
                            break;
                    }
                }
            }
            else
            { /* block id: 592 */
                uint32_t l_1168[4] = {3UL,3UL,3UL,3UL};
                int32_t *l_1169[4][7][9] = {{{(void*)0,&l_960,(void*)0,&l_1037,&l_949[5][1],&l_949[5][1],(void*)0,(void*)0,&l_949[5][1]},{(void*)0,&l_960,(void*)0,&l_1037,&l_949[5][1],&l_949[5][1],(void*)0,(void*)0,&l_949[5][1]},{(void*)0,&l_960,(void*)0,&l_1037,&l_949[5][1],&l_949[5][1],(void*)0,(void*)0,&l_949[5][1]},{(void*)0,&l_960,(void*)0,&l_1037,&l_949[5][1],&l_949[5][1],(void*)0,(void*)0,&l_949[5][1]},{(void*)0,&l_960,(void*)0,&l_1037,&l_949[5][1],&l_949[5][1],(void*)0,(void*)0,&l_949[5][1]},{(void*)0,&l_960,(void*)0,&l_1037,&l_949[5][1],&l_949[5][1],(void*)0,(void*)0,&l_949[5][1]},{(void*)0,&l_960,(void*)0,&l_1037,&l_949[5][1],&l_949[5][1],(void*)0,(void*)0,&l_949[5][1]}},{{(void*)0,&l_960,(void*)0,&l_1037,&l_949[5][1],&l_949[5][1],(void*)0,(void*)0,&l_949[5][1]},{(void*)0,&l_960,(void*)0,&l_1037,&l_949[5][1],&l_949[5][1],(void*)0,(void*)0,&l_949[5][1]},{(void*)0,&l_960,(void*)0,&l_1037,&l_949[5][1],&l_949[5][1],(void*)0,(void*)0,&l_949[5][1]},{(void*)0,&l_960,(void*)0,&l_1037,&l_949[5][1],&l_949[5][1],(void*)0,(void*)0,&l_949[5][1]},{(void*)0,&l_960,(void*)0,&l_1037,&l_949[5][1],&l_949[5][1],(void*)0,(void*)0,&l_949[5][1]},{(void*)0,&l_960,(void*)0,&l_1037,&l_949[5][1],&l_949[5][1],(void*)0,(void*)0,&l_949[5][1]},{(void*)0,&l_960,(void*)0,&l_1037,&l_949[5][1],&l_949[5][1],(void*)0,(void*)0,&l_949[5][1]}},{{(void*)0,&l_960,(void*)0,&l_1037,&l_949[5][1],&l_949[5][1],(void*)0,(void*)0,&l_949[5][1]},{(void*)0,&l_960,(void*)0,&l_1037,&l_949[5][1],&l_949[5][1],(void*)0,(void*)0,&l_949[5][1]},{(void*)0,&l_960,(void*)0,&l_1037,&l_949[5][1],&l_949[5][1],(void*)0,(void*)0,&l_949[5][1]},{(void*)0,&l_960,(void*)0,&l_1037,&l_949[5][1],&l_949[5][1],(void*)0,(void*)0,&l_949[5][1]},{(void*)0,&l_960,(void*)0,&l_1037,&l_949[5][1],&l_949[5][1],(void*)0,(void*)0,&l_949[5][1]},{(void*)0,&l_960,(void*)0,&l_1037,&l_949[5][1],&l_949[5][1],(void*)0,(void*)0,&l_949[5][1]},{(void*)0,&l_960,(void*)0,&l_1037,&l_949[5][1],&l_949[5][1],(void*)0,(void*)0,&l_949[5][1]}},{{(void*)0,&l_960,(void*)0,&l_1037,&l_949[5][1],&l_949[5][1],(void*)0,(void*)0,&l_949[5][1]},{(void*)0,&l_960,(void*)0,&l_1037,&l_949[5][1],&l_949[5][1],(void*)0,(void*)0,&l_949[5][1]},{(void*)0,&l_960,(void*)0,&l_1037,&l_949[5][1],&l_949[5][1],(void*)0,(void*)0,&l_949[5][1]},{(void*)0,&l_960,(void*)0,&l_1037,&l_949[5][1],&l_949[5][1],(void*)0,(void*)0,&l_949[5][1]},{(void*)0,&l_960,(void*)0,&l_1037,&l_949[5][1],&l_949[5][1],(void*)0,(void*)0,&l_949[5][1]},{(void*)0,&l_960,(void*)0,&l_1037,&l_949[5][1],&l_949[5][1],(void*)0,(void*)0,&l_949[5][1]},{(void*)0,&l_960,(void*)0,&l_1037,&l_949[5][1],&l_949[5][1],(void*)0,(void*)0,&l_949[5][1]}}};
                VECTOR(int64_t, 4) l_1176 = (VECTOR(int64_t, 4))(0x5C77BA846AFC4E0BL, (VECTOR(int64_t, 2))(0x5C77BA846AFC4E0BL, (-2L)), (-2L));
                VECTOR(int32_t, 2) l_1184 = (VECTOR(int32_t, 2))(8L, 0x3A5EB71FL);
                int8_t *l_1209 = &p_1457->g_87;
                uint16_t *l_1211 = &p_1457->g_538.f0;
                int64_t l_1237 = (-1L);
                int16_t **l_1238 = (void*)0;
                int16_t **l_1239 = (void*)0;
                VECTOR(int8_t, 8) l_1240 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x74L), 0x74L), 0x74L, 1L, 0x74L);
                int i, j, k;
                (*l_1001) = func_54(((*l_1001) = (l_1168[3] , func_54((*p_1457->g_537), p_1457))), p_1457);
                l_1170++;
                l_1090.x &= (safe_sub_func_int32_t_s_s(((~(((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(p_1457->g_1175.s5113765513724533)).s96)), ((VECTOR(int64_t, 16))(0x6A4A207008FCE592L, ((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 16))(l_1176.xzwzxxxywwxzzxxy)).hi, ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(p_1457->g_1177.s3436)).yzzxyxwz))))), l_1178.sc, 0x70447B077312865CL, ((VECTOR(int64_t, 2))(0x0ECAAA7BD9FAA1EBL, (-4L))), ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(upsample(((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(p_1457->g_1179.s57)).yyxy)))).odd, ((VECTOR(int16_t, 2))(l_1180.yz))))), 0x25C7L, 0x261DL)), ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(min(((VECTOR(uint16_t, 2))(p_1457->g_1181.s1a)).xyxxxxyyxxxyyxxx, (uint16_t)(((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(p_1457->g_1182.yyyyyxyy)).lo, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(p_1457->g_1183.xxxx)).hi)).yxyx)).wxxxyzxxzyywxwzz)).even)).lo)).xwxwyyyz)).odd, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(l_1184.yyxxyyxx)))).hi))).y , (safe_mul_func_uint16_t_u_u((l_1087.w = 0xF37CL), ((safe_mod_func_uint16_t_u_u(p_1457->g_1083.x, (safe_mod_func_int32_t_s_s((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(p_1457->g_1191.xxyyxyxxyxxxxxxy)).see5b)).x , ((safe_div_func_uint32_t_u_u(((l_1010 = (l_1170 == ((safe_div_func_uint8_t_u_u(((safe_sub_func_uint16_t_u_u((((*l_1211) = (safe_div_func_int64_t_s_s((safe_mod_func_int32_t_s_s((safe_lshift_func_uint16_t_u_s((safe_unary_minus_func_int32_t_s(l_1052)), (safe_mod_func_uint32_t_u_u(l_1002.f0, 0x310F704CL)))), (safe_rshift_func_int8_t_s_u(((*l_1209) |= 0x4EL), ((p_1457->g_942.s6 || p_1457->g_180.sa) | l_1039[0][0][2]))))), l_1210))) , 65535UL), l_939.y)) ^ l_1212), FAKE_DIVERGE(p_1457->group_0_offset, get_group_id(0), 10))) <= l_983.y))) , 0x462D952EL), l_1213)) & l_999.f0)), FAKE_DIVERGE(p_1457->local_0_offset, get_local_id(0), 10))))) != p_1457->g_1183.x))))))).sef)).yxxx))).zyywzxywxxwwzxxx, ((VECTOR(uint32_t, 16))(0UL))))).sbf)), 1L)).s2c))).hi || 18446744073709551610UL)) || l_960), p_1457->g_1214));
                if ((((safe_sub_func_int8_t_s_s(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(sub_sat(((VECTOR(int8_t, 8))(max(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(p_1457->g_1217.s183b)).odd)), ((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 16))(l_1218.wyzxyzxwwywwzyxy))))).sb92c, ((VECTOR(int8_t, 16))(0x63L, (-2L), 0x43L, 0x75L, ((VECTOR(int8_t, 4))((-10L), 0x63L, 3L, 0x39L)), ((safe_mod_func_uint8_t_u_u(((safe_mul_func_uint8_t_u_u(p_1457->g_499, (0x55EAL < (((VECTOR(int32_t, 16))(l_1223.yyyxxyyyyxyxxyyx)).se == (safe_sub_func_int32_t_s_s(l_1010, (l_1178.sa ^ ((((((safe_div_func_int32_t_s_s(((((VECTOR(uint32_t, 16))(0x16333790L, (((safe_div_func_uint64_t_u_u((((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(7L, ((VECTOR(int16_t, 4))(min(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 4))(rotate(((VECTOR(int16_t, 2))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 2),((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(clz(((VECTOR(int16_t, 16))(sub_sat(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_1230.xy)), 0x7450L, 0x3A28L)).zxzwwzxzxzzwzxxx, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(((safe_add_func_int64_t_s_s(l_1079.y, ((~((((safe_mod_func_uint64_t_u_u((((((&p_1457->g_247 != (void*)0) , &p_1457->g_398) == l_1235) , l_1180.w) , l_1236), FAKE_DIVERGE(p_1457->local_1_offset, get_local_id(1), 10))) ^ l_1090.y) >= l_1052) , GROUP_DIVERGE(2, 1))) , (*p_1457->g_594)))) < l_1088.y), 1L, ((VECTOR(int16_t, 4))((-8L))), (-4L), 1L)).s62)).yxxy)).xwxzwyxwyxzxxzyy))).lo))), 0x156EL, ((VECTOR(int16_t, 4))((-1L))), (*p_1457->g_440), 0x3D95L, 0x71A6L)).s22, (int16_t)(*p_1457->g_440)))), ((VECTOR(int16_t, 2))((-6L)))))).xyyxyxyx)).s64)), 0x1321L, 0L)).lo, ((VECTOR(int16_t, 2))((-1L))), ((VECTOR(int16_t, 2))((-4L)))))).yxxx, ((VECTOR(int16_t, 4))(0x6E50L))))).even, (int16_t)(*p_1457->g_440)))), 0x5533L, ((VECTOR(int16_t, 4))((-7L))), l_1237, ((VECTOR(int16_t, 2))(0x2A2CL)), l_1087.w, ((VECTOR(int16_t, 2))(0x55E6L)), (-8L), 0x4EE9L, 0x6960L)).sc0bc, ((VECTOR(int16_t, 4))(0x7D7DL))))), ((VECTOR(int16_t, 2))(0x405AL)), 0x4154L)).lo)).y & 0x5B98L), p_1457->g_1191.x)) , l_1238) != l_1239), l_1240.s4, 0x4B45D4ECL, 9UL, 0UL, 0x1F48A98FL, ((VECTOR(uint32_t, 4))(0x64D889EAL)), 3UL, ((VECTOR(uint32_t, 4))(0x5D2EB848L)))).sa <= FAKE_DIVERGE(p_1457->local_1_offset, get_local_id(1), 10)) == p_1457->g_562.x), GROUP_DIVERGE(2, 1))) , p_1457->g_196.z) >= p_1457->g_1182.y) && 5UL) , l_1241[0][2]) == l_1090.x)))))))) , l_1037), 0x2CL)) != l_983.x), 0L, ((VECTOR(int8_t, 4))(5L)), (-10L), (-6L))).s666b))).lo))), ((VECTOR(int8_t, 2))(0L))))), 0x08L, (-9L))).yyyxzzzw, ((VECTOR(int8_t, 8))(0L))))), ((VECTOR(int8_t, 8))((-1L)))))).s7125471734133146)).lo)).s3, l_1178.sb)) != 7UL) ^ l_1090.x))
                { /* block id: 601 */
                    int32_t l_1244 = 8L;
                    int32_t l_1246[8] = {0x3A22B1B4L,0x3A22B1B4L,0x3A22B1B4L,0x3A22B1B4L,0x3A22B1B4L,0x3A22B1B4L,0x3A22B1B4L,0x3A22B1B4L};
                    int16_t ***l_1276 = &p_1457->g_439[2][2];
                    int i;
                    if (((-1L) < (safe_add_func_int8_t_s_s(p_1457->g_954[3][1], ((p_1457->g_1183.y == l_1244) , 0x16L)))))
                    { /* block id: 602 */
                        VECTOR(int64_t, 16) l_1256 = (VECTOR(int64_t, 16))(0x3810DDABD7140821L, (VECTOR(int64_t, 4))(0x3810DDABD7140821L, (VECTOR(int64_t, 2))(0x3810DDABD7140821L, 0L), 0L), 0L, 0x3810DDABD7140821L, 0L, (VECTOR(int64_t, 2))(0x3810DDABD7140821L, 0L), (VECTOR(int64_t, 2))(0x3810DDABD7140821L, 0L), 0x3810DDABD7140821L, 0L, 0x3810DDABD7140821L, 0L);
                        uint8_t *l_1263[4][8] = {{(void*)0,(void*)0,&l_1251[2],&l_1251[2],(void*)0,(void*)0,&l_1251[2],&l_1236},{(void*)0,(void*)0,&l_1251[2],&l_1251[2],(void*)0,(void*)0,&l_1251[2],&l_1236},{(void*)0,(void*)0,&l_1251[2],&l_1251[2],(void*)0,(void*)0,&l_1251[2],&l_1236},{(void*)0,(void*)0,&l_1251[2],&l_1251[2],(void*)0,(void*)0,&l_1251[2],&l_1236}};
                        VECTOR(int32_t, 16) l_1280 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 6L), 6L), 6L, (-1L), 6L, (VECTOR(int32_t, 2))((-1L), 6L), (VECTOR(int32_t, 2))((-1L), 6L), (-1L), 6L, (-1L), 6L);
                        int i, j;
                        l_1247--;
                        l_1246[3] ^= l_1100.s5;
                        l_1251[2] |= ((VECTOR(int32_t, 8))(p_1457->g_1250.xzxyzxzy)).s5;
                        (*p_1457->g_67) = (l_1087.x = (safe_sub_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), (safe_mul_func_uint8_t_u_u(((l_960 = ((!((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(l_1256.s88)), 3L, (-1L))).x) || ((safe_div_func_int16_t_s_s((safe_lshift_func_int8_t_s_s((safe_rshift_func_int8_t_s_s(((p_1457->g_260.x++) > (safe_sub_func_int8_t_s_s((p_1457->g_1154.s4 &= l_1244), FAKE_DIVERGE(p_1457->global_1_offset, get_global_id(1), 10)))), 2)), ((safe_sub_func_uint64_t_u_u(((*l_1005) = p_1457->g_1097.x), (safe_mul_func_int8_t_s_s((((p_1457->g_1275 = (safe_lshift_func_uint16_t_u_s(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_1274.zy)), 65535UL, 0UL)).even)))).even, 5))) > (0UL < (l_1263[2][3] == l_1066))) ^ ((((void*)0 == l_1276) < p_1457->g_1089.s1) & (((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 4))(p_1457->g_1277.xyxx)).ywywzyyxwzwxzxxw))).even)).s2 || (!(safe_sub_func_int32_t_s_s(((VECTOR(int32_t, 2))(l_1280.s1a)).odd, 0x0031161FL)))))), 1L)))) && l_1246[7]))), (*p_1457->g_440))) && 8UL))) && l_1213), l_1280.s7)))));
                    }
                    else
                    { /* block id: 613 */
                        int32_t **l_1281 = (void*)0;
                        int32_t l_1285[3];
                        volatile int32_t **l_1290 = &p_1457->g_1289;
                        int i;
                        for (i = 0; i < 3; i++)
                            l_1285[i] = 0L;
                        l_1282 = &l_1010;
                        l_1284 ^= (p_1457->g_1283[3][8] || 0x024B9A9DL);
                        ++l_1286;
                        (*l_1290) = p_1457->g_1289;
                    }
                    return l_983.x;
                }
                else
                { /* block id: 620 */
                    return l_1087.y;
                }
            }
        }
        (*p_1457->g_1292) = l_1291;
        l_983.x = (+((*l_1293) = l_1223.x));
    }
    else
    { /* block id: 628 */
        uint64_t **l_1294 = (void*)0;
        uint64_t *l_1296[1];
        uint64_t **l_1295[7][4] = {{&l_1296[0],&l_1296[0],&l_1296[0],&l_1296[0]},{&l_1296[0],&l_1296[0],&l_1296[0],&l_1296[0]},{&l_1296[0],&l_1296[0],&l_1296[0],&l_1296[0]},{&l_1296[0],&l_1296[0],&l_1296[0],&l_1296[0]},{&l_1296[0],&l_1296[0],&l_1296[0],&l_1296[0]},{&l_1296[0],&l_1296[0],&l_1296[0],&l_1296[0]},{&l_1296[0],&l_1296[0],&l_1296[0],&l_1296[0]}};
        int32_t *l_1298 = &l_1037;
        int32_t **l_1299[2][1];
        int i, j;
        for (i = 0; i < 1; i++)
            l_1296[i] = &p_1457->g_113;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 1; j++)
                l_1299[i][j] = &p_1457->g_256[7][1];
        }
        (*l_1298) &= ((p_1457->g_1297 = (void*)0) == (void*)0);
        l_1300 = l_1298;
        return p_1457->g_1181.s9;
    }
    for (p_1457->g_64 = (-26); (p_1457->g_64 != 6); ++p_1457->g_64)
    { /* block id: 636 */
        VECTOR(int32_t, 16) l_1305 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x33781688L), 0x33781688L), 0x33781688L, 0L, 0x33781688L, (VECTOR(int32_t, 2))(0L, 0x33781688L), (VECTOR(int32_t, 2))(0L, 0x33781688L), 0L, 0x33781688L, 0L, 0x33781688L);
        int8_t l_1306[4];
        uint32_t **l_1309[6] = {&p_1457->g_490,&p_1457->g_490,&p_1457->g_490,&p_1457->g_490,&p_1457->g_490,&p_1457->g_490};
        uint32_t *l_1310 = (void*)0;
        uint32_t *l_1311 = &p_1457->g_1312;
        int32_t l_1313 = 1L;
        int16_t ***l_1314 = &p_1457->g_439[1][6];
        int16_t **l_1315[8] = {&p_1457->g_440,&p_1457->g_440,&p_1457->g_440,&p_1457->g_440,&p_1457->g_440,&p_1457->g_440,&p_1457->g_440,&p_1457->g_440};
        uint16_t *l_1316 = &p_1457->g_538.f0;
        uint16_t *l_1317 = &l_999.f0;
        uint8_t *l_1320 = (void*)0;
        uint8_t *l_1321 = (void*)0;
        uint8_t *l_1322[7] = {&l_1251[2],&l_1251[2],&l_1251[2],&l_1251[2],&l_1251[2],&l_1251[2],&l_1251[2]};
        int32_t *l_1323 = (void*)0;
        int32_t *l_1324[9][4][1] = {{{&p_1457->g_64},{&p_1457->g_64},{&p_1457->g_64},{&p_1457->g_64}},{{&p_1457->g_64},{&p_1457->g_64},{&p_1457->g_64},{&p_1457->g_64}},{{&p_1457->g_64},{&p_1457->g_64},{&p_1457->g_64},{&p_1457->g_64}},{{&p_1457->g_64},{&p_1457->g_64},{&p_1457->g_64},{&p_1457->g_64}},{{&p_1457->g_64},{&p_1457->g_64},{&p_1457->g_64},{&p_1457->g_64}},{{&p_1457->g_64},{&p_1457->g_64},{&p_1457->g_64},{&p_1457->g_64}},{{&p_1457->g_64},{&p_1457->g_64},{&p_1457->g_64},{&p_1457->g_64}},{{&p_1457->g_64},{&p_1457->g_64},{&p_1457->g_64},{&p_1457->g_64}},{{&p_1457->g_64},{&p_1457->g_64},{&p_1457->g_64},{&p_1457->g_64}}};
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_1306[i] = 0L;
        l_973 |= ((safe_sub_func_uint32_t_u_u(((-1L) > ((VECTOR(int32_t, 16))(l_1305.s242b2dcac1a82c23)).se), (l_1306[3] ^ (p_1457->g_61[2].f0 = ((*l_1317) = ((*l_1316) = ((l_1313 |= (((*l_1311) = ((**p_1457->g_739) != (p_1457->g_636.s0 , l_1309[5]))) , 0xC02C1130L)) ^ (&p_1457->g_440 == (l_1315[2] = &p_1457->g_440))))))))) != (p_1457->g_260.y = ((((void*)0 != p_1457->g_1318) >= 0x14L) , 0xD3L)));
    }
    for (l_1037 = 24; (l_1037 <= (-26)); l_1037 = safe_sub_func_int16_t_s_s(l_1037, 4))
    { /* block id: 648 */
        uint32_t *l_1358 = (void*)0;
        VECTOR(int16_t, 4) l_1367 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 1L), 1L);
        VECTOR(int32_t, 4) l_1386 = (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 0L), 0L);
        struct S0 l_1411[2] = {{65535UL},{65535UL}};
        int32_t l_1434 = (-2L);
        int32_t **l_1440 = &p_1457->g_256[7][4];
        uint32_t l_1455 = 1UL;
        int i;
        for (l_1291.f0 = (-12); (l_1291.f0 != 58); ++l_1291.f0)
        { /* block id: 651 */
            uint32_t *l_1357 = (void*)0;
            uint16_t *l_1359 = &p_1457->g_12.f0;
            int64_t ***l_1364 = (void*)0;
            int64_t ***l_1365 = (void*)0;
            int64_t ***l_1366 = &p_1457->g_1362[4];
            struct S0 l_1368 = {2UL};
            uint16_t *l_1397 = &l_999.f0;
            int32_t *l_1400 = &l_960;
            struct S0 *l_1401 = &p_1457->g_61[2];
            uint64_t *l_1406 = &p_1457->g_113;
            VECTOR(int64_t, 4) l_1426 = (VECTOR(int64_t, 4))(0x1022157D2FF935F4L, (VECTOR(int64_t, 2))(0x1022157D2FF935F4L, 0x550A9BB1F389B52EL), 0x550A9BB1F389B52EL);
            int i;
            if ((atomic_inc(&p_1457->g_atomic_input[43 * get_linear_group_id() + 4]) == 8))
            { /* block id: 653 */
                uint8_t l_1329 = 1UL;
                l_1329 = 0x7326340EL;
                for (l_1329 = (-7); (l_1329 >= 40); l_1329 = safe_add_func_uint8_t_u_u(l_1329, 5))
                { /* block id: 657 */
                    int16_t l_1332 = 5L;
                    uint32_t l_1333 = 0xB7CF3C53L;
                    int32_t *l_1334 = (void*)0;
                    int32_t l_1336 = (-1L);
                    int32_t *l_1335 = &l_1336;
                    l_1333 |= (GROUP_DIVERGE(2, 1) , l_1332);
                    l_1335 = l_1334;
                    for (l_1332 = 0; (l_1332 >= 22); l_1332++)
                    { /* block id: 662 */
                        int32_t l_1340 = 0x3B270A95L;
                        int32_t *l_1339 = &l_1340;
                        l_1339 = l_1339;
                    }
                    if (((VECTOR(int32_t, 2))(0x6207E837L, 0x74FC2FBEL)).lo)
                    { /* block id: 665 */
                        uint8_t l_1341 = 0x1EL;
                        int32_t l_1342 = 0L;
                        l_1342 |= l_1341;
                    }
                    else
                    { /* block id: 667 */
                        VECTOR(uint32_t, 4) l_1343 = (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0UL), 0UL);
                        uint64_t l_1344 = 18446744073709551615UL;
                        int64_t l_1345 = (-4L);
                        int64_t l_1346 = 0x7B75FF3C25B86713L;
                        uint32_t l_1347 = 0x7D754F93L;
                        uint16_t l_1348 = 0xC71EL;
                        uint64_t l_1349 = 18446744073709551609UL;
                        uint32_t l_1350 = 0x3821C3BFL;
                        uint16_t l_1351 = 1UL;
                        uint16_t l_1352 = 0x5289L;
                        uint32_t l_1353 = 0xB900363FL;
                        uint16_t l_1354 = 1UL;
                        int i;
                        l_1354 = (l_1353 = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(0x77900F00L, 0x66CE430EL)).even, l_1343.w, 0x2F04F83FL, (-3L), (l_1336 = l_1344), (l_1346 ^= l_1345), ((VECTOR(int32_t, 16))((l_1348 = l_1347), (l_1349 , l_1350), ((VECTOR(int32_t, 8))(0x0DACB1B9L, 9L, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(0x3F1FEF73L, 0x497CFA02L, 0x5CE8FF2BL, (-4L))), ((VECTOR(int32_t, 4))((-6L))))).lo))).odd, ((VECTOR(int32_t, 2))(0x6E11C73AL)), ((VECTOR(int32_t, 2))((-5L)))))), 4L, 0x429DE8C2L)), (-1L), (-1L))), 0x2D8A573EL, l_1351, (-3L), l_1352, 0L, 0x02AD0D59L)).sb, ((VECTOR(int32_t, 8))(3L)), 5L)).s6);
                    }
                }
                unsigned int result = 0;
                result += l_1329;
                atomic_add(&p_1457->g_special_values[43 * get_linear_group_id() + 4], result);
            }
            else
            { /* block id: 675 */
                (1 + 1);
            }
            (*l_1400) = (((safe_rshift_func_uint16_t_u_s(((l_1357 = l_1300) == l_1358), 4)) , ((((*l_1359) = 65530UL) == ((VECTOR(uint16_t, 2))(upsample(((VECTOR(uint8_t, 4))(2UL, (safe_rshift_func_uint16_t_u_s(6UL, 3)), 0UL, 1UL)).lo, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(0x50L, 0xE8L)), 0x9CL, 0UL)).even))).even) , (((*l_1366) = p_1457->g_1362[4]) != &p_1457->g_1363))) >= ((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 8))(l_1367.xyxwzywy)).s6754707052061213, (int16_t)((l_1368 , ((++(*p_1457->g_490)) & (safe_mul_func_int8_t_s_s((((((safe_mul_func_int8_t_s_s((((VECTOR(int16_t, 8))(p_1457->g_1375.s83027684)).s3 != ((safe_mul_func_uint16_t_u_u(((*l_1397) = (((safe_sub_func_int64_t_s_s(l_1368.f0, (safe_lshift_func_int8_t_s_s(((((safe_sub_func_uint32_t_u_u((safe_add_func_uint64_t_u_u(((~((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_1386.zy)).xxxx)).z) < (safe_add_func_int32_t_s_s((safe_mul_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s((safe_sub_func_int32_t_s_s(l_1368.f0, 5L)), 2)), l_1367.x)), p_1457->g_113)), l_1367.y))), 1UL)), l_1368.f0)) , (-5L)) <= l_1386.z) | p_1457->g_28.s0), 7)))) > (*p_1457->g_440)) & 2L)), l_1386.x)) && 2UL)), l_1398[2][0])) > p_1457->g_514.x) || l_1368.f0) | l_1368.f0) == l_1368.f0), FAKE_DIVERGE(p_1457->group_1_offset, get_group_id(1), 10))))) > p_1457->g_61[2].f0)))).even)).s07, ((VECTOR(uint16_t, 2))(65535UL))))).lo);
            (*l_1401) = l_1368;
            for (l_960 = 17; (l_960 <= (-21)); --l_960)
            { /* block id: 687 */
                uint64_t l_1410 = 0xAA82288DCD938BE1L;
                int32_t l_1416 = 8L;
                int32_t l_1429 = 0x067BDECBL;
                VECTOR(uint32_t, 8) l_1431 = (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0x01F0568DL), 0x01F0568DL), 0x01F0568DL, 4294967295UL, 0x01F0568DL);
                int32_t l_1438 = 0x5AB14CD3L;
                uint8_t l_1439 = 5UL;
                int i;
                (*l_1401) = func_54((((((((p_1457->g_1404.y &= (*p_1457->g_440)) && (((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 4),((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 2))(0L, 0x75F847C1FCD7337CL)), ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(p_1457->g_1405.s7050)))))).xwwwyyww)).s35))).yxyx, ((VECTOR(int64_t, 16))((l_1386.y >= (((void*)0 != l_1406) , (*p_1457->g_1297))), (-4L), (*l_1400), ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(rhadd(((VECTOR(int64_t, 16))(p_1457->g_1407.s2606001447522002)).lo, ((VECTOR(int64_t, 8))(0x6974508F9088F139L, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(0x521E664B6C596208L, 0x1870AE57013D455CL, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(0x13EFA6471F5DD89AL, (0x0CL & p_1457->g_1182.x), 2L, 0x345A9A7964F7CA59L)))), 0x5C2F7EAADA1E8B1DL, 0x20E1ACF78077EB72L)).s02)), (*p_1457->g_594), l_1408[0][1], 0L, 0x36EE63853C5B1890L, 0x77C3A646CD9724BFL))))).hi)), 0L, l_1409[0][2][1], ((VECTOR(int64_t, 4))(4L)), l_1386.w, (-1L), 0x41158FDA1B36189AL)).s41d9, ((VECTOR(int64_t, 4))((-8L)))))).hi)))).hi , 0xAA64L)) && 0UL) <= 0x047ADE47L) , (*l_1400)) > l_1410) , l_1411[0]), p_1457);
                for (p_1457->g_538.f0 = 0; (p_1457->g_538.f0 <= 19); p_1457->g_538.f0 = safe_add_func_int8_t_s_s(p_1457->g_538.f0, 2))
                { /* block id: 692 */
                    int32_t *l_1417 = (void*)0;
                    int32_t *l_1418 = (void*)0;
                    int32_t *l_1419 = &p_1457->g_64;
                    int32_t *l_1420 = (void*)0;
                    int32_t *l_1421[4];
                    struct S0 **l_1422 = (void*)0;
                    struct S0 **l_1423[1];
                    int32_t **l_1435 = (void*)0;
                    int32_t **l_1436 = &l_1417;
                    int32_t **l_1437[10][1][3] = {{{&l_1419,&p_1457->g_256[0][3],&l_1419}},{{&l_1419,&p_1457->g_256[0][3],&l_1419}},{{&l_1419,&p_1457->g_256[0][3],&l_1419}},{{&l_1419,&p_1457->g_256[0][3],&l_1419}},{{&l_1419,&p_1457->g_256[0][3],&l_1419}},{{&l_1419,&p_1457->g_256[0][3],&l_1419}},{{&l_1419,&p_1457->g_256[0][3],&l_1419}},{{&l_1419,&p_1457->g_256[0][3],&l_1419}},{{&l_1419,&p_1457->g_256[0][3],&l_1419}},{{&l_1419,&p_1457->g_256[0][3],&l_1419}}};
                    int i, j, k;
                    for (i = 0; i < 4; i++)
                        l_1421[i] = &l_973;
                    for (i = 0; i < 1; i++)
                        l_1423[i] = (void*)0;
                    l_1434 &= ((l_1386.w &= ((*l_1419) = l_1416)) < (l_1411[0].f0 == (((((*p_1457->g_594) == (((p_1457->g_1424 = &l_999) == l_1425) >= ((VECTOR(int64_t, 4))(l_1426.yyxy)).y)) <= (++(*l_1397))) != (((l_1429 = 0xB2L) <= l_1416) , 1L)) >= ((((VECTOR(uint32_t, 8))(p_1457->g_1430.yyyyxyxx)).s7 == ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(mad_hi(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(l_1431.s74234225)).s33)).yxyxxyxx, ((VECTOR(uint32_t, 4))(p_1457->g_1432.xyxx)).wyyxxxxz, ((VECTOR(uint32_t, 16))(l_1433.xxyyyyyyyyyyyyxy)).lo))).s64)).xxyy)).x) && (*p_1457->g_440)))));
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    p_1457->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 6)), permutations[(safe_mod_func_uint32_t_u_u(((VECTOR(uint32_t, 2))(1UL, 0xA474C43CL)).hi, 10))][(safe_mod_func_uint32_t_u_u(p_1457->tid, 6))]));
                    l_1300 = ((*l_1436) = &l_960);
                    return l_1438;
                }
                if (l_1439)
                    break;
            }
        }
        (*l_1440) = &l_960;
        for (p_1457->g_321 = 0; (p_1457->g_321 <= 34); ++p_1457->g_321)
        { /* block id: 712 */
            int32_t l_1456 = (-6L);
            for (p_1457->g_1092 = 0; (p_1457->g_1092 <= (-12)); p_1457->g_1092 = safe_sub_func_uint64_t_u_u(p_1457->g_1092, 7))
            { /* block id: 715 */
                uint64_t l_1453 = 0UL;
                int8_t *l_1454 = (void*)0;
                atomic_max(&p_1457->g_atomic_reduction[get_linear_group_id()], ((((+(*p_1457->g_440)) < ((safe_add_func_int16_t_s_s(l_1218.y, (safe_mul_func_int16_t_s_s(((*p_1457->g_1318) & p_1457->g_563.s2), (safe_lshift_func_int8_t_s_u(((void*)0 == p_1457->g_440), 3)))))) < (((*p_1457->g_1297) ^= (safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 8))(p_1457->g_1277.x, ((l_1453 , l_1454) == (void*)0), ((VECTOR(uint8_t, 2))(251UL)), 5UL, 3UL, 0xD4L, 253UL)).s6, GROUP_DIVERGE(0, 1)))) != l_1453))) ^ l_1455) , l_1456) + get_linear_global_id());
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                if (get_linear_local_id() == 0)
                    p_1457->v_collective += p_1457->g_atomic_reduction[get_linear_group_id()];
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            }
            if ((&p_1457->g_1092 == l_1358))
            { /* block id: 719 */
                return p_1457->g_64;
            }
            else
            { /* block id: 721 */
                return p_1457->g_1103.s4;
            }
        }
    }
    return l_1037;
}


/* ------------------------------------------ */
/* 
 * reads : p_1457->g_954
 * writes: p_1457->g_954
 */
int32_t  func_2(int16_t  p_3, int64_t  p_4, struct S1 * p_1457)
{ /* block id: 500 */
    int32_t *l_950[1][10][3] = {{{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105}}};
    VECTOR(int8_t, 2) l_951 = (VECTOR(int8_t, 2))((-1L), 1L);
    int8_t l_952 = 0x13L;
    int8_t l_953 = 0x75L;
    int i, j, k;
    p_1457->g_954[3][1]--;
    return p_3;
}


/* ------------------------------------------ */
/* 
 * reads : p_1457->g_7 p_1457->g_comm_values p_1457->g_12.f0 p_1457->l_comm_values p_1457->g_60 p_1457->g_61.f0 p_1457->g_63 p_1457->g_67 p_1457->g_64 p_1457->g_71 p_1457->g_90 p_1457->g_105 p_1457->g_113 p_1457->g_61 p_1457->g_118 p_1457->g_87 p_1457->g_161 p_1457->g_174 p_1457->g_180 p_1457->g_196 p_1457->g_252 p_1457->g_250 p_1457->g_257 p_1457->g_260 p_1457->g_280 p_1457->g_302 p_1457->g_305 p_1457->g_338 p_1457->g_340 p_1457->g_222 p_1457->g_490 p_1457->g_499 p_1457->g_514 p_1457->g_440 p_1457->g_531 p_1457->g_229 p_1457->g_537 p_1457->g_553 p_1457->g_558 p_1457->g_562 p_1457->g_563 p_1457->g_592 p_1457->g_593 p_1457->g_596 p_1457->g_649 p_1457->g_594 p_1457->g_595 p_1457->g_711 p_1457->g_729 p_1457->g_636 p_1457->g_538 p_1457->g_739 p_1457->g_605 p_1457->g_611 p_1457->g_862 p_1457->g_870 p_1457->g_928
 * writes: p_1457->g_28 p_1457->g_61 p_1457->g_64 p_1457->g_87 p_1457->g_105 p_1457->g_113 p_1457->g_161 p_1457->g_118 p_1457->l_comm_values p_1457->g_250 p_1457->g_256 p_1457->g_321 p_1457->g_499 p_1457->g_260 p_1457->g_538 p_1457->g_439 p_1457->g_592 p_1457->g_729 p_1457->g_739
 */
int16_t  func_10(struct S0  p_11, struct S1 * p_1457)
{ /* block id: 6 */
    int16_t l_19 = (-4L);
    VECTOR(int32_t, 8) l_23 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x4D59FF44L), 0x4D59FF44L), 0x4D59FF44L, 1L, 0x4D59FF44L);
    int32_t l_24 = 0x6BC22736L;
    int16_t *l_27 = (void*)0;
    int16_t **l_49 = &l_27;
    int16_t ***l_48 = &l_49;
    uint32_t ****l_929 = &p_1457->g_729;
    uint64_t l_936 = 0xA0DA45AF9572ED48L;
    int32_t l_937 = 0x57EF8652L;
    int i;
    (*p_1457->g_928) = ((safe_mul_func_int8_t_s_s(p_11.f0, (p_1457->g_7.z , (safe_mod_func_int8_t_s_s((((safe_div_func_uint16_t_u_u((l_19 == (func_20((l_24 = ((VECTOR(int32_t, 2))(l_23.s64)).even), (p_1457->g_28.s4 = (safe_lshift_func_uint16_t_u_s(p_1457->g_comm_values[p_1457->tid], p_1457->g_12.f0))), p_1457) <= func_32(((safe_mod_func_int16_t_s_s((func_36(func_40(func_42(&l_19, l_48, (safe_sub_func_int8_t_s_s(((safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_1457->local_2_offset, get_local_id(2), 10), func_20(p_1457->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1457->tid, 6))], p_11.f0, p_1457))) == p_1457->g_comm_values[p_1457->tid]), FAKE_DIVERGE(p_1457->global_1_offset, get_global_id(1), 10))), p_1457->g_12.f0, l_19, p_1457), p_1457), p_11.f0, (*l_49), p_1457) == p_11.f0), l_23.s6)) , (*l_48)), p_1457))), p_11.f0)) <= p_11.f0) < 0x3778L), l_23.s1))))) | p_1457->g_180.s1);
    l_937 = (((p_11.f0 ^ ((l_929 == (void*)0) <= 1L)) != (safe_mod_func_int32_t_s_s(((safe_mod_func_uint16_t_u_u((l_24 = p_11.f0), ((!((-1L) != (safe_lshift_func_uint8_t_u_s(((0x6A34L >= 0x46B4L) | (((VECTOR(uint16_t, 8))(((l_936 | l_23.s6) , 0xE366L), p_11.f0, ((VECTOR(uint16_t, 4))(0x8993L)), 0xD468L, 0xD570L)).s5 ^ 4UL)), 1)))) & l_23.s7))) , l_23.s6), 4294967295UL))) && 0x69174E77L);
    return l_23.s3;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint16_t  func_20(int32_t  p_21, int16_t  p_22, struct S1 * p_1457)
{ /* block id: 9 */
    int16_t *l_30 = (void*)0;
    int16_t **l_29[5] = {&l_30,&l_30,&l_30,&l_30,&l_30};
    int16_t ***l_31 = &l_29[2];
    int i;
    (*l_31) = l_29[0];
    return p_21;
}


/* ------------------------------------------ */
/* 
 * reads : p_1457->g_64 p_1457->g_71 p_1457->g_12.f0 p_1457->g_514 p_1457->g_105 p_1457->g_440 p_1457->g_161 p_1457->g_174 p_1457->g_comm_values p_1457->g_531 p_1457->g_229 p_1457->g_537 p_1457->g_196 p_1457->g_260 p_1457->g_553 p_1457->g_558 p_1457->g_562 p_1457->g_563 p_1457->g_180 p_1457->g_490 p_1457->g_250 p_1457->g_592 p_1457->g_593 p_1457->g_596 p_1457->g_252 p_1457->g_118 p_1457->g_649 p_1457->g_594 p_1457->g_595 p_1457->g_87 p_1457->g_67 p_1457->g_63 p_1457->g_711 p_1457->g_499 p_1457->g_729 p_1457->g_636 p_1457->g_538 p_1457->g_739 p_1457->g_605 p_1457->g_611 p_1457->g_305 p_1457->g_862 p_1457->g_870
 * writes: p_1457->g_260 p_1457->g_105 p_1457->g_64 p_1457->g_61 p_1457->g_538 p_1457->g_439 p_1457->g_161 p_1457->g_118 p_1457->g_250 p_1457->g_592 p_1457->l_comm_values p_1457->g_729 p_1457->g_739 p_1457->g_256 p_1457->g_499
 */
int16_t  func_32(int16_t ** p_33, struct S1 * p_1457)
{ /* block id: 240 */
    VECTOR(uint64_t, 16) l_501 = (VECTOR(uint64_t, 16))(0xD66E29DAF0835152L, (VECTOR(uint64_t, 4))(0xD66E29DAF0835152L, (VECTOR(uint64_t, 2))(0xD66E29DAF0835152L, 1UL), 1UL), 1UL, 0xD66E29DAF0835152L, 1UL, (VECTOR(uint64_t, 2))(0xD66E29DAF0835152L, 1UL), (VECTOR(uint64_t, 2))(0xD66E29DAF0835152L, 1UL), 0xD66E29DAF0835152L, 1UL, 0xD66E29DAF0835152L, 1UL);
    int32_t *l_502 = (void*)0;
    int32_t *l_503 = &p_1457->g_64;
    uint8_t *l_506 = (void*)0;
    uint8_t *l_507 = (void*)0;
    uint8_t *l_508[4][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    VECTOR(int32_t, 4) l_513 = (VECTOR(int32_t, 4))(0x7711D5B1L, (VECTOR(int32_t, 2))(0x7711D5B1L, 1L), 1L);
    int64_t *l_552 = (void*)0;
    int32_t l_621 = 1L;
    int32_t l_665 = 0x65DA1D24L;
    struct S0 l_677 = {0xF64DL};
    int16_t **l_680[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint16_t l_689[1][2][6] = {{{2UL,0x8C57L,2UL,2UL,0x8C57L,2UL},{2UL,0x8C57L,2UL,2UL,0x8C57L,2UL}}};
    VECTOR(uint8_t, 8) l_693 = (VECTOR(uint8_t, 8))(0x12L, (VECTOR(uint8_t, 4))(0x12L, (VECTOR(uint8_t, 2))(0x12L, 255UL), 255UL), 255UL, 0x12L, 255UL);
    VECTOR(int8_t, 16) l_706 = (VECTOR(int8_t, 16))((-6L), (VECTOR(int8_t, 4))((-6L), (VECTOR(int8_t, 2))((-6L), 1L), 1L), 1L, (-6L), 1L, (VECTOR(int8_t, 2))((-6L), 1L), (VECTOR(int8_t, 2))((-6L), 1L), (-6L), 1L, (-6L), 1L);
    uint32_t **l_723 = &p_1457->g_490;
    int16_t ***l_781 = &l_680[5];
    VECTOR(int32_t, 4) l_874 = (VECTOR(int32_t, 4))(0x5FAA5E95L, (VECTOR(int32_t, 2))(0x5FAA5E95L, 0x3366B550L), 0x3366B550L);
    int i, j, k;
    if (((((safe_unary_minus_func_uint64_t_u(l_501.s0)) & (((l_502 = l_502) != l_503) , (safe_rshift_func_int8_t_s_u((((*l_503) & p_1457->g_71.y) < (p_1457->g_260.w = (*l_503))), 4)))) >= (safe_div_func_uint64_t_u_u(p_1457->g_12.f0, (safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 2))(0x15L, 0x26L)).even, 6))))) < ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_513.yxzzzzxw)).s40)).xyyy, (int32_t)(*l_503)))))).wxxzxxyxyywwyzwy)).s5))
    { /* block id: 243 */
        int32_t l_515 = 2L;
        int32_t **l_532 = &l_503;
        uint32_t **l_575 = &p_1457->g_490;
        uint16_t *l_577 = &p_1457->g_12.f0;
        VECTOR(int8_t, 2) l_580 = (VECTOR(int8_t, 2))(0x58L, 0x47L);
        int32_t l_618 = (-5L);
        struct S0 *l_657 = &p_1457->g_538;
        VECTOR(int32_t, 4) l_668 = (VECTOR(int32_t, 4))(0x46BCB9A5L, (VECTOR(int32_t, 2))(0x46BCB9A5L, 9L), 9L);
        uint8_t *l_688[4][7][9] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
        VECTOR(uint8_t, 4) l_694 = (VECTOR(uint8_t, 4))(0x74L, (VECTOR(uint8_t, 2))(0x74L, 0x9DL), 0x9DL);
        VECTOR(int8_t, 4) l_707 = (VECTOR(int8_t, 4))(0x47L, (VECTOR(int8_t, 2))(0x47L, 0L), 0L);
        int i, j, k;
        if ((l_515 = ((VECTOR(int32_t, 16))(p_1457->g_514.zyxyxzyxxxzyxxwx)).s0))
        { /* block id: 245 */
            int32_t l_520 = 0x562E04ECL;
            int32_t **l_533[4] = {&l_503,&l_503,&l_503,&l_503};
            struct S0 l_535 = {4UL};
            int i;
            for (p_1457->g_105 = 0; (p_1457->g_105 >= (-12)); --p_1457->g_105)
            { /* block id: 248 */
                return (*p_1457->g_440);
            }
            if (((*l_503) = ((safe_sub_func_int8_t_s_s(l_520, p_1457->g_174.y)) != (safe_lshift_func_int16_t_s_s((l_515 & ((safe_mod_func_uint64_t_u_u((((0x6BBB9302L && (((safe_div_func_uint8_t_u_u((safe_div_func_uint8_t_u_u(p_1457->g_comm_values[p_1457->tid], 0x4CL)), ((((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(l_515, (safe_div_func_uint16_t_u_u((((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(p_1457->g_531.s41)))).lo > (l_532 != l_533[3])), (*p_1457->g_440))), ((VECTOR(uint8_t, 4))(0xD3L)), (*l_503), p_1457->g_514.w, p_1457->g_229.se, 0UL, 0xC2L, 246UL, ((VECTOR(uint8_t, 4))(0x7EL)))).sf1d7)), 0x85L, ((VECTOR(uint8_t, 2))(5UL)), 0xFCL)).hi)).x || 0xC9L) || (**l_532)))) | p_1457->g_531.s2) ^ (*l_503))) && 1UL) || (**l_532)), 0x123F4C71A94523FAL)) < (**l_532))), (*l_503))))))
            { /* block id: 252 */
                int16_t l_534 = 1L;
                (**l_532) &= (-2L);
                return l_534;
            }
            else
            { /* block id: 255 */
                struct S0 *l_536 = &p_1457->g_61[1];
                (*p_1457->g_537) = ((*l_536) = func_54(l_535, p_1457));
                return (**l_532);
            }
        }
        else
        { /* block id: 260 */
            uint16_t l_539 = 0xF9E6L;
            int32_t **l_544 = (void*)0;
            uint32_t l_566 = 1UL;
            struct S0 l_569 = {0xAE4EL};
            VECTOR(uint16_t, 16) l_614 = (VECTOR(uint16_t, 16))(65530UL, (VECTOR(uint16_t, 4))(65530UL, (VECTOR(uint16_t, 2))(65530UL, 0x7F8EL), 0x7F8EL), 0x7F8EL, 65530UL, 0x7F8EL, (VECTOR(uint16_t, 2))(65530UL, 0x7F8EL), (VECTOR(uint16_t, 2))(65530UL, 0x7F8EL), 65530UL, 0x7F8EL, 65530UL, 0x7F8EL);
            uint8_t l_617 = 0x4FL;
            uint32_t **l_721 = &p_1457->g_490;
            uint32_t **l_724 = &p_1457->g_490;
            int16_t l_747 = (-1L);
            int8_t l_750 = 0x76L;
            int32_t l_764[3][1][10] = {{{1L,0x75F95917L,1L,1L,0x75F95917L,1L,1L,0x75F95917L,1L,1L}},{{1L,0x75F95917L,1L,1L,0x75F95917L,1L,1L,0x75F95917L,1L,1L}},{{1L,0x75F95917L,1L,1L,0x75F95917L,1L,1L,0x75F95917L,1L,1L}}};
            int i, j, k;
            if ((l_539 = (p_1457->g_196.x ^ (**l_532))))
            { /* block id: 262 */
                int32_t l_547 = 0x40652C8AL;
                int32_t l_548 = (-5L);
                int64_t *l_551[3];
                int16_t ***l_559 = &p_1457->g_439[2][2];
                int32_t *l_570 = &p_1457->g_64;
                uint16_t *l_576 = (void*)0;
                int i;
                for (i = 0; i < 3; i++)
                    l_551[i] = (void*)0;
                l_548 |= ((0x1FF6L >= (l_539 >= (safe_add_func_int16_t_s_s((**l_532), (safe_add_func_int16_t_s_s(((p_1457->g_260.x ^= ((&p_1457->g_252 != l_544) , 4UL)) , (*p_1457->g_440)), ((safe_rshift_func_uint16_t_u_s(0x27CDL, 6)) <= 0UL))))))) , l_547);
                (*l_532) = (GROUP_DIVERGE(2, 1) , &l_548);
                (*l_570) |= ((safe_mul_func_int8_t_s_s((l_551[1] != l_552), ((!((((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(p_1457->g_553.yxxyxyxyyxyxyyxy)).sc6)))))).xxyy)).zxxxzzzw)).s2 == (safe_div_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))((safe_div_func_int16_t_s_s((((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(p_1457->g_558.zy)), (-2L), 1L)).w & (&p_1457->g_440 != ((*l_559) = p_33))), ((safe_div_func_int32_t_s_s(((**l_532) , ((*l_503) = ((((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(sub_sat(((VECTOR(uint32_t, 16))(clz(((VECTOR(uint32_t, 4))(p_1457->g_562.xyyx)).xyzzwwxyyxywxxwx))), ((VECTOR(uint32_t, 16))(p_1457->g_563.s1726434226404253))))))).sdf84)).wzxwyxzxwzwyxxyw)).sa3bf)).xzyzyxwx)).even)).xzzzwyxz)).s1 || (safe_mul_func_int8_t_s_s(p_1457->g_260.y, (*l_503)))) , l_566))), (((((safe_rshift_func_uint16_t_u_s((~(~((l_547 || 0x5EB42C2F9DA00A47L) && l_515))), 7)) , p_1457->g_180.s3) , l_569) , 4294967286UL) , (*p_1457->g_490)))) | 0x741B1B65C2196B6EL))), ((VECTOR(uint16_t, 4))(0xB830L)), l_547, 0x9166L, 5UL, ((VECTOR(uint16_t, 8))(0xF8ACL)))).scddd)).z, l_566))) || 6UL)) | 0UL))) ^ p_1457->g_180.sf);
                (*l_503) |= ((((safe_lshift_func_int16_t_s_s(0x238BL, 8)) ^ (safe_add_func_int32_t_s_s((*l_570), ((((0x16E8C530C30861E0L >= 18446744073709551609UL) ^ ((void*)0 != l_575)) > (*l_570)) ^ (l_576 == l_577))))) , (void*)0) == l_575);
            }
            else
            { /* block id: 270 */
                int8_t l_588 = 0x66L;
                VECTOR(int8_t, 16) l_591 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x30L), 0x30L), 0x30L, (-1L), 0x30L, (VECTOR(int8_t, 2))((-1L), 0x30L), (VECTOR(int8_t, 2))((-1L), 0x30L), (-1L), 0x30L, (-1L), 0x30L);
                int16_t *l_597 = &p_1457->g_161;
                int32_t l_598 = 0L;
                struct S0 l_603[6][9][1] = {{{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}}},{{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}}},{{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}}},{{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}}},{{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}}},{{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}},{{1UL}}}};
                VECTOR(uint16_t, 2) l_606 = (VECTOR(uint16_t, 2))(65526UL, 0UL);
                uint32_t l_619 = 1UL;
                int i, j, k;
                for (l_539 = 0; (l_539 <= 43); l_539++)
                { /* block id: 273 */
                    int32_t **l_583 = &p_1457->g_256[6][1];
                    l_598 &= (((VECTOR(int8_t, 4))(l_580.xxyy)).y | (((**l_532) , ((safe_mod_func_int64_t_s_s((((&p_1457->g_256[7][4] != l_583) , (*p_1457->g_490)) & (safe_add_func_uint32_t_u_u(((((safe_div_func_int32_t_s_s((**l_532), l_588)) & (safe_sub_func_int8_t_s_s(((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),int8_t,((VECTOR(int8_t, 2))(l_591.s85)), (int8_t)((VECTOR(int8_t, 16))(p_1457->g_592.s5104413343543367)).s0, (int8_t)((**l_532) != ((*p_1457->g_440) = (p_1457->g_593[1] == p_1457->g_596[1])))))).odd, 255UL))) , (*p_1457->g_440)) < 65531UL), (*l_503)))), p_1457->g_592.s6)) , l_597)) == (void*)0));
                    if ((atomic_inc(&p_1457->l_atomic_input[41]) == 4))
                    { /* block id: 277 */
                        VECTOR(uint16_t, 8) l_599 = (VECTOR(uint16_t, 8))(0x41ADL, (VECTOR(uint16_t, 4))(0x41ADL, (VECTOR(uint16_t, 2))(0x41ADL, 7UL), 7UL), 7UL, 0x41ADL, 7UL);
                        int32_t l_600 = 0L;
                        int i;
                        l_600 |= (l_599.s0 ^= (-3L));
                        unsigned int result = 0;
                        result += l_599.s7;
                        result += l_599.s6;
                        result += l_599.s5;
                        result += l_599.s4;
                        result += l_599.s3;
                        result += l_599.s2;
                        result += l_599.s1;
                        result += l_599.s0;
                        result += l_600;
                        atomic_add(&p_1457->l_special_values[41], result);
                    }
                    else
                    { /* block id: 280 */
                        (1 + 1);
                    }
                }
                for (p_1457->g_161 = (-21); (p_1457->g_161 == (-17)); p_1457->g_161 = safe_add_func_uint8_t_u_u(p_1457->g_161, 1))
                { /* block id: 286 */
                    struct S0 *l_604 = &p_1457->g_61[2];
                    int32_t l_610[2];
                    int32_t *l_620[7] = {&p_1457->g_64,&l_610[1],&p_1457->g_64,&p_1457->g_64,&l_610[1],&p_1457->g_64,&p_1457->g_64};
                    int i;
                    for (i = 0; i < 2; i++)
                        l_610[i] = (-4L);
                    (*l_604) = l_603[4][6][0];
                }
                (*p_1457->g_252) = 0x1C486ADFL;
            }
            for (p_1457->g_118 = 0; (p_1457->g_118 == (-5)); p_1457->g_118 = safe_sub_func_uint16_t_u_u(p_1457->g_118, 1))
            { /* block id: 319 */
                VECTOR(int32_t, 2) l_648 = (VECTOR(int32_t, 2))(0x4A4848A9L, (-1L));
                int i;
                for (p_1457->g_250 = 8; (p_1457->g_250 <= 51); p_1457->g_250 = safe_add_func_int16_t_s_s(p_1457->g_250, 6))
                { /* block id: 322 */
                    int16_t l_656[9][4] = {{0x0366L,(-1L),1L,0x10CCL},{0x0366L,(-1L),1L,0x10CCL},{0x0366L,(-1L),1L,0x10CCL},{0x0366L,(-1L),1L,0x10CCL},{0x0366L,(-1L),1L,0x10CCL},{0x0366L,(-1L),1L,0x10CCL},{0x0366L,(-1L),1L,0x10CCL},{0x0366L,(-1L),1L,0x10CCL},{0x0366L,(-1L),1L,0x10CCL}};
                    uint8_t l_662 = 0xD5L;
                    int8_t *l_663 = (void*)0;
                    int8_t *l_664[1];
                    int i, j;
                    for (i = 0; i < 1; i++)
                        l_664[i] = &p_1457->g_499;
                    l_648.x = (((((!((((*p_1457->g_490) , p_1457->g_118) || (safe_mul_func_int16_t_s_s(((*p_1457->g_440) = (((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(l_648.yy)))).hi > (p_1457->g_649.y , ((*p_1457->g_594) ^ (p_1457->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1457->tid, 6))] = (((((safe_lshift_func_int8_t_s_u((p_1457->g_592.s1 = ((safe_mod_func_uint8_t_u_u((safe_rshift_func_int16_t_s_s(((l_656[0][3] , &l_569) != l_657), 10)), (safe_rshift_func_uint8_t_u_u((((safe_add_func_int64_t_s_s(l_656[0][0], (6L == 4UL))) , l_656[5][3]) , l_662), 5)))) < 0x0E56473AL)), p_1457->g_87)) > l_618) , (void*)0) != (void*)0) > l_648.x)))))), l_648.y))) == FAKE_DIVERGE(p_1457->global_0_offset, get_global_id(0), 10))) ^ l_648.x) | 0x0CL) , l_617) > 0x53444975L);
                    l_513.w &= l_656[0][3];
                    if (l_662)
                        continue;
                    return l_665;
                }
                (*p_1457->g_537) = l_569;
            }
            for (p_1457->g_118 = 17; (p_1457->g_118 < (-2)); p_1457->g_118 = safe_sub_func_uint16_t_u_u(p_1457->g_118, 4))
            { /* block id: 335 */
                uint16_t l_687 = 0x0256L;
                int32_t *l_690 = &p_1457->g_64;
                VECTOR(uint8_t, 2) l_695 = (VECTOR(uint8_t, 2))(0x51L, 5UL);
                int32_t l_700 = 0x422D65BAL;
                VECTOR(int8_t, 16) l_708 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L), (VECTOR(int8_t, 2))((-1L), (-1L)), (VECTOR(int8_t, 2))((-1L), (-1L)), (-1L), (-1L), (-1L), (-1L));
                uint32_t ****l_746[8][8] = {{&p_1457->g_740,(void*)0,(void*)0,&p_1457->g_740,(void*)0,&p_1457->g_740,(void*)0,(void*)0},{&p_1457->g_740,(void*)0,(void*)0,&p_1457->g_740,(void*)0,&p_1457->g_740,(void*)0,(void*)0},{&p_1457->g_740,(void*)0,(void*)0,&p_1457->g_740,(void*)0,&p_1457->g_740,(void*)0,(void*)0},{&p_1457->g_740,(void*)0,(void*)0,&p_1457->g_740,(void*)0,&p_1457->g_740,(void*)0,(void*)0},{&p_1457->g_740,(void*)0,(void*)0,&p_1457->g_740,(void*)0,&p_1457->g_740,(void*)0,(void*)0},{&p_1457->g_740,(void*)0,(void*)0,&p_1457->g_740,(void*)0,&p_1457->g_740,(void*)0,(void*)0},{&p_1457->g_740,(void*)0,(void*)0,&p_1457->g_740,(void*)0,&p_1457->g_740,(void*)0,(void*)0},{&p_1457->g_740,(void*)0,(void*)0,&p_1457->g_740,(void*)0,&p_1457->g_740,(void*)0,(void*)0}};
                int32_t l_759 = (-1L);
                int32_t l_765[6] = {0x404A9D98L,0x404A9D98L,0x404A9D98L,0x404A9D98L,0x404A9D98L,0x404A9D98L};
                uint64_t l_766 = 0UL;
                int i, j;
                if (((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 2))(l_668.zy)).xyyyxyyyxxxyxxyx, ((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 2))(8L, 1L)).xyyy))).zwyxwyxyyxwyzyyx, ((VECTOR(int32_t, 2))((-7L), 0x3E10E536L)).yxyxyyyyyyxyxxxy))).sc7, ((VECTOR(int32_t, 8))(((*l_690) = (l_689[0][0][4] = (safe_add_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u(FAKE_DIVERGE(p_1457->local_1_offset, get_local_id(1), 10), (safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 16))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 16),((VECTOR(uint32_t, 4))((((safe_mul_func_uint16_t_u_u(((func_54(l_677, p_1457) , (*p_1457->g_67)) > (0L ^ ((((safe_mul_func_uint16_t_u_u(1UL, (l_680[4] != (void*)0))) ^ (+(((**l_575) &= ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(abs_diff(((VECTOR(uint32_t, 16))(clz(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(1UL, (safe_div_func_uint64_t_u_u(((((VECTOR(int16_t, 4))((safe_rshift_func_uint16_t_u_u(0x2AB7L, 2)), ((safe_div_func_int64_t_s_s(l_687, 4UL)) != (*p_1457->g_440)), 0x41F1L, 0x44F0L)).w || 0x6362L) & 0x15F2C9CCL), 18446744073709551615UL)), 0x48998B0DL, 0xE67845D8L)).wwzzwxyy)), 0x0FA8FC43L, 4294967292UL, ((VECTOR(uint32_t, 2))(4294967293UL)), 0xDD8EA466L, ((VECTOR(uint32_t, 2))(4294967289UL)), 6UL))))).s39, ((VECTOR(uint32_t, 2))(0x8E470F7AL))))))))), 0UL, 0xFC1E55F0L)).y) || l_687))) , 1UL) != 0xD563A3E2L))), 0x3D1BL)) , l_508[1][4]) != l_688[1][6][7]), 0xB1A22A14L, 1UL, 1UL)).zywxwzzzywwxwxzy, ((VECTOR(uint32_t, 16))(4294967294UL))))).s4, GROUP_DIVERGE(2, 1))))), 0x4AA0L)))), l_566, (*p_1457->g_252), (*p_1457->g_63), 0x133ADED5L, 0x270D79DCL, 0x45ABC811L, (-4L))).s41))).xyyxyyyyxyxyyyyx))).s4d)).odd)
                { /* block id: 339 */
                    int16_t l_691 = 0x53C9L;
                    return l_691;
                }
                else
                { /* block id: 341 */
                    int8_t l_692 = 0x08L;
                    VECTOR(uint64_t, 8) l_696 = (VECTOR(uint64_t, 8))(0xA2DCE7B1D3A62F99L, (VECTOR(uint64_t, 4))(0xA2DCE7B1D3A62F99L, (VECTOR(uint64_t, 2))(0xA2DCE7B1D3A62F99L, 1UL), 1UL), 1UL, 0xA2DCE7B1D3A62F99L, 1UL);
                    VECTOR(int8_t, 8) l_699 = (VECTOR(int8_t, 8))((-8L), (VECTOR(int8_t, 4))((-8L), (VECTOR(int8_t, 2))((-8L), (-1L)), (-1L)), (-1L), (-8L), (-1L));
                    VECTOR(uint8_t, 4) l_703 = (VECTOR(uint8_t, 4))(0x07L, (VECTOR(uint8_t, 2))(0x07L, 0x60L), 0x60L);
                    uint16_t l_718 = 1UL;
                    uint32_t ***l_722 = &l_575;
                    uint32_t ****l_730 = &p_1457->g_729;
                    uint32_t *****l_742 = &p_1457->g_739;
                    int32_t l_745[1][9];
                    int i, j;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 9; j++)
                            l_745[i][j] = (-1L);
                    }
                    (*l_532) = l_690;
                    if (l_692)
                        continue;
                    (*p_1457->g_63) = ((*l_690) , ((((VECTOR(uint8_t, 8))(mad_hi(((VECTOR(uint8_t, 8))(l_693.s71324701)), ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(mad_hi(((VECTOR(uint8_t, 16))(l_694.xwyxwyzwwyxwxwyy)).lo, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(l_695.yx)), 1UL, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(l_696.s0773545407356406)).s0968)).z , (safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(l_699.s74)), (-6L), (((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(p_1457->g_592.s1, ((void*)0 != &l_621), 0x1DL, (l_700 & (safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(l_703.yyyx)).wxwyxxxzyxxzxxzx)).s3, (~(FAKE_DIVERGE(p_1457->local_2_offset, get_local_id(2), 10) || (safe_lshift_func_uint8_t_u_s((*l_503), 2))))))), 0x01L, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(l_706.s8e)).xyyyyyxx)).s71)), ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(l_707.wyxwyywx)).s42)), ((VECTOR(int8_t, 8))(l_708.s470fcbf3)), 0L, ((safe_rshift_func_uint16_t_u_u((((VECTOR(int32_t, 4))(p_1457->g_711.xzwx)).y != ((safe_mod_func_uint16_t_u_u(((**l_532) > ((safe_rshift_func_int16_t_s_s((safe_div_func_uint8_t_u_u(((*l_503) < 65530UL), 248UL)), (*p_1457->g_440))) || p_1457->g_499)), p_1457->g_553.x)) <= 0x2CL)), 9)) <= (**l_532)), (*l_690), (*l_690), 1L, 0L)).s3d)), ((VECTOR(int8_t, 4))(0x4BL)), (**l_532), 1L, 0x30L)).s20e2)).w || l_718), 0x09L, 0x59L, (**l_532), p_1457->g_196.y, 0x6DL, 0x2FL, ((VECTOR(int8_t, 4))(0L)), 7L, 0x70L)).sa, (*l_690)))), ((VECTOR(uint8_t, 2))(0xB1L)), 255UL, l_692, ((VECTOR(uint8_t, 4))(0x53L)), p_1457->g_531.s5, 0x88L, ((VECTOR(uint8_t, 2))(246UL)), l_699.s0, 255UL, 0xD5L)).sbd)), (*l_690), 0x23L, 0x4CL, 0x94L, ((VECTOR(uint8_t, 4))(0x33L)), (**l_532), 0x53L, 0x0BL)).hi, ((VECTOR(uint8_t, 8))(0xD1L))))).s66)).xxxx)), ((VECTOR(uint8_t, 4))(0xCDL)))), ((VECTOR(uint8_t, 8))(1UL))))).s5 > GROUP_DIVERGE(0, 1)) ^ l_699.s2));
                    if ((18446744073709551615UL < (safe_mul_func_uint8_t_u_u((((*l_722) = l_721) == (l_724 = l_723)), (safe_sub_func_int16_t_s_s((((safe_add_func_uint16_t_u_u((((*l_730) = p_1457->g_729) != (void*)0), (safe_sub_func_int64_t_s_s((safe_mod_func_int64_t_s_s((safe_mul_func_int8_t_s_s(p_1457->g_636.se, (safe_sub_func_int32_t_s_s(((*l_657) , (((*l_742) = p_1457->g_739) == (((safe_lshift_func_uint16_t_u_s((!((p_1457->g_260.w = (l_745[0][4] = ((**l_532) > p_1457->g_605.y))) == (*l_690))), (**l_532))) | p_1457->g_250) , l_746[5][2]))), l_747)))), 1UL)), 0x4B9C63F41D7345ADL)))) , (**l_532)) < p_1457->g_64), l_718))))))
                    { /* block id: 351 */
                        int16_t l_748[4][1][9] = {{{0L,0L,0L,0L,0L,0L,0L,0L,0L}},{{0L,0L,0L,0L,0L,0L,0L,0L,0L}},{{0L,0L,0L,0L,0L,0L,0L,0L,0L}},{{0L,0L,0L,0L,0L,0L,0L,0L,0L}}};
                        uint32_t *l_749 = &l_566;
                        uint16_t *l_755 = &p_1457->g_61[2].f0;
                        int32_t l_756 = (-1L);
                        int i, j, k;
                        l_756 = ((((*l_749) = ((0UL && l_745[0][4]) & (p_1457->g_611.s0 , l_748[3][0][7]))) , l_750) || (safe_rshift_func_int8_t_s_s((safe_div_func_int64_t_s_s(((*l_690) = (**l_532)), (((((void*)0 == l_755) == 1UL) != l_566) ^ l_708.s8))), p_1457->g_12.f0)));
                    }
                    else
                    { /* block id: 355 */
                        int32_t *l_757 = &l_745[0][5];
                        int32_t *l_758 = &p_1457->g_105;
                        int32_t *l_760 = &l_745[0][0];
                        int32_t *l_761 = &l_745[0][4];
                        int32_t *l_762 = &l_621;
                        int32_t *l_763[8][4] = {{&l_515,&l_515,&l_515,(void*)0},{&l_515,&l_515,&l_515,(void*)0},{&l_515,&l_515,&l_515,(void*)0},{&l_515,&l_515,&l_515,(void*)0},{&l_515,&l_515,&l_515,(void*)0},{&l_515,&l_515,&l_515,(void*)0},{&l_515,&l_515,&l_515,(void*)0},{&l_515,&l_515,&l_515,(void*)0}};
                        struct S0 *l_776 = (void*)0;
                        uint16_t *l_786 = &l_539;
                        uint64_t l_787 = 1UL;
                        int i, j;
                        l_766++;
                        (*l_762) ^= (safe_unary_minus_func_int8_t_s(((safe_add_func_uint32_t_u_u(((*l_761) = (l_787 = ((**l_723) = (safe_add_func_uint32_t_u_u(((*l_690) <= ((safe_add_func_uint32_t_u_u((((*l_786) = (3UL | (((&p_1457->g_61[2] != l_776) == (safe_div_func_uint8_t_u_u((((*l_758) |= ((safe_add_func_int32_t_s_s(((l_781 == (void*)0) & l_745[0][4]), ((safe_rshift_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), 10)) ^ 0x4516L))) == (safe_add_func_uint8_t_u_u((*l_690), GROUP_DIVERGE(2, 1))))) | 255UL), p_1457->g_305.s2))) ^ (*l_690)))) , 4294967289UL), (*l_690))) > (**l_532))), (*l_690)))))), (**l_532))) && (**l_532))));
                    }
                }
                (*l_690) = (safe_lshift_func_int8_t_s_u(0x47L, 3));
                if ((atomic_inc(&p_1457->g_atomic_input[43 * get_linear_group_id() + 40]) == 4))
                { /* block id: 367 */
                    int32_t l_790 = 0x7202A50BL;
                    int64_t l_796 = (-8L);
                    int32_t l_797 = 0L;
                    int32_t l_798 = 8L;
                    uint64_t l_799[10] = {0x3B314AA7D59C7C56L,1UL,0x3B314AA7D59C7C56L,0x3B314AA7D59C7C56L,1UL,0x3B314AA7D59C7C56L,0x3B314AA7D59C7C56L,1UL,0x3B314AA7D59C7C56L,0x3B314AA7D59C7C56L};
                    int16_t l_838[6] = {0L,0L,0L,0L,0L,0L};
                    uint8_t l_839 = 255UL;
                    int i;
                    for (l_790 = 0; (l_790 < (-7)); --l_790)
                    { /* block id: 370 */
                        uint32_t l_793 = 0x4E267693L;
                        --l_793;
                    }
                    l_797 |= l_796;
                    if ((l_799[2] &= l_798))
                    { /* block id: 375 */
                        int32_t l_801 = (-10L);
                        int32_t *l_800 = &l_801;
                        int32_t *l_802 = &l_801;
                        VECTOR(int32_t, 2) l_803 = (VECTOR(int32_t, 2))(0L, 0x3E7E2007L);
                        uint64_t l_804 = 0UL;
                        int64_t l_805 = 4L;
                        uint64_t l_806 = 0xF31F98A63F16FA16L;
                        uint16_t l_807 = 0UL;
                        VECTOR(int32_t, 4) l_808 = (VECTOR(int32_t, 4))(0x1B11E08FL, (VECTOR(int32_t, 2))(0x1B11E08FL, 0x071697BCL), 0x071697BCL);
                        VECTOR(int32_t, 8) l_809 = (VECTOR(int32_t, 8))(0x486ECD42L, (VECTOR(int32_t, 4))(0x486ECD42L, (VECTOR(int32_t, 2))(0x486ECD42L, 1L), 1L), 1L, 0x486ECD42L, 1L);
                        int64_t l_810 = 0x7983308E4476EF35L;
                        uint16_t l_811 = 0x914BL;
                        int64_t l_812 = (-3L);
                        VECTOR(uint16_t, 8) l_813 = (VECTOR(uint16_t, 8))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0UL), 0UL), 0UL, 65535UL, 0UL);
                        VECTOR(uint16_t, 4) l_814 = (VECTOR(uint16_t, 4))(0xC721L, (VECTOR(uint16_t, 2))(0xC721L, 0x1F71L), 0x1F71L);
                        VECTOR(uint16_t, 2) l_815 = (VECTOR(uint16_t, 2))(1UL, 0x9CE6L);
                        VECTOR(uint16_t, 16) l_816 = (VECTOR(uint16_t, 16))(0x79C1L, (VECTOR(uint16_t, 4))(0x79C1L, (VECTOR(uint16_t, 2))(0x79C1L, 0xEB17L), 0xEB17L), 0xEB17L, 0x79C1L, 0xEB17L, (VECTOR(uint16_t, 2))(0x79C1L, 0xEB17L), (VECTOR(uint16_t, 2))(0x79C1L, 0xEB17L), 0x79C1L, 0xEB17L, 0x79C1L, 0xEB17L);
                        VECTOR(uint16_t, 16) l_817 = (VECTOR(uint16_t, 16))(8UL, (VECTOR(uint16_t, 4))(8UL, (VECTOR(uint16_t, 2))(8UL, 1UL), 1UL), 1UL, 8UL, 1UL, (VECTOR(uint16_t, 2))(8UL, 1UL), (VECTOR(uint16_t, 2))(8UL, 1UL), 8UL, 1UL, 8UL, 1UL);
                        VECTOR(uint16_t, 4) l_818 = (VECTOR(uint16_t, 4))(0x8AAAL, (VECTOR(uint16_t, 2))(0x8AAAL, 0x9132L), 0x9132L);
                        VECTOR(uint16_t, 16) l_819 = (VECTOR(uint16_t, 16))(65534UL, (VECTOR(uint16_t, 4))(65534UL, (VECTOR(uint16_t, 2))(65534UL, 5UL), 5UL), 5UL, 65534UL, 5UL, (VECTOR(uint16_t, 2))(65534UL, 5UL), (VECTOR(uint16_t, 2))(65534UL, 5UL), 65534UL, 5UL, 65534UL, 5UL);
                        VECTOR(uint16_t, 8) l_820 = (VECTOR(uint16_t, 8))(0x48D0L, (VECTOR(uint16_t, 4))(0x48D0L, (VECTOR(uint16_t, 2))(0x48D0L, 0x447BL), 0x447BL), 0x447BL, 0x48D0L, 0x447BL);
                        int8_t l_821 = 0L;
                        int32_t l_822 = 0x5EDEE40DL;
                        uint16_t l_823[7];
                        int64_t l_826 = 0x25311CF272769BF2L;
                        int64_t l_827 = (-1L);
                        int32_t l_828 = 0L;
                        uint8_t l_829 = 1UL;
                        int64_t l_830 = (-2L);
                        uint16_t l_831 = 3UL;
                        int32_t l_832 = (-3L);
                        int i;
                        for (i = 0; i < 7; i++)
                            l_823[i] = 0UL;
                        l_802 = (l_800 = (void*)0);
                        l_798 = ((VECTOR(int32_t, 4))(l_803.xyyx)).x;
                        l_798 ^= (l_790 = (l_804 , ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(l_805, (-7L), l_806, 0x7617E0A5L, 1L, ((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 4))(0x093603C9L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(0x654480BAL, l_807, 0x20C95126L, 0x50DDFBE6L)).wywwyxyy)), ((VECTOR(int32_t, 8))(0x3146150BL, ((VECTOR(int32_t, 4))(l_808.xyyz)), 0x27A32FDFL, 0x25D1DC5EL, 0x10B6BFA3L)))).s7978)), ((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_809.s0240)).zwwwzzxy)), 7L, 5L, (-1L), (-8L), 0x3C0DD6BCL, ((l_797 |= (l_810 , l_811)) , (((VECTOR(uint16_t, 8))(l_812, ((VECTOR(uint16_t, 16))(l_813.s3150777741260025)).s6, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(min(((VECTOR(uint16_t, 2))(rotate(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(l_814.zywyzyzzzzxzzyzw)).s33)), ((VECTOR(uint16_t, 4))(sub_sat(((VECTOR(uint16_t, 8))(l_815.yyxyyyyx)).even, ((VECTOR(uint16_t, 4))(rhadd(((VECTOR(uint16_t, 2))(min(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(mul_hi(((VECTOR(uint16_t, 4))(add_sat(((VECTOR(uint16_t, 4))(l_816.s50e3)), ((VECTOR(uint16_t, 16))(sub_sat(((VECTOR(uint16_t, 16))(l_817.s7fca37f96e2991c4)), ((VECTOR(uint16_t, 2))(l_818.xx)).yyyyyyyxxyyyxxxx))).s3b91))).yxxwwxxyzwwwxxzz, ((VECTOR(uint16_t, 8))(min(((VECTOR(uint16_t, 8))(mul_hi(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(l_819.s5278)).zxwwxzzywwxzyyyy)).hi, ((VECTOR(uint16_t, 16))(safe_clamp_func(VECTOR(uint16_t, 16),uint16_t,((VECTOR(uint16_t, 2))(l_820.s22)).yxyyyyyyxxxxxyyx, (uint16_t)(l_823[3]--), (uint16_t)l_826))).even))), (uint16_t)(l_828 = l_827)))).s4342771474676146))).sdfcb)).even, (uint16_t)l_829))).xyxy, ((VECTOR(uint16_t, 4))(0x8C26L)))))))).odd))).yyxx, (uint16_t)l_830))).y, ((VECTOR(uint16_t, 2))(0xC597L)), 65532UL)), 65529UL, 0xE050L)).s4 , l_831)), 0x2290FB21L, (-1L))), ((VECTOR(int32_t, 16))(0L)), ((VECTOR(int32_t, 16))(0x0F588AD0L))))).se, l_832, 0x40879225L, 0L)).yywzzzzyzxwzyyzw)).sf2, ((VECTOR(int32_t, 2))(1L))))).xxxx))).even)), 0x6B9F58EEL)).yzzxwwxz, ((VECTOR(int32_t, 8))(3L))))).s57, ((VECTOR(int32_t, 2))(0x5E896EF2L))))).lo, 0x339386CCL, (-9L))).s3312674624715456)).s5));
                    }
                    else
                    { /* block id: 384 */
                        int32_t l_833 = 0x1A5C1C64L;
                        int8_t l_834 = 0L;
                        VECTOR(uint32_t, 4) l_835 = (VECTOR(uint32_t, 4))(0x85E4BEA8L, (VECTOR(uint32_t, 2))(0x85E4BEA8L, 0x368E262AL), 0x368E262AL);
                        int16_t l_836 = (-1L);
                        int16_t l_837 = 0x1FABL;
                        int i;
                        l_834 = (l_790 = l_833);
                        l_798 = (((VECTOR(uint32_t, 2))(l_835.wx)).even , 0x3113069EL);
                        l_798 ^= (l_836 , l_837);
                    }
                    l_839 |= l_838[1];
                    unsigned int result = 0;
                    result += l_790;
                    result += l_796;
                    result += l_797;
                    result += l_798;
                    int l_799_i0;
                    for (l_799_i0 = 0; l_799_i0 < 10; l_799_i0++) {
                        result += l_799[l_799_i0];
                    }
                    int l_838_i0;
                    for (l_838_i0 = 0; l_838_i0 < 6; l_838_i0++) {
                        result += l_838[l_838_i0];
                    }
                    result += l_839;
                    atomic_add(&p_1457->g_special_values[43 * get_linear_group_id() + 40], result);
                }
                else
                { /* block id: 391 */
                    (1 + 1);
                }
                l_513.y = ((**l_532) = 0x4C44DE29L);
            }
            if ((atomic_inc(&p_1457->g_atomic_input[43 * get_linear_group_id() + 23]) == 0))
            { /* block id: 398 */
                uint32_t l_840 = 0xE9E8ED0DL;
                int32_t l_841 = 0x3CC46FBCL;
                if ((l_841 ^= l_840))
                { /* block id: 400 */
                    struct S0 l_842 = {0UL};
                    struct S0 l_843 = {0xE56DL};
                    int32_t *l_844 = (void*)0;
                    int32_t l_846 = (-1L);
                    int32_t *l_845 = &l_846;
                    struct S0 l_847 = {65535UL};
                    struct S0 l_848 = {1UL};
                    struct S0 l_849 = {0xB7A2L};
                    l_843 = l_842;
                    l_844 = (l_845 = l_844);
                    l_849 = (l_848 = l_847);
                }
                else
                { /* block id: 406 */
                    uint16_t l_850[9] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL};
                    int32_t l_851 = 0x4BB23D8CL;
                    int32_t *l_857 = &l_851;
                    int32_t l_858 = 0L;
                    int64_t l_859[9][3][2] = {{{4L,0x0B8A5158D9855923L},{4L,0x0B8A5158D9855923L},{4L,0x0B8A5158D9855923L}},{{4L,0x0B8A5158D9855923L},{4L,0x0B8A5158D9855923L},{4L,0x0B8A5158D9855923L}},{{4L,0x0B8A5158D9855923L},{4L,0x0B8A5158D9855923L},{4L,0x0B8A5158D9855923L}},{{4L,0x0B8A5158D9855923L},{4L,0x0B8A5158D9855923L},{4L,0x0B8A5158D9855923L}},{{4L,0x0B8A5158D9855923L},{4L,0x0B8A5158D9855923L},{4L,0x0B8A5158D9855923L}},{{4L,0x0B8A5158D9855923L},{4L,0x0B8A5158D9855923L},{4L,0x0B8A5158D9855923L}},{{4L,0x0B8A5158D9855923L},{4L,0x0B8A5158D9855923L},{4L,0x0B8A5158D9855923L}},{{4L,0x0B8A5158D9855923L},{4L,0x0B8A5158D9855923L},{4L,0x0B8A5158D9855923L}},{{4L,0x0B8A5158D9855923L},{4L,0x0B8A5158D9855923L},{4L,0x0B8A5158D9855923L}}};
                    uint16_t l_860 = 0xA600L;
                    int64_t l_861 = 0L;
                    int i, j, k;
                    if ((l_851 = l_850[1]))
                    { /* block id: 408 */
                        uint16_t l_852[10] = {0x2F72L,0x2F72L,0x2F72L,0x2F72L,0x2F72L,0x2F72L,0x2F72L,0x2F72L,0x2F72L,0x2F72L};
                        int32_t l_854 = 0x1636E101L;
                        int32_t *l_853 = &l_854;
                        int32_t *l_855 = &l_854;
                        int i;
                        l_851 = l_852[2];
                        l_853 = (void*)0;
                        l_855 = (void*)0;
                    }
                    else
                    { /* block id: 412 */
                        int32_t l_856 = 0x26C25162L;
                        l_851 ^= l_856;
                    }
                    l_857 = (void*)0;
                    l_861 |= (l_860 = (l_859[0][0][0] = l_858));
                }
                unsigned int result = 0;
                result += l_840;
                result += l_841;
                atomic_add(&p_1457->g_special_values[43 * get_linear_group_id() + 23], result);
            }
            else
            { /* block id: 420 */
                (1 + 1);
            }
        }
        (*p_1457->g_862) = ((*l_532) = &l_621);
    }
    else
    { /* block id: 426 */
        int32_t l_863 = 0x038E71C2L;
        int32_t l_864 = 0L;
        l_864 = ((*l_503) = l_863);
    }
    for (p_1457->g_499 = 11; (p_1457->g_499 != (-13)); p_1457->g_499 = safe_sub_func_uint8_t_u_u(p_1457->g_499, 4))
    { /* block id: 432 */
        int32_t *l_869 = &p_1457->g_105;
        for (p_1457->g_250 = 0; (p_1457->g_250 <= 38); p_1457->g_250++)
        { /* block id: 435 */
            int32_t **l_871 = &l_502;
            int32_t *l_872 = &p_1457->g_105;
            (*p_1457->g_870) = l_869;
            (*l_871) = l_869;
            (*l_869) = 1L;
            (*l_871) = l_872;
        }
        l_869 = l_869;
    }
    (*l_503) = ((VECTOR(int32_t, 4))(l_874.zwxx)).z;
    if ((atomic_inc(&p_1457->l_atomic_input[22]) == 0))
    { /* block id: 445 */
        int32_t l_875 = 0x0E9D5734L;
        int32_t *l_924 = (void*)0;
        int32_t *l_925 = &l_875;
        struct S0 l_926 = {4UL};
        struct S0 l_927 = {7UL};
        for (l_875 = 0; (l_875 >= 22); ++l_875)
        { /* block id: 448 */
            VECTOR(int16_t, 2) l_878 = (VECTOR(int16_t, 2))(9L, 1L);
            int32_t l_879 = 0x59C78F04L;
            int i;
            l_879 = l_878.x;
            for (l_878.x = 0; (l_878.x != (-27)); l_878.x--)
            { /* block id: 452 */
                int32_t l_882 = 0x3F97D12EL;
                uint32_t l_883 = 0xBD99E376L;
                l_883++;
                for (l_882 = 0; (l_882 == 29); l_882 = safe_add_func_uint64_t_u_u(l_882, 7))
                { /* block id: 456 */
                    int32_t l_888 = 1L;
                    int16_t l_898 = 0x5744L;
                    uint32_t l_899 = 1UL;
                    struct S0 l_902 = {65531UL};
                    struct S0 l_903 = {65535UL};
                    uint8_t l_904 = 5UL;
                    uint32_t l_905[4][6] = {{0x95D2FE7BL,0x95D2FE7BL,0x95D2FE7BL,0x95D2FE7BL,0x95D2FE7BL,0x95D2FE7BL},{0x95D2FE7BL,0x95D2FE7BL,0x95D2FE7BL,0x95D2FE7BL,0x95D2FE7BL,0x95D2FE7BL},{0x95D2FE7BL,0x95D2FE7BL,0x95D2FE7BL,0x95D2FE7BL,0x95D2FE7BL,0x95D2FE7BL},{0x95D2FE7BL,0x95D2FE7BL,0x95D2FE7BL,0x95D2FE7BL,0x95D2FE7BL,0x95D2FE7BL}};
                    uint16_t l_906 = 0xB212L;
                    int16_t l_907 = 0x6E66L;
                    int32_t *l_908[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int32_t *l_909[1];
                    int32_t *l_910 = &l_888;
                    int i, j;
                    for (i = 0; i < 1; i++)
                        l_909[i] = (void*)0;
                    for (l_888 = 4; (l_888 > (-29)); l_888 = safe_sub_func_int8_t_s_s(l_888, 5))
                    { /* block id: 459 */
                        int32_t l_892 = 1L;
                        int32_t *l_891[2][4] = {{&l_892,&l_892,&l_892,&l_892},{&l_892,&l_892,&l_892,&l_892}};
                        int32_t *l_893 = &l_892;
                        uint32_t l_894[6][1];
                        uint32_t l_895 = 3UL;
                        int i, j;
                        for (i = 0; i < 6; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_894[i][j] = 0x51F9D7D0L;
                        }
                        l_893 = l_891[1][0];
                        l_879 &= l_894[0][0];
                        --l_895;
                    }
                    --l_899;
                    l_910 = ((l_902 = (l_903 = l_902)) , (l_904 , (l_909[0] = (l_908[6] = ((l_906 ^= l_905[3][3]) , ((l_907 |= 0x63423330L) , l_908[2]))))));
                }
            }
        }
        for (l_875 = 17; (l_875 <= 26); l_875 = safe_add_func_uint64_t_u_u(l_875, 9))
        { /* block id: 477 */
            struct S0 l_913[3] = {{0UL},{0UL},{0UL}};
            VECTOR(uint64_t, 4) l_914 = (VECTOR(uint64_t, 4))(0x3F04ACC981CEDF7DL, (VECTOR(uint64_t, 2))(0x3F04ACC981CEDF7DL, 0x8E7F14F80359AC65L), 0x8E7F14F80359AC65L);
            struct S0 *l_921 = &l_913[0];
            struct S0 **l_922[10][3] = {{&l_921,&l_921,&l_921},{&l_921,&l_921,&l_921},{&l_921,&l_921,&l_921},{&l_921,&l_921,&l_921},{&l_921,&l_921,&l_921},{&l_921,&l_921,&l_921},{&l_921,&l_921,&l_921},{&l_921,&l_921,&l_921},{&l_921,&l_921,&l_921},{&l_921,&l_921,&l_921}};
            struct S0 **l_923 = &l_921;
            int i, j;
            if (((l_913[1] , ((VECTOR(uint64_t, 2))(l_914.xz)).even) , (((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(abs(((VECTOR(int32_t, 2))(1L, 0x6A509DC3L)).yyyx))).wzxxwzyx)).s1 , 0x59A23380L)))
            { /* block id: 478 */
                int32_t l_916 = 0x3EB574FFL;
                int32_t *l_915 = &l_916;
                int32_t *l_917 = (void*)0;
                int32_t *l_918 = &l_916;
                l_918 = (l_917 = l_915);
            }
            else
            { /* block id: 481 */
                int8_t l_919 = 0L;
                VECTOR(int8_t, 8) l_920 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L));
                int i;
                l_920.s7 ^= (l_919 &= 2L);
            }
            l_921 = l_921;
            l_923 = l_922[3][1];
        }
        l_925 = l_924;
        l_927 = l_926;
        unsigned int result = 0;
        result += l_875;
        result += l_926.f0;
        result += l_927.f0;
        atomic_add(&p_1457->l_special_values[22], result);
    }
    else
    { /* block id: 490 */
        (1 + 1);
    }
    return (*p_1457->g_440);
}


/* ------------------------------------------ */
/* 
 * reads : p_1457->g_280 p_1457->g_490 p_1457->g_499 p_1457->g_252 p_1457->g_105
 * writes: p_1457->g_105 p_1457->g_499
 */
int32_t  func_36(int16_t *** p_37, uint32_t  p_38, int16_t * p_39, struct S1 * p_1457)
{ /* block id: 234 */
    uint32_t *l_491 = (void*)0;
    int32_t l_494 = 8L;
    int32_t *l_497 = &l_494;
    int32_t *l_498 = &p_1457->g_105;
    p_1457->g_499 |= ((-3L) == (safe_mul_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_s(p_1457->g_280.se, 2)), (0x3CL && ((safe_mod_func_int16_t_s_s((safe_sub_func_uint64_t_u_u(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(abs_diff(((VECTOR(uint64_t, 4))(18446744073709551615UL, ((l_491 = p_1457->g_490) == ((safe_div_func_int64_t_s_s(((0x204EL == p_38) || (l_494 , (safe_lshift_func_int16_t_s_s(((((*l_498) = ((*l_497) = 0L)) , 0x469748D9L) , 0x1386L), 8)))), 0xEA264EA9F3F8B693L)) , l_498)), 4UL, 3UL)).wzzxxxyz, ((VECTOR(uint64_t, 8))(18446744073709551609UL))))))).s6, p_38)), p_38)) | 65533UL)))));
    return (*p_1457->g_252);
}


/* ------------------------------------------ */
/* 
 * reads : p_1457->g_250 p_1457->g_302 p_1457->g_64 p_1457->g_305 p_1457->g_105 p_1457->g_90 p_1457->g_87 p_1457->g_118 p_1457->g_174 p_1457->g_7 p_1457->g_60 p_1457->g_61 p_1457->g_338 p_1457->g_340 p_1457->g_113 p_1457->g_222 p_1457->l_comm_values p_1457->g_260 p_1457->g_180 p_1457->g_12.f0
 * writes: p_1457->g_250 p_1457->g_256 p_1457->g_64 p_1457->g_105 p_1457->g_61 p_1457->g_321 p_1457->g_87 p_1457->g_118 p_1457->g_113
 */
int16_t *** func_40(int16_t * p_41, struct S1 * p_1457)
{ /* block id: 129 */
    int32_t *l_293[9][7] = {{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,(void*)0},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,(void*)0},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,(void*)0},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,(void*)0},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,(void*)0},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,(void*)0},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,(void*)0},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,(void*)0},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,(void*)0}};
    int32_t l_294 = 3L;
    VECTOR(uint64_t, 4) l_295 = (VECTOR(uint64_t, 4))(0xE1ECC352041951C1L, (VECTOR(uint64_t, 2))(0xE1ECC352041951C1L, 1UL), 1UL);
    int32_t *l_300 = &p_1457->g_64;
    VECTOR(uint32_t, 4) l_315 = (VECTOR(uint32_t, 4))(0x297EF9A7L, (VECTOR(uint32_t, 2))(0x297EF9A7L, 4294967294UL), 4294967294UL);
    VECTOR(uint32_t, 2) l_316 = (VECTOR(uint32_t, 2))(0x82184A58L, 4294967295UL);
    VECTOR(uint32_t, 2) l_317 = (VECTOR(uint32_t, 2))(0x50D49B4FL, 0x4DB9D985L);
    VECTOR(uint32_t, 4) l_318 = (VECTOR(uint32_t, 4))(0x3313E660L, (VECTOR(uint32_t, 2))(0x3313E660L, 0x480F26E6L), 0x480F26E6L);
    uint32_t *l_320 = &p_1457->g_321;
    uint16_t l_328 = 0x88C4L;
    int8_t *l_329 = &p_1457->g_87;
    int8_t *l_330 = &p_1457->g_118;
    struct S0 l_357 = {0xF330L};
    uint16_t **l_428 = (void*)0;
    int8_t l_470 = 2L;
    int32_t **l_480 = &p_1457->g_256[7][4];
    int16_t ***l_481 = (void*)0;
    int i, j;
    l_295.x--;
    for (p_1457->g_250 = 0; (p_1457->g_250 == 28); p_1457->g_250++)
    { /* block id: 133 */
        int32_t **l_301 = (void*)0;
        int32_t l_306 = (-1L);
        int32_t l_314 = 7L;
        (*p_1457->g_302) = l_300;
        for (p_1457->g_64 = 8; (p_1457->g_64 <= 25); p_1457->g_64++)
        { /* block id: 137 */
            uint32_t *l_309 = (void*)0;
            l_306 = ((VECTOR(int32_t, 8))(p_1457->g_305.s65731214)).s4;
            for (p_1457->g_105 = 6; (p_1457->g_105 <= 2); --p_1457->g_105)
            { /* block id: 141 */
                uint32_t *l_310 = &p_1457->g_250;
                struct S0 l_311 = {1UL};
                struct S0 *l_313 = &p_1457->g_61[1];
                (*l_313) = ((l_309 != l_310) , func_54(l_311, p_1457));
            }
            l_314 |= l_306;
        }
    }
    if ((((((0x121BCEF0L & ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(min(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(mad_hi(((VECTOR(uint32_t, 4))(abs_diff(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(0x0AA8EAA1L, 0x877EF40CL)))).yyxy, ((VECTOR(uint32_t, 8))(safe_clamp_func(VECTOR(uint32_t, 8),VECTOR(uint32_t, 8),((VECTOR(uint32_t, 8))((*l_300), 1UL, ((VECTOR(uint32_t, 4))(l_315.yxxz)), 5UL, 4294967295UL)), ((VECTOR(uint32_t, 4))(0xAACC7EC0L, 2UL, 0UL, 4294967290UL)).wxzywzxw, ((VECTOR(uint32_t, 8))(l_316.yyxxyyxx))))).odd))).wwxzwxxwzzwzyyyw, ((VECTOR(uint32_t, 4))(l_317.xxxx)).zxxywwyywwyyxyxz, ((VECTOR(uint32_t, 8))(l_318.zxwzzwyz)).s3465066540617410))).s7e)).yyxyxxyy)).s6355726265515752, ((VECTOR(uint32_t, 4))(p_1457->g_250, 4294967295UL, 0x2C4DDE70L, 4294967291UL)).zxywyyzywxwyzzxx))).lo)).s5) , (safe_unary_minus_func_uint32_t_u((*l_300)))) == ((*l_300) > ((*l_320) = ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(0UL, 0x48174012L)))).lo))) != (((((*l_330) &= (((*l_329) ^= ((safe_mul_func_int16_t_s_s(((safe_mod_func_uint8_t_u_u(((safe_rshift_func_int8_t_s_s(((p_1457->g_90.z , (*l_300)) > (*l_300)), 1)) <= l_328), 6L)) & (*l_300)), 0xDF77L)) != 18446744073709551609UL)) , p_1457->g_90.x)) <= (*l_300)) , p_1457->g_174.x) > p_1457->g_7.y)) < (-1L)))
    { /* block id: 150 */
        uint8_t l_353[2];
        int32_t l_391 = 1L;
        int32_t l_393 = 8L;
        int32_t l_399 = 0x1E90EC11L;
        int32_t l_400[5] = {5L,5L,5L,5L,5L};
        int32_t l_427[1][9] = {{3L,3L,3L,3L,3L,3L,3L,3L,3L}};
        VECTOR(uint64_t, 8) l_430 = (VECTOR(uint64_t, 8))(2UL, (VECTOR(uint64_t, 4))(2UL, (VECTOR(uint64_t, 2))(2UL, 0xEAD70DE301C89510L), 0xEAD70DE301C89510L), 0xEAD70DE301C89510L, 2UL, 0xEAD70DE301C89510L);
        int64_t *l_434[10][8][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
        int16_t **l_441 = &p_1457->g_440;
        int32_t *l_445 = &l_400[1];
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_353[i] = 0x14L;
        for (p_1457->g_250 = 0; (p_1457->g_250 >= 58); p_1457->g_250++)
        { /* block id: 153 */
            int32_t *l_339 = &p_1457->g_64;
            uint32_t **l_365[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int64_t *l_389 = (void*)0;
            int32_t l_392 = (-3L);
            int32_t l_396 = 0x53AE7B5BL;
            VECTOR(int32_t, 2) l_397 = (VECTOR(int32_t, 2))(1L, 0x6015EF4EL);
            int32_t l_407 = 0x5EF9FCE8L;
            int16_t l_408 = (-2L);
            int32_t l_410 = 0x3AA5CEB3L;
            int32_t l_413 = (-1L);
            uint8_t l_417 = 255UL;
            int64_t **l_433 = &l_389;
            struct S0 *l_437 = (void*)0;
            struct S0 *l_438 = &p_1457->g_61[2];
            int i;
            for (l_328 = 20; (l_328 <= 11); l_328 = safe_sub_func_int64_t_s_s(l_328, 7))
            { /* block id: 156 */
                VECTOR(int8_t, 8) l_335 = (VECTOR(int8_t, 8))(7L, (VECTOR(int8_t, 4))(7L, (VECTOR(int8_t, 2))(7L, 0L), 0L), 0L, 7L, 0L);
                VECTOR(int8_t, 16) l_343 = (VECTOR(int8_t, 16))(0x33L, (VECTOR(int8_t, 4))(0x33L, (VECTOR(int8_t, 2))(0x33L, (-10L)), (-10L)), (-10L), 0x33L, (-10L), (VECTOR(int8_t, 2))(0x33L, (-10L)), (VECTOR(int8_t, 2))(0x33L, (-10L)), 0x33L, (-10L), 0x33L, (-10L));
                int32_t l_390 = 1L;
                VECTOR(int32_t, 4) l_401 = (VECTOR(int32_t, 4))((-10L), (VECTOR(int32_t, 2))((-10L), (-7L)), (-7L));
                int32_t l_411 = 0x2363EA6AL;
                VECTOR(uint64_t, 2) l_426 = (VECTOR(uint64_t, 2))(1UL, 1UL);
                int i;
                if (l_335.s7)
                { /* block id: 157 */
                    for (p_1457->g_87 = 0; (p_1457->g_87 < (-1)); p_1457->g_87--)
                    { /* block id: 160 */
                        (*l_300) |= l_335.s1;
                        (*p_1457->g_338) = (*p_1457->g_60);
                    }
                }
                else
                { /* block id: 164 */
                    VECTOR(int16_t, 4) l_348 = (VECTOR(int16_t, 4))(0x453EL, (VECTOR(int16_t, 2))(0x453EL, 0x41C3L), 0x41C3L);
                    uint32_t **l_364 = (void*)0;
                    int32_t l_375 = 0x27618F35L;
                    int8_t l_394 = 0x6FL;
                    int16_t l_403 = 0x0222L;
                    int32_t l_405 = 0x7326EFEEL;
                    int32_t l_406 = 0x1604909CL;
                    int32_t l_409 = (-1L);
                    int32_t l_412[8] = {0x690AE7DDL,0x690AE7DDL,0x690AE7DDL,0x690AE7DDL,0x690AE7DDL,0x690AE7DDL,0x690AE7DDL,0x690AE7DDL};
                    uint16_t **l_429[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_429[i] = &p_1457->g_247;
                    (*p_1457->g_340) = l_339;
                    l_353[0] |= ((safe_rshift_func_int8_t_s_s(p_1457->g_113, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),int8_t,((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 16))(0x2CL, ((VECTOR(int8_t, 8))(l_343.sa9618881)), (((safe_lshift_func_int16_t_s_s((safe_mod_func_int16_t_s_s((+((VECTOR(int16_t, 4))(l_348.zxzz)).y), 0x6591L)), 1)) , 0x046DL) | 0xBEB6L), (((safe_sub_func_int16_t_s_s(p_1457->g_113, l_348.w)) , (((((void*)0 == l_320) ^ (safe_add_func_int16_t_s_s((l_348.w , p_1457->g_250), p_1457->g_280.s0))) != p_1457->g_118) == p_1457->g_118)) | (-1L)), 0x6FL, l_343.s7, ((VECTOR(int8_t, 2))(5L)), 0x20L)).s28ef, ((VECTOR(int8_t, 4))((-3L)))))), (int8_t)p_1457->g_71.x, (int8_t)l_343.s8))).wyxyzwwxyyywzywx)).even, ((VECTOR(int8_t, 8))((-1L)))))), 0x27L, (*l_339), ((VECTOR(int8_t, 4))((-3L))), 0L, 0x65L)).sb0, ((VECTOR(int8_t, 2))(0x2FL))))), (-1L), 1L)).x)) <= 0UL);
                    if (l_335.s7)
                    { /* block id: 167 */
                        uint64_t l_354 = 0xF49B432817DA3B8FL;
                        int64_t *l_373 = (void*)0;
                        int64_t *l_374 = (void*)0;
                        int64_t *l_376 = (void*)0;
                        int64_t *l_377 = (void*)0;
                        int64_t *l_378[4];
                        int32_t l_379 = 0x11B4F213L;
                        uint16_t *l_388[5][1][2] = {{{&l_357.f0,&l_357.f0}},{{&l_357.f0,&l_357.f0}},{{&l_357.f0,&l_357.f0}},{{&l_357.f0,&l_357.f0}},{{&l_357.f0,&l_357.f0}}};
                        int32_t l_395 = (-8L);
                        int32_t l_402 = 1L;
                        VECTOR(int32_t, 4) l_404 = (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 0x6C16757CL), 0x6C16757CL);
                        uint64_t l_414 = 1UL;
                        int i, j, k;
                        for (i = 0; i < 4; i++)
                            l_378[i] = (void*)0;
                        (*l_300) = l_354;
                        l_379 |= (safe_lshift_func_uint16_t_u_s(((((l_357 , (safe_add_func_uint16_t_u_u((++p_1457->g_61[2].f0), (safe_lshift_func_uint8_t_u_u((l_364 == l_365[6]), ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(255UL, ((safe_rshift_func_int8_t_s_s(((*l_329) = (((safe_lshift_func_int8_t_s_u(l_353[0], 1)) && (p_1457->g_372 != (((*p_1457->g_252) && (((*l_339) = ((p_1457->g_180.s9 = p_1457->g_229.sf) , (0UL == (p_1457->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1457->tid, 6))] = ((l_375 = ((((*l_320) = (p_1457->g_12.f0 & p_1457->g_280.s2)) <= l_354) > (-3L))) == l_354))))) ^ FAKE_DIVERGE(p_1457->global_0_offset, get_global_id(0), 10))) , p_1457->g_372))) , (-10L))), 7)) , p_1457->g_7.w), 0xB3L, ((VECTOR(uint8_t, 2))(248UL)), 250UL, 0x07L, 0x22L)))).s1))))) | l_335.s1) != l_353[0]) < 0x388E80A6L), 2));
                        l_390 &= (((&p_1457->g_250 == (void*)0) >= (safe_mod_func_int8_t_s_s(((safe_div_func_uint16_t_u_u((safe_lshift_func_int16_t_s_s((((~(safe_sub_func_int8_t_s_s((p_1457->g_222.x > ((p_1457->g_61[2].f0 = ((p_1457->g_61[0] , &p_1457->g_161) != &p_1457->g_161)) != (*l_339))), (l_374 != l_389)))) , (void*)0) == (void*)0), p_1457->g_250)), 1L)) , 0x5AL), p_1457->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1457->tid, 6))]))) == 0x2FL);
                        l_414++;
                    }
                    else
                    { /* block id: 180 */
                        l_417++;
                    }
                    (*l_339) = (safe_sub_func_int32_t_s_s((safe_div_func_int8_t_s_s(((*l_330) ^= (safe_mul_func_int8_t_s_s((p_1457->g_90.z != (((((VECTOR(uint64_t, 2))(l_426.yy)).odd != (0x1AL == p_1457->g_260.x)) , p_1457->g_260.w) , l_427[0][7])), (l_428 != l_429[0])))), p_1457->g_180.s3)), l_335.s3));
                }
            }
            l_400[2] |= ((*l_300) , (GROUP_DIVERGE(2, 1) >= (FAKE_DIVERGE(p_1457->global_1_offset, get_global_id(1), 10) == ((VECTOR(uint64_t, 4))(max(((VECTOR(uint64_t, 4))(rotate(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(rhadd(((VECTOR(uint64_t, 8))(0x04AEE909C0211479L, (*l_300), ((VECTOR(uint64_t, 2))(clz(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(l_430.s57572466)).lo)).lo))), ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(hadd(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(((safe_rshift_func_uint8_t_u_s(((((*l_433) = (void*)0) == l_434[7][7][2]) , (safe_sub_func_uint32_t_u_u(((l_441 = (((*l_438) = func_54(l_357, p_1457)) , p_1457->g_439[2][2])) != &p_1457->g_440), ((*l_300) = 0L)))), p_1457->g_222.w)) != l_392), ((VECTOR(uint64_t, 2))(0UL)), 1UL)), ((VECTOR(uint64_t, 8))(18446744073709551615UL)), l_353[0], 18446744073709551615UL, 0xE872C04F87DA9C87L, 0xEBDCF4E9366BE052L)), ((VECTOR(uint64_t, 16))(0xD964719D6ABC58C6L))))).s53)).yxyy)))).lo, ((VECTOR(uint64_t, 4))(0x59DBB3650C27766BL))))))), ((VECTOR(uint64_t, 4))(0x420517A9762DD4B7L))))), (uint64_t)l_430.s1))).z)));
        }
        for (p_1457->g_113 = 1; (p_1457->g_113 > 28); p_1457->g_113++)
        { /* block id: 195 */
            int32_t **l_444[2][8] = {{&p_1457->g_256[2][3],&l_293[3][4],&l_293[3][4],&l_293[3][4],&p_1457->g_256[2][3],&p_1457->g_256[2][3],&l_293[3][4],&l_293[3][4]},{&p_1457->g_256[2][3],&l_293[3][4],&l_293[3][4],&l_293[3][4],&p_1457->g_256[2][3],&p_1457->g_256[2][3],&l_293[3][4],&l_293[3][4]}};
            int32_t l_475[2];
            int64_t l_476 = 1L;
            int i, j;
            for (i = 0; i < 2; i++)
                l_475[i] = (-1L);
            l_391 = ((*l_300) = l_427[0][6]);
            l_445 = &l_399;
            for (l_391 = 0; (l_391 >= 6); ++l_391)
            { /* block id: 201 */
                int16_t l_448 = 0x4D6DL;
                (*l_445) = l_448;
                if ((*l_300))
                    break;
                for (l_357.f0 = (-30); (l_357.f0 < 3); l_357.f0++)
                { /* block id: 206 */
                    if ((atomic_inc(&p_1457->g_atomic_input[43 * get_linear_group_id() + 28]) == 4))
                    { /* block id: 208 */
                        uint32_t l_451 = 0xF04AD25BL;
                        uint64_t l_452 = 3UL;
                        uint8_t l_453[2][7] = {{0x5FL,252UL,1UL,252UL,0x5FL,0x5FL,252UL},{0x5FL,252UL,1UL,252UL,0x5FL,0x5FL,252UL}};
                        struct S0 l_454 = {0x2AD3L};
                        struct S0 l_455[6][6][3] = {{{{0xB71DL},{65535UL},{0xFA28L}},{{0xB71DL},{65535UL},{0xFA28L}},{{0xB71DL},{65535UL},{0xFA28L}},{{0xB71DL},{65535UL},{0xFA28L}},{{0xB71DL},{65535UL},{0xFA28L}},{{0xB71DL},{65535UL},{0xFA28L}}},{{{0xB71DL},{65535UL},{0xFA28L}},{{0xB71DL},{65535UL},{0xFA28L}},{{0xB71DL},{65535UL},{0xFA28L}},{{0xB71DL},{65535UL},{0xFA28L}},{{0xB71DL},{65535UL},{0xFA28L}},{{0xB71DL},{65535UL},{0xFA28L}}},{{{0xB71DL},{65535UL},{0xFA28L}},{{0xB71DL},{65535UL},{0xFA28L}},{{0xB71DL},{65535UL},{0xFA28L}},{{0xB71DL},{65535UL},{0xFA28L}},{{0xB71DL},{65535UL},{0xFA28L}},{{0xB71DL},{65535UL},{0xFA28L}}},{{{0xB71DL},{65535UL},{0xFA28L}},{{0xB71DL},{65535UL},{0xFA28L}},{{0xB71DL},{65535UL},{0xFA28L}},{{0xB71DL},{65535UL},{0xFA28L}},{{0xB71DL},{65535UL},{0xFA28L}},{{0xB71DL},{65535UL},{0xFA28L}}},{{{0xB71DL},{65535UL},{0xFA28L}},{{0xB71DL},{65535UL},{0xFA28L}},{{0xB71DL},{65535UL},{0xFA28L}},{{0xB71DL},{65535UL},{0xFA28L}},{{0xB71DL},{65535UL},{0xFA28L}},{{0xB71DL},{65535UL},{0xFA28L}}},{{{0xB71DL},{65535UL},{0xFA28L}},{{0xB71DL},{65535UL},{0xFA28L}},{{0xB71DL},{65535UL},{0xFA28L}},{{0xB71DL},{65535UL},{0xFA28L}},{{0xB71DL},{65535UL},{0xFA28L}},{{0xB71DL},{65535UL},{0xFA28L}}}};
                        struct S0 l_456[6][10][4] = {{{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}}},{{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}}},{{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}}},{{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}}},{{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}}},{{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}},{{65535UL},{0x33F8L},{1UL},{9UL}}}};
                        struct S0 l_457 = {0UL};
                        uint32_t l_458 = 0x10E1E095L;
                        int8_t l_459 = 0x03L;
                        int16_t l_460 = (-1L);
                        uint8_t l_461 = 0x2EL;
                        uint64_t l_464 = 0xBF88DEDF4D43B358L;
                        int64_t l_465 = 0x2F83F99741662F0BL;
                        int i, j, k;
                        l_457 = (l_456[1][5][1] = (l_455[2][0][2] = (l_454 = ((l_453[1][5] = (l_451 , l_452)) , l_454))));
                        l_460 = (l_459 ^= l_458);
                        l_461++;
                        l_465 = l_464;
                        unsigned int result = 0;
                        result += l_451;
                        result += l_452;
                        int l_453_i0, l_453_i1;
                        for (l_453_i0 = 0; l_453_i0 < 2; l_453_i0++) {
                            for (l_453_i1 = 0; l_453_i1 < 7; l_453_i1++) {
                                result += l_453[l_453_i0][l_453_i1];
                            }
                        }
                        result += l_454.f0;
                        int l_455_i0, l_455_i1, l_455_i2;
                        for (l_455_i0 = 0; l_455_i0 < 6; l_455_i0++) {
                            for (l_455_i1 = 0; l_455_i1 < 6; l_455_i1++) {
                                for (l_455_i2 = 0; l_455_i2 < 3; l_455_i2++) {
                                    result += l_455[l_455_i0][l_455_i1][l_455_i2].f0;
                                }
                            }
                        }
                        int l_456_i0, l_456_i1, l_456_i2;
                        for (l_456_i0 = 0; l_456_i0 < 6; l_456_i0++) {
                            for (l_456_i1 = 0; l_456_i1 < 10; l_456_i1++) {
                                for (l_456_i2 = 0; l_456_i2 < 4; l_456_i2++) {
                                    result += l_456[l_456_i0][l_456_i1][l_456_i2].f0;
                                }
                            }
                        }
                        result += l_457.f0;
                        result += l_458;
                        result += l_459;
                        result += l_460;
                        result += l_461;
                        result += l_464;
                        result += l_465;
                        atomic_add(&p_1457->g_special_values[43 * get_linear_group_id() + 28], result);
                    }
                    else
                    { /* block id: 218 */
                        (1 + 1);
                    }
                }
            }
            if ((safe_add_func_uint8_t_u_u((p_1457->g_12.f0 > ((0x1BF2EDE0765D782CL < (((!(*l_300)) >= (*l_445)) < (GROUP_DIVERGE(0, 1) & (safe_rshift_func_uint16_t_u_u(p_1457->g_260.w, 8))))) && (*l_445))), (l_470 && ((((((safe_mod_func_int8_t_s_s((((*l_445) | (((VECTOR(uint64_t, 16))(upsample(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(max(((VECTOR(uint32_t, 4))(((safe_mod_func_int64_t_s_s((*l_445), FAKE_DIVERGE(p_1457->group_1_offset, get_group_id(1), 10))) , GROUP_DIVERGE(2, 1)), 0x76AE32F0L, 4294967288UL, 4294967293UL)).ywyzzzzw, ((VECTOR(uint32_t, 8))(0x7B420C86L))))).s3100672663757540)), ((VECTOR(uint32_t, 16))(0x9E0CE76FL))))).sf && 0xE80B2227EDCA9965L)) , l_475[1]), 0x27L)) == (*l_445)) == l_476) , (*l_300)) , GROUP_DIVERGE(0, 1)) != 65527UL)))))
            { /* block id: 223 */
                return &p_1457->g_439[2][2];
            }
            else
            { /* block id: 225 */
                return &p_1457->g_439[2][2];
            }
        }
    }
    else
    { /* block id: 229 */
        int32_t *l_477 = &p_1457->g_105;
        int32_t *l_479[2];
        int i;
        for (i = 0; i < 2; i++)
            l_479[i] = &p_1457->g_105;
        l_479[0] = l_477;
    }
    (*l_480) = &l_294;
    return l_481;
}


/* ------------------------------------------ */
/* 
 * reads : p_1457->g_60 p_1457->g_61.f0 p_1457->g_63 p_1457->g_comm_values p_1457->g_67 p_1457->g_64 p_1457->g_71 p_1457->g_7 p_1457->l_comm_values p_1457->g_90 p_1457->g_105 p_1457->g_113 p_1457->g_61 p_1457->g_118 p_1457->g_87 p_1457->g_161 p_1457->g_174 p_1457->g_180 p_1457->g_12.f0 p_1457->g_196 p_1457->g_252 p_1457->g_250 p_1457->g_257 p_1457->g_260 p_1457->g_280
 * writes: p_1457->g_61 p_1457->g_64 p_1457->g_87 p_1457->g_105 p_1457->g_113 p_1457->g_161 p_1457->g_118 p_1457->l_comm_values p_1457->g_250 p_1457->g_256
 */
int16_t * func_42(int16_t * p_43, int16_t *** p_44, int8_t  p_45, uint64_t  p_46, uint16_t  p_47, struct S1 * p_1457)
{ /* block id: 12 */
    struct S0 l_56 = {0xF55FL};
    int32_t l_65 = 0x13A29ADDL;
    VECTOR(uint16_t, 8) l_70 = (VECTOR(uint16_t, 8))(0xBA13L, (VECTOR(uint16_t, 4))(0xBA13L, (VECTOR(uint16_t, 2))(0xBA13L, 4UL), 4UL), 4UL, 0xBA13L, 4UL);
    VECTOR(int32_t, 4) l_91 = (VECTOR(int32_t, 4))(0x04183CECL, (VECTOR(int32_t, 2))(0x04183CECL, 0x7BCBCDB5L), 0x7BCBCDB5L);
    uint32_t l_144 = 0UL;
    uint32_t l_158 = 0x0E61FE24L;
    VECTOR(int32_t, 16) l_163 = (VECTOR(int32_t, 16))(0x0E930543L, (VECTOR(int32_t, 4))(0x0E930543L, (VECTOR(int32_t, 2))(0x0E930543L, 0x4C439D63L), 0x4C439D63L), 0x4C439D63L, 0x0E930543L, 0x4C439D63L, (VECTOR(int32_t, 2))(0x0E930543L, 0x4C439D63L), (VECTOR(int32_t, 2))(0x0E930543L, 0x4C439D63L), 0x0E930543L, 0x4C439D63L, 0x0E930543L, 0x4C439D63L);
    VECTOR(int32_t, 16) l_173 = (VECTOR(int32_t, 16))(0x37E4E383L, (VECTOR(int32_t, 4))(0x37E4E383L, (VECTOR(int32_t, 2))(0x37E4E383L, 0x49AC4171L), 0x49AC4171L), 0x49AC4171L, 0x37E4E383L, 0x49AC4171L, (VECTOR(int32_t, 2))(0x37E4E383L, 0x49AC4171L), (VECTOR(int32_t, 2))(0x37E4E383L, 0x49AC4171L), 0x37E4E383L, 0x49AC4171L, 0x37E4E383L, 0x49AC4171L);
    VECTOR(uint8_t, 8) l_190 = (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x66L), 0x66L), 0x66L, 0UL, 0x66L);
    int8_t *l_223 = &p_1457->g_118;
    VECTOR(int16_t, 2) l_243 = (VECTOR(int16_t, 2))(0x0C47L, (-6L));
    uint16_t *l_244 = (void*)0;
    int32_t l_248[8];
    uint32_t *l_271 = (void*)0;
    VECTOR(uint8_t, 16) l_274 = (VECTOR(uint8_t, 16))(0x51L, (VECTOR(uint8_t, 4))(0x51L, (VECTOR(uint8_t, 2))(0x51L, 0xCFL), 0xCFL), 0xCFL, 0x51L, 0xCFL, (VECTOR(uint8_t, 2))(0x51L, 0xCFL), (VECTOR(uint8_t, 2))(0x51L, 0xCFL), 0x51L, 0xCFL, 0x51L, 0xCFL);
    VECTOR(int32_t, 16) l_279 = (VECTOR(int32_t, 16))((-10L), (VECTOR(int32_t, 4))((-10L), (VECTOR(int32_t, 2))((-10L), 2L), 2L), 2L, (-10L), 2L, (VECTOR(int32_t, 2))((-10L), 2L), (VECTOR(int32_t, 2))((-10L), 2L), (-10L), 2L, (-10L), 2L);
    int i;
    for (i = 0; i < 8; i++)
        l_248[i] = 0x4B426675L;
    (*p_1457->g_60) = func_54(l_56, p_1457);
    if (p_47)
    { /* block id: 22 */
        int32_t *l_62 = (void*)0;
        uint32_t l_78 = 4UL;
        struct S0 l_86 = {3UL};
        int32_t l_129[4][1];
        int8_t l_132 = (-3L);
        VECTOR(int32_t, 8) l_172 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L);
        VECTOR(uint64_t, 16) l_175 = (VECTOR(uint64_t, 16))(0xB292FDABE4B629CBL, (VECTOR(uint64_t, 4))(0xB292FDABE4B629CBL, (VECTOR(uint64_t, 2))(0xB292FDABE4B629CBL, 0xFC713C8F7B8AB579L), 0xFC713C8F7B8AB579L), 0xFC713C8F7B8AB579L, 0xB292FDABE4B629CBL, 0xFC713C8F7B8AB579L, (VECTOR(uint64_t, 2))(0xB292FDABE4B629CBL, 0xFC713C8F7B8AB579L), (VECTOR(uint64_t, 2))(0xB292FDABE4B629CBL, 0xFC713C8F7B8AB579L), 0xB292FDABE4B629CBL, 0xFC713C8F7B8AB579L, 0xB292FDABE4B629CBL, 0xFC713C8F7B8AB579L);
        int64_t l_232[7];
        int i, j;
        for (i = 0; i < 4; i++)
        {
            for (j = 0; j < 1; j++)
                l_129[i][j] = 0x29D40A94L;
        }
        for (i = 0; i < 7; i++)
            l_232[i] = 0x5458624B2B4665E8L;
        (*p_1457->g_63) = p_1457->g_61[2].f0;
        if (p_45)
        { /* block id: 24 */
            int32_t l_79 = 0x4C96F5CAL;
            uint16_t *l_84[3];
            struct S0 *l_85[9][3] = {{&p_1457->g_12,&p_1457->g_12,&p_1457->g_12},{&p_1457->g_12,&p_1457->g_12,&p_1457->g_12},{&p_1457->g_12,&p_1457->g_12,&p_1457->g_12},{&p_1457->g_12,&p_1457->g_12,&p_1457->g_12},{&p_1457->g_12,&p_1457->g_12,&p_1457->g_12},{&p_1457->g_12,&p_1457->g_12,&p_1457->g_12},{&p_1457->g_12,&p_1457->g_12,&p_1457->g_12},{&p_1457->g_12,&p_1457->g_12,&p_1457->g_12},{&p_1457->g_12,&p_1457->g_12,&p_1457->g_12}};
            VECTOR(uint64_t, 2) l_88 = (VECTOR(uint64_t, 2))(0xE9A204B7FD3A18FAL, 0UL);
            VECTOR(int32_t, 4) l_89 = (VECTOR(int32_t, 4))(0x28B521F3L, (VECTOR(int32_t, 2))(0x28B521F3L, (-1L)), (-1L));
            VECTOR(int32_t, 16) l_92 = (VECTOR(int32_t, 16))(0x626FBE56L, (VECTOR(int32_t, 4))(0x626FBE56L, (VECTOR(int32_t, 2))(0x626FBE56L, 2L), 2L), 2L, 0x626FBE56L, 2L, (VECTOR(int32_t, 2))(0x626FBE56L, 2L), (VECTOR(int32_t, 2))(0x626FBE56L, 2L), 0x626FBE56L, 2L, 0x626FBE56L, 2L);
            int8_t *l_117[10][7] = {{&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118},{&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118},{&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118},{&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118},{&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118},{&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118},{&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118},{&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118},{&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118},{&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118,&p_1457->g_118}};
            uint64_t *l_119 = &p_1457->g_113;
            int32_t *l_121[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int i, j;
            for (i = 0; i < 3; i++)
                l_84[i] = &l_56.f0;
            (*p_1457->g_67) ^= (l_65 = (p_1457->g_comm_values[p_1457->tid] > l_56.f0));
            l_86 = (l_56 = ((safe_rshift_func_uint16_t_u_u((l_79 = (p_1457->g_61[2].f0 = ((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 2))(4UL, 0x5A0AL)), ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(l_70.s0656)), ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(mad_sat(((VECTOR(uint16_t, 16))(safe_clamp_func(VECTOR(uint16_t, 16),uint16_t,((VECTOR(uint16_t, 8))(min(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(p_1457->g_71.yyyxzxzyxyxxzxwx)).s66df)).xzxxxxxwyxwwwxwz)).hi)), (uint16_t)(safe_div_func_int16_t_s_s(1L, (safe_mod_func_int64_t_s_s((+p_45), (safe_mod_func_uint64_t_u_u(func_20(func_20(l_78, (*p_43), p_1457), (l_79 ^ ((VECTOR(uint32_t, 2))(0x56AC6DEAL, 4294967295UL)).lo), p_1457), (func_20(p_47, (func_20(((safe_mod_func_uint16_t_u_u((safe_rshift_func_int16_t_s_s(func_20(l_79, l_79, p_1457), l_79)), (-1L))) , p_1457->g_61[2].f0), (*p_43), p_1457) , p_1457->g_7.z), p_1457) | FAKE_DIVERGE(p_1457->group_1_offset, get_group_id(1), 10))))))))))).s2754442617250166, (uint16_t)l_79, (uint16_t)p_1457->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1457->tid, 6))]))).odd, ((VECTOR(uint16_t, 8))(0xF4D6L)), ((VECTOR(uint16_t, 8))(0x785DL))))).even)))).s57)), ((VECTOR(uint16_t, 2))(0xEBB7L))))).lo)), 9)) , l_56));
            (*p_1457->g_67) = ((((p_1457->g_87 = 0x0942L) | ((VECTOR(int16_t, 16))((((VECTOR(uint64_t, 2))(l_88.yy)).lo <= (((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(0x03956885L, 0x7E86750AL)).yyxyxxyyxxxyyyxx, ((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))(l_89.yx)), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(p_1457->g_90.yzxyyzzx)), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_91.yzww)).zwyzxxxx)))).s04, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(l_92.s0c290cea)).even)).odd))).yxyyyyyxyyyxyyxx))).s4 != (safe_div_func_uint64_t_u_u((((*l_119) = func_20((safe_mul_func_uint16_t_u_u((0x34L && (safe_div_func_int16_t_s_s(func_99(l_62, &l_56, &l_65, p_1457), p_1457->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1457->tid, 6))]))), ((safe_unary_minus_func_int8_t_s((p_1457->g_61[2] , (p_45 = p_47)))) && 0x3EL))), l_88.x, p_1457)) <= p_1457->g_118), p_1457->g_118)))), 0L, (-3L), p_1457->g_90.z, 4L, p_1457->g_71.w, ((VECTOR(int16_t, 4))((-2L))), 1L, ((VECTOR(int16_t, 2))(0x40A1L)), (-1L), 0x005CL, 0x56C7L)).s5) ^ p_1457->g_comm_values[p_1457->tid]) || p_47);
            for (p_1457->g_105 = 3; (p_1457->g_105 < 22); p_1457->g_105 = safe_add_func_int32_t_s_s(p_1457->g_105, 3))
            { /* block id: 49 */
                int8_t l_128[1][8] = {{0x53L,0x53L,0x53L,0x53L,0x53L,0x53L,0x53L,0x53L}};
                int32_t l_130 = (-1L);
                int32_t l_131 = 5L;
                int8_t l_133[2][10] = {{0L,(-10L),(-10L),0L,0L,(-10L),(-10L),0L,0L,(-10L)},{0L,(-10L),(-10L),0L,0L,(-10L),(-10L),0L,0L,(-10L)}};
                int32_t l_134 = 0x73E17168L;
                int32_t l_135 = 0L;
                int32_t l_136 = 0x47DF34B8L;
                int32_t l_137 = 0x76F1C910L;
                int32_t l_138 = (-1L);
                int32_t l_139 = 1L;
                VECTOR(int64_t, 2) l_140 = (VECTOR(int64_t, 2))((-1L), 0x5A456930D83E2E9BL);
                int32_t l_141 = 0x3AA71C73L;
                int32_t l_142 = 5L;
                int32_t l_143 = 0L;
                int i, j;
                for (p_1457->g_87 = (-13); (p_1457->g_87 != (-9)); p_1457->g_87++)
                { /* block id: 52 */
                    for (p_1457->g_113 = 1; (p_1457->g_113 < 34); p_1457->g_113++)
                    { /* block id: 55 */
                        (*p_1457->g_67) ^= 0L;
                    }
                    if (l_128[0][0])
                        continue;
                }
                (*p_1457->g_63) |= 0x028E1C96L;
                l_144++;
                l_56 = (*p_1457->g_60);
            }
        }
        else
        { /* block id: 64 */
            uint64_t *l_147 = &p_1457->g_113;
            VECTOR(int64_t, 16) l_155 = (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-4L)), (-4L)), (-4L), 1L, (-4L), (VECTOR(int64_t, 2))(1L, (-4L)), (VECTOR(int64_t, 2))(1L, (-4L)), 1L, (-4L), 1L, (-4L));
            int32_t *l_159 = &l_129[2][0];
            int16_t *l_160 = &p_1457->g_161;
            int8_t *l_162 = &p_1457->g_87;
            VECTOR(int32_t, 16) l_185 = (VECTOR(int32_t, 16))(0x32379F2BL, (VECTOR(int32_t, 4))(0x32379F2BL, (VECTOR(int32_t, 2))(0x32379F2BL, 0x6C4F85D3L), 0x6C4F85D3L), 0x6C4F85D3L, 0x32379F2BL, 0x6C4F85D3L, (VECTOR(int32_t, 2))(0x32379F2BL, 0x6C4F85D3L), (VECTOR(int32_t, 2))(0x32379F2BL, 0x6C4F85D3L), 0x32379F2BL, 0x6C4F85D3L, 0x32379F2BL, 0x6C4F85D3L);
            VECTOR(uint8_t, 4) l_186 = (VECTOR(uint8_t, 4))(0xCFL, (VECTOR(uint8_t, 2))(0xCFL, 7UL), 7UL);
            VECTOR(uint8_t, 16) l_189 = (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0xF9L), 0xF9L), 0xF9L, 255UL, 0xF9L, (VECTOR(uint8_t, 2))(255UL, 0xF9L), (VECTOR(uint8_t, 2))(255UL, 0xF9L), 255UL, 0xF9L, 255UL, 0xF9L);
            VECTOR(uint64_t, 4) l_228 = (VECTOR(uint64_t, 4))(0xF99814021CE862B2L, (VECTOR(uint64_t, 2))(0xF99814021CE862B2L, 0UL), 0UL);
            int i;
            if ((l_91.y > (((((*l_147) &= (p_45 , (!0xBB092F33C9A5DC94L))) < (safe_unary_minus_func_int64_t_s((0xD7153F65C74EEC17L <= (safe_sub_func_int8_t_s_s((0xDFL == 248UL), ((*l_162) |= ((safe_rshift_func_int16_t_s_u(((*l_160) &= (safe_sub_func_int16_t_s_s((+(p_47 , (((*l_159) = ((((VECTOR(int64_t, 2))(l_155.s16)).even , &p_1457->g_61[2]) != ((safe_rshift_func_int16_t_s_s((-1L), l_158)) , &l_86))) && p_45))), p_1457->g_7.x))), p_47)) & p_1457->g_7.w)))))))) > p_1457->g_64) | l_86.f0)))
            { /* block id: 69 */
                int32_t *l_165 = (void*)0;
                int32_t *l_166 = &l_65;
                int64_t l_171 = 4L;
                int i, j;
                (*l_166) ^= ((*l_159) = ((VECTOR(int32_t, 2))(l_163.s68)).odd);
                (*l_159) |= ((*l_166) && p_47);
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                p_1457->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 6)), permutations[(safe_mod_func_uint32_t_u_u((p_1457->g_7.w || (safe_div_func_uint16_t_u_u(((GROUP_DIVERGE(0, 1) == p_47) , (p_1457->g_161 , (safe_mod_func_int32_t_s_s(l_171, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(0x38932FEBL, 0x74AF9581L, 0x354101DEL, 1L)).xyzxywzw)))).s47, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_172.s52)).yxxxyyyxxyyyxxxy)).s77)), ((VECTOR(int32_t, 2))(l_173.sa6))))).xxxxyxyy, ((VECTOR(int32_t, 16))(p_1457->g_174.yxyxxyyyxyyxyxxy)).even))).s37, (int32_t)((((*l_166) |= (((VECTOR(uint32_t, 8))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 4))(add_sat(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(0x52A9FC2AL, 4294967295UL)), (*l_159), (((l_158 && (0UL || ((p_47 < 6L) || 0x3EL))) | (*p_43)) ^ l_175.s5), 8UL, 0x1782DA5EL, 0x53FD60A1L, 1UL)).even)), ((VECTOR(uint32_t, 4))(4UL))))).zzwxwyyw, ((VECTOR(uint32_t, 8))(0UL))))).s7 > 0x6781DF53L)) <= l_70.s0) == 0x6FL)))), 0L, ((VECTOR(int32_t, 8))(0x2F8CABC8L)), ((VECTOR(int32_t, 4))(1L)), 0x3DE21B4AL)).s4)))), p_1457->g_7.z))), 10))][(safe_mod_func_uint32_t_u_u(p_1457->tid, 6))]));
                (*l_159) = (safe_mul_func_uint8_t_u_u((+(safe_sub_func_int64_t_s_s(((VECTOR(int64_t, 2))(p_1457->g_180.s62)).lo, (((0xFEL ^ ((&p_1457->g_118 == &p_1457->g_87) != (safe_rshift_func_int8_t_s_u(p_1457->g_12.f0, FAKE_DIVERGE(p_1457->group_2_offset, get_group_id(2), 10))))) , 0x725A6DD12310BAFBL) | (0x5BL > (safe_sub_func_uint64_t_u_u(p_47, ((p_1457->g_113 >= p_1457->g_161) > FAKE_DIVERGE(p_1457->local_2_offset, get_local_id(2), 10))))))))), 0xE2L));
            }
            else
            { /* block id: 78 */
                int8_t l_193 = 0x5EL;
                VECTOR(int32_t, 4) l_197 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 6L), 6L);
                uint16_t *l_200[4] = {&l_86.f0,&l_86.f0,&l_86.f0,&l_86.f0};
                uint32_t l_201[3];
                int32_t **l_202[8] = {&l_62,&l_62,&l_62,&l_62,&l_62,&l_62,&l_62,&l_62};
                int i;
                for (i = 0; i < 3; i++)
                    l_201[i] = 0x23B8671DL;
                l_62 = (((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 2))(0x1C16D1FCL, 0x72468A31L)).yyxxyxyyxxyyxyxx, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))((-3L), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(1L, ((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 8))(l_185.s2cd95741)).s57, (int32_t)(((VECTOR(uint16_t, 8))(upsample(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(rotate(((VECTOR(uint8_t, 16))(l_186.ywwyzwwywzwyzwzx)).s64c0, ((VECTOR(uint8_t, 16))(0UL, 0UL, ((safe_rshift_func_int8_t_s_s((p_1457->g_118 = (p_47 && ((VECTOR(uint8_t, 8))(hadd(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(l_189.s9e58)), 0xF7L, 0x01L, 0x20L, 1UL)).s1531205014670034)).even, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(l_190.s7037024461320063)).even))))).s4)), (((((p_45 = ((p_1457->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1457->tid, 6))] ^= l_193) >= ((safe_add_func_uint64_t_u_u((*l_159), p_46)) && (((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 4))(p_1457->g_196.wzzx))))), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(5L, ((VECTOR(int32_t, 2))(0x031765ECL, 0x0DC6CEC1L)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_197.xy)).xxxy)), 1L)).s7704103076165777)).sf05a))).hi)).lo , (safe_sub_func_int32_t_s_s(0L, 0x1F761AD2L)))))) <= ((9L && l_173.s0) >= (p_1457->g_61[2].f0 &= GROUP_DIVERGE(1, 1)))) == ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 16))(0x4EL, 0x42L, ((VECTOR(int8_t, 2))((-7L))), 0x01L, p_46, ((VECTOR(int8_t, 8))((-7L))), 0x1FL, (-4L))).s3d0e, ((VECTOR(int8_t, 4))(0L))))).yyyywwzw)).s2) ^ l_56.f0) == p_1457->g_87))) < l_201[0]), ((VECTOR(uint8_t, 8))(255UL)), ((VECTOR(uint8_t, 4))(0x5DL)), 0x3FL)).s8013))).ywzzxwzw)), ((VECTOR(uint8_t, 8))(254UL))))).s0 > GROUP_DIVERGE(1, 1))))), (-6L))), 1L, 0x6E5EA0C8L, (-8L), (-8L), (*l_159), 7L, 0x49143F0AL, 0x750C58BAL, 9L, ((VECTOR(int32_t, 2))(0x42815EC4L)), 0x5C83B2BDL)).s50c7)).yzyzyyzy)).s03)))), 0x761BE1F5L)).odd)).yxxxxxxxxxyxyxyx))).s8 , (void*)0);
            }
            for (p_1457->g_161 = 0; (p_1457->g_161 <= (-15)); p_1457->g_161--)
            { /* block id: 87 */
                uint8_t *l_214 = (void*)0;
                uint8_t *l_215[7][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                uint16_t **l_246[3][2];
                int32_t *l_249[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                uint32_t *l_251 = &p_1457->g_250;
                int i, j;
                for (i = 0; i < 3; i++)
                {
                    for (j = 0; j < 2; j++)
                        l_246[i][j] = &l_244;
                }
                l_172.s7 |= (safe_unary_minus_func_uint8_t_u((safe_add_func_uint64_t_u_u((safe_sub_func_uint32_t_u_u((safe_sub_func_uint32_t_u_u(((safe_lshift_func_int8_t_s_s(((l_129[2][0] = 255UL) >= ((safe_sub_func_uint64_t_u_u(18446744073709551615UL, (safe_div_func_int32_t_s_s(((((VECTOR(uint16_t, 2))(min(((VECTOR(uint16_t, 2))(0UL, 0xBF76L)), (uint16_t)((p_1457->g_comm_values[p_1457->tid] & ((safe_sub_func_int16_t_s_s((((0x06AE05FD4D0D6DFAL < (((VECTOR(int8_t, 4))(0x3AL, ((VECTOR(int8_t, 2))(p_1457->g_222.wx)), 0x03L)).y ^ ((void*)0 == l_223))) | (safe_sub_func_int32_t_s_s((safe_rshift_func_uint8_t_u_s((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(mad_hi(((VECTOR(uint64_t, 16))(safe_clamp_func(VECTOR(uint64_t, 16),VECTOR(uint64_t, 16),((VECTOR(uint64_t, 2))(1UL, 0xFC7A122AFA7A3F08L)).yyxxxxyyxyyxyyxy, ((VECTOR(uint64_t, 2))(0xDBC6972F664FD137L, 2UL)).xyxxyxyxyxyyyxxy, ((VECTOR(uint64_t, 4))(l_228.wwzy)).wzyxwywwwxzxxxww))).s60de, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(safe_clamp_func(VECTOR(uint64_t, 8),uint64_t,((VECTOR(uint64_t, 4))(clz(((VECTOR(uint64_t, 4))(min(((VECTOR(uint64_t, 4))(safe_clamp_func(VECTOR(uint64_t, 4),uint64_t,((VECTOR(uint64_t, 4))(p_1457->g_229.sdf3d)), (uint64_t)(~18446744073709551615UL), (uint64_t)((((safe_div_func_uint32_t_u_u(((*l_251) = (((l_232[4] , ((safe_rshift_func_int8_t_s_s((safe_sub_func_int32_t_s_s(((safe_add_func_uint32_t_u_u(((l_91.y = ((safe_sub_func_int8_t_s_s((((FAKE_DIVERGE(p_1457->global_0_offset, get_global_id(0), 10) > ((p_1457->g_105 = ((safe_rshift_func_uint16_t_u_u((((VECTOR(int16_t, 4))(add_sat(((VECTOR(int16_t, 2))(l_243.yy)).yyyy, ((VECTOR(int16_t, 8))(mul_hi(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(0x1C38L, 1L)))).yyyyxyxy)).s36)), ((p_1457->g_247 = (p_1457->g_245 = l_244)) != (void*)0), p_1457->g_118, 0x4801L, l_173.s3, 9L, 0L)).s4024172246052332)).sfd)).xxxyxxxx, ((VECTOR(int16_t, 8))(0x71B5L))))).hi))).z | l_248[0]), 2)) || p_1457->g_105)) != p_47)) == 0L) & p_46), 0xF6L)) , p_1457->g_229.sd)) != p_1457->g_64), p_1457->g_7.y)) , p_47), l_243.x)), p_1457->g_64)) , 0xC711C35D5C15EBB0L)) , 5UL) == p_1457->g_250)), p_1457->g_180.s2)) | (-8L)) , 0x0EE4L) & FAKE_DIVERGE(p_1457->global_2_offset, get_global_id(2), 10))))), ((VECTOR(uint64_t, 4))(0x86F7CE8DBD7867C1L)))))))).yzzywwyz, (uint64_t)p_47, (uint64_t)6UL))).s71)).xyxy, ((VECTOR(uint64_t, 4))(0x953E8EB306472681L))))))).w | 0x52BB25E8B1424DC6L), p_1457->g_7.w)), p_1457->g_229.s9))) < 0x7227L), p_45)) , p_1457->g_180.sb)) && l_56.f0)))).even != 7L) > p_1457->g_7.z), GROUP_DIVERGE(1, 1))))) >= p_1457->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1457->tid, 6))])), 1)) != p_1457->g_comm_values[p_1457->tid]), 0x03E7C4E6L)), 1L)), p_1457->g_7.x))));
                if (p_46)
                    continue;
            }
            (*l_159) ^= 1L;
        }
        (*p_1457->g_252) = l_70.s3;
    }
    else
    { /* block id: 100 */
        struct S0 *l_258 = &p_1457->g_61[0];
        struct S0 *l_259 = &l_56;
        int16_t *l_265 = (void*)0;
        int16_t *l_266[9][10] = {{&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161},{&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161},{&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161},{&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161},{&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161},{&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161},{&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161},{&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161},{&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161,&p_1457->g_161}};
        uint32_t *l_269 = &p_1457->g_250;
        uint32_t **l_270 = &l_269;
        uint8_t *l_275 = (void*)0;
        uint8_t *l_276 = (void*)0;
        uint8_t *l_277[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t l_278 = (-5L);
        int64_t l_285 = 1L;
        int i, j;
        for (p_1457->g_250 = (-23); (p_1457->g_250 == 41); p_1457->g_250++)
        { /* block id: 103 */
            (*p_1457->g_257) = &l_65;
        }
        (*l_258) = func_54(((*l_259) = ((*l_258) = l_56)), p_1457);
        (*l_259) = (((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(p_1457->g_260.xzwxzwyxzzzxwxxy)).sd702)).zxxxxzxzywwyxyyw)).s4 , (*p_1457->g_60));
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        p_1457->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 6)), permutations[(safe_mod_func_uint32_t_u_u((safe_lshift_func_int8_t_s_s(p_1457->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1457->tid, 6))], (safe_sub_func_int32_t_s_s((6L == (p_1457->g_161 = p_1457->g_61[2].f0)), (safe_mul_func_uint16_t_u_u(((((*l_270) = l_269) == l_271) != (((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 4))((safe_mul_func_uint8_t_u_u(p_46, (l_278 = ((VECTOR(uint8_t, 16))(l_274.s8172701ebb175b46)).s4))), 0x4983D8C4L, 0L, (-1L))).xzzwxxyy, ((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 4))(l_279.sece6)).yzzxywzzywzzzwwy, ((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(p_1457->g_280.s08748ea3)).even)).even)))).xyyyyyxxyyxxxxyx, ((VECTOR(int32_t, 2))(0L, 0L)).yxyxyxyyxyyxxyxx))), ((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 2))(0x210FF5B6L, (-1L))), ((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))((-1L), 0x1D0E7286L, (-8L), (-1L), ((VECTOR(int32_t, 4))((-1L), 1L, 0x7CDD0951L, 7L)))))).hi, ((VECTOR(int32_t, 4))(0L, ((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((*p_1457->g_60) , (safe_lshift_func_uint8_t_u_u((safe_add_func_int32_t_s_s((l_285 == p_1457->g_12.f0), 0x22912218L)), 6))), ((VECTOR(int32_t, 2))(1L)), 0x5C4A208DL)).xywzxwzxxzyzwywy)).s56, ((VECTOR(int32_t, 2))(0L)), ((VECTOR(int32_t, 2))(0L))))), 0L)), ((VECTOR(int32_t, 4))(0x0F3286DAL))))).wxxwwzxxywyxywxy)).odd)), ((VECTOR(int32_t, 8))(0x143FA6C9L))))).s13))).yxxy)).odd)).yxyyxyxy, ((VECTOR(int32_t, 8))(1L))))).s6620176161151353, ((VECTOR(int32_t, 16))(4L)))))))).hi))).s7 == l_285)), 0UL)))))), 10))][(safe_mod_func_uint32_t_u_u(p_1457->tid, 6))]));
    }
    for (l_158 = 21; (l_158 >= 44); l_158 = safe_add_func_int64_t_s_s(l_158, 8))
    { /* block id: 119 */
        int16_t l_292[8][9] = {{0x7254L,0x5799L,0x293EL,0L,0x2C0CL,0x7C6CL,0x7254L,0x1EF9L,0x7601L},{0x7254L,0x5799L,0x293EL,0L,0x2C0CL,0x7C6CL,0x7254L,0x1EF9L,0x7601L},{0x7254L,0x5799L,0x293EL,0L,0x2C0CL,0x7C6CL,0x7254L,0x1EF9L,0x7601L},{0x7254L,0x5799L,0x293EL,0L,0x2C0CL,0x7C6CL,0x7254L,0x1EF9L,0x7601L},{0x7254L,0x5799L,0x293EL,0L,0x2C0CL,0x7C6CL,0x7254L,0x1EF9L,0x7601L},{0x7254L,0x5799L,0x293EL,0L,0x2C0CL,0x7C6CL,0x7254L,0x1EF9L,0x7601L},{0x7254L,0x5799L,0x293EL,0L,0x2C0CL,0x7C6CL,0x7254L,0x1EF9L,0x7601L},{0x7254L,0x5799L,0x293EL,0L,0x2C0CL,0x7C6CL,0x7254L,0x1EF9L,0x7601L}};
        int i, j;
        for (p_45 = (-6); (p_45 > (-10)); p_45 = safe_sub_func_int8_t_s_s(p_45, 3))
        { /* block id: 122 */
            int32_t *l_290 = &p_1457->g_105;
            int32_t *l_291[1];
            int i;
            for (i = 0; i < 1; i++)
                l_291[i] = (void*)0;
            l_292[5][4] ^= ((*l_290) ^= ((*p_1457->g_63) = (!1L)));
        }
    }
    return (**p_44);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
struct S0  func_54(struct S0  p_55, struct S1 * p_1457)
{ /* block id: 13 */
    if ((atomic_inc(&p_1457->l_atomic_input[29]) == 0))
    { /* block id: 15 */
        int32_t *l_57 = (void*)0;
        int32_t l_59 = 0x54F90BF5L;
        int32_t *l_58 = &l_59;
        l_58 = l_57;
        unsigned int result = 0;
        result += l_59;
        atomic_add(&p_1457->l_special_values[29], result);
    }
    else
    { /* block id: 17 */
        (1 + 1);
    }
    return p_55;
}


/* ------------------------------------------ */
/* 
 * reads : p_1457->g_64 p_1457->g_105 p_1457->g_113
 * writes: p_1457->g_64 p_1457->g_105 p_1457->g_113
 */
int16_t  func_99(int32_t * p_100, struct S0 * p_101, int32_t * p_102, struct S1 * p_1457)
{ /* block id: 32 */
    int32_t l_110 = 0L;
    for (p_1457->g_64 = 0; (p_1457->g_64 != 27); p_1457->g_64++)
    { /* block id: 35 */
        uint64_t l_108 = 6UL;
        int32_t *l_109 = &p_1457->g_105;
        int32_t *l_111 = &p_1457->g_105;
        int32_t *l_112[7][4][8] = {{{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&l_110,&p_1457->g_105,(void*)0,&p_1457->g_64,&p_1457->g_105},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&l_110,&p_1457->g_105,(void*)0,&p_1457->g_64,&p_1457->g_105},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&l_110,&p_1457->g_105,(void*)0,&p_1457->g_64,&p_1457->g_105},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&l_110,&p_1457->g_105,(void*)0,&p_1457->g_64,&p_1457->g_105}},{{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&l_110,&p_1457->g_105,(void*)0,&p_1457->g_64,&p_1457->g_105},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&l_110,&p_1457->g_105,(void*)0,&p_1457->g_64,&p_1457->g_105},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&l_110,&p_1457->g_105,(void*)0,&p_1457->g_64,&p_1457->g_105},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&l_110,&p_1457->g_105,(void*)0,&p_1457->g_64,&p_1457->g_105}},{{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&l_110,&p_1457->g_105,(void*)0,&p_1457->g_64,&p_1457->g_105},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&l_110,&p_1457->g_105,(void*)0,&p_1457->g_64,&p_1457->g_105},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&l_110,&p_1457->g_105,(void*)0,&p_1457->g_64,&p_1457->g_105},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&l_110,&p_1457->g_105,(void*)0,&p_1457->g_64,&p_1457->g_105}},{{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&l_110,&p_1457->g_105,(void*)0,&p_1457->g_64,&p_1457->g_105},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&l_110,&p_1457->g_105,(void*)0,&p_1457->g_64,&p_1457->g_105},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&l_110,&p_1457->g_105,(void*)0,&p_1457->g_64,&p_1457->g_105},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&l_110,&p_1457->g_105,(void*)0,&p_1457->g_64,&p_1457->g_105}},{{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&l_110,&p_1457->g_105,(void*)0,&p_1457->g_64,&p_1457->g_105},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&l_110,&p_1457->g_105,(void*)0,&p_1457->g_64,&p_1457->g_105},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&l_110,&p_1457->g_105,(void*)0,&p_1457->g_64,&p_1457->g_105},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&l_110,&p_1457->g_105,(void*)0,&p_1457->g_64,&p_1457->g_105}},{{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&l_110,&p_1457->g_105,(void*)0,&p_1457->g_64,&p_1457->g_105},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&l_110,&p_1457->g_105,(void*)0,&p_1457->g_64,&p_1457->g_105},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&l_110,&p_1457->g_105,(void*)0,&p_1457->g_64,&p_1457->g_105},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&l_110,&p_1457->g_105,(void*)0,&p_1457->g_64,&p_1457->g_105}},{{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&l_110,&p_1457->g_105,(void*)0,&p_1457->g_64,&p_1457->g_105},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&l_110,&p_1457->g_105,(void*)0,&p_1457->g_64,&p_1457->g_105},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&l_110,&p_1457->g_105,(void*)0,&p_1457->g_64,&p_1457->g_105},{&p_1457->g_105,&p_1457->g_105,&p_1457->g_105,&l_110,&p_1457->g_105,(void*)0,&p_1457->g_64,&p_1457->g_105}}};
        int i, j, k;
        for (p_1457->g_105 = 0; (p_1457->g_105 < (-8)); p_1457->g_105--)
        { /* block id: 38 */
            (*p_102) = l_108;
        }
        --p_1457->g_113;
    }
    return l_110;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[43];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 43; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[43];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 43; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[6];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 6; i++)
            l_comm_values[i] = 1;
    struct S1 c_1458;
    struct S1* p_1457 = &c_1458;
    struct S1 c_1459 = {
        (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x294BL), 0x294BL), // p_1457->g_7
        {0x51D5L}, // p_1457->g_12
        (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), (-2L)), (-2L)), (-2L), (-1L), (-2L)), // p_1457->g_28
        {{0x674DL},{0x674DL},{0x674DL}}, // p_1457->g_61
        &p_1457->g_61[2], // p_1457->g_60
        0x01B1D0B8L, // p_1457->g_64
        &p_1457->g_64, // p_1457->g_63
        (void*)0, // p_1457->g_66
        &p_1457->g_64, // p_1457->g_67
        (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 65530UL), 65530UL), // p_1457->g_71
        (-1L), // p_1457->g_87
        (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, 0x29360931L), 0x29360931L), // p_1457->g_90
        0x6DF8401DL, // p_1457->g_105
        0xFCA15F1EE03666D7L, // p_1457->g_113
        0x46L, // p_1457->g_118
        {{&p_1457->g_105},{&p_1457->g_105},{&p_1457->g_105},{&p_1457->g_105},{&p_1457->g_105}}, // p_1457->g_120
        0x6865L, // p_1457->g_161
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1457->g_164
        (VECTOR(int32_t, 2))((-1L), 0x16BE923FL), // p_1457->g_174
        (VECTOR(int64_t, 16))(0x722B7FBFA4616B11L, (VECTOR(int64_t, 4))(0x722B7FBFA4616B11L, (VECTOR(int64_t, 2))(0x722B7FBFA4616B11L, 0x77601C10D48CD837L), 0x77601C10D48CD837L), 0x77601C10D48CD837L, 0x722B7FBFA4616B11L, 0x77601C10D48CD837L, (VECTOR(int64_t, 2))(0x722B7FBFA4616B11L, 0x77601C10D48CD837L), (VECTOR(int64_t, 2))(0x722B7FBFA4616B11L, 0x77601C10D48CD837L), 0x722B7FBFA4616B11L, 0x77601C10D48CD837L, 0x722B7FBFA4616B11L, 0x77601C10D48CD837L), // p_1457->g_180
        (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), (-2L)), (-2L)), // p_1457->g_196
        (VECTOR(int8_t, 4))(0x47L, (VECTOR(int8_t, 2))(0x47L, 0x77L), 0x77L), // p_1457->g_222
        (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL, (VECTOR(uint64_t, 2))(1UL, 0UL), (VECTOR(uint64_t, 2))(1UL, 0UL), 1UL, 0UL, 1UL, 0UL), // p_1457->g_229
        (void*)0, // p_1457->g_245
        &p_1457->g_61[2].f0, // p_1457->g_247
        4294967292UL, // p_1457->g_250
        &p_1457->g_105, // p_1457->g_252
        {{(void*)0,(void*)0,&p_1457->g_64,&p_1457->g_64,&p_1457->g_105},{(void*)0,(void*)0,&p_1457->g_64,&p_1457->g_64,&p_1457->g_105},{(void*)0,(void*)0,&p_1457->g_64,&p_1457->g_64,&p_1457->g_105},{(void*)0,(void*)0,&p_1457->g_64,&p_1457->g_64,&p_1457->g_105},{(void*)0,(void*)0,&p_1457->g_64,&p_1457->g_64,&p_1457->g_105},{(void*)0,(void*)0,&p_1457->g_64,&p_1457->g_64,&p_1457->g_105},{(void*)0,(void*)0,&p_1457->g_64,&p_1457->g_64,&p_1457->g_105},{(void*)0,(void*)0,&p_1457->g_64,&p_1457->g_64,&p_1457->g_105}}, // p_1457->g_256
        {{(void*)0,&p_1457->g_256[7][4]},{(void*)0,&p_1457->g_256[7][4]},{(void*)0,&p_1457->g_256[7][4]},{(void*)0,&p_1457->g_256[7][4]},{(void*)0,&p_1457->g_256[7][4]},{(void*)0,&p_1457->g_256[7][4]},{(void*)0,&p_1457->g_256[7][4]},{(void*)0,&p_1457->g_256[7][4]},{(void*)0,&p_1457->g_256[7][4]},{(void*)0,&p_1457->g_256[7][4]}}, // p_1457->g_255
        &p_1457->g_256[0][1], // p_1457->g_257
        (VECTOR(uint8_t, 4))(0x39L, (VECTOR(uint8_t, 2))(0x39L, 255UL), 255UL), // p_1457->g_260
        (VECTOR(int32_t, 16))(8L, (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, 0x58CAEB62L), 0x58CAEB62L), 0x58CAEB62L, 8L, 0x58CAEB62L, (VECTOR(int32_t, 2))(8L, 0x58CAEB62L), (VECTOR(int32_t, 2))(8L, 0x58CAEB62L), 8L, 0x58CAEB62L, 8L, 0x58CAEB62L), // p_1457->g_280
        &p_1457->g_256[1][1], // p_1457->g_302
        (VECTOR(int32_t, 8))(0x6AEB83C5L, (VECTOR(int32_t, 4))(0x6AEB83C5L, (VECTOR(int32_t, 2))(0x6AEB83C5L, 0x6D8941FDL), 0x6D8941FDL), 0x6D8941FDL, 0x6AEB83C5L, 0x6D8941FDL), // p_1457->g_305
        (void*)0, // p_1457->g_312
        0x94128A38L, // p_1457->g_321
        &p_1457->g_61[2], // p_1457->g_338
        &p_1457->g_256[7][4], // p_1457->g_340
        (void*)0, // p_1457->g_372
        0L, // p_1457->g_398
        &p_1457->g_161, // p_1457->g_440
        {{(void*)0,(void*)0,&p_1457->g_440,&p_1457->g_440,(void*)0,&p_1457->g_440,&p_1457->g_440},{(void*)0,(void*)0,&p_1457->g_440,&p_1457->g_440,(void*)0,&p_1457->g_440,&p_1457->g_440},{(void*)0,(void*)0,&p_1457->g_440,&p_1457->g_440,(void*)0,&p_1457->g_440,&p_1457->g_440}}, // p_1457->g_439
        {&p_1457->g_256[7][0],&p_1457->g_256[7][0],&p_1457->g_256[7][0],&p_1457->g_256[7][0]}, // p_1457->g_478
        &p_1457->g_250, // p_1457->g_490
        (-9L), // p_1457->g_499
        (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-4L)), (-4L)), // p_1457->g_514
        (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x3E86F6B477836B2EL), 0x3E86F6B477836B2EL), 0x3E86F6B477836B2EL, 0L, 0x3E86F6B477836B2EL), // p_1457->g_531
        {1UL}, // p_1457->g_538
        &p_1457->g_538, // p_1457->g_537
        (VECTOR(int8_t, 2))(0x42L, 1L), // p_1457->g_553
        (VECTOR(int16_t, 4))(0x0CE8L, (VECTOR(int16_t, 2))(0x0CE8L, 1L), 1L), // p_1457->g_558
        (VECTOR(uint32_t, 2))(4294967287UL, 4294967295UL), // p_1457->g_562
        (VECTOR(uint32_t, 8))(4294967287UL, (VECTOR(uint32_t, 4))(4294967287UL, (VECTOR(uint32_t, 2))(4294967287UL, 0x3306F22DL), 0x3306F22DL), 0x3306F22DL, 4294967287UL, 0x3306F22DL), // p_1457->g_563
        (VECTOR(int8_t, 8))(0x12L, (VECTOR(int8_t, 4))(0x12L, (VECTOR(int8_t, 2))(0x12L, 0x2FL), 0x2FL), 0x2FL, 0x12L, 0x2FL), // p_1457->g_592
        {0x4782887DDC32D533L,0x46349476C4CA774EL,0x4782887DDC32D533L,0x4782887DDC32D533L,0x46349476C4CA774EL,0x4782887DDC32D533L}, // p_1457->g_595
        &p_1457->g_595[2], // p_1457->g_594
        {&p_1457->g_594,&p_1457->g_594,&p_1457->g_594,&p_1457->g_594,&p_1457->g_594}, // p_1457->g_593
        {&p_1457->g_594,&p_1457->g_594}, // p_1457->g_596
        (VECTOR(int16_t, 4))(0x6FA1L, (VECTOR(int16_t, 2))(0x6FA1L, 1L), 1L), // p_1457->g_605
        (VECTOR(int64_t, 8))(0x0A35BD3F0805EA7DL, (VECTOR(int64_t, 4))(0x0A35BD3F0805EA7DL, (VECTOR(int64_t, 2))(0x0A35BD3F0805EA7DL, 0x256D5C3CFE35F7D0L), 0x256D5C3CFE35F7D0L), 0x256D5C3CFE35F7D0L, 0x0A35BD3F0805EA7DL, 0x256D5C3CFE35F7D0L), // p_1457->g_611
        (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0L), 0L), 0L, 1L, 0L, (VECTOR(int32_t, 2))(1L, 0L), (VECTOR(int32_t, 2))(1L, 0L), 1L, 0L, 1L, 0L), // p_1457->g_636
        (VECTOR(uint16_t, 2))(0x1CFEL, 4UL), // p_1457->g_649
        (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x12723A9EL), 0x12723A9EL), // p_1457->g_711
        (void*)0, // p_1457->g_729
        (void*)0, // p_1457->g_741
        &p_1457->g_741, // p_1457->g_740
        &p_1457->g_740, // p_1457->g_739
        &p_1457->g_256[7][4], // p_1457->g_862
        &p_1457->g_256[4][3], // p_1457->g_870
        {&p_1457->g_256[3][1],&p_1457->g_256[5][1],&p_1457->g_256[2][4],&p_1457->g_256[5][1],&p_1457->g_256[3][1],&p_1457->g_256[3][1],&p_1457->g_256[5][1],&p_1457->g_256[2][4],&p_1457->g_256[5][1],&p_1457->g_256[3][1]}, // p_1457->g_873
        &p_1457->g_64, // p_1457->g_928
        0L, // p_1457->g_938
        (VECTOR(uint64_t, 8))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL), // p_1457->g_942
        {{0x42C5L,0x42C5L},{0x42C5L,0x42C5L},{0x42C5L,0x42C5L},{0x42C5L,0x42C5L},{0x42C5L,0x42C5L},{0x42C5L,0x42C5L},{0x42C5L,0x42C5L},{0x42C5L,0x42C5L},{0x42C5L,0x42C5L},{0x42C5L,0x42C5L}}, // p_1457->g_954
        (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x707A3A70L), 0x707A3A70L), 0x707A3A70L, 0L, 0x707A3A70L, (VECTOR(int32_t, 2))(0L, 0x707A3A70L), (VECTOR(int32_t, 2))(0L, 0x707A3A70L), 0L, 0x707A3A70L, 0L, 0x707A3A70L), // p_1457->g_984
        (VECTOR(int32_t, 8))(0x356BF749L, (VECTOR(int32_t, 4))(0x356BF749L, (VECTOR(int32_t, 2))(0x356BF749L, 0x313D7150L), 0x313D7150L), 0x313D7150L, 0x356BF749L, 0x313D7150L), // p_1457->g_985
        (VECTOR(uint16_t, 8))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 65530UL), 65530UL), 65530UL, 65535UL, 65530UL), // p_1457->g_989
        {{{&p_1457->g_61[0],&p_1457->g_538,&p_1457->g_61[1],&p_1457->g_538},{&p_1457->g_61[0],&p_1457->g_538,&p_1457->g_61[1],&p_1457->g_538},{&p_1457->g_61[0],&p_1457->g_538,&p_1457->g_61[1],&p_1457->g_538},{&p_1457->g_61[0],&p_1457->g_538,&p_1457->g_61[1],&p_1457->g_538},{&p_1457->g_61[0],&p_1457->g_538,&p_1457->g_61[1],&p_1457->g_538},{&p_1457->g_61[0],&p_1457->g_538,&p_1457->g_61[1],&p_1457->g_538},{&p_1457->g_61[0],&p_1457->g_538,&p_1457->g_61[1],&p_1457->g_538}},{{&p_1457->g_61[0],&p_1457->g_538,&p_1457->g_61[1],&p_1457->g_538},{&p_1457->g_61[0],&p_1457->g_538,&p_1457->g_61[1],&p_1457->g_538},{&p_1457->g_61[0],&p_1457->g_538,&p_1457->g_61[1],&p_1457->g_538},{&p_1457->g_61[0],&p_1457->g_538,&p_1457->g_61[1],&p_1457->g_538},{&p_1457->g_61[0],&p_1457->g_538,&p_1457->g_61[1],&p_1457->g_538},{&p_1457->g_61[0],&p_1457->g_538,&p_1457->g_61[1],&p_1457->g_538},{&p_1457->g_61[0],&p_1457->g_538,&p_1457->g_61[1],&p_1457->g_538}},{{&p_1457->g_61[0],&p_1457->g_538,&p_1457->g_61[1],&p_1457->g_538},{&p_1457->g_61[0],&p_1457->g_538,&p_1457->g_61[1],&p_1457->g_538},{&p_1457->g_61[0],&p_1457->g_538,&p_1457->g_61[1],&p_1457->g_538},{&p_1457->g_61[0],&p_1457->g_538,&p_1457->g_61[1],&p_1457->g_538},{&p_1457->g_61[0],&p_1457->g_538,&p_1457->g_61[1],&p_1457->g_538},{&p_1457->g_61[0],&p_1457->g_538,&p_1457->g_61[1],&p_1457->g_538},{&p_1457->g_61[0],&p_1457->g_538,&p_1457->g_61[1],&p_1457->g_538}},{{&p_1457->g_61[0],&p_1457->g_538,&p_1457->g_61[1],&p_1457->g_538},{&p_1457->g_61[0],&p_1457->g_538,&p_1457->g_61[1],&p_1457->g_538},{&p_1457->g_61[0],&p_1457->g_538,&p_1457->g_61[1],&p_1457->g_538},{&p_1457->g_61[0],&p_1457->g_538,&p_1457->g_61[1],&p_1457->g_538},{&p_1457->g_61[0],&p_1457->g_538,&p_1457->g_61[1],&p_1457->g_538},{&p_1457->g_61[0],&p_1457->g_538,&p_1457->g_61[1],&p_1457->g_538},{&p_1457->g_61[0],&p_1457->g_538,&p_1457->g_61[1],&p_1457->g_538}}}, // p_1457->g_1000
        (VECTOR(uint16_t, 4))(0xF32DL, (VECTOR(uint16_t, 2))(0xF32DL, 0UL), 0UL), // p_1457->g_1017
        (VECTOR(uint16_t, 8))(0x7DB2L, (VECTOR(uint16_t, 4))(0x7DB2L, (VECTOR(uint16_t, 2))(0x7DB2L, 0x1C56L), 0x1C56L), 0x1C56L, 0x7DB2L, 0x1C56L), // p_1457->g_1022
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_1457->g_1057
        &p_1457->g_256[7][4], // p_1457->g_1058
        &p_1457->g_256[0][4], // p_1457->g_1082
        (VECTOR(uint32_t, 2))(4294967288UL, 1UL), // p_1457->g_1083
        (VECTOR(int64_t, 2))(0x05C3D481846D5C11L, 0x0908B70427DADA36L), // p_1457->g_1084
        (VECTOR(int32_t, 16))(6L, (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, (-6L)), (-6L)), (-6L), 6L, (-6L), (VECTOR(int32_t, 2))(6L, (-6L)), (VECTOR(int32_t, 2))(6L, (-6L)), 6L, (-6L), 6L, (-6L)), // p_1457->g_1089
        0x564E0FE6L, // p_1457->g_1092
        (VECTOR(uint32_t, 2))(0xF129ADDAL, 0xA5101DCCL), // p_1457->g_1097
        (VECTOR(uint32_t, 2))(1UL, 0UL), // p_1457->g_1102
        (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0xD135688FL), 0xD135688FL), 0xD135688FL, 1UL, 0xD135688FL), // p_1457->g_1103
        (VECTOR(int8_t, 16))(0x64L, (VECTOR(int8_t, 4))(0x64L, (VECTOR(int8_t, 2))(0x64L, 0x26L), 0x26L), 0x26L, 0x64L, 0x26L, (VECTOR(int8_t, 2))(0x64L, 0x26L), (VECTOR(int8_t, 2))(0x64L, 0x26L), 0x64L, 0x26L, 0x64L, 0x26L), // p_1457->g_1127
        (VECTOR(int32_t, 8))(0x73A2540BL, (VECTOR(int32_t, 4))(0x73A2540BL, (VECTOR(int32_t, 2))(0x73A2540BL, 4L), 4L), 4L, 0x73A2540BL, 4L), // p_1457->g_1128
        (VECTOR(int8_t, 8))(9L, (VECTOR(int8_t, 4))(9L, (VECTOR(int8_t, 2))(9L, 1L), 1L), 1L, 9L, 1L), // p_1457->g_1154
        (void*)0, // p_1457->g_1166
        (VECTOR(int64_t, 8))(3L, (VECTOR(int64_t, 4))(3L, (VECTOR(int64_t, 2))(3L, (-1L)), (-1L)), (-1L), 3L, (-1L)), // p_1457->g_1175
        (VECTOR(int64_t, 8))(0x465284EEBB693DC5L, (VECTOR(int64_t, 4))(0x465284EEBB693DC5L, (VECTOR(int64_t, 2))(0x465284EEBB693DC5L, 5L), 5L), 5L, 0x465284EEBB693DC5L, 5L), // p_1457->g_1177
        (VECTOR(int16_t, 8))(0x4F18L, (VECTOR(int16_t, 4))(0x4F18L, (VECTOR(int16_t, 2))(0x4F18L, 0x198CL), 0x198CL), 0x198CL, 0x4F18L, 0x198CL), // p_1457->g_1179
        (VECTOR(uint16_t, 16))(0x519AL, (VECTOR(uint16_t, 4))(0x519AL, (VECTOR(uint16_t, 2))(0x519AL, 3UL), 3UL), 3UL, 0x519AL, 3UL, (VECTOR(uint16_t, 2))(0x519AL, 3UL), (VECTOR(uint16_t, 2))(0x519AL, 3UL), 0x519AL, 3UL, 0x519AL, 3UL), // p_1457->g_1181
        (VECTOR(int32_t, 2))(2L, 0x14412DB4L), // p_1457->g_1182
        (VECTOR(int32_t, 2))(0L, 0x10769073L), // p_1457->g_1183
        (VECTOR(uint64_t, 2))(8UL, 1UL), // p_1457->g_1191
        (-1L), // p_1457->g_1214
        (VECTOR(int8_t, 16))(0x62L, (VECTOR(int8_t, 4))(0x62L, (VECTOR(int8_t, 2))(0x62L, (-3L)), (-3L)), (-3L), 0x62L, (-3L), (VECTOR(int8_t, 2))(0x62L, (-3L)), (VECTOR(int8_t, 2))(0x62L, (-3L)), 0x62L, (-3L), 0x62L, (-3L)), // p_1457->g_1217
        (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 8L), 8L), // p_1457->g_1250
        0x786832D3L, // p_1457->g_1275
        (VECTOR(int8_t, 2))(8L, 0x41L), // p_1457->g_1277
        {{0xAA7B993DL,0xDF381C0CL,0xAA7B993DL,0xAA7B993DL,0xDF381C0CL,0xAA7B993DL,0xAA7B993DL,0xDF381C0CL,0xAA7B993DL},{0xAA7B993DL,0xDF381C0CL,0xAA7B993DL,0xAA7B993DL,0xDF381C0CL,0xAA7B993DL,0xAA7B993DL,0xDF381C0CL,0xAA7B993DL},{0xAA7B993DL,0xDF381C0CL,0xAA7B993DL,0xAA7B993DL,0xDF381C0CL,0xAA7B993DL,0xAA7B993DL,0xDF381C0CL,0xAA7B993DL},{0xAA7B993DL,0xDF381C0CL,0xAA7B993DL,0xAA7B993DL,0xDF381C0CL,0xAA7B993DL,0xAA7B993DL,0xDF381C0CL,0xAA7B993DL},{0xAA7B993DL,0xDF381C0CL,0xAA7B993DL,0xAA7B993DL,0xDF381C0CL,0xAA7B993DL,0xAA7B993DL,0xDF381C0CL,0xAA7B993DL},{0xAA7B993DL,0xDF381C0CL,0xAA7B993DL,0xAA7B993DL,0xDF381C0CL,0xAA7B993DL,0xAA7B993DL,0xDF381C0CL,0xAA7B993DL},{0xAA7B993DL,0xDF381C0CL,0xAA7B993DL,0xAA7B993DL,0xDF381C0CL,0xAA7B993DL,0xAA7B993DL,0xDF381C0CL,0xAA7B993DL}}, // p_1457->g_1283
        (void*)0, // p_1457->g_1289
        &p_1457->g_538, // p_1457->g_1292
        &p_1457->g_113, // p_1457->g_1297
        0x30D3169EL, // p_1457->g_1312
        {{0UL,0x48L,0x95L,0x82L,0x95L,0x48L,0UL,0xB0L,1UL,1UL},{0UL,0x48L,0x95L,0x82L,0x95L,0x48L,0UL,0xB0L,1UL,1UL},{0UL,0x48L,0x95L,0x82L,0x95L,0x48L,0UL,0xB0L,1UL,1UL},{0UL,0x48L,0x95L,0x82L,0x95L,0x48L,0UL,0xB0L,1UL,1UL},{0UL,0x48L,0x95L,0x82L,0x95L,0x48L,0UL,0xB0L,1UL,1UL},{0UL,0x48L,0x95L,0x82L,0x95L,0x48L,0UL,0xB0L,1UL,1UL}}, // p_1457->g_1319
        &p_1457->g_1319[5][9], // p_1457->g_1318
        (void*)0, // p_1457->g_1363
        {&p_1457->g_1363,&p_1457->g_1363,&p_1457->g_1363,&p_1457->g_1363,&p_1457->g_1363,&p_1457->g_1363,&p_1457->g_1363,&p_1457->g_1363,&p_1457->g_1363,&p_1457->g_1363}, // p_1457->g_1362
        (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x4482L), 0x4482L), 0x4482L, 1L, 0x4482L, (VECTOR(int16_t, 2))(1L, 0x4482L), (VECTOR(int16_t, 2))(1L, 0x4482L), 1L, 0x4482L, 1L, 0x4482L), // p_1457->g_1375
        (void*)0, // p_1457->g_1399
        (VECTOR(uint16_t, 2))(0xC844L, 0xB77EL), // p_1457->g_1404
        (VECTOR(int64_t, 8))(0x5ABFB6441D656F16L, (VECTOR(int64_t, 4))(0x5ABFB6441D656F16L, (VECTOR(int64_t, 2))(0x5ABFB6441D656F16L, 0x7B2C5F4114B805F7L), 0x7B2C5F4114B805F7L), 0x7B2C5F4114B805F7L, 0x5ABFB6441D656F16L, 0x7B2C5F4114B805F7L), // p_1457->g_1405
        (VECTOR(int64_t, 8))(0x25706A74FE172F19L, (VECTOR(int64_t, 4))(0x25706A74FE172F19L, (VECTOR(int64_t, 2))(0x25706A74FE172F19L, 0x4CE008E559B3B6ECL), 0x4CE008E559B3B6ECL), 0x4CE008E559B3B6ECL, 0x25706A74FE172F19L, 0x4CE008E559B3B6ECL), // p_1457->g_1407
        (void*)0, // p_1457->g_1424
        (VECTOR(uint32_t, 2))(0UL, 0x7EFCE43DL), // p_1457->g_1430
        (VECTOR(uint32_t, 2))(4294967289UL, 0x7B877FB0L), // p_1457->g_1432
        0, // p_1457->v_collective
        sequence_input[get_global_id(0)], // p_1457->global_0_offset
        sequence_input[get_global_id(1)], // p_1457->global_1_offset
        sequence_input[get_global_id(2)], // p_1457->global_2_offset
        sequence_input[get_local_id(0)], // p_1457->local_0_offset
        sequence_input[get_local_id(1)], // p_1457->local_1_offset
        sequence_input[get_local_id(2)], // p_1457->local_2_offset
        sequence_input[get_group_id(0)], // p_1457->group_0_offset
        sequence_input[get_group_id(1)], // p_1457->group_1_offset
        sequence_input[get_group_id(2)], // p_1457->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 6)), permutations[0][get_linear_local_id()])), // p_1457->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1458 = c_1459;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1457);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1457->g_7.x, "p_1457->g_7.x", print_hash_value);
    transparent_crc(p_1457->g_7.y, "p_1457->g_7.y", print_hash_value);
    transparent_crc(p_1457->g_7.z, "p_1457->g_7.z", print_hash_value);
    transparent_crc(p_1457->g_7.w, "p_1457->g_7.w", print_hash_value);
    transparent_crc(p_1457->g_12.f0, "p_1457->g_12.f0", print_hash_value);
    transparent_crc(p_1457->g_28.s0, "p_1457->g_28.s0", print_hash_value);
    transparent_crc(p_1457->g_28.s1, "p_1457->g_28.s1", print_hash_value);
    transparent_crc(p_1457->g_28.s2, "p_1457->g_28.s2", print_hash_value);
    transparent_crc(p_1457->g_28.s3, "p_1457->g_28.s3", print_hash_value);
    transparent_crc(p_1457->g_28.s4, "p_1457->g_28.s4", print_hash_value);
    transparent_crc(p_1457->g_28.s5, "p_1457->g_28.s5", print_hash_value);
    transparent_crc(p_1457->g_28.s6, "p_1457->g_28.s6", print_hash_value);
    transparent_crc(p_1457->g_28.s7, "p_1457->g_28.s7", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1457->g_61[i].f0, "p_1457->g_61[i].f0", print_hash_value);

    }
    transparent_crc(p_1457->g_64, "p_1457->g_64", print_hash_value);
    transparent_crc(p_1457->g_71.x, "p_1457->g_71.x", print_hash_value);
    transparent_crc(p_1457->g_71.y, "p_1457->g_71.y", print_hash_value);
    transparent_crc(p_1457->g_71.z, "p_1457->g_71.z", print_hash_value);
    transparent_crc(p_1457->g_71.w, "p_1457->g_71.w", print_hash_value);
    transparent_crc(p_1457->g_87, "p_1457->g_87", print_hash_value);
    transparent_crc(p_1457->g_90.x, "p_1457->g_90.x", print_hash_value);
    transparent_crc(p_1457->g_90.y, "p_1457->g_90.y", print_hash_value);
    transparent_crc(p_1457->g_90.z, "p_1457->g_90.z", print_hash_value);
    transparent_crc(p_1457->g_90.w, "p_1457->g_90.w", print_hash_value);
    transparent_crc(p_1457->g_105, "p_1457->g_105", print_hash_value);
    transparent_crc(p_1457->g_113, "p_1457->g_113", print_hash_value);
    transparent_crc(p_1457->g_118, "p_1457->g_118", print_hash_value);
    transparent_crc(p_1457->g_161, "p_1457->g_161", print_hash_value);
    transparent_crc(p_1457->g_174.x, "p_1457->g_174.x", print_hash_value);
    transparent_crc(p_1457->g_174.y, "p_1457->g_174.y", print_hash_value);
    transparent_crc(p_1457->g_180.s0, "p_1457->g_180.s0", print_hash_value);
    transparent_crc(p_1457->g_180.s1, "p_1457->g_180.s1", print_hash_value);
    transparent_crc(p_1457->g_180.s2, "p_1457->g_180.s2", print_hash_value);
    transparent_crc(p_1457->g_180.s3, "p_1457->g_180.s3", print_hash_value);
    transparent_crc(p_1457->g_180.s4, "p_1457->g_180.s4", print_hash_value);
    transparent_crc(p_1457->g_180.s5, "p_1457->g_180.s5", print_hash_value);
    transparent_crc(p_1457->g_180.s6, "p_1457->g_180.s6", print_hash_value);
    transparent_crc(p_1457->g_180.s7, "p_1457->g_180.s7", print_hash_value);
    transparent_crc(p_1457->g_180.s8, "p_1457->g_180.s8", print_hash_value);
    transparent_crc(p_1457->g_180.s9, "p_1457->g_180.s9", print_hash_value);
    transparent_crc(p_1457->g_180.sa, "p_1457->g_180.sa", print_hash_value);
    transparent_crc(p_1457->g_180.sb, "p_1457->g_180.sb", print_hash_value);
    transparent_crc(p_1457->g_180.sc, "p_1457->g_180.sc", print_hash_value);
    transparent_crc(p_1457->g_180.sd, "p_1457->g_180.sd", print_hash_value);
    transparent_crc(p_1457->g_180.se, "p_1457->g_180.se", print_hash_value);
    transparent_crc(p_1457->g_180.sf, "p_1457->g_180.sf", print_hash_value);
    transparent_crc(p_1457->g_196.x, "p_1457->g_196.x", print_hash_value);
    transparent_crc(p_1457->g_196.y, "p_1457->g_196.y", print_hash_value);
    transparent_crc(p_1457->g_196.z, "p_1457->g_196.z", print_hash_value);
    transparent_crc(p_1457->g_196.w, "p_1457->g_196.w", print_hash_value);
    transparent_crc(p_1457->g_222.x, "p_1457->g_222.x", print_hash_value);
    transparent_crc(p_1457->g_222.y, "p_1457->g_222.y", print_hash_value);
    transparent_crc(p_1457->g_222.z, "p_1457->g_222.z", print_hash_value);
    transparent_crc(p_1457->g_222.w, "p_1457->g_222.w", print_hash_value);
    transparent_crc(p_1457->g_229.s0, "p_1457->g_229.s0", print_hash_value);
    transparent_crc(p_1457->g_229.s1, "p_1457->g_229.s1", print_hash_value);
    transparent_crc(p_1457->g_229.s2, "p_1457->g_229.s2", print_hash_value);
    transparent_crc(p_1457->g_229.s3, "p_1457->g_229.s3", print_hash_value);
    transparent_crc(p_1457->g_229.s4, "p_1457->g_229.s4", print_hash_value);
    transparent_crc(p_1457->g_229.s5, "p_1457->g_229.s5", print_hash_value);
    transparent_crc(p_1457->g_229.s6, "p_1457->g_229.s6", print_hash_value);
    transparent_crc(p_1457->g_229.s7, "p_1457->g_229.s7", print_hash_value);
    transparent_crc(p_1457->g_229.s8, "p_1457->g_229.s8", print_hash_value);
    transparent_crc(p_1457->g_229.s9, "p_1457->g_229.s9", print_hash_value);
    transparent_crc(p_1457->g_229.sa, "p_1457->g_229.sa", print_hash_value);
    transparent_crc(p_1457->g_229.sb, "p_1457->g_229.sb", print_hash_value);
    transparent_crc(p_1457->g_229.sc, "p_1457->g_229.sc", print_hash_value);
    transparent_crc(p_1457->g_229.sd, "p_1457->g_229.sd", print_hash_value);
    transparent_crc(p_1457->g_229.se, "p_1457->g_229.se", print_hash_value);
    transparent_crc(p_1457->g_229.sf, "p_1457->g_229.sf", print_hash_value);
    transparent_crc(p_1457->g_250, "p_1457->g_250", print_hash_value);
    transparent_crc(p_1457->g_260.x, "p_1457->g_260.x", print_hash_value);
    transparent_crc(p_1457->g_260.y, "p_1457->g_260.y", print_hash_value);
    transparent_crc(p_1457->g_260.z, "p_1457->g_260.z", print_hash_value);
    transparent_crc(p_1457->g_260.w, "p_1457->g_260.w", print_hash_value);
    transparent_crc(p_1457->g_280.s0, "p_1457->g_280.s0", print_hash_value);
    transparent_crc(p_1457->g_280.s1, "p_1457->g_280.s1", print_hash_value);
    transparent_crc(p_1457->g_280.s2, "p_1457->g_280.s2", print_hash_value);
    transparent_crc(p_1457->g_280.s3, "p_1457->g_280.s3", print_hash_value);
    transparent_crc(p_1457->g_280.s4, "p_1457->g_280.s4", print_hash_value);
    transparent_crc(p_1457->g_280.s5, "p_1457->g_280.s5", print_hash_value);
    transparent_crc(p_1457->g_280.s6, "p_1457->g_280.s6", print_hash_value);
    transparent_crc(p_1457->g_280.s7, "p_1457->g_280.s7", print_hash_value);
    transparent_crc(p_1457->g_280.s8, "p_1457->g_280.s8", print_hash_value);
    transparent_crc(p_1457->g_280.s9, "p_1457->g_280.s9", print_hash_value);
    transparent_crc(p_1457->g_280.sa, "p_1457->g_280.sa", print_hash_value);
    transparent_crc(p_1457->g_280.sb, "p_1457->g_280.sb", print_hash_value);
    transparent_crc(p_1457->g_280.sc, "p_1457->g_280.sc", print_hash_value);
    transparent_crc(p_1457->g_280.sd, "p_1457->g_280.sd", print_hash_value);
    transparent_crc(p_1457->g_280.se, "p_1457->g_280.se", print_hash_value);
    transparent_crc(p_1457->g_280.sf, "p_1457->g_280.sf", print_hash_value);
    transparent_crc(p_1457->g_305.s0, "p_1457->g_305.s0", print_hash_value);
    transparent_crc(p_1457->g_305.s1, "p_1457->g_305.s1", print_hash_value);
    transparent_crc(p_1457->g_305.s2, "p_1457->g_305.s2", print_hash_value);
    transparent_crc(p_1457->g_305.s3, "p_1457->g_305.s3", print_hash_value);
    transparent_crc(p_1457->g_305.s4, "p_1457->g_305.s4", print_hash_value);
    transparent_crc(p_1457->g_305.s5, "p_1457->g_305.s5", print_hash_value);
    transparent_crc(p_1457->g_305.s6, "p_1457->g_305.s6", print_hash_value);
    transparent_crc(p_1457->g_305.s7, "p_1457->g_305.s7", print_hash_value);
    transparent_crc(p_1457->g_321, "p_1457->g_321", print_hash_value);
    transparent_crc(p_1457->g_398, "p_1457->g_398", print_hash_value);
    transparent_crc(p_1457->g_499, "p_1457->g_499", print_hash_value);
    transparent_crc(p_1457->g_514.x, "p_1457->g_514.x", print_hash_value);
    transparent_crc(p_1457->g_514.y, "p_1457->g_514.y", print_hash_value);
    transparent_crc(p_1457->g_514.z, "p_1457->g_514.z", print_hash_value);
    transparent_crc(p_1457->g_514.w, "p_1457->g_514.w", print_hash_value);
    transparent_crc(p_1457->g_531.s0, "p_1457->g_531.s0", print_hash_value);
    transparent_crc(p_1457->g_531.s1, "p_1457->g_531.s1", print_hash_value);
    transparent_crc(p_1457->g_531.s2, "p_1457->g_531.s2", print_hash_value);
    transparent_crc(p_1457->g_531.s3, "p_1457->g_531.s3", print_hash_value);
    transparent_crc(p_1457->g_531.s4, "p_1457->g_531.s4", print_hash_value);
    transparent_crc(p_1457->g_531.s5, "p_1457->g_531.s5", print_hash_value);
    transparent_crc(p_1457->g_531.s6, "p_1457->g_531.s6", print_hash_value);
    transparent_crc(p_1457->g_531.s7, "p_1457->g_531.s7", print_hash_value);
    transparent_crc(p_1457->g_538.f0, "p_1457->g_538.f0", print_hash_value);
    transparent_crc(p_1457->g_553.x, "p_1457->g_553.x", print_hash_value);
    transparent_crc(p_1457->g_553.y, "p_1457->g_553.y", print_hash_value);
    transparent_crc(p_1457->g_558.x, "p_1457->g_558.x", print_hash_value);
    transparent_crc(p_1457->g_558.y, "p_1457->g_558.y", print_hash_value);
    transparent_crc(p_1457->g_558.z, "p_1457->g_558.z", print_hash_value);
    transparent_crc(p_1457->g_558.w, "p_1457->g_558.w", print_hash_value);
    transparent_crc(p_1457->g_562.x, "p_1457->g_562.x", print_hash_value);
    transparent_crc(p_1457->g_562.y, "p_1457->g_562.y", print_hash_value);
    transparent_crc(p_1457->g_563.s0, "p_1457->g_563.s0", print_hash_value);
    transparent_crc(p_1457->g_563.s1, "p_1457->g_563.s1", print_hash_value);
    transparent_crc(p_1457->g_563.s2, "p_1457->g_563.s2", print_hash_value);
    transparent_crc(p_1457->g_563.s3, "p_1457->g_563.s3", print_hash_value);
    transparent_crc(p_1457->g_563.s4, "p_1457->g_563.s4", print_hash_value);
    transparent_crc(p_1457->g_563.s5, "p_1457->g_563.s5", print_hash_value);
    transparent_crc(p_1457->g_563.s6, "p_1457->g_563.s6", print_hash_value);
    transparent_crc(p_1457->g_563.s7, "p_1457->g_563.s7", print_hash_value);
    transparent_crc(p_1457->g_592.s0, "p_1457->g_592.s0", print_hash_value);
    transparent_crc(p_1457->g_592.s1, "p_1457->g_592.s1", print_hash_value);
    transparent_crc(p_1457->g_592.s2, "p_1457->g_592.s2", print_hash_value);
    transparent_crc(p_1457->g_592.s3, "p_1457->g_592.s3", print_hash_value);
    transparent_crc(p_1457->g_592.s4, "p_1457->g_592.s4", print_hash_value);
    transparent_crc(p_1457->g_592.s5, "p_1457->g_592.s5", print_hash_value);
    transparent_crc(p_1457->g_592.s6, "p_1457->g_592.s6", print_hash_value);
    transparent_crc(p_1457->g_592.s7, "p_1457->g_592.s7", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1457->g_595[i], "p_1457->g_595[i]", print_hash_value);

    }
    transparent_crc(p_1457->g_605.x, "p_1457->g_605.x", print_hash_value);
    transparent_crc(p_1457->g_605.y, "p_1457->g_605.y", print_hash_value);
    transparent_crc(p_1457->g_605.z, "p_1457->g_605.z", print_hash_value);
    transparent_crc(p_1457->g_605.w, "p_1457->g_605.w", print_hash_value);
    transparent_crc(p_1457->g_611.s0, "p_1457->g_611.s0", print_hash_value);
    transparent_crc(p_1457->g_611.s1, "p_1457->g_611.s1", print_hash_value);
    transparent_crc(p_1457->g_611.s2, "p_1457->g_611.s2", print_hash_value);
    transparent_crc(p_1457->g_611.s3, "p_1457->g_611.s3", print_hash_value);
    transparent_crc(p_1457->g_611.s4, "p_1457->g_611.s4", print_hash_value);
    transparent_crc(p_1457->g_611.s5, "p_1457->g_611.s5", print_hash_value);
    transparent_crc(p_1457->g_611.s6, "p_1457->g_611.s6", print_hash_value);
    transparent_crc(p_1457->g_611.s7, "p_1457->g_611.s7", print_hash_value);
    transparent_crc(p_1457->g_636.s0, "p_1457->g_636.s0", print_hash_value);
    transparent_crc(p_1457->g_636.s1, "p_1457->g_636.s1", print_hash_value);
    transparent_crc(p_1457->g_636.s2, "p_1457->g_636.s2", print_hash_value);
    transparent_crc(p_1457->g_636.s3, "p_1457->g_636.s3", print_hash_value);
    transparent_crc(p_1457->g_636.s4, "p_1457->g_636.s4", print_hash_value);
    transparent_crc(p_1457->g_636.s5, "p_1457->g_636.s5", print_hash_value);
    transparent_crc(p_1457->g_636.s6, "p_1457->g_636.s6", print_hash_value);
    transparent_crc(p_1457->g_636.s7, "p_1457->g_636.s7", print_hash_value);
    transparent_crc(p_1457->g_636.s8, "p_1457->g_636.s8", print_hash_value);
    transparent_crc(p_1457->g_636.s9, "p_1457->g_636.s9", print_hash_value);
    transparent_crc(p_1457->g_636.sa, "p_1457->g_636.sa", print_hash_value);
    transparent_crc(p_1457->g_636.sb, "p_1457->g_636.sb", print_hash_value);
    transparent_crc(p_1457->g_636.sc, "p_1457->g_636.sc", print_hash_value);
    transparent_crc(p_1457->g_636.sd, "p_1457->g_636.sd", print_hash_value);
    transparent_crc(p_1457->g_636.se, "p_1457->g_636.se", print_hash_value);
    transparent_crc(p_1457->g_636.sf, "p_1457->g_636.sf", print_hash_value);
    transparent_crc(p_1457->g_649.x, "p_1457->g_649.x", print_hash_value);
    transparent_crc(p_1457->g_649.y, "p_1457->g_649.y", print_hash_value);
    transparent_crc(p_1457->g_711.x, "p_1457->g_711.x", print_hash_value);
    transparent_crc(p_1457->g_711.y, "p_1457->g_711.y", print_hash_value);
    transparent_crc(p_1457->g_711.z, "p_1457->g_711.z", print_hash_value);
    transparent_crc(p_1457->g_711.w, "p_1457->g_711.w", print_hash_value);
    transparent_crc(p_1457->g_938, "p_1457->g_938", print_hash_value);
    transparent_crc(p_1457->g_942.s0, "p_1457->g_942.s0", print_hash_value);
    transparent_crc(p_1457->g_942.s1, "p_1457->g_942.s1", print_hash_value);
    transparent_crc(p_1457->g_942.s2, "p_1457->g_942.s2", print_hash_value);
    transparent_crc(p_1457->g_942.s3, "p_1457->g_942.s3", print_hash_value);
    transparent_crc(p_1457->g_942.s4, "p_1457->g_942.s4", print_hash_value);
    transparent_crc(p_1457->g_942.s5, "p_1457->g_942.s5", print_hash_value);
    transparent_crc(p_1457->g_942.s6, "p_1457->g_942.s6", print_hash_value);
    transparent_crc(p_1457->g_942.s7, "p_1457->g_942.s7", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1457->g_954[i][j], "p_1457->g_954[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1457->g_984.s0, "p_1457->g_984.s0", print_hash_value);
    transparent_crc(p_1457->g_984.s1, "p_1457->g_984.s1", print_hash_value);
    transparent_crc(p_1457->g_984.s2, "p_1457->g_984.s2", print_hash_value);
    transparent_crc(p_1457->g_984.s3, "p_1457->g_984.s3", print_hash_value);
    transparent_crc(p_1457->g_984.s4, "p_1457->g_984.s4", print_hash_value);
    transparent_crc(p_1457->g_984.s5, "p_1457->g_984.s5", print_hash_value);
    transparent_crc(p_1457->g_984.s6, "p_1457->g_984.s6", print_hash_value);
    transparent_crc(p_1457->g_984.s7, "p_1457->g_984.s7", print_hash_value);
    transparent_crc(p_1457->g_984.s8, "p_1457->g_984.s8", print_hash_value);
    transparent_crc(p_1457->g_984.s9, "p_1457->g_984.s9", print_hash_value);
    transparent_crc(p_1457->g_984.sa, "p_1457->g_984.sa", print_hash_value);
    transparent_crc(p_1457->g_984.sb, "p_1457->g_984.sb", print_hash_value);
    transparent_crc(p_1457->g_984.sc, "p_1457->g_984.sc", print_hash_value);
    transparent_crc(p_1457->g_984.sd, "p_1457->g_984.sd", print_hash_value);
    transparent_crc(p_1457->g_984.se, "p_1457->g_984.se", print_hash_value);
    transparent_crc(p_1457->g_984.sf, "p_1457->g_984.sf", print_hash_value);
    transparent_crc(p_1457->g_985.s0, "p_1457->g_985.s0", print_hash_value);
    transparent_crc(p_1457->g_985.s1, "p_1457->g_985.s1", print_hash_value);
    transparent_crc(p_1457->g_985.s2, "p_1457->g_985.s2", print_hash_value);
    transparent_crc(p_1457->g_985.s3, "p_1457->g_985.s3", print_hash_value);
    transparent_crc(p_1457->g_985.s4, "p_1457->g_985.s4", print_hash_value);
    transparent_crc(p_1457->g_985.s5, "p_1457->g_985.s5", print_hash_value);
    transparent_crc(p_1457->g_985.s6, "p_1457->g_985.s6", print_hash_value);
    transparent_crc(p_1457->g_985.s7, "p_1457->g_985.s7", print_hash_value);
    transparent_crc(p_1457->g_989.s0, "p_1457->g_989.s0", print_hash_value);
    transparent_crc(p_1457->g_989.s1, "p_1457->g_989.s1", print_hash_value);
    transparent_crc(p_1457->g_989.s2, "p_1457->g_989.s2", print_hash_value);
    transparent_crc(p_1457->g_989.s3, "p_1457->g_989.s3", print_hash_value);
    transparent_crc(p_1457->g_989.s4, "p_1457->g_989.s4", print_hash_value);
    transparent_crc(p_1457->g_989.s5, "p_1457->g_989.s5", print_hash_value);
    transparent_crc(p_1457->g_989.s6, "p_1457->g_989.s6", print_hash_value);
    transparent_crc(p_1457->g_989.s7, "p_1457->g_989.s7", print_hash_value);
    transparent_crc(p_1457->g_1017.x, "p_1457->g_1017.x", print_hash_value);
    transparent_crc(p_1457->g_1017.y, "p_1457->g_1017.y", print_hash_value);
    transparent_crc(p_1457->g_1017.z, "p_1457->g_1017.z", print_hash_value);
    transparent_crc(p_1457->g_1017.w, "p_1457->g_1017.w", print_hash_value);
    transparent_crc(p_1457->g_1022.s0, "p_1457->g_1022.s0", print_hash_value);
    transparent_crc(p_1457->g_1022.s1, "p_1457->g_1022.s1", print_hash_value);
    transparent_crc(p_1457->g_1022.s2, "p_1457->g_1022.s2", print_hash_value);
    transparent_crc(p_1457->g_1022.s3, "p_1457->g_1022.s3", print_hash_value);
    transparent_crc(p_1457->g_1022.s4, "p_1457->g_1022.s4", print_hash_value);
    transparent_crc(p_1457->g_1022.s5, "p_1457->g_1022.s5", print_hash_value);
    transparent_crc(p_1457->g_1022.s6, "p_1457->g_1022.s6", print_hash_value);
    transparent_crc(p_1457->g_1022.s7, "p_1457->g_1022.s7", print_hash_value);
    transparent_crc(p_1457->g_1083.x, "p_1457->g_1083.x", print_hash_value);
    transparent_crc(p_1457->g_1083.y, "p_1457->g_1083.y", print_hash_value);
    transparent_crc(p_1457->g_1084.x, "p_1457->g_1084.x", print_hash_value);
    transparent_crc(p_1457->g_1084.y, "p_1457->g_1084.y", print_hash_value);
    transparent_crc(p_1457->g_1089.s0, "p_1457->g_1089.s0", print_hash_value);
    transparent_crc(p_1457->g_1089.s1, "p_1457->g_1089.s1", print_hash_value);
    transparent_crc(p_1457->g_1089.s2, "p_1457->g_1089.s2", print_hash_value);
    transparent_crc(p_1457->g_1089.s3, "p_1457->g_1089.s3", print_hash_value);
    transparent_crc(p_1457->g_1089.s4, "p_1457->g_1089.s4", print_hash_value);
    transparent_crc(p_1457->g_1089.s5, "p_1457->g_1089.s5", print_hash_value);
    transparent_crc(p_1457->g_1089.s6, "p_1457->g_1089.s6", print_hash_value);
    transparent_crc(p_1457->g_1089.s7, "p_1457->g_1089.s7", print_hash_value);
    transparent_crc(p_1457->g_1089.s8, "p_1457->g_1089.s8", print_hash_value);
    transparent_crc(p_1457->g_1089.s9, "p_1457->g_1089.s9", print_hash_value);
    transparent_crc(p_1457->g_1089.sa, "p_1457->g_1089.sa", print_hash_value);
    transparent_crc(p_1457->g_1089.sb, "p_1457->g_1089.sb", print_hash_value);
    transparent_crc(p_1457->g_1089.sc, "p_1457->g_1089.sc", print_hash_value);
    transparent_crc(p_1457->g_1089.sd, "p_1457->g_1089.sd", print_hash_value);
    transparent_crc(p_1457->g_1089.se, "p_1457->g_1089.se", print_hash_value);
    transparent_crc(p_1457->g_1089.sf, "p_1457->g_1089.sf", print_hash_value);
    transparent_crc(p_1457->g_1092, "p_1457->g_1092", print_hash_value);
    transparent_crc(p_1457->g_1097.x, "p_1457->g_1097.x", print_hash_value);
    transparent_crc(p_1457->g_1097.y, "p_1457->g_1097.y", print_hash_value);
    transparent_crc(p_1457->g_1102.x, "p_1457->g_1102.x", print_hash_value);
    transparent_crc(p_1457->g_1102.y, "p_1457->g_1102.y", print_hash_value);
    transparent_crc(p_1457->g_1103.s0, "p_1457->g_1103.s0", print_hash_value);
    transparent_crc(p_1457->g_1103.s1, "p_1457->g_1103.s1", print_hash_value);
    transparent_crc(p_1457->g_1103.s2, "p_1457->g_1103.s2", print_hash_value);
    transparent_crc(p_1457->g_1103.s3, "p_1457->g_1103.s3", print_hash_value);
    transparent_crc(p_1457->g_1103.s4, "p_1457->g_1103.s4", print_hash_value);
    transparent_crc(p_1457->g_1103.s5, "p_1457->g_1103.s5", print_hash_value);
    transparent_crc(p_1457->g_1103.s6, "p_1457->g_1103.s6", print_hash_value);
    transparent_crc(p_1457->g_1103.s7, "p_1457->g_1103.s7", print_hash_value);
    transparent_crc(p_1457->g_1127.s0, "p_1457->g_1127.s0", print_hash_value);
    transparent_crc(p_1457->g_1127.s1, "p_1457->g_1127.s1", print_hash_value);
    transparent_crc(p_1457->g_1127.s2, "p_1457->g_1127.s2", print_hash_value);
    transparent_crc(p_1457->g_1127.s3, "p_1457->g_1127.s3", print_hash_value);
    transparent_crc(p_1457->g_1127.s4, "p_1457->g_1127.s4", print_hash_value);
    transparent_crc(p_1457->g_1127.s5, "p_1457->g_1127.s5", print_hash_value);
    transparent_crc(p_1457->g_1127.s6, "p_1457->g_1127.s6", print_hash_value);
    transparent_crc(p_1457->g_1127.s7, "p_1457->g_1127.s7", print_hash_value);
    transparent_crc(p_1457->g_1127.s8, "p_1457->g_1127.s8", print_hash_value);
    transparent_crc(p_1457->g_1127.s9, "p_1457->g_1127.s9", print_hash_value);
    transparent_crc(p_1457->g_1127.sa, "p_1457->g_1127.sa", print_hash_value);
    transparent_crc(p_1457->g_1127.sb, "p_1457->g_1127.sb", print_hash_value);
    transparent_crc(p_1457->g_1127.sc, "p_1457->g_1127.sc", print_hash_value);
    transparent_crc(p_1457->g_1127.sd, "p_1457->g_1127.sd", print_hash_value);
    transparent_crc(p_1457->g_1127.se, "p_1457->g_1127.se", print_hash_value);
    transparent_crc(p_1457->g_1127.sf, "p_1457->g_1127.sf", print_hash_value);
    transparent_crc(p_1457->g_1128.s0, "p_1457->g_1128.s0", print_hash_value);
    transparent_crc(p_1457->g_1128.s1, "p_1457->g_1128.s1", print_hash_value);
    transparent_crc(p_1457->g_1128.s2, "p_1457->g_1128.s2", print_hash_value);
    transparent_crc(p_1457->g_1128.s3, "p_1457->g_1128.s3", print_hash_value);
    transparent_crc(p_1457->g_1128.s4, "p_1457->g_1128.s4", print_hash_value);
    transparent_crc(p_1457->g_1128.s5, "p_1457->g_1128.s5", print_hash_value);
    transparent_crc(p_1457->g_1128.s6, "p_1457->g_1128.s6", print_hash_value);
    transparent_crc(p_1457->g_1128.s7, "p_1457->g_1128.s7", print_hash_value);
    transparent_crc(p_1457->g_1154.s0, "p_1457->g_1154.s0", print_hash_value);
    transparent_crc(p_1457->g_1154.s1, "p_1457->g_1154.s1", print_hash_value);
    transparent_crc(p_1457->g_1154.s2, "p_1457->g_1154.s2", print_hash_value);
    transparent_crc(p_1457->g_1154.s3, "p_1457->g_1154.s3", print_hash_value);
    transparent_crc(p_1457->g_1154.s4, "p_1457->g_1154.s4", print_hash_value);
    transparent_crc(p_1457->g_1154.s5, "p_1457->g_1154.s5", print_hash_value);
    transparent_crc(p_1457->g_1154.s6, "p_1457->g_1154.s6", print_hash_value);
    transparent_crc(p_1457->g_1154.s7, "p_1457->g_1154.s7", print_hash_value);
    transparent_crc(p_1457->g_1175.s0, "p_1457->g_1175.s0", print_hash_value);
    transparent_crc(p_1457->g_1175.s1, "p_1457->g_1175.s1", print_hash_value);
    transparent_crc(p_1457->g_1175.s2, "p_1457->g_1175.s2", print_hash_value);
    transparent_crc(p_1457->g_1175.s3, "p_1457->g_1175.s3", print_hash_value);
    transparent_crc(p_1457->g_1175.s4, "p_1457->g_1175.s4", print_hash_value);
    transparent_crc(p_1457->g_1175.s5, "p_1457->g_1175.s5", print_hash_value);
    transparent_crc(p_1457->g_1175.s6, "p_1457->g_1175.s6", print_hash_value);
    transparent_crc(p_1457->g_1175.s7, "p_1457->g_1175.s7", print_hash_value);
    transparent_crc(p_1457->g_1177.s0, "p_1457->g_1177.s0", print_hash_value);
    transparent_crc(p_1457->g_1177.s1, "p_1457->g_1177.s1", print_hash_value);
    transparent_crc(p_1457->g_1177.s2, "p_1457->g_1177.s2", print_hash_value);
    transparent_crc(p_1457->g_1177.s3, "p_1457->g_1177.s3", print_hash_value);
    transparent_crc(p_1457->g_1177.s4, "p_1457->g_1177.s4", print_hash_value);
    transparent_crc(p_1457->g_1177.s5, "p_1457->g_1177.s5", print_hash_value);
    transparent_crc(p_1457->g_1177.s6, "p_1457->g_1177.s6", print_hash_value);
    transparent_crc(p_1457->g_1177.s7, "p_1457->g_1177.s7", print_hash_value);
    transparent_crc(p_1457->g_1179.s0, "p_1457->g_1179.s0", print_hash_value);
    transparent_crc(p_1457->g_1179.s1, "p_1457->g_1179.s1", print_hash_value);
    transparent_crc(p_1457->g_1179.s2, "p_1457->g_1179.s2", print_hash_value);
    transparent_crc(p_1457->g_1179.s3, "p_1457->g_1179.s3", print_hash_value);
    transparent_crc(p_1457->g_1179.s4, "p_1457->g_1179.s4", print_hash_value);
    transparent_crc(p_1457->g_1179.s5, "p_1457->g_1179.s5", print_hash_value);
    transparent_crc(p_1457->g_1179.s6, "p_1457->g_1179.s6", print_hash_value);
    transparent_crc(p_1457->g_1179.s7, "p_1457->g_1179.s7", print_hash_value);
    transparent_crc(p_1457->g_1181.s0, "p_1457->g_1181.s0", print_hash_value);
    transparent_crc(p_1457->g_1181.s1, "p_1457->g_1181.s1", print_hash_value);
    transparent_crc(p_1457->g_1181.s2, "p_1457->g_1181.s2", print_hash_value);
    transparent_crc(p_1457->g_1181.s3, "p_1457->g_1181.s3", print_hash_value);
    transparent_crc(p_1457->g_1181.s4, "p_1457->g_1181.s4", print_hash_value);
    transparent_crc(p_1457->g_1181.s5, "p_1457->g_1181.s5", print_hash_value);
    transparent_crc(p_1457->g_1181.s6, "p_1457->g_1181.s6", print_hash_value);
    transparent_crc(p_1457->g_1181.s7, "p_1457->g_1181.s7", print_hash_value);
    transparent_crc(p_1457->g_1181.s8, "p_1457->g_1181.s8", print_hash_value);
    transparent_crc(p_1457->g_1181.s9, "p_1457->g_1181.s9", print_hash_value);
    transparent_crc(p_1457->g_1181.sa, "p_1457->g_1181.sa", print_hash_value);
    transparent_crc(p_1457->g_1181.sb, "p_1457->g_1181.sb", print_hash_value);
    transparent_crc(p_1457->g_1181.sc, "p_1457->g_1181.sc", print_hash_value);
    transparent_crc(p_1457->g_1181.sd, "p_1457->g_1181.sd", print_hash_value);
    transparent_crc(p_1457->g_1181.se, "p_1457->g_1181.se", print_hash_value);
    transparent_crc(p_1457->g_1181.sf, "p_1457->g_1181.sf", print_hash_value);
    transparent_crc(p_1457->g_1182.x, "p_1457->g_1182.x", print_hash_value);
    transparent_crc(p_1457->g_1182.y, "p_1457->g_1182.y", print_hash_value);
    transparent_crc(p_1457->g_1183.x, "p_1457->g_1183.x", print_hash_value);
    transparent_crc(p_1457->g_1183.y, "p_1457->g_1183.y", print_hash_value);
    transparent_crc(p_1457->g_1191.x, "p_1457->g_1191.x", print_hash_value);
    transparent_crc(p_1457->g_1191.y, "p_1457->g_1191.y", print_hash_value);
    transparent_crc(p_1457->g_1214, "p_1457->g_1214", print_hash_value);
    transparent_crc(p_1457->g_1217.s0, "p_1457->g_1217.s0", print_hash_value);
    transparent_crc(p_1457->g_1217.s1, "p_1457->g_1217.s1", print_hash_value);
    transparent_crc(p_1457->g_1217.s2, "p_1457->g_1217.s2", print_hash_value);
    transparent_crc(p_1457->g_1217.s3, "p_1457->g_1217.s3", print_hash_value);
    transparent_crc(p_1457->g_1217.s4, "p_1457->g_1217.s4", print_hash_value);
    transparent_crc(p_1457->g_1217.s5, "p_1457->g_1217.s5", print_hash_value);
    transparent_crc(p_1457->g_1217.s6, "p_1457->g_1217.s6", print_hash_value);
    transparent_crc(p_1457->g_1217.s7, "p_1457->g_1217.s7", print_hash_value);
    transparent_crc(p_1457->g_1217.s8, "p_1457->g_1217.s8", print_hash_value);
    transparent_crc(p_1457->g_1217.s9, "p_1457->g_1217.s9", print_hash_value);
    transparent_crc(p_1457->g_1217.sa, "p_1457->g_1217.sa", print_hash_value);
    transparent_crc(p_1457->g_1217.sb, "p_1457->g_1217.sb", print_hash_value);
    transparent_crc(p_1457->g_1217.sc, "p_1457->g_1217.sc", print_hash_value);
    transparent_crc(p_1457->g_1217.sd, "p_1457->g_1217.sd", print_hash_value);
    transparent_crc(p_1457->g_1217.se, "p_1457->g_1217.se", print_hash_value);
    transparent_crc(p_1457->g_1217.sf, "p_1457->g_1217.sf", print_hash_value);
    transparent_crc(p_1457->g_1250.x, "p_1457->g_1250.x", print_hash_value);
    transparent_crc(p_1457->g_1250.y, "p_1457->g_1250.y", print_hash_value);
    transparent_crc(p_1457->g_1250.z, "p_1457->g_1250.z", print_hash_value);
    transparent_crc(p_1457->g_1250.w, "p_1457->g_1250.w", print_hash_value);
    transparent_crc(p_1457->g_1275, "p_1457->g_1275", print_hash_value);
    transparent_crc(p_1457->g_1277.x, "p_1457->g_1277.x", print_hash_value);
    transparent_crc(p_1457->g_1277.y, "p_1457->g_1277.y", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1457->g_1283[i][j], "p_1457->g_1283[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1457->g_1312, "p_1457->g_1312", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1457->g_1319[i][j], "p_1457->g_1319[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1457->g_1375.s0, "p_1457->g_1375.s0", print_hash_value);
    transparent_crc(p_1457->g_1375.s1, "p_1457->g_1375.s1", print_hash_value);
    transparent_crc(p_1457->g_1375.s2, "p_1457->g_1375.s2", print_hash_value);
    transparent_crc(p_1457->g_1375.s3, "p_1457->g_1375.s3", print_hash_value);
    transparent_crc(p_1457->g_1375.s4, "p_1457->g_1375.s4", print_hash_value);
    transparent_crc(p_1457->g_1375.s5, "p_1457->g_1375.s5", print_hash_value);
    transparent_crc(p_1457->g_1375.s6, "p_1457->g_1375.s6", print_hash_value);
    transparent_crc(p_1457->g_1375.s7, "p_1457->g_1375.s7", print_hash_value);
    transparent_crc(p_1457->g_1375.s8, "p_1457->g_1375.s8", print_hash_value);
    transparent_crc(p_1457->g_1375.s9, "p_1457->g_1375.s9", print_hash_value);
    transparent_crc(p_1457->g_1375.sa, "p_1457->g_1375.sa", print_hash_value);
    transparent_crc(p_1457->g_1375.sb, "p_1457->g_1375.sb", print_hash_value);
    transparent_crc(p_1457->g_1375.sc, "p_1457->g_1375.sc", print_hash_value);
    transparent_crc(p_1457->g_1375.sd, "p_1457->g_1375.sd", print_hash_value);
    transparent_crc(p_1457->g_1375.se, "p_1457->g_1375.se", print_hash_value);
    transparent_crc(p_1457->g_1375.sf, "p_1457->g_1375.sf", print_hash_value);
    transparent_crc(p_1457->g_1404.x, "p_1457->g_1404.x", print_hash_value);
    transparent_crc(p_1457->g_1404.y, "p_1457->g_1404.y", print_hash_value);
    transparent_crc(p_1457->g_1405.s0, "p_1457->g_1405.s0", print_hash_value);
    transparent_crc(p_1457->g_1405.s1, "p_1457->g_1405.s1", print_hash_value);
    transparent_crc(p_1457->g_1405.s2, "p_1457->g_1405.s2", print_hash_value);
    transparent_crc(p_1457->g_1405.s3, "p_1457->g_1405.s3", print_hash_value);
    transparent_crc(p_1457->g_1405.s4, "p_1457->g_1405.s4", print_hash_value);
    transparent_crc(p_1457->g_1405.s5, "p_1457->g_1405.s5", print_hash_value);
    transparent_crc(p_1457->g_1405.s6, "p_1457->g_1405.s6", print_hash_value);
    transparent_crc(p_1457->g_1405.s7, "p_1457->g_1405.s7", print_hash_value);
    transparent_crc(p_1457->g_1407.s0, "p_1457->g_1407.s0", print_hash_value);
    transparent_crc(p_1457->g_1407.s1, "p_1457->g_1407.s1", print_hash_value);
    transparent_crc(p_1457->g_1407.s2, "p_1457->g_1407.s2", print_hash_value);
    transparent_crc(p_1457->g_1407.s3, "p_1457->g_1407.s3", print_hash_value);
    transparent_crc(p_1457->g_1407.s4, "p_1457->g_1407.s4", print_hash_value);
    transparent_crc(p_1457->g_1407.s5, "p_1457->g_1407.s5", print_hash_value);
    transparent_crc(p_1457->g_1407.s6, "p_1457->g_1407.s6", print_hash_value);
    transparent_crc(p_1457->g_1407.s7, "p_1457->g_1407.s7", print_hash_value);
    transparent_crc(p_1457->g_1430.x, "p_1457->g_1430.x", print_hash_value);
    transparent_crc(p_1457->g_1430.y, "p_1457->g_1430.y", print_hash_value);
    transparent_crc(p_1457->g_1432.x, "p_1457->g_1432.x", print_hash_value);
    transparent_crc(p_1457->g_1432.y, "p_1457->g_1432.y", print_hash_value);
    transparent_crc(p_1457->v_collective, "p_1457->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 43; i++)
            transparent_crc(p_1457->g_special_values[i + 43 * get_linear_group_id()], "p_1457->g_special_values[i + 43 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 43; i++)
            transparent_crc(p_1457->l_special_values[i], "p_1457->l_special_values[i]", print_hash_value);
    transparent_crc(p_1457->l_comm_values[get_linear_local_id()], "p_1457->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1457->g_comm_values[get_linear_group_id() * 6 + get_linear_local_id()], "p_1457->g_comm_values[get_linear_group_id() * 6 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
