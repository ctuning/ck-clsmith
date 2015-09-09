// --atomics 28 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 94,40,2 -l 1,20,2
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

__constant uint32_t permutations[10][40] = {
{27,7,13,38,18,8,37,15,39,20,22,34,26,33,4,19,21,23,14,0,31,32,28,11,3,10,36,16,6,24,30,1,17,12,9,25,35,5,2,29}, // permutation 0
{22,32,16,8,17,38,21,10,24,33,2,9,39,29,1,27,5,15,25,19,37,12,23,30,4,13,7,14,26,11,34,18,31,36,20,6,0,3,35,28}, // permutation 1
{21,35,24,3,19,2,9,22,11,36,29,4,10,30,33,15,37,28,0,7,1,20,6,31,17,38,23,18,39,14,16,5,12,34,32,8,25,26,13,27}, // permutation 2
{19,31,25,2,1,34,5,35,7,0,13,26,16,15,8,12,29,18,37,4,30,21,32,39,33,9,3,28,20,38,24,6,23,14,22,17,10,11,27,36}, // permutation 3
{20,0,16,39,36,5,26,34,8,30,25,33,38,21,1,19,12,29,7,31,23,22,2,28,27,10,18,37,11,32,17,13,35,9,15,4,6,14,3,24}, // permutation 4
{13,27,20,34,36,0,23,29,15,26,17,30,21,39,6,8,9,32,16,14,3,24,5,7,33,11,38,37,12,25,31,18,2,10,22,35,28,4,1,19}, // permutation 5
{19,17,27,33,3,9,22,2,31,14,5,24,36,21,28,13,4,23,38,8,26,39,35,25,34,37,29,10,30,7,16,1,32,12,18,6,20,0,11,15}, // permutation 6
{24,25,23,30,7,10,0,1,36,9,35,8,29,19,11,16,12,4,6,21,13,17,14,26,3,18,38,37,34,33,5,28,22,32,15,2,20,39,27,31}, // permutation 7
{37,30,25,15,21,12,39,32,9,19,6,24,33,18,14,13,38,5,4,26,17,34,1,0,31,10,8,11,28,36,35,22,7,3,23,29,2,27,20,16}, // permutation 8
{36,25,16,32,37,6,1,12,38,21,28,3,39,30,34,10,23,35,19,4,24,2,27,9,29,18,20,0,31,5,26,11,13,14,7,15,17,8,22,33} // permutation 9
};

// Seed: 78

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int32_t  f0;
   int64_t  f1;
   volatile int32_t  f2;
   int32_t  f3;
   uint32_t  f4;
   volatile int32_t  f5;
   int32_t  f6;
   uint32_t  f7;
   volatile int64_t  f8;
   int32_t  f9;
};

union U1 {
   struct S0  f0;
   uint32_t  f1;
   int64_t  f2;
};

struct S2 {
    int32_t g_4;
    int32_t g_6;
    int32_t * volatile g_5;
    VECTOR(int8_t, 16) g_45;
    int32_t g_67;
    int32_t g_72;
    int32_t * volatile g_76;
    uint64_t g_90;
    int16_t g_97[7][7][5];
    int8_t g_98;
    volatile uint8_t g_99;
    struct S0 g_103;
    int32_t *g_130;
    int32_t ** volatile g_129[10][4];
    struct S0 *g_166;
    struct S0 **g_165;
    union U1 g_176;
    volatile VECTOR(int8_t, 2) g_261;
    volatile VECTOR(int8_t, 16) g_262;
    VECTOR(uint8_t, 8) g_264;
    VECTOR(uint8_t, 16) g_268;
    VECTOR(int8_t, 4) g_287;
    int64_t *g_356;
    int32_t g_358[9][2];
    VECTOR(int32_t, 16) g_404;
    volatile VECTOR(int8_t, 16) g_408;
    volatile VECTOR(int32_t, 2) g_409;
    VECTOR(uint64_t, 16) g_435;
    int32_t g_445;
    struct S0 * volatile g_457[6][10][4];
    struct S0 * volatile g_458;
    struct S0 * volatile g_460;
    struct S0 g_474[10];
    struct S0 g_475;
    int32_t *g_489;
    union U1 g_537;
    volatile int32_t g_541;
    volatile int32_t * volatile g_540;
    volatile int32_t g_543;
    volatile int32_t * volatile g_542;
    volatile int32_t g_545;
    volatile int32_t *g_544;
    volatile int32_t * volatile *g_539[8][10];
    int32_t ** volatile g_552;
    volatile union U1 g_581;
    VECTOR(int16_t, 8) g_582;
    VECTOR(uint32_t, 2) g_587;
    volatile VECTOR(uint32_t, 8) g_597;
    struct S0 g_655;
    union U1 ** volatile g_660;
    union U1 g_680;
    VECTOR(uint8_t, 2) g_708;
    union U1 *g_733[3][8];
    union U1 g_745;
    uint16_t g_747[3][2][3];
    volatile struct S0 g_748[7];
    volatile int32_t g_750[4][9];
    volatile int32_t g_752;
    struct S0 g_760[5][4][7];
    volatile VECTOR(int8_t, 16) g_776;
    uint8_t *g_816[2];
    struct S0 g_819[4][4][2];
    int32_t ** volatile g_824;
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
uint64_t  func_1(struct S2 * p_865);
int32_t * func_7(int32_t  p_8, int32_t * p_9, int64_t  p_10, struct S2 * p_865);
int32_t * func_11(int32_t * p_12, int32_t * p_13, uint64_t  p_14, int32_t * p_15, uint32_t  p_16, struct S2 * p_865);
int32_t * func_25(int32_t  p_26, int32_t * p_27, uint16_t  p_28, uint64_t  p_29, struct S2 * p_865);
uint64_t  func_40(int32_t * p_41, int32_t * p_42, uint32_t  p_43, uint32_t  p_44, struct S2 * p_865);
int8_t  func_46(uint32_t  p_47, struct S2 * p_865);
int32_t * func_54(int8_t * p_55, int32_t * p_56, struct S2 * p_865);
int8_t * func_57(int64_t  p_58, int32_t * p_59, int8_t * p_60, struct S2 * p_865);
int32_t * func_61(int32_t * p_62, int32_t  p_63, int32_t * p_64, struct S2 * p_865);
int32_t * func_68(int8_t  p_69, int32_t * p_70, struct S2 * p_865);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_865->g_5 p_865->g_6 p_865->g_4 p_865->g_comm_values p_865->l_comm_values p_865->g_45 p_865->g_261 p_865->g_262 p_865->g_264 p_865->g_268 p_865->g_90 p_865->g_287 p_865->g_176.f0.f4 p_865->g_130 p_865->g_176.f0.f7 p_865->g_165 p_865->g_166 p_865->g_103.f7 p_865->g_103.f0 p_865->g_72 p_865->g_103.f9 p_865->g_76 p_865->g_99 p_865->g_103 p_865->g_435 p_865->g_409 p_865->g_98 p_865->g_176.f0.f3 p_865->g_458 p_865->g_460 p_865->g_97 p_865->g_474 p_865->g_489 p_865->g_445 p_865->g_404 p_865->g_475.f9 p_865->g_537 p_865->g_539 p_865->g_552 p_865->g_581 p_865->g_475.f4 p_865->g_475.f0 p_865->g_655 p_865->g_680 p_865->g_537.f0.f3 p_865->g_680.f0.f4 p_865->g_176.f0.f6 p_865->g_358 p_865->g_176.f0.f1 p_865->g_745 p_865->g_67 p_865->g_537.f0.f6 p_865->g_176.f0.f0 p_865->g_748 p_865->g_760 p_865->g_745.f0.f9 p_865->g_776 p_865->g_819 p_865->g_475.f2 p_865->g_816 p_865->g_537.f2 p_865->g_824
 * writes: p_865->g_4 p_865->g_6 p_865->g_45 p_865->g_90 p_865->l_comm_values p_865->g_97 p_865->g_72 p_865->g_176.f0.f4 p_865->g_103.f9 p_865->g_99 p_865->g_103.f3 p_865->g_103 p_865->g_445 p_865->g_176.f0 p_865->g_130 p_865->g_475 p_865->g_489 p_865->g_264 p_865->g_474.f3 p_865->g_268 p_865->g_287 p_865->g_166 p_865->g_537.f0.f6 p_865->g_747 p_865->g_67 p_865->g_474 p_865->g_680.f0.f9 p_865->g_745.f0.f9 p_865->g_745.f0.f0 p_865->g_537.f0.f4 p_865->g_760 p_865->g_537.f2 p_865->g_655.f9
 */
uint64_t  func_1(struct S2 * p_865)
{ /* block id: 4 */
    int64_t l_2 = 0x04CCB63E8E1B8814L;
    int32_t *l_3 = &p_865->g_4;
    VECTOR(uint16_t, 2) l_17 = (VECTOR(uint16_t, 2))(0x8FE2L, 0UL);
    int16_t l_22 = 0x0EA2L;
    int i;
    (*p_865->g_5) &= ((*l_3) = l_2);
    (*p_865->g_824) = func_7((*l_3), func_11(l_3, (((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(add_sat(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(hadd(((VECTOR(uint16_t, 2))(l_17.xy)).xyxy, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(0x609FL, 0UL, (safe_div_func_int64_t_s_s((p_865->g_4 & 0x26L), (safe_lshift_func_int8_t_s_u((l_22 , p_865->g_comm_values[p_865->tid]), p_865->g_6)))), ((safe_mul_func_int8_t_s_s(0x7BL, (p_865->l_comm_values[(safe_mod_func_uint32_t_u_u(p_865->tid, 40))] | 0UL))) <= (*l_3)), ((VECTOR(uint16_t, 2))(0xEF7EL)), 0x1920L, 7UL)).s57)))).yyxy))).wwyzwyxxzyxyzwxy)).s0707)).zzyxwyxw, ((VECTOR(uint16_t, 8))(0x4DE5L))))))).lo)).x , (void*)0), p_865->g_6, l_3, p_865->g_comm_values[p_865->tid], p_865), (*l_3), p_865);
    for (p_865->g_655.f9 = 24; (p_865->g_655.f9 <= (-30)); p_865->g_655.f9 = safe_sub_func_uint8_t_u_u(p_865->g_655.f9, 8))
    { /* block id: 404 */
        if ((atomic_inc(&p_865->l_atomic_input[7]) == 9))
        { /* block id: 406 */
            int32_t l_827[6][4] = {{(-7L),0x3C7059B9L,0x0E36C088L,0x3C7059B9L},{(-7L),0x3C7059B9L,0x0E36C088L,0x3C7059B9L},{(-7L),0x3C7059B9L,0x0E36C088L,0x3C7059B9L},{(-7L),0x3C7059B9L,0x0E36C088L,0x3C7059B9L},{(-7L),0x3C7059B9L,0x0E36C088L,0x3C7059B9L},{(-7L),0x3C7059B9L,0x0E36C088L,0x3C7059B9L}};
            VECTOR(int32_t, 8) l_862 = (VECTOR(int32_t, 8))(0x4BA0CF5DL, (VECTOR(int32_t, 4))(0x4BA0CF5DL, (VECTOR(int32_t, 2))(0x4BA0CF5DL, 0x6B8BB146L), 0x6B8BB146L), 0x6B8BB146L, 0x4BA0CF5DL, 0x6B8BB146L);
            VECTOR(int32_t, 4) l_863 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-3L)), (-3L));
            int32_t l_864[6][8] = {{(-1L),(-5L),(-1L),(-1L),(-5L),(-1L),(-1L),(-5L)},{(-1L),(-5L),(-1L),(-1L),(-5L),(-1L),(-1L),(-5L)},{(-1L),(-5L),(-1L),(-1L),(-5L),(-1L),(-1L),(-5L)},{(-1L),(-5L),(-1L),(-1L),(-5L),(-1L),(-1L),(-5L)},{(-1L),(-5L),(-1L),(-1L),(-5L),(-1L),(-1L),(-5L)},{(-1L),(-5L),(-1L),(-1L),(-5L),(-1L),(-1L),(-5L)}};
            int i, j;
            for (l_827[0][1] = 19; (l_827[0][1] > (-8)); l_827[0][1] = safe_sub_func_int32_t_s_s(l_827[0][1], 3))
            { /* block id: 409 */
                struct S0 l_830 = {8L,0x7AEF4F52B8221C63L,-1L,-1L,0xBA4F39EAL,-4L,0x14D42A69L,0x58BF5AC2L,0x48360F2A337D7C60L,0x1EC52ECAL};/* VOLATILE GLOBAL l_830 */
                int32_t *l_831 = &l_830.f3;
                int32_t *l_832 = &l_830.f9;
                struct S0 l_833 = {0x4C70EFAAL,0x5992C2F6B2FE371BL,0x6F299FB1L,-7L,0x83C59851L,0L,-1L,0xD2CA708AL,0L,1L};/* VOLATILE GLOBAL l_833 */
                struct S0 l_834 = {-1L,0x4A8CA5D37FBEC9B8L,0x31952A91L,0x5E91B675L,0UL,-5L,0L,2UL,0x3DBC27AF1F521831L,1L};/* VOLATILE GLOBAL l_834 */
                uint8_t l_835[5];
                int i;
                for (i = 0; i < 5; i++)
                    l_835[i] = 1UL;
                l_832 = (l_830 , l_831);
                l_834 = l_833;
                if (l_835[2])
                { /* block id: 412 */
                    int32_t l_837 = (-10L);
                    int32_t *l_836 = &l_837;
                    int32_t l_847 = 0x53A9CF81L;
                    int32_t *l_856 = &l_837;
                    l_831 = l_836;
                    for (l_837 = 0; (l_837 >= 14); l_837++)
                    { /* block id: 416 */
                        int32_t l_841 = 0x211E649EL;
                        int32_t *l_840 = &l_841;
                        int32_t l_842 = (-1L);
                        uint16_t l_843 = 65526UL;
                        int32_t *l_846 = &l_841;
                        l_836 = l_840;
                        ++l_843;
                        l_846 = l_846;
                    }
                    if (l_847)
                    { /* block id: 421 */
                        uint64_t l_848 = 0UL;
                        int32_t l_850 = 0x5C6217DDL;
                        int32_t *l_849 = &l_850;
                        (*l_832) &= (l_848 , 0x4E67198CL);
                        l_849 = (l_832 = (void*)0);
                    }
                    else
                    { /* block id: 425 */
                        uint32_t l_851 = 4294967291UL;
                        struct S0 l_854[6] = {{0x3BACDA8DL,0x45BAC832E9F58741L,-5L,8L,0xAC38D7FBL,0x07A1C100L,0L,0UL,1L,-1L},{1L,1L,0x589AD5FCL,-1L,0xA094BC7BL,0x111670B3L,0L,4UL,0x5704AF6C4F8BE3F0L,-1L},{0x3BACDA8DL,0x45BAC832E9F58741L,-5L,8L,0xAC38D7FBL,0x07A1C100L,0L,0UL,1L,-1L},{0x3BACDA8DL,0x45BAC832E9F58741L,-5L,8L,0xAC38D7FBL,0x07A1C100L,0L,0UL,1L,-1L},{1L,1L,0x589AD5FCL,-1L,0xA094BC7BL,0x111670B3L,0L,4UL,0x5704AF6C4F8BE3F0L,-1L},{0x3BACDA8DL,0x45BAC832E9F58741L,-5L,8L,0xAC38D7FBL,0x07A1C100L,0L,0UL,1L,-1L}};
                        int32_t *l_855 = &l_854[5].f3;
                        int i;
                        ++l_851;
                        l_830 = l_854[5];
                        l_831 = (l_832 = (void*)0);
                        l_831 = l_855;
                    }
                    l_831 = l_856;
                }
                else
                { /* block id: 433 */
                    uint32_t l_857 = 4294967286UL;
                    int32_t l_858 = 2L;
                    uint64_t l_859 = 0x4662A6F015545252L;
                    VECTOR(int32_t, 8) l_860 = (VECTOR(int32_t, 8))(0x4FD10BE1L, (VECTOR(int32_t, 4))(0x4FD10BE1L, (VECTOR(int32_t, 2))(0x4FD10BE1L, 0x1CD2C2CCL), 0x1CD2C2CCL), 0x1CD2C2CCL, 0x4FD10BE1L, 0x1CD2C2CCL);
                    uint16_t l_861 = 65529UL;
                    int i;
                    (*l_832) = ((l_858 ^= l_857) , l_859);
                    (*l_831) = ((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),int32_t,((VECTOR(int32_t, 4))(l_860.s5623)).hi, (int32_t)(-9L), (int32_t)l_861))).odd;
                }
            }
            l_862.s5 = (l_864[3][7] = ((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 2))(l_862.s55)).xxxy, ((VECTOR(int32_t, 16))(l_863.xzwxyzwywxwywxyw)).sa650))).z);
            unsigned int result = 0;
            int l_827_i0, l_827_i1;
            for (l_827_i0 = 0; l_827_i0 < 6; l_827_i0++) {
                for (l_827_i1 = 0; l_827_i1 < 4; l_827_i1++) {
                    result += l_827[l_827_i0][l_827_i1];
                }
            }
            result += l_862.s7;
            result += l_862.s6;
            result += l_862.s5;
            result += l_862.s4;
            result += l_862.s3;
            result += l_862.s2;
            result += l_862.s1;
            result += l_862.s0;
            result += l_863.w;
            result += l_863.z;
            result += l_863.y;
            result += l_863.x;
            int l_864_i0, l_864_i1;
            for (l_864_i0 = 0; l_864_i0 < 6; l_864_i0++) {
                for (l_864_i1 = 0; l_864_i1 < 8; l_864_i1++) {
                    result += l_864[l_864_i0][l_864_i1];
                }
            }
            atomic_add(&p_865->l_special_values[7], result);
        }
        else
        { /* block id: 441 */
            (1 + 1);
        }
    }
    return p_865->g_474[6].f7;
}


/* ------------------------------------------ */
/* 
 * reads : p_865->g_475.f9 p_865->g_165 p_865->g_166 p_865->g_537 p_865->g_539 p_865->g_76 p_865->g_6 p_865->g_90 p_865->g_45 p_865->g_72 p_865->g_comm_values p_865->g_99 p_865->g_552 p_865->g_474.f8 p_865->g_581 p_865->g_489 p_865->g_474.f3 p_865->g_268 p_865->g_475.f4 p_865->g_475.f0 p_865->g_130 p_865->g_655 p_865->g_680 p_865->g_474 p_865->g_103 p_865->g_97 p_865->g_537.f0.f3 p_865->g_680.f0.f4 p_865->g_176.f0.f6 p_865->g_358 p_865->g_176.f0.f1 p_865->g_98 p_865->g_745 p_865->g_67 p_865->g_537.f0.f6 p_865->g_176.f0.f0 p_865->g_748 p_865->g_760 p_865->g_776 p_865->g_4 p_865->g_176.f0.f4 p_865->g_745.f0.f9 p_865->g_475.f2 p_865->g_816 p_865->g_819 p_865->g_537.f2
 * writes: p_865->g_475.f9 p_865->g_6 p_865->g_90 p_865->g_99 p_865->g_130 p_865->g_4 p_865->g_97 p_865->g_176.f0.f3 p_865->g_475.f0 p_865->g_537.f0.f6 p_865->g_474.f3 p_865->g_747 p_865->g_67 p_865->g_176.f0.f0 p_865->g_474 p_865->g_103 p_865->g_680.f0.f9 p_865->g_176.f0.f4 p_865->g_745.f0.f9 p_865->g_745.f0.f0 p_865->g_537.f0.f4 p_865->g_760 p_865->g_537.f2
 */
int32_t * func_7(int32_t  p_8, int32_t * p_9, int64_t  p_10, struct S2 * p_865)
{ /* block id: 240 */
    int16_t *l_538 = &p_865->g_97[6][4][2];
    int32_t **l_546 = (void*)0;
    int32_t l_550[1];
    int32_t *l_551[5] = {&p_865->g_176.f0.f0,&p_865->g_176.f0.f0,&p_865->g_176.f0.f0,&p_865->g_176.f0.f0,&p_865->g_176.f0.f0};
    VECTOR(uint32_t, 4) l_590 = (VECTOR(uint32_t, 4))(0xF3D919E5L, (VECTOR(uint32_t, 2))(0xF3D919E5L, 0x7117994CL), 0x7117994CL);
    VECTOR(int16_t, 8) l_591 = (VECTOR(int16_t, 8))((-5L), (VECTOR(int16_t, 4))((-5L), (VECTOR(int16_t, 2))((-5L), 9L), 9L), 9L, (-5L), 9L);
    VECTOR(uint32_t, 2) l_598 = (VECTOR(uint32_t, 2))(4UL, 9UL);
    VECTOR(int8_t, 2) l_616 = (VECTOR(int8_t, 2))(0x6AL, (-2L));
    int32_t l_751 = 0L;
    int64_t **l_759 = &p_865->g_356;
    int i;
    for (i = 0; i < 1; i++)
        l_550[i] = 0x6843C12EL;
    for (p_865->g_475.f9 = (-23); (p_865->g_475.f9 == (-8)); p_865->g_475.f9 = safe_add_func_uint16_t_u_u(p_865->g_475.f9, 8))
    { /* block id: 243 */
        VECTOR(uint32_t, 8) l_526 = (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967295UL), 4294967295UL), 4294967295UL, 4294967295UL, 4294967295UL);
        uint8_t *l_547 = (void*)0;
        uint8_t *l_548 = (void*)0;
        uint8_t *l_549[4][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        VECTOR(uint32_t, 2) l_588 = (VECTOR(uint32_t, 2))(0x4133D63DL, 4294967294UL);
        VECTOR(int16_t, 2) l_594 = (VECTOR(int16_t, 2))((-1L), (-3L));
        int32_t l_625 = 1L;
        int32_t l_627 = (-1L);
        int32_t l_631 = 2L;
        int32_t l_632[5];
        VECTOR(int16_t, 2) l_765 = (VECTOR(int16_t, 2))(0x6AB5L, 0x4E04L);
        int64_t **l_771 = &p_865->g_356;
        VECTOR(uint16_t, 4) l_811 = (VECTOR(uint16_t, 4))(0xE7D6L, (VECTOR(uint16_t, 2))(0xE7D6L, 0x31D0L), 0x31D0L);
        int32_t *l_814 = &l_627;
        int i, j;
        for (i = 0; i < 5; i++)
            l_632[i] = (-9L);
        (*p_865->g_552) = func_68((safe_add_func_uint8_t_u_u((((VECTOR(uint32_t, 16))(l_526.s7517340532141322)).s1 ^ ((void*)0 == (*p_865->g_165))), (safe_div_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u((l_550[0] ^= (safe_div_func_uint16_t_u_u(((safe_div_func_int8_t_s_s(l_526.s3, 0x85L)) == (((p_865->g_537 , l_538) != (p_10 , (void*)0)) > (p_865->g_539[3][8] == l_546))), (-1L)))), 1)), p_10)))), l_551[0], p_865);
        if ((atomic_inc(&p_865->g_atomic_input[28 * get_linear_group_id() + 25]) == 1))
        { /* block id: 247 */
            int64_t l_553 = (-3L);
            uint32_t l_554 = 0UL;
            int8_t l_555 = 0x3CL;
            int32_t l_573 = 1L;
            int32_t *l_572 = &l_573;
            int32_t *l_574 = &l_573;
            l_555 ^= (l_554 = l_553);
            for (l_555 = 0; (l_555 == (-11)); l_555--)
            { /* block id: 252 */
                int64_t l_558 = 1L;
                int32_t l_559 = 1L;
                uint32_t l_560 = 6UL;
                int32_t l_563 = 0x326384EFL;
                int32_t l_564 = 0x3608441CL;
                uint16_t l_565[8];
                int32_t l_568 = 0x048893C0L;
                uint64_t l_569 = 18446744073709551615UL;
                struct S0 l_570 = {-6L,0x27EEA0ADAE6EBE62L,0L,1L,4294967289UL,0x62475DE2L,1L,1UL,0x195962409035E7C8L,0x767FDD2EL};/* VOLATILE GLOBAL l_570 */
                struct S0 l_571 = {0x6E2B75CBL,0x67ED77362A070537L,0x14E506D3L,0x48BF81D0L,5UL,0x074735EAL,-9L,1UL,0L,-5L};/* VOLATILE GLOBAL l_571 */
                int i;
                for (i = 0; i < 8; i++)
                    l_565[i] = 1UL;
                --l_560;
                l_565[7]++;
                l_571 = ((l_568 , l_569) , l_570);
            }
            l_574 = l_572;
            unsigned int result = 0;
            result += l_553;
            result += l_554;
            result += l_555;
            result += l_573;
            atomic_add(&p_865->g_special_values[28 * get_linear_group_id() + 25], result);
        }
        else
        { /* block id: 258 */
            (1 + 1);
        }
        for (p_865->g_4 = 0; (p_865->g_4 != (-8)); --p_865->g_4)
        { /* block id: 263 */
            VECTOR(uint32_t, 2) l_589 = (VECTOR(uint32_t, 2))(7UL, 4294967289UL);
            int32_t *l_605 = &p_865->g_67;
            VECTOR(int8_t, 4) l_617 = (VECTOR(int8_t, 4))(0x4EL, (VECTOR(int8_t, 2))(0x4EL, 0x7FL), 0x7FL);
            int32_t l_629 = 0x76D68BF4L;
            int32_t l_630 = (-1L);
            int32_t l_633 = 1L;
            int32_t l_637[6] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
            uint8_t l_671 = 0x32L;
            int32_t l_679 = (-1L);
            VECTOR(uint8_t, 4) l_683 = (VECTOR(uint8_t, 4))(0x4FL, (VECTOR(uint8_t, 2))(0x4FL, 247UL), 247UL);
            int32_t l_720[4][7][8] = {{{0L,9L,(-9L),(-1L),1L,(-1L),(-9L),9L},{0L,9L,(-9L),(-1L),1L,(-1L),(-9L),9L},{0L,9L,(-9L),(-1L),1L,(-1L),(-9L),9L},{0L,9L,(-9L),(-1L),1L,(-1L),(-9L),9L},{0L,9L,(-9L),(-1L),1L,(-1L),(-9L),9L},{0L,9L,(-9L),(-1L),1L,(-1L),(-9L),9L},{0L,9L,(-9L),(-1L),1L,(-1L),(-9L),9L}},{{0L,9L,(-9L),(-1L),1L,(-1L),(-9L),9L},{0L,9L,(-9L),(-1L),1L,(-1L),(-9L),9L},{0L,9L,(-9L),(-1L),1L,(-1L),(-9L),9L},{0L,9L,(-9L),(-1L),1L,(-1L),(-9L),9L},{0L,9L,(-9L),(-1L),1L,(-1L),(-9L),9L},{0L,9L,(-9L),(-1L),1L,(-1L),(-9L),9L},{0L,9L,(-9L),(-1L),1L,(-1L),(-9L),9L}},{{0L,9L,(-9L),(-1L),1L,(-1L),(-9L),9L},{0L,9L,(-9L),(-1L),1L,(-1L),(-9L),9L},{0L,9L,(-9L),(-1L),1L,(-1L),(-9L),9L},{0L,9L,(-9L),(-1L),1L,(-1L),(-9L),9L},{0L,9L,(-9L),(-1L),1L,(-1L),(-9L),9L},{0L,9L,(-9L),(-1L),1L,(-1L),(-9L),9L},{0L,9L,(-9L),(-1L),1L,(-1L),(-9L),9L}},{{0L,9L,(-9L),(-1L),1L,(-1L),(-9L),9L},{0L,9L,(-9L),(-1L),1L,(-1L),(-9L),9L},{0L,9L,(-9L),(-1L),1L,(-1L),(-9L),9L},{0L,9L,(-9L),(-1L),1L,(-1L),(-9L),9L},{0L,9L,(-9L),(-1L),1L,(-1L),(-9L),9L},{0L,9L,(-9L),(-1L),1L,(-1L),(-9L),9L},{0L,9L,(-9L),(-1L),1L,(-1L),(-9L),9L}}};
            uint64_t l_722 = 0xA52537CB7D155CBEL;
            union U1 *l_737 = (void*)0;
            union U1 **l_736[9] = {&l_737,&l_737,&l_737,&l_737,&l_737,&l_737,&l_737,&l_737,&l_737};
            int64_t **l_758 = &p_865->g_356;
            VECTOR(uint64_t, 16) l_812 = (VECTOR(uint64_t, 16))(0xEBF9CEC94B407987L, (VECTOR(uint64_t, 4))(0xEBF9CEC94B407987L, (VECTOR(uint64_t, 2))(0xEBF9CEC94B407987L, 5UL), 5UL), 5UL, 0xEBF9CEC94B407987L, 5UL, (VECTOR(uint64_t, 2))(0xEBF9CEC94B407987L, 5UL), (VECTOR(uint64_t, 2))(0xEBF9CEC94B407987L, 5UL), 0xEBF9CEC94B407987L, 5UL, 0xEBF9CEC94B407987L, 5UL);
            int i, j, k;
            if ((((safe_add_func_int16_t_s_s((p_865->g_474[6].f8 , (((safe_div_func_uint16_t_u_u((!(p_865->g_581 , (((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 8))(sub_sat(((VECTOR(int16_t, 16))(max(((VECTOR(int16_t, 16))(p_865->g_582.s7261743175645104)), (int16_t)((safe_lshift_func_int8_t_s_u(p_8, (safe_lshift_func_int16_t_s_u((((VECTOR(uint32_t, 2))(abs(((VECTOR(uint32_t, 8))(rhadd(((VECTOR(uint32_t, 2))(sub_sat(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(mad_hi(((VECTOR(uint32_t, 4))(p_865->g_587.xyyy)).lo, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(0xADCEFF77L, 0x4900C105L)), 0xD0ED0CD9L, 2UL)).even, ((VECTOR(uint32_t, 8))(rotate(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(l_588.yyyyyyxyyyxyyxyx)).seb37)).xzwxwyxyxxwwwzyx)).odd, ((VECTOR(uint32_t, 2))(0xA029B0CAL, 4294967295UL)).xxyxxyxx))).s33))).yyyyxyxxyxyyyyxx)).s02, ((VECTOR(uint32_t, 8))(l_589.xyxxyxyx)).s54))).yxyxxyyx, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(l_590.zxyxyzzz))))))).s21))).even , p_8), 10)))) && (p_8 | p_8))))).hi, ((VECTOR(int16_t, 2))(l_591.s61)).xyxyyyyy))).hi, ((VECTOR(uint16_t, 16))(abs(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 16),((VECTOR(int16_t, 2))(0x462DL, 0x0A98L)).yxyyxyxxxyyxyxyy, ((VECTOR(int16_t, 4))(upsample(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(0x34L, (-4L))).xyyy)))), ((VECTOR(uint8_t, 4))(254UL, (safe_sub_func_int16_t_s_s((-5L), 65535UL)), 255UL, 0x64L))))).wyxzxyywyxxxyzwy, ((VECTOR(int16_t, 8))(l_594.yyxxyxyy)).s2075632217405262))).s19)).xxxyyxyyxyxxyxxx))).sef59))).xwxwzzyw)).s0 | (safe_add_func_uint32_t_u_u(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(rotate(((VECTOR(uint32_t, 16))(p_865->g_597.s2406142711624204)).sd73c, ((VECTOR(uint32_t, 2))(max(((VECTOR(uint32_t, 2))(4294967290UL, 0UL)), ((VECTOR(uint32_t, 16))(l_598.xyxxxyyyyxxxxxyx)).s2f))).xxyx))), 4294967294UL, p_10, 4294967294UL, 0x06908017L)).s2, (*p_865->g_489)))))), p_8)) || 0x7B0BL) && GROUP_DIVERGE(2, 1))), 0x52CDL)) < (-1L)) || 4UL))
            { /* block id: 264 */
                int16_t *l_603[3][5][5] = {{{&p_865->g_97[6][6][1],&p_865->g_97[6][6][1],&p_865->g_97[6][6][1],(void*)0,(void*)0},{&p_865->g_97[6][6][1],&p_865->g_97[6][6][1],&p_865->g_97[6][6][1],(void*)0,(void*)0},{&p_865->g_97[6][6][1],&p_865->g_97[6][6][1],&p_865->g_97[6][6][1],(void*)0,(void*)0},{&p_865->g_97[6][6][1],&p_865->g_97[6][6][1],&p_865->g_97[6][6][1],(void*)0,(void*)0},{&p_865->g_97[6][6][1],&p_865->g_97[6][6][1],&p_865->g_97[6][6][1],(void*)0,(void*)0}},{{&p_865->g_97[6][6][1],&p_865->g_97[6][6][1],&p_865->g_97[6][6][1],(void*)0,(void*)0},{&p_865->g_97[6][6][1],&p_865->g_97[6][6][1],&p_865->g_97[6][6][1],(void*)0,(void*)0},{&p_865->g_97[6][6][1],&p_865->g_97[6][6][1],&p_865->g_97[6][6][1],(void*)0,(void*)0},{&p_865->g_97[6][6][1],&p_865->g_97[6][6][1],&p_865->g_97[6][6][1],(void*)0,(void*)0},{&p_865->g_97[6][6][1],&p_865->g_97[6][6][1],&p_865->g_97[6][6][1],(void*)0,(void*)0}},{{&p_865->g_97[6][6][1],&p_865->g_97[6][6][1],&p_865->g_97[6][6][1],(void*)0,(void*)0},{&p_865->g_97[6][6][1],&p_865->g_97[6][6][1],&p_865->g_97[6][6][1],(void*)0,(void*)0},{&p_865->g_97[6][6][1],&p_865->g_97[6][6][1],&p_865->g_97[6][6][1],(void*)0,(void*)0},{&p_865->g_97[6][6][1],&p_865->g_97[6][6][1],&p_865->g_97[6][6][1],(void*)0,(void*)0},{&p_865->g_97[6][6][1],&p_865->g_97[6][6][1],&p_865->g_97[6][6][1],(void*)0,(void*)0}}};
                int16_t **l_604 = &l_538;
                int32_t **l_606 = &l_551[0];
                int32_t l_613 = 0x198D8687L;
                int32_t **l_620[8][7] = {{&l_605,&l_605,&l_605,&l_605,&l_605,&l_605,&l_605},{&l_605,&l_605,&l_605,&l_605,&l_605,&l_605,&l_605},{&l_605,&l_605,&l_605,&l_605,&l_605,&l_605,&l_605},{&l_605,&l_605,&l_605,&l_605,&l_605,&l_605,&l_605},{&l_605,&l_605,&l_605,&l_605,&l_605,&l_605,&l_605},{&l_605,&l_605,&l_605,&l_605,&l_605,&l_605,&l_605},{&l_605,&l_605,&l_605,&l_605,&l_605,&l_605,&l_605},{&l_605,&l_605,&l_605,&l_605,&l_605,&l_605,&l_605}};
                uint32_t l_621[3][5] = {{1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL}};
                int32_t l_624 = 0x107495B9L;
                int32_t l_626 = 0x4F5FFCD2L;
                int32_t l_628 = 0L;
                int32_t l_634 = 0x610F2A38L;
                int32_t l_635 = 0L;
                VECTOR(int32_t, 8) l_636 = (VECTOR(int32_t, 8))(0x1426C318L, (VECTOR(int32_t, 4))(0x1426C318L, (VECTOR(int32_t, 2))(0x1426C318L, 0L), 0L), 0L, 0x1426C318L, 0L);
                int i, j, k;
                if ((l_526.s4 ^ ((p_865->g_97[0][2][0] = ((safe_mul_func_int16_t_s_s((GROUP_DIVERGE(0, 1) > (((*l_604) = l_603[1][1][2]) != (void*)0)), FAKE_DIVERGE(p_865->global_0_offset, get_global_id(0), 10))) != (((*l_606) = l_605) != p_9))) & (((safe_add_func_int32_t_s_s((safe_mul_func_int16_t_s_s((safe_add_func_uint16_t_u_u((0x16L | ((((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(0xA201L, 0UL)))).lo ^ (l_613 != (~(((((((((safe_add_func_int8_t_s_s(((VECTOR(int8_t, 8))(mad_sat(((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),VECTOR(int8_t, 4),((VECTOR(int8_t, 4))(l_616.yyxy)), ((VECTOR(int8_t, 8))(max(((VECTOR(int8_t, 2))(0x3FL, 2L)).xyxyyxyy, ((VECTOR(int8_t, 16))((-4L), 4L, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(l_617.wzxxzwyy)))), (-5L), (+p_865->g_103.f1), 1L, (((safe_mul_func_uint16_t_u_u((((**p_865->g_552) ^ 0x70AD0EE5L) > p_865->g_103.f4), 7L)) , l_620[6][1]) == &p_865->g_544), 0x5BL, 0x78L)).odd))).hi, ((VECTOR(int8_t, 4))(1L))))).xxxxwwzz, ((VECTOR(int8_t, 8))((-1L))), ((VECTOR(int8_t, 8))(0x4DL))))).s3, p_865->g_268.s6)) , 0x5A55E42C0F4C57BFL) | 0x683AEAE3047012AEL) , &p_865->g_99) != l_549[2][5]) , (-1L)) , p_865->g_268.s7) & l_621[2][0]) > p_865->g_475.f4)))) == (*p_865->g_489))), p_865->g_475.f0)), l_621[2][0])), 0UL)) < (-1L)) == l_621[0][3]))))
                { /* block id: 268 */
                    int32_t *l_622 = (void*)0;
                    int32_t *l_623[3];
                    uint32_t l_638 = 0x4A7804B3L;
                    int i;
                    for (i = 0; i < 3; i++)
                        l_623[i] = &l_550[0];
                    l_638++;
                    for (p_865->g_176.f0.f3 = (-1); (p_865->g_176.f0.f3 < 25); p_865->g_176.f0.f3++)
                    { /* block id: 272 */
                        int32_t *l_643 = &p_865->g_6;
                        return l_643;
                    }
                }
                else
                { /* block id: 275 */
                    if ((atomic_inc(&p_865->l_atomic_input[0]) == 4))
                    { /* block id: 277 */
                        VECTOR(uint32_t, 16) l_644 = (VECTOR(uint32_t, 16))(0x8E211852L, (VECTOR(uint32_t, 4))(0x8E211852L, (VECTOR(uint32_t, 2))(0x8E211852L, 0x26A2B88BL), 0x26A2B88BL), 0x26A2B88BL, 0x8E211852L, 0x26A2B88BL, (VECTOR(uint32_t, 2))(0x8E211852L, 0x26A2B88BL), (VECTOR(uint32_t, 2))(0x8E211852L, 0x26A2B88BL), 0x8E211852L, 0x26A2B88BL, 0x8E211852L, 0x26A2B88BL);
                        VECTOR(int32_t, 16) l_648 = (VECTOR(int32_t, 16))(0x20C91AC1L, (VECTOR(int32_t, 4))(0x20C91AC1L, (VECTOR(int32_t, 2))(0x20C91AC1L, 0x0C376E48L), 0x0C376E48L), 0x0C376E48L, 0x20C91AC1L, 0x0C376E48L, (VECTOR(int32_t, 2))(0x20C91AC1L, 0x0C376E48L), (VECTOR(int32_t, 2))(0x20C91AC1L, 0x0C376E48L), 0x20C91AC1L, 0x0C376E48L, 0x20C91AC1L, 0x0C376E48L);
                        int32_t *l_647 = (void*)0;
                        int32_t *l_649 = (void*)0;
                        int32_t *l_650 = (void*)0;
                        int i;
                        --l_644.s2;
                        l_650 = (l_649 = l_647);
                        unsigned int result = 0;
                        result += l_644.sf;
                        result += l_644.se;
                        result += l_644.sd;
                        result += l_644.sc;
                        result += l_644.sb;
                        result += l_644.sa;
                        result += l_644.s9;
                        result += l_644.s8;
                        result += l_644.s7;
                        result += l_644.s6;
                        result += l_644.s5;
                        result += l_644.s4;
                        result += l_644.s3;
                        result += l_644.s2;
                        result += l_644.s1;
                        result += l_644.s0;
                        result += l_648.sf;
                        result += l_648.se;
                        result += l_648.sd;
                        result += l_648.sc;
                        result += l_648.sb;
                        result += l_648.sa;
                        result += l_648.s9;
                        result += l_648.s8;
                        result += l_648.s7;
                        result += l_648.s6;
                        result += l_648.s5;
                        result += l_648.s4;
                        result += l_648.s3;
                        result += l_648.s2;
                        result += l_648.s1;
                        result += l_648.s0;
                        atomic_add(&p_865->l_special_values[0], result);
                    }
                    else
                    { /* block id: 281 */
                        (1 + 1);
                    }
                }
                for (p_865->g_475.f0 = 11; (p_865->g_475.f0 < 16); p_865->g_475.f0 = safe_add_func_int16_t_s_s(p_865->g_475.f0, 4))
                { /* block id: 287 */
                    return (*p_865->g_552);
                }
            }
            else
            { /* block id: 290 */
                union U1 *l_656 = (void*)0;
                uint16_t l_665 = 65534UL;
                int32_t l_669 = 0x10C72BB0L;
                int32_t l_670 = (-5L);
                for (p_865->g_537.f0.f6 = 0; (p_865->g_537.f0.f6 > (-10)); p_865->g_537.f0.f6--)
                { /* block id: 293 */
                    union U1 **l_657 = &l_656;
                    union U1 *l_659 = &p_865->g_176;
                    union U1 **l_658 = &l_659;
                    union U1 *l_662 = &p_865->g_176;
                    union U1 **l_661 = &l_662;
                    (*l_661) = (p_865->g_655 , ((*l_658) = ((*l_657) = l_656)));
                    return (*p_865->g_552);
                }
                if (l_591.s5)
                { /* block id: 299 */
                    int32_t *l_663 = (void*)0;
                    int32_t *l_664[5][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                    int i, j;
                    --l_665;
                }
                else
                { /* block id: 301 */
                    int32_t *l_668[10][3] = {{&l_550[0],&l_633,&l_550[0]},{&l_550[0],&l_633,&l_550[0]},{&l_550[0],&l_633,&l_550[0]},{&l_550[0],&l_633,&l_550[0]},{&l_550[0],&l_633,&l_550[0]},{&l_550[0],&l_633,&l_550[0]},{&l_550[0],&l_633,&l_550[0]},{&l_550[0],&l_633,&l_550[0]},{&l_550[0],&l_633,&l_550[0]},{&l_550[0],&l_633,&l_550[0]}};
                    int i, j;
                    l_671++;
                    for (p_865->g_537.f0.f6 = (-25); (p_865->g_537.f0.f6 > (-9)); p_865->g_537.f0.f6++)
                    { /* block id: 305 */
                        int32_t l_678 = 0x3BC146B4L;
                        l_678 = ((((*p_865->g_489) &= (((0x17AA56F27072F186L > (safe_rshift_func_int8_t_s_u(p_8, 7))) > (~((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(0xFA39EAE0FABAA155L, 0x5729323AA68681A4L)).xxyxxyyx)).s7)) && 1UL)) > p_10) & (FAKE_DIVERGE(p_865->global_1_offset, get_global_id(1), 10) ^ p_10));
                        return (*p_865->g_552);
                    }
                }
                if (l_679)
                    continue;
                (*p_865->g_489) = (p_865->g_680 , l_669);
            }
            if ((p_865->g_90 < (safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(l_683.ywzy)).y, l_594.x))))
            { /* block id: 314 */
                int32_t l_688 = 0x76433C65L;
                int32_t l_691 = 0x786A1689L;
                int64_t *l_692 = (void*)0;
                int64_t *l_693 = (void*)0;
                int64_t *l_694 = (void*)0;
                VECTOR(int32_t, 4) l_695 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x702992A4L), 0x702992A4L);
                int8_t *l_711 = (void*)0;
                int8_t *l_712[5][1][8] = {{{&p_865->g_98,&p_865->g_98,(void*)0,(void*)0,&p_865->g_98,(void*)0,(void*)0,&p_865->g_98}},{{&p_865->g_98,&p_865->g_98,(void*)0,(void*)0,&p_865->g_98,(void*)0,(void*)0,&p_865->g_98}},{{&p_865->g_98,&p_865->g_98,(void*)0,(void*)0,&p_865->g_98,(void*)0,(void*)0,&p_865->g_98}},{{&p_865->g_98,&p_865->g_98,(void*)0,(void*)0,&p_865->g_98,(void*)0,(void*)0,&p_865->g_98}},{{&p_865->g_98,&p_865->g_98,(void*)0,(void*)0,&p_865->g_98,(void*)0,(void*)0,&p_865->g_98}}};
                uint64_t *l_769 = &p_865->g_90;
                uint64_t **l_768 = &l_769;
                VECTOR(uint64_t, 8) l_781 = (VECTOR(uint64_t, 8))(5UL, (VECTOR(uint64_t, 4))(5UL, (VECTOR(uint64_t, 2))(5UL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 5UL, 18446744073709551615UL);
                uint16_t l_789 = 0x9FC3L;
                int i, j, k;
                if ((safe_mul_func_uint8_t_u_u((((((safe_mod_func_uint64_t_u_u((l_688 && (safe_div_func_uint64_t_u_u((((((*p_865->g_166) , (((l_695.y |= l_691) & ((l_632[3] &= (safe_mul_func_int8_t_s_s((safe_div_func_uint16_t_u_u((((safe_lshift_func_uint8_t_u_u((!(safe_rshift_func_int8_t_s_u((l_627 = ((((safe_sub_func_uint64_t_u_u((p_865->g_655.f6 ^ (safe_add_func_uint8_t_u_u(l_591.s7, ((VECTOR(uint8_t, 8))(p_865->g_708.xyxxxyxy)).s4))), p_865->g_97[6][6][1])) >= ((safe_sub_func_uint64_t_u_u((0x23ECL ^ ((5UL ^ (l_671 , p_865->g_537.f0.f3)) | 0UL)), 0x74CFD2830BAD9620L)) > 0x90L)) ^ p_865->g_680.f0.f4) <= p_865->g_176.f0.f6)), 4))), l_691)) <= p_865->g_358[3][1]) , l_691), 0x1F0DL)), l_550[0]))) > 0x49L)) & 1L)) , p_865->g_474[6].f8) != p_865->g_176.f0.f1) && l_588.y), (-1L)))), p_865->g_98)) , FAKE_DIVERGE(p_865->group_0_offset, get_group_id(0), 10)) >= p_10) < l_691) == l_637[5]), l_598.y)))
                { /* block id: 318 */
                    int32_t *l_713 = &l_633;
                    int32_t *l_714 = &p_865->g_474[6].f3;
                    VECTOR(int32_t, 4) l_715 = (VECTOR(int32_t, 4))(0x4242E4E3L, (VECTOR(int32_t, 2))(0x4242E4E3L, 8L), 8L);
                    int32_t *l_716 = (void*)0;
                    int32_t *l_717 = &l_633;
                    int32_t *l_718 = (void*)0;
                    int32_t *l_719[1][2];
                    int16_t l_721 = 0x235DL;
                    int32_t **l_725 = (void*)0;
                    int32_t **l_726 = &l_551[1];
                    union U1 *l_729 = &p_865->g_680;
                    union U1 **l_730 = &l_729;
                    union U1 *l_732 = &p_865->g_176;
                    union U1 **l_731[1][1];
                    VECTOR(int16_t, 4) l_742 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 7L), 7L);
                    uint16_t *l_746 = &p_865->g_747[1][1][0];
                    int i, j;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 2; j++)
                            l_719[i][j] = &p_865->g_103.f3;
                    }
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 1; j++)
                            l_731[i][j] = &l_732;
                    }
                    ++l_722;
                    (*l_717) ^= ((*l_714) = (1UL != ((((((*l_726) = l_714) != (((l_616.y , 0x6218L) == (((VECTOR(int32_t, 4))(((3UL >= ((safe_lshift_func_int16_t_s_u((((*l_730) = ((*p_865->g_489) , l_729)) == (p_865->g_733[0][6] = &p_865->g_176)), ((+(safe_mod_func_int8_t_s_s((l_627 &= ((p_8 , p_865->g_660) != l_736[5])), l_722))) ^ p_8))) != p_8)) == 0x25AEC6ABL), 0x2538E6D9L, 0x0B97140FL, 0x22F269E8L)).w == l_691)) , p_9)) >= p_865->g_655.f6) , (void*)0) != &p_865->g_356)));
                    (*p_865->g_130) &= (safe_add_func_int16_t_s_s((~(p_10 == 4294967295UL)), (1L != (safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 16))(l_742.wxzzyxwzwzwzxxwz)).s1, ((*l_746) = (safe_add_func_int32_t_s_s(1L, (p_865->g_745 , GROUP_DIVERGE(1, 1))))))))));
                    (**p_865->g_165) = p_865->g_748[4];
                }
                else
                { /* block id: 329 */
                    int32_t *l_749[5][8][3] = {{{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0}},{{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0}},{{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0}},{{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0}},{{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0},{&l_633,&l_630,(void*)0}}};
                    uint64_t l_753 = 0UL;
                    int i, j, k;
                    --l_753;
                    for (p_865->g_680.f0.f9 = 0; (p_865->g_680.f0.f9 >= 8); p_865->g_680.f0.f9++)
                    { /* block id: 333 */
                        l_695.z = (l_679 > 0UL);
                        l_759 = l_758;
                    }
                    (**p_865->g_165) = p_865->g_760[4][1][0];
                }
                for (p_865->g_90 = (-22); (p_865->g_90 >= 1); p_865->g_90 = safe_add_func_int32_t_s_s(p_865->g_90, 5))
                { /* block id: 341 */
                    uint64_t ***l_770 = &l_768;
                    uint32_t *l_782 = &p_865->g_176.f0.f4;
                    int32_t l_783 = 0x74A1E5ACL;
                    uint64_t **l_785[4];
                    uint64_t ***l_784 = &l_785[1];
                    int32_t *l_788 = &p_865->g_745.f0.f9;
                    int i, j;
                    for (i = 0; i < 4; i++)
                        l_785[i] = &l_769;
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    p_865->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 40)), permutations[(safe_mod_func_uint32_t_u_u((l_695.x &= (safe_add_func_uint32_t_u_u((0x5503L <= ((VECTOR(int16_t, 2))(l_765.yx)).hi), (safe_mul_func_int16_t_s_s((((*l_770) = l_768) == ((*l_784) = (((*l_605) = ((+((l_783 = ((*l_782) |= ((1UL == (((((p_8 && ((l_759 != l_771) | (safe_sub_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((!((p_865->g_268.s4 ^ ((VECTOR(int8_t, 2))(p_865->g_776.s6c)).odd) , GROUP_DIVERGE(0, 1))), (safe_mod_func_int16_t_s_s(((VECTOR(int16_t, 16))(clz(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(mul_hi(((VECTOR(int16_t, 8))(0L, ((l_637[2] = 0UL) && (safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(l_781.s0455426211021103)).sec)).hi, (p_10 , l_591.s1)))), (-8L), p_865->g_103.f1, ((VECTOR(int16_t, 4))((-5L))))).s7612711367603633, ((VECTOR(int16_t, 16))(7L)))))))))).s6, p_865->g_4)))), FAKE_DIVERGE(p_865->group_0_offset, get_group_id(0), 10))))) ^ 0UL) , p_865->g_45.sc) == FAKE_DIVERGE(p_865->group_2_offset, get_group_id(2), 10)) ^ GROUP_DIVERGE(2, 1))) == l_671))) || (*p_865->g_489))) & 0x4FB40370L)) , (void*)0))), 1L))))), 10))][(safe_mod_func_uint32_t_u_u(p_865->tid, 40))]));
                    (*l_788) &= ((*p_865->g_489) = (safe_sub_func_uint8_t_u_u(1UL, l_625)));
                    if (l_789)
                        break;
                    for (p_865->g_745.f0.f0 = (-21); (p_865->g_745.f0.f0 != (-10)); p_865->g_745.f0.f0 = safe_add_func_int64_t_s_s(p_865->g_745.f0.f0, 4))
                    { /* block id: 357 */
                        if (l_691)
                            break;
                    }
                }
                if (p_10)
                    break;
                if ((atomic_inc(&p_865->g_atomic_input[28 * get_linear_group_id() + 18]) == 8))
                { /* block id: 363 */
                    int32_t l_792 = 0x681513D8L;
                    int32_t *l_801 = (void*)0;
                    for (l_792 = 0; (l_792 < (-12)); l_792--)
                    { /* block id: 366 */
                        struct S0 l_795 = {1L,5L,0x712F5EDAL,0x60D1DD3CL,0x99460102L,6L,5L,0x1F2B185EL,0L,0L};/* VOLATILE GLOBAL l_795 */
                        struct S0 l_796 = {-10L,1L,-1L,0x7D1244ACL,0x8E69397AL,9L,-10L,0x8868738AL,0x2EC3B82020D63C62L,1L};/* VOLATILE GLOBAL l_796 */
                        int32_t *l_797 = &l_795.f9;
                        int32_t *l_798 = &l_795.f9;
                        int32_t *l_799[6] = {&l_795.f9,&l_795.f9,&l_795.f9,&l_795.f9,&l_795.f9,&l_795.f9};
                        int32_t *l_800 = &l_796.f3;
                        int i;
                        l_800 = (l_799[3] = ((l_795 , l_796) , (l_798 = (l_797 = l_797))));
                    }
                    l_801 = (void*)0;
                    unsigned int result = 0;
                    result += l_792;
                    atomic_add(&p_865->g_special_values[28 * get_linear_group_id() + 18], result);
                }
                else
                { /* block id: 373 */
                    (1 + 1);
                }
            }
            else
            { /* block id: 376 */
                int8_t *l_815 = (void*)0;
                p_8 |= (safe_div_func_int16_t_s_s((p_865->g_748[4].f2 > p_10), ((VECTOR(uint16_t, 16))(min(((VECTOR(uint16_t, 2))(65535UL, 65535UL)).xxyxyyxxyyyxyxxx, (uint16_t)(p_865->g_745.f0.f3 | p_865->l_comm_values[(safe_mod_func_uint32_t_u_u(p_865->tid, 40))])))).s9));
                for (p_865->g_537.f0.f4 = 1; (p_865->g_537.f0.f4 == 33); p_865->g_537.f0.f4++)
                { /* block id: 380 */
                    uint16_t l_808 = 65531UL;
                    int32_t *l_813 = &l_550[0];
                    atomic_or(&p_865->l_atomic_reduction[0], (((safe_div_func_int16_t_s_s((!((l_808 , func_57(l_808, (l_814 = ((p_865->g_475.f2 || (safe_div_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(l_811.zxyxxwww)).s3, (0x223CL & (p_10 | ((VECTOR(uint64_t, 16))(l_812.sca770c59a05f8866)).s5))))) , l_813)), l_815, p_865)) == p_865->g_816[0])), GROUP_DIVERGE(2, 1))) <= 0x1F9EL) , l_591.s7) + get_linear_global_id());
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    if (get_linear_local_id() == 0)
                        p_865->v_collective += p_865->l_atomic_reduction[0];
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    for (p_865->g_103.f4 = 14; (p_865->g_103.f4 > 20); p_865->g_103.f4++)
                    { /* block id: 385 */
                        struct S0 *l_820 = &p_865->g_760[4][1][0];
                        (*l_820) = ((l_630 = 4294967287UL) , p_865->g_819[0][3][0]);
                    }
                    if ((*l_814))
                        continue;
                    if ((*l_814))
                        break;
                }
            }
        }
    }
    for (p_865->g_537.f2 = (-21); (p_865->g_537.f2 <= (-3)); p_865->g_537.f2 = safe_add_func_uint64_t_u_u(p_865->g_537.f2, 3))
    { /* block id: 397 */
        int32_t *l_823 = &p_865->g_6;
        return l_823;
    }
    return (*p_865->g_552);
}


/* ------------------------------------------ */
/* 
 * reads : p_865->l_comm_values p_865->g_45 p_865->g_6 p_865->g_261 p_865->g_262 p_865->g_264 p_865->g_268 p_865->g_90 p_865->g_287 p_865->g_176.f0.f4 p_865->g_130 p_865->g_176.f0.f7 p_865->g_165 p_865->g_166 p_865->g_103.f7 p_865->g_103.f0 p_865->g_72 p_865->g_103.f9 p_865->g_76 p_865->g_comm_values p_865->g_99 p_865->g_103 p_865->g_435 p_865->g_409 p_865->g_98 p_865->g_176.f0.f3 p_865->g_458 p_865->g_460 p_865->g_97 p_865->g_474 p_865->g_489 p_865->g_5 p_865->g_445 p_865->g_404 p_865->g_4
 * writes: p_865->g_45 p_865->g_90 p_865->l_comm_values p_865->g_97 p_865->g_6 p_865->g_72 p_865->g_176.f0.f4 p_865->g_103.f9 p_865->g_99 p_865->g_103.f3 p_865->g_103 p_865->g_445 p_865->g_176.f0 p_865->g_130 p_865->g_475 p_865->g_489 p_865->g_264 p_865->g_474.f3 p_865->g_268 p_865->g_287 p_865->g_166
 */
int32_t * func_11(int32_t * p_12, int32_t * p_13, uint64_t  p_14, int32_t * p_15, uint32_t  p_16, struct S2 * p_865)
{ /* block id: 7 */
    VECTOR(int16_t, 4) l_30 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x1BB6L), 0x1BB6L);
    VECTOR(int16_t, 16) l_31 = (VECTOR(int16_t, 16))(0x2A47L, (VECTOR(int16_t, 4))(0x2A47L, (VECTOR(int16_t, 2))(0x2A47L, 0x4FB8L), 0x4FB8L), 0x4FB8L, 0x2A47L, 0x4FB8L, (VECTOR(int16_t, 2))(0x2A47L, 0x4FB8L), (VECTOR(int16_t, 2))(0x2A47L, 0x4FB8L), 0x2A47L, 0x4FB8L, 0x2A47L, 0x4FB8L);
    VECTOR(int16_t, 2) l_32 = (VECTOR(int16_t, 2))(1L, 1L);
    VECTOR(int16_t, 4) l_33 = (VECTOR(int16_t, 4))(0x5ED6L, (VECTOR(int16_t, 2))(0x5ED6L, 0x12DBL), 0x12DBL);
    VECTOR(int16_t, 4) l_34 = (VECTOR(int16_t, 4))((-4L), (VECTOR(int16_t, 2))((-4L), 0L), 0L);
    int32_t *l_35 = &p_865->g_6;
    int8_t *l_49 = (void*)0;
    int8_t *l_50 = (void*)0;
    int8_t *l_51 = (void*)0;
    int32_t **l_490 = &p_865->g_489;
    int32_t **l_491 = &p_865->g_130;
    VECTOR(int8_t, 16) l_494 = (VECTOR(int8_t, 16))(0x7AL, (VECTOR(int8_t, 4))(0x7AL, (VECTOR(int8_t, 2))(0x7AL, 1L), 1L), 1L, 0x7AL, 1L, (VECTOR(int8_t, 2))(0x7AL, 1L), (VECTOR(int8_t, 2))(0x7AL, 1L), 0x7AL, 1L, 0x7AL, 1L);
    uint8_t *l_499 = (void*)0;
    uint8_t *l_500 = (void*)0;
    uint8_t *l_501[6][7][6] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    int32_t l_502 = 1L;
    int32_t l_503 = 0x5B423D33L;
    int32_t l_504 = (-2L);
    VECTOR(int32_t, 8) l_505 = (VECTOR(int32_t, 8))((-4L), (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), 0x31329E0CL), 0x31329E0CL), 0x31329E0CL, (-4L), 0x31329E0CL);
    VECTOR(int64_t, 8) l_510 = (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x022E5A9F17F60ACDL), 0x022E5A9F17F60ACDL), 0x022E5A9F17F60ACDL, 0L, 0x022E5A9F17F60ACDL);
    int32_t *l_512[10][8][3] = {{{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6}},{{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6}},{{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6}},{{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6}},{{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6}},{{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6}},{{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6}},{{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6}},{{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6}},{{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6},{&p_865->g_176.f0.f0,&p_865->g_176.f0.f6,&p_865->g_103.f6}}};
    int32_t **l_511[5][8][1] = {{{&l_512[4][2][2]},{&l_512[4][2][2]},{&l_512[4][2][2]},{&l_512[4][2][2]},{&l_512[4][2][2]},{&l_512[4][2][2]},{&l_512[4][2][2]},{&l_512[4][2][2]}},{{&l_512[4][2][2]},{&l_512[4][2][2]},{&l_512[4][2][2]},{&l_512[4][2][2]},{&l_512[4][2][2]},{&l_512[4][2][2]},{&l_512[4][2][2]},{&l_512[4][2][2]}},{{&l_512[4][2][2]},{&l_512[4][2][2]},{&l_512[4][2][2]},{&l_512[4][2][2]},{&l_512[4][2][2]},{&l_512[4][2][2]},{&l_512[4][2][2]},{&l_512[4][2][2]}},{{&l_512[4][2][2]},{&l_512[4][2][2]},{&l_512[4][2][2]},{&l_512[4][2][2]},{&l_512[4][2][2]},{&l_512[4][2][2]},{&l_512[4][2][2]},{&l_512[4][2][2]}},{{&l_512[4][2][2]},{&l_512[4][2][2]},{&l_512[4][2][2]},{&l_512[4][2][2]},{&l_512[4][2][2]},{&l_512[4][2][2]},{&l_512[4][2][2]},{&l_512[4][2][2]}}};
    int32_t *l_517[7] = {&p_865->g_445,&p_865->g_445,&p_865->g_445,&p_865->g_445,&p_865->g_445,&p_865->g_445,&p_865->g_445};
    struct S0 *l_520 = &p_865->g_474[6];
    int i, j, k;
    (*l_491) = ((*l_490) = func_25((((VECTOR(int16_t, 16))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 16),((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(0x155DL, 0L)).xxxyxyxyxxyxyyyx)).se, (-1L), 1L, 0x66B3L)).xxwwzzxyxzywxxxx)), ((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(l_30.xwxx)))).even, ((VECTOR(int16_t, 2))(safe_clamp_func(VECTOR(int16_t, 2),VECTOR(int16_t, 2),((VECTOR(int16_t, 8))(0x5CCFL, ((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 2))(0x5E89L, 0x3B3BL)), ((VECTOR(int16_t, 16))(l_31.s61a7160c63704bae)).s91))).even, ((VECTOR(int16_t, 4))(l_32.yyyy)), 1L, 7L)).s16, ((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 2))(l_33.zz)), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(0x3167L, 1L))))))))), ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(l_34.ywww)), (+(p_12 == l_35)), 0x08B3L, p_16, 0x13DAL, 0x3E67L, 0x2F6DL, ((VECTOR(int16_t, 16))((safe_lshift_func_uint8_t_u_s((safe_sub_func_uint64_t_u_u(func_40(l_35, &p_865->g_4, (l_35 == &p_865->g_4), (((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(p_865->l_comm_values[(safe_mod_func_uint32_t_u_u(p_865->tid, 40))], ((VECTOR(int8_t, 8))(p_865->g_45.sb5f37d79)), 0x19L, (p_865->g_45.sd = func_46((*l_35), p_865)), ((VECTOR(int8_t, 2))((-9L))), 0x30L, 0x4CL, 0x7DL)))).s73fc, ((VECTOR(int8_t, 4))(0x32L))))).x , p_865->l_comm_values[(safe_mod_func_uint32_t_u_u(p_865->tid, 40))]), p_865), p_16)), p_865->g_435.sb)), p_14, ((VECTOR(int16_t, 4))(0x2449L)), 0x1F16L, p_14, 1L, ((VECTOR(int16_t, 4))(0x7A34L)), 2L, 0x0046L, 0L)).s0, 0x57EBL, (-1L), p_865->g_176.f0.f3, 7L, 0x07DAL)).s2c)))))).xyxyxxyyxyxxyxxy, ((VECTOR(int16_t, 16))(4L))))).s1 != l_30.x), p_13, p_16, p_16, p_865));
    atomic_max(&p_865->l_atomic_reduction[0], (safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(rotate(((VECTOR(int8_t, 2))(7L, 0x64L)).xyyxyyxyxyyxxxyx, ((VECTOR(int8_t, 2))(l_494.s9d)).yyyxxyyyxyyxyxxy))).sed)).lo, (p_865->g_287.z |= ((+(safe_mul_func_int8_t_s_s((((((p_865->g_268.sb &= (+((*l_35) >= (((++p_865->g_264.s4) && ((0xF0L == ((safe_lshift_func_uint16_t_u_u(((((((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(l_510.s37)).yyyxxyyyyxxxyyyx)).s7d)).hi , l_511[3][5][0]) != (void*)0) >= (0xECF38229L <= (p_865->g_445 |= (((p_865->g_176.f0.f7 ^ ((**l_491) ^= p_865->l_comm_values[(safe_mod_func_uint32_t_u_u(p_865->tid, 40))])) > (safe_sub_func_int32_t_s_s((((safe_rshift_func_uint8_t_u_u(p_865->g_409.x, 7)) , p_865->g_264.s1) , (*p_865->g_5)), 0x0B057DF7L))) , (**l_490))))) , (**l_490)), 6)) == p_865->g_404.s0)) , (-5L))) > p_865->g_97[6][6][1])))) != 0x3AL) || (-4L)) , (*p_12)) == (-9L)), p_16))) > p_865->g_4)))) + get_linear_global_id());
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (get_linear_local_id() == 0)
        p_865->v_collective += p_865->l_atomic_reduction[0];
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    for (p_865->g_103.f9 = 23; (p_865->g_103.f9 <= (-24)); p_865->g_103.f9 = safe_sub_func_int64_t_s_s(p_865->g_103.f9, 3))
    { /* block id: 234 */
        struct S0 *l_521[2];
        int i;
        for (i = 0; i < 2; i++)
            l_521[i] = &p_865->g_176.f0;
        l_521[0] = ((*p_865->g_165) = l_520);
        return (*l_491);
    }
    return p_13;
}


/* ------------------------------------------ */
/* 
 * reads : p_865->g_72 p_865->g_166 p_865->g_103 p_865->g_458 p_865->g_165 p_865->g_460 p_865->g_268 p_865->g_97 p_865->g_176.f0.f4 p_865->g_6 p_865->g_474 p_865->g_489
 * writes: p_865->g_72 p_865->g_103.f6 p_865->g_176.f0 p_865->g_130 p_865->g_90 p_865->g_97 p_865->g_475
 */
int32_t * func_25(int32_t  p_26, int32_t * p_27, uint16_t  p_28, uint64_t  p_29, struct S2 * p_865)
{ /* block id: 200 */
    int32_t l_456 = 0x5F79DE3CL;
    int32_t l_478 = 0x27CB3A03L;
    int8_t l_479 = 5L;
    int32_t l_481 = (-10L);
    int32_t l_482 = (-5L);
    int32_t l_483[2];
    int16_t l_484[4];
    int32_t *l_488[7] = {&l_483[0],&l_483[0],&l_483[0],&l_483[0],&l_483[0],&l_483[0],&l_483[0]};
    int i;
    for (i = 0; i < 2; i++)
        l_483[i] = (-5L);
    for (i = 0; i < 4; i++)
        l_484[i] = 0L;
    for (p_865->g_72 = 0; (p_865->g_72 > (-2)); p_865->g_72 = safe_sub_func_uint32_t_u_u(p_865->g_72, 6))
    { /* block id: 203 */
        uint64_t l_453 = 0xC297156C975CAAD8L;
        VECTOR(int16_t, 2) l_469 = (VECTOR(int16_t, 2))(5L, 7L);
        int32_t *l_476 = &p_865->g_6;
        int32_t *l_477[4][10] = {{&p_865->g_474[6].f3,&p_865->g_475.f3,&p_865->g_475.f9,&p_865->g_474[6].f3,&p_865->g_475.f3,&p_865->g_474[6].f3,&p_865->g_475.f9,&p_865->g_475.f3,&p_865->g_474[6].f3,&p_865->g_474[6].f3},{&p_865->g_474[6].f3,&p_865->g_475.f3,&p_865->g_475.f9,&p_865->g_474[6].f3,&p_865->g_475.f3,&p_865->g_474[6].f3,&p_865->g_475.f9,&p_865->g_475.f3,&p_865->g_474[6].f3,&p_865->g_474[6].f3},{&p_865->g_474[6].f3,&p_865->g_475.f3,&p_865->g_475.f9,&p_865->g_474[6].f3,&p_865->g_475.f3,&p_865->g_474[6].f3,&p_865->g_475.f9,&p_865->g_475.f3,&p_865->g_474[6].f3,&p_865->g_474[6].f3},{&p_865->g_474[6].f3,&p_865->g_475.f3,&p_865->g_475.f9,&p_865->g_474[6].f3,&p_865->g_475.f3,&p_865->g_474[6].f3,&p_865->g_475.f9,&p_865->g_475.f3,&p_865->g_474[6].f3,&p_865->g_474[6].f3}};
        int64_t l_480 = 0x7CD302F186E46DA1L;
        uint8_t l_485 = 6UL;
        int i, j;
        for (p_865->g_103.f6 = (-8); (p_865->g_103.f6 != (-1)); p_865->g_103.f6++)
        { /* block id: 206 */
            uint64_t *l_463 = (void*)0;
            uint64_t *l_464 = (void*)0;
            uint64_t *l_465 = (void*)0;
            int16_t *l_468 = &p_865->g_97[6][6][1];
            uint32_t *l_472 = &p_865->g_176.f0.f4;
            int32_t l_473 = 0x6D39025DL;
            if (((safe_div_func_int64_t_s_s(l_453, p_28)) , (safe_rshift_func_uint16_t_u_u(l_456, 9))))
            { /* block id: 207 */
                (*p_865->g_458) = (*p_865->g_166);
            }
            else
            { /* block id: 209 */
                int32_t **l_459 = &p_865->g_130;
                (*l_459) = p_27;
                (*p_865->g_460) = (**p_865->g_165);
            }
            l_473 = (safe_mod_func_int8_t_s_s(((~((((p_865->g_268.s6 <= (0x57F9B73495B26D6AL | FAKE_DIVERGE(p_865->global_0_offset, get_global_id(0), 10))) >= (p_865->g_90 = 0xE78E06A2357B5C83L)) != (l_456 ^ ((!((safe_mod_func_int16_t_s_s(((*l_468) |= p_865->g_103.f8), ((VECTOR(int16_t, 8))(0x6160L, ((VECTOR(int16_t, 2))(l_469.xy)), l_469.x, (((void*)0 == &p_27) ^ (safe_div_func_uint32_t_u_u(((*l_472) &= FAKE_DIVERGE(p_865->group_1_offset, get_group_id(1), 10)), (p_29 & p_865->g_6)))), ((VECTOR(int16_t, 2))(0x769FL)), 0L)).s3)) != 0L)) >= p_26))) , l_456)) & p_28), l_469.y));
            p_865->g_475 = p_865->g_474[6];
        }
        l_485--;
        if (p_26)
            break;
    }
    l_488[0] = &l_482;
    return p_865->g_489;
}


/* ------------------------------------------ */
/* 
 * reads : p_865->g_261 p_865->g_262 p_865->g_264 p_865->g_268 p_865->g_90 p_865->g_287 p_865->g_176.f0.f4 p_865->g_45 p_865->g_130 p_865->g_6 p_865->g_176.f0.f7 p_865->g_165 p_865->g_166 p_865->g_103.f7 p_865->g_103.f0 p_865->g_72 p_865->g_103.f9 p_865->g_76 p_865->g_comm_values p_865->g_99 p_865->g_103 p_865->g_435 p_865->g_409 p_865->g_98
 * writes: p_865->g_90 p_865->l_comm_values p_865->g_97 p_865->g_6 p_865->g_72 p_865->g_176.f0.f4 p_865->g_103.f9 p_865->g_99 p_865->g_103.f3 p_865->g_103 p_865->g_445
 */
uint64_t  func_40(int32_t * p_41, int32_t * p_42, uint32_t  p_43, uint32_t  p_44, struct S2 * p_865)
{ /* block id: 11 */
    int32_t *l_71 = &p_865->g_72;
    int8_t *l_115 = &p_865->g_98;
    VECTOR(uint8_t, 2) l_263 = (VECTOR(uint8_t, 2))(0x5EL, 0xBFL);
    VECTOR(uint8_t, 8) l_265 = (VECTOR(uint8_t, 8))(0x87L, (VECTOR(uint8_t, 4))(0x87L, (VECTOR(uint8_t, 2))(0x87L, 1UL), 1UL), 1UL, 0x87L, 1UL);
    VECTOR(uint8_t, 8) l_266 = (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL);
    VECTOR(uint8_t, 2) l_267 = (VECTOR(uint8_t, 2))(251UL, 0xAAL);
    VECTOR(uint8_t, 4) l_269 = (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0UL), 0UL);
    VECTOR(uint8_t, 2) l_270 = (VECTOR(uint8_t, 2))(255UL, 0x6DL);
    VECTOR(int8_t, 8) l_277 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x06L), 0x06L), 0x06L, (-1L), 0x06L);
    uint64_t *l_282 = &p_865->g_90;
    struct S0 **l_283[9];
    struct S0 **l_284 = &p_865->g_166;
    VECTOR(int32_t, 8) l_296 = (VECTOR(int32_t, 8))(0x6C199B82L, (VECTOR(int32_t, 4))(0x6C199B82L, (VECTOR(int32_t, 2))(0x6C199B82L, 0x49505C1AL), 0x49505C1AL), 0x49505C1AL, 0x6C199B82L, 0x49505C1AL);
    VECTOR(int16_t, 8) l_297 = (VECTOR(int16_t, 8))(0x233AL, (VECTOR(int16_t, 4))(0x233AL, (VECTOR(int16_t, 2))(0x233AL, 0x10FBL), 0x10FBL), 0x10FBL, 0x233AL, 0x10FBL);
    int64_t *l_300 = (void*)0;
    int64_t *l_301[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    VECTOR(uint16_t, 4) l_304 = (VECTOR(uint16_t, 4))(0x8EE3L, (VECTOR(uint16_t, 2))(0x8EE3L, 65531UL), 65531UL);
    int16_t *l_307 = &p_865->g_97[5][4][4];
    uint32_t l_308 = 0xB8FE764DL;
    int32_t l_309 = 0x7CD97547L;
    int32_t *l_310 = &p_865->g_103.f9;
    int32_t **l_311[2][1];
    uint8_t l_319 = 0xFCL;
    VECTOR(uint16_t, 8) l_346 = (VECTOR(uint16_t, 8))(65528UL, (VECTOR(uint16_t, 4))(65528UL, (VECTOR(uint16_t, 2))(65528UL, 0x4143L), 0x4143L), 0x4143L, 65528UL, 0x4143L);
    VECTOR(uint16_t, 16) l_348 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 65535UL), 65535UL), 65535UL, 1UL, 65535UL, (VECTOR(uint16_t, 2))(1UL, 65535UL), (VECTOR(uint16_t, 2))(1UL, 65535UL), 1UL, 65535UL, 1UL, 65535UL);
    uint64_t l_446 = 18446744073709551615UL;
    int i, j;
    for (i = 0; i < 9; i++)
        l_283[i] = (void*)0;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
            l_311[i][j] = &p_865->g_130;
    }
    for (p_43 = 18; (p_43 == 53); p_43 = safe_add_func_uint32_t_u_u(p_43, 8))
    { /* block id: 14 */
        uint8_t l_65 = 252UL;
        int32_t *l_66 = &p_865->g_67;
        int32_t **l_73 = &l_71;
        int32_t **l_260[5][7][5] = {{{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130}},{{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130}},{{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130}},{{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130}},{{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,(void*)0,&p_865->g_130,&p_865->g_130,&p_865->g_130}}};
        int i, j, k;
        (1 + 1);
    }
    (*p_41) = ((l_309 |= (((VECTOR(uint8_t, 16))(mad_hi(((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(int8_t, 16))(mul_hi(((VECTOR(int8_t, 2))(0L, 6L)).yyxyyyxyyyyyyxxx, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(p_865->g_261.xxxxxxyy)).s03)).yyxxyyxxxxxyyxxy))).see, ((VECTOR(int8_t, 16))(p_865->g_262.s4bdd627b09ab5f58)).s0b))).yyyyxyyxxxxxxxxy, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(abs_diff(((VECTOR(uint8_t, 16))(l_263.xyxyyyyxxyxxxxyy)).even, ((VECTOR(uint8_t, 16))(rotate(((VECTOR(uint8_t, 16))(p_865->g_264.s0711725522634107)), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(0UL, 4UL)).yyyy)).zwzyzzywxzwwxyyw))).even))).lo)).zwzywwxy)), ((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 4))(l_265.s0070)), ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(249UL, 0UL)).xxxxxyyx)).lo))), ((VECTOR(uint8_t, 4))(mad_hi(((VECTOR(uint8_t, 8))(l_266.s52277272)).lo, ((VECTOR(uint8_t, 2))(l_267.xy)).xxyx, ((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(p_865->g_268.sea)))).yyxxxxyx)), ((VECTOR(uint8_t, 2))(l_269.wz)).xyyxyxyx))).lo))))).hi)).s3741324200254606, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(l_270.yyyy)))).xzxwzzzyxzwzwxxw))).s9 & (safe_div_func_uint64_t_u_u((safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 4))(0x07L, 1L, 0x45L, 0x0DL)).z, (safe_rshift_func_int16_t_s_u(((((VECTOR(int8_t, 8))(l_277.s05372235)).s5 ^ (l_265.s7 , (safe_add_func_int64_t_s_s(((safe_add_func_uint64_t_u_u(((*l_282) &= FAKE_DIVERGE(p_865->global_2_offset, get_global_id(2), 10)), 0xBC23BC02E2F530F2L)) >= ((((l_284 = l_283[3]) == ((((GROUP_DIVERGE(1, 1) , ((safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(p_865->g_287.zy)), 0x2DL, (-4L))).z, ((safe_lshift_func_uint8_t_u_u((((VECTOR(uint64_t, 8))(add_sat(((VECTOR(uint64_t, 16))(mul_hi(((VECTOR(uint64_t, 4))(4UL, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))((((safe_rshift_func_int16_t_s_s(((*l_307) = (safe_mod_func_int64_t_s_s((p_865->l_comm_values[(safe_mod_func_uint32_t_u_u(p_865->tid, 40))] = (safe_div_func_int32_t_s_s(((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 2))(l_296.s46)).yxyyxyyyyyxyxxyy, ((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))((-1L), 0x04A5B2B4L)).xxxx)).xzzwxywz, ((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 2))(l_297.s50)).yyxxxxyy, ((VECTOR(uint16_t, 4))((l_267.y && (safe_lshift_func_uint8_t_u_s(p_865->g_176.f0.f4, (((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))((l_296.s7 = p_44), (((VECTOR(int64_t, 16))((safe_add_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(l_304.xw)).xxyxxyxxyxxxxxyx)).sa, (safe_rshift_func_int8_t_s_s(0x50L, l_277.s1)))), 1L, (-7L), 1L, 0x6F03E3E7ED85DAF1L, 1L, (-1L), ((VECTOR(int64_t, 8))(0x1E67CEA31313D4E5L)), 0x28340461B7650CC2L)).s0 >= p_44), l_270.y, ((VECTOR(int64_t, 2))(0x0E7C0FE222A196B4L)), ((VECTOR(int64_t, 2))(0x438B3E2254A7E6BFL)), 2L, ((VECTOR(int64_t, 2))(0L)), 0x4D436942E82D893DL, (-3L), p_44, p_865->g_45.s5, 0x0A78A85FD8462079L, 0x50B9D94C1EBE15FAL)).s46ff)).ywzxxxzwxzxwzzyz)))).hi)).s3 != p_865->g_287.y)))), ((VECTOR(uint16_t, 2))(0UL)), 0x48EEL)).wyyxyxxy))).s6037450157263550)).lo)))).s2, (*p_865->g_130), ((VECTOR(int32_t, 8))(0x72E995CAL)), 0L, 0x5C9BD583L, 0x0EF57B49L, 0x79A831C4L, (-1L), 1L)).lo, ((VECTOR(int32_t, 8))(2L)), ((VECTOR(int32_t, 8))(1L)))))))).s4104626737040130))).sd, l_297.s5))), 0x3B88D4735693799BL))), 1)) == 2UL) < 0x1EA357FD88F71A0FL), 18446744073709551608UL, 0UL, l_265.s1, 18446744073709551609UL, ((VECTOR(uint64_t, 4))(0x05E7022B2DF4E6D2L)), ((VECTOR(uint64_t, 2))(4UL)), 0x8A96B655E26C6504L, 18446744073709551614UL, 0UL, 1UL, 1UL)).s5f)), 0UL)).yyxxwxzxxxzyyxzz, ((VECTOR(uint64_t, 16))(1UL))))).odd, ((VECTOR(uint64_t, 8))(0xED8E47408FA73403L))))).s3 >= l_308), 0)) ^ p_865->g_176.f0.f7))) == p_43)) , (void*)0) != (*p_865->g_165)) , l_283[1])) & p_865->g_103.f7) || p_865->g_103.f0)), 0x2A39CCFACA71D8F2L)))) >= 0x1423176A2D43CEBEL), p_44)))), p_44)))) | l_277.s5);
    p_42 = (p_41 = l_310);
    for (p_865->g_72 = 0; (p_865->g_72 >= (-1)); p_865->g_72 = safe_sub_func_uint64_t_u_u(p_865->g_72, 4))
    { /* block id: 137 */
        int64_t l_314 = 4L;
        int32_t l_315 = 0x7FD78E88L;
        int32_t l_316 = 7L;
        VECTOR(int32_t, 8) l_317 = (VECTOR(int32_t, 8))(0x3855A24DL, (VECTOR(int32_t, 4))(0x3855A24DL, (VECTOR(int32_t, 2))(0x3855A24DL, 3L), 3L), 3L, 0x3855A24DL, 3L);
        int32_t l_318 = 0x5B28FE34L;
        struct S0 *l_333 = (void*)0;
        int16_t l_340 = 0L;
        int32_t *l_343[2][7] = {{&p_865->g_6,&p_865->g_6,&p_865->g_6,&l_315,(void*)0,&l_315,&p_865->g_6},{&p_865->g_6,&p_865->g_6,&p_865->g_6,&l_315,(void*)0,&l_315,&p_865->g_6}};
        VECTOR(uint64_t, 8) l_416 = (VECTOR(uint64_t, 8))(0xB2AC8987E5C19B70L, (VECTOR(uint64_t, 4))(0xB2AC8987E5C19B70L, (VECTOR(uint64_t, 2))(0xB2AC8987E5C19B70L, 0xC0E6407EA98A6B25L), 0xC0E6407EA98A6B25L), 0xC0E6407EA98A6B25L, 0xB2AC8987E5C19B70L, 0xC0E6407EA98A6B25L);
        struct S0 *l_421 = &p_865->g_103;
        VECTOR(uint8_t, 16) l_422 = (VECTOR(uint8_t, 16))(248UL, (VECTOR(uint8_t, 4))(248UL, (VECTOR(uint8_t, 2))(248UL, 0UL), 0UL), 0UL, 248UL, 0UL, (VECTOR(uint8_t, 2))(248UL, 0UL), (VECTOR(uint8_t, 2))(248UL, 0UL), 248UL, 0UL, 248UL, 0UL);
        int8_t *l_438 = (void*)0;
        VECTOR(int32_t, 2) l_441 = (VECTOR(int32_t, 2))(0x7B46B2BEL, 1L);
        int64_t **l_442 = (void*)0;
        int i, j;
        --l_319;
        for (l_318 = 6; (l_318 >= (-12)); --l_318)
        { /* block id: 141 */
            VECTOR(int32_t, 16) l_328 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-7L)), (-7L)), (-7L), 0L, (-7L), (VECTOR(int32_t, 2))(0L, (-7L)), (VECTOR(int32_t, 2))(0L, (-7L)), 0L, (-7L), 0L, (-7L));
            uint32_t *l_336 = &p_865->g_176.f0.f4;
            struct S0 *l_339 = &p_865->g_103;
            int32_t **l_341[5][4][1];
            uint64_t **l_366 = &l_282;
            int64_t l_423 = 2L;
            int32_t *l_427[8][3] = {{&l_309,&l_318,&p_865->g_176.f0.f9},{&l_309,&l_318,&p_865->g_176.f0.f9},{&l_309,&l_318,&p_865->g_176.f0.f9},{&l_309,&l_318,&p_865->g_176.f0.f9},{&l_309,&l_318,&p_865->g_176.f0.f9},{&l_309,&l_318,&p_865->g_176.f0.f9},{&l_309,&l_318,&p_865->g_176.f0.f9},{&l_309,&l_318,&p_865->g_176.f0.f9}};
            VECTOR(uint64_t, 8) l_436 = (VECTOR(uint64_t, 8))(18446744073709551610UL, (VECTOR(uint64_t, 4))(18446744073709551610UL, (VECTOR(uint64_t, 2))(18446744073709551610UL, 8UL), 8UL), 8UL, 18446744073709551610UL, 8UL);
            int i, j, k;
            for (i = 0; i < 5; i++)
            {
                for (j = 0; j < 4; j++)
                {
                    for (k = 0; k < 1; k++)
                        l_341[i][j][k] = &l_71;
                }
            }
            if (((((*l_310) |= ((l_71 = (((safe_lshift_func_int8_t_s_s((safe_sub_func_uint32_t_u_u((~0x47FD2C6CL), ((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(l_328.sfb)))).yyxy, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x2256C074L, 0x4B340751L)), 0x0EDC463AL, 0x6B0734E1L))))).x)), (safe_sub_func_int32_t_s_s((safe_mod_func_uint8_t_u_u(p_44, (((&l_310 == &p_865->g_130) | (l_333 != ((safe_sub_func_uint16_t_u_u((p_41 != p_42), (((*l_336) = FAKE_DIVERGE(p_865->local_1_offset, get_local_id(1), 10)) & ((safe_lshift_func_int8_t_s_u((((void*)0 != &p_865->g_166) > p_44), p_43)) | 1L)))) , l_339))) , p_44))), l_340)))) != p_865->g_261.x) , (void*)0)) == &p_865->g_72)) == (*p_865->g_130)) , l_328.se))
            { /* block id: 145 */
                int32_t *l_342 = &p_865->g_176.f0.f6;
                VECTOR(uint16_t, 4) l_347 = (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x7F54L), 0x7F54L);
                int32_t l_359[7][1] = {{0x1250E1EBL},{0x1250E1EBL},{0x1250E1EBL},{0x1250E1EBL},{0x1250E1EBL},{0x1250E1EBL},{0x1250E1EBL}};
                int i, j;
                l_343[0][6] = func_68(p_43, func_68(p_43, l_342, p_865), p_865);
                for (p_865->g_103.f3 = 0; (p_865->g_103.f3 == (-30)); p_865->g_103.f3 = safe_sub_func_uint32_t_u_u(p_865->g_103.f3, 2))
                { /* block id: 149 */
                    int64_t *l_353 = &l_314;
                    int32_t *l_357 = &p_865->g_358[4][1];
                    int32_t l_379[6] = {(-3L),1L,(-3L),(-3L),1L,(-3L)};
                    int32_t *l_380 = (void*)0;
                    int i;
                    (1 + 1);
                }
                (*p_41) = 0x517E1E57L;
                if ((atomic_inc(&p_865->g_atomic_input[28 * get_linear_group_id() + 17]) == 2))
                { /* block id: 166 */
                    VECTOR(uint32_t, 4) l_381 = (VECTOR(uint32_t, 4))(0x9481F5BCL, (VECTOR(uint32_t, 2))(0x9481F5BCL, 4294967292UL), 4294967292UL);
                    int8_t l_391[8][8] = {{0x23L,0x0AL,(-1L),0x13L,(-1L),0x0AL,0x23L,0x63L},{0x23L,0x0AL,(-1L),0x13L,(-1L),0x0AL,0x23L,0x63L},{0x23L,0x0AL,(-1L),0x13L,(-1L),0x0AL,0x23L,0x63L},{0x23L,0x0AL,(-1L),0x13L,(-1L),0x0AL,0x23L,0x63L},{0x23L,0x0AL,(-1L),0x13L,(-1L),0x0AL,0x23L,0x63L},{0x23L,0x0AL,(-1L),0x13L,(-1L),0x0AL,0x23L,0x63L},{0x23L,0x0AL,(-1L),0x13L,(-1L),0x0AL,0x23L,0x63L},{0x23L,0x0AL,(-1L),0x13L,(-1L),0x0AL,0x23L,0x63L}};
                    uint32_t l_392 = 4294967291UL;
                    int64_t l_395 = 7L;
                    uint32_t l_396[3];
                    int i, j;
                    for (i = 0; i < 3; i++)
                        l_396[i] = 3UL;
                    l_381.x--;
                    for (l_381.y = (-7); (l_381.y >= 19); ++l_381.y)
                    { /* block id: 170 */
                        int16_t l_386[5][4][4] = {{{0x38B6L,0x3500L,(-1L),0x27C7L},{0x38B6L,0x3500L,(-1L),0x27C7L},{0x38B6L,0x3500L,(-1L),0x27C7L},{0x38B6L,0x3500L,(-1L),0x27C7L}},{{0x38B6L,0x3500L,(-1L),0x27C7L},{0x38B6L,0x3500L,(-1L),0x27C7L},{0x38B6L,0x3500L,(-1L),0x27C7L},{0x38B6L,0x3500L,(-1L),0x27C7L}},{{0x38B6L,0x3500L,(-1L),0x27C7L},{0x38B6L,0x3500L,(-1L),0x27C7L},{0x38B6L,0x3500L,(-1L),0x27C7L},{0x38B6L,0x3500L,(-1L),0x27C7L}},{{0x38B6L,0x3500L,(-1L),0x27C7L},{0x38B6L,0x3500L,(-1L),0x27C7L},{0x38B6L,0x3500L,(-1L),0x27C7L},{0x38B6L,0x3500L,(-1L),0x27C7L}},{{0x38B6L,0x3500L,(-1L),0x27C7L},{0x38B6L,0x3500L,(-1L),0x27C7L},{0x38B6L,0x3500L,(-1L),0x27C7L},{0x38B6L,0x3500L,(-1L),0x27C7L}}};
                        int8_t l_387 = (-8L);
                        uint8_t l_388 = 0x37L;
                        int i, j, k;
                        l_388--;
                    }
                    ++l_392;
                    l_396[2]++;
                    unsigned int result = 0;
                    result += l_381.w;
                    result += l_381.z;
                    result += l_381.y;
                    result += l_381.x;
                    int l_391_i0, l_391_i1;
                    for (l_391_i0 = 0; l_391_i0 < 8; l_391_i0++) {
                        for (l_391_i1 = 0; l_391_i1 < 8; l_391_i1++) {
                            result += l_391[l_391_i0][l_391_i1];
                        }
                    }
                    result += l_392;
                    result += l_395;
                    int l_396_i0;
                    for (l_396_i0 = 0; l_396_i0 < 3; l_396_i0++) {
                        result += l_396[l_396_i0];
                    }
                    atomic_add(&p_865->g_special_values[28 * get_linear_group_id() + 17], result);
                }
                else
                { /* block id: 175 */
                    (1 + 1);
                }
            }
            else
            { /* block id: 178 */
                uint64_t *l_401 = &p_865->g_90;
                VECTOR(int32_t, 8) l_405 = (VECTOR(int32_t, 8))(0x6A3AA246L, (VECTOR(int32_t, 4))(0x6A3AA246L, (VECTOR(int32_t, 2))(0x6A3AA246L, 0x0B0A65D4L), 0x0B0A65D4L), 0x0B0A65D4L, 0x6A3AA246L, 0x0B0A65D4L);
                uint8_t *l_417 = (void*)0;
                uint8_t *l_418 = (void*)0;
                uint8_t *l_419 = (void*)0;
                uint8_t *l_420[9][3][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
                int32_t *l_428 = &p_865->g_103.f3;
                int i, j, k;
                if ((*p_865->g_76))
                    break;
                p_42 = func_68((p_44 != (&p_865->g_90 == l_401)), (p_43 , (void*)0), p_865);
                if ((safe_add_func_int32_t_s_s((1L | ((VECTOR(uint32_t, 16))(sub_sat(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(safe_clamp_func(VECTOR(uint32_t, 2),uint32_t,((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(abs(((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 4))((l_423 |= ((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(p_865->g_404.se4)))).xyyx, ((VECTOR(int32_t, 2))(l_405.s03)).yyyy, ((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 4))((safe_mul_func_int8_t_s_s(0x58L, ((VECTOR(int8_t, 16))(p_865->g_408.s7a481f0fd2c81b8b)).s2)), 0x726D63ECL, 0x58EDF34DL, 0x41AE49C8L)))))))).xwwzzxwxyzwxxxwy, ((VECTOR(int32_t, 2))(0x27D64C9FL, 5L)).yyyxxyxxyyxyyxyy, ((VECTOR(int32_t, 4))(p_865->g_409.yyyx)).wzxyyyzwzyzzzywx))).odd, ((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))((safe_add_func_int16_t_s_s(((safe_rshift_func_uint16_t_u_s((p_865->g_176.f0.f0 >= p_44), l_328.s0)) == (p_865->g_103.f4 ^= (l_333 != ((l_405.s5 = (safe_mod_func_uint64_t_u_u(((VECTOR(uint64_t, 4))(l_416.s7542)).y, p_44))) , l_421)))), ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(hadd(((VECTOR(uint16_t, 16))((((VECTOR(uint8_t, 2))(l_422.s60)).hi , ((p_865->g_358[4][1] , p_865->g_404.sd) , p_43)), ((VECTOR(uint16_t, 2))(0x037EL)), ((VECTOR(uint16_t, 4))(0UL)), 0xAF7CL, p_43, 0x2320L, ((VECTOR(uint16_t, 4))(0x73A3L)), 0UL, 0x3139L)).odd, ((VECTOR(uint16_t, 8))(0xEA6EL))))).s42)).yxxx)).z)), ((VECTOR(int16_t, 2))(0x05A2L)), 4L)))), ((VECTOR(uint16_t, 4))(8UL))))).wwzyzzxx))).s3011607672417441, ((VECTOR(int32_t, 16))(0x431BCF7DL)), ((VECTOR(int32_t, 16))(0x36C3901BL))))).sfb, ((VECTOR(int32_t, 2))(0x72EDA093L))))).xyyy)).zwyxxywwywywzwyx, ((VECTOR(int32_t, 16))(1L))))), ((VECTOR(int32_t, 16))((-2L)))))).sd), ((VECTOR(int32_t, 2))(0L)), (-1L))).even))).xxxxyxxx))).s2030631332511022)).s12, (uint32_t)l_405.s0, (uint32_t)p_865->g_103.f5))).xyyyxxyxxyxyxxxy)), ((VECTOR(uint32_t, 16))(0UL))))).s0), (-5L))))
                { /* block id: 184 */
                    uint64_t l_424[5];
                    int i;
                    for (i = 0; i < 5; i++)
                        l_424[i] = 0xBE1641234F481F72L;
                    l_424[0]++;
                    p_42 = l_336;
                }
                else
                { /* block id: 187 */
                    p_42 = (l_427[4][0] = ((*p_865->g_166) , p_41));
                    l_428 = p_41;
                }
            }
            (*l_339) = (*l_339);
            (*p_865->g_130) = (((safe_div_func_uint8_t_u_u(((safe_mod_func_uint64_t_u_u((safe_mul_func_uint8_t_u_u((((VECTOR(uint64_t, 16))(p_865->g_435.s5f86785a242e48b4)).s2 | ((VECTOR(uint64_t, 4))(l_436.s2245)).z), (((p_865->g_445 = (safe_unary_minus_func_int64_t_s(((p_865->g_97[6][3][3] = ((((&p_865->g_166 == &p_865->g_166) , &p_865->g_98) == l_438) <= (safe_mul_func_uint16_t_u_u((((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_441.yy)), (*p_41), (&l_300 != l_442), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0L, 1L)), (-4L), 0x527BCE3AL)))).s30, ((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))((*p_865->g_130), (p_43 == 0UL), 1L, (-8L))).yzxxyyyx)))), ((VECTOR(int32_t, 2))(0x21E2F513L)), 0x4A35AAE1L, (-6L), (-7L), 0x1BBC374CL, 0x3BCC8E02L, 0L)), ((VECTOR(int32_t, 16))((-1L)))))), ((VECTOR(int32_t, 16))(1L))))).sec))).yxxy)).y , 0x5F96L), p_44)))) ^ 0x55F5L)))) & p_44) & p_865->g_409.y))), p_43)) <= l_446), p_865->g_98)) && p_44) && 0xFCL);
        }
    }
    return p_44;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t  func_46(uint32_t  p_47, struct S2 * p_865)
{ /* block id: 8 */
    int16_t l_48[8][4][8] = {{{0x2427L,1L,6L,6L,(-3L),0x6DAEL,0x4C88L,0x6318L},{0x2427L,1L,6L,6L,(-3L),0x6DAEL,0x4C88L,0x6318L},{0x2427L,1L,6L,6L,(-3L),0x6DAEL,0x4C88L,0x6318L},{0x2427L,1L,6L,6L,(-3L),0x6DAEL,0x4C88L,0x6318L}},{{0x2427L,1L,6L,6L,(-3L),0x6DAEL,0x4C88L,0x6318L},{0x2427L,1L,6L,6L,(-3L),0x6DAEL,0x4C88L,0x6318L},{0x2427L,1L,6L,6L,(-3L),0x6DAEL,0x4C88L,0x6318L},{0x2427L,1L,6L,6L,(-3L),0x6DAEL,0x4C88L,0x6318L}},{{0x2427L,1L,6L,6L,(-3L),0x6DAEL,0x4C88L,0x6318L},{0x2427L,1L,6L,6L,(-3L),0x6DAEL,0x4C88L,0x6318L},{0x2427L,1L,6L,6L,(-3L),0x6DAEL,0x4C88L,0x6318L},{0x2427L,1L,6L,6L,(-3L),0x6DAEL,0x4C88L,0x6318L}},{{0x2427L,1L,6L,6L,(-3L),0x6DAEL,0x4C88L,0x6318L},{0x2427L,1L,6L,6L,(-3L),0x6DAEL,0x4C88L,0x6318L},{0x2427L,1L,6L,6L,(-3L),0x6DAEL,0x4C88L,0x6318L},{0x2427L,1L,6L,6L,(-3L),0x6DAEL,0x4C88L,0x6318L}},{{0x2427L,1L,6L,6L,(-3L),0x6DAEL,0x4C88L,0x6318L},{0x2427L,1L,6L,6L,(-3L),0x6DAEL,0x4C88L,0x6318L},{0x2427L,1L,6L,6L,(-3L),0x6DAEL,0x4C88L,0x6318L},{0x2427L,1L,6L,6L,(-3L),0x6DAEL,0x4C88L,0x6318L}},{{0x2427L,1L,6L,6L,(-3L),0x6DAEL,0x4C88L,0x6318L},{0x2427L,1L,6L,6L,(-3L),0x6DAEL,0x4C88L,0x6318L},{0x2427L,1L,6L,6L,(-3L),0x6DAEL,0x4C88L,0x6318L},{0x2427L,1L,6L,6L,(-3L),0x6DAEL,0x4C88L,0x6318L}},{{0x2427L,1L,6L,6L,(-3L),0x6DAEL,0x4C88L,0x6318L},{0x2427L,1L,6L,6L,(-3L),0x6DAEL,0x4C88L,0x6318L},{0x2427L,1L,6L,6L,(-3L),0x6DAEL,0x4C88L,0x6318L},{0x2427L,1L,6L,6L,(-3L),0x6DAEL,0x4C88L,0x6318L}},{{0x2427L,1L,6L,6L,(-3L),0x6DAEL,0x4C88L,0x6318L},{0x2427L,1L,6L,6L,(-3L),0x6DAEL,0x4C88L,0x6318L},{0x2427L,1L,6L,6L,(-3L),0x6DAEL,0x4C88L,0x6318L},{0x2427L,1L,6L,6L,(-3L),0x6DAEL,0x4C88L,0x6318L}}};
    int i, j, k;
    return l_48[1][0][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_865->g_90 p_865->g_72 p_865->g_130 p_865->g_6 p_865->g_103.f3 p_865->g_165 p_865->g_98 p_865->g_166 p_865->g_176.f0.f8 p_865->g_176.f1 p_865->g_4 p_865->g_76 p_865->g_103
 * writes: p_865->g_90 p_865->g_72 p_865->g_130 p_865->g_103.f6 p_865->g_103.f3 p_865->g_6 p_865->g_166 p_865->g_76 p_865->g_176.f1 p_865->g_98 p_865->g_103
 */
int32_t * func_54(int8_t * p_55, int32_t * p_56, struct S2 * p_865)
{ /* block id: 41 */
    int64_t l_141[8] = {0x6A91755C12C6C135L,0x6A91755C12C6C135L,0x6A91755C12C6C135L,0x6A91755C12C6C135L,0x6A91755C12C6C135L,0x6A91755C12C6C135L,0x6A91755C12C6C135L,0x6A91755C12C6C135L};
    int32_t l_142 = 0L;
    int32_t *l_151 = &p_865->g_67;
    VECTOR(int32_t, 8) l_153 = (VECTOR(int32_t, 8))(0x7412CFCAL, (VECTOR(int32_t, 4))(0x7412CFCAL, (VECTOR(int32_t, 2))(0x7412CFCAL, 0L), 0L), 0L, 0x7412CFCAL, 0L);
    int32_t **l_173 = &p_865->g_130;
    VECTOR(int8_t, 2) l_177 = (VECTOR(int8_t, 2))(0x42L, 1L);
    struct S0 **l_199 = &p_865->g_166;
    struct S0 *l_225[7];
    int8_t l_257 = 5L;
    int32_t *l_259[10] = {&p_865->g_103.f9,&l_142,(void*)0,&l_142,&p_865->g_103.f9,&p_865->g_103.f9,&l_142,(void*)0,&l_142,&p_865->g_103.f9};
    int i;
    for (i = 0; i < 7; i++)
        l_225[i] = &p_865->g_176.f0;
    for (p_865->g_90 = 0; (p_865->g_90 < 47); p_865->g_90 = safe_add_func_int32_t_s_s(p_865->g_90, 3))
    { /* block id: 44 */
        int32_t **l_126 = (void*)0;
        p_56 = &p_865->g_6;
    }
    for (p_865->g_72 = 0; (p_865->g_72 > 25); p_865->g_72 = safe_add_func_uint16_t_u_u(p_865->g_72, 2))
    { /* block id: 49 */
        int32_t **l_131 = &p_865->g_130;
        int32_t l_155 = (-10L);
        struct S0 **l_167 = &p_865->g_166;
        struct S0 **l_168 = (void*)0;
        VECTOR(int64_t, 8) l_200 = (VECTOR(int64_t, 8))(0x404CD81E72512A26L, (VECTOR(int64_t, 4))(0x404CD81E72512A26L, (VECTOR(int64_t, 2))(0x404CD81E72512A26L, 0x79C2CA9A2DDA9A17L), 0x79C2CA9A2DDA9A17L), 0x79C2CA9A2DDA9A17L, 0x404CD81E72512A26L, 0x79C2CA9A2DDA9A17L);
        int32_t *l_213 = &l_142;
        int8_t l_214 = (-9L);
        int32_t **l_215 = &l_151;
        VECTOR(uint16_t, 2) l_218 = (VECTOR(uint16_t, 2))(1UL, 0UL);
        uint64_t *l_219 = (void*)0;
        uint64_t *l_220 = &p_865->g_90;
        struct S0 **l_226 = &l_225[4];
        int i;
        (*l_131) = p_56;
        for (p_865->g_103.f6 = 0; (p_865->g_103.f6 < 26); p_865->g_103.f6 = safe_add_func_uint32_t_u_u(p_865->g_103.f6, 5))
        { /* block id: 53 */
            int32_t l_138 = 0x2EF286D0L;
            int32_t *l_148[6][8] = {{&p_865->g_103.f0,&p_865->g_72,&p_865->g_103.f6,&p_865->g_72,&p_865->g_103.f0,&p_865->g_103.f0,&p_865->g_72,&p_865->g_103.f6},{&p_865->g_103.f0,&p_865->g_72,&p_865->g_103.f6,&p_865->g_72,&p_865->g_103.f0,&p_865->g_103.f0,&p_865->g_72,&p_865->g_103.f6},{&p_865->g_103.f0,&p_865->g_72,&p_865->g_103.f6,&p_865->g_72,&p_865->g_103.f0,&p_865->g_103.f0,&p_865->g_72,&p_865->g_103.f6},{&p_865->g_103.f0,&p_865->g_72,&p_865->g_103.f6,&p_865->g_72,&p_865->g_103.f0,&p_865->g_103.f0,&p_865->g_72,&p_865->g_103.f6},{&p_865->g_103.f0,&p_865->g_72,&p_865->g_103.f6,&p_865->g_72,&p_865->g_103.f0,&p_865->g_103.f0,&p_865->g_72,&p_865->g_103.f6},{&p_865->g_103.f0,&p_865->g_72,&p_865->g_103.f6,&p_865->g_72,&p_865->g_103.f0,&p_865->g_103.f0,&p_865->g_72,&p_865->g_103.f6}};
            int32_t **l_147 = &l_148[4][2];
            int32_t *l_150[9];
            int32_t **l_149[4] = {&l_150[1],&l_150[1],&l_150[1],&l_150[1]};
            VECTOR(int64_t, 8) l_152 = (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x138DC3F510E37004L), 0x138DC3F510E37004L), 0x138DC3F510E37004L, (-1L), 0x138DC3F510E37004L);
            int64_t *l_154 = (void*)0;
            int64_t *l_156 = (void*)0;
            int64_t *l_157 = (void*)0;
            int64_t *l_158 = (void*)0;
            int64_t *l_159 = (void*)0;
            int32_t l_160[1][5] = {{(-1L),(-1L),(-1L),(-1L),(-1L)}};
            int32_t *l_161 = (void*)0;
            int32_t *l_162 = (void*)0;
            int32_t *l_163 = (void*)0;
            int32_t *l_164 = &p_865->g_103.f3;
            int8_t *l_178 = (void*)0;
            int8_t *l_179 = (void*)0;
            int8_t *l_180 = (void*)0;
            int8_t *l_181 = (void*)0;
            int8_t *l_182 = (void*)0;
            int8_t *l_183 = (void*)0;
            int8_t *l_184 = (void*)0;
            int8_t *l_185 = (void*)0;
            int8_t *l_186 = (void*)0;
            int8_t *l_187 = (void*)0;
            int8_t *l_188 = (void*)0;
            int8_t *l_189 = (void*)0;
            int8_t *l_190 = (void*)0;
            int8_t *l_191 = (void*)0;
            int8_t *l_192 = (void*)0;
            int i, j;
            for (i = 0; i < 9; i++)
                l_150[i] = &p_865->g_103.f0;
            (*l_164) &= (safe_div_func_uint32_t_u_u((safe_mul_func_int16_t_s_s(l_138, (safe_add_func_int32_t_s_s((l_142 &= l_141[1]), ((safe_sub_func_int64_t_s_s((0x39L <= 0x6EL), (safe_mod_func_int32_t_s_s(0x236995B3L, (((p_56 != (l_151 = ((*l_147) = (void*)0))) | (l_160[0][4] = ((VECTOR(int64_t, 16))(mul_hi(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(0x42F718E4816DB70BL, 0x769D68153D3BC77AL)))).yyyyyyxxyyxxxxyx, ((VECTOR(int64_t, 8))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 8),((VECTOR(int64_t, 2))(0L, (-10L))).yxyyxyyx, ((VECTOR(int64_t, 8))(min(((VECTOR(int64_t, 4))(mul_hi(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(l_152.s41)), ((VECTOR(int64_t, 2))(mad_sat(((VECTOR(int64_t, 16))(((**l_131) = (l_153.s3 = (l_138 > (((VECTOR(int64_t, 2))((-4L), 0x62863D54A8836995L)).odd , l_141[1])))), ((VECTOR(int64_t, 2))(0x026B081F9AE0601FL)), 0x11F21F2E2B9C6053L, (-10L), 0x44DABF86FAEEADD4L, (**l_131), 0x56D4906CFE17A9C6L, ((VECTOR(int64_t, 8))(0x6D34340374B80A73L)))).s09, ((VECTOR(int64_t, 2))((-4L))), ((VECTOR(int64_t, 2))(0x21A22EDFD8EE761CL))))), (-1L), l_155, 0x1EEAFE74C3FBF1EEL, 0L)).even, ((VECTOR(int64_t, 4))(0x4CE6538CD09A4D5CL))))).wwzxxwzy, (int64_t)p_865->g_103.f8))), ((VECTOR(int64_t, 8))(0x7D0ED01F525330C4L))))).s5750431255757774))).s7)) , (**l_131)))))) , (**l_131)))))), 1L));
            (*l_164) |= ((l_167 = p_865->g_165) != ((*p_55) , l_168));
            l_155 = ((safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))((((**l_131) |= (safe_rshift_func_int8_t_s_s((l_131 != l_173), 5))) == ((0x55L > (safe_rshift_func_uint16_t_u_s((p_865->g_176 , (((VECTOR(int8_t, 2))(l_177.xy)).even || ((*p_55) = ((*l_164) &= (*p_55))))), (safe_mul_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u((safe_mul_func_int32_t_s_s(((!GROUP_DIVERGE(0, 1)) && l_141[2]), 0L)), 0)), ((l_199 = l_168) == l_168)))))) <= p_865->g_45.s2)), ((VECTOR(uint8_t, 2))(0x52L)), 252UL)))).x, 0)) < 0x37458410L);
            l_160[0][4] |= ((**l_173) = ((**l_173) >= (((VECTOR(int64_t, 16))(l_200.s3147560464100203)).s4 , (safe_sub_func_uint32_t_u_u(0x581D7D2FL, ((*l_164) ^ (**l_173)))))));
        }
        (*l_173) = p_56;
        (*l_173) = func_61(p_56, (((*l_220) = ((((*l_215) = &p_865->g_67) == (void*)0) | (safe_rshift_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(l_218.xyxyxxxy)).s1057650321506100)).sa, 4)))) , (0x13L >= ((*l_213) ^ (!(safe_add_func_int8_t_s_s((safe_lshift_func_int16_t_s_u((~((((*p_865->g_165) = (*p_865->g_165)) != ((*l_226) = l_225[0])) & (**l_173))), 5)), p_865->g_176.f0.f8)))))), &p_865->g_4, p_865);
    }
    for (p_865->g_176.f1 = 0; (p_865->g_176.f1 == 50); p_865->g_176.f1 = safe_add_func_uint16_t_u_u(p_865->g_176.f1, 1))
    { /* block id: 83 */
        uint32_t l_239 = 0x27F60044L;
        for (p_865->g_72 = 20; (p_865->g_72 > 19); --p_865->g_72)
        { /* block id: 86 */
            uint32_t l_258 = 0x2C854347L;
            if ((atomic_inc(&p_865->l_atomic_input[11]) == 9))
            { /* block id: 88 */
                int32_t l_231 = 0x19075D6DL;
                for (l_231 = 0; (l_231 > 20); l_231 = safe_add_func_uint64_t_u_u(l_231, 4))
                { /* block id: 91 */
                    int32_t l_235[7] = {1L,1L,1L,1L,1L,1L,1L};
                    int32_t *l_234 = &l_235[6];
                    int32_t *l_236 = &l_235[1];
                    int i;
                    l_236 = l_234;
                }
                unsigned int result = 0;
                result += l_231;
                atomic_add(&p_865->l_special_values[11], result);
            }
            else
            { /* block id: 94 */
                (1 + 1);
            }
            if ((*p_56))
                continue;
            for (p_865->g_98 = 0; (p_865->g_98 == (-27)); p_865->g_98--)
            { /* block id: 100 */
                uint64_t *l_251 = &p_865->g_90;
                uint64_t **l_250 = &l_251;
                uint64_t **l_252 = (void*)0;
                uint64_t *l_254[2][6][10] = {{{&p_865->g_90,&p_865->g_90,(void*)0,&p_865->g_90,(void*)0,(void*)0,&p_865->g_90,&p_865->g_90,&p_865->g_90,&p_865->g_90},{&p_865->g_90,&p_865->g_90,(void*)0,&p_865->g_90,(void*)0,(void*)0,&p_865->g_90,&p_865->g_90,&p_865->g_90,&p_865->g_90},{&p_865->g_90,&p_865->g_90,(void*)0,&p_865->g_90,(void*)0,(void*)0,&p_865->g_90,&p_865->g_90,&p_865->g_90,&p_865->g_90},{&p_865->g_90,&p_865->g_90,(void*)0,&p_865->g_90,(void*)0,(void*)0,&p_865->g_90,&p_865->g_90,&p_865->g_90,&p_865->g_90},{&p_865->g_90,&p_865->g_90,(void*)0,&p_865->g_90,(void*)0,(void*)0,&p_865->g_90,&p_865->g_90,&p_865->g_90,&p_865->g_90},{&p_865->g_90,&p_865->g_90,(void*)0,&p_865->g_90,(void*)0,(void*)0,&p_865->g_90,&p_865->g_90,&p_865->g_90,&p_865->g_90}},{{&p_865->g_90,&p_865->g_90,(void*)0,&p_865->g_90,(void*)0,(void*)0,&p_865->g_90,&p_865->g_90,&p_865->g_90,&p_865->g_90},{&p_865->g_90,&p_865->g_90,(void*)0,&p_865->g_90,(void*)0,(void*)0,&p_865->g_90,&p_865->g_90,&p_865->g_90,&p_865->g_90},{&p_865->g_90,&p_865->g_90,(void*)0,&p_865->g_90,(void*)0,(void*)0,&p_865->g_90,&p_865->g_90,&p_865->g_90,&p_865->g_90},{&p_865->g_90,&p_865->g_90,(void*)0,&p_865->g_90,(void*)0,(void*)0,&p_865->g_90,&p_865->g_90,&p_865->g_90,&p_865->g_90},{&p_865->g_90,&p_865->g_90,(void*)0,&p_865->g_90,(void*)0,(void*)0,&p_865->g_90,&p_865->g_90,&p_865->g_90,&p_865->g_90},{&p_865->g_90,&p_865->g_90,(void*)0,&p_865->g_90,(void*)0,(void*)0,&p_865->g_90,&p_865->g_90,&p_865->g_90,&p_865->g_90}}};
                uint64_t **l_253 = &l_254[0][3][7];
                int i, j, k;
                if (l_239)
                    break;
                if ((atomic_inc(&p_865->g_atomic_input[28 * get_linear_group_id() + 6]) == 7))
                { /* block id: 103 */
                    int32_t l_241 = 0L;
                    int32_t *l_240 = &l_241;
                    int32_t *l_242 = &l_241;
                    int8_t l_243 = 0x40L;
                    int32_t l_244 = 0x6BC78CB2L;
                    uint32_t l_245 = 0xAB2A0928L;
                    l_242 = l_240;
                    ++l_245;
                    unsigned int result = 0;
                    result += l_241;
                    result += l_243;
                    result += l_244;
                    result += l_245;
                    atomic_add(&p_865->g_special_values[28 * get_linear_group_id() + 6], result);
                }
                else
                { /* block id: 106 */
                    (1 + 1);
                }
                for (p_865->g_90 = (-17); (p_865->g_90 >= 10); p_865->g_90 = safe_add_func_int8_t_s_s(p_865->g_90, 5))
                { /* block id: 111 */
                    if ((*p_865->g_130))
                        break;
                }
                (*p_56) = ((((*l_250) = &p_865->g_90) != ((*l_253) = &p_865->g_90)) || ((*p_865->g_76) <= (!(safe_mod_func_int16_t_s_s((**l_173), (l_257 , l_258))))));
            }
            (**p_865->g_165) = (*p_865->g_166);
        }
        (*p_56) = (*p_56);
    }
    return p_56;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t * func_57(int64_t  p_58, int32_t * p_59, int8_t * p_60, struct S2 * p_865)
{ /* block id: 38 */
    int32_t *l_116 = &p_865->g_103.f3;
    int32_t *l_117 = &p_865->g_103.f3;
    int32_t *l_118 = (void*)0;
    int32_t *l_119 = &p_865->g_6;
    int32_t *l_120[5][2] = {{&p_865->g_103.f9,&p_865->g_103.f9},{&p_865->g_103.f9,&p_865->g_103.f9},{&p_865->g_103.f9,&p_865->g_103.f9},{&p_865->g_103.f9,&p_865->g_103.f9},{&p_865->g_103.f9,&p_865->g_103.f9}};
    uint32_t l_121 = 0x280DD1ACL;
    int i, j;
    --l_121;
    return p_60;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_865->g_76
 */
int32_t * func_61(int32_t * p_62, int32_t  p_63, int32_t * p_64, struct S2 * p_865)
{ /* block id: 24 */
    struct S0 *l_102[2];
    struct S0 **l_104 = &l_102[1];
    int32_t *l_105[9][8] = {{&p_865->g_4,&p_865->g_103.f9,&p_865->g_103.f3,&p_865->g_4,&p_865->g_103.f3,&p_865->g_103.f3,&p_865->g_103.f3,&p_865->g_103.f3},{&p_865->g_4,&p_865->g_103.f9,&p_865->g_103.f3,&p_865->g_4,&p_865->g_103.f3,&p_865->g_103.f3,&p_865->g_103.f3,&p_865->g_103.f3},{&p_865->g_4,&p_865->g_103.f9,&p_865->g_103.f3,&p_865->g_4,&p_865->g_103.f3,&p_865->g_103.f3,&p_865->g_103.f3,&p_865->g_103.f3},{&p_865->g_4,&p_865->g_103.f9,&p_865->g_103.f3,&p_865->g_4,&p_865->g_103.f3,&p_865->g_103.f3,&p_865->g_103.f3,&p_865->g_103.f3},{&p_865->g_4,&p_865->g_103.f9,&p_865->g_103.f3,&p_865->g_4,&p_865->g_103.f3,&p_865->g_103.f3,&p_865->g_103.f3,&p_865->g_103.f3},{&p_865->g_4,&p_865->g_103.f9,&p_865->g_103.f3,&p_865->g_4,&p_865->g_103.f3,&p_865->g_103.f3,&p_865->g_103.f3,&p_865->g_103.f3},{&p_865->g_4,&p_865->g_103.f9,&p_865->g_103.f3,&p_865->g_4,&p_865->g_103.f3,&p_865->g_103.f3,&p_865->g_103.f3,&p_865->g_103.f3},{&p_865->g_4,&p_865->g_103.f9,&p_865->g_103.f3,&p_865->g_4,&p_865->g_103.f3,&p_865->g_103.f3,&p_865->g_103.f3,&p_865->g_103.f3},{&p_865->g_4,&p_865->g_103.f9,&p_865->g_103.f3,&p_865->g_4,&p_865->g_103.f3,&p_865->g_103.f3,&p_865->g_103.f3,&p_865->g_103.f3}};
    uint8_t l_106 = 0xB4L;
    int i, j;
    for (i = 0; i < 2; i++)
        l_102[i] = &p_865->g_103;
    (*l_104) = l_102[1];
    l_106--;
    if ((atomic_inc(&p_865->l_atomic_input[21]) == 1))
    { /* block id: 28 */
        int32_t l_109 = (-1L);
        int32_t l_110[6] = {2L,2L,2L,2L,2L,2L};
        uint32_t l_111 = 4294967294UL;
        VECTOR(int8_t, 8) l_112 = (VECTOR(int8_t, 8))(0x74L, (VECTOR(int8_t, 4))(0x74L, (VECTOR(int8_t, 2))(0x74L, 1L), 1L), 1L, 0x74L, 1L);
        int8_t l_113 = 0x15L;
        int32_t l_114 = 0x7DF0F64EL;
        int i;
        l_110[4] &= l_109;
        l_113 ^= (l_112.s5 ^= l_111);
        l_114 = 0x655CF958L;
        unsigned int result = 0;
        result += l_109;
        int l_110_i0;
        for (l_110_i0 = 0; l_110_i0 < 6; l_110_i0++) {
            result += l_110[l_110_i0];
        }
        result += l_111;
        result += l_112.s7;
        result += l_112.s6;
        result += l_112.s5;
        result += l_112.s4;
        result += l_112.s3;
        result += l_112.s2;
        result += l_112.s1;
        result += l_112.s0;
        result += l_113;
        result += l_114;
        atomic_add(&p_865->l_special_values[21], result);
    }
    else
    { /* block id: 33 */
        (1 + 1);
    }
    p_865->g_76 = p_62;
    return p_64;
}


/* ------------------------------------------ */
/* 
 * reads : p_865->g_76 p_865->g_6 p_865->g_90 p_865->g_45 p_865->g_72 p_865->g_comm_values p_865->g_99
 * writes: p_865->g_6 p_865->g_90 p_865->g_99
 */
int32_t * func_68(int8_t  p_69, int32_t * p_70, struct S2 * p_865)
{ /* block id: 17 */
    int32_t l_81 = 0x2DE0B6ADL;
    VECTOR(int16_t, 8) l_86 = (VECTOR(int16_t, 8))((-8L), (VECTOR(int16_t, 4))((-8L), (VECTOR(int16_t, 2))((-8L), 0x4427L), 0x4427L), 0x4427L, (-8L), 0x4427L);
    uint64_t *l_89 = &p_865->g_90;
    int8_t *l_91 = (void*)0;
    int32_t l_94 = 0L;
    int32_t l_95 = (-9L);
    int32_t *l_96[2];
    int i;
    for (i = 0; i < 2; i++)
        l_96[i] = &l_81;
    (*p_865->g_76) ^= (safe_rshift_func_uint16_t_u_u(0x1EF5L, 2));
    l_81 = (p_69 > ((safe_mul_func_uint16_t_u_u((safe_mul_func_int16_t_s_s(l_81, ((((safe_mul_func_uint16_t_u_u(((((p_69 || (safe_add_func_uint64_t_u_u((0L <= ((*l_89) ^= (((VECTOR(int16_t, 16))(l_86.s2076633076127030)).s9 < (safe_sub_func_int64_t_s_s(2L, (p_70 != &l_81)))))), (l_94 = (l_91 != ((safe_add_func_uint16_t_u_u(0x873BL, l_86.s5)) , (void*)0)))))) || p_865->g_45.sd) <= FAKE_DIVERGE(p_865->group_2_offset, get_group_id(2), 10)) ^ l_86.s3), 1L)) == p_69) , l_95) >= l_86.s7))), p_865->g_72)) || p_865->g_comm_values[p_865->tid]));
    p_865->g_99++;
    return p_70;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[28];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 28; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[28];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 28; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[40];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 40; i++)
            l_comm_values[i] = 1;
    struct S2 c_866;
    struct S2* p_865 = &c_866;
    struct S2 c_867 = {
        3L, // p_865->g_4
        1L, // p_865->g_6
        &p_865->g_6, // p_865->g_5
        (VECTOR(int8_t, 16))(0x61L, (VECTOR(int8_t, 4))(0x61L, (VECTOR(int8_t, 2))(0x61L, (-3L)), (-3L)), (-3L), 0x61L, (-3L), (VECTOR(int8_t, 2))(0x61L, (-3L)), (VECTOR(int8_t, 2))(0x61L, (-3L)), 0x61L, (-3L), 0x61L, (-3L)), // p_865->g_45
        0x73B7D965L, // p_865->g_67
        (-2L), // p_865->g_72
        &p_865->g_6, // p_865->g_76
        0x54446D15494F356FL, // p_865->g_90
        {{{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)}},{{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)}},{{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)}},{{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)}},{{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)}},{{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)}},{{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)},{0x1089L,0x1A8BL,1L,(-10L),(-1L)}}}, // p_865->g_97
        0x48L, // p_865->g_98
        0UL, // p_865->g_99
        {0L,0x60C39D9FE8AC17F9L,0x6EF0C4AFL,1L,0x8D29CDFBL,0x4F1BB376L,1L,0x208E9886L,0x3543D04623539A05L,-1L}, // p_865->g_103
        &p_865->g_6, // p_865->g_130
        {{&p_865->g_130,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,&p_865->g_130,&p_865->g_130,&p_865->g_130},{&p_865->g_130,&p_865->g_130,&p_865->g_130,&p_865->g_130}}, // p_865->g_129
        &p_865->g_103, // p_865->g_166
        &p_865->g_166, // p_865->g_165
        {{0x4C11F17EL,0x4A105D9FA13DB782L,0L,0x298CA150L,0x83EB55C6L,0x0F6B6309L,0x75D05C0FL,4UL,0x40C610735DB4DFD0L,6L}}, // p_865->g_176
        (VECTOR(int8_t, 2))(0x45L, 0x69L), // p_865->g_261
        (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L, (VECTOR(int8_t, 2))((-1L), 1L), (VECTOR(int8_t, 2))((-1L), 1L), (-1L), 1L, (-1L), 1L), // p_865->g_262
        (VECTOR(uint8_t, 8))(0xD4L, (VECTOR(uint8_t, 4))(0xD4L, (VECTOR(uint8_t, 2))(0xD4L, 0xC9L), 0xC9L), 0xC9L, 0xD4L, 0xC9L), // p_865->g_264
        (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x6DL), 0x6DL), 0x6DL, 0UL, 0x6DL, (VECTOR(uint8_t, 2))(0UL, 0x6DL), (VECTOR(uint8_t, 2))(0UL, 0x6DL), 0UL, 0x6DL, 0UL, 0x6DL), // p_865->g_268
        (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x5FL), 0x5FL), // p_865->g_287
        (void*)0, // p_865->g_356
        {{0x2B12FD30L,(-4L)},{0x2B12FD30L,(-4L)},{0x2B12FD30L,(-4L)},{0x2B12FD30L,(-4L)},{0x2B12FD30L,(-4L)},{0x2B12FD30L,(-4L)},{0x2B12FD30L,(-4L)},{0x2B12FD30L,(-4L)},{0x2B12FD30L,(-4L)}}, // p_865->g_358
        (VECTOR(int32_t, 16))(9L, (VECTOR(int32_t, 4))(9L, (VECTOR(int32_t, 2))(9L, (-1L)), (-1L)), (-1L), 9L, (-1L), (VECTOR(int32_t, 2))(9L, (-1L)), (VECTOR(int32_t, 2))(9L, (-1L)), 9L, (-1L), 9L, (-1L)), // p_865->g_404
        (VECTOR(int8_t, 16))(0x6FL, (VECTOR(int8_t, 4))(0x6FL, (VECTOR(int8_t, 2))(0x6FL, 0x7EL), 0x7EL), 0x7EL, 0x6FL, 0x7EL, (VECTOR(int8_t, 2))(0x6FL, 0x7EL), (VECTOR(int8_t, 2))(0x6FL, 0x7EL), 0x6FL, 0x7EL, 0x6FL, 0x7EL), // p_865->g_408
        (VECTOR(int32_t, 2))(1L, (-1L)), // p_865->g_409
        (VECTOR(uint64_t, 16))(0xCBA1508E20F3122AL, (VECTOR(uint64_t, 4))(0xCBA1508E20F3122AL, (VECTOR(uint64_t, 2))(0xCBA1508E20F3122AL, 0x5ECBCB07EB745F4AL), 0x5ECBCB07EB745F4AL), 0x5ECBCB07EB745F4AL, 0xCBA1508E20F3122AL, 0x5ECBCB07EB745F4AL, (VECTOR(uint64_t, 2))(0xCBA1508E20F3122AL, 0x5ECBCB07EB745F4AL), (VECTOR(uint64_t, 2))(0xCBA1508E20F3122AL, 0x5ECBCB07EB745F4AL), 0xCBA1508E20F3122AL, 0x5ECBCB07EB745F4AL, 0xCBA1508E20F3122AL, 0x5ECBCB07EB745F4AL), // p_865->g_435
        0x1C4AC585L, // p_865->g_445
        {{{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0}},{{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0}},{{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0}},{{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0}},{{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0}},{{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0},{&p_865->g_176.f0,&p_865->g_103,&p_865->g_103,&p_865->g_176.f0}}}, // p_865->g_457
        &p_865->g_176.f0, // p_865->g_458
        &p_865->g_176.f0, // p_865->g_460
        {{0x06943821L,3L,0x40C2B9F0L,0x2FEA84E4L,0UL,0x00C000C0L,1L,4UL,0L,0L},{0x06943821L,3L,0x40C2B9F0L,0x2FEA84E4L,0UL,0x00C000C0L,1L,4UL,0L,0L},{0x06943821L,3L,0x40C2B9F0L,0x2FEA84E4L,0UL,0x00C000C0L,1L,4UL,0L,0L},{0x06943821L,3L,0x40C2B9F0L,0x2FEA84E4L,0UL,0x00C000C0L,1L,4UL,0L,0L},{0x06943821L,3L,0x40C2B9F0L,0x2FEA84E4L,0UL,0x00C000C0L,1L,4UL,0L,0L},{0x06943821L,3L,0x40C2B9F0L,0x2FEA84E4L,0UL,0x00C000C0L,1L,4UL,0L,0L},{0x06943821L,3L,0x40C2B9F0L,0x2FEA84E4L,0UL,0x00C000C0L,1L,4UL,0L,0L},{0x06943821L,3L,0x40C2B9F0L,0x2FEA84E4L,0UL,0x00C000C0L,1L,4UL,0L,0L},{0x06943821L,3L,0x40C2B9F0L,0x2FEA84E4L,0UL,0x00C000C0L,1L,4UL,0L,0L},{0x06943821L,3L,0x40C2B9F0L,0x2FEA84E4L,0UL,0x00C000C0L,1L,4UL,0L,0L}}, // p_865->g_474
        {0x5772B57EL,0x2B2A21D33F3EA73BL,0x16BB3178L,0x7A0EF949L,4294967291UL,-1L,0x66323FC4L,4294967295UL,-9L,0x566FCE3EL}, // p_865->g_475
        &p_865->g_474[6].f3, // p_865->g_489
        {{0x34D509ECL,-10L,-1L,3L,0x0218C0D2L,0x5D572C92L,0x467CF598L,0x42E3398CL,0x5BF019CC474AB9C3L,4L}}, // p_865->g_537
        (-7L), // p_865->g_541
        &p_865->g_541, // p_865->g_540
        (-1L), // p_865->g_543
        &p_865->g_543, // p_865->g_542
        0x296F33B2L, // p_865->g_545
        &p_865->g_545, // p_865->g_544
        {{(void*)0,(void*)0,&p_865->g_544,&p_865->g_540,&p_865->g_544,&p_865->g_540,&p_865->g_544,(void*)0,(void*)0,&p_865->g_544},{(void*)0,(void*)0,&p_865->g_544,&p_865->g_540,&p_865->g_544,&p_865->g_540,&p_865->g_544,(void*)0,(void*)0,&p_865->g_544},{(void*)0,(void*)0,&p_865->g_544,&p_865->g_540,&p_865->g_544,&p_865->g_540,&p_865->g_544,(void*)0,(void*)0,&p_865->g_544},{(void*)0,(void*)0,&p_865->g_544,&p_865->g_540,&p_865->g_544,&p_865->g_540,&p_865->g_544,(void*)0,(void*)0,&p_865->g_544},{(void*)0,(void*)0,&p_865->g_544,&p_865->g_540,&p_865->g_544,&p_865->g_540,&p_865->g_544,(void*)0,(void*)0,&p_865->g_544},{(void*)0,(void*)0,&p_865->g_544,&p_865->g_540,&p_865->g_544,&p_865->g_540,&p_865->g_544,(void*)0,(void*)0,&p_865->g_544},{(void*)0,(void*)0,&p_865->g_544,&p_865->g_540,&p_865->g_544,&p_865->g_540,&p_865->g_544,(void*)0,(void*)0,&p_865->g_544},{(void*)0,(void*)0,&p_865->g_544,&p_865->g_540,&p_865->g_544,&p_865->g_540,&p_865->g_544,(void*)0,(void*)0,&p_865->g_544}}, // p_865->g_539
        &p_865->g_130, // p_865->g_552
        {{0x4039C5D6L,0x6EA107B43102B54FL,0L,-1L,4294967295UL,0L,0L,0xCDB172D5L,0x10323E8E01582B0FL,1L}}, // p_865->g_581
        (VECTOR(int16_t, 8))(0x52B4L, (VECTOR(int16_t, 4))(0x52B4L, (VECTOR(int16_t, 2))(0x52B4L, (-5L)), (-5L)), (-5L), 0x52B4L, (-5L)), // p_865->g_582
        (VECTOR(uint32_t, 2))(4294967295UL, 0x965218ECL), // p_865->g_587
        (VECTOR(uint32_t, 8))(0x3A8DB123L, (VECTOR(uint32_t, 4))(0x3A8DB123L, (VECTOR(uint32_t, 2))(0x3A8DB123L, 0UL), 0UL), 0UL, 0x3A8DB123L, 0UL), // p_865->g_597
        {0x702F14B5L,0x0CBDC186C0376D9EL,1L,0x48A1FE4FL,0x6D8EF3B1L,0x62A482E6L,-3L,0x143F9CC9L,0x35A5FBDBCABE0716L,-9L}, // p_865->g_655
        (void*)0, // p_865->g_660
        {{0x1A006B12L,0x4C450621509D82A2L,-1L,-1L,0xCB872A86L,0x6723C7FCL,-5L,2UL,0x5C3E3672C980129DL,-1L}}, // p_865->g_680
        (VECTOR(uint8_t, 2))(2UL, 248UL), // p_865->g_708
        {{&p_865->g_537,&p_865->g_537,&p_865->g_537,&p_865->g_537,&p_865->g_537,&p_865->g_537,&p_865->g_537,&p_865->g_537},{&p_865->g_537,&p_865->g_537,&p_865->g_537,&p_865->g_537,&p_865->g_537,&p_865->g_537,&p_865->g_537,&p_865->g_537},{&p_865->g_537,&p_865->g_537,&p_865->g_537,&p_865->g_537,&p_865->g_537,&p_865->g_537,&p_865->g_537,&p_865->g_537}}, // p_865->g_733
        {{0L,0x604A7FA24A17264AL,2L,0x7661B772L,4294967286UL,-10L,-3L,0x103AAA22L,-3L,-1L}}, // p_865->g_745
        {{{0UL,0UL,0x71AFL},{0UL,0UL,0x71AFL}},{{0UL,0UL,0x71AFL},{0UL,0UL,0x71AFL}},{{0UL,0UL,0x71AFL},{0UL,0UL,0x71AFL}}}, // p_865->g_747
        {{-1L,0x160A7BC81C0B9B40L,-10L,0x749B6120L,4294967289UL,0x09D5FFE5L,0x085B9D6AL,0x598B7901L,0L,-1L},{-1L,0x160A7BC81C0B9B40L,-10L,0x749B6120L,4294967289UL,0x09D5FFE5L,0x085B9D6AL,0x598B7901L,0L,-1L},{-1L,0x160A7BC81C0B9B40L,-10L,0x749B6120L,4294967289UL,0x09D5FFE5L,0x085B9D6AL,0x598B7901L,0L,-1L},{-1L,0x160A7BC81C0B9B40L,-10L,0x749B6120L,4294967289UL,0x09D5FFE5L,0x085B9D6AL,0x598B7901L,0L,-1L},{-1L,0x160A7BC81C0B9B40L,-10L,0x749B6120L,4294967289UL,0x09D5FFE5L,0x085B9D6AL,0x598B7901L,0L,-1L},{-1L,0x160A7BC81C0B9B40L,-10L,0x749B6120L,4294967289UL,0x09D5FFE5L,0x085B9D6AL,0x598B7901L,0L,-1L},{-1L,0x160A7BC81C0B9B40L,-10L,0x749B6120L,4294967289UL,0x09D5FFE5L,0x085B9D6AL,0x598B7901L,0L,-1L}}, // p_865->g_748
        {{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L,0L,0L,0L}}, // p_865->g_750
        (-1L), // p_865->g_752
        {{{{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{-5L,8L,-10L,7L,0x2B62DF11L,4L,1L,0xE1A6986BL,0L,-2L},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL}},{{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{-5L,8L,-10L,7L,0x2B62DF11L,4L,1L,0xE1A6986BL,0L,-2L},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL}},{{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{-5L,8L,-10L,7L,0x2B62DF11L,4L,1L,0xE1A6986BL,0L,-2L},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL}},{{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{-5L,8L,-10L,7L,0x2B62DF11L,4L,1L,0xE1A6986BL,0L,-2L},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL}}},{{{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{-5L,8L,-10L,7L,0x2B62DF11L,4L,1L,0xE1A6986BL,0L,-2L},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL}},{{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{-5L,8L,-10L,7L,0x2B62DF11L,4L,1L,0xE1A6986BL,0L,-2L},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL}},{{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{-5L,8L,-10L,7L,0x2B62DF11L,4L,1L,0xE1A6986BL,0L,-2L},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL}},{{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{-5L,8L,-10L,7L,0x2B62DF11L,4L,1L,0xE1A6986BL,0L,-2L},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL}}},{{{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{-5L,8L,-10L,7L,0x2B62DF11L,4L,1L,0xE1A6986BL,0L,-2L},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL}},{{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{-5L,8L,-10L,7L,0x2B62DF11L,4L,1L,0xE1A6986BL,0L,-2L},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL}},{{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{-5L,8L,-10L,7L,0x2B62DF11L,4L,1L,0xE1A6986BL,0L,-2L},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL}},{{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{-5L,8L,-10L,7L,0x2B62DF11L,4L,1L,0xE1A6986BL,0L,-2L},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL}}},{{{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{-5L,8L,-10L,7L,0x2B62DF11L,4L,1L,0xE1A6986BL,0L,-2L},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL}},{{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{-5L,8L,-10L,7L,0x2B62DF11L,4L,1L,0xE1A6986BL,0L,-2L},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL}},{{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{-5L,8L,-10L,7L,0x2B62DF11L,4L,1L,0xE1A6986BL,0L,-2L},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL}},{{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{-5L,8L,-10L,7L,0x2B62DF11L,4L,1L,0xE1A6986BL,0L,-2L},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL}}},{{{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{-5L,8L,-10L,7L,0x2B62DF11L,4L,1L,0xE1A6986BL,0L,-2L},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL}},{{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{-5L,8L,-10L,7L,0x2B62DF11L,4L,1L,0xE1A6986BL,0L,-2L},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL}},{{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{-5L,8L,-10L,7L,0x2B62DF11L,4L,1L,0xE1A6986BL,0L,-2L},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL}},{{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x28C08830L,0x20DDEBED12CD32B0L,0x168C8BD0L,-6L,4294967287UL,-5L,5L,4294967289UL,1L,7L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{-5L,8L,-10L,7L,0x2B62DF11L,4L,1L,0xE1A6986BL,0L,-2L},{0x5425DEFCL,0x4BB98C4006163156L,0L,6L,4294967289UL,0x13C8E2D3L,1L,1UL,0x7F1035146832BA15L,-1L},{0x6C70690AL,0x03FA9D866CB7579DL,-2L,-1L,4294967288UL,0x5A19DDCDL,0x6FB0C2C5L,0x6D5EF9D7L,0x1CB890D0C0EDF5B0L,0x6374F58EL}}}}, // p_865->g_760
        (VECTOR(int8_t, 16))(0x51L, (VECTOR(int8_t, 4))(0x51L, (VECTOR(int8_t, 2))(0x51L, 8L), 8L), 8L, 0x51L, 8L, (VECTOR(int8_t, 2))(0x51L, 8L), (VECTOR(int8_t, 2))(0x51L, 8L), 0x51L, 8L, 0x51L, 8L), // p_865->g_776
        {(void*)0,(void*)0}, // p_865->g_816
        {{{{1L,0x043E337798F6C8CCL,0x37AC2BCCL,0x6509D84BL,9UL,-9L,0x00B54A18L,0x8376156EL,0x4CF62B3E6A8CED73L,-1L},{-9L,0x0490BE6814FE9861L,0x29EC5482L,0x0148888EL,0UL,-1L,4L,1UL,0x5C2904B6C38776E8L,0L}},{{1L,0x043E337798F6C8CCL,0x37AC2BCCL,0x6509D84BL,9UL,-9L,0x00B54A18L,0x8376156EL,0x4CF62B3E6A8CED73L,-1L},{-9L,0x0490BE6814FE9861L,0x29EC5482L,0x0148888EL,0UL,-1L,4L,1UL,0x5C2904B6C38776E8L,0L}},{{1L,0x043E337798F6C8CCL,0x37AC2BCCL,0x6509D84BL,9UL,-9L,0x00B54A18L,0x8376156EL,0x4CF62B3E6A8CED73L,-1L},{-9L,0x0490BE6814FE9861L,0x29EC5482L,0x0148888EL,0UL,-1L,4L,1UL,0x5C2904B6C38776E8L,0L}},{{1L,0x043E337798F6C8CCL,0x37AC2BCCL,0x6509D84BL,9UL,-9L,0x00B54A18L,0x8376156EL,0x4CF62B3E6A8CED73L,-1L},{-9L,0x0490BE6814FE9861L,0x29EC5482L,0x0148888EL,0UL,-1L,4L,1UL,0x5C2904B6C38776E8L,0L}}},{{{1L,0x043E337798F6C8CCL,0x37AC2BCCL,0x6509D84BL,9UL,-9L,0x00B54A18L,0x8376156EL,0x4CF62B3E6A8CED73L,-1L},{-9L,0x0490BE6814FE9861L,0x29EC5482L,0x0148888EL,0UL,-1L,4L,1UL,0x5C2904B6C38776E8L,0L}},{{1L,0x043E337798F6C8CCL,0x37AC2BCCL,0x6509D84BL,9UL,-9L,0x00B54A18L,0x8376156EL,0x4CF62B3E6A8CED73L,-1L},{-9L,0x0490BE6814FE9861L,0x29EC5482L,0x0148888EL,0UL,-1L,4L,1UL,0x5C2904B6C38776E8L,0L}},{{1L,0x043E337798F6C8CCL,0x37AC2BCCL,0x6509D84BL,9UL,-9L,0x00B54A18L,0x8376156EL,0x4CF62B3E6A8CED73L,-1L},{-9L,0x0490BE6814FE9861L,0x29EC5482L,0x0148888EL,0UL,-1L,4L,1UL,0x5C2904B6C38776E8L,0L}},{{1L,0x043E337798F6C8CCL,0x37AC2BCCL,0x6509D84BL,9UL,-9L,0x00B54A18L,0x8376156EL,0x4CF62B3E6A8CED73L,-1L},{-9L,0x0490BE6814FE9861L,0x29EC5482L,0x0148888EL,0UL,-1L,4L,1UL,0x5C2904B6C38776E8L,0L}}},{{{1L,0x043E337798F6C8CCL,0x37AC2BCCL,0x6509D84BL,9UL,-9L,0x00B54A18L,0x8376156EL,0x4CF62B3E6A8CED73L,-1L},{-9L,0x0490BE6814FE9861L,0x29EC5482L,0x0148888EL,0UL,-1L,4L,1UL,0x5C2904B6C38776E8L,0L}},{{1L,0x043E337798F6C8CCL,0x37AC2BCCL,0x6509D84BL,9UL,-9L,0x00B54A18L,0x8376156EL,0x4CF62B3E6A8CED73L,-1L},{-9L,0x0490BE6814FE9861L,0x29EC5482L,0x0148888EL,0UL,-1L,4L,1UL,0x5C2904B6C38776E8L,0L}},{{1L,0x043E337798F6C8CCL,0x37AC2BCCL,0x6509D84BL,9UL,-9L,0x00B54A18L,0x8376156EL,0x4CF62B3E6A8CED73L,-1L},{-9L,0x0490BE6814FE9861L,0x29EC5482L,0x0148888EL,0UL,-1L,4L,1UL,0x5C2904B6C38776E8L,0L}},{{1L,0x043E337798F6C8CCL,0x37AC2BCCL,0x6509D84BL,9UL,-9L,0x00B54A18L,0x8376156EL,0x4CF62B3E6A8CED73L,-1L},{-9L,0x0490BE6814FE9861L,0x29EC5482L,0x0148888EL,0UL,-1L,4L,1UL,0x5C2904B6C38776E8L,0L}}},{{{1L,0x043E337798F6C8CCL,0x37AC2BCCL,0x6509D84BL,9UL,-9L,0x00B54A18L,0x8376156EL,0x4CF62B3E6A8CED73L,-1L},{-9L,0x0490BE6814FE9861L,0x29EC5482L,0x0148888EL,0UL,-1L,4L,1UL,0x5C2904B6C38776E8L,0L}},{{1L,0x043E337798F6C8CCL,0x37AC2BCCL,0x6509D84BL,9UL,-9L,0x00B54A18L,0x8376156EL,0x4CF62B3E6A8CED73L,-1L},{-9L,0x0490BE6814FE9861L,0x29EC5482L,0x0148888EL,0UL,-1L,4L,1UL,0x5C2904B6C38776E8L,0L}},{{1L,0x043E337798F6C8CCL,0x37AC2BCCL,0x6509D84BL,9UL,-9L,0x00B54A18L,0x8376156EL,0x4CF62B3E6A8CED73L,-1L},{-9L,0x0490BE6814FE9861L,0x29EC5482L,0x0148888EL,0UL,-1L,4L,1UL,0x5C2904B6C38776E8L,0L}},{{1L,0x043E337798F6C8CCL,0x37AC2BCCL,0x6509D84BL,9UL,-9L,0x00B54A18L,0x8376156EL,0x4CF62B3E6A8CED73L,-1L},{-9L,0x0490BE6814FE9861L,0x29EC5482L,0x0148888EL,0UL,-1L,4L,1UL,0x5C2904B6C38776E8L,0L}}}}, // p_865->g_819
        &p_865->g_130, // p_865->g_824
        0, // p_865->v_collective
        sequence_input[get_global_id(0)], // p_865->global_0_offset
        sequence_input[get_global_id(1)], // p_865->global_1_offset
        sequence_input[get_global_id(2)], // p_865->global_2_offset
        sequence_input[get_local_id(0)], // p_865->local_0_offset
        sequence_input[get_local_id(1)], // p_865->local_1_offset
        sequence_input[get_local_id(2)], // p_865->local_2_offset
        sequence_input[get_group_id(0)], // p_865->group_0_offset
        sequence_input[get_group_id(1)], // p_865->group_1_offset
        sequence_input[get_group_id(2)], // p_865->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 40)), permutations[0][get_linear_local_id()])), // p_865->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_866 = c_867;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_865);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_865->g_4, "p_865->g_4", print_hash_value);
    transparent_crc(p_865->g_6, "p_865->g_6", print_hash_value);
    transparent_crc(p_865->g_45.s0, "p_865->g_45.s0", print_hash_value);
    transparent_crc(p_865->g_45.s1, "p_865->g_45.s1", print_hash_value);
    transparent_crc(p_865->g_45.s2, "p_865->g_45.s2", print_hash_value);
    transparent_crc(p_865->g_45.s3, "p_865->g_45.s3", print_hash_value);
    transparent_crc(p_865->g_45.s4, "p_865->g_45.s4", print_hash_value);
    transparent_crc(p_865->g_45.s5, "p_865->g_45.s5", print_hash_value);
    transparent_crc(p_865->g_45.s6, "p_865->g_45.s6", print_hash_value);
    transparent_crc(p_865->g_45.s7, "p_865->g_45.s7", print_hash_value);
    transparent_crc(p_865->g_45.s8, "p_865->g_45.s8", print_hash_value);
    transparent_crc(p_865->g_45.s9, "p_865->g_45.s9", print_hash_value);
    transparent_crc(p_865->g_45.sa, "p_865->g_45.sa", print_hash_value);
    transparent_crc(p_865->g_45.sb, "p_865->g_45.sb", print_hash_value);
    transparent_crc(p_865->g_45.sc, "p_865->g_45.sc", print_hash_value);
    transparent_crc(p_865->g_45.sd, "p_865->g_45.sd", print_hash_value);
    transparent_crc(p_865->g_45.se, "p_865->g_45.se", print_hash_value);
    transparent_crc(p_865->g_45.sf, "p_865->g_45.sf", print_hash_value);
    transparent_crc(p_865->g_67, "p_865->g_67", print_hash_value);
    transparent_crc(p_865->g_72, "p_865->g_72", print_hash_value);
    transparent_crc(p_865->g_90, "p_865->g_90", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_865->g_97[i][j][k], "p_865->g_97[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_865->g_98, "p_865->g_98", print_hash_value);
    transparent_crc(p_865->g_99, "p_865->g_99", print_hash_value);
    transparent_crc(p_865->g_103.f0, "p_865->g_103.f0", print_hash_value);
    transparent_crc(p_865->g_103.f1, "p_865->g_103.f1", print_hash_value);
    transparent_crc(p_865->g_103.f2, "p_865->g_103.f2", print_hash_value);
    transparent_crc(p_865->g_103.f3, "p_865->g_103.f3", print_hash_value);
    transparent_crc(p_865->g_103.f4, "p_865->g_103.f4", print_hash_value);
    transparent_crc(p_865->g_103.f5, "p_865->g_103.f5", print_hash_value);
    transparent_crc(p_865->g_103.f6, "p_865->g_103.f6", print_hash_value);
    transparent_crc(p_865->g_103.f7, "p_865->g_103.f7", print_hash_value);
    transparent_crc(p_865->g_103.f8, "p_865->g_103.f8", print_hash_value);
    transparent_crc(p_865->g_103.f9, "p_865->g_103.f9", print_hash_value);
    transparent_crc(p_865->g_176.f0.f0, "p_865->g_176.f0.f0", print_hash_value);
    transparent_crc(p_865->g_176.f0.f1, "p_865->g_176.f0.f1", print_hash_value);
    transparent_crc(p_865->g_176.f0.f2, "p_865->g_176.f0.f2", print_hash_value);
    transparent_crc(p_865->g_176.f0.f3, "p_865->g_176.f0.f3", print_hash_value);
    transparent_crc(p_865->g_176.f0.f4, "p_865->g_176.f0.f4", print_hash_value);
    transparent_crc(p_865->g_176.f0.f5, "p_865->g_176.f0.f5", print_hash_value);
    transparent_crc(p_865->g_176.f0.f6, "p_865->g_176.f0.f6", print_hash_value);
    transparent_crc(p_865->g_176.f0.f7, "p_865->g_176.f0.f7", print_hash_value);
    transparent_crc(p_865->g_176.f0.f8, "p_865->g_176.f0.f8", print_hash_value);
    transparent_crc(p_865->g_176.f0.f9, "p_865->g_176.f0.f9", print_hash_value);
    transparent_crc(p_865->g_261.x, "p_865->g_261.x", print_hash_value);
    transparent_crc(p_865->g_261.y, "p_865->g_261.y", print_hash_value);
    transparent_crc(p_865->g_262.s0, "p_865->g_262.s0", print_hash_value);
    transparent_crc(p_865->g_262.s1, "p_865->g_262.s1", print_hash_value);
    transparent_crc(p_865->g_262.s2, "p_865->g_262.s2", print_hash_value);
    transparent_crc(p_865->g_262.s3, "p_865->g_262.s3", print_hash_value);
    transparent_crc(p_865->g_262.s4, "p_865->g_262.s4", print_hash_value);
    transparent_crc(p_865->g_262.s5, "p_865->g_262.s5", print_hash_value);
    transparent_crc(p_865->g_262.s6, "p_865->g_262.s6", print_hash_value);
    transparent_crc(p_865->g_262.s7, "p_865->g_262.s7", print_hash_value);
    transparent_crc(p_865->g_262.s8, "p_865->g_262.s8", print_hash_value);
    transparent_crc(p_865->g_262.s9, "p_865->g_262.s9", print_hash_value);
    transparent_crc(p_865->g_262.sa, "p_865->g_262.sa", print_hash_value);
    transparent_crc(p_865->g_262.sb, "p_865->g_262.sb", print_hash_value);
    transparent_crc(p_865->g_262.sc, "p_865->g_262.sc", print_hash_value);
    transparent_crc(p_865->g_262.sd, "p_865->g_262.sd", print_hash_value);
    transparent_crc(p_865->g_262.se, "p_865->g_262.se", print_hash_value);
    transparent_crc(p_865->g_262.sf, "p_865->g_262.sf", print_hash_value);
    transparent_crc(p_865->g_264.s0, "p_865->g_264.s0", print_hash_value);
    transparent_crc(p_865->g_264.s1, "p_865->g_264.s1", print_hash_value);
    transparent_crc(p_865->g_264.s2, "p_865->g_264.s2", print_hash_value);
    transparent_crc(p_865->g_264.s3, "p_865->g_264.s3", print_hash_value);
    transparent_crc(p_865->g_264.s4, "p_865->g_264.s4", print_hash_value);
    transparent_crc(p_865->g_264.s5, "p_865->g_264.s5", print_hash_value);
    transparent_crc(p_865->g_264.s6, "p_865->g_264.s6", print_hash_value);
    transparent_crc(p_865->g_264.s7, "p_865->g_264.s7", print_hash_value);
    transparent_crc(p_865->g_268.s0, "p_865->g_268.s0", print_hash_value);
    transparent_crc(p_865->g_268.s1, "p_865->g_268.s1", print_hash_value);
    transparent_crc(p_865->g_268.s2, "p_865->g_268.s2", print_hash_value);
    transparent_crc(p_865->g_268.s3, "p_865->g_268.s3", print_hash_value);
    transparent_crc(p_865->g_268.s4, "p_865->g_268.s4", print_hash_value);
    transparent_crc(p_865->g_268.s5, "p_865->g_268.s5", print_hash_value);
    transparent_crc(p_865->g_268.s6, "p_865->g_268.s6", print_hash_value);
    transparent_crc(p_865->g_268.s7, "p_865->g_268.s7", print_hash_value);
    transparent_crc(p_865->g_268.s8, "p_865->g_268.s8", print_hash_value);
    transparent_crc(p_865->g_268.s9, "p_865->g_268.s9", print_hash_value);
    transparent_crc(p_865->g_268.sa, "p_865->g_268.sa", print_hash_value);
    transparent_crc(p_865->g_268.sb, "p_865->g_268.sb", print_hash_value);
    transparent_crc(p_865->g_268.sc, "p_865->g_268.sc", print_hash_value);
    transparent_crc(p_865->g_268.sd, "p_865->g_268.sd", print_hash_value);
    transparent_crc(p_865->g_268.se, "p_865->g_268.se", print_hash_value);
    transparent_crc(p_865->g_268.sf, "p_865->g_268.sf", print_hash_value);
    transparent_crc(p_865->g_287.x, "p_865->g_287.x", print_hash_value);
    transparent_crc(p_865->g_287.y, "p_865->g_287.y", print_hash_value);
    transparent_crc(p_865->g_287.z, "p_865->g_287.z", print_hash_value);
    transparent_crc(p_865->g_287.w, "p_865->g_287.w", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_865->g_358[i][j], "p_865->g_358[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_865->g_404.s0, "p_865->g_404.s0", print_hash_value);
    transparent_crc(p_865->g_404.s1, "p_865->g_404.s1", print_hash_value);
    transparent_crc(p_865->g_404.s2, "p_865->g_404.s2", print_hash_value);
    transparent_crc(p_865->g_404.s3, "p_865->g_404.s3", print_hash_value);
    transparent_crc(p_865->g_404.s4, "p_865->g_404.s4", print_hash_value);
    transparent_crc(p_865->g_404.s5, "p_865->g_404.s5", print_hash_value);
    transparent_crc(p_865->g_404.s6, "p_865->g_404.s6", print_hash_value);
    transparent_crc(p_865->g_404.s7, "p_865->g_404.s7", print_hash_value);
    transparent_crc(p_865->g_404.s8, "p_865->g_404.s8", print_hash_value);
    transparent_crc(p_865->g_404.s9, "p_865->g_404.s9", print_hash_value);
    transparent_crc(p_865->g_404.sa, "p_865->g_404.sa", print_hash_value);
    transparent_crc(p_865->g_404.sb, "p_865->g_404.sb", print_hash_value);
    transparent_crc(p_865->g_404.sc, "p_865->g_404.sc", print_hash_value);
    transparent_crc(p_865->g_404.sd, "p_865->g_404.sd", print_hash_value);
    transparent_crc(p_865->g_404.se, "p_865->g_404.se", print_hash_value);
    transparent_crc(p_865->g_404.sf, "p_865->g_404.sf", print_hash_value);
    transparent_crc(p_865->g_408.s0, "p_865->g_408.s0", print_hash_value);
    transparent_crc(p_865->g_408.s1, "p_865->g_408.s1", print_hash_value);
    transparent_crc(p_865->g_408.s2, "p_865->g_408.s2", print_hash_value);
    transparent_crc(p_865->g_408.s3, "p_865->g_408.s3", print_hash_value);
    transparent_crc(p_865->g_408.s4, "p_865->g_408.s4", print_hash_value);
    transparent_crc(p_865->g_408.s5, "p_865->g_408.s5", print_hash_value);
    transparent_crc(p_865->g_408.s6, "p_865->g_408.s6", print_hash_value);
    transparent_crc(p_865->g_408.s7, "p_865->g_408.s7", print_hash_value);
    transparent_crc(p_865->g_408.s8, "p_865->g_408.s8", print_hash_value);
    transparent_crc(p_865->g_408.s9, "p_865->g_408.s9", print_hash_value);
    transparent_crc(p_865->g_408.sa, "p_865->g_408.sa", print_hash_value);
    transparent_crc(p_865->g_408.sb, "p_865->g_408.sb", print_hash_value);
    transparent_crc(p_865->g_408.sc, "p_865->g_408.sc", print_hash_value);
    transparent_crc(p_865->g_408.sd, "p_865->g_408.sd", print_hash_value);
    transparent_crc(p_865->g_408.se, "p_865->g_408.se", print_hash_value);
    transparent_crc(p_865->g_408.sf, "p_865->g_408.sf", print_hash_value);
    transparent_crc(p_865->g_409.x, "p_865->g_409.x", print_hash_value);
    transparent_crc(p_865->g_409.y, "p_865->g_409.y", print_hash_value);
    transparent_crc(p_865->g_435.s0, "p_865->g_435.s0", print_hash_value);
    transparent_crc(p_865->g_435.s1, "p_865->g_435.s1", print_hash_value);
    transparent_crc(p_865->g_435.s2, "p_865->g_435.s2", print_hash_value);
    transparent_crc(p_865->g_435.s3, "p_865->g_435.s3", print_hash_value);
    transparent_crc(p_865->g_435.s4, "p_865->g_435.s4", print_hash_value);
    transparent_crc(p_865->g_435.s5, "p_865->g_435.s5", print_hash_value);
    transparent_crc(p_865->g_435.s6, "p_865->g_435.s6", print_hash_value);
    transparent_crc(p_865->g_435.s7, "p_865->g_435.s7", print_hash_value);
    transparent_crc(p_865->g_435.s8, "p_865->g_435.s8", print_hash_value);
    transparent_crc(p_865->g_435.s9, "p_865->g_435.s9", print_hash_value);
    transparent_crc(p_865->g_435.sa, "p_865->g_435.sa", print_hash_value);
    transparent_crc(p_865->g_435.sb, "p_865->g_435.sb", print_hash_value);
    transparent_crc(p_865->g_435.sc, "p_865->g_435.sc", print_hash_value);
    transparent_crc(p_865->g_435.sd, "p_865->g_435.sd", print_hash_value);
    transparent_crc(p_865->g_435.se, "p_865->g_435.se", print_hash_value);
    transparent_crc(p_865->g_435.sf, "p_865->g_435.sf", print_hash_value);
    transparent_crc(p_865->g_445, "p_865->g_445", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_865->g_474[i].f0, "p_865->g_474[i].f0", print_hash_value);
        transparent_crc(p_865->g_474[i].f1, "p_865->g_474[i].f1", print_hash_value);
        transparent_crc(p_865->g_474[i].f2, "p_865->g_474[i].f2", print_hash_value);
        transparent_crc(p_865->g_474[i].f3, "p_865->g_474[i].f3", print_hash_value);
        transparent_crc(p_865->g_474[i].f4, "p_865->g_474[i].f4", print_hash_value);
        transparent_crc(p_865->g_474[i].f5, "p_865->g_474[i].f5", print_hash_value);
        transparent_crc(p_865->g_474[i].f6, "p_865->g_474[i].f6", print_hash_value);
        transparent_crc(p_865->g_474[i].f7, "p_865->g_474[i].f7", print_hash_value);
        transparent_crc(p_865->g_474[i].f8, "p_865->g_474[i].f8", print_hash_value);
        transparent_crc(p_865->g_474[i].f9, "p_865->g_474[i].f9", print_hash_value);

    }
    transparent_crc(p_865->g_475.f0, "p_865->g_475.f0", print_hash_value);
    transparent_crc(p_865->g_475.f1, "p_865->g_475.f1", print_hash_value);
    transparent_crc(p_865->g_475.f2, "p_865->g_475.f2", print_hash_value);
    transparent_crc(p_865->g_475.f3, "p_865->g_475.f3", print_hash_value);
    transparent_crc(p_865->g_475.f4, "p_865->g_475.f4", print_hash_value);
    transparent_crc(p_865->g_475.f5, "p_865->g_475.f5", print_hash_value);
    transparent_crc(p_865->g_475.f6, "p_865->g_475.f6", print_hash_value);
    transparent_crc(p_865->g_475.f7, "p_865->g_475.f7", print_hash_value);
    transparent_crc(p_865->g_475.f8, "p_865->g_475.f8", print_hash_value);
    transparent_crc(p_865->g_475.f9, "p_865->g_475.f9", print_hash_value);
    transparent_crc(p_865->g_541, "p_865->g_541", print_hash_value);
    transparent_crc(p_865->g_543, "p_865->g_543", print_hash_value);
    transparent_crc(p_865->g_545, "p_865->g_545", print_hash_value);
    transparent_crc(p_865->g_581.f0.f0, "p_865->g_581.f0.f0", print_hash_value);
    transparent_crc(p_865->g_581.f0.f1, "p_865->g_581.f0.f1", print_hash_value);
    transparent_crc(p_865->g_581.f0.f2, "p_865->g_581.f0.f2", print_hash_value);
    transparent_crc(p_865->g_581.f0.f3, "p_865->g_581.f0.f3", print_hash_value);
    transparent_crc(p_865->g_581.f0.f4, "p_865->g_581.f0.f4", print_hash_value);
    transparent_crc(p_865->g_581.f0.f5, "p_865->g_581.f0.f5", print_hash_value);
    transparent_crc(p_865->g_581.f0.f6, "p_865->g_581.f0.f6", print_hash_value);
    transparent_crc(p_865->g_581.f0.f7, "p_865->g_581.f0.f7", print_hash_value);
    transparent_crc(p_865->g_581.f0.f8, "p_865->g_581.f0.f8", print_hash_value);
    transparent_crc(p_865->g_581.f0.f9, "p_865->g_581.f0.f9", print_hash_value);
    transparent_crc(p_865->g_582.s0, "p_865->g_582.s0", print_hash_value);
    transparent_crc(p_865->g_582.s1, "p_865->g_582.s1", print_hash_value);
    transparent_crc(p_865->g_582.s2, "p_865->g_582.s2", print_hash_value);
    transparent_crc(p_865->g_582.s3, "p_865->g_582.s3", print_hash_value);
    transparent_crc(p_865->g_582.s4, "p_865->g_582.s4", print_hash_value);
    transparent_crc(p_865->g_582.s5, "p_865->g_582.s5", print_hash_value);
    transparent_crc(p_865->g_582.s6, "p_865->g_582.s6", print_hash_value);
    transparent_crc(p_865->g_582.s7, "p_865->g_582.s7", print_hash_value);
    transparent_crc(p_865->g_587.x, "p_865->g_587.x", print_hash_value);
    transparent_crc(p_865->g_587.y, "p_865->g_587.y", print_hash_value);
    transparent_crc(p_865->g_597.s0, "p_865->g_597.s0", print_hash_value);
    transparent_crc(p_865->g_597.s1, "p_865->g_597.s1", print_hash_value);
    transparent_crc(p_865->g_597.s2, "p_865->g_597.s2", print_hash_value);
    transparent_crc(p_865->g_597.s3, "p_865->g_597.s3", print_hash_value);
    transparent_crc(p_865->g_597.s4, "p_865->g_597.s4", print_hash_value);
    transparent_crc(p_865->g_597.s5, "p_865->g_597.s5", print_hash_value);
    transparent_crc(p_865->g_597.s6, "p_865->g_597.s6", print_hash_value);
    transparent_crc(p_865->g_597.s7, "p_865->g_597.s7", print_hash_value);
    transparent_crc(p_865->g_655.f0, "p_865->g_655.f0", print_hash_value);
    transparent_crc(p_865->g_655.f1, "p_865->g_655.f1", print_hash_value);
    transparent_crc(p_865->g_655.f2, "p_865->g_655.f2", print_hash_value);
    transparent_crc(p_865->g_655.f3, "p_865->g_655.f3", print_hash_value);
    transparent_crc(p_865->g_655.f4, "p_865->g_655.f4", print_hash_value);
    transparent_crc(p_865->g_655.f5, "p_865->g_655.f5", print_hash_value);
    transparent_crc(p_865->g_655.f6, "p_865->g_655.f6", print_hash_value);
    transparent_crc(p_865->g_655.f7, "p_865->g_655.f7", print_hash_value);
    transparent_crc(p_865->g_655.f8, "p_865->g_655.f8", print_hash_value);
    transparent_crc(p_865->g_655.f9, "p_865->g_655.f9", print_hash_value);
    transparent_crc(p_865->g_680.f0.f0, "p_865->g_680.f0.f0", print_hash_value);
    transparent_crc(p_865->g_680.f0.f1, "p_865->g_680.f0.f1", print_hash_value);
    transparent_crc(p_865->g_680.f0.f2, "p_865->g_680.f0.f2", print_hash_value);
    transparent_crc(p_865->g_680.f0.f3, "p_865->g_680.f0.f3", print_hash_value);
    transparent_crc(p_865->g_680.f0.f4, "p_865->g_680.f0.f4", print_hash_value);
    transparent_crc(p_865->g_680.f0.f5, "p_865->g_680.f0.f5", print_hash_value);
    transparent_crc(p_865->g_680.f0.f6, "p_865->g_680.f0.f6", print_hash_value);
    transparent_crc(p_865->g_680.f0.f7, "p_865->g_680.f0.f7", print_hash_value);
    transparent_crc(p_865->g_680.f0.f8, "p_865->g_680.f0.f8", print_hash_value);
    transparent_crc(p_865->g_680.f0.f9, "p_865->g_680.f0.f9", print_hash_value);
    transparent_crc(p_865->g_708.x, "p_865->g_708.x", print_hash_value);
    transparent_crc(p_865->g_708.y, "p_865->g_708.y", print_hash_value);
    transparent_crc(p_865->g_745.f0.f0, "p_865->g_745.f0.f0", print_hash_value);
    transparent_crc(p_865->g_745.f0.f1, "p_865->g_745.f0.f1", print_hash_value);
    transparent_crc(p_865->g_745.f0.f2, "p_865->g_745.f0.f2", print_hash_value);
    transparent_crc(p_865->g_745.f0.f3, "p_865->g_745.f0.f3", print_hash_value);
    transparent_crc(p_865->g_745.f0.f4, "p_865->g_745.f0.f4", print_hash_value);
    transparent_crc(p_865->g_745.f0.f5, "p_865->g_745.f0.f5", print_hash_value);
    transparent_crc(p_865->g_745.f0.f6, "p_865->g_745.f0.f6", print_hash_value);
    transparent_crc(p_865->g_745.f0.f7, "p_865->g_745.f0.f7", print_hash_value);
    transparent_crc(p_865->g_745.f0.f8, "p_865->g_745.f0.f8", print_hash_value);
    transparent_crc(p_865->g_745.f0.f9, "p_865->g_745.f0.f9", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_865->g_747[i][j][k], "p_865->g_747[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_865->g_748[i].f0, "p_865->g_748[i].f0", print_hash_value);
        transparent_crc(p_865->g_748[i].f1, "p_865->g_748[i].f1", print_hash_value);
        transparent_crc(p_865->g_748[i].f2, "p_865->g_748[i].f2", print_hash_value);
        transparent_crc(p_865->g_748[i].f3, "p_865->g_748[i].f3", print_hash_value);
        transparent_crc(p_865->g_748[i].f4, "p_865->g_748[i].f4", print_hash_value);
        transparent_crc(p_865->g_748[i].f5, "p_865->g_748[i].f5", print_hash_value);
        transparent_crc(p_865->g_748[i].f6, "p_865->g_748[i].f6", print_hash_value);
        transparent_crc(p_865->g_748[i].f7, "p_865->g_748[i].f7", print_hash_value);
        transparent_crc(p_865->g_748[i].f8, "p_865->g_748[i].f8", print_hash_value);
        transparent_crc(p_865->g_748[i].f9, "p_865->g_748[i].f9", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_865->g_750[i][j], "p_865->g_750[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_865->g_752, "p_865->g_752", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_865->g_760[i][j][k].f0, "p_865->g_760[i][j][k].f0", print_hash_value);
                transparent_crc(p_865->g_760[i][j][k].f1, "p_865->g_760[i][j][k].f1", print_hash_value);
                transparent_crc(p_865->g_760[i][j][k].f2, "p_865->g_760[i][j][k].f2", print_hash_value);
                transparent_crc(p_865->g_760[i][j][k].f3, "p_865->g_760[i][j][k].f3", print_hash_value);
                transparent_crc(p_865->g_760[i][j][k].f4, "p_865->g_760[i][j][k].f4", print_hash_value);
                transparent_crc(p_865->g_760[i][j][k].f5, "p_865->g_760[i][j][k].f5", print_hash_value);
                transparent_crc(p_865->g_760[i][j][k].f6, "p_865->g_760[i][j][k].f6", print_hash_value);
                transparent_crc(p_865->g_760[i][j][k].f7, "p_865->g_760[i][j][k].f7", print_hash_value);
                transparent_crc(p_865->g_760[i][j][k].f8, "p_865->g_760[i][j][k].f8", print_hash_value);
                transparent_crc(p_865->g_760[i][j][k].f9, "p_865->g_760[i][j][k].f9", print_hash_value);

            }
        }
    }
    transparent_crc(p_865->g_776.s0, "p_865->g_776.s0", print_hash_value);
    transparent_crc(p_865->g_776.s1, "p_865->g_776.s1", print_hash_value);
    transparent_crc(p_865->g_776.s2, "p_865->g_776.s2", print_hash_value);
    transparent_crc(p_865->g_776.s3, "p_865->g_776.s3", print_hash_value);
    transparent_crc(p_865->g_776.s4, "p_865->g_776.s4", print_hash_value);
    transparent_crc(p_865->g_776.s5, "p_865->g_776.s5", print_hash_value);
    transparent_crc(p_865->g_776.s6, "p_865->g_776.s6", print_hash_value);
    transparent_crc(p_865->g_776.s7, "p_865->g_776.s7", print_hash_value);
    transparent_crc(p_865->g_776.s8, "p_865->g_776.s8", print_hash_value);
    transparent_crc(p_865->g_776.s9, "p_865->g_776.s9", print_hash_value);
    transparent_crc(p_865->g_776.sa, "p_865->g_776.sa", print_hash_value);
    transparent_crc(p_865->g_776.sb, "p_865->g_776.sb", print_hash_value);
    transparent_crc(p_865->g_776.sc, "p_865->g_776.sc", print_hash_value);
    transparent_crc(p_865->g_776.sd, "p_865->g_776.sd", print_hash_value);
    transparent_crc(p_865->g_776.se, "p_865->g_776.se", print_hash_value);
    transparent_crc(p_865->g_776.sf, "p_865->g_776.sf", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_865->g_819[i][j][k].f0, "p_865->g_819[i][j][k].f0", print_hash_value);
                transparent_crc(p_865->g_819[i][j][k].f1, "p_865->g_819[i][j][k].f1", print_hash_value);
                transparent_crc(p_865->g_819[i][j][k].f2, "p_865->g_819[i][j][k].f2", print_hash_value);
                transparent_crc(p_865->g_819[i][j][k].f3, "p_865->g_819[i][j][k].f3", print_hash_value);
                transparent_crc(p_865->g_819[i][j][k].f4, "p_865->g_819[i][j][k].f4", print_hash_value);
                transparent_crc(p_865->g_819[i][j][k].f5, "p_865->g_819[i][j][k].f5", print_hash_value);
                transparent_crc(p_865->g_819[i][j][k].f6, "p_865->g_819[i][j][k].f6", print_hash_value);
                transparent_crc(p_865->g_819[i][j][k].f7, "p_865->g_819[i][j][k].f7", print_hash_value);
                transparent_crc(p_865->g_819[i][j][k].f8, "p_865->g_819[i][j][k].f8", print_hash_value);
                transparent_crc(p_865->g_819[i][j][k].f9, "p_865->g_819[i][j][k].f9", print_hash_value);

            }
        }
    }
    transparent_crc(p_865->v_collective, "p_865->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 28; i++)
            transparent_crc(p_865->g_special_values[i + 28 * get_linear_group_id()], "p_865->g_special_values[i + 28 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 28; i++)
            transparent_crc(p_865->l_special_values[i], "p_865->l_special_values[i]", print_hash_value);
    transparent_crc(p_865->l_comm_values[get_linear_local_id()], "p_865->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_865->g_comm_values[get_linear_group_id() * 40 + get_linear_local_id()], "p_865->g_comm_values[get_linear_group_id() * 40 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
