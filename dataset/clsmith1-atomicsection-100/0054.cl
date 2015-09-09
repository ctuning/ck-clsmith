// --atomics 67 ---fake_divergence -g 58,44,1 -l 1,44,1
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


// Seed: 54

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int8_t g_15[5][7][1];
    uint16_t g_17;
    uint16_t g_32;
    uint16_t *g_31;
    int8_t g_33;
    int32_t g_35[1];
    uint32_t g_193[6][8][5];
    uint32_t g_197;
    int64_t g_199;
    int64_t g_212[1];
    int64_t *g_213;
    int32_t * volatile g_214;
    uint8_t g_230;
    uint16_t g_275[5][7][2];
    uint64_t g_284;
    int32_t * volatile g_332;
    uint16_t g_398;
    int16_t g_400;
    int32_t g_403[8];
    int32_t * volatile g_402;
    int32_t * volatile * volatile g_478;
    int32_t * volatile * volatile * volatile g_477[3];
    uint64_t g_479;
    volatile uint8_t g_537;
    volatile uint8_t *g_536;
    volatile uint8_t * volatile *g_535;
    volatile uint8_t * volatile ** volatile g_538;
    int32_t *g_605;
    int32_t ** volatile g_604;
    int32_t g_651[3][10];
    int32_t g_652;
    int32_t g_653;
    int32_t g_654;
    int32_t g_655;
    int32_t g_656[3][5];
    int32_t g_657;
    int32_t g_658;
    int32_t g_659;
    int32_t g_660;
    int32_t g_661[4];
    int32_t g_662;
    int32_t g_663;
    int32_t g_664;
    int32_t g_665;
    int32_t g_666;
    int32_t g_667;
    int32_t g_668;
    int32_t g_669;
    int32_t g_670;
    int32_t * volatile g_650[4][4][8];
    uint8_t *g_721;
    int32_t ** volatile g_726;
    int32_t ** volatile g_730;
    int32_t ** volatile g_741;
    int16_t g_749[8][8];
    volatile int32_t g_775[9][8];
    int32_t g_776;
    int16_t g_782;
    uint32_t g_798;
    int8_t g_801[7][9];
    int16_t g_803;
    int32_t * volatile g_830;
    int32_t ** volatile g_855;
    uint8_t g_874;
    uint8_t g_879;
    int8_t *g_924;
    int8_t **g_923;
    uint16_t g_968;
    uint8_t **g_986[3][2][5];
    uint8_t ***g_985;
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
int64_t  func_1(struct S0 * p_1058);
int32_t  func_2(int32_t  p_3, int64_t  p_4, struct S0 * p_1058);
uint16_t  func_5(uint32_t  p_6, uint32_t  p_7, uint64_t  p_8, int32_t  p_9, struct S0 * p_1058);
int16_t  func_18(uint16_t * p_19, uint16_t * p_20, uint64_t  p_21, uint16_t * p_22, struct S0 * p_1058);
uint16_t * func_23(int32_t  p_24, uint16_t * p_25, uint16_t * p_26, uint64_t  p_27, int8_t  p_28, struct S0 * p_1058);
uint16_t * func_29(uint16_t * p_30, struct S0 * p_1058);
uint64_t  func_45(uint16_t  p_46, int32_t * p_47, struct S0 * p_1058);
uint64_t  func_48(int16_t * p_49, int32_t * p_50, int64_t  p_51, uint64_t  p_52, int32_t  p_53, struct S0 * p_1058);
int16_t * func_54(uint64_t  p_55, uint64_t  p_56, int16_t  p_57, struct S0 * p_1058);
uint8_t  func_62(int32_t  p_63, uint32_t  p_64, struct S0 * p_1058);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1058->g_15 p_1058->g_17 p_1058->g_31 p_1058->g_33 p_1058->g_35 p_1058->g_32 p_1058->g_197 p_1058->g_199 p_1058->g_214 p_1058->g_230 p_1058->g_212 p_1058->g_193 p_1058->g_332 p_1058->g_275 p_1058->g_398 p_1058->g_284 p_1058->g_400 p_1058->g_402 p_1058->g_403 p_1058->g_535 p_1058->g_538 p_1058->g_536 p_1058->g_537 p_1058->g_749 p_1058->g_721 p_1058->g_661 p_1058->g_775 p_1058->g_666 p_1058->g_657 p_1058->g_660 p_1058->g_653 p_1058->g_782 p_1058->g_656 p_1058->g_663 p_1058->g_798 p_1058->g_605 p_1058->g_655 p_1058->g_669 p_1058->g_730 p_1058->g_479 p_1058->g_667 p_1058->g_652 p_1058->g_604 p_1058->g_855 p_1058->g_659 p_1058->g_874 p_1058->g_670 p_1058->g_803 p_1058->g_923 p_1058->g_924 p_1058->g_664 p_1058->g_968 p_1058->g_651 p_1058->g_985 p_1058->g_665 p_1058->g_801
 * writes: p_1058->g_17 p_1058->g_33 p_1058->g_193 p_1058->g_197 p_1058->g_199 p_1058->g_213 p_1058->g_35 p_1058->g_230 p_1058->g_275 p_1058->g_284 p_1058->g_400 p_1058->g_403 p_1058->g_535 p_1058->g_32 p_1058->g_398 p_1058->g_15 p_1058->g_479 p_1058->g_776 p_1058->g_660 p_1058->g_749 p_1058->g_782 p_1058->g_801 p_1058->g_803 p_1058->g_663 p_1058->g_656 p_1058->g_652 p_1058->g_667 p_1058->g_605 p_1058->g_874 p_1058->g_670 p_1058->g_664 p_1058->g_985 p_1058->g_659 p_1058->g_212
 */
int64_t  func_1(struct S0 * p_1058)
{ /* block id: 4 */
    int8_t l_12 = 0x00L;
    uint16_t *l_16 = &p_1058->g_17;
    uint16_t **l_769[10][3] = {{&p_1058->g_31,&l_16,&l_16},{&p_1058->g_31,&l_16,&l_16},{&p_1058->g_31,&l_16,&l_16},{&p_1058->g_31,&l_16,&l_16},{&p_1058->g_31,&l_16,&l_16},{&p_1058->g_31,&l_16,&l_16},{&p_1058->g_31,&l_16,&l_16},{&p_1058->g_31,&l_16,&l_16},{&p_1058->g_31,&l_16,&l_16},{&p_1058->g_31,&l_16,&l_16}};
    int8_t l_800 = 0L;
    int32_t *l_804 = &p_1058->g_667;
    uint32_t l_810 = 0x1DE0F61EL;
    uint64_t l_826 = 18446744073709551610UL;
    int32_t l_892[4];
    uint8_t l_905 = 248UL;
    int32_t l_940 = 0x259B9598L;
    uint8_t **l_1047 = (void*)0;
    uint8_t *l_1053 = &p_1058->g_230;
    uint16_t *l_1055 = (void*)0;
    int i, j;
    for (i = 0; i < 4; i++)
        l_892[i] = 0x2C00481EL;
    if (func_2((func_5((safe_lshift_func_int16_t_s_u(l_12, 15)), (safe_mul_func_int8_t_s_s(p_1058->g_15[0][2][0], ((0x2D714F98CAFA32FDL == p_1058->g_15[1][0][0]) < (((*l_16) &= l_12) < (!func_18(l_16, func_23(l_12, func_29(p_1058->g_31, p_1058), l_16, p_1058->g_15[0][5][0], p_1058->g_35[0], p_1058), p_1058->g_212[0], &p_1058->g_32, p_1058)))))), p_1058->g_212[0], p_1058->g_15[2][5][0], p_1058) >= GROUP_DIVERGE(0, 1)), p_1058->g_212[0], p_1058))
    { /* block id: 557 */
        int8_t l_748 = 0x6AL;
        int8_t *l_758[9][3][3] = {{{&p_1058->g_15[3][2][0],&p_1058->g_33,&p_1058->g_15[2][0][0]},{&p_1058->g_15[3][2][0],&p_1058->g_33,&p_1058->g_15[2][0][0]},{&p_1058->g_15[3][2][0],&p_1058->g_33,&p_1058->g_15[2][0][0]}},{{&p_1058->g_15[3][2][0],&p_1058->g_33,&p_1058->g_15[2][0][0]},{&p_1058->g_15[3][2][0],&p_1058->g_33,&p_1058->g_15[2][0][0]},{&p_1058->g_15[3][2][0],&p_1058->g_33,&p_1058->g_15[2][0][0]}},{{&p_1058->g_15[3][2][0],&p_1058->g_33,&p_1058->g_15[2][0][0]},{&p_1058->g_15[3][2][0],&p_1058->g_33,&p_1058->g_15[2][0][0]},{&p_1058->g_15[3][2][0],&p_1058->g_33,&p_1058->g_15[2][0][0]}},{{&p_1058->g_15[3][2][0],&p_1058->g_33,&p_1058->g_15[2][0][0]},{&p_1058->g_15[3][2][0],&p_1058->g_33,&p_1058->g_15[2][0][0]},{&p_1058->g_15[3][2][0],&p_1058->g_33,&p_1058->g_15[2][0][0]}},{{&p_1058->g_15[3][2][0],&p_1058->g_33,&p_1058->g_15[2][0][0]},{&p_1058->g_15[3][2][0],&p_1058->g_33,&p_1058->g_15[2][0][0]},{&p_1058->g_15[3][2][0],&p_1058->g_33,&p_1058->g_15[2][0][0]}},{{&p_1058->g_15[3][2][0],&p_1058->g_33,&p_1058->g_15[2][0][0]},{&p_1058->g_15[3][2][0],&p_1058->g_33,&p_1058->g_15[2][0][0]},{&p_1058->g_15[3][2][0],&p_1058->g_33,&p_1058->g_15[2][0][0]}},{{&p_1058->g_15[3][2][0],&p_1058->g_33,&p_1058->g_15[2][0][0]},{&p_1058->g_15[3][2][0],&p_1058->g_33,&p_1058->g_15[2][0][0]},{&p_1058->g_15[3][2][0],&p_1058->g_33,&p_1058->g_15[2][0][0]}},{{&p_1058->g_15[3][2][0],&p_1058->g_33,&p_1058->g_15[2][0][0]},{&p_1058->g_15[3][2][0],&p_1058->g_33,&p_1058->g_15[2][0][0]},{&p_1058->g_15[3][2][0],&p_1058->g_33,&p_1058->g_15[2][0][0]}},{{&p_1058->g_15[3][2][0],&p_1058->g_33,&p_1058->g_15[2][0][0]},{&p_1058->g_15[3][2][0],&p_1058->g_33,&p_1058->g_15[2][0][0]},{&p_1058->g_15[3][2][0],&p_1058->g_33,&p_1058->g_15[2][0][0]}}};
        uint16_t **l_771 = (void*)0;
        uint16_t ***l_770[5][5][3] = {{{&l_771,&l_771,&l_769[4][1]},{&l_771,&l_771,&l_769[4][1]},{&l_771,&l_771,&l_769[4][1]},{&l_771,&l_771,&l_769[4][1]},{&l_771,&l_771,&l_769[4][1]}},{{&l_771,&l_771,&l_769[4][1]},{&l_771,&l_771,&l_769[4][1]},{&l_771,&l_771,&l_769[4][1]},{&l_771,&l_771,&l_769[4][1]},{&l_771,&l_771,&l_769[4][1]}},{{&l_771,&l_771,&l_769[4][1]},{&l_771,&l_771,&l_769[4][1]},{&l_771,&l_771,&l_769[4][1]},{&l_771,&l_771,&l_769[4][1]},{&l_771,&l_771,&l_769[4][1]}},{{&l_771,&l_771,&l_769[4][1]},{&l_771,&l_771,&l_769[4][1]},{&l_771,&l_771,&l_769[4][1]},{&l_771,&l_771,&l_769[4][1]},{&l_771,&l_771,&l_769[4][1]}},{{&l_771,&l_771,&l_769[4][1]},{&l_771,&l_771,&l_769[4][1]},{&l_771,&l_771,&l_769[4][1]},{&l_771,&l_771,&l_769[4][1]},{&l_771,&l_771,&l_769[4][1]}}};
        uint16_t **l_772 = &l_16;
        uint64_t l_773 = 0x49101421401D64C4L;
        uint64_t *l_774 = &p_1058->g_479;
        int64_t **l_815 = &p_1058->g_213;
        uint16_t l_877 = 0xB12CL;
        int32_t l_891 = (-4L);
        int32_t l_893 = 1L;
        int32_t l_896 = 0x1A83FB3FL;
        int32_t l_897 = 0L;
        int32_t l_900 = 0x6D17ABFFL;
        int32_t l_901 = 0x2AAC73DCL;
        int32_t l_904 = 0L;
        uint16_t l_931 = 0x49FDL;
        uint8_t **l_948[7][9] = {{&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721},{&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721},{&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721},{&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721},{&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721},{&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721},{&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721,&p_1058->g_721}};
        int16_t *l_998 = &p_1058->g_803;
        uint8_t ***l_1009[9] = {&p_1058->g_986[1][1][1],&p_1058->g_986[0][1][1],&p_1058->g_986[1][1][1],&p_1058->g_986[1][1][1],&p_1058->g_986[0][1][1],&p_1058->g_986[1][1][1],&p_1058->g_986[1][1][1],&p_1058->g_986[0][1][1],&p_1058->g_986[1][1][1]};
        uint8_t ****l_1008 = &l_1009[8];
        int i, j, k;
        if ((safe_rshift_func_uint8_t_u_s(((safe_mod_func_int8_t_s_s(((!p_1058->g_33) != ((safe_div_func_uint32_t_u_u(l_748, p_1058->g_749[7][1])) , (safe_lshift_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u((l_12 || (safe_lshift_func_uint8_t_u_u(((*p_1058->g_721) = l_748), 0))), 6)), ((safe_lshift_func_int8_t_s_u(((p_1058->g_776 = ((((*l_774) = (((p_1058->g_15[0][2][0] = p_1058->g_199) , ((safe_add_func_uint64_t_u_u((safe_mul_func_int8_t_s_s((safe_lshift_func_int16_t_s_s((safe_sub_func_uint64_t_u_u((safe_div_func_int16_t_s_s((l_12 , (l_769[0][0] == (l_772 = &p_1058->g_31))), 0xF586L)), p_1058->g_661[3])), 1)), l_12)), l_773)) , GROUP_DIVERGE(1, 1))) , 18446744073709551607UL)) == p_1058->g_775[2][6]) && l_12)) , p_1058->g_666), 1)) && p_1058->g_657))))), 0x69L)) , (**p_1058->g_535)), 5)))
        { /* block id: 563 */
            uint8_t ***l_797 = (void*)0;
            int32_t l_799 = 0x6B069D58L;
            for (p_1058->g_660 = 0; (p_1058->g_660 <= 2); p_1058->g_660 += 1)
            { /* block id: 566 */
                int16_t *l_779 = (void*)0;
                int16_t *l_780 = &p_1058->g_749[1][5];
                int16_t *l_781 = &p_1058->g_782;
                int16_t *l_802 = &p_1058->g_803;
                int32_t l_805 = (-5L);
                int32_t l_880 = 9L;
                (*p_1058->g_605) = (((*l_781) |= ((*l_780) = (p_1058->g_400 = (safe_lshift_func_int16_t_s_u(p_1058->g_653, 7))))) == ((*l_802) = (p_1058->g_801[4][2] = (safe_mul_func_uint8_t_u_u(((*p_1058->g_721) = (safe_mul_func_uint8_t_u_u((**p_1058->g_535), (~((((safe_mul_func_int8_t_s_s(((((((safe_div_func_int64_t_s_s((0L || ((((safe_lshift_func_int16_t_s_u(((p_1058->g_479 = 0UL) , p_1058->g_275[0][3][0]), (((0x487D133F4F7A6FB6L <= p_1058->g_32) ^ (safe_rshift_func_int8_t_s_u(l_773, 4))) >= (safe_lshift_func_int8_t_s_u((p_1058->g_15[1][0][0] , p_1058->g_656[1][1]), 1))))) , l_12) , p_1058->g_663) && l_12)), l_748)) != GROUP_DIVERGE(1, 1)) & l_12) , l_797) == l_797) | p_1058->g_661[0]), 0x2EL)) || p_1058->g_798) , l_799) & 0L))))), l_800)))));
                if ((*p_1058->g_605))
                { /* block id: 575 */
                    uint8_t l_829 = 0xF7L;
                    int32_t *l_836 = &p_1058->g_661[3];
                    for (p_1058->g_663 = 2; (p_1058->g_663 >= 0); p_1058->g_663 -= 1)
                    { /* block id: 578 */
                        int64_t **l_814 = &p_1058->g_213;
                        int64_t ***l_813 = &l_814;
                        int32_t *l_831 = &p_1058->g_652;
                        uint32_t *l_839 = (void*)0;
                        uint32_t *l_840 = &p_1058->g_197;
                        int i, j;
                        l_804 = &p_1058->g_656[p_1058->g_660][(p_1058->g_660 + 2)];
                        if (l_805)
                            break;
                        (*l_831) = (0UL < ((safe_div_func_int32_t_s_s(((**p_1058->g_730) &= (p_1058->g_656[p_1058->g_663][(p_1058->g_660 + 2)] = (18446744073709551608UL == (((((safe_mod_func_uint32_t_u_u(l_810, (safe_mod_func_int16_t_s_s((((*l_813) = &p_1058->g_213) == l_815), (safe_rshift_func_int16_t_s_s(p_1058->g_655, 0)))))) , (FAKE_DIVERGE(p_1058->group_2_offset, get_group_id(2), 10) , (safe_rshift_func_int8_t_s_u(p_1058->g_669, 4)))) <= (((((safe_mul_func_int8_t_s_s((safe_rshift_func_int16_t_s_u((safe_mod_func_int8_t_s_s(l_826, ((*p_1058->g_721)++))), 1)), (0UL != 0x4E3E702DC33FACC2L))) & l_748) > l_799) , &p_1058->g_803) != (void*)0)) , l_805) | l_805)))), l_829)) ^ p_1058->g_655));
                        (*l_831) = (((((*l_774)--) & 8L) & (0x33L >= ((*p_1058->g_31) && (safe_rshift_func_uint8_t_u_s(((2UL && ((void*)0 == l_836)) ^ (safe_add_func_int8_t_s_s((((0x3ED5L != 0xDD4EL) , ((*l_840) = (l_805 != 0UL))) <= GROUP_DIVERGE(2, 1)), (*p_1058->g_536)))), 4))))) != l_805);
                    }
                }
                else
                { /* block id: 590 */
                    if ((*l_804))
                        break;
                }
                (*p_1058->g_605) = (((*p_1058->g_332) & (*l_804)) >= (safe_sub_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), (safe_unary_minus_func_int64_t_s(((~(safe_lshift_func_uint16_t_u_s((safe_sub_func_int16_t_s_s(l_805, (safe_sub_func_int16_t_s_s((-7L), (++(**l_772)))))), 5))) != p_1058->g_479))))));
                for (p_1058->g_33 = 0; (p_1058->g_33 <= 2); p_1058->g_33 += 1)
                { /* block id: 597 */
                    uint32_t l_854 = 0UL;
                    for (p_1058->g_652 = 0; (p_1058->g_652 <= 2); p_1058->g_652 += 1)
                    { /* block id: 600 */
                        (*l_804) |= ((p_1058->g_749[3][3] , (--(*p_1058->g_31))) >= l_854);
                        (*p_1058->g_605) ^= l_854;
                    }
                    for (l_800 = 0; (l_800 <= 2); l_800 += 1)
                    { /* block id: 607 */
                        (*p_1058->g_855) = (*p_1058->g_604);
                    }
                    for (p_1058->g_32 = 0; (p_1058->g_32 <= 2); p_1058->g_32 += 1)
                    { /* block id: 612 */
                        int32_t l_858 = 0L;
                        uint64_t l_873 = 1UL;
                        int16_t l_875[2];
                        uint32_t *l_876[4];
                        uint8_t *l_878[4][7] = {{&p_1058->g_879,(void*)0,&p_1058->g_879,&p_1058->g_879,(void*)0,&p_1058->g_879,&p_1058->g_879},{&p_1058->g_879,(void*)0,&p_1058->g_879,&p_1058->g_879,(void*)0,&p_1058->g_879,&p_1058->g_879},{&p_1058->g_879,(void*)0,&p_1058->g_879,&p_1058->g_879,(void*)0,&p_1058->g_879,&p_1058->g_879},{&p_1058->g_879,(void*)0,&p_1058->g_879,&p_1058->g_879,(void*)0,&p_1058->g_879,&p_1058->g_879}};
                        int i, j, k;
                        for (i = 0; i < 2; i++)
                            l_875[i] = 0x6ECFL;
                        for (i = 0; i < 4; i++)
                            l_876[i] = &l_810;
                        if (l_854)
                            break;
                        (*p_1058->g_605) = ((((safe_rshift_func_uint8_t_u_u(FAKE_DIVERGE(p_1058->group_0_offset, get_group_id(0), 10), 4)) ^ l_799) ^ (l_880 ^= (((*p_1058->g_536) >= ((((void*)0 != l_758[p_1058->g_32][p_1058->g_660][p_1058->g_660]) & l_858) | ((l_877 ^= (((~(safe_div_func_int64_t_s_s(((((safe_mod_func_int32_t_s_s((~(((safe_div_func_uint8_t_u_u((((((safe_lshift_func_uint8_t_u_u(((*p_1058->g_721) = (safe_lshift_func_int16_t_s_s((p_1058->g_874 |= ((safe_add_func_uint32_t_u_u((p_1058->g_197 = ((safe_mul_func_uint8_t_u_u(l_854, ((void*)0 != &p_1058->g_605))) < (l_873 >= p_1058->g_659))), GROUP_DIVERGE(2, 1))) <= l_805)), l_854))), l_748)) || l_875[0]) , &p_1058->g_665) != l_804) >= l_799), 0x13L)) >= (*p_1058->g_31)) | 1L)), l_875[0])) >= p_1058->g_661[0]) , 0x7F65FC6EBAACE174L) , l_858), 0x96B515B7AD8FC26CL))) & p_1058->g_212[0]) && l_799)) & (-1L)))) , 0xE6L))) , 0L);
                    }
                }
            }
        }
        else
        { /* block id: 623 */
            int32_t **l_881 = &p_1058->g_605;
            int32_t **l_883 = &l_804;
            int32_t ***l_882 = &l_883;
            int32_t l_890 = 0x7FBB99C9L;
            int32_t l_894 = 0x5A66A6E9L;
            int32_t l_895 = 0x2014191CL;
            int32_t l_898 = 0x7F6FBA62L;
            int32_t l_899 = 0x48F5497CL;
            int32_t l_902 = 0x6736E8F5L;
            int32_t l_903[4][9] = {{(-9L),0x2AE8C6DBL,(-9L),(-9L),0x2AE8C6DBL,(-9L),(-9L),0x2AE8C6DBL,(-9L)},{(-9L),0x2AE8C6DBL,(-9L),(-9L),0x2AE8C6DBL,(-9L),(-9L),0x2AE8C6DBL,(-9L)},{(-9L),0x2AE8C6DBL,(-9L),(-9L),0x2AE8C6DBL,(-9L),(-9L),0x2AE8C6DBL,(-9L)},{(-9L),0x2AE8C6DBL,(-9L),(-9L),0x2AE8C6DBL,(-9L),(-9L),0x2AE8C6DBL,(-9L)}};
            uint32_t *l_932 = (void*)0;
            int32_t *l_936 = &p_1058->g_655;
            int32_t *l_937 = (void*)0;
            int32_t *l_938[10] = {&p_1058->g_658,&p_1058->g_653,&p_1058->g_658,&p_1058->g_658,&p_1058->g_653,&p_1058->g_658,&p_1058->g_658,&p_1058->g_653,&p_1058->g_658,&p_1058->g_658};
            int64_t l_939[4][9][1] = {{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}}};
            uint16_t l_941 = 0UL;
            int64_t *l_963 = &p_1058->g_199;
            uint32_t l_964[2][6][9] = {{{0xD16A2494L,0x5A346B4EL,0x984DA817L,0x5E0C2050L,0x984DA817L,0x5A346B4EL,0xD16A2494L,0xFE8186A2L,0UL},{0xD16A2494L,0x5A346B4EL,0x984DA817L,0x5E0C2050L,0x984DA817L,0x5A346B4EL,0xD16A2494L,0xFE8186A2L,0UL},{0xD16A2494L,0x5A346B4EL,0x984DA817L,0x5E0C2050L,0x984DA817L,0x5A346B4EL,0xD16A2494L,0xFE8186A2L,0UL},{0xD16A2494L,0x5A346B4EL,0x984DA817L,0x5E0C2050L,0x984DA817L,0x5A346B4EL,0xD16A2494L,0xFE8186A2L,0UL},{0xD16A2494L,0x5A346B4EL,0x984DA817L,0x5E0C2050L,0x984DA817L,0x5A346B4EL,0xD16A2494L,0xFE8186A2L,0UL},{0xD16A2494L,0x5A346B4EL,0x984DA817L,0x5E0C2050L,0x984DA817L,0x5A346B4EL,0xD16A2494L,0xFE8186A2L,0UL}},{{0xD16A2494L,0x5A346B4EL,0x984DA817L,0x5E0C2050L,0x984DA817L,0x5A346B4EL,0xD16A2494L,0xFE8186A2L,0UL},{0xD16A2494L,0x5A346B4EL,0x984DA817L,0x5E0C2050L,0x984DA817L,0x5A346B4EL,0xD16A2494L,0xFE8186A2L,0UL},{0xD16A2494L,0x5A346B4EL,0x984DA817L,0x5E0C2050L,0x984DA817L,0x5A346B4EL,0xD16A2494L,0xFE8186A2L,0UL},{0xD16A2494L,0x5A346B4EL,0x984DA817L,0x5E0C2050L,0x984DA817L,0x5A346B4EL,0xD16A2494L,0xFE8186A2L,0UL},{0xD16A2494L,0x5A346B4EL,0x984DA817L,0x5E0C2050L,0x984DA817L,0x5A346B4EL,0xD16A2494L,0xFE8186A2L,0UL},{0xD16A2494L,0x5A346B4EL,0x984DA817L,0x5E0C2050L,0x984DA817L,0x5A346B4EL,0xD16A2494L,0xFE8186A2L,0UL}}};
            int32_t l_965 = 0x41B5F165L;
            int i, j, k;
            (*p_1058->g_332) = (l_881 != ((*l_882) = &p_1058->g_605));
            for (p_1058->g_670 = 0; (p_1058->g_670 < 8); p_1058->g_670 = safe_add_func_int16_t_s_s(p_1058->g_670, 6))
            { /* block id: 628 */
                int8_t l_886[5][3] = {{7L,7L,7L},{7L,7L,7L},{7L,7L,7L},{7L,7L,7L},{7L,7L,7L}};
                int32_t *l_887[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int32_t l_888 = 0x37F57A6EL;
                int8_t l_889 = 1L;
                int8_t l_929[3];
                int i, j;
                for (i = 0; i < 3; i++)
                    l_929[i] = 9L;
                --l_905;
                for (p_1058->g_803 = 0; (p_1058->g_803 != 0); ++p_1058->g_803)
                { /* block id: 632 */
                    uint16_t l_930 = 9UL;
                    uint32_t *l_933 = &p_1058->g_197;
                    l_892[0] &= (safe_unary_minus_func_uint16_t_u((safe_div_func_int64_t_s_s(((safe_add_func_uint32_t_u_u((safe_lshift_func_uint16_t_u_u((safe_lshift_func_int8_t_s_s(p_1058->g_660, 3)), 11)), ((*l_933) = ((&p_1058->g_197 == (((((safe_mod_func_int32_t_s_s((*l_804), 1UL)) == ((safe_rshift_func_int16_t_s_u((((((void*)0 == p_1058->g_923) > (((safe_mul_func_uint16_t_u_u(0x3D27L, (*l_804))) <= (l_929[0] = ((*p_1058->g_31) = (safe_div_func_int16_t_s_s((+(((**p_1058->g_923) <= 4UL) != p_1058->g_655)), 0x7EEEL))))) , (**p_1058->g_535))) || l_930) >= p_1058->g_275[0][3][0]), p_1058->g_659)) , l_931)) , 4294967295UL) >= (***l_882)) , l_932)) & (*p_1058->g_721))))) ^ p_1058->g_35[0]), l_930))));
                    for (p_1058->g_664 = 0; (p_1058->g_664 >= 0); p_1058->g_664 = safe_add_func_int32_t_s_s(p_1058->g_664, 1))
                    { /* block id: 639 */
                        return l_930;
                    }
                    if ((*l_804))
                        break;
                    if ((**p_1058->g_855))
                        break;
                }
            }
            l_941--;
            (***l_882) = (p_1058->g_667 != (safe_lshift_func_int16_t_s_u((((**l_881) , ((void*)0 == l_948[0][1])) != ((safe_sub_func_int8_t_s_s(((safe_div_func_int64_t_s_s(((((safe_mod_func_uint32_t_u_u((((((((safe_div_func_int8_t_s_s(((safe_mul_func_uint8_t_u_u(((*p_1058->g_721) = ((((safe_mul_func_uint16_t_u_u((*p_1058->g_31), (safe_add_func_int32_t_s_s((GROUP_DIVERGE(1, 1) == ((*l_963) = p_1058->g_212[0])), 0UL)))) , &p_1058->g_535) != (void*)0) | (**p_1058->g_923))), (*p_1058->g_536))) , 1L), l_964[0][1][0])) > GROUP_DIVERGE(2, 1)) || (*l_936)) || p_1058->g_653) >= l_965) == (*p_1058->g_924)) || p_1058->g_32), (*l_804))) || p_1058->g_655) != 0L) != p_1058->g_661[3]), l_904)) || (*l_804)), (*p_1058->g_924))) < (**p_1058->g_923))), 2)));
        }
        (*p_1058->g_605) ^= ((*p_1058->g_31) || (safe_div_func_uint64_t_u_u(((p_1058->g_968 && l_904) , p_1058->g_479), (((safe_lshift_func_int16_t_s_u(((safe_mod_func_int32_t_s_s(l_877, ((((safe_mul_func_int16_t_s_s(0x00CAL, (*l_804))) && p_1058->g_651[0][3]) > (l_897 , 0L)) | p_1058->g_666))) == (-2L)), FAKE_DIVERGE(p_1058->group_0_offset, get_group_id(0), 10))) <= p_1058->g_656[1][1]) , p_1058->g_656[2][1]))));
        for (p_1058->g_479 = 1; (p_1058->g_479 <= 7); p_1058->g_479 += 1)
        { /* block id: 654 */
            uint8_t ****l_987 = &p_1058->g_985;
            uint32_t l_1007[4][9] = {{0xCCBBE681L,0x7EAB4D54L,0x6DE5D96EL,0x7EAB4D54L,0xCCBBE681L,0xCCBBE681L,0x7EAB4D54L,0x6DE5D96EL,0x7EAB4D54L},{0xCCBBE681L,0x7EAB4D54L,0x6DE5D96EL,0x7EAB4D54L,0xCCBBE681L,0xCCBBE681L,0x7EAB4D54L,0x6DE5D96EL,0x7EAB4D54L},{0xCCBBE681L,0x7EAB4D54L,0x6DE5D96EL,0x7EAB4D54L,0xCCBBE681L,0xCCBBE681L,0x7EAB4D54L,0x6DE5D96EL,0x7EAB4D54L},{0xCCBBE681L,0x7EAB4D54L,0x6DE5D96EL,0x7EAB4D54L,0xCCBBE681L,0xCCBBE681L,0x7EAB4D54L,0x6DE5D96EL,0x7EAB4D54L}};
            int i, j;
            if (p_1058->g_403[p_1058->g_479])
                break;
            (*p_1058->g_605) = (safe_add_func_uint16_t_u_u((l_897 == ((p_1058->g_284 ^= (((l_893 &= (safe_rshift_func_uint8_t_u_s(((*p_1058->g_721)--), 7))) | (safe_div_func_uint64_t_u_u((((safe_sub_func_uint64_t_u_u((&p_1058->g_535 != ((*l_987) = p_1058->g_985)), p_1058->g_403[p_1058->g_479])) ^ (safe_sub_func_int16_t_s_s(((safe_mul_func_uint16_t_u_u((safe_sub_func_int32_t_s_s(((((((((safe_mul_func_int16_t_s_s((((safe_div_func_int16_t_s_s((l_998 == ((safe_div_func_uint16_t_u_u(((0x70CAL ^ (safe_mod_func_int32_t_s_s((l_896 = 0x00CCD575L), ((*l_804) ^= (**p_1058->g_730))))) , ((*p_1058->g_31) = ((safe_sub_func_uint16_t_u_u(((safe_sub_func_uint64_t_u_u((l_948[5][3] != (void*)0), 18446744073709551606UL)) ^ p_1058->g_665), 0x37D8L)) > (*l_804)))), p_1058->g_398)) , (void*)0)), l_1007[1][8])) , p_1058->g_666) & l_1007[1][8]), 5UL)) , 0x0C6656DCF42528D5L) >= p_1058->g_403[p_1058->g_479]) | p_1058->g_403[p_1058->g_479]) > (-10L)) , (*l_804)) , &p_1058->g_538) != l_1008), (*p_1058->g_605))), p_1058->g_15[0][2][0])) < l_748), l_1007[3][3]))) & p_1058->g_651[0][5]), l_1007[2][4]))) | 1L)) < GROUP_DIVERGE(0, 1))), l_773));
            if ((atomic_inc(&p_1058->l_atomic_input[56]) == 8))
            { /* block id: 665 */
                int32_t l_1010 = 0L;
                for (l_1010 = 2; (l_1010 >= 0); l_1010 -= 1)
                { /* block id: 668 */
                    int32_t l_1011 = (-9L);
                    for (l_1011 = 0; (l_1011 <= 2); l_1011 += 1)
                    { /* block id: 671 */
                        uint64_t l_1012 = 18446744073709551615UL;
                        int64_t l_1013 = 0x1DBD4C1C6C50566BL;
                        int32_t l_1015[3];
                        int32_t *l_1014[10] = {&l_1015[1],&l_1015[1],&l_1015[1],&l_1015[1],&l_1015[1],&l_1015[1],&l_1015[1],&l_1015[1],&l_1015[1],&l_1015[1]};
                        int32_t *l_1016[4];
                        int32_t l_1017 = (-5L);
                        int8_t l_1018[6] = {0x0BL,(-1L),0x0BL,0x0BL,(-1L),0x0BL};
                        int32_t l_1019 = 7L;
                        int32_t l_1020[2];
                        int16_t l_1021 = 0x36A8L;
                        uint8_t l_1022 = 0xB6L;
                        int i;
                        for (i = 0; i < 3; i++)
                            l_1015[i] = 0L;
                        for (i = 0; i < 4; i++)
                            l_1016[i] = (void*)0;
                        for (i = 0; i < 2; i++)
                            l_1020[i] = 3L;
                        l_1016[1] = (l_1012 , (l_1013 , l_1014[8]));
                        l_1019 ^= (l_1017 , l_1018[0]);
                        l_1020[1] = 0x7E06C369L;
                        l_1022 ^= (l_1021 , (-1L));
                    }
                    for (l_1011 = 22; (l_1011 < 15); l_1011 = safe_sub_func_int32_t_s_s(l_1011, 2))
                    { /* block id: 679 */
                        int32_t l_1026 = 1L;
                        int32_t *l_1025 = &l_1026;
                        int32_t *l_1027 = (void*)0;
                        int32_t l_1028 = 0x639E056DL;
                        int16_t l_1029[5];
                        int32_t l_1030 = 0x761CAEDEL;
                        int32_t l_1031 = 0L;
                        int8_t l_1032[5][1] = {{0x6BL},{0x6BL},{0x6BL},{0x6BL},{0x6BL}};
                        uint32_t l_1033 = 4294967295UL;
                        int64_t l_1036 = 1L;
                        uint16_t l_1037[4][3] = {{0UL,0xB4BEL,0x1533L},{0UL,0xB4BEL,0x1533L},{0UL,0xB4BEL,0x1533L},{0UL,0xB4BEL,0x1533L}};
                        uint64_t l_1038 = 1UL;
                        uint16_t l_1039 = 6UL;
                        int64_t l_1040[9][6][2] = {{{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL}},{{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL}},{{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL}},{{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL}},{{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL}},{{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL}},{{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL}},{{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL}},{{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL},{0x21712405338FB70CL,0x6183270C9F9E4A5EL}}};
                        uint32_t l_1041 = 0xA1C60447L;
                        uint32_t l_1042 = 0xEB42791FL;
                        uint32_t l_1043 = 0x07B009C0L;
                        uint32_t **l_1044 = (void*)0;
                        int i, j, k;
                        for (i = 0; i < 5; i++)
                            l_1029[i] = 0x59B1L;
                        l_1027 = l_1025;
                        l_1042 |= ((l_1033--) , ((l_1040[4][5][1] = (((l_1037[0][1] = l_1036) , (l_1030 = l_1038)) , l_1039)) , l_1041));
                        l_1044 = (l_1043 , (void*)0);
                    }
                }
                unsigned int result = 0;
                result += l_1010;
                atomic_add(&p_1058->l_special_values[56], result);
            }
            else
            { /* block id: 689 */
                (1 + 1);
            }
        }
    }
    else
    { /* block id: 693 */
        uint32_t *l_1048 = &p_1058->g_193[0][4][1];
        uint8_t *l_1051 = &p_1058->g_879;
        uint8_t **l_1052 = (void*)0;
        uint16_t *l_1054 = &p_1058->g_968;
        int32_t l_1056 = 4L;
        int64_t *l_1057 = &p_1058->g_199;
        for (p_1058->g_659 = 0; p_1058->g_659 < 1; p_1058->g_659 += 1)
        {
            p_1058->g_212[p_1058->g_659] = (-5L);
        }
        (*p_1058->g_605) |= ((*l_804) , ((((((*l_1057) |= ((4294967293UL || 0x4BE29CB6L) ^ (safe_mul_func_uint8_t_u_u(((*l_804) = ((*p_1058->g_721) = (((void*)0 == l_1047) , (((*p_1058->g_31) > ((*p_1058->g_535) == (l_1053 = ((++(*l_1048)) , l_1051)))) == ((l_1055 = l_1054) != &p_1058->g_17))))), l_1056)))) | p_1058->g_801[1][4]) , p_1058->g_661[3]) , (*p_1058->g_924)) , l_1056));
        return p_1058->g_664;
    }
    return (*l_804);
}


/* ------------------------------------------ */
/* 
 * reads : p_1058->g_31 p_1058->g_32 p_1058->g_17 p_1058->g_535 p_1058->g_536 p_1058->g_537 p_1058->g_400 p_1058->g_212 p_1058->g_403 p_1058->g_398 p_1058->g_230 p_1058->g_538 p_1058->g_35
 * writes: p_1058->g_32 p_1058->g_17 p_1058->g_403 p_1058->g_398 p_1058->g_230 p_1058->g_197 p_1058->g_35
 */
int32_t  func_2(int32_t  p_3, int64_t  p_4, struct S0 * p_1058)
{ /* block id: 403 */
    int8_t *l_547 = &p_1058->g_15[0][2][0];
    int8_t **l_548 = (void*)0;
    int8_t **l_549 = &l_547;
    int32_t l_552 = 4L;
    uint16_t *l_559 = &p_1058->g_17;
    int32_t *l_560 = &p_1058->g_403[5];
    int32_t l_712 = 0x5A2037C6L;
    int32_t l_714[9][8] = {{0x6E31064EL,1L,1L,0x4A89F440L,5L,9L,0x2B43D407L,0x755A4503L},{0x6E31064EL,1L,1L,0x4A89F440L,5L,9L,0x2B43D407L,0x755A4503L},{0x6E31064EL,1L,1L,0x4A89F440L,5L,9L,0x2B43D407L,0x755A4503L},{0x6E31064EL,1L,1L,0x4A89F440L,5L,9L,0x2B43D407L,0x755A4503L},{0x6E31064EL,1L,1L,0x4A89F440L,5L,9L,0x2B43D407L,0x755A4503L},{0x6E31064EL,1L,1L,0x4A89F440L,5L,9L,0x2B43D407L,0x755A4503L},{0x6E31064EL,1L,1L,0x4A89F440L,5L,9L,0x2B43D407L,0x755A4503L},{0x6E31064EL,1L,1L,0x4A89F440L,5L,9L,0x2B43D407L,0x755A4503L},{0x6E31064EL,1L,1L,0x4A89F440L,5L,9L,0x2B43D407L,0x755A4503L}};
    uint32_t l_737 = 0x850E3412L;
    int i, j;
    (*l_560) &= (safe_lshift_func_int8_t_s_s((+((safe_sub_func_uint64_t_u_u(((p_3 > (safe_sub_func_uint64_t_u_u((l_552 = (((safe_sub_func_uint16_t_u_u((((*l_549) = l_547) == &p_1058->g_15[0][2][0]), (safe_div_func_int64_t_s_s(l_552, (-1L))))) , ((safe_div_func_int8_t_s_s(0x34L, (((safe_rshift_func_uint8_t_u_u(l_552, 0)) , (((*l_559) &= (++(*p_1058->g_31))) && (((**p_1058->g_535) & 0x2AL) , 65526UL))) , 0x40L))) , FAKE_DIVERGE(p_1058->local_2_offset, get_local_id(2), 10))) != p_4)), p_1058->g_400))) & p_1058->g_212[0]), 0UL)) , 0L)), 5));
    for (p_1058->g_398 = 0; (p_1058->g_398 >= 28); p_1058->g_398 = safe_add_func_int64_t_s_s(p_1058->g_398, 3))
    { /* block id: 411 */
        int64_t l_579 = 0x74DD88782CBD026FL;
        for (p_1058->g_230 = (-17); (p_1058->g_230 < 50); p_1058->g_230 = safe_add_func_int8_t_s_s(p_1058->g_230, 4))
        { /* block id: 414 */
            int32_t *l_574[2];
            int32_t **l_573 = &l_574[0];
            int i;
            for (i = 0; i < 2; i++)
                l_574[i] = &l_552;
            p_1058->g_35[0] ^= (((((safe_mod_func_int64_t_s_s(0L, ((*l_560) ^ (safe_add_func_int16_t_s_s((((-4L) == (0x0CL < (safe_lshift_func_uint8_t_u_s(0x7FL, 3)))) <= (safe_mul_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), (&l_552 != ((*l_573) = &l_552))))), ((safe_sub_func_int8_t_s_s((((p_1058->g_197 = GROUP_DIVERGE(0, 1)) | (safe_div_func_int8_t_s_s(0L, (((void*)0 == &l_552) || (*l_560))))) , l_579), (***p_1058->g_538))) >= l_579)))))) == (-1L)) ^ (*p_1058->g_31)) > 2UL) == p_1058->g_32);
            for (l_579 = 0; (l_579 <= 0); l_579 = safe_add_func_int32_t_s_s(l_579, 4))
            { /* block id: 420 */
                return p_4;
            }
            (*l_573) = (*l_573);
            if ((atomic_inc(&p_1058->g_atomic_input[67 * get_linear_group_id() + 14]) == 5))
            { /* block id: 425 */
                uint8_t l_582 = 0xD3L;
                uint64_t l_583 = 1UL;
                uint8_t l_584 = 0x57L;
                uint32_t l_594 = 0UL;
                int64_t l_595 = 0x531D12BA0A1505DAL;
                l_584 |= (l_582 , l_583);
                for (l_584 = (-8); (l_584 >= 49); l_584 = safe_add_func_uint8_t_u_u(l_584, 3))
                { /* block id: 429 */
                    int32_t l_587 = 0L;
                    for (l_587 = 1; (l_587 >= 0); l_587 -= 1)
                    { /* block id: 432 */
                        int16_t l_588[5];
                        uint32_t l_589 = 0x15FD69E5L;
                        uint32_t l_592 = 0UL;
                        uint8_t l_593 = 0x6BL;
                        int i;
                        for (i = 0; i < 5; i++)
                            l_588[i] = 0x580BL;
                        ++l_589;
                        l_593 ^= l_592;
                    }
                }
                for (l_582 = 0; l_582 < 2; l_582 += 1)
                {
                    l_574[l_582] = &l_552;
                }
                l_595 |= l_594;
                unsigned int result = 0;
                result += l_582;
                result += l_583;
                result += l_584;
                result += l_594;
                result += l_595;
                atomic_add(&p_1058->g_special_values[67 * get_linear_group_id() + 14], result);
            }
            else
            { /* block id: 439 */
                (1 + 1);
            }
        }
    }
    for (l_552 = 0; (l_552 == 4); l_552++)
    { /* block id: 446 */
        return p_3;
    }
    for (p_1058->g_32 = (-12); (p_1058->g_32 >= 18); p_1058->g_32++)
    { /* block id: 451 */
        int32_t *l_602 = &l_552;
        int32_t l_711 = (-1L);
        int32_t l_713[4];
        uint8_t *l_718[10][8] = {{&p_1058->g_230,&p_1058->g_230,&p_1058->g_230,&p_1058->g_230,&p_1058->g_230,(void*)0,&p_1058->g_230,&p_1058->g_230},{&p_1058->g_230,&p_1058->g_230,&p_1058->g_230,&p_1058->g_230,&p_1058->g_230,(void*)0,&p_1058->g_230,&p_1058->g_230},{&p_1058->g_230,&p_1058->g_230,&p_1058->g_230,&p_1058->g_230,&p_1058->g_230,(void*)0,&p_1058->g_230,&p_1058->g_230},{&p_1058->g_230,&p_1058->g_230,&p_1058->g_230,&p_1058->g_230,&p_1058->g_230,(void*)0,&p_1058->g_230,&p_1058->g_230},{&p_1058->g_230,&p_1058->g_230,&p_1058->g_230,&p_1058->g_230,&p_1058->g_230,(void*)0,&p_1058->g_230,&p_1058->g_230},{&p_1058->g_230,&p_1058->g_230,&p_1058->g_230,&p_1058->g_230,&p_1058->g_230,(void*)0,&p_1058->g_230,&p_1058->g_230},{&p_1058->g_230,&p_1058->g_230,&p_1058->g_230,&p_1058->g_230,&p_1058->g_230,(void*)0,&p_1058->g_230,&p_1058->g_230},{&p_1058->g_230,&p_1058->g_230,&p_1058->g_230,&p_1058->g_230,&p_1058->g_230,(void*)0,&p_1058->g_230,&p_1058->g_230},{&p_1058->g_230,&p_1058->g_230,&p_1058->g_230,&p_1058->g_230,&p_1058->g_230,(void*)0,&p_1058->g_230,&p_1058->g_230},{&p_1058->g_230,&p_1058->g_230,&p_1058->g_230,&p_1058->g_230,&p_1058->g_230,(void*)0,&p_1058->g_230,&p_1058->g_230}};
        int i, j;
        for (i = 0; i < 4; i++)
            l_713[i] = 0x7075AD3FL;
        (1 + 1);
    }
    return (*l_560);
}


/* ------------------------------------------ */
/* 
 * reads : p_1058->g_535 p_1058->g_538 p_1058->g_31 p_1058->g_32
 * writes: p_1058->g_535
 */
uint16_t  func_5(uint32_t  p_6, uint32_t  p_7, uint64_t  p_8, int32_t  p_9, struct S0 * p_1058)
{ /* block id: 393 */
    int32_t *l_512 = &p_1058->g_35[0];
    int32_t *l_513 = &p_1058->g_35[0];
    int32_t *l_514 = &p_1058->g_35[0];
    int32_t *l_515 = &p_1058->g_403[4];
    int32_t *l_516 = &p_1058->g_403[4];
    int32_t *l_517 = &p_1058->g_35[0];
    int32_t l_518 = 2L;
    int32_t *l_519 = (void*)0;
    int32_t *l_520 = &p_1058->g_403[4];
    int32_t l_521 = 3L;
    int32_t *l_522[2][5];
    uint64_t l_523[10] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL};
    int32_t **l_531 = (void*)0;
    int32_t **l_532 = (void*)0;
    int32_t **l_533 = (void*)0;
    int32_t **l_534 = &l_519;
    int i, j;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 5; j++)
            l_522[i][j] = &p_1058->g_35[0];
    }
    l_523[3]--;
    for (l_521 = 21; (l_521 < 6); l_521--)
    { /* block id: 397 */
        uint8_t l_528 = 0xB6L;
        ++l_528;
    }
    (*l_534) = (void*)0;
    (*p_1058->g_538) = p_1058->g_535;
    return (*p_1058->g_31);
}


/* ------------------------------------------ */
/* 
 * reads : p_1058->g_193 p_1058->g_199 p_1058->g_35 p_1058->g_275 p_1058->g_32 p_1058->g_33 p_1058->g_398 p_1058->g_284 p_1058->g_400 p_1058->g_31 p_1058->g_402 p_1058->g_403 p_1058->g_230
 * writes: p_1058->g_199 p_1058->g_33 p_1058->g_400 p_1058->g_403
 */
int16_t  func_18(uint16_t * p_19, uint16_t * p_20, uint64_t  p_21, uint16_t * p_22, struct S0 * p_1058)
{ /* block id: 246 */
    uint32_t l_381 = 4294967289UL;
    int32_t l_389 = 0x35749F27L;
    int32_t *l_435 = &l_389;
    int32_t **l_434 = &l_435;
    int32_t l_453 = 1L;
    uint16_t l_505 = 0xDFDFL;
    for (p_21 = 26; (p_21 >= 22); p_21 = safe_sub_func_uint8_t_u_u(p_21, 9))
    { /* block id: 249 */
        uint32_t l_388 = 0x391254DDL;
        int16_t l_409 = 0x1208L;
        int32_t l_422[7];
        int32_t **l_438 = (void*)0;
        uint32_t *l_443[3][8][2] = {{{(void*)0,&l_381},{(void*)0,&l_381},{(void*)0,&l_381},{(void*)0,&l_381},{(void*)0,&l_381},{(void*)0,&l_381},{(void*)0,&l_381},{(void*)0,&l_381}},{{(void*)0,&l_381},{(void*)0,&l_381},{(void*)0,&l_381},{(void*)0,&l_381},{(void*)0,&l_381},{(void*)0,&l_381},{(void*)0,&l_381},{(void*)0,&l_381}},{{(void*)0,&l_381},{(void*)0,&l_381},{(void*)0,&l_381},{(void*)0,&l_381},{(void*)0,&l_381},{(void*)0,&l_381},{(void*)0,&l_381},{(void*)0,&l_381}}};
        uint32_t l_454 = 0x7838C53BL;
        uint32_t l_501[3][4] = {{1UL,4294967295UL,4294967295UL,4294967295UL},{1UL,4294967295UL,4294967295UL,4294967295UL},{1UL,4294967295UL,4294967295UL,4294967295UL}};
        int i, j, k;
        for (i = 0; i < 7; i++)
            l_422[i] = 7L;
        if ((atomic_inc(&p_1058->g_atomic_input[67 * get_linear_group_id() + 32]) == 9))
        { /* block id: 251 */
            int8_t l_335 = 0x4DL;
            int64_t l_336 = 0x295C5AD12C46D36BL;
            int32_t l_337 = 1L;
            int16_t l_338[7];
            int32_t l_339[4];
            int32_t l_375 = 0x36C5BE27L;
            int32_t *l_374 = &l_375;
            int32_t *l_376 = &l_375;
            int i;
            for (i = 0; i < 7; i++)
                l_338[i] = 0x2E2BL;
            for (i = 0; i < 4; i++)
                l_339[i] = 0x7CA3CE02L;
            l_338[5] = (l_337 = (l_336 = l_335));
            if (l_339[1])
            { /* block id: 255 */
                int32_t *l_340 = (void*)0;
                int32_t l_341 = 4L;
                uint8_t l_353[10] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL};
                int i;
                l_340 = l_340;
                for (l_341 = 4; (l_341 >= 0); l_341 -= 1)
                { /* block id: 259 */
                    uint16_t l_342 = 0x24C2L;
                    uint32_t l_343 = 0xA007B856L;
                    uint8_t l_344 = 255UL;
                    uint32_t l_345[9] = {0xBDDECFCAL,0xBDDECFCAL,0xBDDECFCAL,0xBDDECFCAL,0xBDDECFCAL,0xBDDECFCAL,0xBDDECFCAL,0xBDDECFCAL,0xBDDECFCAL};
                    int16_t l_351 = 0L;
                    int64_t l_352[8] = {0x0AE69A04B8E30F78L,0x0AE69A04B8E30F78L,0x0AE69A04B8E30F78L,0x0AE69A04B8E30F78L,0x0AE69A04B8E30F78L,0x0AE69A04B8E30F78L,0x0AE69A04B8E30F78L,0x0AE69A04B8E30F78L};
                    int i;
                    l_343 = (l_342 = 0x71C0AFDAL);
                    l_345[0] = l_344;
                    for (l_343 = 0; (l_343 <= 4); l_343 += 1)
                    { /* block id: 265 */
                        int32_t l_347[6] = {(-2L),0x7351F476L,(-2L),(-2L),0x7351F476L,(-2L)};
                        int32_t *l_346 = &l_347[0];
                        uint32_t l_348 = 9UL;
                        int16_t l_349 = 0x0A0AL;
                        int32_t *l_350 = &l_347[1];
                        int i, j, k;
                        l_340 = l_346;
                        (*l_340) ^= 8L;
                        l_348 |= ((*l_340) |= ((l_345[5] = 0xA3427693L) , p_1058->g_193[l_343][(l_341 + 2)][l_343]));
                        l_340 = (l_350 = ((FAKE_DIVERGE(p_1058->group_2_offset, get_group_id(2), 10) , (l_349 = p_1058->g_193[l_341][(l_343 + 2)][l_341])) , l_350));
                    }
                    l_352[7] &= l_351;
                }
                if (l_353[1])
                { /* block id: 277 */
                    int32_t l_354 = 0x4DE9E411L;
                    int8_t l_355 = 3L;
                    int32_t l_356 = 0x23B7F192L;
                    int32_t *l_357 = &l_356;
                    l_341 = l_354;
                    l_340 = ((l_356 = (l_355 = l_355)) , l_357);
                }
                else
                { /* block id: 282 */
                    uint64_t l_358 = 0xA0FCE919ACDED3C5L;
                    int16_t l_359 = (-1L);
                    int32_t l_360 = 0x1FE0BC06L;
                    int32_t l_365 = 0L;
                    int32_t *l_364 = &l_365;
                    l_359 = (l_358 , (l_341 ^= (-1L)));
                    l_341 = l_360;
                    for (l_358 = 0; (l_358 <= 9); l_358 += 1)
                    { /* block id: 288 */
                        uint8_t l_361 = 3UL;
                        ++l_361;
                        l_341 = (-1L);
                    }
                    l_340 = l_364;
                }
            }
            else
            { /* block id: 294 */
                int64_t l_366 = 0x24062B610DE10790L;
                uint64_t l_367 = 18446744073709551613UL;
                int32_t l_370 = 0x1D951A8EL;
                int32_t *l_371 = (void*)0;
                int32_t *l_372 = &l_370;
                int32_t *l_373 = (void*)0;
                l_366 = 0L;
                ++l_367;
                l_373 = (l_372 = (l_370 , l_371));
            }
            l_376 = l_374;
            (*l_374) |= 0x59C50F79L;
            unsigned int result = 0;
            result += l_335;
            result += l_336;
            result += l_337;
            int l_338_i0;
            for (l_338_i0 = 0; l_338_i0 < 7; l_338_i0++) {
                result += l_338[l_338_i0];
            }
            int l_339_i0;
            for (l_339_i0 = 0; l_339_i0 < 4; l_339_i0++) {
                result += l_339[l_339_i0];
            }
            result += l_375;
            atomic_add(&p_1058->g_special_values[67 * get_linear_group_id() + 32], result);
        }
        else
        { /* block id: 302 */
            (1 + 1);
        }
        for (p_1058->g_199 = 10; (p_1058->g_199 > (-29)); p_1058->g_199--)
        { /* block id: 307 */
            uint64_t l_392[8][7][2] = {{{8UL,1UL},{8UL,1UL},{8UL,1UL},{8UL,1UL},{8UL,1UL},{8UL,1UL},{8UL,1UL}},{{8UL,1UL},{8UL,1UL},{8UL,1UL},{8UL,1UL},{8UL,1UL},{8UL,1UL},{8UL,1UL}},{{8UL,1UL},{8UL,1UL},{8UL,1UL},{8UL,1UL},{8UL,1UL},{8UL,1UL},{8UL,1UL}},{{8UL,1UL},{8UL,1UL},{8UL,1UL},{8UL,1UL},{8UL,1UL},{8UL,1UL},{8UL,1UL}},{{8UL,1UL},{8UL,1UL},{8UL,1UL},{8UL,1UL},{8UL,1UL},{8UL,1UL},{8UL,1UL}},{{8UL,1UL},{8UL,1UL},{8UL,1UL},{8UL,1UL},{8UL,1UL},{8UL,1UL},{8UL,1UL}},{{8UL,1UL},{8UL,1UL},{8UL,1UL},{8UL,1UL},{8UL,1UL},{8UL,1UL},{8UL,1UL}},{{8UL,1UL},{8UL,1UL},{8UL,1UL},{8UL,1UL},{8UL,1UL},{8UL,1UL},{8UL,1UL}}};
            int8_t *l_397 = (void*)0;
            int16_t *l_399 = &p_1058->g_400;
            int32_t *l_401 = (void*)0;
            int64_t l_404 = 0x0416DE3D2A131F2DL;
            int32_t *l_410[3];
            uint8_t *l_411 = &p_1058->g_230;
            uint64_t *l_441 = (void*)0;
            uint64_t *l_442 = &l_392[2][0][0];
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_410[i] = (void*)0;
            (*p_1058->g_402) ^= (safe_mul_func_int8_t_s_s((l_381 , ((((*l_399) &= ((safe_lshift_func_int16_t_s_s(((safe_add_func_int8_t_s_s((l_389 &= (safe_lshift_func_uint8_t_u_u(l_388, p_1058->g_35[0]))), 0x01L)) , ((safe_mul_func_int8_t_s_s((~(!(l_389 , (l_392[2][0][0] ^ (safe_mod_func_int64_t_s_s((p_1058->g_275[2][6][0] && (((&p_1058->g_212[0] == (((safe_mul_func_int8_t_s_s((p_1058->g_33 &= ((*p_22) <= (-1L))), p_1058->g_398)) | l_389) , (void*)0)) & 0xC76E4D17AA2CE7EDL) != l_392[2][0][0])), 0x241905BDBDECFF00L)))))), p_1058->g_284)) >= l_389)), 3)) == 4L)) < (*p_1058->g_31)) != p_21)), (-5L)));
        }
        if ((**l_434))
            continue;
        return p_1058->g_230;
    }
    return p_21;
}


/* ------------------------------------------ */
/* 
 * reads : p_1058->g_31 p_1058->g_32 p_1058->g_15 p_1058->g_33 p_1058->g_35 p_1058->g_197 p_1058->g_199 p_1058->g_214 p_1058->g_230 p_1058->g_212 p_1058->g_193 p_1058->g_332
 * writes: p_1058->g_193 p_1058->g_197 p_1058->g_199 p_1058->g_33 p_1058->g_213 p_1058->g_35 p_1058->g_230 p_1058->g_275 p_1058->g_284
 */
uint16_t * func_23(int32_t  p_24, uint16_t * p_25, uint16_t * p_26, uint64_t  p_27, int8_t  p_28, struct S0 * p_1058)
{ /* block id: 10 */
    int16_t *l_43 = (void*)0;
    int32_t l_44 = 0x118C6A86L;
    int32_t l_67 = 0x57AFF79CL;
    uint32_t *l_196 = &p_1058->g_197;
    int64_t *l_198 = &p_1058->g_199;
    int32_t l_233 = 0x2F3374ABL;
    (*p_1058->g_332) = ((safe_mul_func_int16_t_s_s((p_26 != p_25), (FAKE_DIVERGE(p_1058->group_2_offset, get_group_id(2), 10) , (*p_1058->g_31)))) < (((l_44 = 0x10BAL) <= (func_45(((p_27 && (&p_1058->g_32 == (func_48(func_54((((*l_198) &= (((((safe_div_func_uint8_t_u_u(p_24, (safe_lshift_func_int16_t_s_u((((*l_196) ^= ((func_62(p_1058->g_15[1][3][0], (((((safe_rshift_func_uint8_t_u_u(p_1058->g_33, p_24)) < p_1058->g_35[0]) & 5UL) , l_67) != p_28), p_1058) > p_1058->g_32) , p_27)) & 0x248319FEL), 0)))) , p_27) & (-7L)) , p_28) , p_27)) < l_67), l_67, p_28, p_1058), &l_67, l_67, p_1058->g_212[0], p_1058->g_32, p_1058) , (void*)0))) & l_233), &l_233, p_1058) > (-10L))) < p_28));
    return &p_1058->g_275[0][3][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1058->g_15 p_1058->g_33
 * writes: p_1058->g_33
 */
uint16_t * func_29(uint16_t * p_30, struct S0 * p_1058)
{ /* block id: 6 */
    int32_t *l_34[4] = {&p_1058->g_35[0],&p_1058->g_35[0],&p_1058->g_35[0],&p_1058->g_35[0]};
    uint8_t l_36 = 0xA3L;
    int i;
    p_1058->g_33 &= p_1058->g_15[0][2][0];
    --l_36;
    return p_30;
}


/* ------------------------------------------ */
/* 
 * reads : p_1058->g_212 p_1058->g_214 p_1058->g_35 p_1058->g_193 p_1058->g_199 p_1058->g_33 p_1058->g_15
 * writes: p_1058->g_33 p_1058->g_275 p_1058->g_284
 */
uint64_t  func_45(uint16_t  p_46, int32_t * p_47, struct S0 * p_1058)
{ /* block id: 172 */
    int8_t l_236[6];
    int8_t *l_245 = &l_236[4];
    uint16_t **l_248 = &p_1058->g_31;
    int32_t l_249 = 0x7B989AA4L;
    uint32_t l_250 = 0xB33828E4L;
    uint32_t l_281[6][7][2] = {{{4294967288UL,4294967293UL},{4294967288UL,4294967293UL},{4294967288UL,4294967293UL},{4294967288UL,4294967293UL},{4294967288UL,4294967293UL},{4294967288UL,4294967293UL},{4294967288UL,4294967293UL}},{{4294967288UL,4294967293UL},{4294967288UL,4294967293UL},{4294967288UL,4294967293UL},{4294967288UL,4294967293UL},{4294967288UL,4294967293UL},{4294967288UL,4294967293UL},{4294967288UL,4294967293UL}},{{4294967288UL,4294967293UL},{4294967288UL,4294967293UL},{4294967288UL,4294967293UL},{4294967288UL,4294967293UL},{4294967288UL,4294967293UL},{4294967288UL,4294967293UL},{4294967288UL,4294967293UL}},{{4294967288UL,4294967293UL},{4294967288UL,4294967293UL},{4294967288UL,4294967293UL},{4294967288UL,4294967293UL},{4294967288UL,4294967293UL},{4294967288UL,4294967293UL},{4294967288UL,4294967293UL}},{{4294967288UL,4294967293UL},{4294967288UL,4294967293UL},{4294967288UL,4294967293UL},{4294967288UL,4294967293UL},{4294967288UL,4294967293UL},{4294967288UL,4294967293UL},{4294967288UL,4294967293UL}},{{4294967288UL,4294967293UL},{4294967288UL,4294967293UL},{4294967288UL,4294967293UL},{4294967288UL,4294967293UL},{4294967288UL,4294967293UL},{4294967288UL,4294967293UL},{4294967288UL,4294967293UL}}};
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_236[i] = 1L;
    (*p_47) = ((safe_mul_func_int16_t_s_s(((((((0L | l_236[4]) == (&p_1058->g_230 == (void*)0)) , (safe_mod_func_int8_t_s_s(0L, ((safe_mul_func_uint8_t_u_u((((p_1058->g_212[0] , (safe_rshift_func_uint8_t_u_u(((safe_div_func_int16_t_s_s(0x2AF0L, ((((*l_245) |= (-3L)) & (+(safe_mul_func_uint16_t_u_u((((((void*)0 != l_248) >= l_249) || (*p_1058->g_214)) , 65535UL), l_249)))) & l_249))) >= p_46), 2))) && 0x38B1BC0AL) || 0x5DD26EA7L), l_249)) | 0x7F046263L)))) || p_1058->g_193[0][5][0]) && 0x42L) >= p_1058->g_212[0]), l_250)) >= p_1058->g_199);
    for (p_1058->g_33 = 0; (p_1058->g_33 == 16); p_1058->g_33 = safe_add_func_int64_t_s_s(p_1058->g_33, 4))
    { /* block id: 177 */
        int64_t **l_261 = &p_1058->g_213;
        int32_t l_272 = 0x1C969782L;
        uint16_t *l_273 = (void*)0;
        uint16_t *l_274 = &p_1058->g_275[0][3][0];
        int32_t l_280 = (-1L);
        int32_t l_282 = 6L;
        uint64_t *l_283 = &p_1058->g_284;
        (*p_47) = (safe_lshift_func_uint16_t_u_u((safe_div_func_int8_t_s_s((safe_mod_func_uint64_t_u_u((~((*l_283) = (l_282 ^= (safe_sub_func_int8_t_s_s(((((l_280 |= (((l_261 == l_261) | 0xE7836A35L) ^ ((safe_lshift_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_s((0x462BL <= ((((safe_sub_func_int64_t_s_s(((((*l_245) = ((safe_add_func_uint32_t_u_u((safe_add_func_uint32_t_u_u(GROUP_DIVERGE(2, 1), (~(((((*l_274) = l_272) && (safe_mod_func_int32_t_s_s(((void*)0 != &p_1058->g_230), p_1058->g_15[0][2][0]))) | ((((safe_sub_func_uint32_t_u_u(0xA85860A8L, p_46)) || (*p_1058->g_214)) | l_272) & 9L)) == p_46)))), (-5L))) || 4L)) != 0xB2L) && p_1058->g_199), p_1058->g_212[0])) ^ p_1058->g_212[0]) , l_250) , l_236[4])), 3)), 0)) & l_250))) < l_281[5][1][1]) == p_46) | 0x094513EAL), l_250))))), p_46)), l_272)), 11));
    }
    if ((atomic_inc(&p_1058->l_atomic_input[12]) == 1))
    { /* block id: 186 */
        int32_t l_285 = 0L;
        uint16_t l_286[9];
        int32_t *l_330[9][10][2] = {{{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285}},{{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285}},{{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285}},{{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285}},{{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285}},{{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285}},{{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285}},{{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285}},{{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285},{&l_285,&l_285}}};
        int32_t *l_331 = &l_285;
        int i, j, k;
        for (i = 0; i < 9; i++)
            l_286[i] = 0x4330L;
        l_286[3] = l_285;
        for (l_286[3] = 0; (l_286[3] <= 44); l_286[3]++)
        { /* block id: 190 */
            uint64_t l_289 = 18446744073709551612UL;
            uint32_t l_290 = 4294967295UL;
            if ((l_290 ^= l_289))
            { /* block id: 192 */
                uint32_t l_291 = 4294967290UL;
                uint32_t l_292[3][10][7] = {{{1UL,0x811F8AF5L,0xCE150EA9L,0UL,2UL,6UL,1UL},{1UL,0x811F8AF5L,0xCE150EA9L,0UL,2UL,6UL,1UL},{1UL,0x811F8AF5L,0xCE150EA9L,0UL,2UL,6UL,1UL},{1UL,0x811F8AF5L,0xCE150EA9L,0UL,2UL,6UL,1UL},{1UL,0x811F8AF5L,0xCE150EA9L,0UL,2UL,6UL,1UL},{1UL,0x811F8AF5L,0xCE150EA9L,0UL,2UL,6UL,1UL},{1UL,0x811F8AF5L,0xCE150EA9L,0UL,2UL,6UL,1UL},{1UL,0x811F8AF5L,0xCE150EA9L,0UL,2UL,6UL,1UL},{1UL,0x811F8AF5L,0xCE150EA9L,0UL,2UL,6UL,1UL},{1UL,0x811F8AF5L,0xCE150EA9L,0UL,2UL,6UL,1UL}},{{1UL,0x811F8AF5L,0xCE150EA9L,0UL,2UL,6UL,1UL},{1UL,0x811F8AF5L,0xCE150EA9L,0UL,2UL,6UL,1UL},{1UL,0x811F8AF5L,0xCE150EA9L,0UL,2UL,6UL,1UL},{1UL,0x811F8AF5L,0xCE150EA9L,0UL,2UL,6UL,1UL},{1UL,0x811F8AF5L,0xCE150EA9L,0UL,2UL,6UL,1UL},{1UL,0x811F8AF5L,0xCE150EA9L,0UL,2UL,6UL,1UL},{1UL,0x811F8AF5L,0xCE150EA9L,0UL,2UL,6UL,1UL},{1UL,0x811F8AF5L,0xCE150EA9L,0UL,2UL,6UL,1UL},{1UL,0x811F8AF5L,0xCE150EA9L,0UL,2UL,6UL,1UL},{1UL,0x811F8AF5L,0xCE150EA9L,0UL,2UL,6UL,1UL}},{{1UL,0x811F8AF5L,0xCE150EA9L,0UL,2UL,6UL,1UL},{1UL,0x811F8AF5L,0xCE150EA9L,0UL,2UL,6UL,1UL},{1UL,0x811F8AF5L,0xCE150EA9L,0UL,2UL,6UL,1UL},{1UL,0x811F8AF5L,0xCE150EA9L,0UL,2UL,6UL,1UL},{1UL,0x811F8AF5L,0xCE150EA9L,0UL,2UL,6UL,1UL},{1UL,0x811F8AF5L,0xCE150EA9L,0UL,2UL,6UL,1UL},{1UL,0x811F8AF5L,0xCE150EA9L,0UL,2UL,6UL,1UL},{1UL,0x811F8AF5L,0xCE150EA9L,0UL,2UL,6UL,1UL},{1UL,0x811F8AF5L,0xCE150EA9L,0UL,2UL,6UL,1UL},{1UL,0x811F8AF5L,0xCE150EA9L,0UL,2UL,6UL,1UL}}};
                int i, j, k;
                l_292[1][6][4] = l_291;
            }
            else
            { /* block id: 194 */
                uint8_t l_293 = 0x05L;
                uint32_t l_321 = 6UL;
                int32_t l_323[10];
                int32_t *l_322 = &l_323[3];
                int32_t *l_324 = &l_323[3];
                int i;
                for (i = 0; i < 10; i++)
                    l_323[i] = (-2L);
                if (l_293)
                { /* block id: 195 */
                    int32_t l_295[6];
                    int32_t *l_294 = &l_295[3];
                    int16_t l_296[1][4];
                    int i, j;
                    for (i = 0; i < 6; i++)
                        l_295[i] = 0L;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 4; j++)
                            l_296[i][j] = 0x6CBAL;
                    }
                    l_294 = (void*)0;
                    l_285 |= 0x4333B993L;
                    if (l_296[0][3])
                    { /* block id: 198 */
                        int32_t l_297 = 6L;
                        uint32_t l_298 = 0xA22D6C92L;
                        ++l_298;
                        l_294 = (void*)0;
                    }
                    else
                    { /* block id: 201 */
                        int8_t l_301 = 0x76L;
                        uint32_t l_302 = 0x969DDCA7L;
                        uint8_t l_303 = 0xEBL;
                        int32_t l_305 = 0x6F8654FCL;
                        int32_t *l_304[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_304[i] = &l_305;
                        l_294 = (void*)0;
                        l_295[3] = (l_301 , l_302);
                        l_294 = (l_303 , l_304[0]);
                    }
                }
                else
                { /* block id: 206 */
                    uint32_t l_306 = 4294967295UL;
                    l_285 = (l_306 = (-1L));
                }
                for (l_293 = 0; (l_293 <= 1); l_293 += 1)
                { /* block id: 212 */
                    uint8_t l_307 = 0x4FL;
                    int32_t l_308 = 0x1215B8F6L;
                    uint8_t l_309 = 0x6BL;
                    int8_t l_316 = 0L;
                    uint32_t l_317 = 0UL;
                    uint16_t l_318 = 0xA57CL;
                    if (((l_308 = l_307) , l_309))
                    { /* block id: 214 */
                        int64_t l_310[10][10] = {{0x76B92B542AFAB89DL,0x4F0265EE0E5AE264L,0x4F0265EE0E5AE264L,0x76B92B542AFAB89DL,(-10L),0x24FF22BB212999A3L,0x68132AFD83F579C8L,0x0DE68D2A5B001480L,0x150582B65BB6E597L,0x0B30C778346D7693L},{0x76B92B542AFAB89DL,0x4F0265EE0E5AE264L,0x4F0265EE0E5AE264L,0x76B92B542AFAB89DL,(-10L),0x24FF22BB212999A3L,0x68132AFD83F579C8L,0x0DE68D2A5B001480L,0x150582B65BB6E597L,0x0B30C778346D7693L},{0x76B92B542AFAB89DL,0x4F0265EE0E5AE264L,0x4F0265EE0E5AE264L,0x76B92B542AFAB89DL,(-10L),0x24FF22BB212999A3L,0x68132AFD83F579C8L,0x0DE68D2A5B001480L,0x150582B65BB6E597L,0x0B30C778346D7693L},{0x76B92B542AFAB89DL,0x4F0265EE0E5AE264L,0x4F0265EE0E5AE264L,0x76B92B542AFAB89DL,(-10L),0x24FF22BB212999A3L,0x68132AFD83F579C8L,0x0DE68D2A5B001480L,0x150582B65BB6E597L,0x0B30C778346D7693L},{0x76B92B542AFAB89DL,0x4F0265EE0E5AE264L,0x4F0265EE0E5AE264L,0x76B92B542AFAB89DL,(-10L),0x24FF22BB212999A3L,0x68132AFD83F579C8L,0x0DE68D2A5B001480L,0x150582B65BB6E597L,0x0B30C778346D7693L},{0x76B92B542AFAB89DL,0x4F0265EE0E5AE264L,0x4F0265EE0E5AE264L,0x76B92B542AFAB89DL,(-10L),0x24FF22BB212999A3L,0x68132AFD83F579C8L,0x0DE68D2A5B001480L,0x150582B65BB6E597L,0x0B30C778346D7693L},{0x76B92B542AFAB89DL,0x4F0265EE0E5AE264L,0x4F0265EE0E5AE264L,0x76B92B542AFAB89DL,(-10L),0x24FF22BB212999A3L,0x68132AFD83F579C8L,0x0DE68D2A5B001480L,0x150582B65BB6E597L,0x0B30C778346D7693L},{0x76B92B542AFAB89DL,0x4F0265EE0E5AE264L,0x4F0265EE0E5AE264L,0x76B92B542AFAB89DL,(-10L),0x24FF22BB212999A3L,0x68132AFD83F579C8L,0x0DE68D2A5B001480L,0x150582B65BB6E597L,0x0B30C778346D7693L},{0x76B92B542AFAB89DL,0x4F0265EE0E5AE264L,0x4F0265EE0E5AE264L,0x76B92B542AFAB89DL,(-10L),0x24FF22BB212999A3L,0x68132AFD83F579C8L,0x0DE68D2A5B001480L,0x150582B65BB6E597L,0x0B30C778346D7693L},{0x76B92B542AFAB89DL,0x4F0265EE0E5AE264L,0x4F0265EE0E5AE264L,0x76B92B542AFAB89DL,(-10L),0x24FF22BB212999A3L,0x68132AFD83F579C8L,0x0DE68D2A5B001480L,0x150582B65BB6E597L,0x0B30C778346D7693L}};
                        int32_t l_311[3][8] = {{(-1L),0x167C15F9L,(-1L),(-1L),0x167C15F9L,(-1L),(-1L),0x167C15F9L},{(-1L),0x167C15F9L,(-1L),(-1L),0x167C15F9L,(-1L),(-1L),0x167C15F9L},{(-1L),0x167C15F9L,(-1L),(-1L),0x167C15F9L,(-1L),(-1L),0x167C15F9L}};
                        uint8_t l_312[7] = {0xE6L,0xE6L,0xE6L,0xE6L,0xE6L,0xE6L,0xE6L};
                        uint8_t l_315 = 249UL;
                        int i, j;
                        l_312[2]--;
                        l_285 = (l_315 , 0L);
                    }
                    else
                    { /* block id: 217 */
                        l_285 = (-1L);
                    }
                    l_285 |= l_316;
                    l_318 = (l_285 = l_317);
                    for (l_307 = 0; (l_307 <= 1); l_307 += 1)
                    { /* block id: 225 */
                        int32_t *l_319 = (void*)0;
                        int32_t l_320 = 0L;
                        int i, j, k;
                        l_319 = (void*)0;
                        l_320 = p_1058->g_193[(l_293 + 3)][(l_293 + 6)][l_307];
                    }
                }
                l_285 &= l_321;
                l_324 = l_322;
            }
            for (l_289 = 0; (l_289 >= 29); l_289 = safe_add_func_uint16_t_u_u(l_289, 2))
            { /* block id: 235 */
                int32_t l_328 = 0x36D3ED73L;
                int32_t *l_327 = &l_328;
                int32_t *l_329[8][1][7] = {{{&l_328,&l_328,&l_328,&l_328,&l_328,&l_328,&l_328}},{{&l_328,&l_328,&l_328,&l_328,&l_328,&l_328,&l_328}},{{&l_328,&l_328,&l_328,&l_328,&l_328,&l_328,&l_328}},{{&l_328,&l_328,&l_328,&l_328,&l_328,&l_328,&l_328}},{{&l_328,&l_328,&l_328,&l_328,&l_328,&l_328,&l_328}},{{&l_328,&l_328,&l_328,&l_328,&l_328,&l_328,&l_328}},{{&l_328,&l_328,&l_328,&l_328,&l_328,&l_328,&l_328}},{{&l_328,&l_328,&l_328,&l_328,&l_328,&l_328,&l_328}}};
                int i, j, k;
                l_329[0][0][6] = l_327;
            }
        }
        l_331 = l_330[8][4][0];
        unsigned int result = 0;
        result += l_285;
        int l_286_i0;
        for (l_286_i0 = 0; l_286_i0 < 9; l_286_i0++) {
            result += l_286[l_286_i0];
        }
        atomic_add(&p_1058->l_special_values[12], result);
    }
    else
    { /* block id: 240 */
        (1 + 1);
    }
    return p_46;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint64_t  func_48(int16_t * p_49, int32_t * p_50, int64_t  p_51, uint64_t  p_52, int32_t  p_53, struct S0 * p_1058)
{ /* block id: 169 */
    (*p_50) = 0x67AD38D5L;
    return p_53;
}


/* ------------------------------------------ */
/* 
 * reads : p_1058->g_199 p_1058->g_214 p_1058->g_35 p_1058->g_230 p_1058->g_33 p_1058->g_31
 * writes: p_1058->g_33 p_1058->g_213 p_1058->g_35 p_1058->g_230
 */
int16_t * func_54(uint64_t  p_55, uint64_t  p_56, int16_t  p_57, struct S0 * p_1058)
{ /* block id: 157 */
    int8_t *l_200 = &p_1058->g_33;
    int32_t l_203 = 0x5060EDE6L;
    int64_t *l_204[5][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
    int32_t l_205 = (-10L);
    int64_t **l_210[3][10] = {{&l_204[2][1],&l_204[4][0],&l_204[3][1],&l_204[4][0],&l_204[2][1],&l_204[2][1],&l_204[4][0],&l_204[3][1],&l_204[4][0],&l_204[2][1]},{&l_204[2][1],&l_204[4][0],&l_204[3][1],&l_204[4][0],&l_204[2][1],&l_204[2][1],&l_204[4][0],&l_204[3][1],&l_204[4][0],&l_204[2][1]},{&l_204[2][1],&l_204[4][0],&l_204[3][1],&l_204[4][0],&l_204[2][1],&l_204[2][1],&l_204[4][0],&l_204[3][1],&l_204[4][0],&l_204[2][1]}};
    int64_t *l_211 = &p_1058->g_212[0];
    int32_t *l_215[2];
    int8_t l_216 = 0x12L;
    int32_t l_217 = 0L;
    uint16_t l_218 = 0x860CL;
    int32_t *l_225 = &p_1058->g_35[0];
    int32_t **l_226 = (void*)0;
    int32_t **l_227 = &l_225;
    int32_t *l_228[4][7][8] = {{{(void*)0,&l_205,(void*)0,&l_205,&l_205,(void*)0,&p_1058->g_35[0],&p_1058->g_35[0]},{(void*)0,&l_205,(void*)0,&l_205,&l_205,(void*)0,&p_1058->g_35[0],&p_1058->g_35[0]},{(void*)0,&l_205,(void*)0,&l_205,&l_205,(void*)0,&p_1058->g_35[0],&p_1058->g_35[0]},{(void*)0,&l_205,(void*)0,&l_205,&l_205,(void*)0,&p_1058->g_35[0],&p_1058->g_35[0]},{(void*)0,&l_205,(void*)0,&l_205,&l_205,(void*)0,&p_1058->g_35[0],&p_1058->g_35[0]},{(void*)0,&l_205,(void*)0,&l_205,&l_205,(void*)0,&p_1058->g_35[0],&p_1058->g_35[0]},{(void*)0,&l_205,(void*)0,&l_205,&l_205,(void*)0,&p_1058->g_35[0],&p_1058->g_35[0]}},{{(void*)0,&l_205,(void*)0,&l_205,&l_205,(void*)0,&p_1058->g_35[0],&p_1058->g_35[0]},{(void*)0,&l_205,(void*)0,&l_205,&l_205,(void*)0,&p_1058->g_35[0],&p_1058->g_35[0]},{(void*)0,&l_205,(void*)0,&l_205,&l_205,(void*)0,&p_1058->g_35[0],&p_1058->g_35[0]},{(void*)0,&l_205,(void*)0,&l_205,&l_205,(void*)0,&p_1058->g_35[0],&p_1058->g_35[0]},{(void*)0,&l_205,(void*)0,&l_205,&l_205,(void*)0,&p_1058->g_35[0],&p_1058->g_35[0]},{(void*)0,&l_205,(void*)0,&l_205,&l_205,(void*)0,&p_1058->g_35[0],&p_1058->g_35[0]},{(void*)0,&l_205,(void*)0,&l_205,&l_205,(void*)0,&p_1058->g_35[0],&p_1058->g_35[0]}},{{(void*)0,&l_205,(void*)0,&l_205,&l_205,(void*)0,&p_1058->g_35[0],&p_1058->g_35[0]},{(void*)0,&l_205,(void*)0,&l_205,&l_205,(void*)0,&p_1058->g_35[0],&p_1058->g_35[0]},{(void*)0,&l_205,(void*)0,&l_205,&l_205,(void*)0,&p_1058->g_35[0],&p_1058->g_35[0]},{(void*)0,&l_205,(void*)0,&l_205,&l_205,(void*)0,&p_1058->g_35[0],&p_1058->g_35[0]},{(void*)0,&l_205,(void*)0,&l_205,&l_205,(void*)0,&p_1058->g_35[0],&p_1058->g_35[0]},{(void*)0,&l_205,(void*)0,&l_205,&l_205,(void*)0,&p_1058->g_35[0],&p_1058->g_35[0]},{(void*)0,&l_205,(void*)0,&l_205,&l_205,(void*)0,&p_1058->g_35[0],&p_1058->g_35[0]}},{{(void*)0,&l_205,(void*)0,&l_205,&l_205,(void*)0,&p_1058->g_35[0],&p_1058->g_35[0]},{(void*)0,&l_205,(void*)0,&l_205,&l_205,(void*)0,&p_1058->g_35[0],&p_1058->g_35[0]},{(void*)0,&l_205,(void*)0,&l_205,&l_205,(void*)0,&p_1058->g_35[0],&p_1058->g_35[0]},{(void*)0,&l_205,(void*)0,&l_205,&l_205,(void*)0,&p_1058->g_35[0],&p_1058->g_35[0]},{(void*)0,&l_205,(void*)0,&l_205,&l_205,(void*)0,&p_1058->g_35[0],&p_1058->g_35[0]},{(void*)0,&l_205,(void*)0,&l_205,&l_205,(void*)0,&p_1058->g_35[0],&p_1058->g_35[0]},{(void*)0,&l_205,(void*)0,&l_205,&l_205,(void*)0,&p_1058->g_35[0],&p_1058->g_35[0]}}};
    uint8_t *l_229 = &p_1058->g_230;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_215[i] = &p_1058->g_35[0];
    (*p_1058->g_214) |= (((*l_200) = (p_56 && ((void*)0 == &p_1058->g_31))) | ((0xAA0988E5L ^ (p_1058->g_199 <= (((safe_mod_func_int64_t_s_s((l_205 |= l_203), p_55)) | (((0x2586CC2EL & (((safe_sub_func_uint32_t_u_u((safe_add_func_int16_t_s_s((((p_1058->g_213 = (l_211 = l_204[2][1])) != &p_1058->g_212[0]) && 0x5927L), 0UL)), l_203)) > p_55) , p_57)) ^ 65531UL) == (-7L))) | l_203))) != p_57));
    l_218--;
    (*p_1058->g_214) ^= ((safe_div_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s(p_55, 4)), ((*l_200) ^= ((((~p_56) > p_55) , (((+0x17BD9106L) , ((*l_227) = l_225)) != l_228[1][4][0])) >= ((*l_229)++))))) & 0x5BB1L);
    return p_1058->g_31;
}


/* ------------------------------------------ */
/* 
 * reads : p_1058->g_33
 * writes: p_1058->g_193
 */
uint8_t  func_62(int32_t  p_63, uint32_t  p_64, struct S0 * p_1058)
{ /* block id: 12 */
    int32_t *l_68[10] = {&p_1058->g_35[0],&p_1058->g_35[0],&p_1058->g_35[0],&p_1058->g_35[0],&p_1058->g_35[0],&p_1058->g_35[0],&p_1058->g_35[0],&p_1058->g_35[0],&p_1058->g_35[0],&p_1058->g_35[0]};
    int64_t l_69 = (-6L);
    int8_t l_70 = 0x71L;
    uint32_t l_71 = 0x9391FD40L;
    int i;
    --l_71;
    if ((atomic_inc(&p_1058->g_atomic_input[67 * get_linear_group_id() + 36]) == 0))
    { /* block id: 15 */
        int32_t l_74 = 0x1E9ABE1FL;
        int64_t l_185 = 1L;
        uint32_t l_186[1];
        uint16_t l_187 = 0xF352L;
        int32_t *l_188 = &l_74;
        int32_t *l_189 = &l_74;
        int i;
        for (i = 0; i < 1; i++)
            l_186[i] = 0UL;
        for (l_74 = 9; (l_74 >= 2); l_74 -= 1)
        { /* block id: 18 */
            int32_t l_75 = (-6L);
            for (l_75 = 6; (l_75 >= 0); l_75 -= 1)
            { /* block id: 21 */
                uint32_t l_76 = 4294967295UL;
                uint64_t l_77 = 1UL;
                int32_t l_93 = 0L;
                int32_t *l_92 = &l_93;
                int32_t *l_94 = &l_93;
                uint32_t l_95 = 5UL;
                uint64_t l_96 = 0xE48EC7F2D8A91DCCL;
                int i;
                l_77 = l_76;
                for (l_77 = 0; (l_77 <= 0); l_77 += 1)
                { /* block id: 25 */
                    int32_t l_78 = (-1L);
                    if ((l_78 = 5L))
                    { /* block id: 27 */
                        int8_t l_79[6][4] = {{0x68L,0L,0L,0x68L},{0x68L,0L,0L,0x68L},{0x68L,0L,0L,0x68L},{0x68L,0L,0L,0x68L},{0x68L,0L,0L,0x68L},{0x68L,0L,0L,0x68L}};
                        uint32_t l_80[5];
                        int32_t l_81 = 0L;
                        int i, j;
                        for (i = 0; i < 5; i++)
                            l_80[i] = 0xB2DE0ECAL;
                        l_78 = l_79[5][0];
                        l_81 ^= l_80[1];
                    }
                    else
                    { /* block id: 30 */
                        uint8_t l_82 = 255UL;
                        l_82 |= (l_78 = (-1L));
                    }
                    for (l_78 = 0; (l_78 >= 0); l_78 -= 1)
                    { /* block id: 36 */
                        uint32_t l_83 = 0x9E91ECAEL;
                        ++l_83;
                    }
                    for (l_78 = 0; (l_78 >= 0); l_78 -= 1)
                    { /* block id: 41 */
                        int32_t l_86 = (-6L);
                        int32_t l_87 = 0L;
                        uint16_t l_88[2][4][6] = {{{0UL,0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL,0UL}},{{0UL,0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL,0UL}}};
                        int32_t **l_91 = &l_68[(l_77 + 3)];
                        int i, j, k;
                        l_88[0][1][2]++;
                        l_68[(l_75 + 1)] = (void*)0;
                        l_86 = 0x147AAB45L;
                        l_91 = &l_68[(l_77 + 3)];
                    }
                }
                l_94 = l_92;
                if ((l_95 , l_96))
                { /* block id: 49 */
                    int32_t l_97[3][2] = {{0x40F15219L,0x40F15219L},{0x40F15219L,0x40F15219L},{0x40F15219L,0x40F15219L}};
                    int i, j;
                    for (l_97[1][0] = 0; (l_97[1][0] <= 0); l_97[1][0] += 1)
                    { /* block id: 52 */
                        int64_t l_98 = (-1L);
                        (*l_92) &= l_98;
                    }
                    for (l_97[1][0] = 0; (l_97[1][0] >= 0); l_97[1][0] -= 1)
                    { /* block id: 57 */
                        int32_t *l_99 = (void*)0;
                        uint32_t l_100 = 0x1F8F6A06L;
                        uint32_t l_101 = 0x3E959B8CL;
                        l_99 = l_99;
                        l_101 &= l_100;
                    }
                }
                else
                { /* block id: 61 */
                    int32_t l_102 = 0L;
                    uint64_t l_103 = 0x65BCB3CA981A8B47L;
                    uint8_t l_104 = 1UL;
                    (*l_94) |= l_102;
                    l_104 &= ((*l_94) |= l_103);
                }
            }
            for (l_75 = 9; (l_75 >= 0); l_75 -= 1)
            { /* block id: 69 */
                int32_t l_105[4][1][2];
                int i, j, k;
                for (i = 0; i < 4; i++)
                {
                    for (j = 0; j < 1; j++)
                    {
                        for (k = 0; k < 2; k++)
                            l_105[i][j][k] = 0x25298247L;
                    }
                }
                for (l_105[1][0][0] = 0; (l_105[1][0][0] <= 0); l_105[1][0][0] += 1)
                { /* block id: 72 */
                    uint16_t l_106 = 65535UL;
                    uint16_t l_117[4] = {65529UL,65529UL,65529UL,65529UL};
                    uint8_t l_118[10][8] = {{255UL,255UL,0x39L,0x3DL,1UL,0x73L,0x73L,1UL},{255UL,255UL,0x39L,0x3DL,1UL,0x73L,0x73L,1UL},{255UL,255UL,0x39L,0x3DL,1UL,0x73L,0x73L,1UL},{255UL,255UL,0x39L,0x3DL,1UL,0x73L,0x73L,1UL},{255UL,255UL,0x39L,0x3DL,1UL,0x73L,0x73L,1UL},{255UL,255UL,0x39L,0x3DL,1UL,0x73L,0x73L,1UL},{255UL,255UL,0x39L,0x3DL,1UL,0x73L,0x73L,1UL},{255UL,255UL,0x39L,0x3DL,1UL,0x73L,0x73L,1UL},{255UL,255UL,0x39L,0x3DL,1UL,0x73L,0x73L,1UL},{255UL,255UL,0x39L,0x3DL,1UL,0x73L,0x73L,1UL}};
                    int i, j;
                    if (l_106)
                    { /* block id: 73 */
                        uint16_t **l_107 = (void*)0;
                        uint16_t l_110 = 0UL;
                        uint16_t *l_109 = &l_110;
                        uint16_t **l_108[9][5][5] = {{{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109}},{{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109}},{{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109}},{{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109}},{{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109}},{{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109}},{{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109}},{{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109}},{{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109},{&l_109,&l_109,&l_109,&l_109,&l_109}}};
                        int64_t l_111 = 7L;
                        int32_t l_113 = 3L;
                        int32_t *l_112 = &l_113;
                        int32_t *l_114 = (void*)0;
                        int i, j, k;
                        l_108[7][2][0] = l_107;
                        l_114 = (l_68[(l_105[1][0][0] + 4)] = (l_111 , l_112));
                    }
                    else
                    { /* block id: 77 */
                        uint8_t l_115 = 0x4DL;
                        uint32_t l_116 = 0x6EB84F5DL;
                        l_116 &= l_115;
                    }
                    l_118[9][0] = l_117[1];
                }
            }
        }
        for (l_74 = 0; (l_74 != (-28)); l_74 = safe_sub_func_int64_t_s_s(l_74, 5))
        { /* block id: 86 */
            int32_t l_121 = 0x7987148AL;
            int32_t l_176 = 0x44BC6AF4L;
            int16_t l_177 = (-6L);
            int8_t l_183[9] = {0x47L,0x47L,0x47L,0x47L,0x47L,0x47L,0x47L,0x47L,0x47L};
            uint32_t l_184 = 8UL;
            int i;
            if (l_121)
            { /* block id: 87 */
                uint32_t l_122 = 0x856C88DEL;
                int16_t l_123 = 0x0381L;
                int64_t l_124 = 0x46C4C103C77F6B34L;
                int32_t l_125 = 0x3F6F6D5BL;
                int16_t l_126 = 0x58F7L;
                int8_t l_127 = 0x18L;
                uint32_t l_128[9][2] = {{1UL,1UL},{1UL,1UL},{1UL,1UL},{1UL,1UL},{1UL,1UL},{1UL,1UL},{1UL,1UL},{1UL,1UL},{1UL,1UL}};
                uint8_t l_131 = 0x75L;
                int i, j;
                l_121 = l_122;
                l_128[4][0]--;
                if (l_131)
                { /* block id: 90 */
                    int32_t l_133 = 0x223D7F4DL;
                    int32_t *l_132 = &l_133;
                    int32_t *l_134 = &l_133;
                    int64_t l_135 = 0x4039BA748E4F8FBFL;
                    uint8_t l_136 = 5UL;
                    int16_t l_139 = (-8L);
                    int8_t l_140 = 0L;
                    uint32_t l_141 = 4294967290UL;
                    int64_t l_142 = 5L;
                    int32_t l_143 = (-2L);
                    int32_t *l_144 = (void*)0;
                    l_134 = l_132;
                    --l_136;
                    (*l_134) |= ((l_142 = ((l_139 , (l_140 , 0x1DC8AE0DA6F0B9C9L)) , l_141)) , (l_143 , 0x11D43F70L));
                    l_144 = (void*)0;
                }
                else
                { /* block id: 96 */
                    int32_t l_145 = (-2L);
                    for (l_145 = 0; (l_145 <= 1); l_145 += 1)
                    { /* block id: 99 */
                        l_125 &= 0x55E833F8L;
                    }
                }
            }
            else
            { /* block id: 103 */
                int32_t *l_146[5][8];
                int32_t l_148 = (-1L);
                int32_t *l_147[7][4][9] = {{{&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148},{&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148},{&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148},{&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148}},{{&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148},{&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148},{&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148},{&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148}},{{&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148},{&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148},{&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148},{&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148}},{{&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148},{&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148},{&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148},{&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148}},{{&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148},{&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148},{&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148},{&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148}},{{&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148},{&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148},{&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148},{&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148}},{{&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148},{&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148},{&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148},{&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148,&l_148}}};
                int32_t *l_149 = &l_148;
                int32_t l_164 = 2L;
                int i, j, k;
                for (i = 0; i < 5; i++)
                {
                    for (j = 0; j < 8; j++)
                        l_146[i][j] = (void*)0;
                }
                l_146[4][7] = l_146[3][4];
                l_149 = l_147[1][0][2];
                for (l_148 = 0; (l_148 <= (-12)); l_148--)
                { /* block id: 108 */
                    int32_t l_152 = (-8L);
                    uint32_t l_160[3];
                    int32_t *l_161 = &l_152;
                    int32_t l_162 = 1L;
                    int8_t l_163 = 0x19L;
                    int i;
                    for (i = 0; i < 3; i++)
                        l_160[i] = 0xCBFB4229L;
                    for (l_152 = 17; (l_152 != (-28)); l_152 = safe_sub_func_int16_t_s_s(l_152, 3))
                    { /* block id: 111 */
                        uint16_t l_155 = 0xF1BFL;
                        int32_t l_159 = 0x482281F5L;
                        int32_t *l_158 = &l_159;
                        l_155--;
                        l_149 = l_158;
                    }
                    l_146[2][5] = (l_160[1] , (l_161 = (void*)0));
                    l_163 |= l_162;
                }
                if (l_164)
                { /* block id: 119 */
                    uint8_t l_165[3][8] = {{1UL,0x70L,1UL,1UL,0x70L,1UL,1UL,0x70L},{1UL,0x70L,1UL,1UL,0x70L,1UL,1UL,0x70L},{1UL,0x70L,1UL,1UL,0x70L,1UL,1UL,0x70L}};
                    int i, j;
                    if (l_165[1][2])
                    { /* block id: 120 */
                        uint64_t l_166[2];
                        int32_t l_167 = 0L;
                        uint64_t l_168 = 18446744073709551615UL;
                        uint8_t l_169 = 255UL;
                        int8_t l_170[1][3];
                        int32_t l_171 = 1L;
                        int i, j;
                        for (i = 0; i < 2; i++)
                            l_166[i] = 0x40F996A62810AE63L;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 3; j++)
                                l_170[i][j] = 0x2EL;
                        }
                        l_169 ^= (l_168 = (l_167 = (l_166[0] , l_167)));
                        l_171 &= l_170[0][0];
                    }
                    else
                    { /* block id: 125 */
                        uint8_t l_172 = 8UL;
                        int32_t l_173 = 0x7E024C01L;
                        uint16_t l_174 = 0xC597L;
                        l_174 = (l_173 &= l_172);
                    }
                }
                else
                { /* block id: 129 */
                    int16_t l_175 = 7L;
                    l_175 = 1L;
                    l_149 = (void*)0;
                }
            }
            l_177 = l_176;
            for (l_177 = 20; (l_177 <= 0); l_177 = safe_sub_func_int64_t_s_s(l_177, 3))
            { /* block id: 137 */
                int32_t l_181 = 0x01EF3CA3L;
                int32_t *l_180[5];
                int32_t *l_182 = &l_181;
                int i;
                for (i = 0; i < 5; i++)
                    l_180[i] = &l_181;
                l_180[0] = (void*)0;
                l_182 = (void*)0;
            }
            l_184 = l_183[4];
        }
        l_186[0] = l_185;
        l_189 = (l_187 , l_188);
        unsigned int result = 0;
        result += l_74;
        result += l_185;
        int l_186_i0;
        for (l_186_i0 = 0; l_186_i0 < 1; l_186_i0++) {
            result += l_186[l_186_i0];
        }
        result += l_187;
        atomic_add(&p_1058->g_special_values[67 * get_linear_group_id() + 36], result);
    }
    else
    { /* block id: 145 */
        (1 + 1);
    }
    for (l_69 = (-2); (l_69 < (-25)); --l_69)
    { /* block id: 150 */
        uint32_t *l_192 = &p_1058->g_193[0][4][1];
        int32_t l_194 = 0x15DC8CDDL;
        int32_t l_195 = 1L;
        l_195 |= (((*l_192) = 0x14539697L) , l_194);
    }
    return p_1058->g_33;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[67];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 67; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[67];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 67; i++)
            l_special_values[i] = 0;
    struct S0 c_1059;
    struct S0* p_1058 = &c_1059;
    struct S0 c_1060 = {
        {{{0L},{0L},{0L},{0L},{0L},{0L},{0L}},{{0L},{0L},{0L},{0L},{0L},{0L},{0L}},{{0L},{0L},{0L},{0L},{0L},{0L},{0L}},{{0L},{0L},{0L},{0L},{0L},{0L},{0L}},{{0L},{0L},{0L},{0L},{0L},{0L},{0L}}}, // p_1058->g_15
        0xC326L, // p_1058->g_17
        65527UL, // p_1058->g_32
        &p_1058->g_32, // p_1058->g_31
        0x2EL, // p_1058->g_33
        {0x7684593FL}, // p_1058->g_35
        {{{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L}},{{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L}},{{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L}},{{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L}},{{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L}},{{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L},{0xF97334A1L,0x18692B30L,4294967295UL,4294967295UL,0x387A8175L}}}, // p_1058->g_193
        0x8F99CA2AL, // p_1058->g_197
        0x0FC4C534E026D30EL, // p_1058->g_199
        {1L}, // p_1058->g_212
        &p_1058->g_212[0], // p_1058->g_213
        &p_1058->g_35[0], // p_1058->g_214
        1UL, // p_1058->g_230
        {{{0xD368L,0xD368L},{0xD368L,0xD368L},{0xD368L,0xD368L},{0xD368L,0xD368L},{0xD368L,0xD368L},{0xD368L,0xD368L},{0xD368L,0xD368L}},{{0xD368L,0xD368L},{0xD368L,0xD368L},{0xD368L,0xD368L},{0xD368L,0xD368L},{0xD368L,0xD368L},{0xD368L,0xD368L},{0xD368L,0xD368L}},{{0xD368L,0xD368L},{0xD368L,0xD368L},{0xD368L,0xD368L},{0xD368L,0xD368L},{0xD368L,0xD368L},{0xD368L,0xD368L},{0xD368L,0xD368L}},{{0xD368L,0xD368L},{0xD368L,0xD368L},{0xD368L,0xD368L},{0xD368L,0xD368L},{0xD368L,0xD368L},{0xD368L,0xD368L},{0xD368L,0xD368L}},{{0xD368L,0xD368L},{0xD368L,0xD368L},{0xD368L,0xD368L},{0xD368L,0xD368L},{0xD368L,0xD368L},{0xD368L,0xD368L},{0xD368L,0xD368L}}}, // p_1058->g_275
        0xBB62DD90E1CA6B99L, // p_1058->g_284
        &p_1058->g_35[0], // p_1058->g_332
        0xADE2L, // p_1058->g_398
        0x3557L, // p_1058->g_400
        {(-2L),(-1L),(-2L),(-2L),(-1L),(-2L),(-2L),(-1L)}, // p_1058->g_403
        &p_1058->g_403[4], // p_1058->g_402
        (void*)0, // p_1058->g_478
        {&p_1058->g_478,&p_1058->g_478,&p_1058->g_478}, // p_1058->g_477
        0x21B44F8032887811L, // p_1058->g_479
        0x11L, // p_1058->g_537
        &p_1058->g_537, // p_1058->g_536
        &p_1058->g_536, // p_1058->g_535
        &p_1058->g_535, // p_1058->g_538
        &p_1058->g_403[4], // p_1058->g_605
        &p_1058->g_605, // p_1058->g_604
        {{0x0BD6704BL,0x52BC9FA6L,0x42A8AF7AL,(-4L),0x52BC9FA6L,(-4L),0x42A8AF7AL,0x52BC9FA6L,0x0BD6704BL,0x0BD6704BL},{0x0BD6704BL,0x52BC9FA6L,0x42A8AF7AL,(-4L),0x52BC9FA6L,(-4L),0x42A8AF7AL,0x52BC9FA6L,0x0BD6704BL,0x0BD6704BL},{0x0BD6704BL,0x52BC9FA6L,0x42A8AF7AL,(-4L),0x52BC9FA6L,(-4L),0x42A8AF7AL,0x52BC9FA6L,0x0BD6704BL,0x0BD6704BL}}, // p_1058->g_651
        1L, // p_1058->g_652
        0x72167E23L, // p_1058->g_653
        0x58512DFEL, // p_1058->g_654
        (-1L), // p_1058->g_655
        {{0x059EE6F2L,0x059EE6F2L,0x059EE6F2L,0x059EE6F2L,0x059EE6F2L},{0x059EE6F2L,0x059EE6F2L,0x059EE6F2L,0x059EE6F2L,0x059EE6F2L},{0x059EE6F2L,0x059EE6F2L,0x059EE6F2L,0x059EE6F2L,0x059EE6F2L}}, // p_1058->g_656
        0L, // p_1058->g_657
        6L, // p_1058->g_658
        0x7F685C30L, // p_1058->g_659
        0L, // p_1058->g_660
        {(-4L),(-4L),(-4L),(-4L)}, // p_1058->g_661
        1L, // p_1058->g_662
        (-10L), // p_1058->g_663
        (-1L), // p_1058->g_664
        1L, // p_1058->g_665
        0x073A0449L, // p_1058->g_666
        (-1L), // p_1058->g_667
        5L, // p_1058->g_668
        0x7C7BED70L, // p_1058->g_669
        0x7539918EL, // p_1058->g_670
        {{{(void*)0,&p_1058->g_658,&p_1058->g_660,&p_1058->g_657,&p_1058->g_670,&p_1058->g_657,&p_1058->g_660,&p_1058->g_658},{(void*)0,&p_1058->g_658,&p_1058->g_660,&p_1058->g_657,&p_1058->g_670,&p_1058->g_657,&p_1058->g_660,&p_1058->g_658},{(void*)0,&p_1058->g_658,&p_1058->g_660,&p_1058->g_657,&p_1058->g_670,&p_1058->g_657,&p_1058->g_660,&p_1058->g_658},{(void*)0,&p_1058->g_658,&p_1058->g_660,&p_1058->g_657,&p_1058->g_670,&p_1058->g_657,&p_1058->g_660,&p_1058->g_658}},{{(void*)0,&p_1058->g_658,&p_1058->g_660,&p_1058->g_657,&p_1058->g_670,&p_1058->g_657,&p_1058->g_660,&p_1058->g_658},{(void*)0,&p_1058->g_658,&p_1058->g_660,&p_1058->g_657,&p_1058->g_670,&p_1058->g_657,&p_1058->g_660,&p_1058->g_658},{(void*)0,&p_1058->g_658,&p_1058->g_660,&p_1058->g_657,&p_1058->g_670,&p_1058->g_657,&p_1058->g_660,&p_1058->g_658},{(void*)0,&p_1058->g_658,&p_1058->g_660,&p_1058->g_657,&p_1058->g_670,&p_1058->g_657,&p_1058->g_660,&p_1058->g_658}},{{(void*)0,&p_1058->g_658,&p_1058->g_660,&p_1058->g_657,&p_1058->g_670,&p_1058->g_657,&p_1058->g_660,&p_1058->g_658},{(void*)0,&p_1058->g_658,&p_1058->g_660,&p_1058->g_657,&p_1058->g_670,&p_1058->g_657,&p_1058->g_660,&p_1058->g_658},{(void*)0,&p_1058->g_658,&p_1058->g_660,&p_1058->g_657,&p_1058->g_670,&p_1058->g_657,&p_1058->g_660,&p_1058->g_658},{(void*)0,&p_1058->g_658,&p_1058->g_660,&p_1058->g_657,&p_1058->g_670,&p_1058->g_657,&p_1058->g_660,&p_1058->g_658}},{{(void*)0,&p_1058->g_658,&p_1058->g_660,&p_1058->g_657,&p_1058->g_670,&p_1058->g_657,&p_1058->g_660,&p_1058->g_658},{(void*)0,&p_1058->g_658,&p_1058->g_660,&p_1058->g_657,&p_1058->g_670,&p_1058->g_657,&p_1058->g_660,&p_1058->g_658},{(void*)0,&p_1058->g_658,&p_1058->g_660,&p_1058->g_657,&p_1058->g_670,&p_1058->g_657,&p_1058->g_660,&p_1058->g_658},{(void*)0,&p_1058->g_658,&p_1058->g_660,&p_1058->g_657,&p_1058->g_670,&p_1058->g_657,&p_1058->g_660,&p_1058->g_658}}}, // p_1058->g_650
        &p_1058->g_230, // p_1058->g_721
        &p_1058->g_605, // p_1058->g_726
        &p_1058->g_605, // p_1058->g_730
        &p_1058->g_605, // p_1058->g_741
        {{0x44E1L,0x44E1L,(-1L),(-1L),0x2036L,(-1L),(-1L),0x44E1L},{0x44E1L,0x44E1L,(-1L),(-1L),0x2036L,(-1L),(-1L),0x44E1L},{0x44E1L,0x44E1L,(-1L),(-1L),0x2036L,(-1L),(-1L),0x44E1L},{0x44E1L,0x44E1L,(-1L),(-1L),0x2036L,(-1L),(-1L),0x44E1L},{0x44E1L,0x44E1L,(-1L),(-1L),0x2036L,(-1L),(-1L),0x44E1L},{0x44E1L,0x44E1L,(-1L),(-1L),0x2036L,(-1L),(-1L),0x44E1L},{0x44E1L,0x44E1L,(-1L),(-1L),0x2036L,(-1L),(-1L),0x44E1L},{0x44E1L,0x44E1L,(-1L),(-1L),0x2036L,(-1L),(-1L),0x44E1L}}, // p_1058->g_749
        {{0x40876C36L,0x55B0B863L,1L,0x68423A1DL,0x4880B4E8L,0x68423A1DL,1L,0x55B0B863L},{0x40876C36L,0x55B0B863L,1L,0x68423A1DL,0x4880B4E8L,0x68423A1DL,1L,0x55B0B863L},{0x40876C36L,0x55B0B863L,1L,0x68423A1DL,0x4880B4E8L,0x68423A1DL,1L,0x55B0B863L},{0x40876C36L,0x55B0B863L,1L,0x68423A1DL,0x4880B4E8L,0x68423A1DL,1L,0x55B0B863L},{0x40876C36L,0x55B0B863L,1L,0x68423A1DL,0x4880B4E8L,0x68423A1DL,1L,0x55B0B863L},{0x40876C36L,0x55B0B863L,1L,0x68423A1DL,0x4880B4E8L,0x68423A1DL,1L,0x55B0B863L},{0x40876C36L,0x55B0B863L,1L,0x68423A1DL,0x4880B4E8L,0x68423A1DL,1L,0x55B0B863L},{0x40876C36L,0x55B0B863L,1L,0x68423A1DL,0x4880B4E8L,0x68423A1DL,1L,0x55B0B863L},{0x40876C36L,0x55B0B863L,1L,0x68423A1DL,0x4880B4E8L,0x68423A1DL,1L,0x55B0B863L}}, // p_1058->g_775
        7L, // p_1058->g_776
        0x64B1L, // p_1058->g_782
        4294967294UL, // p_1058->g_798
        {{0x72L,0x31L,1L,0x31L,0x72L,0x72L,0x31L,1L,0x31L},{0x72L,0x31L,1L,0x31L,0x72L,0x72L,0x31L,1L,0x31L},{0x72L,0x31L,1L,0x31L,0x72L,0x72L,0x31L,1L,0x31L},{0x72L,0x31L,1L,0x31L,0x72L,0x72L,0x31L,1L,0x31L},{0x72L,0x31L,1L,0x31L,0x72L,0x72L,0x31L,1L,0x31L},{0x72L,0x31L,1L,0x31L,0x72L,0x72L,0x31L,1L,0x31L},{0x72L,0x31L,1L,0x31L,0x72L,0x72L,0x31L,1L,0x31L}}, // p_1058->g_801
        8L, // p_1058->g_803
        (void*)0, // p_1058->g_830
        &p_1058->g_605, // p_1058->g_855
        253UL, // p_1058->g_874
        246UL, // p_1058->g_879
        &p_1058->g_15[0][2][0], // p_1058->g_924
        &p_1058->g_924, // p_1058->g_923
        0x9772L, // p_1058->g_968
        {{{&p_1058->g_721,(void*)0,(void*)0,&p_1058->g_721,&p_1058->g_721},{&p_1058->g_721,(void*)0,(void*)0,&p_1058->g_721,&p_1058->g_721}},{{&p_1058->g_721,(void*)0,(void*)0,&p_1058->g_721,&p_1058->g_721},{&p_1058->g_721,(void*)0,(void*)0,&p_1058->g_721,&p_1058->g_721}},{{&p_1058->g_721,(void*)0,(void*)0,&p_1058->g_721,&p_1058->g_721},{&p_1058->g_721,(void*)0,(void*)0,&p_1058->g_721,&p_1058->g_721}}}, // p_1058->g_986
        &p_1058->g_986[1][1][0], // p_1058->g_985
        sequence_input[get_global_id(0)], // p_1058->global_0_offset
        sequence_input[get_global_id(1)], // p_1058->global_1_offset
        sequence_input[get_global_id(2)], // p_1058->global_2_offset
        sequence_input[get_local_id(0)], // p_1058->local_0_offset
        sequence_input[get_local_id(1)], // p_1058->local_1_offset
        sequence_input[get_local_id(2)], // p_1058->local_2_offset
        sequence_input[get_group_id(0)], // p_1058->group_0_offset
        sequence_input[get_group_id(1)], // p_1058->group_1_offset
        sequence_input[get_group_id(2)], // p_1058->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_1059 = c_1060;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1058);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_1058->g_15[i][j][k], "p_1058->g_15[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1058->g_17, "p_1058->g_17", print_hash_value);
    transparent_crc(p_1058->g_32, "p_1058->g_32", print_hash_value);
    transparent_crc(p_1058->g_33, "p_1058->g_33", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1058->g_35[i], "p_1058->g_35[i]", print_hash_value);

    }
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1058->g_193[i][j][k], "p_1058->g_193[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1058->g_197, "p_1058->g_197", print_hash_value);
    transparent_crc(p_1058->g_199, "p_1058->g_199", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1058->g_212[i], "p_1058->g_212[i]", print_hash_value);

    }
    transparent_crc(p_1058->g_230, "p_1058->g_230", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1058->g_275[i][j][k], "p_1058->g_275[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1058->g_284, "p_1058->g_284", print_hash_value);
    transparent_crc(p_1058->g_398, "p_1058->g_398", print_hash_value);
    transparent_crc(p_1058->g_400, "p_1058->g_400", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1058->g_403[i], "p_1058->g_403[i]", print_hash_value);

    }
    transparent_crc(p_1058->g_479, "p_1058->g_479", print_hash_value);
    transparent_crc(p_1058->g_537, "p_1058->g_537", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1058->g_651[i][j], "p_1058->g_651[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1058->g_652, "p_1058->g_652", print_hash_value);
    transparent_crc(p_1058->g_653, "p_1058->g_653", print_hash_value);
    transparent_crc(p_1058->g_654, "p_1058->g_654", print_hash_value);
    transparent_crc(p_1058->g_655, "p_1058->g_655", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1058->g_656[i][j], "p_1058->g_656[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1058->g_657, "p_1058->g_657", print_hash_value);
    transparent_crc(p_1058->g_658, "p_1058->g_658", print_hash_value);
    transparent_crc(p_1058->g_659, "p_1058->g_659", print_hash_value);
    transparent_crc(p_1058->g_660, "p_1058->g_660", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1058->g_661[i], "p_1058->g_661[i]", print_hash_value);

    }
    transparent_crc(p_1058->g_662, "p_1058->g_662", print_hash_value);
    transparent_crc(p_1058->g_663, "p_1058->g_663", print_hash_value);
    transparent_crc(p_1058->g_664, "p_1058->g_664", print_hash_value);
    transparent_crc(p_1058->g_665, "p_1058->g_665", print_hash_value);
    transparent_crc(p_1058->g_666, "p_1058->g_666", print_hash_value);
    transparent_crc(p_1058->g_667, "p_1058->g_667", print_hash_value);
    transparent_crc(p_1058->g_668, "p_1058->g_668", print_hash_value);
    transparent_crc(p_1058->g_669, "p_1058->g_669", print_hash_value);
    transparent_crc(p_1058->g_670, "p_1058->g_670", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1058->g_749[i][j], "p_1058->g_749[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1058->g_775[i][j], "p_1058->g_775[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1058->g_776, "p_1058->g_776", print_hash_value);
    transparent_crc(p_1058->g_782, "p_1058->g_782", print_hash_value);
    transparent_crc(p_1058->g_798, "p_1058->g_798", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1058->g_801[i][j], "p_1058->g_801[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1058->g_803, "p_1058->g_803", print_hash_value);
    transparent_crc(p_1058->g_874, "p_1058->g_874", print_hash_value);
    transparent_crc(p_1058->g_879, "p_1058->g_879", print_hash_value);
    transparent_crc(p_1058->g_968, "p_1058->g_968", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 67; i++)
            transparent_crc(p_1058->g_special_values[i + 67 * get_linear_group_id()], "p_1058->g_special_values[i + 67 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 67; i++)
            transparent_crc(p_1058->l_special_values[i], "p_1058->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
