// ---atomic_reductions ---fake_divergence -g 31,5,35 -l 31,1,5
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


// Seed: 112

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint16_t  f0;
   int64_t  f1;
   uint32_t  f2;
   uint32_t  f3;
   volatile uint8_t  f4;
};

struct S1 {
    int32_t g_17[2];
    int32_t g_28[6];
    int32_t *g_27;
    union U0 g_43[9];
    int8_t g_67;
    int16_t g_70;
    uint16_t g_85;
    uint8_t g_94;
    uint8_t g_98;
    uint8_t g_107;
    int32_t g_109;
    int32_t *g_112;
    int64_t g_127;
    int32_t * volatile g_128[2][5];
    int32_t * volatile g_129;
    volatile int8_t * volatile g_131[7];
    volatile int8_t * volatile *g_130;
    int32_t *g_136;
    int32_t **g_135;
    uint32_t g_218;
    int8_t *g_225;
    int16_t g_235[10];
    int16_t *g_234;
    int32_t g_258;
    int8_t **g_312;
    int32_t ** volatile g_339[6];
    uint8_t *g_347[9];
    volatile uint32_t g_384;
    uint32_t * volatile g_442;
    uint32_t * volatile * volatile g_441;
    union U0 * volatile g_596;
    union U0 * volatile * volatile g_595[6][9];
    union U0 * volatile * volatile * volatile g_597;
    int64_t g_630[9][7];
    int32_t g_693;
    int32_t *g_692;
    uint32_t g_736;
    uint32_t *g_735;
    uint32_t * volatile *g_734;
    volatile uint64_t g_843;
    int32_t ** volatile g_879;
    volatile union U0 g_884;
    union U0 g_949;
    volatile union U0 g_971;
    volatile union U0 g_979[1][10][6];
    uint16_t * volatile g_981;
    uint16_t * volatile * volatile g_980;
    uint64_t g_1032;
    volatile int32_t g_1046;
    volatile int64_t * volatile *g_1066;
    int16_t **g_1116[2][1][2];
    int16_t ***g_1115;
    int8_t g_1156;
    int16_t g_1168;
    union U0 g_1191[1];
    union U0 g_1263;
    volatile union U0 g_1302[4];
    union U0 g_1384;
    volatile union U0 g_1392;
    uint64_t g_1423;
    int64_t *g_1456;
    int64_t * volatile *g_1455[5][4][1];
    int16_t g_1459;
    int8_t ***g_1493;
    uint16_t *g_1509;
    uint16_t **g_1508[1][8][9];
    uint16_t ***g_1507;
    uint16_t g_1527[2][1];
    int32_t g_1591;
    union U0 g_1597;
    int32_t **g_1604;
    union U0 *g_1607[5][7][7];
    union U0 ** volatile g_1606;
    volatile int64_t * volatile * volatile *g_1629;
    volatile int64_t * volatile * volatile ** volatile g_1628[2];
    union U0 g_1676;
    uint64_t *g_1788;
    union U0 ** volatile g_1821;
    union U0 g_1848;
    int32_t g_1861[3];
    int64_t *g_1888;
    union U0 g_1896;
    union U0 g_1919;
    int16_t ***g_1944;
    int32_t g_1955;
    volatile uint8_t g_1968[10];
    uint16_t **g_2055;
    union U0 g_2063;
    uint64_t g_2075[4][5][1];
    union U0 g_2093[7][6];
    uint32_t *g_2116;
    uint32_t g_2122;
    union U0 g_2130;
    union U0 g_2131;
    uint32_t **g_2148;
    uint32_t **g_2152;
    volatile union U0 g_2203;
    volatile union U0 *g_2202;
    volatile union U0 * volatile * volatile g_2201;
    volatile union U0 * volatile * volatile *g_2200[9];
    union U0 g_2303[10];
    volatile union U0 g_2304[6][9][4];
    volatile union U0 g_2393[1];
    int32_t g_2404;
    volatile int32_t g_2475;
    int32_t * volatile * volatile g_2500;
    int32_t * volatile * volatile *g_2499;
    int32_t * volatile * volatile ** volatile g_2498;
    union U0 g_2522;
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
union U0  func_1(struct S1 * p_2523);
union U0  func_5(int64_t  p_6, uint32_t  p_7, int16_t  p_8, uint16_t  p_9, int8_t  p_10, struct S1 * p_2523);
int32_t  func_12(int32_t  p_13, struct S1 * p_2523);
uint64_t  func_24(int32_t * p_25, int8_t  p_26, struct S1 * p_2523);
int32_t  func_29(int32_t * p_30, int32_t * p_31, uint16_t  p_32, struct S1 * p_2523);
int32_t * func_33(int32_t * p_34, int32_t * p_35, int32_t * p_36, int16_t  p_37, uint32_t  p_38, struct S1 * p_2523);
int32_t * func_39(int32_t * p_40, int16_t  p_41, struct S1 * p_2523);
uint8_t  func_44(int32_t * p_45, int32_t * p_46, uint8_t  p_47, int64_t  p_48, struct S1 * p_2523);
uint8_t  func_50(int32_t ** p_51, int32_t ** p_52, struct S1 * p_2523);
int32_t  func_55(int32_t * p_56, int32_t  p_57, int32_t  p_58, int32_t * p_59, int32_t * p_60, struct S1 * p_2523);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2523->g_17 p_2523->g_27 p_2523->g_28 p_2523->g_43 p_2523->g_43.f0 p_2523->g_67 p_2523->g_70 p_2523->g_98 p_2523->g_107 p_2523->g_109 p_2523->g_129 p_2523->g_130 p_2523->g_112 p_2523->g_135 p_2523->g_127 p_2523->g_136 p_2523->g_218 p_2523->g_85 p_2523->g_234 p_2523->g_128 p_2523->g_235 p_2523->g_258 p_2523->g_94 p_2523->g_630 p_2523->g_735 p_2523->g_736 p_2523->g_693 p_2523->g_843 p_2523->g_879 p_2523->g_734 p_2523->g_884 p_2523->g_980 p_2523->g_981 p_2523->g_1115 p_2523->g_1116 p_2523->g_442 p_2523->g_1191.f0 p_2523->g_1032 p_2523->g_1156 p_2523->g_1263 p_2523->g_1046 p_2523->g_1302 p_2523->g_692 p_2523->g_1591 p_2523->g_1384.f0 p_2523->g_1263.f0 p_2523->g_1604 p_2523->g_1456 p_2523->g_1597.f2 p_2523->g_2093 p_2523->g_1788 p_2523->g_1423 p_2523->g_2122 p_2523->g_1896.f0 p_2523->g_2130 p_2523->g_2131 p_2523->g_1384.f1 p_2523->g_1861 p_2523->g_2200 p_2523->g_2202 p_2523->g_2203 p_2523->g_131 p_2523->g_441 p_2523->g_1944 p_2523->g_1676.f2 p_2523->g_2152 p_2523->g_2303 p_2523->g_347 p_2523->g_1676.f0 p_2523->g_2075 p_2523->g_1606 p_2523->g_1607 p_2523->g_1821 p_2523->g_2393 p_2523->g_1597.f1 p_2523->g_2404 p_2523->g_2148 p_2523->g_1676.f1 p_2523->g_2201 p_2523->g_2498 p_2523->g_2116 p_2523->g_2522
 * writes: p_2523->g_17 p_2523->g_27 p_2523->g_67 p_2523->g_70 p_2523->g_85 p_2523->g_94 p_2523->g_98 p_2523->g_107 p_2523->g_109 p_2523->g_28 p_2523->g_112 p_2523->g_127 p_2523->g_128 p_2523->g_136 p_2523->g_218 p_2523->g_225 p_2523->g_235 p_2523->g_312 p_2523->g_347 p_2523->g_736 p_2523->g_1156 p_2523->g_949.f0 p_2523->g_1591 p_2523->g_1384.f0 p_2523->g_1263.f0 p_2523->g_1788 p_2523->g_1597.f2 p_2523->g_2116 p_2523->g_2122 p_2523->g_1896.f0 p_2523->g_1384.f1 p_2523->g_2148 p_2523->g_2152 p_2523->g_2063.f0 p_2523->g_1597.f3 p_2523->g_43.f0 p_2523->g_258 p_2523->g_1456 p_2523->g_1848.f1 p_2523->g_1423 p_2523->g_1676.f2 p_2523->g_1527 p_2523->g_1676.f0 p_2523->g_2075 p_2523->g_1607 p_2523->g_1597.f1 p_2523->g_1676.f1 p_2523->g_1861 p_2523->g_2131.f1 p_2523->g_1191.f2
 */
union U0  func_1(struct S1 * p_2523)
{ /* block id: 4 */
    uint32_t l_11 = 4294967288UL;
    int32_t *l_16 = &p_2523->g_17[0];
    int32_t l_18 = 0x7928D9BAL;
    int8_t l_1776 = 0L;
    uint32_t l_1777[10][1][2] = {{{7UL,7UL}},{{7UL,7UL}},{{7UL,7UL}},{{7UL,7UL}},{{7UL,7UL}},{{7UL,7UL}},{{7UL,7UL}},{{7UL,7UL}},{{7UL,7UL}},{{7UL,7UL}}};
    uint32_t l_1778 = 0UL;
    uint64_t l_2132 = 18446744073709551615UL;
    int32_t l_2163 = 5L;
    int32_t l_2165 = 0x3E4FD566L;
    int32_t l_2166 = 0x5C927A85L;
    uint32_t l_2210 = 0x05918745L;
    int16_t *l_2224 = &p_2523->g_1168;
    int64_t l_2266 = (-1L);
    int64_t l_2293[10];
    uint8_t l_2294 = 0UL;
    int64_t l_2308 = (-10L);
    uint8_t **l_2330[6][4] = {{&p_2523->g_347[3],&p_2523->g_347[5],&p_2523->g_347[3],&p_2523->g_347[3]},{&p_2523->g_347[3],&p_2523->g_347[5],&p_2523->g_347[3],&p_2523->g_347[3]},{&p_2523->g_347[3],&p_2523->g_347[5],&p_2523->g_347[3],&p_2523->g_347[3]},{&p_2523->g_347[3],&p_2523->g_347[5],&p_2523->g_347[3],&p_2523->g_347[3]},{&p_2523->g_347[3],&p_2523->g_347[5],&p_2523->g_347[3],&p_2523->g_347[3]},{&p_2523->g_347[3],&p_2523->g_347[5],&p_2523->g_347[3],&p_2523->g_347[3]}};
    int32_t ***l_2375 = &p_2523->g_1604;
    int16_t l_2388 = 0x2417L;
    uint8_t ***l_2394[9] = {(void*)0,&l_2330[3][1],(void*)0,(void*)0,&l_2330[3][1],(void*)0,(void*)0,&l_2330[3][1],(void*)0};
    uint8_t l_2497 = 0x9DL;
    int16_t l_2517[7][3][5] = {{{0x2964L,0x2964L,0x2F6EL,0x0ABCL,0x2723L},{0x2964L,0x2964L,0x2F6EL,0x0ABCL,0x2723L},{0x2964L,0x2964L,0x2F6EL,0x0ABCL,0x2723L}},{{0x2964L,0x2964L,0x2F6EL,0x0ABCL,0x2723L},{0x2964L,0x2964L,0x2F6EL,0x0ABCL,0x2723L},{0x2964L,0x2964L,0x2F6EL,0x0ABCL,0x2723L}},{{0x2964L,0x2964L,0x2F6EL,0x0ABCL,0x2723L},{0x2964L,0x2964L,0x2F6EL,0x0ABCL,0x2723L},{0x2964L,0x2964L,0x2F6EL,0x0ABCL,0x2723L}},{{0x2964L,0x2964L,0x2F6EL,0x0ABCL,0x2723L},{0x2964L,0x2964L,0x2F6EL,0x0ABCL,0x2723L},{0x2964L,0x2964L,0x2F6EL,0x0ABCL,0x2723L}},{{0x2964L,0x2964L,0x2F6EL,0x0ABCL,0x2723L},{0x2964L,0x2964L,0x2F6EL,0x0ABCL,0x2723L},{0x2964L,0x2964L,0x2F6EL,0x0ABCL,0x2723L}},{{0x2964L,0x2964L,0x2F6EL,0x0ABCL,0x2723L},{0x2964L,0x2964L,0x2F6EL,0x0ABCL,0x2723L},{0x2964L,0x2964L,0x2F6EL,0x0ABCL,0x2723L}},{{0x2964L,0x2964L,0x2F6EL,0x0ABCL,0x2723L},{0x2964L,0x2964L,0x2F6EL,0x0ABCL,0x2723L},{0x2964L,0x2964L,0x2F6EL,0x0ABCL,0x2723L}}};
    int i, j, k;
    for (i = 0; i < 10; i++)
        l_2293[i] = 0L;
    if ((((*p_2523->g_129) = (((safe_unary_minus_func_int16_t_s((safe_mul_func_int16_t_s_s((func_5(l_11, (func_12(((safe_lshift_func_int16_t_s_s(((((*l_16) &= l_11) <= 0x68F98558L) > l_11), 5)) == (l_11 , l_18)), p_2523) , p_2523->g_17[0]), (((func_24(p_2523->g_27, p_2523->g_28[1], p_2523) & (-1L)) < l_1776) || p_2523->g_630[3][6]), l_1777[9][0][0], l_1778, p_2523) , (*l_16)), l_2132)))) == p_2523->g_630[7][1]) , (-2L))) > 0x4B90360CL))
    { /* block id: 1154 */
        int8_t l_2142 = 0x16L;
        uint32_t **l_2151 = (void*)0;
        int32_t l_2157[8][6][5] = {{{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L}},{{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L}},{{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L}},{{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L}},{{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L}},{{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L}},{{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L}},{{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L},{0x0920EB86L,0x74BB1439L,0L,5L,1L}}};
        int64_t *l_2225 = &p_2523->g_127;
        int8_t l_2227[1][7][8] = {{{1L,(-3L),(-3L),1L,0x4BL,0x75L,4L,0x32L},{1L,(-3L),(-3L),1L,0x4BL,0x75L,4L,0x32L},{1L,(-3L),(-3L),1L,0x4BL,0x75L,4L,0x32L},{1L,(-3L),(-3L),1L,0x4BL,0x75L,4L,0x32L},{1L,(-3L),(-3L),1L,0x4BL,0x75L,4L,0x32L},{1L,(-3L),(-3L),1L,0x4BL,0x75L,4L,0x32L},{1L,(-3L),(-3L),1L,0x4BL,0x75L,4L,0x32L}}};
        uint32_t *l_2248 = (void*)0;
        int32_t *l_2249 = &l_2163;
        int i, j, k;
        for (p_2523->g_1384.f1 = 1; (p_2523->g_1384.f1 >= 0); p_2523->g_1384.f1 -= 1)
        { /* block id: 1157 */
            int32_t l_2153 = 1L;
            int32_t *l_2154 = &p_2523->g_258;
            int32_t *l_2155 = &p_2523->g_109;
            int32_t *l_2156 = &p_2523->g_28[4];
            int32_t *l_2158 = &p_2523->g_1861[1];
            int32_t *l_2159 = (void*)0;
            int32_t *l_2160 = &p_2523->g_17[0];
            int32_t *l_2161 = &p_2523->g_1955;
            int32_t *l_2162[1][4][1];
            int32_t l_2164 = 0x6F1057A4L;
            uint32_t l_2167 = 0UL;
            union U0 **l_2205[9] = {&p_2523->g_1607[2][4][5],&p_2523->g_1607[4][4][5],&p_2523->g_1607[2][4][5],&p_2523->g_1607[2][4][5],&p_2523->g_1607[4][4][5],&p_2523->g_1607[2][4][5],&p_2523->g_1607[2][4][5],&p_2523->g_1607[4][4][5],&p_2523->g_1607[2][4][5]};
            union U0 ***l_2204[10][5][5] = {{{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0}},{{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0}},{{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0}},{{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0}},{{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0}},{{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0}},{{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0}},{{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0}},{{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0}},{{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0},{&l_2205[3],&l_2205[7],(void*)0,&l_2205[3],(void*)0}}};
            int i, j, k;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 4; j++)
                {
                    for (k = 0; k < 1; k++)
                        l_2162[i][j][k] = &p_2523->g_1591;
                }
            }
            for (p_2523->g_218 = 0; (p_2523->g_218 <= 1); p_2523->g_218 += 1)
            { /* block id: 1160 */
                uint8_t l_2146 = 0UL;
                uint32_t **l_2150 = &p_2523->g_735;
                uint32_t ***l_2149[3][10] = {{&l_2150,&l_2150,&l_2150,&l_2150,(void*)0,&l_2150,&l_2150,(void*)0,&l_2150,&l_2150},{&l_2150,&l_2150,&l_2150,&l_2150,(void*)0,&l_2150,&l_2150,(void*)0,&l_2150,&l_2150},{&l_2150,&l_2150,&l_2150,&l_2150,(void*)0,&l_2150,&l_2150,(void*)0,&l_2150,&l_2150}};
                int i, j;
                (*l_16) = ((safe_unary_minus_func_int32_t_s((safe_sub_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), (safe_mul_func_int16_t_s_s(8L, (safe_mod_func_uint32_t_u_u((0x51L < ((safe_lshift_func_uint8_t_u_u(l_2142, ((safe_unary_minus_func_uint32_t_u(GROUP_DIVERGE(2, 1))) <= (safe_sub_func_int8_t_s_s(l_2146, ((!((safe_unary_minus_func_int64_t_s(0x74A3F38699217A75L)) < (1UL <= ((((*p_2523->g_234) ^= ((p_2523->g_2148 = (void*)0) != (p_2523->g_2152 = (l_2151 = &p_2523->g_735)))) && (l_2142 , FAKE_DIVERGE(p_2523->group_2_offset, get_group_id(2), 10))) | l_2153)))) <= l_2153)))))) > l_2153)), 0x5E0F676DL)))))))) || 0x2FBEA957L);
                if ((**p_2523->g_879))
                    break;
            }
            l_2167--;
            for (p_2523->g_2063.f0 = 0; (p_2523->g_2063.f0 <= 1); p_2523->g_2063.f0 += 1)
            { /* block id: 1171 */
                int16_t l_2199 = 0x1C18L;
                int32_t l_2206 = 0x455F46D1L;
                int32_t l_2207[8][8][2] = {{{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L}},{{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L}},{{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L}},{{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L}},{{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L}},{{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L}},{{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L}},{{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L}}};
                int64_t l_2209 = 0x4A9C73AB32B633AAL;
                uint8_t l_2247 = 251UL;
                int i, j, k;
                for (l_2165 = 4; (l_2165 >= 0); l_2165 -= 1)
                { /* block id: 1174 */
                    uint16_t l_2198 = 5UL;
                    for (p_2523->g_1597.f3 = 0; (p_2523->g_1597.f3 <= 4); p_2523->g_1597.f3 += 1)
                    { /* block id: 1177 */
                        uint16_t l_2178 = 0UL;
                        uint8_t *l_2185 = (void*)0;
                        uint8_t *l_2186 = (void*)0;
                        uint8_t *l_2187 = (void*)0;
                        uint8_t *l_2188 = &p_2523->g_98;
                        int32_t l_2208[7];
                        int64_t **l_2217 = &p_2523->g_1456;
                        int64_t *l_2226[5][8] = {{(void*)0,&l_2209,&p_2523->g_127,&l_2209,&p_2523->g_127,&l_2209,(void*)0,&p_2523->g_127},{(void*)0,&l_2209,&p_2523->g_127,&l_2209,&p_2523->g_127,&l_2209,(void*)0,&p_2523->g_127},{(void*)0,&l_2209,&p_2523->g_127,&l_2209,&p_2523->g_127,&l_2209,(void*)0,&p_2523->g_127},{(void*)0,&l_2209,&p_2523->g_127,&l_2209,&p_2523->g_127,&l_2209,(void*)0,&p_2523->g_127},{(void*)0,&l_2209,&p_2523->g_127,&l_2209,&p_2523->g_127,&l_2209,(void*)0,&p_2523->g_127}};
                        int i, j, k;
                        for (i = 0; i < 7; i++)
                            l_2208[i] = (-1L);
                        (*l_2154) = (&p_2523->g_2055 != ((safe_mul_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_u((((*l_2156) = ((safe_add_func_uint64_t_u_u(((safe_add_func_int16_t_s_s((((*l_16) = ((**p_2523->g_980) = l_2178)) >= (safe_rshift_func_int16_t_s_u((safe_lshift_func_uint16_t_u_u((safe_add_func_int64_t_s_s(0x5A900BB5DCD1AAE6L, (FAKE_DIVERGE(p_2523->local_0_offset, get_local_id(0), 10) | ((~(((*l_2188)--) || (0x6BAE7522L | ((((((((safe_mul_func_uint16_t_u_u(0xD150L, (safe_unary_minus_func_uint16_t_u(((safe_add_func_int8_t_s_s((*l_2158), ((safe_lshift_func_int8_t_s_s(((l_2178 == (0x0344L | 0x426FL)) && l_2157[2][0][1]), l_2198)) , l_2166))) || 0UL))))) == l_2199) , 1L) < 0UL) <= l_2157[2][0][1]) ^ 0x688A73BFL) , p_2523->g_2200[4]) != l_2204[5][2][0])))) || l_2199)))), l_2199)), l_2206))), l_2178)) , (*p_2523->g_1788)), 0x3DDA44F4CE645D04L)) < 1L)) & l_2207[1][3][1]), (*l_2158))), GROUP_DIVERGE(2, 1))) , (void*)0));
                        l_2210++;
                        l_2207[0][6][0] = ((safe_div_func_int32_t_s_s((*l_16), (safe_rshift_func_int16_t_s_s((((*l_2217) = &p_2523->g_127) != (void*)0), (safe_lshift_func_uint8_t_u_u(((*p_2523->g_2202) , (safe_add_func_int8_t_s_s(l_2178, ((safe_div_func_int64_t_s_s(((l_2208[2] = ((void*)0 != l_2224)) < ((((((!(*l_16)) , l_2225) != l_2226[4][1]) & 0xBD414136L) || l_2198) > l_2142)), l_2209)) <= (*p_2523->g_1788))))), l_2227[0][5][3])))))) <= 255UL);
                        (*p_2523->g_135) = &l_2165;
                    }
                }
                (*l_2154) = 0x3ADD51DDL;
                for (p_2523->g_1848.f1 = 8; (p_2523->g_1848.f1 >= 0); p_2523->g_1848.f1 -= 1)
                { /* block id: 1193 */
                    int32_t l_2246 = 0x0B66EAB5L;
                    int i;
                    (*p_2523->g_112) |= (safe_sub_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u((safe_rshift_func_int8_t_s_u((((safe_rshift_func_int8_t_s_u((safe_sub_func_uint64_t_u_u(((((l_2157[2][0][1] && GROUP_DIVERGE(2, 1)) && ((((safe_add_func_int64_t_s_s(((void*)0 != (*p_2523->g_130)), l_2227[0][2][4])) >= 0x7E31L) , ((((safe_div_func_uint16_t_u_u(l_2207[7][0][1], (safe_lshift_func_int8_t_s_s((((safe_mul_func_uint64_t_u_u((l_2246 , 18446744073709551613UL), (((GROUP_DIVERGE(1, 1) , (l_2246 | (*l_16))) == l_2206) < l_2246))) < GROUP_DIVERGE(0, 1)) != l_2246), (*l_16))))) , l_2247) != FAKE_DIVERGE(p_2523->group_0_offset, get_group_id(0), 10)) , l_2246)) | 0x6CL)) , l_2207[3][2][0]) < (***p_2523->g_1115)), 9L)), 3)) || 0L) , (-4L)), 0)), 0x7EL)), 0x335CL));
                    (*p_2523->g_27) = l_2227[0][5][3];
                }
                for (p_2523->g_736 = 0; (p_2523->g_736 <= 1); p_2523->g_736 += 1)
                { /* block id: 1199 */
                    (*p_2523->g_135) = (*p_2523->g_879);
                }
            }
        }
        (*p_2523->g_27) = ((*l_2249) ^= ((**p_2523->g_734) , (((((*l_16) > l_2142) > l_2157[2][0][1]) < ((*p_2523->g_1788) ^= ((*p_2523->g_441) != &l_1777[9][0][0]))) || (((((+((*l_16) || ((***p_2523->g_1944) = ((((l_2248 != ((*l_16) , &l_1777[4][0][0])) ^ (*p_2523->g_27)) <= 0x1D473552L) != 4294967291UL)))) , &p_2523->g_735) != (void*)0) , (void*)0) != (void*)0))));
    }
    else
    { /* block id: 1208 */
        uint64_t l_2252 = 7UL;
        int32_t *l_2253 = &l_2165;
        int32_t l_2260[6] = {(-8L),0L,(-8L),(-8L),0L,(-8L)};
        uint8_t **l_2329[7] = {&p_2523->g_347[5],&p_2523->g_347[5],&p_2523->g_347[5],&p_2523->g_347[5],&p_2523->g_347[5],&p_2523->g_347[5],&p_2523->g_347[5]};
        int16_t l_2360 = 0x075FL;
        union U0 *l_2376 = &p_2523->g_2093[5][0];
        uint32_t l_2406 = 0x6CE44965L;
        int32_t l_2478 = 0L;
        uint32_t l_2489 = 0x30461937L;
        int i;
        if ((safe_rshift_func_int16_t_s_u(l_2252, 3)))
        { /* block id: 1209 */
            (*p_2523->g_135) = l_2253;
        }
        else
        { /* block id: 1211 */
            uint16_t l_2258 = 0x09A0L;
            int32_t l_2261 = 0L;
            union U0 **l_2291 = &p_2523->g_1607[0][3][5];
            union U0 ***l_2290 = &l_2291;
            union U0 ****l_2289[1];
            int32_t l_2297 = 7L;
            int16_t l_2299[3];
            int16_t l_2307 = 0x3F37L;
            uint8_t **l_2317 = &p_2523->g_347[6];
            int32_t ***l_2333 = &p_2523->g_1604;
            int32_t ****l_2332 = &l_2333;
            uint32_t **l_2454 = &p_2523->g_735;
            int8_t l_2469[6] = {0x37L,0x19L,0x37L,0x37L,0x19L,0x37L};
            uint32_t l_2470 = 4294967295UL;
            int32_t l_2477 = 0x1F29D18CL;
            int32_t l_2479 = 0x3FBCD18AL;
            int i;
            for (i = 0; i < 1; i++)
                l_2289[i] = &l_2290;
            for (i = 0; i < 3; i++)
                l_2299[i] = (-6L);
            for (p_2523->g_1676.f2 = 1; (p_2523->g_1676.f2 <= 9); p_2523->g_1676.f2 += 1)
            { /* block id: 1214 */
                uint32_t *l_2259 = &l_1777[0][0][0];
                int32_t *l_2262 = &p_2523->g_17[0];
                int32_t *l_2263 = &l_2260[2];
                int32_t *l_2264 = (void*)0;
                int32_t *l_2265[8] = {&p_2523->g_17[1],&p_2523->g_17[1],&p_2523->g_17[1],&p_2523->g_17[1],&p_2523->g_17[1],&p_2523->g_17[1],&p_2523->g_17[1],&p_2523->g_17[1]};
                uint32_t l_2267 = 0x3FB4DD98L;
                uint8_t *l_2274 = &p_2523->g_94;
                int64_t l_2292 = 0x5B05CEEE61D6F7E6L;
                int i;
                (*p_2523->g_27) |= ((safe_rshift_func_uint8_t_u_s(((*l_16) > (safe_sub_func_int8_t_s_s((~0x61L), l_2258))), 2)) <= ((*l_2259) |= (**p_2523->g_2152)));
                l_2267++;
                if ((((*p_2523->g_735) && ((p_2523->g_235[p_2523->g_1676.f2] = ((safe_mul_func_uint8_t_u_u((0L | ((((safe_mul_func_int16_t_s_s(((((*l_2274)++) >= ((((0L ^ (0x77C9F149L && ((void*)0 == (*p_2523->g_1115)))) , ((safe_add_func_uint32_t_u_u((safe_lshift_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(((safe_sub_func_int32_t_s_s(((safe_sub_func_uint16_t_u_u(((safe_div_func_uint8_t_u_u(((*l_2253) = ((~((*l_16) < ((*p_2523->g_112) = (((*l_2263) , &p_2523->g_2200[3]) != l_2289[0])))) >= 0x3100D8B4E5DBA4CDL)), l_2260[2])) ^ (*p_2523->g_1788)), l_2292)) | (*l_16)), 0L)) <= (***p_2523->g_1115)), 0UL)), 7)), 0x07014747L)) != (*p_2523->g_442))) | (*l_2262)) || 0x4165C183EBC8555DL)) || (*p_2523->g_129)), l_2293[1])) & l_2261) , (void*)0) == (void*)0)), l_2261)) != (*l_16))) ^ 65535UL)) , l_2258))
                { /* block id: 1222 */
                    (*l_2253) = 0x3055F343L;
                    --l_2294;
                }
                else
                { /* block id: 1225 */
                    int8_t l_2298 = 0x12L;
                    uint16_t l_2300 = 0x9F0BL;
                    l_2300++;
                }
                return p_2523->g_2303[5];
            }
            (*p_2523->g_135) = func_33(&l_2163, func_33(&l_2166, &l_2261, &l_2163, (*l_2253), (*p_2523->g_442), p_2523), &p_2523->g_17[0], l_2307, l_2308, p_2523);
            (**p_2523->g_135) = (safe_lshift_func_int8_t_s_u((*l_2253), 1));
            if ((((*p_2523->g_1788) = (((*p_2523->g_234) = (*l_16)) || (safe_mul_func_int8_t_s_s((safe_mod_func_uint64_t_u_u((*l_2253), (FAKE_DIVERGE(p_2523->group_2_offset, get_group_id(2), 10) || (*p_2523->g_1788)))), (safe_rshift_func_uint8_t_u_s(l_2299[0], (((*l_2317) = &p_2523->g_107) != (void*)0))))))) >= (safe_sub_func_uint64_t_u_u(l_2297, ((*l_16) & (((safe_mod_func_int32_t_s_s(((~(*l_16)) , (**p_2523->g_879)), 0x78F087F5L)) > (*l_2253)) < (*l_2253)))))))
            { /* block id: 1235 */
                uint64_t l_2324 = 0x998318D8B0271E3DL;
                uint8_t ***l_2331 = &l_2330[0][1];
                uint16_t *l_2336 = &p_2523->g_1527[1][0];
                int64_t l_2371 = 0x7F63AB2160701837L;
                union U0 *l_2377 = &p_2523->g_949;
                int32_t l_2399 = (-1L);
                (*l_16) &= (((*l_2336) = ((((**p_2523->g_734) = ((safe_rshift_func_int16_t_s_s(l_2324, (safe_mul_func_int16_t_s_s((safe_rshift_func_uint16_t_u_u((((l_2329[4] = &p_2523->g_347[4]) == ((*l_2331) = l_2330[3][1])) < ((**l_2317) = (l_2332 == (void*)0))), (safe_sub_func_uint8_t_u_u(((&p_2523->g_597 != &l_2290) < 18446744073709551610UL), ((((*p_2523->g_1788) = 0x18AC4B50DFE70636L) > 0x6FA3795797B2D364L) & (*l_2253)))))), l_2297)))) < l_2299[0])) , (**p_2523->g_2152)) || (*l_2253))) >= 0x190EL);
                if ((safe_lshift_func_uint16_t_u_u((*l_16), 10)))
                { /* block id: 1243 */
                    (*l_2253) &= ((*p_2523->g_112) = (1L || 0x1BE29D33L));
                    for (p_2523->g_1597.f2 = (-21); (p_2523->g_1597.f2 < 60); p_2523->g_1597.f2 = safe_add_func_uint16_t_u_u(p_2523->g_1597.f2, 8))
                    { /* block id: 1248 */
                        int8_t l_2341 = 0x0DL;
                        (**p_2523->g_135) = (*l_2253);
                        if (l_2324)
                            break;
                        if (l_2341)
                            break;
                        if ((*p_2523->g_112))
                            continue;
                    }
                }
                else
                { /* block id: 1254 */
                    uint16_t l_2356 = 8UL;
                    uint64_t l_2357 = 18446744073709551606UL;
                    uint64_t *l_2372 = (void*)0;
                    uint64_t *l_2373 = (void*)0;
                    uint64_t *l_2374 = &p_2523->g_2075[2][3][0];
                    int32_t l_2398 = (-8L);
                    for (p_2523->g_1676.f0 = 0; (p_2523->g_1676.f0 <= 48); p_2523->g_1676.f0 = safe_add_func_int32_t_s_s(p_2523->g_1676.f0, 5))
                    { /* block id: 1257 */
                        l_16 = &l_2297;
                    }
                    (*l_16) = (safe_mod_func_int8_t_s_s((safe_mod_func_int32_t_s_s(((-3L) && (safe_mod_func_int32_t_s_s((0x60244DB1L > (7L & ((safe_add_func_uint32_t_u_u((+(safe_mod_func_uint16_t_u_u((safe_add_func_uint16_t_u_u(0x0818L, 0UL)), l_2356))), (((*l_2253) ^ (((*p_2523->g_136) &= (l_2357 , l_2324)) & l_2324)) , 0x4648DFD7L))) , GROUP_DIVERGE(0, 1)))), 7UL))), (**p_2523->g_734))), l_2299[0]));
                    l_2377 = (l_2376 = ((!(*p_2523->g_136)) , ((*p_2523->g_1821) = (((l_2357 , ((**p_2523->g_441) , ((*l_2253) = ((*p_2523->g_27) = (*l_2253))))) <= ((((*l_2332) = (((*l_2374) &= ((safe_rshift_func_int8_t_s_s(l_2360, (safe_sub_func_uint8_t_u_u(((safe_sub_func_uint64_t_u_u((safe_rshift_func_int8_t_s_s(l_2258, 4)), (l_2356 | ((***l_2331) &= l_2356)))) & ((safe_sub_func_uint16_t_u_u((safe_mod_func_uint16_t_u_u(0xE3F0L, l_2371)), 0L)) < l_2299[1])), 249UL)))) >= l_2357)) , l_2375)) != &p_2523->g_1604) ^ l_2299[2])) , (*p_2523->g_1606)))));
                    for (p_2523->g_1156 = 0; (p_2523->g_1156 != 11); p_2523->g_1156 = safe_add_func_uint16_t_u_u(p_2523->g_1156, 4))
                    { /* block id: 1272 */
                        uint32_t l_2380 = 0xBF80914FL;
                        int8_t *l_2397 = &l_1776;
                        l_2380 ^= (*l_16);
                        l_2399 |= (safe_mod_func_int32_t_s_s(l_2299[2], ((*p_2523->g_27) = ((safe_unary_minus_func_uint64_t_u(((safe_lshift_func_uint8_t_u_s((safe_rshift_func_int8_t_s_u(((l_2388 , l_2380) , ((safe_mod_func_int8_t_s_s((safe_sub_func_int16_t_s_s(((+(p_2523->g_2393[0] , (&l_2317 == l_2394[2]))) & (((***p_2523->g_1115) > (l_2258 , (((*l_2397) = 0x6AL) <= l_2380))) > 1L)), l_2398)), l_2380)) , 1L)), FAKE_DIVERGE(p_2523->group_0_offset, get_group_id(0), 10))), 7)) , 1UL))) , (*p_2523->g_27)))));
                    }
                }
                l_2261 = ((void*)0 == &p_2523->g_1456);
            }
            else
            { /* block id: 1280 */
                int32_t *l_2402 = (void*)0;
                int32_t *l_2403 = &l_2165;
                int32_t *l_2407[6] = {&p_2523->g_17[0],(void*)0,&p_2523->g_17[0],&p_2523->g_17[0],(void*)0,&p_2523->g_17[0]};
                int32_t l_2473 = 3L;
                int32_t l_2480[3];
                int i;
                for (i = 0; i < 3; i++)
                    l_2480[i] = 0L;
                (**p_2523->g_135) ^= (-7L);
                (*p_2523->g_135) = (*p_2523->g_879);
                for (p_2523->g_1597.f1 = (-6); (p_2523->g_1597.f1 >= (-12)); p_2523->g_1597.f1--)
                { /* block id: 1285 */
                    int32_t *l_2405 = &l_2260[2];
                    (*p_2523->g_135) = func_33(func_33(((*p_2523->g_135) = (*p_2523->g_879)), func_33(&l_2260[1], func_33(&l_2260[2], l_2402, (p_2523->g_112 = func_33(func_33(func_33(l_2403, &p_2523->g_28[0], &p_2523->g_17[0], p_2523->g_2404, (*p_2523->g_735), p_2523), l_2402, l_2402, (***p_2523->g_1944), (*l_2253), p_2523), l_2405, &l_2261, (*p_2523->g_234), (**p_2523->g_734), p_2523)), l_2406, (*l_16), p_2523), l_2407[4], l_2261, (**p_2523->g_2148), p_2523), &l_2297, (***p_2523->g_1115), (*l_16), p_2523), l_2405, l_2407[4], (*l_2403), (*l_2253), p_2523);
                    for (p_2523->g_1384.f1 = 0; (p_2523->g_1384.f1 == 26); p_2523->g_1384.f1 = safe_add_func_uint32_t_u_u(p_2523->g_1384.f1, 7))
                    { /* block id: 1291 */
                        int32_t l_2436 = (-1L);
                        if ((*l_2253))
                            break;
                        if ((**p_2523->g_135))
                            break;
                        (*p_2523->g_27) |= (safe_lshift_func_int16_t_s_u(((safe_sub_func_int16_t_s_s((*l_2253), ((*l_16) , (safe_rshift_func_int8_t_s_u(((safe_add_func_uint8_t_u_u((safe_add_func_int32_t_s_s((*l_2403), (((safe_add_func_int32_t_s_s(((0x194DL < (safe_div_func_int32_t_s_s((*l_16), (safe_lshift_func_int8_t_s_s((safe_lshift_func_uint8_t_u_u((safe_sub_func_uint64_t_u_u((safe_rshift_func_uint8_t_u_s((0x30L <= ((*l_2405) && (safe_sub_func_uint16_t_u_u(((safe_sub_func_int32_t_s_s(((((*p_2523->g_735) = 4294967288UL) <= 0xDFA897F8L) | 246UL), 0x1C40A737L)) && (*l_2253)), (*l_16))))), (*l_16))), 0x523DF409C9EC67DBL)), 6)), 4))))) != l_2436), 0x6E2F201EL)) ^ 1UL) < l_2436))), (*l_2405))) >= (*l_2405)), (*l_16)))))) | (*l_2253)), (*l_2405)));
                    }
                    (*p_2523->g_136) = ((((((*p_2523->g_1788) ^= (safe_mul_func_uint8_t_u_u(l_2299[0], (*l_2405)))) || ((safe_mod_func_uint32_t_u_u((((*l_2253) == (l_2307 != ((*p_2523->g_1788) = ((*p_2523->g_442) && ((void*)0 == &l_2252))))) <= ((p_2523->g_347[5] = &p_2523->g_94) != (void*)0)), (*p_2523->g_112))) , (*l_2405))) || 0x36ABF259L) <= (***p_2523->g_1115)) ^ (*p_2523->g_27));
                }
                for (p_2523->g_1676.f1 = 1; (p_2523->g_1676.f1 >= 0); p_2523->g_1676.f1 -= 1)
                { /* block id: 1304 */
                    uint16_t l_2451 = 0x52B0L;
                    int64_t *l_2461 = &p_2523->g_43[3].f1;
                    int64_t *l_2462 = (void*)0;
                    int64_t *l_2463 = &p_2523->g_1848.f1;
                    int64_t *l_2464 = &p_2523->g_1848.f1;
                    int64_t *l_2465 = &p_2523->g_1191[0].f1;
                    int64_t *l_2466[9][7] = {{&p_2523->g_1676.f1,&p_2523->g_630[8][6],&p_2523->g_1676.f1,&p_2523->g_1676.f1,&p_2523->g_630[8][6],&p_2523->g_1676.f1,&p_2523->g_1676.f1},{&p_2523->g_1676.f1,&p_2523->g_630[8][6],&p_2523->g_1676.f1,&p_2523->g_1676.f1,&p_2523->g_630[8][6],&p_2523->g_1676.f1,&p_2523->g_1676.f1},{&p_2523->g_1676.f1,&p_2523->g_630[8][6],&p_2523->g_1676.f1,&p_2523->g_1676.f1,&p_2523->g_630[8][6],&p_2523->g_1676.f1,&p_2523->g_1676.f1},{&p_2523->g_1676.f1,&p_2523->g_630[8][6],&p_2523->g_1676.f1,&p_2523->g_1676.f1,&p_2523->g_630[8][6],&p_2523->g_1676.f1,&p_2523->g_1676.f1},{&p_2523->g_1676.f1,&p_2523->g_630[8][6],&p_2523->g_1676.f1,&p_2523->g_1676.f1,&p_2523->g_630[8][6],&p_2523->g_1676.f1,&p_2523->g_1676.f1},{&p_2523->g_1676.f1,&p_2523->g_630[8][6],&p_2523->g_1676.f1,&p_2523->g_1676.f1,&p_2523->g_630[8][6],&p_2523->g_1676.f1,&p_2523->g_1676.f1},{&p_2523->g_1676.f1,&p_2523->g_630[8][6],&p_2523->g_1676.f1,&p_2523->g_1676.f1,&p_2523->g_630[8][6],&p_2523->g_1676.f1,&p_2523->g_1676.f1},{&p_2523->g_1676.f1,&p_2523->g_630[8][6],&p_2523->g_1676.f1,&p_2523->g_1676.f1,&p_2523->g_630[8][6],&p_2523->g_1676.f1,&p_2523->g_1676.f1},{&p_2523->g_1676.f1,&p_2523->g_630[8][6],&p_2523->g_1676.f1,&p_2523->g_1676.f1,&p_2523->g_630[8][6],&p_2523->g_1676.f1,&p_2523->g_1676.f1}};
                    uint16_t *l_2471 = (void*)0;
                    uint16_t *l_2472[6][2] = {{&p_2523->g_2063.f0,(void*)0},{&p_2523->g_2063.f0,(void*)0},{&p_2523->g_2063.f0,(void*)0},{&p_2523->g_2063.f0,(void*)0},{&p_2523->g_2063.f0,(void*)0},{&p_2523->g_2063.f0,(void*)0}};
                    int32_t l_2474 = 0x1E0213A9L;
                    int32_t l_2476 = 0x77780917L;
                    int32_t l_2481 = 0L;
                    int i, j;
                    if (l_2299[0])
                        break;
                    l_2261 ^= ((*p_2523->g_112) |= (safe_rshift_func_int8_t_s_u((safe_sub_func_int32_t_s_s((safe_lshift_func_uint16_t_u_s((safe_sub_func_uint32_t_u_u(7UL, (safe_rshift_func_int16_t_s_u(l_2451, 15)))), 10)), (+(safe_mul_func_uint16_t_u_u((l_2454 != &p_2523->g_442), (l_2297 = (((*l_2253) | ((((***p_2523->g_1115) > (!((**p_2523->g_980) = ((l_2451 == (safe_mul_func_uint16_t_u_u((safe_lshift_func_int8_t_s_s(((safe_mod_func_int16_t_s_s((((*l_16) ^= (*l_2253)) , (((safe_div_func_int8_t_s_s((((l_2258 || (*p_2523->g_1456)) <= (*p_2523->g_129)) && l_2469[1]), (*l_16))) != (*l_16)) & (-10L))), l_2470)) != (**p_2523->g_2152)), 7)), 0x44A9L))) == FAKE_DIVERGE(p_2523->global_2_offset, get_global_id(2), 10))))) || l_2473) , (*l_16))) == 4294967293UL))))))), 3)));
                    for (p_2523->g_98 = 0; (p_2523->g_98 <= 1); p_2523->g_98 += 1)
                    { /* block id: 1313 */
                        uint32_t l_2482 = 4294967295UL;
                        int8_t *l_2496 = &p_2523->g_1156;
                        --l_2482;
                        p_2523->g_258 &= (p_2523->g_1861[2] ^= (l_2260[2] |= ((*p_2523->g_1788) & (safe_lshift_func_uint16_t_u_s(((((safe_mul_func_uint16_t_u_u((l_2489 | (FAKE_DIVERGE(p_2523->group_0_offset, get_group_id(0), 10) >= (safe_mod_func_int16_t_s_s((l_2482 , ((safe_mul_func_int8_t_s_s(((*l_2496) = (safe_mod_func_int32_t_s_s((0x1CL <= (((*p_2523->g_981) || ((((((*l_16) &= (*l_2253)) | ((**p_2523->g_980) |= (((*p_2523->g_234) ^= ((*p_2523->g_1788) ^ (&l_2478 != (*p_2523->g_1604)))) , l_2451))) < 0x2016A220L) > (*l_2403)) <= l_2258)) ^ (*p_2523->g_112))), (*p_2523->g_112)))), 0x60L)) < l_2476)), 1L)))), (-1L))) != 0x7BL) < (*p_2523->g_1788)) >= l_2497), 2)))));
                    }
                    for (l_2479 = 0; (l_2479 >= 0); l_2479 -= 1)
                    { /* block id: 1325 */
                        return (*l_2376);
                    }
                    for (p_2523->g_2131.f1 = 1; (p_2523->g_2131.f1 >= 0); p_2523->g_2131.f1 -= 1)
                    { /* block id: 1330 */
                        (*p_2523->g_135) = &l_2260[1];
                    }
                }
            }
        }
        return (**p_2523->g_2201);
    }
    if (((((GROUP_DIVERGE(0, 1) || (((*p_2523->g_234) = ((void*)0 != p_2523->g_2498)) | ((*l_16) >= (safe_sub_func_uint8_t_u_u((+(safe_rshift_func_uint8_t_u_s((safe_rshift_func_uint8_t_u_s(0x49L, ((((*l_16) && ((((*p_2523->g_2116) = (safe_rshift_func_uint8_t_u_s((safe_div_func_uint32_t_u_u((~(safe_sub_func_uint32_t_u_u((*l_16), (safe_mod_func_int64_t_s_s((l_2517[5][2][3] != 0x5328211CL), 0x08C4202A2F3C14A3L))))), (*l_16))), 4))) , 0x20467815L) != 0x4DD1203AL)) , GROUP_DIVERGE(2, 1)) & (*l_16)))), 7))), (*l_16)))))) || 1UL) , (*l_16)) | (*l_16)))
    { /* block id: 1340 */
        int32_t **l_2518 = &p_2523->g_27;
        (*l_2518) = ((*p_2523->g_135) = &l_2166);
    }
    else
    { /* block id: 1343 */
        int32_t *l_2519 = &p_2523->g_17[1];
        (*p_2523->g_135) = l_2519;
        (*p_2523->g_135) = &l_2166;
        for (p_2523->g_1423 = 0; (p_2523->g_1423 <= 36); p_2523->g_1423++)
        { /* block id: 1348 */
            if ((*l_16))
                break;
        }
    }
    return p_2523->g_2522;
}


/* ------------------------------------------ */
/* 
 * reads : p_2523->g_27 p_2523->g_109 p_2523->g_28 p_2523->g_1456 p_2523->g_127 p_2523->g_1597.f2 p_2523->g_1591 p_2523->g_2093 p_2523->g_1788 p_2523->g_1423 p_2523->g_1115 p_2523->g_1116 p_2523->g_234 p_2523->g_442 p_2523->g_734 p_2523->g_735 p_2523->g_736 p_2523->g_981 p_2523->g_43.f0 p_2523->g_112 p_2523->g_2122 p_2523->g_258 p_2523->g_1896.f0 p_2523->g_135 p_2523->g_2130 p_2523->g_2131
 * writes: p_2523->g_109 p_2523->g_28 p_2523->g_1788 p_2523->g_1597.f2 p_2523->g_1591 p_2523->g_235 p_2523->g_2116 p_2523->g_736 p_2523->g_2122 p_2523->g_1896.f0 p_2523->g_136
 */
union U0  func_5(int64_t  p_6, uint32_t  p_7, int16_t  p_8, uint16_t  p_9, int8_t  p_10, struct S1 * p_2523)
{ /* block id: 964 */
    int8_t l_1779 = 0L;
    uint16_t ***l_1782 = &p_2523->g_1508[0][7][2];
    int8_t ***l_1783 = &p_2523->g_312;
    uint64_t *l_1784[2];
    uint64_t **l_1785 = (void*)0;
    uint64_t **l_1786 = (void*)0;
    uint64_t **l_1787[5];
    int32_t *l_1811 = &p_2523->g_258;
    int32_t *l_1812 = &p_2523->g_1591;
    union U0 *l_1835 = (void*)0;
    uint16_t *l_1851[8];
    int64_t *l_1879 = &p_2523->g_630[8][3];
    int64_t **l_1878 = &l_1879;
    uint16_t l_1977 = 65535UL;
    int32_t l_2008 = 0L;
    int32_t l_2011 = 0x5DF2204AL;
    int32_t l_2012 = 0L;
    int32_t l_2013 = (-6L);
    int32_t l_2014 = 0x23C1A26CL;
    int32_t l_2015 = 0x6FD9E37CL;
    int32_t l_2016 = 0x27F26C9CL;
    int32_t l_2018 = (-8L);
    int32_t l_2020 = (-1L);
    int32_t l_2021 = 0x623DD8F0L;
    int32_t l_2022 = 0L;
    int32_t l_2023 = 0x14540B39L;
    int32_t l_2025 = (-1L);
    int32_t l_2026[9] = {0x4DA24EF5L,0x4DA24EF5L,0x4DA24EF5L,0x4DA24EF5L,0x4DA24EF5L,0x4DA24EF5L,0x4DA24EF5L,0x4DA24EF5L,0x4DA24EF5L};
    uint32_t l_2027 = 4294967295UL;
    uint64_t l_2062 = 1UL;
    union U0 ***l_2090 = (void*)0;
    uint32_t *l_2115[3][6][6] = {{{&p_2523->g_1597.f2,&p_2523->g_1597.f2,(void*)0,(void*)0,&p_2523->g_1597.f2,(void*)0},{&p_2523->g_1597.f2,&p_2523->g_1597.f2,(void*)0,(void*)0,&p_2523->g_1597.f2,(void*)0},{&p_2523->g_1597.f2,&p_2523->g_1597.f2,(void*)0,(void*)0,&p_2523->g_1597.f2,(void*)0},{&p_2523->g_1597.f2,&p_2523->g_1597.f2,(void*)0,(void*)0,&p_2523->g_1597.f2,(void*)0},{&p_2523->g_1597.f2,&p_2523->g_1597.f2,(void*)0,(void*)0,&p_2523->g_1597.f2,(void*)0},{&p_2523->g_1597.f2,&p_2523->g_1597.f2,(void*)0,(void*)0,&p_2523->g_1597.f2,(void*)0}},{{&p_2523->g_1597.f2,&p_2523->g_1597.f2,(void*)0,(void*)0,&p_2523->g_1597.f2,(void*)0},{&p_2523->g_1597.f2,&p_2523->g_1597.f2,(void*)0,(void*)0,&p_2523->g_1597.f2,(void*)0},{&p_2523->g_1597.f2,&p_2523->g_1597.f2,(void*)0,(void*)0,&p_2523->g_1597.f2,(void*)0},{&p_2523->g_1597.f2,&p_2523->g_1597.f2,(void*)0,(void*)0,&p_2523->g_1597.f2,(void*)0},{&p_2523->g_1597.f2,&p_2523->g_1597.f2,(void*)0,(void*)0,&p_2523->g_1597.f2,(void*)0},{&p_2523->g_1597.f2,&p_2523->g_1597.f2,(void*)0,(void*)0,&p_2523->g_1597.f2,(void*)0}},{{&p_2523->g_1597.f2,&p_2523->g_1597.f2,(void*)0,(void*)0,&p_2523->g_1597.f2,(void*)0},{&p_2523->g_1597.f2,&p_2523->g_1597.f2,(void*)0,(void*)0,&p_2523->g_1597.f2,(void*)0},{&p_2523->g_1597.f2,&p_2523->g_1597.f2,(void*)0,(void*)0,&p_2523->g_1597.f2,(void*)0},{&p_2523->g_1597.f2,&p_2523->g_1597.f2,(void*)0,(void*)0,&p_2523->g_1597.f2,(void*)0},{&p_2523->g_1597.f2,&p_2523->g_1597.f2,(void*)0,(void*)0,&p_2523->g_1597.f2,(void*)0},{&p_2523->g_1597.f2,&p_2523->g_1597.f2,(void*)0,(void*)0,&p_2523->g_1597.f2,(void*)0}}};
    uint8_t *l_2118 = &p_2523->g_94;
    int32_t l_2119 = 0x407AAFDBL;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_1784[i] = &p_2523->g_1423;
    for (i = 0; i < 5; i++)
        l_1787[i] = &l_1784[0];
    for (i = 0; i < 8; i++)
        l_1851[i] = &p_2523->g_43[3].f0;
    (*p_2523->g_27) |= l_1779;
    if ((l_1779 <= (safe_mul_func_uint8_t_u_u((((*p_2523->g_1456) && ((l_1782 != &p_2523->g_1508[0][3][0]) && (l_1783 != (void*)0))) != l_1779), (p_10 = ((p_2523->g_1788 = l_1784[0]) == (void*)0))))))
    { /* block id: 968 */
        int32_t l_1809 = 0x39A1E252L;
        uint16_t l_1833[9][5][5] = {{{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL}},{{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL}},{{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL}},{{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL}},{{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL}},{{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL}},{{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL}},{{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL}},{{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL},{0UL,3UL,3UL,0UL,65527UL}}};
        uint16_t *l_1852 = (void*)0;
        uint16_t *l_1853 = (void*)0;
        uint64_t **l_1862 = &p_2523->g_1788;
        uint32_t l_1897 = 0UL;
        int8_t **l_1914[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        uint64_t l_1992 = 0xADF514A7B4A85542L;
        int32_t l_2009 = 3L;
        int32_t l_2017 = (-6L);
        int32_t l_2019 = 0x7A8428C9L;
        int32_t l_2024[5][6] = {{(-1L),(-9L),(-1L),(-1L),(-9L),(-1L)},{(-1L),(-9L),(-1L),(-1L),(-9L),(-1L)},{(-1L),(-9L),(-1L),(-1L),(-9L),(-1L)},{(-1L),(-9L),(-1L),(-1L),(-9L),(-1L)},{(-1L),(-9L),(-1L),(-1L),(-9L),(-1L)}};
        int32_t l_2086 = 0x28A6FBB8L;
        uint32_t **l_2114[2][7];
        int8_t l_2117 = 0x79L;
        int i, j, k;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 7; j++)
                l_2114[i][j] = (void*)0;
        }
        for (p_2523->g_1597.f2 = 0; (p_2523->g_1597.f2 <= 0); p_2523->g_1597.f2 += 1)
        { /* block id: 971 */
            int32_t *l_1810 = &p_2523->g_17[0];
            int64_t *l_1887 = &p_2523->g_630[8][4];
            uint64_t l_1901 = 9UL;
            uint64_t l_1965 = 18446744073709551614UL;
            int32_t l_2010[8] = {1L,1L,1L,1L,1L,1L,1L,1L};
            uint16_t **l_2054 = (void*)0;
            int i;
            (1 + 1);
        }
        for (l_2019 = 4; (l_2019 >= 0); l_2019 -= 1)
        { /* block id: 1117 */
            int8_t ****l_2092 = &l_1783;
            int8_t *****l_2091 = &l_2092;
            l_1809 |= ((*l_1812) &= (((*l_2091) = &p_2523->g_1493) == (void*)0));
            for (l_2086 = 0; (l_2086 <= 4); l_2086 += 1)
            { /* block id: 1123 */
                return p_2523->g_2093[0][1];
            }
        }
        (*p_2523->g_112) &= ((safe_div_func_int32_t_s_s((((safe_rshift_func_uint16_t_u_u((p_9 = (p_10 & (!(p_10 != (safe_mul_func_uint8_t_u_u((((((*p_2523->g_1788) == (+(safe_div_func_int8_t_s_s((((safe_add_func_int32_t_s_s((((safe_add_func_uint8_t_u_u((safe_rshift_func_int16_t_s_s(((***p_2523->g_1115) = p_7), 7)), l_2086)) | (((safe_div_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), (l_2009 = 0x66L))) >= p_7) || ((l_2024[4][1] = (safe_lshift_func_uint8_t_u_u(((0x5CL & ((((safe_add_func_uint32_t_u_u(((**p_2523->g_734) |= ((p_2523->g_2116 = (l_2115[0][2][4] = l_1812)) == p_2523->g_442)), l_2024[2][0])) , 0xA000E44FL) , (*p_2523->g_981)) == 0x6693L)) < FAKE_DIVERGE(p_2523->global_2_offset, get_global_id(2), 10)), 2))) && p_7))) < l_1992), l_2117)) <= (*l_1812)) && 0xA25291B7205401C7L), p_9)))) , l_2118) != (void*)0) , (*l_1812)), p_6)))))), 15)) | 7L) != p_7), FAKE_DIVERGE(p_2523->local_1_offset, get_local_id(1), 10))) & p_7);
    }
    else
    { /* block id: 1135 */
        int32_t *l_2120 = &p_2523->g_109;
        int32_t *l_2121[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int i;
        --p_2523->g_2122;
        if (p_2523->g_2122)
            goto lbl_2125;
lbl_2125:
        (*l_1812) &= (*l_1811);
        (*p_2523->g_27) = (*l_1812);
        for (p_6 = 28; (p_6 <= (-19)); p_6--)
        { /* block id: 1142 */
            (*l_2120) &= (p_6 || (FAKE_DIVERGE(p_2523->global_2_offset, get_global_id(2), 10) || 0x17L));
            for (p_2523->g_1896.f0 = (-18); (p_2523->g_1896.f0 <= 23); p_2523->g_1896.f0 = safe_add_func_int8_t_s_s(p_2523->g_1896.f0, 1))
            { /* block id: 1146 */
                (*p_2523->g_135) = &l_2023;
                return p_2523->g_2130;
            }
        }
    }
    return p_2523->g_2131;
}


/* ------------------------------------------ */
/* 
 * reads : p_2523->g_17
 * writes: p_2523->g_17
 */
int32_t  func_12(int32_t  p_13, struct S1 * p_2523)
{ /* block id: 6 */
    int32_t *l_19 = &p_2523->g_17[0];
    int32_t *l_20[1];
    uint32_t l_21 = 9UL;
    int i;
    for (i = 0; i < 1; i++)
        l_20[i] = &p_2523->g_17[1];
    (*l_19) = p_2523->g_17[0];
    l_21++;
    return p_2523->g_17[1];
}


/* ------------------------------------------ */
/* 
 * reads : p_2523->g_28 p_2523->g_43 p_2523->g_43.f0 p_2523->g_67 p_2523->g_70 p_2523->g_98 p_2523->g_107 p_2523->g_109 p_2523->g_129 p_2523->g_130 p_2523->g_112 p_2523->g_135 p_2523->g_127 p_2523->g_136 p_2523->g_218 p_2523->g_85 p_2523->g_234 p_2523->g_128 p_2523->g_235 p_2523->g_258 p_2523->g_94 p_2523->g_630 p_2523->g_735 p_2523->g_736 p_2523->g_693 p_2523->g_843 p_2523->g_879 p_2523->g_734 p_2523->g_884 p_2523->g_27 p_2523->g_980 p_2523->g_981 p_2523->g_1115 p_2523->g_1116 p_2523->g_442 p_2523->g_1191.f0 p_2523->g_1032 p_2523->g_1156 p_2523->g_1263 p_2523->g_1046 p_2523->g_1302 p_2523->g_692 p_2523->g_1591 p_2523->g_1384.f0 p_2523->g_1263.f0 p_2523->g_1604
 * writes: p_2523->g_27 p_2523->g_67 p_2523->g_70 p_2523->g_85 p_2523->g_94 p_2523->g_98 p_2523->g_107 p_2523->g_109 p_2523->g_28 p_2523->g_112 p_2523->g_127 p_2523->g_128 p_2523->g_136 p_2523->g_218 p_2523->g_225 p_2523->g_235 p_2523->g_312 p_2523->g_347 p_2523->g_736 p_2523->g_1156 p_2523->g_949.f0 p_2523->g_1591 p_2523->g_1384.f0 p_2523->g_1263.f0
 */
uint64_t  func_24(int32_t * p_25, int8_t  p_26, struct S1 * p_2523)
{ /* block id: 10 */
    int32_t *l_42 = &p_2523->g_28[2];
    (*l_42) = func_29((p_26 , ((*p_2523->g_135) = func_33(&p_2523->g_28[3], func_39(l_42, p_2523->g_28[3], p_2523), ((*p_2523->g_692) , (void*)0), p_26, ((safe_div_func_int64_t_s_s(((0L == p_26) & 1UL), 0x74A51459B395B8B9L)) , 0x09DB2395L), p_2523))), l_42, p_26, p_2523);
    return (*l_42);
}


/* ------------------------------------------ */
/* 
 * reads : p_2523->g_1263.f0 p_2523->g_135 p_2523->g_136 p_2523->g_28 p_2523->g_1384.f0 p_2523->g_1604 p_2523->g_692 p_2523->g_1115 p_2523->g_1116 p_2523->g_234
 * writes: p_2523->g_1263.f0 p_2523->g_28 p_2523->g_235 p_2523->g_136
 */
int32_t  func_29(int32_t * p_30, int32_t * p_31, uint16_t  p_32, struct S1 * p_2523)
{ /* block id: 946 */
    uint16_t l_1756 = 0x0160L;
    int32_t ***l_1757 = &p_2523->g_1604;
    int32_t ***l_1759 = &p_2523->g_1604;
    uint8_t l_1762[10] = {0x19L,0x19L,0x19L,0x19L,0x19L,0x19L,0x19L,0x19L,0x19L,0x19L};
    uint64_t l_1767 = 18446744073709551611UL;
    int32_t *l_1769 = &p_2523->g_28[5];
    int32_t *l_1770 = (void*)0;
    int32_t l_1771 = 0x7A9912CFL;
    int32_t *l_1772[2][6] = {{&p_2523->g_28[3],&p_2523->g_28[3],&p_2523->g_28[3],&p_2523->g_28[3],&p_2523->g_28[3],&p_2523->g_28[3]},{&p_2523->g_28[3],&p_2523->g_28[3],&p_2523->g_28[3],&p_2523->g_28[3],&p_2523->g_28[3],&p_2523->g_28[3]}};
    uint32_t l_1773 = 0xECBA0DC5L;
    int i, j;
    for (p_2523->g_1263.f0 = (-10); (p_2523->g_1263.f0 == 27); ++p_2523->g_1263.f0)
    { /* block id: 949 */
        int32_t l_1747 = 0x754F9AE6L;
        int32_t ****l_1758 = &l_1757;
        int32_t l_1765 = (-2L);
        uint8_t *l_1766[10] = {&p_2523->g_94,&p_2523->g_94,&p_2523->g_94,&p_2523->g_94,&p_2523->g_94,&p_2523->g_94,&p_2523->g_94,&p_2523->g_94,&p_2523->g_94,&p_2523->g_94};
        uint8_t l_1768 = 5UL;
        int i;
        (**p_2523->g_135) ^= l_1747;
        (**p_2523->g_135) = ((safe_add_func_uint32_t_u_u(((((safe_lshift_func_uint16_t_u_s(GROUP_DIVERGE(2, 1), ((***p_2523->g_1115) = ((safe_rshift_func_uint8_t_u_u((((safe_add_func_int64_t_s_s(l_1756, ((p_2523->g_1384.f0 < ((void*)0 == (*p_2523->g_1604))) & (((*l_1758) = l_1757) != l_1759)))) || (l_1765 = ((safe_rshift_func_int16_t_s_s((l_1756 == (GROUP_DIVERGE(1, 1) & 255UL)), ((((l_1747 = (l_1762[2]++)) > ((l_1767 = l_1765) & GROUP_DIVERGE(1, 1))) && p_32) && p_32))) , l_1765))) <= p_32), 5)) != l_1768)))) , 0x1CL) == l_1756) || p_32), (*p_30))) != 0x4E05AA594F096DBAL);
    }
    l_1773++;
    (*p_2523->g_135) = &l_1771;
    return (*l_1769);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_33(int32_t * p_34, int32_t * p_35, int32_t * p_36, int16_t  p_37, uint32_t  p_38, struct S1 * p_2523)
{ /* block id: 943 */
    int32_t *l_1744 = &p_2523->g_28[3];
    return l_1744;
}


/* ------------------------------------------ */
/* 
 * reads : p_2523->g_43 p_2523->g_28 p_2523->g_43.f0 p_2523->g_67 p_2523->g_70 p_2523->g_98 p_2523->g_107 p_2523->g_109 p_2523->g_129 p_2523->g_130 p_2523->g_112 p_2523->g_135 p_2523->g_127 p_2523->g_136 p_2523->g_218 p_2523->g_85 p_2523->g_234 p_2523->g_128 p_2523->g_235 p_2523->g_258 p_2523->g_94 p_2523->g_630 p_2523->g_735 p_2523->g_736 p_2523->g_693 p_2523->g_843 p_2523->g_879 p_2523->g_734 p_2523->g_884 p_2523->g_27 p_2523->g_980 p_2523->g_981 p_2523->g_1115 p_2523->g_1116 p_2523->g_442 p_2523->g_1191.f0 p_2523->g_1032 p_2523->g_1156 p_2523->g_1263 p_2523->g_1046 p_2523->g_1302 p_2523->g_692 p_2523->g_1591 p_2523->g_1384.f0
 * writes: p_2523->g_27 p_2523->g_67 p_2523->g_70 p_2523->g_85 p_2523->g_94 p_2523->g_98 p_2523->g_107 p_2523->g_109 p_2523->g_28 p_2523->g_112 p_2523->g_127 p_2523->g_128 p_2523->g_136 p_2523->g_218 p_2523->g_225 p_2523->g_235 p_2523->g_312 p_2523->g_347 p_2523->g_736 p_2523->g_1156 p_2523->g_949.f0 p_2523->g_1591 p_2523->g_1384.f0
 */
int32_t * func_39(int32_t * p_40, int16_t  p_41, struct S1 * p_2523)
{ /* block id: 11 */
    int32_t **l_49 = &p_2523->g_27;
    int32_t l_63 = 1L;
    int8_t *l_66[7][4][9] = {{{&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67},{&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67},{&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67},{&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67}},{{&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67},{&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67},{&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67},{&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67}},{{&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67},{&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67},{&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67},{&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67}},{{&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67},{&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67},{&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67},{&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67}},{{&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67},{&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67},{&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67},{&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67}},{{&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67},{&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67},{&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67},{&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67}},{{&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67},{&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67},{&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67},{&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67}}};
    int32_t l_1589 = (-1L);
    int32_t *l_1590[7][7][2] = {{{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591}},{{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591}},{{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591}},{{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591}},{{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591}},{{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591}},{{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591},{&p_2523->g_1591,&p_2523->g_1591}}};
    int32_t **l_1598 = (void*)0;
    int64_t ***l_1631 = (void*)0;
    int64_t ****l_1630 = &l_1631;
    uint32_t **l_1681 = (void*)0;
    int64_t l_1721 = 1L;
    int32_t l_1737 = 0x714F2E02L;
    uint32_t l_1738[4] = {0x08D6ABAAL,0x08D6ABAAL,0x08D6ABAAL,0x08D6ABAAL};
    int32_t *l_1741 = &p_2523->g_28[5];
    int i, j, k;
    p_2523->g_1591 |= (l_1589 = ((p_2523->g_43[3] , func_44(&p_2523->g_28[3], ((*l_49) = p_40), (p_2523->g_28[2] , func_50(((((safe_lshift_func_int16_t_s_s((((!p_2523->g_43[3].f0) > func_55((((p_2523->g_28[3] != ((safe_add_func_int32_t_s_s((l_63 | (safe_mul_func_int8_t_s_s(p_2523->g_28[3], ((p_2523->g_67 = p_41) != l_63)))), 0x1B053640L)) != p_2523->g_43[3].f0)) & 0xCAL) , (void*)0), p_41, p_2523->g_43[3].f0, &p_2523->g_28[4], &p_2523->g_28[5], p_2523)) | 8UL), p_41)) , (void*)0) != (void*)0) , (void*)0), p_2523->g_135, p_2523)), p_41, p_2523)) , (**l_49)));
    for (p_2523->g_1384.f0 = 3; (p_2523->g_1384.f0 < 6); p_2523->g_1384.f0 = safe_add_func_int32_t_s_s(p_2523->g_1384.f0, 5))
    { /* block id: 863 */
        int32_t l_1596 = 8L;
        int32_t l_1644 = 0x0DA33CA1L;
        int16_t ****l_1675[10] = {&p_2523->g_1115,&p_2523->g_1115,&p_2523->g_1115,&p_2523->g_1115,&p_2523->g_1115,&p_2523->g_1115,&p_2523->g_1115,&p_2523->g_1115,&p_2523->g_1115,&p_2523->g_1115};
        int32_t l_1680[8] = {0x382F8D95L,0x382F8D95L,0x382F8D95L,0x382F8D95L,0x382F8D95L,0x382F8D95L,0x382F8D95L,0x382F8D95L};
        int16_t ***l_1700 = &p_2523->g_1116[0][0][0];
        union U0 **l_1708 = &p_2523->g_1607[3][0][0];
        uint64_t l_1727 = 0x4B2982D17A9594CFL;
        int i;
        (1 + 1);
    }
    l_1738[3]++;
    return l_1741;
}


/* ------------------------------------------ */
/* 
 * reads : p_2523->g_135 p_2523->g_109 p_2523->g_28 p_2523->g_94 p_2523->g_234 p_2523->g_235 p_2523->g_630 p_2523->g_735 p_2523->g_736 p_2523->g_693 p_2523->g_67 p_2523->g_843 p_2523->g_218 p_2523->g_879 p_2523->g_734 p_2523->g_884 p_2523->g_127 p_2523->g_136 p_2523->g_27 p_2523->g_129 p_2523->g_980 p_2523->g_981 p_2523->g_43.f0 p_2523->g_1115 p_2523->g_1116 p_2523->g_98 p_2523->g_442 p_2523->g_1191.f0 p_2523->g_1032 p_2523->g_1156 p_2523->g_1263 p_2523->g_85 p_2523->g_1046 p_2523->g_1302 p_2523->g_112 p_2523->g_692
 * writes: p_2523->g_136 p_2523->g_347 p_2523->g_127 p_2523->g_736 p_2523->g_28 p_2523->g_27 p_2523->g_67 p_2523->g_109 p_2523->g_1156 p_2523->g_235 p_2523->g_85 p_2523->g_225 p_2523->g_949.f0
 */
uint8_t  func_44(int32_t * p_45, int32_t * p_46, uint8_t  p_47, int64_t  p_48, struct S1 * p_2523)
{ /* block id: 145 */
    int32_t *l_338 = &p_2523->g_28[3];
    uint8_t **l_342 = (void*)0;
    uint8_t **l_343 = (void*)0;
    uint8_t **l_344 = (void*)0;
    uint8_t *l_346[4][4][7] = {{{(void*)0,&p_2523->g_98,(void*)0,&p_2523->g_98,(void*)0,(void*)0,&p_2523->g_98},{(void*)0,&p_2523->g_98,(void*)0,&p_2523->g_98,(void*)0,(void*)0,&p_2523->g_98},{(void*)0,&p_2523->g_98,(void*)0,&p_2523->g_98,(void*)0,(void*)0,&p_2523->g_98},{(void*)0,&p_2523->g_98,(void*)0,&p_2523->g_98,(void*)0,(void*)0,&p_2523->g_98}},{{(void*)0,&p_2523->g_98,(void*)0,&p_2523->g_98,(void*)0,(void*)0,&p_2523->g_98},{(void*)0,&p_2523->g_98,(void*)0,&p_2523->g_98,(void*)0,(void*)0,&p_2523->g_98},{(void*)0,&p_2523->g_98,(void*)0,&p_2523->g_98,(void*)0,(void*)0,&p_2523->g_98},{(void*)0,&p_2523->g_98,(void*)0,&p_2523->g_98,(void*)0,(void*)0,&p_2523->g_98}},{{(void*)0,&p_2523->g_98,(void*)0,&p_2523->g_98,(void*)0,(void*)0,&p_2523->g_98},{(void*)0,&p_2523->g_98,(void*)0,&p_2523->g_98,(void*)0,(void*)0,&p_2523->g_98},{(void*)0,&p_2523->g_98,(void*)0,&p_2523->g_98,(void*)0,(void*)0,&p_2523->g_98},{(void*)0,&p_2523->g_98,(void*)0,&p_2523->g_98,(void*)0,(void*)0,&p_2523->g_98}},{{(void*)0,&p_2523->g_98,(void*)0,&p_2523->g_98,(void*)0,(void*)0,&p_2523->g_98},{(void*)0,&p_2523->g_98,(void*)0,&p_2523->g_98,(void*)0,(void*)0,&p_2523->g_98},{(void*)0,&p_2523->g_98,(void*)0,&p_2523->g_98,(void*)0,(void*)0,&p_2523->g_98},{(void*)0,&p_2523->g_98,(void*)0,&p_2523->g_98,(void*)0,(void*)0,&p_2523->g_98}}};
    uint8_t **l_345[7][5][7] = {{{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]},{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]},{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]},{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]},{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]}},{{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]},{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]},{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]},{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]},{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]}},{{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]},{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]},{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]},{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]},{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]}},{{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]},{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]},{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]},{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]},{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]}},{{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]},{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]},{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]},{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]},{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]}},{{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]},{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]},{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]},{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]},{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]}},{{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]},{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]},{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]},{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]},{&l_346[3][3][5],(void*)0,&l_346[3][3][4],&l_346[1][0][1],(void*)0,&l_346[2][3][5],&l_346[1][0][1]}}};
    int64_t *l_348 = &p_2523->g_127;
    int8_t **l_349[6] = {&p_2523->g_225,&p_2523->g_225,&p_2523->g_225,&p_2523->g_225,&p_2523->g_225,&p_2523->g_225};
    int32_t l_380 = 1L;
    int32_t l_381 = 0x3FAFFB6AL;
    int32_t l_383 = 0x2F9661FEL;
    int64_t l_401[9];
    int32_t l_402 = 0x5750D7EFL;
    int32_t l_404 = 0x031A427DL;
    int32_t l_406 = (-1L);
    int32_t l_407 = 0x594CAF52L;
    int32_t l_408 = 0x672B7B50L;
    int32_t l_409 = 0x30F104D1L;
    int32_t l_410[7] = {(-1L),0x565544F0L,(-1L),(-1L),0x565544F0L,(-1L),(-1L)};
    int64_t l_411 = 0x4C5E52A0C3088892L;
    int64_t l_417 = 0x002B0BE02D0E5419L;
    int8_t l_418 = 0L;
    int16_t l_419[8];
    int32_t l_420 = 0x5127BB8BL;
    uint64_t l_421 = 0xA96E8D508321D056L;
    int32_t l_474 = 0L;
    union U0 *l_528[6] = {&p_2523->g_43[3],&p_2523->g_43[3],&p_2523->g_43[3],&p_2523->g_43[3],&p_2523->g_43[3],&p_2523->g_43[3]};
    union U0 **l_527[6][4] = {{&l_528[1],(void*)0,(void*)0,&l_528[1]},{&l_528[1],(void*)0,(void*)0,&l_528[1]},{&l_528[1],(void*)0,(void*)0,&l_528[1]},{&l_528[1],(void*)0,(void*)0,&l_528[1]},{&l_528[1],(void*)0,(void*)0,&l_528[1]},{&l_528[1],(void*)0,(void*)0,&l_528[1]}};
    int8_t l_617 = 0L;
    uint32_t l_812 = 0UL;
    uint16_t l_840 = 0xF954L;
    int16_t l_852 = 9L;
    uint8_t l_857 = 8UL;
    uint8_t l_892 = 0x9DL;
    union U0 ***l_956 = &l_527[0][0];
    union U0 ****l_955 = &l_956;
    uint32_t **l_970 = &p_2523->g_735;
    int32_t l_998 = 0L;
    int64_t *l_1065 = &p_2523->g_630[6][1];
    int64_t **l_1064 = &l_1065;
    int16_t ***l_1121 = &p_2523->g_1116[1][0][1];
    uint16_t *l_1220 = &p_2523->g_85;
    uint16_t **l_1219 = &l_1220;
    int32_t l_1389[2];
    int8_t ***l_1397 = &p_2523->g_312;
    int8_t ****l_1396 = &l_1397;
    uint64_t l_1448[10] = {0xC25C64EABA0D1036L,0x196950CA6CB2FDD6L,18446744073709551615UL,0x196950CA6CB2FDD6L,0xC25C64EABA0D1036L,0xC25C64EABA0D1036L,0x196950CA6CB2FDD6L,18446744073709551615UL,0x196950CA6CB2FDD6L,0xC25C64EABA0D1036L};
    int8_t l_1496 = 2L;
    int16_t l_1568 = 0L;
    int i, j, k;
    for (i = 0; i < 9; i++)
        l_401[i] = (-1L);
    for (i = 0; i < 8; i++)
        l_419[i] = (-1L);
    for (i = 0; i < 2; i++)
        l_1389[i] = 0x238747B7L;
    p_46 = ((*p_2523->g_135) = l_338);
    if (((safe_lshift_func_uint16_t_u_s((&p_47 != (p_2523->g_347[5] = &p_2523->g_98)), (((*l_348) = p_47) >= (l_349[2] != (void*)0)))) <= (p_48 == (!((0x7A19F6DDL > 0x67F09A42L) && (safe_div_func_uint32_t_u_u((((FAKE_DIVERGE(p_2523->group_2_offset, get_group_id(2), 10) & (safe_rshift_func_uint8_t_u_s(p_2523->g_109, 4))) == (*l_338)) , 4294967286UL), (-1L))))))))
    { /* block id: 150 */
        int8_t l_361 = 0x0AL;
        int32_t l_373 = 0x4E836181L;
        int32_t l_374 = 0x3B7613CFL;
        int32_t l_405[8] = {0x682CEF04L,0x682CEF04L,0x682CEF04L,0x682CEF04L,0x682CEF04L,0x682CEF04L,0x682CEF04L,0x682CEF04L};
        int8_t l_414 = 4L;
        uint32_t * volatile * volatile l_443 = &p_2523->g_442;/* VOLATILE GLOBAL l_443 */
        uint8_t **l_526 = &l_346[2][2][6];
        uint16_t *l_622 = &p_2523->g_85;
        uint32_t l_635 = 1UL;
        uint16_t l_659[5][2] = {{0x9878L,0xB21BL},{0x9878L,0xB21BL},{0x9878L,0xB21BL},{0x9878L,0xB21BL},{0x9878L,0xB21BL}};
        union U0 *l_708 = &p_2523->g_43[5];
        int32_t *l_714 = &l_373;
        int8_t ***l_723 = (void*)0;
        uint64_t l_784[10] = {0x4C7CA6A4ECE8A75AL,0x4C7CA6A4ECE8A75AL,0x4C7CA6A4ECE8A75AL,0x4C7CA6A4ECE8A75AL,0x4C7CA6A4ECE8A75AL,0x4C7CA6A4ECE8A75AL,0x4C7CA6A4ECE8A75AL,0x4C7CA6A4ECE8A75AL,0x4C7CA6A4ECE8A75AL,0x4C7CA6A4ECE8A75AL};
        int i, j;
        (1 + 1);
    }
    else
    { /* block id: 384 */
        int16_t l_817[9];
        int32_t l_830 = 0L;
        uint16_t *l_831[10][8] = {{&p_2523->g_43[3].f0,(void*)0,&p_2523->g_43[3].f0,&p_2523->g_43[3].f0,&p_2523->g_43[3].f0,&p_2523->g_43[3].f0,&p_2523->g_85,(void*)0},{&p_2523->g_43[3].f0,(void*)0,&p_2523->g_43[3].f0,&p_2523->g_43[3].f0,&p_2523->g_43[3].f0,&p_2523->g_43[3].f0,&p_2523->g_85,(void*)0},{&p_2523->g_43[3].f0,(void*)0,&p_2523->g_43[3].f0,&p_2523->g_43[3].f0,&p_2523->g_43[3].f0,&p_2523->g_43[3].f0,&p_2523->g_85,(void*)0},{&p_2523->g_43[3].f0,(void*)0,&p_2523->g_43[3].f0,&p_2523->g_43[3].f0,&p_2523->g_43[3].f0,&p_2523->g_43[3].f0,&p_2523->g_85,(void*)0},{&p_2523->g_43[3].f0,(void*)0,&p_2523->g_43[3].f0,&p_2523->g_43[3].f0,&p_2523->g_43[3].f0,&p_2523->g_43[3].f0,&p_2523->g_85,(void*)0},{&p_2523->g_43[3].f0,(void*)0,&p_2523->g_43[3].f0,&p_2523->g_43[3].f0,&p_2523->g_43[3].f0,&p_2523->g_43[3].f0,&p_2523->g_85,(void*)0},{&p_2523->g_43[3].f0,(void*)0,&p_2523->g_43[3].f0,&p_2523->g_43[3].f0,&p_2523->g_43[3].f0,&p_2523->g_43[3].f0,&p_2523->g_85,(void*)0},{&p_2523->g_43[3].f0,(void*)0,&p_2523->g_43[3].f0,&p_2523->g_43[3].f0,&p_2523->g_43[3].f0,&p_2523->g_43[3].f0,&p_2523->g_85,(void*)0},{&p_2523->g_43[3].f0,(void*)0,&p_2523->g_43[3].f0,&p_2523->g_43[3].f0,&p_2523->g_43[3].f0,&p_2523->g_43[3].f0,&p_2523->g_85,(void*)0},{&p_2523->g_43[3].f0,(void*)0,&p_2523->g_43[3].f0,&p_2523->g_43[3].f0,&p_2523->g_43[3].f0,&p_2523->g_43[3].f0,&p_2523->g_85,(void*)0}};
        int32_t *l_832 = &l_407;
        int i, j;
        for (i = 0; i < 9; i++)
            l_817[i] = (-8L);
        (*l_832) ^= ((((*l_338) > p_47) , 0x67L) | (((safe_lshift_func_int16_t_s_s((*l_338), 3)) , (p_47 || (((l_409 = (((*p_2523->g_735) = ((((((safe_mul_func_int8_t_s_s((+l_817[1]), (((safe_div_func_uint16_t_u_u(((safe_lshift_func_uint16_t_u_s((safe_lshift_func_uint16_t_u_s((l_380 ^= ((((void*)0 != &l_420) <= (((safe_lshift_func_uint8_t_u_s((safe_mod_func_int32_t_s_s(((l_830 &= (safe_mul_func_uint8_t_u_u((p_2523->g_94 | p_47), p_48))) < l_817[1]), GROUP_DIVERGE(2, 1))), 0)) || 0L) ^ 0x3AF6L)) <= GROUP_DIVERGE(1, 1))), p_48)), 9)) < p_47), (*p_2523->g_234))) || l_817[1]) , 0xB2L))) | p_2523->g_630[3][6]) != p_47) ^ FAKE_DIVERGE(p_2523->local_1_offset, get_local_id(1), 10)) <= (*l_338)) && (*p_2523->g_735))) >= (*l_338))) ^ (*l_338)) , 0L))) , 0x24L));
        for (p_2523->g_736 = 0; (p_2523->g_736 != 57); ++p_2523->g_736)
        { /* block id: 392 */
            uint64_t l_839 = 18446744073709551610UL;
            uint64_t *l_844 = (void*)0;
            (*p_2523->g_135) = (((l_830 = ((*l_832) = (((safe_add_func_uint16_t_u_u((safe_sub_func_int32_t_s_s(((*p_45) = (((l_839 = (((0UL ^ p_2523->g_693) && 0x727A14F7L) != ((*l_348) = p_2523->g_67))) != l_840) || (p_48 , (safe_add_func_int64_t_s_s(p_2523->g_843, (*l_338)))))), ((void*)0 == l_844))), p_47)) >= (*p_2523->g_234)) , 0x1AE7ADB5L))) >= p_47) , p_46);
            (*l_832) = (p_48 < ((safe_rshift_func_int8_t_s_s(l_839, 1)) & (safe_rshift_func_int8_t_s_s(p_47, 6))));
            if ((*l_832))
                break;
            return p_48;
        }
    }
    for (l_383 = 5; (l_383 >= 0); l_383 -= 1)
    { /* block id: 406 */
        uint16_t *l_851[3][3][10] = {{{&p_2523->g_43[3].f0,(void*)0,(void*)0,&p_2523->g_43[3].f0,(void*)0,&l_840,&p_2523->g_85,(void*)0,&l_840,&p_2523->g_43[3].f0},{&p_2523->g_43[3].f0,(void*)0,(void*)0,&p_2523->g_43[3].f0,(void*)0,&l_840,&p_2523->g_85,(void*)0,&l_840,&p_2523->g_43[3].f0},{&p_2523->g_43[3].f0,(void*)0,(void*)0,&p_2523->g_43[3].f0,(void*)0,&l_840,&p_2523->g_85,(void*)0,&l_840,&p_2523->g_43[3].f0}},{{&p_2523->g_43[3].f0,(void*)0,(void*)0,&p_2523->g_43[3].f0,(void*)0,&l_840,&p_2523->g_85,(void*)0,&l_840,&p_2523->g_43[3].f0},{&p_2523->g_43[3].f0,(void*)0,(void*)0,&p_2523->g_43[3].f0,(void*)0,&l_840,&p_2523->g_85,(void*)0,&l_840,&p_2523->g_43[3].f0},{&p_2523->g_43[3].f0,(void*)0,(void*)0,&p_2523->g_43[3].f0,(void*)0,&l_840,&p_2523->g_85,(void*)0,&l_840,&p_2523->g_43[3].f0}},{{&p_2523->g_43[3].f0,(void*)0,(void*)0,&p_2523->g_43[3].f0,(void*)0,&l_840,&p_2523->g_85,(void*)0,&l_840,&p_2523->g_43[3].f0},{&p_2523->g_43[3].f0,(void*)0,(void*)0,&p_2523->g_43[3].f0,(void*)0,&l_840,&p_2523->g_85,(void*)0,&l_840,&p_2523->g_43[3].f0},{&p_2523->g_43[3].f0,(void*)0,(void*)0,&p_2523->g_43[3].f0,(void*)0,&l_840,&p_2523->g_85,(void*)0,&l_840,&p_2523->g_43[3].f0}}};
        uint16_t **l_850 = &l_851[2][2][2];
        uint16_t ***l_849 = &l_850;
        int32_t l_853 = (-4L);
        int32_t *l_854 = &l_404;
        int32_t *l_855 = &l_381;
        int32_t *l_856[7][9] = {{&l_408,&l_408,&l_408,&l_408,&l_408,&l_408,&l_408,&l_408,&l_408},{&l_408,&l_408,&l_408,&l_408,&l_408,&l_408,&l_408,&l_408,&l_408},{&l_408,&l_408,&l_408,&l_408,&l_408,&l_408,&l_408,&l_408,&l_408},{&l_408,&l_408,&l_408,&l_408,&l_408,&l_408,&l_408,&l_408,&l_408},{&l_408,&l_408,&l_408,&l_408,&l_408,&l_408,&l_408,&l_408,&l_408},{&l_408,&l_408,&l_408,&l_408,&l_408,&l_408,&l_408,&l_408,&l_408},{&l_408,&l_408,&l_408,&l_408,&l_408,&l_408,&l_408,&l_408,&l_408}};
        uint64_t l_860 = 0UL;
        int32_t **l_877 = &p_2523->g_692;
        int16_t **l_894 = (void*)0;
        int16_t ***l_893[5][8][6] = {{{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894}},{{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894}},{{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894}},{{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894}},{{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894},{&l_894,&l_894,&l_894,&l_894,&l_894,&l_894}}};
        int32_t l_898 = 0x6290AF75L;
        uint64_t l_906 = 0xFC428800157B65D6L;
        union U0 *l_950 = &p_2523->g_949;
        uint32_t l_960 = 0x5A7F93B1L;
        int8_t l_1004 = 0L;
        int32_t **l_1037 = &l_854;
        int8_t **l_1045[7] = {&p_2523->g_225,&p_2523->g_225,&p_2523->g_225,&p_2523->g_225,&p_2523->g_225,&p_2523->g_225,&p_2523->g_225};
        int64_t **l_1124 = &l_1065;
        uint8_t **l_1181[7][9] = {{&l_346[1][0][1],&p_2523->g_347[5],&l_346[3][0][0],&l_346[1][0][1],&p_2523->g_347[5],&l_346[1][0][1],&l_346[3][0][0],&p_2523->g_347[5],&l_346[1][0][1]},{&l_346[1][0][1],&p_2523->g_347[5],&l_346[3][0][0],&l_346[1][0][1],&p_2523->g_347[5],&l_346[1][0][1],&l_346[3][0][0],&p_2523->g_347[5],&l_346[1][0][1]},{&l_346[1][0][1],&p_2523->g_347[5],&l_346[3][0][0],&l_346[1][0][1],&p_2523->g_347[5],&l_346[1][0][1],&l_346[3][0][0],&p_2523->g_347[5],&l_346[1][0][1]},{&l_346[1][0][1],&p_2523->g_347[5],&l_346[3][0][0],&l_346[1][0][1],&p_2523->g_347[5],&l_346[1][0][1],&l_346[3][0][0],&p_2523->g_347[5],&l_346[1][0][1]},{&l_346[1][0][1],&p_2523->g_347[5],&l_346[3][0][0],&l_346[1][0][1],&p_2523->g_347[5],&l_346[1][0][1],&l_346[3][0][0],&p_2523->g_347[5],&l_346[1][0][1]},{&l_346[1][0][1],&p_2523->g_347[5],&l_346[3][0][0],&l_346[1][0][1],&p_2523->g_347[5],&l_346[1][0][1],&l_346[3][0][0],&p_2523->g_347[5],&l_346[1][0][1]},{&l_346[1][0][1],&p_2523->g_347[5],&l_346[3][0][0],&l_346[1][0][1],&p_2523->g_347[5],&l_346[1][0][1],&l_346[3][0][0],&p_2523->g_347[5],&l_346[1][0][1]}};
        uint16_t l_1184 = 0UL;
        int i, j, k;
        (*l_849) = (void*)0;
        l_857--;
        (*p_2523->g_135) = p_45;
        for (l_853 = 0; (l_853 <= 3); l_853 += 1)
        { /* block id: 412 */
            int32_t l_864 = 0x6748C758L;
            int64_t *l_873 = (void*)0;
            int32_t l_875 = (-7L);
            int32_t l_899 = (-7L);
            int32_t l_900 = 1L;
            int32_t l_901 = 0x6B4D8F9BL;
            int32_t l_903[8] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
            int i;
            for (l_417 = 3; (l_417 >= 0); l_417 -= 1)
            { /* block id: 415 */
                l_860--;
            }
            for (l_617 = 4; (l_617 >= 0); l_617 -= 1)
            { /* block id: 420 */
                int32_t *l_863 = &l_853;
                int64_t *l_872 = (void*)0;
                int64_t **l_871 = &l_872;
                int64_t **l_874 = &l_873;
                int32_t **l_876 = &p_2523->g_692;
                int32_t l_897 = (-9L);
                int32_t l_902 = 0x0F48A56CL;
                int32_t l_904[1];
                int32_t l_905 = 0x7D2FBE27L;
                int i;
                for (i = 0; i < 1; i++)
                    l_904[i] = 1L;
                l_863 = l_863;
                (*l_855) = ((l_864 & (safe_mul_func_uint16_t_u_u(((*p_45) || (safe_mod_func_uint64_t_u_u(p_2523->g_218, (safe_lshift_func_uint8_t_u_u((1UL < 0x5DL), (((*l_338) &= ((l_875 &= (((*l_871) = &p_2523->g_630[8][6]) != ((*l_874) = l_873))) , (p_47 = 1UL))) , (p_48 & (*l_855)))))))), 0x6D45L))) == l_864);
                if ((((*l_338) , &p_2523->g_692) == (l_877 = l_876)))
                { /* block id: 429 */
                    int32_t *l_896 = &l_408;
                    for (l_406 = 3; (l_406 >= 0); l_406 -= 1)
                    { /* block id: 432 */
                        int32_t *l_878 = &p_2523->g_109;
                        (*p_2523->g_879) = ((*p_2523->g_135) = l_878);
                    }
                    for (l_381 = 0; (l_381 <= 3); l_381 += 1)
                    { /* block id: 438 */
                        int32_t l_887 = 0x6A883FB2L;
                        int i, j;
                        (*p_2523->g_136) = (safe_sub_func_int64_t_s_s((((**p_2523->g_734) = 0x3AFDA1D6L) >= ((safe_div_func_int32_t_s_s((p_2523->g_884 , (safe_div_func_uint32_t_u_u((!(((((*l_348) ^= l_887) < 0L) && ((*p_2523->g_234) <= (safe_add_func_uint8_t_u_u((((p_47 != (p_2523->g_67 = (*l_338))) <= (l_892 = p_47)) > ((void*)0 == l_893[2][3][2])), (*l_863))))) > 0xB2DCL)), (**p_2523->g_135)))), 0x28B1D068L)) | p_2523->g_28[3])), 0x52EB4575E8BB7A50L));
                        (*p_2523->g_27) = (*l_338);
                    }
                    for (l_404 = 5; (l_404 >= 0); l_404 -= 1)
                    { /* block id: 448 */
                        int32_t *l_895 = &l_406;
                        l_896 = l_895;
                    }
                }
                else
                { /* block id: 451 */
                    (*p_2523->g_27) = l_875;
                    (*p_45) = (*p_46);
                }
                --l_906;
            }
        }
        for (p_2523->g_67 = 0; (p_2523->g_67 <= 5); p_2523->g_67 += 1)
        { /* block id: 460 */
            uint64_t l_916[8][8] = {{0x029653A3DD6C954BL,0x029653A3DD6C954BL,0xCC15825FAB758D26L,1UL,0x04EC152BBF7A1C1CL,0x0F1D6EB96C3E1FC6L,3UL,0x68C444BEFC471D2FL},{0x029653A3DD6C954BL,0x029653A3DD6C954BL,0xCC15825FAB758D26L,1UL,0x04EC152BBF7A1C1CL,0x0F1D6EB96C3E1FC6L,3UL,0x68C444BEFC471D2FL},{0x029653A3DD6C954BL,0x029653A3DD6C954BL,0xCC15825FAB758D26L,1UL,0x04EC152BBF7A1C1CL,0x0F1D6EB96C3E1FC6L,3UL,0x68C444BEFC471D2FL},{0x029653A3DD6C954BL,0x029653A3DD6C954BL,0xCC15825FAB758D26L,1UL,0x04EC152BBF7A1C1CL,0x0F1D6EB96C3E1FC6L,3UL,0x68C444BEFC471D2FL},{0x029653A3DD6C954BL,0x029653A3DD6C954BL,0xCC15825FAB758D26L,1UL,0x04EC152BBF7A1C1CL,0x0F1D6EB96C3E1FC6L,3UL,0x68C444BEFC471D2FL},{0x029653A3DD6C954BL,0x029653A3DD6C954BL,0xCC15825FAB758D26L,1UL,0x04EC152BBF7A1C1CL,0x0F1D6EB96C3E1FC6L,3UL,0x68C444BEFC471D2FL},{0x029653A3DD6C954BL,0x029653A3DD6C954BL,0xCC15825FAB758D26L,1UL,0x04EC152BBF7A1C1CL,0x0F1D6EB96C3E1FC6L,3UL,0x68C444BEFC471D2FL},{0x029653A3DD6C954BL,0x029653A3DD6C954BL,0xCC15825FAB758D26L,1UL,0x04EC152BBF7A1C1CL,0x0F1D6EB96C3E1FC6L,3UL,0x68C444BEFC471D2FL}};
            int32_t l_919 = (-1L);
            int16_t l_933[7];
            int32_t **l_975 = (void*)0;
            uint16_t ***l_1003 = &l_850;
            int32_t **l_1030 = &p_2523->g_692;
            uint8_t l_1031 = 0x0AL;
            int32_t **l_1038 = (void*)0;
            uint32_t *l_1056 = &p_2523->g_736;
            union U0 *l_1091 = (void*)0;
            int8_t **l_1093 = &p_2523->g_225;
            uint32_t **l_1143 = &p_2523->g_735;
            uint8_t **l_1182 = &l_346[2][1][3];
            int i, j;
            for (i = 0; i < 7; i++)
                l_933[i] = (-1L);
            for (l_406 = 1; (l_406 <= 5); l_406 += 1)
            { /* block id: 463 */
                uint64_t *l_910 = &l_421;
                int32_t l_914[9] = {0L,0L,0L,0L,0L,0L,0L,0L,0L};
                union U0 ***l_925 = &l_527[2][0];
                union U0 ***l_929 = &l_527[2][0];
                int64_t **l_976 = &l_348;
                uint8_t l_986[5] = {248UL,248UL,248UL,248UL,248UL};
                int32_t l_987 = (-1L);
                int i;
                (1 + 1);
            }
        }
    }
    for (l_408 = 0; (l_408 <= 9); l_408 += 1)
    { /* block id: 654 */
        uint16_t **l_1218 = (void*)0;
        int32_t *l_1229 = &l_381;
        int32_t *l_1230 = &l_404;
        uint64_t l_1238[4];
        int8_t *l_1319[8][6] = {{&p_2523->g_67,&l_418,&l_418,&p_2523->g_67,&p_2523->g_67,&l_418},{&p_2523->g_67,&l_418,&l_418,&p_2523->g_67,&p_2523->g_67,&l_418},{&p_2523->g_67,&l_418,&l_418,&p_2523->g_67,&p_2523->g_67,&l_418},{&p_2523->g_67,&l_418,&l_418,&p_2523->g_67,&p_2523->g_67,&l_418},{&p_2523->g_67,&l_418,&l_418,&p_2523->g_67,&p_2523->g_67,&l_418},{&p_2523->g_67,&l_418,&l_418,&p_2523->g_67,&p_2523->g_67,&l_418},{&p_2523->g_67,&l_418,&l_418,&p_2523->g_67,&p_2523->g_67,&l_418},{&p_2523->g_67,&l_418,&l_418,&p_2523->g_67,&p_2523->g_67,&l_418}};
        int64_t l_1335 = (-1L);
        int32_t l_1348 = 6L;
        int32_t l_1360 = 0x2F058BA5L;
        int64_t l_1361 = (-1L);
        int32_t l_1363[1];
        int16_t ****l_1394 = &l_1121;
        int8_t ****l_1398 = &l_1397;
        uint8_t l_1400 = 0x42L;
        union U0 *l_1451 = &p_2523->g_43[1];
        uint32_t l_1497 = 0UL;
        int32_t **l_1521 = (void*)0;
        int i, j;
        for (i = 0; i < 4; i++)
            l_1238[i] = 18446744073709551613UL;
        for (i = 0; i < 1; i++)
            l_1363[i] = (-3L);
        if (((safe_rshift_func_uint8_t_u_s(0x5EL, 2)) | (((safe_sub_func_uint64_t_u_u(p_2523->g_235[l_408], p_47)) <= ((*l_338) = p_47)) > (((((*l_1229) = (safe_add_func_uint64_t_u_u((((l_1218 != l_1219) < ((safe_mul_func_uint8_t_u_u((((*p_2523->g_735) = GROUP_DIVERGE(2, 1)) == (safe_rshift_func_int16_t_s_s((safe_add_func_int32_t_s_s(((safe_div_func_int8_t_s_s(((void*)0 != &p_2523->g_130), ((l_383 < p_48) | GROUP_DIVERGE(1, 1)))) && (*p_2523->g_129)), 0x57D2081CL)), 2))), 250UL)) >= (*p_2523->g_234))) , 18446744073709551615UL), p_47))) == l_411) , 0x5EL) < p_48))))
        { /* block id: 658 */
            int32_t l_1241 = 0x255C8FFDL;
            (*p_2523->g_135) = l_1230;
            for (l_998 = 0; (l_998 >= 0); l_998 -= 1)
            { /* block id: 662 */
                int32_t l_1242 = 3L;
                uint32_t l_1281[2][6][4] = {{{1UL,4294967288UL,4294967292UL,4294967295UL},{1UL,4294967288UL,4294967292UL,4294967295UL},{1UL,4294967288UL,4294967292UL,4294967295UL},{1UL,4294967288UL,4294967292UL,4294967295UL},{1UL,4294967288UL,4294967292UL,4294967295UL},{1UL,4294967288UL,4294967292UL,4294967295UL}},{{1UL,4294967288UL,4294967292UL,4294967295UL},{1UL,4294967288UL,4294967292UL,4294967295UL},{1UL,4294967288UL,4294967292UL,4294967295UL},{1UL,4294967288UL,4294967292UL,4294967295UL},{1UL,4294967288UL,4294967292UL,4294967295UL},{1UL,4294967288UL,4294967292UL,4294967295UL}}};
                int16_t *l_1291 = &p_2523->g_235[l_408];
                int i, j, k;
                l_1242 ^= (safe_add_func_uint16_t_u_u((**p_2523->g_980), ((((p_48 < (((***p_2523->g_1115) & p_48) > ((safe_mul_func_int8_t_s_s((FAKE_DIVERGE(p_2523->local_2_offset, get_local_id(2), 10) & (safe_unary_minus_func_uint64_t_u(((((**p_2523->g_135) ^= (p_2523->g_98 , 4L)) == l_1238[3]) & ((p_48 == (safe_add_func_uint32_t_u_u(p_48, (*p_46)))) >= l_1241))))), 1L)) >= 0x37L))) > p_48) != 0x5D82L) && p_48)));
                if ((safe_add_func_uint64_t_u_u((((safe_div_func_int64_t_s_s(p_2523->g_43[3].f0, (safe_rshift_func_uint8_t_u_u((safe_add_func_uint8_t_u_u(((safe_div_func_uint16_t_u_u(((p_48 || (safe_mul_func_uint8_t_u_u(p_47, (FAKE_DIVERGE(p_2523->local_1_offset, get_local_id(1), 10) < (safe_lshift_func_uint16_t_u_s(((*p_2523->g_442) & ((p_2523->g_1191[0].f0 , ((p_2523->g_1156 |= (safe_sub_func_int16_t_s_s((safe_mod_func_uint64_t_u_u(p_47, p_2523->g_1032)), p_2523->g_109))) , 0x6A4465E76F684DB2L)) >= p_2523->g_127)), 3)))))) == l_1242), p_47)) & p_47), (*l_338))), 2)))) == p_48) && 0UL), p_47)))
                { /* block id: 666 */
                    int16_t *l_1270 = &l_419[0];
                    int i;
                    if ((safe_lshift_func_uint16_t_u_s(p_48, ((0xE951A9940D6B1D19L < (p_2523->g_1263 , p_2523->g_693)) <= ((p_48 > (((*l_1270) = (p_2523->g_235[l_408] = (safe_add_func_int16_t_s_s((((((**l_970) = (((**p_2523->g_135) || (((safe_sub_func_int8_t_s_s((safe_lshift_func_uint8_t_u_u((0UL <= 1L), (~4UL))), 0x28L)) > 0xAB5347FCL) > 0UL)) , (*p_2523->g_735))) ^ (*p_45)) | (*p_2523->g_234)) < p_47), p_48)))) , l_1242)) , p_47)))))
                    { /* block id: 670 */
                        uint32_t l_1288 = 0xAB5A462EL;
                        (*l_1229) ^= ((safe_sub_func_uint32_t_u_u(((*l_1230) > (((((safe_add_func_int16_t_s_s(((*p_2523->g_234) = ((l_1288 = (safe_mul_func_int16_t_s_s((p_48 || (((safe_lshift_func_int16_t_s_s(p_47, 13)) | ((GROUP_DIVERGE(2, 1) && ((safe_rshift_func_uint16_t_u_u((l_1281[0][4][1] > (++(*l_1220))), 8)) , ((safe_sub_func_uint16_t_u_u(FAKE_DIVERGE(p_2523->global_0_offset, get_global_id(0), 10), (6UL == (safe_lshift_func_uint8_t_u_s(p_47, (((p_2523->g_1046 , (**p_2523->g_980)) < (-1L)) != p_2523->g_235[(l_998 + 9)])))))) == l_1242))) > l_1242)) , (***p_2523->g_1115))), (*l_1230)))) >= 0x3CL)), 1UL)) | l_1241) , p_48) == 0xEA6AL) && (*p_46))), 0x32801EF2L)) , 0x38017F90L);
                        if (l_1288)
                            continue;
                        p_46 = (void*)0;
                        (*l_1230) |= (*p_45);
                    }
                    else
                    { /* block id: 678 */
                        uint64_t *l_1298 = &l_1238[3];
                        uint32_t l_1307 = 0x5BB98F7EL;
                        (*p_2523->g_112) = (safe_mod_func_int64_t_s_s((~((l_1241 ^ (l_1291 != (**l_1121))) , ((safe_unary_minus_func_int32_t_s((p_48 ^ (safe_unary_minus_func_uint32_t_u((safe_mul_func_uint16_t_u_u((((safe_sub_func_uint64_t_u_u(((*l_1298) = p_48), (((safe_unary_minus_func_int8_t_s(((l_1241 ^ (255UL || ((safe_lshift_func_uint16_t_u_s((((*l_348) = (p_2523->g_1302[1] , (safe_rshift_func_int16_t_s_u(((*p_2523->g_234) = (safe_mod_func_int8_t_s_s((p_47 <= (*l_338)), FAKE_DIVERGE(p_2523->local_1_offset, get_local_id(1), 10)))), 11)))) >= 0x128BA840497675A3L), l_1307)) || p_2523->g_1032))) & p_47))) == 0x0CL) , p_47))) ^ l_1307) , (**p_2523->g_980)), l_1307))))))) == 0x47L))), p_2523->g_85));
                    }
                    return p_48;
                }
                else
                { /* block id: 685 */
                    uint64_t l_1312 = 3UL;
                    if ((+((*l_1230) ^= (l_1241 & (safe_rshift_func_int16_t_s_s((-5L), 7))))))
                    { /* block id: 687 */
                        int32_t *l_1310 = &l_381;
                        int32_t *l_1311 = &l_1242;
                        ++l_1312;
                        return l_1281[0][4][1];
                    }
                    else
                    { /* block id: 690 */
                        return p_48;
                    }
                }
            }
        }
        else
        { /* block id: 695 */
            uint16_t l_1315 = 0xCE41L;
            int8_t *l_1318 = &p_2523->g_67;
            uint16_t ***l_1322 = &l_1218;
            (*l_1229) = (l_1315 ^ (((**p_2523->g_980) , (safe_mod_func_uint16_t_u_u((((p_2523->g_225 = (l_1318 = l_1318)) == l_1319[5][2]) >= (((((((safe_add_func_int16_t_s_s(p_47, (l_1322 == ((safe_lshift_func_uint16_t_u_u(((((~(safe_rshift_func_int8_t_s_s(((((*l_338) != p_48) >= (((void*)0 != &p_2523->g_347[4]) != 4294967288UL)) != 0x2689L), (*l_338)))) >= p_47) > (*p_2523->g_112)) != (***p_2523->g_1115)), 11)) , &p_2523->g_980)))) , (*p_2523->g_692)) , p_48) && l_1315) , 0x4BA981DEL) , l_1315) < (*l_338))), (-9L)))) & (*l_338)));
        }
        for (p_2523->g_949.f0 = 0; p_2523->g_949.f0 < 4; p_2523->g_949.f0 += 1)
        {
            l_1238[p_2523->g_949.f0] = 0xC10EBB7AA777814EL;
        }
    }
    return (*l_338);
}


/* ------------------------------------------ */
/* 
 * reads : p_2523->g_112 p_2523->g_28 p_2523->g_98 p_2523->g_70 p_2523->g_43 p_2523->g_129 p_2523->g_109 p_2523->g_127 p_2523->g_135 p_2523->g_136 p_2523->g_107 p_2523->g_43.f0 p_2523->g_218 p_2523->g_85 p_2523->g_234 p_2523->g_128 p_2523->g_235 p_2523->g_258 p_2523->g_94
 * writes: p_2523->g_28 p_2523->g_109 p_2523->g_136 p_2523->g_107 p_2523->g_67 p_2523->g_98 p_2523->g_218 p_2523->g_225 p_2523->g_70 p_2523->g_94 p_2523->g_127 p_2523->g_235 p_2523->g_312
 */
uint8_t  func_50(int32_t ** p_51, int32_t ** p_52, struct S1 * p_2523)
{ /* block id: 50 */
    uint64_t l_139 = 0xDDD91154651966E8L;
    uint16_t l_153 = 0x9DADL;
    int64_t *l_154 = (void*)0;
    int64_t *l_155[10] = {&p_2523->g_127,&p_2523->g_127,&p_2523->g_127,&p_2523->g_127,&p_2523->g_127,&p_2523->g_127,&p_2523->g_127,&p_2523->g_127,&p_2523->g_127,&p_2523->g_127};
    int32_t l_156 = 0x2DDDDEF2L;
    int32_t l_157 = (-7L);
    uint8_t *l_168 = (void*)0;
    int32_t l_169 = 0x58CEDA53L;
    int32_t l_170[3];
    uint32_t l_171 = 4294967288UL;
    int32_t l_172 = 0x1519D29DL;
    uint64_t l_180 = 18446744073709551613UL;
    union U0 *l_214 = (void*)0;
    int16_t *l_237 = &p_2523->g_235[7];
    uint16_t l_254 = 1UL;
    int8_t l_276 = 0x31L;
    uint16_t l_334[8] = {0xAC32L,0xAC32L,0xAC32L,0xAC32L,0xAC32L,0xAC32L,0xAC32L,0xAC32L};
    int i;
    for (i = 0; i < 3; i++)
        l_170[i] = 1L;
    l_157 = (((safe_mod_func_int32_t_s_s(((*p_2523->g_112) ^= l_139), (safe_mul_func_uint16_t_u_u((((((p_2523->g_98 & ((l_156 = (safe_add_func_uint16_t_u_u(p_2523->g_70, (safe_unary_minus_func_uint32_t_u((((safe_mul_func_int16_t_s_s(((p_2523->g_43[4] , ((*p_2523->g_129) = (*p_2523->g_129))) != 0UL), (safe_div_func_int8_t_s_s((((safe_add_func_uint32_t_u_u(l_139, (safe_div_func_uint16_t_u_u((l_139 == 246UL), l_139)))) <= l_139) , l_153), l_153)))) , 7UL) & l_153)))))) >= 1UL)) != l_139) && l_139) ^ GROUP_DIVERGE(2, 1)) , 0xAE7FL), p_2523->g_98)))) , 1UL) & p_2523->g_98);
    if ((!((l_157 != ((9L ^ (safe_mul_func_uint8_t_u_u((l_172 |= ((safe_mod_func_uint64_t_u_u(p_2523->g_127, ((safe_lshift_func_int16_t_s_u(l_153, (safe_unary_minus_func_int64_t_s((l_156 & (l_156 , (safe_div_func_uint8_t_u_u((l_170[2] = (l_169 &= (safe_unary_minus_func_int16_t_s((((*p_2523->g_135) = (p_2523->g_43[3] , (*p_2523->g_135))) != (l_156 , &l_156)))))), l_171)))))))) , l_170[2]))) || l_169)), l_157))) | p_2523->g_109)) & l_157)))
    { /* block id: 59 */
        int32_t *l_173 = &p_2523->g_28[2];
        int32_t *l_174 = &p_2523->g_109;
        int32_t *l_175 = &l_170[2];
        int32_t *l_176 = &p_2523->g_28[5];
        int32_t *l_177 = &l_169;
        int32_t *l_178 = &l_156;
        int32_t *l_179[2];
        int i;
        for (i = 0; i < 2; i++)
            l_179[i] = (void*)0;
        (*p_52) = (l_173 = (*p_2523->g_135));
        l_180--;
        (*p_2523->g_135) = (*p_2523->g_135);
    }
    else
    { /* block id: 64 */
        int8_t l_187 = (-1L);
lbl_188:
        for (p_2523->g_107 = 10; (p_2523->g_107 == 1); --p_2523->g_107)
        { /* block id: 67 */
            return p_2523->g_70;
        }
        for (l_171 = 0; (l_171 != 36); l_171++)
        { /* block id: 72 */
            return l_187;
        }
        if (l_180)
            goto lbl_188;
        return p_2523->g_28[3];
    }
    for (l_139 = 0; (l_139 <= 1); l_139 += 1)
    { /* block id: 80 */
        uint64_t l_207 = 18446744073709551615UL;
        int8_t *l_208 = &p_2523->g_67;
        int8_t **l_210 = &l_208;
        int8_t ***l_209 = &l_210;
        union U0 **l_211 = (void*)0;
        union U0 *l_213 = &p_2523->g_43[3];
        union U0 **l_212[10] = {&l_213,&l_213,&l_213,&l_213,&l_213,&l_213,&l_213,&l_213,&l_213,&l_213};
        uint8_t l_255 = 0x9FL;
        int32_t l_257 = 1L;
        int32_t l_319 = 0x5F1AE000L;
        int i;
        l_214 = ((((*l_209) = ((safe_mul_func_int16_t_s_s(((((safe_div_func_int8_t_s_s((safe_div_func_uint32_t_u_u(((((void*)0 != &p_2523->g_28[(l_139 + 4)]) || (p_2523->g_28[(l_139 + 4)] & ((safe_div_func_int64_t_s_s((safe_rshift_func_int16_t_s_u((((*l_208) = ((safe_add_func_int64_t_s_s((l_170[(l_139 + 1)] = (safe_mod_func_int32_t_s_s(l_170[(l_139 + 1)], ((safe_div_func_int16_t_s_s(((safe_lshift_func_uint16_t_u_u(l_170[2], 10)) == ((0UL || (l_169 = l_170[0])) < ((l_207 , p_2523->g_43[3].f0) & p_2523->g_28[(l_139 + 4)]))), l_207)) , l_172)))), 0x54E2514E944683A1L)) | p_2523->g_109)) == l_180), p_2523->g_28[(l_139 + 1)])), p_2523->g_28[(l_139 + 4)])) < 5UL))) == p_2523->g_127), p_2523->g_28[l_139])), l_156)) , p_2523->g_127) < (-1L)) > l_139), 0xD67CL)) , (void*)0)) == (void*)0) , (void*)0);
        for (p_2523->g_98 = 0; (p_2523->g_98 <= 1); p_2523->g_98 += 1)
        { /* block id: 88 */
            uint32_t *l_217 = &p_2523->g_218;
            int16_t *l_226 = (void*)0;
            int16_t *l_227 = &p_2523->g_70;
            int16_t **l_236[8];
            int i, j;
            for (i = 0; i < 8; i++)
                l_236[i] = &p_2523->g_234;
            if (l_207)
                break;
            p_2523->g_28[(l_139 + 4)] |= (safe_mul_func_uint8_t_u_u(((((*l_217) ^= l_172) , p_2523->g_85) < (safe_mod_func_int16_t_s_s((safe_lshift_func_int16_t_s_u((0x9C59L & ((p_2523->g_225 = ((safe_lshift_func_int16_t_s_s(p_2523->g_109, 6)) , (void*)0)) != l_168)), 15)), ((*l_227) = p_2523->g_98)))), (safe_rshift_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(l_207, (safe_lshift_func_int8_t_s_u(((l_237 = p_2523->g_234) == &p_2523->g_235[8]), 1)))), FAKE_DIVERGE(p_2523->group_2_offset, get_group_id(2), 10)))));
        }
        for (l_157 = 0; (l_157 <= 1); l_157 += 1)
        { /* block id: 98 */
            int32_t * volatile l_238 = &l_170[2];/* VOLATILE GLOBAL l_238 */
            uint8_t *l_252 = (void*)0;
            uint8_t *l_253[1];
            int64_t *l_256 = &p_2523->g_127;
            int32_t l_293 = 0x5E133C69L;
            int32_t l_305 = (-2L);
            int i, j;
            for (i = 0; i < 1; i++)
                l_253[i] = &p_2523->g_94;
            l_238 = p_2523->g_128[l_139][(l_157 + 3)];
            if (((GROUP_DIVERGE(1, 1) && 0L) | ((safe_lshift_func_uint8_t_u_u((safe_rshift_func_int16_t_s_u((safe_mul_func_int16_t_s_s((*p_2523->g_234), (safe_unary_minus_func_int8_t_s(((safe_lshift_func_uint16_t_u_u(((safe_rshift_func_int16_t_s_s((((l_254 |= (safe_rshift_func_uint8_t_u_s((p_2523->g_28[(l_139 + 4)] , l_139), 6))) & l_139) , (l_255 == (p_51 == (((((void*)0 == l_256) != p_2523->g_28[l_139]) == FAKE_DIVERGE(p_2523->local_0_offset, get_local_id(0), 10)) , (void*)0)))), 11)) > 1UL), 0)) < l_170[2]))))), 14)), p_2523->g_127)) || l_207)))
            { /* block id: 101 */
                int16_t *l_259[5];
                int32_t l_264 = 0x0DE8F57CL;
                int i;
                for (i = 0; i < 5; i++)
                    l_259[i] = (void*)0;
                atomic_add(&p_2523->g_atomic_reduction[get_linear_group_id()], (((p_2523->g_28[3] || (((l_256 == (void*)0) == ((l_257 & p_2523->g_258) > (p_2523->g_70 &= (*p_2523->g_234)))) <= (&l_255 != (((0L != (safe_mul_func_uint8_t_u_u(p_2523->g_109, FAKE_DIVERGE(p_2523->global_2_offset, get_global_id(2), 10)))) < 0UL) , (void*)0)))) >= (-2L)) , l_255));
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                if (get_linear_local_id() == 0)
                    p_2523->v_collective += p_2523->g_atomic_reduction[get_linear_group_id()];
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                for (p_2523->g_94 = 0; (p_2523->g_94 == 39); p_2523->g_94 = safe_add_func_uint16_t_u_u(p_2523->g_94, 3))
                { /* block id: 106 */
                    return l_264;
                }
            }
            else
            { /* block id: 109 */
                uint8_t l_270 = 0xA1L;
                int8_t *l_271 = &p_2523->g_67;
                int32_t *l_280 = &p_2523->g_28[3];
                uint32_t *l_337 = &p_2523->g_218;
                (*p_2523->g_112) = ((safe_unary_minus_func_int16_t_s(((*p_2523->g_234) = (safe_rshift_func_int16_t_s_s((l_207 | l_153), ((safe_sub_func_int32_t_s_s(l_270, ((void*)0 == l_271))) > (p_2523->g_218 ^ (p_2523->g_127 = ((safe_lshift_func_uint16_t_u_s(((((((safe_mul_func_int16_t_s_s((((0UL || l_172) ^ 0xD2DB4316L) , (*p_2523->g_234)), l_156)) , l_257) == (*p_2523->g_234)) & 0x44L) <= l_276) == 0x35L), 4)) , p_2523->g_28[5]))))))))) ^ p_2523->g_28[l_139]);
                for (p_2523->g_109 = (-27); (p_2523->g_109 == 25); ++p_2523->g_109)
                { /* block id: 115 */
                    int32_t *l_279 = &l_157;
                    (*p_2523->g_135) = l_279;
                    for (l_257 = 0; (l_257 <= 9); l_257 += 1)
                    { /* block id: 119 */
                        if ((*p_2523->g_129))
                            break;
                        (*p_2523->g_135) = l_280;
                    }
                    for (p_2523->g_94 = 0; (p_2523->g_94 <= 1); p_2523->g_94 += 1)
                    { /* block id: 125 */
                        int32_t l_304 = (-1L);
                        int8_t ***l_310 = (void*)0;
                        int8_t ***l_311 = (void*)0;
                        int16_t **l_324 = &l_237;
                        uint32_t *l_333 = &p_2523->g_218;
                        int i, j;
                        l_319 ^= ((safe_sub_func_uint64_t_u_u(((safe_mul_func_int8_t_s_s(((void*)0 == p_2523->g_128[p_2523->g_94][p_2523->g_94]), (safe_mod_func_int16_t_s_s((l_171 > ((safe_lshift_func_uint8_t_u_s((((+(safe_mod_func_int16_t_s_s((safe_mod_func_int16_t_s_s(l_293, (((safe_lshift_func_uint16_t_u_u((+(safe_lshift_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(((safe_div_func_uint64_t_u_u(p_2523->g_70, ((l_305 = l_304) && ((safe_mul_func_uint16_t_u_u((((safe_lshift_func_int8_t_s_u(((((*l_209) != (p_2523->g_312 = (*l_209))) ^ ((((safe_sub_func_int32_t_s_s((safe_div_func_int64_t_s_s(((*l_256) = (((safe_sub_func_uint8_t_u_u((l_170[1] , p_2523->g_94), GROUP_DIVERGE(2, 1))) ^ FAKE_DIVERGE(p_2523->group_2_offset, get_group_id(2), 10)) < (*p_2523->g_112))), p_2523->g_43[3].f0)), FAKE_DIVERGE(p_2523->global_1_offset, get_global_id(1), 10))) || (*l_280)) , 0x682F85C9L) , l_170[(l_139 + 1)])) >= p_2523->g_43[3].f0), 3)) | p_2523->g_28[(l_139 + 4)]) , l_157), 0x3025L)) == 0x259F1F8BL)))) , p_2523->g_85), FAKE_DIVERGE(p_2523->local_1_offset, get_local_id(1), 10))), l_293))), l_293)) , l_305) , p_2523->g_258))), (*l_279)))) , (-2L)) >= p_2523->g_28[(l_139 + 4)]), l_257)) < 0x25318A651242CBDCL)), l_207)))) == (*p_2523->g_234)), l_257)) ^ p_2523->g_28[3]);
                        l_334[3] |= ((p_2523->g_28[l_139] , (((safe_mod_func_int8_t_s_s(0x4CL, (safe_rshift_func_int16_t_s_s(((((*l_324) = (void*)0) != &p_2523->g_70) , (*p_2523->g_234)), (l_170[2] & 1L))))) <= (safe_sub_func_uint64_t_u_u((p_2523->g_85 != ((((safe_mul_func_uint8_t_u_u((((*l_333) = ((l_169 = ((safe_rshift_func_int8_t_s_u((safe_lshift_func_uint16_t_u_u(p_2523->g_28[3], 5)), (*l_280))) && (*l_279))) , l_153)) < l_157), p_2523->g_107)) <= (*l_279)) , p_2523->g_109) >= (*l_279))), p_2523->g_98))) , p_2523->g_107)) <= p_2523->g_43[3].f0);
                        if ((**p_2523->g_135))
                            continue;
                        if (l_157)
                            break;
                    }
                }
                l_170[(l_139 + 1)] |= (safe_add_func_uint32_t_u_u(((*l_337) = p_2523->g_107), (*l_280)));
            }
            (*p_52) = &l_293;
        }
    }
    return p_2523->g_258;
}


/* ------------------------------------------ */
/* 
 * reads : p_2523->g_67 p_2523->g_28 p_2523->g_43.f0 p_2523->g_70 p_2523->g_98 p_2523->g_107 p_2523->g_109 p_2523->g_129 p_2523->g_130 p_2523->g_112
 * writes: p_2523->g_67 p_2523->g_70 p_2523->g_85 p_2523->g_94 p_2523->g_98 p_2523->g_107 p_2523->g_109 p_2523->g_28 p_2523->g_112 p_2523->g_127 p_2523->g_128
 */
int32_t  func_55(int32_t * p_56, int32_t  p_57, int32_t  p_58, int32_t * p_59, int32_t * p_60, struct S1 * p_2523)
{ /* block id: 14 */
    int16_t l_105 = 0x2C0FL;
    int64_t l_110 = 0x56DA29A6A910B13AL;
    int8_t *l_117[1][1][7] = {{{&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67,&p_2523->g_67}}};
    int8_t **l_118 = &l_117[0][0][1];
    int8_t *l_119 = &p_2523->g_67;
    uint16_t *l_126 = &p_2523->g_85;
    int32_t *l_132[2][9] = {{&p_2523->g_109,(void*)0,&p_2523->g_109,&p_2523->g_109,(void*)0,&p_2523->g_109,&p_2523->g_109,(void*)0,&p_2523->g_109},{&p_2523->g_109,(void*)0,&p_2523->g_109,&p_2523->g_109,(void*)0,&p_2523->g_109,&p_2523->g_109,(void*)0,&p_2523->g_109}};
    int32_t **l_133[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint8_t l_134 = 0x99L;
    int i, j, k;
    for (p_2523->g_67 = 0; (p_2523->g_67 <= 24); p_2523->g_67++)
    { /* block id: 17 */
        int32_t *l_74 = &p_2523->g_28[3];
        uint16_t l_92 = 0x507BL;
        int32_t **l_111[7][5] = {{(void*)0,(void*)0,(void*)0,&l_74,(void*)0},{(void*)0,(void*)0,(void*)0,&l_74,(void*)0},{(void*)0,(void*)0,(void*)0,&l_74,(void*)0},{(void*)0,(void*)0,(void*)0,&l_74,(void*)0},{(void*)0,(void*)0,(void*)0,&l_74,(void*)0},{(void*)0,(void*)0,(void*)0,&l_74,(void*)0},{(void*)0,(void*)0,(void*)0,&l_74,(void*)0}};
        int i, j;
        if (p_2523->g_28[5])
        { /* block id: 18 */
            p_2523->g_70 = 0L;
        }
        else
        { /* block id: 20 */
            uint64_t l_73[1][3];
            int i, j;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 3; j++)
                    l_73[i][j] = 18446744073709551610UL;
            }
            if (p_2523->g_43[3].f0)
                break;
            for (p_57 = 11; (p_57 >= (-8)); --p_57)
            { /* block id: 24 */
                int32_t **l_75 = &l_74;
                uint16_t *l_84 = &p_2523->g_85;
                uint8_t *l_93 = &p_2523->g_94;
                uint8_t *l_97 = &p_2523->g_98;
                uint8_t *l_106 = &p_2523->g_107;
                int32_t *l_108 = &p_2523->g_109;
                for (p_2523->g_70 = 4; (p_2523->g_70 >= 1); p_2523->g_70 -= 1)
                { /* block id: 27 */
                    int i;
                    l_73[0][0] &= p_2523->g_28[p_2523->g_70];
                    return p_2523->g_67;
                }
                (*l_75) = l_74;
                l_110 = ((*l_108) |= ((safe_div_func_uint64_t_u_u(((((0x69BB0CEA4F543A9BL > ((safe_rshift_func_int8_t_s_s((safe_add_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_u((*l_74), ((*l_84) = p_2523->g_28[3]))), ((*l_106) ^= (p_57 , ((+(safe_mod_func_int64_t_s_s(((((safe_add_func_uint8_t_u_u((p_2523->g_28[3] , ((safe_mul_func_uint8_t_u_u(((*l_93) = l_92), 0x7FL)) >= ((((p_57 != (safe_lshift_func_uint16_t_u_u(((++(*l_97)) && (safe_sub_func_uint32_t_u_u((safe_rshift_func_int16_t_s_s(l_105, p_57)), (*l_74)))), p_57))) || 0x3C21L) , 0UL) < (-1L)))), p_57)) | p_57) < l_105) , p_58), FAKE_DIVERGE(p_2523->global_1_offset, get_global_id(1), 10)))) == (**l_75)))))), 2)) | l_105)) , 0x3F56D1B7A171313FL) == l_73[0][0]) || 0x81FF1C73L), p_57)) || GROUP_DIVERGE(1, 1)));
                (*p_60) = p_2523->g_67;
            }
        }
        p_2523->g_112 = p_59;
    }
    (*p_2523->g_129) &= (safe_add_func_int32_t_s_s(((*p_60) ^ ((l_110 , ((safe_rshift_func_int8_t_s_u((0x401CF63C109E68FEL > p_57), 3)) | (((*l_118) = l_117[0][0][5]) != l_119))) == (p_2523->g_127 = (safe_add_func_uint8_t_u_u((((safe_rshift_func_uint8_t_u_u(((&p_60 == &p_2523->g_112) >= ((*l_126) = (safe_rshift_func_int16_t_s_u(4L, 2)))), l_110)) , 0x72739EBEL) & (*p_60)), p_2523->g_43[3].f0))))), (*p_59)));
    (*p_2523->g_112) |= (p_2523->g_130 != (void*)0);
    p_2523->g_128[0][2] = l_132[0][0];
    return l_134;
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S1 c_2524;
    struct S1* p_2523 = &c_2524;
    struct S1 c_2525 = {
        {0x17B722BAL,0x17B722BAL}, // p_2523->g_17
        {3L,3L,3L,3L,3L,3L}, // p_2523->g_28
        &p_2523->g_28[3], // p_2523->g_27
        {{3UL},{8UL},{3UL},{3UL},{8UL},{3UL},{3UL},{8UL},{3UL}}, // p_2523->g_43
        0x76L, // p_2523->g_67
        (-1L), // p_2523->g_70
        0x8B87L, // p_2523->g_85
        0xB5L, // p_2523->g_94
        0x7FL, // p_2523->g_98
        0x32L, // p_2523->g_107
        0x567EB876L, // p_2523->g_109
        &p_2523->g_28[1], // p_2523->g_112
        (-5L), // p_2523->g_127
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_2523->g_128
        &p_2523->g_109, // p_2523->g_129
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_2523->g_131
        &p_2523->g_131[0], // p_2523->g_130
        (void*)0, // p_2523->g_136
        &p_2523->g_136, // p_2523->g_135
        0xB7FEAD5EL, // p_2523->g_218
        &p_2523->g_67, // p_2523->g_225
        {0x73E2L,(-2L),0x73E2L,0x73E2L,(-2L),0x73E2L,0x73E2L,(-2L),0x73E2L,0x73E2L}, // p_2523->g_235
        &p_2523->g_235[1], // p_2523->g_234
        (-9L), // p_2523->g_258
        &p_2523->g_225, // p_2523->g_312
        {&p_2523->g_112,&p_2523->g_112,&p_2523->g_112,&p_2523->g_112,&p_2523->g_112,&p_2523->g_112}, // p_2523->g_339
        {&p_2523->g_98,&p_2523->g_98,&p_2523->g_98,&p_2523->g_98,&p_2523->g_98,&p_2523->g_98,&p_2523->g_98,&p_2523->g_98,&p_2523->g_98}, // p_2523->g_347
        1UL, // p_2523->g_384
        &p_2523->g_218, // p_2523->g_442
        &p_2523->g_442, // p_2523->g_441
        &p_2523->g_43[8], // p_2523->g_596
        {{&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596},{&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596},{&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596},{&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596},{&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596},{&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596,&p_2523->g_596}}, // p_2523->g_595
        &p_2523->g_595[0][6], // p_2523->g_597
        {{(-1L),6L,0x34E79A54B87B4682L,6L,(-1L),(-1L),6L},{(-1L),6L,0x34E79A54B87B4682L,6L,(-1L),(-1L),6L},{(-1L),6L,0x34E79A54B87B4682L,6L,(-1L),(-1L),6L},{(-1L),6L,0x34E79A54B87B4682L,6L,(-1L),(-1L),6L},{(-1L),6L,0x34E79A54B87B4682L,6L,(-1L),(-1L),6L},{(-1L),6L,0x34E79A54B87B4682L,6L,(-1L),(-1L),6L},{(-1L),6L,0x34E79A54B87B4682L,6L,(-1L),(-1L),6L},{(-1L),6L,0x34E79A54B87B4682L,6L,(-1L),(-1L),6L},{(-1L),6L,0x34E79A54B87B4682L,6L,(-1L),(-1L),6L}}, // p_2523->g_630
        1L, // p_2523->g_693
        &p_2523->g_693, // p_2523->g_692
        0xB9326AA5L, // p_2523->g_736
        &p_2523->g_736, // p_2523->g_735
        &p_2523->g_735, // p_2523->g_734
        9UL, // p_2523->g_843
        &p_2523->g_27, // p_2523->g_879
        {0x4A19L}, // p_2523->g_884
        {0x3F01L}, // p_2523->g_949
        {0x9B99L}, // p_2523->g_971
        {{{{0xD6F2L},{0xD6F2L},{65535UL},{1UL},{65528UL},{1UL}},{{0xD6F2L},{0xD6F2L},{65535UL},{1UL},{65528UL},{1UL}},{{0xD6F2L},{0xD6F2L},{65535UL},{1UL},{65528UL},{1UL}},{{0xD6F2L},{0xD6F2L},{65535UL},{1UL},{65528UL},{1UL}},{{0xD6F2L},{0xD6F2L},{65535UL},{1UL},{65528UL},{1UL}},{{0xD6F2L},{0xD6F2L},{65535UL},{1UL},{65528UL},{1UL}},{{0xD6F2L},{0xD6F2L},{65535UL},{1UL},{65528UL},{1UL}},{{0xD6F2L},{0xD6F2L},{65535UL},{1UL},{65528UL},{1UL}},{{0xD6F2L},{0xD6F2L},{65535UL},{1UL},{65528UL},{1UL}},{{0xD6F2L},{0xD6F2L},{65535UL},{1UL},{65528UL},{1UL}}}}, // p_2523->g_979
        &p_2523->g_43[3].f0, // p_2523->g_981
        &p_2523->g_981, // p_2523->g_980
        0xD424B4DB7F3B0DAAL, // p_2523->g_1032
        4L, // p_2523->g_1046
        (void*)0, // p_2523->g_1066
        {{{&p_2523->g_234,&p_2523->g_234}},{{&p_2523->g_234,&p_2523->g_234}}}, // p_2523->g_1116
        &p_2523->g_1116[1][0][0], // p_2523->g_1115
        0x5AL, // p_2523->g_1156
        0x11ACL, // p_2523->g_1168
        {{0x6D8CL}}, // p_2523->g_1191
        {65533UL}, // p_2523->g_1263
        {{0UL},{0UL},{0UL},{0UL}}, // p_2523->g_1302
        {65535UL}, // p_2523->g_1384
        {3UL}, // p_2523->g_1392
        0xDC54E429F676D666L, // p_2523->g_1423
        &p_2523->g_127, // p_2523->g_1456
        {{{&p_2523->g_1456},{&p_2523->g_1456},{&p_2523->g_1456},{&p_2523->g_1456}},{{&p_2523->g_1456},{&p_2523->g_1456},{&p_2523->g_1456},{&p_2523->g_1456}},{{&p_2523->g_1456},{&p_2523->g_1456},{&p_2523->g_1456},{&p_2523->g_1456}},{{&p_2523->g_1456},{&p_2523->g_1456},{&p_2523->g_1456},{&p_2523->g_1456}},{{&p_2523->g_1456},{&p_2523->g_1456},{&p_2523->g_1456},{&p_2523->g_1456}}}, // p_2523->g_1455
        0x4612L, // p_2523->g_1459
        &p_2523->g_312, // p_2523->g_1493
        (void*)0, // p_2523->g_1509
        {{{&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509},{&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509},{&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509},{&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509},{&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509},{&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509},{&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509},{&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509,&p_2523->g_1509}}}, // p_2523->g_1508
        &p_2523->g_1508[0][7][2], // p_2523->g_1507
        {{0xEB84L},{0xEB84L}}, // p_2523->g_1527
        1L, // p_2523->g_1591
        {0x71DAL}, // p_2523->g_1597
        &p_2523->g_692, // p_2523->g_1604
        {{{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949},{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949},{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949},{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949},{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949},{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949},{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949}},{{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949},{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949},{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949},{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949},{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949},{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949},{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949}},{{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949},{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949},{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949},{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949},{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949},{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949},{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949}},{{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949},{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949},{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949},{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949},{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949},{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949},{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949}},{{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949},{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949},{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949},{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949},{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949},{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949},{&p_2523->g_1191[0],&p_2523->g_1597,&p_2523->g_1597,(void*)0,&p_2523->g_1191[0],&p_2523->g_43[3],&p_2523->g_949}}}, // p_2523->g_1607
        &p_2523->g_1607[0][3][5], // p_2523->g_1606
        &p_2523->g_1066, // p_2523->g_1629
        {&p_2523->g_1629,&p_2523->g_1629}, // p_2523->g_1628
        {65526UL}, // p_2523->g_1676
        &p_2523->g_1032, // p_2523->g_1788
        &p_2523->g_1607[0][3][3], // p_2523->g_1821
        {7UL}, // p_2523->g_1848
        {6L,6L,6L}, // p_2523->g_1861
        &p_2523->g_949.f1, // p_2523->g_1888
        {0xB7BEL}, // p_2523->g_1896
        {65535UL}, // p_2523->g_1919
        &p_2523->g_1116[0][0][0], // p_2523->g_1944
        0x74489F78L, // p_2523->g_1955
        {0xCAL,0xCAL,0xCAL,0xCAL,0xCAL,0xCAL,0xCAL,0xCAL,0xCAL,0xCAL}, // p_2523->g_1968
        &p_2523->g_1509, // p_2523->g_2055
        {0x5ECCL}, // p_2523->g_2063
        {{{0x25A8C6FE17D3D015L},{0x25A8C6FE17D3D015L},{0x25A8C6FE17D3D015L},{0x25A8C6FE17D3D015L},{0x25A8C6FE17D3D015L}},{{0x25A8C6FE17D3D015L},{0x25A8C6FE17D3D015L},{0x25A8C6FE17D3D015L},{0x25A8C6FE17D3D015L},{0x25A8C6FE17D3D015L}},{{0x25A8C6FE17D3D015L},{0x25A8C6FE17D3D015L},{0x25A8C6FE17D3D015L},{0x25A8C6FE17D3D015L},{0x25A8C6FE17D3D015L}},{{0x25A8C6FE17D3D015L},{0x25A8C6FE17D3D015L},{0x25A8C6FE17D3D015L},{0x25A8C6FE17D3D015L},{0x25A8C6FE17D3D015L}}}, // p_2523->g_2075
        {{{6UL},{0x76EEL},{6UL},{6UL},{0x76EEL},{6UL}},{{6UL},{0x76EEL},{6UL},{6UL},{0x76EEL},{6UL}},{{6UL},{0x76EEL},{6UL},{6UL},{0x76EEL},{6UL}},{{6UL},{0x76EEL},{6UL},{6UL},{0x76EEL},{6UL}},{{6UL},{0x76EEL},{6UL},{6UL},{0x76EEL},{6UL}},{{6UL},{0x76EEL},{6UL},{6UL},{0x76EEL},{6UL}},{{6UL},{0x76EEL},{6UL},{6UL},{0x76EEL},{6UL}}}, // p_2523->g_2093
        &p_2523->g_1191[0].f2, // p_2523->g_2116
        0UL, // p_2523->g_2122
        {0UL}, // p_2523->g_2130
        {1UL}, // p_2523->g_2131
        &p_2523->g_735, // p_2523->g_2148
        &p_2523->g_735, // p_2523->g_2152
        {1UL}, // p_2523->g_2203
        &p_2523->g_2203, // p_2523->g_2202
        &p_2523->g_2202, // p_2523->g_2201
        {&p_2523->g_2201,&p_2523->g_2201,&p_2523->g_2201,&p_2523->g_2201,&p_2523->g_2201,&p_2523->g_2201,&p_2523->g_2201,&p_2523->g_2201,&p_2523->g_2201}, // p_2523->g_2200
        {{1UL},{65535UL},{1UL},{1UL},{65535UL},{1UL},{1UL},{65535UL},{1UL},{1UL}}, // p_2523->g_2303
        {{{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}}},{{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}}},{{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}}},{{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}}},{{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}}},{{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}},{{65535UL},{0xD103L},{0xD5D5L},{0UL}}}}, // p_2523->g_2304
        {{65535UL}}, // p_2523->g_2393
        0x3F71092AL, // p_2523->g_2404
        0x20F2D54EL, // p_2523->g_2475
        &p_2523->g_692, // p_2523->g_2500
        &p_2523->g_2500, // p_2523->g_2499
        &p_2523->g_2499, // p_2523->g_2498
        {1UL}, // p_2523->g_2522
        0, // p_2523->v_collective
        sequence_input[get_global_id(0)], // p_2523->global_0_offset
        sequence_input[get_global_id(1)], // p_2523->global_1_offset
        sequence_input[get_global_id(2)], // p_2523->global_2_offset
        sequence_input[get_local_id(0)], // p_2523->local_0_offset
        sequence_input[get_local_id(1)], // p_2523->local_1_offset
        sequence_input[get_local_id(2)], // p_2523->local_2_offset
        sequence_input[get_group_id(0)], // p_2523->group_0_offset
        sequence_input[get_group_id(1)], // p_2523->group_1_offset
        sequence_input[get_group_id(2)], // p_2523->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_2524 = c_2525;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2523);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_2523->g_17[i], "p_2523->g_17[i]", print_hash_value);

    }
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_2523->g_28[i], "p_2523->g_28[i]", print_hash_value);

    }
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_2523->g_43[i].f0, "p_2523->g_43[i].f0", print_hash_value);

    }
    transparent_crc(p_2523->g_67, "p_2523->g_67", print_hash_value);
    transparent_crc(p_2523->g_70, "p_2523->g_70", print_hash_value);
    transparent_crc(p_2523->g_85, "p_2523->g_85", print_hash_value);
    transparent_crc(p_2523->g_94, "p_2523->g_94", print_hash_value);
    transparent_crc(p_2523->g_98, "p_2523->g_98", print_hash_value);
    transparent_crc(p_2523->g_107, "p_2523->g_107", print_hash_value);
    transparent_crc(p_2523->g_109, "p_2523->g_109", print_hash_value);
    transparent_crc(p_2523->g_127, "p_2523->g_127", print_hash_value);
    transparent_crc(p_2523->g_218, "p_2523->g_218", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2523->g_235[i], "p_2523->g_235[i]", print_hash_value);

    }
    transparent_crc(p_2523->g_258, "p_2523->g_258", print_hash_value);
    transparent_crc(p_2523->g_384, "p_2523->g_384", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_2523->g_630[i][j], "p_2523->g_630[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2523->g_693, "p_2523->g_693", print_hash_value);
    transparent_crc(p_2523->g_736, "p_2523->g_736", print_hash_value);
    transparent_crc(p_2523->g_843, "p_2523->g_843", print_hash_value);
    transparent_crc(p_2523->g_884.f0, "p_2523->g_884.f0", print_hash_value);
    transparent_crc(p_2523->g_949.f0, "p_2523->g_949.f0", print_hash_value);
    transparent_crc(p_2523->g_971.f0, "p_2523->g_971.f0", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_2523->g_979[i][j][k].f0, "p_2523->g_979[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_2523->g_1032, "p_2523->g_1032", print_hash_value);
    transparent_crc(p_2523->g_1046, "p_2523->g_1046", print_hash_value);
    transparent_crc(p_2523->g_1156, "p_2523->g_1156", print_hash_value);
    transparent_crc(p_2523->g_1168, "p_2523->g_1168", print_hash_value);
    transparent_crc(p_2523->g_1263.f0, "p_2523->g_1263.f0", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2523->g_1302[i].f0, "p_2523->g_1302[i].f0", print_hash_value);

    }
    transparent_crc(p_2523->g_1392.f0, "p_2523->g_1392.f0", print_hash_value);
    transparent_crc(p_2523->g_1423, "p_2523->g_1423", print_hash_value);
    transparent_crc(p_2523->g_1459, "p_2523->g_1459", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_2523->g_1527[i][j], "p_2523->g_1527[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2523->g_1591, "p_2523->g_1591", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_2523->g_1861[i], "p_2523->g_1861[i]", print_hash_value);

    }
    transparent_crc(p_2523->g_1896.f0, "p_2523->g_1896.f0", print_hash_value);
    transparent_crc(p_2523->g_1919.f0, "p_2523->g_1919.f0", print_hash_value);
    transparent_crc(p_2523->g_1955, "p_2523->g_1955", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2523->g_1968[i], "p_2523->g_1968[i]", print_hash_value);

    }
    transparent_crc(p_2523->g_2063.f0, "p_2523->g_2063.f0", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_2523->g_2075[i][j][k], "p_2523->g_2075[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_2523->g_2093[i][j].f0, "p_2523->g_2093[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_2523->g_2122, "p_2523->g_2122", print_hash_value);
    transparent_crc(p_2523->g_2130.f0, "p_2523->g_2130.f0", print_hash_value);
    transparent_crc(p_2523->g_2203.f0, "p_2523->g_2203.f0", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2523->g_2303[i].f0, "p_2523->g_2303[i].f0", print_hash_value);

    }
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_2523->g_2304[i][j][k].f0, "p_2523->g_2304[i][j][k].f0", print_hash_value);

            }
        }
    }
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_2523->g_2393[i].f0, "p_2523->g_2393[i].f0", print_hash_value);

    }
    transparent_crc(p_2523->g_2404, "p_2523->g_2404", print_hash_value);
    transparent_crc(p_2523->g_2475, "p_2523->g_2475", print_hash_value);
    transparent_crc(p_2523->g_2522.f0, "p_2523->g_2522.f0", print_hash_value);
    transparent_crc(p_2523->v_collective, "p_2523->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
