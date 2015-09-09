// ---fake_divergence ---inter_thread_comm -g 42,11,7 -l 2,1,1
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

__constant uint32_t permutations[10][2] = {
{1,0}, // permutation 0
{1,0}, // permutation 1
{1,0}, // permutation 2
{1,0}, // permutation 3
{1,0}, // permutation 4
{1,0}, // permutation 5
{1,0}, // permutation 6
{1,0}, // permutation 7
{1,0}, // permutation 8
{1,0} // permutation 9
};

// Seed: 115

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int8_t  f0;
};

union U1 {
   volatile int8_t * f0;
   volatile int32_t  f1;
};

union U2 {
   uint64_t  f0;
   int32_t  f1;
   uint8_t  f2;
   int16_t  f3;
};

struct S3 {
    int32_t g_4;
    volatile uint64_t g_6;
    uint32_t g_34;
    uint32_t g_54[6];
    struct S0 g_75[2];
    uint16_t g_85;
    int16_t g_91;
    uint32_t g_97[1];
    uint64_t g_104[5][5][7];
    uint64_t g_106;
    uint32_t g_109;
    int32_t g_114[2][5][7];
    int32_t *g_144;
    union U2 g_156[8][9][3];
    int32_t g_165;
    int64_t g_169;
    uint32_t g_179;
    union U1 g_189;
    int32_t *g_191[2][2][4];
    union U1 g_194[10];
    uint32_t g_248;
    int16_t g_318;
    uint16_t g_319;
    volatile union U1 g_334[4];
    volatile union U1 *g_333;
    volatile union U1 * volatile *g_332[10][10];
    struct S0 * volatile *g_446;
    int32_t **g_468[6][8][3];
    int32_t ***g_467;
    int32_t *g_480;
    struct S0 *g_494;
    union U2 g_508[5][1][7];
    int8_t *g_558[4][6][8];
    uint32_t g_608[10];
    int64_t *g_692;
    struct S0 ***g_706;
    int32_t g_748;
    union U1 g_930;
    uint16_t g_932[10];
    struct S0 * volatile * volatile *g_961[4][7][7];
    struct S0 * volatile * volatile * volatile * volatile g_960[6];
    volatile int32_t g_1014;
    int32_t ** volatile g_1023;
    volatile uint32_t g_1098[1][6][3];
    volatile uint32_t * volatile g_1097;
    volatile uint32_t * volatile *g_1096;
    int16_t g_1115;
    volatile union U1 g_1147[4][10];
    int32_t ** volatile g_1157;
    uint8_t g_1220[6][5][8];
    int64_t g_1244[8][2][3];
    volatile int32_t g_1262;
    volatile int32_t *g_1261;
    volatile int32_t * volatile * volatile g_1260;
    int32_t * volatile g_1280;
    volatile uint16_t g_1283[3][9][2];
    union U1 *g_1349;
    int32_t ** volatile g_1352[5];
    volatile union U1 g_1369;
    union U1 g_1373[6][7][6];
    union U1 g_1393;
    int32_t ** volatile g_1496;
    int32_t g_1501;
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
int32_t  func_1(struct S3 * p_1510);
int32_t  func_9(uint8_t  p_10, uint32_t  p_11, int32_t * p_12, int32_t  p_13, struct S3 * p_1510);
int16_t  func_16(int8_t  p_17, struct S3 * p_1510);
int32_t * func_21(uint32_t  p_22, int16_t  p_23, int32_t  p_24, int8_t  p_25, int32_t * p_26, struct S3 * p_1510);
uint8_t  func_35(int64_t  p_36, uint8_t  p_37, int32_t * p_38, uint32_t * p_39, uint8_t  p_40, struct S3 * p_1510);
int32_t  func_43(uint64_t  p_44, struct S3 * p_1510);
int32_t * func_46(uint16_t  p_47, int32_t * p_48, uint32_t  p_49, uint32_t * p_50, struct S3 * p_1510);
int32_t * func_57(int16_t  p_58, union U2  p_59, uint32_t * p_60, struct S3 * p_1510);
uint32_t * func_65(int32_t * p_66, int8_t * p_67, uint32_t * p_68, uint8_t  p_69, struct S3 * p_1510);
int8_t * func_70(struct S0  p_71, uint8_t  p_72, int32_t * p_73, uint64_t  p_74, struct S3 * p_1510);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1510->g_6 p_1510->g_4 p_1510->l_comm_values p_1510->g_54 p_1510->g_75 p_1510->g_85 p_1510->g_104 p_1510->g_106 p_1510->g_109 p_1510->g_97 p_1510->g_114 p_1510->g_156 p_1510->g_165 p_1510->g_480 p_1510->g_318 p_1510->g_91 p_1510->g_34 p_1510->g_156.f0 p_1510->g_558 p_1510->g_319 p_1510->g_179 p_1510->g_248 p_1510->g_608 p_1510->g_467 p_1510->g_468 p_1510->g_494 p_1510->g_333 p_1510->g_508 p_1510->g_comm_values p_1510->g_692 p_1510->g_706 p_1510->g_191 p_1510->g_169 p_1510->g_748 p_1510->g_1014 p_1510->g_1023 p_1510->g_1096 p_1510->g_1098 p_1510->g_334 p_1510->g_932 p_1510->g_1147 p_1510->g_1157 p_1510->g_1220 p_1510->g_1496
 * writes: p_1510->g_6 p_1510->g_34 p_1510->g_54 p_1510->g_85 p_1510->g_91 p_1510->g_104 p_1510->g_106 p_1510->g_109 p_1510->g_75 p_1510->g_144 p_1510->g_comm_values p_1510->g_165 p_1510->g_179 p_1510->g_508.f2 p_1510->g_494 p_1510->g_248 p_1510->g_608 p_1510->g_191 p_1510->g_114 p_1510->g_319 p_1510->g_558 p_1510->g_706 p_1510->g_169 p_1510->g_4 p_1510->g_480 p_1510->g_692 p_1510->g_932 p_1510->g_748 p_1510->g_156.f3 p_1510->g_1115 p_1510->g_1220
 */
int32_t  func_1(struct S3 * p_1510)
{ /* block id: 4 */
    int32_t *l_2 = (void*)0;
    int32_t *l_3 = &p_1510->g_4;
    int32_t *l_5[2][1];
    int16_t l_750 = 0x4883L;
    uint16_t l_751[3];
    int8_t l_1509 = (-1L);
    int i, j;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
            l_5[i][j] = &p_1510->g_4;
    }
    for (i = 0; i < 3; i++)
        l_751[i] = 4UL;
    ++p_1510->g_6;
    l_1509 |= (!func_9(p_1510->g_4, p_1510->g_6, ((((0UL == 4294967295UL) || (safe_div_func_int16_t_s_s(p_1510->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1510->tid, 2))], func_16(p_1510->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1510->tid, 2))], p_1510)))) >= (l_751[0] &= (((((-9L) < (*l_3)) | 0L) || p_1510->g_169) ^ l_750))) , l_5[0][0]), p_1510->g_748, p_1510));
    return (**p_1510->g_1496);
}


/* ------------------------------------------ */
/* 
 * reads : p_1510->g_169 p_1510->g_156.f0 p_1510->g_104 p_1510->g_97 p_1510->g_114 p_1510->g_106 p_1510->g_34 p_1510->g_4 p_1510->g_179 p_1510->g_54 p_1510->g_75.f0 p_1510->g_91 p_1510->g_480 p_1510->g_165 p_1510->l_comm_values p_1510->g_319 p_1510->g_318 p_1510->g_608 p_1510->g_248 p_1510->g_1014 p_1510->g_1023 p_1510->g_494 p_1510->g_558 p_1510->g_1096 p_1510->g_1098 p_1510->g_333 p_1510->g_334 p_1510->g_85 p_1510->g_932 p_1510->g_1147 p_1510->g_comm_values p_1510->g_1157 p_1510->g_1220
 * writes: p_1510->g_169 p_1510->g_104 p_1510->g_179 p_1510->g_75.f0 p_1510->g_91 p_1510->g_248 p_1510->g_165 p_1510->g_508.f2 p_1510->g_4 p_1510->g_114 p_1510->g_106 p_1510->g_480 p_1510->g_692 p_1510->g_319 p_1510->g_932 p_1510->g_748 p_1510->g_191 p_1510->g_109 p_1510->g_75 p_1510->g_comm_values p_1510->g_156.f3 p_1510->g_85 p_1510->g_1115 p_1510->g_558 p_1510->g_1220
 */
int32_t  func_9(uint8_t  p_10, uint32_t  p_11, int32_t * p_12, int32_t  p_13, struct S3 * p_1510)
{ /* block id: 343 */
    struct S0 *l_786 = &p_1510->g_75[1];
    int32_t l_789[8][8][4] = {{{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L}},{{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L}},{{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L}},{{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L}},{{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L}},{{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L}},{{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L}},{{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L},{(-1L),0x57628C43L,0x14AA92A0L,0x5B909D35L}}};
    uint32_t l_814 = 0xB39369CAL;
    union U2 l_861 = {0xA5A23881A695F134L};
    int32_t l_864 = 0L;
    int8_t l_910 = 1L;
    struct S0 l_969[4] = {{-4L},{-4L},{-4L},{-4L}};
    uint32_t *l_1002 = (void*)0;
    int8_t **l_1084 = &p_1510->g_558[1][3][7];
    int8_t l_1100 = 0x39L;
    uint32_t *l_1110 = &p_1510->g_34;
    uint32_t **l_1109 = &l_1110;
    int64_t *l_1114[8][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
    uint64_t l_1180 = 0UL;
    int32_t **l_1263 = (void*)0;
    union U2 *l_1277 = &p_1510->g_508[0][0][1];
    struct S0 *l_1282 = &l_969[0];
    int32_t *l_1371 = &p_1510->g_748;
    union U1 *l_1374 = (void*)0;
    int32_t l_1394 = 0x3CC14A28L;
    struct S0 ***l_1403 = (void*)0;
    int64_t l_1469 = 0x36B6925F978A47DCL;
    int32_t *l_1495 = &p_1510->g_114[0][2][3];
    int32_t l_1500[7];
    int i, j, k;
    for (i = 0; i < 7; i++)
        l_1500[i] = 1L;
    for (p_1510->g_169 = 0; (p_1510->g_169 <= 21); p_1510->g_169 = safe_add_func_uint16_t_u_u(p_1510->g_169, 5))
    { /* block id: 346 */
        int32_t l_762 = 0x3C3D2537L;
        uint64_t *l_763 = &p_1510->g_104[4][3][2];
        struct S0 *l_787 = &p_1510->g_75[0];
        int8_t l_788 = (-1L);
        uint32_t *l_790[6][1] = {{&p_1510->g_179},{&p_1510->g_179},{&p_1510->g_179},{&p_1510->g_179},{&p_1510->g_179},{&p_1510->g_179}};
        int8_t *l_791 = (void*)0;
        int8_t *l_792 = &p_1510->g_75[0].f0;
        int32_t l_797[6] = {0x25A4A9C9L,0x25A4A9C9L,0x25A4A9C9L,0x25A4A9C9L,0x25A4A9C9L,0x25A4A9C9L};
        uint16_t l_805 = 1UL;
        int i, j;
        if ((((-2L) >= 0UL) < ((safe_add_func_int8_t_s_s(((*l_792) ^= (safe_div_func_uint32_t_u_u(((p_1510->g_179 &= (((p_1510->g_156[3][7][2].f0 || ((safe_rshift_func_int16_t_s_s(((l_762 >= p_10) >= (((*l_763)++) <= (safe_rshift_func_uint16_t_u_u(p_10, 2)))), ((safe_sub_func_int8_t_s_s((safe_rshift_func_int8_t_s_u(((((safe_mod_func_int8_t_s_s(((safe_mod_func_int32_t_s_s((safe_sub_func_uint32_t_u_u(0x4FFC4A00L, ((p_1510->g_97[0] < ((safe_add_func_uint16_t_u_u((safe_mod_func_int32_t_s_s(((safe_div_func_uint32_t_u_u((safe_div_func_int64_t_s_s((l_786 != l_787), p_1510->g_114[0][2][3])), 4294967295UL)) | l_788), 1UL)), p_13)) , p_1510->g_106)) , 4294967295UL))), p_1510->g_34)) & l_789[7][7][1]), l_789[2][1][3])) > p_11) | (*p_12)) ^ 0x0ACBFCA3L), 0)), p_13)) | l_789[0][2][0]))) , 0x4483L)) & (*p_12)) <= p_10)) < 0x7F6ABA20L), p_1510->g_54[3]))), l_789[7][7][1])) , 0xB651L)))
        { /* block id: 350 */
            return l_789[0][0][1];
        }
        else
        { /* block id: 352 */
            int8_t l_802 = (-9L);
            int32_t l_803 = 2L;
            int32_t l_804 = 0x439B6930L;
            int64_t **l_840 = (void*)0;
            int64_t **l_841 = &p_1510->g_692;
            for (p_1510->g_91 = (-23); (p_1510->g_91 >= 24); p_1510->g_91 = safe_add_func_uint32_t_u_u(p_1510->g_91, 8))
            { /* block id: 355 */
                int32_t l_800 = 1L;
                int32_t l_801[8][10][3] = {{{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL}},{{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL}},{{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL}},{{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL}},{{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL}},{{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL}},{{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL}},{{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL},{(-10L),(-1L),0x39AAA9EFL}}};
                union U2 l_819 = {18446744073709551615UL};
                int i, j, k;
                if ((*p_1510->g_480))
                    break;
                for (p_1510->g_248 = 0; (p_1510->g_248 < 48); p_1510->g_248++)
                { /* block id: 359 */
                    int32_t *l_798 = &l_789[7][7][1];
                    int32_t *l_799[3][8][6] = {{{&p_1510->g_165,(void*)0,&p_1510->g_114[0][2][3],(void*)0,&p_1510->g_114[0][2][3],(void*)0},{&p_1510->g_165,(void*)0,&p_1510->g_114[0][2][3],(void*)0,&p_1510->g_114[0][2][3],(void*)0},{&p_1510->g_165,(void*)0,&p_1510->g_114[0][2][3],(void*)0,&p_1510->g_114[0][2][3],(void*)0},{&p_1510->g_165,(void*)0,&p_1510->g_114[0][2][3],(void*)0,&p_1510->g_114[0][2][3],(void*)0},{&p_1510->g_165,(void*)0,&p_1510->g_114[0][2][3],(void*)0,&p_1510->g_114[0][2][3],(void*)0},{&p_1510->g_165,(void*)0,&p_1510->g_114[0][2][3],(void*)0,&p_1510->g_114[0][2][3],(void*)0},{&p_1510->g_165,(void*)0,&p_1510->g_114[0][2][3],(void*)0,&p_1510->g_114[0][2][3],(void*)0},{&p_1510->g_165,(void*)0,&p_1510->g_114[0][2][3],(void*)0,&p_1510->g_114[0][2][3],(void*)0}},{{&p_1510->g_165,(void*)0,&p_1510->g_114[0][2][3],(void*)0,&p_1510->g_114[0][2][3],(void*)0},{&p_1510->g_165,(void*)0,&p_1510->g_114[0][2][3],(void*)0,&p_1510->g_114[0][2][3],(void*)0},{&p_1510->g_165,(void*)0,&p_1510->g_114[0][2][3],(void*)0,&p_1510->g_114[0][2][3],(void*)0},{&p_1510->g_165,(void*)0,&p_1510->g_114[0][2][3],(void*)0,&p_1510->g_114[0][2][3],(void*)0},{&p_1510->g_165,(void*)0,&p_1510->g_114[0][2][3],(void*)0,&p_1510->g_114[0][2][3],(void*)0},{&p_1510->g_165,(void*)0,&p_1510->g_114[0][2][3],(void*)0,&p_1510->g_114[0][2][3],(void*)0},{&p_1510->g_165,(void*)0,&p_1510->g_114[0][2][3],(void*)0,&p_1510->g_114[0][2][3],(void*)0},{&p_1510->g_165,(void*)0,&p_1510->g_114[0][2][3],(void*)0,&p_1510->g_114[0][2][3],(void*)0}},{{&p_1510->g_165,(void*)0,&p_1510->g_114[0][2][3],(void*)0,&p_1510->g_114[0][2][3],(void*)0},{&p_1510->g_165,(void*)0,&p_1510->g_114[0][2][3],(void*)0,&p_1510->g_114[0][2][3],(void*)0},{&p_1510->g_165,(void*)0,&p_1510->g_114[0][2][3],(void*)0,&p_1510->g_114[0][2][3],(void*)0},{&p_1510->g_165,(void*)0,&p_1510->g_114[0][2][3],(void*)0,&p_1510->g_114[0][2][3],(void*)0},{&p_1510->g_165,(void*)0,&p_1510->g_114[0][2][3],(void*)0,&p_1510->g_114[0][2][3],(void*)0},{&p_1510->g_165,(void*)0,&p_1510->g_114[0][2][3],(void*)0,&p_1510->g_114[0][2][3],(void*)0},{&p_1510->g_165,(void*)0,&p_1510->g_114[0][2][3],(void*)0,&p_1510->g_114[0][2][3],(void*)0},{&p_1510->g_165,(void*)0,&p_1510->g_114[0][2][3],(void*)0,&p_1510->g_114[0][2][3],(void*)0}}};
                    int i, j, k;
                    ++l_805;
                }
                for (p_1510->g_165 = 0; (p_1510->g_165 > 12); p_1510->g_165 = safe_add_func_int16_t_s_s(p_1510->g_165, 4))
                { /* block id: 364 */
                    int8_t *l_824 = &l_788;
                    int32_t l_825 = 0x3A590AF9L;
                    int32_t *l_826 = &p_1510->g_114[0][2][3];
                    if ((*p_12))
                        break;
                    l_803 = (safe_mul_func_uint8_t_u_u((p_10 != ((safe_lshift_func_uint8_t_u_u(p_1510->g_169, (p_1510->g_508[0][0][1].f2 = l_814))) < (safe_div_func_int16_t_s_s((l_804 ^= p_10), p_1510->g_97[0])))), (((*p_12) = (*p_12)) && ((*l_826) &= (safe_mul_func_int8_t_s_s((((((l_819 , ((((*p_12) &= (((*l_824) = ((*l_792) = (safe_mul_func_int16_t_s_s(p_11, (safe_mod_func_int16_t_s_s(0x6566L, p_1510->g_97[0])))))) && p_1510->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1510->tid, 2))])) <= GROUP_DIVERGE(0, 1)) && 4294967295UL)) >= 0x7DL) < l_825) && l_789[2][6][0]) && 0x4B8EL), 255UL))))));
                    return l_762;
                }
                for (l_819.f3 = 0; (l_819.f3 <= 3); l_819.f3 += 1)
                { /* block id: 378 */
                    int32_t l_828[1][4] = {{0x4F43C5C4L,0x4F43C5C4L,0x4F43C5C4L,0x4F43C5C4L}};
                    int i, j;
                    for (p_1510->g_106 = 0; (p_1510->g_106 <= 3); p_1510->g_106 += 1)
                    { /* block id: 381 */
                        int32_t **l_827 = &p_1510->g_480;
                        (*p_1510->g_480) |= 0L;
                        (*l_827) = p_12;
                    }
                    (*p_1510->g_480) = ((l_828[0][1] != ((safe_rshift_func_uint16_t_u_s(0xC822L, (p_10 | p_1510->g_319))) & (safe_add_func_int32_t_s_s(((-9L) & l_803), (((safe_sub_func_uint32_t_u_u((safe_mul_func_int8_t_s_s((p_11 , l_762), (safe_lshift_func_uint8_t_u_s(248UL, 6)))), GROUP_DIVERGE(1, 1))) && 0x04L) || p_13))))) , 0x7FAF22FEL);
                }
            }
            (*p_12) |= (safe_unary_minus_func_int64_t_s((!(((*l_841) = l_763) != (void*)0))));
            return l_804;
        }
    }
    if (((*p_12) = ((l_789[7][7][1] | (safe_sub_func_uint8_t_u_u(p_1510->g_318, (safe_rshift_func_uint8_t_u_u((safe_sub_func_int64_t_s_s((((safe_div_func_int32_t_s_s(2L, (safe_unary_minus_func_uint64_t_u((safe_div_func_int8_t_s_s(l_789[7][0][0], (((safe_mod_func_uint8_t_u_u(((safe_rshift_func_int8_t_s_s(((~(safe_lshift_func_uint16_t_u_u((safe_add_func_uint64_t_u_u((l_861 , (safe_mul_func_uint8_t_u_u((((l_789[0][5][0] ^ l_861.f0) || 0x4E5A403C840E4E32L) != p_1510->g_608[8]), (-2L)))), 0x17E17709A96259B1L)), 1))) == FAKE_DIVERGE(p_1510->global_0_offset, get_global_id(0), 10)), 0)) || l_864), p_10)) != 18446744073709551612UL) & l_864))))))) < l_864) > 0x3880L), p_1510->g_179)), FAKE_DIVERGE(p_1510->local_2_offset, get_local_id(2), 10)))))) >= p_1510->g_248)))
    { /* block id: 394 */
        int32_t l_899 = 0x410B6A4DL;
        int32_t l_902 = 1L;
        int16_t l_939 = 0L;
        uint32_t *l_954 = (void*)0;
        for (p_1510->g_319 = 0; (p_1510->g_319 > 14); p_1510->g_319++)
        { /* block id: 397 */
            int32_t *l_867[10] = {&p_1510->g_114[1][3][1],&l_789[7][7][1],&l_789[7][7][1],&l_789[7][7][1],&p_1510->g_114[1][3][1],&p_1510->g_114[1][3][1],&l_789[7][7][1],&l_789[7][7][1],&l_789[7][7][1],&p_1510->g_114[1][3][1]};
            int32_t **l_868[6] = {(void*)0,&p_1510->g_144,(void*)0,(void*)0,&p_1510->g_144,(void*)0};
            int32_t l_905 = 0x5120A76EL;
            uint64_t l_970 = 3UL;
            int i;
            p_12 = l_867[6];
            for (p_10 = 23; (p_10 != 20); p_10--)
            { /* block id: 401 */
                int32_t *l_873 = &l_864;
                int32_t l_901[10] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
                uint64_t l_907[9] = {0x19205FE83E695A58L,0x19205FE83E695A58L,0x19205FE83E695A58L,0x19205FE83E695A58L,0x19205FE83E695A58L,0x19205FE83E695A58L,0x19205FE83E695A58L,0x19205FE83E695A58L,0x19205FE83E695A58L};
                int64_t l_925 = (-1L);
                int8_t *l_953 = (void*)0;
                uint32_t *l_964 = &p_1510->g_248;
                int i;
                (1 + 1);
            }
        }
    }
    else
    { /* block id: 458 */
        int32_t l_1012[4][6] = {{0x6CC51D82L,0x6CC51D82L,0x6CC51D82L,0x6CC51D82L,0x6CC51D82L,0x6CC51D82L},{0x6CC51D82L,0x6CC51D82L,0x6CC51D82L,0x6CC51D82L,0x6CC51D82L,0x6CC51D82L},{0x6CC51D82L,0x6CC51D82L,0x6CC51D82L,0x6CC51D82L,0x6CC51D82L,0x6CC51D82L},{0x6CC51D82L,0x6CC51D82L,0x6CC51D82L,0x6CC51D82L,0x6CC51D82L,0x6CC51D82L}};
        struct S0 l_1018[2][3][4] = {{{{1L},{0x40L},{1L},{1L}},{{1L},{0x40L},{1L},{1L}},{{1L},{0x40L},{1L},{1L}}},{{{1L},{0x40L},{1L},{1L}},{{1L},{0x40L},{1L},{1L}},{{1L},{0x40L},{1L},{1L}}}};
        union U2 l_1035 = {0x550A110493DFC3E3L};
        uint8_t l_1093 = 255UL;
        uint32_t *l_1095[2];
        uint32_t **l_1094 = &l_1095[1];
        int64_t *l_1113[10][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        uint64_t l_1132 = 0xB67C835A2A5F9C50L;
        struct S0 *l_1174 = (void*)0;
        int32_t l_1188 = 0L;
        int8_t l_1252[10] = {0x7FL,0x7FL,0x7FL,0x7FL,0x7FL,0x7FL,0x7FL,0x7FL,0x7FL,0x7FL};
        int16_t l_1278[2];
        int8_t l_1302[8][1][5] = {{{(-9L),0x77L,0x18L,0x77L,(-9L)}},{{(-9L),0x77L,0x18L,0x77L,(-9L)}},{{(-9L),0x77L,0x18L,0x77L,(-9L)}},{{(-9L),0x77L,0x18L,0x77L,(-9L)}},{{(-9L),0x77L,0x18L,0x77L,(-9L)}},{{(-9L),0x77L,0x18L,0x77L,(-9L)}},{{(-9L),0x77L,0x18L,0x77L,(-9L)}},{{(-9L),0x77L,0x18L,0x77L,(-9L)}}};
        uint64_t l_1306 = 0x424FE9F44420185DL;
        int16_t l_1387 = 0x7A85L;
        struct S0 **l_1493 = &p_1510->g_494;
        struct S0 ***l_1492 = &l_1493;
        uint32_t l_1502[1][1][9] = {{{0x8CD55491L,0x8CD55491L,0x8CD55491L,0x8CD55491L,0x8CD55491L,0x8CD55491L,0x8CD55491L,0x8CD55491L,0x8CD55491L}}};
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_1095[i] = &p_1510->g_97[0];
        for (i = 0; i < 2; i++)
            l_1278[i] = (-5L);
        if (((*p_1510->g_480) &= l_861.f0))
        { /* block id: 460 */
            uint32_t *l_1001 = &l_814;
            uint32_t **l_1000 = &l_1001;
            uint16_t *l_1011 = &p_1510->g_932[6];
            int32_t *l_1013 = &p_1510->g_748;
            uint64_t *l_1015 = &p_1510->g_104[4][3][2];
            uint16_t *l_1016[7][5] = {{&p_1510->g_319,&p_1510->g_319,&p_1510->g_319,(void*)0,&p_1510->g_319},{&p_1510->g_319,&p_1510->g_319,&p_1510->g_319,(void*)0,&p_1510->g_319},{&p_1510->g_319,&p_1510->g_319,&p_1510->g_319,(void*)0,&p_1510->g_319},{&p_1510->g_319,&p_1510->g_319,&p_1510->g_319,(void*)0,&p_1510->g_319},{&p_1510->g_319,&p_1510->g_319,&p_1510->g_319,(void*)0,&p_1510->g_319},{&p_1510->g_319,&p_1510->g_319,&p_1510->g_319,(void*)0,&p_1510->g_319},{&p_1510->g_319,&p_1510->g_319,&p_1510->g_319,(void*)0,&p_1510->g_319}};
            int32_t l_1017 = 0x595F4DF4L;
            int32_t **l_1019 = &p_1510->g_191[0][1][1];
            int i, j;
            (*l_1019) = (((safe_mod_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), (safe_mul_func_int16_t_s_s(p_11, (l_1017 ^= ((FAKE_DIVERGE(p_1510->global_2_offset, get_global_id(2), 10) || (!((*l_1015) = (p_1510->g_34 , (safe_add_func_int8_t_s_s(l_864, (safe_mod_func_uint64_t_u_u((((safe_rshift_func_int8_t_s_s(((safe_lshift_func_uint8_t_u_s((((p_1510->g_608[2] >= ((safe_lshift_func_int8_t_s_s((safe_rshift_func_int8_t_s_u(((((*l_1013) = ((safe_div_func_int64_t_s_s(((((&p_1510->g_248 != (l_1002 = ((*l_1000) = &p_1510->g_248))) || (safe_add_func_int64_t_s_s(p_13, (safe_mod_func_int32_t_s_s((safe_add_func_int8_t_s_s((((*l_1011) = (safe_lshift_func_int16_t_s_u(0x2AFEL, (p_13 | p_11)))) || 0x40EAL), l_1012[3][1])), (*p_12)))))) , p_11) ^ l_789[7][7][1]), 0x2504FF6EEA103035L)) <= 0x1650L)) , 0x28D812339C08B22DL) & 18446744073709551610UL), 3)), p_13)) == (*p_12))) , p_1510->g_1014) < l_1012[3][1]), 7)) || 65527UL), 3)) <= 1L) ^ 5UL), p_10)))))))) , 0xA0C9L)))))) , l_1018[1][0][0]) , (void*)0);
        }
        else
        { /* block id: 468 */
            int32_t *l_1022 = &p_1510->g_4;
            struct S0 l_1025 = {0x25L};
            uint64_t l_1083 = 0x3DE67AF2B18486A5L;
            int32_t l_1128 = 0x700EBDE5L;
            uint32_t l_1161 = 0x35808932L;
            int32_t l_1170 = 0L;
            int32_t l_1178 = 3L;
            int32_t l_1179 = 0x47F113A2L;
            uint32_t **l_1187 = (void*)0;
            int32_t l_1241 = 0x45899EE7L;
            int32_t l_1242 = 0x26AF5064L;
            int32_t l_1243 = 0x212755E4L;
            int32_t l_1245 = 0x6D30590DL;
            int32_t l_1246[1][1][2];
            uint32_t l_1247 = 1UL;
            int i, j, k;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 1; j++)
                {
                    for (k = 0; k < 2; k++)
                        l_1246[i][j][k] = (-10L);
                }
            }
lbl_1158:
            for (p_1510->g_109 = 0; (p_1510->g_109 < 46); p_1510->g_109 = safe_add_func_int32_t_s_s(p_1510->g_109, 3))
            { /* block id: 471 */
                int32_t *l_1044 = (void*)0;
                uint32_t **l_1069 = &l_1002;
                struct S0 **l_1080 = &l_786;
                uint8_t *l_1099[9][9];
                int i, j;
                for (i = 0; i < 9; i++)
                {
                    for (j = 0; j < 9; j++)
                        l_1099[i][j] = &l_1035.f2;
                }
                for (p_13 = 0; (p_13 <= 3); p_13 += 1)
                { /* block id: 474 */
                    struct S0 l_1041 = {0x49L};
                    int32_t l_1068 = 0L;
                    (*p_1510->g_1023) = l_1022;
                    for (p_1510->g_748 = 0; (p_1510->g_748 <= 3); p_1510->g_748 += 1)
                    { /* block id: 478 */
                        struct S0 l_1024 = {0x5FL};
                        int64_t *l_1033 = (void*)0;
                        int64_t *l_1034[4][10][6] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
                        int16_t *l_1038 = &p_1510->g_156[3][7][2].f3;
                        int i, j, k;
                        (*p_1510->g_494) = l_1024;
                        (*l_786) = l_1025;
                        (*p_12) &= ((safe_sub_func_int64_t_s_s(((safe_mod_func_uint16_t_u_u(((p_1510->g_comm_values[p_1510->tid] = (safe_unary_minus_func_int8_t_s((safe_div_func_int64_t_s_s((l_864 = (l_1012[3][1] | p_11)), 0x73E469DEDA0C4071L))))) ^ (l_1035 , ((safe_mul_func_uint16_t_u_u(((l_1018[1][0][0].f0 | ((*l_1038) = p_11)) ^ ((safe_mul_func_uint16_t_u_u(((l_1041 , p_1510->g_558[1][2][5]) != ((safe_div_func_uint64_t_u_u((&p_1510->g_194[p_13] != (void*)0), 0x484DD4DE1DBD9116L)) , (void*)0)), l_789[7][7][1])) >= l_1041.f0)), l_1024.f0)) > p_10))), 0x1272L)) , 0x7287F60B4E023AADL), l_1018[1][0][0].f0)) == l_1012[3][1]);
                    }
                    for (l_1041.f0 = 7; (l_1041.f0 >= 2); l_1041.f0 -= 1)
                    { /* block id: 488 */
                        int32_t **l_1045 = &p_1510->g_191[0][1][1];
                        (*l_1045) = l_1044;
                        return l_1041.f0;
                    }
                    for (l_1041.f0 = 8; (l_1041.f0 >= 2); l_1041.f0 -= 1)
                    { /* block id: 494 */
                        return (*p_1510->g_480);
                    }
                    for (l_861.f2 = 3; (l_861.f2 <= 9); l_861.f2 += 1)
                    { /* block id: 499 */
                        (*l_1022) = (safe_mod_func_uint16_t_u_u(p_13, (safe_sub_func_int16_t_s_s((safe_div_func_int8_t_s_s((safe_div_func_uint16_t_u_u(((safe_rshift_func_uint16_t_u_u(((p_10 & (*l_1022)) == (safe_div_func_int8_t_s_s(((0UL ^ (((*p_1510->g_480) ^= (+((safe_div_func_uint64_t_u_u((safe_sub_func_int8_t_s_s((((safe_mod_func_uint64_t_u_u(((p_1510->g_608[8] ^ ((p_11 <= ((((l_1068 = (safe_sub_func_int8_t_s_s(((safe_div_func_uint32_t_u_u(((void*)0 != &p_1510->g_558[3][5][7]), FAKE_DIVERGE(p_1510->group_1_offset, get_group_id(1), 10))) == ((l_1025 , (*l_1022)) || p_13)), 0x67L))) && (-2L)) >= p_1510->g_318) >= 0x586D0F748A024D69L)) == 2L)) <= 0x72L), 1L)) > 1UL) <= 1UL), 0x6EL)), 0x4E7C7057125918A2L)) & p_13))) ^ p_1510->g_97[0])) || 0x554F4217L), 255UL))), 11)) | (*l_1022)), p_11)), p_1510->g_114[0][2][3])), 0xDB79L))));
                    }
                }
                (*l_1022) ^= (((*l_1069) = l_1022) == &p_1510->g_179);
                (*p_12) = (safe_sub_func_uint32_t_u_u((safe_lshift_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s((safe_lshift_func_int16_t_s_u(1L, ((l_1100 = (safe_add_func_int32_t_s_s((((((*l_1080) = &p_1510->g_75[0]) != &l_1025) , ((safe_lshift_func_int8_t_s_u(l_1083, ((((*l_1022) , l_1084) != (void*)0) <= (safe_sub_func_int32_t_s_s(((*l_1022) && (FAKE_DIVERGE(p_1510->local_1_offset, get_local_id(1), 10) & (((safe_add_func_int8_t_s_s((safe_rshift_func_int16_t_s_u((safe_mul_func_int8_t_s_s(((((((p_13 , p_13) , (*p_12)) < p_1510->g_179) <= l_1093) || (*l_1022)) , 0x20L), p_11)), 6)), p_1510->g_114[0][2][3])) >= FAKE_DIVERGE(p_1510->global_0_offset, get_global_id(0), 10)) == 0x7438L))), p_1510->g_34))))) , l_1094)) == p_1510->g_1096), p_1510->g_1098[0][4][0]))) , 0x9BC7L))), 6)), 1)), (*p_12)));
            }
            for (l_1035.f3 = 0; (l_1035.f3 < (-22)); l_1035.f3 = safe_sub_func_uint8_t_u_u(l_1035.f3, 7))
            { /* block id: 513 */
                uint16_t *l_1116 = &p_1510->g_85;
                int32_t l_1127 = (-1L);
                int32_t l_1129 = 1L;
                int32_t l_1131[8][3][6] = {{{1L,7L,(-1L),0x4A40C083L,(-7L),(-2L)},{1L,7L,(-1L),0x4A40C083L,(-7L),(-2L)},{1L,7L,(-1L),0x4A40C083L,(-7L),(-2L)}},{{1L,7L,(-1L),0x4A40C083L,(-7L),(-2L)},{1L,7L,(-1L),0x4A40C083L,(-7L),(-2L)},{1L,7L,(-1L),0x4A40C083L,(-7L),(-2L)}},{{1L,7L,(-1L),0x4A40C083L,(-7L),(-2L)},{1L,7L,(-1L),0x4A40C083L,(-7L),(-2L)},{1L,7L,(-1L),0x4A40C083L,(-7L),(-2L)}},{{1L,7L,(-1L),0x4A40C083L,(-7L),(-2L)},{1L,7L,(-1L),0x4A40C083L,(-7L),(-2L)},{1L,7L,(-1L),0x4A40C083L,(-7L),(-2L)}},{{1L,7L,(-1L),0x4A40C083L,(-7L),(-2L)},{1L,7L,(-1L),0x4A40C083L,(-7L),(-2L)},{1L,7L,(-1L),0x4A40C083L,(-7L),(-2L)}},{{1L,7L,(-1L),0x4A40C083L,(-7L),(-2L)},{1L,7L,(-1L),0x4A40C083L,(-7L),(-2L)},{1L,7L,(-1L),0x4A40C083L,(-7L),(-2L)}},{{1L,7L,(-1L),0x4A40C083L,(-7L),(-2L)},{1L,7L,(-1L),0x4A40C083L,(-7L),(-2L)},{1L,7L,(-1L),0x4A40C083L,(-7L),(-2L)}},{{1L,7L,(-1L),0x4A40C083L,(-7L),(-2L)},{1L,7L,(-1L),0x4A40C083L,(-7L),(-2L)},{1L,7L,(-1L),0x4A40C083L,(-7L),(-2L)}}};
                int i, j, k;
                if ((safe_div_func_uint16_t_u_u((((p_1510->g_54[0] > FAKE_DIVERGE(p_1510->group_2_offset, get_group_id(2), 10)) & (safe_sub_func_int64_t_s_s(((*p_1510->g_333) , ((safe_mul_func_int8_t_s_s((l_1109 != &p_1510->g_1097), (safe_rshift_func_uint16_t_u_u((l_1113[1][1] != (p_1510->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1510->tid, 2))] , l_1114[1][0])), 4)))) && ((*l_1116)++))), p_11))) ^ ((p_10 > p_10) && p_13)), 0x66FBL)))
                { /* block id: 515 */
                    int32_t *l_1119 = &l_1012[3][1];
                    int32_t *l_1120 = &l_789[5][7][2];
                    int32_t *l_1121 = &p_1510->g_165;
                    int32_t *l_1122 = &p_1510->g_4;
                    int32_t *l_1123 = &p_1510->g_114[1][1][0];
                    int32_t *l_1124 = &l_789[0][7][3];
                    int32_t *l_1125 = &l_864;
                    int32_t *l_1126[9][1] = {{&l_864},{&l_864},{&l_864},{&l_864},{&l_864},{&l_864},{&l_864},{&l_864},{&l_864}};
                    int32_t l_1130 = (-1L);
                    int8_t *l_1154 = &l_1018[1][0][0].f0;
                    int i, j;
                    l_1132++;
                    (*p_12) = 0x19CB561EL;
                    for (p_1510->g_109 = 0; (p_1510->g_109 <= 5); p_1510->g_109 += 1)
                    { /* block id: 520 */
                        int16_t *l_1139 = &p_1510->g_1115;
                        uint64_t *l_1144 = (void*)0;
                        (*l_1120) |= ((*l_1022) == (safe_lshift_func_int8_t_s_u((((l_1012[3][1] &= ((safe_lshift_func_uint16_t_u_s(((l_1139 = &p_1510->g_318) != (void*)0), (p_1510->g_248 , (((void*)0 == &l_1128) || 0xFF7B1C588A1F907AL)))) || (safe_add_func_uint64_t_u_u(((1L ^ ((!(((p_1510->g_608[8] && (-1L)) ^ 65535UL) > p_1510->g_932[3])) > 1L)) && p_1510->g_104[0][0][0]), (-1L))))) && 0x57730E1217D690AFL) >= 0x92L), 5)));
                    }
                    for (p_1510->g_1115 = 0; (p_1510->g_1115 == (-20)); --p_1510->g_1115)
                    { /* block id: 527 */
                        uint16_t l_1150 = 65535UL;
                        int32_t *l_1153 = &l_789[0][4][2];
                        int8_t *l_1155 = &l_1018[1][0][0].f0;
                        uint32_t *l_1156 = (void*)0;
                        l_1131[2][1][3] |= (p_1510->g_1147[3][2] , ((((+(safe_mod_func_uint32_t_u_u(1UL, (l_1150 = (*p_12))))) <= (((safe_sub_func_int16_t_s_s(l_969[0].f0, (*l_1124))) , func_65(l_1153, (l_1155 = ((*l_1084) = l_1154)), &p_1510->g_54[3], p_1510->g_97[0], p_1510)) == l_1156)) , p_1510->g_comm_values[p_1510->tid]) , (-6L)));
                        return (*p_1510->g_480);
                    }
                }
                else
                { /* block id: 534 */
                    int32_t l_1167 = 0x3C282995L;
                    int32_t l_1168 = (-5L);
                    int32_t l_1169[3];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_1169[i] = (-1L);
                    for (l_910 = 0; (l_910 <= 0); l_910 += 1)
                    { /* block id: 537 */
                        int32_t *l_1159 = &l_1131[6][1][1];
                        int32_t *l_1160[7][1][9] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
                        int i, j, k;
                        (*p_1510->g_1157) = p_12;
                        if (p_1510->g_106)
                            goto lbl_1158;
                        if (l_1012[1][4])
                            continue;
                        l_1161++;
                    }
                    if ((*p_12))
                    { /* block id: 543 */
                        int32_t *l_1164 = &l_1127;
                        int32_t *l_1165 = &p_1510->g_114[1][2][5];
                        int32_t *l_1166[9][8] = {{&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2]},{&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2]},{&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2]},{&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2]},{&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2]},{&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2]},{&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2]},{&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2]},{&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2],&l_789[1][7][2]}};
                        uint64_t l_1171 = 2UL;
                        int i, j;
                        l_1171++;
                        (*p_1510->g_1157) = p_12;
                        (*l_1164) ^= 0x515F1615L;
                        if (l_864)
                            continue;
                    }
                    else
                    { /* block id: 548 */
                        return l_1169[2];
                    }
                    for (p_1510->g_165 = 1; (p_1510->g_165 >= 0); p_1510->g_165 -= 1)
                    { /* block id: 553 */
                        int i;
                        if (l_1169[(p_1510->g_165 + 1)])
                            break;
                        l_1174 = &l_969[2];
                        return l_1169[(p_1510->g_165 + 1)];
                    }
                    for (l_1129 = (-21); (l_1129 >= (-5)); l_1129 = safe_add_func_int16_t_s_s(l_1129, 8))
                    { /* block id: 560 */
                        int32_t *l_1177[9][6][4] = {{{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128}},{{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128}},{{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128}},{{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128}},{{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128}},{{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128}},{{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128}},{{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128}},{{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128},{&p_1510->g_4,&l_1169[2],&l_1131[4][2][5],&l_1128}}};
                        int i, j, k;
                        if ((*p_12))
                            break;
                        l_1180--;
                        (*p_1510->g_494) = l_1025;
                        (*p_1510->g_480) = (safe_mul_func_uint8_t_u_u(l_1012[2][0], (l_1188 |= (p_1510->g_179 ^ (((void*)0 != l_1187) >= 0xBDL)))));
                    }
                }
            }
            for (l_1035.f3 = 17; (l_1035.f3 < (-6)); l_1035.f3--)
            { /* block id: 571 */
                uint64_t *l_1207 = &p_1510->g_104[3][0][6];
                int32_t l_1223 = 0x240884BCL;
                int32_t l_1225 = (-4L);
                uint32_t *l_1237 = &p_1510->g_97[0];
                int32_t *l_1238 = (void*)0;
                int32_t *l_1239 = &l_789[1][5][1];
                int32_t *l_1240[6] = {&l_1188,(void*)0,&l_1188,&l_1188,(void*)0,&l_1188};
                int i;
                for (p_1510->g_1115 = (-11); (p_1510->g_1115 >= (-8)); p_1510->g_1115 = safe_add_func_int8_t_s_s(p_1510->g_1115, 3))
                { /* block id: 574 */
                    uint8_t *l_1216 = (void*)0;
                    uint8_t *l_1217 = (void*)0;
                    uint8_t *l_1218 = &l_861.f2;
                    uint8_t *l_1219[3][1][4] = {{{&l_1093,&l_1093,&l_1093,&l_1093}},{{&l_1093,&l_1093,&l_1093,&l_1093}},{{&l_1093,&l_1093,&l_1093,&l_1093}}};
                    int32_t l_1224 = (-4L);
                    int i, j, k;
                    (*p_1510->g_1157) = &l_1128;
                    if ((((safe_div_func_uint32_t_u_u((~(((((((safe_sub_func_uint16_t_u_u(((safe_lshift_func_uint8_t_u_s((safe_lshift_func_int16_t_s_u((safe_add_func_uint16_t_u_u((safe_mod_func_uint32_t_u_u((((safe_rshift_func_int16_t_s_u(p_1510->g_608[8], 8)) <= ((((l_1207 != &p_1510->g_104[0][4][3]) && (((safe_div_func_int8_t_s_s(((*p_12) ^ ((((safe_rshift_func_uint16_t_u_s((+p_1510->g_1014), 3)) != (safe_div_func_uint16_t_u_u(p_11, (((-4L) ^ (--p_1510->g_1220[1][2][3])) & (l_1223 < (*l_1022)))))) < p_13) , (*p_12))), 0x26L)) & 1L) , FAKE_DIVERGE(p_1510->global_2_offset, get_global_id(2), 10))) ^ p_13) && p_13)) || l_1224), (*p_12))), l_1018[1][0][0].f0)), p_11)), p_10)) | 0UL), p_11)) <= (*p_12)) > p_13) || p_1510->g_169) || p_10) < l_1224) < 1UL)), 0x05E48A51L)) || 0xCFDD5E322A7C2FEDL) == l_1223))
                    { /* block id: 577 */
                        if ((*p_12))
                            break;
                        (*p_1510->g_480) &= ((*p_12) = 0x53B9E02CL);
                    }
                    else
                    { /* block id: 581 */
                        uint32_t *l_1236 = &l_814;
                        (*p_1510->g_480) = (((((l_1225 >= p_13) , p_13) , (+((safe_mod_func_uint32_t_u_u((safe_lshift_func_uint16_t_u_u(((safe_sub_func_int64_t_s_s(0x36892E6CE481ADDCL, ((safe_rshift_func_int8_t_s_s((-5L), 5)) != ((p_10 == (safe_sub_func_int16_t_s_s((((*l_1236) = (p_1510->g_97[0] | 0x24L)) & (*p_12)), l_864))) ^ 0L)))) != p_13), 3)), 0x1A7EA625L)) < p_1510->g_97[0]))) , p_12) == l_1237);
                    }
                    p_12 = &l_1178;
                }
                ++l_1247;
            }
        }
        for (p_1510->g_109 = 0; (p_1510->g_109 != 22); p_1510->g_109++)
        { /* block id: 592 */
            int32_t l_1279 = 0x7E6095E9L;
            int32_t *l_1281 = &l_864;
            int8_t *l_1297 = &l_1018[1][0][0].f0;
            struct S0 **l_1405[10][8] = {{&p_1510->g_494,(void*)0,&p_1510->g_494,&l_786,&p_1510->g_494,(void*)0,&p_1510->g_494,&l_786},{&p_1510->g_494,(void*)0,&p_1510->g_494,&l_786,&p_1510->g_494,(void*)0,&p_1510->g_494,&l_786},{&p_1510->g_494,(void*)0,&p_1510->g_494,&l_786,&p_1510->g_494,(void*)0,&p_1510->g_494,&l_786},{&p_1510->g_494,(void*)0,&p_1510->g_494,&l_786,&p_1510->g_494,(void*)0,&p_1510->g_494,&l_786},{&p_1510->g_494,(void*)0,&p_1510->g_494,&l_786,&p_1510->g_494,(void*)0,&p_1510->g_494,&l_786},{&p_1510->g_494,(void*)0,&p_1510->g_494,&l_786,&p_1510->g_494,(void*)0,&p_1510->g_494,&l_786},{&p_1510->g_494,(void*)0,&p_1510->g_494,&l_786,&p_1510->g_494,(void*)0,&p_1510->g_494,&l_786},{&p_1510->g_494,(void*)0,&p_1510->g_494,&l_786,&p_1510->g_494,(void*)0,&p_1510->g_494,&l_786},{&p_1510->g_494,(void*)0,&p_1510->g_494,&l_786,&p_1510->g_494,(void*)0,&p_1510->g_494,&l_786},{&p_1510->g_494,(void*)0,&p_1510->g_494,&l_786,&p_1510->g_494,(void*)0,&p_1510->g_494,&l_786}};
            struct S0 ***l_1404[10][4] = {{&l_1405[5][4],&l_1405[5][4],&l_1405[8][4],&l_1405[8][4]},{&l_1405[5][4],&l_1405[5][4],&l_1405[8][4],&l_1405[8][4]},{&l_1405[5][4],&l_1405[5][4],&l_1405[8][4],&l_1405[8][4]},{&l_1405[5][4],&l_1405[5][4],&l_1405[8][4],&l_1405[8][4]},{&l_1405[5][4],&l_1405[5][4],&l_1405[8][4],&l_1405[8][4]},{&l_1405[5][4],&l_1405[5][4],&l_1405[8][4],&l_1405[8][4]},{&l_1405[5][4],&l_1405[5][4],&l_1405[8][4],&l_1405[8][4]},{&l_1405[5][4],&l_1405[5][4],&l_1405[8][4],&l_1405[8][4]},{&l_1405[5][4],&l_1405[5][4],&l_1405[8][4],&l_1405[8][4]},{&l_1405[5][4],&l_1405[5][4],&l_1405[8][4],&l_1405[8][4]}};
            int8_t l_1415 = 0x3BL;
            int32_t l_1421 = 0x7CE3240FL;
            int32_t l_1430 = (-10L);
            int32_t l_1431 = 0L;
            int32_t l_1433 = 1L;
            int32_t l_1434 = 0x1F739209L;
            int32_t l_1436 = 0L;
            int32_t l_1437[9] = {0L,0L,0L,0L,0L,0L,0L,0L,0L};
            int16_t l_1438 = (-10L);
            uint8_t l_1491 = 0xEDL;
            int i, j;
            (1 + 1);
        }
    }
    (*p_1510->g_480) ^= (safe_div_func_uint8_t_u_u(0x70L, (FAKE_DIVERGE(p_1510->local_2_offset, get_local_id(2), 10) , 0x38L)));
    return (*l_1495);
}


/* ------------------------------------------ */
/* 
 * reads : p_1510->g_4 p_1510->g_54 p_1510->g_75 p_1510->l_comm_values p_1510->g_85 p_1510->g_104 p_1510->g_106 p_1510->g_109 p_1510->g_97 p_1510->g_114 p_1510->g_156 p_1510->g_165 p_1510->g_480 p_1510->g_318 p_1510->g_91 p_1510->g_34 p_1510->g_156.f0 p_1510->g_558 p_1510->g_319 p_1510->g_179 p_1510->g_248 p_1510->g_608 p_1510->g_467 p_1510->g_468 p_1510->g_494 p_1510->g_333 p_1510->g_508 p_1510->g_comm_values p_1510->g_692 p_1510->g_706 p_1510->g_191
 * writes: p_1510->g_34 p_1510->g_54 p_1510->g_85 p_1510->g_91 p_1510->g_104 p_1510->g_106 p_1510->g_109 p_1510->g_75 p_1510->g_144 p_1510->g_comm_values p_1510->g_165 p_1510->g_179 p_1510->g_508.f2 p_1510->g_494 p_1510->g_248 p_1510->g_608 p_1510->g_191 p_1510->g_114 p_1510->g_319 p_1510->g_558 p_1510->g_706
 */
int16_t  func_16(int8_t  p_17, struct S3 * p_1510)
{ /* block id: 6 */
    int32_t l_18 = 1L;
    uint32_t *l_147 = &p_1510->g_97[0];
    struct S0 *l_565 = &p_1510->g_75[0];
    int32_t l_580 = 0x4ED8A85BL;
    int32_t l_592[2];
    int32_t l_593[5][10] = {{0L,0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L,0L}};
    union U2 l_678 = {0x9EEF6CE0D837CECAL};
    int64_t *l_693 = (void*)0;
    int32_t *l_749 = &p_1510->g_114[1][0][1];
    int i, j;
    for (i = 0; i < 2; i++)
        l_592[i] = 0x29DFA783L;
    if ((!(l_18 = (-1L))))
    { /* block id: 8 */
        int64_t l_45 = (-8L);
        int32_t *l_145 = &p_1510->g_114[0][2][3];
        struct S0 **l_545 = &p_1510->g_494;
        int32_t l_548[8][5] = {{0x72791527L,0x36F7BC69L,0x71C6DF36L,0x6DC67C31L,0x71C6DF36L},{0x72791527L,0x36F7BC69L,0x71C6DF36L,0x6DC67C31L,0x71C6DF36L},{0x72791527L,0x36F7BC69L,0x71C6DF36L,0x6DC67C31L,0x71C6DF36L},{0x72791527L,0x36F7BC69L,0x71C6DF36L,0x6DC67C31L,0x71C6DF36L},{0x72791527L,0x36F7BC69L,0x71C6DF36L,0x6DC67C31L,0x71C6DF36L},{0x72791527L,0x36F7BC69L,0x71C6DF36L,0x6DC67C31L,0x71C6DF36L},{0x72791527L,0x36F7BC69L,0x71C6DF36L,0x6DC67C31L,0x71C6DF36L},{0x72791527L,0x36F7BC69L,0x71C6DF36L,0x6DC67C31L,0x71C6DF36L}};
        int8_t l_573 = 0x6DL;
        int64_t l_586 = 0x769B62266A26DD3AL;
        int8_t l_624[7] = {0L,0L,0L,0L,0L,0L,0L};
        int32_t **l_734 = &p_1510->g_191[0][1][1];
        uint16_t l_737 = 1UL;
        int64_t *l_738 = (void*)0;
        int64_t *l_739 = (void*)0;
        int64_t *l_740 = &l_586;
        int64_t *l_741 = (void*)0;
        int64_t *l_742 = (void*)0;
        int64_t *l_743 = &l_45;
        int32_t **l_744 = (void*)0;
        int32_t **l_745 = (void*)0;
        int32_t *l_747 = &p_1510->g_748;
        int32_t **l_746 = &l_747;
        int i, j;
        for (l_18 = 0; (l_18 >= (-26)); --l_18)
        { /* block id: 11 */
            uint32_t *l_33 = &p_1510->g_34;
            int32_t l_146[4][8][8] = {{{0x3E9BACE1L,0x05DC1642L,0x79B38B2FL,0x05DC1642L,0x3E9BACE1L,0x3E9BACE1L,0x05DC1642L,0x79B38B2FL},{0x3E9BACE1L,0x05DC1642L,0x79B38B2FL,0x05DC1642L,0x3E9BACE1L,0x3E9BACE1L,0x05DC1642L,0x79B38B2FL},{0x3E9BACE1L,0x05DC1642L,0x79B38B2FL,0x05DC1642L,0x3E9BACE1L,0x3E9BACE1L,0x05DC1642L,0x79B38B2FL},{0x3E9BACE1L,0x05DC1642L,0x79B38B2FL,0x05DC1642L,0x3E9BACE1L,0x3E9BACE1L,0x05DC1642L,0x79B38B2FL},{0x3E9BACE1L,0x05DC1642L,0x79B38B2FL,0x05DC1642L,0x3E9BACE1L,0x3E9BACE1L,0x05DC1642L,0x79B38B2FL},{0x3E9BACE1L,0x05DC1642L,0x79B38B2FL,0x05DC1642L,0x3E9BACE1L,0x3E9BACE1L,0x05DC1642L,0x79B38B2FL},{0x3E9BACE1L,0x05DC1642L,0x79B38B2FL,0x05DC1642L,0x3E9BACE1L,0x3E9BACE1L,0x05DC1642L,0x79B38B2FL},{0x3E9BACE1L,0x05DC1642L,0x79B38B2FL,0x05DC1642L,0x3E9BACE1L,0x3E9BACE1L,0x05DC1642L,0x79B38B2FL}},{{0x3E9BACE1L,0x05DC1642L,0x79B38B2FL,0x05DC1642L,0x3E9BACE1L,0x3E9BACE1L,0x05DC1642L,0x79B38B2FL},{0x3E9BACE1L,0x05DC1642L,0x79B38B2FL,0x05DC1642L,0x3E9BACE1L,0x3E9BACE1L,0x05DC1642L,0x79B38B2FL},{0x3E9BACE1L,0x05DC1642L,0x79B38B2FL,0x05DC1642L,0x3E9BACE1L,0x3E9BACE1L,0x05DC1642L,0x79B38B2FL},{0x3E9BACE1L,0x05DC1642L,0x79B38B2FL,0x05DC1642L,0x3E9BACE1L,0x3E9BACE1L,0x05DC1642L,0x79B38B2FL},{0x3E9BACE1L,0x05DC1642L,0x79B38B2FL,0x05DC1642L,0x3E9BACE1L,0x3E9BACE1L,0x05DC1642L,0x79B38B2FL},{0x3E9BACE1L,0x05DC1642L,0x79B38B2FL,0x05DC1642L,0x3E9BACE1L,0x3E9BACE1L,0x05DC1642L,0x79B38B2FL},{0x3E9BACE1L,0x05DC1642L,0x79B38B2FL,0x05DC1642L,0x3E9BACE1L,0x3E9BACE1L,0x05DC1642L,0x79B38B2FL},{0x3E9BACE1L,0x05DC1642L,0x79B38B2FL,0x05DC1642L,0x3E9BACE1L,0x3E9BACE1L,0x05DC1642L,0x79B38B2FL}},{{0x3E9BACE1L,0x05DC1642L,0x79B38B2FL,0x05DC1642L,0x3E9BACE1L,0x3E9BACE1L,0x05DC1642L,0x79B38B2FL},{0x3E9BACE1L,0x05DC1642L,0x79B38B2FL,0x05DC1642L,0x3E9BACE1L,0x3E9BACE1L,0x05DC1642L,0x79B38B2FL},{0x3E9BACE1L,0x05DC1642L,0x79B38B2FL,0x05DC1642L,0x3E9BACE1L,0x3E9BACE1L,0x05DC1642L,0x79B38B2FL},{0x3E9BACE1L,0x05DC1642L,0x79B38B2FL,0x05DC1642L,0x3E9BACE1L,0x3E9BACE1L,0x05DC1642L,0x79B38B2FL},{0x3E9BACE1L,0x05DC1642L,0x79B38B2FL,0x05DC1642L,0x3E9BACE1L,0x3E9BACE1L,0x05DC1642L,0x79B38B2FL},{0x3E9BACE1L,0x05DC1642L,0x79B38B2FL,0x05DC1642L,0x3E9BACE1L,0x3E9BACE1L,0x05DC1642L,0x79B38B2FL},{0x3E9BACE1L,0x05DC1642L,0x79B38B2FL,0x05DC1642L,0x3E9BACE1L,0x3E9BACE1L,0x05DC1642L,0x79B38B2FL},{0x3E9BACE1L,0x05DC1642L,0x79B38B2FL,0x05DC1642L,0x3E9BACE1L,0x3E9BACE1L,0x05DC1642L,0x79B38B2FL}},{{0x3E9BACE1L,0x05DC1642L,0x79B38B2FL,0x05DC1642L,0x3E9BACE1L,0x3E9BACE1L,0x05DC1642L,0x79B38B2FL},{0x3E9BACE1L,0x05DC1642L,0x79B38B2FL,0x05DC1642L,0x3E9BACE1L,0x3E9BACE1L,0x05DC1642L,0x79B38B2FL},{0x3E9BACE1L,0x05DC1642L,0x79B38B2FL,0x05DC1642L,0x3E9BACE1L,0x3E9BACE1L,0x05DC1642L,0x79B38B2FL},{0x3E9BACE1L,0x05DC1642L,0x79B38B2FL,0x05DC1642L,0x3E9BACE1L,0x3E9BACE1L,0x05DC1642L,0x79B38B2FL},{0x3E9BACE1L,0x05DC1642L,0x79B38B2FL,0x05DC1642L,0x3E9BACE1L,0x3E9BACE1L,0x05DC1642L,0x79B38B2FL},{0x3E9BACE1L,0x05DC1642L,0x79B38B2FL,0x05DC1642L,0x3E9BACE1L,0x3E9BACE1L,0x05DC1642L,0x79B38B2FL},{0x3E9BACE1L,0x05DC1642L,0x79B38B2FL,0x05DC1642L,0x3E9BACE1L,0x3E9BACE1L,0x05DC1642L,0x79B38B2FL},{0x3E9BACE1L,0x05DC1642L,0x79B38B2FL,0x05DC1642L,0x3E9BACE1L,0x3E9BACE1L,0x05DC1642L,0x79B38B2FL}}};
            int32_t *l_525 = &p_1510->g_165;
            uint32_t *l_538 = &p_1510->g_179;
            int16_t *l_546[9][10][2] = {{{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318}},{{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318}},{{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318}},{{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318}},{{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318}},{{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318}},{{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318}},{{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318}},{{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318},{&p_1510->g_91,&p_1510->g_318}}};
            int32_t *l_547[5][9][5] = {{{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0}},{{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0}},{{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0}},{{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0}},{{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0},{(void*)0,&l_18,(void*)0,&l_146[2][7][0],(void*)0}}};
            struct S0 *l_566 = &p_1510->g_75[0];
            uint64_t *l_574[6][5][8] = {{{&p_1510->g_104[4][3][2],&p_1510->g_104[4][3][2],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_104[4][3][2]},{&p_1510->g_104[4][3][2],&p_1510->g_104[4][3][2],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_104[4][3][2]},{&p_1510->g_104[4][3][2],&p_1510->g_104[4][3][2],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_104[4][3][2]},{&p_1510->g_104[4][3][2],&p_1510->g_104[4][3][2],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_104[4][3][2]},{&p_1510->g_104[4][3][2],&p_1510->g_104[4][3][2],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_104[4][3][2]}},{{&p_1510->g_104[4][3][2],&p_1510->g_104[4][3][2],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_104[4][3][2]},{&p_1510->g_104[4][3][2],&p_1510->g_104[4][3][2],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_104[4][3][2]},{&p_1510->g_104[4][3][2],&p_1510->g_104[4][3][2],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_104[4][3][2]},{&p_1510->g_104[4][3][2],&p_1510->g_104[4][3][2],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_104[4][3][2]},{&p_1510->g_104[4][3][2],&p_1510->g_104[4][3][2],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_104[4][3][2]}},{{&p_1510->g_104[4][3][2],&p_1510->g_104[4][3][2],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_104[4][3][2]},{&p_1510->g_104[4][3][2],&p_1510->g_104[4][3][2],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_104[4][3][2]},{&p_1510->g_104[4][3][2],&p_1510->g_104[4][3][2],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_104[4][3][2]},{&p_1510->g_104[4][3][2],&p_1510->g_104[4][3][2],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_104[4][3][2]},{&p_1510->g_104[4][3][2],&p_1510->g_104[4][3][2],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_104[4][3][2]}},{{&p_1510->g_104[4][3][2],&p_1510->g_104[4][3][2],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_104[4][3][2]},{&p_1510->g_104[4][3][2],&p_1510->g_104[4][3][2],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_104[4][3][2]},{&p_1510->g_104[4][3][2],&p_1510->g_104[4][3][2],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_104[4][3][2]},{&p_1510->g_104[4][3][2],&p_1510->g_104[4][3][2],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_104[4][3][2]},{&p_1510->g_104[4][3][2],&p_1510->g_104[4][3][2],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_104[4][3][2]}},{{&p_1510->g_104[4][3][2],&p_1510->g_104[4][3][2],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_104[4][3][2]},{&p_1510->g_104[4][3][2],&p_1510->g_104[4][3][2],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_104[4][3][2]},{&p_1510->g_104[4][3][2],&p_1510->g_104[4][3][2],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_104[4][3][2]},{&p_1510->g_104[4][3][2],&p_1510->g_104[4][3][2],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_104[4][3][2]},{&p_1510->g_104[4][3][2],&p_1510->g_104[4][3][2],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_104[4][3][2]}},{{&p_1510->g_104[4][3][2],&p_1510->g_104[4][3][2],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_104[4][3][2]},{&p_1510->g_104[4][3][2],&p_1510->g_104[4][3][2],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_104[4][3][2]},{&p_1510->g_104[4][3][2],&p_1510->g_104[4][3][2],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_104[4][3][2]},{&p_1510->g_104[4][3][2],&p_1510->g_104[4][3][2],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_104[4][3][2]},{&p_1510->g_104[4][3][2],&p_1510->g_104[4][3][2],(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_104[4][3][2]}}};
            uint8_t l_575 = 0x94L;
            int32_t l_606 = 0x69B27D0CL;
            union U2 l_667 = {0x96FE69B54036ED91L};
            int i, j, k;
            l_525 = func_21(((*l_33) = (safe_div_func_uint8_t_u_u(0x65L, (safe_lshift_func_int8_t_s_s((safe_mul_func_int8_t_s_s(p_1510->g_4, p_1510->g_4)), 7))))), p_17, p_17, (((func_35((safe_add_func_int32_t_s_s(func_43(l_45, p_1510), p_17)), p_1510->g_97[0], l_145, l_33, p_1510->g_114[0][2][3], p_1510) == l_146[0][7][3]) , l_147) == l_145), &l_18, p_1510);
            l_548[6][0] &= ((safe_div_func_int8_t_s_s(((+0x0A3DL) > 0x1D65L), (p_1510->g_508[0][0][1].f2 = (safe_rshift_func_uint8_t_u_u((((((*l_145) | (*l_145)) | (safe_add_func_int32_t_s_s((safe_mod_func_uint8_t_u_u((safe_add_func_uint32_t_u_u((*l_525), (safe_sub_func_int32_t_s_s(((*p_1510->g_480) = p_17), ((*l_538) = (*l_145)))))), (safe_mod_func_int16_t_s_s((safe_mod_func_int16_t_s_s((p_1510->g_91 |= (safe_mod_func_uint64_t_u_u((((p_1510->g_318 < (l_545 == (void*)0)) != l_18) != (*l_145)), 0x73E20C4A9054E114L))), 4UL)), 65535UL)))), p_17))) < (*l_145)) | p_17), 5))))) >= p_17);
            (*p_1510->g_480) = (((safe_mul_func_int16_t_s_s(p_17, ((p_1510->g_34 != (safe_lshift_func_int16_t_s_u(((safe_rshift_func_uint16_t_u_s((safe_lshift_func_uint16_t_u_s(0x7D72L, 8)), 13)) , (0x4090CDB6L != (safe_unary_minus_func_uint32_t_u(0xB46EB468L)))), p_17))) > p_1510->g_156[3][7][2].f0))) , &p_1510->g_494) != (void*)0);
            if (((*p_1510->g_480) |= (((void*)0 != p_1510->g_558[1][3][7]) && (p_17 || (p_1510->g_319 && (safe_add_func_uint16_t_u_u((+((safe_mul_func_uint16_t_u_u(((safe_mod_func_uint64_t_u_u(((1UL > (((*l_545) = l_565) != l_566)) || ((safe_mul_func_uint16_t_u_u((((*l_525) ^ ((safe_add_func_uint64_t_u_u((safe_add_func_uint64_t_u_u((p_1510->g_104[4][3][2] &= (l_573 && (*l_525))), 18446744073709551615UL)), 0x5FC5E68EB95488D7L)) <= 1L)) , 6UL), l_575)) , 0x3BF6L)), p_1510->g_85)) , GROUP_DIVERGE(0, 1)), p_17)) , p_17)), 0x3280L)))))))
            { /* block id: 249 */
                struct S0 l_585 = {9L};
                int32_t *l_587[5];
                int8_t l_597 = 1L;
                uint32_t l_601 = 4294967295UL;
                int i;
                for (i = 0; i < 5; i++)
                    l_587[i] = &p_1510->g_114[1][2][1];
                if (p_17)
                { /* block id: 250 */
                    uint32_t **l_588 = &l_147;
                    uint8_t *l_589 = &l_575;
                    uint8_t *l_590 = &p_1510->g_156[3][7][2].f2;
                    uint8_t *l_591[1];
                    int32_t l_596 = 1L;
                    int32_t l_598 = (-1L);
                    int32_t l_599 = 0x2E3C973FL;
                    int32_t l_600 = (-1L);
                    int32_t l_607[4][6][2] = {{{(-1L),1L},{(-1L),1L},{(-1L),1L},{(-1L),1L},{(-1L),1L},{(-1L),1L}},{{(-1L),1L},{(-1L),1L},{(-1L),1L},{(-1L),1L},{(-1L),1L},{(-1L),1L}},{{(-1L),1L},{(-1L),1L},{(-1L),1L},{(-1L),1L},{(-1L),1L},{(-1L),1L}},{{(-1L),1L},{(-1L),1L},{(-1L),1L},{(-1L),1L},{(-1L),1L},{(-1L),1L}}};
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                        l_591[i] = &p_1510->g_508[0][0][1].f2;
                    l_593[4][6] = (safe_div_func_uint8_t_u_u(((p_1510->g_248 &= (--(*l_538))) , (l_592[0] ^= ((*l_589) = ((((l_580 = GROUP_DIVERGE(1, 1)) <= FAKE_DIVERGE(p_1510->global_1_offset, get_global_id(1), 10)) == ((((safe_rshift_func_uint16_t_u_s((safe_sub_func_int32_t_s_s((((l_585 , l_546[5][3][1]) == (void*)0) && 0x17AA14CA33696B87L), (((*l_588) = func_46(l_586, l_587[0], p_17, l_145, p_1510)) == &p_1510->g_34))), p_1510->g_97[0])) , GROUP_DIVERGE(1, 1)) && 9UL) || p_17)) , 0xC9L)))), l_18));
                    if (p_17)
                        break;
                    for (p_1510->g_109 = 0; (p_1510->g_109 != 10); p_1510->g_109++)
                    { /* block id: 261 */
                        int32_t l_604 = 0x2676C5AAL;
                        int32_t l_605[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_605[i] = 3L;
                        --l_601;
                        ++p_1510->g_608[8];
                        l_599 = ((void*)0 != (*p_1510->g_467));
                    }
                }
                else
                { /* block id: 266 */
                    int16_t l_630 = 0x3883L;
                    int32_t l_631[3][3][4];
                    uint8_t l_632 = 0x49L;
                    int32_t l_657 = 0L;
                    int32_t *l_661 = (void*)0;
                    uint32_t l_673 = 0x2F16E03CL;
                    int i, j, k;
                    for (i = 0; i < 3; i++)
                    {
                        for (j = 0; j < 3; j++)
                        {
                            for (k = 0; k < 4; k++)
                                l_631[i][j][k] = 0x4269A97DL;
                        }
                    }
                    for (p_1510->g_109 = 0; (p_1510->g_109 != 56); p_1510->g_109 = safe_add_func_int64_t_s_s(p_1510->g_109, 6))
                    { /* block id: 269 */
                        struct S0 ***l_625[1][5][10] = {{{&l_545,(void*)0,&l_545,&l_545,(void*)0,&l_545,&l_545,(void*)0,&l_545,&l_545},{&l_545,(void*)0,&l_545,&l_545,(void*)0,&l_545,&l_545,(void*)0,&l_545,&l_545},{&l_545,(void*)0,&l_545,&l_545,(void*)0,&l_545,&l_545,(void*)0,&l_545,&l_545},{&l_545,(void*)0,&l_545,&l_545,(void*)0,&l_545,&l_545,(void*)0,&l_545,&l_545},{&l_545,(void*)0,&l_545,&l_545,(void*)0,&l_545,&l_545,(void*)0,&l_545,&l_545}}};
                        int16_t l_626[7][1] = {{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}};
                        int i, j, k;
                        l_547[3][7][2] = func_46(((safe_rshift_func_int8_t_s_u((safe_rshift_func_int16_t_s_u(((safe_add_func_int32_t_s_s((safe_rshift_func_int8_t_s_u(0x31L, 4)), (((**l_545) , (*p_1510->g_467)) != ((safe_sub_func_uint64_t_u_u((safe_unary_minus_func_uint64_t_u((*l_145))), (l_624[6] = 5UL))) , &l_587[2])))) || (l_625[0][0][8] == (void*)0)), 2)), (l_626[1][0] <= p_17))) ^ p_1510->g_319), &l_146[1][7][2], p_1510->g_91, l_587[0], p_1510);
                    }
                    for (p_1510->g_109 = 0; (p_1510->g_109 == 27); p_1510->g_109 = safe_add_func_int8_t_s_s(p_1510->g_109, 3))
                    { /* block id: 275 */
                        int32_t l_629[10] = {0x1725E560L,0x1725E560L,0x1725E560L,0x1725E560L,0x1725E560L,0x1725E560L,0x1725E560L,0x1725E560L,0x1725E560L,0x1725E560L};
                        int32_t l_651[6] = {8L,0x0729CDEBL,8L,8L,0x0729CDEBL,8L};
                        uint32_t *l_656 = &p_1510->g_97[0];
                        int i;
                        --l_632;
                        (*p_1510->g_494) = ((*p_1510->g_494) , (**l_545));
                        l_631[0][2][3] ^= (safe_lshift_func_uint8_t_u_s(l_632, (((safe_mul_func_int16_t_s_s((((void*)0 != p_1510->g_333) > (p_1510->g_608[3] > (safe_add_func_int8_t_s_s((((*p_1510->g_480) = (((safe_rshift_func_uint16_t_u_u(((((l_651[5] ^= (p_17 <= ((safe_rshift_func_int8_t_s_s(((safe_add_func_int64_t_s_s((safe_add_func_int16_t_s_s(l_629[4], (((safe_sub_func_uint16_t_u_u(65535UL, (~(!((void*)0 == &l_587[4]))))) , (void*)0) == (void*)0))), 1UL)) & l_629[5]), 3)) == p_1510->g_114[0][4][6]))) == p_1510->g_248) | 0xEDC4L) , 1UL), p_1510->g_114[0][2][3])) <= (*l_145)) , (*l_145))) != 0xA25B7874L), 1L)))), (-1L))) | (*l_525)) & p_17)));
                        l_657 |= (+(p_17 < (p_17 == (((p_1510->g_54[3] && (p_1510->g_319 , (safe_add_func_int16_t_s_s((l_632 , ((((*l_145) < (safe_rshift_func_uint16_t_u_u(p_1510->g_104[4][3][2], 1))) && ((!((p_1510->g_91 , ((l_656 != (void*)0) , (-7L))) > p_17)) <= l_631[0][0][1])) | p_1510->g_104[4][3][2])), p_17)))) && p_1510->g_104[4][3][2]) == FAKE_DIVERGE(p_1510->group_1_offset, get_group_id(1), 10)))));
                    }
                    for (l_575 = 0; (l_575 > 5); ++l_575)
                    { /* block id: 285 */
                        int32_t **l_660[4] = {&l_547[0][5][1],&l_547[0][5][1],&l_547[0][5][1],&l_547[0][5][1]};
                        union U2 *l_666[10][7] = {{&p_1510->g_156[3][7][2],&p_1510->g_508[0][0][1],(void*)0,&p_1510->g_156[3][7][2],&p_1510->g_508[0][0][1],&p_1510->g_156[3][7][2],(void*)0},{&p_1510->g_156[3][7][2],&p_1510->g_508[0][0][1],(void*)0,&p_1510->g_156[3][7][2],&p_1510->g_508[0][0][1],&p_1510->g_156[3][7][2],(void*)0},{&p_1510->g_156[3][7][2],&p_1510->g_508[0][0][1],(void*)0,&p_1510->g_156[3][7][2],&p_1510->g_508[0][0][1],&p_1510->g_156[3][7][2],(void*)0},{&p_1510->g_156[3][7][2],&p_1510->g_508[0][0][1],(void*)0,&p_1510->g_156[3][7][2],&p_1510->g_508[0][0][1],&p_1510->g_156[3][7][2],(void*)0},{&p_1510->g_156[3][7][2],&p_1510->g_508[0][0][1],(void*)0,&p_1510->g_156[3][7][2],&p_1510->g_508[0][0][1],&p_1510->g_156[3][7][2],(void*)0},{&p_1510->g_156[3][7][2],&p_1510->g_508[0][0][1],(void*)0,&p_1510->g_156[3][7][2],&p_1510->g_508[0][0][1],&p_1510->g_156[3][7][2],(void*)0},{&p_1510->g_156[3][7][2],&p_1510->g_508[0][0][1],(void*)0,&p_1510->g_156[3][7][2],&p_1510->g_508[0][0][1],&p_1510->g_156[3][7][2],(void*)0},{&p_1510->g_156[3][7][2],&p_1510->g_508[0][0][1],(void*)0,&p_1510->g_156[3][7][2],&p_1510->g_508[0][0][1],&p_1510->g_156[3][7][2],(void*)0},{&p_1510->g_156[3][7][2],&p_1510->g_508[0][0][1],(void*)0,&p_1510->g_156[3][7][2],&p_1510->g_508[0][0][1],&p_1510->g_156[3][7][2],(void*)0},{&p_1510->g_156[3][7][2],&p_1510->g_508[0][0][1],(void*)0,&p_1510->g_156[3][7][2],&p_1510->g_508[0][0][1],&p_1510->g_156[3][7][2],(void*)0}};
                        int i, j;
                        l_661 = l_587[0];
                        (*p_1510->g_480) ^= ((safe_div_func_int16_t_s_s(0x773FL, (safe_mod_func_int8_t_s_s(((l_667 = p_1510->g_508[2][0][4]) , ((safe_lshift_func_int8_t_s_u(p_17, 3)) && ((safe_sub_func_int16_t_s_s((safe_unary_minus_func_uint32_t_u(l_593[3][5])), (((l_673 , (safe_lshift_func_uint16_t_u_u(1UL, (GROUP_DIVERGE(2, 1) == (p_1510->g_106 |= ((*l_145) , (p_1510->g_104[4][3][2] |= 0xE965E3EF65AC2F49L))))))) <= ((p_1510->g_179 |= p_1510->g_91) <= (-1L))) || p_1510->g_comm_values[p_1510->tid]))) | (*l_661)))), p_17)))) | 0L);
                    }
                    return p_17;
                }
                if (p_17)
                    continue;
                for (p_1510->g_34 = (-19); (p_1510->g_34 == 19); ++p_1510->g_34)
                { /* block id: 298 */
                    int32_t **l_679 = &p_1510->g_191[0][1][1];
                    (*l_679) = func_57(((GROUP_DIVERGE(0, 1) > p_1510->g_4) && p_17), l_678, &p_1510->g_54[5], p_1510);
                    return p_17;
                }
            }
            else
            { /* block id: 302 */
                int8_t *l_695 = &l_624[6];
                struct S0 ****l_707 = &p_1510->g_706;
                uint8_t *l_708 = &l_678.f2;
                uint8_t *l_709 = (void*)0;
                uint8_t *l_710 = &p_1510->g_156[3][7][2].f2;
                uint8_t *l_711 = &l_667.f2;
                uint8_t *l_712 = &l_678.f2;
                uint8_t *l_713 = &p_1510->g_508[0][0][1].f2;
                uint8_t *l_714 = &l_667.f2;
                uint8_t *l_715 = &p_1510->g_156[3][7][2].f2;
                uint8_t *l_716 = &l_667.f2;
                uint8_t *l_717 = &p_1510->g_156[3][7][2].f2;
                uint8_t *l_718 = &l_575;
                int64_t *l_731 = &l_586;
                int32_t l_732 = 0x022B0D41L;
                int32_t **l_733 = &l_525;
                for (p_1510->g_248 = 0; (p_1510->g_248 >= 46); p_1510->g_248 = safe_add_func_uint8_t_u_u(p_1510->g_248, 1))
                { /* block id: 305 */
                    int8_t *l_691[8];
                    uint16_t *l_694 = &p_1510->g_319;
                    uint32_t *l_696 = &p_1510->g_97[0];
                    int8_t **l_697 = (void*)0;
                    int8_t **l_698 = &p_1510->g_558[2][5][5];
                    int32_t *l_699 = &l_146[3][0][2];
                    int i;
                    for (i = 0; i < 8; i++)
                        l_691[i] = &l_573;
                    for (l_667.f3 = 0; (l_667.f3 >= 3); l_667.f3++)
                    { /* block id: 308 */
                        int32_t l_684 = 1L;
                        (*p_1510->g_480) = 0x01BA534BL;
                        (*p_1510->g_480) &= l_684;
                    }
                    (*l_699) |= (safe_sub_func_int8_t_s_s(0x14L, ((safe_lshift_func_int8_t_s_u((((*l_694) = (safe_add_func_uint32_t_u_u((((*l_145) |= (-4L)) == FAKE_DIVERGE(p_1510->local_0_offset, get_local_id(0), 10)), ((p_1510->g_248 , ((FAKE_DIVERGE(p_1510->group_1_offset, get_group_id(1), 10) , p_1510->g_692) != l_693)) & p_17)))) | ((((l_695 = l_691[7]) != ((*l_698) = func_70(((*l_565) = (*l_566)), ((l_696 = func_57((l_592[0] ^= p_17), p_1510->g_508[0][0][1], &p_1510->g_109, p_1510)) == &p_1510->g_97[0]), &l_146[0][7][3], p_1510->g_165, p_1510))) , &l_593[4][6]) == l_699)), 4)) , 2UL)));
                }
                (*l_733) = (((*l_145) = (((safe_add_func_int64_t_s_s(((-4L) < (GROUP_DIVERGE(2, 1) , (safe_mod_func_uint64_t_u_u((safe_div_func_uint16_t_u_u(((((*l_707) = p_1510->g_706) != &p_1510->g_446) & (--(*l_718))), ((((safe_add_func_int64_t_s_s((safe_add_func_int64_t_s_s((safe_rshift_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s(((((*l_566) , (((*p_1510->g_494) , 0x6AB7L) & (safe_add_func_int32_t_s_s((p_1510->g_156[3][7][2].f0 != ((*l_731) = p_17)), p_17)))) , 0x1FA57452L) || p_17), 7)), l_732)), (*l_145))), p_1510->g_54[5])) , p_17) , 1L) || 249UL))), l_592[1])))), p_17)) <= 0xDD4A8E320AC2FCD4L) , l_592[1])) , (void*)0);
                if (p_17)
                    continue;
            }
        }
        (*l_734) = &l_548[6][0];
        (*p_1510->g_480) = (((*l_746) = func_46(p_1510->g_319, func_65((*l_734), (p_17 , func_70((**l_545), (1UL ^ (((l_738 = ((((*l_145) , ((*l_743) = (safe_mod_func_int64_t_s_s(l_593[4][6], (((*l_740) = (((((((*l_145) = p_17) , ((1UL < l_737) , p_1510->g_333)) == p_1510->g_333) && p_17) != (*p_1510->g_480)) , 4L)) || (-8L)))))) == 0xED9B8A2E56E71D00L) , l_693)) == l_693) || (-9L))), &l_592[0], l_593[2][8], p_1510)), &p_1510->g_54[4], p_1510->g_156[3][7][2].f0, p_1510), p_1510->g_318, l_145, p_1510)) != &p_1510->g_748);
        (*p_1510->g_480) = l_593[4][6];
    }
    else
    { /* block id: 337 */
        return p_1510->g_104[0][0][5];
    }
    l_749 = &l_18;
    return p_17;
}


/* ------------------------------------------ */
/* 
 * reads : p_1510->g_75.f0 p_1510->g_114 p_1510->g_156 p_1510->g_54 p_1510->g_165 p_1510->g_104 p_1510->g_4
 * writes: p_1510->g_comm_values p_1510->g_165 p_1510->g_144
 */
int32_t * func_21(uint32_t  p_22, int16_t  p_23, int32_t  p_24, int8_t  p_25, int32_t * p_26, struct S3 * p_1510)
{ /* block id: 39 */
    uint32_t l_152 = 0xFAD9A83CL;
    int32_t l_153 = 0x39797662L;
    int32_t l_162 = 0x707BE03BL;
    struct S0 l_175 = {0L};
    union U1 *l_188 = &p_1510->g_189;
    int32_t l_212 = 0x651DA70CL;
    int32_t l_213 = (-1L);
    int32_t l_214 = 0x21A80C49L;
    int32_t l_216 = 0x1BD90DFAL;
    int32_t l_221 = 4L;
    int32_t l_222 = 0x74F07F46L;
    uint32_t l_223[4][6] = {{0xEBF4BDEBL,0xEBF4BDEBL,0xEBF4BDEBL,0xEBF4BDEBL,0xEBF4BDEBL,0xEBF4BDEBL},{0xEBF4BDEBL,0xEBF4BDEBL,0xEBF4BDEBL,0xEBF4BDEBL,0xEBF4BDEBL,0xEBF4BDEBL},{0xEBF4BDEBL,0xEBF4BDEBL,0xEBF4BDEBL,0xEBF4BDEBL,0xEBF4BDEBL,0xEBF4BDEBL},{0xEBF4BDEBL,0xEBF4BDEBL,0xEBF4BDEBL,0xEBF4BDEBL,0xEBF4BDEBL,0xEBF4BDEBL}};
    int32_t l_336 = (-6L);
    int32_t l_337[3];
    int16_t l_338 = 0x5C80L;
    int8_t l_339[9][4][3] = {{{0x48L,0x28L,8L},{0x48L,0x28L,8L},{0x48L,0x28L,8L},{0x48L,0x28L,8L}},{{0x48L,0x28L,8L},{0x48L,0x28L,8L},{0x48L,0x28L,8L},{0x48L,0x28L,8L}},{{0x48L,0x28L,8L},{0x48L,0x28L,8L},{0x48L,0x28L,8L},{0x48L,0x28L,8L}},{{0x48L,0x28L,8L},{0x48L,0x28L,8L},{0x48L,0x28L,8L},{0x48L,0x28L,8L}},{{0x48L,0x28L,8L},{0x48L,0x28L,8L},{0x48L,0x28L,8L},{0x48L,0x28L,8L}},{{0x48L,0x28L,8L},{0x48L,0x28L,8L},{0x48L,0x28L,8L},{0x48L,0x28L,8L}},{{0x48L,0x28L,8L},{0x48L,0x28L,8L},{0x48L,0x28L,8L},{0x48L,0x28L,8L}},{{0x48L,0x28L,8L},{0x48L,0x28L,8L},{0x48L,0x28L,8L},{0x48L,0x28L,8L}},{{0x48L,0x28L,8L},{0x48L,0x28L,8L},{0x48L,0x28L,8L},{0x48L,0x28L,8L}}};
    int32_t l_341 = 0x15A4627BL;
    uint64_t l_379 = 0x807D10341EE104E5L;
    struct S0 *l_448 = &p_1510->g_75[0];
    struct S0 **l_447 = &l_448;
    int32_t *l_481 = &l_212;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_337[i] = 1L;
    for (p_24 = 4; (p_24 >= 0); p_24 -= 1)
    { /* block id: 42 */
        int64_t l_159[8] = {0x55842A7B798A745DL,0x4C412B3B2B88CA99L,0x55842A7B798A745DL,0x55842A7B798A745DL,0x4C412B3B2B88CA99L,0x55842A7B798A745DL,0x55842A7B798A745DL,0x4C412B3B2B88CA99L};
        uint16_t *l_160 = (void*)0;
        uint16_t *l_161 = (void*)0;
        int32_t l_163 = 0x3FAE531CL;
        int32_t *l_164 = &p_1510->g_165;
        int64_t *l_168[8][9] = {{&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169},{&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169},{&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169},{&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169},{&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169},{&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169},{&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169},{&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169,&p_1510->g_169}};
        int32_t **l_174 = &p_1510->g_144;
        struct S0 *l_176 = (void*)0;
        int32_t l_211 = 0L;
        int32_t l_215 = 0x6DB3C8DCL;
        int32_t l_219[10];
        int32_t ***l_328 = &l_174;
        int8_t l_342 = (-4L);
        int64_t l_343 = 1L;
        uint32_t l_346[6] = {1UL,0UL,1UL,1UL,0UL,1UL};
        int32_t l_352 = 1L;
        int32_t l_360 = 0x27007CADL;
        int32_t l_361 = (-1L);
        int64_t l_499 = 1L;
        int i, j;
        for (i = 0; i < 10; i++)
            l_219[i] = 0L;
        (*l_164) |= (safe_mul_func_uint16_t_u_u(p_1510->g_75[0].f0, ((safe_add_func_uint8_t_u_u((l_152 = (7UL | (p_1510->g_comm_values[p_1510->tid] = p_1510->g_75[0].f0))), l_153)) <= ((safe_div_func_uint32_t_u_u(p_1510->g_114[1][0][1], ((((!(p_1510->g_156[3][7][2] , (l_163 = ((((((safe_mul_func_uint8_t_u_u(4UL, ((p_25 & (l_162 = ((p_1510->g_54[4] || p_24) ^ l_159[0]))) <= 0xD19FL))) || 0x2332137CA8016012L) , &p_1510->g_91) != &p_1510->g_91) <= 0L) | p_25)))) && (-7L)) , FAKE_DIVERGE(p_1510->local_2_offset, get_local_id(2), 10)) , 0x63A3C0B0L))) <= (-10L)))));
        (*l_174) = ((((((((safe_lshift_func_uint8_t_u_u((*l_164), (((l_163 &= 0x13F67575CCD8886AL) , ((0x2CL <= (safe_sub_func_uint16_t_u_u(((l_162 > ((*p_26) && 0x7A57FA40L)) < (*l_164)), (safe_rshift_func_uint16_t_u_s(0xDDE7L, (0xD47E205EDD6FC38DL & 0xDBAE0E4194430BB1L)))))) || (*l_164))) < 1L))) == p_1510->g_104[4][3][6]) ^ 7UL) > p_1510->g_54[5]) , GROUP_DIVERGE(2, 1)) == p_1510->g_4) | 4L) , &l_163);
        l_175 = l_175;
        (*l_174) = &l_162;
        for (l_152 = 0; (l_152 <= 4); l_152 += 1)
        { /* block id: 54 */
            uint32_t l_185 = 4294967289UL;
            union U1 *l_193 = &p_1510->g_194[5];
            int32_t l_203[9] = {(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L),(-6L)};
            int32_t l_220 = 9L;
            struct S0 **l_269 = &l_176;
            int32_t *l_312 = &l_219[2];
            int32_t l_344 = 0x3138D25DL;
            int8_t *l_359 = &l_339[7][0][2];
            int32_t ***l_469[9][9][3] = {{{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174}},{{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174}},{{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174}},{{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174}},{{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174}},{{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174}},{{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174}},{{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174}},{{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174},{(void*)0,(void*)0,&l_174}}};
            int32_t ***l_470 = &p_1510->g_468[0][4][2];
            int i, j, k;
            (1 + 1);
        }
    }
    return p_26;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint8_t  func_35(int64_t  p_36, uint8_t  p_37, int32_t * p_38, uint32_t * p_39, uint8_t  p_40, struct S3 * p_1510)
{ /* block id: 37 */
    return p_37;
}


/* ------------------------------------------ */
/* 
 * reads : p_1510->g_54 p_1510->g_75 p_1510->l_comm_values p_1510->g_85 p_1510->g_104 p_1510->g_106 p_1510->g_109 p_1510->g_97 p_1510->g_114
 * writes: p_1510->g_54 p_1510->g_85 p_1510->g_91 p_1510->g_104 p_1510->g_106 p_1510->g_109 p_1510->g_75 p_1510->g_144
 */
int32_t  func_43(uint64_t  p_44, struct S3 * p_1510)
{ /* block id: 13 */
    uint16_t l_51[1];
    uint32_t *l_52 = (void*)0;
    uint32_t *l_53 = &p_1510->g_54[5];
    uint32_t *l_61[7] = {&p_1510->g_54[1],&p_1510->g_54[5],&p_1510->g_54[1],&p_1510->g_54[1],&p_1510->g_54[5],&p_1510->g_54[1],&p_1510->g_54[1]};
    union U2 l_62 = {0x8E23095C3C62ED5BL};
    int32_t *l_143 = &p_1510->g_4;
    int32_t **l_142 = &l_143;
    int i;
    for (i = 0; i < 1; i++)
        l_51[i] = 4UL;
    p_1510->g_144 = ((*l_142) = func_46(l_51[0], ((++(*l_53)) , func_57(((&p_1510->g_54[5] != l_61[3]) , l_51[0]), l_62, ((safe_rshift_func_uint16_t_u_u(0UL, 1)) , func_65(&p_1510->g_4, func_70(p_1510->g_75[0], p_44, l_52, p_1510->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1510->tid, 2))], p_1510), &p_1510->g_54[5], p_1510->g_54[5], p_1510)), p_1510)), p_1510->g_97[0], &p_1510->g_97[0], p_1510));
    return p_44;
}


/* ------------------------------------------ */
/* 
 * reads : p_1510->g_114
 * writes: p_1510->g_91 p_1510->g_75
 */
int32_t * func_46(uint16_t  p_47, int32_t * p_48, uint32_t  p_49, uint32_t * p_50, struct S3 * p_1510)
{ /* block id: 30 */
    int32_t *l_137 = &p_1510->g_114[1][2][5];
    int8_t *l_138 = (void*)0;
    int32_t **l_139 = &l_137;
    struct S0 *l_140 = &p_1510->g_75[0];
    struct S0 **l_141 = &l_140;
    (*l_139) = func_65(l_137, l_138, &p_1510->g_54[5], (*l_137), p_1510);
    (*l_141) = l_140;
    return &p_1510->g_4;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_57(int16_t  p_58, union U2  p_59, uint32_t * p_60, struct S3 * p_1510)
{ /* block id: 27 */
    int32_t *l_123 = (void*)0;
    int32_t *l_124 = &p_1510->g_114[0][4][5];
    int32_t l_125 = 0L;
    int32_t *l_126 = &l_125;
    int32_t *l_127 = &p_1510->g_114[0][1][2];
    int32_t *l_128 = &p_1510->g_114[0][2][3];
    int32_t *l_129 = &p_1510->g_114[0][2][3];
    int32_t *l_130 = &p_1510->g_114[0][2][3];
    int32_t *l_131 = &l_125;
    int32_t l_132 = 0x0A41DF58L;
    int32_t *l_133[4][1][9] = {{{&p_1510->g_114[0][2][3],&l_125,&p_1510->g_114[0][2][3],&p_1510->g_114[0][2][3],&l_125,&p_1510->g_114[0][2][3],&p_1510->g_114[0][2][3],&l_125,&p_1510->g_114[0][2][3]}},{{&p_1510->g_114[0][2][3],&l_125,&p_1510->g_114[0][2][3],&p_1510->g_114[0][2][3],&l_125,&p_1510->g_114[0][2][3],&p_1510->g_114[0][2][3],&l_125,&p_1510->g_114[0][2][3]}},{{&p_1510->g_114[0][2][3],&l_125,&p_1510->g_114[0][2][3],&p_1510->g_114[0][2][3],&l_125,&p_1510->g_114[0][2][3],&p_1510->g_114[0][2][3],&l_125,&p_1510->g_114[0][2][3]}},{{&p_1510->g_114[0][2][3],&l_125,&p_1510->g_114[0][2][3],&p_1510->g_114[0][2][3],&l_125,&p_1510->g_114[0][2][3],&p_1510->g_114[0][2][3],&l_125,&p_1510->g_114[0][2][3]}}};
    uint16_t l_134 = 0xBD68L;
    int i, j, k;
    l_134--;
    return p_60;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_1510->g_91 p_1510->g_75
 */
uint32_t * func_65(int32_t * p_66, int8_t * p_67, uint32_t * p_68, uint8_t  p_69, struct S3 * p_1510)
{ /* block id: 23 */
    int32_t *l_113 = &p_1510->g_114[0][2][3];
    int32_t *l_115 = &p_1510->g_114[0][2][3];
    int32_t *l_116 = &p_1510->g_114[0][3][5];
    int32_t *l_117 = (void*)0;
    int32_t *l_118 = &p_1510->g_114[0][4][2];
    int32_t *l_119[9] = {&p_1510->g_114[0][2][2],&p_1510->g_114[0][2][2],&p_1510->g_114[0][2][2],&p_1510->g_114[0][2][2],&p_1510->g_114[0][2][2],&p_1510->g_114[0][2][2],&p_1510->g_114[0][2][2],&p_1510->g_114[0][2][2],&p_1510->g_114[0][2][2]};
    uint8_t l_120[9][4][5] = {{{0x63L,1UL,6UL,0x7AL,0xC5L},{0x63L,1UL,6UL,0x7AL,0xC5L},{0x63L,1UL,6UL,0x7AL,0xC5L},{0x63L,1UL,6UL,0x7AL,0xC5L}},{{0x63L,1UL,6UL,0x7AL,0xC5L},{0x63L,1UL,6UL,0x7AL,0xC5L},{0x63L,1UL,6UL,0x7AL,0xC5L},{0x63L,1UL,6UL,0x7AL,0xC5L}},{{0x63L,1UL,6UL,0x7AL,0xC5L},{0x63L,1UL,6UL,0x7AL,0xC5L},{0x63L,1UL,6UL,0x7AL,0xC5L},{0x63L,1UL,6UL,0x7AL,0xC5L}},{{0x63L,1UL,6UL,0x7AL,0xC5L},{0x63L,1UL,6UL,0x7AL,0xC5L},{0x63L,1UL,6UL,0x7AL,0xC5L},{0x63L,1UL,6UL,0x7AL,0xC5L}},{{0x63L,1UL,6UL,0x7AL,0xC5L},{0x63L,1UL,6UL,0x7AL,0xC5L},{0x63L,1UL,6UL,0x7AL,0xC5L},{0x63L,1UL,6UL,0x7AL,0xC5L}},{{0x63L,1UL,6UL,0x7AL,0xC5L},{0x63L,1UL,6UL,0x7AL,0xC5L},{0x63L,1UL,6UL,0x7AL,0xC5L},{0x63L,1UL,6UL,0x7AL,0xC5L}},{{0x63L,1UL,6UL,0x7AL,0xC5L},{0x63L,1UL,6UL,0x7AL,0xC5L},{0x63L,1UL,6UL,0x7AL,0xC5L},{0x63L,1UL,6UL,0x7AL,0xC5L}},{{0x63L,1UL,6UL,0x7AL,0xC5L},{0x63L,1UL,6UL,0x7AL,0xC5L},{0x63L,1UL,6UL,0x7AL,0xC5L},{0x63L,1UL,6UL,0x7AL,0xC5L}},{{0x63L,1UL,6UL,0x7AL,0xC5L},{0x63L,1UL,6UL,0x7AL,0xC5L},{0x63L,1UL,6UL,0x7AL,0xC5L},{0x63L,1UL,6UL,0x7AL,0xC5L}}};
    int i, j, k;
    for (p_1510->g_91 = 0; p_1510->g_91 < 2; p_1510->g_91 += 1)
    {
        struct S0 tmp = {{-1L}};
        p_1510->g_75[p_1510->g_91] = tmp;
    }
    ++l_120[5][1][1];
    return p_66;
}


/* ------------------------------------------ */
/* 
 * reads : p_1510->g_85 p_1510->g_54 p_1510->g_104 p_1510->g_106 p_1510->g_109
 * writes: p_1510->g_85 p_1510->g_91 p_1510->g_104 p_1510->g_106 p_1510->g_109
 */
int8_t * func_70(struct S0  p_71, uint8_t  p_72, int32_t * p_73, uint64_t  p_74, struct S3 * p_1510)
{ /* block id: 15 */
    int32_t l_80 = 0L;
    int32_t l_83[5];
    uint16_t *l_84 = &p_1510->g_85;
    int16_t *l_90 = &p_1510->g_91;
    union U2 l_92 = {1UL};
    uint32_t *l_96 = &p_1510->g_97[0];
    uint64_t *l_102 = (void*)0;
    uint64_t *l_103 = &p_1510->g_104[4][3][2];
    uint16_t l_105 = 1UL;
    int32_t *l_107 = &l_80;
    int32_t *l_108[8][1][8] = {{{&l_80,&l_83[4],(void*)0,(void*)0,&l_83[4],(void*)0,(void*)0,&l_83[4]}},{{&l_80,&l_83[4],(void*)0,(void*)0,&l_83[4],(void*)0,(void*)0,&l_83[4]}},{{&l_80,&l_83[4],(void*)0,(void*)0,&l_83[4],(void*)0,(void*)0,&l_83[4]}},{{&l_80,&l_83[4],(void*)0,(void*)0,&l_83[4],(void*)0,(void*)0,&l_83[4]}},{{&l_80,&l_83[4],(void*)0,(void*)0,&l_83[4],(void*)0,(void*)0,&l_83[4]}},{{&l_80,&l_83[4],(void*)0,(void*)0,&l_83[4],(void*)0,(void*)0,&l_83[4]}},{{&l_80,&l_83[4],(void*)0,(void*)0,&l_83[4],(void*)0,(void*)0,&l_83[4]}},{{&l_80,&l_83[4],(void*)0,(void*)0,&l_83[4],(void*)0,(void*)0,&l_83[4]}}};
    int8_t *l_112 = &p_1510->g_75[0].f0;
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_83[i] = (-6L);
    p_1510->g_106 |= ((safe_mod_func_uint64_t_u_u((((safe_div_func_uint32_t_u_u(((l_80 ^ (((++(*l_84)) & ((*l_90) = (0x2088C4B5L ^ (safe_rshift_func_int8_t_s_u(l_83[4], 0))))) <= (p_72 < (l_92 , (safe_unary_minus_func_uint8_t_u(((safe_mul_func_uint16_t_u_u(((void*)0 != l_96), (0xFA6FL || ((safe_mod_func_uint64_t_u_u(((*l_103) = (safe_mod_func_int32_t_s_s(1L, p_1510->g_54[0]))), l_105)) || p_1510->g_104[1][1][4])))) & p_71.f0))))))) < p_74), 4L)) , (void*)0) == (void*)0), 0x0EDC169712D56B38L)) ^ FAKE_DIVERGE(p_1510->local_2_offset, get_local_id(2), 10));
    (*l_107) |= 0x4F873A64L;
    ++p_1510->g_109;
    return l_112;
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[2];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 2; i++)
            l_comm_values[i] = 1;
    struct S3 c_1511;
    struct S3* p_1510 = &c_1511;
    struct S3 c_1512 = {
        0x79CF1813L, // p_1510->g_4
        0x7812A3CC92EA21E1L, // p_1510->g_6
        0x6D1D89E1L, // p_1510->g_34
        {0xAB8AC29BL,0xAB8AC29BL,0xAB8AC29BL,0xAB8AC29BL,0xAB8AC29BL,0xAB8AC29BL}, // p_1510->g_54
        {{2L},{2L}}, // p_1510->g_75
        0x5146L, // p_1510->g_85
        0x0C20L, // p_1510->g_91
        {0UL}, // p_1510->g_97
        {{{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL}},{{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL}},{{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL}},{{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL}},{{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL}}}, // p_1510->g_104
        2UL, // p_1510->g_106
        6UL, // p_1510->g_109
        {{{0x40D6AF10L,0x40D6AF10L,0x12B0ECC8L,2L,0x52F7AF16L,2L,0x12B0ECC8L},{0x40D6AF10L,0x40D6AF10L,0x12B0ECC8L,2L,0x52F7AF16L,2L,0x12B0ECC8L},{0x40D6AF10L,0x40D6AF10L,0x12B0ECC8L,2L,0x52F7AF16L,2L,0x12B0ECC8L},{0x40D6AF10L,0x40D6AF10L,0x12B0ECC8L,2L,0x52F7AF16L,2L,0x12B0ECC8L},{0x40D6AF10L,0x40D6AF10L,0x12B0ECC8L,2L,0x52F7AF16L,2L,0x12B0ECC8L}},{{0x40D6AF10L,0x40D6AF10L,0x12B0ECC8L,2L,0x52F7AF16L,2L,0x12B0ECC8L},{0x40D6AF10L,0x40D6AF10L,0x12B0ECC8L,2L,0x52F7AF16L,2L,0x12B0ECC8L},{0x40D6AF10L,0x40D6AF10L,0x12B0ECC8L,2L,0x52F7AF16L,2L,0x12B0ECC8L},{0x40D6AF10L,0x40D6AF10L,0x12B0ECC8L,2L,0x52F7AF16L,2L,0x12B0ECC8L},{0x40D6AF10L,0x40D6AF10L,0x12B0ECC8L,2L,0x52F7AF16L,2L,0x12B0ECC8L}}}, // p_1510->g_114
        (void*)0, // p_1510->g_144
        {{{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}}},{{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}}},{{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}}},{{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}}},{{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}}},{{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}}},{{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}}},{{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}},{{18446744073709551614UL},{18446744073709551614UL},{0UL}}}}, // p_1510->g_156
        0x3E8FD49BL, // p_1510->g_165
        0x5968C18A0E89C3F4L, // p_1510->g_169
        0x305E1E2CL, // p_1510->g_179
        {0}, // p_1510->g_189
        {{{(void*)0,(void*)0,&p_1510->g_165,(void*)0},{(void*)0,(void*)0,&p_1510->g_165,(void*)0}},{{(void*)0,(void*)0,&p_1510->g_165,(void*)0},{(void*)0,(void*)0,&p_1510->g_165,(void*)0}}}, // p_1510->g_191
        {{0},{0},{0},{0},{0},{0},{0},{0},{0},{0}}, // p_1510->g_194
        1UL, // p_1510->g_248
        0x22C0L, // p_1510->g_318
        0x13F8L, // p_1510->g_319
        {{0},{0},{0},{0}}, // p_1510->g_334
        &p_1510->g_334[1], // p_1510->g_333
        {{&p_1510->g_333,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_333,&p_1510->g_333,(void*)0,&p_1510->g_333,&p_1510->g_333},{&p_1510->g_333,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_333,&p_1510->g_333,(void*)0,&p_1510->g_333,&p_1510->g_333},{&p_1510->g_333,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_333,&p_1510->g_333,(void*)0,&p_1510->g_333,&p_1510->g_333},{&p_1510->g_333,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_333,&p_1510->g_333,(void*)0,&p_1510->g_333,&p_1510->g_333},{&p_1510->g_333,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_333,&p_1510->g_333,(void*)0,&p_1510->g_333,&p_1510->g_333},{&p_1510->g_333,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_333,&p_1510->g_333,(void*)0,&p_1510->g_333,&p_1510->g_333},{&p_1510->g_333,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_333,&p_1510->g_333,(void*)0,&p_1510->g_333,&p_1510->g_333},{&p_1510->g_333,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_333,&p_1510->g_333,(void*)0,&p_1510->g_333,&p_1510->g_333},{&p_1510->g_333,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_333,&p_1510->g_333,(void*)0,&p_1510->g_333,&p_1510->g_333},{&p_1510->g_333,(void*)0,(void*)0,(void*)0,(void*)0,&p_1510->g_333,&p_1510->g_333,(void*)0,&p_1510->g_333,&p_1510->g_333}}, // p_1510->g_332
        (void*)0, // p_1510->g_446
        {{{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]}},{{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]}},{{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]}},{{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]}},{{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]}},{{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]},{&p_1510->g_191[0][1][1],&p_1510->g_191[0][0][0],&p_1510->g_191[0][1][1]}}}, // p_1510->g_468
        &p_1510->g_468[0][4][2], // p_1510->g_467
        &p_1510->g_165, // p_1510->g_480
        &p_1510->g_75[0], // p_1510->g_494
        {{{{18446744073709551615UL},{2UL},{18446744073709551615UL},{18446744073709551615UL},{2UL},{18446744073709551615UL},{18446744073709551615UL}}},{{{18446744073709551615UL},{2UL},{18446744073709551615UL},{18446744073709551615UL},{2UL},{18446744073709551615UL},{18446744073709551615UL}}},{{{18446744073709551615UL},{2UL},{18446744073709551615UL},{18446744073709551615UL},{2UL},{18446744073709551615UL},{18446744073709551615UL}}},{{{18446744073709551615UL},{2UL},{18446744073709551615UL},{18446744073709551615UL},{2UL},{18446744073709551615UL},{18446744073709551615UL}}},{{{18446744073709551615UL},{2UL},{18446744073709551615UL},{18446744073709551615UL},{2UL},{18446744073709551615UL},{18446744073709551615UL}}}}, // p_1510->g_508
        {{{(void*)0,(void*)0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0},{(void*)0,(void*)0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0},{(void*)0,(void*)0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0},{(void*)0,(void*)0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0},{(void*)0,(void*)0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0},{(void*)0,(void*)0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0}},{{(void*)0,(void*)0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0},{(void*)0,(void*)0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0},{(void*)0,(void*)0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0},{(void*)0,(void*)0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0},{(void*)0,(void*)0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0},{(void*)0,(void*)0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0}},{{(void*)0,(void*)0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0},{(void*)0,(void*)0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0},{(void*)0,(void*)0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0},{(void*)0,(void*)0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0},{(void*)0,(void*)0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0},{(void*)0,(void*)0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0}},{{(void*)0,(void*)0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0},{(void*)0,(void*)0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0},{(void*)0,(void*)0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0},{(void*)0,(void*)0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0},{(void*)0,(void*)0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0},{(void*)0,(void*)0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0,&p_1510->g_75[0].f0,(void*)0,&p_1510->g_75[0].f0}}}, // p_1510->g_558
        {3UL,3UL,3UL,3UL,3UL,3UL,3UL,3UL,3UL,3UL}, // p_1510->g_608
        (void*)0, // p_1510->g_692
        (void*)0, // p_1510->g_706
        0x14F01C2FL, // p_1510->g_748
        {0}, // p_1510->g_930
        {3UL,0x4D75L,3UL,3UL,0x4D75L,3UL,3UL,0x4D75L,3UL,3UL}, // p_1510->g_932
        {{{&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446},{&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446},{&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446},{&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446},{&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446},{&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446},{&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446}},{{&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446},{&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446},{&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446},{&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446},{&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446},{&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446},{&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446}},{{&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446},{&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446},{&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446},{&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446},{&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446},{&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446},{&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446}},{{&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446},{&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446},{&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446},{&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446},{&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446},{&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446},{&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446,&p_1510->g_446}}}, // p_1510->g_961
        {&p_1510->g_961[0][0][2],&p_1510->g_961[0][0][2],&p_1510->g_961[0][0][2],&p_1510->g_961[0][0][2],&p_1510->g_961[0][0][2],&p_1510->g_961[0][0][2]}, // p_1510->g_960
        0x359CAE7EL, // p_1510->g_1014
        &p_1510->g_191[0][0][1], // p_1510->g_1023
        {{{0x3B15AF56L,0x3B15AF56L,0x262806BEL},{0x3B15AF56L,0x3B15AF56L,0x262806BEL},{0x3B15AF56L,0x3B15AF56L,0x262806BEL},{0x3B15AF56L,0x3B15AF56L,0x262806BEL},{0x3B15AF56L,0x3B15AF56L,0x262806BEL},{0x3B15AF56L,0x3B15AF56L,0x262806BEL}}}, // p_1510->g_1098
        &p_1510->g_1098[0][2][0], // p_1510->g_1097
        &p_1510->g_1097, // p_1510->g_1096
        (-2L), // p_1510->g_1115
        {{{0},{0},{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0},{0},{0}}}, // p_1510->g_1147
        &p_1510->g_191[0][1][1], // p_1510->g_1157
        {{{249UL,0xE2L,0xFAL,0xB6L,251UL,0xA0L,0xDEL,0x24L},{249UL,0xE2L,0xFAL,0xB6L,251UL,0xA0L,0xDEL,0x24L},{249UL,0xE2L,0xFAL,0xB6L,251UL,0xA0L,0xDEL,0x24L},{249UL,0xE2L,0xFAL,0xB6L,251UL,0xA0L,0xDEL,0x24L},{249UL,0xE2L,0xFAL,0xB6L,251UL,0xA0L,0xDEL,0x24L}},{{249UL,0xE2L,0xFAL,0xB6L,251UL,0xA0L,0xDEL,0x24L},{249UL,0xE2L,0xFAL,0xB6L,251UL,0xA0L,0xDEL,0x24L},{249UL,0xE2L,0xFAL,0xB6L,251UL,0xA0L,0xDEL,0x24L},{249UL,0xE2L,0xFAL,0xB6L,251UL,0xA0L,0xDEL,0x24L},{249UL,0xE2L,0xFAL,0xB6L,251UL,0xA0L,0xDEL,0x24L}},{{249UL,0xE2L,0xFAL,0xB6L,251UL,0xA0L,0xDEL,0x24L},{249UL,0xE2L,0xFAL,0xB6L,251UL,0xA0L,0xDEL,0x24L},{249UL,0xE2L,0xFAL,0xB6L,251UL,0xA0L,0xDEL,0x24L},{249UL,0xE2L,0xFAL,0xB6L,251UL,0xA0L,0xDEL,0x24L},{249UL,0xE2L,0xFAL,0xB6L,251UL,0xA0L,0xDEL,0x24L}},{{249UL,0xE2L,0xFAL,0xB6L,251UL,0xA0L,0xDEL,0x24L},{249UL,0xE2L,0xFAL,0xB6L,251UL,0xA0L,0xDEL,0x24L},{249UL,0xE2L,0xFAL,0xB6L,251UL,0xA0L,0xDEL,0x24L},{249UL,0xE2L,0xFAL,0xB6L,251UL,0xA0L,0xDEL,0x24L},{249UL,0xE2L,0xFAL,0xB6L,251UL,0xA0L,0xDEL,0x24L}},{{249UL,0xE2L,0xFAL,0xB6L,251UL,0xA0L,0xDEL,0x24L},{249UL,0xE2L,0xFAL,0xB6L,251UL,0xA0L,0xDEL,0x24L},{249UL,0xE2L,0xFAL,0xB6L,251UL,0xA0L,0xDEL,0x24L},{249UL,0xE2L,0xFAL,0xB6L,251UL,0xA0L,0xDEL,0x24L},{249UL,0xE2L,0xFAL,0xB6L,251UL,0xA0L,0xDEL,0x24L}},{{249UL,0xE2L,0xFAL,0xB6L,251UL,0xA0L,0xDEL,0x24L},{249UL,0xE2L,0xFAL,0xB6L,251UL,0xA0L,0xDEL,0x24L},{249UL,0xE2L,0xFAL,0xB6L,251UL,0xA0L,0xDEL,0x24L},{249UL,0xE2L,0xFAL,0xB6L,251UL,0xA0L,0xDEL,0x24L},{249UL,0xE2L,0xFAL,0xB6L,251UL,0xA0L,0xDEL,0x24L}}}, // p_1510->g_1220
        {{{9L,0x68DB51B1F0198008L,9L},{9L,0x68DB51B1F0198008L,9L}},{{9L,0x68DB51B1F0198008L,9L},{9L,0x68DB51B1F0198008L,9L}},{{9L,0x68DB51B1F0198008L,9L},{9L,0x68DB51B1F0198008L,9L}},{{9L,0x68DB51B1F0198008L,9L},{9L,0x68DB51B1F0198008L,9L}},{{9L,0x68DB51B1F0198008L,9L},{9L,0x68DB51B1F0198008L,9L}},{{9L,0x68DB51B1F0198008L,9L},{9L,0x68DB51B1F0198008L,9L}},{{9L,0x68DB51B1F0198008L,9L},{9L,0x68DB51B1F0198008L,9L}},{{9L,0x68DB51B1F0198008L,9L},{9L,0x68DB51B1F0198008L,9L}}}, // p_1510->g_1244
        0x64B52308L, // p_1510->g_1262
        &p_1510->g_1262, // p_1510->g_1261
        &p_1510->g_1261, // p_1510->g_1260
        &p_1510->g_4, // p_1510->g_1280
        {{{0x125AL,0x1DF4L},{0x125AL,0x1DF4L},{0x125AL,0x1DF4L},{0x125AL,0x1DF4L},{0x125AL,0x1DF4L},{0x125AL,0x1DF4L},{0x125AL,0x1DF4L},{0x125AL,0x1DF4L},{0x125AL,0x1DF4L}},{{0x125AL,0x1DF4L},{0x125AL,0x1DF4L},{0x125AL,0x1DF4L},{0x125AL,0x1DF4L},{0x125AL,0x1DF4L},{0x125AL,0x1DF4L},{0x125AL,0x1DF4L},{0x125AL,0x1DF4L},{0x125AL,0x1DF4L}},{{0x125AL,0x1DF4L},{0x125AL,0x1DF4L},{0x125AL,0x1DF4L},{0x125AL,0x1DF4L},{0x125AL,0x1DF4L},{0x125AL,0x1DF4L},{0x125AL,0x1DF4L},{0x125AL,0x1DF4L},{0x125AL,0x1DF4L}}}, // p_1510->g_1283
        &p_1510->g_194[9], // p_1510->g_1349
        {&p_1510->g_480,&p_1510->g_480,&p_1510->g_480,&p_1510->g_480,&p_1510->g_480}, // p_1510->g_1352
        {0}, // p_1510->g_1369
        {{{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}}},{{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}}},{{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}}},{{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}}},{{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}}},{{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0}}}}, // p_1510->g_1373
        {0}, // p_1510->g_1393
        &p_1510->g_480, // p_1510->g_1496
        4L, // p_1510->g_1501
        sequence_input[get_global_id(0)], // p_1510->global_0_offset
        sequence_input[get_global_id(1)], // p_1510->global_1_offset
        sequence_input[get_global_id(2)], // p_1510->global_2_offset
        sequence_input[get_local_id(0)], // p_1510->local_0_offset
        sequence_input[get_local_id(1)], // p_1510->local_1_offset
        sequence_input[get_local_id(2)], // p_1510->local_2_offset
        sequence_input[get_group_id(0)], // p_1510->group_0_offset
        sequence_input[get_group_id(1)], // p_1510->group_1_offset
        sequence_input[get_group_id(2)], // p_1510->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 2)), permutations[0][get_linear_local_id()])), // p_1510->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1511 = c_1512;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1510);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1510->g_4, "p_1510->g_4", print_hash_value);
    transparent_crc(p_1510->g_6, "p_1510->g_6", print_hash_value);
    transparent_crc(p_1510->g_34, "p_1510->g_34", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1510->g_54[i], "p_1510->g_54[i]", print_hash_value);

    }
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1510->g_75[i].f0, "p_1510->g_75[i].f0", print_hash_value);

    }
    transparent_crc(p_1510->g_85, "p_1510->g_85", print_hash_value);
    transparent_crc(p_1510->g_91, "p_1510->g_91", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1510->g_97[i], "p_1510->g_97[i]", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_1510->g_104[i][j][k], "p_1510->g_104[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1510->g_106, "p_1510->g_106", print_hash_value);
    transparent_crc(p_1510->g_109, "p_1510->g_109", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_1510->g_114[i][j][k], "p_1510->g_114[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1510->g_165, "p_1510->g_165", print_hash_value);
    transparent_crc(p_1510->g_169, "p_1510->g_169", print_hash_value);
    transparent_crc(p_1510->g_179, "p_1510->g_179", print_hash_value);
    transparent_crc(p_1510->g_248, "p_1510->g_248", print_hash_value);
    transparent_crc(p_1510->g_318, "p_1510->g_318", print_hash_value);
    transparent_crc(p_1510->g_319, "p_1510->g_319", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1510->g_608[i], "p_1510->g_608[i]", print_hash_value);

    }
    transparent_crc(p_1510->g_748, "p_1510->g_748", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1510->g_932[i], "p_1510->g_932[i]", print_hash_value);

    }
    transparent_crc(p_1510->g_1014, "p_1510->g_1014", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1510->g_1098[i][j][k], "p_1510->g_1098[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1510->g_1115, "p_1510->g_1115", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_1510->g_1220[i][j][k], "p_1510->g_1220[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1510->g_1244[i][j][k], "p_1510->g_1244[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1510->g_1262, "p_1510->g_1262", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1510->g_1283[i][j][k], "p_1510->g_1283[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1510->g_1501, "p_1510->g_1501", print_hash_value);
    transparent_crc(p_1510->l_comm_values[get_linear_local_id()], "p_1510->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1510->g_comm_values[get_linear_group_id() * 2 + get_linear_local_id()], "p_1510->g_comm_values[get_linear_group_id() * 2 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
