// --atomics 51 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 12,82,10 -l 12,1,2
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

__constant uint32_t permutations[10][24] = {
{19,22,14,12,11,5,7,13,0,4,8,23,3,2,6,9,15,16,20,21,18,17,10,1}, // permutation 0
{18,6,4,0,10,14,17,3,11,1,9,22,15,8,21,13,23,7,2,19,16,20,12,5}, // permutation 1
{22,0,20,18,17,19,5,15,13,12,14,8,16,4,1,10,6,11,3,7,9,23,21,2}, // permutation 2
{15,20,23,5,19,4,0,3,22,9,18,13,7,6,11,12,21,10,14,1,17,2,8,16}, // permutation 3
{9,8,2,0,5,18,1,3,14,6,23,11,22,17,10,7,20,12,13,16,21,4,19,15}, // permutation 4
{4,13,2,5,16,12,11,18,10,19,0,23,22,7,21,17,3,14,8,20,9,1,6,15}, // permutation 5
{6,5,22,9,16,3,20,23,10,12,0,1,2,17,15,14,4,7,18,8,11,21,19,13}, // permutation 6
{14,0,15,9,13,22,17,11,10,1,21,4,6,19,23,12,2,3,16,8,20,18,7,5}, // permutation 7
{5,13,22,8,21,23,4,9,0,16,2,20,3,18,6,7,14,11,19,12,15,17,10,1}, // permutation 8
{12,5,2,0,11,3,18,1,15,8,4,16,20,23,21,14,13,17,9,19,22,10,6,7} // permutation 9
};

// Seed: 74

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint64_t  f0;
   int8_t * f1;
   uint32_t  f2;
   uint64_t  f3;
};

union U1 {
   uint32_t  f0;
   int64_t  f1;
   int32_t  f2;
   int8_t * f3;
};

union U2 {
   volatile int64_t  f0;
   int64_t  f1;
   int16_t  f2;
   uint16_t  f3;
   uint16_t  f4;
};

struct S3 {
    uint64_t g_6;
    union U1 g_34;
    int32_t g_37;
    volatile VECTOR(int32_t, 8) g_75;
    VECTOR(uint64_t, 16) g_76;
    uint64_t g_87;
    int8_t g_91;
    uint32_t g_94;
    union U2 g_98;
    union U2 *g_97;
    union U2 *g_102;
    int32_t *g_104;
    int32_t g_106;
    VECTOR(int64_t, 16) g_110;
    union U1 g_115;
    int32_t g_119;
    int32_t * volatile g_208;
    uint16_t *g_221;
    uint16_t g_224;
    uint16_t *g_223[4][3][6];
    VECTOR(int32_t, 8) g_235;
    volatile union U2 g_258;
    VECTOR(int32_t, 4) g_266;
    union U1 *g_275;
    union U1 **g_274;
    union U1 **g_279;
    union U1 **g_280;
    volatile VECTOR(uint8_t, 8) g_316;
    volatile VECTOR(int32_t, 16) g_346;
    VECTOR(uint32_t, 2) g_348;
    VECTOR(uint32_t, 8) g_350;
    VECTOR(int32_t, 8) g_355;
    volatile VECTOR(int32_t, 2) g_356;
    volatile int64_t g_360;
    volatile int64_t * volatile g_359;
    int64_t *g_374;
    volatile union U0 g_388;
    volatile VECTOR(int32_t, 8) g_390;
    VECTOR(int32_t, 2) g_393;
    int16_t g_427;
    VECTOR(int32_t, 4) g_431;
    uint8_t g_432;
    volatile uint32_t * volatile * volatile g_487;
    volatile uint32_t * volatile * volatile * volatile g_486;
    volatile uint32_t g_498;
    volatile int8_t g_503;
    volatile VECTOR(int16_t, 8) g_511;
    VECTOR(uint16_t, 8) g_525;
    int32_t ** volatile g_538[9];
    union U1 *** volatile g_545;
    int32_t * volatile g_579;
    volatile uint16_t g_599;
    volatile VECTOR(uint32_t, 2) g_636;
    volatile VECTOR(uint16_t, 16) g_661;
    volatile VECTOR(uint16_t, 8) g_680;
    int64_t g_688;
    volatile VECTOR(int8_t, 8) g_700;
    VECTOR(int8_t, 8) g_701;
    union U0 g_703;
    uint8_t * volatile g_712;
    uint8_t * volatile *g_711;
    uint32_t *g_713;
    volatile VECTOR(uint32_t, 2) g_716;
    int32_t *g_725;
    int32_t ** volatile g_727;
    VECTOR(int64_t, 8) g_730;
    int8_t *g_733;
    union U2 * volatile *g_747;
    union U2 * volatile ** volatile g_746;
    int32_t * volatile g_788[9];
    union U2 g_797[2][2];
    uint8_t g_827;
    volatile VECTOR(int32_t, 16) g_844;
    int32_t ** volatile g_864;
    int32_t ** volatile g_866;
    uint8_t **g_955;
    volatile VECTOR(int64_t, 4) g_964;
    uint8_t g_981;
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
int16_t  func_1(struct S3 * p_984);
int32_t * func_7(int64_t  p_8, union U0  p_9, int8_t * p_10, uint32_t  p_11, struct S3 * p_984);
int8_t * func_14(int8_t  p_15, uint32_t  p_16, int8_t  p_17, uint32_t  p_18, struct S3 * p_984);
int32_t * func_19(uint8_t  p_20, int32_t * p_21, int32_t * p_22, int8_t * p_23, struct S3 * p_984);
uint8_t  func_28(int32_t  p_29, union U1  p_30, int32_t * p_31, int32_t * p_32, int64_t  p_33, struct S3 * p_984);
int32_t * func_40(uint64_t * p_41, struct S3 * p_984);
union U1 ** func_43(union U1  p_44, int32_t  p_45, uint8_t  p_46, uint16_t  p_47, uint32_t  p_48, struct S3 * p_984);
union U1  func_49(int8_t * p_50, int64_t  p_51, uint16_t  p_52, int32_t * p_53, union U0  p_54, struct S3 * p_984);
int8_t * func_55(uint8_t  p_56, int32_t  p_57, uint32_t  p_58, struct S3 * p_984);
uint32_t  func_66(uint32_t  p_67, struct S3 * p_984);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_984->g_comm_values p_984->l_comm_values p_984->g_6 p_984->g_34 p_984->g_94 p_984->g_76 p_984->g_97 p_984->g_34.f0 p_984->g_98.f0 p_984->g_104 p_984->g_106 p_984->g_119 p_984->g_115 p_984->g_91 p_984->g_37 p_984->g_75 p_984->g_208 p_984->g_359 p_984->g_360 p_984->g_348 p_984->g_432 p_984->g_316 p_984->g_486 p_984->g_498 p_984->g_503 p_984->g_280 p_984->g_545 p_984->g_427 p_984->g_275 p_984->g_599 p_984->g_374 p_984->g_431 p_984->g_525 p_984->g_110 p_984->g_703 p_984->g_680 p_984->g_703.f0 p_984->g_102 p_984->g_701 p_984->g_725 p_984->g_711 p_984->g_350 p_984->g_712 p_984->g_727 p_984->g_733 p_984->g_746 p_984->g_87 p_984->g_390 p_984->g_393 p_984->g_98 p_984->g_747 p_984->g_797 p_984->g_866 p_984->g_955 p_984->g_964 p_984->g_235 p_984->g_355 p_984->g_981 p_984->g_636
 * writes: p_984->g_6 p_984->g_34 p_984->g_75 p_984->g_37 p_984->g_97 p_984->g_102 p_984->g_104 p_984->g_106 p_984->g_115.f1 p_984->g_94 p_984->g_119 p_984->g_427 p_984->g_432 p_984->g_280 p_984->g_224 p_984->g_498 p_984->g_274 p_984->g_599 p_984->g_98.f1 p_984->g_98.f3 p_984->g_91 p_984->g_110 p_984->g_688 p_984->g_713 p_984->g_87 p_984->g_725 p_984->g_76 p_984->g_955 p_984->g_981
 */
int16_t  func_1(struct S3 * p_984)
{ /* block id: 4 */
    VECTOR(uint32_t, 4) l_4 = (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 8UL), 8UL);
    uint64_t *l_5 = &p_984->g_6;
    union U1 *l_35 = &p_984->g_34;
    int32_t *l_36 = &p_984->g_37;
    int64_t *l_729 = (void*)0;
    int64_t *l_731[1];
    int32_t *l_732 = (void*)0;
    int32_t **l_782 = &l_36;
    int8_t **l_793[2][2][4] = {{{(void*)0,&p_984->g_733,(void*)0,(void*)0},{(void*)0,&p_984->g_733,(void*)0,(void*)0}},{{(void*)0,&p_984->g_733,(void*)0,(void*)0},{(void*)0,&p_984->g_733,(void*)0,(void*)0}}};
    int8_t *l_794 = &p_984->g_91;
    int64_t l_795 = 0L;
    union U1 ***l_949 = &p_984->g_280;
    int32_t l_969 = (-2L);
    int32_t l_979 = (-1L);
    int16_t l_980 = (-7L);
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_731[i] = (void*)0;
    (*l_782) = (((*l_5) = (safe_sub_func_uint8_t_u_u(FAKE_DIVERGE(p_984->local_1_offset, get_local_id(1), 10), l_4.y))) , func_7((FAKE_DIVERGE(p_984->local_1_offset, get_local_id(1), 10) | ((l_795 = (safe_rshift_func_int8_t_s_u(((l_794 = func_14((p_984->g_comm_values[p_984->tid] >= 0x04255EBDL), ((GROUP_DIVERGE(1, 1) | ((p_984->l_comm_values[(safe_mod_func_uint32_t_u_u(p_984->tid, 24))] , ((*l_782) = func_19((l_4.y || (p_984->g_6 , ((((*l_36) = ((safe_lshift_func_uint16_t_u_s(p_984->g_comm_values[p_984->tid], 14)) , (((!(safe_mul_func_uint8_t_u_u(func_28(l_4.x, ((*l_35) = p_984->g_34), l_36, &p_984->g_37, p_984->g_6, p_984), 0x56L))) ^ l_4.x) != 0x6F37L))) , (*l_36)) , 1L))), l_732, l_732, p_984->g_733, p_984))) == p_984->g_725)) , 0x32481365L), p_984->g_348.x, l_4.z, p_984)) != p_984->g_733), 3))) || (*p_984->g_712))), p_984->g_703, p_984->g_733, p_984->l_comm_values[(safe_mod_func_uint32_t_u_u(p_984->tid, 24))], p_984));
    if ((safe_unary_minus_func_int16_t_s(1L)))
    { /* block id: 336 */
        int32_t l_942 = 0x4849304DL;
        VECTOR(uint8_t, 8) l_945 = (VECTOR(uint8_t, 8))(0x21L, (VECTOR(uint8_t, 4))(0x21L, (VECTOR(uint8_t, 2))(0x21L, 253UL), 253UL), 253UL, 0x21L, 253UL);
        VECTOR(uint8_t, 4) l_946 = (VECTOR(uint8_t, 4))(0xBCL, (VECTOR(uint8_t, 2))(0xBCL, 6UL), 6UL);
        uint8_t *l_954 = (void*)0;
        uint8_t **l_953 = &l_954;
        uint8_t ***l_956[3];
        uint8_t **l_957 = &l_954;
        int32_t l_965 = 0x5DE5C50BL;
        int32_t l_966[3][4] = {{0x512E93B5L,(-9L),0x512E93B5L,0x512E93B5L},{0x512E93B5L,(-9L),0x512E93B5L,0x512E93B5L},{0x512E93B5L,(-9L),0x512E93B5L,0x512E93B5L}};
        int64_t l_967 = 0x084F7E90DF14ABCFL;
        int32_t *l_968[7][8] = {{(void*)0,(void*)0,&p_984->g_119,(void*)0,&p_984->g_106,&p_984->g_106,(void*)0,&p_984->g_119},{(void*)0,(void*)0,&p_984->g_119,(void*)0,&p_984->g_106,&p_984->g_106,(void*)0,&p_984->g_119},{(void*)0,(void*)0,&p_984->g_119,(void*)0,&p_984->g_106,&p_984->g_106,(void*)0,&p_984->g_119},{(void*)0,(void*)0,&p_984->g_119,(void*)0,&p_984->g_106,&p_984->g_106,(void*)0,&p_984->g_119},{(void*)0,(void*)0,&p_984->g_119,(void*)0,&p_984->g_106,&p_984->g_106,(void*)0,&p_984->g_119},{(void*)0,(void*)0,&p_984->g_119,(void*)0,&p_984->g_106,&p_984->g_106,(void*)0,&p_984->g_119},{(void*)0,(void*)0,&p_984->g_119,(void*)0,&p_984->g_106,&p_984->g_106,(void*)0,&p_984->g_119}};
        int i, j;
        for (i = 0; i < 3; i++)
            l_956[i] = &p_984->g_955;
        if ((atomic_inc(&p_984->g_atomic_input[51 * get_linear_group_id() + 44]) == 4))
        { /* block id: 338 */
            int32_t l_869 = 0x4292563FL;
            uint8_t l_916 = 0x01L;
            uint64_t l_917 = 0UL;
            int32_t l_918 = 0L;
            int32_t l_919 = (-2L);
            int8_t l_920 = 1L;
            VECTOR(int32_t, 2) l_921 = (VECTOR(int32_t, 2))((-3L), 0x6F45B933L);
            VECTOR(uint32_t, 4) l_938 = (VECTOR(uint32_t, 4))(4294967287UL, (VECTOR(uint32_t, 2))(4294967287UL, 4294967295UL), 4294967295UL);
            int16_t l_939 = 0x3F39L;
            int32_t l_940 = 0x1B41AA43L;
            uint16_t l_941 = 2UL;
            int i;
            if (l_869)
            { /* block id: 339 */
                int32_t l_870 = 0x704D5702L;
                uint8_t l_871 = 255UL;
                VECTOR(int32_t, 2) l_872 = (VECTOR(int32_t, 2))((-5L), 1L);
                VECTOR(int32_t, 8) l_873 = (VECTOR(int32_t, 8))(0x748338A7L, (VECTOR(int32_t, 4))(0x748338A7L, (VECTOR(int32_t, 2))(0x748338A7L, 0x288C773EL), 0x288C773EL), 0x288C773EL, 0x748338A7L, 0x288C773EL);
                VECTOR(int32_t, 2) l_874 = (VECTOR(int32_t, 2))((-6L), 0x07A62CAAL);
                int32_t l_875 = 1L;
                VECTOR(int32_t, 8) l_876 = (VECTOR(int32_t, 8))((-9L), (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 0x232FBB61L), 0x232FBB61L), 0x232FBB61L, (-9L), 0x232FBB61L);
                VECTOR(int32_t, 16) l_877 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0L), 0L), 0L, 1L, 0L, (VECTOR(int32_t, 2))(1L, 0L), (VECTOR(int32_t, 2))(1L, 0L), 1L, 0L, 1L, 0L);
                uint32_t l_878 = 0xD1D3028DL;
                uint8_t l_879 = 249UL;
                int32_t l_880 = 0x5AD4704BL;
                VECTOR(int32_t, 2) l_881 = (VECTOR(int32_t, 2))(1L, (-1L));
                VECTOR(int32_t, 16) l_882 = (VECTOR(int32_t, 16))(0x264E3DEBL, (VECTOR(int32_t, 4))(0x264E3DEBL, (VECTOR(int32_t, 2))(0x264E3DEBL, (-10L)), (-10L)), (-10L), 0x264E3DEBL, (-10L), (VECTOR(int32_t, 2))(0x264E3DEBL, (-10L)), (VECTOR(int32_t, 2))(0x264E3DEBL, (-10L)), 0x264E3DEBL, (-10L), 0x264E3DEBL, (-10L));
                uint8_t l_883 = 1UL;
                VECTOR(int32_t, 2) l_884 = (VECTOR(int32_t, 2))(2L, 0x052A1B98L);
                VECTOR(int32_t, 16) l_885 = (VECTOR(int32_t, 16))((-7L), (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), 0x293A1603L), 0x293A1603L), 0x293A1603L, (-7L), 0x293A1603L, (VECTOR(int32_t, 2))((-7L), 0x293A1603L), (VECTOR(int32_t, 2))((-7L), 0x293A1603L), (-7L), 0x293A1603L, (-7L), 0x293A1603L);
                VECTOR(int16_t, 8) l_886 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L);
                VECTOR(uint16_t, 8) l_887 = (VECTOR(uint16_t, 8))(2UL, (VECTOR(uint16_t, 4))(2UL, (VECTOR(uint16_t, 2))(2UL, 65532UL), 65532UL), 65532UL, 2UL, 65532UL);
                VECTOR(int32_t, 8) l_888 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x4FCDF048L), 0x4FCDF048L), 0x4FCDF048L, 0L, 0x4FCDF048L);
                int16_t l_889[8][8] = {{4L,(-1L),5L,0x5F75L,9L,0x5F75L,5L,(-1L)},{4L,(-1L),5L,0x5F75L,9L,0x5F75L,5L,(-1L)},{4L,(-1L),5L,0x5F75L,9L,0x5F75L,5L,(-1L)},{4L,(-1L),5L,0x5F75L,9L,0x5F75L,5L,(-1L)},{4L,(-1L),5L,0x5F75L,9L,0x5F75L,5L,(-1L)},{4L,(-1L),5L,0x5F75L,9L,0x5F75L,5L,(-1L)},{4L,(-1L),5L,0x5F75L,9L,0x5F75L,5L,(-1L)},{4L,(-1L),5L,0x5F75L,9L,0x5F75L,5L,(-1L)}};
                uint8_t l_890 = 0x0AL;
                uint8_t l_891[9][7] = {{1UL,0x96L,1UL,1UL,0xCBL,0xCBL,1UL},{1UL,0x96L,1UL,1UL,0xCBL,0xCBL,1UL},{1UL,0x96L,1UL,1UL,0xCBL,0xCBL,1UL},{1UL,0x96L,1UL,1UL,0xCBL,0xCBL,1UL},{1UL,0x96L,1UL,1UL,0xCBL,0xCBL,1UL},{1UL,0x96L,1UL,1UL,0xCBL,0xCBL,1UL},{1UL,0x96L,1UL,1UL,0xCBL,0xCBL,1UL},{1UL,0x96L,1UL,1UL,0xCBL,0xCBL,1UL},{1UL,0x96L,1UL,1UL,0xCBL,0xCBL,1UL}};
                VECTOR(int32_t, 8) l_892 = (VECTOR(int32_t, 8))((-9L), (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 0x1777FC56L), 0x1777FC56L), 0x1777FC56L, (-9L), 0x1777FC56L);
                VECTOR(int32_t, 4) l_893 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0L), 0L);
                int32_t l_894[2][4] = {{0x1C6E3312L,0x1C6E3312L,0x1C6E3312L,0x1C6E3312L},{0x1C6E3312L,0x1C6E3312L,0x1C6E3312L,0x1C6E3312L}};
                int8_t l_895[1];
                int32_t *l_896 = &l_875;
                int32_t *l_897 = &l_875;
                int i, j;
                for (i = 0; i < 1; i++)
                    l_895[i] = 0x0CL;
                l_871 = l_870;
                l_897 = (l_896 = ((l_895[0] = ((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))(l_872.yx)), ((VECTOR(int32_t, 4))(l_873.s1530)).odd, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 8))(l_874.xyyxyyyx)).s73, ((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 2))((-9L), (-1L))).yyyyxxxyxxyxyxyy, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(8L, l_875, 0x42BAD09EL, ((VECTOR(int32_t, 2))(l_876.s42)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(l_877.s054105c9)))).hi)).lo)), (l_879 = (l_869 &= l_878)), 0x068D9736L, 2L, l_880, 0x4A0FACEBL, 0x73FFA678L, (l_869 |= 0x31DD1C27L), 0x177B0077L, 1L))))))).sf1))), 0L, 0x6E303C3CL)).hi, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(0x585F538FL, 0x7E00AC3BL, (l_869 = ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))((-3L), 0x079F4988L)))).lo), ((VECTOR(int32_t, 2))(l_881.xy)), ((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 16))(l_882.s097a052843e008b5)), ((VECTOR(int32_t, 2))(0x1F3625DDL, 0x2FFA8003L)).yxxxxxyyxyyyxxxy))).hi)).hi)).xxzxwwzx, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(clz(((VECTOR(int32_t, 8))(0x3D6707F4L, ((VECTOR(int32_t, 2))(0x1D264356L, 0x6298EACBL)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 8))((l_883 , ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(l_884.yxyx)).wwwxwwzxxwxwzwyz)).sf), ((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(l_885.s5a88)))), ((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(l_886.s3240)))).hi, ((VECTOR(uint16_t, 4))(l_887.s3175)).odd))).yxxy))), ((VECTOR(int32_t, 2))(l_888.s20)), (-1L))).s2551652105430674, (int32_t)(l_891[2][0] = ((l_869 |= l_889[7][2]) , l_890))))), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 16))(l_892.s1160710043562054)), ((VECTOR(int32_t, 8))(l_893.xwyywxwz)).s6365322744310277))).s83)).yxyxxyyxxyyyxxyx))).s0c)), 1L, 0L, 0L)).s7456564540734232))).lo))))).lo, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))((-4L), ((l_894[0][2] &= (-1L)) , 0x2B96448CL), 0x2347EC94L, 0x552D35CEL)).wxzyyzyz)).even))), ((VECTOR(int32_t, 2))(0L)), 1L, ((VECTOR(int32_t, 4))((-1L))))).even)).s44))).xxxyxyyy, ((VECTOR(int32_t, 8))(0x38383731L))))).s32))))).hi) , (void*)0));
            }
            else
            { /* block id: 351 */
                int32_t l_898 = 5L;
                union U0 *l_907 = (void*)0;
                uint64_t l_908 = 0xED5BA8AA489FC0C0L;
                int16_t l_909[4];
                int16_t l_910 = 0x37FAL;
                uint8_t l_911 = 255UL;
                int64_t l_912 = 0x28D46F45AB9E06FCL;
                int16_t l_913 = 0x1CBAL;
                union U1 l_915 = {0xEBF596DDL};
                union U1 *l_914 = &l_915;
                int i;
                for (i = 0; i < 4; i++)
                    l_909[i] = 5L;
                for (l_898 = 0; (l_898 <= (-4)); l_898 = safe_sub_func_int16_t_s_s(l_898, 6))
                { /* block id: 354 */
                    int64_t l_901 = 0x1FAE62BCE7C2AF27L;
                    uint32_t l_902[1];
                    int8_t l_905 = 0x4FL;
                    int16_t l_906 = 0x68DEL;
                    int i;
                    for (i = 0; i < 1; i++)
                        l_902[i] = 4294967295UL;
                    l_902[0]++;
                    l_906 ^= l_905;
                }
                l_907 = (void*)0;
                l_911 = (l_908 , (l_909[1] , l_910));
                l_914 = ((l_913 = l_912) , l_914);
            }
            l_917 = l_916;
            if (((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))((-10L), 2L)), (l_919 = l_918), l_920, (-3L), 0x7266C117L, ((VECTOR(int32_t, 4))(l_921.xxxy)), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))((-6L), 0x72A1CE03L)))).xxxyyyyyyyxxyyyy)).s4, 1L, 1L, 0x1FB41058L, 0x67B7E666L, 0x3ECB1D90L)).s70c7)).y)
            { /* block id: 365 */
                uint32_t l_922[5][9] = {{0x52919222L,0x52919222L,0xC7C8EAC9L,0x63949326L,0x78D9A2EAL,0x63949326L,0xC7C8EAC9L,0x52919222L,0x52919222L},{0x52919222L,0x52919222L,0xC7C8EAC9L,0x63949326L,0x78D9A2EAL,0x63949326L,0xC7C8EAC9L,0x52919222L,0x52919222L},{0x52919222L,0x52919222L,0xC7C8EAC9L,0x63949326L,0x78D9A2EAL,0x63949326L,0xC7C8EAC9L,0x52919222L,0x52919222L},{0x52919222L,0x52919222L,0xC7C8EAC9L,0x63949326L,0x78D9A2EAL,0x63949326L,0xC7C8EAC9L,0x52919222L,0x52919222L},{0x52919222L,0x52919222L,0xC7C8EAC9L,0x63949326L,0x78D9A2EAL,0x63949326L,0xC7C8EAC9L,0x52919222L,0x52919222L}};
                uint8_t l_925 = 0xEDL;
                int i, j;
                l_918 |= ((--l_922[1][0]) , l_925);
                for (l_925 = 19; (l_925 > 2); l_925--)
                { /* block id: 370 */
                    int32_t l_928 = 0x38F03B8BL;
                    VECTOR(int16_t, 4) l_929 = (VECTOR(int16_t, 4))(0x496DL, (VECTOR(int16_t, 2))(0x496DL, (-5L)), (-5L));
                    uint16_t l_930 = 0xBFF5L;
                    uint32_t l_931 = 1UL;
                    VECTOR(int32_t, 8) l_934 = (VECTOR(int32_t, 8))((-2L), (VECTOR(int32_t, 4))((-2L), (VECTOR(int32_t, 2))((-2L), 0x5826A6CEL), 0x5826A6CEL), 0x5826A6CEL, (-2L), 0x5826A6CEL);
                    int i;
                    l_921.y &= (l_928 , (((VECTOR(int16_t, 2))(l_929.zx)).even , l_930));
                    --l_931;
                    l_921.y |= ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(l_934.s5644)).odd)), (-1L), 0x7D09E75FL)).x;
                }
            }
            else
            { /* block id: 375 */
                uint32_t l_935[2][1];
                int i, j;
                for (i = 0; i < 2; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_935[i][j] = 0UL;
                }
                l_935[1][0]++;
            }
            l_941 = (((VECTOR(uint32_t, 8))(mul_hi(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(clz(((VECTOR(uint32_t, 4))(0x384E0E19L, 0xF21756A3L, 1UL, 0xD217AD02L)).odd))).yxxyxxyx)), ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(l_938.wxyz)).odd)).yxyxxxyx))).s4 , (l_940 = l_939));
            unsigned int result = 0;
            result += l_869;
            result += l_916;
            result += l_917;
            result += l_918;
            result += l_919;
            result += l_920;
            result += l_921.y;
            result += l_921.x;
            result += l_938.w;
            result += l_938.z;
            result += l_938.y;
            result += l_938.x;
            result += l_939;
            result += l_940;
            result += l_941;
            atomic_add(&p_984->g_special_values[51 * get_linear_group_id() + 44], result);
        }
        else
        { /* block id: 380 */
            (1 + 1);
        }
        l_969 = (248UL ^ (l_942 <= (l_942 & (safe_div_func_int16_t_s_s((((VECTOR(uint8_t, 16))(mad_hi(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(l_945.s72)), 0x49L, 255UL)).yxwyxxxwzxzyxxzw, ((VECTOR(uint8_t, 2))(0x45L, 1UL)).yxxxyxyyyxxyyyxx, ((VECTOR(uint8_t, 2))(l_946.wy)).xxyyxyyxyxyyxxyy))).s6 >= (safe_div_func_int8_t_s_s((((((void*)0 != l_949) && (l_946.w , (safe_unary_minus_func_int8_t_s((((((((((*l_5) = ((safe_add_func_int32_t_s_s((l_953 != (l_957 = (p_984->g_955 = p_984->g_955))), ((((safe_lshift_func_uint8_t_u_s((safe_lshift_func_uint8_t_u_u((((safe_rshift_func_uint8_t_u_u((l_965 |= ((((VECTOR(int64_t, 16))(p_984->g_964.wxwyyyxyzxwzzywx)).s1 < l_945.s4) , (*p_984->g_712))), 3)) != l_946.y) != p_984->g_235.s0), 6)), 3)) , FAKE_DIVERGE(p_984->global_2_offset, get_global_id(2), 10)) >= p_984->g_701.s3) && 0L))) > p_984->g_235.s1)) >= p_984->g_110.sd) != l_966[0][2]) > 0x34L) != 0x40L) & 255UL) || p_984->g_355.s2) && l_967))))) , 1L) != 0L), p_984->g_432))), l_966[2][3])))));
    }
    else
    { /* block id: 388 */
        int32_t *l_970 = (void*)0;
        int32_t *l_971 = &p_984->g_106;
        int32_t *l_972 = &p_984->g_37;
        int32_t *l_973 = &p_984->g_37;
        int32_t *l_974 = &l_969;
        int32_t *l_975 = (void*)0;
        int32_t *l_976 = &p_984->g_106;
        int32_t *l_977 = (void*)0;
        int32_t *l_978[8] = {&p_984->g_37,&p_984->g_37,&p_984->g_37,&p_984->g_37,&p_984->g_37,&p_984->g_37,&p_984->g_37,&p_984->g_37};
        int i;
        p_984->g_981++;
    }
    return p_984->g_636.y;
}


/* ------------------------------------------ */
/* 
 * reads : p_984->g_797 p_984->g_727 p_984->g_87 p_984->g_712 p_984->g_432 p_984->g_76 p_984->g_746 p_984->g_106 p_984->g_104 p_984->g_866
 * writes: p_984->g_104 p_984->g_34.f1 p_984->g_76 p_984->g_6 p_984->g_87 p_984->g_106 p_984->g_119 p_984->g_725
 */
int32_t * func_7(int64_t  p_8, union U0  p_9, int8_t * p_10, uint32_t  p_11, struct S3 * p_984)
{ /* block id: 307 */
    int8_t **l_796 = &p_984->g_733;
    uint64_t *l_798 = (void*)0;
    int32_t *l_799[1][2][5] = {{{&p_984->g_106,(void*)0,&p_984->g_106,&p_984->g_106,(void*)0},{&p_984->g_106,(void*)0,&p_984->g_106,&p_984->g_106,(void*)0}}};
    VECTOR(uint64_t, 8) l_814 = (VECTOR(uint64_t, 8))(0xD9C9893CDE52C94CL, (VECTOR(uint64_t, 4))(0xD9C9893CDE52C94CL, (VECTOR(uint64_t, 2))(0xD9C9893CDE52C94CL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0xD9C9893CDE52C94CL, 18446744073709551615UL);
    uint16_t **l_830[7] = {&p_984->g_223[1][1][5],(void*)0,&p_984->g_223[1][1][5],&p_984->g_223[1][1][5],(void*)0,&p_984->g_223[1][1][5],&p_984->g_223[1][1][5]};
    int32_t *l_842[9] = {&p_984->g_106,&p_984->g_106,&p_984->g_106,&p_984->g_106,&p_984->g_106,&p_984->g_106,&p_984->g_106,&p_984->g_106,&p_984->g_106};
    VECTOR(uint32_t, 8) l_853 = (VECTOR(uint32_t, 8))(8UL, (VECTOR(uint32_t, 4))(8UL, (VECTOR(uint32_t, 2))(8UL, 0xBF69A51BL), 0xBF69A51BL), 0xBF69A51BL, 8UL, 0xBF69A51BL);
    int i, j, k;
    (*p_984->g_727) = (((0UL > ((void*)0 == l_796)) , p_984->g_797[0][1]) , l_799[0][0][4]);
    for (p_11 = 0; (p_11 == 59); p_11++)
    { /* block id: 311 */
        union U2 **l_806[7][2][9] = {{{&p_984->g_102,&p_984->g_102,&p_984->g_102,&p_984->g_97,&p_984->g_97,&p_984->g_102,&p_984->g_97,(void*)0,&p_984->g_102},{&p_984->g_102,&p_984->g_102,&p_984->g_102,&p_984->g_97,&p_984->g_97,&p_984->g_102,&p_984->g_97,(void*)0,&p_984->g_102}},{{&p_984->g_102,&p_984->g_102,&p_984->g_102,&p_984->g_97,&p_984->g_97,&p_984->g_102,&p_984->g_97,(void*)0,&p_984->g_102},{&p_984->g_102,&p_984->g_102,&p_984->g_102,&p_984->g_97,&p_984->g_97,&p_984->g_102,&p_984->g_97,(void*)0,&p_984->g_102}},{{&p_984->g_102,&p_984->g_102,&p_984->g_102,&p_984->g_97,&p_984->g_97,&p_984->g_102,&p_984->g_97,(void*)0,&p_984->g_102},{&p_984->g_102,&p_984->g_102,&p_984->g_102,&p_984->g_97,&p_984->g_97,&p_984->g_102,&p_984->g_97,(void*)0,&p_984->g_102}},{{&p_984->g_102,&p_984->g_102,&p_984->g_102,&p_984->g_97,&p_984->g_97,&p_984->g_102,&p_984->g_97,(void*)0,&p_984->g_102},{&p_984->g_102,&p_984->g_102,&p_984->g_102,&p_984->g_97,&p_984->g_97,&p_984->g_102,&p_984->g_97,(void*)0,&p_984->g_102}},{{&p_984->g_102,&p_984->g_102,&p_984->g_102,&p_984->g_97,&p_984->g_97,&p_984->g_102,&p_984->g_97,(void*)0,&p_984->g_102},{&p_984->g_102,&p_984->g_102,&p_984->g_102,&p_984->g_97,&p_984->g_97,&p_984->g_102,&p_984->g_97,(void*)0,&p_984->g_102}},{{&p_984->g_102,&p_984->g_102,&p_984->g_102,&p_984->g_97,&p_984->g_97,&p_984->g_102,&p_984->g_97,(void*)0,&p_984->g_102},{&p_984->g_102,&p_984->g_102,&p_984->g_102,&p_984->g_97,&p_984->g_97,&p_984->g_102,&p_984->g_97,(void*)0,&p_984->g_102}},{{&p_984->g_102,&p_984->g_102,&p_984->g_102,&p_984->g_97,&p_984->g_97,&p_984->g_102,&p_984->g_97,(void*)0,&p_984->g_102},{&p_984->g_102,&p_984->g_102,&p_984->g_102,&p_984->g_97,&p_984->g_97,&p_984->g_102,&p_984->g_97,(void*)0,&p_984->g_102}}};
        int32_t l_807 = (-1L);
        int32_t l_812 = 0x22F3D9E5L;
        union U1 l_813[10] = {{4294967286UL},{4294967286UL},{4294967286UL},{4294967286UL},{4294967286UL},{4294967286UL},{4294967286UL},{4294967286UL},{4294967286UL},{4294967286UL}};
        int64_t *l_817 = (void*)0;
        int64_t *l_818 = &p_984->g_34.f1;
        uint64_t *l_821 = (void*)0;
        uint64_t *l_822 = (void*)0;
        uint64_t *l_823 = (void*)0;
        uint64_t *l_824[5];
        uint8_t *l_826 = &p_984->g_827;
        uint32_t l_837[1];
        int32_t l_838 = 0x436D5E74L;
        int16_t l_839 = (-1L);
        int32_t **l_867 = &l_799[0][0][3];
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_824[i] = &p_984->g_6;
        for (i = 0; i < 1; i++)
            l_837[i] = 4294967292UL;
        l_807 = (((safe_mod_func_int8_t_s_s(((void*)0 != l_806[1][0][5]), (p_8 | p_984->g_87))) | (l_807 <= ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(0x16L, 0x1BL, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 16))(((l_812 |= (safe_mul_func_uint8_t_u_u((((safe_lshift_func_int16_t_s_s((p_9.f0 , 0L), l_807)) || p_9.f0) <= l_807), p_984->g_91))) == p_9.f0), 0L, (-1L), ((VECTOR(int8_t, 2))((-1L))), l_812, ((VECTOR(int8_t, 8))(0x27L)), 9L, 0x42L)).s94e1, ((VECTOR(int8_t, 4))(0x06L)), ((VECTOR(int8_t, 4))(1L))))).lo)).odd, ((VECTOR(int8_t, 2))(0x54L)), ((VECTOR(int8_t, 2))((-1L))), 6L, 1L, 0x59L, ((VECTOR(int8_t, 2))(0x2FL)), 0L, 4L, 0x31L, 0x10L)).s41b2)).x)) , 0x41B09A17L);
        if ((l_813[3] , ((((VECTOR(uint64_t, 8))(l_814.s40000776)).s4 == ((safe_lshift_func_uint16_t_u_s((((*l_818) = p_8) <= (p_984->g_76.s1 = (safe_rshift_func_uint8_t_u_u((*p_984->g_712), 6)))), 10)) & ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((safe_unary_minus_func_uint8_t_u(((*l_826) = GROUP_DIVERGE(1, 1)))) & ((p_11 > ((safe_sub_func_int32_t_s_s((p_9.f0 && (((l_830[6] == (void*)0) && ((safe_mod_func_uint8_t_u_u((safe_mod_func_int8_t_s_s((((p_9.f0 & (safe_mod_func_int32_t_s_s((p_8 | 1L), l_812))) , p_11) < l_837[0]), p_9.f0)), 0xE5L)) || (-4L))) ^ p_9.f0)), l_838)) || l_839)) >= p_984->g_348.x)), 7L, 0x465CF672L, ((VECTOR(int32_t, 2))(0L)), 1L, 0x0416A0E5L, 5L)).hi)).y)) , p_9.f0)))
        { /* block id: 317 */
            union U0 l_840 = {0xDEA14E9AA6437F1AL};
            int32_t *l_841 = (void*)0;
            int32_t **l_843 = &l_842[1];
            int16_t *l_858 = &p_984->g_98.f2;
            uint64_t l_859 = 9UL;
            (*l_843) = func_19((l_840 , (*p_984->g_712)), l_841, ((*l_843) = l_842[8]), l_826, p_984);
            l_859 = (((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(p_984->g_844.s476c)).hi)), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(3L, (safe_mul_func_int8_t_s_s((p_984->g_388.f0 , (((*p_984->g_713) = (l_838 <= GROUP_DIVERGE(2, 1))) == p_9.f0)), l_812)), (0x10D1L != ((((safe_lshift_func_uint16_t_u_s(0x48A4L, (safe_mod_func_uint32_t_u_u((safe_div_func_uint32_t_u_u(GROUP_DIVERGE(2, 1), ((VECTOR(uint32_t, 2))(min(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(l_853.s2750324660520111)).odd)).s63, (uint32_t)((++p_984->g_6) ^ (((safe_div_func_uint8_t_u_u(((((*l_858) = ((0x87L | l_837[0]) ^ p_984->g_355.s3)) & l_812) == p_8), 7UL)) & p_11) < l_839))))).lo)), 4294967294UL)))) >= 0x82CFEA8DL) , (*p_984->g_359)) == 0x02859FACC77ED866L)), 1L, ((VECTOR(int32_t, 2))(0x7F239846L)), 0x22641C10L, 0x51113954L)))), 0x356F63E3L, (*p_984->g_208), 4L, ((VECTOR(int32_t, 2))(3L)), 0x075A050CL, 0x4F5EADE2L, 0L)).sabbc)), ((VECTOR(int32_t, 4))(0x1CC44D0FL)))).s71, ((VECTOR(int32_t, 2))(0x4271C070L))))).even == p_9.f0);
        }
        else
        { /* block id: 324 */
            l_812 = (safe_rshift_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), 5));
            for (p_984->g_119 = 3; (p_984->g_119 != (-23)); p_984->g_119 = safe_sub_func_int8_t_s_s(p_984->g_119, 5))
            { /* block id: 328 */
                int32_t **l_865 = (void*)0;
                (*p_984->g_866) = (*p_984->g_727);
            }
        }
        (*l_867) = &l_812;
    }
    return l_842[8];
}


/* ------------------------------------------ */
/* 
 * reads : p_984->g_432 p_984->g_97 p_984->g_98 p_984->g_746 p_984->g_747 p_984->g_102 p_984->g_37
 * writes: p_984->g_725 p_984->g_432 p_984->g_37
 */
int8_t * func_14(int8_t  p_15, uint32_t  p_16, int8_t  p_17, uint32_t  p_18, struct S3 * p_984)
{ /* block id: 294 */
    int32_t **l_783 = &p_984->g_725;
    int64_t **l_787 = &p_984->g_374;
    int32_t l_790 = 5L;
    int32_t *l_791 = &p_984->g_37;
    int8_t *l_792 = &p_984->g_91;
    (*l_783) = (void*)0;
    for (p_984->g_432 = 0; (p_984->g_432 == 48); p_984->g_432 = safe_add_func_uint8_t_u_u(p_984->g_432, 1))
    { /* block id: 298 */
        int64_t ***l_786 = (void*)0;
        int32_t *l_789[1];
        int i;
        for (i = 0; i < 1; i++)
            l_789[i] = (void*)0;
        l_790 = ((l_787 = (void*)0) == &p_984->g_359);
        return &p_984->g_91;
    }
    (*l_791) &= ((((*p_984->g_97) , (**p_984->g_746)) == (void*)0) <= 0UL);
    return l_792;
}


/* ------------------------------------------ */
/* 
 * reads : p_984->g_76 p_984->g_746 p_984->g_87 p_984->g_110 p_984->g_390 p_984->g_427 p_984->g_393 p_984->g_106 p_984->g_727 p_984->g_104
 * writes: p_984->g_6 p_984->g_87 p_984->g_91 p_984->g_106
 */
int32_t * func_19(uint8_t  p_20, int32_t * p_21, int32_t * p_22, int8_t * p_23, struct S3 * p_984)
{ /* block id: 285 */
    uint32_t **l_736 = (void*)0;
    int32_t l_741 = 0x5A8137D5L;
    uint64_t l_744 = 1UL;
    uint64_t *l_745 = &p_984->g_6;
    uint64_t *l_748 = &p_984->g_87;
    VECTOR(int32_t, 16) l_749 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x7B7E3387L), 0x7B7E3387L), 0x7B7E3387L, (-1L), 0x7B7E3387L, (VECTOR(int32_t, 2))((-1L), 0x7B7E3387L), (VECTOR(int32_t, 2))((-1L), 0x7B7E3387L), (-1L), 0x7B7E3387L, (-1L), 0x7B7E3387L);
    int16_t *l_758 = &p_984->g_427;
    int8_t l_761 = 0x56L;
    int8_t *l_770 = (void*)0;
    int8_t *l_771 = &p_984->g_91;
    int32_t *l_772 = &p_984->g_106;
    int32_t *l_773 = (void*)0;
    int32_t *l_774[7] = {&p_984->g_106,(void*)0,&p_984->g_106,&p_984->g_106,(void*)0,&p_984->g_106,&p_984->g_106};
    int8_t l_775[10][1][10] = {{{0x3CL,0x3EL,0x47L,5L,0x62L,1L,2L,(-1L),0x0FL,0L}},{{0x3CL,0x3EL,0x47L,5L,0x62L,1L,2L,(-1L),0x0FL,0L}},{{0x3CL,0x3EL,0x47L,5L,0x62L,1L,2L,(-1L),0x0FL,0L}},{{0x3CL,0x3EL,0x47L,5L,0x62L,1L,2L,(-1L),0x0FL,0L}},{{0x3CL,0x3EL,0x47L,5L,0x62L,1L,2L,(-1L),0x0FL,0L}},{{0x3CL,0x3EL,0x47L,5L,0x62L,1L,2L,(-1L),0x0FL,0L}},{{0x3CL,0x3EL,0x47L,5L,0x62L,1L,2L,(-1L),0x0FL,0L}},{{0x3CL,0x3EL,0x47L,5L,0x62L,1L,2L,(-1L),0x0FL,0L}},{{0x3CL,0x3EL,0x47L,5L,0x62L,1L,2L,(-1L),0x0FL,0L}},{{0x3CL,0x3EL,0x47L,5L,0x62L,1L,2L,(-1L),0x0FL,0L}}};
    int16_t l_776 = 7L;
    int32_t l_777 = 0L;
    int8_t l_778 = (-1L);
    uint32_t l_779[5] = {0xCAA885BEL,0xCAA885BEL,0xCAA885BEL,0xCAA885BEL,0xCAA885BEL};
    int i, j, k;
    l_749.sd &= (safe_rshift_func_int16_t_s_u((0x7449L && ((l_736 == (void*)0) || (((safe_rshift_func_int8_t_s_u(p_20, 4)) , ((*l_748) |= (1UL || (((l_741 != (safe_add_func_uint64_t_u_u(p_984->g_76.s9, ((((*l_745) = (l_741 , (l_744 <= 1L))) ^ 0x42FCF4D34765B4C2L) ^ 0x6ACABDFAEC9B3457L)))) , p_984->g_746) != &p_984->g_747)))) > 0x2A33A058BFD12B3BL))), l_741));
    (*l_772) &= ((safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 8))((-10L), ((l_744 ^ ((p_20 <= ((safe_div_func_uint16_t_u_u((((safe_sub_func_int8_t_s_s(((*l_771) = (((l_758 != &p_984->g_427) & 0UL) , (((l_744 == (safe_rshift_func_int8_t_s_s(((+l_761) >= (((safe_div_func_int64_t_s_s((safe_rshift_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_u((safe_sub_func_uint64_t_u_u(0xFE936E993271FFE0L, l_761)), 6)), p_20)), p_984->g_110.s5)) , p_20) < l_761)), 7))) == p_984->g_390.s5) < p_984->g_427))), p_20)) && l_749.sc) > 4UL), p_20)) , p_984->g_393.y)) > 0x18DF1FC44448E493L)) & (-1L)), 1L, 0x016AL, ((VECTOR(int16_t, 4))(9L)))).s5, 65527UL)) < l_749.s2);
    l_779[2]++;
    return (*p_984->g_727);
}


/* ------------------------------------------ */
/* 
 * reads : p_984->g_comm_values p_984->g_94 p_984->g_76 p_984->g_97 p_984->g_34.f0 p_984->g_98.f0 p_984->g_104 p_984->g_106 p_984->g_119 p_984->g_115 p_984->g_91 p_984->g_37 p_984->g_75 p_984->g_208 p_984->g_359 p_984->g_360 p_984->g_348 p_984->g_432 p_984->g_316 p_984->g_486 p_984->g_498 p_984->g_503 p_984->g_280 p_984->g_545 p_984->g_427 p_984->g_275 p_984->g_34 p_984->g_599 p_984->g_374 p_984->g_431 p_984->g_525 p_984->g_110 p_984->g_703 p_984->g_680 p_984->g_703.f0 p_984->g_102 p_984->g_701 p_984->g_725 p_984->g_711 p_984->g_350 p_984->g_712 p_984->g_727
 * writes: p_984->g_6 p_984->g_75 p_984->g_37 p_984->g_97 p_984->g_102 p_984->g_104 p_984->g_106 p_984->g_115.f1 p_984->g_94 p_984->g_119 p_984->g_427 p_984->g_432 p_984->g_280 p_984->g_224 p_984->g_498 p_984->g_274 p_984->g_599 p_984->g_98.f1 p_984->g_98.f3 p_984->g_91 p_984->g_110 p_984->g_688 p_984->g_713
 */
uint8_t  func_28(int32_t  p_29, union U1  p_30, int32_t * p_31, int32_t * p_32, int64_t  p_33, struct S3 * p_984)
{ /* block id: 7 */
    uint64_t *l_42 = (void*)0;
    int32_t l_728[2][3][10] = {{{5L,0x648FC8FBL,0x6DCED255L,1L,0x1FE1493DL,5L,1L,0x1E0C5727L,1L,5L},{5L,0x648FC8FBL,0x6DCED255L,1L,0x1FE1493DL,5L,1L,0x1E0C5727L,1L,5L},{5L,0x648FC8FBL,0x6DCED255L,1L,0x1FE1493DL,5L,1L,0x1E0C5727L,1L,5L}},{{5L,0x648FC8FBL,0x6DCED255L,1L,0x1FE1493DL,5L,1L,0x1E0C5727L,1L,5L},{5L,0x648FC8FBL,0x6DCED255L,1L,0x1FE1493DL,5L,1L,0x1E0C5727L,1L,5L},{5L,0x648FC8FBL,0x6DCED255L,1L,0x1FE1493DL,5L,1L,0x1E0C5727L,1L,5L}}};
    int i, j, k;
    for (p_33 = 8; (p_33 == (-12)); p_33 = safe_sub_func_int8_t_s_s(p_33, 6))
    { /* block id: 10 */
        int32_t **l_726 = &p_984->g_104;
        (1 + 1);
    }
    (*p_984->g_727) = func_40(&p_984->g_87, p_984);
    return l_728[1][2][3];
}


/* ------------------------------------------ */
/* 
 * reads : p_984->g_comm_values p_984->g_6 p_984->g_75 p_984->g_76 p_984->g_37 p_984->g_87 p_984->l_comm_values p_984->g_94 p_984->g_97 p_984->g_34.f0 p_984->g_98.f0 p_984->g_104 p_984->g_106 p_984->g_110 p_984->g_119 p_984->g_115 p_984->g_91 p_984->g_208 p_984->g_359 p_984->g_360 p_984->g_431 p_984->g_348 p_984->g_432 p_984->g_224 p_984->g_279 p_984->g_275 p_984->g_393 p_984->g_316 p_984->g_486 p_984->g_498 p_984->g_503 p_984->g_511 p_984->g_525 p_984->g_390 p_984->g_280 p_984->g_545 p_984->g_427 p_984->g_34 p_984->g_355 p_984->g_350 p_984->g_599 p_984->g_374 p_984->g_636 p_984->g_98.f3 p_984->g_703 p_984->g_680 p_984->g_703.f0 p_984->g_701 p_984->g_711 p_984->g_712 p_984->g_102 p_984->g_716 p_984->g_725
 * writes: p_984->g_6 p_984->g_34 p_984->g_87 p_984->g_75 p_984->g_37 p_984->g_97 p_984->g_102 p_984->g_104 p_984->g_106 p_984->g_115.f1 p_984->g_94 p_984->g_119 p_984->g_427 p_984->g_432 p_984->g_280 p_984->g_224 p_984->g_498 p_984->g_274 p_984->g_98.f3 p_984->g_599 p_984->g_98.f1 p_984->g_91 p_984->g_110 p_984->g_713 p_984->g_688
 */
int32_t * func_40(uint64_t * p_41, struct S3 * p_984)
{ /* block id: 11 */
    uint32_t l_60 = 4294967293UL;
    union U2 **l_551 = &p_984->g_97;
    union U2 **l_552 = &p_984->g_97;
    int32_t l_554[10][2][10] = {{{4L,0x2D8BEFCBL,4L,0x77C82862L,0L,4L,0x35D1E11CL,(-1L),0x3B3CCAB6L,0x29FEDFEBL},{4L,0x2D8BEFCBL,4L,0x77C82862L,0L,4L,0x35D1E11CL,(-1L),0x3B3CCAB6L,0x29FEDFEBL}},{{4L,0x2D8BEFCBL,4L,0x77C82862L,0L,4L,0x35D1E11CL,(-1L),0x3B3CCAB6L,0x29FEDFEBL},{4L,0x2D8BEFCBL,4L,0x77C82862L,0L,4L,0x35D1E11CL,(-1L),0x3B3CCAB6L,0x29FEDFEBL}},{{4L,0x2D8BEFCBL,4L,0x77C82862L,0L,4L,0x35D1E11CL,(-1L),0x3B3CCAB6L,0x29FEDFEBL},{4L,0x2D8BEFCBL,4L,0x77C82862L,0L,4L,0x35D1E11CL,(-1L),0x3B3CCAB6L,0x29FEDFEBL}},{{4L,0x2D8BEFCBL,4L,0x77C82862L,0L,4L,0x35D1E11CL,(-1L),0x3B3CCAB6L,0x29FEDFEBL},{4L,0x2D8BEFCBL,4L,0x77C82862L,0L,4L,0x35D1E11CL,(-1L),0x3B3CCAB6L,0x29FEDFEBL}},{{4L,0x2D8BEFCBL,4L,0x77C82862L,0L,4L,0x35D1E11CL,(-1L),0x3B3CCAB6L,0x29FEDFEBL},{4L,0x2D8BEFCBL,4L,0x77C82862L,0L,4L,0x35D1E11CL,(-1L),0x3B3CCAB6L,0x29FEDFEBL}},{{4L,0x2D8BEFCBL,4L,0x77C82862L,0L,4L,0x35D1E11CL,(-1L),0x3B3CCAB6L,0x29FEDFEBL},{4L,0x2D8BEFCBL,4L,0x77C82862L,0L,4L,0x35D1E11CL,(-1L),0x3B3CCAB6L,0x29FEDFEBL}},{{4L,0x2D8BEFCBL,4L,0x77C82862L,0L,4L,0x35D1E11CL,(-1L),0x3B3CCAB6L,0x29FEDFEBL},{4L,0x2D8BEFCBL,4L,0x77C82862L,0L,4L,0x35D1E11CL,(-1L),0x3B3CCAB6L,0x29FEDFEBL}},{{4L,0x2D8BEFCBL,4L,0x77C82862L,0L,4L,0x35D1E11CL,(-1L),0x3B3CCAB6L,0x29FEDFEBL},{4L,0x2D8BEFCBL,4L,0x77C82862L,0L,4L,0x35D1E11CL,(-1L),0x3B3CCAB6L,0x29FEDFEBL}},{{4L,0x2D8BEFCBL,4L,0x77C82862L,0L,4L,0x35D1E11CL,(-1L),0x3B3CCAB6L,0x29FEDFEBL},{4L,0x2D8BEFCBL,4L,0x77C82862L,0L,4L,0x35D1E11CL,(-1L),0x3B3CCAB6L,0x29FEDFEBL}},{{4L,0x2D8BEFCBL,4L,0x77C82862L,0L,4L,0x35D1E11CL,(-1L),0x3B3CCAB6L,0x29FEDFEBL},{4L,0x2D8BEFCBL,4L,0x77C82862L,0L,4L,0x35D1E11CL,(-1L),0x3B3CCAB6L,0x29FEDFEBL}}};
    int8_t *l_570 = &p_984->g_91;
    int8_t **l_569 = &l_570;
    int64_t **l_573 = &p_984->g_374;
    int64_t **l_574 = &p_984->g_374;
    uint32_t *l_578 = &p_984->g_94;
    uint32_t **l_577[6][4][6] = {{{&l_578,&l_578,&l_578,&l_578,&l_578,&l_578},{&l_578,&l_578,&l_578,&l_578,&l_578,&l_578},{&l_578,&l_578,&l_578,&l_578,&l_578,&l_578},{&l_578,&l_578,&l_578,&l_578,&l_578,&l_578}},{{&l_578,&l_578,&l_578,&l_578,&l_578,&l_578},{&l_578,&l_578,&l_578,&l_578,&l_578,&l_578},{&l_578,&l_578,&l_578,&l_578,&l_578,&l_578},{&l_578,&l_578,&l_578,&l_578,&l_578,&l_578}},{{&l_578,&l_578,&l_578,&l_578,&l_578,&l_578},{&l_578,&l_578,&l_578,&l_578,&l_578,&l_578},{&l_578,&l_578,&l_578,&l_578,&l_578,&l_578},{&l_578,&l_578,&l_578,&l_578,&l_578,&l_578}},{{&l_578,&l_578,&l_578,&l_578,&l_578,&l_578},{&l_578,&l_578,&l_578,&l_578,&l_578,&l_578},{&l_578,&l_578,&l_578,&l_578,&l_578,&l_578},{&l_578,&l_578,&l_578,&l_578,&l_578,&l_578}},{{&l_578,&l_578,&l_578,&l_578,&l_578,&l_578},{&l_578,&l_578,&l_578,&l_578,&l_578,&l_578},{&l_578,&l_578,&l_578,&l_578,&l_578,&l_578},{&l_578,&l_578,&l_578,&l_578,&l_578,&l_578}},{{&l_578,&l_578,&l_578,&l_578,&l_578,&l_578},{&l_578,&l_578,&l_578,&l_578,&l_578,&l_578},{&l_578,&l_578,&l_578,&l_578,&l_578,&l_578},{&l_578,&l_578,&l_578,&l_578,&l_578,&l_578}}};
    uint32_t ***l_576[9][7] = {{(void*)0,&l_577[5][2][1],&l_577[3][2][1],&l_577[5][2][1],&l_577[5][2][1],&l_577[5][2][1],(void*)0},{(void*)0,&l_577[5][2][1],&l_577[3][2][1],&l_577[5][2][1],&l_577[5][2][1],&l_577[5][2][1],(void*)0},{(void*)0,&l_577[5][2][1],&l_577[3][2][1],&l_577[5][2][1],&l_577[5][2][1],&l_577[5][2][1],(void*)0},{(void*)0,&l_577[5][2][1],&l_577[3][2][1],&l_577[5][2][1],&l_577[5][2][1],&l_577[5][2][1],(void*)0},{(void*)0,&l_577[5][2][1],&l_577[3][2][1],&l_577[5][2][1],&l_577[5][2][1],&l_577[5][2][1],(void*)0},{(void*)0,&l_577[5][2][1],&l_577[3][2][1],&l_577[5][2][1],&l_577[5][2][1],&l_577[5][2][1],(void*)0},{(void*)0,&l_577[5][2][1],&l_577[3][2][1],&l_577[5][2][1],&l_577[5][2][1],&l_577[5][2][1],(void*)0},{(void*)0,&l_577[5][2][1],&l_577[3][2][1],&l_577[5][2][1],&l_577[5][2][1],&l_577[5][2][1],(void*)0},{(void*)0,&l_577[5][2][1],&l_577[3][2][1],&l_577[5][2][1],&l_577[5][2][1],&l_577[5][2][1],(void*)0}};
    VECTOR(int8_t, 2) l_597 = (VECTOR(int8_t, 2))((-1L), 0L);
    int64_t l_598 = (-2L);
    uint32_t l_616 = 1UL;
    VECTOR(int16_t, 2) l_660 = (VECTOR(int16_t, 2))(0x2C75L, 0x126CL);
    VECTOR(uint16_t, 8) l_679 = (VECTOR(uint16_t, 8))(0x8ACCL, (VECTOR(uint16_t, 4))(0x8ACCL, (VECTOR(uint16_t, 2))(0x8ACCL, 65531UL), 65531UL), 65531UL, 0x8ACCL, 65531UL);
    int32_t l_691 = 1L;
    int32_t l_692 = 0x21C66257L;
    int16_t l_702 = 0x2F75L;
    uint8_t *l_705 = &p_984->g_432;
    uint8_t **l_704 = &l_705;
    int32_t *l_706 = (void*)0;
    int32_t *l_707[1];
    VECTOR(int16_t, 4) l_708 = (VECTOR(int16_t, 4))(0x7649L, (VECTOR(int16_t, 2))(0x7649L, (-4L)), (-4L));
    int32_t l_721 = 0L;
    int64_t *l_722 = &p_984->g_688;
    uint8_t l_723 = 255UL;
    int32_t *l_724[7][8] = {{&l_692,&l_691,(void*)0,&p_984->g_119,(void*)0,&l_691,&l_692,(void*)0},{&l_692,&l_691,(void*)0,&p_984->g_119,(void*)0,&l_691,&l_692,(void*)0},{&l_692,&l_691,(void*)0,&p_984->g_119,(void*)0,&l_691,&l_692,(void*)0},{&l_692,&l_691,(void*)0,&p_984->g_119,(void*)0,&l_691,&l_692,(void*)0},{&l_692,&l_691,(void*)0,&p_984->g_119,(void*)0,&l_691,&l_692,(void*)0},{&l_692,&l_691,(void*)0,&p_984->g_119,(void*)0,&l_691,&l_692,(void*)0},{&l_692,&l_691,(void*)0,&p_984->g_119,(void*)0,&l_691,&l_692,(void*)0}};
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_707[i] = &l_692;
    if (p_984->g_comm_values[p_984->tid])
    { /* block id: 12 */
        uint32_t l_59 = 0xFCE24956L;
        union U1 *l_114 = &p_984->g_115;
        int64_t *l_116[9][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
        int32_t l_117 = 0x46A97375L;
        int32_t *l_118 = &p_984->g_119;
        union U0 l_120 = {1UL};
        union U2 ***l_550 = (void*)0;
        int16_t *l_553[5] = {&p_984->g_427,&p_984->g_427,&p_984->g_427,&p_984->g_427,&p_984->g_427};
        int64_t **l_572 = &p_984->g_374;
        int64_t ***l_571[9][10] = {{&l_572,&l_572,(void*)0,(void*)0,(void*)0,&l_572,&l_572,(void*)0,&l_572,&l_572},{&l_572,&l_572,(void*)0,(void*)0,(void*)0,&l_572,&l_572,(void*)0,&l_572,&l_572},{&l_572,&l_572,(void*)0,(void*)0,(void*)0,&l_572,&l_572,(void*)0,&l_572,&l_572},{&l_572,&l_572,(void*)0,(void*)0,(void*)0,&l_572,&l_572,(void*)0,&l_572,&l_572},{&l_572,&l_572,(void*)0,(void*)0,(void*)0,&l_572,&l_572,(void*)0,&l_572,&l_572},{&l_572,&l_572,(void*)0,(void*)0,(void*)0,&l_572,&l_572,(void*)0,&l_572,&l_572},{&l_572,&l_572,(void*)0,(void*)0,(void*)0,&l_572,&l_572,(void*)0,&l_572,&l_572},{&l_572,&l_572,(void*)0,(void*)0,(void*)0,&l_572,&l_572,(void*)0,&l_572,&l_572},{&l_572,&l_572,(void*)0,(void*)0,(void*)0,&l_572,&l_572,(void*)0,&l_572,&l_572}};
        uint16_t *l_575 = &p_984->g_98.f3;
        int32_t *l_580 = &l_117;
        int i, j;
        (*p_984->g_545) = func_43(func_49(func_55((l_59 , l_60), l_59, l_60, p_984), (l_117 &= (safe_sub_func_int64_t_s_s(l_59, ((l_59 ^ (((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(p_984->g_110.sde4b234a561bd86d)).s4a)).even || (((safe_unary_minus_func_uint8_t_u((safe_mod_func_int64_t_s_s((((p_984->g_comm_values[p_984->tid] , ((VECTOR(uint32_t, 4))(0xE0B4B7F8L, l_60, 0xEF02C85BL, 1UL)).z) , p_984->g_94) != l_60), 0x35C9A6D21B0195B8L)))) , (void*)0) == l_114))) && 0xEA93CC3EL)))), l_60, l_118, l_120, p_984), l_60, l_60, l_60, l_59, p_984);
        (*l_580) &= ((safe_div_func_uint32_t_u_u((safe_add_func_uint16_t_u_u(((l_551 = &p_984->g_102) == l_552), ((p_984->g_427 ^= (l_554[9][0][2] ^= p_984->g_348.x)) != ((*p_984->g_275) , (((VECTOR(int16_t, 8))((!(safe_add_func_int16_t_s_s((safe_add_func_int64_t_s_s(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(max(((VECTOR(int64_t, 2))(0x092469FE41072CFBL, 1L)).xyyy, (int64_t)((*l_118) = (safe_add_func_int64_t_s_s((safe_mod_func_int64_t_s_s(((safe_sub_func_int64_t_s_s((6L <= ((((((GROUP_DIVERGE(1, 1) ^ (safe_sub_func_uint32_t_u_u((*l_118), (((*l_575) = (safe_add_func_int8_t_s_s(((void*)0 != l_569), (((l_573 = &p_984->g_374) == l_574) || l_60)))) > p_984->g_355.s0)))) && GROUP_DIVERGE(2, 1)) , l_576[1][2]) != (void*)0) , p_984->g_350.s5) > FAKE_DIVERGE(p_984->global_2_offset, get_global_id(2), 10))), (*l_118))) > 0UL), (*l_118))), (*l_118))))))).xxwywxyx)), l_60, ((VECTOR(int64_t, 4))(9L)), 0x710C8BA2A9DB8CBAL, 2L, 6L)).s7, l_60)), 0UL))), (-1L), 0x36ADL, ((VECTOR(int16_t, 4))(0x2B63L)), 4L)).s5 , (*l_118)))))), l_59)) && l_554[8][0][5]);
    }
    else
    { /* block id: 206 */
        uint16_t l_581 = 5UL;
        int32_t *l_584 = (void*)0;
        int32_t l_592 = 0x5D9AB3C8L;
        int32_t l_593 = 0x68A8D662L;
        int32_t l_594 = 1L;
        int32_t l_595 = 0L;
        int32_t l_596[4] = {0x75800248L,0x75800248L,0x75800248L,0x75800248L};
        uint64_t l_615 = 0x3D958065E651450FL;
        uint8_t *l_629 = &p_984->g_432;
        int64_t *l_630 = (void*)0;
        int64_t *l_631 = &p_984->g_98.f1;
        VECTOR(uint32_t, 2) l_635 = (VECTOR(uint32_t, 2))(0x73C679BEL, 0x2BAC0D07L);
        VECTOR(uint16_t, 4) l_662 = (VECTOR(uint16_t, 4))(65531UL, (VECTOR(uint16_t, 2))(65531UL, 0xFB91L), 0xFB91L);
        int i;
        if (l_581)
        { /* block id: 207 */
            int32_t *l_585 = &l_554[9][0][1];
            int32_t *l_586 = (void*)0;
            int32_t *l_587 = &l_554[7][0][2];
            int32_t *l_588 = (void*)0;
            int32_t *l_589 = &l_554[8][0][3];
            int32_t *l_590[1][7][2] = {{{&l_554[9][0][2],(void*)0},{&l_554[9][0][2],(void*)0},{&l_554[9][0][2],(void*)0},{&l_554[9][0][2],(void*)0},{&l_554[9][0][2],(void*)0},{&l_554[9][0][2],(void*)0},{&l_554[9][0][2],(void*)0}}};
            int32_t l_591 = (-1L);
            int i, j, k;
            for (p_984->g_432 = 11; (p_984->g_432 < 47); ++p_984->g_432)
            { /* block id: 210 */
                return l_584;
            }
            p_984->g_599--;
        }
        else
        { /* block id: 214 */
            int32_t *l_602 = &l_596[0];
            int32_t *l_603[4];
            uint16_t l_604 = 0x2FF6L;
            int64_t *l_609 = (void*)0;
            int64_t *l_610[10][8] = {{&l_598,(void*)0,&l_598,&l_598,(void*)0,&l_598,&l_598,(void*)0},{&l_598,(void*)0,&l_598,&l_598,(void*)0,&l_598,&l_598,(void*)0},{&l_598,(void*)0,&l_598,&l_598,(void*)0,&l_598,&l_598,(void*)0},{&l_598,(void*)0,&l_598,&l_598,(void*)0,&l_598,&l_598,(void*)0},{&l_598,(void*)0,&l_598,&l_598,(void*)0,&l_598,&l_598,(void*)0},{&l_598,(void*)0,&l_598,&l_598,(void*)0,&l_598,&l_598,(void*)0},{&l_598,(void*)0,&l_598,&l_598,(void*)0,&l_598,&l_598,(void*)0},{&l_598,(void*)0,&l_598,&l_598,(void*)0,&l_598,&l_598,(void*)0},{&l_598,(void*)0,&l_598,&l_598,(void*)0,&l_598,&l_598,(void*)0},{&l_598,(void*)0,&l_598,&l_598,(void*)0,&l_598,&l_598,(void*)0}};
            int16_t *l_613 = &p_984->g_427;
            uint8_t *l_614 = &p_984->g_432;
            int i, j;
            for (i = 0; i < 4; i++)
                l_603[i] = (void*)0;
            ++l_604;
            (*p_984->g_104) = ((safe_mul_func_uint8_t_u_u((l_609 != (l_610[3][3] = p_984->g_374)), ((*l_614) |= (safe_add_func_uint64_t_u_u(FAKE_DIVERGE(p_984->group_1_offset, get_group_id(1), 10), ((void*)0 == l_613)))))) != ((p_984->g_498 | l_615) || l_616));
        }
        l_593 ^= ((*p_984->g_104) = ((p_984->g_76.se , ((((safe_lshift_func_int16_t_s_s((safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 2))((-1L), 0x67L)).odd, 3)), ((void*)0 == &l_581))) || ((+(safe_lshift_func_uint16_t_u_s(((safe_mod_func_int16_t_s_s((GROUP_DIVERGE(2, 1) & ((safe_mul_func_int8_t_s_s(l_616, FAKE_DIVERGE(p_984->global_0_offset, get_global_id(0), 10))) < (~((-7L) | ((*l_631) = (safe_rshift_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(((*l_629) = 4UL), l_592, 0x51L, 0xE3L)).y, 1))))))), (safe_mul_func_uint8_t_u_u(l_598, (safe_unary_minus_func_uint32_t_u(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(mul_hi(((VECTOR(uint32_t, 2))(l_635.xy)).yxxyyyyx, ((VECTOR(uint32_t, 2))(clz(((VECTOR(uint32_t, 16))(p_984->g_636.yyyyxyyyyxyyyyyy)).sa1))).xyxxyxxx))).s46)).lo)))))) , (((((safe_add_func_uint64_t_u_u((safe_add_func_uint64_t_u_u(p_984->g_431.z, 0x851F012A9DFC6E0EL)), 0x589EF1317546F728L)) ^ l_598) < l_616) || l_597.y) || (*p_984->g_104))), 14))) > l_616)) , 1L) ^ l_595)) == l_615));
        if ((atomic_inc(&p_984->g_atomic_input[51 * get_linear_group_id() + 22]) == 3))
        { /* block id: 225 */
            int32_t l_642 = (-1L);
            int32_t *l_641 = &l_642;
            int32_t *l_643 = &l_642;
            int32_t *l_644[3];
            int i;
            for (i = 0; i < 3; i++)
                l_644[i] = &l_642;
            l_641 = (l_644[1] = (l_643 = l_641));
            unsigned int result = 0;
            result += l_642;
            atomic_add(&p_984->g_special_values[51 * get_linear_group_id() + 22], result);
        }
        else
        { /* block id: 229 */
            (1 + 1);
        }
        for (p_984->g_98.f3 = 0; (p_984->g_98.f3 > 50); p_984->g_98.f3 = safe_add_func_uint64_t_u_u(p_984->g_98.f3, 7))
        { /* block id: 234 */
            int32_t l_687 = (-6L);
            int32_t l_689 = 0x7B65D886L;
            (*p_984->g_104) = ((VECTOR(int32_t, 2))((-6L), (-3L))).odd;
            for (l_595 = 0; (l_595 == (-20)); --l_595)
            { /* block id: 238 */
                VECTOR(uint16_t, 16) l_663 = (VECTOR(uint16_t, 16))(0x153FL, (VECTOR(uint16_t, 4))(0x153FL, (VECTOR(uint16_t, 2))(0x153FL, 1UL), 1UL), 1UL, 0x153FL, 1UL, (VECTOR(uint16_t, 2))(0x153FL, 1UL), (VECTOR(uint16_t, 2))(0x153FL, 1UL), 0x153FL, 1UL, 0x153FL, 1UL);
                int8_t *l_668 = (void*)0;
                int8_t *l_669 = (void*)0;
                int8_t *l_670 = (void*)0;
                int8_t *l_671 = (void*)0;
                int8_t *l_672 = (void*)0;
                int8_t *l_673 = (void*)0;
                int8_t *l_674 = (void*)0;
                int8_t *l_675 = (void*)0;
                int8_t *l_676 = (void*)0;
                int8_t *l_677[3];
                int32_t l_678[5] = {0x0C58470DL,0x0C58470DL,0x0C58470DL,0x0C58470DL,0x0C58470DL};
                uint16_t *l_690 = &l_581;
                int i;
                for (i = 0; i < 3; i++)
                    l_677[i] = (void*)0;
                if ((atomic_inc(&p_984->g_atomic_input[51 * get_linear_group_id() + 9]) == 3))
                { /* block id: 240 */
                    VECTOR(int32_t, 4) l_649 = (VECTOR(int32_t, 4))(0x3B8D579EL, (VECTOR(int32_t, 2))(0x3B8D579EL, 0x14D248C1L), 0x14D248C1L);
                    int32_t l_650 = 0x54A01FE2L;
                    int16_t l_651 = 3L;
                    int32_t l_652 = 0x35D78FA3L;
                    uint16_t l_653 = 0x9DA9L;
                    int32_t l_654[4][4] = {{0x26C81BBBL,0x5D8F8300L,0x160A3563L,0x5D8F8300L},{0x26C81BBBL,0x5D8F8300L,0x160A3563L,0x5D8F8300L},{0x26C81BBBL,0x5D8F8300L,0x160A3563L,0x5D8F8300L},{0x26C81BBBL,0x5D8F8300L,0x160A3563L,0x5D8F8300L}};
                    uint64_t l_655 = 0UL;
                    int i, j;
                    l_650 = ((VECTOR(int32_t, 2))(l_649.zz)).lo;
                    l_652 = l_651;
                    l_655 &= (l_653 , l_654[0][0]);
                    unsigned int result = 0;
                    result += l_649.w;
                    result += l_649.z;
                    result += l_649.y;
                    result += l_649.x;
                    result += l_650;
                    result += l_651;
                    result += l_652;
                    result += l_653;
                    int l_654_i0, l_654_i1;
                    for (l_654_i0 = 0; l_654_i0 < 4; l_654_i0++) {
                        for (l_654_i1 = 0; l_654_i1 < 4; l_654_i1++) {
                            result += l_654[l_654_i0][l_654_i1];
                        }
                    }
                    result += l_655;
                    atomic_add(&p_984->g_special_values[51 * get_linear_group_id() + 9], result);
                }
                else
                { /* block id: 244 */
                    (1 + 1);
                }
                l_692 |= ((*p_984->g_104) = ((safe_sub_func_int16_t_s_s((safe_mod_func_int16_t_s_s(0x4BB4L, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(l_660.yxyyxyxx)).lo)).w)), ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(rotate(((VECTOR(uint16_t, 8))(max(((VECTOR(uint16_t, 4))(abs(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(p_984->g_661.s2c)), 8UL, 9UL))))).ywzzxzwy, ((VECTOR(uint16_t, 16))(rhadd(((VECTOR(uint16_t, 16))(l_662.xyxywzwwxzwyxyzz)), ((VECTOR(uint16_t, 4))(min(((VECTOR(uint16_t, 2))(l_663.s49)).xxyy, (uint16_t)(((**l_569) = (0x4BD5L ^ l_554[5][0][1])) < (!((safe_lshift_func_int8_t_s_s((l_678[4] &= (-1L)), 3)) , 0x52L)))))).zywxxzxwxzywxyzz))).odd))).s7045102257754647, ((VECTOR(uint16_t, 4))((p_984->g_503 , GROUP_DIVERGE(0, 1)), ((VECTOR(uint16_t, 16))(mad_sat(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(l_679.s6205175076212216)).sd9)).yxyxxxyxxyxxyxxy, ((VECTOR(uint16_t, 2))(sub_sat(((VECTOR(uint16_t, 16))(p_984->g_680.s3521502510546706)).saa, ((VECTOR(uint16_t, 4))(((*l_690) |= ((l_689 |= (safe_rshift_func_int8_t_s_u(((safe_rshift_func_int8_t_s_u((safe_mul_func_uint16_t_u_u(l_660.y, (((*l_570) = ((p_984->g_688 = l_687) , (((((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))((-1L), 0L)))).even , l_687) < p_984->g_346.s7) , p_984->g_266.x))) == 0x59L))), 1)) || 0x7DL), l_60))) <= 3UL)), 1UL, 1UL, 0UL)).even))).xxxyyxxxxyyxxxxx, ((VECTOR(uint16_t, 16))(1UL))))).s5, 0x79D5L, 4UL)).wxzzxyxwzyxxxxxz))))).s3d)).even)) == l_691));
                if ((atomic_inc(&p_984->g_atomic_input[51 * get_linear_group_id() + 3]) == 7))
                { /* block id: 256 */
                    union U2 l_694 = {0x48F82C337C07CE05L};/* VOLATILE GLOBAL l_694 */
                    union U2 *l_693 = &l_694;
                    union U2 *l_695 = &l_694;
                    l_695 = l_693;
                    unsigned int result = 0;
                    result += l_694.f0;
                    result += l_694.f1;
                    result += l_694.f2;
                    result += l_694.f3;
                    result += l_694.f4;
                    atomic_add(&p_984->g_special_values[51 * get_linear_group_id() + 3], result);
                }
                else
                { /* block id: 258 */
                    (1 + 1);
                }
            }
            (*p_984->g_104) = (l_616 >= ((safe_mod_func_int16_t_s_s((+p_984->g_525.s1), (safe_mul_func_int8_t_s_s(((l_679.s7 || 0x1B2D6014L) == (((VECTOR(int8_t, 8))(p_984->g_700.s06221372)).s0 && ((((VECTOR(int8_t, 4))(p_984->g_701.s0175)).x != ((**l_569) = (4294967295UL > l_60))) , (func_49(&p_984->g_91, (p_984->g_110.s1 ^= (((l_702 < (((l_687 ^ l_616) || l_691) > l_687)) <= l_687) , 0x31AE8F4390AA8C2AL)), l_554[1][0][5], &l_596[1], p_984->g_703, p_984) , p_984->g_680.s4)))), 0x47L)))) | p_984->g_703.f0));
        }
    }
    l_708.y = (((*l_704) = (void*)0) == &p_984->g_432);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    p_984->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 24)), permutations[(safe_mod_func_uint32_t_u_u((p_984->g_701.s1 ^ (safe_mul_func_uint8_t_u_u(((void*)0 != p_984->g_711), (p_984->g_350.s0 ^ (&p_984->g_94 == ((((*l_704) = (*l_704)) == (*p_984->g_711)) , (p_984->g_713 = &p_984->g_94))))))), 10))][(safe_mod_func_uint32_t_u_u(p_984->tid, 24))]));
    l_723 = (1UL & ((p_984->g_427 = ((((*l_551) = (*l_551)) == &p_984->g_98) == ((*l_722) = ((((safe_add_func_uint64_t_u_u(FAKE_DIVERGE(p_984->group_1_offset, get_group_id(1), 10), ((((VECTOR(uint32_t, 4))(p_984->g_716.yxxx)).z < (safe_mul_func_int16_t_s_s(((void*)0 != (*l_569)), (0x0EL | (0x33L != 1L))))) != ((+((safe_lshift_func_uint8_t_u_u(FAKE_DIVERGE(p_984->group_2_offset, get_group_id(2), 10), 4)) && 18446744073709551614UL)) ^ p_984->g_525.s3)))) && l_721) >= 0x5E0234FE4B241EF2L) , (-6L))))) & p_984->g_701.s4));
    return p_984->g_725;
}


/* ------------------------------------------ */
/* 
 * reads : p_984->g_359 p_984->g_360 p_984->g_431 p_984->g_348 p_984->g_432 p_984->g_104 p_984->g_37 p_984->g_208 p_984->g_119 p_984->g_75 p_984->g_94 p_984->g_76 p_984->g_224 p_984->g_279 p_984->g_275 p_984->g_393 p_984->g_316 p_984->g_486 p_984->g_498 p_984->g_503 p_984->g_91 p_984->g_511 p_984->g_525 p_984->g_390 p_984->g_280
 * writes: p_984->g_427 p_984->g_432 p_984->g_115.f1 p_984->g_37 p_984->g_94 p_984->g_34 p_984->g_280 p_984->g_224 p_984->g_498 p_984->g_119 p_984->g_104
 */
union U1 ** func_43(union U1  p_44, int32_t  p_45, uint8_t  p_46, uint16_t  p_47, uint32_t  p_48, struct S3 * p_984)
{ /* block id: 155 */
    union U1 l_425 = {0xF7A8D6AEL};
    union U1 **l_441 = (void*)0;
    uint8_t *l_478[8][10];
    uint16_t l_481 = 0x6377L;
    int32_t l_482 = 0L;
    union U1 ***l_485 = &p_984->g_280;
    union U0 l_488[3] = {{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL}};
    uint32_t *l_491 = &l_425.f0;
    uint32_t **l_490 = &l_491;
    uint32_t ***l_489[8] = {&l_490,&l_490,&l_490,&l_490,&l_490,&l_490,&l_490,&l_490};
    uint16_t *l_492 = &p_984->g_224;
    int32_t l_495[3][6][4];
    int16_t l_497[8] = {0x765CL,0x765CL,0x765CL,0x765CL,0x765CL,0x765CL,0x765CL,0x765CL};
    int32_t *l_543 = (void*)0;
    int32_t *l_544[4][2][10] = {{{&p_984->g_119,&p_984->g_106,(void*)0,&p_984->g_37,(void*)0,&p_984->g_106,&p_984->g_119,&p_984->g_119,(void*)0,(void*)0},{&p_984->g_119,&p_984->g_106,(void*)0,&p_984->g_37,(void*)0,&p_984->g_106,&p_984->g_119,&p_984->g_119,(void*)0,(void*)0}},{{&p_984->g_119,&p_984->g_106,(void*)0,&p_984->g_37,(void*)0,&p_984->g_106,&p_984->g_119,&p_984->g_119,(void*)0,(void*)0},{&p_984->g_119,&p_984->g_106,(void*)0,&p_984->g_37,(void*)0,&p_984->g_106,&p_984->g_119,&p_984->g_119,(void*)0,(void*)0}},{{&p_984->g_119,&p_984->g_106,(void*)0,&p_984->g_37,(void*)0,&p_984->g_106,&p_984->g_119,&p_984->g_119,(void*)0,(void*)0},{&p_984->g_119,&p_984->g_106,(void*)0,&p_984->g_37,(void*)0,&p_984->g_106,&p_984->g_119,&p_984->g_119,(void*)0,(void*)0}},{{&p_984->g_119,&p_984->g_106,(void*)0,&p_984->g_37,(void*)0,&p_984->g_106,&p_984->g_119,&p_984->g_119,(void*)0,(void*)0},{&p_984->g_119,&p_984->g_106,(void*)0,&p_984->g_37,(void*)0,&p_984->g_106,&p_984->g_119,&p_984->g_119,(void*)0,(void*)0}}};
    int i, j, k;
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 10; j++)
            l_478[i][j] = (void*)0;
    }
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 4; k++)
                l_495[i][j][k] = (-1L);
        }
    }
    for (p_48 = 0; (p_48 >= 16); p_48 = safe_add_func_int8_t_s_s(p_48, 1))
    { /* block id: 158 */
        uint64_t l_424[6][8] = {{18446744073709551615UL,0xA692AF43CFE5787EL,0xAE5388A6F8D2A95AL,18446744073709551615UL,0xA692AF43CFE5787EL,18446744073709551615UL,0xAE5388A6F8D2A95AL,0xA692AF43CFE5787EL},{18446744073709551615UL,0xA692AF43CFE5787EL,0xAE5388A6F8D2A95AL,18446744073709551615UL,0xA692AF43CFE5787EL,18446744073709551615UL,0xAE5388A6F8D2A95AL,0xA692AF43CFE5787EL},{18446744073709551615UL,0xA692AF43CFE5787EL,0xAE5388A6F8D2A95AL,18446744073709551615UL,0xA692AF43CFE5787EL,18446744073709551615UL,0xAE5388A6F8D2A95AL,0xA692AF43CFE5787EL},{18446744073709551615UL,0xA692AF43CFE5787EL,0xAE5388A6F8D2A95AL,18446744073709551615UL,0xA692AF43CFE5787EL,18446744073709551615UL,0xAE5388A6F8D2A95AL,0xA692AF43CFE5787EL},{18446744073709551615UL,0xA692AF43CFE5787EL,0xAE5388A6F8D2A95AL,18446744073709551615UL,0xA692AF43CFE5787EL,18446744073709551615UL,0xAE5388A6F8D2A95AL,0xA692AF43CFE5787EL},{18446744073709551615UL,0xA692AF43CFE5787EL,0xAE5388A6F8D2A95AL,18446744073709551615UL,0xA692AF43CFE5787EL,18446744073709551615UL,0xAE5388A6F8D2A95AL,0xA692AF43CFE5787EL}};
        int16_t *l_426 = &p_984->g_427;
        union U0 l_428 = {0x6C19BD374F12713DL};
        union U1 **l_440 = &p_984->g_275;
        int i, j;
        if ((safe_add_func_int64_t_s_s((*p_984->g_359), (safe_mul_func_int16_t_s_s(l_424[3][0], (l_425 , ((~((((*l_426) = (l_426 != (l_428 , &p_984->g_427))) , ((safe_rshift_func_uint16_t_u_u((((VECTOR(int32_t, 8))(1L, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(0x6677DC1AL, ((VECTOR(int32_t, 2))(p_984->g_431.xx)), (-5L))).odd)).yxyy)))), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x5C9D2E27L, (-1L))), 1L, 1L)).w, 0x57AF73D9L, (-1L))).s0 < p_984->g_348.y), p_984->g_432)) , 18446744073709551607UL)) < 0L)) != l_428.f0)))))))
        { /* block id: 160 */
            uint8_t *l_437 = &p_984->g_432;
            int32_t l_442[9][6][4] = {{{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L}},{{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L}},{{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L}},{{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L}},{{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L}},{{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L}},{{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L}},{{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L}},{{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L},{0x53A4DDF9L,0L,0x640A203AL,0x66F00AB1L}}};
            int i, j, k;
            (*p_984->g_104) |= (safe_rshift_func_uint8_t_u_u(((p_984->g_115.f1 = (safe_sub_func_uint8_t_u_u(((*l_437) = l_424[3][0]), ((p_46 , (safe_sub_func_uint32_t_u_u((l_425.f0 || (l_440 != l_441)), l_442[0][3][1]))) == 0x78L)))) == l_428.f0), 0));
            (*p_984->g_104) = (*p_984->g_208);
        }
        else
        { /* block id: 165 */
            uint32_t *l_444 = (void*)0;
            uint32_t **l_443 = &l_444;
            uint32_t ***l_445 = &l_443;
            uint64_t *l_448 = &l_424[3][0];
            uint32_t *l_451 = (void*)0;
            uint32_t *l_452 = (void*)0;
            uint32_t *l_453 = (void*)0;
            uint32_t *l_454 = &p_984->g_94;
            union U1 l_477 = {4294967295UL};
            uint64_t *l_479 = (void*)0;
            uint64_t *l_480 = &l_428.f3;
            (*l_445) = l_443;
            (*p_984->g_104) = ((p_984->g_75.s1 > (safe_sub_func_uint64_t_u_u(((*l_448)--), ((*l_480) = ((((*l_454)++) < 4294967295UL) <= (safe_div_func_int32_t_s_s((safe_div_func_uint32_t_u_u((safe_add_func_uint32_t_u_u(p_984->g_76.s3, (p_45 < (((safe_rshift_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_u(p_46, (((VECTOR(uint8_t, 16))(((p_984->g_348.x < p_984->g_224) <= (safe_lshift_func_int16_t_s_s((safe_mul_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s((l_425.f0 | (((safe_mod_func_int32_t_s_s((((((**p_984->g_279) = l_477) , l_428.f0) != l_477.f0) , (*p_984->g_104)), p_984->g_393.x)) , &p_984->g_432) == l_478[7][5])), 10)), p_45)), l_428.f0)), 7))), ((VECTOR(uint8_t, 4))(0x1AL)), ((VECTOR(uint8_t, 2))(0x76L)), ((VECTOR(uint8_t, 8))(0UL)), 1UL)).sd >= p_47))), p_45)) != p_46) | p_46)))), p_44.f0)), 4294967294UL))))))) ^ p_48);
        }
        if ((*p_984->g_208))
            continue;
        (*p_984->g_104) = (0L && 9L);
    }
    if ((l_481 < ((l_482 = (-9L)) ^ (l_425.f0 >= ((*l_492) = ((p_984->g_316.s5 , ((safe_add_func_int16_t_s_s(0x41FDL, (&p_984->g_275 == ((*l_485) = l_441)))) , p_984->g_486)) != (l_488[2] , l_489[4])))))))
    { /* block id: 179 */
        int32_t *l_493 = &p_984->g_119;
        int32_t *l_494[5][4][4] = {{{&l_482,(void*)0,&p_984->g_37,&l_482},{&l_482,(void*)0,&p_984->g_37,&l_482},{&l_482,(void*)0,&p_984->g_37,&l_482},{&l_482,(void*)0,&p_984->g_37,&l_482}},{{&l_482,(void*)0,&p_984->g_37,&l_482},{&l_482,(void*)0,&p_984->g_37,&l_482},{&l_482,(void*)0,&p_984->g_37,&l_482},{&l_482,(void*)0,&p_984->g_37,&l_482}},{{&l_482,(void*)0,&p_984->g_37,&l_482},{&l_482,(void*)0,&p_984->g_37,&l_482},{&l_482,(void*)0,&p_984->g_37,&l_482},{&l_482,(void*)0,&p_984->g_37,&l_482}},{{&l_482,(void*)0,&p_984->g_37,&l_482},{&l_482,(void*)0,&p_984->g_37,&l_482},{&l_482,(void*)0,&p_984->g_37,&l_482},{&l_482,(void*)0,&p_984->g_37,&l_482}},{{&l_482,(void*)0,&p_984->g_37,&l_482},{&l_482,(void*)0,&p_984->g_37,&l_482},{&l_482,(void*)0,&p_984->g_37,&l_482},{&l_482,(void*)0,&p_984->g_37,&l_482}}};
        int32_t l_496 = 0x2F208882L;
        VECTOR(uint8_t, 2) l_510 = (VECTOR(uint8_t, 2))(248UL, 0x63L);
        int16_t l_514 = 5L;
        uint64_t *l_517[6][1] = {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}};
        int i, j, k;
        ++p_984->g_498;
        if ((safe_rshift_func_uint8_t_u_s((p_984->g_503 , (safe_add_func_uint64_t_u_u(((*l_493) |= (p_984->g_91 , (((safe_rshift_func_uint16_t_u_s(((safe_div_func_int16_t_s_s(((VECTOR(int16_t, 2))(0x5199L, 1L)).odd, ((VECTOR(uint16_t, 4))(upsample(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(l_510.xyyy)).hi)).yyxy, ((VECTOR(uint8_t, 2))(0x9CL, 247UL)).xxxy))).z)) | ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(min(((VECTOR(int16_t, 8))(p_984->g_511.s51503622)).lo, (int16_t)((((safe_div_func_uint16_t_u_u((0UL ^ l_514), p_44.f0)) != (+p_46)) , p_45) || l_497[2])))).lo)), 2L, (-1L))).w), ((VECTOR(int16_t, 2))((-1L), 0x6A12L)).odd)) > ((safe_lshift_func_uint8_t_u_u((1UL | p_45), FAKE_DIVERGE(p_984->local_2_offset, get_local_id(2), 10))) & 0x228A39EBDA482998L)) , l_495[0][0][3]))), p_984->g_76.s8))), l_497[2])))
        { /* block id: 182 */
            return &p_984->g_275;
        }
        else
        { /* block id: 184 */
            int32_t l_520 = 0x03844494L;
            union U0 l_530 = {0xC041FB0AE83B1F7FL};
            int32_t **l_537 = &l_493;
            int32_t **l_539 = &p_984->g_104;
            (*l_539) = ((*l_537) = (((0x646CL || (~(safe_div_func_int32_t_s_s(((VECTOR(int32_t, 8))(0x75E2E6F1L, 0x169B1ACDL, ((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 8))(l_520, (safe_lshift_func_uint16_t_u_s((p_47 = 0xC8AFL), (safe_div_func_uint8_t_u_u((((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(p_984->g_525.s20)))).hi && (l_482 = ((0x5F802193B84FDA0AL == (((((**l_490) = (((safe_div_func_uint8_t_u_u(((!(safe_mod_func_uint16_t_u_u((l_530 , (((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 2))(0x0DD2L, 5L)), ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(0x4732L, 65535UL)).yxxx)).even))).hi && ((safe_mod_func_uint64_t_u_u(((l_520 = (safe_mod_func_uint64_t_u_u((0x6728L || ((p_44.f0 > (safe_rshift_func_int8_t_s_u((((l_488[2].f0 == 0x75L) , (*p_984->g_104)) && 4294967295UL), p_984->g_37))) ^ l_425.f0)), 1L))) <= p_48), 18446744073709551615UL)) == 0L))), FAKE_DIVERGE(p_984->group_1_offset, get_group_id(1), 10)))) > 0x398AC7B0L), l_530.f0)) && (*l_493)) == p_46)) <= l_530.f0) != p_984->g_390.s4) & p_44.f0)) , p_46))), p_48)))), (-9L), 0L, p_44.f0, l_520, (-1L), (-1L))).s33, ((VECTOR(uint16_t, 2))(0x5408L))))), p_48, ((VECTOR(int32_t, 2))(0x297B95F0L)), 0x5CFD49CCL)).s1, p_984->g_119)))) , p_44.f0) , (void*)0));
        }
    }
    else
    { /* block id: 192 */
        uint16_t l_540 = 65532UL;
        l_540--;
    }
    p_45 = ((*p_984->g_208) = ((void*)0 != &p_47));
    return (*l_485);
}


/* ------------------------------------------ */
/* 
 * reads : p_984->g_119 p_984->g_115 p_984->g_76 p_984->g_106 p_984->g_91 p_984->g_104 p_984->g_37 p_984->g_75 p_984->g_94 p_984->g_208
 * writes: p_984->g_115.f1 p_984->g_94 p_984->g_37 p_984->g_119 p_984->g_106 p_984->g_75
 */
union U1  func_49(int8_t * p_50, int64_t  p_51, uint16_t  p_52, int32_t * p_53, union U0  p_54, struct S3 * p_984)
{ /* block id: 35 */
    uint16_t l_122 = 0x9F94L;
    VECTOR(uint16_t, 8) l_145 = (VECTOR(uint16_t, 8))(0x599AL, (VECTOR(uint16_t, 4))(0x599AL, (VECTOR(uint16_t, 2))(0x599AL, 0x154BL), 0x154BL), 0x154BL, 0x599AL, 0x154BL);
    VECTOR(uint16_t, 2) l_146 = (VECTOR(uint16_t, 2))(1UL, 0x2AEEL);
    int64_t *l_147 = (void*)0;
    int64_t *l_148[2];
    int64_t l_151 = 0x7EE8902DFE65A55BL;
    int32_t l_152 = 0L;
    int32_t l_153 = (-6L);
    int32_t l_154 = 1L;
    int32_t l_155 = (-4L);
    int32_t l_156 = 0L;
    int32_t l_157 = (-1L);
    VECTOR(uint16_t, 16) l_158 = (VECTOR(uint16_t, 16))(65534UL, (VECTOR(uint16_t, 4))(65534UL, (VECTOR(uint16_t, 2))(65534UL, 65526UL), 65526UL), 65526UL, 65534UL, 65526UL, (VECTOR(uint16_t, 2))(65534UL, 65526UL), (VECTOR(uint16_t, 2))(65534UL, 65526UL), 65534UL, 65526UL, 65534UL, 65526UL);
    uint32_t l_238 = 2UL;
    uint64_t l_239 = 18446744073709551615UL;
    union U0 l_269[8][10][3] = {{{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}}},{{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}}},{{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}}},{{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}}},{{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}}},{{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}}},{{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}}},{{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}},{{18446744073709551614UL},{0UL},{0UL}}}};
    VECTOR(int64_t, 8) l_326 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0L), 0L), 0L, 1L, 0L);
    union U1 l_332 = {0UL};
    VECTOR(int32_t, 16) l_333 = (VECTOR(int32_t, 16))(0x278D93BEL, (VECTOR(int32_t, 4))(0x278D93BEL, (VECTOR(int32_t, 2))(0x278D93BEL, 1L), 1L), 1L, 0x278D93BEL, 1L, (VECTOR(int32_t, 2))(0x278D93BEL, 1L), (VECTOR(int32_t, 2))(0x278D93BEL, 1L), 0x278D93BEL, 1L, 0x278D93BEL, 1L);
    VECTOR(int32_t, 4) l_392 = (VECTOR(int32_t, 4))((-10L), (VECTOR(int32_t, 2))((-10L), (-1L)), (-1L));
    int64_t l_413 = 0x721F9BE9EE4BC88FL;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_148[i] = (void*)0;
    if ((((((safe_unary_minus_func_int64_t_s(l_122)) ^ (safe_div_func_int32_t_s_s((safe_mod_func_uint8_t_u_u((safe_rshift_func_int16_t_s_u((safe_mod_func_uint16_t_u_u((safe_sub_func_uint64_t_u_u(((0x118C22C6L && (*p_53)) < (!(p_984->g_115 , (((-7L) || (((safe_add_func_uint64_t_u_u(p_984->g_76.s4, (safe_mod_func_uint16_t_u_u((safe_mod_func_int32_t_s_s(((p_984->g_115.f1 = (~((safe_div_func_uint32_t_u_u(p_984->g_106, (((((0x4FB37E2CL == (safe_div_func_int64_t_s_s((FAKE_DIVERGE(p_984->global_1_offset, get_global_id(1), 10) | (safe_rshift_func_uint8_t_u_s((((VECTOR(uint16_t, 16))(sub_sat(((VECTOR(uint16_t, 2))(l_145.s27)).yyyxxxyyxxxyyxyx, ((VECTOR(uint16_t, 16))(l_146.yxxyyxyxyyxxyyyx))))).s2 >= p_51), (*p_50)))), p_54.f0))) | p_52) , (void*)0) == (void*)0) , l_146.y))) | 1L))) & p_52), (*p_984->g_104))), (-3L))))) < (-8L)) ^ l_146.x)) <= p_52)))), p_984->g_76.s6)), 0x5955L)), GROUP_DIVERGE(1, 1))), 0x7EL)), p_984->g_106))) < 1UL) < p_984->g_76.s9) & p_984->g_75.s3))
    { /* block id: 37 */
        int32_t *l_149 = &p_984->g_37;
        int32_t *l_150[7] = {&p_984->g_119,(void*)0,&p_984->g_119,&p_984->g_119,(void*)0,&p_984->g_119,&p_984->g_119};
        int32_t l_166[8];
        uint8_t l_167[6] = {255UL,255UL,255UL,255UL,255UL,255UL};
        int i;
        for (i = 0; i < 8; i++)
            l_166[i] = 0x24154FC8L;
        l_158.s8++;
        for (p_984->g_94 = 0; (p_984->g_94 != 11); p_984->g_94++)
        { /* block id: 41 */
            int8_t l_163 = 0L;
            int32_t l_164 = 0x7FEED684L;
            int32_t l_165[10] = {0L,0L,0L,0L,0L,0L,0L,0L,0L,0L};
            int32_t **l_173[9] = {&l_150[5],&l_150[5],&l_150[5],&l_150[5],&l_150[5],&l_150[5],&l_150[5],&l_150[5],&l_150[5]};
            int i;
            ++l_167[1];
            for (l_163 = (-1); (l_163 > (-11)); l_163--)
            { /* block id: 45 */
                int32_t **l_172 = &l_150[1];
                (*l_172) = &p_984->g_37;
            }
            p_53 = (void*)0;
        }
    }
    else
    { /* block id: 50 */
        uint32_t l_174 = 0xACE85C98L;
        union U1 *l_175 = (void*)0;
        int32_t *l_176[6] = {(void*)0,&p_984->g_106,(void*)0,(void*)0,&p_984->g_106,(void*)0};
        int i;
        (*p_984->g_104) |= (*p_53);
        p_984->g_75.s4 = (p_984->g_106 = (+((*p_53) = ((*p_984->g_104) &= (l_174 == ((void*)0 != l_175))))));
        (*p_53) = (*p_53);
    }
    for (l_157 = 0; (l_157 >= (-28)); --l_157)
    { /* block id: 60 */
        union U1 *l_200 = &p_984->g_34;
        int32_t l_205 = 0x6D0B2B69L;
        int16_t l_207 = (-5L);
        int32_t **l_299 = (void*)0;
        int32_t ***l_298[10] = {(void*)0,&l_299,&l_299,&l_299,(void*)0,(void*)0,&l_299,&l_299,&l_299,(void*)0};
        uint32_t *l_324[1][1][5];
        VECTOR(int8_t, 4) l_362 = (VECTOR(int8_t, 4))(3L, (VECTOR(int8_t, 2))(3L, 0L), 0L);
        VECTOR(int8_t, 2) l_363 = (VECTOR(int8_t, 2))(0L, (-7L));
        VECTOR(int32_t, 8) l_391 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0L), 0L), 0L, 0L, 0L);
        int32_t l_409 = 0x7ABA84B9L;
        int32_t l_414 = 0x2BAD9D3FL;
        uint32_t l_415 = 4294967295UL;
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 1; j++)
            {
                for (k = 0; k < 5; k++)
                    l_324[i][j][k] = &p_984->g_115.f0;
            }
        }
        for (p_52 = 6; (p_52 > 42); p_52 = safe_add_func_int16_t_s_s(p_52, 9))
        { /* block id: 63 */
            int8_t l_199 = 5L;
            int32_t *l_203 = &p_984->g_37;
            VECTOR(int32_t, 2) l_233 = (VECTOR(int32_t, 2))(3L, 0x60304A45L);
            VECTOR(int32_t, 4) l_234 = (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, 0x3CBE8424L), 0x3CBE8424L);
            union U2 *l_249[6] = {&p_984->g_98,&p_984->g_98,&p_984->g_98,&p_984->g_98,&p_984->g_98,&p_984->g_98};
            int64_t l_260 = 0x5957DEAFFB366509L;
            uint32_t *l_325 = &p_984->g_34.f0;
            uint8_t l_331 = 0x40L;
            VECTOR(uint32_t, 2) l_351 = (VECTOR(uint32_t, 2))(3UL, 0xED1AC72EL);
            VECTOR(uint32_t, 8) l_352 = (VECTOR(uint32_t, 8))(0x60C67030L, (VECTOR(uint32_t, 4))(0x60C67030L, (VECTOR(uint32_t, 2))(0x60C67030L, 0xBC6F35C8L), 0xBC6F35C8L), 0xBC6F35C8L, 0x60C67030L, 0xBC6F35C8L);
            int i;
            if (p_52)
                break;
            for (l_154 = 0; (l_154 >= 12); l_154 = safe_add_func_int8_t_s_s(l_154, 2))
            { /* block id: 67 */
                int32_t *l_241 = &l_157;
                union U1 **l_277 = &l_200;
                VECTOR(uint32_t, 4) l_347 = (VECTOR(uint32_t, 4))(4294967292UL, (VECTOR(uint32_t, 2))(4294967292UL, 4294967289UL), 4294967289UL);
                VECTOR(uint32_t, 8) l_349 = (VECTOR(uint32_t, 8))(0xCA55B8ACL, (VECTOR(uint32_t, 4))(0xCA55B8ACL, (VECTOR(uint32_t, 2))(0xCA55B8ACL, 1UL), 1UL), 1UL, 0xCA55B8ACL, 1UL);
                int64_t *l_376 = (void*)0;
                int64_t *l_377 = &l_151;
                int32_t l_399 = 0x4010882CL;
                int32_t l_403 = 0x1EB6C8ADL;
                int32_t l_408 = 0x53B200ADL;
                uint32_t l_410 = 8UL;
                int i;
                (*p_984->g_104) ^= 0L;
                for (l_156 = 3; (l_156 > (-16)); l_156 = safe_sub_func_int8_t_s_s(l_156, 7))
                { /* block id: 71 */
                    VECTOR(uint16_t, 8) l_185 = (VECTOR(uint16_t, 8))(65529UL, (VECTOR(uint16_t, 4))(65529UL, (VECTOR(uint16_t, 2))(65529UL, 2UL), 2UL), 2UL, 65529UL, 2UL);
                    VECTOR(int64_t, 4) l_188 = (VECTOR(int64_t, 4))(0x331457212886F20AL, (VECTOR(int64_t, 2))(0x331457212886F20AL, 9L), 9L);
                    uint16_t *l_195[3][3][2] = {{{&l_122,(void*)0},{&l_122,(void*)0},{&l_122,(void*)0}},{{&l_122,(void*)0},{&l_122,(void*)0},{&l_122,(void*)0}},{{&l_122,(void*)0},{&l_122,(void*)0},{&l_122,(void*)0}}};
                    int32_t l_196[9] = {0x6DF1D7F7L,0x6DF1D7F7L,0x6DF1D7F7L,0x6DF1D7F7L,0x6DF1D7F7L,0x6DF1D7F7L,0x6DF1D7F7L,0x6DF1D7F7L,0x6DF1D7F7L};
                    uint64_t *l_204 = &p_984->g_87;
                    int32_t *l_206 = &p_984->g_106;
                    VECTOR(uint8_t, 4) l_220 = (VECTOR(uint8_t, 4))(0xB4L, (VECTOR(uint8_t, 2))(0xB4L, 0UL), 0UL);
                    uint16_t **l_222 = &p_984->g_221;
                    int32_t **l_237 = &l_203;
                    int32_t ***l_236 = &l_237;
                    uint16_t **l_240 = &l_195[0][0][1];
                    int i, j, k;
                    (*p_984->g_208) |= ((((VECTOR(uint16_t, 2))(max(((VECTOR(uint16_t, 2))(l_185.s64)), (uint16_t)(((VECTOR(int64_t, 2))(l_188.yw)).odd || (((*l_206) &= (safe_add_func_int16_t_s_s(((safe_mod_func_int32_t_s_s(((*p_984->g_104) = (safe_lshift_func_uint16_t_u_u((l_196[5] = 0x2BE2L), 11))), ((((safe_mul_func_uint16_t_u_u(l_199, ((VECTOR(uint16_t, 2))(0xF58AL, 65526UL)).hi)) , l_200) == &p_984->g_34) || l_158.se))) , ((safe_mod_func_uint64_t_u_u(((*l_204) = (((p_984->g_comm_values[p_984->tid] != (0x653036A6536C698EL || ((0xC01DFA8A07003B07L | p_54.f0) <= l_199))) , l_203) != (void*)0)), p_984->g_76.s5)) , l_205)), p_52))) == 0UL))))).odd <= 0x3685L) && l_207);
                    if ((atomic_inc(&p_984->l_atomic_input[40]) == 1))
                    { /* block id: 78 */
                        int32_t l_210 = 0x3894EB69L;
                        int32_t *l_209 = &l_210;
                        int32_t *l_211 = &l_210;
                        VECTOR(int32_t, 4) l_212 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x2B409C0AL), 0x2B409C0AL);
                        int32_t l_213 = 3L;
                        int i;
                        l_211 = l_209;
                        l_213 ^= ((VECTOR(int32_t, 16))(l_212.yyyzwwxzwxwxzwzz)).s9;
                        unsigned int result = 0;
                        result += l_210;
                        result += l_212.w;
                        result += l_212.z;
                        result += l_212.y;
                        result += l_212.x;
                        result += l_213;
                        atomic_add(&p_984->l_special_values[40], result);
                    }
                    else
                    { /* block id: 81 */
                        (1 + 1);
                    }
                }
            }
            l_415++;
        }
    }
    return l_332;
}


/* ------------------------------------------ */
/* 
 * reads : p_984->g_6 p_984->g_75 p_984->g_76 p_984->g_37 p_984->g_87 p_984->l_comm_values p_984->g_94 p_984->g_97 p_984->g_34.f0 p_984->g_98.f0 p_984->g_104 p_984->g_106
 * writes: p_984->g_6 p_984->g_34 p_984->g_87 p_984->g_75 p_984->g_37 p_984->g_97 p_984->g_102 p_984->g_104 p_984->g_106
 */
int8_t * func_55(uint8_t  p_56, int32_t  p_57, uint32_t  p_58, struct S3 * p_984)
{ /* block id: 13 */
    int16_t l_68 = 0x61E1L;
    int8_t *l_90 = &p_984->g_91;
    int32_t l_96[1][1][5] = {{{(-8L),(-8L),(-8L),(-8L),(-8L)}}};
    int32_t **l_103 = (void*)0;
    uint64_t *l_105 = &p_984->g_6;
    int32_t *l_107 = &l_96[0][0][4];
    int i, j, k;
    for (p_984->g_6 = 0; (p_984->g_6 < 3); p_984->g_6++)
    { /* block id: 16 */
        uint64_t *l_65[10][1][5] = {{{&p_984->g_6,&p_984->g_6,(void*)0,&p_984->g_6,(void*)0}},{{&p_984->g_6,&p_984->g_6,(void*)0,&p_984->g_6,(void*)0}},{{&p_984->g_6,&p_984->g_6,(void*)0,&p_984->g_6,(void*)0}},{{&p_984->g_6,&p_984->g_6,(void*)0,&p_984->g_6,(void*)0}},{{&p_984->g_6,&p_984->g_6,(void*)0,&p_984->g_6,(void*)0}},{{&p_984->g_6,&p_984->g_6,(void*)0,&p_984->g_6,(void*)0}},{{&p_984->g_6,&p_984->g_6,(void*)0,&p_984->g_6,(void*)0}},{{&p_984->g_6,&p_984->g_6,(void*)0,&p_984->g_6,(void*)0}},{{&p_984->g_6,&p_984->g_6,(void*)0,&p_984->g_6,(void*)0}},{{&p_984->g_6,&p_984->g_6,(void*)0,&p_984->g_6,(void*)0}}};
        int32_t l_89 = 0x314FBCE5L;
        int8_t **l_92 = &l_90;
        int8_t *l_93 = (void*)0;
        int32_t *l_95 = (void*)0;
        union U2 **l_99 = &p_984->g_97;
        union U2 *l_101 = (void*)0;
        union U2 **l_100[6][9][1] = {{{&l_101},{&l_101},{&l_101},{&l_101},{&l_101},{&l_101},{&l_101},{&l_101},{&l_101}},{{&l_101},{&l_101},{&l_101},{&l_101},{&l_101},{&l_101},{&l_101},{&l_101},{&l_101}},{{&l_101},{&l_101},{&l_101},{&l_101},{&l_101},{&l_101},{&l_101},{&l_101},{&l_101}},{{&l_101},{&l_101},{&l_101},{&l_101},{&l_101},{&l_101},{&l_101},{&l_101},{&l_101}},{{&l_101},{&l_101},{&l_101},{&l_101},{&l_101},{&l_101},{&l_101},{&l_101},{&l_101}},{{&l_101},{&l_101},{&l_101},{&l_101},{&l_101},{&l_101},{&l_101},{&l_101},{&l_101}}};
        int i, j, k;
        l_96[0][0][4] ^= (p_984->g_37 = (safe_sub_func_uint64_t_u_u((l_65[7][0][1] == (func_66(l_68, p_984) , (void*)0)), (2L ^ (((p_58 | ((((l_68 , (l_89 , ((((*l_92) = l_90) != l_93) , l_68))) , p_984->g_94) == 0x028AL) != p_984->g_76.s1)) && 0x38L) ^ 0x57360C0AL)))));
        p_984->g_102 = ((*l_99) = p_984->g_97);
        if (p_984->g_34.f0)
            break;
    }
    p_984->g_104 = &p_984->g_37;
    (*l_107) ^= (p_984->g_106 ^= ((*p_984->g_104) = (((p_984->g_98.f0 ^ 1UL) , (void*)0) == l_105)));
    return l_90;
}


/* ------------------------------------------ */
/* 
 * reads : p_984->g_75 p_984->g_76 p_984->g_37 p_984->g_87 p_984->l_comm_values
 * writes: p_984->g_34 p_984->g_87 p_984->g_75
 */
uint32_t  func_66(uint32_t  p_67, struct S3 * p_984)
{ /* block id: 17 */
    VECTOR(int32_t, 2) l_69 = (VECTOR(int32_t, 2))(0x79B03714L, 4L);
    VECTOR(int32_t, 16) l_70 = (VECTOR(int32_t, 16))(0x76FC58ACL, (VECTOR(int32_t, 4))(0x76FC58ACL, (VECTOR(int32_t, 2))(0x76FC58ACL, 0x4484A863L), 0x4484A863L), 0x4484A863L, 0x76FC58ACL, 0x4484A863L, (VECTOR(int32_t, 2))(0x76FC58ACL, 0x4484A863L), (VECTOR(int32_t, 2))(0x76FC58ACL, 0x4484A863L), 0x76FC58ACL, 0x4484A863L, 0x76FC58ACL, 0x4484A863L);
    VECTOR(int64_t, 2) l_77 = (VECTOR(int64_t, 2))((-1L), 0L);
    union U1 l_78 = {0x3634C778L};
    union U1 *l_79 = (void*)0;
    union U1 *l_80[8][4] = {{&l_78,&p_984->g_34,&l_78,&l_78},{&l_78,&p_984->g_34,&l_78,&l_78},{&l_78,&p_984->g_34,&l_78,&l_78},{&l_78,&p_984->g_34,&l_78,&l_78},{&l_78,&p_984->g_34,&l_78,&l_78},{&l_78,&p_984->g_34,&l_78,&l_78},{&l_78,&p_984->g_34,&l_78,&l_78},{&l_78,&p_984->g_34,&l_78,&l_78}};
    uint64_t *l_86 = &p_984->g_87;
    int32_t *l_88[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
    int i, j;
    p_984->g_75.s4 = ((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),int32_t,((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 8))(rotate(((VECTOR(int32_t, 16))(l_69.xyxyyyyyxyyyyxyx)).lo, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(1L, 0x3879B684L)))).xxxyyxyx))).s4111361615621011, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 16))(l_70.s074c89aed293e35f)).s20, (int32_t)(((((safe_add_func_uint64_t_u_u((safe_mod_func_int8_t_s_s(((((VECTOR(uint32_t, 8))(abs_diff(((VECTOR(int32_t, 2))(0L, 0x298A7B98L)).xxyxxyxx, ((VECTOR(int32_t, 8))(p_984->g_75.s72747031))))).s4 | 2UL) >= (0x3394L && 5UL)), l_69.x)), 1UL)) | 1UL) ^ p_67) , ((*l_86) ^= ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(sub_sat(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(0x8B2D29C6149AF408L, 1UL)).yyyx)))).hi, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(mad_hi(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(p_984->g_76.s5ad7cbc1)))).even)))).zxxyywwy, ((VECTOR(uint64_t, 2))(abs_diff(((VECTOR(uint64_t, 16))(clz(((VECTOR(uint64_t, 8))(abs(((VECTOR(int64_t, 8))(2L, 0x1B33B75CAB9BE056L, ((VECTOR(int64_t, 4))(max(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(l_77.xxxyxyxxyxxxxyyx)).odd)).s4111017035715150)).sad31, (int64_t)((p_984->g_34 = l_78) , (((safe_unary_minus_func_int64_t_s(((safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 4))((safe_mul_func_uint8_t_u_u(246UL, p_67)), 0x52L, (-3L), 0x70L)).w, 2)) < 0x78D6BFD6L))) | l_78.f0) <= p_984->g_37))))), 0L, (-1L)))))).s1026502170661057))).s21, ((VECTOR(uint64_t, 2))(18446744073709551612UL))))).xyxxxxxx, ((VECTOR(uint64_t, 8))(0x0E9B690C290A7FA1L))))))).s27))).yxxy)).zzwzzwwx)).s7)) ^ p_984->l_comm_values[(safe_mod_func_uint32_t_u_u(p_984->tid, 24))])))), ((VECTOR(int32_t, 4))((-1L))), 5L, 1L)).s11)).xxxxxyyxyyyxxxyy, ((VECTOR(int32_t, 16))(0x3BD11537L))))).sc3e8, (int32_t)p_984->g_75.s2, (int32_t)p_984->g_75.s3))).w;
    return p_67;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[51];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 51; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[51];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 51; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[24];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 24; i++)
            l_comm_values[i] = 1;
    struct S3 c_985;
    struct S3* p_984 = &c_985;
    struct S3 c_986 = {
        0UL, // p_984->g_6
        {0xCECCE005L}, // p_984->g_34
        6L, // p_984->g_37
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 1L), 1L), 1L, 1L, 1L), // p_984->g_75
        (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xA3B2FE4960898429L), 0xA3B2FE4960898429L), 0xA3B2FE4960898429L, 18446744073709551615UL, 0xA3B2FE4960898429L, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xA3B2FE4960898429L), (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xA3B2FE4960898429L), 18446744073709551615UL, 0xA3B2FE4960898429L, 18446744073709551615UL, 0xA3B2FE4960898429L), // p_984->g_76
        0x5ABE080F98811FBAL, // p_984->g_87
        (-1L), // p_984->g_91
        2UL, // p_984->g_94
        {0x5E7E0673044D6886L}, // p_984->g_98
        &p_984->g_98, // p_984->g_97
        &p_984->g_98, // p_984->g_102
        &p_984->g_37, // p_984->g_104
        0x1B0828E8L, // p_984->g_106
        (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-5L)), (-5L)), (-5L), 1L, (-5L), (VECTOR(int64_t, 2))(1L, (-5L)), (VECTOR(int64_t, 2))(1L, (-5L)), 1L, (-5L), 1L, (-5L)), // p_984->g_110
        {0xE73AF25CL}, // p_984->g_115
        0x5E220DBAL, // p_984->g_119
        &p_984->g_119, // p_984->g_208
        (void*)0, // p_984->g_221
        0x9483L, // p_984->g_224
        {{{&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224},{&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224},{&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224}},{{&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224},{&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224},{&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224}},{{&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224},{&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224},{&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224}},{{&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224},{&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224},{&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224,&p_984->g_224}}}, // p_984->g_223
        (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x204E7C17L), 0x204E7C17L), 0x204E7C17L, (-1L), 0x204E7C17L), // p_984->g_235
        {0L}, // p_984->g_258
        (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 8L), 8L), // p_984->g_266
        &p_984->g_34, // p_984->g_275
        &p_984->g_275, // p_984->g_274
        &p_984->g_275, // p_984->g_279
        &p_984->g_275, // p_984->g_280
        (VECTOR(uint8_t, 8))(0xF0L, (VECTOR(uint8_t, 4))(0xF0L, (VECTOR(uint8_t, 2))(0xF0L, 1UL), 1UL), 1UL, 0xF0L, 1UL), // p_984->g_316
        (VECTOR(int32_t, 16))(0x71AD50CBL, (VECTOR(int32_t, 4))(0x71AD50CBL, (VECTOR(int32_t, 2))(0x71AD50CBL, 0L), 0L), 0L, 0x71AD50CBL, 0L, (VECTOR(int32_t, 2))(0x71AD50CBL, 0L), (VECTOR(int32_t, 2))(0x71AD50CBL, 0L), 0x71AD50CBL, 0L, 0x71AD50CBL, 0L), // p_984->g_346
        (VECTOR(uint32_t, 2))(4294967294UL, 1UL), // p_984->g_348
        (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967292UL), 4294967292UL), 4294967292UL, 4294967295UL, 4294967292UL), // p_984->g_350
        (VECTOR(int32_t, 8))(6L, (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 0x68BBB4E7L), 0x68BBB4E7L), 0x68BBB4E7L, 6L, 0x68BBB4E7L), // p_984->g_355
        (VECTOR(int32_t, 2))(0x6F11BEB1L, 0x5EA8C491L), // p_984->g_356
        0L, // p_984->g_360
        &p_984->g_360, // p_984->g_359
        (void*)0, // p_984->g_374
        {0x65E9DA915E499DFDL}, // p_984->g_388
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x4AA97E13L), 0x4AA97E13L), 0x4AA97E13L, 1L, 0x4AA97E13L), // p_984->g_390
        (VECTOR(int32_t, 2))(0x5A3BFDC7L, 0x52201460L), // p_984->g_393
        (-1L), // p_984->g_427
        (VECTOR(int32_t, 4))(0x18A17154L, (VECTOR(int32_t, 2))(0x18A17154L, (-1L)), (-1L)), // p_984->g_431
        0xC2L, // p_984->g_432
        (void*)0, // p_984->g_487
        &p_984->g_487, // p_984->g_486
        0x395E772AL, // p_984->g_498
        0L, // p_984->g_503
        (VECTOR(int16_t, 8))(0x150DL, (VECTOR(int16_t, 4))(0x150DL, (VECTOR(int16_t, 2))(0x150DL, (-10L)), (-10L)), (-10L), 0x150DL, (-10L)), // p_984->g_511
        (VECTOR(uint16_t, 8))(0x444CL, (VECTOR(uint16_t, 4))(0x444CL, (VECTOR(uint16_t, 2))(0x444CL, 0x8317L), 0x8317L), 0x8317L, 0x444CL, 0x8317L), // p_984->g_525
        {&p_984->g_104,&p_984->g_104,&p_984->g_104,&p_984->g_104,&p_984->g_104,&p_984->g_104,&p_984->g_104,&p_984->g_104,&p_984->g_104}, // p_984->g_538
        &p_984->g_274, // p_984->g_545
        (void*)0, // p_984->g_579
        0xDEC2L, // p_984->g_599
        (VECTOR(uint32_t, 2))(0x1E0B520BL, 0xDEEEC761L), // p_984->g_636
        (VECTOR(uint16_t, 16))(65531UL, (VECTOR(uint16_t, 4))(65531UL, (VECTOR(uint16_t, 2))(65531UL, 1UL), 1UL), 1UL, 65531UL, 1UL, (VECTOR(uint16_t, 2))(65531UL, 1UL), (VECTOR(uint16_t, 2))(65531UL, 1UL), 65531UL, 1UL, 65531UL, 1UL), // p_984->g_661
        (VECTOR(uint16_t, 8))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x193AL), 0x193AL), 0x193AL, 65535UL, 0x193AL), // p_984->g_680
        1L, // p_984->g_688
        (VECTOR(int8_t, 8))(0x5EL, (VECTOR(int8_t, 4))(0x5EL, (VECTOR(int8_t, 2))(0x5EL, 1L), 1L), 1L, 0x5EL, 1L), // p_984->g_700
        (VECTOR(int8_t, 8))((-2L), (VECTOR(int8_t, 4))((-2L), (VECTOR(int8_t, 2))((-2L), 0x2AL), 0x2AL), 0x2AL, (-2L), 0x2AL), // p_984->g_701
        {18446744073709551607UL}, // p_984->g_703
        &p_984->g_432, // p_984->g_712
        &p_984->g_712, // p_984->g_711
        &p_984->g_115.f0, // p_984->g_713
        (VECTOR(uint32_t, 2))(0x785DA02AL, 0xBE3CE20CL), // p_984->g_716
        (void*)0, // p_984->g_725
        &p_984->g_104, // p_984->g_727
        (VECTOR(int64_t, 8))(5L, (VECTOR(int64_t, 4))(5L, (VECTOR(int64_t, 2))(5L, 0L), 0L), 0L, 5L, 0L), // p_984->g_730
        (void*)0, // p_984->g_733
        &p_984->g_102, // p_984->g_747
        &p_984->g_747, // p_984->g_746
        {&p_984->g_119,&p_984->g_119,&p_984->g_119,&p_984->g_119,&p_984->g_119,&p_984->g_119,&p_984->g_119,&p_984->g_119,&p_984->g_119}, // p_984->g_788
        {{{4L},{4L}},{{4L},{4L}}}, // p_984->g_797
        254UL, // p_984->g_827
        (VECTOR(int32_t, 16))(0x19CC8EA4L, (VECTOR(int32_t, 4))(0x19CC8EA4L, (VECTOR(int32_t, 2))(0x19CC8EA4L, (-6L)), (-6L)), (-6L), 0x19CC8EA4L, (-6L), (VECTOR(int32_t, 2))(0x19CC8EA4L, (-6L)), (VECTOR(int32_t, 2))(0x19CC8EA4L, (-6L)), 0x19CC8EA4L, (-6L), 0x19CC8EA4L, (-6L)), // p_984->g_844
        (void*)0, // p_984->g_864
        &p_984->g_725, // p_984->g_866
        (void*)0, // p_984->g_955
        (VECTOR(int64_t, 4))(6L, (VECTOR(int64_t, 2))(6L, 0x14657465442347D5L), 0x14657465442347D5L), // p_984->g_964
        255UL, // p_984->g_981
        0, // p_984->v_collective
        sequence_input[get_global_id(0)], // p_984->global_0_offset
        sequence_input[get_global_id(1)], // p_984->global_1_offset
        sequence_input[get_global_id(2)], // p_984->global_2_offset
        sequence_input[get_local_id(0)], // p_984->local_0_offset
        sequence_input[get_local_id(1)], // p_984->local_1_offset
        sequence_input[get_local_id(2)], // p_984->local_2_offset
        sequence_input[get_group_id(0)], // p_984->group_0_offset
        sequence_input[get_group_id(1)], // p_984->group_1_offset
        sequence_input[get_group_id(2)], // p_984->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 24)), permutations[0][get_linear_local_id()])), // p_984->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_985 = c_986;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_984);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_984->g_6, "p_984->g_6", print_hash_value);
    transparent_crc(p_984->g_37, "p_984->g_37", print_hash_value);
    transparent_crc(p_984->g_75.s0, "p_984->g_75.s0", print_hash_value);
    transparent_crc(p_984->g_75.s1, "p_984->g_75.s1", print_hash_value);
    transparent_crc(p_984->g_75.s2, "p_984->g_75.s2", print_hash_value);
    transparent_crc(p_984->g_75.s3, "p_984->g_75.s3", print_hash_value);
    transparent_crc(p_984->g_75.s4, "p_984->g_75.s4", print_hash_value);
    transparent_crc(p_984->g_75.s5, "p_984->g_75.s5", print_hash_value);
    transparent_crc(p_984->g_75.s6, "p_984->g_75.s6", print_hash_value);
    transparent_crc(p_984->g_75.s7, "p_984->g_75.s7", print_hash_value);
    transparent_crc(p_984->g_76.s0, "p_984->g_76.s0", print_hash_value);
    transparent_crc(p_984->g_76.s1, "p_984->g_76.s1", print_hash_value);
    transparent_crc(p_984->g_76.s2, "p_984->g_76.s2", print_hash_value);
    transparent_crc(p_984->g_76.s3, "p_984->g_76.s3", print_hash_value);
    transparent_crc(p_984->g_76.s4, "p_984->g_76.s4", print_hash_value);
    transparent_crc(p_984->g_76.s5, "p_984->g_76.s5", print_hash_value);
    transparent_crc(p_984->g_76.s6, "p_984->g_76.s6", print_hash_value);
    transparent_crc(p_984->g_76.s7, "p_984->g_76.s7", print_hash_value);
    transparent_crc(p_984->g_76.s8, "p_984->g_76.s8", print_hash_value);
    transparent_crc(p_984->g_76.s9, "p_984->g_76.s9", print_hash_value);
    transparent_crc(p_984->g_76.sa, "p_984->g_76.sa", print_hash_value);
    transparent_crc(p_984->g_76.sb, "p_984->g_76.sb", print_hash_value);
    transparent_crc(p_984->g_76.sc, "p_984->g_76.sc", print_hash_value);
    transparent_crc(p_984->g_76.sd, "p_984->g_76.sd", print_hash_value);
    transparent_crc(p_984->g_76.se, "p_984->g_76.se", print_hash_value);
    transparent_crc(p_984->g_76.sf, "p_984->g_76.sf", print_hash_value);
    transparent_crc(p_984->g_87, "p_984->g_87", print_hash_value);
    transparent_crc(p_984->g_91, "p_984->g_91", print_hash_value);
    transparent_crc(p_984->g_94, "p_984->g_94", print_hash_value);
    transparent_crc(p_984->g_106, "p_984->g_106", print_hash_value);
    transparent_crc(p_984->g_110.s0, "p_984->g_110.s0", print_hash_value);
    transparent_crc(p_984->g_110.s1, "p_984->g_110.s1", print_hash_value);
    transparent_crc(p_984->g_110.s2, "p_984->g_110.s2", print_hash_value);
    transparent_crc(p_984->g_110.s3, "p_984->g_110.s3", print_hash_value);
    transparent_crc(p_984->g_110.s4, "p_984->g_110.s4", print_hash_value);
    transparent_crc(p_984->g_110.s5, "p_984->g_110.s5", print_hash_value);
    transparent_crc(p_984->g_110.s6, "p_984->g_110.s6", print_hash_value);
    transparent_crc(p_984->g_110.s7, "p_984->g_110.s7", print_hash_value);
    transparent_crc(p_984->g_110.s8, "p_984->g_110.s8", print_hash_value);
    transparent_crc(p_984->g_110.s9, "p_984->g_110.s9", print_hash_value);
    transparent_crc(p_984->g_110.sa, "p_984->g_110.sa", print_hash_value);
    transparent_crc(p_984->g_110.sb, "p_984->g_110.sb", print_hash_value);
    transparent_crc(p_984->g_110.sc, "p_984->g_110.sc", print_hash_value);
    transparent_crc(p_984->g_110.sd, "p_984->g_110.sd", print_hash_value);
    transparent_crc(p_984->g_110.se, "p_984->g_110.se", print_hash_value);
    transparent_crc(p_984->g_110.sf, "p_984->g_110.sf", print_hash_value);
    transparent_crc(p_984->g_119, "p_984->g_119", print_hash_value);
    transparent_crc(p_984->g_224, "p_984->g_224", print_hash_value);
    transparent_crc(p_984->g_235.s0, "p_984->g_235.s0", print_hash_value);
    transparent_crc(p_984->g_235.s1, "p_984->g_235.s1", print_hash_value);
    transparent_crc(p_984->g_235.s2, "p_984->g_235.s2", print_hash_value);
    transparent_crc(p_984->g_235.s3, "p_984->g_235.s3", print_hash_value);
    transparent_crc(p_984->g_235.s4, "p_984->g_235.s4", print_hash_value);
    transparent_crc(p_984->g_235.s5, "p_984->g_235.s5", print_hash_value);
    transparent_crc(p_984->g_235.s6, "p_984->g_235.s6", print_hash_value);
    transparent_crc(p_984->g_235.s7, "p_984->g_235.s7", print_hash_value);
    transparent_crc(p_984->g_258.f0, "p_984->g_258.f0", print_hash_value);
    transparent_crc(p_984->g_266.x, "p_984->g_266.x", print_hash_value);
    transparent_crc(p_984->g_266.y, "p_984->g_266.y", print_hash_value);
    transparent_crc(p_984->g_266.z, "p_984->g_266.z", print_hash_value);
    transparent_crc(p_984->g_266.w, "p_984->g_266.w", print_hash_value);
    transparent_crc(p_984->g_316.s0, "p_984->g_316.s0", print_hash_value);
    transparent_crc(p_984->g_316.s1, "p_984->g_316.s1", print_hash_value);
    transparent_crc(p_984->g_316.s2, "p_984->g_316.s2", print_hash_value);
    transparent_crc(p_984->g_316.s3, "p_984->g_316.s3", print_hash_value);
    transparent_crc(p_984->g_316.s4, "p_984->g_316.s4", print_hash_value);
    transparent_crc(p_984->g_316.s5, "p_984->g_316.s5", print_hash_value);
    transparent_crc(p_984->g_316.s6, "p_984->g_316.s6", print_hash_value);
    transparent_crc(p_984->g_316.s7, "p_984->g_316.s7", print_hash_value);
    transparent_crc(p_984->g_346.s0, "p_984->g_346.s0", print_hash_value);
    transparent_crc(p_984->g_346.s1, "p_984->g_346.s1", print_hash_value);
    transparent_crc(p_984->g_346.s2, "p_984->g_346.s2", print_hash_value);
    transparent_crc(p_984->g_346.s3, "p_984->g_346.s3", print_hash_value);
    transparent_crc(p_984->g_346.s4, "p_984->g_346.s4", print_hash_value);
    transparent_crc(p_984->g_346.s5, "p_984->g_346.s5", print_hash_value);
    transparent_crc(p_984->g_346.s6, "p_984->g_346.s6", print_hash_value);
    transparent_crc(p_984->g_346.s7, "p_984->g_346.s7", print_hash_value);
    transparent_crc(p_984->g_346.s8, "p_984->g_346.s8", print_hash_value);
    transparent_crc(p_984->g_346.s9, "p_984->g_346.s9", print_hash_value);
    transparent_crc(p_984->g_346.sa, "p_984->g_346.sa", print_hash_value);
    transparent_crc(p_984->g_346.sb, "p_984->g_346.sb", print_hash_value);
    transparent_crc(p_984->g_346.sc, "p_984->g_346.sc", print_hash_value);
    transparent_crc(p_984->g_346.sd, "p_984->g_346.sd", print_hash_value);
    transparent_crc(p_984->g_346.se, "p_984->g_346.se", print_hash_value);
    transparent_crc(p_984->g_346.sf, "p_984->g_346.sf", print_hash_value);
    transparent_crc(p_984->g_348.x, "p_984->g_348.x", print_hash_value);
    transparent_crc(p_984->g_348.y, "p_984->g_348.y", print_hash_value);
    transparent_crc(p_984->g_350.s0, "p_984->g_350.s0", print_hash_value);
    transparent_crc(p_984->g_350.s1, "p_984->g_350.s1", print_hash_value);
    transparent_crc(p_984->g_350.s2, "p_984->g_350.s2", print_hash_value);
    transparent_crc(p_984->g_350.s3, "p_984->g_350.s3", print_hash_value);
    transparent_crc(p_984->g_350.s4, "p_984->g_350.s4", print_hash_value);
    transparent_crc(p_984->g_350.s5, "p_984->g_350.s5", print_hash_value);
    transparent_crc(p_984->g_350.s6, "p_984->g_350.s6", print_hash_value);
    transparent_crc(p_984->g_350.s7, "p_984->g_350.s7", print_hash_value);
    transparent_crc(p_984->g_355.s0, "p_984->g_355.s0", print_hash_value);
    transparent_crc(p_984->g_355.s1, "p_984->g_355.s1", print_hash_value);
    transparent_crc(p_984->g_355.s2, "p_984->g_355.s2", print_hash_value);
    transparent_crc(p_984->g_355.s3, "p_984->g_355.s3", print_hash_value);
    transparent_crc(p_984->g_355.s4, "p_984->g_355.s4", print_hash_value);
    transparent_crc(p_984->g_355.s5, "p_984->g_355.s5", print_hash_value);
    transparent_crc(p_984->g_355.s6, "p_984->g_355.s6", print_hash_value);
    transparent_crc(p_984->g_355.s7, "p_984->g_355.s7", print_hash_value);
    transparent_crc(p_984->g_356.x, "p_984->g_356.x", print_hash_value);
    transparent_crc(p_984->g_356.y, "p_984->g_356.y", print_hash_value);
    transparent_crc(p_984->g_360, "p_984->g_360", print_hash_value);
    transparent_crc(p_984->g_388.f0, "p_984->g_388.f0", print_hash_value);
    transparent_crc(p_984->g_390.s0, "p_984->g_390.s0", print_hash_value);
    transparent_crc(p_984->g_390.s1, "p_984->g_390.s1", print_hash_value);
    transparent_crc(p_984->g_390.s2, "p_984->g_390.s2", print_hash_value);
    transparent_crc(p_984->g_390.s3, "p_984->g_390.s3", print_hash_value);
    transparent_crc(p_984->g_390.s4, "p_984->g_390.s4", print_hash_value);
    transparent_crc(p_984->g_390.s5, "p_984->g_390.s5", print_hash_value);
    transparent_crc(p_984->g_390.s6, "p_984->g_390.s6", print_hash_value);
    transparent_crc(p_984->g_390.s7, "p_984->g_390.s7", print_hash_value);
    transparent_crc(p_984->g_393.x, "p_984->g_393.x", print_hash_value);
    transparent_crc(p_984->g_393.y, "p_984->g_393.y", print_hash_value);
    transparent_crc(p_984->g_427, "p_984->g_427", print_hash_value);
    transparent_crc(p_984->g_431.x, "p_984->g_431.x", print_hash_value);
    transparent_crc(p_984->g_431.y, "p_984->g_431.y", print_hash_value);
    transparent_crc(p_984->g_431.z, "p_984->g_431.z", print_hash_value);
    transparent_crc(p_984->g_431.w, "p_984->g_431.w", print_hash_value);
    transparent_crc(p_984->g_432, "p_984->g_432", print_hash_value);
    transparent_crc(p_984->g_498, "p_984->g_498", print_hash_value);
    transparent_crc(p_984->g_503, "p_984->g_503", print_hash_value);
    transparent_crc(p_984->g_511.s0, "p_984->g_511.s0", print_hash_value);
    transparent_crc(p_984->g_511.s1, "p_984->g_511.s1", print_hash_value);
    transparent_crc(p_984->g_511.s2, "p_984->g_511.s2", print_hash_value);
    transparent_crc(p_984->g_511.s3, "p_984->g_511.s3", print_hash_value);
    transparent_crc(p_984->g_511.s4, "p_984->g_511.s4", print_hash_value);
    transparent_crc(p_984->g_511.s5, "p_984->g_511.s5", print_hash_value);
    transparent_crc(p_984->g_511.s6, "p_984->g_511.s6", print_hash_value);
    transparent_crc(p_984->g_511.s7, "p_984->g_511.s7", print_hash_value);
    transparent_crc(p_984->g_525.s0, "p_984->g_525.s0", print_hash_value);
    transparent_crc(p_984->g_525.s1, "p_984->g_525.s1", print_hash_value);
    transparent_crc(p_984->g_525.s2, "p_984->g_525.s2", print_hash_value);
    transparent_crc(p_984->g_525.s3, "p_984->g_525.s3", print_hash_value);
    transparent_crc(p_984->g_525.s4, "p_984->g_525.s4", print_hash_value);
    transparent_crc(p_984->g_525.s5, "p_984->g_525.s5", print_hash_value);
    transparent_crc(p_984->g_525.s6, "p_984->g_525.s6", print_hash_value);
    transparent_crc(p_984->g_525.s7, "p_984->g_525.s7", print_hash_value);
    transparent_crc(p_984->g_599, "p_984->g_599", print_hash_value);
    transparent_crc(p_984->g_636.x, "p_984->g_636.x", print_hash_value);
    transparent_crc(p_984->g_636.y, "p_984->g_636.y", print_hash_value);
    transparent_crc(p_984->g_661.s0, "p_984->g_661.s0", print_hash_value);
    transparent_crc(p_984->g_661.s1, "p_984->g_661.s1", print_hash_value);
    transparent_crc(p_984->g_661.s2, "p_984->g_661.s2", print_hash_value);
    transparent_crc(p_984->g_661.s3, "p_984->g_661.s3", print_hash_value);
    transparent_crc(p_984->g_661.s4, "p_984->g_661.s4", print_hash_value);
    transparent_crc(p_984->g_661.s5, "p_984->g_661.s5", print_hash_value);
    transparent_crc(p_984->g_661.s6, "p_984->g_661.s6", print_hash_value);
    transparent_crc(p_984->g_661.s7, "p_984->g_661.s7", print_hash_value);
    transparent_crc(p_984->g_661.s8, "p_984->g_661.s8", print_hash_value);
    transparent_crc(p_984->g_661.s9, "p_984->g_661.s9", print_hash_value);
    transparent_crc(p_984->g_661.sa, "p_984->g_661.sa", print_hash_value);
    transparent_crc(p_984->g_661.sb, "p_984->g_661.sb", print_hash_value);
    transparent_crc(p_984->g_661.sc, "p_984->g_661.sc", print_hash_value);
    transparent_crc(p_984->g_661.sd, "p_984->g_661.sd", print_hash_value);
    transparent_crc(p_984->g_661.se, "p_984->g_661.se", print_hash_value);
    transparent_crc(p_984->g_661.sf, "p_984->g_661.sf", print_hash_value);
    transparent_crc(p_984->g_680.s0, "p_984->g_680.s0", print_hash_value);
    transparent_crc(p_984->g_680.s1, "p_984->g_680.s1", print_hash_value);
    transparent_crc(p_984->g_680.s2, "p_984->g_680.s2", print_hash_value);
    transparent_crc(p_984->g_680.s3, "p_984->g_680.s3", print_hash_value);
    transparent_crc(p_984->g_680.s4, "p_984->g_680.s4", print_hash_value);
    transparent_crc(p_984->g_680.s5, "p_984->g_680.s5", print_hash_value);
    transparent_crc(p_984->g_680.s6, "p_984->g_680.s6", print_hash_value);
    transparent_crc(p_984->g_680.s7, "p_984->g_680.s7", print_hash_value);
    transparent_crc(p_984->g_688, "p_984->g_688", print_hash_value);
    transparent_crc(p_984->g_700.s0, "p_984->g_700.s0", print_hash_value);
    transparent_crc(p_984->g_700.s1, "p_984->g_700.s1", print_hash_value);
    transparent_crc(p_984->g_700.s2, "p_984->g_700.s2", print_hash_value);
    transparent_crc(p_984->g_700.s3, "p_984->g_700.s3", print_hash_value);
    transparent_crc(p_984->g_700.s4, "p_984->g_700.s4", print_hash_value);
    transparent_crc(p_984->g_700.s5, "p_984->g_700.s5", print_hash_value);
    transparent_crc(p_984->g_700.s6, "p_984->g_700.s6", print_hash_value);
    transparent_crc(p_984->g_700.s7, "p_984->g_700.s7", print_hash_value);
    transparent_crc(p_984->g_701.s0, "p_984->g_701.s0", print_hash_value);
    transparent_crc(p_984->g_701.s1, "p_984->g_701.s1", print_hash_value);
    transparent_crc(p_984->g_701.s2, "p_984->g_701.s2", print_hash_value);
    transparent_crc(p_984->g_701.s3, "p_984->g_701.s3", print_hash_value);
    transparent_crc(p_984->g_701.s4, "p_984->g_701.s4", print_hash_value);
    transparent_crc(p_984->g_701.s5, "p_984->g_701.s5", print_hash_value);
    transparent_crc(p_984->g_701.s6, "p_984->g_701.s6", print_hash_value);
    transparent_crc(p_984->g_701.s7, "p_984->g_701.s7", print_hash_value);
    transparent_crc(p_984->g_703.f0, "p_984->g_703.f0", print_hash_value);
    transparent_crc(p_984->g_716.x, "p_984->g_716.x", print_hash_value);
    transparent_crc(p_984->g_716.y, "p_984->g_716.y", print_hash_value);
    transparent_crc(p_984->g_730.s0, "p_984->g_730.s0", print_hash_value);
    transparent_crc(p_984->g_730.s1, "p_984->g_730.s1", print_hash_value);
    transparent_crc(p_984->g_730.s2, "p_984->g_730.s2", print_hash_value);
    transparent_crc(p_984->g_730.s3, "p_984->g_730.s3", print_hash_value);
    transparent_crc(p_984->g_730.s4, "p_984->g_730.s4", print_hash_value);
    transparent_crc(p_984->g_730.s5, "p_984->g_730.s5", print_hash_value);
    transparent_crc(p_984->g_730.s6, "p_984->g_730.s6", print_hash_value);
    transparent_crc(p_984->g_730.s7, "p_984->g_730.s7", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_984->g_797[i][j].f0, "p_984->g_797[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_984->g_827, "p_984->g_827", print_hash_value);
    transparent_crc(p_984->g_844.s0, "p_984->g_844.s0", print_hash_value);
    transparent_crc(p_984->g_844.s1, "p_984->g_844.s1", print_hash_value);
    transparent_crc(p_984->g_844.s2, "p_984->g_844.s2", print_hash_value);
    transparent_crc(p_984->g_844.s3, "p_984->g_844.s3", print_hash_value);
    transparent_crc(p_984->g_844.s4, "p_984->g_844.s4", print_hash_value);
    transparent_crc(p_984->g_844.s5, "p_984->g_844.s5", print_hash_value);
    transparent_crc(p_984->g_844.s6, "p_984->g_844.s6", print_hash_value);
    transparent_crc(p_984->g_844.s7, "p_984->g_844.s7", print_hash_value);
    transparent_crc(p_984->g_844.s8, "p_984->g_844.s8", print_hash_value);
    transparent_crc(p_984->g_844.s9, "p_984->g_844.s9", print_hash_value);
    transparent_crc(p_984->g_844.sa, "p_984->g_844.sa", print_hash_value);
    transparent_crc(p_984->g_844.sb, "p_984->g_844.sb", print_hash_value);
    transparent_crc(p_984->g_844.sc, "p_984->g_844.sc", print_hash_value);
    transparent_crc(p_984->g_844.sd, "p_984->g_844.sd", print_hash_value);
    transparent_crc(p_984->g_844.se, "p_984->g_844.se", print_hash_value);
    transparent_crc(p_984->g_844.sf, "p_984->g_844.sf", print_hash_value);
    transparent_crc(p_984->g_964.x, "p_984->g_964.x", print_hash_value);
    transparent_crc(p_984->g_964.y, "p_984->g_964.y", print_hash_value);
    transparent_crc(p_984->g_964.z, "p_984->g_964.z", print_hash_value);
    transparent_crc(p_984->g_964.w, "p_984->g_964.w", print_hash_value);
    transparent_crc(p_984->g_981, "p_984->g_981", print_hash_value);
    transparent_crc(p_984->v_collective, "p_984->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 51; i++)
            transparent_crc(p_984->g_special_values[i + 51 * get_linear_group_id()], "p_984->g_special_values[i + 51 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 51; i++)
            transparent_crc(p_984->l_special_values[i], "p_984->l_special_values[i]", print_hash_value);
    transparent_crc(p_984->l_comm_values[get_linear_local_id()], "p_984->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_984->g_comm_values[get_linear_group_id() * 24 + get_linear_local_id()], "p_984->g_comm_values[get_linear_group_id() * 24 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
