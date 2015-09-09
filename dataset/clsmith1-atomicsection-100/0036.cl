// --atomics 22 ---fake_divergence -g 93,11,9 -l 31,1,1
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


// Seed: 36

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_3[3][10][3];
    uint32_t g_13;
    int32_t g_15;
    int32_t *g_17;
    int32_t ** volatile g_16;
    int16_t g_62[1][7];
    uint8_t g_107;
    int8_t g_111;
    int8_t g_115;
    int32_t g_118;
    int32_t ** volatile g_123[7][4];
    int32_t g_126[5];
    int32_t * volatile g_125;
    uint8_t g_143[5][2];
    uint32_t g_359[5];
    uint16_t g_361;
    uint32_t g_363;
    int64_t g_378;
    int32_t g_383;
    int8_t *g_391;
    int8_t **g_390;
    int64_t *g_399;
    int16_t *g_407;
    int16_t **g_406;
    uint64_t g_411;
    int32_t ** volatile g_414;
    uint8_t g_423;
    int32_t ** volatile g_517;
    uint32_t g_572[4];
    uint32_t g_587[5];
    uint16_t *g_621[9];
    int32_t ** volatile g_644;
    uint64_t g_647[6][4];
    volatile uint64_t g_1014;
    volatile uint64_t *g_1013;
    volatile uint64_t * volatile * volatile g_1012;
    int32_t g_1018;
    uint32_t g_1020;
    uint16_t g_1037[8];
    int32_t *g_1091[6];
    int32_t g_1190;
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
int64_t  func_1(struct S0 * p_1199);
int16_t  func_4(int32_t  p_5, uint32_t  p_6, struct S0 * p_1199);
uint32_t  func_7(int64_t  p_8, struct S0 * p_1199);
int32_t  func_18(uint32_t * p_19, uint32_t  p_20, int32_t  p_21, uint32_t  p_22, uint32_t  p_23, struct S0 * p_1199);
int16_t  func_31(int32_t * p_32, uint64_t  p_33, int64_t  p_34, int32_t * p_35, struct S0 * p_1199);
uint64_t  func_58(int8_t  p_59, int16_t  p_60, struct S0 * p_1199);
int32_t ** func_63(int32_t  p_64, uint8_t  p_65, int16_t  p_66, struct S0 * p_1199);
uint32_t * func_67(int32_t ** p_68, uint64_t  p_69, struct S0 * p_1199);
int32_t ** func_70(uint32_t * p_71, int64_t  p_72, struct S0 * p_1199);
uint64_t  func_78(int32_t  p_79, uint32_t  p_80, int32_t  p_81, struct S0 * p_1199);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1199->g_3 p_1199->g_13 p_1199->g_15 p_1199->g_16 p_1199->g_17 p_1199->g_62 p_1199->g_118 p_1199->g_115 p_1199->g_125 p_1199->g_126 p_1199->g_111 p_1199->g_107 p_1199->g_143 p_1199->g_359 p_1199->g_383 p_1199->g_406 p_1199->g_411 p_1199->g_414 p_1199->g_378 p_1199->g_391 p_1199->g_423 p_1199->g_363 p_1199->g_407 p_1199->g_517 p_1199->g_361 p_1199->g_399 p_1199->g_572 p_1199->g_587 p_1199->g_644 p_1199->g_647 p_1199->g_1012 p_1199->g_1037 p_1199->g_1013 p_1199->g_1014 p_1199->g_1190
 * writes: p_1199->g_3 p_1199->g_13 p_1199->g_15 p_1199->g_17 p_1199->g_62 p_1199->g_107 p_1199->g_111 p_1199->g_115 p_1199->g_118 p_1199->g_126 p_1199->g_143 p_1199->g_361 p_1199->g_363 p_1199->g_378 p_1199->g_390 p_1199->g_399 p_1199->g_411 p_1199->g_423 p_1199->g_16 p_1199->g_587 p_1199->g_383 p_1199->g_621 p_1199->g_647 p_1199->g_1018 p_1199->g_1020 p_1199->g_1190
 */
int64_t  func_1(struct S0 * p_1199)
{ /* block id: 4 */
    int32_t *l_2 = &p_1199->g_3[1][0][0];
    uint32_t l_11 = 0x8F18B011L;
    uint32_t *l_12 = &p_1199->g_13;
    int32_t *l_14 = &p_1199->g_15;
    uint16_t l_24 = 0xC3FEL;
    int16_t *l_61[2][4][7];
    uint8_t *l_645 = &p_1199->g_143[0][0];
    uint8_t l_646 = 255UL;
    int32_t l_1172 = 0x60ECF7E5L;
    int32_t *l_1187 = (void*)0;
    int32_t *l_1188 = (void*)0;
    int32_t *l_1189 = &p_1199->g_1190;
    int32_t *l_1191 = &p_1199->g_1190;
    int32_t *l_1192[4][6][3] = {{{&p_1199->g_15,&l_1172,&l_1172},{&p_1199->g_15,&l_1172,&l_1172},{&p_1199->g_15,&l_1172,&l_1172},{&p_1199->g_15,&l_1172,&l_1172},{&p_1199->g_15,&l_1172,&l_1172},{&p_1199->g_15,&l_1172,&l_1172}},{{&p_1199->g_15,&l_1172,&l_1172},{&p_1199->g_15,&l_1172,&l_1172},{&p_1199->g_15,&l_1172,&l_1172},{&p_1199->g_15,&l_1172,&l_1172},{&p_1199->g_15,&l_1172,&l_1172},{&p_1199->g_15,&l_1172,&l_1172}},{{&p_1199->g_15,&l_1172,&l_1172},{&p_1199->g_15,&l_1172,&l_1172},{&p_1199->g_15,&l_1172,&l_1172},{&p_1199->g_15,&l_1172,&l_1172},{&p_1199->g_15,&l_1172,&l_1172},{&p_1199->g_15,&l_1172,&l_1172}},{{&p_1199->g_15,&l_1172,&l_1172},{&p_1199->g_15,&l_1172,&l_1172},{&p_1199->g_15,&l_1172,&l_1172},{&p_1199->g_15,&l_1172,&l_1172},{&p_1199->g_15,&l_1172,&l_1172},{&p_1199->g_15,&l_1172,&l_1172}}};
    int64_t l_1193[4][10];
    int8_t l_1194 = (-5L);
    int32_t l_1195 = 0x56E47A42L;
    uint64_t l_1196[1][4][2];
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 7; k++)
                l_61[i][j][k] = &p_1199->g_62[0][6];
        }
    }
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 10; j++)
            l_1193[i][j] = 0x6F1656F3F8767D8FL;
    }
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 2; k++)
                l_1196[i][j][k] = 18446744073709551615UL;
        }
    }
    (*l_2) &= 1L;
    (*p_1199->g_16) = (((((((*l_12) |= (func_4(p_1199->g_3[2][7][2], (func_7((*l_2), p_1199) < 0xEE5A9864L), p_1199) >= l_11)) >= ((0x07C837E0L | ((*l_14) = (-1L))) , func_4(((*l_14) &= (*l_2)), (*l_2), p_1199))) || p_1199->g_13) >= p_1199->g_3[1][0][0]) || 0L) , l_12);
    (*l_1189) ^= (func_18(l_2, l_24, (((func_4(((safe_sub_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((((safe_mul_func_int16_t_s_s(func_31(l_2, (FAKE_DIVERGE(p_1199->local_0_offset, get_local_id(0), 10) > (safe_sub_func_int16_t_s_s((p_1199->g_647[0][1] ^= ((((safe_mul_func_int16_t_s_s(((p_1199->g_3[2][5][2] | ((safe_add_func_int16_t_s_s((safe_rshift_func_int16_t_s_s(((safe_sub_func_uint32_t_u_u(((safe_div_func_uint16_t_u_u(func_7(p_1199->g_3[1][0][0], p_1199), ((p_1199->g_13 , (safe_mul_func_int16_t_s_s((safe_mul_func_uint16_t_u_u((*l_14), ((((*l_645) = (((safe_div_func_uint8_t_u_u(func_4((safe_mul_func_int8_t_s_s((safe_mod_func_uint64_t_u_u(func_58(((p_1199->g_62[0][5] = ((p_1199->g_3[1][0][0] , &p_1199->g_17) != &p_1199->g_17)) >= (*l_2)), p_1199->g_3[1][0][0], p_1199), (*l_14))), p_1199->g_3[1][0][0])), p_1199->g_3[1][0][0], p_1199), (*l_14))) < p_1199->g_359[2]) | p_1199->g_572[3])) >= p_1199->g_572[3]) & GROUP_DIVERGE(1, 1)))), (*l_2)))) || (*l_2)))) , 0x966D972CL), p_1199->g_15)) , (*p_1199->g_407)), 8)), (*l_2))) >= (-1L))) & l_646), 0L)) ^ (*l_2)) , (*p_1199->g_407)) , 6L)), FAKE_DIVERGE(p_1199->local_2_offset, get_local_id(2), 10)))), p_1199->g_572[3], l_14, p_1199), 0x0581L)) , (*l_2)) && (-7L)), p_1199->g_1037[1])), 0x5039L)) != p_1199->g_572[3]), l_24, p_1199) == l_1172) != p_1199->g_1037[5]) , (*l_2)), p_1199->g_1037[3], p_1199->g_1037[3], p_1199) < p_1199->g_572[0]);
    l_1196[0][0][1]++;
    return (*p_1199->g_399);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int16_t  func_4(int32_t  p_5, uint32_t  p_6, struct S0 * p_1199)
{ /* block id: 8 */
    int32_t l_10[9][7][4] = {{{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L}},{{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L}},{{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L}},{{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L}},{{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L}},{{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L}},{{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L}},{{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L}},{{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L},{0x39523DD9L,0x5A61940CL,0x32E5F58CL,0L}}};
    int i, j, k;
    return l_10[3][5][3];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint32_t  func_7(int64_t  p_8, struct S0 * p_1199)
{ /* block id: 6 */
    uint64_t l_9 = 1UL;
    return l_9;
}


/* ------------------------------------------ */
/* 
 * reads : p_1199->g_1013 p_1199->g_1014 p_1199->g_62 p_1199->g_143 p_1199->g_126 p_1199->g_414
 * writes: p_1199->g_17
 */
int32_t  func_18(uint32_t * p_19, uint32_t  p_20, int32_t  p_21, uint32_t  p_22, uint32_t  p_23, struct S0 * p_1199)
{ /* block id: 849 */
    int32_t **l_1173[3][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
    int64_t *l_1184 = &p_1199->g_378;
    int64_t **l_1185 = &l_1184;
    int i, j;
    (*p_1199->g_414) = func_67(l_1173[2][1], (safe_lshift_func_uint8_t_u_s(((safe_div_func_uint32_t_u_u((safe_rshift_func_int8_t_s_s(p_21, 4)), p_23)) ^ (safe_mul_func_int8_t_s_s((((safe_sub_func_uint64_t_u_u((*p_1199->g_1013), p_20)) , &p_1199->g_406) == (void*)0), ((((*l_1185) = l_1184) != (((safe_unary_minus_func_int32_t_s(p_21)) || 0x7F70L) , &p_1199->g_378)) != p_23)))), 3)), p_1199);
    return p_21;
}


/* ------------------------------------------ */
/* 
 * reads : p_1199->g_15 p_1199->g_363 p_1199->g_407 p_1199->g_62 p_1199->g_391 p_1199->g_399 p_1199->g_378 p_1199->g_143 p_1199->g_126 p_1199->g_572 p_1199->g_111 p_1199->g_3 p_1199->g_587 p_1199->g_406 p_1199->g_17 p_1199->g_1012 p_1199->g_115 p_1199->g_383
 * writes: p_1199->g_15 p_1199->g_363 p_1199->g_111 p_1199->g_17 p_1199->g_126 p_1199->g_1018 p_1199->g_1020 p_1199->g_115 p_1199->g_3 p_1199->g_13 p_1199->g_383
 */
int16_t  func_31(int32_t * p_32, uint64_t  p_33, int64_t  p_34, int32_t * p_35, struct S0 * p_1199)
{ /* block id: 395 */
    uint8_t l_661 = 0x9AL;
    int32_t **l_663 = &p_1199->g_17;
    int32_t ***l_662 = &l_663;
    uint8_t *l_665 = &p_1199->g_423;
    uint8_t **l_664 = &l_665;
    int16_t **l_987 = &p_1199->g_407;
    int16_t ***l_988 = &l_987;
    uint64_t l_999 = 2UL;
    int32_t l_1093[4] = {0x42DD7788L,0x42DD7788L,0x42DD7788L,0x42DD7788L};
    int i;
    for (p_1199->g_15 = (-8); (p_1199->g_15 >= 18); p_1199->g_15++)
    { /* block id: 398 */
        uint8_t ***l_666 = &l_664;
        if ((*p_35))
            break;
        for (p_1199->g_363 = 0; (p_1199->g_363 > 28); p_1199->g_363 = safe_add_func_uint64_t_u_u(p_1199->g_363, 6))
        { /* block id: 402 */
            uint64_t l_652[9][5] = {{0UL,0x60F19086FB24D767L,0UL,0UL,0x60F19086FB24D767L},{0UL,0x60F19086FB24D767L,0UL,0UL,0x60F19086FB24D767L},{0UL,0x60F19086FB24D767L,0UL,0UL,0x60F19086FB24D767L},{0UL,0x60F19086FB24D767L,0UL,0UL,0x60F19086FB24D767L},{0UL,0x60F19086FB24D767L,0UL,0UL,0x60F19086FB24D767L},{0UL,0x60F19086FB24D767L,0UL,0UL,0x60F19086FB24D767L},{0UL,0x60F19086FB24D767L,0UL,0UL,0x60F19086FB24D767L},{0UL,0x60F19086FB24D767L,0UL,0UL,0x60F19086FB24D767L},{0UL,0x60F19086FB24D767L,0UL,0UL,0x60F19086FB24D767L}};
            int i, j;
            l_652[5][0]--;
            (**l_662) = func_67(((p_34 & (safe_mul_func_int8_t_s_s((safe_lshift_func_int16_t_s_s((*p_1199->g_407), 9)), (+((((safe_lshift_func_int8_t_s_u((p_34 ^ (((p_33 != (((*p_1199->g_391) = l_661) || (l_662 != &l_663))) , ((*p_1199->g_399) & ((l_652[3][0] <= 5L) , 1UL))) | 0L)), 0)) , l_652[5][0]) || 0UL) == (*p_1199->g_407)))))) , &p_32), p_1199->g_62[0][0], p_1199);
        }
        (*l_666) = l_664;
    }
    if ((atomic_inc(&p_1199->l_atomic_input[18]) == 1))
    { /* block id: 410 */
        int32_t l_667 = 0x564F6DD5L;
        int32_t l_853 = 0x56DCFF19L;
        int32_t l_854[7][3] = {{0x51D99BDEL,0x21C9F451L,0x51D99BDEL},{0x51D99BDEL,0x21C9F451L,0x51D99BDEL},{0x51D99BDEL,0x21C9F451L,0x51D99BDEL},{0x51D99BDEL,0x21C9F451L,0x51D99BDEL},{0x51D99BDEL,0x21C9F451L,0x51D99BDEL},{0x51D99BDEL,0x21C9F451L,0x51D99BDEL},{0x51D99BDEL,0x21C9F451L,0x51D99BDEL}};
        int32_t l_855 = (-1L);
        int32_t l_856 = 0x3BC6D24EL;
        int i, j;
        for (l_667 = 3; (l_667 >= 0); l_667 -= 1)
        { /* block id: 413 */
            int32_t l_668 = 0x035F7C0EL;
            uint32_t l_669[2][5] = {{1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL}};
            int8_t l_670 = 0x43L;
            int32_t l_671 = (-1L);
            uint8_t l_672[5][8][6] = {{{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL}},{{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL}},{{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL}},{{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL}},{{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL},{0x49L,7UL,0xC6L,4UL,255UL,253UL}}};
            uint32_t l_673 = 0x8FF78E98L;
            int16_t l_674 = 0x3ACAL;
            int32_t l_675 = (-9L);
            int8_t l_725 = (-1L);
            int i, j, k;
            l_670 |= (l_669[1][1] &= l_668);
            l_672[0][1][0] = l_671;
            if (((l_673 , l_674) , l_675))
            { /* block id: 417 */
                int32_t l_676 = (-1L);
                uint8_t l_677 = 255UL;
                int32_t l_697 = 6L;
                int32_t *l_696 = &l_697;
                l_677 ^= l_676;
                for (l_676 = 1; (l_676 <= 4); l_676 += 1)
                { /* block id: 421 */
                    int32_t l_678 = 0x40B26303L;
                    int32_t l_689 = 4L;
                    int32_t *l_690 = &l_689;
                    int32_t *l_691 = &l_689;
                    int i, j;
                    if (l_678)
                    { /* block id: 422 */
                        int32_t l_680 = 0x5195F775L;
                        int32_t *l_679 = &l_680;
                        int32_t *l_681 = &l_680;
                        l_681 = l_679;
                    }
                    else
                    { /* block id: 424 */
                        uint32_t l_682 = 0xCC6D1E8FL;
                        int32_t l_685 = 3L;
                        uint32_t l_686[4] = {0x56E30C1BL,0x56E30C1BL,0x56E30C1BL,0x56E30C1BL};
                        int i;
                        --l_682;
                        l_675 ^= (-1L);
                        l_686[3]--;
                        l_675 ^= 0L;
                    }
                    l_691 = (l_689 , (l_690 = (void*)0));
                    for (l_689 = 0; (l_689 <= 3); l_689 += 1)
                    { /* block id: 434 */
                        int32_t l_693[6] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
                        int32_t *l_692 = &l_693[0];
                        int32_t *l_694 = &l_693[0];
                        int32_t l_695 = (-5L);
                        int i;
                        l_692 = l_692;
                        l_691 = l_694;
                        (*l_691) |= 0x4DC2A215L;
                        l_695 = (-10L);
                    }
                }
                l_696 = (void*)0;
            }
            else
            { /* block id: 442 */
                int32_t l_698 = 1L;
                l_675 = 0x507B6C00L;
                for (l_698 = 3; (l_698 >= 0); l_698 -= 1)
                { /* block id: 446 */
                    int32_t l_700 = 0x3507B3A8L;
                    int32_t *l_699 = &l_700;
                    int32_t *l_701 = &l_700;
                    int64_t l_702 = 0x1D3CB0E9F0A07E34L;
                    int8_t l_703 = 0x55L;
                    uint32_t l_704 = 0x6227EDF5L;
                    int i, j;
                    l_701 = l_699;
                    l_704--;
                }
                for (l_698 = 3; (l_698 >= 0); l_698 -= 1)
                { /* block id: 452 */
                    int16_t l_707 = (-7L);
                    uint64_t l_708 = 2UL;
                    uint64_t l_711 = 18446744073709551615UL;
                    uint64_t l_712 = 18446744073709551611UL;
                    uint16_t l_719 = 0x0746L;
                    uint16_t *l_718 = &l_719;
                    uint16_t **l_717 = &l_718;
                    uint16_t **l_720 = &l_718;
                    int32_t l_721 = (-1L);
                    int32_t l_722 = 0x29822418L;
                    l_671 = (((++l_708) , l_711) , l_712);
                    for (l_711 = 0; (l_711 <= 3); l_711 += 1)
                    { /* block id: 457 */
                        int32_t l_714 = (-1L);
                        int32_t *l_713 = &l_714;
                        int32_t *l_715 = &l_714;
                        uint8_t l_716[4][1];
                        int i, j;
                        for (i = 0; i < 4; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_716[i][j] = 0xCDL;
                        }
                        l_715 = l_713;
                        l_671 |= l_716[0][0];
                    }
                    l_720 = l_717;
                    l_722 = l_721;
                }
                for (l_698 = 3; (l_698 >= 0); l_698 -= 1)
                { /* block id: 466 */
                    int32_t l_723 = 0x038E5DE7L;
                    for (l_723 = 0; (l_723 <= 3); l_723 += 1)
                    { /* block id: 469 */
                        uint8_t l_724 = 0x13L;
                        int i;
                        l_724 &= p_1199->g_572[l_723];
                    }
                }
            }
            if ((l_675 ^= (l_725 |= 0x6DAB864EL)))
            { /* block id: 476 */
                int64_t l_726 = 9L;
                int32_t l_727[5] = {0L,0L,0L,0L,0L};
                int32_t l_728[3][6] = {{(-2L),0x744E3925L,0L,0x744E3925L,(-2L),(-2L)},{(-2L),0x744E3925L,0L,0x744E3925L,(-2L),(-2L)},{(-2L),0x744E3925L,0L,0x744E3925L,(-2L),(-2L)}};
                int8_t l_729[1];
                uint32_t l_730 = 9UL;
                uint8_t l_733 = 246UL;
                int64_t l_734 = (-1L);
                uint32_t l_735[10] = {4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL,4294967291UL};
                int i, j;
                for (i = 0; i < 1; i++)
                    l_729[i] = 0x56L;
                l_727[3] = l_726;
                l_730--;
                if ((l_733 , (l_734 , l_735[5])))
                { /* block id: 479 */
                    int32_t l_736 = 0x1AB4D601L;
                    uint8_t l_750 = 0x18L;
                    int64_t l_751 = 0x34270185ADF9C49FL;
                    int64_t l_752 = 0x3BD628254C99C7F3L;
                    int64_t l_753 = (-2L);
                    int16_t l_754[9][8] = {{0x2587L,0x2496L,7L,1L,7L,0x2496L,0x2587L,0x5E17L},{0x2587L,0x2496L,7L,1L,7L,0x2496L,0x2587L,0x5E17L},{0x2587L,0x2496L,7L,1L,7L,0x2496L,0x2587L,0x5E17L},{0x2587L,0x2496L,7L,1L,7L,0x2496L,0x2587L,0x5E17L},{0x2587L,0x2496L,7L,1L,7L,0x2496L,0x2587L,0x5E17L},{0x2587L,0x2496L,7L,1L,7L,0x2496L,0x2587L,0x5E17L},{0x2587L,0x2496L,7L,1L,7L,0x2496L,0x2587L,0x5E17L},{0x2587L,0x2496L,7L,1L,7L,0x2496L,0x2587L,0x5E17L},{0x2587L,0x2496L,7L,1L,7L,0x2496L,0x2587L,0x5E17L}};
                    int8_t l_755 = 0L;
                    uint8_t l_756 = 0UL;
                    uint16_t l_757 = 5UL;
                    uint64_t l_758 = 7UL;
                    uint8_t l_759[5][8][4] = {{{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL}},{{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL}},{{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL}},{{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL}},{{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL},{0x91L,3UL,0xD9L,3UL}}};
                    uint8_t l_760 = 0x21L;
                    uint64_t l_761 = 0xD22D7DB1F141885CL;
                    int16_t l_762 = 0x4F55L;
                    int32_t l_763 = 0L;
                    int32_t l_764 = 0x30F8D1AFL;
                    int i, j, k;
                    for (l_736 = 3; (l_736 >= 0); l_736 -= 1)
                    { /* block id: 482 */
                        int16_t l_739 = 1L;
                        int16_t *l_738 = &l_739;
                        int16_t **l_737 = &l_738;
                        int16_t **l_740 = &l_738;
                        int32_t l_742[6] = {(-3L),0x4D0078D2L,(-3L),(-3L),0x4D0078D2L,(-3L)};
                        int32_t *l_741 = &l_742[1];
                        int32_t l_743 = (-7L);
                        int64_t l_744[8][8] = {{(-8L),0x6986335A92CB4F14L,0x0C1A0E978E16F4F5L,0L,0x6986335A92CB4F14L,0L,0x0C1A0E978E16F4F5L,0x6986335A92CB4F14L},{(-8L),0x6986335A92CB4F14L,0x0C1A0E978E16F4F5L,0L,0x6986335A92CB4F14L,0L,0x0C1A0E978E16F4F5L,0x6986335A92CB4F14L},{(-8L),0x6986335A92CB4F14L,0x0C1A0E978E16F4F5L,0L,0x6986335A92CB4F14L,0L,0x0C1A0E978E16F4F5L,0x6986335A92CB4F14L},{(-8L),0x6986335A92CB4F14L,0x0C1A0E978E16F4F5L,0L,0x6986335A92CB4F14L,0L,0x0C1A0E978E16F4F5L,0x6986335A92CB4F14L},{(-8L),0x6986335A92CB4F14L,0x0C1A0E978E16F4F5L,0L,0x6986335A92CB4F14L,0L,0x0C1A0E978E16F4F5L,0x6986335A92CB4F14L},{(-8L),0x6986335A92CB4F14L,0x0C1A0E978E16F4F5L,0L,0x6986335A92CB4F14L,0L,0x0C1A0E978E16F4F5L,0x6986335A92CB4F14L},{(-8L),0x6986335A92CB4F14L,0x0C1A0E978E16F4F5L,0L,0x6986335A92CB4F14L,0L,0x0C1A0E978E16F4F5L,0x6986335A92CB4F14L},{(-8L),0x6986335A92CB4F14L,0x0C1A0E978E16F4F5L,0L,0x6986335A92CB4F14L,0L,0x0C1A0E978E16F4F5L,0x6986335A92CB4F14L}};
                        int32_t l_745 = 0x64C49398L;
                        uint32_t l_746 = 0xCE6F22C4L;
                        int32_t *l_749 = &l_742[1];
                        int i, j;
                        l_740 = l_737;
                        l_741 = l_741;
                        --l_746;
                        l_741 = l_749;
                    }
                    l_728[1][0] |= (l_750 , l_751);
                    if (((l_752 , (l_763 ^= ((((l_753 , 0x1318L) , ((l_726 = (((l_754[1][5] , 0x5063B56E829C7F2FL) , (l_756 = l_755)) , (l_757 , ((l_759[2][7][2] = l_758) , 0x7F27E156D5C53A0CL)))) , l_760)) , l_761) , l_762))) , l_764))
                    { /* block id: 493 */
                        uint8_t l_765 = 0x28L;
                        int8_t l_766 = 0L;
                        int64_t l_767 = 0x6DFFE900726D9301L;
                        uint8_t l_768 = 0x4EL;
                        l_736 &= l_765;
                        --l_768;
                        l_675 |= 0x66A9F5B8L;
                    }
                    else
                    { /* block id: 497 */
                        int32_t l_771 = 1L;
                        int32_t *l_772 = &l_771;
                        int32_t l_773 = 1L;
                        int32_t l_774 = (-8L);
                        int32_t l_775 = 0x4A7765BBL;
                        l_728[1][0] = (l_764 = 1L);
                        l_728[1][0] = l_771;
                        l_772 = (void*)0;
                        l_775 = (l_773 , (l_728[1][0] = l_774));
                    }
                }
                else
                { /* block id: 505 */
                    int32_t l_776 = 0L;
                    int16_t l_788 = 0x5864L;
                    int8_t l_789 = 1L;
                    int16_t l_790[9] = {7L,7L,7L,7L,7L,7L,7L,7L,7L};
                    int8_t l_791 = 0x0DL;
                    uint32_t l_792 = 0xC85ABAFEL;
                    uint32_t l_811 = 0xC943E11EL;
                    uint32_t l_812 = 0UL;
                    uint8_t l_813 = 249UL;
                    int i;
                    for (l_776 = 3; (l_776 >= 0); l_776 -= 1)
                    { /* block id: 508 */
                        int32_t l_777 = 0x3D63E570L;
                        int32_t l_778 = 0x5A9093D0L;
                        int16_t l_779[9][6][4] = {{{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL}},{{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL}},{{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL}},{{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL}},{{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL}},{{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL}},{{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL}},{{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL}},{{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL},{7L,5L,(-4L),0x4D2EL}}};
                        int64_t l_780 = 0x02E033C8AC4228CCL;
                        int8_t l_781[10][2][2] = {{{0x0FL,8L},{0x0FL,8L}},{{0x0FL,8L},{0x0FL,8L}},{{0x0FL,8L},{0x0FL,8L}},{{0x0FL,8L},{0x0FL,8L}},{{0x0FL,8L},{0x0FL,8L}},{{0x0FL,8L},{0x0FL,8L}},{{0x0FL,8L},{0x0FL,8L}},{{0x0FL,8L},{0x0FL,8L}},{{0x0FL,8L},{0x0FL,8L}},{{0x0FL,8L},{0x0FL,8L}}};
                        int16_t l_782 = 5L;
                        int8_t l_783 = 0x32L;
                        int8_t l_784 = (-3L);
                        uint16_t l_785 = 0UL;
                        int i, j, k;
                        l_675 &= (l_777 , (l_778 , l_779[1][3][2]));
                        l_728[1][0] |= l_780;
                        l_778 &= l_781[9][1][0];
                        l_785--;
                    }
                    if ((l_776 ^= (l_671 = (((l_788 , (l_674 = 0x4F2FL)) , FAKE_DIVERGE(p_1199->global_0_offset, get_global_id(0), 10)) , (l_789 , (((l_792 ^= ((((l_790[1] , ((l_672[0][7][3] = GROUP_DIVERGE(2, 1)) , 0x46L)) , 0xA1181BB578D7DC45L) , 0x4FA8L) , l_791)) , 1UL) , 0x09D7EA9FL))))))
                    { /* block id: 519 */
                        int32_t l_795 = 0x5CC008DBL;
                        int32_t *l_794 = &l_795;
                        int32_t **l_793 = &l_794;
                        int32_t **l_796 = &l_794;
                        int32_t *l_797 = &l_795;
                        uint32_t l_798 = 7UL;
                        l_671 ^= (-7L);
                        l_796 = (l_793 = (void*)0);
                        l_797 = (void*)0;
                        l_776 |= l_798;
                    }
                    else
                    { /* block id: 525 */
                        int64_t l_799 = 9L;
                        int32_t l_800 = (-10L);
                        int32_t l_801[10][10][2] = {{{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL}},{{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL}},{{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL}},{{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL}},{{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL}},{{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL}},{{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL}},{{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL}},{{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL}},{{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL},{(-1L),0x2E1DE63BL}}};
                        uint32_t l_802 = 0x8A430E99L;
                        int32_t l_805 = 0L;
                        int32_t l_806[4];
                        int64_t l_807 = 0x0F120F11C1522B8CL;
                        uint32_t l_808 = 4294967295UL;
                        int i, j, k;
                        for (i = 0; i < 4; i++)
                            l_806[i] = 0x1B1BAAD2L;
                        l_802++;
                        l_671 = l_805;
                        l_801[8][8][0] = l_806[2];
                        l_808++;
                    }
                    l_776 = ((l_812 = l_811) , (l_728[0][2] ^= l_813));
                }
                for (l_727[3] = 0; (l_727[3] <= 0); l_727[3] += 1)
                { /* block id: 537 */
                    int32_t l_814 = 2L;
                    int32_t l_821 = 0L;
                    int32_t l_822 = (-1L);
                    int32_t *l_823 = (void*)0;
                    for (l_814 = 0; (l_814 <= 3); l_814 += 1)
                    { /* block id: 540 */
                        int32_t l_815 = 4L;
                        int16_t l_816 = 0x1838L;
                        uint32_t l_817 = 1UL;
                        uint16_t l_820[3][1];
                        int i, j;
                        for (i = 0; i < 3; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_820[i][j] = 5UL;
                        }
                        l_817++;
                        l_671 &= (l_675 = (l_728[(l_727[3] + 1)][(l_727[3] + 2)] , l_820[2][0]));
                    }
                    for (l_814 = 0; l_814 < 5; l_814 += 1)
                    {
                        for (l_821 = 0; l_821 < 8; l_821 += 1)
                        {
                            for (l_822 = 0; l_822 < 6; l_822 += 1)
                            {
                                l_672[l_814][l_821][l_822] = 0x6DL;
                            }
                        }
                    }
                    l_823 = (void*)0;
                }
            }
            else
            { /* block id: 548 */
                int32_t l_824 = (-6L);
                l_671 ^= l_824;
                for (l_824 = 3; (l_824 >= 0); l_824 -= 1)
                { /* block id: 552 */
                    int32_t l_826 = 1L;
                    int32_t *l_825 = &l_826;
                    int32_t *l_827[5][9] = {{&l_826,&l_826,&l_826,(void*)0,&l_826,&l_826,&l_826,(void*)0,&l_826},{&l_826,&l_826,&l_826,(void*)0,&l_826,&l_826,&l_826,(void*)0,&l_826},{&l_826,&l_826,&l_826,(void*)0,&l_826,&l_826,&l_826,(void*)0,&l_826},{&l_826,&l_826,&l_826,(void*)0,&l_826,&l_826,&l_826,(void*)0,&l_826},{&l_826,&l_826,&l_826,(void*)0,&l_826,&l_826,&l_826,(void*)0,&l_826}};
                    uint8_t l_828[4] = {251UL,251UL,251UL,251UL};
                    int i, j;
                    l_827[3][2] = l_825;
                    l_675 &= (l_671 = (p_1199->g_572[l_667] , l_828[0]));
                }
            }
            for (l_668 = 0; (l_668 <= 3); l_668 += 1)
            { /* block id: 560 */
                int64_t l_829 = 0L;
                int8_t l_830[5][9] = {{0x74L,0x30L,0x2EL,0x30L,0x74L,0x74L,0x30L,0x2EL,0x30L},{0x74L,0x30L,0x2EL,0x30L,0x74L,0x74L,0x30L,0x2EL,0x30L},{0x74L,0x30L,0x2EL,0x30L,0x74L,0x74L,0x30L,0x2EL,0x30L},{0x74L,0x30L,0x2EL,0x30L,0x74L,0x74L,0x30L,0x2EL,0x30L},{0x74L,0x30L,0x2EL,0x30L,0x74L,0x74L,0x30L,0x2EL,0x30L}};
                int32_t *l_831 = (void*)0;
                int32_t l_833 = 0x153B5A08L;
                int32_t *l_832 = &l_833;
                int64_t l_834[4] = {0x16854FAC15797E66L,0x16854FAC15797E66L,0x16854FAC15797E66L,0x16854FAC15797E66L};
                uint8_t l_835 = 4UL;
                uint16_t l_836 = 1UL;
                int32_t l_837 = 0x4332D753L;
                int32_t *l_838 = &l_837;
                int32_t *l_839 = &l_833;
                int i, j;
                l_675 |= ((l_674 = (l_829 = 6L)) , (-6L));
                l_832 = ((l_670 = l_830[2][3]) , l_831);
                l_839 = ((l_837 = ((l_834[0] , 0x52L) , (l_836 = l_835))) , l_838);
                for (l_833 = 3; (l_833 >= 0); l_833 -= 1)
                { /* block id: 571 */
                    int32_t l_840 = (-9L);
                    for (l_840 = 0; (l_840 <= 3); l_840 += 1)
                    { /* block id: 574 */
                        int32_t l_841[8][8] = {{(-1L),(-1L),0L,(-1L),(-2L),(-1L),0L,(-1L)},{(-1L),(-1L),0L,(-1L),(-2L),(-1L),0L,(-1L)},{(-1L),(-1L),0L,(-1L),(-2L),(-1L),0L,(-1L)},{(-1L),(-1L),0L,(-1L),(-2L),(-1L),0L,(-1L)},{(-1L),(-1L),0L,(-1L),(-2L),(-1L),0L,(-1L)},{(-1L),(-1L),0L,(-1L),(-2L),(-1L),0L,(-1L)},{(-1L),(-1L),0L,(-1L),(-2L),(-1L),0L,(-1L)},{(-1L),(-1L),0L,(-1L),(-2L),(-1L),0L,(-1L)}};
                        int8_t l_842 = 1L;
                        int32_t l_843 = 0x0FE98CF2L;
                        uint64_t l_844 = 0xD70638E3F328DA35L;
                        int32_t l_847 = (-2L);
                        uint32_t l_848 = 0xB2E4F060L;
                        uint32_t l_849 = 0UL;
                        int32_t *l_850 = &l_841[7][3];
                        uint8_t l_851 = 246UL;
                        uint16_t l_852 = 0xF876L;
                        int i, j;
                        ++l_844;
                        (*l_839) |= (l_847 , ((l_829 = l_848) , (l_849 = (-7L))));
                        l_850 = (void*)0;
                        l_852 ^= ((*l_838) ^= (l_851 = 0x56757D41L));
                    }
                    (*l_838) = 1L;
                }
            }
        }
        if ((l_853 = ((l_856 ^= ((l_854[0][2] = l_853) , l_855)) , (-2L))))
        { /* block id: 591 */
            uint8_t l_857 = 6UL;
            uint16_t l_858[7] = {0xECB7L,0xD104L,0xECB7L,0xECB7L,0xD104L,0xECB7L,0xECB7L};
            uint32_t l_859[3];
            uint64_t l_940 = 1UL;
            int i;
            for (i = 0; i < 3; i++)
                l_859[i] = 1UL;
            l_854[0][2] = 0L;
            if ((GROUP_DIVERGE(2, 1) , (l_857 , (l_859[0] &= l_858[3]))))
            { /* block id: 594 */
                int8_t l_860[10][6] = {{0x37L,0x74L,0x15L,0x74L,0x37L,0x37L},{0x37L,0x74L,0x15L,0x74L,0x37L,0x37L},{0x37L,0x74L,0x15L,0x74L,0x37L,0x37L},{0x37L,0x74L,0x15L,0x74L,0x37L,0x37L},{0x37L,0x74L,0x15L,0x74L,0x37L,0x37L},{0x37L,0x74L,0x15L,0x74L,0x37L,0x37L},{0x37L,0x74L,0x15L,0x74L,0x37L,0x37L},{0x37L,0x74L,0x15L,0x74L,0x37L,0x37L},{0x37L,0x74L,0x15L,0x74L,0x37L,0x37L},{0x37L,0x74L,0x15L,0x74L,0x37L,0x37L}};
                int32_t l_861 = 0x78FC1A6BL;
                int8_t l_862 = 0x43L;
                uint32_t l_863[10][6] = {{4294967290UL,0xC4EE21B7L,0x39C0BF0EL,4294967290UL,4294967293UL,0x39C0BF0EL},{4294967290UL,0xC4EE21B7L,0x39C0BF0EL,4294967290UL,4294967293UL,0x39C0BF0EL},{4294967290UL,0xC4EE21B7L,0x39C0BF0EL,4294967290UL,4294967293UL,0x39C0BF0EL},{4294967290UL,0xC4EE21B7L,0x39C0BF0EL,4294967290UL,4294967293UL,0x39C0BF0EL},{4294967290UL,0xC4EE21B7L,0x39C0BF0EL,4294967290UL,4294967293UL,0x39C0BF0EL},{4294967290UL,0xC4EE21B7L,0x39C0BF0EL,4294967290UL,4294967293UL,0x39C0BF0EL},{4294967290UL,0xC4EE21B7L,0x39C0BF0EL,4294967290UL,4294967293UL,0x39C0BF0EL},{4294967290UL,0xC4EE21B7L,0x39C0BF0EL,4294967290UL,4294967293UL,0x39C0BF0EL},{4294967290UL,0xC4EE21B7L,0x39C0BF0EL,4294967290UL,4294967293UL,0x39C0BF0EL},{4294967290UL,0xC4EE21B7L,0x39C0BF0EL,4294967290UL,4294967293UL,0x39C0BF0EL}};
                int i, j;
                l_854[0][2] = ((l_856 = (-10L)) , (l_860[7][2] , ((l_862 = l_861) , 0x1424BCBEL)));
                if ((l_863[4][5] = (-6L)))
                { /* block id: 599 */
                    uint32_t l_864 = 1UL;
                    uint8_t l_865 = 1UL;
                    l_854[0][2] = (l_667 = l_864);
                    if (l_865)
                    { /* block id: 602 */
                        uint32_t l_866 = 7UL;
                        uint8_t l_867[6];
                        int32_t l_869 = (-1L);
                        int32_t *l_868 = &l_869;
                        int32_t *l_870[7][4] = {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}};
                        int32_t *l_871 = (void*)0;
                        int8_t l_872 = 0x73L;
                        int32_t *l_873[9][10][2] = {{{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869}},{{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869}},{{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869}},{{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869}},{{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869}},{{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869}},{{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869}},{{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869}},{{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869},{&l_869,&l_869}}};
                        int32_t *l_874 = &l_869;
                        int8_t l_875 = 1L;
                        int32_t l_876[9][10][1] = {{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}}};
                        int8_t l_877 = 8L;
                        uint8_t l_878 = 249UL;
                        int i, j, k;
                        for (i = 0; i < 6; i++)
                            l_867[i] = 247UL;
                        l_871 = (FAKE_DIVERGE(p_1199->local_1_offset, get_local_id(1), 10) , ((l_866 = (-3L)) , (l_870[0][1] = (l_868 = ((l_860[7][2] ^= ((l_856 = l_867[5]) , 0x5AL)) , (void*)0)))));
                        l_874 = (l_872 , l_873[8][8][0]);
                        --l_878;
                    }
                    else
                    { /* block id: 611 */
                        int8_t l_881 = (-1L);
                        uint8_t l_882 = 0x56L;
                        uint64_t l_883 = 0x9BB1B6864B299560L;
                        int32_t l_884 = (-1L);
                        uint32_t l_885 = 0x2AC32224L;
                        l_853 &= (l_667 &= l_881);
                        l_883 ^= l_882;
                        l_885--;
                    }
                }
                else
                { /* block id: 617 */
                    uint8_t l_888 = 255UL;
                    uint16_t l_889 = 4UL;
                    uint32_t l_890[2][10][2] = {{{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL}},{{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL}}};
                    int i, j, k;
                    l_889 ^= l_888;
                    if (l_890[1][4][0])
                    { /* block id: 619 */
                        int32_t *l_891 = (void*)0;
                        int32_t l_893 = 1L;
                        int32_t *l_892 = &l_893;
                        uint32_t **l_894 = (void*)0;
                        uint32_t l_897[8][4] = {{1UL,0x16B18542L,1UL,1UL},{1UL,0x16B18542L,1UL,1UL},{1UL,0x16B18542L,1UL,1UL},{1UL,0x16B18542L,1UL,1UL},{1UL,0x16B18542L,1UL,1UL},{1UL,0x16B18542L,1UL,1UL},{1UL,0x16B18542L,1UL,1UL},{1UL,0x16B18542L,1UL,1UL}};
                        uint32_t *l_896 = &l_897[0][3];
                        uint32_t **l_895 = &l_896;
                        int64_t l_898[6];
                        uint32_t l_899 = 0xC48C043AL;
                        int i, j;
                        for (i = 0; i < 6; i++)
                            l_898[i] = 0x292B0A2B36F7665CL;
                        l_891 = l_891;
                        l_892 = (void*)0;
                        l_895 = (l_894 = (void*)0);
                        l_899 ^= l_898[5];
                    }
                    else
                    { /* block id: 625 */
                        int32_t l_900 = 0x1D420189L;
                        int32_t l_901 = 0x7E388CFAL;
                        int64_t l_902[6];
                        uint8_t l_903 = 0x42L;
                        int16_t l_904 = 2L;
                        int16_t l_905 = 0x3D79L;
                        int i;
                        for (i = 0; i < 6; i++)
                            l_902[i] = 0x321C3E190D0CF72DL;
                        l_903 &= (l_902[3] ^= (l_900 , l_901));
                        l_853 = l_904;
                        l_854[3][0] ^= (l_853 &= l_905);
                    }
                    l_854[0][2] |= 0x7E6C8C85L;
                }
            }
            else
            { /* block id: 634 */
                int32_t l_906 = (-1L);
                int8_t l_912 = 0x23L;
                uint16_t l_939[8] = {65535UL,65535UL,65535UL,65535UL,65535UL,65535UL,65535UL,65535UL};
                int i;
                for (l_906 = 0; (l_906 <= 21); l_906++)
                { /* block id: 637 */
                    uint64_t l_909 = 0xDFF028F2F47224EDL;
                    ++l_909;
                }
                if ((l_853 = (l_854[4][0] |= l_912)))
                { /* block id: 642 */
                    int32_t l_914 = 0x13C2B9FEL;
                    int32_t *l_913[1][4];
                    int32_t *l_915[4][5] = {{&l_914,&l_914,&l_914,&l_914,&l_914},{&l_914,&l_914,&l_914,&l_914,&l_914},{&l_914,&l_914,&l_914,&l_914,&l_914},{&l_914,&l_914,&l_914,&l_914,&l_914}};
                    int i, j;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 4; j++)
                            l_913[i][j] = &l_914;
                    }
                    l_915[3][0] = l_913[0][1];
                }
                else
                { /* block id: 644 */
                    int64_t l_916 = 0x1217863B8CF191C8L;
                    if (((l_857 ^= 0x05L) , l_916))
                    { /* block id: 646 */
                        int32_t l_918 = (-4L);
                        int32_t *l_917 = &l_918;
                        int32_t *l_919 = &l_918;
                        int32_t *l_920 = &l_918;
                        int32_t *l_921 = &l_918;
                        uint32_t l_922[3];
                        int i;
                        for (i = 0; i < 3; i++)
                            l_922[i] = 0UL;
                        l_917 = (void*)0;
                        l_853 &= 0L;
                        l_921 = (l_920 = l_919);
                        l_922[1] = 0x0EB7CD51L;
                    }
                    else
                    { /* block id: 652 */
                        int32_t l_924[4];
                        int32_t *l_923 = &l_924[2];
                        int32_t l_925 = 0x6BDDBC28L;
                        int64_t l_926 = 0x14D172FC87301A43L;
                        uint64_t l_927[6][1] = {{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}};
                        int32_t *l_928 = &l_924[2];
                        int32_t *l_929[8] = {&l_924[1],&l_924[1],&l_924[1],&l_924[1],&l_924[1],&l_924[1],&l_924[1],&l_924[1]};
                        int32_t *l_930 = &l_924[3];
                        uint32_t l_931 = 1UL;
                        int i, j;
                        for (i = 0; i < 4; i++)
                            l_924[i] = 0x3AF446D8L;
                        l_923 = (void*)0;
                        l_667 = l_925;
                        l_928 = ((l_926 , l_927[3][0]) , (l_930 = (l_929[5] = l_928)));
                        l_854[0][2] = (l_931 , 0L);
                    }
                    for (l_916 = 1; (l_916 <= 6); l_916 += 1)
                    { /* block id: 662 */
                        int32_t l_932 = 0x35CF76DDL;
                        l_906 = l_932;
                    }
                    for (l_916 = 1; (l_916 >= 0); l_916 -= 1)
                    { /* block id: 667 */
                        int32_t l_933 = (-1L);
                        int64_t l_934[6] = {0x188C11A3BF005185L,0x188C11A3BF005185L,0x188C11A3BF005185L,0x188C11A3BF005185L,0x188C11A3BF005185L,0x188C11A3BF005185L};
                        uint32_t l_935 = 0xBA6B7705L;
                        uint32_t l_938 = 4294967295UL;
                        int i;
                        l_935--;
                        l_906 = (-7L);
                        l_854[3][0] ^= l_938;
                    }
                }
                l_853 |= (l_854[0][2] = l_939[3]);
            }
            if (l_940)
            { /* block id: 676 */
                int32_t l_941 = 1L;
                int8_t l_942 = 6L;
                int64_t l_943 = (-1L);
                int8_t l_944 = 0x09L;
                int8_t l_945 = (-10L);
                uint8_t l_946 = 0x72L;
                uint64_t l_949[5][9][5] = {{{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL}},{{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL}},{{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL}},{{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL}},{{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL},{0x84097080CE17FBA7L,18446744073709551607UL,18446744073709551609UL,0xF94F721B6F26953EL,18446744073709551610UL}}};
                int i, j, k;
                l_946--;
                l_854[1][2] ^= l_949[3][3][0];
                for (l_942 = 3; (l_942 >= 1); l_942 -= 1)
                { /* block id: 681 */
                    uint32_t l_950[10][1][8] = {{{0xD699575DL,4294967295UL,1UL,4294967293UL,4294967295UL,0xD699575DL,4294967293UL,0x22D81149L}},{{0xD699575DL,4294967295UL,1UL,4294967293UL,4294967295UL,0xD699575DL,4294967293UL,0x22D81149L}},{{0xD699575DL,4294967295UL,1UL,4294967293UL,4294967295UL,0xD699575DL,4294967293UL,0x22D81149L}},{{0xD699575DL,4294967295UL,1UL,4294967293UL,4294967295UL,0xD699575DL,4294967293UL,0x22D81149L}},{{0xD699575DL,4294967295UL,1UL,4294967293UL,4294967295UL,0xD699575DL,4294967293UL,0x22D81149L}},{{0xD699575DL,4294967295UL,1UL,4294967293UL,4294967295UL,0xD699575DL,4294967293UL,0x22D81149L}},{{0xD699575DL,4294967295UL,1UL,4294967293UL,4294967295UL,0xD699575DL,4294967293UL,0x22D81149L}},{{0xD699575DL,4294967295UL,1UL,4294967293UL,4294967295UL,0xD699575DL,4294967293UL,0x22D81149L}},{{0xD699575DL,4294967295UL,1UL,4294967293UL,4294967295UL,0xD699575DL,4294967293UL,0x22D81149L}},{{0xD699575DL,4294967295UL,1UL,4294967293UL,4294967295UL,0xD699575DL,4294967293UL,0x22D81149L}}};
                    int i, j, k;
                    l_854[0][2] = (FAKE_DIVERGE(p_1199->local_1_offset, get_local_id(1), 10) , p_1199->g_126[(l_942 + 1)]);
                    if (l_950[6][0][4])
                    { /* block id: 683 */
                        int32_t l_951 = 0x0CECF3A9L;
                        int16_t l_952[7];
                        uint8_t l_953 = 9UL;
                        int16_t l_954 = 0x6CC1L;
                        uint8_t l_955[6][2] = {{9UL,9UL},{9UL,9UL},{9UL,9UL},{9UL,9UL},{9UL,9UL},{9UL,9UL}};
                        uint8_t l_956 = 0x68L;
                        int32_t l_957 = 8L;
                        int8_t l_958 = 0x7DL;
                        int i, j;
                        for (i = 0; i < 7; i++)
                            l_952[i] = 0x2142L;
                        l_956 |= (l_853 = ((l_953 &= (l_943 = ((l_949[3][3][0] = l_951) , l_952[3]))) , (l_954 , l_955[5][1])));
                        l_958 = l_957;
                        l_854[0][2] = (p_1199->g_126[(l_942 + 1)] = (-6L));
                    }
                    else
                    { /* block id: 692 */
                        uint32_t l_959 = 4294967295UL;
                        --l_959;
                    }
                    for (l_950[6][0][4] = 0; (l_950[6][0][4] <= 4); l_950[6][0][4] += 1)
                    { /* block id: 697 */
                        int16_t l_962 = (-1L);
                        int8_t l_963 = 0x38L;
                        int16_t l_964 = 0x36EAL;
                        uint32_t l_965[9][9] = {{4294967286UL,0x6E306433L,0UL,0xAFE59F56L,0x6E306433L,0xAFE59F56L,0UL,0x6E306433L,4294967286UL},{4294967286UL,0x6E306433L,0UL,0xAFE59F56L,0x6E306433L,0xAFE59F56L,0UL,0x6E306433L,4294967286UL},{4294967286UL,0x6E306433L,0UL,0xAFE59F56L,0x6E306433L,0xAFE59F56L,0UL,0x6E306433L,4294967286UL},{4294967286UL,0x6E306433L,0UL,0xAFE59F56L,0x6E306433L,0xAFE59F56L,0UL,0x6E306433L,4294967286UL},{4294967286UL,0x6E306433L,0UL,0xAFE59F56L,0x6E306433L,0xAFE59F56L,0UL,0x6E306433L,4294967286UL},{4294967286UL,0x6E306433L,0UL,0xAFE59F56L,0x6E306433L,0xAFE59F56L,0UL,0x6E306433L,4294967286UL},{4294967286UL,0x6E306433L,0UL,0xAFE59F56L,0x6E306433L,0xAFE59F56L,0UL,0x6E306433L,4294967286UL},{4294967286UL,0x6E306433L,0UL,0xAFE59F56L,0x6E306433L,0xAFE59F56L,0UL,0x6E306433L,4294967286UL},{4294967286UL,0x6E306433L,0UL,0xAFE59F56L,0x6E306433L,0xAFE59F56L,0UL,0x6E306433L,4294967286UL}};
                        uint32_t l_970 = 0UL;
                        uint32_t *l_969 = &l_970;
                        uint32_t **l_968 = &l_969;
                        uint32_t **l_971 = &l_969;
                        int i, j;
                        --l_965[8][3];
                        l_971 = l_968;
                    }
                    for (l_950[6][0][4] = 1; (l_950[6][0][4] <= 4); l_950[6][0][4] += 1)
                    { /* block id: 703 */
                        uint32_t l_972 = 0x88F5D43DL;
                        int32_t l_973 = (-1L);
                        l_667 = l_972;
                        l_854[0][2] = l_973;
                    }
                }
            }
            else
            { /* block id: 708 */
                uint32_t l_974 = 0x874D5296L;
                int32_t l_977[9][5] = {{0L,1L,0x4AEF6E1BL,(-7L),2L},{0L,1L,0x4AEF6E1BL,(-7L),2L},{0L,1L,0x4AEF6E1BL,(-7L),2L},{0L,1L,0x4AEF6E1BL,(-7L),2L},{0L,1L,0x4AEF6E1BL,(-7L),2L},{0L,1L,0x4AEF6E1BL,(-7L),2L},{0L,1L,0x4AEF6E1BL,(-7L),2L},{0L,1L,0x4AEF6E1BL,(-7L),2L},{0L,1L,0x4AEF6E1BL,(-7L),2L}};
                int32_t l_978[4][6] = {{(-8L),0L,(-8L),(-8L),0L,(-8L)},{(-8L),0L,(-8L),(-8L),0L,(-8L)},{(-8L),0L,(-8L),(-8L),0L,(-8L)},{(-8L),0L,(-8L),(-8L),0L,(-8L)}};
                uint16_t l_979 = 0UL;
                int i, j;
                l_974--;
                l_977[5][4] |= 0x235F41E5L;
                l_853 &= (l_978[2][0] , l_979);
            }
        }
        else
        { /* block id: 713 */
            uint32_t l_980 = 0x3297A1DAL;
            uint8_t l_981 = 1UL;
            int32_t l_982 = 0L;
            l_854[5][2] = l_980;
            l_982 = l_981;
        }
        unsigned int result = 0;
        result += l_667;
        result += l_853;
        int l_854_i0, l_854_i1;
        for (l_854_i0 = 0; l_854_i0 < 7; l_854_i0++) {
            for (l_854_i1 = 0; l_854_i1 < 3; l_854_i1++) {
                result += l_854[l_854_i0][l_854_i1];
            }
        }
        result += l_855;
        result += l_856;
        atomic_add(&p_1199->l_special_values[18], result);
    }
    else
    { /* block id: 717 */
        (1 + 1);
    }
    if (((((safe_rshift_func_uint8_t_u_s(((((safe_mul_func_int8_t_s_s((*p_1199->g_391), (&p_1199->g_407 == ((*l_988) = l_987)))) | (safe_mul_func_int16_t_s_s(((safe_mod_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), ((0UL | (safe_rshift_func_uint8_t_u_s(((((0x41L <= ((((*p_1199->g_391) & (safe_rshift_func_uint8_t_u_u((((safe_sub_func_uint16_t_u_u(0UL, l_999)) == (-1L)) != (*p_32)), p_34))) == (*p_1199->g_391)) & (*p_32))) | (*p_1199->g_399)) >= p_33) || p_1199->g_587[4]), (*p_1199->g_391)))) && 1L))) & (*p_35)), p_34))) , &l_664) != (void*)0), (*p_1199->g_391))) && 0x75L) == (*p_35)) == (*p_1199->g_391)))
    { /* block id: 721 */
        return (**p_1199->g_406);
    }
    else
    { /* block id: 723 */
        uint64_t l_1006 = 0UL;
        uint64_t *l_1016 = (void*)0;
        uint64_t **l_1015 = &l_1016;
        int32_t *l_1092[3][6][10] = {{{&p_1199->g_126[0],(void*)0,&p_1199->g_3[1][0][0],(void*)0,(void*)0,&p_1199->g_383,&p_1199->g_118,&p_1199->g_383,(void*)0,&p_1199->g_15},{&p_1199->g_126[0],(void*)0,&p_1199->g_3[1][0][0],(void*)0,(void*)0,&p_1199->g_383,&p_1199->g_118,&p_1199->g_383,(void*)0,&p_1199->g_15},{&p_1199->g_126[0],(void*)0,&p_1199->g_3[1][0][0],(void*)0,(void*)0,&p_1199->g_383,&p_1199->g_118,&p_1199->g_383,(void*)0,&p_1199->g_15},{&p_1199->g_126[0],(void*)0,&p_1199->g_3[1][0][0],(void*)0,(void*)0,&p_1199->g_383,&p_1199->g_118,&p_1199->g_383,(void*)0,&p_1199->g_15},{&p_1199->g_126[0],(void*)0,&p_1199->g_3[1][0][0],(void*)0,(void*)0,&p_1199->g_383,&p_1199->g_118,&p_1199->g_383,(void*)0,&p_1199->g_15},{&p_1199->g_126[0],(void*)0,&p_1199->g_3[1][0][0],(void*)0,(void*)0,&p_1199->g_383,&p_1199->g_118,&p_1199->g_383,(void*)0,&p_1199->g_15}},{{&p_1199->g_126[0],(void*)0,&p_1199->g_3[1][0][0],(void*)0,(void*)0,&p_1199->g_383,&p_1199->g_118,&p_1199->g_383,(void*)0,&p_1199->g_15},{&p_1199->g_126[0],(void*)0,&p_1199->g_3[1][0][0],(void*)0,(void*)0,&p_1199->g_383,&p_1199->g_118,&p_1199->g_383,(void*)0,&p_1199->g_15},{&p_1199->g_126[0],(void*)0,&p_1199->g_3[1][0][0],(void*)0,(void*)0,&p_1199->g_383,&p_1199->g_118,&p_1199->g_383,(void*)0,&p_1199->g_15},{&p_1199->g_126[0],(void*)0,&p_1199->g_3[1][0][0],(void*)0,(void*)0,&p_1199->g_383,&p_1199->g_118,&p_1199->g_383,(void*)0,&p_1199->g_15},{&p_1199->g_126[0],(void*)0,&p_1199->g_3[1][0][0],(void*)0,(void*)0,&p_1199->g_383,&p_1199->g_118,&p_1199->g_383,(void*)0,&p_1199->g_15},{&p_1199->g_126[0],(void*)0,&p_1199->g_3[1][0][0],(void*)0,(void*)0,&p_1199->g_383,&p_1199->g_118,&p_1199->g_383,(void*)0,&p_1199->g_15}},{{&p_1199->g_126[0],(void*)0,&p_1199->g_3[1][0][0],(void*)0,(void*)0,&p_1199->g_383,&p_1199->g_118,&p_1199->g_383,(void*)0,&p_1199->g_15},{&p_1199->g_126[0],(void*)0,&p_1199->g_3[1][0][0],(void*)0,(void*)0,&p_1199->g_383,&p_1199->g_118,&p_1199->g_383,(void*)0,&p_1199->g_15},{&p_1199->g_126[0],(void*)0,&p_1199->g_3[1][0][0],(void*)0,(void*)0,&p_1199->g_383,&p_1199->g_118,&p_1199->g_383,(void*)0,&p_1199->g_15},{&p_1199->g_126[0],(void*)0,&p_1199->g_3[1][0][0],(void*)0,(void*)0,&p_1199->g_383,&p_1199->g_118,&p_1199->g_383,(void*)0,&p_1199->g_15},{&p_1199->g_126[0],(void*)0,&p_1199->g_3[1][0][0],(void*)0,(void*)0,&p_1199->g_383,&p_1199->g_118,&p_1199->g_383,(void*)0,&p_1199->g_15},{&p_1199->g_126[0],(void*)0,&p_1199->g_3[1][0][0],(void*)0,(void*)0,&p_1199->g_383,&p_1199->g_118,&p_1199->g_383,(void*)0,&p_1199->g_15}}};
        uint32_t l_1122 = 0xBF1C4B81L;
        int i, j, k;
        (**l_662) = p_32;
        if ((safe_sub_func_int16_t_s_s((**l_663), 1UL)))
        { /* block id: 725 */
            for (p_1199->g_111 = 7; (p_1199->g_111 >= 3); p_1199->g_111 -= 1)
            { /* block id: 728 */
                return p_33;
            }
            return p_34;
        }
        else
        { /* block id: 732 */
            uint64_t l_1011 = 0x90E4C84C0E09F98EL;
            int32_t *l_1017 = &p_1199->g_1018;
            uint64_t *l_1019[6][3];
            uint8_t l_1054[2];
            int32_t l_1079 = 0x56B7D853L;
            int32_t l_1125 = 0x41273599L;
            int32_t l_1126 = 1L;
            int32_t l_1128 = 0x36DC83E2L;
            int32_t l_1129 = 0x4B6681DFL;
            uint16_t l_1133 = 0xA3C5L;
            uint64_t *l_1145 = &p_1199->g_647[5][2];
            int16_t l_1154 = (-7L);
            int i, j;
            for (i = 0; i < 6; i++)
            {
                for (j = 0; j < 3; j++)
                    l_1019[i][j] = &p_1199->g_411;
            }
            for (i = 0; i < 2; i++)
                l_1054[i] = 0xDCL;
            if ((((p_33 | ((safe_sub_func_uint8_t_u_u(((((safe_lshift_func_int16_t_s_u(l_1006, 11)) || 255UL) || (**l_663)) | (p_1199->g_1020 = (safe_mod_func_uint32_t_u_u(p_33, (safe_mod_func_uint8_t_u_u((((*l_1017) = ((p_34 != (l_1011 , 0x19L)) & (p_1199->g_1012 != l_1015))) , l_1011), l_1006)))))), l_1006)) >= 0L)) != l_1006) , (*p_32)))
            { /* block id: 735 */
                int32_t *l_1023 = (void*)0;
                for (p_1199->g_115 = 5; (p_1199->g_115 >= 0); p_1199->g_115 -= 1)
                { /* block id: 738 */
                    (*p_1199->g_17) = 2L;
                    for (l_999 = 0; (l_999 <= 4); l_999 += 1)
                    { /* block id: 742 */
                        if ((*p_32))
                            break;
                    }
                }
                for (l_999 = 0; (l_999 == 26); l_999++)
                { /* block id: 748 */
                    uint8_t ***l_1033 = &l_664;
                    int32_t l_1038 = 0x4A1C72A9L;
                    (1 + 1);
                }
            }
            else
            { /* block id: 773 */
                uint16_t l_1059 = 0UL;
                int16_t l_1116[6][10][4] = {{{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L}},{{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L}},{{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L}},{{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L}},{{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L}},{{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L},{0x3831L,(-1L),0x2781L,0x03C7L}}};
                int8_t l_1117[2];
                int32_t l_1121 = 0x7225294AL;
                int i, j, k;
                for (i = 0; i < 2; i++)
                    l_1117[i] = 6L;
                for (p_1199->g_115 = 0; (p_1199->g_115 >= (-5)); --p_1199->g_115)
                { /* block id: 776 */
                    (*l_663) = func_67(&p_1199->g_17, l_1059, p_1199);
                    (**l_663) = (safe_mul_func_uint16_t_u_u((p_33 < FAKE_DIVERGE(p_1199->global_1_offset, get_global_id(1), 10)), p_33));
                }
                for (p_1199->g_383 = 0; (p_1199->g_383 <= 2); p_1199->g_383 += 1)
                { /* block id: 782 */
                    uint32_t l_1094 = 0x22F7E48EL;
                    int16_t ***l_1113 = &p_1199->g_406;
                    int32_t l_1127 = (-1L);
                    uint16_t l_1155 = 0x9A80L;
                    (1 + 1);
                }
            }
            for (p_1199->g_111 = (-2); (p_1199->g_111 > (-5)); --p_1199->g_111)
            { /* block id: 829 */
                if ((atomic_inc(&p_1199->g_atomic_input[22 * get_linear_group_id() + 20]) == 4))
                { /* block id: 831 */
                    int32_t l_1159 = 0x428E161FL;
                    for (l_1159 = 0; (l_1159 <= 3); l_1159 += 1)
                    { /* block id: 834 */
                        uint32_t l_1160 = 4294967287UL;
                        uint16_t l_1161 = 5UL;
                        int32_t l_1162 = (-2L);
                        uint16_t l_1163[9][3] = {{0xF5E4L,65528UL,65528UL},{0xF5E4L,65528UL,65528UL},{0xF5E4L,65528UL,65528UL},{0xF5E4L,65528UL,65528UL},{0xF5E4L,65528UL,65528UL},{0xF5E4L,65528UL,65528UL},{0xF5E4L,65528UL,65528UL},{0xF5E4L,65528UL,65528UL},{0xF5E4L,65528UL,65528UL}};
                        uint16_t l_1164 = 0x2766L;
                        uint8_t l_1165[7] = {0x05L,0x20L,0x05L,0x05L,0x20L,0x05L,0x05L};
                        int16_t l_1166 = 0x56EBL;
                        int8_t l_1167 = 0x16L;
                        uint32_t l_1168 = 0x92993A67L;
                        int64_t l_1169 = 0L;
                        uint32_t l_1170 = 0x1B6CDA0CL;
                        int16_t l_1171 = 0x1CD0L;
                        int i, j;
                        l_1171 = (l_1170 = (((l_1161 = l_1160) , (l_1162 , ((GROUP_DIVERGE(1, 1) , l_1163[8][2]) , (l_1164 , ((l_1165[5] , (l_1167 = ((l_1166 , 0xDD80ECA3CF8492E8L) , 6L))) , l_1168))))) , l_1169));
                    }
                    unsigned int result = 0;
                    result += l_1159;
                    atomic_add(&p_1199->g_special_values[22 * get_linear_group_id() + 20], result);
                }
                else
                { /* block id: 840 */
                    (1 + 1);
                }
            }
        }
        (*p_1199->g_17) = (p_35 == p_35);
    }
    (**l_662) = (*l_663);
    return p_33;
}


/* ------------------------------------------ */
/* 
 * reads : p_1199->g_3 p_1199->g_16 p_1199->g_17 p_1199->g_13 p_1199->g_62 p_1199->g_118 p_1199->g_115 p_1199->g_125 p_1199->g_126 p_1199->g_111 p_1199->g_107 p_1199->g_143 p_1199->g_359 p_1199->g_383 p_1199->g_406 p_1199->g_411 p_1199->g_414 p_1199->g_378 p_1199->g_391 p_1199->g_423 p_1199->g_15 p_1199->g_363 p_1199->g_407 p_1199->g_517 p_1199->g_361 p_1199->g_399 p_1199->g_572 p_1199->g_587 p_1199->g_644
 * writes: p_1199->g_62 p_1199->g_107 p_1199->g_111 p_1199->g_115 p_1199->g_13 p_1199->g_118 p_1199->g_126 p_1199->g_143 p_1199->g_361 p_1199->g_363 p_1199->g_378 p_1199->g_390 p_1199->g_399 p_1199->g_411 p_1199->g_17 p_1199->g_423 p_1199->g_16 p_1199->g_587 p_1199->g_383 p_1199->g_621
 */
uint64_t  func_58(int8_t  p_59, int16_t  p_60, struct S0 * p_1199)
{ /* block id: 15 */
    uint32_t *l_349 = &p_1199->g_13;
    uint32_t **l_348 = &l_349;
    int32_t l_352 = 4L;
    uint16_t *l_360 = &p_1199->g_361;
    int32_t *l_362[4][3] = {{&p_1199->g_3[2][1][1],&l_352,&p_1199->g_3[2][1][1]},{&p_1199->g_3[2][1][1],&l_352,&p_1199->g_3[2][1][1]},{&p_1199->g_3[2][1][1],&l_352,&p_1199->g_3[2][1][1]},{&p_1199->g_3[2][1][1],&l_352,&p_1199->g_3[2][1][1]}};
    int8_t l_501 = 0x5EL;
    int16_t l_518 = (-5L);
    int32_t l_519 = 0L;
    int16_t l_521[3][7][8] = {{{3L,0x396BL,4L,0x5239L,0x575CL,0x0111L,4L,0x575CL},{3L,0x396BL,4L,0x5239L,0x575CL,0x0111L,4L,0x575CL},{3L,0x396BL,4L,0x5239L,0x575CL,0x0111L,4L,0x575CL},{3L,0x396BL,4L,0x5239L,0x575CL,0x0111L,4L,0x575CL},{3L,0x396BL,4L,0x5239L,0x575CL,0x0111L,4L,0x575CL},{3L,0x396BL,4L,0x5239L,0x575CL,0x0111L,4L,0x575CL},{3L,0x396BL,4L,0x5239L,0x575CL,0x0111L,4L,0x575CL}},{{3L,0x396BL,4L,0x5239L,0x575CL,0x0111L,4L,0x575CL},{3L,0x396BL,4L,0x5239L,0x575CL,0x0111L,4L,0x575CL},{3L,0x396BL,4L,0x5239L,0x575CL,0x0111L,4L,0x575CL},{3L,0x396BL,4L,0x5239L,0x575CL,0x0111L,4L,0x575CL},{3L,0x396BL,4L,0x5239L,0x575CL,0x0111L,4L,0x575CL},{3L,0x396BL,4L,0x5239L,0x575CL,0x0111L,4L,0x575CL},{3L,0x396BL,4L,0x5239L,0x575CL,0x0111L,4L,0x575CL}},{{3L,0x396BL,4L,0x5239L,0x575CL,0x0111L,4L,0x575CL},{3L,0x396BL,4L,0x5239L,0x575CL,0x0111L,4L,0x575CL},{3L,0x396BL,4L,0x5239L,0x575CL,0x0111L,4L,0x575CL},{3L,0x396BL,4L,0x5239L,0x575CL,0x0111L,4L,0x575CL},{3L,0x396BL,4L,0x5239L,0x575CL,0x0111L,4L,0x575CL},{3L,0x396BL,4L,0x5239L,0x575CL,0x0111L,4L,0x575CL},{3L,0x396BL,4L,0x5239L,0x575CL,0x0111L,4L,0x575CL}}};
    int16_t l_522 = (-1L);
    int64_t *l_546 = &p_1199->g_378;
    int64_t l_549 = 4L;
    uint8_t *l_554 = (void*)0;
    int32_t l_581 = 0x5165DA74L;
    int16_t l_639 = 0L;
    uint8_t l_640 = 0xFDL;
    int32_t **l_643 = (void*)0;
    int i, j, k;
    p_1199->g_16 = func_63((((*l_348) = func_67(func_70(&p_1199->g_13, p_1199->g_3[1][0][0], p_1199), p_1199->g_3[1][5][0], p_1199)) != (((((((p_1199->g_363 = (safe_mod_func_uint8_t_u_u(255UL, ((l_352 != 1L) ^ (safe_div_func_uint16_t_u_u(((*l_360) = ((safe_mod_func_int32_t_s_s((((((safe_sub_func_uint8_t_u_u(0x90L, l_352)) , p_1199->g_359[0]) == 65531UL) || (-8L)) , l_352), p_60)) > p_1199->g_359[0])), 0x6155L)))))) , p_1199->g_359[0]) >= 0x4BC7L) != p_1199->g_3[0][7][1]) & p_1199->g_3[1][0][0]) & 0x2F1AD423L) , l_362[3][0])), p_60, p_1199->g_3[1][0][0], p_1199);
    if ((safe_add_func_int16_t_s_s(0x33B3L, 0L)))
    { /* block id: 324 */
        uint64_t l_513[4] = {0xF860D88D6F62AB61L,0xF860D88D6F62AB61L,0xF860D88D6F62AB61L,0xF860D88D6F62AB61L};
        int32_t l_516[10] = {(-8L),(-1L),(-8L),(-8L),(-1L),(-8L),(-8L),(-1L),(-8L),(-8L)};
        int8_t l_520 = 0x27L;
        uint32_t l_523 = 0xFBBF0F1AL;
        int i;
        l_501 = (safe_rshift_func_int16_t_s_u((5UL != 0x27L), 2));
        for (p_1199->g_411 = 0; (p_1199->g_411 != 3); ++p_1199->g_411)
        { /* block id: 328 */
            int32_t **l_504 = &l_362[1][1];
            (*p_1199->g_414) = (void*)0;
            (*l_504) = func_67(&p_1199->g_17, ((-10L) < p_60), p_1199);
        }
        (*p_1199->g_517) = ((GROUP_DIVERGE(0, 1) | (((l_516[9] &= ((safe_lshift_func_uint16_t_u_u(((*l_360) = (p_59 && ((safe_add_func_int32_t_s_s((safe_mul_func_int8_t_s_s((safe_lshift_func_uint16_t_u_u(p_60, 13)), 8UL)), l_513[2])) ^ ((~(0x4A941FE208E70796L & (0x95L <= (safe_mod_func_uint32_t_u_u((p_60 < (p_1199->g_62[0][3] , 0x6AL)), (-7L)))))) || GROUP_DIVERGE(2, 1))))), FAKE_DIVERGE(p_1199->local_0_offset, get_local_id(0), 10))) == 0xB7L)) , l_513[0]) , l_513[2])) , &l_352);
        ++l_523;
    }
    else
    { /* block id: 336 */
        uint64_t l_545 = 0x78750F94E9FF6EB8L;
        int32_t l_550 = 6L;
        int32_t l_551 = 0x299AE404L;
        uint64_t l_595 = 0UL;
        int32_t l_611[1];
        uint16_t *l_618 = (void*)0;
        int i;
        for (i = 0; i < 1; i++)
            l_611[i] = (-1L);
        if ((l_551 = (safe_div_func_int64_t_s_s(((p_59 > (safe_sub_func_int64_t_s_s((((((safe_div_func_uint16_t_u_u((safe_lshift_func_int16_t_s_u(((((((safe_rshift_func_int8_t_s_s(((safe_lshift_func_int16_t_s_u(((safe_add_func_uint64_t_u_u((((safe_unary_minus_func_uint16_t_u((((*l_360) &= p_60) && (((*l_360)--) , (safe_lshift_func_int8_t_s_u((l_545 , ((l_546 != (void*)0) || (l_550 &= (((l_545 || (((void*)0 == &l_519) <= (p_1199->g_15 , l_549))) | 0x12CEL) >= 1UL)))), 6)))))) , (void*)0) != (void*)0), (-1L))) != 4UL), 11)) == 0x2E0CL), p_59)) && 0xB577L) , &l_352) != (void*)0) >= 0x7CL) ^ p_60), 11)), l_545)) & 1UL) == p_60) < p_1199->g_118) , (*p_1199->g_399)), l_545))) ^ l_551), p_60))))
        { /* block id: 341 */
            int32_t *l_552 = &p_1199->g_383;
            int32_t **l_553 = &p_1199->g_17;
            uint8_t **l_555 = (void*)0;
            uint8_t **l_556 = (void*)0;
            uint8_t *l_558 = &p_1199->g_423;
            uint8_t **l_557 = &l_558;
            uint32_t *l_571[1];
            int i;
            for (i = 0; i < 1; i++)
                l_571[i] = &p_1199->g_572[3];
            (*l_553) = l_552;
            l_551 ^= (**p_1199->g_517);
            l_551 &= ((l_554 != ((*l_557) = &p_1199->g_107)) , (safe_add_func_uint16_t_u_u((p_1199->g_361 = (safe_div_func_uint64_t_u_u((((((*l_546) = (safe_div_func_int32_t_s_s((safe_mul_func_uint8_t_u_u(p_1199->g_15, ((**l_557) |= (safe_sub_func_int32_t_s_s((safe_sub_func_uint8_t_u_u(p_59, ((*p_1199->g_391) = ((l_550 = 0x0B2BA518L) , (((safe_div_func_int64_t_s_s((safe_lshift_func_uint16_t_u_u((*l_552), (safe_add_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s(((*l_552) , ((**p_1199->g_406) , (!(((p_60 , (*p_1199->g_399)) , 4294967292UL) , p_1199->g_383)))), 7)), 0x0E22L)))), 0x2A9E71660FAAF46BL)) > 0x4E30L) , 0x08L))))), p_60))))), (**l_553)))) <= p_1199->g_572[3]) ^ (-4L)) != (-2L)), 18446744073709551613UL))), (*l_552))));
            (*l_553) = &l_352;
        }
        else
        { /* block id: 352 */
            int32_t l_597[3];
            uint8_t *l_604 = &p_1199->g_143[0][1];
            uint16_t **l_619 = (void*)0;
            uint16_t **l_620[5][8] = {{&l_618,&l_618,&l_360,&l_360,&l_360,&l_360,&l_360,&l_618},{&l_618,&l_618,&l_360,&l_360,&l_360,&l_360,&l_360,&l_618},{&l_618,&l_618,&l_360,&l_360,&l_360,&l_360,&l_360,&l_618},{&l_618,&l_618,&l_360,&l_360,&l_360,&l_360,&l_360,&l_618},{&l_618,&l_618,&l_360,&l_360,&l_360,&l_360,&l_360,&l_618}};
            int8_t **l_628 = &p_1199->g_391;
            int i, j;
            for (i = 0; i < 3; i++)
                l_597[i] = 0x46A60A2AL;
            for (l_352 = 0; (l_352 <= 4); l_352 += 1)
            { /* block id: 355 */
                uint8_t l_582 = 254UL;
                uint32_t *l_585 = (void*)0;
                uint32_t *l_586 = &p_1199->g_587[1];
                uint8_t *l_592 = &p_1199->g_143[0][0];
                int16_t *l_594[7];
                int32_t l_596 = 0x59F5EDA7L;
                int i;
                for (i = 0; i < 7; i++)
                    l_594[i] = &p_1199->g_62[0][6];
                ++l_582;
                l_596 ^= ((((*p_1199->g_406) != ((((*p_1199->g_399) = (p_1199->g_126[l_352] , p_1199->g_359[l_352])) | ((((*l_586) = ((**l_348) ^= p_1199->g_361)) && (p_1199->g_359[0] , (safe_sub_func_uint64_t_u_u(((((*p_1199->g_391) & ((*l_592) &= (p_1199->g_107--))) > p_59) <= (safe_unary_minus_func_int64_t_s(3L))), 0x0E596D2A9B46AEACL)))) >= 9L)) , l_594[2])) ^ p_1199->g_3[2][7][2]) == l_595);
                for (p_1199->g_383 = 0; (p_1199->g_383 <= 1); p_1199->g_383 += 1)
                { /* block id: 365 */
                    return p_1199->g_107;
                }
            }
            l_597[1] ^= l_595;
            if (((++(**l_348)) != (safe_rshift_func_int8_t_s_s(((safe_div_func_uint8_t_u_u(((*l_604) |= l_597[2]), FAKE_DIVERGE(p_1199->global_2_offset, get_global_id(2), 10))) , (safe_sub_func_int64_t_s_s((!(((((p_59 <= (((0L || p_60) & ((((FAKE_DIVERGE(p_1199->global_0_offset, get_global_id(0), 10) & ((**p_1199->g_406) = (((void*)0 == &p_1199->g_391) , ((*p_1199->g_391) | (safe_rshift_func_int16_t_s_s((*p_1199->g_407), (safe_sub_func_uint8_t_u_u(p_60, (-6L))))))))) != 0x0643L) == l_545) & p_1199->g_3[1][0][0])) < p_59)) , l_611[0]) | p_59) == (-1L)) <= 1UL)), p_1199->g_587[1]))), (*p_1199->g_391)))))
            { /* block id: 373 */
                uint16_t l_612 = 0x7532L;
                (*p_1199->g_517) = &l_597[1];
                (*p_1199->g_125) &= (2L || p_1199->g_359[0]);
                l_612--;
            }
            else
            { /* block id: 377 */
                return p_1199->g_572[3];
            }
            (*p_1199->g_17) |= (((safe_unary_minus_func_int64_t_s((safe_rshift_func_int16_t_s_s((0x2B5DL > (l_618 != (p_1199->g_621[3] = &p_1199->g_361))), (safe_mod_func_int64_t_s_s((*p_1199->g_399), (safe_lshift_func_uint16_t_u_s((((safe_mod_func_int8_t_s_s(((l_628 == &p_1199->g_391) >= (safe_mod_func_uint32_t_u_u((safe_lshift_func_int8_t_s_s(p_59, 5)), 1UL))), (*p_1199->g_391))) || 4294967288UL) <= (**p_1199->g_406)), 11)))))))) > p_59) < (*p_1199->g_407));
        }
        for (p_1199->g_118 = (-18); (p_1199->g_118 != (-15)); p_1199->g_118 = safe_add_func_int64_t_s_s(p_1199->g_118, 5))
        { /* block id: 385 */
            int8_t l_635 = 0L;
            int32_t l_636 = 0L;
            int32_t l_637 = 0x5E15B182L;
            int32_t l_638[8][10] = {{(-1L),0x6D68F71BL,0x766B6E36L,(-1L),0x0BD7F6E1L,0x13340D3CL,0x0FA85AFAL,1L,0x0FA85AFAL,0x13340D3CL},{(-1L),0x6D68F71BL,0x766B6E36L,(-1L),0x0BD7F6E1L,0x13340D3CL,0x0FA85AFAL,1L,0x0FA85AFAL,0x13340D3CL},{(-1L),0x6D68F71BL,0x766B6E36L,(-1L),0x0BD7F6E1L,0x13340D3CL,0x0FA85AFAL,1L,0x0FA85AFAL,0x13340D3CL},{(-1L),0x6D68F71BL,0x766B6E36L,(-1L),0x0BD7F6E1L,0x13340D3CL,0x0FA85AFAL,1L,0x0FA85AFAL,0x13340D3CL},{(-1L),0x6D68F71BL,0x766B6E36L,(-1L),0x0BD7F6E1L,0x13340D3CL,0x0FA85AFAL,1L,0x0FA85AFAL,0x13340D3CL},{(-1L),0x6D68F71BL,0x766B6E36L,(-1L),0x0BD7F6E1L,0x13340D3CL,0x0FA85AFAL,1L,0x0FA85AFAL,0x13340D3CL},{(-1L),0x6D68F71BL,0x766B6E36L,(-1L),0x0BD7F6E1L,0x13340D3CL,0x0FA85AFAL,1L,0x0FA85AFAL,0x13340D3CL},{(-1L),0x6D68F71BL,0x766B6E36L,(-1L),0x0BD7F6E1L,0x13340D3CL,0x0FA85AFAL,1L,0x0FA85AFAL,0x13340D3CL}};
            int i, j;
            l_635 &= 0x44254AA1L;
            --l_640;
            if (l_638[7][7])
                continue;
        }
    }
    (*p_1199->g_644) = &l_519;
    return p_60;
}


/* ------------------------------------------ */
/* 
 * reads : p_1199->g_118 p_1199->g_126 p_1199->g_62 p_1199->g_143 p_1199->g_17 p_1199->g_383 p_1199->g_406 p_1199->g_411 p_1199->g_13 p_1199->g_414 p_1199->g_378 p_1199->g_391 p_1199->g_111 p_1199->g_125 p_1199->g_423 p_1199->g_107 p_1199->g_15 p_1199->g_363 p_1199->g_3 p_1199->g_407
 * writes: p_1199->g_118 p_1199->g_107 p_1199->g_378 p_1199->g_143 p_1199->g_13 p_1199->g_390 p_1199->g_399 p_1199->g_411 p_1199->g_17 p_1199->g_126 p_1199->g_423 p_1199->g_62 p_1199->g_111
 */
int32_t ** func_63(int32_t  p_64, uint8_t  p_65, int16_t  p_66, struct S0 * p_1199)
{ /* block id: 256 */
    int32_t *l_382 = &p_1199->g_383;
    int64_t *l_396 = &p_1199->g_378;
    int32_t l_405 = 7L;
    int16_t **l_408[7];
    uint32_t l_434 = 0UL;
    uint64_t l_448 = 0UL;
    int32_t l_465 = 0x2FEE7C95L;
    int32_t l_466 = 1L;
    int32_t l_476 = 0x76C43D06L;
    int32_t l_478 = 0x3BACB4DBL;
    int32_t l_480 = 0L;
    int32_t l_481 = 0x2ED168D5L;
    int32_t l_482[1][4][6] = {{{0x244F817DL,0x244F817DL,0x244F817DL,0x244F817DL,0x244F817DL,0x244F817DL},{0x244F817DL,0x244F817DL,0x244F817DL,0x244F817DL,0x244F817DL,0x244F817DL},{0x244F817DL,0x244F817DL,0x244F817DL,0x244F817DL,0x244F817DL,0x244F817DL},{0x244F817DL,0x244F817DL,0x244F817DL,0x244F817DL,0x244F817DL,0x244F817DL}}};
    int64_t l_484 = (-1L);
    int32_t l_485 = 0x6895BFC8L;
    int8_t l_486 = 0x4BL;
    uint32_t l_488 = 0UL;
    int32_t **l_496 = (void*)0;
    int i, j, k;
    for (i = 0; i < 7; i++)
        l_408[i] = (void*)0;
    for (p_1199->g_118 = 0; (p_1199->g_118 >= (-13)); --p_1199->g_118)
    { /* block id: 259 */
        int32_t l_366[4] = {0x7CA08C83L,0x7CA08C83L,0x7CA08C83L,0x7CA08C83L};
        uint16_t l_371 = 0x561DL;
        int32_t **l_374[4][10][4] = {{{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17}},{{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17}},{{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17}},{{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17},{&p_1199->g_17,&p_1199->g_17,&p_1199->g_17,&p_1199->g_17}}};
        int64_t *l_377 = &p_1199->g_378;
        int16_t *l_381 = (void*)0;
        uint8_t *l_384 = &p_1199->g_143[0][0];
        int64_t **l_397 = (void*)0;
        int64_t **l_398[8][2][1] = {{{&l_377},{&l_377}},{{&l_377},{&l_377}},{{&l_377},{&l_377}},{{&l_377},{&l_377}},{{&l_377},{&l_377}},{{&l_377},{&l_377}},{{&l_377},{&l_377}},{{&l_377},{&l_377}}};
        uint8_t **l_400 = &l_384;
        int i, j, k;
        if (l_366[1])
            break;
        (*p_1199->g_17) = ((safe_lshift_func_uint8_t_u_u((p_1199->g_126[4] == (safe_mul_func_uint8_t_u_u(((*l_384) = ((l_382 = ((++l_371) , func_67(l_374[0][6][0], (((*l_377) = (safe_mul_func_int8_t_s_s((18446744073709551606UL ^ p_64), (p_1199->g_107 = 255UL)))) <= (((((((safe_div_func_int16_t_s_s((l_381 != &p_1199->g_62[0][1]), (0x42L & (l_374[0][6][0] == &p_1199->g_17)))) == 65535UL) < (-5L)) | p_65) ^ 0L) , (void*)0) == &p_1199->g_13)), p_1199))) != (void*)0)), 0x4FL))), p_66)) ^ 4294967295UL);
        for (p_66 = 4; (p_66 < (-30)); --p_66)
        { /* block id: 269 */
            int32_t *l_387 = &p_1199->g_383;
            int8_t *l_389 = &p_1199->g_115;
            int8_t **l_388 = &l_389;
            l_387 = &p_64;
            p_1199->g_390 = l_388;
        }
        l_405 &= ((((void*)0 == &p_1199->g_123[2][0]) > ((*l_382) = (safe_add_func_uint64_t_u_u((safe_add_func_int8_t_s_s(((!((p_1199->g_399 = l_396) != &p_1199->g_378)) != ((p_1199->g_383 <= p_1199->g_126[2]) < 0x4B661F05L)), (((*l_400) = (void*)0) != (((safe_lshift_func_int16_t_s_s((safe_sub_func_uint16_t_u_u(((-1L) ^ p_66), 0x6DADL)), p_66)) | 0x69L) , &p_65)))), p_66)))) || 0x0C34L);
    }
    if (((l_408[6] = p_1199->g_406) != &p_1199->g_407))
    { /* block id: 279 */
        uint32_t l_409 = 4294967288UL;
        uint64_t *l_410 = &p_1199->g_411;
        uint32_t *l_422 = &p_1199->g_13;
        uint32_t **l_421 = &l_422;
        int32_t l_432 = 0x77E79714L;
        int32_t l_433[7];
        int i;
        for (i = 0; i < 7; i++)
            l_433[i] = 0x0A28680BL;
        (*p_1199->g_17) |= (l_409 && (p_65 != (--(*l_410))));
        (*p_1199->g_414) = &p_64;
        for (l_409 = (-10); (l_409 >= 45); ++l_409)
        { /* block id: 285 */
            int32_t *l_417[9][2] = {{&l_405,&l_405},{&l_405,&l_405},{&l_405,&l_405},{&l_405,&l_405},{&l_405,&l_405},{&l_405,&l_405},{&l_405,&l_405},{&l_405,&l_405},{&l_405,&l_405}};
            int i, j;
            (*p_1199->g_17) = ((**p_1199->g_414) < p_1199->g_62[0][6]);
            for (p_64 = 6; (p_64 >= 1); p_64 -= 1)
            { /* block id: 289 */
                int32_t *l_418 = &p_1199->g_126[2];
                l_417[7][0] = (*p_1199->g_414);
                for (p_1199->g_378 = 0; (p_1199->g_378 <= 6); p_1199->g_378 += 1)
                { /* block id: 293 */
                    l_418 = l_417[7][0];
                }
                (*p_1199->g_125) ^= (safe_lshift_func_int8_t_s_u((*p_1199->g_391), ((!(&p_65 == (void*)0)) <= (+(l_421 == (void*)0)))));
                p_1199->g_423++;
            }
            (*p_1199->g_17) = p_65;
        }
        for (p_1199->g_107 = 0; (p_1199->g_107 <= 45); p_1199->g_107 = safe_add_func_int16_t_s_s(p_1199->g_107, 5))
        { /* block id: 303 */
            int32_t *l_428 = &p_1199->g_126[2];
            int32_t *l_429 = &p_1199->g_126[2];
            int32_t *l_430 = &p_1199->g_126[2];
            int32_t *l_431[2][5][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
            int32_t **l_437[5];
            uint64_t **l_449 = &l_410;
            int i, j, k;
            for (i = 0; i < 5; i++)
                l_437[i] = &l_382;
            --l_434;
            (*p_1199->g_414) = func_67(&p_1199->g_17, p_65, p_1199);
            (*l_428) ^= (p_1199->g_15 || ((safe_rshift_func_uint16_t_u_u(((safe_div_func_uint16_t_u_u(((((**p_1199->g_406) |= (safe_mul_func_int8_t_s_s((safe_div_func_int8_t_s_s((((((4L || (safe_lshift_func_uint16_t_u_u(l_448, 7))) ^ (((*l_449) = &p_1199->g_411) == (void*)0)) & p_1199->g_363) , (safe_sub_func_uint32_t_u_u((0x6890F38BF8F9B7C2L & ((*l_382) && (p_1199->g_3[1][0][0] <= 0x5CL))), p_1199->g_423))) , (*p_1199->g_391)), FAKE_DIVERGE(p_1199->global_0_offset, get_global_id(0), 10))), 1UL))) || p_1199->g_3[2][4][1]) <= 0UL), FAKE_DIVERGE(p_1199->global_1_offset, get_global_id(1), 10))) != 7L), 3)) , 0x04B5L));
        }
    }
    else
    { /* block id: 310 */
        int32_t *l_452 = &p_1199->g_383;
        int32_t *l_453 = &p_1199->g_126[0];
        int32_t *l_454 = (void*)0;
        int32_t *l_455 = &p_1199->g_118;
        int32_t *l_456 = &p_1199->g_118;
        int32_t *l_457 = (void*)0;
        int32_t *l_458 = (void*)0;
        int32_t *l_459 = &l_405;
        int32_t *l_460 = &p_1199->g_383;
        int32_t *l_461 = &l_405;
        int32_t *l_462 = &p_1199->g_383;
        int32_t *l_463 = &l_405;
        int32_t *l_464 = &p_1199->g_383;
        int32_t *l_467 = &p_1199->g_126[2];
        int32_t *l_468 = &l_405;
        int32_t *l_469 = &p_1199->g_126[2];
        int32_t *l_470 = (void*)0;
        int32_t l_471 = 0x07215AE6L;
        int32_t l_472[9] = {0x0F4EA0DAL,0x0F4EA0DAL,0x0F4EA0DAL,0x0F4EA0DAL,0x0F4EA0DAL,0x0F4EA0DAL,0x0F4EA0DAL,0x0F4EA0DAL,0x0F4EA0DAL};
        int32_t *l_473 = &l_472[0];
        int32_t *l_474 = (void*)0;
        int32_t *l_475 = &l_472[0];
        int32_t *l_477[2][4];
        int8_t l_479 = (-1L);
        int16_t l_483 = 0x0E74L;
        int64_t l_487[2];
        int i, j;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 4; j++)
                l_477[i][j] = &p_1199->g_383;
        }
        for (i = 0; i < 2; i++)
            l_487[i] = 0x6E21C1B7F8E60E52L;
        ++l_488;
    }
    for (l_476 = (-29); (l_476 == 29); l_476 = safe_add_func_int16_t_s_s(l_476, 3))
    { /* block id: 315 */
        int32_t **l_495 = (void*)0;
        for (p_1199->g_111 = 0; (p_1199->g_111 > (-4)); p_1199->g_111 = safe_sub_func_int8_t_s_s(p_1199->g_111, 4))
        { /* block id: 318 */
            return l_495;
        }
    }
    return l_496;
}


/* ------------------------------------------ */
/* 
 * reads : p_1199->g_62 p_1199->g_143 p_1199->g_126
 * writes:
 */
uint32_t * func_67(int32_t ** p_68, uint64_t  p_69, struct S0 * p_1199)
{ /* block id: 54 */
    uint32_t *l_347 = &p_1199->g_13;
    if ((atomic_inc(&p_1199->l_atomic_input[8]) == 3))
    { /* block id: 56 */
        int16_t l_149 = 1L;
        if (l_149)
        { /* block id: 57 */
            int32_t l_150 = 0x2B2E08F3L;
            int8_t l_210 = 0x4DL;
            uint16_t l_211 = 0x8B3CL;
            int32_t l_212 = (-1L);
            uint64_t l_213 = 18446744073709551611UL;
            int64_t l_214 = 1L;
            for (l_150 = 0; (l_150 > 0); l_150 = safe_add_func_int16_t_s_s(l_150, 1))
            { /* block id: 60 */
                int32_t l_153 = 0L;
                int32_t l_179[4];
                int32_t l_180[2][2][10] = {{{(-1L),(-1L),7L,0x1673EEE6L,1L,1L,0x1673EEE6L,7L,(-1L),(-1L)},{(-1L),(-1L),7L,0x1673EEE6L,1L,1L,0x1673EEE6L,7L,(-1L),(-1L)}},{{(-1L),(-1L),7L,0x1673EEE6L,1L,1L,0x1673EEE6L,7L,(-1L),(-1L)},{(-1L),(-1L),7L,0x1673EEE6L,1L,1L,0x1673EEE6L,7L,(-1L),(-1L)}}};
                int i, j, k;
                for (i = 0; i < 4; i++)
                    l_179[i] = (-6L);
                for (l_153 = 0; (l_153 >= 0); l_153 -= 1)
                { /* block id: 63 */
                    int64_t l_154 = 0x71FBA9B0E5071562L;
                    int32_t l_167 = 0x5ABA5DBCL;
                    int32_t *l_166 = &l_167;
                    int32_t *l_168 = &l_167;
                    int i, j;
                    l_154 = p_1199->g_62[l_153][(l_153 + 4)];
                    for (l_154 = 0; (l_154 <= 1); l_154 += 1)
                    { /* block id: 67 */
                        int32_t l_155[5][8] = {{0x3900DAA4L,(-10L),0x153381E5L,0x5A4DADB6L,(-10L),0x3900DAA4L,0x5A4DADB6L,0x6BD4F263L},{0x3900DAA4L,(-10L),0x153381E5L,0x5A4DADB6L,(-10L),0x3900DAA4L,0x5A4DADB6L,0x6BD4F263L},{0x3900DAA4L,(-10L),0x153381E5L,0x5A4DADB6L,(-10L),0x3900DAA4L,0x5A4DADB6L,0x6BD4F263L},{0x3900DAA4L,(-10L),0x153381E5L,0x5A4DADB6L,(-10L),0x3900DAA4L,0x5A4DADB6L,0x6BD4F263L},{0x3900DAA4L,(-10L),0x153381E5L,0x5A4DADB6L,(-10L),0x3900DAA4L,0x5A4DADB6L,0x6BD4F263L}};
                        uint64_t l_156 = 3UL;
                        uint16_t l_157 = 0x15F6L;
                        uint8_t l_158 = 0xBFL;
                        uint64_t l_159 = 0UL;
                        uint16_t l_160[6] = {0xA25BL,0x73B0L,0xA25BL,0xA25BL,0x73B0L,0xA25BL};
                        uint32_t l_161 = 0UL;
                        int32_t l_162 = 0x0B635356L;
                        uint8_t l_163 = 255UL;
                        uint8_t l_164 = 255UL;
                        uint16_t l_165 = 0UL;
                        int i, j;
                        l_157 &= ((l_155[4][6] = p_1199->g_143[(l_154 + 3)][l_153]) , l_156);
                        l_161 = (l_160[3] &= (l_159 = (l_158 , 0L)));
                        l_163 ^= l_162;
                        l_165 |= l_164;
                    }
                    l_168 = (l_166 = (void*)0);
                    for (l_167 = 1; (l_167 >= 0); l_167 -= 1)
                    { /* block id: 80 */
                        int32_t l_169 = 0x3660035EL;
                        int16_t l_170[9] = {0x4619L,0x4619L,0x4619L,0x4619L,0x4619L,0x4619L,0x4619L,0x4619L,0x4619L};
                        uint8_t l_171 = 5UL;
                        uint8_t *l_175 = &l_171;
                        uint8_t **l_174 = &l_175;
                        uint8_t **l_176[10][10][2] = {{{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175}},{{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175}},{{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175}},{{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175}},{{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175}},{{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175}},{{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175}},{{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175}},{{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175}},{{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175},{&l_175,&l_175}}};
                        uint8_t **l_177 = (void*)0;
                        int32_t *l_178 = &l_169;
                        int i, j, k;
                        --l_171;
                        l_177 = (l_176[5][6][0] = l_174);
                        l_168 = (l_166 = (void*)0);
                        l_178 = (void*)0;
                    }
                }
                if ((l_180[1][0][7] = l_179[1]))
                { /* block id: 90 */
                    int16_t l_181 = 1L;
                    uint64_t l_194[3][1][8];
                    int i, j, k;
                    for (i = 0; i < 3; i++)
                    {
                        for (j = 0; j < 1; j++)
                        {
                            for (k = 0; k < 8; k++)
                                l_194[i][j][k] = 0UL;
                        }
                    }
                    l_180[1][0][7] = 0x186FCF50L;
                    l_153 |= l_181;
                    for (l_181 = 0; (l_181 <= 3); l_181 += 1)
                    { /* block id: 95 */
                        int64_t l_182[4] = {0L,0L,0L,0L};
                        uint32_t l_183 = 0x74E767B0L;
                        uint32_t l_184 = 0xD851A5E3L;
                        int8_t l_185 = 0x7EL;
                        int16_t l_186 = 0x0BFBL;
                        int32_t l_187 = 0L;
                        int32_t l_188 = 0L;
                        uint32_t l_189 = 0UL;
                        uint32_t l_190[7][3][8] = {{{0xBF9F1FBDL,4294967290UL,0xB0373C02L,0UL,0xC8F83BE1L,0x38E2FDB1L,0xE3880B99L,0xB660CBC0L},{0xBF9F1FBDL,4294967290UL,0xB0373C02L,0UL,0xC8F83BE1L,0x38E2FDB1L,0xE3880B99L,0xB660CBC0L},{0xBF9F1FBDL,4294967290UL,0xB0373C02L,0UL,0xC8F83BE1L,0x38E2FDB1L,0xE3880B99L,0xB660CBC0L}},{{0xBF9F1FBDL,4294967290UL,0xB0373C02L,0UL,0xC8F83BE1L,0x38E2FDB1L,0xE3880B99L,0xB660CBC0L},{0xBF9F1FBDL,4294967290UL,0xB0373C02L,0UL,0xC8F83BE1L,0x38E2FDB1L,0xE3880B99L,0xB660CBC0L},{0xBF9F1FBDL,4294967290UL,0xB0373C02L,0UL,0xC8F83BE1L,0x38E2FDB1L,0xE3880B99L,0xB660CBC0L}},{{0xBF9F1FBDL,4294967290UL,0xB0373C02L,0UL,0xC8F83BE1L,0x38E2FDB1L,0xE3880B99L,0xB660CBC0L},{0xBF9F1FBDL,4294967290UL,0xB0373C02L,0UL,0xC8F83BE1L,0x38E2FDB1L,0xE3880B99L,0xB660CBC0L},{0xBF9F1FBDL,4294967290UL,0xB0373C02L,0UL,0xC8F83BE1L,0x38E2FDB1L,0xE3880B99L,0xB660CBC0L}},{{0xBF9F1FBDL,4294967290UL,0xB0373C02L,0UL,0xC8F83BE1L,0x38E2FDB1L,0xE3880B99L,0xB660CBC0L},{0xBF9F1FBDL,4294967290UL,0xB0373C02L,0UL,0xC8F83BE1L,0x38E2FDB1L,0xE3880B99L,0xB660CBC0L},{0xBF9F1FBDL,4294967290UL,0xB0373C02L,0UL,0xC8F83BE1L,0x38E2FDB1L,0xE3880B99L,0xB660CBC0L}},{{0xBF9F1FBDL,4294967290UL,0xB0373C02L,0UL,0xC8F83BE1L,0x38E2FDB1L,0xE3880B99L,0xB660CBC0L},{0xBF9F1FBDL,4294967290UL,0xB0373C02L,0UL,0xC8F83BE1L,0x38E2FDB1L,0xE3880B99L,0xB660CBC0L},{0xBF9F1FBDL,4294967290UL,0xB0373C02L,0UL,0xC8F83BE1L,0x38E2FDB1L,0xE3880B99L,0xB660CBC0L}},{{0xBF9F1FBDL,4294967290UL,0xB0373C02L,0UL,0xC8F83BE1L,0x38E2FDB1L,0xE3880B99L,0xB660CBC0L},{0xBF9F1FBDL,4294967290UL,0xB0373C02L,0UL,0xC8F83BE1L,0x38E2FDB1L,0xE3880B99L,0xB660CBC0L},{0xBF9F1FBDL,4294967290UL,0xB0373C02L,0UL,0xC8F83BE1L,0x38E2FDB1L,0xE3880B99L,0xB660CBC0L}},{{0xBF9F1FBDL,4294967290UL,0xB0373C02L,0UL,0xC8F83BE1L,0x38E2FDB1L,0xE3880B99L,0xB660CBC0L},{0xBF9F1FBDL,4294967290UL,0xB0373C02L,0UL,0xC8F83BE1L,0x38E2FDB1L,0xE3880B99L,0xB660CBC0L},{0xBF9F1FBDL,4294967290UL,0xB0373C02L,0UL,0xC8F83BE1L,0x38E2FDB1L,0xE3880B99L,0xB660CBC0L}}};
                        uint32_t l_191 = 3UL;
                        int8_t l_192 = (-1L);
                        int16_t l_193 = 1L;
                        int i, j, k;
                        l_182[3] |= 0x4F5AA1C8L;
                        l_183 ^= l_179[l_181];
                        l_153 &= (l_180[1][1][8] = (((l_192 &= (l_191 = ((l_189 ^= ((((l_185 |= l_184) , 1UL) , l_186) , (l_187 , l_188))) , (l_190[5][1][7] , (-1L))))) , 0x6351B0F9L) , l_193));
                    }
                    l_180[1][0][7] ^= l_194[0][0][4];
                }
                else
                { /* block id: 106 */
                    int32_t l_195 = 9L;
                    for (l_195 = 1; (l_195 >= 0); l_195 -= 1)
                    { /* block id: 109 */
                        int32_t l_196 = 5L;
                        int i, j;
                        l_153 &= p_1199->g_143[(l_195 + 1)][l_195];
                        l_196 = (l_180[1][1][1] |= 0x0C351D04L);
                    }
                    for (l_195 = 0; (l_195 <= 1); l_195 += 1)
                    { /* block id: 116 */
                        int8_t l_197 = 1L;
                        uint8_t l_198 = 250UL;
                        uint8_t l_201 = 255UL;
                        int16_t l_202 = (-1L);
                        int8_t l_203 = 0x38L;
                        int32_t l_204 = 0L;
                        uint32_t l_205 = 0UL;
                        int32_t *l_208[5][8] = {{&l_204,(void*)0,&l_204,(void*)0,&l_204,&l_204,(void*)0,&l_204},{&l_204,(void*)0,&l_204,(void*)0,&l_204,&l_204,(void*)0,&l_204},{&l_204,(void*)0,&l_204,(void*)0,&l_204,&l_204,(void*)0,&l_204},{&l_204,(void*)0,&l_204,(void*)0,&l_204,&l_204,(void*)0,&l_204},{&l_204,(void*)0,&l_204,(void*)0,&l_204,&l_204,(void*)0,&l_204}};
                        int32_t *l_209 = &l_204;
                        int i, j;
                        --l_198;
                        l_201 = (l_180[1][0][7] = (FAKE_DIVERGE(p_1199->global_2_offset, get_global_id(2), 10) , p_1199->g_143[(l_195 + 2)][l_195]));
                        l_209 = (l_208[0][7] = ((--l_205) , (void*)0));
                    }
                }
            }
            l_212 &= (l_211 = (l_210 = (-1L)));
            l_214 ^= l_213;
        }
        else
        { /* block id: 130 */
            uint8_t l_215[10] = {255UL,5UL,255UL,255UL,5UL,255UL,255UL,5UL,255UL,255UL};
            int64_t l_216[2];
            int32_t l_217[9][1][2] = {{{0x43CE05E5L,0x43CE05E5L}},{{0x43CE05E5L,0x43CE05E5L}},{{0x43CE05E5L,0x43CE05E5L}},{{0x43CE05E5L,0x43CE05E5L}},{{0x43CE05E5L,0x43CE05E5L}},{{0x43CE05E5L,0x43CE05E5L}},{{0x43CE05E5L,0x43CE05E5L}},{{0x43CE05E5L,0x43CE05E5L}},{{0x43CE05E5L,0x43CE05E5L}}};
            int16_t l_246 = 1L;
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_216[i] = 0x318F1BF990C31A17L;
            l_216[1] = l_215[1];
            l_217[0][0][0] = (-1L);
            for (l_216[0] = 0; (l_216[0] == 28); l_216[0]++)
            { /* block id: 135 */
                int16_t l_220[7][10][3] = {{{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L}},{{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L}},{{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L}},{{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L}},{{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L}},{{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L}},{{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L},{0x4A49L,0x00CFL,0x4A49L}}};
                int32_t l_221 = 0x7393B26DL;
                uint32_t l_222 = 4294967295UL;
                int8_t l_223 = 0x7BL;
                int i, j, k;
                l_223 = (l_222 |= (l_221 &= l_220[5][5][1]));
                for (l_220[2][9][0] = 26; (l_220[2][9][0] >= 11); l_220[2][9][0] = safe_sub_func_int16_t_s_s(l_220[2][9][0], 7))
                { /* block id: 141 */
                    int32_t l_226 = 1L;
                    for (l_226 = 0; (l_226 <= 0); l_226 += 1)
                    { /* block id: 144 */
                        int64_t l_227 = 0x2D73772E7577DDABL;
                        int16_t l_228 = 0x1F28L;
                        int32_t l_229 = 1L;
                        uint32_t l_230 = 0x3CC853F9L;
                        uint64_t l_231 = 0x84FAC850F5D75124L;
                        int64_t l_232 = 0x30CB2AB0A6C2EC38L;
                        int8_t l_233 = 0x1FL;
                        uint16_t l_234[8][3][9] = {{{1UL,1UL,0x3911L,0xD2D9L,65533UL,9UL,0xE12CL,0x2F63L,0xE12CL},{1UL,1UL,0x3911L,0xD2D9L,65533UL,9UL,0xE12CL,0x2F63L,0xE12CL},{1UL,1UL,0x3911L,0xD2D9L,65533UL,9UL,0xE12CL,0x2F63L,0xE12CL}},{{1UL,1UL,0x3911L,0xD2D9L,65533UL,9UL,0xE12CL,0x2F63L,0xE12CL},{1UL,1UL,0x3911L,0xD2D9L,65533UL,9UL,0xE12CL,0x2F63L,0xE12CL},{1UL,1UL,0x3911L,0xD2D9L,65533UL,9UL,0xE12CL,0x2F63L,0xE12CL}},{{1UL,1UL,0x3911L,0xD2D9L,65533UL,9UL,0xE12CL,0x2F63L,0xE12CL},{1UL,1UL,0x3911L,0xD2D9L,65533UL,9UL,0xE12CL,0x2F63L,0xE12CL},{1UL,1UL,0x3911L,0xD2D9L,65533UL,9UL,0xE12CL,0x2F63L,0xE12CL}},{{1UL,1UL,0x3911L,0xD2D9L,65533UL,9UL,0xE12CL,0x2F63L,0xE12CL},{1UL,1UL,0x3911L,0xD2D9L,65533UL,9UL,0xE12CL,0x2F63L,0xE12CL},{1UL,1UL,0x3911L,0xD2D9L,65533UL,9UL,0xE12CL,0x2F63L,0xE12CL}},{{1UL,1UL,0x3911L,0xD2D9L,65533UL,9UL,0xE12CL,0x2F63L,0xE12CL},{1UL,1UL,0x3911L,0xD2D9L,65533UL,9UL,0xE12CL,0x2F63L,0xE12CL},{1UL,1UL,0x3911L,0xD2D9L,65533UL,9UL,0xE12CL,0x2F63L,0xE12CL}},{{1UL,1UL,0x3911L,0xD2D9L,65533UL,9UL,0xE12CL,0x2F63L,0xE12CL},{1UL,1UL,0x3911L,0xD2D9L,65533UL,9UL,0xE12CL,0x2F63L,0xE12CL},{1UL,1UL,0x3911L,0xD2D9L,65533UL,9UL,0xE12CL,0x2F63L,0xE12CL}},{{1UL,1UL,0x3911L,0xD2D9L,65533UL,9UL,0xE12CL,0x2F63L,0xE12CL},{1UL,1UL,0x3911L,0xD2D9L,65533UL,9UL,0xE12CL,0x2F63L,0xE12CL},{1UL,1UL,0x3911L,0xD2D9L,65533UL,9UL,0xE12CL,0x2F63L,0xE12CL}},{{1UL,1UL,0x3911L,0xD2D9L,65533UL,9UL,0xE12CL,0x2F63L,0xE12CL},{1UL,1UL,0x3911L,0xD2D9L,65533UL,9UL,0xE12CL,0x2F63L,0xE12CL},{1UL,1UL,0x3911L,0xD2D9L,65533UL,9UL,0xE12CL,0x2F63L,0xE12CL}}};
                        int32_t *l_235[10] = {&l_229,&l_229,&l_229,&l_229,&l_229,&l_229,&l_229,&l_229,&l_229,&l_229};
                        int32_t *l_236 = (void*)0;
                        int32_t l_238 = 9L;
                        int32_t *l_237[10][10] = {{&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238},{&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238},{&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238},{&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238},{&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238},{&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238},{&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238},{&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238},{&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238},{&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238,&l_238}};
                        int32_t *l_239 = &l_238;
                        int32_t *l_240 = (void*)0;
                        int32_t *l_241 = &l_229;
                        uint32_t l_242 = 2UL;
                        int i, j, k;
                        l_237[3][5] = ((l_229 = (l_228 = l_227)) , (l_230 , (l_236 = ((l_234[3][0][8] = ((l_231 ^= GROUP_DIVERGE(2, 1)) , (l_232 , (l_222 = l_233)))) , l_235[0]))));
                        l_241 = (l_240 = l_239);
                        ++l_242;
                    }
                    for (l_226 = 4; (l_226 >= 1); l_226 -= 1)
                    { /* block id: 158 */
                        uint8_t l_245 = 1UL;
                        int i;
                        l_245 &= p_1199->g_126[l_226];
                    }
                }
            }
            if (l_246)
            { /* block id: 163 */
                uint32_t l_247 = 4294967287UL;
                int32_t l_248[7][4][9] = {{{(-1L),0x1EC438B6L,0x4A3EB68EL,0x1EBCF204L,0L,0L,0x335FC2B0L,0x7F8C1A13L,0x335FC2B0L},{(-1L),0x1EC438B6L,0x4A3EB68EL,0x1EBCF204L,0L,0L,0x335FC2B0L,0x7F8C1A13L,0x335FC2B0L},{(-1L),0x1EC438B6L,0x4A3EB68EL,0x1EBCF204L,0L,0L,0x335FC2B0L,0x7F8C1A13L,0x335FC2B0L},{(-1L),0x1EC438B6L,0x4A3EB68EL,0x1EBCF204L,0L,0L,0x335FC2B0L,0x7F8C1A13L,0x335FC2B0L}},{{(-1L),0x1EC438B6L,0x4A3EB68EL,0x1EBCF204L,0L,0L,0x335FC2B0L,0x7F8C1A13L,0x335FC2B0L},{(-1L),0x1EC438B6L,0x4A3EB68EL,0x1EBCF204L,0L,0L,0x335FC2B0L,0x7F8C1A13L,0x335FC2B0L},{(-1L),0x1EC438B6L,0x4A3EB68EL,0x1EBCF204L,0L,0L,0x335FC2B0L,0x7F8C1A13L,0x335FC2B0L},{(-1L),0x1EC438B6L,0x4A3EB68EL,0x1EBCF204L,0L,0L,0x335FC2B0L,0x7F8C1A13L,0x335FC2B0L}},{{(-1L),0x1EC438B6L,0x4A3EB68EL,0x1EBCF204L,0L,0L,0x335FC2B0L,0x7F8C1A13L,0x335FC2B0L},{(-1L),0x1EC438B6L,0x4A3EB68EL,0x1EBCF204L,0L,0L,0x335FC2B0L,0x7F8C1A13L,0x335FC2B0L},{(-1L),0x1EC438B6L,0x4A3EB68EL,0x1EBCF204L,0L,0L,0x335FC2B0L,0x7F8C1A13L,0x335FC2B0L},{(-1L),0x1EC438B6L,0x4A3EB68EL,0x1EBCF204L,0L,0L,0x335FC2B0L,0x7F8C1A13L,0x335FC2B0L}},{{(-1L),0x1EC438B6L,0x4A3EB68EL,0x1EBCF204L,0L,0L,0x335FC2B0L,0x7F8C1A13L,0x335FC2B0L},{(-1L),0x1EC438B6L,0x4A3EB68EL,0x1EBCF204L,0L,0L,0x335FC2B0L,0x7F8C1A13L,0x335FC2B0L},{(-1L),0x1EC438B6L,0x4A3EB68EL,0x1EBCF204L,0L,0L,0x335FC2B0L,0x7F8C1A13L,0x335FC2B0L},{(-1L),0x1EC438B6L,0x4A3EB68EL,0x1EBCF204L,0L,0L,0x335FC2B0L,0x7F8C1A13L,0x335FC2B0L}},{{(-1L),0x1EC438B6L,0x4A3EB68EL,0x1EBCF204L,0L,0L,0x335FC2B0L,0x7F8C1A13L,0x335FC2B0L},{(-1L),0x1EC438B6L,0x4A3EB68EL,0x1EBCF204L,0L,0L,0x335FC2B0L,0x7F8C1A13L,0x335FC2B0L},{(-1L),0x1EC438B6L,0x4A3EB68EL,0x1EBCF204L,0L,0L,0x335FC2B0L,0x7F8C1A13L,0x335FC2B0L},{(-1L),0x1EC438B6L,0x4A3EB68EL,0x1EBCF204L,0L,0L,0x335FC2B0L,0x7F8C1A13L,0x335FC2B0L}},{{(-1L),0x1EC438B6L,0x4A3EB68EL,0x1EBCF204L,0L,0L,0x335FC2B0L,0x7F8C1A13L,0x335FC2B0L},{(-1L),0x1EC438B6L,0x4A3EB68EL,0x1EBCF204L,0L,0L,0x335FC2B0L,0x7F8C1A13L,0x335FC2B0L},{(-1L),0x1EC438B6L,0x4A3EB68EL,0x1EBCF204L,0L,0L,0x335FC2B0L,0x7F8C1A13L,0x335FC2B0L},{(-1L),0x1EC438B6L,0x4A3EB68EL,0x1EBCF204L,0L,0L,0x335FC2B0L,0x7F8C1A13L,0x335FC2B0L}},{{(-1L),0x1EC438B6L,0x4A3EB68EL,0x1EBCF204L,0L,0L,0x335FC2B0L,0x7F8C1A13L,0x335FC2B0L},{(-1L),0x1EC438B6L,0x4A3EB68EL,0x1EBCF204L,0L,0L,0x335FC2B0L,0x7F8C1A13L,0x335FC2B0L},{(-1L),0x1EC438B6L,0x4A3EB68EL,0x1EBCF204L,0L,0L,0x335FC2B0L,0x7F8C1A13L,0x335FC2B0L},{(-1L),0x1EC438B6L,0x4A3EB68EL,0x1EBCF204L,0L,0L,0x335FC2B0L,0x7F8C1A13L,0x335FC2B0L}}};
                uint64_t l_249[9][1][7] = {{{0xFB2C8B339EBD8DD0L,0x01DEA129534E5B99L,18446744073709551615UL,0xBCBA8E6F8E1793FDL,1UL,1UL,0xBCBA8E6F8E1793FDL}},{{0xFB2C8B339EBD8DD0L,0x01DEA129534E5B99L,18446744073709551615UL,0xBCBA8E6F8E1793FDL,1UL,1UL,0xBCBA8E6F8E1793FDL}},{{0xFB2C8B339EBD8DD0L,0x01DEA129534E5B99L,18446744073709551615UL,0xBCBA8E6F8E1793FDL,1UL,1UL,0xBCBA8E6F8E1793FDL}},{{0xFB2C8B339EBD8DD0L,0x01DEA129534E5B99L,18446744073709551615UL,0xBCBA8E6F8E1793FDL,1UL,1UL,0xBCBA8E6F8E1793FDL}},{{0xFB2C8B339EBD8DD0L,0x01DEA129534E5B99L,18446744073709551615UL,0xBCBA8E6F8E1793FDL,1UL,1UL,0xBCBA8E6F8E1793FDL}},{{0xFB2C8B339EBD8DD0L,0x01DEA129534E5B99L,18446744073709551615UL,0xBCBA8E6F8E1793FDL,1UL,1UL,0xBCBA8E6F8E1793FDL}},{{0xFB2C8B339EBD8DD0L,0x01DEA129534E5B99L,18446744073709551615UL,0xBCBA8E6F8E1793FDL,1UL,1UL,0xBCBA8E6F8E1793FDL}},{{0xFB2C8B339EBD8DD0L,0x01DEA129534E5B99L,18446744073709551615UL,0xBCBA8E6F8E1793FDL,1UL,1UL,0xBCBA8E6F8E1793FDL}},{{0xFB2C8B339EBD8DD0L,0x01DEA129534E5B99L,18446744073709551615UL,0xBCBA8E6F8E1793FDL,1UL,1UL,0xBCBA8E6F8E1793FDL}}};
                int16_t l_250 = 0L;
                uint16_t l_251[2];
                int i, j, k;
                for (i = 0; i < 2; i++)
                    l_251[i] = 0x408CL;
                l_247 = 0x07BA93E8L;
                l_249[7][0][0] = l_248[3][3][8];
                l_248[3][3][8] &= l_250;
                if (l_251[1])
                { /* block id: 167 */
                    int32_t l_252 = 0x30597892L;
                    for (l_252 = 14; (l_252 == 24); ++l_252)
                    { /* block id: 170 */
                        int64_t l_255 = (-1L);
                        int32_t l_256 = 0L;
                        int32_t *l_257 = &l_256;
                        int32_t *l_258[10][4][6] = {{{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256},{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256},{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256},{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256}},{{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256},{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256},{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256},{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256}},{{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256},{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256},{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256},{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256}},{{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256},{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256},{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256},{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256}},{{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256},{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256},{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256},{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256}},{{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256},{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256},{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256},{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256}},{{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256},{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256},{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256},{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256}},{{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256},{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256},{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256},{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256}},{{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256},{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256},{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256},{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256}},{{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256},{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256},{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256},{&l_256,(void*)0,&l_256,&l_256,&l_256,&l_256}}};
                        int i, j, k;
                        l_256 &= (l_248[3][3][8] = l_255);
                        l_248[3][3][8] |= 0x1A1BED76L;
                        l_258[7][2][3] = l_257;
                    }
                    for (l_252 = (-15); (l_252 != (-8)); l_252++)
                    { /* block id: 178 */
                        int32_t l_261 = 3L;
                        uint32_t l_262 = 1UL;
                        uint32_t l_265[5][4] = {{0xFA682BD6L,1UL,1UL,0xFA682BD6L},{0xFA682BD6L,1UL,1UL,0xFA682BD6L},{0xFA682BD6L,1UL,1UL,0xFA682BD6L},{0xFA682BD6L,1UL,1UL,0xFA682BD6L},{0xFA682BD6L,1UL,1UL,0xFA682BD6L}};
                        uint32_t l_266 = 4294967287UL;
                        uint64_t l_269 = 1UL;
                        uint32_t l_270 = 4294967286UL;
                        int i, j;
                        l_262--;
                        l_266 = l_265[3][1];
                        l_248[3][3][8] = ((l_251[1]++) , ((l_250 = l_269) , l_270));
                    }
                    l_252 &= (l_248[4][2][4] |= 1L);
                }
                else
                { /* block id: 187 */
                    int16_t l_273 = 5L;
                    int16_t *l_272[3][10][8] = {{{&l_273,&l_273,(void*)0,&l_273,&l_273,&l_273,(void*)0,&l_273},{&l_273,&l_273,(void*)0,&l_273,&l_273,&l_273,(void*)0,&l_273},{&l_273,&l_273,(void*)0,&l_273,&l_273,&l_273,(void*)0,&l_273},{&l_273,&l_273,(void*)0,&l_273,&l_273,&l_273,(void*)0,&l_273},{&l_273,&l_273,(void*)0,&l_273,&l_273,&l_273,(void*)0,&l_273},{&l_273,&l_273,(void*)0,&l_273,&l_273,&l_273,(void*)0,&l_273},{&l_273,&l_273,(void*)0,&l_273,&l_273,&l_273,(void*)0,&l_273},{&l_273,&l_273,(void*)0,&l_273,&l_273,&l_273,(void*)0,&l_273},{&l_273,&l_273,(void*)0,&l_273,&l_273,&l_273,(void*)0,&l_273},{&l_273,&l_273,(void*)0,&l_273,&l_273,&l_273,(void*)0,&l_273}},{{&l_273,&l_273,(void*)0,&l_273,&l_273,&l_273,(void*)0,&l_273},{&l_273,&l_273,(void*)0,&l_273,&l_273,&l_273,(void*)0,&l_273},{&l_273,&l_273,(void*)0,&l_273,&l_273,&l_273,(void*)0,&l_273},{&l_273,&l_273,(void*)0,&l_273,&l_273,&l_273,(void*)0,&l_273},{&l_273,&l_273,(void*)0,&l_273,&l_273,&l_273,(void*)0,&l_273},{&l_273,&l_273,(void*)0,&l_273,&l_273,&l_273,(void*)0,&l_273},{&l_273,&l_273,(void*)0,&l_273,&l_273,&l_273,(void*)0,&l_273},{&l_273,&l_273,(void*)0,&l_273,&l_273,&l_273,(void*)0,&l_273},{&l_273,&l_273,(void*)0,&l_273,&l_273,&l_273,(void*)0,&l_273},{&l_273,&l_273,(void*)0,&l_273,&l_273,&l_273,(void*)0,&l_273}},{{&l_273,&l_273,(void*)0,&l_273,&l_273,&l_273,(void*)0,&l_273},{&l_273,&l_273,(void*)0,&l_273,&l_273,&l_273,(void*)0,&l_273},{&l_273,&l_273,(void*)0,&l_273,&l_273,&l_273,(void*)0,&l_273},{&l_273,&l_273,(void*)0,&l_273,&l_273,&l_273,(void*)0,&l_273},{&l_273,&l_273,(void*)0,&l_273,&l_273,&l_273,(void*)0,&l_273},{&l_273,&l_273,(void*)0,&l_273,&l_273,&l_273,(void*)0,&l_273},{&l_273,&l_273,(void*)0,&l_273,&l_273,&l_273,(void*)0,&l_273},{&l_273,&l_273,(void*)0,&l_273,&l_273,&l_273,(void*)0,&l_273},{&l_273,&l_273,(void*)0,&l_273,&l_273,&l_273,(void*)0,&l_273},{&l_273,&l_273,(void*)0,&l_273,&l_273,&l_273,(void*)0,&l_273}}};
                    int16_t **l_271 = &l_272[1][3][3];
                    int i, j, k;
                    l_271 = (void*)0;
                }
            }
            else
            { /* block id: 190 */
                uint64_t l_274 = 1UL;
                uint32_t l_275 = 4294967295UL;
                int8_t l_276 = 0x15L;
                int8_t l_277 = (-1L);
                int32_t l_345 = 0x7B66839CL;
                int32_t *l_344 = &l_345;
                int32_t *l_346[7];
                int i;
                for (i = 0; i < 7; i++)
                    l_346[i] = &l_345;
                if (((((l_274 , l_275) , 0x22A3EE8AL) , l_276) , l_277))
                { /* block id: 191 */
                    uint8_t l_278 = 5UL;
                    l_278 = 0x7DF211AAL;
                }
                else
                { /* block id: 193 */
                    int32_t l_280 = 0x798C4C04L;
                    int32_t *l_279 = &l_280;
                    int32_t *l_281 = &l_280;
                    int32_t *l_282 = &l_280;
                    int64_t l_283 = (-5L);
                    int8_t l_284 = 0x7FL;
                    uint32_t l_302[4];
                    int64_t l_303[5];
                    int i;
                    for (i = 0; i < 4; i++)
                        l_302[i] = 0x0BCEAF36L;
                    for (i = 0; i < 5; i++)
                        l_303[i] = (-1L);
                    l_282 = (l_281 = l_279);
                    if ((l_284 = l_283))
                    { /* block id: 197 */
                        uint32_t l_285 = 0x524AC20BL;
                        uint8_t l_286 = 255UL;
                        int8_t **l_287 = (void*)0;
                        int8_t l_290 = 0x72L;
                        int8_t *l_289[2][8][10] = {{{&l_290,&l_290,&l_290,(void*)0,(void*)0,&l_290,&l_290,&l_290,&l_290,(void*)0},{&l_290,&l_290,&l_290,(void*)0,(void*)0,&l_290,&l_290,&l_290,&l_290,(void*)0},{&l_290,&l_290,&l_290,(void*)0,(void*)0,&l_290,&l_290,&l_290,&l_290,(void*)0},{&l_290,&l_290,&l_290,(void*)0,(void*)0,&l_290,&l_290,&l_290,&l_290,(void*)0},{&l_290,&l_290,&l_290,(void*)0,(void*)0,&l_290,&l_290,&l_290,&l_290,(void*)0},{&l_290,&l_290,&l_290,(void*)0,(void*)0,&l_290,&l_290,&l_290,&l_290,(void*)0},{&l_290,&l_290,&l_290,(void*)0,(void*)0,&l_290,&l_290,&l_290,&l_290,(void*)0},{&l_290,&l_290,&l_290,(void*)0,(void*)0,&l_290,&l_290,&l_290,&l_290,(void*)0}},{{&l_290,&l_290,&l_290,(void*)0,(void*)0,&l_290,&l_290,&l_290,&l_290,(void*)0},{&l_290,&l_290,&l_290,(void*)0,(void*)0,&l_290,&l_290,&l_290,&l_290,(void*)0},{&l_290,&l_290,&l_290,(void*)0,(void*)0,&l_290,&l_290,&l_290,&l_290,(void*)0},{&l_290,&l_290,&l_290,(void*)0,(void*)0,&l_290,&l_290,&l_290,&l_290,(void*)0},{&l_290,&l_290,&l_290,(void*)0,(void*)0,&l_290,&l_290,&l_290,&l_290,(void*)0},{&l_290,&l_290,&l_290,(void*)0,(void*)0,&l_290,&l_290,&l_290,&l_290,(void*)0},{&l_290,&l_290,&l_290,(void*)0,(void*)0,&l_290,&l_290,&l_290,&l_290,(void*)0},{&l_290,&l_290,&l_290,(void*)0,(void*)0,&l_290,&l_290,&l_290,&l_290,(void*)0}}};
                        int8_t **l_288 = &l_289[1][5][8];
                        int32_t l_292 = (-4L);
                        int32_t *l_291 = &l_292;
                        uint8_t l_293 = 0UL;
                        int i, j, k;
                        (*l_279) |= l_285;
                        l_288 = (l_286 , l_287);
                        l_279 = (l_281 = l_291);
                        (*l_279) = l_293;
                    }
                    else
                    { /* block id: 203 */
                        int32_t l_294 = (-8L);
                        int16_t l_295 = 0x2E6FL;
                        uint32_t l_296 = 4294967293UL;
                        int32_t l_297 = 0x42FE3EEEL;
                        uint32_t l_298 = 0UL;
                        uint8_t l_299 = 0UL;
                        uint32_t l_300[4][10][3] = {{{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL}},{{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL}},{{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL}},{{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL},{0x43D7EFFBL,4294967286UL,0UL}}};
                        uint8_t l_301 = 0xF5L;
                        int i, j, k;
                        l_294 |= 0x53FF1EF5L;
                        l_296 = l_295;
                        l_300[3][1][1] &= ((l_298 = (l_297 , FAKE_DIVERGE(p_1199->local_1_offset, get_local_id(1), 10))) , ((*l_279) = l_299));
                        l_294 = ((*l_282) ^= l_301);
                    }
                    l_303[4] |= l_302[2];
                }
                for (l_274 = 8; (l_274 == 31); ++l_274)
                { /* block id: 216 */
                    int32_t l_306 = (-1L);
                    int32_t *l_321[1][8][8] = {{{&l_306,&l_306,&l_306,&l_306,(void*)0,&l_306,(void*)0,&l_306},{&l_306,&l_306,&l_306,&l_306,(void*)0,&l_306,(void*)0,&l_306},{&l_306,&l_306,&l_306,&l_306,(void*)0,&l_306,(void*)0,&l_306},{&l_306,&l_306,&l_306,&l_306,(void*)0,&l_306,(void*)0,&l_306},{&l_306,&l_306,&l_306,&l_306,(void*)0,&l_306,(void*)0,&l_306},{&l_306,&l_306,&l_306,&l_306,(void*)0,&l_306,(void*)0,&l_306},{&l_306,&l_306,&l_306,&l_306,(void*)0,&l_306,(void*)0,&l_306},{&l_306,&l_306,&l_306,&l_306,(void*)0,&l_306,(void*)0,&l_306}}};
                    int32_t *l_322 = &l_306;
                    int32_t *l_323 = (void*)0;
                    int i, j, k;
                    for (l_306 = 0; (l_306 <= (-15)); --l_306)
                    { /* block id: 219 */
                        int32_t *l_309 = (void*)0;
                        int32_t l_311[8][4][2] = {{{4L,1L},{4L,1L},{4L,1L},{4L,1L}},{{4L,1L},{4L,1L},{4L,1L},{4L,1L}},{{4L,1L},{4L,1L},{4L,1L},{4L,1L}},{{4L,1L},{4L,1L},{4L,1L},{4L,1L}},{{4L,1L},{4L,1L},{4L,1L},{4L,1L}},{{4L,1L},{4L,1L},{4L,1L},{4L,1L}},{{4L,1L},{4L,1L},{4L,1L},{4L,1L}},{{4L,1L},{4L,1L},{4L,1L},{4L,1L}}};
                        int32_t *l_310 = &l_311[5][2][0];
                        int32_t *l_312[3][3] = {{&l_311[5][2][0],&l_311[5][2][0],&l_311[5][2][0]},{&l_311[5][2][0],&l_311[5][2][0],&l_311[5][2][0]},{&l_311[5][2][0],&l_311[5][2][0],&l_311[5][2][0]}};
                        int32_t *l_313 = &l_311[5][0][1];
                        uint32_t l_314 = 1UL;
                        uint32_t l_315[4][5][7] = {{{4294967286UL,0x07BF8908L,0x6930E477L,0x74283174L,0x298A65E6L,0x8BCDBA9DL,0xE33949A1L},{4294967286UL,0x07BF8908L,0x6930E477L,0x74283174L,0x298A65E6L,0x8BCDBA9DL,0xE33949A1L},{4294967286UL,0x07BF8908L,0x6930E477L,0x74283174L,0x298A65E6L,0x8BCDBA9DL,0xE33949A1L},{4294967286UL,0x07BF8908L,0x6930E477L,0x74283174L,0x298A65E6L,0x8BCDBA9DL,0xE33949A1L},{4294967286UL,0x07BF8908L,0x6930E477L,0x74283174L,0x298A65E6L,0x8BCDBA9DL,0xE33949A1L}},{{4294967286UL,0x07BF8908L,0x6930E477L,0x74283174L,0x298A65E6L,0x8BCDBA9DL,0xE33949A1L},{4294967286UL,0x07BF8908L,0x6930E477L,0x74283174L,0x298A65E6L,0x8BCDBA9DL,0xE33949A1L},{4294967286UL,0x07BF8908L,0x6930E477L,0x74283174L,0x298A65E6L,0x8BCDBA9DL,0xE33949A1L},{4294967286UL,0x07BF8908L,0x6930E477L,0x74283174L,0x298A65E6L,0x8BCDBA9DL,0xE33949A1L},{4294967286UL,0x07BF8908L,0x6930E477L,0x74283174L,0x298A65E6L,0x8BCDBA9DL,0xE33949A1L}},{{4294967286UL,0x07BF8908L,0x6930E477L,0x74283174L,0x298A65E6L,0x8BCDBA9DL,0xE33949A1L},{4294967286UL,0x07BF8908L,0x6930E477L,0x74283174L,0x298A65E6L,0x8BCDBA9DL,0xE33949A1L},{4294967286UL,0x07BF8908L,0x6930E477L,0x74283174L,0x298A65E6L,0x8BCDBA9DL,0xE33949A1L},{4294967286UL,0x07BF8908L,0x6930E477L,0x74283174L,0x298A65E6L,0x8BCDBA9DL,0xE33949A1L},{4294967286UL,0x07BF8908L,0x6930E477L,0x74283174L,0x298A65E6L,0x8BCDBA9DL,0xE33949A1L}},{{4294967286UL,0x07BF8908L,0x6930E477L,0x74283174L,0x298A65E6L,0x8BCDBA9DL,0xE33949A1L},{4294967286UL,0x07BF8908L,0x6930E477L,0x74283174L,0x298A65E6L,0x8BCDBA9DL,0xE33949A1L},{4294967286UL,0x07BF8908L,0x6930E477L,0x74283174L,0x298A65E6L,0x8BCDBA9DL,0xE33949A1L},{4294967286UL,0x07BF8908L,0x6930E477L,0x74283174L,0x298A65E6L,0x8BCDBA9DL,0xE33949A1L},{4294967286UL,0x07BF8908L,0x6930E477L,0x74283174L,0x298A65E6L,0x8BCDBA9DL,0xE33949A1L}}};
                        int8_t l_316 = 0L;
                        int32_t *l_317 = &l_311[5][2][0];
                        int32_t *l_318[10][2][5] = {{{(void*)0,(void*)0,&l_311[5][2][0],&l_311[6][3][1],&l_311[7][1][0]},{(void*)0,(void*)0,&l_311[5][2][0],&l_311[6][3][1],&l_311[7][1][0]}},{{(void*)0,(void*)0,&l_311[5][2][0],&l_311[6][3][1],&l_311[7][1][0]},{(void*)0,(void*)0,&l_311[5][2][0],&l_311[6][3][1],&l_311[7][1][0]}},{{(void*)0,(void*)0,&l_311[5][2][0],&l_311[6][3][1],&l_311[7][1][0]},{(void*)0,(void*)0,&l_311[5][2][0],&l_311[6][3][1],&l_311[7][1][0]}},{{(void*)0,(void*)0,&l_311[5][2][0],&l_311[6][3][1],&l_311[7][1][0]},{(void*)0,(void*)0,&l_311[5][2][0],&l_311[6][3][1],&l_311[7][1][0]}},{{(void*)0,(void*)0,&l_311[5][2][0],&l_311[6][3][1],&l_311[7][1][0]},{(void*)0,(void*)0,&l_311[5][2][0],&l_311[6][3][1],&l_311[7][1][0]}},{{(void*)0,(void*)0,&l_311[5][2][0],&l_311[6][3][1],&l_311[7][1][0]},{(void*)0,(void*)0,&l_311[5][2][0],&l_311[6][3][1],&l_311[7][1][0]}},{{(void*)0,(void*)0,&l_311[5][2][0],&l_311[6][3][1],&l_311[7][1][0]},{(void*)0,(void*)0,&l_311[5][2][0],&l_311[6][3][1],&l_311[7][1][0]}},{{(void*)0,(void*)0,&l_311[5][2][0],&l_311[6][3][1],&l_311[7][1][0]},{(void*)0,(void*)0,&l_311[5][2][0],&l_311[6][3][1],&l_311[7][1][0]}},{{(void*)0,(void*)0,&l_311[5][2][0],&l_311[6][3][1],&l_311[7][1][0]},{(void*)0,(void*)0,&l_311[5][2][0],&l_311[6][3][1],&l_311[7][1][0]}},{{(void*)0,(void*)0,&l_311[5][2][0],&l_311[6][3][1],&l_311[7][1][0]},{(void*)0,(void*)0,&l_311[5][2][0],&l_311[6][3][1],&l_311[7][1][0]}}};
                        int32_t *l_319 = &l_311[2][0][1];
                        int32_t **l_320 = &l_312[2][0];
                        int i, j, k;
                        l_310 = l_309;
                        l_313 = l_312[2][0];
                        l_319 = (((l_315[3][4][0] ^= l_314) , l_316) , (l_318[7][0][2] = l_317));
                        l_320 = (void*)0;
                    }
                    l_323 = (l_322 = l_321[0][6][5]);
                    for (l_306 = 6; (l_306 != (-17)); l_306 = safe_sub_func_uint32_t_u_u(l_306, 4))
                    { /* block id: 231 */
                        int64_t l_326[10] = {4L,0x05BAE596A58D8C05L,4L,4L,0x05BAE596A58D8C05L,4L,4L,0x05BAE596A58D8C05L,4L,4L};
                        uint32_t l_327 = 1UL;
                        int64_t l_330 = 0x241B9189E70864A0L;
                        int i;
                        --l_327;
                        l_330 = 1L;
                        l_323 = (void*)0;
                    }
                    for (l_306 = 5; (l_306 == (-26)); l_306--)
                    { /* block id: 238 */
                        int16_t l_333[7];
                        uint64_t l_334 = 1UL;
                        int32_t l_338 = 0x7D902092L;
                        int32_t *l_337 = &l_338;
                        uint32_t l_339 = 0xF623BDBFL;
                        uint8_t l_342[10][3] = {{0xBBL,0xBBL,0xBBL},{0xBBL,0xBBL,0xBBL},{0xBBL,0xBBL,0xBBL},{0xBBL,0xBBL,0xBBL},{0xBBL,0xBBL,0xBBL},{0xBBL,0xBBL,0xBBL},{0xBBL,0xBBL,0xBBL},{0xBBL,0xBBL,0xBBL},{0xBBL,0xBBL,0xBBL},{0xBBL,0xBBL,0xBBL}};
                        int64_t l_343[2][4][4] = {{{0x7F7E07173F49FC18L,0L,0x7F7E07173F49FC18L,0x7F7E07173F49FC18L},{0x7F7E07173F49FC18L,0L,0x7F7E07173F49FC18L,0x7F7E07173F49FC18L},{0x7F7E07173F49FC18L,0L,0x7F7E07173F49FC18L,0x7F7E07173F49FC18L},{0x7F7E07173F49FC18L,0L,0x7F7E07173F49FC18L,0x7F7E07173F49FC18L}},{{0x7F7E07173F49FC18L,0L,0x7F7E07173F49FC18L,0x7F7E07173F49FC18L},{0x7F7E07173F49FC18L,0L,0x7F7E07173F49FC18L,0x7F7E07173F49FC18L},{0x7F7E07173F49FC18L,0L,0x7F7E07173F49FC18L,0x7F7E07173F49FC18L},{0x7F7E07173F49FC18L,0L,0x7F7E07173F49FC18L,0x7F7E07173F49FC18L}}};
                        int i, j, k;
                        for (i = 0; i < 7; i++)
                            l_333[i] = 0x0E7BL;
                        l_334++;
                        l_323 = (l_337 = (void*)0);
                        l_339++;
                        l_343[1][2][1] = l_342[5][1];
                    }
                }
                l_346[0] = l_344;
            }
        }
        unsigned int result = 0;
        result += l_149;
        atomic_add(&p_1199->l_special_values[8], result);
    }
    else
    { /* block id: 249 */
        (1 + 1);
    }
    return l_347;
}


/* ------------------------------------------ */
/* 
 * reads : p_1199->g_16 p_1199->g_17 p_1199->g_13 p_1199->g_62 p_1199->g_3 p_1199->g_118 p_1199->g_115 p_1199->g_125 p_1199->g_126 p_1199->g_111 p_1199->g_107 p_1199->g_143
 * writes: p_1199->g_62 p_1199->g_107 p_1199->g_111 p_1199->g_115 p_1199->g_13 p_1199->g_118 p_1199->g_126 p_1199->g_143
 */
int32_t ** func_70(uint32_t * p_71, int64_t  p_72, struct S0 * p_1199)
{ /* block id: 16 */
    uint16_t l_86 = 1UL;
    int32_t **l_88[5];
    int32_t ***l_87 = &l_88[2];
    int16_t *l_89[8] = {&p_1199->g_62[0][3],&p_1199->g_62[0][3],&p_1199->g_62[0][3],&p_1199->g_62[0][3],&p_1199->g_62[0][3],&p_1199->g_62[0][3],&p_1199->g_62[0][3],&p_1199->g_62[0][3]};
    int64_t l_90[6];
    uint8_t *l_139 = &p_1199->g_107;
    uint16_t *l_140 = &l_86;
    uint8_t *l_141 = (void*)0;
    uint8_t *l_142 = &p_1199->g_143[0][0];
    uint32_t l_147 = 0UL;
    int i;
    for (i = 0; i < 5; i++)
        l_88[i] = &p_1199->g_17;
    for (i = 0; i < 6; i++)
        l_90[i] = 0x1668C86622CCD07DL;
    for (p_72 = 0; (p_72 >= 15); ++p_72)
    { /* block id: 19 */
        int32_t l_75[6] = {0L,0L,0L,0L,0L,0L};
        int i;
        l_75[1] |= func_4((**p_1199->g_16), p_72, p_1199);
        return &p_1199->g_17;
    }
    (*p_1199->g_125) |= (safe_lshift_func_int16_t_s_u((func_78(p_72, p_72, (((+(((&p_1199->g_17 != &p_1199->g_17) <= (safe_lshift_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s(l_86, (p_1199->g_62[0][2] = (&p_1199->g_17 != ((*l_87) = (void*)0))))), l_90[3]))) & FAKE_DIVERGE(p_1199->group_1_offset, get_group_id(1), 10))) && p_72) == p_72), p_1199) , 0x0CCCL), p_1199->g_3[1][0][0]));
    (**p_1199->g_16) = ((p_1199->g_111 >= (!p_1199->g_115)) != ((((safe_rshift_func_uint8_t_u_u((((safe_div_func_uint32_t_u_u((safe_lshift_func_uint8_t_u_s(((*l_142) = ((*l_139) |= (((((((*l_140) = ((((safe_div_func_int32_t_s_s((safe_mod_func_int64_t_s_s((p_72 != ((((void*)0 != l_89[1]) == (p_72 < 9UL)) || ((safe_mul_func_uint8_t_u_u(((void*)0 == l_139), p_72)) && 18446744073709551607UL))), 0xE77908CCFF5D3455L)), 1L)) <= 7UL) <= 0UL) > 6L)) != 1UL) | 1UL) ^ 0UL) , p_72) <= p_1199->g_111))), 7)), 0x6E6F63E1L)) && 8L) && p_1199->g_111), 5)) >= 0x0BL) >= GROUP_DIVERGE(2, 1)) | 0x6361L));
    for (p_1199->g_107 = 6; (p_1199->g_107 == 17); p_1199->g_107++)
    { /* block id: 46 */
        uint8_t l_146 = 0UL;
        int32_t l_148 = 0x6C714A41L;
        (*p_1199->g_17) ^= 8L;
        l_148 |= (p_1199->g_143[1][0] == (l_147 = ((p_72 , l_146) >= ((*p_1199->g_17) = l_146))));
        if (p_72)
            break;
    }
    return &p_1199->g_17;
}


/* ------------------------------------------ */
/* 
 * reads : p_1199->g_62 p_1199->g_3 p_1199->g_13 p_1199->g_17 p_1199->g_118 p_1199->g_115
 * writes: p_1199->g_107 p_1199->g_111 p_1199->g_115 p_1199->g_13 p_1199->g_118
 */
uint64_t  func_78(int32_t  p_79, uint32_t  p_80, int32_t  p_81, struct S0 * p_1199)
{ /* block id: 25 */
    int32_t l_91 = 0x7098D290L;
    int32_t **l_104 = (void*)0;
    int16_t l_105[9] = {0x1940L,0x1940L,0x1940L,0x1940L,0x1940L,0x1940L,0x1940L,0x1940L,0x1940L};
    uint8_t *l_106 = &p_1199->g_107;
    int16_t *l_110[2];
    int32_t l_112[1];
    int32_t l_113 = 0L;
    int8_t *l_114 = &p_1199->g_115;
    int32_t *l_116 = &l_112[0];
    int32_t *l_117 = &p_1199->g_118;
    int32_t *l_119 = &l_91;
    int i;
    for (i = 0; i < 2; i++)
        l_110[i] = &l_105[7];
    for (i = 0; i < 1; i++)
        l_112[i] = (-1L);
    (*l_119) = ((*l_117) ^= (((l_91 < ((*l_116) = ((*p_1199->g_17) = (((((safe_lshift_func_int8_t_s_u(((((((((((safe_mul_func_uint16_t_u_u((safe_lshift_func_int8_t_s_u(((*l_114) = ((((!(safe_lshift_func_int8_t_s_s(((p_81 >= (safe_add_func_int64_t_s_s((safe_sub_func_uint16_t_u_u(((l_104 != (void*)0) , (l_105[7] || (((*l_106) = 0x66L) > ((((safe_rshift_func_uint16_t_u_u(p_1199->g_62[0][6], p_81)) ^ (((((p_1199->g_111 = p_1199->g_62[0][1]) | 65526UL) != l_112[0]) , 0xC2336C45L) & FAKE_DIVERGE(p_1199->local_2_offset, get_local_id(2), 10))) == p_80) < l_113)))), p_1199->g_62[0][2])), l_112[0]))) <= p_81), 2))) > p_1199->g_3[1][0][0]) , 1L) , p_1199->g_13)), p_1199->g_3[1][0][0])), 65535UL)) , p_81) , &l_105[7]) == (void*)0) , 0x369BL) & 65533UL) == 0xB7E8L) != p_80) , p_80) & p_1199->g_3[1][0][0]), 3)) ^ (-9L)) != p_80) >= 0xFFC97D5E08C8AB59L) && 0x03L)))) & 0L) | p_1199->g_3[0][2][2]));
    for (p_1199->g_115 = 0; (p_1199->g_115 >= (-2)); p_1199->g_115 = safe_sub_func_uint64_t_u_u(p_1199->g_115, 9))
    { /* block id: 35 */
        int32_t *l_122 = (void*)0;
        int32_t **l_124 = &l_122;
        (*l_124) = l_122;
    }
    return p_80;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[22];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 22; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[22];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 22; i++)
            l_special_values[i] = 0;
    struct S0 c_1200;
    struct S0* p_1199 = &c_1200;
    struct S0 c_1201 = {
        {{{7L,7L,7L},{7L,7L,7L},{7L,7L,7L},{7L,7L,7L},{7L,7L,7L},{7L,7L,7L},{7L,7L,7L},{7L,7L,7L},{7L,7L,7L},{7L,7L,7L}},{{7L,7L,7L},{7L,7L,7L},{7L,7L,7L},{7L,7L,7L},{7L,7L,7L},{7L,7L,7L},{7L,7L,7L},{7L,7L,7L},{7L,7L,7L},{7L,7L,7L}},{{7L,7L,7L},{7L,7L,7L},{7L,7L,7L},{7L,7L,7L},{7L,7L,7L},{7L,7L,7L},{7L,7L,7L},{7L,7L,7L},{7L,7L,7L},{7L,7L,7L}}}, // p_1199->g_3
        0UL, // p_1199->g_13
        1L, // p_1199->g_15
        (void*)0, // p_1199->g_17
        &p_1199->g_17, // p_1199->g_16
        {{(-5L),(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)}}, // p_1199->g_62
        0UL, // p_1199->g_107
        (-9L), // p_1199->g_111
        0x77L, // p_1199->g_115
        0x291DA39BL, // p_1199->g_118
        {{&p_1199->g_17,(void*)0,&p_1199->g_17,(void*)0},{&p_1199->g_17,(void*)0,&p_1199->g_17,(void*)0},{&p_1199->g_17,(void*)0,&p_1199->g_17,(void*)0},{&p_1199->g_17,(void*)0,&p_1199->g_17,(void*)0},{&p_1199->g_17,(void*)0,&p_1199->g_17,(void*)0},{&p_1199->g_17,(void*)0,&p_1199->g_17,(void*)0},{&p_1199->g_17,(void*)0,&p_1199->g_17,(void*)0}}, // p_1199->g_123
        {0x168BF473L,0x168BF473L,0x168BF473L,0x168BF473L,0x168BF473L}, // p_1199->g_126
        &p_1199->g_126[2], // p_1199->g_125
        {{0UL,249UL},{0UL,249UL},{0UL,249UL},{0UL,249UL},{0UL,249UL}}, // p_1199->g_143
        {4UL,4UL,4UL,4UL,4UL}, // p_1199->g_359
        1UL, // p_1199->g_361
        0xEF246A6AL, // p_1199->g_363
        0x7540C17C14EB8A39L, // p_1199->g_378
        1L, // p_1199->g_383
        &p_1199->g_111, // p_1199->g_391
        &p_1199->g_391, // p_1199->g_390
        &p_1199->g_378, // p_1199->g_399
        &p_1199->g_62[0][0], // p_1199->g_407
        &p_1199->g_407, // p_1199->g_406
        2UL, // p_1199->g_411
        &p_1199->g_17, // p_1199->g_414
        0xF9L, // p_1199->g_423
        &p_1199->g_17, // p_1199->g_517
        {0x3BA39A99L,0x3BA39A99L,0x3BA39A99L,0x3BA39A99L}, // p_1199->g_572
        {4294967293UL,4294967293UL,4294967293UL,4294967293UL,4294967293UL}, // p_1199->g_587
        {&p_1199->g_361,(void*)0,&p_1199->g_361,&p_1199->g_361,(void*)0,&p_1199->g_361,&p_1199->g_361,(void*)0,&p_1199->g_361}, // p_1199->g_621
        &p_1199->g_17, // p_1199->g_644
        {{0UL,0x78EE0983195A9BC9L,1UL,0x78EE0983195A9BC9L},{0UL,0x78EE0983195A9BC9L,1UL,0x78EE0983195A9BC9L},{0UL,0x78EE0983195A9BC9L,1UL,0x78EE0983195A9BC9L},{0UL,0x78EE0983195A9BC9L,1UL,0x78EE0983195A9BC9L},{0UL,0x78EE0983195A9BC9L,1UL,0x78EE0983195A9BC9L},{0UL,0x78EE0983195A9BC9L,1UL,0x78EE0983195A9BC9L}}, // p_1199->g_647
        0x1042A69F4570174EL, // p_1199->g_1014
        &p_1199->g_1014, // p_1199->g_1013
        &p_1199->g_1013, // p_1199->g_1012
        0x172B42EEL, // p_1199->g_1018
        1UL, // p_1199->g_1020
        {5UL,5UL,5UL,5UL,5UL,5UL,5UL,5UL}, // p_1199->g_1037
        {&p_1199->g_1018,&p_1199->g_1018,&p_1199->g_1018,&p_1199->g_1018,&p_1199->g_1018,&p_1199->g_1018}, // p_1199->g_1091
        1L, // p_1199->g_1190
        sequence_input[get_global_id(0)], // p_1199->global_0_offset
        sequence_input[get_global_id(1)], // p_1199->global_1_offset
        sequence_input[get_global_id(2)], // p_1199->global_2_offset
        sequence_input[get_local_id(0)], // p_1199->local_0_offset
        sequence_input[get_local_id(1)], // p_1199->local_1_offset
        sequence_input[get_local_id(2)], // p_1199->local_2_offset
        sequence_input[get_group_id(0)], // p_1199->group_0_offset
        sequence_input[get_group_id(1)], // p_1199->group_1_offset
        sequence_input[get_group_id(2)], // p_1199->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_1200 = c_1201;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1199);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1199->g_3[i][j][k], "p_1199->g_3[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1199->g_13, "p_1199->g_13", print_hash_value);
    transparent_crc(p_1199->g_15, "p_1199->g_15", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1199->g_62[i][j], "p_1199->g_62[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1199->g_107, "p_1199->g_107", print_hash_value);
    transparent_crc(p_1199->g_111, "p_1199->g_111", print_hash_value);
    transparent_crc(p_1199->g_115, "p_1199->g_115", print_hash_value);
    transparent_crc(p_1199->g_118, "p_1199->g_118", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1199->g_126[i], "p_1199->g_126[i]", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1199->g_143[i][j], "p_1199->g_143[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1199->g_359[i], "p_1199->g_359[i]", print_hash_value);

    }
    transparent_crc(p_1199->g_361, "p_1199->g_361", print_hash_value);
    transparent_crc(p_1199->g_363, "p_1199->g_363", print_hash_value);
    transparent_crc(p_1199->g_378, "p_1199->g_378", print_hash_value);
    transparent_crc(p_1199->g_383, "p_1199->g_383", print_hash_value);
    transparent_crc(p_1199->g_411, "p_1199->g_411", print_hash_value);
    transparent_crc(p_1199->g_423, "p_1199->g_423", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1199->g_572[i], "p_1199->g_572[i]", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1199->g_587[i], "p_1199->g_587[i]", print_hash_value);

    }
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1199->g_647[i][j], "p_1199->g_647[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1199->g_1014, "p_1199->g_1014", print_hash_value);
    transparent_crc(p_1199->g_1018, "p_1199->g_1018", print_hash_value);
    transparent_crc(p_1199->g_1020, "p_1199->g_1020", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1199->g_1037[i], "p_1199->g_1037[i]", print_hash_value);

    }
    transparent_crc(p_1199->g_1190, "p_1199->g_1190", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 22; i++)
            transparent_crc(p_1199->g_special_values[i + 22 * get_linear_group_id()], "p_1199->g_special_values[i + 22 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 22; i++)
            transparent_crc(p_1199->l_special_values[i], "p_1199->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
