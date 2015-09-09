// ---fake_divergence ---inter_thread_comm -g 35,4,9 -l 7,1,1
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

__constant uint32_t permutations[10][7] = {
{6,3,4,0,2,1,5}, // permutation 0
{4,6,0,5,3,1,2}, // permutation 1
{2,5,1,3,6,0,4}, // permutation 2
{6,5,4,2,0,3,1}, // permutation 3
{6,4,2,1,5,0,3}, // permutation 4
{1,3,0,6,5,4,2}, // permutation 5
{1,4,0,5,6,2,3}, // permutation 6
{1,0,2,4,5,6,3}, // permutation 7
{3,5,6,1,0,2,4}, // permutation 8
{4,0,5,3,6,1,2} // permutation 9
};

// Seed: 85

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile uint8_t  f0;
   volatile int32_t  f1;
   uint32_t  f2;
   uint64_t  f3;
   volatile int16_t  f4;
   volatile uint32_t  f5;
   int8_t  f6;
   int8_t  f7;
};

union U1 {
   volatile uint64_t  f0;
   int64_t  f1;
   int8_t  f2;
   volatile uint64_t  f3;
   int16_t  f4;
};

struct S2 {
    int32_t g_17;
    int32_t ** volatile g_53[3];
    int32_t *g_59[1];
    int32_t **g_58;
    int16_t g_71;
    volatile struct S0 g_72;
    uint64_t g_104;
    uint16_t g_110;
    volatile union U1 g_121;
    uint32_t g_126;
    int64_t g_129;
    volatile uint16_t g_131;
    volatile struct S0 * volatile g_151;
    uint8_t g_156;
    uint8_t g_162;
    uint8_t *g_164[4][7];
    uint32_t g_178;
    int64_t *g_182;
    int64_t **g_181;
    int64_t *** volatile g_183;
    struct S0 g_188;
    struct S0 * volatile g_189;
    volatile struct S0 g_192;
    uint32_t g_196;
    int64_t g_217;
    uint64_t g_218;
    volatile struct S0 g_257;
    volatile struct S0 * volatile g_258[1];
    volatile struct S0 g_260;
    volatile uint32_t g_265;
    volatile int32_t *g_274;
    volatile int32_t **g_273[8][7][2];
    volatile int32_t ** volatile *g_272;
    volatile int32_t ** volatile * volatile *g_271[2][9][6];
    uint32_t g_300[3];
    struct S0 g_309;
    volatile uint32_t g_326[2];
    int16_t g_338;
    volatile uint32_t g_344[8];
    volatile struct S0 g_350[4];
    struct S0 g_374;
    union U1 g_375;
    int16_t *g_417;
    int16_t *g_418[9][10];
    volatile uint64_t *g_460;
    volatile uint64_t * volatile *g_459;
    volatile struct S0 g_490;
    volatile struct S0 g_491[2][7][3];
    uint16_t g_492;
    struct S0 g_533;
    volatile union U1 g_582[1][6];
    uint64_t g_589;
    struct S0 g_590[3][3];
    struct S0 * volatile g_591;
    volatile uint16_t **g_594[5][3];
    volatile int32_t * volatile g_595;
    struct S0 g_614;
    struct S0 * volatile g_615;
    int32_t g_619;
    struct S0 * volatile g_642;
    int32_t g_665;
    volatile union U1 g_695[9];
    uint64_t g_721[1];
    int32_t g_804[1];
    int32_t ****g_808;
    int32_t *****g_807;
    struct S0 g_823[5];
    volatile struct S0 g_856;
    volatile union U1 g_902;
    volatile struct S0 g_920;
    uint32_t g_936;
    struct S0 g_980;
    struct S0 * volatile g_981;
    volatile uint64_t g_1003[7];
    volatile struct S0 g_1038;
    struct S0 g_1061;
    int32_t g_1072;
    volatile struct S0 g_1073;
    volatile union U1 *g_1150;
    struct S0 g_1151;
    uint64_t *g_1188;
    uint64_t **g_1187;
    struct S0 *g_1191[3][5];
    struct S0 ** volatile g_1190;
    volatile union U1 g_1196;
    volatile uint8_t g_1224;
    struct S0 g_1232;
    struct S0 g_1233;
    struct S0 g_1236;
    struct S0 * volatile g_1237[7];
    volatile uint32_t *g_1282;
    volatile uint32_t ** volatile g_1281;
    volatile struct S0 g_1294[7];
    volatile struct S0 * volatile g_1295[1];
    volatile struct S0 g_1322;
    uint64_t g_1323;
    int32_t * volatile g_1386;
    uint32_t *g_1409;
    uint32_t **g_1408;
    uint32_t ***g_1407;
    int8_t *g_1519;
    int8_t **g_1518;
    union U1 g_1526[10][7][3];
    struct S0 **g_1539;
    int16_t g_1558;
    int32_t ***g_1594;
    int64_t g_1610;
    volatile uint16_t * volatile g_1680;
    int32_t *g_1688[6][9][3];
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
int32_t  func_1(struct S2 * p_1695);
int32_t * func_2(int16_t  p_3, int8_t  p_4, uint32_t  p_5, int64_t  p_6, struct S2 * p_1695);
int32_t * func_9(uint32_t  p_10, int32_t * p_11, uint32_t  p_12, struct S2 * p_1695);
int32_t * func_13(int32_t * p_14, int64_t  p_15, struct S2 * p_1695);
int64_t  func_18(int64_t  p_19, int32_t * p_20, int32_t  p_21, int64_t  p_22, struct S2 * p_1695);
int32_t * func_23(int32_t * p_24, int32_t * p_25, int16_t  p_26, int32_t * p_27, struct S2 * p_1695);
int32_t * func_28(uint32_t  p_29, int64_t  p_30, int32_t * p_31, uint32_t  p_32, int32_t * p_33, struct S2 * p_1695);
int16_t  func_36(int32_t * p_37, uint32_t  p_38, int64_t  p_39, struct S2 * p_1695);
uint32_t  func_40(int8_t  p_41, uint32_t  p_42, int32_t * p_43, int32_t  p_44, struct S2 * p_1695);
int8_t  func_45(int32_t  p_46, struct S2 * p_1695);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1695->l_comm_values p_1695->g_comm_values p_1695->g_17 p_1695->g_58 p_1695->g_59 p_1695->g_72 p_1695->g_71 p_1695->g_121 p_1695->g_126 p_1695->g_131 p_1695->g_129 p_1695->g_156 p_1695->g_121.f0 p_1695->g_178 p_1695->g_104 p_1695->g_309.f2 p_1695->g_309.f3 p_1695->g_196 p_1695->g_188.f7 p_1695->g_614.f3 p_1695->g_192.f6 p_1695->g_533.f2 p_1695->g_338 p_1695->g_189 p_1695->g_188 p_1695->g_309.f0 p_1695->g_492 p_1695->g_417 p_1695->g_619 p_1695->g_591 p_1695->g_590 p_1695->g_642 p_1695->g_1003 p_1695->g_1061 p_1695->g_980.f4 p_1695->g_804 p_1695->g_274 p_1695->g_1072 p_1695->g_1073 p_1695->g_181 p_1695->g_182 p_1695->g_164 p_1695->g_300 p_1695->g_374.f4 p_1695->g_374.f6 p_1695->g_902.f0 p_1695->g_823.f4 p_1695->g_374.f3 p_1695->g_375.f4 p_1695->g_375.f1 p_1695->g_374.f0 p_1695->g_533.f6 p_1695->g_490.f5 p_1695->g_1187 p_1695->g_1190 p_1695->g_823 p_1695->g_1196 p_1695->g_217 p_1695->g_614.f6 p_1695->g_980.f2 p_1695->g_594 p_1695->g_595 p_1695->g_1224 p_1695->g_589 p_1695->g_374.f2 p_1695->g_1232 p_1695->g_1236 p_1695->g_533.f7 p_1695->g_1281 p_1695->g_1294 p_1695->g_374.f5 p_1695->g_1322 p_1695->g_1323 p_1695->g_309.f1 p_1695->g_309.f7 p_1695->g_1151.f7 p_1695->g_1151.f2 p_1695->g_344 p_1695->g_1407 p_1695->g_807 p_1695->g_808 p_1695->g_980.f7 p_1695->g_1233.f2 p_1695->g_614.f7 p_1695->g_110 p_1695->g_1518 p_1695->g_1526 p_1695->g_1519 p_1695->g_1558 p_1695->g_1409 p_1695->g_1282 p_1695->g_1038.f5 p_1695->g_1151.f4 p_1695->g_1408 p_1695->g_665 p_1695->g_1610 p_1695->g_936 p_1695->g_1233.f7 p_1695->g_1680 p_1695->g_1688
 * writes: p_1695->g_58 p_1695->g_71 p_1695->g_17 p_1695->g_72 p_1695->g_110 p_1695->g_129 p_1695->g_126 p_1695->g_156 p_1695->g_164 p_1695->g_162 p_1695->g_178 p_1695->g_104 p_1695->g_309.f2 p_1695->g_59 p_1695->g_309.f0 p_1695->g_350 p_1695->g_417 p_1695->g_418 p_1695->g_374.f6 p_1695->g_375.f4 p_1695->g_196 p_1695->g_309 p_1695->g_188.f7 p_1695->g_217 p_1695->g_590 p_1695->g_1072 p_1695->g_619 p_1695->g_721 p_1695->g_980.f4 p_1695->g_192.f2 p_1695->g_375.f1 p_1695->g_1061.f7 p_1695->g_218 p_1695->g_1150 p_1695->g_1151 p_1695->g_1187 p_1695->g_1191 p_1695->g_1224 p_1695->g_374.f2 p_1695->g_1233 p_1695->g_980 p_1695->g_338 p_1695->g_856 p_1695->g_1061.f6 p_1695->g_936 p_1695->g_1407 p_1695->g_1323 p_1695->g_1232.f2 p_1695->g_188.f3 p_1695->g_823.f6 p_1695->g_492 p_1695->g_1539 p_1695->g_300 p_1695->g_808 p_1695->g_1594 p_1695->g_665 p_1695->g_695
 */
int32_t  func_1(struct S2 * p_1695)
{ /* block id: 4 */
    int32_t *l_16[7] = {&p_1695->g_17,&p_1695->g_17,&p_1695->g_17,&p_1695->g_17,&p_1695->g_17,&p_1695->g_17,&p_1695->g_17};
    int32_t *l_618[7];
    uint8_t l_1254 = 0x77L;
    uint32_t l_1255 = 0xE6DCAA2BL;
    int32_t l_1256[2];
    int64_t *l_1257 = &p_1695->g_217;
    int8_t l_1258 = 0x63L;
    int32_t *l_1259 = &l_1256[1];
    int32_t *l_1260 = &l_1256[1];
    int32_t **l_1290 = &p_1695->g_59[0];
    int32_t **l_1291 = (void*)0;
    int32_t **l_1292[10] = {(void*)0,&l_618[1],(void*)0,&l_618[1],(void*)0,(void*)0,&l_618[1],(void*)0,&l_618[1],(void*)0};
    int32_t *l_1293[6] = {&l_1256[0],&p_1695->g_619,&l_1256[0],&l_1256[0],&p_1695->g_619,&l_1256[0]};
    int32_t *l_1557[10][3][7] = {{{(void*)0,&l_1256[0],&p_1695->g_17,(void*)0,(void*)0,&p_1695->g_619,(void*)0},{(void*)0,&l_1256[0],&p_1695->g_17,(void*)0,(void*)0,&p_1695->g_619,(void*)0},{(void*)0,&l_1256[0],&p_1695->g_17,(void*)0,(void*)0,&p_1695->g_619,(void*)0}},{{(void*)0,&l_1256[0],&p_1695->g_17,(void*)0,(void*)0,&p_1695->g_619,(void*)0},{(void*)0,&l_1256[0],&p_1695->g_17,(void*)0,(void*)0,&p_1695->g_619,(void*)0},{(void*)0,&l_1256[0],&p_1695->g_17,(void*)0,(void*)0,&p_1695->g_619,(void*)0}},{{(void*)0,&l_1256[0],&p_1695->g_17,(void*)0,(void*)0,&p_1695->g_619,(void*)0},{(void*)0,&l_1256[0],&p_1695->g_17,(void*)0,(void*)0,&p_1695->g_619,(void*)0},{(void*)0,&l_1256[0],&p_1695->g_17,(void*)0,(void*)0,&p_1695->g_619,(void*)0}},{{(void*)0,&l_1256[0],&p_1695->g_17,(void*)0,(void*)0,&p_1695->g_619,(void*)0},{(void*)0,&l_1256[0],&p_1695->g_17,(void*)0,(void*)0,&p_1695->g_619,(void*)0},{(void*)0,&l_1256[0],&p_1695->g_17,(void*)0,(void*)0,&p_1695->g_619,(void*)0}},{{(void*)0,&l_1256[0],&p_1695->g_17,(void*)0,(void*)0,&p_1695->g_619,(void*)0},{(void*)0,&l_1256[0],&p_1695->g_17,(void*)0,(void*)0,&p_1695->g_619,(void*)0},{(void*)0,&l_1256[0],&p_1695->g_17,(void*)0,(void*)0,&p_1695->g_619,(void*)0}},{{(void*)0,&l_1256[0],&p_1695->g_17,(void*)0,(void*)0,&p_1695->g_619,(void*)0},{(void*)0,&l_1256[0],&p_1695->g_17,(void*)0,(void*)0,&p_1695->g_619,(void*)0},{(void*)0,&l_1256[0],&p_1695->g_17,(void*)0,(void*)0,&p_1695->g_619,(void*)0}},{{(void*)0,&l_1256[0],&p_1695->g_17,(void*)0,(void*)0,&p_1695->g_619,(void*)0},{(void*)0,&l_1256[0],&p_1695->g_17,(void*)0,(void*)0,&p_1695->g_619,(void*)0},{(void*)0,&l_1256[0],&p_1695->g_17,(void*)0,(void*)0,&p_1695->g_619,(void*)0}},{{(void*)0,&l_1256[0],&p_1695->g_17,(void*)0,(void*)0,&p_1695->g_619,(void*)0},{(void*)0,&l_1256[0],&p_1695->g_17,(void*)0,(void*)0,&p_1695->g_619,(void*)0},{(void*)0,&l_1256[0],&p_1695->g_17,(void*)0,(void*)0,&p_1695->g_619,(void*)0}},{{(void*)0,&l_1256[0],&p_1695->g_17,(void*)0,(void*)0,&p_1695->g_619,(void*)0},{(void*)0,&l_1256[0],&p_1695->g_17,(void*)0,(void*)0,&p_1695->g_619,(void*)0},{(void*)0,&l_1256[0],&p_1695->g_17,(void*)0,(void*)0,&p_1695->g_619,(void*)0}},{{(void*)0,&l_1256[0],&p_1695->g_17,(void*)0,(void*)0,&p_1695->g_619,(void*)0},{(void*)0,&l_1256[0],&p_1695->g_17,(void*)0,(void*)0,&p_1695->g_619,(void*)0},{(void*)0,&l_1256[0],&p_1695->g_17,(void*)0,(void*)0,&p_1695->g_619,(void*)0}}};
    int64_t l_1684 = 1L;
    uint32_t l_1685 = 1UL;
    int16_t l_1689 = (-1L);
    int32_t l_1690[3][9] = {{0x7EDF301FL,0x7A522978L,0x7EDF301FL,0x7EDF301FL,0x7A522978L,0x7EDF301FL,0x7EDF301FL,0x7A522978L,0x7EDF301FL},{0x7EDF301FL,0x7A522978L,0x7EDF301FL,0x7EDF301FL,0x7A522978L,0x7EDF301FL,0x7EDF301FL,0x7A522978L,0x7EDF301FL},{0x7EDF301FL,0x7A522978L,0x7EDF301FL,0x7EDF301FL,0x7A522978L,0x7EDF301FL,0x7EDF301FL,0x7A522978L,0x7EDF301FL}};
    uint64_t l_1691 = 18446744073709551615UL;
    uint64_t l_1694 = 0UL;
    int i, j, k;
    for (i = 0; i < 7; i++)
        l_618[i] = &p_1695->g_619;
    for (i = 0; i < 2; i++)
        l_1256[i] = 0x64C6E80FL;
    (*l_1290) = func_2((safe_sub_func_int8_t_s_s((((l_1557[4][1][0] = func_9(p_1695->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1695->tid, 7))], func_13(l_16[1], func_18(p_1695->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1695->tid, 7))], (l_1293[2] = func_23(&p_1695->g_17, l_16[1], p_1695->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1695->tid, 7))], func_28(((((*l_1257) = (0x21B0L | (safe_rshift_func_uint16_t_u_u((((GROUP_DIVERGE(1, 1) <= (((func_36(&p_1695->g_17, func_40(func_45(((((safe_mul_func_int16_t_s_s((safe_add_func_uint32_t_u_u(0x1949F0DCL, p_1695->g_comm_values[p_1695->tid])), p_1695->g_17)) < 0L) , p_1695->g_17) , p_1695->g_17), p_1695), p_1695->g_309.f3, l_618[6], p_1695->g_533.f2, p_1695), p_1695->g_589, p_1695) | 0x2DA5L) , l_1254) > p_1695->g_1236.f6)) , l_1255) || l_1256[0]), p_1695->g_533.f7)))) & l_1258) , p_1695->g_1073.f4), p_1695->g_1232.f7, l_1259, p_1695->g_1236.f6, l_1260, p_1695), p_1695)), p_1695->g_188.f2, (*l_1260), p_1695), p_1695), p_1695->g_804[0], p_1695)) != (void*)0) > p_1695->g_1232.f3), p_1695->g_1558)), p_1695->g_374.f3, (*p_1695->g_1409), (*l_1259), p_1695);
    l_1685++;
    (*l_1290) = p_1695->g_1688[1][3][2];
    l_1691++;
    return l_1694;
}


/* ------------------------------------------ */
/* 
 * reads : p_1695->g_1281 p_1695->g_1282 p_1695->g_1038.f5 p_1695->g_492 p_1695->g_1518 p_1695->g_1519 p_1695->g_1061.f6 p_1695->g_1151.f4 p_1695->g_1408 p_1695->g_1409 p_1695->g_807 p_1695->g_17 p_1695->g_417 p_1695->g_188.f3 p_1695->g_589 p_1695->g_614.f7 p_1695->g_665 p_1695->g_1610 p_1695->g_936 p_1695->g_808 p_1695->g_1407 p_1695->g_1233.f7 p_1695->g_1680
 * writes: p_1695->g_492 p_1695->g_110 p_1695->g_936 p_1695->g_162 p_1695->g_808 p_1695->g_1594 p_1695->g_71 p_1695->g_375.f4 p_1695->g_338 p_1695->g_217 p_1695->g_665 p_1695->g_309.f6 p_1695->g_695 p_1695->g_1061.f6 p_1695->g_1233.f7 p_1695->g_218
 */
int32_t * func_2(int16_t  p_3, int8_t  p_4, uint32_t  p_5, int64_t  p_6, struct S2 * p_1695)
{ /* block id: 829 */
    uint16_t l_1561 = 0UL;
    uint16_t *l_1564 = &p_1695->g_492;
    uint16_t *l_1565 = &p_1695->g_110;
    uint64_t *l_1566[1];
    int32_t l_1567 = 1L;
    uint32_t *l_1576 = &p_1695->g_936;
    uint32_t *l_1580 = &p_1695->g_614.f2;
    uint32_t **l_1579 = &l_1580;
    int32_t l_1581[5][6][5] = {{{0x4C7407BCL,6L,0x13A27DD6L,0x6E4D920EL,0x3B7073E9L},{0x4C7407BCL,6L,0x13A27DD6L,0x6E4D920EL,0x3B7073E9L},{0x4C7407BCL,6L,0x13A27DD6L,0x6E4D920EL,0x3B7073E9L},{0x4C7407BCL,6L,0x13A27DD6L,0x6E4D920EL,0x3B7073E9L},{0x4C7407BCL,6L,0x13A27DD6L,0x6E4D920EL,0x3B7073E9L},{0x4C7407BCL,6L,0x13A27DD6L,0x6E4D920EL,0x3B7073E9L}},{{0x4C7407BCL,6L,0x13A27DD6L,0x6E4D920EL,0x3B7073E9L},{0x4C7407BCL,6L,0x13A27DD6L,0x6E4D920EL,0x3B7073E9L},{0x4C7407BCL,6L,0x13A27DD6L,0x6E4D920EL,0x3B7073E9L},{0x4C7407BCL,6L,0x13A27DD6L,0x6E4D920EL,0x3B7073E9L},{0x4C7407BCL,6L,0x13A27DD6L,0x6E4D920EL,0x3B7073E9L},{0x4C7407BCL,6L,0x13A27DD6L,0x6E4D920EL,0x3B7073E9L}},{{0x4C7407BCL,6L,0x13A27DD6L,0x6E4D920EL,0x3B7073E9L},{0x4C7407BCL,6L,0x13A27DD6L,0x6E4D920EL,0x3B7073E9L},{0x4C7407BCL,6L,0x13A27DD6L,0x6E4D920EL,0x3B7073E9L},{0x4C7407BCL,6L,0x13A27DD6L,0x6E4D920EL,0x3B7073E9L},{0x4C7407BCL,6L,0x13A27DD6L,0x6E4D920EL,0x3B7073E9L},{0x4C7407BCL,6L,0x13A27DD6L,0x6E4D920EL,0x3B7073E9L}},{{0x4C7407BCL,6L,0x13A27DD6L,0x6E4D920EL,0x3B7073E9L},{0x4C7407BCL,6L,0x13A27DD6L,0x6E4D920EL,0x3B7073E9L},{0x4C7407BCL,6L,0x13A27DD6L,0x6E4D920EL,0x3B7073E9L},{0x4C7407BCL,6L,0x13A27DD6L,0x6E4D920EL,0x3B7073E9L},{0x4C7407BCL,6L,0x13A27DD6L,0x6E4D920EL,0x3B7073E9L},{0x4C7407BCL,6L,0x13A27DD6L,0x6E4D920EL,0x3B7073E9L}},{{0x4C7407BCL,6L,0x13A27DD6L,0x6E4D920EL,0x3B7073E9L},{0x4C7407BCL,6L,0x13A27DD6L,0x6E4D920EL,0x3B7073E9L},{0x4C7407BCL,6L,0x13A27DD6L,0x6E4D920EL,0x3B7073E9L},{0x4C7407BCL,6L,0x13A27DD6L,0x6E4D920EL,0x3B7073E9L},{0x4C7407BCL,6L,0x13A27DD6L,0x6E4D920EL,0x3B7073E9L},{0x4C7407BCL,6L,0x13A27DD6L,0x6E4D920EL,0x3B7073E9L}}};
    uint8_t *l_1582 = &p_1695->g_162;
    int32_t *l_1595 = &p_1695->g_665;
    uint32_t *l_1631 = &p_1695->g_178;
    int32_t l_1632 = 6L;
    int16_t l_1659 = 0x6743L;
    int32_t *l_1682 = &l_1567;
    int32_t *l_1683 = &p_1695->g_665;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_1566[i] = &p_1695->g_589;
    if (((l_1567 = ((**p_1695->g_1281) , (safe_rshift_func_uint16_t_u_s(((*l_1565) = ((*l_1564) ^= (--l_1561))), 13)))) || (l_1567 = (safe_div_func_int8_t_s_s((safe_add_func_int16_t_s_s(p_6, (((**p_1695->g_1518) < p_6) > (safe_mul_func_uint8_t_u_u(1UL, ((*l_1582) = (safe_mod_func_int16_t_s_s((((*l_1576) = p_1695->g_1151.f4) >= (~((safe_sub_func_uint32_t_u_u(GROUP_DIVERGE(0, 1), l_1567)) > (l_1581[1][2][2] = ((*p_1695->g_1408) != ((*l_1579) = (void*)0)))))), p_5)))))))), 0x40L)))))
    { /* block id: 839 */
        int32_t *l_1583[8][3];
        int32_t ***l_1589 = (void*)0;
        int32_t ****l_1588 = &l_1589;
        int32_t *****l_1590 = &l_1588;
        int32_t ****l_1593 = &l_1589;
        int64_t ***l_1607 = (void*)0;
        int64_t ****l_1606 = &l_1607;
        int64_t *l_1611[1];
        uint32_t l_1620[5][3] = {{0x2A91C8B0L,0xB9BB303BL,0x2A91C8B0L},{0x2A91C8B0L,0xB9BB303BL,0x2A91C8B0L},{0x2A91C8B0L,0xB9BB303BL,0x2A91C8B0L},{0x2A91C8B0L,0xB9BB303BL,0x2A91C8B0L},{0x2A91C8B0L,0xB9BB303BL,0x2A91C8B0L}};
        int i, j;
        for (i = 0; i < 8; i++)
        {
            for (j = 0; j < 3; j++)
                l_1583[i][j] = &p_1695->g_665;
        }
        for (i = 0; i < 1; i++)
            l_1611[i] = (void*)0;
        l_1595 = func_23(l_1583[1][0], &l_1567, ((safe_sub_func_int8_t_s_s(((-1L) & (((1L <= (p_3 , ((safe_add_func_int8_t_s_s((((*l_1590) = ((*p_1695->g_807) = l_1588)) != (void*)0), ((safe_div_func_int64_t_s_s(((p_1695->g_1594 = ((*l_1593) = (void*)0)) == (void*)0), p_6)) , p_4))) >= 0x10L))) == l_1581[4][0][4]) > p_4)), (*p_1695->g_1519))) , p_5), &l_1567, p_1695);
        l_1567 |= ((*l_1595) = ((p_1695->g_614.f7 > (safe_add_func_int32_t_s_s(p_6, (safe_mod_func_uint8_t_u_u(p_6, ((255UL ^ (safe_div_func_int64_t_s_s((((*p_1695->g_417) = (0xB3L ^ (safe_mod_func_int16_t_s_s((((safe_lshift_func_uint16_t_u_s(((((*l_1606) = &p_1695->g_181) != (void*)0) , 65534UL), 8)) >= ((safe_add_func_int8_t_s_s(p_3, 0x32L)) , p_6)) == (-6L)), p_5)))) < (*l_1595)), (*l_1595)))) || p_1695->g_1610)))))) & GROUP_DIVERGE(2, 1)));
        (*l_1595) = (((l_1611[0] = &p_1695->g_217) == l_1566[0]) , (((((--(*l_1576)) && (safe_lshift_func_uint16_t_u_s((*l_1595), ((safe_mul_func_int16_t_s_s(l_1620[1][1], (safe_mul_func_int16_t_s_s((safe_mul_func_int16_t_s_s(((((safe_mod_func_uint16_t_u_u((5L | (safe_mul_func_int16_t_s_s((safe_add_func_int16_t_s_s((((l_1631 = l_1583[1][0]) == (void*)0) || p_6), ((*p_1695->g_417) = 0L))), 65535UL))), p_5)) ^ p_6) == 0x42F6L) > l_1632), p_6)), p_6)))) & (*l_1595))))) , 0x5D66E90E1A3B808FL) & 0L) > p_6));
    }
    else
    { /* block id: 854 */
        uint8_t l_1637 = 1UL;
        uint64_t l_1645 = 8UL;
        int32_t l_1658 = 1L;
        int32_t l_1660 = 0x1B70F6B2L;
        int32_t l_1662 = 0x1102758DL;
        int32_t l_1663 = 5L;
        if ((0UL < ((void*)0 == (*p_1695->g_807))))
        { /* block id: 855 */
            uint32_t l_1633 = 2UL;
            uint32_t **l_1636 = &p_1695->g_1409;
            uint8_t l_1638 = 0xBCL;
            int32_t *l_1646 = (void*)0;
            int32_t *l_1647 = &l_1581[0][0][4];
            int32_t *l_1648 = (void*)0;
            int32_t *l_1649 = &l_1581[1][2][2];
            int32_t *l_1650 = &l_1581[1][2][2];
            int32_t *l_1651 = (void*)0;
            int32_t l_1652[5];
            int32_t *l_1653 = &l_1567;
            int32_t *l_1654 = &l_1652[1];
            int32_t *l_1655 = &l_1652[1];
            int32_t *l_1656 = &p_1695->g_665;
            int32_t *l_1657[8] = {&p_1695->g_17,&p_1695->g_17,&p_1695->g_17,&p_1695->g_17,&p_1695->g_17,&p_1695->g_17,&p_1695->g_17,&p_1695->g_17};
            int32_t l_1661[6] = {0x114E3687L,0x114E3687L,0x114E3687L,0x114E3687L,0x114E3687L,0x114E3687L};
            uint32_t l_1664 = 0x5F94D6FDL;
            int i;
            for (i = 0; i < 5; i++)
                l_1652[i] = 0x3264947CL;
            l_1645 = ((l_1633 || ((safe_sub_func_int16_t_s_s((((*p_1695->g_1407) == l_1636) && (((*l_1595) , l_1637) | (l_1638 >= FAKE_DIVERGE(p_1695->global_0_offset, get_global_id(0), 10)))), FAKE_DIVERGE(p_1695->global_2_offset, get_global_id(2), 10))) >= ((safe_sub_func_int32_t_s_s((0x3A642168D3E81342L < (((safe_rshift_func_uint16_t_u_s(0x5404L, 5)) >= ((safe_mod_func_uint16_t_u_u(65527UL, GROUP_DIVERGE(0, 1))) ^ p_3)) <= 0x3080C64B01C82AA6L)), GROUP_DIVERGE(2, 1))) && l_1638))) && (*l_1595));
            for (p_1695->g_309.f6 = 0; p_1695->g_309.f6 < 9; p_1695->g_309.f6 += 1)
            {
                union U1 tmp = {{2UL}};
                p_1695->g_695[p_1695->g_309.f6] = tmp;
            }
            l_1664--;
        }
        else
        { /* block id: 859 */
            int8_t *l_1669 = &p_1695->g_1233.f7;
            int32_t l_1672 = (-3L);
            uint16_t *l_1679 = &p_1695->g_492;
            int32_t l_1681 = 0x281DD290L;
            l_1681 = (&l_1658 == (((((safe_add_func_int8_t_s_s(0x27L, (((**p_1695->g_1518) = 7L) < ((*l_1669) ^= 0x4EL)))) && (safe_sub_func_uint8_t_u_u(FAKE_DIVERGE(p_1695->local_2_offset, get_local_id(2), 10), ((((l_1672 , (safe_mod_func_uint64_t_u_u((*l_1595), (safe_lshift_func_int8_t_s_u((+(l_1662 < ((safe_sub_func_uint64_t_u_u(p_4, (l_1672 = (p_1695->g_218 = 0x5D608E94AB7509E5L)))) != FAKE_DIVERGE(p_1695->group_2_offset, get_group_id(2), 10)))), 4))))) <= 0x3D81L) , l_1679) != p_1695->g_1680)))) >= 0UL) | l_1681) , &l_1681));
        }
    }
    return l_1683;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_9(uint32_t  p_10, int32_t * p_11, uint32_t  p_12, struct S2 * p_1695)
{ /* block id: 825 */
    int32_t l_1546 = (-8L);
    int32_t *l_1547 = &p_1695->g_665;
    int32_t l_1548 = 0x40414003L;
    int32_t *l_1549 = &p_1695->g_665;
    int32_t *l_1550 = &p_1695->g_619;
    int32_t *l_1551 = &p_1695->g_17;
    int32_t *l_1552 = &p_1695->g_17;
    int32_t *l_1553[9] = {&p_1695->g_665,&p_1695->g_665,&p_1695->g_665,&p_1695->g_665,&p_1695->g_665,&p_1695->g_665,&p_1695->g_665,&p_1695->g_665,&p_1695->g_665};
    uint8_t l_1554 = 0xD6L;
    int i;
    l_1554--;
    return p_11;
}


/* ------------------------------------------ */
/* 
 * reads : p_1695->g_156 p_1695->g_374.f2 p_1695->g_58 p_1695->g_417 p_1695->g_17 p_1695->g_1281 p_1695->g_188.f3 p_1695->g_589 p_1695->g_595 p_1695->g_309.f1 p_1695->g_1232.f7 p_1695->g_980.f2 p_1695->g_309.f2 p_1695->g_1233.f2 p_1695->g_1061.f7 p_1695->g_1061.f6 p_1695->g_614.f7 p_1695->g_71 p_1695->g_110 p_1695->g_1518 p_1695->g_1526 p_1695->g_492 p_1695->g_338 p_1695->g_300 p_1695->g_1519 p_1695->g_1073.f0
 * writes: p_1695->g_156 p_1695->g_374.f2 p_1695->g_980.f3 p_1695->g_59 p_1695->g_188.f3 p_1695->g_71 p_1695->g_375.f4 p_1695->g_217 p_1695->g_338 p_1695->g_17 p_1695->g_980.f2 p_1695->g_309.f2 p_1695->g_1233.f2 p_1695->g_1061.f7 p_1695->g_823.f6 p_1695->g_110 p_1695->g_492 p_1695->g_1539 p_1695->g_300
 */
int32_t * func_13(int32_t * p_14, int64_t  p_15, struct S2 * p_1695)
{ /* block id: 745 */
    uint16_t l_1444 = 1UL;
    int32_t *l_1449 = &p_1695->g_17;
    int32_t ******l_1461[5][9] = {{&p_1695->g_807,&p_1695->g_807,(void*)0,&p_1695->g_807,&p_1695->g_807,&p_1695->g_807,&p_1695->g_807,(void*)0,&p_1695->g_807},{&p_1695->g_807,&p_1695->g_807,(void*)0,&p_1695->g_807,&p_1695->g_807,&p_1695->g_807,&p_1695->g_807,(void*)0,&p_1695->g_807},{&p_1695->g_807,&p_1695->g_807,(void*)0,&p_1695->g_807,&p_1695->g_807,&p_1695->g_807,&p_1695->g_807,(void*)0,&p_1695->g_807},{&p_1695->g_807,&p_1695->g_807,(void*)0,&p_1695->g_807,&p_1695->g_807,&p_1695->g_807,&p_1695->g_807,(void*)0,&p_1695->g_807},{&p_1695->g_807,&p_1695->g_807,(void*)0,&p_1695->g_807,&p_1695->g_807,&p_1695->g_807,&p_1695->g_807,(void*)0,&p_1695->g_807}};
    int8_t **l_1520 = &p_1695->g_1519;
    int8_t **l_1521 = (void*)0;
    int16_t *l_1531 = &p_1695->g_338;
    int32_t l_1538 = 4L;
    struct S0 **l_1540[7][9] = {{&p_1695->g_1191[2][2],(void*)0,(void*)0,&p_1695->g_1191[0][1],(void*)0,(void*)0,&p_1695->g_1191[2][2],&p_1695->g_1191[1][0],(void*)0},{&p_1695->g_1191[2][2],(void*)0,(void*)0,&p_1695->g_1191[0][1],(void*)0,(void*)0,&p_1695->g_1191[2][2],&p_1695->g_1191[1][0],(void*)0},{&p_1695->g_1191[2][2],(void*)0,(void*)0,&p_1695->g_1191[0][1],(void*)0,(void*)0,&p_1695->g_1191[2][2],&p_1695->g_1191[1][0],(void*)0},{&p_1695->g_1191[2][2],(void*)0,(void*)0,&p_1695->g_1191[0][1],(void*)0,(void*)0,&p_1695->g_1191[2][2],&p_1695->g_1191[1][0],(void*)0},{&p_1695->g_1191[2][2],(void*)0,(void*)0,&p_1695->g_1191[0][1],(void*)0,(void*)0,&p_1695->g_1191[2][2],&p_1695->g_1191[1][0],(void*)0},{&p_1695->g_1191[2][2],(void*)0,(void*)0,&p_1695->g_1191[0][1],(void*)0,(void*)0,&p_1695->g_1191[2][2],&p_1695->g_1191[1][0],(void*)0},{&p_1695->g_1191[2][2],(void*)0,(void*)0,&p_1695->g_1191[0][1],(void*)0,(void*)0,&p_1695->g_1191[2][2],&p_1695->g_1191[1][0],(void*)0}};
    uint32_t *l_1541[7];
    uint64_t **l_1544 = &p_1695->g_1188;
    int8_t l_1545 = (-6L);
    int i, j;
    for (i = 0; i < 7; i++)
        l_1541[i] = &p_1695->g_196;
    for (p_1695->g_156 = 0; (p_1695->g_156 <= 0); p_1695->g_156 += 1)
    { /* block id: 748 */
        uint32_t *l_1450[7] = {&p_1695->g_936,&p_1695->g_936,&p_1695->g_936,&p_1695->g_936,&p_1695->g_936,&p_1695->g_936,&p_1695->g_936};
        int32_t l_1451[10][10][2] = {{{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L}},{{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L}},{{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L}},{{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L}},{{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L}},{{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L}},{{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L}},{{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L}},{{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L}},{{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L},{0x0628700EL,0x0D1FF555L}}};
        int32_t *l_1458 = (void*)0;
        int32_t ******l_1460 = &p_1695->g_807;
        struct S0 *l_1468 = &p_1695->g_533;
        int8_t *l_1490 = &p_1695->g_980.f6;
        uint8_t l_1503[1][6];
        int64_t l_1509 = 0x6AA56DD290AF8BF5L;
        int16_t l_1512 = 0x3010L;
        uint8_t l_1513 = 0x57L;
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 6; j++)
                l_1503[i][j] = 0xE6L;
        }
        for (p_1695->g_374.f2 = 0; (p_1695->g_374.f2 <= 0); p_1695->g_374.f2 += 1)
        { /* block id: 751 */
            uint16_t l_1445 = 65535UL;
            struct S0 *l_1469[8][9] = {{(void*)0,&p_1695->g_823[4],&p_1695->g_1236,&p_1695->g_590[0][1],&p_1695->g_309,(void*)0,(void*)0,&p_1695->g_309,&p_1695->g_590[0][1]},{(void*)0,&p_1695->g_823[4],&p_1695->g_1236,&p_1695->g_590[0][1],&p_1695->g_309,(void*)0,(void*)0,&p_1695->g_309,&p_1695->g_590[0][1]},{(void*)0,&p_1695->g_823[4],&p_1695->g_1236,&p_1695->g_590[0][1],&p_1695->g_309,(void*)0,(void*)0,&p_1695->g_309,&p_1695->g_590[0][1]},{(void*)0,&p_1695->g_823[4],&p_1695->g_1236,&p_1695->g_590[0][1],&p_1695->g_309,(void*)0,(void*)0,&p_1695->g_309,&p_1695->g_590[0][1]},{(void*)0,&p_1695->g_823[4],&p_1695->g_1236,&p_1695->g_590[0][1],&p_1695->g_309,(void*)0,(void*)0,&p_1695->g_309,&p_1695->g_590[0][1]},{(void*)0,&p_1695->g_823[4],&p_1695->g_1236,&p_1695->g_590[0][1],&p_1695->g_309,(void*)0,(void*)0,&p_1695->g_309,&p_1695->g_590[0][1]},{(void*)0,&p_1695->g_823[4],&p_1695->g_1236,&p_1695->g_590[0][1],&p_1695->g_309,(void*)0,(void*)0,&p_1695->g_309,&p_1695->g_590[0][1]},{(void*)0,&p_1695->g_823[4],&p_1695->g_1236,&p_1695->g_590[0][1],&p_1695->g_309,(void*)0,(void*)0,&p_1695->g_309,&p_1695->g_590[0][1]}};
            int i, j;
            for (p_1695->g_980.f3 = 0; (p_1695->g_980.f3 <= 0); p_1695->g_980.f3 += 1)
            { /* block id: 754 */
                uint8_t l_1446 = 0x25L;
                l_1445 |= ((safe_div_func_uint64_t_u_u(GROUP_DIVERGE(2, 1), p_15)) , (!l_1444));
                --l_1446;
            }
            (*p_1695->g_58) = p_14;
            for (p_1695->g_188.f3 = 0; (p_1695->g_188.f3 <= 0); p_1695->g_188.f3 += 1)
            { /* block id: 761 */
                int64_t *l_1452 = (void*)0;
                int64_t *l_1453 = (void*)0;
                int64_t *l_1454 = &p_1695->g_217;
                int32_t l_1457 = (-5L);
                int32_t ******l_1459[6][7][1] = {{{&p_1695->g_807},{&p_1695->g_807},{&p_1695->g_807},{&p_1695->g_807},{&p_1695->g_807},{&p_1695->g_807},{&p_1695->g_807}},{{&p_1695->g_807},{&p_1695->g_807},{&p_1695->g_807},{&p_1695->g_807},{&p_1695->g_807},{&p_1695->g_807},{&p_1695->g_807}},{{&p_1695->g_807},{&p_1695->g_807},{&p_1695->g_807},{&p_1695->g_807},{&p_1695->g_807},{&p_1695->g_807},{&p_1695->g_807}},{{&p_1695->g_807},{&p_1695->g_807},{&p_1695->g_807},{&p_1695->g_807},{&p_1695->g_807},{&p_1695->g_807},{&p_1695->g_807}},{{&p_1695->g_807},{&p_1695->g_807},{&p_1695->g_807},{&p_1695->g_807},{&p_1695->g_807},{&p_1695->g_807},{&p_1695->g_807}},{{&p_1695->g_807},{&p_1695->g_807},{&p_1695->g_807},{&p_1695->g_807},{&p_1695->g_807},{&p_1695->g_807},{&p_1695->g_807}}};
                int i, j, k;
                l_1458 = func_23(l_1449, p_14, (((((l_1450[0] = l_1450[0]) != ((~((*p_1695->g_417) = (l_1451[9][2][1] , p_15))) , (void*)0)) == 0x4DL) < ((*l_1454) = p_1695->g_156)) ^ (!(safe_div_func_uint64_t_u_u(p_15, l_1457)))), l_1449, p_1695);
                l_1458 = (p_14 = func_28(((l_1460 = l_1459[4][1][0]) != l_1461[4][7]), (safe_sub_func_int32_t_s_s(((((((safe_sub_func_int8_t_s_s(((safe_add_func_int8_t_s_s((l_1468 != l_1469[0][6]), GROUP_DIVERGE(0, 1))) ^ ((((((safe_mod_func_uint64_t_u_u(6UL, 1UL)) > 0x6BB8B244587BEAB0L) && (safe_mul_func_int16_t_s_s(p_15, ((GROUP_DIVERGE(1, 1) >= (~(p_15 && 0L))) >= p_15)))) & (*l_1458)) | 0UL) == 1UL)), p_15)) , (*l_1458)) , p_1695->g_17) | (*p_1695->g_595)) , FAKE_DIVERGE(p_1695->global_1_offset, get_global_id(1), 10)) == 0UL), GROUP_DIVERGE(1, 1))), &l_1451[8][6][1], p_1695->g_1232.f7, p_14, p_1695));
            }
            for (p_1695->g_980.f2 = 0; (p_1695->g_980.f2 <= 0); p_1695->g_980.f2 += 1)
            { /* block id: 772 */
                (*l_1449) = (*p_1695->g_595);
                for (p_1695->g_309.f2 = 0; (p_1695->g_309.f2 <= 0); p_1695->g_309.f2 += 1)
                { /* block id: 776 */
                    int32_t l_1474 = 0x5E9178CBL;
                    for (p_1695->g_1233.f2 = 0; (p_1695->g_1233.f2 <= 0); p_1695->g_1233.f2 += 1)
                    { /* block id: 779 */
                        return p_14;
                    }
                    if (l_1474)
                        break;
                }
            }
        }
        for (p_1695->g_1061.f7 = 0; (p_1695->g_1061.f7 <= 0); p_1695->g_1061.f7 += 1)
        { /* block id: 788 */
            int32_t l_1475 = 0x0E8498A4L;
            int16_t l_1476 = 0x24D4L;
            int32_t l_1477 = 0x7FAEF3BEL;
            int32_t l_1478 = (-1L);
            int32_t l_1479 = 8L;
            int32_t l_1480 = 0x297D3BF0L;
            int32_t l_1481[10] = {(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L)};
            uint32_t l_1482 = 3UL;
            int8_t *l_1489 = &p_1695->g_823[0].f6;
            int64_t l_1504[10] = {0L,0L,0L,0L,0L,0L,0L,0L,0L,0L};
            uint16_t *l_1505 = (void*)0;
            uint16_t *l_1506[10][5][2] = {{{(void*)0,&l_1444},{(void*)0,&l_1444},{(void*)0,&l_1444},{(void*)0,&l_1444},{(void*)0,&l_1444}},{{(void*)0,&l_1444},{(void*)0,&l_1444},{(void*)0,&l_1444},{(void*)0,&l_1444},{(void*)0,&l_1444}},{{(void*)0,&l_1444},{(void*)0,&l_1444},{(void*)0,&l_1444},{(void*)0,&l_1444},{(void*)0,&l_1444}},{{(void*)0,&l_1444},{(void*)0,&l_1444},{(void*)0,&l_1444},{(void*)0,&l_1444},{(void*)0,&l_1444}},{{(void*)0,&l_1444},{(void*)0,&l_1444},{(void*)0,&l_1444},{(void*)0,&l_1444},{(void*)0,&l_1444}},{{(void*)0,&l_1444},{(void*)0,&l_1444},{(void*)0,&l_1444},{(void*)0,&l_1444},{(void*)0,&l_1444}},{{(void*)0,&l_1444},{(void*)0,&l_1444},{(void*)0,&l_1444},{(void*)0,&l_1444},{(void*)0,&l_1444}},{{(void*)0,&l_1444},{(void*)0,&l_1444},{(void*)0,&l_1444},{(void*)0,&l_1444},{(void*)0,&l_1444}},{{(void*)0,&l_1444},{(void*)0,&l_1444},{(void*)0,&l_1444},{(void*)0,&l_1444},{(void*)0,&l_1444}},{{(void*)0,&l_1444},{(void*)0,&l_1444},{(void*)0,&l_1444},{(void*)0,&l_1444},{(void*)0,&l_1444}}};
            int i, j, k;
            l_1482--;
            if ((l_1476 != ((((((255UL <= (l_1478 = (0x7D49L | (safe_rshift_func_int8_t_s_u(((safe_mod_func_uint16_t_u_u((((*l_1489) = p_15) & (((!(l_1490 == (void*)0)) == (safe_sub_func_uint16_t_u_u((l_1480 = (safe_rshift_func_uint8_t_u_u((safe_rshift_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s((safe_add_func_uint32_t_u_u((safe_mod_func_int64_t_s_s(l_1503[0][0], 1UL)), (l_1504[5] > (*p_1695->g_595)))), 5)), l_1480)), p_15))), p_15))) < p_15)), p_15)) == p_15), l_1504[5]))))) == p_1695->g_1061.f6) < p_15) <= p_1695->g_614.f7) > p_15) >= 1L)))
            { /* block id: 793 */
                int i, j;
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                p_1695->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 7)), permutations[(safe_mod_func_uint32_t_u_u(((safe_rshift_func_int16_t_s_u(0x5076L, 13)) , l_1480), 10))][(safe_mod_func_uint32_t_u_u(p_1695->tid, 7))]));
                if (l_1509)
                    break;
                return p_14;
            }
            else
            { /* block id: 799 */
                int64_t l_1510 = (-1L);
                int32_t l_1511[1];
                int i;
                for (i = 0; i < 1; i++)
                    l_1511[i] = 0x2C3903FDL;
                ++l_1513;
                for (p_1695->g_71 = 0; (p_1695->g_71 >= 0); p_1695->g_71 -= 1)
                { /* block id: 803 */
                    return p_14;
                }
                for (p_1695->g_110 = 0; (p_1695->g_110 <= 0); p_1695->g_110 += 1)
                { /* block id: 808 */
                    (*p_1695->g_58) = &l_1480;
                }
            }
            if (l_1476)
                break;
            if ((*p_1695->g_595))
                continue;
        }
    }
    (*l_1449) = (!(safe_mul_func_int8_t_s_s(0L, (((l_1520 = p_1695->g_1518) != l_1521) , p_15))));
    l_1545 &= (safe_lshift_func_int16_t_s_u((safe_lshift_func_int8_t_s_u(((p_1695->g_1526[6][6][2] , (((p_1695->g_492--) != p_15) < (l_1531 == (void*)0))) || (((safe_div_func_int8_t_s_s((GROUP_DIVERGE(0, 1) >= (((*l_1449) = p_15) < ((((safe_lshift_func_uint8_t_u_u(((safe_div_func_int32_t_s_s(((p_1695->g_1539 = (((*l_1531) |= l_1538) , &p_1695->g_1191[0][4])) == l_1540[3][1]), (p_1695->g_300[1]++))) || ((((((l_1544 == (void*)0) , p_15) | p_15) , 0x0DL) <= p_15) || (**p_1695->g_1518))), 4)) > p_15) | 0UL) | p_15))), (**p_1695->g_1518))) | 0x475ADB6E2759977AL) <= p_1695->g_1073.f0)), p_15)), 12));
    return p_14;
}


/* ------------------------------------------ */
/* 
 * reads : p_1695->g_1294 p_1695->g_374.f5 p_1695->g_17 p_1695->g_804 p_1695->g_417 p_1695->g_1322 p_1695->g_58 p_1695->g_1323 p_1695->g_309.f3 p_1695->g_595 p_1695->g_309.f1 p_1695->g_619 p_1695->g_309.f7 p_1695->g_1151.f7 p_1695->g_1151.f2 p_1695->g_344 p_1695->g_1407 p_1695->g_188.f7 p_1695->g_807 p_1695->g_808 p_1695->g_1232.f2 p_1695->g_980.f7 p_1695->g_590
 * writes: p_1695->g_856 p_1695->g_71 p_1695->g_375.f4 p_1695->g_1151.f7 p_1695->g_17 p_1695->g_59 p_1695->g_309.f3 p_1695->g_1061.f7 p_1695->g_104 p_1695->g_619 p_1695->g_309.f7 p_1695->g_1061.f6 p_1695->g_936 p_1695->g_1151.f2 p_1695->g_980.f2 p_1695->g_980.f7 p_1695->g_1407 p_1695->g_1323 p_1695->g_1232.f2
 */
int64_t  func_18(int64_t  p_19, int32_t * p_20, int32_t  p_21, int64_t  p_22, struct S2 * p_1695)
{ /* block id: 654 */
    volatile struct S0 *l_1296 = &p_1695->g_856;
    int16_t **l_1305 = &p_1695->g_418[7][8];
    int16_t **l_1306[4];
    int32_t l_1313 = 1L;
    int64_t l_1316[3][10][4] = {{{(-3L),(-6L),0x103B1F9430E57CF9L,0x53C27549EA3C55A7L},{(-3L),(-6L),0x103B1F9430E57CF9L,0x53C27549EA3C55A7L},{(-3L),(-6L),0x103B1F9430E57CF9L,0x53C27549EA3C55A7L},{(-3L),(-6L),0x103B1F9430E57CF9L,0x53C27549EA3C55A7L},{(-3L),(-6L),0x103B1F9430E57CF9L,0x53C27549EA3C55A7L},{(-3L),(-6L),0x103B1F9430E57CF9L,0x53C27549EA3C55A7L},{(-3L),(-6L),0x103B1F9430E57CF9L,0x53C27549EA3C55A7L},{(-3L),(-6L),0x103B1F9430E57CF9L,0x53C27549EA3C55A7L},{(-3L),(-6L),0x103B1F9430E57CF9L,0x53C27549EA3C55A7L},{(-3L),(-6L),0x103B1F9430E57CF9L,0x53C27549EA3C55A7L}},{{(-3L),(-6L),0x103B1F9430E57CF9L,0x53C27549EA3C55A7L},{(-3L),(-6L),0x103B1F9430E57CF9L,0x53C27549EA3C55A7L},{(-3L),(-6L),0x103B1F9430E57CF9L,0x53C27549EA3C55A7L},{(-3L),(-6L),0x103B1F9430E57CF9L,0x53C27549EA3C55A7L},{(-3L),(-6L),0x103B1F9430E57CF9L,0x53C27549EA3C55A7L},{(-3L),(-6L),0x103B1F9430E57CF9L,0x53C27549EA3C55A7L},{(-3L),(-6L),0x103B1F9430E57CF9L,0x53C27549EA3C55A7L},{(-3L),(-6L),0x103B1F9430E57CF9L,0x53C27549EA3C55A7L},{(-3L),(-6L),0x103B1F9430E57CF9L,0x53C27549EA3C55A7L},{(-3L),(-6L),0x103B1F9430E57CF9L,0x53C27549EA3C55A7L}},{{(-3L),(-6L),0x103B1F9430E57CF9L,0x53C27549EA3C55A7L},{(-3L),(-6L),0x103B1F9430E57CF9L,0x53C27549EA3C55A7L},{(-3L),(-6L),0x103B1F9430E57CF9L,0x53C27549EA3C55A7L},{(-3L),(-6L),0x103B1F9430E57CF9L,0x53C27549EA3C55A7L},{(-3L),(-6L),0x103B1F9430E57CF9L,0x53C27549EA3C55A7L},{(-3L),(-6L),0x103B1F9430E57CF9L,0x53C27549EA3C55A7L},{(-3L),(-6L),0x103B1F9430E57CF9L,0x53C27549EA3C55A7L},{(-3L),(-6L),0x103B1F9430E57CF9L,0x53C27549EA3C55A7L},{(-3L),(-6L),0x103B1F9430E57CF9L,0x53C27549EA3C55A7L},{(-3L),(-6L),0x103B1F9430E57CF9L,0x53C27549EA3C55A7L}}};
    int32_t l_1319 = 0x6EC6B6D6L;
    uint32_t l_1320 = 0xF1C327A4L;
    int8_t *l_1321 = &p_1695->g_1151.f7;
    int32_t l_1363[7];
    int64_t l_1378 = 0x06A158EFF629F116L;
    int8_t l_1380[2];
    uint16_t *l_1385 = &p_1695->g_110;
    uint16_t **l_1384 = &l_1385;
    int32_t *l_1395 = (void*)0;
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_1306[i] = &p_1695->g_418[6][2];
    for (i = 0; i < 7; i++)
        l_1363[i] = 0x764DDD4FL;
    for (i = 0; i < 2; i++)
        l_1380[i] = 0x59L;
    (*l_1296) = p_1695->g_1294[0];
    if ((safe_mul_func_int16_t_s_s((((!(((((*l_1321) = (safe_sub_func_int16_t_s_s(((*p_1695->g_417) = (GROUP_DIVERGE(1, 1) ^ ((1L & (safe_mod_func_int32_t_s_s((safe_add_func_uint32_t_u_u(p_1695->g_374.f5, ((l_1305 = l_1305) != l_1306[2]))), (*p_20)))) > (safe_div_func_int16_t_s_s((((safe_sub_func_uint16_t_u_u((((safe_lshift_func_int8_t_s_u(l_1313, (((((safe_mul_func_uint8_t_u_u(l_1316[0][9][1], (p_21 >= (((safe_mod_func_uint8_t_u_u(l_1316[1][4][2], 0x4EL)) && p_1695->g_804[0]) ^ 0xCAAF2700E49222BEL)))) ^ 18446744073709551615UL) ^ l_1319) , l_1316[0][9][1]) == l_1316[1][9][0]))) & (*p_20)) & p_21), 65535UL)) , p_21) != p_22), l_1320))))), (-1L)))) > (-1L)) && 0x2DF1AA7986EE4A7EL) || l_1316[0][1][1])) == FAKE_DIVERGE(p_1695->group_0_offset, get_group_id(0), 10)) && FAKE_DIVERGE(p_1695->group_1_offset, get_group_id(1), 10)), 0UL)))
    { /* block id: 659 */
        int32_t *l_1324 = &p_1695->g_619;
        int32_t *l_1372 = &p_1695->g_17;
        (*p_20) = ((void*)0 != &p_1695->g_936);
        if (l_1316[0][0][2])
        { /* block id: 661 */
            uint32_t l_1325 = 0xC4E44DF1L;
            (*l_1296) = p_1695->g_1322;
            (*p_1695->g_58) = (void*)0;
            (*p_1695->g_58) = (p_1695->g_1323 , l_1324);
            --l_1325;
        }
        else
        { /* block id: 666 */
            int32_t l_1360 = 0x65CAB17FL;
            int64_t l_1366 = 0x30B6FE7CDDAEA56AL;
            uint8_t **l_1375 = &p_1695->g_164[2][4];
            for (p_1695->g_309.f3 = 21; (p_1695->g_309.f3 == 17); p_1695->g_309.f3 = safe_sub_func_int32_t_s_s(p_1695->g_309.f3, 8))
            { /* block id: 669 */
                uint32_t l_1358 = 4294967295UL;
                int8_t l_1361 = 1L;
                int8_t l_1364 = (-8L);
                int32_t *l_1371 = &p_1695->g_619;
                for (p_1695->g_71 = 0; (p_1695->g_71 > 21); p_1695->g_71++)
                { /* block id: 672 */
                    int32_t l_1362[3][4][1] = {{{(-7L)},{(-7L)},{(-7L)},{(-7L)}},{{(-7L)},{(-7L)},{(-7L)},{(-7L)}},{{(-7L)},{(-7L)},{(-7L)},{(-7L)}}};
                    int i, j, k;
                    for (p_1695->g_1061.f7 = 0; (p_1695->g_1061.f7 <= (-19)); p_1695->g_1061.f7 = safe_sub_func_uint8_t_u_u(p_1695->g_1061.f7, 1))
                    { /* block id: 675 */
                        int16_t l_1338 = (-1L);
                        uint64_t *l_1359 = &p_1695->g_104;
                        l_1363[2] = (safe_sub_func_uint32_t_u_u(((!(((void*)0 != l_1296) >= (0x834B218EL != l_1338))) ^ 0xD1B9521A5F170D3FL), (safe_add_func_int64_t_s_s(((safe_rshift_func_uint16_t_u_u(((safe_mul_func_int16_t_s_s((+(l_1313 = ((safe_rshift_func_int8_t_s_s(((safe_sub_func_int32_t_s_s((safe_mod_func_uint16_t_u_u((p_22 <= ((*l_1359) = (safe_unary_minus_func_uint8_t_u((safe_sub_func_uint64_t_u_u((0x561A975FL >= (safe_lshift_func_int8_t_s_u(0L, (((safe_sub_func_int16_t_s_s(p_19, l_1358)) | 0UL) >= 4294967295UL)))), p_19)))))), l_1360)), p_19)) ^ l_1320), l_1338)) ^ l_1361))), p_21)) , l_1362[1][1][0]), l_1362[1][1][0])) > l_1358), 0x4A90EEDA60703D8EL))));
                        l_1362[1][1][0] = l_1316[0][9][1];
                        if ((*p_1695->g_595))
                            continue;
                        (*l_1324) &= (*p_20);
                    }
                    (*p_20) = ((*l_1324) = (*l_1324));
                    for (p_1695->g_309.f7 = 0; (p_1695->g_309.f7 <= 0); p_1695->g_309.f7 += 1)
                    { /* block id: 687 */
                        int32_t l_1365 = (-1L);
                        int8_t *l_1367[10][6] = {{(void*)0,&p_1695->g_1233.f7,&p_1695->g_533.f6,(void*)0,&p_1695->g_1233.f7,(void*)0},{(void*)0,&p_1695->g_1233.f7,&p_1695->g_533.f6,(void*)0,&p_1695->g_1233.f7,(void*)0},{(void*)0,&p_1695->g_1233.f7,&p_1695->g_533.f6,(void*)0,&p_1695->g_1233.f7,(void*)0},{(void*)0,&p_1695->g_1233.f7,&p_1695->g_533.f6,(void*)0,&p_1695->g_1233.f7,(void*)0},{(void*)0,&p_1695->g_1233.f7,&p_1695->g_533.f6,(void*)0,&p_1695->g_1233.f7,(void*)0},{(void*)0,&p_1695->g_1233.f7,&p_1695->g_533.f6,(void*)0,&p_1695->g_1233.f7,(void*)0},{(void*)0,&p_1695->g_1233.f7,&p_1695->g_533.f6,(void*)0,&p_1695->g_1233.f7,(void*)0},{(void*)0,&p_1695->g_1233.f7,&p_1695->g_533.f6,(void*)0,&p_1695->g_1233.f7,(void*)0},{(void*)0,&p_1695->g_1233.f7,&p_1695->g_533.f6,(void*)0,&p_1695->g_1233.f7,(void*)0},{(void*)0,&p_1695->g_1233.f7,&p_1695->g_533.f6,(void*)0,&p_1695->g_1233.f7,(void*)0}};
                        int8_t **l_1368 = &l_1321;
                        uint32_t *l_1370 = &p_1695->g_936;
                        int i, j;
                        if (l_1364)
                            break;
                        if ((*p_1695->g_595))
                            break;
                        l_1365 ^= (*p_20);
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        p_1695->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 7)), permutations[(safe_mod_func_uint32_t_u_u(((((l_1362[1][2][0] , l_1366) , (l_1366 , (((*p_1695->g_595) , l_1367[3][1]) != ((*l_1368) = l_1367[8][0])))) , (safe_unary_minus_func_int8_t_s(l_1362[1][1][0]))) <= ((*l_1370) = (((p_1695->g_1061.f6 = l_1360) , &l_1362[1][2][0]) == p_20))), 10))][(safe_mod_func_uint32_t_u_u(p_1695->tid, 7))]));
                    }
                    l_1372 = ((*p_1695->g_58) = l_1371);
                }
                l_1313 = ((*l_1372) = (safe_lshift_func_uint8_t_u_s((l_1375 != &p_1695->g_164[0][4]), 5)));
            }
        }
    }
    else
    { /* block id: 705 */
        uint64_t l_1381 = 0xCA793A1DAFD37608L;
        uint32_t l_1389 = 0UL;
        int32_t *l_1396 = &l_1363[2];
        uint32_t ***l_1410 = &p_1695->g_1408;
        int32_t l_1417 = 0L;
        int32_t l_1418 = 0L;
        int32_t l_1422 = 0x08B587AFL;
        int32_t l_1430 = 0x75B6FE77L;
        int32_t ***l_1440 = &p_1695->g_58;
        for (p_1695->g_1151.f7 = 8; (p_1695->g_1151.f7 >= 0); p_1695->g_1151.f7 -= 1)
        { /* block id: 708 */
            int16_t l_1377 = 0x706DL;
            int32_t l_1379 = 0x528F83C4L;
            int32_t *l_1387 = &l_1379;
            int8_t l_1393 = 0x26L;
            int32_t l_1423 = 0x74502D6DL;
            int32_t l_1424 = 0x73F1FF1BL;
            int32_t l_1425 = (-1L);
            int32_t l_1426 = (-9L);
            int32_t l_1427 = (-1L);
            int32_t l_1428 = (-7L);
            int32_t l_1433 = 0x7E8769B0L;
            int32_t l_1434 = 0x529D0041L;
            uint32_t l_1436 = 8UL;
            int32_t ***l_1439[4];
            int i;
            for (i = 0; i < 4; i++)
                l_1439[i] = &p_1695->g_58;
            for (p_1695->g_1151.f2 = 0; (p_1695->g_1151.f2 <= 2); p_1695->g_1151.f2 += 1)
            { /* block id: 711 */
                int32_t *l_1376[5] = {&p_1695->g_17,&p_1695->g_17,&p_1695->g_17,&p_1695->g_17,&p_1695->g_17};
                int i;
                l_1381++;
                if (p_1695->g_344[(p_1695->g_1151.f2 + 4)])
                    continue;
            }
            (*l_1387) ^= ((*p_20) = ((void*)0 == l_1384));
            for (p_1695->g_980.f2 = 0; (p_1695->g_980.f2 <= 2); p_1695->g_980.f2 += 1)
            { /* block id: 719 */
                int32_t *l_1388 = (void*)0;
                uint32_t *l_1394[2][8][4] = {{{&p_1695->g_374.f2,&p_1695->g_1236.f2,&p_1695->g_1236.f2,&p_1695->g_374.f2},{&p_1695->g_374.f2,&p_1695->g_1236.f2,&p_1695->g_1236.f2,&p_1695->g_374.f2},{&p_1695->g_374.f2,&p_1695->g_1236.f2,&p_1695->g_1236.f2,&p_1695->g_374.f2},{&p_1695->g_374.f2,&p_1695->g_1236.f2,&p_1695->g_1236.f2,&p_1695->g_374.f2},{&p_1695->g_374.f2,&p_1695->g_1236.f2,&p_1695->g_1236.f2,&p_1695->g_374.f2},{&p_1695->g_374.f2,&p_1695->g_1236.f2,&p_1695->g_1236.f2,&p_1695->g_374.f2},{&p_1695->g_374.f2,&p_1695->g_1236.f2,&p_1695->g_1236.f2,&p_1695->g_374.f2},{&p_1695->g_374.f2,&p_1695->g_1236.f2,&p_1695->g_1236.f2,&p_1695->g_374.f2}},{{&p_1695->g_374.f2,&p_1695->g_1236.f2,&p_1695->g_1236.f2,&p_1695->g_374.f2},{&p_1695->g_374.f2,&p_1695->g_1236.f2,&p_1695->g_1236.f2,&p_1695->g_374.f2},{&p_1695->g_374.f2,&p_1695->g_1236.f2,&p_1695->g_1236.f2,&p_1695->g_374.f2},{&p_1695->g_374.f2,&p_1695->g_1236.f2,&p_1695->g_1236.f2,&p_1695->g_374.f2},{&p_1695->g_374.f2,&p_1695->g_1236.f2,&p_1695->g_1236.f2,&p_1695->g_374.f2},{&p_1695->g_374.f2,&p_1695->g_1236.f2,&p_1695->g_1236.f2,&p_1695->g_374.f2},{&p_1695->g_374.f2,&p_1695->g_1236.f2,&p_1695->g_1236.f2,&p_1695->g_374.f2},{&p_1695->g_374.f2,&p_1695->g_1236.f2,&p_1695->g_1236.f2,&p_1695->g_374.f2}}};
                int32_t l_1416[9][10][2] = {{{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L}},{{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L}},{{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L}},{{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L}},{{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L}},{{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L}},{{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L}},{{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L}},{{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L},{0x54CA9E51L,4L}}};
                int32_t l_1419 = (-6L);
                int32_t l_1431 = 0x284F68A1L;
                int32_t l_1432 = 9L;
                int32_t ***l_1441 = &p_1695->g_58;
                int i, j, k;
                (*p_1695->g_58) = p_20;
                (*p_1695->g_58) = p_20;
                (*p_1695->g_58) = l_1396;
                for (p_1695->g_980.f7 = 0; (p_1695->g_980.f7 <= 2); p_1695->g_980.f7 += 1)
                { /* block id: 726 */
                    uint32_t ****l_1411 = &l_1410;
                    int32_t l_1412 = 0x265E4B19L;
                    uint64_t *l_1413[3][7][2] = {{{&p_1695->g_589,&p_1695->g_721[0]},{&p_1695->g_589,&p_1695->g_721[0]},{&p_1695->g_589,&p_1695->g_721[0]},{&p_1695->g_589,&p_1695->g_721[0]},{&p_1695->g_589,&p_1695->g_721[0]},{&p_1695->g_589,&p_1695->g_721[0]},{&p_1695->g_589,&p_1695->g_721[0]}},{{&p_1695->g_589,&p_1695->g_721[0]},{&p_1695->g_589,&p_1695->g_721[0]},{&p_1695->g_589,&p_1695->g_721[0]},{&p_1695->g_589,&p_1695->g_721[0]},{&p_1695->g_589,&p_1695->g_721[0]},{&p_1695->g_589,&p_1695->g_721[0]},{&p_1695->g_589,&p_1695->g_721[0]}},{{&p_1695->g_589,&p_1695->g_721[0]},{&p_1695->g_589,&p_1695->g_721[0]},{&p_1695->g_589,&p_1695->g_721[0]},{&p_1695->g_589,&p_1695->g_721[0]},{&p_1695->g_589,&p_1695->g_721[0]},{&p_1695->g_589,&p_1695->g_721[0]},{&p_1695->g_589,&p_1695->g_721[0]}}};
                    int32_t ***l_1415 = &p_1695->g_58;
                    int32_t ****l_1414[1];
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                        l_1414[i] = &l_1415;
                    (*p_1695->g_58) = &l_1379;
                    l_1416[4][3][0] = (((safe_mul_func_uint16_t_u_u(((+(((((p_1695->g_1323 = (safe_add_func_int32_t_s_s(0x094803F4L, (((p_22 & (0x27L >= ((safe_lshift_func_uint8_t_u_u(((((((&p_20 == &l_1395) , (safe_lshift_func_int16_t_s_u(((p_1695->g_1407 = p_1695->g_1407) != ((*l_1411) = l_1410)), 4))) > (-1L)) | (p_1695->g_188.f7 != p_19)) != 7UL) | l_1412), 6)) < 1L))) > p_21) > 1UL)))) != p_19) | (*l_1396)) , l_1306[2]) == &p_1695->g_418[7][2])) >= 0x7DBA77BF0AF4BBA5L), 65535UL)) , l_1414[0]) != (*p_1695->g_807));
                    for (p_1695->g_1232.f2 = 0; (p_1695->g_1232.f2 <= 2); p_1695->g_1232.f2 += 1)
                    { /* block id: 734 */
                        int32_t l_1420 = 0x65CA612AL;
                        int32_t l_1421 = (-3L);
                        int32_t l_1429 = (-1L);
                        int32_t l_1435 = 0x17B517C1L;
                        int i, j;
                        (*l_1296) = p_1695->g_590[p_1695->g_1232.f2][p_1695->g_980.f7];
                        --l_1436;
                    }
                    (*p_20) ^= ((l_1440 = l_1439[2]) != l_1441);
                }
            }
        }
    }
    return p_21;
}


/* ------------------------------------------ */
/* 
 * reads : p_1695->g_17 p_1695->g_1281 p_1695->g_417 p_1695->g_188.f3 p_1695->g_589
 * writes: p_1695->g_71 p_1695->g_375.f4 p_1695->g_338 p_1695->g_217 p_1695->g_17
 */
int32_t * func_23(int32_t * p_24, int32_t * p_25, int16_t  p_26, int32_t * p_27, struct S2 * p_1695)
{ /* block id: 643 */
    uint8_t l_1262 = 7UL;
    int32_t *l_1265 = &p_1695->g_17;
    uint32_t *l_1279 = &p_1695->g_980.f2;
    uint32_t **l_1278[10][9][2] = {{{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279}},{{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279}},{{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279}},{{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279}},{{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279}},{{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279}},{{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279}},{{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279}},{{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279}},{{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279},{&l_1279,&l_1279}}};
    uint32_t ***l_1280 = &l_1278[3][2][1];
    struct S0 **l_1283[10];
    int16_t *l_1284 = &p_1695->g_338;
    int32_t l_1285[10] = {0L,0L,0L,0L,0L,0L,0L,0L,0L,0L};
    int i, j, k;
    for (i = 0; i < 10; i++)
        l_1283[i] = &p_1695->g_1191[0][4];
    l_1262++;
    l_1265 = l_1265;
    l_1285[0] |= ((safe_add_func_int16_t_s_s(((safe_div_func_int8_t_s_s((((((safe_lshift_func_uint8_t_u_u((((*l_1265) == (((safe_lshift_func_int16_t_s_u(((*l_1284) = ((safe_lshift_func_int16_t_s_u(((*p_1695->g_417) = (((*l_1280) = l_1278[3][2][1]) == p_1695->g_1281)), (((p_26 && ((void*)0 != l_1283[0])) < p_1695->g_188.f3) >= ((!(*l_1265)) ^ (*l_1265))))) , p_26)), p_1695->g_589)) <= p_26) != 0L)) < 0L), 1)) & p_26) >= 0x6B34L) || 4294967295UL) & 0L), 252UL)) && p_26), p_26)) ^ 0xEC391AAF3DFE1C32L);
    (*p_27) ^= (safe_sub_func_int64_t_s_s((~1L), (p_1695->g_217 = (safe_rshift_func_int8_t_s_s(4L, 1)))));
    return p_24;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_28(uint32_t  p_29, int64_t  p_30, int32_t * p_31, uint32_t  p_32, int32_t * p_33, struct S2 * p_1695)
{ /* block id: 641 */
    int32_t *l_1261 = &p_1695->g_17;
    return l_1261;
}


/* ------------------------------------------ */
/* 
 * reads : p_1695->g_1073.f3 p_1695->g_164 p_1695->g_595 p_1695->g_374.f2 p_1695->g_1232 p_1695->g_1236
 * writes: p_1695->g_309.f1 p_1695->g_374.f2 p_1695->g_1233 p_1695->g_980
 */
int16_t  func_36(int32_t * p_37, uint32_t  p_38, int64_t  p_39, struct S2 * p_1695)
{ /* block id: 629 */
    uint64_t **l_1227 = &p_1695->g_1188;
    int8_t *l_1228 = &p_1695->g_980.f7;
    int32_t l_1229 = (-1L);
    int32_t l_1239 = 1L;
    int32_t *l_1240 = &l_1239;
    int32_t *l_1241 = &p_1695->g_619;
    int32_t *l_1242 = &p_1695->g_665;
    int32_t *l_1243 = (void*)0;
    int32_t *l_1244 = &l_1229;
    int32_t *l_1245 = (void*)0;
    int32_t *l_1246 = &p_1695->g_665;
    int32_t *l_1247 = &l_1239;
    int32_t *l_1248 = (void*)0;
    int32_t *l_1249[3][2] = {{&p_1695->g_665,(void*)0},{&p_1695->g_665,(void*)0},{&p_1695->g_665,(void*)0}};
    int8_t l_1250[7] = {0x20L,0x20L,0x20L,0x20L,0x20L,0x20L,0x20L};
    uint8_t l_1251 = 0UL;
    int i, j;
    (*p_1695->g_595) = (0x0EA44D8BL & ((((((!p_1695->g_1073.f3) | ((l_1227 == &p_1695->g_460) | 1UL)) , l_1228) == p_1695->g_164[2][4]) > l_1229) , (&p_1695->g_804[0] != &p_1695->g_804[0])));
    for (p_1695->g_374.f2 = 0; (p_1695->g_374.f2 <= 13); p_1695->g_374.f2++)
    { /* block id: 633 */
        uint64_t *l_1234[4] = {&p_1695->g_589,&p_1695->g_589,&p_1695->g_589,&p_1695->g_589};
        int32_t l_1235 = 0L;
        struct S0 *l_1238 = &p_1695->g_980;
        int i;
        p_1695->g_1233 = p_1695->g_1232;
        (*l_1238) = ((p_38 != (l_1235 = 0xFFD9DC4802D35DA8L)) , p_1695->g_1236);
    }
    l_1251--;
    return p_38;
}


/* ------------------------------------------ */
/* 
 * reads : p_1695->g_338 p_1695->g_189 p_1695->g_188 p_1695->g_309.f0 p_1695->g_492 p_1695->g_417 p_1695->g_619 p_1695->g_58 p_1695->g_59 p_1695->g_17 p_1695->g_591 p_1695->g_590 p_1695->g_196 p_1695->g_642 p_1695->g_178 p_1695->g_1003 p_1695->g_1061 p_1695->g_980.f4 p_1695->g_804 p_1695->g_72.f5 p_1695->g_274 p_1695->g_1072 p_1695->g_1073 p_1695->g_181 p_1695->g_182 p_1695->g_129 p_1695->g_164 p_1695->g_300 p_1695->g_374.f4 p_1695->g_374.f6 p_1695->g_902.f0 p_1695->g_823.f4 p_1695->g_374.f3 p_1695->g_375.f4 p_1695->g_375.f1 p_1695->g_374.f0 p_1695->g_533.f6 p_1695->g_490.f5 p_1695->g_1187 p_1695->g_1190 p_1695->g_823 p_1695->g_1196 p_1695->g_217 p_1695->g_614.f6 p_1695->g_980.f2 p_1695->g_594 p_1695->g_595 p_1695->g_1224
 * writes: p_1695->g_71 p_1695->g_375.f4 p_1695->g_17 p_1695->g_196 p_1695->g_309 p_1695->g_178 p_1695->g_188.f7 p_1695->g_217 p_1695->g_590 p_1695->g_1072 p_1695->g_619 p_1695->g_59 p_1695->g_721 p_1695->g_374.f6 p_1695->g_980.f4 p_1695->g_192.f2 p_1695->g_164 p_1695->g_375.f1 p_1695->g_1061.f7 p_1695->g_218 p_1695->g_1150 p_1695->g_1151 p_1695->g_1187 p_1695->g_1191 p_1695->g_110 p_1695->g_1224
 */
uint32_t  func_40(int8_t  p_41, uint32_t  p_42, int32_t * p_43, int32_t  p_44, struct S2 * p_1695)
{ /* block id: 326 */
    uint32_t l_624[8][9][3] = {{{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L}},{{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L}},{{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L}},{{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L}},{{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L}},{{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L}},{{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L}},{{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L},{0x5F2E309BL,4294967289UL,0x58474A11L}}};
    uint64_t *l_637[2];
    int8_t *l_645[9];
    uint16_t *l_671 = &p_1695->g_110;
    uint16_t **l_670 = &l_671;
    int32_t ***l_703 = &p_1695->g_58;
    int32_t ****l_702 = &l_703;
    uint16_t l_717[3];
    uint64_t **l_740 = (void*)0;
    uint64_t ***l_739 = &l_740;
    int32_t l_779 = 0x1077185EL;
    int32_t l_782 = 0x30328C6EL;
    int32_t l_783 = 0x36FAF20AL;
    int32_t l_784 = 0x1A191E53L;
    int32_t l_785 = 0x144186A8L;
    int32_t l_786[7];
    int32_t *l_803[2][2][6] = {{{&p_1695->g_804[0],&p_1695->g_804[0],&p_1695->g_804[0],&p_1695->g_804[0],&p_1695->g_804[0],&p_1695->g_804[0]},{&p_1695->g_804[0],&p_1695->g_804[0],&p_1695->g_804[0],&p_1695->g_804[0],&p_1695->g_804[0],&p_1695->g_804[0]}},{{&p_1695->g_804[0],&p_1695->g_804[0],&p_1695->g_804[0],&p_1695->g_804[0],&p_1695->g_804[0],&p_1695->g_804[0]},{&p_1695->g_804[0],&p_1695->g_804[0],&p_1695->g_804[0],&p_1695->g_804[0],&p_1695->g_804[0],&p_1695->g_804[0]}}};
    uint32_t **l_937 = (void*)0;
    int32_t l_955 = 0x67CFEE94L;
    uint16_t l_956 = 0xCF0EL;
    int32_t ***l_978 = &p_1695->g_58;
    int16_t l_985[8] = {0x7829L,1L,0x7829L,0x7829L,1L,0x7829L,0x7829L,1L};
    struct S0 *l_1043 = &p_1695->g_590[2][1];
    uint32_t l_1046 = 0x8A2E8867L;
    uint16_t l_1144[4] = {65526UL,65526UL,65526UL,65526UL};
    int32_t l_1179 = 0x3297EC4BL;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_637[i] = (void*)0;
    for (i = 0; i < 9; i++)
        l_645[i] = &p_1695->g_590[2][1].f7;
    for (i = 0; i < 3; i++)
        l_717[i] = 9UL;
    for (i = 0; i < 7; i++)
        l_786[i] = 0x2044F39AL;
    (**p_1695->g_58) &= ((p_1695->g_338 | (safe_lshift_func_uint16_t_u_u((safe_add_func_uint8_t_u_u(p_41, ((l_624[4][2][0] != (((*p_1695->g_189) , (safe_sub_func_int8_t_s_s(((((*p_1695->g_417) = (((0x26L != (((p_42 , l_624[4][2][0]) || (p_1695->g_309.f0 < FAKE_DIVERGE(p_1695->group_1_offset, get_group_id(1), 10))) & (safe_rshift_func_int8_t_s_s(p_1695->g_492, 3)))) > l_624[1][0][2]) , p_41)) > 0x6788L) & GROUP_DIVERGE(0, 1)), (-2L)))) == 1UL)) || l_624[4][2][0]))), 15))) > (*p_43));
lbl_1106:
    (**p_1695->g_58) ^= ((safe_add_func_uint64_t_u_u(l_624[4][2][0], ((safe_add_func_int64_t_s_s((safe_rshift_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(((*p_1695->g_591) , 0xE4L), (l_637[0] == (void*)0))), (((safe_add_func_int64_t_s_s(p_41, p_44)) >= l_624[4][2][0]) , (safe_mul_func_uint16_t_u_u(l_624[4][2][0], 0x8FA1L))))), (-9L))) <= l_624[4][2][0]))) >= (*p_43));
    if (l_624[4][2][0])
    { /* block id: 330 */
        uint8_t l_656 = 1UL;
        int32_t ***l_678 = &p_1695->g_58;
        int32_t ****l_677[9][7][2] = {{{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678}},{{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678}},{{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678}},{{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678}},{{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678}},{{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678}},{{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678}},{{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678}},{{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678},{&l_678,&l_678}}};
        int32_t *l_805 = &p_1695->g_804[0];
        int32_t *****l_810[7];
        uint32_t l_836 = 0x669CF8FCL;
        uint8_t l_839[10];
        int8_t l_979[10] = {(-6L),0x6FL,(-6L),(-6L),0x6FL,(-6L),(-6L),0x6FL,(-6L),(-6L)};
        int i, j, k;
        for (i = 0; i < 7; i++)
            l_810[i] = &l_677[0][4][0];
        for (i = 0; i < 10; i++)
            l_839[i] = 0xCEL;
        for (p_1695->g_196 = 0; (p_1695->g_196 <= 7); p_1695->g_196 += 1)
        { /* block id: 333 */
            (*p_1695->g_642) = (*p_1695->g_591);
        }
        for (p_1695->g_178 = 0; (p_1695->g_178 < 25); p_1695->g_178++)
        { /* block id: 338 */
            uint32_t *l_646 = (void*)0;
            uint32_t *l_647 = &p_1695->g_614.f2;
            uint16_t *l_659[1][5] = {{&p_1695->g_492,&p_1695->g_492,&p_1695->g_492,&p_1695->g_492,&p_1695->g_492}};
            int8_t l_660 = 0x13L;
            int32_t l_661 = (-1L);
            uint8_t *l_662 = &p_1695->g_156;
            int32_t *l_663 = (void*)0;
            int32_t *l_664 = &p_1695->g_665;
            int32_t ***l_673 = &p_1695->g_58;
            int32_t ****l_672 = &l_673;
            int32_t *****l_674 = (void*)0;
            int32_t *****l_675 = (void*)0;
            int32_t *****l_676 = &l_672;
            int64_t *l_696 = &p_1695->g_217;
            int16_t l_764 = 1L;
            int32_t l_774 = 0x3B4536A7L;
            int32_t l_787 = (-1L);
            int32_t l_789 = (-3L);
            int32_t l_790[9][4] = {{0x1F3B2A20L,0x607E9662L,0x607E9662L,0x1F3B2A20L},{0x1F3B2A20L,0x607E9662L,0x607E9662L,0x1F3B2A20L},{0x1F3B2A20L,0x607E9662L,0x607E9662L,0x1F3B2A20L},{0x1F3B2A20L,0x607E9662L,0x607E9662L,0x1F3B2A20L},{0x1F3B2A20L,0x607E9662L,0x607E9662L,0x1F3B2A20L},{0x1F3B2A20L,0x607E9662L,0x607E9662L,0x1F3B2A20L},{0x1F3B2A20L,0x607E9662L,0x607E9662L,0x1F3B2A20L},{0x1F3B2A20L,0x607E9662L,0x607E9662L,0x1F3B2A20L},{0x1F3B2A20L,0x607E9662L,0x607E9662L,0x1F3B2A20L}};
            int16_t l_793 = 1L;
            int16_t l_889 = 0x3528L;
            int16_t l_890 = 0x51DAL;
            int32_t **l_926 = &p_1695->g_59[0];
            int i, j;
            (1 + 1);
        }
    }
    else
    { /* block id: 489 */
        uint32_t l_1009 = 0x082F1B69L;
        int64_t *l_1014 = &p_1695->g_129;
        int32_t *l_1019 = &l_782;
        int16_t *l_1054 = &p_1695->g_338;
        int32_t ***l_1059 = &p_1695->g_58;
        uint8_t l_1075 = 0xF2L;
        int32_t l_1112 = 1L;
        int32_t l_1113 = (-7L);
        int32_t l_1114 = 0x700A6C2AL;
        int32_t l_1115 = 6L;
        int32_t l_1116 = 1L;
        int32_t l_1118 = 0x72066CEAL;
        int32_t l_1119 = 0x2DB148AFL;
        int32_t l_1120 = 1L;
        if ((safe_div_func_uint64_t_u_u(p_1695->g_1003[1], (((**p_1695->g_58) > 4294967288UL) ^ 0xC39E8CE707A0B39BL))))
        { /* block id: 490 */
            uint32_t l_1004 = 0x32060169L;
            int32_t *l_1007 = &l_779;
            int32_t *l_1008[9];
            uint64_t *l_1036 = &p_1695->g_721[0];
            int64_t *l_1060 = &p_1695->g_217;
            int32_t ***l_1079 = &p_1695->g_58;
            int16_t l_1105 = (-1L);
            int i;
            for (i = 0; i < 9; i++)
                l_1008[i] = &l_784;
            ++l_1004;
            ++l_1009;
            for (p_1695->g_188.f7 = 0; (p_1695->g_188.f7 <= (-21)); p_1695->g_188.f7 = safe_sub_func_uint64_t_u_u(p_1695->g_188.f7, 5))
            { /* block id: 495 */
                int16_t l_1020 = 0x1336L;
                int32_t l_1027 = 0x7E0AA0BAL;
                uint32_t *l_1045[7][3][5] = {{{(void*)0,&p_1695->g_300[2],&p_1695->g_936,&p_1695->g_300[2],&p_1695->g_300[2]},{(void*)0,&p_1695->g_300[2],&p_1695->g_936,&p_1695->g_300[2],&p_1695->g_300[2]},{(void*)0,&p_1695->g_300[2],&p_1695->g_936,&p_1695->g_300[2],&p_1695->g_300[2]}},{{(void*)0,&p_1695->g_300[2],&p_1695->g_936,&p_1695->g_300[2],&p_1695->g_300[2]},{(void*)0,&p_1695->g_300[2],&p_1695->g_936,&p_1695->g_300[2],&p_1695->g_300[2]},{(void*)0,&p_1695->g_300[2],&p_1695->g_936,&p_1695->g_300[2],&p_1695->g_300[2]}},{{(void*)0,&p_1695->g_300[2],&p_1695->g_936,&p_1695->g_300[2],&p_1695->g_300[2]},{(void*)0,&p_1695->g_300[2],&p_1695->g_936,&p_1695->g_300[2],&p_1695->g_300[2]},{(void*)0,&p_1695->g_300[2],&p_1695->g_936,&p_1695->g_300[2],&p_1695->g_300[2]}},{{(void*)0,&p_1695->g_300[2],&p_1695->g_936,&p_1695->g_300[2],&p_1695->g_300[2]},{(void*)0,&p_1695->g_300[2],&p_1695->g_936,&p_1695->g_300[2],&p_1695->g_300[2]},{(void*)0,&p_1695->g_300[2],&p_1695->g_936,&p_1695->g_300[2],&p_1695->g_300[2]}},{{(void*)0,&p_1695->g_300[2],&p_1695->g_936,&p_1695->g_300[2],&p_1695->g_300[2]},{(void*)0,&p_1695->g_300[2],&p_1695->g_936,&p_1695->g_300[2],&p_1695->g_300[2]},{(void*)0,&p_1695->g_300[2],&p_1695->g_936,&p_1695->g_300[2],&p_1695->g_300[2]}},{{(void*)0,&p_1695->g_300[2],&p_1695->g_936,&p_1695->g_300[2],&p_1695->g_300[2]},{(void*)0,&p_1695->g_300[2],&p_1695->g_936,&p_1695->g_300[2],&p_1695->g_300[2]},{(void*)0,&p_1695->g_300[2],&p_1695->g_936,&p_1695->g_300[2],&p_1695->g_300[2]}},{{(void*)0,&p_1695->g_300[2],&p_1695->g_936,&p_1695->g_300[2],&p_1695->g_300[2]},{(void*)0,&p_1695->g_300[2],&p_1695->g_936,&p_1695->g_300[2],&p_1695->g_300[2]},{(void*)0,&p_1695->g_300[2],&p_1695->g_936,&p_1695->g_300[2],&p_1695->g_300[2]}}};
                uint32_t **l_1044 = &l_1045[0][0][2];
                int32_t l_1047 = 0L;
                int i, j, k;
                (1 + 1);
            }
            if ((!(safe_mul_func_int16_t_s_s((safe_mod_func_int64_t_s_s((~((*l_1060) = ((l_1054 == (void*)0) >= (((safe_mod_func_uint16_t_u_u((((p_42 , (p_42 | (safe_sub_func_int16_t_s_s(((void*)0 == l_637[0]), (((*l_702) = (void*)0) != ((p_42 && (*l_1019)) , l_1059)))))) >= p_44) == (*l_1019)), p_44)) >= (*l_1007)) ^ p_41)))), 18446744073709551614UL)), p_44))))
            { /* block id: 524 */
                int32_t l_1062 = 9L;
                (*l_1043) = p_1695->g_1061;
                (*l_1043) = (*l_1043);
                (*l_1007) |= ((((*l_1019) = (p_42 , (((65535UL <= ((l_1062 , ((((***l_1059) , (~0x1383L)) != (p_41 < ((18446744073709551607UL | ((safe_sub_func_uint64_t_u_u((safe_sub_func_int64_t_s_s(p_1695->g_980.f4, 9L)), 1UL)) & 4294967294UL)) , 1L))) != 0x92L)) < (*l_1019))) ^ (-9L)) & l_1062))) , 0x52D4L) ^ (-1L));
            }
            else
            { /* block id: 529 */
                int32_t l_1074 = 0x1DD9971BL;
                int32_t ***l_1078 = &p_1695->g_58;
                for (l_956 = 0; (l_956 <= 0); l_956 += 1)
                { /* block id: 532 */
                    int32_t *l_1071 = &p_1695->g_1072;
                    int i;
                    if (((*p_43) = (safe_mul_func_uint8_t_u_u((p_1695->g_804[l_956] | (p_44 & (0x130CD0FAL != (((*l_1071) ^= (safe_mul_func_uint16_t_u_u(0x6D42L, (((p_1695->g_72.f5 || p_41) , &p_42) != p_1695->g_274)))) , (GROUP_DIVERGE(0, 1) < ((***l_1059) , (*l_1019))))))), GROUP_DIVERGE(2, 1)))))
                    { /* block id: 535 */
                        (*l_1043) = p_1695->g_1073;
                        if (l_1074)
                            continue;
                        (***l_1059) = (l_1075 |= ((**p_1695->g_181) , 0L));
                        if ((*p_43))
                            continue;
                    }
                    else
                    { /* block id: 541 */
                        int8_t **l_1080 = &l_645[6];
                        int8_t *l_1090 = (void*)0;
                        int8_t *l_1091 = (void*)0;
                        int8_t *l_1092 = &p_1695->g_374.f6;
                        int32_t l_1100 = 0x47DE2B29L;
                        (*p_1695->g_58) = &l_1074;
                        (*p_43) = ((safe_add_func_int64_t_s_s(((***l_1078) = ((((*l_1019) = (l_1078 == l_1079)) | (+(((*l_1080) = p_1695->g_164[2][4]) != (void*)0))) ^ ((p_42 & (safe_add_func_int8_t_s_s((safe_add_func_uint64_t_u_u(((*l_1036) = p_1695->g_300[2]), (safe_mod_func_int8_t_s_s(((*l_1092) ^= (safe_div_func_int64_t_s_s(p_41, ((*l_1060) = ((~(((safe_unary_minus_func_uint16_t_u(((((!((***l_1059) == p_1695->g_374.f4)) , (***l_1078)) <= p_42) < 0x2E625ED716036BCEL))) != p_1695->g_196) || 0x42307C6AL)) || 1UL))))), 0xBDL)))), 3UL))) && p_1695->g_902.f0))), 0L)) , 0L);
                        (*l_1019) = (((***l_978) = 0x79D27800L) == ((safe_unary_minus_func_uint32_t_u(p_44)) | ((0UL ^ (+((safe_mul_func_int16_t_s_s((safe_mul_func_int16_t_s_s((l_1100 = (~((safe_lshift_func_int8_t_s_s(p_1695->g_823[0].f4, 1)) , p_41))), ((safe_add_func_uint8_t_u_u(p_1695->g_804[l_956], 0L)) != (((safe_rshift_func_int16_t_s_s(((*p_1695->g_417) = 0x09DCL), 11)) , ((*p_1695->g_417) = (((((((p_1695->g_374.f3 <= (*p_43)) >= p_41) | 0xDAF74C34CB12967AL) && l_1105) , 0x0C5AL) ^ (-5L)) , p_42))) > GROUP_DIVERGE(0, 1))))), 0x6407L)) != p_44))) == 1L)));
                    }
                    for (p_1695->g_980.f4 = 0; p_1695->g_980.f4 < 4; p_1695->g_980.f4 += 1)
                    {
                        for (p_1695->g_192.f2 = 0; p_1695->g_192.f2 < 7; p_1695->g_192.f2 += 1)
                        {
                            p_1695->g_164[p_1695->g_980.f4][p_1695->g_192.f2] = &p_1695->g_162;
                        }
                    }
                    for (p_1695->g_375.f4 = 2; (p_1695->g_375.f4 >= 0); p_1695->g_375.f4 -= 1)
                    { /* block id: 559 */
                        return p_44;
                    }
                }
            }
        }
        else
        { /* block id: 564 */
            int32_t *l_1107 = &l_779;
            int32_t *l_1108 = &l_785;
            int32_t l_1109 = (-1L);
            int32_t *l_1110 = (void*)0;
            int32_t *l_1111[5][4] = {{&l_782,&l_782,(void*)0,&l_785},{&l_782,&l_782,(void*)0,&l_785},{&l_782,&l_782,(void*)0,&l_785},{&l_782,&l_782,(void*)0,&l_785},{&l_782,&l_782,(void*)0,&l_785}};
            int16_t l_1117 = 0L;
            uint64_t l_1121 = 18446744073709551612UL;
            int i, j;
            if (l_1075)
                goto lbl_1106;
            ++l_1121;
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            p_1695->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 7)), permutations[(safe_mod_func_uint32_t_u_u((0x02L == 0x72L), 10))][(safe_mod_func_uint32_t_u_u(p_1695->tid, 7))]));
        }
    }
    for (p_1695->g_375.f1 = 8; (p_1695->g_375.f1 < 1); p_1695->g_375.f1 = safe_sub_func_int16_t_s_s(p_1695->g_375.f1, 1))
    { /* block id: 574 */
        uint32_t l_1126 = 0x1E26F73EL;
        uint8_t l_1127 = 252UL;
        int32_t l_1158 = 0x7C8BC172L;
        int32_t l_1163 = 0L;
        int32_t l_1166 = 0x6C3DC18EL;
        int32_t l_1167 = 0L;
        uint64_t ***l_1195 = &p_1695->g_1187;
        int32_t l_1203 = (-5L);
        int32_t l_1221 = 0x786F9045L;
        int32_t l_1222 = 0L;
        int32_t l_1223[1][7] = {{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}};
        int i, j;
        if (((*p_43) ^= (l_1127 |= l_1126)))
        { /* block id: 577 */
            uint8_t l_1135 = 2UL;
            int32_t l_1161 = 0L;
            int32_t l_1162 = 0x4D72AE61L;
            uint16_t l_1168 = 0x6DEBL;
            int8_t l_1184 = 0x60L;
            struct S0 *l_1189 = &p_1695->g_823[0];
            int64_t *l_1206 = (void*)0;
            int64_t *l_1207 = &p_1695->g_217;
            int32_t ***l_1208[8];
            uint16_t **l_1216 = &l_671;
            uint16_t ***l_1215 = &l_1216;
            int32_t l_1217 = (-8L);
            int i;
            for (i = 0; i < 8; i++)
                l_1208[i] = &p_1695->g_58;
            for (l_782 = 0; (l_782 <= 6); l_782 += 1)
            { /* block id: 580 */
                int64_t l_1154 = 0x2C5AD4ACCB1D1BD4L;
                int32_t l_1164 = 0x4342179EL;
                int32_t l_1165[7] = {1L,0x7088C8A0L,1L,1L,0x7088C8A0L,1L,1L};
                uint64_t ****l_1192 = &l_739;
                uint64_t ***l_1194 = &p_1695->g_1187;
                uint64_t ****l_1193[5] = {&l_1194,&l_1194,&l_1194,&l_1194,&l_1194};
                int i;
                for (l_785 = 0; (l_785 <= 8); l_785 += 1)
                { /* block id: 583 */
                    uint16_t l_1143 = 0x6DC2L;
                    int16_t *l_1145 = &l_985[6];
                    int64_t *l_1146 = (void*)0;
                    int64_t *l_1147[7];
                    int32_t l_1148 = 0x43F62238L;
                    uint64_t *l_1149 = &p_1695->g_218;
                    int32_t *l_1155 = &p_1695->g_619;
                    int32_t *l_1156 = &p_1695->g_17;
                    int32_t *l_1157 = &l_786[4];
                    int32_t *l_1159 = &l_779;
                    int32_t *l_1160[4] = {&l_784,&l_784,&l_784,&l_784};
                    int i;
                    for (i = 0; i < 7; i++)
                        l_1147[i] = &p_1695->g_217;
                    for (p_1695->g_1061.f7 = 0; (p_1695->g_1061.f7 <= 2); p_1695->g_1061.f7 += 1)
                    { /* block id: 586 */
                        (**l_978) = p_43;
                        p_43 = p_43;
                    }
                    if (((safe_div_func_uint64_t_u_u(((*l_1149) = (((safe_rshift_func_uint16_t_u_s((safe_mod_func_int64_t_s_s(p_1695->g_1073.f5, 1L)), p_44)) && (4UL >= ((safe_unary_minus_func_int8_t_s(((l_1135 , (safe_div_func_int64_t_s_s((l_1148 = (safe_add_func_int16_t_s_s((safe_lshift_func_uint8_t_u_s((safe_unary_minus_func_uint32_t_u(p_1695->g_374.f0)), (l_1143 &= p_44))), ((l_1127 == ((((*l_1145) = l_1144[2]) & p_41) >= p_44)) >= p_1695->g_533.f6)))), p_44))) > 1L))) | 0x67534156L))) > p_1695->g_338)), p_1695->g_1061.f2)) && l_1126))
                    { /* block id: 594 */
                        p_1695->g_1150 = &p_1695->g_902;
                        return p_1695->g_490.f5;
                    }
                    else
                    { /* block id: 597 */
                        int16_t l_1152 = 0x19B8L;
                        int32_t l_1153 = (-5L);
                        p_1695->g_1151 = (*l_1043);
                        l_1153 ^= l_1152;
                    }
                    l_1168--;
                }
                for (p_1695->g_1151.f3 = 0; (p_1695->g_1151.f3 <= 2); p_1695->g_1151.f3 += 1)
                { /* block id: 605 */
                    int i, j;
                    l_1165[1] |= (safe_lshift_func_int16_t_s_u((((safe_rshift_func_int8_t_s_u((safe_rshift_func_uint8_t_u_s(l_1179, (safe_div_func_int8_t_s_s(0x2EL, GROUP_DIVERGE(0, 1))))), 2)) == (safe_rshift_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), l_1184))) || ((p_1695->g_721[0] = p_42) < 8L)), (safe_sub_func_uint64_t_u_u((&p_1695->g_460 != ((*l_739) = p_1695->g_1187)), 0x6A75DF57E3E6B272L))));
                    (*p_1695->g_1190) = l_1189;
                }
                (*l_1043) = (*l_1189);
                l_955 |= (((l_1195 = ((*l_1192) = &p_1695->g_1187)) != (((*p_43) | (*p_43)) , (void*)0)) == (p_1695->g_1196 , (*p_43)));
            }
            if ((*p_43))
                break;
            (*p_1695->g_595) = (safe_mul_func_uint8_t_u_u(0x06L, (safe_lshift_func_int8_t_s_u((safe_div_func_uint16_t_u_u((+((**l_670) = (l_1203 <= p_41))), p_44)), (((((safe_div_func_uint8_t_u_u((((((((*l_1215) = (((((*l_1207) |= p_41) <= (((((l_1166 = ((void*)0 != l_1208[4])) , (*l_1189)) , (((safe_sub_func_uint8_t_u_u((((safe_div_func_int32_t_s_s(((*p_43) |= (safe_mul_func_uint16_t_u_u(l_1203, l_1158))), p_44)) | p_44) <= 0xE2L), p_1695->g_614.f6)) && p_1695->g_980.f2) | l_1126)) & l_1167) , l_1203)) | 0x0290L) , &l_671)) == p_1695->g_594[0][0]) != p_44) && GROUP_DIVERGE(0, 1)) < l_1217) != 65535UL), p_42)) < 255UL) != p_44) , p_41) , 0xE9L)))));
            l_1163 &= (*p_43);
        }
        else
        { /* block id: 624 */
            int32_t *l_1218 = &l_783;
            int32_t *l_1219 = &l_783;
            int32_t *l_1220[1];
            int i;
            for (i = 0; i < 1; i++)
                l_1220[i] = &l_786[4];
            --p_1695->g_1224;
        }
    }
    return p_42;
}


/* ------------------------------------------ */
/* 
 * reads : p_1695->g_58 p_1695->g_59 p_1695->g_17 p_1695->g_72 p_1695->g_71 p_1695->g_comm_values p_1695->l_comm_values p_1695->g_121 p_1695->g_126 p_1695->g_131 p_1695->g_129 p_1695->g_156 p_1695->g_121.f0 p_1695->g_178 p_1695->g_104 p_1695->g_309.f2 p_1695->g_309.f3 p_1695->g_196 p_1695->g_188.f7 p_1695->g_614.f3 p_1695->g_192.f6
 * writes: p_1695->g_58 p_1695->g_71 p_1695->g_17 p_1695->g_72 p_1695->g_110 p_1695->g_129 p_1695->g_126 p_1695->g_156 p_1695->g_164 p_1695->g_162 p_1695->g_178 p_1695->g_104 p_1695->g_309.f2 p_1695->g_59 p_1695->g_309.f0 p_1695->g_350 p_1695->g_417 p_1695->g_418 p_1695->g_374.f6
 */
int8_t  func_45(int32_t  p_46, struct S2 * p_1695)
{ /* block id: 5 */
    int32_t *l_57[10][10][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
    int32_t **l_56 = &l_57[8][3][1];
    int16_t *l_102 = &p_1695->g_71;
    int32_t ***l_319 = &p_1695->g_58;
    int32_t ****l_318 = &l_319;
    int16_t l_339 = 0x1BCDL;
    int64_t l_342 = 0x46834EA35202EAACL;
    uint64_t *l_445[8][2][6] = {{{&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218},{&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218}},{{&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218},{&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218}},{{&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218},{&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218}},{{&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218},{&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218}},{{&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218},{&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218}},{{&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218},{&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218}},{{&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218},{&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218}},{{&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218},{&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218,&p_1695->g_218}}};
    uint64_t **l_444[4][5][2] = {{{&l_445[7][1][3],&l_445[7][0][1]},{&l_445[7][1][3],&l_445[7][0][1]},{&l_445[7][1][3],&l_445[7][0][1]},{&l_445[7][1][3],&l_445[7][0][1]},{&l_445[7][1][3],&l_445[7][0][1]}},{{&l_445[7][1][3],&l_445[7][0][1]},{&l_445[7][1][3],&l_445[7][0][1]},{&l_445[7][1][3],&l_445[7][0][1]},{&l_445[7][1][3],&l_445[7][0][1]},{&l_445[7][1][3],&l_445[7][0][1]}},{{&l_445[7][1][3],&l_445[7][0][1]},{&l_445[7][1][3],&l_445[7][0][1]},{&l_445[7][1][3],&l_445[7][0][1]},{&l_445[7][1][3],&l_445[7][0][1]},{&l_445[7][1][3],&l_445[7][0][1]}},{{&l_445[7][1][3],&l_445[7][0][1]},{&l_445[7][1][3],&l_445[7][0][1]},{&l_445[7][1][3],&l_445[7][0][1]},{&l_445[7][1][3],&l_445[7][0][1]},{&l_445[7][1][3],&l_445[7][0][1]}}};
    int32_t l_450 = 0x5D6FF4ABL;
    uint8_t l_487 = 0x3CL;
    int i, j, k;
    if (p_46)
    { /* block id: 6 */
        int32_t *l_52 = &p_1695->g_17;
        int32_t **l_51 = &l_52;
        int32_t *l_55 = (void*)0;
        int32_t **l_54 = &l_55;
        int32_t ***l_60 = &p_1695->g_58;
        int32_t *l_75[8] = {(void*)0,&p_1695->g_17,(void*)0,(void*)0,&p_1695->g_17,(void*)0,(void*)0,&p_1695->g_17};
        uint64_t *l_133[6];
        uint64_t **l_132[4][6][1] = {{{&l_133[4]},{&l_133[4]},{&l_133[4]},{&l_133[4]},{&l_133[4]},{&l_133[4]}},{{&l_133[4]},{&l_133[4]},{&l_133[4]},{&l_133[4]},{&l_133[4]},{&l_133[4]}},{{&l_133[4]},{&l_133[4]},{&l_133[4]},{&l_133[4]},{&l_133[4]},{&l_133[4]}},{{&l_133[4]},{&l_133[4]},{&l_133[4]},{&l_133[4]},{&l_133[4]},{&l_133[4]}}};
        uint8_t *l_161 = &p_1695->g_162;
        int16_t *l_270[2][5] = {{&p_1695->g_71,&p_1695->g_71,&p_1695->g_71,&p_1695->g_71,&p_1695->g_71},{&p_1695->g_71,&p_1695->g_71,&p_1695->g_71,&p_1695->g_71,&p_1695->g_71}};
        uint16_t l_383 = 0x76FAL;
        int64_t l_419[10] = {(-1L),0x263A8E26C5D3E017L,0x4B555EEF01765357L,0x263A8E26C5D3E017L,(-1L),(-1L),0x263A8E26C5D3E017L,0x4B555EEF01765357L,0x263A8E26C5D3E017L,(-1L)};
        uint32_t l_464 = 0UL;
        int64_t l_471 = (-5L);
        int i, j, k;
        for (i = 0; i < 6; i++)
            l_133[i] = (void*)0;
        (*l_54) = ((*l_51) = &p_1695->g_17);
        if ((l_56 == ((((*l_60) = p_1695->g_58) != &l_57[8][3][1]) , &p_1695->g_59[0])))
        { /* block id: 10 */
            int32_t **l_65 = &l_55;
            int16_t *l_70 = &p_1695->g_71;
            int64_t l_135 = (-1L);
            if ((safe_rshift_func_uint16_t_u_u(((*p_1695->g_58) != (void*)0), ((safe_add_func_uint8_t_u_u((!(l_65 == (void*)0)), ((!(p_1695->g_17 , ((*l_70) = (!(((**l_65) < 0x52E6L) >= ((***l_60) , (safe_sub_func_uint8_t_u_u(((safe_mul_func_uint8_t_u_u(5UL, 1L)) , FAKE_DIVERGE(p_1695->group_2_offset, get_group_id(2), 10)), p_46)))))))) == 1UL))) , p_46))))
            { /* block id: 12 */
                (**l_51) &= p_46;
            }
            else
            { /* block id: 14 */
                return p_46;
            }
            p_1695->g_72 = p_1695->g_72;
            for (p_1695->g_71 = 5; (p_1695->g_71 >= (-9)); p_1695->g_71 = safe_sub_func_int8_t_s_s(p_1695->g_71, 1))
            { /* block id: 20 */
                (*l_51) = l_75[6];
                if (p_46)
                    break;
            }
            for (p_46 = 1; (p_46 >= 0); p_46 -= 1)
            { /* block id: 26 */
                uint32_t l_105 = 0xEF753FA0L;
                int32_t l_124 = (-1L);
                uint64_t **l_134[4];
                int32_t l_136 = (-1L);
                int i;
                for (i = 0; i < 4; i++)
                    l_134[i] = &l_133[0];
                if ((safe_add_func_int16_t_s_s(7L, p_46)))
                { /* block id: 27 */
                    uint64_t *l_103[4][6][1] = {{{&p_1695->g_104},{&p_1695->g_104},{&p_1695->g_104},{&p_1695->g_104},{&p_1695->g_104},{&p_1695->g_104}},{{&p_1695->g_104},{&p_1695->g_104},{&p_1695->g_104},{&p_1695->g_104},{&p_1695->g_104},{&p_1695->g_104}},{{&p_1695->g_104},{&p_1695->g_104},{&p_1695->g_104},{&p_1695->g_104},{&p_1695->g_104},{&p_1695->g_104}},{{&p_1695->g_104},{&p_1695->g_104},{&p_1695->g_104},{&p_1695->g_104},{&p_1695->g_104},{&p_1695->g_104}}};
                    int32_t l_106 = 0x410211DAL;
                    int32_t l_130 = (-5L);
                    int i, j, k;
                    (**l_65) = 0x583C6DDDL;
                    l_106 = ((+(safe_mod_func_uint64_t_u_u((safe_add_func_uint16_t_u_u(FAKE_DIVERGE(p_1695->local_0_offset, get_local_id(0), 10), p_1695->g_72.f0)), (safe_mul_func_uint8_t_u_u(p_46, 4L))))) & ((safe_sub_func_uint32_t_u_u((safe_sub_func_uint64_t_u_u((p_46 , (l_105 &= ((safe_add_func_int64_t_s_s(((safe_div_func_int16_t_s_s(((safe_add_func_int16_t_s_s(((((((safe_mul_func_uint16_t_u_u((((safe_div_func_uint8_t_u_u((safe_mod_func_uint16_t_u_u(p_46, p_46)), 0x01L)) , ((safe_mod_func_uint8_t_u_u((((GROUP_DIVERGE(0, 1) , ((***l_60) & ((p_46 , p_46) && p_46))) ^ 0x55992778613AB5F7L) && p_1695->g_comm_values[p_1695->tid]), p_46)) , (-2L))) == p_46), (-5L))) , l_70) != l_102) == p_46) != p_1695->g_comm_values[p_1695->tid]) ^ p_1695->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1695->tid, 7))]), 1UL)) == 0xB3A2D95AL), p_1695->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1695->tid, 7))])) , p_46), (*l_55))) != 0x28L))), p_46)), (**p_1695->g_58))) <= p_1695->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1695->tid, 7))]));
                    for (l_106 = 0; (l_106 <= 1); l_106 += 1)
                    { /* block id: 33 */
                        uint16_t *l_109 = &p_1695->g_110;
                        int32_t ***l_125 = &l_51;
                        int64_t *l_127 = (void*)0;
                        int64_t *l_128[2][10] = {{&p_1695->g_129,(void*)0,&p_1695->g_129,&p_1695->g_129,(void*)0,&p_1695->g_129,&p_1695->g_129,(void*)0,&p_1695->g_129,&p_1695->g_129},{&p_1695->g_129,(void*)0,&p_1695->g_129,&p_1695->g_129,(void*)0,&p_1695->g_129,&p_1695->g_129,(void*)0,&p_1695->g_129,&p_1695->g_129}};
                        int i, j;
                        (**l_54) = (p_46 >= ((p_1695->g_129 = (((((safe_lshift_func_uint16_t_u_u(p_46, ((*l_109) = p_1695->g_71))) >= (safe_mul_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u(p_46, (safe_mod_func_uint32_t_u_u(((safe_mul_func_uint16_t_u_u(65530UL, (safe_sub_func_uint32_t_u_u((p_1695->g_121 , GROUP_DIVERGE(2, 1)), (((&p_1695->g_58 != (((safe_sub_func_int32_t_s_s(((**p_1695->g_58) == (l_124 = (**p_1695->g_58))), 4294967286UL)) == p_1695->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1695->tid, 7))]) , l_125)) , (void*)0) != (void*)0))))) | (**p_1695->g_58)), 1L)))), (-1L)))) , p_1695->g_72.f0) & p_1695->g_126) | p_46)) , (**l_54)));
                        l_130 = ((***l_60) = p_46);
                        if (p_1695->g_131)
                            break;
                    }
                }
                else
                { /* block id: 42 */
                    (*l_55) |= 0x35FD3493L;
                    l_134[3] = l_132[1][1][0];
                }
                l_135 ^= (**l_65);
                for (p_1695->g_17 = 0; (p_1695->g_17 <= 1); p_1695->g_17 += 1)
                { /* block id: 49 */
                    uint32_t *l_137 = &p_1695->g_126;
                    int32_t l_150 = 0x4651C793L;
                    l_150 &= (((l_136 |= (l_105 , l_124)) > ((6L | ((*l_137) ^= l_124)) , (safe_div_func_uint64_t_u_u((1L & (((safe_sub_func_int64_t_s_s(p_46, (safe_rshift_func_int8_t_s_s((safe_div_func_int64_t_s_s((-10L), (safe_mod_func_int32_t_s_s((safe_mul_func_uint16_t_u_u(p_46, p_1695->g_129)), p_46)))), (**l_54))))) >= 0xB394L) > 2L)), (**l_65))))) | p_1695->g_129);
                    for (p_1695->g_71 = 0; (p_1695->g_71 <= 1); p_1695->g_71 += 1)
                    { /* block id: 55 */
                        volatile struct S0 *l_152[4];
                        int i;
                        for (i = 0; i < 4; i++)
                            l_152[i] = (void*)0;
                        p_1695->g_72 = p_1695->g_72;
                    }
                    for (l_136 = 1; (l_136 >= 0); l_136 -= 1)
                    { /* block id: 60 */
                        return p_46;
                    }
                }
            }
        }
        else
        { /* block id: 65 */
            uint8_t *l_155 = &p_1695->g_156;
            uint8_t **l_163[8][2] = {{(void*)0,&l_155},{(void*)0,&l_155},{(void*)0,&l_155},{(void*)0,&l_155},{(void*)0,&l_155},{(void*)0,&l_155},{(void*)0,&l_155},{(void*)0,&l_155}};
            int32_t l_173 = 0x128B098AL;
            uint16_t *l_174[7] = {&p_1695->g_110,&p_1695->g_110,&p_1695->g_110,&p_1695->g_110,&p_1695->g_110,&p_1695->g_110,&p_1695->g_110};
            int32_t l_175[6] = {0L,0L,0L,0L,0L,0L};
            int64_t l_176 = 1L;
            uint32_t *l_177 = &p_1695->g_178;
            int i, j;
            (*l_55) = (((*l_177) &= (l_176 &= (safe_lshift_func_int16_t_s_s((((((((++(*l_155)) ^ ((*l_161) = (safe_sub_func_uint32_t_u_u((((p_1695->g_164[2][4] = l_161) != ((((safe_lshift_func_uint16_t_u_s((p_1695->g_72.f2 , p_1695->g_121.f0), 3)) <= ((2L & (safe_mod_func_int32_t_s_s((safe_sub_func_int16_t_s_s(((*l_102) = ((l_173 = ((&l_54 == (void*)0) & ((**l_51) && (safe_lshift_func_uint16_t_u_s(1UL, 8))))) || ((p_1695->g_110 = FAKE_DIVERGE(p_1695->global_1_offset, get_global_id(1), 10)) && p_1695->g_comm_values[p_1695->tid]))), 0x12BBL)), l_175[2]))) >= p_46)) || 4294967286UL) , (void*)0)) & (**p_1695->g_58)), 7L)))) && p_46) != l_175[2]) != 0x1EC5D9C112FE6111L) < p_46) , l_173), p_1695->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1695->tid, 7))])))) , 0L);
            return p_1695->g_72.f3;
        }
        for (p_1695->g_104 = (-25); (p_1695->g_104 <= 18); ++p_1695->g_104)
        { /* block id: 79 */
            int32_t l_184 = 0x3FF6FCCEL;
            int32_t l_261 = (-4L);
            int32_t l_264 = 0x48AE52A0L;
            int64_t *l_277 = &p_1695->g_217;
            int32_t l_332 = 0x6CB42299L;
            int32_t l_333[2];
            int64_t l_395 = (-3L);
            int i;
            for (i = 0; i < 2; i++)
                l_333[i] = (-1L);
            (1 + 1);
        }
        for (p_1695->g_309.f2 = 0; (p_1695->g_309.f2 <= 2); p_1695->g_309.f2 += 1)
        { /* block id: 213 */
            uint16_t l_405 = 9UL;
            int32_t *l_412 = &p_1695->g_17;
            int16_t **l_416 = (void*)0;
            int32_t l_462[9] = {0x48F1304EL,0x2DC9E0F5L,0x48F1304EL,0x48F1304EL,0x2DC9E0F5L,0x48F1304EL,0x48F1304EL,0x2DC9E0F5L,0x48F1304EL};
            int16_t l_468 = 5L;
            int64_t l_473 = (-1L);
            int32_t l_483[8][10] = {{4L,0x6EAA56E3L,4L,4L,0x6EAA56E3L,4L,4L,0x6EAA56E3L,4L,4L},{4L,0x6EAA56E3L,4L,4L,0x6EAA56E3L,4L,4L,0x6EAA56E3L,4L,4L},{4L,0x6EAA56E3L,4L,4L,0x6EAA56E3L,4L,4L,0x6EAA56E3L,4L,4L},{4L,0x6EAA56E3L,4L,4L,0x6EAA56E3L,4L,4L,0x6EAA56E3L,4L,4L},{4L,0x6EAA56E3L,4L,4L,0x6EAA56E3L,4L,4L,0x6EAA56E3L,4L,4L},{4L,0x6EAA56E3L,4L,4L,0x6EAA56E3L,4L,4L,0x6EAA56E3L,4L,4L},{4L,0x6EAA56E3L,4L,4L,0x6EAA56E3L,4L,4L,0x6EAA56E3L,4L,4L},{4L,0x6EAA56E3L,4L,4L,0x6EAA56E3L,4L,4L,0x6EAA56E3L,4L,4L}};
            int64_t ***l_527 = &p_1695->g_181;
            uint64_t *l_528 = &p_1695->g_188.f3;
            int32_t ****l_567 = &l_60;
            int i, j;
            if ((p_46 & (p_1695->g_309.f3 , (safe_lshift_func_int16_t_s_u((((*l_161) = (safe_add_func_uint64_t_u_u(((void*)0 == (*l_51)), (((safe_sub_func_int16_t_s_s(((safe_mul_func_int16_t_s_s((~0x2F28L), (l_405 <= l_405))) <= ((safe_mod_func_int8_t_s_s((FAKE_DIVERGE(p_1695->group_0_offset, get_group_id(0), 10) && ((((251UL & (safe_mod_func_int32_t_s_s((safe_add_func_uint64_t_u_u(((*l_412) = (((*p_1695->g_58) = l_412) != l_412)), 0xA3FAF08D370189C0L)), 4294967286UL))) != p_46) ^ p_1695->g_196) | 0x4B91B29CL)), p_46)) || p_46)), p_1695->g_188.f7)) & p_46) && (*l_55))))) || (***l_60)), 11)))))
            { /* block id: 217 */
                uint64_t l_413 = 0x0EABB9614C36C8C8L;
                int32_t *l_414 = &p_1695->g_17;
                l_412 = (l_413 , l_414);
                (*l_414) = p_46;
            }
            else
            { /* block id: 220 */
                int32_t *l_415 = &p_1695->g_17;
                (*l_51) = l_415;
                for (p_1695->g_309.f0 = 0; p_1695->g_309.f0 < 4; p_1695->g_309.f0 += 1)
                {
                    struct S0 tmp = {{0x96L,0x7EE1A147L,4294967295UL,18446744073709551611UL,-8L,0UL,-1L,0x19L}};
                    p_1695->g_350[p_1695->g_309.f0] = tmp;
                }
            }
            (**p_1695->g_58) = ((p_1695->g_418[6][2] = (p_1695->g_417 = &p_1695->g_71)) == ((*l_412) , &l_339));
            for (p_1695->g_178 = 0; (p_1695->g_178 <= 2); p_1695->g_178 += 1)
            { /* block id: 229 */
                uint16_t l_420 = 0x3D8AL;
                int32_t ***l_447[3][8][7] = {{{&l_56,&l_51,(void*)0,&l_56,&l_56,(void*)0,(void*)0},{&l_56,&l_51,(void*)0,&l_56,&l_56,(void*)0,(void*)0},{&l_56,&l_51,(void*)0,&l_56,&l_56,(void*)0,(void*)0},{&l_56,&l_51,(void*)0,&l_56,&l_56,(void*)0,(void*)0},{&l_56,&l_51,(void*)0,&l_56,&l_56,(void*)0,(void*)0},{&l_56,&l_51,(void*)0,&l_56,&l_56,(void*)0,(void*)0},{&l_56,&l_51,(void*)0,&l_56,&l_56,(void*)0,(void*)0},{&l_56,&l_51,(void*)0,&l_56,&l_56,(void*)0,(void*)0}},{{&l_56,&l_51,(void*)0,&l_56,&l_56,(void*)0,(void*)0},{&l_56,&l_51,(void*)0,&l_56,&l_56,(void*)0,(void*)0},{&l_56,&l_51,(void*)0,&l_56,&l_56,(void*)0,(void*)0},{&l_56,&l_51,(void*)0,&l_56,&l_56,(void*)0,(void*)0},{&l_56,&l_51,(void*)0,&l_56,&l_56,(void*)0,(void*)0},{&l_56,&l_51,(void*)0,&l_56,&l_56,(void*)0,(void*)0},{&l_56,&l_51,(void*)0,&l_56,&l_56,(void*)0,(void*)0},{&l_56,&l_51,(void*)0,&l_56,&l_56,(void*)0,(void*)0}},{{&l_56,&l_51,(void*)0,&l_56,&l_56,(void*)0,(void*)0},{&l_56,&l_51,(void*)0,&l_56,&l_56,(void*)0,(void*)0},{&l_56,&l_51,(void*)0,&l_56,&l_56,(void*)0,(void*)0},{&l_56,&l_51,(void*)0,&l_56,&l_56,(void*)0,(void*)0},{&l_56,&l_51,(void*)0,&l_56,&l_56,(void*)0,(void*)0},{&l_56,&l_51,(void*)0,&l_56,&l_56,(void*)0,(void*)0},{&l_56,&l_51,(void*)0,&l_56,&l_56,(void*)0,(void*)0},{&l_56,&l_51,(void*)0,&l_56,&l_56,(void*)0,(void*)0}}};
                int32_t l_466 = 9L;
                int64_t *l_511 = &l_419[5];
                uint16_t *l_512 = &l_383;
                uint64_t l_538 = 0x2EA3A19472EA3F6AL;
                int64_t l_555[3][10] = {{0x70E7C51873DAF8C1L,0x70E7C51873DAF8C1L,3L,0L,0x6BE195419A8FEC18L,0x6408250945153FE0L,0x5E2C51F66D29B40BL,0x6F9DAC08F8781F9AL,0x5E2C51F66D29B40BL,0x6408250945153FE0L},{0x70E7C51873DAF8C1L,0x70E7C51873DAF8C1L,3L,0L,0x6BE195419A8FEC18L,0x6408250945153FE0L,0x5E2C51F66D29B40BL,0x6F9DAC08F8781F9AL,0x5E2C51F66D29B40BL,0x6408250945153FE0L},{0x70E7C51873DAF8C1L,0x70E7C51873DAF8C1L,3L,0L,0x6BE195419A8FEC18L,0x6408250945153FE0L,0x5E2C51F66D29B40BL,0x6F9DAC08F8781F9AL,0x5E2C51F66D29B40BL,0x6408250945153FE0L}};
                int8_t l_561 = 0x3AL;
                int i, j, k;
                for (p_1695->g_374.f6 = 0; (p_1695->g_374.f6 <= 1); p_1695->g_374.f6 += 1)
                { /* block id: 232 */
                    uint64_t ***l_443 = &l_132[1][1][0];
                    uint64_t ***l_446[8];
                    int64_t *l_448 = (void*)0;
                    int64_t *l_449 = &l_342;
                    int8_t *l_451 = &p_1695->g_188.f6;
                    int32_t l_461 = 0x24098434L;
                    int32_t l_465 = 9L;
                    int32_t l_467[4];
                    int8_t l_472 = 0x16L;
                    int16_t l_486 = 6L;
                    int i, j, k;
                    for (i = 0; i < 8; i++)
                        l_446[i] = &l_444[0][1][1];
                    for (i = 0; i < 4; i++)
                        l_467[i] = (-1L);
                    ++l_420;
                }
                if (p_46)
                    break;
            }
        }
    }
    else
    { /* block id: 317 */
        for (p_1695->g_178 = 0; (p_1695->g_178 >= 20); p_1695->g_178 = safe_add_func_int64_t_s_s(p_1695->g_178, 8))
        { /* block id: 320 */
            return p_1695->g_614.f3;
        }
        return p_1695->g_192.f6;
    }
    return p_46;
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[7];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 7; i++)
            l_comm_values[i] = 1;
    struct S2 c_1696;
    struct S2* p_1695 = &c_1696;
    struct S2 c_1697 = {
        1L, // p_1695->g_17
        {(void*)0,(void*)0,(void*)0}, // p_1695->g_53
        {&p_1695->g_17}, // p_1695->g_59
        &p_1695->g_59[0], // p_1695->g_58
        0x616EL, // p_1695->g_71
        {0UL,1L,4294967295UL,0xB025F3D189EEBB9FL,0x77BDL,0x29AC07F4L,0x73L,-7L}, // p_1695->g_72
        18446744073709551611UL, // p_1695->g_104
        0x9B0BL, // p_1695->g_110
        {18446744073709551608UL}, // p_1695->g_121
        4294967290UL, // p_1695->g_126
        0x2EB4CE563FEC5C9BL, // p_1695->g_129
        0x19FAL, // p_1695->g_131
        (void*)0, // p_1695->g_151
        1UL, // p_1695->g_156
        1UL, // p_1695->g_162
        {{&p_1695->g_162,&p_1695->g_162,&p_1695->g_162,&p_1695->g_162,&p_1695->g_162,&p_1695->g_162,&p_1695->g_162},{&p_1695->g_162,&p_1695->g_162,&p_1695->g_162,&p_1695->g_162,&p_1695->g_162,&p_1695->g_162,&p_1695->g_162},{&p_1695->g_162,&p_1695->g_162,&p_1695->g_162,&p_1695->g_162,&p_1695->g_162,&p_1695->g_162,&p_1695->g_162},{&p_1695->g_162,&p_1695->g_162,&p_1695->g_162,&p_1695->g_162,&p_1695->g_162,&p_1695->g_162,&p_1695->g_162}}, // p_1695->g_164
        4294967286UL, // p_1695->g_178
        &p_1695->g_129, // p_1695->g_182
        &p_1695->g_182, // p_1695->g_181
        &p_1695->g_181, // p_1695->g_183
        {0xD5L,0L,0x40B6445FL,0xDAB1EBA0929077F6L,0L,2UL,-2L,0x5FL}, // p_1695->g_188
        &p_1695->g_188, // p_1695->g_189
        {252UL,-4L,1UL,0xB055CD90D8D92581L,6L,0xB8816B14L,1L,1L}, // p_1695->g_192
        4294967289UL, // p_1695->g_196
        0L, // p_1695->g_217
        18446744073709551607UL, // p_1695->g_218
        {255UL,0x000E9987L,4294967294UL,0x6C52A644AE2F335CL,0L,8UL,0x06L,7L}, // p_1695->g_257
        {&p_1695->g_257}, // p_1695->g_258
        {255UL,0x5BF87B30L,4294967286UL,0UL,0x402BL,2UL,0L,-1L}, // p_1695->g_260
        0xDB1DBA8BL, // p_1695->g_265
        (void*)0, // p_1695->g_274
        {{{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274}},{{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274}},{{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274}},{{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274}},{{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274}},{{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274}},{{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274}},{{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274},{&p_1695->g_274,&p_1695->g_274}}}, // p_1695->g_273
        &p_1695->g_273[6][0][1], // p_1695->g_272
        {{{&p_1695->g_272,&p_1695->g_272,(void*)0,(void*)0,(void*)0,&p_1695->g_272},{&p_1695->g_272,&p_1695->g_272,(void*)0,(void*)0,(void*)0,&p_1695->g_272},{&p_1695->g_272,&p_1695->g_272,(void*)0,(void*)0,(void*)0,&p_1695->g_272},{&p_1695->g_272,&p_1695->g_272,(void*)0,(void*)0,(void*)0,&p_1695->g_272},{&p_1695->g_272,&p_1695->g_272,(void*)0,(void*)0,(void*)0,&p_1695->g_272},{&p_1695->g_272,&p_1695->g_272,(void*)0,(void*)0,(void*)0,&p_1695->g_272},{&p_1695->g_272,&p_1695->g_272,(void*)0,(void*)0,(void*)0,&p_1695->g_272},{&p_1695->g_272,&p_1695->g_272,(void*)0,(void*)0,(void*)0,&p_1695->g_272},{&p_1695->g_272,&p_1695->g_272,(void*)0,(void*)0,(void*)0,&p_1695->g_272}},{{&p_1695->g_272,&p_1695->g_272,(void*)0,(void*)0,(void*)0,&p_1695->g_272},{&p_1695->g_272,&p_1695->g_272,(void*)0,(void*)0,(void*)0,&p_1695->g_272},{&p_1695->g_272,&p_1695->g_272,(void*)0,(void*)0,(void*)0,&p_1695->g_272},{&p_1695->g_272,&p_1695->g_272,(void*)0,(void*)0,(void*)0,&p_1695->g_272},{&p_1695->g_272,&p_1695->g_272,(void*)0,(void*)0,(void*)0,&p_1695->g_272},{&p_1695->g_272,&p_1695->g_272,(void*)0,(void*)0,(void*)0,&p_1695->g_272},{&p_1695->g_272,&p_1695->g_272,(void*)0,(void*)0,(void*)0,&p_1695->g_272},{&p_1695->g_272,&p_1695->g_272,(void*)0,(void*)0,(void*)0,&p_1695->g_272},{&p_1695->g_272,&p_1695->g_272,(void*)0,(void*)0,(void*)0,&p_1695->g_272}}}, // p_1695->g_271
        {0xBF98C910L,0xBF98C910L,0xBF98C910L}, // p_1695->g_300
        {0x38L,6L,0xC94DDF82L,0x8187A7378F87C415L,0x4BF9L,4294967295UL,0L,8L}, // p_1695->g_309
        {4294967290UL,4294967290UL}, // p_1695->g_326
        (-4L), // p_1695->g_338
        {8UL,8UL,8UL,8UL,8UL,8UL,8UL,8UL}, // p_1695->g_344
        {{0x66L,-5L,0xA42BA53DL,0xAF08C80EB57E2701L,-8L,4294967290UL,0x48L,0L},{0x66L,-5L,0xA42BA53DL,0xAF08C80EB57E2701L,-8L,4294967290UL,0x48L,0L},{0x66L,-5L,0xA42BA53DL,0xAF08C80EB57E2701L,-8L,4294967290UL,0x48L,0L},{0x66L,-5L,0xA42BA53DL,0xAF08C80EB57E2701L,-8L,4294967290UL,0x48L,0L}}, // p_1695->g_350
        {6UL,0x723EEDB4L,4294967295UL,1UL,0x53A2L,0xA56877D4L,0x6FL,0x6FL}, // p_1695->g_374
        {0UL}, // p_1695->g_375
        &p_1695->g_375.f4, // p_1695->g_417
        {{&p_1695->g_338,&p_1695->g_71,&p_1695->g_338,&p_1695->g_71,&p_1695->g_338,&p_1695->g_71,&p_1695->g_338,(void*)0,&p_1695->g_338,&p_1695->g_338},{&p_1695->g_338,&p_1695->g_71,&p_1695->g_338,&p_1695->g_71,&p_1695->g_338,&p_1695->g_71,&p_1695->g_338,(void*)0,&p_1695->g_338,&p_1695->g_338},{&p_1695->g_338,&p_1695->g_71,&p_1695->g_338,&p_1695->g_71,&p_1695->g_338,&p_1695->g_71,&p_1695->g_338,(void*)0,&p_1695->g_338,&p_1695->g_338},{&p_1695->g_338,&p_1695->g_71,&p_1695->g_338,&p_1695->g_71,&p_1695->g_338,&p_1695->g_71,&p_1695->g_338,(void*)0,&p_1695->g_338,&p_1695->g_338},{&p_1695->g_338,&p_1695->g_71,&p_1695->g_338,&p_1695->g_71,&p_1695->g_338,&p_1695->g_71,&p_1695->g_338,(void*)0,&p_1695->g_338,&p_1695->g_338},{&p_1695->g_338,&p_1695->g_71,&p_1695->g_338,&p_1695->g_71,&p_1695->g_338,&p_1695->g_71,&p_1695->g_338,(void*)0,&p_1695->g_338,&p_1695->g_338},{&p_1695->g_338,&p_1695->g_71,&p_1695->g_338,&p_1695->g_71,&p_1695->g_338,&p_1695->g_71,&p_1695->g_338,(void*)0,&p_1695->g_338,&p_1695->g_338},{&p_1695->g_338,&p_1695->g_71,&p_1695->g_338,&p_1695->g_71,&p_1695->g_338,&p_1695->g_71,&p_1695->g_338,(void*)0,&p_1695->g_338,&p_1695->g_338},{&p_1695->g_338,&p_1695->g_71,&p_1695->g_338,&p_1695->g_71,&p_1695->g_338,&p_1695->g_71,&p_1695->g_338,(void*)0,&p_1695->g_338,&p_1695->g_338}}, // p_1695->g_418
        &p_1695->g_375.f0, // p_1695->g_460
        &p_1695->g_460, // p_1695->g_459
        {8UL,1L,4294967295UL,0x05E105BAB7490287L,0x5648L,4294967294UL,-4L,0x61L}, // p_1695->g_490
        {{{{9UL,4L,0x62CD7DA8L,0xF9417E59EF2697D9L,1L,4294967295UL,0x70L,8L},{0xDCL,1L,0xB870C293L,0x7D3FC2DB5E98FB84L,1L,0UL,8L,0L},{0x7FL,-1L,4294967288UL,0x4D32C556EC912E82L,0L,0xD239D3E0L,0x16L,0x2DL}},{{9UL,4L,0x62CD7DA8L,0xF9417E59EF2697D9L,1L,4294967295UL,0x70L,8L},{0xDCL,1L,0xB870C293L,0x7D3FC2DB5E98FB84L,1L,0UL,8L,0L},{0x7FL,-1L,4294967288UL,0x4D32C556EC912E82L,0L,0xD239D3E0L,0x16L,0x2DL}},{{9UL,4L,0x62CD7DA8L,0xF9417E59EF2697D9L,1L,4294967295UL,0x70L,8L},{0xDCL,1L,0xB870C293L,0x7D3FC2DB5E98FB84L,1L,0UL,8L,0L},{0x7FL,-1L,4294967288UL,0x4D32C556EC912E82L,0L,0xD239D3E0L,0x16L,0x2DL}},{{9UL,4L,0x62CD7DA8L,0xF9417E59EF2697D9L,1L,4294967295UL,0x70L,8L},{0xDCL,1L,0xB870C293L,0x7D3FC2DB5E98FB84L,1L,0UL,8L,0L},{0x7FL,-1L,4294967288UL,0x4D32C556EC912E82L,0L,0xD239D3E0L,0x16L,0x2DL}},{{9UL,4L,0x62CD7DA8L,0xF9417E59EF2697D9L,1L,4294967295UL,0x70L,8L},{0xDCL,1L,0xB870C293L,0x7D3FC2DB5E98FB84L,1L,0UL,8L,0L},{0x7FL,-1L,4294967288UL,0x4D32C556EC912E82L,0L,0xD239D3E0L,0x16L,0x2DL}},{{9UL,4L,0x62CD7DA8L,0xF9417E59EF2697D9L,1L,4294967295UL,0x70L,8L},{0xDCL,1L,0xB870C293L,0x7D3FC2DB5E98FB84L,1L,0UL,8L,0L},{0x7FL,-1L,4294967288UL,0x4D32C556EC912E82L,0L,0xD239D3E0L,0x16L,0x2DL}},{{9UL,4L,0x62CD7DA8L,0xF9417E59EF2697D9L,1L,4294967295UL,0x70L,8L},{0xDCL,1L,0xB870C293L,0x7D3FC2DB5E98FB84L,1L,0UL,8L,0L},{0x7FL,-1L,4294967288UL,0x4D32C556EC912E82L,0L,0xD239D3E0L,0x16L,0x2DL}}},{{{9UL,4L,0x62CD7DA8L,0xF9417E59EF2697D9L,1L,4294967295UL,0x70L,8L},{0xDCL,1L,0xB870C293L,0x7D3FC2DB5E98FB84L,1L,0UL,8L,0L},{0x7FL,-1L,4294967288UL,0x4D32C556EC912E82L,0L,0xD239D3E0L,0x16L,0x2DL}},{{9UL,4L,0x62CD7DA8L,0xF9417E59EF2697D9L,1L,4294967295UL,0x70L,8L},{0xDCL,1L,0xB870C293L,0x7D3FC2DB5E98FB84L,1L,0UL,8L,0L},{0x7FL,-1L,4294967288UL,0x4D32C556EC912E82L,0L,0xD239D3E0L,0x16L,0x2DL}},{{9UL,4L,0x62CD7DA8L,0xF9417E59EF2697D9L,1L,4294967295UL,0x70L,8L},{0xDCL,1L,0xB870C293L,0x7D3FC2DB5E98FB84L,1L,0UL,8L,0L},{0x7FL,-1L,4294967288UL,0x4D32C556EC912E82L,0L,0xD239D3E0L,0x16L,0x2DL}},{{9UL,4L,0x62CD7DA8L,0xF9417E59EF2697D9L,1L,4294967295UL,0x70L,8L},{0xDCL,1L,0xB870C293L,0x7D3FC2DB5E98FB84L,1L,0UL,8L,0L},{0x7FL,-1L,4294967288UL,0x4D32C556EC912E82L,0L,0xD239D3E0L,0x16L,0x2DL}},{{9UL,4L,0x62CD7DA8L,0xF9417E59EF2697D9L,1L,4294967295UL,0x70L,8L},{0xDCL,1L,0xB870C293L,0x7D3FC2DB5E98FB84L,1L,0UL,8L,0L},{0x7FL,-1L,4294967288UL,0x4D32C556EC912E82L,0L,0xD239D3E0L,0x16L,0x2DL}},{{9UL,4L,0x62CD7DA8L,0xF9417E59EF2697D9L,1L,4294967295UL,0x70L,8L},{0xDCL,1L,0xB870C293L,0x7D3FC2DB5E98FB84L,1L,0UL,8L,0L},{0x7FL,-1L,4294967288UL,0x4D32C556EC912E82L,0L,0xD239D3E0L,0x16L,0x2DL}},{{9UL,4L,0x62CD7DA8L,0xF9417E59EF2697D9L,1L,4294967295UL,0x70L,8L},{0xDCL,1L,0xB870C293L,0x7D3FC2DB5E98FB84L,1L,0UL,8L,0L},{0x7FL,-1L,4294967288UL,0x4D32C556EC912E82L,0L,0xD239D3E0L,0x16L,0x2DL}}}}, // p_1695->g_491
        0x6760L, // p_1695->g_492
        {254UL,0x363284DFL,0x3F6607F1L,0UL,-1L,0x93A4205DL,-9L,-1L}, // p_1695->g_533
        {{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}}}, // p_1695->g_582
        0xE03D375F85666D4BL, // p_1695->g_589
        {{{1UL,0x7CB0704DL,1UL,18446744073709551615UL,0x3626L,4294967295UL,0x0BL,0L},{0x3AL,0x6A839504L,4294967295UL,0xC13662F13F8C6A21L,6L,0x1A7CC0D9L,-1L,0x35L},{1UL,0x7CB0704DL,1UL,18446744073709551615UL,0x3626L,4294967295UL,0x0BL,0L}},{{1UL,0x7CB0704DL,1UL,18446744073709551615UL,0x3626L,4294967295UL,0x0BL,0L},{0x3AL,0x6A839504L,4294967295UL,0xC13662F13F8C6A21L,6L,0x1A7CC0D9L,-1L,0x35L},{1UL,0x7CB0704DL,1UL,18446744073709551615UL,0x3626L,4294967295UL,0x0BL,0L}},{{1UL,0x7CB0704DL,1UL,18446744073709551615UL,0x3626L,4294967295UL,0x0BL,0L},{0x3AL,0x6A839504L,4294967295UL,0xC13662F13F8C6A21L,6L,0x1A7CC0D9L,-1L,0x35L},{1UL,0x7CB0704DL,1UL,18446744073709551615UL,0x3626L,4294967295UL,0x0BL,0L}}}, // p_1695->g_590
        &p_1695->g_590[2][1], // p_1695->g_591
        {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}, // p_1695->g_594
        &p_1695->g_309.f1, // p_1695->g_595
        {0x40L,0x0B71DD49L,0UL,0UL,0L,4294967295UL,1L,4L}, // p_1695->g_614
        &p_1695->g_188, // p_1695->g_615
        2L, // p_1695->g_619
        &p_1695->g_309, // p_1695->g_642
        (-6L), // p_1695->g_665
        {{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}}, // p_1695->g_695
        {0UL}, // p_1695->g_721
        {0x2FF16FFEL}, // p_1695->g_804
        (void*)0, // p_1695->g_808
        &p_1695->g_808, // p_1695->g_807
        {{0xE0L,0x32293EACL,0xF0D0FCF6L,1UL,0x487DL,0x8CEA0278L,0x22L,0x27L},{0xE0L,0x32293EACL,0xF0D0FCF6L,1UL,0x487DL,0x8CEA0278L,0x22L,0x27L},{0xE0L,0x32293EACL,0xF0D0FCF6L,1UL,0x487DL,0x8CEA0278L,0x22L,0x27L},{0xE0L,0x32293EACL,0xF0D0FCF6L,1UL,0x487DL,0x8CEA0278L,0x22L,0x27L},{0xE0L,0x32293EACL,0xF0D0FCF6L,1UL,0x487DL,0x8CEA0278L,0x22L,0x27L}}, // p_1695->g_823
        {255UL,1L,4294967292UL,0UL,0x1835L,1UL,-1L,0x39L}, // p_1695->g_856
        {18446744073709551615UL}, // p_1695->g_902
        {1UL,-1L,0xB04176B6L,0UL,0x12AAL,0x45BFC0D9L,0x23L,-1L}, // p_1695->g_920
        1UL, // p_1695->g_936
        {1UL,0L,4294967290UL,0UL,-5L,0x0005C5ABL,-1L,0x6DL}, // p_1695->g_980
        &p_1695->g_309, // p_1695->g_981
        {0xD8A51B6D38F63D52L,0xD8A51B6D38F63D52L,0xD8A51B6D38F63D52L,0xD8A51B6D38F63D52L,0xD8A51B6D38F63D52L,0xD8A51B6D38F63D52L,0xD8A51B6D38F63D52L}, // p_1695->g_1003
        {254UL,0x5513AE87L,4294967290UL,1UL,0x39D1L,4294967295UL,0x48L,-6L}, // p_1695->g_1038
        {9UL,0L,8UL,0xC53429421BD1F2AFL,-1L,0xF3FC6EADL,0x22L,0x26L}, // p_1695->g_1061
        (-2L), // p_1695->g_1072
        {8UL,4L,4294967294UL,0UL,0x3603L,0x08960CB3L,1L,5L}, // p_1695->g_1073
        &p_1695->g_121, // p_1695->g_1150
        {255UL,0x5FF06E57L,0UL,18446744073709551608UL,0x26F2L,0UL,-1L,0x37L}, // p_1695->g_1151
        (void*)0, // p_1695->g_1188
        &p_1695->g_1188, // p_1695->g_1187
        {{&p_1695->g_823[1],&p_1695->g_823[1],&p_1695->g_823[1],&p_1695->g_823[1],&p_1695->g_823[1]},{&p_1695->g_823[1],&p_1695->g_823[1],&p_1695->g_823[1],&p_1695->g_823[1],&p_1695->g_823[1]},{&p_1695->g_823[1],&p_1695->g_823[1],&p_1695->g_823[1],&p_1695->g_823[1],&p_1695->g_823[1]}}, // p_1695->g_1191
        &p_1695->g_1191[0][4], // p_1695->g_1190
        {0xA58BA0630AD41C92L}, // p_1695->g_1196
        0x96L, // p_1695->g_1224
        {255UL,2L,0x1A3E869AL,0x696895FB78B4AF49L,0L,0UL,8L,1L}, // p_1695->g_1232
        {7UL,1L,4294967295UL,0x78FE328E85398A5AL,-1L,0xCAB853ECL,0x56L,0x0AL}, // p_1695->g_1233
        {0x72L,0L,0x21259A66L,18446744073709551615UL,0x6487L,0x1EB1A2A8L,6L,1L}, // p_1695->g_1236
        {&p_1695->g_590[2][1],&p_1695->g_1236,&p_1695->g_590[2][1],&p_1695->g_590[2][1],&p_1695->g_1236,&p_1695->g_590[2][1],&p_1695->g_590[2][1]}, // p_1695->g_1237
        &p_1695->g_1038.f5, // p_1695->g_1282
        &p_1695->g_1282, // p_1695->g_1281
        {{255UL,-10L,0UL,3UL,0x1D59L,0x0D8319DBL,-1L,0x31L},{255UL,-10L,0UL,3UL,0x1D59L,0x0D8319DBL,-1L,0x31L},{255UL,-10L,0UL,3UL,0x1D59L,0x0D8319DBL,-1L,0x31L},{255UL,-10L,0UL,3UL,0x1D59L,0x0D8319DBL,-1L,0x31L},{255UL,-10L,0UL,3UL,0x1D59L,0x0D8319DBL,-1L,0x31L},{255UL,-10L,0UL,3UL,0x1D59L,0x0D8319DBL,-1L,0x31L},{255UL,-10L,0UL,3UL,0x1D59L,0x0D8319DBL,-1L,0x31L}}, // p_1695->g_1294
        {&p_1695->g_257}, // p_1695->g_1295
        {0x03L,0x7697521BL,7UL,0x4706E3425B67797BL,0x4E25L,0x19C13275L,0x4EL,4L}, // p_1695->g_1322
        0xCC072D921380B9E9L, // p_1695->g_1323
        (void*)0, // p_1695->g_1386
        &p_1695->g_1236.f2, // p_1695->g_1409
        &p_1695->g_1409, // p_1695->g_1408
        &p_1695->g_1408, // p_1695->g_1407
        &p_1695->g_1061.f6, // p_1695->g_1519
        &p_1695->g_1519, // p_1695->g_1518
        {{{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}}},{{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}}},{{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}}},{{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}}},{{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}}},{{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}}},{{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}}},{{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}}},{{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}}},{{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}},{{18446744073709551614UL},{18446744073709551614UL},{0xCA7CEE7E287B8352L}}}}, // p_1695->g_1526
        &p_1695->g_1191[0][4], // p_1695->g_1539
        0x5F10L, // p_1695->g_1558
        &p_1695->g_58, // p_1695->g_1594
        6L, // p_1695->g_1610
        &p_1695->g_131, // p_1695->g_1680
        {{{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665}},{{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665}},{{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665}},{{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665}},{{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665}},{{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665},{&p_1695->g_619,&p_1695->g_665,&p_1695->g_665}}}, // p_1695->g_1688
        sequence_input[get_global_id(0)], // p_1695->global_0_offset
        sequence_input[get_global_id(1)], // p_1695->global_1_offset
        sequence_input[get_global_id(2)], // p_1695->global_2_offset
        sequence_input[get_local_id(0)], // p_1695->local_0_offset
        sequence_input[get_local_id(1)], // p_1695->local_1_offset
        sequence_input[get_local_id(2)], // p_1695->local_2_offset
        sequence_input[get_group_id(0)], // p_1695->group_0_offset
        sequence_input[get_group_id(1)], // p_1695->group_1_offset
        sequence_input[get_group_id(2)], // p_1695->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 7)), permutations[0][get_linear_local_id()])), // p_1695->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1696 = c_1697;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1695);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1695->g_17, "p_1695->g_17", print_hash_value);
    transparent_crc(p_1695->g_71, "p_1695->g_71", print_hash_value);
    transparent_crc(p_1695->g_72.f0, "p_1695->g_72.f0", print_hash_value);
    transparent_crc(p_1695->g_72.f1, "p_1695->g_72.f1", print_hash_value);
    transparent_crc(p_1695->g_72.f2, "p_1695->g_72.f2", print_hash_value);
    transparent_crc(p_1695->g_72.f3, "p_1695->g_72.f3", print_hash_value);
    transparent_crc(p_1695->g_72.f4, "p_1695->g_72.f4", print_hash_value);
    transparent_crc(p_1695->g_72.f5, "p_1695->g_72.f5", print_hash_value);
    transparent_crc(p_1695->g_72.f6, "p_1695->g_72.f6", print_hash_value);
    transparent_crc(p_1695->g_72.f7, "p_1695->g_72.f7", print_hash_value);
    transparent_crc(p_1695->g_104, "p_1695->g_104", print_hash_value);
    transparent_crc(p_1695->g_110, "p_1695->g_110", print_hash_value);
    transparent_crc(p_1695->g_121.f0, "p_1695->g_121.f0", print_hash_value);
    transparent_crc(p_1695->g_126, "p_1695->g_126", print_hash_value);
    transparent_crc(p_1695->g_129, "p_1695->g_129", print_hash_value);
    transparent_crc(p_1695->g_131, "p_1695->g_131", print_hash_value);
    transparent_crc(p_1695->g_156, "p_1695->g_156", print_hash_value);
    transparent_crc(p_1695->g_162, "p_1695->g_162", print_hash_value);
    transparent_crc(p_1695->g_178, "p_1695->g_178", print_hash_value);
    transparent_crc(p_1695->g_188.f0, "p_1695->g_188.f0", print_hash_value);
    transparent_crc(p_1695->g_188.f1, "p_1695->g_188.f1", print_hash_value);
    transparent_crc(p_1695->g_188.f2, "p_1695->g_188.f2", print_hash_value);
    transparent_crc(p_1695->g_188.f3, "p_1695->g_188.f3", print_hash_value);
    transparent_crc(p_1695->g_188.f4, "p_1695->g_188.f4", print_hash_value);
    transparent_crc(p_1695->g_188.f5, "p_1695->g_188.f5", print_hash_value);
    transparent_crc(p_1695->g_188.f6, "p_1695->g_188.f6", print_hash_value);
    transparent_crc(p_1695->g_188.f7, "p_1695->g_188.f7", print_hash_value);
    transparent_crc(p_1695->g_192.f0, "p_1695->g_192.f0", print_hash_value);
    transparent_crc(p_1695->g_192.f1, "p_1695->g_192.f1", print_hash_value);
    transparent_crc(p_1695->g_192.f2, "p_1695->g_192.f2", print_hash_value);
    transparent_crc(p_1695->g_192.f3, "p_1695->g_192.f3", print_hash_value);
    transparent_crc(p_1695->g_192.f4, "p_1695->g_192.f4", print_hash_value);
    transparent_crc(p_1695->g_192.f5, "p_1695->g_192.f5", print_hash_value);
    transparent_crc(p_1695->g_192.f6, "p_1695->g_192.f6", print_hash_value);
    transparent_crc(p_1695->g_192.f7, "p_1695->g_192.f7", print_hash_value);
    transparent_crc(p_1695->g_196, "p_1695->g_196", print_hash_value);
    transparent_crc(p_1695->g_217, "p_1695->g_217", print_hash_value);
    transparent_crc(p_1695->g_218, "p_1695->g_218", print_hash_value);
    transparent_crc(p_1695->g_257.f0, "p_1695->g_257.f0", print_hash_value);
    transparent_crc(p_1695->g_257.f1, "p_1695->g_257.f1", print_hash_value);
    transparent_crc(p_1695->g_257.f2, "p_1695->g_257.f2", print_hash_value);
    transparent_crc(p_1695->g_257.f3, "p_1695->g_257.f3", print_hash_value);
    transparent_crc(p_1695->g_257.f4, "p_1695->g_257.f4", print_hash_value);
    transparent_crc(p_1695->g_257.f5, "p_1695->g_257.f5", print_hash_value);
    transparent_crc(p_1695->g_257.f6, "p_1695->g_257.f6", print_hash_value);
    transparent_crc(p_1695->g_257.f7, "p_1695->g_257.f7", print_hash_value);
    transparent_crc(p_1695->g_260.f0, "p_1695->g_260.f0", print_hash_value);
    transparent_crc(p_1695->g_260.f1, "p_1695->g_260.f1", print_hash_value);
    transparent_crc(p_1695->g_260.f2, "p_1695->g_260.f2", print_hash_value);
    transparent_crc(p_1695->g_260.f3, "p_1695->g_260.f3", print_hash_value);
    transparent_crc(p_1695->g_260.f4, "p_1695->g_260.f4", print_hash_value);
    transparent_crc(p_1695->g_260.f5, "p_1695->g_260.f5", print_hash_value);
    transparent_crc(p_1695->g_260.f6, "p_1695->g_260.f6", print_hash_value);
    transparent_crc(p_1695->g_260.f7, "p_1695->g_260.f7", print_hash_value);
    transparent_crc(p_1695->g_265, "p_1695->g_265", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1695->g_300[i], "p_1695->g_300[i]", print_hash_value);

    }
    transparent_crc(p_1695->g_309.f0, "p_1695->g_309.f0", print_hash_value);
    transparent_crc(p_1695->g_309.f1, "p_1695->g_309.f1", print_hash_value);
    transparent_crc(p_1695->g_309.f2, "p_1695->g_309.f2", print_hash_value);
    transparent_crc(p_1695->g_309.f3, "p_1695->g_309.f3", print_hash_value);
    transparent_crc(p_1695->g_309.f4, "p_1695->g_309.f4", print_hash_value);
    transparent_crc(p_1695->g_309.f5, "p_1695->g_309.f5", print_hash_value);
    transparent_crc(p_1695->g_309.f6, "p_1695->g_309.f6", print_hash_value);
    transparent_crc(p_1695->g_309.f7, "p_1695->g_309.f7", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1695->g_326[i], "p_1695->g_326[i]", print_hash_value);

    }
    transparent_crc(p_1695->g_338, "p_1695->g_338", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1695->g_344[i], "p_1695->g_344[i]", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1695->g_350[i].f0, "p_1695->g_350[i].f0", print_hash_value);
        transparent_crc(p_1695->g_350[i].f1, "p_1695->g_350[i].f1", print_hash_value);
        transparent_crc(p_1695->g_350[i].f2, "p_1695->g_350[i].f2", print_hash_value);
        transparent_crc(p_1695->g_350[i].f3, "p_1695->g_350[i].f3", print_hash_value);
        transparent_crc(p_1695->g_350[i].f4, "p_1695->g_350[i].f4", print_hash_value);
        transparent_crc(p_1695->g_350[i].f5, "p_1695->g_350[i].f5", print_hash_value);
        transparent_crc(p_1695->g_350[i].f6, "p_1695->g_350[i].f6", print_hash_value);
        transparent_crc(p_1695->g_350[i].f7, "p_1695->g_350[i].f7", print_hash_value);

    }
    transparent_crc(p_1695->g_374.f0, "p_1695->g_374.f0", print_hash_value);
    transparent_crc(p_1695->g_374.f1, "p_1695->g_374.f1", print_hash_value);
    transparent_crc(p_1695->g_374.f2, "p_1695->g_374.f2", print_hash_value);
    transparent_crc(p_1695->g_374.f3, "p_1695->g_374.f3", print_hash_value);
    transparent_crc(p_1695->g_374.f4, "p_1695->g_374.f4", print_hash_value);
    transparent_crc(p_1695->g_374.f5, "p_1695->g_374.f5", print_hash_value);
    transparent_crc(p_1695->g_374.f6, "p_1695->g_374.f6", print_hash_value);
    transparent_crc(p_1695->g_374.f7, "p_1695->g_374.f7", print_hash_value);
    transparent_crc(p_1695->g_490.f0, "p_1695->g_490.f0", print_hash_value);
    transparent_crc(p_1695->g_490.f1, "p_1695->g_490.f1", print_hash_value);
    transparent_crc(p_1695->g_490.f2, "p_1695->g_490.f2", print_hash_value);
    transparent_crc(p_1695->g_490.f3, "p_1695->g_490.f3", print_hash_value);
    transparent_crc(p_1695->g_490.f4, "p_1695->g_490.f4", print_hash_value);
    transparent_crc(p_1695->g_490.f5, "p_1695->g_490.f5", print_hash_value);
    transparent_crc(p_1695->g_490.f6, "p_1695->g_490.f6", print_hash_value);
    transparent_crc(p_1695->g_490.f7, "p_1695->g_490.f7", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1695->g_491[i][j][k].f0, "p_1695->g_491[i][j][k].f0", print_hash_value);
                transparent_crc(p_1695->g_491[i][j][k].f1, "p_1695->g_491[i][j][k].f1", print_hash_value);
                transparent_crc(p_1695->g_491[i][j][k].f2, "p_1695->g_491[i][j][k].f2", print_hash_value);
                transparent_crc(p_1695->g_491[i][j][k].f3, "p_1695->g_491[i][j][k].f3", print_hash_value);
                transparent_crc(p_1695->g_491[i][j][k].f4, "p_1695->g_491[i][j][k].f4", print_hash_value);
                transparent_crc(p_1695->g_491[i][j][k].f5, "p_1695->g_491[i][j][k].f5", print_hash_value);
                transparent_crc(p_1695->g_491[i][j][k].f6, "p_1695->g_491[i][j][k].f6", print_hash_value);
                transparent_crc(p_1695->g_491[i][j][k].f7, "p_1695->g_491[i][j][k].f7", print_hash_value);

            }
        }
    }
    transparent_crc(p_1695->g_492, "p_1695->g_492", print_hash_value);
    transparent_crc(p_1695->g_533.f0, "p_1695->g_533.f0", print_hash_value);
    transparent_crc(p_1695->g_533.f1, "p_1695->g_533.f1", print_hash_value);
    transparent_crc(p_1695->g_533.f2, "p_1695->g_533.f2", print_hash_value);
    transparent_crc(p_1695->g_533.f3, "p_1695->g_533.f3", print_hash_value);
    transparent_crc(p_1695->g_533.f4, "p_1695->g_533.f4", print_hash_value);
    transparent_crc(p_1695->g_533.f5, "p_1695->g_533.f5", print_hash_value);
    transparent_crc(p_1695->g_533.f6, "p_1695->g_533.f6", print_hash_value);
    transparent_crc(p_1695->g_533.f7, "p_1695->g_533.f7", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_1695->g_582[i][j].f0, "p_1695->g_582[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1695->g_589, "p_1695->g_589", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1695->g_590[i][j].f0, "p_1695->g_590[i][j].f0", print_hash_value);
            transparent_crc(p_1695->g_590[i][j].f1, "p_1695->g_590[i][j].f1", print_hash_value);
            transparent_crc(p_1695->g_590[i][j].f2, "p_1695->g_590[i][j].f2", print_hash_value);
            transparent_crc(p_1695->g_590[i][j].f3, "p_1695->g_590[i][j].f3", print_hash_value);
            transparent_crc(p_1695->g_590[i][j].f4, "p_1695->g_590[i][j].f4", print_hash_value);
            transparent_crc(p_1695->g_590[i][j].f5, "p_1695->g_590[i][j].f5", print_hash_value);
            transparent_crc(p_1695->g_590[i][j].f6, "p_1695->g_590[i][j].f6", print_hash_value);
            transparent_crc(p_1695->g_590[i][j].f7, "p_1695->g_590[i][j].f7", print_hash_value);

        }
    }
    transparent_crc(p_1695->g_614.f0, "p_1695->g_614.f0", print_hash_value);
    transparent_crc(p_1695->g_614.f1, "p_1695->g_614.f1", print_hash_value);
    transparent_crc(p_1695->g_614.f2, "p_1695->g_614.f2", print_hash_value);
    transparent_crc(p_1695->g_614.f3, "p_1695->g_614.f3", print_hash_value);
    transparent_crc(p_1695->g_614.f4, "p_1695->g_614.f4", print_hash_value);
    transparent_crc(p_1695->g_614.f5, "p_1695->g_614.f5", print_hash_value);
    transparent_crc(p_1695->g_614.f6, "p_1695->g_614.f6", print_hash_value);
    transparent_crc(p_1695->g_614.f7, "p_1695->g_614.f7", print_hash_value);
    transparent_crc(p_1695->g_619, "p_1695->g_619", print_hash_value);
    transparent_crc(p_1695->g_665, "p_1695->g_665", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1695->g_695[i].f0, "p_1695->g_695[i].f0", print_hash_value);

    }
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1695->g_721[i], "p_1695->g_721[i]", print_hash_value);

    }
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1695->g_804[i], "p_1695->g_804[i]", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1695->g_823[i].f0, "p_1695->g_823[i].f0", print_hash_value);
        transparent_crc(p_1695->g_823[i].f1, "p_1695->g_823[i].f1", print_hash_value);
        transparent_crc(p_1695->g_823[i].f2, "p_1695->g_823[i].f2", print_hash_value);
        transparent_crc(p_1695->g_823[i].f3, "p_1695->g_823[i].f3", print_hash_value);
        transparent_crc(p_1695->g_823[i].f4, "p_1695->g_823[i].f4", print_hash_value);
        transparent_crc(p_1695->g_823[i].f5, "p_1695->g_823[i].f5", print_hash_value);
        transparent_crc(p_1695->g_823[i].f6, "p_1695->g_823[i].f6", print_hash_value);
        transparent_crc(p_1695->g_823[i].f7, "p_1695->g_823[i].f7", print_hash_value);

    }
    transparent_crc(p_1695->g_856.f0, "p_1695->g_856.f0", print_hash_value);
    transparent_crc(p_1695->g_856.f1, "p_1695->g_856.f1", print_hash_value);
    transparent_crc(p_1695->g_856.f2, "p_1695->g_856.f2", print_hash_value);
    transparent_crc(p_1695->g_856.f3, "p_1695->g_856.f3", print_hash_value);
    transparent_crc(p_1695->g_856.f4, "p_1695->g_856.f4", print_hash_value);
    transparent_crc(p_1695->g_856.f5, "p_1695->g_856.f5", print_hash_value);
    transparent_crc(p_1695->g_856.f6, "p_1695->g_856.f6", print_hash_value);
    transparent_crc(p_1695->g_856.f7, "p_1695->g_856.f7", print_hash_value);
    transparent_crc(p_1695->g_902.f0, "p_1695->g_902.f0", print_hash_value);
    transparent_crc(p_1695->g_920.f0, "p_1695->g_920.f0", print_hash_value);
    transparent_crc(p_1695->g_920.f1, "p_1695->g_920.f1", print_hash_value);
    transparent_crc(p_1695->g_920.f2, "p_1695->g_920.f2", print_hash_value);
    transparent_crc(p_1695->g_920.f3, "p_1695->g_920.f3", print_hash_value);
    transparent_crc(p_1695->g_920.f4, "p_1695->g_920.f4", print_hash_value);
    transparent_crc(p_1695->g_920.f5, "p_1695->g_920.f5", print_hash_value);
    transparent_crc(p_1695->g_920.f6, "p_1695->g_920.f6", print_hash_value);
    transparent_crc(p_1695->g_920.f7, "p_1695->g_920.f7", print_hash_value);
    transparent_crc(p_1695->g_936, "p_1695->g_936", print_hash_value);
    transparent_crc(p_1695->g_980.f0, "p_1695->g_980.f0", print_hash_value);
    transparent_crc(p_1695->g_980.f1, "p_1695->g_980.f1", print_hash_value);
    transparent_crc(p_1695->g_980.f2, "p_1695->g_980.f2", print_hash_value);
    transparent_crc(p_1695->g_980.f3, "p_1695->g_980.f3", print_hash_value);
    transparent_crc(p_1695->g_980.f4, "p_1695->g_980.f4", print_hash_value);
    transparent_crc(p_1695->g_980.f5, "p_1695->g_980.f5", print_hash_value);
    transparent_crc(p_1695->g_980.f6, "p_1695->g_980.f6", print_hash_value);
    transparent_crc(p_1695->g_980.f7, "p_1695->g_980.f7", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1695->g_1003[i], "p_1695->g_1003[i]", print_hash_value);

    }
    transparent_crc(p_1695->g_1038.f0, "p_1695->g_1038.f0", print_hash_value);
    transparent_crc(p_1695->g_1038.f1, "p_1695->g_1038.f1", print_hash_value);
    transparent_crc(p_1695->g_1038.f2, "p_1695->g_1038.f2", print_hash_value);
    transparent_crc(p_1695->g_1038.f3, "p_1695->g_1038.f3", print_hash_value);
    transparent_crc(p_1695->g_1038.f4, "p_1695->g_1038.f4", print_hash_value);
    transparent_crc(p_1695->g_1038.f5, "p_1695->g_1038.f5", print_hash_value);
    transparent_crc(p_1695->g_1038.f6, "p_1695->g_1038.f6", print_hash_value);
    transparent_crc(p_1695->g_1038.f7, "p_1695->g_1038.f7", print_hash_value);
    transparent_crc(p_1695->g_1061.f0, "p_1695->g_1061.f0", print_hash_value);
    transparent_crc(p_1695->g_1061.f1, "p_1695->g_1061.f1", print_hash_value);
    transparent_crc(p_1695->g_1061.f2, "p_1695->g_1061.f2", print_hash_value);
    transparent_crc(p_1695->g_1061.f3, "p_1695->g_1061.f3", print_hash_value);
    transparent_crc(p_1695->g_1061.f4, "p_1695->g_1061.f4", print_hash_value);
    transparent_crc(p_1695->g_1061.f5, "p_1695->g_1061.f5", print_hash_value);
    transparent_crc(p_1695->g_1061.f6, "p_1695->g_1061.f6", print_hash_value);
    transparent_crc(p_1695->g_1061.f7, "p_1695->g_1061.f7", print_hash_value);
    transparent_crc(p_1695->g_1072, "p_1695->g_1072", print_hash_value);
    transparent_crc(p_1695->g_1073.f0, "p_1695->g_1073.f0", print_hash_value);
    transparent_crc(p_1695->g_1073.f1, "p_1695->g_1073.f1", print_hash_value);
    transparent_crc(p_1695->g_1073.f2, "p_1695->g_1073.f2", print_hash_value);
    transparent_crc(p_1695->g_1073.f3, "p_1695->g_1073.f3", print_hash_value);
    transparent_crc(p_1695->g_1073.f4, "p_1695->g_1073.f4", print_hash_value);
    transparent_crc(p_1695->g_1073.f5, "p_1695->g_1073.f5", print_hash_value);
    transparent_crc(p_1695->g_1073.f6, "p_1695->g_1073.f6", print_hash_value);
    transparent_crc(p_1695->g_1073.f7, "p_1695->g_1073.f7", print_hash_value);
    transparent_crc(p_1695->g_1151.f0, "p_1695->g_1151.f0", print_hash_value);
    transparent_crc(p_1695->g_1151.f1, "p_1695->g_1151.f1", print_hash_value);
    transparent_crc(p_1695->g_1151.f2, "p_1695->g_1151.f2", print_hash_value);
    transparent_crc(p_1695->g_1151.f3, "p_1695->g_1151.f3", print_hash_value);
    transparent_crc(p_1695->g_1151.f4, "p_1695->g_1151.f4", print_hash_value);
    transparent_crc(p_1695->g_1151.f5, "p_1695->g_1151.f5", print_hash_value);
    transparent_crc(p_1695->g_1151.f6, "p_1695->g_1151.f6", print_hash_value);
    transparent_crc(p_1695->g_1151.f7, "p_1695->g_1151.f7", print_hash_value);
    transparent_crc(p_1695->g_1196.f0, "p_1695->g_1196.f0", print_hash_value);
    transparent_crc(p_1695->g_1224, "p_1695->g_1224", print_hash_value);
    transparent_crc(p_1695->g_1232.f0, "p_1695->g_1232.f0", print_hash_value);
    transparent_crc(p_1695->g_1232.f1, "p_1695->g_1232.f1", print_hash_value);
    transparent_crc(p_1695->g_1232.f2, "p_1695->g_1232.f2", print_hash_value);
    transparent_crc(p_1695->g_1232.f3, "p_1695->g_1232.f3", print_hash_value);
    transparent_crc(p_1695->g_1232.f4, "p_1695->g_1232.f4", print_hash_value);
    transparent_crc(p_1695->g_1232.f5, "p_1695->g_1232.f5", print_hash_value);
    transparent_crc(p_1695->g_1232.f6, "p_1695->g_1232.f6", print_hash_value);
    transparent_crc(p_1695->g_1232.f7, "p_1695->g_1232.f7", print_hash_value);
    transparent_crc(p_1695->g_1233.f0, "p_1695->g_1233.f0", print_hash_value);
    transparent_crc(p_1695->g_1233.f1, "p_1695->g_1233.f1", print_hash_value);
    transparent_crc(p_1695->g_1233.f2, "p_1695->g_1233.f2", print_hash_value);
    transparent_crc(p_1695->g_1233.f3, "p_1695->g_1233.f3", print_hash_value);
    transparent_crc(p_1695->g_1233.f4, "p_1695->g_1233.f4", print_hash_value);
    transparent_crc(p_1695->g_1233.f5, "p_1695->g_1233.f5", print_hash_value);
    transparent_crc(p_1695->g_1233.f6, "p_1695->g_1233.f6", print_hash_value);
    transparent_crc(p_1695->g_1233.f7, "p_1695->g_1233.f7", print_hash_value);
    transparent_crc(p_1695->g_1236.f0, "p_1695->g_1236.f0", print_hash_value);
    transparent_crc(p_1695->g_1236.f1, "p_1695->g_1236.f1", print_hash_value);
    transparent_crc(p_1695->g_1236.f2, "p_1695->g_1236.f2", print_hash_value);
    transparent_crc(p_1695->g_1236.f3, "p_1695->g_1236.f3", print_hash_value);
    transparent_crc(p_1695->g_1236.f4, "p_1695->g_1236.f4", print_hash_value);
    transparent_crc(p_1695->g_1236.f5, "p_1695->g_1236.f5", print_hash_value);
    transparent_crc(p_1695->g_1236.f6, "p_1695->g_1236.f6", print_hash_value);
    transparent_crc(p_1695->g_1236.f7, "p_1695->g_1236.f7", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1695->g_1294[i].f0, "p_1695->g_1294[i].f0", print_hash_value);
        transparent_crc(p_1695->g_1294[i].f1, "p_1695->g_1294[i].f1", print_hash_value);
        transparent_crc(p_1695->g_1294[i].f2, "p_1695->g_1294[i].f2", print_hash_value);
        transparent_crc(p_1695->g_1294[i].f3, "p_1695->g_1294[i].f3", print_hash_value);
        transparent_crc(p_1695->g_1294[i].f4, "p_1695->g_1294[i].f4", print_hash_value);
        transparent_crc(p_1695->g_1294[i].f5, "p_1695->g_1294[i].f5", print_hash_value);
        transparent_crc(p_1695->g_1294[i].f6, "p_1695->g_1294[i].f6", print_hash_value);
        transparent_crc(p_1695->g_1294[i].f7, "p_1695->g_1294[i].f7", print_hash_value);

    }
    transparent_crc(p_1695->g_1322.f0, "p_1695->g_1322.f0", print_hash_value);
    transparent_crc(p_1695->g_1322.f1, "p_1695->g_1322.f1", print_hash_value);
    transparent_crc(p_1695->g_1322.f2, "p_1695->g_1322.f2", print_hash_value);
    transparent_crc(p_1695->g_1322.f3, "p_1695->g_1322.f3", print_hash_value);
    transparent_crc(p_1695->g_1322.f4, "p_1695->g_1322.f4", print_hash_value);
    transparent_crc(p_1695->g_1322.f5, "p_1695->g_1322.f5", print_hash_value);
    transparent_crc(p_1695->g_1322.f6, "p_1695->g_1322.f6", print_hash_value);
    transparent_crc(p_1695->g_1322.f7, "p_1695->g_1322.f7", print_hash_value);
    transparent_crc(p_1695->g_1323, "p_1695->g_1323", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1695->g_1526[i][j][k].f0, "p_1695->g_1526[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1695->g_1558, "p_1695->g_1558", print_hash_value);
    transparent_crc(p_1695->g_1610, "p_1695->g_1610", print_hash_value);
    transparent_crc(p_1695->l_comm_values[get_linear_local_id()], "p_1695->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1695->g_comm_values[get_linear_group_id() * 7 + get_linear_local_id()], "p_1695->g_comm_values[get_linear_group_id() * 7 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
