// ---fake_divergence ---inter_thread_comm -g 34,75,1 -l 2,5,1
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

__constant uint32_t permutations[10][10] = {
{7,5,0,1,4,6,9,3,8,2}, // permutation 0
{1,2,6,4,8,5,0,9,3,7}, // permutation 1
{3,0,1,6,9,7,8,4,2,5}, // permutation 2
{2,3,7,0,9,6,4,1,8,5}, // permutation 3
{7,4,2,9,0,1,8,3,5,6}, // permutation 4
{5,7,3,0,2,6,1,8,9,4}, // permutation 5
{3,7,2,9,5,4,0,8,6,1}, // permutation 6
{3,0,4,5,8,6,9,2,1,7}, // permutation 7
{9,0,6,5,7,8,1,3,2,4}, // permutation 8
{8,9,4,5,0,6,2,3,1,7} // permutation 9
};

// Seed: 43

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile int32_t g_3[1][1];
    int32_t g_4;
    int32_t g_6;
    int32_t g_58;
    uint32_t g_75;
    uint64_t g_112;
    uint16_t g_130;
    int32_t *g_134;
    int32_t **g_133[9];
    int8_t g_145;
    int8_t g_147;
    int8_t g_149;
    uint16_t g_151;
    uint16_t g_154;
    int32_t g_155;
    uint8_t g_158;
    uint64_t g_162;
    int64_t g_202[4][3];
    uint32_t g_203;
    uint32_t g_215;
    int32_t ***g_262;
    uint8_t g_270;
    int16_t *g_280;
    int16_t g_282[1][8];
    int16_t * volatile g_281[6][3][8];
    int16_t g_284;
    int8_t *g_289;
    int8_t **g_288[1][6];
    uint32_t *g_305;
    uint32_t g_358[6][9][4];
    uint64_t g_364;
    int16_t g_388;
    int64_t g_399;
    volatile uint16_t g_425;
    int32_t *g_473[5][1];
    volatile uint32_t g_481;
    int32_t g_548[6];
    int32_t ** volatile g_565;
    int32_t ** volatile g_567;
    int32_t * volatile g_623;
    uint32_t g_675;
    uint32_t g_706;
    int32_t ** volatile g_707;
    uint8_t g_774;
    int32_t * volatile g_831;
    uint32_t *g_842;
    uint32_t **g_841[6][9][4];
    uint8_t g_912;
    volatile uint32_t g_927;
    volatile uint32_t *g_926;
    volatile uint32_t ** volatile g_925[3][9];
    int16_t ** volatile g_933;
    int16_t ** volatile * volatile g_932;
    int8_t g_972;
    volatile int32_t g_979;
    uint64_t g_1020;
    uint64_t **g_1024;
    uint32_t g_1057;
    int32_t ** volatile g_1066;
    int16_t **g_1130[7][8][3];
    int16_t ***g_1129;
    uint32_t **g_1187;
    uint32_t ***g_1186[7];
    uint64_t *g_1203;
    volatile uint32_t g_1249;
    volatile uint32_t * volatile g_1248;
    volatile uint32_t * volatile *g_1247;
    int8_t g_1257;
    int32_t *g_1272;
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
uint16_t  func_1(struct S0 * p_1273);
int32_t  func_17(int32_t * p_18, uint8_t  p_19, int32_t * p_20, int32_t * p_21, struct S0 * p_1273);
int32_t  func_26(int32_t * p_27, int32_t * p_28, struct S0 * p_1273);
int32_t * func_29(int32_t * p_30, int32_t  p_31, uint32_t  p_32, struct S0 * p_1273);
int32_t * func_33(int8_t  p_34, int32_t * p_35, uint32_t  p_36, int32_t * p_37, struct S0 * p_1273);
int8_t  func_38(int32_t * p_39, int32_t  p_40, int32_t  p_41, uint16_t  p_42, int32_t * p_43, struct S0 * p_1273);
uint16_t  func_44(int32_t * p_45, int32_t * p_46, struct S0 * p_1273);
int32_t * func_83(int32_t  p_84, uint64_t  p_85, int32_t * p_86, struct S0 * p_1273);
int32_t * func_87(int32_t  p_88, uint64_t  p_89, int32_t ** p_90, struct S0 * p_1273);
int32_t * func_91(int32_t  p_92, uint64_t  p_93, struct S0 * p_1273);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1273->g_4 p_1273->g_3 p_1273->g_6 p_1273->g_202 p_1273->g_289 p_1273->g_149 p_1273->g_425 p_1273->g_147 p_1273->g_1247 p_1273->g_282 p_1273->g_158 p_1273->g_774 p_1273->g_1203 p_1273->g_162 p_1273->g_358 p_1273->g_203 p_1273->g_548 p_1273->g_1257 p_1273->g_130 p_1273->g_134 p_1273->g_58 p_1273->g_262 p_1273->g_133
 * writes: p_1273->g_4 p_1273->g_147 p_1273->g_473 p_1273->g_270 p_1273->g_130 p_1273->g_58 p_1273->g_1272
 */
uint16_t  func_1(struct S0 * p_1273)
{ /* block id: 4 */
    uint64_t l_2[10] = {18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL};
    int32_t l_12 = 0L;
    int32_t l_13[10] = {0x4BB24ADCL,0x4BB24ADCL,0x4BB24ADCL,0x4BB24ADCL,0x4BB24ADCL,0x4BB24ADCL,0x4BB24ADCL,0x4BB24ADCL,0x4BB24ADCL,0x4BB24ADCL};
    uint64_t l_14 = 0UL;
    uint64_t l_892 = 0x1DCBEB567C630083L;
    int8_t ***l_940 = (void*)0;
    uint32_t l_1059 = 0xC20A4523L;
    uint8_t l_1123 = 255UL;
    int32_t l_1133 = (-1L);
    int16_t **l_1166 = (void*)0;
    uint32_t ***l_1185 = (void*)0;
    uint32_t *l_1196 = &p_1273->g_203;
    uint64_t *l_1201 = &p_1273->g_162;
    uint32_t l_1226[3];
    int8_t *l_1243 = &p_1273->g_147;
    uint32_t **l_1246[1][6][1] = {{{&p_1273->g_305},{&p_1273->g_305},{&p_1273->g_305},{&p_1273->g_305},{&p_1273->g_305},{&p_1273->g_305}}};
    int32_t **l_1250 = &p_1273->g_473[1][0];
    uint8_t *l_1252 = &p_1273->g_270;
    uint32_t **l_1258 = &p_1273->g_842;
    uint16_t *l_1259 = (void*)0;
    uint16_t *l_1260 = &p_1273->g_130;
    uint8_t **l_1263 = &l_1252;
    uint8_t *l_1265 = (void*)0;
    uint8_t **l_1264 = &l_1265;
    uint8_t *l_1267 = (void*)0;
    uint8_t **l_1266 = &l_1267;
    int32_t *l_1269 = (void*)0;
    int32_t **l_1268 = &l_1269;
    int32_t *l_1271 = (void*)0;
    int32_t **l_1270[3];
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_1226[i] = 4294967295UL;
    for (i = 0; i < 3; i++)
        l_1270[i] = &l_1271;
    for (p_1273->g_4 = 9; (p_1273->g_4 >= 1); p_1273->g_4 -= 1)
    { /* block id: 7 */
        int32_t *l_5 = &p_1273->g_6;
        int32_t *l_7 = &p_1273->g_6;
        int32_t l_8 = 0x3F0BC502L;
        int32_t *l_9 = &l_8;
        int32_t *l_10 = &l_8;
        int32_t *l_11[3][1];
        uint8_t *l_893 = &p_1273->g_774;
        uint8_t l_894 = 0x3FL;
        uint64_t l_971 = 0xF96975A962EE8E29L;
        int16_t l_973 = 0x4728L;
        int32_t *l_1067 = (void*)0;
        int64_t *l_1156 = &p_1273->g_399;
        int64_t l_1157[6] = {0x7CA68E9CFFBC4F83L,2L,0x7CA68E9CFFBC4F83L,0x7CA68E9CFFBC4F83L,2L,0x7CA68E9CFFBC4F83L};
        uint64_t l_1171 = 0x695CFCA04BC6EF61L;
        int16_t **l_1197 = &p_1273->g_280;
        uint64_t *l_1202[9][8][3] = {{{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162}},{{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162}},{{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162}},{{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162}},{{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162}},{{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162}},{{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162}},{{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162}},{{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162}}};
        int32_t *l_1228 = (void*)0;
        int i, j, k;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 1; j++)
                l_11[i][j] = &l_8;
        }
        --l_14;
        for (l_14 = 3; (l_14 <= 9); l_14 += 1)
        { /* block id: 11 */
            return p_1273->g_3[0][0];
        }
        if ((*l_7))
            continue;
    }
    (*l_1250) = func_87(((((safe_rshift_func_int16_t_s_u(((+(0xF4A8CA81DB5105B8L && (((-9L) || ((~(safe_div_func_uint16_t_u_u(p_1273->g_202[3][2], (safe_lshift_func_uint8_t_u_s((((((safe_rshift_func_int8_t_s_s((*p_1273->g_289), ((safe_sub_func_int64_t_s_s(l_14, p_1273->g_425)) | (safe_mod_func_int64_t_s_s((((safe_div_func_uint8_t_u_u((((*l_1243) &= l_1123) , ((((0x0836L == GROUP_DIVERGE(1, 1)) & ((safe_mul_func_int8_t_s_s((l_1246[0][3][0] == p_1273->g_1247), 255UL)) | GROUP_DIVERGE(0, 1))) , 0x10DCC358L) <= FAKE_DIVERGE(p_1273->global_0_offset, get_global_id(0), 10))), 0x02L)) , (void*)0) != (void*)0), l_1226[0]))))) < l_1226[1]) ^ l_1226[0]) || l_1226[0]) < 0UL), 2))))) | p_1273->g_282[0][5])) | l_1123))) || l_1226[0]), FAKE_DIVERGE(p_1273->group_0_offset, get_group_id(0), 10))) && p_1273->g_158) | 0x0E93L) , p_1273->g_774), (*p_1273->g_1203), l_1250, p_1273);
    (***p_1273->g_262) = ((p_1273->g_358[0][1][1] && (((p_1273->g_203 | p_1273->g_548[0]) || (safe_unary_minus_func_int64_t_s((((*l_1252) = l_12) >= (0x3D0FL && l_12))))) >= (p_1273->g_358[2][2][3] <= (safe_sub_func_uint16_t_u_u(((*l_1260) &= ((((safe_div_func_uint64_t_u_u(((void*)0 == &p_1273->g_925[1][7]), p_1273->g_1257)) || 4294967294UL) , l_1258) == &p_1273->g_926)), l_2[6]))))) , (*p_1273->g_134));
    (*p_1273->g_134) |= (safe_div_func_int8_t_s_s((&p_1273->g_288[0][4] != (void*)0), ((+(&l_1123 == ((*l_1266) = ((*l_1264) = ((*l_1263) = &l_1123))))) && ((p_1273->g_1272 = ((*l_1268) = &p_1273->g_548[0])) != &p_1273->g_548[3]))));
    return p_1273->g_158;
}


/* ------------------------------------------ */
/* 
 * reads : p_1273->g_831 p_1273->g_58
 * writes:
 */
int32_t  func_17(int32_t * p_18, uint8_t  p_19, int32_t * p_20, int32_t * p_21, struct S0 * p_1273)
{ /* block id: 498 */
    return (*p_1273->g_831);
}


/* ------------------------------------------ */
/* 
 * reads : p_1273->g_262 p_1273->g_133 p_1273->g_134 p_1273->g_58 p_1273->g_6 p_1273->g_282
 * writes: p_1273->g_58 p_1273->g_6 p_1273->g_134
 */
int32_t  func_26(int32_t * p_27, int32_t * p_28, struct S0 * p_1273)
{ /* block id: 493 */
    (***p_1273->g_262) &= 0x6DCBE45DL;
    (**p_1273->g_262) = p_27;
    return p_1273->g_282[0][5];
}


/* ------------------------------------------ */
/* 
 * reads : p_1273->g_262 p_1273->g_133 p_1273->g_134 p_1273->g_58 p_1273->g_6 p_1273->g_155 p_1273->g_151 p_1273->g_364 p_1273->g_158 p_1273->g_706 p_1273->g_215 p_1273->g_358 p_1273->g_162 p_1273->g_289 p_1273->g_567 p_1273->g_473
 * writes: p_1273->g_58 p_1273->g_6 p_1273->g_155 p_1273->g_151 p_1273->g_364 p_1273->g_130 p_1273->g_202 p_1273->g_215 p_1273->g_288 p_1273->g_149
 */
int32_t * func_29(int32_t * p_30, int32_t  p_31, uint32_t  p_32, struct S0 * p_1273)
{ /* block id: 465 */
    int8_t l_874[1];
    int8_t **l_884 = &p_1273->g_289;
    int32_t l_887 = 0x339DAF71L;
    int i;
    for (i = 0; i < 1; i++)
        l_874[i] = 0x6AL;
    (***p_1273->g_262) &= p_32;
    for (p_1273->g_155 = 0; (p_1273->g_155 > 12); p_1273->g_155 = safe_add_func_int64_t_s_s(p_1273->g_155, 1))
    { /* block id: 469 */
        int8_t ***l_871 = (void*)0;
        int8_t ****l_870[2];
        uint16_t l_873 = 3UL;
        int32_t l_876[2][5];
        uint64_t l_891 = 0x2FD7192E5523CD1FL;
        int i, j;
        for (i = 0; i < 2; i++)
            l_870[i] = &l_871;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 5; j++)
                l_876[i][j] = 0x008AE269L;
        }
        for (p_1273->g_151 = 7; (p_1273->g_151 >= 25); p_1273->g_151++)
        { /* block id: 472 */
            uint64_t *l_854 = (void*)0;
            int32_t l_865 = 1L;
            uint16_t *l_872 = &p_1273->g_130;
            uint16_t *l_875 = &l_873;
            int64_t *l_879[4];
            int8_t *l_880[5][3][3] = {{{&p_1273->g_147,&p_1273->g_147,&p_1273->g_147},{&p_1273->g_147,&p_1273->g_147,&p_1273->g_147},{&p_1273->g_147,&p_1273->g_147,&p_1273->g_147}},{{&p_1273->g_147,&p_1273->g_147,&p_1273->g_147},{&p_1273->g_147,&p_1273->g_147,&p_1273->g_147},{&p_1273->g_147,&p_1273->g_147,&p_1273->g_147}},{{&p_1273->g_147,&p_1273->g_147,&p_1273->g_147},{&p_1273->g_147,&p_1273->g_147,&p_1273->g_147},{&p_1273->g_147,&p_1273->g_147,&p_1273->g_147}},{{&p_1273->g_147,&p_1273->g_147,&p_1273->g_147},{&p_1273->g_147,&p_1273->g_147,&p_1273->g_147},{&p_1273->g_147,&p_1273->g_147,&p_1273->g_147}},{{&p_1273->g_147,&p_1273->g_147,&p_1273->g_147},{&p_1273->g_147,&p_1273->g_147,&p_1273->g_147},{&p_1273->g_147,&p_1273->g_147,&p_1273->g_147}}};
            uint32_t *l_881 = &p_1273->g_215;
            uint64_t *l_888 = (void*)0;
            uint64_t *l_889 = &p_1273->g_364;
            int32_t *l_890 = &p_1273->g_58;
            int i, j, k;
            for (i = 0; i < 4; i++)
                l_879[i] = &p_1273->g_202[0][1];
            (***p_1273->g_262) = ((safe_lshift_func_uint16_t_u_u((safe_mod_func_int16_t_s_s((GROUP_DIVERGE(0, 1) , ((((void*)0 == &p_1273->g_289) <= 0x4DL) | (~((safe_unary_minus_func_int8_t_s((safe_sub_func_uint64_t_u_u((p_1273->g_364++), (safe_lshift_func_int16_t_s_s(0x0E64L, 4)))))) , (safe_div_func_int8_t_s_s((safe_sub_func_uint16_t_u_u(((*l_875) = (safe_sub_func_int8_t_s_s(l_865, (safe_mod_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((l_874[0] &= (((GROUP_DIVERGE(0, 1) | ((void*)0 == l_870[1])) == ((*l_872) = 0xF2A9L)) | (((l_873 ^ 0x42L) && 253UL) > 3L))), GROUP_DIVERGE(1, 1))), (-1L)))))), l_876[0][3])), 0x21L)))))), p_1273->g_158)), p_1273->g_706)) | GROUP_DIVERGE(0, 1));
            l_891 |= ((*l_890) ^= (((l_876[0][3] = 4L) >= (((p_1273->g_202[3][2] = ((l_880[1][1][1] = &l_874[0]) != (void*)0)) <= (((*l_889) = ((1UL <= ((*l_872) = ((l_887 |= (4294967295UL & ((((((*l_881)--) , (((&p_1273->g_289 == (p_1273->g_288[0][0] = l_884)) || ((**l_884) = (((((l_873 , (((((safe_lshift_func_uint16_t_u_s(0xE57EL, p_32)) || p_1273->g_358[1][7][1]) , GROUP_DIVERGE(0, 1)) || l_874[0]) > 0x7CL)) , p_31) | p_1273->g_162) || p_32) || 18446744073709551615UL))) <= p_31)) == l_874[0]) && 0x19L) < 1UL))) < p_1273->g_6))) & (-1L))) > 0xB55505A3987FA2F6L)) < p_32)) , l_874[0]));
            return p_30;
        }
    }
    return (*p_1273->g_567);
}


/* ------------------------------------------ */
/* 
 * reads : p_1273->g_130 p_1273->g_358 p_1273->g_289 p_1273->g_6 p_1273->g_262 p_1273->g_133 p_1273->g_134 p_1273->g_203 p_1273->g_75 p_1273->g_154 p_1273->g_149 p_1273->g_4 p_1273->g_215 p_1273->g_202 p_1273->g_388 p_1273->g_151 p_1273->g_623 p_1273->g_158 p_1273->g_147 p_1273->g_3 p_1273->g_288 p_1273->g_706
 * writes: p_1273->g_130 p_1273->g_149 p_1273->g_388 p_1273->g_134 p_1273->g_270 p_1273->g_58 p_1273->g_75 p_1273->g_154 p_1273->g_202 p_1273->g_comm_values p_1273->g_6 p_1273->g_262 p_1273->g_399 p_1273->g_158 p_1273->g_774 p_1273->g_112 p_1273->g_364 p_1273->g_706
 */
int32_t * func_33(int8_t  p_34, int32_t * p_35, uint32_t  p_36, int32_t * p_37, struct S0 * p_1273)
{ /* block id: 227 */
    int32_t l_484 = (-1L);
    uint16_t *l_491 = &p_1273->g_130;
    int64_t *l_494 = &p_1273->g_202[3][2];
    int64_t *l_495 = &p_1273->g_202[1][0];
    int16_t *l_498 = &p_1273->g_388;
    int8_t l_521 = 0x12L;
    int32_t l_582 = 0x7CC662F4L;
    uint32_t l_601 = 5UL;
    int64_t **l_681 = &l_495;
    uint64_t l_703 = 2UL;
    int64_t l_775 = (-1L);
    int32_t l_785 = 0L;
    if ((((*l_498) = ((((*p_1273->g_289) = ((safe_div_func_uint8_t_u_u((p_34 < (l_484 , (safe_sub_func_int32_t_s_s(l_484, (l_484 != l_484))))), (safe_lshift_func_uint8_t_u_s(((safe_mul_func_uint8_t_u_u((((((*l_491)++) ^ 0x148AL) , (l_494 = l_494)) != l_495), GROUP_DIVERGE(2, 1))) == ((safe_add_func_int32_t_s_s((((&p_1273->g_481 == &p_1273->g_75) , GROUP_DIVERGE(2, 1)) & (-10L)), p_1273->g_358[4][2][1])) == p_36)), p_36)))) , 0x3BL)) == l_484) <= p_36)) >= p_1273->g_6))
    { /* block id: 232 */
        int32_t l_499 = 0x46D86E4FL;
        (**p_1273->g_262) = p_37;
        l_499 &= ((*p_1273->g_134) = (*p_1273->g_134));
    }
    else
    { /* block id: 236 */
        uint32_t l_504 = 0xDD201F80L;
        uint8_t *l_515 = &p_1273->g_270;
        uint16_t *l_520 = &p_1273->g_154;
        int8_t ***l_530 = &p_1273->g_288[0][3];
        uint64_t l_538[9][4][7] = {{{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL},{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL},{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL},{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL}},{{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL},{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL},{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL},{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL}},{{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL},{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL},{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL},{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL}},{{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL},{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL},{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL},{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL}},{{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL},{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL},{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL},{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL}},{{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL},{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL},{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL},{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL}},{{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL},{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL},{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL},{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL}},{{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL},{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL},{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL},{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL}},{{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL},{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL},{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL},{0xEE1AD467FDAA4774L,0xA262FB8EA6AE2BA6L,18446744073709551615UL,8UL,0x8DA651ECF915E234L,0xEE1AD467FDAA4774L,8UL}}};
        int32_t *l_571 = &p_1273->g_6;
        uint64_t *l_580 = &p_1273->g_162;
        int i, j, k;
        (*p_1273->g_134) = (safe_mod_func_uint64_t_u_u(((safe_add_func_uint64_t_u_u(l_504, (safe_mul_func_int16_t_s_s((safe_sub_func_int8_t_s_s(1L, (safe_lshift_func_int16_t_s_s(0x0DAAL, (((~(l_521 = (p_1273->g_203 || ((0x6996DD46L | ((((safe_add_func_uint32_t_u_u((((safe_mul_func_uint8_t_u_u(p_36, ((*l_515) = p_1273->g_75))) ^ (safe_rshift_func_uint8_t_u_s((safe_lshift_func_uint16_t_u_u(p_1273->g_154, 14)), (&p_1273->g_151 == l_520)))) < p_34), 0x01AB1B8BL)) ^ p_36) ^ 0x2DA3F8B6L) == (*p_1273->g_289))) || 0x61L)))) && 0x63E8C6C349E889F4L) > l_504))))), FAKE_DIVERGE(p_1273->global_0_offset, get_global_id(0), 10))))) >= p_1273->g_6), 0x5B85893E5B59ACA9L));
        for (l_484 = (-30); (l_484 < (-29)); ++l_484)
        { /* block id: 242 */
            int8_t ****l_531 = &l_530;
            uint64_t *l_539 = &p_1273->g_364;
            int32_t l_540 = 0x4BF68A25L;
            int8_t l_549 = 0L;
            int16_t l_583 = (-3L);
            (1 + 1);
        }
        return p_37;
    }
    for (p_1273->g_75 = (-24); (p_1273->g_75 > 11); p_1273->g_75 = safe_add_func_int64_t_s_s(p_1273->g_75, 7))
    { /* block id: 311 */
        int8_t *l_618 = (void*)0;
        int32_t ***l_621 = &p_1273->g_133[3];
        int64_t *l_622 = &p_1273->g_399;
        int32_t *l_625 = &p_1273->g_6;
        int8_t l_752 = 4L;
        int32_t l_762 = (-7L);
        int32_t l_781 = 1L;
        int32_t l_784 = 6L;
        int32_t l_786 = 0x2CC4FB5AL;
        if ((*p_35))
        { /* block id: 312 */
            for (p_1273->g_154 = 0; (p_1273->g_154 <= 7); p_1273->g_154 = safe_add_func_int16_t_s_s(p_1273->g_154, 7))
            { /* block id: 315 */
                uint64_t l_588 = 0xBC1A2594505ED3FDL;
                if (l_588)
                    break;
                if (l_588)
                    break;
            }
        }
        else
        { /* block id: 319 */
            int64_t *l_602 = (void*)0;
            int32_t l_607 = 0L;
            p_37 = (**p_1273->g_262);
            (*p_37) = ((safe_div_func_int8_t_s_s((safe_div_func_int64_t_s_s((safe_mod_func_uint8_t_u_u((((*l_491) = (safe_add_func_int32_t_s_s((safe_add_func_int16_t_s_s((-1L), (((*l_498) ^= (safe_mod_func_int64_t_s_s((p_1273->g_comm_values[p_1273->tid] = (!((*l_494) ^= ((0UL >= l_601) , p_1273->g_215)))), 0x728D9AD2569C6403L))) || l_601))), (*p_35)))) > (safe_add_func_uint64_t_u_u((safe_add_func_int32_t_s_s(l_607, (p_1273->g_358[1][7][1] , (*p_35)))), p_36))), p_34)), (-1L))), p_1273->g_203)) == (***p_1273->g_262));
        }
        if ((safe_lshift_func_int8_t_s_u(((*p_1273->g_289) = 0x5DL), 4)))
        { /* block id: 328 */
            (*p_1273->g_623) = (safe_rshift_func_uint16_t_u_u((((((*p_1273->g_134) = (safe_sub_func_uint16_t_u_u((8UL && (!(safe_add_func_int32_t_s_s((*p_35), (safe_rshift_func_int8_t_s_s((l_618 != l_618), 4)))))), (safe_mul_func_uint8_t_u_u((p_1273->g_358[1][7][1] , (&p_1273->g_133[0] == (p_1273->g_262 = l_621))), 0x1EL))))) < (((((void*)0 != l_622) <= (*p_1273->g_289)) >= p_1273->g_151) && 0x061B0DADL)) , (***l_621)) ^ 0x25075C395927EA66L), 14));
        }
        else
        { /* block id: 332 */
            uint64_t *l_624[2][3][1];
            int32_t *l_626 = (void*)0;
            int i, j, k;
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 3; j++)
                {
                    for (k = 0; k < 1; k++)
                        l_624[i][j][k] = &p_1273->g_162;
                }
            }
            if ((p_34 && ((*l_498) = (l_624[0][1][0] != l_624[0][1][0]))))
            { /* block id: 334 */
                (*p_37) = l_521;
                if ((*p_35))
                    continue;
            }
            else
            { /* block id: 337 */
                (**l_621) = l_625;
            }
            return l_626;
        }
        for (l_521 = 0; (l_521 == 18); l_521 = safe_add_func_int32_t_s_s(l_521, 6))
        { /* block id: 344 */
            uint32_t l_633 = 0x3937B86FL;
            int8_t ***l_673 = &p_1273->g_288[0][1];
            int32_t l_737 = 0x793E2C28L;
            int32_t l_760 = 0x1526C105L;
            int32_t *l_761 = &l_484;
            int32_t l_782 = 8L;
            int32_t l_783[3][9] = {{(-1L),0L,0x28B8CF7FL,0L,(-1L),(-1L),0L,0x28B8CF7FL,0L},{(-1L),0L,0x28B8CF7FL,0L,(-1L),(-1L),0L,0x28B8CF7FL,0L},{(-1L),0L,0x28B8CF7FL,0L,(-1L),(-1L),0L,0x28B8CF7FL,0L}};
            uint64_t l_787 = 6UL;
            uint32_t l_802 = 0x6B593C13L;
            int i, j;
            for (p_1273->g_399 = 2; (p_1273->g_399 >= 0); p_1273->g_399 -= 1)
            { /* block id: 347 */
                int8_t ***l_648 = &p_1273->g_288[0][4];
                int8_t ****l_649 = &l_648;
                int32_t *l_654[8] = {&p_1273->g_155,&p_1273->g_155,&p_1273->g_155,&p_1273->g_155,&p_1273->g_155,&p_1273->g_155,&p_1273->g_155,&p_1273->g_155};
                int32_t l_655 = 0x48CA5357L;
                int32_t *l_656[8];
                uint32_t *l_674[7];
                uint64_t *l_676 = &p_1273->g_112;
                int64_t ***l_682 = &l_681;
                int i, j, k;
                for (i = 0; i < 8; i++)
                    l_656[i] = &l_484;
                for (i = 0; i < 7; i++)
                    l_674[i] = &p_1273->g_675;
                (1 + 1);
            }
            for (p_1273->g_6 = 0; (p_1273->g_6 <= 3); p_1273->g_6 += 1)
            { /* block id: 418 */
                uint8_t *l_769 = &p_1273->g_158;
                uint8_t *l_772 = &p_1273->g_270;
                uint8_t *l_773 = &p_1273->g_774;
                int32_t l_776 = 0x6EE2D48FL;
                int32_t *l_777 = &l_760;
                int32_t *l_778 = &l_582;
                int32_t *l_779 = &p_1273->g_58;
                int32_t *l_780[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int16_t **l_797 = &p_1273->g_280;
                int16_t ***l_796 = &l_797;
                int16_t **l_799 = &l_498;
                int16_t ***l_798 = &l_799;
                uint64_t *l_800 = &p_1273->g_112;
                uint64_t *l_801[10][9][2] = {{{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364}},{{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364}},{{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364}},{{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364}},{{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364}},{{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364}},{{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364}},{{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364}},{{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364}},{{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364},{&l_703,&p_1273->g_364}}};
                int i, j, k;
                (**l_621) = func_91((safe_mod_func_uint8_t_u_u(((***l_621) , 0xC1L), ((((((((safe_lshift_func_int8_t_s_u(l_703, 6)) == (*p_1273->g_289)) , ((***l_621) < ((*l_773) = ((*l_772) = (++(*l_769)))))) | ((((*l_761) , p_36) , l_775) > (p_1273->g_147 <= (-1L)))) != l_582) == p_36) , (***l_621)) , l_776))), l_776, p_1273);
                ++l_787;
                (*l_778) = ((safe_div_func_int64_t_s_s((*l_625), (((((***l_673) = 0x71L) , (p_1273->g_364 = (safe_lshift_func_uint8_t_u_u((8UL <= (safe_add_func_uint32_t_u_u(p_34, ((*l_761) = (*l_761))))), (0x148DL || (((*l_800) = (((((((*l_798) = ((*l_796) = &p_1273->g_280)) == &p_1273->g_281[5][2][1]) < p_34) || 0x74L) && 0x583AL) >= 0x151D06BEAADA4999L)) == 0UL)))))) < (*l_777)) & 0x2A38L))) || l_802);
            }
        }
        for (p_1273->g_149 = 0; (p_1273->g_149 < 15); p_1273->g_149 = safe_add_func_uint64_t_u_u(p_1273->g_149, 6))
        { /* block id: 435 */
            uint32_t l_828[3];
            uint8_t l_830 = 251UL;
            int32_t l_836[8][5] = {{0L,0x3904DFA5L,0L,0L,0x3904DFA5L},{0L,0x3904DFA5L,0L,0L,0x3904DFA5L},{0L,0x3904DFA5L,0L,0L,0x3904DFA5L},{0L,0x3904DFA5L,0L,0L,0x3904DFA5L},{0L,0x3904DFA5L,0L,0L,0x3904DFA5L},{0L,0x3904DFA5L,0L,0L,0x3904DFA5L},{0L,0x3904DFA5L,0L,0L,0x3904DFA5L},{0L,0x3904DFA5L,0L,0L,0x3904DFA5L}};
            int32_t **l_837 = &p_1273->g_134;
            int i, j;
            for (i = 0; i < 3; i++)
                l_828[i] = 6UL;
            for (p_1273->g_130 = 0; (p_1273->g_130 <= 3); p_1273->g_130 += 1)
            { /* block id: 438 */
                int32_t l_810 = 0x66A10A0FL;
                uint32_t *l_811 = &p_1273->g_706;
                int32_t *l_829[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int i, j, k;
                l_784 &= (GROUP_DIVERGE(0, 1) | (((!((*l_622) = (safe_mod_func_uint32_t_u_u((p_1273->g_358[(p_1273->g_130 + 2)][(p_1273->g_130 + 1)][p_1273->g_130] ^ (((p_1273->g_154 >= (+((((((safe_add_func_int16_t_s_s((1L || p_34), (safe_unary_minus_func_int16_t_s(((((l_785 ^= ((*l_811)--)) >= (safe_mod_func_int64_t_s_s(((safe_mod_func_int16_t_s_s(0x55ADL, (((l_703 || (safe_sub_func_uint32_t_u_u((l_484 = (l_484 < (safe_rshift_func_int16_t_s_s((l_484 < ((safe_mod_func_uint64_t_u_u((***l_621), 5UL)) && 0L)), 12)))), 0x2B886940L))) < l_828[2]) & p_36))) > p_34), p_1273->g_149))) | p_1273->g_6) , p_34))))) , p_1273->g_4) , p_34) >= p_34) || p_1273->g_149) == l_601))) && l_810) , (*p_35))), (***p_1273->g_262))))) , 0x5D5CL) >= 65533UL));
                l_830 = (*p_35);
            }
            for (p_1273->g_399 = 2; (p_1273->g_399 >= 0); p_1273->g_399 -= 1)
            { /* block id: 448 */
                (1 + 1);
            }
        }
    }
    return p_35;
}


/* ------------------------------------------ */
/* 
 * reads : p_1273->g_comm_values p_1273->g_3 p_1273->g_6 p_1273->g_58 p_1273->g_75 p_1273->l_comm_values p_1273->g_4 p_1273->g_130 p_1273->g_133 p_1273->g_134 p_1273->g_155 p_1273->g_112 p_1273->g_162 p_1273->g_202 p_1273->g_281 p_1273->g_147 p_1273->g_282 p_1273->g_145 p_1273->g_284
 * writes: p_1273->g_6 p_1273->g_58 p_1273->g_75 p_1273->g_3 p_1273->g_112 p_1273->g_130 p_1273->g_133 p_1273->g_145 p_1273->g_147 p_1273->g_149 p_1273->g_151 p_1273->g_154 p_1273->g_155 p_1273->g_158 p_1273->g_162 p_1273->g_270 p_1273->g_280 p_1273->g_282 p_1273->g_284
 */
int8_t  func_38(int32_t * p_39, int32_t  p_40, int32_t  p_41, uint16_t  p_42, int32_t * p_43, struct S0 * p_1273)
{ /* block id: 19 */
    int32_t l_67 = 0x5C681E8BL;
    int32_t l_73 = 5L;
    int32_t l_95 = 0x3618F96BL;
    int32_t l_105 = 0x27EC9291L;
    int32_t *l_109 = &l_73;
    int32_t **l_108 = &l_109;
    int8_t **l_290 = &p_1273->g_289;
    int8_t **l_291[3][10] = {{&p_1273->g_289,(void*)0,&p_1273->g_289,&p_1273->g_289,(void*)0,&p_1273->g_289,&p_1273->g_289,(void*)0,&p_1273->g_289,&p_1273->g_289},{&p_1273->g_289,(void*)0,&p_1273->g_289,&p_1273->g_289,(void*)0,&p_1273->g_289,&p_1273->g_289,(void*)0,&p_1273->g_289,&p_1273->g_289},{&p_1273->g_289,(void*)0,&p_1273->g_289,&p_1273->g_289,(void*)0,&p_1273->g_289,&p_1273->g_289,(void*)0,&p_1273->g_289,&p_1273->g_289}};
    int32_t l_326 = 0x384C7760L;
    uint8_t l_386[7][2][2] = {{{0x02L,0x02L},{0x02L,0x02L}},{{0x02L,0x02L},{0x02L,0x02L}},{{0x02L,0x02L},{0x02L,0x02L}},{{0x02L,0x02L},{0x02L,0x02L}},{{0x02L,0x02L},{0x02L,0x02L}},{{0x02L,0x02L},{0x02L,0x02L}},{{0x02L,0x02L},{0x02L,0x02L}}};
    int16_t l_414 = (-6L);
    int32_t l_423 = 0x31B8BED1L;
    int32_t l_432[9][4] = {{0x5D2D64B4L,0L,1L,0x346E91FFL},{0x5D2D64B4L,0L,1L,0x346E91FFL},{0x5D2D64B4L,0L,1L,0x346E91FFL},{0x5D2D64B4L,0L,1L,0x346E91FFL},{0x5D2D64B4L,0L,1L,0x346E91FFL},{0x5D2D64B4L,0L,1L,0x346E91FFL},{0x5D2D64B4L,0L,1L,0x346E91FFL},{0x5D2D64B4L,0L,1L,0x346E91FFL},{0x5D2D64B4L,0L,1L,0x346E91FFL}};
    int i, j, k;
    (*p_39) = (safe_lshift_func_int8_t_s_s(p_1273->g_comm_values[p_1273->tid], 6));
    (*p_39) = p_1273->g_3[0][0];
    for (p_1273->g_6 = 0; (p_1273->g_6 != 15); p_1273->g_6++)
    { /* block id: 24 */
        uint32_t l_61 = 1UL;
        int32_t l_74[5][10] = {{0x37CA390AL,(-5L),0x1313D863L,0x223651BEL,9L,0x223651BEL,0x1313D863L,(-5L),0x37CA390AL,0x1313D863L},{0x37CA390AL,(-5L),0x1313D863L,0x223651BEL,9L,0x223651BEL,0x1313D863L,(-5L),0x37CA390AL,0x1313D863L},{0x37CA390AL,(-5L),0x1313D863L,0x223651BEL,9L,0x223651BEL,0x1313D863L,(-5L),0x37CA390AL,0x1313D863L},{0x37CA390AL,(-5L),0x1313D863L,0x223651BEL,9L,0x223651BEL,0x1313D863L,(-5L),0x37CA390AL,0x1313D863L},{0x37CA390AL,(-5L),0x1313D863L,0x223651BEL,9L,0x223651BEL,0x1313D863L,(-5L),0x37CA390AL,0x1313D863L}};
        int32_t *l_80[5][8] = {{(void*)0,(void*)0,&l_74[3][8],&p_1273->g_6,(void*)0,&p_1273->g_6,&l_74[3][8],(void*)0},{(void*)0,(void*)0,&l_74[3][8],&p_1273->g_6,(void*)0,&p_1273->g_6,&l_74[3][8],(void*)0},{(void*)0,(void*)0,&l_74[3][8],&p_1273->g_6,(void*)0,&p_1273->g_6,&l_74[3][8],(void*)0},{(void*)0,(void*)0,&l_74[3][8],&p_1273->g_6,(void*)0,&p_1273->g_6,&l_74[3][8],(void*)0},{(void*)0,(void*)0,&l_74[3][8],&p_1273->g_6,(void*)0,&p_1273->g_6,&l_74[3][8],(void*)0}};
        int i, j;
        for (p_41 = 0; (p_41 > (-13)); --p_41)
        { /* block id: 27 */
            int32_t *l_56 = (void*)0;
            int32_t *l_57 = &p_1273->g_58;
            int32_t *l_59 = (void*)0;
            int32_t *l_60[5];
            int i;
            for (i = 0; i < 5; i++)
                l_60[i] = &p_1273->g_58;
            l_61--;
            for (p_1273->g_58 = 23; (p_1273->g_58 == 24); p_1273->g_58 = safe_add_func_uint16_t_u_u(p_1273->g_58, 4))
            { /* block id: 31 */
                int32_t l_66[10];
                int32_t l_68 = 0x0DC3605AL;
                int32_t l_69 = 0L;
                int32_t l_70 = 0x520EAE73L;
                int32_t l_71 = 0x3CD9AAC9L;
                int32_t l_72 = 0x2CBA3753L;
                int i;
                for (i = 0; i < 10; i++)
                    l_66[i] = 0x070B1DE0L;
                p_1273->g_75++;
            }
            for (p_1273->g_58 = (-18); (p_1273->g_58 != (-17)); p_1273->g_58++)
            { /* block id: 36 */
                p_1273->g_3[0][0] = (0x7A6E0921L <= (p_40 & 0x4102D430L));
            }
        }
        p_40 |= p_1273->g_3[0][0];
    }
    for (l_73 = 0; (l_73 <= (-28)); l_73 = safe_sub_func_uint8_t_u_u(l_73, 9))
    { /* block id: 44 */
        uint16_t l_94 = 65535UL;
        int32_t **l_100 = (void*)0;
        int32_t *l_107[9][3] = {{&l_73,&l_67,&p_1273->g_6},{&l_73,&l_67,&p_1273->g_6},{&l_73,&l_67,&p_1273->g_6},{&l_73,&l_67,&p_1273->g_6},{&l_73,&l_67,&p_1273->g_6},{&l_73,&l_67,&p_1273->g_6},{&l_73,&l_67,&p_1273->g_6},{&l_73,&l_67,&p_1273->g_6},{&l_73,&l_67,&p_1273->g_6}};
        int32_t *l_110 = &l_67;
        uint64_t *l_111 = &p_1273->g_112;
        int8_t *l_286 = (void*)0;
        int8_t **l_285 = &l_286;
        int8_t ***l_287[3][4][2] = {{{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285}},{{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285}},{{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285}}};
        int16_t *l_296 = &p_1273->g_284;
        int16_t *l_297 = (void*)0;
        int16_t *l_298 = &p_1273->g_282[0][5];
        int64_t *l_301 = (void*)0;
        int64_t *l_302[6][9][4] = {{{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]}},{{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]}},{{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]}},{{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]}},{{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]}},{{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]},{&p_1273->g_202[3][2],&p_1273->g_202[3][2],&p_1273->g_202[1][0],&p_1273->g_202[0][1]}}};
        uint32_t *l_304 = &p_1273->g_75;
        uint32_t **l_303 = &l_304;
        uint64_t l_342 = 0UL;
        int i, j, k;
        p_1273->g_284 ^= func_44(func_83(l_67, ((*l_111) = (l_67 != (func_44(func_87((func_44(func_91((l_95 = l_94), (safe_lshift_func_int16_t_s_s((((safe_mul_func_int8_t_s_s(((l_100 != (void*)0) , (safe_mod_func_int8_t_s_s(0x55L, (safe_mod_func_int8_t_s_s((+(p_1273->g_58 < ((+p_40) != ((p_1273->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1273->tid, 10))] || 1UL) < 0x5BL)))), p_42))))), (-4L))) > p_1273->g_4) , l_105), 1)), p_1273), l_107[5][0], p_1273) , p_1273->g_comm_values[p_1273->tid]), p_1273->g_comm_values[p_1273->tid], l_108, p_1273), l_110, p_1273) | p_1273->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1273->tid, 10))]))), &p_1273->g_4, p_1273), &p_1273->g_6, p_1273);
    }
    return p_41;
}


/* ------------------------------------------ */
/* 
 * reads : p_1273->g_4
 * writes:
 */
uint16_t  func_44(int32_t * p_45, int32_t * p_46, struct S0 * p_1273)
{ /* block id: 16 */
    int32_t **l_47 = (void*)0;
    int32_t *l_49 = &p_1273->g_4;
    int32_t **l_48 = &l_49;
    (*l_48) = &p_1273->g_4;
    return (**l_48);
}


/* ------------------------------------------ */
/* 
 * reads : p_1273->g_4 p_1273->g_6 p_1273->g_3 p_1273->g_130 p_1273->g_133 p_1273->g_75 p_1273->g_134 p_1273->g_58 p_1273->l_comm_values p_1273->g_comm_values p_1273->g_155 p_1273->g_112 p_1273->g_162 p_1273->g_149 p_1273->g_202 p_1273->g_281 p_1273->g_147 p_1273->g_282 p_1273->g_145
 * writes: p_1273->g_130 p_1273->g_133 p_1273->g_145 p_1273->g_147 p_1273->g_149 p_1273->g_151 p_1273->g_154 p_1273->g_155 p_1273->g_158 p_1273->g_112 p_1273->g_162 p_1273->g_270 p_1273->g_280 p_1273->g_282 p_1273->g_58
 */
int32_t * func_83(int32_t  p_84, uint64_t  p_85, int32_t * p_86, struct S0 * p_1273)
{ /* block id: 52 */
    uint16_t *l_129 = &p_1273->g_130;
    int32_t ***l_135[5] = {&p_1273->g_133[6],&p_1273->g_133[6],&p_1273->g_133[6],&p_1273->g_133[6],&p_1273->g_133[6]};
    int8_t *l_144 = &p_1273->g_145;
    int8_t *l_146 = &p_1273->g_147;
    int8_t *l_148 = &p_1273->g_149;
    uint16_t *l_150 = &p_1273->g_151;
    uint16_t *l_152 = (void*)0;
    uint16_t *l_153 = &p_1273->g_154;
    int16_t l_156 = 0L;
    uint8_t *l_157 = &p_1273->g_158;
    uint32_t l_159 = 0x73AD305CL;
    uint64_t *l_160 = &p_1273->g_112;
    uint64_t *l_161[10][4] = {{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162,&p_1273->g_162},{&p_1273->g_162,&p_1273->g_162,&p_1273->g_162,&p_1273->g_162}};
    int32_t *l_163 = &p_1273->g_6;
    int32_t l_235 = (-1L);
    int16_t *l_269[8][5] = {{&l_156,&l_156,(void*)0,&l_156,&l_156},{&l_156,&l_156,(void*)0,&l_156,&l_156},{&l_156,&l_156,(void*)0,&l_156,&l_156},{&l_156,&l_156,(void*)0,&l_156,&l_156},{&l_156,&l_156,(void*)0,&l_156,&l_156},{&l_156,&l_156,(void*)0,&l_156,&l_156},{&l_156,&l_156,(void*)0,&l_156,&l_156},{&l_156,&l_156,(void*)0,&l_156,&l_156}};
    int16_t **l_279[10] = {&l_269[0][2],&l_269[0][2],&l_269[0][2],&l_269[0][2],&l_269[0][2],&l_269[0][2],&l_269[0][2],&l_269[0][2],&l_269[0][2],&l_269[0][2]};
    uint16_t l_283 = 0UL;
    int i, j;
    l_163 = func_87(p_1273->g_4, (p_1273->g_162 &= ((((*l_160) = (p_1273->g_6 | ((safe_div_func_int8_t_s_s((((safe_mul_func_uint16_t_u_u(((((safe_mul_func_uint8_t_u_u(((*l_157) = ((((&p_85 != ((safe_mod_func_int32_t_s_s((p_1273->g_155 &= ((safe_mod_func_int16_t_s_s((0UL | p_1273->g_3[0][0]), ((*l_153) = ((*l_150) = ((safe_lshift_func_uint8_t_u_u((safe_mod_func_int64_t_s_s((((*l_148) = ((*l_146) = ((safe_lshift_func_uint16_t_u_s((++(*l_129)), ((p_1273->g_133[1] = p_1273->g_133[6]) == (void*)0))) == ((p_1273->g_75 && ((*l_144) = (safe_sub_func_uint64_t_u_u((safe_add_func_uint16_t_u_u(((((safe_add_func_int16_t_s_s((safe_mod_func_int32_t_s_s(((4294967289UL || FAKE_DIVERGE(p_1273->local_0_offset, get_local_id(0), 10)) >= p_84), (*p_1273->g_134))), p_1273->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1273->tid, 10))])) & p_1273->g_comm_values[p_1273->tid]) != (-1L)) ^ (*p_1273->g_134)), p_1273->g_6)), FAKE_DIVERGE(p_1273->global_2_offset, get_global_id(2), 10))))) & 0x49AF3359L)))) ^ 255UL), p_1273->g_58)), p_84)) || 0xE5D3D61C39D5F78CL))))) ^ p_1273->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1273->tid, 10))])), (*p_86))) , &p_1273->g_112)) , p_84) ^ p_84) & l_156)), FAKE_DIVERGE(p_1273->group_1_offset, get_group_id(1), 10))) >= p_1273->g_comm_values[p_1273->tid]) != p_1273->g_112) != p_1273->g_58), l_159)) | (-9L)) | 0xCFL), 9UL)) > 0x90A5E1540130CC3CL))) == 0x2099D88FCDEF65FCL) == 65535UL)), &p_1273->g_134, p_1273);
    for (p_1273->g_149 = 0; (p_1273->g_149 > 14); p_1273->g_149++)
    { /* block id: 67 */
        int64_t l_182 = 1L;
        int32_t l_240 = 0x3252DF24L;
        int32_t l_242 = 0x6B0DDB8EL;
        int32_t l_245 = (-7L);
        int32_t l_246[3];
        int32_t l_248 = 1L;
        int16_t l_252 = 0x493EL;
        uint16_t l_255 = 0x1777L;
        int8_t *l_266[1];
        int i;
        for (i = 0; i < 3; i++)
            l_246[i] = (-7L);
        for (i = 0; i < 1; i++)
            l_266[i] = &p_1273->g_149;
        (1 + 1);
    }
    (*p_1273->g_134) = (l_283 ^= (((((*l_148) = ((*l_144) |= ((0xCCL | (((((p_1273->g_270 = p_84) , ((*l_163) > (p_1273->g_202[3][2] , p_1273->g_202[2][0]))) & (safe_add_func_int8_t_s_s(((+((p_85 && (safe_div_func_int32_t_s_s((safe_div_func_uint8_t_u_u(((p_1273->g_282[0][5] ^= (safe_div_func_int64_t_s_s(((p_1273->g_280 = &l_156) != ((GROUP_DIVERGE(0, 1) || 0x35DEE8C9L) , p_1273->g_281[5][2][1])), p_1273->g_147))) > p_1273->g_162), (*l_163))), GROUP_DIVERGE(1, 1)))) , (*p_86))) , (-1L)), 0x31L))) , p_85) >= 1UL)) != FAKE_DIVERGE(p_1273->local_0_offset, get_local_id(0), 10)))) == 0x28L) > p_1273->g_202[1][2]) < p_1273->g_58));
    return p_86;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_87(int32_t  p_88, uint64_t  p_89, int32_t ** p_90, struct S0 * p_1273)
{ /* block id: 49 */
    return &p_1273->g_58;
}


/* ------------------------------------------ */
/* 
 * reads : p_1273->g_3
 * writes: p_1273->g_58
 */
int32_t * func_91(int32_t  p_92, uint64_t  p_93, struct S0 * p_1273)
{ /* block id: 46 */
    int32_t *l_106[5][9][4] = {{{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6}},{{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6}},{{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6}},{{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6}},{{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6},{&p_1273->g_58,&p_1273->g_6,(void*)0,&p_1273->g_6}}};
    int i, j, k;
    p_1273->g_58 = (p_1273->g_3[0][0] ^ 5UL);
    return &p_1273->g_6;
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[10];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 10; i++)
            l_comm_values[i] = 1;
    struct S0 c_1274;
    struct S0* p_1273 = &c_1274;
    struct S0 c_1275 = {
        {{(-1L)}}, // p_1273->g_3
        0L, // p_1273->g_4
        (-1L), // p_1273->g_6
        0x32529581L, // p_1273->g_58
        4294967291UL, // p_1273->g_75
        0xDD1F410086F9374BL, // p_1273->g_112
        65529UL, // p_1273->g_130
        &p_1273->g_58, // p_1273->g_134
        {&p_1273->g_134,&p_1273->g_134,&p_1273->g_134,&p_1273->g_134,&p_1273->g_134,&p_1273->g_134,&p_1273->g_134,&p_1273->g_134,&p_1273->g_134}, // p_1273->g_133
        8L, // p_1273->g_145
        0x26L, // p_1273->g_147
        (-1L), // p_1273->g_149
        0x4198L, // p_1273->g_151
        65535UL, // p_1273->g_154
        0x2AD8C3D5L, // p_1273->g_155
        0UL, // p_1273->g_158
        18446744073709551615UL, // p_1273->g_162
        {{1L,1L,1L},{1L,1L,1L},{1L,1L,1L},{1L,1L,1L}}, // p_1273->g_202
        0x49E9CF38L, // p_1273->g_203
        0x7C271D09L, // p_1273->g_215
        &p_1273->g_133[7], // p_1273->g_262
        0xE9L, // p_1273->g_270
        (void*)0, // p_1273->g_280
        {{0x4DB8L,0x4DB8L,0x4DB8L,0x4DB8L,0x4DB8L,0x4DB8L,0x4DB8L,0x4DB8L}}, // p_1273->g_282
        {{{(void*)0,(void*)0,&p_1273->g_282[0][5],(void*)0,&p_1273->g_282[0][5],(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1273->g_282[0][5],(void*)0,&p_1273->g_282[0][5],(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1273->g_282[0][5],(void*)0,&p_1273->g_282[0][5],(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_1273->g_282[0][5],(void*)0,&p_1273->g_282[0][5],(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1273->g_282[0][5],(void*)0,&p_1273->g_282[0][5],(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1273->g_282[0][5],(void*)0,&p_1273->g_282[0][5],(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_1273->g_282[0][5],(void*)0,&p_1273->g_282[0][5],(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1273->g_282[0][5],(void*)0,&p_1273->g_282[0][5],(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1273->g_282[0][5],(void*)0,&p_1273->g_282[0][5],(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_1273->g_282[0][5],(void*)0,&p_1273->g_282[0][5],(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1273->g_282[0][5],(void*)0,&p_1273->g_282[0][5],(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1273->g_282[0][5],(void*)0,&p_1273->g_282[0][5],(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_1273->g_282[0][5],(void*)0,&p_1273->g_282[0][5],(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1273->g_282[0][5],(void*)0,&p_1273->g_282[0][5],(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1273->g_282[0][5],(void*)0,&p_1273->g_282[0][5],(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_1273->g_282[0][5],(void*)0,&p_1273->g_282[0][5],(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1273->g_282[0][5],(void*)0,&p_1273->g_282[0][5],(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1273->g_282[0][5],(void*)0,&p_1273->g_282[0][5],(void*)0,(void*)0,(void*)0}}}, // p_1273->g_281
        1L, // p_1273->g_284
        &p_1273->g_149, // p_1273->g_289
        {{&p_1273->g_289,&p_1273->g_289,&p_1273->g_289,&p_1273->g_289,&p_1273->g_289,&p_1273->g_289}}, // p_1273->g_288
        (void*)0, // p_1273->g_305
        {{{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L}},{{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L}},{{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L}},{{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L}},{{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L}},{{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L},{0x44CE0D4BL,0x039C4FD5L,0xCA980FCDL,0xAE903ED1L}}}, // p_1273->g_358
        0x6B80936B5DF26AEDL, // p_1273->g_364
        0x2A7EL, // p_1273->g_388
        8L, // p_1273->g_399
        1UL, // p_1273->g_425
        {{&p_1273->g_6},{&p_1273->g_6},{&p_1273->g_6},{&p_1273->g_6},{&p_1273->g_6}}, // p_1273->g_473
        0x71107104L, // p_1273->g_481
        {0x104C008DL,0x104C008DL,0x104C008DL,0x104C008DL,0x104C008DL,0x104C008DL}, // p_1273->g_548
        (void*)0, // p_1273->g_565
        &p_1273->g_473[1][0], // p_1273->g_567
        &p_1273->g_58, // p_1273->g_623
        0x306DDD6AL, // p_1273->g_675
        0xD2100282L, // p_1273->g_706
        (void*)0, // p_1273->g_707
        8UL, // p_1273->g_774
        &p_1273->g_58, // p_1273->g_831
        &p_1273->g_358[1][7][1], // p_1273->g_842
        {{{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842}},{{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842}},{{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842}},{{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842}},{{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842}},{{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842},{&p_1273->g_842,&p_1273->g_842,&p_1273->g_842,&p_1273->g_842}}}, // p_1273->g_841
        0x87L, // p_1273->g_912
        4294967295UL, // p_1273->g_927
        &p_1273->g_927, // p_1273->g_926
        {{(void*)0,&p_1273->g_926,&p_1273->g_926,&p_1273->g_926,(void*)0,(void*)0,&p_1273->g_926,&p_1273->g_926,&p_1273->g_926},{(void*)0,&p_1273->g_926,&p_1273->g_926,&p_1273->g_926,(void*)0,(void*)0,&p_1273->g_926,&p_1273->g_926,&p_1273->g_926},{(void*)0,&p_1273->g_926,&p_1273->g_926,&p_1273->g_926,(void*)0,(void*)0,&p_1273->g_926,&p_1273->g_926,&p_1273->g_926}}, // p_1273->g_925
        (void*)0, // p_1273->g_933
        &p_1273->g_933, // p_1273->g_932
        (-1L), // p_1273->g_972
        0x0C4C0631L, // p_1273->g_979
        0x673498DA7FD70835L, // p_1273->g_1020
        (void*)0, // p_1273->g_1024
        0x45C3E5BCL, // p_1273->g_1057
        &p_1273->g_473[1][0], // p_1273->g_1066
        {{{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280}},{{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280}},{{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280}},{{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280}},{{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280}},{{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280}},{{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280},{&p_1273->g_280,(void*)0,&p_1273->g_280}}}, // p_1273->g_1130
        &p_1273->g_1130[0][4][1], // p_1273->g_1129
        (void*)0, // p_1273->g_1187
        {&p_1273->g_1187,&p_1273->g_1187,&p_1273->g_1187,&p_1273->g_1187,&p_1273->g_1187,&p_1273->g_1187,&p_1273->g_1187}, // p_1273->g_1186
        &p_1273->g_162, // p_1273->g_1203
        1UL, // p_1273->g_1249
        &p_1273->g_1249, // p_1273->g_1248
        &p_1273->g_1248, // p_1273->g_1247
        6L, // p_1273->g_1257
        &p_1273->g_155, // p_1273->g_1272
        sequence_input[get_global_id(0)], // p_1273->global_0_offset
        sequence_input[get_global_id(1)], // p_1273->global_1_offset
        sequence_input[get_global_id(2)], // p_1273->global_2_offset
        sequence_input[get_local_id(0)], // p_1273->local_0_offset
        sequence_input[get_local_id(1)], // p_1273->local_1_offset
        sequence_input[get_local_id(2)], // p_1273->local_2_offset
        sequence_input[get_group_id(0)], // p_1273->group_0_offset
        sequence_input[get_group_id(1)], // p_1273->group_1_offset
        sequence_input[get_group_id(2)], // p_1273->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 10)), permutations[0][get_linear_local_id()])), // p_1273->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1274 = c_1275;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1273);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1273->g_3[i][j], "p_1273->g_3[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1273->g_4, "p_1273->g_4", print_hash_value);
    transparent_crc(p_1273->g_6, "p_1273->g_6", print_hash_value);
    transparent_crc(p_1273->g_58, "p_1273->g_58", print_hash_value);
    transparent_crc(p_1273->g_75, "p_1273->g_75", print_hash_value);
    transparent_crc(p_1273->g_112, "p_1273->g_112", print_hash_value);
    transparent_crc(p_1273->g_130, "p_1273->g_130", print_hash_value);
    transparent_crc(p_1273->g_145, "p_1273->g_145", print_hash_value);
    transparent_crc(p_1273->g_147, "p_1273->g_147", print_hash_value);
    transparent_crc(p_1273->g_149, "p_1273->g_149", print_hash_value);
    transparent_crc(p_1273->g_151, "p_1273->g_151", print_hash_value);
    transparent_crc(p_1273->g_154, "p_1273->g_154", print_hash_value);
    transparent_crc(p_1273->g_155, "p_1273->g_155", print_hash_value);
    transparent_crc(p_1273->g_158, "p_1273->g_158", print_hash_value);
    transparent_crc(p_1273->g_162, "p_1273->g_162", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1273->g_202[i][j], "p_1273->g_202[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1273->g_203, "p_1273->g_203", print_hash_value);
    transparent_crc(p_1273->g_215, "p_1273->g_215", print_hash_value);
    transparent_crc(p_1273->g_270, "p_1273->g_270", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1273->g_282[i][j], "p_1273->g_282[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1273->g_284, "p_1273->g_284", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1273->g_358[i][j][k], "p_1273->g_358[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1273->g_364, "p_1273->g_364", print_hash_value);
    transparent_crc(p_1273->g_388, "p_1273->g_388", print_hash_value);
    transparent_crc(p_1273->g_399, "p_1273->g_399", print_hash_value);
    transparent_crc(p_1273->g_425, "p_1273->g_425", print_hash_value);
    transparent_crc(p_1273->g_481, "p_1273->g_481", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1273->g_548[i], "p_1273->g_548[i]", print_hash_value);

    }
    transparent_crc(p_1273->g_675, "p_1273->g_675", print_hash_value);
    transparent_crc(p_1273->g_706, "p_1273->g_706", print_hash_value);
    transparent_crc(p_1273->g_774, "p_1273->g_774", print_hash_value);
    transparent_crc(p_1273->g_912, "p_1273->g_912", print_hash_value);
    transparent_crc(p_1273->g_927, "p_1273->g_927", print_hash_value);
    transparent_crc(p_1273->g_972, "p_1273->g_972", print_hash_value);
    transparent_crc(p_1273->g_979, "p_1273->g_979", print_hash_value);
    transparent_crc(p_1273->g_1020, "p_1273->g_1020", print_hash_value);
    transparent_crc(p_1273->g_1057, "p_1273->g_1057", print_hash_value);
    transparent_crc(p_1273->g_1249, "p_1273->g_1249", print_hash_value);
    transparent_crc(p_1273->g_1257, "p_1273->g_1257", print_hash_value);
    transparent_crc(p_1273->l_comm_values[get_linear_local_id()], "p_1273->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1273->g_comm_values[get_linear_group_id() * 10 + get_linear_local_id()], "p_1273->g_comm_values[get_linear_group_id() * 10 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
