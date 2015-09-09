// ---atomic_reductions ---fake_divergence -g 93,11,9 -l 31,1,1
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
    volatile int32_t g_2;
    volatile int32_t g_3;
    int32_t g_4;
    int32_t g_9;
    volatile uint8_t g_14;
    uint32_t g_23;
    int32_t * volatile *g_30;
    int32_t g_36;
    volatile uint64_t g_49;
    uint16_t g_115;
    int32_t *g_122[7];
    int8_t g_132;
    int16_t g_145;
    uint32_t **g_147;
    uint32_t *** volatile g_146;
    uint64_t g_167;
    uint16_t *g_179;
    uint16_t **g_178;
    uint64_t g_249;
    uint8_t g_258;
    int8_t * volatile g_309[6][7][6];
    volatile uint32_t g_319;
    int64_t g_341;
    uint32_t g_351;
    int8_t g_400;
    uint16_t ***g_439;
    uint64_t g_451[10][5][5];
    int32_t g_453;
    int32_t *g_485;
    int32_t **g_484[10];
    uint64_t g_523;
    uint16_t g_551;
    int64_t g_570;
    int32_t g_576;
    int32_t g_578;
    int32_t * volatile g_646;
    int16_t *g_716;
    uint32_t g_737[4][9][7];
    uint32_t g_740;
    volatile int32_t *** volatile g_752;
    volatile int32_t *** volatile * volatile g_751;
    volatile int32_t g_805;
    int32_t * volatile g_808;
    int32_t * volatile *g_807;
    int64_t g_830;
    int64_t g_851;
    uint16_t ****g_873[5][9][5];
    uint16_t *****g_872;
    volatile uint32_t ** volatile g_878;
    int32_t *g_888;
    int32_t **g_887;
    int32_t * volatile g_962[4];
    int32_t * volatile g_963[4];
    int32_t * volatile g_964;
    uint16_t ******g_1074;
    int32_t * volatile g_1160;
    int32_t * volatile g_1161[6];
    uint8_t *g_1170;
    uint8_t **g_1169;
    uint64_t g_1256;
    int32_t * volatile g_1329;
    int32_t *****g_1333;
    volatile int8_t g_1544[6];
    int16_t *g_1554;
    uint8_t g_1594;
    int8_t *g_1609[1];
    int8_t **g_1608;
    int32_t * volatile g_1618;
    int16_t g_1688;
    int64_t *g_1708;
    int16_t g_1786;
    volatile int32_t g_1908;
    uint8_t g_1912;
    int32_t g_1921;
    uint32_t g_1965;
    int8_t g_2078;
    volatile uint32_t g_2125[8][3];
    int64_t g_2143;
    int32_t g_2198[5];
    int64_t **g_2212;
    int64_t g_2365[9];
    uint32_t * volatile * volatile g_2393;
    int32_t ***g_2440[3];
    int32_t ****g_2439;
    int32_t ****g_2442;
    uint8_t g_2486;
    volatile uint8_t g_2595;
    int16_t g_2619;
    uint16_t *****g_2645;
    int16_t g_2647;
    int64_t *g_2668;
    int64_t * volatile *g_2667;
    volatile uint32_t g_2676;
    uint8_t g_2679[10];
    int32_t *g_2692;
    int32_t **g_2691;
    int32_t ***g_2690;
    int64_t **g_2699;
    uint32_t ***g_2706;
    uint32_t ****g_2705[8][1][4];
    int32_t *g_2740;
    int32_t g_2796;
    volatile uint32_t g_2821;
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
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
};


/* --- FORWARD DECLARATIONS --- */
int64_t  func_1(struct S0 * p_2854);
int32_t * func_17(int16_t  p_18, int32_t * p_19, uint32_t  p_20, int32_t ** p_21, struct S0 * p_2854);
uint32_t  func_31(uint8_t  p_32, struct S0 * p_2854);
uint32_t  func_58(int32_t  p_59, int32_t * p_60, uint32_t * p_61, struct S0 * p_2854);
uint32_t * func_62(uint64_t  p_63, int64_t  p_64, int32_t * p_65, uint32_t * p_66, int64_t  p_67, struct S0 * p_2854);
uint64_t  func_72(int8_t  p_73, int16_t  p_74, struct S0 * p_2854);
uint32_t * func_75(uint32_t * p_76, int32_t ** p_77, struct S0 * p_2854);
uint32_t * func_78(int64_t  p_79, uint64_t  p_80, int32_t ** p_81, uint64_t  p_82, struct S0 * p_2854);
int16_t  func_93(uint32_t * p_94, int32_t  p_95, int32_t ** p_96, int32_t * p_97, struct S0 * p_2854);
uint16_t  func_98(int32_t  p_99, uint32_t  p_100, uint32_t * p_101, uint32_t  p_102, uint32_t  p_103, struct S0 * p_2854);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2854->g_4 p_2854->g_3 p_2854->g_14 p_2854->g_9 p_2854->g_23 p_2854->g_30 p_2854->g_49 p_2854->g_1708 p_2854->g_570 p_2854->g_451 p_2854->g_1608 p_2854->g_1609 p_2854->g_132 p_2854->g_716 p_2854->g_1169 p_2854->g_1170 p_2854->g_258 p_2854->g_964 p_2854->g_2143 p_2854->g_888 p_2854->g_453 p_2854->g_1554 p_2854->g_145 p_2854->g_887 p_2854->g_646 p_2854->g_36 p_2854->g_179 p_2854->g_167 p_2854->g_115 p_2854->g_1912 p_2854->g_484 p_2854->g_1256 p_2854->g_1074 p_2854->g_178 p_2854->g_2125 p_2854->g_1618 p_2854->g_523 p_2854->g_1544 p_2854->g_400 p_2854->g_2439 p_2854->g_2440 p_2854->g_2595 p_2854->g_1329 p_2854->g_351 p_2854->g_2365 p_2854->g_122 p_2854->g_2699 p_2854->g_2668
 * writes: p_2854->g_4 p_2854->g_14 p_2854->g_9 p_2854->g_23 p_2854->g_49 p_2854->g_570 p_2854->g_145 p_2854->g_36 p_2854->g_167 p_2854->g_453 p_2854->g_2198 p_2854->g_2212 p_2854->g_115 p_2854->g_1688 p_2854->g_258 p_2854->g_1594 p_2854->g_132 p_2854->g_830 p_2854->g_485 p_2854->g_1921 p_2854->g_523 p_2854->g_2078 p_2854->g_551 p_2854->g_249
 */
int64_t  func_1(struct S0 * p_2854)
{ /* block id: 4 */
    int32_t *l_8 = &p_2854->g_9;
    int32_t *l_11 = &p_2854->g_4;
    int32_t *l_12[1];
    int32_t l_13 = 0x7A831EB2L;
    uint8_t **l_2602 = &p_2854->g_1170;
    uint64_t l_2613 = 0x46E16840764AD783L;
    uint32_t ***l_2702 = &p_2854->g_147;
    uint32_t ***l_2718[1];
    uint32_t l_2737 = 0xE6FF5406L;
    int32_t *l_2739 = &p_2854->g_453;
    uint8_t *l_2767 = &p_2854->g_2679[1];
    uint64_t l_2776[3];
    int32_t l_2778 = 0x1D04179EL;
    uint16_t l_2801 = 0xEFB3L;
    uint16_t l_2836 = 1UL;
    uint32_t l_2851 = 0xD6C1FC12L;
    int i;
    for (i = 0; i < 1; i++)
        l_12[i] = &p_2854->g_9;
    for (i = 0; i < 1; i++)
        l_2718[i] = (void*)0;
    for (i = 0; i < 3; i++)
        l_2776[i] = 7UL;
    for (p_2854->g_4 = (-30); (p_2854->g_4 == (-23)); p_2854->g_4 = safe_add_func_int32_t_s_s(p_2854->g_4, 7))
    { /* block id: 7 */
        int32_t *l_7 = &p_2854->g_4;
        int32_t **l_10 = &l_8;
        l_8 = l_7;
        (*l_10) = l_7;
        if (p_2854->g_3)
            continue;
    }
    p_2854->g_14++;
    for (p_2854->g_9 = 0; (p_2854->g_9 >= 0); p_2854->g_9 -= 1)
    { /* block id: 15 */
        int16_t l_2576 = 0L;
        uint8_t **l_2600 = &p_2854->g_1170;
        int32_t l_2603 = 0x1D3E53D6L;
        uint64_t l_2605 = 0x3FC4A4ACAFCD55DAL;
        int32_t **l_2646 = &p_2854->g_122[3];
        int32_t l_2650 = 0x308170E6L;
        int32_t l_2653 = 0x6D3831C4L;
        int16_t l_2735 = 0L;
        int16_t l_2741 = 0L;
        int64_t l_2779[6];
        int32_t l_2809 = 0x30FFC0DDL;
        int32_t l_2810 = 0x20206128L;
        int32_t l_2812 = 0x755BDD07L;
        int32_t l_2814 = 0x7A1492EAL;
        int32_t l_2819 = 0x74E474DFL;
        uint64_t *l_2831 = &p_2854->g_249;
        int16_t *l_2839 = &l_2576;
        int16_t *l_2840 = &l_2741;
        uint32_t l_2849[3][6] = {{0UL,0UL,0xF53175D8L,0xF8D3913CL,4294967295UL,0xF8D3913CL},{0UL,0UL,0xF53175D8L,0xF8D3913CL,4294967295UL,0xF8D3913CL},{0UL,0UL,0xF53175D8L,0xF8D3913CL,4294967295UL,0xF8D3913CL}};
        int32_t l_2850 = 0x05666D4BL;
        int i, j;
        for (i = 0; i < 6; i++)
            l_2779[i] = 8L;
        for (l_13 = 0; (l_13 >= 0); l_13 -= 1)
        { /* block id: 18 */
            uint32_t ***l_2586 = &p_2854->g_147;
            uint32_t ****l_2585 = &l_2586;
            uint8_t **l_2601[9][2][1] = {{{&p_2854->g_1170},{&p_2854->g_1170}},{{&p_2854->g_1170},{&p_2854->g_1170}},{{&p_2854->g_1170},{&p_2854->g_1170}},{{&p_2854->g_1170},{&p_2854->g_1170}},{{&p_2854->g_1170},{&p_2854->g_1170}},{{&p_2854->g_1170},{&p_2854->g_1170}},{{&p_2854->g_1170},{&p_2854->g_1170}},{{&p_2854->g_1170},{&p_2854->g_1170}},{{&p_2854->g_1170},{&p_2854->g_1170}}};
            int32_t l_2612[8][8] = {{6L,(-1L),0x681BA651L,6L,2L,0x681BA651L,0x681BA651L,2L},{6L,(-1L),0x681BA651L,6L,2L,0x681BA651L,0x681BA651L,2L},{6L,(-1L),0x681BA651L,6L,2L,0x681BA651L,0x681BA651L,2L},{6L,(-1L),0x681BA651L,6L,2L,0x681BA651L,0x681BA651L,2L},{6L,(-1L),0x681BA651L,6L,2L,0x681BA651L,0x681BA651L,2L},{6L,(-1L),0x681BA651L,6L,2L,0x681BA651L,0x681BA651L,2L},{6L,(-1L),0x681BA651L,6L,2L,0x681BA651L,0x681BA651L,2L},{6L,(-1L),0x681BA651L,6L,2L,0x681BA651L,0x681BA651L,2L}};
            uint32_t l_2654 = 0UL;
            uint32_t l_2709 = 0x98C1AEC8L;
            int32_t l_2748 = 3L;
            int32_t l_2766 = (-1L);
            uint64_t l_2824 = 0xC5BC43E3F8C0A9B7L;
            int i, j, k;
            l_12[p_2854->g_9] = (void*)0;
            for (p_2854->g_4 = 0; (p_2854->g_4 >= 0); p_2854->g_4 -= 1)
            { /* block id: 22 */
                uint32_t *l_22 = &p_2854->g_23;
                int32_t l_33 = 0x1D88C83BL;
                uint16_t *l_2575 = &p_2854->g_551;
                uint32_t ***l_2583 = &p_2854->g_147;
                uint32_t ****l_2582 = &l_2583;
                uint32_t *****l_2584 = &l_2582;
                int32_t l_2604 = 0x75B77A06L;
                int i;
                l_12[p_2854->g_4] = func_17(((++(*l_22)) , ((safe_lshift_func_uint16_t_u_u((((((safe_mul_func_int8_t_s_s(((void*)0 != p_2854->g_30), (p_2854->g_4 ^ GROUP_DIVERGE(2, 1)))) , func_31(l_33, p_2854)) >= ((safe_lshift_func_int16_t_s_u((-2L), ((*l_2575) = 0x2770L))) & ((0L & l_33) < 0xA3122A081F16F7E8L))) | 0x3F214472L) && 0x3422DDBC1ADED340L), 12)) > 0L)), l_12[0], l_2576, &l_12[p_2854->g_9], p_2854);
                (***p_2854->g_2439) = (void*)0;
                l_33 = (((safe_add_func_int64_t_s_s((safe_lshift_func_uint16_t_u_u((safe_unary_minus_func_int16_t_s((((*l_2584) = l_2582) != l_2585))), ((safe_add_func_uint32_t_u_u(((((safe_add_func_uint64_t_u_u((safe_mod_func_int64_t_s_s(((((*l_8) ^ (((*l_22) &= 0x8E233C48L) , (safe_sub_func_int8_t_s_s(p_2854->g_2595, 0x14L)))) , (((safe_div_func_int32_t_s_s(((*p_2854->g_1329) &= ((safe_lshift_func_int8_t_s_s((l_2600 == (l_2602 = ((l_12[p_2854->g_4] != (void*)0) , l_2601[2][1][0]))), l_2603)) , (*l_8))), l_33)) , (*p_2854->g_1708)) <= p_2854->g_351)) , l_2604), p_2854->g_2365[5])), l_2576)) ^ l_2605) || (*p_2854->g_716)) > FAKE_DIVERGE(p_2854->group_1_offset, get_group_id(1), 10)), (*l_11))) <= 3L))), 0xD058ED66A5B76631L)) , 6L) < 0x2A8F85CEL);
            }
        }
        l_12[p_2854->g_9] = func_78((safe_div_func_int16_t_s_s((safe_sub_func_int64_t_s_s((**l_2646), ((*l_2831) = (FAKE_DIVERGE(p_2854->local_0_offset, get_local_id(0), 10) && (**p_2854->g_178))))), (l_2653 = (**l_2646)))), ((safe_div_func_uint64_t_u_u((0x1AL && ((safe_rshift_func_uint16_t_u_u(0UL, (l_2836 && ((safe_mod_func_int16_t_s_s(((*l_2840) &= ((*l_2839) |= (*p_2854->g_716))), (safe_mod_func_int16_t_s_s((safe_mul_func_int16_t_s_s((*p_2854->g_1554), ((((safe_rshift_func_int8_t_s_u((safe_sub_func_int8_t_s_s((-1L), 0xBEL)), (*p_2854->g_1170))) | l_2849[0][3]) != 0x76B1B906184D1351L) , (**l_2646)))), 0x6587L)))) , (**l_2646))))) && (**l_2646))), 0xFB5D8A2948C01AFFL)) > GROUP_DIVERGE(0, 1)), (**p_2854->g_2439), l_2850, p_2854);
    }
    ++l_2851;
    return (**p_2854->g_2699);
}


/* ------------------------------------------ */
/* 
 * reads : p_2854->g_485
 * writes:
 */
int32_t * func_17(int16_t  p_18, int32_t * p_19, uint32_t  p_20, int32_t ** p_21, struct S0 * p_2854)
{ /* block id: 1180 */
    return (*p_21);
}


/* ------------------------------------------ */
/* 
 * reads : p_2854->g_23 p_2854->g_49 p_2854->g_570 p_2854->g_1708 p_2854->g_451 p_2854->g_9 p_2854->g_1608 p_2854->g_1609 p_2854->g_132 p_2854->g_716 p_2854->g_1169 p_2854->g_1170 p_2854->g_258 p_2854->g_964 p_2854->g_2143 p_2854->g_888 p_2854->g_453 p_2854->g_1554 p_2854->g_145 p_2854->g_887 p_2854->g_646 p_2854->g_36 p_2854->g_179 p_2854->g_167 p_2854->g_115 p_2854->g_1912 p_2854->g_484 p_2854->g_1256 p_2854->g_1074 p_2854->g_178 p_2854->g_2125 p_2854->g_1618 p_2854->g_523 p_2854->g_1544 p_2854->g_400
 * writes: p_2854->g_23 p_2854->g_49 p_2854->g_570 p_2854->g_145 p_2854->g_36 p_2854->g_167 p_2854->g_453 p_2854->g_2198 p_2854->g_2212 p_2854->g_115 p_2854->g_1688 p_2854->g_258 p_2854->g_1594 p_2854->g_132 p_2854->g_830 p_2854->g_485 p_2854->g_1921 p_2854->g_523 p_2854->g_2078
 */
uint32_t  func_31(uint8_t  p_32, struct S0 * p_2854)
{ /* block id: 24 */
    uint64_t l_34[4];
    int32_t l_40 = 0x51F6657EL;
    int32_t l_41 = 0x5540778DL;
    int32_t l_42 = (-10L);
    int32_t l_43 = 0L;
    int32_t l_44 = 0L;
    int32_t l_45 = (-7L);
    int32_t l_46 = 1L;
    int32_t l_47 = 0x01006516L;
    int32_t l_48[6] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
    uint32_t *l_104 = (void*)0;
    int32_t **l_345 = (void*)0;
    int32_t *l_346[1];
    int16_t l_1557 = 0x7D83L;
    int32_t l_2157 = 0x7C9473C9L;
    uint32_t l_2159 = 4294967293UL;
    uint32_t l_2177 = 0xABC28D28L;
    uint16_t *******l_2195 = &p_2854->g_1074;
    uint32_t l_2196 = 1UL;
    int32_t ***l_2197 = (void*)0;
    int32_t l_2260 = (-1L);
    uint64_t l_2286 = 0xAC9A6919BEACE106L;
    int16_t l_2288 = 0x0E19L;
    int64_t *l_2328 = &p_2854->g_341;
    uint16_t l_2428 = 65532UL;
    int16_t l_2543 = (-1L);
    int64_t l_2548 = 0x2F5F8B7990422E1BL;
    int32_t l_2566 = (-1L);
    uint16_t l_2570 = 0x4A9EL;
    int i;
    for (i = 0; i < 4; i++)
        l_34[i] = 0x32F1EFAE07DF7DC2L;
    for (i = 0; i < 1; i++)
        l_346[i] = (void*)0;
    for (p_2854->g_23 = 0; (p_2854->g_23 <= 3); p_2854->g_23 += 1)
    { /* block id: 27 */
        int32_t *l_35 = &p_2854->g_36;
        int32_t *l_37 = (void*)0;
        int32_t *l_38 = &p_2854->g_36;
        int32_t *l_39[2];
        uint16_t l_482 = 1UL;
        int16_t *l_1556 = &p_2854->g_145;
        uint16_t l_1558 = 0xD2E6L;
        uint16_t *l_1562 = &p_2854->g_551;
        uint32_t **l_1904 = &l_104;
        int16_t *l_2158 = &p_2854->g_1688;
        int i;
        for (i = 0; i < 2; i++)
            l_39[i] = &p_2854->g_36;
        --p_2854->g_49;
    }
    for (p_2854->g_570 = 23; (p_2854->g_570 != (-13)); --p_2854->g_570)
    { /* block id: 1036 */
        uint8_t l_2174 = 0x3BL;
        int32_t l_2179[2][9] = {{6L,1L,6L,6L,1L,6L,6L,1L,6L},{6L,1L,6L,6L,1L,6L,6L,1L,6L}};
        uint16_t **l_2182 = &p_2854->g_179;
        int32_t l_2183 = 6L;
        int64_t **l_2211 = &p_2854->g_1708;
        uint8_t **l_2217 = &p_2854->g_1170;
        uint64_t *l_2218 = &p_2854->g_167;
        uint16_t l_2231[10][6][4] = {{{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL}},{{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL}},{{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL}},{{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL}},{{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL}},{{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL}},{{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL}},{{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL}},{{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL}},{{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL},{0x3F4DL,4UL,0xFA61L,4UL}}};
        int32_t ***l_2236 = &p_2854->g_887;
        int32_t *l_2263[7];
        int32_t l_2357[7];
        uint64_t *l_2463 = &p_2854->g_451[4][2][4];
        int64_t l_2480 = 0L;
        uint32_t l_2542 = 2UL;
        uint64_t l_2561 = 18446744073709551611UL;
        int64_t l_2568 = (-1L);
        int i, j, k;
        for (i = 0; i < 7; i++)
            l_2263[i] = &p_2854->g_36;
        for (i = 0; i < 7; i++)
            l_2357[i] = 0x3A5E5EBDL;
        for (l_1557 = (-30); (l_1557 == 29); ++l_1557)
        { /* block id: 1039 */
            int64_t l_2178[4][4] = {{0x0513237AC65E84A1L,0x0513237AC65E84A1L,0x0513237AC65E84A1L,0x0513237AC65E84A1L},{0x0513237AC65E84A1L,0x0513237AC65E84A1L,0x0513237AC65E84A1L,0x0513237AC65E84A1L},{0x0513237AC65E84A1L,0x0513237AC65E84A1L,0x0513237AC65E84A1L,0x0513237AC65E84A1L},{0x0513237AC65E84A1L,0x0513237AC65E84A1L,0x0513237AC65E84A1L,0x0513237AC65E84A1L}};
            int i, j;
            l_2183 ^= ((safe_div_func_int32_t_s_s((safe_div_func_uint8_t_u_u((((*p_2854->g_964) = (safe_add_func_int16_t_s_s((-10L), (1L & ((-1L) & (((safe_add_func_uint16_t_u_u((safe_lshift_func_int16_t_s_s(l_2174, 12)), ((*p_2854->g_716) = (safe_sub_func_uint8_t_u_u((((l_2179[1][8] &= (p_32 & (l_2177 > ((l_2178[2][1] = 0x6CF38775L) , (*p_2854->g_1708))))) , (safe_mul_func_int16_t_s_s((((p_2854->g_451[7][2][2] , l_2182) != l_2182) < p_2854->g_9), p_32))) || p_32), (**p_2854->g_1608)))))) || (**p_2854->g_1169)) , p_32)))))) | 0x08FBABEFL), 255UL)), p_32)) , 0x22C4EA11L);
            return p_2854->g_2143;
        }
        p_2854->g_2198[0] = (safe_mod_func_uint32_t_u_u((safe_div_func_uint8_t_u_u((&l_45 != ((safe_add_func_uint16_t_u_u((safe_unary_minus_func_uint32_t_u(p_32)), (((**p_2854->g_887) = ((p_32 ^ 0x0CF77813L) ^ ((*p_2854->g_1554) = ((*p_2854->g_888) , (((safe_mul_func_uint16_t_u_u(((safe_lshift_func_int8_t_s_u(p_32, ((((p_32 > (p_2854->g_167 = (p_32 || (l_2195 != &p_2854->g_1074)))) & 0x5FL) | p_32) || 0x4D695708L))) == l_2196), (*p_2854->g_1554))) , (void*)0) != l_2197))))) , 0x5739L))) , &l_46)), 0x65L)), 0x0028899DL));
        l_2183 = ((((*l_2218) ^= ((((safe_mod_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_u(((**l_2182) = (((safe_mod_func_uint32_t_u_u(l_2174, (*p_2854->g_646))) || (safe_div_func_int16_t_s_s((safe_add_func_uint16_t_u_u((0x1F9B688A5E68DE6CL != (safe_mul_func_uint8_t_u_u((l_2211 != (p_2854->g_2212 = l_2211)), 1UL))), (((safe_lshift_func_uint16_t_u_s(((~(safe_div_func_int16_t_s_s(p_32, (((void*)0 != l_2217) | 0xF5999EC6L)))) , l_2179[1][7]), 8)) >= p_32) <= p_32))), l_2179[1][4]))) > p_32)), p_32)), 7L)) > 0x7E6EL) < 0UL) ^ 0L)) ^ 18446744073709551607UL) > 65535UL);
        if ((safe_lshift_func_int16_t_s_u(((((*p_2854->g_716) != (safe_add_func_int8_t_s_s(((safe_add_func_uint32_t_u_u(((safe_rshift_func_int16_t_s_s((safe_rshift_func_uint16_t_u_u(((safe_rshift_func_uint16_t_u_u((0x6BL == l_2231[9][5][0]), (safe_unary_minus_func_uint64_t_u((p_32 & ((((safe_unary_minus_func_int64_t_s(0x14024B2F533727D4L)) , ((((&l_2217 != (void*)0) > (safe_add_func_uint16_t_u_u(((l_2179[1][8] > (*p_2854->g_1170)) , p_32), p_32))) ^ p_32) == l_2179[1][8])) , (-8L)) != 0xE9F126144F1BE709L)))))) != p_32), 6)), 13)) , p_32), 0x65EFCE05L)) ^ 0x2AL), p_32))) < 1L) , 0x65C5L), 9)))
        { /* block id: 1055 */
            int32_t l_2237 = (-10L);
            int64_t l_2247 = (-10L);
            int32_t *l_2264 = &l_44;
            uint8_t **l_2267 = &p_2854->g_1170;
            uint16_t *l_2287 = &l_2231[9][5][0];
            uint8_t *l_2296 = &p_2854->g_1594;
            int64_t **l_2313 = &p_2854->g_1708;
            int8_t *l_2314[2];
            int64_t *l_2315 = (void*)0;
            int64_t *l_2316 = &p_2854->g_830;
            uint8_t ***l_2317 = (void*)0;
            int32_t l_2318 = 0x153A27A5L;
            int i;
            for (i = 0; i < 2; i++)
                l_2314[i] = (void*)0;
            l_2237 &= (l_2236 != (void*)0);
            for (p_2854->g_1688 = (-21); (p_2854->g_1688 == 23); p_2854->g_1688 = safe_add_func_int16_t_s_s(p_2854->g_1688, 8))
            { /* block id: 1059 */
                int8_t l_2240 = (-7L);
                int32_t **l_2261 = (void*)0;
                int32_t **l_2262[9][3] = {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}};
                uint8_t ***l_2289 = &p_2854->g_1169;
                int i, j;
                l_2264 = (l_2263[3] = func_78(p_32, (0x794DE21D8FB54912L > (l_2240 ^ ((**l_2182) = (safe_rshift_func_uint8_t_u_u(((((safe_mul_func_int8_t_s_s((safe_sub_func_int64_t_s_s((0L | l_2240), (l_2237 < (l_2247 , (l_2237 & (safe_sub_func_int32_t_s_s(((safe_sub_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u(((safe_add_func_int32_t_s_s((safe_rshift_func_uint8_t_u_u(((safe_div_func_uint16_t_u_u(((0x2C48CEFE3733CE36L >= p_2854->g_145) , (*p_2854->g_179)), p_32)) <= l_2240), (*p_2854->g_1170))), p_32)) <= (*p_2854->g_646)), 1)), 5L)) && 0x283267B2CED66CE1L), l_2260))))))), l_2237)) , l_2247) != 0x280519976D0850B6L) , (**p_2854->g_1169)), p_32))))), &p_2854->g_122[0], p_2854->g_258, p_2854));
                for (l_41 = 0; (l_41 <= 1); l_41 += 1)
                { /* block id: 1065 */
                    uint16_t l_2270[7] = {65530UL,65530UL,65530UL,65530UL,65530UL,65530UL,65530UL};
                    int32_t l_2285 = 0L;
                    int i, j;
                    l_2179[l_41][(l_41 + 4)] |= ((((((safe_rshift_func_uint8_t_u_u(p_32, ((((void*)0 == l_2267) && ((*p_2854->g_716) = (FAKE_DIVERGE(p_2854->group_0_offset, get_group_id(0), 10) , (*p_2854->g_1554)))) , (((safe_rshift_func_int16_t_s_u(((--l_2270[0]) && (safe_mul_func_uint8_t_u_u((*l_2264), ((**p_2854->g_1169) = (safe_mul_func_uint8_t_u_u(((((safe_div_func_uint64_t_u_u(((p_2854->g_1912 <= ((safe_rshift_func_uint16_t_u_s(((p_32 , ((((p_2854->g_484[(l_41 + 2)] != ((((safe_mul_func_uint8_t_u_u(((((safe_sub_func_int64_t_s_s(((*p_2854->g_1708) | p_2854->g_1256), GROUP_DIVERGE(2, 1))) && l_2285) ^ p_32) ^ p_32), l_2286)) ^ FAKE_DIVERGE(p_2854->global_0_offset, get_global_id(0), 10)) || p_32) , p_2854->g_484[l_41])) , (*l_2182)) == l_2287) , (void*)0)) != (*l_2195)), 0)) == (**p_2854->g_178))) == p_32), p_2854->g_2125[1][2])) , 18446744073709551615UL) <= l_2288) <= p_32), (**p_2854->g_1608))))))), 13)) == 18446744073709551614UL) , (*l_2264))))) , &l_2217) == l_2289) == 1UL) >= 0x34L) , 0L);
                    if ((*l_2264))
                        continue;
                }
                if ((*p_2854->g_1618))
                    continue;
            }
            l_2318 &= ((&l_2287 != (((((**p_2854->g_178) = (safe_rshift_func_uint16_t_u_u((p_32 == (((l_2317 = (((safe_rshift_func_int8_t_s_u(((**p_2854->g_1608) = (((*p_2854->g_1170) <= ((*l_2296) = (safe_rshift_func_uint8_t_u_s(250UL, 7)))) == (safe_rshift_func_int16_t_s_s((*p_2854->g_716), 2)))), 5)) && (safe_mul_func_uint16_t_u_u((((*p_2854->g_1170) = (safe_div_func_int64_t_s_s(((*l_2316) = (((*l_2264) = ((**p_2854->g_1608) ^= ((safe_rshift_func_int16_t_s_s((safe_mod_func_int32_t_s_s(0x7E6B36FBL, (safe_rshift_func_uint16_t_u_s(((safe_mul_func_uint8_t_u_u((*p_2854->g_1170), p_32)) , ((((safe_div_func_int8_t_s_s(((~((void*)0 == l_2313)) < p_32), (**p_2854->g_1169))) ^ 0x13L) & p_32) , p_32)), (*p_2854->g_716))))), 1)) & p_32))) != p_32)), p_32))) >= p_32), p_32))) , (void*)0)) != &p_2854->g_1169) || p_2854->g_523)), 6))) != (*p_2854->g_716)) & 5UL) , (void*)0)) >= p_2854->g_36);
            for (l_43 = 0; (l_43 >= 1); l_43 = safe_add_func_uint8_t_u_u(l_43, 4))
            { /* block id: 1085 */
                int32_t *l_2321[1][8];
                int32_t **l_2322 = &p_2854->g_485;
                int i, j;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 8; j++)
                        l_2321[i][j] = &p_2854->g_4;
                }
                (*l_2322) = l_2321[0][1];
            }
        }
        else
        { /* block id: 1088 */
            int8_t *l_2331 = &p_2854->g_400;
            int32_t l_2343 = 0x1C8B8919L;
            int32_t **l_2386 = &p_2854->g_485;
            uint32_t l_2452[8][5][6] = {{{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L},{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L},{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L},{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L},{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L}},{{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L},{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L},{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L},{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L},{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L}},{{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L},{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L},{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L},{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L},{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L}},{{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L},{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L},{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L},{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L},{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L}},{{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L},{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L},{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L},{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L},{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L}},{{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L},{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L},{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L},{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L},{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L}},{{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L},{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L},{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L},{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L},{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L}},{{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L},{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L},{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L},{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L},{7UL,0x693E5A85L,4294967289UL,1UL,0x563E55B3L,0xCE436DB7L}}};
            uint32_t *l_2489 = &p_2854->g_23;
            int32_t l_2545 = 5L;
            int32_t l_2551 = 0x1B30BA28L;
            int32_t l_2557 = 0L;
            int32_t l_2559 = 0x371D3D77L;
            int32_t l_2560 = 8L;
            int32_t l_2564 = 0x271C356EL;
            int32_t l_2565[6][10] = {{(-9L),0x314E9EC9L,0x34157F29L,7L,0x43A79CAAL,7L,0x34157F29L,0x314E9EC9L,(-9L),0x3C5C11DEL},{(-9L),0x314E9EC9L,0x34157F29L,7L,0x43A79CAAL,7L,0x34157F29L,0x314E9EC9L,(-9L),0x3C5C11DEL},{(-9L),0x314E9EC9L,0x34157F29L,7L,0x43A79CAAL,7L,0x34157F29L,0x314E9EC9L,(-9L),0x3C5C11DEL},{(-9L),0x314E9EC9L,0x34157F29L,7L,0x43A79CAAL,7L,0x34157F29L,0x314E9EC9L,(-9L),0x3C5C11DEL},{(-9L),0x314E9EC9L,0x34157F29L,7L,0x43A79CAAL,7L,0x34157F29L,0x314E9EC9L,(-9L),0x3C5C11DEL},{(-9L),0x314E9EC9L,0x34157F29L,7L,0x43A79CAAL,7L,0x34157F29L,0x314E9EC9L,(-9L),0x3C5C11DEL}};
            int64_t l_2567 = 2L;
            int i, j, k;
            for (p_2854->g_1921 = 0; (p_2854->g_1921 == (-16)); p_2854->g_1921--)
            { /* block id: 1091 */
                if (p_32)
                    break;
            }
            for (l_2157 = 19; (l_2157 > (-26)); l_2157 = safe_sub_func_int16_t_s_s(l_2157, 8))
            { /* block id: 1096 */
                uint16_t l_2337 = 65535UL;
                int32_t l_2338 = 0x5A7C68EDL;
                l_2263[4] = func_78((((p_2854->g_523 = p_2854->g_1544[3]) , (((safe_unary_minus_func_int32_t_s(0L)) , l_2328) != ((safe_mul_func_uint8_t_u_u(((void*)0 == l_2331), 0x3BL)) , (void*)0))) , (((safe_mul_func_int16_t_s_s(((((safe_rshift_func_int16_t_s_u((0x1021L != (safe_unary_minus_func_int8_t_s(0x21L))), (*p_2854->g_179))) || p_32) , 3L) == l_2337), p_32)) <= 7L) < p_32)), p_2854->g_400, &l_346[0], p_32, p_2854);
                l_2338 ^= p_32;
            }
            for (p_2854->g_2078 = 15; (p_2854->g_2078 >= 27); p_2854->g_2078 = safe_add_func_int16_t_s_s(p_2854->g_2078, 5))
            { /* block id: 1103 */
                if (p_32)
                    break;
            }
            for (l_43 = 0; (l_43 >= (-5)); --l_43)
            { /* block id: 1108 */
                int32_t l_2358 = 0x687620AFL;
                int32_t l_2383 = 0x6F2A0DBBL;
                uint16_t ***l_2427 = &p_2854->g_178;
                uint32_t ***l_2450 = &p_2854->g_147;
                uint64_t *l_2464 = &l_34[1];
                int32_t l_2484 = 0x1ED5878FL;
                int32_t l_2544 = 0x7F085576L;
                int32_t l_2546 = 1L;
                int32_t l_2547 = 0x420DC86FL;
                int32_t l_2549 = (-7L);
                int32_t l_2550 = 0L;
                int32_t l_2552 = 0x2A66C2CCL;
                uint32_t l_2553 = 4294967293UL;
                int32_t l_2569[4];
                int i;
                for (i = 0; i < 4; i++)
                    l_2569[i] = 7L;
                (1 + 1);
            }
        }
    }
    return p_32;
}


/* ------------------------------------------ */
/* 
 * reads : p_2854->g_36 p_2854->g_1912 p_2854->g_646 p_2854->g_145 p_2854->g_716 p_2854->g_1786 p_2854->g_1554 p_2854->g_1169 p_2854->g_1170 p_2854->g_258 p_2854->g_830 p_2854->g_115 p_2854->g_400 p_2854->g_1708 p_2854->g_570 p_2854->g_576 p_2854->g_1544 p_2854->g_451 p_2854->g_132 p_2854->g_1608 p_2854->g_1609 p_2854->g_578 p_2854->g_484 p_2854->g_485 p_2854->g_1333 p_2854->g_23 p_2854->g_807 p_2854->g_808 p_2854->g_249 p_2854->g_2078 p_2854->g_964 p_2854->g_740 p_2854->g_4 p_2854->g_2125 p_2854->g_1594
 * writes: p_2854->g_1912 p_2854->g_485 p_2854->g_1594 p_2854->g_115 p_2854->g_1786 p_2854->g_737 p_2854->g_1965 p_2854->g_36 p_2854->g_570 p_2854->g_167 p_2854->g_1256 p_2854->g_1170 p_2854->g_1333 p_2854->g_145 p_2854->g_249 p_2854->g_740 p_2854->g_132 p_2854->g_258 p_2854->g_2125 p_2854->g_351
 */
uint32_t  func_58(int32_t  p_59, int32_t * p_60, uint32_t * p_61, struct S0 * p_2854)
{ /* block id: 936 */
    int32_t l_1906 = 0x4F39635BL;
    int32_t l_1907 = (-1L);
    int32_t l_1909 = 0L;
    int32_t l_1910[8] = {(-2L),(-9L),(-2L),(-2L),(-9L),(-2L),(-2L),(-9L)};
    int8_t l_1911 = 0x25L;
    int32_t **l_1915 = &p_2854->g_485;
    uint64_t l_1947 = 0xA27D93E042B9B6DFL;
    int32_t ***l_1963 = &p_2854->g_484[1];
    int16_t *l_1972 = (void*)0;
    int64_t *l_2004 = (void*)0;
    int32_t l_2021 = (-1L);
    int32_t ***l_2044 = &p_2854->g_887;
    int32_t ****l_2043 = &l_2044;
    int32_t *****l_2042 = &l_2043;
    uint32_t **l_2073 = (void*)0;
    uint32_t ***l_2072 = &l_2073;
    uint16_t *****l_2106 = (void*)0;
    int32_t l_2117[9] = {0x508DB27BL,0x508DB27BL,0x508DB27BL,0x508DB27BL,0x508DB27BL,0x508DB27BL,0x508DB27BL,0x508DB27BL,0x508DB27BL};
    int32_t *l_2144 = (void*)0;
    int32_t *l_2145 = (void*)0;
    int32_t *l_2146 = (void*)0;
    int32_t *l_2147 = &l_1909;
    int32_t *l_2148 = (void*)0;
    int32_t *l_2149 = &l_1907;
    int32_t *l_2150 = (void*)0;
    int32_t *l_2151 = &l_1909;
    int32_t *l_2152[7][1][8] = {{{&l_1909,&l_1909,&l_1909,&l_1909,&l_1909,&l_1909,&l_1909,&l_1909}},{{&l_1909,&l_1909,&l_1909,&l_1909,&l_1909,&l_1909,&l_1909,&l_1909}},{{&l_1909,&l_1909,&l_1909,&l_1909,&l_1909,&l_1909,&l_1909,&l_1909}},{{&l_1909,&l_1909,&l_1909,&l_1909,&l_1909,&l_1909,&l_1909,&l_1909}},{{&l_1909,&l_1909,&l_1909,&l_1909,&l_1909,&l_1909,&l_1909,&l_1909}},{{&l_1909,&l_1909,&l_1909,&l_1909,&l_1909,&l_1909,&l_1909,&l_1909}},{{&l_1909,&l_1909,&l_1909,&l_1909,&l_1909,&l_1909,&l_1909,&l_1909}}};
    int32_t l_2153 = (-10L);
    uint64_t l_2154 = 1UL;
    int i, j, k;
    if ((*p_60))
    { /* block id: 937 */
        int32_t *l_1905[8][9] = {{&p_2854->g_36,(void*)0,&p_2854->g_9,&p_2854->g_9,&p_2854->g_9,&p_2854->g_4,&p_2854->g_9,&p_2854->g_9,&p_2854->g_9},{&p_2854->g_36,(void*)0,&p_2854->g_9,&p_2854->g_9,&p_2854->g_9,&p_2854->g_4,&p_2854->g_9,&p_2854->g_9,&p_2854->g_9},{&p_2854->g_36,(void*)0,&p_2854->g_9,&p_2854->g_9,&p_2854->g_9,&p_2854->g_4,&p_2854->g_9,&p_2854->g_9,&p_2854->g_9},{&p_2854->g_36,(void*)0,&p_2854->g_9,&p_2854->g_9,&p_2854->g_9,&p_2854->g_4,&p_2854->g_9,&p_2854->g_9,&p_2854->g_9},{&p_2854->g_36,(void*)0,&p_2854->g_9,&p_2854->g_9,&p_2854->g_9,&p_2854->g_4,&p_2854->g_9,&p_2854->g_9,&p_2854->g_9},{&p_2854->g_36,(void*)0,&p_2854->g_9,&p_2854->g_9,&p_2854->g_9,&p_2854->g_4,&p_2854->g_9,&p_2854->g_9,&p_2854->g_9},{&p_2854->g_36,(void*)0,&p_2854->g_9,&p_2854->g_9,&p_2854->g_9,&p_2854->g_4,&p_2854->g_9,&p_2854->g_9,&p_2854->g_9},{&p_2854->g_36,(void*)0,&p_2854->g_9,&p_2854->g_9,&p_2854->g_9,&p_2854->g_4,&p_2854->g_9,&p_2854->g_9,&p_2854->g_9}};
        int i, j;
        p_2854->g_1912++;
        (*l_1915) = l_1905[2][1];
    }
    else
    { /* block id: 940 */
        int16_t l_1919 = 0x6DD0L;
        int32_t l_1920 = (-10L);
        uint16_t *l_1928 = (void*)0;
        uint16_t *l_1929 = &p_2854->g_115;
        int16_t *l_1930 = (void*)0;
        int16_t *l_1931 = &p_2854->g_1786;
        int32_t *l_1940 = &l_1907;
        int32_t *l_1941 = (void*)0;
        int32_t *l_1942 = &l_1910[5];
        int32_t l_1945[3];
        int32_t l_1946[8][10][1] = {{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}}};
        int8_t ***l_2013 = &p_2854->g_1608;
        int32_t l_2020 = 0x4EF753FAL;
        int32_t ******l_2045[5] = {&p_2854->g_1333,&p_2854->g_1333,&p_2854->g_1333,&p_2854->g_1333,&p_2854->g_1333};
        uint32_t *l_2062 = &p_2854->g_1965;
        int32_t l_2079 = (-10L);
        uint8_t ***l_2082 = (void*)0;
        uint32_t *l_2136 = &p_2854->g_351;
        uint32_t l_2137 = 0x9AB89B45L;
        int32_t *l_2142 = &l_1946[1][7][0];
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_1945[i] = 1L;
lbl_2080:
        for (p_2854->g_1594 = 2; (p_2854->g_1594 <= 7); p_2854->g_1594 += 1)
        { /* block id: 943 */
            int32_t *l_1916 = &l_1910[p_2854->g_1594];
            int32_t *l_1917 = &l_1910[0];
            int32_t *l_1918[2][10][9] = {{{&l_1910[4],&l_1910[p_2854->g_1594],&p_2854->g_9,&l_1909,&p_2854->g_9,&l_1909,&l_1910[6],&l_1910[6],&l_1910[p_2854->g_1594]},{&l_1910[4],&l_1910[p_2854->g_1594],&p_2854->g_9,&l_1909,&p_2854->g_9,&l_1909,&l_1910[6],&l_1910[6],&l_1910[p_2854->g_1594]},{&l_1910[4],&l_1910[p_2854->g_1594],&p_2854->g_9,&l_1909,&p_2854->g_9,&l_1909,&l_1910[6],&l_1910[6],&l_1910[p_2854->g_1594]},{&l_1910[4],&l_1910[p_2854->g_1594],&p_2854->g_9,&l_1909,&p_2854->g_9,&l_1909,&l_1910[6],&l_1910[6],&l_1910[p_2854->g_1594]},{&l_1910[4],&l_1910[p_2854->g_1594],&p_2854->g_9,&l_1909,&p_2854->g_9,&l_1909,&l_1910[6],&l_1910[6],&l_1910[p_2854->g_1594]},{&l_1910[4],&l_1910[p_2854->g_1594],&p_2854->g_9,&l_1909,&p_2854->g_9,&l_1909,&l_1910[6],&l_1910[6],&l_1910[p_2854->g_1594]},{&l_1910[4],&l_1910[p_2854->g_1594],&p_2854->g_9,&l_1909,&p_2854->g_9,&l_1909,&l_1910[6],&l_1910[6],&l_1910[p_2854->g_1594]},{&l_1910[4],&l_1910[p_2854->g_1594],&p_2854->g_9,&l_1909,&p_2854->g_9,&l_1909,&l_1910[6],&l_1910[6],&l_1910[p_2854->g_1594]},{&l_1910[4],&l_1910[p_2854->g_1594],&p_2854->g_9,&l_1909,&p_2854->g_9,&l_1909,&l_1910[6],&l_1910[6],&l_1910[p_2854->g_1594]},{&l_1910[4],&l_1910[p_2854->g_1594],&p_2854->g_9,&l_1909,&p_2854->g_9,&l_1909,&l_1910[6],&l_1910[6],&l_1910[p_2854->g_1594]}},{{&l_1910[4],&l_1910[p_2854->g_1594],&p_2854->g_9,&l_1909,&p_2854->g_9,&l_1909,&l_1910[6],&l_1910[6],&l_1910[p_2854->g_1594]},{&l_1910[4],&l_1910[p_2854->g_1594],&p_2854->g_9,&l_1909,&p_2854->g_9,&l_1909,&l_1910[6],&l_1910[6],&l_1910[p_2854->g_1594]},{&l_1910[4],&l_1910[p_2854->g_1594],&p_2854->g_9,&l_1909,&p_2854->g_9,&l_1909,&l_1910[6],&l_1910[6],&l_1910[p_2854->g_1594]},{&l_1910[4],&l_1910[p_2854->g_1594],&p_2854->g_9,&l_1909,&p_2854->g_9,&l_1909,&l_1910[6],&l_1910[6],&l_1910[p_2854->g_1594]},{&l_1910[4],&l_1910[p_2854->g_1594],&p_2854->g_9,&l_1909,&p_2854->g_9,&l_1909,&l_1910[6],&l_1910[6],&l_1910[p_2854->g_1594]},{&l_1910[4],&l_1910[p_2854->g_1594],&p_2854->g_9,&l_1909,&p_2854->g_9,&l_1909,&l_1910[6],&l_1910[6],&l_1910[p_2854->g_1594]},{&l_1910[4],&l_1910[p_2854->g_1594],&p_2854->g_9,&l_1909,&p_2854->g_9,&l_1909,&l_1910[6],&l_1910[6],&l_1910[p_2854->g_1594]},{&l_1910[4],&l_1910[p_2854->g_1594],&p_2854->g_9,&l_1909,&p_2854->g_9,&l_1909,&l_1910[6],&l_1910[6],&l_1910[p_2854->g_1594]},{&l_1910[4],&l_1910[p_2854->g_1594],&p_2854->g_9,&l_1909,&p_2854->g_9,&l_1909,&l_1910[6],&l_1910[6],&l_1910[p_2854->g_1594]},{&l_1910[4],&l_1910[p_2854->g_1594],&p_2854->g_9,&l_1909,&p_2854->g_9,&l_1909,&l_1910[6],&l_1910[6],&l_1910[p_2854->g_1594]}}};
            int16_t l_1922[5][2][6] = {{{(-3L),(-3L),(-9L),0L,(-7L),0x5380L},{(-3L),(-3L),(-9L),0L,(-7L),0x5380L}},{{(-3L),(-3L),(-9L),0L,(-7L),0x5380L},{(-3L),(-3L),(-9L),0L,(-7L),0x5380L}},{{(-3L),(-3L),(-9L),0L,(-7L),0x5380L},{(-3L),(-3L),(-9L),0L,(-7L),0x5380L}},{{(-3L),(-3L),(-9L),0L,(-7L),0x5380L},{(-3L),(-3L),(-9L),0L,(-7L),0x5380L}},{{(-3L),(-3L),(-9L),0L,(-7L),0x5380L},{(-3L),(-3L),(-9L),0L,(-7L),0x5380L}}};
            uint32_t l_1923 = 0UL;
            int i, j, k;
            ++l_1923;
        }
        if (((((*p_2854->g_646) | p_2854->g_145) | ((((((safe_add_func_uint32_t_u_u(FAKE_DIVERGE(p_2854->local_0_offset, get_local_id(0), 10), (((*l_1929) = l_1919) & ((*l_1931) &= (*p_2854->g_716))))) > ((*p_2854->g_1554) != 65535UL)) < (**p_2854->g_1169)) , ((*l_1942) = (((*l_1940) = (safe_sub_func_int32_t_s_s((l_1919 == ((safe_add_func_uint16_t_u_u(((*l_1929) &= ((safe_mod_func_int16_t_s_s(((*l_1931) ^= (safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), (p_2854->g_830 , (*p_2854->g_1170))))), p_59)) , l_1920)), (*p_2854->g_716))) < l_1919)), p_2854->g_400))) > 0x38DDC2D8L))) >= 0x89BA0032L) && (*p_60))) < (*p_2854->g_1708)))
        { /* block id: 952 */
            int32_t *l_1943 = (void*)0;
            int32_t *l_1944[8] = {&l_1910[3],&l_1910[3],&l_1910[3],&l_1910[3],&l_1910[3],&l_1910[3],&l_1910[3],&l_1910[3]};
            int32_t l_2003 = 0x31C21D01L;
            int i;
            l_1947--;
            if ((FAKE_DIVERGE(p_2854->group_0_offset, get_group_id(0), 10) && (*p_2854->g_716)))
            { /* block id: 954 */
                uint16_t l_1950[7];
                int32_t ***l_1962 = &p_2854->g_484[8];
                int32_t ****l_1961[6][5] = {{(void*)0,&l_1962,(void*)0,&l_1962,(void*)0},{(void*)0,&l_1962,(void*)0,&l_1962,(void*)0},{(void*)0,&l_1962,(void*)0,&l_1962,(void*)0},{(void*)0,&l_1962,(void*)0,&l_1962,(void*)0},{(void*)0,&l_1962,(void*)0,&l_1962,(void*)0},{(void*)0,&l_1962,(void*)0,&l_1962,(void*)0}};
                uint32_t *l_1964 = &p_2854->g_1965;
                int i, j;
                for (i = 0; i < 7; i++)
                    l_1950[i] = 0UL;
                l_1950[4] &= (*p_2854->g_646);
                (*p_60) = (safe_div_func_uint8_t_u_u((safe_mod_func_uint64_t_u_u(p_2854->g_576, p_59)), (((FAKE_DIVERGE(p_2854->local_2_offset, get_local_id(2), 10) | (!(((*l_1964) = (p_2854->g_737[1][5][2] = ((((!l_1950[4]) != ((safe_rshift_func_uint8_t_u_s(GROUP_DIVERGE(2, 1), 1)) , l_1950[4])) > ((((((safe_div_func_int8_t_s_s((~((p_2854->g_1544[3] , (safe_lshift_func_int16_t_s_s((((p_59 , l_1950[4]) & (((-1L) & ((l_1963 = &l_1915) != &l_1915)) <= p_2854->g_451[4][2][4])) & (**p_2854->g_1169)), 3))) ^ (*p_2854->g_1554))), p_59)) == 2UL) < 0x029CBC21L) > (*p_2854->g_1708)) >= 0x8475761AC7EB2367L) < 0L)) <= p_59))) , p_59))) >= (*p_60)) | p_59)));
                (*l_1915) = (((p_59 , (*l_1942)) , p_2854->g_1544[5]) , p_60);
                if ((((*p_2854->g_1554) > (((*p_2854->g_1708) = ((-1L) >= p_2854->g_132)) == (0L > ((p_59 == (FAKE_DIVERGE(p_2854->group_1_offset, get_group_id(1), 10) != ((**p_2854->g_1608) >= 0xBDL))) > (p_59 == (l_1972 != &p_2854->g_145)))))) == 0x262954F6L))
                { /* block id: 962 */
                    return p_2854->g_578;
                }
                else
                { /* block id: 964 */
                    uint64_t *l_1999 = &p_2854->g_167;
                    uint64_t *l_2000[8][3] = {{(void*)0,&l_1947,&l_1947},{(void*)0,&l_1947,&l_1947},{(void*)0,&l_1947,&l_1947},{(void*)0,&l_1947,&l_1947},{(void*)0,&l_1947,&l_1947},{(void*)0,&l_1947,&l_1947},{(void*)0,&l_1947,&l_1947},{(void*)0,&l_1947,&l_1947}};
                    int32_t l_2001[8] = {(-7L),0x31220059L,(-7L),(-7L),0x31220059L,(-7L),(-7L),0x31220059L};
                    uint8_t l_2002 = 0x9DL;
                    int i, j;
                    (*p_60) = (~(safe_add_func_uint16_t_u_u((!(((((safe_lshift_func_uint16_t_u_s(((safe_rshift_func_int8_t_s_s(((safe_mod_func_uint32_t_u_u(((safe_sub_func_uint64_t_u_u((***l_1962), (safe_mul_func_uint16_t_u_u((safe_sub_func_int16_t_s_s((*p_2854->g_1554), p_59)), (p_59 , (*p_2854->g_716)))))) < (((((safe_add_func_int8_t_s_s((~(((safe_lshift_func_uint8_t_u_u(((safe_rshift_func_int16_t_s_s(0L, ((safe_div_func_int8_t_s_s((safe_mod_func_uint64_t_u_u((p_2854->g_1256 = (((*p_2854->g_1708) > (!((*l_1999) = (safe_mul_func_uint16_t_u_u((((0xB774L && (*p_2854->g_1554)) || (**l_1915)) || (*p_2854->g_1554)), p_59))))) | 1L)), l_2001[0])), (**p_2854->g_1169))) , p_59))) == (*p_60)), 7)) && 5UL) ^ p_59)), l_2002)) > (*p_2854->g_1708)) != (-6L)) > 0xB6L) < 4L)), l_2003)) , (**p_2854->g_1608)), 2)) ^ 0x513AA7A400155102L), 9)) , p_59) , l_2004) == l_2004) & (**p_2854->g_1169))), FAKE_DIVERGE(p_2854->group_0_offset, get_group_id(0), 10))));
                }
            }
            else
            { /* block id: 969 */
                return p_59;
            }
        }
        else
        { /* block id: 972 */
            int16_t *l_2014 = (void*)0;
            int32_t l_2015 = (-1L);
            (*l_1942) = (((safe_lshift_func_int16_t_s_s((((safe_lshift_func_uint8_t_u_u(((FAKE_DIVERGE(p_2854->group_1_offset, get_group_id(1), 10) > (((safe_mul_func_int8_t_s_s((p_59 == ((safe_rshift_func_int16_t_s_u((l_2015 = (l_2013 == (((l_1972 != l_2014) == (*p_2854->g_1708)) , l_2013))), 15)) && (safe_mod_func_uint8_t_u_u((safe_div_func_int16_t_s_s((p_59 == ((((*p_2854->g_1169) = (*p_2854->g_1169)) != (void*)0) , p_2854->g_1544[3])), p_59)), p_59)))), l_2020)) || l_2015) & p_59)) & p_59), (*l_1940))) < l_2021) > (*l_1942)), p_59)) , p_59) & p_59);
            (**l_1963) = &l_1946[5][6][0];
            for (p_2854->g_115 = 0; (p_2854->g_115 == 10); p_2854->g_115 = safe_add_func_uint32_t_u_u(p_2854->g_115, 1))
            { /* block id: 979 */
                return p_59;
            }
            (*l_1915) = p_61;
        }
        if ((safe_sub_func_uint64_t_u_u(p_59, (safe_mod_func_int64_t_s_s((safe_add_func_uint32_t_u_u((((((*p_2854->g_716) = (safe_mod_func_uint16_t_u_u(((safe_lshift_func_uint16_t_u_s(p_59, (((((safe_mul_func_uint8_t_u_u((safe_sub_func_int64_t_s_s(((**p_2854->g_1608) == p_59), ((((void*)0 == &l_1911) != (((p_59 ^ (safe_rshift_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_u((l_2042 != (p_2854->g_1333 = p_2854->g_1333)), (**p_2854->g_1169))), 7))) , (void*)0) == &p_2854->g_451[9][2][1])) & p_2854->g_23))), (**p_2854->g_1169))) != (-1L)) & p_59) , p_59) , (-6L)))) , p_59), 0xF977L))) , (*p_2854->g_807)) == (void*)0) , 9UL), (*p_60))), (*p_2854->g_1708))))))
        { /* block id: 986 */
            int64_t l_2048[2][7][3] = {{{0L,0L,0x32B03D58A4AD72E2L},{0L,0L,0x32B03D58A4AD72E2L},{0L,0L,0x32B03D58A4AD72E2L},{0L,0L,0x32B03D58A4AD72E2L},{0L,0L,0x32B03D58A4AD72E2L},{0L,0L,0x32B03D58A4AD72E2L},{0L,0L,0x32B03D58A4AD72E2L}},{{0L,0L,0x32B03D58A4AD72E2L},{0L,0L,0x32B03D58A4AD72E2L},{0L,0L,0x32B03D58A4AD72E2L},{0L,0L,0x32B03D58A4AD72E2L},{0L,0L,0x32B03D58A4AD72E2L},{0L,0L,0x32B03D58A4AD72E2L},{0L,0L,0x32B03D58A4AD72E2L}}};
            uint64_t *l_2051 = (void*)0;
            uint64_t *l_2052 = &p_2854->g_249;
            int32_t ****l_2057[7][10][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
            int32_t *****l_2058 = (void*)0;
            int32_t *****l_2059 = &l_2057[0][4][1];
            uint32_t *l_2061 = &p_2854->g_737[3][5][6];
            uint32_t **l_2060[8][10][3] = {{{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061}},{{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061}},{{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061}},{{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061}},{{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061}},{{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061}},{{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061}},{{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061},{&l_2061,&l_2061,&l_2061}}};
            int i, j, k;
            (*p_60) &= (safe_mul_func_uint16_t_u_u((l_2048[1][0][2] < 0x10085843D7D1579EL), ((safe_mod_func_int8_t_s_s((((*l_2052)++) < p_59), ((((((((safe_rshift_func_uint16_t_u_s(((((*l_2059) = l_2057[1][2][0]) == &l_1963) , (*l_1942)), 5)) , (((((*p_2854->g_1554) = ((*l_1931) |= ((l_2062 = p_61) == (void*)0))) < ((safe_mod_func_uint64_t_u_u(GROUP_DIVERGE(0, 1), (((safe_lshift_func_uint8_t_u_s(((((*l_1929) ^= (+p_59)) , 1L) , (*p_2854->g_1170)), 6)) >= p_59) && 0x66F017B851E10200L))) == 1UL)) | FAKE_DIVERGE(p_2854->group_1_offset, get_group_id(1), 10)) > p_59)) >= p_59) <= (*l_1940)) != (*l_1940)) != p_59) >= 0xCFL) ^ 0x58ECL))) >= p_59)));
        }
        else
        { /* block id: 994 */
            int16_t l_2071[8][4] = {{0x5D18L,8L,0x5D18L,0x5D18L},{0x5D18L,8L,0x5D18L,0x5D18L},{0x5D18L,8L,0x5D18L,0x5D18L},{0x5D18L,8L,0x5D18L,0x5D18L},{0x5D18L,8L,0x5D18L,0x5D18L},{0x5D18L,8L,0x5D18L,0x5D18L},{0x5D18L,8L,0x5D18L,0x5D18L},{0x5D18L,8L,0x5D18L,0x5D18L}};
            int32_t *l_2085 = (void*)0;
            int32_t l_2119 = (-3L);
            int32_t l_2120 = 0L;
            int32_t l_2123 = 0x10BC4DB8L;
            int32_t l_2124 = (-1L);
            int8_t l_2133[7][1] = {{4L},{4L},{4L},{4L},{4L},{4L},{4L}};
            int i, j;
            (*l_1942) |= (safe_rshift_func_uint16_t_u_u(((*l_1940) , 9UL), p_59));
            if (((*p_60) &= 0x04DF7A92L))
            { /* block id: 997 */
                uint32_t l_2083 = 4294967295UL;
                int32_t **l_2084[6] = {&p_2854->g_485,&p_2854->g_485,&p_2854->g_485,&p_2854->g_485,&p_2854->g_485,&p_2854->g_485};
                uint8_t ***l_2095[3];
                uint64_t l_2098 = 0x9E0763305BF0C42BL;
                uint16_t *****l_2107 = &p_2854->g_873[4][2][0];
                int i;
                for (i = 0; i < 3; i++)
                    l_2095[i] = &p_2854->g_1169;
                if (((*p_2854->g_1708) != ((((p_59 > (safe_mul_func_uint16_t_u_u(l_2071[1][0], (l_2072 == (void*)0)))) || ((6UL > p_59) != ((0x52FCFA09L >= (safe_rshift_func_uint8_t_u_s((((safe_add_func_uint8_t_u_u(p_2854->g_2078, 0x00L)) < p_59) && 7UL), (**p_2854->g_1608)))) <= l_2079))) , (*p_2854->g_964)) , 9UL)))
                { /* block id: 998 */
                    if (p_2854->g_578)
                        goto lbl_2080;
                }
                else
                { /* block id: 1000 */
                    int32_t l_2081 = 0x12F48CF4L;
                    uint32_t *l_2086 = &p_2854->g_740;
                    int32_t l_2103 = 0x1F1EF6BDL;
                    int8_t l_2121 = 0x2FL;
                    l_2085 = (((l_2081 , ((void*)0 != l_2082)) <= 0xAB6DL) , func_78(((void*)0 != &p_2854->g_309[0][0][4]), l_2083, l_2084[1], ((l_2071[1][0] & l_2071[1][0]) , l_2071[1][0]), p_2854));
                    (*p_60) = (((*l_2086)++) || (safe_mul_func_int8_t_s_s(((**p_2854->g_1608) ^= (safe_rshift_func_uint16_t_u_u(((*l_2085) > p_59), p_59))), (((safe_div_func_int32_t_s_s(((*l_1940) &= ((((l_2095[0] != (void*)0) | ((**p_2854->g_1169) = (((safe_div_func_int32_t_s_s((*l_2085), (*p_60))) < (((void*)0 == &p_2854->g_1786) ^ (*p_2854->g_1708))) != l_2098))) <= 0x6A5EL) < p_2854->g_4)), p_59)) , l_2081) >= FAKE_DIVERGE(p_2854->local_2_offset, get_local_id(2), 10)))));
                    if (((safe_mul_func_int16_t_s_s((l_2081 = 0x399DL), (safe_rshift_func_uint16_t_u_s((l_2103 &= GROUP_DIVERGE(0, 1)), ((safe_lshift_func_uint16_t_u_u(1UL, (251UL || (l_2106 != l_2107)))) | (*l_2085)))))) < (*l_2085)))
                    { /* block id: 1009 */
                        int32_t l_2110 = (-10L);
                        (*p_60) = (safe_add_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), 0x574BL));
                        (*l_1940) ^= ((((p_59 , (-2L)) <= p_59) & l_2110) | (safe_sub_func_int8_t_s_s((((**p_2854->g_1608) = l_2110) & (safe_add_func_int16_t_s_s((*p_2854->g_716), (l_2110 || ((safe_sub_func_uint32_t_u_u((((GROUP_DIVERGE(1, 1) || ((FAKE_DIVERGE(p_2854->global_1_offset, get_global_id(1), 10) <= p_59) != p_59)) , l_2117[4]) < (*l_1942)), p_59)) == p_59))))), 0x4DL)));
                        (*p_60) = (*p_60);
                        (*l_1915) = p_60;
                    }
                    else
                    { /* block id: 1015 */
                        int8_t l_2118[4][5][1];
                        int32_t l_2122[10] = {0L,0L,0L,0L,0L,0L,0L,0L,0L,0L};
                        int i, j, k;
                        for (i = 0; i < 4; i++)
                        {
                            for (j = 0; j < 5; j++)
                            {
                                for (k = 0; k < 1; k++)
                                    l_2118[i][j][k] = (-1L);
                            }
                        }
                        --p_2854->g_2125[1][2];
                    }
                }
            }
            else
            { /* block id: 1019 */
                int32_t l_2132 = 8L;
                (*l_1942) = ((0UL <= (safe_add_func_uint8_t_u_u(253UL, ((safe_lshift_func_int8_t_s_u(((((**p_2854->g_1608) != (*l_1940)) & 0x3A7F7B843D4B9452L) < (((p_59 ^ l_2132) ^ p_59) , (0x4AL || p_59))), p_59)) , (*p_2854->g_1170))))) & 0x2B74L);
            }
            l_2133[6][0] = (*p_60);
        }
        (*l_2142) ^= (p_59 & (safe_rshift_func_int16_t_s_s((((((((*l_1940) > (*p_2854->g_1170)) & p_59) || (((*l_2136) = (((*l_1929) |= GROUP_DIVERGE(0, 1)) && (~(-10L)))) & (*p_2854->g_964))) , l_2137) < ((*p_2854->g_1554) = (p_2854->g_2078 >= (safe_add_func_uint16_t_u_u((safe_rshift_func_int8_t_s_s(p_59, p_59)), p_59))))) > p_59), (*l_1942))));
    }
    --l_2154;
    return p_59;
}


/* ------------------------------------------ */
/* 
 * reads : p_2854->g_830 p_2854->g_1170 p_2854->g_258 p_2854->g_351 p_2854->g_964 p_2854->g_36 p_2854->g_740 p_2854->g_1708 p_2854->g_570
 * writes: p_2854->g_830 p_2854->g_351 p_2854->g_570
 */
uint32_t * func_62(uint64_t  p_63, int64_t  p_64, int32_t * p_65, uint32_t * p_66, int64_t  p_67, struct S0 * p_2854)
{ /* block id: 789 */
    int8_t l_1596[8][5] = {{0L,(-1L),0L,0x7FL,(-1L)},{0L,(-1L),0L,0x7FL,(-1L)},{0L,(-1L),0L,0x7FL,(-1L)},{0L,(-1L),0L,0x7FL,(-1L)},{0L,(-1L),0L,0x7FL,(-1L)},{0L,(-1L),0L,0x7FL,(-1L)},{0L,(-1L),0L,0x7FL,(-1L)},{0L,(-1L),0L,0x7FL,(-1L)}};
    int32_t l_1600 = 0x6A7E0B80L;
    int32_t l_1639 = 1L;
    int32_t l_1643 = 0x7585BE6EL;
    int32_t l_1649 = 0x22A63C4FL;
    int32_t l_1651 = 0x1C48FEC7L;
    int32_t l_1653 = (-1L);
    int32_t l_1654 = 0x033B89F1L;
    int32_t l_1655 = 0x54C62401L;
    int32_t l_1657 = (-1L);
    int32_t l_1658 = 0L;
    int32_t l_1659 = 7L;
    int32_t l_1660 = 0x43D34144L;
    uint8_t l_1661 = 0x28L;
    int32_t **l_1678[10] = {&p_2854->g_888,&p_2854->g_888,&p_2854->g_888,&p_2854->g_888,&p_2854->g_888,&p_2854->g_888,&p_2854->g_888,&p_2854->g_888,&p_2854->g_888,&p_2854->g_888};
    int16_t *l_1703 = (void*)0;
    int32_t l_1719 = (-1L);
    int32_t l_1750 = 0x3FA1488BL;
    uint8_t **l_1784 = &p_2854->g_1170;
    int32_t **l_1788[1][9][6] = {{{&p_2854->g_122[0],&p_2854->g_122[0],&p_2854->g_122[0],&p_2854->g_122[0],&p_2854->g_122[4],&p_2854->g_485},{&p_2854->g_122[0],&p_2854->g_122[0],&p_2854->g_122[0],&p_2854->g_122[0],&p_2854->g_122[4],&p_2854->g_485},{&p_2854->g_122[0],&p_2854->g_122[0],&p_2854->g_122[0],&p_2854->g_122[0],&p_2854->g_122[4],&p_2854->g_485},{&p_2854->g_122[0],&p_2854->g_122[0],&p_2854->g_122[0],&p_2854->g_122[0],&p_2854->g_122[4],&p_2854->g_485},{&p_2854->g_122[0],&p_2854->g_122[0],&p_2854->g_122[0],&p_2854->g_122[0],&p_2854->g_122[4],&p_2854->g_485},{&p_2854->g_122[0],&p_2854->g_122[0],&p_2854->g_122[0],&p_2854->g_122[0],&p_2854->g_122[4],&p_2854->g_485},{&p_2854->g_122[0],&p_2854->g_122[0],&p_2854->g_122[0],&p_2854->g_122[0],&p_2854->g_122[4],&p_2854->g_485},{&p_2854->g_122[0],&p_2854->g_122[0],&p_2854->g_122[0],&p_2854->g_122[0],&p_2854->g_122[4],&p_2854->g_485},{&p_2854->g_122[0],&p_2854->g_122[0],&p_2854->g_122[0],&p_2854->g_122[0],&p_2854->g_122[4],&p_2854->g_485}}};
    uint32_t *l_1795 = &p_2854->g_23;
    int32_t **l_1796 = (void*)0;
    int32_t *l_1797[7][5];
    uint16_t l_1798 = 0x62A6L;
    int8_t l_1874 = 3L;
    uint64_t *l_1889 = &p_2854->g_249;
    int32_t *l_1903 = &l_1660;
    int i, j, k;
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 5; j++)
            l_1797[i][j] = &l_1655;
    }
    for (p_2854->g_830 = 20; (p_2854->g_830 != (-18)); p_2854->g_830--)
    { /* block id: 792 */
        uint32_t l_1581 = 0xDDD8BD6AL;
        uint16_t *l_1588 = (void*)0;
        uint16_t *l_1589 = &p_2854->g_115;
        int64_t *l_1590 = &p_2854->g_341;
        int64_t *l_1591 = (void*)0;
        int64_t *l_1592 = &p_2854->g_570;
        uint8_t *l_1593[10] = {&p_2854->g_1594,&p_2854->g_1594,&p_2854->g_1594,&p_2854->g_1594,&p_2854->g_1594,&p_2854->g_1594,&p_2854->g_1594,&p_2854->g_1594,&p_2854->g_1594,&p_2854->g_1594};
        int32_t l_1595[2];
        int8_t **l_1604 = (void*)0;
        uint16_t ***l_1675 = &p_2854->g_178;
        int32_t **l_1686 = &p_2854->g_122[0];
        uint32_t *l_1689 = (void*)0;
        int32_t ***l_1787[2];
        int i;
        for (i = 0; i < 2; i++)
            l_1595[i] = 0x3766DD4BL;
        for (i = 0; i < 2; i++)
            l_1787[i] = &p_2854->g_484[2];
        (1 + 1);
    }
    (*p_65) |= ((safe_mod_func_uint8_t_u_u((p_67 | (safe_rshift_func_uint16_t_u_u(((safe_sub_func_uint64_t_u_u((safe_add_func_int16_t_s_s((safe_add_func_uint32_t_u_u((p_2854->g_351 |= (safe_rshift_func_uint8_t_u_s((*p_2854->g_1170), ((void*)0 == l_1889)))), (safe_mod_func_uint64_t_u_u(((safe_add_func_uint32_t_u_u(p_67, (*p_2854->g_964))) , (safe_rshift_func_uint16_t_u_u(p_64, 6))), (safe_mod_func_uint32_t_u_u(p_2854->g_740, ((safe_lshift_func_uint16_t_u_u(0xAFC6L, 8)) ^ (*p_2854->g_1708)))))))), 4UL)), GROUP_DIVERGE(2, 1))) <= 255UL), p_67))), p_64)) || (-1L));
    for (p_2854->g_570 = 20; (p_2854->g_570 <= 6); p_2854->g_570 = safe_sub_func_uint8_t_u_u(p_2854->g_570, 9))
    { /* block id: 930 */
        uint64_t l_1902 = 0xD1DEC18AAC98BBC4L;
        if (l_1902)
            break;
    }
    l_1903 = p_66;
    return l_1903;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint64_t  func_72(int8_t  p_73, int16_t  p_74, struct S0 * p_2854)
{ /* block id: 785 */
    uint16_t l_1559 = 0x4D45L;
    --l_1559;
    return l_1559;
}


/* ------------------------------------------ */
/* 
 * reads : p_2854->g_178 p_2854->g_179 p_2854->g_249 p_2854->g_145 p_2854->g_49 p_2854->g_485 p_2854->g_9 p_2854->g_132 p_2854->g_341 p_2854->g_115 p_2854->g_167 p_2854->g_400 p_2854->g_258 p_2854->g_451 p_2854->g_551 p_2854->g_570 p_2854->g_14 p_2854->g_146 p_2854->g_147 p_2854->g_578 p_2854->g_523 p_2854->g_453 p_2854->g_646 p_2854->g_36 p_2854->g_751 p_2854->g_716 p_2854->g_23 p_2854->g_351 p_2854->g_805 p_2854->g_807 p_2854->g_737 p_2854->g_851 p_2854->g_830 p_2854->g_878 p_2854->g_887 p_2854->g_740 p_2854->g_2 p_2854->g_964 p_2854->g_3 p_2854->g_1169 p_2854->g_1170 p_2854->g_1256 p_2854->g_4 p_2854->g_576 p_2854->g_808 p_2854->g_1329 p_2854->g_1333
 * writes: p_2854->g_115 p_2854->g_145 p_2854->g_258 p_2854->g_451 p_2854->g_523 p_2854->g_132 p_2854->g_341 p_2854->g_551 p_2854->g_249 p_2854->g_578 p_2854->g_716 p_2854->g_485 p_2854->g_807 p_2854->g_36 p_2854->g_851 p_2854->g_167 p_2854->g_872 p_2854->g_878 p_2854->g_887 p_2854->g_179 p_2854->g_453 p_2854->g_1074 p_2854->g_740 p_2854->g_400 p_2854->g_962 p_2854->g_1169 p_2854->g_1170 p_2854->g_351 p_2854->g_3 p_2854->g_1554
 */
uint32_t * func_75(uint32_t * p_76, int32_t ** p_77, struct S0 * p_2854)
{ /* block id: 261 */
    int8_t *l_487[3][8] = {{&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132}};
    int8_t **l_486 = &l_487[2][1];
    int8_t *l_489 = &p_2854->g_132;
    int8_t **l_488 = &l_489;
    int32_t l_492 = 0L;
    int32_t l_497 = 0x65383A0AL;
    int16_t *l_506 = &p_2854->g_145;
    int32_t l_507 = 0x7A9FB95CL;
    int64_t l_508 = 0x6D5236CECE008DADL;
    uint8_t *l_509 = &p_2854->g_258;
    int32_t l_541 = 1L;
    uint32_t *l_545 = &p_2854->g_23;
    int8_t l_549 = 1L;
    int32_t l_550[4];
    uint64_t l_610 = 0xF873658DC2A1A3E3L;
    int16_t l_613 = 0x6A1BL;
    int32_t *l_659 = &p_2854->g_453;
    int32_t **l_658 = &l_659;
    int32_t ***l_657 = &l_658;
    int16_t l_793 = (-1L);
    uint16_t ****l_837 = &p_2854->g_439;
    uint16_t ****l_839 = (void*)0;
    uint32_t l_881 = 4294967295UL;
    int64_t l_903 = 0L;
    uint8_t l_947 = 0xECL;
    int32_t l_978 = 2L;
    int64_t *l_1157 = &p_2854->g_851;
    int32_t l_1187 = (-9L);
    uint32_t l_1191[8][5][1] = {{{0xDA0E27CDL},{0xDA0E27CDL},{0xDA0E27CDL},{0xDA0E27CDL},{0xDA0E27CDL}},{{0xDA0E27CDL},{0xDA0E27CDL},{0xDA0E27CDL},{0xDA0E27CDL},{0xDA0E27CDL}},{{0xDA0E27CDL},{0xDA0E27CDL},{0xDA0E27CDL},{0xDA0E27CDL},{0xDA0E27CDL}},{{0xDA0E27CDL},{0xDA0E27CDL},{0xDA0E27CDL},{0xDA0E27CDL},{0xDA0E27CDL}},{{0xDA0E27CDL},{0xDA0E27CDL},{0xDA0E27CDL},{0xDA0E27CDL},{0xDA0E27CDL}},{{0xDA0E27CDL},{0xDA0E27CDL},{0xDA0E27CDL},{0xDA0E27CDL},{0xDA0E27CDL}},{{0xDA0E27CDL},{0xDA0E27CDL},{0xDA0E27CDL},{0xDA0E27CDL},{0xDA0E27CDL}},{{0xDA0E27CDL},{0xDA0E27CDL},{0xDA0E27CDL},{0xDA0E27CDL},{0xDA0E27CDL}}};
    int32_t l_1206 = 0x5DF7632FL;
    uint64_t l_1290[7][8] = {{0xA3639BE350108F8DL,18446744073709551609UL,9UL,0x02380B69A63C3010L,0x7188CC877873DF75L,0x323D88FCC384FCA9L,0x4C5F923D761E2D35L,9UL},{0xA3639BE350108F8DL,18446744073709551609UL,9UL,0x02380B69A63C3010L,0x7188CC877873DF75L,0x323D88FCC384FCA9L,0x4C5F923D761E2D35L,9UL},{0xA3639BE350108F8DL,18446744073709551609UL,9UL,0x02380B69A63C3010L,0x7188CC877873DF75L,0x323D88FCC384FCA9L,0x4C5F923D761E2D35L,9UL},{0xA3639BE350108F8DL,18446744073709551609UL,9UL,0x02380B69A63C3010L,0x7188CC877873DF75L,0x323D88FCC384FCA9L,0x4C5F923D761E2D35L,9UL},{0xA3639BE350108F8DL,18446744073709551609UL,9UL,0x02380B69A63C3010L,0x7188CC877873DF75L,0x323D88FCC384FCA9L,0x4C5F923D761E2D35L,9UL},{0xA3639BE350108F8DL,18446744073709551609UL,9UL,0x02380B69A63C3010L,0x7188CC877873DF75L,0x323D88FCC384FCA9L,0x4C5F923D761E2D35L,9UL},{0xA3639BE350108F8DL,18446744073709551609UL,9UL,0x02380B69A63C3010L,0x7188CC877873DF75L,0x323D88FCC384FCA9L,0x4C5F923D761E2D35L,9UL}};
    uint32_t l_1313 = 0UL;
    uint32_t l_1318[9] = {3UL,3UL,3UL,3UL,3UL,3UL,3UL,3UL,3UL};
    int32_t *l_1331 = &l_550[1];
    int32_t *l_1332[5] = {&l_507,&l_507,&l_507,&l_507,&l_507};
    int64_t l_1356 = 0x7815C7AB7C8429A9L;
    int32_t l_1357[6];
    int32_t l_1364 = 0x3D733630L;
    int32_t l_1366 = 0x2F3C67CFL;
    uint64_t l_1367 = 18446744073709551609UL;
    int8_t l_1452 = (-10L);
    int16_t l_1546 = 0x3BF4L;
    int16_t **l_1552 = &p_2854->g_716;
    int16_t **l_1553[1];
    int8_t l_1555 = 0L;
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_550[i] = (-3L);
    for (i = 0; i < 6; i++)
        l_1357[i] = 0x00DE8D02L;
    for (i = 0; i < 1; i++)
        l_1553[i] = &l_506;
    if ((((*l_509) = (((*l_488) = ((*l_486) = &p_2854->g_132)) == (((safe_div_func_int64_t_s_s((((**p_2854->g_178) = l_492) ^ ((safe_div_func_int32_t_s_s((safe_mul_func_uint16_t_u_u((l_497 |= l_492), (safe_sub_func_int64_t_s_s((+((((l_507 = ((l_492 > (safe_add_func_int8_t_s_s((((*l_506) ^= ((safe_add_func_int8_t_s_s((safe_div_func_int32_t_s_s((5UL != 0x27L), p_2854->g_249)), 0x62L)) && (0x84DE8212L >= l_492))) && GROUP_DIVERGE(0, 1)), p_2854->g_49))) , (-10L))) > l_492) , GROUP_DIVERGE(1, 1)) ^ (-9L))), l_492)))), l_508)) , 0x68B6L)), l_508)) , FAKE_DIVERGE(p_2854->local_1_offset, get_local_id(1), 10)) , (void*)0))) || l_507))
    { /* block id: 269 */
        uint16_t l_518 = 0UL;
        uint64_t *l_521 = &p_2854->g_451[4][2][4];
        uint64_t *l_522 = &p_2854->g_523;
        uint16_t l_538 = 0xD766L;
        int64_t *l_539[8] = {&p_2854->g_341,&p_2854->g_341,&p_2854->g_341,&p_2854->g_341,&p_2854->g_341,&p_2854->g_341,&p_2854->g_341,&p_2854->g_341};
        int32_t *l_540[2];
        int i;
        for (i = 0; i < 2; i++)
            l_540[i] = (void*)0;
        l_541 = ((**p_77) || (((l_497 = ((((safe_add_func_int16_t_s_s((((safe_lshift_func_int16_t_s_u((safe_mod_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(l_518, (safe_lshift_func_int16_t_s_u((((*l_522) = ((*l_521) = 1UL)) , ((l_492 ^= (l_507 = ((safe_add_func_uint64_t_u_u(18446744073709551615UL, (((safe_add_func_uint16_t_u_u(1UL, ((safe_add_func_int64_t_s_s((p_2854->g_341 |= (safe_div_func_int32_t_s_s((safe_mod_func_uint8_t_u_u((safe_sub_func_int16_t_s_s((((*l_489) |= (l_508 < ((p_2854->g_49 <= (safe_mul_func_uint16_t_u_u(l_538, l_538))) , l_538))) , l_518), 0x3490L)), FAKE_DIVERGE(p_2854->local_0_offset, get_local_id(0), 10))), (**p_77)))), l_518)) <= GROUP_DIVERGE(0, 1)))) | 4294967288UL) , l_508))) , l_538))) && 0xDF692B8BL)), (**p_2854->g_178))))), l_497)), l_497)) | 0x359B0A2AL) & 0xF7661EF798A2CE5AL), 1L)) && p_2854->g_167) , 255UL) >= 0x50L)) ^ FAKE_DIVERGE(p_2854->global_0_offset, get_global_id(0), 10)) <= p_2854->g_400));
    }
    else
    { /* block id: 278 */
        uint32_t l_544[8];
        int32_t *l_546 = &l_497;
        int32_t *l_547 = (void*)0;
        int32_t *l_548[2][5] = {{&p_2854->g_36,(void*)0,(void*)0,(void*)0,&p_2854->g_36},{&p_2854->g_36,(void*)0,(void*)0,(void*)0,&p_2854->g_36}};
        int i, j;
        for (i = 0; i < 8; i++)
            l_544[i] = 0xD34FABDDL;
        for (p_2854->g_258 = (-5); (p_2854->g_258 != 52); p_2854->g_258 = safe_add_func_int8_t_s_s(p_2854->g_258, 2))
        { /* block id: 281 */
            for (p_2854->g_341 = 5; (p_2854->g_341 >= 0); p_2854->g_341 -= 1)
            { /* block id: 284 */
                l_544[5] |= 0x7F5F17E1L;
                for (l_507 = 5; (l_507 >= 0); l_507 -= 1)
                { /* block id: 288 */
                    if ((**p_77))
                        break;
                    for (l_497 = 0; (l_497 <= 5); l_497 += 1)
                    { /* block id: 292 */
                        return p_76;
                    }
                    for (p_2854->g_145 = 1; (p_2854->g_145 <= 4); p_2854->g_145 += 1)
                    { /* block id: 297 */
                        int i, j, k;
                        if (p_2854->g_451[(l_507 + 4)][p_2854->g_145][p_2854->g_145])
                            break;
                        if (l_507)
                            continue;
                        return l_545;
                    }
                }
            }
        }
        p_2854->g_551--;
    }
    if ((**p_77))
    { /* block id: 307 */
        uint32_t l_554 = 0x041C6CAAL;
        uint32_t *l_579 = &p_2854->g_351;
        int32_t *l_593 = &l_507;
        int32_t ***l_661 = &l_658;
        uint64_t l_701 = 0UL;
        int32_t l_730 = 0x4F0A2202L;
        int32_t l_733 = 0L;
        int32_t l_736 = 0x387F5B92L;
        int32_t l_774 = 0x259D2164L;
        int32_t l_775 = 0L;
        int8_t **l_795 = &l_489;
        int16_t l_828 = 0x7576L;
        int32_t l_831 = 0x0435DEDBL;
        int32_t l_832 = 0L;
        int32_t l_833[6];
        uint16_t l_922 = 0xCE43L;
        int i;
        for (i = 0; i < 6; i++)
            l_833[i] = 0x6CD5D3C5L;
        for (l_508 = 7; (l_508 >= 0); l_508 -= 1)
        { /* block id: 310 */
            uint32_t *l_557 = &p_2854->g_23;
            --l_554;
            for (p_2854->g_258 = 0; (p_2854->g_258 <= 4); p_2854->g_258 += 1)
            { /* block id: 314 */
                return l_557;
            }
        }
        if ((l_554 || (safe_div_func_int32_t_s_s((l_554 < 0x3695L), ((safe_sub_func_uint32_t_u_u(4294967295UL, (((safe_lshift_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(((safe_rshift_func_int8_t_s_s(((*l_489) |= l_554), 0)) < (safe_sub_func_int16_t_s_s(p_2854->g_570, ((*l_506) ^= (safe_sub_func_int16_t_s_s((l_554 > l_497), l_507)))))), l_554)), 1)) && p_2854->g_14) > 0x2EL))) , p_2854->g_249)))))
        { /* block id: 320 */
            int32_t l_584[5] = {(-4L),(-4L),(-4L),(-4L),(-4L)};
            uint8_t **l_592[6];
            uint8_t ***l_591 = &l_592[2];
            int16_t l_599 = 1L;
            int32_t *l_631 = (void*)0;
            int32_t **l_630 = &l_631;
            int32_t ***l_629 = &l_630;
            uint16_t **l_645 = &p_2854->g_179;
            int32_t l_656 = 0x4B29F8A6L;
            int32_t l_700 = 1L;
            int32_t l_703[4][8][7] = {{{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L}},{{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L}},{{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L}},{{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L}}};
            uint8_t l_756 = 255UL;
            uint32_t l_776 = 0xDCC3A614L;
            int8_t **l_785 = &l_487[2][4];
            uint64_t *l_802[10] = {&p_2854->g_523,&p_2854->g_451[4][2][4],&p_2854->g_523,&p_2854->g_523,&p_2854->g_451[4][2][4],&p_2854->g_523,&p_2854->g_523,&p_2854->g_451[4][2][4],&p_2854->g_523,&p_2854->g_523};
            uint32_t **l_804 = &l_579;
            int32_t * volatile **l_809 = &p_2854->g_807;
            int i, j, k;
            for (i = 0; i < 6; i++)
                l_592[i] = &l_509;
            for (p_2854->g_551 = 0; (p_2854->g_551 <= 4); p_2854->g_551 += 1)
            { /* block id: 323 */
                uint64_t l_594 = 18446744073709551614UL;
                int64_t *l_636 = &p_2854->g_570;
                int8_t **l_652[10] = {&l_489,&l_489,&l_489,&l_489,&l_489,&l_489,&l_489,&l_489,&l_489,&l_489};
                int32_t ****l_660 = &l_629;
                int32_t ***l_662 = &l_630;
                uint16_t l_702 = 0x1288L;
                int16_t *l_715 = &l_599;
                int32_t l_731 = 1L;
                int32_t l_732[2][9] = {{0L,(-1L),0L,0L,(-1L),0L,0L,(-1L),0L},{0L,(-1L),0L,0L,(-1L),0L,0L,(-1L),0L}};
                int i, j;
                for (p_2854->g_115 = 0; (p_2854->g_115 <= 4); p_2854->g_115 += 1)
                { /* block id: 326 */
                    int32_t *l_575 = &p_2854->g_576;
                    int32_t *l_577 = &p_2854->g_578;
                    uint32_t **l_580 = &l_579;
                    int32_t l_581 = 0L;
                    uint8_t l_611 = 246UL;
                    int32_t l_643[9] = {1L,1L,1L,1L,1L,1L,1L,1L,1L};
                    int32_t l_644 = 0x7A223983L;
                    uint64_t *l_651 = &p_2854->g_523;
                    int i;
                    for (p_2854->g_249 = 0; (p_2854->g_249 <= 4); p_2854->g_249 += 1)
                    { /* block id: 329 */
                        return p_76;
                    }
                }
                (*l_593) |= (((*l_660) = l_657) != (l_661 = (l_662 = l_661)));
                (*l_593) = ((*p_2854->g_146) != &p_76);
                for (p_2854->g_578 = 3; (p_2854->g_578 >= 0); p_2854->g_578 -= 1)
                { /* block id: 376 */
                    uint32_t l_667[2][10] = {{6UL,0xF8AA2D2DL,0xF8AA2D2DL,6UL,6UL,0xF8AA2D2DL,0xF8AA2D2DL,6UL,6UL,0xF8AA2D2DL},{6UL,0xF8AA2D2DL,0xF8AA2D2DL,6UL,6UL,0xF8AA2D2DL,0xF8AA2D2DL,6UL,6UL,0xF8AA2D2DL}};
                    uint16_t ***l_711 = &l_645;
                    int32_t l_724 = 1L;
                    int32_t l_734 = 0x505941A5L;
                    int32_t l_735 = 0x45FE3DC2L;
                    int i, j;
                    l_703[3][0][4] = ((safe_div_func_int64_t_s_s((safe_lshift_func_uint16_t_u_u(l_667[0][5], 8)), ((*l_593) && (-4L)))) > (safe_lshift_func_uint16_t_u_s(((safe_rshift_func_int16_t_s_s((safe_add_func_uint32_t_u_u((safe_mul_func_int8_t_s_s(l_584[1], (safe_div_func_uint32_t_u_u(((((!(((safe_lshift_func_uint8_t_u_s((safe_add_func_int8_t_s_s(((safe_mul_func_int16_t_s_s(((safe_mul_func_uint8_t_u_u(249UL, ((safe_div_func_uint64_t_u_u((0x13L < (safe_mod_func_uint16_t_u_u(FAKE_DIVERGE(p_2854->group_1_offset, get_group_id(1), 10), (safe_sub_func_uint64_t_u_u(GROUP_DIVERGE(2, 1), l_656))))), (-2L))) , (safe_lshift_func_int16_t_s_s(((safe_add_func_int16_t_s_s((((safe_mul_func_int16_t_s_s((((l_497 = (safe_mul_func_int8_t_s_s(((l_656 = ((*l_489) = ((void*)0 != &p_2854->g_309[1][4][3]))) , l_584[2]), FAKE_DIVERGE(p_2854->global_1_offset, get_global_id(1), 10)))) <= l_549) | p_2854->g_523), (*l_593))) | 18446744073709551613UL) , p_2854->g_453), l_594)) && l_508), 6))))) | (*p_2854->g_646)), l_594)) >= 3UL), 0x0EL)), l_667[1][6])) , l_667[1][7]) <= l_700)) != l_701) <= 1UL) & 1UL), l_700)))), l_584[1])), l_594)) >= l_594), l_702)));
                    (*l_593) = (safe_unary_minus_func_int32_t_s(((safe_mul_func_uint16_t_u_u(65535UL, (safe_div_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_s(((*p_2854->g_179) |= (GROUP_DIVERGE(2, 1) || ((void*)0 != l_711))), 7)), p_2854->g_14)))) | ((safe_unary_minus_func_int64_t_s((safe_rshift_func_int16_t_s_s((0x2B5DL > (l_715 != (p_2854->g_716 = &p_2854->g_145))), ((*l_715) = ((*l_506) ^= 0x56B1L)))))) > (safe_sub_func_uint16_t_u_u(l_497, l_584[2]))))));
                }
            }
            if ((1L > l_507))
            { /* block id: 404 */
                uint32_t l_747 = 4294967291UL;
                uint32_t l_748 = 0x41448065L;
                int32_t ****l_750 = &l_657;
                int32_t *****l_749 = &l_750;
                uint64_t *l_753 = &l_610;
                int32_t *l_757 = &l_550[0];
                int32_t *l_758 = &l_736;
                int32_t *l_759 = &l_703[3][0][4];
                int32_t *l_760 = &l_730;
                int32_t *l_761 = &l_703[3][0][4];
                int32_t *l_762 = &l_733;
                int32_t *l_763 = &l_736;
                int32_t *l_764 = &l_733;
                int32_t *l_765 = (void*)0;
                int32_t *l_766 = &l_492;
                int32_t *l_767 = &l_730;
                int32_t *l_768 = (void*)0;
                int32_t *l_769 = (void*)0;
                int32_t *l_770 = &l_492;
                int32_t *l_771 = &l_736;
                int32_t *l_772[6] = {&l_550[3],&l_733,&l_550[3],&l_550[3],&l_733,&l_550[3]};
                int32_t l_773 = (-1L);
                int i;
                (*p_77) = &l_550[1];
                (*p_2854->g_485) = (((safe_rshift_func_uint8_t_u_u(l_584[1], ((safe_rshift_func_int8_t_s_u(l_599, ((safe_unary_minus_func_int64_t_s(((l_747 = ((***l_591) = 246UL)) == (FAKE_DIVERGE(p_2854->local_0_offset, get_local_id(0), 10) || (l_748 || (((*l_749) = &l_661) != p_2854->g_751)))))) <= (((*l_593) || (!(((((--(*l_753)) <= (l_541 >= 0x18L)) , GROUP_DIVERGE(2, 1)) , l_756) , 0UL))) & (*p_2854->g_716))))) ^ 0x667BL))) ^ p_2854->g_132) , 6L);
                --l_776;
            }
            else
            { /* block id: 412 */
                int32_t l_790 = (-3L);
                uint16_t *l_791 = &p_2854->g_551;
                int32_t ****l_792 = &l_661;
                int64_t *l_794 = &l_508;
                int32_t *l_796 = &l_733;
                int32_t l_797 = 0x33D6ABAEL;
                uint64_t *l_803 = &p_2854->g_451[8][4][4];
                (*l_593) &= (p_2854->g_23 & ((safe_lshift_func_uint8_t_u_s((l_584[1] & (0L != ((***l_591) = ((safe_add_func_int16_t_s_s(((safe_lshift_func_int8_t_s_s((l_785 == ((&l_630 != ((*l_792) = ((((*l_791) = ((*p_2854->g_179) = ((**p_77) , ((l_610 , (p_2854->g_551 <= ((safe_sub_func_int32_t_s_s((safe_div_func_int16_t_s_s((-1L), 65535UL)), 0x8054A44FL)) >= l_599))) >= l_790)))) <= l_703[1][3][0]) , (void*)0))) , (void*)0)), l_790)) > l_584[1]), (*p_2854->g_716))) && FAKE_DIVERGE(p_2854->group_1_offset, get_group_id(1), 10))))), l_793)) || 0x71D8L));
                if (l_508)
                    goto lbl_806;
                (*l_796) &= (p_2854->g_453 ^ (FAKE_DIVERGE(p_2854->local_1_offset, get_local_id(1), 10) ^ (GROUP_DIVERGE(2, 1) == ((((*l_593) ^= (((!((l_645 == l_645) , p_2854->g_351)) > (p_2854->g_570 , ((*l_794) = ((0UL > l_703[0][3][0]) >= l_584[2])))) != ((((l_795 == l_795) | (**p_77)) , &p_2854->g_752) != l_792))) | FAKE_DIVERGE(p_2854->global_2_offset, get_global_id(2), 10)) , 0x47F7EB556E30C1B2L))));
lbl_806:
                (*p_77) = func_78((l_797 >= (((safe_add_func_uint8_t_u_u((((safe_sub_func_int8_t_s_s(((*l_796) , (((l_803 = l_802[6]) != (void*)0) ^ ((void*)0 == &p_2854->g_178))), (((void*)0 != l_804) || ((((0x7325L ^ p_2854->g_805) < 0UL) >= FAKE_DIVERGE(p_2854->local_1_offset, get_local_id(1), 10)) , p_2854->g_115)))) != 65528UL) | (*p_2854->g_716)), (*l_593))) && (*p_2854->g_179)) < 0x7FD3L)), (*l_796), p_77, l_549, p_2854);
                l_796 = &l_656;
            }
            (*l_809) = p_2854->g_807;
        }
        else
        { /* block id: 427 */
            int64_t l_810[10][10] = {{0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L},{0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L},{0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L},{0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L},{0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L},{0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L},{0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L},{0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L},{0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L},{0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L}};
            int32_t l_822 = 0L;
            int32_t l_825 = 0L;
            int32_t l_826 = (-2L);
            int32_t l_829[6] = {1L,1L,1L,1L,1L,1L};
            uint32_t *l_891 = &p_2854->g_23;
            uint32_t l_948[9] = {4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL};
            int i, j;
            if ((l_810[1][8] <= (safe_mul_func_uint16_t_u_u((((((safe_mod_func_uint16_t_u_u(((*l_593) || (!18446744073709551610UL)), ((safe_lshift_func_int16_t_s_s(((*l_593) , l_497), (*l_593))) && ((((safe_mod_func_uint64_t_u_u(p_2854->g_453, p_2854->g_451[6][4][0])) ^ (*p_2854->g_716)) , (*l_593)) | GROUP_DIVERGE(1, 1))))) >= 0L) , 0x6DL) | 0x53L) <= p_2854->g_145), l_793))))
            { /* block id: 428 */
                int16_t l_823 = 0x7256L;
                int32_t l_824 = 0x12239F42L;
                int32_t l_827[6];
                uint16_t *****l_838[6][6][7] = {{{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837}},{{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837}},{{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837}},{{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837}},{{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837}},{{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837}}};
                int i, j, k;
                for (i = 0; i < 6; i++)
                    l_827[i] = 0x06BDF910L;
                for (l_793 = 0; (l_793 != (-1)); l_793 = safe_sub_func_int16_t_s_s(l_793, 5))
                { /* block id: 431 */
                    int32_t *l_821[5][7][2] = {{{&p_2854->g_4,&l_730},{&p_2854->g_4,&l_730},{&p_2854->g_4,&l_730},{&p_2854->g_4,&l_730},{&p_2854->g_4,&l_730},{&p_2854->g_4,&l_730},{&p_2854->g_4,&l_730}},{{&p_2854->g_4,&l_730},{&p_2854->g_4,&l_730},{&p_2854->g_4,&l_730},{&p_2854->g_4,&l_730},{&p_2854->g_4,&l_730},{&p_2854->g_4,&l_730},{&p_2854->g_4,&l_730}},{{&p_2854->g_4,&l_730},{&p_2854->g_4,&l_730},{&p_2854->g_4,&l_730},{&p_2854->g_4,&l_730},{&p_2854->g_4,&l_730},{&p_2854->g_4,&l_730},{&p_2854->g_4,&l_730}},{{&p_2854->g_4,&l_730},{&p_2854->g_4,&l_730},{&p_2854->g_4,&l_730},{&p_2854->g_4,&l_730},{&p_2854->g_4,&l_730},{&p_2854->g_4,&l_730},{&p_2854->g_4,&l_730}},{{&p_2854->g_4,&l_730},{&p_2854->g_4,&l_730},{&p_2854->g_4,&l_730},{&p_2854->g_4,&l_730},{&p_2854->g_4,&l_730},{&p_2854->g_4,&l_730},{&p_2854->g_4,&l_730}}};
                    uint64_t l_834 = 0x3CFA8209EF1F2608L;
                    int i, j, k;
                    l_834--;
                }
                if (((*l_593) = ((*p_2854->g_646) = (((l_839 = l_837) == ((((**l_488) = l_541) , FAKE_DIVERGE(p_2854->local_2_offset, get_local_id(2), 10)) , &p_2854->g_439)) != ((safe_lshift_func_int8_t_s_u((l_822 = (safe_rshift_func_uint8_t_u_u(((*l_593) , (p_2854->g_737[1][4][0] <= ((*l_593) ^ (safe_lshift_func_int8_t_s_u(((safe_lshift_func_int8_t_s_u(l_793, 5)) ^ ((**p_2854->g_178) | 5L)), p_2854->g_400))))), l_497))), 5)) , p_2854->g_451[9][1][3])))))
                { /* block id: 439 */
                    int64_t *l_850 = &p_2854->g_851;
                    int32_t l_856 = (-9L);
                    int32_t l_857 = 0x5E63BC18L;
                    int32_t *l_858 = (void*)0;
                    int32_t *l_859 = &l_829[2];
                    uint64_t *l_868 = (void*)0;
                    uint64_t *l_869 = &p_2854->g_167;
                    (*l_593) = (((*l_850) &= (((*l_593) && p_2854->g_578) == ((*l_489) ^= (safe_rshift_func_int8_t_s_s((-4L), 1))))) , (FAKE_DIVERGE(p_2854->local_1_offset, get_local_id(1), 10) & (FAKE_DIVERGE(p_2854->group_2_offset, get_group_id(2), 10) , (safe_lshift_func_int8_t_s_s((((safe_rshift_func_uint16_t_u_s((l_857 ^= (l_856 , (*l_593))), (((((*l_859) = ((*l_593) < l_829[0])) ^ l_825) , (safe_mod_func_int16_t_s_s((~(safe_mod_func_int64_t_s_s((~(safe_lshift_func_uint8_t_u_u(((safe_mul_func_uint8_t_u_u(p_2854->g_523, (*l_593))) >= l_823), 4))), p_2854->g_830))), (*l_593)))) , (*p_2854->g_716)))) || (*l_593)) , l_824), l_827[5])))));
                    (*l_859) = (7L != ((*l_593) | ((*l_869) = (*l_593))));
                    return l_545;
                }
                else
                { /* block id: 448 */
                    (*l_593) = (**p_77);
                }
                for (l_828 = 4; (l_828 >= 0); l_828 -= 1)
                { /* block id: 453 */
                    uint16_t *****l_870 = &l_837;
                    uint16_t ******l_871 = (void*)0;
                    (*p_77) = func_78(((p_2854->g_872 = l_870) != &p_2854->g_873[2][2][1]), p_2854->g_249, (((safe_mul_func_uint16_t_u_u((safe_add_func_int64_t_s_s((1UL & (*l_593)), p_2854->g_830)), GROUP_DIVERGE(0, 1))) ^ 1UL) , p_77), p_2854->g_737[3][6][2], p_2854);
                    if ((**p_77))
                        continue;
                }
            }
            else
            { /* block id: 458 */
                volatile uint32_t ** volatile *l_879 = (void*)0;
                volatile uint32_t ** volatile *l_880 = &p_2854->g_878;
                (*l_880) = p_2854->g_878;
            }
            --l_881;
            for (l_541 = 0; (l_541 <= 5); l_541 += 1)
            { /* block id: 464 */
                int32_t **l_886 = (void*)0;
                int i;
                if (l_833[l_541])
                    break;
                for (l_775 = 5; (l_775 >= 0); l_775 -= 1)
                { /* block id: 468 */
                    int32_t l_889 = 0x19F324CFL;
                    int64_t *l_890 = &l_810[1][8];
                    uint32_t ***l_900 = (void*)0;
                    if (((l_833[l_541] != ((safe_mul_func_uint16_t_u_u((((*l_657) = l_886) == (p_2854->g_887 = p_2854->g_887)), (*p_2854->g_716))) && (l_889 >= GROUP_DIVERGE(1, 1)))) > ((*l_890) = p_2854->g_451[9][0][4])))
                    { /* block id: 472 */
                        return l_891;
                    }
                    else
                    { /* block id: 474 */
                        int16_t *l_901[2][2];
                        int32_t l_902 = 9L;
                        int32_t *l_906 = &l_825;
                        int32_t *l_907 = &l_730;
                        int32_t *l_908 = &l_832;
                        int32_t *l_909 = &l_550[0];
                        int32_t *l_910 = &l_829[4];
                        int32_t *l_911 = &l_829[4];
                        int32_t *l_912 = &l_831;
                        int32_t *l_913 = &l_833[l_775];
                        int32_t *l_914 = &l_550[0];
                        int32_t *l_915 = &l_829[5];
                        int32_t *l_916 = &l_822;
                        int32_t *l_917 = &l_826;
                        int32_t *l_918 = &l_829[5];
                        int32_t *l_919 = &l_831;
                        int32_t *l_920 = &l_825;
                        int32_t *l_921 = (void*)0;
                        int i, j;
                        for (i = 0; i < 2; i++)
                        {
                            for (j = 0; j < 2; j++)
                                l_901[i][j] = &l_793;
                        }
                        (*p_77) = func_78(((((void*)0 == &p_2854->g_167) , (safe_rshift_func_uint16_t_u_u(0x7335L, 15))) != (((safe_sub_func_int64_t_s_s((safe_rshift_func_int16_t_s_s(((*l_506) = (l_902 ^= ((&p_2854->g_872 == (((safe_add_func_uint64_t_u_u((l_829[5] & ((l_900 != &p_2854->g_147) < 1UL)), l_810[6][9])) | (*l_593)) , (void*)0)) , (*p_2854->g_716)))), (*l_593))), p_2854->g_740)) && 8L) >= l_903)), (*l_593), p_77, l_822, p_2854);
                        l_833[l_775] |= (safe_rshift_func_uint16_t_u_s(FAKE_DIVERGE(p_2854->global_2_offset, get_global_id(2), 10), (l_891 != p_76)));
                        if ((**p_77))
                            continue;
                        --l_922;
                    }
                    (*p_77) = func_78(((l_822 > (safe_mul_func_int8_t_s_s(((**l_488) = l_810[1][8]), (safe_lshift_func_uint8_t_u_u((p_2854->g_2 && (safe_rshift_func_int16_t_s_u((l_613 , (((*p_2854->g_716) != ((((safe_rshift_func_int8_t_s_u((((p_2854->g_167 = (((safe_rshift_func_uint16_t_u_u(((safe_lshift_func_uint8_t_u_u(l_889, 2)) , ((**p_2854->g_178) ^= (safe_rshift_func_int16_t_s_s((safe_mod_func_uint8_t_u_u((safe_add_func_uint32_t_u_u((((safe_rshift_func_uint16_t_u_u((((((p_2854->g_341 == (l_829[5] , ((safe_div_func_uint8_t_u_u(0UL, l_822)) >= l_833[l_541]))) != l_881) | (*p_2854->g_716)) || l_903) > l_947), l_948[7])) | l_889) > (*p_2854->g_716)), (*p_2854->g_646))), l_948[7])), 14)))), FAKE_DIVERGE(p_2854->group_0_offset, get_group_id(0), 10))) | l_889) >= p_2854->g_830)) & FAKE_DIVERGE(p_2854->global_0_offset, get_global_id(0), 10)) & 0x2872EC06A603EFF8L), l_822)) || 0x9424L) & 8UL) ^ 18446744073709551615UL)) , l_889)), 3))), 0))))) > l_833[l_541]), (*l_593), p_77, p_2854->g_341, p_2854);
                    for (p_2854->g_167 = 0; (p_2854->g_167 <= 5); p_2854->g_167 += 1)
                    { /* block id: 488 */
                        return p_76;
                    }
                }
            }
            (*p_2854->g_646) |= ((*l_593) && (-5L));
        }
    }
    else
    { /* block id: 495 */
        uint16_t l_959 = 65528UL;
        uint64_t *l_965 = &p_2854->g_167;
        uint64_t *l_968 = (void*)0;
        uint64_t *l_969 = &p_2854->g_249;
        uint16_t ******l_974[7] = {&p_2854->g_872,&p_2854->g_872,&p_2854->g_872,&p_2854->g_872,&p_2854->g_872,&p_2854->g_872,&p_2854->g_872};
        int32_t *l_977 = &l_541;
        uint32_t **l_984 = (void*)0;
        uint32_t ***l_983 = &l_984;
        int8_t *l_1085 = &p_2854->g_400;
        uint8_t l_1097 = 0x71L;
        int32_t ****l_1174[7][8][4] = {{{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657}},{{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657}},{{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657}},{{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657}},{{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657}},{{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657}},{{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657},{&l_657,&l_657,(void*)0,&l_657}}};
        int32_t l_1200 = 0x529FFF79L;
        int32_t l_1205[6][4] = {{0x3313D18CL,0x3313D18CL,0x3313D18CL,0x3313D18CL},{0x3313D18CL,0x3313D18CL,0x3313D18CL,0x3313D18CL},{0x3313D18CL,0x3313D18CL,0x3313D18CL,0x3313D18CL},{0x3313D18CL,0x3313D18CL,0x3313D18CL,0x3313D18CL},{0x3313D18CL,0x3313D18CL,0x3313D18CL,0x3313D18CL},{0x3313D18CL,0x3313D18CL,0x3313D18CL,0x3313D18CL}};
        uint32_t l_1207 = 0xBF1C4B81L;
        uint8_t *l_1255 = &l_1097;
        uint32_t ***l_1263 = &p_2854->g_147;
        int64_t l_1285[3];
        int64_t l_1301 = 1L;
        int32_t l_1302 = 6L;
        uint32_t l_1303 = 4294967289UL;
        uint32_t *l_1306 = (void*)0;
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_1285[i] = (-5L);
        if (((safe_rshift_func_int8_t_s_s(3L, 3)) , l_549))
        { /* block id: 496 */
            int64_t l_953 = (-2L);
            uint64_t l_955 = 1UL;
            int32_t **l_958[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int i;
            for (p_2854->g_578 = 0; (p_2854->g_578 >= 13); p_2854->g_578 = safe_add_func_int16_t_s_s(p_2854->g_578, 8))
            { /* block id: 499 */
                uint64_t *l_954[7][2][6] = {{{&p_2854->g_249,&p_2854->g_249,&l_610,&l_610,&l_610,&p_2854->g_249},{&p_2854->g_249,&p_2854->g_249,&l_610,&l_610,&l_610,&p_2854->g_249}},{{&p_2854->g_249,&p_2854->g_249,&l_610,&l_610,&l_610,&p_2854->g_249},{&p_2854->g_249,&p_2854->g_249,&l_610,&l_610,&l_610,&p_2854->g_249}},{{&p_2854->g_249,&p_2854->g_249,&l_610,&l_610,&l_610,&p_2854->g_249},{&p_2854->g_249,&p_2854->g_249,&l_610,&l_610,&l_610,&p_2854->g_249}},{{&p_2854->g_249,&p_2854->g_249,&l_610,&l_610,&l_610,&p_2854->g_249},{&p_2854->g_249,&p_2854->g_249,&l_610,&l_610,&l_610,&p_2854->g_249}},{{&p_2854->g_249,&p_2854->g_249,&l_610,&l_610,&l_610,&p_2854->g_249},{&p_2854->g_249,&p_2854->g_249,&l_610,&l_610,&l_610,&p_2854->g_249}},{{&p_2854->g_249,&p_2854->g_249,&l_610,&l_610,&l_610,&p_2854->g_249},{&p_2854->g_249,&p_2854->g_249,&l_610,&l_610,&l_610,&p_2854->g_249}},{{&p_2854->g_249,&p_2854->g_249,&l_610,&l_610,&l_610,&p_2854->g_249},{&p_2854->g_249,&p_2854->g_249,&l_610,&l_610,&l_610,&p_2854->g_249}}};
                int i, j, k;
                (*p_77) = func_78(l_953, (++l_955), l_958[4], l_959, p_2854);
            }
            l_550[0] = (safe_mul_func_int16_t_s_s((-3L), l_959));
            return p_76;
        }
        else
        { /* block id: 505 */
            (*p_2854->g_964) = ((l_793 <= l_959) , (**p_77));
        }
        l_492 = (**p_77);
        if ((((*l_969) = ((*l_965)--)) != (safe_rshift_func_int8_t_s_s(((safe_sub_func_uint8_t_u_u(((((l_545 == ((0x4041L || (~(+l_497))) , p_76)) >= (0x15L || p_2854->g_523)) , l_974[4]) != ((l_610 >= (safe_mod_func_int32_t_s_s(((*l_977) ^= (**p_77)), l_978))) , (void*)0)), p_2854->g_551)) ^ l_549), 0))))
        { /* block id: 512 */
            uint64_t l_991 = 0xC06383042E47E19BL;
            uint32_t ***l_996 = (void*)0;
            int32_t l_997 = (-9L);
            uint16_t *l_1005 = &l_959;
            int64_t l_1057 = 0x32E5F0FE3F329355L;
            int32_t l_1095 = (-1L);
            int32_t l_1098 = 0x6A646E96L;
            int32_t l_1111 = 0x354DFCDDL;
            (*l_977) = ((l_997 &= (safe_mod_func_int64_t_s_s((safe_mod_func_uint32_t_u_u((l_983 == ((safe_rshift_func_int8_t_s_s((safe_div_func_int16_t_s_s((safe_mul_func_int8_t_s_s(((*l_977) != (GROUP_DIVERGE(2, 1) == ((**l_488) = l_991))), (((safe_mod_func_int64_t_s_s(0x231D24767C710CDDL, ((-1L) ^ (&l_903 != &p_2854->g_341)))) ^ 1UL) && GROUP_DIVERGE(1, 1)))), (-4L))), 7)) , l_996)), 0x68DFFD2DL)), p_2854->g_851))) ^ l_991);
            if ((*l_977))
            { /* block id: 516 */
                return l_545;
            }
            else
            { /* block id: 518 */
                int64_t l_1000 = 6L;
                uint32_t *l_1014 = &p_2854->g_351;
                int32_t l_1031 = 1L;
                uint16_t ***l_1055 = (void*)0;
                int32_t l_1056 = (-1L);
                int32_t ****l_1089 = &l_657;
                int32_t *****l_1088 = &l_1089;
                uint16_t ******l_1094 = &p_2854->g_872;
                int8_t l_1099 = 8L;
                (*l_977) = l_881;
                l_550[0] ^= ((((p_2854->g_249 , (+((*l_506) = (safe_rshift_func_int16_t_s_u((l_1000 == (safe_rshift_func_int8_t_s_s((safe_lshift_func_int16_t_s_s((((((*p_2854->g_178) = l_1005) == (((((safe_mod_func_int8_t_s_s((((((**p_77) > (safe_mul_func_int8_t_s_s((safe_add_func_uint64_t_u_u(l_991, ((((l_1014 = func_78(l_997, (l_991 != (safe_lshift_func_uint8_t_u_s(GROUP_DIVERGE(1, 1), ((0x05B0L && l_1000) , (*l_977))))), p_77, (*l_977), p_2854)) != (void*)0) & 0L) | p_2854->g_453))), 1L))) > (*l_977)) && FAKE_DIVERGE(p_2854->group_0_offset, get_group_id(0), 10)) || 255UL), GROUP_DIVERGE(2, 1))) >= p_2854->g_400) & 0x3E852AC0275BF39CL) || 0x6AL) , l_1005)) , GROUP_DIVERGE(1, 1)) <= p_2854->g_23), 6)), l_1000))), 8))))) <= l_1000) >= l_1000) | l_541);
                if (p_2854->g_570)
                    goto lbl_1284;
                for (p_2854->g_453 = 0; (p_2854->g_453 > (-9)); p_2854->g_453 = safe_sub_func_int64_t_s_s(p_2854->g_453, 5))
                { /* block id: 526 */
                    uint64_t l_1025 = 2UL;
                    int32_t *****l_1092 = (void*)0;
                    int32_t l_1101 = 0x687DB774L;
                    int32_t l_1110[9] = {1L,1L,1L,1L,1L,1L,1L,1L,1L};
                    int i;
                    for (l_959 = 0; (l_959 <= 38); l_959++)
                    { /* block id: 529 */
                        uint32_t l_1026 = 0x1BCFE68AL;
                        l_997 = ((safe_lshift_func_int16_t_s_s(((!((**p_77) != (safe_sub_func_int64_t_s_s(((+((*l_977) = 0L)) ^ (0UL <= (safe_lshift_func_uint16_t_u_u((l_1025 & (l_1026 == (safe_rshift_func_int8_t_s_u((!1L), 1)))), (l_991 > p_2854->g_145))))), (((l_1031 = ((safe_rshift_func_int8_t_s_u(0x76L, 2)) | l_1000)) , (**p_77)) >= FAKE_DIVERGE(p_2854->local_0_offset, get_local_id(0), 10)))))) && l_1031), 6)) && l_541);
                    }
                    if ((((4294967295UL | (**p_77)) , (safe_unary_minus_func_uint64_t_u((*l_977)))) != ((((*p_2854->g_179) < (l_1031 = l_1025)) >= (GROUP_DIVERGE(2, 1) || (safe_mul_func_uint16_t_u_u(((safe_mod_func_uint64_t_u_u((safe_mod_func_uint8_t_u_u((safe_div_func_uint32_t_u_u((safe_lshift_func_uint16_t_u_u((((((safe_mul_func_uint8_t_u_u(252UL, (safe_mod_func_uint32_t_u_u(((*l_977) >= (l_1056 = (((((safe_sub_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((safe_div_func_int64_t_s_s(((6L >= (((*p_2854->g_716) = (safe_mul_func_int16_t_s_s(l_1000, 0x1D53L))) , (*p_2854->g_716))) , p_2854->g_737[2][2][1]), l_991)), 0x2633L)), 1L)) , (void*)0) == l_1055) , 0x5CL) & 247UL))), l_1057)))) > (*p_2854->g_485)) <= 0UL) | p_2854->g_258) <= 2L), GROUP_DIVERGE(1, 1))), l_793)), (*l_977))), p_2854->g_258)) == l_1025), 0x1E5AL)))) == 0L)))
                    { /* block id: 537 */
                        uint16_t l_1058 = 0x41E6L;
                        uint16_t *******l_1073[2];
                        int32_t ******l_1090 = (void*)0;
                        int32_t ******l_1091[8] = {&l_1088,&l_1088,&l_1088,&l_1088,&l_1088,&l_1088,&l_1088,&l_1088};
                        uint32_t *l_1093 = &p_2854->g_740;
                        int32_t *l_1096 = &p_2854->g_36;
                        int32_t *l_1100[2][1];
                        int i, j;
                        for (i = 0; i < 2; i++)
                            l_1073[i] = &l_974[4];
                        for (i = 0; i < 2; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_1100[i][j] = (void*)0;
                        }
                        ++l_1058;
                        l_1101 = (safe_div_func_uint16_t_u_u((l_1098 = ((safe_lshift_func_int8_t_s_u((safe_mul_func_uint16_t_u_u((((*l_977) = (safe_add_func_int32_t_s_s(((((p_2854->g_523 == (l_1058 ^ (((*l_1096) ^= (l_1095 = (safe_add_func_int16_t_s_s(((*p_2854->g_716) ^= (safe_div_func_uint32_t_u_u(((p_2854->g_1074 = l_974[4]) != ((safe_lshift_func_uint16_t_u_u(((((p_2854->g_167 |= ((l_997 |= l_1000) < (((safe_div_func_uint64_t_u_u((safe_mul_func_uint16_t_u_u(((safe_div_func_uint32_t_u_u(((*l_1093) = (0x74L || (((*l_488) = ((&l_974[0] == (void*)0) , l_1085)) == ((safe_div_func_int16_t_s_s(((l_1092 = l_1088) != &p_2854->g_751), 65527UL)) , &p_2854->g_132)))), GROUP_DIVERGE(1, 1))) > l_1025), l_1058)), p_2854->g_9)) , l_1058) | 0L))) && l_1025) , (*l_977)) || 0x795DF2A5L), (*l_977))) , l_1094)), l_1058))), (*p_2854->g_179))))) && 0UL))) , p_2854->g_3) | 18446744073709551615UL) != (*l_977)), p_2854->g_400))) & 4294967295UL), l_1000)), l_991)) ^ l_1097)), l_1099));
                        (*p_77) = func_78(l_1101, l_1056, &l_977, ((safe_div_func_uint16_t_u_u(l_1000, ((*l_506) &= l_978))) < ((safe_sub_func_int8_t_s_s((~(l_492 = (!(l_1031 = (safe_div_func_int8_t_s_s((((*l_489) = (*l_977)) || (l_1098 = (l_1110[3] = (l_1025 <= ((*l_977) == ((*l_1085) = (safe_mod_func_int8_t_s_s((*l_977), (-1L))))))))), 0x22L)))))), (*l_977))) || 18446744073709551615UL)), p_2854);
                        (*p_77) = l_977;
                    }
                    else
                    { /* block id: 560 */
                        (*p_77) = (*p_77);
                    }
                    return p_76;
                }
            }
            l_1111 |= (**p_77);
        }
        else
        { /* block id: 567 */
            int8_t *l_1113 = &p_2854->g_132;
            int32_t l_1126 = 0x7A106748L;
            int64_t *l_1158 = &p_2854->g_851;
            int64_t l_1175 = 0x65587D5BE950A906L;
            uint32_t l_1188[2];
            int32_t l_1199 = (-1L);
            int32_t l_1204[1][10][10] = {{{0x6A9BB6B8L,0x25FFAB54L,0x37F46C4BL,(-1L),0x48F5C56DL,(-5L),1L,1L,1L,(-5L)},{0x6A9BB6B8L,0x25FFAB54L,0x37F46C4BL,(-1L),0x48F5C56DL,(-5L),1L,1L,1L,(-5L)},{0x6A9BB6B8L,0x25FFAB54L,0x37F46C4BL,(-1L),0x48F5C56DL,(-5L),1L,1L,1L,(-5L)},{0x6A9BB6B8L,0x25FFAB54L,0x37F46C4BL,(-1L),0x48F5C56DL,(-5L),1L,1L,1L,(-5L)},{0x6A9BB6B8L,0x25FFAB54L,0x37F46C4BL,(-1L),0x48F5C56DL,(-5L),1L,1L,1L,(-5L)},{0x6A9BB6B8L,0x25FFAB54L,0x37F46C4BL,(-1L),0x48F5C56DL,(-5L),1L,1L,1L,(-5L)},{0x6A9BB6B8L,0x25FFAB54L,0x37F46C4BL,(-1L),0x48F5C56DL,(-5L),1L,1L,1L,(-5L)},{0x6A9BB6B8L,0x25FFAB54L,0x37F46C4BL,(-1L),0x48F5C56DL,(-5L),1L,1L,1L,(-5L)},{0x6A9BB6B8L,0x25FFAB54L,0x37F46C4BL,(-1L),0x48F5C56DL,(-5L),1L,1L,1L,(-5L)},{0x6A9BB6B8L,0x25FFAB54L,0x37F46C4BL,(-1L),0x48F5C56DL,(-5L),1L,1L,1L,(-5L)}}};
            int32_t *l_1210 = &l_541;
            int32_t *l_1211 = &l_550[3];
            int32_t *l_1212 = &l_1204[0][6][7];
            int32_t *l_1213 = &p_2854->g_36;
            int32_t *l_1214 = &l_497;
            int32_t *l_1215 = &l_497;
            int32_t *l_1216 = &l_550[0];
            int32_t *l_1217 = &l_507;
            int32_t *l_1218 = &l_497;
            int32_t *l_1219 = &l_1205[5][3];
            int32_t *l_1220 = &l_1126;
            int32_t *l_1221 = &l_1204[0][1][2];
            int32_t *l_1222 = &l_507;
            int32_t *l_1223 = (void*)0;
            int32_t *l_1224 = &l_1205[2][0];
            int32_t *l_1225[3];
            uint32_t l_1226 = 1UL;
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_1188[i] = 0x6EBF7F61L;
            for (i = 0; i < 3; i++)
                l_1225[i] = &l_1205[1][3];
            (*p_77) = (*p_77);
            if ((safe_unary_minus_func_int8_t_s((l_1085 != l_1113))))
            { /* block id: 569 */
                uint32_t l_1123 = 0x7EC0DCF4L;
                int64_t *l_1133[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int i;
                for (l_497 = 0; (l_497 <= 3); l_497 += 1)
                { /* block id: 572 */
                    int32_t *l_1114 = &l_507;
                    int32_t l_1115 = 0L;
                    int32_t *l_1116 = &l_492;
                    int32_t *l_1117 = &l_492;
                    int32_t *l_1118 = (void*)0;
                    int32_t *l_1119 = &l_550[1];
                    int32_t *l_1120 = &l_541;
                    int32_t *l_1121 = &l_507;
                    int32_t *l_1122 = (void*)0;
                    atomic_max(&p_2854->l_atomic_reduction[0], ((*l_977) = (**p_77)));
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    if (get_linear_local_id() == 0)
                        p_2854->v_collective += p_2854->l_atomic_reduction[0];
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    l_1123++;
                    (*l_1119) |= ((*l_1120) = 0x1140B935L);
                    for (l_793 = 1; (l_793 <= 5); l_793 += 1)
                    { /* block id: 580 */
                        return l_545;
                    }
                }
                for (l_881 = 0; (l_881 <= 4); l_881 += 1)
                { /* block id: 586 */
                    for (l_497 = 2; (l_497 >= 0); l_497 -= 1)
                    { /* block id: 589 */
                        int i;
                        p_2854->g_962[(l_497 + 1)] = func_78(l_1126, ((*l_965) = FAKE_DIVERGE(p_2854->global_0_offset, get_global_id(0), 10)), &p_2854->g_122[0], l_550[0], p_2854);
                    }
                    return p_76;
                }
                (*p_77) = func_78((p_2854->g_851 = (1UL | (safe_lshift_func_uint8_t_u_s(((l_793 , (l_1126 ^ (l_507 , (*l_977)))) || (safe_div_func_int16_t_s_s((p_2854->g_578 == (l_1123 | ((++(*l_509)) != p_2854->g_830))), (*p_2854->g_716)))), l_550[0])))), l_1126, &p_2854->g_122[6], l_1126, p_2854);
            }
            else
            { /* block id: 598 */
                uint32_t l_1134 = 0x0C065EA0L;
                uint16_t l_1135 = 1UL;
                int32_t *l_1192 = &p_2854->g_36;
                int32_t *l_1193 = &l_1126;
                int32_t *l_1194 = &l_541;
                int32_t *l_1195 = (void*)0;
                int32_t *l_1196 = &l_497;
                int32_t *l_1197 = &l_541;
                int32_t *l_1198 = (void*)0;
                int32_t *l_1201 = &l_1126;
                int32_t *l_1202 = &p_2854->g_36;
                int32_t *l_1203[2][3][10] = {{{&l_507,&l_507,&l_541,&l_492,&l_541,&l_492,&l_497,(void*)0,&l_497,&l_492},{&l_507,&l_507,&l_541,&l_492,&l_541,&l_492,&l_497,(void*)0,&l_497,&l_492},{&l_507,&l_507,&l_541,&l_492,&l_541,&l_492,&l_497,(void*)0,&l_497,&l_492}},{{&l_507,&l_507,&l_541,&l_492,&l_541,&l_492,&l_497,(void*)0,&l_497,&l_492},{&l_507,&l_507,&l_541,&l_492,&l_541,&l_492,&l_497,(void*)0,&l_497,&l_492},{&l_507,&l_507,&l_541,&l_492,&l_541,&l_492,&l_497,(void*)0,&l_497,&l_492}}};
                int i, j, k;
                (*l_977) |= (l_1134 = l_550[3]);
                if (l_1135)
                { /* block id: 601 */
                    uint16_t l_1154[6];
                    int64_t **l_1159[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int32_t *l_1162 = &l_550[1];
                    uint8_t ***l_1171 = &p_2854->g_1169;
                    int i;
                    for (i = 0; i < 6; i++)
                        l_1154[i] = 0x88F0L;
                    (*l_1162) |= (safe_lshift_func_uint16_t_u_u((safe_div_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_u(((*p_2854->g_179) &= (((safe_lshift_func_int16_t_s_u((*l_977), 2)) || (safe_rshift_func_uint16_t_u_u(((((safe_rshift_func_uint16_t_u_u((!GROUP_DIVERGE(0, 1)), (l_1135 ^ ((*l_977) , ((safe_mul_func_uint8_t_u_u((safe_add_func_int8_t_s_s(l_1154[2], 0L)), (l_1126 , ((safe_lshift_func_uint16_t_u_u(9UL, 6)) & ((l_1157 = &p_2854->g_851) == (l_1158 = (l_1134 , l_1158))))))) > l_1126))))) <= (*p_2854->g_716)) ^ l_1126) & 0UL), 9))) || l_1154[3])), (*l_977))), 0x17A4L)), 11));
                    for (l_549 = 25; (l_549 < (-6)); l_549--)
                    { /* block id: 608 */
                        uint64_t l_1165 = 18446744073709551615UL;
                        (*p_77) = (*p_77);
                        if ((**p_77))
                            continue;
                        (*l_977) ^= l_1165;
                    }
                    l_1175 |= (safe_mod_func_int32_t_s_s((((safe_unary_minus_func_int32_t_s((l_541 |= (-4L)))) , &l_509) != ((*l_1171) = p_2854->g_1169)), (l_492 &= (safe_div_func_uint8_t_u_u(((void*)0 != l_1174[4][4][0]), (*l_1162))))));
                }
                else
                { /* block id: 617 */
                    uint64_t l_1176 = 0xF0BCCF4C89A04DCCL;
                    int32_t *l_1179 = &p_2854->g_36;
                    int32_t *l_1180 = &l_541;
                    int32_t *l_1181 = &l_1126;
                    int32_t *l_1182 = &l_492;
                    int32_t *l_1183 = (void*)0;
                    int32_t l_1184 = 0x230AB9B0L;
                    int32_t *l_1185 = &l_497;
                    int32_t *l_1186[10][10][2] = {{{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0}},{{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0}},{{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0}},{{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0}},{{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0}},{{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0}},{{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0}},{{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0}},{{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0}},{{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0},{&l_550[0],(void*)0}}};
                    int i, j, k;
                    ++l_1176;
                    ++l_1188[1];
                    l_1191[7][4][0] |= (*p_2854->g_485);
                }
                l_1207++;
            }
            ++l_1226;
            for (p_2854->g_132 = (-16); (p_2854->g_132 < 8); p_2854->g_132 = safe_add_func_uint8_t_u_u(p_2854->g_132, 3))
            { /* block id: 627 */
                uint16_t l_1233 = 65535UL;
                int32_t *l_1258 = &l_1205[1][3];
                uint16_t l_1262 = 0x9A80L;
                (*p_77) = func_78((safe_mul_func_int16_t_s_s(l_1233, 0xC27BL)), p_2854->g_737[1][5][2], &p_2854->g_122[3], l_1206, p_2854);
                for (p_2854->g_341 = (-14); (p_2854->g_341 > (-15)); p_2854->g_341 = safe_sub_func_int32_t_s_s(p_2854->g_341, 1))
                { /* block id: 631 */
                    uint8_t **l_1254 = &l_509;
                    int32_t l_1257 = 1L;
                    (*l_1215) ^= (0L | ((safe_mod_func_int64_t_s_s((safe_rshift_func_uint8_t_u_u((l_550[0] = ((((*l_1222) = 0x44A44B7CL) ^ ((**p_77) == ((*l_977) == (safe_rshift_func_int16_t_s_u(((safe_add_func_int16_t_s_s(((safe_div_func_uint32_t_u_u(((4294967295UL || (safe_add_func_uint16_t_u_u(((safe_add_func_uint16_t_u_u(((*p_2854->g_179) = (safe_div_func_uint64_t_u_u(((safe_div_func_uint64_t_u_u((!0UL), (((-4L) && (((*p_2854->g_1169) = (*p_2854->g_1169)) != (l_1255 = ((*l_1254) = &l_1097)))) && (-1L)))) , p_2854->g_145), (*l_977)))), p_2854->g_1256)) <= 0x34F2L), 0x0CD4L))) > (**p_77)), (*l_977))) , 0x7159L), 65527UL)) > 4294967295UL), l_1257))))) < p_2854->g_4)), 5)), 1L)) <= 5UL));
                    (*p_77) = l_1258;
                    (*l_1221) = (0xF918L || ((safe_unary_minus_func_int16_t_s((safe_lshift_func_int16_t_s_s((((*l_1258) == l_1262) == (*p_2854->g_179)), 12)))) & (*l_977)));
                    (*l_1221) |= ((p_2854->g_576 , l_1263) == (void*)0);
                }
            }
        }
        if ((safe_lshift_func_int8_t_s_u((((*p_2854->g_807) != p_76) < 0x5C96B8D7B69E098EL), 5)))
        { /* block id: 645 */
            uint8_t **l_1280[7];
            uint32_t *l_1281 = &p_2854->g_351;
            uint32_t **l_1282 = (void*)0;
            uint32_t **l_1283[3];
            int i;
            for (i = 0; i < 7; i++)
                l_1280[i] = &l_509;
            for (i = 0; i < 3; i++)
                l_1283[i] = &l_545;
            (*p_77) = ((safe_mod_func_uint32_t_u_u(GROUP_DIVERGE(1, 1), ((((*l_1281) = (safe_rshift_func_uint16_t_u_s(((safe_mod_func_int8_t_s_s((p_2854->g_523 < ((safe_mul_func_uint8_t_u_u(((*l_1255) &= 0x5DL), (*l_977))) , (safe_mul_func_int8_t_s_s((safe_div_func_uint64_t_u_u(((p_76 = func_78((((**p_77) > (safe_mul_func_int8_t_s_s((0x329E3C70052A2766L && (((void*)0 != l_1280[6]) < (((l_497 = ((*l_1281) = 0xBA3FC90CL)) != (-4L)) , 6UL))), (*p_2854->g_1170)))) ^ l_1187), p_2854->g_570, &p_2854->g_122[0], p_2854->g_451[4][2][4], p_2854)) != l_659), (*l_977))), l_508)))), 0x52L)) != l_1206), 0))) < l_947) , l_1191[6][4][0]))) , (void*)0);
        }
        else
        { /* block id: 652 */
lbl_1284:
            (*p_77) = (*p_77);
            (*p_77) = func_78(((*l_1157) &= ((((*l_1255) = 0xDEL) == l_1285[0]) > (((safe_div_func_int8_t_s_s((l_903 || (safe_mul_func_int8_t_s_s(((*p_2854->g_646) == ((l_1290[1][6]--) || ((**p_2854->g_1169) = (*p_2854->g_1170)))), (safe_lshift_func_uint8_t_u_s((+(((safe_sub_func_int32_t_s_s(((*l_977) ^= l_947), ((*p_2854->g_716) && ((**p_77) ^ ((safe_mod_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_s(l_1187, 2)), l_1301)) != p_2854->g_132))))) > (**p_77)) > (*p_2854->g_716))), p_2854->g_576))))), l_1191[1][1][0])) || l_1302) <= l_1303))), p_2854->g_830, p_77, l_497, p_2854);
            for (l_1206 = 0; (l_1206 > (-10)); l_1206--)
            { /* block id: 663 */
                return p_76;
            }
            return l_1306;
        }
    }
    if (((l_549 ^ (((safe_add_func_uint64_t_u_u(l_1187, (((((*p_2854->g_807) == (((&p_2854->g_887 == ((safe_mul_func_int8_t_s_s((((safe_sub_func_uint32_t_u_u(p_2854->g_351, p_2854->g_36)) , (void*)0) == (void*)0), (((((**l_488) = l_978) , l_508) , 0x73L) >= 0x5DL))) , (void*)0)) & GROUP_DIVERGE(0, 1)) , (void*)0)) & 0x3BL) == l_1313) && FAKE_DIVERGE(p_2854->local_1_offset, get_local_id(1), 10)))) , l_550[0]) , 255UL)) || l_1191[7][4][0]))
    { /* block id: 670 */
        int64_t l_1321 = 1L;
        uint32_t *l_1324 = &l_1313;
        (*p_2854->g_1329) = ((safe_sub_func_uint64_t_u_u(((safe_mul_func_uint16_t_u_u(65535UL, (~(++l_1318[3])))) == (l_1321 |= 9L)), l_1187)) ^ (safe_rshift_func_int16_t_s_s(((void*)0 != &l_1157), ((l_550[1] >= (GROUP_DIVERGE(0, 1) == (--(*l_1324)))) <= ((safe_sub_func_uint64_t_u_u(GROUP_DIVERGE(2, 1), 0x6597ACD2819D7E1FL)) ^ l_1191[7][4][0])))));
    }
    else
    { /* block id: 675 */
        uint8_t l_1330 = 1UL;
        int32_t ****l_1337 = &l_657;
        int32_t *****l_1336[1][7][1];
        int32_t *****l_1338 = &l_1337;
        int32_t l_1339 = (-4L);
        int32_t l_1341 = (-1L);
        int32_t l_1343 = (-1L);
        int32_t l_1344 = 0x1C4BB283L;
        int32_t l_1346 = 0L;
        int32_t l_1347 = 0x26DBF4F4L;
        int32_t l_1348 = 1L;
        int32_t l_1349 = 0x1786B23BL;
        int32_t l_1350 = (-7L);
        int32_t l_1351 = 1L;
        int32_t l_1352 = 1L;
        int32_t l_1358 = 4L;
        int32_t l_1359 = 7L;
        int32_t l_1360 = (-3L);
        int32_t l_1361 = 6L;
        int32_t l_1362 = 0x22789BF2L;
        int32_t l_1363 = (-1L);
        int32_t l_1365[9] = {1L,0x357F7100L,1L,1L,0x357F7100L,1L,1L,0x357F7100L,1L};
        uint16_t l_1400 = 0x22A9L;
        uint16_t *****l_1423 = (void*)0;
        int64_t *l_1443[1][10][3] = {{{&p_2854->g_341,&p_2854->g_830,&p_2854->g_830},{&p_2854->g_341,&p_2854->g_830,&p_2854->g_830},{&p_2854->g_341,&p_2854->g_830,&p_2854->g_830},{&p_2854->g_341,&p_2854->g_830,&p_2854->g_830},{&p_2854->g_341,&p_2854->g_830,&p_2854->g_830},{&p_2854->g_341,&p_2854->g_830,&p_2854->g_830},{&p_2854->g_341,&p_2854->g_830,&p_2854->g_830},{&p_2854->g_341,&p_2854->g_830,&p_2854->g_830},{&p_2854->g_341,&p_2854->g_830,&p_2854->g_830},{&p_2854->g_341,&p_2854->g_830,&p_2854->g_830}}};
        uint32_t l_1458 = 0xC38C6536L;
        uint8_t **l_1510 = (void*)0;
        int32_t l_1541 = 1L;
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 7; j++)
            {
                for (k = 0; k < 1; k++)
                    l_1336[i][j][k] = &l_1337;
            }
        }
        if (l_1330)
        { /* block id: 676 */
            l_1331 = (*p_77);
            (*p_77) = l_1332[4];
        }
        else
        { /* block id: 679 */
            int32_t ******l_1334 = (void*)0;
            int32_t ******l_1335[4] = {&p_2854->g_1333,&p_2854->g_1333,&p_2854->g_1333,&p_2854->g_1333};
            int32_t l_1340 = 0x03BC9189L;
            int32_t l_1342 = (-6L);
            int32_t l_1345[10];
            uint16_t l_1353 = 0xB04EL;
            int i;
            for (i = 0; i < 10; i++)
                l_1345[i] = 1L;
            for (p_2854->g_3 = 0; p_2854->g_3 < 4; p_2854->g_3 += 1)
            {
                l_550[p_2854->g_3] = 0x24BC7CF3L;
            }
            (*l_1331) |= ((l_1336[0][1][0] = p_2854->g_1333) == (l_1338 = &l_1337));
            ++l_1353;
            (*p_2854->g_646) = 1L;
        }
        --l_1367;
        for (l_507 = 0; (l_507 >= (-18)); l_507 = safe_sub_func_uint64_t_u_u(l_507, 1))
        { /* block id: 690 */
            int64_t l_1372[7];
            int32_t l_1373 = (-7L);
            uint32_t l_1394 = 0xCB0AC14EL;
            int32_t l_1453 = 9L;
            int32_t l_1454 = 1L;
            int32_t l_1455 = 4L;
            int32_t l_1456 = 0x3B7CF4CAL;
            int32_t l_1457[3][9] = {{(-1L),0x79D5A8EFL,(-1L),(-1L),0x79D5A8EFL,(-1L),(-1L),0x79D5A8EFL,(-1L)},{(-1L),0x79D5A8EFL,(-1L),(-1L),0x79D5A8EFL,(-1L),(-1L),0x79D5A8EFL,(-1L)},{(-1L),0x79D5A8EFL,(-1L),(-1L),0x79D5A8EFL,(-1L),(-1L),0x79D5A8EFL,(-1L)}};
            int32_t **l_1485 = &p_2854->g_122[1];
            uint16_t **l_1507[8];
            int i, j;
            for (i = 0; i < 7; i++)
                l_1372[i] = 0x4BE1EE5BF4F9F433L;
            for (i = 0; i < 8; i++)
                l_1507[i] = &p_2854->g_179;
            l_1373 |= l_1372[6];
        }
    }
    l_1555 = ((p_2854->g_1554 = ((*l_1552) = &p_2854->g_145)) == &p_2854->g_145);
    return p_76;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint32_t * func_78(int64_t  p_79, uint64_t  p_80, int32_t ** p_81, uint64_t  p_82, struct S0 * p_2854)
{ /* block id: 259 */
    uint32_t *l_483[4];
    int i;
    for (i = 0; i < 4; i++)
        l_483[i] = &p_2854->g_23;
    return l_483[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_2854->g_351 p_2854->g_9 p_2854->g_23 p_2854->g_341 p_2854->g_249 p_2854->g_36 p_2854->g_2 p_2854->g_179 p_2854->g_115 p_2854->g_167 p_2854->g_132 p_2854->g_400 p_2854->g_3 p_2854->g_145 p_2854->g_258
 * writes: p_2854->g_351 p_2854->g_178 p_2854->g_145 p_2854->g_36 p_2854->g_115 p_2854->g_132 p_2854->g_249 p_2854->g_122 p_2854->g_400 p_2854->g_439 p_2854->g_451 p_2854->g_453 p_2854->g_167
 */
int16_t  func_93(uint32_t * p_94, int32_t  p_95, int32_t ** p_96, int32_t * p_97, struct S0 * p_2854)
{ /* block id: 172 */
    uint8_t l_349 = 0x0BL;
    uint32_t *l_350 = &p_2854->g_351;
    uint16_t **l_362 = &p_2854->g_179;
    uint16_t ***l_363 = &p_2854->g_178;
    int16_t *l_366 = &p_2854->g_145;
    int32_t *l_367 = &p_2854->g_36;
    uint16_t l_372 = 0x561DL;
    int32_t **l_375 = &l_367;
    uint32_t *l_387[3][10] = {{&p_2854->g_23,&p_2854->g_23,&p_2854->g_23,&p_2854->g_23,(void*)0,&p_2854->g_23,&p_2854->g_23,&p_2854->g_23,&p_2854->g_23,&p_2854->g_23},{&p_2854->g_23,&p_2854->g_23,&p_2854->g_23,&p_2854->g_23,(void*)0,&p_2854->g_23,&p_2854->g_23,&p_2854->g_23,&p_2854->g_23,&p_2854->g_23},{&p_2854->g_23,&p_2854->g_23,&p_2854->g_23,&p_2854->g_23,(void*)0,&p_2854->g_23,&p_2854->g_23,&p_2854->g_23,&p_2854->g_23,&p_2854->g_23}};
    uint32_t **l_386[4][1][6];
    int32_t l_391[8];
    int64_t l_392 = 0x38DC0A0A953E3AA3L;
    int32_t l_393 = 0x5989AD27L;
    int32_t l_422 = 0L;
    uint64_t *l_449 = (void*)0;
    int32_t l_461 = 0x6895BFC8L;
    uint64_t l_466 = 0x761255775F2979F3L;
    int32_t *l_470 = &p_2854->g_453;
    int32_t **l_469 = &l_470;
    uint16_t l_481 = 0xB694L;
    int i, j, k;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 6; k++)
                l_386[i][j][k] = &l_387[2][6];
        }
    }
    for (i = 0; i < 8; i++)
        l_391[i] = 0x65FC8E73L;
    (*l_367) &= (((safe_mul_func_int8_t_s_s(l_349, ((++(*l_350)) == l_349))) && (p_2854->g_9 >= ((((*l_366) = ((p_2854->g_23 || (safe_sub_func_int32_t_s_s(((l_349 > (((safe_mul_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u((safe_lshift_func_int16_t_s_s(((l_362 != ((*l_363) = &p_2854->g_179)) , p_95), 1)), (safe_mod_func_int64_t_s_s(p_2854->g_341, 0x07A445A750B496DEL)))), p_95)) == 0L) != p_95)) ^ p_2854->g_249), 0xAF1AD423L))) || l_349)) != l_349) <= l_349))) != l_349);
    l_367 = l_367;
    if (((*p_94) , (safe_lshift_func_uint16_t_u_u((safe_mod_func_uint16_t_u_u(((((*l_375) = ((++l_372) , &p_2854->g_4)) != ((safe_add_func_int16_t_s_s((+p_2854->g_249), ((((*l_366) = (safe_sub_func_uint8_t_u_u((p_95 != (safe_mod_func_int64_t_s_s(0x310EE9FE0C1EAA6CL, (18446744073709551606UL ^ p_2854->g_2)))), (255UL & (((((*p_2854->g_179)++) < ((((((safe_div_func_int16_t_s_s((l_386[2][0][3] != &l_387[0][3]), l_349)) == GROUP_DIVERGE(2, 1)) < (-5L)) | p_95) ^ (-9L)) < p_2854->g_36)) >= 1UL) >= 0x1A2A051C5BF27620L))))) | p_2854->g_36) , p_2854->g_249))) , &p_95)) <= 0x41L), p_95)), p_95))))
    { /* block id: 182 */
        for (p_2854->g_36 = 0; (p_2854->g_36 != (-26)); --p_2854->g_36)
        { /* block id: 185 */
            return p_2854->g_167;
        }
    }
    else
    { /* block id: 188 */
        int32_t *l_390[6][7][3] = {{{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36}},{{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36}},{{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36}},{{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36}},{{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36}},{{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36},{&p_2854->g_9,&p_2854->g_36,&p_2854->g_36}}};
        uint16_t l_394 = 1UL;
        int32_t ***l_471 = &l_469;
        int i, j, k;
        ++l_394;
        for (p_2854->g_132 = 0; (p_2854->g_132 <= 7); p_2854->g_132 += 1)
        { /* block id: 192 */
            uint8_t *l_425 = (void*)0;
            uint8_t **l_424 = &l_425;
            uint32_t l_448 = 4294967295UL;
            int32_t l_460[3];
            int i;
            for (i = 0; i < 3; i++)
                l_460[i] = 0L;
            l_391[p_2854->g_132] = 0L;
            for (l_394 = 0; (l_394 <= 5); l_394 += 1)
            { /* block id: 196 */
                int8_t l_423 = 0x6EL;
                uint16_t ***l_438 = &p_2854->g_178;
                int32_t *l_457 = &l_391[0];
                int32_t l_462 = 0x4120BF92L;
                int32_t l_465 = 0x45F5D95BL;
                for (p_2854->g_145 = 0; (p_2854->g_145 <= 5); p_2854->g_145 += 1)
                { /* block id: 199 */
                    for (p_2854->g_249 = 1; (p_2854->g_249 <= 7); p_2854->g_249 += 1)
                    { /* block id: 202 */
                        int8_t *l_399 = &p_2854->g_400;
                        int32_t l_421 = (-5L);
                        uint8_t ***l_426 = &l_424;
                        int i, j, k;
                        p_2854->g_122[5] = &l_391[(l_394 + 1)];
                        (*l_426) = (l_391[p_2854->g_132] , ((safe_mul_func_int8_t_s_s(((*l_399) &= l_391[p_2854->g_132]), (((safe_sub_func_uint8_t_u_u(0UL, (safe_rshift_func_int16_t_s_u(((safe_sub_func_uint8_t_u_u((p_2854->g_351 != l_391[(l_394 + 1)]), l_391[(l_394 + 1)])) ^ (((safe_div_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u((safe_mul_func_uint16_t_u_u(((safe_mul_func_int8_t_s_s(((safe_lshift_func_uint16_t_u_u(0UL, 13)) >= (safe_rshift_func_int8_t_s_u((p_95 , (l_421 = (safe_div_func_uint16_t_u_u((p_2854->g_23 , p_95), GROUP_DIVERGE(1, 1))))), p_2854->g_3))), 7UL)) <= p_2854->g_145), p_2854->g_341)), l_422)), l_391[p_2854->g_132])) > p_95) & l_423)), 5)))) == l_391[p_2854->g_132]) & p_2854->g_167))) , l_424));
                    }
                }
                for (l_422 = 8; (l_422 < (-12)); --l_422)
                { /* block id: 211 */
                    int32_t *l_429 = (void*)0;
                    uint16_t ***l_436 = (void*)0;
                    uint16_t ****l_437[5] = {&l_436,&l_436,&l_436,&l_436,&l_436};
                    uint64_t *l_450[9][9] = {{&p_2854->g_451[2][2][4],&p_2854->g_451[0][0][0],&p_2854->g_451[4][2][4],&p_2854->g_451[4][2][4],&p_2854->g_451[0][2][0],&p_2854->g_451[1][4][3],&p_2854->g_451[1][2][1],&p_2854->g_451[4][2][4],&p_2854->g_451[4][2][4]},{&p_2854->g_451[2][2][4],&p_2854->g_451[0][0][0],&p_2854->g_451[4][2][4],&p_2854->g_451[4][2][4],&p_2854->g_451[0][2][0],&p_2854->g_451[1][4][3],&p_2854->g_451[1][2][1],&p_2854->g_451[4][2][4],&p_2854->g_451[4][2][4]},{&p_2854->g_451[2][2][4],&p_2854->g_451[0][0][0],&p_2854->g_451[4][2][4],&p_2854->g_451[4][2][4],&p_2854->g_451[0][2][0],&p_2854->g_451[1][4][3],&p_2854->g_451[1][2][1],&p_2854->g_451[4][2][4],&p_2854->g_451[4][2][4]},{&p_2854->g_451[2][2][4],&p_2854->g_451[0][0][0],&p_2854->g_451[4][2][4],&p_2854->g_451[4][2][4],&p_2854->g_451[0][2][0],&p_2854->g_451[1][4][3],&p_2854->g_451[1][2][1],&p_2854->g_451[4][2][4],&p_2854->g_451[4][2][4]},{&p_2854->g_451[2][2][4],&p_2854->g_451[0][0][0],&p_2854->g_451[4][2][4],&p_2854->g_451[4][2][4],&p_2854->g_451[0][2][0],&p_2854->g_451[1][4][3],&p_2854->g_451[1][2][1],&p_2854->g_451[4][2][4],&p_2854->g_451[4][2][4]},{&p_2854->g_451[2][2][4],&p_2854->g_451[0][0][0],&p_2854->g_451[4][2][4],&p_2854->g_451[4][2][4],&p_2854->g_451[0][2][0],&p_2854->g_451[1][4][3],&p_2854->g_451[1][2][1],&p_2854->g_451[4][2][4],&p_2854->g_451[4][2][4]},{&p_2854->g_451[2][2][4],&p_2854->g_451[0][0][0],&p_2854->g_451[4][2][4],&p_2854->g_451[4][2][4],&p_2854->g_451[0][2][0],&p_2854->g_451[1][4][3],&p_2854->g_451[1][2][1],&p_2854->g_451[4][2][4],&p_2854->g_451[4][2][4]},{&p_2854->g_451[2][2][4],&p_2854->g_451[0][0][0],&p_2854->g_451[4][2][4],&p_2854->g_451[4][2][4],&p_2854->g_451[0][2][0],&p_2854->g_451[1][4][3],&p_2854->g_451[1][2][1],&p_2854->g_451[4][2][4],&p_2854->g_451[4][2][4]},{&p_2854->g_451[2][2][4],&p_2854->g_451[0][0][0],&p_2854->g_451[4][2][4],&p_2854->g_451[4][2][4],&p_2854->g_451[0][2][0],&p_2854->g_451[1][4][3],&p_2854->g_451[1][2][1],&p_2854->g_451[4][2][4],&p_2854->g_451[4][2][4]}};
                    int32_t *l_452 = &p_2854->g_453;
                    int32_t l_454 = 0x243C3185L;
                    int i, j;
                    (*l_375) = l_429;
                    l_454 &= (((*l_452) = ((p_2854->g_451[2][4][3] = ((((*l_366) |= ((((safe_sub_func_int64_t_s_s((safe_lshift_func_int16_t_s_u(l_391[p_2854->g_132], 1)), 0x0BE94F84AA7D7F79L)) >= ((safe_lshift_func_uint16_t_u_u(65531UL, ((((l_363 = (p_2854->g_439 = (l_438 = l_436))) != (void*)0) < (safe_mul_func_uint8_t_u_u((((((void*)0 != (*l_375)) != (safe_sub_func_int32_t_s_s(((safe_div_func_int16_t_s_s((p_95 > (safe_mod_func_uint64_t_u_u(((((l_448 == p_95) , (*p_94)) , p_2854->g_258) && p_95), 0x686B2E86ED72C7CAL))), 1L)) < GROUP_DIVERGE(1, 1)), 0L))) ^ p_95) == p_95), 0x7FL))) >= 1L))) , l_423)) , l_438) != (void*)0)) , l_449) != &p_2854->g_167)) , (-1L))) , (-5L));
                }
                for (p_2854->g_167 = 0; (p_2854->g_167 < 13); p_2854->g_167 = safe_add_func_uint8_t_u_u(p_2854->g_167, 4))
                { /* block id: 223 */
                    int8_t l_458 = (-1L);
                    int32_t l_459 = 0x3FA238B3L;
                    int32_t l_463 = (-6L);
                    int32_t l_464[4][4][7] = {{{(-1L),(-1L),(-1L),(-1L),(-4L),(-1L),0x7F4850D2L},{(-1L),(-1L),(-1L),(-1L),(-4L),(-1L),0x7F4850D2L},{(-1L),(-1L),(-1L),(-1L),(-4L),(-1L),0x7F4850D2L},{(-1L),(-1L),(-1L),(-1L),(-4L),(-1L),0x7F4850D2L}},{{(-1L),(-1L),(-1L),(-1L),(-4L),(-1L),0x7F4850D2L},{(-1L),(-1L),(-1L),(-1L),(-4L),(-1L),0x7F4850D2L},{(-1L),(-1L),(-1L),(-1L),(-4L),(-1L),0x7F4850D2L},{(-1L),(-1L),(-1L),(-1L),(-4L),(-1L),0x7F4850D2L}},{{(-1L),(-1L),(-1L),(-1L),(-4L),(-1L),0x7F4850D2L},{(-1L),(-1L),(-1L),(-1L),(-4L),(-1L),0x7F4850D2L},{(-1L),(-1L),(-1L),(-1L),(-4L),(-1L),0x7F4850D2L},{(-1L),(-1L),(-1L),(-1L),(-4L),(-1L),0x7F4850D2L}},{{(-1L),(-1L),(-1L),(-1L),(-4L),(-1L),0x7F4850D2L},{(-1L),(-1L),(-1L),(-1L),(-4L),(-1L),0x7F4850D2L},{(-1L),(-1L),(-1L),(-1L),(-4L),(-1L),0x7F4850D2L},{(-1L),(-1L),(-1L),(-1L),(-4L),(-1L),0x7F4850D2L}}};
                    int i, j, k;
                    for (l_392 = 0; (l_392 <= 2); l_392 += 1)
                    { /* block id: 226 */
                        int i, j, k;
                        l_390[l_394][l_394][l_392] = l_457;
                    }
                    for (l_448 = 2; (l_448 <= 6); l_448 += 1)
                    { /* block id: 231 */
                        int i;
                        (*l_457) = 9L;
                        (*l_457) ^= (-9L);
                        l_458 = (*l_457);
                    }
                    ++l_466;
                    (*l_375) = (void*)0;
                }
            }
        }
        (*l_471) = l_469;
        for (p_95 = 0; (p_95 == 7); ++p_95)
        { /* block id: 244 */
            uint64_t l_478 = 0x6FA7869CCB512BF8L;
            for (p_2854->g_249 = 0; (p_2854->g_249 == 49); p_2854->g_249 = safe_add_func_uint8_t_u_u(p_2854->g_249, 5))
            { /* block id: 247 */
                (*l_375) = &p_95;
            }
            for (l_422 = 0; (l_422 < 21); l_422 = safe_add_func_int32_t_s_s(l_422, 8))
            { /* block id: 252 */
                ++l_478;
            }
            if (p_95)
                continue;
        }
    }
    return l_481;
}


/* ------------------------------------------ */
/* 
 * reads : p_2854->g_36 p_2854->g_9
 * writes: p_2854->g_36
 */
uint16_t  func_98(int32_t  p_99, uint32_t  p_100, uint32_t * p_101, uint32_t  p_102, uint32_t  p_103, struct S0 * p_2854)
{ /* block id: 30 */
    int32_t **l_133 = &p_2854->g_122[3];
    int32_t l_169 = 0x7028F5B5L;
    int32_t *l_170 = (void*)0;
    uint16_t *l_175 = &p_2854->g_115;
    uint16_t **l_174 = &l_175;
    uint16_t **l_180[4] = {&l_175,&l_175,&l_175,&l_175};
    int32_t *l_217[10] = {&p_2854->g_9,&l_169,&p_2854->g_9,&p_2854->g_9,&l_169,&p_2854->g_9,&p_2854->g_9,&l_169,&p_2854->g_9,&p_2854->g_9};
    int16_t l_315 = (-1L);
    uint16_t l_344 = 8UL;
    int i;
    for (p_103 = (-20); (p_103 != 41); p_103 = safe_add_func_int32_t_s_s(p_103, 1))
    { /* block id: 33 */
        uint16_t *l_113 = (void*)0;
        uint16_t *l_114[5][3] = {{&p_2854->g_115,&p_2854->g_115,&p_2854->g_115},{&p_2854->g_115,&p_2854->g_115,&p_2854->g_115},{&p_2854->g_115,&p_2854->g_115,&p_2854->g_115},{&p_2854->g_115,&p_2854->g_115,&p_2854->g_115},{&p_2854->g_115,&p_2854->g_115,&p_2854->g_115}};
        int32_t *l_120[3][3] = {{&p_2854->g_4,&p_2854->g_4,&p_2854->g_4},{&p_2854->g_4,&p_2854->g_4,&p_2854->g_4},{&p_2854->g_4,&p_2854->g_4,&p_2854->g_4}};
        int32_t **l_121[1];
        int8_t *l_131 = &p_2854->g_132;
        int32_t l_134[1];
        uint32_t l_143 = 0xDEFFE84FL;
        int64_t l_194 = 0x7392A451E7E789F1L;
        uint64_t l_195 = 18446744073709551611UL;
        uint32_t l_220 = 0x7685B39BL;
        uint16_t l_225 = 0UL;
        uint32_t *l_240[6] = {&p_2854->g_23,&p_2854->g_23,&p_2854->g_23,&p_2854->g_23,&p_2854->g_23,&p_2854->g_23};
        uint32_t **l_239 = &l_240[2];
        int i, j;
        for (i = 0; i < 1; i++)
            l_121[i] = &l_120[1][1];
        for (i = 0; i < 1; i++)
            l_134[i] = (-1L);
        (1 + 1);
    }
    for (p_103 = 18; (p_103 <= 7); --p_103)
    { /* block id: 159 */
        int32_t l_326[6] = {0x07354037L,0x07354037L,0x07354037L,0x07354037L,0x07354037L,0x07354037L};
        int32_t l_329 = (-1L);
        int32_t l_331 = 0x585A9F62L;
        uint8_t l_332 = 1UL;
        int64_t *l_340[6] = {&p_2854->g_341,(void*)0,&p_2854->g_341,&p_2854->g_341,(void*)0,&p_2854->g_341};
        int i;
        for (p_2854->g_36 = 1; (p_2854->g_36 == 10); p_2854->g_36 = safe_add_func_uint64_t_u_u(p_2854->g_36, 1))
        { /* block id: 162 */
            int32_t l_327 = 0x06B53757L;
            int32_t l_328 = (-1L);
            int32_t l_330 = 1L;
            int64_t *l_337 = (void*)0;
            uint64_t l_342 = 0xB66839CFADB96242L;
            uint32_t l_343 = 0x0B2A8E6DL;
            l_332--;
            l_328 = p_99;
            l_343 |= (l_342 = (p_100 < (p_2854->g_9 == ((0x438856BD9A530B49L >= (((((p_102 || p_99) & (safe_rshift_func_int16_t_s_u((l_337 != ((safe_add_func_int32_t_s_s((l_330 & 0x0209L), p_100)) , l_340[5])), p_102))) == 1UL) || 0x08EC6FF2L) | 0x5DL)) & p_103))));
        }
    }
    return l_344;
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S0 c_2855;
    struct S0* p_2854 = &c_2855;
    struct S0 c_2856 = {
        0L, // p_2854->g_2
        0x052061F6L, // p_2854->g_3
        9L, // p_2854->g_4
        0x022E6E7FL, // p_2854->g_9
        0xF7L, // p_2854->g_14
        0xB0420410L, // p_2854->g_23
        (void*)0, // p_2854->g_30
        0x0B01197BL, // p_2854->g_36
        0x32AF72DA61EB6136L, // p_2854->g_49
        1UL, // p_2854->g_115
        {&p_2854->g_36,&p_2854->g_36,&p_2854->g_36,&p_2854->g_36,&p_2854->g_36,&p_2854->g_36,&p_2854->g_36}, // p_2854->g_122
        (-1L), // p_2854->g_132
        0L, // p_2854->g_145
        (void*)0, // p_2854->g_147
        &p_2854->g_147, // p_2854->g_146
        0x0C0CC138C4916DE7L, // p_2854->g_167
        &p_2854->g_115, // p_2854->g_179
        &p_2854->g_179, // p_2854->g_178
        18446744073709551615UL, // p_2854->g_249
        0x96L, // p_2854->g_258
        {{{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132}},{{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132}},{{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132}},{{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132}},{{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132}},{{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132},{(void*)0,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132,&p_2854->g_132}}}, // p_2854->g_309
        0xDBE33949L, // p_2854->g_319
        0x623BDBF143CC1BD8L, // p_2854->g_341
        0xADD1B521L, // p_2854->g_351
        (-5L), // p_2854->g_400
        (void*)0, // p_2854->g_439
        {{{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L}},{{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L}},{{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L}},{{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L}},{{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L}},{{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L}},{{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L}},{{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L}},{{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L}},{{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L}}}, // p_2854->g_451
        (-1L), // p_2854->g_453
        &p_2854->g_9, // p_2854->g_485
        {&p_2854->g_485,&p_2854->g_485,&p_2854->g_485,&p_2854->g_485,&p_2854->g_485,&p_2854->g_485,&p_2854->g_485,&p_2854->g_485,&p_2854->g_485,&p_2854->g_485}, // p_2854->g_484
        1UL, // p_2854->g_523
        65532UL, // p_2854->g_551
        0x5BC09765CB335A1FL, // p_2854->g_570
        (-1L), // p_2854->g_576
        (-4L), // p_2854->g_578
        &p_2854->g_36, // p_2854->g_646
        &p_2854->g_145, // p_2854->g_716
        {{{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL}},{{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL}},{{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL}},{{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL}}}, // p_2854->g_737
        0UL, // p_2854->g_740
        (void*)0, // p_2854->g_752
        &p_2854->g_752, // p_2854->g_751
        1L, // p_2854->g_805
        (void*)0, // p_2854->g_808
        &p_2854->g_808, // p_2854->g_807
        0x11853D63E5708AEBL, // p_2854->g_830
        1L, // p_2854->g_851
        {{{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439}},{{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439}},{{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439}},{{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439}},{{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439},{&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439,&p_2854->g_439}}}, // p_2854->g_873
        &p_2854->g_873[2][2][1], // p_2854->g_872
        (void*)0, // p_2854->g_878
        &p_2854->g_453, // p_2854->g_888
        &p_2854->g_888, // p_2854->g_887
        {&p_2854->g_36,&p_2854->g_36,&p_2854->g_36,&p_2854->g_36}, // p_2854->g_962
        {&p_2854->g_36,&p_2854->g_36,&p_2854->g_36,&p_2854->g_36}, // p_2854->g_963
        &p_2854->g_36, // p_2854->g_964
        (void*)0, // p_2854->g_1074
        (void*)0, // p_2854->g_1160
        {&p_2854->g_36,&p_2854->g_36,&p_2854->g_36,&p_2854->g_36,&p_2854->g_36,&p_2854->g_36}, // p_2854->g_1161
        &p_2854->g_258, // p_2854->g_1170
        &p_2854->g_1170, // p_2854->g_1169
        1UL, // p_2854->g_1256
        &p_2854->g_36, // p_2854->g_1329
        (void*)0, // p_2854->g_1333
        {0x33L,0x33L,0x33L,0x33L,0x33L,0x33L}, // p_2854->g_1544
        &p_2854->g_145, // p_2854->g_1554
        9UL, // p_2854->g_1594
        {&p_2854->g_132}, // p_2854->g_1609
        &p_2854->g_1609[0], // p_2854->g_1608
        &p_2854->g_36, // p_2854->g_1618
        (-4L), // p_2854->g_1688
        &p_2854->g_570, // p_2854->g_1708
        0x4943L, // p_2854->g_1786
        0x7FC78472L, // p_2854->g_1908
        0x28L, // p_2854->g_1912
        1L, // p_2854->g_1921
        7UL, // p_2854->g_1965
        0x1CL, // p_2854->g_2078
        {{4294967288UL,0x07250694L,2UL},{4294967288UL,0x07250694L,2UL},{4294967288UL,0x07250694L,2UL},{4294967288UL,0x07250694L,2UL},{4294967288UL,0x07250694L,2UL},{4294967288UL,0x07250694L,2UL},{4294967288UL,0x07250694L,2UL},{4294967288UL,0x07250694L,2UL}}, // p_2854->g_2125
        0x4C7CBBD14A7E2BE1L, // p_2854->g_2143
        {(-9L),(-9L),(-9L),(-9L),(-9L)}, // p_2854->g_2198
        (void*)0, // p_2854->g_2212
        {1L,(-1L),1L,1L,(-1L),1L,1L,(-1L),1L}, // p_2854->g_2365
        (void*)0, // p_2854->g_2393
        {&p_2854->g_484[2],&p_2854->g_484[2],&p_2854->g_484[2]}, // p_2854->g_2440
        &p_2854->g_2440[1], // p_2854->g_2439
        &p_2854->g_2440[1], // p_2854->g_2442
        255UL, // p_2854->g_2486
        1UL, // p_2854->g_2595
        0x622DL, // p_2854->g_2619
        &p_2854->g_873[0][4][1], // p_2854->g_2645
        (-1L), // p_2854->g_2647
        &p_2854->g_2365[7], // p_2854->g_2668
        &p_2854->g_2668, // p_2854->g_2667
        6UL, // p_2854->g_2676
        {3UL,3UL,3UL,3UL,3UL,3UL,3UL,3UL,3UL,3UL}, // p_2854->g_2679
        (void*)0, // p_2854->g_2692
        &p_2854->g_2692, // p_2854->g_2691
        &p_2854->g_2691, // p_2854->g_2690
        &p_2854->g_2668, // p_2854->g_2699
        &p_2854->g_147, // p_2854->g_2706
        {{{&p_2854->g_2706,&p_2854->g_2706,&p_2854->g_2706,&p_2854->g_2706}},{{&p_2854->g_2706,&p_2854->g_2706,&p_2854->g_2706,&p_2854->g_2706}},{{&p_2854->g_2706,&p_2854->g_2706,&p_2854->g_2706,&p_2854->g_2706}},{{&p_2854->g_2706,&p_2854->g_2706,&p_2854->g_2706,&p_2854->g_2706}},{{&p_2854->g_2706,&p_2854->g_2706,&p_2854->g_2706,&p_2854->g_2706}},{{&p_2854->g_2706,&p_2854->g_2706,&p_2854->g_2706,&p_2854->g_2706}},{{&p_2854->g_2706,&p_2854->g_2706,&p_2854->g_2706,&p_2854->g_2706}},{{&p_2854->g_2706,&p_2854->g_2706,&p_2854->g_2706,&p_2854->g_2706}}}, // p_2854->g_2705
        (void*)0, // p_2854->g_2740
        0x452A5C2DL, // p_2854->g_2796
        0xE53155E3L, // p_2854->g_2821
        0, // p_2854->v_collective
        sequence_input[get_global_id(0)], // p_2854->global_0_offset
        sequence_input[get_global_id(1)], // p_2854->global_1_offset
        sequence_input[get_global_id(2)], // p_2854->global_2_offset
        sequence_input[get_local_id(0)], // p_2854->local_0_offset
        sequence_input[get_local_id(1)], // p_2854->local_1_offset
        sequence_input[get_local_id(2)], // p_2854->local_2_offset
        sequence_input[get_group_id(0)], // p_2854->group_0_offset
        sequence_input[get_group_id(1)], // p_2854->group_1_offset
        sequence_input[get_group_id(2)], // p_2854->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_2855 = c_2856;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2854);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2854->g_2, "p_2854->g_2", print_hash_value);
    transparent_crc(p_2854->g_3, "p_2854->g_3", print_hash_value);
    transparent_crc(p_2854->g_4, "p_2854->g_4", print_hash_value);
    transparent_crc(p_2854->g_9, "p_2854->g_9", print_hash_value);
    transparent_crc(p_2854->g_14, "p_2854->g_14", print_hash_value);
    transparent_crc(p_2854->g_23, "p_2854->g_23", print_hash_value);
    transparent_crc(p_2854->g_36, "p_2854->g_36", print_hash_value);
    transparent_crc(p_2854->g_49, "p_2854->g_49", print_hash_value);
    transparent_crc(p_2854->g_115, "p_2854->g_115", print_hash_value);
    transparent_crc(p_2854->g_132, "p_2854->g_132", print_hash_value);
    transparent_crc(p_2854->g_145, "p_2854->g_145", print_hash_value);
    transparent_crc(p_2854->g_167, "p_2854->g_167", print_hash_value);
    transparent_crc(p_2854->g_249, "p_2854->g_249", print_hash_value);
    transparent_crc(p_2854->g_258, "p_2854->g_258", print_hash_value);
    transparent_crc(p_2854->g_319, "p_2854->g_319", print_hash_value);
    transparent_crc(p_2854->g_341, "p_2854->g_341", print_hash_value);
    transparent_crc(p_2854->g_351, "p_2854->g_351", print_hash_value);
    transparent_crc(p_2854->g_400, "p_2854->g_400", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_2854->g_451[i][j][k], "p_2854->g_451[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2854->g_453, "p_2854->g_453", print_hash_value);
    transparent_crc(p_2854->g_523, "p_2854->g_523", print_hash_value);
    transparent_crc(p_2854->g_551, "p_2854->g_551", print_hash_value);
    transparent_crc(p_2854->g_570, "p_2854->g_570", print_hash_value);
    transparent_crc(p_2854->g_576, "p_2854->g_576", print_hash_value);
    transparent_crc(p_2854->g_578, "p_2854->g_578", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_2854->g_737[i][j][k], "p_2854->g_737[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2854->g_740, "p_2854->g_740", print_hash_value);
    transparent_crc(p_2854->g_805, "p_2854->g_805", print_hash_value);
    transparent_crc(p_2854->g_830, "p_2854->g_830", print_hash_value);
    transparent_crc(p_2854->g_851, "p_2854->g_851", print_hash_value);
    transparent_crc(p_2854->g_1256, "p_2854->g_1256", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_2854->g_1544[i], "p_2854->g_1544[i]", print_hash_value);

    }
    transparent_crc(p_2854->g_1594, "p_2854->g_1594", print_hash_value);
    transparent_crc(p_2854->g_1688, "p_2854->g_1688", print_hash_value);
    transparent_crc(p_2854->g_1786, "p_2854->g_1786", print_hash_value);
    transparent_crc(p_2854->g_1908, "p_2854->g_1908", print_hash_value);
    transparent_crc(p_2854->g_1912, "p_2854->g_1912", print_hash_value);
    transparent_crc(p_2854->g_1921, "p_2854->g_1921", print_hash_value);
    transparent_crc(p_2854->g_1965, "p_2854->g_1965", print_hash_value);
    transparent_crc(p_2854->g_2078, "p_2854->g_2078", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_2854->g_2125[i][j], "p_2854->g_2125[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2854->g_2143, "p_2854->g_2143", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_2854->g_2198[i], "p_2854->g_2198[i]", print_hash_value);

    }
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_2854->g_2365[i], "p_2854->g_2365[i]", print_hash_value);

    }
    transparent_crc(p_2854->g_2486, "p_2854->g_2486", print_hash_value);
    transparent_crc(p_2854->g_2595, "p_2854->g_2595", print_hash_value);
    transparent_crc(p_2854->g_2619, "p_2854->g_2619", print_hash_value);
    transparent_crc(p_2854->g_2647, "p_2854->g_2647", print_hash_value);
    transparent_crc(p_2854->g_2676, "p_2854->g_2676", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2854->g_2679[i], "p_2854->g_2679[i]", print_hash_value);

    }
    transparent_crc(p_2854->g_2796, "p_2854->g_2796", print_hash_value);
    transparent_crc(p_2854->g_2821, "p_2854->g_2821", print_hash_value);
    transparent_crc(p_2854->v_collective, "p_2854->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
