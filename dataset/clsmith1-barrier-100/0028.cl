// ---fake_divergence ---inter_thread_comm -g 81,95,1 -l 3,5,1
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

__constant uint32_t permutations[10][15] = {
{7,6,8,10,11,12,0,14,1,3,2,5,9,4,13}, // permutation 0
{9,2,14,3,5,6,12,10,13,7,4,11,8,1,0}, // permutation 1
{6,0,10,8,14,4,12,9,13,1,5,2,11,7,3}, // permutation 2
{8,0,5,10,6,3,2,14,11,9,13,7,4,12,1}, // permutation 3
{11,12,0,2,13,10,6,5,1,7,14,4,3,9,8}, // permutation 4
{1,7,3,0,13,12,5,4,14,2,8,11,9,10,6}, // permutation 5
{14,11,5,4,7,10,13,2,6,1,8,0,12,3,9}, // permutation 6
{1,7,3,0,2,13,5,10,4,12,6,11,9,8,14}, // permutation 7
{6,10,4,1,12,13,14,8,0,3,7,11,2,9,5}, // permutation 8
{13,0,14,3,6,4,11,12,9,8,1,5,10,2,7} // permutation 9
};

// Seed: 28

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   volatile int8_t * f0;
   uint32_t  f1;
};

union U1 {
   uint16_t  f0;
   int64_t  f1;
   uint32_t  f2;
   volatile uint32_t  f3;
   int32_t  f4;
};

struct S2 {
    uint64_t g_64;
    int8_t g_66;
    int32_t g_68;
    int16_t g_74[2][8][9];
    volatile int32_t g_75;
    int16_t g_76;
    int32_t g_77;
    int32_t g_78[5];
    uint16_t g_88;
    int64_t g_90;
    volatile union U1 g_117[3];
    int64_t g_136;
    int8_t g_153;
    int64_t *g_159;
    uint64_t g_190;
    uint8_t g_203[4];
    volatile union U0 g_232;
    volatile union U0 *g_231;
    uint64_t g_273;
    uint8_t *g_289;
    uint8_t **g_288;
    int32_t g_304[7][9][2];
    int32_t g_306;
    volatile union U1 g_327[3][3];
    volatile int16_t g_333;
    volatile int16_t g_334[9];
    volatile int16_t g_335;
    volatile int16_t *g_332[8];
    volatile int16_t * volatile *g_331;
    int32_t *g_359;
    int8_t *g_390;
    uint64_t **g_391;
    union U0 g_407;
    int32_t *g_458[5];
    int32_t ** volatile g_457[8];
    int32_t ** volatile g_459;
    union U1 g_466;
    volatile uint8_t ***g_487;
    volatile uint8_t *** volatile *g_486;
    int32_t ** volatile g_598;
    volatile union U1 g_601;
    uint16_t g_634;
    int32_t ** volatile g_668;
    volatile uint32_t g_674[7][7];
    volatile union U1 g_689;
    union U0 ** volatile g_690;
    union U0 *g_692;
    union U0 ** volatile g_691[6];
    uint8_t g_706;
    uint16_t * volatile g_722;
    uint16_t * volatile *g_721;
    int32_t ** volatile g_732;
    int8_t g_741[2][10];
    uint32_t g_757[1];
    uint8_t g_766;
    int32_t ** volatile g_779;
    uint32_t g_787[2];
    uint32_t g_797;
    uint32_t *g_796[1][6];
    uint32_t g_871[2];
    union U1 g_878[3];
    int32_t ** volatile g_894;
    volatile uint16_t g_910;
    union U1 g_983;
    volatile int32_t g_1003;
    int8_t g_1062;
    volatile int32_t g_1128;
    volatile int16_t g_1199[8][10];
    union U1 *g_1303;
    union U1 **g_1302;
    union U1 *** volatile g_1301[1][10][4];
    union U1 *** volatile g_1305;
    volatile int64_t *g_1344[4];
    volatile int64_t ** volatile g_1343;
    int32_t * volatile g_1354;
    uint32_t *** volatile g_1380;
    uint32_t g_1428;
    int32_t ***g_1497;
    volatile union U0 * volatile *g_1551;
    volatile union U0 * volatile **g_1550;
    int32_t ** volatile g_1559;
    int8_t g_1562;
    uint16_t *g_1579;
    uint16_t **g_1578;
    uint64_t g_1588;
    union U0 ** volatile g_1611[9][3];
    union U0 ** volatile g_1612;
    union U1 g_1644;
    int32_t * volatile g_1653;
    volatile uint64_t g_1690;
    volatile uint64_t *g_1689[9][8];
    uint64_t *g_1691[4][10][5];
    int32_t * volatile g_1731;
    volatile uint16_t g_1741[7][4][5];
    int32_t * volatile g_1840[2];
    int32_t *g_1841;
    int32_t * volatile *g_1839[7][1][2];
    uint16_t g_1980[1][3][7];
    int64_t * volatile *g_2073;
    int64_t * volatile **g_2072;
    int32_t g_2097;
    uint64_t g_2186;
    volatile union U1 g_2188;
    int32_t * volatile g_2199;
    int32_t * volatile g_2217;
    uint32_t g_2218[5][7];
    int32_t g_2220[8][7];
    int32_t g_2222;
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
int32_t  func_1(struct S2 * p_2223);
int32_t  func_2(uint64_t  p_3, struct S2 * p_2223);
int32_t  func_4(int8_t * p_5, int8_t * p_6, uint64_t  p_7, int8_t * p_8, struct S2 * p_2223);
int8_t * func_9(uint8_t  p_10, int8_t * p_11, int8_t * p_12, int64_t  p_13, struct S2 * p_2223);
int64_t  func_16(int32_t  p_17, int32_t  p_18, struct S2 * p_2223);
int16_t  func_27(int8_t * p_28, int8_t * p_29, int8_t * p_30, struct S2 * p_2223);
int8_t * func_31(int32_t  p_32, int16_t  p_33, int64_t  p_34, int8_t * p_35, int16_t  p_36, struct S2 * p_2223);
uint8_t  func_42(int32_t  p_43, uint32_t  p_44, int32_t  p_45, uint64_t  p_46, struct S2 * p_2223);
uint32_t  func_49(uint16_t  p_50, union U0  p_51, uint8_t  p_52, uint32_t  p_53, uint32_t  p_54, struct S2 * p_2223);
int16_t  func_59(int8_t  p_60, int8_t * p_61, struct S2 * p_2223);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2223->l_comm_values p_2223->g_comm_values p_2223->g_68 p_2223->g_64 p_2223->g_66 p_2223->g_77 p_2223->g_88 p_2223->g_74 p_2223->g_76 p_2223->g_117 p_2223->g_78 p_2223->g_136 p_2223->g_90 p_2223->g_75 p_2223->g_117.f0 p_2223->g_159 p_2223->g_190 p_2223->g_203 p_2223->g_231 p_2223->g_153 p_2223->g_273 p_2223->g_288 p_2223->g_304 p_2223->g_327 p_2223->g_331 p_2223->g_289 p_2223->g_306 p_2223->g_334 p_2223->g_391 p_2223->g_232 p_2223->g_390 p_2223->g_459 p_2223->g_466 p_2223->g_332 p_2223->g_486 p_2223->g_458 p_2223->g_466.f0 p_2223->g_598 p_2223->g_601 p_2223->g_634 p_2223->g_674 p_2223->g_689 p_2223->g_706 p_2223->g_741 p_2223->g_779 p_2223->g_787 p_2223->g_721 p_2223->g_722 p_2223->g_797 p_2223->g_871 p_2223->g_878 p_2223->g_757 p_2223->g_894 p_2223->g_910 p_2223->g_466.f2 p_2223->g_983 p_2223->g_407 p_2223->g_1003 p_2223->g_601.f0 p_2223->g_1062 p_2223->g_983.f0 p_2223->g_983.f1 p_2223->g_1199 p_2223->g_487 p_2223->g_1302 p_2223->g_1303 p_2223->g_766 p_2223->g_1428 p_2223->g_878.f0 p_2223->g_691 p_2223->g_1497 p_2223->g_1550 p_2223->g_1559 p_2223->g_1562 p_2223->g_466.f1 p_2223->g_1551 p_2223->g_1578 p_2223->g_1588 p_2223->g_1579 p_2223->g_1644 p_2223->g_1653 p_2223->g_1689 p_2223->g_1741 p_2223->g_1839 p_2223->g_1980 p_2223->g_2072 p_2223->g_2097 p_2223->g_2188 p_2223->g_2199 p_2223->g_2217 p_2223->g_2218 p_2223->g_2220 p_2223->g_2222
 * writes: p_2223->g_64 p_2223->g_88 p_2223->g_90 p_2223->g_68 p_2223->g_78 p_2223->g_76 p_2223->g_136 p_2223->g_66 p_2223->g_153 p_2223->g_159 p_2223->g_203 p_2223->g_74 p_2223->g_231 p_2223->g_273 p_2223->g_304 p_2223->g_306 p_2223->g_359 p_2223->g_390 p_2223->g_407 p_2223->g_190 p_2223->g_458 p_2223->g_77 p_2223->g_634 p_2223->g_466.f0 p_2223->g_674 p_2223->g_692 p_2223->g_706 p_2223->g_466.f4 p_2223->g_766 p_2223->g_466.f2 p_2223->g_787 p_2223->g_796 p_2223->g_871 p_2223->g_741 p_2223->g_797 p_2223->g_878.f0 p_2223->g_983.f0 p_2223->g_983.f1 p_2223->g_721 p_2223->g_1062 p_2223->g_1343 p_2223->g_1303 p_2223->g_1562 p_2223->g_466.f1 p_2223->g_1588 p_2223->g_1691 p_2223->l_comm_values p_2223->g_1741 p_2223->g_comm_values p_2223->g_1578 p_2223->g_1428 p_2223->g_1644.f0 p_2223->g_1579 p_2223->g_1980 p_2223->g_1644.f4 p_2223->g_2097 p_2223->g_289 p_2223->g_2218 p_2223->g_2220 p_2223->g_2222
 */
int32_t  func_1(struct S2 * p_2223)
{ /* block id: 4 */
    uint16_t l_39[9] = {65535UL,65535UL,65535UL,65535UL,65535UL,65535UL,65535UL,65535UL,65535UL};
    uint16_t *l_55 = (void*)0;
    int32_t l_56 = 9L;
    uint64_t *l_62 = (void*)0;
    uint64_t *l_63 = &p_2223->g_64;
    int8_t *l_65 = &p_2223->g_66;
    int16_t *l_736 = (void*)0;
    int16_t *l_737 = &p_2223->g_76;
    union U0 l_738[6] = {{0},{0},{0},{0},{0},{0}};
    int64_t *l_768[1][6];
    int32_t l_769 = 8L;
    int8_t *l_1561 = &p_2223->g_1562;
    uint32_t l_1564 = 0UL;
    uint64_t *l_2185[7][10][3] = {{{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186}},{{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186}},{{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186}},{{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186}},{{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186}},{{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186}},{{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186},{(void*)0,&p_2223->g_2186,&p_2223->g_2186}}};
    uint64_t l_2187 = 0x9E7B83F1A1F52BABL;
    int32_t *l_2219 = &p_2223->g_2220[0][5];
    int32_t *l_2221 = &p_2223->g_2222;
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 6; j++)
            l_768[i][j] = &p_2223->g_90;
    }
    (*l_2221) |= ((*l_2219) |= func_2((l_2187 ^= ((func_4(func_9(((safe_div_func_int64_t_s_s(func_16(p_2223->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2223->tid, 15))], (((safe_mod_func_int8_t_s_s(((*l_1561) ^= (safe_add_func_int16_t_s_s((safe_mod_func_uint32_t_u_u(p_2223->g_comm_values[p_2223->tid], p_2223->g_comm_values[p_2223->tid])), ((safe_lshift_func_int16_t_s_u(func_27(func_31((((l_769 = (safe_mul_func_uint8_t_u_u(l_39[5], ((safe_mod_func_uint64_t_u_u((0x1AL != func_42((safe_add_func_uint32_t_u_u(func_49((l_56 = p_2223->g_comm_values[p_2223->tid]), (((0x796AL >= (safe_sub_func_int16_t_s_s(((*l_737) = func_59((l_39[5] || ((*l_63) = p_2223->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2223->tid, 15))])), l_65, p_2223)), l_39[3]))) ^ p_2223->g_comm_values[p_2223->tid]) , l_738[1]), l_39[5], p_2223->g_comm_values[p_2223->tid], p_2223->g_comm_values[p_2223->tid], p_2223), p_2223->g_741[1][9])), p_2223->g_comm_values[p_2223->tid], p_2223->g_741[1][9], l_39[5], p_2223)), p_2223->g_741[1][9])) , l_39[5])))) && 0x07840F2CAC11A695L) , l_769), l_39[5], l_39[5], l_65, p_2223->g_741[0][4], p_2223), l_65, l_65, p_2223), 13)) != 0x34CDL)))), 0x48L)) != p_2223->g_757[0]) , 0x029CECD4L), p_2223), l_39[6])) , l_56), l_65, l_1561, l_1564, p_2223), p_2223->g_289, l_1564, l_1561, p_2223) < 2L) , l_56)), p_2223));
    return (*l_2221);
}


/* ------------------------------------------ */
/* 
 * reads : p_2223->g_2188 p_2223->g_1550 p_2223->g_1551 p_2223->g_231 p_2223->g_232 p_2223->g_1578 p_2223->g_1579 p_2223->g_878.f0 p_2223->g_2199 p_2223->g_288 p_2223->g_2217 p_2223->g_2218
 * writes: p_2223->g_796 p_2223->g_1588 p_2223->g_2097 p_2223->g_1691 p_2223->g_878.f0 p_2223->g_203 p_2223->g_289 p_2223->g_68 p_2223->g_2218
 */
int32_t  func_2(uint64_t  p_3, struct S2 * p_2223)
{ /* block id: 1059 */
    uint32_t *l_2189[8];
    uint32_t **l_2190 = &p_2223->g_796[0][3];
    uint64_t *l_2191 = &p_2223->g_1588;
    union U0 l_2194 = {0};
    union U0 **l_2195 = (void*)0;
    union U0 **l_2196[6][1][7] = {{{(void*)0,&p_2223->g_692,(void*)0,(void*)0,&p_2223->g_692,(void*)0,(void*)0}},{{(void*)0,&p_2223->g_692,(void*)0,(void*)0,&p_2223->g_692,(void*)0,(void*)0}},{{(void*)0,&p_2223->g_692,(void*)0,(void*)0,&p_2223->g_692,(void*)0,(void*)0}},{{(void*)0,&p_2223->g_692,(void*)0,(void*)0,&p_2223->g_692,(void*)0,(void*)0}},{{(void*)0,&p_2223->g_692,(void*)0,(void*)0,&p_2223->g_692,(void*)0,(void*)0}},{{(void*)0,&p_2223->g_692,(void*)0,(void*)0,&p_2223->g_692,(void*)0,(void*)0}}};
    union U0 *l_2197 = &p_2223->g_407;
    int32_t l_2198 = 0x697D85CEL;
    uint64_t **l_2202 = &p_2223->g_1691[2][9][3];
    uint64_t **l_2203 = &l_2191;
    uint64_t *l_2205 = &p_2223->g_1588;
    uint64_t **l_2204 = &l_2205;
    uint64_t *l_2207 = (void*)0;
    uint64_t **l_2206 = &l_2207;
    uint8_t *l_2214 = (void*)0;
    uint8_t *l_2215 = &p_2223->g_203[0];
    int32_t l_2216 = 1L;
    int i, j, k;
    for (i = 0; i < 8; i++)
        l_2189[i] = &p_2223->g_871[1];
    (*p_2223->g_2199) = (~(p_2223->g_2188 , ((((((((*l_2190) = (p_3 , l_2189[5])) == (((*l_2191) = p_3) , l_2189[5])) , (void*)0) == (l_2197 = ((2L || ((((safe_rshift_func_int16_t_s_u(((***p_2223->g_1550) , (p_3 != p_3)), (**p_2223->g_1578))) <= p_3) , l_2194) , p_3)) , &l_2194))) >= (**p_2223->g_1578)) || l_2198) ^ GROUP_DIVERGE(1, 1))));
    (*p_2223->g_2199) = ((((**p_2223->g_1578) &= (safe_rshift_func_int8_t_s_s((((*l_2202) = &p_2223->g_1588) != ((*l_2206) = ((*l_2204) = ((*l_2203) = l_2191)))), 5))) ^ (0x398FL ^ ((-1L) == ((((l_2198 || (+(safe_div_func_int8_t_s_s((safe_add_func_int64_t_s_s((safe_mul_func_int16_t_s_s((((p_3 & ((!(l_2198 ^= p_3)) , ((*l_2215) = FAKE_DIVERGE(p_2223->group_1_offset, get_group_id(1), 10)))) ^ 0xC97FACF8L) , (&p_2223->g_721 == (void*)0)), l_2216)), 18446744073709551615UL)), l_2216)))) == p_3) ^ l_2216) ^ l_2216)))) , l_2216);
    (*p_2223->g_2217) = (((*p_2223->g_288) = l_2215) == (void*)0);
    p_2223->g_2218[3][4] &= 0x2598A385L;
    return p_3;
}


/* ------------------------------------------ */
/* 
 * reads : p_2223->g_466.f2 p_2223->g_871 p_2223->g_1653 p_2223->g_78 p_2223->g_1562 p_2223->g_1550 p_2223->g_1551 p_2223->g_1578 p_2223->g_1579 p_2223->g_878.f0 p_2223->g_722 p_2223->g_88 p_2223->g_66 p_2223->g_741 p_2223->g_136 p_2223->g_190 p_2223->g_90 p_2223->g_1980 p_2223->g_231 p_2223->g_331 p_2223->g_332 p_2223->g_64 p_2223->g_1428 p_2223->g_2072 p_2223->g_1559 p_2223->g_1062 p_2223->g_2097 p_2223->g_797 p_2223->g_1199 p_2223->g_766 p_2223->g_983.f0 p_2223->g_598
 * writes: p_2223->g_466.f2 p_2223->g_1588 p_2223->g_983.f0 p_2223->g_1578 p_2223->g_136 p_2223->g_706 p_2223->g_1428 p_2223->g_1644.f0 p_2223->g_1562 p_2223->g_66 p_2223->g_741 p_2223->g_878.f0 p_2223->g_273 p_2223->g_203 p_2223->g_1579 p_2223->g_1980 p_2223->g_231 p_2223->g_77 p_2223->g_153 p_2223->g_64 p_2223->g_1644.f4 p_2223->g_78 p_2223->g_90 p_2223->g_190 p_2223->g_458 p_2223->g_2097 p_2223->g_797 p_2223->g_766
 */
int32_t  func_4(int8_t * p_5, int8_t * p_6, uint64_t  p_7, int8_t * p_8, struct S2 * p_2223)
{ /* block id: 879 */
    int32_t *l_1850 = (void*)0;
    uint16_t **l_1865 = &p_2223->g_1579;
    int32_t l_1871 = 0x031F6A07L;
    int8_t l_1882 = 0x0BL;
    int32_t l_1883 = 0x4FCE6655L;
    int32_t l_1894[6];
    uint32_t l_1895[2];
    uint32_t l_1902 = 0x089F5D38L;
    int64_t *l_1945 = &p_2223->g_90;
    int64_t **l_1944 = &l_1945;
    int64_t ***l_1943[1][3];
    uint8_t ****l_1961 = (void*)0;
    uint32_t l_2127 = 4294967295UL;
    int i, j;
    for (i = 0; i < 6; i++)
        l_1894[i] = 0x0404A7DAL;
    for (i = 0; i < 2; i++)
        l_1895[i] = 0x9FC9AC64L;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
            l_1943[i][j] = &l_1944;
    }
    for (p_2223->g_466.f2 = 0; (p_2223->g_466.f2 <= 2); ++p_2223->g_466.f2)
    { /* block id: 882 */
        int32_t **l_1849[3];
        int32_t *l_1864 = &p_2223->g_304[2][2][1];
        uint8_t l_1922 = 0x12L;
        uint8_t ***l_1947 = &p_2223->g_288;
        uint8_t ****l_1946 = &l_1947;
        uint16_t l_1964 = 0x35E0L;
        int16_t *l_2004 = &p_2223->g_76;
        int i;
        for (i = 0; i < 3; i++)
            l_1849[i] = (void*)0;
        l_1850 = (void*)0;
        for (p_2223->g_1588 = 6; (p_2223->g_1588 >= 22); p_2223->g_1588++)
        { /* block id: 886 */
            int32_t l_1855 = (-10L);
            int32_t l_1870 = (-5L);
            int32_t l_1892 = 0L;
            int64_t *l_1898[9];
            int i;
            for (i = 0; i < 9; i++)
                l_1898[i] = (void*)0;
            for (p_2223->g_983.f0 = 0; (p_2223->g_983.f0 < 45); p_2223->g_983.f0 = safe_add_func_int8_t_s_s(p_2223->g_983.f0, 3))
            { /* block id: 889 */
                if (l_1855)
                    break;
            }
            l_1871 |= (l_1870 = (safe_mod_func_int16_t_s_s((p_7 || FAKE_DIVERGE(p_2223->global_0_offset, get_global_id(0), 10)), (safe_lshift_func_int16_t_s_u((((~p_2223->g_871[1]) & (safe_sub_func_int16_t_s_s(((safe_div_func_uint64_t_u_u(((((&p_2223->g_304[3][4][1] != l_1864) <= (((((p_2223->g_1578 = &p_2223->g_1579) != l_1865) & ((((safe_div_func_uint32_t_u_u((l_1864 != (void*)0), (safe_sub_func_uint16_t_u_u(((0x9BE188699DED5798L > 0x042F237CF1951BC1L) == p_7), l_1855)))) , 0UL) < 0xCDL) ^ 5L)) & p_7) != p_7)) , l_1850) == (void*)0), GROUP_DIVERGE(1, 1))) < (-8L)), p_7))) && p_7), 1)))));
            for (p_2223->g_136 = 0; (p_2223->g_136 <= 12); p_2223->g_136 = safe_add_func_uint16_t_u_u(p_2223->g_136, 4))
            { /* block id: 897 */
                union U0 **l_1878 = &p_2223->g_692;
                int32_t l_1885 = 4L;
                int32_t l_1886 = 1L;
                int32_t l_1887 = 0x137FA332L;
                int32_t l_1889[1][7];
                int i, j;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 7; j++)
                        l_1889[i][j] = 0x713CD643L;
                }
                for (l_1870 = 0; (l_1870 >= 5); l_1870 = safe_add_func_int32_t_s_s(l_1870, 4))
                { /* block id: 900 */
                    if (p_7)
                        break;
                }
                l_1870 ^= 0x6C44D157L;
                for (p_2223->g_706 = 22; (p_2223->g_706 != 37); p_2223->g_706 = safe_add_func_int32_t_s_s(p_2223->g_706, 1))
                { /* block id: 906 */
                    int32_t *l_1879 = &p_2223->g_68;
                    int32_t l_1880[3];
                    int32_t l_1890 = (-4L);
                    int i;
                    for (i = 0; i < 3; i++)
                        l_1880[i] = 0x61AD16B6L;
                    if (((void*)0 == l_1878))
                    { /* block id: 907 */
                        l_1879 = (p_7 , &l_1870);
                    }
                    else
                    { /* block id: 909 */
                        int32_t l_1881 = (-1L);
                        int32_t l_1884 = 0x672BE674L;
                        int32_t l_1888 = 0x3C53B84BL;
                        int32_t l_1891 = 0x25432190L;
                        int32_t l_1893[10][6][1] = {{{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL}},{{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL}},{{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL}},{{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL}},{{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL}},{{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL}},{{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL}},{{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL}},{{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL}},{{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL},{0x2E98E73BL}}};
                        int i, j, k;
                        l_1895[0]++;
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        p_2223->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 15)), permutations[(safe_mod_func_uint32_t_u_u((l_1898[4] != &p_2223->g_136), 10))][(safe_mod_func_uint32_t_u_u(p_2223->tid, 15))]));
                        return p_7;
                    }
                    for (p_2223->g_1428 = 0; (p_2223->g_1428 >= 51); p_2223->g_1428 = safe_add_func_int64_t_s_s(p_2223->g_1428, 3))
                    { /* block id: 918 */
                        int16_t l_1901 = 0L;
                        l_1850 = &l_1889[0][1];
                        if (l_1886)
                            continue;
                        (*l_1850) ^= (0x5AL | l_1901);
                        l_1879 = &l_1880[2];
                    }
                }
                return (*p_2223->g_1653);
            }
        }
        l_1902 |= p_7;
        for (p_2223->g_1644.f0 = 0; (p_2223->g_1644.f0 <= 7); p_2223->g_1644.f0 += 1)
        { /* block id: 931 */
            uint64_t l_1903 = 0xE9CD0021C6BA3142L;
            int8_t l_1929 = 0x72L;
            int32_t *l_1965 = (void*)0;
            uint8_t l_1995[6];
            int64_t l_2000 = 0x430F850CD0064E22L;
            int32_t l_2010 = 0x790E8648L;
            int i;
            for (i = 0; i < 6; i++)
                l_1995[i] = 1UL;
            if (p_7)
            { /* block id: 932 */
                uint8_t l_1904 = 0UL;
                union U0 l_1905 = {0};
                uint64_t l_1912 = 0x25587A0E9C53F1CEL;
                uint16_t *l_1913[9] = {&p_2223->g_878[2].f0,&p_2223->g_878[2].f0,&p_2223->g_878[2].f0,&p_2223->g_878[2].f0,&p_2223->g_878[2].f0,&p_2223->g_878[2].f0,&p_2223->g_878[2].f0,&p_2223->g_878[2].f0,&p_2223->g_878[2].f0};
                int8_t l_1928 = 0x3CL;
                int32_t *l_1966 = (void*)0;
                int i;
                l_1903 = p_7;
                if ((((*p_8) ^= l_1904) == ((l_1905 , (safe_mul_func_int16_t_s_s((((safe_mul_func_uint16_t_u_u((p_7 != (((safe_div_func_uint64_t_u_u(((0x30L ^ ((*p_5) = ((void*)0 != &p_2223->g_757[0]))) != (((*p_2223->g_1550) == (void*)0) || (((**p_2223->g_1578) , 0x3F52F175L) | l_1912))), 0x78F210E221A35E10L)) == p_7) >= (-1L))), p_7)) | p_7) && p_7), (*p_2223->g_1579)))) | p_7)))
                { /* block id: 936 */
                    union U0 l_1927 = {0};
                    int32_t l_1930 = 0x54A67FBFL;
                    int64_t *l_1941[3];
                    int64_t **l_1940 = &l_1941[2];
                    int64_t ***l_1939 = &l_1940;
                    int64_t ****l_1942 = &l_1939;
                    uint8_t *****l_1948 = &l_1946;
                    uint64_t *l_1951[6][9] = {{(void*)0,&l_1903,(void*)0,(void*)0,&p_2223->g_190,(void*)0,(void*)0,&p_2223->g_190,(void*)0},{(void*)0,&l_1903,(void*)0,(void*)0,&p_2223->g_190,(void*)0,(void*)0,&p_2223->g_190,(void*)0},{(void*)0,&l_1903,(void*)0,(void*)0,&p_2223->g_190,(void*)0,(void*)0,&p_2223->g_190,(void*)0},{(void*)0,&l_1903,(void*)0,(void*)0,&p_2223->g_190,(void*)0,(void*)0,&p_2223->g_190,(void*)0},{(void*)0,&l_1903,(void*)0,(void*)0,&p_2223->g_190,(void*)0,(void*)0,&p_2223->g_190,(void*)0},{(void*)0,&l_1903,(void*)0,(void*)0,&p_2223->g_190,(void*)0,(void*)0,&p_2223->g_190,(void*)0}};
                    uint8_t *l_1960 = &p_2223->g_203[1];
                    int8_t l_1962 = 0x4BL;
                    uint8_t l_1963 = 1UL;
                    int i, j;
                    for (i = 0; i < 3; i++)
                        l_1941[i] = (void*)0;
                    l_1930 ^= ((((((((~(((FAKE_DIVERGE(p_2223->local_1_offset, get_local_id(1), 10) , (*p_2223->g_1578)) == (l_1913[5] = (*p_2223->g_1578))) > p_7)) >= 2UL) & (safe_div_func_int64_t_s_s((safe_div_func_uint16_t_u_u((*p_2223->g_722), l_1904)), 0x5C104313C53CAC10L))) , (safe_div_func_uint16_t_u_u(((safe_lshift_func_uint16_t_u_s(l_1922, 11)) , (safe_rshift_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u((((l_1927 , 0UL) == 1L) != l_1903), (*p_5))), 1))), FAKE_DIVERGE(p_2223->group_1_offset, get_group_id(1), 10)))) <= l_1928) || l_1929) >= p_2223->g_136) == 0L);
                    l_1930 = (safe_sub_func_uint8_t_u_u(((((safe_mul_func_int16_t_s_s((safe_mod_func_int64_t_s_s(((((((safe_sub_func_int8_t_s_s((((*p_2223->g_1579) ^= ((&p_2223->g_1343 == (l_1943[0][1] = ((*l_1942) = l_1939))) != 0x6021L)) | (((((*l_1948) = l_1946) != (((*l_1960) = (safe_lshift_func_uint8_t_u_s((((++p_7) & (p_2223->g_273 = (safe_lshift_func_int8_t_s_s((l_1928 ^ (l_1912 & l_1930)), 0)))) == ((safe_mul_func_int8_t_s_s((l_1930 & (safe_rshift_func_uint16_t_u_u(0x214FL, 1))), l_1930)) != l_1912)), 3))) , l_1961)) < l_1962) & l_1903)), l_1904)) > 0x6A0A6363L) , 0UL) <= GROUP_DIVERGE(0, 1)) <= l_1963) <= 0x0ABBAD9AL), l_1964)), l_1903)) > 4294967292UL) ^ l_1912) ^ l_1904), (*p_5)));
                    l_1966 = l_1965;
                }
                else
                { /* block id: 948 */
                    uint32_t *l_1975[4][10][6] = {{{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0}},{{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0}},{{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0}},{{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&l_1902,&l_1902,&p_2223->g_466.f2,&p_2223->g_757[0],&p_2223->g_757[0],(void*)0}}};
                    int32_t l_1976 = 0x09BEBA9CL;
                    int32_t l_1979 = 0x497B5A53L;
                    int i, j, k;
                    p_2223->g_1980[0][0][4] &= ((safe_div_func_int32_t_s_s((safe_sub_func_uint64_t_u_u(((((*l_1865) = (*l_1865)) == (void*)0) >= ((p_2223->g_190 & p_7) ^ ((safe_rshift_func_uint8_t_u_u(p_7, GROUP_DIVERGE(1, 1))) && (+(safe_div_func_int8_t_s_s(((((l_1976 = p_7) , ((safe_add_func_int8_t_s_s((p_7 || (p_7 , (1L >= p_7))), 0x1FL)) || l_1976)) < FAKE_DIVERGE(p_2223->global_2_offset, get_global_id(2), 10)) & p_2223->g_90), p_7)))))), l_1979)), p_7)) != (*p_5));
                }
                (*p_2223->g_1551) = ((safe_unary_minus_func_uint8_t_u(p_7)) , (*p_2223->g_1551));
            }
            else
            { /* block id: 954 */
                int32_t l_1988 = 0x1F74332AL;
                uint32_t *l_1993[10] = {&p_2223->g_407.f1,&p_2223->g_407.f1,&p_2223->g_407.f1,&p_2223->g_407.f1,&p_2223->g_407.f1,&p_2223->g_407.f1,&p_2223->g_407.f1,&p_2223->g_407.f1,&p_2223->g_407.f1,&p_2223->g_407.f1};
                int32_t l_1994 = (-1L);
                int8_t *l_2001[1][6] = {{&l_1882,&l_1882,&l_1882,&l_1882,&l_1882,&l_1882}};
                int32_t l_2005 = (-9L);
                int32_t *l_2006 = (void*)0;
                int32_t *l_2007 = &p_2223->g_77;
                uint16_t l_2008 = 0x5463L;
                int32_t l_2009 = 0x7DD68876L;
                int i, j;
                l_2010 = (l_2009 ^= (&p_2223->g_390 == ((((safe_mul_func_uint16_t_u_u(65535UL, (safe_lshift_func_uint16_t_u_s(((safe_lshift_func_uint8_t_u_s((((*l_2007) = (l_1988 != (safe_mod_func_uint64_t_u_u((safe_mod_func_int8_t_s_s(((*p_8) = ((l_1995[0]++) <= (safe_mul_func_int8_t_s_s((p_7 , 0x52L), 0x4FL)))), (l_1994 = ((*p_5) = l_2000)))), (l_2005 = (~((((((((((safe_rshift_func_int16_t_s_u(0L, 0)) & 255UL) , (*p_2223->g_331)) != l_2004) | p_7) , (void*)0) == (*p_2223->g_331)) , p_7) , l_1988) & l_1894[4]))))))) , l_2008), 5)) , p_7), l_2008)))) > (*p_2223->g_1579)) > l_1988) , &p_6)));
                l_2005 = (l_2010 = p_7);
                for (p_2223->g_153 = 1; (p_2223->g_153 <= 5); p_2223->g_153 += 1)
                { /* block id: 967 */
                    int i;
                    l_1965 = &l_1894[p_2223->g_153];
                }
                if (p_7)
                    continue;
            }
        }
    }
    for (p_2223->g_64 = (-12); (p_2223->g_64 > 34); p_2223->g_64++)
    { /* block id: 976 */
        int32_t l_2059 = (-9L);
        uint16_t **l_2064 = &p_2223->g_1579;
        int32_t l_2074 = 3L;
        int32_t l_2089 = 0L;
        int32_t l_2092 = 0x26180E03L;
        int32_t l_2094[4][10][3] = {{{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L}},{{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L}},{{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L}},{{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L},{(-4L),(-1L),0x1C7E4F71L}}};
        int8_t l_2098 = 0L;
        uint8_t l_2114[5] = {0UL,0UL,0UL,0UL,0UL};
        union U0 l_2152 = {0};
        uint32_t l_2170 = 0x6AFAFC6BL;
        int16_t l_2181 = 0x1CFCL;
        int i, j, k;
        for (p_2223->g_1644.f4 = 0; (p_2223->g_1644.f4 == (-7)); --p_2223->g_1644.f4)
        { /* block id: 979 */
            int16_t l_2037 = 0x7F5EL;
            int32_t l_2038 = 9L;
            int32_t *l_2039 = &p_2223->g_78[4];
            uint16_t **l_2065 = &p_2223->g_1579;
            int32_t l_2068 = (-1L);
            int32_t l_2090 = (-1L);
            int32_t l_2091 = 0x4424FD1EL;
            int32_t l_2093 = 0x0850C123L;
            int32_t l_2095 = 1L;
            int32_t l_2099 = (-8L);
            int32_t l_2100 = (-6L);
            int32_t l_2101 = (-10L);
            int32_t l_2103 = 0x1F203FFEL;
            int32_t l_2105 = (-10L);
            int32_t l_2106 = 0x50CAFA75L;
            int32_t l_2108 = (-1L);
            int32_t l_2110 = 0x3DD419D4L;
            int32_t l_2112 = 0x60DA4F58L;
            int32_t l_2113[10][3] = {{0x1803D160L,0x1803D160L,0x301E1D75L},{0x1803D160L,0x1803D160L,0x301E1D75L},{0x1803D160L,0x1803D160L,0x301E1D75L},{0x1803D160L,0x1803D160L,0x301E1D75L},{0x1803D160L,0x1803D160L,0x301E1D75L},{0x1803D160L,0x1803D160L,0x301E1D75L},{0x1803D160L,0x1803D160L,0x301E1D75L},{0x1803D160L,0x1803D160L,0x301E1D75L},{0x1803D160L,0x1803D160L,0x301E1D75L},{0x1803D160L,0x1803D160L,0x301E1D75L}};
            int i, j;
            (*l_2039) = (safe_sub_func_uint16_t_u_u(p_7, (l_2038 = ((safe_add_func_int8_t_s_s(0L, (((safe_rshift_func_int8_t_s_s(((*p_8) ^= ((safe_add_func_int64_t_s_s((safe_mul_func_uint8_t_u_u((((*p_2223->g_1579) = p_7) & 0x9F45L), (safe_lshift_func_uint16_t_u_s((safe_mod_func_int64_t_s_s((safe_mul_func_uint8_t_u_u(((p_7 || 0x69L) , p_7), ((-3L) | (safe_mul_func_int8_t_s_s(((safe_sub_func_uint16_t_u_u((safe_div_func_int32_t_s_s(1L, p_7)), 1UL)) == p_7), p_7))))), p_7)), 4)))), l_2037)) == 4294967295UL)), l_1882)) <= 0x1AD702C910760B96L) <= 0UL))) != 0x2DL))));
            for (p_2223->g_1562 = 0; (p_2223->g_1562 == (-8)); p_2223->g_1562--)
            { /* block id: 986 */
                uint16_t l_2055 = 0x8453L;
                uint16_t l_2058 = 3UL;
                int32_t l_2088[4] = {0x307E9083L,0x307E9083L,0x307E9083L,0x307E9083L};
                union U0 l_2128 = {0};
                uint64_t *l_2133 = &p_2223->g_1588;
                int32_t *l_2143 = &p_2223->g_1644.f4;
                uint8_t *l_2144 = (void*)0;
                uint8_t *l_2145 = &p_2223->g_203[0];
                int32_t *l_2146 = &p_2223->g_2097;
                int i;
                for (p_2223->g_1428 = 0; (p_2223->g_1428 > 9); p_2223->g_1428 = safe_add_func_uint32_t_u_u(p_2223->g_1428, 8))
                { /* block id: 989 */
                    uint64_t *l_2046[4][6][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
                    int32_t l_2066 = 0x6D2B77DEL;
                    int32_t *l_2067[1];
                    int32_t **l_2120[6] = {&l_2067[0],&l_1850,&l_2067[0],&l_2067[0],&l_1850,&l_2067[0]};
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                        l_2067[i] = &l_1871;
                    if ((l_1894[1] = (safe_add_func_uint16_t_u_u(((~((*l_2039) = (p_7--))) && ((*l_1945) = p_7)), (safe_lshift_func_int16_t_s_u(((l_2068 ^= (safe_div_func_int32_t_s_s(((safe_lshift_func_uint8_t_u_s(((+(0x28CDD50170A2C9EAL & (((l_2055 > (safe_rshift_func_int8_t_s_u(l_2058, ((l_2059 = 1UL) , ((safe_sub_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_u((l_2059 >= ((((l_2065 = l_2064) == &p_2223->g_722) || (0x76L != 0x6DL)) , GROUP_DIVERGE(1, 1))), 7)), l_1894[4])) , l_2038))))) <= l_2066) && l_2066))) >= l_2066), (*p_8))) , 0x19945161L), l_2038))) | l_2058), (**p_2223->g_1578)))))))
                    { /* block id: 997 */
                        int64_t ***l_2071 = (void*)0;
                        int32_t l_2085 = 1L;
                        int32_t l_2086 = 0x541361E0L;
                        int32_t l_2087 = 0x764E3E38L;
                        int32_t l_2096 = 4L;
                        int32_t l_2102 = 0x7C128342L;
                        int32_t l_2104 = 0L;
                        int32_t l_2107 = 5L;
                        int32_t l_2109 = 0x72F9FE98L;
                        int32_t l_2111[6][2][2] = {{{0x5EBA2DDDL,0x45C6358EL},{0x5EBA2DDDL,0x45C6358EL}},{{0x5EBA2DDDL,0x45C6358EL},{0x5EBA2DDDL,0x45C6358EL}},{{0x5EBA2DDDL,0x45C6358EL},{0x5EBA2DDDL,0x45C6358EL}},{{0x5EBA2DDDL,0x45C6358EL},{0x5EBA2DDDL,0x45C6358EL}},{{0x5EBA2DDDL,0x45C6358EL},{0x5EBA2DDDL,0x45C6358EL}},{{0x5EBA2DDDL,0x45C6358EL},{0x5EBA2DDDL,0x45C6358EL}}};
                        int i, j, k;
                        l_2085 &= ((safe_sub_func_int32_t_s_s(((((((l_2071 != p_2223->g_2072) >= ((l_2059 = (p_2223->g_190 ^= p_7)) == l_2074)) , (safe_rshift_func_uint8_t_u_s(1UL, ((((((safe_lshift_func_int8_t_s_u((((safe_add_func_int8_t_s_s((~(*l_2039)), (l_2074 || l_2074))) >= (safe_rshift_func_int16_t_s_s((safe_lshift_func_int8_t_s_s(0x62L, 3)), 10))) || 6L), 1)) >= p_7) >= p_7) , 0x3E6CB936L) > 0x93C9755AL) | p_7)))) > p_7) > (*p_8)) ^ 1UL), 6L)) , p_7);
                        --l_2114[1];
                    }
                    else
                    { /* block id: 1002 */
                        uint32_t l_2117 = 0UL;
                        ++l_2117;
                    }
                    (*p_2223->g_1559) = &l_2066;
                    if (l_2088[3])
                        break;
                    l_2127 &= (safe_sub_func_int32_t_s_s((((*l_2039) |= (((**p_2223->g_1578) <= 0L) | (safe_sub_func_uint16_t_u_u(p_7, (0x27D01E9DL ^ 4294967295UL))))) != 0x1017L), (safe_mod_func_int16_t_s_s(p_7, (*p_2223->g_1579)))));
                }
                (*l_2146) &= (l_2128 , (l_2098 == ((((safe_sub_func_int8_t_s_s((((((safe_lshift_func_uint8_t_u_u(((p_7 , ((l_2133 = &p_2223->g_1588) == (((safe_mul_func_int8_t_s_s(((*p_5) = (safe_unary_minus_func_int16_t_s((safe_mul_func_uint16_t_u_u((FAKE_DIVERGE(p_2223->local_1_offset, get_local_id(1), 10) >= (*l_2039)), (((((safe_rshift_func_int16_t_s_s(((((+(!0x43F9BEFCDEB692A3L)) < (safe_sub_func_int32_t_s_s(p_7, p_7))) >= ((*l_2145) = (((+((((((*l_2039) ^ (*l_2039)) > p_7) , l_2143) == (void*)0) & l_2094[1][0][1])) , l_2089) | FAKE_DIVERGE(p_2223->local_2_offset, get_local_id(2), 10)))) && (*p_2223->g_1653)), 7)) , (*p_5)) , p_2223->g_136) , l_2058) > p_7)))))), 0x38L)) <= (*l_2039)) , &p_2223->g_1588))) , (*l_2039)), 6)) , l_2114[4]) , GROUP_DIVERGE(1, 1)) & 0x2343L) ^ p_2223->g_1062), (-1L))) >= l_2088[3]) >= 0UL) & (-1L))));
            }
            for (l_2098 = 0; (l_2098 == 25); l_2098 = safe_add_func_uint32_t_u_u(l_2098, 7))
            { /* block id: 1017 */
                (*l_2039) = p_7;
            }
        }
        for (l_1882 = 0; (l_1882 > (-3)); l_1882 = safe_sub_func_uint16_t_u_u(l_1882, 4))
        { /* block id: 1023 */
            int32_t l_2155 = 0L;
            int32_t *l_2167 = &l_2092;
            uint8_t *l_2171 = &p_2223->g_203[1];
            uint64_t *l_2172 = &p_2223->g_64;
            int32_t *l_2182 = (void*)0;
            int32_t *l_2183 = (void*)0;
            int32_t *l_2184 = &l_2059;
            for (p_2223->g_797 = 0; (p_2223->g_797 <= 7); p_2223->g_797 += 1)
            { /* block id: 1026 */
                int64_t **l_2154 = &p_2223->g_159;
                int64_t ***l_2153[7] = {&l_2154,&l_2154,&l_2154,&l_2154,&l_2154,&l_2154,&l_2154};
                int32_t l_2156 = 0x68CD19E6L;
                int32_t *l_2162 = &p_2223->g_2097;
                int i, j;
                if (p_2223->g_1199[p_2223->g_797][(p_2223->g_797 + 2)])
                { /* block id: 1027 */
                    uint8_t *l_2157 = &p_2223->g_766;
                    int32_t *l_2161 = (void*)0;
                    for (l_2098 = 0; (l_2098 <= 7); l_2098 += 1)
                    { /* block id: 1030 */
                        int32_t *l_2151 = &l_1883;
                        (*l_2151) = (p_7 , (-1L));
                    }
                    if (p_7)
                        break;
                    if ((((l_2152 , (((void*)0 == l_2153[5]) || l_2155)) < (++(*l_2157))) , l_2156))
                    { /* block id: 1035 */
                        int32_t **l_2160[6][5][5] = {{{&p_2223->g_458[3],&l_1850,&p_2223->g_458[2],&l_1850,&p_2223->g_458[2]},{&p_2223->g_458[3],&l_1850,&p_2223->g_458[2],&l_1850,&p_2223->g_458[2]},{&p_2223->g_458[3],&l_1850,&p_2223->g_458[2],&l_1850,&p_2223->g_458[2]},{&p_2223->g_458[3],&l_1850,&p_2223->g_458[2],&l_1850,&p_2223->g_458[2]},{&p_2223->g_458[3],&l_1850,&p_2223->g_458[2],&l_1850,&p_2223->g_458[2]}},{{&p_2223->g_458[3],&l_1850,&p_2223->g_458[2],&l_1850,&p_2223->g_458[2]},{&p_2223->g_458[3],&l_1850,&p_2223->g_458[2],&l_1850,&p_2223->g_458[2]},{&p_2223->g_458[3],&l_1850,&p_2223->g_458[2],&l_1850,&p_2223->g_458[2]},{&p_2223->g_458[3],&l_1850,&p_2223->g_458[2],&l_1850,&p_2223->g_458[2]},{&p_2223->g_458[3],&l_1850,&p_2223->g_458[2],&l_1850,&p_2223->g_458[2]}},{{&p_2223->g_458[3],&l_1850,&p_2223->g_458[2],&l_1850,&p_2223->g_458[2]},{&p_2223->g_458[3],&l_1850,&p_2223->g_458[2],&l_1850,&p_2223->g_458[2]},{&p_2223->g_458[3],&l_1850,&p_2223->g_458[2],&l_1850,&p_2223->g_458[2]},{&p_2223->g_458[3],&l_1850,&p_2223->g_458[2],&l_1850,&p_2223->g_458[2]},{&p_2223->g_458[3],&l_1850,&p_2223->g_458[2],&l_1850,&p_2223->g_458[2]}},{{&p_2223->g_458[3],&l_1850,&p_2223->g_458[2],&l_1850,&p_2223->g_458[2]},{&p_2223->g_458[3],&l_1850,&p_2223->g_458[2],&l_1850,&p_2223->g_458[2]},{&p_2223->g_458[3],&l_1850,&p_2223->g_458[2],&l_1850,&p_2223->g_458[2]},{&p_2223->g_458[3],&l_1850,&p_2223->g_458[2],&l_1850,&p_2223->g_458[2]},{&p_2223->g_458[3],&l_1850,&p_2223->g_458[2],&l_1850,&p_2223->g_458[2]}},{{&p_2223->g_458[3],&l_1850,&p_2223->g_458[2],&l_1850,&p_2223->g_458[2]},{&p_2223->g_458[3],&l_1850,&p_2223->g_458[2],&l_1850,&p_2223->g_458[2]},{&p_2223->g_458[3],&l_1850,&p_2223->g_458[2],&l_1850,&p_2223->g_458[2]},{&p_2223->g_458[3],&l_1850,&p_2223->g_458[2],&l_1850,&p_2223->g_458[2]},{&p_2223->g_458[3],&l_1850,&p_2223->g_458[2],&l_1850,&p_2223->g_458[2]}},{{&p_2223->g_458[3],&l_1850,&p_2223->g_458[2],&l_1850,&p_2223->g_458[2]},{&p_2223->g_458[3],&l_1850,&p_2223->g_458[2],&l_1850,&p_2223->g_458[2]},{&p_2223->g_458[3],&l_1850,&p_2223->g_458[2],&l_1850,&p_2223->g_458[2]},{&p_2223->g_458[3],&l_1850,&p_2223->g_458[2],&l_1850,&p_2223->g_458[2]},{&p_2223->g_458[3],&l_1850,&p_2223->g_458[2],&l_1850,&p_2223->g_458[2]}}};
                        int i, j, k;
                        l_2161 = &l_2089;
                        if (p_7)
                            break;
                        l_2162 = &l_1894[0];
                    }
                    else
                    { /* block id: 1039 */
                        l_2155 = l_2059;
                    }
                }
                else
                { /* block id: 1042 */
                    uint32_t l_2164 = 4294967290UL;
                    for (p_2223->g_983.f0 = 2; (p_2223->g_983.f0 <= 7); p_2223->g_983.f0 += 1)
                    { /* block id: 1045 */
                        int32_t *l_2163 = (void*)0;
                        l_2164++;
                    }
                    if ((*l_2162))
                        continue;
                }
            }
            (*l_2167) &= 1L;
            (*l_2184) &= (((p_7 , (safe_mul_func_uint16_t_u_u(p_7, ((((*l_2171) = (!l_2170)) , &p_2223->g_190) == l_2172)))) & (safe_sub_func_uint8_t_u_u(((((l_2114[0] ^ FAKE_DIVERGE(p_2223->group_0_offset, get_group_id(0), 10)) , ((4294967295UL > (safe_mod_func_uint32_t_u_u(p_7, (safe_mod_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u(((l_2094[1][0][1] || p_7) & (*p_5)), p_7)), (*p_2223->g_1579)))))) == l_2114[1])) <= (*p_2223->g_722)) && p_7), l_2181))) != (*l_2167));
            (*p_2223->g_598) = &l_2155;
        }
    }
    return l_1895[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_2223->g_466.f1 p_2223->g_983.f1 p_2223->g_1551 p_2223->g_231 p_2223->g_1550 p_2223->g_1578 p_2223->g_331 p_2223->g_332 p_2223->g_1588 p_2223->g_66 p_2223->g_1579 p_2223->g_878.f0 p_2223->g_78 p_2223->g_1562 p_2223->g_334 p_2223->g_1428 p_2223->g_1302 p_2223->g_1644 p_2223->g_871 p_2223->g_64 p_2223->g_1653 p_2223->g_1689 p_2223->g_1741 p_2223->g_74 p_2223->g_722 p_2223->g_203 p_2223->g_88 p_2223->g_304 p_2223->g_comm_values p_2223->g_1839 p_2223->g_1062 p_2223->g_76
 * writes: p_2223->g_466.f1 p_2223->g_983.f1 p_2223->g_231 p_2223->g_76 p_2223->g_1588 p_2223->g_458 p_2223->g_88 p_2223->g_66 p_2223->g_90 p_2223->g_78 p_2223->g_77 p_2223->g_1303 p_2223->g_1562 p_2223->g_190 p_2223->g_878.f0 p_2223->g_1691 p_2223->l_comm_values p_2223->g_1741 p_2223->g_74 p_2223->g_203 p_2223->g_766 p_2223->g_comm_values
 */
int8_t * func_9(uint8_t  p_10, int8_t * p_11, int8_t * p_12, int64_t  p_13, struct S2 * p_2223)
{ /* block id: 753 */
    int8_t l_1575 = 7L;
    int32_t l_1599 = 0x3F7D2E8DL;
    union U0 *l_1610 = &p_2223->g_407;
    int32_t **l_1614 = &p_2223->g_458[2];
    int32_t l_1699[8] = {2L,2L,2L,2L,2L,2L,2L,2L};
    union U1 *l_1745 = &p_2223->g_878[1];
    int8_t l_1747 = 0L;
    int16_t *l_1754 = &p_2223->g_74[0][6][5];
    uint32_t *l_1761 = &p_2223->g_797;
    uint32_t l_1762 = 1UL;
    uint16_t l_1763[5][7][2] = {{{0x2E05L,0xB124L},{0x2E05L,0xB124L},{0x2E05L,0xB124L},{0x2E05L,0xB124L},{0x2E05L,0xB124L},{0x2E05L,0xB124L},{0x2E05L,0xB124L}},{{0x2E05L,0xB124L},{0x2E05L,0xB124L},{0x2E05L,0xB124L},{0x2E05L,0xB124L},{0x2E05L,0xB124L},{0x2E05L,0xB124L},{0x2E05L,0xB124L}},{{0x2E05L,0xB124L},{0x2E05L,0xB124L},{0x2E05L,0xB124L},{0x2E05L,0xB124L},{0x2E05L,0xB124L},{0x2E05L,0xB124L},{0x2E05L,0xB124L}},{{0x2E05L,0xB124L},{0x2E05L,0xB124L},{0x2E05L,0xB124L},{0x2E05L,0xB124L},{0x2E05L,0xB124L},{0x2E05L,0xB124L},{0x2E05L,0xB124L}},{{0x2E05L,0xB124L},{0x2E05L,0xB124L},{0x2E05L,0xB124L},{0x2E05L,0xB124L},{0x2E05L,0xB124L},{0x2E05L,0xB124L},{0x2E05L,0xB124L}}};
    int32_t l_1764 = 1L;
    uint8_t l_1765 = 255UL;
    int32_t *l_1766[1][5][4] = {{{&p_2223->g_78[1],&p_2223->g_78[1],&p_2223->g_78[1],&p_2223->g_78[1]},{&p_2223->g_78[1],&p_2223->g_78[1],&p_2223->g_78[1],&p_2223->g_78[1]},{&p_2223->g_78[1],&p_2223->g_78[1],&p_2223->g_78[1],&p_2223->g_78[1]},{&p_2223->g_78[1],&p_2223->g_78[1],&p_2223->g_78[1],&p_2223->g_78[1]},{&p_2223->g_78[1],&p_2223->g_78[1],&p_2223->g_78[1],&p_2223->g_78[1]}}};
    int32_t l_1767 = (-1L);
    uint32_t l_1768 = 4294967295UL;
    int8_t l_1771 = 1L;
    int32_t **l_1772 = (void*)0;
    int32_t *l_1774 = &l_1767;
    int32_t **l_1773 = &l_1774;
    int32_t *l_1776 = &l_1767;
    int32_t **l_1775 = &l_1776;
    int8_t l_1844 = (-1L);
    int8_t *l_1846 = &p_2223->g_741[0][3];
    int i, j, k;
    for (p_2223->g_466.f1 = 0; (p_2223->g_466.f1 < (-4)); p_2223->g_466.f1 = safe_sub_func_int64_t_s_s(p_2223->g_466.f1, 2))
    { /* block id: 756 */
        int16_t l_1596 = 6L;
        int32_t l_1601[1];
        union U0 l_1607[2] = {{0},{0}};
        int i;
        for (i = 0; i < 1; i++)
            l_1601[i] = (-1L);
        for (p_2223->g_983.f1 = (-3); (p_2223->g_983.f1 > (-1)); p_2223->g_983.f1++)
        { /* block id: 759 */
            union U0 l_1597 = {0};
            int32_t l_1598 = 7L;
            uint64_t *l_1604[1];
            int32_t **l_1609 = &p_2223->g_458[3];
            int i;
            for (i = 0; i < 1; i++)
                l_1604[i] = (void*)0;
            (**p_2223->g_1550) = (*p_2223->g_1551);
            for (p_2223->g_76 = 0; (p_2223->g_76 == (-24)); p_2223->g_76 = safe_sub_func_uint16_t_u_u(p_2223->g_76, 8))
            { /* block id: 763 */
                uint16_t **l_1580 = (void*)0;
                uint64_t *l_1587 = &p_2223->g_1588;
                int32_t *l_1595[4];
                uint16_t **l_1600 = &p_2223->g_1579;
                uint32_t **l_1608[5];
                int i;
                for (i = 0; i < 4; i++)
                    l_1595[i] = (void*)0;
                for (i = 0; i < 5; i++)
                    l_1608[i] = (void*)0;
                l_1599 = ((safe_sub_func_int32_t_s_s(((safe_mod_func_uint32_t_u_u((l_1575 < (safe_add_func_uint32_t_u_u(((l_1580 = p_2223->g_1578) == ((((safe_div_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(1UL, ((safe_add_func_uint16_t_u_u(((((((-3L) == (((*l_1587) ^= (((*p_2223->g_331) == (*p_2223->g_331)) || GROUP_DIVERGE(1, 1))) , GROUP_DIVERGE(0, 1))) == (*p_11)) ^ (safe_div_func_int64_t_s_s(((safe_lshift_func_int8_t_s_s(((safe_add_func_int64_t_s_s(((l_1596 = 0x27410B63L) < ((l_1597 , l_1598) > l_1598)), GROUP_DIVERGE(1, 1))) >= (*p_2223->g_1579)), l_1575)) , 0x54E1C543F938B56DL), 0x3787C3860B37DEDDL))) == p_10) || 0xA70A333AL), p_10)) , l_1599))), p_10)) | p_10) , (-7L)) , l_1600)), l_1601[0]))), 9UL)) >= p_10), 0x811D4B36L)) || 2L);
                l_1598 = (((((safe_sub_func_int16_t_s_s(p_13, ((l_1587 != l_1604[0]) , (((safe_lshift_func_uint16_t_u_u(0x5F0EL, (247UL & ((l_1607[0] , (((p_10 < (p_13 != (&p_2223->g_796[0][4] == l_1608[1]))) | l_1601[0]) == p_10)) >= p_13)))) < GROUP_DIVERGE(0, 1)) , l_1598)))) <= 0x4F2AF704L) != (*p_11)) | p_13) >= 255UL);
                if (l_1599)
                    break;
            }
            (*l_1609) = &l_1601[0];
        }
    }
    if (p_10)
    { /* block id: 774 */
        union U1 ***l_1626 = &p_2223->g_1302;
        int32_t l_1629 = 3L;
        int32_t l_1735 = 0x6A3346E7L;
        int32_t l_1736 = 0x00E784DAL;
        int32_t l_1737 = (-1L);
        int32_t l_1740[3];
        int i;
        for (i = 0; i < 3; i++)
            l_1740[i] = 0x1581EFAEL;
        for (l_1575 = 0; (l_1575 <= 0); l_1575 += 1)
        { /* block id: 777 */
            union U0 **l_1613 = &l_1610;
            int32_t **l_1615 = (void*)0;
            int32_t l_1628 = (-3L);
            union U1 *l_1635 = &p_2223->g_983;
            int8_t l_1703 = 0x31L;
            int32_t l_1708 = 0L;
            int32_t l_1711 = 0x55C9DF66L;
            int16_t l_1712 = (-7L);
            int32_t l_1713 = (-6L);
            uint16_t l_1714 = 7UL;
            int32_t l_1738 = 0L;
            int32_t l_1739 = 0L;
            (*l_1613) = l_1610;
            for (p_2223->g_983.f1 = 2; (p_2223->g_983.f1 >= 0); p_2223->g_983.f1 -= 1)
            { /* block id: 781 */
                int64_t *l_1627 = &p_2223->g_90;
                int64_t *l_1630 = (void*)0;
                int64_t *l_1631 = (void*)0;
                int64_t *l_1632 = (void*)0;
                int64_t *l_1633 = (void*)0;
                int64_t *l_1634 = (void*)0;
                int32_t l_1692 = (-8L);
                int64_t l_1696 = 0x45FFD0BB33971104L;
                int32_t l_1700 = 0x4249D846L;
                int32_t l_1701 = 1L;
                int32_t l_1702 = 0x1F7C271CL;
                int32_t l_1704 = 0x37AACDDDL;
                int32_t l_1705 = (-5L);
                int32_t l_1706 = 1L;
                int8_t l_1707 = 9L;
                int32_t l_1709[5] = {(-7L),(-7L),(-7L),(-7L),(-7L)};
                int16_t l_1744 = 0L;
                int i;
                l_1615 = l_1614;
                for (p_2223->g_88 = 0; (p_2223->g_88 <= 4); p_2223->g_88 += 1)
                { /* block id: 785 */
                    for (p_2223->g_66 = 0; (p_2223->g_66 <= 0); p_2223->g_66 += 1)
                    { /* block id: 788 */
                        return &p_2223->g_741[1][9];
                    }
                }
                if (p_2223->g_78[(p_2223->g_983.f1 + 2)])
                    continue;
                if ((safe_rshift_func_uint16_t_u_u((safe_sub_func_int64_t_s_s((!(p_13 , (p_2223->g_78[(p_2223->g_983.f1 + 2)] = (l_1629 |= (safe_rshift_func_int16_t_s_u(((((l_1615 != (void*)0) , 0x5AL) >= ((((*p_12) == (((((safe_rshift_func_uint8_t_u_u(((safe_rshift_func_int16_t_s_u(((((l_1626 == (void*)0) || ((l_1599 = (((*l_1627) = 0x11BED8EC05E41F17L) | p_2223->g_334[0])) | 0x03ECB1EFL)) == p_10) , p_13), 7)) != l_1628), 5)) > (**p_2223->g_1578)) | FAKE_DIVERGE(p_2223->global_2_offset, get_global_id(2), 10)) & 0x83L) || 0x67AAL)) , p_10) < 0x2333FDBA17F7F398L)) , p_2223->g_78[(p_2223->g_983.f1 + 2)]), GROUP_DIVERGE(2, 1))))))), p_2223->g_1428)), 11)))
                { /* block id: 797 */
                    uint64_t l_1662 = 1UL;
                    int32_t l_1667 = (-9L);
                    union U1 **l_1686 = &p_2223->g_1303;
                    int32_t l_1695 = 0x5817E3FBL;
                    int32_t l_1697[3];
                    int8_t l_1698 = 0x64L;
                    union U0 l_1721 = {0};
                    int i;
                    for (i = 0; i < 3; i++)
                        l_1697[i] = (-1L);
                    for (p_2223->g_77 = 2; (p_2223->g_77 >= 0); p_2223->g_77 -= 1)
                    { /* block id: 800 */
                        uint16_t l_1645 = 1UL;
                        int32_t *l_1652 = (void*)0;
                        (*p_2223->g_1302) = l_1635;
                        (*p_2223->g_1653) = (l_1629 = (9L && (((0x123CE481CE00FD33L > 0x7257C09A94C19C8FL) != (((*l_1627) = p_13) < l_1629)) & ((safe_add_func_uint32_t_u_u((safe_lshift_func_int8_t_s_u((safe_sub_func_int16_t_s_s(p_10, (safe_add_func_int64_t_s_s((p_2223->g_1644 , ((l_1645 ^ ((safe_mul_func_uint8_t_u_u((safe_mod_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), GROUP_DIVERGE(2, 1))), ((safe_rshift_func_uint16_t_u_s(((void*)0 != &p_2223->g_1551), p_10)) , l_1629))) > 255UL)) <= p_13)), p_2223->g_871[0])))), p_2223->g_64)), FAKE_DIVERGE(p_2223->local_0_offset, get_local_id(0), 10))) | l_1629))));
                    }
                    for (p_13 = 0; (p_13 <= 2); p_13 += 1)
                    { /* block id: 808 */
                        int32_t *l_1663 = &p_2223->g_78[3];
                        uint64_t *l_1664 = &p_2223->g_190;
                        (*l_1663) ^= (safe_mul_func_int16_t_s_s(p_13, ((2UL | ((*p_12) = ((safe_mod_func_uint8_t_u_u((p_13 != p_13), (safe_sub_func_uint16_t_u_u(0x2434L, (safe_rshift_func_int16_t_s_s(0x3AE6L, l_1629)))))) == (l_1662 | (p_13 ^ p_10))))) , l_1662)));
                        l_1667 = (((*l_1664) = p_10) == (safe_lshift_func_uint8_t_u_s(p_10, 4)));
                        if (p_13)
                            continue;
                    }
                    if ((1L != p_10))
                    { /* block id: 815 */
                        uint8_t *l_1678[6][6][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
                        int32_t l_1679 = 0x1FCC2D6BL;
                        union U1 **l_1687[10] = {&l_1635,&p_2223->g_1303,&l_1635,&l_1635,&p_2223->g_1303,&l_1635,&l_1635,&p_2223->g_1303,&l_1635,&l_1635};
                        uint64_t *l_1688 = (void*)0;
                        int32_t l_1693[1][4][9] = {{{0x5ABDCD78L,0x5ABDCD78L,0x5ABDCD78L,0x5ABDCD78L,0x5ABDCD78L,0x5ABDCD78L,0x5ABDCD78L,0x5ABDCD78L,0x5ABDCD78L},{0x5ABDCD78L,0x5ABDCD78L,0x5ABDCD78L,0x5ABDCD78L,0x5ABDCD78L,0x5ABDCD78L,0x5ABDCD78L,0x5ABDCD78L,0x5ABDCD78L},{0x5ABDCD78L,0x5ABDCD78L,0x5ABDCD78L,0x5ABDCD78L,0x5ABDCD78L,0x5ABDCD78L,0x5ABDCD78L,0x5ABDCD78L,0x5ABDCD78L},{0x5ABDCD78L,0x5ABDCD78L,0x5ABDCD78L,0x5ABDCD78L,0x5ABDCD78L,0x5ABDCD78L,0x5ABDCD78L,0x5ABDCD78L,0x5ABDCD78L}}};
                        int32_t *l_1694[5][2][10] = {{{&l_1667,&l_1693[0][3][2],(void*)0,&l_1599,(void*)0,&l_1692,&l_1692,(void*)0,&l_1599,(void*)0},{&l_1667,&l_1693[0][3][2],(void*)0,&l_1599,(void*)0,&l_1692,&l_1692,(void*)0,&l_1599,(void*)0}},{{&l_1667,&l_1693[0][3][2],(void*)0,&l_1599,(void*)0,&l_1692,&l_1692,(void*)0,&l_1599,(void*)0},{&l_1667,&l_1693[0][3][2],(void*)0,&l_1599,(void*)0,&l_1692,&l_1692,(void*)0,&l_1599,(void*)0}},{{&l_1667,&l_1693[0][3][2],(void*)0,&l_1599,(void*)0,&l_1692,&l_1692,(void*)0,&l_1599,(void*)0},{&l_1667,&l_1693[0][3][2],(void*)0,&l_1599,(void*)0,&l_1692,&l_1692,(void*)0,&l_1599,(void*)0}},{{&l_1667,&l_1693[0][3][2],(void*)0,&l_1599,(void*)0,&l_1692,&l_1692,(void*)0,&l_1599,(void*)0},{&l_1667,&l_1693[0][3][2],(void*)0,&l_1599,(void*)0,&l_1692,&l_1692,(void*)0,&l_1599,(void*)0}},{{&l_1667,&l_1693[0][3][2],(void*)0,&l_1599,(void*)0,&l_1692,&l_1692,(void*)0,&l_1599,(void*)0},{&l_1667,&l_1693[0][3][2],(void*)0,&l_1599,(void*)0,&l_1692,&l_1692,(void*)0,&l_1599,(void*)0}}};
                        int8_t l_1710 = (-1L);
                        int i, j, k;
                        l_1693[0][3][2] |= (safe_sub_func_int8_t_s_s((*p_12), ((l_1667 , 0x62B00D84L) != ((safe_mul_func_uint16_t_u_u(((safe_lshift_func_uint16_t_u_s(((((*p_2223->g_1579) = p_10) > (safe_lshift_func_int16_t_s_s((safe_mod_func_uint8_t_u_u((l_1679 = l_1662), (safe_mul_func_int16_t_s_s((safe_div_func_uint64_t_u_u((safe_sub_func_int16_t_s_s(((p_2223->g_78[(p_2223->g_983.f1 + 2)] = (l_1686 != l_1687[8])) , ((p_2223->g_1689[2][0] != (p_2223->g_1691[1][5][4] = ((l_1628 == p_13) , &p_2223->g_1588))) == p_10)), l_1692)), 0x176A4383B7AA9CBFL)), FAKE_DIVERGE(p_2223->group_0_offset, get_group_id(0), 10))))), l_1629))) <= 0xD3A3L), 12)) && l_1679), p_13)) || l_1679))));
                        l_1714++;
                        if (p_13)
                            continue;
                    }
                    else
                    { /* block id: 823 */
                        uint32_t l_1730 = 0x942CBCE8L;
                        int32_t *l_1732 = &l_1599;
                        int32_t *l_1733 = &l_1599;
                        int32_t *l_1734[6] = {&l_1628,&l_1628,&l_1628,&l_1628,&l_1628,&l_1628};
                        int i;
                        (*p_2223->g_1653) |= ((p_13 , (safe_rshift_func_int16_t_s_s(((p_2223->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2223->tid, 15))] = 0x70A864804016A716L) , 0x22A0L), (safe_rshift_func_uint8_t_u_u((((l_1698 , (0x2547F9DBB862DD67L == (l_1721 , ((safe_mod_func_int16_t_s_s((l_1667 && ((safe_sub_func_uint8_t_u_u((((*p_12) = ((0xBCAFD313L < (safe_mod_func_uint64_t_u_u((safe_mul_func_int8_t_s_s((*p_11), 0x6FL)), 0x5E4040F6200BB45AL))) ^ (-5L))) && 255UL), 0x93L)) , l_1730)), p_13)) || p_13)))) != 1UL) & 4294967295UL), p_10))))) >= 0x140D9E09L);
                        p_2223->g_1741[2][3][0]--;
                        (*l_1614) = &l_1667;
                        return p_11;
                    }
                    (*l_1614) = &l_1695;
                }
                else
                { /* block id: 832 */
                    l_1744 &= (l_1704 && (**p_2223->g_1578));
                }
            }
            if (p_2223->g_983.f1)
                goto lbl_1746;
        }
        (*l_1614) = &l_1740[0];
        (**l_1626) = l_1745;
    }
    else
    { /* block id: 839 */
lbl_1746:
        (*l_1614) = (void*)0;
lbl_1812:
        l_1767 |= (l_1747 | ((((safe_mod_func_uint8_t_u_u((p_13 == ((safe_sub_func_int16_t_s_s((safe_sub_func_int64_t_s_s((-8L), (p_10 , p_10))), ((*l_1754) &= p_13))) <= (((*p_2223->g_722) = (++(**p_2223->g_1578))) & 0x7C1DL))), (safe_mul_func_uint16_t_u_u((safe_add_func_int16_t_s_s((((((p_2223->g_871[0] < ((&p_2223->g_871[0] != l_1761) || p_10)) & 0xBBL) , l_1599) > l_1762) <= 0x4E846DEC58252C38L), p_13)), l_1763[2][6][1])))) , l_1764) | 3UL) || l_1765));
        l_1768--;
    }
    if ((l_1771 >= (((*l_1773) = &l_1764) == ((*l_1775) = &p_2223->g_77))))
    { /* block id: 850 */
        int16_t l_1779 = 0x350AL;
        int32_t l_1780 = 7L;
        l_1780 = (safe_div_func_int64_t_s_s(0L, l_1779));
        if (p_2223->g_66)
            goto lbl_1781;
lbl_1781:
        l_1780 = (p_10 && (&l_1745 != (void*)0));
        (*l_1614) = (void*)0;
    }
    else
    { /* block id: 855 */
        uint32_t l_1811[1][8];
        uint64_t *l_1813 = &p_2223->g_1588;
        uint64_t **l_1814 = &l_1813;
        uint64_t **l_1815 = &p_2223->g_1691[1][5][4];
        uint64_t *l_1817 = (void*)0;
        uint64_t **l_1816 = &l_1817;
        uint32_t **l_1827 = (void*)0;
        uint32_t ***l_1826 = &l_1827;
        uint32_t **l_1829 = (void*)0;
        uint32_t ***l_1828 = &l_1829;
        int32_t ***l_1836 = &l_1614;
        uint8_t *l_1837 = &p_2223->g_766;
        uint8_t *l_1838[6][3][7] = {{{&l_1765,(void*)0,&p_2223->g_706,&l_1765,(void*)0,&l_1765,&p_2223->g_706},{&l_1765,(void*)0,&p_2223->g_706,&l_1765,(void*)0,&l_1765,&p_2223->g_706},{&l_1765,(void*)0,&p_2223->g_706,&l_1765,(void*)0,&l_1765,&p_2223->g_706}},{{&l_1765,(void*)0,&p_2223->g_706,&l_1765,(void*)0,&l_1765,&p_2223->g_706},{&l_1765,(void*)0,&p_2223->g_706,&l_1765,(void*)0,&l_1765,&p_2223->g_706},{&l_1765,(void*)0,&p_2223->g_706,&l_1765,(void*)0,&l_1765,&p_2223->g_706}},{{&l_1765,(void*)0,&p_2223->g_706,&l_1765,(void*)0,&l_1765,&p_2223->g_706},{&l_1765,(void*)0,&p_2223->g_706,&l_1765,(void*)0,&l_1765,&p_2223->g_706},{&l_1765,(void*)0,&p_2223->g_706,&l_1765,(void*)0,&l_1765,&p_2223->g_706}},{{&l_1765,(void*)0,&p_2223->g_706,&l_1765,(void*)0,&l_1765,&p_2223->g_706},{&l_1765,(void*)0,&p_2223->g_706,&l_1765,(void*)0,&l_1765,&p_2223->g_706},{&l_1765,(void*)0,&p_2223->g_706,&l_1765,(void*)0,&l_1765,&p_2223->g_706}},{{&l_1765,(void*)0,&p_2223->g_706,&l_1765,(void*)0,&l_1765,&p_2223->g_706},{&l_1765,(void*)0,&p_2223->g_706,&l_1765,(void*)0,&l_1765,&p_2223->g_706},{&l_1765,(void*)0,&p_2223->g_706,&l_1765,(void*)0,&l_1765,&p_2223->g_706}},{{&l_1765,(void*)0,&p_2223->g_706,&l_1765,(void*)0,&l_1765,&p_2223->g_706},{&l_1765,(void*)0,&p_2223->g_706,&l_1765,(void*)0,&l_1765,&p_2223->g_706},{&l_1765,(void*)0,&p_2223->g_706,&l_1765,(void*)0,&l_1765,&p_2223->g_706}}};
        int16_t *l_1842 = &p_2223->g_76;
        int64_t *l_1843[2][10];
        int32_t l_1845 = 0x5ABC7E9FL;
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 8; j++)
                l_1811[i][j] = 9UL;
        }
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 10; j++)
                l_1843[i][j] = &p_2223->g_90;
        }
        for (p_10 = 6; (p_10 == 58); p_10 = safe_add_func_uint32_t_u_u(p_10, 2))
        { /* block id: 858 */
            union U0 l_1784 = {0};
            int32_t l_1801[8] = {0x0CBEAC3FL,0x0CBEAC3FL,0x0CBEAC3FL,0x0CBEAC3FL,0x0CBEAC3FL,0x0CBEAC3FL,0x0CBEAC3FL,0x0CBEAC3FL};
            uint8_t *l_1809 = &p_2223->g_203[1];
            int32_t l_1810 = 0x4ABC8984L;
            int i;
            (*l_1614) = ((((l_1784 , ((0x18C5L && ((safe_mul_func_uint8_t_u_u((safe_div_func_int8_t_s_s((p_13 , ((safe_lshift_func_uint16_t_u_u(((safe_mod_func_uint8_t_u_u(p_10, ((safe_lshift_func_int8_t_s_u(((safe_mul_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((safe_sub_func_uint32_t_u_u(l_1801[0], (safe_mod_func_int8_t_s_s((((safe_div_func_int16_t_s_s(((safe_mul_func_uint16_t_u_u((*p_2223->g_1579), l_1801[0])) , ((safe_unary_minus_func_int8_t_s((l_1810 = ((+p_13) , (((((*l_1809) |= (p_13 ^ 0x408C1EA8L)) , 7L) <= (-1L)) | GROUP_DIVERGE(1, 1)))))) , p_13)), l_1801[0])) & (-1L)) < (*p_11)), p_10)))), 0xACL)), (*p_2223->g_722))) | l_1801[1]), 1)) & p_2223->g_878[2].f0))) | p_13), l_1811[0][4])) , (*p_11))), p_10)), GROUP_DIVERGE(1, 1))) <= 4294967295UL)) <= (-1L))) , (void*)0) != (*p_2223->g_1550)) , &l_1801[0]);
        }
        if (l_1747)
            goto lbl_1812;
        l_1845 &= (p_13 != (((*l_1816) = ((*l_1815) = ((*l_1814) = l_1813))) != ((((p_10 != (((p_2223->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2223->tid, 15))] = (((*l_1842) ^= (((safe_sub_func_uint32_t_u_u((safe_rshift_func_int16_t_s_s((l_1811[0][5] , ((*l_1754) = (safe_sub_func_uint16_t_u_u((*p_2223->g_722), ((**p_2223->g_1578) = (((p_10 && ((~((safe_sub_func_uint32_t_u_u(((((((*l_1828) = ((*l_1826) = &p_2223->g_796[0][4])) == (void*)0) < (((p_2223->g_comm_values[p_2223->tid] |= (GROUP_DIVERGE(2, 1) | ((safe_rshift_func_uint8_t_u_s(((p_2223->g_203[2] = ((*l_1837) = (safe_mod_func_uint64_t_u_u((safe_rshift_func_uint16_t_u_s((((void*)0 == l_1836) <= 0x3D64L), 13)), p_2223->g_304[3][3][1])))) < (*p_12)), (*p_11))) != 1UL))) ^ p_13) && 247UL)) , (void*)0) != p_2223->g_1839[4][0][0]), p_10)) && FAKE_DIVERGE(p_2223->local_1_offset, get_local_id(1), 10))) , p_10)) > p_13) && l_1811[0][4])))))), l_1811[0][0])), 0x4E2012A0L)) >= p_2223->g_1062) && GROUP_DIVERGE(1, 1))) > 0x1037L)) == p_2223->g_78[3]) > l_1844)) , 0xE0L) | 0x61L) , l_1843[1][8])));
    }
    return l_1846;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int64_t  func_16(int32_t  p_17, int32_t  p_18, struct S2 * p_2223)
{ /* block id: 751 */
    uint64_t l_1563 = 18446744073709551613UL;
    return l_1563;
}


/* ------------------------------------------ */
/* 
 * reads : p_2223->g_766 p_2223->g_706 p_2223->g_983.f0 p_2223->g_722 p_2223->g_88 p_2223->g_203 p_2223->g_1302 p_2223->g_1428 p_2223->g_66 p_2223->g_634 p_2223->g_486 p_2223->g_487 p_2223->g_878.f0 p_2223->g_691 p_2223->g_74 p_2223->g_787 p_2223->g_871 p_2223->g_1497 p_2223->g_190 p_2223->g_304 p_2223->g_273 p_2223->g_64 p_2223->g_779 p_2223->g_674 p_2223->g_1550 p_2223->g_1559
 * writes: p_2223->g_766 p_2223->g_136 p_2223->g_706 p_2223->g_983.f0 p_2223->g_159 p_2223->g_88 p_2223->g_692 p_2223->g_458 p_2223->g_1303 p_2223->g_74 p_2223->g_407 p_2223->g_390 p_2223->g_203 p_2223->g_634 p_2223->g_66 p_2223->g_878.f0 p_2223->g_304 p_2223->g_153 p_2223->g_190 p_2223->g_273 p_2223->g_1062 p_2223->g_64 p_2223->g_76
 */
int16_t  func_27(int8_t * p_28, int8_t * p_29, int8_t * p_30, struct S2 * p_2223)
{ /* block id: 640 */
    int32_t l_1356 = 0x39D2130DL;
    int32_t l_1357[5] = {0x29C0EC82L,0x29C0EC82L,0x29C0EC82L,0x29C0EC82L,0x29C0EC82L};
    int32_t l_1358 = 0x773592BAL;
    union U0 *l_1377 = &p_2223->g_407;
    uint8_t ***l_1390 = (void*)0;
    int64_t **l_1494 = &p_2223->g_159;
    uint16_t l_1498 = 0x2C11L;
    uint16_t *l_1543 = &p_2223->g_466.f0;
    uint16_t *l_1544 = &p_2223->g_634;
    int16_t *l_1547 = &p_2223->g_76;
    int32_t *l_1556 = (void*)0;
    int32_t *l_1557[8] = {&l_1357[1],&p_2223->g_78[4],&l_1357[1],&l_1357[1],&p_2223->g_78[4],&l_1357[1],&l_1357[1],&p_2223->g_78[4]};
    uint64_t l_1558 = 18446744073709551615UL;
    int8_t l_1560 = 0x36L;
    int i;
    for (p_2223->g_766 = 0; (p_2223->g_766 <= 1); p_2223->g_766 += 1)
    { /* block id: 643 */
        uint32_t l_1345[1];
        int64_t *l_1346 = &p_2223->g_136;
        union U0 **l_1347 = &p_2223->g_692;
        union U0 ***l_1348 = &l_1347;
        union U0 **l_1350[2];
        union U0 ***l_1349 = &l_1350[1];
        uint8_t *l_1351 = &p_2223->g_706;
        int32_t *l_1355[2][8] = {{&p_2223->g_78[1],&p_2223->g_78[1],(void*)0,&p_2223->g_78[1],&p_2223->g_78[1],&p_2223->g_78[1],&p_2223->g_78[1],(void*)0},{&p_2223->g_78[1],&p_2223->g_78[1],(void*)0,&p_2223->g_78[1],&p_2223->g_78[1],&p_2223->g_78[1],&p_2223->g_78[1],(void*)0}};
        int64_t l_1383 = 7L;
        uint64_t l_1526 = 1UL;
        int i, j;
        for (i = 0; i < 1; i++)
            l_1345[i] = 0x05F43EB0L;
        for (i = 0; i < 2; i++)
            l_1350[i] = &p_2223->g_692;
        l_1356 ^= ((((*l_1349) = ((*l_1348) = (((*l_1346) = l_1345[0]) , l_1347))) == (void*)0) <= (--(*l_1351)));
        if ((l_1358 = (l_1357[1] ^= 2L)))
        { /* block id: 651 */
            uint64_t l_1363 = 0UL;
            int8_t l_1372 = 9L;
            uint32_t **l_1379 = &p_2223->g_796[0][0];
            uint32_t l_1382[8];
            int i;
            for (i = 0; i < 8; i++)
                l_1382[i] = 0xF46AAF16L;
            for (p_2223->g_983.f0 = 0; (p_2223->g_983.f0 <= 1); p_2223->g_983.f0 += 1)
            { /* block id: 654 */
                int64_t **l_1370 = (void*)0;
                int64_t **l_1371 = &p_2223->g_159;
                int32_t l_1373 = 0L;
                l_1373 = (0x2860L | (safe_lshift_func_uint16_t_u_s(((safe_div_func_uint64_t_u_u(0xC50131819BF62433L, (l_1363 , (-9L)))) ^ (((safe_div_func_uint16_t_u_u((*p_2223->g_722), (safe_div_func_int64_t_s_s((+(safe_mul_func_uint8_t_u_u(((*l_1351) ^= 0x02L), (!(((*l_1371) = (l_1363 , &p_2223->g_136)) == &p_2223->g_136))))), 0x0F500FBDF49B0B9AL)))) , p_2223->g_203[0]) , l_1372)), 11)));
                for (p_2223->g_88 = 2; (p_2223->g_88 <= 6); p_2223->g_88 += 1)
                { /* block id: 660 */
                    uint32_t l_1374 = 4294967291UL;
                    union U0 *l_1378 = (void*)0;
                    for (p_2223->g_706 = 0; (p_2223->g_706 <= 6); p_2223->g_706 += 1)
                    { /* block id: 663 */
                        int32_t *l_1381[9] = {&p_2223->g_78[0],&p_2223->g_78[0],&p_2223->g_78[0],&p_2223->g_78[0],&p_2223->g_78[0],&p_2223->g_78[0],&p_2223->g_78[0],&p_2223->g_78[0],&p_2223->g_78[0]};
                        int i;
                        ++l_1374;
                        l_1378 = ((**l_1349) = l_1377);
                        l_1379 = l_1379;
                        l_1381[3] = (void*)0;
                    }
                }
            }
            if (l_1382[2])
                break;
            if (l_1383)
                break;
        }
        else
        { /* block id: 674 */
            int32_t **l_1384 = &p_2223->g_458[1];
            union U1 **l_1385 = (void*)0;
            union U1 *l_1387 = (void*)0;
            union U1 **l_1386 = &l_1387;
            (*l_1384) = l_1355[1][5];
            (*l_1386) = ((*p_2223->g_1302) = (void*)0);
            l_1358 = (safe_sub_func_uint16_t_u_u(0x9F4BL, ((void*)0 == l_1390)));
        }
        for (p_2223->g_706 = 0; (p_2223->g_706 <= 6); p_2223->g_706 += 1)
        { /* block id: 682 */
            int32_t *l_1391 = (void*)0;
            int32_t l_1392[6] = {0x79C80D96L,1L,0x79C80D96L,0x79C80D96L,1L,0x79C80D96L};
            uint32_t *l_1406[3];
            uint16_t l_1407 = 1UL;
            int32_t l_1410 = 0x000EFF06L;
            int16_t *l_1411 = (void*)0;
            int16_t *l_1412 = &p_2223->g_74[0][3][7];
            int32_t l_1413 = (-1L);
            union U0 l_1416 = {0};
            int64_t l_1438 = (-1L);
            uint16_t l_1463 = 0x4287L;
            int32_t *l_1542 = &l_1392[1];
            int i;
            for (i = 0; i < 3; i++)
                l_1406[i] = (void*)0;
            l_1392[1] = (&p_2223->g_1003 != l_1391);
            l_1413 ^= ((!((*l_1412) = (safe_sub_func_int16_t_s_s((-3L), (safe_rshift_func_uint16_t_u_u((((safe_unary_minus_func_int8_t_s(0x40L)) <= (FAKE_DIVERGE(p_2223->global_1_offset, get_global_id(1), 10) & (((safe_div_func_int8_t_s_s((l_1357[1] , (safe_div_func_int8_t_s_s(((l_1356 >= ((-1L) & 4294967295UL)) >= ((((safe_rshift_func_int8_t_s_s(0x39L, ((--l_1407) < ((l_1392[1] || (l_1392[1] = ((((p_29 == p_30) != 0x3330L) == l_1357[1]) < l_1357[2]))) , l_1357[1])))) && l_1356) , (void*)0) != (void*)0)), 0x1AL))), l_1410)) != l_1410) || GROUP_DIVERGE(2, 1)))) > l_1357[3]), 14)))))) & l_1410);
            if (l_1356)
                break;
            for (l_1410 = 0; (l_1410 <= 6); l_1410 += 1)
            { /* block id: 691 */
                int32_t l_1419 = 0L;
                int8_t **l_1431 = &p_2223->g_390;
                union U1 **l_1435[1][2];
                int32_t l_1482 = 0x520ECEE6L;
                uint16_t l_1505[6];
                int i, j;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 2; j++)
                        l_1435[i][j] = &p_2223->g_1303;
                }
                for (i = 0; i < 6; i++)
                    l_1505[i] = 0x7799L;
                l_1419 = ((((safe_rshift_func_int8_t_s_u((((*l_1377) = l_1416) , (((&p_2223->g_153 != ((safe_rshift_func_uint16_t_u_u(l_1419, (safe_mul_func_int8_t_s_s((safe_rshift_func_uint8_t_u_s((safe_div_func_uint8_t_u_u((p_2223->g_203[1] |= (safe_add_func_int64_t_s_s(p_2223->g_1428, ((((l_1413 , ((((void*)0 != &l_1345[0]) > (((((*l_1412) = (safe_div_func_int16_t_s_s((l_1392[1] && ((((*l_1431) = &p_2223->g_741[1][9]) != (void*)0) > l_1413)), (-2L)))) && 0xE5C0L) && l_1413) , l_1407)) <= 0x5786L)) ^ l_1419) & 1L) & l_1419)))), p_2223->g_88)), (*p_29))), l_1357[1])))) , (void*)0)) , FAKE_DIVERGE(p_2223->local_2_offset, get_local_id(2), 10)) ^ l_1356)), 5)) , 0x2A5CL) , 1L) , l_1357[1]);
                for (p_2223->g_634 = 0; (p_2223->g_634 <= 6); p_2223->g_634 += 1)
                { /* block id: 699 */
                    int32_t l_1443 = (-5L);
                    int32_t l_1471 = 8L;
                    uint8_t l_1483 = 0xA7L;
                    int32_t l_1486[6][2][6] = {{{(-1L),0x44AE269EL,0x44AE269EL,(-1L),(-1L),0x44AE269EL},{(-1L),0x44AE269EL,0x44AE269EL,(-1L),(-1L),0x44AE269EL}},{{(-1L),0x44AE269EL,0x44AE269EL,(-1L),(-1L),0x44AE269EL},{(-1L),0x44AE269EL,0x44AE269EL,(-1L),(-1L),0x44AE269EL}},{{(-1L),0x44AE269EL,0x44AE269EL,(-1L),(-1L),0x44AE269EL},{(-1L),0x44AE269EL,0x44AE269EL,(-1L),(-1L),0x44AE269EL}},{{(-1L),0x44AE269EL,0x44AE269EL,(-1L),(-1L),0x44AE269EL},{(-1L),0x44AE269EL,0x44AE269EL,(-1L),(-1L),0x44AE269EL}},{{(-1L),0x44AE269EL,0x44AE269EL,(-1L),(-1L),0x44AE269EL},{(-1L),0x44AE269EL,0x44AE269EL,(-1L),(-1L),0x44AE269EL}},{{(-1L),0x44AE269EL,0x44AE269EL,(-1L),(-1L),0x44AE269EL},{(-1L),0x44AE269EL,0x44AE269EL,(-1L),(-1L),0x44AE269EL}}};
                    int i, j, k;
                    for (p_2223->g_66 = 5; (p_2223->g_66 >= 2); p_2223->g_66 -= 1)
                    { /* block id: 702 */
                        union U1 **l_1434 = &p_2223->g_1303;
                        uint16_t *l_1444 = (void*)0;
                        uint16_t *l_1445 = &p_2223->g_878[2].f0;
                        int32_t l_1454 = (-8L);
                        int i;
                        l_1443 = (safe_mul_func_uint8_t_u_u((l_1434 != l_1435[0][1]), (safe_lshift_func_int8_t_s_u((((void*)0 == (*p_2223->g_486)) ^ (((l_1438 ^ (safe_sub_func_int32_t_s_s((((0x0BL & ((safe_div_func_uint8_t_u_u(((((*l_1445)--) > (safe_sub_func_int8_t_s_s((((*l_1412) |= ((safe_lshift_func_int16_t_s_u((safe_rshift_func_int16_t_s_u((6UL && 0xD013BB642BD82D50L), (p_2223->g_691[p_2223->g_66] != l_1350[p_2223->g_766]))), 2)) ^ l_1454)) >= 0x94C7L), 0L))) , l_1443), 255UL)) > 0x9C220476L)) , l_1454) , l_1410), l_1454))) , l_1443) != 6L)), l_1454))));
                        if (l_1392[2])
                            break;
                    }
                    for (l_1443 = 0; (l_1443 <= 5); l_1443 += 1)
                    { /* block id: 710 */
                        uint16_t *l_1464[2];
                        int32_t l_1484 = 0x02D106D2L;
                        int32_t l_1485 = 1L;
                        union U0 l_1491 = {0};
                        int64_t ***l_1495 = (void*)0;
                        int64_t ***l_1496 = &l_1494;
                        int i, j, k;
                        for (i = 0; i < 2; i++)
                            l_1464[i] = &p_2223->g_88;
                        l_1486[5][0][0] = (l_1485 &= (safe_mul_func_int8_t_s_s((safe_rshift_func_uint16_t_u_u((safe_div_func_int64_t_s_s(((((safe_mul_func_uint16_t_u_u(((*p_2223->g_722) = (((*p_30) = ((l_1443 , l_1419) | l_1419)) >= l_1463)), (!((safe_add_func_uint8_t_u_u((safe_mul_func_int8_t_s_s(((p_2223->g_153 = ((safe_div_func_uint16_t_u_u((l_1471 = 1UL), ((p_2223->g_304[(p_2223->g_766 + 2)][(p_2223->g_634 + 1)][p_2223->g_766] = (safe_mod_func_uint16_t_u_u((safe_mod_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u((((0xC7L < FAKE_DIVERGE(p_2223->group_1_offset, get_group_id(1), 10)) <= l_1419) & 0x00D43FC6256E831EL), 10)), (safe_sub_func_uint32_t_u_u((safe_mod_func_uint32_t_u_u((l_1482 &= 0xDC81900CL), l_1419)), 0xC8F518FBL)))), 65535UL))) , p_2223->g_787[1]))) , 0L)) <= l_1392[3]), l_1357[1])), l_1483)) == l_1392[1])))) < l_1463) <= l_1484) == p_2223->g_878[2].f0), p_2223->g_871[0])), l_1357[0])), l_1356)));
                        l_1486[5][0][0] &= ((l_1392[(p_2223->g_766 + 1)] || 0x7CE1L) , (safe_div_func_int8_t_s_s(((safe_rshift_func_int16_t_s_u((((l_1491 , (1L <= (((safe_add_func_uint16_t_u_u((&l_1346 != ((0x02EDL || (*p_2223->g_722)) , ((*l_1496) = l_1494))), ((void*)0 != p_2223->g_1497))) & 0x15L) & l_1438))) & p_2223->g_787[0]) < l_1498), p_2223->g_190)) != 0xCE7AA1AC81F0827FL), l_1392[0])));
                        l_1392[3] = (safe_mul_func_uint16_t_u_u(((0x88492486521E9021L == l_1407) < (safe_sub_func_int64_t_s_s(l_1357[1], ((safe_lshift_func_int16_t_s_s((l_1505[2] = (-7L)), ((safe_mul_func_int16_t_s_s((safe_rshift_func_int8_t_s_s((safe_div_func_int32_t_s_s(((safe_mul_func_int8_t_s_s(((*p_29) = p_2223->g_787[0]), ((*l_1496) != (void*)0))) < l_1413), 4294967288UL)), 1)), l_1498)) == p_2223->g_304[(p_2223->g_766 + 2)][(p_2223->g_634 + 1)][p_2223->g_766]))) <= l_1486[5][0][0])))), l_1358));
                        return l_1483;
                    }
                }
                for (p_2223->g_190 = 0; (p_2223->g_190 <= 6); p_2223->g_190 += 1)
                { /* block id: 729 */
                    uint64_t *l_1522[10] = {&p_2223->g_273,&p_2223->g_273,&p_2223->g_273,&p_2223->g_273,&p_2223->g_273,&p_2223->g_273,&p_2223->g_273,&p_2223->g_273,&p_2223->g_273,&p_2223->g_273};
                    int32_t l_1525 = 0L;
                    uint8_t l_1539 = 0x7AL;
                    int8_t *l_1540 = &p_2223->g_1062;
                    int i;
                    l_1525 = ((l_1419 = (safe_mod_func_uint32_t_u_u(((*p_29) <= (safe_sub_func_uint8_t_u_u((safe_add_func_uint64_t_u_u(((safe_add_func_uint64_t_u_u(l_1358, l_1438)) , 0x662A470901AA184DL), (--p_2223->g_273))), l_1525))), (((*l_1540) = ((((l_1526 , ((GROUP_DIVERGE(2, 1) <= (safe_lshift_func_int8_t_s_s((((safe_rshift_func_int16_t_s_u(((l_1358 | (0L <= (safe_div_func_int32_t_s_s((safe_mod_func_int8_t_s_s((((((safe_mul_func_int16_t_s_s((safe_sub_func_int32_t_s_s(l_1525, 0L)), l_1539)) <= l_1463) > l_1392[1]) && l_1356) != 1L), l_1419)), l_1413)))) ^ 3L), 6)) , l_1505[4]) ^ l_1358), 0))) , 3UL)) , 0x786EFBF1L) || 4294967286UL) , (*p_29))) && 0x71L)))) >= 254UL);
                }
            }
            for (p_2223->g_64 = 0; (p_2223->g_64 <= 1); p_2223->g_64 += 1)
            { /* block id: 738 */
                int32_t **l_1541[6] = {(void*)0,&p_2223->g_458[2],(void*)0,(void*)0,&p_2223->g_458[2],(void*)0};
                int i;
                l_1542 = &l_1392[1];
                (*p_2223->g_779) = (void*)0;
            }
        }
        return l_1357[1];
    }
    l_1558 &= ((((--(*l_1544)) | ((*l_1547) = l_1356)) & l_1357[3]) >= ((p_2223->g_674[3][2] > (0x15C1604139B94B8DL >= (l_1498 && ((l_1356 || ((void*)0 != p_2223->g_1550)) == ((safe_lshift_func_uint8_t_u_s(((safe_add_func_int8_t_s_s((l_1356 <= p_2223->g_74[0][4][2]), l_1357[4])) <= 0UL), 2)) , l_1358))))) <= 0x5FB3L));
    (*p_2223->g_1559) = &l_1357[3];
    return l_1560;
}


/* ------------------------------------------ */
/* 
 * reads : p_2223->g_136 p_2223->g_779 p_2223->g_787 p_2223->g_90 p_2223->g_77 p_2223->g_674 p_2223->g_66 p_2223->g_721 p_2223->g_722 p_2223->g_88 p_2223->g_797 p_2223->g_871 p_2223->g_878 p_2223->g_334 p_2223->g_757 p_2223->g_78 p_2223->g_894 p_2223->g_910 p_2223->g_64 p_2223->g_741 p_2223->l_comm_values p_2223->g_273 p_2223->g_983 p_2223->g_407 p_2223->g_190 p_2223->g_68 p_2223->g_1003 p_2223->g_601.f0 p_2223->g_153 p_2223->g_1062 p_2223->g_706 p_2223->g_634 p_2223->g_74 p_2223->g_983.f0 p_2223->g_304 p_2223->g_983.f1 p_2223->g_1199 p_2223->g_117.f0 p_2223->g_486 p_2223->g_487 p_2223->g_1302 p_2223->g_1303 p_2223->g_466.f2
 * writes: p_2223->g_407.f1 p_2223->g_458 p_2223->g_466.f2 p_2223->g_787 p_2223->g_796 p_2223->g_90 p_2223->g_77 p_2223->g_706 p_2223->g_203 p_2223->g_871 p_2223->g_634 p_2223->g_66 p_2223->g_78 p_2223->g_692 p_2223->g_76 p_2223->g_88 p_2223->g_64 p_2223->g_741 p_2223->g_797 p_2223->g_136 p_2223->g_190 p_2223->g_878.f0 p_2223->g_983.f0 p_2223->g_983.f1 p_2223->g_721 p_2223->g_1062 p_2223->g_68 p_2223->g_74 p_2223->g_1343
 */
int8_t * func_31(int32_t  p_32, int16_t  p_33, int64_t  p_34, int8_t * p_35, int16_t  p_36, struct S2 * p_2223)
{ /* block id: 296 */
    uint32_t l_772 = 0x8DA1A721L;
    uint32_t *l_775 = &p_2223->g_407.f1;
    int64_t *l_785 = &p_2223->g_136;
    int32_t l_804 = 0x177A61B1L;
    int32_t l_816[5] = {0x032FA8D6L,0x032FA8D6L,0x032FA8D6L,0x032FA8D6L,0x032FA8D6L};
    uint16_t l_839 = 0x5DE1L;
    int16_t l_857 = (-1L);
    int16_t l_859 = 0x59D9L;
    int32_t l_865 = 8L;
    uint8_t l_890 = 0UL;
    uint32_t l_899 = 0xE2C3174EL;
    int16_t l_902 = 0L;
    int32_t **l_974 = &p_2223->g_458[3];
    int8_t l_1009 = 0x3FL;
    int32_t l_1010[4] = {8L,8L,8L,8L};
    int64_t l_1022 = 0x73EA9396303C3A0FL;
    int64_t l_1029 = 0x1671E5BEB4A2CF2AL;
    int16_t l_1032[1][5];
    uint16_t l_1040[3][4] = {{0x5E29L,0x5E29L,0x5E29L,0x5E29L},{0x5E29L,0x5E29L,0x5E29L,0x5E29L},{0x5E29L,0x5E29L,0x5E29L,0x5E29L}};
    uint8_t l_1060[2];
    uint64_t l_1180 = 0x4CF032AD405589E3L;
    uint16_t **l_1211 = (void*)0;
    uint16_t ***l_1210[1][9] = {{&l_1211,&l_1211,&l_1211,&l_1211,&l_1211,&l_1211,&l_1211,&l_1211,&l_1211}};
    int8_t l_1261 = 0L;
    int32_t *l_1295 = &p_2223->g_68;
    union U1 **l_1323 = (void*)0;
    uint8_t **l_1324 = &p_2223->g_289;
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 5; j++)
            l_1032[i][j] = 0x55B9L;
    }
    for (i = 0; i < 2; i++)
        l_1060[i] = 3UL;
    if ((safe_mul_func_int16_t_s_s(l_772, (((safe_sub_func_int64_t_s_s(1L, 0x6E5A9609917A9E15L)) , GROUP_DIVERGE(2, 1)) && ((*l_775) = p_2223->g_136)))))
    { /* block id: 298 */
        int32_t *l_778 = &p_2223->g_78[1];
        int32_t l_847[2];
        int32_t l_849 = (-1L);
        int64_t *l_891 = &p_2223->g_136;
        uint16_t *l_909 = (void*)0;
        int32_t l_1007[1][1];
        int64_t l_1011 = 0x57997564BA2D4BE3L;
        uint16_t l_1012[5] = {0x9712L,0x9712L,0x9712L,0x9712L,0x9712L};
        int32_t *l_1018 = &l_865;
        int32_t *l_1019 = (void*)0;
        int32_t *l_1020 = &l_816[3];
        int32_t *l_1021 = (void*)0;
        int32_t *l_1023 = &l_816[3];
        int32_t *l_1024[1];
        uint16_t l_1025 = 1UL;
        int i, j;
        for (i = 0; i < 2; i++)
            l_847[i] = 0x11F31449L;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 1; j++)
                l_1007[i][j] = 0x0E75BA6CL;
        }
        for (i = 0; i < 1; i++)
            l_1024[i] = (void*)0;
lbl_941:
        for (p_33 = (-5); (p_33 > (-5)); p_33 = safe_add_func_uint16_t_u_u(p_33, 5))
        { /* block id: 301 */
            uint64_t l_782 = 8UL;
            int64_t *l_788 = &p_2223->g_90;
            int32_t l_799 = 0x040EFFCAL;
            int32_t l_803 = (-8L);
            int32_t l_851 = 9L;
            int32_t l_852 = 0x6445F77FL;
            int32_t l_854 = 0x069D395CL;
            int32_t l_855 = (-9L);
            int32_t l_856[10] = {0x0796AC93L,0x0796AC93L,0x0796AC93L,0x0796AC93L,0x0796AC93L,0x0796AC93L,0x0796AC93L,0x0796AC93L,0x0796AC93L,0x0796AC93L};
            int i;
            (*p_2223->g_779) = (l_778 = (void*)0);
            for (p_2223->g_466.f2 = 0; (p_2223->g_466.f2 >= 39); p_2223->g_466.f2 = safe_add_func_uint32_t_u_u(p_2223->g_466.f2, 3))
            { /* block id: 306 */
                int64_t *l_784 = &p_2223->g_90;
                int64_t **l_783 = &l_784;
                uint32_t *l_786 = &p_2223->g_787[0];
                uint32_t *l_798 = &p_2223->g_797;
                int32_t l_812 = (-1L);
                int32_t l_836 = 1L;
                int32_t l_840 = 0L;
                int32_t l_846 = (-1L);
                int32_t l_848 = 9L;
                int32_t l_850[4] = {1L,1L,1L,1L};
                int8_t l_853[7] = {0L,0L,0L,0L,0L,0L,0L};
                int i;
                if (((0x3C392FA5E5BBB603L == (l_782 || (((*l_783) = &p_2223->g_90) != (((*l_786) ^= (l_785 == &p_2223->g_136)) , l_788)))) > 0x494C6D2AEAA7A983L))
                { /* block id: 309 */
                    uint32_t **l_795[9] = {&l_775,(void*)0,&l_775,&l_775,(void*)0,&l_775,&l_775,(void*)0,&l_775};
                    int32_t l_802 = (-4L);
                    int i;
                    l_803 &= ((safe_add_func_int8_t_s_s((safe_div_func_uint8_t_u_u(0xF6L, l_772)), (safe_add_func_int64_t_s_s((l_799 |= ((*l_784) ^= ((p_2223->g_796[0][4] = l_786) == (l_798 = &p_2223->g_797)))), (((0x65125C44AF5041DBL < (&p_2223->g_797 != (void*)0)) != ((-1L) && ((safe_lshift_func_uint16_t_u_s(((((void*)0 == &p_2223->g_304[0][0][1]) ^ l_802) && 0x9AL), p_33)) == l_802))) >= GROUP_DIVERGE(1, 1)))))) != 0xF4DEL);
                }
                else
                { /* block id: 315 */
                    int16_t l_811[9][4] = {{0x02CEL,0x02CEL,5L,0x0E46L},{0x02CEL,0x02CEL,5L,0x0E46L},{0x02CEL,0x02CEL,5L,0x0E46L},{0x02CEL,0x02CEL,5L,0x0E46L},{0x02CEL,0x02CEL,5L,0x0E46L},{0x02CEL,0x02CEL,5L,0x0E46L},{0x02CEL,0x02CEL,5L,0x0E46L},{0x02CEL,0x02CEL,5L,0x0E46L},{0x02CEL,0x02CEL,5L,0x0E46L}};
                    int32_t l_818 = 2L;
                    uint32_t *l_827 = &p_2223->g_787[0];
                    int i, j;
                    for (p_2223->g_77 = 4; (p_2223->g_77 >= 0); p_2223->g_77 -= 1)
                    { /* block id: 318 */
                        uint8_t *l_815 = &p_2223->g_706;
                        uint8_t *l_817 = &p_2223->g_203[2];
                        int32_t *l_837 = (void*)0;
                        int32_t *l_838 = &l_818;
                        int i, j;
                        l_804 &= p_2223->g_674[(p_2223->g_77 + 1)][p_2223->g_77];
                        l_840 &= (safe_mod_func_int8_t_s_s(((safe_rshift_func_int8_t_s_u((*p_35), (safe_lshift_func_uint16_t_u_s((((l_812 = l_811[2][1]) , l_804) != (((l_818 = (safe_lshift_func_uint8_t_u_u(((*l_817) = (l_816[3] ^= ((*l_815) = GROUP_DIVERGE(2, 1)))), 5))) , (safe_rshift_func_int16_t_s_u(((safe_mul_func_int8_t_s_s(((((safe_rshift_func_int8_t_s_u(p_2223->g_674[(p_2223->g_77 + 1)][p_2223->g_77], 1)) , ((0UL >= (safe_lshift_func_uint8_t_u_u((((*l_788) ^= ((((l_827 != (void*)0) ^ ((*l_838) &= (safe_div_func_uint64_t_u_u((0x1C32B1DBF5F450D4L && (safe_div_func_uint16_t_u_u(((safe_lshift_func_uint8_t_u_s((((safe_mod_func_uint16_t_u_u(((p_33 && p_33) , 65535UL), (**p_2223->g_721))) , l_836) != FAKE_DIVERGE(p_2223->group_1_offset, get_group_id(1), 10)), l_816[1])) > 65535UL), 0x0C0CL))), 0xA5054C244CF4B827L)))) , (**p_2223->g_721)) == p_32)) ^ p_34), 0))) , p_2223->g_797)) | FAKE_DIVERGE(p_2223->group_0_offset, get_group_id(0), 10)) || 0UL), 0x0AL)) , p_32), p_33))) & 254UL)), p_36)))) >= 0x00L), l_839));
                    }
                }
                for (l_772 = 24; (l_772 == 25); l_772 = safe_add_func_uint8_t_u_u(l_772, 6))
                { /* block id: 332 */
                    int32_t *l_843 = &p_2223->g_78[0];
                    int32_t *l_844 = &l_836;
                    int32_t *l_845[9];
                    int64_t l_858 = 1L;
                    uint32_t l_860 = 0xFE063321L;
                    int i;
                    for (i = 0; i < 9; i++)
                        l_845[i] = &p_2223->g_78[0];
                    l_860--;
                    for (l_859 = 0; (l_859 != (-4)); l_859 = safe_sub_func_int8_t_s_s(l_859, 5))
                    { /* block id: 336 */
                        int8_t l_866[8][8][4] = {{{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L}},{{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L}},{{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L}},{{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L}},{{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L}},{{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L}},{{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L}},{{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L},{(-1L),2L,1L,1L}}};
                        int32_t l_867 = 0L;
                        int32_t l_868 = 0x370F9CC2L;
                        int32_t l_869[6][8] = {{6L,(-10L),0x533C18A8L,(-10L),6L,6L,(-10L),0x533C18A8L},{6L,(-10L),0x533C18A8L,(-10L),6L,6L,(-10L),0x533C18A8L},{6L,(-10L),0x533C18A8L,(-10L),6L,6L,(-10L),0x533C18A8L},{6L,(-10L),0x533C18A8L,(-10L),6L,6L,(-10L),0x533C18A8L},{6L,(-10L),0x533C18A8L,(-10L),6L,6L,(-10L),0x533C18A8L},{6L,(-10L),0x533C18A8L,(-10L),6L,6L,(-10L),0x533C18A8L}};
                        int8_t l_870 = 1L;
                        int i, j, k;
                        p_2223->g_871[0]--;
                    }
                }
                if (p_32)
                    continue;
            }
        }
        for (p_2223->g_634 = 0; (p_2223->g_634 != 19); ++p_2223->g_634)
        { /* block id: 345 */
            int32_t l_884 = (-1L);
            union U0 *l_895[6][2][7] = {{{&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407},{&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407}},{{&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407},{&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407}},{{&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407},{&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407}},{{&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407},{&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407}},{{&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407},{&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407}},{{&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407},{&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407,&p_2223->g_407}}};
            int32_t *l_932[7] = {&l_884,&l_884,&l_884,&l_884,&l_884,&l_884,&l_884};
            int32_t *l_933 = &l_816[3];
            int32_t ***l_975 = &l_974;
            int64_t *l_976[2][6][9] = {{{&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,(void*)0,&p_2223->g_90,(void*)0,&p_2223->g_90},{&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,(void*)0,&p_2223->g_90,(void*)0,&p_2223->g_90},{&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,(void*)0,&p_2223->g_90,(void*)0,&p_2223->g_90},{&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,(void*)0,&p_2223->g_90,(void*)0,&p_2223->g_90},{&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,(void*)0,&p_2223->g_90,(void*)0,&p_2223->g_90},{&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,(void*)0,&p_2223->g_90,(void*)0,&p_2223->g_90}},{{&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,(void*)0,&p_2223->g_90,(void*)0,&p_2223->g_90},{&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,(void*)0,&p_2223->g_90,(void*)0,&p_2223->g_90},{&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,(void*)0,&p_2223->g_90,(void*)0,&p_2223->g_90},{&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,(void*)0,&p_2223->g_90,(void*)0,&p_2223->g_90},{&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,(void*)0,&p_2223->g_90,(void*)0,&p_2223->g_90},{&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,(void*)0,&p_2223->g_90,(void*)0,&p_2223->g_90}}};
            uint8_t l_1006 = 0xB1L;
            int i, j, k;
            for (l_859 = 0; (l_859 <= 0); l_859 += 1)
            { /* block id: 348 */
                uint8_t *l_879 = (void*)0;
                uint8_t *l_880[9] = {&p_2223->g_766,&p_2223->g_766,&p_2223->g_766,&p_2223->g_766,&p_2223->g_766,&p_2223->g_766,&p_2223->g_766,&p_2223->g_766,&p_2223->g_766};
                int32_t l_881 = (-4L);
                uint16_t *l_887 = &l_839;
                int32_t *l_892 = &p_2223->g_78[0];
                int i;
                (*l_892) &= (safe_div_func_uint16_t_u_u((((((*p_35) = (p_2223->g_878[2] , ((p_2223->g_334[(l_859 + 4)] != ((((p_2223->g_757[l_859] < (!(l_881 = GROUP_DIVERGE(2, 1)))) <= (safe_mul_func_int16_t_s_s((0L ^ (FAKE_DIVERGE(p_2223->global_1_offset, get_global_id(1), 10) , 0x30L)), l_884))) > p_34) < (safe_mul_func_uint16_t_u_u(((*l_887) = p_33), ((safe_rshift_func_uint8_t_u_s(l_890, 3)) & l_859))))) == 0L))) , l_891) != (void*)0) , (*p_2223->g_722)), 0x0406L));
                for (p_33 = 0; (p_33 >= 0); p_33 -= 1)
                { /* block id: 355 */
                    int32_t *l_893 = &l_847[0];
                    (*p_2223->g_894) = l_893;
                    for (p_2223->g_706 = 0; (p_2223->g_706 <= 0); p_2223->g_706 += 1)
                    { /* block id: 359 */
                        union U0 **l_896 = &p_2223->g_692;
                        int32_t l_897 = (-7L);
                        int32_t *l_898 = (void*)0;
                        if (p_32)
                            break;
                        (*l_896) = l_895[5][1][5];
                        --l_899;
                        (*l_893) = (l_902 || (p_2223->g_88 , ((safe_add_func_int64_t_s_s(0L, (safe_add_func_uint64_t_u_u(p_34, 0L)))) != ((((p_32 == ((safe_mod_func_uint32_t_u_u((l_909 != (void*)0), ((*l_775) = l_816[3]))) , p_36)) <= p_2223->g_910) | 0x7478355819C4BA55L) && (-10L)))));
                    }
                }
                for (p_2223->g_466.f2 = 0; (p_2223->g_466.f2 <= 2); p_2223->g_466.f2 += 1)
                { /* block id: 369 */
                    int16_t *l_915 = &p_2223->g_76;
                    int32_t *l_925 = &p_2223->g_304[0][0][1];
                    int32_t l_938 = 0L;
                    if (((*l_892) = (safe_mul_func_uint16_t_u_u(((p_32 & ((safe_rshift_func_int16_t_s_u((l_865 & ((*l_915) = 1L)), 4)) > ((safe_lshift_func_uint16_t_u_s((safe_sub_func_uint64_t_u_u((((void*)0 != p_35) == l_884), 18446744073709551611UL)), 12)) , (safe_rshift_func_int8_t_s_u((safe_add_func_int8_t_s_s(((*p_35) = (!(safe_unary_minus_func_int64_t_s(l_804)))), ((void*)0 != l_925))), 0))))) || l_899), p_32))))
                    { /* block id: 373 */
                        int32_t **l_930 = &p_2223->g_458[2];
                        int32_t **l_931[10][3] = {{&p_2223->g_458[2],&l_892,&p_2223->g_458[2]},{&p_2223->g_458[2],&l_892,&p_2223->g_458[2]},{&p_2223->g_458[2],&l_892,&p_2223->g_458[2]},{&p_2223->g_458[2],&l_892,&p_2223->g_458[2]},{&p_2223->g_458[2],&l_892,&p_2223->g_458[2]},{&p_2223->g_458[2],&l_892,&p_2223->g_458[2]},{&p_2223->g_458[2],&l_892,&p_2223->g_458[2]},{&p_2223->g_458[2],&l_892,&p_2223->g_458[2]},{&p_2223->g_458[2],&l_892,&p_2223->g_458[2]},{&p_2223->g_458[2],&l_892,&p_2223->g_458[2]}};
                        union U1 *l_940 = &p_2223->g_878[2];
                        union U1 **l_939 = &l_940;
                        int i, j;
                        (*l_892) = (safe_sub_func_uint8_t_u_u(((safe_div_func_uint16_t_u_u(((**p_2223->g_721) = ((((l_932[3] = &p_32) == (l_933 = &l_804)) , ((*l_887) |= p_33)) == ((safe_mul_func_int8_t_s_s(3L, (safe_mul_func_int16_t_s_s((p_32 , 0x069AL), 0x4433L)))) != (9L <= ((*p_35) & 0x23L))))), p_32)) || l_938), (*p_35)));
                        (*l_939) = (void*)0;
                    }
                    else
                    { /* block id: 380 */
                        if (p_2223->g_797)
                            goto lbl_941;
                        return p_35;
                    }
                    for (l_902 = 2; (l_902 >= 0); l_902 -= 1)
                    { /* block id: 386 */
                        if (l_847[0])
                            break;
                        (*l_933) ^= p_36;
                        if (p_2223->g_77)
                            goto lbl_941;
                    }
                    for (l_890 = 0; (l_890 <= 2); l_890 += 1)
                    { /* block id: 393 */
                        uint64_t *l_964[2][10];
                        int64_t *l_971 = &p_2223->g_90;
                        int8_t *l_972 = &p_2223->g_741[1][5];
                        int i, j;
                        for (i = 0; i < 2; i++)
                        {
                            for (j = 0; j < 10; j++)
                                l_964[i][j] = &p_2223->g_190;
                        }
                        l_938 &= (0x2E810DA2L ^ (safe_add_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_u(((*l_887) = (safe_mul_func_int8_t_s_s(((((0x7466L == (safe_mod_func_int32_t_s_s(((((*p_35) , GROUP_DIVERGE(2, 1)) & ((safe_sub_func_int64_t_s_s(l_865, p_33)) || (safe_mod_func_int32_t_s_s(((l_816[3] >= ((((safe_lshift_func_int8_t_s_u(0x08L, 1)) < (safe_mul_func_uint8_t_u_u(((((*l_972) = (((*l_915) = (safe_rshift_func_int8_t_s_u((-1L), 7))) > ((p_2223->g_64++) != ((((*l_971) = (safe_sub_func_int8_t_s_s(((safe_mod_func_uint16_t_u_u((((**p_2223->g_721) = ((*p_35) <= FAKE_DIVERGE(p_2223->local_2_offset, get_local_id(2), 10))) == p_2223->g_741[0][3]), p_2223->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2223->tid, 15))])) <= 0x6E98L), GROUP_DIVERGE(2, 1)))) && (*l_892)) && 0x557DED3D006408D1L)))) < 0UL) & 0x5C08F857EBB5CED5L), 0x54L))) , 0xCBL) ^ 3L)) == (*l_892)), p_34)))) && (*l_933)), l_899))) < 0x042E43EA8C262CFAL) , p_36) & p_36), 6L))), p_32)), FAKE_DIVERGE(p_2223->global_0_offset, get_global_id(0), 10))));
                        return l_880[4];
                    }
                }
                for (p_2223->g_797 = 0; (p_2223->g_797 <= 2); p_2223->g_797 += 1)
                { /* block id: 406 */
                    int32_t **l_973 = &p_2223->g_458[4];
                    (*l_973) = (void*)0;
                }
            }
            if (((p_2223->g_273 , (18446744073709551615UL <= (p_2223->g_90 = (&l_778 == ((*l_975) = l_974))))) != (p_36 > p_34)))
            { /* block id: 412 */
                for (p_2223->g_136 = 15; (p_2223->g_136 < (-17)); p_2223->g_136 = safe_sub_func_uint64_t_u_u(p_2223->g_136, 5))
                { /* block id: 415 */
                    (**l_975) = (void*)0;
                }
            }
            else
            { /* block id: 418 */
                int64_t *l_984 = &p_2223->g_90;
                int32_t **l_992[3][4][10] = {{{&l_778,&l_933,(void*)0,&l_932[0],&l_933,&l_932[0],(void*)0,&l_933,&l_778,(void*)0},{&l_778,&l_933,(void*)0,&l_932[0],&l_933,&l_932[0],(void*)0,&l_933,&l_778,(void*)0},{&l_778,&l_933,(void*)0,&l_932[0],&l_933,&l_932[0],(void*)0,&l_933,&l_778,(void*)0},{&l_778,&l_933,(void*)0,&l_932[0],&l_933,&l_932[0],(void*)0,&l_933,&l_778,(void*)0}},{{&l_778,&l_933,(void*)0,&l_932[0],&l_933,&l_932[0],(void*)0,&l_933,&l_778,(void*)0},{&l_778,&l_933,(void*)0,&l_932[0],&l_933,&l_932[0],(void*)0,&l_933,&l_778,(void*)0},{&l_778,&l_933,(void*)0,&l_932[0],&l_933,&l_932[0],(void*)0,&l_933,&l_778,(void*)0},{&l_778,&l_933,(void*)0,&l_932[0],&l_933,&l_932[0],(void*)0,&l_933,&l_778,(void*)0}},{{&l_778,&l_933,(void*)0,&l_932[0],&l_933,&l_932[0],(void*)0,&l_933,&l_778,(void*)0},{&l_778,&l_933,(void*)0,&l_932[0],&l_933,&l_932[0],(void*)0,&l_933,&l_778,(void*)0},{&l_778,&l_933,(void*)0,&l_932[0],&l_933,&l_932[0],(void*)0,&l_933,&l_778,(void*)0},{&l_778,&l_933,(void*)0,&l_932[0],&l_933,&l_932[0],(void*)0,&l_933,&l_778,(void*)0}}};
                uint64_t *l_993 = (void*)0;
                uint64_t *l_994 = &p_2223->g_64;
                uint64_t *l_995 = &p_2223->g_190;
                uint32_t *l_1008 = &p_2223->g_787[0];
                int i, j, k;
                p_32 = (safe_mul_func_int8_t_s_s(((*p_35) = (0xD2D17DF4L != ((safe_rshift_func_int16_t_s_s(((p_2223->g_983 , &p_2223->g_90) == (p_2223->g_407 , l_984)), 4)) , (((safe_sub_func_uint16_t_u_u(p_34, (*l_933))) == p_32) >= (safe_rshift_func_int16_t_s_s(((safe_unary_minus_func_int16_t_s((((**p_2223->g_721) ^= ((l_884 = ((safe_div_func_int64_t_s_s((((*l_995) |= ((*l_994) = (((((l_932[6] = &p_32) != &l_847[1]) == p_34) | p_32) == p_2223->g_66))) >= 0UL), 0xD57F782FED2286EEL)) != p_33)) != p_33)) && 0UL))) && (*p_35)), p_2223->g_77)))))), 0x66L));
                p_32 = (((((*l_1008) &= ((safe_rshift_func_int8_t_s_u(p_2223->g_68, (l_1007[0][0] &= (safe_mul_func_int8_t_s_s(((safe_add_func_int64_t_s_s((((safe_unary_minus_func_int16_t_s(p_2223->g_1003)) <= p_34) == p_36), (safe_mul_func_uint16_t_u_u(0x51A8L, p_34)))) >= 0x14B2CEFFL), (0L >= (((l_1006 == FAKE_DIVERGE(p_2223->group_1_offset, get_group_id(1), 10)) < 9L) , p_34))))))) >= 0xECF88AF06822C0CDL)) , p_34) , p_2223->g_334[0]) , p_36);
                ++l_1012[0];
                for (p_2223->g_190 = 0; (p_2223->g_190 <= 5); p_2223->g_190 += 1)
                { /* block id: 432 */
                    uint32_t l_1015 = 0UL;
                    l_1015++;
                }
            }
            (*l_974) = &l_884;
        }
        l_1025++;
        return &p_2223->g_153;
    }
    else
    { /* block id: 440 */
        int32_t *l_1028 = (void*)0;
        int32_t *l_1030[5][9] = {{&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3]},{&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3]},{&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3]},{&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3]},{&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3],&p_2223->g_78[3]}};
        int16_t l_1031[2][7][10] = {{{6L,6L,6L,6L,6L,6L,6L,6L,6L,6L},{6L,6L,6L,6L,6L,6L,6L,6L,6L,6L},{6L,6L,6L,6L,6L,6L,6L,6L,6L,6L},{6L,6L,6L,6L,6L,6L,6L,6L,6L,6L},{6L,6L,6L,6L,6L,6L,6L,6L,6L,6L},{6L,6L,6L,6L,6L,6L,6L,6L,6L,6L},{6L,6L,6L,6L,6L,6L,6L,6L,6L,6L}},{{6L,6L,6L,6L,6L,6L,6L,6L,6L,6L},{6L,6L,6L,6L,6L,6L,6L,6L,6L,6L},{6L,6L,6L,6L,6L,6L,6L,6L,6L,6L},{6L,6L,6L,6L,6L,6L,6L,6L,6L,6L},{6L,6L,6L,6L,6L,6L,6L,6L,6L,6L},{6L,6L,6L,6L,6L,6L,6L,6L,6L,6L},{6L,6L,6L,6L,6L,6L,6L,6L,6L,6L}}};
        uint8_t l_1033 = 246UL;
        uint64_t *l_1059 = &p_2223->g_64;
        uint32_t l_1061 = 5UL;
        uint32_t l_1063 = 0x7AD43687L;
        int16_t l_1103 = 0x6012L;
        uint16_t *l_1154[2];
        uint16_t **l_1153 = &l_1154[0];
        uint8_t l_1245 = 0xEBL;
        int32_t l_1264 = 0x4F017DFBL;
        union U0 *l_1275 = &p_2223->g_407;
        uint8_t **l_1283[5];
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_1154[i] = &l_1040[0][3];
        for (i = 0; i < 5; i++)
            l_1283[i] = (void*)0;
        --l_1033;
        if ((safe_sub_func_int32_t_s_s((safe_mul_func_uint8_t_u_u(l_1040[0][3], (((safe_add_func_uint16_t_u_u(0UL, p_36)) ^ l_1029) , ((safe_add_func_int16_t_s_s((safe_mul_func_int8_t_s_s((((p_2223->g_601.f0 <= (p_2223->g_90 = (safe_sub_func_int16_t_s_s((safe_sub_func_uint64_t_u_u(((*l_1059) = ((((void*)0 != &p_2223->g_304[0][0][1]) == p_34) ^ (((safe_div_func_int16_t_s_s(((safe_sub_func_int64_t_s_s((safe_mul_func_uint8_t_u_u((safe_mul_func_int8_t_s_s(p_2223->g_64, 0x0CL)), p_34)), 5UL)) , p_2223->g_153), p_34)) | 0x6052L) , 0x25577B4E0C345B52L))), 0x78818C696BFE160BL)), l_1060[0])))) < l_1061) , (-6L)), p_2223->g_1062)), p_33)) == 0x6C142261L)))), 0x1E64A691L)))
        { /* block id: 444 */
            uint8_t l_1068 = 0x44L;
            --l_1063;
            (*l_974) = l_1028;
            for (p_2223->g_706 = 24; (p_2223->g_706 == 36); p_2223->g_706 = safe_add_func_int32_t_s_s(p_2223->g_706, 3))
            { /* block id: 449 */
                uint8_t l_1078 = 5UL;
                uint32_t *l_1079 = (void*)0;
                int32_t l_1099 = 0x06EC9A47L;
                --l_1068;
                for (p_2223->g_90 = (-27); (p_2223->g_90 != 28); p_2223->g_90++)
                { /* block id: 453 */
                    uint16_t l_1075[3][10][2] = {{{0x9DB6L,65526UL},{0x9DB6L,65526UL},{0x9DB6L,65526UL},{0x9DB6L,65526UL},{0x9DB6L,65526UL},{0x9DB6L,65526UL},{0x9DB6L,65526UL},{0x9DB6L,65526UL},{0x9DB6L,65526UL},{0x9DB6L,65526UL}},{{0x9DB6L,65526UL},{0x9DB6L,65526UL},{0x9DB6L,65526UL},{0x9DB6L,65526UL},{0x9DB6L,65526UL},{0x9DB6L,65526UL},{0x9DB6L,65526UL},{0x9DB6L,65526UL},{0x9DB6L,65526UL},{0x9DB6L,65526UL}},{{0x9DB6L,65526UL},{0x9DB6L,65526UL},{0x9DB6L,65526UL},{0x9DB6L,65526UL},{0x9DB6L,65526UL},{0x9DB6L,65526UL},{0x9DB6L,65526UL},{0x9DB6L,65526UL},{0x9DB6L,65526UL},{0x9DB6L,65526UL}}};
                    int i, j, k;
                    if ((safe_div_func_int8_t_s_s(l_1075[1][9][0], (safe_mod_func_int16_t_s_s((246UL & (p_33 ^ (((*p_35) = (l_1078 < p_32)) >= FAKE_DIVERGE(p_2223->group_0_offset, get_group_id(0), 10)))), l_1078)))))
                    { /* block id: 455 */
                        if (p_32)
                            break;
                        p_32 = ((void*)0 == l_1079);
                    }
                    else
                    { /* block id: 458 */
                        int64_t **l_1082 = (void*)0;
                        uint16_t *l_1091 = &p_2223->g_878[2].f0;
                        uint8_t *l_1098 = &l_1060[0];
                        int32_t **l_1100 = &l_1030[1][2];
                        l_1099 |= (safe_add_func_uint16_t_u_u(((l_1082 == (void*)0) ^ (safe_lshift_func_uint8_t_u_s(((*l_1098) |= (l_1078 < ((safe_mod_func_uint16_t_u_u(((~((safe_sub_func_int64_t_s_s(l_1075[1][9][0], ((l_1075[1][7][0] > ((*l_1091) = ((**p_2223->g_721)--))) , l_1078))) >= (safe_sub_func_int8_t_s_s(((*p_35) = (((++p_2223->g_634) != (0x1A44L ^ p_2223->g_74[1][2][4])) , (safe_add_func_uint32_t_u_u(0x89ADB9A2L, p_34)))), l_1078)))) > 2UL), p_34)) <= 1L))), l_1068))), l_1068));
                        if (p_33)
                            break;
                        (*l_1100) = ((*l_974) = &p_32);
                        (*l_974) = (*l_1100);
                    }
                }
            }
        }
        else
        { /* block id: 472 */
            uint32_t *l_1109 = (void*)0;
            uint32_t *l_1117 = &p_2223->g_797;
            int32_t l_1130 = (-9L);
            union U1 *l_1176 = &p_2223->g_466;
            for (p_2223->g_983.f0 = 0; (p_2223->g_983.f0 != 58); ++p_2223->g_983.f0)
            { /* block id: 475 */
                int8_t l_1104[7][10][3] = {{{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L}},{{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L}},{{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L}},{{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L}},{{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L}},{{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L}},{{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L},{9L,0x40L,0x70L}}};
                int i, j, k;
                l_1104[2][6][0] = (p_32 ^= (4UL == ((*l_1059) ^= l_1103)));
                if (p_32)
                    continue;
                for (p_2223->g_190 = 0; (p_2223->g_190 <= 1); p_2223->g_190 += 1)
                { /* block id: 482 */
                    uint32_t *l_1114 = &p_2223->g_871[0];
                    uint32_t **l_1118 = (void*)0;
                    uint32_t **l_1119 = &l_775;
                    int32_t l_1124 = (-4L);
                    l_1124 = (p_32 ^= (safe_div_func_int32_t_s_s(((safe_mod_func_uint64_t_u_u(((void*)0 == l_1109), (safe_add_func_int64_t_s_s((safe_sub_func_uint32_t_u_u(((*l_1114)++), ((l_1117 == ((*l_1119) = l_1114)) == 18446744073709551615UL))), ((--(*l_1059)) && (safe_mul_func_uint8_t_u_u(l_1104[0][8][1], l_1124))))))) , 0x43ED888CL), ((*p_35) && (*p_35)))));
                    for (l_1033 = 0; (l_1033 <= 0); l_1033 += 1)
                    { /* block id: 490 */
                        uint64_t l_1125 = 0UL;
                        int i, j, k;
                        l_1125--;
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        p_2223->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 15)), permutations[(safe_mod_func_uint32_t_u_u(((p_2223->g_304[p_2223->g_190][(l_1033 + 1)][p_2223->g_190] < p_2223->g_304[l_1033][(p_2223->g_190 + 5)][p_2223->g_190]) && 0x29L), 10))][(safe_mod_func_uint32_t_u_u(p_2223->tid, 15))]));
                        return &p_2223->g_66;
                    }
                    for (l_804 = 0; (l_804 <= 1); l_804 += 1)
                    { /* block id: 499 */
                        return p_35;
                    }
                    for (p_2223->g_66 = 0; (p_2223->g_66 <= 1); p_2223->g_66 += 1)
                    { /* block id: 504 */
                        int64_t l_1129[7][8][4] = {{{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L}},{{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L}},{{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L}},{{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L}},{{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L}},{{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L}},{{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L},{0x4A036F81E2AF98D3L,(-10L),(-10L),0x4A036F81E2AF98D3L}}};
                        uint16_t l_1131 = 0UL;
                        int i, j, k;
                        --l_1131;
                    }
                }
                for (p_2223->g_88 = 10; (p_2223->g_88 < 9); --p_2223->g_88)
                { /* block id: 510 */
                    for (l_839 = 0; (l_839 != 24); l_839 = safe_add_func_int32_t_s_s(l_839, 9))
                    { /* block id: 513 */
                        uint8_t l_1138[4][1][7] = {{{0xA1L,0x15L,0xA1L,0xA1L,0x15L,0xA1L,0xA1L}},{{0xA1L,0x15L,0xA1L,0xA1L,0x15L,0xA1L,0xA1L}},{{0xA1L,0x15L,0xA1L,0xA1L,0x15L,0xA1L,0xA1L}},{{0xA1L,0x15L,0xA1L,0xA1L,0x15L,0xA1L,0xA1L}}};
                        int i, j, k;
                        (*l_974) = (void*)0;
                        l_1138[2][0][0]--;
                    }
                    l_1130 = (safe_mod_func_int8_t_s_s(0x04L, (safe_mul_func_int8_t_s_s((GROUP_DIVERGE(0, 1) >= 4294967289UL), (safe_lshift_func_uint16_t_u_s((**p_2223->g_721), 1))))));
                }
            }
            for (p_2223->g_983.f1 = 0; (p_2223->g_983.f1 != 19); ++p_2223->g_983.f1)
            { /* block id: 522 */
                uint16_t l_1157 = 65535UL;
                for (p_32 = 0; (p_32 == 11); p_32++)
                { /* block id: 525 */
                    uint8_t l_1177 = 0xBDL;
                    for (l_857 = 9; (l_857 == (-19)); l_857--)
                    { /* block id: 528 */
                        uint16_t ***l_1155 = (void*)0;
                        uint16_t ***l_1156 = &l_1153;
                        union U1 *l_1173 = &p_2223->g_983;
                        union U1 **l_1172 = &l_1173;
                        int32_t l_1178 = 0x516712B1L;
                        uint8_t *l_1179[4][4][3] = {{{(void*)0,&l_890,&p_2223->g_203[0]},{(void*)0,&l_890,&p_2223->g_203[0]},{(void*)0,&l_890,&p_2223->g_203[0]},{(void*)0,&l_890,&p_2223->g_203[0]}},{{(void*)0,&l_890,&p_2223->g_203[0]},{(void*)0,&l_890,&p_2223->g_203[0]},{(void*)0,&l_890,&p_2223->g_203[0]},{(void*)0,&l_890,&p_2223->g_203[0]}},{{(void*)0,&l_890,&p_2223->g_203[0]},{(void*)0,&l_890,&p_2223->g_203[0]},{(void*)0,&l_890,&p_2223->g_203[0]},{(void*)0,&l_890,&p_2223->g_203[0]}},{{(void*)0,&l_890,&p_2223->g_203[0]},{(void*)0,&l_890,&p_2223->g_203[0]},{(void*)0,&l_890,&p_2223->g_203[0]},{(void*)0,&l_890,&p_2223->g_203[0]}}};
                        int i, j, k;
                        l_1028 = &p_32;
                        p_2223->g_721 = ((*l_1156) = l_1153);
                        l_1180 &= (+(l_1157 & (safe_lshift_func_uint8_t_u_s((p_2223->g_706 = (p_36 & (safe_div_func_uint32_t_u_u(((safe_mod_func_uint8_t_u_u((((safe_lshift_func_int8_t_s_s((safe_lshift_func_int16_t_s_s(((safe_add_func_int8_t_s_s(p_2223->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2223->tid, 15))], (((safe_sub_func_int16_t_s_s(0x718FL, (((((*l_1172) = &p_2223->g_878[2]) == (((&l_1060[0] == p_35) ^ ((p_36 > ((safe_sub_func_uint8_t_u_u(p_33, (*p_35))) && (*p_35))) != 0x1EL)) , l_1176)) , l_1177) < p_36))) != (*p_35)) , l_1178))) && l_1178), 1)), l_1040[0][3])) | 7L) && 1UL), p_34)) , p_34), p_33)))), 6))));
                        (*l_974) = &p_32;
                    }
                }
            }
            return p_35;
        }
        for (l_1063 = 14; (l_1063 >= 16); l_1063 = safe_add_func_int64_t_s_s(l_1063, 1))
        { /* block id: 543 */
            int32_t l_1198[3];
            int32_t l_1202 = (-1L);
            int16_t l_1203 = 6L;
            int32_t l_1204 = 1L;
            uint8_t l_1254 = 0xABL;
            uint8_t ***l_1257 = &p_2223->g_288;
            uint64_t **l_1280 = (void*)0;
            int32_t *l_1286 = &p_2223->g_304[0][0][1];
            int i;
            for (i = 0; i < 3; i++)
                l_1198[i] = 0x0EB8C315L;
            for (p_2223->g_1062 = 0; (p_2223->g_1062 >= (-23)); p_2223->g_1062--)
            { /* block id: 546 */
                uint16_t ***l_1193 = &l_1153;
                int32_t l_1194 = 0x41C8E843L;
                int64_t *l_1197[9] = {&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,&p_2223->g_90,&p_2223->g_90};
                uint32_t l_1209 = 4294967288UL;
                union U0 l_1223 = {0};
                int32_t l_1242 = (-2L);
                int32_t l_1243 = (-4L);
                int32_t l_1244 = 0x2323C040L;
                uint32_t *l_1281 = &p_2223->g_797;
                uint8_t **l_1282 = &p_2223->g_289;
                int i;
                l_1204 &= (((((safe_add_func_int16_t_s_s(((*p_35) && ((((+(safe_mod_func_int8_t_s_s((safe_add_func_uint64_t_u_u(FAKE_DIVERGE(p_2223->group_1_offset, get_group_id(1), 10), (safe_mul_func_uint16_t_u_u(((void*)0 == l_1193), (~(l_1194 != ((((safe_add_func_uint32_t_u_u((GROUP_DIVERGE(2, 1) && (l_1198[1] = l_1194)), p_2223->g_1199[3][0])) != (safe_lshift_func_int8_t_s_u(l_1194, (p_36 | GROUP_DIVERGE(2, 1))))) & (p_32 & l_1202)) <= p_2223->g_787[1]))))))), l_1203))) == p_32) , p_2223->g_741[0][2]) || p_2223->g_117[0].f0)), p_2223->g_634)) | GROUP_DIVERGE(1, 1)) > GROUP_DIVERGE(0, 1)) && p_32) & p_32);
                p_32 = (l_1194 = ((safe_mul_func_int16_t_s_s(l_1198[1], (safe_lshift_func_int8_t_s_s((l_1194 == l_1194), 4)))) <= p_36));
                if (l_1209)
                { /* block id: 551 */
                    int8_t l_1220 = 0x22L;
                    int32_t l_1225 = 0x33A2CE8CL;
                    int16_t *l_1232 = &l_1032[0][4];
                    int8_t *l_1235 = &p_2223->g_741[0][2];
                    int16_t *l_1236 = &l_1203;
                    int32_t l_1239 = 0x10DDDDD9L;
                    int32_t l_1240 = 0x32413B3CL;
                    int32_t l_1241[5] = {2L,2L,2L,2L,2L};
                    int i;
                    for (p_36 = 1; (p_36 <= 6); p_36 += 1)
                    { /* block id: 554 */
                        int32_t l_1224 = 0L;
                        int i, j;
                        if (p_2223->g_674[p_36][p_36])
                            break;
                        l_1225 = (((((l_1210[0][1] != (void*)0) == (safe_mod_func_uint32_t_u_u(((*l_775) = (p_2223->g_66 & (safe_rshift_func_int8_t_s_s((((((((safe_rshift_func_int8_t_s_s((((safe_add_func_uint64_t_u_u(GROUP_DIVERGE(1, 1), (l_1194 > (((l_1194 & l_1220) , (safe_mul_func_int8_t_s_s(((((~(l_1223 , p_34)) , 18446744073709551615UL) , l_1198[2]) > p_2223->g_674[p_36][p_36]), 0UL))) > FAKE_DIVERGE(p_2223->local_1_offset, get_local_id(1), 10))))) <= p_32) != (-1L)), l_1209)) > 0x0EL) > 0x7838BF2B91BE8F74L) > l_1224) == p_33) >= p_36) | l_1194), 2)))), FAKE_DIVERGE(p_2223->group_2_offset, get_group_id(2), 10)))) , FAKE_DIVERGE(p_2223->group_2_offset, get_group_id(2), 10)) , 0x517119885E0DB854L) == 0x1378EDF07CDF4C42L);
                    }
                    p_32 &= (safe_div_func_int16_t_s_s(((*l_1236) |= ((safe_mul_func_int8_t_s_s(((void*)0 == &l_775), ((*l_1235) |= (250UL && (safe_sub_func_int8_t_s_s((*p_35), (((*l_1232) |= l_1225) > (safe_mod_func_int16_t_s_s(((void*)0 == l_974), (*p_2223->g_722)))))))))) | 0x44ABL)), 65527UL));
                    for (p_2223->g_136 = 0; (p_2223->g_136 != (-30)); --p_2223->g_136)
                    { /* block id: 565 */
                        p_32 = p_32;
                    }
                    l_1245--;
                }
                else
                { /* block id: 569 */
                    uint16_t ***l_1258 = &l_1153;
                    int32_t l_1259 = 0x28C5BF90L;
                    int32_t *l_1260 = &p_2223->g_77;
                    int32_t l_1262 = 0x2DCA7E0AL;
                    int64_t l_1263[1][3];
                    int16_t l_1269[5][1][2];
                    uint64_t l_1270 = 0x38C82C0EFA911B0CL;
                    union U0 *l_1274 = &l_1223;
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 3; j++)
                            l_1263[i][j] = 0x7FEC29ABB21CAF88L;
                    }
                    for (i = 0; i < 5; i++)
                    {
                        for (j = 0; j < 1; j++)
                        {
                            for (k = 0; k < 2; k++)
                                l_1269[i][j][k] = 0L;
                        }
                    }
                    l_1243 = (l_1194 = (p_32 = (((((**l_1153) = (safe_lshift_func_int8_t_s_u((p_34 != ((((GROUP_DIVERGE(2, 1) | p_36) && l_1203) == ((((safe_div_func_int64_t_s_s((l_1262 &= (((+(((l_1202 <= (1L ^ (((safe_sub_func_uint64_t_u_u(((((*l_1260) = ((l_1254 || (safe_lshift_func_int8_t_s_u((&p_2223->g_721 == ((((-1L) & (((((((l_1257 != (*p_2223->g_486)) , p_32) >= 5UL) > p_32) <= (-1L)) || 250UL) , l_1209)) && 0x308BL) , l_1258)), FAKE_DIVERGE(p_2223->group_1_offset, get_group_id(1), 10)))) | l_1259)) , (void*)0) != &p_2223->g_487), (-1L))) || 0x6E47BE42FB65DBCFL) < p_34))) && 0xEC32L) == p_33)) < 0x4F0A7C488C853AEFL) <= l_1261)), l_1194)) , &p_2223->g_598) != &p_2223->g_457[4]) | 0x6B96L)) , p_36)), p_33))) == p_33) ^ p_2223->g_910) < l_1263[0][1])));
                    for (l_839 = 0; (l_839 <= 8); l_839 += 1)
                    { /* block id: 578 */
                        int32_t l_1271 = 0x0FF60151L;
                        int i;
                        l_1264 &= p_2223->g_334[l_839];
                        l_1275 = ((safe_sub_func_uint16_t_u_u(((**l_1153) = (safe_mod_func_int8_t_s_s(l_1269[1][0][1], l_1270))), (--(**p_2223->g_721)))) , l_1274);
                    }
                    if ((((safe_sub_func_uint32_t_u_u(((safe_sub_func_uint32_t_u_u(GROUP_DIVERGE(1, 1), p_34)) < ((void*)0 != l_1280)), ((&p_2223->g_674[3][1] == (l_1281 = &p_2223->g_871[0])) >= (l_1282 != l_1283[3])))) || (((l_1202 || (l_1242 |= (l_1198[0] = (l_1259 = (((*l_1059) &= p_34) || p_34))))) > p_33) > 0x024C7F06L)) == p_34))
                    { /* block id: 589 */
                        l_1244 = (l_1269[1][0][1] , ((*p_35) || ((((1UL && ((+l_1269[1][0][1]) <= ((*l_1281)++))) > (!(*p_2223->g_722))) , &p_2223->g_304[0][0][1]) == l_1286)));
                    }
                    else
                    { /* block id: 592 */
                        union U0 *l_1287 = (void*)0;
                        union U0 **l_1288 = &l_1275;
                        (*l_1288) = l_1287;
                    }
                }
            }
        }
        for (l_1103 = (-16); (l_1103 > 9); l_1103 = safe_add_func_int8_t_s_s(l_1103, 2))
        { /* block id: 600 */
            int32_t *l_1296 = &l_804;
            union U1 **l_1320 = &p_2223->g_1303;
            uint16_t l_1338 = 1UL;
            int64_t *l_1342 = &l_1022;
            int64_t **l_1341 = &l_1342;
            int64_t ***l_1340[3][3] = {{&l_1341,(void*)0,&l_1341},{&l_1341,(void*)0,&l_1341},{&l_1341,(void*)0,&l_1341}};
            int i, j;
            for (l_1180 = 26; (l_1180 >= 31); l_1180++)
            { /* block id: 603 */
                union U1 **l_1299 = (void*)0;
                int32_t l_1309 = 0x524179EBL;
                union U1 **l_1322[1][1][7];
                int i, j, k;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 1; j++)
                    {
                        for (k = 0; k < 7; k++)
                            l_1322[i][j][k] = &p_2223->g_1303;
                    }
                }
                for (p_2223->g_90 = 0; (p_2223->g_90 > (-22)); p_2223->g_90 = safe_sub_func_uint8_t_u_u(p_2223->g_90, 7))
                { /* block id: 606 */
                    union U1 **l_1307 = &p_2223->g_1303;
                    l_1296 = l_1295;
                    if ((4UL > ((**p_2223->g_721)--)))
                    { /* block id: 609 */
                        union U1 ***l_1300 = &l_1299;
                        union U1 ***l_1304 = (void*)0;
                        union U1 ***l_1306[5][3] = {{&p_2223->g_1302,&p_2223->g_1302,&p_2223->g_1302},{&p_2223->g_1302,&p_2223->g_1302,&p_2223->g_1302},{&p_2223->g_1302,&p_2223->g_1302,&p_2223->g_1302},{&p_2223->g_1302,&p_2223->g_1302,&p_2223->g_1302},{&p_2223->g_1302,&p_2223->g_1302,&p_2223->g_1302}};
                        int32_t **l_1308[8][8][2] = {{{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]}},{{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]}},{{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]}},{{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]}},{{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]}},{{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]}},{{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]}},{{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]},{&l_1030[4][4],&l_1030[2][0]}}};
                        int i, j, k;
                        (*l_1295) &= p_33;
                        l_1307 = ((*l_1300) = l_1299);
                        l_1028 = ((*l_974) = &p_32);
                    }
                    else
                    { /* block id: 615 */
                        return &p_2223->g_741[1][9];
                    }
                }
                if (l_1309)
                    continue;
                for (p_36 = 0; (p_36 == (-14)); p_36--)
                { /* block id: 622 */
                    for (p_2223->g_88 = 0; (p_2223->g_88 >= 8); p_2223->g_88++)
                    { /* block id: 625 */
                        union U1 ***l_1321[8][4] = {{&l_1320,&l_1320,&l_1320,&l_1320},{&l_1320,&l_1320,&l_1320,&l_1320},{&l_1320,&l_1320,&l_1320,&l_1320},{&l_1320,&l_1320,&l_1320,&l_1320},{&l_1320,&l_1320,&l_1320,&l_1320},{&l_1320,&l_1320,&l_1320,&l_1320},{&l_1320,&l_1320,&l_1320,&l_1320},{&l_1320,&l_1320,&l_1320,&l_1320}};
                        int16_t *l_1325 = &p_2223->g_74[1][7][6];
                        int32_t l_1334 = 6L;
                        int16_t *l_1337 = &l_1031[1][4][7];
                        uint16_t l_1339 = 8UL;
                        int i, j;
                        l_1334 = (safe_lshift_func_uint16_t_u_s((!(safe_lshift_func_int8_t_s_s((((**l_1153)--) <= 0x3ADAL), (((p_32 >= p_2223->g_787[0]) != ((l_1322[0][0][6] = l_1320) == l_1323)) != (((*l_1325) &= ((void*)0 == l_1324)) & (safe_add_func_int8_t_s_s((safe_lshift_func_int16_t_s_u((((safe_rshift_func_uint16_t_u_s((safe_mul_func_int16_t_s_s(((l_1334 , ((((safe_rshift_func_int16_t_s_s(((((*l_1337) &= 0x495BL) , (*p_35)) || 5UL), 3)) > p_32) | 0xA41A454AL) && l_1338)) == p_34), l_1339)), 1)) , (**p_2223->g_721)) >= GROUP_DIVERGE(1, 1)), FAKE_DIVERGE(p_2223->group_2_offset, get_group_id(2), 10))), (*p_35)))))))), (*l_1296)));
                        p_32 = ((*p_2223->g_1302) == (void*)0);
                        return &p_2223->g_1062;
                    }
                }
            }
            p_2223->g_1343 = (void*)0;
        }
    }
    return &p_2223->g_153;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint8_t  func_42(int32_t  p_43, uint32_t  p_44, int32_t  p_45, uint64_t  p_46, struct S2 * p_2223)
{ /* block id: 292 */
    uint8_t l_767 = 0xA6L;
    p_43 |= (+(l_767 | p_46));
    return p_43;
}


/* ------------------------------------------ */
/* 
 * reads : p_2223->g_190 p_2223->g_391 p_2223->g_706
 * writes: p_2223->g_706 p_2223->g_766 p_2223->g_153 p_2223->g_306 p_2223->g_634 p_2223->g_304
 */
uint32_t  func_49(uint16_t  p_50, union U0  p_51, uint8_t  p_52, uint32_t  p_53, uint32_t  p_54, struct S2 * p_2223)
{ /* block id: 283 */
    int32_t *l_739 = (void*)0;
    int32_t *l_740[3];
    int32_t l_742[4];
    uint32_t l_743 = 0UL;
    uint64_t *l_751 = &p_2223->g_273;
    uint64_t **l_750 = &l_751;
    uint32_t *l_754 = &p_2223->g_466.f2;
    uint32_t *l_755 = &p_2223->g_466.f2;
    uint32_t *l_756[7][4] = {{&p_2223->g_757[0],&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&p_2223->g_757[0],&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&p_2223->g_757[0],&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&p_2223->g_757[0],&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&p_2223->g_757[0],&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&p_2223->g_757[0],&p_2223->g_757[0],&p_2223->g_757[0],(void*)0},{&p_2223->g_757[0],&p_2223->g_757[0],&p_2223->g_757[0],(void*)0}};
    uint8_t l_760 = 0x58L;
    union U0 l_763[4] = {{0},{0},{0},{0}};
    uint64_t **l_764 = &l_751;
    uint8_t *l_765 = &p_2223->g_706;
    int i, j;
    for (i = 0; i < 3; i++)
        l_740[i] = &p_2223->g_68;
    for (i = 0; i < 4; i++)
        l_742[i] = 0x7F2F05FAL;
    l_743--;
    p_2223->g_766 = (((*l_765) &= ((p_2223->g_190 , (safe_mul_func_int16_t_s_s(((-1L) == ((safe_rshift_func_int16_t_s_s((p_2223->g_391 != l_750), 15)) > p_50)), (safe_sub_func_int32_t_s_s(((p_53++) , (l_760 = 0x4D9C1ACFL)), (safe_mul_func_int16_t_s_s(((&l_751 != (l_763[1] , (l_764 = p_2223->g_391))) != 4294967295UL), p_52))))))) ^ p_54)) && p_54);
    for (p_2223->g_153 = 0; p_2223->g_153 < 7; p_2223->g_153 += 1)
    {
        for (p_2223->g_306 = 0; p_2223->g_306 < 9; p_2223->g_306 += 1)
        {
            for (p_2223->g_634 = 0; p_2223->g_634 < 2; p_2223->g_634 += 1)
            {
                p_2223->g_304[p_2223->g_153][p_2223->g_306][p_2223->g_634] = 0x18DF89C2L;
            }
        }
    }
    return p_53;
}


/* ------------------------------------------ */
/* 
 * reads : p_2223->l_comm_values p_2223->g_68 p_2223->g_64 p_2223->g_comm_values p_2223->g_66 p_2223->g_77 p_2223->g_88 p_2223->g_74 p_2223->g_76 p_2223->g_117 p_2223->g_78 p_2223->g_136 p_2223->g_90 p_2223->g_75 p_2223->g_117.f0 p_2223->g_159 p_2223->g_190 p_2223->g_203 p_2223->g_231 p_2223->g_153 p_2223->g_273 p_2223->g_288 p_2223->g_304 p_2223->g_327 p_2223->g_331 p_2223->g_289 p_2223->g_306 p_2223->g_334 p_2223->g_391 p_2223->g_232 p_2223->g_390 p_2223->g_459 p_2223->g_466 p_2223->g_332 p_2223->g_486 p_2223->g_458 p_2223->g_466.f0 p_2223->g_598 p_2223->g_601 p_2223->g_634 p_2223->g_674 p_2223->g_689 p_2223->g_706
 * writes: p_2223->g_88 p_2223->g_90 p_2223->g_68 p_2223->g_78 p_2223->g_76 p_2223->g_136 p_2223->g_66 p_2223->g_153 p_2223->g_159 p_2223->g_64 p_2223->g_203 p_2223->g_74 p_2223->g_231 p_2223->g_273 p_2223->g_304 p_2223->g_306 p_2223->g_359 p_2223->g_390 p_2223->g_407 p_2223->g_190 p_2223->g_458 p_2223->g_77 p_2223->g_634 p_2223->g_466.f0 p_2223->g_674 p_2223->g_692 p_2223->g_706 p_2223->g_466.f4
 */
int16_t  func_59(int8_t  p_60, int8_t * p_61, struct S2 * p_2223)
{ /* block id: 7 */
    int32_t *l_67 = &p_2223->g_68;
    int32_t *l_69 = (void*)0;
    int32_t *l_70 = (void*)0;
    int32_t *l_71 = &p_2223->g_68;
    int32_t *l_72 = (void*)0;
    int32_t *l_73[2];
    int32_t l_79 = 0x28954837L;
    uint8_t l_80 = 0x77L;
    uint16_t *l_87 = &p_2223->g_88;
    uint64_t *l_89 = &p_2223->g_64;
    int16_t l_113 = 0x3FE1L;
    uint32_t l_150 = 4UL;
    int64_t l_259[1];
    uint8_t *l_340 = &p_2223->g_203[1];
    int32_t l_392 = 0L;
    uint32_t l_510 = 4UL;
    union U0 l_552 = {0};
    int16_t l_570 = 0x55CEL;
    uint16_t l_593 = 0x461AL;
    int32_t l_671 = 0x18681BFBL;
    uint8_t l_688 = 0x08L;
    int i;
    for (i = 0; i < 2; i++)
        l_73[i] = &p_2223->g_68;
    for (i = 0; i < 1; i++)
        l_259[i] = 0x5963FE579FFB8CE0L;
lbl_657:
    l_80++;
    if (((-1L) >= ((safe_lshift_func_uint16_t_u_u(((*l_87) = p_2223->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2223->tid, 15))]), (p_2223->g_90 = (l_89 != (void*)0)))) != (p_60 > p_60))))
    { /* block id: 11 */
        int16_t l_97 = 0x4D53L;
        uint32_t l_139 = 0x3A1A89D3L;
        int32_t l_154 = 0x4AAFBA0EL;
        uint32_t l_178 = 0x54B315FCL;
        int16_t *l_187 = &p_2223->g_74[0][6][5];
        int16_t **l_186 = &l_187;
        uint64_t *l_189 = &p_2223->g_190;
        uint64_t **l_188 = &l_189;
        for (p_2223->g_68 = 0; (p_2223->g_68 <= 0); p_2223->g_68++)
        { /* block id: 14 */
            int8_t *l_95 = (void*)0;
            int32_t l_100 = 1L;
            for (p_60 = 0; (p_60 != 10); p_60 = safe_add_func_int16_t_s_s(p_60, 9))
            { /* block id: 17 */
                int8_t **l_96[7] = {&l_95,&l_95,&l_95,&l_95,&l_95,&l_95,&l_95};
                uint8_t *l_101 = (void*)0;
                uint8_t *l_102 = (void*)0;
                uint8_t *l_103 = &l_80;
                int i;
                l_97 ^= ((p_61 = l_95) == &p_2223->g_66);
                p_2223->g_78[2] = (safe_add_func_int8_t_s_s(0L, ((*l_103) |= l_100)));
            }
        }
        for (l_79 = (-26); (l_79 < 4); ++l_79)
        { /* block id: 26 */
            int32_t l_114 = 0x557AD3C0L;
            uint8_t *l_132 = &l_80;
            uint32_t l_180 = 4294967295UL;
            l_114 = (safe_div_func_uint32_t_u_u((0xBED92BB849B7D65DL <= 0L), (p_2223->g_68 = (((safe_div_func_uint64_t_u_u((p_2223->g_64 & (p_2223->g_comm_values[p_2223->tid] | (safe_rshift_func_int8_t_s_u(p_2223->g_66, 0)))), p_2223->g_77)) | (p_2223->g_88 >= p_2223->g_74[0][6][5])) | (safe_unary_minus_func_int64_t_s((l_113 |= l_97)))))));
            for (p_60 = 0; (p_60 <= 1); p_60 += 1)
            { /* block id: 32 */
                uint32_t l_129 = 0xC026D396L;
                int16_t *l_149 = &p_2223->g_74[1][1][0];
                int16_t **l_148 = &l_149;
                int8_t *l_151 = &p_2223->g_66;
                int8_t *l_152[8] = {&p_2223->g_153,&p_2223->g_153,&p_2223->g_153,&p_2223->g_153,&p_2223->g_153,&p_2223->g_153,&p_2223->g_153,&p_2223->g_153};
                int i;
                for (p_2223->g_76 = 1; (p_2223->g_76 >= 0); p_2223->g_76 -= 1)
                { /* block id: 35 */
                    uint8_t *l_119 = &l_80;
                    int32_t l_138 = 0x62ED9114L;
                    for (l_114 = 1; (l_114 >= 0); l_114 -= 1)
                    { /* block id: 38 */
                        int16_t *l_118 = &l_113;
                        uint8_t **l_120 = &l_119;
                        int64_t *l_135 = &p_2223->g_136;
                        int64_t l_137[10][1] = {{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L}};
                        int i, j, k;
                        l_139 ^= ((safe_mul_func_uint16_t_u_u((p_2223->g_74[l_114][(l_114 + 1)][(p_60 + 4)] & (((!((((p_2223->g_117[0] , ((*l_120) = (((*l_118) |= (*l_67)) , l_119))) == ((safe_mul_func_uint16_t_u_u(((*l_87) = (FAKE_DIVERGE(p_2223->group_1_offset, get_group_id(1), 10) < ((safe_sub_func_uint8_t_u_u((!(safe_div_func_int8_t_s_s((safe_add_func_uint32_t_u_u((l_129 ^ (safe_sub_func_uint8_t_u_u(((&l_80 == l_132) ^ ((0x24L >= (safe_lshift_func_int16_t_s_u(((((*l_135) |= (l_114 | p_2223->g_78[2])) , p_60) , 0x3D50L), p_2223->g_90))) || p_2223->g_68)), GROUP_DIVERGE(0, 1)))), p_2223->g_76)), p_60))), p_2223->g_74[0][2][4])) , 0x4088L))), l_137[7][0])) , (void*)0)) == 7L) < 0x93B5762987D0CCF3L)) ^ p_2223->g_76) > l_129)), GROUP_DIVERGE(1, 1))) >= l_138);
                    }
                }
                (*l_67) = (((p_2223->g_153 = (l_154 = ((*l_151) = (((-1L) | (((safe_lshift_func_uint16_t_u_s(0xDF63L, 0)) | (((safe_sub_func_uint8_t_u_u((safe_div_func_int32_t_s_s(p_2223->g_88, p_2223->g_comm_values[p_2223->tid])), (p_2223->g_78[0] && (((((GROUP_DIVERGE(0, 1) && p_2223->g_78[2]) > ((safe_sub_func_int16_t_s_s(l_114, ((~(((((*l_148) = &p_2223->g_74[0][3][0]) == (void*)0) <= l_139) || p_60)) < p_2223->g_90))) & (-6L))) >= 0x63922E0D36818C3BL) <= p_2223->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2223->tid, 15))]) <= l_150)))) >= p_2223->g_75) >= p_2223->g_74[1][6][6])) ^ 0x5604L)) , 1L)))) != l_129) <= p_2223->g_136);
                for (p_2223->g_66 = 0; (p_2223->g_66 <= 1); p_2223->g_66 += 1)
                { /* block id: 53 */
                    int16_t *l_179 = &l_97;
                    uint64_t l_181[7];
                    int i;
                    for (i = 0; i < 7; i++)
                        l_181[i] = 18446744073709551608UL;
                    l_180 |= (safe_add_func_uint32_t_u_u((((((safe_mod_func_uint64_t_u_u(((p_2223->g_159 = (void*)0) != (void*)0), (((*l_179) ^= (((l_178 = (safe_lshift_func_int16_t_s_s((((((*l_71) = (((safe_sub_func_int64_t_s_s((((safe_sub_func_uint32_t_u_u((!p_60), 0x6C86F33EL)) == ((((safe_mul_func_int16_t_s_s(p_2223->g_comm_values[p_2223->tid], p_2223->g_74[1][1][2])) != ((safe_rshift_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s((safe_lshift_func_int16_t_s_u((safe_mul_func_uint16_t_u_u(0xCF0CL, p_60)), (0xCFL >= p_60))), p_2223->g_117[0].f0)), p_2223->g_66)) <= 0x6BCCL)) < p_2223->g_88) ^ 0x32FAD472F8A427D2L)) & 0x8DF4805DL), 0x58C7ECC317C6A24AL)) ^ p_60) && p_2223->g_74[1][3][7])) ^ 1L) , l_129) && p_2223->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2223->tid, 15))]), 1))) && p_60) || p_2223->g_68)) ^ p_60))) >= 0xD5C75568L) , l_97) & 0xEEL) , 0x3480D378L), 5UL));
                    l_181[2]++;
                }
            }
        }
        l_154 = (((safe_mod_func_uint8_t_u_u((((((*l_89) = (&l_113 == ((*l_186) = &p_2223->g_74[1][7][3]))) < (((((*l_188) = p_2223->g_159) == &p_2223->g_190) | (~p_2223->g_190)) > l_139)) , l_187) == l_87), (((safe_mod_func_int32_t_s_s(p_2223->g_75, 0x02E6EA6DL)) ^ p_2223->g_78[3]) || 0x241DL))) , 7L) >= l_139);
        return l_154;
    }
    else
    { /* block id: 68 */
        int16_t *l_199 = &p_2223->g_74[0][6][5];
        int32_t l_200 = 0x7DBFF9D0L;
        uint32_t *l_202[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t l_255 = 0L;
        int32_t l_258[7][4];
        int32_t l_330 = 0L;
        uint8_t l_337[7][10][3] = {{{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL}},{{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL}},{{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL}},{{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL}},{{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL}},{{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL}},{{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL},{3UL,0xA4L,255UL}}};
        uint8_t ***l_383 = &p_2223->g_288;
        uint8_t l_477 = 1UL;
        int32_t l_500 = (-5L);
        int16_t l_523 = (-2L);
        int64_t *l_547 = &p_2223->g_136;
        int8_t **l_641[3];
        union U0 l_644 = {0};
        union U0 **l_693 = &p_2223->g_692;
        int i, j, k;
        for (i = 0; i < 7; i++)
        {
            for (j = 0; j < 4; j++)
                l_258[i][j] = 0x389AC96BL;
        }
        for (i = 0; i < 3; i++)
            l_641[i] = &p_2223->g_390;
        if ((safe_mod_func_int32_t_s_s((-10L), (((safe_sub_func_int16_t_s_s(p_60, (safe_rshift_func_int8_t_s_s(((&p_2223->g_74[1][5][4] == l_199) < (l_200 == l_200)), (*p_61))))) ^ (p_2223->g_203[1] = ((((p_2223->g_78[0] = (safe_unary_minus_func_int32_t_s((-1L)))) != p_2223->g_66) || l_200) == (*l_67)))) , l_200))))
        { /* block id: 71 */
            uint32_t l_206 = 4294967292UL;
            int32_t l_252 = (-1L);
            int32_t l_253 = (-8L);
            int32_t l_254 = 0L;
            int32_t l_256 = 0x0B4767ECL;
            int32_t l_257[3][7][3] = {{{(-1L),(-3L),(-2L)},{(-1L),(-3L),(-2L)},{(-1L),(-3L),(-2L)},{(-1L),(-3L),(-2L)},{(-1L),(-3L),(-2L)},{(-1L),(-3L),(-2L)},{(-1L),(-3L),(-2L)}},{{(-1L),(-3L),(-2L)},{(-1L),(-3L),(-2L)},{(-1L),(-3L),(-2L)},{(-1L),(-3L),(-2L)},{(-1L),(-3L),(-2L)},{(-1L),(-3L),(-2L)},{(-1L),(-3L),(-2L)}},{{(-1L),(-3L),(-2L)},{(-1L),(-3L),(-2L)},{(-1L),(-3L),(-2L)},{(-1L),(-3L),(-2L)},{(-1L),(-3L),(-2L)},{(-1L),(-3L),(-2L)},{(-1L),(-3L),(-2L)}}};
            uint16_t l_261 = 0x44F7L;
            int32_t *l_360 = &p_2223->g_304[3][8][1];
            uint8_t ***l_385 = &p_2223->g_288;
            uint16_t l_394[7][6][4] = {{{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L}},{{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L}},{{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L}},{{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L}},{{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L}},{{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L}},{{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L},{65527UL,0x47B1L,0x1DDFL,0x31A0L}}};
            uint8_t l_397 = 0UL;
            int16_t *l_483 = (void*)0;
            union U0 *l_553 = &p_2223->g_407;
            int32_t *l_597 = &l_258[5][3];
            int i, j, k;
            if (p_2223->g_77)
            { /* block id: 72 */
                uint16_t *l_228 = &p_2223->g_88;
                int32_t l_249[6][10][4] = {{{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L}},{{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L}},{{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L}},{{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L}},{{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L}},{{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L},{3L,0x0B129FC7L,0x196EC3DBL,0x2BDCF252L}}};
                uint8_t **l_291 = &p_2223->g_289;
                uint8_t **l_292 = &p_2223->g_289;
                int16_t **l_336 = &l_199;
                int32_t *l_358 = &p_2223->g_304[3][1][0];
                uint64_t **l_371 = &l_89;
                int8_t l_395 = 3L;
                int i, j, k;
                for (p_2223->g_64 = 4; (p_2223->g_64 <= 42); p_2223->g_64 = safe_add_func_uint32_t_u_u(p_2223->g_64, 8))
                { /* block id: 75 */
                    uint32_t l_248 = 4294967295UL;
                    int32_t l_250 = 0x45F0FBA4L;
                    int32_t l_251[2][10] = {{2L,0x7617F48AL,0x7617F48AL,2L,2L,0x7617F48AL,0x7617F48AL,2L,2L,0x7617F48AL},{2L,0x7617F48AL,0x7617F48AL,2L,2L,0x7617F48AL,0x7617F48AL,2L,2L,0x7617F48AL}};
                    int64_t l_260[7] = {2L,1L,2L,2L,1L,2L,2L};
                    int i, j;
                    if (l_206)
                        break;
                    if (((*l_67) = (safe_lshift_func_int16_t_s_u((safe_mod_func_int64_t_s_s(((safe_mul_func_int16_t_s_s(((*l_199) = ((l_87 != (((safe_rshift_func_int16_t_s_s((!p_2223->g_74[0][6][5]), 2)) ^ ((*p_61) = (safe_lshift_func_int16_t_s_s(((+0x93L) | ((safe_rshift_func_uint8_t_u_s(((safe_add_func_int32_t_s_s((((p_60 <= (safe_add_func_uint32_t_u_u(p_2223->g_203[1], p_2223->g_68))) || (safe_unary_minus_func_uint16_t_u((((safe_mod_func_int8_t_s_s(((((void*)0 != &l_206) & ((safe_add_func_uint16_t_u_u((*l_71), p_60)) < p_2223->g_88)) >= p_2223->g_76), p_2223->g_117[0].f0)) <= p_2223->g_77) & (*l_67))))) || FAKE_DIVERGE(p_2223->local_1_offset, get_local_id(1), 10)), p_60)) <= p_60), 6)) || p_2223->g_203[1])), p_60)))) , l_228)) & 0x0ACFL)), 0xC878L)) & 2UL), p_60)), 7))))
                    { /* block id: 80 */
                        return p_60;
                    }
                    else
                    { /* block id: 82 */
                        volatile union U0 **l_233 = &p_2223->g_231;
                        p_2223->g_78[1] = (safe_lshift_func_uint16_t_u_s(65531UL, 7));
                        if (p_60)
                            break;
                        (*l_233) = p_2223->g_231;
                    }
                    (*l_71) &= (safe_div_func_uint32_t_u_u((safe_mul_func_int16_t_s_s((safe_div_func_int8_t_s_s(((safe_rshift_func_int8_t_s_u((safe_sub_func_uint8_t_u_u(((0x2300684B4F7ADDD0L && ((safe_mod_func_int16_t_s_s(l_200, (0xD8B5L ^ ((((&p_2223->g_88 == (p_2223->g_88 , &p_2223->g_88)) != ((p_60 != (((safe_sub_func_uint64_t_u_u(l_200, (p_2223->g_74[0][6][5] && (-1L)))) && FAKE_DIVERGE(p_2223->group_2_offset, get_group_id(2), 10)) , 1UL)) , p_2223->g_203[3])) || FAKE_DIVERGE(p_2223->group_1_offset, get_group_id(1), 10)) | l_200)))) <= p_2223->g_75)) | p_60), 0x34L)), p_60)) || l_248), l_249[0][7][3])), 0x1BDAL)), p_2223->g_203[1]));
                    l_261--;
                }
                for (l_256 = (-15); (l_256 < 11); l_256 = safe_add_func_int8_t_s_s(l_256, 1))
                { /* block id: 92 */
                    uint64_t l_272 = 0UL;
                    int32_t l_298 = 1L;
                    uint64_t **l_349 = &l_89;
                    int32_t l_396 = 0x1D817BE3L;
                    union U0 *l_406 = &p_2223->g_407;
                    if (((((+(*l_71)) , ((safe_lshift_func_int16_t_s_s((p_60 <= p_60), 14)) && (p_2223->g_90 != (((*p_61) != (safe_lshift_func_uint8_t_u_u(((safe_rshift_func_uint8_t_u_u(((*p_61) != 0L), 0)) >= l_272), p_60))) , l_253)))) & l_258[0][3]) & p_2223->g_153))
                    { /* block id: 93 */
                        int64_t *l_281 = &p_2223->g_136;
                        uint8_t ***l_290[9] = {&p_2223->g_288,&p_2223->g_288,&p_2223->g_288,&p_2223->g_288,&p_2223->g_288,&p_2223->g_288,&p_2223->g_288,&p_2223->g_288,&p_2223->g_288};
                        int32_t l_297[9][3] = {{0x2CD02EC4L,0L,(-1L)},{0x2CD02EC4L,0L,(-1L)},{0x2CD02EC4L,0L,(-1L)},{0x2CD02EC4L,0L,(-1L)},{0x2CD02EC4L,0L,(-1L)},{0x2CD02EC4L,0L,(-1L)},{0x2CD02EC4L,0L,(-1L)},{0x2CD02EC4L,0L,(-1L)},{0x2CD02EC4L,0L,(-1L)}};
                        int32_t *l_303 = &p_2223->g_304[0][0][1];
                        int32_t *l_305 = &p_2223->g_306;
                        int64_t *l_307 = &l_259[0];
                        int i, j;
                        (*l_67) = ((((++p_2223->g_273) , (safe_sub_func_int64_t_s_s(((void*)0 == p_61), (safe_unary_minus_func_uint64_t_u((safe_rshift_func_uint8_t_u_u(((((&p_2223->g_136 != l_281) , (((*l_87) = (safe_rshift_func_uint16_t_u_s((safe_div_func_int16_t_s_s((safe_rshift_func_int8_t_s_u((((((l_291 = p_2223->g_288) == (l_292 = &p_2223->g_289)) >= (((((*l_307) = (((*l_305) = ((safe_div_func_int32_t_s_s(((safe_lshift_func_int8_t_s_u(l_272, 7)) && (++p_2223->g_203[1])), l_249[3][0][1])) , ((*l_303) = (safe_lshift_func_int16_t_s_u((((*p_61) < (*p_61)) > p_2223->g_203[1]), p_2223->g_74[0][6][5]))))) , p_2223->g_76)) < l_249[4][4][0]) > p_2223->g_78[0]) && p_60)) <= FAKE_DIVERGE(p_2223->group_0_offset, get_group_id(0), 10)) >= 0x0A786B73L), 1)), 0x0D29L)), l_258[0][3]))) || p_60)) != l_249[5][8][2]) > p_60), p_2223->g_190))))))) != p_2223->g_153) | l_249[1][2][3]);
                        (*l_67) = (p_2223->g_304[4][4][1] && (0xFA04C876800FB456L < (-1L)));
                        (*l_71) = (l_252 , ((safe_unary_minus_func_int16_t_s(((safe_div_func_uint8_t_u_u((((safe_lshift_func_int8_t_s_u((safe_mul_func_uint16_t_u_u(((safe_mod_func_uint8_t_u_u((((((safe_sub_func_int8_t_s_s(((safe_lshift_func_uint8_t_u_u((8L == ((l_298 = (p_60 , ((safe_sub_func_uint8_t_u_u(0xE4L, ((safe_div_func_int8_t_s_s(((safe_sub_func_int32_t_s_s((p_2223->g_327[1][0] , (l_255 = (safe_rshift_func_uint16_t_u_s(l_330, 5)))), (p_2223->g_331 == l_336))) != p_60), 251UL)) == p_60))) == p_60))) || (-7L))), l_297[6][2])) || 0x67852795L), p_60)) <= p_60) , l_298) || (*p_61)) != 0x6230L), (*p_61))) > 0xD2416CB1C42388ACL), l_249[3][6][2])), p_60)) , p_2223->g_comm_values[p_2223->tid]) & FAKE_DIVERGE(p_2223->global_0_offset, get_global_id(0), 10)), (*p_61))) , p_60))) || 4294967295UL));
                        return l_337[0][9][1];
                    }
                    else
                    { /* block id: 108 */
                        uint8_t *l_342 = &p_2223->g_203[1];
                        uint8_t **l_341 = &l_342;
                        int32_t l_374[7][4] = {{(-10L),(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L),(-10L)}};
                        uint8_t ****l_384[10][7] = {{&l_383,&l_383,&l_383,&l_383,&l_383,&l_383,&l_383},{&l_383,&l_383,&l_383,&l_383,&l_383,&l_383,&l_383},{&l_383,&l_383,&l_383,&l_383,&l_383,&l_383,&l_383},{&l_383,&l_383,&l_383,&l_383,&l_383,&l_383,&l_383},{&l_383,&l_383,&l_383,&l_383,&l_383,&l_383,&l_383},{&l_383,&l_383,&l_383,&l_383,&l_383,&l_383,&l_383},{&l_383,&l_383,&l_383,&l_383,&l_383,&l_383,&l_383},{&l_383,&l_383,&l_383,&l_383,&l_383,&l_383,&l_383},{&l_383,&l_383,&l_383,&l_383,&l_383,&l_383,&l_383},{&l_383,&l_383,&l_383,&l_383,&l_383,&l_383,&l_383}};
                        int8_t *l_389 = &p_2223->g_153;
                        int8_t **l_388 = &l_389;
                        int16_t *l_393 = &l_113;
                        int i, j;
                        l_249[0][7][3] = (safe_add_func_int8_t_s_s(((*p_2223->g_288) != ((*l_341) = (l_340 = (*l_291)))), (safe_mul_func_uint8_t_u_u(((void*)0 != &p_60), (safe_mul_func_uint16_t_u_u((safe_mul_func_int16_t_s_s(((void*)0 != l_349), (safe_div_func_int64_t_s_s(((((safe_lshift_func_int16_t_s_s(p_60, (safe_mod_func_uint32_t_u_u(0x65BDC67BL, (safe_rshift_func_int16_t_s_s((((p_2223->g_359 = l_358) != l_360) != p_60), 0)))))) > 0x31D6L) , FAKE_DIVERGE(p_2223->group_0_offset, get_group_id(0), 10)) == p_2223->g_306), 0x561FC705CBADFCFCL)))), (-1L)))))));
                        l_394[6][2][0] = ((+(safe_sub_func_int8_t_s_s(((safe_mul_func_int8_t_s_s(((FAKE_DIVERGE(p_2223->local_1_offset, get_local_id(1), 10) < ((((*l_393) = ((((safe_mod_func_uint16_t_u_u((((+((safe_add_func_int64_t_s_s(((((l_371 != (((GROUP_DIVERGE(2, 1) , (safe_mul_func_int16_t_s_s(l_374[4][3], ((safe_rshift_func_int16_t_s_u((((safe_div_func_uint8_t_u_u(p_60, ((safe_add_func_uint8_t_u_u((safe_mod_func_uint32_t_u_u(((l_385 = l_383) != &p_2223->g_288), 0x45B0FD36L)), ((p_2223->g_74[0][2][1] = 0x61AEL) == (((safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_2223->global_2_offset, get_global_id(2), 10), (((*l_388) = &p_2223->g_153) != (p_2223->g_390 = &p_2223->g_66)))) , p_60) < p_2223->g_90)))) , 4L))) & 65534UL) >= p_2223->g_334[0]), 8)) , 0UL)))) >= (-6L)) , p_2223->g_391)) || l_374[4][3]) < p_60) | p_60), 0x0300466A71E6CCE7L)) , 0xF640L)) > p_2223->g_78[1]) != l_374[5][3]), l_392)) && p_60) | 3UL) >= (-10L))) <= 0x2B86L) != p_2223->g_76)) , (*p_61)), 0x0AL)) || l_374[5][2]), 255UL))) == p_2223->g_88);
                        ++l_397;
                    }
                    if (p_2223->g_136)
                        break;
                    if ((safe_rshift_func_int8_t_s_s((safe_lshift_func_int16_t_s_u((safe_div_func_uint32_t_u_u((((((*l_406) = (*p_2223->g_231)) , ((safe_div_func_int64_t_s_s((p_60 ^ (((*l_87) = (safe_sub_func_uint8_t_u_u((p_2223->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2223->tid, 15))] >= 0x364C23DCB5FB8BDDL), (safe_mod_func_int8_t_s_s((safe_sub_func_uint16_t_u_u((safe_sub_func_int8_t_s_s(((-8L) & (safe_add_func_int8_t_s_s(((safe_add_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_u(l_257[2][2][2], 4)), p_60)) < (safe_mod_func_int8_t_s_s((safe_lshift_func_int8_t_s_s((*p_61), (safe_mul_func_int8_t_s_s((p_60 != p_60), 0UL)))), l_257[0][6][1]))), FAKE_DIVERGE(p_2223->group_1_offset, get_group_id(1), 10)))), GROUP_DIVERGE(2, 1))), p_2223->g_273)), (*l_71)))))) != l_272)), (-1L))) & 4294967295UL)) > p_60) | l_249[0][2][2]), p_2223->g_66)), 7)), 3)))
                    { /* block id: 124 */
                        uint32_t l_434[4];
                        int32_t l_437[10][8] = {{0x58CD0151L,0x0296908FL,0x0296908FL,0x58CD0151L,0x58CD0151L,0x0296908FL,0x0296908FL,0x58CD0151L},{0x58CD0151L,0x0296908FL,0x0296908FL,0x58CD0151L,0x58CD0151L,0x0296908FL,0x0296908FL,0x58CD0151L},{0x58CD0151L,0x0296908FL,0x0296908FL,0x58CD0151L,0x58CD0151L,0x0296908FL,0x0296908FL,0x58CD0151L},{0x58CD0151L,0x0296908FL,0x0296908FL,0x58CD0151L,0x58CD0151L,0x0296908FL,0x0296908FL,0x58CD0151L},{0x58CD0151L,0x0296908FL,0x0296908FL,0x58CD0151L,0x58CD0151L,0x0296908FL,0x0296908FL,0x58CD0151L},{0x58CD0151L,0x0296908FL,0x0296908FL,0x58CD0151L,0x58CD0151L,0x0296908FL,0x0296908FL,0x58CD0151L},{0x58CD0151L,0x0296908FL,0x0296908FL,0x58CD0151L,0x58CD0151L,0x0296908FL,0x0296908FL,0x58CD0151L},{0x58CD0151L,0x0296908FL,0x0296908FL,0x58CD0151L,0x58CD0151L,0x0296908FL,0x0296908FL,0x58CD0151L},{0x58CD0151L,0x0296908FL,0x0296908FL,0x58CD0151L,0x58CD0151L,0x0296908FL,0x0296908FL,0x58CD0151L},{0x58CD0151L,0x0296908FL,0x0296908FL,0x58CD0151L,0x58CD0151L,0x0296908FL,0x0296908FL,0x58CD0151L}};
                        uint8_t *l_438 = &p_2223->g_203[0];
                        int64_t *l_444 = (void*)0;
                        int64_t *l_445[9] = {(void*)0,&p_2223->g_90,(void*)0,(void*)0,&p_2223->g_90,(void*)0,(void*)0,&p_2223->g_90,(void*)0};
                        uint64_t *l_456 = &p_2223->g_190;
                        int i, j;
                        for (i = 0; i < 4; i++)
                            l_434[i] = 0x0CB7807FL;
                        (*l_71) = (9UL && (1UL & (~(safe_add_func_uint32_t_u_u(1UL, (~((((((*l_199) |= (safe_lshift_func_int8_t_s_s((*p_2223->g_390), 2))) && 5L) != 0UL) || l_434[1]) , ((safe_sub_func_uint8_t_u_u((l_254 = (--(*l_438))), (safe_unary_minus_func_int8_t_s((safe_sub_func_int64_t_s_s((l_258[5][2] = 0L), p_60)))))) , (-1L)))))))));
                        (*p_2223->g_459) = ((p_60 >= (safe_rshift_func_uint8_t_u_s((safe_div_func_uint16_t_u_u(((safe_lshift_func_uint8_t_u_u(((&p_2223->g_64 != (void*)0) , (p_60 , 0xABL)), 4)) || (((*l_89) = (p_60 , ((*p_2223->g_231) , l_396))) < (safe_mod_func_uint64_t_u_u(((*l_456) = (safe_div_func_int8_t_s_s(8L, 0x2FL))), l_437[6][1])))), p_2223->g_273)), 5))) , &l_298);
                        if (l_394[6][2][0])
                            continue;
                    }
                    else
                    { /* block id: 134 */
                        uint32_t l_475 = 0x02C6B9C6L;
                        l_475 |= (((((l_254 = GROUP_DIVERGE(2, 1)) >= (safe_mod_func_int32_t_s_s((((safe_lshift_func_int8_t_s_s((*p_2223->g_390), (*p_61))) > p_2223->g_304[0][0][1]) <= ((p_2223->g_466 , p_60) > ((safe_add_func_int16_t_s_s(((safe_div_func_uint64_t_u_u(p_60, l_249[0][7][3])) & ((safe_mod_func_uint64_t_u_u((l_249[5][7][0] >= (l_200 &= ((p_60 , 0x0E2166E6L) ^ 1UL))), 0x44F10BCE4668D86FL)) != p_2223->g_203[1])), p_60)) < GROUP_DIVERGE(1, 1)))), l_261))) != p_60) | p_60) && l_255);
                    }
                }
            }
            else
            { /* block id: 140 */
                int32_t l_476[4] = {0x4541260EL,0x4541260EL,0x4541260EL,0x4541260EL};
                int32_t *l_480 = &l_200;
                int32_t l_502 = 0x67A6107CL;
                int32_t l_508 = 0x304D3696L;
                int32_t l_513 = (-5L);
                int32_t l_514 = 0x203DC31EL;
                int8_t l_515[5][5] = {{0x11L,0x11L,0x11L,0x11L,0x11L},{0x11L,0x11L,0x11L,0x11L,0x11L},{0x11L,0x11L,0x11L,0x11L,0x11L},{0x11L,0x11L,0x11L,0x11L,0x11L},{0x11L,0x11L,0x11L,0x11L,0x11L}};
                int32_t l_516 = 0x2D426353L;
                int32_t l_517 = 0x006B7043L;
                int32_t l_519[9];
                uint64_t l_526 = 18446744073709551612UL;
                uint16_t l_551 = 0UL;
                int i, j;
                for (i = 0; i < 9; i++)
                    l_519[i] = (-6L);
                for (p_2223->g_153 = 0; (p_2223->g_153 <= 3); p_2223->g_153 += 1)
                { /* block id: 143 */
                    int8_t l_503 = 0L;
                    int32_t l_505[9] = {0L,0L,0L,0L,0L,0L,0L,0L,0L};
                    int8_t l_520 = (-4L);
                    int16_t **l_541 = &l_199;
                    int i;
                    ++l_477;
                    if ((l_258[0][3] != p_60))
                    { /* block id: 145 */
                        int32_t l_501 = 0L;
                        int i;
                        l_69 = l_480;
                        (*l_480) = (safe_add_func_uint32_t_u_u(l_337[0][9][1], (l_257[0][1][1] = ((*p_2223->g_331) != l_483))));
                        (*l_480) = ((*l_71) |= (safe_lshift_func_int8_t_s_u(((void*)0 != p_2223->g_486), (safe_rshift_func_uint8_t_u_u((*l_480), (p_60 >= (p_2223->g_458[2] == (l_202[(p_2223->g_153 + 1)] = (void*)0))))))));
                        (*l_67) = ((safe_rshift_func_int16_t_s_s(1L, p_60)) && (safe_sub_func_int32_t_s_s((*l_67), (safe_add_func_uint8_t_u_u(l_397, (safe_add_func_int16_t_s_s(((safe_mod_func_uint64_t_u_u((p_2223->g_334[0] <= ((*l_480) &= (((*p_61) = (((((-1L) >= ((((0x027AC533L == 0L) != (p_2223->g_90 = 0x280F9C2AFCC970D5L)) != l_500) ^ p_2223->g_64)) >= 0x2DBE5DE0L) > 1UL) != (-3L))) , l_501))), 3UL)) && p_60), 1UL)))))));
                    }
                    else
                    { /* block id: 156 */
                        int32_t l_504 = 0x43036002L;
                        int32_t l_506 = 0x62E638FFL;
                        int32_t l_507 = 0x71BD5B4DL;
                        int32_t l_509 = (-1L);
                        int32_t l_518 = (-1L);
                        int32_t l_521 = 0x3D540528L;
                        int32_t l_522[1][10][6] = {{{(-4L),(-1L),0x7D7E1E3EL,0x3585D9CAL,(-4L),0x3585D9CAL},{(-4L),(-1L),0x7D7E1E3EL,0x3585D9CAL,(-4L),0x3585D9CAL},{(-4L),(-1L),0x7D7E1E3EL,0x3585D9CAL,(-4L),0x3585D9CAL},{(-4L),(-1L),0x7D7E1E3EL,0x3585D9CAL,(-4L),0x3585D9CAL},{(-4L),(-1L),0x7D7E1E3EL,0x3585D9CAL,(-4L),0x3585D9CAL},{(-4L),(-1L),0x7D7E1E3EL,0x3585D9CAL,(-4L),0x3585D9CAL},{(-4L),(-1L),0x7D7E1E3EL,0x3585D9CAL,(-4L),0x3585D9CAL},{(-4L),(-1L),0x7D7E1E3EL,0x3585D9CAL,(-4L),0x3585D9CAL},{(-4L),(-1L),0x7D7E1E3EL,0x3585D9CAL,(-4L),0x3585D9CAL},{(-4L),(-1L),0x7D7E1E3EL,0x3585D9CAL,(-4L),0x3585D9CAL}}};
                        int8_t l_524 = 0x54L;
                        int64_t l_525 = 0x2F874E7586452E8FL;
                        int i, j, k;
                        ++l_510;
                        --l_526;
                    }
                    for (p_2223->g_77 = 0; (p_2223->g_77 <= 3); p_2223->g_77 += 1)
                    { /* block id: 162 */
                        int16_t l_546 = 0x7C23L;
                        uint32_t l_548 = 3UL;
                        l_505[7] = (safe_rshift_func_int8_t_s_s((safe_mod_func_int64_t_s_s((safe_div_func_int32_t_s_s((safe_rshift_func_int8_t_s_u(0x3CL, 7)), (safe_rshift_func_uint8_t_u_u((++(*l_340)), ((((((void*)0 != l_541) , &p_2223->g_136) == (((p_2223->g_88 , ((safe_mod_func_int8_t_s_s(l_520, (safe_sub_func_int16_t_s_s((*l_71), p_60)))) && (3UL & p_2223->g_153))) , l_546) , l_547)) <= 0x29L) >= p_60))))), l_257[2][5][2])), l_548));
                        (*p_2223->g_459) = &l_514;
                        return (*l_67);
                    }
                }
                for (l_516 = 0; (l_516 < 7); l_516 = safe_add_func_uint32_t_u_u(l_516, 6))
                { /* block id: 171 */
                    return l_551;
                }
            }
            if ((!(((*l_553) = l_552) , ((safe_sub_func_uint32_t_u_u(p_2223->g_117[0].f0, (((safe_mul_func_uint16_t_u_u(p_60, (safe_div_func_int16_t_s_s(((safe_mod_func_int32_t_s_s((safe_div_func_uint64_t_u_u(((safe_mul_func_int8_t_s_s(((((safe_mul_func_int8_t_s_s(((((p_2223->g_78[0] && p_2223->g_77) | (((((((p_60 && (&p_2223->g_458[2] != (p_2223->g_273 , &p_2223->g_458[3]))) & 7UL) >= p_60) , l_570) || p_2223->g_78[2]) >= p_60) >= p_2223->g_78[0])) & p_60) | p_2223->g_190), (*p_61))) , p_60) <= 0x4FC9L) && p_2223->g_66), p_60)) , 0xF3851746D8D456DBL), 18446744073709551608UL)), p_2223->g_136)) ^ 0x35L), l_337[5][8][1])))) | 0x03E43AFFL) ^ l_337[5][4][1]))) == 0x01D5L))))
            { /* block id: 176 */
                int32_t **l_571 = &l_73[1];
                int32_t *l_572 = &l_258[0][3];
                int32_t l_590 = 0x7BE34FE1L;
                if (((p_60 , ((void*)0 == l_199)) , (((*l_571) = &l_258[0][3]) != l_572)))
                { /* block id: 178 */
                    int32_t l_578 = 0x5544666EL;
                    for (l_392 = 0; (l_392 > 4); l_392 = safe_add_func_uint8_t_u_u(l_392, 1))
                    { /* block id: 181 */
                        uint16_t **l_575 = &l_87;
                        uint8_t *l_583 = (void*)0;
                        int32_t l_591 = 0L;
                        int32_t l_592[7] = {0L,0L,0L,0L,0L,0L,0L};
                        int i;
                        (*l_67) &= (((*l_89) = (FAKE_DIVERGE(p_2223->global_1_offset, get_global_id(1), 10) && ((((*l_575) = &l_394[1][4][0]) != (((safe_add_func_int64_t_s_s(l_578, (GROUP_DIVERGE(0, 1) < l_578))) , ((safe_rshift_func_int16_t_s_s(((((void*)0 == &p_2223->g_332[6]) != (--p_2223->g_203[1])) <= ((safe_sub_func_int32_t_s_s(p_60, p_60)) >= p_60)), 15)) , (safe_rshift_func_uint16_t_u_u((p_60 == p_2223->g_466.f0), 1)))) , &p_2223->g_88)) != 0x49904E6FL))) >= l_578);
                        --l_593;
                        return p_60;
                    }
                    (*l_572) ^= ((void*)0 != &p_2223->g_332[2]);
                }
                else
                { /* block id: 190 */
                    return p_60;
                }
            }
            else
            { /* block id: 193 */
                int32_t **l_596 = (void*)0;
                l_597 = &l_257[0][6][1];
                (*p_2223->g_598) = &l_256;
            }
        }
        else
        { /* block id: 197 */
            uint32_t l_604 = 1UL;
            int32_t *l_605[3];
            int32_t l_612 = 0L;
            int64_t l_621 = 0x3C622A37772B6025L;
            int16_t **l_639 = (void*)0;
            int16_t l_640 = 0x1666L;
            int32_t l_653 = (-5L);
            uint32_t **l_664 = &l_202[1];
            uint32_t *l_666[5][2][5] = {{{&l_604,&l_604,&l_604,&l_604,&l_604},{&l_604,&l_604,&l_604,&l_604,&l_604}},{{&l_604,&l_604,&l_604,&l_604,&l_604},{&l_604,&l_604,&l_604,&l_604,&l_604}},{{&l_604,&l_604,&l_604,&l_604,&l_604},{&l_604,&l_604,&l_604,&l_604,&l_604}},{{&l_604,&l_604,&l_604,&l_604,&l_604},{&l_604,&l_604,&l_604,&l_604,&l_604}},{{&l_604,&l_604,&l_604,&l_604,&l_604},{&l_604,&l_604,&l_604,&l_604,&l_604}}};
            uint32_t **l_665 = &l_666[0][1][0];
            int32_t *l_669 = (void*)0;
            int32_t l_670 = (-1L);
            int32_t l_672[5];
            int32_t l_673 = 0L;
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_605[i] = &p_2223->g_304[2][1][0];
            for (i = 0; i < 5; i++)
                l_672[i] = 9L;
            if (((*l_67) &= ((((safe_add_func_int8_t_s_s(((*p_61) = ((*p_61) > 248UL)), ((p_2223->g_601 , (void*)0) != ((l_604 == ((void*)0 == &p_2223->g_76)) , l_605[0])))) ^ (safe_unary_minus_func_uint16_t_u((FAKE_DIVERGE(p_2223->local_2_offset, get_local_id(2), 10) > ((safe_mul_func_int16_t_s_s(((l_604 <= p_2223->g_203[2]) == p_2223->g_77), 0x0E54L)) || 0UL))))) , 0L) & l_604)))
            { /* block id: 200 */
                int64_t l_611[7] = {0x257AD38EBAADA410L,(-1L),0x257AD38EBAADA410L,0x257AD38EBAADA410L,(-1L),0x257AD38EBAADA410L,0x257AD38EBAADA410L};
                uint64_t *l_624 = (void*)0;
                uint8_t *l_633 = &l_337[0][9][1];
                int32_t l_651 = (-2L);
                int32_t l_652 = 0x7D15C192L;
                int i;
                for (l_570 = 4; (l_570 >= 0); l_570 -= 1)
                { /* block id: 203 */
                    int i;
                    (*l_67) = ((8UL ^ p_2223->g_78[l_570]) < ((~6L) == (!p_2223->g_203[1])));
                    return l_611[4];
                }
                l_612 |= 1L;
                l_258[0][3] |= (safe_mod_func_uint16_t_u_u((((safe_sub_func_int64_t_s_s(((8L == ((l_612 == (((safe_sub_func_uint64_t_u_u((safe_rshift_func_uint16_t_u_s((((l_621 ^= p_60) < ((*l_67) >= ((*l_340) = 0x52L))) >= (safe_add_func_uint32_t_u_u(((((((void*)0 != l_624) , (safe_add_func_int8_t_s_s(((safe_add_func_int32_t_s_s((safe_add_func_int8_t_s_s((safe_lshift_func_uint8_t_u_u(((*l_633) |= GROUP_DIVERGE(2, 1)), 3)), (p_2223->g_634--))), (p_2223->g_273 , (((safe_mod_func_uint64_t_u_u(p_60, p_60)) != 0UL) & l_611[3])))) > 7L), 0x5AL))) , l_611[4]) , l_639) == &p_2223->g_332[0]), p_60))), 13)), 0x2CC6DEE6A0846ABBL)) & l_640) , 1UL)) && p_60)) || l_611[4]), 0x6D4D14A16677945AL)) , l_641[0]) != &p_61), l_604));
                for (p_2223->g_466.f0 = 12; (p_2223->g_466.f0 != 35); p_2223->g_466.f0 = safe_add_func_int64_t_s_s(p_2223->g_466.f0, 3))
                { /* block id: 215 */
                    l_652 = ((*l_67) = (l_644 , (l_651 = (safe_mod_func_uint16_t_u_u((safe_mod_func_int32_t_s_s((((1UL > (safe_div_func_int8_t_s_s((*p_61), l_604))) , p_2223->g_334[0]) , 0x2B036F72L), p_60)), ((*l_199) = l_500))))));
                }
            }
            else
            { /* block id: 221 */
                uint64_t l_654 = 0x3D0D5CAD89D7316BL;
                --l_654;
            }
            for (l_200 = 8; (l_200 >= 1); l_200 -= 1)
            { /* block id: 226 */
                int i;
                if (l_200)
                    goto lbl_657;
                if (p_2223->g_334[l_200])
                    break;
                return p_2223->g_334[l_200];
            }
            if ((safe_mod_func_int32_t_s_s((((l_477 , (p_60 < (18446744073709551612UL < (((safe_lshift_func_uint8_t_u_u((safe_sub_func_int16_t_s_s(1L, p_2223->g_66)), 3)) <= l_621) ^ p_60)))) , l_67) != ((*l_665) = ((*l_664) = &l_604))), p_60)))
            { /* block id: 233 */
                int32_t *l_667[8] = {&l_653,&l_612,&l_653,&l_653,&l_612,&l_653,&l_653,&l_612};
                int i;
                l_669 = l_667[1];
                p_2223->g_674[3][2]--;
                (*l_67) &= p_60;
            }
            else
            { /* block id: 237 */
                int64_t *l_681 = &p_2223->g_90;
                int8_t l_682 = 0x4FL;
                (*l_71) = (safe_mod_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_u(p_60, GROUP_DIVERGE(2, 1))), (((*l_681) &= p_2223->g_634) || l_682)));
                (*l_67) ^= p_60;
            }
        }
        (*l_693) = ((safe_mul_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(((p_60 | ((*p_61) , (l_89 != (void*)0))) != p_60), (safe_unary_minus_func_uint32_t_u(l_688)))), (p_2223->g_689 , p_60))) , &l_644);
        for (l_80 = 16; (l_80 >= 60); l_80 = safe_add_func_uint8_t_u_u(l_80, 9))
        { /* block id: 246 */
            uint64_t l_705 = 0x24811D9DF6D4E0F9L;
            uint32_t **l_713 = &l_202[3];
            int64_t *l_716 = (void*)0;
            uint8_t *l_717 = (void*)0;
            uint8_t *l_718 = &l_688;
            if ((safe_div_func_uint16_t_u_u(((safe_div_func_int64_t_s_s((*l_71), (safe_sub_func_int8_t_s_s((safe_div_func_uint64_t_u_u(p_2223->g_64, (safe_unary_minus_func_int16_t_s(0x5D73L)))), p_60)))) <= (((l_705 = 0x899FFC7EL) | (((p_2223->g_706++) && p_60) , ((safe_mul_func_int16_t_s_s((safe_rshift_func_uint8_t_u_u((&l_202[4] != l_713), ((*l_718) = (((safe_sub_func_uint16_t_u_u(((p_60 ^ 0x08BBL) | (*l_67)), p_60)) , l_716) == (void*)0)))), p_60)) ^ 0xED836EEFL))) > 0x6554EFA460DFC477L)), 3UL)))
            { /* block id: 250 */
                uint8_t l_727 = 0xA2L;
                for (l_113 = 0; l_113 < 7; l_113 += 1)
                {
                    for (p_2223->g_76 = 0; p_2223->g_76 < 4; p_2223->g_76 += 1)
                    {
                        l_258[l_113][p_2223->g_76] = (-2L);
                    }
                }
                for (p_2223->g_466.f4 = 0; (p_2223->g_466.f4 < (-2)); p_2223->g_466.f4--)
                { /* block id: 254 */
                    uint64_t **l_723 = &l_89;
                    int32_t l_726[8] = {0x476CCA59L,0x476CCA59L,0x476CCA59L,0x476CCA59L,0x476CCA59L,0x476CCA59L,0x476CCA59L,0x476CCA59L};
                    int i;
                    (1 + 1);
                }
            }
            else
            { /* block id: 267 */
                int32_t **l_733 = &p_2223->g_458[2];
                (*l_733) = &l_258[0][3];
                if (p_60)
                    break;
            }
            for (p_2223->g_68 = 14; (p_2223->g_68 > 5); p_2223->g_68 = safe_sub_func_int64_t_s_s(p_2223->g_68, 3))
            { /* block id: 273 */
                int i, j;
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                p_2223->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 15)), permutations[(safe_mod_func_uint32_t_u_u((!p_2223->g_190), 10))][(safe_mod_func_uint32_t_u_u(p_2223->tid, 15))]));
            }
            if (p_60)
                continue;
        }
    }
    return p_60;
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[15];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 15; i++)
            l_comm_values[i] = 1;
    struct S2 c_2224;
    struct S2* p_2223 = &c_2224;
    struct S2 c_2225 = {
        5UL, // p_2223->g_64
        9L, // p_2223->g_66
        0L, // p_2223->g_68
        {{{0L,(-1L),0x3AABL,(-1L),0L,0x6264L,0x7BB3L,0x110CL,0x2AC6L},{0L,(-1L),0x3AABL,(-1L),0L,0x6264L,0x7BB3L,0x110CL,0x2AC6L},{0L,(-1L),0x3AABL,(-1L),0L,0x6264L,0x7BB3L,0x110CL,0x2AC6L},{0L,(-1L),0x3AABL,(-1L),0L,0x6264L,0x7BB3L,0x110CL,0x2AC6L},{0L,(-1L),0x3AABL,(-1L),0L,0x6264L,0x7BB3L,0x110CL,0x2AC6L},{0L,(-1L),0x3AABL,(-1L),0L,0x6264L,0x7BB3L,0x110CL,0x2AC6L},{0L,(-1L),0x3AABL,(-1L),0L,0x6264L,0x7BB3L,0x110CL,0x2AC6L},{0L,(-1L),0x3AABL,(-1L),0L,0x6264L,0x7BB3L,0x110CL,0x2AC6L}},{{0L,(-1L),0x3AABL,(-1L),0L,0x6264L,0x7BB3L,0x110CL,0x2AC6L},{0L,(-1L),0x3AABL,(-1L),0L,0x6264L,0x7BB3L,0x110CL,0x2AC6L},{0L,(-1L),0x3AABL,(-1L),0L,0x6264L,0x7BB3L,0x110CL,0x2AC6L},{0L,(-1L),0x3AABL,(-1L),0L,0x6264L,0x7BB3L,0x110CL,0x2AC6L},{0L,(-1L),0x3AABL,(-1L),0L,0x6264L,0x7BB3L,0x110CL,0x2AC6L},{0L,(-1L),0x3AABL,(-1L),0L,0x6264L,0x7BB3L,0x110CL,0x2AC6L},{0L,(-1L),0x3AABL,(-1L),0L,0x6264L,0x7BB3L,0x110CL,0x2AC6L},{0L,(-1L),0x3AABL,(-1L),0L,0x6264L,0x7BB3L,0x110CL,0x2AC6L}}}, // p_2223->g_74
        0x1A504A86L, // p_2223->g_75
        (-1L), // p_2223->g_76
        1L, // p_2223->g_77
        {0x13C254F4L,0x13C254F4L,0x13C254F4L,0x13C254F4L,0x13C254F4L}, // p_2223->g_78
        0x4029L, // p_2223->g_88
        0x2A103ABED3A9A789L, // p_2223->g_90
        {{0x7275L},{0x7275L},{0x7275L}}, // p_2223->g_117
        0L, // p_2223->g_136
        (-1L), // p_2223->g_153
        (void*)0, // p_2223->g_159
        0x585D5F9AD4D96096L, // p_2223->g_190
        {255UL,255UL,255UL,255UL}, // p_2223->g_203
        {0}, // p_2223->g_232
        &p_2223->g_232, // p_2223->g_231
        0x95BB7E847FF5A794L, // p_2223->g_273
        (void*)0, // p_2223->g_289
        &p_2223->g_289, // p_2223->g_288
        {{{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L}},{{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L}},{{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L}},{{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L}},{{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L}},{{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L}},{{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L},{0x08B65383L,0x08B65383L}}}, // p_2223->g_304
        0x566ABB72L, // p_2223->g_306
        {{{0xF7DEL},{0x3CDAL},{0xF7DEL}},{{0xF7DEL},{0x3CDAL},{0xF7DEL}},{{0xF7DEL},{0x3CDAL},{0xF7DEL}}}, // p_2223->g_327
        0x7F98L, // p_2223->g_333
        {0x337DL,0x337DL,0x337DL,0x337DL,0x337DL,0x337DL,0x337DL,0x337DL,0x337DL}, // p_2223->g_334
        1L, // p_2223->g_335
        {&p_2223->g_333,&p_2223->g_333,&p_2223->g_333,&p_2223->g_333,&p_2223->g_333,&p_2223->g_333,&p_2223->g_333,&p_2223->g_333}, // p_2223->g_332
        &p_2223->g_332[6], // p_2223->g_331
        (void*)0, // p_2223->g_359
        (void*)0, // p_2223->g_390
        (void*)0, // p_2223->g_391
        {0}, // p_2223->g_407
        {&p_2223->g_68,&p_2223->g_68,&p_2223->g_68,&p_2223->g_68,&p_2223->g_68}, // p_2223->g_458
        {&p_2223->g_458[2],&p_2223->g_458[2],&p_2223->g_458[2],&p_2223->g_458[2],&p_2223->g_458[2],&p_2223->g_458[2],&p_2223->g_458[2],&p_2223->g_458[2]}, // p_2223->g_457
        &p_2223->g_458[2], // p_2223->g_459
        {0xA7BCL}, // p_2223->g_466
        (void*)0, // p_2223->g_487
        &p_2223->g_487, // p_2223->g_486
        &p_2223->g_458[1], // p_2223->g_598
        {0xA8ACL}, // p_2223->g_601
        0x08D3L, // p_2223->g_634
        (void*)0, // p_2223->g_668
        {{0x98E6D6FAL,4294967295UL,1UL,4294967295UL,0x98E6D6FAL,0x98E6D6FAL,4294967295UL},{0x98E6D6FAL,4294967295UL,1UL,4294967295UL,0x98E6D6FAL,0x98E6D6FAL,4294967295UL},{0x98E6D6FAL,4294967295UL,1UL,4294967295UL,0x98E6D6FAL,0x98E6D6FAL,4294967295UL},{0x98E6D6FAL,4294967295UL,1UL,4294967295UL,0x98E6D6FAL,0x98E6D6FAL,4294967295UL},{0x98E6D6FAL,4294967295UL,1UL,4294967295UL,0x98E6D6FAL,0x98E6D6FAL,4294967295UL},{0x98E6D6FAL,4294967295UL,1UL,4294967295UL,0x98E6D6FAL,0x98E6D6FAL,4294967295UL},{0x98E6D6FAL,4294967295UL,1UL,4294967295UL,0x98E6D6FAL,0x98E6D6FAL,4294967295UL}}, // p_2223->g_674
        {65528UL}, // p_2223->g_689
        (void*)0, // p_2223->g_690
        &p_2223->g_407, // p_2223->g_692
        {(void*)0,&p_2223->g_692,(void*)0,(void*)0,&p_2223->g_692,(void*)0}, // p_2223->g_691
        0x1BL, // p_2223->g_706
        &p_2223->g_88, // p_2223->g_722
        &p_2223->g_722, // p_2223->g_721
        (void*)0, // p_2223->g_732
        {{(-1L),0L,(-1L),(-1L),0L,(-1L),(-1L),0L,(-1L),(-1L)},{(-1L),0L,(-1L),(-1L),0L,(-1L),(-1L),0L,(-1L),(-1L)}}, // p_2223->g_741
        {0xFE26C38FL}, // p_2223->g_757
        9UL, // p_2223->g_766
        &p_2223->g_458[2], // p_2223->g_779
        {4294967295UL,4294967295UL}, // p_2223->g_787
        0xEA0D91F7L, // p_2223->g_797
        {{&p_2223->g_797,&p_2223->g_797,&p_2223->g_797,&p_2223->g_797,&p_2223->g_797,&p_2223->g_797}}, // p_2223->g_796
        {0x0E730A49L,0x0E730A49L}, // p_2223->g_871
        {{65535UL},{65535UL},{65535UL}}, // p_2223->g_878
        &p_2223->g_458[4], // p_2223->g_894
        0xCCF2L, // p_2223->g_910
        {0x20A3L}, // p_2223->g_983
        (-8L), // p_2223->g_1003
        0x14L, // p_2223->g_1062
        (-1L), // p_2223->g_1128
        {{(-3L),0x6847L,0L,0x3B6BL,0x6847L,0x3B6BL,0L,0x6847L,(-3L),(-3L)},{(-3L),0x6847L,0L,0x3B6BL,0x6847L,0x3B6BL,0L,0x6847L,(-3L),(-3L)},{(-3L),0x6847L,0L,0x3B6BL,0x6847L,0x3B6BL,0L,0x6847L,(-3L),(-3L)},{(-3L),0x6847L,0L,0x3B6BL,0x6847L,0x3B6BL,0L,0x6847L,(-3L),(-3L)},{(-3L),0x6847L,0L,0x3B6BL,0x6847L,0x3B6BL,0L,0x6847L,(-3L),(-3L)},{(-3L),0x6847L,0L,0x3B6BL,0x6847L,0x3B6BL,0L,0x6847L,(-3L),(-3L)},{(-3L),0x6847L,0L,0x3B6BL,0x6847L,0x3B6BL,0L,0x6847L,(-3L),(-3L)},{(-3L),0x6847L,0L,0x3B6BL,0x6847L,0x3B6BL,0L,0x6847L,(-3L),(-3L)}}, // p_2223->g_1199
        &p_2223->g_878[2], // p_2223->g_1303
        &p_2223->g_1303, // p_2223->g_1302
        {{{&p_2223->g_1302,&p_2223->g_1302,(void*)0,&p_2223->g_1302},{&p_2223->g_1302,&p_2223->g_1302,(void*)0,&p_2223->g_1302},{&p_2223->g_1302,&p_2223->g_1302,(void*)0,&p_2223->g_1302},{&p_2223->g_1302,&p_2223->g_1302,(void*)0,&p_2223->g_1302},{&p_2223->g_1302,&p_2223->g_1302,(void*)0,&p_2223->g_1302},{&p_2223->g_1302,&p_2223->g_1302,(void*)0,&p_2223->g_1302},{&p_2223->g_1302,&p_2223->g_1302,(void*)0,&p_2223->g_1302},{&p_2223->g_1302,&p_2223->g_1302,(void*)0,&p_2223->g_1302},{&p_2223->g_1302,&p_2223->g_1302,(void*)0,&p_2223->g_1302},{&p_2223->g_1302,&p_2223->g_1302,(void*)0,&p_2223->g_1302}}}, // p_2223->g_1301
        (void*)0, // p_2223->g_1305
        {(void*)0,(void*)0,(void*)0,(void*)0}, // p_2223->g_1344
        &p_2223->g_1344[0], // p_2223->g_1343
        (void*)0, // p_2223->g_1354
        (void*)0, // p_2223->g_1380
        0x2C9F39A8L, // p_2223->g_1428
        (void*)0, // p_2223->g_1497
        &p_2223->g_231, // p_2223->g_1551
        &p_2223->g_1551, // p_2223->g_1550
        &p_2223->g_458[2], // p_2223->g_1559
        0x32L, // p_2223->g_1562
        &p_2223->g_878[2].f0, // p_2223->g_1579
        &p_2223->g_1579, // p_2223->g_1578
        18446744073709551606UL, // p_2223->g_1588
        {{(void*)0,&p_2223->g_692,&p_2223->g_692},{(void*)0,&p_2223->g_692,&p_2223->g_692},{(void*)0,&p_2223->g_692,&p_2223->g_692},{(void*)0,&p_2223->g_692,&p_2223->g_692},{(void*)0,&p_2223->g_692,&p_2223->g_692},{(void*)0,&p_2223->g_692,&p_2223->g_692},{(void*)0,&p_2223->g_692,&p_2223->g_692},{(void*)0,&p_2223->g_692,&p_2223->g_692},{(void*)0,&p_2223->g_692,&p_2223->g_692}}, // p_2223->g_1611
        (void*)0, // p_2223->g_1612
        {0x4842L}, // p_2223->g_1644
        &p_2223->g_78[0], // p_2223->g_1653
        0xB3D9D682D5BE5E18L, // p_2223->g_1690
        {{&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690},{&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690},{&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690},{&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690},{&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690},{&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690},{&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690},{&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690},{&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690,&p_2223->g_1690}}, // p_2223->g_1689
        {{{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588}},{{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588}},{{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588}},{{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588},{&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588,&p_2223->g_1588}}}, // p_2223->g_1691
        (void*)0, // p_2223->g_1731
        {{{0x790BL,0x30B4L,1UL,0UL,0x30B4L},{0x790BL,0x30B4L,1UL,0UL,0x30B4L},{0x790BL,0x30B4L,1UL,0UL,0x30B4L},{0x790BL,0x30B4L,1UL,0UL,0x30B4L}},{{0x790BL,0x30B4L,1UL,0UL,0x30B4L},{0x790BL,0x30B4L,1UL,0UL,0x30B4L},{0x790BL,0x30B4L,1UL,0UL,0x30B4L},{0x790BL,0x30B4L,1UL,0UL,0x30B4L}},{{0x790BL,0x30B4L,1UL,0UL,0x30B4L},{0x790BL,0x30B4L,1UL,0UL,0x30B4L},{0x790BL,0x30B4L,1UL,0UL,0x30B4L},{0x790BL,0x30B4L,1UL,0UL,0x30B4L}},{{0x790BL,0x30B4L,1UL,0UL,0x30B4L},{0x790BL,0x30B4L,1UL,0UL,0x30B4L},{0x790BL,0x30B4L,1UL,0UL,0x30B4L},{0x790BL,0x30B4L,1UL,0UL,0x30B4L}},{{0x790BL,0x30B4L,1UL,0UL,0x30B4L},{0x790BL,0x30B4L,1UL,0UL,0x30B4L},{0x790BL,0x30B4L,1UL,0UL,0x30B4L},{0x790BL,0x30B4L,1UL,0UL,0x30B4L}},{{0x790BL,0x30B4L,1UL,0UL,0x30B4L},{0x790BL,0x30B4L,1UL,0UL,0x30B4L},{0x790BL,0x30B4L,1UL,0UL,0x30B4L},{0x790BL,0x30B4L,1UL,0UL,0x30B4L}},{{0x790BL,0x30B4L,1UL,0UL,0x30B4L},{0x790BL,0x30B4L,1UL,0UL,0x30B4L},{0x790BL,0x30B4L,1UL,0UL,0x30B4L},{0x790BL,0x30B4L,1UL,0UL,0x30B4L}}}, // p_2223->g_1741
        {(void*)0,(void*)0}, // p_2223->g_1840
        (void*)0, // p_2223->g_1841
        {{{&p_2223->g_1840[0],&p_2223->g_1840[0]}},{{&p_2223->g_1840[0],&p_2223->g_1840[0]}},{{&p_2223->g_1840[0],&p_2223->g_1840[0]}},{{&p_2223->g_1840[0],&p_2223->g_1840[0]}},{{&p_2223->g_1840[0],&p_2223->g_1840[0]}},{{&p_2223->g_1840[0],&p_2223->g_1840[0]}},{{&p_2223->g_1840[0],&p_2223->g_1840[0]}}}, // p_2223->g_1839
        {{{0xF93CL,0xF93CL,65532UL,0xDD72L,0x367EL,0xDD72L,65532UL},{0xF93CL,0xF93CL,65532UL,0xDD72L,0x367EL,0xDD72L,65532UL},{0xF93CL,0xF93CL,65532UL,0xDD72L,0x367EL,0xDD72L,65532UL}}}, // p_2223->g_1980
        &p_2223->g_159, // p_2223->g_2073
        &p_2223->g_2073, // p_2223->g_2072
        0L, // p_2223->g_2097
        18446744073709551615UL, // p_2223->g_2186
        {0x3877L}, // p_2223->g_2188
        &p_2223->g_2097, // p_2223->g_2199
        &p_2223->g_68, // p_2223->g_2217
        {{0x34EFF2FEL,0x0F13C408L,0x6F8E7AE0L,0x0F13C408L,0x34EFF2FEL,0x34EFF2FEL,0x0F13C408L},{0x34EFF2FEL,0x0F13C408L,0x6F8E7AE0L,0x0F13C408L,0x34EFF2FEL,0x34EFF2FEL,0x0F13C408L},{0x34EFF2FEL,0x0F13C408L,0x6F8E7AE0L,0x0F13C408L,0x34EFF2FEL,0x34EFF2FEL,0x0F13C408L},{0x34EFF2FEL,0x0F13C408L,0x6F8E7AE0L,0x0F13C408L,0x34EFF2FEL,0x34EFF2FEL,0x0F13C408L},{0x34EFF2FEL,0x0F13C408L,0x6F8E7AE0L,0x0F13C408L,0x34EFF2FEL,0x34EFF2FEL,0x0F13C408L}}, // p_2223->g_2218
        {{0x52D4A453L,0x5E065A7BL,0x52D4A453L,0x52D4A453L,0x5E065A7BL,0x52D4A453L,0x52D4A453L},{0x52D4A453L,0x5E065A7BL,0x52D4A453L,0x52D4A453L,0x5E065A7BL,0x52D4A453L,0x52D4A453L},{0x52D4A453L,0x5E065A7BL,0x52D4A453L,0x52D4A453L,0x5E065A7BL,0x52D4A453L,0x52D4A453L},{0x52D4A453L,0x5E065A7BL,0x52D4A453L,0x52D4A453L,0x5E065A7BL,0x52D4A453L,0x52D4A453L},{0x52D4A453L,0x5E065A7BL,0x52D4A453L,0x52D4A453L,0x5E065A7BL,0x52D4A453L,0x52D4A453L},{0x52D4A453L,0x5E065A7BL,0x52D4A453L,0x52D4A453L,0x5E065A7BL,0x52D4A453L,0x52D4A453L},{0x52D4A453L,0x5E065A7BL,0x52D4A453L,0x52D4A453L,0x5E065A7BL,0x52D4A453L,0x52D4A453L},{0x52D4A453L,0x5E065A7BL,0x52D4A453L,0x52D4A453L,0x5E065A7BL,0x52D4A453L,0x52D4A453L}}, // p_2223->g_2220
        (-4L), // p_2223->g_2222
        sequence_input[get_global_id(0)], // p_2223->global_0_offset
        sequence_input[get_global_id(1)], // p_2223->global_1_offset
        sequence_input[get_global_id(2)], // p_2223->global_2_offset
        sequence_input[get_local_id(0)], // p_2223->local_0_offset
        sequence_input[get_local_id(1)], // p_2223->local_1_offset
        sequence_input[get_local_id(2)], // p_2223->local_2_offset
        sequence_input[get_group_id(0)], // p_2223->group_0_offset
        sequence_input[get_group_id(1)], // p_2223->group_1_offset
        sequence_input[get_group_id(2)], // p_2223->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 15)), permutations[0][get_linear_local_id()])), // p_2223->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_2224 = c_2225;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2223);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2223->g_64, "p_2223->g_64", print_hash_value);
    transparent_crc(p_2223->g_66, "p_2223->g_66", print_hash_value);
    transparent_crc(p_2223->g_68, "p_2223->g_68", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_2223->g_74[i][j][k], "p_2223->g_74[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2223->g_75, "p_2223->g_75", print_hash_value);
    transparent_crc(p_2223->g_76, "p_2223->g_76", print_hash_value);
    transparent_crc(p_2223->g_77, "p_2223->g_77", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_2223->g_78[i], "p_2223->g_78[i]", print_hash_value);

    }
    transparent_crc(p_2223->g_88, "p_2223->g_88", print_hash_value);
    transparent_crc(p_2223->g_90, "p_2223->g_90", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_2223->g_117[i].f0, "p_2223->g_117[i].f0", print_hash_value);

    }
    transparent_crc(p_2223->g_136, "p_2223->g_136", print_hash_value);
    transparent_crc(p_2223->g_153, "p_2223->g_153", print_hash_value);
    transparent_crc(p_2223->g_190, "p_2223->g_190", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2223->g_203[i], "p_2223->g_203[i]", print_hash_value);

    }
    transparent_crc(p_2223->g_273, "p_2223->g_273", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_2223->g_304[i][j][k], "p_2223->g_304[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2223->g_306, "p_2223->g_306", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_2223->g_327[i][j].f0, "p_2223->g_327[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_2223->g_333, "p_2223->g_333", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_2223->g_334[i], "p_2223->g_334[i]", print_hash_value);

    }
    transparent_crc(p_2223->g_335, "p_2223->g_335", print_hash_value);
    transparent_crc(p_2223->g_466.f2, "p_2223->g_466.f2", print_hash_value);
    transparent_crc(p_2223->g_601.f0, "p_2223->g_601.f0", print_hash_value);
    transparent_crc(p_2223->g_634, "p_2223->g_634", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_2223->g_674[i][j], "p_2223->g_674[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2223->g_689.f0, "p_2223->g_689.f0", print_hash_value);
    transparent_crc(p_2223->g_706, "p_2223->g_706", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_2223->g_741[i][j], "p_2223->g_741[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_2223->g_757[i], "p_2223->g_757[i]", print_hash_value);

    }
    transparent_crc(p_2223->g_766, "p_2223->g_766", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_2223->g_787[i], "p_2223->g_787[i]", print_hash_value);

    }
    transparent_crc(p_2223->g_797, "p_2223->g_797", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_2223->g_871[i], "p_2223->g_871[i]", print_hash_value);

    }
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_2223->g_878[i].f0, "p_2223->g_878[i].f0", print_hash_value);

    }
    transparent_crc(p_2223->g_910, "p_2223->g_910", print_hash_value);
    transparent_crc(p_2223->g_1003, "p_2223->g_1003", print_hash_value);
    transparent_crc(p_2223->g_1062, "p_2223->g_1062", print_hash_value);
    transparent_crc(p_2223->g_1128, "p_2223->g_1128", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_2223->g_1199[i][j], "p_2223->g_1199[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2223->g_1428, "p_2223->g_1428", print_hash_value);
    transparent_crc(p_2223->g_1562, "p_2223->g_1562", print_hash_value);
    transparent_crc(p_2223->g_1588, "p_2223->g_1588", print_hash_value);
    transparent_crc(p_2223->g_1690, "p_2223->g_1690", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_2223->g_1741[i][j][k], "p_2223->g_1741[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_2223->g_1980[i][j][k], "p_2223->g_1980[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2223->g_2097, "p_2223->g_2097", print_hash_value);
    transparent_crc(p_2223->g_2186, "p_2223->g_2186", print_hash_value);
    transparent_crc(p_2223->g_2188.f0, "p_2223->g_2188.f0", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_2223->g_2218[i][j], "p_2223->g_2218[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_2223->g_2220[i][j], "p_2223->g_2220[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2223->g_2222, "p_2223->g_2222", print_hash_value);
    transparent_crc(p_2223->l_comm_values[get_linear_local_id()], "p_2223->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_2223->g_comm_values[get_linear_group_id() * 15 + get_linear_local_id()], "p_2223->g_comm_values[get_linear_group_id() * 15 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
