// --atomics 42 ---fake_divergence -g 92,1,85 -l 1,1,5
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


// Seed: 31

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_4;
    volatile uint32_t g_8;
    uint64_t g_26;
    uint16_t g_28[10];
    uint32_t g_46;
    int16_t g_48;
    volatile uint32_t g_71;
    int8_t g_73;
    int32_t *g_76;
    int32_t ** volatile g_75;
    int32_t g_83[7][1];
    int32_t * volatile g_82;
    uint8_t g_88;
    uint8_t g_94;
    int32_t g_96;
    int8_t g_98;
    int8_t g_100;
    uint64_t g_124;
    uint32_t g_145;
    int32_t * volatile g_159;
    int32_t *g_179;
    uint64_t g_186;
    int64_t g_191;
    uint8_t g_210;
    volatile uint64_t g_224[2];
    volatile uint64_t *g_223;
    volatile uint64_t * volatile * volatile g_222;
    uint32_t g_236;
    uint64_t g_273;
    volatile int8_t g_295;
    volatile int8_t *g_294;
    volatile int8_t * volatile *g_293;
    int32_t g_297;
    int32_t ** volatile g_354;
    int32_t ** volatile g_355[5];
    int32_t ** volatile g_356;
    int32_t ** volatile g_400;
    int64_t g_408;
    volatile int32_t g_439;
    int32_t ** volatile g_472;
    int32_t *g_473;
    volatile int32_t g_549;
    int16_t g_652;
    uint32_t *g_674[6][5];
    int32_t ** volatile g_733;
    int32_t ** volatile g_761;
    uint32_t **g_777;
    uint8_t *g_812;
    uint8_t **g_811;
    uint64_t g_819;
    uint16_t g_820;
    volatile uint16_t **g_883;
    int32_t ** volatile g_960;
    int8_t g_996;
    int32_t ** volatile g_1000[3][4];
    int32_t ** volatile g_1001;
    int32_t ** volatile g_1002;
    volatile int32_t g_1036;
    int32_t * volatile g_1046;
    int32_t ** volatile g_1073;
    uint8_t g_1101[2];
    volatile uint64_t ** volatile g_1111[4];
    volatile uint64_t ** volatile *g_1110;
    volatile uint64_t ** volatile **g_1109;
    int32_t ** volatile g_1124;
    uint8_t ***g_1173;
    int32_t ** volatile g_1178;
    int32_t * volatile g_1204[4][9][2];
    int32_t * volatile g_1205;
    int32_t * volatile g_1208;
    uint32_t g_1268;
    int32_t g_1282[3];
    int32_t ** volatile g_1307;
    int32_t ** volatile g_1308;
    int32_t ** volatile g_1434;
    uint16_t g_1480;
    int32_t ** volatile g_1481;
    uint8_t g_1504;
    int32_t g_1526;
    int8_t *g_1529;
    int8_t **g_1528;
    int8_t *** volatile g_1527;
    uint8_t g_1579;
    uint64_t *g_1619;
    int32_t ** volatile g_1630;
    int64_t g_1647;
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
int64_t  func_1(struct S0 * p_1653);
int16_t  func_15(int32_t * p_16, uint8_t  p_17, int32_t  p_18, struct S0 * p_1653);
int32_t * func_19(int64_t  p_20, struct S0 * p_1653);
int64_t  func_21(uint16_t  p_22, struct S0 * p_1653);
int16_t  func_29(uint64_t * p_30, uint16_t  p_31, struct S0 * p_1653);
uint64_t * func_32(int64_t  p_33, uint16_t * p_34, struct S0 * p_1653);
uint8_t  func_35(uint16_t * p_36, uint32_t  p_37, struct S0 * p_1653);
uint16_t * func_38(int64_t  p_39, int64_t  p_40, int64_t  p_41, uint64_t * p_42, int32_t  p_43, struct S0 * p_1653);
int32_t  func_51(uint64_t * p_52, uint16_t * p_53, uint16_t * p_54, struct S0 * p_1653);
int32_t * func_59(uint64_t * p_60, uint64_t  p_61, struct S0 * p_1653);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1653->g_8 p_1653->g_4 p_1653->g_28 p_1653->g_26 p_1653->g_46 p_1653->g_48 p_1653->g_145 p_1653->g_100 p_1653->g_224 p_1653->g_297 p_1653->g_191 p_1653->g_83 p_1653->g_73 p_1653->g_960 p_1653->g_236 p_1653->g_294 p_1653->g_295 p_1653->g_408 p_1653->g_996 p_1653->g_88 p_1653->g_1001 p_1653->g_1002 p_1653->g_124 p_1653->g_98 p_1653->g_1036 p_1653->g_820 p_1653->g_210 p_1653->g_273 p_1653->g_96 p_1653->g_1046 p_1653->g_652 p_1653->g_1101 p_1653->g_1282 p_1653->g_293 p_1653->g_76 p_1653->g_1434 p_1653->g_1480 p_1653->g_1481 p_1653->g_186 p_1653->g_1504 p_1653->g_1527 p_1653->g_733 p_1653->g_1268 p_1653->g_1526 p_1653->g_94 p_1653->g_1579 p_1653->g_819 p_1653->g_1205 p_1653->g_1208 p_1653->g_1630 p_1653->g_159 p_1653->g_473 p_1653->g_1647 p_1653->g_1073
 * writes: p_1653->g_8 p_1653->g_26 p_1653->g_28 p_1653->g_46 p_1653->g_48 p_1653->g_145 p_1653->g_124 p_1653->g_210 p_1653->g_83 p_1653->g_820 p_1653->g_473 p_1653->g_100 p_1653->g_996 p_1653->g_652 p_1653->g_88 p_1653->g_297 p_1653->g_1101 p_1653->g_96 p_1653->g_408 p_1653->g_98 p_1653->g_73 p_1653->g_191 p_1653->g_76 p_1653->g_1526 p_1653->g_1528 p_1653->g_273 p_1653->g_1619 p_1653->g_4
 */
int64_t  func_1(struct S0 * p_1653)
{ /* block id: 4 */
    int32_t *l_2 = (void*)0;
    int32_t *l_3 = &p_1653->g_4;
    int32_t *l_5 = (void*)0;
    int32_t *l_6[8] = {&p_1653->g_4,&p_1653->g_4,&p_1653->g_4,&p_1653->g_4,&p_1653->g_4,&p_1653->g_4,&p_1653->g_4,&p_1653->g_4};
    int8_t l_7 = 0x67L;
    uint64_t *l_25[4][6][9] = {{{&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,(void*)0,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26},{&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,(void*)0,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26},{&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,(void*)0,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26},{&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,(void*)0,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26},{&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,(void*)0,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26},{&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,(void*)0,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26}},{{&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,(void*)0,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26},{&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,(void*)0,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26},{&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,(void*)0,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26},{&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,(void*)0,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26},{&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,(void*)0,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26},{&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,(void*)0,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26}},{{&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,(void*)0,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26},{&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,(void*)0,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26},{&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,(void*)0,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26},{&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,(void*)0,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26},{&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,(void*)0,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26},{&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,(void*)0,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26}},{{&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,(void*)0,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26},{&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,(void*)0,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26},{&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,(void*)0,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26},{&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,(void*)0,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26},{&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,(void*)0,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26},{&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,(void*)0,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26,&p_1653->g_26}}};
    uint16_t *l_27 = &p_1653->g_28[3];
    int16_t *l_47 = &p_1653->g_48;
    uint8_t *l_1309 = &p_1653->g_1101[1];
    int32_t **l_1635[7][1][8] = {{{&l_6[5],&l_6[5],(void*)0,&p_1653->g_76,&l_3,(void*)0,&p_1653->g_473,(void*)0}},{{&l_6[5],&l_6[5],(void*)0,&p_1653->g_76,&l_3,(void*)0,&p_1653->g_473,(void*)0}},{{&l_6[5],&l_6[5],(void*)0,&p_1653->g_76,&l_3,(void*)0,&p_1653->g_473,(void*)0}},{{&l_6[5],&l_6[5],(void*)0,&p_1653->g_76,&l_3,(void*)0,&p_1653->g_473,(void*)0}},{{&l_6[5],&l_6[5],(void*)0,&p_1653->g_76,&l_3,(void*)0,&p_1653->g_473,(void*)0}},{{&l_6[5],&l_6[5],(void*)0,&p_1653->g_76,&l_3,(void*)0,&p_1653->g_473,(void*)0}},{{&l_6[5],&l_6[5],(void*)0,&p_1653->g_76,&l_3,(void*)0,&p_1653->g_473,(void*)0}}};
    int8_t l_1638 = (-9L);
    int64_t *l_1648[8][1] = {{&p_1653->g_1647},{&p_1653->g_1647},{&p_1653->g_1647},{&p_1653->g_1647},{&p_1653->g_1647},{&p_1653->g_1647},{&p_1653->g_1647},{&p_1653->g_1647}};
    int16_t l_1651 = 6L;
    uint8_t l_1652 = 8UL;
    int i, j, k;
    --p_1653->g_8;
    (*p_1653->g_159) = ((safe_div_func_int64_t_s_s((*l_3), (safe_sub_func_int16_t_s_s(func_15(((*p_1653->g_1001) = func_19(func_21(((safe_mod_func_uint32_t_u_u(((((*l_27) &= ((p_1653->g_26 = (&p_1653->g_4 == l_6[1])) , (*l_3))) || func_29(func_32((((*l_1309) ^= func_35(func_38(p_1653->g_28[3], p_1653->g_26, ((((*l_3) & (safe_lshift_func_int16_t_s_s(1L, ((*l_47) ^= (((p_1653->g_46 ^= (0x08C924DFL >= 0x69BF4A3CL)) ^ p_1653->g_26) , p_1653->g_4))))) != 0x016DL) <= p_1653->g_26), l_25[1][5][1], p_1653->g_4, p_1653), p_1653->g_408, p_1653)) < 1UL), &p_1653->g_28[8], p_1653), p_1653->g_1282[2], p_1653)) , 0x464183B3L), (*l_3))) >= p_1653->g_1282[1]), p_1653), p_1653)), p_1653->g_94, p_1653->g_1282[2], p_1653), 0x6E2EL)))) , 0x1639E79DL);
    p_1653->g_1526 |= ((safe_lshift_func_uint8_t_u_u((l_1638 & (+((*l_1309) = ((**p_1653->g_293) >= ((safe_add_func_int64_t_s_s((((((p_1653->g_28[3] && p_1653->g_1579) <= (safe_mod_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s(((*p_1653->g_473) != (p_1653->g_145 = (safe_mod_func_int64_t_s_s((p_1653->g_191 |= p_1653->g_1647), p_1653->g_28[3])))), ((0xF3L & (safe_mod_func_uint64_t_u_u((((!(((*l_3) ^= ((l_1648[1][0] == (void*)0) != p_1653->g_98)) == p_1653->g_297)) && p_1653->g_100) <= p_1653->g_94), p_1653->g_1647))) > FAKE_DIVERGE(p_1653->global_0_offset, get_global_id(0), 10)))), p_1653->g_1504))) < l_1651) || (-5L)) != p_1653->g_73), l_1652)) ^ p_1653->g_996))))), 0)) && p_1653->g_100);
    (*p_1653->g_1073) = ((*p_1653->g_1002) = func_59(l_25[1][5][1], p_1653->g_295, p_1653));
    return p_1653->g_96;
}


/* ------------------------------------------ */
/* 
 * reads : p_1653->g_73
 * writes:
 */
int16_t  func_15(int32_t * p_16, uint8_t  p_17, int32_t  p_18, struct S0 * p_1653)
{ /* block id: 820 */
    return p_1653->g_73;
}


/* ------------------------------------------ */
/* 
 * reads : p_1653->g_1002 p_1653->g_73 p_1653->g_293 p_1653->g_294 p_1653->g_295 p_1653->g_145 p_1653->g_100 p_1653->g_191 p_1653->g_83 p_1653->g_1101 p_1653->g_28 p_1653->g_76 p_1653->g_4 p_1653->g_1434 p_1653->g_98 p_1653->g_297 p_1653->g_1480 p_1653->g_1481 p_1653->g_186 p_1653->g_996 p_1653->g_1504 p_1653->g_48 p_1653->g_1282 p_1653->g_1527 p_1653->g_733 p_1653->g_1046 p_1653->g_1268 p_1653->g_1526 p_1653->g_94 p_1653->g_1579 p_1653->g_96 p_1653->g_224 p_1653->g_960 p_1653->g_236 p_1653->g_408 p_1653->g_88 p_1653->g_1001 p_1653->g_819 p_1653->g_1205 p_1653->g_1208 p_1653->g_1630
 * writes: p_1653->g_473 p_1653->g_73 p_1653->g_191 p_1653->g_83 p_1653->g_100 p_1653->g_98 p_1653->g_1101 p_1653->g_28 p_1653->g_76 p_1653->g_820 p_1653->g_996 p_1653->g_1526 p_1653->g_1528 p_1653->g_46 p_1653->g_145 p_1653->g_124 p_1653->g_210 p_1653->g_652 p_1653->g_88 p_1653->g_297 p_1653->g_273 p_1653->g_1619
 */
int32_t * func_19(int64_t  p_20, struct S0 * p_1653)
{ /* block id: 737 */
    int32_t l_1366 = 0x4DF31409L;
    int32_t l_1367 = (-1L);
    uint64_t l_1398 = 18446744073709551614UL;
    int32_t l_1441 = 1L;
    int32_t l_1443 = 0L;
    int32_t l_1447 = 1L;
    int32_t l_1459 = 0x71F89FEAL;
    int32_t l_1460 = 0x0D59F6F6L;
    int32_t l_1461 = (-2L);
    int32_t l_1462 = 1L;
    int32_t l_1463[8][6] = {{0x3F8485D5L,0x5EB55B60L,0x5EB55B60L,0x3F8485D5L,0x3F8485D5L,0x5EB55B60L},{0x3F8485D5L,0x5EB55B60L,0x5EB55B60L,0x3F8485D5L,0x3F8485D5L,0x5EB55B60L},{0x3F8485D5L,0x5EB55B60L,0x5EB55B60L,0x3F8485D5L,0x3F8485D5L,0x5EB55B60L},{0x3F8485D5L,0x5EB55B60L,0x5EB55B60L,0x3F8485D5L,0x3F8485D5L,0x5EB55B60L},{0x3F8485D5L,0x5EB55B60L,0x5EB55B60L,0x3F8485D5L,0x3F8485D5L,0x5EB55B60L},{0x3F8485D5L,0x5EB55B60L,0x5EB55B60L,0x3F8485D5L,0x3F8485D5L,0x5EB55B60L},{0x3F8485D5L,0x5EB55B60L,0x5EB55B60L,0x3F8485D5L,0x3F8485D5L,0x5EB55B60L},{0x3F8485D5L,0x5EB55B60L,0x5EB55B60L,0x3F8485D5L,0x3F8485D5L,0x5EB55B60L}};
    int8_t l_1465 = 2L;
    uint16_t l_1466 = 0x205BL;
    int32_t **l_1586 = (void*)0;
    int32_t *l_1620 = &l_1447;
    int32_t *l_1621 = &l_1367;
    int32_t *l_1622 = &p_1653->g_83[6][0];
    int32_t *l_1623 = &l_1461;
    int32_t *l_1624 = &l_1460;
    int32_t *l_1625 = &l_1447;
    int32_t *l_1626[6] = {&l_1441,&p_1653->g_83[5][0],&l_1441,&l_1441,&p_1653->g_83[5][0],&l_1441};
    uint32_t l_1627 = 0UL;
    int32_t *l_1631 = &l_1441;
    int32_t *l_1632 = &l_1459;
    int32_t *l_1633 = &l_1459;
    int32_t *l_1634 = &p_1653->g_83[6][0];
    int i, j;
    l_1367 = l_1366;
    if (p_20)
    { /* block id: 739 */
        int32_t **l_1368[3][1][10] = {{{&p_1653->g_473,&p_1653->g_473,&p_1653->g_473,&p_1653->g_76,&p_1653->g_473,&p_1653->g_76,&p_1653->g_473,&p_1653->g_473,&p_1653->g_473,&p_1653->g_473}},{{&p_1653->g_473,&p_1653->g_473,&p_1653->g_473,&p_1653->g_76,&p_1653->g_473,&p_1653->g_76,&p_1653->g_473,&p_1653->g_473,&p_1653->g_473,&p_1653->g_473}},{{&p_1653->g_473,&p_1653->g_473,&p_1653->g_473,&p_1653->g_76,&p_1653->g_473,&p_1653->g_76,&p_1653->g_473,&p_1653->g_473,&p_1653->g_473,&p_1653->g_473}}};
        int i, j, k;
        (*p_1653->g_1002) = (void*)0;
    }
    else
    { /* block id: 741 */
        uint32_t l_1400 = 0UL;
        int16_t l_1411[7];
        int32_t l_1439 = 0x4797EAAFL;
        int32_t l_1444 = 0x1BADD931L;
        int64_t l_1445 = (-8L);
        int32_t l_1450 = 7L;
        int32_t l_1455[3];
        int16_t l_1494 = 0x32E3L;
        int16_t l_1518 = 1L;
        uint8_t **l_1564 = &p_1653->g_812;
        uint64_t l_1576 = 4UL;
        int64_t l_1591 = (-2L);
        int32_t l_1592 = 0x003C1DDCL;
        int i;
        for (i = 0; i < 7; i++)
            l_1411[i] = 0x7E11L;
        for (i = 0; i < 3; i++)
            l_1455[i] = 0x5B342E94L;
        for (p_1653->g_73 = 5; (p_1653->g_73 < (-29)); --p_1653->g_73)
        { /* block id: 744 */
            int16_t *l_1378[9];
            int32_t l_1379 = (-2L);
            int32_t l_1394 = 5L;
            int64_t *l_1399 = &p_1653->g_191;
            int32_t *l_1401 = &p_1653->g_83[4][0];
            uint64_t **l_1407 = (void*)0;
            uint64_t ***l_1406 = &l_1407;
            uint8_t ***l_1409 = &p_1653->g_811;
            int32_t l_1440 = 0L;
            int32_t l_1442 = 0x01771B97L;
            int32_t l_1451 = 0x30B4D0D2L;
            int32_t l_1452 = 0L;
            int32_t l_1454[1];
            uint64_t *l_1544 = &p_1653->g_26;
            int32_t **l_1585 = &p_1653->g_179;
            int32_t ***l_1584[6] = {(void*)0,&l_1585,(void*)0,(void*)0,&l_1585,(void*)0};
            int32_t **l_1593 = &l_1401;
            int8_t *l_1606[5][2][1] = {{{&p_1653->g_996},{&p_1653->g_996}},{{&p_1653->g_996},{&p_1653->g_996}},{{&p_1653->g_996},{&p_1653->g_996}},{{&p_1653->g_996},{&p_1653->g_996}},{{&p_1653->g_996},{&p_1653->g_996}}};
            uint32_t l_1607[6][3] = {{0x1701CB29L,0x1701CB29L,6UL},{0x1701CB29L,0x1701CB29L,6UL},{0x1701CB29L,0x1701CB29L,6UL},{0x1701CB29L,0x1701CB29L,6UL},{0x1701CB29L,0x1701CB29L,6UL},{0x1701CB29L,0x1701CB29L,6UL}};
            uint64_t *l_1608 = &p_1653->g_273;
            int32_t *l_1609[4][2][9] = {{{&l_1366,&l_1366,&p_1653->g_1282[0],(void*)0,(void*)0,(void*)0,&p_1653->g_1282[0],&l_1366,&l_1366},{&l_1366,&l_1366,&p_1653->g_1282[0],(void*)0,(void*)0,(void*)0,&p_1653->g_1282[0],&l_1366,&l_1366}},{{&l_1366,&l_1366,&p_1653->g_1282[0],(void*)0,(void*)0,(void*)0,&p_1653->g_1282[0],&l_1366,&l_1366},{&l_1366,&l_1366,&p_1653->g_1282[0],(void*)0,(void*)0,(void*)0,&p_1653->g_1282[0],&l_1366,&l_1366}},{{&l_1366,&l_1366,&p_1653->g_1282[0],(void*)0,(void*)0,(void*)0,&p_1653->g_1282[0],&l_1366,&l_1366},{&l_1366,&l_1366,&p_1653->g_1282[0],(void*)0,(void*)0,(void*)0,&p_1653->g_1282[0],&l_1366,&l_1366}},{{&l_1366,&l_1366,&p_1653->g_1282[0],(void*)0,(void*)0,(void*)0,&p_1653->g_1282[0],&l_1366,&l_1366},{&l_1366,&l_1366,&p_1653->g_1282[0],(void*)0,(void*)0,(void*)0,&p_1653->g_1282[0],&l_1366,&l_1366}}};
            int64_t *l_1617 = &p_1653->g_408;
            int64_t **l_1616[9][2][8] = {{{(void*)0,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617},{(void*)0,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617}},{{(void*)0,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617},{(void*)0,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617}},{{(void*)0,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617},{(void*)0,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617}},{{(void*)0,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617},{(void*)0,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617}},{{(void*)0,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617},{(void*)0,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617}},{{(void*)0,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617},{(void*)0,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617}},{{(void*)0,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617},{(void*)0,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617}},{{(void*)0,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617},{(void*)0,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617}},{{(void*)0,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617},{(void*)0,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617,&l_1617}}};
            uint64_t *l_1618[8] = {&p_1653->g_186,&l_1576,&p_1653->g_186,&p_1653->g_186,&l_1576,&p_1653->g_186,&p_1653->g_186,&l_1576};
            int i, j, k;
            for (i = 0; i < 9; i++)
                l_1378[i] = (void*)0;
            for (i = 0; i < 1; i++)
                l_1454[i] = 0x6F8C669EL;
            if (((*l_1401) = (safe_rshift_func_int16_t_s_s((l_1379 ^= (safe_add_func_uint64_t_u_u((~p_1653->g_73), (!(safe_unary_minus_func_uint8_t_u((safe_lshift_func_int16_t_s_u(0L, 5)))))))), (safe_mod_func_uint8_t_u_u(0x4CL, (safe_rshift_func_int8_t_s_u((safe_sub_func_uint8_t_u_u(p_20, ((safe_mul_func_int8_t_s_s((-2L), (**p_1653->g_293))) >= (((safe_mul_func_int16_t_s_s(((!(((safe_div_func_int64_t_s_s(((*l_1399) = ((safe_rshift_func_uint8_t_u_s((l_1394 & (safe_unary_minus_func_int64_t_s(0x373914FD90D76686L))), (safe_mul_func_int8_t_s_s(l_1398, p_20)))) < p_20)), l_1367)) ^ 0x9C7F945AL) > p_20)) == p_1653->g_145), l_1400)) != l_1366) > 1L)))), l_1400))))))))
            { /* block id: 748 */
                uint64_t ***l_1408 = (void*)0;
                int32_t l_1430 = 0x6A520DC0L;
                int32_t l_1432 = 0x0A1D11E8L;
                int32_t l_1446 = 0x69778B0AL;
                int32_t l_1448 = 1L;
                int32_t l_1449 = 0x5BD5EE77L;
                int32_t l_1453 = 0x42D944D2L;
                int32_t l_1456 = 0x0A0C530BL;
                int32_t l_1457 = 1L;
                int32_t l_1458[7][7][5] = {{{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L}},{{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L}},{{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L}},{{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L}},{{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L}},{{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L}},{{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L},{0L,0L,0x2D537D54L,0x74015BF2L,3L}}};
                int i, j, k;
                for (p_1653->g_191 = 0; (p_1653->g_191 >= 0); p_1653->g_191 -= 1)
                { /* block id: 751 */
                    uint16_t l_1405 = 0x5835L;
                    uint8_t ***l_1410 = &p_1653->g_811;
                    int32_t *l_1435 = &l_1430;
                    int32_t *l_1436 = &l_1432;
                    int32_t *l_1437 = (void*)0;
                    int32_t *l_1438[6] = {&p_1653->g_83[0][0],(void*)0,&p_1653->g_83[0][0],&p_1653->g_83[0][0],(void*)0,&p_1653->g_83[0][0]};
                    int64_t l_1464 = (-8L);
                    uint16_t *l_1479 = &p_1653->g_820;
                    int i;
                    for (p_1653->g_100 = 0; (p_1653->g_100 <= 0); p_1653->g_100 += 1)
                    { /* block id: 754 */
                        int8_t *l_1402 = &p_1653->g_98;
                        int32_t *l_1419[6][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
                        uint8_t *l_1422 = &p_1653->g_1101[1];
                        uint16_t *l_1427 = &l_1405;
                        uint32_t *l_1431[6][7][1];
                        uint16_t *l_1433 = &p_1653->g_28[3];
                        int i, j, k;
                        for (i = 0; i < 6; i++)
                        {
                            for (j = 0; j < 7; j++)
                            {
                                for (k = 0; k < 1; k++)
                                    l_1431[i][j][k] = &p_1653->g_236;
                            }
                        }
                        l_1394 ^= (((*l_1402) = p_1653->g_83[(p_1653->g_100 + 5)][p_1653->g_191]) & (((l_1367 |= p_1653->g_83[(p_1653->g_191 + 4)][p_1653->g_100]) < (p_20 == (l_1405 || ((l_1406 == l_1408) , (((*l_1401) , l_1409) == l_1410))))) == p_20));
                        (*l_1401) = l_1400;
                        (*l_1401) = (l_1411[6] <= (safe_unary_minus_func_uint16_t_u((safe_mod_func_uint64_t_u_u((((safe_div_func_int32_t_s_s((((*l_1433) &= (safe_rshift_func_int8_t_s_u((l_1401 == l_1419[3][0]), (safe_sub_func_uint8_t_u_u((--(*l_1422)), ((-8L) ^ (safe_mod_func_int32_t_s_s((((((*l_1427) = (+9UL)) <= p_1653->g_83[(p_1653->g_100 + 5)][p_1653->g_191]) , (l_1432 &= (((((((0xAFC6L || (((18446744073709551615UL && ((safe_mod_func_uint8_t_u_u(l_1405, (-4L))) ^ 0xDBE1912EL)) < l_1430) < l_1405)) >= (*p_1653->g_294)) & p_1653->g_83[6][0]) == 5UL) >= l_1411[1]) >= p_1653->g_73) == l_1366))) , 0x394BC8ECL), (*l_1401))))))))) <= GROUP_DIVERGE(0, 1)), (*p_1653->g_76))) , p_1653->g_83[1][0]) || p_1653->g_73), p_20)))));
                        (*p_1653->g_1434) = func_59(func_32(p_20, &p_1653->g_28[3], p_1653), (*l_1401), p_1653);
                    }
                    ++l_1466;
                    l_1459 = (+((*l_1436) = (safe_mul_func_uint16_t_u_u(((safe_div_func_int16_t_s_s((+p_1653->g_28[9]), (safe_add_func_int8_t_s_s((((((safe_div_func_uint8_t_u_u(p_20, l_1439)) < (safe_lshift_func_int16_t_s_u(l_1457, ((*l_1479) = 0xC318L)))) != (*p_1653->g_294)) | ((l_1458[2][3][4] | p_20) >= (((*l_1435) &= ((p_1653->g_98 < p_1653->g_297) , (*p_1653->g_76))) <= p_1653->g_1480))) ^ p_20), p_20)))) > 1UL), p_20))));
                    (*p_1653->g_1481) = func_59(&p_1653->g_26, l_1457, p_1653);
                }
            }
            else
            { /* block id: 773 */
                int32_t *l_1514 = &l_1366;
                int32_t l_1575[9][6][4] = {{{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L}},{{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L}},{{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L}},{{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L}},{{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L}},{{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L}},{{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L}},{{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L}},{{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L},{1L,0x0EE8419BL,(-5L),0L}}};
                int i, j, k;
                for (l_1460 = 0; (l_1460 != (-10)); l_1460 = safe_sub_func_int16_t_s_s(l_1460, 3))
                { /* block id: 776 */
                    uint8_t *l_1499 = (void*)0;
                    uint8_t *l_1500 = (void*)0;
                    uint8_t *l_1501 = &p_1653->g_1101[1];
                    int8_t *l_1502 = (void*)0;
                    int8_t *l_1503 = &p_1653->g_996;
                    uint16_t *l_1515 = &p_1653->g_820;
                    int32_t l_1537 = (-1L);
                    if ((safe_mod_func_int32_t_s_s((l_1366 | (((*l_1399) &= ((safe_rshift_func_int8_t_s_s(((safe_sub_func_int8_t_s_s(((*l_1503) &= ((((l_1400 < ((1UL < ((safe_mul_func_uint8_t_u_u(0x88L, (safe_mod_func_int8_t_s_s(p_20, p_20)))) < (l_1494 | p_1653->g_186))) >= (safe_mod_func_uint8_t_u_u(((*l_1501) = (safe_rshift_func_int16_t_s_s(1L, 2))), 0x02L)))) <= l_1439) < l_1459) , l_1443)), p_1653->g_1504)) >= 0x753360A040EC141DL), 5)) > 0x76AAEA4BF4F0B5BBL)) != p_20)), p_20)))
                    { /* block id: 780 */
                        uint16_t l_1523 = 65530UL;
                        int8_t *l_1524 = &p_1653->g_98;
                        int32_t *l_1525 = &l_1441;
                        (*l_1525) = ((safe_unary_minus_func_uint16_t_u(((safe_mul_func_uint8_t_u_u((safe_rshift_func_int8_t_s_s((l_1450 &= 0x62L), 5)), FAKE_DIVERGE(p_1653->global_0_offset, get_global_id(0), 10))) && (p_1653->g_48 < (safe_mod_func_int8_t_s_s(((*l_1524) = (((*l_1401) = (safe_sub_func_int64_t_s_s((l_1514 == ((**p_1653->g_293) , (void*)0)), ((l_1515 == (((safe_lshift_func_uint8_t_u_s(8UL, l_1518)) > (safe_rshift_func_int8_t_s_u(((*l_1503) = (safe_add_func_int32_t_s_s(p_20, (*l_1401)))), l_1523))) , &p_1653->g_28[2])) , p_1653->g_1504)))) >= (*p_1653->g_76))), p_1653->g_1282[2])))))) & p_20);
                        p_1653->g_1526 = p_20;
                        (*p_1653->g_1527) = &l_1524;
                    }
                    else
                    { /* block id: 788 */
                        int32_t *l_1530 = &p_1653->g_83[6][0];
                        int32_t *l_1531 = &l_1454[0];
                        int32_t *l_1532 = (void*)0;
                        int32_t *l_1533 = (void*)0;
                        int32_t *l_1534 = &l_1461;
                        int32_t *l_1535 = &p_1653->g_83[6][0];
                        int32_t *l_1536[5] = {&l_1444,&l_1444,&l_1444,&l_1444,&l_1444};
                        uint64_t l_1538 = 0x06245DD15A4F0A0AL;
                        int32_t l_1541 = (-4L);
                        uint64_t *l_1543 = &p_1653->g_26;
                        uint64_t **l_1542[7][6] = {{&l_1543,&l_1543,&l_1543,&l_1543,&l_1543,&l_1543},{&l_1543,&l_1543,&l_1543,&l_1543,&l_1543,&l_1543},{&l_1543,&l_1543,&l_1543,&l_1543,&l_1543,&l_1543},{&l_1543,&l_1543,&l_1543,&l_1543,&l_1543,&l_1543},{&l_1543,&l_1543,&l_1543,&l_1543,&l_1543,&l_1543},{&l_1543,&l_1543,&l_1543,&l_1543,&l_1543,&l_1543},{&l_1543,&l_1543,&l_1543,&l_1543,&l_1543,&l_1543}};
                        int64_t *l_1553 = &l_1445;
                        int32_t **l_1556 = &l_1536[4];
                        int32_t **l_1557 = &l_1531;
                        int i, j;
                        ++l_1538;
                        (*l_1401) = (((0x38FF5B6EL | 0x58A424FCL) , p_20) != ((*l_1399) &= ((l_1541 , (**p_1653->g_293)) , p_20)));
                        (*l_1556) = func_59((l_1544 = func_32(((*l_1399) = (*l_1401)), &p_1653->g_820, p_1653)), (safe_sub_func_int8_t_s_s((safe_mul_func_int64_t_s_s(((safe_div_func_uint64_t_u_u(GROUP_DIVERGE(2, 1), GROUP_DIVERGE(2, 1))) ^ l_1366), ((void*)0 == &p_1653->g_96))), ((safe_mod_func_uint64_t_u_u((((*l_1553) &= p_20) == 4L), (safe_add_func_int32_t_s_s(l_1366, 0xA7B0D275L)))) != 0x63L))), p_1653);
                        (*l_1557) = ((*l_1556) = (*p_1653->g_733));
                    }
                    (*l_1401) = (p_20 && (((!(safe_add_func_uint16_t_u_u(((safe_sub_func_int8_t_s_s(((p_20 | (safe_div_func_uint64_t_u_u(((void*)0 != l_1564), 0x6CDAB66CC8D24F4BL))) , ((((safe_mul_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(l_1537, p_20)), ((*p_1653->g_1046) & (safe_sub_func_int64_t_s_s((safe_mul_func_int8_t_s_s((l_1576 = (safe_sub_func_int8_t_s_s(p_20, l_1575[6][4][3]))), 7L)), 0UL))))) && p_1653->g_1268) != p_20) , l_1537)), 0x37L)) > p_20), p_1653->g_1526))) != 0x6A2804A9L) > p_1653->g_94));
                }
            }
            (*l_1593) = func_59(func_32((((safe_lshift_func_uint16_t_u_u(p_1653->g_1579, GROUP_DIVERGE(1, 1))) || 0xA053L) && 0xA2L), func_38(((safe_mul_func_uint8_t_u_u(((*l_1401) = (safe_add_func_int32_t_s_s(l_1411[1], (&p_1653->g_179 == (l_1586 = &p_1653->g_179))))), (**p_1653->g_293))) , ((safe_lshift_func_uint8_t_u_u(((safe_mod_func_uint64_t_u_u(0xE9C9D991F17E1354L, p_20)) , l_1591), (*l_1401))) | 0x93ADL)), p_1653->g_96, l_1592, &p_1653->g_26, (*p_1653->g_76), p_1653), p_1653), p_1653->g_1268, p_1653);
            (*l_1593) = func_59((p_1653->g_1619 = func_32((safe_mod_func_int32_t_s_s((((safe_add_func_int64_t_s_s((safe_add_func_uint8_t_u_u((p_1653->g_996 ^ (l_1460 &= ((safe_sub_func_uint64_t_u_u(((p_1653->g_297 = (safe_div_func_uint32_t_u_u(GROUP_DIVERGE(0, 1), (p_20 , (safe_sub_func_uint64_t_u_u(((l_1607[1][2] = p_20) == 0x09L), ((*l_1608) = (l_1367 = l_1466)))))))) , 0UL), p_1653->g_819)) , (safe_rshift_func_uint16_t_u_s(((safe_mul_func_uint16_t_u_u((*l_1401), (safe_mod_func_int32_t_s_s((l_1616[1][0][0] != &l_1617), l_1411[0])))) || 0x54DB0730L), (**l_1593)))))), p_20)), 0UL)) , 6UL) , p_20), (*p_1653->g_1205))), &p_1653->g_28[8], p_1653)), (*l_1401), p_1653);
            if ((*p_1653->g_1208))
                continue;
        }
    }
    l_1627++;
    (*p_1653->g_1630) = &l_1459;
    return l_1634;
}


/* ------------------------------------------ */
/* 
 * reads : p_1653->g_96 p_1653->g_293 p_1653->g_294 p_1653->g_295 p_1653->g_28 p_1653->g_297 p_1653->g_100
 * writes: p_1653->g_96 p_1653->g_408 p_1653->g_98 p_1653->g_100
 */
int64_t  func_21(uint16_t  p_22, struct S0 * p_1653)
{ /* block id: 692 */
    uint64_t *l_1350 = &p_1653->g_26;
    uint64_t **l_1349 = &l_1350;
    uint64_t ***l_1348 = &l_1349;
    int32_t l_1351 = 0x612AC221L;
    int64_t *l_1352 = &p_1653->g_408;
    int16_t *l_1357[4][6] = {{&p_1653->g_48,&p_1653->g_48,&p_1653->g_48,&p_1653->g_48,&p_1653->g_48,&p_1653->g_48},{&p_1653->g_48,&p_1653->g_48,&p_1653->g_48,&p_1653->g_48,&p_1653->g_48,&p_1653->g_48},{&p_1653->g_48,&p_1653->g_48,&p_1653->g_48,&p_1653->g_48,&p_1653->g_48,&p_1653->g_48},{&p_1653->g_48,&p_1653->g_48,&p_1653->g_48,&p_1653->g_48,&p_1653->g_48,&p_1653->g_48}};
    int32_t l_1358 = 0x443198A7L;
    int32_t l_1363[10] = {4L,0x666AEFBAL,0x5FE4E4BBL,0x666AEFBAL,4L,4L,0x666AEFBAL,0x5FE4E4BBL,0x666AEFBAL,4L};
    int8_t *l_1364 = &p_1653->g_98;
    int8_t *l_1365 = &p_1653->g_100;
    int i, j;
    for (p_1653->g_96 = (-15); (p_1653->g_96 == 28); p_1653->g_96++)
    { /* block id: 695 */
        if ((atomic_inc(&p_1653->g_atomic_input[42 * get_linear_group_id() + 11]) == 7))
        { /* block id: 697 */
            uint8_t l_1313 = 0x83L;
            int32_t l_1315 = (-1L);
            int32_t *l_1314 = &l_1315;
            int32_t *l_1316 = &l_1315;
            int32_t l_1317 = (-1L);
            int32_t l_1318 = 0x7A9FA31DL;
            uint64_t l_1319 = 2UL;
            l_1316 = (l_1313 , l_1314);
            l_1319 = (l_1318 = l_1317);
            for (l_1315 = 15; (l_1315 != (-22)); l_1315--)
            { /* block id: 703 */
                int32_t l_1322 = (-3L);
                int32_t *l_1342 = &l_1322;
                uint16_t l_1343 = 0x5D22L;
                for (l_1322 = 2; (l_1322 >= 0); l_1322 -= 1)
                { /* block id: 706 */
                    uint16_t l_1323 = 0xBAD1L;
                    uint32_t l_1324 = 4UL;
                    l_1324 = l_1323;
                    for (l_1323 = 0; (l_1323 <= 2); l_1323 += 1)
                    { /* block id: 710 */
                        uint64_t l_1325 = 1UL;
                        int32_t l_1326 = 9L;
                        int16_t l_1327 = 0x5D7BL;
                        int8_t l_1328[6];
                        int32_t l_1329 = (-1L);
                        uint32_t l_1330 = 4294967292UL;
                        int16_t l_1333 = (-1L);
                        uint32_t l_1334 = 0x898BA905L;
                        uint8_t l_1337 = 6UL;
                        int64_t l_1338 = (-1L);
                        int i;
                        for (i = 0; i < 6; i++)
                            l_1328[i] = 4L;
                        l_1326 |= l_1325;
                        ++l_1330;
                        ++l_1334;
                        l_1318 = (l_1337 , (l_1338 , 0x78D70DC6L));
                    }
                    for (l_1323 = 0; (l_1323 <= 2); l_1323 += 1)
                    { /* block id: 718 */
                        int8_t *l_1340 = (void*)0;
                        int8_t **l_1339 = &l_1340;
                        int8_t **l_1341 = (void*)0;
                        l_1341 = l_1339;
                        l_1317 = 0x1DE16741L;
                    }
                }
                l_1314 = l_1342;
                (*l_1314) &= l_1343;
            }
            unsigned int result = 0;
            result += l_1313;
            result += l_1315;
            result += l_1317;
            result += l_1318;
            result += l_1319;
            atomic_add(&p_1653->g_special_values[42 * get_linear_group_id() + 11], result);
        }
        else
        { /* block id: 726 */
            (1 + 1);
        }
    }
    l_1363[2] = (p_22 == ((*l_1365) &= ((*l_1364) = ((((safe_mul_func_int8_t_s_s(5L, (safe_mod_func_int32_t_s_s(((l_1348 == (((*l_1352) = (l_1351 = (-3L))) , ((l_1351 | (safe_mod_func_int64_t_s_s((safe_div_func_int8_t_s_s((**p_1653->g_293), ((l_1358 = p_1653->g_28[6]) || (safe_mod_func_uint64_t_u_u((safe_rshift_func_int8_t_s_s(p_22, p_22)), l_1363[9]))))), 1UL))) , &l_1349))) == FAKE_DIVERGE(p_1653->local_2_offset, get_local_id(2), 10)), p_1653->g_297)))) , 2UL) ^ 0x9861L) < 0xF5CBL))));
    return p_22;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int16_t  func_29(uint64_t * p_30, uint16_t  p_31, struct S0 * p_1653)
{ /* block id: 690 */
    return p_31;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint64_t * func_32(int64_t  p_33, uint16_t * p_34, struct S0 * p_1653)
{ /* block id: 688 */
    uint64_t *l_1310 = &p_1653->g_26;
    return l_1310;
}


/* ------------------------------------------ */
/* 
 * reads : p_1653->g_1036 p_1653->g_28 p_1653->g_820 p_1653->g_210 p_1653->g_273 p_1653->g_96 p_1653->g_124 p_1653->g_73 p_1653->g_297 p_1653->g_1046 p_1653->g_652
 * writes: p_1653->g_820 p_1653->g_100 p_1653->g_124 p_1653->g_83 p_1653->g_652
 */
uint8_t  func_35(uint16_t * p_36, uint32_t  p_37, struct S0 * p_1653)
{ /* block id: 558 */
    int32_t **l_1029[10][5] = {{&p_1653->g_179,(void*)0,&p_1653->g_179,(void*)0,&p_1653->g_179},{&p_1653->g_179,(void*)0,&p_1653->g_179,(void*)0,&p_1653->g_179},{&p_1653->g_179,(void*)0,&p_1653->g_179,(void*)0,&p_1653->g_179},{&p_1653->g_179,(void*)0,&p_1653->g_179,(void*)0,&p_1653->g_179},{&p_1653->g_179,(void*)0,&p_1653->g_179,(void*)0,&p_1653->g_179},{&p_1653->g_179,(void*)0,&p_1653->g_179,(void*)0,&p_1653->g_179},{&p_1653->g_179,(void*)0,&p_1653->g_179,(void*)0,&p_1653->g_179},{&p_1653->g_179,(void*)0,&p_1653->g_179,(void*)0,&p_1653->g_179},{&p_1653->g_179,(void*)0,&p_1653->g_179,(void*)0,&p_1653->g_179},{&p_1653->g_179,(void*)0,&p_1653->g_179,(void*)0,&p_1653->g_179}};
    int32_t **l_1031 = (void*)0;
    int32_t ***l_1030 = &l_1031;
    uint16_t *l_1037[3][3];
    int32_t l_1042 = 0x7534452FL;
    uint32_t l_1043 = 0x55BFE632L;
    int8_t *l_1044 = &p_1653->g_100;
    uint64_t *l_1045 = &p_1653->g_124;
    int32_t l_1057 = 0x776F3067L;
    int8_t *l_1068 = &p_1653->g_73;
    uint8_t **l_1105 = (void*)0;
    int32_t l_1114[9][6][4] = {{{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL}},{{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL}},{{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL}},{{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL}},{{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL}},{{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL}},{{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL}},{{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL}},{{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL},{6L,1L,8L,0x756E34DDL}}};
    int32_t l_1116 = 0x030F30E2L;
    int32_t l_1117 = 0x1E7A2D14L;
    int32_t l_1297 = (-8L);
    uint32_t l_1298 = 0UL;
    uint8_t l_1304[9] = {0xD9L,253UL,0xD9L,0xD9L,253UL,0xD9L,0xD9L,253UL,0xD9L};
    int i, j, k;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 3; j++)
            l_1037[i][j] = &p_1653->g_820;
    }
    (*p_1653->g_1046) = (safe_mul_func_uint8_t_u_u((safe_lshift_func_int16_t_s_u(((((((((*l_1045) |= (safe_mul_func_int8_t_s_s(((*l_1044) = ((safe_lshift_func_uint16_t_u_s((safe_mul_func_int16_t_s_s((safe_sub_func_uint16_t_u_u((safe_sub_func_int64_t_s_s(p_37, (safe_rshift_func_int16_t_s_s(p_37, 4)))), (safe_div_func_uint8_t_u_u((((p_37 , l_1029[6][0]) != ((*l_1030) = l_1029[6][0])) != (!(((safe_mul_func_int8_t_s_s((((safe_rshift_func_uint16_t_u_s((+(((p_1653->g_1036 == 0x4307A662169CA6F4L) ^ ((((p_1653->g_820 |= (*p_36)) < (safe_rshift_func_int16_t_s_u(((safe_mul_func_int8_t_s_s(p_1653->g_210, l_1042)) > 8UL), 13))) , p_37) < 0x40BDL)) <= l_1042)), 15)) != p_37) >= GROUP_DIVERGE(2, 1)), p_37)) , (*p_36)) == p_1653->g_273))), l_1043)))), p_1653->g_96)), 10)) , l_1042)), 255UL))) >= 0x01421D8AB987E241L) | p_1653->g_73) , l_1042) , &p_1653->g_811) != &p_1653->g_811) , 0x47A5L), 8)), p_1653->g_297));
    for (p_1653->g_652 = 0; (p_1653->g_652 <= 4); p_1653->g_652 += 1)
    { /* block id: 566 */
        int8_t l_1064 = 0x75L;
        int8_t **l_1067 = &l_1044;
        int32_t *l_1072 = (void*)0;
        uint16_t **l_1096 = &l_1037[1][2];
        int32_t l_1112[3];
        int32_t l_1129 = (-1L);
        int32_t l_1137 = (-6L);
        int32_t l_1141 = 0x11F0AB61L;
        int32_t l_1145 = 0x0429E265L;
        int32_t l_1146 = 0x0A4115BDL;
        uint8_t ***l_1171 = &l_1105;
        uint64_t *l_1174 = &p_1653->g_26;
        int32_t l_1269 = (-7L);
        int32_t l_1302 = (-10L);
        int32_t l_1303[7] = {(-1L),(-8L),(-1L),(-1L),(-8L),(-1L),(-1L)};
        int i;
        for (i = 0; i < 3; i++)
            l_1112[i] = 0x3CCE82EEL;
        (1 + 1);
    }
    return p_37;
}


/* ------------------------------------------ */
/* 
 * reads : p_1653->g_46 p_1653->g_145 p_1653->g_100 p_1653->g_224 p_1653->g_297 p_1653->g_28 p_1653->g_191 p_1653->g_83 p_1653->g_73 p_1653->g_960 p_1653->g_236 p_1653->g_294 p_1653->g_295 p_1653->g_408 p_1653->g_996 p_1653->g_88 p_1653->g_48 p_1653->g_1001 p_1653->g_1002 p_1653->g_124 p_1653->g_98
 * writes: p_1653->g_46 p_1653->g_145 p_1653->g_124 p_1653->g_210 p_1653->g_83 p_1653->g_820 p_1653->g_473 p_1653->g_100 p_1653->g_996 p_1653->g_652 p_1653->g_88 p_1653->g_297
 */
uint16_t * func_38(int64_t  p_39, int64_t  p_40, int64_t  p_41, uint64_t * p_42, int32_t  p_43, struct S0 * p_1653)
{ /* block id: 10 */
    uint64_t *l_226 = &p_1653->g_26;
    uint64_t **l_225 = &l_226;
    int32_t l_237[3][9] = {{1L,0L,0x14629C2FL,0L,1L,1L,0L,0x14629C2FL,0L},{1L,0L,0x14629C2FL,0L,1L,1L,0L,0x14629C2FL,0L},{1L,0L,0x14629C2FL,0L,1L,1L,0L,0x14629C2FL,0L}};
    uint64_t l_270 = 18446744073709551615UL;
    int8_t l_271 = 0x20L;
    uint16_t *l_309 = &p_1653->g_28[0];
    uint64_t *l_318 = &p_1653->g_26;
    uint8_t *l_396 = (void*)0;
    int32_t *l_401 = &l_237[2][4];
    uint64_t l_489 = 18446744073709551612UL;
    uint64_t l_551 = 0xC5B17CD8809E6804L;
    uint64_t l_575 = 4UL;
    uint32_t l_855 = 4294967287UL;
    int64_t l_884 = 1L;
    uint32_t **l_885 = &p_1653->g_674[0][4];
    uint32_t l_937 = 4294967295UL;
    int i, j;
    for (p_1653->g_46 = 21; (p_1653->g_46 < 20); p_1653->g_46 = safe_sub_func_uint8_t_u_u(p_1653->g_46, 9))
    { /* block id: 13 */
        uint16_t *l_56[1];
        int32_t l_164[8] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
        int32_t *l_178 = (void*)0;
        int32_t l_234 = 5L;
        uint16_t l_235 = 0x8A1AL;
        uint64_t ***l_244 = (void*)0;
        uint64_t ****l_245 = &l_244;
        int32_t *l_252 = (void*)0;
        int32_t *l_253 = &l_164[2];
        int8_t *l_258[5][8][6] = {{{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100}},{{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100}},{{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100}},{{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100}},{{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100},{&p_1653->g_100,(void*)0,&p_1653->g_98,&p_1653->g_98,&p_1653->g_73,&p_1653->g_100}}};
        int8_t **l_259 = &l_258[1][5][3];
        uint32_t *l_272[4][6] = {{&p_1653->g_46,&p_1653->g_46,&p_1653->g_46,&p_1653->g_46,&p_1653->g_46,&p_1653->g_46},{&p_1653->g_46,&p_1653->g_46,&p_1653->g_46,&p_1653->g_46,&p_1653->g_46,&p_1653->g_46},{&p_1653->g_46,&p_1653->g_46,&p_1653->g_46,&p_1653->g_46,&p_1653->g_46,&p_1653->g_46},{&p_1653->g_46,&p_1653->g_46,&p_1653->g_46,&p_1653->g_46,&p_1653->g_46,&p_1653->g_46}};
        uint16_t l_288 = 0xC1DAL;
        uint8_t l_351 = 0UL;
        int8_t l_393 = 0x30L;
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_56[i] = &p_1653->g_28[2];
        (1 + 1);
    }
    for (p_1653->g_145 = 0; (p_1653->g_145 <= 32); p_1653->g_145 = safe_add_func_uint16_t_u_u(p_1653->g_145, 7))
    { /* block id: 197 */
        int32_t l_406 = 0x61062D46L;
        int64_t *l_407[10][3][4] = {{{(void*)0,&p_1653->g_408,&p_1653->g_408,&p_1653->g_408},{(void*)0,&p_1653->g_408,&p_1653->g_408,&p_1653->g_408},{(void*)0,&p_1653->g_408,&p_1653->g_408,&p_1653->g_408}},{{(void*)0,&p_1653->g_408,&p_1653->g_408,&p_1653->g_408},{(void*)0,&p_1653->g_408,&p_1653->g_408,&p_1653->g_408},{(void*)0,&p_1653->g_408,&p_1653->g_408,&p_1653->g_408}},{{(void*)0,&p_1653->g_408,&p_1653->g_408,&p_1653->g_408},{(void*)0,&p_1653->g_408,&p_1653->g_408,&p_1653->g_408},{(void*)0,&p_1653->g_408,&p_1653->g_408,&p_1653->g_408}},{{(void*)0,&p_1653->g_408,&p_1653->g_408,&p_1653->g_408},{(void*)0,&p_1653->g_408,&p_1653->g_408,&p_1653->g_408},{(void*)0,&p_1653->g_408,&p_1653->g_408,&p_1653->g_408}},{{(void*)0,&p_1653->g_408,&p_1653->g_408,&p_1653->g_408},{(void*)0,&p_1653->g_408,&p_1653->g_408,&p_1653->g_408},{(void*)0,&p_1653->g_408,&p_1653->g_408,&p_1653->g_408}},{{(void*)0,&p_1653->g_408,&p_1653->g_408,&p_1653->g_408},{(void*)0,&p_1653->g_408,&p_1653->g_408,&p_1653->g_408},{(void*)0,&p_1653->g_408,&p_1653->g_408,&p_1653->g_408}},{{(void*)0,&p_1653->g_408,&p_1653->g_408,&p_1653->g_408},{(void*)0,&p_1653->g_408,&p_1653->g_408,&p_1653->g_408},{(void*)0,&p_1653->g_408,&p_1653->g_408,&p_1653->g_408}},{{(void*)0,&p_1653->g_408,&p_1653->g_408,&p_1653->g_408},{(void*)0,&p_1653->g_408,&p_1653->g_408,&p_1653->g_408},{(void*)0,&p_1653->g_408,&p_1653->g_408,&p_1653->g_408}},{{(void*)0,&p_1653->g_408,&p_1653->g_408,&p_1653->g_408},{(void*)0,&p_1653->g_408,&p_1653->g_408,&p_1653->g_408},{(void*)0,&p_1653->g_408,&p_1653->g_408,&p_1653->g_408}},{{(void*)0,&p_1653->g_408,&p_1653->g_408,&p_1653->g_408},{(void*)0,&p_1653->g_408,&p_1653->g_408,&p_1653->g_408},{(void*)0,&p_1653->g_408,&p_1653->g_408,&p_1653->g_408}}};
        int32_t l_445 = (-1L);
        int32_t l_446 = 0x06C1E9EBL;
        int32_t l_447 = 0x42C1C2BCL;
        int32_t l_498 = 1L;
        int32_t l_499[7][3][9] = {{{(-5L),0x0BFC2875L,0L,0x7FD5C476L,0x7FD5C476L,0L,0x0BFC2875L,(-5L),1L},{(-5L),0x0BFC2875L,0L,0x7FD5C476L,0x7FD5C476L,0L,0x0BFC2875L,(-5L),1L},{(-5L),0x0BFC2875L,0L,0x7FD5C476L,0x7FD5C476L,0L,0x0BFC2875L,(-5L),1L}},{{(-5L),0x0BFC2875L,0L,0x7FD5C476L,0x7FD5C476L,0L,0x0BFC2875L,(-5L),1L},{(-5L),0x0BFC2875L,0L,0x7FD5C476L,0x7FD5C476L,0L,0x0BFC2875L,(-5L),1L},{(-5L),0x0BFC2875L,0L,0x7FD5C476L,0x7FD5C476L,0L,0x0BFC2875L,(-5L),1L}},{{(-5L),0x0BFC2875L,0L,0x7FD5C476L,0x7FD5C476L,0L,0x0BFC2875L,(-5L),1L},{(-5L),0x0BFC2875L,0L,0x7FD5C476L,0x7FD5C476L,0L,0x0BFC2875L,(-5L),1L},{(-5L),0x0BFC2875L,0L,0x7FD5C476L,0x7FD5C476L,0L,0x0BFC2875L,(-5L),1L}},{{(-5L),0x0BFC2875L,0L,0x7FD5C476L,0x7FD5C476L,0L,0x0BFC2875L,(-5L),1L},{(-5L),0x0BFC2875L,0L,0x7FD5C476L,0x7FD5C476L,0L,0x0BFC2875L,(-5L),1L},{(-5L),0x0BFC2875L,0L,0x7FD5C476L,0x7FD5C476L,0L,0x0BFC2875L,(-5L),1L}},{{(-5L),0x0BFC2875L,0L,0x7FD5C476L,0x7FD5C476L,0L,0x0BFC2875L,(-5L),1L},{(-5L),0x0BFC2875L,0L,0x7FD5C476L,0x7FD5C476L,0L,0x0BFC2875L,(-5L),1L},{(-5L),0x0BFC2875L,0L,0x7FD5C476L,0x7FD5C476L,0L,0x0BFC2875L,(-5L),1L}},{{(-5L),0x0BFC2875L,0L,0x7FD5C476L,0x7FD5C476L,0L,0x0BFC2875L,(-5L),1L},{(-5L),0x0BFC2875L,0L,0x7FD5C476L,0x7FD5C476L,0L,0x0BFC2875L,(-5L),1L},{(-5L),0x0BFC2875L,0L,0x7FD5C476L,0x7FD5C476L,0L,0x0BFC2875L,(-5L),1L}},{{(-5L),0x0BFC2875L,0L,0x7FD5C476L,0x7FD5C476L,0L,0x0BFC2875L,(-5L),1L},{(-5L),0x0BFC2875L,0L,0x7FD5C476L,0x7FD5C476L,0L,0x0BFC2875L,(-5L),1L},{(-5L),0x0BFC2875L,0L,0x7FD5C476L,0x7FD5C476L,0L,0x0BFC2875L,(-5L),1L}}};
        int8_t *l_595 = &p_1653->g_100;
        int32_t **l_607 = &p_1653->g_179;
        uint32_t *l_620 = &p_1653->g_145;
        uint8_t l_634 = 0x44L;
        uint64_t *l_635 = &p_1653->g_26;
        int64_t l_688 = (-7L);
        uint32_t l_695[3][9][5] = {{{4294967287UL,2UL,0UL,1UL,4294967287UL},{4294967287UL,2UL,0UL,1UL,4294967287UL},{4294967287UL,2UL,0UL,1UL,4294967287UL},{4294967287UL,2UL,0UL,1UL,4294967287UL},{4294967287UL,2UL,0UL,1UL,4294967287UL},{4294967287UL,2UL,0UL,1UL,4294967287UL},{4294967287UL,2UL,0UL,1UL,4294967287UL},{4294967287UL,2UL,0UL,1UL,4294967287UL},{4294967287UL,2UL,0UL,1UL,4294967287UL}},{{4294967287UL,2UL,0UL,1UL,4294967287UL},{4294967287UL,2UL,0UL,1UL,4294967287UL},{4294967287UL,2UL,0UL,1UL,4294967287UL},{4294967287UL,2UL,0UL,1UL,4294967287UL},{4294967287UL,2UL,0UL,1UL,4294967287UL},{4294967287UL,2UL,0UL,1UL,4294967287UL},{4294967287UL,2UL,0UL,1UL,4294967287UL},{4294967287UL,2UL,0UL,1UL,4294967287UL},{4294967287UL,2UL,0UL,1UL,4294967287UL}},{{4294967287UL,2UL,0UL,1UL,4294967287UL},{4294967287UL,2UL,0UL,1UL,4294967287UL},{4294967287UL,2UL,0UL,1UL,4294967287UL},{4294967287UL,2UL,0UL,1UL,4294967287UL},{4294967287UL,2UL,0UL,1UL,4294967287UL},{4294967287UL,2UL,0UL,1UL,4294967287UL},{4294967287UL,2UL,0UL,1UL,4294967287UL},{4294967287UL,2UL,0UL,1UL,4294967287UL},{4294967287UL,2UL,0UL,1UL,4294967287UL}}};
        uint8_t **l_814[6][6] = {{&p_1653->g_812,(void*)0,(void*)0,&p_1653->g_812,&l_396,&p_1653->g_812},{&p_1653->g_812,(void*)0,(void*)0,&p_1653->g_812,&l_396,&p_1653->g_812},{&p_1653->g_812,(void*)0,(void*)0,&p_1653->g_812,&l_396,&p_1653->g_812},{&p_1653->g_812,(void*)0,(void*)0,&p_1653->g_812,&l_396,&p_1653->g_812},{&p_1653->g_812,(void*)0,(void*)0,&p_1653->g_812,&l_396,&p_1653->g_812},{&p_1653->g_812,(void*)0,(void*)0,&p_1653->g_812,&l_396,&p_1653->g_812}};
        uint16_t l_818 = 65535UL;
        int64_t *l_823 = &p_1653->g_408;
        uint32_t l_910 = 0xE73B72CBL;
        int32_t *l_923 = (void*)0;
        int32_t *l_924 = &l_445;
        int32_t *l_925 = (void*)0;
        int32_t *l_926[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        uint32_t l_927 = 0xF7A01A6CL;
        int i, j, k;
        (1 + 1);
    }
    for (p_43 = 2; (p_43 >= 26); p_43 = safe_add_func_int16_t_s_s(p_43, 9))
    { /* block id: 494 */
        int32_t *l_932 = &l_237[2][0];
        int32_t l_933 = 2L;
        int32_t *l_934 = &p_1653->g_83[2][0];
        int32_t *l_935 = &p_1653->g_83[0][0];
        int32_t *l_936[7][1] = {{&p_1653->g_83[6][0]},{&p_1653->g_83[6][0]},{&p_1653->g_83[6][0]},{&p_1653->g_83[6][0]},{&p_1653->g_83[6][0]},{&p_1653->g_83[6][0]},{&p_1653->g_83[6][0]}};
        uint16_t *l_991 = &p_1653->g_28[0];
        int i, j;
        l_937--;
        for (l_575 = 0; (l_575 <= 0); l_575 += 1)
        { /* block id: 498 */
            for (p_1653->g_124 = 0; (p_1653->g_124 <= 4); p_1653->g_124 += 1)
            { /* block id: 501 */
                for (l_937 = 0; (l_937 <= 4); l_937 += 1)
                { /* block id: 504 */
                    for (p_1653->g_210 = 0; (p_1653->g_210 <= 0); p_1653->g_210 += 1)
                    { /* block id: 507 */
                        int i, j;
                        (*l_934) = l_237[(l_575 + 1)][(l_937 + 4)];
                    }
                    (*l_401) = (p_1653->g_100 == ((safe_lshift_func_uint16_t_u_s((p_1653->g_224[0] & p_1653->g_100), (safe_rshift_func_uint8_t_u_u(((safe_lshift_func_uint16_t_u_s(6UL, 9)) , 0x65L), ((((((p_1653->g_297 <= (p_1653->g_28[9] , (((((safe_div_func_uint32_t_u_u(0x94B2B5E8L, 1UL)) <= p_1653->g_191) != p_41) && p_1653->g_83[4][0]) && p_1653->g_73))) || 0x666D1958L) > FAKE_DIVERGE(p_1653->group_1_offset, get_group_id(1), 10)) < p_43) | 0x20L) < 0xC4A9BC12L))))) , 0UL));
                }
            }
            if ((atomic_inc(&p_1653->l_atomic_input[13]) == 3))
            { /* block id: 514 */
                uint8_t l_948 = 0x6BL;
                int32_t l_951[4] = {6L,6L,6L,6L};
                int32_t l_952 = 0x00C6F007L;
                int32_t l_953 = 6L;
                int16_t l_954 = 0x49B1L;
                uint16_t l_955 = 65535UL;
                int i;
                l_951[1] = ((l_948--) , 0x42C50EFBL);
                l_955++;
                unsigned int result = 0;
                result += l_948;
                int l_951_i0;
                for (l_951_i0 = 0; l_951_i0 < 4; l_951_i0++) {
                    result += l_951[l_951_i0];
                }
                result += l_952;
                result += l_953;
                result += l_954;
                result += l_955;
                atomic_add(&p_1653->l_special_values[13], result);
            }
            else
            { /* block id: 518 */
                (1 + 1);
            }
            for (p_1653->g_820 = 0; (p_1653->g_820 <= 1); p_1653->g_820 += 1)
            { /* block id: 523 */
                return l_309;
            }
        }
        for (p_1653->g_145 = (-26); (p_1653->g_145 < 16); p_1653->g_145 = safe_add_func_uint64_t_u_u(p_1653->g_145, 4))
        { /* block id: 529 */
            uint64_t *l_961 = &p_1653->g_26;
            int64_t *l_974 = &l_884;
            int8_t *l_977 = &p_1653->g_100;
            uint16_t l_984[2][4][5];
            uint32_t *l_992 = &p_1653->g_46;
            uint32_t *l_993 = (void*)0;
            uint32_t *l_994 = (void*)0;
            uint32_t *l_995[10] = {&l_855,(void*)0,&l_855,(void*)0,&l_855,&l_855,(void*)0,&l_855,(void*)0,&l_855};
            int16_t *l_997 = &p_1653->g_652;
            int8_t *l_998[1][3];
            int32_t l_999[3];
            int i, j, k;
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 4; j++)
                {
                    for (k = 0; k < 5; k++)
                        l_984[i][j][k] = 0xE86FL;
                }
            }
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 3; j++)
                    l_998[i][j] = &p_1653->g_73;
            }
            for (i = 0; i < 3; i++)
                l_999[i] = 0x177E664AL;
            (*p_1653->g_960) = &p_43;
            (*p_1653->g_1001) = func_59(l_961, ((FAKE_DIVERGE(p_1653->local_1_offset, get_local_id(1), 10) == (((l_999[2] = (((safe_div_func_int16_t_s_s(((*l_997) = (safe_add_func_int32_t_s_s((safe_mod_func_int32_t_s_s((((safe_lshift_func_uint16_t_u_u((safe_mod_func_int8_t_s_s((6UL == (safe_mod_func_int64_t_s_s(((*l_974) = p_1653->g_236), (4294967293UL | (p_1653->g_996 ^= ((*l_992) = (((safe_mul_func_uint16_t_u_u((((*l_977) &= (*p_1653->g_294)) , ((((safe_rshift_func_int8_t_s_u(((((((safe_rshift_func_int16_t_s_u((*l_401), 0)) == ((safe_mul_func_int16_t_s_s(l_984[0][0][4], l_984[0][0][4])) , (((((safe_rshift_func_uint16_t_u_u((safe_div_func_int8_t_s_s((safe_sub_func_uint32_t_u_u(FAKE_DIVERGE(p_1653->local_1_offset, get_local_id(1), 10), (((void*)0 != l_991) > 0L))), 0x5EL)), 6)) >= l_984[0][0][4]) && 0UL) != l_984[0][0][4]) != 0xC2E5L))) , 0x80109B96L) | p_1653->g_408) , (void*)0) == (void*)0), (*l_935))) && FAKE_DIVERGE(p_1653->group_2_offset, get_group_id(2), 10)) != (-1L)) , l_984[0][0][4])), p_1653->g_28[2])) , (void*)0) == (void*)0))))))), 0x3DL)), 6)) | p_1653->g_88) , l_984[0][0][4]), p_1653->g_48)), 0x395B5433L))), 1UL)) < GROUP_DIVERGE(2, 1)) != p_39)) && (*l_401)) | 0x7EACD57F84589BF0L)) , p_41), p_1653);
        }
        (*p_1653->g_1002) = &l_933;
    }
    for (p_1653->g_124 = 0; (p_1653->g_124 != 25); ++p_1653->g_124)
    { /* block id: 543 */
        int64_t *l_1006 = &p_1653->g_408;
        int64_t **l_1005 = &l_1006;
        uint8_t *l_1007 = &p_1653->g_88;
        (*l_401) = (p_43 <= ((&p_1653->g_408 != ((*l_1005) = &p_1653->g_408)) , ((++(*l_1007)) & 0x4FL)));
        for (p_1653->g_297 = 2; (p_1653->g_297 >= 0); p_1653->g_297 -= 1)
        { /* block id: 549 */
            int64_t *l_1010 = &l_884;
            (*l_401) = (((*l_401) , (p_1653->g_98 , (void*)0)) != (l_1010 = &p_39));
            return &p_1653->g_28[3];
        }
        if (p_39)
            break;
        if ((*l_401))
            break;
    }
    return l_309;
}


/* ------------------------------------------ */
/* 
 * reads : p_1653->g_26 p_1653->g_71 p_1653->g_75 p_1653->g_82 p_1653->g_83
 * writes: p_1653->g_26 p_1653->g_73 p_1653->g_76 p_1653->g_83
 */
int32_t  func_51(uint64_t * p_52, uint16_t * p_53, uint16_t * p_54, struct S0 * p_1653)
{ /* block id: 26 */
    uint64_t *l_62 = &p_1653->g_26;
    int32_t l_70 = 1L;
    uint8_t *l_93 = &p_1653->g_94;
    int32_t l_104 = 0L;
    int8_t l_110 = (-6L);
    int32_t l_111[7] = {1L,(-6L),1L,1L,(-6L),1L,1L};
    int32_t l_120 = 0x2F1DAB3DL;
    int32_t l_122 = 1L;
    int i;
    for (p_1653->g_26 = 28; (p_1653->g_26 >= 8); p_1653->g_26 = safe_sub_func_uint64_t_u_u(p_1653->g_26, 2))
    { /* block id: 29 */
        uint64_t *l_64 = &p_1653->g_26;
        uint64_t **l_63 = &l_64;
        int32_t l_65[1];
        int8_t *l_72 = &p_1653->g_73;
        uint64_t *l_74[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int64_t l_77 = 0x630A554F1F2BDDC7L;
        int32_t **l_78 = &p_1653->g_76;
        int i;
        for (i = 0; i < 1; i++)
            l_65[i] = 0x38596781L;
        (*p_1653->g_75) = func_59((((((void*)0 != l_62) > ((*l_72) = ((((((void*)0 != &p_1653->g_28[7]) | 0x6DD1A6511C0E03A8L) , (&p_1653->g_26 != ((*l_63) = p_52))) > (l_65[0] > (safe_lshift_func_int16_t_s_u((safe_add_func_int16_t_s_s(l_70, l_65[0])), 11)))) ^ p_1653->g_71))) ^ l_70) , l_74[3]), l_65[0], p_1653);
        (*l_78) = func_59(((*l_63) = l_62), l_77, p_1653);
        if ((atomic_inc(&p_1653->l_atomic_input[15]) == 0))
        { /* block id: 38 */
            int32_t *l_79 = (void*)0;
            int32_t l_81 = 0x344A6599L;
            int32_t *l_80[2][3] = {{&l_81,&l_81,&l_81},{&l_81,&l_81,&l_81}};
            int i, j;
            l_79 = (l_80[1][1] = l_79);
            unsigned int result = 0;
            result += l_81;
            atomic_add(&p_1653->l_special_values[15], result);
        }
        else
        { /* block id: 41 */
            (1 + 1);
        }
        (*p_1653->g_82) &= (l_70 >= l_70);
    }
    for (l_70 = 0; (l_70 == (-10)); l_70 = safe_sub_func_uint16_t_u_u(l_70, 6))
    { /* block id: 48 */
        uint64_t l_92 = 9UL;
        int32_t l_109 = 8L;
        int32_t l_115[1];
        int8_t l_121 = 0x20L;
        int32_t l_131 = 1L;
        int i;
        for (i = 0; i < 1; i++)
            l_115[i] = 0x436115CBL;
        (1 + 1);
    }
    return l_120;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_59(uint64_t * p_60, uint64_t  p_61, struct S0 * p_1653)
{ /* block id: 32 */
    return &p_1653->g_4;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[42];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 42; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[42];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 42; i++)
            l_special_values[i] = 0;
    struct S0 c_1654;
    struct S0* p_1653 = &c_1654;
    struct S0 c_1655 = {
        0x5F394A2AL, // p_1653->g_4
        4294967294UL, // p_1653->g_8
        0UL, // p_1653->g_26
        {0xC933L,0x6FFAL,0x42F3L,0x6FFAL,0xC933L,0xC933L,0x6FFAL,0x42F3L,0x6FFAL,0xC933L}, // p_1653->g_28
        1UL, // p_1653->g_46
        0x38B1L, // p_1653->g_48
        1UL, // p_1653->g_71
        1L, // p_1653->g_73
        &p_1653->g_4, // p_1653->g_76
        &p_1653->g_76, // p_1653->g_75
        {{0x7245565CL},{0x7245565CL},{0x7245565CL},{0x7245565CL},{0x7245565CL},{0x7245565CL},{0x7245565CL}}, // p_1653->g_83
        &p_1653->g_83[6][0], // p_1653->g_82
        0xC2L, // p_1653->g_88
        255UL, // p_1653->g_94
        0x413D3DF2L, // p_1653->g_96
        (-1L), // p_1653->g_98
        (-1L), // p_1653->g_100
        0x6B59DBCA189D31E3L, // p_1653->g_124
        0x61E94E49L, // p_1653->g_145
        &p_1653->g_83[6][0], // p_1653->g_159
        &p_1653->g_96, // p_1653->g_179
        0xFB48145E0EB8E210L, // p_1653->g_186
        (-9L), // p_1653->g_191
        0x46L, // p_1653->g_210
        {0UL,0UL}, // p_1653->g_224
        &p_1653->g_224[0], // p_1653->g_223
        &p_1653->g_223, // p_1653->g_222
        1UL, // p_1653->g_236
        0x21D4287C16215CE2L, // p_1653->g_273
        0x53L, // p_1653->g_295
        &p_1653->g_295, // p_1653->g_294
        &p_1653->g_294, // p_1653->g_293
        0x3B5EDC1AL, // p_1653->g_297
        (void*)0, // p_1653->g_354
        {&p_1653->g_76,&p_1653->g_76,&p_1653->g_76,&p_1653->g_76,&p_1653->g_76}, // p_1653->g_355
        &p_1653->g_76, // p_1653->g_356
        (void*)0, // p_1653->g_400
        (-1L), // p_1653->g_408
        0x18CB53D5L, // p_1653->g_439
        (void*)0, // p_1653->g_472
        (void*)0, // p_1653->g_473
        0x7602A738L, // p_1653->g_549
        (-1L), // p_1653->g_652
        {{&p_1653->g_236,&p_1653->g_236,&p_1653->g_236,&p_1653->g_236,&p_1653->g_236},{&p_1653->g_236,&p_1653->g_236,&p_1653->g_236,&p_1653->g_236,&p_1653->g_236},{&p_1653->g_236,&p_1653->g_236,&p_1653->g_236,&p_1653->g_236,&p_1653->g_236},{&p_1653->g_236,&p_1653->g_236,&p_1653->g_236,&p_1653->g_236,&p_1653->g_236},{&p_1653->g_236,&p_1653->g_236,&p_1653->g_236,&p_1653->g_236,&p_1653->g_236},{&p_1653->g_236,&p_1653->g_236,&p_1653->g_236,&p_1653->g_236,&p_1653->g_236}}, // p_1653->g_674
        &p_1653->g_76, // p_1653->g_733
        (void*)0, // p_1653->g_761
        &p_1653->g_674[0][4], // p_1653->g_777
        (void*)0, // p_1653->g_812
        &p_1653->g_812, // p_1653->g_811
        0x456D3E0596BF15E7L, // p_1653->g_819
        65533UL, // p_1653->g_820
        (void*)0, // p_1653->g_883
        &p_1653->g_473, // p_1653->g_960
        (-6L), // p_1653->g_996
        {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}, // p_1653->g_1000
        &p_1653->g_473, // p_1653->g_1001
        &p_1653->g_473, // p_1653->g_1002
        1L, // p_1653->g_1036
        &p_1653->g_83[6][0], // p_1653->g_1046
        &p_1653->g_76, // p_1653->g_1073
        {248UL,248UL}, // p_1653->g_1101
        {&p_1653->g_223,&p_1653->g_223,&p_1653->g_223,&p_1653->g_223}, // p_1653->g_1111
        &p_1653->g_1111[3], // p_1653->g_1110
        &p_1653->g_1110, // p_1653->g_1109
        &p_1653->g_473, // p_1653->g_1124
        (void*)0, // p_1653->g_1173
        &p_1653->g_76, // p_1653->g_1178
        {{{&p_1653->g_83[6][0],(void*)0},{&p_1653->g_83[6][0],(void*)0},{&p_1653->g_83[6][0],(void*)0},{&p_1653->g_83[6][0],(void*)0},{&p_1653->g_83[6][0],(void*)0},{&p_1653->g_83[6][0],(void*)0},{&p_1653->g_83[6][0],(void*)0},{&p_1653->g_83[6][0],(void*)0},{&p_1653->g_83[6][0],(void*)0}},{{&p_1653->g_83[6][0],(void*)0},{&p_1653->g_83[6][0],(void*)0},{&p_1653->g_83[6][0],(void*)0},{&p_1653->g_83[6][0],(void*)0},{&p_1653->g_83[6][0],(void*)0},{&p_1653->g_83[6][0],(void*)0},{&p_1653->g_83[6][0],(void*)0},{&p_1653->g_83[6][0],(void*)0},{&p_1653->g_83[6][0],(void*)0}},{{&p_1653->g_83[6][0],(void*)0},{&p_1653->g_83[6][0],(void*)0},{&p_1653->g_83[6][0],(void*)0},{&p_1653->g_83[6][0],(void*)0},{&p_1653->g_83[6][0],(void*)0},{&p_1653->g_83[6][0],(void*)0},{&p_1653->g_83[6][0],(void*)0},{&p_1653->g_83[6][0],(void*)0},{&p_1653->g_83[6][0],(void*)0}},{{&p_1653->g_83[6][0],(void*)0},{&p_1653->g_83[6][0],(void*)0},{&p_1653->g_83[6][0],(void*)0},{&p_1653->g_83[6][0],(void*)0},{&p_1653->g_83[6][0],(void*)0},{&p_1653->g_83[6][0],(void*)0},{&p_1653->g_83[6][0],(void*)0},{&p_1653->g_83[6][0],(void*)0},{&p_1653->g_83[6][0],(void*)0}}}, // p_1653->g_1204
        &p_1653->g_83[6][0], // p_1653->g_1205
        &p_1653->g_83[6][0], // p_1653->g_1208
        4294967295UL, // p_1653->g_1268
        {0x3F82331FL,0x3F82331FL,0x3F82331FL}, // p_1653->g_1282
        &p_1653->g_473, // p_1653->g_1307
        &p_1653->g_473, // p_1653->g_1308
        &p_1653->g_76, // p_1653->g_1434
        65535UL, // p_1653->g_1480
        &p_1653->g_76, // p_1653->g_1481
        248UL, // p_1653->g_1504
        5L, // p_1653->g_1526
        (void*)0, // p_1653->g_1529
        &p_1653->g_1529, // p_1653->g_1528
        &p_1653->g_1528, // p_1653->g_1527
        0xA3L, // p_1653->g_1579
        (void*)0, // p_1653->g_1619
        &p_1653->g_76, // p_1653->g_1630
        0L, // p_1653->g_1647
        sequence_input[get_global_id(0)], // p_1653->global_0_offset
        sequence_input[get_global_id(1)], // p_1653->global_1_offset
        sequence_input[get_global_id(2)], // p_1653->global_2_offset
        sequence_input[get_local_id(0)], // p_1653->local_0_offset
        sequence_input[get_local_id(1)], // p_1653->local_1_offset
        sequence_input[get_local_id(2)], // p_1653->local_2_offset
        sequence_input[get_group_id(0)], // p_1653->group_0_offset
        sequence_input[get_group_id(1)], // p_1653->group_1_offset
        sequence_input[get_group_id(2)], // p_1653->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_1654 = c_1655;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1653);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1653->g_4, "p_1653->g_4", print_hash_value);
    transparent_crc(p_1653->g_8, "p_1653->g_8", print_hash_value);
    transparent_crc(p_1653->g_26, "p_1653->g_26", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1653->g_28[i], "p_1653->g_28[i]", print_hash_value);

    }
    transparent_crc(p_1653->g_46, "p_1653->g_46", print_hash_value);
    transparent_crc(p_1653->g_48, "p_1653->g_48", print_hash_value);
    transparent_crc(p_1653->g_71, "p_1653->g_71", print_hash_value);
    transparent_crc(p_1653->g_73, "p_1653->g_73", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1653->g_83[i][j], "p_1653->g_83[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1653->g_88, "p_1653->g_88", print_hash_value);
    transparent_crc(p_1653->g_94, "p_1653->g_94", print_hash_value);
    transparent_crc(p_1653->g_96, "p_1653->g_96", print_hash_value);
    transparent_crc(p_1653->g_98, "p_1653->g_98", print_hash_value);
    transparent_crc(p_1653->g_100, "p_1653->g_100", print_hash_value);
    transparent_crc(p_1653->g_124, "p_1653->g_124", print_hash_value);
    transparent_crc(p_1653->g_145, "p_1653->g_145", print_hash_value);
    transparent_crc(p_1653->g_186, "p_1653->g_186", print_hash_value);
    transparent_crc(p_1653->g_191, "p_1653->g_191", print_hash_value);
    transparent_crc(p_1653->g_210, "p_1653->g_210", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1653->g_224[i], "p_1653->g_224[i]", print_hash_value);

    }
    transparent_crc(p_1653->g_236, "p_1653->g_236", print_hash_value);
    transparent_crc(p_1653->g_273, "p_1653->g_273", print_hash_value);
    transparent_crc(p_1653->g_295, "p_1653->g_295", print_hash_value);
    transparent_crc(p_1653->g_297, "p_1653->g_297", print_hash_value);
    transparent_crc(p_1653->g_408, "p_1653->g_408", print_hash_value);
    transparent_crc(p_1653->g_439, "p_1653->g_439", print_hash_value);
    transparent_crc(p_1653->g_549, "p_1653->g_549", print_hash_value);
    transparent_crc(p_1653->g_652, "p_1653->g_652", print_hash_value);
    transparent_crc(p_1653->g_819, "p_1653->g_819", print_hash_value);
    transparent_crc(p_1653->g_820, "p_1653->g_820", print_hash_value);
    transparent_crc(p_1653->g_996, "p_1653->g_996", print_hash_value);
    transparent_crc(p_1653->g_1036, "p_1653->g_1036", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1653->g_1101[i], "p_1653->g_1101[i]", print_hash_value);

    }
    transparent_crc(p_1653->g_1268, "p_1653->g_1268", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1653->g_1282[i], "p_1653->g_1282[i]", print_hash_value);

    }
    transparent_crc(p_1653->g_1480, "p_1653->g_1480", print_hash_value);
    transparent_crc(p_1653->g_1504, "p_1653->g_1504", print_hash_value);
    transparent_crc(p_1653->g_1526, "p_1653->g_1526", print_hash_value);
    transparent_crc(p_1653->g_1579, "p_1653->g_1579", print_hash_value);
    transparent_crc(p_1653->g_1647, "p_1653->g_1647", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 42; i++)
            transparent_crc(p_1653->g_special_values[i + 42 * get_linear_group_id()], "p_1653->g_special_values[i + 42 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 42; i++)
            transparent_crc(p_1653->l_special_values[i], "p_1653->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
