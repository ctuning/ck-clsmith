// ---fake_divergence -g 3,1,1 -l 1,1,1
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


// Seed: 79

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_2[2];
    int32_t g_6[5][4];
    int64_t g_33;
    int16_t g_49[10][6][2];
    int64_t g_64;
    int32_t **g_70;
    int32_t g_91;
    int32_t g_102;
    int32_t g_104[3][10];
    uint32_t g_115[5][6][4];
    uint16_t g_158;
    int64_t **g_174;
    uint8_t g_182;
    uint32_t g_183;
    uint16_t g_194;
    int32_t *g_196;
    int32_t **g_195;
    uint64_t g_205;
    int8_t g_249;
    int8_t *g_248[6];
    uint8_t g_258;
    volatile int16_t g_262[10][1][1];
    volatile int16_t *g_261;
    int64_t g_264[3][5];
    int16_t g_338;
    int16_t *g_337;
    uint32_t g_388;
    int64_t *g_421;
    uint16_t g_487;
    uint64_t g_511;
    uint32_t *** volatile g_517;
    uint32_t *g_520;
    uint32_t **g_519[2];
    uint32_t *** volatile g_518;
    int32_t g_530;
    int32_t *g_539;
    int32_t ** volatile g_538[10][8];
    int32_t ** volatile g_540;
    uint32_t *g_544;
    int8_t * volatile *g_596;
    int8_t * volatile **g_595[10];
    int32_t * volatile g_597;
    int32_t * volatile g_614;
    int16_t g_624[2][8];
    int64_t g_638;
    int32_t * volatile g_686[5];
    uint32_t *g_699;
    uint64_t g_712[6][8][1];
    int32_t * volatile g_743;
    uint32_t g_771;
    int8_t g_776[2][1];
    volatile int32_t g_825;
    uint16_t g_850;
    uint32_t g_879;
    uint32_t g_881;
    uint8_t *g_893;
    uint8_t **g_892;
    volatile uint8_t g_900;
    int32_t g_1211;
    int8_t g_1215;
    volatile int32_t * volatile g_1237;
    int64_t g_1269;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
};


/* --- FORWARD DECLARATIONS --- */
uint32_t  func_1(struct S0 * p_1385);
int32_t  func_26(int32_t  p_27, int32_t * p_28, int32_t * p_29, int8_t  p_30, int32_t  p_31, struct S0 * p_1385);
uint64_t  func_35(int32_t * p_36, int32_t * p_37, struct S0 * p_1385);
int32_t * func_38(int32_t ** p_39, uint8_t  p_40, int32_t  p_41, int64_t * p_42, int64_t * p_43, struct S0 * p_1385);
int8_t  func_54(int64_t * p_55, int64_t  p_56, struct S0 * p_1385);
int64_t * func_57(int64_t * p_58, uint64_t  p_59, int8_t  p_60, int32_t ** p_61, struct S0 * p_1385);
int32_t ** func_65(int32_t ** p_66, int64_t  p_67, int32_t * p_68, int16_t  p_69, struct S0 * p_1385);
int32_t  func_71(uint64_t  p_72, int64_t * p_73, int64_t ** p_74, int8_t  p_75, struct S0 * p_1385);
int64_t ** func_78(int32_t * p_79, int32_t  p_80, int32_t * p_81, int32_t * p_82, int64_t * p_83, struct S0 * p_1385);
int32_t * func_84(uint32_t  p_85, int64_t * p_86, int32_t ** p_87, int32_t * p_88, struct S0 * p_1385);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1385->g_2 p_1385->g_511 p_1385->g_540 p_1385->g_881 p_1385->g_892 p_1385->g_893 p_1385->g_258 p_1385->g_712 p_1385->g_115 p_1385->g_597 p_1385->g_91 p_1385->g_337 p_1385->g_338 p_1385->g_520 p_1385->g_249 p_1385->g_638 p_1385->g_264 p_1385->g_596 p_1385->g_248 p_1385->g_421 p_1385->g_64 p_1385->g_196 p_1385->g_614 p_1385->g_104 p_1385->g_195
 * writes: p_1385->g_2 p_1385->g_511 p_1385->g_539 p_1385->g_881 p_1385->g_850 p_1385->g_49 p_1385->g_6
 */
uint32_t  func_1(struct S0 * p_1385)
{ /* block id: 4 */
    uint32_t l_14 = 0UL;
    int32_t *l_18[9][7] = {{&p_1385->g_2[1],&p_1385->g_2[1],&p_1385->g_2[0],&p_1385->g_2[0],&p_1385->g_2[1],&p_1385->g_2[1],&p_1385->g_2[1]},{&p_1385->g_2[1],&p_1385->g_2[1],&p_1385->g_2[0],&p_1385->g_2[0],&p_1385->g_2[1],&p_1385->g_2[1],&p_1385->g_2[1]},{&p_1385->g_2[1],&p_1385->g_2[1],&p_1385->g_2[0],&p_1385->g_2[0],&p_1385->g_2[1],&p_1385->g_2[1],&p_1385->g_2[1]},{&p_1385->g_2[1],&p_1385->g_2[1],&p_1385->g_2[0],&p_1385->g_2[0],&p_1385->g_2[1],&p_1385->g_2[1],&p_1385->g_2[1]},{&p_1385->g_2[1],&p_1385->g_2[1],&p_1385->g_2[0],&p_1385->g_2[0],&p_1385->g_2[1],&p_1385->g_2[1],&p_1385->g_2[1]},{&p_1385->g_2[1],&p_1385->g_2[1],&p_1385->g_2[0],&p_1385->g_2[0],&p_1385->g_2[1],&p_1385->g_2[1],&p_1385->g_2[1]},{&p_1385->g_2[1],&p_1385->g_2[1],&p_1385->g_2[0],&p_1385->g_2[0],&p_1385->g_2[1],&p_1385->g_2[1],&p_1385->g_2[1]},{&p_1385->g_2[1],&p_1385->g_2[1],&p_1385->g_2[0],&p_1385->g_2[0],&p_1385->g_2[1],&p_1385->g_2[1],&p_1385->g_2[1]},{&p_1385->g_2[1],&p_1385->g_2[1],&p_1385->g_2[0],&p_1385->g_2[0],&p_1385->g_2[1],&p_1385->g_2[1],&p_1385->g_2[1]}};
    int32_t **l_17 = &l_18[8][6];
    uint64_t *l_1281 = &p_1385->g_712[2][5][0];
    int32_t l_1383 = 0x15C46B5CL;
    int32_t l_1384 = 0x523E7AF0L;
    int i, j;
    for (p_1385->g_2[1] = 0; (p_1385->g_2[1] < 28); p_1385->g_2[1] = safe_add_func_uint16_t_u_u(p_1385->g_2[1], 8))
    { /* block id: 7 */
        int32_t *l_5 = &p_1385->g_6[1][1];
        int32_t *l_7 = &p_1385->g_6[2][1];
        int32_t *l_8 = &p_1385->g_6[0][2];
        int32_t *l_9 = &p_1385->g_6[1][1];
        int32_t l_10 = 4L;
        int32_t *l_11 = &p_1385->g_6[0][3];
        int32_t *l_12 = (void*)0;
        int32_t *l_13 = &p_1385->g_6[0][1];
        int64_t *l_1107 = &p_1385->g_264[2][1];
        int64_t *l_1108 = &p_1385->g_64;
        uint32_t **l_1305[10] = {&p_1385->g_520,&p_1385->g_699,&p_1385->g_520,&p_1385->g_520,&p_1385->g_699,&p_1385->g_520,&p_1385->g_520,&p_1385->g_699,&p_1385->g_520,&p_1385->g_520};
        int16_t l_1308 = 0x520DL;
        int32_t l_1311 = 1L;
        int i;
        l_14++;
    }
    for (p_1385->g_511 = 0; (p_1385->g_511 <= 1); p_1385->g_511 += 1)
    { /* block id: 575 */
        uint64_t l_1347 = 0x8B37B1315E696854L;
        uint32_t l_1379[7][7][4] = {{{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L}},{{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L}},{{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L}},{{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L}},{{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L}},{{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L}},{{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L},{4294967295UL,4294967286UL,0x89144675L,0x053D59E4L}}};
        int i, j, k;
        (*p_1385->g_540) = (void*)0;
        for (p_1385->g_881 = 0; (p_1385->g_881 <= 7); p_1385->g_881 += 1)
        { /* block id: 579 */
            int32_t l_1346 = 0x76B93371L;
            int i, j;
            l_1347--;
            for (l_1346 = 1; (l_1346 >= 0); l_1346 -= 1)
            { /* block id: 583 */
                int16_t l_1375 = 0x6EE5L;
                int32_t l_1380 = (-1L);
                int64_t l_1381[8][9] = {{0L,0x184B60DADFC2A3F5L,(-1L),0L,0x184B60DADFC2A3F5L,0L,(-1L),0x184B60DADFC2A3F5L,0L},{0L,0x184B60DADFC2A3F5L,(-1L),0L,0x184B60DADFC2A3F5L,0L,(-1L),0x184B60DADFC2A3F5L,0L},{0L,0x184B60DADFC2A3F5L,(-1L),0L,0x184B60DADFC2A3F5L,0L,(-1L),0x184B60DADFC2A3F5L,0L},{0L,0x184B60DADFC2A3F5L,(-1L),0L,0x184B60DADFC2A3F5L,0L,(-1L),0x184B60DADFC2A3F5L,0L},{0L,0x184B60DADFC2A3F5L,(-1L),0L,0x184B60DADFC2A3F5L,0L,(-1L),0x184B60DADFC2A3F5L,0L},{0L,0x184B60DADFC2A3F5L,(-1L),0L,0x184B60DADFC2A3F5L,0L,(-1L),0x184B60DADFC2A3F5L,0L},{0L,0x184B60DADFC2A3F5L,(-1L),0L,0x184B60DADFC2A3F5L,0L,(-1L),0x184B60DADFC2A3F5L,0L},{0L,0x184B60DADFC2A3F5L,(-1L),0L,0x184B60DADFC2A3F5L,0L,(-1L),0x184B60DADFC2A3F5L,0L}};
                uint16_t *l_1382 = &p_1385->g_850;
                int i, j, k;
                (*p_1385->g_196) = (safe_sub_func_int64_t_s_s(((&p_1385->g_158 == ((((safe_mul_func_uint8_t_u_u(((((safe_lshift_func_uint8_t_u_s((**p_1385->g_892), (safe_add_func_int16_t_s_s((safe_div_func_uint8_t_u_u(((p_1385->g_712[1][4][0] < (p_1385->g_49[(p_1385->g_511 + 3)][(l_1346 + 4)][p_1385->g_511] = (safe_mod_func_uint16_t_u_u((((safe_add_func_uint16_t_u_u(((safe_lshift_func_int8_t_s_s(((safe_lshift_func_uint16_t_u_s((((0x693A5866L <= (((*l_1382) = (((((((safe_unary_minus_func_int64_t_s(((safe_add_func_uint64_t_u_u((((safe_mod_func_int8_t_s_s(((((safe_lshift_func_uint16_t_u_s(l_1375, 2)) < (0xDDE4C1D98C5016BEL || ((((safe_unary_minus_func_int8_t_s(((safe_lshift_func_uint16_t_u_s((((+(p_1385->g_115[4][1][0] == (GROUP_DIVERGE(2, 1) >= ((*p_1385->g_597) == FAKE_DIVERGE(p_1385->local_2_offset, get_local_id(2), 10))))) | (l_1375 != 0UL)) | l_1379[3][0][2]), (*p_1385->g_337))) <= l_1375))) ^ l_1375) , 0xEE57B02FL) || (*p_1385->g_520)))) >= 0x24ECA67FL) | l_1380), l_1375)) ^ p_1385->g_115[2][1][2]) == l_1347), GROUP_DIVERGE(2, 1))) || 0x6ED8EC56L))) == l_1346) != (**p_1385->g_892)) <= 0x5BL) == l_1380) >= p_1385->g_249) | l_1381[6][5])) , 0x187A0815L)) , (*p_1385->g_893)) >= l_1379[1][5][2]), (*p_1385->g_337))) ^ (-1L)), 4)) && l_1379[2][5][0]), 0UL)) , p_1385->g_258) && (*p_1385->g_337)), p_1385->g_638)))) > FAKE_DIVERGE(p_1385->global_1_offset, get_global_id(1), 10)), (*p_1385->g_893))), p_1385->g_2[1])))) <= 5UL) <= p_1385->g_264[2][1]) && 2L), (**p_1385->g_596))) != p_1385->g_712[1][2][0]) > l_1383) , (void*)0)) || l_1346), (*p_1385->g_421)));
                (**p_1385->g_195) = (*p_1385->g_614);
            }
        }
    }
    return l_1384;
}


/* ------------------------------------------ */
/* 
 * reads : p_1385->g_1237 p_1385->g_825 p_1385->g_893 p_1385->g_258 p_1385->g_1269 p_1385->g_421 p_1385->g_64 p_1385->g_194 p_1385->g_892 p_1385->g_520 p_1385->g_195 p_1385->g_196 p_1385->g_6 p_1385->g_487 p_1385->g_511 p_1385->g_104 p_1385->g_337 p_1385->g_338
 * writes: p_1385->g_1237 p_1385->g_1269 p_1385->g_64 p_1385->g_115 p_1385->g_258 p_1385->g_712 p_1385->g_825
 */
int32_t  func_26(int32_t  p_27, int32_t * p_28, int32_t * p_29, int8_t  p_30, int32_t  p_31, struct S0 * p_1385)
{ /* block id: 520 */
    uint64_t l_1217[10][5][4] = {{{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL}},{{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL}},{{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL}},{{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL}},{{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL}},{{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL}},{{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL}},{{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL}},{{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL}},{{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL},{0xDBE4190E4D06AB82L,0x72AA28F15B3DDBF0L,1UL,0xF097B5FFC91F540EL}}};
    uint64_t *l_1230[6][2][10] = {{{&p_1385->g_712[5][2][0],(void*)0,&p_1385->g_712[4][1][0],(void*)0,&p_1385->g_712[4][1][0],(void*)0,&p_1385->g_712[5][2][0],&l_1217[7][2][3],&p_1385->g_712[4][7][0],&p_1385->g_712[4][7][0]},{&p_1385->g_712[5][2][0],(void*)0,&p_1385->g_712[4][1][0],(void*)0,&p_1385->g_712[4][1][0],(void*)0,&p_1385->g_712[5][2][0],&l_1217[7][2][3],&p_1385->g_712[4][7][0],&p_1385->g_712[4][7][0]}},{{&p_1385->g_712[5][2][0],(void*)0,&p_1385->g_712[4][1][0],(void*)0,&p_1385->g_712[4][1][0],(void*)0,&p_1385->g_712[5][2][0],&l_1217[7][2][3],&p_1385->g_712[4][7][0],&p_1385->g_712[4][7][0]},{&p_1385->g_712[5][2][0],(void*)0,&p_1385->g_712[4][1][0],(void*)0,&p_1385->g_712[4][1][0],(void*)0,&p_1385->g_712[5][2][0],&l_1217[7][2][3],&p_1385->g_712[4][7][0],&p_1385->g_712[4][7][0]}},{{&p_1385->g_712[5][2][0],(void*)0,&p_1385->g_712[4][1][0],(void*)0,&p_1385->g_712[4][1][0],(void*)0,&p_1385->g_712[5][2][0],&l_1217[7][2][3],&p_1385->g_712[4][7][0],&p_1385->g_712[4][7][0]},{&p_1385->g_712[5][2][0],(void*)0,&p_1385->g_712[4][1][0],(void*)0,&p_1385->g_712[4][1][0],(void*)0,&p_1385->g_712[5][2][0],&l_1217[7][2][3],&p_1385->g_712[4][7][0],&p_1385->g_712[4][7][0]}},{{&p_1385->g_712[5][2][0],(void*)0,&p_1385->g_712[4][1][0],(void*)0,&p_1385->g_712[4][1][0],(void*)0,&p_1385->g_712[5][2][0],&l_1217[7][2][3],&p_1385->g_712[4][7][0],&p_1385->g_712[4][7][0]},{&p_1385->g_712[5][2][0],(void*)0,&p_1385->g_712[4][1][0],(void*)0,&p_1385->g_712[4][1][0],(void*)0,&p_1385->g_712[5][2][0],&l_1217[7][2][3],&p_1385->g_712[4][7][0],&p_1385->g_712[4][7][0]}},{{&p_1385->g_712[5][2][0],(void*)0,&p_1385->g_712[4][1][0],(void*)0,&p_1385->g_712[4][1][0],(void*)0,&p_1385->g_712[5][2][0],&l_1217[7][2][3],&p_1385->g_712[4][7][0],&p_1385->g_712[4][7][0]},{&p_1385->g_712[5][2][0],(void*)0,&p_1385->g_712[4][1][0],(void*)0,&p_1385->g_712[4][1][0],(void*)0,&p_1385->g_712[5][2][0],&l_1217[7][2][3],&p_1385->g_712[4][7][0],&p_1385->g_712[4][7][0]}},{{&p_1385->g_712[5][2][0],(void*)0,&p_1385->g_712[4][1][0],(void*)0,&p_1385->g_712[4][1][0],(void*)0,&p_1385->g_712[5][2][0],&l_1217[7][2][3],&p_1385->g_712[4][7][0],&p_1385->g_712[4][7][0]},{&p_1385->g_712[5][2][0],(void*)0,&p_1385->g_712[4][1][0],(void*)0,&p_1385->g_712[4][1][0],(void*)0,&p_1385->g_712[5][2][0],&l_1217[7][2][3],&p_1385->g_712[4][7][0],&p_1385->g_712[4][7][0]}}};
    int32_t l_1231 = 0x6885422FL;
    int32_t l_1232 = (-1L);
    int32_t **l_1233 = (void*)0;
    int32_t **l_1234 = (void*)0;
    int32_t *l_1236[8];
    int32_t **l_1235 = &l_1236[2];
    volatile int32_t * volatile *l_1238 = &p_1385->g_1237;
    int32_t l_1247[2];
    int64_t *l_1268 = &p_1385->g_1269;
    int16_t l_1270[3];
    int i, j, k;
    for (i = 0; i < 8; i++)
        l_1236[i] = &l_1232;
    for (i = 0; i < 2; i++)
        l_1247[i] = 0x1C008149L;
    for (i = 0; i < 3; i++)
        l_1270[i] = 1L;
    (*l_1238) = p_1385->g_1237;
    (**l_1238) = (0x46L | (safe_lshift_func_uint16_t_u_s(((**l_1238) == (((((safe_div_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_u((!(safe_sub_func_int16_t_s_s(l_1247[0], ((p_1385->g_712[5][2][0] = ((((((safe_mod_func_uint64_t_u_u((safe_rshift_func_uint16_t_u_s((l_1247[1] | ((**p_1385->g_892) = (((safe_div_func_int64_t_s_s(((((((safe_add_func_uint32_t_u_u(((*p_1385->g_520) = ((safe_mul_func_uint8_t_u_u((*p_1385->g_893), l_1232)) || ((safe_div_func_uint64_t_u_u(((safe_mod_func_int16_t_s_s((safe_add_func_int64_t_s_s(0L, ((*p_1385->g_421) &= (safe_mod_func_uint32_t_u_u((p_31 | (safe_mul_func_uint8_t_u_u((((*l_1268) |= l_1231) , p_31), l_1231))), GROUP_DIVERGE(1, 1)))))), p_1385->g_194)) && (**p_1385->g_892)), l_1217[7][2][3])) >= p_27))), (**p_1385->g_195))) , l_1232) <= 18446744073709551615UL) >= l_1232) || l_1270[0]) , l_1217[7][2][3]), p_1385->g_487)) != (-2L)) , 0x94L))), 0)), 7L)) <= 4L) != p_30) > l_1270[0]) | (-1L)) , p_1385->g_511)) < p_1385->g_104[1][7])))), 15)), 1UL)) , l_1270[2]) ^ 0x71L) >= 0xC63CE09A9F1D0AA8L) && p_27)), (*p_1385->g_337))));
    return (**l_1238);
}


/* ------------------------------------------ */
/* 
 * reads : p_1385->g_205 p_1385->g_893 p_1385->g_258 p_1385->g_520 p_1385->g_614 p_1385->g_104 p_1385->g_196 p_1385->g_596 p_1385->g_248 p_1385->g_249 p_1385->g_6 p_1385->g_1211 p_1385->g_337 p_1385->g_338 p_1385->g_64 p_1385->g_115 p_1385->g_540 p_1385->g_539 p_1385->g_892 p_1385->g_2
 * writes: p_1385->g_544 p_1385->g_487 p_1385->g_115 p_1385->g_6 p_1385->g_776
 */
uint64_t  func_35(int32_t * p_36, int32_t * p_37, struct S0 * p_1385)
{ /* block id: 507 */
    uint32_t *l_1176 = &p_1385->g_388;
    uint32_t **l_1177 = &p_1385->g_544;
    uint16_t *l_1178[7] = {&p_1385->g_194,&p_1385->g_158,&p_1385->g_194,&p_1385->g_194,&p_1385->g_158,&p_1385->g_194,&p_1385->g_194};
    int32_t l_1179 = 0x3F1FEE07L;
    int32_t l_1186[4];
    int32_t *l_1187 = &p_1385->g_6[1][1];
    int32_t *l_1188[1][3];
    int16_t l_1189[10] = {(-5L),(-5L),(-5L),(-5L),(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)};
    uint32_t l_1190[8][1] = {{3UL},{3UL},{3UL},{3UL},{3UL},{3UL},{3UL},{3UL}};
    int32_t l_1212 = 4L;
    int8_t *l_1213 = &p_1385->g_776[0][0];
    int8_t *l_1214[9] = {&p_1385->g_1215,&p_1385->g_1215,&p_1385->g_1215,&p_1385->g_1215,&p_1385->g_1215,&p_1385->g_1215,&p_1385->g_1215,&p_1385->g_1215,&p_1385->g_1215};
    int32_t l_1216 = (-1L);
    int i, j;
    for (i = 0; i < 4; i++)
        l_1186[i] = 0L;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
            l_1188[i][j] = &p_1385->g_104[2][5];
    }
    (*p_1385->g_196) = (safe_lshift_func_uint16_t_u_s(2UL, (safe_div_func_uint8_t_u_u(0xB0L, (safe_mul_func_uint8_t_u_u((((*l_1177) = (l_1176 = &p_1385->g_388)) != ((((l_1179 = ((p_1385->g_487 = 65528UL) <= (p_1385->g_205 >= (((void*)0 == &p_1385->g_519[1]) != 1UL)))) , (safe_sub_func_int64_t_s_s((((((*p_1385->g_520) = (((safe_mul_func_int16_t_s_s(((safe_mod_func_uint32_t_u_u(l_1179, 4294967295UL)) , l_1186[3]), (-1L))) <= FAKE_DIVERGE(p_1385->group_2_offset, get_group_id(2), 10)) > (*p_1385->g_893))) , l_1186[1]) >= 0x24CF4B2AL) ^ 0x754AAA5EL), l_1186[3]))) >= (*p_1385->g_614)) , p_37)), (*p_1385->g_893)))))));
    l_1190[3][0]--;
    (*p_1385->g_539) = ((**p_1385->g_596) & (safe_lshift_func_int8_t_s_s((safe_mul_func_int16_t_s_s((*l_1187), ((((safe_lshift_func_int8_t_s_s((safe_add_func_int8_t_s_s((FAKE_DIVERGE(p_1385->local_0_offset, get_local_id(0), 10) , (*l_1187)), (safe_mul_func_uint16_t_u_u((safe_add_func_int8_t_s_s((l_1216 = ((*l_1213) = (safe_add_func_uint16_t_u_u(((*l_1187) >= (safe_rshift_func_int16_t_s_s(((+((~(((*p_1385->g_520) ^= ((safe_sub_func_int32_t_s_s(((p_1385->g_1211 & (*p_37)) > ((0UL > (4L | ((((*p_1385->g_337) , (*l_1187)) > p_1385->g_64) >= (*l_1187)))) & (*l_1187))), (*l_1187))) , l_1212)) , (**p_1385->g_540))) || (-2L))) >= (**p_1385->g_892)), 14))), (*l_1187))))), (*l_1187))), 0UL)))), (*l_1187))) , (*l_1187)) == 0L) , p_1385->g_2[0]))), (*l_1187))));
    return p_1385->g_115[4][1][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1385->g_712 p_1385->g_2 p_1385->g_264 p_1385->g_892 p_1385->g_893 p_1385->g_258 p_1385->g_261 p_1385->g_262 p_1385->g_49 p_1385->g_195 p_1385->g_196 p_1385->g_544 p_1385->g_388 p_1385->g_638 p_1385->g_596 p_1385->g_248 p_1385->g_337 p_1385->g_421 p_1385->g_520 p_1385->g_64 p_1385->g_539
 * writes: p_1385->g_712 p_1385->g_6 p_1385->g_388 p_1385->g_249 p_1385->g_338 p_1385->g_64 p_1385->g_115
 */
int32_t * func_38(int32_t ** p_39, uint8_t  p_40, int32_t  p_41, int64_t * p_42, int64_t * p_43, struct S0 * p_1385)
{ /* block id: 492 */
    int32_t *l_1109 = &p_1385->g_2[0];
    uint64_t *l_1111 = &p_1385->g_712[5][2][0];
    uint64_t l_1112 = 18446744073709551609UL;
    int8_t **l_1132 = &p_1385->g_248[4];
    int8_t ***l_1131 = &l_1132;
    int32_t l_1137 = 0x17DF4C6DL;
    int32_t *l_1138 = (void*)0;
    int8_t **l_1152[1];
    int8_t ***l_1151 = &l_1152[0];
    int64_t l_1159 = (-1L);
    int i;
    for (i = 0; i < 1; i++)
        l_1152[i] = &p_1385->g_248[4];
    (*p_39) = l_1109;
    (**p_1385->g_195) = (safe_unary_minus_func_int64_t_s((0x1C900B70L == ((!(((*l_1111) ^= 0UL) == (!(l_1112 <= ((safe_mul_func_int16_t_s_s((safe_div_func_uint8_t_u_u((safe_add_func_int16_t_s_s((*l_1109), (safe_lshift_func_int16_t_s_s((safe_lshift_func_uint16_t_u_s(((!(0L >= (((safe_mod_func_int32_t_s_s(((safe_mul_func_int16_t_s_s((*l_1109), (safe_mul_func_uint16_t_u_u(((l_1131 != &l_1132) , (safe_mod_func_uint16_t_u_u(((safe_lshift_func_int8_t_s_s(((((*p_42) == 0L) , (**p_1385->g_892)) & (-1L)), 6)) , 0xE7C2L), (*p_1385->g_261)))), 0x80B5L)))) && (-1L)), 0x6CEF2D51L)) > p_1385->g_49[4][1][1]) && (-1L)))) > 0UL), 15)), 14)))), l_1137)), GROUP_DIVERGE(2, 1))) & 0UL))))) < (*l_1109)))));
    (*p_39) = (((((p_41 || (l_1138 != ((--(*p_1385->g_544)) , (((safe_mul_func_int8_t_s_s((safe_sub_func_int64_t_s_s((p_1385->g_638 ^ (*l_1109)), ((*p_42) , ((*p_1385->g_421) = (((safe_mul_func_int16_t_s_s(((*p_1385->g_337) = (safe_div_func_int8_t_s_s(((**p_1385->g_596) = ((((0xCA95L >= (safe_rshift_func_int8_t_s_u((((*l_1131) = &p_1385->g_248[4]) == ((*l_1151) = (void*)0)), (safe_add_func_int64_t_s_s((safe_lshift_func_uint16_t_u_u(((safe_sub_func_int16_t_s_s((0L <= (*l_1109)), p_40)) || (-1L)), GROUP_DIVERGE(0, 1))), 0x3043240ABCC96105L))))) ^ (*l_1109)) > l_1159) != p_41)), p_40))), (*l_1109))) != FAKE_DIVERGE(p_1385->group_0_offset, get_group_id(0), 10)) && (-2L)))))), 0UL)) == (*l_1109)) , &l_1137)))) ^ (*l_1109)) <= 0x61F983C0L) | (*p_42)) , (void*)0);
    (*p_1385->g_539) = ((((((*p_1385->g_520) = ((0L > 0x4A30L) > (*l_1109))) , func_57(((safe_mul_func_int8_t_s_s((((safe_lshift_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u(((*l_1109) >= 0L), 7)), 11)) ^ (safe_mul_func_uint16_t_u_u(((safe_rshift_func_uint16_t_u_u((p_40 == (*l_1109)), 7)) > (*l_1109)), (((*p_1385->g_421) = (+(*p_43))) | (*p_42))))) || (-5L)), p_41)) , &l_1159), (*l_1109), p_41, p_39, p_1385)) == &l_1159) < 0L) >= 3L);
    return (*p_1385->g_195);
}


/* ------------------------------------------ */
/* 
 * reads : p_1385->g_518 p_1385->g_519 p_1385->g_520 p_1385->g_115 p_1385->g_540 p_1385->g_539 p_1385->g_91 p_1385->g_337 p_1385->g_261 p_1385->g_262 p_1385->g_196 p_1385->g_195 p_1385->g_6
 * writes: p_1385->g_6 p_1385->g_338 p_1385->g_771 p_1385->g_115
 */
int8_t  func_54(int64_t * p_55, int64_t  p_56, struct S0 * p_1385)
{ /* block id: 313 */
    uint32_t *l_749 = &p_1385->g_388;
    int32_t l_750 = 0x57D7595FL;
    uint8_t *l_769 = &p_1385->g_258;
    uint32_t *l_770 = &p_1385->g_771;
    uint64_t l_774[2];
    int64_t *l_826 = &p_1385->g_264[0][3];
    int64_t *l_843[2][1];
    int32_t *l_855[7][9] = {{&l_750,&p_1385->g_2[1],&p_1385->g_530,&p_1385->g_104[0][7],&p_1385->g_2[1],&p_1385->g_104[0][7],&p_1385->g_530,&p_1385->g_2[1],&l_750},{&l_750,&p_1385->g_2[1],&p_1385->g_530,&p_1385->g_104[0][7],&p_1385->g_2[1],&p_1385->g_104[0][7],&p_1385->g_530,&p_1385->g_2[1],&l_750},{&l_750,&p_1385->g_2[1],&p_1385->g_530,&p_1385->g_104[0][7],&p_1385->g_2[1],&p_1385->g_104[0][7],&p_1385->g_530,&p_1385->g_2[1],&l_750},{&l_750,&p_1385->g_2[1],&p_1385->g_530,&p_1385->g_104[0][7],&p_1385->g_2[1],&p_1385->g_104[0][7],&p_1385->g_530,&p_1385->g_2[1],&l_750},{&l_750,&p_1385->g_2[1],&p_1385->g_530,&p_1385->g_104[0][7],&p_1385->g_2[1],&p_1385->g_104[0][7],&p_1385->g_530,&p_1385->g_2[1],&l_750},{&l_750,&p_1385->g_2[1],&p_1385->g_530,&p_1385->g_104[0][7],&p_1385->g_2[1],&p_1385->g_104[0][7],&p_1385->g_530,&p_1385->g_2[1],&l_750},{&l_750,&p_1385->g_2[1],&p_1385->g_530,&p_1385->g_104[0][7],&p_1385->g_2[1],&p_1385->g_104[0][7],&p_1385->g_530,&p_1385->g_2[1],&l_750}};
    int8_t l_974 = (-5L);
    uint32_t l_994 = 9UL;
    int64_t l_1034 = 2L;
    uint32_t l_1050 = 0xA6942E99L;
    int32_t l_1083[6] = {(-1L),0L,(-1L),(-1L),0L,(-1L)};
    uint32_t **l_1095 = &p_1385->g_520;
    int32_t l_1096[10] = {0x2D4C3F0CL,0x2D4C3F0CL,0x2D4C3F0CL,0x2D4C3F0CL,0x2D4C3F0CL,0x2D4C3F0CL,0x2D4C3F0CL,0x2D4C3F0CL,0x2D4C3F0CL,0x2D4C3F0CL};
    uint32_t l_1105 = 1UL;
    int i, j;
    for (i = 0; i < 2; i++)
        l_774[i] = 0x594F4B95F72D389BL;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
            l_843[i][j] = (void*)0;
    }
    (**p_1385->g_540) = (((l_749 != &p_1385->g_388) , l_750) ^ (l_750 == (***p_1385->g_518)));
    if ((safe_add_func_int32_t_s_s((safe_sub_func_uint8_t_u_u((((*p_1385->g_520) = (((((3L && ((l_750 , (((p_1385->g_91 < (safe_sub_func_int16_t_s_s(0x7A0FL, (safe_sub_func_uint16_t_u_u(((((((*l_770) = (safe_rshift_func_uint16_t_u_s((safe_mod_func_uint64_t_u_u(((safe_mod_func_uint8_t_u_u(FAKE_DIVERGE(p_1385->local_2_offset, get_local_id(2), 10), p_56)) >= (65535UL >= (safe_sub_func_uint64_t_u_u((safe_mul_func_int16_t_s_s(((*p_1385->g_337) = ((((void*)0 != &p_1385->g_511) , l_769) != l_769)), 65535UL)), l_750)))), 2UL)), l_750))) , l_750) , 0x88CD4A6C3B8AADC2L) ^ (-6L)) & l_750), (*p_1385->g_261)))))) == l_750) == (-8L))) >= FAKE_DIVERGE(p_1385->global_1_offset, get_global_id(1), 10))) > 1L) == 0x6E05AC55DBBBD812L) , (-2L)) <= 0x14F1L)) && FAKE_DIVERGE(p_1385->group_1_offset, get_group_id(1), 10)), 0UL)), 6UL)))
    { /* block id: 318 */
        uint8_t l_780 = 255UL;
        int32_t l_781 = 0x7D053408L;
        int16_t **l_821[5][8] = {{&p_1385->g_337,&p_1385->g_337,&p_1385->g_337,&p_1385->g_337,&p_1385->g_337,&p_1385->g_337,&p_1385->g_337,&p_1385->g_337},{&p_1385->g_337,&p_1385->g_337,&p_1385->g_337,&p_1385->g_337,&p_1385->g_337,&p_1385->g_337,&p_1385->g_337,&p_1385->g_337},{&p_1385->g_337,&p_1385->g_337,&p_1385->g_337,&p_1385->g_337,&p_1385->g_337,&p_1385->g_337,&p_1385->g_337,&p_1385->g_337},{&p_1385->g_337,&p_1385->g_337,&p_1385->g_337,&p_1385->g_337,&p_1385->g_337,&p_1385->g_337,&p_1385->g_337,&p_1385->g_337},{&p_1385->g_337,&p_1385->g_337,&p_1385->g_337,&p_1385->g_337,&p_1385->g_337,&p_1385->g_337,&p_1385->g_337,&p_1385->g_337}};
        int32_t *l_845 = &p_1385->g_6[0][3];
        int64_t ***l_885[6] = {&p_1385->g_174,&p_1385->g_174,&p_1385->g_174,&p_1385->g_174,&p_1385->g_174,&p_1385->g_174};
        int32_t l_905 = 1L;
        int32_t l_906 = 0L;
        uint64_t *l_930 = &l_774[0];
        uint8_t *l_973 = &l_780;
        uint16_t *l_1028 = &p_1385->g_850;
        int32_t l_1036 = 0x7190DD08L;
        uint32_t l_1080 = 0xD6D384A4L;
        int i, j;
        (1 + 1);
    }
    else
    { /* block id: 485 */
        uint16_t l_1104 = 65535UL;
        (*p_1385->g_196) = p_56;
        l_1104 ^= ((**p_1385->g_195) &= p_56);
        return p_56;
    }
    return l_1105;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int64_t * func_57(int64_t * p_58, uint64_t  p_59, int8_t  p_60, int32_t ** p_61, struct S0 * p_1385)
{ /* block id: 310 */
    uint32_t l_745 = 0x08FCA00BL;
    int64_t *l_748 = &p_1385->g_64;
    ++l_745;
    return l_748;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t ** func_65(int32_t ** p_66, int64_t  p_67, int32_t * p_68, int16_t  p_69, struct S0 * p_1385)
{ /* block id: 17 */
    int64_t l_76 = 0x79B11162BCA918CAL;
    int64_t *l_77 = &p_1385->g_64;
    uint16_t *l_157 = &p_1385->g_158;
    uint32_t l_159 = 1UL;
    uint16_t l_160 = 3UL;
    int32_t *l_161 = &p_1385->g_2[1];
    int32_t l_639 = 0x74D143CBL;
    int16_t **l_701 = &p_1385->g_337;
    uint8_t *l_727 = &p_1385->g_182;
    uint32_t ***l_740 = &p_1385->g_519[1];
    return &p_1385->g_196;
}


/* ------------------------------------------ */
/* 
 * reads : p_1385->g_195 p_1385->g_196 p_1385->g_6 p_1385->g_194 p_1385->g_540 p_1385->g_158 p_1385->g_544 p_1385->g_388 p_1385->g_70 p_1385->g_64 p_1385->g_104 p_1385->g_91 p_1385->g_264 p_1385->g_539 p_1385->g_205 p_1385->g_258 p_1385->g_337 p_1385->g_520 p_1385->g_115 p_1385->g_338 p_1385->g_2 p_1385->g_595 p_1385->g_421 p_1385->g_597 p_1385->g_261 p_1385->g_262 p_1385->g_614 p_1385->g_624 p_1385->g_182 p_1385->g_638
 * writes: p_1385->g_194 p_1385->g_511 p_1385->g_530 p_1385->g_264 p_1385->g_196 p_1385->g_539 p_1385->g_544 p_1385->g_158 p_1385->g_519 p_1385->g_102 p_1385->g_104 p_1385->g_115 p_1385->g_258 p_1385->g_338 p_1385->g_91 p_1385->g_174
 */
int32_t  func_71(uint64_t  p_72, int64_t * p_73, int64_t ** p_74, int8_t  p_75, struct S0 * p_1385)
{ /* block id: 216 */
    uint64_t l_534 = 0x714DB3E959C337C2L;
    int32_t l_545[9] = {0x06133F0CL,0x06133F0CL,0x06133F0CL,0x06133F0CL,0x06133F0CL,0x06133F0CL,0x06133F0CL,0x06133F0CL,0x06133F0CL};
    int32_t l_546 = 0x731C3904L;
    uint32_t **l_558 = &p_1385->g_544;
    int64_t *l_559 = &p_1385->g_264[1][4];
    int32_t **l_560 = &p_1385->g_196;
    int8_t **l_562 = &p_1385->g_248[2];
    uint32_t **l_612 = &p_1385->g_520;
    uint32_t l_625 = 0x7FDB7B0EL;
    uint32_t l_635[2][9] = {{9UL,0xF58B421BL,9UL,9UL,0xF58B421BL,9UL,9UL,0xF58B421BL,9UL},{9UL,0xF58B421BL,9UL,9UL,0xF58B421BL,9UL,9UL,0xF58B421BL,9UL}};
    int i, j;
    if ((l_534 |= (**p_1385->g_195)))
    { /* block id: 218 */
        int32_t *l_537[2];
        uint32_t **l_541 = (void*)0;
        uint32_t *l_543 = &p_1385->g_388;
        uint32_t **l_542 = &l_543;
        int i;
        for (i = 0; i < 2; i++)
            l_537[i] = &p_1385->g_2[1];
        for (p_1385->g_194 = 21; (p_1385->g_194 <= 55); p_1385->g_194++)
        { /* block id: 221 */
            for (p_1385->g_511 = 0; p_1385->g_511 < 3; p_1385->g_511 += 1)
            {
                for (p_1385->g_530 = 0; p_1385->g_530 < 5; p_1385->g_530 += 1)
                {
                    p_1385->g_264[p_1385->g_511][p_1385->g_530] = 0x5C0C3EFE8C11CA19L;
                }
            }
        }
        (*p_1385->g_540) = ((*p_1385->g_195) = l_537[0]);
        l_546 |= (l_545[8] = ((p_1385->g_544 = ((*l_542) = (void*)0)) != &p_1385->g_388));
    }
    else
    { /* block id: 230 */
        uint64_t *l_548 = &l_534;
        uint16_t *l_553 = &p_1385->g_158;
        uint32_t ***l_556 = &p_1385->g_519[1];
        uint32_t **l_557 = (void*)0;
        uint8_t *l_561 = &p_1385->g_258;
        int8_t **l_563 = (void*)0;
        int32_t l_564 = 0x4E11C666L;
        int32_t l_628[8][7] = {{0x377505A9L,0x6BB9DBCDL,0x6BB9DBCDL,0x377505A9L,(-7L),(-3L),4L},{0x377505A9L,0x6BB9DBCDL,0x6BB9DBCDL,0x377505A9L,(-7L),(-3L),4L},{0x377505A9L,0x6BB9DBCDL,0x6BB9DBCDL,0x377505A9L,(-7L),(-3L),4L},{0x377505A9L,0x6BB9DBCDL,0x6BB9DBCDL,0x377505A9L,(-7L),(-3L),4L},{0x377505A9L,0x6BB9DBCDL,0x6BB9DBCDL,0x377505A9L,(-7L),(-3L),4L},{0x377505A9L,0x6BB9DBCDL,0x6BB9DBCDL,0x377505A9L,(-7L),(-3L),4L},{0x377505A9L,0x6BB9DBCDL,0x6BB9DBCDL,0x377505A9L,(-7L),(-3L),4L},{0x377505A9L,0x6BB9DBCDL,0x6BB9DBCDL,0x377505A9L,(-7L),(-3L),4L}};
        int i, j;
        l_564 ^= (((((safe_unary_minus_func_uint64_t_u(((*l_548) = FAKE_DIVERGE(p_1385->local_2_offset, get_local_id(2), 10)))) < ((p_1385->g_6[4][3] < (safe_add_func_int64_t_s_s((((*l_561) |= (safe_mod_func_int16_t_s_s((((((*l_553)++) < ((((((*l_556) = (void*)0) != l_557) <= (l_558 == (void*)0)) , func_84((*p_1385->g_544), l_559, l_560, func_84((*p_1385->g_544), &p_1385->g_64, &p_1385->g_196, (*l_560), p_1385), p_1385)) == (*p_1385->g_540))) ^ p_1385->g_205) > 0x610CL), p_75))) && 0x60L), 1UL))) < 0x467A51B5L)) , l_562) == l_563) | 0x031442B3L);
lbl_637:
        l_564 = (((*p_1385->g_337) = 0L) ^ p_75);
        (*p_1385->g_597) = (safe_lshift_func_uint8_t_u_s((((((safe_lshift_func_int8_t_s_u((safe_lshift_func_uint8_t_u_u(((safe_unary_minus_func_uint16_t_u((0x672DFB2EEA22F176L > (safe_sub_func_uint32_t_u_u((*p_1385->g_520), (safe_mod_func_uint16_t_u_u((safe_sub_func_int64_t_s_s((safe_mul_func_int16_t_s_s((65535UL == ((*p_1385->g_337) = (safe_mod_func_int8_t_s_s((safe_mul_func_uint16_t_u_u(p_75, ((void*)0 != l_558))), (safe_unary_minus_func_int8_t_s((((((safe_sub_func_int32_t_s_s((((((~((safe_rshift_func_uint16_t_u_u(((safe_sub_func_uint8_t_u_u(((p_72 == (~(**l_560))) || (+(~GROUP_DIVERGE(0, 1)))), ((safe_rshift_func_int16_t_s_s(((safe_rshift_func_uint8_t_u_s(0xF4L, p_72)) <= l_564), (*p_1385->g_337))) , p_1385->g_2[1]))) == 1UL), 10)) >= p_75)) < 8UL) > p_72) < p_75) >= 0UL), 0xA2DDE13FL)) , p_1385->g_595[5]) == &p_1385->g_596) , 18446744073709551611UL) ^ GROUP_DIVERGE(2, 1)))))))), GROUP_DIVERGE(0, 1))), (*p_1385->g_421))), p_75))))))) && p_1385->g_388), 2)), 2)) ^ p_72) , l_564) & 0x3D8AL) <= p_75), 4));
        if ((((safe_sub_func_int8_t_s_s(((safe_sub_func_uint64_t_u_u((p_1385->g_64 == (((*l_559) = (safe_mul_func_uint16_t_u_u(((*l_553) = GROUP_DIVERGE(0, 1)), FAKE_DIVERGE(p_1385->global_0_offset, get_global_id(0), 10)))) > (safe_rshift_func_uint8_t_u_s(p_1385->g_205, 6)))), ((**p_1385->g_540) != ((((((FAKE_DIVERGE(p_1385->local_0_offset, get_local_id(0), 10) < (safe_rshift_func_uint16_t_u_u(65535UL, ((safe_rshift_func_int16_t_s_u((!((void*)0 != &p_1385->g_261)), 5)) == 0xFC4DL)))) <= p_72) >= (safe_mod_func_uint8_t_u_u((((!(l_612 != &p_1385->g_520)) && 0x0A85L) | 0x7E97L), p_72))) ^ (*p_1385->g_337)) == 0UL) ^ l_564)))) >= p_72), 248UL)) && (*p_1385->g_261)) ^ p_72))
        { /* block id: 242 */
            uint32_t l_613 = 0x053E06DEL;
            int64_t ***l_623 = &p_1385->g_174;
            int32_t l_636 = (-1L);
            l_564 ^= p_75;
            (*p_1385->g_614) &= (l_564 = (l_613 = (GROUP_DIVERGE(1, 1) , 0x311DC946L)));
            l_564 = (safe_div_func_int64_t_s_s((safe_div_func_int8_t_s_s(((safe_mul_func_uint8_t_u_u(p_72, (safe_mod_func_uint8_t_u_u(((*l_561) = ((GROUP_DIVERGE(1, 1) < (**l_560)) , (((((0x77DA02B564A1ACF2L > l_613) & p_72) , &l_559) != ((*l_623) = &p_1385->g_421)) > (p_1385->g_624[1][5] > (l_564 || (**l_560)))))), l_625)))) , (**l_560)), p_1385->g_388)), l_613));
            l_636 = ((*p_1385->g_614) = ((safe_mul_func_uint8_t_u_u(((*l_561) = l_628[3][3]), p_72)) , ((~0UL) < ((safe_mul_func_uint16_t_u_u(p_1385->g_6[3][1], ((*p_1385->g_421) , ((((safe_lshift_func_int8_t_s_s(((safe_lshift_func_uint8_t_u_u((0x9E3331D680AE19A3L > ((p_72 > ((((**l_560) >= ((((*l_553) = ((((*l_548) = ((void*)0 == &p_1385->g_194)) == p_1385->g_262[7][0][0]) , FAKE_DIVERGE(p_1385->global_1_offset, get_global_id(1), 10))) ^ p_1385->g_182) , (**l_560))) >= p_72) | p_72)) <= 5UL)), GROUP_DIVERGE(1, 1))) < p_72), 0)) < 0x45L) ^ p_72) > 1UL)))) != l_635[1][1]))));
        }
        else
        { /* block id: 255 */
            if (p_75)
                goto lbl_637;
            return (**p_1385->g_195);
        }
    }
    return p_1385->g_638;
}


/* ------------------------------------------ */
/* 
 * reads : p_1385->g_174 p_1385->g_70 p_1385->g_6 p_1385->g_182 p_1385->g_104 p_1385->g_2 p_1385->g_91 p_1385->g_195 p_1385->g_158
 * writes: p_1385->g_70 p_1385->g_182 p_1385->g_183 p_1385->g_194
 */
int64_t ** func_78(int32_t * p_79, int32_t  p_80, int32_t * p_81, int32_t * p_82, int64_t * p_83, struct S0 * p_1385)
{ /* block id: 41 */
    int32_t *l_162[7];
    int64_t l_163[5] = {0x414FC2A325B7F872L,0x414FC2A325B7F872L,0x414FC2A325B7F872L,0x414FC2A325B7F872L,0x414FC2A325B7F872L};
    int32_t l_164 = 0L;
    int16_t l_165 = 0x0BE4L;
    int16_t l_166 = 1L;
    int32_t l_167 = 0x53527156L;
    int8_t l_168 = 0x26L;
    uint32_t l_169 = 4294967290UL;
    int32_t **l_172 = (void*)0;
    int32_t **l_173 = &l_162[0];
    int32_t ***l_180[9];
    int8_t *l_181[4][5] = {{&l_168,&l_168,&l_168,&l_168,&l_168},{&l_168,&l_168,&l_168,&l_168,&l_168},{&l_168,&l_168,&l_168,&l_168,&l_168},{&l_168,&l_168,&l_168,&l_168,&l_168}};
    uint32_t *l_191 = &l_169;
    uint8_t l_192[9] = {0x73L,0x73L,0x73L,0x73L,0x73L,0x73L,0x73L,0x73L,0x73L};
    int16_t *l_193[6] = {&l_165,&l_166,&l_165,&l_165,&l_166,&l_165};
    int64_t *l_218 = &p_1385->g_64;
    uint8_t l_323 = 0UL;
    uint64_t l_413 = 0x7D68E0D74BCF7051L;
    int i, j;
    for (i = 0; i < 7; i++)
        l_162[i] = &p_1385->g_104[1][8];
    for (i = 0; i < 9; i++)
        l_180[i] = &p_1385->g_70;
    --l_169;
    (*l_173) = (void*)0;
    for (l_169 = 0; (l_169 <= 4); l_169 += 1)
    { /* block id: 46 */
        return p_1385->g_174;
    }
    if (((safe_unary_minus_func_int8_t_s((safe_sub_func_int8_t_s_s(((((((safe_lshift_func_int8_t_s_s(((0x1BL | ((((((p_1385->g_70 = p_1385->g_70) == ((((0L != (p_1385->g_183 = (p_1385->g_182 |= p_1385->g_6[1][1]))) != p_80) == (safe_div_func_int64_t_s_s(((p_1385->g_194 = ((safe_lshift_func_int8_t_s_s((((safe_unary_minus_func_int16_t_s((((0x3F210CA2L == (safe_div_func_int32_t_s_s(((FAKE_DIVERGE(p_1385->global_2_offset, get_global_id(2), 10) , &p_1385->g_115[4][1][0]) == (l_191 = p_82)), p_80))) > p_1385->g_104[1][5]) ^ p_1385->g_2[1]))) ^ p_80) || FAKE_DIVERGE(p_1385->group_0_offset, get_group_id(0), 10)), 4)) > l_192[7])) , (*p_83)), p_1385->g_91))) , p_1385->g_195)) , 0x09F6L) && p_80) >= FAKE_DIVERGE(p_1385->group_1_offset, get_group_id(1), 10)) < (*p_83))) , p_80), 4)) , (*p_83)) || p_1385->g_158) ^ FAKE_DIVERGE(p_1385->global_1_offset, get_global_id(1), 10)) ^ 0L) , p_80), GROUP_DIVERGE(2, 1))))) && p_1385->g_104[1][1]))
    { /* block id: 54 */
        int8_t l_197 = 5L;
        int32_t l_198 = (-1L);
        int32_t l_217 = 0x252D0A62L;
        int32_t l_224[6];
        uint16_t l_235 = 8UL;
        uint32_t l_260 = 0xBEA26823L;
        int32_t ***l_329 = (void*)0;
        int8_t l_361 = 0x5BL;
        int8_t l_383 = 1L;
        int16_t l_408 = 0x2420L;
        uint32_t **l_506 = &l_191;
        int i;
        for (i = 0; i < 6; i++)
            l_224[i] = 0x585813E3L;
        (1 + 1);
    }
    else
    { /* block id: 212 */
        int8_t *l_532 = &l_168;
        int32_t l_533 = 0x678224DAL;
        l_533 ^= (l_532 == &l_168);
    }
    return &p_1385->g_421;
}


/* ------------------------------------------ */
/* 
 * reads : p_1385->g_70 p_1385->g_6 p_1385->g_64 p_1385->g_104 p_1385->g_91 l_76 p_1385->g_264
 * writes: p_1385->g_102 p_1385->g_104 p_1385->g_115
 */
int32_t * func_84(uint32_t  p_85, int64_t * p_86, int32_t ** p_87, int32_t * p_88, struct S0 * p_1385)
{ /* block id: 18 */
    int16_t l_89[6];
    int32_t *l_90[7] = {&p_1385->g_91,&p_1385->g_91,&p_1385->g_91,&p_1385->g_91,&p_1385->g_91,&p_1385->g_91,&p_1385->g_91};
    uint16_t l_92 = 0x39C7L;
    int32_t **l_95 = &l_90[0];
    int16_t *l_103[5];
    int8_t l_113 = (-1L);
    uint32_t *l_114 = &p_1385->g_115[4][1][0];
    uint8_t l_116 = 1UL;
    int i;
    for (i = 0; i < 6; i++)
        l_89[i] = (-9L);
    for (i = 0; i < 5; i++)
        l_103[i] = &l_89[5];
    ++l_92;
    l_116 = (((p_1385->g_70 != l_95) > p_1385->g_6[4][3]) == ((((*l_114) = (((p_1385->g_64 | (p_1385->g_104[0][3] = (p_1385->g_102 = (safe_mod_func_int64_t_s_s((safe_mul_func_int8_t_s_s(p_85, FAKE_DIVERGE(p_1385->global_2_offset, get_global_id(2), 10))), 1UL))))) && ((safe_mul_func_int16_t_s_s((FAKE_DIVERGE(p_1385->global_2_offset, get_global_id(2), 10) , ((safe_mul_func_uint16_t_u_u((safe_mul_func_int16_t_s_s(((p_1385->g_64 < p_1385->g_104[1][5]) == (safe_div_func_uint32_t_u_u(((-1L) == 0x730550D74AE622E3L), p_85))), 0x2643L)), 65534UL)) < (*p_86))), l_113)) <= 0x59L)) < (**l_95))) < p_1385->g_6[1][1]) || p_1385->g_6[1][1]));
    if ((**l_95))
    { /* block id: 24 */
        int32_t *l_117 = &p_1385->g_91;
        return l_117;
    }
    else
    { /* block id: 26 */
        int32_t l_126 = (-6L);
        int32_t l_127 = 0L;
        int32_t l_128 = 0x13856DD1L;
        int32_t l_129 = 6L;
        int32_t l_133 = 0x609C17E6L;
        int32_t l_134 = 9L;
        int32_t l_135 = 0x2420BE38L;
        int32_t l_138 = (-8L);
        for (l_92 = 0; (l_92 <= 59); l_92++)
        { /* block id: 29 */
            int32_t *l_122 = &p_1385->g_2[0];
            int32_t l_124[5];
            uint32_t l_139 = 0xE1DE84E0L;
            int i;
            for (i = 0; i < 5; i++)
                l_124[i] = 0x016CB793L;
            for (p_85 = 0; (p_85 >= 36); ++p_85)
            { /* block id: 32 */
                int32_t l_123 = 8L;
                int32_t l_125 = 0x24CE628FL;
                int32_t l_130 = 0x650D96A5L;
                int32_t l_131 = 0x1CB40E94L;
                int32_t l_132 = 0L;
                int32_t l_136 = (-1L);
                int32_t l_137[9][8] = {{0x7E24BE3DL,(-3L),0L,0x759A07A5L,0x077858FBL,0x759A07A5L,0L,(-3L)},{0x7E24BE3DL,(-3L),0L,0x759A07A5L,0x077858FBL,0x759A07A5L,0L,(-3L)},{0x7E24BE3DL,(-3L),0L,0x759A07A5L,0x077858FBL,0x759A07A5L,0L,(-3L)},{0x7E24BE3DL,(-3L),0L,0x759A07A5L,0x077858FBL,0x759A07A5L,0L,(-3L)},{0x7E24BE3DL,(-3L),0L,0x759A07A5L,0x077858FBL,0x759A07A5L,0L,(-3L)},{0x7E24BE3DL,(-3L),0L,0x759A07A5L,0x077858FBL,0x759A07A5L,0L,(-3L)},{0x7E24BE3DL,(-3L),0L,0x759A07A5L,0x077858FBL,0x759A07A5L,0L,(-3L)},{0x7E24BE3DL,(-3L),0L,0x759A07A5L,0x077858FBL,0x759A07A5L,0L,(-3L)},{0x7E24BE3DL,(-3L),0L,0x759A07A5L,0x077858FBL,0x759A07A5L,0L,(-3L)}};
                int i, j;
                (*l_95) = l_122;
                p_1385->g_104[1][6] &= 1L;
                --l_139;
            }
        }
        return p_88;
    }
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_1386;
    struct S0* p_1385 = &c_1386;
    struct S0 c_1387 = {
        {0x5444182BL,0x5444182BL}, // p_1385->g_2
        {{(-1L),0L,(-1L),(-1L)},{(-1L),0L,(-1L),(-1L)},{(-1L),0L,(-1L),(-1L)},{(-1L),0L,(-1L),(-1L)},{(-1L),0L,(-1L),(-1L)}}, // p_1385->g_6
        0x723279329BFAEAD2L, // p_1385->g_33
        {{{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L}},{{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L}},{{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L}},{{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L}},{{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L}},{{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L}},{{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L}},{{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L}},{{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L}},{{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L},{0x2C95L,0x2C95L}}}, // p_1385->g_49
        0x24270207789B64D4L, // p_1385->g_64
        (void*)0, // p_1385->g_70
        1L, // p_1385->g_91
        0x554F4372L, // p_1385->g_102
        {{8L,8L,8L,8L,8L,8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L,8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L,8L,8L,8L,8L,8L}}, // p_1385->g_104
        {{{9UL,4294967294UL,0UL,0xE82EF243L},{9UL,4294967294UL,0UL,0xE82EF243L},{9UL,4294967294UL,0UL,0xE82EF243L},{9UL,4294967294UL,0UL,0xE82EF243L},{9UL,4294967294UL,0UL,0xE82EF243L},{9UL,4294967294UL,0UL,0xE82EF243L}},{{9UL,4294967294UL,0UL,0xE82EF243L},{9UL,4294967294UL,0UL,0xE82EF243L},{9UL,4294967294UL,0UL,0xE82EF243L},{9UL,4294967294UL,0UL,0xE82EF243L},{9UL,4294967294UL,0UL,0xE82EF243L},{9UL,4294967294UL,0UL,0xE82EF243L}},{{9UL,4294967294UL,0UL,0xE82EF243L},{9UL,4294967294UL,0UL,0xE82EF243L},{9UL,4294967294UL,0UL,0xE82EF243L},{9UL,4294967294UL,0UL,0xE82EF243L},{9UL,4294967294UL,0UL,0xE82EF243L},{9UL,4294967294UL,0UL,0xE82EF243L}},{{9UL,4294967294UL,0UL,0xE82EF243L},{9UL,4294967294UL,0UL,0xE82EF243L},{9UL,4294967294UL,0UL,0xE82EF243L},{9UL,4294967294UL,0UL,0xE82EF243L},{9UL,4294967294UL,0UL,0xE82EF243L},{9UL,4294967294UL,0UL,0xE82EF243L}},{{9UL,4294967294UL,0UL,0xE82EF243L},{9UL,4294967294UL,0UL,0xE82EF243L},{9UL,4294967294UL,0UL,0xE82EF243L},{9UL,4294967294UL,0UL,0xE82EF243L},{9UL,4294967294UL,0UL,0xE82EF243L},{9UL,4294967294UL,0UL,0xE82EF243L}}}, // p_1385->g_115
        0UL, // p_1385->g_158
        (void*)0, // p_1385->g_174
        0xF1L, // p_1385->g_182
        1UL, // p_1385->g_183
        0x813BL, // p_1385->g_194
        &p_1385->g_6[2][2], // p_1385->g_196
        &p_1385->g_196, // p_1385->g_195
        0x33177101A3327E28L, // p_1385->g_205
        0x4FL, // p_1385->g_249
        {&p_1385->g_249,&p_1385->g_249,&p_1385->g_249,&p_1385->g_249,&p_1385->g_249,&p_1385->g_249}, // p_1385->g_248
        0x1BL, // p_1385->g_258
        {{{(-7L)}},{{(-7L)}},{{(-7L)}},{{(-7L)}},{{(-7L)}},{{(-7L)}},{{(-7L)}},{{(-7L)}},{{(-7L)}},{{(-7L)}}}, // p_1385->g_262
        &p_1385->g_262[7][0][0], // p_1385->g_261
        {{(-7L),(-7L),(-7L),(-7L),(-7L)},{(-7L),(-7L),(-7L),(-7L),(-7L)},{(-7L),(-7L),(-7L),(-7L),(-7L)}}, // p_1385->g_264
        0x3FAEL, // p_1385->g_338
        &p_1385->g_338, // p_1385->g_337
        4294967291UL, // p_1385->g_388
        &p_1385->g_64, // p_1385->g_421
        0x09A8L, // p_1385->g_487
        1UL, // p_1385->g_511
        (void*)0, // p_1385->g_517
        &p_1385->g_115[4][1][0], // p_1385->g_520
        {&p_1385->g_520,&p_1385->g_520}, // p_1385->g_519
        &p_1385->g_519[1], // p_1385->g_518
        0x121F5F90L, // p_1385->g_530
        &p_1385->g_6[1][1], // p_1385->g_539
        {{&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539},{&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539},{&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539},{&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539},{&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539},{&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539},{&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539},{&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539},{&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539},{&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539,&p_1385->g_539}}, // p_1385->g_538
        &p_1385->g_539, // p_1385->g_540
        &p_1385->g_388, // p_1385->g_544
        &p_1385->g_248[2], // p_1385->g_596
        {&p_1385->g_596,&p_1385->g_596,&p_1385->g_596,&p_1385->g_596,&p_1385->g_596,&p_1385->g_596,&p_1385->g_596,&p_1385->g_596,&p_1385->g_596,&p_1385->g_596}, // p_1385->g_595
        &p_1385->g_91, // p_1385->g_597
        &p_1385->g_104[1][3], // p_1385->g_614
        {{0x51B1L,0x51B1L,0x51B1L,0x51B1L,0x51B1L,0x51B1L,0x51B1L,0x51B1L},{0x51B1L,0x51B1L,0x51B1L,0x51B1L,0x51B1L,0x51B1L,0x51B1L,0x51B1L}}, // p_1385->g_624
        0x6840F34B9CBC19A3L, // p_1385->g_638
        {&p_1385->g_91,&p_1385->g_91,&p_1385->g_91,&p_1385->g_91,&p_1385->g_91}, // p_1385->g_686
        (void*)0, // p_1385->g_699
        {{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}}}, // p_1385->g_712
        &p_1385->g_104[2][4], // p_1385->g_743
        4294967291UL, // p_1385->g_771
        {{1L},{1L}}, // p_1385->g_776
        8L, // p_1385->g_825
        0xD944L, // p_1385->g_850
        0xC8AA3145L, // p_1385->g_879
        0xAD2F7AEAL, // p_1385->g_881
        &p_1385->g_258, // p_1385->g_893
        &p_1385->g_893, // p_1385->g_892
        0x84L, // p_1385->g_900
        (-1L), // p_1385->g_1211
        0x08L, // p_1385->g_1215
        &p_1385->g_825, // p_1385->g_1237
        0x6722D7B4B56DDC3AL, // p_1385->g_1269
        sequence_input[get_global_id(0)], // p_1385->global_0_offset
        sequence_input[get_global_id(1)], // p_1385->global_1_offset
        sequence_input[get_global_id(2)], // p_1385->global_2_offset
        sequence_input[get_local_id(0)], // p_1385->local_0_offset
        sequence_input[get_local_id(1)], // p_1385->local_1_offset
        sequence_input[get_local_id(2)], // p_1385->local_2_offset
        sequence_input[get_group_id(0)], // p_1385->group_0_offset
        sequence_input[get_group_id(1)], // p_1385->group_1_offset
        sequence_input[get_group_id(2)], // p_1385->group_2_offset
    };
    c_1386 = c_1387;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1385);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1385->g_2[i], "p_1385->g_2[i]", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1385->g_6[i][j], "p_1385->g_6[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1385->g_33, "p_1385->g_33", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1385->g_49[i][j][k], "p_1385->g_49[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1385->g_64, "p_1385->g_64", print_hash_value);
    transparent_crc(p_1385->g_91, "p_1385->g_91", print_hash_value);
    transparent_crc(p_1385->g_102, "p_1385->g_102", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1385->g_104[i][j], "p_1385->g_104[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1385->g_115[i][j][k], "p_1385->g_115[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1385->g_158, "p_1385->g_158", print_hash_value);
    transparent_crc(p_1385->g_182, "p_1385->g_182", print_hash_value);
    transparent_crc(p_1385->g_183, "p_1385->g_183", print_hash_value);
    transparent_crc(p_1385->g_194, "p_1385->g_194", print_hash_value);
    transparent_crc(p_1385->g_205, "p_1385->g_205", print_hash_value);
    transparent_crc(p_1385->g_249, "p_1385->g_249", print_hash_value);
    transparent_crc(p_1385->g_258, "p_1385->g_258", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_1385->g_262[i][j][k], "p_1385->g_262[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1385->g_264[i][j], "p_1385->g_264[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1385->g_338, "p_1385->g_338", print_hash_value);
    transparent_crc(p_1385->g_388, "p_1385->g_388", print_hash_value);
    transparent_crc(p_1385->g_487, "p_1385->g_487", print_hash_value);
    transparent_crc(p_1385->g_511, "p_1385->g_511", print_hash_value);
    transparent_crc(p_1385->g_530, "p_1385->g_530", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1385->g_624[i][j], "p_1385->g_624[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1385->g_638, "p_1385->g_638", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_1385->g_712[i][j][k], "p_1385->g_712[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1385->g_771, "p_1385->g_771", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1385->g_776[i][j], "p_1385->g_776[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1385->g_825, "p_1385->g_825", print_hash_value);
    transparent_crc(p_1385->g_850, "p_1385->g_850", print_hash_value);
    transparent_crc(p_1385->g_879, "p_1385->g_879", print_hash_value);
    transparent_crc(p_1385->g_881, "p_1385->g_881", print_hash_value);
    transparent_crc(p_1385->g_900, "p_1385->g_900", print_hash_value);
    transparent_crc(p_1385->g_1211, "p_1385->g_1211", print_hash_value);
    transparent_crc(p_1385->g_1215, "p_1385->g_1215", print_hash_value);
    transparent_crc(p_1385->g_1269, "p_1385->g_1269", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
