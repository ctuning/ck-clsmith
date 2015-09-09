// --atomics 52 ---fake_divergence -g 53,46,2 -l 1,23,2
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


// Seed: 81

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_26;
    uint8_t g_58;
    uint8_t g_80;
    uint32_t g_90;
    int16_t g_103;
    int32_t g_113;
    int32_t * volatile g_112;
    uint32_t g_122[5];
    int64_t g_127;
    uint16_t g_160;
    uint64_t g_179[6];
    int16_t g_193;
    uint32_t g_194[6];
    int8_t g_211[2][10][10];
    uint64_t g_308;
    volatile uint32_t g_335;
    int32_t *g_358[5][10];
    int32_t ** volatile g_357;
    uint32_t g_365;
    int8_t g_367;
    uint8_t *g_383[10];
    uint32_t *g_439;
    uint32_t g_460;
    uint16_t g_468[1][3];
    int32_t g_537;
    uint32_t *g_540;
    uint32_t * volatile *g_539;
    uint32_t ** volatile g_541[7];
    int8_t *g_548;
    int8_t * volatile * volatile g_547;
    int32_t ** volatile g_560;
    int32_t * volatile g_574;
    uint32_t **g_586;
    uint32_t *** volatile g_585;
    int8_t g_607;
    int8_t g_609;
    int32_t * volatile g_651[1][2][10];
    int32_t * volatile g_652;
    int32_t ** volatile g_659[8];
    int32_t ** volatile g_660;
    int16_t g_731;
    int32_t g_736;
    int32_t * volatile g_786;
    uint32_t ***g_805[1];
    int32_t ** volatile g_817;
    int32_t ** volatile g_818;
    int32_t * volatile g_829;
    uint32_t **g_846;
    int64_t g_894;
    int32_t * volatile g_898[5][10][5];
    int32_t * volatile g_899;
    int32_t ** volatile g_913;
    int32_t * volatile g_930;
    int8_t * volatile *g_962;
    int8_t * volatile **g_961;
    int8_t g_974;
    int32_t g_979;
    uint16_t g_1017;
    int64_t g_1027[7];
    uint32_t *** volatile g_1031;
    int32_t * volatile g_1033;
    uint64_t g_1053;
    volatile int32_t **** volatile g_1066;
    uint32_t g_1098;
    volatile int16_t g_1120;
    volatile uint8_t g_1165;
    uint16_t g_1190[10][2][2];
    uint64_t *g_1237;
    uint32_t g_1314[2][6][3];
    uint32_t g_1351;
    int8_t g_1359;
    int16_t g_1393;
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
uint32_t  func_1(struct S0 * p_1401);
int8_t  func_7(uint32_t  p_8, struct S0 * p_1401);
uint64_t  func_13(int32_t  p_14, struct S0 * p_1401);
int8_t  func_17(int32_t  p_18, struct S0 * p_1401);
int8_t  func_21(int8_t  p_22, struct S0 * p_1401);
int32_t  func_29(uint16_t  p_30, int8_t  p_31, int32_t  p_32, uint64_t  p_33, struct S0 * p_1401);
int16_t  func_34(int32_t  p_35, uint16_t  p_36, int64_t  p_37, int64_t  p_38, uint64_t  p_39, struct S0 * p_1401);
uint16_t  func_44(int32_t  p_45, int32_t  p_46, struct S0 * p_1401);
int16_t  func_47(uint64_t  p_48, struct S0 * p_1401);
int16_t  func_49(int64_t  p_50, uint32_t  p_51, uint64_t  p_52, int32_t  p_53, uint32_t  p_54, struct S0 * p_1401);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1401->g_26 p_1401->g_211 p_1401->g_460 p_1401->g_548 p_1401->g_537 p_1401->g_786 p_1401->g_113 p_1401->g_609 p_1401->g_468 p_1401->g_80 p_1401->g_736 p_1401->g_90 p_1401->g_357 p_1401->g_358 p_1401->g_817 p_1401->g_660 p_1401->g_818 p_1401->g_58 p_1401->g_439 p_1401->g_194 p_1401->g_829 p_1401->g_103 p_1401->g_127 p_1401->g_547 p_1401->g_179 p_1401->g_846 p_1401->g_899 p_1401->g_913 p_1401->g_607 p_1401->g_365 p_1401->g_160 p_1401->g_961 p_1401->g_979 p_1401->g_122 p_1401->g_1165 p_1401->g_308 p_1401->g_1033 p_1401->g_1053 p_1401->g_974 p_1401->g_731 p_1401->g_1190 p_1401->g_962 p_1401->g_1027 p_1401->g_193 p_1401->g_574 p_1401->g_1237 p_1401->g_1314 p_1401->g_894 p_1401->g_1359 p_1401->g_1120 p_1401->g_367 p_1401->g_112 p_1401->g_540 p_1401->g_1393
 * writes: p_1401->g_26 p_1401->g_113 p_1401->g_609 p_1401->g_211 p_1401->g_805 p_1401->g_468 p_1401->g_367 p_1401->g_358 p_1401->g_731 p_1401->g_58 p_1401->g_846 p_1401->g_127 p_1401->g_80 p_1401->g_586 p_1401->g_894 p_1401->g_194 p_1401->g_736 p_1401->g_607 p_1401->g_898 p_1401->g_974 p_1401->g_979 p_1401->g_160 p_1401->g_308 p_1401->g_1053 p_1401->g_103 p_1401->g_365 p_1401->g_651 p_1401->g_1027 p_1401->g_1237 p_1401->g_193 p_1401->g_383 p_1401->g_460 p_1401->g_1314 p_1401->g_1351 p_1401->g_1359
 */
uint32_t  func_1(struct S0 * p_1401)
{ /* block id: 4 */
    int16_t l_6 = 8L;
    int32_t l_960[6][8][5] = {{{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L}},{{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L}},{{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L}},{{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L}},{{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L}},{{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L},{0x5609995CL,0x54693B7FL,1L,0x4AEF5593L,1L}}};
    int32_t l_971 = (-8L);
    uint16_t l_972 = 65535UL;
    int8_t *l_973[2];
    int32_t *l_978 = &p_1401->g_979;
    int32_t **l_987 = &p_1401->g_358[3][9];
    int32_t ***l_986 = &l_987;
    int32_t ****l_988 = &l_986;
    uint32_t l_989 = 1UL;
    uint16_t *l_990 = &p_1401->g_160;
    uint8_t l_991 = 0x28L;
    uint64_t l_992 = 0UL;
    uint32_t ****l_1049 = &p_1401->g_805[0];
    uint32_t l_1097 = 0UL;
    uint16_t l_1115 = 65533UL;
    int32_t l_1119 = 0x4FC4E4C2L;
    uint64_t l_1121[5][7][7] = {{{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L},{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L},{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L},{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L},{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L},{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L},{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L}},{{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L},{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L},{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L},{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L},{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L},{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L},{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L}},{{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L},{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L},{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L},{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L},{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L},{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L},{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L}},{{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L},{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L},{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L},{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L},{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L},{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L},{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L}},{{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L},{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L},{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L},{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L},{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L},{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L},{0UL,0x181BAEC546C2D827L,1UL,0x1633765AAF8B4562L,1UL,18446744073709551613UL,0x8423D66BE21FC7F2L}}};
    uint32_t l_1212[4][1][9] = {{{0UL,0x4AE5E1D4L,1UL,0x70188138L,0x4AE5E1D4L,0x70188138L,1UL,0x4AE5E1D4L,0UL}},{{0UL,0x4AE5E1D4L,1UL,0x70188138L,0x4AE5E1D4L,0x70188138L,1UL,0x4AE5E1D4L,0UL}},{{0UL,0x4AE5E1D4L,1UL,0x70188138L,0x4AE5E1D4L,0x70188138L,1UL,0x4AE5E1D4L,0UL}},{{0UL,0x4AE5E1D4L,1UL,0x70188138L,0x4AE5E1D4L,0x70188138L,1UL,0x4AE5E1D4L,0UL}}};
    uint8_t l_1220 = 2UL;
    int32_t *l_1222 = &p_1401->g_736;
    int32_t l_1251 = 0x7BC16329L;
    uint16_t l_1325 = 0x7B0BL;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_973[i] = &p_1401->g_974;
    (*l_978) &= ((safe_rshift_func_int16_t_s_s((safe_add_func_int8_t_s_s(l_6, func_7(((safe_add_func_uint32_t_u_u((0x30DEL > (~(safe_lshift_func_int8_t_s_u((((l_960[3][2][0] ^= (func_13((l_6 >= l_6), p_1401) < p_1401->g_90)) != ((p_1401->g_961 != (void*)0) >= ((!(p_1401->g_974 = (l_972 = ((safe_lshift_func_int16_t_s_u((safe_lshift_func_int8_t_s_s((safe_div_func_uint8_t_u_u((((safe_div_func_uint32_t_u_u((l_971 |= p_1401->g_537), FAKE_DIVERGE(p_1401->local_1_offset, get_local_id(1), 10))) < p_1401->g_460) || (-1L)), l_6)), l_6)), 8)) <= l_6)))) || 255UL))) != FAKE_DIVERGE(p_1401->global_1_offset, get_global_id(1), 10)), 4)))), FAKE_DIVERGE(p_1401->group_1_offset, get_group_id(1), 10))) , FAKE_DIVERGE(p_1401->group_2_offset, get_group_id(2), 10)), p_1401))), l_6)) == p_1401->g_179[1]);
    (*l_978) = (((safe_div_func_uint8_t_u_u((*l_978), 0xBEL)) <= (0x79L | (safe_sub_func_uint32_t_u_u(((safe_lshift_func_uint16_t_u_s(((((((((*l_988) = l_986) == &p_1401->g_659[2]) >= ((**p_1401->g_846) = l_989)) , (((((*p_1401->g_439) &= 0x8B97BE7AL) | ((*l_978) > ((~((*l_990) = 0x5A97L)) > 65530UL))) , (**p_1401->g_547)) == (-9L))) , 0x22L) <= 0x05L) , p_1401->g_211[1][8][9]), p_1401->g_211[0][2][1])) ^ l_991), l_992)))) & p_1401->g_365);
    for (p_1401->g_979 = 0; (p_1401->g_979 >= 2); p_1401->g_979 = safe_add_func_uint64_t_u_u(p_1401->g_979, 5))
    { /* block id: 456 */
        uint32_t l_1007[6] = {9UL,0xB9CCEBF6L,9UL,9UL,0xB9CCEBF6L,9UL};
        int32_t l_1009 = (-4L);
        uint64_t *l_1010 = &l_992;
        uint32_t **l_1044[5][5] = {{&p_1401->g_439,&p_1401->g_439,&p_1401->g_439,&p_1401->g_439,&p_1401->g_439},{&p_1401->g_439,&p_1401->g_439,&p_1401->g_439,&p_1401->g_439,&p_1401->g_439},{&p_1401->g_439,&p_1401->g_439,&p_1401->g_439,&p_1401->g_439,&p_1401->g_439},{&p_1401->g_439,&p_1401->g_439,&p_1401->g_439,&p_1401->g_439,&p_1401->g_439},{&p_1401->g_439,&p_1401->g_439,&p_1401->g_439,&p_1401->g_439,&p_1401->g_439}};
        int32_t l_1050 = (-10L);
        int32_t ****l_1065[6][5][3] = {{{&l_986,(void*)0,&l_986},{&l_986,(void*)0,&l_986},{&l_986,(void*)0,&l_986},{&l_986,(void*)0,&l_986},{&l_986,(void*)0,&l_986}},{{&l_986,(void*)0,&l_986},{&l_986,(void*)0,&l_986},{&l_986,(void*)0,&l_986},{&l_986,(void*)0,&l_986},{&l_986,(void*)0,&l_986}},{{&l_986,(void*)0,&l_986},{&l_986,(void*)0,&l_986},{&l_986,(void*)0,&l_986},{&l_986,(void*)0,&l_986},{&l_986,(void*)0,&l_986}},{{&l_986,(void*)0,&l_986},{&l_986,(void*)0,&l_986},{&l_986,(void*)0,&l_986},{&l_986,(void*)0,&l_986},{&l_986,(void*)0,&l_986}},{{&l_986,(void*)0,&l_986},{&l_986,(void*)0,&l_986},{&l_986,(void*)0,&l_986},{&l_986,(void*)0,&l_986},{&l_986,(void*)0,&l_986}},{{&l_986,(void*)0,&l_986},{&l_986,(void*)0,&l_986},{&l_986,(void*)0,&l_986},{&l_986,(void*)0,&l_986},{&l_986,(void*)0,&l_986}}};
        int32_t *l_1118 = (void*)0;
        uint8_t l_1247 = 0x50L;
        uint8_t **l_1250 = &p_1401->g_383[5];
        int64_t *l_1252 = &p_1401->g_894;
        int32_t *l_1259[7][8][2] = {{{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979}},{{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979}},{{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979}},{{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979}},{{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979}},{{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979}},{{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979},{&p_1401->g_979,&p_1401->g_979}}};
        uint16_t l_1295 = 0x8D78L;
        uint16_t l_1318 = 0UL;
        int16_t l_1371 = (-1L);
        uint16_t l_1372 = 65528UL;
        int i, j, k;
        for (p_1401->g_607 = 0; (p_1401->g_607 <= 7); p_1401->g_607 += 1)
        { /* block id: 459 */
            uint64_t *l_1000 = &p_1401->g_308;
            uint64_t **l_999 = &l_1000;
            int16_t *l_1001 = &p_1401->g_731;
            int32_t **l_1002 = &l_978;
            int64_t *l_1008[9];
            uint32_t l_1106[5][3] = {{0x2894BADDL,0x59C72BCEL,0x2894BADDL},{0x2894BADDL,0x59C72BCEL,0x2894BADDL},{0x2894BADDL,0x59C72BCEL,0x2894BADDL},{0x2894BADDL,0x59C72BCEL,0x2894BADDL},{0x2894BADDL,0x59C72BCEL,0x2894BADDL}};
            int32_t l_1113 = 0x19C06045L;
            int i, j;
            for (i = 0; i < 9; i++)
                l_1008[i] = &p_1401->g_127;
            (1 + 1);
        }
        l_1121[3][4][2]--;
        for (p_1401->g_731 = 0; (p_1401->g_731 >= 3); ++p_1401->g_731)
        { /* block id: 544 */
            int32_t *l_1128 = &l_971;
            uint32_t l_1140 = 0x7725801AL;
            uint8_t l_1144 = 0xC2L;
            int32_t *l_1146 = &p_1401->g_736;
            int32_t l_1239 = 9L;
            int32_t l_1246[3][4][10] = {{{1L,0x7158375FL,8L,6L,0x7E6B8C1EL,0x202DBDCEL,5L,0x65D4318EL,1L,0L},{1L,0x7158375FL,8L,6L,0x7E6B8C1EL,0x202DBDCEL,5L,0x65D4318EL,1L,0L},{1L,0x7158375FL,8L,6L,0x7E6B8C1EL,0x202DBDCEL,5L,0x65D4318EL,1L,0L},{1L,0x7158375FL,8L,6L,0x7E6B8C1EL,0x202DBDCEL,5L,0x65D4318EL,1L,0L}},{{1L,0x7158375FL,8L,6L,0x7E6B8C1EL,0x202DBDCEL,5L,0x65D4318EL,1L,0L},{1L,0x7158375FL,8L,6L,0x7E6B8C1EL,0x202DBDCEL,5L,0x65D4318EL,1L,0L},{1L,0x7158375FL,8L,6L,0x7E6B8C1EL,0x202DBDCEL,5L,0x65D4318EL,1L,0L},{1L,0x7158375FL,8L,6L,0x7E6B8C1EL,0x202DBDCEL,5L,0x65D4318EL,1L,0L}},{{1L,0x7158375FL,8L,6L,0x7E6B8C1EL,0x202DBDCEL,5L,0x65D4318EL,1L,0L},{1L,0x7158375FL,8L,6L,0x7E6B8C1EL,0x202DBDCEL,5L,0x65D4318EL,1L,0L},{1L,0x7158375FL,8L,6L,0x7E6B8C1EL,0x202DBDCEL,5L,0x65D4318EL,1L,0L},{1L,0x7158375FL,8L,6L,0x7E6B8C1EL,0x202DBDCEL,5L,0x65D4318EL,1L,0L}}};
            int i, j, k;
            for (p_1401->g_308 = 0; (p_1401->g_308 <= 9); ++p_1401->g_308)
            { /* block id: 547 */
                int64_t l_1131[2][10];
                int16_t *l_1132[9] = {&l_6,(void*)0,&l_6,&l_6,(void*)0,&l_6,&l_6,(void*)0,&l_6};
                int32_t l_1141[8] = {0x76EC1FB1L,0x76EC1FB1L,0x76EC1FB1L,0x76EC1FB1L,0x76EC1FB1L,0x76EC1FB1L,0x76EC1FB1L,0x76EC1FB1L};
                int32_t l_1145 = 0x4134217CL;
                int i, j;
                for (i = 0; i < 2; i++)
                {
                    for (j = 0; j < 10; j++)
                        l_1131[i][j] = 0x02B9FC09899A0032L;
                }
                for (p_1401->g_607 = 0; (p_1401->g_607 <= 6); p_1401->g_607 += 1)
                { /* block id: 550 */
                    for (p_1401->g_1053 = 0; (p_1401->g_1053 <= 6); p_1401->g_1053 += 1)
                    { /* block id: 553 */
                        (*p_1401->g_818) = l_1128;
                        (***l_988) = l_1128;
                    }
                }
                l_1145 = (((p_1401->g_468[0][0] == (p_1401->g_103 = l_1131[0][5])) != ((safe_rshift_func_int8_t_s_s((safe_rshift_func_uint8_t_u_s(GROUP_DIVERGE(0, 1), 7)), 4)) <= (p_1401->g_90 == ((((l_1141[0] = (((*l_1010) &= 0xDF75C3D5026F000CL) == (safe_unary_minus_func_uint32_t_u((safe_lshift_func_int16_t_s_s(0x15DCL, (l_1140 ^ l_1131[0][5]))))))) != (safe_add_func_int64_t_s_s(l_1131[0][7], (l_1144 & (*l_978))))) > l_1131[0][5]) < 0x62L)))) < (*l_1128));
                (*p_1401->g_357) = l_1146;
            }
            for (l_1119 = 0; (l_1119 >= 0); l_1119 -= 1)
            { /* block id: 566 */
                int32_t *l_1147 = &p_1401->g_26;
                int32_t l_1192 = 0x695D33E4L;
                uint16_t *l_1213 = &p_1401->g_160;
                uint32_t l_1241 = 0x674F3025L;
                int8_t ***l_1244 = (void*)0;
                int8_t **l_1245 = &l_973[0];
                for (l_989 = 0; (l_989 <= 0); l_989 += 1)
                { /* block id: 569 */
                    uint32_t l_1191 = 0UL;
                    int32_t l_1221 = 0x0C335FCEL;
                    int32_t l_1240[4] = {0L,0L,0L,0L};
                    int i;
                    for (p_1401->g_365 = 0; (p_1401->g_365 <= 0); p_1401->g_365 += 1)
                    { /* block id: 572 */
                        int64_t *l_1148 = &p_1401->g_1027[2];
                        uint64_t l_1149 = 0xC9FAB5D5A650A564L;
                        uint8_t *l_1156 = &l_1144;
                        uint8_t *l_1168 = &p_1401->g_58;
                        int64_t **l_1175 = &l_1148;
                        int i, j, k;
                        p_1401->g_651[l_989][p_1401->g_365][(l_989 + 5)] = (GROUP_DIVERGE(1, 1) , l_1147);
                        (*l_1147) ^= ((((*l_1148) = 0x74CEADC4FD642C05L) <= p_1401->g_122[(l_1119 + 3)]) , l_1149);
                        (*p_1401->g_1033) = ((safe_mod_func_int16_t_s_s(((((safe_rshift_func_int16_t_s_u((safe_lshift_func_uint8_t_u_s(((*l_1156)++), (safe_add_func_uint8_t_u_u(((*l_1168) ^= ((safe_mul_func_int8_t_s_s(((safe_rshift_func_uint8_t_u_s((*l_1147), p_1401->g_1165)) & (safe_rshift_func_int16_t_s_s(0x424FL, p_1401->g_537))), 0x84L)) , (*l_1147))), (0x20F5L && (safe_lshift_func_uint16_t_u_s((safe_rshift_func_uint16_t_u_s(p_1401->g_308, (safe_div_func_int16_t_s_s(0x5B91L, 0xFB39L)))), (*l_1146)))))))), 13)) < (-1L)) , (-9L)) >= 4L), 0x1A88L)) == (**p_1401->g_846));
                        (*l_1147) = ((*l_1128) |= (&p_1401->g_1027[2] == ((*l_1175) = &p_1401->g_127)));
                    }
                    (*l_1147) = ((!(*l_978)) && ((safe_add_func_uint32_t_u_u((p_1401->g_365 = ((**p_1401->g_846) |= 0x2F792E40L)), ((safe_mul_func_uint16_t_u_u((safe_sub_func_uint32_t_u_u((safe_div_func_int32_t_s_s((-1L), ((p_1401->g_1053 , (*p_1401->g_829)) ^ 0x532B7AB5L))), (safe_add_func_uint16_t_u_u((safe_add_func_uint64_t_u_u((safe_lshift_func_uint16_t_u_s(((*l_990) &= p_1401->g_974), (p_1401->g_731 < ((p_1401->g_1190[7][0][0] == 0xF8E4L) > l_1191)))), l_1192)), 65528UL)))), p_1401->g_460)) >= (-5L)))) & (*l_978)));
                    (*p_1401->g_818) = ((safe_div_func_int64_t_s_s(((safe_mod_func_int8_t_s_s((safe_mul_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s(p_1401->g_1165, p_1401->g_979)), ((safe_lshift_func_uint8_t_u_u(((*p_1401->g_548) < FAKE_DIVERGE(p_1401->group_1_offset, get_group_id(1), 10)), 7)) , ((((safe_unary_minus_func_int8_t_s(((safe_mul_func_int8_t_s_s(((safe_lshift_func_uint16_t_u_u((safe_div_func_uint32_t_u_u((**p_1401->g_846), ((*l_1147) = l_1212[0][0][1]))), ((void*)0 != l_1213))) & (((~(GROUP_DIVERGE(2, 1) || (safe_div_func_int8_t_s_s((**p_1401->g_962), (((*l_1128) = (safe_mul_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((l_1191 != 0L), 1UL)), p_1401->g_194[2]))) & 0xA47081DEL))))) , 0UL) & 1UL)), l_1220)) , 0x77L))) <= l_1191) <= l_1221) , 251UL)))), GROUP_DIVERGE(1, 1))) || (*p_1401->g_899)), p_1401->g_468[0][0])) , l_1222);
                    for (l_1115 = 0; (l_1115 <= 4); l_1115 += 1)
                    { /* block id: 592 */
                        int64_t l_1231[3][8][8] = {{{0x5379D1F72569F15AL,6L,8L,(-1L),0L,0x6697DC2AA79F98DEL,0L,8L},{0x5379D1F72569F15AL,6L,8L,(-1L),0L,0x6697DC2AA79F98DEL,0L,8L},{0x5379D1F72569F15AL,6L,8L,(-1L),0L,0x6697DC2AA79F98DEL,0L,8L},{0x5379D1F72569F15AL,6L,8L,(-1L),0L,0x6697DC2AA79F98DEL,0L,8L},{0x5379D1F72569F15AL,6L,8L,(-1L),0L,0x6697DC2AA79F98DEL,0L,8L},{0x5379D1F72569F15AL,6L,8L,(-1L),0L,0x6697DC2AA79F98DEL,0L,8L},{0x5379D1F72569F15AL,6L,8L,(-1L),0L,0x6697DC2AA79F98DEL,0L,8L},{0x5379D1F72569F15AL,6L,8L,(-1L),0L,0x6697DC2AA79F98DEL,0L,8L}},{{0x5379D1F72569F15AL,6L,8L,(-1L),0L,0x6697DC2AA79F98DEL,0L,8L},{0x5379D1F72569F15AL,6L,8L,(-1L),0L,0x6697DC2AA79F98DEL,0L,8L},{0x5379D1F72569F15AL,6L,8L,(-1L),0L,0x6697DC2AA79F98DEL,0L,8L},{0x5379D1F72569F15AL,6L,8L,(-1L),0L,0x6697DC2AA79F98DEL,0L,8L},{0x5379D1F72569F15AL,6L,8L,(-1L),0L,0x6697DC2AA79F98DEL,0L,8L},{0x5379D1F72569F15AL,6L,8L,(-1L),0L,0x6697DC2AA79F98DEL,0L,8L},{0x5379D1F72569F15AL,6L,8L,(-1L),0L,0x6697DC2AA79F98DEL,0L,8L},{0x5379D1F72569F15AL,6L,8L,(-1L),0L,0x6697DC2AA79F98DEL,0L,8L}},{{0x5379D1F72569F15AL,6L,8L,(-1L),0L,0x6697DC2AA79F98DEL,0L,8L},{0x5379D1F72569F15AL,6L,8L,(-1L),0L,0x6697DC2AA79F98DEL,0L,8L},{0x5379D1F72569F15AL,6L,8L,(-1L),0L,0x6697DC2AA79F98DEL,0L,8L},{0x5379D1F72569F15AL,6L,8L,(-1L),0L,0x6697DC2AA79F98DEL,0L,8L},{0x5379D1F72569F15AL,6L,8L,(-1L),0L,0x6697DC2AA79F98DEL,0L,8L},{0x5379D1F72569F15AL,6L,8L,(-1L),0L,0x6697DC2AA79F98DEL,0L,8L},{0x5379D1F72569F15AL,6L,8L,(-1L),0L,0x6697DC2AA79F98DEL,0L,8L},{0x5379D1F72569F15AL,6L,8L,(-1L),0L,0x6697DC2AA79F98DEL,0L,8L}}};
                        uint64_t **l_1236[3];
                        int16_t *l_1238 = &l_6;
                        int i, j, k;
                        for (i = 0; i < 3; i++)
                            l_1236[i] = &l_1010;
                        (*l_1128) = ((safe_add_func_uint8_t_u_u((safe_lshift_func_int16_t_s_s((*l_1128), (((*l_1146) = (*l_1128)) , (p_1401->g_193 = ((((void*)0 == &l_6) == (safe_sub_func_uint16_t_u_u((safe_div_func_int8_t_s_s(((((*l_1128) , 0x34FAL) , (l_1231[1][1][5] <= (p_1401->g_1027[2] ^ ((safe_add_func_int64_t_s_s((p_1401->g_127 = (((((((*l_990)++) == ((*l_1238) = (((p_1401->g_1237 = &p_1401->g_308) == (void*)0) && (-1L)))) >= 0x4EFAL) == l_1231[1][4][1]) || (***p_1401->g_961)) & (-8L))), p_1401->g_736)) , 18446744073709551608UL)))) != (-1L)), 255UL)), (*l_1147)))) > p_1401->g_193))))), GROUP_DIVERGE(0, 1))) != l_1221);
                        if ((*p_1401->g_1033))
                            continue;
                        l_1241--;
                    }
                }
                if ((*p_1401->g_829))
                    continue;
                if ((*l_978))
                    continue;
                (*p_1401->g_574) = ((*l_1146) = ((p_1401->g_193 , (l_1245 = &l_973[0])) == (*p_1401->g_961)));
            }
            l_1247++;
        }
        if ((((*l_1250) = (void*)0) != ((((*l_1252) = (l_1251 , ((**p_1401->g_846) | GROUP_DIVERGE(0, 1)))) , (((safe_mod_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), (*l_978))) != (safe_add_func_int16_t_s_s(3L, (*l_1222)))) == (safe_mul_func_uint16_t_u_u(((*l_990) = (l_1259[4][7][1] != ((safe_rshift_func_int8_t_s_u((safe_mod_func_int64_t_s_s(((FAKE_DIVERGE(p_1401->local_0_offset, get_local_id(0), 10) >= ((l_1259[4][7][1] == (void*)0) <= FAKE_DIVERGE(p_1401->local_0_offset, get_local_id(0), 10))) <= (*p_1401->g_1237)), (*l_978))), 5)) , (void*)0))), (*l_978))))) , (void*)0)))
        { /* block id: 615 */
            uint32_t l_1284 = 0x0F1482E5L;
            int32_t l_1287 = 5L;
            int32_t l_1311 = 0x0F80584FL;
            int32_t l_1312 = (-6L);
            int64_t l_1317[4] = {0x2E1C463349CFA753L,0x2E1C463349CFA753L,0x2E1C463349CFA753L,0x2E1C463349CFA753L};
            int32_t l_1370 = 1L;
            int16_t *l_1375 = &p_1401->g_103;
            uint32_t l_1376 = 0x1924716CL;
            uint64_t l_1389[10][8] = {{0xCA153103012C7EBAL,0x388C2FA009CC00FBL,0x4D349D0DDE32129EL,0x9149705A6252D9B8L,0x4D349D0DDE32129EL,0x388C2FA009CC00FBL,0xCA153103012C7EBAL,0xF8AFC7932655ECF4L},{0xCA153103012C7EBAL,0x388C2FA009CC00FBL,0x4D349D0DDE32129EL,0x9149705A6252D9B8L,0x4D349D0DDE32129EL,0x388C2FA009CC00FBL,0xCA153103012C7EBAL,0xF8AFC7932655ECF4L},{0xCA153103012C7EBAL,0x388C2FA009CC00FBL,0x4D349D0DDE32129EL,0x9149705A6252D9B8L,0x4D349D0DDE32129EL,0x388C2FA009CC00FBL,0xCA153103012C7EBAL,0xF8AFC7932655ECF4L},{0xCA153103012C7EBAL,0x388C2FA009CC00FBL,0x4D349D0DDE32129EL,0x9149705A6252D9B8L,0x4D349D0DDE32129EL,0x388C2FA009CC00FBL,0xCA153103012C7EBAL,0xF8AFC7932655ECF4L},{0xCA153103012C7EBAL,0x388C2FA009CC00FBL,0x4D349D0DDE32129EL,0x9149705A6252D9B8L,0x4D349D0DDE32129EL,0x388C2FA009CC00FBL,0xCA153103012C7EBAL,0xF8AFC7932655ECF4L},{0xCA153103012C7EBAL,0x388C2FA009CC00FBL,0x4D349D0DDE32129EL,0x9149705A6252D9B8L,0x4D349D0DDE32129EL,0x388C2FA009CC00FBL,0xCA153103012C7EBAL,0xF8AFC7932655ECF4L},{0xCA153103012C7EBAL,0x388C2FA009CC00FBL,0x4D349D0DDE32129EL,0x9149705A6252D9B8L,0x4D349D0DDE32129EL,0x388C2FA009CC00FBL,0xCA153103012C7EBAL,0xF8AFC7932655ECF4L},{0xCA153103012C7EBAL,0x388C2FA009CC00FBL,0x4D349D0DDE32129EL,0x9149705A6252D9B8L,0x4D349D0DDE32129EL,0x388C2FA009CC00FBL,0xCA153103012C7EBAL,0xF8AFC7932655ECF4L},{0xCA153103012C7EBAL,0x388C2FA009CC00FBL,0x4D349D0DDE32129EL,0x9149705A6252D9B8L,0x4D349D0DDE32129EL,0x388C2FA009CC00FBL,0xCA153103012C7EBAL,0xF8AFC7932655ECF4L},{0xCA153103012C7EBAL,0x388C2FA009CC00FBL,0x4D349D0DDE32129EL,0x9149705A6252D9B8L,0x4D349D0DDE32129EL,0x388C2FA009CC00FBL,0xCA153103012C7EBAL,0xF8AFC7932655ECF4L}};
            uint64_t l_1392 = 0xC3E692BE12B58E04L;
            uint16_t *l_1394 = &l_1295;
            int i, j;
            for (p_1401->g_460 = 0; (p_1401->g_460 <= 2); p_1401->g_460 += 1)
            { /* block id: 618 */
                uint32_t l_1288 = 0x4F6961C4L;
                int32_t l_1292 = 0L;
                int32_t l_1293 = 0x15AA50B0L;
                int8_t **l_1332 = (void*)0;
                int8_t **l_1333 = &l_973[1];
                int64_t l_1339 = 0x26475780707A07D7L;
                int i;
                if (p_1401->g_179[(p_1401->g_460 + 2)])
                { /* block id: 619 */
                    uint32_t l_1285 = 6UL;
                    uint64_t l_1286 = 18446744073709551615UL;
                    for (p_1401->g_731 = 0; (p_1401->g_731 <= 2); p_1401->g_731 += 1)
                    { /* block id: 622 */
                        uint8_t *l_1266 = &l_1247;
                        int32_t *l_1267 = &p_1401->g_26;
                        int i, j;
                        (*p_1401->g_1033) = (safe_mod_func_uint8_t_u_u(((*l_1266) = 0x3AL), 0xFCL));
                        (*p_1401->g_913) = l_1267;
                        if (p_1401->g_179[(p_1401->g_731 + 3)])
                            continue;
                        l_1286 = ((*l_1222) = ((safe_lshift_func_uint16_t_u_s((((safe_mod_func_int32_t_s_s((safe_rshift_func_uint8_t_u_s((safe_add_func_uint64_t_u_u(((*p_1401->g_1237) = 0UL), p_1401->g_731)), 3)), p_1401->g_179[(p_1401->g_460 + 2)])) , (((*l_1267) = ((safe_add_func_int16_t_s_s(p_1401->g_1027[3], (((safe_rshift_func_int8_t_s_u((*p_1401->g_548), 7)) , &p_1401->g_1237) != (void*)0))) , (*l_978))) == (((safe_div_func_int32_t_s_s((safe_rshift_func_uint16_t_u_u(((*p_1401->g_548) && l_1284), p_1401->g_1053)), 0x6DB362C0L)) < l_1284) , 5L))) , p_1401->g_179[(p_1401->g_460 + 2)]), p_1401->g_1027[5])) , l_1285));
                    }
                }
                else
                { /* block id: 632 */
                    int32_t l_1294[9];
                    uint8_t *l_1308 = &l_1247;
                    int64_t *l_1309 = &p_1401->g_1027[4];
                    int i;
                    for (i = 0; i < 9; i++)
                        l_1294[i] = 0L;
                    l_1288--;
                    for (l_1119 = 0; (l_1119 <= 5); l_1119 += 1)
                    { /* block id: 636 */
                        int32_t *l_1291 = &l_960[3][2][0];
                        int i, j, k;
                        (*l_987) = l_1291;
                        l_1295++;
                        return p_1401->g_179[l_1119];
                    }
                    if ((p_1401->g_179[(p_1401->g_460 + 2)] > (((*l_1309) = (safe_lshift_func_uint8_t_u_s(((((*l_1308) = ((safe_mod_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s(0x64L, ((p_1401->g_179[3] <= (safe_mul_func_int8_t_s_s(0x76L, l_1287))) == ((safe_add_func_int32_t_s_s((GROUP_DIVERGE(0, 1) , 1L), (l_1294[2] = ((0xE1D6L ^ (18446744073709551615UL && (l_1252 == &p_1401->g_894))) , l_1294[1])))) <= (*p_1401->g_1237))))), 0x57L)) < p_1401->g_193)) || (**p_1401->g_547)) ^ 0UL), (**p_1401->g_962)))) || 0x7DC492D3F4A47005L)))
                    { /* block id: 644 */
                        uint32_t l_1310 = 4294967295UL;
                        return l_1310;
                    }
                    else
                    { /* block id: 646 */
                        int32_t l_1313 = 3L;
                        int i, j;
                        p_1401->g_1314[0][1][1]--;
                        if (l_1313)
                            break;
                    }
                    (***l_988) = &l_1311;
                }
                for (p_1401->g_308 = 0; (p_1401->g_308 <= 2); p_1401->g_308 += 1)
                { /* block id: 654 */
                    (*p_1401->g_574) |= ((*l_1222) |= 1L);
                    l_1293 |= (l_1311 = 0L);
                    for (l_1220 = 0; (l_1220 <= 2); l_1220 += 1)
                    { /* block id: 661 */
                        return l_1317[1];
                    }
                }
                --l_1318;
                (*l_1222) = (safe_div_func_int8_t_s_s((0xCE3BEAA8C5F9FBDFL < ((((((safe_mul_func_uint8_t_u_u((l_1292 = (l_1325 != (safe_sub_func_int8_t_s_s((&p_1401->g_439 == ((safe_add_func_int64_t_s_s(((((((*l_1333) = &p_1401->g_211[0][7][0]) == (*p_1401->g_547)) ^ (0UL && (((0UL != ((((safe_rshift_func_uint16_t_u_u(((~(p_1401->g_1053 != p_1401->g_736)) != FAKE_DIVERGE(p_1401->global_2_offset, get_global_id(2), 10)), l_1287)) && FAKE_DIVERGE(p_1401->group_2_offset, get_group_id(2), 10)) ^ (*l_978)) , p_1401->g_179[(p_1401->g_460 + 2)])) , p_1401->g_160) , p_1401->g_894))) , p_1401->g_211[0][8][7]) || 65532UL), 1UL)) , (void*)0)), 0L)))), l_1284)) || l_1284) && 0x26D9D2119709214DL) <= 5UL) <= 0x7FA8L) ^ l_1287)), l_1293));
                for (l_1220 = 0; (l_1220 <= 2); l_1220 += 1)
                { /* block id: 671 */
                    uint32_t l_1336[3][5][3] = {{{0x47B1DFA9L,1UL,0x3A9C73C2L},{0x47B1DFA9L,1UL,0x3A9C73C2L},{0x47B1DFA9L,1UL,0x3A9C73C2L},{0x47B1DFA9L,1UL,0x3A9C73C2L},{0x47B1DFA9L,1UL,0x3A9C73C2L}},{{0x47B1DFA9L,1UL,0x3A9C73C2L},{0x47B1DFA9L,1UL,0x3A9C73C2L},{0x47B1DFA9L,1UL,0x3A9C73C2L},{0x47B1DFA9L,1UL,0x3A9C73C2L},{0x47B1DFA9L,1UL,0x3A9C73C2L}},{{0x47B1DFA9L,1UL,0x3A9C73C2L},{0x47B1DFA9L,1UL,0x3A9C73C2L},{0x47B1DFA9L,1UL,0x3A9C73C2L},{0x47B1DFA9L,1UL,0x3A9C73C2L},{0x47B1DFA9L,1UL,0x3A9C73C2L}}};
                    uint32_t *l_1350 = &p_1401->g_1351;
                    int32_t l_1356[10] = {0x43585BEFL,(-7L),9L,(-7L),0x43585BEFL,0x43585BEFL,(-7L),9L,(-7L),0x43585BEFL};
                    int16_t *l_1357 = (void*)0;
                    int16_t *l_1358[2];
                    int i, j, k;
                    for (i = 0; i < 2; i++)
                        l_1358[i] = &p_1401->g_103;
                    if (l_1336[1][2][0])
                        break;
                    if ((*p_1401->g_1033))
                        continue;
                    if (l_1336[1][2][0])
                        continue;
                    p_1401->g_1359 |= (safe_sub_func_uint16_t_u_u(l_1339, (safe_mul_func_int16_t_s_s((safe_mod_func_int32_t_s_s((((safe_mod_func_int16_t_s_s(l_1336[1][2][0], (-3L))) < (!(safe_mod_func_uint8_t_u_u(((void*)0 != &p_1401->g_1237), (safe_sub_func_int32_t_s_s((((*l_1350) = p_1401->g_160) , (safe_mul_func_uint8_t_u_u(((safe_add_func_uint32_t_u_u((((l_1356[0] ^= (*p_1401->g_439)) > (*p_1401->g_829)) , ((p_1401->g_731 = ((l_1293 ^= (**p_1401->g_962)) & (**p_1401->g_962))) || l_1339)), (*p_1401->g_439))) | 0x34L), (*p_1401->g_548)))), l_1312)))))) < 0x10L), (*p_1401->g_439))), p_1401->g_90))));
                }
            }
            (***l_988) = &l_1311;
            l_1312 = ((((*p_1401->g_1033) = ((safe_div_func_int64_t_s_s((safe_sub_func_int64_t_s_s((((l_1371 = (((safe_mod_func_int64_t_s_s((p_1401->g_894 >= (0x10L <= ((p_1401->g_1120 , (*p_1401->g_961)) != (*p_1401->g_961)))), ((*p_1401->g_1237) ^ (((safe_add_func_uint16_t_u_u((p_1401->g_1314[1][2][1] & (safe_div_func_int8_t_s_s(2L, (l_1370 ^ 0x63A03A93L)))), p_1401->g_367)) , GROUP_DIVERGE(0, 1)) & 0L)))) && (-4L)) && 1L)) < (**p_1401->g_846)) & (-1L)), 18446744073709551615UL)), (*p_1401->g_1237))) & (*p_1401->g_548))) < 0x09522FE2L) , l_1372);
            (*l_1222) = (safe_lshift_func_int8_t_s_u(((((l_1376 |= ((*l_1375) = p_1401->g_122[3])) || ((*l_1394) = (safe_sub_func_uint32_t_u_u(((*p_1401->g_112) > ((((safe_div_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), ((safe_mod_func_uint16_t_u_u(FAKE_DIVERGE(p_1401->group_0_offset, get_group_id(0), 10), ((*p_1401->g_548) || (safe_sub_func_int64_t_s_s(((((*l_990) |= ((safe_div_func_int32_t_s_s((safe_mod_func_int8_t_s_s(((p_1401->g_80 , l_1389[0][1]) ^ (*l_1222)), (l_1376 , (safe_add_func_int8_t_s_s(((*p_1401->g_1237) , (((*p_1401->g_540) , (*p_1401->g_1237)) == l_1389[0][1])), 0UL))))), 0xFC53E5FCL)) != 4294967295UL)) == l_1311) != 0x0B44EAE0L), p_1401->g_1190[3][1][0]))))) , (*l_1222)))) && l_1311) & l_1376) == l_1392)), p_1401->g_1393)))) < l_1392) != l_1389[6][2]), l_1389[8][1]));
        }
        else
        { /* block id: 691 */
            int64_t l_1395[1][7][2] = {{{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L},{0L,0L}}};
            uint64_t l_1396 = 0x12A388FF8407C402L;
            int i, j, k;
            l_1396 &= l_1395[0][4][1];
            for (l_971 = 0; (l_971 <= 19); l_971++)
            { /* block id: 695 */
                if ((atomic_inc(&p_1401->l_atomic_input[15]) == 8))
                { /* block id: 697 */
                    int32_t l_1399 = 0x6A4201E8L;
                    uint64_t l_1400 = 0UL;
                    l_1400 = l_1399;
                    unsigned int result = 0;
                    result += l_1399;
                    result += l_1400;
                    atomic_add(&p_1401->l_special_values[15], result);
                }
                else
                { /* block id: 699 */
                    (1 + 1);
                }
            }
            for (l_1220 = 0; (l_1220 <= 0); l_1220 += 1)
            { /* block id: 705 */
                if ((*p_1401->g_899))
                    break;
                return (*p_1401->g_540);
            }
        }
    }
    return (*l_1222);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t  func_7(uint32_t  p_8, struct S0 * p_1401)
{ /* block id: 445 */
    uint16_t l_975 = 65535UL;
    --l_975;
    return p_8;
}


/* ------------------------------------------ */
/* 
 * reads : p_1401->g_26 p_1401->g_211 p_1401->g_460 p_1401->g_548 p_1401->g_537 p_1401->g_786 p_1401->g_113 p_1401->g_609 p_1401->g_468 p_1401->g_80 p_1401->g_736 p_1401->g_90 p_1401->g_357 p_1401->g_358 p_1401->g_817 p_1401->g_660 p_1401->g_818 p_1401->g_58 p_1401->g_439 p_1401->g_194 p_1401->g_829 p_1401->g_103 p_1401->g_127 p_1401->g_547 p_1401->g_179 p_1401->g_846 p_1401->g_899 p_1401->g_913 p_1401->g_607 p_1401->g_365 p_1401->g_160
 * writes: p_1401->g_26 p_1401->g_113 p_1401->g_609 p_1401->g_211 p_1401->g_805 p_1401->g_468 p_1401->g_367 p_1401->g_358 p_1401->g_731 p_1401->g_58 p_1401->g_846 p_1401->g_127 p_1401->g_80 p_1401->g_586 p_1401->g_894 p_1401->g_194 p_1401->g_736 p_1401->g_607 p_1401->g_898
 */
uint64_t  func_13(int32_t  p_14, struct S0 * p_1401)
{ /* block id: 5 */
    uint16_t l_23 = 0x4361L;
    uint16_t l_784 = 9UL;
    int32_t l_797 = 0x7FAFBE52L;
    uint32_t ***l_800 = &p_1401->g_586;
    uint32_t ****l_801 = &l_800;
    uint32_t ****l_802 = (void*)0;
    uint32_t ***l_804 = &p_1401->g_586;
    uint32_t ****l_803[3][2][9] = {{{&l_804,&l_804,&l_804,&l_804,&l_804,&l_804,&l_804,&l_804,&l_804},{&l_804,&l_804,&l_804,&l_804,&l_804,&l_804,&l_804,&l_804,&l_804}},{{&l_804,&l_804,&l_804,&l_804,&l_804,&l_804,&l_804,&l_804,&l_804},{&l_804,&l_804,&l_804,&l_804,&l_804,&l_804,&l_804,&l_804,&l_804}},{{&l_804,&l_804,&l_804,&l_804,&l_804,&l_804,&l_804,&l_804,&l_804},{&l_804,&l_804,&l_804,&l_804,&l_804,&l_804,&l_804,&l_804,&l_804}}};
    int32_t l_812 = (-1L);
    uint16_t *l_815 = &p_1401->g_468[0][2];
    int32_t l_825 = 0x4F81B769L;
    int8_t **l_868 = &p_1401->g_548;
    uint8_t l_870 = 247UL;
    int32_t l_882 = 0x5EA48665L;
    uint32_t ***l_886 = (void*)0;
    int64_t l_897 = (-1L);
    uint32_t *l_929 = &p_1401->g_90;
    int32_t l_956 = 0x6CE0D31BL;
    uint64_t l_959 = 18446744073709551609UL;
    int i, j, k;
    for (p_14 = 0; (p_14 <= (-8)); --p_14)
    { /* block id: 8 */
        int64_t *l_774 = (void*)0;
        int32_t l_781 = 0x4E016D88L;
        uint32_t l_785 = 4UL;
        int32_t *l_787 = &p_1401->g_26;
        (*p_1401->g_786) ^= (func_17((safe_mul_func_uint8_t_u_u((func_21(l_23, p_1401) | ((((-1L) != (((((+(((((safe_rshift_func_uint16_t_u_u(p_1401->g_211[0][7][0], 8)) , &p_1401->g_127) != l_774) , (safe_sub_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_s(((p_1401->g_460 & (FAKE_DIVERGE(p_1401->global_2_offset, get_global_id(2), 10) || (safe_div_func_int32_t_s_s(l_781, (safe_lshift_func_uint8_t_u_s(l_784, 7)))))) || GROUP_DIVERGE(2, 1)), (*p_1401->g_548))), FAKE_DIVERGE(p_1401->global_0_offset, get_global_id(0), 10)))) ^ l_784)) , 1L) , l_781) , 0x8FB4L) <= l_781)) <= 0x8CL) ^ p_1401->g_537)), l_785)), p_1401) <= p_14);
        for (p_1401->g_609 = 0; (p_1401->g_609 >= 0); p_1401->g_609 -= 1)
        { /* block id: 368 */
            int i, j;
            return p_1401->g_468[p_1401->g_609][p_1401->g_609];
        }
        (*l_787) |= 0x4F43D469L;
        (*l_787) |= p_14;
    }
    l_797 = ((safe_rshift_func_uint8_t_u_u(((safe_rshift_func_uint8_t_u_u((safe_lshift_func_int8_t_s_u(((*p_1401->g_548) &= (safe_unary_minus_func_int16_t_s((safe_sub_func_int32_t_s_s(l_797, 4294967295UL))))), 4)), ((safe_mul_func_int16_t_s_s(((((p_1401->g_805[0] = ((*l_801) = l_800)) == &p_1401->g_541[4]) || ((safe_sub_func_int16_t_s_s(((p_14 ^ (0xECF3L < (safe_add_func_int16_t_s_s((p_14 <= ((safe_mul_func_uint16_t_u_u(((*l_815) = (l_812 & (safe_rshift_func_uint8_t_u_s(l_812, p_14)))), p_1401->g_80)) < 0x54500DEBL)), p_1401->g_736)))) >= p_1401->g_90), 0x70E1L)) , 2L)) >= l_23), l_784)) ^ 2L))) > 18446744073709551610UL), p_14)) , l_784);
    for (p_1401->g_113 = 0; (p_1401->g_113 <= 0); p_1401->g_113 += 1)
    { /* block id: 381 */
        int32_t *l_816 = &p_1401->g_736;
        uint32_t **l_821 = (void*)0;
        uint8_t *l_822 = &p_1401->g_58;
        int32_t *l_826 = &p_1401->g_537;
        uint16_t l_867 = 0x7493L;
        uint32_t l_869 = 0x44D037D7L;
        uint32_t **l_871 = (void*)0;
        uint16_t l_922 = 0x0A0DL;
        int32_t *l_931 = &l_797;
        uint32_t l_958 = 0UL;
        for (p_1401->g_367 = 1; (p_1401->g_367 <= 7); p_1401->g_367 += 1)
        { /* block id: 384 */
            int i, j;
            l_816 = (*p_1401->g_357);
            if (p_1401->g_468[p_1401->g_113][p_1401->g_113])
                break;
            (*p_1401->g_817) = (*p_1401->g_357);
            for (p_1401->g_731 = 7; (p_1401->g_731 >= 0); p_1401->g_731 -= 1)
            { /* block id: 390 */
                (*p_1401->g_818) = (*p_1401->g_660);
                return p_1401->g_58;
            }
        }
        if ((safe_lshift_func_uint8_t_u_u(l_23, (((((void*)0 != l_821) & (((*l_822)--) > (((((*p_1401->g_439) > l_825) , (l_826 != l_816)) >= 0x4CL) != (-1L)))) | p_14) ^ p_14))))
        { /* block id: 396 */
            int32_t **l_827 = &l_816;
            int32_t *l_828 = (void*)0;
            uint32_t **l_845 = &p_1401->g_439;
            uint32_t ***l_844[7][1][4] = {{{(void*)0,&l_845,(void*)0,&l_845}},{{(void*)0,&l_845,(void*)0,&l_845}},{{(void*)0,&l_845,(void*)0,&l_845}},{{(void*)0,&l_845,(void*)0,&l_845}},{{(void*)0,&l_845,(void*)0,&l_845}},{{(void*)0,&l_845,(void*)0,&l_845}},{{(void*)0,&l_845,(void*)0,&l_845}}};
            uint8_t *l_872 = &p_1401->g_80;
            int16_t *l_873[2];
            int32_t *l_874 = &p_1401->g_26;
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_873[i] = &p_1401->g_193;
            (*l_827) = &l_825;
            (*p_1401->g_829) = ((**l_827) &= p_14);
            (*l_816) = (safe_mod_func_int32_t_s_s((*l_816), (*l_816)));
            (*l_874) = (((safe_lshift_func_uint16_t_u_u(((safe_mul_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(0x9DL, 246UL)), (l_797 &= (3UL <= ((**l_827) = (safe_rshift_func_uint16_t_u_s(((safe_mul_func_uint8_t_u_u((*l_816), (safe_mod_func_uint8_t_u_u(((*l_872) = ((p_1401->g_846 = &p_1401->g_439) == ((((safe_mul_func_int16_t_s_s(p_1401->g_103, ((((++(*l_822)) || ((safe_mod_func_int64_t_s_s((safe_add_func_uint32_t_u_u(((safe_lshift_func_uint8_t_u_u((l_825 == (safe_mod_func_int64_t_s_s((((safe_add_func_uint16_t_u_u((safe_mod_func_uint32_t_u_u((p_14 > (((p_1401->g_127 ^= (((safe_lshift_func_int8_t_s_u((((safe_sub_func_int16_t_s_s((l_825 <= (-5L)), l_867)) , (void*)0) != l_868), p_14)) && FAKE_DIVERGE(p_1401->group_2_offset, get_group_id(2), 10)) , p_14)) != p_1401->g_58) < l_869)), 0x39AC9D22L)), p_1401->g_537)) <= (**p_1401->g_547)) >= p_1401->g_609), l_23))), 5)) , p_14), 0x4BC40315L)), l_812)) , 0xD8L)) >= p_14) , l_870))) >= (*p_1401->g_548)) > (**l_827)) , l_871))), 1UL)))) <= 4294967288UL), p_14))))))) <= l_23), p_1401->g_179[1])) , 9L) | 1L);
        }
        else
        { /* block id: 408 */
            uint32_t *****l_875 = &l_803[2][0][7];
            uint32_t ***l_885 = &p_1401->g_846;
            uint32_t **l_888 = &p_1401->g_540;
            uint32_t ***l_887 = &l_888;
            int64_t *l_893 = &p_1401->g_894;
            int32_t l_895 = 5L;
            uint16_t *l_896 = &l_784;
            (*p_1401->g_899) = (((((*l_875) = (void*)0) == &p_1401->g_585) & ((*l_896) = (((**p_1401->g_846) = ((safe_lshift_func_uint8_t_u_s(((safe_mod_func_int32_t_s_s((*p_1401->g_786), (safe_add_func_uint8_t_u_u(l_882, (safe_add_func_int32_t_s_s(((l_885 == l_886) & ((((*l_800) = l_821) == ((*l_887) = l_821)) <= (safe_sub_func_uint32_t_u_u((((((*l_815) &= ((safe_rshift_func_int16_t_s_u((((*l_893) = (p_1401->g_194[1] & p_1401->g_194[1])) , 1L), 13)) , 0x7AE4L)) , 0x05D4L) <= 0x0B75L) == (**p_1401->g_846)), 9UL)))), (**p_1401->g_846))))))) == p_14), 3)) ^ l_895)) > p_14))) ^ l_897);
            if (l_870)
                break;
            if ((atomic_inc(&p_1401->l_atomic_input[22]) == 1))
            { /* block id: 419 */
                int16_t l_900[7] = {7L,0x170EL,7L,7L,0x170EL,7L,7L};
                uint8_t l_901 = 0UL;
                int32_t l_904 = (-5L);
                int32_t l_905 = 0x5A742B74L;
                int64_t l_906 = 0x7D8443C00562185DL;
                int16_t l_907 = 0L;
                uint64_t l_908 = 0x83FC009DC687EAEFL;
                int16_t l_911 = 1L;
                int16_t l_912 = 0L;
                int i;
                l_901--;
                ++l_908;
                l_912 = l_911;
                unsigned int result = 0;
                int l_900_i0;
                for (l_900_i0 = 0; l_900_i0 < 7; l_900_i0++) {
                    result += l_900[l_900_i0];
                }
                result += l_901;
                result += l_904;
                result += l_905;
                result += l_906;
                result += l_907;
                result += l_908;
                result += l_911;
                result += l_912;
                atomic_add(&p_1401->l_special_values[22], result);
            }
            else
            { /* block id: 423 */
                (1 + 1);
            }
        }
        (*p_1401->g_913) = &l_797;
        (*l_931) = (safe_div_func_uint16_t_u_u(0x40D2L, (safe_mul_func_int8_t_s_s((safe_add_func_int8_t_s_s(0x71L, (safe_add_func_uint32_t_u_u(((7L == p_1401->g_460) | l_922), ((safe_lshift_func_int8_t_s_s((safe_lshift_func_uint8_t_u_u(0xE7L, (safe_mul_func_uint8_t_u_u((l_797 , ((*l_822) = (l_929 != (void*)0))), p_14)))), p_14)) | p_1401->g_460))))), p_14))));
        for (p_1401->g_607 = 0; (p_1401->g_607 <= 0); p_1401->g_607 += 1)
        { /* block id: 432 */
            uint32_t *l_954 = &p_1401->g_122[2];
            uint32_t *l_955 = &p_1401->g_122[1];
            int32_t l_957 = (-1L);
            int i, j;
            l_825 &= ((l_957 &= (safe_mul_func_uint8_t_u_u((safe_add_func_uint8_t_u_u((0x204FL < ((safe_rshift_func_uint8_t_u_s(((*l_822) = 8UL), 0)) , (!((safe_add_func_uint64_t_u_u((p_1401->g_468[p_1401->g_113][(p_1401->g_607 + 1)] && (0x626EL != p_14)), (safe_lshift_func_int16_t_s_u((safe_mul_func_int8_t_s_s((*l_931), (((((safe_div_func_int16_t_s_s((((safe_mul_func_int8_t_s_s((*p_1401->g_548), (safe_div_func_int16_t_s_s((((((safe_rshift_func_int16_t_s_u((((safe_div_func_uint8_t_u_u((l_954 != (l_955 = &l_869)), (**p_1401->g_547))) || (**p_1401->g_547)) >= FAKE_DIVERGE(p_1401->local_2_offset, get_local_id(2), 10)), 12)) == 0x19F7C5A0L) != p_1401->g_607) , GROUP_DIVERGE(2, 1)) && 0x15C6F1A99DDD5743L), p_14)))) | p_14) & (*l_931)), l_797)) || p_1401->g_365) && p_1401->g_160) , (*l_931)) , l_956))), p_1401->g_103)))) == p_14)))), p_1401->g_468[p_1401->g_113][(p_1401->g_607 + 1)])), 4UL))) , l_958);
        }
    }
    for (p_1401->g_80 = 0; p_1401->g_80 < 5; p_1401->g_80 += 1)
    {
        for (l_882 = 0; l_882 < 10; l_882 += 1)
        {
            for (l_956 = 0; l_956 < 5; l_956 += 1)
            {
                p_1401->g_898[p_1401->g_80][l_882][l_956] = &p_1401->g_736;
            }
        }
    }
    return l_959;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t  func_17(int32_t  p_18, struct S0 * p_1401)
{ /* block id: 363 */
    return p_18;
}


/* ------------------------------------------ */
/* 
 * reads : p_1401->g_26
 * writes: p_1401->g_26
 */
int8_t  func_21(int8_t  p_22, struct S0 * p_1401)
{ /* block id: 9 */
    uint32_t l_66 = 0x239F94ADL;
    int32_t l_81 = 0x50C964B5L;
    int8_t l_84 = (-1L);
    for (p_22 = 0; (p_22 >= (-29)); p_22--)
    { /* block id: 12 */
        uint64_t l_82 = 1UL;
        int64_t l_760 = 0x22DF01815E51ABA7L;
        int32_t *l_764 = &l_81;
        int32_t *l_765 = &p_1401->g_26;
        int32_t *l_766 = &p_1401->g_736;
        int32_t *l_767 = &p_1401->g_26;
        int32_t *l_768[5] = {&p_1401->g_26,&p_1401->g_26,&p_1401->g_26,&p_1401->g_26,&p_1401->g_26};
        uint64_t l_769 = 0UL;
        int i;
        for (p_1401->g_26 = 0; (p_1401->g_26 == (-18)); p_1401->g_26 = safe_sub_func_int16_t_s_s(p_1401->g_26, 1))
        { /* block id: 15 */
            uint8_t *l_57 = &p_1401->g_58;
            int32_t l_74[5][1][5] = {{{0x6BC59458L,0x01C91930L,0x6BC59458L,0x6BC59458L,0x01C91930L}},{{0x6BC59458L,0x01C91930L,0x6BC59458L,0x6BC59458L,0x01C91930L}},{{0x6BC59458L,0x01C91930L,0x6BC59458L,0x6BC59458L,0x01C91930L}},{{0x6BC59458L,0x01C91930L,0x6BC59458L,0x6BC59458L,0x01C91930L}},{{0x6BC59458L,0x01C91930L,0x6BC59458L,0x6BC59458L,0x01C91930L}}};
            uint8_t *l_79 = &p_1401->g_80;
            uint32_t l_83 = 0x6F77A312L;
            uint64_t *l_557[9][3][8] = {{{&p_1401->g_179[1],&l_82,&p_1401->g_308,&l_82,&p_1401->g_308,&l_82,&p_1401->g_179[1],&l_82},{&p_1401->g_179[1],&l_82,&p_1401->g_308,&l_82,&p_1401->g_308,&l_82,&p_1401->g_179[1],&l_82},{&p_1401->g_179[1],&l_82,&p_1401->g_308,&l_82,&p_1401->g_308,&l_82,&p_1401->g_179[1],&l_82}},{{&p_1401->g_179[1],&l_82,&p_1401->g_308,&l_82,&p_1401->g_308,&l_82,&p_1401->g_179[1],&l_82},{&p_1401->g_179[1],&l_82,&p_1401->g_308,&l_82,&p_1401->g_308,&l_82,&p_1401->g_179[1],&l_82},{&p_1401->g_179[1],&l_82,&p_1401->g_308,&l_82,&p_1401->g_308,&l_82,&p_1401->g_179[1],&l_82}},{{&p_1401->g_179[1],&l_82,&p_1401->g_308,&l_82,&p_1401->g_308,&l_82,&p_1401->g_179[1],&l_82},{&p_1401->g_179[1],&l_82,&p_1401->g_308,&l_82,&p_1401->g_308,&l_82,&p_1401->g_179[1],&l_82},{&p_1401->g_179[1],&l_82,&p_1401->g_308,&l_82,&p_1401->g_308,&l_82,&p_1401->g_179[1],&l_82}},{{&p_1401->g_179[1],&l_82,&p_1401->g_308,&l_82,&p_1401->g_308,&l_82,&p_1401->g_179[1],&l_82},{&p_1401->g_179[1],&l_82,&p_1401->g_308,&l_82,&p_1401->g_308,&l_82,&p_1401->g_179[1],&l_82},{&p_1401->g_179[1],&l_82,&p_1401->g_308,&l_82,&p_1401->g_308,&l_82,&p_1401->g_179[1],&l_82}},{{&p_1401->g_179[1],&l_82,&p_1401->g_308,&l_82,&p_1401->g_308,&l_82,&p_1401->g_179[1],&l_82},{&p_1401->g_179[1],&l_82,&p_1401->g_308,&l_82,&p_1401->g_308,&l_82,&p_1401->g_179[1],&l_82},{&p_1401->g_179[1],&l_82,&p_1401->g_308,&l_82,&p_1401->g_308,&l_82,&p_1401->g_179[1],&l_82}},{{&p_1401->g_179[1],&l_82,&p_1401->g_308,&l_82,&p_1401->g_308,&l_82,&p_1401->g_179[1],&l_82},{&p_1401->g_179[1],&l_82,&p_1401->g_308,&l_82,&p_1401->g_308,&l_82,&p_1401->g_179[1],&l_82},{&p_1401->g_179[1],&l_82,&p_1401->g_308,&l_82,&p_1401->g_308,&l_82,&p_1401->g_179[1],&l_82}},{{&p_1401->g_179[1],&l_82,&p_1401->g_308,&l_82,&p_1401->g_308,&l_82,&p_1401->g_179[1],&l_82},{&p_1401->g_179[1],&l_82,&p_1401->g_308,&l_82,&p_1401->g_308,&l_82,&p_1401->g_179[1],&l_82},{&p_1401->g_179[1],&l_82,&p_1401->g_308,&l_82,&p_1401->g_308,&l_82,&p_1401->g_179[1],&l_82}},{{&p_1401->g_179[1],&l_82,&p_1401->g_308,&l_82,&p_1401->g_308,&l_82,&p_1401->g_179[1],&l_82},{&p_1401->g_179[1],&l_82,&p_1401->g_308,&l_82,&p_1401->g_308,&l_82,&p_1401->g_179[1],&l_82},{&p_1401->g_179[1],&l_82,&p_1401->g_308,&l_82,&p_1401->g_308,&l_82,&p_1401->g_179[1],&l_82}},{{&p_1401->g_179[1],&l_82,&p_1401->g_308,&l_82,&p_1401->g_308,&l_82,&p_1401->g_179[1],&l_82},{&p_1401->g_179[1],&l_82,&p_1401->g_308,&l_82,&p_1401->g_308,&l_82,&p_1401->g_179[1],&l_82},{&p_1401->g_179[1],&l_82,&p_1401->g_308,&l_82,&p_1401->g_308,&l_82,&p_1401->g_179[1],&l_82}}};
            int16_t *l_730[2][4] = {{&p_1401->g_731,&p_1401->g_731,&p_1401->g_731,&p_1401->g_731},{&p_1401->g_731,&p_1401->g_731,&p_1401->g_731,&p_1401->g_731}};
            int32_t *l_741 = &p_1401->g_736;
            int32_t *l_761 = &l_74[3][0][0];
            int8_t **l_763 = &p_1401->g_548;
            int8_t ***l_762 = &l_763;
            int i, j, k;
            (1 + 1);
        }
        ++l_769;
        (*l_767) &= 0x1E012952L;
    }
    return p_22;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_1401->g_113
 */
int32_t  func_29(uint16_t  p_30, int8_t  p_31, int32_t  p_32, uint64_t  p_33, struct S0 * p_1401)
{ /* block id: 347 */
    int32_t *l_732 = &p_1401->g_113;
    int32_t l_733 = 0x67ABA9CDL;
    int32_t *l_734 = &p_1401->g_113;
    int32_t *l_735[4];
    uint32_t l_737 = 0xA1216DE2L;
    uint32_t l_740[4] = {1UL,1UL,1UL,1UL};
    int i;
    for (i = 0; i < 4; i++)
        l_735[i] = &l_733;
    l_737--;
    p_32 = l_740[3];
    (*l_732) = 0x7BE874A4L;
    return p_31;
}


/* ------------------------------------------ */
/* 
 * reads : p_1401->g_607 p_1401->g_113 p_1401->g_574 p_1401->g_367 p_1401->g_127 p_1401->g_122 p_1401->g_652 p_1401->g_660 p_1401->g_26 p_1401->g_103 p_1401->g_439 p_1401->g_194 p_1401->g_547 p_1401->g_548 p_1401->g_211 p_1401->g_308 p_1401->g_160 p_1401->g_651 p_1401->g_468 p_1401->g_58
 * writes: p_1401->g_607 p_1401->g_468 p_1401->g_548 p_1401->g_58 p_1401->g_103 p_1401->g_127 p_1401->g_113 p_1401->g_358 p_1401->g_160 p_1401->g_651
 */
int16_t  func_34(int32_t  p_35, uint16_t  p_36, int64_t  p_37, int64_t  p_38, uint64_t  p_39, struct S0 * p_1401)
{ /* block id: 275 */
    uint16_t *l_639 = (void*)0;
    uint16_t *l_640 = &p_1401->g_468[0][2];
    int8_t *l_641 = &p_1401->g_607;
    int8_t **l_642 = &p_1401->g_548;
    int32_t l_643 = 0x38FC5D5CL;
    int8_t *l_644 = &p_1401->g_607;
    uint8_t *l_645 = &p_1401->g_58;
    int16_t *l_648 = (void*)0;
    int16_t *l_649 = &p_1401->g_103;
    int64_t *l_650 = &p_1401->g_127;
    int32_t *l_658 = &p_1401->g_113;
    int32_t l_669 = 0x55076BDDL;
    uint32_t **l_673 = &p_1401->g_540;
    int32_t l_676 = 0x1D99F27BL;
    int32_t l_684[9][7][2] = {{{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L}},{{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L}},{{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L}},{{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L}},{{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L}},{{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L}},{{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L}},{{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L}},{{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L},{0x7F9900A5L,0x73459025L}}};
    uint64_t l_691 = 18446744073709551615UL;
    int i, j, k;
    for (p_1401->g_607 = 3; (p_1401->g_607 > (-1)); --p_1401->g_607)
    { /* block id: 278 */
        return p_38;
    }
    (*p_1401->g_652) = (safe_add_func_uint16_t_u_u(p_1401->g_113, ((((*l_640) = 65529UL) || ((((*l_642) = l_641) != (l_644 = (l_643 , l_644))) != ((*p_1401->g_574) == (((*l_650) = ((((*l_645) = 2UL) , ((*l_649) = ((safe_mod_func_uint64_t_u_u(0xCD628AE8DCF505FDL, (p_1401->g_367 , 0xD0A7A8E6A7A89642L))) == p_1401->g_127))) , p_1401->g_122[0])) ^ FAKE_DIVERGE(p_1401->global_0_offset, get_global_id(0), 10))))) != l_643)));
    if ((safe_rshift_func_int16_t_s_u(((GROUP_DIVERGE(0, 1) , (void*)0) == &p_1401->g_439), 15)))
    { /* block id: 288 */
        int32_t *l_655 = &p_1401->g_113;
        int32_t **l_656 = &p_1401->g_358[0][0];
        (*l_656) = l_655;
    }
    else
    { /* block id: 290 */
        int32_t *l_657[5][5][7] = {{{&l_643,&p_1401->g_26,&l_643,(void*)0,&p_1401->g_26,&p_1401->g_26,&p_1401->g_113},{&l_643,&p_1401->g_26,&l_643,(void*)0,&p_1401->g_26,&p_1401->g_26,&p_1401->g_113},{&l_643,&p_1401->g_26,&l_643,(void*)0,&p_1401->g_26,&p_1401->g_26,&p_1401->g_113},{&l_643,&p_1401->g_26,&l_643,(void*)0,&p_1401->g_26,&p_1401->g_26,&p_1401->g_113},{&l_643,&p_1401->g_26,&l_643,(void*)0,&p_1401->g_26,&p_1401->g_26,&p_1401->g_113}},{{&l_643,&p_1401->g_26,&l_643,(void*)0,&p_1401->g_26,&p_1401->g_26,&p_1401->g_113},{&l_643,&p_1401->g_26,&l_643,(void*)0,&p_1401->g_26,&p_1401->g_26,&p_1401->g_113},{&l_643,&p_1401->g_26,&l_643,(void*)0,&p_1401->g_26,&p_1401->g_26,&p_1401->g_113},{&l_643,&p_1401->g_26,&l_643,(void*)0,&p_1401->g_26,&p_1401->g_26,&p_1401->g_113},{&l_643,&p_1401->g_26,&l_643,(void*)0,&p_1401->g_26,&p_1401->g_26,&p_1401->g_113}},{{&l_643,&p_1401->g_26,&l_643,(void*)0,&p_1401->g_26,&p_1401->g_26,&p_1401->g_113},{&l_643,&p_1401->g_26,&l_643,(void*)0,&p_1401->g_26,&p_1401->g_26,&p_1401->g_113},{&l_643,&p_1401->g_26,&l_643,(void*)0,&p_1401->g_26,&p_1401->g_26,&p_1401->g_113},{&l_643,&p_1401->g_26,&l_643,(void*)0,&p_1401->g_26,&p_1401->g_26,&p_1401->g_113},{&l_643,&p_1401->g_26,&l_643,(void*)0,&p_1401->g_26,&p_1401->g_26,&p_1401->g_113}},{{&l_643,&p_1401->g_26,&l_643,(void*)0,&p_1401->g_26,&p_1401->g_26,&p_1401->g_113},{&l_643,&p_1401->g_26,&l_643,(void*)0,&p_1401->g_26,&p_1401->g_26,&p_1401->g_113},{&l_643,&p_1401->g_26,&l_643,(void*)0,&p_1401->g_26,&p_1401->g_26,&p_1401->g_113},{&l_643,&p_1401->g_26,&l_643,(void*)0,&p_1401->g_26,&p_1401->g_26,&p_1401->g_113},{&l_643,&p_1401->g_26,&l_643,(void*)0,&p_1401->g_26,&p_1401->g_26,&p_1401->g_113}},{{&l_643,&p_1401->g_26,&l_643,(void*)0,&p_1401->g_26,&p_1401->g_26,&p_1401->g_113},{&l_643,&p_1401->g_26,&l_643,(void*)0,&p_1401->g_26,&p_1401->g_26,&p_1401->g_113},{&l_643,&p_1401->g_26,&l_643,(void*)0,&p_1401->g_26,&p_1401->g_26,&p_1401->g_113},{&l_643,&p_1401->g_26,&l_643,(void*)0,&p_1401->g_26,&p_1401->g_26,&p_1401->g_113},{&l_643,&p_1401->g_26,&l_643,(void*)0,&p_1401->g_26,&p_1401->g_26,&p_1401->g_113}}};
        uint64_t l_670 = 9UL;
        int i, j, k;
        (*p_1401->g_660) = (l_658 = l_657[2][0][1]);
        l_669 |= (safe_rshift_func_uint8_t_u_s((safe_div_func_int32_t_s_s((l_643 = (p_1401->g_26 > p_36)), (p_39 | (p_38 != p_39)))), (((((p_1401->g_103 |= p_1401->g_122[2]) <= (safe_div_func_int8_t_s_s(p_35, (~((safe_mod_func_uint32_t_u_u((!0xE1B82258L), 0xD1108931L)) >= p_38))))) <= 254UL) & (*p_1401->g_439)) <= 1L)));
        l_670--;
        l_676 = (((((void*)0 != l_673) <= (((safe_mod_func_uint8_t_u_u(6UL, (**p_1401->g_547))) > ((void*)0 == &p_1401->g_548)) , ((((0x4E47L & (((p_38 = 0x50998788AB3D4352L) >= 0x252119EC0BFF3574L) >= p_1401->g_194[4])) != 0x56979E2421DBD94CL) && GROUP_DIVERGE(1, 1)) , p_1401->g_308))) > p_1401->g_26) <= (-5L));
    }
    for (p_1401->g_160 = 0; (p_1401->g_160 <= 0); p_1401->g_160 += 1)
    { /* block id: 302 */
        int32_t *l_677 = &l_643;
        int32_t l_685 = 0x08FA8DA3L;
        int32_t l_686 = 0L;
        int32_t l_687 = 7L;
        int32_t l_688 = 1L;
        int32_t l_689 = (-7L);
        int32_t l_690 = 0x1A5BDF88L;
        for (p_1401->g_607 = 0; (p_1401->g_607 <= 0); p_1401->g_607 += 1)
        { /* block id: 305 */
            int32_t **l_678 = &l_658;
            int32_t *l_679 = &p_1401->g_113;
            int32_t *l_680 = &l_669;
            int32_t *l_681 = &p_1401->g_113;
            int32_t *l_682 = &l_643;
            int32_t *l_683[6][5][4] = {{{&l_669,&l_669,&l_669,&p_1401->g_26},{&l_669,&l_669,&l_669,&p_1401->g_26},{&l_669,&l_669,&l_669,&p_1401->g_26},{&l_669,&l_669,&l_669,&p_1401->g_26},{&l_669,&l_669,&l_669,&p_1401->g_26}},{{&l_669,&l_669,&l_669,&p_1401->g_26},{&l_669,&l_669,&l_669,&p_1401->g_26},{&l_669,&l_669,&l_669,&p_1401->g_26},{&l_669,&l_669,&l_669,&p_1401->g_26},{&l_669,&l_669,&l_669,&p_1401->g_26}},{{&l_669,&l_669,&l_669,&p_1401->g_26},{&l_669,&l_669,&l_669,&p_1401->g_26},{&l_669,&l_669,&l_669,&p_1401->g_26},{&l_669,&l_669,&l_669,&p_1401->g_26},{&l_669,&l_669,&l_669,&p_1401->g_26}},{{&l_669,&l_669,&l_669,&p_1401->g_26},{&l_669,&l_669,&l_669,&p_1401->g_26},{&l_669,&l_669,&l_669,&p_1401->g_26},{&l_669,&l_669,&l_669,&p_1401->g_26},{&l_669,&l_669,&l_669,&p_1401->g_26}},{{&l_669,&l_669,&l_669,&p_1401->g_26},{&l_669,&l_669,&l_669,&p_1401->g_26},{&l_669,&l_669,&l_669,&p_1401->g_26},{&l_669,&l_669,&l_669,&p_1401->g_26},{&l_669,&l_669,&l_669,&p_1401->g_26}},{{&l_669,&l_669,&l_669,&p_1401->g_26},{&l_669,&l_669,&l_669,&p_1401->g_26},{&l_669,&l_669,&l_669,&p_1401->g_26},{&l_669,&l_669,&l_669,&p_1401->g_26},{&l_669,&l_669,&l_669,&p_1401->g_26}}};
            int i, j, k;
            (*l_678) = l_677;
            for (l_669 = 0; (l_669 <= 0); l_669 += 1)
            { /* block id: 309 */
                int i, j, k;
                p_1401->g_651[p_1401->g_160][l_669][l_669] = p_1401->g_651[p_1401->g_607][p_1401->g_607][(p_1401->g_607 + 7)];
                (*l_678) = &l_643;
                if (p_1401->g_468[l_669][p_1401->g_160])
                    continue;
            }
            --l_691;
            for (p_1401->g_58 = (-16); (p_1401->g_58 != 36); p_1401->g_58++)
            { /* block id: 317 */
                (*p_1401->g_660) = (void*)0;
                if ((atomic_inc(&p_1401->l_atomic_input[34]) == 7))
                { /* block id: 320 */
                    int32_t l_696 = 0x426C3A5DL;
                    for (l_696 = 0; (l_696 != 17); l_696++)
                    { /* block id: 323 */
                        int32_t *l_699 = (void*)0;
                        int32_t l_701 = (-1L);
                        int32_t *l_700 = &l_701;
                        int64_t l_702 = 0L;
                        uint16_t l_703 = 65535UL;
                        uint8_t l_704 = 0x8CL;
                        uint8_t l_705 = 0x9FL;
                        int32_t l_706 = 0x4A25BED2L;
                        int32_t l_707 = 0x30D6E6F6L;
                        uint32_t l_708[2][7][6] = {{{4294967295UL,0x2F2EC292L,0x06D903CEL,0x3B7F3F86L,0x2F2EC292L,0x3B7F3F86L},{4294967295UL,0x2F2EC292L,0x06D903CEL,0x3B7F3F86L,0x2F2EC292L,0x3B7F3F86L},{4294967295UL,0x2F2EC292L,0x06D903CEL,0x3B7F3F86L,0x2F2EC292L,0x3B7F3F86L},{4294967295UL,0x2F2EC292L,0x06D903CEL,0x3B7F3F86L,0x2F2EC292L,0x3B7F3F86L},{4294967295UL,0x2F2EC292L,0x06D903CEL,0x3B7F3F86L,0x2F2EC292L,0x3B7F3F86L},{4294967295UL,0x2F2EC292L,0x06D903CEL,0x3B7F3F86L,0x2F2EC292L,0x3B7F3F86L},{4294967295UL,0x2F2EC292L,0x06D903CEL,0x3B7F3F86L,0x2F2EC292L,0x3B7F3F86L}},{{4294967295UL,0x2F2EC292L,0x06D903CEL,0x3B7F3F86L,0x2F2EC292L,0x3B7F3F86L},{4294967295UL,0x2F2EC292L,0x06D903CEL,0x3B7F3F86L,0x2F2EC292L,0x3B7F3F86L},{4294967295UL,0x2F2EC292L,0x06D903CEL,0x3B7F3F86L,0x2F2EC292L,0x3B7F3F86L},{4294967295UL,0x2F2EC292L,0x06D903CEL,0x3B7F3F86L,0x2F2EC292L,0x3B7F3F86L},{4294967295UL,0x2F2EC292L,0x06D903CEL,0x3B7F3F86L,0x2F2EC292L,0x3B7F3F86L},{4294967295UL,0x2F2EC292L,0x06D903CEL,0x3B7F3F86L,0x2F2EC292L,0x3B7F3F86L},{4294967295UL,0x2F2EC292L,0x06D903CEL,0x3B7F3F86L,0x2F2EC292L,0x3B7F3F86L}}};
                        int32_t *l_711[3][1][9] = {{{&l_707,&l_701,&l_707,&l_707,&l_701,&l_707,&l_707,&l_701,&l_707}},{{&l_707,&l_701,&l_707,&l_707,&l_701,&l_707,&l_707,&l_701,&l_707}},{{&l_707,&l_701,&l_707,&l_707,&l_701,&l_707,&l_707,&l_701,&l_707}}};
                        int32_t *l_712 = &l_707;
                        int i, j, k;
                        l_700 = l_699;
                        l_707 = ((((l_703 = l_702) , (((l_704 , 1UL) , 7UL) , (l_706 &= l_705))) , 0xBDE9D7FEL) , 0x7A86143FL);
                        ++l_708[1][0][1];
                        l_712 = l_711[0][0][7];
                    }
                    for (l_696 = 2; (l_696 <= (-13)); l_696--)
                    { /* block id: 333 */
                        int32_t l_716 = (-8L);
                        int32_t *l_715[9] = {(void*)0,&l_716,(void*)0,(void*)0,&l_716,(void*)0,(void*)0,&l_716,(void*)0};
                        int32_t *l_717 = &l_716;
                        int64_t l_718 = 0x1DDBA0A99463C004L;
                        int8_t l_719[5][10][5] = {{{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L}},{{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L}},{{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L}},{{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L}},{{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L},{0x10L,0x71L,0L,0x40L,0x58L}}};
                        int64_t l_720[8] = {0x31074C359EBE8457L,0x31074C359EBE8457L,0x31074C359EBE8457L,0x31074C359EBE8457L,0x31074C359EBE8457L,0x31074C359EBE8457L,0x31074C359EBE8457L,0x31074C359EBE8457L};
                        uint64_t l_721 = 0xDA38F3A632086F58L;
                        int32_t l_724 = 0x128D3EE6L;
                        int32_t l_725[1];
                        int32_t l_726[2][4] = {{0x424BDE5BL,0x424BDE5BL,0x424BDE5BL,0x424BDE5BL},{0x424BDE5BL,0x424BDE5BL,0x424BDE5BL,0x424BDE5BL}};
                        uint32_t l_727 = 0UL;
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                            l_725[i] = 0x1EFCB55DL;
                        l_717 = l_715[3];
                        l_721++;
                        l_727++;
                    }
                    unsigned int result = 0;
                    result += l_696;
                    atomic_add(&p_1401->l_special_values[34], result);
                }
                else
                { /* block id: 338 */
                    (1 + 1);
                }
            }
        }
        return p_36;
    }
    return p_38;
}


/* ------------------------------------------ */
/* 
 * reads : p_1401->g_194 p_1401->g_439 p_1401->g_211 p_1401->g_574 p_1401->g_113 p_1401->g_585 p_1401->g_547 p_1401->g_548 p_1401->g_127 p_1401->g_367 p_1401->g_112 p_1401->g_537 p_1401->g_468 p_1401->g_179 p_1401->g_193
 * writes: p_1401->g_113 p_1401->g_90 p_1401->g_103 p_1401->g_460 p_1401->g_194 p_1401->g_367 p_1401->g_308 p_1401->g_586 p_1401->g_607 p_1401->g_609 p_1401->g_160 p_1401->g_358 p_1401->g_537 p_1401->g_468 p_1401->g_211 p_1401->g_193
 */
uint16_t  func_44(int32_t  p_45, int32_t  p_46, struct S0 * p_1401)
{ /* block id: 219 */
    int32_t **l_567 = &p_1401->g_358[4][3];
    int32_t ***l_566 = &l_567;
    int32_t ***l_569[9][3] = {{&l_567,&l_567,(void*)0},{&l_567,&l_567,(void*)0},{&l_567,&l_567,(void*)0},{&l_567,&l_567,(void*)0},{&l_567,&l_567,(void*)0},{&l_567,&l_567,(void*)0},{&l_567,&l_567,(void*)0},{&l_567,&l_567,(void*)0},{&l_567,&l_567,(void*)0}};
    uint32_t *l_617[4];
    uint32_t l_634[1][4][1];
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_617[i] = &p_1401->g_194[1];
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 1; k++)
                l_634[i][j][k] = 1UL;
        }
    }
    for (p_46 = 1; (p_46 <= 24); p_46 = safe_add_func_uint64_t_u_u(p_46, 9))
    { /* block id: 222 */
        int8_t **l_565 = &p_1401->g_548;
        int32_t ****l_568 = &l_566;
        int32_t ***l_570 = &l_567;
        int16_t l_573 = 1L;
        uint32_t **l_583 = &p_1401->g_540;
        (*p_1401->g_574) &= ((safe_sub_func_int8_t_s_s(p_46, (((l_569[4][0] = ((*l_568) = ((l_565 != (void*)0) , l_566))) != l_570) && (p_1401->g_194[1] , (((safe_div_func_int32_t_s_s(l_573, (*p_1401->g_439))) > p_1401->g_211[0][7][0]) & 0x363076BCL))))) , p_46);
        for (p_1401->g_90 = 0; (p_1401->g_90 > 46); p_1401->g_90++)
        { /* block id: 228 */
            uint64_t l_605 = 0UL;
            for (p_1401->g_103 = 0; (p_1401->g_103 != 17); p_1401->g_103 = safe_add_func_uint16_t_u_u(p_1401->g_103, 9))
            { /* block id: 231 */
                int32_t l_604[2];
                int i;
                for (i = 0; i < 2; i++)
                    l_604[i] = 7L;
                for (p_1401->g_460 = 0; p_1401->g_460 < 6; p_1401->g_460 += 1)
                {
                    p_1401->g_194[p_1401->g_460] = 1UL;
                }
                for (p_1401->g_367 = 0; (p_1401->g_367 != (-14)); p_1401->g_367 = safe_sub_func_uint64_t_u_u(p_1401->g_367, 2))
                { /* block id: 235 */
                    int32_t l_599 = 0L;
                    int8_t *l_606 = &p_1401->g_607;
                    int8_t *l_608 = &p_1401->g_609;
                    uint16_t *l_610 = (void*)0;
                    for (p_1401->g_308 = 0; (p_1401->g_308 > 60); p_1401->g_308++)
                    { /* block id: 238 */
                        uint32_t ***l_584 = &l_583;
                        uint16_t l_587[7][4] = {{65534UL,5UL,0x0147L,5UL},{65534UL,5UL,0x0147L,5UL},{65534UL,5UL,0x0147L,5UL},{65534UL,5UL,0x0147L,5UL},{65534UL,5UL,0x0147L,5UL},{65534UL,5UL,0x0147L,5UL},{65534UL,5UL,0x0147L,5UL}};
                        int i, j;
                        (*p_1401->g_585) = ((*l_584) = l_583);
                        if (l_587[5][1])
                            continue;
                    }
                    (*p_1401->g_112) = ((FAKE_DIVERGE(p_1401->global_0_offset, get_global_id(0), 10) || 0x4F6EL) || ((safe_unary_minus_func_int64_t_s(p_46)) >= (+((((**p_1401->g_547) < (*p_1401->g_548)) > (p_1401->g_113 , (safe_mul_func_int16_t_s_s(((safe_sub_func_uint16_t_u_u((p_1401->g_160 = ((safe_div_func_uint64_t_u_u((safe_add_func_uint8_t_u_u(((((safe_add_func_uint8_t_u_u(l_599, ((*l_608) = (+((*l_606) = (safe_rshift_func_int8_t_s_u((safe_div_func_uint32_t_u_u(0xCEC0575FL, (+p_46))), (((((l_604[0] >= l_605) != p_46) > l_599) < p_46) | 0x6717C94C22A94B44L)))))))) <= 1L) > 0x130FD7EEL) , 0xE4L), p_45)), p_1401->g_127)) , GROUP_DIVERGE(0, 1))), p_1401->g_367)) <= 0x2FL), l_604[0])))) , 0x746D6BFFAA20B5A9L))));
                    (*l_567) = &p_46;
                    for (l_573 = 4; (l_573 >= 0); l_573 -= 1)
                    { /* block id: 250 */
                        uint32_t l_611 = 4294967287UL;
                        return l_611;
                    }
                }
            }
            if (p_45)
                break;
        }
    }
    for (p_1401->g_537 = 19; (p_1401->g_537 >= 14); p_1401->g_537 = safe_sub_func_int16_t_s_s(p_1401->g_537, 7))
    { /* block id: 260 */
        int16_t l_614 = (-1L);
        uint32_t **l_618 = (void*)0;
        uint32_t **l_619 = &l_617[0];
        uint16_t *l_622[1][9][2] = {{{&p_1401->g_468[0][0],&p_1401->g_468[0][0]},{&p_1401->g_468[0][0],&p_1401->g_468[0][0]},{&p_1401->g_468[0][0],&p_1401->g_468[0][0]},{&p_1401->g_468[0][0],&p_1401->g_468[0][0]},{&p_1401->g_468[0][0],&p_1401->g_468[0][0]},{&p_1401->g_468[0][0],&p_1401->g_468[0][0]},{&p_1401->g_468[0][0],&p_1401->g_468[0][0]},{&p_1401->g_468[0][0],&p_1401->g_468[0][0]},{&p_1401->g_468[0][0],&p_1401->g_468[0][0]}}};
        int16_t *l_627 = &l_614;
        uint8_t *l_628 = (void*)0;
        uint8_t *l_629 = (void*)0;
        uint8_t *l_630[1];
        int32_t l_631 = (-1L);
        int32_t l_632 = 2L;
        int32_t l_633 = 0x5D2C73BBL;
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_630[i] = &p_1401->g_80;
        (*p_1401->g_112) = (l_614 |= p_46);
        l_633 = (l_632 |= ((((l_631 &= (0x0827L != ((*l_627) = (p_1401->g_103 = ((((*p_1401->g_574) = 1L) == (safe_sub_func_int32_t_s_s(l_614, 7UL))) ^ (((*l_619) = l_617[0]) == (((p_1401->g_193 &= (safe_sub_func_int64_t_s_s(((((p_1401->g_468[0][0]--) & ((((*p_1401->g_548) &= l_614) <= (safe_mod_func_uint64_t_u_u(((+(l_614 | (GROUP_DIVERGE(2, 1) & (0x4F058638L || (((0UL > p_1401->g_179[1]) | l_614) == (-10L)))))) , FAKE_DIVERGE(p_1401->group_1_offset, get_group_id(1), 10)), 0xB7C4B7F981A2EC8BL))) < 0x23438944L)) == 0x69BAE57EL) == p_46), l_614))) == p_45) , (void*)0))))))) , 0x6D28C9C4L) & GROUP_DIVERGE(2, 1)) , l_614));
    }
    return l_634[0][0][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1401->g_560 p_1401->g_26
 * writes: p_1401->g_358
 */
int16_t  func_47(uint64_t  p_48, struct S0 * p_1401)
{ /* block id: 216 */
    int32_t *l_558 = &p_1401->g_26;
    int32_t **l_559 = (void*)0;
    (*p_1401->g_560) = l_558;
    return (*l_558);
}


/* ------------------------------------------ */
/* 
 * reads : p_1401->g_58 p_1401->g_90 p_1401->g_80 p_1401->g_26 p_1401->g_112 p_1401->g_113 p_1401->g_122 p_1401->g_127 p_1401->g_160 p_1401->g_103 p_1401->g_194 p_1401->g_193 p_1401->g_179 p_1401->g_308 p_1401->g_335 p_1401->g_357 p_1401->g_365 p_1401->g_211 p_1401->g_460 p_1401->g_367 p_1401->g_468 p_1401->g_439 p_1401->g_539 p_1401->g_541 p_1401->g_547
 * writes: p_1401->g_90 p_1401->g_103 p_1401->g_113 p_1401->g_122 p_1401->g_127 p_1401->g_160 p_1401->g_80 p_1401->g_179 p_1401->g_194 p_1401->g_211 p_1401->g_193 p_1401->g_58 p_1401->g_308 p_1401->g_335 p_1401->g_358 p_1401->g_365 p_1401->g_367 p_1401->g_383 p_1401->g_439 p_1401->g_460 p_1401->g_468 p_1401->g_537
 */
int16_t  func_49(int64_t  p_50, uint32_t  p_51, uint64_t  p_52, int32_t  p_53, uint32_t  p_54, struct S0 * p_1401)
{ /* block id: 19 */
    uint32_t *l_89[9][9][3] = {{{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0}},{{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0}},{{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0}},{{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0}},{{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0}},{{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0}},{{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0}},{{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0}},{{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0},{&p_1401->g_90,&p_1401->g_90,(void*)0}}};
    uint8_t l_101 = 0x66L;
    int16_t *l_102 = &p_1401->g_103;
    int64_t l_111 = 0x78B6DB4DB8DD0D48L;
    int32_t l_118[1][1];
    int32_t l_150 = 7L;
    int16_t l_159 = (-1L);
    int32_t **l_413 = &p_1401->g_358[4][3];
    int64_t l_433 = 0x5E4C3257E34BC5FEL;
    int8_t *l_435 = &p_1401->g_211[0][7][0];
    int8_t **l_434 = &l_435;
    uint8_t l_473 = 0x97L;
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
            l_118[i][j] = 0x6E3E797AL;
    }
    (*p_1401->g_112) = (safe_lshift_func_int16_t_s_u(((((safe_sub_func_uint32_t_u_u(((p_1401->g_90 |= p_1401->g_58) , p_53), ((~(safe_add_func_uint16_t_u_u((safe_sub_func_uint32_t_u_u((safe_div_func_int64_t_s_s((safe_rshift_func_int16_t_s_u((((p_1401->g_58 | (p_50 > l_101)) , ((*l_102) = (-1L))) != (((((safe_mod_func_int32_t_s_s((safe_mul_func_uint8_t_u_u(0UL, (((((l_101 != (safe_unary_minus_func_int8_t_s((safe_rshift_func_int8_t_s_u((l_101 && l_101), FAKE_DIVERGE(p_1401->local_1_offset, get_local_id(1), 10)))))) <= p_52) , 0x1CFDD8C9L) , 2L) != p_53))), p_1401->g_80)) , FAKE_DIVERGE(p_1401->group_0_offset, get_group_id(0), 10)) & 0x50074354AF31781FL) , p_51) < p_51)), 13)), 0xE0A50B65BDA1241BL)), FAKE_DIVERGE(p_1401->group_2_offset, get_group_id(2), 10))), p_1401->g_26))) && 0x49L))) , p_1401->g_26) > p_54) && l_111), 12));
    for (p_1401->g_90 = 2; (p_1401->g_90 == 57); p_1401->g_90 = safe_add_func_uint64_t_u_u(p_1401->g_90, 1))
    { /* block id: 25 */
        int32_t l_121 = 0L;
        int64_t *l_125 = &l_111;
        int64_t *l_126[8][5][3] = {{{&p_1401->g_127,(void*)0,&p_1401->g_127},{&p_1401->g_127,(void*)0,&p_1401->g_127},{&p_1401->g_127,(void*)0,&p_1401->g_127},{&p_1401->g_127,(void*)0,&p_1401->g_127},{&p_1401->g_127,(void*)0,&p_1401->g_127}},{{&p_1401->g_127,(void*)0,&p_1401->g_127},{&p_1401->g_127,(void*)0,&p_1401->g_127},{&p_1401->g_127,(void*)0,&p_1401->g_127},{&p_1401->g_127,(void*)0,&p_1401->g_127},{&p_1401->g_127,(void*)0,&p_1401->g_127}},{{&p_1401->g_127,(void*)0,&p_1401->g_127},{&p_1401->g_127,(void*)0,&p_1401->g_127},{&p_1401->g_127,(void*)0,&p_1401->g_127},{&p_1401->g_127,(void*)0,&p_1401->g_127},{&p_1401->g_127,(void*)0,&p_1401->g_127}},{{&p_1401->g_127,(void*)0,&p_1401->g_127},{&p_1401->g_127,(void*)0,&p_1401->g_127},{&p_1401->g_127,(void*)0,&p_1401->g_127},{&p_1401->g_127,(void*)0,&p_1401->g_127},{&p_1401->g_127,(void*)0,&p_1401->g_127}},{{&p_1401->g_127,(void*)0,&p_1401->g_127},{&p_1401->g_127,(void*)0,&p_1401->g_127},{&p_1401->g_127,(void*)0,&p_1401->g_127},{&p_1401->g_127,(void*)0,&p_1401->g_127},{&p_1401->g_127,(void*)0,&p_1401->g_127}},{{&p_1401->g_127,(void*)0,&p_1401->g_127},{&p_1401->g_127,(void*)0,&p_1401->g_127},{&p_1401->g_127,(void*)0,&p_1401->g_127},{&p_1401->g_127,(void*)0,&p_1401->g_127},{&p_1401->g_127,(void*)0,&p_1401->g_127}},{{&p_1401->g_127,(void*)0,&p_1401->g_127},{&p_1401->g_127,(void*)0,&p_1401->g_127},{&p_1401->g_127,(void*)0,&p_1401->g_127},{&p_1401->g_127,(void*)0,&p_1401->g_127},{&p_1401->g_127,(void*)0,&p_1401->g_127}},{{&p_1401->g_127,(void*)0,&p_1401->g_127},{&p_1401->g_127,(void*)0,&p_1401->g_127},{&p_1401->g_127,(void*)0,&p_1401->g_127},{&p_1401->g_127,(void*)0,&p_1401->g_127},{&p_1401->g_127,(void*)0,&p_1401->g_127}}};
        int32_t l_148 = 0x4743BD42L;
        uint16_t *l_223 = &p_1401->g_160;
        int8_t l_224[2];
        int32_t l_331 = (-8L);
        int32_t l_333[6][7][1] = {{{0x50DDB035L},{0x50DDB035L},{0x50DDB035L},{0x50DDB035L},{0x50DDB035L},{0x50DDB035L},{0x50DDB035L}},{{0x50DDB035L},{0x50DDB035L},{0x50DDB035L},{0x50DDB035L},{0x50DDB035L},{0x50DDB035L},{0x50DDB035L}},{{0x50DDB035L},{0x50DDB035L},{0x50DDB035L},{0x50DDB035L},{0x50DDB035L},{0x50DDB035L},{0x50DDB035L}},{{0x50DDB035L},{0x50DDB035L},{0x50DDB035L},{0x50DDB035L},{0x50DDB035L},{0x50DDB035L},{0x50DDB035L}},{{0x50DDB035L},{0x50DDB035L},{0x50DDB035L},{0x50DDB035L},{0x50DDB035L},{0x50DDB035L},{0x50DDB035L}},{{0x50DDB035L},{0x50DDB035L},{0x50DDB035L},{0x50DDB035L},{0x50DDB035L},{0x50DDB035L},{0x50DDB035L}}};
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_224[i] = 0x65L;
        if (((0x05D6CF981355DAA1L > (((safe_sub_func_int32_t_s_s((l_118[0][0] = 7L), (&p_1401->g_113 == (void*)0))) >= ((p_1401->g_26 >= (p_1401->g_122[2] ^= ((safe_sub_func_uint64_t_u_u(l_121, (!0x85ED16D00E5BD8EBL))) || (*p_1401->g_112)))) , (p_1401->g_127 &= ((*l_125) &= (safe_lshift_func_int8_t_s_u((((-1L) <= 0x19L) | GROUP_DIVERGE(2, 1)), 3)))))) ^ 0x5F19L)) || p_1401->g_122[3]))
        { /* block id: 30 */
            int32_t l_146[7] = {0x1B814282L,0x1B814282L,0x1B814282L,0x1B814282L,0x1B814282L,0x1B814282L,0x1B814282L};
            uint16_t l_147 = 0xDBF8L;
            int32_t *l_149 = &l_118[0][0];
            int i;
            (*l_149) = (0x1399L || ((safe_lshift_func_int16_t_s_u(((*l_102) = 0x79C6L), (safe_sub_func_uint16_t_u_u(((((safe_add_func_int64_t_s_s((p_51 != ((~l_101) , ((safe_mod_func_uint8_t_u_u(l_118[0][0], (safe_div_func_int32_t_s_s(((safe_rshift_func_int8_t_s_s((((safe_lshift_func_int8_t_s_u(7L, (l_148 = (safe_mul_func_uint16_t_u_u((safe_mul_func_int16_t_s_s((((l_146[0] > (0x4FA1A2BBL & l_147)) ^ (*p_1401->g_112)) > p_54), p_1401->g_58)), 1UL))))) < p_1401->g_113) == p_1401->g_122[2]), 4)) ^ p_1401->g_58), GROUP_DIVERGE(2, 1))))) && l_101))), p_1401->g_113)) < p_1401->g_26) , l_101) >= p_50), p_51)))) > p_52));
            if (l_148)
                break;
            if (p_50)
                continue;
            l_150 &= ((*l_149) ^= ((void*)0 == &p_1401->g_122[2]));
        }
        else
        { /* block id: 38 */
            int32_t *l_151 = &l_118[0][0];
            int32_t *l_152 = (void*)0;
            int32_t *l_153 = &l_148;
            int32_t *l_154 = &l_148;
            int32_t *l_155 = &l_118[0][0];
            int32_t *l_156 = &l_148;
            int32_t *l_157 = &l_148;
            int32_t *l_158[10][10][2] = {{{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150}},{{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150}},{{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150}},{{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150}},{{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150}},{{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150}},{{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150}},{{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150}},{{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150}},{{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150},{&l_150,&l_150}}};
            int i, j, k;
            p_1401->g_160--;
            for (p_50 = 28; (p_50 <= (-9)); p_50 = safe_sub_func_int8_t_s_s(p_50, 9))
            { /* block id: 42 */
                int64_t l_180 = (-1L);
                int32_t l_188 = 0x170B5AE5L;
                int32_t l_191 = 0x20CA041FL;
                uint8_t l_212 = 0x0EL;
                int16_t l_292[2];
                int32_t **l_295 = &l_152;
                int i;
                for (i = 0; i < 2; i++)
                    l_292[i] = 0x20BCL;
                if (((((((0xE8A8358CL >= 4294967295UL) | (p_1401->g_80 = (safe_mul_func_uint16_t_u_u((p_1401->g_127 > ((*p_1401->g_112) , 0x353FL)), ((p_1401->g_122[1] != ((safe_lshift_func_int8_t_s_u((l_155 != (void*)0), 5)) < (0x1CBC849BL > p_1401->g_160))) , 0xF95BL))))) > p_1401->g_127) != (*l_157)) == l_121) | 0x78AAL))
                { /* block id: 44 */
                    int32_t *l_177 = &l_118[0][0];
                    uint64_t *l_178 = &p_1401->g_179[1];
                    int32_t l_189 = 0x4F813512L;
                    uint16_t *l_222 = (void*)0;
                    uint8_t *l_227[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int8_t *l_234 = &p_1401->g_211[0][7][0];
                    int i;
                    if ((((((safe_add_func_uint16_t_u_u((safe_mul_func_int16_t_s_s(((*l_102) &= (l_180 = (safe_rshift_func_int16_t_s_s(((p_1401->g_58 < (*p_1401->g_112)) , (((*l_178) = (l_177 == &p_1401->g_26)) | (*l_177))), 0)))), (safe_div_func_uint32_t_u_u((safe_mul_func_int16_t_s_s((~0x49F7L), p_51)), (*l_177))))), 0L)) & (*l_177)) , (*p_1401->g_112)) | p_1401->g_58) >= p_1401->g_58))
                    { /* block id: 48 */
                        int32_t **l_185 = &l_153;
                        (*l_185) = &p_1401->g_113;
                    }
                    else
                    { /* block id: 50 */
                        int64_t l_190 = (-1L);
                        int32_t l_192 = 0x78919A24L;
                        (*l_156) = (safe_mul_func_int16_t_s_s(p_1401->g_160, (l_121 , 0x5748L)));
                        (*l_154) ^= (l_89[4][3][2] == &p_1401->g_122[2]);
                        ++p_1401->g_194[1];
                    }
                    for (p_52 = 0; (p_52 <= 1); p_52 += 1)
                    { /* block id: 57 */
                        uint16_t *l_209 = &p_1401->g_160;
                        int8_t *l_210 = &p_1401->g_211[0][7][0];
                        int i, j, k;
                        (*l_156) ^= ((*l_155) ^= 1L);
                        l_212 = ((*l_151) = (((*l_210) = (((safe_lshift_func_uint8_t_u_s(0x86L, 6)) >= p_1401->g_193) | ((p_51 != ((((*l_209) |= ((safe_mul_func_int8_t_s_s((&l_158[(p_52 + 4)][(p_52 + 6)][p_52] == &l_177), FAKE_DIVERGE(p_1401->global_2_offset, get_global_id(2), 10))) , (((*l_125) ^= 0x61A9CCBCD5FB0443L) ^ (safe_mod_func_int64_t_s_s((safe_lshift_func_int16_t_s_u(((safe_div_func_int8_t_s_s(((l_148 | (safe_mod_func_int64_t_s_s((((l_126[(p_52 + 2)][p_52][(p_52 + 1)] != (void*)0) & FAKE_DIVERGE(p_1401->global_0_offset, get_global_id(0), 10)) || p_1401->g_179[3]), 18446744073709551613UL))) & GROUP_DIVERGE(1, 1)), p_53)) <= GROUP_DIVERGE(0, 1)), p_1401->g_103)), 0x1A87665D8ACBC52FL))))) != (*l_177)) || p_52)) , p_52))) ^ p_50));
                    }
                    (*l_155) = (l_191 && (safe_unary_minus_func_int64_t_s((safe_sub_func_int64_t_s_s(((p_1401->g_127 || ((((p_1401->g_122[2] >= (safe_div_func_uint32_t_u_u(((p_50 > (safe_sub_func_int64_t_s_s(((((safe_add_func_int64_t_s_s(((((void*)0 != l_222) > ((void*)0 != l_223)) == ((*l_102) = (p_1401->g_113 , l_188))), p_53)) , p_52) , (*l_177)) != 0UL), 5UL))) , 0x41EFA3C5L), 0x5D35F0CBL))) || l_118[0][0]) | l_111) <= 0x9C2D32F8L)) , l_224[0]), p_54)))));
                    if ((((safe_mod_func_uint8_t_u_u(((*l_156) ^= 0xA4L), p_50)) | (safe_div_func_uint8_t_u_u((+(l_180 & ((*l_234) = (((p_53 & (p_1401->g_160 & (safe_rshift_func_uint16_t_u_s((safe_div_func_uint8_t_u_u(((l_118[0][0] = (*p_1401->g_112)) >= p_51), l_150)), 3)))) > 0UL) || 0x24721E7CADE12A71L)))), p_1401->g_179[1]))) >= l_224[0]))
                    { /* block id: 71 */
                        (*l_153) &= ((safe_add_func_int64_t_s_s(((*l_125) &= (p_1401->g_179[1] , (GROUP_DIVERGE(1, 1) , (safe_mul_func_int8_t_s_s(p_52, p_54))))), p_53)) || l_212);
                        (*l_177) = ((!(255UL && (((l_180 <= (((*l_223)++) == (((safe_rshift_func_int16_t_s_s(((safe_rshift_func_int8_t_s_s((safe_rshift_func_int8_t_s_u((p_1401->g_26 , l_148), 2)), 4)) > (l_159 < p_51)), 10)) , (safe_lshift_func_int16_t_s_s((safe_rshift_func_uint16_t_u_s((safe_mod_func_uint32_t_u_u((((0x70L != l_118[0][0]) || p_52) >= 1L), (-7L))), 8)), 11))) < (*l_151)))) <= 0x0275L) != 4UL))) < p_1401->g_122[4]);
                    }
                    else
                    { /* block id: 76 */
                        int16_t l_255 = 0L;
                        l_255 = l_191;
                        return p_54;
                    }
                }
                else
                { /* block id: 80 */
                    int32_t l_290[5][9][5] = {{{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L}},{{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L}},{{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L}},{{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L}},{{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L},{0x69E310B3L,0x1D2F6EB1L,0x6CCFA5AEL,0L,0L}}};
                    int i, j, k;
                    for (p_53 = 0; (p_53 <= 2); p_53 += 1)
                    { /* block id: 83 */
                        int16_t *l_291 = &p_1401->g_193;
                        int i;
                        (*l_157) = ((safe_div_func_uint64_t_u_u((((safe_div_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_u(((safe_add_func_uint8_t_u_u(((safe_mul_func_uint16_t_u_u((safe_add_func_int64_t_s_s(p_1401->g_179[(p_53 + 3)], (safe_sub_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), p_51)))), p_53)) ^ (((safe_add_func_uint16_t_u_u(p_50, (safe_mod_func_uint16_t_u_u((safe_mod_func_uint8_t_u_u((safe_add_func_int8_t_s_s((((((safe_mod_func_uint8_t_u_u(p_1401->g_122[2], 0x23L)) < ((safe_mul_func_uint16_t_u_u((safe_rshift_func_int8_t_s_u(6L, 5)), (safe_lshift_func_int16_t_s_u(((*l_291) = (safe_rshift_func_uint16_t_u_s(0xC7A0L, (safe_mod_func_uint16_t_u_u(((p_1401->g_103 = ((l_118[0][0] < (*p_1401->g_112)) ^ p_53)) && l_290[4][2][3]), 0x7BA4L))))), FAKE_DIVERGE(p_1401->global_2_offset, get_global_id(2), 10))))) || 0x5AL)) < l_290[4][2][3]) | l_212) <= FAKE_DIVERGE(p_1401->global_1_offset, get_global_id(1), 10)), p_1401->g_113)), p_50)), 0x6023L)))) && 0x087DAB1DE77E4B2AL) && p_52)), p_1401->g_179[1])) > p_1401->g_122[2]), p_1401->g_179[3])), 254UL)) & l_148) | FAKE_DIVERGE(p_1401->group_0_offset, get_group_id(0), 10)), l_292[0])) , 0x2CBB8F69L);
                        return p_52;
                    }
                }
                (*l_295) = (((*l_102) = (!(0x94450F6BL != (((safe_lshift_func_uint16_t_u_u((&p_1401->g_26 == &p_1401->g_113), 5)) != l_180) , (*p_1401->g_112))))) , &l_118[0][0]);
            }
            for (p_1401->g_58 = 2; (p_1401->g_58 == 44); p_1401->g_58 = safe_add_func_uint64_t_u_u(p_1401->g_58, 3))
            { /* block id: 95 */
                uint8_t l_302 = 251UL;
                int16_t *l_329 = &p_1401->g_103;
                int32_t l_330 = 0x26D4A181L;
                int32_t l_332 = 0x255B130CL;
                int32_t l_334 = 0x53EE78ADL;
                for (l_159 = 0; (l_159 <= 5); l_159 += 1)
                { /* block id: 98 */
                    int32_t **l_303 = &l_151;
                    uint64_t *l_304 = &p_1401->g_179[1];
                    int i;
                    (*l_155) |= (p_1401->g_194[l_159] != ((*l_304) = (((0x4A584BB0F4E434C9L != (+((0x2FL || ((p_1401->g_194[l_159] > (!5L)) != (((safe_add_func_uint8_t_u_u(FAKE_DIVERGE(p_1401->global_2_offset, get_global_id(2), 10), (safe_add_func_int8_t_s_s((l_302 , p_1401->g_194[2]), l_150)))) , ((*l_303) = (p_54 , (void*)0))) != (void*)0))) && p_1401->g_26))) < 0xD9F4A77C499EDAFDL) || p_50)));
                    for (p_1401->g_113 = 24; (p_1401->g_113 >= 12); --p_1401->g_113)
                    { /* block id: 104 */
                        int64_t l_307 = 0x0A9D3A49707FA9CBL;
                        (*l_303) = &l_148;
                        --p_1401->g_308;
                    }
                    if ((*p_1401->g_112))
                        break;
                }
                (*l_153) &= (safe_sub_func_uint32_t_u_u(((safe_add_func_int32_t_s_s(((p_1401->g_179[1] > ((safe_add_func_uint32_t_u_u((safe_div_func_uint8_t_u_u(0x6FL, (~(safe_mul_func_uint8_t_u_u(0x06L, GROUP_DIVERGE(2, 1)))))), (safe_lshift_func_uint16_t_u_s(p_54, ((p_53 >= ((*l_155) = ((safe_mul_func_uint16_t_u_u((safe_rshift_func_int16_t_s_s((((&p_1401->g_103 == &l_159) >= p_1401->g_179[1]) >= (l_329 == (void*)0)), 9)), p_1401->g_90)) == 0x8D476D608B34C292L))) , p_52))))) <= p_1401->g_90)) , 0x43242A6FL), l_224[0])) < 65530UL), GROUP_DIVERGE(1, 1)));
                --p_1401->g_335;
                if ((atomic_inc(&p_1401->l_atomic_input[19]) == 8))
                { /* block id: 114 */
                    int32_t l_338 = 0x4F198559L;
                    int32_t *l_356[1][1][10] = {{{&l_338,&l_338,&l_338,&l_338,&l_338,&l_338,&l_338,&l_338,&l_338,&l_338}}};
                    int i, j, k;
                    for (l_338 = 0; (l_338 <= 1); l_338 += 1)
                    { /* block id: 117 */
                        int8_t l_339 = 5L;
                        uint16_t l_340 = 0UL;
                        uint32_t l_341 = 0UL;
                        uint32_t l_342[4];
                        int i;
                        for (i = 0; i < 4; i++)
                            l_342[i] = 0x181C5730L;
                        l_339 = p_1401->g_179[(l_338 + 1)];
                        l_340 = (-5L);
                        l_342[1] &= l_341;
                    }
                    for (l_338 = 1; (l_338 <= 4); l_338 += 1)
                    { /* block id: 124 */
                        uint32_t l_345 = 0x2487F216L;
                        uint32_t *l_344 = &l_345;
                        uint32_t **l_343[9] = {&l_344,&l_344,&l_344,&l_344,&l_344,&l_344,&l_344,&l_344,&l_344};
                        uint32_t **l_346 = &l_344;
                        uint32_t **l_347 = (void*)0;
                        int8_t l_348 = 0x24L;
                        int16_t l_349 = 0x0FFAL;
                        int32_t l_350 = 0L;
                        int32_t l_351[9][2];
                        uint8_t l_352 = 0xC7L;
                        int32_t l_355 = 0x26DD1063L;
                        int i, j;
                        for (i = 0; i < 9; i++)
                        {
                            for (j = 0; j < 2; j++)
                                l_351[i][j] = 0x325E59AAL;
                        }
                        l_347 = (l_346 = l_343[6]);
                        ++l_352;
                        l_355 ^= 0x3CFF5D5AL;
                    }
                    l_356[0][0][8] = (void*)0;
                    unsigned int result = 0;
                    result += l_338;
                    atomic_add(&p_1401->l_special_values[19], result);
                }
                else
                { /* block id: 131 */
                    (1 + 1);
                }
            }
        }
    }
    (*p_1401->g_357) = &l_118[0][0];
    for (p_52 = 1; (p_52 <= 5); p_52 += 1)
    { /* block id: 140 */
        int32_t **l_361 = &p_1401->g_358[4][3];
        uint32_t *l_364 = &p_1401->g_365;
        int64_t l_366 = (-6L);
        int32_t *l_368 = &l_118[0][0];
        uint8_t *l_386 = (void*)0;
        int32_t *l_387 = &l_118[0][0];
        uint16_t l_410 = 65535UL;
        int8_t l_422 = 0L;
        int8_t **l_437 = (void*)0;
        int32_t l_475 = (-1L);
        uint64_t *l_514 = &p_1401->g_179[4];
        int i;
        (*l_368) = ((((((safe_rshift_func_int8_t_s_u((p_1401->g_194[p_52] || (((((p_1401->g_194[p_52] & ((*l_102) |= ((((*l_361) = (void*)0) == ((p_1401->g_367 = ((p_50 || p_1401->g_194[p_52]) , (((*l_364) ^= ((((((0xB21E731DA85AEE1AL >= (safe_sub_func_int16_t_s_s(1L, 0xAA21L))) , l_118[0][0]) || p_51) , (void*)0) != &l_111) , 1UL)) && l_366))) , l_368)) < 0L))) == l_101) , GROUP_DIVERGE(2, 1)) , p_54) >= 0x285A9660L)), 0)) , &p_1401->g_193) == (void*)0) < 0x6CL) && p_1401->g_113) != p_1401->g_335);
        for (p_1401->g_113 = 1; (p_1401->g_113 >= 0); p_1401->g_113 -= 1)
        { /* block id: 148 */
            uint32_t *l_377 = &p_1401->g_194[p_52];
            int32_t ***l_378 = &l_361;
            uint32_t l_430 = 0x4D10479EL;
            uint32_t *l_501 = (void*)0;
            uint64_t l_502 = 0x41C3F2647BBC5FF2L;
            uint8_t *l_554 = &l_473;
            (*l_378) = ((safe_mul_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(0x9D01L, (~((*l_102) = (((safe_mul_func_uint16_t_u_u(p_54, ((safe_div_func_int64_t_s_s(((0L && ((~p_50) <= ((((((l_377 == &p_51) || (!0x18L)) , (l_377 == (void*)0)) >= p_53) || l_118[0][0]) <= 0UL))) & 4294967295UL), l_101)) == FAKE_DIVERGE(p_1401->local_0_offset, get_local_id(0), 10)))) , (*l_368)) , 0x67BBL))))), p_52)) , (void*)0);
            for (l_111 = 1; (l_111 >= 0); l_111 -= 1)
            { /* block id: 153 */
                uint64_t l_438 = 0xE9C1B7322BF575D4L;
                int32_t l_474[4][10][6] = {{{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L}},{{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L}},{{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L}},{{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L},{(-1L),0x4EDE3030L,(-1L),0x60AA52B8L,0x1569356AL,0x60AA52B8L}}};
                int64_t l_503 = 0x17296573E7E7E8FBL;
                uint32_t l_542 = 0x6E7AB1FDL;
                int i, j, k;
                (*l_368) = ((safe_mod_func_int64_t_s_s((p_1401->g_211[p_1401->g_113][(p_1401->g_113 + 8)][(p_52 + 3)] && ((*l_377) = ((void*)0 == l_368))), (safe_rshift_func_uint8_t_u_s((((p_1401->g_383[5] = &p_1401->g_80) != ((safe_lshift_func_uint8_t_u_u((~FAKE_DIVERGE(p_1401->global_1_offset, get_global_id(1), 10)), 1)) , l_386)) != ((l_387 = l_368) == (void*)0)), ((p_1401->g_308 , (safe_sub_func_int64_t_s_s(p_1401->g_26, GROUP_DIVERGE(0, 1)))) ^ p_50))))) , (-8L));
                for (p_50 = 0; (p_50 <= 1); p_50 += 1)
                { /* block id: 160 */
                    int32_t *l_390 = &l_118[0][0];
                    int32_t ***l_395 = (void*)0;
                    int32_t l_402 = (-5L);
                    (*p_1401->g_357) = l_390;
                    for (p_1401->g_365 = 0; (p_1401->g_365 <= 1); p_1401->g_365 += 1)
                    { /* block id: 164 */
                        int32_t ***l_396 = &l_361;
                        uint8_t *l_397 = (void*)0;
                        uint8_t *l_398 = &p_1401->g_80;
                        int32_t l_399 = (-8L);
                        int32_t *l_400 = &l_118[0][0];
                        int32_t *l_401 = &l_150;
                        int32_t *l_403 = &l_399;
                        int32_t l_404 = 0L;
                        int32_t *l_405 = &l_118[0][0];
                        int32_t l_406 = (-9L);
                        int32_t *l_407 = &l_118[0][0];
                        int32_t *l_408 = &l_118[0][0];
                        int32_t *l_409[10] = {&l_118[0][0],&l_118[0][0],(void*)0,&l_118[0][0],&l_118[0][0],&l_118[0][0],&l_118[0][0],(void*)0,&l_118[0][0],&l_118[0][0]};
                        int i, j, k;
                        (*l_390) ^= ((((*l_398) |= ((safe_add_func_uint64_t_u_u(((p_50 ^ p_1401->g_58) | ((void*)0 != l_395)), ((void*)0 != l_396))) , GROUP_DIVERGE(0, 1))) == p_52) > p_1401->g_127);
                        l_410++;
                        (*l_403) = ((p_1401->g_58 , ((((&p_54 == (void*)0) , l_413) == (void*)0) > ((((safe_mul_func_int16_t_s_s((safe_lshift_func_int16_t_s_u((safe_mod_func_int8_t_s_s(((!((0xF9L | ((l_378 == ((safe_mod_func_uint16_t_u_u((((*l_390) && p_50) , p_52), p_1401->g_90)) , (void*)0)) & p_52)) <= 0xC9492575L)) , p_54), p_1401->g_26)), 7)), GROUP_DIVERGE(2, 1))) , p_54) == 0x4703L) & p_1401->g_160))) || l_422);
                        l_430 ^= ((safe_rshift_func_int16_t_s_s((p_1401->g_26 || (((*l_390) < (p_1401->g_113 != ((((*l_401) = 1L) != p_50) != ((safe_unary_minus_func_int8_t_s((p_1401->g_211[l_111][(p_50 + 7)][(p_1401->g_365 + 8)] |= p_1401->g_179[4]))) && (safe_rshift_func_uint8_t_u_s(FAKE_DIVERGE(p_1401->global_2_offset, get_global_id(2), 10), 3)))))) || (((p_1401->g_211[0][7][0] < (safe_add_func_uint32_t_u_u(0x7C4A7911L, (p_53 != p_50)))) != p_50) <= p_1401->g_194[1]))), p_1401->g_194[1])) && p_1401->g_194[1]);
                    }
                    if (((p_1401->g_127 = l_433) || (p_54 > 0x49A5L)))
                    { /* block id: 174 */
                        int8_t ***l_436[1][8] = {{&l_434,&l_434,&l_434,&l_434,&l_434,&l_434,&l_434,&l_434}};
                        int i, j;
                        l_437 = l_434;
                    }
                    else
                    { /* block id: 176 */
                        int32_t l_444 = 1L;
                        int32_t *l_445[9];
                        uint64_t l_446 = 6UL;
                        uint32_t *l_459[2];
                        uint16_t *l_463 = &p_1401->g_160;
                        uint16_t *l_466 = &l_410;
                        uint16_t *l_467 = &p_1401->g_468[0][0];
                        int i, j, k;
                        for (i = 0; i < 9; i++)
                            l_445[i] = &l_118[0][0];
                        for (i = 0; i < 2; i++)
                            l_459[i] = &p_1401->g_460;
                        (*l_387) = ((l_438 <= (p_1401->g_122[2] >= (p_50 , (l_390 != (p_1401->g_439 = &p_1401->g_194[p_52]))))) | ((*l_102) = (((safe_add_func_uint64_t_u_u(0x227830DFDF1AB05DL, (safe_lshift_func_int16_t_s_u((*l_368), 0)))) , ((l_438 < ((p_54 < p_1401->g_122[3]) || l_430)) == l_444)) == 0x64D0L)));
                        --l_446;
                        l_475 &= (p_1401->g_211[0][0][0] ^ (safe_mod_func_int32_t_s_s((l_474[0][5][3] = ((((*l_390) = p_52) || 255UL) < ((((void*)0 == l_445[4]) != (safe_mul_func_int8_t_s_s((safe_div_func_uint32_t_u_u(((((safe_add_func_uint32_t_u_u((safe_mod_func_uint64_t_u_u((((((*l_467) = ((p_1401->g_460++) , ((*l_466) = ((*l_463)--)))) , (&p_1401->g_308 == (((safe_sub_func_uint32_t_u_u((p_54 != ((safe_add_func_int64_t_s_s(p_1401->g_160, p_1401->g_367)) | 0x0684ADA701F40AD7L)), 0x35A495CFL)) | 0UL) , (void*)0))) <= 0x6C79L) >= l_473), p_1401->g_335)), p_1401->g_211[p_1401->g_113][(p_1401->g_113 + 8)][(p_52 + 3)])) < p_50) , 0UL) >= p_1401->g_58), 4294967294UL)), 9L))) ^ p_1401->g_211[p_1401->g_113][(p_1401->g_113 + 8)][(p_52 + 3)]))), p_52)));
                    }
                }
                l_118[0][0] = (((~p_52) <= ((((((safe_rshift_func_int8_t_s_u((safe_div_func_uint8_t_u_u((safe_rshift_func_int16_t_s_s((safe_mod_func_int16_t_s_s((safe_mod_func_uint32_t_u_u((18446744073709551614UL > ((((p_1401->g_468[0][0] , p_50) , ((safe_unary_minus_func_int64_t_s((safe_lshift_func_uint16_t_u_s((safe_sub_func_int64_t_s_s((*l_368), p_1401->g_211[0][9][4])), (safe_mul_func_int16_t_s_s((safe_add_func_int32_t_s_s(((safe_div_func_uint32_t_u_u((*p_1401->g_439), (safe_add_func_int32_t_s_s(p_51, (l_501 == l_89[4][1][0]))))) , p_54), l_502)), l_503)))))) , p_1401->g_335)) < p_54) == p_1401->g_194[1])), 0x33D24DBAL)), p_51)), p_1401->g_90)), p_1401->g_468[0][2])), p_50)) <= 0UL) , 8UL) < p_1401->g_468[0][0]) , p_51) >= (*p_1401->g_439))) & 0x79L);
                for (p_1401->g_308 = (-5); (p_1401->g_308 != 8); p_1401->g_308 = safe_add_func_uint64_t_u_u(p_1401->g_308, 3))
                { /* block id: 193 */
                    uint64_t l_538 = 0xB3AD6472F117D059L;
                    int32_t l_543 = (-10L);
                    for (l_503 = 0; (l_503 <= 3); l_503 += 1)
                    { /* block id: 196 */
                        int32_t ***l_531 = (void*)0;
                        int32_t *l_536 = &p_1401->g_537;
                        int i, j, k;
                        l_543 ^= ((safe_rshift_func_int8_t_s_s((!(safe_mod_func_uint8_t_u_u(p_1401->g_179[p_1401->g_113], (safe_mod_func_int32_t_s_s((l_474[(p_1401->g_113 + 1)][(p_52 + 2)][(l_503 + 1)] = (((((l_474[l_503][p_52][l_111] != (((safe_lshift_func_uint16_t_u_s((((void*)0 != l_514) & ((+(safe_rshift_func_uint16_t_u_u((safe_add_func_int32_t_s_s(((safe_lshift_func_int16_t_s_s(((*l_102) = (safe_mod_func_uint32_t_u_u((safe_sub_func_uint64_t_u_u((*l_368), p_51)), (safe_div_func_int16_t_s_s((safe_lshift_func_int16_t_s_u((safe_rshift_func_int16_t_s_s((l_531 != &p_1401->g_357), ((((*l_536) = ((safe_mod_func_int32_t_s_s((safe_div_func_int16_t_s_s(0x1499L, p_1401->g_113)), p_50)) < p_52)) , GROUP_DIVERGE(2, 1)) && p_1401->g_122[0]))), p_1401->g_365)), GROUP_DIVERGE(0, 1)))))), 4)) , l_503), p_51)), p_1401->g_211[0][7][0]))) >= 1L)), 13)) , (void*)0) != &l_474[0][5][3])) >= p_51) ^ l_538) , p_1401->g_539) != p_1401->g_541[3])), FAKE_DIVERGE(p_1401->local_1_offset, get_local_id(1), 10)))))), p_52)) , l_542);
                    }
                    if (p_53)
                        break;
                    for (l_438 = 0; (l_438 != 60); l_438 = safe_add_func_uint16_t_u_u(l_438, 1))
                    { /* block id: 205 */
                        int16_t l_546[10] = {8L,8L,8L,8L,8L,8L,8L,8L,8L,8L};
                        int i;
                        l_474[2][2][0] = ((l_546[5] <= 4L) , ((p_1401->g_547 == (void*)0) == ((safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_1401->global_2_offset, get_global_id(2), 10), ((p_1401->g_179[3] ^ p_51) , (safe_unary_minus_func_int32_t_s(((*l_387) = (safe_mod_func_uint8_t_u_u(((*l_554) ^= ((((void*)0 != l_554) , ((safe_add_func_int64_t_s_s(l_503, p_1401->g_179[1])) || p_54)) <= p_50)), 0x4FL)))))))) >= l_474[1][6][3])));
                    }
                }
            }
        }
    }
    return p_1401->g_468[0][0];
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[52];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 52; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[52];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 52; i++)
            l_special_values[i] = 0;
    struct S0 c_1402;
    struct S0* p_1401 = &c_1402;
    struct S0 c_1403 = {
        0x480AE7B1L, // p_1401->g_26
        0x94L, // p_1401->g_58
        1UL, // p_1401->g_80
        0x5F9F7E48L, // p_1401->g_90
        0x74B5L, // p_1401->g_103
        0x74891BC5L, // p_1401->g_113
        &p_1401->g_113, // p_1401->g_112
        {0UL,0UL,0UL,0UL,0UL}, // p_1401->g_122
        2L, // p_1401->g_127
        1UL, // p_1401->g_160
        {18446744073709551607UL,18446744073709551607UL,18446744073709551607UL,18446744073709551607UL,18446744073709551607UL,18446744073709551607UL}, // p_1401->g_179
        0x0F8FL, // p_1401->g_193
        {0UL,0UL,0UL,0UL,0UL,0UL}, // p_1401->g_194
        {{{0x78L,(-10L),0x3EL,0L,0x3EL,(-10L),0x78L,0L,(-1L),0x67L},{0x78L,(-10L),0x3EL,0L,0x3EL,(-10L),0x78L,0L,(-1L),0x67L},{0x78L,(-10L),0x3EL,0L,0x3EL,(-10L),0x78L,0L,(-1L),0x67L},{0x78L,(-10L),0x3EL,0L,0x3EL,(-10L),0x78L,0L,(-1L),0x67L},{0x78L,(-10L),0x3EL,0L,0x3EL,(-10L),0x78L,0L,(-1L),0x67L},{0x78L,(-10L),0x3EL,0L,0x3EL,(-10L),0x78L,0L,(-1L),0x67L},{0x78L,(-10L),0x3EL,0L,0x3EL,(-10L),0x78L,0L,(-1L),0x67L},{0x78L,(-10L),0x3EL,0L,0x3EL,(-10L),0x78L,0L,(-1L),0x67L},{0x78L,(-10L),0x3EL,0L,0x3EL,(-10L),0x78L,0L,(-1L),0x67L},{0x78L,(-10L),0x3EL,0L,0x3EL,(-10L),0x78L,0L,(-1L),0x67L}},{{0x78L,(-10L),0x3EL,0L,0x3EL,(-10L),0x78L,0L,(-1L),0x67L},{0x78L,(-10L),0x3EL,0L,0x3EL,(-10L),0x78L,0L,(-1L),0x67L},{0x78L,(-10L),0x3EL,0L,0x3EL,(-10L),0x78L,0L,(-1L),0x67L},{0x78L,(-10L),0x3EL,0L,0x3EL,(-10L),0x78L,0L,(-1L),0x67L},{0x78L,(-10L),0x3EL,0L,0x3EL,(-10L),0x78L,0L,(-1L),0x67L},{0x78L,(-10L),0x3EL,0L,0x3EL,(-10L),0x78L,0L,(-1L),0x67L},{0x78L,(-10L),0x3EL,0L,0x3EL,(-10L),0x78L,0L,(-1L),0x67L},{0x78L,(-10L),0x3EL,0L,0x3EL,(-10L),0x78L,0L,(-1L),0x67L},{0x78L,(-10L),0x3EL,0L,0x3EL,(-10L),0x78L,0L,(-1L),0x67L},{0x78L,(-10L),0x3EL,0L,0x3EL,(-10L),0x78L,0L,(-1L),0x67L}}}, // p_1401->g_211
        0x48D75DF0EC7BDEF2L, // p_1401->g_308
        1UL, // p_1401->g_335
        {{&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113},{&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113},{&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113},{&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113},{&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113,&p_1401->g_113}}, // p_1401->g_358
        &p_1401->g_358[4][3], // p_1401->g_357
        4294967295UL, // p_1401->g_365
        0x46L, // p_1401->g_367
        {&p_1401->g_58,&p_1401->g_58,&p_1401->g_80,&p_1401->g_58,&p_1401->g_58,&p_1401->g_58,&p_1401->g_58,&p_1401->g_80,&p_1401->g_58,&p_1401->g_58}, // p_1401->g_383
        &p_1401->g_194[0], // p_1401->g_439
        0x77A27294L, // p_1401->g_460
        {{0x3E1CL,0x3E1CL,0x3E1CL}}, // p_1401->g_468
        0x598BCBC1L, // p_1401->g_537
        &p_1401->g_122[3], // p_1401->g_540
        &p_1401->g_540, // p_1401->g_539
        {&p_1401->g_540,&p_1401->g_540,&p_1401->g_540,&p_1401->g_540,&p_1401->g_540,&p_1401->g_540,&p_1401->g_540}, // p_1401->g_541
        &p_1401->g_211[0][7][2], // p_1401->g_548
        &p_1401->g_548, // p_1401->g_547
        &p_1401->g_358[4][3], // p_1401->g_560
        &p_1401->g_113, // p_1401->g_574
        &p_1401->g_540, // p_1401->g_586
        &p_1401->g_586, // p_1401->g_585
        (-7L), // p_1401->g_607
        1L, // p_1401->g_609
        {{{&p_1401->g_26,(void*)0,(void*)0,(void*)0,&p_1401->g_26,&p_1401->g_26,(void*)0,(void*)0,(void*)0,&p_1401->g_26},{&p_1401->g_26,(void*)0,(void*)0,(void*)0,&p_1401->g_26,&p_1401->g_26,(void*)0,(void*)0,(void*)0,&p_1401->g_26}}}, // p_1401->g_651
        &p_1401->g_113, // p_1401->g_652
        {&p_1401->g_358[3][8],&p_1401->g_358[3][8],&p_1401->g_358[3][8],&p_1401->g_358[3][8],&p_1401->g_358[3][8],&p_1401->g_358[3][8],&p_1401->g_358[3][8],&p_1401->g_358[3][8]}, // p_1401->g_659
        &p_1401->g_358[0][9], // p_1401->g_660
        (-9L), // p_1401->g_731
        0x32058432L, // p_1401->g_736
        &p_1401->g_113, // p_1401->g_786
        {(void*)0}, // p_1401->g_805
        &p_1401->g_358[3][9], // p_1401->g_817
        &p_1401->g_358[4][3], // p_1401->g_818
        &p_1401->g_26, // p_1401->g_829
        &p_1401->g_439, // p_1401->g_846
        0x0B5EC6C8669452F5L, // p_1401->g_894
        {{{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736}},{{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736}},{{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736}},{{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736}},{{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736},{&p_1401->g_736,&p_1401->g_26,&p_1401->g_26,&p_1401->g_736,&p_1401->g_736}}}, // p_1401->g_898
        &p_1401->g_736, // p_1401->g_899
        &p_1401->g_358[3][3], // p_1401->g_913
        (void*)0, // p_1401->g_930
        &p_1401->g_548, // p_1401->g_962
        &p_1401->g_962, // p_1401->g_961
        1L, // p_1401->g_974
        0x08C5A9B0L, // p_1401->g_979
        0UL, // p_1401->g_1017
        {0x3446AAAEBB19A0BCL,0x3446AAAEBB19A0BCL,0x3446AAAEBB19A0BCL,0x3446AAAEBB19A0BCL,0x3446AAAEBB19A0BCL,0x3446AAAEBB19A0BCL,0x3446AAAEBB19A0BCL}, // p_1401->g_1027
        &p_1401->g_586, // p_1401->g_1031
        &p_1401->g_736, // p_1401->g_1033
        0UL, // p_1401->g_1053
        (void*)0, // p_1401->g_1066
        0x58F43F97L, // p_1401->g_1098
        0L, // p_1401->g_1120
        255UL, // p_1401->g_1165
        {{{0xB033L,0xB033L},{0xB033L,0xB033L}},{{0xB033L,0xB033L},{0xB033L,0xB033L}},{{0xB033L,0xB033L},{0xB033L,0xB033L}},{{0xB033L,0xB033L},{0xB033L,0xB033L}},{{0xB033L,0xB033L},{0xB033L,0xB033L}},{{0xB033L,0xB033L},{0xB033L,0xB033L}},{{0xB033L,0xB033L},{0xB033L,0xB033L}},{{0xB033L,0xB033L},{0xB033L,0xB033L}},{{0xB033L,0xB033L},{0xB033L,0xB033L}},{{0xB033L,0xB033L},{0xB033L,0xB033L}}}, // p_1401->g_1190
        &p_1401->g_308, // p_1401->g_1237
        {{{0xA99A1E3FL,9UL,0xA99A1E3FL},{0xA99A1E3FL,9UL,0xA99A1E3FL},{0xA99A1E3FL,9UL,0xA99A1E3FL},{0xA99A1E3FL,9UL,0xA99A1E3FL},{0xA99A1E3FL,9UL,0xA99A1E3FL},{0xA99A1E3FL,9UL,0xA99A1E3FL}},{{0xA99A1E3FL,9UL,0xA99A1E3FL},{0xA99A1E3FL,9UL,0xA99A1E3FL},{0xA99A1E3FL,9UL,0xA99A1E3FL},{0xA99A1E3FL,9UL,0xA99A1E3FL},{0xA99A1E3FL,9UL,0xA99A1E3FL},{0xA99A1E3FL,9UL,0xA99A1E3FL}}}, // p_1401->g_1314
        0x09573919L, // p_1401->g_1351
        0x0CL, // p_1401->g_1359
        6L, // p_1401->g_1393
        sequence_input[get_global_id(0)], // p_1401->global_0_offset
        sequence_input[get_global_id(1)], // p_1401->global_1_offset
        sequence_input[get_global_id(2)], // p_1401->global_2_offset
        sequence_input[get_local_id(0)], // p_1401->local_0_offset
        sequence_input[get_local_id(1)], // p_1401->local_1_offset
        sequence_input[get_local_id(2)], // p_1401->local_2_offset
        sequence_input[get_group_id(0)], // p_1401->group_0_offset
        sequence_input[get_group_id(1)], // p_1401->group_1_offset
        sequence_input[get_group_id(2)], // p_1401->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_1402 = c_1403;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1401);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1401->g_26, "p_1401->g_26", print_hash_value);
    transparent_crc(p_1401->g_58, "p_1401->g_58", print_hash_value);
    transparent_crc(p_1401->g_80, "p_1401->g_80", print_hash_value);
    transparent_crc(p_1401->g_90, "p_1401->g_90", print_hash_value);
    transparent_crc(p_1401->g_103, "p_1401->g_103", print_hash_value);
    transparent_crc(p_1401->g_113, "p_1401->g_113", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1401->g_122[i], "p_1401->g_122[i]", print_hash_value);

    }
    transparent_crc(p_1401->g_127, "p_1401->g_127", print_hash_value);
    transparent_crc(p_1401->g_160, "p_1401->g_160", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1401->g_179[i], "p_1401->g_179[i]", print_hash_value);

    }
    transparent_crc(p_1401->g_193, "p_1401->g_193", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1401->g_194[i], "p_1401->g_194[i]", print_hash_value);

    }
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 10; k++)
            {
                transparent_crc(p_1401->g_211[i][j][k], "p_1401->g_211[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1401->g_308, "p_1401->g_308", print_hash_value);
    transparent_crc(p_1401->g_335, "p_1401->g_335", print_hash_value);
    transparent_crc(p_1401->g_365, "p_1401->g_365", print_hash_value);
    transparent_crc(p_1401->g_367, "p_1401->g_367", print_hash_value);
    transparent_crc(p_1401->g_460, "p_1401->g_460", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1401->g_468[i][j], "p_1401->g_468[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1401->g_537, "p_1401->g_537", print_hash_value);
    transparent_crc(p_1401->g_607, "p_1401->g_607", print_hash_value);
    transparent_crc(p_1401->g_609, "p_1401->g_609", print_hash_value);
    transparent_crc(p_1401->g_731, "p_1401->g_731", print_hash_value);
    transparent_crc(p_1401->g_736, "p_1401->g_736", print_hash_value);
    transparent_crc(p_1401->g_894, "p_1401->g_894", print_hash_value);
    transparent_crc(p_1401->g_974, "p_1401->g_974", print_hash_value);
    transparent_crc(p_1401->g_979, "p_1401->g_979", print_hash_value);
    transparent_crc(p_1401->g_1017, "p_1401->g_1017", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1401->g_1027[i], "p_1401->g_1027[i]", print_hash_value);

    }
    transparent_crc(p_1401->g_1053, "p_1401->g_1053", print_hash_value);
    transparent_crc(p_1401->g_1098, "p_1401->g_1098", print_hash_value);
    transparent_crc(p_1401->g_1120, "p_1401->g_1120", print_hash_value);
    transparent_crc(p_1401->g_1165, "p_1401->g_1165", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1401->g_1190[i][j][k], "p_1401->g_1190[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1401->g_1314[i][j][k], "p_1401->g_1314[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1401->g_1351, "p_1401->g_1351", print_hash_value);
    transparent_crc(p_1401->g_1359, "p_1401->g_1359", print_hash_value);
    transparent_crc(p_1401->g_1393, "p_1401->g_1393", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 52; i++)
            transparent_crc(p_1401->g_special_values[i + 52 * get_linear_group_id()], "p_1401->g_special_values[i + 52 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 52; i++)
            transparent_crc(p_1401->l_special_values[i], "p_1401->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
