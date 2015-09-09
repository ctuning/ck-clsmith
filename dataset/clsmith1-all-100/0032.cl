// --atomics 78 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 63,53,1 -l 21,1,1
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

__constant uint32_t permutations[10][21] = {
{15,0,20,11,7,3,1,2,5,18,16,13,10,12,19,17,6,4,14,8,9}, // permutation 0
{20,12,11,15,14,4,3,18,10,9,16,19,6,7,0,2,8,5,17,1,13}, // permutation 1
{13,19,12,4,18,9,6,1,16,0,11,10,7,17,15,3,2,14,8,20,5}, // permutation 2
{19,20,1,17,3,15,7,11,16,13,5,10,14,18,9,12,6,4,8,2,0}, // permutation 3
{13,5,15,2,3,11,16,9,8,14,19,0,6,10,17,7,4,1,20,12,18}, // permutation 4
{10,0,12,18,15,11,1,8,17,13,16,19,4,6,2,7,9,3,5,14,20}, // permutation 5
{6,16,11,15,4,10,12,19,8,5,0,17,20,13,9,3,14,18,2,7,1}, // permutation 6
{3,14,4,9,20,1,5,2,17,10,12,16,11,19,0,15,6,7,8,13,18}, // permutation 7
{19,2,20,18,11,5,16,12,14,9,8,17,0,6,7,15,3,1,13,4,10}, // permutation 8
{3,4,1,18,5,13,12,15,8,10,2,17,14,11,9,6,7,19,16,20,0} // permutation 9
};

// Seed: 32

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    uint16_t g_18;
    uint8_t g_23[8][4];
    uint16_t g_26;
    VECTOR(int32_t, 16) g_28;
    int64_t g_32;
    volatile VECTOR(int32_t, 16) g_42;
    uint16_t g_52;
    uint16_t *g_51[7];
    uint64_t g_64[9];
    VECTOR(int16_t, 8) g_75;
    uint16_t g_114;
    int32_t *g_118;
    VECTOR(int32_t, 2) g_128;
    VECTOR(int32_t, 4) g_129;
    int32_t *g_130[8][6][5];
    int16_t g_138[4];
    uint32_t g_139;
    uint32_t g_150;
    VECTOR(int8_t, 8) g_158;
    uint8_t g_167;
    uint8_t g_173[9][4];
    volatile VECTOR(uint64_t, 2) g_198;
    volatile uint64_t g_199;
    volatile uint64_t *g_197[2];
    VECTOR(uint8_t, 2) g_234;
    VECTOR(int16_t, 2) g_268;
    VECTOR(int64_t, 16) g_299;
    uint64_t g_316;
    uint64_t *g_315;
    int16_t g_330;
    uint32_t * volatile g_339;
    uint32_t * volatile g_340;
    uint32_t * volatile g_341[2];
    uint32_t *g_342;
    uint32_t * volatile *g_338[2][10];
    VECTOR(uint8_t, 16) g_357;
    int64_t g_370;
    uint32_t g_392;
    VECTOR(int8_t, 4) g_420;
    VECTOR(uint64_t, 2) g_422;
    VECTOR(int32_t, 2) g_441;
    VECTOR(uint16_t, 8) g_478;
    VECTOR(uint16_t, 2) g_490;
    int8_t g_502[7][3][6];
    VECTOR(uint16_t, 8) g_505;
    VECTOR(int32_t, 8) g_507;
    uint8_t g_541;
    volatile VECTOR(int8_t, 8) g_613;
    VECTOR(uint16_t, 4) g_624;
    volatile VECTOR(uint16_t, 2) g_625;
    volatile VECTOR(uint16_t, 4) g_628;
    volatile VECTOR(uint16_t, 2) g_629;
    volatile VECTOR(uint8_t, 16) g_648;
    int16_t *g_679;
    int16_t * volatile *g_678[8][6][4];
    int64_t g_682[2][3];
    int32_t ** volatile g_685;
    VECTOR(uint32_t, 4) g_692;
    volatile VECTOR(uint64_t, 2) g_699;
    int32_t g_707;
    int32_t * volatile g_710;
    int32_t * volatile g_712;
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
    uint32_t tid;
    __local volatile uint32_t *l_atomic_input;
    __local volatile uint32_t *l_special_values;
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
int16_t  func_1(struct S0 * p_713);
int32_t  func_2(uint8_t  p_3, int32_t  p_4, int8_t  p_5, uint32_t  p_6, int32_t  p_7, struct S0 * p_713);
int8_t  func_12(uint32_t  p_13, int64_t  p_14, struct S0 * p_713);
int32_t  func_35(int64_t  p_36, int8_t  p_37, struct S0 * p_713);
uint8_t  func_46(uint32_t  p_47, uint16_t * p_48, int64_t  p_49, int32_t  p_50, struct S0 * p_713);
uint16_t  func_76(uint16_t  p_77, uint16_t  p_78, uint64_t  p_79, uint32_t  p_80, struct S0 * p_713);
int64_t  func_81(int64_t  p_82, uint64_t * p_83, uint8_t * p_84, uint16_t  p_85, uint16_t  p_86, struct S0 * p_713);
uint8_t * func_87(uint16_t * p_88, int8_t  p_89, uint16_t  p_90, uint64_t  p_91, uint8_t * p_92, struct S0 * p_713);
uint16_t * func_93(uint16_t  p_94, uint64_t * p_95, uint64_t * p_96, uint32_t  p_97, struct S0 * p_713);
int32_t  func_98(uint16_t * p_99, uint16_t  p_100, uint32_t  p_101, int64_t  p_102, uint32_t  p_103, struct S0 * p_713);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_713->g_comm_values p_713->g_18 p_713->l_comm_values p_713->g_23 p_713->g_26 p_713->g_28 p_713->g_32 p_713->g_128 p_713->g_64 p_713->g_75 p_713->g_114 p_713->g_129 p_713->g_130 p_713->g_139 p_713->g_150 p_713->g_158 p_713->g_167 p_713->g_173 p_713->g_197 p_713->g_138 p_713->g_234 p_713->g_268 p_713->g_118 p_713->g_315 p_713->g_338 p_713->g_357 p_713->g_316 p_713->g_370 p_713->g_392 p_713->g_342 p_713->g_52 p_713->g_420 p_713->g_422 p_713->g_330 p_713->g_441 p_713->g_478 p_713->g_490 p_713->g_505 p_713->g_507 p_713->g_299 p_713->g_624 p_713->g_625 p_713->g_628 p_713->g_629 p_713->g_648 p_713->g_678 p_713->g_339 p_713->g_685 p_713->g_692 p_713->g_699 p_713->g_707 p_713->g_712
 * writes: p_713->g_18 p_713->g_23 p_713->g_26 p_713->g_51 p_713->g_64 p_713->g_114 p_713->g_118 p_713->g_130 p_713->g_32 p_713->g_138 p_713->g_139 p_713->g_150 p_713->g_167 p_713->g_158 p_713->g_315 p_713->g_52 p_713->g_316 p_713->g_370 p_713->g_392 p_713->g_330 p_713->g_502 p_713->g_541 p_713->l_comm_values p_713->g_682 p_713->g_707
 */
int16_t  func_1(struct S0 * p_713)
{ /* block id: 4 */
    uint16_t *l_17[4][6][2] = {{{&p_713->g_18,(void*)0},{&p_713->g_18,(void*)0},{&p_713->g_18,(void*)0},{&p_713->g_18,(void*)0},{&p_713->g_18,(void*)0},{&p_713->g_18,(void*)0}},{{&p_713->g_18,(void*)0},{&p_713->g_18,(void*)0},{&p_713->g_18,(void*)0},{&p_713->g_18,(void*)0},{&p_713->g_18,(void*)0},{&p_713->g_18,(void*)0}},{{&p_713->g_18,(void*)0},{&p_713->g_18,(void*)0},{&p_713->g_18,(void*)0},{&p_713->g_18,(void*)0},{&p_713->g_18,(void*)0},{&p_713->g_18,(void*)0}},{{&p_713->g_18,(void*)0},{&p_713->g_18,(void*)0},{&p_713->g_18,(void*)0},{&p_713->g_18,(void*)0},{&p_713->g_18,(void*)0},{&p_713->g_18,(void*)0}}};
    VECTOR(uint64_t, 2) l_21 = (VECTOR(uint64_t, 2))(0x07EA4C5706B37990L, 0x3F30B91EE4CFF15CL);
    uint8_t *l_22 = &p_713->g_23[7][3];
    VECTOR(uint16_t, 2) l_27 = (VECTOR(uint16_t, 2))(0x58EDL, 0xD2F2L);
    int64_t l_31 = 5L;
    int8_t l_704 = (-5L);
    int32_t *l_705 = (void*)0;
    int32_t *l_706 = (void*)0;
    int32_t *l_711 = (void*)0;
    int i, j, k;
    p_713->g_707 ^= (l_704 = func_2((((~p_713->g_comm_values[p_713->tid]) != (((((((safe_mul_func_int16_t_s_s(((FAKE_DIVERGE(p_713->local_1_offset, get_local_id(1), 10) && ((p_713->g_26 |= (safe_add_func_int8_t_s_s(func_12((safe_sub_func_int32_t_s_s(((--p_713->g_18) < p_713->g_comm_values[p_713->tid]), (l_17[3][2][1] == l_17[3][5][1]))), p_713->l_comm_values[(safe_mod_func_uint32_t_u_u(p_713->tid, 21))], p_713), (((*l_22) = l_21.x) , ((*l_22)--))))) , (l_31 |= ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(rhadd(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(l_27.yyyy)))), ((VECTOR(uint16_t, 16))(0xD2DAL, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(0UL, 9UL)).xyxx)), 0x34D7L, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(abs(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 16))(0x3B83L, 0x75BFL, (((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(p_713->g_28.sf93f)).hi, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))((-1L), func_12(p_713->g_23[2][0], (safe_sub_func_int8_t_s_s(p_713->g_23[7][3], l_21.y)), p_713), 3L, 0x1E7FF518L)))).odd))).lo , 0x6B85L), p_713->g_18, 0x048CL, (-4L), 0x76B4L, ((VECTOR(int16_t, 8))(1L)), (-1L))).hi, ((VECTOR(int16_t, 8))(0x3265L))))).s56)).yxxxxyyx))).lo)), 0x5E0EL, ((VECTOR(uint16_t, 4))(65535UL)), 65535UL)).se7df))).zyxywzyxzwzwzxzw)).s2cfb)).y))) != p_713->g_28.s1), p_713->l_comm_values[(safe_mod_func_uint32_t_u_u(p_713->tid, 21))])) , p_713->g_comm_values[p_713->tid]) & p_713->l_comm_values[(safe_mod_func_uint32_t_u_u(p_713->tid, 21))]) > l_27.x) || p_713->g_comm_values[p_713->tid]) == 0xA0F0C0ED6D23037DL) <= (-1L))) , FAKE_DIVERGE(p_713->local_2_offset, get_local_id(2), 10)), l_27.y, p_713->g_32, p_713->l_comm_values[(safe_mod_func_uint32_t_u_u(p_713->tid, 21))], p_713->g_32, p_713));
    (*p_713->g_712) ^= (safe_div_func_uint16_t_u_u(l_704, l_27.y));
    return l_21.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_713->g_26 p_713->g_18 p_713->g_32 p_713->g_128 p_713->g_64 p_713->g_75 p_713->g_23 p_713->g_comm_values p_713->g_114 p_713->g_129 p_713->g_130 p_713->g_28 p_713->g_139 p_713->g_150 p_713->l_comm_values p_713->g_158 p_713->g_167 p_713->g_173 p_713->g_197 p_713->g_138 p_713->g_234 p_713->g_268 p_713->g_118 p_713->g_315 p_713->g_338 p_713->g_357 p_713->g_316 p_713->g_370 p_713->g_392 p_713->g_342 p_713->g_52 p_713->g_420 p_713->g_422 p_713->g_330 p_713->g_441 p_713->g_478 p_713->g_490 p_713->g_505 p_713->g_507 p_713->g_299 p_713->g_624 p_713->g_625 p_713->g_628 p_713->g_629 p_713->g_648 p_713->g_678 p_713->g_339 p_713->g_685 p_713->g_692 p_713->g_699
 * writes: p_713->g_26 p_713->g_51 p_713->g_64 p_713->g_114 p_713->g_118 p_713->g_130 p_713->g_32 p_713->g_138 p_713->g_139 p_713->g_150 p_713->g_167 p_713->g_158 p_713->g_315 p_713->g_52 p_713->g_316 p_713->g_370 p_713->g_392 p_713->g_330 p_713->g_502 p_713->g_541 p_713->l_comm_values p_713->g_682
 */
int32_t  func_2(uint8_t  p_3, int32_t  p_4, int8_t  p_5, uint32_t  p_6, int32_t  p_7, struct S0 * p_713)
{ /* block id: 12 */
    int8_t l_41[1][5][3];
    int32_t l_619[8];
    VECTOR(uint16_t, 16) l_626 = (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 65535UL), 65535UL), 65535UL, 0UL, 65535UL, (VECTOR(uint16_t, 2))(0UL, 65535UL), (VECTOR(uint16_t, 2))(0UL, 65535UL), 0UL, 65535UL, 0UL, 65535UL);
    uint8_t *l_639 = &p_713->g_173[0][1];
    uint8_t **l_638 = &l_639;
    VECTOR(uint16_t, 4) l_646 = (VECTOR(uint16_t, 4))(0xC5DEL, (VECTOR(uint16_t, 2))(0xC5DEL, 6UL), 6UL);
    VECTOR(uint8_t, 4) l_647 = (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x49L), 0x49L);
    int32_t l_651 = 0x262763C5L;
    VECTOR(uint64_t, 8) l_698 = (VECTOR(uint64_t, 8))(0x971DD5240A3166ECL, (VECTOR(uint64_t, 4))(0x971DD5240A3166ECL, (VECTOR(uint64_t, 2))(0x971DD5240A3166ECL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0x971DD5240A3166ECL, 18446744073709551615UL);
    uint32_t l_703 = 0xA818C9D5L;
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 3; k++)
                l_41[i][j][k] = 0x24L;
        }
    }
    for (i = 0; i < 8; i++)
        l_619[i] = (-10L);
    for (p_713->g_26 = 0; (p_713->g_26 != 7); ++p_713->g_26)
    { /* block id: 15 */
        int8_t l_40 = 0x00L;
        int32_t *l_617 = (void*)0;
        int32_t *l_618[3][8][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
        VECTOR(uint16_t, 4) l_627 = (VECTOR(uint16_t, 4))(5UL, (VECTOR(uint16_t, 2))(5UL, 65535UL), 65535UL);
        uint8_t **l_636 = (void*)0;
        uint8_t ***l_637 = &l_636;
        uint8_t ***l_640 = &l_638;
        int16_t *l_645[6] = {&p_713->g_138[2],&p_713->g_138[2],&p_713->g_138[2],&p_713->g_138[2],&p_713->g_138[2],&p_713->g_138[2]};
        int8_t l_649 = 0x52L;
        int32_t ***l_650 = (void*)0;
        VECTOR(uint16_t, 4) l_656 = (VECTOR(uint16_t, 4))(0xED85L, (VECTOR(uint16_t, 2))(0xED85L, 0x96DDL), 0x96DDL);
        VECTOR(int64_t, 16) l_695 = (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x2C0D1B279852A436L), 0x2C0D1B279852A436L), 0x2C0D1B279852A436L, (-1L), 0x2C0D1B279852A436L, (VECTOR(int64_t, 2))((-1L), 0x2C0D1B279852A436L), (VECTOR(int64_t, 2))((-1L), 0x2C0D1B279852A436L), (-1L), 0x2C0D1B279852A436L, (-1L), 0x2C0D1B279852A436L);
        VECTOR(int64_t, 4) l_697 = (VECTOR(int64_t, 4))(0x1DC34F3569B24505L, (VECTOR(int64_t, 2))(0x1DC34F3569B24505L, 1L), 1L);
        int i, j, k;
        if (p_7)
            break;
        l_619[0] = (!func_35(p_5, ((safe_mod_func_uint32_t_u_u(((*p_713->g_342) = (func_12(l_40, (((((p_6 | l_41[0][2][2]) , (((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(p_713->g_42.s34)).xyyxxxxxxyyyxxyy)).sc | 0xEFF443A5L)) & p_713->g_18) >= (safe_unary_minus_func_int64_t_s(((safe_mul_func_uint8_t_u_u((func_46(l_41[0][2][2], (l_41[0][2][2] , (p_713->g_51[4] = (void*)0)), p_7, p_713->g_32, p_713) , 0xE8L), 0x32L)) && l_40)))) && l_40), p_713) == 0x707AE2802F7D1753L)), p_713->g_26)) < p_713->g_505.s1), p_713));
        l_651 = (safe_mod_func_uint16_t_u_u((safe_rshift_func_int8_t_s_u(((((0L < ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(add_sat(((VECTOR(uint16_t, 4))(add_sat(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(abs(((VECTOR(uint16_t, 4))(mad_sat(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(add_sat(((VECTOR(uint16_t, 8))(p_713->g_624.zyxwzzyx)).s25, ((VECTOR(uint16_t, 2))(0xBDECL, 65531UL))))).yyxx)).odd)).xyyx, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(p_713->g_625.xxyxyyyxxxyyyxyx)))).s6ce6, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(clz(((VECTOR(uint16_t, 4))(l_626.sd3c7)).odd))).xyxy)).lo)).xxxyxyxx)))).odd))).xwzyxyzyyxxzxwyy))).even)).lo, ((VECTOR(uint16_t, 2))(clz(((VECTOR(uint16_t, 8))(clz(((VECTOR(uint16_t, 8))(add_sat(((VECTOR(uint16_t, 4))(l_627.xywy)).wzwwyywz, ((VECTOR(uint16_t, 4))(p_713->g_628.yzwy)).zyxyxxyz)))))).s01))).xxyx))).even, ((VECTOR(uint16_t, 4))(p_713->g_629.xxxy)).odd))).xyyyyyxyyxxxyyxy)).se) , (l_626.s7 , ((safe_lshift_func_uint8_t_u_s(((safe_div_func_int16_t_s_s((0xB824L != ((p_3--) > (((((((*l_637) = l_636) != ((*l_640) = l_638)) ^ (safe_mod_func_int16_t_s_s(((l_619[4] = ((safe_lshift_func_uint8_t_u_s(p_713->g_505.s0, 3)) | p_6)) || (((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(rotate(((VECTOR(uint16_t, 8))(l_646.xyzxxzzy)), ((VECTOR(uint16_t, 8))(0x7A0AL, 0x9401L, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(upsample(((VECTOR(uint8_t, 16))(min(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(0x98L, 0x99L)), 0x65L, 0x15L, ((VECTOR(uint8_t, 4))(l_647.xyzz)))).hi)).xzzwxxxyzzxxxwyy, (uint8_t)p_6))).sc7, ((VECTOR(uint8_t, 16))(clz(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(1UL, 254UL)), 1UL, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(mad_sat(((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 4))(mul_hi(((VECTOR(uint8_t, 4))(safe_clamp_func(VECTOR(uint8_t, 4),uint8_t,((VECTOR(uint8_t, 16))(p_713->g_648.sbb2b2c193d3a5428)).s52e5, (uint8_t)(l_646.w , p_4), (uint8_t)0x94L))), ((VECTOR(uint8_t, 4))(0x98L))))).yywxxyzz, ((VECTOR(uint8_t, 8))(251UL))))), ((VECTOR(uint8_t, 8))(0UL)), ((VECTOR(uint8_t, 8))(1UL))))).hi)), l_649, 253UL, 0xA5L, 1UL, ((VECTOR(uint8_t, 4))(0x73L)), 1UL))))))).s4d))).xxxy)), 0x7650L, 0xDC2AL))))).s62)).lo && GROUP_DIVERGE(2, 1))), p_7))) , (void*)0) != (void*)0) ^ l_626.sb))), 0x4866L)) > l_626.sb), 7)) , l_650))) == l_650) & l_41[0][1][2]), p_713->g_357.s9)), p_5));
        for (p_713->g_114 = 0; (p_713->g_114 > 48); p_713->g_114 = safe_add_func_int8_t_s_s(p_713->g_114, 5))
        { /* block id: 320 */
            int64_t *l_661 = &p_713->g_32;
            int64_t *l_662[7][6] = {{(void*)0,(void*)0,&p_713->g_370,&p_713->g_370,(void*)0,&p_713->g_370},{(void*)0,(void*)0,&p_713->g_370,&p_713->g_370,(void*)0,&p_713->g_370},{(void*)0,(void*)0,&p_713->g_370,&p_713->g_370,(void*)0,&p_713->g_370},{(void*)0,(void*)0,&p_713->g_370,&p_713->g_370,(void*)0,&p_713->g_370},{(void*)0,(void*)0,&p_713->g_370,&p_713->g_370,(void*)0,&p_713->g_370},{(void*)0,(void*)0,&p_713->g_370,&p_713->g_370,(void*)0,&p_713->g_370},{(void*)0,(void*)0,&p_713->g_370,&p_713->g_370,(void*)0,&p_713->g_370}};
            int32_t l_663 = 1L;
            VECTOR(uint16_t, 16) l_674 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x0537L), 0x0537L), 0x0537L, 1UL, 0x0537L, (VECTOR(uint16_t, 2))(1UL, 0x0537L), (VECTOR(uint16_t, 2))(1UL, 0x0537L), 1UL, 0x0537L, 1UL, 0x0537L);
            uint16_t *l_675 = &p_713->g_52;
            int32_t l_680 = (-1L);
            int64_t *l_681 = &p_713->g_682[0][2];
            VECTOR(int64_t, 4) l_696 = (VECTOR(int64_t, 4))((-9L), (VECTOR(int64_t, 2))((-9L), (-3L)), (-3L));
            int8_t *l_702 = &l_41[0][3][1];
            int i, j;
            l_680 = ((safe_mul_func_int16_t_s_s(((void*)0 == l_618[1][4][0]), ((VECTOR(uint16_t, 4))(l_656.zyxx)).z)) < (safe_div_func_int32_t_s_s((((safe_add_func_uint16_t_u_u((0x26E383FB274F4790L >= p_6), p_7)) ^ ((l_663 = ((*l_661) |= p_7)) , p_5)) | (safe_mod_func_uint8_t_u_u((((safe_add_func_uint16_t_u_u(((safe_mod_func_uint32_t_u_u((safe_div_func_uint8_t_u_u(((((p_713->l_comm_values[(safe_mod_func_uint32_t_u_u(p_713->tid, 21))] = (safe_div_func_uint16_t_u_u(((*l_675) = ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(l_674.s6cb0)))).w), ((safe_mod_func_uint8_t_u_u(((((&l_645[0] == p_713->g_678[2][0][3]) && 0L) || 0xA1L) | 4294967287UL), p_6)) , l_619[0])))) ^ (-1L)) | p_6) == p_5), p_7)), (*p_713->g_339))) || l_674.s7), l_674.s5)) != FAKE_DIVERGE(p_713->global_1_offset, get_global_id(1), 10)) < p_713->g_330), l_674.s0))), (*p_713->g_342))));
            (*p_713->g_685) = (((*l_681) = p_713->g_478.s5) , (((*l_675)++) , &l_663));
            l_619[0] ^= (safe_mul_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((((safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 16))(p_713->g_692.wxxzzxxxxxwzwxxw)).s9, ((safe_mod_func_uint64_t_u_u(((void*)0 == &l_619[0]), ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(l_695.s8be0614518136f23)).s14)), ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(l_696.yz)), 0x6019E1108D5449D0L, 0x723FD05AE59E78A1L)).even))), ((VECTOR(int64_t, 4))(l_697.xxxx)), 0x292EAFE069934F3DL, 0L)).odd)))).w)) && (p_4 && (((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(abs_diff(((VECTOR(uint64_t, 8))(l_698.s17026657)).s32, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(clz(((VECTOR(uint64_t, 4))(p_713->g_699.yxxy))))))).hi))).yxyy)).z ^ 1L))))) & (safe_div_func_int16_t_s_s(((+l_626.s6) != ((*l_702) = ((8L > p_3) || l_646.y))), l_703))) , 0x30L), 0x16L)), p_713->g_490.x));
        }
    }
    return l_626.s7;
}


/* ------------------------------------------ */
/* 
 * reads : p_713->g_18
 * writes:
 */
int8_t  func_12(uint32_t  p_13, int64_t  p_14, struct S0 * p_713)
{ /* block id: 6 */
    return p_713->g_18;
}


/* ------------------------------------------ */
/* 
 * reads : p_713->g_392 p_713->g_330 p_713->g_613
 * writes: p_713->g_392 p_713->g_330 p_713->g_130
 */
int32_t  func_35(int64_t  p_36, int8_t  p_37, struct S0 * p_713)
{ /* block id: 293 */
    int32_t *l_597[2][9][9] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    int8_t l_598 = (-7L);
    VECTOR(int8_t, 8) l_610 = (VECTOR(int8_t, 8))(0x4CL, (VECTOR(int8_t, 4))(0x4CL, (VECTOR(int8_t, 2))(0x4CL, 0x00L), 0x00L), 0x00L, 0x4CL, 0x00L);
    VECTOR(int8_t, 4) l_612 = (VECTOR(int8_t, 4))(0x7DL, (VECTOR(int8_t, 2))(0x7DL, (-8L)), (-8L));
    int i, j, k;
    l_598 |= p_36;
    for (p_713->g_392 = 0; (p_713->g_392 <= 7); p_713->g_392 = safe_add_func_uint8_t_u_u(p_713->g_392, 6))
    { /* block id: 297 */
        int64_t l_603 = 0x2FB089EAEE4EC145L;
        int32_t l_604 = 0x3391B87CL;
        VECTOR(int8_t, 2) l_608 = (VECTOR(int8_t, 2))(0x01L, 0x63L);
        VECTOR(int8_t, 4) l_609 = (VECTOR(int8_t, 4))(9L, (VECTOR(int8_t, 2))(9L, 0x3CL), 0x3CL);
        VECTOR(int8_t, 8) l_611 = (VECTOR(int8_t, 8))(0x62L, (VECTOR(int8_t, 4))(0x62L, (VECTOR(int8_t, 2))(0x62L, 0x32L), 0x32L), 0x32L, 0x62L, 0x32L);
        int i;
        for (p_713->g_330 = 0; (p_713->g_330 != 29); p_713->g_330++)
        { /* block id: 300 */
            uint32_t l_605[8][4] = {{0x49238601L,0x49238601L,0xBA678084L,0x3AA4311AL},{0x49238601L,0x49238601L,0xBA678084L,0x3AA4311AL},{0x49238601L,0x49238601L,0xBA678084L,0x3AA4311AL},{0x49238601L,0x49238601L,0xBA678084L,0x3AA4311AL},{0x49238601L,0x49238601L,0xBA678084L,0x3AA4311AL},{0x49238601L,0x49238601L,0xBA678084L,0x3AA4311AL},{0x49238601L,0x49238601L,0xBA678084L,0x3AA4311AL},{0x49238601L,0x49238601L,0xBA678084L,0x3AA4311AL}};
            int i, j;
            l_605[7][0]++;
        }
        l_604 |= ((l_603 | ((VECTOR(int8_t, 16))(8L, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 8))(l_608.yxyyxxyy)).lo, ((VECTOR(int8_t, 4))(l_609.wywy)), ((VECTOR(int8_t, 2))(l_610.s70)).xxyy))).odd)), (-10L), p_713->g_392, ((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 16))(l_611.s3342435046260651)).lo, ((VECTOR(int8_t, 4))(l_612.wyzz)).ywxyzwzy))), 0x78L, 7L, (-8L))).s6) & ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(p_713->g_613.s70130660)).even)).w);
        for (l_604 = (-8); (l_604 > (-5)); l_604 = safe_add_func_int8_t_s_s(l_604, 5))
        { /* block id: 306 */
            int32_t *l_616 = (void*)0;
            p_713->g_130[6][2][4] = l_616;
            return p_36;
        }
    }
    return p_37;
}


/* ------------------------------------------ */
/* 
 * reads : p_713->g_64 p_713->g_75 p_713->g_23 p_713->g_comm_values p_713->g_114 p_713->g_18 p_713->g_128 p_713->g_129 p_713->g_130 p_713->g_28 p_713->g_139 p_713->g_150 p_713->l_comm_values p_713->g_158 p_713->g_32 p_713->g_167 p_713->g_173 p_713->g_197 p_713->g_138 p_713->g_234 p_713->g_268 p_713->g_118 p_713->g_315 p_713->g_338 p_713->g_357 p_713->g_316 p_713->g_370 p_713->g_392 p_713->g_342 p_713->g_52 p_713->g_420 p_713->g_422 p_713->g_330 p_713->g_26 p_713->g_441 p_713->g_478 p_713->g_490 p_713->g_505 p_713->g_507 p_713->g_299
 * writes: p_713->g_64 p_713->g_114 p_713->g_118 p_713->g_130 p_713->g_32 p_713->g_138 p_713->g_139 p_713->g_150 p_713->g_167 p_713->g_158 p_713->g_315 p_713->g_52 p_713->g_316 p_713->g_370 p_713->g_392 p_713->g_330 p_713->g_502 p_713->g_541
 */
uint8_t  func_46(uint32_t  p_47, uint16_t * p_48, int64_t  p_49, int32_t  p_50, struct S0 * p_713)
{ /* block id: 18 */
    uint64_t *l_63 = &p_713->g_64[2];
    int32_t l_67 = 0L;
    VECTOR(uint32_t, 2) l_68 = (VECTOR(uint32_t, 2))(0x28280810L, 3UL);
    int64_t l_485 = (-1L);
    uint8_t *l_486[8][7][4] = {{{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]}},{{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]}},{{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]}},{{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]}},{{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]}},{{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]}},{{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]}},{{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]},{&p_713->g_23[7][3],&p_713->g_173[0][1],&p_713->g_173[0][1],&p_713->g_23[0][0]}}};
    int i, j, k;
    atomic_or(&p_713->g_atomic_reduction[get_linear_group_id()], (safe_mul_func_int16_t_s_s(0x2E89L, ((((void*)0 == &p_713->g_23[7][3]) <= ((VECTOR(uint64_t, 2))(0x320EC44CB182417FL, 0xC3B14A51E29AFBAEL)).lo) & (safe_mul_func_int16_t_s_s((safe_lshift_func_int16_t_s_u(((safe_mul_func_int8_t_s_s((safe_div_func_uint16_t_u_u((((l_67 = (--(*l_63))) >= (+(GROUP_DIVERGE(0, 1) , (((VECTOR(uint32_t, 4))(abs_diff(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(rhadd(((VECTOR(uint32_t, 2))(0UL, 8UL)), ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(l_68.xyyx)).zwyyxwxz)).s14))), 4294967293UL, 0x777BDFF1L)), ((VECTOR(uint32_t, 2))(0x71C75621L, 0xA8392DDEL)), 0xE236B79BL, 0UL)).lo, ((VECTOR(uint32_t, 16))(0x8BFC0225L, 5UL, 0UL, (~(safe_mod_func_int16_t_s_s(((safe_mul_func_uint8_t_u_u(func_12((safe_lshift_func_uint16_t_u_u((((VECTOR(int16_t, 8))(p_713->g_75.s70177147)).s3 | func_76(l_68.y, (func_81(p_713->g_23[5][0], l_63, func_87(func_93((0x358462BDL || func_98(&p_713->g_18, ((safe_lshift_func_uint16_t_u_s(l_68.x, l_68.x)) , l_68.x), l_68.y, l_68.x, p_713->g_comm_values[p_713->tid], p_713)), l_63, l_63, l_68.y, p_713), l_68.x, l_485, l_68.x, l_486[3][1][0], p_713), p_49, l_68.y, p_713) & 0x7BED214C571ED123L), l_485, p_47, p_713)), 13)), l_68.y, p_713), p_47)) | p_50), (-1L)))), 0x0971B3EFL, ((VECTOR(uint32_t, 2))(4294967295UL)), 0xE241B758L, GROUP_DIVERGE(0, 1), ((VECTOR(uint32_t, 4))(4294967295UL)), (*p_713->g_342), 0x3ACBAD79L, 0x7FAEE262L)).s5338))).y , 0x2C9C972687FEF19BL)))) | l_68.y), p_713->g_comm_values[p_713->tid])), l_485)) > 0x126BL), l_68.y)), 0x7A86L))))) + get_linear_global_id());
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (get_linear_local_id() == 0)
        p_713->v_collective += p_713->g_atomic_reduction[get_linear_group_id()];
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    return p_713->g_128.y;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint16_t  func_76(uint16_t  p_77, uint16_t  p_78, uint64_t  p_79, uint32_t  p_80, struct S0 * p_713)
{ /* block id: 286 */
    int8_t l_591 = (-1L);
    int32_t *l_592 = (void*)0;
    int32_t *l_593 = (void*)0;
    int32_t *l_594 = (void*)0;
    int32_t *l_595 = (void*)0;
    int32_t l_596 = (-1L);
    l_591 &= 0x36EC3C15L;
    l_596 &= p_80;
    return p_80;
}


/* ------------------------------------------ */
/* 
 * reads : p_713->g_315 p_713->g_316 p_713->g_420 p_713->g_167
 * writes: p_713->g_138 p_713->g_502 p_713->g_167
 */
int64_t  func_81(int64_t  p_82, uint64_t * p_83, uint8_t * p_84, uint16_t  p_85, uint16_t  p_86, struct S0 * p_713)
{ /* block id: 251 */
    uint64_t l_546 = 18446744073709551606UL;
    int32_t **l_549 = &p_713->g_118;
    int16_t *l_550 = &p_713->g_138[2];
    uint8_t *l_555 = &p_713->g_23[6][0];
    int8_t l_556 = 0x3AL;
    int16_t *l_557[7];
    int32_t l_558[8][5][5] = {{{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)},{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)},{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)},{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)},{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)}},{{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)},{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)},{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)},{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)},{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)}},{{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)},{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)},{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)},{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)},{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)}},{{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)},{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)},{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)},{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)},{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)}},{{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)},{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)},{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)},{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)},{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)}},{{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)},{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)},{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)},{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)},{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)}},{{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)},{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)},{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)},{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)},{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)}},{{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)},{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)},{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)},{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)},{(-7L),0x087AEFA6L,1L,0x087AEFA6L,(-7L)}}};
    VECTOR(int8_t, 8) l_559 = (VECTOR(int8_t, 8))((-7L), (VECTOR(int8_t, 4))((-7L), (VECTOR(int8_t, 2))((-7L), 0x70L), 0x70L), 0x70L, (-7L), 0x70L);
    uint16_t *l_560 = (void*)0;
    uint16_t *l_561[1][9][1];
    int8_t *l_562 = &p_713->g_502[4][1][4];
    int8_t *l_563 = &l_556;
    uint16_t l_564 = 0x32CCL;
    int32_t l_565 = 2L;
    int32_t *l_566[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint32_t l_567 = 1UL;
    int64_t *l_569 = (void*)0;
    int64_t **l_568 = &l_569;
    int32_t l_570 = (-8L);
    int i, j, k;
    for (i = 0; i < 7; i++)
        l_557[i] = &p_713->g_330;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 1; k++)
                l_561[i][j][k] = (void*)0;
        }
    }
    l_567 = (~(FAKE_DIVERGE(p_713->group_1_offset, get_group_id(1), 10) <= (safe_unary_minus_func_int32_t_s((safe_lshift_func_int16_t_s_s((l_565 = (+(l_546 , (((*p_713->g_315) & (safe_div_func_int16_t_s_s((((*l_550) = ((void*)0 != l_549)) ^ (safe_div_func_uint32_t_u_u((((*l_563) = (((*l_562) = (safe_add_func_int16_t_s_s(((l_555 == ((l_556 || ((l_558[1][0][3] ^= (~p_82)) > ((p_85 = (((VECTOR(int8_t, 4))(l_559.s0175)).z < p_86)) , 4UL))) , &p_713->g_173[0][1])) , p_82), p_86))) , p_713->g_420.y)) < 0x4AL), l_564))), p_82))) , p_85)))), 14))))));
    l_570 |= (0UL && (0x4FD41FD058B6DA79L || (l_568 != (void*)0)));
    for (p_713->g_167 = (-4); (p_713->g_167 > 52); p_713->g_167 = safe_add_func_uint16_t_u_u(p_713->g_167, 2))
    { /* block id: 262 */
        uint8_t l_575 = 0xC3L;
        l_575 ^= (safe_lshift_func_uint8_t_u_u(FAKE_DIVERGE(p_713->local_2_offset, get_local_id(2), 10), 6));
    }
    if ((atomic_inc(&p_713->l_atomic_input[37]) == 5))
    { /* block id: 266 */
        int32_t l_577 = 0x1891E5B4L;
        int32_t *l_576 = &l_577;
        int32_t *l_578 = &l_577;
        int32_t *l_579[6][10][4];
        int32_t *l_580 = &l_577;
        VECTOR(int32_t, 4) l_589 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x60AA0862L), 0x60AA0862L);
        uint32_t l_590 = 0x9F065190L;
        int i, j, k;
        for (i = 0; i < 6; i++)
        {
            for (j = 0; j < 10; j++)
            {
                for (k = 0; k < 4; k++)
                    l_579[i][j][k] = &l_577;
            }
        }
        l_576 = (void*)0;
        l_580 = (l_579[2][7][3] = l_578);
        for (l_577 = (-20); (l_577 >= 6); ++l_577)
        { /* block id: 272 */
            int64_t l_583 = 1L;
            uint32_t l_584[3];
            int i;
            for (i = 0; i < 3; i++)
                l_584[i] = 0x14E4D80EL;
            l_584[2] |= (l_583 = 0x102F7763L);
            for (l_583 = (-7); (l_583 == (-11)); l_583--)
            { /* block id: 277 */
                int32_t l_588 = 0x5BF164DAL;
                int32_t *l_587 = &l_588;
                l_578 = l_587;
            }
        }
        l_590 ^= ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(l_589.zyyxzywzyywwzyxx)).sc2bb)).w;
        unsigned int result = 0;
        result += l_577;
        result += l_589.w;
        result += l_589.z;
        result += l_589.y;
        result += l_589.x;
        result += l_590;
        atomic_add(&p_713->l_special_values[37], result);
    }
    else
    { /* block id: 282 */
        (1 + 1);
    }
    return p_86;
}


/* ------------------------------------------ */
/* 
 * reads : p_713->g_490 p_713->g_505 p_713->g_507 p_713->g_299 p_713->g_315 p_713->g_316 p_713->g_26 p_713->g_52 p_713->g_342
 * writes: p_713->g_370 p_713->g_502 p_713->g_316 p_713->g_541 p_713->g_150
 */
uint8_t * func_87(uint16_t * p_88, int8_t  p_89, uint16_t  p_90, uint64_t  p_91, uint8_t * p_92, struct S0 * p_713)
{ /* block id: 228 */
    VECTOR(uint16_t, 16) l_489 = (VECTOR(uint16_t, 16))(0x7BA1L, (VECTOR(uint16_t, 4))(0x7BA1L, (VECTOR(uint16_t, 2))(0x7BA1L, 0xBABEL), 0xBABEL), 0xBABEL, 0x7BA1L, 0xBABEL, (VECTOR(uint16_t, 2))(0x7BA1L, 0xBABEL), (VECTOR(uint16_t, 2))(0x7BA1L, 0xBABEL), 0x7BA1L, 0xBABEL, 0x7BA1L, 0xBABEL);
    int64_t *l_491 = (void*)0;
    int64_t *l_492 = (void*)0;
    int64_t *l_493 = (void*)0;
    int64_t *l_494 = &p_713->g_370;
    int32_t *l_499 = (void*)0;
    int32_t *l_500 = (void*)0;
    int32_t *l_501[2];
    VECTOR(int32_t, 8) l_503 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L);
    VECTOR(int16_t, 4) l_504 = (VECTOR(int16_t, 4))(0x5344L, (VECTOR(int16_t, 2))(0x5344L, 0x2FB5L), 0x2FB5L);
    VECTOR(int32_t, 8) l_506 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x78410CB0L), 0x78410CB0L), 0x78410CB0L, (-1L), 0x78410CB0L);
    VECTOR(int32_t, 4) l_508 = (VECTOR(int32_t, 4))(0x11507378L, (VECTOR(int32_t, 2))(0x11507378L, 0x56F89C96L), 0x56F89C96L);
    VECTOR(int32_t, 4) l_509 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x4C721ABEL), 0x4C721ABEL);
    VECTOR(int32_t, 4) l_510 = (VECTOR(int32_t, 4))(0x7E6F7104L, (VECTOR(int32_t, 2))(0x7E6F7104L, 1L), 1L);
    int64_t l_515 = (-6L);
    int16_t l_526 = 0x16C2L;
    uint64_t l_527 = 1UL;
    int64_t **l_532 = &l_493;
    int64_t **l_533 = &l_492;
    VECTOR(int64_t, 4) l_534 = (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0L), 0L);
    uint64_t *l_535 = &l_527;
    int8_t l_542 = (-7L);
    int i, j;
    for (i = 0; i < 2; i++)
        l_501[i] = (void*)0;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    p_713->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 21)), permutations[(safe_mod_func_uint32_t_u_u(p_91, 10))][(safe_mod_func_uint32_t_u_u(p_713->tid, 21))]));
    if ((((*l_494) = (safe_lshift_func_uint16_t_u_s(((VECTOR(uint16_t, 8))(65535UL, ((VECTOR(uint16_t, 2))(l_489.s50)), ((VECTOR(uint16_t, 4))(0x5735L, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(p_713->g_490.yyxyyyxx)).s34)), 65530UL)), 0x6534L)).s1, 15))) | (safe_rshift_func_uint8_t_u_u((safe_rshift_func_int16_t_s_u(0x3513L, ((void*)0 != &p_713->g_32))), ((((((p_713->g_502[4][1][4] = l_489.se) != ((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 8))(l_503.s22207347)), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 8))(l_504.ywyzywyz)).s4467617730712715, ((VECTOR(uint16_t, 4))(p_713->g_505.s5736)).yywyxzwyyzzyzzxw))), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(l_506.s2245)).even, ((VECTOR(int32_t, 2))(p_713->g_507.s63)), ((VECTOR(int32_t, 16))(l_508.wxywxxwyyywxzxzw)).s41))), ((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_509.yxwzzzxw)).s11)).xxyyyyyxyyyxxyyx, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 8))(l_510.xzzyxzzw)).hi, (int32_t)(safe_mod_func_int32_t_s_s((l_515 = (safe_mul_func_int8_t_s_s(p_713->g_299.s0, (GROUP_DIVERGE(2, 1) & p_91)))), ((!(safe_div_func_int64_t_s_s((~1L), p_91))) ^ ((*p_713->g_315) ^ p_90))))))), ((VECTOR(int32_t, 8))(0x16951258L)), 7L, ((VECTOR(int32_t, 2))(0x3ED4537DL)), 0x16F276D3L)).sc2, ((VECTOR(int32_t, 2))(0x43BB8851L))))).yxyxyyxyyyyyyxyx)).s4d)).xyyxxxyy)).s5526402265075474))).sa2, ((VECTOR(int32_t, 2))(0x1C031485L))))).xyxyyyyxyyxxxyxy)), ((VECTOR(int32_t, 16))(0x68C129DBL))))).even, ((VECTOR(int32_t, 8))(0x57AF680BL)), ((VECTOR(int32_t, 8))(0x15FD56EEL)))))))))).s3) >= p_90) < 1UL) ^ (-1L)) || p_91)))))
    { /* block id: 235 */
        uint16_t l_518 = 0x57C6L;
        int32_t l_521[4] = {0x40B34183L,0x40B34183L,0x40B34183L,0x40B34183L};
        int32_t **l_522 = &l_501[0];
        int i;
        ++l_518;
        l_521[2] ^= l_518;
        (*l_522) = l_499;
    }
    else
    { /* block id: 239 */
        VECTOR(uint64_t, 4) l_523 = (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x9FF62942D74A6540L), 0x9FF62942D74A6540L);
        int i;
        ++l_523.x;
    }
    l_527 = l_526;
    l_542 = (p_91 | (safe_mod_func_uint32_t_u_u(((((*p_713->g_315) = (((safe_lshift_func_int8_t_s_s(p_89, (&l_515 != ((*l_533) = ((*l_532) = &p_713->g_32))))) , ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(l_534.yw)).yyyyyyxxyxyyxxxx)).sc) | ((*l_535) ^= (*p_713->g_315)))) | 0x409A4C7371FD159AL) , ((*p_713->g_342) = (((p_713->g_541 = ((safe_lshift_func_int16_t_s_u(p_91, (safe_unary_minus_func_uint64_t_u(((*p_713->g_315) != (safe_rshift_func_int16_t_s_u((((-1L) >= FAKE_DIVERGE(p_713->group_1_offset, get_group_id(1), 10)) | 0x861AL), (*p_88)))))))) < (-7L))) , (*p_88)) > p_89))), 0xBAE22D5AL)));
    return &p_713->g_173[0][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_713->g_130 p_713->g_150 p_713->g_23 p_713->l_comm_values p_713->g_158 p_713->g_75 p_713->g_32 p_713->g_167 p_713->g_139 p_713->g_173 p_713->g_129 p_713->g_comm_values p_713->g_197 p_713->g_138 p_713->g_234 p_713->g_128 p_713->g_268 p_713->g_118 p_713->g_114 p_713->g_315 p_713->g_338 p_713->g_357 p_713->g_316 p_713->g_370 p_713->g_392 p_713->g_342 p_713->g_52 p_713->g_420 p_713->g_422 p_713->g_330 p_713->g_26 p_713->g_441 p_713->g_478
 * writes: p_713->g_118 p_713->g_150 p_713->g_32 p_713->g_167 p_713->g_158 p_713->g_130 p_713->g_315 p_713->g_52 p_713->g_316 p_713->g_370 p_713->g_392 p_713->g_330 p_713->g_138
 */
uint16_t * func_93(uint16_t  p_94, uint64_t * p_95, uint64_t * p_96, uint32_t  p_97, struct S0 * p_713)
{ /* block id: 31 */
    int32_t l_140[5][3] = {{(-1L),8L,1L},{(-1L),8L,1L},{(-1L),8L,1L},{(-1L),8L,1L},{(-1L),8L,1L}};
    VECTOR(int64_t, 4) l_154 = (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 1L), 1L);
    VECTOR(int8_t, 8) l_157 = (VECTOR(int8_t, 8))(0x7EL, (VECTOR(int8_t, 4))(0x7EL, (VECTOR(int8_t, 2))(0x7EL, 0L), 0L), 0L, 0x7EL, 0L);
    VECTOR(uint32_t, 8) l_159 = (VECTOR(uint32_t, 8))(0x328457A0L, (VECTOR(uint32_t, 4))(0x328457A0L, (VECTOR(uint32_t, 2))(0x328457A0L, 5UL), 5UL), 5UL, 0x328457A0L, 5UL);
    uint8_t *l_166 = &p_713->g_167;
    uint16_t l_170[1];
    uint64_t l_171 = 0x2CEC631E3E20B615L;
    uint8_t *l_172[4];
    int32_t l_174 = 0x66ADB902L;
    int64_t *l_175 = (void*)0;
    int64_t *l_176[10][4][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    int32_t l_177 = (-6L);
    int32_t *l_178 = (void*)0;
    VECTOR(int32_t, 2) l_179 = (VECTOR(int32_t, 2))(1L, 0x4BB74991L);
    uint16_t l_180 = 0x2C68L;
    VECTOR(uint8_t, 4) l_283 = (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 248UL), 248UL);
    uint32_t l_331 = 0x25603862L;
    VECTOR(int64_t, 8) l_373 = (VECTOR(int64_t, 8))(0x41DE620F3FDD34F5L, (VECTOR(int64_t, 4))(0x41DE620F3FDD34F5L, (VECTOR(int64_t, 2))(0x41DE620F3FDD34F5L, 1L), 1L), 1L, 0x41DE620F3FDD34F5L, 1L);
    VECTOR(int64_t, 4) l_374 = (VECTOR(int64_t, 4))((-3L), (VECTOR(int64_t, 2))((-3L), 0x0E99619C7B53E52CL), 0x0E99619C7B53E52CL);
    VECTOR(int64_t, 4) l_375 = (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x2A0F6B0341400157L), 0x2A0F6B0341400157L);
    VECTOR(uint8_t, 8) l_381 = (VECTOR(uint8_t, 8))(0xBBL, (VECTOR(uint8_t, 4))(0xBBL, (VECTOR(uint8_t, 2))(0xBBL, 0x80L), 0x80L), 0x80L, 0xBBL, 0x80L);
    int32_t l_398 = 1L;
    uint16_t l_399 = 0x69C0L;
    int16_t l_413 = 0x3E55L;
    VECTOR(int8_t, 16) l_421 = (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L), (VECTOR(int8_t, 2))(1L, (-1L)), (VECTOR(int8_t, 2))(1L, (-1L)), 1L, (-1L), 1L, (-1L));
    uint64_t l_440 = 4UL;
    VECTOR(int32_t, 8) l_442 = (VECTOR(int32_t, 8))(0x7EA86431L, (VECTOR(int32_t, 4))(0x7EA86431L, (VECTOR(int32_t, 2))(0x7EA86431L, 9L), 9L), 9L, 0x7EA86431L, 9L);
    int32_t **l_484 = &p_713->g_130[1][4][4];
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_170[i] = 7UL;
    for (i = 0; i < 4; i++)
        l_172[i] = &p_713->g_173[0][1];
    if (l_140[3][1])
    { /* block id: 32 */
        if ((atomic_inc(&p_713->l_atomic_input[53]) == 9))
        { /* block id: 34 */
            int32_t *l_141 = (void*)0;
            int32_t *l_142 = (void*)0;
            l_142 = l_141;
            unsigned int result = 0;
            atomic_add(&p_713->l_special_values[53], result);
        }
        else
        { /* block id: 36 */
            (1 + 1);
        }
    }
    else
    { /* block id: 39 */
        int32_t **l_143 = &p_713->g_118;
        int32_t *l_144 = &l_140[1][2];
        int32_t *l_145 = (void*)0;
        int32_t *l_146 = (void*)0;
        int32_t *l_147 = &l_140[4][1];
        int32_t *l_148[2][2];
        int32_t l_149 = 0x5C801036L;
        VECTOR(int64_t, 16) l_153 = (VECTOR(int64_t, 16))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x1E85B112714A00EAL), 0x1E85B112714A00EAL), 0x1E85B112714A00EAL, 0L, 0x1E85B112714A00EAL, (VECTOR(int64_t, 2))(0L, 0x1E85B112714A00EAL), (VECTOR(int64_t, 2))(0L, 0x1E85B112714A00EAL), 0L, 0x1E85B112714A00EAL, 0L, 0x1E85B112714A00EAL);
        int i, j;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 2; j++)
                l_148[i][j] = &l_140[3][1];
        }
        (*l_143) = p_713->g_130[1][2][4];
        p_713->g_150++;
        (*l_147) = (*l_147);
        (*l_147) ^= (((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(l_153.s68498c81bc87a73c)).even)).s3140063122755011)).s3 , p_94);
    }
    l_179.x |= (~((l_177 ^= ((VECTOR(int64_t, 16))(max(((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 4))(l_154.zzyz)).lo, ((VECTOR(int64_t, 2))(0x291A525DDED77BE7L, 0x5DB8EC8C7DFA00B7L))))).yxyyyxyxyxyxxyxx, (int64_t)((((((l_174 = (p_713->g_23[4][2] | (safe_div_func_uint16_t_u_u(((l_154.z > (p_713->l_comm_values[(safe_mod_func_uint32_t_u_u(p_713->tid, 21))] ^ ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(0x89D45B81L, 0x2DA90C55L)))).xxyy)).z)) | ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),VECTOR(int8_t, 4),((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 8))(l_157.s75050122)).hi))), ((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 8))(p_713->g_158.s61702124)).s63, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(max(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(p_713->g_23[6][1], (0x290DBD7C481DA661L == ((VECTOR(int64_t, 16))((-1L), ((VECTOR(int64_t, 4))(0x0C0DEAB1E3EF1A15L, (p_713->g_32 ^= p_713->g_75.s7), 1L, 0x1EA467D722781395L)), ((VECTOR(int64_t, 4))(0x6FD678DBA8A70E69L, (-1L), (-4L), 0L)), (((((l_140[2][1] = ((VECTOR(uint64_t, 2))(max(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(mul_hi(((VECTOR(uint64_t, 2))(upsample(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(7UL, ((GROUP_DIVERGE(0, 1) , ((VECTOR(uint32_t, 2))(l_159.s46)).hi) , (safe_sub_func_uint32_t_u_u((safe_mod_func_int8_t_s_s((((((*l_166) ^= (!(safe_mod_func_uint8_t_u_u(FAKE_DIVERGE(p_713->global_1_offset, get_global_id(1), 10), (-9L))))) && (safe_sub_func_int16_t_s_s(l_157.s4, (p_97 , 0x06EBL)))) < p_97) >= 0x8778L), 247UL)), l_140[3][1]))), ((VECTOR(uint32_t, 8))(1UL)), ((VECTOR(uint32_t, 4))(0x58A6C8DEL)), 4294967291UL, 0x7D8BD1D5L)).s8c)), 0x9113BFD8L, ((VECTOR(uint32_t, 2))(1UL)), l_159.s6, 0xC4E5ABEBL, 0x5DA6E1C3L)), ((VECTOR(uint32_t, 4))(0xEF71F425L)), ((VECTOR(uint32_t, 2))(4294967295UL)), 4294967288UL, 4294967288UL)).s58, ((VECTOR(uint32_t, 2))(0x6BE5335BL))))).yxxyyxxy, ((VECTOR(uint64_t, 8))(0x4025E57FDA3C6B0DL))))).s42)).yxxyxxyxxxxxxxyx)).s37, ((VECTOR(uint64_t, 2))(18446744073709551615UL))))).lo) <= p_97) , p_713->g_75.s4) > l_159.s6) ^ l_154.y), ((VECTOR(int64_t, 4))((-1L))), (-3L), (-9L))).s8), l_170[0], 0x6BL, 6L, (-4L), 1L, 0L, 0x55L, l_154.y, l_159.s3, 0L, p_713->g_150, p_713->g_139, 0L, 9L)).lo)), (int8_t)l_171))).s26))))).yyyx, ((VECTOR(int8_t, 4))(0x2EL))))), (int8_t)0x2FL))).odd, ((VECTOR(int8_t, 2))(1L))))), 0x7FL, 0x1DL)).z), l_170[0])))) ^ l_157.s2) , p_97) == p_94) ^ 0x5617L) > p_713->g_173[0][1])))).s1) < l_159.s0));
    if ((0x433865C0L || l_180))
    { /* block id: 51 */
        uint16_t l_187 = 0UL;
        int8_t *l_192 = (void*)0;
        int32_t l_193[4][2][1] = {{{0x3ACB93F0L},{0x3ACB93F0L}},{{0x3ACB93F0L},{0x3ACB93F0L}},{{0x3ACB93F0L},{0x3ACB93F0L}},{{0x3ACB93F0L},{0x3ACB93F0L}}};
        int8_t l_194 = 1L;
        VECTOR(int16_t, 16) l_230 = (VECTOR(int16_t, 16))(0x6510L, (VECTOR(int16_t, 4))(0x6510L, (VECTOR(int16_t, 2))(0x6510L, 2L), 2L), 2L, 0x6510L, 2L, (VECTOR(int16_t, 2))(0x6510L, 2L), (VECTOR(int16_t, 2))(0x6510L, 2L), 0x6510L, 2L, 0x6510L, 2L);
        int32_t **l_231[8][8][4] = {{{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178}},{{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178}},{{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178}},{{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178}},{{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178}},{{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178}},{{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178}},{{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178},{&p_713->g_130[1][5][4],&p_713->g_130[4][3][3],&l_178,&l_178}}};
        VECTOR(int16_t, 8) l_267 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L);
        int32_t l_285 = 7L;
        uint16_t l_294[4][8] = {{65535UL,65535UL,0UL,0x88F8L,0xC4DBL,0x88F8L,0UL,65535UL},{65535UL,65535UL,0UL,0x88F8L,0xC4DBL,0x88F8L,0UL,65535UL},{65535UL,65535UL,0UL,0x88F8L,0xC4DBL,0x88F8L,0UL,65535UL},{65535UL,65535UL,0UL,0x88F8L,0xC4DBL,0x88F8L,0UL,65535UL}};
        uint32_t * volatile *l_343 = &p_713->g_342;
        int16_t *l_364 = &p_713->g_330;
        uint8_t l_393[4];
        int32_t l_394 = 7L;
        uint8_t l_395 = 5UL;
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_393[i] = 0x73L;
        if ((safe_add_func_int8_t_s_s((safe_lshift_func_int8_t_s_u((safe_sub_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), p_97)), 4)), ((VECTOR(int8_t, 8))(((0x7019L | l_187) , (p_713->g_139 <= (l_187 == (safe_sub_func_uint8_t_u_u((&l_180 == &l_170[0]), (safe_add_func_uint8_t_u_u((((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))((-1L), 2L)), 1L, 0L)).odd)).odd != ((l_193[1][0][0] = l_187) | ((p_713->g_173[7][0] , 0x72L) <= p_713->g_129.w))), p_713->g_comm_values[p_713->tid]))))))), l_193[1][0][0], l_194, ((VECTOR(int8_t, 4))(0x68L)), 0x02L)).s3)))
        { /* block id: 53 */
            return &p_713->g_26;
        }
        else
        { /* block id: 55 */
            int16_t *l_196 = &p_713->g_138[0];
            int16_t **l_195 = &l_196;
            uint8_t l_237 = 1UL;
            uint32_t *l_240 = (void*)0;
            uint32_t *l_241[7][3][10] = {{{&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150},{&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150},{&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150}},{{&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150},{&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150},{&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150}},{{&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150},{&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150},{&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150}},{{&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150},{&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150},{&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150}},{{&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150},{&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150},{&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150}},{{&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150},{&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150},{&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150}},{{&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150},{&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150},{&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150,&p_713->g_150}}};
            int16_t l_242 = 3L;
            int32_t l_243 = 0x201B54EBL;
            int i, j, k;
            l_193[1][0][0] |= (((p_713->g_158.s0 = (((*l_195) = &p_713->g_138[2]) != &p_713->g_138[3])) > GROUP_DIVERGE(0, 1)) , ((void*)0 != p_713->g_197[0]));
            if ((atomic_inc(&p_713->l_atomic_input[11]) == 7))
            { /* block id: 60 */
                int32_t l_200 = 0L;
                uint16_t l_221 = 0xA28AL;
                int16_t l_222 = 0x7FA7L;
                int16_t l_223 = 0x4198L;
                int32_t *l_224 = &l_200;
                int32_t *l_225 = &l_200;
                for (l_200 = (-25); (l_200 <= (-28)); --l_200)
                { /* block id: 63 */
                    uint64_t l_203 = 0xFCE3093133CE66FDL;
                    int16_t l_219 = 0x3645L;
                    uint32_t l_220 = 4294967288UL;
                    if (l_203)
                    { /* block id: 64 */
                        int32_t l_205 = 0x6290AA29L;
                        int32_t *l_204 = &l_205;
                        int8_t l_206 = 0x27L;
                        VECTOR(uint32_t, 4) l_207 = (VECTOR(uint32_t, 4))(0x278B60CCL, (VECTOR(uint32_t, 2))(0x278B60CCL, 4294967295UL), 4294967295UL);
                        int8_t l_208 = 2L;
                        uint32_t l_209 = 0xD768629AL;
                        uint32_t l_210 = 2UL;
                        int32_t l_211 = 0x13293BC6L;
                        uint32_t l_212 = 4294967295UL;
                        uint8_t l_213 = 0xD8L;
                        VECTOR(int32_t, 16) l_214 = (VECTOR(int32_t, 16))(0x7DED5E2AL, (VECTOR(int32_t, 4))(0x7DED5E2AL, (VECTOR(int32_t, 2))(0x7DED5E2AL, 0L), 0L), 0L, 0x7DED5E2AL, 0L, (VECTOR(int32_t, 2))(0x7DED5E2AL, 0L), (VECTOR(int32_t, 2))(0x7DED5E2AL, 0L), 0x7DED5E2AL, 0L, 0x7DED5E2AL, 0L);
                        int16_t l_215 = (-5L);
                        uint32_t l_216[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_216[i] = 0xF1C7367FL;
                        l_204 = (void*)0;
                        l_211 = ((l_206 , l_207.z) , (l_210 = (l_209 &= l_208)));
                        l_215 = (l_212 , (((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(l_213, 0L, (-1L), (-5L))))).y , ((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 16))(l_214.s233a8c0956980eba)).s00ea, (int32_t)3L))).y));
                        l_216[0] |= 0x3B0EC0A1L;
                    }
                    else
                    { /* block id: 71 */
                        int32_t l_218 = 0L;
                        int32_t *l_217 = &l_218;
                        l_217 = (void*)0;
                    }
                    l_220 ^= l_219;
                }
                l_223 |= (l_221 , (l_222 , 0x7A1354D5L));
                l_225 = l_224;
                unsigned int result = 0;
                result += l_200;
                result += l_221;
                result += l_222;
                result += l_223;
                atomic_add(&p_713->l_special_values[11], result);
            }
            else
            { /* block id: 78 */
                (1 + 1);
            }
            l_140[0][1] = (l_243 &= ((((l_177 = (((((safe_sub_func_int8_t_s_s((p_97 , p_97), (safe_add_func_int16_t_s_s(((VECTOR(int16_t, 16))(l_230.se6d0f4a7f7f5ed74)).se, ((void*)0 != l_231[3][0][3]))))) <= (((((safe_rshift_func_uint8_t_u_s((p_713->g_138[0] < ((VECTOR(uint8_t, 8))(p_713->g_234.yyyxyxxy)).s0), (safe_add_func_uint64_t_u_u(l_237, (safe_sub_func_uint64_t_u_u((253UL <= GROUP_DIVERGE(2, 1)), (p_713->g_167 <= (&l_196 == &l_196)))))))) > 1L) != 0x0C64F53CL) ^ 0UL) < FAKE_DIVERGE(p_713->local_2_offset, get_local_id(2), 10))) ^ p_713->g_138[2]) > 1L) | p_97)) , l_242) != p_97) != p_94));
            for (l_242 = 0; (l_242 <= (-13)); --l_242)
            { /* block id: 86 */
                int16_t l_250 = (-2L);
                for (l_187 = 0; (l_187 > 6); l_187++)
                { /* block id: 89 */
                    uint8_t l_251 = 0xFFL;
                    for (p_97 = (-22); (p_97 <= 18); p_97++)
                    { /* block id: 92 */
                        ++l_251;
                    }
                }
            }
        }
        if (((void*)0 == &p_713->g_138[0]))
        { /* block id: 98 */
            uint8_t **l_254 = &l_172[0];
            uint8_t ***l_255 = &l_254;
            int32_t *l_262[1][7][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
            int i, j, k;
            (*l_255) = l_254;
            l_177 = (+((safe_mod_func_int64_t_s_s((safe_rshift_func_int8_t_s_u((p_713->g_128.x != ((safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(upsample(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(0x45L, p_713->g_173[0][1], 0xC6L, 0x1AL)))), (l_262[0][3][0] == (p_713->g_128.x , ((p_97 , ((safe_lshift_func_int8_t_s_u(((p_97 <= (safe_mod_func_int64_t_s_s(p_713->g_129.w, p_713->g_128.x))) <= ((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 4))(rhadd(((VECTOR(int16_t, 8))(l_267.s63745206)).odd, ((VECTOR(int16_t, 8))(clz(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(p_713->g_268.yxxxyyyyyxxyxyyy)).s85f6)).wzxxxwwx))).hi))).xzzyxzxxxwywwwzw, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0L, 0L)).xxyx)).ywzyywxwwxwxyxxy))).s7), 5)) != 9L)) , p_713->g_118))), ((VECTOR(uint8_t, 8))(0x0BL)), ((VECTOR(uint8_t, 2))(0UL)), 255UL)))).s7e, ((VECTOR(uint8_t, 2))(0x1AL))))).lo, p_94)) != 0x4FD4L)), p_713->g_268.x)), 0x3FBA25CA382A8CA7L)) & l_140[1][0]));
        }
        else
        { /* block id: 101 */
            uint32_t l_282 = 4294967288UL;
            int32_t l_284 = 0x78715677L;
            int32_t l_287[5];
            uint8_t l_320 = 255UL;
            uint64_t *l_369[7][5][7] = {{{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171},{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171},{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171},{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171},{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171}},{{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171},{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171},{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171},{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171},{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171}},{{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171},{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171},{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171},{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171},{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171}},{{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171},{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171},{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171},{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171},{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171}},{{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171},{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171},{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171},{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171},{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171}},{{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171},{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171},{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171},{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171},{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171}},{{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171},{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171},{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171},{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171},{&l_171,&l_171,&l_171,&l_171,&l_171,&l_171,&l_171}}};
            VECTOR(uint8_t, 2) l_380 = (VECTOR(uint8_t, 2))(0UL, 246UL);
            int i, j, k;
            for (i = 0; i < 5; i++)
                l_287[i] = 5L;
            for (p_713->g_150 = 1; (p_713->g_150 != 47); p_713->g_150++)
            { /* block id: 104 */
                int32_t *l_273 = (void*)0;
                int32_t l_286 = 0L;
                int32_t l_292 = 0x2889D8E4L;
                int32_t l_293 = (-1L);
                int32_t l_325 = 8L;
                int32_t l_327 = 0x3EFD96E6L;
                int32_t l_328 = 0x04144D12L;
                int32_t l_329 = 0x4AAF8E1DL;
                for (l_194 = 0; (l_194 <= (-26)); --l_194)
                { /* block id: 107 */
                    int32_t *l_274 = (void*)0;
                    int32_t l_281 = 0x49867E89L;
                    l_274 = l_273;
                    if (((+(!(safe_mul_func_int8_t_s_s(((safe_rshift_func_int16_t_s_s(((((safe_div_func_int32_t_s_s((l_282 = (l_281 &= 0x3950D48EL)), p_94)) , p_713->g_114) != p_97) >= p_94), (&p_713->g_26 == ((65533UL || 0x2C42L) , (((VECTOR(uint8_t, 4))(l_283.zwzy)).z , &p_713->g_26))))) | p_94), p_94)))) , 0x392CAF59L))
                    { /* block id: 111 */
                        int16_t l_288 = 9L;
                        int32_t l_289 = 2L;
                        int32_t l_290 = 0x572298C6L;
                        int32_t l_291[8] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
                        int8_t *l_303 = (void*)0;
                        int8_t *l_304 = (void*)0;
                        int8_t *l_305 = (void*)0;
                        int8_t *l_306[5][1][3] = {{{(void*)0,(void*)0,&l_194}},{{(void*)0,(void*)0,&l_194}},{{(void*)0,(void*)0,&l_194}},{{(void*)0,(void*)0,&l_194}},{{(void*)0,(void*)0,&l_194}}};
                        int i, j, k;
                        ++l_294[3][3];
                        if (l_287[2])
                            continue;
                        l_287[2] = ((1UL >= (((VECTOR(int64_t, 4))(p_713->g_299.s8beb)).y == ((l_179.y |= (safe_div_func_uint8_t_u_u(p_97, (safe_unary_minus_func_uint64_t_u(FAKE_DIVERGE(p_713->global_0_offset, get_global_id(0), 10)))))) >= l_291[4]))) != (safe_mul_func_uint8_t_u_u((l_288 <= ((p_713->g_158.s7 = p_94) == (p_713->l_comm_values[(safe_mod_func_uint32_t_u_u(p_713->tid, 21))] != 0xB3BF1309D1BD7756L))), (((safe_add_func_int64_t_s_s(1L, 0x583875E01DEE14E4L)) , 4294967286UL) , 0xCDL))));
                        if (l_288)
                            break;
                    }
                    else
                    { /* block id: 118 */
                        uint64_t **l_317 = &p_713->g_315;
                        p_713->g_130[1][4][4] = &l_140[3][1];
                        l_320 &= (safe_div_func_int8_t_s_s((safe_rshift_func_int8_t_s_u((((*l_317) = p_713->g_315) != (void*)0), 5)), (safe_add_func_uint8_t_u_u(p_94, p_94))));
                    }
                }
                for (p_713->g_52 = (-4); (p_713->g_52 < 5); p_713->g_52++)
                { /* block id: 126 */
                    int64_t l_323 = 0L;
                    int32_t l_324 = 0x158AE40BL;
                    VECTOR(int32_t, 16) l_326 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L, (VECTOR(int32_t, 2))((-1L), 0L), (VECTOR(int32_t, 2))((-1L), 0L), (-1L), 0L, (-1L), 0L);
                    int i;
                    l_284 = (l_287[2] &= l_323);
                    --l_331;
                }
                for (l_194 = (-29); (l_194 <= (-14)); l_194 = safe_add_func_int8_t_s_s(l_194, 9))
                { /* block id: 133 */
                    uint32_t l_344[2][2];
                    int i, j;
                    for (i = 0; i < 2; i++)
                    {
                        for (j = 0; j < 2; j++)
                            l_344[i][j] = 0x53286788L;
                    }
                    for (p_713->g_167 = 0; (p_713->g_167 > 22); p_713->g_167++)
                    { /* block id: 136 */
                        l_343 = p_713->g_338[1][1];
                        if (p_94)
                            break;
                        if (l_284)
                            continue;
                    }
                    ++l_344[0][0];
                }
                for (l_320 = 29; (l_320 < 11); l_320 = safe_sub_func_int16_t_s_s(l_320, 1))
                { /* block id: 145 */
                    int32_t ***l_358 = &l_231[3][0][3];
                    if (p_94)
                        break;
                    l_193[1][0][0] = (safe_lshift_func_int16_t_s_s((safe_sub_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((-1L), (-1L))), (((*l_358) = (((safe_rshift_func_int8_t_s_u(0x57L, 2)) ^ ((VECTOR(uint8_t, 8))(p_713->g_357.sc4d13280)).s4) , &p_713->g_118)) != (p_94 , &l_273)))), 11));
                }
            }
            for (l_282 = 0; (l_282 > 20); l_282 = safe_add_func_uint16_t_u_u(l_282, 3))
            { /* block id: 153 */
                uint32_t l_361 = 1UL;
                ++l_361;
                return &p_713->g_52;
            }
            l_287[2] = (((((&p_713->g_138[2] != l_364) > p_94) < (safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 16))((-1L), 0x06DAL, 0x194DL, 3L, (((+p_713->g_173[0][1]) >= (safe_rshift_func_int8_t_s_u(((((p_713->g_370 &= ((*p_713->g_315) ^= (!18446744073709551615UL))) >= l_157.s5) > ((safe_lshift_func_uint8_t_u_u(((l_284 ^= ((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 4))(sub_sat(((VECTOR(int64_t, 2))(l_373.s15)).xxxy, ((VECTOR(int64_t, 8))(max(((VECTOR(int64_t, 8))(l_374.xzxyyyzx)), ((VECTOR(int64_t, 8))(l_375.xwywwxxz))))).lo))).yzyzwwyyzwwwxwww, (int64_t)((VECTOR(int64_t, 4))(min(((VECTOR(int64_t, 2))(6L, 5L)).xxyx, ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))((((((safe_mod_func_int32_t_s_s(p_94, (l_179.y = ((safe_lshift_func_uint8_t_u_u(FAKE_DIVERGE(p_713->group_2_offset, get_group_id(2), 10), ((VECTOR(uint8_t, 4))(rotate(((VECTOR(uint8_t, 2))(l_380.yx)).xyxx, ((VECTOR(uint8_t, 8))(l_381.s41407000)).hi))).y)) , (safe_lshift_func_uint16_t_u_s((safe_mod_func_uint16_t_u_u((l_159.s3 , (safe_mul_func_uint8_t_u_u((safe_add_func_uint32_t_u_u(GROUP_DIVERGE(1, 1), ((((safe_rshift_func_int8_t_s_s((p_713->g_392 , p_713->g_158.s0), 5)) > (-1L)) | 1UL) < 0x0EL))), p_94))), l_287[4])), 14)))))) < (*p_713->g_342)) , &l_194) == (void*)0) != 4294967295UL), p_713->g_52, 1L, 0x6EEAFDC7DAAE2D35L, l_393[3], 0x6923C09D82609C3EL, ((VECTOR(int64_t, 4))(0x6AA75E02A17D2C2EL)), 0x693F96888AB0855CL, p_713->g_173[3][1], ((VECTOR(int64_t, 4))(7L)))).even)).even))).w))).se) | 18446744073709551607UL), p_713->g_23[7][3])) & p_713->g_comm_values[p_713->tid])) , p_713->g_129.x), 6))) & 0x5E07FFA91CF5CE68L), 1L, (-1L), (-2L), p_97, p_713->g_75.s6, 1L, l_394, 0x55C8L, ((VECTOR(int16_t, 2))(0L)), 0x317EL)).sb, 0x30C3L))) == p_713->g_158.s7) , 0x01E9A13FL);
            l_395--;
        }
        l_140[1][0] = (0x65FD84FA94CC8FBDL >= (p_713->g_357.s2 , p_97));
        l_399--;
    }
    else
    { /* block id: 166 */
        int8_t l_405 = 0x7FL;
        int32_t *l_406 = &l_177;
        int32_t *l_407 = (void*)0;
        int32_t *l_408 = &l_174;
        int32_t *l_409 = (void*)0;
        int32_t *l_410 = (void*)0;
        int32_t *l_411 = (void*)0;
        int32_t *l_412[3];
        int32_t l_414 = 0x0377DE0AL;
        VECTOR(uint32_t, 2) l_415 = (VECTOR(uint32_t, 2))(0x4089043BL, 3UL);
        VECTOR(uint64_t, 16) l_427 = (VECTOR(uint64_t, 16))(0xCA650550E3739400L, (VECTOR(uint64_t, 4))(0xCA650550E3739400L, (VECTOR(uint64_t, 2))(0xCA650550E3739400L, 1UL), 1UL), 1UL, 0xCA650550E3739400L, 1UL, (VECTOR(uint64_t, 2))(0xCA650550E3739400L, 1UL), (VECTOR(uint64_t, 2))(0xCA650550E3739400L, 1UL), 0xCA650550E3739400L, 1UL, 0xCA650550E3739400L, 1UL);
        int16_t *l_432[1];
        uint8_t *l_480[3][7] = {{(void*)0,&p_713->g_173[0][1],(void*)0,(void*)0,&p_713->g_173[0][1],(void*)0,(void*)0},{(void*)0,&p_713->g_173[0][1],(void*)0,(void*)0,&p_713->g_173[0][1],(void*)0,(void*)0},{(void*)0,&p_713->g_173[0][1],(void*)0,(void*)0,&p_713->g_173[0][1],(void*)0,(void*)0}};
        uint64_t *l_483 = &p_713->g_316;
        int i, j;
        for (i = 0; i < 3; i++)
            l_412[i] = &l_140[1][1];
        for (i = 0; i < 1; i++)
            l_432[i] = &p_713->g_330;
        for (p_713->g_392 = 25; (p_713->g_392 <= 5); p_713->g_392 = safe_sub_func_uint16_t_u_u(p_713->g_392, 3))
        { /* block id: 169 */
            int32_t **l_404 = &p_713->g_118;
            (*l_404) = &l_140[3][1];
        }
        --l_415.y;
        if (((*p_713->g_315) & (safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(p_713->g_420.zx)).yyyyxxxx)).s7352170572162031, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(l_421.s3d2609b8)))).s1675156456400430))).s9eb6)).zwywzyyzyzyyyxwy)).s9, ((((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(p_713->g_422.xyyx)), ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))((safe_mul_func_uint8_t_u_u((((p_97 && (((*l_406) < ((*l_408) | p_97)) <= (safe_sub_func_uint32_t_u_u(((((VECTOR(uint64_t, 8))(l_427.sadafcad7)).s7 >= (safe_lshift_func_uint8_t_u_s(((*l_166) ^= ((VECTOR(uint8_t, 4))(0x41L, 0x1CL, 3UL, 4UL)).x), ((VECTOR(int8_t, 2))((-1L), 0x73L)).even))) || ((((((VECTOR(int16_t, 2))(0x6A3FL, (-1L))).hi != ((VECTOR(int16_t, 16))(rhadd(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(p_94, (p_713->g_138[2] = (p_94 , (p_713->g_330 &= (p_713->g_234.y <= (((safe_mod_func_int16_t_s_s((p_94 <= p_94), p_713->l_comm_values[(safe_mod_func_uint32_t_u_u(p_713->tid, 21))])) || 5L) ^ 0x7E3D4F5005C293CBL))))), p_713->g_26, ((VECTOR(int16_t, 4))(0x7601L)), p_97, 4L, (-1L), ((VECTOR(int16_t, 2))((-9L))), 0x07CAL, 0L, (-7L), 5L)).s6, ((VECTOR(int16_t, 8))(0L)), 0x7148L, 0x145AL, 6L, 0x2F8AL, ((VECTOR(int16_t, 2))(0x4FFFL)), 0x58F1L)), ((VECTOR(int16_t, 16))(0L))))).sf) == (*p_713->g_315)) && p_97) > 18446744073709551606UL)), p_97)))) < 0x35B881603056855EL) != (*p_713->g_342)), p_713->g_370)), 0x0A3A6BD7DD89D200L, ((VECTOR(uint64_t, 4))(0x7A79F39E5F5CFF77L)), 1UL, 18446744073709551609UL)).even)))).s3 ^ (*p_713->g_315)) < p_97)))))
        { /* block id: 176 */
            uint64_t l_433[6] = {0x865212C2A58ECDCBL,1UL,0x865212C2A58ECDCBL,0x865212C2A58ECDCBL,1UL,0x865212C2A58ECDCBL};
            uint8_t l_443 = 0xF0L;
            int i;
            l_433[3]--;
            l_179.x = (*l_406);
            for (l_414 = 0; (l_414 == (-11)); --l_414)
            { /* block id: 181 */
                uint16_t l_444 = 0x56B5L;
                l_443 = ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x255048D5L, (-1L))).yxxy)), ((VECTOR(int32_t, 4))((p_94 == p_97), 0x0D8F9018L, (-9L), 3L)))))).even, ((VECTOR(int32_t, 4))((safe_add_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(0xE6F6L, 0UL)).lo, (l_440 |= 0L))), ((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(p_713->g_441.yxxxxxxyxyyxxyyx)).sfb35)).xzxwxwxy)).s22, ((VECTOR(int32_t, 16))(l_442.s4036310013341436)).s8c, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x354C99A1L, 0x6439D7B1L)), (-10L), 0L)).hi))), 0x1B83C979L))))).yxzxyyww)).s76)).odd;
                l_444 |= p_97;
                for (p_94 = 0; (p_94 >= 9); p_94 = safe_add_func_uint8_t_u_u(p_94, 1))
                { /* block id: 187 */
                    if ((atomic_inc(&p_713->l_atomic_input[70]) == 3))
                    { /* block id: 189 */
                        uint64_t l_447 = 18446744073709551615UL;
                        ++l_447;
                        unsigned int result = 0;
                        result += l_447;
                        atomic_add(&p_713->l_special_values[70], result);
                    }
                    else
                    { /* block id: 191 */
                        (1 + 1);
                    }
                    if ((atomic_inc(&p_713->g_atomic_input[78 * get_linear_group_id() + 10]) == 4))
                    { /* block id: 195 */
                        int32_t l_450 = 0x3C14E3A8L;
                        int8_t l_451 = 0x5EL;
                        uint8_t l_452 = 1UL;
                        VECTOR(uint32_t, 2) l_453 = (VECTOR(uint32_t, 2))(4294967294UL, 1UL);
                        uint32_t l_454 = 0x1C3ADC26L;
                        VECTOR(uint32_t, 16) l_455 = (VECTOR(uint32_t, 16))(0x36CA2388L, (VECTOR(uint32_t, 4))(0x36CA2388L, (VECTOR(uint32_t, 2))(0x36CA2388L, 0x2BE02CB4L), 0x2BE02CB4L), 0x2BE02CB4L, 0x36CA2388L, 0x2BE02CB4L, (VECTOR(uint32_t, 2))(0x36CA2388L, 0x2BE02CB4L), (VECTOR(uint32_t, 2))(0x36CA2388L, 0x2BE02CB4L), 0x36CA2388L, 0x2BE02CB4L, 0x36CA2388L, 0x2BE02CB4L);
                        int32_t l_456 = 0x25692D36L;
                        uint64_t l_457 = 0xF4D0472817B4FB97L;
                        int8_t l_458 = 1L;
                        int16_t l_459 = 0x13DEL;
                        int16_t l_460 = 0x29C5L;
                        uint8_t l_461 = 8UL;
                        VECTOR(uint64_t, 2) l_462 = (VECTOR(uint64_t, 2))(0xDD39B41558CFC5E6L, 18446744073709551612UL);
                        int16_t l_463 = 1L;
                        int32_t l_464 = 0x044F19D4L;
                        uint32_t l_465 = 1UL;
                        int32_t l_466[6][9][4] = {{{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L}},{{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L}},{{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L}},{{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L}},{{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L}},{{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L},{2L,0L,3L,0x5A7658E3L}}};
                        uint8_t l_467 = 6UL;
                        int i, j, k;
                        l_450 = 0x24A74803L;
                        l_452 = l_451;
                        l_465 = (l_464 ^= (((VECTOR(uint32_t, 16))(safe_clamp_func(VECTOR(uint32_t, 16),uint32_t,((VECTOR(uint32_t, 2))(l_453.xx)).yyyyyyyxyxxxyxxy, (uint32_t)((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(l_454, 0xB2283A80L, 0x5A41B072L, ((VECTOR(uint32_t, 4))(2UL, ((VECTOR(uint32_t, 2))(4294967286UL, 0xC3088637L)), 0x579E5154L)), 3UL)).hi)).x, (uint32_t)(l_456 = ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(add_sat(((VECTOR(uint32_t, 8))(abs(((VECTOR(int32_t, 2))(7L, 0x05BADBB2L)).yyyyyyyx))).s6667447705317573, ((VECTOR(uint32_t, 2))(l_455.s09)).xxyxyxyyyyxyyxxx))))))).s9)))).s9 , ((l_459 = (l_458 = l_457)) , (l_463 &= (l_462.y ^= (l_461 = l_460))))));
                        ++l_467;
                        unsigned int result = 0;
                        result += l_450;
                        result += l_451;
                        result += l_452;
                        result += l_453.y;
                        result += l_453.x;
                        result += l_454;
                        result += l_455.sf;
                        result += l_455.se;
                        result += l_455.sd;
                        result += l_455.sc;
                        result += l_455.sb;
                        result += l_455.sa;
                        result += l_455.s9;
                        result += l_455.s8;
                        result += l_455.s7;
                        result += l_455.s6;
                        result += l_455.s5;
                        result += l_455.s4;
                        result += l_455.s3;
                        result += l_455.s2;
                        result += l_455.s1;
                        result += l_455.s0;
                        result += l_456;
                        result += l_457;
                        result += l_458;
                        result += l_459;
                        result += l_460;
                        result += l_461;
                        result += l_462.y;
                        result += l_462.x;
                        result += l_463;
                        result += l_464;
                        result += l_465;
                        int l_466_i0, l_466_i1, l_466_i2;
                        for (l_466_i0 = 0; l_466_i0 < 6; l_466_i0++) {
                            for (l_466_i1 = 0; l_466_i1 < 9; l_466_i1++) {
                                for (l_466_i2 = 0; l_466_i2 < 4; l_466_i2++) {
                                    result += l_466[l_466_i0][l_466_i1][l_466_i2];
                                }
                            }
                        }
                        result += l_467;
                        atomic_add(&p_713->g_special_values[78 * get_linear_group_id() + 10], result);
                    }
                    else
                    { /* block id: 207 */
                        (1 + 1);
                    }
                }
                (*l_408) ^= ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x2AB7EF45L, 0x6835C4BEL)), 0x448A87F3L, 0L)))).w;
            }
        }
        else
        { /* block id: 213 */
            int32_t **l_470 = &l_406;
            (*l_470) = &l_177;
        }
        for (p_94 = 0; (p_94 != 23); ++p_94)
        { /* block id: 218 */
            int16_t *l_475[2];
            int16_t **l_476 = &l_432[0];
            int32_t l_477[4][2] = {{(-5L),(-5L)},{(-5L),(-5L)},{(-5L),(-5L)},{(-5L),(-5L)}};
            uint16_t *l_479 = &l_399;
            int i, j;
            for (i = 0; i < 2; i++)
                l_475[i] = (void*)0;
            (*l_408) = (safe_div_func_uint8_t_u_u(((((p_97 | ((((*p_713->g_315) <= (l_477[1][1] = (l_475[1] == ((*l_476) = l_432[0])))) | p_97) && ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(p_713->g_478.s00)), 0xED70L, 1UL)).x)) && ((*l_479) &= p_94)) & (&p_713->g_173[6][0] != l_480[0][3])) != ((safe_div_func_uint8_t_u_u((l_483 == p_95), p_713->g_330)) & (-7L))), p_94));
            (*l_406) = l_477[0][0];
        }
    }
    (*l_484) = (l_140[1][1] , p_713->g_130[1][4][4]);
    return &p_713->g_52;
}


/* ------------------------------------------ */
/* 
 * reads : p_713->g_75 p_713->g_114 p_713->g_18 p_713->g_128 p_713->g_129 p_713->g_130 p_713->g_28 p_713->g_139
 * writes: p_713->g_114 p_713->g_118 p_713->g_130 p_713->g_32 p_713->g_138 p_713->g_139
 */
int32_t  func_98(uint16_t * p_99, uint16_t  p_100, uint32_t  p_101, int64_t  p_102, uint32_t  p_103, struct S0 * p_713)
{ /* block id: 21 */
    int32_t *l_106[7];
    int32_t **l_107 = &l_106[1];
    int32_t **l_117[2];
    VECTOR(int16_t, 16) l_123 = (VECTOR(int16_t, 16))(5L, (VECTOR(int16_t, 4))(5L, (VECTOR(int16_t, 2))(5L, (-2L)), (-2L)), (-2L), 5L, (-2L), (VECTOR(int16_t, 2))(5L, (-2L)), (VECTOR(int16_t, 2))(5L, (-2L)), 5L, (-2L), 5L, (-2L));
    int64_t *l_131 = &p_713->g_32;
    int32_t l_136 = 0x542F5EF4L;
    int16_t *l_137 = &p_713->g_138[2];
    int i;
    for (i = 0; i < 7; i++)
        l_106[i] = (void*)0;
    for (i = 0; i < 2; i++)
        l_117[i] = (void*)0;
    (*l_107) = l_106[1];
    p_713->g_139 ^= (p_713->g_75.s2 != ((safe_rshift_func_uint16_t_u_u(((((safe_add_func_uint8_t_u_u((safe_add_func_uint8_t_u_u((p_713->g_114++), 0L)), 0UL)) , (*l_107)) != (p_713->g_118 = (*l_107))) , (*p_99)), (((safe_div_func_uint16_t_u_u((safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 2))(l_123.s43)).even, (((*l_137) = ((((safe_lshift_func_uint16_t_u_s((safe_sub_func_int64_t_s_s(((*l_131) = (((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 16))(p_713->g_128.xyyyxxyyxxyxyxyy)), ((VECTOR(int32_t, 8))(p_713->g_129.wyxwywzx)).s2255511154651166))).s6 == ((p_713->g_130[3][0][0] = p_713->g_130[1][4][4]) != (GROUP_DIVERGE(2, 1) , (*l_107))))), ((!(((((safe_add_func_uint64_t_u_u((safe_div_func_int8_t_s_s(p_713->g_129.x, p_101)), l_136)) & p_101) >= 0xCDCDL) , p_101) && 1UL)) & p_713->g_28.s3))), p_103)) >= p_713->g_28.sd) , p_103) == p_100)) >= p_713->g_18))), p_100)) && GROUP_DIVERGE(1, 1)) && (*p_99)))) , p_103));
    (*l_107) = (*l_107);
    return p_103;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[78];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 78; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[78];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 78; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[21];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 21; i++)
            l_comm_values[i] = 1;
    struct S0 c_714;
    struct S0* p_713 = &c_714;
    struct S0 c_715 = {
        65535UL, // p_713->g_18
        {{0xEBL,0x1DL,0UL,0x1DL},{0xEBL,0x1DL,0UL,0x1DL},{0xEBL,0x1DL,0UL,0x1DL},{0xEBL,0x1DL,0UL,0x1DL},{0xEBL,0x1DL,0UL,0x1DL},{0xEBL,0x1DL,0UL,0x1DL},{0xEBL,0x1DL,0UL,0x1DL},{0xEBL,0x1DL,0UL,0x1DL}}, // p_713->g_23
        0x0627L, // p_713->g_26
        (VECTOR(int32_t, 16))(0x690B2811L, (VECTOR(int32_t, 4))(0x690B2811L, (VECTOR(int32_t, 2))(0x690B2811L, 0x3E62699FL), 0x3E62699FL), 0x3E62699FL, 0x690B2811L, 0x3E62699FL, (VECTOR(int32_t, 2))(0x690B2811L, 0x3E62699FL), (VECTOR(int32_t, 2))(0x690B2811L, 0x3E62699FL), 0x690B2811L, 0x3E62699FL, 0x690B2811L, 0x3E62699FL), // p_713->g_28
        0x0B047C1471C2AA0BL, // p_713->g_32
        (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x72C66C3CL), 0x72C66C3CL), 0x72C66C3CL, (-1L), 0x72C66C3CL, (VECTOR(int32_t, 2))((-1L), 0x72C66C3CL), (VECTOR(int32_t, 2))((-1L), 0x72C66C3CL), (-1L), 0x72C66C3CL, (-1L), 0x72C66C3CL), // p_713->g_42
        0xB213L, // p_713->g_52
        {&p_713->g_52,&p_713->g_52,&p_713->g_52,&p_713->g_52,&p_713->g_52,&p_713->g_52,&p_713->g_52}, // p_713->g_51
        {0xE4559F947EB5F43EL,0xE4559F947EB5F43EL,0xE4559F947EB5F43EL,0xE4559F947EB5F43EL,0xE4559F947EB5F43EL,0xE4559F947EB5F43EL,0xE4559F947EB5F43EL,0xE4559F947EB5F43EL,0xE4559F947EB5F43EL}, // p_713->g_64
        (VECTOR(int16_t, 8))(0x1E45L, (VECTOR(int16_t, 4))(0x1E45L, (VECTOR(int16_t, 2))(0x1E45L, 0x5C96L), 0x5C96L), 0x5C96L, 0x1E45L, 0x5C96L), // p_713->g_75
        0x7B85L, // p_713->g_114
        (void*)0, // p_713->g_118
        (VECTOR(int32_t, 2))(0L, 0x4A936FBAL), // p_713->g_128
        (VECTOR(int32_t, 4))(0x5FA5AF98L, (VECTOR(int32_t, 2))(0x5FA5AF98L, (-6L)), (-6L)), // p_713->g_129
        {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}}, // p_713->g_130
        {(-1L),(-1L),(-1L),(-1L)}, // p_713->g_138
        4294967295UL, // p_713->g_139
        0xE987CD8EL, // p_713->g_150
        (VECTOR(int8_t, 8))(0x2FL, (VECTOR(int8_t, 4))(0x2FL, (VECTOR(int8_t, 2))(0x2FL, 0L), 0L), 0L, 0x2FL, 0L), // p_713->g_158
        250UL, // p_713->g_167
        {{0xD6L,0x8FL,0x8FL,0xD6L},{0xD6L,0x8FL,0x8FL,0xD6L},{0xD6L,0x8FL,0x8FL,0xD6L},{0xD6L,0x8FL,0x8FL,0xD6L},{0xD6L,0x8FL,0x8FL,0xD6L},{0xD6L,0x8FL,0x8FL,0xD6L},{0xD6L,0x8FL,0x8FL,0xD6L},{0xD6L,0x8FL,0x8FL,0xD6L},{0xD6L,0x8FL,0x8FL,0xD6L}}, // p_713->g_173
        (VECTOR(uint64_t, 2))(0x9F01FB460BE9092FL, 0xD55F4550BB737AE7L), // p_713->g_198
        7UL, // p_713->g_199
        {&p_713->g_199,&p_713->g_199}, // p_713->g_197
        (VECTOR(uint8_t, 2))(0xA2L, 0x91L), // p_713->g_234
        (VECTOR(int16_t, 2))(0x7BDDL, 0L), // p_713->g_268
        (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x269186064A47F2B7L), 0x269186064A47F2B7L), 0x269186064A47F2B7L, (-1L), 0x269186064A47F2B7L, (VECTOR(int64_t, 2))((-1L), 0x269186064A47F2B7L), (VECTOR(int64_t, 2))((-1L), 0x269186064A47F2B7L), (-1L), 0x269186064A47F2B7L, (-1L), 0x269186064A47F2B7L), // p_713->g_299
        0xC78E0FAAD68A6137L, // p_713->g_316
        &p_713->g_316, // p_713->g_315
        (-4L), // p_713->g_330
        &p_713->g_150, // p_713->g_339
        (void*)0, // p_713->g_340
        {&p_713->g_139,&p_713->g_139}, // p_713->g_341
        &p_713->g_150, // p_713->g_342
        {{&p_713->g_339,&p_713->g_339,&p_713->g_339,&p_713->g_339,&p_713->g_339,&p_713->g_339,&p_713->g_339,&p_713->g_339,&p_713->g_339,&p_713->g_339},{&p_713->g_339,&p_713->g_339,&p_713->g_339,&p_713->g_339,&p_713->g_339,&p_713->g_339,&p_713->g_339,&p_713->g_339,&p_713->g_339,&p_713->g_339}}, // p_713->g_338
        (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x4FL), 0x4FL), 0x4FL, 255UL, 0x4FL, (VECTOR(uint8_t, 2))(255UL, 0x4FL), (VECTOR(uint8_t, 2))(255UL, 0x4FL), 255UL, 0x4FL, 255UL, 0x4FL), // p_713->g_357
        0x3D8BFE49486CDA0EL, // p_713->g_370
        4294967295UL, // p_713->g_392
        (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x59L), 0x59L), // p_713->g_420
        (VECTOR(uint64_t, 2))(0x084C35E798426938L, 0xBDFEEF5639C9717FL), // p_713->g_422
        (VECTOR(int32_t, 2))((-1L), 0x0D52C0D3L), // p_713->g_441
        (VECTOR(uint16_t, 8))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0UL), 0UL), 0UL, 65535UL, 0UL), // p_713->g_478
        (VECTOR(uint16_t, 2))(0x3CCCL, 0x7C4FL), // p_713->g_490
        {{{0x28L,0x28L,0x28L,0x28L,0x28L,0x28L},{0x28L,0x28L,0x28L,0x28L,0x28L,0x28L},{0x28L,0x28L,0x28L,0x28L,0x28L,0x28L}},{{0x28L,0x28L,0x28L,0x28L,0x28L,0x28L},{0x28L,0x28L,0x28L,0x28L,0x28L,0x28L},{0x28L,0x28L,0x28L,0x28L,0x28L,0x28L}},{{0x28L,0x28L,0x28L,0x28L,0x28L,0x28L},{0x28L,0x28L,0x28L,0x28L,0x28L,0x28L},{0x28L,0x28L,0x28L,0x28L,0x28L,0x28L}},{{0x28L,0x28L,0x28L,0x28L,0x28L,0x28L},{0x28L,0x28L,0x28L,0x28L,0x28L,0x28L},{0x28L,0x28L,0x28L,0x28L,0x28L,0x28L}},{{0x28L,0x28L,0x28L,0x28L,0x28L,0x28L},{0x28L,0x28L,0x28L,0x28L,0x28L,0x28L},{0x28L,0x28L,0x28L,0x28L,0x28L,0x28L}},{{0x28L,0x28L,0x28L,0x28L,0x28L,0x28L},{0x28L,0x28L,0x28L,0x28L,0x28L,0x28L},{0x28L,0x28L,0x28L,0x28L,0x28L,0x28L}},{{0x28L,0x28L,0x28L,0x28L,0x28L,0x28L},{0x28L,0x28L,0x28L,0x28L,0x28L,0x28L},{0x28L,0x28L,0x28L,0x28L,0x28L,0x28L}}}, // p_713->g_502
        (VECTOR(uint16_t, 8))(0x3FC9L, (VECTOR(uint16_t, 4))(0x3FC9L, (VECTOR(uint16_t, 2))(0x3FC9L, 0x1B0AL), 0x1B0AL), 0x1B0AL, 0x3FC9L, 0x1B0AL), // p_713->g_505
        (VECTOR(int32_t, 8))(0x2A3C4149L, (VECTOR(int32_t, 4))(0x2A3C4149L, (VECTOR(int32_t, 2))(0x2A3C4149L, (-1L)), (-1L)), (-1L), 0x2A3C4149L, (-1L)), // p_713->g_507
        255UL, // p_713->g_541
        (VECTOR(int8_t, 8))((-5L), (VECTOR(int8_t, 4))((-5L), (VECTOR(int8_t, 2))((-5L), (-1L)), (-1L)), (-1L), (-5L), (-1L)), // p_713->g_613
        (VECTOR(uint16_t, 4))(65530UL, (VECTOR(uint16_t, 2))(65530UL, 0x42A2L), 0x42A2L), // p_713->g_624
        (VECTOR(uint16_t, 2))(65526UL, 0x87C1L), // p_713->g_625
        (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0xF099L), 0xF099L), // p_713->g_628
        (VECTOR(uint16_t, 2))(0x89A6L, 65531UL), // p_713->g_629
        (VECTOR(uint8_t, 16))(0xC7L, (VECTOR(uint8_t, 4))(0xC7L, (VECTOR(uint8_t, 2))(0xC7L, 0UL), 0UL), 0UL, 0xC7L, 0UL, (VECTOR(uint8_t, 2))(0xC7L, 0UL), (VECTOR(uint8_t, 2))(0xC7L, 0UL), 0xC7L, 0UL, 0xC7L, 0UL), // p_713->g_648
        (void*)0, // p_713->g_679
        {{{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679}},{{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679}},{{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679}},{{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679}},{{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679}},{{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679}},{{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679}},{{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679},{&p_713->g_679,&p_713->g_679,&p_713->g_679,&p_713->g_679}}}, // p_713->g_678
        {{1L,0x4163F177BF120175L,1L},{1L,0x4163F177BF120175L,1L}}, // p_713->g_682
        &p_713->g_130[6][4][1], // p_713->g_685
        (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x71245F01L), 0x71245F01L), // p_713->g_692
        (VECTOR(uint64_t, 2))(0x1BA55CB3BBA33664L, 0x33ECF938CE74C88EL), // p_713->g_699
        4L, // p_713->g_707
        (void*)0, // p_713->g_710
        &p_713->g_707, // p_713->g_712
        0, // p_713->v_collective
        sequence_input[get_global_id(0)], // p_713->global_0_offset
        sequence_input[get_global_id(1)], // p_713->global_1_offset
        sequence_input[get_global_id(2)], // p_713->global_2_offset
        sequence_input[get_local_id(0)], // p_713->local_0_offset
        sequence_input[get_local_id(1)], // p_713->local_1_offset
        sequence_input[get_local_id(2)], // p_713->local_2_offset
        sequence_input[get_group_id(0)], // p_713->group_0_offset
        sequence_input[get_group_id(1)], // p_713->group_1_offset
        sequence_input[get_group_id(2)], // p_713->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 21)), permutations[0][get_linear_local_id()])), // p_713->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_714 = c_715;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_713);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_713->g_18, "p_713->g_18", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_713->g_23[i][j], "p_713->g_23[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_713->g_26, "p_713->g_26", print_hash_value);
    transparent_crc(p_713->g_28.s0, "p_713->g_28.s0", print_hash_value);
    transparent_crc(p_713->g_28.s1, "p_713->g_28.s1", print_hash_value);
    transparent_crc(p_713->g_28.s2, "p_713->g_28.s2", print_hash_value);
    transparent_crc(p_713->g_28.s3, "p_713->g_28.s3", print_hash_value);
    transparent_crc(p_713->g_28.s4, "p_713->g_28.s4", print_hash_value);
    transparent_crc(p_713->g_28.s5, "p_713->g_28.s5", print_hash_value);
    transparent_crc(p_713->g_28.s6, "p_713->g_28.s6", print_hash_value);
    transparent_crc(p_713->g_28.s7, "p_713->g_28.s7", print_hash_value);
    transparent_crc(p_713->g_28.s8, "p_713->g_28.s8", print_hash_value);
    transparent_crc(p_713->g_28.s9, "p_713->g_28.s9", print_hash_value);
    transparent_crc(p_713->g_28.sa, "p_713->g_28.sa", print_hash_value);
    transparent_crc(p_713->g_28.sb, "p_713->g_28.sb", print_hash_value);
    transparent_crc(p_713->g_28.sc, "p_713->g_28.sc", print_hash_value);
    transparent_crc(p_713->g_28.sd, "p_713->g_28.sd", print_hash_value);
    transparent_crc(p_713->g_28.se, "p_713->g_28.se", print_hash_value);
    transparent_crc(p_713->g_28.sf, "p_713->g_28.sf", print_hash_value);
    transparent_crc(p_713->g_32, "p_713->g_32", print_hash_value);
    transparent_crc(p_713->g_42.s0, "p_713->g_42.s0", print_hash_value);
    transparent_crc(p_713->g_42.s1, "p_713->g_42.s1", print_hash_value);
    transparent_crc(p_713->g_42.s2, "p_713->g_42.s2", print_hash_value);
    transparent_crc(p_713->g_42.s3, "p_713->g_42.s3", print_hash_value);
    transparent_crc(p_713->g_42.s4, "p_713->g_42.s4", print_hash_value);
    transparent_crc(p_713->g_42.s5, "p_713->g_42.s5", print_hash_value);
    transparent_crc(p_713->g_42.s6, "p_713->g_42.s6", print_hash_value);
    transparent_crc(p_713->g_42.s7, "p_713->g_42.s7", print_hash_value);
    transparent_crc(p_713->g_42.s8, "p_713->g_42.s8", print_hash_value);
    transparent_crc(p_713->g_42.s9, "p_713->g_42.s9", print_hash_value);
    transparent_crc(p_713->g_42.sa, "p_713->g_42.sa", print_hash_value);
    transparent_crc(p_713->g_42.sb, "p_713->g_42.sb", print_hash_value);
    transparent_crc(p_713->g_42.sc, "p_713->g_42.sc", print_hash_value);
    transparent_crc(p_713->g_42.sd, "p_713->g_42.sd", print_hash_value);
    transparent_crc(p_713->g_42.se, "p_713->g_42.se", print_hash_value);
    transparent_crc(p_713->g_42.sf, "p_713->g_42.sf", print_hash_value);
    transparent_crc(p_713->g_52, "p_713->g_52", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_713->g_64[i], "p_713->g_64[i]", print_hash_value);

    }
    transparent_crc(p_713->g_75.s0, "p_713->g_75.s0", print_hash_value);
    transparent_crc(p_713->g_75.s1, "p_713->g_75.s1", print_hash_value);
    transparent_crc(p_713->g_75.s2, "p_713->g_75.s2", print_hash_value);
    transparent_crc(p_713->g_75.s3, "p_713->g_75.s3", print_hash_value);
    transparent_crc(p_713->g_75.s4, "p_713->g_75.s4", print_hash_value);
    transparent_crc(p_713->g_75.s5, "p_713->g_75.s5", print_hash_value);
    transparent_crc(p_713->g_75.s6, "p_713->g_75.s6", print_hash_value);
    transparent_crc(p_713->g_75.s7, "p_713->g_75.s7", print_hash_value);
    transparent_crc(p_713->g_114, "p_713->g_114", print_hash_value);
    transparent_crc(p_713->g_128.x, "p_713->g_128.x", print_hash_value);
    transparent_crc(p_713->g_128.y, "p_713->g_128.y", print_hash_value);
    transparent_crc(p_713->g_129.x, "p_713->g_129.x", print_hash_value);
    transparent_crc(p_713->g_129.y, "p_713->g_129.y", print_hash_value);
    transparent_crc(p_713->g_129.z, "p_713->g_129.z", print_hash_value);
    transparent_crc(p_713->g_129.w, "p_713->g_129.w", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_713->g_138[i], "p_713->g_138[i]", print_hash_value);

    }
    transparent_crc(p_713->g_139, "p_713->g_139", print_hash_value);
    transparent_crc(p_713->g_150, "p_713->g_150", print_hash_value);
    transparent_crc(p_713->g_158.s0, "p_713->g_158.s0", print_hash_value);
    transparent_crc(p_713->g_158.s1, "p_713->g_158.s1", print_hash_value);
    transparent_crc(p_713->g_158.s2, "p_713->g_158.s2", print_hash_value);
    transparent_crc(p_713->g_158.s3, "p_713->g_158.s3", print_hash_value);
    transparent_crc(p_713->g_158.s4, "p_713->g_158.s4", print_hash_value);
    transparent_crc(p_713->g_158.s5, "p_713->g_158.s5", print_hash_value);
    transparent_crc(p_713->g_158.s6, "p_713->g_158.s6", print_hash_value);
    transparent_crc(p_713->g_158.s7, "p_713->g_158.s7", print_hash_value);
    transparent_crc(p_713->g_167, "p_713->g_167", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_713->g_173[i][j], "p_713->g_173[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_713->g_198.x, "p_713->g_198.x", print_hash_value);
    transparent_crc(p_713->g_198.y, "p_713->g_198.y", print_hash_value);
    transparent_crc(p_713->g_199, "p_713->g_199", print_hash_value);
    transparent_crc(p_713->g_234.x, "p_713->g_234.x", print_hash_value);
    transparent_crc(p_713->g_234.y, "p_713->g_234.y", print_hash_value);
    transparent_crc(p_713->g_268.x, "p_713->g_268.x", print_hash_value);
    transparent_crc(p_713->g_268.y, "p_713->g_268.y", print_hash_value);
    transparent_crc(p_713->g_299.s0, "p_713->g_299.s0", print_hash_value);
    transparent_crc(p_713->g_299.s1, "p_713->g_299.s1", print_hash_value);
    transparent_crc(p_713->g_299.s2, "p_713->g_299.s2", print_hash_value);
    transparent_crc(p_713->g_299.s3, "p_713->g_299.s3", print_hash_value);
    transparent_crc(p_713->g_299.s4, "p_713->g_299.s4", print_hash_value);
    transparent_crc(p_713->g_299.s5, "p_713->g_299.s5", print_hash_value);
    transparent_crc(p_713->g_299.s6, "p_713->g_299.s6", print_hash_value);
    transparent_crc(p_713->g_299.s7, "p_713->g_299.s7", print_hash_value);
    transparent_crc(p_713->g_299.s8, "p_713->g_299.s8", print_hash_value);
    transparent_crc(p_713->g_299.s9, "p_713->g_299.s9", print_hash_value);
    transparent_crc(p_713->g_299.sa, "p_713->g_299.sa", print_hash_value);
    transparent_crc(p_713->g_299.sb, "p_713->g_299.sb", print_hash_value);
    transparent_crc(p_713->g_299.sc, "p_713->g_299.sc", print_hash_value);
    transparent_crc(p_713->g_299.sd, "p_713->g_299.sd", print_hash_value);
    transparent_crc(p_713->g_299.se, "p_713->g_299.se", print_hash_value);
    transparent_crc(p_713->g_299.sf, "p_713->g_299.sf", print_hash_value);
    transparent_crc(p_713->g_316, "p_713->g_316", print_hash_value);
    transparent_crc(p_713->g_330, "p_713->g_330", print_hash_value);
    transparent_crc(p_713->g_357.s0, "p_713->g_357.s0", print_hash_value);
    transparent_crc(p_713->g_357.s1, "p_713->g_357.s1", print_hash_value);
    transparent_crc(p_713->g_357.s2, "p_713->g_357.s2", print_hash_value);
    transparent_crc(p_713->g_357.s3, "p_713->g_357.s3", print_hash_value);
    transparent_crc(p_713->g_357.s4, "p_713->g_357.s4", print_hash_value);
    transparent_crc(p_713->g_357.s5, "p_713->g_357.s5", print_hash_value);
    transparent_crc(p_713->g_357.s6, "p_713->g_357.s6", print_hash_value);
    transparent_crc(p_713->g_357.s7, "p_713->g_357.s7", print_hash_value);
    transparent_crc(p_713->g_357.s8, "p_713->g_357.s8", print_hash_value);
    transparent_crc(p_713->g_357.s9, "p_713->g_357.s9", print_hash_value);
    transparent_crc(p_713->g_357.sa, "p_713->g_357.sa", print_hash_value);
    transparent_crc(p_713->g_357.sb, "p_713->g_357.sb", print_hash_value);
    transparent_crc(p_713->g_357.sc, "p_713->g_357.sc", print_hash_value);
    transparent_crc(p_713->g_357.sd, "p_713->g_357.sd", print_hash_value);
    transparent_crc(p_713->g_357.se, "p_713->g_357.se", print_hash_value);
    transparent_crc(p_713->g_357.sf, "p_713->g_357.sf", print_hash_value);
    transparent_crc(p_713->g_370, "p_713->g_370", print_hash_value);
    transparent_crc(p_713->g_392, "p_713->g_392", print_hash_value);
    transparent_crc(p_713->g_420.x, "p_713->g_420.x", print_hash_value);
    transparent_crc(p_713->g_420.y, "p_713->g_420.y", print_hash_value);
    transparent_crc(p_713->g_420.z, "p_713->g_420.z", print_hash_value);
    transparent_crc(p_713->g_420.w, "p_713->g_420.w", print_hash_value);
    transparent_crc(p_713->g_422.x, "p_713->g_422.x", print_hash_value);
    transparent_crc(p_713->g_422.y, "p_713->g_422.y", print_hash_value);
    transparent_crc(p_713->g_441.x, "p_713->g_441.x", print_hash_value);
    transparent_crc(p_713->g_441.y, "p_713->g_441.y", print_hash_value);
    transparent_crc(p_713->g_478.s0, "p_713->g_478.s0", print_hash_value);
    transparent_crc(p_713->g_478.s1, "p_713->g_478.s1", print_hash_value);
    transparent_crc(p_713->g_478.s2, "p_713->g_478.s2", print_hash_value);
    transparent_crc(p_713->g_478.s3, "p_713->g_478.s3", print_hash_value);
    transparent_crc(p_713->g_478.s4, "p_713->g_478.s4", print_hash_value);
    transparent_crc(p_713->g_478.s5, "p_713->g_478.s5", print_hash_value);
    transparent_crc(p_713->g_478.s6, "p_713->g_478.s6", print_hash_value);
    transparent_crc(p_713->g_478.s7, "p_713->g_478.s7", print_hash_value);
    transparent_crc(p_713->g_490.x, "p_713->g_490.x", print_hash_value);
    transparent_crc(p_713->g_490.y, "p_713->g_490.y", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_713->g_502[i][j][k], "p_713->g_502[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_713->g_505.s0, "p_713->g_505.s0", print_hash_value);
    transparent_crc(p_713->g_505.s1, "p_713->g_505.s1", print_hash_value);
    transparent_crc(p_713->g_505.s2, "p_713->g_505.s2", print_hash_value);
    transparent_crc(p_713->g_505.s3, "p_713->g_505.s3", print_hash_value);
    transparent_crc(p_713->g_505.s4, "p_713->g_505.s4", print_hash_value);
    transparent_crc(p_713->g_505.s5, "p_713->g_505.s5", print_hash_value);
    transparent_crc(p_713->g_505.s6, "p_713->g_505.s6", print_hash_value);
    transparent_crc(p_713->g_505.s7, "p_713->g_505.s7", print_hash_value);
    transparent_crc(p_713->g_507.s0, "p_713->g_507.s0", print_hash_value);
    transparent_crc(p_713->g_507.s1, "p_713->g_507.s1", print_hash_value);
    transparent_crc(p_713->g_507.s2, "p_713->g_507.s2", print_hash_value);
    transparent_crc(p_713->g_507.s3, "p_713->g_507.s3", print_hash_value);
    transparent_crc(p_713->g_507.s4, "p_713->g_507.s4", print_hash_value);
    transparent_crc(p_713->g_507.s5, "p_713->g_507.s5", print_hash_value);
    transparent_crc(p_713->g_507.s6, "p_713->g_507.s6", print_hash_value);
    transparent_crc(p_713->g_507.s7, "p_713->g_507.s7", print_hash_value);
    transparent_crc(p_713->g_541, "p_713->g_541", print_hash_value);
    transparent_crc(p_713->g_613.s0, "p_713->g_613.s0", print_hash_value);
    transparent_crc(p_713->g_613.s1, "p_713->g_613.s1", print_hash_value);
    transparent_crc(p_713->g_613.s2, "p_713->g_613.s2", print_hash_value);
    transparent_crc(p_713->g_613.s3, "p_713->g_613.s3", print_hash_value);
    transparent_crc(p_713->g_613.s4, "p_713->g_613.s4", print_hash_value);
    transparent_crc(p_713->g_613.s5, "p_713->g_613.s5", print_hash_value);
    transparent_crc(p_713->g_613.s6, "p_713->g_613.s6", print_hash_value);
    transparent_crc(p_713->g_613.s7, "p_713->g_613.s7", print_hash_value);
    transparent_crc(p_713->g_624.x, "p_713->g_624.x", print_hash_value);
    transparent_crc(p_713->g_624.y, "p_713->g_624.y", print_hash_value);
    transparent_crc(p_713->g_624.z, "p_713->g_624.z", print_hash_value);
    transparent_crc(p_713->g_624.w, "p_713->g_624.w", print_hash_value);
    transparent_crc(p_713->g_625.x, "p_713->g_625.x", print_hash_value);
    transparent_crc(p_713->g_625.y, "p_713->g_625.y", print_hash_value);
    transparent_crc(p_713->g_628.x, "p_713->g_628.x", print_hash_value);
    transparent_crc(p_713->g_628.y, "p_713->g_628.y", print_hash_value);
    transparent_crc(p_713->g_628.z, "p_713->g_628.z", print_hash_value);
    transparent_crc(p_713->g_628.w, "p_713->g_628.w", print_hash_value);
    transparent_crc(p_713->g_629.x, "p_713->g_629.x", print_hash_value);
    transparent_crc(p_713->g_629.y, "p_713->g_629.y", print_hash_value);
    transparent_crc(p_713->g_648.s0, "p_713->g_648.s0", print_hash_value);
    transparent_crc(p_713->g_648.s1, "p_713->g_648.s1", print_hash_value);
    transparent_crc(p_713->g_648.s2, "p_713->g_648.s2", print_hash_value);
    transparent_crc(p_713->g_648.s3, "p_713->g_648.s3", print_hash_value);
    transparent_crc(p_713->g_648.s4, "p_713->g_648.s4", print_hash_value);
    transparent_crc(p_713->g_648.s5, "p_713->g_648.s5", print_hash_value);
    transparent_crc(p_713->g_648.s6, "p_713->g_648.s6", print_hash_value);
    transparent_crc(p_713->g_648.s7, "p_713->g_648.s7", print_hash_value);
    transparent_crc(p_713->g_648.s8, "p_713->g_648.s8", print_hash_value);
    transparent_crc(p_713->g_648.s9, "p_713->g_648.s9", print_hash_value);
    transparent_crc(p_713->g_648.sa, "p_713->g_648.sa", print_hash_value);
    transparent_crc(p_713->g_648.sb, "p_713->g_648.sb", print_hash_value);
    transparent_crc(p_713->g_648.sc, "p_713->g_648.sc", print_hash_value);
    transparent_crc(p_713->g_648.sd, "p_713->g_648.sd", print_hash_value);
    transparent_crc(p_713->g_648.se, "p_713->g_648.se", print_hash_value);
    transparent_crc(p_713->g_648.sf, "p_713->g_648.sf", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_713->g_682[i][j], "p_713->g_682[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_713->g_692.x, "p_713->g_692.x", print_hash_value);
    transparent_crc(p_713->g_692.y, "p_713->g_692.y", print_hash_value);
    transparent_crc(p_713->g_692.z, "p_713->g_692.z", print_hash_value);
    transparent_crc(p_713->g_692.w, "p_713->g_692.w", print_hash_value);
    transparent_crc(p_713->g_699.x, "p_713->g_699.x", print_hash_value);
    transparent_crc(p_713->g_699.y, "p_713->g_699.y", print_hash_value);
    transparent_crc(p_713->g_707, "p_713->g_707", print_hash_value);
    transparent_crc(p_713->v_collective, "p_713->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 78; i++)
            transparent_crc(p_713->g_special_values[i + 78 * get_linear_group_id()], "p_713->g_special_values[i + 78 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 78; i++)
            transparent_crc(p_713->l_special_values[i], "p_713->l_special_values[i]", print_hash_value);
    transparent_crc(p_713->l_comm_values[get_linear_local_id()], "p_713->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_713->g_comm_values[get_linear_group_id() * 21 + get_linear_local_id()], "p_713->g_comm_values[get_linear_group_id() * 21 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
