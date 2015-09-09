// ---fake_divergence ---inter_thread_comm -g 93,70,1 -l 1,35,1
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

__constant uint32_t permutations[10][35] = {
{4,32,12,11,16,20,10,21,30,26,13,34,25,29,18,31,33,15,22,28,5,14,0,8,9,6,3,27,24,2,23,17,7,1,19}, // permutation 0
{32,29,26,31,8,11,34,33,30,18,9,2,12,20,25,28,0,5,10,21,14,7,24,27,6,17,15,23,22,4,3,16,13,1,19}, // permutation 1
{28,21,25,12,26,8,9,19,31,7,34,13,5,11,17,23,29,2,3,16,20,10,1,22,4,15,0,32,27,18,30,14,6,33,24}, // permutation 2
{1,9,32,19,30,16,13,26,0,17,2,18,6,34,4,29,3,7,10,12,27,24,28,20,14,11,21,5,22,25,23,31,8,33,15}, // permutation 3
{11,32,26,5,29,1,3,31,20,7,24,13,28,10,27,22,4,6,14,12,19,21,16,2,33,0,9,15,30,34,17,18,23,8,25}, // permutation 4
{1,23,5,24,16,22,4,15,13,6,19,11,32,18,21,26,10,3,7,8,31,30,27,25,9,33,34,28,20,29,12,14,17,0,2}, // permutation 5
{13,32,17,19,14,30,31,26,1,24,18,11,20,29,21,28,34,27,5,7,16,4,9,0,22,8,25,2,6,10,3,12,23,15,33}, // permutation 6
{32,0,5,19,33,21,30,10,31,1,13,12,23,2,18,16,17,8,29,4,25,7,20,3,9,6,34,24,14,11,15,27,22,26,28}, // permutation 7
{3,32,22,28,30,1,31,2,15,0,20,9,10,19,7,4,29,21,8,5,27,18,26,23,12,24,14,33,34,16,25,11,6,17,13}, // permutation 8
{30,8,20,4,22,2,32,26,0,16,24,31,28,34,17,7,10,6,23,27,13,19,12,25,5,15,21,1,3,14,29,9,18,33,11} // permutation 9
};

// Seed: 41

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint16_t  f0;
   volatile uint32_t  f1;
   int64_t  f2;
};

union U1 {
   uint32_t  f0;
   volatile uint16_t  f1;
   volatile int8_t * f2;
   volatile struct S0  f3;
};

struct S2 {
    int32_t g_2;
    volatile int32_t g_5;
    int32_t g_6[10];
    int32_t g_10;
    int16_t g_31;
    union U1 g_32[9];
    uint8_t g_36;
    volatile int8_t * volatile g_37;
    union U1 g_46;
    int32_t g_48;
    uint8_t g_56;
    int32_t *g_94;
    int32_t ** volatile g_93[5];
    int32_t ** volatile g_95;
    struct S0 g_104;
    struct S0 * volatile g_105;
    uint16_t g_160;
    int8_t g_164;
    int8_t g_167;
    int32_t ** volatile g_168;
    volatile struct S0 g_178;
    int32_t ** volatile g_180;
    volatile struct S0 g_199;
    uint8_t g_203[9];
    int32_t g_209[4][8][6];
    int16_t g_210;
    int32_t ** volatile g_223;
    int8_t g_260;
    struct S0 g_274;
    struct S0 *g_273;
    volatile struct S0 g_281[5];
    volatile int64_t g_297;
    volatile int64_t g_298[1][7][2];
    volatile int64_t g_299;
    volatile int64_t *g_296[10];
    uint16_t *g_301;
    union U1 g_328;
    uint32_t *g_360;
    uint32_t *g_362;
    volatile int64_t g_371;
    union U1 g_379;
    volatile struct S0 g_396;
    volatile struct S0 g_398;
    int32_t *g_403;
    struct S0 g_427[4];
    volatile int32_t g_502;
    union U1 g_530;
    uint64_t g_533;
    uint64_t g_576;
    struct S0 g_596[2];
    volatile struct S0 g_609;
    volatile struct S0 g_618;
    union U1 g_626[6][6][7];
    union U1 g_636;
    struct S0 g_659;
    volatile int8_t g_672;
    volatile struct S0 g_681;
    volatile struct S0 g_682;
    struct S0 g_683[3][10][4];
    struct S0 g_686;
    volatile uint8_t * volatile * volatile g_689;
    uint8_t g_749;
    uint8_t g_790[8][1];
    int64_t g_820[3][2];
    int16_t g_821;
    int16_t g_823;
    uint64_t g_829;
    uint32_t g_830;
    uint64_t *g_873;
    struct S0 g_881;
    uint32_t g_931;
    struct S0 g_953;
    volatile struct S0 g_956;
    volatile struct S0 g_975[8];
    int32_t ** volatile g_977;
    union U1 g_1015;
    volatile int8_t g_1039;
    volatile struct S0 g_1138;
    uint16_t * volatile *g_1146;
    uint16_t * volatile * volatile *g_1145;
    uint16_t g_1150;
    uint16_t **g_1157;
    uint16_t **g_1158;
    uint32_t g_1220;
    volatile union U1 g_1244;
    int64_t g_1250;
    int32_t *g_1270;
    volatile union U1 g_1288;
    int32_t * volatile *g_1301;
    int32_t * volatile * volatile *g_1300[9][9][3];
    int32_t * volatile * volatile ** volatile g_1299[7];
    int32_t **g_1344;
    int32_t ***g_1343;
    union U1 g_1383;
    int32_t g_1387;
    struct S0 g_1466;
    union U1 g_1470;
    uint32_t * volatile * volatile g_1476;
    uint32_t * volatile * volatile *g_1475;
    struct S0 **g_1502;
    struct S0 g_1531;
    int32_t * volatile g_1699;
    struct S0 g_1700;
    volatile uint16_t g_1716;
    volatile struct S0 g_1721;
    int8_t * volatile g_1792;
    int8_t * volatile *g_1791;
    int8_t * volatile ** volatile g_1790[6];
    int16_t *g_1800;
    int16_t * volatile * volatile g_1799;
    volatile uint64_t g_1815;
    union U1 g_1850;
    union U1 g_1873;
    volatile union U1 g_1895;
    int8_t *g_1931[5];
    int8_t **g_1930[5][10];
    int8_t *** volatile g_1929;
    struct S0 g_1932;
    uint64_t g_1991;
    int32_t g_1992;
    volatile struct S0 g_2008[6];
    volatile uint32_t g_2035;
    struct S0 g_2072;
    uint32_t *g_2085;
    uint32_t * volatile * volatile g_2084;
    struct S0 g_2088;
    union U1 *g_2114[8][1];
    volatile struct S0 g_2124;
    struct S0 g_2139;
    struct S0 g_2157;
    int16_t g_2195;
    struct S0 g_2205;
    struct S0 g_2208;
    int32_t g_2211;
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
uint32_t  func_1(struct S2 * p_2242);
struct S0  func_25(int32_t * p_26, int8_t  p_27, uint8_t  p_28, uint32_t  p_29, int32_t * p_30, struct S2 * p_2242);
int16_t  func_42(int32_t  p_43, struct S2 * p_2242);
int32_t  func_49(int32_t * p_50, struct S2 * p_2242);
uint32_t  func_59(int32_t  p_60, struct S2 * p_2242);
union U1  func_73(uint64_t  p_74, int16_t  p_75, struct S2 * p_2242);
int8_t  func_82(uint8_t  p_83, int32_t  p_84, uint8_t  p_85, struct S2 * p_2242);
uint8_t  func_86(int32_t  p_87, struct S2 * p_2242);
int16_t  func_88(int8_t * p_89, struct S2 * p_2242);
int8_t * func_90(uint32_t  p_91, struct S2 * p_2242);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2242->g_2 p_2242->g_6 p_2242->g_5 p_2242->g_32 p_2242->g_37 p_2242->g_46 p_2242->g_427.f0 p_2242->g_596.f2 p_2242->g_1790 p_2242->g_209 p_2242->g_683.f2 p_2242->g_360 p_2242->g_46.f0 p_2242->g_1383 p_2242->g_1270 p_2242->g_1873 p_2242->g_873 p_2242->g_829 p_2242->g_1301 p_2242->g_1344 p_2242->g_94 p_2242->g_626 p_2242->g_379.f0 p_2242->g_274.f1 p_2242->g_1800 p_2242->g_823 p_2242->g_10 p_2242->g_180 p_2242->g_821 p_2242->g_1895 p_2242->g_1791 p_2242->g_1792 p_2242->g_1929 p_2242->g_1932 p_2242->g_2124 p_2242->g_328.f0 p_2242->g_164 p_2242->g_2139 p_2242->g_1700.f2 p_2242->g_1799 p_2242->g_2157 p_2242->g_1145 p_2242->g_1146 p_2242->g_105 p_2242->g_104 p_2242->g_576 p_2242->g_659.f2 p_2242->g_1531.f2 p_2242->g_749 p_2242->g_2195 p_2242->g_1699 p_2242->g_223 p_2242->g_1343 p_2242->g_2205 p_2242->g_2208 p_2242->g_167 p_2242->g_2211 p_2242->g_820
 * writes: p_2242->g_2 p_2242->g_6 p_2242->g_31 p_2242->g_36 p_2242->g_48 p_2242->g_260 p_2242->g_274.f0 p_2242->g_209 p_2242->g_576 p_2242->g_1220 p_2242->g_46.f0 p_2242->g_94 p_2242->g_820 p_2242->g_10 p_2242->g_821 p_2242->g_829 p_2242->g_881.f0 p_2242->g_164 p_2242->g_1466.f2 p_2242->g_1930 p_2242->g_210 p_2242->g_533 p_2242->g_830 p_2242->g_2088.f0 p_2242->g_659.f2 p_2242->g_953.f2 p_2242->g_160 p_2242->g_686.f0 p_2242->g_683 p_2242->g_749 p_2242->g_1850.f0 p_2242->g_273 p_2242->g_167 p_2242->g_2211
 */
uint32_t  func_1(struct S2 * p_2242)
{ /* block id: 4 */
    uint8_t l_11 = 1UL;
    int32_t l_2224 = 0x23B71BF5L;
    uint32_t l_2229 = 0xCD9C27F8L;
    int32_t l_2234 = 0x7101AF51L;
    int32_t l_2235 = 1L;
    int32_t l_2238[9] = {0x5CA7B042L,0x3984F1DCL,0x5CA7B042L,0x5CA7B042L,0x3984F1DCL,0x5CA7B042L,0x5CA7B042L,0x3984F1DCL,0x5CA7B042L};
    int32_t l_2241[10][1];
    int i, j;
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 1; j++)
            l_2241[i][j] = (-1L);
    }
    for (p_2242->g_2 = 0; (p_2242->g_2 < (-23)); p_2242->g_2--)
    { /* block id: 7 */
        int32_t *l_14 = &p_2242->g_6[2];
        int32_t *l_15 = &p_2242->g_6[5];
        int32_t *l_16 = &p_2242->g_10;
        int32_t *l_17[2][9][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
        uint32_t l_18 = 4294967292UL;
        int i, j, k;
        for (p_2242->g_6[5] = 3; (p_2242->g_6[5] < (-22)); p_2242->g_6[5] = safe_sub_func_uint64_t_u_u(p_2242->g_6[5], 1))
        { /* block id: 10 */
            int32_t *l_9[6] = {&p_2242->g_2,&p_2242->g_6[9],&p_2242->g_2,&p_2242->g_2,&p_2242->g_6[9],&p_2242->g_2};
            int i;
            ++l_11;
        }
        l_18++;
    }
    for (l_11 = 0; (l_11 <= 9); l_11 += 1)
    { /* block id: 17 */
        uint8_t *l_35 = &p_2242->g_36;
        int8_t *l_2209 = &p_2242->g_167;
        uint16_t l_2210 = 0xB89DL;
        uint32_t ***l_2237 = (void*)0;
        uint32_t ****l_2236 = &l_2237;
        uint16_t l_2239 = 65532UL;
        int32_t *l_2240[7][8] = {{&p_2242->g_6[l_11],&p_2242->g_6[l_11],(void*)0,&p_2242->g_6[8],(void*)0,&p_2242->g_6[l_11],&p_2242->g_6[l_11],&p_2242->g_6[l_11]},{&p_2242->g_6[l_11],&p_2242->g_6[l_11],(void*)0,&p_2242->g_6[8],(void*)0,&p_2242->g_6[l_11],&p_2242->g_6[l_11],&p_2242->g_6[l_11]},{&p_2242->g_6[l_11],&p_2242->g_6[l_11],(void*)0,&p_2242->g_6[8],(void*)0,&p_2242->g_6[l_11],&p_2242->g_6[l_11],&p_2242->g_6[l_11]},{&p_2242->g_6[l_11],&p_2242->g_6[l_11],(void*)0,&p_2242->g_6[8],(void*)0,&p_2242->g_6[l_11],&p_2242->g_6[l_11],&p_2242->g_6[l_11]},{&p_2242->g_6[l_11],&p_2242->g_6[l_11],(void*)0,&p_2242->g_6[8],(void*)0,&p_2242->g_6[l_11],&p_2242->g_6[l_11],&p_2242->g_6[l_11]},{&p_2242->g_6[l_11],&p_2242->g_6[l_11],(void*)0,&p_2242->g_6[8],(void*)0,&p_2242->g_6[l_11],&p_2242->g_6[l_11],&p_2242->g_6[l_11]},{&p_2242->g_6[l_11],&p_2242->g_6[l_11],(void*)0,&p_2242->g_6[8],(void*)0,&p_2242->g_6[l_11],&p_2242->g_6[l_11],&p_2242->g_6[l_11]}};
        int i, j;
        p_2242->g_2211 &= ((p_2242->g_6[l_11] != (safe_mod_func_uint64_t_u_u(((safe_lshift_func_int8_t_s_u(((*l_2209) &= (((((l_11 , p_2242->g_6[l_11]) < p_2242->g_6[l_11]) , (((func_25(&p_2242->g_6[l_11], ((p_2242->g_31 = (p_2242->g_5 < 0x67C74E2BL)) , ((p_2242->g_32[0] , ((((*l_35) = (safe_rshift_func_int16_t_s_u((-1L), p_2242->g_5))) , p_2242->g_37) != (void*)0)) , l_11)), l_11, p_2242->g_6[l_11], &p_2242->g_6[5], p_2242) , 0xEFL) ^ l_11) ^ (*p_2242->g_1800))) || 1L) & 1UL)), GROUP_DIVERGE(2, 1))) , (*p_2242->g_873)), l_2210))) , (*p_2242->g_1699));
        l_2241[1][0] ^= ((safe_div_func_int16_t_s_s((((((l_2238[1] = (p_2242->g_6[l_11] | ((((safe_mul_func_uint8_t_u_u(8UL, (((safe_lshift_func_uint8_t_u_s((safe_rshift_func_uint8_t_u_s((FAKE_DIVERGE(p_2242->local_0_offset, get_local_id(0), 10) != (p_2242->g_6[l_11] < FAKE_DIVERGE(p_2242->local_1_offset, get_local_id(1), 10))), ((safe_div_func_int32_t_s_s((l_2235 = ((*p_2242->g_1270) = ((!GROUP_DIVERGE(0, 1)) || (safe_rshift_func_int8_t_s_u(((l_2224 = 0L) >= (p_2242->g_6[l_11] >= ((*p_2242->g_1145) == (void*)0))), (safe_rshift_func_uint8_t_u_s(((l_2234 = ((l_2229 > ((safe_mul_func_int16_t_s_s(((safe_mul_func_uint16_t_u_u(l_11, 3UL)) > l_2229), 0xD239L)) > 0x7348L)) == 0x6BE7EBB6L)) > GROUP_DIVERGE(2, 1)), 6))))))), l_11)) , l_2229))), 1)) , l_2210) , p_2242->g_6[l_11]))) , &p_2242->g_1475) == l_2236) & l_2210))) | l_2229) | GROUP_DIVERGE(2, 1)) > l_2229) & 0x1DD2L), 0x7C4EL)) > l_2239);
    }
    return p_2242->g_820[0][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_2242->g_46 p_2242->g_36 p_2242->g_260 p_2242->g_427.f0 p_2242->g_596.f2 p_2242->g_2 p_2242->g_1790 p_2242->g_209 p_2242->g_683.f2 p_2242->g_360 p_2242->g_46.f0 p_2242->g_1383 p_2242->g_1270 p_2242->g_1873 p_2242->g_873 p_2242->g_829 p_2242->g_1301 p_2242->g_1344 p_2242->g_94 p_2242->g_626 p_2242->g_379.f0 p_2242->g_274.f1 p_2242->g_1800 p_2242->g_823 p_2242->g_10 p_2242->g_180 p_2242->g_821 p_2242->g_1895 p_2242->g_6 p_2242->g_1791 p_2242->g_1792 p_2242->g_1929 p_2242->g_1932 p_2242->g_2124 p_2242->g_328.f0 p_2242->g_164 p_2242->g_2139 p_2242->g_1700.f2 p_2242->g_1799 p_2242->g_2157 p_2242->g_1145 p_2242->g_1146 p_2242->g_105 p_2242->g_104 p_2242->g_576 p_2242->g_659.f2 p_2242->g_1531.f2 p_2242->g_749 p_2242->g_2195 p_2242->g_1699 p_2242->g_223 p_2242->g_1343 p_2242->g_2205 p_2242->g_2208 p_2242->g_1466.f2 p_2242->g_210 p_2242->g_533 p_2242->g_830
 * writes: p_2242->g_48 p_2242->g_36 p_2242->g_260 p_2242->g_274.f0 p_2242->g_209 p_2242->g_576 p_2242->g_2 p_2242->g_1220 p_2242->g_46.f0 p_2242->g_94 p_2242->g_820 p_2242->g_10 p_2242->g_821 p_2242->g_829 p_2242->g_881.f0 p_2242->g_164 p_2242->g_1466.f2 p_2242->g_1930 p_2242->g_210 p_2242->g_533 p_2242->g_830 p_2242->g_2088.f0 p_2242->g_659.f2 p_2242->g_953.f2 p_2242->g_160 p_2242->g_686.f0 p_2242->g_683 p_2242->g_749 p_2242->g_1850.f0 p_2242->g_273
 */
struct S0  func_25(int32_t * p_26, int8_t  p_27, uint8_t  p_28, uint32_t  p_29, int32_t * p_30, struct S2 * p_2242)
{ /* block id: 20 */
    int32_t *l_47 = &p_2242->g_48;
    int16_t *l_1892 = &p_2242->g_821;
    int32_t l_1893 = 1L;
    int64_t *l_1900[4] = {&p_2242->g_659.f2,&p_2242->g_659.f2,&p_2242->g_659.f2,&p_2242->g_659.f2};
    int32_t l_1901 = (-10L);
    uint16_t l_1906[7][1];
    int8_t *l_1928 = (void*)0;
    int8_t **l_1927 = &l_1928;
    int32_t **l_1949[10][9] = {{&p_2242->g_1270,&p_2242->g_1270,&p_2242->g_94,&p_2242->g_1270,&p_2242->g_94,&p_2242->g_1270,&p_2242->g_1270,&p_2242->g_94,&p_2242->g_1270},{&p_2242->g_1270,&p_2242->g_1270,&p_2242->g_94,&p_2242->g_1270,&p_2242->g_94,&p_2242->g_1270,&p_2242->g_1270,&p_2242->g_94,&p_2242->g_1270},{&p_2242->g_1270,&p_2242->g_1270,&p_2242->g_94,&p_2242->g_1270,&p_2242->g_94,&p_2242->g_1270,&p_2242->g_1270,&p_2242->g_94,&p_2242->g_1270},{&p_2242->g_1270,&p_2242->g_1270,&p_2242->g_94,&p_2242->g_1270,&p_2242->g_94,&p_2242->g_1270,&p_2242->g_1270,&p_2242->g_94,&p_2242->g_1270},{&p_2242->g_1270,&p_2242->g_1270,&p_2242->g_94,&p_2242->g_1270,&p_2242->g_94,&p_2242->g_1270,&p_2242->g_1270,&p_2242->g_94,&p_2242->g_1270},{&p_2242->g_1270,&p_2242->g_1270,&p_2242->g_94,&p_2242->g_1270,&p_2242->g_94,&p_2242->g_1270,&p_2242->g_1270,&p_2242->g_94,&p_2242->g_1270},{&p_2242->g_1270,&p_2242->g_1270,&p_2242->g_94,&p_2242->g_1270,&p_2242->g_94,&p_2242->g_1270,&p_2242->g_1270,&p_2242->g_94,&p_2242->g_1270},{&p_2242->g_1270,&p_2242->g_1270,&p_2242->g_94,&p_2242->g_1270,&p_2242->g_94,&p_2242->g_1270,&p_2242->g_1270,&p_2242->g_94,&p_2242->g_1270},{&p_2242->g_1270,&p_2242->g_1270,&p_2242->g_94,&p_2242->g_1270,&p_2242->g_94,&p_2242->g_1270,&p_2242->g_1270,&p_2242->g_94,&p_2242->g_1270},{&p_2242->g_1270,&p_2242->g_1270,&p_2242->g_94,&p_2242->g_1270,&p_2242->g_94,&p_2242->g_1270,&p_2242->g_1270,&p_2242->g_94,&p_2242->g_1270}};
    int8_t l_1954[6] = {0x3DL,0x6AL,0x3DL,0x3DL,0x6AL,0x3DL};
    int64_t l_1987[1][8] = {{0x3DB8BB06C8777786L,(-1L),0x3DB8BB06C8777786L,0x3DB8BB06C8777786L,(-1L),0x3DB8BB06C8777786L,0x3DB8BB06C8777786L,(-1L)}};
    uint32_t **l_2093 = &p_2242->g_360;
    int32_t l_2206 = 1L;
    int i, j;
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 1; j++)
            l_1906[i][j] = 0x9618L;
    }
    (*p_2242->g_1270) = (p_27 || ((((*p_2242->g_873) = (safe_div_func_uint32_t_u_u((((safe_rshift_func_int16_t_s_u(((*l_1892) &= (p_28 || func_42(((*l_47) = (p_28 <= (safe_div_func_uint8_t_u_u(p_29, (p_2242->g_46 , 1L))))), p_2242))), ((((((GROUP_DIVERGE(0, 1) , &p_2242->g_167) != &p_27) | p_27) ^ p_29) > p_27) <= 1L))) ^ l_1893) && (-1L)), l_1893))) , 0UL) >= 246UL));
    (*p_2242->g_1344) = (void*)0;
lbl_2207:
    if (((*p_2242->g_1270) ^= ((p_2242->g_881.f0 = GROUP_DIVERGE(2, 1)) == (safe_unary_minus_func_int8_t_s(((**p_2242->g_1791) = ((((((p_2242->g_1895 , FAKE_DIVERGE(p_2242->global_1_offset, get_global_id(1), 10)) && (*p_26)) != FAKE_DIVERGE(p_2242->global_1_offset, get_global_id(1), 10)) , ((((((+(safe_mod_func_int64_t_s_s((safe_rshift_func_uint8_t_u_s((l_1893 ^ 8L), ((l_1893 && ((((l_1901 = p_28) != 0x2E3A912ACCEA65C6L) , (((l_1901 = (((safe_mod_func_uint16_t_u_u((p_29 && (safe_div_func_int64_t_s_s(0L, GROUP_DIVERGE(2, 1)))), 0xC67FL)) || 0x37F8690DL) || 4294967295UL)) < p_29) < (*p_30))) , p_28)) , p_27))), (*p_2242->g_873)))) || 0x128B2ED1L) == (-1L)) > l_1893) && 0x32L) ^ 0x7DL)) || l_1906[1][0]) && l_1893)))))))
    { /* block id: 960 */
        int16_t l_1925 = (-5L);
        uint16_t *l_1926 = &l_1906[6][0];
        for (p_2242->g_829 = 0; (p_2242->g_829 == 6); p_2242->g_829 = safe_add_func_int32_t_s_s(p_2242->g_829, 4))
        { /* block id: 963 */
            int32_t *l_1909 = &p_2242->g_2;
            (*p_2242->g_1344) = l_1909;
        }
        (*p_2242->g_1270) = (safe_rshift_func_int16_t_s_s((GROUP_DIVERGE(1, 1) != (safe_div_func_int32_t_s_s(((GROUP_DIVERGE(2, 1) <= ((!0x6F57A0BFL) , ((safe_sub_func_uint32_t_u_u((p_28 < (((0x57L < (safe_lshift_func_int8_t_s_u((((safe_lshift_func_int8_t_s_u((safe_lshift_func_int16_t_s_u((l_1901 , ((++(*p_2242->g_360)) < (1UL != 0x4865L))), 4)), (safe_unary_minus_func_int16_t_s(((((l_1906[1][0] , GROUP_DIVERGE(0, 1)) > p_27) , p_27) <= l_1893))))) < l_1925) && (-1L)), p_27))) , l_1926) != &l_1906[1][0])), l_1901)) < (-10L)))) , l_1925), (*p_26)))), 9));
    }
    else
    { /* block id: 968 */
        uint64_t l_1933 = 1UL;
        int32_t **l_1948 = &p_2242->g_1270;
        int64_t l_1957 = 0L;
        int32_t l_1958 = (-2L);
        uint32_t l_1969 = 4294967295UL;
        int32_t *l_2005 = &p_2242->g_48;
        uint32_t l_2030 = 0xF78AD59AL;
        int32_t l_2032 = 0x0423AC88L;
        int32_t l_2034 = 0L;
        int16_t l_2056[2];
        int8_t ***l_2057[6][7] = {{(void*)0,&p_2242->g_1930[2][2],&l_1927,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_2242->g_1930[2][2],&l_1927,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_2242->g_1930[2][2],&l_1927,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_2242->g_1930[2][2],&l_1927,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_2242->g_1930[2][2],&l_1927,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_2242->g_1930[2][2],&l_1927,(void*)0,(void*)0,(void*)0,(void*)0}};
        int32_t l_2060 = 0x64E6A841L;
        int32_t l_2066 = 0L;
        union U1 *l_2111 = &p_2242->g_636;
        int i, j;
        for (i = 0; i < 2; i++)
            l_2056[i] = (-8L);
        for (p_2242->g_1466.f2 = 1; (p_2242->g_1466.f2 >= 0); p_2242->g_1466.f2 -= 1)
        { /* block id: 971 */
            (*p_2242->g_1270) |= 0L;
            (*p_2242->g_1270) = 0x540FFF06L;
            (*p_2242->g_1929) = l_1927;
            for (p_2242->g_210 = 0; (p_2242->g_210 <= 1); p_2242->g_210 += 1)
            { /* block id: 977 */
                return p_2242->g_1932;
            }
        }
        for (p_2242->g_533 = 0; (p_2242->g_533 <= 4); p_2242->g_533 += 1)
        { /* block id: 983 */
            uint8_t l_1941 = 0UL;
            int32_t l_1952 = 0x0E685266L;
            int8_t *l_1953 = &p_2242->g_164;
            uint16_t *l_1955 = &p_2242->g_1531.f0;
            uint8_t *l_1956 = &p_2242->g_790[2][0];
            int32_t l_1959[2][3] = {{1L,0x04DBB371L,1L},{1L,0x04DBB371L,1L}};
            uint32_t l_2059 = 6UL;
            uint32_t l_2079 = 0x58653041L;
            uint64_t l_2110 = 0x2EB9C0AF9B30A4D8L;
            int i, j;
            l_1933 &= (-1L);
        }
    }
    for (p_2242->g_210 = 0; (p_2242->g_210 > (-16)); p_2242->g_210 = safe_sub_func_uint32_t_u_u(p_2242->g_210, 7))
    { /* block id: 1080 */
        int16_t l_2128[5][7] = {{0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L}};
        uint64_t *l_2132 = (void*)0;
        int8_t ***l_2142 = &l_1927;
        int32_t l_2159[4];
        int i, j;
        for (i = 0; i < 4; i++)
            l_2159[i] = 0L;
        for (p_2242->g_830 = (-3); (p_2242->g_830 == 41); p_2242->g_830 = safe_add_func_uint16_t_u_u(p_2242->g_830, 8))
        { /* block id: 1083 */
            struct S0 **l_2125 = &p_2242->g_273;
            int32_t l_2158 = 0L;
            uint16_t **l_2160 = &p_2242->g_301;
            int16_t *l_2194 = &p_2242->g_821;
            for (p_2242->g_2088.f0 = (-20); (p_2242->g_2088.f0 <= 20); p_2242->g_2088.f0 = safe_add_func_uint16_t_u_u(p_2242->g_2088.f0, 7))
            { /* block id: 1086 */
                (*p_2242->g_1270) &= (p_2242->g_2124 , ((void*)0 == l_2125));
                if ((*p_26))
                    continue;
            }
            for (p_2242->g_659.f2 = 2; (p_2242->g_659.f2 >= 0); p_2242->g_659.f2 -= 1)
            { /* block id: 1092 */
                uint64_t l_2138 = 0xA23B12C97C01B55BL;
                int32_t l_2168 = (-1L);
                uint64_t l_2200 = 9UL;
                for (l_1901 = 0; (l_1901 <= 2); l_1901 += 1)
                { /* block id: 1095 */
                    int16_t **l_2131 = &p_2242->g_1800;
                    int32_t **l_2135 = &p_2242->g_403;
                    int32_t ***l_2136 = &l_2135;
                    int32_t l_2137[9][7][4] = {{{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)}},{{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)}},{{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)}},{{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)}},{{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)}},{{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)}},{{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)}},{{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)}},{{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)},{0x71713243L,0L,(-1L),(-1L)}}};
                    int i, j, k;
                    (*p_2242->g_1270) |= (((safe_lshift_func_int16_t_s_s((l_2128[4][1] != ((safe_sub_func_int32_t_s_s((((void*)0 == l_2131) , ((p_27 <= (p_27 && ((void*)0 != l_2132))) & ((((safe_lshift_func_int8_t_s_s(((!(&p_2242->g_403 == ((*l_2136) = l_2135))) < 0x45L), 1)) & l_2137[0][6][2]) < p_2242->g_328.f0) > l_2137[0][6][2]))), (*p_30))) , 0xFFL)), 0)) && (*p_2242->g_1792)) < l_2138);
                    for (p_28 = 0; (p_28 <= 2); p_28 += 1)
                    { /* block id: 1100 */
                        return p_2242->g_2139;
                    }
                }
                for (p_2242->g_953.f2 = 2; (p_2242->g_953.f2 >= 0); p_2242->g_953.f2 -= 1)
                { /* block id: 1106 */
                    int16_t l_2153 = 0x6EB0L;
                    int8_t **l_2156 = (void*)0;
                    for (p_2242->g_160 = 0; (p_2242->g_160 <= 2); p_2242->g_160 += 1)
                    { /* block id: 1109 */
                        int8_t ***l_2154[10][7] = {{&p_2242->g_1930[2][2],&l_1927,&l_1927,&p_2242->g_1930[2][2],(void*)0,&l_1927,&l_1927},{&p_2242->g_1930[2][2],&l_1927,&l_1927,&p_2242->g_1930[2][2],(void*)0,&l_1927,&l_1927},{&p_2242->g_1930[2][2],&l_1927,&l_1927,&p_2242->g_1930[2][2],(void*)0,&l_1927,&l_1927},{&p_2242->g_1930[2][2],&l_1927,&l_1927,&p_2242->g_1930[2][2],(void*)0,&l_1927,&l_1927},{&p_2242->g_1930[2][2],&l_1927,&l_1927,&p_2242->g_1930[2][2],(void*)0,&l_1927,&l_1927},{&p_2242->g_1930[2][2],&l_1927,&l_1927,&p_2242->g_1930[2][2],(void*)0,&l_1927,&l_1927},{&p_2242->g_1930[2][2],&l_1927,&l_1927,&p_2242->g_1930[2][2],(void*)0,&l_1927,&l_1927},{&p_2242->g_1930[2][2],&l_1927,&l_1927,&p_2242->g_1930[2][2],(void*)0,&l_1927,&l_1927},{&p_2242->g_1930[2][2],&l_1927,&l_1927,&p_2242->g_1930[2][2],(void*)0,&l_1927,&l_1927},{&p_2242->g_1930[2][2],&l_1927,&l_1927,&p_2242->g_1930[2][2],(void*)0,&l_1927,&l_1927}};
                        int32_t l_2155 = 0x5D3D4605L;
                        int i, j;
                        (*p_2242->g_1344) = p_30;
                        l_2155 = (((safe_mul_func_int16_t_s_s(((((l_2142 != ((((safe_div_func_uint16_t_u_u((((func_73(l_2138, (((!(-10L)) , (safe_rshift_func_int16_t_s_s(p_28, 2))) && p_28), p_2242) , 0x0421L) <= (safe_mul_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((safe_sub_func_int8_t_s_s(p_29, p_2242->g_1700.f2)), 0x50L)), 0xBC4DL))) | 0UL), l_2138)) & l_2153) ^ 0L) , l_2154[4][2])) || 0x83EE477E6F25DCC3L) == p_29) , (**p_2242->g_1799)), 0x5599L)) == 0UL) , (*p_30));
                        (*l_2142) = l_2156;
                        return p_2242->g_2157;
                    }
                }
                if ((((*p_2242->g_873) = (((l_2159[1] = (p_29 & l_2158)) >= ((l_2128[4][2] < ((*p_2242->g_1270) = (l_2160 != (*p_2242->g_1145)))) || p_28)) < 0x4CFDL)) == 0x2744744C2159E1C9L))
                { /* block id: 1119 */
                    int16_t *l_2193 = &l_2128[4][6];
                    int32_t l_2197 = (-4L);
                    uint32_t l_2198 = 0x7BD40F76L;
                    int8_t l_2203 = (-1L);
                    uint32_t l_2204[9] = {1UL,4UL,1UL,1UL,4UL,1UL,1UL,4UL,1UL};
                    int i;
                    (*p_2242->g_1270) |= (*p_26);
                    for (p_2242->g_686.f0 = 1; (p_2242->g_686.f0 <= 5); p_2242->g_686.f0 += 1)
                    { /* block id: 1123 */
                        l_2158 = 0x4F25C23AL;
                        l_2159[1] |= (*p_2242->g_1270);
                    }
                    for (p_2242->g_576 = 0; (p_2242->g_576 <= 2); p_2242->g_576 += 1)
                    { /* block id: 1129 */
                        uint8_t *l_2187 = &p_2242->g_749;
                        uint32_t *l_2196 = &p_2242->g_1850.f0;
                        int8_t *l_2199 = &l_1954[5];
                        int i, j, k;
                        p_2242->g_683[p_2242->g_576][(p_2242->g_576 + 6)][p_2242->g_659.f2] = (*p_2242->g_105);
                        (*p_2242->g_1270) = ((FAKE_DIVERGE(p_2242->group_1_offset, get_group_id(1), 10) != (safe_sub_func_uint8_t_u_u((safe_unary_minus_func_int32_t_s((safe_div_func_int32_t_s_s((safe_mod_func_int8_t_s_s(((l_2168 = (!((**l_2093) = FAKE_DIVERGE(p_2242->group_1_offset, get_group_id(1), 10)))) < (safe_lshift_func_int8_t_s_u(((((--(*p_2242->g_873)) == ((safe_mod_func_int64_t_s_s((GROUP_DIVERGE(0, 1) || (((~p_27) || 0x6F16D85A1D1B10EDL) , (249UL | (safe_mul_func_uint16_t_u_u(((safe_add_func_int16_t_s_s((((+((*l_2199) ^= ((GROUP_DIVERGE(2, 1) <= (((safe_rshift_func_uint16_t_u_u((((*l_2196) = ((safe_lshift_func_uint8_t_u_u(0xCAL, 2)) | (((safe_lshift_func_uint16_t_u_u((0x7EL & (!l_2158)), ((p_2242->g_1531.f2 , (safe_sub_func_uint8_t_u_u((((~((2L < ((*l_2187)--)) >= (safe_unary_minus_func_uint16_t_u((safe_rshift_func_uint8_t_u_u((((((l_2193 != l_2194) , (void*)0) != &p_29) | (-6L)) | 0x21L), p_2242->g_2195)))))) , (void*)0) == (void*)0), 1UL))) >= 0x1A82L))) ^ 0x7DDDL) && 1L))) < l_2197), 3)) >= 0x44L) | (**p_2242->g_1799))) | l_2198))) , (-1L)) && l_2158), p_27)) && p_27), GROUP_DIVERGE(1, 1)))))), p_27)) & p_28)) > (*p_2242->g_1270)) , l_2200), 0))), GROUP_DIVERGE(0, 1))), (-1L))))), p_29))) , l_2128[4][1]);
                    }
                    for (p_2242->g_749 = 0; (p_2242->g_749 <= 46); p_2242->g_749++)
                    { /* block id: 1141 */
                        l_2204[1] |= (((*l_2194) = l_2203) || 0xE91DL);
                        (*p_2242->g_1699) &= (*p_26);
                        (*l_2125) = (void*)0;
                        (**p_2242->g_1343) = (*p_2242->g_223);
                    }
                }
                else
                { /* block id: 1148 */
                    return p_2242->g_2205;
                }
                if (l_2206)
                    break;
            }
            if (l_2158)
                goto lbl_2207;
        }
    }
    return p_2242->g_2208;
}


/* ------------------------------------------ */
/* 
 * reads : p_2242->g_36 p_2242->g_260 p_2242->g_427.f0 p_2242->g_596.f2 p_2242->g_2 p_2242->g_1790 p_2242->g_209 p_2242->g_683.f2 p_2242->g_360 p_2242->g_46.f0 p_2242->g_1383 p_2242->g_1270 p_2242->g_1873 p_2242->g_873 p_2242->g_829 p_2242->g_1301 p_2242->g_1344 p_2242->g_94 p_2242->g_626 p_2242->g_379.f0 p_2242->g_274.f1 p_2242->g_1800 p_2242->g_823 p_2242->g_10 p_2242->g_180
 * writes: p_2242->g_36 p_2242->g_260 p_2242->g_274.f0 p_2242->g_209 p_2242->g_576 p_2242->g_2 p_2242->g_1220 p_2242->g_46.f0 p_2242->g_94 p_2242->g_820 p_2242->g_10
 */
int16_t  func_42(int32_t  p_43, struct S2 * p_2242)
{ /* block id: 22 */
    int32_t *l_1891 = &p_2242->g_10;
    (*l_1891) |= func_49(&p_2242->g_2, p_2242);
    (*p_2242->g_180) = l_1891;
    return (*l_1891);
}


/* ------------------------------------------ */
/* 
 * reads : p_2242->g_36 p_2242->g_260 p_2242->g_427.f0 p_2242->g_596.f2 p_2242->g_2 p_2242->g_1790 p_2242->g_209 p_2242->g_683.f2 p_2242->g_360 p_2242->g_46.f0 p_2242->g_1383 p_2242->g_1270 p_2242->g_1873 p_2242->g_873 p_2242->g_829 p_2242->g_1301 p_2242->g_1344 p_2242->g_94 p_2242->g_626 p_2242->g_379.f0 p_2242->g_274.f1 p_2242->g_1800 p_2242->g_823
 * writes: p_2242->g_36 p_2242->g_260 p_2242->g_274.f0 p_2242->g_209 p_2242->g_576 p_2242->g_2 p_2242->g_1220 p_2242->g_46.f0 p_2242->g_94 p_2242->g_820
 */
int32_t  func_49(int32_t * p_50, struct S2 * p_2242)
{ /* block id: 23 */
    int8_t l_63 = 0x76L;
    uint16_t *l_302 = &p_2242->g_274.f0;
    uint64_t l_1565 = 1UL;
    uint64_t l_1599[7][1][3] = {{{18446744073709551612UL,18446744073709551612UL,18446744073709551612UL}},{{18446744073709551612UL,18446744073709551612UL,18446744073709551612UL}},{{18446744073709551612UL,18446744073709551612UL,18446744073709551612UL}},{{18446744073709551612UL,18446744073709551612UL,18446744073709551612UL}},{{18446744073709551612UL,18446744073709551612UL,18446744073709551612UL}},{{18446744073709551612UL,18446744073709551612UL,18446744073709551612UL}},{{18446744073709551612UL,18446744073709551612UL,18446744073709551612UL}}};
    int32_t l_1602 = 0L;
    int32_t l_1617[4][8] = {{0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L}};
    uint16_t l_1618 = 0xAFC8L;
    uint32_t **l_1633 = &p_2242->g_360;
    uint32_t ***l_1632 = &l_1633;
    int32_t ***l_1642 = (void*)0;
    int8_t l_1652[9][4][7] = {{{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L},{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L},{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L},{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L}},{{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L},{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L},{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L},{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L}},{{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L},{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L},{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L},{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L}},{{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L},{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L},{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L},{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L}},{{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L},{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L},{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L},{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L}},{{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L},{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L},{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L},{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L}},{{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L},{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L},{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L},{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L}},{{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L},{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L},{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L},{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L}},{{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L},{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L},{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L},{(-1L),0x4DL,0x56L,1L,0x71L,0x71L,1L}}};
    uint16_t l_1673 = 65528UL;
    int32_t l_1715 = 0x00FCC3FFL;
    uint32_t *l_1740 = &p_2242->g_1220;
    uint8_t *l_1750 = &p_2242->g_56;
    int32_t l_1780 = 0x73C012EDL;
    int8_t **l_1794 = (void*)0;
    int8_t ***l_1793[2];
    int16_t l_1798 = 0x3490L;
    int32_t l_1868 = (-1L);
    uint64_t *l_1884 = (void*)0;
    uint64_t *l_1885[1];
    int64_t *l_1886 = &p_2242->g_820[1][0];
    int32_t *l_1887[5][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
    uint32_t l_1888 = 0xF18FF838L;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_1793[i] = &l_1794;
    for (i = 0; i < 1; i++)
        l_1885[i] = (void*)0;
    for (p_2242->g_36 = (-16); (p_2242->g_36 < 25); ++p_2242->g_36)
    { /* block id: 26 */
        int32_t l_53 = 0x12973452L;
        int32_t l_54 = 0L;
        uint8_t *l_55 = &p_2242->g_56;
        uint32_t *l_70 = &p_2242->g_32[0].f0;
        uint8_t l_1375 = 0UL;
        uint32_t *l_1384 = &p_2242->g_1015.f0;
        uint8_t *l_1385 = &p_2242->g_790[2][0];
        int32_t *l_1386 = &p_2242->g_1387;
        int32_t *l_1574 = &p_2242->g_209[1][6][0];
        int32_t l_1615[10][4][3] = {{{(-1L),(-1L),0x7DFFC70EL},{(-1L),(-1L),0x7DFFC70EL},{(-1L),(-1L),0x7DFFC70EL},{(-1L),(-1L),0x7DFFC70EL}},{{(-1L),(-1L),0x7DFFC70EL},{(-1L),(-1L),0x7DFFC70EL},{(-1L),(-1L),0x7DFFC70EL},{(-1L),(-1L),0x7DFFC70EL}},{{(-1L),(-1L),0x7DFFC70EL},{(-1L),(-1L),0x7DFFC70EL},{(-1L),(-1L),0x7DFFC70EL},{(-1L),(-1L),0x7DFFC70EL}},{{(-1L),(-1L),0x7DFFC70EL},{(-1L),(-1L),0x7DFFC70EL},{(-1L),(-1L),0x7DFFC70EL},{(-1L),(-1L),0x7DFFC70EL}},{{(-1L),(-1L),0x7DFFC70EL},{(-1L),(-1L),0x7DFFC70EL},{(-1L),(-1L),0x7DFFC70EL},{(-1L),(-1L),0x7DFFC70EL}},{{(-1L),(-1L),0x7DFFC70EL},{(-1L),(-1L),0x7DFFC70EL},{(-1L),(-1L),0x7DFFC70EL},{(-1L),(-1L),0x7DFFC70EL}},{{(-1L),(-1L),0x7DFFC70EL},{(-1L),(-1L),0x7DFFC70EL},{(-1L),(-1L),0x7DFFC70EL},{(-1L),(-1L),0x7DFFC70EL}},{{(-1L),(-1L),0x7DFFC70EL},{(-1L),(-1L),0x7DFFC70EL},{(-1L),(-1L),0x7DFFC70EL},{(-1L),(-1L),0x7DFFC70EL}},{{(-1L),(-1L),0x7DFFC70EL},{(-1L),(-1L),0x7DFFC70EL},{(-1L),(-1L),0x7DFFC70EL},{(-1L),(-1L),0x7DFFC70EL}},{{(-1L),(-1L),0x7DFFC70EL},{(-1L),(-1L),0x7DFFC70EL},{(-1L),(-1L),0x7DFFC70EL},{(-1L),(-1L),0x7DFFC70EL}}};
        int32_t l_1690 = (-1L);
        uint64_t l_1691 = 0x0F8B4F433279ABAAL;
        int i, j, k;
        (1 + 1);
    }
    for (p_2242->g_260 = 0; (p_2242->g_260 > (-13)); p_2242->g_260--)
    { /* block id: 898 */
        uint32_t l_1771 = 4294967294UL;
        uint32_t **l_1787 = &p_2242->g_362;
        int16_t **l_1801 = &p_2242->g_1800;
        int32_t l_1823 = (-1L);
        int32_t l_1824 = 2L;
        int32_t l_1825 = (-6L);
        int32_t l_1827 = 3L;
        int32_t l_1828 = (-3L);
        int32_t l_1829 = (-10L);
        int32_t l_1830 = 0x01C53FE8L;
        int32_t l_1831 = 0x76C1195BL;
        int32_t l_1832 = (-5L);
        int32_t l_1833 = 0x4D12AF8EL;
        int32_t l_1834 = 0L;
        int32_t l_1835 = 0x77591380L;
        int32_t l_1836 = 0x0CA4D2ACL;
        int32_t l_1837 = 0x0B2BFBB9L;
        int32_t l_1838 = 0x5FBF1E4BL;
        int32_t l_1839 = 1L;
        (*p_2242->g_1270) = ((safe_lshift_func_uint8_t_u_s((safe_sub_func_int8_t_s_s((safe_rshift_func_int16_t_s_s(l_1771, 3)), (((~(safe_lshift_func_int16_t_s_u(p_2242->g_427[3].f0, 2))) && (safe_mul_func_uint16_t_u_u(65535UL, (l_1565 || (((*l_302) = ((p_2242->g_596[1].f2 <= l_1780) || l_1771)) == ((((safe_div_func_int64_t_s_s((((((((((((safe_sub_func_int64_t_s_s(((((safe_div_func_int8_t_s_s((l_1787 != ((*l_1632) = ((((safe_add_func_int64_t_s_s(((&l_63 != &l_1652[3][0][6]) , l_1771), l_1673)) , l_1771) | l_1771) , (void*)0))), l_1617[3][6])) <= (*p_50)) , p_2242->g_1790[0]) != l_1793[1]), p_2242->g_209[0][5][5])) != p_2242->g_683[1][4][3].f2) != l_1771) < (*p_2242->g_360)) || 0L) && GROUP_DIVERGE(1, 1)) , p_2242->g_1383) , l_1771) == 0x3602L) < 0L) > l_1771), l_1771)) , 0x11L) == 0x7CL) == GROUP_DIVERGE(1, 1))))))) && (-1L)))), 2)) >= 0xCF02B533L);
    }
    (*p_2242->g_1270) = (p_2242->g_1873 , ((!(((*p_2242->g_873) == ((9L != (safe_sub_func_uint16_t_u_u(l_1652[1][0][5], (p_50 == &p_2242->g_931)))) | 0x22CFB13B3B356190L)) <= (safe_div_func_uint16_t_u_u((safe_rshift_func_int16_t_s_s((safe_rshift_func_int16_t_s_s(((!((!((*l_1886) = ((safe_sub_func_uint8_t_u_u((l_63 | ((func_73((p_2242->g_576 = ((l_1617[3][2] >= l_1599[1][0][0]) == l_1652[6][2][3])), l_1617[0][0], p_2242) , l_1602) == (-1L))), l_1617[3][2])) <= p_2242->g_379.f0))) , p_2242->g_274.f1)) & l_1868), (*p_2242->g_1800))), l_1798)), l_1602)))) == l_1618));
    l_1888--;
    return (*p_50);
}


/* ------------------------------------------ */
/* 
 * reads : p_2242->g_821 p_2242->g_1145 p_2242->g_1146 p_2242->g_1270 p_2242->g_209 p_2242->g_160 p_2242->g_1150 p_2242->g_48 p_2242->g_829 p_2242->g_6 p_2242->g_686.f0 p_2242->g_790 p_2242->g_820 p_2242->g_299 p_2242->g_1466 p_2242->g_1470 p_2242->g_749 p_2242->g_1475 p_2242->g_683.f0 p_2242->g_360 p_2242->g_46.f0 p_2242->g_274.f1 p_2242->g_297 p_2242->g_1301 p_2242->g_1383 p_2242->g_1344 p_2242->g_94 p_2242->g_626 p_2242->g_274.f2 p_2242->g_31 p_2242->g_203 p_2242->g_105 p_2242->g_104 p_2242->g_1502 p_2242->g_273 p_2242->g_1244.f0 p_2242->g_977 p_2242->g_1158 p_2242->g_301
 * writes: p_2242->g_210 p_2242->g_209 p_2242->g_160 p_2242->g_1150 p_2242->g_48 p_2242->g_829 p_2242->g_686.f0 p_2242->g_790 p_2242->g_164 p_2242->g_820 p_2242->g_104.f2 p_2242->g_683.f2 p_2242->g_2 p_2242->g_1220 p_2242->g_46.f0 p_2242->g_94 p_2242->g_274.f2 p_2242->g_1502 p_2242->g_953.f2 p_2242->l_comm_values p_2242->g_31 p_2242->g_1531 p_2242->g_821 p_2242->g_823 p_2242->g_274.f0 p_2242->g_104.f0
 */
uint32_t  func_59(int32_t  p_60, struct S2 * p_2242)
{ /* block id: 720 */
    uint16_t l_1390 = 1UL;
    union U1 *l_1391[5][5] = {{&p_2242->g_379,&p_2242->g_32[0],&p_2242->g_32[0],&p_2242->g_379,&p_2242->g_379},{&p_2242->g_379,&p_2242->g_32[0],&p_2242->g_32[0],&p_2242->g_379,&p_2242->g_379},{&p_2242->g_379,&p_2242->g_32[0],&p_2242->g_32[0],&p_2242->g_379,&p_2242->g_379},{&p_2242->g_379,&p_2242->g_32[0],&p_2242->g_32[0],&p_2242->g_379,&p_2242->g_379},{&p_2242->g_379,&p_2242->g_32[0],&p_2242->g_32[0],&p_2242->g_379,&p_2242->g_379}};
    int32_t l_1392[10][2][4] = {{{0x6AC7BF5BL,0x6AC7BF5BL,0x01BAFEAAL,0x7C76970CL},{0x6AC7BF5BL,0x6AC7BF5BL,0x01BAFEAAL,0x7C76970CL}},{{0x6AC7BF5BL,0x6AC7BF5BL,0x01BAFEAAL,0x7C76970CL},{0x6AC7BF5BL,0x6AC7BF5BL,0x01BAFEAAL,0x7C76970CL}},{{0x6AC7BF5BL,0x6AC7BF5BL,0x01BAFEAAL,0x7C76970CL},{0x6AC7BF5BL,0x6AC7BF5BL,0x01BAFEAAL,0x7C76970CL}},{{0x6AC7BF5BL,0x6AC7BF5BL,0x01BAFEAAL,0x7C76970CL},{0x6AC7BF5BL,0x6AC7BF5BL,0x01BAFEAAL,0x7C76970CL}},{{0x6AC7BF5BL,0x6AC7BF5BL,0x01BAFEAAL,0x7C76970CL},{0x6AC7BF5BL,0x6AC7BF5BL,0x01BAFEAAL,0x7C76970CL}},{{0x6AC7BF5BL,0x6AC7BF5BL,0x01BAFEAAL,0x7C76970CL},{0x6AC7BF5BL,0x6AC7BF5BL,0x01BAFEAAL,0x7C76970CL}},{{0x6AC7BF5BL,0x6AC7BF5BL,0x01BAFEAAL,0x7C76970CL},{0x6AC7BF5BL,0x6AC7BF5BL,0x01BAFEAAL,0x7C76970CL}},{{0x6AC7BF5BL,0x6AC7BF5BL,0x01BAFEAAL,0x7C76970CL},{0x6AC7BF5BL,0x6AC7BF5BL,0x01BAFEAAL,0x7C76970CL}},{{0x6AC7BF5BL,0x6AC7BF5BL,0x01BAFEAAL,0x7C76970CL},{0x6AC7BF5BL,0x6AC7BF5BL,0x01BAFEAAL,0x7C76970CL}},{{0x6AC7BF5BL,0x6AC7BF5BL,0x01BAFEAAL,0x7C76970CL},{0x6AC7BF5BL,0x6AC7BF5BL,0x01BAFEAAL,0x7C76970CL}}};
    int16_t *l_1395 = &p_2242->g_210;
    int32_t l_1407[3];
    int32_t l_1418 = (-1L);
    uint32_t *l_1419 = &p_2242->g_931;
    int32_t ***l_1434 = &p_2242->g_1344;
    int32_t **l_1471 = (void*)0;
    int64_t l_1479 = 5L;
    uint8_t l_1538 = 253UL;
    struct S0 ***l_1564[8] = {&p_2242->g_1502,&p_2242->g_1502,&p_2242->g_1502,&p_2242->g_1502,&p_2242->g_1502,&p_2242->g_1502,&p_2242->g_1502,&p_2242->g_1502};
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_1407[i] = 1L;
    if (((((safe_add_func_int64_t_s_s((p_60 == l_1390), ((((0x72L == ((FAKE_DIVERGE(p_2242->global_1_offset, get_global_id(1), 10) == 5UL) ^ (l_1391[2][2] == l_1391[1][2]))) & ((l_1392[7][1][3] , (0xD108L != (safe_lshift_func_int16_t_s_u(((*l_1395) = (l_1392[5][1][1] | l_1390)), 12)))) ^ l_1392[8][1][3])) , p_60) != p_2242->g_821))) >= 0xCD942BF9L) < 4294967286UL) || p_60))
    { /* block id: 722 */
        int8_t l_1397 = 0x31L;
        uint64_t l_1413 = 0x15BCF80AE7908BD6L;
        int64_t *l_1414 = &p_2242->g_1250;
        uint8_t *l_1417 = &p_2242->g_790[2][0];
        int32_t *l_1430[6][6][3] = {{{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]},{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]},{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]},{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]},{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]},{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]}},{{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]},{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]},{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]},{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]},{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]},{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]}},{{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]},{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]},{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]},{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]},{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]},{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]}},{{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]},{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]},{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]},{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]},{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]},{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]}},{{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]},{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]},{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]},{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]},{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]},{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]}},{{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]},{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]},{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]},{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]},{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]},{&p_2242->g_209[0][5][5],&l_1407[2],&l_1407[2]}}};
        uint64_t l_1431 = 18446744073709551615UL;
        int i, j, k;
lbl_1406:
        if ((safe_unary_minus_func_int32_t_s(l_1397)))
        { /* block id: 723 */
            (*p_2242->g_1270) = ((void*)0 != (*p_2242->g_1145));
            (*p_2242->g_1270) ^= 0x045A0EC3L;
            if (l_1390)
                goto lbl_1429;
        }
        else
        { /* block id: 726 */
            int8_t l_1401 = (-6L);
            for (p_2242->g_160 = 0; (p_2242->g_160 <= 3); p_2242->g_160 += 1)
            { /* block id: 729 */
                return l_1392[7][1][3];
            }
            if (p_60)
            { /* block id: 732 */
                int32_t l_1398 = 0x78FE51CBL;
                return l_1398;
            }
            else
            { /* block id: 734 */
                for (l_1397 = 26; (l_1397 == (-18)); l_1397--)
                { /* block id: 737 */
                    if (l_1401)
                        break;
                }
            }
        }
lbl_1429:
        for (p_2242->g_1150 = 0; (p_2242->g_1150 == 28); p_2242->g_1150 = safe_add_func_uint16_t_u_u(p_2242->g_1150, 3))
        { /* block id: 744 */
            for (p_2242->g_48 = 0; (p_2242->g_48 != 8); p_2242->g_48++)
            { /* block id: 747 */
                uint64_t *l_1408 = &p_2242->g_829;
                uint16_t *l_1422 = &p_2242->g_686.f0;
                if (p_2242->g_821)
                    goto lbl_1406;
                (*p_2242->g_1270) &= ((((p_60 != ((*l_1408)--)) == (safe_div_func_int16_t_s_s((GROUP_DIVERGE(1, 1) || ((-1L) != ((&p_2242->g_1250 == (l_1413 , l_1414)) && (safe_mul_func_uint16_t_u_u(((((void*)0 != l_1417) , (l_1413 && ((l_1418 ^ (-5L)) ^ p_60))) == l_1407[2]), 0xFA12L))))), l_1413))) , l_1419) != (void*)0);
                (*p_2242->g_1270) ^= ((p_60 < (safe_div_func_int16_t_s_s(p_2242->g_6[2], (++(*l_1422))))) , (0x0126AAE8L <= (p_60 || ((0xDFL || (safe_lshift_func_uint16_t_u_u((0x0E95L < l_1413), ((*l_1422)--)))) | ((*l_1417) &= 0xD3L)))));
            }
        }
        --l_1431;
    }
    else
    { /* block id: 759 */
        int32_t l_1435 = 1L;
        int32_t ***l_1436 = &p_2242->g_1344;
        int64_t l_1443 = (-6L);
        uint16_t *l_1448 = &p_2242->g_274.f0;
        int32_t *l_1449[10][4] = {{&p_2242->g_48,&p_2242->g_48,&p_2242->g_48,(void*)0},{&p_2242->g_48,&p_2242->g_48,&p_2242->g_48,(void*)0},{&p_2242->g_48,&p_2242->g_48,&p_2242->g_48,(void*)0},{&p_2242->g_48,&p_2242->g_48,&p_2242->g_48,(void*)0},{&p_2242->g_48,&p_2242->g_48,&p_2242->g_48,(void*)0},{&p_2242->g_48,&p_2242->g_48,&p_2242->g_48,(void*)0},{&p_2242->g_48,&p_2242->g_48,&p_2242->g_48,(void*)0},{&p_2242->g_48,&p_2242->g_48,&p_2242->g_48,(void*)0},{&p_2242->g_48,&p_2242->g_48,&p_2242->g_48,(void*)0},{&p_2242->g_48,&p_2242->g_48,&p_2242->g_48,(void*)0}};
        int8_t *l_1450 = &p_2242->g_164;
        int64_t *l_1451 = (void*)0;
        uint32_t **l_1474 = &p_2242->g_360;
        uint32_t ***l_1473 = &l_1474;
        struct S0 **l_1501[4];
        uint64_t l_1530 = 0x336105A5D3C53A15L;
        int i, j;
        for (i = 0; i < 4; i++)
            l_1501[i] = (void*)0;
        if (((l_1434 == (l_1435 , l_1436)) & ((safe_mod_func_int64_t_s_s((((safe_lshift_func_int8_t_s_s((GROUP_DIVERGE(0, 1) ^ (p_2242->g_820[1][1] ^= (safe_mul_func_int8_t_s_s(((l_1443 == 1L) , ((*l_1450) = (safe_rshift_func_int16_t_s_u(((&p_60 == ((safe_rshift_func_uint8_t_u_s((p_60 | ((void*)0 == l_1448)), 7)) , l_1449[5][0])) , p_60), FAKE_DIVERGE(p_2242->group_1_offset, get_group_id(1), 10))))), l_1392[2][1][1])))), 2)) >= 1L) , p_60), p_60)) > p_2242->g_299)))
        { /* block id: 762 */
            uint32_t *l_1467 = &p_2242->g_636.f0;
            int32_t l_1472 = (-8L);
            int64_t *l_1488 = &p_2242->g_683[1][4][3].f2;
            (*p_2242->g_1270) ^= ((safe_lshift_func_uint16_t_u_s(FAKE_DIVERGE(p_2242->local_1_offset, get_local_id(1), 10), ((safe_mod_func_uint8_t_u_u((0x49L != (safe_rshift_func_int16_t_s_s(((safe_sub_func_uint32_t_u_u((((((safe_mul_func_int8_t_s_s((safe_add_func_int16_t_s_s(((safe_mul_func_uint8_t_u_u((p_2242->g_1466 , (l_1467 != ((((1UL & 255UL) && ((p_2242->g_1470 , &p_2242->g_403) == l_1471)) >= 255UL) , &p_2242->g_830))), p_60)) ^ l_1472), l_1472)), p_2242->g_749)) != p_60) < 7L) , l_1473) != p_2242->g_1475), p_60)) != p_2242->g_683[1][4][3].f0), p_60))), l_1472)) && (*p_2242->g_360)))) > l_1472);
            l_1472 = ((((((*p_2242->g_360) = (func_73(((safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_2242->local_1_offset, get_local_id(1), 10), p_60)) >= l_1479), ((safe_mul_func_int16_t_s_s(((*p_2242->g_360) < FAKE_DIVERGE(p_2242->group_0_offset, get_group_id(0), 10)), ((((*l_1450) = (((*l_1488) = ((GROUP_DIVERGE(2, 1) , (0x39CBL > (safe_mul_func_int8_t_s_s(((safe_lshift_func_uint16_t_u_s((safe_add_func_int16_t_s_s(p_2242->g_46.f0, 65528UL)), 6)) || l_1472), p_60)))) >= (p_2242->g_104.f2 = ((0x11L == p_2242->g_274.f1) > p_60)))) && 0L)) , p_60) < l_1472))) , p_2242->g_297), p_2242) , 0xFB1D4BC8L)) < GROUP_DIVERGE(1, 1)) ^ p_60) > 0x85L) && 6UL);
            (*p_2242->g_1270) &= l_1472;
            (*p_2242->g_1344) = l_1449[5][0];
        }
        else
        { /* block id: 771 */
            uint32_t *l_1491 = &p_2242->g_1220;
            struct S0 **l_1499 = &p_2242->g_273;
            int32_t l_1511 = 1L;
            uint64_t l_1519[10][9] = {{0UL,0x8CCCEA0A96C6C7C6L,18446744073709551614UL,18446744073709551610UL,0x2A27B65D37A67B64L,0UL,18446744073709551610UL,0x4F186F1965080599L,18446744073709551610UL},{0UL,0x8CCCEA0A96C6C7C6L,18446744073709551614UL,18446744073709551610UL,0x2A27B65D37A67B64L,0UL,18446744073709551610UL,0x4F186F1965080599L,18446744073709551610UL},{0UL,0x8CCCEA0A96C6C7C6L,18446744073709551614UL,18446744073709551610UL,0x2A27B65D37A67B64L,0UL,18446744073709551610UL,0x4F186F1965080599L,18446744073709551610UL},{0UL,0x8CCCEA0A96C6C7C6L,18446744073709551614UL,18446744073709551610UL,0x2A27B65D37A67B64L,0UL,18446744073709551610UL,0x4F186F1965080599L,18446744073709551610UL},{0UL,0x8CCCEA0A96C6C7C6L,18446744073709551614UL,18446744073709551610UL,0x2A27B65D37A67B64L,0UL,18446744073709551610UL,0x4F186F1965080599L,18446744073709551610UL},{0UL,0x8CCCEA0A96C6C7C6L,18446744073709551614UL,18446744073709551610UL,0x2A27B65D37A67B64L,0UL,18446744073709551610UL,0x4F186F1965080599L,18446744073709551610UL},{0UL,0x8CCCEA0A96C6C7C6L,18446744073709551614UL,18446744073709551610UL,0x2A27B65D37A67B64L,0UL,18446744073709551610UL,0x4F186F1965080599L,18446744073709551610UL},{0UL,0x8CCCEA0A96C6C7C6L,18446744073709551614UL,18446744073709551610UL,0x2A27B65D37A67B64L,0UL,18446744073709551610UL,0x4F186F1965080599L,18446744073709551610UL},{0UL,0x8CCCEA0A96C6C7C6L,18446744073709551614UL,18446744073709551610UL,0x2A27B65D37A67B64L,0UL,18446744073709551610UL,0x4F186F1965080599L,18446744073709551610UL},{0UL,0x8CCCEA0A96C6C7C6L,18446744073709551614UL,18446744073709551610UL,0x2A27B65D37A67B64L,0UL,18446744073709551610UL,0x4F186F1965080599L,18446744073709551610UL}};
            uint32_t l_1521 = 0UL;
            uint16_t l_1543 = 0xA4C8L;
            int i, j;
            (*p_2242->g_1270) = (((void*)0 != l_1491) & (p_60 > 0L));
            for (p_2242->g_274.f2 = 0; (p_2242->g_274.f2 <= 6); p_2242->g_274.f2 += 1)
            { /* block id: 775 */
                int32_t *l_1492 = (void*)0;
                struct S0 ***l_1500[8][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                union U1 **l_1512 = &l_1391[3][0];
                int16_t *l_1520[10][10][2] = {{{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31}},{{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31}},{{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31}},{{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31}},{{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31}},{{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31}},{{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31}},{{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31}},{{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31}},{{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31},{&p_2242->g_31,&p_2242->g_31}}};
                int i, j, k;
                l_1492 = l_1492;
                (**l_1436) = ((safe_mod_func_int16_t_s_s(((safe_mod_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u((l_1499 == (p_2242->g_1502 = (l_1501[0] = l_1499))), (safe_rshift_func_uint16_t_u_u(((safe_mod_func_int8_t_s_s((~((p_2242->g_31 |= (l_1511 = ((safe_rshift_func_uint16_t_u_s(p_60, (((p_60 , ((l_1511 > (((*l_1512) = &p_2242->g_32[0]) != (void*)0)) != ((p_2242->g_953.f2 = 1L) < (p_2242->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2242->tid, 35))] = (safe_rshift_func_int16_t_s_u((~(!(((*l_1395) = (safe_mod_func_int64_t_s_s((safe_div_func_uint32_t_u_u((l_1519[1][1] && p_60), 5UL)), 1L))) & l_1519[8][7]))), p_60)))))) >= p_60) < (*p_2242->g_1270)))) <= 9L))) >= 0xA2C1L)), 247UL)) || p_60), 11)))), l_1521)) || p_60), (-1L))) , (void*)0);
                if (((((safe_sub_func_int64_t_s_s((p_60 < 4294967295UL), (safe_mod_func_int64_t_s_s(2L, (((((p_60 > 5L) < p_60) && p_60) > (safe_rshift_func_int8_t_s_u(((((5L > (safe_mod_func_uint32_t_u_u(0UL, p_60))) & p_60) > p_60) && l_1530), 1))) & p_60))))) > 0x87L) | p_2242->g_203[6]) > p_60))
                { /* block id: 786 */
                    int64_t l_1534 = 0x6B82C7C7D32E72DDL;
                    int32_t l_1537 = 0x5F11555FL;
                    p_2242->g_1531 = (*p_2242->g_105);
                    l_1511 = (((void*)0 != l_1492) ^ ((+(safe_rshift_func_int16_t_s_s(l_1534, (p_2242->g_821 = ((*l_1395) = ((void*)0 != &p_2242->g_931)))))) != ((safe_mul_func_int16_t_s_s((l_1537 = (p_2242->g_823 = ((*p_2242->g_1502) == (void*)0))), (p_60 , l_1538))) , p_2242->g_1244.f0)));
                    for (p_2242->g_31 = (-8); (p_2242->g_31 <= (-10)); p_2242->g_31 = safe_sub_func_int32_t_s_s(p_2242->g_31, 3))
                    { /* block id: 795 */
                        return l_1521;
                    }
                }
                else
                { /* block id: 798 */
                    int16_t *l_1560[1];
                    int32_t l_1563[5];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_1560[i] = &p_2242->g_31;
                    for (i = 0; i < 5; i++)
                        l_1563[i] = 0x758EFF0AL;
                    (**l_1434) = (*p_2242->g_977);
                    for (l_1443 = 1; (l_1443 != 19); ++l_1443)
                    { /* block id: 802 */
                        uint8_t l_1546 = 0x71L;
                        uint16_t *l_1555[2][2][1];
                        int i, j, k;
                        for (i = 0; i < 2; i++)
                        {
                            for (j = 0; j < 2; j++)
                            {
                                for (k = 0; k < 1; k++)
                                    l_1555[i][j][k] = &l_1390;
                            }
                        }
                        l_1543--;
                        --l_1546;
                        (*p_2242->g_1270) = ((safe_mod_func_int16_t_s_s(0L, ((*l_1448) = (safe_add_func_uint16_t_u_u((0x8FL >= (safe_sub_func_uint32_t_u_u((&p_2242->g_1220 == ((l_1555[0][0][0] == (*p_2242->g_1158)) , &p_2242->g_1220)), p_60))), p_60))))) >= (((safe_mod_func_uint8_t_u_u(FAKE_DIVERGE(p_2242->group_1_offset, get_group_id(1), 10), (safe_add_func_uint16_t_u_u((p_2242->g_104.f0 |= (l_1560[0] != (void*)0)), 5L)))) && p_60) , FAKE_DIVERGE(p_2242->local_2_offset, get_local_id(2), 10)));
                        (*p_2242->g_1270) &= l_1546;
                    }
                    (*p_2242->g_1270) = (safe_sub_func_int8_t_s_s(l_1563[3], (&l_1499 == l_1564[5])));
                }
            }
        }
    }
    (**l_1434) = &l_1407[1];
    return (*p_2242->g_360);
}


/* ------------------------------------------ */
/* 
 * reads : p_2242->g_2 p_2242->g_1220 p_2242->g_360 p_2242->g_46.f0 p_2242->g_1301 p_2242->g_1383 p_2242->g_1344 p_2242->g_94 p_2242->g_1270 p_2242->g_626
 * writes: p_2242->g_2 p_2242->g_1220 p_2242->g_46.f0 p_2242->g_94 p_2242->g_209
 */
union U1  func_73(uint64_t  p_74, int16_t  p_75, struct S2 * p_2242)
{ /* block id: 697 */
    int32_t l_1379 = 7L;
    int32_t l_1382[2][8][2] = {{{0x5D0F4CDAL,0x5D0F4CDAL},{0x5D0F4CDAL,0x5D0F4CDAL},{0x5D0F4CDAL,0x5D0F4CDAL},{0x5D0F4CDAL,0x5D0F4CDAL},{0x5D0F4CDAL,0x5D0F4CDAL},{0x5D0F4CDAL,0x5D0F4CDAL},{0x5D0F4CDAL,0x5D0F4CDAL},{0x5D0F4CDAL,0x5D0F4CDAL}},{{0x5D0F4CDAL,0x5D0F4CDAL},{0x5D0F4CDAL,0x5D0F4CDAL},{0x5D0F4CDAL,0x5D0F4CDAL},{0x5D0F4CDAL,0x5D0F4CDAL},{0x5D0F4CDAL,0x5D0F4CDAL},{0x5D0F4CDAL,0x5D0F4CDAL},{0x5D0F4CDAL,0x5D0F4CDAL},{0x5D0F4CDAL,0x5D0F4CDAL}}};
    int i, j, k;
    for (p_2242->g_2 = 7; (p_2242->g_2 >= 0); p_2242->g_2 -= 1)
    { /* block id: 700 */
        uint32_t l_1378 = 5UL;
        for (p_2242->g_1220 = 0; (p_2242->g_1220 <= 7); p_2242->g_1220 += 1)
        { /* block id: 703 */
            int64_t l_1380 = 0L;
            int64_t *l_1381[3];
            int i;
            for (i = 0; i < 3; i++)
                l_1381[i] = (void*)0;
            (*p_2242->g_1301) = ((l_1382[1][7][0] = ((l_1379 = ((--(*p_2242->g_360)) <= l_1378)) & (l_1380 = 0x5CL))) , &l_1379);
            return p_2242->g_1383;
        }
    }
    (*p_2242->g_1301) = &l_1379;
    (*p_2242->g_1270) = ((**p_2242->g_1344) &= p_74);
    return p_2242->g_626[5][4][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_2242->g_689 p_2242->g_203 p_2242->g_209 p_2242->g_2 p_2242->g_199.f1 p_2242->g_360 p_2242->g_46.f0 p_2242->g_160 p_2242->g_659.f0 p_2242->g_686.f2 p_2242->g_36 p_2242->g_104.f2 p_2242->g_682.f2 p_2242->l_comm_values p_2242->g_427.f0 p_2242->g_659.f2 p_2242->g_398.f2 p_2242->g_427.f2 p_2242->g_164 p_2242->g_790 p_2242->g_683.f2 p_2242->g_31 p_2242->g_576 p_2242->g_298 p_2242->g_210 p_2242->g_820 p_2242->g_821 p_2242->g_823 p_2242->g_596.f0 p_2242->g_636.f0 p_2242->g_281.f0 p_2242->g_398.f1 p_2242->g_881 p_2242->g_105 p_2242->g_104 p_2242->g_396.f2 p_2242->g_6 p_2242->g_873 p_2242->g_829
 * writes: p_2242->g_203 p_2242->g_576 p_2242->g_2 p_2242->g_46.f0 p_2242->g_659.f0 p_2242->g_659.f2 p_2242->g_749 p_2242->g_31 p_2242->g_210 p_2242->g_820 p_2242->g_821 p_2242->g_823 p_2242->g_829 p_2242->g_830 p_2242->g_686.f2 p_2242->g_873
 */
int8_t  func_82(uint8_t  p_83, int32_t  p_84, uint8_t  p_85, struct S2 * p_2242)
{ /* block id: 399 */
    int8_t l_688 = (-1L);
    uint8_t **l_690 = (void*)0;
    uint8_t *l_691 = &p_2242->g_203[6];
    uint32_t l_692[1];
    uint64_t *l_693 = &p_2242->g_576;
    int32_t *l_694 = &p_2242->g_2;
    uint16_t **l_748 = &p_2242->g_301;
    uint64_t l_764 = 0x4EB8F6C99F1667A0L;
    int32_t l_770 = (-1L);
    uint32_t l_856 = 0xB933A1E9L;
    int16_t *l_877 = &p_2242->g_823;
    struct S0 *l_892 = (void*)0;
    uint32_t l_894[2][1];
    int32_t l_985 = 1L;
    int32_t l_988 = 0x2F3DB8F7L;
    int32_t l_991 = 9L;
    int32_t l_992 = (-2L);
    int32_t l_999[7];
    int32_t l_1004 = 0x0140E55DL;
    uint64_t l_1006 = 0x731446F62ADCCF96L;
    int32_t **l_1045[1][8][7] = {{{(void*)0,&p_2242->g_403,&p_2242->g_403,(void*)0,&p_2242->g_403,(void*)0,(void*)0},{(void*)0,&p_2242->g_403,&p_2242->g_403,(void*)0,&p_2242->g_403,(void*)0,(void*)0},{(void*)0,&p_2242->g_403,&p_2242->g_403,(void*)0,&p_2242->g_403,(void*)0,(void*)0},{(void*)0,&p_2242->g_403,&p_2242->g_403,(void*)0,&p_2242->g_403,(void*)0,(void*)0},{(void*)0,&p_2242->g_403,&p_2242->g_403,(void*)0,&p_2242->g_403,(void*)0,(void*)0},{(void*)0,&p_2242->g_403,&p_2242->g_403,(void*)0,&p_2242->g_403,(void*)0,(void*)0},{(void*)0,&p_2242->g_403,&p_2242->g_403,(void*)0,&p_2242->g_403,(void*)0,(void*)0},{(void*)0,&p_2242->g_403,&p_2242->g_403,(void*)0,&p_2242->g_403,(void*)0,(void*)0}}};
    int16_t l_1046[4];
    int8_t *l_1064 = &p_2242->g_167;
    int8_t **l_1063 = &l_1064;
    int32_t l_1217[2][2];
    int32_t **l_1246 = &p_2242->g_94;
    int32_t ***l_1245[6] = {&l_1246,&l_1246,&l_1246,&l_1246,&l_1246,&l_1246};
    uint32_t l_1295 = 0xB4BFA118L;
    uint16_t l_1315 = 8UL;
    int32_t l_1328 = (-10L);
    uint32_t l_1349[8] = {0x43316C72L,0x43316C72L,0x43316C72L,0x43316C72L,0x43316C72L,0x43316C72L,0x43316C72L,0x43316C72L};
    int16_t l_1370 = 0x1646L;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_692[i] = 1UL;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
            l_894[i][j] = 0UL;
    }
    for (i = 0; i < 7; i++)
        l_999[i] = 0x5B549ABBL;
    for (i = 0; i < 4; i++)
        l_1046[i] = 0x1764L;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 2; j++)
            l_1217[i][j] = 0x0561AD1EL;
    }
    (*l_694) &= (((+(l_688 , ((*l_693) = (((*l_691) ^= ((p_2242->g_689 == l_690) ^ 0xBB2C9831L)) > ((l_692[0] > p_2242->g_209[0][5][5]) , (&p_2242->g_576 == l_693)))))) , l_693) == (void*)0);
    if (p_83)
    { /* block id: 403 */
        int64_t l_701[7] = {0x263406A37689DA3BL,0x263406A37689DA3BL,0x263406A37689DA3BL,0x263406A37689DA3BL,0x263406A37689DA3BL,0x263406A37689DA3BL,0x263406A37689DA3BL};
        int32_t **l_703 = &l_694;
        int32_t ***l_702 = &l_703;
        int32_t l_742 = (-1L);
        int32_t l_771 = 0x1DDD1899L;
        int32_t l_775 = 0x615FDB0CL;
        int32_t l_782 = (-1L);
        uint32_t l_783 = 0xF45123E4L;
        int16_t *l_787 = &p_2242->g_31;
        int16_t **l_786 = &l_787;
        int8_t l_809[3];
        uint64_t *l_826 = &l_764;
        uint32_t l_836 = 0x4E259995L;
        int32_t *l_860 = &p_2242->g_48;
        int i;
        for (i = 0; i < 3; i++)
            l_809[i] = 0L;
        if ((safe_div_func_int64_t_s_s((safe_sub_func_int64_t_s_s((((safe_rshift_func_int8_t_s_u((p_2242->g_199.f1 ^ ((((l_701[1] >= ((*l_694) = p_83)) != (!(((*p_2242->g_360) |= (0x89L | ((&l_694 == ((*l_702) = &p_2242->g_94)) >= ((safe_lshift_func_uint8_t_u_s((safe_mod_func_uint64_t_u_u(((((safe_mod_func_uint8_t_u_u((safe_sub_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), (p_85 < p_85))), 251UL)) , 0x7FL) <= p_84) < p_84), 0x43007DFF26EC4AC1L)), 1)) , p_2242->g_209[2][0][3])))) , (-1L)))) < p_2242->g_160) > p_83)), p_2242->g_659.f0)) & p_83) != p_85), p_2242->g_686.f2)), p_2242->g_36)))
        { /* block id: 407 */
            int8_t l_743[3][5][2] = {{{0x30L,0x30L},{0x30L,0x30L},{0x30L,0x30L},{0x30L,0x30L},{0x30L,0x30L}},{{0x30L,0x30L},{0x30L,0x30L},{0x30L,0x30L},{0x30L,0x30L},{0x30L,0x30L}},{{0x30L,0x30L},{0x30L,0x30L},{0x30L,0x30L},{0x30L,0x30L},{0x30L,0x30L}}};
            int32_t l_773 = 0x716E89D3L;
            int32_t l_777 = 9L;
            int32_t *l_893 = &p_2242->g_10;
            int i, j, k;
            for (p_2242->g_659.f0 = (-17); (p_2242->g_659.f0 < 49); p_2242->g_659.f0 = safe_add_func_uint32_t_u_u(p_2242->g_659.f0, 8))
            { /* block id: 410 */
                uint32_t l_724 = 0UL;
                int64_t *l_725 = &l_701[1];
                int8_t *l_740[2];
                int32_t l_741 = 0x7AE6BB38L;
                int32_t l_774[4][6] = {{(-1L),0x231E9ECCL,(-1L),(-1L),0x231E9ECCL,(-1L)},{(-1L),0x231E9ECCL,(-1L),(-1L),0x231E9ECCL,(-1L)},{(-1L),0x231E9ECCL,(-1L),(-1L),0x231E9ECCL,(-1L)},{(-1L),0x231E9ECCL,(-1L),(-1L),0x231E9ECCL,(-1L)}};
                uint8_t l_807 = 253UL;
                int16_t **l_808[1][6][8] = {{{&l_787,&l_787,&l_787,&l_787,&l_787,&l_787,&l_787,&l_787},{&l_787,&l_787,&l_787,&l_787,&l_787,&l_787,&l_787,&l_787},{&l_787,&l_787,&l_787,&l_787,&l_787,&l_787,&l_787,&l_787},{&l_787,&l_787,&l_787,&l_787,&l_787,&l_787,&l_787,&l_787},{&l_787,&l_787,&l_787,&l_787,&l_787,&l_787,&l_787,&l_787},{&l_787,&l_787,&l_787,&l_787,&l_787,&l_787,&l_787,&l_787}}};
                int32_t *l_858 = &p_2242->g_48;
                int64_t l_878 = 0L;
                int i, j, k;
                for (i = 0; i < 2; i++)
                    l_740[i] = &p_2242->g_260;
                if ((safe_rshift_func_int8_t_s_u((((safe_div_func_uint16_t_u_u(((safe_lshift_func_uint8_t_u_s(((l_742 &= ((0x3FL & p_84) >= (9UL > (safe_mod_func_int16_t_s_s((((safe_div_func_int32_t_s_s(l_724, p_85)) & ((*l_725) = p_83)) & (*l_694)), (((safe_div_func_uint32_t_u_u(((safe_add_func_int32_t_s_s(((safe_lshift_func_uint8_t_u_u((p_2242->g_203[6]++), 7)) >= (safe_lshift_func_int8_t_s_u((l_741 = (safe_mod_func_uint16_t_u_u((~(safe_add_func_uint64_t_u_u(GROUP_DIVERGE(1, 1), (p_84 & (p_2242->g_104.f2 == 253UL))))), p_85))), (*l_694)))), 0UL)) ^ p_2242->g_682.f2), p_85)) ^ p_2242->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2242->tid, 35))]) && 0xB619L)))))) < l_743[1][1][0]), p_85)) & p_2242->g_427[3].f0), p_85)) == 0x09L) , p_85), p_85)))
                { /* block id: 415 */
                    int16_t l_765 = 0x0026L;
                    int32_t l_772 = 0x5B870E7EL;
                    int32_t l_776 = 0L;
                    int32_t l_778 = 0x17F72E3FL;
                    int32_t l_779 = (-1L);
                    int32_t l_780 = 0x51979BB0L;
                    int32_t l_781 = 3L;
                    int32_t *l_810 = (void*)0;
                    int32_t *l_811 = &l_775;
                    for (p_2242->g_659.f2 = 0; (p_2242->g_659.f2 >= (-1)); p_2242->g_659.f2 = safe_sub_func_uint32_t_u_u(p_2242->g_659.f2, 9))
                    { /* block id: 418 */
                        int32_t l_766 = (-1L);
                        int32_t *l_767 = &p_2242->g_10;
                        int32_t *l_768 = &p_2242->g_209[0][5][5];
                        int32_t *l_769[5][5] = {{&l_766,&p_2242->g_2,&p_2242->g_209[0][3][1],&p_2242->g_2,&l_766},{&l_766,&p_2242->g_2,&p_2242->g_209[0][3][1],&p_2242->g_2,&l_766},{&l_766,&p_2242->g_2,&p_2242->g_209[0][3][1],&p_2242->g_2,&l_766},{&l_766,&p_2242->g_2,&p_2242->g_209[0][3][1],&p_2242->g_2,&l_766},{&l_766,&p_2242->g_2,&p_2242->g_209[0][3][1],&p_2242->g_2,&l_766}};
                        int i, j;
                        p_84 = (((((safe_add_func_int32_t_s_s(p_84, (*p_2242->g_360))) || ((*l_693) = ((void*)0 == l_748))) || (p_2242->g_749 = p_2242->g_398.f2)) ^ (GROUP_DIVERGE(1, 1) == ((((*l_694) &= (~(((safe_div_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u((safe_add_func_int8_t_s_s((l_741 = ((((safe_sub_func_int64_t_s_s((&p_83 == &p_83), ((4294967295UL | ((((safe_sub_func_uint32_t_u_u((safe_unary_minus_func_int16_t_s((safe_unary_minus_func_int32_t_s(((safe_rshift_func_uint16_t_u_u(p_2242->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2242->tid, 35))], l_764)) || FAKE_DIVERGE(p_2242->local_2_offset, get_local_id(2), 10)))))), p_84)) | l_765) ^ l_724) , p_84)) , p_85))) > l_766) || 0L) != p_2242->g_427[3].f2)), 0x17L)), p_2242->g_164)), 0x3AL)) , l_765) > p_84))) == (-7L)) ^ 1UL))) & FAKE_DIVERGE(p_2242->group_1_offset, get_group_id(1), 10));
                        l_783--;
                    }
                    (*l_811) |= ((((l_786 != ((((*l_693) ^= (((safe_div_func_uint16_t_u_u(p_2242->g_790[2][0], p_2242->g_203[1])) > ((safe_mul_func_uint8_t_u_u((safe_lshift_func_int8_t_s_u(((((p_2242->g_210 = (safe_div_func_int8_t_s_s((safe_div_func_int32_t_s_s(((safe_mul_func_int8_t_s_s(p_2242->g_683[1][4][3].f2, (l_781 |= (*l_694)))) != (safe_sub_func_int16_t_s_s((l_777 <= p_85), ((*l_787) ^= (l_773 ^ (safe_lshift_func_int8_t_s_u(((safe_div_func_uint8_t_u_u(l_776, p_83)) , 0L), l_774[3][5]))))))), (*p_2242->g_360))), 1UL))) && 2L) && 0x073EFDD4L) , l_743[2][1][0]), p_85)), p_84)) | 0x4B0FL)) | l_807)) | GROUP_DIVERGE(2, 1)) , l_808[0][5][7])) , 18446744073709551615UL) & p_85) , l_809[0]);
                }
                else
                { /* block id: 431 */
                    int32_t l_827 = 1L;
                    int32_t l_828 = (-1L);
                    int32_t l_831[7][3] = {{0x6271BC16L,0x6271BC16L,0x6271BC16L},{0x6271BC16L,0x6271BC16L,0x6271BC16L},{0x6271BC16L,0x6271BC16L,0x6271BC16L},{0x6271BC16L,0x6271BC16L,0x6271BC16L},{0x6271BC16L,0x6271BC16L,0x6271BC16L},{0x6271BC16L,0x6271BC16L,0x6271BC16L},{0x6271BC16L,0x6271BC16L,0x6271BC16L}};
                    int16_t *l_876 = &p_2242->g_210;
                    int i, j;
                    for (p_2242->g_31 = 0; (p_2242->g_31 <= 8); p_2242->g_31 += 1)
                    { /* block id: 434 */
                        int8_t l_822 = 0x77L;
                        l_831[5][0] ^= ((((*l_693) = ((void*)0 == &p_2242->g_48)) ^ (safe_div_func_int16_t_s_s((safe_add_func_uint16_t_u_u((safe_lshift_func_int16_t_s_s(p_2242->g_298[0][1][0], (safe_mul_func_int16_t_s_s(p_2242->g_160, (l_822 |= (p_2242->g_821 |= (p_2242->g_820[1][1] |= p_2242->g_210))))))), (p_2242->g_823 |= p_83))), (p_2242->g_830 = (p_2242->g_829 = (safe_mod_func_uint64_t_u_u((p_2242->g_596[1].f0 > (l_828 = (((((void*)0 != l_826) , l_743[1][1][0]) || l_827) <= p_85))), p_2242->g_636.f0))))))) != p_85);
                    }
                    for (p_2242->g_686.f2 = (-28); (p_2242->g_686.f2 != (-12)); p_2242->g_686.f2 = safe_add_func_int16_t_s_s(p_2242->g_686.f2, 7))
                    { /* block id: 447 */
                        int64_t *l_855[2];
                        struct S0 **l_857 = &p_2242->g_273;
                        int32_t **l_859[6];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_855[i] = (void*)0;
                        for (i = 0; i < 6; i++)
                            l_859[i] = &p_2242->g_403;
                        (1 + 1);
                    }
                    if (((&p_2242->g_829 != (p_2242->g_873 = l_826)) , (safe_mul_func_int8_t_s_s(((((l_877 = ((*l_786) = l_876)) == (void*)0) || l_878) , (((*l_691) = (((p_2242->g_281[1].f0 , (safe_rshift_func_uint16_t_u_u(((0x1A45E353E6B1986AL | l_777) | 0x2F1F05B3C3D537E6L), 13))) , 0xE7L) , p_83)) & FAKE_DIVERGE(p_2242->local_2_offset, get_local_id(2), 10))), l_807))))
                    { /* block id: 461 */
                        return p_2242->g_398.f1;
                    }
                    else
                    { /* block id: 463 */
                        return p_83;
                    }
                }
                (*l_694) ^= (p_83 , (p_2242->g_881 , (((safe_mod_func_int64_t_s_s(((-1L) == (safe_mod_func_uint32_t_u_u(p_84, (l_777 ^= (((*p_2242->g_105) , ((((0L == ((*l_725) = ((safe_div_func_int64_t_s_s((((safe_div_func_int8_t_s_s((p_83 == (FAKE_DIVERGE(p_2242->local_2_offset, get_local_id(2), 10) <= (safe_sub_func_int32_t_s_s(l_724, ((p_85 , (void*)0) == l_892))))), l_724)) < p_2242->g_396.f2) , (-1L)), 0x86AEAD137FEB6A72L)) , 0x5747E5B5D551EF8DL))) > p_84) || 0x48C980CBL) , p_85)) == p_84))))), p_2242->g_6[3])) >= p_84) && p_83)));
            }
            l_893 = &p_84;
        }
        else
        { /* block id: 472 */
            uint64_t l_895[3][1][10];
            uint64_t l_899 = 1UL;
            int32_t l_902 = 0x09FD3B2FL;
            int i, j, k;
            for (i = 0; i < 3; i++)
            {
                for (j = 0; j < 1; j++)
                {
                    for (k = 0; k < 10; k++)
                        l_895[i][j][k] = 18446744073709551610UL;
                }
            }
            (*l_694) = (l_902 = ((l_894[1][0] ^ (l_895[2][0][0] | (safe_sub_func_int64_t_s_s(p_84, (safe_unary_minus_func_int64_t_s(l_899)))))) == (safe_add_func_int16_t_s_s((!p_2242->g_199.f1), (0xDFA284C4L <= ((*p_2242->g_873) , p_85))))));
        }
    }
    else
    { /* block id: 476 */
        uint8_t l_903[7] = {0x27L,0x27L,0x27L,0x27L,0x27L,0x27L,0x27L};
        int i;
        return l_903[3];
    }
    for (p_2242->g_31 = 0; (p_2242->g_31 <= (-9)); p_2242->g_31--)
    { /* block id: 481 */
        uint16_t l_913 = 65527UL;
        int8_t *l_925 = &p_2242->g_260;
        int32_t l_927 = (-8L);
        int32_t l_983[7][8] = {{0x3F2DDB99L,0x78A951C2L,(-8L),0x3E4B6121L,0x78A951C2L,0x3E4B6121L,(-8L),0x78A951C2L},{0x3F2DDB99L,0x78A951C2L,(-8L),0x3E4B6121L,0x78A951C2L,0x3E4B6121L,(-8L),0x78A951C2L},{0x3F2DDB99L,0x78A951C2L,(-8L),0x3E4B6121L,0x78A951C2L,0x3E4B6121L,(-8L),0x78A951C2L},{0x3F2DDB99L,0x78A951C2L,(-8L),0x3E4B6121L,0x78A951C2L,0x3E4B6121L,(-8L),0x78A951C2L},{0x3F2DDB99L,0x78A951C2L,(-8L),0x3E4B6121L,0x78A951C2L,0x3E4B6121L,(-8L),0x78A951C2L},{0x3F2DDB99L,0x78A951C2L,(-8L),0x3E4B6121L,0x78A951C2L,0x3E4B6121L,(-8L),0x78A951C2L},{0x3F2DDB99L,0x78A951C2L,(-8L),0x3E4B6121L,0x78A951C2L,0x3E4B6121L,(-8L),0x78A951C2L}};
        uint32_t l_1040 = 4UL;
        union U1 *l_1079 = (void*)0;
        int32_t **l_1137 = &l_694;
        int32_t ***l_1136 = &l_1137;
        uint32_t **l_1147[10][10] = {{&p_2242->g_362,&p_2242->g_362,&p_2242->g_360,&p_2242->g_362,&p_2242->g_362,&p_2242->g_362,&p_2242->g_362,&p_2242->g_360,&p_2242->g_362,&p_2242->g_362},{&p_2242->g_362,&p_2242->g_362,&p_2242->g_360,&p_2242->g_362,&p_2242->g_362,&p_2242->g_362,&p_2242->g_362,&p_2242->g_360,&p_2242->g_362,&p_2242->g_362},{&p_2242->g_362,&p_2242->g_362,&p_2242->g_360,&p_2242->g_362,&p_2242->g_362,&p_2242->g_362,&p_2242->g_362,&p_2242->g_360,&p_2242->g_362,&p_2242->g_362},{&p_2242->g_362,&p_2242->g_362,&p_2242->g_360,&p_2242->g_362,&p_2242->g_362,&p_2242->g_362,&p_2242->g_362,&p_2242->g_360,&p_2242->g_362,&p_2242->g_362},{&p_2242->g_362,&p_2242->g_362,&p_2242->g_360,&p_2242->g_362,&p_2242->g_362,&p_2242->g_362,&p_2242->g_362,&p_2242->g_360,&p_2242->g_362,&p_2242->g_362},{&p_2242->g_362,&p_2242->g_362,&p_2242->g_360,&p_2242->g_362,&p_2242->g_362,&p_2242->g_362,&p_2242->g_362,&p_2242->g_360,&p_2242->g_362,&p_2242->g_362},{&p_2242->g_362,&p_2242->g_362,&p_2242->g_360,&p_2242->g_362,&p_2242->g_362,&p_2242->g_362,&p_2242->g_362,&p_2242->g_360,&p_2242->g_362,&p_2242->g_362},{&p_2242->g_362,&p_2242->g_362,&p_2242->g_360,&p_2242->g_362,&p_2242->g_362,&p_2242->g_362,&p_2242->g_362,&p_2242->g_360,&p_2242->g_362,&p_2242->g_362},{&p_2242->g_362,&p_2242->g_362,&p_2242->g_360,&p_2242->g_362,&p_2242->g_362,&p_2242->g_362,&p_2242->g_362,&p_2242->g_360,&p_2242->g_362,&p_2242->g_362},{&p_2242->g_362,&p_2242->g_362,&p_2242->g_360,&p_2242->g_362,&p_2242->g_362,&p_2242->g_362,&p_2242->g_362,&p_2242->g_360,&p_2242->g_362,&p_2242->g_362}};
        uint16_t ***l_1148 = (void*)0;
        int32_t l_1180 = 1L;
        uint32_t l_1191 = 0x1A45CDA1L;
        int8_t l_1218 = 7L;
        int8_t **l_1237 = &l_1064;
        int i, j;
        (1 + 1);
    }
    return p_83;
}


/* ------------------------------------------ */
/* 
 * reads : p_2242->g_48 p_2242->g_10 p_2242->g_328 p_2242->g_209 p_2242->g_274.f0 p_2242->g_104.f0 p_2242->g_260 p_2242->g_46.f0 p_2242->g_5 p_2242->g_2 p_2242->g_160 p_2242->g_360 p_2242->g_362 p_2242->g_371 p_2242->g_379 p_2242->g_210 p_2242->g_46 p_2242->g_533 p_2242->g_178.f1 p_2242->g_274.f2 p_2242->g_164 p_2242->g_398.f1 p_2242->g_596 p_2242->g_609 p_2242->g_178.f2 p_2242->g_comm_values p_2242->g_6 p_2242->g_203 p_2242->g_167 p_2242->g_618 p_2242->g_626 p_2242->g_636 p_2242->g_36 p_2242->g_396.f2 p_2242->g_659 p_2242->g_681 p_2242->g_683 p_2242->g_273 p_2242->g_686
 * writes: p_2242->g_48 p_2242->g_209 p_2242->g_10 p_2242->g_274.f0 p_2242->g_104.f0 p_2242->g_2 p_2242->g_160 p_2242->g_32.f0 p_2242->g_360 p_2242->g_362 p_2242->g_203 p_2242->g_31 p_2242->g_210 p_2242->g_260 p_2242->g_533 p_2242->g_576 p_2242->g_274.f2 p_2242->g_164 p_2242->l_comm_values p_2242->g_comm_values p_2242->g_167 p_2242->g_46.f0 p_2242->g_398.f1 p_2242->g_596 p_2242->g_682 p_2242->g_274
 */
uint8_t  func_86(int32_t  p_87, struct S2 * p_2242)
{ /* block id: 140 */
    int32_t *l_303 = &p_2242->g_209[0][5][5];
    int32_t *l_304 = &p_2242->g_209[0][5][5];
    int32_t *l_305[10][10][2] = {{{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0}},{{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0}},{{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0}},{{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0}},{{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0}},{{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0}},{{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0}},{{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0}},{{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0}},{{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0},{&p_2242->g_10,(void*)0}}};
    uint8_t l_306[5];
    int32_t **l_313 = &l_303;
    int64_t l_320[8][6] = {{9L,9L,9L,9L,9L,9L},{9L,9L,9L,9L,9L,9L},{9L,9L,9L,9L,9L,9L},{9L,9L,9L,9L,9L,9L},{9L,9L,9L,9L,9L,9L},{9L,9L,9L,9L,9L,9L},{9L,9L,9L,9L,9L,9L},{9L,9L,9L,9L,9L,9L}};
    int8_t l_327[3][7] = {{0x41L,0x41L,0x41L,0x41L,0x41L,0x41L,0x41L},{0x41L,0x41L,0x41L,0x41L,0x41L,0x41L,0x41L},{0x41L,0x41L,0x41L,0x41L,0x41L,0x41L,0x41L}};
    int32_t l_329 = (-1L);
    uint16_t *l_330 = &p_2242->g_274.f0;
    uint16_t *l_331 = &p_2242->g_104.f0;
    uint32_t l_332[9] = {0x561D38F8L,0x561D38F8L,0x561D38F8L,0x561D38F8L,0x561D38F8L,0x561D38F8L,0x561D38F8L,0x561D38F8L,0x561D38F8L};
    int8_t *l_347[7][4][7] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2242->g_167,&p_2242->g_164},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2242->g_167,&p_2242->g_164},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2242->g_167,&p_2242->g_164},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2242->g_167,&p_2242->g_164}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2242->g_167,&p_2242->g_164},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2242->g_167,&p_2242->g_164},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2242->g_167,&p_2242->g_164},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2242->g_167,&p_2242->g_164}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2242->g_167,&p_2242->g_164},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2242->g_167,&p_2242->g_164},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2242->g_167,&p_2242->g_164},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2242->g_167,&p_2242->g_164}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2242->g_167,&p_2242->g_164},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2242->g_167,&p_2242->g_164},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2242->g_167,&p_2242->g_164},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2242->g_167,&p_2242->g_164}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2242->g_167,&p_2242->g_164},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2242->g_167,&p_2242->g_164},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2242->g_167,&p_2242->g_164},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2242->g_167,&p_2242->g_164}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2242->g_167,&p_2242->g_164},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2242->g_167,&p_2242->g_164},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2242->g_167,&p_2242->g_164},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2242->g_167,&p_2242->g_164}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2242->g_167,&p_2242->g_164},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2242->g_167,&p_2242->g_164},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2242->g_167,&p_2242->g_164},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_2242->g_167,&p_2242->g_164}}};
    int8_t **l_346 = &l_347[5][1][3];
    int64_t l_349 = 0x33BE1526C651A835L;
    uint16_t l_476[9] = {0x9A74L,0x9A74L,0x9A74L,0x9A74L,0x9A74L,0x9A74L,0x9A74L,0x9A74L,0x9A74L};
    uint16_t l_549 = 0xEC34L;
    int64_t l_611[6][7][5] = {{{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)}},{{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)}},{{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)}},{{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)}},{{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)}},{{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)},{1L,(-1L),0x24F0BE1F96057AEAL,0x24F0BE1F96057AEAL,(-1L)}}};
    uint8_t **l_619 = (void*)0;
    uint32_t l_687 = 4294967295UL;
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_306[i] = 253UL;
    l_306[0]++;
    for (p_2242->g_48 = 0; (p_2242->g_48 > 17); ++p_2242->g_48)
    { /* block id: 144 */
        (*l_303) = (safe_lshift_func_uint8_t_u_s(p_87, 4));
        for (p_2242->g_10 = 0; (p_2242->g_10 <= 8); p_2242->g_10 += 1)
        { /* block id: 148 */
            return p_87;
        }
    }
    (*l_313) = l_303;
    if ((safe_sub_func_uint64_t_u_u((safe_rshift_func_uint16_t_u_u(65532UL, (safe_mod_func_int64_t_s_s((l_320[0][4] != (safe_rshift_func_int8_t_s_u((+(safe_mul_func_uint8_t_u_u((safe_sub_func_uint16_t_u_u(65534UL, p_87)), (l_327[0][5] <= (p_87 && ((((*l_331) |= ((*l_330) |= ((((p_2242->g_328 , p_87) == ((*l_303) &= l_329)) || p_87) ^ (-1L)))) != l_332[6]) != (-8L))))))), GROUP_DIVERGE(0, 1)))), p_87)))), p_2242->g_260)))
    { /* block id: 156 */
        int32_t *l_345 = &p_2242->g_48;
        int32_t l_348 = (-1L);
        uint8_t l_352 = 0x81L;
        uint8_t l_353[5][9] = {{0xAAL,0x60L,0xBEL,7UL,0x1DL,0xAAL,7UL,251UL,7UL},{0xAAL,0x60L,0xBEL,7UL,0x1DL,0xAAL,7UL,251UL,7UL},{0xAAL,0x60L,0xBEL,7UL,0x1DL,0xAAL,7UL,251UL,7UL},{0xAAL,0x60L,0xBEL,7UL,0x1DL,0xAAL,7UL,251UL,7UL},{0xAAL,0x60L,0xBEL,7UL,0x1DL,0xAAL,7UL,251UL,7UL}};
        int i, j;
        p_2242->g_2 |= (safe_lshift_func_int16_t_s_u((safe_mod_func_uint64_t_u_u((safe_div_func_int8_t_s_s((safe_rshift_func_int8_t_s_s((safe_add_func_int8_t_s_s(p_87, (((safe_lshift_func_uint8_t_u_u((((p_87 < ((void*)0 != l_345)) >= (0x2D13L & (((*l_304) & ((((&p_2242->g_37 == (((void*)0 == &p_2242->g_203[8]) , l_346)) || 4UL) & l_348) < l_349)) != p_2242->g_46.f0))) > (-2L)), 7)) == p_87) < p_2242->g_10))), p_87)), p_87)), p_2242->g_5)), 0));
        for (p_2242->g_104.f0 = 0; (p_2242->g_104.f0 > 56); ++p_2242->g_104.f0)
        { /* block id: 160 */
            int16_t l_369 = (-8L);
            int32_t l_370 = 0x36009ED5L;
            struct S0 *l_372 = &p_2242->g_274;
            uint32_t **l_380[9][10][2] = {{{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0}},{{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0}},{{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0}},{{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0}},{{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0}},{{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0}},{{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0}},{{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0}},{{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0},{&p_2242->g_362,(void*)0}}};
            int16_t *l_388 = &l_369;
            int16_t **l_387 = &l_388;
            int i, j, k;
            if (l_352)
                break;
            for (p_2242->g_160 = 0; (p_2242->g_160 <= 4); p_2242->g_160 += 1)
            { /* block id: 164 */
                uint16_t l_358[3];
                uint32_t *l_359 = &p_2242->g_32[0].f0;
                uint32_t **l_361 = &p_2242->g_360;
                uint32_t **l_363 = &p_2242->g_362;
                uint8_t *l_364 = &p_2242->g_203[2];
                uint8_t *l_366 = (void*)0;
                uint8_t **l_365 = &l_366;
                uint8_t *l_368 = &l_353[0][5];
                uint8_t **l_367 = &l_368;
                struct S0 *l_373 = (void*)0;
                int32_t l_381 = 0x3F30F0EEL;
                int16_t *l_382 = &p_2242->g_31;
                int16_t *l_383 = &p_2242->g_210;
                int32_t l_384 = 0x7CE88458L;
                int i;
                for (i = 0; i < 3; i++)
                    l_358[i] = 6UL;
                l_348 = (p_87 && (l_370 = (((l_353[0][5] >= ((*l_303) = ((+(((((((((~((((l_369 = ((safe_rshift_func_uint8_t_u_s(((*l_364) = (((*l_359) = (safe_mod_func_int64_t_s_s((l_353[1][3] == l_352), (l_353[0][5] && l_358[1])))) < (((*l_361) = p_2242->g_360) != ((*l_363) = p_2242->g_362)))), (((*l_367) = ((*l_365) = &p_2242->g_36)) != &l_353[3][2]))) >= l_348)) > l_370) <= 0x77L) , l_358[1])) , &p_2242->g_203[6]) != (void*)0) && 18446744073709551615UL) ^ p_87) >= p_87) >= p_2242->g_371) , 0x08L) | 0x56L)) , p_87))) & 0x62L) == 0x4808L)));
                l_348 |= (p_87 , ((l_373 = l_372) == (void*)0));
                l_370 &= (-1L);
                l_384 |= (((p_2242->g_10 ^= (safe_div_func_int16_t_s_s(((*l_383) &= ((*l_382) = (safe_add_func_int64_t_s_s((((l_381 = (safe_unary_minus_func_uint32_t_u((p_2242->g_379 , (((((l_353[2][0] | ((void*)0 != &p_2242->g_36)) , l_369) , ((-1L) | (-2L))) , &p_2242->g_362) == l_380[8][2][1]))))) & (*p_2242->g_360)) & l_369), 0xF7941427D27B2186L)))), (*l_304)))) && 0x581D241AL) , 4L);
            }
            (*l_303) = ((((p_87 ^ 1L) >= (l_352 && 0x4CECCE27L)) && 0x34F8EBA35B8AC447L) & (safe_lshift_func_uint8_t_u_u((+(0x9F6AL < (((*l_387) = &p_2242->g_210) != (void*)0))), 4)));
        }
    }
    else
    { /* block id: 187 */
        int32_t *l_389 = &p_2242->g_209[1][4][5];
        int32_t *l_395 = &p_2242->g_48;
        int32_t **l_394 = &l_395;
        int32_t l_406 = 0L;
        uint16_t *l_414 = &p_2242->g_104.f0;
        uint16_t *l_454 = &p_2242->g_160;
        int64_t l_456 = (-1L);
        int32_t l_477 = 0L;
        int32_t l_481 = 0x5FA418E9L;
        int32_t l_484[3][4][3] = {{{0x79ACCA5FL,0x79ACCA5FL,0x79ACCA5FL},{0x79ACCA5FL,0x79ACCA5FL,0x79ACCA5FL},{0x79ACCA5FL,0x79ACCA5FL,0x79ACCA5FL},{0x79ACCA5FL,0x79ACCA5FL,0x79ACCA5FL}},{{0x79ACCA5FL,0x79ACCA5FL,0x79ACCA5FL},{0x79ACCA5FL,0x79ACCA5FL,0x79ACCA5FL},{0x79ACCA5FL,0x79ACCA5FL,0x79ACCA5FL},{0x79ACCA5FL,0x79ACCA5FL,0x79ACCA5FL}},{{0x79ACCA5FL,0x79ACCA5FL,0x79ACCA5FL},{0x79ACCA5FL,0x79ACCA5FL,0x79ACCA5FL},{0x79ACCA5FL,0x79ACCA5FL,0x79ACCA5FL},{0x79ACCA5FL,0x79ACCA5FL,0x79ACCA5FL}}};
        uint16_t *l_565 = &p_2242->g_160;
        int8_t *l_593[4];
        int64_t *l_610[10][1] = {{&p_2242->g_104.f2},{&p_2242->g_104.f2},{&p_2242->g_104.f2},{&p_2242->g_104.f2},{&p_2242->g_104.f2},{&p_2242->g_104.f2},{&p_2242->g_104.f2},{&p_2242->g_104.f2},{&p_2242->g_104.f2},{&p_2242->g_104.f2}};
        uint8_t *l_612 = &p_2242->g_203[6];
        uint16_t **l_630 = &l_454;
        uint16_t ***l_629 = &l_630;
        uint16_t l_652[7][7] = {{65533UL,0x7E77L,0xC41EL,0x0A21L,0xC41EL,0x7E77L,65533UL},{65533UL,0x7E77L,0xC41EL,0x0A21L,0xC41EL,0x7E77L,65533UL},{65533UL,0x7E77L,0xC41EL,0x0A21L,0xC41EL,0x7E77L,65533UL},{65533UL,0x7E77L,0xC41EL,0x0A21L,0xC41EL,0x7E77L,65533UL},{65533UL,0x7E77L,0xC41EL,0x0A21L,0xC41EL,0x7E77L,65533UL},{65533UL,0x7E77L,0xC41EL,0x0A21L,0xC41EL,0x7E77L,65533UL},{65533UL,0x7E77L,0xC41EL,0x0A21L,0xC41EL,0x7E77L,65533UL}};
        uint32_t l_680[4] = {4294967289UL,4294967289UL,4294967289UL,4294967289UL};
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_593[i] = (void*)0;
        if (((*l_304) = ((void*)0 == l_389)))
        { /* block id: 189 */
            uint16_t *l_413[9][4] = {{(void*)0,(void*)0,&p_2242->g_274.f0,&p_2242->g_160},{(void*)0,(void*)0,&p_2242->g_274.f0,&p_2242->g_160},{(void*)0,(void*)0,&p_2242->g_274.f0,&p_2242->g_160},{(void*)0,(void*)0,&p_2242->g_274.f0,&p_2242->g_160},{(void*)0,(void*)0,&p_2242->g_274.f0,&p_2242->g_160},{(void*)0,(void*)0,&p_2242->g_274.f0,&p_2242->g_160},{(void*)0,(void*)0,&p_2242->g_274.f0,&p_2242->g_160},{(void*)0,(void*)0,&p_2242->g_274.f0,&p_2242->g_160},{(void*)0,(void*)0,&p_2242->g_274.f0,&p_2242->g_160}};
            int32_t l_424 = 0x4B9B603DL;
            uint32_t l_434 = 4294967291UL;
            int32_t l_483 = (-10L);
            int32_t l_494 = (-2L);
            int32_t l_498 = 0x64CBC1B5L;
            int32_t l_504 = 0x003AF015L;
            int32_t l_506 = 0x59AC7937L;
            int8_t *l_550 = &l_327[2][5];
            uint32_t **l_571[10][6] = {{&p_2242->g_360,&p_2242->g_360,&p_2242->g_362,&p_2242->g_362,&p_2242->g_360,&p_2242->g_362},{&p_2242->g_360,&p_2242->g_360,&p_2242->g_362,&p_2242->g_362,&p_2242->g_360,&p_2242->g_362},{&p_2242->g_360,&p_2242->g_360,&p_2242->g_362,&p_2242->g_362,&p_2242->g_360,&p_2242->g_362},{&p_2242->g_360,&p_2242->g_360,&p_2242->g_362,&p_2242->g_362,&p_2242->g_360,&p_2242->g_362},{&p_2242->g_360,&p_2242->g_360,&p_2242->g_362,&p_2242->g_362,&p_2242->g_360,&p_2242->g_362},{&p_2242->g_360,&p_2242->g_360,&p_2242->g_362,&p_2242->g_362,&p_2242->g_360,&p_2242->g_362},{&p_2242->g_360,&p_2242->g_360,&p_2242->g_362,&p_2242->g_362,&p_2242->g_360,&p_2242->g_362},{&p_2242->g_360,&p_2242->g_360,&p_2242->g_362,&p_2242->g_362,&p_2242->g_360,&p_2242->g_362},{&p_2242->g_360,&p_2242->g_360,&p_2242->g_362,&p_2242->g_362,&p_2242->g_360,&p_2242->g_362},{&p_2242->g_360,&p_2242->g_360,&p_2242->g_362,&p_2242->g_362,&p_2242->g_360,&p_2242->g_362}};
            int8_t l_591[6][9] = {{0x43L,(-1L),0L,0x09L,0L,(-1L),0x43L,(-1L),1L},{0x43L,(-1L),0L,0x09L,0L,(-1L),0x43L,(-1L),1L},{0x43L,(-1L),0L,0x09L,0L,(-1L),0x43L,(-1L),1L},{0x43L,(-1L),0L,0x09L,0L,(-1L),0x43L,(-1L),1L},{0x43L,(-1L),0L,0x09L,0L,(-1L),0x43L,(-1L),1L},{0x43L,(-1L),0L,0x09L,0L,(-1L),0x43L,(-1L),1L}};
            int8_t *l_594 = &p_2242->g_164;
            int i, j;
            for (p_2242->g_260 = 0; (p_2242->g_260 <= 2); p_2242->g_260 += 1)
            { /* block id: 192 */
                uint16_t l_390 = 65530UL;
                int32_t **l_393 = (void*)0;
                int8_t *l_404 = &p_2242->g_260;
                uint32_t *l_457[10] = {&p_2242->g_46.f0,&p_2242->g_32[0].f0,&p_2242->g_46.f0,&p_2242->g_46.f0,&p_2242->g_32[0].f0,&p_2242->g_46.f0,&p_2242->g_46.f0,&p_2242->g_32[0].f0,&p_2242->g_46.f0,&p_2242->g_46.f0};
                uint8_t l_472 = 0x9CL;
                int32_t l_478 = 9L;
                int32_t l_479 = 0x3F7724BCL;
                int32_t l_486 = 1L;
                int32_t l_488 = 0x351F3285L;
                int32_t l_489 = 0x468F01BCL;
                int32_t l_493 = 0x41FD667CL;
                int32_t l_496 = 0x3C91C990L;
                int32_t l_500 = 1L;
                int32_t l_505 = 0x64E43619L;
                uint32_t l_507 = 0x992ADBF4L;
                int16_t *l_531 = &p_2242->g_31;
                uint64_t *l_532 = &p_2242->g_533;
                int i;
                (1 + 1);
            }
            for (l_494 = (-23); (l_494 > (-1)); ++l_494)
            { /* block id: 288 */
                int8_t l_589 = (-8L);
                int32_t l_595 = 0x6310FB81L;
                (*l_313) = (p_2242->g_46 , (void*)0);
                for (p_2242->g_533 = 0; (p_2242->g_533 <= 3); p_2242->g_533 += 1)
                { /* block id: 292 */
                    int i;
                    l_389 = (*l_313);
                    for (l_498 = 0; (l_498 <= 4); l_498 += 1)
                    { /* block id: 296 */
                        uint32_t **l_569[7] = {&p_2242->g_362,&p_2242->g_360,&p_2242->g_362,&p_2242->g_362,&p_2242->g_360,&p_2242->g_362,&p_2242->g_362};
                        uint32_t ***l_570 = &l_569[2];
                        uint32_t ***l_572 = &l_571[1][2];
                        uint64_t *l_575 = &p_2242->g_576;
                        uint8_t *l_590[3];
                        int32_t l_592 = 3L;
                        int i, j, k;
                        for (i = 0; i < 3; i++)
                            l_590[i] = &l_306[0];
                        l_592 = (l_424 &= ((p_2242->g_209[p_2242->g_533][p_2242->g_533][(p_2242->g_533 + 2)] = p_2242->g_209[p_2242->g_533][p_2242->g_533][(p_2242->g_533 + 2)]) > (((((*l_570) = l_569[2]) != ((*l_572) = l_571[4][1])) != (p_2242->g_203[6] = ((safe_mod_func_int64_t_s_s(p_87, ((*l_575) = p_2242->g_178.f1))) || ((GROUP_DIVERGE(1, 1) < p_87) > ((safe_sub_func_int16_t_s_s((safe_lshift_func_uint8_t_u_s(((l_504 |= 0x89L) ^ (safe_mul_func_int8_t_s_s((safe_div_func_int64_t_s_s((safe_rshift_func_uint16_t_u_u((safe_add_func_int16_t_s_s((((*l_575) = ((l_589 && l_434) , p_87)) && p_2242->g_210), 3L)), p_87)), 0x0242BD374DB7582CL)), p_87))), p_87)), 6UL)) & 0x6E98E382L))))) != l_591[5][6])));
                    }
                }
                l_595 |= ((*l_304) ^= (l_593[3] != l_594));
            }
        }
        else
        { /* block id: 311 */
            for (p_2242->g_274.f2 = 0; (p_2242->g_274.f2 <= 4); p_2242->g_274.f2 += 1)
            { /* block id: 314 */
                (*l_313) = (*l_313);
                for (p_2242->g_164 = 3; (p_2242->g_164 >= 0); p_2242->g_164 -= 1)
                { /* block id: 318 */
                    return p_2242->g_398.f1;
                }
            }
        }
        if ((p_2242->g_596[1] , (((safe_mul_func_uint8_t_u_u((+((~((l_389 != &l_332[6]) || (-10L))) , (safe_lshift_func_int8_t_s_s((p_87 <= ((*l_612) ^= (((safe_div_func_uint8_t_u_u((((p_2242->g_comm_values[p_2242->tid] &= (p_2242->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2242->tid, 35))] = (safe_div_func_int8_t_s_s(l_477, ((safe_div_func_int16_t_s_s(((FAKE_DIVERGE(p_2242->local_0_offset, get_local_id(0), 10) != (safe_sub_func_uint8_t_u_u(p_87, (255UL > (p_2242->g_609 , p_87))))) , p_2242->g_178.f2), 6UL)) && p_87))))) <= 0x24B8767625EE5BBDL) == p_2242->g_6[3]), p_2242->g_274.f2)) || 7UL) , l_611[2][3][4]))), 6)))), GROUP_DIVERGE(1, 1))) | p_87) <= 0xD913L)))
        { /* block id: 326 */
            int64_t *l_627 = &l_611[2][3][4];
            int32_t l_635 = 0x12675301L;
            int16_t *l_646 = (void*)0;
            int16_t *l_647 = &p_2242->g_31;
            int32_t l_657 = 0x3440E055L;
            int32_t *l_658[7][8][4] = {{{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]}},{{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]}},{{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]}},{{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]}},{{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]}},{{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]}},{{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]},{&p_2242->g_209[0][5][5],&p_2242->g_10,&l_484[0][1][0],&l_484[0][1][0]}}};
            int i, j, k;
            for (p_2242->g_167 = 0; (p_2242->g_167 >= (-3)); p_2242->g_167 = safe_sub_func_int32_t_s_s(p_2242->g_167, 9))
            { /* block id: 329 */
                int16_t l_617[2];
                int i;
                for (i = 0; i < 2; i++)
                    l_617[i] = 0L;
                for (l_329 = (-11); (l_329 < 26); l_329++)
                { /* block id: 332 */
                    int16_t l_620 = 6L;
                    if ((l_617[0] && ((p_2242->g_618 , l_619) != &l_612)))
                    { /* block id: 333 */
                        (*l_313) = (*l_313);
                        if (l_620)
                            continue;
                        (*l_304) |= ((safe_div_func_uint64_t_u_u(p_2242->g_6[3], (~p_2242->g_371))) == 0L);
                        return p_87;
                    }
                    else
                    { /* block id: 338 */
                        int32_t *l_623 = &p_2242->g_6[4];
                        (*l_313) = l_623;
                        (*l_313) = &l_484[1][3][2];
                    }
                    for (p_2242->g_260 = 10; (p_2242->g_260 == (-22)); p_2242->g_260 = safe_sub_func_uint8_t_u_u(p_2242->g_260, 5))
                    { /* block id: 344 */
                        return p_87;
                    }
                    for (p_2242->g_48 = 8; (p_2242->g_48 >= 0); p_2242->g_48 -= 1)
                    { /* block id: 349 */
                        (*l_313) = (*l_313);
                    }
                    for (p_2242->g_160 = 0; (p_2242->g_160 <= 9); p_2242->g_160 += 1)
                    { /* block id: 354 */
                        int64_t *l_628 = &l_349;
                        int32_t l_637[1];
                        int i;
                        for (i = 0; i < 1; i++)
                            l_637[i] = 0x1E6C19BCL;
                        l_637[0] = (((p_2242->g_626[5][4][1] , ((l_627 = (l_620 , l_627)) == l_628)) , ((((l_629 != (void*)0) && ((*p_2242->g_360) = 4294967295UL)) , (safe_mod_func_uint64_t_u_u(p_2242->g_274.f0, (safe_sub_func_int64_t_s_s((((**l_313) = (((((((((0x1AL <= 0L) < 8UL) | p_87) != p_87) == l_635) != l_617[0]) , p_2242->g_636) , (void*)0) != &l_332[6])) | (*p_2242->g_360)), p_2242->g_36))))) < 4294967293UL)) < p_2242->g_160);
                    }
                }
                for (p_2242->g_398.f1 = 0; p_2242->g_398.f1 < 2; p_2242->g_398.f1 += 1)
                {
                    struct S0 tmp = {{0x05F7L,1UL,0x08F27A12A257E106L}};
                    p_2242->g_596[p_2242->g_398.f1] = tmp;
                }
            }
            l_635 = (safe_rshift_func_int8_t_s_u((safe_div_func_uint32_t_u_u((*p_2242->g_360), l_635)), ((((safe_mod_func_uint32_t_u_u((safe_lshift_func_int16_t_s_s(((*l_647) = (-1L)), (safe_mul_func_uint16_t_u_u(0x5685L, ((safe_lshift_func_uint16_t_u_s(l_652[4][4], (p_2242->g_210 = (((*l_612) = (safe_div_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_s((+(0L == (((l_657 ^= (+0x79L)) == p_87) , 65534UL))), l_635)), p_87))) ^ 0UL)))) & (-1L)))))), p_87)) <= p_2242->g_396.f2) , 8UL) , p_2242->g_371)));
            (*l_313) = l_658[6][1][2];
            for (p_2242->g_274.f2 = 0; (p_2242->g_274.f2 <= 3); p_2242->g_274.f2 += 1)
            { /* block id: 371 */
                uint8_t l_660 = 6UL;
                int32_t l_665[9] = {0L,1L,0L,0L,1L,0L,0L,1L,0L};
                uint8_t l_675 = 1UL;
                int i;
                (*l_304) = ((p_2242->g_659 , (((0xF1BEL && (p_87 ^ (0L || (p_2242->g_210 , (l_660 ^ 0xD74134E6L))))) ^ l_660) , &l_660)) != l_593[3]);
                for (l_660 = 0; (l_660 <= 3); l_660 += 1)
                { /* block id: 375 */
                    int32_t l_663 = 1L;
                    int32_t l_664 = 7L;
                    int32_t l_666 = 1L;
                    int32_t l_667 = 0x29C86795L;
                    int64_t l_668 = 1L;
                    int32_t l_669 = 1L;
                    int32_t l_670 = (-1L);
                    int32_t l_671 = 1L;
                    int32_t l_673 = (-10L);
                    int32_t l_674 = 0x337E33C2L;
                    (*l_313) = &l_484[0][1][0];
                    ++l_675;
                    (*l_303) = (safe_mul_func_uint16_t_u_u(((*l_629) == (void*)0), l_667));
                    (*l_304) &= l_680[1];
                    for (p_87 = 3; (p_87 >= 0); p_87 -= 1)
                    { /* block id: 382 */
                        int i, j, k;
                        return p_2242->g_209[p_87][(p_2242->g_274.f2 + 3)][(p_87 + 1)];
                    }
                }
            }
        }
        else
        { /* block id: 387 */
            p_2242->g_682 = p_2242->g_681;
            (*p_2242->g_273) = p_2242->g_683[1][4][3];
            for (p_2242->g_260 = 0; (p_2242->g_260 > 9); p_2242->g_260 = safe_add_func_uint16_t_u_u(p_2242->g_260, 9))
            { /* block id: 392 */
                (*p_2242->g_273) = p_2242->g_686;
            }
        }
        l_687 = 0x6064C58DL;
    }
    return p_87;
}


/* ------------------------------------------ */
/* 
 * reads : p_2242->g_104 p_2242->g_105 p_2242->g_10 p_2242->g_5 p_2242->g_32.f0 p_2242->g_36 p_2242->g_94 p_2242->g_6 p_2242->g_164 p_2242->g_95 p_2242->g_178 p_2242->g_180 p_2242->g_199 p_2242->g_203 p_2242->g_2 p_2242->g_223 p_2242->g_209 p_2242->g_210 p_2242->g_167 p_2242->g_260 p_2242->g_273 p_2242->g_281 p_2242->g_32 p_2242->g_296 p_2242->g_48
 * writes: p_2242->g_104 p_2242->g_48 p_2242->g_31 p_2242->g_32.f0 p_2242->g_160 p_2242->g_164 p_2242->g_167 p_2242->g_10 p_2242->g_178 p_2242->g_94 p_2242->g_203 p_2242->g_2 p_2242->g_260 p_2242->g_210
 */
int16_t  func_88(int8_t * p_89, struct S2 * p_2242)
{ /* block id: 35 */
    int32_t l_108 = 0x4AAA59CCL;
    int32_t l_121 = 0x79371019L;
    int32_t l_122 = 0L;
    int32_t l_123[8][9] = {{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}};
    uint64_t l_124 = 1UL;
    uint8_t l_135 = 0x6BL;
    uint64_t l_220[5];
    struct S0 *l_275 = (void*)0;
    uint16_t *l_293 = &p_2242->g_274.f0;
    int i, j;
    for (i = 0; i < 5; i++)
        l_220[i] = 18446744073709551612UL;
lbl_227:
    (*p_2242->g_105) = p_2242->g_104;
    for (p_2242->g_104.f0 = 0; (p_2242->g_104.f0 <= 34); p_2242->g_104.f0 = safe_add_func_uint32_t_u_u(p_2242->g_104.f0, 7))
    { /* block id: 39 */
        int32_t *l_109 = &p_2242->g_2;
        int32_t *l_110 = &p_2242->g_10;
        int32_t l_111 = (-4L);
        int32_t *l_112 = &l_111;
        int32_t *l_113 = &p_2242->g_10;
        int32_t *l_114 = &p_2242->g_10;
        int32_t l_115[3];
        int32_t *l_116 = &l_115[0];
        int32_t *l_117 = &l_111;
        int32_t *l_118 = &l_111;
        int32_t *l_119 = &p_2242->g_10;
        int32_t *l_120[5][7] = {{(void*)0,&p_2242->g_6[5],&l_111,&l_115[2],&p_2242->g_6[5],&l_115[2],&l_111},{(void*)0,&p_2242->g_6[5],&l_111,&l_115[2],&p_2242->g_6[5],&l_115[2],&l_111},{(void*)0,&p_2242->g_6[5],&l_111,&l_115[2],&p_2242->g_6[5],&l_115[2],&l_111},{(void*)0,&p_2242->g_6[5],&l_111,&l_115[2],&p_2242->g_6[5],&l_115[2],&l_111},{(void*)0,&p_2242->g_6[5],&l_111,&l_115[2],&p_2242->g_6[5],&l_115[2],&l_111}};
        uint8_t l_257[6] = {6UL,6UL,6UL,6UL,6UL,6UL};
        struct S0 *l_272 = (void*)0;
        int i, j;
        for (i = 0; i < 3; i++)
            l_115[i] = 0L;
        ++l_124;
        for (p_2242->g_48 = (-1); (p_2242->g_48 < (-11)); p_2242->g_48 = safe_sub_func_uint8_t_u_u(p_2242->g_48, 5))
        { /* block id: 43 */
            uint16_t l_140[1][10][5] = {{{0x7641L,0x7641L,0UL,0xC050L,65526UL},{0x7641L,0x7641L,0UL,0xC050L,65526UL},{0x7641L,0x7641L,0UL,0xC050L,65526UL},{0x7641L,0x7641L,0UL,0xC050L,65526UL},{0x7641L,0x7641L,0UL,0xC050L,65526UL},{0x7641L,0x7641L,0UL,0xC050L,65526UL},{0x7641L,0x7641L,0UL,0xC050L,65526UL},{0x7641L,0x7641L,0UL,0xC050L,65526UL},{0x7641L,0x7641L,0UL,0xC050L,65526UL},{0x7641L,0x7641L,0UL,0xC050L,65526UL}}};
            uint32_t *l_141 = &p_2242->g_32[0].f0;
            uint16_t *l_159 = &p_2242->g_160;
            int64_t *l_161 = &p_2242->g_104.f2;
            uint8_t l_162[5] = {0xCAL,0xCAL,0xCAL,0xCAL,0xCAL};
            int8_t *l_163 = &p_2242->g_164;
            int32_t l_165 = (-2L);
            int8_t *l_166 = &p_2242->g_167;
            uint32_t l_173 = 0x1C1F1543L;
            int32_t l_182 = (-6L);
            int64_t l_187 = (-1L);
            int32_t l_194[7][9][4] = {{{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L}},{{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L}},{{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L}},{{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L}},{{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L}},{{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L}},{{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L},{0x504C168BL,0x48E640C1L,0x1E0AF0EFL,6L}}};
            uint8_t l_195 = 0x5EL;
            uint16_t l_211 = 0xD4D0L;
            int i, j, k;
            if ((safe_mul_func_uint16_t_u_u((safe_add_func_int8_t_s_s((((*l_166) = (safe_mul_func_int16_t_s_s((p_2242->g_31 = l_135), (safe_lshift_func_int16_t_s_s((((*l_110) >= ((*l_117) = ((l_165 |= (((safe_rshift_func_uint16_t_u_s(l_135, 7)) || GROUP_DIVERGE(2, 1)) , ((!(l_140[0][7][3] >= ((*l_141) |= (~p_2242->g_5)))) != ((*l_163) ^= ((((void*)0 == &l_123[4][1]) > (safe_unary_minus_func_uint32_t_u((safe_lshift_func_uint8_t_u_u((((((((((*l_161) = ((l_140[0][7][3] ^ (safe_rshift_func_int8_t_s_u((((safe_sub_func_int64_t_s_s((safe_add_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((((safe_mul_func_int8_t_s_s((safe_mul_func_int16_t_s_s(((((*l_159) = (~(*l_114))) & l_140[0][5][4]) , l_135), p_2242->g_36)), 2L)) < p_2242->g_10) , l_122), GROUP_DIVERGE(0, 1))), 1L)), (*l_116))) & l_140[0][4][4]) && (*p_2242->g_94)), GROUP_DIVERGE(1, 1)))) , l_140[0][7][4])) >= l_140[0][7][3]) > 0UL) == (-4L)) & l_162[0]) > l_124) , &p_2242->g_6[8]) == (void*)0), 6))))) > l_122))))) < l_123[2][5]))) <= 251UL), 1))))) && l_123[4][4]), l_140[0][7][3])), l_162[4])))
            { /* block id: 52 */
                int32_t **l_169 = &l_120[3][5];
                (*l_110) = ((&p_2242->g_36 != p_89) & (3UL != l_108));
                (*l_169) = &l_121;
                for (l_111 = (-5); (l_111 <= 0); l_111 = safe_add_func_int64_t_s_s(l_111, 1))
                { /* block id: 57 */
                    int64_t l_172 = (-1L);
                    (*l_169) = (*p_2242->g_95);
                    --l_173;
                }
                for (l_111 = 19; (l_111 != 5); --l_111)
                { /* block id: 63 */
                    volatile struct S0 *l_179 = &p_2242->g_178;
                    (*l_179) = p_2242->g_178;
                    return p_2242->g_178.f2;
                }
            }
            else
            { /* block id: 67 */
                int32_t l_181 = (-1L);
                int32_t l_186 = (-1L);
                int32_t l_188 = 0L;
                int32_t l_192 = 0x2C821ADEL;
                int32_t l_193[7] = {8L,0x546B1492L,8L,8L,0x546B1492L,8L,8L};
                int i;
                (*p_2242->g_180) = (*p_2242->g_95);
                if (l_181)
                    break;
                if (l_108)
                { /* block id: 70 */
                    uint16_t l_183 = 4UL;
                    int32_t l_189 = 0x76836BC6L;
                    int32_t l_190 = 0x41734EC9L;
                    int32_t l_191[4][1] = {{0x2834AAA4L},{0x2834AAA4L},{0x2834AAA4L},{0x2834AAA4L}};
                    int i, j;
                    ++l_183;
                    --l_195;
                }
                else
                { /* block id: 73 */
                    int16_t l_198 = 0x4EC3L;
                    for (l_187 = 1; (l_187 <= 4); l_187 += 1)
                    { /* block id: 76 */
                        return l_181;
                    }
                    return l_198;
                }
            }
            for (l_195 = 0; (l_195 <= 8); l_195 += 1)
            { /* block id: 84 */
                uint8_t *l_202[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                uint32_t *l_206[5][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                int32_t l_216 = 0x3E9639D0L;
                int8_t **l_217 = &l_166;
                uint16_t *l_258[7] = {&l_140[0][7][3],&l_211,&l_140[0][7][3],&l_140[0][7][3],&l_211,&l_140[0][7][3],&l_140[0][7][3]};
                int32_t **l_278 = &l_118;
                int i, j;
                if ((*l_117))
                    break;
                (*l_113) = (p_2242->g_199 , (safe_mul_func_int16_t_s_s(((--p_2242->g_203[6]) >= (((l_206[3][0] != (void*)0) && (7L == ((((safe_add_func_int32_t_s_s((*l_109), (l_194[1][2][2] = (9L < (((l_211++) == ((*l_116) < (l_140[0][7][3] <= (safe_rshift_func_int16_t_s_s(l_135, 3))))) | l_216))))) & 0x7C996117L) == GROUP_DIVERGE(2, 1)) >= l_123[3][4]))) <= 1UL)), 3L)));
                for (l_124 = 0; l_124 < 7; l_124 += 1)
                {
                    for (l_187 = 0; l_187 < 9; l_187 += 1)
                    {
                        for (l_121 = 0; l_121 < 4; l_121 += 1)
                        {
                            l_194[l_124][l_187][l_121] = 0x1FEDBC89L;
                        }
                    }
                }
                if ((((*l_217) = p_89) != p_89))
                { /* block id: 92 */
                    int8_t l_218 = 0x35L;
                    int32_t l_219 = 5L;
                    for (p_2242->g_104.f2 = 3; (p_2242->g_104.f2 <= 8); p_2242->g_104.f2 += 1)
                    { /* block id: 95 */
                        ++l_220[2];
                    }
                    for (l_121 = 4; (l_121 >= 0); l_121 -= 1)
                    { /* block id: 100 */
                        (*p_2242->g_223) = &l_216;
                        (*l_117) &= 0x1AAE0EBEL;
                        return l_194[4][7][2];
                    }
                }
                else
                { /* block id: 105 */
                    uint8_t l_224[9];
                    int8_t *l_259 = &p_2242->g_260;
                    int32_t **l_290 = &l_114;
                    int i;
                    for (i = 0; i < 9; i++)
                        l_224[i] = 255UL;
                    for (p_2242->g_2 = 4; (p_2242->g_2 >= 1); p_2242->g_2 -= 1)
                    { /* block id: 108 */
                        l_224[7]--;
                        if (l_216)
                            goto lbl_227;
                    }
                    if ((safe_div_func_int32_t_s_s(((((safe_sub_func_int16_t_s_s((safe_mul_func_int8_t_s_s((((safe_add_func_uint8_t_u_u((((*l_259) ^= (safe_mul_func_uint16_t_u_u(((safe_add_func_uint64_t_u_u(((((*l_163) = ((safe_add_func_int64_t_s_s((~((*l_109) , 0x76BCCEDB5623DF65L)), (safe_add_func_int64_t_s_s(l_224[1], p_2242->g_209[2][4][3])))) < (safe_add_func_uint16_t_u_u((((+(safe_div_func_uint32_t_u_u(((safe_unary_minus_func_int32_t_s(((*l_114) = (safe_sub_func_uint16_t_u_u((safe_add_func_uint64_t_u_u(((safe_sub_func_int16_t_s_s((safe_mod_func_int8_t_s_s(l_140[0][6][0], 2UL)), (l_257[5] , (l_258[5] == &l_211)))) , l_224[6]), FAKE_DIVERGE(p_2242->group_2_offset, get_group_id(2), 10))), p_2242->g_210))))) | GROUP_DIVERGE(0, 1)), 1UL))) , p_2242->g_178.f2) | p_2242->g_167), 0L)))) == FAKE_DIVERGE(p_2242->global_1_offset, get_global_id(1), 10)) >= GROUP_DIVERGE(2, 1)), p_2242->g_210)) | 0x63AF5582DE014A35L), l_220[2]))) < p_2242->g_203[6]), GROUP_DIVERGE(1, 1))) , 0xA446L) >= l_123[4][1]), l_162[0])), l_121)) < p_2242->g_2) , 2L) == 0L), 0x459CDDAFL)))
                    { /* block id: 115 */
                        (*l_110) = ((safe_div_func_int64_t_s_s((safe_mod_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u((~(safe_mul_func_int8_t_s_s(((safe_unary_minus_func_int16_t_s((18446744073709551607UL != (*l_112)))) > (safe_add_func_int32_t_s_s((*l_112), (**p_2242->g_95)))), (((*l_161) = (l_272 == (l_275 = p_2242->g_273))) >= (safe_sub_func_int16_t_s_s(0x4A60L, (l_278 != (void*)0))))))), 7)), 0x27L)), 0x776A21A2E9158BB5L)) == 0x69289782121E1F04L);
                        if (l_122)
                            continue;
                        if ((**p_2242->g_95))
                            continue;
                        (*l_278) = &l_111;
                    }
                    else
                    { /* block id: 122 */
                        int32_t **l_289 = (void*)0;
                        int i;
                        (**l_278) ^= ((safe_rshift_func_int16_t_s_s((0x595EL >= (p_2242->g_281[1] , (safe_div_func_uint32_t_u_u(l_194[4][7][2], (safe_add_func_int32_t_s_s(((*l_113) = (safe_mod_func_int16_t_s_s(l_123[4][1], (safe_unary_minus_func_uint16_t_u((((p_2242->g_32[l_195] , l_289) != (p_2242->g_32[0].f0 , l_290)) > p_2242->g_36)))))), l_220[2])))))), 9)) > l_195);
                    }
                    if ((*l_114))
                        continue;
                    return l_123[4][1];
                }
            }
            for (p_2242->g_210 = 0; (p_2242->g_210 <= 4); p_2242->g_210 += 1)
            { /* block id: 132 */
                uint16_t *l_291 = &p_2242->g_160;
                uint16_t **l_292 = &l_291;
                int32_t l_300 = (-5L);
                (*l_110) = ((((*l_292) = l_291) == l_293) , ((&l_182 == (*p_2242->g_95)) != (0x7FB04761E1F90E66L | ((void*)0 != p_2242->g_296[5]))));
                if (l_300)
                    break;
            }
        }
    }
    return p_2242->g_209[0][4][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_2242->g_95
 * writes: p_2242->g_94
 */
int8_t * func_90(uint32_t  p_91, struct S2 * p_2242)
{ /* block id: 29 */
    int32_t *l_92 = &p_2242->g_6[5];
    int32_t *l_96 = (void*)0;
    int32_t *l_97[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint64_t l_98[4] = {0UL,0UL,0UL,0UL};
    uint32_t l_99 = 4294967293UL;
    uint32_t l_100[7][8] = {{0x875C0BC9L,0xA9111430L,1UL,4294967295UL,4294967293UL,1UL,0x75B16568L,1UL},{0x875C0BC9L,0xA9111430L,1UL,4294967295UL,4294967293UL,1UL,0x75B16568L,1UL},{0x875C0BC9L,0xA9111430L,1UL,4294967295UL,4294967293UL,1UL,0x75B16568L,1UL},{0x875C0BC9L,0xA9111430L,1UL,4294967295UL,4294967293UL,1UL,0x75B16568L,1UL},{0x875C0BC9L,0xA9111430L,1UL,4294967295UL,4294967293UL,1UL,0x75B16568L,1UL},{0x875C0BC9L,0xA9111430L,1UL,4294967295UL,4294967293UL,1UL,0x75B16568L,1UL},{0x875C0BC9L,0xA9111430L,1UL,4294967295UL,4294967293UL,1UL,0x75B16568L,1UL}};
    int8_t *l_103 = (void*)0;
    int i, j;
    (*p_2242->g_95) = l_92;
    l_99 |= (l_98[3] |= p_91);
    --l_100[6][6];
    return l_103;
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[35];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 35; i++)
            l_comm_values[i] = 1;
    struct S2 c_2243;
    struct S2* p_2242 = &c_2243;
    struct S2 c_2244 = {
        9L, // p_2242->g_2
        0L, // p_2242->g_5
        {7L,0x41FC9A57L,(-1L),0x41FC9A57L,7L,7L,0x41FC9A57L,(-1L),0x41FC9A57L,7L}, // p_2242->g_6
        (-1L), // p_2242->g_10
        0x0277L, // p_2242->g_31
        {{0x9E864ADBL},{1UL},{0x9E864ADBL},{0x9E864ADBL},{1UL},{0x9E864ADBL},{0x9E864ADBL},{1UL},{0x9E864ADBL}}, // p_2242->g_32
        0x2AL, // p_2242->g_36
        (void*)0, // p_2242->g_37
        {0x5E2B1956L}, // p_2242->g_46
        (-7L), // p_2242->g_48
        0x31L, // p_2242->g_56
        &p_2242->g_10, // p_2242->g_94
        {&p_2242->g_94,&p_2242->g_94,&p_2242->g_94,&p_2242->g_94,&p_2242->g_94}, // p_2242->g_93
        &p_2242->g_94, // p_2242->g_95
        {0x861EL,0xEE36A709L,-1L}, // p_2242->g_104
        &p_2242->g_104, // p_2242->g_105
        0x7D86L, // p_2242->g_160
        (-1L), // p_2242->g_164
        0L, // p_2242->g_167
        (void*)0, // p_2242->g_168
        {0x5810L,6UL,0x6E95B8BEFA478FC7L}, // p_2242->g_178
        &p_2242->g_94, // p_2242->g_180
        {0xC214L,9UL,1L}, // p_2242->g_199
        {0xBCL,0xBCL,0xBCL,0xBCL,0xBCL,0xBCL,0xBCL,0xBCL,0xBCL}, // p_2242->g_203
        {{{0x424FC341L,0x28379ABEL,0x14903292L,0L,(-5L),0x5DDA83CDL},{0x424FC341L,0x28379ABEL,0x14903292L,0L,(-5L),0x5DDA83CDL},{0x424FC341L,0x28379ABEL,0x14903292L,0L,(-5L),0x5DDA83CDL},{0x424FC341L,0x28379ABEL,0x14903292L,0L,(-5L),0x5DDA83CDL},{0x424FC341L,0x28379ABEL,0x14903292L,0L,(-5L),0x5DDA83CDL},{0x424FC341L,0x28379ABEL,0x14903292L,0L,(-5L),0x5DDA83CDL},{0x424FC341L,0x28379ABEL,0x14903292L,0L,(-5L),0x5DDA83CDL},{0x424FC341L,0x28379ABEL,0x14903292L,0L,(-5L),0x5DDA83CDL}},{{0x424FC341L,0x28379ABEL,0x14903292L,0L,(-5L),0x5DDA83CDL},{0x424FC341L,0x28379ABEL,0x14903292L,0L,(-5L),0x5DDA83CDL},{0x424FC341L,0x28379ABEL,0x14903292L,0L,(-5L),0x5DDA83CDL},{0x424FC341L,0x28379ABEL,0x14903292L,0L,(-5L),0x5DDA83CDL},{0x424FC341L,0x28379ABEL,0x14903292L,0L,(-5L),0x5DDA83CDL},{0x424FC341L,0x28379ABEL,0x14903292L,0L,(-5L),0x5DDA83CDL},{0x424FC341L,0x28379ABEL,0x14903292L,0L,(-5L),0x5DDA83CDL},{0x424FC341L,0x28379ABEL,0x14903292L,0L,(-5L),0x5DDA83CDL}},{{0x424FC341L,0x28379ABEL,0x14903292L,0L,(-5L),0x5DDA83CDL},{0x424FC341L,0x28379ABEL,0x14903292L,0L,(-5L),0x5DDA83CDL},{0x424FC341L,0x28379ABEL,0x14903292L,0L,(-5L),0x5DDA83CDL},{0x424FC341L,0x28379ABEL,0x14903292L,0L,(-5L),0x5DDA83CDL},{0x424FC341L,0x28379ABEL,0x14903292L,0L,(-5L),0x5DDA83CDL},{0x424FC341L,0x28379ABEL,0x14903292L,0L,(-5L),0x5DDA83CDL},{0x424FC341L,0x28379ABEL,0x14903292L,0L,(-5L),0x5DDA83CDL},{0x424FC341L,0x28379ABEL,0x14903292L,0L,(-5L),0x5DDA83CDL}},{{0x424FC341L,0x28379ABEL,0x14903292L,0L,(-5L),0x5DDA83CDL},{0x424FC341L,0x28379ABEL,0x14903292L,0L,(-5L),0x5DDA83CDL},{0x424FC341L,0x28379ABEL,0x14903292L,0L,(-5L),0x5DDA83CDL},{0x424FC341L,0x28379ABEL,0x14903292L,0L,(-5L),0x5DDA83CDL},{0x424FC341L,0x28379ABEL,0x14903292L,0L,(-5L),0x5DDA83CDL},{0x424FC341L,0x28379ABEL,0x14903292L,0L,(-5L),0x5DDA83CDL},{0x424FC341L,0x28379ABEL,0x14903292L,0L,(-5L),0x5DDA83CDL},{0x424FC341L,0x28379ABEL,0x14903292L,0L,(-5L),0x5DDA83CDL}}}, // p_2242->g_209
        0x085AL, // p_2242->g_210
        &p_2242->g_94, // p_2242->g_223
        0x59L, // p_2242->g_260
        {0UL,1UL,-1L}, // p_2242->g_274
        &p_2242->g_274, // p_2242->g_273
        {{0x56E2L,4294967286UL,0x2A4B35DEDDFBEF71L},{0x56E2L,4294967286UL,0x2A4B35DEDDFBEF71L},{0x56E2L,4294967286UL,0x2A4B35DEDDFBEF71L},{0x56E2L,4294967286UL,0x2A4B35DEDDFBEF71L},{0x56E2L,4294967286UL,0x2A4B35DEDDFBEF71L}}, // p_2242->g_281
        0x5A2E185E6C309A2FL, // p_2242->g_297
        {{{1L,0x0FA3296AF753D0AAL},{1L,0x0FA3296AF753D0AAL},{1L,0x0FA3296AF753D0AAL},{1L,0x0FA3296AF753D0AAL},{1L,0x0FA3296AF753D0AAL},{1L,0x0FA3296AF753D0AAL},{1L,0x0FA3296AF753D0AAL}}}, // p_2242->g_298
        8L, // p_2242->g_299
        {&p_2242->g_297,&p_2242->g_297,&p_2242->g_297,&p_2242->g_297,&p_2242->g_297,&p_2242->g_297,&p_2242->g_297,&p_2242->g_297,&p_2242->g_297,&p_2242->g_297}, // p_2242->g_296
        (void*)0, // p_2242->g_301
        {0x2AE1EEB1L}, // p_2242->g_328
        &p_2242->g_46.f0, // p_2242->g_360
        (void*)0, // p_2242->g_362
        (-1L), // p_2242->g_371
        {0x905C72F0L}, // p_2242->g_379
        {1UL,1UL,-5L}, // p_2242->g_396
        {1UL,3UL,0x78F38381C6324CF9L}, // p_2242->g_398
        &p_2242->g_48, // p_2242->g_403
        {{0xA8E5L,1UL,0L},{0xA8E5L,1UL,0L},{0xA8E5L,1UL,0L},{0xA8E5L,1UL,0L}}, // p_2242->g_427
        (-8L), // p_2242->g_502
        {0x36359A03L}, // p_2242->g_530
        0x0FF9269D6179B44EL, // p_2242->g_533
        1UL, // p_2242->g_576
        {{0UL,2UL,0x4CCD7B3329E02452L},{0UL,2UL,0x4CCD7B3329E02452L}}, // p_2242->g_596
        {0x72DEL,0x0BDEE638L,0x33693D2A6B41D4CBL}, // p_2242->g_609
        {0x1AA9L,0x548417A9L,0x40597AE732ACB663L}, // p_2242->g_618
        {{{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}}},{{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}}},{{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}}},{{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}}},{{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}}},{{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}}}}, // p_2242->g_626
        {0x2B981065L}, // p_2242->g_636
        {0x7936L,0UL,1L}, // p_2242->g_659
        0x78L, // p_2242->g_672
        {65535UL,0x462734E6L,0x16B278801E4FA4F0L}, // p_2242->g_681
        {65526UL,0UL,5L}, // p_2242->g_682
        {{{{0UL,0UL,0L},{3UL,0xA693D6D8L,-1L},{0UL,0UL,0L},{0UL,0UL,0L}},{{0UL,0UL,0L},{3UL,0xA693D6D8L,-1L},{0UL,0UL,0L},{0UL,0UL,0L}},{{0UL,0UL,0L},{3UL,0xA693D6D8L,-1L},{0UL,0UL,0L},{0UL,0UL,0L}},{{0UL,0UL,0L},{3UL,0xA693D6D8L,-1L},{0UL,0UL,0L},{0UL,0UL,0L}},{{0UL,0UL,0L},{3UL,0xA693D6D8L,-1L},{0UL,0UL,0L},{0UL,0UL,0L}},{{0UL,0UL,0L},{3UL,0xA693D6D8L,-1L},{0UL,0UL,0L},{0UL,0UL,0L}},{{0UL,0UL,0L},{3UL,0xA693D6D8L,-1L},{0UL,0UL,0L},{0UL,0UL,0L}},{{0UL,0UL,0L},{3UL,0xA693D6D8L,-1L},{0UL,0UL,0L},{0UL,0UL,0L}},{{0UL,0UL,0L},{3UL,0xA693D6D8L,-1L},{0UL,0UL,0L},{0UL,0UL,0L}},{{0UL,0UL,0L},{3UL,0xA693D6D8L,-1L},{0UL,0UL,0L},{0UL,0UL,0L}}},{{{0UL,0UL,0L},{3UL,0xA693D6D8L,-1L},{0UL,0UL,0L},{0UL,0UL,0L}},{{0UL,0UL,0L},{3UL,0xA693D6D8L,-1L},{0UL,0UL,0L},{0UL,0UL,0L}},{{0UL,0UL,0L},{3UL,0xA693D6D8L,-1L},{0UL,0UL,0L},{0UL,0UL,0L}},{{0UL,0UL,0L},{3UL,0xA693D6D8L,-1L},{0UL,0UL,0L},{0UL,0UL,0L}},{{0UL,0UL,0L},{3UL,0xA693D6D8L,-1L},{0UL,0UL,0L},{0UL,0UL,0L}},{{0UL,0UL,0L},{3UL,0xA693D6D8L,-1L},{0UL,0UL,0L},{0UL,0UL,0L}},{{0UL,0UL,0L},{3UL,0xA693D6D8L,-1L},{0UL,0UL,0L},{0UL,0UL,0L}},{{0UL,0UL,0L},{3UL,0xA693D6D8L,-1L},{0UL,0UL,0L},{0UL,0UL,0L}},{{0UL,0UL,0L},{3UL,0xA693D6D8L,-1L},{0UL,0UL,0L},{0UL,0UL,0L}},{{0UL,0UL,0L},{3UL,0xA693D6D8L,-1L},{0UL,0UL,0L},{0UL,0UL,0L}}},{{{0UL,0UL,0L},{3UL,0xA693D6D8L,-1L},{0UL,0UL,0L},{0UL,0UL,0L}},{{0UL,0UL,0L},{3UL,0xA693D6D8L,-1L},{0UL,0UL,0L},{0UL,0UL,0L}},{{0UL,0UL,0L},{3UL,0xA693D6D8L,-1L},{0UL,0UL,0L},{0UL,0UL,0L}},{{0UL,0UL,0L},{3UL,0xA693D6D8L,-1L},{0UL,0UL,0L},{0UL,0UL,0L}},{{0UL,0UL,0L},{3UL,0xA693D6D8L,-1L},{0UL,0UL,0L},{0UL,0UL,0L}},{{0UL,0UL,0L},{3UL,0xA693D6D8L,-1L},{0UL,0UL,0L},{0UL,0UL,0L}},{{0UL,0UL,0L},{3UL,0xA693D6D8L,-1L},{0UL,0UL,0L},{0UL,0UL,0L}},{{0UL,0UL,0L},{3UL,0xA693D6D8L,-1L},{0UL,0UL,0L},{0UL,0UL,0L}},{{0UL,0UL,0L},{3UL,0xA693D6D8L,-1L},{0UL,0UL,0L},{0UL,0UL,0L}},{{0UL,0UL,0L},{3UL,0xA693D6D8L,-1L},{0UL,0UL,0L},{0UL,0UL,0L}}}}, // p_2242->g_683
        {1UL,0x02A01416L,-1L}, // p_2242->g_686
        (void*)0, // p_2242->g_689
        0xB3L, // p_2242->g_749
        {{246UL},{246UL},{246UL},{246UL},{246UL},{246UL},{246UL},{246UL}}, // p_2242->g_790
        {{(-1L),(-1L)},{(-1L),(-1L)},{(-1L),(-1L)}}, // p_2242->g_820
        0x2E72L, // p_2242->g_821
        0x0F9FL, // p_2242->g_823
        0xA13F73009A11CB38L, // p_2242->g_829
        0x0E50E86DL, // p_2242->g_830
        &p_2242->g_829, // p_2242->g_873
        {0x0B7EL,0x21BF618EL,0x63C06759D3A7572FL}, // p_2242->g_881
        0xD8969D48L, // p_2242->g_931
        {65535UL,1UL,2L}, // p_2242->g_953
        {0x92F4L,4294967295UL,1L}, // p_2242->g_956
        {{0x6F50L,0xE4850288L,0L},{0x6F50L,0xE4850288L,0L},{0x6F50L,0xE4850288L,0L},{0x6F50L,0xE4850288L,0L},{0x6F50L,0xE4850288L,0L},{0x6F50L,0xE4850288L,0L},{0x6F50L,0xE4850288L,0L},{0x6F50L,0xE4850288L,0L}}, // p_2242->g_975
        &p_2242->g_94, // p_2242->g_977
        {0xD9438230L}, // p_2242->g_1015
        6L, // p_2242->g_1039
        {0xC1B5L,0x8830BB5BL,0x5A564A391C2F5145L}, // p_2242->g_1138
        (void*)0, // p_2242->g_1146
        &p_2242->g_1146, // p_2242->g_1145
        0x4DB3L, // p_2242->g_1150
        &p_2242->g_301, // p_2242->g_1157
        &p_2242->g_301, // p_2242->g_1158
        0xCDACB5BBL, // p_2242->g_1220
        {4294967294UL}, // p_2242->g_1244
        1L, // p_2242->g_1250
        &p_2242->g_209[1][3][0], // p_2242->g_1270
        {0x82AD6C73L}, // p_2242->g_1288
        &p_2242->g_94, // p_2242->g_1301
        {{{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301}},{{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301}},{{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301}},{{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301}},{{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301}},{{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301}},{{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301}},{{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301}},{{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301},{(void*)0,&p_2242->g_1301,&p_2242->g_1301}}}, // p_2242->g_1300
        {&p_2242->g_1300[3][6][0],&p_2242->g_1300[3][6][0],&p_2242->g_1300[3][6][0],&p_2242->g_1300[3][6][0],&p_2242->g_1300[3][6][0],&p_2242->g_1300[3][6][0],&p_2242->g_1300[3][6][0]}, // p_2242->g_1299
        &p_2242->g_94, // p_2242->g_1344
        &p_2242->g_1344, // p_2242->g_1343
        {0xB1D2814AL}, // p_2242->g_1383
        (-6L), // p_2242->g_1387
        {1UL,0x46253ED1L,0x4C524DB0037F92D6L}, // p_2242->g_1466
        {4294967294UL}, // p_2242->g_1470
        &p_2242->g_362, // p_2242->g_1476
        &p_2242->g_1476, // p_2242->g_1475
        &p_2242->g_273, // p_2242->g_1502
        {65527UL,0x2CCA85F1L,9L}, // p_2242->g_1531
        &p_2242->g_2, // p_2242->g_1699
        {0xB363L,4294967295UL,1L}, // p_2242->g_1700
        0x7718L, // p_2242->g_1716
        {0xA4FEL,0x2989F044L,0x516256CD734FEFE3L}, // p_2242->g_1721
        &p_2242->g_164, // p_2242->g_1792
        &p_2242->g_1792, // p_2242->g_1791
        {&p_2242->g_1791,&p_2242->g_1791,&p_2242->g_1791,&p_2242->g_1791,&p_2242->g_1791,&p_2242->g_1791}, // p_2242->g_1790
        &p_2242->g_823, // p_2242->g_1800
        &p_2242->g_1800, // p_2242->g_1799
        1UL, // p_2242->g_1815
        {0UL}, // p_2242->g_1850
        {0x2CB40E7EL}, // p_2242->g_1873
        {0x65986D5BL}, // p_2242->g_1895
        {&p_2242->g_167,&p_2242->g_167,&p_2242->g_167,&p_2242->g_167,&p_2242->g_167}, // p_2242->g_1931
        {{&p_2242->g_1931[3],(void*)0,(void*)0,&p_2242->g_1931[3],&p_2242->g_1931[3],(void*)0,(void*)0,&p_2242->g_1931[3],&p_2242->g_1931[3],(void*)0},{&p_2242->g_1931[3],(void*)0,(void*)0,&p_2242->g_1931[3],&p_2242->g_1931[3],(void*)0,(void*)0,&p_2242->g_1931[3],&p_2242->g_1931[3],(void*)0},{&p_2242->g_1931[3],(void*)0,(void*)0,&p_2242->g_1931[3],&p_2242->g_1931[3],(void*)0,(void*)0,&p_2242->g_1931[3],&p_2242->g_1931[3],(void*)0},{&p_2242->g_1931[3],(void*)0,(void*)0,&p_2242->g_1931[3],&p_2242->g_1931[3],(void*)0,(void*)0,&p_2242->g_1931[3],&p_2242->g_1931[3],(void*)0},{&p_2242->g_1931[3],(void*)0,(void*)0,&p_2242->g_1931[3],&p_2242->g_1931[3],(void*)0,(void*)0,&p_2242->g_1931[3],&p_2242->g_1931[3],(void*)0}}, // p_2242->g_1930
        &p_2242->g_1930[2][2], // p_2242->g_1929
        {0xE404L,0x4644688DL,-1L}, // p_2242->g_1932
        0xF9BE956BE94C56F6L, // p_2242->g_1991
        0x0DB3D834L, // p_2242->g_1992
        {{2UL,0xF7814A76L,0x7E7F9DC645B2A3AAL},{65535UL,4294967295UL,0x4424053B13CA6591L},{2UL,0xF7814A76L,0x7E7F9DC645B2A3AAL},{2UL,0xF7814A76L,0x7E7F9DC645B2A3AAL},{65535UL,4294967295UL,0x4424053B13CA6591L},{2UL,0xF7814A76L,0x7E7F9DC645B2A3AAL}}, // p_2242->g_2008
        0UL, // p_2242->g_2035
        {6UL,1UL,0x701A57ABBE95A311L}, // p_2242->g_2072
        (void*)0, // p_2242->g_2085
        &p_2242->g_2085, // p_2242->g_2084
        {0UL,0xEAB52121L,0L}, // p_2242->g_2088
        {{&p_2242->g_1850},{&p_2242->g_1850},{&p_2242->g_1850},{&p_2242->g_1850},{&p_2242->g_1850},{&p_2242->g_1850},{&p_2242->g_1850},{&p_2242->g_1850}}, // p_2242->g_2114
        {0x9B7BL,0xD2B1335DL,0x6C03773507AE0362L}, // p_2242->g_2124
        {65529UL,0x607C9C3BL,-10L}, // p_2242->g_2139
        {65533UL,0x3ED26C3DL,0x2C0A195B390D3457L}, // p_2242->g_2157
        0x3DEAL, // p_2242->g_2195
        {65526UL,0UL,0x5FCFA7CB2DCA1358L}, // p_2242->g_2205
        {0UL,3UL,0x2D747DA5A24B3282L}, // p_2242->g_2208
        0x7C88EDF3L, // p_2242->g_2211
        sequence_input[get_global_id(0)], // p_2242->global_0_offset
        sequence_input[get_global_id(1)], // p_2242->global_1_offset
        sequence_input[get_global_id(2)], // p_2242->global_2_offset
        sequence_input[get_local_id(0)], // p_2242->local_0_offset
        sequence_input[get_local_id(1)], // p_2242->local_1_offset
        sequence_input[get_local_id(2)], // p_2242->local_2_offset
        sequence_input[get_group_id(0)], // p_2242->group_0_offset
        sequence_input[get_group_id(1)], // p_2242->group_1_offset
        sequence_input[get_group_id(2)], // p_2242->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 35)), permutations[0][get_linear_local_id()])), // p_2242->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_2243 = c_2244;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2242);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2242->g_2, "p_2242->g_2", print_hash_value);
    transparent_crc(p_2242->g_5, "p_2242->g_5", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2242->g_6[i], "p_2242->g_6[i]", print_hash_value);

    }
    transparent_crc(p_2242->g_10, "p_2242->g_10", print_hash_value);
    transparent_crc(p_2242->g_31, "p_2242->g_31", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_2242->g_32[i].f0, "p_2242->g_32[i].f0", print_hash_value);

    }
    transparent_crc(p_2242->g_36, "p_2242->g_36", print_hash_value);
    transparent_crc(p_2242->g_46.f0, "p_2242->g_46.f0", print_hash_value);
    transparent_crc(p_2242->g_48, "p_2242->g_48", print_hash_value);
    transparent_crc(p_2242->g_56, "p_2242->g_56", print_hash_value);
    transparent_crc(p_2242->g_104.f0, "p_2242->g_104.f0", print_hash_value);
    transparent_crc(p_2242->g_104.f1, "p_2242->g_104.f1", print_hash_value);
    transparent_crc(p_2242->g_104.f2, "p_2242->g_104.f2", print_hash_value);
    transparent_crc(p_2242->g_160, "p_2242->g_160", print_hash_value);
    transparent_crc(p_2242->g_164, "p_2242->g_164", print_hash_value);
    transparent_crc(p_2242->g_167, "p_2242->g_167", print_hash_value);
    transparent_crc(p_2242->g_178.f0, "p_2242->g_178.f0", print_hash_value);
    transparent_crc(p_2242->g_178.f1, "p_2242->g_178.f1", print_hash_value);
    transparent_crc(p_2242->g_178.f2, "p_2242->g_178.f2", print_hash_value);
    transparent_crc(p_2242->g_199.f0, "p_2242->g_199.f0", print_hash_value);
    transparent_crc(p_2242->g_199.f1, "p_2242->g_199.f1", print_hash_value);
    transparent_crc(p_2242->g_199.f2, "p_2242->g_199.f2", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_2242->g_203[i], "p_2242->g_203[i]", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_2242->g_209[i][j][k], "p_2242->g_209[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2242->g_210, "p_2242->g_210", print_hash_value);
    transparent_crc(p_2242->g_260, "p_2242->g_260", print_hash_value);
    transparent_crc(p_2242->g_274.f0, "p_2242->g_274.f0", print_hash_value);
    transparent_crc(p_2242->g_274.f1, "p_2242->g_274.f1", print_hash_value);
    transparent_crc(p_2242->g_274.f2, "p_2242->g_274.f2", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_2242->g_281[i].f0, "p_2242->g_281[i].f0", print_hash_value);
        transparent_crc(p_2242->g_281[i].f1, "p_2242->g_281[i].f1", print_hash_value);
        transparent_crc(p_2242->g_281[i].f2, "p_2242->g_281[i].f2", print_hash_value);

    }
    transparent_crc(p_2242->g_297, "p_2242->g_297", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_2242->g_298[i][j][k], "p_2242->g_298[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2242->g_299, "p_2242->g_299", print_hash_value);
    transparent_crc(p_2242->g_328.f0, "p_2242->g_328.f0", print_hash_value);
    transparent_crc(p_2242->g_371, "p_2242->g_371", print_hash_value);
    transparent_crc(p_2242->g_379.f0, "p_2242->g_379.f0", print_hash_value);
    transparent_crc(p_2242->g_396.f0, "p_2242->g_396.f0", print_hash_value);
    transparent_crc(p_2242->g_396.f1, "p_2242->g_396.f1", print_hash_value);
    transparent_crc(p_2242->g_396.f2, "p_2242->g_396.f2", print_hash_value);
    transparent_crc(p_2242->g_398.f0, "p_2242->g_398.f0", print_hash_value);
    transparent_crc(p_2242->g_398.f1, "p_2242->g_398.f1", print_hash_value);
    transparent_crc(p_2242->g_398.f2, "p_2242->g_398.f2", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2242->g_427[i].f0, "p_2242->g_427[i].f0", print_hash_value);
        transparent_crc(p_2242->g_427[i].f1, "p_2242->g_427[i].f1", print_hash_value);
        transparent_crc(p_2242->g_427[i].f2, "p_2242->g_427[i].f2", print_hash_value);

    }
    transparent_crc(p_2242->g_502, "p_2242->g_502", print_hash_value);
    transparent_crc(p_2242->g_530.f0, "p_2242->g_530.f0", print_hash_value);
    transparent_crc(p_2242->g_533, "p_2242->g_533", print_hash_value);
    transparent_crc(p_2242->g_576, "p_2242->g_576", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_2242->g_596[i].f0, "p_2242->g_596[i].f0", print_hash_value);
        transparent_crc(p_2242->g_596[i].f1, "p_2242->g_596[i].f1", print_hash_value);
        transparent_crc(p_2242->g_596[i].f2, "p_2242->g_596[i].f2", print_hash_value);

    }
    transparent_crc(p_2242->g_609.f0, "p_2242->g_609.f0", print_hash_value);
    transparent_crc(p_2242->g_609.f1, "p_2242->g_609.f1", print_hash_value);
    transparent_crc(p_2242->g_609.f2, "p_2242->g_609.f2", print_hash_value);
    transparent_crc(p_2242->g_618.f0, "p_2242->g_618.f0", print_hash_value);
    transparent_crc(p_2242->g_618.f1, "p_2242->g_618.f1", print_hash_value);
    transparent_crc(p_2242->g_618.f2, "p_2242->g_618.f2", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_2242->g_626[i][j][k].f0, "p_2242->g_626[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_2242->g_636.f0, "p_2242->g_636.f0", print_hash_value);
    transparent_crc(p_2242->g_659.f0, "p_2242->g_659.f0", print_hash_value);
    transparent_crc(p_2242->g_659.f1, "p_2242->g_659.f1", print_hash_value);
    transparent_crc(p_2242->g_659.f2, "p_2242->g_659.f2", print_hash_value);
    transparent_crc(p_2242->g_672, "p_2242->g_672", print_hash_value);
    transparent_crc(p_2242->g_681.f0, "p_2242->g_681.f0", print_hash_value);
    transparent_crc(p_2242->g_681.f1, "p_2242->g_681.f1", print_hash_value);
    transparent_crc(p_2242->g_681.f2, "p_2242->g_681.f2", print_hash_value);
    transparent_crc(p_2242->g_682.f0, "p_2242->g_682.f0", print_hash_value);
    transparent_crc(p_2242->g_682.f1, "p_2242->g_682.f1", print_hash_value);
    transparent_crc(p_2242->g_682.f2, "p_2242->g_682.f2", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_2242->g_683[i][j][k].f0, "p_2242->g_683[i][j][k].f0", print_hash_value);
                transparent_crc(p_2242->g_683[i][j][k].f1, "p_2242->g_683[i][j][k].f1", print_hash_value);
                transparent_crc(p_2242->g_683[i][j][k].f2, "p_2242->g_683[i][j][k].f2", print_hash_value);

            }
        }
    }
    transparent_crc(p_2242->g_686.f0, "p_2242->g_686.f0", print_hash_value);
    transparent_crc(p_2242->g_686.f1, "p_2242->g_686.f1", print_hash_value);
    transparent_crc(p_2242->g_686.f2, "p_2242->g_686.f2", print_hash_value);
    transparent_crc(p_2242->g_749, "p_2242->g_749", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_2242->g_790[i][j], "p_2242->g_790[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_2242->g_820[i][j], "p_2242->g_820[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2242->g_821, "p_2242->g_821", print_hash_value);
    transparent_crc(p_2242->g_823, "p_2242->g_823", print_hash_value);
    transparent_crc(p_2242->g_829, "p_2242->g_829", print_hash_value);
    transparent_crc(p_2242->g_830, "p_2242->g_830", print_hash_value);
    transparent_crc(p_2242->g_881.f0, "p_2242->g_881.f0", print_hash_value);
    transparent_crc(p_2242->g_881.f1, "p_2242->g_881.f1", print_hash_value);
    transparent_crc(p_2242->g_881.f2, "p_2242->g_881.f2", print_hash_value);
    transparent_crc(p_2242->g_931, "p_2242->g_931", print_hash_value);
    transparent_crc(p_2242->g_953.f0, "p_2242->g_953.f0", print_hash_value);
    transparent_crc(p_2242->g_953.f1, "p_2242->g_953.f1", print_hash_value);
    transparent_crc(p_2242->g_953.f2, "p_2242->g_953.f2", print_hash_value);
    transparent_crc(p_2242->g_956.f0, "p_2242->g_956.f0", print_hash_value);
    transparent_crc(p_2242->g_956.f1, "p_2242->g_956.f1", print_hash_value);
    transparent_crc(p_2242->g_956.f2, "p_2242->g_956.f2", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_2242->g_975[i].f0, "p_2242->g_975[i].f0", print_hash_value);
        transparent_crc(p_2242->g_975[i].f1, "p_2242->g_975[i].f1", print_hash_value);
        transparent_crc(p_2242->g_975[i].f2, "p_2242->g_975[i].f2", print_hash_value);

    }
    transparent_crc(p_2242->g_1015.f0, "p_2242->g_1015.f0", print_hash_value);
    transparent_crc(p_2242->g_1039, "p_2242->g_1039", print_hash_value);
    transparent_crc(p_2242->g_1138.f0, "p_2242->g_1138.f0", print_hash_value);
    transparent_crc(p_2242->g_1138.f1, "p_2242->g_1138.f1", print_hash_value);
    transparent_crc(p_2242->g_1138.f2, "p_2242->g_1138.f2", print_hash_value);
    transparent_crc(p_2242->g_1150, "p_2242->g_1150", print_hash_value);
    transparent_crc(p_2242->g_1220, "p_2242->g_1220", print_hash_value);
    transparent_crc(p_2242->g_1244.f0, "p_2242->g_1244.f0", print_hash_value);
    transparent_crc(p_2242->g_1250, "p_2242->g_1250", print_hash_value);
    transparent_crc(p_2242->g_1288.f0, "p_2242->g_1288.f0", print_hash_value);
    transparent_crc(p_2242->g_1383.f0, "p_2242->g_1383.f0", print_hash_value);
    transparent_crc(p_2242->g_1387, "p_2242->g_1387", print_hash_value);
    transparent_crc(p_2242->g_1466.f0, "p_2242->g_1466.f0", print_hash_value);
    transparent_crc(p_2242->g_1466.f1, "p_2242->g_1466.f1", print_hash_value);
    transparent_crc(p_2242->g_1466.f2, "p_2242->g_1466.f2", print_hash_value);
    transparent_crc(p_2242->g_1470.f0, "p_2242->g_1470.f0", print_hash_value);
    transparent_crc(p_2242->g_1531.f0, "p_2242->g_1531.f0", print_hash_value);
    transparent_crc(p_2242->g_1531.f1, "p_2242->g_1531.f1", print_hash_value);
    transparent_crc(p_2242->g_1531.f2, "p_2242->g_1531.f2", print_hash_value);
    transparent_crc(p_2242->g_1700.f0, "p_2242->g_1700.f0", print_hash_value);
    transparent_crc(p_2242->g_1700.f1, "p_2242->g_1700.f1", print_hash_value);
    transparent_crc(p_2242->g_1700.f2, "p_2242->g_1700.f2", print_hash_value);
    transparent_crc(p_2242->g_1716, "p_2242->g_1716", print_hash_value);
    transparent_crc(p_2242->g_1721.f0, "p_2242->g_1721.f0", print_hash_value);
    transparent_crc(p_2242->g_1721.f1, "p_2242->g_1721.f1", print_hash_value);
    transparent_crc(p_2242->g_1721.f2, "p_2242->g_1721.f2", print_hash_value);
    transparent_crc(p_2242->g_1815, "p_2242->g_1815", print_hash_value);
    transparent_crc(p_2242->g_1850.f0, "p_2242->g_1850.f0", print_hash_value);
    transparent_crc(p_2242->g_1873.f0, "p_2242->g_1873.f0", print_hash_value);
    transparent_crc(p_2242->g_1895.f0, "p_2242->g_1895.f0", print_hash_value);
    transparent_crc(p_2242->g_1932.f0, "p_2242->g_1932.f0", print_hash_value);
    transparent_crc(p_2242->g_1932.f1, "p_2242->g_1932.f1", print_hash_value);
    transparent_crc(p_2242->g_1932.f2, "p_2242->g_1932.f2", print_hash_value);
    transparent_crc(p_2242->g_1991, "p_2242->g_1991", print_hash_value);
    transparent_crc(p_2242->g_1992, "p_2242->g_1992", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_2242->g_2008[i].f0, "p_2242->g_2008[i].f0", print_hash_value);
        transparent_crc(p_2242->g_2008[i].f1, "p_2242->g_2008[i].f1", print_hash_value);
        transparent_crc(p_2242->g_2008[i].f2, "p_2242->g_2008[i].f2", print_hash_value);

    }
    transparent_crc(p_2242->g_2035, "p_2242->g_2035", print_hash_value);
    transparent_crc(p_2242->g_2072.f0, "p_2242->g_2072.f0", print_hash_value);
    transparent_crc(p_2242->g_2072.f1, "p_2242->g_2072.f1", print_hash_value);
    transparent_crc(p_2242->g_2072.f2, "p_2242->g_2072.f2", print_hash_value);
    transparent_crc(p_2242->g_2088.f0, "p_2242->g_2088.f0", print_hash_value);
    transparent_crc(p_2242->g_2088.f1, "p_2242->g_2088.f1", print_hash_value);
    transparent_crc(p_2242->g_2088.f2, "p_2242->g_2088.f2", print_hash_value);
    transparent_crc(p_2242->g_2124.f0, "p_2242->g_2124.f0", print_hash_value);
    transparent_crc(p_2242->g_2124.f1, "p_2242->g_2124.f1", print_hash_value);
    transparent_crc(p_2242->g_2124.f2, "p_2242->g_2124.f2", print_hash_value);
    transparent_crc(p_2242->g_2139.f0, "p_2242->g_2139.f0", print_hash_value);
    transparent_crc(p_2242->g_2139.f1, "p_2242->g_2139.f1", print_hash_value);
    transparent_crc(p_2242->g_2139.f2, "p_2242->g_2139.f2", print_hash_value);
    transparent_crc(p_2242->g_2157.f0, "p_2242->g_2157.f0", print_hash_value);
    transparent_crc(p_2242->g_2157.f1, "p_2242->g_2157.f1", print_hash_value);
    transparent_crc(p_2242->g_2157.f2, "p_2242->g_2157.f2", print_hash_value);
    transparent_crc(p_2242->g_2195, "p_2242->g_2195", print_hash_value);
    transparent_crc(p_2242->g_2205.f0, "p_2242->g_2205.f0", print_hash_value);
    transparent_crc(p_2242->g_2205.f1, "p_2242->g_2205.f1", print_hash_value);
    transparent_crc(p_2242->g_2205.f2, "p_2242->g_2205.f2", print_hash_value);
    transparent_crc(p_2242->g_2208.f0, "p_2242->g_2208.f0", print_hash_value);
    transparent_crc(p_2242->g_2208.f1, "p_2242->g_2208.f1", print_hash_value);
    transparent_crc(p_2242->g_2208.f2, "p_2242->g_2208.f2", print_hash_value);
    transparent_crc(p_2242->g_2211, "p_2242->g_2211", print_hash_value);
    transparent_crc(p_2242->l_comm_values[get_linear_local_id()], "p_2242->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_2242->g_comm_values[get_linear_group_id() * 35 + get_linear_local_id()], "p_2242->g_comm_values[get_linear_group_id() * 35 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
