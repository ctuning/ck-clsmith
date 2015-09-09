// --atomics 68 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 68,21,3 -l 1,3,1
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

__constant uint32_t permutations[10][3] = {
{2,0,1}, // permutation 0
{1,0,2}, // permutation 1
{2,1,0}, // permutation 2
{1,0,2}, // permutation 3
{2,0,1}, // permutation 4
{1,0,2}, // permutation 5
{1,2,0}, // permutation 6
{1,0,2}, // permutation 7
{2,0,1}, // permutation 8
{2,0,1} // permutation 9
};

// Seed: 15

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint8_t  f0;
   uint8_t  f1;
   uint64_t  f2;
   int32_t  f3;
};

union U1 {
   int64_t  f0;
   int32_t  f1;
   volatile int32_t  f2;
   volatile int32_t  f3;
};

union U2 {
   int8_t * f0;
};

union U3 {
   volatile int64_t  f0;
   volatile uint64_t  f1;
   int32_t  f2;
   volatile uint64_t  f3;
};

struct S4 {
    int32_t g_2;
    int32_t g_5;
    int32_t g_16;
    union U2 g_27[6];
    volatile int32_t g_28[10][1][3];
    volatile int32_t g_29;
    int32_t g_30;
    uint16_t g_34;
    int8_t g_36;
    int8_t * volatile g_35;
    uint32_t g_51;
    int32_t g_65;
    uint16_t g_91;
    uint16_t *g_90[9];
    int8_t g_105;
    int64_t g_106;
    union U0 g_110;
    int16_t g_113;
    int8_t g_129[9];
    int32_t g_130;
    uint8_t g_131;
    VECTOR(uint8_t, 8) g_139;
    VECTOR(uint8_t, 2) g_176;
    VECTOR(int16_t, 8) g_206;
    VECTOR(int16_t, 16) g_208;
    VECTOR(int16_t, 16) g_234;
    VECTOR(int16_t, 16) g_235;
    VECTOR(int16_t, 2) g_237;
    int32_t *g_243;
    uint64_t g_245[4][7];
    int32_t **g_276;
    VECTOR(int32_t, 2) g_280;
    uint16_t g_290;
    VECTOR(uint32_t, 4) g_306;
    uint32_t g_330;
    int8_t g_400[2];
    VECTOR(uint8_t, 2) g_403;
    volatile union U1 *g_411;
    VECTOR(uint16_t, 8) g_415;
    int8_t *g_433;
    int8_t * volatile *g_432;
    VECTOR(int16_t, 16) g_463;
    VECTOR(int64_t, 2) g_466;
    VECTOR(int32_t, 2) g_478;
    VECTOR(int32_t, 4) g_479;
    VECTOR(int32_t, 16) g_482;
    VECTOR(int32_t, 4) g_483;
    VECTOR(int32_t, 4) g_484;
    int16_t g_525[8][4][8];
    union U0 *g_531;
    VECTOR(int16_t, 16) g_563;
    VECTOR(uint64_t, 16) g_570;
    uint64_t g_577;
    union U1 g_593;
    uint32_t * volatile *g_620;
    VECTOR(uint8_t, 16) g_671;
    VECTOR(uint16_t, 2) g_683;
    uint64_t g_688;
    volatile union U1 g_738;
    volatile union U1 *g_737[4];
    int32_t ****g_754;
    int32_t * volatile g_770;
    int32_t * volatile g_771;
    int32_t *g_812[5][3][2];
    int32_t **g_811;
    int32_t *** volatile g_813;
    union U1 *g_817;
    union U1 **g_816;
    VECTOR(uint64_t, 2) g_822;
    VECTOR(uint64_t, 16) g_823;
    volatile VECTOR(uint64_t, 8) g_824;
    VECTOR(uint64_t, 8) g_825;
    VECTOR(uint64_t, 16) g_826;
    uint32_t *g_837;
    union U3 g_845;
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
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
uint64_t  func_1(struct S4 * p_847);
uint16_t  func_8(int8_t * p_9, int8_t * p_10, struct S4 * p_847);
int8_t * func_11(int32_t  p_12, int64_t  p_13, uint16_t  p_14, struct S4 * p_847);
uint32_t  func_25(union U2  p_26, struct S4 * p_847);
int32_t  func_40(int8_t * p_41, uint64_t  p_42, int32_t  p_43, uint64_t  p_44, union U0  p_45, struct S4 * p_847);
uint16_t  func_54(int16_t  p_55, uint16_t * p_56, struct S4 * p_847);
uint8_t  func_57(int64_t  p_58, int32_t  p_59, uint32_t  p_60, struct S4 * p_847);
int32_t  func_66(uint16_t * p_67, int32_t  p_68, struct S4 * p_847);
uint16_t * func_69(uint16_t  p_70, uint64_t  p_71, int32_t * p_72, struct S4 * p_847);
uint64_t  func_75(union U0  p_76, union U2  p_77, int32_t  p_78, uint16_t * p_79, struct S4 * p_847);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_847->g_2 p_847->l_comm_values p_847->g_27 p_847->g_35 p_847->g_30 p_847->g_36 p_847->g_51 p_847->g_90 p_847->g_65 p_847->g_110 p_847->g_113 p_847->g_91 p_847->g_comm_values p_847->g_131 p_847->g_110.f3 p_847->g_208 p_847->g_130 p_847->g_245 p_847->g_237 p_847->g_330 p_847->g_280 p_847->g_139 p_847->g_106 p_847->g_129 p_847->g_400 p_847->g_411 p_847->g_276 p_847->g_415 p_847->g_432 p_847->g_110.f2 p_847->g_176 p_847->g_290 p_847->g_235 p_847->g_484 p_847->g_403 p_847->g_243 p_847->g_433 p_847->g_482 p_847->g_525 p_847->g_754 p_847->g_478 p_847->g_563 p_847->g_811 p_847->g_813 p_847->g_770 p_847->g_816 p_847->g_683 p_847->g_845 p_847->g_483
 * writes: p_847->g_2 p_847->g_5 p_847->g_16 p_847->g_30 p_847->g_34 p_847->g_51 p_847->g_65 p_847->g_105 p_847->g_106 p_847->g_comm_values p_847->g_110.f3 p_847->g_131 p_847->g_130 p_847->g_90 p_847->g_113 p_847->g_243 p_847->g_330 p_847->g_91 p_847->g_280 p_847->g_400 p_847->g_411 p_847->g_415 p_847->g_110.f2 p_847->g_531 p_847->g_484 p_847->g_482 p_847->g_466 p_847->g_754 p_847->g_478 p_847->g_36 p_847->g_811 p_847->g_816 p_847->g_837 p_847->g_234
 */
uint64_t  func_1(struct S4 * p_847)
{ /* block id: 4 */
    int32_t l_741 = 0x064C89B8L;
    int32_t l_792 = 0x69DFC083L;
    int32_t *l_793 = (void*)0;
    int32_t *l_794 = &p_847->g_30;
    int32_t *l_795 = (void*)0;
    int32_t *l_796 = &l_741;
    int32_t *l_797 = (void*)0;
    int32_t *l_798 = &l_792;
    int32_t *l_799 = (void*)0;
    int32_t *l_800 = &p_847->g_30;
    int32_t *l_801 = (void*)0;
    int32_t *l_802 = (void*)0;
    int32_t *l_803 = &p_847->g_130;
    int32_t *l_804[1];
    int16_t l_805[2][8] = {{0x30DFL,0x2338L,(-9L),0x2338L,0x30DFL,0x30DFL,0x2338L,(-9L)},{0x30DFL,0x2338L,(-9L),0x2338L,0x30DFL,0x30DFL,0x2338L,(-9L)}};
    uint32_t l_806 = 0x792B01C7L;
    union U0 l_819 = {0x0CL};
    VECTOR(int16_t, 16) l_844 = (VECTOR(int16_t, 16))(0x2729L, (VECTOR(int16_t, 4))(0x2729L, (VECTOR(int16_t, 2))(0x2729L, 0x2948L), 0x2948L), 0x2948L, 0x2729L, 0x2948L, (VECTOR(int16_t, 2))(0x2729L, 0x2948L), (VECTOR(int16_t, 2))(0x2729L, 0x2948L), 0x2729L, 0x2948L, 0x2729L, 0x2948L);
    uint16_t **l_846 = &p_847->g_90[7];
    int i, j;
    for (i = 0; i < 1; i++)
        l_804[i] = (void*)0;
    for (p_847->g_2 = 17; (p_847->g_2 != 24); p_847->g_2 = safe_add_func_int64_t_s_s(p_847->g_2, 1))
    { /* block id: 7 */
        VECTOR(int8_t, 8) l_730 = (VECTOR(int8_t, 8))(0x01L, (VECTOR(int8_t, 4))(0x01L, (VECTOR(int8_t, 2))(0x01L, 1L), 1L), 1L, 0x01L, 1L);
        uint32_t l_732 = 1UL;
        VECTOR(uint8_t, 2) l_733 = (VECTOR(uint8_t, 2))(0x78L, 9UL);
        uint64_t l_734 = 1UL;
        VECTOR(int32_t, 8) l_746 = (VECTOR(int32_t, 8))(0x0FCDAF50L, (VECTOR(int32_t, 4))(0x0FCDAF50L, (VECTOR(int32_t, 2))(0x0FCDAF50L, 0x75BF30B0L), 0x75BF30B0L), 0x75BF30B0L, 0x0FCDAF50L, 0x75BF30B0L);
        int i;
        for (p_847->g_5 = 18; (p_847->g_5 == 16); --p_847->g_5)
        { /* block id: 10 */
            int32_t *l_15 = &p_847->g_16;
            int32_t l_731 = 0x5C2A0B27L;
            int32_t l_742 = 0x45D32A43L;
            uint16_t *l_743 = &p_847->g_34;
            uint16_t *l_744 = (void*)0;
            uint16_t *l_745[4];
            int32_t *l_773 = (void*)0;
            int32_t *l_774 = (void*)0;
            int32_t *l_775 = (void*)0;
            int32_t *l_776 = (void*)0;
            int32_t *l_777 = (void*)0;
            int32_t *l_778 = (void*)0;
            int32_t *l_779 = (void*)0;
            int32_t *l_780 = (void*)0;
            int32_t *l_781 = (void*)0;
            int32_t *l_782 = (void*)0;
            int32_t *l_783 = (void*)0;
            int32_t *l_784 = (void*)0;
            int32_t *l_785 = (void*)0;
            int32_t *l_786 = (void*)0;
            int32_t *l_787 = (void*)0;
            int32_t *l_788 = (void*)0;
            int32_t *l_789 = (void*)0;
            int32_t *l_790 = (void*)0;
            int32_t *l_791[9][6][3] = {{{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0}},{{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0}},{{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0}},{{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0}},{{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0}},{{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0}},{{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0}},{{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0}},{{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0},{&l_742,&p_847->g_2,(void*)0}}};
            int i, j, k;
            for (i = 0; i < 4; i++)
                l_745[i] = &p_847->g_290;
            l_792 |= (func_8(func_11(((*l_15) = p_847->l_comm_values[(safe_mod_func_uint32_t_u_u(p_847->tid, 3))]), (p_847->g_466.x = ((safe_rshift_func_uint16_t_u_u((l_741 = (l_746.s1 = ((((*l_743) = (safe_div_func_uint32_t_u_u((safe_mod_func_int32_t_s_s((safe_mul_func_uint8_t_u_u((((func_25(p_847->g_27[2], p_847) | (safe_rshift_func_int8_t_s_u((l_731 = ((VECTOR(int8_t, 4))(l_730.s0136)).z), 1))) > l_732) , p_847->g_2), ((VECTOR(uint8_t, 8))(l_733.xxxyxxyx)).s7)), (+((VECTOR(uint32_t, 16))(l_734, 0xEEB3C7A3L, ((((p_847->g_737[1] != (void*)0) && (((safe_lshift_func_int8_t_s_u((-1L), 0)) != l_741) == 0x98D6181235223F8DL)) && l_741) && 0UL), 0x223BFC47L, ((VECTOR(uint32_t, 2))(0x991661A9L)), ((VECTOR(uint32_t, 2))(1UL)), 0x57D05340L, p_847->g_129[4], 1UL, 0xAACAC342L, 0x3D0EB46EL, 4294967286UL, 0UL, 0x6396D6D5L)).sf))), l_742))) , l_730.s6) ^ l_741))), 2)) < 0UL)), p_847->g_525[7][3][7], p_847), &p_847->g_129[6], p_847) | p_847->g_563.s7);
        }
    }
    --l_806;
    for (p_847->g_110.f3 = 0; (p_847->g_110.f3 > (-16)); p_847->g_110.f3 = safe_sub_func_uint32_t_u_u(p_847->g_110.f3, 9))
    { /* block id: 283 */
        VECTOR(int64_t, 8) l_827 = (VECTOR(int64_t, 8))(0x1A451822F30AF384L, (VECTOR(int64_t, 4))(0x1A451822F30AF384L, (VECTOR(int64_t, 2))(0x1A451822F30AF384L, 1L), 1L), 1L, 0x1A451822F30AF384L, 1L);
        int16_t l_833 = 3L;
        int i;
        (*p_847->g_813) = p_847->g_811;
        for (p_847->g_130 = 0; (p_847->g_130 < (-13)); p_847->g_130 = safe_sub_func_uint64_t_u_u(p_847->g_130, 4))
        { /* block id: 287 */
            union U1 ***l_818 = &p_847->g_816;
            int32_t l_832 = 0x455970BBL;
            uint32_t *l_835 = &p_847->g_330;
            uint32_t **l_836[3][10];
            int i, j;
            for (i = 0; i < 3; i++)
            {
                for (j = 0; j < 10; j++)
                    l_836[i][j] = &l_835;
            }
            (*l_794) = ((*l_798) = ((((*l_818) = ((0x1A4AC333F74D06FBL & ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(0UL, 0x7D8FF1524E47ACE3L)).yxyyyyyyxxyxxyyy)).even)).s2) , ((((void*)0 == &p_847->g_330) || (+((**p_847->g_276) > (*p_847->g_770)))) , p_847->g_816))) == (l_819 , &p_847->g_411)) && (safe_sub_func_uint64_t_u_u(((VECTOR(uint64_t, 8))(mul_hi(((VECTOR(uint64_t, 2))(18446744073709551615UL, 0UL)).yyxyyxyx, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(mul_hi(((VECTOR(uint64_t, 2))(0UL, 18446744073709551607UL)).xxyyxxyxxxyxyyyx, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(mul_hi(((VECTOR(uint64_t, 2))(p_847->g_822.yx)).xyxxyyxyxxxxyyyx, ((VECTOR(uint64_t, 8))(abs_diff(((VECTOR(uint64_t, 2))(p_847->g_823.s2a)).xyyxyxyx, ((VECTOR(uint64_t, 8))(min(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(p_847->g_824.s53)).xyxx)).zyzwwzzz, ((VECTOR(uint64_t, 8))(p_847->g_825.s15033746)))))))).s0432176605701140))).s48)), ((VECTOR(uint64_t, 4))(mad_hi(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))(p_847->g_826.s6b4e9af710830269)))).s5a71, ((VECTOR(uint64_t, 16))(clz(((VECTOR(uint64_t, 16))(abs_diff(((VECTOR(int64_t, 2))(l_827.s46)).xyxxxyyyyyxxxyxy, ((VECTOR(int64_t, 16))((safe_mul_func_int16_t_s_s((safe_div_func_uint64_t_u_u((p_847->g_27[5] , l_832), FAKE_DIVERGE(p_847->local_0_offset, get_local_id(0), 10))), l_833)), 0L, l_827.s7, (-1L), 0x28F55D9DB851E1BAL, ((VECTOR(int64_t, 8))(1L)), ((VECTOR(int64_t, 2))(3L)), 0L)))))))).sa3c1, ((VECTOR(uint64_t, 4))(0x2C16F3F4CD0870F0L))))), 0x1C4C3AAE209F795FL, 0x54061B40D9FDCF43L)).s3453444436611455))).lo))))).s3, p_847->g_683.x))));
            if (l_832)
                break;
            if ((*p_847->g_243))
                break;
            l_832 ^= (!((((*l_835) = (safe_unary_minus_func_uint64_t_u(FAKE_DIVERGE(p_847->local_1_offset, get_local_id(1), 10)))) , ((p_847->g_837 = (void*)0) == &p_847->g_330)) & (safe_div_func_uint64_t_u_u(0xD6AB321B4636B727L, (safe_lshift_func_int16_t_s_u((p_847->g_234.s6 = p_847->g_280.x), 9))))));
        }
    }
    (*l_796) = (safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(l_844.s5eddb48a)).even)).w, ((*l_798) , ((p_847->g_845 , l_846) != l_846))));
    return p_847->g_483.z;
}


/* ------------------------------------------ */
/* 
 * reads : p_847->g_36 p_847->g_276 p_847->g_243 p_847->g_30 p_847->g_130
 * writes: p_847->g_36 p_847->g_30 p_847->g_130
 */
uint16_t  func_8(int8_t * p_9, int8_t * p_10, struct S4 * p_847)
{ /* block id: 268 */
    int32_t l_765[9] = {0x268CD448L,0x2BE902AEL,0x268CD448L,0x268CD448L,0x2BE902AEL,0x268CD448L,0x268CD448L,0x2BE902AEL,0x268CD448L};
    int32_t l_772 = 0x316E8B7AL;
    int i;
    for (p_847->g_36 = (-8); (p_847->g_36 > (-7)); p_847->g_36 = safe_add_func_int32_t_s_s(p_847->g_36, 2))
    { /* block id: 271 */
        uint8_t l_766 = 0x15L;
        int32_t *l_767 = (void*)0;
        int32_t *l_768 = &p_847->g_110.f3;
        int32_t *l_769 = &p_847->g_110.f3;
        l_772 &= ((safe_unary_minus_func_uint32_t_u(0UL)) > (((*p_847->g_243) = ((**p_847->g_276) != (l_766 &= l_765[5]))) == 0x5DA9FB89L));
    }
    return l_765[7];
}


/* ------------------------------------------ */
/* 
 * reads : p_847->g_482 p_847->g_754 p_847->g_276 p_847->g_243 p_847->g_30 p_847->g_130 p_847->g_478
 * writes: p_847->g_754 p_847->g_51 p_847->g_30 p_847->g_130 p_847->g_478
 */
int8_t * func_11(int32_t  p_12, int64_t  p_13, uint16_t  p_14, struct S4 * p_847)
{ /* block id: 261 */
    int32_t ***l_752 = &p_847->g_276;
    int32_t ****l_751 = &l_752;
    int32_t *****l_753 = &l_751;
    uint32_t *l_759 = &p_847->g_51;
    int16_t *l_760 = (void*)0;
    int16_t *l_761[7] = {&p_847->g_525[7][3][7],&p_847->g_525[7][3][7],&p_847->g_525[7][3][7],&p_847->g_525[7][3][7],&p_847->g_525[7][3][7],&p_847->g_525[7][3][7],&p_847->g_525[7][3][7]};
    int i;
    p_847->g_478.y &= ((safe_mul_func_int16_t_s_s(0x7D5BL, ((safe_rshift_func_uint8_t_u_u(p_847->g_482.s1, 1)) == 0x2939656FL))) && ((((*l_753) = l_751) != (p_847->g_754 = p_847->g_754)) , (((*****l_753) = (0x94030F26L != ((*l_759) = (((safe_sub_func_uint16_t_u_u(65535UL, (*****l_753))) | (***l_752)) == (*p_847->g_243))))) < p_14)));
    return &p_847->g_400[1];
}


/* ------------------------------------------ */
/* 
 * reads : p_847->g_30 p_847->g_35 p_847->g_36 p_847->g_51 p_847->g_27 p_847->g_90 p_847->g_65 p_847->g_110 p_847->g_113 p_847->g_91 p_847->g_comm_values p_847->g_131 p_847->g_110.f3 p_847->g_208 p_847->g_130 p_847->g_245 p_847->g_237 p_847->g_330 p_847->g_2 p_847->g_280 p_847->g_139 p_847->g_106 p_847->g_129 p_847->g_400 p_847->g_411 p_847->g_276 p_847->g_415 p_847->g_432 p_847->g_110.f2 p_847->g_176 p_847->g_290 p_847->g_235 p_847->g_484 p_847->g_403 p_847->g_243 p_847->g_433 p_847->g_482
 * writes: p_847->g_30 p_847->g_34 p_847->g_51 p_847->g_65 p_847->g_105 p_847->g_106 p_847->g_comm_values p_847->g_110.f3 p_847->g_131 p_847->g_130 p_847->g_90 p_847->g_113 p_847->g_243 p_847->g_330 p_847->g_91 p_847->g_280 p_847->g_400 p_847->g_411 p_847->g_415 p_847->g_110.f2 p_847->g_531 p_847->g_484 p_847->g_482
 */
uint32_t  func_25(union U2  p_26, struct S4 * p_847)
{ /* block id: 12 */
    int8_t l_63[9][2][7] = {{{0x72L,0x72L,0x61L,0x13L,0x6BL,0x13L,0x61L},{0x72L,0x72L,0x61L,0x13L,0x6BL,0x13L,0x61L}},{{0x72L,0x72L,0x61L,0x13L,0x6BL,0x13L,0x61L},{0x72L,0x72L,0x61L,0x13L,0x6BL,0x13L,0x61L}},{{0x72L,0x72L,0x61L,0x13L,0x6BL,0x13L,0x61L},{0x72L,0x72L,0x61L,0x13L,0x6BL,0x13L,0x61L}},{{0x72L,0x72L,0x61L,0x13L,0x6BL,0x13L,0x61L},{0x72L,0x72L,0x61L,0x13L,0x6BL,0x13L,0x61L}},{{0x72L,0x72L,0x61L,0x13L,0x6BL,0x13L,0x61L},{0x72L,0x72L,0x61L,0x13L,0x6BL,0x13L,0x61L}},{{0x72L,0x72L,0x61L,0x13L,0x6BL,0x13L,0x61L},{0x72L,0x72L,0x61L,0x13L,0x6BL,0x13L,0x61L}},{{0x72L,0x72L,0x61L,0x13L,0x6BL,0x13L,0x61L},{0x72L,0x72L,0x61L,0x13L,0x6BL,0x13L,0x61L}},{{0x72L,0x72L,0x61L,0x13L,0x6BL,0x13L,0x61L},{0x72L,0x72L,0x61L,0x13L,0x6BL,0x13L,0x61L}},{{0x72L,0x72L,0x61L,0x13L,0x6BL,0x13L,0x61L},{0x72L,0x72L,0x61L,0x13L,0x6BL,0x13L,0x61L}}};
    union U0 l_508 = {0x21L};
    int32_t l_727 = 0L;
    int i, j, k;
    for (p_847->g_30 = (-10); (p_847->g_30 != 11); p_847->g_30 = safe_add_func_int64_t_s_s(p_847->g_30, 9))
    { /* block id: 15 */
        uint16_t *l_33 = &p_847->g_34;
        int32_t l_37 = (-1L);
        uint32_t *l_50 = &p_847->g_51;
        int32_t *l_64 = &p_847->g_65;
        int32_t *l_720[5][1][5];
        int i, j, k;
        for (i = 0; i < 5; i++)
        {
            for (j = 0; j < 1; j++)
            {
                for (k = 0; k < 5; k++)
                    l_720[i][j][k] = (void*)0;
            }
        }
        p_847->g_482.s7 &= ((((*l_33) = FAKE_DIVERGE(p_847->global_0_offset, get_global_id(0), 10)) ^ ((((((p_847->g_35 == ((l_37 & ((safe_add_func_int32_t_s_s(func_40(&p_847->g_36, (safe_lshift_func_uint8_t_u_u(l_37, FAKE_DIVERGE(p_847->global_2_offset, get_global_id(2), 10))), (p_847->g_30 < ((safe_div_func_uint32_t_u_u(p_847->g_36, ((*l_50)++))) == func_54((func_57(l_37, ((*l_64) = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 8))((safe_mod_func_uint64_t_u_u(p_847->g_comm_values[p_847->tid], l_63[3][0][0])), 1L, l_37, 0x1428F8A5L, ((VECTOR(int32_t, 2))(0x0D3184BAL)), 0x0D679962L, 0x2C17B1ABL)).s3724247272606160, (int32_t)l_63[4][1][2]))))).se), l_37, p_847) != l_37), l_33, p_847))), l_63[3][0][0], l_508, p_847), l_37)) != p_847->g_235.s1)) , (void*)0)) == l_37) , 18446744073709551611UL) ^ l_508.f0) , (*p_847->g_432)) == &l_63[0][1][6])) != 0x6FA90486117EE04BL);
        l_727 &= (safe_rshift_func_uint16_t_u_s((safe_rshift_func_uint16_t_u_s((safe_sub_func_uint32_t_u_u(FAKE_DIVERGE(p_847->local_2_offset, get_local_id(2), 10), 0x54A6C3B8L)), 10)), 12));
        if ((*p_847->g_243))
            continue;
    }
    return l_63[3][0][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_847->g_105 p_847->g_403 p_847->g_276 p_847->g_243 p_847->g_30 p_847->g_91 p_847->g_36 p_847->g_484 p_847->g_130
 * writes: p_847->g_105 p_847->g_110.f3 p_847->g_531 p_847->g_106 p_847->g_484
 */
int32_t  func_40(int8_t * p_41, uint64_t  p_42, int32_t  p_43, uint64_t  p_44, union U0  p_45, struct S4 * p_847)
{ /* block id: 173 */
    int32_t ***l_520 = &p_847->g_276;
    uint32_t *l_523 = &p_847->g_51;
    uint8_t *l_524 = &p_847->g_131;
    int32_t l_545[4][8][1] = {{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}}};
    int32_t l_547 = 0x26D0F5D2L;
    uint64_t l_549 = 0x0757E246B9FAF427L;
    VECTOR(uint16_t, 4) l_552 = (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 7UL), 7UL);
    uint16_t *l_641 = &p_847->g_290;
    VECTOR(uint32_t, 4) l_651 = (VECTOR(uint32_t, 4))(0xA4AF614CL, (VECTOR(uint32_t, 2))(0xA4AF614CL, 0x26F52903L), 0x26F52903L);
    VECTOR(uint64_t, 4) l_656 = (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 1UL), 1UL);
    VECTOR(int16_t, 4) l_667 = (VECTOR(int16_t, 4))(6L, (VECTOR(int16_t, 2))(6L, 0x5D5BL), 0x5D5BL);
    VECTOR(uint16_t, 4) l_682 = (VECTOR(uint16_t, 4))(0x0688L, (VECTOR(uint16_t, 2))(0x0688L, 1UL), 1UL);
    int32_t *l_689 = (void*)0;
    int32_t *l_690 = (void*)0;
    int32_t *l_691 = (void*)0;
    int32_t *l_692 = &p_847->g_130;
    int32_t *l_693 = &l_545[2][2][0];
    int32_t *l_694 = &l_545[3][7][0];
    int32_t *l_695 = &p_847->g_110.f3;
    int32_t *l_696 = &l_545[3][7][0];
    int32_t *l_697[2][4][1] = {{{&l_545[3][7][0]},{&l_545[3][7][0]},{&l_545[3][7][0]},{&l_545[3][7][0]}},{{&l_545[3][7][0]},{&l_545[3][7][0]},{&l_545[3][7][0]},{&l_545[3][7][0]}}};
    int32_t l_698 = 1L;
    int32_t l_699 = 1L;
    uint32_t l_700 = 0x9B873E5CL;
    uint8_t l_703 = 0UL;
    int32_t ****l_710 = &l_520;
    VECTOR(uint16_t, 8) l_715 = (VECTOR(uint16_t, 8))(5UL, (VECTOR(uint16_t, 4))(5UL, (VECTOR(uint16_t, 2))(5UL, 0x57D7L), 0x57D7L), 0x57D7L, 5UL, 0x57D7L);
    uint32_t *l_719 = &p_847->g_330;
    uint32_t **l_718 = &l_719;
    int i, j, k;
    for (p_847->g_105 = (-15); (p_847->g_105 == 19); p_847->g_105 = safe_add_func_int8_t_s_s(p_847->g_105, 1))
    { /* block id: 176 */
        VECTOR(int8_t, 2) l_511 = (VECTOR(int8_t, 2))((-1L), (-1L));
        uint32_t *l_522 = &p_847->g_51;
        uint32_t **l_521 = &l_522;
        VECTOR(uint16_t, 16) l_526 = (VECTOR(uint16_t, 16))(65528UL, (VECTOR(uint16_t, 4))(65528UL, (VECTOR(uint16_t, 2))(65528UL, 1UL), 1UL), 1UL, 65528UL, 1UL, (VECTOR(uint16_t, 2))(65528UL, 1UL), (VECTOR(uint16_t, 2))(65528UL, 1UL), 65528UL, 1UL, 65528UL, 1UL);
        int32_t l_543 = (-6L);
        int32_t l_544 = 0x2AC4C565L;
        int32_t l_546[7] = {0x6C3671A1L,6L,0x6C3671A1L,0x6C3671A1L,6L,0x6C3671A1L,0x6C3671A1L};
        int8_t l_548 = 3L;
        VECTOR(int64_t, 16) l_553 = (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x45BCB362264D4509L), 0x45BCB362264D4509L), 0x45BCB362264D4509L, 1L, 0x45BCB362264D4509L, (VECTOR(int64_t, 2))(1L, 0x45BCB362264D4509L), (VECTOR(int64_t, 2))(1L, 0x45BCB362264D4509L), 1L, 0x45BCB362264D4509L, 1L, 0x45BCB362264D4509L);
        uint16_t *l_556 = &p_847->g_91;
        uint16_t *l_559 = (void*)0;
        uint16_t *l_560 = (void*)0;
        uint8_t **l_573 = (void*)0;
        uint8_t ***l_574 = &l_573;
        uint64_t *l_575 = &l_549;
        uint64_t *l_576 = &p_847->g_577;
        union U0 **l_605 = (void*)0;
        int32_t l_642 = 1L;
        union U2 l_660[4] = {{0},{0},{0},{0}};
        VECTOR(int8_t, 8) l_665 = (VECTOR(int8_t, 8))(0x1EL, (VECTOR(int8_t, 4))(0x1EL, (VECTOR(int8_t, 2))(0x1EL, 1L), 1L), 1L, 0x1EL, 1L);
        VECTOR(int16_t, 4) l_666 = (VECTOR(int16_t, 4))((-9L), (VECTOR(int16_t, 2))((-9L), 0x6BCCL), 0x6BCCL);
        VECTOR(int64_t, 16) l_679 = (VECTOR(int64_t, 16))(0x44A64181229F981BL, (VECTOR(int64_t, 4))(0x44A64181229F981BL, (VECTOR(int64_t, 2))(0x44A64181229F981BL, 0x54AF4FC41CC9E12EL), 0x54AF4FC41CC9E12EL), 0x54AF4FC41CC9E12EL, 0x44A64181229F981BL, 0x54AF4FC41CC9E12EL, (VECTOR(int64_t, 2))(0x44A64181229F981BL, 0x54AF4FC41CC9E12EL), (VECTOR(int64_t, 2))(0x44A64181229F981BL, 0x54AF4FC41CC9E12EL), 0x44A64181229F981BL, 0x54AF4FC41CC9E12EL, 0x44A64181229F981BL, 0x54AF4FC41CC9E12EL);
        int i;
        if ((0x07L > ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 8))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 8),((VECTOR(int8_t, 4))(rotate(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(l_511.yxxxyxyyyyyxyxyy)).s3ce2)), (safe_mod_func_uint8_t_u_u(5UL, ((safe_lshift_func_int16_t_s_u((safe_rshift_func_int8_t_s_s((!((safe_sub_func_int8_t_s_s((&p_847->g_91 != &p_847->g_91), ((void*)0 != l_520))) , (((*l_521) = &p_847->g_51) == l_523))), ((*p_41) = (((((void*)0 == l_524) != p_42) & 0x1491A634B7427BA2L) <= p_42)))), FAKE_DIVERGE(p_847->local_0_offset, get_local_id(0), 10))) , (-1L)))), (***l_520), ((VECTOR(int8_t, 4))((-2L))), 0x4AL, 0x77L, 0x33L, 0L, 1L, (-5L))).sc, (***l_520), ((VECTOR(int8_t, 2))(0L)), (-9L), p_847->g_525[7][3][7], 0x20L, 1L, l_511.x, l_511.x, 0x78L, 6L, 0x74L, l_511.y, 3L, (-10L))).sa815, ((VECTOR(int8_t, 4))(0x34L))))).xzyxxwxy, ((VECTOR(int8_t, 8))(0L)), ((VECTOR(int8_t, 8))(0L))))).s5211015610332352, ((VECTOR(int8_t, 16))((-1L))), ((VECTOR(int8_t, 16))(0x5CL))))).hi)).s6513700665710452)).s7))
        { /* block id: 179 */
            int32_t l_527[6][1] = {{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}};
            int32_t *l_528 = &p_847->g_110.f3;
            int i, j;
            l_527[1][0] ^= ((p_43 == p_847->g_403.x) ^ ((VECTOR(uint16_t, 8))(l_526.sb46e0a3f)).s0);
            (*l_528) = 0x4E81C3F5L;
        }
        else
        { /* block id: 182 */
            union U0 *l_530 = &p_847->g_110;
            union U0 **l_529[10][7][3] = {{{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530}},{{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530}},{{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530}},{{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530}},{{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530}},{{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530}},{{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530}},{{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530}},{{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530}},{{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530},{(void*)0,&l_530,&l_530}}};
            int32_t *l_534 = (void*)0;
            int32_t *l_535 = (void*)0;
            int32_t *l_536 = &p_847->g_110.f3;
            int32_t *l_537 = (void*)0;
            int32_t *l_538 = (void*)0;
            int32_t *l_539 = (void*)0;
            int32_t *l_540 = (void*)0;
            int32_t *l_541 = (void*)0;
            int32_t *l_542[9];
            int i, j, k;
            for (i = 0; i < 9; i++)
                l_542[i] = (void*)0;
            p_847->g_531 = (void*)0;
            for (p_847->g_106 = 0; (p_847->g_106 < 1); p_847->g_106 = safe_add_func_uint8_t_u_u(p_847->g_106, 1))
            { /* block id: 186 */
                return (**p_847->g_276);
            }
            l_549++;
        }
    }
    --l_700;
    ++l_703;
    p_847->g_484.x |= ((*l_693) = (safe_rshift_func_uint16_t_u_s((safe_mul_func_int16_t_s_s(p_44, (&p_847->g_276 == ((*l_710) = &p_847->g_276)))), (safe_rshift_func_uint16_t_u_u(p_44, ((((safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(l_715.s51571167)).s5, (p_847->g_91 == (((*l_696) , (p_43 <= (safe_div_func_uint8_t_u_u(((p_43 == 0L) & 7UL), 0x71L)))) | 0L)))) , (void*)0) != l_718) | (*p_41)))))));
    return (*l_692);
}


/* ------------------------------------------ */
/* 
 * reads : p_847->g_276 p_847->g_110.f2 p_847->g_30
 * writes: p_847->g_243 p_847->g_110.f2
 */
uint16_t  func_54(int16_t  p_55, uint16_t * p_56, struct S4 * p_847)
{ /* block id: 164 */
    int32_t *l_500 = &p_847->g_30;
    int32_t *l_501[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
    VECTOR(uint32_t, 4) l_502 = (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0xB60C82A0L), 0xB60C82A0L);
    int i;
    (*p_847->g_276) = l_500;
    l_502.w++;
    for (p_847->g_110.f2 = 0; (p_847->g_110.f2 != 58); p_847->g_110.f2 = safe_add_func_int64_t_s_s(p_847->g_110.f2, 1))
    { /* block id: 169 */
        int16_t l_507 = 0x6C28L;
        return l_507;
    }
    return (*l_500);
}


/* ------------------------------------------ */
/* 
 * reads : p_847->g_27 p_847->g_90 p_847->g_65 p_847->g_110 p_847->g_91 p_847->g_comm_values p_847->g_30 p_847->g_131 p_847->g_110.f3 p_847->g_139 p_847->g_113 p_847->g_176 p_847->g_206 p_847->g_208 p_847->g_129 p_847->g_105 p_847->g_234 p_847->g_235 p_847->g_237 p_847->g_2 p_847->g_130 p_847->g_245 p_847->g_280 p_847->g_276 p_847->g_290 p_847->g_330 p_847->g_106 p_847->g_400 p_847->g_411 p_847->g_415 p_847->g_432 p_847->g_110.f2 p_847->g_484
 * writes: p_847->g_105 p_847->g_106 p_847->g_comm_values p_847->g_110.f3 p_847->g_131 p_847->g_91 p_847->g_113 p_847->g_243 p_847->g_130 p_847->g_90 p_847->g_276 p_847->g_245 p_847->g_330 p_847->g_280 p_847->g_129 p_847->g_400 p_847->g_411 p_847->g_415 p_847->g_110.f2
 */
uint8_t  func_57(int64_t  p_58, int32_t  p_59, uint32_t  p_60, struct S4 * p_847)
{ /* block id: 19 */
    int64_t l_73 = 0x73003F8612730C40L;
    int64_t l_74 = 1L;
    union U0 l_80 = {0x84L};
    int32_t *l_85 = &p_847->g_65;
    uint16_t **l_244 = &p_847->g_90[7];
    int32_t *l_398 = (void*)0;
    int32_t *l_399[4];
    VECTOR(int32_t, 16) l_405 = (VECTOR(int32_t, 16))(0x16DEC09CL, (VECTOR(int32_t, 4))(0x16DEC09CL, (VECTOR(int32_t, 2))(0x16DEC09CL, 0x151164A3L), 0x151164A3L), 0x151164A3L, 0x16DEC09CL, 0x151164A3L, (VECTOR(int32_t, 2))(0x16DEC09CL, 0x151164A3L), (VECTOR(int32_t, 2))(0x16DEC09CL, 0x151164A3L), 0x16DEC09CL, 0x151164A3L, 0x16DEC09CL, 0x151164A3L);
    int8_t **l_434 = (void*)0;
    VECTOR(int32_t, 16) l_477 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x035692F8L), 0x035692F8L), 0x035692F8L, 0L, 0x035692F8L, (VECTOR(int32_t, 2))(0L, 0x035692F8L), (VECTOR(int32_t, 2))(0L, 0x035692F8L), 0L, 0x035692F8L, 0L, 0x035692F8L);
    VECTOR(int32_t, 4) l_480 = (VECTOR(int32_t, 4))(0x59CBD55DL, (VECTOR(int32_t, 2))(0x59CBD55DL, (-1L)), (-1L));
    VECTOR(int16_t, 4) l_486 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 2L), 2L);
    int8_t l_499 = 0x6BL;
    int i;
    for (i = 0; i < 4; i++)
        l_399[i] = (void*)0;
    p_847->g_400[1] |= func_66(((*l_244) = func_69(l_73, (l_74 , func_75(l_80, p_847->g_27[1], (((safe_sub_func_int32_t_s_s((((safe_rshift_func_uint16_t_u_s((((&p_59 != l_85) & GROUP_DIVERGE(2, 1)) ^ p_60), 2)) < ((safe_div_func_uint64_t_u_u((l_74 == ((safe_mul_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), 65533UL)) >= 0x7033L)), l_73)) <= GROUP_DIVERGE(1, 1))) || p_60), 0xDEE7B07EL)) , l_80.f0) , p_60), p_847->g_90[7], p_847)), &p_847->g_65, p_847)), p_847->g_245[3][0], p_847);
    for (l_80.f1 = 0; (l_80.f1 == 18); ++l_80.f1)
    { /* block id: 131 */
        VECTOR(uint8_t, 2) l_404 = (VECTOR(uint8_t, 2))(255UL, 3UL);
        int8_t l_406 = 0x16L;
        int32_t l_407 = 0L;
        int32_t l_413 = 0x67C153BDL;
        int32_t l_414[10][7][3] = {{{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L}},{{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L}},{{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L}},{{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L}},{{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L}},{{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L}},{{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L}},{{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L}},{{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L}},{{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L},{1L,(-1L),5L}}};
        int64_t *l_427 = &p_847->g_106;
        int64_t *l_428[4][6][8] = {{{&l_73,&l_74,&l_73,&l_73,&l_73,&l_74,&l_74,(void*)0},{&l_73,&l_74,&l_73,&l_73,&l_73,&l_74,&l_74,(void*)0},{&l_73,&l_74,&l_73,&l_73,&l_73,&l_74,&l_74,(void*)0},{&l_73,&l_74,&l_73,&l_73,&l_73,&l_74,&l_74,(void*)0},{&l_73,&l_74,&l_73,&l_73,&l_73,&l_74,&l_74,(void*)0},{&l_73,&l_74,&l_73,&l_73,&l_73,&l_74,&l_74,(void*)0}},{{&l_73,&l_74,&l_73,&l_73,&l_73,&l_74,&l_74,(void*)0},{&l_73,&l_74,&l_73,&l_73,&l_73,&l_74,&l_74,(void*)0},{&l_73,&l_74,&l_73,&l_73,&l_73,&l_74,&l_74,(void*)0},{&l_73,&l_74,&l_73,&l_73,&l_73,&l_74,&l_74,(void*)0},{&l_73,&l_74,&l_73,&l_73,&l_73,&l_74,&l_74,(void*)0},{&l_73,&l_74,&l_73,&l_73,&l_73,&l_74,&l_74,(void*)0}},{{&l_73,&l_74,&l_73,&l_73,&l_73,&l_74,&l_74,(void*)0},{&l_73,&l_74,&l_73,&l_73,&l_73,&l_74,&l_74,(void*)0},{&l_73,&l_74,&l_73,&l_73,&l_73,&l_74,&l_74,(void*)0},{&l_73,&l_74,&l_73,&l_73,&l_73,&l_74,&l_74,(void*)0},{&l_73,&l_74,&l_73,&l_73,&l_73,&l_74,&l_74,(void*)0},{&l_73,&l_74,&l_73,&l_73,&l_73,&l_74,&l_74,(void*)0}},{{&l_73,&l_74,&l_73,&l_73,&l_73,&l_74,&l_74,(void*)0},{&l_73,&l_74,&l_73,&l_73,&l_73,&l_74,&l_74,(void*)0},{&l_73,&l_74,&l_73,&l_73,&l_73,&l_74,&l_74,(void*)0},{&l_73,&l_74,&l_73,&l_73,&l_73,&l_74,&l_74,(void*)0},{&l_73,&l_74,&l_73,&l_73,&l_73,&l_74,&l_74,(void*)0},{&l_73,&l_74,&l_73,&l_73,&l_73,&l_74,&l_74,(void*)0}}};
        int32_t **l_429 = &l_399[1];
        VECTOR(uint8_t, 2) l_460 = (VECTOR(uint8_t, 2))(0UL, 0x98L);
        VECTOR(int32_t, 16) l_464 = (VECTOR(int32_t, 16))(0x177D13B6L, (VECTOR(int32_t, 4))(0x177D13B6L, (VECTOR(int32_t, 2))(0x177D13B6L, 0x44D65A0AL), 0x44D65A0AL), 0x44D65A0AL, 0x177D13B6L, 0x44D65A0AL, (VECTOR(int32_t, 2))(0x177D13B6L, 0x44D65A0AL), (VECTOR(int32_t, 2))(0x177D13B6L, 0x44D65A0AL), 0x177D13B6L, 0x44D65A0AL, 0x177D13B6L, 0x44D65A0AL);
        VECTOR(int32_t, 16) l_476 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 9L), 9L), 9L, (-1L), 9L, (VECTOR(int32_t, 2))((-1L), 9L), (VECTOR(int32_t, 2))((-1L), 9L), (-1L), 9L, (-1L), 9L);
        VECTOR(int32_t, 2) l_481 = (VECTOR(int32_t, 2))(1L, 0x28BDBAABL);
        VECTOR(int32_t, 4) l_485 = (VECTOR(int32_t, 4))(0x75ECD643L, (VECTOR(int32_t, 2))(0x75ECD643L, 0x443248C9L), 0x443248C9L);
        int i, j, k;
        if ((((VECTOR(uint8_t, 16))(p_847->g_403.xyyxyxxyyxxxyyxx)).sf >= ((VECTOR(uint8_t, 4))(l_404.xyxx)).z))
        { /* block id: 132 */
            if (p_60)
                break;
            l_406 = ((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 2))(0L, 1L)), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_405.s19)).xxxxxyyy)).s54))).hi;
        }
        else
        { /* block id: 135 */
            uint16_t l_408 = 0UL;
            volatile union U1 **l_412[4][10] = {{&p_847->g_411,&p_847->g_411,(void*)0,(void*)0,(void*)0,&p_847->g_411,&p_847->g_411,&p_847->g_411,&p_847->g_411,&p_847->g_411},{&p_847->g_411,&p_847->g_411,(void*)0,(void*)0,(void*)0,&p_847->g_411,&p_847->g_411,&p_847->g_411,&p_847->g_411,&p_847->g_411},{&p_847->g_411,&p_847->g_411,(void*)0,(void*)0,(void*)0,&p_847->g_411,&p_847->g_411,&p_847->g_411,&p_847->g_411,&p_847->g_411},{&p_847->g_411,&p_847->g_411,(void*)0,(void*)0,(void*)0,&p_847->g_411,&p_847->g_411,&p_847->g_411,&p_847->g_411,&p_847->g_411}};
            int i, j;
            l_408++;
            p_847->g_280.y = (-6L);
            p_847->g_411 = p_847->g_411;
            (*p_847->g_276) = &l_407;
        }
        p_847->g_415.s4--;
        for (p_847->g_110.f2 = (-4); (p_847->g_110.f2 <= 38); p_847->g_110.f2++)
        { /* block id: 144 */
            VECTOR(uint32_t, 16) l_420 = (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0x39B35DA1L), 0x39B35DA1L), 0x39B35DA1L, 0UL, 0x39B35DA1L, (VECTOR(uint32_t, 2))(0UL, 0x39B35DA1L), (VECTOR(uint32_t, 2))(0UL, 0x39B35DA1L), 0UL, 0x39B35DA1L, 0UL, 0x39B35DA1L);
            int i;
            l_420.sd ^= p_59;
            return l_420.s2;
        }
        if ((l_414[6][0][0] = (safe_div_func_int16_t_s_s(((safe_mul_func_int8_t_s_s((((safe_sub_func_int64_t_s_s((p_847->g_comm_values[p_847->tid] = ((*l_427) = p_847->g_415.s3)), (l_429 == ((safe_add_func_int8_t_s_s(p_59, (p_847->g_432 != l_434))) , l_429)))) | (safe_sub_func_uint64_t_u_u((safe_lshift_func_uint16_t_u_u(((2L >= (((safe_div_func_uint64_t_u_u((((void*)0 != p_847->g_411) != p_58), p_847->g_110.f2)) == (-1L)) != p_58)) , 0x4D84L), p_59)), 1L))) <= 4294967295UL), p_847->g_208.s4)) == p_60), p_847->g_176.x))))
        { /* block id: 151 */
            (*l_429) = l_85;
        }
        else
        { /* block id: 153 */
            int32_t l_445 = 0x403E67CAL;
            int16_t *l_446 = (void*)0;
            int16_t *l_447 = (void*)0;
            int16_t *l_448 = &p_847->g_113;
            VECTOR(uint32_t, 4) l_465 = (VECTOR(uint32_t, 4))(6UL, (VECTOR(uint32_t, 2))(6UL, 1UL), 1UL);
            uint8_t *l_473 = (void*)0;
            uint8_t *l_474[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t l_475 = 0x3BD3AAB3L;
            int i;
            l_475 |= (safe_sub_func_uint32_t_u_u(p_847->g_290, (safe_mod_func_int16_t_s_s(((*l_448) = l_445), (safe_lshift_func_uint8_t_u_u((l_413 = (((VECTOR(uint32_t, 4))(safe_clamp_func(VECTOR(uint32_t, 4),uint32_t,((VECTOR(uint32_t, 4))(add_sat(((VECTOR(uint32_t, 2))(0xF0DA4032L, 0UL)).yyyy, ((VECTOR(uint32_t, 2))(4UL, 0xABE359AAL)).yxyy))), (uint32_t)((safe_add_func_uint32_t_u_u(1UL, (0x5806CB66L != (safe_unary_minus_func_uint32_t_u((safe_mod_func_uint8_t_u_u((safe_rshift_func_int16_t_s_u(((safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(p_847->g_30, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(l_460.yyxyyxxx)).hi)).zzxwzzyzwywwwxwx)).even)).hi)), 0x8EL, ((p_847->g_245[2][2] = ((p_847->g_130 && ((safe_lshift_func_int16_t_s_s(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(p_847->g_463.s5d643f27)).s63)).hi, (((VECTOR(int64_t, 16))(upsample(((VECTOR(int32_t, 2))(l_464.s5d)).yyxxxxyxxxxyxxxx, ((VECTOR(uint32_t, 2))(l_465.zx)).xyxxxyyxyxyxyyxy))).s2 >= ((VECTOR(int64_t, 4))(p_847->g_466.xxyx)).w))) >= ((safe_add_func_int8_t_s_s(((safe_div_func_int64_t_s_s(p_847->g_105, 0xEB1C2A432E1B7502L)) , ((safe_div_func_int64_t_s_s((0L < p_60), p_58)) | p_58)), l_404.x)) & 0x2536C5F6E89759DFL))) > 0x4FD4D226L)) & p_847->g_2), 1UL, 254UL, ((VECTOR(uint8_t, 2))(0UL)), 0x59L, l_465.x, ((VECTOR(uint8_t, 2))(0UL)), 0x55L)).s9f)).hi, 7)) == p_847->g_280.y), 9)), p_59))))))) > 0L), (uint32_t)GROUP_DIVERGE(0, 1)))).w , p_847->g_176.x)), p_59))))));
            l_413 &= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 4))(l_476.s4156)).odd, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 4))(l_477.sb0b8)).xwxwxwzw, ((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 2))((-2L), 0x58734C24L)).yyyxxyxy, ((VECTOR(int32_t, 16))(p_847->g_478.yxyyyxxxxxxyyxxx)).even))).s07)), ((VECTOR(int32_t, 4))(p_847->g_479.wywx)), 0x701A904EL, 0x378FBFE2L)).s13, ((VECTOR(int32_t, 16))(l_480.xwxwzzzwxwzyxwww)).s78, ((VECTOR(int32_t, 16))((-2L), ((VECTOR(int32_t, 2))(l_481.yy)), (l_475 = 2L), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(p_847->g_482.s58)).yyyxxyyy)))), ((VECTOR(int32_t, 4))(p_847->g_483.xyyw)))).sc7))).yxxyxyyy, ((VECTOR(int32_t, 16))(p_847->g_484.xywzyzyzxxzyzzzx)).odd))).s74, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_485.zxwywwwz)).s44)).yxxy)).even))))).xyyyyyxx, ((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 16))(safe_clamp_func(VECTOR(int16_t, 16),int16_t,((VECTOR(int16_t, 8))(l_486.zxyzxyyw)).s0735604242011617, (int16_t)(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(1L, 0x36F8D127L, ((void*)0 == (*l_244)), ((VECTOR(int32_t, 4))(((safe_sub_func_int8_t_s_s(p_847->g_208.s4, p_847->g_484.z)) == 0L), (-1L), 0x418F1D3EL, 0x53A872BBL)), 0L, ((VECTOR(int32_t, 8))((safe_add_func_int64_t_s_s((safe_rshift_func_uint16_t_u_s((safe_sub_func_int64_t_s_s((((safe_sub_func_uint16_t_u_u(FAKE_DIVERGE(p_847->global_1_offset, get_global_id(1), 10), (safe_lshift_func_int16_t_s_u(l_475, l_445)))) || p_59) ^ 0UL), l_499)), p_847->g_403.x)), 0xC374A7284F1C4C7AL)), p_59, ((VECTOR(int32_t, 2))(0x34D49BC2L)), 6L, (-9L), 0L, 0x66054291L)))).sc4e2)).z || p_60), (int16_t)p_847->g_466.x))).sa7, ((VECTOR(uint16_t, 2))(65535UL))))).yxxxxxxx))))).s76))))), 0L, 0x2FF4B271L)), l_475, p_847->g_400[0], l_475, ((VECTOR(int32_t, 8))(0L)), 1L)).sf;
            return p_847->g_235.s3;
        }
    }
    return p_847->g_484.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_847->g_113 p_847->g_208 p_847->g_235 p_847->g_280 p_847->g_276 p_847->g_290 p_847->g_234 p_847->g_237 p_847->g_110.f3 p_847->g_330 p_847->g_130 p_847->g_2 p_847->g_245 p_847->g_139 p_847->g_106 p_847->g_65 p_847->g_131 p_847->g_129
 * writes: p_847->g_113 p_847->g_243 p_847->g_276 p_847->g_245 p_847->g_330 p_847->g_130 p_847->g_91 p_847->g_110.f3 p_847->g_280 p_847->g_131 p_847->g_129
 */
int32_t  func_66(uint16_t * p_67, int32_t  p_68, struct S4 * p_847)
{ /* block id: 71 */
    union U0 l_246 = {0x73L};
    VECTOR(uint32_t, 8) l_251 = (VECTOR(uint32_t, 8))(0x75CE7BF9L, (VECTOR(uint32_t, 4))(0x75CE7BF9L, (VECTOR(uint32_t, 2))(0x75CE7BF9L, 1UL), 1UL), 1UL, 0x75CE7BF9L, 1UL);
    VECTOR(uint32_t, 8) l_252 = (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 4294967294UL), 4294967294UL), 4294967294UL, 0UL, 4294967294UL);
    VECTOR(uint32_t, 8) l_253 = (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0x998B48CCL), 0x998B48CCL), 0x998B48CCL, 0UL, 0x998B48CCL);
    VECTOR(uint32_t, 16) l_254 = (VECTOR(uint32_t, 16))(4294967289UL, (VECTOR(uint32_t, 4))(4294967289UL, (VECTOR(uint32_t, 2))(4294967289UL, 4UL), 4UL), 4UL, 4294967289UL, 4UL, (VECTOR(uint32_t, 2))(4294967289UL, 4UL), (VECTOR(uint32_t, 2))(4294967289UL, 4UL), 4294967289UL, 4UL, 4294967289UL, 4UL);
    int8_t *l_257 = (void*)0;
    int32_t l_258 = 9L;
    uint8_t l_265 = 0xC1L;
    uint8_t *l_266[8];
    VECTOR(int64_t, 2) l_270 = (VECTOR(int64_t, 2))(0x630775B59AA3DB18L, 1L);
    int32_t **l_274 = &p_847->g_243;
    int32_t l_324 = 0x0667EA78L;
    uint64_t l_333 = 0xBBA59C755D3816BAL;
    uint64_t l_372[8];
    VECTOR(uint8_t, 8) l_387 = (VECTOR(uint8_t, 8))(0x49L, (VECTOR(uint8_t, 4))(0x49L, (VECTOR(uint8_t, 2))(0x49L, 255UL), 255UL), 255UL, 0x49L, 255UL);
    VECTOR(uint8_t, 16) l_388 = (VECTOR(uint8_t, 16))(250UL, (VECTOR(uint8_t, 4))(250UL, (VECTOR(uint8_t, 2))(250UL, 2UL), 2UL), 2UL, 250UL, 2UL, (VECTOR(uint8_t, 2))(250UL, 2UL), (VECTOR(uint8_t, 2))(250UL, 2UL), 250UL, 2UL, 250UL, 2UL);
    uint16_t *l_390 = &p_847->g_290;
    union U0 *l_397 = (void*)0;
    int i;
    for (i = 0; i < 8; i++)
        l_266[i] = &p_847->g_110.f1;
    for (i = 0; i < 8; i++)
        l_372[i] = 18446744073709551609UL;
    if (((p_68 || ((*p_67) = ((p_68 < (GROUP_DIVERGE(2, 1) || ((*p_67) >= (~(((l_246 , ((l_246.f3 = ((((safe_lshift_func_int16_t_s_s((safe_add_func_uint16_t_u_u(l_246.f0, 1L)), 10)) , ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(min(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(add_sat(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(l_251.s71)).yxxy)).odd)).yyxy, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(sub_sat(((VECTOR(uint32_t, 8))(l_252.s57751341)), ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 4))(l_253.s5506)))))).yxzyzwzz))).s1576224237307525)).s71)).xxxy))).even)), ((VECTOR(uint32_t, 16))(abs(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(l_254.s2d49e9b30fa0b997)).s7a)).yyyxxyxxyyyyyxxy))).s2b))).xxyx)).z) == ((safe_mul_func_int8_t_s_s((l_258 = l_251.s6), (safe_add_func_int16_t_s_s(((safe_mul_func_int8_t_s_s((safe_mul_func_int16_t_s_s(l_265, p_68)), 1UL)) , 0x3E54L), 0xDC5EL)))) > p_68)) != 0x179BL)) == l_265)) , l_265) > l_254.sa))))) ^ p_68))) && l_253.s0))
    { /* block id: 75 */
        int32_t **l_267[2][9][2] = {{{&p_847->g_243,&p_847->g_243},{&p_847->g_243,&p_847->g_243},{&p_847->g_243,&p_847->g_243},{&p_847->g_243,&p_847->g_243},{&p_847->g_243,&p_847->g_243},{&p_847->g_243,&p_847->g_243},{&p_847->g_243,&p_847->g_243},{&p_847->g_243,&p_847->g_243},{&p_847->g_243,&p_847->g_243}},{{&p_847->g_243,&p_847->g_243},{&p_847->g_243,&p_847->g_243},{&p_847->g_243,&p_847->g_243},{&p_847->g_243,&p_847->g_243},{&p_847->g_243,&p_847->g_243},{&p_847->g_243,&p_847->g_243},{&p_847->g_243,&p_847->g_243},{&p_847->g_243,&p_847->g_243},{&p_847->g_243,&p_847->g_243}}};
        int i, j, k;
        p_847->g_243 = &p_847->g_5;
    }
    else
    { /* block id: 77 */
        int32_t **l_273 = &p_847->g_243;
        int32_t ***l_275[7];
        VECTOR(int32_t, 4) l_279 = (VECTOR(int32_t, 4))(0x41C1DC34L, (VECTOR(int32_t, 2))(0x41C1DC34L, 6L), 6L);
        int32_t *l_289[5] = {&l_258,&l_258,&l_258,&l_258,&l_258};
        int32_t l_291 = (-1L);
        int32_t l_292 = 0x4C6F9AE7L;
        uint64_t *l_293 = &p_847->g_245[2][6];
        int64_t *l_294 = (void*)0;
        int64_t *l_295[1];
        int32_t l_296 = 0x69B819D6L;
        uint8_t *l_302 = (void*)0;
        VECTOR(uint32_t, 2) l_307 = (VECTOR(uint32_t, 2))(0UL, 4294967291UL);
        union U2 l_334 = {0};
        uint8_t **l_375 = &l_266[4];
        VECTOR(int16_t, 16) l_384 = (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x6A7CL), 0x6A7CL), 0x6A7CL, (-1L), 0x6A7CL, (VECTOR(int16_t, 2))((-1L), 0x6A7CL), (VECTOR(int16_t, 2))((-1L), 0x6A7CL), (-1L), 0x6A7CL, (-1L), 0x6A7CL);
        int i;
        for (i = 0; i < 7; i++)
            l_275[i] = &l_274;
        for (i = 0; i < 1; i++)
            l_295[i] = &p_847->g_106;
        if ((((safe_lshift_func_uint16_t_u_u((p_847->g_208.s5 , ((1UL || (l_296 = ((VECTOR(int64_t, 8))(mad_sat(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(mul_hi(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 16))(mad_sat(((VECTOR(int64_t, 4))(l_270.yxxx)).zywzwxxwyyyzwxwy, ((VECTOR(int64_t, 4))((((safe_rshift_func_uint8_t_u_u(p_847->g_235.sf, 4)) , ((*l_293) = (0L ^ ((l_273 == (p_847->g_276 = l_274)) , ((VECTOR(uint8_t, 4))(((safe_add_func_int32_t_s_s(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(l_279.xzywzwyx)).s7117313636567372)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(p_847->g_280.xyxyyxyx)).hi)).xxwwywyxwzwzwxyx, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((l_270.y && (4L | (safe_add_func_int32_t_s_s((safe_mod_func_uint64_t_u_u((safe_div_func_uint8_t_u_u((safe_mod_func_int16_t_s_s((((*p_847->g_276) = l_289[1]) != &l_258), p_847->g_290)), p_68)), p_847->g_234.s7)), p_68)))) >= (-1L)), 2L, p_68, l_291, l_292, ((VECTOR(int32_t, 8))((-1L))), ((VECTOR(int32_t, 2))(1L)), 0L)).s8a)), (-8L), (-2L))).zywwyyyyzyxxxywz))).sf4c1)).w, p_68)) >= p_68), 0x32L, 7UL, 0xA5L)).w)))) , p_847->g_280.x), ((VECTOR(int64_t, 2))(1L)), 0L)).wxywwxzxxzwywzzx, ((VECTOR(int64_t, 16))(0x65E3E700611AE935L))))).lo, ((VECTOR(int64_t, 8))((-1L)))))).even)), ((VECTOR(int64_t, 4))((-1L)))))).xyywxyxzyzwxxzyw)).even, ((VECTOR(int64_t, 8))(0x1C1F7F4DD99563AFL)), ((VECTOR(int64_t, 8))(0x0E653ED2A7C4BBB4L))))).s1)) != 0x48582A17L)), (*p_67))) == 1UL) != p_68))
        { /* block id: 82 */
            int64_t l_297 = 0x494592299CC26D3AL;
            VECTOR(uint32_t, 4) l_305 = (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 4UL), 4UL);
            VECTOR(uint32_t, 16) l_318 = (VECTOR(uint32_t, 16))(4294967288UL, (VECTOR(uint32_t, 4))(4294967288UL, (VECTOR(uint32_t, 2))(4294967288UL, 0xC933014EL), 0xC933014EL), 0xC933014EL, 4294967288UL, 0xC933014EL, (VECTOR(uint32_t, 2))(4294967288UL, 0xC933014EL), (VECTOR(uint32_t, 2))(4294967288UL, 0xC933014EL), 4294967288UL, 0xC933014EL, 4294967288UL, 0xC933014EL);
            int8_t *l_321 = &p_847->g_36;
            int8_t l_326 = 0x65L;
            int32_t l_327 = 0L;
            int32_t l_332 = 3L;
            int i;
            l_297 = p_68;
            for (l_296 = (-21); (l_296 == 25); l_296 = safe_add_func_uint8_t_u_u(l_296, 8))
            { /* block id: 86 */
                uint8_t *l_300 = &l_265;
                uint8_t **l_301[8] = {&l_266[1],&l_266[1],&l_266[1],&l_266[1],&l_266[1],&l_266[1],&l_266[1],&l_266[1]};
                int32_t l_325 = 0L;
                uint32_t *l_328 = (void*)0;
                uint32_t *l_329 = &p_847->g_330;
                uint8_t l_331 = 1UL;
                uint16_t *l_337 = (void*)0;
                uint16_t *l_338 = &p_847->g_91;
                union U0 l_346 = {0x65L};
                int16_t *l_359 = &p_847->g_113;
                int i;
                l_332 = (0x2BL >= (((l_302 = l_300) == ((((((safe_sub_func_uint64_t_u_u(((((*l_329) = (((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(rhadd(((VECTOR(uint32_t, 8))(6UL, 0xEC73109DL, ((VECTOR(uint32_t, 2))(4294967293UL, 0xF70BE9A3L)), (0xFA04EDCDE8078A07L ^ p_847->g_176.y), ((VECTOR(uint32_t, 8))(l_305.xzwwwxwx)).s7, 4294967295UL, 4294967288UL)), ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(p_847->g_306.wyzxzwwz)).odd)).xwyzwyxx))), 8UL, 1UL, FAKE_DIVERGE(p_847->global_2_offset, get_global_id(2), 10), ((VECTOR(uint32_t, 2))(l_307.yx)), 4294967295UL, 0x26823080L, 4294967295UL)).s22b9)).w , ((0x32FF7D35L < ((safe_mul_func_int8_t_s_s((l_327 = ((safe_sub_func_int16_t_s_s((safe_mul_func_int8_t_s_s(((safe_sub_func_int16_t_s_s(((safe_rshift_func_int8_t_s_u(((((VECTOR(uint32_t, 16))(l_318.s35ad49d26362c6b1)).s4 || ((p_68 == ((void*)0 == l_321)) > (safe_mod_func_uint8_t_u_u(p_68, l_324)))) , 0x3BL), 5)) == l_325), (*p_67))) || 0L), l_326)), (*p_67))) >= p_847->g_237.y)), p_847->g_110.f3)) < 0x7F8D76FFL)) == l_326))) , 1UL) && 0x9B36L), l_297)) | (*p_67)) , l_331) , p_847->g_330) , p_68) , &p_847->g_131)) | p_68));
                p_847->g_130 &= l_333;
                if (p_68)
                    continue;
                p_847->g_110.f3 ^= (l_334 , (((((*l_338) = (--(*p_67))) <= p_68) , (safe_unary_minus_func_uint64_t_u(((safe_add_func_int16_t_s_s((safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0x5163L, 0x191CL)), 0x72C4L, 0x2600L)).x, ((l_258 ^= (((l_332 ^= ((safe_add_func_uint64_t_u_u((l_346 , (~((((void*)0 == &l_274) > l_251.s1) | ((((safe_sub_func_int16_t_s_s(((*l_359) = ((((*p_67) < (safe_mod_func_int32_t_s_s((safe_mul_func_int8_t_s_s((safe_add_func_int64_t_s_s((safe_mod_func_uint64_t_u_u(p_847->g_2, (((safe_lshift_func_uint8_t_u_u((p_68 || p_68), l_325)) && p_847->g_245[3][0]) , 0x623D3B365817B17BL))), p_847->g_208.s8)), 1L)), p_68))) , (*p_67)) == 0x0866L)), 0xC7F4L)) , (*p_67)) != l_346.f0) && 0xC9L)))), 0L)) > l_327)) & p_847->g_280.x) & 1UL)) && 0xF25E6BE8L))), p_847->g_139.s6)) ^ p_847->g_2)))) <= p_847->g_106));
            }
            for (p_847->g_330 = 20; (p_847->g_330 < 43); p_847->g_330 = safe_add_func_uint32_t_u_u(p_847->g_330, 2))
            { /* block id: 102 */
                uint32_t l_367 = 0xF5ABE59CL;
                int32_t l_373 = 0L;
                uint8_t **l_374 = &l_302;
                for (l_326 = 9; (l_326 < (-8)); --l_326)
                { /* block id: 105 */
                    int32_t l_366[9][4] = {{1L,1L,0L,0x7FABF30FL},{1L,1L,0L,0x7FABF30FL},{1L,1L,0L,0x7FABF30FL},{1L,1L,0L,0x7FABF30FL},{1L,1L,0L,0x7FABF30FL},{1L,1L,0L,0x7FABF30FL},{1L,1L,0L,0x7FABF30FL},{1L,1L,0L,0x7FABF30FL},{1L,1L,0L,0x7FABF30FL}};
                    int i, j;
                    for (p_847->g_130 = 0; (p_847->g_130 == 4); p_847->g_130 = safe_add_func_int16_t_s_s(p_847->g_130, 6))
                    { /* block id: 108 */
                        p_847->g_280.y |= 0L;
                    }
                    ++l_367;
                }
                l_373 = (safe_rshift_func_uint8_t_u_u(0x20L, l_372[7]));
                if (p_847->g_65)
                    continue;
                l_375 = l_374;
            }
        }
        else
        { /* block id: 117 */
            int64_t l_376[1];
            VECTOR(int16_t, 2) l_383 = (VECTOR(int16_t, 2))((-1L), 0x1B65L);
            VECTOR(int16_t, 4) l_385 = (VECTOR(int16_t, 4))(4L, (VECTOR(int16_t, 2))(4L, 1L), 1L);
            VECTOR(uint8_t, 4) l_386 = (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x08L), 0x08L);
            uint16_t *l_389 = &p_847->g_290;
            int16_t *l_391 = (void*)0;
            int16_t *l_392 = &p_847->g_113;
            int32_t l_393[6];
            union U0 *l_395 = &l_246;
            union U0 **l_394 = &l_395;
            union U0 **l_396 = (void*)0;
            int i;
            for (i = 0; i < 1; i++)
                l_376[i] = 0x2EF42ED493506D2FL;
            for (i = 0; i < 6; i++)
                l_393[i] = 0x09FD417FL;
            l_393[1] |= (((--p_847->g_131) >= ((l_376[0] > (safe_lshift_func_int16_t_s_s(((*l_392) = (p_68 & ((((safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(l_383.xy)))).yxxxyyyyyyyyyxyy)).sb9a3)).even, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(add_sat(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(l_384.scc)), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))((-4L), 0x74C9L)).xxyx)), p_847->g_280.y, ((VECTOR(int16_t, 2))(l_385.xy)), 0x7E9BL, ((VECTOR(int16_t, 8))(9L, ((VECTOR(int16_t, 2))(upsample(((VECTOR(int8_t, 4))((p_847->g_129[3] = ((((((VECTOR(uint8_t, 8))(hadd(((VECTOR(uint8_t, 4))(l_386.wwzw)).wzxxwyzx, ((VECTOR(uint8_t, 4))(0x82L, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(l_376[0], 255UL, 0xF3L, 0x65L, ((VECTOR(uint8_t, 16))(rotate(((VECTOR(uint8_t, 16))(l_387.s5714737427645635)), ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(0x2BL, 0x87L)).xyyxyyxxyyyxyyyy))))).sa, 0UL, 0x81L, 1UL, 0xA9L, ((VECTOR(uint8_t, 2))(l_388.sa1)), 0x4FL, 1UL, 0x6AL, 0xBEL, 0xA1L)).odd)).s7362436452030013)).s29)), 0xB0L)).zwwwyxyx))).s3 , l_389) != l_390) , &p_847->g_245[3][1]) == &l_333)), ((VECTOR(int8_t, 2))((-4L))), (-4L))).even, ((VECTOR(uint8_t, 2))(2UL))))), (-1L), ((VECTOR(int16_t, 2))(1L)), (-10L), 1L)).s0, (-1L), l_251.s5, p_68, 0x40D3L, 0x6960L)).lo, ((VECTOR(int16_t, 8))(0L))))).s26))))).even, l_376[0])) , p_68) != p_847->g_237.y) | l_383.y))), 12))) || p_847->g_129[4])) == l_385.x);
            l_397 = ((*l_394) = &p_847->g_110);
        }
        return p_68;
    }
    return p_68;
}


/* ------------------------------------------ */
/* 
 * reads : p_847->g_208 p_847->g_129 p_847->g_105 p_847->g_234 p_847->g_235 p_847->g_237 p_847->g_2 p_847->g_206 p_847->g_139 p_847->g_130 p_847->g_110.f3
 * writes: p_847->g_110.f3 p_847->g_113 p_847->g_243 p_847->g_130
 */
uint16_t * func_69(uint16_t  p_70, uint64_t  p_71, int32_t * p_72, struct S4 * p_847)
{ /* block id: 63 */
    int32_t *l_228[2];
    int32_t l_229 = 0x75C7731CL;
    VECTOR(int16_t, 8) l_236 = (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0L), 0L), 0L, 0L, 0L);
    int16_t *l_240 = (void*)0;
    int16_t *l_241 = &p_847->g_113;
    int32_t **l_242[8];
    int i;
    for (i = 0; i < 2; i++)
        l_228[i] = &p_847->g_110.f3;
    for (i = 0; i < 8; i++)
        l_242[i] = &l_228[1];
    p_847->g_110.f3 = (safe_lshift_func_int8_t_s_s(0x73L, 4));
    p_847->g_110.f3 |= (p_847->g_130 &= (l_229 && (p_847->g_208.sb > (p_70 | ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(((p_70 < (safe_mod_func_int32_t_s_s(1L, p_847->g_129[4]))) ^ ((((p_847->g_243 = ((p_847->g_105 <= (+((((VECTOR(int16_t, 2))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 2),((VECTOR(int16_t, 4))(p_847->g_234.sb451)).even, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(rhadd(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(p_847->g_235.s34)))).xyxy, ((VECTOR(int16_t, 4))(l_236.s3744))))).lo)), 0x4C4FL, 1L)).odd, ((VECTOR(int16_t, 8))(p_847->g_237.xyxyyyyy)).s33))).lo > (p_847->g_2 , ((*l_241) = ((safe_lshift_func_uint16_t_u_s((p_70 < p_70), p_847->g_208.s5)) , p_847->g_206.s1)))) && 1UL))) , (void*)0)) != (void*)0) <= p_71) >= 0xE5L)), ((VECTOR(uint8_t, 8))(0xAEL)), 0x2BL, p_847->g_139.s2, 0xD6L, 0xB4L, 0xE9L, 255UL, 254UL)).s68e3)).wzxxyyzz)).s6))));
    return l_241;
}


/* ------------------------------------------ */
/* 
 * reads : p_847->g_65 p_847->g_110 p_847->g_91 p_847->g_comm_values p_847->g_30 p_847->g_131 p_847->g_110.f3 p_847->g_139 p_847->g_113 p_847->g_176 p_847->g_206 p_847->g_208
 * writes: p_847->g_105 p_847->g_106 p_847->g_comm_values p_847->g_110.f3 p_847->g_131 p_847->g_91
 */
uint64_t  func_75(union U0  p_76, union U2  p_77, int32_t  p_78, uint16_t * p_79, struct S4 * p_847)
{ /* block id: 20 */
    int8_t *l_98 = &p_847->g_36;
    int8_t **l_99 = &l_98;
    int8_t *l_104 = &p_847->g_105;
    uint16_t *l_111[1];
    int16_t *l_112[6];
    int32_t l_114 = 8L;
    int64_t *l_115 = (void*)0;
    int64_t *l_116 = (void*)0;
    int64_t *l_117 = (void*)0;
    int64_t *l_118 = (void*)0;
    int64_t *l_119 = (void*)0;
    int64_t *l_120 = (void*)0;
    int64_t *l_121 = (void*)0;
    int64_t *l_122[6][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int32_t *l_123 = &p_847->g_110.f3;
    int32_t *l_124 = (void*)0;
    int32_t *l_125 = &p_847->g_110.f3;
    int32_t *l_126 = &l_114;
    int32_t *l_127 = &l_114;
    int32_t *l_128[7] = {&l_114,&p_847->g_5,&l_114,&l_114,&p_847->g_5,&l_114,&l_114};
    VECTOR(uint64_t, 2) l_138 = (VECTOR(uint64_t, 2))(0xFE657869F8A89CB4L, 18446744073709551615UL);
    union U2 l_187[4] = {{0},{0},{0},{0}};
    VECTOR(uint64_t, 2) l_194 = (VECTOR(uint64_t, 2))(0xC9CD3F7328926566L, 0x1E17A1104BA8154FL);
    VECTOR(int16_t, 16) l_207 = (VECTOR(int16_t, 16))(8L, (VECTOR(int16_t, 4))(8L, (VECTOR(int16_t, 2))(8L, 0x3FB8L), 0x3FB8L), 0x3FB8L, 8L, 0x3FB8L, (VECTOR(int16_t, 2))(8L, 0x3FB8L), (VECTOR(int16_t, 2))(8L, 0x3FB8L), 8L, 0x3FB8L, 8L, 0x3FB8L);
    VECTOR(int16_t, 16) l_225 = (VECTOR(int16_t, 16))(0x4730L, (VECTOR(int16_t, 4))(0x4730L, (VECTOR(int16_t, 2))(0x4730L, 0x7349L), 0x7349L), 0x7349L, 0x4730L, 0x7349L, (VECTOR(int16_t, 2))(0x4730L, 0x7349L), (VECTOR(int16_t, 2))(0x4730L, 0x7349L), 0x4730L, 0x7349L, 0x4730L, 0x7349L);
    int i, j;
    for (i = 0; i < 1; i++)
        l_111[i] = &p_847->g_91;
    for (i = 0; i < 6; i++)
        l_112[i] = &p_847->g_113;
    (*l_123) = (safe_mul_func_int16_t_s_s((p_847->g_65 <= (p_76.f0 < (0x05L == ((safe_lshift_func_int16_t_s_s(((safe_add_func_uint32_t_u_u((!GROUP_DIVERGE(0, 1)), (((*l_99) = l_98) == (void*)0))) || (p_847->g_comm_values[p_847->tid] = (safe_rshift_func_int8_t_s_u((safe_div_func_uint64_t_u_u((((p_847->g_106 = ((*l_104) = 0x63L)) || (safe_rshift_func_int8_t_s_s((safe_unary_minus_func_int16_t_s((l_114 = (((&p_847->g_91 == (p_847->g_110 , l_111[0])) && (*p_79)) ^ p_847->g_comm_values[p_847->tid])))), 5))) <= 18446744073709551615UL), p_847->g_30)), 7)))), p_78)) >= FAKE_DIVERGE(p_847->group_2_offset, get_group_id(2), 10))))), 4UL));
    p_847->g_131--;
    for (p_847->g_110.f3 = 21; (p_847->g_110.f3 < (-7)); p_847->g_110.f3 = safe_sub_func_uint32_t_u_u(p_847->g_110.f3, 2))
    { /* block id: 30 */
        int16_t l_195 = 0x4F3CL;
        VECTOR(uint32_t, 16) l_199 = (VECTOR(uint32_t, 16))(0x172A5171L, (VECTOR(uint32_t, 4))(0x172A5171L, (VECTOR(uint32_t, 2))(0x172A5171L, 0x80A2A8B5L), 0x80A2A8B5L), 0x80A2A8B5L, 0x172A5171L, 0x80A2A8B5L, (VECTOR(uint32_t, 2))(0x172A5171L, 0x80A2A8B5L), (VECTOR(uint32_t, 2))(0x172A5171L, 0x80A2A8B5L), 0x172A5171L, 0x80A2A8B5L, 0x172A5171L, 0x80A2A8B5L);
        VECTOR(int64_t, 2) l_202 = (VECTOR(int64_t, 2))(0x094D0847C51F5B04L, 0x737C675B0FBB6A00L);
        VECTOR(int64_t, 4) l_203 = (VECTOR(int64_t, 4))(3L, (VECTOR(int64_t, 2))(3L, 0x09E628F7EEF6B1D4L), 0x09E628F7EEF6B1D4L);
        VECTOR(int32_t, 8) l_215 = (VECTOR(int32_t, 8))(0x01D23465L, (VECTOR(int32_t, 4))(0x01D23465L, (VECTOR(int32_t, 2))(0x01D23465L, 8L), 8L), 8L, 0x01D23465L, 8L);
        int32_t l_224 = 9L;
        int i;
        if ((safe_mod_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(l_138.xxyyxyxyxyyyxxxy)).s9, (((VECTOR(uint8_t, 2))(p_847->g_139.s57)).hi && p_847->g_113))))
        { /* block id: 31 */
            if ((atomic_inc(&p_847->l_atomic_input[17]) == 2))
            { /* block id: 33 */
                int32_t l_140[5][1][3] = {{{0x7C98E343L,0x33C15363L,0x7C98E343L}},{{0x7C98E343L,0x33C15363L,0x7C98E343L}},{{0x7C98E343L,0x33C15363L,0x7C98E343L}},{{0x7C98E343L,0x33C15363L,0x7C98E343L}},{{0x7C98E343L,0x33C15363L,0x7C98E343L}}};
                uint32_t l_141 = 0x4F76BCC7L;
                VECTOR(int32_t, 2) l_142 = (VECTOR(int32_t, 2))(1L, 0x463B2593L);
                VECTOR(int32_t, 8) l_143 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x52D1EAB3L), 0x52D1EAB3L), 0x52D1EAB3L, 1L, 0x52D1EAB3L);
                VECTOR(int16_t, 4) l_144 = (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 4L), 4L);
                uint64_t l_145[3][4] = {{1UL,0x7326E483898E21F5L,1UL,1UL},{1UL,0x7326E483898E21F5L,1UL,1UL},{1UL,0x7326E483898E21F5L,1UL,1UL}};
                int16_t l_146 = 7L;
                uint16_t l_147 = 2UL;
                VECTOR(int16_t, 16) l_148 = (VECTOR(int16_t, 16))(6L, (VECTOR(int16_t, 4))(6L, (VECTOR(int16_t, 2))(6L, 0L), 0L), 0L, 6L, 0L, (VECTOR(int16_t, 2))(6L, 0L), (VECTOR(int16_t, 2))(6L, 0L), 6L, 0L, 6L, 0L);
                int64_t l_149 = 0x7335FF0F84FEBEC8L;
                int8_t l_150 = 0x6AL;
                int16_t l_151 = (-1L);
                VECTOR(int64_t, 8) l_152 = (VECTOR(int64_t, 8))(0x3CC5AAFB2D28ECC6L, (VECTOR(int64_t, 4))(0x3CC5AAFB2D28ECC6L, (VECTOR(int64_t, 2))(0x3CC5AAFB2D28ECC6L, (-4L)), (-4L)), (-4L), 0x3CC5AAFB2D28ECC6L, (-4L));
                uint64_t l_153 = 5UL;
                int16_t l_154 = 0x1525L;
                VECTOR(uint16_t, 16) l_155 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 65535UL), 65535UL), 65535UL, 1UL, 65535UL, (VECTOR(uint16_t, 2))(1UL, 65535UL), (VECTOR(uint16_t, 2))(1UL, 65535UL), 1UL, 65535UL, 1UL, 65535UL);
                uint16_t l_156 = 0x950AL;
                uint32_t l_157[7];
                uint16_t l_158 = 65527UL;
                int32_t l_159 = 1L;
                int32_t *l_160 = (void*)0;
                int32_t *l_161 = &l_159;
                int32_t *l_162 = (void*)0;
                uint32_t l_163 = 4294967293UL;
                union U2 l_164 = {0};
                union U2 l_165[10][8] = {{{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0}}};
                int16_t l_166 = (-5L);
                uint16_t l_167 = 0x764DL;
                int16_t l_168 = 0x407DL;
                uint16_t l_169 = 0UL;
                int32_t *l_170[5][10] = {{&l_159,&l_159,(void*)0,&l_159,&l_159,&l_159,&l_159,(void*)0,&l_159,&l_159},{&l_159,&l_159,(void*)0,&l_159,&l_159,&l_159,&l_159,(void*)0,&l_159,&l_159},{&l_159,&l_159,(void*)0,&l_159,&l_159,&l_159,&l_159,(void*)0,&l_159,&l_159},{&l_159,&l_159,(void*)0,&l_159,&l_159,&l_159,&l_159,(void*)0,&l_159,&l_159},{&l_159,&l_159,(void*)0,&l_159,&l_159,&l_159,&l_159,(void*)0,&l_159,&l_159}};
                int32_t *l_171[2][3] = {{(void*)0,&l_159,(void*)0},{(void*)0,&l_159,(void*)0}};
                int32_t *l_172 = (void*)0;
                int32_t *l_173 = (void*)0;
                int32_t *l_174 = &l_159;
                int32_t *l_175 = (void*)0;
                int i, j, k;
                for (i = 0; i < 7; i++)
                    l_157[i] = 0UL;
                l_158 &= (l_157[3] = (l_156 ^= (l_140[1][0][2] , (l_141 , ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 2))(1L, 0L)).xyxx, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0x5FD4EE7BL, (-1L))).xyyyxyxx)).lo)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(l_142.yxxyyyyyyyxxxyxx)).sdda6)))).even))), ((VECTOR(int32_t, 8))(l_143.s71015156)), ((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 16))(0x4CFCL, ((VECTOR(int16_t, 8))(add_sat(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(add_sat(((VECTOR(int16_t, 2))(l_144.wy)).xyyy, ((VECTOR(int16_t, 2))(0x353DL, (-2L))).yyyy))).wyyzxwzy)).s77)).yyxyxxxx, ((VECTOR(int16_t, 4))(1L, 0x104AL, 0x46FDL, (-8L))).xxwyzzwy))), (l_145[1][2] , l_146), l_147, ((VECTOR(int16_t, 2))(safe_clamp_func(VECTOR(int16_t, 2),int16_t,((VECTOR(int16_t, 16))(l_148.s9d65d8e466642384)).sd7, (int16_t)(l_150 = l_149), (int16_t)((l_151 , ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(l_152.s7632)).xxyzxzwyyzwwyywy)).s8) , (l_154 |= l_153))))), 0x7E5AL, 0x5B3BL, 3L)).s17dd, ((VECTOR(uint16_t, 16))(l_155.s78bf6e466303744f)).s0cc1))))).sb))));
                l_143.s1 |= l_159;
                l_162 = (l_161 = l_160);
                l_175 = ((l_165[4][4] = (l_163 , (l_164 = l_164))) , (l_174 = (l_173 = (l_172 = (l_171[0][1] = ((l_167 = l_166) , ((l_168 , l_169) , l_170[3][2])))))));
                unsigned int result = 0;
                int l_140_i0, l_140_i1, l_140_i2;
                for (l_140_i0 = 0; l_140_i0 < 5; l_140_i0++) {
                    for (l_140_i1 = 0; l_140_i1 < 1; l_140_i1++) {
                        for (l_140_i2 = 0; l_140_i2 < 3; l_140_i2++) {
                            result += l_140[l_140_i0][l_140_i1][l_140_i2];
                        }
                    }
                }
                result += l_141;
                result += l_142.y;
                result += l_142.x;
                result += l_143.s7;
                result += l_143.s6;
                result += l_143.s5;
                result += l_143.s4;
                result += l_143.s3;
                result += l_143.s2;
                result += l_143.s1;
                result += l_143.s0;
                result += l_144.w;
                result += l_144.z;
                result += l_144.y;
                result += l_144.x;
                int l_145_i0, l_145_i1;
                for (l_145_i0 = 0; l_145_i0 < 3; l_145_i0++) {
                    for (l_145_i1 = 0; l_145_i1 < 4; l_145_i1++) {
                        result += l_145[l_145_i0][l_145_i1];
                    }
                }
                result += l_146;
                result += l_147;
                result += l_148.sf;
                result += l_148.se;
                result += l_148.sd;
                result += l_148.sc;
                result += l_148.sb;
                result += l_148.sa;
                result += l_148.s9;
                result += l_148.s8;
                result += l_148.s7;
                result += l_148.s6;
                result += l_148.s5;
                result += l_148.s4;
                result += l_148.s3;
                result += l_148.s2;
                result += l_148.s1;
                result += l_148.s0;
                result += l_149;
                result += l_150;
                result += l_151;
                result += l_152.s7;
                result += l_152.s6;
                result += l_152.s5;
                result += l_152.s4;
                result += l_152.s3;
                result += l_152.s2;
                result += l_152.s1;
                result += l_152.s0;
                result += l_153;
                result += l_154;
                result += l_155.sf;
                result += l_155.se;
                result += l_155.sd;
                result += l_155.sc;
                result += l_155.sb;
                result += l_155.sa;
                result += l_155.s9;
                result += l_155.s8;
                result += l_155.s7;
                result += l_155.s6;
                result += l_155.s5;
                result += l_155.s4;
                result += l_155.s3;
                result += l_155.s2;
                result += l_155.s1;
                result += l_155.s0;
                result += l_156;
                int l_157_i0;
                for (l_157_i0 = 0; l_157_i0 < 7; l_157_i0++) {
                    result += l_157[l_157_i0];
                }
                result += l_158;
                result += l_159;
                result += l_163;
                result += l_164.f0;
                int l_165_i0, l_165_i1;
                for (l_165_i0 = 0; l_165_i0 < 10; l_165_i0++) {
                    for (l_165_i1 = 0; l_165_i1 < 8; l_165_i1++) {
                        result += l_165[l_165_i0][l_165_i1].f0;
                    }
                }
                result += l_166;
                result += l_167;
                result += l_168;
                result += l_169;
                atomic_add(&p_847->l_special_values[17], result);
            }
            else
            { /* block id: 50 */
                (1 + 1);
            }
        }
        else
        { /* block id: 53 */
            int32_t l_196 = 0L;
            (*l_127) = (GROUP_DIVERGE(0, 1) ^ (((VECTOR(uint8_t, 8))(min(((VECTOR(uint8_t, 8))(p_847->g_176.yyxyyxxx)), (uint8_t)(safe_sub_func_uint8_t_u_u((safe_div_func_int32_t_s_s((safe_rshift_func_uint16_t_u_u(((safe_rshift_func_int8_t_s_u(((*l_104) = ((((safe_add_func_int64_t_s_s(p_78, ((l_187[1] , FAKE_DIVERGE(p_847->group_2_offset, get_group_id(2), 10)) != (p_77 , (l_224 = ((~(safe_lshift_func_uint8_t_u_u((0x45837069AAEB0C8DL & (safe_add_func_uint32_t_u_u((safe_mod_func_uint64_t_u_u(((VECTOR(uint64_t, 8))(l_194.yxyxxyyy)).s1, l_195)), ((-1L) == (l_196 > (safe_add_func_uint32_t_u_u(((VECTOR(uint32_t, 16))(add_sat(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(1UL, 0x0EDF9C83L)), 0x5B9E805CL, 0xD5996390L)).zywwwwyxzwwyzwyx, ((VECTOR(uint32_t, 8))(0xDD3D9F1BL, ((VECTOR(uint32_t, 4))(clz(((VECTOR(uint32_t, 2))(0UL, 5UL)).yyyx))), ((VECTOR(uint32_t, 2))(l_199.s4c)), 1UL)).s0507363042233725))).s9, (safe_sub_func_int64_t_s_s((~((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(add_sat(((VECTOR(int64_t, 8))(l_202.yyyyxxyx)).lo, ((VECTOR(int64_t, 16))(l_203.xxzzyzyzyyxzyyyw)).s4be7))).yzwywyww)).s7), (safe_mod_func_int16_t_s_s(((VECTOR(int16_t, 4))(rhadd(((VECTOR(int16_t, 16))(p_847->g_206.s7250403553535271)).s56c7, ((VECTOR(int16_t, 4))(add_sat(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(l_207.sfab62559)).even)), ((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 4))(p_847->g_208.sde76)), ((VECTOR(int16_t, 16))(add_sat(((VECTOR(int16_t, 4))((-1L), (safe_lshift_func_uint16_t_u_s((((safe_mod_func_int8_t_s_s((safe_mod_func_int32_t_s_s(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_215.s6146)), 1L, ((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 16))((safe_rshift_func_int8_t_s_u(((l_215.s7 &= (safe_mod_func_uint8_t_u_u(0x3DL, (safe_sub_func_uint8_t_u_u(((safe_add_func_uint16_t_u_u(((*p_79) = (GROUP_DIVERGE(2, 1) <= ((((+p_76.f0) || 0UL) == p_76.f0) && (*l_123)))), p_76.f0)) , p_847->g_30), p_76.f0))))) >= p_78), GROUP_DIVERGE(1, 1))), ((VECTOR(int32_t, 4))(0x2A3807ABL)), ((VECTOR(int32_t, 4))(5L)), ((VECTOR(int32_t, 2))((-1L))), (-9L), (-4L), ((VECTOR(int32_t, 2))(0x641282EEL)), 0x02D44F09L)).sa9, (int32_t)0x0F196D43L))), 0x4CF2CA30L)).s3, p_76.f0)), 1L)) , 0xB27232DCL) >= 0xCD21EB8BL), 1)), 0x0039L, 0x6CAFL)).wzzyzyywyxzxywxw, ((VECTOR(int16_t, 16))(0x3DB8L))))).sfb2b))))))))).x, (-1L)))))))))))), p_847->g_206.s0))) && l_196)))))) & 3L) ^ p_78) , p_847->g_208.s9)), GROUP_DIVERGE(2, 1))) <= 0x7D5A15B5L), 11)), p_78)), l_202.y))))).s6 ^ l_225.s1));
        }
        if (l_195)
            continue;
    }
    return (*l_125);
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[68];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 68; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[68];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 68; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[3];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 3; i++)
            l_comm_values[i] = 1;
    struct S4 c_848;
    struct S4* p_847 = &c_848;
    struct S4 c_849 = {
        0x65925EF2L, // p_847->g_2
        1L, // p_847->g_5
        0x1017CA4EL, // p_847->g_16
        {{0},{0},{0},{0},{0},{0}}, // p_847->g_27
        {{{(-1L),(-1L),(-7L)}},{{(-1L),(-1L),(-7L)}},{{(-1L),(-1L),(-7L)}},{{(-1L),(-1L),(-7L)}},{{(-1L),(-1L),(-7L)}},{{(-1L),(-1L),(-7L)}},{{(-1L),(-1L),(-7L)}},{{(-1L),(-1L),(-7L)}},{{(-1L),(-1L),(-7L)}},{{(-1L),(-1L),(-7L)}}}, // p_847->g_28
        0x16E60BE6L, // p_847->g_29
        0L, // p_847->g_30
        65535UL, // p_847->g_34
        (-5L), // p_847->g_36
        &p_847->g_36, // p_847->g_35
        0x3251F81FL, // p_847->g_51
        0x05DA4005L, // p_847->g_65
        0x7A35L, // p_847->g_91
        {&p_847->g_91,&p_847->g_91,&p_847->g_91,&p_847->g_91,&p_847->g_91,&p_847->g_91,&p_847->g_91,&p_847->g_91,&p_847->g_91}, // p_847->g_90
        (-3L), // p_847->g_105
        0x57ECFC28C89D8701L, // p_847->g_106
        {0x28L}, // p_847->g_110
        2L, // p_847->g_113
        {0x09L,(-1L),0x09L,0x09L,(-1L),0x09L,0x09L,(-1L),0x09L}, // p_847->g_129
        1L, // p_847->g_130
        255UL, // p_847->g_131
        (VECTOR(uint8_t, 8))(248UL, (VECTOR(uint8_t, 4))(248UL, (VECTOR(uint8_t, 2))(248UL, 0xBDL), 0xBDL), 0xBDL, 248UL, 0xBDL), // p_847->g_139
        (VECTOR(uint8_t, 2))(251UL, 1UL), // p_847->g_176
        (VECTOR(int16_t, 8))(0x66FCL, (VECTOR(int16_t, 4))(0x66FCL, (VECTOR(int16_t, 2))(0x66FCL, 0x0BD2L), 0x0BD2L), 0x0BD2L, 0x66FCL, 0x0BD2L), // p_847->g_206
        (VECTOR(int16_t, 16))(2L, (VECTOR(int16_t, 4))(2L, (VECTOR(int16_t, 2))(2L, 0x7AFCL), 0x7AFCL), 0x7AFCL, 2L, 0x7AFCL, (VECTOR(int16_t, 2))(2L, 0x7AFCL), (VECTOR(int16_t, 2))(2L, 0x7AFCL), 2L, 0x7AFCL, 2L, 0x7AFCL), // p_847->g_208
        (VECTOR(int16_t, 16))(0x71F6L, (VECTOR(int16_t, 4))(0x71F6L, (VECTOR(int16_t, 2))(0x71F6L, 0x036CL), 0x036CL), 0x036CL, 0x71F6L, 0x036CL, (VECTOR(int16_t, 2))(0x71F6L, 0x036CL), (VECTOR(int16_t, 2))(0x71F6L, 0x036CL), 0x71F6L, 0x036CL, 0x71F6L, 0x036CL), // p_847->g_234
        (VECTOR(int16_t, 16))(0x0C8DL, (VECTOR(int16_t, 4))(0x0C8DL, (VECTOR(int16_t, 2))(0x0C8DL, 0x3D15L), 0x3D15L), 0x3D15L, 0x0C8DL, 0x3D15L, (VECTOR(int16_t, 2))(0x0C8DL, 0x3D15L), (VECTOR(int16_t, 2))(0x0C8DL, 0x3D15L), 0x0C8DL, 0x3D15L, 0x0C8DL, 0x3D15L), // p_847->g_235
        (VECTOR(int16_t, 2))(4L, 1L), // p_847->g_237
        &p_847->g_130, // p_847->g_243
        {{1UL,0x7101A3327E28ABA9L,0x0580E84D75D9914FL,0x7101A3327E28ABA9L,1UL,1UL,0x7101A3327E28ABA9L},{1UL,0x7101A3327E28ABA9L,0x0580E84D75D9914FL,0x7101A3327E28ABA9L,1UL,1UL,0x7101A3327E28ABA9L},{1UL,0x7101A3327E28ABA9L,0x0580E84D75D9914FL,0x7101A3327E28ABA9L,1UL,1UL,0x7101A3327E28ABA9L},{1UL,0x7101A3327E28ABA9L,0x0580E84D75D9914FL,0x7101A3327E28ABA9L,1UL,1UL,0x7101A3327E28ABA9L}}, // p_847->g_245
        &p_847->g_243, // p_847->g_276
        (VECTOR(int32_t, 2))(0x09E236CDL, (-5L)), // p_847->g_280
        0xDA71L, // p_847->g_290
        (VECTOR(uint32_t, 4))(0x1B332474L, (VECTOR(uint32_t, 2))(0x1B332474L, 4294967295UL), 4294967295UL), // p_847->g_306
        0x1B7EF219L, // p_847->g_330
        {0x35L,0x35L}, // p_847->g_400
        (VECTOR(uint8_t, 2))(1UL, 251UL), // p_847->g_403
        (void*)0, // p_847->g_411
        (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL), // p_847->g_415
        (void*)0, // p_847->g_433
        &p_847->g_433, // p_847->g_432
        (VECTOR(int16_t, 16))((-2L), (VECTOR(int16_t, 4))((-2L), (VECTOR(int16_t, 2))((-2L), 0x39BFL), 0x39BFL), 0x39BFL, (-2L), 0x39BFL, (VECTOR(int16_t, 2))((-2L), 0x39BFL), (VECTOR(int16_t, 2))((-2L), 0x39BFL), (-2L), 0x39BFL, (-2L), 0x39BFL), // p_847->g_463
        (VECTOR(int64_t, 2))(0x140C8F7BF17432C0L, (-9L)), // p_847->g_466
        (VECTOR(int32_t, 2))(0x6B197322L, 2L), // p_847->g_478
        (VECTOR(int32_t, 4))(0x4F2078EFL, (VECTOR(int32_t, 2))(0x4F2078EFL, (-10L)), (-10L)), // p_847->g_479
        (VECTOR(int32_t, 16))(0x0733E3E3L, (VECTOR(int32_t, 4))(0x0733E3E3L, (VECTOR(int32_t, 2))(0x0733E3E3L, 0x687FBA50L), 0x687FBA50L), 0x687FBA50L, 0x0733E3E3L, 0x687FBA50L, (VECTOR(int32_t, 2))(0x0733E3E3L, 0x687FBA50L), (VECTOR(int32_t, 2))(0x0733E3E3L, 0x687FBA50L), 0x0733E3E3L, 0x687FBA50L, 0x0733E3E3L, 0x687FBA50L), // p_847->g_482
        (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 1L), 1L), // p_847->g_483
        (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x7BADA4DBL), 0x7BADA4DBL), // p_847->g_484
        {{{1L,(-1L),0x70AFL,0x5C05L,0L,0L,1L,1L},{1L,(-1L),0x70AFL,0x5C05L,0L,0L,1L,1L},{1L,(-1L),0x70AFL,0x5C05L,0L,0L,1L,1L},{1L,(-1L),0x70AFL,0x5C05L,0L,0L,1L,1L}},{{1L,(-1L),0x70AFL,0x5C05L,0L,0L,1L,1L},{1L,(-1L),0x70AFL,0x5C05L,0L,0L,1L,1L},{1L,(-1L),0x70AFL,0x5C05L,0L,0L,1L,1L},{1L,(-1L),0x70AFL,0x5C05L,0L,0L,1L,1L}},{{1L,(-1L),0x70AFL,0x5C05L,0L,0L,1L,1L},{1L,(-1L),0x70AFL,0x5C05L,0L,0L,1L,1L},{1L,(-1L),0x70AFL,0x5C05L,0L,0L,1L,1L},{1L,(-1L),0x70AFL,0x5C05L,0L,0L,1L,1L}},{{1L,(-1L),0x70AFL,0x5C05L,0L,0L,1L,1L},{1L,(-1L),0x70AFL,0x5C05L,0L,0L,1L,1L},{1L,(-1L),0x70AFL,0x5C05L,0L,0L,1L,1L},{1L,(-1L),0x70AFL,0x5C05L,0L,0L,1L,1L}},{{1L,(-1L),0x70AFL,0x5C05L,0L,0L,1L,1L},{1L,(-1L),0x70AFL,0x5C05L,0L,0L,1L,1L},{1L,(-1L),0x70AFL,0x5C05L,0L,0L,1L,1L},{1L,(-1L),0x70AFL,0x5C05L,0L,0L,1L,1L}},{{1L,(-1L),0x70AFL,0x5C05L,0L,0L,1L,1L},{1L,(-1L),0x70AFL,0x5C05L,0L,0L,1L,1L},{1L,(-1L),0x70AFL,0x5C05L,0L,0L,1L,1L},{1L,(-1L),0x70AFL,0x5C05L,0L,0L,1L,1L}},{{1L,(-1L),0x70AFL,0x5C05L,0L,0L,1L,1L},{1L,(-1L),0x70AFL,0x5C05L,0L,0L,1L,1L},{1L,(-1L),0x70AFL,0x5C05L,0L,0L,1L,1L},{1L,(-1L),0x70AFL,0x5C05L,0L,0L,1L,1L}},{{1L,(-1L),0x70AFL,0x5C05L,0L,0L,1L,1L},{1L,(-1L),0x70AFL,0x5C05L,0L,0L,1L,1L},{1L,(-1L),0x70AFL,0x5C05L,0L,0L,1L,1L},{1L,(-1L),0x70AFL,0x5C05L,0L,0L,1L,1L}}}, // p_847->g_525
        &p_847->g_110, // p_847->g_531
        (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x6F02L), 0x6F02L), 0x6F02L, 1L, 0x6F02L, (VECTOR(int16_t, 2))(1L, 0x6F02L), (VECTOR(int16_t, 2))(1L, 0x6F02L), 1L, 0x6F02L, 1L, 0x6F02L), // p_847->g_563
        (VECTOR(uint64_t, 16))(8UL, (VECTOR(uint64_t, 4))(8UL, (VECTOR(uint64_t, 2))(8UL, 0x02B9F2492573088EL), 0x02B9F2492573088EL), 0x02B9F2492573088EL, 8UL, 0x02B9F2492573088EL, (VECTOR(uint64_t, 2))(8UL, 0x02B9F2492573088EL), (VECTOR(uint64_t, 2))(8UL, 0x02B9F2492573088EL), 8UL, 0x02B9F2492573088EL, 8UL, 0x02B9F2492573088EL), // p_847->g_570
        0UL, // p_847->g_577
        {1L}, // p_847->g_593
        (void*)0, // p_847->g_620
        (VECTOR(uint8_t, 16))(4UL, (VECTOR(uint8_t, 4))(4UL, (VECTOR(uint8_t, 2))(4UL, 0x0EL), 0x0EL), 0x0EL, 4UL, 0x0EL, (VECTOR(uint8_t, 2))(4UL, 0x0EL), (VECTOR(uint8_t, 2))(4UL, 0x0EL), 4UL, 0x0EL, 4UL, 0x0EL), // p_847->g_671
        (VECTOR(uint16_t, 2))(1UL, 0xD2A7L), // p_847->g_683
        9UL, // p_847->g_688
        {0x07FDBD904353F0ECL}, // p_847->g_738
        {&p_847->g_738,&p_847->g_738,&p_847->g_738,&p_847->g_738}, // p_847->g_737
        (void*)0, // p_847->g_754
        &p_847->g_110.f3, // p_847->g_770
        (void*)0, // p_847->g_771
        {{{&p_847->g_65,&p_847->g_16},{&p_847->g_65,&p_847->g_16},{&p_847->g_65,&p_847->g_16}},{{&p_847->g_65,&p_847->g_16},{&p_847->g_65,&p_847->g_16},{&p_847->g_65,&p_847->g_16}},{{&p_847->g_65,&p_847->g_16},{&p_847->g_65,&p_847->g_16},{&p_847->g_65,&p_847->g_16}},{{&p_847->g_65,&p_847->g_16},{&p_847->g_65,&p_847->g_16},{&p_847->g_65,&p_847->g_16}},{{&p_847->g_65,&p_847->g_16},{&p_847->g_65,&p_847->g_16},{&p_847->g_65,&p_847->g_16}}}, // p_847->g_812
        &p_847->g_812[0][0][1], // p_847->g_811
        &p_847->g_811, // p_847->g_813
        &p_847->g_593, // p_847->g_817
        &p_847->g_817, // p_847->g_816
        (VECTOR(uint64_t, 2))(0UL, 0x7FB7A7EC25457862L), // p_847->g_822
        (VECTOR(uint64_t, 16))(0xB3EE0422D6E33CCEL, (VECTOR(uint64_t, 4))(0xB3EE0422D6E33CCEL, (VECTOR(uint64_t, 2))(0xB3EE0422D6E33CCEL, 0x9928C18D628842A5L), 0x9928C18D628842A5L), 0x9928C18D628842A5L, 0xB3EE0422D6E33CCEL, 0x9928C18D628842A5L, (VECTOR(uint64_t, 2))(0xB3EE0422D6E33CCEL, 0x9928C18D628842A5L), (VECTOR(uint64_t, 2))(0xB3EE0422D6E33CCEL, 0x9928C18D628842A5L), 0xB3EE0422D6E33CCEL, 0x9928C18D628842A5L, 0xB3EE0422D6E33CCEL, 0x9928C18D628842A5L), // p_847->g_823
        (VECTOR(uint64_t, 8))(0xAA3145A2836AB8C4L, (VECTOR(uint64_t, 4))(0xAA3145A2836AB8C4L, (VECTOR(uint64_t, 2))(0xAA3145A2836AB8C4L, 0UL), 0UL), 0UL, 0xAA3145A2836AB8C4L, 0UL), // p_847->g_824
        (VECTOR(uint64_t, 8))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 1UL), 1UL), 1UL, 18446744073709551615UL, 1UL), // p_847->g_825
        (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0x73674C4A1BBF7072L), 0x73674C4A1BBF7072L), 0x73674C4A1BBF7072L, 0UL, 0x73674C4A1BBF7072L, (VECTOR(uint64_t, 2))(0UL, 0x73674C4A1BBF7072L), (VECTOR(uint64_t, 2))(0UL, 0x73674C4A1BBF7072L), 0UL, 0x73674C4A1BBF7072L, 0UL, 0x73674C4A1BBF7072L), // p_847->g_826
        &p_847->g_330, // p_847->g_837
        {-2L}, // p_847->g_845
        0, // p_847->v_collective
        sequence_input[get_global_id(0)], // p_847->global_0_offset
        sequence_input[get_global_id(1)], // p_847->global_1_offset
        sequence_input[get_global_id(2)], // p_847->global_2_offset
        sequence_input[get_local_id(0)], // p_847->local_0_offset
        sequence_input[get_local_id(1)], // p_847->local_1_offset
        sequence_input[get_local_id(2)], // p_847->local_2_offset
        sequence_input[get_group_id(0)], // p_847->group_0_offset
        sequence_input[get_group_id(1)], // p_847->group_1_offset
        sequence_input[get_group_id(2)], // p_847->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 3)), permutations[0][get_linear_local_id()])), // p_847->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_848 = c_849;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_847);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_847->g_2, "p_847->g_2", print_hash_value);
    transparent_crc(p_847->g_5, "p_847->g_5", print_hash_value);
    transparent_crc(p_847->g_16, "p_847->g_16", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_847->g_28[i][j][k], "p_847->g_28[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_847->g_29, "p_847->g_29", print_hash_value);
    transparent_crc(p_847->g_30, "p_847->g_30", print_hash_value);
    transparent_crc(p_847->g_34, "p_847->g_34", print_hash_value);
    transparent_crc(p_847->g_36, "p_847->g_36", print_hash_value);
    transparent_crc(p_847->g_51, "p_847->g_51", print_hash_value);
    transparent_crc(p_847->g_65, "p_847->g_65", print_hash_value);
    transparent_crc(p_847->g_91, "p_847->g_91", print_hash_value);
    transparent_crc(p_847->g_105, "p_847->g_105", print_hash_value);
    transparent_crc(p_847->g_106, "p_847->g_106", print_hash_value);
    transparent_crc(p_847->g_110.f3, "p_847->g_110.f3", print_hash_value);
    transparent_crc(p_847->g_113, "p_847->g_113", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_847->g_129[i], "p_847->g_129[i]", print_hash_value);

    }
    transparent_crc(p_847->g_130, "p_847->g_130", print_hash_value);
    transparent_crc(p_847->g_131, "p_847->g_131", print_hash_value);
    transparent_crc(p_847->g_139.s0, "p_847->g_139.s0", print_hash_value);
    transparent_crc(p_847->g_139.s1, "p_847->g_139.s1", print_hash_value);
    transparent_crc(p_847->g_139.s2, "p_847->g_139.s2", print_hash_value);
    transparent_crc(p_847->g_139.s3, "p_847->g_139.s3", print_hash_value);
    transparent_crc(p_847->g_139.s4, "p_847->g_139.s4", print_hash_value);
    transparent_crc(p_847->g_139.s5, "p_847->g_139.s5", print_hash_value);
    transparent_crc(p_847->g_139.s6, "p_847->g_139.s6", print_hash_value);
    transparent_crc(p_847->g_139.s7, "p_847->g_139.s7", print_hash_value);
    transparent_crc(p_847->g_176.x, "p_847->g_176.x", print_hash_value);
    transparent_crc(p_847->g_176.y, "p_847->g_176.y", print_hash_value);
    transparent_crc(p_847->g_206.s0, "p_847->g_206.s0", print_hash_value);
    transparent_crc(p_847->g_206.s1, "p_847->g_206.s1", print_hash_value);
    transparent_crc(p_847->g_206.s2, "p_847->g_206.s2", print_hash_value);
    transparent_crc(p_847->g_206.s3, "p_847->g_206.s3", print_hash_value);
    transparent_crc(p_847->g_206.s4, "p_847->g_206.s4", print_hash_value);
    transparent_crc(p_847->g_206.s5, "p_847->g_206.s5", print_hash_value);
    transparent_crc(p_847->g_206.s6, "p_847->g_206.s6", print_hash_value);
    transparent_crc(p_847->g_206.s7, "p_847->g_206.s7", print_hash_value);
    transparent_crc(p_847->g_208.s0, "p_847->g_208.s0", print_hash_value);
    transparent_crc(p_847->g_208.s1, "p_847->g_208.s1", print_hash_value);
    transparent_crc(p_847->g_208.s2, "p_847->g_208.s2", print_hash_value);
    transparent_crc(p_847->g_208.s3, "p_847->g_208.s3", print_hash_value);
    transparent_crc(p_847->g_208.s4, "p_847->g_208.s4", print_hash_value);
    transparent_crc(p_847->g_208.s5, "p_847->g_208.s5", print_hash_value);
    transparent_crc(p_847->g_208.s6, "p_847->g_208.s6", print_hash_value);
    transparent_crc(p_847->g_208.s7, "p_847->g_208.s7", print_hash_value);
    transparent_crc(p_847->g_208.s8, "p_847->g_208.s8", print_hash_value);
    transparent_crc(p_847->g_208.s9, "p_847->g_208.s9", print_hash_value);
    transparent_crc(p_847->g_208.sa, "p_847->g_208.sa", print_hash_value);
    transparent_crc(p_847->g_208.sb, "p_847->g_208.sb", print_hash_value);
    transparent_crc(p_847->g_208.sc, "p_847->g_208.sc", print_hash_value);
    transparent_crc(p_847->g_208.sd, "p_847->g_208.sd", print_hash_value);
    transparent_crc(p_847->g_208.se, "p_847->g_208.se", print_hash_value);
    transparent_crc(p_847->g_208.sf, "p_847->g_208.sf", print_hash_value);
    transparent_crc(p_847->g_234.s0, "p_847->g_234.s0", print_hash_value);
    transparent_crc(p_847->g_234.s1, "p_847->g_234.s1", print_hash_value);
    transparent_crc(p_847->g_234.s2, "p_847->g_234.s2", print_hash_value);
    transparent_crc(p_847->g_234.s3, "p_847->g_234.s3", print_hash_value);
    transparent_crc(p_847->g_234.s4, "p_847->g_234.s4", print_hash_value);
    transparent_crc(p_847->g_234.s5, "p_847->g_234.s5", print_hash_value);
    transparent_crc(p_847->g_234.s6, "p_847->g_234.s6", print_hash_value);
    transparent_crc(p_847->g_234.s7, "p_847->g_234.s7", print_hash_value);
    transparent_crc(p_847->g_234.s8, "p_847->g_234.s8", print_hash_value);
    transparent_crc(p_847->g_234.s9, "p_847->g_234.s9", print_hash_value);
    transparent_crc(p_847->g_234.sa, "p_847->g_234.sa", print_hash_value);
    transparent_crc(p_847->g_234.sb, "p_847->g_234.sb", print_hash_value);
    transparent_crc(p_847->g_234.sc, "p_847->g_234.sc", print_hash_value);
    transparent_crc(p_847->g_234.sd, "p_847->g_234.sd", print_hash_value);
    transparent_crc(p_847->g_234.se, "p_847->g_234.se", print_hash_value);
    transparent_crc(p_847->g_234.sf, "p_847->g_234.sf", print_hash_value);
    transparent_crc(p_847->g_235.s0, "p_847->g_235.s0", print_hash_value);
    transparent_crc(p_847->g_235.s1, "p_847->g_235.s1", print_hash_value);
    transparent_crc(p_847->g_235.s2, "p_847->g_235.s2", print_hash_value);
    transparent_crc(p_847->g_235.s3, "p_847->g_235.s3", print_hash_value);
    transparent_crc(p_847->g_235.s4, "p_847->g_235.s4", print_hash_value);
    transparent_crc(p_847->g_235.s5, "p_847->g_235.s5", print_hash_value);
    transparent_crc(p_847->g_235.s6, "p_847->g_235.s6", print_hash_value);
    transparent_crc(p_847->g_235.s7, "p_847->g_235.s7", print_hash_value);
    transparent_crc(p_847->g_235.s8, "p_847->g_235.s8", print_hash_value);
    transparent_crc(p_847->g_235.s9, "p_847->g_235.s9", print_hash_value);
    transparent_crc(p_847->g_235.sa, "p_847->g_235.sa", print_hash_value);
    transparent_crc(p_847->g_235.sb, "p_847->g_235.sb", print_hash_value);
    transparent_crc(p_847->g_235.sc, "p_847->g_235.sc", print_hash_value);
    transparent_crc(p_847->g_235.sd, "p_847->g_235.sd", print_hash_value);
    transparent_crc(p_847->g_235.se, "p_847->g_235.se", print_hash_value);
    transparent_crc(p_847->g_235.sf, "p_847->g_235.sf", print_hash_value);
    transparent_crc(p_847->g_237.x, "p_847->g_237.x", print_hash_value);
    transparent_crc(p_847->g_237.y, "p_847->g_237.y", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_847->g_245[i][j], "p_847->g_245[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_847->g_280.x, "p_847->g_280.x", print_hash_value);
    transparent_crc(p_847->g_280.y, "p_847->g_280.y", print_hash_value);
    transparent_crc(p_847->g_290, "p_847->g_290", print_hash_value);
    transparent_crc(p_847->g_306.x, "p_847->g_306.x", print_hash_value);
    transparent_crc(p_847->g_306.y, "p_847->g_306.y", print_hash_value);
    transparent_crc(p_847->g_306.z, "p_847->g_306.z", print_hash_value);
    transparent_crc(p_847->g_306.w, "p_847->g_306.w", print_hash_value);
    transparent_crc(p_847->g_330, "p_847->g_330", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_847->g_400[i], "p_847->g_400[i]", print_hash_value);

    }
    transparent_crc(p_847->g_403.x, "p_847->g_403.x", print_hash_value);
    transparent_crc(p_847->g_403.y, "p_847->g_403.y", print_hash_value);
    transparent_crc(p_847->g_415.s0, "p_847->g_415.s0", print_hash_value);
    transparent_crc(p_847->g_415.s1, "p_847->g_415.s1", print_hash_value);
    transparent_crc(p_847->g_415.s2, "p_847->g_415.s2", print_hash_value);
    transparent_crc(p_847->g_415.s3, "p_847->g_415.s3", print_hash_value);
    transparent_crc(p_847->g_415.s4, "p_847->g_415.s4", print_hash_value);
    transparent_crc(p_847->g_415.s5, "p_847->g_415.s5", print_hash_value);
    transparent_crc(p_847->g_415.s6, "p_847->g_415.s6", print_hash_value);
    transparent_crc(p_847->g_415.s7, "p_847->g_415.s7", print_hash_value);
    transparent_crc(p_847->g_463.s0, "p_847->g_463.s0", print_hash_value);
    transparent_crc(p_847->g_463.s1, "p_847->g_463.s1", print_hash_value);
    transparent_crc(p_847->g_463.s2, "p_847->g_463.s2", print_hash_value);
    transparent_crc(p_847->g_463.s3, "p_847->g_463.s3", print_hash_value);
    transparent_crc(p_847->g_463.s4, "p_847->g_463.s4", print_hash_value);
    transparent_crc(p_847->g_463.s5, "p_847->g_463.s5", print_hash_value);
    transparent_crc(p_847->g_463.s6, "p_847->g_463.s6", print_hash_value);
    transparent_crc(p_847->g_463.s7, "p_847->g_463.s7", print_hash_value);
    transparent_crc(p_847->g_463.s8, "p_847->g_463.s8", print_hash_value);
    transparent_crc(p_847->g_463.s9, "p_847->g_463.s9", print_hash_value);
    transparent_crc(p_847->g_463.sa, "p_847->g_463.sa", print_hash_value);
    transparent_crc(p_847->g_463.sb, "p_847->g_463.sb", print_hash_value);
    transparent_crc(p_847->g_463.sc, "p_847->g_463.sc", print_hash_value);
    transparent_crc(p_847->g_463.sd, "p_847->g_463.sd", print_hash_value);
    transparent_crc(p_847->g_463.se, "p_847->g_463.se", print_hash_value);
    transparent_crc(p_847->g_463.sf, "p_847->g_463.sf", print_hash_value);
    transparent_crc(p_847->g_466.x, "p_847->g_466.x", print_hash_value);
    transparent_crc(p_847->g_466.y, "p_847->g_466.y", print_hash_value);
    transparent_crc(p_847->g_478.x, "p_847->g_478.x", print_hash_value);
    transparent_crc(p_847->g_478.y, "p_847->g_478.y", print_hash_value);
    transparent_crc(p_847->g_479.x, "p_847->g_479.x", print_hash_value);
    transparent_crc(p_847->g_479.y, "p_847->g_479.y", print_hash_value);
    transparent_crc(p_847->g_479.z, "p_847->g_479.z", print_hash_value);
    transparent_crc(p_847->g_479.w, "p_847->g_479.w", print_hash_value);
    transparent_crc(p_847->g_482.s0, "p_847->g_482.s0", print_hash_value);
    transparent_crc(p_847->g_482.s1, "p_847->g_482.s1", print_hash_value);
    transparent_crc(p_847->g_482.s2, "p_847->g_482.s2", print_hash_value);
    transparent_crc(p_847->g_482.s3, "p_847->g_482.s3", print_hash_value);
    transparent_crc(p_847->g_482.s4, "p_847->g_482.s4", print_hash_value);
    transparent_crc(p_847->g_482.s5, "p_847->g_482.s5", print_hash_value);
    transparent_crc(p_847->g_482.s6, "p_847->g_482.s6", print_hash_value);
    transparent_crc(p_847->g_482.s7, "p_847->g_482.s7", print_hash_value);
    transparent_crc(p_847->g_482.s8, "p_847->g_482.s8", print_hash_value);
    transparent_crc(p_847->g_482.s9, "p_847->g_482.s9", print_hash_value);
    transparent_crc(p_847->g_482.sa, "p_847->g_482.sa", print_hash_value);
    transparent_crc(p_847->g_482.sb, "p_847->g_482.sb", print_hash_value);
    transparent_crc(p_847->g_482.sc, "p_847->g_482.sc", print_hash_value);
    transparent_crc(p_847->g_482.sd, "p_847->g_482.sd", print_hash_value);
    transparent_crc(p_847->g_482.se, "p_847->g_482.se", print_hash_value);
    transparent_crc(p_847->g_482.sf, "p_847->g_482.sf", print_hash_value);
    transparent_crc(p_847->g_483.x, "p_847->g_483.x", print_hash_value);
    transparent_crc(p_847->g_483.y, "p_847->g_483.y", print_hash_value);
    transparent_crc(p_847->g_483.z, "p_847->g_483.z", print_hash_value);
    transparent_crc(p_847->g_483.w, "p_847->g_483.w", print_hash_value);
    transparent_crc(p_847->g_484.x, "p_847->g_484.x", print_hash_value);
    transparent_crc(p_847->g_484.y, "p_847->g_484.y", print_hash_value);
    transparent_crc(p_847->g_484.z, "p_847->g_484.z", print_hash_value);
    transparent_crc(p_847->g_484.w, "p_847->g_484.w", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_847->g_525[i][j][k], "p_847->g_525[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_847->g_563.s0, "p_847->g_563.s0", print_hash_value);
    transparent_crc(p_847->g_563.s1, "p_847->g_563.s1", print_hash_value);
    transparent_crc(p_847->g_563.s2, "p_847->g_563.s2", print_hash_value);
    transparent_crc(p_847->g_563.s3, "p_847->g_563.s3", print_hash_value);
    transparent_crc(p_847->g_563.s4, "p_847->g_563.s4", print_hash_value);
    transparent_crc(p_847->g_563.s5, "p_847->g_563.s5", print_hash_value);
    transparent_crc(p_847->g_563.s6, "p_847->g_563.s6", print_hash_value);
    transparent_crc(p_847->g_563.s7, "p_847->g_563.s7", print_hash_value);
    transparent_crc(p_847->g_563.s8, "p_847->g_563.s8", print_hash_value);
    transparent_crc(p_847->g_563.s9, "p_847->g_563.s9", print_hash_value);
    transparent_crc(p_847->g_563.sa, "p_847->g_563.sa", print_hash_value);
    transparent_crc(p_847->g_563.sb, "p_847->g_563.sb", print_hash_value);
    transparent_crc(p_847->g_563.sc, "p_847->g_563.sc", print_hash_value);
    transparent_crc(p_847->g_563.sd, "p_847->g_563.sd", print_hash_value);
    transparent_crc(p_847->g_563.se, "p_847->g_563.se", print_hash_value);
    transparent_crc(p_847->g_563.sf, "p_847->g_563.sf", print_hash_value);
    transparent_crc(p_847->g_570.s0, "p_847->g_570.s0", print_hash_value);
    transparent_crc(p_847->g_570.s1, "p_847->g_570.s1", print_hash_value);
    transparent_crc(p_847->g_570.s2, "p_847->g_570.s2", print_hash_value);
    transparent_crc(p_847->g_570.s3, "p_847->g_570.s3", print_hash_value);
    transparent_crc(p_847->g_570.s4, "p_847->g_570.s4", print_hash_value);
    transparent_crc(p_847->g_570.s5, "p_847->g_570.s5", print_hash_value);
    transparent_crc(p_847->g_570.s6, "p_847->g_570.s6", print_hash_value);
    transparent_crc(p_847->g_570.s7, "p_847->g_570.s7", print_hash_value);
    transparent_crc(p_847->g_570.s8, "p_847->g_570.s8", print_hash_value);
    transparent_crc(p_847->g_570.s9, "p_847->g_570.s9", print_hash_value);
    transparent_crc(p_847->g_570.sa, "p_847->g_570.sa", print_hash_value);
    transparent_crc(p_847->g_570.sb, "p_847->g_570.sb", print_hash_value);
    transparent_crc(p_847->g_570.sc, "p_847->g_570.sc", print_hash_value);
    transparent_crc(p_847->g_570.sd, "p_847->g_570.sd", print_hash_value);
    transparent_crc(p_847->g_570.se, "p_847->g_570.se", print_hash_value);
    transparent_crc(p_847->g_570.sf, "p_847->g_570.sf", print_hash_value);
    transparent_crc(p_847->g_577, "p_847->g_577", print_hash_value);
    transparent_crc(p_847->g_593.f0, "p_847->g_593.f0", print_hash_value);
    transparent_crc(p_847->g_671.s0, "p_847->g_671.s0", print_hash_value);
    transparent_crc(p_847->g_671.s1, "p_847->g_671.s1", print_hash_value);
    transparent_crc(p_847->g_671.s2, "p_847->g_671.s2", print_hash_value);
    transparent_crc(p_847->g_671.s3, "p_847->g_671.s3", print_hash_value);
    transparent_crc(p_847->g_671.s4, "p_847->g_671.s4", print_hash_value);
    transparent_crc(p_847->g_671.s5, "p_847->g_671.s5", print_hash_value);
    transparent_crc(p_847->g_671.s6, "p_847->g_671.s6", print_hash_value);
    transparent_crc(p_847->g_671.s7, "p_847->g_671.s7", print_hash_value);
    transparent_crc(p_847->g_671.s8, "p_847->g_671.s8", print_hash_value);
    transparent_crc(p_847->g_671.s9, "p_847->g_671.s9", print_hash_value);
    transparent_crc(p_847->g_671.sa, "p_847->g_671.sa", print_hash_value);
    transparent_crc(p_847->g_671.sb, "p_847->g_671.sb", print_hash_value);
    transparent_crc(p_847->g_671.sc, "p_847->g_671.sc", print_hash_value);
    transparent_crc(p_847->g_671.sd, "p_847->g_671.sd", print_hash_value);
    transparent_crc(p_847->g_671.se, "p_847->g_671.se", print_hash_value);
    transparent_crc(p_847->g_671.sf, "p_847->g_671.sf", print_hash_value);
    transparent_crc(p_847->g_683.x, "p_847->g_683.x", print_hash_value);
    transparent_crc(p_847->g_683.y, "p_847->g_683.y", print_hash_value);
    transparent_crc(p_847->g_688, "p_847->g_688", print_hash_value);
    transparent_crc(p_847->g_738.f0, "p_847->g_738.f0", print_hash_value);
    transparent_crc(p_847->g_822.x, "p_847->g_822.x", print_hash_value);
    transparent_crc(p_847->g_822.y, "p_847->g_822.y", print_hash_value);
    transparent_crc(p_847->g_823.s0, "p_847->g_823.s0", print_hash_value);
    transparent_crc(p_847->g_823.s1, "p_847->g_823.s1", print_hash_value);
    transparent_crc(p_847->g_823.s2, "p_847->g_823.s2", print_hash_value);
    transparent_crc(p_847->g_823.s3, "p_847->g_823.s3", print_hash_value);
    transparent_crc(p_847->g_823.s4, "p_847->g_823.s4", print_hash_value);
    transparent_crc(p_847->g_823.s5, "p_847->g_823.s5", print_hash_value);
    transparent_crc(p_847->g_823.s6, "p_847->g_823.s6", print_hash_value);
    transparent_crc(p_847->g_823.s7, "p_847->g_823.s7", print_hash_value);
    transparent_crc(p_847->g_823.s8, "p_847->g_823.s8", print_hash_value);
    transparent_crc(p_847->g_823.s9, "p_847->g_823.s9", print_hash_value);
    transparent_crc(p_847->g_823.sa, "p_847->g_823.sa", print_hash_value);
    transparent_crc(p_847->g_823.sb, "p_847->g_823.sb", print_hash_value);
    transparent_crc(p_847->g_823.sc, "p_847->g_823.sc", print_hash_value);
    transparent_crc(p_847->g_823.sd, "p_847->g_823.sd", print_hash_value);
    transparent_crc(p_847->g_823.se, "p_847->g_823.se", print_hash_value);
    transparent_crc(p_847->g_823.sf, "p_847->g_823.sf", print_hash_value);
    transparent_crc(p_847->g_824.s0, "p_847->g_824.s0", print_hash_value);
    transparent_crc(p_847->g_824.s1, "p_847->g_824.s1", print_hash_value);
    transparent_crc(p_847->g_824.s2, "p_847->g_824.s2", print_hash_value);
    transparent_crc(p_847->g_824.s3, "p_847->g_824.s3", print_hash_value);
    transparent_crc(p_847->g_824.s4, "p_847->g_824.s4", print_hash_value);
    transparent_crc(p_847->g_824.s5, "p_847->g_824.s5", print_hash_value);
    transparent_crc(p_847->g_824.s6, "p_847->g_824.s6", print_hash_value);
    transparent_crc(p_847->g_824.s7, "p_847->g_824.s7", print_hash_value);
    transparent_crc(p_847->g_825.s0, "p_847->g_825.s0", print_hash_value);
    transparent_crc(p_847->g_825.s1, "p_847->g_825.s1", print_hash_value);
    transparent_crc(p_847->g_825.s2, "p_847->g_825.s2", print_hash_value);
    transparent_crc(p_847->g_825.s3, "p_847->g_825.s3", print_hash_value);
    transparent_crc(p_847->g_825.s4, "p_847->g_825.s4", print_hash_value);
    transparent_crc(p_847->g_825.s5, "p_847->g_825.s5", print_hash_value);
    transparent_crc(p_847->g_825.s6, "p_847->g_825.s6", print_hash_value);
    transparent_crc(p_847->g_825.s7, "p_847->g_825.s7", print_hash_value);
    transparent_crc(p_847->g_826.s0, "p_847->g_826.s0", print_hash_value);
    transparent_crc(p_847->g_826.s1, "p_847->g_826.s1", print_hash_value);
    transparent_crc(p_847->g_826.s2, "p_847->g_826.s2", print_hash_value);
    transparent_crc(p_847->g_826.s3, "p_847->g_826.s3", print_hash_value);
    transparent_crc(p_847->g_826.s4, "p_847->g_826.s4", print_hash_value);
    transparent_crc(p_847->g_826.s5, "p_847->g_826.s5", print_hash_value);
    transparent_crc(p_847->g_826.s6, "p_847->g_826.s6", print_hash_value);
    transparent_crc(p_847->g_826.s7, "p_847->g_826.s7", print_hash_value);
    transparent_crc(p_847->g_826.s8, "p_847->g_826.s8", print_hash_value);
    transparent_crc(p_847->g_826.s9, "p_847->g_826.s9", print_hash_value);
    transparent_crc(p_847->g_826.sa, "p_847->g_826.sa", print_hash_value);
    transparent_crc(p_847->g_826.sb, "p_847->g_826.sb", print_hash_value);
    transparent_crc(p_847->g_826.sc, "p_847->g_826.sc", print_hash_value);
    transparent_crc(p_847->g_826.sd, "p_847->g_826.sd", print_hash_value);
    transparent_crc(p_847->g_826.se, "p_847->g_826.se", print_hash_value);
    transparent_crc(p_847->g_826.sf, "p_847->g_826.sf", print_hash_value);
    transparent_crc(p_847->g_845.f0, "p_847->g_845.f0", print_hash_value);
    transparent_crc(p_847->v_collective, "p_847->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 68; i++)
            transparent_crc(p_847->l_special_values[i], "p_847->l_special_values[i]", print_hash_value);
    transparent_crc(p_847->l_comm_values[get_linear_local_id()], "p_847->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_847->g_comm_values[get_linear_group_id() * 3 + get_linear_local_id()], "p_847->g_comm_values[get_linear_group_id() * 3 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
