// ---fake_divergence ---inter_thread_comm -g 80,85,1 -l 1,5,1
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
{2,4,3,1,0}, // permutation 0
{3,4,1,2,0}, // permutation 1
{4,3,2,0,1}, // permutation 2
{3,0,2,1,4}, // permutation 3
{1,2,0,3,4}, // permutation 4
{1,3,0,2,4}, // permutation 5
{2,0,1,3,4}, // permutation 6
{2,4,1,3,0}, // permutation 7
{1,0,2,3,4}, // permutation 8
{1,3,2,4,0} // permutation 9
};

// Seed: 23

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   int8_t * f0;
   uint32_t  f1;
   uint32_t  f2;
};

union U1 {
   int8_t * f0;
};

struct S2 {
    int8_t g_26;
    int32_t g_32;
    int8_t * volatile g_34;
    int8_t * volatile *g_33;
    int8_t * volatile ** volatile g_80[7][1];
    int16_t g_82;
    int8_t *g_88;
    int8_t **g_87;
    int8_t ***g_86[10];
    int32_t g_97;
    uint32_t g_108;
    int16_t *g_119;
    int16_t **g_118;
    int32_t *g_150;
    int32_t ** volatile g_153;
    int64_t *g_158;
    int64_t **g_157;
    int64_t *** volatile g_156[5][4];
    uint8_t g_180;
    int32_t g_182;
    volatile int32_t g_184;
    volatile int32_t *g_183;
    volatile int32_t ** volatile g_186;
    int32_t g_231;
    volatile int64_t g_233;
    volatile uint16_t g_236;
    volatile int64_t g_252;
    int16_t g_253;
    int8_t g_254;
    uint64_t g_255;
    volatile union U0 g_275;
    uint32_t g_278;
    uint32_t g_286;
    volatile int32_t ** volatile g_321;
    int32_t ** volatile g_328;
    int32_t g_418[8][7][4];
    int16_t g_420[4];
    volatile int32_t g_421;
    uint8_t g_422;
    int16_t *** volatile g_425;
    int16_t *** volatile g_426;
    volatile uint8_t g_456;
    int32_t g_479;
    uint32_t g_533;
    volatile int32_t g_534[3][1][7];
    volatile int32_t ** volatile g_536;
    volatile int32_t ** volatile g_546;
    int64_t g_557[4][6];
    uint16_t *g_573;
    union U0 g_587;
    union U0 *g_586;
    uint32_t **g_594;
    volatile int8_t g_630;
    uint64_t *g_631;
    int32_t ** volatile g_654;
    union U1 g_679;
    union U1 *g_681;
    union U1 ** volatile g_680;
    volatile int32_t ** volatile g_682;
    uint8_t g_699;
    volatile int32_t g_710;
    int32_t ** volatile g_727;
    uint16_t g_733;
    int32_t ** volatile g_776;
    uint16_t g_799[8][6];
    int32_t *g_837;
    int32_t ** volatile g_836;
    uint32_t g_876;
    volatile int32_t ** volatile g_881;
    uint8_t g_1013[2][6][5];
    uint64_t g_1034;
    int8_t g_1037;
    int64_t g_1038;
    union U1 *g_1063[5];
    union U1 **g_1062;
    int32_t ** volatile g_1067;
    int32_t ** volatile g_1068[7][8][4];
    int16_t g_1154[8];
    int32_t g_1159;
    uint64_t g_1284;
    uint16_t g_1323;
    volatile uint32_t g_1364;
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
uint32_t  func_1(struct S2 * p_1426);
uint8_t  func_4(int8_t * p_5, uint32_t  p_6, uint64_t  p_7, int8_t * p_8, int64_t  p_9, struct S2 * p_1426);
int8_t  func_12(int8_t * p_13, uint16_t  p_14, uint32_t  p_15, int8_t * p_16, uint16_t  p_17, struct S2 * p_1426);
int8_t * func_18(uint8_t  p_19, uint32_t  p_20, int8_t  p_21, int64_t  p_22, int8_t * p_23, struct S2 * p_1426);
uint8_t  func_27(int8_t * p_28, struct S2 * p_1426);
uint16_t  func_36(int8_t  p_37, struct S2 * p_1426);
int32_t * func_38(int8_t * p_39, uint8_t  p_40, struct S2 * p_1426);
int16_t  func_46(int64_t  p_47, struct S2 * p_1426);
int64_t  func_48(int8_t * p_49, union U1  p_50, struct S2 * p_1426);
int8_t * func_51(uint32_t  p_52, int32_t  p_53, int8_t *** p_54, int64_t  p_55, int32_t  p_56, struct S2 * p_1426);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1426->g_33 p_1426->g_32 p_1426->g_34 p_1426->g_26 p_1426->l_comm_values p_1426->g_80 p_1426->g_86 p_1426->g_87 p_1426->g_88 p_1426->g_533 p_1426->g_180 p_1426->g_118 p_1426->g_119 p_1426->g_82 p_1426->g_536 p_1426->g_183 p_1426->g_630 p_1426->g_182 p_1426->g_150 p_1426->g_97 p_1426->g_456 p_1426->g_420 p_1426->g_253 p_1426->g_654 p_1426->g_631 p_1426->g_157 p_1426->g_158 p_1426->g_231 p_1426->g_680 p_1426->g_682 p_1426->g_534 p_1426->g_184 p_1426->g_418 p_1426->g_321 p_1426->g_186 p_1426->g_328 p_1426->g_727 p_1426->g_733 p_1426->g_254 p_1426->g_153 p_1426->g_479 p_1426->g_422 p_1426->g_255 p_1426->g_776 p_1426->g_836 p_1426->g_108 p_1426->g_1013 p_1426->g_799 p_1426->g_1062 p_1426->g_1034 p_1426->g_1037 p_1426->g_837 p_1426->g_586 p_1426->g_546 p_1426->g_233 p_1426->g_1063 p_1426->g_876 p_1426->g_1284 p_1426->g_1323 p_1426->g_681 p_1426->g_679 p_1426->g_594 p_1426->g_278 p_1426->g_1364 p_1426->g_881 p_1426->g_587
 * writes: p_1426->g_32 p_1426->g_33 p_1426->g_82 p_1426->g_533 p_1426->g_180 p_1426->g_183 p_1426->g_631 p_1426->g_97 p_1426->g_255 p_1426->g_26 p_1426->g_150 p_1426->g_286 p_1426->g_681 p_1426->g_479 p_1426->g_699 p_1426->g_184 p_1426->g_254 p_1426->g_88 p_1426->g_733 p_1426->g_534 p_1426->g_253 p_1426->g_837 p_1426->g_108 p_1426->g_182 p_1426->g_1013 p_1426->g_799 p_1426->g_422 p_1426->g_587 p_1426->g_1062 p_1426->g_118 p_1426->g_876 p_1426->g_1284 p_1426->g_420 p_1426->g_1323
 */
uint32_t  func_1(struct S2 * p_1426)
{ /* block id: 4 */
    int8_t *l_25 = &p_1426->g_26;
    int8_t **l_24 = &l_25;
    int8_t *l_29[5] = {&p_1426->g_26,&p_1426->g_26,&p_1426->g_26,&p_1426->g_26,&p_1426->g_26};
    union U1 *l_1061 = &p_1426->g_679;
    union U1 **l_1060 = &l_1061;
    int32_t l_1064 = 7L;
    int16_t l_1424[8] = {(-9L),(-9L),(-9L),(-9L),(-9L),(-9L),(-9L),(-9L)};
    int32_t l_1425 = 1L;
    int i;
    l_1425 |= (((safe_sub_func_uint8_t_u_u(func_4(((+(safe_mod_func_uint8_t_u_u((func_12(func_18((((*l_24) = (void*)0) == &p_1426->g_26), (247UL ^ func_27(l_29[0], p_1426)), ((func_36((*p_1426->g_34), p_1426) > (safe_mul_func_int8_t_s_s((((l_1060 != p_1426->g_1062) & l_1064) >= l_1064), l_1064))) != p_1426->g_418[5][0][3]), p_1426->g_1034, l_29[4], p_1426), l_1064, l_1064, l_29[0], l_1064, p_1426) < l_1064), 9L))) , (*l_24)), l_1064, p_1426->g_1037, l_29[3], p_1426->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1426->tid, 5))], p_1426), 1UL)) > p_1426->g_231) != l_1424[4]);
    (*p_1426->g_837) = l_1425;
    return l_1424[4];
}


/* ------------------------------------------ */
/* 
 * reads : p_1426->g_727 p_1426->g_150 p_1426->g_837 p_1426->g_97 p_1426->g_586 p_1426->g_546 p_1426->g_183 p_1426->g_534 p_1426->g_184 p_1426->g_32 p_1426->g_182 p_1426->g_233 p_1426->g_255 p_1426->g_119 p_1426->g_82 p_1426->g_654 p_1426->g_1062 p_1426->g_1063 p_1426->g_186 p_1426->g_533 p_1426->g_118 p_1426->g_26 p_1426->g_1284 p_1426->g_422 p_1426->g_876 p_1426->g_1323 p_1426->g_33 p_1426->g_34 p_1426->g_681 p_1426->g_679 p_1426->g_594 p_1426->g_1013 p_1426->g_278 p_1426->g_1034 p_1426->g_1364 p_1426->g_456 p_1426->g_881 p_1426->l_comm_values p_1426->g_799 p_1426->g_587 p_1426->g_733 p_1426->g_479
 * writes: p_1426->g_837 p_1426->g_422 p_1426->g_97 p_1426->g_587 p_1426->g_32 p_1426->g_1062 p_1426->g_533 p_1426->g_255 p_1426->g_183 p_1426->g_534 p_1426->g_184 p_1426->g_118 p_1426->g_876 p_1426->g_1284 p_1426->g_1013 p_1426->g_420 p_1426->g_1323 p_1426->g_26 p_1426->g_82 p_1426->g_799
 */
uint8_t  func_4(int8_t * p_5, uint32_t  p_6, uint64_t  p_7, int8_t * p_8, int64_t  p_9, struct S2 * p_1426)
{ /* block id: 621 */
    uint32_t l_1085 = 0x75ACD529L;
    int8_t l_1088 = 0x3EL;
    int32_t l_1103 = 0L;
    int32_t l_1104 = (-1L);
    int32_t l_1105 = 6L;
    int32_t **l_1106 = &p_1426->g_837;
    union U0 l_1119[7] = {{0},{0},{0},{0},{0},{0},{0}};
    int32_t l_1157 = 8L;
    int32_t l_1158 = 1L;
    int32_t l_1161 = 0x6B77C9C1L;
    int32_t l_1162 = 0x0B57C0CAL;
    int32_t l_1164 = (-1L);
    int32_t l_1165 = 0L;
    int32_t l_1166 = (-7L);
    int32_t l_1167 = 8L;
    int32_t l_1168 = 0x5B43B897L;
    int32_t l_1169 = 0x34CFEAD1L;
    int32_t l_1170[4] = {1L,1L,1L,1L};
    union U1 *l_1174 = &p_1426->g_679;
    union U1 **l_1189 = &p_1426->g_681;
    uint8_t l_1192 = 0xDEL;
    int32_t l_1223[9][2][3] = {{{0x6D7EEDA2L,0x6D7EEDA2L,0x6D7EEDA2L},{0x6D7EEDA2L,0x6D7EEDA2L,0x6D7EEDA2L}},{{0x6D7EEDA2L,0x6D7EEDA2L,0x6D7EEDA2L},{0x6D7EEDA2L,0x6D7EEDA2L,0x6D7EEDA2L}},{{0x6D7EEDA2L,0x6D7EEDA2L,0x6D7EEDA2L},{0x6D7EEDA2L,0x6D7EEDA2L,0x6D7EEDA2L}},{{0x6D7EEDA2L,0x6D7EEDA2L,0x6D7EEDA2L},{0x6D7EEDA2L,0x6D7EEDA2L,0x6D7EEDA2L}},{{0x6D7EEDA2L,0x6D7EEDA2L,0x6D7EEDA2L},{0x6D7EEDA2L,0x6D7EEDA2L,0x6D7EEDA2L}},{{0x6D7EEDA2L,0x6D7EEDA2L,0x6D7EEDA2L},{0x6D7EEDA2L,0x6D7EEDA2L,0x6D7EEDA2L}},{{0x6D7EEDA2L,0x6D7EEDA2L,0x6D7EEDA2L},{0x6D7EEDA2L,0x6D7EEDA2L,0x6D7EEDA2L}},{{0x6D7EEDA2L,0x6D7EEDA2L,0x6D7EEDA2L},{0x6D7EEDA2L,0x6D7EEDA2L,0x6D7EEDA2L}},{{0x6D7EEDA2L,0x6D7EEDA2L,0x6D7EEDA2L},{0x6D7EEDA2L,0x6D7EEDA2L,0x6D7EEDA2L}}};
    int16_t **l_1273 = &p_1426->g_119;
    uint32_t *l_1351[10] = {(void*)0,&p_1426->g_278,(void*)0,&p_1426->g_278,(void*)0,(void*)0,&p_1426->g_278,(void*)0,&p_1426->g_278,(void*)0};
    uint64_t **l_1353 = &p_1426->g_631;
    int64_t ***l_1363[8] = {&p_1426->g_157,&p_1426->g_157,&p_1426->g_157,&p_1426->g_157,&p_1426->g_157,&p_1426->g_157,&p_1426->g_157,&p_1426->g_157};
    volatile union U0 *l_1380 = &p_1426->g_275;
    int32_t l_1407 = (-1L);
    uint16_t *l_1410 = &p_1426->g_799[1][4];
    int32_t l_1421 = (-5L);
    int i, j, k;
lbl_1239:
    (*l_1106) = (*p_1426->g_727);
    for (l_1103 = 0; (l_1103 <= 3); l_1103 += 1)
    { /* block id: 629 */
        uint64_t l_1109 = 18446744073709551615UL;
        union U0 l_1117 = {0};
        union U1 **l_1121[2];
        int32_t l_1125 = 0L;
        int32_t l_1126 = (-3L);
        int32_t l_1150 = 0x1AAA497AL;
        uint32_t l_1152 = 0x38359482L;
        int32_t l_1160[6][8] = {{0x1B7134C8L,0x1B7134C8L,0x1B7134C8L,0x1B7134C8L,0x1B7134C8L,0x1B7134C8L,0x1B7134C8L,0x1B7134C8L},{0x1B7134C8L,0x1B7134C8L,0x1B7134C8L,0x1B7134C8L,0x1B7134C8L,0x1B7134C8L,0x1B7134C8L,0x1B7134C8L},{0x1B7134C8L,0x1B7134C8L,0x1B7134C8L,0x1B7134C8L,0x1B7134C8L,0x1B7134C8L,0x1B7134C8L,0x1B7134C8L},{0x1B7134C8L,0x1B7134C8L,0x1B7134C8L,0x1B7134C8L,0x1B7134C8L,0x1B7134C8L,0x1B7134C8L,0x1B7134C8L},{0x1B7134C8L,0x1B7134C8L,0x1B7134C8L,0x1B7134C8L,0x1B7134C8L,0x1B7134C8L,0x1B7134C8L,0x1B7134C8L},{0x1B7134C8L,0x1B7134C8L,0x1B7134C8L,0x1B7134C8L,0x1B7134C8L,0x1B7134C8L,0x1B7134C8L,0x1B7134C8L}};
        int8_t l_1163 = 0x77L;
        int64_t **l_1183 = &p_1426->g_158;
        int16_t **l_1240[5][2] = {{&p_1426->g_119,&p_1426->g_119},{&p_1426->g_119,&p_1426->g_119},{&p_1426->g_119,&p_1426->g_119},{&p_1426->g_119,&p_1426->g_119},{&p_1426->g_119,&p_1426->g_119}};
        int32_t **l_1243[4] = {&p_1426->g_150,&p_1426->g_150,&p_1426->g_150,&p_1426->g_150};
        uint32_t l_1244[8];
        uint32_t l_1308 = 0xD556ABA4L;
        uint32_t *l_1336 = &l_1085;
        uint32_t **l_1335 = &l_1336;
        int8_t l_1400[6][5][3] = {{{4L,0x37L,(-2L)},{4L,0x37L,(-2L)},{4L,0x37L,(-2L)},{4L,0x37L,(-2L)},{4L,0x37L,(-2L)}},{{4L,0x37L,(-2L)},{4L,0x37L,(-2L)},{4L,0x37L,(-2L)},{4L,0x37L,(-2L)},{4L,0x37L,(-2L)}},{{4L,0x37L,(-2L)},{4L,0x37L,(-2L)},{4L,0x37L,(-2L)},{4L,0x37L,(-2L)},{4L,0x37L,(-2L)}},{{4L,0x37L,(-2L)},{4L,0x37L,(-2L)},{4L,0x37L,(-2L)},{4L,0x37L,(-2L)},{4L,0x37L,(-2L)}},{{4L,0x37L,(-2L)},{4L,0x37L,(-2L)},{4L,0x37L,(-2L)},{4L,0x37L,(-2L)},{4L,0x37L,(-2L)}},{{4L,0x37L,(-2L)},{4L,0x37L,(-2L)},{4L,0x37L,(-2L)},{4L,0x37L,(-2L)},{4L,0x37L,(-2L)}}};
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_1121[i] = &p_1426->g_1063[2];
        for (i = 0; i < 8; i++)
            l_1244[i] = 0x836F78E2L;
        for (p_1426->g_422 = 0; (p_1426->g_422 <= 1); p_1426->g_422 += 1)
        { /* block id: 632 */
            int32_t l_1112[7] = {0x0F254D6EL,1L,0x0F254D6EL,0x0F254D6EL,1L,0x0F254D6EL,0x0F254D6EL};
            union U0 *l_1118[6][3] = {{&l_1117,&l_1117,&l_1117},{&l_1117,&l_1117,&l_1117},{&l_1117,&l_1117,&l_1117},{&l_1117,&l_1117,&l_1117},{&l_1117,&l_1117,&l_1117},{&l_1117,&l_1117,&l_1117}};
            int32_t *l_1120 = &p_1426->g_32;
            union U1 ***l_1122[1][4] = {{(void*)0,(void*)0,(void*)0,(void*)0}};
            uint32_t *l_1123 = &p_1426->g_533;
            uint16_t *l_1124[2];
            int32_t l_1155[2][2][2];
            uint64_t *l_1184 = &p_1426->g_255;
            int16_t ***l_1199 = &p_1426->g_118;
            int32_t **l_1242[3];
            int16_t l_1271 = 0L;
            uint8_t l_1314 = 0x47L;
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_1124[i] = &p_1426->g_733;
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 2; j++)
                {
                    for (k = 0; k < 2; k++)
                        l_1155[i][j][k] = 0x2456FB75L;
                }
            }
            for (i = 0; i < 3; i++)
                l_1242[i] = &p_1426->g_837;
            l_1126 ^= (safe_div_func_int32_t_s_s(((**l_1106) &= l_1109), (((safe_div_func_int64_t_s_s(l_1112[2], (~(safe_rshift_func_int8_t_s_s((safe_rshift_func_uint8_t_u_s((((((l_1119[0] = ((*p_1426->g_586) = l_1117)) , (1L | ((*l_1120) = (p_6 & (p_5 == &p_1426->g_422))))) & (((l_1125 |= ((((*l_1123) = ((**p_1426->g_546) > ((p_1426->g_1062 = l_1121[1]) != &p_1426->g_681))) > 0x4F9BDCD6L) == l_1109)) >= 0x38FCL) & 0xED25862BL)) ^ 0x380AL) , 0UL), 0)), l_1109))))) && 255UL) || p_6)));
            for (p_1426->g_97 = 3; (p_1426->g_97 >= 0); p_1426->g_97 -= 1)
            { /* block id: 643 */
                uint16_t **l_1149 = &l_1124[1];
                int32_t l_1151 = 0x3C2F18ADL;
                int32_t *l_1153 = (void*)0;
                int32_t *l_1156[7] = {&p_1426->g_479,&l_1155[0][1][1],&p_1426->g_479,&p_1426->g_479,&l_1155[0][1][1],&p_1426->g_479,&p_1426->g_479};
                uint8_t l_1171[7];
                int i;
                for (i = 0; i < 7; i++)
                    l_1171[i] = 4UL;
                if ((safe_rshift_func_uint16_t_u_u((safe_mul_func_int16_t_s_s(((((safe_mod_func_uint64_t_u_u(((safe_div_func_int64_t_s_s((l_1151 ^= (safe_mul_func_int8_t_s_s((*l_1120), (safe_lshift_func_uint8_t_u_s(((((safe_rshift_func_uint16_t_u_u(p_6, 14)) , l_1126) == (((((*l_1149) = ((!((safe_mod_func_uint16_t_u_u(((p_1426->g_182 || p_7) >= (safe_mod_func_uint8_t_u_u(p_1426->g_233, (safe_mod_func_int32_t_s_s(p_9, (~p_6)))))), l_1125)) && 0L)) , l_1124[0])) != (void*)0) < p_1426->g_255) <= (*p_1426->g_119))) || p_6), l_1150))))), 0xA2E51E1CADD28A28L)) | (**l_1106)), GROUP_DIVERGE(1, 1))) , l_1152) || 0x332BFC23L) == (*l_1120)), l_1126)), p_9)))
                { /* block id: 646 */
                    return p_9;
                }
                else
                { /* block id: 648 */
                    (*l_1120) = (**p_1426->g_654);
                }
                l_1171[3]--;
            }
            if (((l_1174 = l_1174) == (((safe_sub_func_int8_t_s_s((safe_lshift_func_int8_t_s_s((p_9 > ((*l_1184) = ((void*)0 != l_1183))), 6)), ((safe_sub_func_uint64_t_u_u(p_6, p_7)) || 1L))) > ((safe_mod_func_int8_t_s_s((&p_1426->g_681 == l_1189), 0x03L)) > p_7)) , (*p_1426->g_1062))))
            { /* block id: 655 */
                uint16_t l_1220 = 4UL;
                uint8_t *l_1234 = &p_1426->g_699;
                int64_t ***l_1237 = &p_1426->g_157;
                union U1 l_1241 = {0};
                int16_t **l_1247[6][10] = {{&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119},{&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119},{&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119},{&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119},{&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119},{&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119,&p_1426->g_119}};
                uint8_t l_1251 = 5UL;
                int32_t ***l_1256 = &l_1243[2];
                int32_t *l_1269 = &l_1112[6];
                int8_t **l_1278 = (void*)0;
                int32_t l_1302 = 0x74FD1A41L;
                int16_t l_1303 = 0x2C3EL;
                int32_t l_1306 = 0x16FDAF1AL;
                int32_t l_1307[4][8][3] = {{{0x1DAA515EL,0L,0x573FCA66L},{0x1DAA515EL,0L,0x573FCA66L},{0x1DAA515EL,0L,0x573FCA66L},{0x1DAA515EL,0L,0x573FCA66L},{0x1DAA515EL,0L,0x573FCA66L},{0x1DAA515EL,0L,0x573FCA66L},{0x1DAA515EL,0L,0x573FCA66L},{0x1DAA515EL,0L,0x573FCA66L}},{{0x1DAA515EL,0L,0x573FCA66L},{0x1DAA515EL,0L,0x573FCA66L},{0x1DAA515EL,0L,0x573FCA66L},{0x1DAA515EL,0L,0x573FCA66L},{0x1DAA515EL,0L,0x573FCA66L},{0x1DAA515EL,0L,0x573FCA66L},{0x1DAA515EL,0L,0x573FCA66L},{0x1DAA515EL,0L,0x573FCA66L}},{{0x1DAA515EL,0L,0x573FCA66L},{0x1DAA515EL,0L,0x573FCA66L},{0x1DAA515EL,0L,0x573FCA66L},{0x1DAA515EL,0L,0x573FCA66L},{0x1DAA515EL,0L,0x573FCA66L},{0x1DAA515EL,0L,0x573FCA66L},{0x1DAA515EL,0L,0x573FCA66L},{0x1DAA515EL,0L,0x573FCA66L}},{{0x1DAA515EL,0L,0x573FCA66L},{0x1DAA515EL,0L,0x573FCA66L},{0x1DAA515EL,0L,0x573FCA66L},{0x1DAA515EL,0L,0x573FCA66L},{0x1DAA515EL,0L,0x573FCA66L},{0x1DAA515EL,0L,0x573FCA66L},{0x1DAA515EL,0L,0x573FCA66L},{0x1DAA515EL,0L,0x573FCA66L}}};
                uint64_t **l_1332 = &p_1426->g_631;
                int64_t l_1356 = 0x12330D88EFBBFA02L;
                int i, j, k;
                if ((&p_1426->g_799[1][4] == &p_1426->g_236))
                { /* block id: 656 */
                    uint16_t l_1212[7][2] = {{1UL,1UL},{1UL,1UL},{1UL,1UL},{1UL,1UL},{1UL,1UL},{1UL,1UL},{1UL,1UL}};
                    int32_t l_1219 = 0L;
                    volatile int32_t **l_1238 = &p_1426->g_183;
                    int i, j;
                    for (l_1104 = 0; (l_1104 <= 1); l_1104 += 1)
                    { /* block id: 659 */
                        int32_t *l_1190 = &l_1169;
                        int32_t *l_1191[7] = {(void*)0,&l_1105,(void*)0,(void*)0,&l_1105,(void*)0,(void*)0};
                        int32_t ***l_1215 = &l_1106;
                        int i;
                        l_1192--;
                    }
                    (*l_1238) = (*p_1426->g_186);
                    if (p_1426->g_97)
                        goto lbl_1239;
                    (*p_1426->g_183) = (l_1240[2][0] == (((~l_1220) <= (((l_1241 , l_1242[1]) != l_1243[2]) && ((((l_1219 = 0xFC45531CA1102568L) <= l_1244[4]) != (-1L)) <= (safe_mul_func_int16_t_s_s((0x221BL != p_9), 0xC684L))))) , l_1247[5][7]));
                }
                else
                { /* block id: 673 */
                    uint8_t l_1248 = 4UL;
                    int32_t l_1270 = 0x2097A0FAL;
                    int32_t *l_1272 = &p_1426->g_32;
                    (*l_1120) ^= ((GROUP_DIVERGE(0, 1) , (+(((l_1248 | p_6) & (safe_div_func_uint16_t_u_u((~(((*l_1184) = ((l_1251 >= (safe_add_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_s(((FAKE_DIVERGE(p_1426->local_0_offset, get_local_id(0), 10) , (4294967288UL | ((void*)0 == l_1256))) <= ((safe_mul_func_int8_t_s_s((((safe_mul_func_uint8_t_u_u((safe_div_func_uint64_t_u_u((safe_mul_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s((l_1270 = (((safe_sub_func_uint64_t_u_u(((((&p_1426->g_182 == l_1269) <= p_6) == l_1248) > 6L), p_6)) & (-6L)) == 7UL)), 1)), (**l_1106))), p_1426->g_533)), (-6L))) | p_6) && (**p_1426->g_118)), 0x48L)) || p_7)), l_1248)), l_1271))) <= p_6)) | (-8L))), (***l_1256)))) , p_9))) , 0x240FD459L);
                    if (p_7)
                        continue;
                    l_1272 = (*l_1106);
                }
                (*l_1199) = l_1273;
                for (p_1426->g_876 = 0; (p_1426->g_876 <= 3); p_1426->g_876 += 1)
                { /* block id: 683 */
                    int32_t l_1300 = 0x3E47D8FCL;
                    int32_t l_1301 = (-1L);
                    int32_t l_1304 = 0L;
                    int32_t l_1305[6][3][4] = {{{0x7C7D5B4AL,(-1L),(-1L),0L},{0x7C7D5B4AL,(-1L),(-1L),0L},{0x7C7D5B4AL,(-1L),(-1L),0L}},{{0x7C7D5B4AL,(-1L),(-1L),0L},{0x7C7D5B4AL,(-1L),(-1L),0L},{0x7C7D5B4AL,(-1L),(-1L),0L}},{{0x7C7D5B4AL,(-1L),(-1L),0L},{0x7C7D5B4AL,(-1L),(-1L),0L},{0x7C7D5B4AL,(-1L),(-1L),0L}},{{0x7C7D5B4AL,(-1L),(-1L),0L},{0x7C7D5B4AL,(-1L),(-1L),0L},{0x7C7D5B4AL,(-1L),(-1L),0L}},{{0x7C7D5B4AL,(-1L),(-1L),0L},{0x7C7D5B4AL,(-1L),(-1L),0L},{0x7C7D5B4AL,(-1L),(-1L),0L}},{{0x7C7D5B4AL,(-1L),(-1L),0L},{0x7C7D5B4AL,(-1L),(-1L),0L},{0x7C7D5B4AL,(-1L),(-1L),0L}}};
                    int i, j, k;
                    if ((safe_div_func_uint8_t_u_u(l_1244[(l_1103 + 2)], (safe_mul_func_int8_t_s_s((*p_8), ((&p_5 == (l_1278 = (void*)0)) > 0x097BL))))))
                    { /* block id: 685 */
                        int i, j, k;
                        (**l_1106) |= (*p_1426->g_183);
                    }
                    else
                    { /* block id: 687 */
                        uint64_t *l_1283[10][5] = {{&p_1426->g_1284,&p_1426->g_1284,&p_1426->g_1284,&p_1426->g_1284,&p_1426->g_1284},{&p_1426->g_1284,&p_1426->g_1284,&p_1426->g_1284,&p_1426->g_1284,&p_1426->g_1284},{&p_1426->g_1284,&p_1426->g_1284,&p_1426->g_1284,&p_1426->g_1284,&p_1426->g_1284},{&p_1426->g_1284,&p_1426->g_1284,&p_1426->g_1284,&p_1426->g_1284,&p_1426->g_1284},{&p_1426->g_1284,&p_1426->g_1284,&p_1426->g_1284,&p_1426->g_1284,&p_1426->g_1284},{&p_1426->g_1284,&p_1426->g_1284,&p_1426->g_1284,&p_1426->g_1284,&p_1426->g_1284},{&p_1426->g_1284,&p_1426->g_1284,&p_1426->g_1284,&p_1426->g_1284,&p_1426->g_1284},{&p_1426->g_1284,&p_1426->g_1284,&p_1426->g_1284,&p_1426->g_1284,&p_1426->g_1284},{&p_1426->g_1284,&p_1426->g_1284,&p_1426->g_1284,&p_1426->g_1284,&p_1426->g_1284},{&p_1426->g_1284,&p_1426->g_1284,&p_1426->g_1284,&p_1426->g_1284,&p_1426->g_1284}};
                        int32_t l_1299 = 0x1667C35AL;
                        int i, j, k;
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        p_1426->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 5)), permutations[(safe_mod_func_uint32_t_u_u((((*l_1120) = ((*p_1426->g_150) = (1UL >= ((safe_add_func_uint64_t_u_u((safe_div_func_uint64_t_u_u(((*l_1184) = ((--p_1426->g_1284) , (l_1244[(l_1103 + 2)] || (p_6 >= (safe_sub_func_int16_t_s_s(((safe_rshift_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(((((void*)0 != &p_1426->g_681) , ((void*)0 == &p_1426->g_182)) , (safe_mod_func_int64_t_s_s((((p_1426->g_1013[p_1426->g_422][(p_1426->g_876 + 1)][(p_1426->g_876 + 1)] = 0xBCL) > (safe_rshift_func_uint16_t_u_s((((safe_lshift_func_int8_t_s_s(l_1244[(l_1103 + 2)], 5)) , 0x0CE5L) >= p_7), l_1299))) == p_7), l_1244[(l_1103 + 2)]))), FAKE_DIVERGE(p_1426->global_2_offset, get_global_id(2), 10))), (**l_1106))) ^ p_1426->g_876), 0x305AL)))))), 0x48619ED05264DDB7L)), (***l_1256))) >= GROUP_DIVERGE(0, 1))))) < p_7), 10))][(safe_mod_func_uint32_t_u_u(p_1426->tid, 5))]));
                        if ((**l_1106))
                            break;
                        if (p_7)
                            continue;
                        (*p_1426->g_837) &= 0x1C91A037L;
                    }
                    l_1308++;
                }
                for (l_1104 = 3; (l_1104 >= 0); l_1104 -= 1)
                { /* block id: 704 */
                    uint32_t l_1311[9][10][2] = {{{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L}},{{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L}},{{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L}},{{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L}},{{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L}},{{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L}},{{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L}},{{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L}},{{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L},{1UL,0x8D5385D9L}}};
                    uint64_t **l_1333 = &l_1184;
                    uint64_t **l_1352 = (void*)0;
                    int32_t l_1355 = (-1L);
                    int i, j, k;
                    for (l_1158 = 1; (l_1158 >= 0); l_1158 -= 1)
                    { /* block id: 707 */
                        l_1311[5][2][0]++;
                        if (l_1314)
                            break;
                        if (l_1220)
                            goto lbl_1239;
                        if (p_9)
                            continue;
                    }
                    (*l_1106) = (*l_1106);
                    if ((safe_mul_func_int16_t_s_s((safe_div_func_int16_t_s_s((safe_mod_func_int64_t_s_s(0x05A6BE7EC11D0335L, ((*l_1184) = p_9))), (safe_rshift_func_int16_t_s_u(0x24F8L, (p_1426->g_1323 &= ((***l_1256) = (0x2A33L || (FAKE_DIVERGE(p_1426->local_0_offset, get_local_id(0), 10) , (p_1426->g_420[l_1103] = 0x76CCL))))))))), p_6)))
                    { /* block id: 718 */
                        int64_t l_1334 = 0x6A98B0157806BBC3L;
                        int32_t l_1354 = 0x63BC10D4L;
                        int i, j, k;
                        l_1355 |= (((safe_rshift_func_int8_t_s_u(((**l_1106) = ((**p_1426->g_33) = 0x67L)), ((safe_mul_func_uint16_t_u_u(((safe_add_func_uint8_t_u_u((safe_rshift_func_int16_t_s_u(((*p_1426->g_681) , (((((l_1333 = l_1332) == (l_1353 = (((l_1334 = (*l_1120)) < ((l_1335 != p_1426->g_594) || (safe_lshift_func_int16_t_s_u((safe_add_func_uint64_t_u_u(((safe_mul_func_uint8_t_u_u(p_1426->g_533, (safe_div_func_uint32_t_u_u((p_1426->g_587.f2 = (safe_sub_func_int32_t_s_s((safe_div_func_uint8_t_u_u((++p_1426->g_1013[p_1426->g_422][(l_1103 + 2)][(p_1426->g_422 + 2)]), ((&p_1426->g_587 != ((l_1351[5] != (void*)0) , (void*)0)) || 0L))), p_9))), 0x3BF2280EL)))) || p_9), p_1426->g_278)), FAKE_DIVERGE(p_1426->group_2_offset, get_group_id(2), 10))))) , l_1352))) == p_9) >= p_1426->g_1034) == 0xAE44F6DC879CD588L)), 11)), l_1354)) , GROUP_DIVERGE(1, 1)), 0x44DAL)) < 5L))) < p_9) ^ p_1426->g_182);
                    }
                    else
                    { /* block id: 727 */
                        return p_1426->g_26;
                    }
                    for (l_1314 = 0; (l_1314 <= 0); l_1314 += 1)
                    { /* block id: 732 */
                        int64_t *l_1361 = (void*)0;
                        int i, j, k;
                        l_1356 = p_1426->g_1013[p_1426->g_422][(l_1104 + 2)][l_1104];
                        (***l_1256) ^= 0x55D3972EL;
                        (*p_1426->g_183) ^= ((l_1311[1][4][1] == l_1311[5][2][0]) & (((((safe_sub_func_int16_t_s_s((0L <= 0xA206L), (***l_1256))) <= ((l_1240[0][0] != ((*l_1199) = l_1273)) >= ((void*)0 != l_1361))) & GROUP_DIVERGE(0, 1)) , 4294967291UL) >= GROUP_DIVERGE(2, 1)));
                    }
                }
            }
            else
            { /* block id: 739 */
                uint8_t l_1377 = 248UL;
                for (p_1426->g_97 = 0; (p_1426->g_97 <= 1); p_1426->g_97 += 1)
                { /* block id: 742 */
                    int32_t l_1378[8] = {0x1B0EEF81L,0x6F3B1ADEL,0x1B0EEF81L,0x1B0EEF81L,0x6F3B1ADEL,0x1B0EEF81L,0x1B0EEF81L,0x6F3B1ADEL};
                    union U1 *l_1379 = &p_1426->g_679;
                    int i, j, k;
                    l_1170[(p_1426->g_97 + 1)] &= (l_1223[(p_1426->g_97 + 7)][p_1426->g_422][p_1426->g_422] , (((safe_unary_minus_func_int16_t_s(((void*)0 != l_1363[5]))) >= l_1223[(l_1103 + 5)][p_1426->g_422][p_1426->g_422]) || p_1426->g_1364));
                    for (p_1426->g_1323 = 0; (p_1426->g_1323 <= 1); p_1426->g_1323 += 1)
                    { /* block id: 746 */
                        int i, j, k;
                        l_1378[1] |= (safe_div_func_uint8_t_u_u(((p_9 >= ((((p_1426->g_456 , p_7) , (!4294967295UL)) , ((safe_rshift_func_uint16_t_u_u(0x76F7L, 4)) ^ ((l_1223[(p_1426->g_422 + 5)][p_1426->g_97][p_1426->g_97] = (safe_mod_func_uint32_t_u_u(p_9, (safe_rshift_func_uint16_t_u_u(((!(1UL & ((*l_1120) = (safe_div_func_uint64_t_u_u(((l_1170[(p_1426->g_1323 + 2)] |= (-5L)) ^ l_1223[(l_1103 + 5)][p_1426->g_422][p_1426->g_422]), p_6))))) , l_1377), 0))))) > p_6))) < p_6)) != 0xBE11913603349984L), p_6));
                        l_1379 = (*p_1426->g_1062);
                        if (p_7)
                            break;
                        if ((**p_1426->g_186))
                            break;
                    }
                    return (*l_1120);
                }
            }
            (*p_1426->g_183) = (((*l_1184) = GROUP_DIVERGE(0, 1)) == p_6);
        }
        l_1380 = &p_1426->g_275;
        if ((**p_1426->g_881))
            continue;
        for (l_1157 = 0; (l_1157 <= 1); l_1157 += 1)
        { /* block id: 765 */
            uint32_t l_1383 = 0UL;
            int i;
            (*p_1426->g_837) = 0x267F26E8L;
            (**l_1106) = (safe_mul_func_uint16_t_u_u(p_6, (l_1383 | (p_6 , ((**l_1273) = (((safe_sub_func_uint32_t_u_u((0x12B80400L > (safe_add_func_uint64_t_u_u((safe_lshift_func_uint16_t_u_s((safe_sub_func_uint8_t_u_u(((safe_rshift_func_uint16_t_u_s((**l_1106), 14)) >= 255UL), GROUP_DIVERGE(1, 1))), (safe_sub_func_int64_t_s_s((safe_mod_func_uint16_t_u_u((p_9 <= ((safe_mul_func_int8_t_s_s((-5L), l_1383)) != 0x1F167A29L)), p_6)), p_6)))), (**l_1106)))), 0x1B8896C4L)) >= p_9) & FAKE_DIVERGE(p_1426->group_0_offset, get_group_id(0), 10)))))));
            return l_1400[2][2][0];
        }
    }
    (*l_1106) = ((safe_add_func_uint32_t_u_u(p_1426->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1426->tid, 5))], (((((((void*)0 != &p_1426->g_87) , p_7) | (safe_mul_func_int8_t_s_s(0x5AL, (**l_1106)))) , (safe_rshift_func_int16_t_s_u((l_1407 > (safe_mul_func_uint16_t_u_u(((*l_1410)++), ((+((**l_1106) < (!(((*p_1426->g_586) , (-9L)) && FAKE_DIVERGE(p_1426->group_1_offset, get_group_id(1), 10))))) <= p_9)))), p_7))) >= p_1426->g_1013[1][3][1]) ^ p_7))) , (*l_1106));
    (*p_1426->g_183) = ((**l_1106) = (safe_sub_func_uint8_t_u_u((((l_1421 ^= ((safe_lshift_func_uint16_t_u_u((**l_1106), GROUP_DIVERGE(0, 1))) == (l_1166 &= (p_1426->g_733 , (safe_sub_func_int8_t_s_s(0x6FL, ((&l_1119[0] != (void*)0) || (safe_mul_func_int16_t_s_s(0x6F1AL, p_7))))))))) , GROUP_DIVERGE(1, 1)) && (safe_mul_func_uint16_t_u_u(((**l_1106) && 0x2954DB4A5CBB6CCEL), (**l_1106)))), 0x0AL)));
    return p_1426->g_479;
}


/* ------------------------------------------ */
/* 
 * reads : p_1426->g_26
 * writes:
 */
int8_t  func_12(int8_t * p_13, uint16_t  p_14, uint32_t  p_15, int8_t * p_16, uint16_t  p_17, struct S2 * p_1426)
{ /* block id: 618 */
    int32_t *l_1066 = (void*)0;
    l_1066 = l_1066;
    return (*p_13);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t * func_18(uint8_t  p_19, uint32_t  p_20, int8_t  p_21, int64_t  p_22, int8_t * p_23, struct S2 * p_1426)
{ /* block id: 616 */
    int8_t *l_1065 = &p_1426->g_26;
    return l_1065;
}


/* ------------------------------------------ */
/* 
 * reads : p_1426->g_33 p_1426->g_32
 * writes: p_1426->g_32 p_1426->g_33
 */
uint8_t  func_27(int8_t * p_28, struct S2 * p_1426)
{ /* block id: 6 */
    int8_t l_30 = 0x1CL;
    int32_t *l_31 = &p_1426->g_32;
    int8_t * volatile **l_35 = &p_1426->g_33;
    (*l_31) = l_30;
    (*l_35) = p_1426->g_33;
    return (*l_31);
}


/* ------------------------------------------ */
/* 
 * reads : p_1426->g_26 p_1426->l_comm_values p_1426->g_80 p_1426->g_86 p_1426->g_87 p_1426->g_88 p_1426->g_533 p_1426->g_180 p_1426->g_118 p_1426->g_119 p_1426->g_82 p_1426->g_536 p_1426->g_183 p_1426->g_630 p_1426->g_182 p_1426->g_150 p_1426->g_97 p_1426->g_456 p_1426->g_420 p_1426->g_253 p_1426->g_654 p_1426->g_631 p_1426->g_157 p_1426->g_158 p_1426->g_231 p_1426->g_680 p_1426->g_682 p_1426->g_534 p_1426->g_184 p_1426->g_418 p_1426->g_321 p_1426->g_186 p_1426->g_328 p_1426->g_727 p_1426->g_733 p_1426->g_254 p_1426->g_153 p_1426->g_479 p_1426->g_422 p_1426->g_255 p_1426->g_776 p_1426->g_836 p_1426->g_108 p_1426->g_1013 p_1426->g_799
 * writes: p_1426->g_82 p_1426->g_533 p_1426->g_180 p_1426->g_183 p_1426->g_631 p_1426->g_97 p_1426->g_255 p_1426->g_26 p_1426->g_150 p_1426->g_286 p_1426->g_681 p_1426->g_479 p_1426->g_699 p_1426->g_184 p_1426->g_254 p_1426->g_88 p_1426->g_733 p_1426->g_534 p_1426->g_253 p_1426->g_837 p_1426->g_108 p_1426->g_182 p_1426->g_1013 p_1426->g_799
 */
uint16_t  func_36(int8_t  p_37, struct S2 * p_1426)
{ /* block id: 10 */
    int8_t *l_41 = &p_1426->g_26;
    uint32_t l_42 = 0xE1BFEDAAL;
    int32_t **l_835 = &p_1426->g_150;
    int32_t l_864 = 0x4387572FL;
    int32_t l_875 = 1L;
    int16_t ***l_902[7];
    int32_t l_942[3];
    int8_t ***l_968 = &p_1426->g_87;
    int32_t **l_1044 = &p_1426->g_837;
    int i;
    for (i = 0; i < 7; i++)
        l_902[i] = (void*)0;
    for (i = 0; i < 3; i++)
        l_942[i] = 7L;
    (*p_1426->g_836) = ((*l_835) = func_38(l_41, l_42, p_1426));
    for (p_1426->g_180 = 20; (p_1426->g_180 <= 20); p_1426->g_180 = safe_add_func_int8_t_s_s(p_1426->g_180, 3))
    { /* block id: 501 */
        int32_t **l_855 = &p_1426->g_837;
        int32_t l_861 = 0x3EF205D4L;
        int32_t l_873 = 0x2A14FAD6L;
        int32_t l_874 = 1L;
        int32_t l_905 = 0x4CBD0545L;
        int16_t *l_956 = (void*)0;
        int32_t l_969 = (-7L);
        int32_t l_1003 = (-1L);
        int32_t l_1005 = (-1L);
        int32_t l_1007[4] = {0x5BDC5A8EL,0x5BDC5A8EL,0x5BDC5A8EL,0x5BDC5A8EL};
        int64_t l_1011[1][6][3] = {{{1L,0x59C31FBA936D655DL,(-1L)},{1L,0x59C31FBA936D655DL,(-1L)},{1L,0x59C31FBA936D655DL,(-1L)},{1L,0x59C31FBA936D655DL,(-1L)},{1L,0x59C31FBA936D655DL,(-1L)},{1L,0x59C31FBA936D655DL,(-1L)}}};
        int i, j, k;
        (1 + 1);
    }
    for (p_1426->g_255 = 0; (p_1426->g_255 <= 9); p_1426->g_255 += 1)
    { /* block id: 576 */
        int32_t *l_1039 = (void*)0;
        for (p_1426->g_108 = 0; (p_1426->g_108 <= 3); p_1426->g_108 += 1)
        { /* block id: 579 */
            int32_t *l_1056 = &l_864;
            uint16_t *l_1057 = &p_1426->g_799[1][4];
            for (p_1426->g_82 = 9; (p_1426->g_82 >= 0); p_1426->g_82 -= 1)
            { /* block id: 582 */
                uint8_t l_1035[2][9] = {{0xBDL,9UL,0x4BL,9UL,0xBDL,0xBDL,9UL,0x4BL,9UL},{0xBDL,9UL,0x4BL,9UL,0xBDL,0xBDL,9UL,0x4BL,9UL}};
                int i, j;
                for (p_1426->g_254 = 0; (p_1426->g_254 <= 3); p_1426->g_254 += 1)
                { /* block id: 585 */
                    int64_t **l_1030 = &p_1426->g_158;
                    int32_t **l_1041 = &l_1039;
                    for (p_1426->g_180 = 0; (p_1426->g_180 <= 3); p_1426->g_180 += 1)
                    { /* block id: 588 */
                        uint64_t *l_1033 = &p_1426->g_1034;
                        int8_t *l_1036 = &p_1426->g_1037;
                        int32_t l_1040 = 0x5B4066E7L;
                        int i;
                        (1 + 1);
                    }
                    for (p_1426->g_182 = 3; (p_1426->g_182 >= 0); p_1426->g_182 -= 1)
                    { /* block id: 600 */
                        int32_t ***l_1042 = (void*)0;
                        int32_t ***l_1043[8] = {&l_835,&l_835,&l_835,&l_835,&l_835,&l_835,&l_835,&l_835};
                        uint8_t *l_1047 = &p_1426->g_1013[1][2][3];
                        int i;
                        l_1044 = l_1041;
                        (**l_835) = ((0x54CAL | (l_41 != &p_1426->g_1013[0][2][3])) | (((safe_mul_func_uint8_t_u_u(((*l_1047) = 248UL), (safe_div_func_uint16_t_u_u((safe_rshift_func_int8_t_s_u(p_37, 3)), p_37)))) , (0L && FAKE_DIVERGE(p_1426->global_0_offset, get_global_id(0), 10))) && (~(safe_div_func_uint8_t_u_u(((*p_1426->g_119) >= (safe_lshift_func_uint16_t_u_u(((((+9L) >= p_1426->g_1013[0][2][0]) < p_37) != 0x44L), p_37))), 1UL)))));
                    }
                    return p_37;
                }
            }
            (*l_1044) = (l_1056 = (*p_1426->g_654));
            (*p_1426->g_183) ^= ((p_1426->g_418[0][5][1] != ((p_37 > (*l_1056)) < ((*l_1057) &= FAKE_DIVERGE(p_1426->group_0_offset, get_group_id(0), 10)))) >= p_37);
            if (p_37)
                break;
        }
    }
    return p_1426->g_108;
}


/* ------------------------------------------ */
/* 
 * reads : p_1426->g_26 p_1426->l_comm_values p_1426->g_80 p_1426->g_86 p_1426->g_87 p_1426->g_88 p_1426->g_533 p_1426->g_180 p_1426->g_118 p_1426->g_119 p_1426->g_82 p_1426->g_536 p_1426->g_183 p_1426->g_630 p_1426->g_182 p_1426->g_150 p_1426->g_97 p_1426->g_456 p_1426->g_420 p_1426->g_253 p_1426->g_654 p_1426->g_631 p_1426->g_157 p_1426->g_158 p_1426->g_231 p_1426->g_680 p_1426->g_682 p_1426->g_534 p_1426->g_184 p_1426->g_418 p_1426->g_321 p_1426->g_186 p_1426->g_328 p_1426->g_727 p_1426->g_733 p_1426->g_254 p_1426->g_153 p_1426->g_479 p_1426->g_422 p_1426->g_255 p_1426->g_776
 * writes: p_1426->g_82 p_1426->g_533 p_1426->g_180 p_1426->g_183 p_1426->g_631 p_1426->g_97 p_1426->g_255 p_1426->g_26 p_1426->g_150 p_1426->g_286 p_1426->g_681 p_1426->g_479 p_1426->g_699 p_1426->g_184 p_1426->g_254 p_1426->g_88 p_1426->g_733 p_1426->g_534 p_1426->g_253
 */
int32_t * func_38(int8_t * p_39, uint8_t  p_40, struct S2 * p_1426)
{ /* block id: 11 */
    int32_t l_45 = (-1L);
    int8_t *l_79[1];
    int8_t **l_78 = &l_79[0];
    int8_t ***l_77 = &l_78;
    int16_t *l_81 = &p_1426->g_82;
    int64_t *l_83 = (void*)0;
    int64_t *l_84 = (void*)0;
    int32_t l_85 = 2L;
    union U1 l_609 = {0};
    int32_t *l_774 = &p_1426->g_97;
    uint64_t l_830 = 0xE8CEE7667F308B9FL;
    int32_t *l_834 = &p_1426->g_97;
    int i;
    for (i = 0; i < 1; i++)
        l_79[i] = &p_1426->g_26;
    if (((p_1426->g_26 && (safe_mul_func_int16_t_s_s(l_45, func_46(func_48(func_51((safe_lshift_func_uint8_t_u_s((safe_rshift_func_uint8_t_u_s((l_45 <= (((safe_div_func_int16_t_s_s((p_1426->g_26 , (~(safe_add_func_int64_t_s_s((l_85 = (safe_sub_func_uint64_t_u_u(((((*l_81) = (((((l_45 , ((safe_div_func_int16_t_s_s(((safe_mul_func_int16_t_s_s(((((void*)0 == p_39) > (((safe_add_func_uint64_t_u_u((safe_sub_func_uint64_t_u_u(((safe_sub_func_uint16_t_u_u(0x1CFEL, (0x3FL == (-10L)))) , l_45), GROUP_DIVERGE(1, 1))), l_45)) <= 0x3EL) < p_1426->g_26)) ^ p_40), p_40)) >= l_45), p_1426->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1426->tid, 5))])) > 0x19C2L)) , (void*)0) == l_77) , p_1426->g_80[6][0]) != &l_78)) , l_45) & p_40), 6L))), p_40)))), l_45)) , p_40) <= l_45)), 1)), 6)), l_45, p_1426->g_86[5], l_45, l_45, p_1426), l_609, p_1426), p_1426)))) || l_85))
    { /* block id: 455 */
        int16_t l_769[6][8] = {{0x18BBL,0x686EL,0L,0x686EL,0x18BBL,0x18BBL,0x686EL,0L},{0x18BBL,0x686EL,0L,0x686EL,0x18BBL,0x18BBL,0x686EL,0L},{0x18BBL,0x686EL,0L,0x686EL,0x18BBL,0x18BBL,0x686EL,0L},{0x18BBL,0x686EL,0L,0x686EL,0x18BBL,0x18BBL,0x686EL,0L},{0x18BBL,0x686EL,0L,0x686EL,0x18BBL,0x18BBL,0x686EL,0L},{0x18BBL,0x686EL,0L,0x686EL,0x18BBL,0x18BBL,0x686EL,0L}};
        int32_t *l_770 = &l_85;
        uint16_t *l_773 = &p_1426->g_733;
        int i, j;
        (*p_1426->g_183) = (0x564C838D1AB620A5L > (((p_40 >= (safe_add_func_int64_t_s_s(((p_1426->g_630 , ((*l_770) = ((FAKE_DIVERGE(p_1426->local_2_offset, get_local_id(2), 10) == 0xC1E05036E2BD593BL) || l_769[1][1]))) == (safe_mod_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), ((*l_773) = p_40)))), l_45))) < (1UL || (((((((p_1426->g_422 < p_1426->g_418[1][1][3]) && l_45) >= p_40) , FAKE_DIVERGE(p_1426->group_2_offset, get_group_id(2), 10)) < p_1426->g_533) == 0xBB43C01DL) , p_1426->g_255))) , l_45));
        return l_774;
    }
    else
    { /* block id: 460 */
        int32_t *l_775[1][1][1];
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 1; j++)
            {
                for (k = 0; k < 1; k++)
                    l_775[i][j][k] = &p_1426->g_97;
            }
        }
        (*p_1426->g_776) = l_775[0][0][0];
lbl_783:
        (*l_774) = (safe_mod_func_uint32_t_u_u(p_40, (safe_mod_func_int8_t_s_s((*p_39), (safe_lshift_func_int8_t_s_u((*p_39), 2))))));
        (*p_1426->g_150) = (*l_774);
        for (p_1426->g_253 = 7; (p_1426->g_253 >= 0); p_1426->g_253 -= 1)
        { /* block id: 466 */
            uint32_t l_784 = 4294967287UL;
            int32_t l_787 = 0x04B8F678L;
            int32_t l_824 = 0x7262C491L;
            if (p_1426->g_253)
                goto lbl_783;
            for (p_1426->g_255 = 1; (p_1426->g_255 <= 9); p_1426->g_255 += 1)
            { /* block id: 470 */
                uint32_t l_788 = 4294967292UL;
                int8_t *l_823 = &p_1426->g_254;
                int16_t l_825 = 0L;
                int32_t l_828[1];
                int i;
                for (i = 0; i < 1; i++)
                    l_828[i] = 0x4873DAD7L;
                l_784++;
                if (l_784)
                    continue;
                l_788--;
                if (p_40)
                    continue;
                for (p_1426->g_733 = 0; (p_1426->g_733 <= 9); p_1426->g_733 += 1)
                { /* block id: 477 */
                    int32_t l_826[6][1] = {{0L},{0L},{0L},{0L},{0L},{0L}};
                    int32_t l_827 = 0x3B58354AL;
                    volatile int32_t **l_833 = &p_1426->g_183;
                    int i, j;
                    (1 + 1);
                }
            }
        }
    }
    return l_834;
}


/* ------------------------------------------ */
/* 
 * reads : p_1426->g_630 p_1426->g_182 p_1426->g_82 p_1426->g_180 p_1426->g_150 p_1426->g_97 p_1426->g_456 p_1426->g_420 p_1426->g_253 p_1426->g_26 p_1426->g_654 p_1426->g_631 p_1426->g_157 p_1426->g_158 p_1426->g_231 p_1426->g_680 p_1426->g_682 p_1426->g_183 p_1426->g_534 p_1426->g_184 p_1426->g_418 p_1426->g_321 p_1426->g_186 p_1426->g_328 p_1426->g_727 p_1426->g_733 p_1426->g_118 p_1426->g_119 p_1426->g_87 p_1426->g_254 p_1426->g_88 p_1426->g_153 p_1426->g_479 p_1426->g_533
 * writes: p_1426->g_631 p_1426->g_97 p_1426->g_255 p_1426->g_26 p_1426->g_150 p_1426->g_286 p_1426->g_681 p_1426->g_479 p_1426->g_183 p_1426->g_699 p_1426->g_184 p_1426->g_254 p_1426->g_82 p_1426->g_88 p_1426->g_533
 */
int16_t  func_46(int64_t  p_47, struct S2 * p_1426)
{ /* block id: 365 */
    uint64_t l_621[5][1] = {{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL},{18446744073709551614UL}};
    uint32_t *l_644[1][9][4] = {{{&p_1426->g_533,&p_1426->g_286,&p_1426->g_533,&p_1426->g_533},{&p_1426->g_533,&p_1426->g_286,&p_1426->g_533,&p_1426->g_533},{&p_1426->g_533,&p_1426->g_286,&p_1426->g_533,&p_1426->g_533},{&p_1426->g_533,&p_1426->g_286,&p_1426->g_533,&p_1426->g_533},{&p_1426->g_533,&p_1426->g_286,&p_1426->g_533,&p_1426->g_533},{&p_1426->g_533,&p_1426->g_286,&p_1426->g_533,&p_1426->g_533},{&p_1426->g_533,&p_1426->g_286,&p_1426->g_533,&p_1426->g_533},{&p_1426->g_533,&p_1426->g_286,&p_1426->g_533,&p_1426->g_533},{&p_1426->g_533,&p_1426->g_286,&p_1426->g_533,&p_1426->g_533}}};
    int32_t l_645 = 8L;
    int64_t *l_648[10] = {&p_1426->g_557[1][5],&p_1426->g_557[1][5],&p_1426->g_557[1][5],&p_1426->g_557[1][5],&p_1426->g_557[1][5],&p_1426->g_557[1][5],&p_1426->g_557[1][5],&p_1426->g_557[1][5],&p_1426->g_557[1][5],&p_1426->g_557[1][5]};
    int32_t l_649 = 0x6FA47D08L;
    uint64_t *l_650 = &p_1426->g_255;
    int8_t l_677 = 0x02L;
    int32_t l_709 = 0x03667433L;
    int32_t l_711 = 0L;
    int32_t l_712 = 0x24C052D2L;
    int32_t l_713 = 0x1166A396L;
    int32_t l_714 = 0x3DB31B19L;
    int32_t l_715 = 1L;
    int32_t l_716 = (-5L);
    int32_t l_717[5];
    int8_t l_718 = 7L;
    int16_t l_720 = 1L;
    uint32_t l_721[5][8] = {{4294967295UL,0x0CC581E5L,4294967295UL,4294967295UL,0x0CC581E5L,4294967295UL,4294967295UL,0x0CC581E5L},{4294967295UL,0x0CC581E5L,4294967295UL,4294967295UL,0x0CC581E5L,4294967295UL,4294967295UL,0x0CC581E5L},{4294967295UL,0x0CC581E5L,4294967295UL,4294967295UL,0x0CC581E5L,4294967295UL,4294967295UL,0x0CC581E5L},{4294967295UL,0x0CC581E5L,4294967295UL,4294967295UL,0x0CC581E5L,4294967295UL,4294967295UL,0x0CC581E5L},{4294967295UL,0x0CC581E5L,4294967295UL,4294967295UL,0x0CC581E5L,4294967295UL,4294967295UL,0x0CC581E5L}};
    int8_t ***l_751 = &p_1426->g_87;
    int32_t *l_766 = &l_711;
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_717[i] = 0x180D7C7DL;
    (*p_1426->g_150) ^= (l_621[1][0] , (safe_mul_func_int8_t_s_s((safe_lshift_func_uint16_t_u_u((((0x2CL >= (p_47 & (((((safe_mod_func_int16_t_s_s((safe_lshift_func_int16_t_s_s(p_1426->g_630, (&l_621[4][0] == ((0x493A5247L || p_1426->g_182) , (p_1426->g_631 = &l_621[1][0]))))), ((safe_div_func_uint64_t_u_u(p_1426->g_82, p_1426->g_180)) , 0x3215L))) > 0x0032F84F184A2AE7L) | p_47) , 1L) & FAKE_DIVERGE(p_1426->global_2_offset, get_global_id(2), 10)))) && 0x15L) > l_621[1][0]), GROUP_DIVERGE(0, 1))), l_621[4][0])));
    if ((safe_lshift_func_uint16_t_u_s((((safe_add_func_uint32_t_u_u((safe_mul_func_int16_t_s_s((-7L), p_47)), 0x582D7E23L)) & (safe_div_func_int32_t_s_s((((l_645 = (safe_div_func_uint16_t_u_u(1UL, 65535UL))) & (p_1426->g_456 || l_621[1][0])) ^ ((p_47 , (((*l_650) = (safe_add_func_int64_t_s_s((l_649 = p_1426->g_420[2]), l_621[3][0]))) != l_621[1][0])) || 1UL)), p_1426->g_253))) < l_621[4][0]), 9)))
    { /* block id: 371 */
        int32_t *l_653 = (void*)0;
        int8_t ***l_673 = (void*)0;
        uint8_t l_688 = 0xDFL;
        int32_t l_700 = 1L;
        uint32_t l_703 = 9UL;
        int32_t l_704 = 0x6F49D958L;
        int32_t *l_705 = &l_649;
        int32_t *l_706 = &l_704;
        int32_t *l_707 = (void*)0;
        int32_t *l_708[7][9] = {{&l_700,&l_704,&l_649,&l_704,&l_700,&l_700,&l_704,&l_649,&l_704},{&l_700,&l_704,&l_649,&l_704,&l_700,&l_700,&l_704,&l_649,&l_704},{&l_700,&l_704,&l_649,&l_704,&l_700,&l_700,&l_704,&l_649,&l_704},{&l_700,&l_704,&l_649,&l_704,&l_700,&l_700,&l_704,&l_649,&l_704},{&l_700,&l_704,&l_649,&l_704,&l_700,&l_700,&l_704,&l_649,&l_704},{&l_700,&l_704,&l_649,&l_704,&l_700,&l_700,&l_704,&l_649,&l_704},{&l_700,&l_704,&l_649,&l_704,&l_700,&l_700,&l_704,&l_649,&l_704}};
        int16_t l_719 = 0x378FL;
        int i, j;
        for (p_1426->g_26 = 19; (p_1426->g_26 < 7); p_1426->g_26 = safe_sub_func_int32_t_s_s(p_1426->g_26, 7))
        { /* block id: 374 */
            int32_t l_666 = 0x4D94AF1EL;
            int32_t l_674 = 0x2976CC8AL;
            int32_t l_675 = 1L;
            int32_t l_676[9] = {(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L)};
            int32_t l_698 = 1L;
            int i;
            (*p_1426->g_654) = l_653;
            for (p_1426->g_286 = 0; (p_1426->g_286 <= 0); p_1426->g_286 += 1)
            { /* block id: 378 */
                int8_t l_665 = 0x38L;
                union U1 *l_678 = &p_1426->g_679;
                int32_t **l_696[5][4] = {{&l_653,(void*)0,(void*)0,&l_653},{&l_653,(void*)0,(void*)0,&l_653},{&l_653,(void*)0,(void*)0,&l_653},{&l_653,(void*)0,(void*)0,&l_653},{&l_653,(void*)0,(void*)0,&l_653}};
                int32_t ***l_695 = &l_696[2][0];
                int i, j;
                (*p_1426->g_680) = ((safe_mul_func_uint16_t_u_u((((*p_1426->g_631) = 0xDC6B9232013D9700L) | (((-1L) != (safe_rshift_func_int8_t_s_u((((safe_mul_func_uint8_t_u_u((l_649 >= (p_47 & (safe_div_func_uint8_t_u_u((safe_div_func_uint64_t_u_u((l_666 = (l_665 > (p_47 == 0x1239B8C4L))), (safe_sub_func_uint16_t_u_u((((l_645 != (l_675 |= (l_674 |= (safe_lshift_func_uint8_t_u_u((safe_sub_func_uint16_t_u_u(((void*)0 != l_673), p_47)), 0))))) , (*p_1426->g_157)) == l_648[7]), p_47)))), p_47)))), 1UL)) > p_1426->g_231) < l_676[8]), GROUP_DIVERGE(0, 1)))) , l_677)), FAKE_DIVERGE(p_1426->local_0_offset, get_local_id(0), 10))) , l_678);
                for (p_1426->g_479 = 0; (p_1426->g_479 <= 0); p_1426->g_479 += 1)
                { /* block id: 386 */
                    for (p_47 = 0; (p_47 <= 0); p_47 += 1)
                    { /* block id: 389 */
                        int i, j, k;
                        (*p_1426->g_682) = &p_1426->g_534[(p_1426->g_286 + 1)][p_1426->g_286][(p_47 + 4)];
                        if (p_47)
                            continue;
                    }
                }
                if (l_676[8])
                    break;
                for (l_645 = 0; (l_645 >= 0); l_645 -= 1)
                { /* block id: 397 */
                    int8_t l_683 = 7L;
                    int32_t ***l_697 = &l_696[3][1];
                    for (p_1426->g_479 = 0; (p_1426->g_479 >= 0); p_1426->g_479 -= 1)
                    { /* block id: 400 */
                        if ((*p_1426->g_183))
                            break;
                    }
                    if (((l_683 && (p_1426->g_699 = ((((safe_lshift_func_int8_t_s_s((safe_add_func_uint8_t_u_u(l_665, (p_1426->g_418[1][1][3] , p_47))), 4)) == l_688) , (!(safe_lshift_func_int16_t_s_s(0x4A9DL, (safe_mod_func_uint16_t_u_u((safe_mod_func_int8_t_s_s((p_47 != (l_695 != l_697)), l_698)), 0x46CCL)))))) | p_47))) & FAKE_DIVERGE(p_1426->local_1_offset, get_local_id(1), 10)))
                    { /* block id: 404 */
                        int i, j, k;
                        l_700 &= (**p_1426->g_321);
                    }
                    else
                    { /* block id: 406 */
                        if ((**p_1426->g_186))
                            break;
                    }
                }
            }
            (*p_1426->g_328) = &l_700;
            l_653 = (((safe_rshift_func_uint16_t_u_s(l_676[8], l_703)) | l_704) , &l_704);
        }
        ++l_721[2][5];
    }
    else
    { /* block id: 415 */
        int32_t *l_724 = &l_649;
        int32_t *l_726 = &l_712;
        (*p_1426->g_183) &= 0x5365308EL;
        if ((**p_1426->g_654))
        { /* block id: 417 */
            int32_t **l_725 = &p_1426->g_150;
            (*l_725) = l_724;
        }
        else
        { /* block id: 419 */
            (*p_1426->g_727) = l_726;
        }
        for (l_645 = 0; (l_645 >= 0); l_645 -= 1)
        { /* block id: 424 */
            int8_t *l_747[9][1][8] = {{{&l_718,&l_718,&p_1426->g_254,&l_677,(void*)0,&l_677,&p_1426->g_254,&l_718}},{{&l_718,&l_718,&p_1426->g_254,&l_677,(void*)0,&l_677,&p_1426->g_254,&l_718}},{{&l_718,&l_718,&p_1426->g_254,&l_677,(void*)0,&l_677,&p_1426->g_254,&l_718}},{{&l_718,&l_718,&p_1426->g_254,&l_677,(void*)0,&l_677,&p_1426->g_254,&l_718}},{{&l_718,&l_718,&p_1426->g_254,&l_677,(void*)0,&l_677,&p_1426->g_254,&l_718}},{{&l_718,&l_718,&p_1426->g_254,&l_677,(void*)0,&l_677,&p_1426->g_254,&l_718}},{{&l_718,&l_718,&p_1426->g_254,&l_677,(void*)0,&l_677,&p_1426->g_254,&l_718}},{{&l_718,&l_718,&p_1426->g_254,&l_677,(void*)0,&l_677,&p_1426->g_254,&l_718}},{{&l_718,&l_718,&p_1426->g_254,&l_677,(void*)0,&l_677,&p_1426->g_254,&l_718}}};
            uint32_t l_749 = 1UL;
            int8_t *l_752 = (void*)0;
            int i, j, k;
            for (l_677 = 0; (l_677 <= 0); l_677 += 1)
            { /* block id: 427 */
                uint64_t l_738 = 6UL;
                int16_t l_750 = (-8L);
                int32_t *l_753 = &p_1426->g_479;
                for (p_1426->g_254 = 0; (p_1426->g_254 <= 0); p_1426->g_254 += 1)
                { /* block id: 430 */
                    int32_t *l_730 = (void*)0;
                    int32_t *l_731 = (void*)0;
                    int32_t *l_732 = &l_713;
                    int8_t *l_748[10][5] = {{&l_718,&p_1426->g_26,(void*)0,&p_1426->g_26,&l_718},{&l_718,&p_1426->g_26,(void*)0,&p_1426->g_26,&l_718},{&l_718,&p_1426->g_26,(void*)0,&p_1426->g_26,&l_718},{&l_718,&p_1426->g_26,(void*)0,&p_1426->g_26,&l_718},{&l_718,&p_1426->g_26,(void*)0,&p_1426->g_26,&l_718},{&l_718,&p_1426->g_26,(void*)0,&p_1426->g_26,&l_718},{&l_718,&p_1426->g_26,(void*)0,&p_1426->g_26,&l_718},{&l_718,&p_1426->g_26,(void*)0,&p_1426->g_26,&l_718},{&l_718,&p_1426->g_26,(void*)0,&p_1426->g_26,&l_718},{&l_718,&p_1426->g_26,(void*)0,&p_1426->g_26,&l_718}};
                    int i, j;
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    p_1426->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 5)), permutations[(safe_mod_func_uint32_t_u_u((((((**p_1426->g_654) <= ((safe_mod_func_int32_t_s_s(((*l_732) = p_47), p_1426->g_733)) | ((safe_div_func_uint64_t_u_u((safe_mod_func_int16_t_s_s(((**p_1426->g_118) = ((p_47 , l_738) != 0x3DL)), ((((((l_747[7][0][5] = func_51(((safe_add_func_uint8_t_u_u((safe_add_func_int32_t_s_s((safe_div_func_int64_t_s_s((((*p_1426->g_87) = (((safe_div_func_int64_t_s_s(p_47, (l_717[4] = 0x0966E7799FBD4D13L))) , ((((*l_650) = (*p_1426->g_631)) | (-1L)) <= FAKE_DIVERGE(p_1426->local_1_offset, get_local_id(1), 10))) , l_747[7][0][5])) != l_748[0][0]), p_47)), l_749)), l_750)) , p_1426->g_254), (*l_726), l_751, l_749, l_621[4][0], p_1426)) != l_752) , 0x1452C567BF3C0C6FL) , p_47) | (*l_724)) , 0x867CL))), 0x598FFEB866903F71L)) <= l_749))) , (*l_732)) , l_713) == 0x4BL), 10))][(safe_mod_func_uint32_t_u_u(p_1426->tid, 5))]));
                }
                if (l_715)
                    break;
                (*l_753) &= (**p_1426->g_153);
            }
        }
        for (p_1426->g_533 = 0; (p_1426->g_533 < 39); p_1426->g_533++)
        { /* block id: 447 */
            uint32_t l_756[2];
            int i;
            for (i = 0; i < 2; i++)
                l_756[i] = 0x21E13B78L;
            l_756[0]++;
            (*p_1426->g_183) = (safe_mod_func_int64_t_s_s((safe_lshift_func_uint16_t_u_s(((((safe_add_func_int32_t_s_s(p_47, (*p_1426->g_150))) ^ FAKE_DIVERGE(p_1426->global_1_offset, get_global_id(1), 10)) ^ (*l_724)) && (l_717[1] = 9L)), 14)), (safe_unary_minus_func_uint32_t_u(l_709))));
        }
    }
    l_766 = &l_713;
    return (**p_1426->g_118);
}


/* ------------------------------------------ */
/* 
 * reads : p_1426->g_533 p_1426->g_180 p_1426->g_118 p_1426->g_119 p_1426->g_82 p_1426->g_536 p_1426->g_183
 * writes: p_1426->g_533 p_1426->g_180 p_1426->g_82 p_1426->g_183
 */
int64_t  func_48(int8_t * p_49, union U1  p_50, struct S2 * p_1426)
{ /* block id: 345 */
    uint32_t l_620 = 0UL;
    for (p_1426->g_533 = 26; (p_1426->g_533 >= 60); p_1426->g_533++)
    { /* block id: 348 */
        volatile int32_t **l_616 = &p_1426->g_183;
        for (p_1426->g_180 = 1; (p_1426->g_180 > 23); p_1426->g_180++)
        { /* block id: 351 */
            int i, j;
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            p_1426->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 5)), permutations[(safe_mod_func_uint32_t_u_u((safe_mul_func_int16_t_s_s(((*p_1426->g_119) = (**p_1426->g_118)), 6UL)), 10))][(safe_mod_func_uint32_t_u_u(p_1426->tid, 5))]));
        }
        (*l_616) = (*p_1426->g_536);
    }
    for (p_1426->g_533 = (-21); (p_1426->g_533 <= 8); ++p_1426->g_533)
    { /* block id: 361 */
        uint8_t l_619 = 255UL;
        if (l_619)
            break;
    }
    return l_620;
}


/* ------------------------------------------ */
/* 
 * reads : p_1426->g_87 p_1426->g_88
 * writes:
 */
int8_t * func_51(uint32_t  p_52, int32_t  p_53, int8_t *** p_54, int64_t  p_55, int32_t  p_56, struct S2 * p_1426)
{ /* block id: 14 */
    union U0 l_95 = {0};
    int32_t *l_96 = &p_1426->g_97;
    int16_t *l_98 = &p_1426->g_82;
    int16_t *l_99[1][2];
    int16_t **l_100 = &l_99[0][0];
    uint16_t l_101 = 1UL;
    int32_t l_107[1];
    int8_t *l_126[4][4] = {{&p_1426->g_26,&p_1426->g_26,&p_1426->g_26,&p_1426->g_26},{&p_1426->g_26,&p_1426->g_26,&p_1426->g_26,&p_1426->g_26},{&p_1426->g_26,&p_1426->g_26,&p_1426->g_26,&p_1426->g_26},{&p_1426->g_26,&p_1426->g_26,&p_1426->g_26,&p_1426->g_26}};
    int64_t *l_155[2];
    int64_t **l_154[1][8][2] = {{{&l_155[1],(void*)0},{&l_155[1],(void*)0},{&l_155[1],(void*)0},{&l_155[1],(void*)0},{&l_155[1],(void*)0},{&l_155[1],(void*)0},{&l_155[1],(void*)0},{&l_155[1],(void*)0}}};
    int64_t **l_302 = (void*)0;
    uint8_t l_380 = 0x8DL;
    uint64_t l_438 = 18446744073709551614UL;
    uint32_t l_441 = 0xC2A4B9D2L;
    int32_t l_451 = 0x743CBE74L;
    uint8_t l_519[5][5] = {{255UL,1UL,0x37L,1UL,255UL},{255UL,1UL,0x37L,1UL,255UL},{255UL,1UL,0x37L,1UL,255UL},{255UL,1UL,0x37L,1UL,255UL},{255UL,1UL,0x37L,1UL,255UL}};
    int8_t **l_531 = &l_126[0][1];
    union U1 l_535 = {0};
    uint8_t *l_563 = &p_1426->g_422;
    uint32_t *l_591 = &p_1426->g_286;
    uint32_t **l_590 = &l_591;
    uint16_t *l_607 = &l_101;
    uint32_t *l_608 = &p_1426->g_286;
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
            l_99[i][j] = &p_1426->g_82;
    }
    for (i = 0; i < 1; i++)
        l_107[i] = 0x21DEF15EL;
    for (i = 0; i < 2; i++)
        l_155[i] = (void*)0;
    return (**p_54);
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[5];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 5; i++)
            l_comm_values[i] = 1;
    struct S2 c_1427;
    struct S2* p_1426 = &c_1427;
    struct S2 c_1428 = {
        (-1L), // p_1426->g_26
        0x7D52A42BL, // p_1426->g_32
        &p_1426->g_26, // p_1426->g_34
        &p_1426->g_34, // p_1426->g_33
        {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}, // p_1426->g_80
        (-1L), // p_1426->g_82
        &p_1426->g_26, // p_1426->g_88
        &p_1426->g_88, // p_1426->g_87
        {&p_1426->g_87,&p_1426->g_87,&p_1426->g_87,&p_1426->g_87,&p_1426->g_87,&p_1426->g_87,&p_1426->g_87,&p_1426->g_87,&p_1426->g_87,&p_1426->g_87}, // p_1426->g_86
        (-1L), // p_1426->g_97
        4294967295UL, // p_1426->g_108
        &p_1426->g_82, // p_1426->g_119
        &p_1426->g_119, // p_1426->g_118
        &p_1426->g_97, // p_1426->g_150
        &p_1426->g_150, // p_1426->g_153
        (void*)0, // p_1426->g_158
        &p_1426->g_158, // p_1426->g_157
        {{&p_1426->g_157,&p_1426->g_157,&p_1426->g_157,&p_1426->g_157},{&p_1426->g_157,&p_1426->g_157,&p_1426->g_157,&p_1426->g_157},{&p_1426->g_157,&p_1426->g_157,&p_1426->g_157,&p_1426->g_157},{&p_1426->g_157,&p_1426->g_157,&p_1426->g_157,&p_1426->g_157},{&p_1426->g_157,&p_1426->g_157,&p_1426->g_157,&p_1426->g_157}}, // p_1426->g_156
        0UL, // p_1426->g_180
        (-10L), // p_1426->g_182
        0x3F4AB573L, // p_1426->g_184
        &p_1426->g_184, // p_1426->g_183
        &p_1426->g_183, // p_1426->g_186
        (-1L), // p_1426->g_231
        (-10L), // p_1426->g_233
        0x71F5L, // p_1426->g_236
        0x74676D5B9C4E9702L, // p_1426->g_252
        0x2A35L, // p_1426->g_253
        (-1L), // p_1426->g_254
        0x69D47E1590389298L, // p_1426->g_255
        {0}, // p_1426->g_275
        0x3E80B92BL, // p_1426->g_278
        0xA7A60AF5L, // p_1426->g_286
        &p_1426->g_183, // p_1426->g_321
        &p_1426->g_150, // p_1426->g_328
        {{{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L}},{{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L}},{{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L}},{{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L}},{{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L}},{{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L}},{{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L}},{{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L},{6L,0L,7L,1L}}}, // p_1426->g_418
        {0x3FBCL,0x3FBCL,0x3FBCL,0x3FBCL}, // p_1426->g_420
        0L, // p_1426->g_421
        0x48L, // p_1426->g_422
        (void*)0, // p_1426->g_425
        &p_1426->g_118, // p_1426->g_426
        3UL, // p_1426->g_456
        0x5DC90061L, // p_1426->g_479
        4UL, // p_1426->g_533
        {{{0x5E51844DL,0x5E51844DL,0x5E51844DL,0x5E51844DL,0x5E51844DL,0x5E51844DL,0x5E51844DL}},{{0x5E51844DL,0x5E51844DL,0x5E51844DL,0x5E51844DL,0x5E51844DL,0x5E51844DL,0x5E51844DL}},{{0x5E51844DL,0x5E51844DL,0x5E51844DL,0x5E51844DL,0x5E51844DL,0x5E51844DL,0x5E51844DL}}}, // p_1426->g_534
        &p_1426->g_183, // p_1426->g_536
        &p_1426->g_183, // p_1426->g_546
        {{7L,7L,7L,7L,7L,7L},{7L,7L,7L,7L,7L,7L},{7L,7L,7L,7L,7L,7L},{7L,7L,7L,7L,7L,7L}}, // p_1426->g_557
        (void*)0, // p_1426->g_573
        {0}, // p_1426->g_587
        &p_1426->g_587, // p_1426->g_586
        (void*)0, // p_1426->g_594
        0x73L, // p_1426->g_630
        (void*)0, // p_1426->g_631
        &p_1426->g_150, // p_1426->g_654
        {0}, // p_1426->g_679
        &p_1426->g_679, // p_1426->g_681
        &p_1426->g_681, // p_1426->g_680
        &p_1426->g_183, // p_1426->g_682
        0x6EL, // p_1426->g_699
        0x5F5D1174L, // p_1426->g_710
        &p_1426->g_150, // p_1426->g_727
        1UL, // p_1426->g_733
        &p_1426->g_150, // p_1426->g_776
        {{0x1718L,0UL,0x1718L,0x1718L,0UL,0x1718L},{0x1718L,0UL,0x1718L,0x1718L,0UL,0x1718L},{0x1718L,0UL,0x1718L,0x1718L,0UL,0x1718L},{0x1718L,0UL,0x1718L,0x1718L,0UL,0x1718L},{0x1718L,0UL,0x1718L,0x1718L,0UL,0x1718L},{0x1718L,0UL,0x1718L,0x1718L,0UL,0x1718L},{0x1718L,0UL,0x1718L,0x1718L,0UL,0x1718L},{0x1718L,0UL,0x1718L,0x1718L,0UL,0x1718L}}, // p_1426->g_799
        &p_1426->g_97, // p_1426->g_837
        &p_1426->g_837, // p_1426->g_836
        4294967295UL, // p_1426->g_876
        &p_1426->g_183, // p_1426->g_881
        {{{252UL,249UL,0x78L,249UL,252UL},{252UL,249UL,0x78L,249UL,252UL},{252UL,249UL,0x78L,249UL,252UL},{252UL,249UL,0x78L,249UL,252UL},{252UL,249UL,0x78L,249UL,252UL},{252UL,249UL,0x78L,249UL,252UL}},{{252UL,249UL,0x78L,249UL,252UL},{252UL,249UL,0x78L,249UL,252UL},{252UL,249UL,0x78L,249UL,252UL},{252UL,249UL,0x78L,249UL,252UL},{252UL,249UL,0x78L,249UL,252UL},{252UL,249UL,0x78L,249UL,252UL}}}, // p_1426->g_1013
        0x89083B4599ED6327L, // p_1426->g_1034
        0x36L, // p_1426->g_1037
        0x4F5069CC515B6633L, // p_1426->g_1038
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1426->g_1063
        &p_1426->g_1063[1], // p_1426->g_1062
        (void*)0, // p_1426->g_1067
        {{{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837}},{{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837}},{{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837}},{{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837}},{{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837}},{{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837}},{{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837},{&p_1426->g_837,&p_1426->g_150,&p_1426->g_837,&p_1426->g_837}}}, // p_1426->g_1068
        {1L,1L,1L,1L,1L,1L,1L,1L}, // p_1426->g_1154
        0x08CE1243L, // p_1426->g_1159
        0xBACC999EC899710DL, // p_1426->g_1284
        0UL, // p_1426->g_1323
        0UL, // p_1426->g_1364
        sequence_input[get_global_id(0)], // p_1426->global_0_offset
        sequence_input[get_global_id(1)], // p_1426->global_1_offset
        sequence_input[get_global_id(2)], // p_1426->global_2_offset
        sequence_input[get_local_id(0)], // p_1426->local_0_offset
        sequence_input[get_local_id(1)], // p_1426->local_1_offset
        sequence_input[get_local_id(2)], // p_1426->local_2_offset
        sequence_input[get_group_id(0)], // p_1426->group_0_offset
        sequence_input[get_group_id(1)], // p_1426->group_1_offset
        sequence_input[get_group_id(2)], // p_1426->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 5)), permutations[0][get_linear_local_id()])), // p_1426->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1427 = c_1428;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1426);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1426->g_26, "p_1426->g_26", print_hash_value);
    transparent_crc(p_1426->g_32, "p_1426->g_32", print_hash_value);
    transparent_crc(p_1426->g_82, "p_1426->g_82", print_hash_value);
    transparent_crc(p_1426->g_97, "p_1426->g_97", print_hash_value);
    transparent_crc(p_1426->g_108, "p_1426->g_108", print_hash_value);
    transparent_crc(p_1426->g_180, "p_1426->g_180", print_hash_value);
    transparent_crc(p_1426->g_182, "p_1426->g_182", print_hash_value);
    transparent_crc(p_1426->g_184, "p_1426->g_184", print_hash_value);
    transparent_crc(p_1426->g_231, "p_1426->g_231", print_hash_value);
    transparent_crc(p_1426->g_233, "p_1426->g_233", print_hash_value);
    transparent_crc(p_1426->g_236, "p_1426->g_236", print_hash_value);
    transparent_crc(p_1426->g_252, "p_1426->g_252", print_hash_value);
    transparent_crc(p_1426->g_253, "p_1426->g_253", print_hash_value);
    transparent_crc(p_1426->g_254, "p_1426->g_254", print_hash_value);
    transparent_crc(p_1426->g_255, "p_1426->g_255", print_hash_value);
    transparent_crc(p_1426->g_278, "p_1426->g_278", print_hash_value);
    transparent_crc(p_1426->g_286, "p_1426->g_286", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1426->g_418[i][j][k], "p_1426->g_418[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1426->g_420[i], "p_1426->g_420[i]", print_hash_value);

    }
    transparent_crc(p_1426->g_421, "p_1426->g_421", print_hash_value);
    transparent_crc(p_1426->g_422, "p_1426->g_422", print_hash_value);
    transparent_crc(p_1426->g_456, "p_1426->g_456", print_hash_value);
    transparent_crc(p_1426->g_479, "p_1426->g_479", print_hash_value);
    transparent_crc(p_1426->g_533, "p_1426->g_533", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_1426->g_534[i][j][k], "p_1426->g_534[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_1426->g_557[i][j], "p_1426->g_557[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1426->g_630, "p_1426->g_630", print_hash_value);
    transparent_crc(p_1426->g_699, "p_1426->g_699", print_hash_value);
    transparent_crc(p_1426->g_710, "p_1426->g_710", print_hash_value);
    transparent_crc(p_1426->g_733, "p_1426->g_733", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_1426->g_799[i][j], "p_1426->g_799[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1426->g_876, "p_1426->g_876", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1426->g_1013[i][j][k], "p_1426->g_1013[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1426->g_1034, "p_1426->g_1034", print_hash_value);
    transparent_crc(p_1426->g_1037, "p_1426->g_1037", print_hash_value);
    transparent_crc(p_1426->g_1038, "p_1426->g_1038", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1426->g_1154[i], "p_1426->g_1154[i]", print_hash_value);

    }
    transparent_crc(p_1426->g_1159, "p_1426->g_1159", print_hash_value);
    transparent_crc(p_1426->g_1284, "p_1426->g_1284", print_hash_value);
    transparent_crc(p_1426->g_1323, "p_1426->g_1323", print_hash_value);
    transparent_crc(p_1426->g_1364, "p_1426->g_1364", print_hash_value);
    transparent_crc(p_1426->l_comm_values[get_linear_local_id()], "p_1426->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1426->g_comm_values[get_linear_group_id() * 5 + get_linear_local_id()], "p_1426->g_comm_values[get_linear_group_id() * 5 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
