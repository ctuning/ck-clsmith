// --atomics 95 ---fake_divergence -g 17,91,3 -l 17,7,1
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


// Seed: 52

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    uint32_t g_12[3][2][3];
    uint8_t g_41;
    uint32_t g_61;
    uint8_t g_67;
    uint64_t g_82;
    uint64_t g_86;
    int32_t * volatile g_95;
    int32_t g_97;
    int32_t * volatile g_96;
    int64_t g_102;
    volatile uint32_t g_103[1][10];
    volatile uint64_t **g_120[4];
    int8_t g_132;
    int16_t g_142;
    int16_t g_146;
    uint32_t g_154;
    uint16_t g_160;
    uint16_t g_166;
    volatile int32_t g_187;
    volatile int8_t g_215[8][2][7];
    int16_t g_218;
    int32_t *g_223;
    int32_t ** volatile g_222;
    uint32_t g_227;
    uint8_t *g_466;
    uint8_t **g_465;
    uint8_t **g_473;
    int32_t ** volatile g_485;
    int32_t ** volatile g_486;
    uint32_t ** volatile g_510;
    volatile uint32_t g_532;
    uint64_t *g_585;
    uint64_t **g_584;
    uint32_t *g_632[9][1];
    uint32_t **g_631;
    volatile int32_t g_650;
    volatile int8_t * volatile g_665;
    volatile int8_t * volatile *g_664;
    int8_t *g_671;
    int8_t **g_670;
    int32_t g_691;
    uint8_t ***g_742;
    uint8_t ****g_741;
    int8_t g_775;
    int32_t g_793;
    uint8_t g_802;
    int32_t g_882;
    int32_t * volatile g_900[4][8];
    int32_t * volatile g_901;
    int32_t * volatile g_902;
    int32_t * volatile g_904;
    volatile int64_t * volatile g_990;
    volatile int64_t * volatile * volatile g_989;
    volatile int32_t * volatile * volatile *g_995;
    int32_t ** volatile g_1022;
    int32_t * volatile g_1131;
    int32_t * volatile g_1134;
    uint64_t g_1187[9];
    int32_t ** volatile g_1188;
    int32_t * volatile g_1205;
    int16_t g_1218;
    int32_t *g_1222;
    int32_t ** volatile g_1221;
    int8_t g_1240;
    volatile uint32_t g_1370;
    int32_t g_1371;
    uint32_t g_1377;
    int32_t * volatile g_1402;
    int32_t * volatile *g_1401;
    int32_t g_1466;
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
uint32_t  func_1(struct S0 * p_1467);
int32_t  func_2(uint16_t  p_3, uint32_t  p_4, struct S0 * p_1467);
int16_t  func_9(int64_t  p_10, struct S0 * p_1467);
int8_t  func_19(int32_t  p_20, uint64_t  p_21, uint32_t  p_22, struct S0 * p_1467);
int16_t  func_25(int64_t  p_26, int8_t  p_27, int64_t  p_28, int64_t  p_29, struct S0 * p_1467);
int16_t  func_32(uint16_t  p_33, int32_t  p_34, struct S0 * p_1467);
uint16_t  func_38(uint32_t  p_39, struct S0 * p_1467);
int8_t  func_44(uint8_t * p_45, uint8_t * p_46, uint8_t * p_47, struct S0 * p_1467);
uint8_t * func_48(uint8_t  p_49, uint8_t * p_50, struct S0 * p_1467);
int8_t  func_51(uint8_t  p_52, uint32_t  p_53, uint16_t  p_54, struct S0 * p_1467);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1467->g_12 p_1467->g_41 p_1467->g_61 p_1467->g_82 p_1467->g_67 p_1467->g_96 p_1467->g_103 p_1467->g_86 p_1467->g_120 p_1467->g_142 p_1467->g_154 p_1467->g_97 p_1467->g_166 p_1467->g_102 p_1467->g_160 p_1467->g_187 p_1467->g_222 p_1467->g_227 p_1467->g_215 p_1467->g_465 p_1467->g_466 p_1467->g_532 p_1467->g_146 p_1467->g_223 p_1467->g_631 p_1467->g_218 p_1467->g_650 p_1467->g_473 p_1467->g_664 p_1467->g_665 p_1467->g_670 p_1467->g_691 p_1467->g_741 p_1467->g_742 p_1467->g_802 p_1467->g_671 p_1467->g_132 p_1467->g_775 p_1467->g_904 p_1467->g_1022 p_1467->g_793 p_1467->g_989 p_1467->g_990 p_1467->g_882 p_1467->g_1131 p_1467->g_1188 p_1467->g_1205 p_1467->g_1134 p_1467->g_1218 p_1467->g_1221 p_1467->g_1240 p_1467->g_1187 p_1467->g_1222 p_1467->g_1466
 * writes: p_1467->g_41 p_1467->g_61 p_1467->g_82 p_1467->g_97 p_1467->g_103 p_1467->g_132 p_1467->g_102 p_1467->g_142 p_1467->g_146 p_1467->g_86 p_1467->g_154 p_1467->g_160 p_1467->g_166 p_1467->g_223 p_1467->g_227 p_1467->g_67 p_1467->g_465 p_1467->g_473 p_1467->g_532 p_1467->g_664 p_1467->g_670 p_1467->g_691 p_1467->g_218 p_1467->g_793 p_1467->g_802 p_1467->g_632 p_1467->g_882 p_1467->g_775 p_1467->g_1187 p_1467->g_187 p_1467->g_900 p_1467->g_1218 p_1467->g_1222
 */
uint32_t  func_1(struct S0 * p_1467)
{ /* block id: 4 */
    uint32_t l_11 = 0x7B844A75L;
    int32_t l_1115 = (-2L);
    int32_t l_1116 = 6L;
    uint64_t *l_1186 = &p_1467->g_1187[3];
    int16_t *l_1217 = &p_1467->g_1218;
    uint32_t l_1223[3];
    int32_t l_1283[8] = {0x4B6AC71FL,0x4B6AC71FL,0x4B6AC71FL,0x4B6AC71FL,0x4B6AC71FL,0x4B6AC71FL,0x4B6AC71FL,0x4B6AC71FL};
    int32_t **l_1286 = &p_1467->g_223;
    uint64_t l_1343 = 18446744073709551615UL;
    int32_t l_1348[3];
    int64_t l_1356 = 0x5FAAE20646B95B3EL;
    uint8_t l_1361 = 0xA7L;
    int16_t l_1381 = 0x2A70L;
    int32_t l_1392 = 0x53FF7A9AL;
    int i;
    for (i = 0; i < 3; i++)
        l_1223[i] = 0x02CED093L;
    for (i = 0; i < 3; i++)
        l_1348[i] = 0x19456975L;
    l_1223[2] = func_2((safe_rshift_func_uint16_t_u_u((6L < (((*l_1217) |= func_9((((+l_11) == p_1467->g_12[0][0][2]) , (safe_rshift_func_uint16_t_u_s((safe_div_func_int16_t_s_s((((p_1467->g_12[1][1][0] ^ (((safe_div_func_uint8_t_u_u((((*l_1186) = (func_19(((l_1116 = (l_1115 = (((p_1467->g_12[1][1][2] >= 0x39E6A413L) != (safe_div_func_uint16_t_u_u((func_25(p_1467->g_12[0][0][0], (safe_rshift_func_int16_t_s_s(func_32(p_1467->g_12[1][1][0], (safe_unary_minus_func_int8_t_s((-1L))), p_1467), l_11)), l_11, p_1467->g_12[2][1][2], p_1467) > p_1467->g_12[1][0][0]), p_1467->g_12[0][0][2]))) , l_11))) & p_1467->g_12[0][0][2]), l_11, p_1467->g_12[2][0][0], p_1467) ^ 1L)) , 0xCFL), (-3L))) && 65535UL) ^ 0UL)) < l_11) == l_11), l_11)), p_1467->g_12[2][0][1]))), p_1467)) < 0L)), GROUP_DIVERGE(2, 1))), l_11, p_1467);
    for (p_1467->g_802 = 0; (p_1467->g_802 == 41); ++p_1467->g_802)
    { /* block id: 811 */
        int16_t l_1226[8][6] = {{0x02F1L,0x02F1L,0x02F1L,0x02F1L,0x02F1L,0x02F1L},{0x02F1L,0x02F1L,0x02F1L,0x02F1L,0x02F1L,0x02F1L},{0x02F1L,0x02F1L,0x02F1L,0x02F1L,0x02F1L,0x02F1L},{0x02F1L,0x02F1L,0x02F1L,0x02F1L,0x02F1L,0x02F1L},{0x02F1L,0x02F1L,0x02F1L,0x02F1L,0x02F1L,0x02F1L},{0x02F1L,0x02F1L,0x02F1L,0x02F1L,0x02F1L,0x02F1L},{0x02F1L,0x02F1L,0x02F1L,0x02F1L,0x02F1L,0x02F1L},{0x02F1L,0x02F1L,0x02F1L,0x02F1L,0x02F1L,0x02F1L}};
        uint8_t **l_1234 = &p_1467->g_466;
        int32_t l_1235[6][5] = {{(-6L),(-6L),0x35D26937L,1L,2L},{(-6L),(-6L),0x35D26937L,1L,2L},{(-6L),(-6L),0x35D26937L,1L,2L},{(-6L),(-6L),0x35D26937L,1L,2L},{(-6L),(-6L),0x35D26937L,1L,2L},{(-6L),(-6L),0x35D26937L,1L,2L}};
        uint64_t *l_1241 = &p_1467->g_86;
        int8_t l_1275 = (-2L);
        uint64_t l_1276 = 0UL;
        int32_t *l_1281[3][6] = {{&p_1467->g_793,(void*)0,&p_1467->g_793,&p_1467->g_793,(void*)0,&p_1467->g_793},{&p_1467->g_793,(void*)0,&p_1467->g_793,&p_1467->g_793,(void*)0,&p_1467->g_793},{&p_1467->g_793,(void*)0,&p_1467->g_793,&p_1467->g_793,(void*)0,&p_1467->g_793}};
        int32_t **l_1282 = &l_1281[0][4];
        int i, j;
        if ((0x1EL && (((((*l_1241) = (((p_1467->g_882 &= ((l_1226[4][3] = 0L) | (safe_sub_func_int16_t_s_s((safe_rshift_func_int8_t_s_s(((((((+(safe_lshift_func_uint8_t_u_u(((**p_1467->g_664) > (-1L)), 0))) <= FAKE_DIVERGE(p_1467->local_2_offset, get_local_id(2), 10)) & (~((safe_unary_minus_func_int16_t_s(((void*)0 != l_1234))) & (65527UL < ((*l_1217) = l_1235[1][3]))))) || (safe_lshift_func_int16_t_s_u(((*l_1217) |= (safe_mul_func_uint8_t_u_u((l_1235[1][3] | l_1235[5][3]), 0x50L))), p_1467->g_142))) , (**p_1467->g_465)) , l_1223[2]), p_1467->g_1240)), 65535UL)))) , &p_1467->g_664) == &p_1467->g_664)) , 0x67E5L) <= l_1235[2][4]) >= (-3L))))
        { /* block id: 817 */
            return l_1235[0][4];
        }
        else
        { /* block id: 819 */
            int64_t l_1249 = 0x15052443BAEAB4BCL;
            uint16_t *l_1265 = &p_1467->g_166;
            uint16_t l_1272 = 0x186CL;
            int16_t *l_1277 = &p_1467->g_142;
            int32_t **l_1278 = &p_1467->g_1222;
            (*l_1278) = ((safe_add_func_uint32_t_u_u(((safe_unary_minus_func_int16_t_s(((*l_1277) = (((safe_add_func_int8_t_s_s((((((*l_1217) = ((safe_add_func_uint32_t_u_u(l_1249, 0xD98E71F9L)) > ((((safe_mod_func_int64_t_s_s((safe_sub_func_uint8_t_u_u((((~(safe_mul_func_uint16_t_u_u((((safe_unary_minus_func_int64_t_s(0x752FCF8F6CB364D2L)) ^ ((l_1226[0][1] || FAKE_DIVERGE(p_1467->group_1_offset, get_group_id(1), 10)) == (~(safe_mul_func_uint16_t_u_u(((safe_sub_func_int8_t_s_s(((((safe_div_func_int16_t_s_s((GROUP_DIVERGE(0, 1) & (1L < ((l_1235[1][4] ^ l_1249) ^ (safe_mul_func_uint16_t_u_u((++(*l_1265)), (safe_div_func_int8_t_s_s((safe_div_func_uint16_t_u_u((((((l_1272 , ((((safe_add_func_int8_t_s_s(0x4CL, l_11)) | l_1223[2]) , l_1249) < l_1226[2][2])) , (void*)0) != l_1186) , 65535UL) , l_1275), 0x45A7L)), (**p_1467->g_465)))))))), p_1467->g_61)) & l_1249) == 1UL) == p_1467->g_802), (-1L))) , 0xAB2BL), p_1467->g_142))))) != l_1249), l_1223[1]))) , l_1276) <= 1UL), 0UL)), l_1226[4][3])) | l_1235[5][2]) > p_1467->g_1187[3]) , p_1467->g_160))) & p_1467->g_61) == 0x29DD6A3AL) | 4294967289UL), 0x3EL)) , p_1467->g_102) <= p_1467->g_218)))) , 1UL), l_1223[2])) , &l_1116);
        }
        (*p_1467->g_1222) = (l_1226[3][1] ^ (safe_unary_minus_func_uint32_t_u((safe_unary_minus_func_uint16_t_u(GROUP_DIVERGE(2, 1))))));
        if (l_1116)
            continue;
        (*p_1467->g_1222) = (((*l_1282) = l_1281[2][3]) == (((*p_1467->g_671) = (l_1283[1] && (safe_div_func_uint64_t_u_u(l_11, l_1235[1][1])))) , &p_1467->g_793));
    }
    (*l_1286) = &l_1283[1];
    for (p_1467->g_166 = 0; (p_1467->g_166 <= 8); p_1467->g_166 += 1)
    { /* block id: 834 */
        uint32_t ***l_1292 = &p_1467->g_631;
        int32_t l_1323 = 0x6202757FL;
        uint16_t l_1335 = 65527UL;
        int32_t l_1346 = (-4L);
        int32_t l_1347 = 0x11BE81DFL;
        int32_t l_1349 = (-1L);
        int32_t l_1351[2];
        uint32_t l_1353[6][10] = {{0x005838E0L,5UL,2UL,0x4D4514F8L,2UL,5UL,0x005838E0L,9UL,0xE1CAD90CL,0xE1CAD90CL},{0x005838E0L,5UL,2UL,0x4D4514F8L,2UL,5UL,0x005838E0L,9UL,0xE1CAD90CL,0xE1CAD90CL},{0x005838E0L,5UL,2UL,0x4D4514F8L,2UL,5UL,0x005838E0L,9UL,0xE1CAD90CL,0xE1CAD90CL},{0x005838E0L,5UL,2UL,0x4D4514F8L,2UL,5UL,0x005838E0L,9UL,0xE1CAD90CL,0xE1CAD90CL},{0x005838E0L,5UL,2UL,0x4D4514F8L,2UL,5UL,0x005838E0L,9UL,0xE1CAD90CL,0xE1CAD90CL},{0x005838E0L,5UL,2UL,0x4D4514F8L,2UL,5UL,0x005838E0L,9UL,0xE1CAD90CL,0xE1CAD90CL}};
        int32_t *l_1357 = &l_1351[1];
        int32_t *l_1358 = &l_1323;
        int32_t *l_1359 = &l_1116;
        int32_t *l_1360[7] = {&l_1351[1],&l_1351[1],&l_1351[1],&l_1351[1],&l_1351[1],&l_1351[1],&l_1351[1]};
        uint8_t l_1398[3];
        int i, j;
        for (i = 0; i < 2; i++)
            l_1351[i] = 0x4AA34F90L;
        for (i = 0; i < 3; i++)
            l_1398[i] = 0xE9L;
        (1 + 1);
    }
    return p_1467->g_1466;
}


/* ------------------------------------------ */
/* 
 * reads : p_1467->g_1221 p_1467->g_96 p_1467->g_97 p_1467->g_1205 p_1467->g_691
 * writes: p_1467->g_223 p_1467->g_1222 p_1467->g_691
 */
int32_t  func_2(uint16_t  p_3, uint32_t  p_4, struct S0 * p_1467)
{ /* block id: 803 */
    int32_t *l_1219[8] = {&p_1467->g_691,&p_1467->g_691,&p_1467->g_691,&p_1467->g_691,&p_1467->g_691,&p_1467->g_691,&p_1467->g_691,&p_1467->g_691};
    int32_t **l_1220 = &p_1467->g_223;
    int i;
    (*p_1467->g_1221) = ((*l_1220) = l_1219[3]);
    (*p_1467->g_1205) = ((*p_1467->g_96) && ((void*)0 == l_1219[2]));
    return (*p_1467->g_1205);
}


/* ------------------------------------------ */
/* 
 * reads : p_1467->g_775 p_1467->g_223 p_1467->g_97 p_1467->g_1022 p_1467->g_1188 p_1467->g_82 p_1467->g_102 p_1467->g_103 p_1467->g_1205 p_1467->g_218 p_1467->g_670 p_1467->g_671 p_1467->g_132 p_1467->g_1134 p_1467->g_41
 * writes: p_1467->g_775 p_1467->g_97 p_1467->g_223 p_1467->g_82 p_1467->g_102 p_1467->g_166 p_1467->g_691 p_1467->g_218 p_1467->g_67 p_1467->g_187 p_1467->g_900
 */
int16_t  func_9(int64_t  p_10, struct S0 * p_1467)
{ /* block id: 762 */
    uint32_t l_1202 = 0xCC5D7862L;
    uint8_t ***l_1212 = &p_1467->g_465;
    uint64_t l_1215 = 18446744073709551615UL;
    int32_t l_1216 = 0x7293F172L;
    for (p_1467->g_775 = 3; (p_1467->g_775 >= 0); p_1467->g_775 -= 1)
    { /* block id: 765 */
        int32_t l_1204 = 9L;
        (*p_1467->g_223) &= 0L;
        (*p_1467->g_1188) = (*p_1467->g_1022);
        for (p_1467->g_82 = 0; (p_1467->g_82 <= 3); p_1467->g_82 += 1)
        { /* block id: 770 */
            int i, j;
            if (p_10)
                break;
            for (p_1467->g_97 = 0; (p_1467->g_97 <= 3); p_1467->g_97 += 1)
            { /* block id: 774 */
                for (p_1467->g_102 = 0; (p_1467->g_102 >= 0); p_1467->g_102 -= 1)
                { /* block id: 777 */
                    int8_t l_1199[2];
                    uint16_t *l_1203 = &p_1467->g_166;
                    int i, j;
                    for (i = 0; i < 2; i++)
                        l_1199[i] = 0x7CL;
                    if ((atomic_inc(&p_1467->g_atomic_input[95 * get_linear_group_id() + 56]) == 5))
                    { /* block id: 779 */
                        int32_t l_1189 = 8L;
                        uint32_t l_1190 = 0xA9952516L;
                        l_1190 &= (l_1189 ^= 0x0A3DD677L);
                        unsigned int result = 0;
                        result += l_1189;
                        result += l_1190;
                        atomic_add(&p_1467->g_special_values[95 * get_linear_group_id() + 56], result);
                    }
                    else
                    { /* block id: 782 */
                        (1 + 1);
                    }
                    (*p_1467->g_1205) = ((((0xD6A26CFA5FF7BA22L != p_1467->g_103[p_1467->g_102][p_1467->g_775]) == (p_10 ^ p_10)) ^ p_10) || (safe_lshift_func_int16_t_s_s((safe_add_func_int32_t_s_s(p_10, (1L | ((safe_lshift_func_uint16_t_u_u(((*l_1203) = (((l_1199[1] || ((safe_mul_func_int16_t_s_s(0x6E9FL, p_1467->g_102)) & 0L)) , l_1202) != 2UL)), 5)) < l_1204)))), 4)));
                }
                return p_1467->g_775;
            }
            if (p_10)
                break;
            return l_1202;
        }
        for (p_1467->g_218 = 3; (p_1467->g_218 >= 0); p_1467->g_218 -= 1)
        { /* block id: 795 */
            int32_t *l_1213 = &p_1467->g_793;
            int8_t l_1214 = (-5L);
            l_1216 &= (safe_add_func_uint8_t_u_u(0x5EL, (((+(p_10 , ((**p_1467->g_670) != (((safe_mul_func_int8_t_s_s((safe_add_func_int64_t_s_s(l_1202, ((((void*)0 != l_1212) > (l_1213 != l_1213)) , 0x0074A1626BC21B0CL))), l_1214)) != p_10) == l_1215)))) , 0xB8477260CD92F141L) & p_10)));
            for (p_1467->g_67 = 0; p_1467->g_67 < 4; p_1467->g_67 += 1)
            {
                for (p_1467->g_187 = 0; p_1467->g_187 < 8; p_1467->g_187 += 1)
                {
                    p_1467->g_900[p_1467->g_67][p_1467->g_187] = &p_1467->g_97;
                }
            }
        }
    }
    (*p_1467->g_1134) = p_10;
    return p_1467->g_41;
}


/* ------------------------------------------ */
/* 
 * reads : p_1467->g_793 p_1467->g_223 p_1467->g_97 p_1467->g_989 p_1467->g_990 p_1467->g_882 p_1467->g_1131 p_1467->g_166
 * writes: p_1467->g_793 p_1467->g_97 p_1467->g_691 p_1467->g_166
 */
int8_t  func_19(int32_t  p_20, uint64_t  p_21, uint32_t  p_22, struct S0 * p_1467)
{ /* block id: 688 */
    int64_t *l_1123 = &p_1467->g_102;
    int32_t l_1130 = 0x2D154169L;
    int8_t **l_1132 = (void*)0;
    for (p_1467->g_793 = 0; (p_1467->g_793 >= 0); p_1467->g_793 -= 1)
    { /* block id: 691 */
        int64_t l_1122 = 0x73DC56805095C5F4L;
        int32_t *l_1135 = &p_1467->g_691;
        (*p_1467->g_223) &= 7L;
        (*p_1467->g_1131) = ((*p_1467->g_223) &= (safe_unary_minus_func_uint16_t_u(((+(~(safe_add_func_int16_t_s_s(0x759FL, (safe_mod_func_uint16_t_u_u(((*p_1467->g_989) != (l_1122 , l_1123)), 3L)))))) ^ (0x32L != (((safe_lshift_func_uint16_t_u_s(((safe_add_func_int16_t_s_s(((l_1122 && 7L) ^ (safe_mul_func_int8_t_s_s(l_1122, 255UL))), 0L)) < p_21), 2)) < p_1467->g_882) <= l_1130))))));
        for (p_1467->g_166 = 0; (p_1467->g_166 <= 0); p_1467->g_166 += 1)
        { /* block id: 697 */
            int8_t **l_1133[9][5] = {{&p_1467->g_671,&p_1467->g_671,&p_1467->g_671,&p_1467->g_671,&p_1467->g_671},{&p_1467->g_671,&p_1467->g_671,&p_1467->g_671,&p_1467->g_671,&p_1467->g_671},{&p_1467->g_671,&p_1467->g_671,&p_1467->g_671,&p_1467->g_671,&p_1467->g_671},{&p_1467->g_671,&p_1467->g_671,&p_1467->g_671,&p_1467->g_671,&p_1467->g_671},{&p_1467->g_671,&p_1467->g_671,&p_1467->g_671,&p_1467->g_671,&p_1467->g_671},{&p_1467->g_671,&p_1467->g_671,&p_1467->g_671,&p_1467->g_671,&p_1467->g_671},{&p_1467->g_671,&p_1467->g_671,&p_1467->g_671,&p_1467->g_671,&p_1467->g_671},{&p_1467->g_671,&p_1467->g_671,&p_1467->g_671,&p_1467->g_671,&p_1467->g_671},{&p_1467->g_671,&p_1467->g_671,&p_1467->g_671,&p_1467->g_671,&p_1467->g_671}};
            int32_t **l_1136 = &p_1467->g_223;
            int i, j;
            (1 + 1);
        }
    }
    if ((atomic_inc(&p_1467->g_atomic_input[95 * get_linear_group_id() + 43]) == 2))
    { /* block id: 716 */
        uint32_t l_1137 = 0x13B34EBAL;
        uint64_t l_1140 = 0xDA7D90E521106C0FL;
        int8_t l_1141 = (-1L);
        uint32_t l_1142 = 4294967295UL;
        int32_t l_1179 = 0x5D0F7490L;
        int16_t l_1180 = 0x368AL;
        uint32_t l_1181 = 6UL;
        int64_t l_1184 = 0x791D5B79A41756E7L;
        int32_t l_1185 = (-1L);
        l_1137++;
        if ((l_1142 = (l_1141 = (l_1140 ^= (-5L)))))
        { /* block id: 721 */
            uint64_t l_1143 = 0x6B468EE833F68F38L;
            int64_t l_1144 = 0x75A549E390DCA9F5L;
            uint32_t l_1145 = 0x545FB51AL;
            int8_t l_1146 = 0x18L;
            uint32_t l_1147[4][1];
            int i, j;
            for (i = 0; i < 4; i++)
            {
                for (j = 0; j < 1; j++)
                    l_1147[i][j] = 0xCD7B8E67L;
            }
            l_1143 = (-5L);
            l_1147[2][0] = (l_1146 ^= (l_1145 = l_1144));
        }
        else
        { /* block id: 726 */
            int32_t l_1149[4] = {0x0CB264BCL,0x0CB264BCL,0x0CB264BCL,0x0CB264BCL};
            int32_t *l_1148 = &l_1149[1];
            int32_t *l_1150 = &l_1149[1];
            int32_t *l_1151[8] = {&l_1149[3],&l_1149[3],&l_1149[3],&l_1149[3],&l_1149[3],&l_1149[3],&l_1149[3],&l_1149[3]};
            uint64_t l_1177 = 0x6FC2D4B21E0D05F4L;
            uint64_t l_1178 = 3UL;
            int i;
            l_1151[0] = (l_1150 = (l_1148 = (void*)0));
            for (l_1149[3] = 19; (l_1149[3] == 11); l_1149[3]--)
            { /* block id: 732 */
                int32_t l_1154 = 0x778FCBA9L;
                int32_t l_1169 = (-1L);
                int32_t l_1170 = 0x3EC75FBDL;
                int32_t l_1171[5][10][5] = {{{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L}},{{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L}},{{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L}},{{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L}},{{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L},{(-1L),(-1L),(-1L),0x75C92F9AL,4L}}};
                uint16_t l_1172[4];
                uint16_t l_1175 = 0x6379L;
                uint8_t l_1176 = 6UL;
                int i, j, k;
                for (i = 0; i < 4; i++)
                    l_1172[i] = 0xA207L;
                for (l_1154 = 0; (l_1154 <= 0); l_1154 += 1)
                { /* block id: 735 */
                    int8_t l_1155[2];
                    int32_t l_1165 = 0x65301BD8L;
                    int16_t l_1166 = 0x5D99L;
                    uint16_t l_1167[3][10] = {{0UL,1UL,0UL,0UL,1UL,0UL,0UL,1UL,0UL,0UL},{0UL,1UL,0UL,0UL,1UL,0UL,0UL,1UL,0UL,0UL},{0UL,1UL,0UL,0UL,1UL,0UL,0UL,1UL,0UL,0UL}};
                    uint16_t l_1168[10] = {65534UL,65535UL,0xA740L,65535UL,65534UL,65534UL,65535UL,0xA740L,65535UL,65534UL};
                    int i, j;
                    for (i = 0; i < 2; i++)
                        l_1155[i] = (-5L);
                    if (l_1155[0])
                    { /* block id: 736 */
                        uint8_t l_1156 = 0x72L;
                        uint32_t l_1157 = 8UL;
                        uint32_t l_1158 = 4294967290UL;
                        uint32_t l_1159[3][3][7] = {{{0UL,6UL,0UL,0UL,6UL,0UL,0UL},{0UL,6UL,0UL,0UL,6UL,0UL,0UL},{0UL,6UL,0UL,0UL,6UL,0UL,0UL}},{{0UL,6UL,0UL,0UL,6UL,0UL,0UL},{0UL,6UL,0UL,0UL,6UL,0UL,0UL},{0UL,6UL,0UL,0UL,6UL,0UL,0UL}},{{0UL,6UL,0UL,0UL,6UL,0UL,0UL},{0UL,6UL,0UL,0UL,6UL,0UL,0UL},{0UL,6UL,0UL,0UL,6UL,0UL,0UL}}};
                        int i, j, k;
                        l_1157 = l_1156;
                        l_1159[2][2][5] ^= l_1158;
                    }
                    else
                    { /* block id: 739 */
                        int32_t l_1161 = 0L;
                        int32_t *l_1160[8] = {&l_1161,&l_1161,&l_1161,&l_1161,&l_1161,&l_1161,&l_1161,&l_1161};
                        int64_t l_1162 = 0x3F1DA29D8293788DL;
                        uint16_t l_1163 = 65528UL;
                        uint8_t l_1164 = 0x06L;
                        int i;
                        l_1160[1] = (void*)0;
                        l_1162 = 3L;
                        l_1164 &= l_1163;
                    }
                    l_1165 = (l_1166 &= l_1165);
                    l_1168[7] ^= l_1167[1][5];
                }
                l_1169 = l_1169;
                --l_1172[3];
                l_1176 = (l_1175 , (-1L));
            }
            l_1178 |= (l_1177 = 5L);
        }
        l_1181++;
        l_1185 = l_1184;
        unsigned int result = 0;
        result += l_1137;
        result += l_1140;
        result += l_1141;
        result += l_1142;
        result += l_1179;
        result += l_1180;
        result += l_1181;
        result += l_1184;
        result += l_1185;
        atomic_add(&p_1467->g_special_values[95 * get_linear_group_id() + 43], result);
    }
    else
    { /* block id: 757 */
        (1 + 1);
    }
    return l_1130;
}


/* ------------------------------------------ */
/* 
 * reads : p_1467->g_223 p_1467->g_97
 * writes: p_1467->g_97
 */
int16_t  func_25(int64_t  p_26, int8_t  p_27, int64_t  p_28, int64_t  p_29, struct S0 * p_1467)
{ /* block id: 683 */
    int16_t l_1114 = 0x4484L;
    (*p_1467->g_223) |= 0x16786CDBL;
    return l_1114;
}


/* ------------------------------------------ */
/* 
 * reads : p_1467->g_41 p_1467->g_12 p_1467->g_61 p_1467->g_82 p_1467->g_67 p_1467->g_96 p_1467->g_103 p_1467->g_86 p_1467->g_120 p_1467->g_142 p_1467->g_154 p_1467->g_97 p_1467->g_166 p_1467->g_102 p_1467->g_160 p_1467->g_187 p_1467->g_222 p_1467->g_227 p_1467->g_215 p_1467->g_465 p_1467->g_466 p_1467->g_532 p_1467->g_146 p_1467->g_223 p_1467->g_631 p_1467->g_218 p_1467->g_650 p_1467->g_473 p_1467->g_664 p_1467->g_665 p_1467->g_670 p_1467->g_691 p_1467->g_741 p_1467->g_742 p_1467->g_802 p_1467->g_671 p_1467->g_132 p_1467->g_775 p_1467->g_904 p_1467->g_1022
 * writes: p_1467->g_41 p_1467->g_61 p_1467->g_82 p_1467->g_97 p_1467->g_103 p_1467->g_132 p_1467->g_102 p_1467->g_142 p_1467->g_146 p_1467->g_86 p_1467->g_154 p_1467->g_160 p_1467->g_166 p_1467->g_223 p_1467->g_227 p_1467->g_67 p_1467->g_465 p_1467->g_473 p_1467->g_532 p_1467->g_664 p_1467->g_670 p_1467->g_691 p_1467->g_218 p_1467->g_793 p_1467->g_802 p_1467->g_632 p_1467->g_882 p_1467->g_775
 */
int16_t  func_32(uint16_t  p_33, int32_t  p_34, struct S0 * p_1467)
{ /* block id: 5 */
    uint8_t *l_40 = &p_1467->g_41;
    int32_t l_55 = (-4L);
    int32_t l_58 = 0x6DF66798L;
    uint32_t *l_59 = (void*)0;
    uint32_t *l_60 = &p_1467->g_61;
    uint8_t *l_66 = &p_1467->g_67;
    uint8_t **l_65 = &l_66;
    int32_t *l_903 = (void*)0;
    uint32_t **l_911 = (void*)0;
    int8_t ***l_913 = &p_1467->g_670;
    int8_t ****l_912 = &l_913;
    int8_t ***l_914 = &p_1467->g_670;
    int64_t *l_992[10][5] = {{&p_1467->g_102,&p_1467->g_102,&p_1467->g_102,&p_1467->g_102,&p_1467->g_102},{&p_1467->g_102,&p_1467->g_102,&p_1467->g_102,&p_1467->g_102,&p_1467->g_102},{&p_1467->g_102,&p_1467->g_102,&p_1467->g_102,&p_1467->g_102,&p_1467->g_102},{&p_1467->g_102,&p_1467->g_102,&p_1467->g_102,&p_1467->g_102,&p_1467->g_102},{&p_1467->g_102,&p_1467->g_102,&p_1467->g_102,&p_1467->g_102,&p_1467->g_102},{&p_1467->g_102,&p_1467->g_102,&p_1467->g_102,&p_1467->g_102,&p_1467->g_102},{&p_1467->g_102,&p_1467->g_102,&p_1467->g_102,&p_1467->g_102,&p_1467->g_102},{&p_1467->g_102,&p_1467->g_102,&p_1467->g_102,&p_1467->g_102,&p_1467->g_102},{&p_1467->g_102,&p_1467->g_102,&p_1467->g_102,&p_1467->g_102,&p_1467->g_102},{&p_1467->g_102,&p_1467->g_102,&p_1467->g_102,&p_1467->g_102,&p_1467->g_102}};
    int64_t **l_991 = &l_992[4][2];
    uint16_t l_996 = 0UL;
    uint8_t *****l_1011 = &p_1467->g_741;
    uint8_t l_1020[9];
    int32_t l_1046 = 0L;
    int32_t l_1047 = 0L;
    int32_t l_1048 = 0x075635E4L;
    int32_t l_1049 = 0x73E20718L;
    int32_t l_1054 = 0x79DDED29L;
    int32_t l_1056 = 0x483E4B5DL;
    int32_t l_1057 = 3L;
    int32_t l_1058 = 0L;
    uint8_t l_1059[8][6] = {{0x39L,0x39L,0x90L,0x5CL,0UL,0x5CL},{0x39L,0x39L,0x90L,0x5CL,0UL,0x5CL},{0x39L,0x39L,0x90L,0x5CL,0UL,0x5CL},{0x39L,0x39L,0x90L,0x5CL,0UL,0x5CL},{0x39L,0x39L,0x90L,0x5CL,0UL,0x5CL},{0x39L,0x39L,0x90L,0x5CL,0UL,0x5CL},{0x39L,0x39L,0x90L,0x5CL,0UL,0x5CL},{0x39L,0x39L,0x90L,0x5CL,0UL,0x5CL}};
    int32_t l_1088[4];
    int32_t **l_1113 = &p_1467->g_223;
    int i, j;
    for (i = 0; i < 9; i++)
        l_1020[i] = 252UL;
    for (i = 0; i < 4; i++)
        l_1088[i] = 0x2BCD09E3L;
    (*p_1467->g_904) = ((safe_mul_func_uint16_t_u_u(func_38(((((*l_40)--) >= func_44(func_48((((l_40 == (void*)0) ^ func_51(p_1467->g_12[2][1][2], l_55, (safe_add_func_uint32_t_u_u((--(*l_60)), l_55)), p_1467)) | (p_1467->g_12[2][1][1] | 4294967295UL)), ((*l_65) = l_40), p_1467), &p_1467->g_67, l_40, p_1467)) , p_33), p_1467), p_1467->g_775)) <= p_1467->g_12[0][0][2]);
    (*p_1467->g_223) = (0x48L ^ (((safe_rshift_func_int16_t_s_s(((((safe_mul_func_int16_t_s_s((safe_lshift_func_int8_t_s_u(((249UL == (**p_1467->g_670)) || 65535UL), p_33)), l_58)) >= ((l_911 = &l_60) == &l_59)) , ((*l_912) = &p_1467->g_670)) == l_914), p_33)) , p_33) && p_33));
    for (p_1467->g_775 = 0; (p_1467->g_775 == (-4)); p_1467->g_775 = safe_sub_func_uint16_t_u_u(p_1467->g_775, 8))
    { /* block id: 605 */
        uint8_t **l_985 = &l_66;
        int32_t l_988 = (-10L);
        int64_t **l_994 = (void*)0;
        uint32_t ***l_1040[3][4] = {{&p_1467->g_631,&l_911,&p_1467->g_631,&p_1467->g_631},{&p_1467->g_631,&l_911,&p_1467->g_631,&p_1467->g_631},{&p_1467->g_631,&l_911,&p_1467->g_631,&p_1467->g_631}};
        int32_t l_1050 = (-9L);
        int32_t l_1051 = (-3L);
        int32_t l_1052 = 0x641EB6D5L;
        int32_t l_1053 = 0x47898595L;
        int32_t l_1055[7];
        int32_t l_1089 = (-1L);
        int i, j;
        for (i = 0; i < 7; i++)
            l_1055[i] = 0L;
        (1 + 1);
    }
    (*l_1113) = (*p_1467->g_1022);
    return p_33;
}


/* ------------------------------------------ */
/* 
 * reads : p_1467->g_154 p_1467->g_82 p_1467->g_96 p_1467->g_97 p_1467->g_691 p_1467->g_67 p_1467->g_146 p_1467->g_103 p_1467->g_466 p_1467->g_223 p_1467->g_41 p_1467->g_222 p_1467->g_741 p_1467->g_742 p_1467->g_802 p_1467->g_160 p_1467->g_187 p_1467->g_671 p_1467->g_132 p_1467->g_465 p_1467->g_473
 * writes: p_1467->g_154 p_1467->g_82 p_1467->g_691 p_1467->g_67 p_1467->g_146 p_1467->g_97 p_1467->g_41 p_1467->g_218 p_1467->g_793 p_1467->g_160 p_1467->g_223 p_1467->g_802 p_1467->g_632 p_1467->g_142 p_1467->g_882
 */
uint16_t  func_38(uint32_t  p_39, struct S0 * p_1467)
{ /* block id: 467 */
    uint8_t l_702 = 0UL;
    int32_t **l_709 = &p_1467->g_223;
    int32_t l_745 = 1L;
    uint8_t *****l_751 = &p_1467->g_741;
    int32_t *l_799 = &p_1467->g_97;
    int32_t *l_800 = &p_1467->g_691;
    int32_t *l_801[4] = {&p_1467->g_97,&p_1467->g_97,&p_1467->g_97,&p_1467->g_97};
    uint32_t ***l_815 = &p_1467->g_631;
    uint8_t **l_892 = &p_1467->g_466;
    int i;
    for (p_1467->g_154 = (-20); (p_1467->g_154 == 12); p_1467->g_154 = safe_add_func_uint16_t_u_u(p_1467->g_154, 1))
    { /* block id: 470 */
        uint8_t **l_712 = &p_1467->g_466;
        int32_t l_740 = (-7L);
        uint8_t ****l_744 = (void*)0;
        uint32_t **l_796 = &p_1467->g_632[4][0];
        for (p_1467->g_82 = 0; (p_1467->g_82 <= 1); p_1467->g_82 += 1)
        { /* block id: 473 */
            int32_t *l_690 = &p_1467->g_691;
            int32_t l_750 = 0x13BE806AL;
            (*l_690) ^= (*p_1467->g_96);
            for (p_1467->g_67 = 0; (p_1467->g_67 <= 1); p_1467->g_67 += 1)
            { /* block id: 477 */
                uint8_t *l_692 = &p_1467->g_41;
                int32_t l_701 = (-1L);
                int32_t ***l_706 = (void*)0;
                int32_t **l_708 = &l_690;
                int32_t ***l_707[5];
                uint8_t ***l_749 = (void*)0;
                uint8_t *****l_752 = &l_744;
                int i;
                for (i = 0; i < 5; i++)
                    l_707[i] = &l_708;
                (1 + 1);
            }
        }
        for (p_1467->g_146 = (-28); (p_1467->g_146 == (-20)); p_1467->g_146 = safe_add_func_uint16_t_u_u(p_1467->g_146, 7))
        { /* block id: 530 */
            int8_t **l_780 = &p_1467->g_671;
            int32_t l_787[6][4][9] = {{{0L,1L,0x1A1922F8L,1L,0L,0x4ACA3E0DL,4L,(-1L),0L},{0L,1L,0x1A1922F8L,1L,0L,0x4ACA3E0DL,4L,(-1L),0L},{0L,1L,0x1A1922F8L,1L,0L,0x4ACA3E0DL,4L,(-1L),0L},{0L,1L,0x1A1922F8L,1L,0L,0x4ACA3E0DL,4L,(-1L),0L}},{{0L,1L,0x1A1922F8L,1L,0L,0x4ACA3E0DL,4L,(-1L),0L},{0L,1L,0x1A1922F8L,1L,0L,0x4ACA3E0DL,4L,(-1L),0L},{0L,1L,0x1A1922F8L,1L,0L,0x4ACA3E0DL,4L,(-1L),0L},{0L,1L,0x1A1922F8L,1L,0L,0x4ACA3E0DL,4L,(-1L),0L}},{{0L,1L,0x1A1922F8L,1L,0L,0x4ACA3E0DL,4L,(-1L),0L},{0L,1L,0x1A1922F8L,1L,0L,0x4ACA3E0DL,4L,(-1L),0L},{0L,1L,0x1A1922F8L,1L,0L,0x4ACA3E0DL,4L,(-1L),0L},{0L,1L,0x1A1922F8L,1L,0L,0x4ACA3E0DL,4L,(-1L),0L}},{{0L,1L,0x1A1922F8L,1L,0L,0x4ACA3E0DL,4L,(-1L),0L},{0L,1L,0x1A1922F8L,1L,0L,0x4ACA3E0DL,4L,(-1L),0L},{0L,1L,0x1A1922F8L,1L,0L,0x4ACA3E0DL,4L,(-1L),0L},{0L,1L,0x1A1922F8L,1L,0L,0x4ACA3E0DL,4L,(-1L),0L}},{{0L,1L,0x1A1922F8L,1L,0L,0x4ACA3E0DL,4L,(-1L),0L},{0L,1L,0x1A1922F8L,1L,0L,0x4ACA3E0DL,4L,(-1L),0L},{0L,1L,0x1A1922F8L,1L,0L,0x4ACA3E0DL,4L,(-1L),0L},{0L,1L,0x1A1922F8L,1L,0L,0x4ACA3E0DL,4L,(-1L),0L}},{{0L,1L,0x1A1922F8L,1L,0L,0x4ACA3E0DL,4L,(-1L),0L},{0L,1L,0x1A1922F8L,1L,0L,0x4ACA3E0DL,4L,(-1L),0L},{0L,1L,0x1A1922F8L,1L,0L,0x4ACA3E0DL,4L,(-1L),0L},{0L,1L,0x1A1922F8L,1L,0L,0x4ACA3E0DL,4L,(-1L),0L}}};
            int16_t *l_791 = &p_1467->g_146;
            uint8_t l_797 = 248UL;
            int i, j, k;
            (*p_1467->g_223) = ((8UL || (l_780 != (void*)0)) , (safe_add_func_uint64_t_u_u(((safe_rshift_func_uint16_t_u_s(0x4E70L, (((safe_lshift_func_int8_t_s_s(0x45L, (((l_740 ^ (l_740 & (((l_787[4][3][4] , p_39) | p_1467->g_103[0][3]) , (*p_1467->g_466)))) && l_740) & l_740))) , &p_1467->g_741) == (void*)0))) != (*p_1467->g_223)), p_39)));
            for (p_1467->g_41 = 8; (p_1467->g_41 >= 37); p_1467->g_41++)
            { /* block id: 534 */
                int16_t *l_790 = &p_1467->g_218;
                int32_t *l_792 = &p_1467->g_793;
                uint16_t *l_798[7][2] = {{&p_1467->g_160,&p_1467->g_160},{&p_1467->g_160,&p_1467->g_160},{&p_1467->g_160,&p_1467->g_160},{&p_1467->g_160,&p_1467->g_160},{&p_1467->g_160,&p_1467->g_160},{&p_1467->g_160,&p_1467->g_160},{&p_1467->g_160,&p_1467->g_160}};
                int i, j;
                if ((**p_1467->g_222))
                    break;
                (*p_1467->g_223) ^= (((*l_790) = p_39) != (p_1467->g_160 = ((((((*l_792) = (l_791 == &p_1467->g_142)) , (l_740 < (&p_1467->g_632[1][0] == ((safe_rshift_func_uint8_t_u_s(p_39, ((void*)0 != (*p_1467->g_741)))) , l_796)))) ^ 0x81D3AE23L) || l_797) < 18446744073709551614UL)));
            }
        }
        if (l_740)
            break;
        (*p_1467->g_222) = (*l_709);
    }
    (**l_709) &= p_39;
    ++p_1467->g_802;
    for (p_1467->g_160 = 8; (p_1467->g_160 > 16); ++p_1467->g_160)
    { /* block id: 549 */
        uint64_t l_809 = 1UL;
        uint32_t l_841 = 0UL;
        int32_t l_873 = (-6L);
        for (p_1467->g_154 = 0; (p_1467->g_154 <= 18); p_1467->g_154++)
        { /* block id: 552 */
            uint32_t l_818 = 6UL;
            uint8_t ***l_823[10];
            int32_t *l_851 = &p_1467->g_97;
            int i;
            for (i = 0; i < 10; i++)
                l_823[i] = &p_1467->g_465;
            if (l_809)
            { /* block id: 553 */
                uint32_t *l_848 = &l_841;
                for (l_702 = (-16); (l_702 < 57); l_702 = safe_add_func_uint8_t_u_u(l_702, 1))
                { /* block id: 556 */
                    uint32_t l_814 = 4UL;
                    int32_t l_824[9] = {0x3AEE248FL,0x3AEE248FL,0x3AEE248FL,0x3AEE248FL,0x3AEE248FL,0x3AEE248FL,0x3AEE248FL,0x3AEE248FL,0x3AEE248FL};
                    int i;
                    (*l_799) = ((*l_800) |= ((!(safe_sub_func_int64_t_s_s(((0x6BE5F335L && (&p_1467->g_510 != (l_814 , l_815))) != ((safe_sub_func_uint16_t_u_u(p_1467->g_187, ((0xA11DB311L <= l_818) | (9L || (safe_mul_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u((((((l_823[0] != (*p_1467->g_741)) >= 0x329DL) ^ p_39) & p_1467->g_160) || l_824[4]), p_39)), (*p_1467->g_671))))))) > l_824[4])), 0x6217F3B301F47801L))) < l_814));
                    return l_809;
                }
                if ((atomic_inc(&p_1467->l_atomic_input[36]) == 6))
                { /* block id: 562 */
                    int32_t l_826 = (-2L);
                    int32_t *l_825 = &l_826;
                    int32_t *l_827[1][9][8] = {{{&l_826,(void*)0,&l_826,&l_826,&l_826,&l_826,&l_826,(void*)0},{&l_826,(void*)0,&l_826,&l_826,&l_826,&l_826,&l_826,(void*)0},{&l_826,(void*)0,&l_826,&l_826,&l_826,&l_826,&l_826,(void*)0},{&l_826,(void*)0,&l_826,&l_826,&l_826,&l_826,&l_826,(void*)0},{&l_826,(void*)0,&l_826,&l_826,&l_826,&l_826,&l_826,(void*)0},{&l_826,(void*)0,&l_826,&l_826,&l_826,&l_826,&l_826,(void*)0},{&l_826,(void*)0,&l_826,&l_826,&l_826,&l_826,&l_826,(void*)0},{&l_826,(void*)0,&l_826,&l_826,&l_826,&l_826,&l_826,(void*)0},{&l_826,(void*)0,&l_826,&l_826,&l_826,&l_826,&l_826,(void*)0}}};
                    int32_t l_840 = 0x1DC4ACBDL;
                    int i, j, k;
                    l_827[0][6][5] = l_825;
                    for (l_826 = 20; (l_826 < 20); ++l_826)
                    { /* block id: 566 */
                        uint32_t l_830 = 0x634BB11AL;
                        int32_t l_831 = 0x4111F9DDL;
                        int32_t l_832 = 0x485A0E9CL;
                        int8_t l_835[10][8] = {{0L,(-3L),0L,0x32L,0x4BL,(-1L),(-9L),0x3CL},{0L,(-3L),0L,0x32L,0x4BL,(-1L),(-9L),0x3CL},{0L,(-3L),0L,0x32L,0x4BL,(-1L),(-9L),0x3CL},{0L,(-3L),0L,0x32L,0x4BL,(-1L),(-9L),0x3CL},{0L,(-3L),0L,0x32L,0x4BL,(-1L),(-9L),0x3CL},{0L,(-3L),0L,0x32L,0x4BL,(-1L),(-9L),0x3CL},{0L,(-3L),0L,0x32L,0x4BL,(-1L),(-9L),0x3CL},{0L,(-3L),0L,0x32L,0x4BL,(-1L),(-9L),0x3CL},{0L,(-3L),0L,0x32L,0x4BL,(-1L),(-9L),0x3CL},{0L,(-3L),0L,0x32L,0x4BL,(-1L),(-9L),0x3CL}};
                        int8_t *l_834 = &l_835[9][0];
                        int8_t **l_833 = &l_834;
                        int8_t **l_836 = (void*)0;
                        uint32_t l_837 = 0x6D412E9CL;
                        int i, j;
                        l_831 &= l_830;
                        l_832 = l_832;
                        l_836 = (l_833 = (void*)0);
                        --l_837;
                    }
                    for (l_826 = 0; l_826 < 9; l_826 += 1)
                    {
                        for (l_840 = 0; l_840 < 1; l_840 += 1)
                        {
                            p_1467->g_632[l_826][l_840] = &l_841;
                        }
                    }
                    unsigned int result = 0;
                    result += l_826;
                    result += l_840;
                    atomic_add(&p_1467->l_special_values[36], result);
                }
                else
                { /* block id: 574 */
                    (1 + 1);
                }
                (*p_1467->g_223) = ((((((((safe_add_func_int64_t_s_s(p_1467->g_146, 8UL)) , ((l_809 == ((p_1467->g_187 || (!0x35BDL)) || ((((*l_848) = FAKE_DIVERGE(p_1467->local_1_offset, get_local_id(1), 10)) < (*p_1467->g_96)) & (safe_mod_func_uint16_t_u_u(0x1FE8L, (-1L)))))) && l_818)) >= p_39) != 0x5AL) , 0x4A94L) && 0L) & (-6L)) & p_39);
                (*l_709) = l_851;
            }
            else
            { /* block id: 580 */
                int32_t *l_852 = &p_1467->g_97;
                (*l_709) = l_852;
                if (p_39)
                    continue;
            }
        }
        for (p_1467->g_154 = 1; (p_1467->g_154 >= 48); p_1467->g_154 = safe_add_func_int16_t_s_s(p_1467->g_154, 6))
        { /* block id: 587 */
            uint64_t l_874[7];
            uint32_t ***l_877 = &p_1467->g_631;
            int16_t *l_878 = &p_1467->g_142;
            int32_t l_879 = 0x7D16B89BL;
            int32_t *l_880 = (void*)0;
            int32_t *l_881 = &p_1467->g_882;
            uint64_t *l_883 = &p_1467->g_82;
            uint8_t **l_893[3][2][2] = {{{&p_1467->g_466,&p_1467->g_466},{&p_1467->g_466,&p_1467->g_466}},{{&p_1467->g_466,&p_1467->g_466},{&p_1467->g_466,&p_1467->g_466}},{{&p_1467->g_466,&p_1467->g_466},{&p_1467->g_466,&p_1467->g_466}}};
            int i, j, k;
            for (i = 0; i < 7; i++)
                l_874[i] = 0UL;
            l_873 = (safe_lshift_func_uint16_t_u_u(((safe_add_func_uint32_t_u_u((safe_div_func_uint8_t_u_u(((p_39 ^ (safe_lshift_func_uint16_t_u_u((&p_1467->g_665 != (void*)0), 0))) <= (safe_mul_func_int16_t_s_s(l_809, (safe_mul_func_uint16_t_u_u((p_39 < l_809), (((*l_883) = (((*l_881) = ((safe_mul_func_uint8_t_u_u(((((p_39 >= (((safe_mod_func_int16_t_s_s((!((*l_878) = (((++l_874[2]) > (l_877 != (void*)0)) != 0x5509F463L))), l_809)) , (void*)0) == &p_1467->g_96)) <= 1L) != 0x6810L) ^ l_879), (*p_1467->g_671))) >= 0x0E55760AL)) , p_39)) ^ (-8L))))))), (**p_1467->g_465))), 0xB132EFCCL)) <= 255UL), 11));
            (*l_799) = ((**p_1467->g_222) >= (l_879 = (((*p_1467->g_466) = ((safe_mul_func_int16_t_s_s(p_1467->g_82, p_39)) < (safe_rshift_func_int8_t_s_u((safe_div_func_uint32_t_u_u((l_892 != l_893[0][0][0]), (safe_mod_func_int32_t_s_s((safe_mul_func_int8_t_s_s((safe_lshift_func_int8_t_s_s((((((*p_1467->g_473) == ((0xA891B544L <= p_39) , (*p_1467->g_473))) ^ l_841) > 0x4D08L) | 18446744073709551615UL), 5)), (-4L))), l_873)))), 3)))) != p_39)));
        }
    }
    return p_39;
}


/* ------------------------------------------ */
/* 
 * reads : p_1467->g_215 p_1467->g_61 p_1467->g_67 p_1467->g_166 p_1467->g_227 p_1467->g_465 p_1467->g_466 p_1467->g_160 p_1467->g_102 p_1467->g_96 p_1467->g_97 p_1467->g_532 p_1467->g_146 p_1467->g_222 p_1467->g_223 p_1467->g_631 p_1467->g_218 p_1467->g_154 p_1467->g_650 p_1467->g_473 p_1467->g_664 p_1467->g_665 p_1467->g_670
 * writes: p_1467->g_61 p_1467->g_67 p_1467->g_166 p_1467->g_227 p_1467->g_132 p_1467->g_465 p_1467->g_473 p_1467->g_532 p_1467->g_160 p_1467->g_97 p_1467->g_146 p_1467->g_86 p_1467->g_154 p_1467->g_664 p_1467->g_670 p_1467->g_223
 */
int8_t  func_44(uint8_t * p_45, uint8_t * p_46, uint8_t * p_47, struct S0 * p_1467)
{ /* block id: 83 */
    int64_t l_451 = (-6L);
    int32_t l_452[1][10][8] = {{{4L,0L,0x41E3E0ACL,0x068C3DF0L,0x2A72FD7FL,7L,7L,0x2A72FD7FL},{4L,0L,0x41E3E0ACL,0x068C3DF0L,0x2A72FD7FL,7L,7L,0x2A72FD7FL},{4L,0L,0x41E3E0ACL,0x068C3DF0L,0x2A72FD7FL,7L,7L,0x2A72FD7FL},{4L,0L,0x41E3E0ACL,0x068C3DF0L,0x2A72FD7FL,7L,7L,0x2A72FD7FL},{4L,0L,0x41E3E0ACL,0x068C3DF0L,0x2A72FD7FL,7L,7L,0x2A72FD7FL},{4L,0L,0x41E3E0ACL,0x068C3DF0L,0x2A72FD7FL,7L,7L,0x2A72FD7FL},{4L,0L,0x41E3E0ACL,0x068C3DF0L,0x2A72FD7FL,7L,7L,0x2A72FD7FL},{4L,0L,0x41E3E0ACL,0x068C3DF0L,0x2A72FD7FL,7L,7L,0x2A72FD7FL},{4L,0L,0x41E3E0ACL,0x068C3DF0L,0x2A72FD7FL,7L,7L,0x2A72FD7FL},{4L,0L,0x41E3E0ACL,0x068C3DF0L,0x2A72FD7FL,7L,7L,0x2A72FD7FL}}};
    uint32_t l_482 = 4UL;
    uint64_t *l_511 = &p_1467->g_86;
    int32_t l_516 = (-8L);
    int8_t l_518 = 8L;
    int64_t l_529[1][2][4] = {{{0x118F731ABCCE2CAFL,0x6CDC36DC3161FD81L,0x118F731ABCCE2CAFL,0x118F731ABCCE2CAFL},{0x118F731ABCCE2CAFL,0x6CDC36DC3161FD81L,0x118F731ABCCE2CAFL,0x118F731ABCCE2CAFL}}};
    int64_t *l_546 = &l_529[0][1][2];
    int32_t **l_547 = &p_1467->g_223;
    uint32_t **l_633 = &p_1467->g_632[4][0];
    int16_t *l_651 = (void*)0;
    int i, j, k;
    if ((atomic_inc(&p_1467->l_atomic_input[92]) == 5))
    { /* block id: 85 */
        uint32_t l_230 = 4294967287UL;
        uint16_t l_231[2][5][5] = {{{0x607FL,0x607FL,1UL,1UL,0UL},{0x607FL,0x607FL,1UL,1UL,0UL},{0x607FL,0x607FL,1UL,1UL,0UL},{0x607FL,0x607FL,1UL,1UL,0UL},{0x607FL,0x607FL,1UL,1UL,0UL}},{{0x607FL,0x607FL,1UL,1UL,0UL},{0x607FL,0x607FL,1UL,1UL,0UL},{0x607FL,0x607FL,1UL,1UL,0UL},{0x607FL,0x607FL,1UL,1UL,0UL},{0x607FL,0x607FL,1UL,1UL,0UL}}};
        uint32_t l_363[6] = {4UL,4UL,4UL,4UL,4UL,4UL};
        int16_t l_364 = (-4L);
        int64_t l_365 = 0x2EA31AFB0EF29236L;
        uint64_t l_366 = 1UL;
        int16_t l_367 = 1L;
        int32_t l_369 = 0x053F50A1L;
        int32_t *l_368 = &l_369;
        int32_t *l_370 = &l_369;
        int i, j, k;
        l_231[1][2][3] = l_230;
        for (l_230 = 0; (l_230 <= 1); l_230 += 1)
        { /* block id: 89 */
            uint64_t l_232 = 1UL;
            uint32_t l_233 = 0x8DF3BDC2L;
            uint32_t l_234 = 1UL;
            int16_t l_235 = (-1L);
            int64_t l_319 = (-1L);
            int64_t l_320[5][6] = {{0x0EF4468B27A03E26L,0L,0x0EF4468B27A03E26L,0x0EF4468B27A03E26L,0L,0x0EF4468B27A03E26L},{0x0EF4468B27A03E26L,0L,0x0EF4468B27A03E26L,0x0EF4468B27A03E26L,0L,0x0EF4468B27A03E26L},{0x0EF4468B27A03E26L,0L,0x0EF4468B27A03E26L,0x0EF4468B27A03E26L,0L,0x0EF4468B27A03E26L},{0x0EF4468B27A03E26L,0L,0x0EF4468B27A03E26L,0x0EF4468B27A03E26L,0L,0x0EF4468B27A03E26L},{0x0EF4468B27A03E26L,0L,0x0EF4468B27A03E26L,0x0EF4468B27A03E26L,0L,0x0EF4468B27A03E26L}};
            int32_t l_321 = 0x4186D41BL;
            int8_t l_322 = (-8L);
            int64_t l_323 = 0x358B0D0B993E7730L;
            uint8_t l_324 = 254UL;
            int32_t l_328 = (-1L);
            int32_t *l_327 = &l_328;
            int32_t *l_329 = &l_328;
            int i, j;
            if ((l_235 |= (l_234 = (l_232 , (l_233 , 0x64D5B5BBL)))))
            { /* block id: 92 */
                int32_t l_236[1][8] = {{0L,0x19AB1BEFL,0L,0L,0x19AB1BEFL,0L,0L,0x19AB1BEFL}};
                int8_t l_279 = 0L;
                uint64_t l_280 = 1UL;
                uint64_t l_281 = 0x4F228F6ABD5F4E80L;
                int32_t *l_282 = &l_236[0][5];
                int32_t *l_283 = &l_236[0][5];
                int i, j;
                for (l_236[0][5] = 1; (l_236[0][5] >= 0); l_236[0][5] -= 1)
                { /* block id: 95 */
                    uint32_t l_237 = 6UL;
                    int32_t l_239 = (-1L);
                    int32_t *l_238[5];
                    int32_t *l_240 = &l_239;
                    int i;
                    for (i = 0; i < 5; i++)
                        l_238[i] = &l_239;
                    l_240 = ((l_237 , 0UL) , l_238[2]);
                    for (l_239 = 1; (l_239 >= 0); l_239 -= 1)
                    { /* block id: 99 */
                        int8_t l_241 = (-7L);
                        int32_t l_243[6][9] = {{0x70C94240L,0L,(-1L),1L,(-1L),0L,0x70C94240L,3L,0x37CE5ED3L},{0x70C94240L,0L,(-1L),1L,(-1L),0L,0x70C94240L,3L,0x37CE5ED3L},{0x70C94240L,0L,(-1L),1L,(-1L),0L,0x70C94240L,3L,0x37CE5ED3L},{0x70C94240L,0L,(-1L),1L,(-1L),0L,0x70C94240L,3L,0x37CE5ED3L},{0x70C94240L,0L,(-1L),1L,(-1L),0L,0x70C94240L,3L,0x37CE5ED3L},{0x70C94240L,0L,(-1L),1L,(-1L),0L,0x70C94240L,3L,0x37CE5ED3L}};
                        int32_t *l_242[5][2][2] = {{{&l_243[3][1],&l_243[3][1]},{&l_243[3][1],&l_243[3][1]}},{{&l_243[3][1],&l_243[3][1]},{&l_243[3][1],&l_243[3][1]}},{{&l_243[3][1],&l_243[3][1]},{&l_243[3][1],&l_243[3][1]}},{{&l_243[3][1],&l_243[3][1]},{&l_243[3][1],&l_243[3][1]}},{{&l_243[3][1],&l_243[3][1]},{&l_243[3][1],&l_243[3][1]}}};
                        int i, j, k;
                        l_241 = 0x26834DD0L;
                        l_242[1][0][1] = (void*)0;
                    }
                    for (l_239 = 1; (l_239 >= 0); l_239 -= 1)
                    { /* block id: 105 */
                        int64_t l_244 = 0L;
                        int16_t l_245 = 5L;
                        int32_t l_247 = 0x3A939D3EL;
                        int32_t *l_246 = &l_247;
                        l_245 = (l_244 = 0x6B3610BEL);
                        l_238[1] = (void*)0;
                        l_240 = (l_238[2] = l_246);
                        l_240 = (void*)0;
                    }
                }
                for (l_236[0][5] = 0; (l_236[0][5] <= 1); l_236[0][5] += 1)
                { /* block id: 116 */
                    int32_t l_248 = (-8L);
                    uint16_t l_250 = 1UL;
                    uint32_t l_257 = 6UL;
                    int8_t l_258[2][4][4] = {{{1L,1L,1L,1L},{1L,1L,1L,1L},{1L,1L,1L,1L},{1L,1L,1L,1L}},{{1L,1L,1L,1L},{1L,1L,1L,1L},{1L,1L,1L,1L},{1L,1L,1L,1L}}};
                    uint16_t l_259 = 0xA625L;
                    int32_t l_260 = 0x5B964CB0L;
                    int i, j, k;
                    for (l_248 = 0; (l_248 >= 0); l_248 -= 1)
                    { /* block id: 119 */
                        uint32_t l_249[6];
                        int i;
                        for (i = 0; i < 6; i++)
                            l_249[i] = 0x3C0D81ACL;
                        l_249[2] &= 6L;
                    }
                    if (l_250)
                    { /* block id: 122 */
                        uint8_t l_251 = 3UL;
                        int64_t l_252[6][10] = {{0x1E0859B879C42901L,0L,0x457FC2B63E0678FFL,4L,0x457FC2B63E0678FFL,0L,0x1E0859B879C42901L,0x3F030DFCB13B148AL,0L,0L},{0x1E0859B879C42901L,0L,0x457FC2B63E0678FFL,4L,0x457FC2B63E0678FFL,0L,0x1E0859B879C42901L,0x3F030DFCB13B148AL,0L,0L},{0x1E0859B879C42901L,0L,0x457FC2B63E0678FFL,4L,0x457FC2B63E0678FFL,0L,0x1E0859B879C42901L,0x3F030DFCB13B148AL,0L,0L},{0x1E0859B879C42901L,0L,0x457FC2B63E0678FFL,4L,0x457FC2B63E0678FFL,0L,0x1E0859B879C42901L,0x3F030DFCB13B148AL,0L,0L},{0x1E0859B879C42901L,0L,0x457FC2B63E0678FFL,4L,0x457FC2B63E0678FFL,0L,0x1E0859B879C42901L,0x3F030DFCB13B148AL,0L,0L},{0x1E0859B879C42901L,0L,0x457FC2B63E0678FFL,4L,0x457FC2B63E0678FFL,0L,0x1E0859B879C42901L,0x3F030DFCB13B148AL,0L,0L}};
                        uint8_t l_253 = 0x7DL;
                        int i, j;
                        l_251 |= (-1L);
                        l_253--;
                    }
                    else
                    { /* block id: 125 */
                        int32_t l_256 = 0x35E61D60L;
                        l_248 = l_256;
                    }
                    l_258[1][3][3] &= (l_248 = l_257);
                    l_260 = l_259;
                    for (l_259 = 0; (l_259 <= 1); l_259 += 1)
                    { /* block id: 133 */
                        int32_t l_262 = 0x0278260FL;
                        int32_t *l_261 = &l_262;
                        int32_t *l_263 = &l_262;
                        int32_t *l_264 = &l_262;
                        int32_t *l_265[4] = {&l_262,&l_262,&l_262,&l_262};
                        int32_t *l_266 = &l_262;
                        int32_t *l_267 = (void*)0;
                        int32_t *l_268 = &l_262;
                        int64_t l_269 = 0x546C6D6545946B52L;
                        uint32_t l_270 = 0x203773B8L;
                        uint32_t l_271[8][6][5] = {{{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL}},{{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL}},{{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL}},{{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL}},{{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL}},{{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL}},{{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL}},{{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL},{0x3D4D40C0L,4294967291UL,0UL,0x8048BA43L,0UL}}};
                        int32_t l_272 = 0x78AEFC81L;
                        uint16_t l_273 = 0xCBB9L;
                        uint8_t l_274 = 255UL;
                        int8_t l_275 = 0x3CL;
                        int16_t l_276 = 1L;
                        uint64_t l_277[7] = {0x9068FD7EE3A75C54L,18446744073709551613UL,0x9068FD7EE3A75C54L,0x9068FD7EE3A75C54L,18446744073709551613UL,0x9068FD7EE3A75C54L,0x9068FD7EE3A75C54L};
                        uint32_t l_278 = 0x7012BB54L;
                        int i, j, k;
                        l_264 = (l_263 = l_261);
                        l_266 = (p_1467->g_215[(l_236[0][5] + 5)][l_230][(l_236[0][5] + 5)] , l_265[0]);
                        l_268 = l_267;
                        l_260 = ((((l_269 , (l_272 = ((l_270 , (-1L)) , l_271[7][1][3]))) , ((l_248 &= ((l_275 = (l_273 , l_274)) , 0L)) , (l_235 = l_276))) , FAKE_DIVERGE(p_1467->local_2_offset, get_local_id(2), 10)) , ((l_277[4] , 0x66689439L) , l_278));
                    }
                }
                l_283 = ((l_281 &= (l_280 &= l_279)) , l_282);
            }
            else
            { /* block id: 148 */
                int32_t l_284 = 0x617F0D1DL;
                int32_t l_298[2][8][6] = {{{0x7F9DEC07L,0x7F9DEC07L,0x3DFDC92DL,0x16A4ADB7L,0x5560089FL,0x6E9415C5L},{0x7F9DEC07L,0x7F9DEC07L,0x3DFDC92DL,0x16A4ADB7L,0x5560089FL,0x6E9415C5L},{0x7F9DEC07L,0x7F9DEC07L,0x3DFDC92DL,0x16A4ADB7L,0x5560089FL,0x6E9415C5L},{0x7F9DEC07L,0x7F9DEC07L,0x3DFDC92DL,0x16A4ADB7L,0x5560089FL,0x6E9415C5L},{0x7F9DEC07L,0x7F9DEC07L,0x3DFDC92DL,0x16A4ADB7L,0x5560089FL,0x6E9415C5L},{0x7F9DEC07L,0x7F9DEC07L,0x3DFDC92DL,0x16A4ADB7L,0x5560089FL,0x6E9415C5L},{0x7F9DEC07L,0x7F9DEC07L,0x3DFDC92DL,0x16A4ADB7L,0x5560089FL,0x6E9415C5L},{0x7F9DEC07L,0x7F9DEC07L,0x3DFDC92DL,0x16A4ADB7L,0x5560089FL,0x6E9415C5L}},{{0x7F9DEC07L,0x7F9DEC07L,0x3DFDC92DL,0x16A4ADB7L,0x5560089FL,0x6E9415C5L},{0x7F9DEC07L,0x7F9DEC07L,0x3DFDC92DL,0x16A4ADB7L,0x5560089FL,0x6E9415C5L},{0x7F9DEC07L,0x7F9DEC07L,0x3DFDC92DL,0x16A4ADB7L,0x5560089FL,0x6E9415C5L},{0x7F9DEC07L,0x7F9DEC07L,0x3DFDC92DL,0x16A4ADB7L,0x5560089FL,0x6E9415C5L},{0x7F9DEC07L,0x7F9DEC07L,0x3DFDC92DL,0x16A4ADB7L,0x5560089FL,0x6E9415C5L},{0x7F9DEC07L,0x7F9DEC07L,0x3DFDC92DL,0x16A4ADB7L,0x5560089FL,0x6E9415C5L},{0x7F9DEC07L,0x7F9DEC07L,0x3DFDC92DL,0x16A4ADB7L,0x5560089FL,0x6E9415C5L},{0x7F9DEC07L,0x7F9DEC07L,0x3DFDC92DL,0x16A4ADB7L,0x5560089FL,0x6E9415C5L}}};
                uint32_t l_299[5][8] = {{4294967295UL,4294967295UL,0xEE35BF26L,0x8FE72F9EL,0UL,0x55E04F06L,0xCB0EC132L,0x3FBC6572L},{4294967295UL,4294967295UL,0xEE35BF26L,0x8FE72F9EL,0UL,0x55E04F06L,0xCB0EC132L,0x3FBC6572L},{4294967295UL,4294967295UL,0xEE35BF26L,0x8FE72F9EL,0UL,0x55E04F06L,0xCB0EC132L,0x3FBC6572L},{4294967295UL,4294967295UL,0xEE35BF26L,0x8FE72F9EL,0UL,0x55E04F06L,0xCB0EC132L,0x3FBC6572L},{4294967295UL,4294967295UL,0xEE35BF26L,0x8FE72F9EL,0UL,0x55E04F06L,0xCB0EC132L,0x3FBC6572L}};
                uint64_t l_300[4][9] = {{0x537B4442B03CFD7BL,0x4A62370B228D42A0L,1UL,0x4A62370B228D42A0L,0x537B4442B03CFD7BL,0x537B4442B03CFD7BL,0x4A62370B228D42A0L,1UL,0x4A62370B228D42A0L},{0x537B4442B03CFD7BL,0x4A62370B228D42A0L,1UL,0x4A62370B228D42A0L,0x537B4442B03CFD7BL,0x537B4442B03CFD7BL,0x4A62370B228D42A0L,1UL,0x4A62370B228D42A0L},{0x537B4442B03CFD7BL,0x4A62370B228D42A0L,1UL,0x4A62370B228D42A0L,0x537B4442B03CFD7BL,0x537B4442B03CFD7BL,0x4A62370B228D42A0L,1UL,0x4A62370B228D42A0L},{0x537B4442B03CFD7BL,0x4A62370B228D42A0L,1UL,0x4A62370B228D42A0L,0x537B4442B03CFD7BL,0x537B4442B03CFD7BL,0x4A62370B228D42A0L,1UL,0x4A62370B228D42A0L}};
                int32_t *l_318 = (void*)0;
                int i, j, k;
                for (l_284 = 1; (l_284 >= 0); l_284 -= 1)
                { /* block id: 151 */
                    int64_t l_285[2];
                    uint32_t l_286 = 0UL;
                    int8_t l_287 = 0x73L;
                    int32_t *l_288 = (void*)0;
                    int32_t l_290 = (-1L);
                    int32_t *l_289 = &l_290;
                    uint16_t l_291 = 65535UL;
                    uint32_t l_294 = 4294967286UL;
                    int16_t l_295 = 0x04C4L;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_285[i] = 0x7AA2B6602E2CF94CL;
                    l_289 = ((l_287 = (l_286 |= (l_285[1] ^= 0x61F03AA0D65FEBDAL))) , l_288);
                    --l_291;
                    l_295 = l_294;
                    for (l_285[0] = 1; (l_285[0] >= 0); l_285[0] -= 1)
                    { /* block id: 160 */
                        uint32_t l_296 = 0UL;
                        int64_t l_297 = (-7L);
                        int i, j, k;
                        l_296 ^= (l_290 |= 0x6E35F7F7L);
                        l_297 &= p_1467->g_215[(l_285[0] + 1)][l_230][(l_284 + 1)];
                    }
                }
                l_300[0][2] |= (l_299[1][3] = l_298[0][3][2]);
                for (l_298[0][4][3] = 1; (l_298[0][4][3] >= 0); l_298[0][4][3] -= 1)
                { /* block id: 170 */
                    int32_t l_301[10] = {(-5L),0x789602C3L,(-4L),0x789602C3L,(-5L),(-5L),0x789602C3L,(-4L),0x789602C3L,(-5L)};
                    int64_t l_308 = 0x6773EDEE33AE435EL;
                    uint32_t l_309 = 0x223E1E13L;
                    int32_t *l_312 = &l_301[6];
                    int32_t *l_313[2];
                    int32_t *l_314 = &l_301[0];
                    int8_t l_315 = (-1L);
                    int8_t l_316 = 0x16L;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_313[i] = (void*)0;
                    for (l_301[6] = 1; (l_301[6] >= 0); l_301[6] -= 1)
                    { /* block id: 173 */
                        uint64_t l_304 = 18446744073709551607UL;
                        uint64_t *l_303 = &l_304;
                        uint64_t **l_302[1];
                        uint64_t **l_305 = &l_303;
                        int32_t l_307 = 0x17F39087L;
                        int32_t *l_306 = &l_307;
                        int i;
                        for (i = 0; i < 1; i++)
                            l_302[i] = &l_303;
                        l_305 = l_302[0];
                        l_306 = (void*)0;
                    }
                    l_309++;
                    l_314 = (l_313[1] = l_312);
                    l_316 &= l_315;
                    for (l_301[8] = 0; (l_301[8] <= 1); l_301[8] += 1)
                    { /* block id: 183 */
                        int64_t l_317 = 2L;
                        int i, j, k;
                        l_317 &= p_1467->g_215[(l_301[8] + 2)][l_298[0][4][3]][l_298[0][4][3]];
                    }
                }
                l_318 = (void*)0;
            }
            --l_324;
            l_329 = (l_327 = (void*)0);
            for (l_321 = 1; (l_321 >= 0); l_321 -= 1)
            { /* block id: 194 */
                uint16_t l_330 = 9UL;
                int32_t l_331 = (-7L);
                uint32_t l_332 = 1UL;
                int32_t l_333 = 0x39FCD69DL;
                l_331 = l_330;
                if ((l_332 , l_333))
                { /* block id: 196 */
                    int32_t l_334 = (-2L);
                    l_333 ^= 0L;
                    for (l_334 = 1; (l_334 >= 0); l_334 -= 1)
                    { /* block id: 200 */
                        l_328 &= (-3L);
                    }
                }
                else
                { /* block id: 203 */
                    uint8_t l_335 = 0xBAL;
                    int32_t l_336[5];
                    uint32_t l_345[9] = {0x95ED2380L,0x95ED2380L,0x95ED2380L,0x95ED2380L,0x95ED2380L,0x95ED2380L,0x95ED2380L,0x95ED2380L,0x95ED2380L};
                    uint32_t l_346 = 0UL;
                    int i;
                    for (i = 0; i < 5; i++)
                        l_336[i] = 0L;
                    if ((l_335 , l_336[0]))
                    { /* block id: 204 */
                        uint8_t l_337 = 0x02L;
                        int32_t l_339 = (-1L);
                        int32_t *l_338 = &l_339;
                        int32_t *l_340 = &l_339;
                        int32_t l_341 = 0x17DE586BL;
                        l_336[4] = l_337;
                        l_329 = l_338;
                        l_329 = (l_327 = l_340);
                        (*l_327) = l_341;
                    }
                    else
                    { /* block id: 210 */
                        int32_t l_343 = 0x58020723L;
                        int32_t *l_342 = &l_343;
                        int32_t *l_344 = &l_343;
                        l_344 = l_342;
                    }
                    l_346 ^= (l_328 |= l_345[6]);
                    l_329 = (void*)0;
                    for (l_336[0] = 1; (l_336[0] >= 0); l_336[0] -= 1)
                    { /* block id: 218 */
                        uint8_t l_347 = 253UL;
                        int32_t l_348 = 1L;
                        l_328 = l_347;
                        l_327 = (void*)0;
                        l_328 |= (l_348 = 0x0A018153L);
                    }
                }
                for (l_333 = 1; (l_333 >= 0); l_333 -= 1)
                { /* block id: 227 */
                    int32_t l_350 = (-1L);
                    int32_t *l_349[7] = {&l_350,&l_350,&l_350,&l_350,&l_350,&l_350,&l_350};
                    int32_t *l_351[5][5] = {{&l_350,&l_350,&l_350,&l_350,&l_350},{&l_350,&l_350,&l_350,&l_350,&l_350},{&l_350,&l_350,&l_350,&l_350,&l_350},{&l_350,&l_350,&l_350,&l_350,&l_350},{&l_350,&l_350,&l_350,&l_350,&l_350}};
                    int i, j;
                    l_351[3][3] = (l_327 = l_349[3]);
                    l_328 = ((*l_327) = (-1L));
                    l_329 = (void*)0;
                }
                for (l_333 = 1; (l_333 >= 0); l_333 -= 1)
                { /* block id: 236 */
                    int32_t l_353 = 0x3F816714L;
                    int32_t *l_352 = &l_353;
                    int16_t l_354[7];
                    uint64_t l_355[1][2][9] = {{{3UL,3UL,3UL,3UL,3UL,3UL,3UL,3UL,3UL},{3UL,3UL,3UL,3UL,3UL,3UL,3UL,3UL,3UL}}};
                    uint32_t l_356 = 4294967287UL;
                    int32_t l_357 = 1L;
                    uint8_t l_358[8] = {0xD5L,0xD5L,0xD5L,0xD5L,0xD5L,0xD5L,0xD5L,0xD5L};
                    uint32_t l_359 = 4294967295UL;
                    uint16_t l_360 = 0UL;
                    int i, j, k;
                    for (i = 0; i < 7; i++)
                        l_354[i] = 1L;
                    l_329 = l_352;
                    l_359 &= ((l_354[3] ^= 1L) , (l_358[1] ^= (l_355[0][0][1] , ((l_356 , 0x3212L) , (l_328 = ((*l_329) = l_357))))));
                    --l_360;
                }
            }
        }
        l_370 = (((l_366 = (l_363[2] , (l_364 , l_365))) , 0x652DDF69CD38E189L) , (((l_367 , FAKE_DIVERGE(p_1467->group_2_offset, get_group_id(2), 10)) , (-7L)) , l_368));
        for (l_230 = 0; (l_230 > 17); l_230++)
        { /* block id: 251 */
            uint32_t l_373 = 0xAA7910E7L;
            int64_t l_374[2];
            uint32_t l_375 = 0x5A57E23EL;
            int64_t l_378 = (-5L);
            int i;
            for (i = 0; i < 2; i++)
                l_374[i] = 1L;
            (*l_368) |= l_373;
            l_375++;
            if (l_378)
            { /* block id: 254 */
                int16_t l_379[10][10][2] = {{{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L}},{{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L}},{{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L}},{{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L}},{{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L}},{{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L}},{{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L}},{{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L}},{{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L}},{{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L},{(-1L),0x41E5L}}};
                int8_t l_380 = (-1L);
                uint32_t l_381 = 4294967287UL;
                uint64_t l_384 = 0xABFE9561FEEB75CBL;
                uint32_t l_385 = 1UL;
                uint32_t l_386 = 0x5215F769L;
                uint32_t l_387 = 4294967295UL;
                uint64_t l_388[2][10];
                uint32_t l_389 = 0x6BB68870L;
                int i, j, k;
                for (i = 0; i < 2; i++)
                {
                    for (j = 0; j < 10; j++)
                        l_388[i][j] = 0xE95EEE8872C66E97L;
                }
                (*l_368) ^= ((l_384 |= (l_379[0][6][0] , (--l_381))) , l_385);
                l_389 ^= (l_388[1][5] = (l_386 , ((*l_368) &= l_387)));
            }
            else
            { /* block id: 261 */
                uint32_t l_390[1];
                int32_t l_391 = (-2L);
                int32_t l_392 = 0x0D388691L;
                uint16_t l_393[10] = {0xEBCFL,0xEBCFL,0xEBCFL,0xEBCFL,0xEBCFL,0xEBCFL,0xEBCFL,0xEBCFL,0xEBCFL,0xEBCFL};
                int64_t l_396[10][3] = {{6L,0x5E25CFBF1F741FB1L,6L},{6L,0x5E25CFBF1F741FB1L,6L},{6L,0x5E25CFBF1F741FB1L,6L},{6L,0x5E25CFBF1F741FB1L,6L},{6L,0x5E25CFBF1F741FB1L,6L},{6L,0x5E25CFBF1F741FB1L,6L},{6L,0x5E25CFBF1F741FB1L,6L},{6L,0x5E25CFBF1F741FB1L,6L},{6L,0x5E25CFBF1F741FB1L,6L},{6L,0x5E25CFBF1F741FB1L,6L}};
                uint32_t l_397 = 0x06CE8864L;
                int i, j;
                for (i = 0; i < 1; i++)
                    l_390[i] = 0xF95C6FD6L;
                l_370 = (void*)0;
                (*l_368) ^= l_390[0];
                --l_393[1];
                l_397 = l_396[2][2];
            }
            for (l_374[1] = 0; (l_374[1] == 15); l_374[1]++)
            { /* block id: 269 */
                int32_t l_400[7][9] = {{0L,0x05713976L,0x526CC64DL,0x2A28D94DL,0x526CC64DL,0x05713976L,0L,0x065FC6D5L,0x789CBE35L},{0L,0x05713976L,0x526CC64DL,0x2A28D94DL,0x526CC64DL,0x05713976L,0L,0x065FC6D5L,0x789CBE35L},{0L,0x05713976L,0x526CC64DL,0x2A28D94DL,0x526CC64DL,0x05713976L,0L,0x065FC6D5L,0x789CBE35L},{0L,0x05713976L,0x526CC64DL,0x2A28D94DL,0x526CC64DL,0x05713976L,0L,0x065FC6D5L,0x789CBE35L},{0L,0x05713976L,0x526CC64DL,0x2A28D94DL,0x526CC64DL,0x05713976L,0L,0x065FC6D5L,0x789CBE35L},{0L,0x05713976L,0x526CC64DL,0x2A28D94DL,0x526CC64DL,0x05713976L,0L,0x065FC6D5L,0x789CBE35L},{0L,0x05713976L,0x526CC64DL,0x2A28D94DL,0x526CC64DL,0x05713976L,0L,0x065FC6D5L,0x789CBE35L}};
                int i, j;
                for (l_400[3][2] = 6; (l_400[3][2] <= 6); l_400[3][2] = safe_add_func_uint8_t_u_u(l_400[3][2], 7))
                { /* block id: 272 */
                    int32_t l_403 = 0x435F0D1BL;
                    uint64_t l_407[8];
                    uint32_t l_408 = 0xAF9D7308L;
                    uint16_t l_409 = 0UL;
                    int32_t l_410 = 1L;
                    int64_t l_411[8];
                    int32_t l_412[1][3];
                    uint64_t l_431 = 2UL;
                    uint16_t l_432[9] = {0x5AEAL,0x5AEAL,0x5AEAL,0x5AEAL,0x5AEAL,0x5AEAL,0x5AEAL,0x5AEAL,0x5AEAL};
                    uint64_t *l_434 = &l_407[6];
                    uint64_t **l_433 = &l_434;
                    int i, j;
                    for (i = 0; i < 8; i++)
                        l_407[i] = 0xE8BFC4DCCAA6FA6CL;
                    for (i = 0; i < 8; i++)
                        l_411[i] = 0L;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 3; j++)
                            l_412[i][j] = 0x1B5A141CL;
                    }
                    for (l_403 = 1; (l_403 >= 0); l_403 -= 1)
                    { /* block id: 275 */
                        int32_t l_404 = 0L;
                        int16_t l_405 = 3L;
                        int32_t *l_406 = &l_404;
                        int i, j, k;
                        l_405 |= (l_404 = (((p_1467->g_215[(l_403 + 5)][l_403][(l_403 + 5)] , p_1467->g_215[(l_403 + 1)][l_403][(l_403 + 2)]) , (-3L)) , 0x617DE849L));
                        l_370 = l_406;
                    }
                }
                for (l_400[2][6] = 0; (l_400[2][6] <= 1); l_400[2][6] += 1)
                { /* block id: 303 */
                    int16_t l_435 = 1L;
                    int64_t l_436 = 0x6D22A2BCF5824F43L;
                    uint32_t l_437 = 1UL;
                    --l_437;
                    for (l_436 = 3; (l_436 >= 0); l_436 -= 1)
                    { /* block id: 307 */
                        int16_t l_440 = 0x1732L;
                        uint32_t l_441[7];
                        int32_t l_443 = 0x39C225A9L;
                        int32_t *l_442[7][7][4] = {{{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0}},{{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0}},{{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0}},{{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0}},{{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0}},{{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0}},{{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0},{(void*)0,&l_443,(void*)0,(void*)0}}};
                        int32_t *l_444 = &l_443;
                        int i, j, k;
                        for (i = 0; i < 7; i++)
                            l_441[i] = 4294967291UL;
                        (1 + 1);
                    }
                }
            }
        }
        unsigned int result = 0;
        result += l_230;
        int l_231_i0, l_231_i1, l_231_i2;
        for (l_231_i0 = 0; l_231_i0 < 2; l_231_i0++) {
            for (l_231_i1 = 0; l_231_i1 < 5; l_231_i1++) {
                for (l_231_i2 = 0; l_231_i2 < 5; l_231_i2++) {
                    result += l_231[l_231_i0][l_231_i1][l_231_i2];
                }
            }
        }
        int l_363_i0;
        for (l_363_i0 = 0; l_363_i0 < 6; l_363_i0++) {
            result += l_363[l_363_i0];
        }
        result += l_364;
        result += l_365;
        result += l_366;
        result += l_367;
        result += l_369;
        atomic_add(&p_1467->l_special_values[92], result);
    }
    else
    { /* block id: 318 */
        (1 + 1);
    }
    for (p_1467->g_61 = 0; (p_1467->g_61 <= 3); p_1467->g_61 += 1)
    { /* block id: 323 */
        uint8_t l_456 = 0xDFL;
        int8_t l_470[6] = {(-6L),0x49L,(-6L),(-6L),0x49L,(-6L)};
        int32_t l_474 = 0x5C24F940L;
        uint64_t *l_509 = (void*)0;
        int i;
        for (p_1467->g_67 = 0; (p_1467->g_67 <= 3); p_1467->g_67 += 1)
        { /* block id: 326 */
            int32_t *l_445 = &p_1467->g_97;
            int32_t *l_446 = &p_1467->g_97;
            int32_t *l_447 = &p_1467->g_97;
            int32_t *l_448 = &p_1467->g_97;
            int32_t *l_449 = &p_1467->g_97;
            int32_t *l_450[2];
            uint8_t l_453 = 0x14L;
            int i;
            for (i = 0; i < 2; i++)
                l_450[i] = &p_1467->g_97;
            l_453++;
            for (p_1467->g_166 = 0; (p_1467->g_166 <= 3); p_1467->g_166 += 1)
            { /* block id: 330 */
                return l_456;
            }
        }
        for (p_1467->g_227 = 0; (p_1467->g_227 <= 3); p_1467->g_227 += 1)
        { /* block id: 336 */
            int8_t *l_464 = &p_1467->g_132;
            uint8_t ***l_467[2];
            int32_t l_471 = (-1L);
            uint16_t *l_472 = &p_1467->g_166;
            uint32_t l_492[1][10];
            int32_t l_512 = 0x73AD7BE3L;
            int i, j;
            for (i = 0; i < 2; i++)
                l_467[i] = (void*)0;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 10; j++)
                    l_492[i][j] = 0UL;
            }
            l_474 ^= ((safe_div_func_int32_t_s_s(((0x5FL < (safe_mod_func_int32_t_s_s((safe_unary_minus_func_uint16_t_u(FAKE_DIVERGE(p_1467->local_0_offset, get_local_id(0), 10))), (4294967295UL || (((*l_464) = l_456) > (((p_1467->g_465 = p_1467->g_465) == (p_1467->g_473 = ((((l_456 , (l_451 , ((*l_472) |= ((safe_mul_func_uint8_t_u_u((*p_1467->g_466), ((l_470[0] != p_1467->g_160) > 4L))) & l_471)))) == GROUP_DIVERGE(0, 1)) & 0x4B3DF06EF8A51724L) , &p_1467->g_466))) , (-1L))))))) | p_1467->g_102), (*p_1467->g_96))) || l_470[1]);
            for (p_1467->g_166 = 0; (p_1467->g_166 <= 3); p_1467->g_166 += 1)
            { /* block id: 344 */
                uint8_t ****l_477 = &l_467[1];
                uint8_t ***l_479 = &p_1467->g_473;
                uint8_t ****l_478 = &l_479;
                int32_t l_508 = 0x793DC912L;
                int32_t **l_513 = &p_1467->g_223;
                (1 + 1);
            }
        }
    }
    if (l_516)
    { /* block id: 387 */
        int32_t *l_517 = &l_452[0][1][6];
        int32_t *l_519 = &l_452[0][4][7];
        int32_t l_520[3][4];
        int32_t *l_521 = (void*)0;
        int32_t *l_522 = (void*)0;
        int32_t *l_523 = &p_1467->g_97;
        int32_t *l_524 = &l_520[2][1];
        int32_t *l_525 = (void*)0;
        int32_t *l_526 = &l_452[0][1][6];
        int32_t *l_527 = &l_520[0][2];
        int32_t *l_528 = &l_520[2][3];
        int32_t *l_530 = (void*)0;
        int32_t *l_531[5];
        uint64_t *l_540[4][1][10] = {{{(void*)0,&p_1467->g_82,(void*)0,(void*)0,&p_1467->g_82,(void*)0,(void*)0,&p_1467->g_82,(void*)0,(void*)0}},{{(void*)0,&p_1467->g_82,(void*)0,(void*)0,&p_1467->g_82,(void*)0,(void*)0,&p_1467->g_82,(void*)0,(void*)0}},{{(void*)0,&p_1467->g_82,(void*)0,(void*)0,&p_1467->g_82,(void*)0,(void*)0,&p_1467->g_82,(void*)0,(void*)0}},{{(void*)0,&p_1467->g_82,(void*)0,(void*)0,&p_1467->g_82,(void*)0,(void*)0,&p_1467->g_82,(void*)0,(void*)0}}};
        uint32_t **l_634 = (void*)0;
        int64_t **l_643[8][8][4] = {{{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546}},{{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546}},{{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546}},{{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546}},{{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546}},{{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546}},{{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546}},{{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546},{&l_546,(void*)0,&l_546,&l_546}}};
        int i, j, k;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 4; j++)
                l_520[i][j] = (-1L);
        }
        for (i = 0; i < 5; i++)
            l_531[i] = &l_520[0][3];
        ++p_1467->g_532;
        for (p_1467->g_160 = 0; (p_1467->g_160 >= 1); p_1467->g_160 = safe_add_func_int8_t_s_s(p_1467->g_160, 8))
        { /* block id: 391 */
            int16_t l_537 = 0x0D21L;
            uint8_t ****l_570 = (void*)0;
            int32_t l_578[1][3][4] = {{{0x514D5660L,0x514D5660L,0x514D5660L,0x514D5660L},{0x514D5660L,0x514D5660L,0x514D5660L,0x514D5660L},{0x514D5660L,0x514D5660L,0x514D5660L,0x514D5660L}}};
            uint32_t ***l_635 = &l_634;
            int16_t *l_642 = &p_1467->g_146;
            int i, j, k;
            if (l_537)
                break;
            for (p_1467->g_97 = 0; (p_1467->g_97 <= (-22)); p_1467->g_97 = safe_sub_func_int32_t_s_s(p_1467->g_97, 1))
            { /* block id: 395 */
                int32_t l_543 = 0x46CF7AC0L;
                int64_t *l_545 = &l_529[0][0][3];
                int64_t **l_544 = &l_545;
                uint8_t ***l_572 = &p_1467->g_465;
                uint8_t ****l_571 = &l_572;
                uint64_t **l_583 = &l_540[1][0][1];
                int32_t l_597 = 0L;
                int32_t l_600 = (-9L);
                (*l_524) = ((((((void*)0 != l_540[2][0][5]) != p_1467->g_146) != (safe_sub_func_int32_t_s_s(l_543, ((*l_519) = (((*l_544) = (void*)0) == l_546))))) , l_547) != &p_1467->g_95);
            }
            (**p_1467->g_222) = ((safe_lshift_func_uint16_t_u_u((((!(safe_lshift_func_uint16_t_u_u(l_578[0][1][0], FAKE_DIVERGE(p_1467->group_2_offset, get_group_id(2), 10)))) ^ (**p_1467->g_222)) && (((*l_511) = ((l_537 < ((((safe_mod_func_int32_t_s_s((!((l_633 = p_1467->g_631) != ((*l_635) = ((**l_547) , l_634)))), (((*l_642) = (safe_mul_func_int8_t_s_s(0x7AL, (safe_rshift_func_int16_t_s_u((~(((0x6C8FL > (safe_add_func_int8_t_s_s(p_1467->g_218, p_1467->g_160))) || 0x76D6D420E61F0804L) , 0x591DL)), p_1467->g_215[3][1][1]))))) , GROUP_DIVERGE(1, 1)))) ^ p_1467->g_61) <= 0xC0CB0BD1382A2C52L) == (**l_547))) || 0L)) < 0x17E99309D301EED6L)), l_578[0][0][0])) && 0x163B6A4BL);
            for (p_1467->g_154 = 0; (p_1467->g_154 <= 0); p_1467->g_154 += 1)
            { /* block id: 436 */
                int8_t *l_656 = &l_518;
                int32_t l_657 = 0x3B9D18D5L;
                int16_t *l_658 = &l_537;
                int32_t **l_663 = &p_1467->g_223;
                (*l_526) = ((l_643[1][7][3] != (void*)0) , (safe_mul_func_int16_t_s_s((&l_634 != (void*)0), (safe_add_func_int8_t_s_s((((*p_46) = ((safe_sub_func_int8_t_s_s((p_1467->g_650 & ((l_651 == ((l_537 != (0x19F1L < ((safe_rshift_func_int8_t_s_u(((*l_656) = (-5L)), (*p_45))) ^ l_657))) , l_658)) & l_578[0][0][0])), (**l_547))) | l_657)) != l_578[0][1][3]), l_657)))));
                (*l_524) ^= (-5L);
                for (l_537 = 0; (l_537 <= 0); l_537 += 1)
                { /* block id: 443 */
                    int8_t l_661 = 9L;
                    int32_t ***l_662 = &l_547;
                    uint16_t l_667 = 2UL;
                    if (((l_643[1][7][3] == (void*)0) , (safe_mul_func_int8_t_s_s((l_661 , (((*l_662) = &p_1467->g_223) == (l_663 = l_663))), l_657))))
                    { /* block id: 446 */
                        volatile int8_t * volatile **l_666 = &p_1467->g_664;
                        (*l_519) = ((**p_1467->g_473) | 0x1AL);
                        (*l_517) = (-6L);
                        (*l_666) = p_1467->g_664;
                        ++l_667;
                    }
                    else
                    { /* block id: 451 */
                        if ((*p_1467->g_223))
                            break;
                        return (**p_1467->g_664);
                    }
                }
            }
        }
    }
    else
    { /* block id: 458 */
        int8_t ***l_672 = &p_1467->g_670;
        int32_t l_675 = 1L;
        uint32_t l_684 = 0x519BC9EBL;
        uint8_t l_685[1][5][8] = {{{1UL,1UL,0x84L,1UL,0x6AL,1UL,0x84L,1UL},{1UL,1UL,0x84L,1UL,0x6AL,1UL,0x84L,1UL},{1UL,1UL,0x84L,1UL,0x6AL,1UL,0x84L,1UL},{1UL,1UL,0x84L,1UL,0x6AL,1UL,0x84L,1UL},{1UL,1UL,0x84L,1UL,0x6AL,1UL,0x84L,1UL}}};
        int i, j, k;
        l_684 ^= (((((*l_672) = p_1467->g_670) != &p_1467->g_671) != (((safe_rshift_func_uint8_t_u_s(((**p_1467->g_473) = (*p_46)), ((0UL == (255UL ^ (l_675 , ((safe_add_func_int64_t_s_s(((*l_546) = 0x6D43BBD297026589L), (safe_mul_func_uint16_t_u_u((safe_div_func_uint16_t_u_u(0UL, (safe_rshift_func_uint16_t_u_u((+((((**l_547) <= l_675) || (**p_1467->g_222)) , 0UL)), 11)))), GROUP_DIVERGE(2, 1))))) >= 0x6F33L)))) != 6UL))) >= 0L) || (-1L))) > (**l_547));
        --l_685[0][1][7];
    }
    (*l_547) = (*l_547);
    return (**l_547);
}


/* ------------------------------------------ */
/* 
 * reads : p_1467->g_61 p_1467->g_12 p_1467->g_82 p_1467->g_67 p_1467->g_96 p_1467->g_103 p_1467->g_86 p_1467->g_120 p_1467->g_142 p_1467->g_154 p_1467->g_97 p_1467->g_166 p_1467->g_102 p_1467->g_160 p_1467->g_187 p_1467->g_222 p_1467->g_227
 * writes: p_1467->g_61 p_1467->g_82 p_1467->g_97 p_1467->g_103 p_1467->g_132 p_1467->g_102 p_1467->g_142 p_1467->g_146 p_1467->g_86 p_1467->g_154 p_1467->g_160 p_1467->g_166 p_1467->g_223 p_1467->g_227
 */
uint8_t * func_48(uint8_t  p_49, uint8_t * p_50, struct S0 * p_1467)
{ /* block id: 11 */
    uint32_t l_68[1][3];
    int32_t l_80[10];
    uint64_t *l_85 = &p_1467->g_86;
    uint64_t *l_88 = &p_1467->g_86;
    uint32_t l_128 = 4UL;
    int32_t *l_224 = (void*)0;
    int32_t *l_225 = &l_80[7];
    int32_t *l_226[2][10] = {{&p_1467->g_97,&l_80[8],&l_80[8],&p_1467->g_97,&p_1467->g_97,&l_80[8],&l_80[8],&p_1467->g_97,&p_1467->g_97,&l_80[8]},{&p_1467->g_97,&l_80[8],&l_80[8],&p_1467->g_97,&p_1467->g_97,&l_80[8],&l_80[8],&p_1467->g_97,&p_1467->g_97,&l_80[8]}};
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
            l_68[i][j] = 0x974D3771L;
    }
    for (i = 0; i < 10; i++)
        l_80[i] = 0x78E10B09L;
    for (p_1467->g_61 = 0; (p_1467->g_61 <= 0); p_1467->g_61 += 1)
    { /* block id: 14 */
        uint32_t *l_77 = &p_1467->g_61;
        uint32_t **l_78 = (void*)0;
        uint32_t **l_79 = &l_77;
        uint64_t *l_81 = &p_1467->g_82;
        uint64_t **l_87 = &l_85;
        int32_t l_89 = 0x051AA8C9L;
        int32_t l_94 = 0x4ED1E225L;
        int32_t l_100[10] = {0x2708467EL,0x2708467EL,0x2708467EL,0x2708467EL,0x2708467EL,0x2708467EL,0x2708467EL,0x2708467EL,0x2708467EL,0x2708467EL};
        int i;
        (*p_1467->g_96) = (((safe_mul_func_int8_t_s_s((safe_add_func_int32_t_s_s(p_1467->g_12[2][1][0], (safe_mod_func_int8_t_s_s(((safe_add_func_int64_t_s_s((((*l_79) = l_77) != (void*)0), ((*l_81)--))) <= (((*l_87) = l_85) != (p_49 , l_88))), l_89)))), p_1467->g_12[2][1][2])) | ((safe_mod_func_uint16_t_u_u((safe_lshift_func_int16_t_s_s((l_94 &= l_68[0][1]), 7)), p_49)) ^ p_1467->g_67)) > 18446744073709551613UL);
        for (p_49 = 0; (p_49 <= 0); p_49 += 1)
        { /* block id: 22 */
            int32_t l_101[9][8][3] = {{{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L}},{{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L}},{{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L}},{{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L}},{{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L}},{{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L}},{{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L}},{{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L}},{{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L},{1L,4L,0L}}};
            uint8_t *l_144 = &p_1467->g_67;
            int32_t *l_147 = (void*)0;
            int32_t *l_148 = &l_80[2];
            int32_t *l_149 = (void*)0;
            int32_t *l_150 = &l_100[5];
            int32_t *l_151 = &p_1467->g_97;
            int32_t *l_152 = &l_94;
            int32_t *l_153[7] = {&p_1467->g_97,&l_100[8],&p_1467->g_97,&p_1467->g_97,&l_100[8],&p_1467->g_97,&p_1467->g_97};
            int i, j, k;
            for (l_89 = 9; (l_89 >= 0); l_89 -= 1)
            { /* block id: 25 */
                int i;
                l_80[l_89] ^= 0L;
            }
            if ((l_68[p_1467->g_61][p_49] <= p_1467->g_82))
            { /* block id: 28 */
                int32_t *l_98 = &l_94;
                int32_t *l_99[4][7][5] = {{{(void*)0,&l_89,(void*)0,&l_94,(void*)0},{(void*)0,&l_89,(void*)0,&l_94,(void*)0},{(void*)0,&l_89,(void*)0,&l_94,(void*)0},{(void*)0,&l_89,(void*)0,&l_94,(void*)0},{(void*)0,&l_89,(void*)0,&l_94,(void*)0},{(void*)0,&l_89,(void*)0,&l_94,(void*)0},{(void*)0,&l_89,(void*)0,&l_94,(void*)0}},{{(void*)0,&l_89,(void*)0,&l_94,(void*)0},{(void*)0,&l_89,(void*)0,&l_94,(void*)0},{(void*)0,&l_89,(void*)0,&l_94,(void*)0},{(void*)0,&l_89,(void*)0,&l_94,(void*)0},{(void*)0,&l_89,(void*)0,&l_94,(void*)0},{(void*)0,&l_89,(void*)0,&l_94,(void*)0},{(void*)0,&l_89,(void*)0,&l_94,(void*)0}},{{(void*)0,&l_89,(void*)0,&l_94,(void*)0},{(void*)0,&l_89,(void*)0,&l_94,(void*)0},{(void*)0,&l_89,(void*)0,&l_94,(void*)0},{(void*)0,&l_89,(void*)0,&l_94,(void*)0},{(void*)0,&l_89,(void*)0,&l_94,(void*)0},{(void*)0,&l_89,(void*)0,&l_94,(void*)0},{(void*)0,&l_89,(void*)0,&l_94,(void*)0}},{{(void*)0,&l_89,(void*)0,&l_94,(void*)0},{(void*)0,&l_89,(void*)0,&l_94,(void*)0},{(void*)0,&l_89,(void*)0,&l_94,(void*)0},{(void*)0,&l_89,(void*)0,&l_94,(void*)0},{(void*)0,&l_89,(void*)0,&l_94,(void*)0},{(void*)0,&l_89,(void*)0,&l_94,(void*)0},{(void*)0,&l_89,(void*)0,&l_94,(void*)0}}};
                uint8_t *l_121 = &p_1467->g_67;
                int i, j, k;
                ++p_1467->g_103[0][9];
                if (((!(safe_mod_func_uint8_t_u_u(l_68[0][1], (((safe_lshift_func_int8_t_s_s(l_80[7], (((safe_mod_func_int32_t_s_s((p_1467->g_67 & (l_100[8] != (safe_add_func_int32_t_s_s((safe_rshift_func_uint8_t_u_s((0UL | (*l_98)), (p_1467->g_86 ^ (safe_sub_func_int32_t_s_s(((safe_mul_func_uint16_t_u_u(((p_1467->g_120[2] != (void*)0) && 1L), 0xCCA8L)) != p_49), p_49))))), 0L)))), 4294967295UL)) || 250UL) && l_101[2][3][2]))) , FAKE_DIVERGE(p_1467->local_1_offset, get_local_id(1), 10)) || (-1L))))) < l_100[8]))
                { /* block id: 30 */
                    for (l_89 = 0; (l_89 <= 0); l_89 += 1)
                    { /* block id: 33 */
                        return l_121;
                    }
                }
                else
                { /* block id: 36 */
                    int8_t *l_129 = (void*)0;
                    int8_t *l_130 = (void*)0;
                    int8_t *l_131 = &p_1467->g_132;
                    int32_t l_136[7][5] = {{0L,0x7B76DE95L,0x4BF15030L,(-10L),0x4BF15030L},{0L,0x7B76DE95L,0x4BF15030L,(-10L),0x4BF15030L},{0L,0x7B76DE95L,0x4BF15030L,(-10L),0x4BF15030L},{0L,0x7B76DE95L,0x4BF15030L,(-10L),0x4BF15030L},{0L,0x7B76DE95L,0x4BF15030L,(-10L),0x4BF15030L},{0L,0x7B76DE95L,0x4BF15030L,(-10L),0x4BF15030L},{0L,0x7B76DE95L,0x4BF15030L,(-10L),0x4BF15030L}};
                    int64_t *l_137 = (void*)0;
                    int16_t *l_140 = (void*)0;
                    int16_t *l_141 = &p_1467->g_142;
                    int32_t l_143 = 0x37BB743FL;
                    int16_t *l_145 = &p_1467->g_146;
                    int i, j;
                    (*l_98) = ((!(safe_rshift_func_uint16_t_u_s((((*l_131) = ((safe_add_func_uint8_t_u_u(l_101[2][4][2], 0x05L)) , l_128)) || ((safe_mul_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), (safe_unary_minus_func_uint32_t_u((p_49 >= l_136[6][2]))))) == p_49)), ((*l_145) = ((((((l_143 = ((p_1467->g_102 = p_1467->g_12[0][0][2]) | (safe_lshift_func_int8_t_s_s((((((*l_141) &= 0x4DDAL) & ((8UL | 0xFDL) || p_1467->g_82)) <= p_1467->g_82) >= p_1467->g_12[2][1][1]), p_49)))) , &p_49) != l_144) , 0UL) | p_1467->g_67) >= 4294967290UL))))) , p_49);
                }
            }
            else
            { /* block id: 44 */
                for (p_1467->g_86 = 0; (p_1467->g_86 <= 0); p_1467->g_86 += 1)
                { /* block id: 47 */
                    return &p_1467->g_67;
                }
            }
            ++p_1467->g_154;
        }
    }
    for (p_1467->g_97 = 0; (p_1467->g_97 <= 9); p_1467->g_97 += 1)
    { /* block id: 56 */
        uint16_t *l_159 = &p_1467->g_160;
        int32_t l_163 = 5L;
        uint16_t *l_165 = &p_1467->g_166;
        uint64_t **l_186 = &l_85;
        uint32_t *l_188 = &l_68[0][0];
        uint64_t l_189 = 0xD841891164B7CAA2L;
        uint8_t *l_190 = &p_1467->g_67;
        int32_t l_202 = (-2L);
        uint8_t l_219 = 0x07L;
        int i;
        l_80[p_1467->g_97] = ((safe_div_func_int64_t_s_s(l_80[p_1467->g_97], ((((p_1467->g_86 , ((((*l_159) = p_1467->g_142) >= (l_80[p_1467->g_97] != ((safe_rshift_func_uint8_t_u_s((((void*)0 != &p_1467->g_102) & (p_1467->g_86 <= l_163)), 1)) < (((*l_165) |= ((safe_unary_minus_func_uint16_t_u((254UL && p_1467->g_142))) >= 0L)) & p_49)))) != l_80[5])) | p_1467->g_102) || 0xB03EBDBDEA83D7FCL) , l_68[0][2]))) != l_68[0][0]);
        if (((((safe_mod_func_uint32_t_u_u(p_1467->g_86, (((safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_1467->global_0_offset, get_global_id(0), 10), (-4L))) ^ ((&p_1467->g_67 == (void*)0) < p_1467->g_166)) , (safe_div_func_uint32_t_u_u((l_128 >= l_80[3]), p_1467->g_160))))) == ((safe_add_func_int8_t_s_s((safe_div_func_int8_t_s_s(((safe_div_func_uint32_t_u_u(((((*l_188) |= ((safe_sub_func_int64_t_s_s((((safe_add_func_int16_t_s_s((safe_unary_minus_func_uint64_t_u((safe_add_func_int32_t_s_s((((*l_186) = &p_1467->g_86) == (void*)0), p_1467->g_142)))), l_80[0])) > p_1467->g_187) , 1L), l_80[9])) < l_80[p_1467->g_97])) <= 0x67738E0FL) == l_128), 4UL)) , (-4L)), l_189)), 0x07L)) || p_1467->g_166)) == 0L) >= p_49))
        { /* block id: 62 */
            return l_190;
        }
        else
        { /* block id: 64 */
            uint8_t l_203 = 0x83L;
            int32_t l_211 = 0x4C24070BL;
            int32_t l_212 = 5L;
            int32_t l_213[9];
            int i;
            for (i = 0; i < 9; i++)
                l_213[i] = (-1L);
            for (p_1467->g_61 = 0; (p_1467->g_61 <= 3); p_1467->g_61 += 1)
            { /* block id: 67 */
                int32_t *l_193 = &l_80[7];
                int32_t l_194 = 0x0A0B9BCCL;
                int32_t l_214 = 0x172B58A0L;
                int32_t l_216 = 0x11C6798BL;
                int32_t l_217 = 1L;
                if ((l_163 ^ (((*l_193) &= p_49) != 0L)))
                { /* block id: 69 */
                    int32_t *l_195 = &l_80[p_1467->g_97];
                    int32_t *l_196 = &l_163;
                    int32_t *l_197 = &l_163;
                    int32_t *l_198 = &l_80[7];
                    int32_t *l_199 = &l_80[p_1467->g_97];
                    int32_t *l_200 = &l_80[p_1467->g_97];
                    int32_t *l_201[10] = {&l_80[p_1467->g_97],&l_80[p_1467->g_97],&l_80[p_1467->g_97],&l_80[p_1467->g_97],&l_80[p_1467->g_97],&l_80[p_1467->g_97],&l_80[p_1467->g_97],&l_80[p_1467->g_97],&l_80[p_1467->g_97],&l_80[p_1467->g_97]};
                    int32_t **l_206 = (void*)0;
                    int32_t **l_207 = &l_196;
                    int i;
                    l_203++;
                    (*l_207) = &l_80[p_1467->g_97];
                    (*l_207) = (void*)0;
                }
                else
                { /* block id: 73 */
                    int32_t *l_208 = (void*)0;
                    int32_t *l_209 = &l_80[p_1467->g_97];
                    int32_t *l_210[4][10][3] = {{{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]}},{{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]}},{{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]}},{{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]},{&p_1467->g_97,&l_80[p_1467->g_97],&l_80[p_1467->g_97]}}};
                    int i, j, k;
                    ++l_219;
                    (*p_1467->g_222) = &p_1467->g_97;
                }
                if (l_212)
                    continue;
            }
        }
    }
    p_1467->g_227--;
    return &p_1467->g_67;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t  func_51(uint8_t  p_52, uint32_t  p_53, uint16_t  p_54, struct S0 * p_1467)
{ /* block id: 8 */
    int8_t l_64[2][6];
    int i, j;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 6; j++)
            l_64[i][j] = (-6L);
    }
    return l_64[0][0];
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[95];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 95; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[95];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 95; i++)
            l_special_values[i] = 0;
    struct S0 c_1468;
    struct S0* p_1467 = &c_1468;
    struct S0 c_1469 = {
        {{{1UL,4294967288UL,0x943C6FE2L},{1UL,4294967288UL,0x943C6FE2L}},{{1UL,4294967288UL,0x943C6FE2L},{1UL,4294967288UL,0x943C6FE2L}},{{1UL,4294967288UL,0x943C6FE2L},{1UL,4294967288UL,0x943C6FE2L}}}, // p_1467->g_12
        3UL, // p_1467->g_41
        0xF725DC8FL, // p_1467->g_61
        255UL, // p_1467->g_67
        0x9B5F814D19633EF2L, // p_1467->g_82
        18446744073709551615UL, // p_1467->g_86
        (void*)0, // p_1467->g_95
        0L, // p_1467->g_97
        &p_1467->g_97, // p_1467->g_96
        0x355DA1D3BC2F6D64L, // p_1467->g_102
        {{0x1BE135CAL,0x1BE135CAL,0x1BE135CAL,0x1BE135CAL,0x1BE135CAL,0x1BE135CAL,0x1BE135CAL,0x1BE135CAL,0x1BE135CAL,0x1BE135CAL}}, // p_1467->g_103
        {(void*)0,(void*)0,(void*)0,(void*)0}, // p_1467->g_120
        0L, // p_1467->g_132
        0L, // p_1467->g_142
        0x103EL, // p_1467->g_146
        0x9AA2B5C8L, // p_1467->g_154
        0x9930L, // p_1467->g_160
        0xAB56L, // p_1467->g_166
        0x61EFB666L, // p_1467->g_187
        {{{0x63L,(-8L),0x22L,0x14L,0L,0L,0x14L},{0x63L,(-8L),0x22L,0x14L,0L,0L,0x14L}},{{0x63L,(-8L),0x22L,0x14L,0L,0L,0x14L},{0x63L,(-8L),0x22L,0x14L,0L,0L,0x14L}},{{0x63L,(-8L),0x22L,0x14L,0L,0L,0x14L},{0x63L,(-8L),0x22L,0x14L,0L,0L,0x14L}},{{0x63L,(-8L),0x22L,0x14L,0L,0L,0x14L},{0x63L,(-8L),0x22L,0x14L,0L,0L,0x14L}},{{0x63L,(-8L),0x22L,0x14L,0L,0L,0x14L},{0x63L,(-8L),0x22L,0x14L,0L,0L,0x14L}},{{0x63L,(-8L),0x22L,0x14L,0L,0L,0x14L},{0x63L,(-8L),0x22L,0x14L,0L,0L,0x14L}},{{0x63L,(-8L),0x22L,0x14L,0L,0L,0x14L},{0x63L,(-8L),0x22L,0x14L,0L,0L,0x14L}},{{0x63L,(-8L),0x22L,0x14L,0L,0L,0x14L},{0x63L,(-8L),0x22L,0x14L,0L,0L,0x14L}}}, // p_1467->g_215
        0x7E9EL, // p_1467->g_218
        &p_1467->g_97, // p_1467->g_223
        &p_1467->g_223, // p_1467->g_222
        0UL, // p_1467->g_227
        &p_1467->g_67, // p_1467->g_466
        &p_1467->g_466, // p_1467->g_465
        &p_1467->g_466, // p_1467->g_473
        (void*)0, // p_1467->g_485
        (void*)0, // p_1467->g_486
        (void*)0, // p_1467->g_510
        1UL, // p_1467->g_532
        (void*)0, // p_1467->g_585
        &p_1467->g_585, // p_1467->g_584
        {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}, // p_1467->g_632
        &p_1467->g_632[4][0], // p_1467->g_631
        0x3349A2C6L, // p_1467->g_650
        &p_1467->g_215[3][1][1], // p_1467->g_665
        &p_1467->g_665, // p_1467->g_664
        &p_1467->g_132, // p_1467->g_671
        &p_1467->g_671, // p_1467->g_670
        (-4L), // p_1467->g_691
        (void*)0, // p_1467->g_742
        &p_1467->g_742, // p_1467->g_741
        1L, // p_1467->g_775
        0x462A748DL, // p_1467->g_793
        0x49L, // p_1467->g_802
        0x5CC5D421L, // p_1467->g_882
        {{&p_1467->g_691,&p_1467->g_691,&p_1467->g_691,&p_1467->g_691,&p_1467->g_691,&p_1467->g_691,&p_1467->g_691,&p_1467->g_691},{&p_1467->g_691,&p_1467->g_691,&p_1467->g_691,&p_1467->g_691,&p_1467->g_691,&p_1467->g_691,&p_1467->g_691,&p_1467->g_691},{&p_1467->g_691,&p_1467->g_691,&p_1467->g_691,&p_1467->g_691,&p_1467->g_691,&p_1467->g_691,&p_1467->g_691,&p_1467->g_691},{&p_1467->g_691,&p_1467->g_691,&p_1467->g_691,&p_1467->g_691,&p_1467->g_691,&p_1467->g_691,&p_1467->g_691,&p_1467->g_691}}, // p_1467->g_900
        (void*)0, // p_1467->g_901
        (void*)0, // p_1467->g_902
        &p_1467->g_691, // p_1467->g_904
        (void*)0, // p_1467->g_990
        &p_1467->g_990, // p_1467->g_989
        (void*)0, // p_1467->g_995
        &p_1467->g_223, // p_1467->g_1022
        &p_1467->g_691, // p_1467->g_1131
        &p_1467->g_691, // p_1467->g_1134
        {0xB0F834DBD2717C59L,0xBC9A0D34BA30628DL,0xB0F834DBD2717C59L,0xB0F834DBD2717C59L,0xBC9A0D34BA30628DL,0xB0F834DBD2717C59L,0xB0F834DBD2717C59L,0xBC9A0D34BA30628DL,0xB0F834DBD2717C59L}, // p_1467->g_1187
        &p_1467->g_223, // p_1467->g_1188
        &p_1467->g_691, // p_1467->g_1205
        0x4E61L, // p_1467->g_1218
        &p_1467->g_97, // p_1467->g_1222
        &p_1467->g_1222, // p_1467->g_1221
        2L, // p_1467->g_1240
        0x3D6A71C6L, // p_1467->g_1370
        0x0E218B3DL, // p_1467->g_1371
        4294967292UL, // p_1467->g_1377
        (void*)0, // p_1467->g_1402
        &p_1467->g_1402, // p_1467->g_1401
        (-1L), // p_1467->g_1466
        sequence_input[get_global_id(0)], // p_1467->global_0_offset
        sequence_input[get_global_id(1)], // p_1467->global_1_offset
        sequence_input[get_global_id(2)], // p_1467->global_2_offset
        sequence_input[get_local_id(0)], // p_1467->local_0_offset
        sequence_input[get_local_id(1)], // p_1467->local_1_offset
        sequence_input[get_local_id(2)], // p_1467->local_2_offset
        sequence_input[get_group_id(0)], // p_1467->group_0_offset
        sequence_input[get_group_id(1)], // p_1467->group_1_offset
        sequence_input[get_group_id(2)], // p_1467->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_1468 = c_1469;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1467);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1467->g_12[i][j][k], "p_1467->g_12[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1467->g_41, "p_1467->g_41", print_hash_value);
    transparent_crc(p_1467->g_61, "p_1467->g_61", print_hash_value);
    transparent_crc(p_1467->g_67, "p_1467->g_67", print_hash_value);
    transparent_crc(p_1467->g_82, "p_1467->g_82", print_hash_value);
    transparent_crc(p_1467->g_86, "p_1467->g_86", print_hash_value);
    transparent_crc(p_1467->g_97, "p_1467->g_97", print_hash_value);
    transparent_crc(p_1467->g_102, "p_1467->g_102", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1467->g_103[i][j], "p_1467->g_103[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1467->g_132, "p_1467->g_132", print_hash_value);
    transparent_crc(p_1467->g_142, "p_1467->g_142", print_hash_value);
    transparent_crc(p_1467->g_146, "p_1467->g_146", print_hash_value);
    transparent_crc(p_1467->g_154, "p_1467->g_154", print_hash_value);
    transparent_crc(p_1467->g_160, "p_1467->g_160", print_hash_value);
    transparent_crc(p_1467->g_166, "p_1467->g_166", print_hash_value);
    transparent_crc(p_1467->g_187, "p_1467->g_187", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_1467->g_215[i][j][k], "p_1467->g_215[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1467->g_218, "p_1467->g_218", print_hash_value);
    transparent_crc(p_1467->g_227, "p_1467->g_227", print_hash_value);
    transparent_crc(p_1467->g_532, "p_1467->g_532", print_hash_value);
    transparent_crc(p_1467->g_650, "p_1467->g_650", print_hash_value);
    transparent_crc(p_1467->g_691, "p_1467->g_691", print_hash_value);
    transparent_crc(p_1467->g_775, "p_1467->g_775", print_hash_value);
    transparent_crc(p_1467->g_793, "p_1467->g_793", print_hash_value);
    transparent_crc(p_1467->g_802, "p_1467->g_802", print_hash_value);
    transparent_crc(p_1467->g_882, "p_1467->g_882", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1467->g_1187[i], "p_1467->g_1187[i]", print_hash_value);

    }
    transparent_crc(p_1467->g_1218, "p_1467->g_1218", print_hash_value);
    transparent_crc(p_1467->g_1240, "p_1467->g_1240", print_hash_value);
    transparent_crc(p_1467->g_1370, "p_1467->g_1370", print_hash_value);
    transparent_crc(p_1467->g_1371, "p_1467->g_1371", print_hash_value);
    transparent_crc(p_1467->g_1377, "p_1467->g_1377", print_hash_value);
    transparent_crc(p_1467->g_1466, "p_1467->g_1466", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 95; i++)
            transparent_crc(p_1467->g_special_values[i + 95 * get_linear_group_id()], "p_1467->g_special_values[i + 95 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 95; i++)
            transparent_crc(p_1467->l_special_values[i], "p_1467->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
