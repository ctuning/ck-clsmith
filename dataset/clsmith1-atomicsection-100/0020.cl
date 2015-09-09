// --atomics 48 ---fake_divergence -g 69,79,1 -l 23,1,1
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


// Seed: 20

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   int64_t  f0;
   uint64_t  f1;
   int16_t  f2;
   int8_t  f3;
};

struct S1 {
    int32_t g_12;
    uint32_t g_36;
    uint64_t g_39;
    int32_t g_40;
    uint32_t g_48;
    volatile uint64_t g_93;
    uint64_t *g_266;
    uint16_t g_268;
    volatile union U0 g_287[9];
    volatile union U0 *g_286[1];
    volatile union U0 ** volatile g_285;
    uint8_t g_288;
    int32_t *g_290;
    volatile int16_t g_296[7][4][9];
    volatile int16_t * volatile g_295;
    int16_t g_298;
    int8_t g_306;
    uint8_t g_309;
    uint16_t g_327;
    uint32_t g_348;
    volatile uint8_t g_366;
    int64_t g_369;
    volatile int32_t g_388;
    volatile int32_t g_389;
    volatile int32_t *g_387[10];
    uint16_t g_465;
    volatile uint64_t g_483[3][10];
    int32_t g_488;
    uint16_t * volatile g_498[5][4];
    uint16_t * volatile *g_497;
    uint16_t *g_603;
    int16_t g_747;
    int32_t * volatile g_749;
    int8_t *g_755;
    int8_t **g_754[7];
    int8_t *** volatile g_756;
    int8_t *** volatile g_757;
    int16_t *g_764;
    int16_t **g_763;
    int16_t *** volatile g_762[8];
    int16_t *** volatile g_765;
    volatile uint64_t g_769;
    int32_t g_809;
    uint16_t **g_828;
    int32_t g_880;
    int32_t **g_960;
    int32_t ***g_959;
    int32_t g_1041[3][7];
    uint64_t **g_1064[5][1][1];
    uint64_t ***g_1063;
    uint16_t g_1076;
    uint16_t g_1153;
    uint8_t g_1157;
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
uint32_t  func_1(struct S1 * p_1186);
int16_t  func_8(uint8_t  p_9, int8_t  p_10, struct S1 * p_1186);
int32_t  func_13(int8_t  p_14, uint32_t  p_15, struct S1 * p_1186);
uint16_t  func_23(uint8_t  p_24, union U0  p_25, struct S1 * p_1186);
union U0  func_29(uint64_t  p_30, int16_t  p_31, union U0  p_32, int8_t  p_33, struct S1 * p_1186);
int32_t * func_58(int32_t  p_59, int32_t  p_60, struct S1 * p_1186);
uint16_t  func_61(uint8_t  p_62, uint32_t  p_63, struct S1 * p_1186);
uint16_t  func_66(uint32_t * p_67, uint64_t  p_68, uint32_t * p_69, int32_t * p_70, struct S1 * p_1186);
int32_t * func_78(uint32_t  p_79, struct S1 * p_1186);
uint16_t  func_88(uint32_t  p_89, struct S1 * p_1186);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1186->g_39 p_1186->g_40 p_1186->g_48 p_1186->g_93 p_1186->g_268 p_1186->g_285 p_1186->g_287.f0 p_1186->g_295 p_1186->g_290 p_1186->g_296 p_1186->g_288 p_1186->g_298 p_1186->g_327 p_1186->g_306 p_1186->g_309 p_1186->g_348 p_1186->g_36 p_1186->g_366 p_1186->g_369 p_1186->g_387 p_1186->g_388 p_1186->g_465 p_1186->g_483 p_1186->g_488 p_1186->g_497 p_1186->g_12 p_1186->g_747 p_1186->g_749 p_1186->g_754 p_1186->g_757 p_1186->g_765 p_1186->g_769 p_1186->g_764 p_1186->g_755 p_1186->g_763 p_1186->g_809 p_1186->g_603 p_1186->g_389 p_1186->g_880 p_1186->g_959 p_1186->g_960 p_1186->g_286 p_1186->g_498 p_1186->g_1041 p_1186->g_1063 p_1186->g_1076 p_1186->g_1157
 * writes: p_1186->g_12 p_1186->g_36 p_1186->g_39 p_1186->g_40 p_1186->g_48 p_1186->g_266 p_1186->g_268 p_1186->g_288 p_1186->g_290 p_1186->g_306 p_1186->g_309 p_1186->g_93 p_1186->g_327 p_1186->g_348 p_1186->g_366 p_1186->g_296 p_1186->g_465 p_1186->g_298 p_1186->g_369 p_1186->g_483 p_1186->g_488 p_1186->g_603 p_1186->g_754 p_1186->g_763 p_1186->g_809 p_1186->g_828 p_1186->g_747 p_1186->g_880 p_1186->g_1063 p_1186->g_1076 p_1186->g_1041 p_1186->g_1153 p_1186->g_1157
 */
uint32_t  func_1(struct S1 * p_1186)
{ /* block id: 4 */
    uint8_t l_11 = 0x52L;
    uint32_t l_28 = 0x91C84132L;
    uint32_t *l_34 = (void*)0;
    uint32_t *l_35 = &p_1186->g_36;
    uint64_t *l_37 = (void*)0;
    uint64_t *l_38 = &p_1186->g_39;
    union U0 l_41[3] = {{6L},{6L},{6L}};
    uint32_t l_436 = 5UL;
    int8_t *l_489 = (void*)0;
    int8_t *l_490 = &l_41[1].f3;
    int32_t l_744 = 0L;
    int16_t *l_745 = (void*)0;
    int16_t *l_746[2];
    int32_t l_748[9][4][6] = {{{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L},{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L},{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L},{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L}},{{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L},{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L},{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L},{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L}},{{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L},{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L},{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L},{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L}},{{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L},{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L},{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L},{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L}},{{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L},{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L},{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L},{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L}},{{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L},{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L},{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L},{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L}},{{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L},{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L},{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L},{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L}},{{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L},{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L},{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L},{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L}},{{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L},{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L},{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L},{0x5FB1D5A6L,0x0FD871C6L,1L,0x604DD959L,(-5L),0L}}};
    uint64_t l_844[7] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL};
    int16_t l_902 = 0x29E6L;
    int32_t l_938[2][8] = {{0L,0x5D26F7BAL,0L,0L,0x5D26F7BAL,0L,0L,0x5D26F7BAL},{0L,0x5D26F7BAL,0L,0L,0x5D26F7BAL,0L,0L,0x5D26F7BAL}};
    uint32_t l_955 = 0UL;
    int64_t l_1046 = 0L;
    int16_t ***l_1146 = &p_1186->g_763;
    uint8_t l_1183[10] = {0x5DL,0xE6L,255UL,0xE6L,0x5DL,0x5DL,0xE6L,255UL,0xE6L,0x5DL};
    int8_t l_1184 = 0L;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_746[i] = &p_1186->g_747;
    (*p_1186->g_749) = (((safe_sub_func_int16_t_s_s((-6L), (safe_rshift_func_int16_t_s_s((l_748[5][0][3] |= (0x17L == (0x2CF415D7L >= ((l_744 = (func_8((p_1186->g_12 = l_11), ((*l_490) = (p_1186->g_488 &= ((+func_13(((safe_sub_func_uint16_t_u_u((l_11 , (0xD2717F40L < (safe_sub_func_uint32_t_u_u(((+((safe_mul_func_uint16_t_u_u((((safe_unary_minus_func_uint16_t_u(func_23((FAKE_DIVERGE(p_1186->local_1_offset, get_local_id(1), 10) , (safe_add_func_uint64_t_u_u(l_28, 6UL))), func_29(((*l_38) ^= (((*l_35) = l_28) <= GROUP_DIVERGE(2, 1))), p_1186->g_40, l_41[1], p_1186->g_40, p_1186), p_1186))) , (*p_1186->g_295)) == l_436), 1L)) == p_1186->g_369)) < p_1186->g_369), l_41[1].f0)))), 0L)) >= FAKE_DIVERGE(p_1186->group_1_offset, get_group_id(1), 10)), p_1186->g_298, p_1186)) , l_41[1].f0))), p_1186) < l_28)) < FAKE_DIVERGE(p_1186->global_0_offset, get_global_id(0), 10))))), 13)))) >= p_1186->g_747) < 0UL);
    if ((safe_sub_func_int8_t_s_s(((*l_490) = 0x45L), p_1186->g_288)))
    { /* block id: 493 */
        int32_t l_773 = (-1L);
        union U0 *l_788 = &l_41[0];
        union U0 **l_787 = &l_788;
        int8_t ***l_796 = &p_1186->g_754[0];
        int32_t l_810[8] = {0x4D8CD10BL,0x4D8CD10BL,0x4D8CD10BL,0x4D8CD10BL,0x4D8CD10BL,0x4D8CD10BL,0x4D8CD10BL,0x4D8CD10BL};
        int32_t **l_895[9][10] = {{&p_1186->g_290,&p_1186->g_290,(void*)0,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290},{&p_1186->g_290,&p_1186->g_290,(void*)0,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290},{&p_1186->g_290,&p_1186->g_290,(void*)0,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290},{&p_1186->g_290,&p_1186->g_290,(void*)0,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290},{&p_1186->g_290,&p_1186->g_290,(void*)0,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290},{&p_1186->g_290,&p_1186->g_290,(void*)0,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290},{&p_1186->g_290,&p_1186->g_290,(void*)0,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290},{&p_1186->g_290,&p_1186->g_290,(void*)0,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290},{&p_1186->g_290,&p_1186->g_290,(void*)0,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290,&p_1186->g_290}};
        int32_t ***l_894 = &l_895[1][3];
        int16_t l_1014 = 0x4642L;
        int16_t ***l_1040 = &p_1186->g_763;
        int32_t *l_1083 = (void*)0;
        int i, j;
        for (p_1186->g_48 = 0; (p_1186->g_48 <= 40); p_1186->g_48++)
        { /* block id: 496 */
            uint64_t l_758 = 9UL;
            (*p_1186->g_757) = p_1186->g_754[0];
            l_758 &= 0x53D38075L;
        }
        for (p_1186->g_288 = (-2); (p_1186->g_288 < 26); p_1186->g_288++)
        { /* block id: 502 */
            int16_t **l_761 = &l_746[1];
            int32_t l_766 = (-7L);
            int32_t *l_770 = &l_748[5][0][3];
            uint16_t **l_776 = &p_1186->g_603;
            int32_t *l_777 = &p_1186->g_40;
            uint16_t l_906 = 1UL;
            int32_t l_912 = (-10L);
            int8_t l_936[6][6] = {{(-1L),0x23L,0x57L,0x29L,0x57L,0x23L},{(-1L),0x23L,0x57L,0x29L,0x57L,0x23L},{(-1L),0x23L,0x57L,0x29L,0x57L,0x23L},{(-1L),0x23L,0x57L,0x29L,0x57L,0x23L},{(-1L),0x23L,0x57L,0x29L,0x57L,0x23L},{(-1L),0x23L,0x57L,0x29L,0x57L,0x23L}};
            int64_t l_939[4];
            int32_t l_940 = 0x0BC0AFB3L;
            int i, j;
            for (i = 0; i < 4; i++)
                l_939[i] = 1L;
            (*p_1186->g_765) = l_761;
            (*l_777) &= ((p_1186->g_483[1][7] , 3L) || (((l_766 , (safe_mul_func_uint16_t_u_u((p_1186->g_769 == (0x60C2619DL >= ((*l_770) = l_766))), ((safe_add_func_int16_t_s_s((*p_1186->g_764), ((l_773 < (FAKE_DIVERGE(p_1186->global_2_offset, get_global_id(2), 10) | (safe_rshift_func_uint16_t_u_s(((void*)0 != l_776), 6)))) || 0x63L))) < 255UL)))) ^ (*p_1186->g_755)) < p_1186->g_288));
            for (p_1186->g_298 = 0; (p_1186->g_298 <= 3); p_1186->g_298 += 1)
            { /* block id: 508 */
                uint64_t l_783 = 0x257687978C68BF70L;
                int8_t ***l_797 = &p_1186->g_754[5];
                uint32_t l_817 = 0UL;
                uint8_t *l_835 = &p_1186->g_309;
                int32_t l_845[5][8] = {{0x034750BFL,0x034750BFL,0x034750BFL,0x034750BFL,0x034750BFL,0x034750BFL,0x034750BFL,0x034750BFL},{0x034750BFL,0x034750BFL,0x034750BFL,0x034750BFL,0x034750BFL,0x034750BFL,0x034750BFL,0x034750BFL},{0x034750BFL,0x034750BFL,0x034750BFL,0x034750BFL,0x034750BFL,0x034750BFL,0x034750BFL,0x034750BFL},{0x034750BFL,0x034750BFL,0x034750BFL,0x034750BFL,0x034750BFL,0x034750BFL,0x034750BFL,0x034750BFL},{0x034750BFL,0x034750BFL,0x034750BFL,0x034750BFL,0x034750BFL,0x034750BFL,0x034750BFL,0x034750BFL}};
                uint16_t *l_864[1][3][9] = {{{&p_1186->g_465,&p_1186->g_465,&p_1186->g_465,&p_1186->g_465,&p_1186->g_465,&p_1186->g_465,&p_1186->g_465,&p_1186->g_465,&p_1186->g_465},{&p_1186->g_465,&p_1186->g_465,&p_1186->g_465,&p_1186->g_465,&p_1186->g_465,&p_1186->g_465,&p_1186->g_465,&p_1186->g_465,&p_1186->g_465},{&p_1186->g_465,&p_1186->g_465,&p_1186->g_465,&p_1186->g_465,&p_1186->g_465,&p_1186->g_465,&p_1186->g_465,&p_1186->g_465,&p_1186->g_465}}};
                int32_t *l_865 = &l_766;
                int64_t l_877[1];
                int16_t **l_878 = &l_746[1];
                int32_t ***l_909 = &l_895[6][5];
                int i, j, k;
                for (i = 0; i < 1; i++)
                    l_877[i] = 1L;
                if (((*l_777) = (-3L)))
                { /* block id: 510 */
                    uint16_t l_780 = 0x9B60L;
                    int8_t *l_781 = &p_1186->g_306;
                    int8_t **l_782 = &l_490;
                    (*l_777) ^= ((l_780 & (l_781 == ((*l_782) = l_781))) > l_748[1][0][0]);
                    (*l_770) |= 0L;
                    if (l_783)
                        break;
                    return l_748[5][0][3];
                }
                else
                { /* block id: 516 */
                    union U0 l_795 = {0L};
                    int32_t l_814 = 2L;
                    int32_t l_816 = 1L;
                    for (p_1186->g_327 = 0; (p_1186->g_327 <= 3); p_1186->g_327 += 1)
                    { /* block id: 519 */
                        int32_t l_786 = 0x31211876L;
                        uint16_t *l_791 = (void*)0;
                        uint16_t *l_792 = &p_1186->g_268;
                        uint8_t *l_807 = &l_11;
                        int32_t *l_808 = &p_1186->g_809;
                        int32_t *l_811 = &l_810[4];
                        int32_t *l_812 = &l_748[5][0][3];
                        int32_t *l_813[7];
                        int64_t l_815 = 0x4E3A03938C640B16L;
                        int i, j;
                        for (i = 0; i < 7; i++)
                            l_813[i] = &p_1186->g_40;
                        (*l_777) ^= (((safe_sub_func_uint16_t_u_u(l_786, (((l_436 && (((~1L) , l_787) == (((((*l_808) = (safe_lshift_func_uint16_t_u_s(((!(--(*l_792))) || ((l_795 , (((((l_796 = &p_1186->g_754[0]) != (l_786 , l_797)) <= (+((safe_div_func_uint32_t_u_u((safe_mul_func_uint8_t_u_u((safe_unary_minus_func_int64_t_s((((*l_807) = (safe_sub_func_uint16_t_u_u(((*l_792) ^= (safe_rshift_func_uint16_t_u_u(3UL, 14))), l_795.f0))) ^ p_1186->g_296[5][2][1]))), 1UL)), l_795.f0)) == p_1186->g_298))) || l_786) == 0x3980058AL)) & GROUP_DIVERGE(0, 1))), (*p_1186->g_764)))) , 0UL) && p_1186->g_769) , (void*)0))) <= l_795.f0) == p_1186->g_12))) , p_1186->g_769) , (-4L));
                        (*l_777) = (*l_770);
                        --l_817;
                        (*l_811) = ((safe_add_func_uint8_t_u_u((safe_add_func_uint64_t_u_u(18446744073709551607UL, l_810[4])), l_783)) && (safe_rshift_func_int8_t_s_s(((safe_mod_func_uint8_t_u_u(1UL, ((**p_1186->g_763) | (((0x18C59D61L <= ((0xAA9F0A7A9BA32867L | 0x83D73649E683EF88L) >= 0x30010A794DB4D6AEL)) & (*l_777)) <= 1L)))) , 0x1EL), 7)));
                    }
                    if ((*l_777))
                        break;
                    (*l_770) = ((p_1186->g_828 = &p_1186->g_603) != &p_1186->g_498[2][3]);
                    (*l_770) = (safe_mul_func_uint8_t_u_u(248UL, ((safe_add_func_uint8_t_u_u(((safe_mod_func_int64_t_s_s(((((void*)0 != l_835) >= (safe_sub_func_uint8_t_u_u(l_817, (l_810[4] >= (((0x1811114EL | p_1186->g_348) ^ (((safe_lshift_func_int16_t_s_u(((l_810[4] > (safe_add_func_uint8_t_u_u(((((safe_add_func_uint8_t_u_u((l_783 ^ (*p_1186->g_755)), 0x98L)) != 0xA8L) > l_783) <= 1L), l_783))) || l_814), 11)) && p_1186->g_39) >= p_1186->g_268)) < l_436))))) != 1UL), p_1186->g_747)) | p_1186->g_366), (*p_1186->g_755))) || GROUP_DIVERGE(1, 1))));
                }
                if (l_810[4])
                    break;
                l_845[2][0] |= l_844[4];
                for (p_1186->g_36 = (-19); (p_1186->g_36 >= 2); p_1186->g_36 = safe_add_func_int32_t_s_s(p_1186->g_36, 9))
                { /* block id: 539 */
                    uint16_t l_848 = 0x2035L;
                    int32_t l_879 = 1L;
                    int32_t l_903 = 1L;
                    uint32_t l_913 = 0xC2B2F38AL;
                    int32_t l_937 = 3L;
                    uint8_t *l_941[8][8] = {{&p_1186->g_288,&p_1186->g_288,&p_1186->g_288,(void*)0,(void*)0,&p_1186->g_288,&l_11,&l_11},{&p_1186->g_288,&p_1186->g_288,&p_1186->g_288,(void*)0,(void*)0,&p_1186->g_288,&l_11,&l_11},{&p_1186->g_288,&p_1186->g_288,&p_1186->g_288,(void*)0,(void*)0,&p_1186->g_288,&l_11,&l_11},{&p_1186->g_288,&p_1186->g_288,&p_1186->g_288,(void*)0,(void*)0,&p_1186->g_288,&l_11,&l_11},{&p_1186->g_288,&p_1186->g_288,&p_1186->g_288,(void*)0,(void*)0,&p_1186->g_288,&l_11,&l_11},{&p_1186->g_288,&p_1186->g_288,&p_1186->g_288,(void*)0,(void*)0,&p_1186->g_288,&l_11,&l_11},{&p_1186->g_288,&p_1186->g_288,&p_1186->g_288,(void*)0,(void*)0,&p_1186->g_288,&l_11,&l_11},{&p_1186->g_288,&p_1186->g_288,&p_1186->g_288,(void*)0,(void*)0,&p_1186->g_288,&l_11,&l_11}};
                    uint16_t l_942 = 2UL;
                    int i, j;
                    --l_848;
                    if ((((void*)0 != &p_1186->g_369) , (safe_div_func_int16_t_s_s((((safe_mul_func_uint8_t_u_u((l_810[3] & (safe_unary_minus_func_uint64_t_u(l_810[3]))), p_1186->g_809)) ^ ((safe_rshift_func_int16_t_s_s((safe_sub_func_uint8_t_u_u((safe_mod_func_int32_t_s_s(((((p_1186->g_465 , ((safe_lshift_func_int8_t_s_u((&p_1186->g_389 != (((((*l_776) == l_864[0][1][5]) , l_848) , (*p_1186->g_764)) , l_865)), l_848)) || (*l_865))) ^ FAKE_DIVERGE(p_1186->group_2_offset, get_group_id(2), 10)) <= GROUP_DIVERGE(2, 1)) >= l_744), p_1186->g_327)), p_1186->g_389)), (*p_1186->g_764))) & l_11)) | 4UL), l_848))))
                    { /* block id: 541 */
                        int32_t l_870 = (-1L);
                        uint32_t *l_883[3][6] = {{&p_1186->g_36,&l_817,&l_817,&p_1186->g_36,&p_1186->g_36,&l_817},{&p_1186->g_36,&l_817,&l_817,&p_1186->g_36,&p_1186->g_36,&l_817},{&p_1186->g_36,&l_817,&l_817,&p_1186->g_36,&p_1186->g_36,&l_817}};
                        int i, j;
                        (*l_865) = ((*l_777) = ((p_1186->g_389 , ((+(safe_div_func_uint16_t_u_u((l_810[4] == ((***l_796) &= (safe_sub_func_uint64_t_u_u(((l_870 >= (safe_div_func_uint64_t_u_u((safe_mod_func_uint16_t_u_u(8UL, (safe_mul_func_int16_t_s_s((~(*p_1186->g_764)), (0x6C71L && ((**l_761) &= l_848)))))), l_877[0]))) >= (((void*)0 == l_878) , 0x4780L)), p_1186->g_48)))), l_879))) , (*p_1186->g_749))) >= 0x1E8A53D6L));
                        if (p_1186->g_880)
                            continue;
                        (*p_1186->g_749) = ((p_1186->g_39 < (4294967295UL | ((safe_lshift_func_int8_t_s_s(((***l_797) |= (*l_865)), (((p_1186->g_48++) ^ ((((safe_mul_func_int8_t_s_s((((((safe_mod_func_uint32_t_u_u((l_879 < ((safe_add_func_int8_t_s_s(8L, ((safe_lshift_func_int16_t_s_u(((void*)0 == l_894), (l_436 || 0xC3L))) < (*p_1186->g_295)))) >= (*p_1186->g_764))), l_870)) <= 0x059EL) , p_1186->g_296[5][2][1]) == l_879) & p_1186->g_39), 0x1DL)) , l_748[7][1][5]) <= 0x1C486C4AL) > p_1186->g_12)) , l_870))) == 0x0F2E3248L))) | l_844[4]);
                        return l_11;
                    }
                    else
                    { /* block id: 551 */
                        int32_t l_904 = 0x2851657CL;
                        int32_t l_905 = 6L;
                        if ((*p_1186->g_749))
                            break;
                        (*l_777) = ((safe_mod_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s((0L > (safe_mul_func_uint16_t_u_u((--l_906), (*p_1186->g_764)))), ((**p_1186->g_763) = (l_748[8][0][0] = ((*p_1186->g_755) == ((void*)0 != l_909)))))), (safe_rshift_func_int8_t_s_u((0xFEFD6BA03E5BF946L > p_1186->g_12), ((*l_835) = ((l_905 &= (l_904 >= ((*l_777) != p_1186->g_298))) , 0xDCL)))))) & (*l_777));
                    }
                    --l_913;
                    p_1186->g_880 ^= ((l_942 &= ((safe_rshift_func_int8_t_s_s((safe_div_func_uint16_t_u_u(((((((*l_865) , (-6L)) , (p_1186->g_488 != (((safe_add_func_int64_t_s_s(((safe_sub_func_int16_t_s_s((l_748[7][1][0] != (l_744 = (*l_865))), ((void*)0 == &p_1186->g_309))) != ((safe_mul_func_uint8_t_u_u(((*l_835) = (safe_rshift_func_int16_t_s_s(((*l_777) < (safe_sub_func_int16_t_s_s(((l_937 &= (safe_rshift_func_uint8_t_u_u((FAKE_DIVERGE(p_1186->local_0_offset, get_local_id(0), 10) , ((safe_lshift_func_int8_t_s_s((l_936[1][0] < 3UL), (*l_770))) > l_903)), l_913))) , (-6L)), (*p_1186->g_295)))), (*p_1186->g_764)))), l_28)) != (*l_777))), (*l_777))) != (*p_1186->g_764)) != l_748[7][3][4]))) , (*l_770)) == l_938[0][3]) , l_939[3]), (*l_777))), 4)) == l_940)) , l_848);
                }
            }
            for (p_1186->g_309 = 9; (p_1186->g_309 != 24); p_1186->g_309 = safe_add_func_uint16_t_u_u(p_1186->g_309, 9))
            { /* block id: 570 */
                int32_t *l_945 = &l_744;
                l_945 = &p_1186->g_40;
            }
        }
        if ((*p_1186->g_749))
        { /* block id: 574 */
            int32_t l_965 = 2L;
            int32_t l_974 = 8L;
            uint16_t *l_1009[9] = {(void*)0,&p_1186->g_327,(void*)0,(void*)0,&p_1186->g_327,(void*)0,(void*)0,&p_1186->g_327,(void*)0};
            int32_t l_1011 = 0x28544880L;
            uint64_t l_1057[4] = {0x8C028FBA33A65E01L,0x8C028FBA33A65E01L,0x8C028FBA33A65E01L,0x8C028FBA33A65E01L};
            int64_t l_1058 = 0x4123D20026D63D5CL;
            uint64_t ****l_1065 = &p_1186->g_1063;
            uint64_t ***l_1066 = &p_1186->g_1064[3][0][0];
            int i;
            for (p_1186->g_465 = 0; (p_1186->g_465 != 6); p_1186->g_465 = safe_add_func_uint64_t_u_u(p_1186->g_465, 3))
            { /* block id: 577 */
                union U0 l_954[2] = {{1L},{1L}};
                uint16_t *l_956 = &p_1186->g_327;
                int32_t l_970 = (-1L);
                int32_t l_976 = (-7L);
                int32_t l_979 = (-6L);
                int32_t l_982 = 0x7B431B87L;
                int32_t l_983 = 0x58690679L;
                int32_t l_984 = 0x16577618L;
                int32_t l_985[1];
                uint16_t **l_1045 = &l_956;
                uint8_t *l_1052 = &p_1186->g_309;
                uint64_t **l_1054 = &l_38;
                uint64_t ***l_1053 = &l_1054;
                int i;
                for (i = 0; i < 1; i++)
                    l_985[i] = (-3L);
                if (((safe_add_func_int32_t_s_s((l_970 |= ((*p_1186->g_749) = (safe_mul_func_int8_t_s_s((((((safe_add_func_int16_t_s_s((***p_1186->g_765), ((*l_956) = (l_954[1] , l_955)))) , (safe_div_func_int64_t_s_s((((void*)0 != p_1186->g_959) , (safe_sub_func_uint32_t_u_u((l_744 != (safe_mod_func_int8_t_s_s(l_965, (safe_sub_func_int8_t_s_s((((safe_mul_func_int16_t_s_s(((**p_1186->g_763) = l_965), l_902)) , p_1186->g_483[0][9]) , l_954[1].f0), l_955))))), p_1186->g_12))), l_744))) , l_954[1].f0) , 0x1AD59A76410161A2L) ^ p_1186->g_306), (*p_1186->g_755))))), 0x689CEC92L)) , l_748[5][0][3]))
                { /* block id: 582 */
                    int64_t l_977 = 0x42335EA0ADC4114FL;
                    int8_t l_978 = 0x04L;
                    int32_t l_980[3];
                    uint32_t l_1002 = 0x93D599C8L;
                    int i;
                    for (i = 0; i < 3; i++)
                        l_980[i] = 0x6FF06A03L;
                    l_970 |= (-1L);
                    for (p_1186->g_747 = 0; (p_1186->g_747 != (-9)); p_1186->g_747 = safe_sub_func_uint8_t_u_u(p_1186->g_747, 1))
                    { /* block id: 586 */
                        int8_t l_973 = (-1L);
                        int32_t l_975 = 8L;
                        int32_t l_981[9][2];
                        uint32_t l_986 = 0x0718E91FL;
                        int32_t *l_996 = &p_1186->g_809;
                        int32_t **l_995 = &l_996;
                        int32_t l_1001 = 0x3CB588EDL;
                        int i, j;
                        for (i = 0; i < 9; i++)
                        {
                            for (j = 0; j < 2; j++)
                                l_981[i][j] = (-1L);
                        }
                        (*p_1186->g_960) = (**p_1186->g_959);
                        l_986--;
                        l_1002 = (+(safe_rshift_func_int16_t_s_u((((safe_add_func_uint8_t_u_u((safe_mod_func_int16_t_s_s((p_1186->g_288 | ((((((void*)0 == (*p_1186->g_285)) , &p_1186->g_809) == ((*l_995) = &p_1186->g_809)) >= (safe_add_func_int8_t_s_s(((*p_1186->g_755) &= 1L), (0xED9CL & (((((safe_lshift_func_int8_t_s_s(l_976, 7)) != l_1001) && 0x1D1CL) , 0x474DF7154038533CL) != 18446744073709551614UL))))) & 0x659B7A9FL)), l_938[0][3])), l_980[0])) , 0x9AB13558L) && p_1186->g_36), 4)));
                    }
                    for (l_982 = 2; (l_982 <= 9); l_982++)
                    { /* block id: 595 */
                        l_748[5][0][3] = (safe_rshift_func_int16_t_s_s((*p_1186->g_764), (safe_rshift_func_uint16_t_u_s(((((&p_1186->g_286[0] != &p_1186->g_286[0]) < p_1186->g_309) & ((*p_1186->g_497) != l_1009[0])) , (safe_unary_minus_func_uint64_t_u(l_1011))), 3))));
                        return p_1186->g_389;
                    }
                }
                else
                { /* block id: 599 */
                    int32_t *l_1012 = &l_982;
                    uint64_t *l_1023 = &l_844[4];
                    uint16_t **l_1042 = &l_1009[0];
                    uint16_t ***l_1043 = (void*)0;
                    uint16_t ***l_1044 = (void*)0;
                    for (p_1186->g_306 = 3; (p_1186->g_306 >= 0); p_1186->g_306 -= 1)
                    { /* block id: 602 */
                        uint8_t l_1013 = 255UL;
                        (*p_1186->g_960) = (l_1012 = (*p_1186->g_960));
                        if (l_436)
                            continue;
                        l_1013 = (*p_1186->g_749);
                    }
                    for (l_976 = 6; (l_976 >= 3); l_976 -= 1)
                    { /* block id: 610 */
                        int i;
                        if (l_1014)
                            break;
                    }
                    l_979 |= ((6L && (((safe_mod_func_int32_t_s_s((safe_lshift_func_uint16_t_u_u((safe_add_func_int8_t_s_s(((safe_mod_func_uint32_t_u_u((!(((~p_1186->g_465) | (l_1011 , ((*l_1023) = ((*l_38) = l_955)))) > (*p_1186->g_295))), p_1186->g_48)) , ((((safe_rshift_func_int16_t_s_s((safe_mod_func_uint32_t_u_u((safe_mul_func_int16_t_s_s(((l_1045 = (((*p_1186->g_749) = (((safe_mod_func_uint64_t_u_u(l_938[1][1], (safe_add_func_int32_t_s_s(((l_748[5][0][3] = (safe_div_func_uint32_t_u_u((safe_sub_func_uint64_t_u_u((safe_lshift_func_int8_t_s_s(((***l_796) |= (FAKE_DIVERGE(p_1186->group_2_offset, get_group_id(2), 10) >= 0x64AA9DC0L)), 1)), (l_1040 != &p_1186->g_763))), l_955))) < 0xB759AF0FL), GROUP_DIVERGE(1, 1))))) , p_1186->g_388) > p_1186->g_1041[2][5])) , l_1042)) == &p_1186->g_603), (**p_1186->g_763))), p_1186->g_327)), 4)) | 0x3CL) >= 0UL) != GROUP_DIVERGE(2, 1))), l_1046)), GROUP_DIVERGE(1, 1))), 1L)) > 18446744073709551615UL) , p_1186->g_327)) , 0x41CB6996L);
                }
                l_970 = ((safe_unary_minus_func_uint64_t_u((safe_add_func_uint16_t_u_u(((((((*p_1186->g_749) = ((((++(*l_956)) != (l_985[0] == ((void*)0 == l_1052))) , &p_1186->g_266) == ((*l_1053) = &l_38))) , (&p_1186->g_266 != (((safe_rshift_func_uint16_t_u_u((+((void*)0 != (**l_1040))), 2)) != p_1186->g_389) , (void*)0))) < p_1186->g_809) ^ p_1186->g_465) ^ FAKE_DIVERGE(p_1186->group_2_offset, get_group_id(2), 10)), l_1057[3])))) == (*p_1186->g_755));
                if (l_1058)
                    break;
            }
            (*p_1186->g_749) ^= ((safe_mul_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s((!250UL), 0)), l_1058)) & ((((*l_1065) = p_1186->g_1063) != l_1066) , l_974));
        }
        else
        { /* block id: 629 */
            int32_t l_1071 = 0x2AE94A15L;
            for (p_1186->g_327 = 0; (p_1186->g_327 >= 51); p_1186->g_327 = safe_add_func_uint32_t_u_u(p_1186->g_327, 6))
            { /* block id: 632 */
                int16_t l_1074 = 0x57FBL;
                for (p_1186->g_36 = 0; (p_1186->g_36 < 48); ++p_1186->g_36)
                { /* block id: 635 */
                    int64_t l_1072[7][7] = {{0x5C96E71F96131EB1L,(-1L),0x70CFBB6557EB3022L,(-1L),0x5C96E71F96131EB1L,0x5C96E71F96131EB1L,(-1L)},{0x5C96E71F96131EB1L,(-1L),0x70CFBB6557EB3022L,(-1L),0x5C96E71F96131EB1L,0x5C96E71F96131EB1L,(-1L)},{0x5C96E71F96131EB1L,(-1L),0x70CFBB6557EB3022L,(-1L),0x5C96E71F96131EB1L,0x5C96E71F96131EB1L,(-1L)},{0x5C96E71F96131EB1L,(-1L),0x70CFBB6557EB3022L,(-1L),0x5C96E71F96131EB1L,0x5C96E71F96131EB1L,(-1L)},{0x5C96E71F96131EB1L,(-1L),0x70CFBB6557EB3022L,(-1L),0x5C96E71F96131EB1L,0x5C96E71F96131EB1L,(-1L)},{0x5C96E71F96131EB1L,(-1L),0x70CFBB6557EB3022L,(-1L),0x5C96E71F96131EB1L,0x5C96E71F96131EB1L,(-1L)},{0x5C96E71F96131EB1L,(-1L),0x70CFBB6557EB3022L,(-1L),0x5C96E71F96131EB1L,0x5C96E71F96131EB1L,(-1L)}};
                    int32_t l_1073 = 1L;
                    int32_t l_1075 = 0x39A9F9CCL;
                    int i, j;
                    l_1071 |= l_28;
                    p_1186->g_1076++;
                    if (l_1072[6][6])
                        break;
                }
                for (p_1186->g_268 = 22; (p_1186->g_268 == 45); p_1186->g_268 = safe_add_func_uint64_t_u_u(p_1186->g_268, 8))
                { /* block id: 642 */
                    for (p_1186->g_1076 = (-7); (p_1186->g_1076 < 25); p_1186->g_1076 = safe_add_func_uint16_t_u_u(p_1186->g_1076, 4))
                    { /* block id: 645 */
                        l_1083 = &l_1071;
                    }
                }
            }
            if ((atomic_inc(&p_1186->l_atomic_input[11]) == 2))
            { /* block id: 651 */
                int32_t l_1085 = (-1L);
                int32_t *l_1084 = &l_1085;
                int32_t l_1086[2];
                int32_t l_1087 = 0x054D09B5L;
                int64_t l_1088 = 0x0E036CC56BEBE38DL;
                int32_t *l_1141 = &l_1085;
                int i;
                for (i = 0; i < 2; i++)
                    l_1086[i] = 0x234C66A9L;
                l_1084 = (void*)0;
                l_1087 = l_1086[1];
                if (l_1088)
                { /* block id: 654 */
                    int32_t l_1089 = 5L;
                    int32_t l_1112 = (-6L);
                    for (l_1089 = 0; (l_1089 <= (-4)); --l_1089)
                    { /* block id: 657 */
                        uint8_t l_1092 = 0xE8L;
                        int16_t l_1093 = 0x5D2CL;
                        int16_t l_1094 = 0x2FCBL;
                        uint16_t l_1095 = 0xD594L;
                        int64_t l_1098 = 0x4AD7AA351F4C86E0L;
                        int32_t l_1099[2];
                        int32_t l_1100 = (-1L);
                        int i;
                        for (i = 0; i < 2; i++)
                            l_1099[i] = 0x56BFCEA0L;
                        l_1086[1] = l_1092;
                        l_1095--;
                        l_1100 |= (((l_1085 |= (l_1086[0] = l_1098)) , 1L) , (l_1086[1] &= (l_1099[1] , 0x6CD599B0L)));
                    }
                    for (l_1089 = 0; (l_1089 > (-21)); l_1089--)
                    { /* block id: 667 */
                        int64_t l_1103[8];
                        int8_t l_1104 = 0x5BL;
                        uint32_t l_1105 = 4294967289UL;
                        int16_t l_1108 = 3L;
                        uint32_t l_1109 = 0x4790C167L;
                        int32_t l_1111 = 0x74D2D42FL;
                        int32_t *l_1110 = &l_1111;
                        int i;
                        for (i = 0; i < 8; i++)
                            l_1103[i] = 0x7D7903EEFD59E9D3L;
                        ++l_1105;
                        l_1086[1] = (l_1108 , l_1109);
                        l_1084 = l_1110;
                        l_1084 = (void*)0;
                    }
                    l_1089 |= (l_1112 = (l_1085 ^= 0x0567A9B5L));
                    l_1084 = (void*)0;
                }
                else
                { /* block id: 677 */
                    uint32_t l_1113 = 6UL;
                    if (l_1113)
                    { /* block id: 678 */
                        int32_t l_1114 = 0x6264B4E8L;
                        int32_t l_1115 = 0x14DBD9B1L;
                        union U0 l_1116 = {-3L};
                        int32_t l_1117 = 0x082E7E6AL;
                        l_1115 = (l_1087 = (l_1086[1] = (l_1114 , (-3L))));
                        l_1086[1] = (((l_1116 , l_1117) , (-1L)) , 1L);
                    }
                    else
                    { /* block id: 683 */
                        int16_t l_1118[5][10] = {{0x5A06L,0x2AC2L,(-4L),(-4L),0x2AC2L,(-4L),(-4L),0x2AC2L,0x5A06L,0x5A06L},{0x5A06L,0x2AC2L,(-4L),(-4L),0x2AC2L,(-4L),(-4L),0x2AC2L,0x5A06L,0x5A06L},{0x5A06L,0x2AC2L,(-4L),(-4L),0x2AC2L,(-4L),(-4L),0x2AC2L,0x5A06L,0x5A06L},{0x5A06L,0x2AC2L,(-4L),(-4L),0x2AC2L,(-4L),(-4L),0x2AC2L,0x5A06L,0x5A06L},{0x5A06L,0x2AC2L,(-4L),(-4L),0x2AC2L,(-4L),(-4L),0x2AC2L,0x5A06L,0x5A06L}};
                        uint32_t l_1119 = 1UL;
                        int16_t l_1120 = 0x334EL;
                        int8_t l_1121[3][5];
                        uint32_t l_1122 = 4294967295UL;
                        int64_t l_1123 = 0x0D4118BD6EA9C9BDL;
                        int32_t l_1124[8] = {5L,(-7L),5L,5L,(-7L),5L,5L,(-7L)};
                        int16_t l_1125[8];
                        int16_t l_1126 = 0x5CA9L;
                        uint32_t l_1127[10][2] = {{0xBE7FEED4L,0x674A21A3L},{0xBE7FEED4L,0x674A21A3L},{0xBE7FEED4L,0x674A21A3L},{0xBE7FEED4L,0x674A21A3L},{0xBE7FEED4L,0x674A21A3L},{0xBE7FEED4L,0x674A21A3L},{0xBE7FEED4L,0x674A21A3L},{0xBE7FEED4L,0x674A21A3L},{0xBE7FEED4L,0x674A21A3L},{0xBE7FEED4L,0x674A21A3L}};
                        int32_t l_1128[6] = {6L,0x7A551717L,6L,6L,0x7A551717L,6L};
                        int32_t l_1129 = (-1L);
                        uint64_t l_1130 = 1UL;
                        int32_t l_1131 = 0x778A07A7L;
                        union U0 l_1132 = {0x67C0110E69F1AA22L};
                        union U0 l_1133 = {5L};
                        int i, j;
                        for (i = 0; i < 3; i++)
                        {
                            for (j = 0; j < 5; j++)
                                l_1121[i][j] = 2L;
                        }
                        for (i = 0; i < 8; i++)
                            l_1125[i] = (-1L);
                        l_1086[1] ^= ((l_1121[0][2] = (l_1120 = (l_1119 = l_1118[3][2]))) , ((l_1126 = ((l_1124[3] = (l_1123 &= l_1122)) , (l_1125[1] |= 3UL))) , ((l_1127[9][1] , (l_1133 = (l_1132 = ((((l_1128[1] = 1UL) , ((l_1129 , 0x4BL) , 0x720EDCE3ACD2EE2BL)) , (l_1130 , l_1131)) , l_1132)))) , 0x20806305L)));
                    }
                    for (l_1113 = (-11); (l_1113 != 38); ++l_1113)
                    { /* block id: 698 */
                        uint64_t l_1136 = 0x8293788D3865839EL;
                        uint8_t l_1137[5] = {255UL,255UL,255UL,255UL,255UL};
                        uint32_t l_1138 = 0UL;
                        int32_t l_1140 = (-3L);
                        int32_t *l_1139 = &l_1140;
                        int i;
                        l_1084 = (void*)0;
                        l_1086[1] &= l_1136;
                        l_1086[1] = ((l_1137[3] , 0x01661374L) , (l_1085 = l_1138));
                        l_1084 = l_1139;
                    }
                }
                l_1141 = (void*)0;
                unsigned int result = 0;
                result += l_1085;
                int l_1086_i0;
                for (l_1086_i0 = 0; l_1086_i0 < 2; l_1086_i0++) {
                    result += l_1086[l_1086_i0];
                }
                result += l_1087;
                result += l_1088;
                atomic_add(&p_1186->l_special_values[11], result);
            }
            else
            { /* block id: 707 */
                (1 + 1);
            }
        }
        p_1186->g_1157 &= ((safe_mul_func_uint16_t_u_u((safe_mod_func_uint8_t_u_u(((void*)0 != l_1146), ((safe_add_func_int32_t_s_s(((*p_1186->g_749) &= l_844[0]), (p_1186->g_880 ^= p_1186->g_369))) && 1UL))), ((safe_add_func_uint32_t_u_u((safe_lshift_func_int8_t_s_s(0L, 6)), (p_1186->g_1153 = (p_1186->g_1041[2][5] = (&p_1186->g_960 == &l_895[2][5]))))) && (safe_unary_minus_func_int8_t_s((safe_mul_func_int8_t_s_s(((l_28 >= 18446744073709551610UL) ^ p_1186->g_306), (*p_1186->g_755)))))))) == p_1186->g_288);
    }
    else
    { /* block id: 716 */
        uint32_t l_1180 = 0x6AFF327AL;
        int32_t *l_1185 = &p_1186->g_1041[2][5];
        (*l_1185) = (safe_mul_func_uint8_t_u_u((((safe_rshift_func_uint16_t_u_u((l_744 &= (safe_mod_func_uint16_t_u_u(((safe_div_func_uint8_t_u_u(p_1186->g_296[0][1][4], (p_1186->g_327 | ((safe_add_func_int16_t_s_s((safe_mul_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((((safe_add_func_int64_t_s_s(((safe_sub_func_int32_t_s_s(l_844[4], (safe_rshift_func_uint16_t_u_s((safe_mod_func_uint64_t_u_u(0UL, l_1180)), (7L != (+(safe_rshift_func_int8_t_s_u(0x0AL, 1)))))))) >= l_844[4]), l_1180)) ^ 65527UL) > p_1186->g_12), l_1180)), (*p_1186->g_755))), l_1183[7])) & 0xD2FB5710L)))) > l_1183[9]), l_1184))), GROUP_DIVERGE(2, 1))) > 1L) & 0UL), 0x7FL));
        return p_1186->g_348;
    }
    return p_1186->g_366;
}


/* ------------------------------------------ */
/* 
 * reads : p_1186->g_268 p_1186->g_497 p_1186->g_40 p_1186->g_348 p_1186->g_36 p_1186->g_39 p_1186->g_295 p_1186->g_296 p_1186->g_483 p_1186->g_488 p_1186->g_369 p_1186->g_288 p_1186->g_309 p_1186->g_298 p_1186->g_290 p_1186->g_93 p_1186->g_12
 * writes: p_1186->g_268 p_1186->g_39 p_1186->g_40 p_1186->g_48 p_1186->g_327 p_1186->g_369 p_1186->g_603 p_1186->g_290 p_1186->g_309 p_1186->g_36
 */
int16_t  func_8(uint8_t  p_9, int8_t  p_10, struct S1 * p_1186)
{ /* block id: 353 */
    uint8_t l_501 = 0xACL;
    int32_t l_509[3];
    int32_t l_518 = 5L;
    int32_t **l_686[2];
    int32_t ***l_685 = &l_686[0];
    int32_t l_697 = (-1L);
    int8_t *l_711[10];
    int8_t **l_710[1][4] = {{&l_711[1],&l_711[1],&l_711[1],&l_711[1]}};
    int64_t *l_724 = &p_1186->g_369;
    int64_t **l_723[1];
    int i, j;
    for (i = 0; i < 3; i++)
        l_509[i] = 0x6DD01B86L;
    for (i = 0; i < 2; i++)
        l_686[i] = (void*)0;
    for (i = 0; i < 10; i++)
        l_711[i] = &p_1186->g_306;
    for (i = 0; i < 1; i++)
        l_723[i] = &l_724;
    for (p_1186->g_268 = 0; (p_1186->g_268 <= 57); p_1186->g_268 = safe_add_func_int16_t_s_s(p_1186->g_268, 4))
    { /* block id: 356 */
        int64_t *l_508[7] = {(void*)0,&p_1186->g_369,(void*)0,(void*)0,&p_1186->g_369,(void*)0,(void*)0};
        int32_t l_516 = (-1L);
        int32_t *l_517[5][3][5] = {{{&l_516,&p_1186->g_40,&p_1186->g_40,&p_1186->g_40,&l_516},{&l_516,&p_1186->g_40,&p_1186->g_40,&p_1186->g_40,&l_516},{&l_516,&p_1186->g_40,&p_1186->g_40,&p_1186->g_40,&l_516}},{{&l_516,&p_1186->g_40,&p_1186->g_40,&p_1186->g_40,&l_516},{&l_516,&p_1186->g_40,&p_1186->g_40,&p_1186->g_40,&l_516},{&l_516,&p_1186->g_40,&p_1186->g_40,&p_1186->g_40,&l_516}},{{&l_516,&p_1186->g_40,&p_1186->g_40,&p_1186->g_40,&l_516},{&l_516,&p_1186->g_40,&p_1186->g_40,&p_1186->g_40,&l_516},{&l_516,&p_1186->g_40,&p_1186->g_40,&p_1186->g_40,&l_516}},{{&l_516,&p_1186->g_40,&p_1186->g_40,&p_1186->g_40,&l_516},{&l_516,&p_1186->g_40,&p_1186->g_40,&p_1186->g_40,&l_516},{&l_516,&p_1186->g_40,&p_1186->g_40,&p_1186->g_40,&l_516}},{{&l_516,&p_1186->g_40,&p_1186->g_40,&p_1186->g_40,&l_516},{&l_516,&p_1186->g_40,&p_1186->g_40,&p_1186->g_40,&l_516},{&l_516,&p_1186->g_40,&p_1186->g_40,&p_1186->g_40,&l_516}}};
        union U0 l_523 = {0x05FCB77EC7626E88L};
        uint64_t l_541 = 4UL;
        int32_t l_601 = 0x4C2A207EL;
        uint16_t *l_672 = &p_1186->g_268;
        uint8_t *l_695 = &p_1186->g_309;
        int i, j, k;
        if (((safe_lshift_func_int8_t_s_u((safe_mul_func_int16_t_s_s((-8L), ((void*)0 == p_1186->g_497))), 4)) >= ((l_509[2] = (safe_rshift_func_uint8_t_u_s(FAKE_DIVERGE(p_1186->global_0_offset, get_global_id(0), 10), (func_29(l_501, (safe_rshift_func_uint16_t_u_u(((safe_mul_func_int16_t_s_s((safe_sub_func_uint16_t_u_u((p_10 != (l_509[0] = p_9)), ((safe_rshift_func_int8_t_s_u((safe_sub_func_int32_t_s_s((-5L), (safe_sub_func_int32_t_s_s((l_518 = l_516), (safe_mul_func_int8_t_s_s((((((safe_mul_func_int8_t_s_s(p_10, p_1186->g_40)) , 0x8AL) != p_10) <= l_501) != p_9), p_1186->g_348)))))), 0)) != 0x62L))), FAKE_DIVERGE(p_1186->global_0_offset, get_global_id(0), 10))) >= l_501), 10)), l_523, p_9, p_1186) , p_10)))) == p_9)))
        { /* block id: 360 */
            uint16_t *l_538 = &p_1186->g_327;
            int32_t l_539[8][7] = {{0x79953093L,2L,1L,0x7910C1E4L,0L,0x7910C1E4L,1L},{0x79953093L,2L,1L,0x7910C1E4L,0L,0x7910C1E4L,1L},{0x79953093L,2L,1L,0x7910C1E4L,0L,0x7910C1E4L,1L},{0x79953093L,2L,1L,0x7910C1E4L,0L,0x7910C1E4L,1L},{0x79953093L,2L,1L,0x7910C1E4L,0L,0x7910C1E4L,1L},{0x79953093L,2L,1L,0x7910C1E4L,0L,0x7910C1E4L,1L},{0x79953093L,2L,1L,0x7910C1E4L,0L,0x7910C1E4L,1L},{0x79953093L,2L,1L,0x7910C1E4L,0L,0x7910C1E4L,1L}};
            int i, j;
            if ((atomic_inc(&p_1186->l_atomic_input[46]) == 9))
            { /* block id: 362 */
                int32_t l_524 = (-9L);
                uint16_t l_525[7][4] = {{1UL,0x3DC9L,1UL,0x3DC9L},{1UL,0x3DC9L,1UL,0x3DC9L},{1UL,0x3DC9L,1UL,0x3DC9L},{1UL,0x3DC9L,1UL,0x3DC9L},{1UL,0x3DC9L,1UL,0x3DC9L},{1UL,0x3DC9L,1UL,0x3DC9L},{1UL,0x3DC9L,1UL,0x3DC9L}};
                uint8_t l_526 = 0x6BL;
                int32_t l_527 = 0x69498EA0L;
                int32_t l_528 = 0x7AE3084AL;
                uint8_t l_529 = 248UL;
                uint16_t l_530 = 65528UL;
                int32_t l_531 = (-8L);
                uint32_t l_532 = 1UL;
                int32_t l_533[4] = {0x2D7BE304L,0x2D7BE304L,0x2D7BE304L,0x2D7BE304L};
                uint32_t l_534 = 4294967294UL;
                uint64_t l_535 = 0UL;
                int i, j;
                l_525[2][3] = l_524;
                l_534 &= (l_533[1] = (((l_526 , (l_528 = l_527)) , l_529) , (l_530 , (FAKE_DIVERGE(p_1186->group_1_offset, get_group_id(1), 10) , (l_531 , l_532)))));
                l_535--;
                unsigned int result = 0;
                result += l_524;
                int l_525_i0, l_525_i1;
                for (l_525_i0 = 0; l_525_i0 < 7; l_525_i0++) {
                    for (l_525_i1 = 0; l_525_i1 < 4; l_525_i1++) {
                        result += l_525[l_525_i0][l_525_i1];
                    }
                }
                result += l_526;
                result += l_527;
                result += l_528;
                result += l_529;
                result += l_530;
                result += l_531;
                result += l_532;
                int l_533_i0;
                for (l_533_i0 = 0; l_533_i0 < 4; l_533_i0++) {
                    result += l_533[l_533_i0];
                }
                result += l_534;
                result += l_535;
                atomic_add(&p_1186->l_special_values[46], result);
            }
            else
            { /* block id: 368 */
                (1 + 1);
            }
            if ((((p_1186->g_36 , 0UL) >= (((*l_538) = p_10) == 1UL)) & p_1186->g_39))
            { /* block id: 372 */
                return (*p_1186->g_295);
            }
            else
            { /* block id: 374 */
                int16_t l_540 = 0x71F3L;
                int16_t l_544 = (-1L);
                l_540 &= l_539[7][4];
                ++l_541;
                if (l_544)
                    continue;
            }
            if (p_9)
                continue;
        }
        else
        { /* block id: 380 */
            uint16_t *l_596 = (void*)0;
            uint16_t *l_598 = &p_1186->g_465;
            uint16_t **l_597 = &l_598;
            int32_t *l_602 = &l_509[0];
            uint64_t *l_663[4][1][4];
            uint32_t l_673 = 0xD1382A2CL;
            int8_t **l_712 = &l_711[3];
            union U0 *l_740 = &l_523;
            union U0 **l_739[7][8][4] = {{{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740}},{{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740}},{{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740}},{{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740}},{{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740}},{{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740}},{{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740},{&l_740,&l_740,&l_740,&l_740}}};
            int32_t l_743 = 9L;
            int i, j, k;
            for (i = 0; i < 4; i++)
            {
                for (j = 0; j < 1; j++)
                {
                    for (k = 0; k < 4; k++)
                        l_663[i][j][k] = &l_541;
                }
            }
            if ((atomic_inc(&p_1186->l_atomic_input[47]) == 7))
            { /* block id: 382 */
                int32_t l_545 = 4L;
                uint32_t l_569 = 2UL;
                for (l_545 = 0; (l_545 <= 20); ++l_545)
                { /* block id: 385 */
                    int32_t l_548 = 1L;
                    int32_t *l_561 = &l_548;
                    int32_t *l_562 = &l_548;
                    for (l_548 = 15; (l_548 < 21); l_548++)
                    { /* block id: 388 */
                        int16_t l_551 = 0L;
                        uint32_t l_552 = 0UL;
                        uint8_t l_553 = 0xA4L;
                        int16_t l_554 = (-5L);
                        int32_t l_556 = 0x34996F1CL;
                        int32_t *l_555 = &l_556;
                        int32_t l_557 = 0x7BB5B1DDL;
                        uint32_t l_558 = 0xCEA49BCBL;
                        int32_t *l_559 = &l_556;
                        int32_t *l_560 = (void*)0;
                        l_552 = l_551;
                        l_555 = ((l_553 , l_554) , (void*)0);
                        l_558 ^= l_557;
                        l_560 = l_559;
                    }
                    l_562 = l_561;
                }
                for (l_545 = 18; (l_545 == (-20)); l_545--)
                { /* block id: 398 */
                    int32_t l_565[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_565[i] = 0x37174BC4L;
                    for (l_565[0] = (-24); (l_565[0] >= 1); ++l_565[0])
                    { /* block id: 401 */
                        uint32_t l_568 = 0x2F1F72CBL;
                        l_568 |= 0x792F5C42L;
                    }
                }
                --l_569;
                unsigned int result = 0;
                result += l_545;
                result += l_569;
                atomic_add(&p_1186->l_special_values[47], result);
            }
            else
            { /* block id: 406 */
                (1 + 1);
            }
            if (((((p_1186->g_483[2][7] < (safe_rshift_func_int16_t_s_u((safe_rshift_func_uint8_t_u_s(((((safe_rshift_func_int16_t_s_u(p_1186->g_40, 13)) , p_10) <= (safe_div_func_uint8_t_u_u(((p_1186->g_603 = ((safe_lshift_func_int16_t_s_u((GROUP_DIVERGE(1, 1) < (((safe_div_func_int64_t_s_s(((safe_lshift_func_uint8_t_u_u((FAKE_DIVERGE(p_1186->group_2_offset, get_group_id(2), 10) & (p_1186->g_369 = ((((safe_div_func_uint64_t_u_u(p_10, (+(safe_lshift_func_uint16_t_u_u((safe_add_func_uint16_t_u_u((((safe_mod_func_int8_t_s_s(((l_596 != ((*l_597) = (void*)0)) == ((((((&p_1186->g_306 != (void*)0) > (safe_rshift_func_int16_t_s_u((0xB334F2BFL != l_601), l_509[2]))) , l_602) == &p_1186->g_40) >= (*l_602)) < (*l_602))), 248UL)) | p_10) ^ (-3L)), l_509[0])), 0))))) & 1UL) , p_1186->g_488) || GROUP_DIVERGE(1, 1)))), 6)) && (*l_602)), p_10)) , (void*)0) != (void*)0)), p_10)) , (void*)0)) == &p_1186->g_268), p_1186->g_348))) == 255UL), (*l_602))), l_509[0]))) && p_1186->g_36) >= (-7L)) , (*l_602)))
            { /* block id: 412 */
                if ((atomic_inc(&p_1186->l_atomic_input[5]) == 9))
                { /* block id: 414 */
                    int32_t l_605 = 0x41859C16L;
                    int32_t *l_604 = &l_605;
                    int32_t *l_606[2][9] = {{&l_605,&l_605,&l_605,&l_605,&l_605,&l_605,&l_605,&l_605,&l_605},{&l_605,&l_605,&l_605,&l_605,&l_605,&l_605,&l_605,&l_605,&l_605}};
                    uint16_t l_607 = 1UL;
                    uint8_t l_608 = 0x40L;
                    int64_t l_609 = 1L;
                    int32_t l_610 = 0x4D7D51D3L;
                    int i, j;
                    l_606[0][7] = l_604;
                    if ((l_610 = (l_609 = (l_607 , l_608))))
                    { /* block id: 418 */
                        int16_t l_611[3];
                        uint8_t l_612 = 248UL;
                        uint8_t l_613 = 0xD4L;
                        uint8_t l_614 = 0UL;
                        int32_t l_615 = 0L;
                        uint32_t l_616 = 2UL;
                        int i;
                        for (i = 0; i < 3; i++)
                            l_611[i] = 0x5FFDL;
                        l_612 = ((*l_604) ^= l_611[0]);
                        l_616 = (l_615 = ((*l_604) = (l_613 , l_614)));
                    }
                    else
                    { /* block id: 424 */
                        int32_t l_617 = 0L;
                        int64_t l_618 = (-1L);
                        uint8_t l_619[3];
                        int32_t l_621 = 0x70D33606L;
                        int32_t *l_620[4];
                        int64_t l_622 = 0x097852A207C7E1EDL;
                        int16_t l_623 = 7L;
                        uint8_t l_624 = 0x67L;
                        int i;
                        for (i = 0; i < 3; i++)
                            l_619[i] = 0xB4L;
                        for (i = 0; i < 4; i++)
                            l_620[i] = &l_621;
                        l_606[0][0] = ((l_617 , (l_618 , l_619[1])) , l_620[0]);
                        --l_624;
                    }
                    for (l_607 = 0; (l_607 <= 3); l_607 += 1)
                    { /* block id: 430 */
                        uint64_t l_627 = 0x651C1E4313DEB58FL;
                        int8_t l_630[8][1][10] = {{{9L,7L,6L,0x07L,6L,7L,9L,0x40L,4L,4L}},{{9L,7L,6L,0x07L,6L,7L,9L,0x40L,4L,4L}},{{9L,7L,6L,0x07L,6L,7L,9L,0x40L,4L,4L}},{{9L,7L,6L,0x07L,6L,7L,9L,0x40L,4L,4L}},{{9L,7L,6L,0x07L,6L,7L,9L,0x40L,4L,4L}},{{9L,7L,6L,0x07L,6L,7L,9L,0x40L,4L,4L}},{{9L,7L,6L,0x07L,6L,7L,9L,0x40L,4L,4L}},{{9L,7L,6L,0x07L,6L,7L,9L,0x40L,4L,4L}}};
                        uint32_t l_631 = 0x640F0D59L;
                        int64_t l_632 = 0x5C19C43B3BEC3667L;
                        int i, j, k;
                        l_627++;
                        l_631 &= l_630[5][0][2];
                        l_632 = 0x30C3CC85L;
                    }
                    unsigned int result = 0;
                    result += l_605;
                    result += l_607;
                    result += l_608;
                    result += l_609;
                    result += l_610;
                    atomic_add(&p_1186->l_special_values[5], result);
                }
                else
                { /* block id: 435 */
                    (1 + 1);
                }
            }
            else
            { /* block id: 438 */
                uint32_t l_671 = 0x8C76D6D4L;
                int32_t l_674 = 3L;
                int8_t **l_725 = &l_711[0];
                uint16_t *l_742 = &p_1186->g_465;
                if ((!p_10))
                { /* block id: 439 */
                    if ((atomic_inc(&p_1186->l_atomic_input[44]) == 5))
                    { /* block id: 441 */
                        int64_t l_633 = 0x7086EAA91647AEEEL;
                        uint16_t l_634 = 65532UL;
                        int32_t l_635 = 8L;
                        int32_t l_636 = (-9L);
                        union U0 l_637 = {0x56C795F501CA5F23L};
                        union U0 l_638[9] = {{0x5BFB2517B2E5DABEL},{0x646880525FD80F84L},{0x5BFB2517B2E5DABEL},{0x5BFB2517B2E5DABEL},{0x646880525FD80F84L},{0x5BFB2517B2E5DABEL},{0x5BFB2517B2E5DABEL},{0x646880525FD80F84L},{0x5BFB2517B2E5DABEL}};
                        uint32_t l_639[6][9];
                        int16_t l_640 = 0L;
                        int64_t l_641 = 0x470E85005E7EA23EL;
                        uint16_t l_642 = 0x9EA4L;
                        int64_t l_643 = 0x74C21C976A806F8FL;
                        uint32_t l_644 = 1UL;
                        uint32_t l_645 = 0UL;
                        uint16_t l_646 = 65535UL;
                        int8_t l_647 = 0L;
                        int64_t l_648 = 0x24CA10DA5E3E2A3FL;
                        int32_t l_649[7];
                        int8_t l_650 = 0x3CL;
                        int32_t l_651 = 0x557CF03FL;
                        int32_t l_652 = 0x23F61EEFL;
                        int16_t l_653 = 3L;
                        uint32_t l_654 = 0x4423EFEBL;
                        int i, j;
                        for (i = 0; i < 6; i++)
                        {
                            for (j = 0; j < 9; j++)
                                l_639[i][j] = 0x51863628L;
                        }
                        for (i = 0; i < 7; i++)
                            l_649[i] = (-8L);
                        l_634 ^= l_633;
                        l_646 = (((l_642 = (l_635 , ((l_636 , (l_638[4] = l_637)) , (l_641 |= (l_639[4][5] , l_640))))) , (-3L)) , (l_645 = (l_644 = l_643)));
                        --l_654;
                        unsigned int result = 0;
                        result += l_633;
                        result += l_634;
                        result += l_635;
                        result += l_636;
                        result += l_637.f0;
                        result += l_637.f1;
                        result += l_637.f2;
                        result += l_637.f3;
                        int l_638_i0;
                        for (l_638_i0 = 0; l_638_i0 < 9; l_638_i0++) {
                            result += l_638[l_638_i0].f0;
                            result += l_638[l_638_i0].f1;
                            result += l_638[l_638_i0].f2;
                            result += l_638[l_638_i0].f3;
                        }
                        int l_639_i0, l_639_i1;
                        for (l_639_i0 = 0; l_639_i0 < 6; l_639_i0++) {
                            for (l_639_i1 = 0; l_639_i1 < 9; l_639_i1++) {
                                result += l_639[l_639_i0][l_639_i1];
                            }
                        }
                        result += l_640;
                        result += l_641;
                        result += l_642;
                        result += l_643;
                        result += l_644;
                        result += l_645;
                        result += l_646;
                        result += l_647;
                        result += l_648;
                        int l_649_i0;
                        for (l_649_i0 = 0; l_649_i0 < 7; l_649_i0++) {
                            result += l_649[l_649_i0];
                        }
                        result += l_650;
                        result += l_651;
                        result += l_652;
                        result += l_653;
                        result += l_654;
                        atomic_add(&p_1186->l_special_values[44], result);
                    }
                    else
                    { /* block id: 450 */
                        (1 + 1);
                    }
                }
                else
                { /* block id: 453 */
                    uint64_t *l_664 = &p_1186->g_39;
                    int32_t l_696 = 0x43798833L;
                    int8_t **l_713[3][3] = {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}};
                    int32_t l_714[4][2] = {{0x4E095293L,0x5183F9DBL},{0x4E095293L,0x5183F9DBL},{0x4E095293L,0x5183F9DBL},{0x4E095293L,0x5183F9DBL}};
                    int32_t l_717 = 1L;
                    uint32_t l_718[9][10][2] = {{{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L}},{{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L}},{{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L}},{{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L}},{{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L}},{{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L}},{{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L}},{{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L}},{{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L},{4294967295UL,0x968BF005L}}};
                    int i, j, k;
                    for (p_1186->g_369 = 0; (p_1186->g_369 <= 2); p_1186->g_369 += 1)
                    { /* block id: 456 */
                        uint64_t **l_661 = (void*)0;
                        uint64_t **l_662[3];
                        uint16_t *l_715 = (void*)0;
                        uint16_t *l_716 = (void*)0;
                        int i;
                        for (i = 0; i < 3; i++)
                            l_662[i] = &p_1186->g_266;
                        l_674 = ((((safe_mul_func_uint8_t_u_u(((l_673 = (((safe_mod_func_uint32_t_u_u((((((((l_663[2][0][0] = &p_1186->g_39) == (l_509[p_1186->g_369] , l_664)) || ((safe_lshift_func_uint8_t_u_u((safe_add_func_int8_t_s_s((safe_rshift_func_int16_t_s_u(((((*l_602) = (~0L)) >= 18446744073709551615UL) & (!0x74L)), ((*p_1186->g_295) & (p_10 && 4294967295UL)))), l_671)), 0)) , 0x8041L)) > 0x48L) > l_671) , l_672) == (void*)0), 6UL)) , l_671) != p_1186->g_36)) > l_518), 0xDDL)) >= l_518) & FAKE_DIVERGE(p_1186->global_2_offset, get_global_id(2), 10)) || (*l_602));
                        p_1186->g_40 ^= (safe_lshift_func_uint16_t_u_s(((safe_div_func_uint16_t_u_u((safe_add_func_int8_t_s_s((+((safe_div_func_uint16_t_u_u((safe_rshift_func_int8_t_s_u(p_1186->g_296[5][2][1], ((!((void*)0 == l_685)) && (safe_rshift_func_uint16_t_u_u((((safe_add_func_uint8_t_u_u(FAKE_DIVERGE(p_1186->global_0_offset, get_global_id(0), 10), (safe_add_func_int8_t_s_s(((p_1186->g_39 > ((!p_1186->g_288) > ((safe_add_func_int16_t_s_s((&p_9 != l_695), ((l_509[p_1186->g_369] = ((1L == 0x1C5BL) <= 0L)) != 0x42703E1CL))) | 65533UL))) <= p_1186->g_309), 8L)))) <= p_1186->g_348) > p_1186->g_298), l_696))))), l_697)) > 0x35L)), l_696)), 0x4E6CL)) == p_1186->g_268), 10));
                        p_1186->g_290 = func_78(l_671, p_1186);
                        (*p_1186->g_290) = (safe_mul_func_uint8_t_u_u(((safe_rshift_func_uint16_t_u_u(((*l_602) || (((safe_lshift_func_uint16_t_u_s((((0x984BFC3EL || (*p_1186->g_290)) < (l_717 &= (safe_div_func_uint64_t_u_u((p_1186->g_39 = l_696), (l_714[2][1] |= ((safe_add_func_int64_t_s_s((*l_602), ((((safe_add_func_int32_t_s_s((((l_710[0][3] == (l_713[1][0] = l_712)) ^ p_1186->g_369) || 0L), 0UL)) == p_9) & p_9) & GROUP_DIVERGE(0, 1)))) ^ p_1186->g_93)))))) == p_1186->g_12), 3)) != 1L) , p_1186->g_268)), l_718[2][6][1])) != p_9), 0L));
                    }
                    for (p_10 = 0; (p_10 <= 2); p_10 += 1)
                    { /* block id: 472 */
                        (*l_602) = (safe_div_func_uint64_t_u_u(p_9, 0x03EA6BD114DE36BDL));
                    }
                }
                for (p_1186->g_369 = 0; (p_1186->g_369 != (-3)); p_1186->g_369 = safe_sub_func_uint64_t_u_u(p_1186->g_369, 1))
                { /* block id: 478 */
                    uint32_t *l_728 = &p_1186->g_36;
                    union U0 *l_738 = &l_523;
                    union U0 **l_737 = &l_738;
                    uint16_t *l_741 = &p_1186->g_327;
                    l_723[0] = ((((*l_695) = p_10) > p_1186->g_93) , &l_508[0]);
                    l_743 ^= (0x8EDED18DL >= (((*l_602) , l_672) == (((void*)0 != l_725) , ((safe_rshift_func_uint16_t_u_s((((*l_728) |= ((void*)0 == &p_1186->g_387[2])) || (safe_lshift_func_int16_t_s_u((&p_1186->g_266 == (((safe_mod_func_uint16_t_u_u((safe_add_func_int8_t_s_s(((safe_sub_func_uint16_t_u_u(((*l_741) = (((((l_737 != l_739[0][4][2]) | p_9) & (*p_1186->g_295)) | 0x631EL) < l_671)), 0L)) || 18446744073709551613UL), p_1186->g_39)), 0x9932L)) || (-5L)) , (void*)0)), p_9))), l_671)) , l_742))));
                }
            }
        }
    }
    return (*p_1186->g_295);
}


/* ------------------------------------------ */
/* 
 * reads : p_1186->g_40 p_1186->g_327 p_1186->g_268 p_1186->g_295 p_1186->g_296 p_1186->g_36 p_1186->g_48 p_1186->g_306 p_1186->g_465 p_1186->g_298 p_1186->g_369 p_1186->g_483
 * writes: p_1186->g_40 p_1186->g_268 p_1186->g_36 p_1186->g_327 p_1186->g_465 p_1186->g_39 p_1186->g_298 p_1186->g_369 p_1186->g_483
 */
int32_t  func_13(int8_t  p_14, uint32_t  p_15, struct S1 * p_1186)
{ /* block id: 311 */
    int32_t *l_437 = &p_1186->g_40;
    int32_t l_438 = 4L;
    uint16_t *l_447 = &p_1186->g_268;
    uint16_t l_460[2][7][1];
    int32_t l_478[7];
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 1; k++)
                l_460[i][j][k] = 4UL;
        }
    }
    for (i = 0; i < 7; i++)
        l_478[i] = 0L;
    l_438 ^= ((*l_437) &= p_14);
    l_438 ^= (((safe_sub_func_uint8_t_u_u((safe_sub_func_uint32_t_u_u((safe_sub_func_uint32_t_u_u(0x23973744L, (safe_mul_func_int8_t_s_s((-1L), ((l_447 != (void*)0) != (*l_437)))))), (-3L))), (safe_div_func_uint8_t_u_u(((&p_1186->g_327 == l_447) , ((safe_mod_func_int64_t_s_s((safe_add_func_uint16_t_u_u(p_1186->g_327, p_15)), 4L)) <= p_15)), p_1186->g_268)))) | p_15) > (*p_1186->g_295));
    for (p_1186->g_268 = 1; (p_1186->g_268 <= 8); p_1186->g_268 += 1)
    { /* block id: 317 */
        int8_t l_463[10][10] = {{0x70L,0x54L,0L,(-1L),0x54L,(-1L),0L,0x54L,0x70L,0x70L},{0x70L,0x54L,0L,(-1L),0x54L,(-1L),0L,0x54L,0x70L,0x70L},{0x70L,0x54L,0L,(-1L),0x54L,(-1L),0L,0x54L,0x70L,0x70L},{0x70L,0x54L,0L,(-1L),0x54L,(-1L),0L,0x54L,0x70L,0x70L},{0x70L,0x54L,0L,(-1L),0x54L,(-1L),0L,0x54L,0x70L,0x70L},{0x70L,0x54L,0L,(-1L),0x54L,(-1L),0L,0x54L,0x70L,0x70L},{0x70L,0x54L,0L,(-1L),0x54L,(-1L),0L,0x54L,0x70L,0x70L},{0x70L,0x54L,0L,(-1L),0x54L,(-1L),0L,0x54L,0x70L,0x70L},{0x70L,0x54L,0L,(-1L),0x54L,(-1L),0L,0x54L,0x70L,0x70L},{0x70L,0x54L,0L,(-1L),0x54L,(-1L),0L,0x54L,0x70L,0x70L}};
        int32_t l_470 = 0x37CC1EB9L;
        int32_t *l_472 = (void*)0;
        int32_t l_479 = 2L;
        int32_t l_480 = 0x68868C3DL;
        int32_t l_481[4];
        int16_t *l_487[5];
        int16_t **l_486[10][5][3] = {{{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]}},{{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]}},{{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]}},{{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]}},{{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]}},{{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]}},{{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]}},{{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]}},{{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]}},{{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]},{&l_487[4],&l_487[4],&l_487[4]}}};
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_481[i] = 0L;
        for (i = 0; i < 5; i++)
            l_487[i] = &p_1186->g_298;
        for (p_1186->g_36 = 0; (p_1186->g_36 <= 8); p_1186->g_36 += 1)
        { /* block id: 320 */
            return p_1186->g_48;
        }
        for (p_1186->g_327 = 0; (p_1186->g_327 <= 8); p_1186->g_327 += 1)
        { /* block id: 325 */
            int32_t *l_457 = &p_1186->g_40;
            uint16_t *l_464 = &p_1186->g_465;
            int8_t *l_468 = &l_463[0][5];
            uint64_t *l_469 = &p_1186->g_39;
            int32_t **l_471[1][4] = {{(void*)0,(void*)0,(void*)0,(void*)0}};
            int32_t *l_473 = &p_1186->g_40;
            int i, j;
            l_473 = (FAKE_DIVERGE(p_1186->local_0_offset, get_local_id(0), 10) , (l_472 = func_58(((safe_mul_func_uint16_t_u_u((safe_unary_minus_func_int64_t_s((((((p_1186->g_306 <= p_1186->g_306) | 0x5EL) && p_15) , ((void*)0 != l_457)) || 0UL))), (safe_sub_func_uint8_t_u_u(l_460[1][1][0], ((*l_468) ^= (safe_rshift_func_uint16_t_u_s(((*l_464)--), 13))))))) > (l_470 = (((*l_469) = p_15) , 4294967292UL))), p_1186->g_327, p_1186)));
        }
        for (p_1186->g_298 = 0; (p_1186->g_298 >= 0); p_1186->g_298 -= 1)
        { /* block id: 335 */
            int32_t l_475 = 7L;
            int32_t l_476 = 0x0B510125L;
            int32_t l_477[10];
            int32_t l_482[7];
            int i;
            for (i = 0; i < 10; i++)
                l_477[i] = 0L;
            for (i = 0; i < 7; i++)
                l_482[i] = 0x4ED23C34L;
            for (p_1186->g_369 = 0; (p_1186->g_369 <= 0); p_1186->g_369 += 1)
            { /* block id: 338 */
                int32_t *l_474[10];
                int i;
                for (i = 0; i < 10; i++)
                    l_474[i] = &p_1186->g_40;
                p_1186->g_483[1][7]--;
                (*l_437) = ((void*)0 != l_486[2][2][2]);
                (*l_437) |= (-7L);
            }
            for (p_14 = 6; (p_14 >= 0); p_14 -= 1)
            { /* block id: 345 */
                int i, j, k;
                (*l_437) &= l_460[(p_1186->g_298 + 1)][(p_1186->g_298 + 3)][p_1186->g_298];
            }
        }
    }
    return (*l_437);
}


/* ------------------------------------------ */
/* 
 * reads : p_1186->g_48 p_1186->g_40 p_1186->g_93 p_1186->g_268 p_1186->g_285 p_1186->g_287.f0 p_1186->g_295 p_1186->g_290 p_1186->g_296 p_1186->g_288 p_1186->g_298 p_1186->g_327 p_1186->g_306 p_1186->g_309 p_1186->g_348 p_1186->g_36 p_1186->g_366 p_1186->g_369 p_1186->g_387 p_1186->g_388
 * writes: p_1186->g_48 p_1186->g_39 p_1186->g_36 p_1186->g_266 p_1186->g_268 p_1186->g_288 p_1186->g_290 p_1186->g_40 p_1186->g_306 p_1186->g_309 p_1186->g_93 p_1186->g_327 p_1186->g_348 p_1186->g_366 p_1186->g_296
 */
uint16_t  func_23(uint8_t  p_24, union U0  p_25, struct S1 * p_1186)
{ /* block id: 17 */
    int32_t *l_72 = &p_1186->g_40;
    int32_t l_354 = (-3L);
    int32_t *l_390[8] = {&l_354,&l_354,&l_354,&l_354,&l_354,&l_354,&l_354,&l_354};
    uint32_t l_391 = 4294967286UL;
    int i;
    for (p_1186->g_48 = (-5); (p_1186->g_48 == 44); p_1186->g_48 = safe_add_func_uint32_t_u_u(p_1186->g_48, 1))
    { /* block id: 20 */
        uint32_t *l_71 = (void*)0;
        uint64_t *l_73 = &p_1186->g_39;
        int32_t l_353 = 0x5F35C964L;
        int32_t **l_386 = &p_1186->g_290;
        (*l_72) = (safe_lshift_func_int8_t_s_s((safe_sub_func_uint64_t_u_u(18446744073709551615UL, ((safe_lshift_func_int8_t_s_s(0x02L, (((*l_386) = func_58(((func_61(((safe_mul_func_uint16_t_u_u(func_66(l_71, ((*l_73) = (l_72 == (void*)0)), &p_1186->g_48, l_71, p_1186), (safe_mul_func_int16_t_s_s((!(((safe_mod_func_uint64_t_u_u(((p_1186->g_48 ^ l_353) || l_353), (-1L))) , l_353) , 0x73A9L)), p_1186->g_298)))) != l_354), p_24, p_1186) ^ p_1186->g_369) == p_25.f0), p_1186->g_298, p_1186)) == p_1186->g_387[2]))) , (*l_72)))), 2));
    }
    l_391--;
    if ((atomic_inc(&p_1186->g_atomic_input[48 * get_linear_group_id() + 13]) == 1))
    { /* block id: 268 */
        int32_t l_394[4][2][10] = {{{(-1L),(-1L),0L,0x2A0066BCL,0x569DD28BL,0x2A0066BCL,0L,(-1L),(-1L),0L},{(-1L),(-1L),0L,0x2A0066BCL,0x569DD28BL,0x2A0066BCL,0L,(-1L),(-1L),0L}},{{(-1L),(-1L),0L,0x2A0066BCL,0x569DD28BL,0x2A0066BCL,0L,(-1L),(-1L),0L},{(-1L),(-1L),0L,0x2A0066BCL,0x569DD28BL,0x2A0066BCL,0L,(-1L),(-1L),0L}},{{(-1L),(-1L),0L,0x2A0066BCL,0x569DD28BL,0x2A0066BCL,0L,(-1L),(-1L),0L},{(-1L),(-1L),0L,0x2A0066BCL,0x569DD28BL,0x2A0066BCL,0L,(-1L),(-1L),0L}},{{(-1L),(-1L),0L,0x2A0066BCL,0x569DD28BL,0x2A0066BCL,0L,(-1L),(-1L),0L},{(-1L),(-1L),0L,0x2A0066BCL,0x569DD28BL,0x2A0066BCL,0L,(-1L),(-1L),0L}}};
        uint32_t l_428 = 9UL;
        union U0 l_429 = {0L};
        union U0 *l_431 = &l_429;
        union U0 **l_430[3][3];
        union U0 **l_432 = &l_431;
        uint16_t l_433 = 4UL;
        int i, j, k;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 3; j++)
                l_430[i][j] = &l_431;
        }
        for (l_394[1][0][6] = 14; (l_394[1][0][6] > 13); l_394[1][0][6]--)
        { /* block id: 271 */
            int32_t l_397 = 0x1390F7C9L;
            int32_t *l_427 = &l_397;
            for (l_397 = 0; (l_397 >= 21); l_397++)
            { /* block id: 274 */
                int32_t l_400[9] = {0x2CCD2FD8L,0x2CCD2FD8L,0x2CCD2FD8L,0x2CCD2FD8L,0x2CCD2FD8L,0x2CCD2FD8L,0x2CCD2FD8L,0x2CCD2FD8L,0x2CCD2FD8L};
                int8_t l_422 = (-1L);
                int16_t l_425 = 1L;
                int16_t *l_424 = &l_425;
                int16_t **l_423 = &l_424;
                int16_t **l_426 = &l_424;
                int i;
                for (l_400[3] = 0; (l_400[3] <= 7); l_400[3] += 1)
                { /* block id: 277 */
                    uint32_t l_401 = 6UL;
                    uint8_t l_404[5][4][10] = {{{0UL,0x75L,1UL,255UL,0xBCL,0x87L,0x87L,0xBCL,255UL,1UL},{0UL,0x75L,1UL,255UL,0xBCL,0x87L,0x87L,0xBCL,255UL,1UL},{0UL,0x75L,1UL,255UL,0xBCL,0x87L,0x87L,0xBCL,255UL,1UL},{0UL,0x75L,1UL,255UL,0xBCL,0x87L,0x87L,0xBCL,255UL,1UL}},{{0UL,0x75L,1UL,255UL,0xBCL,0x87L,0x87L,0xBCL,255UL,1UL},{0UL,0x75L,1UL,255UL,0xBCL,0x87L,0x87L,0xBCL,255UL,1UL},{0UL,0x75L,1UL,255UL,0xBCL,0x87L,0x87L,0xBCL,255UL,1UL},{0UL,0x75L,1UL,255UL,0xBCL,0x87L,0x87L,0xBCL,255UL,1UL}},{{0UL,0x75L,1UL,255UL,0xBCL,0x87L,0x87L,0xBCL,255UL,1UL},{0UL,0x75L,1UL,255UL,0xBCL,0x87L,0x87L,0xBCL,255UL,1UL},{0UL,0x75L,1UL,255UL,0xBCL,0x87L,0x87L,0xBCL,255UL,1UL},{0UL,0x75L,1UL,255UL,0xBCL,0x87L,0x87L,0xBCL,255UL,1UL}},{{0UL,0x75L,1UL,255UL,0xBCL,0x87L,0x87L,0xBCL,255UL,1UL},{0UL,0x75L,1UL,255UL,0xBCL,0x87L,0x87L,0xBCL,255UL,1UL},{0UL,0x75L,1UL,255UL,0xBCL,0x87L,0x87L,0xBCL,255UL,1UL},{0UL,0x75L,1UL,255UL,0xBCL,0x87L,0x87L,0xBCL,255UL,1UL}},{{0UL,0x75L,1UL,255UL,0xBCL,0x87L,0x87L,0xBCL,255UL,1UL},{0UL,0x75L,1UL,255UL,0xBCL,0x87L,0x87L,0xBCL,255UL,1UL},{0UL,0x75L,1UL,255UL,0xBCL,0x87L,0x87L,0xBCL,255UL,1UL},{0UL,0x75L,1UL,255UL,0xBCL,0x87L,0x87L,0xBCL,255UL,1UL}}};
                    uint8_t l_417 = 0x8DL;
                    int32_t *l_421[6];
                    int i, j, k;
                    for (i = 0; i < 6; i++)
                        l_421[i] = (void*)0;
                    if (((--l_401) , l_404[1][0][9]))
                    { /* block id: 279 */
                        uint32_t l_405 = 4UL;
                        uint8_t l_406 = 0UL;
                        uint16_t l_409 = 0x0EA0L;
                        uint16_t *l_408 = &l_409;
                        uint16_t **l_407 = &l_408;
                        uint16_t **l_410 = &l_408;
                        l_406 = (l_405 = (-1L));
                        l_410 = l_407;
                    }
                    else
                    { /* block id: 283 */
                        uint16_t l_411 = 0xF8BCL;
                        uint8_t l_412[8];
                        uint8_t l_413 = 8UL;
                        uint16_t l_414 = 0x1189L;
                        int32_t l_416 = 9L;
                        int32_t *l_415 = &l_416;
                        int i;
                        for (i = 0; i < 8; i++)
                            l_412[i] = 1UL;
                        l_415 = (((l_411 , (l_414 = (l_413 = l_412[2]))) , 1L) , (l_390[l_400[3]] = (void*)0));
                        l_416 = 0x35A6D867L;
                    }
                    if (l_417)
                    { /* block id: 290 */
                        uint64_t l_418 = 18446744073709551606UL;
                        uint8_t l_419 = 0xCDL;
                        l_418 &= 6L;
                        l_419 ^= 0L;
                    }
                    else
                    { /* block id: 293 */
                        uint32_t l_420 = 4294967295UL;
                        l_420 = 0x0ED96D27L;
                    }
                    l_421[5] = (void*)0;
                }
                l_426 = (l_423 = (GROUP_DIVERGE(1, 1) , (l_422 , (void*)0)));
                for (l_425 = 0; l_425 < 7; l_425 += 1)
                {
                    for (l_400[3] = 0; l_400[3] < 4; l_400[3] += 1)
                    {
                        for (l_422 = 0; l_422 < 9; l_422 += 1)
                        {
                            p_1186->g_296[l_425][l_400[3]][l_422] = 0x1B74L;
                        }
                    }
                }
            }
            l_427 = (void*)0;
        }
        l_432 = (l_430[1][2] = (l_428 , (l_429 , (void*)0)));
        --l_433;
        unsigned int result = 0;
        int l_394_i0, l_394_i1, l_394_i2;
        for (l_394_i0 = 0; l_394_i0 < 4; l_394_i0++) {
            for (l_394_i1 = 0; l_394_i1 < 2; l_394_i1++) {
                for (l_394_i2 = 0; l_394_i2 < 10; l_394_i2++) {
                    result += l_394[l_394_i0][l_394_i1][l_394_i2];
                }
            }
        }
        result += l_428;
        result += l_429.f0;
        result += l_429.f1;
        result += l_429.f2;
        result += l_429.f3;
        result += l_433;
        atomic_add(&p_1186->g_special_values[48 * get_linear_group_id() + 13], result);
    }
    else
    { /* block id: 307 */
        (1 + 1);
    }
    return p_1186->g_388;
}


/* ------------------------------------------ */
/* 
 * reads : p_1186->g_39
 * writes: p_1186->g_39 p_1186->g_40 p_1186->g_48
 */
union U0  func_29(uint64_t  p_30, int16_t  p_31, union U0  p_32, int8_t  p_33, struct S1 * p_1186)
{ /* block id: 8 */
    int16_t l_46[5][4][2] = {{{(-1L),4L},{(-1L),4L},{(-1L),4L},{(-1L),4L}},{{(-1L),4L},{(-1L),4L},{(-1L),4L},{(-1L),4L}},{{(-1L),4L},{(-1L),4L},{(-1L),4L},{(-1L),4L}},{{(-1L),4L},{(-1L),4L},{(-1L),4L},{(-1L),4L}},{{(-1L),4L},{(-1L),4L},{(-1L),4L},{(-1L),4L}}};
    int32_t *l_47[2][10] = {{&p_1186->g_40,&p_1186->g_40,&p_1186->g_40,&p_1186->g_40,&p_1186->g_40,&p_1186->g_40,&p_1186->g_40,&p_1186->g_40,&p_1186->g_40,&p_1186->g_40},{&p_1186->g_40,&p_1186->g_40,&p_1186->g_40,&p_1186->g_40,&p_1186->g_40,&p_1186->g_40,&p_1186->g_40,&p_1186->g_40,&p_1186->g_40,&p_1186->g_40}};
    union U0 l_49 = {0x3B72B46FAC5ADF6FL};
    int i, j, k;
    for (p_1186->g_39 = 0; (p_1186->g_39 <= 60); p_1186->g_39++)
    { /* block id: 11 */
        return p_32;
    }
    p_1186->g_48 = (p_1186->g_40 = (safe_add_func_uint8_t_u_u(1UL, l_46[3][0][1])));
    return l_49;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_58(int32_t  p_59, int32_t  p_60, struct S1 * p_1186)
{ /* block id: 247 */
    int32_t *l_385[1];
    int i;
    for (i = 0; i < 1; i++)
        l_385[i] = (void*)0;
    if ((atomic_inc(&p_1186->l_atomic_input[3]) == 7))
    { /* block id: 249 */
        int64_t l_370 = 2L;
        uint32_t l_371 = 0x1652D02CL;
        int32_t l_372 = 0x1C5CC861L;
        int32_t l_373 = 4L;
        int16_t l_374 = (-1L);
        int16_t l_375 = 0L;
        int8_t l_376 = 0L;
        uint64_t l_377 = 0x02179823730888E4L;
        int16_t l_378[5][2][7] = {{{(-5L),0x512DL,0x3C51L,5L,0x0600L,6L,(-1L)},{(-5L),0x512DL,0x3C51L,5L,0x0600L,6L,(-1L)}},{{(-5L),0x512DL,0x3C51L,5L,0x0600L,6L,(-1L)},{(-5L),0x512DL,0x3C51L,5L,0x0600L,6L,(-1L)}},{{(-5L),0x512DL,0x3C51L,5L,0x0600L,6L,(-1L)},{(-5L),0x512DL,0x3C51L,5L,0x0600L,6L,(-1L)}},{{(-5L),0x512DL,0x3C51L,5L,0x0600L,6L,(-1L)},{(-5L),0x512DL,0x3C51L,5L,0x0600L,6L,(-1L)}},{{(-5L),0x512DL,0x3C51L,5L,0x0600L,6L,(-1L)},{(-5L),0x512DL,0x3C51L,5L,0x0600L,6L,(-1L)}}};
        uint32_t l_379 = 0x7146D1E4L;
        int64_t l_380[3][1];
        uint32_t l_381[10][2][7] = {{{0x1D5573BAL,4294967295UL,1UL,0xA30F8ACBL,1UL,4294967295UL,0x1D5573BAL},{0x1D5573BAL,4294967295UL,1UL,0xA30F8ACBL,1UL,4294967295UL,0x1D5573BAL}},{{0x1D5573BAL,4294967295UL,1UL,0xA30F8ACBL,1UL,4294967295UL,0x1D5573BAL},{0x1D5573BAL,4294967295UL,1UL,0xA30F8ACBL,1UL,4294967295UL,0x1D5573BAL}},{{0x1D5573BAL,4294967295UL,1UL,0xA30F8ACBL,1UL,4294967295UL,0x1D5573BAL},{0x1D5573BAL,4294967295UL,1UL,0xA30F8ACBL,1UL,4294967295UL,0x1D5573BAL}},{{0x1D5573BAL,4294967295UL,1UL,0xA30F8ACBL,1UL,4294967295UL,0x1D5573BAL},{0x1D5573BAL,4294967295UL,1UL,0xA30F8ACBL,1UL,4294967295UL,0x1D5573BAL}},{{0x1D5573BAL,4294967295UL,1UL,0xA30F8ACBL,1UL,4294967295UL,0x1D5573BAL},{0x1D5573BAL,4294967295UL,1UL,0xA30F8ACBL,1UL,4294967295UL,0x1D5573BAL}},{{0x1D5573BAL,4294967295UL,1UL,0xA30F8ACBL,1UL,4294967295UL,0x1D5573BAL},{0x1D5573BAL,4294967295UL,1UL,0xA30F8ACBL,1UL,4294967295UL,0x1D5573BAL}},{{0x1D5573BAL,4294967295UL,1UL,0xA30F8ACBL,1UL,4294967295UL,0x1D5573BAL},{0x1D5573BAL,4294967295UL,1UL,0xA30F8ACBL,1UL,4294967295UL,0x1D5573BAL}},{{0x1D5573BAL,4294967295UL,1UL,0xA30F8ACBL,1UL,4294967295UL,0x1D5573BAL},{0x1D5573BAL,4294967295UL,1UL,0xA30F8ACBL,1UL,4294967295UL,0x1D5573BAL}},{{0x1D5573BAL,4294967295UL,1UL,0xA30F8ACBL,1UL,4294967295UL,0x1D5573BAL},{0x1D5573BAL,4294967295UL,1UL,0xA30F8ACBL,1UL,4294967295UL,0x1D5573BAL}},{{0x1D5573BAL,4294967295UL,1UL,0xA30F8ACBL,1UL,4294967295UL,0x1D5573BAL},{0x1D5573BAL,4294967295UL,1UL,0xA30F8ACBL,1UL,4294967295UL,0x1D5573BAL}}};
        int8_t l_382 = 1L;
        uint16_t l_383[2];
        int64_t l_384[3];
        int i, j, k;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 1; j++)
                l_380[i][j] = 4L;
        }
        for (i = 0; i < 2; i++)
            l_383[i] = 0x1EACL;
        for (i = 0; i < 3; i++)
            l_384[i] = (-9L);
        l_384[2] |= (l_370 , (l_383[1] = (l_382 = (l_381[3][1][0] |= (((((l_374 ^= ((l_372 = l_371) , l_373)) , 0x8766L) , (l_378[4][0][3] |= ((l_377 = (l_376 = l_375)) , GROUP_DIVERGE(2, 1)))) , l_379) , l_380[2][0])))));
        unsigned int result = 0;
        result += l_370;
        result += l_371;
        result += l_372;
        result += l_373;
        result += l_374;
        result += l_375;
        result += l_376;
        result += l_377;
        int l_378_i0, l_378_i1, l_378_i2;
        for (l_378_i0 = 0; l_378_i0 < 5; l_378_i0++) {
            for (l_378_i1 = 0; l_378_i1 < 2; l_378_i1++) {
                for (l_378_i2 = 0; l_378_i2 < 7; l_378_i2++) {
                    result += l_378[l_378_i0][l_378_i1][l_378_i2];
                }
            }
        }
        result += l_379;
        int l_380_i0, l_380_i1;
        for (l_380_i0 = 0; l_380_i0 < 3; l_380_i0++) {
            for (l_380_i1 = 0; l_380_i1 < 1; l_380_i1++) {
                result += l_380[l_380_i0][l_380_i1];
            }
        }
        int l_381_i0, l_381_i1, l_381_i2;
        for (l_381_i0 = 0; l_381_i0 < 10; l_381_i0++) {
            for (l_381_i1 = 0; l_381_i1 < 2; l_381_i1++) {
                for (l_381_i2 = 0; l_381_i2 < 7; l_381_i2++) {
                    result += l_381[l_381_i0][l_381_i1][l_381_i2];
                }
            }
        }
        result += l_382;
        int l_383_i0;
        for (l_383_i0 = 0; l_383_i0 < 2; l_383_i0++) {
            result += l_383[l_383_i0];
        }
        int l_384_i0;
        for (l_384_i0 = 0; l_384_i0 < 3; l_384_i0++) {
            result += l_384[l_384_i0];
        }
        atomic_add(&p_1186->l_special_values[3], result);
    }
    else
    { /* block id: 259 */
        (1 + 1);
    }
    return l_385[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1186->g_36 p_1186->g_366 p_1186->g_268
 * writes: p_1186->g_290 p_1186->g_366
 */
uint16_t  func_61(uint8_t  p_62, uint32_t  p_63, struct S1 * p_1186)
{ /* block id: 240 */
    union U0 l_355 = {0x287D80EF4468B27AL};
    int32_t *l_360[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t **l_361 = &p_1186->g_290;
    int64_t *l_362 = (void*)0;
    int32_t **l_365 = &l_360[7];
    int i;
    (*l_365) = ((*l_361) = func_78((l_355 , ((safe_rshift_func_int8_t_s_s((p_62 < (safe_mul_func_int64_t_s_s(0x0D0B993E7730FFB6L, ((((((*l_361) = l_360[7]) != l_360[5]) , l_362) == l_362) > ((safe_div_func_uint32_t_u_u((~((((p_63 && p_62) , p_63) >= 0UL) < 0x2DL)), p_63)) ^ p_63))))), p_1186->g_36)) || 1UL)), p_1186));
    (*l_361) = func_78(p_62, p_1186);
    p_1186->g_366++;
    return p_1186->g_268;
}


/* ------------------------------------------ */
/* 
 * reads : p_1186->g_36 p_1186->g_48 p_1186->g_40 p_1186->g_93 p_1186->g_268 p_1186->g_285 p_1186->g_287.f0 p_1186->g_295 p_1186->g_290 p_1186->g_296 p_1186->g_288 p_1186->g_298 p_1186->g_327 p_1186->g_306 p_1186->g_309 p_1186->g_348
 * writes: p_1186->g_36 p_1186->g_266 p_1186->g_268 p_1186->g_288 p_1186->g_290 p_1186->g_40 p_1186->g_306 p_1186->g_309 p_1186->g_93 p_1186->g_327 p_1186->g_348
 */
uint16_t  func_66(uint32_t * p_67, uint64_t  p_68, uint32_t * p_69, int32_t * p_70, struct S1 * p_1186)
{ /* block id: 22 */
    union U0 l_84[1][10] = {{{-8L},{1L},{0x6DCF67A9F656345DL},{1L},{-8L},{-8L},{1L},{0x6DCF67A9F656345DL},{1L},{-8L}}};
    int32_t *l_86 = &p_1186->g_40;
    int32_t l_87 = 0L;
    uint8_t l_91 = 0x4CL;
    int16_t *l_297 = &p_1186->g_298;
    int32_t l_346 = 1L;
    int i, j;
    for (p_1186->g_36 = 0; (p_1186->g_36 != 10); p_1186->g_36 = safe_add_func_int32_t_s_s(p_1186->g_36, 7))
    { /* block id: 25 */
        uint32_t *l_90[9][1];
        int32_t l_92 = (-4L);
        uint64_t *l_263[6] = {(void*)0,&p_1186->g_39,(void*)0,(void*)0,&p_1186->g_39,(void*)0};
        uint64_t *l_265[4];
        int32_t **l_274[6];
        int64_t l_314 = 0x352411BDBC6659E4L;
        uint16_t *l_334 = &p_1186->g_327;
        int8_t *l_338 = &p_1186->g_306;
        int8_t **l_337 = &l_338;
        uint8_t *l_339 = (void*)0;
        uint8_t *l_340 = &p_1186->g_288;
        int64_t *l_343 = &l_84[0][3].f0;
        int64_t *l_344 = &l_84[0][3].f0;
        int64_t *l_345[5];
        uint32_t l_347 = 4294967293UL;
        int i, j;
        for (i = 0; i < 9; i++)
        {
            for (j = 0; j < 1; j++)
                l_90[i][j] = &p_1186->g_48;
        }
        for (i = 0; i < 4; i++)
            l_265[i] = (void*)0;
        for (i = 0; i < 6; i++)
            l_274[i] = &l_86;
        for (i = 0; i < 5; i++)
            l_345[i] = &l_84[0][3].f0;
        for (p_68 = 0; (p_68 < 49); p_68 = safe_add_func_int16_t_s_s(p_68, 1))
        { /* block id: 28 */
            union U0 *l_85 = &l_84[0][3];
            int32_t **l_258 = &l_86;
            (*l_258) = func_78(((((safe_div_func_int32_t_s_s(((safe_add_func_uint8_t_u_u(((((*l_85) = l_84[0][3]) , (&p_1186->g_40 != (l_86 = (void*)0))) & l_87), ((func_88((p_70 == l_90[5][0]), p_1186) , (p_1186->g_40 && (l_87 < GROUP_DIVERGE(0, 1)))) < 0x6553ECF3843C9D40L))) , l_91), l_92)) != p_68) > p_1186->g_93) , FAKE_DIVERGE(p_1186->local_0_offset, get_local_id(0), 10)), p_1186);
            for (l_91 = 12; (l_91 < 42); l_91 = safe_add_func_int32_t_s_s(l_91, 3))
            { /* block id: 204 */
                uint64_t **l_264 = &l_263[1];
                uint16_t *l_267 = &p_1186->g_268;
                int32_t ***l_271 = &l_258;
                int32_t ***l_275 = &l_274[2];
                union U0 **l_284 = &l_85;
                int16_t *l_289 = &l_84[0][3].f2;
                int8_t *l_305[6][4] = {{&p_1186->g_306,&p_1186->g_306,&p_1186->g_306,&p_1186->g_306},{&p_1186->g_306,&p_1186->g_306,&p_1186->g_306,&p_1186->g_306},{&p_1186->g_306,&p_1186->g_306,&p_1186->g_306,&p_1186->g_306},{&p_1186->g_306,&p_1186->g_306,&p_1186->g_306,&p_1186->g_306},{&p_1186->g_306,&p_1186->g_306,&p_1186->g_306,&p_1186->g_306},{&p_1186->g_306,&p_1186->g_306,&p_1186->g_306,&p_1186->g_306}};
                int32_t l_317[9][5][5] = {{{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L}},{{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L}},{{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L}},{{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L}},{{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L}},{{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L}},{{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L}},{{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L}},{{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L},{0x68FD7EE3L,0x3D8D65CEL,(-6L),0x4E809F10L,0x62EE7345L}}};
                int i, j, k;
                p_1186->g_290 = func_78((safe_add_func_int8_t_s_s((((*l_267) ^= (((*l_264) = l_263[1]) != (p_1186->g_266 = l_265[0]))) ^ (safe_rshift_func_int16_t_s_u(((*l_289) = (((p_1186->g_288 = ((((*l_271) = &p_70) != (p_1186->g_93 , ((*l_275) = ((safe_rshift_func_int16_t_s_u(p_1186->g_40, 2)) , l_274[1])))) , (safe_div_func_uint64_t_u_u((safe_rshift_func_int8_t_s_s(((safe_lshift_func_int8_t_s_u((FAKE_DIVERGE(p_1186->group_1_offset, get_group_id(1), 10) , ((0xE4L && (safe_mul_func_uint8_t_u_u(((l_284 == p_1186->g_285) , p_1186->g_93), 0x2FL))) | GROUP_DIVERGE(2, 1))), p_1186->g_40)) , p_1186->g_287[3].f0), 5)), (-1L))))) && 0x3B14L) | p_1186->g_48)), l_92))), p_68)), p_1186);
                (*p_1186->g_290) |= (safe_lshift_func_int16_t_s_s((safe_sub_func_int16_t_s_s(0L, (p_1186->g_295 == l_297))), 14));
                if ((*p_1186->g_290))
                    continue;
                l_317[4][1][0] ^= (((safe_add_func_int32_t_s_s((***l_275), p_1186->g_296[6][0][3])) , (safe_sub_func_int64_t_s_s((safe_rshift_func_int8_t_s_u((p_1186->g_306 = (p_69 != (p_1186->g_40 , (void*)0))), (safe_lshift_func_int8_t_s_s((p_1186->g_309 = (***l_275)), (safe_add_func_int32_t_s_s((p_1186->g_288 <= (safe_div_func_uint8_t_u_u(((l_314 & (safe_div_func_uint16_t_u_u(p_1186->g_298, (-3L)))) != (*l_86)), p_68))), (*p_69))))))), (*l_86)))) , 0x63B119A4L);
            }
            for (l_92 = 0; (l_92 <= 0); l_92 += 1)
            { /* block id: 221 */
                uint16_t *l_322 = (void*)0;
                uint16_t *l_323 = &p_1186->g_268;
                uint16_t *l_326 = &p_1186->g_327;
                for (p_1186->g_93 = 0; p_1186->g_93 < 6; p_1186->g_93 += 1)
                {
                    l_263[p_1186->g_93] = (void*)0;
                }
                (*l_86) &= p_1186->g_296[4][2][7];
                (*l_86) = (safe_sub_func_uint16_t_u_u(((safe_lshift_func_int16_t_s_u((*p_1186->g_295), 0)) || (~(--(*l_323)))), (++(*l_326))));
                (*l_258) = &p_1186->g_40;
            }
        }
        p_1186->g_348 &= ((((*l_86) & (1UL <= (safe_rshift_func_uint16_t_u_u(p_68, 1)))) , ((safe_lshift_func_uint8_t_u_u(((((void*)0 == l_334) , ((l_346 = ((*l_343) = (l_87 ^= ((safe_div_func_uint64_t_u_u((p_68 = ((((*l_337) = &p_1186->g_306) == &p_1186->g_306) & ((((*l_340) = p_1186->g_93) | (safe_lshift_func_uint16_t_u_s(((+(!(((*l_86) = ((l_297 == (void*)0) & p_1186->g_306)) >= (*p_69)))) | p_1186->g_306), p_1186->g_309))) && p_1186->g_268))), l_91)) | p_1186->g_306)))) >= 18446744073709551611UL)) == 247UL), l_347)) || 0x6A09A76CL)) ^ 8L);
    }
    return p_68;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_78(uint32_t  p_79, struct S1 * p_1186)
{ /* block id: 33 */
    int32_t *l_257 = &p_1186->g_40;
    if ((atomic_inc(&p_1186->g_atomic_input[48 * get_linear_group_id() + 19]) == 5))
    { /* block id: 35 */
        int32_t l_95 = 0x50A3AFD5L;
        int32_t *l_94 = &l_95;
        int32_t *l_96 = &l_95;
        uint32_t l_97 = 0x6319DC09L;
        int8_t l_98 = 1L;
        uint32_t l_99 = 0xF00AFC62L;
        int32_t l_100[10];
        uint64_t l_215 = 7UL;
        int64_t l_216 = 1L;
        int i;
        for (i = 0; i < 10; i++)
            l_100[i] = 0x708467E5L;
        l_96 = l_94;
        if ((l_97 , (l_100[8] = (l_99 = l_98))))
        { /* block id: 39 */
            int32_t l_101 = 5L;
            for (l_101 = (-8); (l_101 != 7); l_101++)
            { /* block id: 42 */
                uint8_t l_104 = 255UL;
                uint32_t l_105 = 0x4A5162C4L;
                uint64_t l_106 = 0x5DFDCAF09E5C5CB2L;
                uint64_t l_107 = 18446744073709551610UL;
                uint32_t l_108 = 4294967295UL;
                uint32_t l_109 = 4294967295UL;
                int32_t l_117 = (-1L);
                int32_t *l_116 = &l_117;
                if (((GROUP_DIVERGE(2, 1) , l_104) , ((l_106 = l_105) , ((l_108 &= l_107) , l_109))))
                { /* block id: 45 */
                    union U0 l_112 = {-1L};
                    union U0 *l_111 = &l_112;
                    union U0 **l_110 = &l_111;
                    union U0 **l_113 = (void*)0;
                    l_113 = l_110;
                }
                else
                { /* block id: 47 */
                    int32_t l_115[6] = {(-5L),(-5L),(-5L),(-5L),(-5L),(-5L)};
                    int32_t *l_114 = &l_115[4];
                    int i;
                    l_94 = (void*)0;
                    l_94 = l_114;
                }
                l_116 = l_116;
                (*l_116) = 0x5CAB5B23L;
            }
            for (l_101 = 25; (l_101 <= 12); l_101 = safe_sub_func_int8_t_s_s(l_101, 8))
            { /* block id: 56 */
                int16_t l_120 = 0x4B33L;
                uint32_t l_143 = 0xB12407C9L;
                (1 + 1);
            }
            l_94 = (void*)0;
        }
        else
        { /* block id: 153 */
            int16_t l_214 = 0x38E0L;
            l_100[8] ^= ((*l_94) = (l_214 , (-1L)));
        }
        if ((l_216 = ((l_215 = 0L) , 6L)))
        { /* block id: 159 */
            int16_t l_217 = 0x0E7BL;
            if (l_217)
            { /* block id: 160 */
                int16_t l_218 = 0x7C27L;
                uint64_t l_219 = 1UL;
                l_219 &= l_218;
            }
            else
            { /* block id: 162 */
                int64_t l_220 = 0x34FC8B023FBB9B6FL;
                int32_t l_221 = (-1L);
                int32_t l_222 = (-9L);
                uint16_t l_246 = 0xB2DEL;
                uint32_t l_247 = 2UL;
                l_100[3] &= ((*l_96) ^= 1L);
                if (((l_221 = (l_220 , 0x11E76F38L)) , l_222))
                { /* block id: 166 */
                    int64_t l_223 = (-1L);
                    int8_t l_224 = 1L;
                    uint32_t l_225 = 4294967295UL;
                    --l_225;
                }
                else
                { /* block id: 168 */
                    int8_t l_228 = 0x7DL;
                    int32_t *l_245 = (void*)0;
                    if (l_228)
                    { /* block id: 169 */
                        union U0 l_230 = {0x3AF8A971ECD17501L};
                        union U0 *l_229 = &l_230;
                        int32_t l_232 = 9L;
                        int32_t *l_231[7][7] = {{&l_232,&l_232,&l_232,&l_232,&l_232,&l_232,(void*)0},{&l_232,&l_232,&l_232,&l_232,&l_232,&l_232,(void*)0},{&l_232,&l_232,&l_232,&l_232,&l_232,&l_232,(void*)0},{&l_232,&l_232,&l_232,&l_232,&l_232,&l_232,(void*)0},{&l_232,&l_232,&l_232,&l_232,&l_232,&l_232,(void*)0},{&l_232,&l_232,&l_232,&l_232,&l_232,&l_232,(void*)0},{&l_232,&l_232,&l_232,&l_232,&l_232,&l_232,(void*)0}};
                        uint32_t l_233 = 1UL;
                        uint64_t l_234 = 8UL;
                        int8_t l_235[2][3][4] = {{{(-5L),0x41L,1L,(-1L)},{(-5L),0x41L,1L,(-1L)},{(-5L),0x41L,1L,(-1L)}},{{(-5L),0x41L,1L,(-1L)},{(-5L),0x41L,1L,(-1L)},{(-5L),0x41L,1L,(-1L)}}};
                        int i, j, k;
                        l_229 = (void*)0;
                        l_94 = l_231[3][0];
                        (*l_96) &= l_233;
                        l_235[0][0][2] ^= ((*l_96) &= l_234);
                    }
                    else
                    { /* block id: 175 */
                        int32_t l_237 = 0L;
                        int32_t *l_236 = &l_237;
                        l_236 = l_236;
                    }
                    for (l_228 = 0; (l_228 != 26); l_228 = safe_add_func_int8_t_s_s(l_228, 8))
                    { /* block id: 180 */
                        int32_t l_241 = 1L;
                        int32_t *l_240[2];
                        int16_t l_242 = 0x7ABCL;
                        uint32_t l_243 = 0x3924B468L;
                        int8_t l_244 = 0x3CL;
                        int i;
                        for (i = 0; i < 2; i++)
                            l_240[i] = &l_241;
                        l_96 = l_240[0];
                        (*l_96) |= 0L;
                        (*l_96) |= (((l_242 , (-6L)) , l_243) , 1L);
                        (*l_96) &= l_244;
                    }
                    l_95 ^= (l_100[8] = (l_222 |= 0x1655B2EAL));
                    l_94 = l_245;
                }
                l_247 &= l_246;
            }
        }
        else
        { /* block id: 193 */
            int32_t l_248[1];
            uint8_t l_249 = 251UL;
            int32_t l_252[8][8][4] = {{{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L}},{{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L}},{{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L}},{{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L}},{{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L}},{{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L}},{{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L}},{{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L},{1L,(-1L),0x74323D4CL,1L}}};
            int32_t l_253[1];
            uint16_t l_254[7] = {0xA537L,65527UL,0xA537L,0xA537L,65527UL,0xA537L,0xA537L};
            int i, j, k;
            for (i = 0; i < 1; i++)
                l_248[i] = 0x7AE3E55EL;
            for (i = 0; i < 1; i++)
                l_253[i] = (-1L);
            ++l_249;
            l_254[2]--;
        }
        unsigned int result = 0;
        result += l_95;
        result += l_97;
        result += l_98;
        result += l_99;
        int l_100_i0;
        for (l_100_i0 = 0; l_100_i0 < 10; l_100_i0++) {
            result += l_100[l_100_i0];
        }
        result += l_215;
        result += l_216;
        atomic_add(&p_1186->g_special_values[48 * get_linear_group_id() + 19], result);
    }
    else
    { /* block id: 197 */
        (1 + 1);
    }
    return l_257;
}


/* ------------------------------------------ */
/* 
 * reads : p_1186->g_48
 * writes:
 */
uint16_t  func_88(uint32_t  p_89, struct S1 * p_1186)
{ /* block id: 31 */
    return p_1186->g_48;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[48];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 48; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[48];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 48; i++)
            l_special_values[i] = 0;
    struct S1 c_1187;
    struct S1* p_1186 = &c_1187;
    struct S1 c_1188 = {
        9L, // p_1186->g_12
        4294967286UL, // p_1186->g_36
        1UL, // p_1186->g_39
        1L, // p_1186->g_40
        7UL, // p_1186->g_48
        0UL, // p_1186->g_93
        &p_1186->g_39, // p_1186->g_266
        0x06DDL, // p_1186->g_268
        {{0x2EA79D7E67C20CE6L},{0x2EA79D7E67C20CE6L},{0x2EA79D7E67C20CE6L},{0x2EA79D7E67C20CE6L},{0x2EA79D7E67C20CE6L},{0x2EA79D7E67C20CE6L},{0x2EA79D7E67C20CE6L},{0x2EA79D7E67C20CE6L},{0x2EA79D7E67C20CE6L}}, // p_1186->g_287
        {&p_1186->g_287[3]}, // p_1186->g_286
        &p_1186->g_286[0], // p_1186->g_285
        9UL, // p_1186->g_288
        (void*)0, // p_1186->g_290
        {{{0x6485L,2L,(-1L),0x5DEBL,0x431CL,4L,0x5DEBL,8L,0x3131L},{0x6485L,2L,(-1L),0x5DEBL,0x431CL,4L,0x5DEBL,8L,0x3131L},{0x6485L,2L,(-1L),0x5DEBL,0x431CL,4L,0x5DEBL,8L,0x3131L},{0x6485L,2L,(-1L),0x5DEBL,0x431CL,4L,0x5DEBL,8L,0x3131L}},{{0x6485L,2L,(-1L),0x5DEBL,0x431CL,4L,0x5DEBL,8L,0x3131L},{0x6485L,2L,(-1L),0x5DEBL,0x431CL,4L,0x5DEBL,8L,0x3131L},{0x6485L,2L,(-1L),0x5DEBL,0x431CL,4L,0x5DEBL,8L,0x3131L},{0x6485L,2L,(-1L),0x5DEBL,0x431CL,4L,0x5DEBL,8L,0x3131L}},{{0x6485L,2L,(-1L),0x5DEBL,0x431CL,4L,0x5DEBL,8L,0x3131L},{0x6485L,2L,(-1L),0x5DEBL,0x431CL,4L,0x5DEBL,8L,0x3131L},{0x6485L,2L,(-1L),0x5DEBL,0x431CL,4L,0x5DEBL,8L,0x3131L},{0x6485L,2L,(-1L),0x5DEBL,0x431CL,4L,0x5DEBL,8L,0x3131L}},{{0x6485L,2L,(-1L),0x5DEBL,0x431CL,4L,0x5DEBL,8L,0x3131L},{0x6485L,2L,(-1L),0x5DEBL,0x431CL,4L,0x5DEBL,8L,0x3131L},{0x6485L,2L,(-1L),0x5DEBL,0x431CL,4L,0x5DEBL,8L,0x3131L},{0x6485L,2L,(-1L),0x5DEBL,0x431CL,4L,0x5DEBL,8L,0x3131L}},{{0x6485L,2L,(-1L),0x5DEBL,0x431CL,4L,0x5DEBL,8L,0x3131L},{0x6485L,2L,(-1L),0x5DEBL,0x431CL,4L,0x5DEBL,8L,0x3131L},{0x6485L,2L,(-1L),0x5DEBL,0x431CL,4L,0x5DEBL,8L,0x3131L},{0x6485L,2L,(-1L),0x5DEBL,0x431CL,4L,0x5DEBL,8L,0x3131L}},{{0x6485L,2L,(-1L),0x5DEBL,0x431CL,4L,0x5DEBL,8L,0x3131L},{0x6485L,2L,(-1L),0x5DEBL,0x431CL,4L,0x5DEBL,8L,0x3131L},{0x6485L,2L,(-1L),0x5DEBL,0x431CL,4L,0x5DEBL,8L,0x3131L},{0x6485L,2L,(-1L),0x5DEBL,0x431CL,4L,0x5DEBL,8L,0x3131L}},{{0x6485L,2L,(-1L),0x5DEBL,0x431CL,4L,0x5DEBL,8L,0x3131L},{0x6485L,2L,(-1L),0x5DEBL,0x431CL,4L,0x5DEBL,8L,0x3131L},{0x6485L,2L,(-1L),0x5DEBL,0x431CL,4L,0x5DEBL,8L,0x3131L},{0x6485L,2L,(-1L),0x5DEBL,0x431CL,4L,0x5DEBL,8L,0x3131L}}}, // p_1186->g_296
        &p_1186->g_296[5][2][1], // p_1186->g_295
        0x6748L, // p_1186->g_298
        0x77L, // p_1186->g_306
        0xF6L, // p_1186->g_309
        0x77F9L, // p_1186->g_327
        0x73EDEE33L, // p_1186->g_348
        7UL, // p_1186->g_366
        0x26A33D7D3A6776AFL, // p_1186->g_369
        0x73736187L, // p_1186->g_388
        0x7035685CL, // p_1186->g_389
        {&p_1186->g_388,&p_1186->g_388,&p_1186->g_388,&p_1186->g_388,&p_1186->g_388,&p_1186->g_388,&p_1186->g_388,&p_1186->g_388,&p_1186->g_388,&p_1186->g_388}, // p_1186->g_387
        0x0829L, // p_1186->g_465
        {{0x0A7CCD28105E0EC4L,0x0A7CCD28105E0EC4L,0x0A7CCD28105E0EC4L,0x0A7CCD28105E0EC4L,0x0A7CCD28105E0EC4L,0x0A7CCD28105E0EC4L,0x0A7CCD28105E0EC4L,0x0A7CCD28105E0EC4L,0x0A7CCD28105E0EC4L,0x0A7CCD28105E0EC4L},{0x0A7CCD28105E0EC4L,0x0A7CCD28105E0EC4L,0x0A7CCD28105E0EC4L,0x0A7CCD28105E0EC4L,0x0A7CCD28105E0EC4L,0x0A7CCD28105E0EC4L,0x0A7CCD28105E0EC4L,0x0A7CCD28105E0EC4L,0x0A7CCD28105E0EC4L,0x0A7CCD28105E0EC4L},{0x0A7CCD28105E0EC4L,0x0A7CCD28105E0EC4L,0x0A7CCD28105E0EC4L,0x0A7CCD28105E0EC4L,0x0A7CCD28105E0EC4L,0x0A7CCD28105E0EC4L,0x0A7CCD28105E0EC4L,0x0A7CCD28105E0EC4L,0x0A7CCD28105E0EC4L,0x0A7CCD28105E0EC4L}}, // p_1186->g_483
        (-1L), // p_1186->g_488
        {{&p_1186->g_327,&p_1186->g_268,&p_1186->g_327,&p_1186->g_268},{&p_1186->g_327,&p_1186->g_268,&p_1186->g_327,&p_1186->g_268},{&p_1186->g_327,&p_1186->g_268,&p_1186->g_327,&p_1186->g_268},{&p_1186->g_327,&p_1186->g_268,&p_1186->g_327,&p_1186->g_268},{&p_1186->g_327,&p_1186->g_268,&p_1186->g_327,&p_1186->g_268}}, // p_1186->g_498
        &p_1186->g_498[2][3], // p_1186->g_497
        &p_1186->g_327, // p_1186->g_603
        0x0767L, // p_1186->g_747
        &p_1186->g_40, // p_1186->g_749
        &p_1186->g_306, // p_1186->g_755
        {&p_1186->g_755,&p_1186->g_755,&p_1186->g_755,&p_1186->g_755,&p_1186->g_755,&p_1186->g_755,&p_1186->g_755}, // p_1186->g_754
        (void*)0, // p_1186->g_756
        &p_1186->g_754[4], // p_1186->g_757
        &p_1186->g_298, // p_1186->g_764
        &p_1186->g_764, // p_1186->g_763
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1186->g_762
        &p_1186->g_763, // p_1186->g_765
        18446744073709551610UL, // p_1186->g_769
        0x6C07A7F2L, // p_1186->g_809
        &p_1186->g_603, // p_1186->g_828
        0L, // p_1186->g_880
        &p_1186->g_290, // p_1186->g_960
        &p_1186->g_960, // p_1186->g_959
        {{0x2482E294L,4L,0x558B570AL,0x37D85E19L,4L,0x37D85E19L,0x558B570AL},{0x2482E294L,4L,0x558B570AL,0x37D85E19L,4L,0x37D85E19L,0x558B570AL},{0x2482E294L,4L,0x558B570AL,0x37D85E19L,4L,0x37D85E19L,0x558B570AL}}, // p_1186->g_1041
        {{{(void*)0}},{{(void*)0}},{{(void*)0}},{{(void*)0}},{{(void*)0}}}, // p_1186->g_1064
        &p_1186->g_1064[3][0][0], // p_1186->g_1063
        1UL, // p_1186->g_1076
        9UL, // p_1186->g_1153
        0x84L, // p_1186->g_1157
        sequence_input[get_global_id(0)], // p_1186->global_0_offset
        sequence_input[get_global_id(1)], // p_1186->global_1_offset
        sequence_input[get_global_id(2)], // p_1186->global_2_offset
        sequence_input[get_local_id(0)], // p_1186->local_0_offset
        sequence_input[get_local_id(1)], // p_1186->local_1_offset
        sequence_input[get_local_id(2)], // p_1186->local_2_offset
        sequence_input[get_group_id(0)], // p_1186->group_0_offset
        sequence_input[get_group_id(1)], // p_1186->group_1_offset
        sequence_input[get_group_id(2)], // p_1186->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_1187 = c_1188;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1186);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1186->g_12, "p_1186->g_12", print_hash_value);
    transparent_crc(p_1186->g_36, "p_1186->g_36", print_hash_value);
    transparent_crc(p_1186->g_39, "p_1186->g_39", print_hash_value);
    transparent_crc(p_1186->g_40, "p_1186->g_40", print_hash_value);
    transparent_crc(p_1186->g_48, "p_1186->g_48", print_hash_value);
    transparent_crc(p_1186->g_93, "p_1186->g_93", print_hash_value);
    transparent_crc(p_1186->g_268, "p_1186->g_268", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1186->g_287[i].f0, "p_1186->g_287[i].f0", print_hash_value);

    }
    transparent_crc(p_1186->g_288, "p_1186->g_288", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_1186->g_296[i][j][k], "p_1186->g_296[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1186->g_298, "p_1186->g_298", print_hash_value);
    transparent_crc(p_1186->g_306, "p_1186->g_306", print_hash_value);
    transparent_crc(p_1186->g_309, "p_1186->g_309", print_hash_value);
    transparent_crc(p_1186->g_327, "p_1186->g_327", print_hash_value);
    transparent_crc(p_1186->g_348, "p_1186->g_348", print_hash_value);
    transparent_crc(p_1186->g_366, "p_1186->g_366", print_hash_value);
    transparent_crc(p_1186->g_369, "p_1186->g_369", print_hash_value);
    transparent_crc(p_1186->g_388, "p_1186->g_388", print_hash_value);
    transparent_crc(p_1186->g_389, "p_1186->g_389", print_hash_value);
    transparent_crc(p_1186->g_465, "p_1186->g_465", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1186->g_483[i][j], "p_1186->g_483[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1186->g_488, "p_1186->g_488", print_hash_value);
    transparent_crc(p_1186->g_747, "p_1186->g_747", print_hash_value);
    transparent_crc(p_1186->g_769, "p_1186->g_769", print_hash_value);
    transparent_crc(p_1186->g_809, "p_1186->g_809", print_hash_value);
    transparent_crc(p_1186->g_880, "p_1186->g_880", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1186->g_1041[i][j], "p_1186->g_1041[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1186->g_1076, "p_1186->g_1076", print_hash_value);
    transparent_crc(p_1186->g_1153, "p_1186->g_1153", print_hash_value);
    transparent_crc(p_1186->g_1157, "p_1186->g_1157", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 48; i++)
            transparent_crc(p_1186->g_special_values[i + 48 * get_linear_group_id()], "p_1186->g_special_values[i + 48 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 48; i++)
            transparent_crc(p_1186->l_special_values[i], "p_1186->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
