// ---atomic_reductions ---fake_divergence -g 22,59,4 -l 2,1,1
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


// Seed: 35

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint32_t  f0;
   volatile uint32_t  f1;
};

union U1 {
   int64_t  f0;
};

union U2 {
   int64_t  f0;
   uint64_t  f1;
};

struct S3 {
    volatile int64_t g_2;
    uint16_t g_16;
    uint16_t g_45;
    int32_t *g_62;
    int8_t g_72;
    int32_t g_75;
    int64_t g_77[6];
    int32_t g_78[4];
    uint16_t g_79;
    union U2 g_90;
    int32_t g_92;
    uint8_t g_136;
    union U2 *g_140;
    union U2 **g_139[9][5];
    union U0 g_143;
    union U0 g_144;
    union U0 g_146;
    union U0 g_148;
    union U0 *g_147;
    int16_t g_154;
    int16_t g_155[9][5];
    int32_t g_156;
    uint32_t g_160[4];
    uint8_t g_229;
    union U0 g_248;
    uint16_t g_275;
    uint64_t g_330[9];
    uint8_t *g_336;
    uint8_t **g_335;
    uint8_t ***g_334[4][7];
    int32_t *g_361;
    uint64_t *g_381[5];
    uint64_t **g_380;
    union U0 g_397[3];
    union U0 g_402;
    union U0 g_403;
    uint16_t *g_424;
    uint16_t **g_423;
    uint32_t g_448;
    uint32_t g_456;
    uint16_t g_487;
    uint64_t g_525;
    uint16_t g_573;
    int64_t g_608;
    volatile uint16_t g_610;
    volatile uint16_t *g_609;
    uint64_t g_624[10][5][2];
    volatile uint32_t *g_626;
    volatile uint32_t **g_625[9];
    int32_t ** volatile g_647;
    int32_t ** volatile g_649[8];
    uint16_t **g_742;
    union U1 g_844;
    union U1 *g_846;
    union U1 ** volatile g_868;
    uint32_t *g_919[2];
    uint32_t **g_918;
    uint32_t ***g_917[6];
    union U1 ** volatile g_935;
    int64_t *g_963;
    int64_t *g_964[2];
    uint64_t *g_968;
    uint64_t * volatile *g_967;
    union U1 ** volatile g_1046;
    volatile union U0 g_1064;
    union U0 g_1091;
    int16_t g_1103;
    int32_t g_1148;
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
int32_t  func_1(struct S3 * p_1149);
int64_t  func_4(int16_t  p_5, int32_t  p_6, struct S3 * p_1149);
int16_t  func_11(uint16_t  p_12, uint64_t  p_13, int64_t  p_14, uint32_t  p_15, struct S3 * p_1149);
uint64_t  func_17(union U2  p_18, uint32_t  p_19, union U2  p_20, union U2  p_21, uint32_t  p_22, struct S3 * p_1149);
union U2  func_23(int16_t  p_24, uint32_t  p_25, uint32_t  p_26, union U2  p_27, uint16_t  p_28, struct S3 * p_1149);
uint8_t  func_31(int64_t  p_32, uint8_t  p_33, union U2  p_34, uint16_t  p_35, int64_t  p_36, struct S3 * p_1149);
uint8_t  func_37(uint32_t  p_38, uint16_t  p_39, int64_t  p_40, uint16_t  p_41, int64_t  p_42, struct S3 * p_1149);
int32_t * func_46(int32_t * p_47, int32_t * p_48, int32_t  p_49, uint32_t  p_50, struct S3 * p_1149);
int32_t * func_51(int32_t * p_52, int32_t * p_53, int8_t  p_54, uint64_t  p_55, struct S3 * p_1149);
int32_t * func_56(int32_t * p_57, int32_t * p_58, union U2  p_59, uint32_t  p_60, struct S3 * p_1149);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1149->g_2 p_1149->g_16 p_1149->g_62 p_1149->g_45 p_1149->g_79 p_1149->g_75 p_1149->g_146.f0 p_1149->g_160 p_1149->g_229 p_1149->g_156 p_1149->g_72 p_1149->g_77 p_1149->g_92 p_1149->g_143.f0 p_1149->g_275 p_1149->g_136 p_1149->g_90.f0 p_1149->g_456 p_1149->g_573 p_1149->g_525 p_1149->g_144.f0 p_1149->g_139 p_1149->g_380 p_1149->g_381 p_1149->g_78 p_1149->g_330 p_1149->g_361 p_1149->g_423 p_1149->g_609 p_1149->g_402.f0 p_1149->g_624 p_1149->g_148.f0 p_1149->g_625 p_1149->g_610 p_1149->g_397.f0 p_1149->g_742 p_1149->g_335 p_1149->g_155 p_1149->g_424 p_1149->g_154 p_1149->g_844 p_1149->g_868 p_1149->g_90.f1 p_1149->g_147 p_1149->g_148 p_1149->g_917 p_1149->g_967 p_1149->g_963 p_1149->g_1046 p_1149->g_1064 p_1149->g_1091 p_1149->g_918 p_1149->g_919 p_1149->g_844.f0 p_1149->g_1103 p_1149->g_1091.f0 p_1149->g_968 p_1149->g_336 p_1149->g_248.f0 p_1149->g_1148
 * writes: p_1149->g_45 p_1149->g_72 p_1149->g_79 p_1149->g_62 p_1149->g_75 p_1149->g_140 p_1149->g_229 p_1149->g_275 p_1149->g_136 p_1149->g_155 p_1149->g_154 p_1149->g_573 p_1149->g_156 p_1149->g_424 p_1149->g_608 p_1149->g_330 p_1149->g_77 p_1149->g_624 p_1149->g_625 p_1149->g_90.f0 p_1149->g_361 p_1149->g_456 p_1149->g_448 p_1149->g_144.f0 p_1149->g_78 p_1149->g_423 p_1149->g_336 p_1149->g_146.f0 p_1149->g_160 p_1149->g_846 p_1149->g_402.f0 p_1149->g_90.f1 p_1149->g_963 p_1149->g_964 p_1149->g_334 p_1149->g_16 p_1149->g_248.f0 p_1149->g_1148
 */
int32_t  func_1(struct S3 * p_1149)
{ /* block id: 4 */
    int32_t l_3 = 0x7909B792L;
    union U2 l_233 = {0x03DD29CAD3B19451L};
    union U2 l_279 = {0L};
    uint64_t *l_623[3];
    int32_t l_1146 = 0x72D0FDECL;
    int32_t *l_1147 = &p_1149->g_1148;
    int i;
    for (i = 0; i < 3; i++)
        l_623[i] = &p_1149->g_624[9][4][1];
    l_3 ^= p_1149->g_2;
    (*l_1147) ^= (l_3 & (l_1146 = func_4((l_3 || l_3), ((safe_add_func_int64_t_s_s(p_1149->g_2, (safe_lshift_func_int16_t_s_s(func_11(p_1149->g_16, (p_1149->g_624[0][1][1] ^= func_17(func_23((safe_mul_func_uint8_t_u_u(func_31(((FAKE_DIVERGE(p_1149->local_1_offset, get_local_id(1), 10) || (l_3 >= (func_37(l_3, ((safe_mod_func_uint16_t_u_u((p_1149->g_45 = p_1149->g_16), 65535UL)) < p_1149->g_16), l_3, l_3, l_3, p_1149) , p_1149->g_72))) , p_1149->g_77[3]), p_1149->g_146.f0, l_233, l_233.f0, l_233.f0, p_1149), p_1149->g_143.f0)), l_3, l_3, l_233, l_233.f0, p_1149), p_1149->g_136, l_279, l_279, p_1149->g_143.f0, p_1149)), p_1149->g_148.f0, l_3, p_1149), l_233.f0)))) >= 0x0D6A1A69L), p_1149)));
    return p_1149->g_610;
}


/* ------------------------------------------ */
/* 
 * reads : p_1149->g_62 p_1149->g_156 p_1149->g_92 p_1149->g_361 p_1149->g_72 p_1149->g_573 p_1149->g_609 p_1149->g_610 p_1149->g_397.f0 p_1149->g_380 p_1149->g_381 p_1149->g_330 p_1149->g_90.f0 p_1149->g_144.f0 p_1149->g_77 p_1149->g_275 p_1149->g_456 p_1149->g_45 p_1149->g_79 p_1149->g_624 p_1149->g_742 p_1149->g_335 p_1149->g_146.f0 p_1149->g_155 p_1149->g_424 p_1149->g_16 p_1149->g_229 p_1149->g_154 p_1149->g_423 p_1149->g_844 p_1149->g_143.f0 p_1149->g_75 p_1149->g_402.f0 p_1149->g_868 p_1149->g_90.f1 p_1149->g_147 p_1149->g_148 p_1149->g_917 p_1149->g_967 p_1149->g_136 p_1149->g_963 p_1149->g_78 p_1149->g_525 p_1149->g_1046 p_1149->g_1064 p_1149->g_1091 p_1149->g_918 p_1149->g_919 p_1149->g_160 p_1149->g_844.f0 p_1149->g_1103 p_1149->g_1091.f0 p_1149->g_968 p_1149->g_336 p_1149->g_248.f0
 * writes: p_1149->g_361 p_1149->g_156 p_1149->g_72 p_1149->g_573 p_1149->g_154 p_1149->g_155 p_1149->g_45 p_1149->g_456 p_1149->g_448 p_1149->g_229 p_1149->g_79 p_1149->g_144.f0 p_1149->g_78 p_1149->g_77 p_1149->g_423 p_1149->g_336 p_1149->g_608 p_1149->g_146.f0 p_1149->g_275 p_1149->g_136 p_1149->g_160 p_1149->g_424 p_1149->g_846 p_1149->g_62 p_1149->g_75 p_1149->g_402.f0 p_1149->g_90.f1 p_1149->g_330 p_1149->g_963 p_1149->g_964 p_1149->g_334 p_1149->g_16 p_1149->g_90.f0 p_1149->g_248.f0
 */
int64_t  func_4(int16_t  p_5, int32_t  p_6, struct S3 * p_1149)
{ /* block id: 331 */
    int32_t **l_648 = (void*)0;
    int32_t **l_650 = &p_1149->g_361;
    int64_t *l_656 = (void*)0;
    uint64_t **l_692 = &p_1149->g_381[0];
    int32_t l_712 = 7L;
    union U0 *l_716[7][5] = {{&p_1149->g_397[1],&p_1149->g_144,&p_1149->g_397[1],&p_1149->g_397[1],&p_1149->g_144},{&p_1149->g_397[1],&p_1149->g_144,&p_1149->g_397[1],&p_1149->g_397[1],&p_1149->g_144},{&p_1149->g_397[1],&p_1149->g_144,&p_1149->g_397[1],&p_1149->g_397[1],&p_1149->g_144},{&p_1149->g_397[1],&p_1149->g_144,&p_1149->g_397[1],&p_1149->g_397[1],&p_1149->g_144},{&p_1149->g_397[1],&p_1149->g_144,&p_1149->g_397[1],&p_1149->g_397[1],&p_1149->g_144},{&p_1149->g_397[1],&p_1149->g_144,&p_1149->g_397[1],&p_1149->g_397[1],&p_1149->g_144},{&p_1149->g_397[1],&p_1149->g_144,&p_1149->g_397[1],&p_1149->g_397[1],&p_1149->g_144}};
    int32_t *l_737 = &l_712;
    uint16_t **l_740 = &p_1149->g_424;
    uint64_t *l_812[2][2][10] = {{{(void*)0,&p_1149->g_624[9][4][1],(void*)0,(void*)0,&p_1149->g_624[9][4][1],(void*)0,(void*)0,&p_1149->g_624[9][4][1],(void*)0,(void*)0},{(void*)0,&p_1149->g_624[9][4][1],(void*)0,(void*)0,&p_1149->g_624[9][4][1],(void*)0,(void*)0,&p_1149->g_624[9][4][1],(void*)0,(void*)0}},{{(void*)0,&p_1149->g_624[9][4][1],(void*)0,(void*)0,&p_1149->g_624[9][4][1],(void*)0,(void*)0,&p_1149->g_624[9][4][1],(void*)0,(void*)0},{(void*)0,&p_1149->g_624[9][4][1],(void*)0,(void*)0,&p_1149->g_624[9][4][1],(void*)0,(void*)0,&p_1149->g_624[9][4][1],(void*)0,(void*)0}}};
    uint64_t **l_811 = &l_812[0][1][4];
    uint32_t l_816 = 0xB622B762L;
    int32_t l_901 = (-4L);
    int32_t l_904 = 0x274EF77DL;
    int32_t l_905[5][7][5] = {{{(-1L),4L,(-1L),0x6E7B47ADL,4L},{(-1L),4L,(-1L),0x6E7B47ADL,4L},{(-1L),4L,(-1L),0x6E7B47ADL,4L},{(-1L),4L,(-1L),0x6E7B47ADL,4L},{(-1L),4L,(-1L),0x6E7B47ADL,4L},{(-1L),4L,(-1L),0x6E7B47ADL,4L},{(-1L),4L,(-1L),0x6E7B47ADL,4L}},{{(-1L),4L,(-1L),0x6E7B47ADL,4L},{(-1L),4L,(-1L),0x6E7B47ADL,4L},{(-1L),4L,(-1L),0x6E7B47ADL,4L},{(-1L),4L,(-1L),0x6E7B47ADL,4L},{(-1L),4L,(-1L),0x6E7B47ADL,4L},{(-1L),4L,(-1L),0x6E7B47ADL,4L},{(-1L),4L,(-1L),0x6E7B47ADL,4L}},{{(-1L),4L,(-1L),0x6E7B47ADL,4L},{(-1L),4L,(-1L),0x6E7B47ADL,4L},{(-1L),4L,(-1L),0x6E7B47ADL,4L},{(-1L),4L,(-1L),0x6E7B47ADL,4L},{(-1L),4L,(-1L),0x6E7B47ADL,4L},{(-1L),4L,(-1L),0x6E7B47ADL,4L},{(-1L),4L,(-1L),0x6E7B47ADL,4L}},{{(-1L),4L,(-1L),0x6E7B47ADL,4L},{(-1L),4L,(-1L),0x6E7B47ADL,4L},{(-1L),4L,(-1L),0x6E7B47ADL,4L},{(-1L),4L,(-1L),0x6E7B47ADL,4L},{(-1L),4L,(-1L),0x6E7B47ADL,4L},{(-1L),4L,(-1L),0x6E7B47ADL,4L},{(-1L),4L,(-1L),0x6E7B47ADL,4L}},{{(-1L),4L,(-1L),0x6E7B47ADL,4L},{(-1L),4L,(-1L),0x6E7B47ADL,4L},{(-1L),4L,(-1L),0x6E7B47ADL,4L},{(-1L),4L,(-1L),0x6E7B47ADL,4L},{(-1L),4L,(-1L),0x6E7B47ADL,4L},{(-1L),4L,(-1L),0x6E7B47ADL,4L},{(-1L),4L,(-1L),0x6E7B47ADL,4L}}};
    uint32_t l_910 = 6UL;
    uint32_t ***l_932 = &p_1149->g_918;
    int32_t l_945[5][9] = {{(-8L),0x085F2E4AL,(-8L),(-8L),0x085F2E4AL,(-8L),(-8L),0x085F2E4AL,(-8L)},{(-8L),0x085F2E4AL,(-8L),(-8L),0x085F2E4AL,(-8L),(-8L),0x085F2E4AL,(-8L)},{(-8L),0x085F2E4AL,(-8L),(-8L),0x085F2E4AL,(-8L),(-8L),0x085F2E4AL,(-8L)},{(-8L),0x085F2E4AL,(-8L),(-8L),0x085F2E4AL,(-8L),(-8L),0x085F2E4AL,(-8L)},{(-8L),0x085F2E4AL,(-8L),(-8L),0x085F2E4AL,(-8L),(-8L),0x085F2E4AL,(-8L)}};
    uint8_t **l_956 = &p_1149->g_336;
    union U1 *l_1044[4][3] = {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}};
    int8_t l_1054 = (-1L);
    uint64_t l_1060[7][5] = {{0x5B24E91D29DA0EC0L,18446744073709551611UL,0x1E4D7A470D64FDC3L,3UL,18446744073709551611UL},{0x5B24E91D29DA0EC0L,18446744073709551611UL,0x1E4D7A470D64FDC3L,3UL,18446744073709551611UL},{0x5B24E91D29DA0EC0L,18446744073709551611UL,0x1E4D7A470D64FDC3L,3UL,18446744073709551611UL},{0x5B24E91D29DA0EC0L,18446744073709551611UL,0x1E4D7A470D64FDC3L,3UL,18446744073709551611UL},{0x5B24E91D29DA0EC0L,18446744073709551611UL,0x1E4D7A470D64FDC3L,3UL,18446744073709551611UL},{0x5B24E91D29DA0EC0L,18446744073709551611UL,0x1E4D7A470D64FDC3L,3UL,18446744073709551611UL},{0x5B24E91D29DA0EC0L,18446744073709551611UL,0x1E4D7A470D64FDC3L,3UL,18446744073709551611UL}};
    union U2 *l_1108 = &p_1149->g_90;
    uint8_t *l_1116 = (void*)0;
    int16_t l_1142 = (-8L);
    int64_t l_1143 = 0x0831264CCD51D0BCL;
    int i, j, k;
    (*l_650) = &p_1149->g_156;
    if ((*p_1149->g_62))
    { /* block id: 333 */
        uint64_t l_655 = 18446744073709551613UL;
        uint64_t *l_657 = &p_1149->g_624[9][3][1];
        uint64_t *l_659 = &p_1149->g_624[9][4][1];
        int32_t l_679 = 5L;
        uint32_t *l_707 = &p_1149->g_160[3];
        (*p_1149->g_361) = (p_5 || p_1149->g_92);
        for (p_1149->g_72 = 0; (p_1149->g_72 < 6); p_1149->g_72++)
        { /* block id: 337 */
            uint64_t **l_658 = &l_657;
            uint16_t *l_670 = &p_1149->g_573;
            int32_t l_690 = 0x332F2997L;
            int32_t l_713[6][1][1];
            int i, j, k;
            for (i = 0; i < 6; i++)
            {
                for (j = 0; j < 1; j++)
                {
                    for (k = 0; k < 1; k++)
                        l_713[i][j][k] = 0x2AF24962L;
                }
            }
            if (((0x612E1B4127450CD9L != (safe_sub_func_int8_t_s_s(l_655, (((l_656 = &p_1149->g_608) != (((((*l_658) = l_657) != l_659) == ((1L ^ ((safe_sub_func_int32_t_s_s(((*p_1149->g_361) = p_5), (safe_rshift_func_int16_t_s_s(((safe_rshift_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), 3)), (((safe_lshift_func_int16_t_s_u((((*l_670)++) && ((safe_rshift_func_uint16_t_u_u((safe_sub_func_int8_t_s_s(0x08L, (+(((safe_add_func_uint16_t_u_u((l_655 <= 0xD13723A5L), (*p_1149->g_609))) | p_6) || p_5)))), p_6)) <= 0L)), p_5)) , p_1149->g_397[0].f0) , (*p_1149->g_609)))) , 0x4A1AL), 9)))) && p_5)) , 0UL)) , (void*)0)) , FAKE_DIVERGE(p_1149->group_2_offset, get_group_id(2), 10))))) , l_679))
            { /* block id: 342 */
                int16_t *l_689 = &p_1149->g_154;
                int16_t l_697 = 7L;
                int16_t *l_698[1];
                int i;
                for (i = 0; i < 1; i++)
                    l_698[i] = &p_1149->g_155[1][1];
                (**l_650) = (safe_unary_minus_func_uint64_t_u((safe_add_func_uint64_t_u_u(((safe_lshift_func_int8_t_s_s((**l_650), 7)) & FAKE_DIVERGE(p_1149->global_0_offset, get_global_id(0), 10)), (safe_add_func_uint8_t_u_u((GROUP_DIVERGE(1, 1) >= (((((*l_689) = l_655) <= (l_690 < (((**l_650) > (!0L)) && (**p_1149->g_380)))) ^ ((safe_unary_minus_func_int8_t_s((l_692 == &p_1149->g_381[0]))) <= (safe_lshift_func_int16_t_s_u((p_1149->g_155[0][3] = (safe_sub_func_uint16_t_u_u(((p_5 || p_1149->g_573) & l_697), p_5))), 14)))) ^ 5L)), p_6))))));
                if ((*p_1149->g_62))
                    continue;
                if (p_5)
                    continue;
            }
            else
            { /* block id: 348 */
                uint64_t ***l_699 = &l_692;
                (*l_699) = l_692;
            }
            l_713[5][0][0] &= ((safe_sub_func_int32_t_s_s((((safe_add_func_uint32_t_u_u(((safe_mod_func_uint16_t_u_u(l_655, (((safe_unary_minus_func_uint16_t_u(((void*)0 == l_707))) ^ p_1149->g_90.f0) & ((((l_690 ^ (GROUP_DIVERGE(2, 1) | ((249UL || (p_1149->g_610 > p_1149->g_144.f0)) | (safe_rshift_func_uint8_t_u_s(252UL, p_1149->g_77[4]))))) ^ 18446744073709551615UL) && (-8L)) , (-3L))))) , l_712), p_6)) && l_690) , (*p_1149->g_361)), p_5)) <= p_1149->g_275);
        }
    }
    else
    { /* block id: 353 */
        int32_t *l_714 = (void*)0;
        uint64_t **l_732 = (void*)0;
        union U2 l_736[5] = {{1L},{1L},{1L},{1L},{1L}};
        uint64_t **l_813 = &l_812[0][1][4];
        union U2 *l_860 = &p_1149->g_90;
        int32_t l_899[8] = {0x171FE773L,0x171FE773L,0x171FE773L,0x171FE773L,0x171FE773L,0x171FE773L,0x171FE773L,0x171FE773L};
        uint32_t ***l_920 = &p_1149->g_918;
        int32_t l_1024 = 8L;
        uint64_t l_1094 = 0UL;
        union U0 *l_1105 = &p_1149->g_397[1];
        int i;
lbl_738:
        (*l_650) = l_714;
        for (p_1149->g_45 = 0; (p_1149->g_45 <= 2); p_1149->g_45 += 1)
        { /* block id: 357 */
            union U0 **l_715[2];
            int32_t l_733 = 0x315F3243L;
            int32_t l_771 = 0x7A7D0A87L;
            int32_t l_773 = 0x7F2479E8L;
            uint8_t *l_778 = &p_1149->g_136;
            int i;
            for (i = 0; i < 2; i++)
                l_715[i] = &p_1149->g_147;
            l_716[2][0] = (void*)0;
            for (p_1149->g_456 = 0; (p_1149->g_456 <= 3); p_1149->g_456 += 1)
            { /* block id: 361 */
                int8_t *l_723 = &p_1149->g_72;
                int32_t l_728 = (-1L);
                uint8_t l_788 = 0xE9L;
                for (p_1149->g_448 = 0; (p_1149->g_448 <= 2); p_1149->g_448 += 1)
                { /* block id: 364 */
                    uint8_t *l_729 = (void*)0;
                    uint8_t *l_730 = (void*)0;
                    uint8_t *l_731 = &p_1149->g_229;
                    int i, j;
                    (*p_1149->g_62) = (safe_div_func_int32_t_s_s((((safe_sub_func_uint32_t_u_u((safe_rshift_func_uint8_t_u_u(p_1149->g_77[p_1149->g_456], 0)), (FAKE_DIVERGE(p_1149->local_0_offset, get_local_id(0), 10) == (0L > (((((void*)0 == l_723) || (safe_rshift_func_int8_t_s_s(p_1149->g_77[(p_1149->g_45 + 1)], 2))) > (safe_mod_func_uint8_t_u_u(((*l_731) = l_728), ((*l_723) = p_1149->g_330[5])))) || (p_5 == (l_732 != (void*)0))))))) | 8L) || l_733), (-1L)));
                    for (p_1149->g_154 = 0; (p_1149->g_154 <= 2); p_1149->g_154 += 1)
                    { /* block id: 370 */
                        (*p_1149->g_62) = (safe_sub_func_uint8_t_u_u(((l_736[3] = l_736[2]) , p_1149->g_77[(p_1149->g_45 + 1)]), p_6));
                        (*l_650) = l_737;
                        return p_6;
                    }
                    if (p_1149->g_45)
                        goto lbl_738;
                }
                for (p_1149->g_79 = 1; (p_1149->g_79 <= 8); p_1149->g_79 += 1)
                { /* block id: 380 */
                    uint8_t l_755 = 0x93L;
                    int32_t l_772 = 0x12B3F245L;
                    int i;
                    for (p_1149->g_144.f0 = 0; (p_1149->g_144.f0 <= 1); p_1149->g_144.f0 += 1)
                    { /* block id: 383 */
                        int32_t *l_739[10][3][5] = {{{(void*)0,&p_1149->g_92,(void*)0,&p_1149->g_78[0],&p_1149->g_78[0]},{(void*)0,&p_1149->g_92,(void*)0,&p_1149->g_78[0],&p_1149->g_78[0]},{(void*)0,&p_1149->g_92,(void*)0,&p_1149->g_78[0],&p_1149->g_78[0]}},{{(void*)0,&p_1149->g_92,(void*)0,&p_1149->g_78[0],&p_1149->g_78[0]},{(void*)0,&p_1149->g_92,(void*)0,&p_1149->g_78[0],&p_1149->g_78[0]},{(void*)0,&p_1149->g_92,(void*)0,&p_1149->g_78[0],&p_1149->g_78[0]}},{{(void*)0,&p_1149->g_92,(void*)0,&p_1149->g_78[0],&p_1149->g_78[0]},{(void*)0,&p_1149->g_92,(void*)0,&p_1149->g_78[0],&p_1149->g_78[0]},{(void*)0,&p_1149->g_92,(void*)0,&p_1149->g_78[0],&p_1149->g_78[0]}},{{(void*)0,&p_1149->g_92,(void*)0,&p_1149->g_78[0],&p_1149->g_78[0]},{(void*)0,&p_1149->g_92,(void*)0,&p_1149->g_78[0],&p_1149->g_78[0]},{(void*)0,&p_1149->g_92,(void*)0,&p_1149->g_78[0],&p_1149->g_78[0]}},{{(void*)0,&p_1149->g_92,(void*)0,&p_1149->g_78[0],&p_1149->g_78[0]},{(void*)0,&p_1149->g_92,(void*)0,&p_1149->g_78[0],&p_1149->g_78[0]},{(void*)0,&p_1149->g_92,(void*)0,&p_1149->g_78[0],&p_1149->g_78[0]}},{{(void*)0,&p_1149->g_92,(void*)0,&p_1149->g_78[0],&p_1149->g_78[0]},{(void*)0,&p_1149->g_92,(void*)0,&p_1149->g_78[0],&p_1149->g_78[0]},{(void*)0,&p_1149->g_92,(void*)0,&p_1149->g_78[0],&p_1149->g_78[0]}},{{(void*)0,&p_1149->g_92,(void*)0,&p_1149->g_78[0],&p_1149->g_78[0]},{(void*)0,&p_1149->g_92,(void*)0,&p_1149->g_78[0],&p_1149->g_78[0]},{(void*)0,&p_1149->g_92,(void*)0,&p_1149->g_78[0],&p_1149->g_78[0]}},{{(void*)0,&p_1149->g_92,(void*)0,&p_1149->g_78[0],&p_1149->g_78[0]},{(void*)0,&p_1149->g_92,(void*)0,&p_1149->g_78[0],&p_1149->g_78[0]},{(void*)0,&p_1149->g_92,(void*)0,&p_1149->g_78[0],&p_1149->g_78[0]}},{{(void*)0,&p_1149->g_92,(void*)0,&p_1149->g_78[0],&p_1149->g_78[0]},{(void*)0,&p_1149->g_92,(void*)0,&p_1149->g_78[0],&p_1149->g_78[0]},{(void*)0,&p_1149->g_92,(void*)0,&p_1149->g_78[0],&p_1149->g_78[0]}},{{(void*)0,&p_1149->g_92,(void*)0,&p_1149->g_78[0],&p_1149->g_78[0]},{(void*)0,&p_1149->g_92,(void*)0,&p_1149->g_78[0],&p_1149->g_78[0]},{(void*)0,&p_1149->g_92,(void*)0,&p_1149->g_78[0],&p_1149->g_78[0]}}};
                        uint16_t ***l_741 = &p_1149->g_423;
                        int64_t *l_753[4][5][5] = {{{&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)],&p_1149->g_90.f0,&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)]},{&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)],&p_1149->g_90.f0,&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)]},{&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)],&p_1149->g_90.f0,&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)]},{&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)],&p_1149->g_90.f0,&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)]},{&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)],&p_1149->g_90.f0,&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)]}},{{&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)],&p_1149->g_90.f0,&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)]},{&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)],&p_1149->g_90.f0,&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)]},{&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)],&p_1149->g_90.f0,&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)]},{&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)],&p_1149->g_90.f0,&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)]},{&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)],&p_1149->g_90.f0,&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)]}},{{&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)],&p_1149->g_90.f0,&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)]},{&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)],&p_1149->g_90.f0,&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)]},{&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)],&p_1149->g_90.f0,&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)]},{&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)],&p_1149->g_90.f0,&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)]},{&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)],&p_1149->g_90.f0,&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)]}},{{&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)],&p_1149->g_90.f0,&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)]},{&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)],&p_1149->g_90.f0,&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)]},{&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)],&p_1149->g_90.f0,&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)]},{&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)],&p_1149->g_90.f0,&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)]},{&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)],&p_1149->g_90.f0,&p_1149->g_90.f0,&p_1149->g_77[(p_1149->g_45 + 3)]}}};
                        int32_t l_754 = 0x1A6D77A3L;
                        int16_t *l_770[9][8] = {{&p_1149->g_154,&p_1149->g_155[8][3],&p_1149->g_155[8][3],&p_1149->g_154,&p_1149->g_155[8][3],&p_1149->g_155[8][3],&p_1149->g_155[8][3],&p_1149->g_155[8][3]},{&p_1149->g_154,&p_1149->g_155[8][3],&p_1149->g_155[8][3],&p_1149->g_154,&p_1149->g_155[8][3],&p_1149->g_155[8][3],&p_1149->g_155[8][3],&p_1149->g_155[8][3]},{&p_1149->g_154,&p_1149->g_155[8][3],&p_1149->g_155[8][3],&p_1149->g_154,&p_1149->g_155[8][3],&p_1149->g_155[8][3],&p_1149->g_155[8][3],&p_1149->g_155[8][3]},{&p_1149->g_154,&p_1149->g_155[8][3],&p_1149->g_155[8][3],&p_1149->g_154,&p_1149->g_155[8][3],&p_1149->g_155[8][3],&p_1149->g_155[8][3],&p_1149->g_155[8][3]},{&p_1149->g_154,&p_1149->g_155[8][3],&p_1149->g_155[8][3],&p_1149->g_154,&p_1149->g_155[8][3],&p_1149->g_155[8][3],&p_1149->g_155[8][3],&p_1149->g_155[8][3]},{&p_1149->g_154,&p_1149->g_155[8][3],&p_1149->g_155[8][3],&p_1149->g_154,&p_1149->g_155[8][3],&p_1149->g_155[8][3],&p_1149->g_155[8][3],&p_1149->g_155[8][3]},{&p_1149->g_154,&p_1149->g_155[8][3],&p_1149->g_155[8][3],&p_1149->g_154,&p_1149->g_155[8][3],&p_1149->g_155[8][3],&p_1149->g_155[8][3],&p_1149->g_155[8][3]},{&p_1149->g_154,&p_1149->g_155[8][3],&p_1149->g_155[8][3],&p_1149->g_154,&p_1149->g_155[8][3],&p_1149->g_155[8][3],&p_1149->g_155[8][3],&p_1149->g_155[8][3]},{&p_1149->g_154,&p_1149->g_155[8][3],&p_1149->g_155[8][3],&p_1149->g_154,&p_1149->g_155[8][3],&p_1149->g_155[8][3],&p_1149->g_155[8][3],&p_1149->g_155[8][3]}};
                        uint32_t l_774 = 0xAFBB0F70L;
                        uint8_t *l_777 = &l_755;
                        int64_t *l_787 = &p_1149->g_608;
                        int32_t l_789 = (-1L);
                        int i, j, k;
                        (*l_737) = ((p_1149->g_78[0] = p_1149->g_624[(p_1149->g_79 + 1)][p_1149->g_45][p_1149->g_144.f0]) , ((((*l_741) = ((1L > (p_1149->g_77[(p_1149->g_45 + 3)] = (-1L))) , l_740)) == (p_1149->g_330[p_1149->g_79] , p_1149->g_742)) & (0x68L ^ (p_1149->g_330[(p_1149->g_144.f0 + 5)] < (l_739[3][0][4] != (void*)0)))));
                        (*l_737) = (p_5 < (((void*)0 == &p_1149->g_424) > (safe_rshift_func_int16_t_s_u((~((((safe_rshift_func_uint16_t_u_u(((((p_6 >= (((((*p_1149->g_62) = (((((l_771 = ((safe_rshift_func_int8_t_s_s(((safe_div_func_int8_t_s_s(((l_754 = p_5) & (l_755 >= ((safe_sub_func_int8_t_s_s(((*l_723) = ((safe_add_func_int16_t_s_s(0x3CAAL, (l_733 = (safe_sub_func_int32_t_s_s((safe_rshift_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_s((safe_mul_func_int16_t_s_s((l_716[2][0] != (p_6 , &p_1149->g_248)), FAKE_DIVERGE(p_1149->global_2_offset, get_global_id(2), 10))), 10)), l_755)), 0x5169CF9AL))))) <= 0L)), 0xF3L)) == 0x01ABL))), GROUP_DIVERGE(2, 1))) , p_6), 3)) > p_1149->g_79)) ^ l_772) <= l_773) >= 1L) | p_6)) >= l_755) == p_6) , l_754)) == l_774) == (*l_737)) || 1L), p_6)) , p_5) && p_6) , (-1L))), p_5))));
                        l_789 |= (((((((p_5 , 6L) | (safe_sub_func_int8_t_s_s((((l_777 = l_723) == ((*p_1149->g_335) = l_778)) == 0x464103EEL), ((safe_mod_func_int32_t_s_s((*p_1149->g_62), (safe_sub_func_uint64_t_u_u((safe_mod_func_uint64_t_u_u(p_5, (p_1149->g_77[1] &= ((safe_add_func_int64_t_s_s(((((*l_787) = ((0L < 9L) | (-1L))) , 0UL) == l_771), GROUP_DIVERGE(2, 1))) , l_736[2].f0)))), 8L)))) || 0x78L)))) != 0x01L) | 18446744073709551611UL) , p_6) && l_788) > p_6);
                    }
                    l_733 ^= (0xF0AAL || (safe_mod_func_uint16_t_u_u(p_1149->g_77[p_1149->g_456], p_1149->g_77[(p_1149->g_45 + 2)])));
                    if (p_1149->g_330[(p_1149->g_45 + 4)])
                        break;
                }
                for (p_1149->g_146.f0 = 0; (p_1149->g_146.f0 <= 1); p_1149->g_146.f0 += 1)
                { /* block id: 405 */
                    uint16_t l_810 = 0x5ED8L;
                    for (p_1149->g_275 = 0; (p_1149->g_275 <= 3); p_1149->g_275 += 1)
                    { /* block id: 408 */
                        uint32_t *l_814 = &p_1149->g_160[1];
                        int16_t *l_815 = &p_1149->g_155[5][3];
                        int i, j, k;
                        (*l_737) ^= (safe_add_func_uint16_t_u_u((safe_div_func_uint32_t_u_u(p_1149->g_624[(p_1149->g_456 + 6)][p_1149->g_45][p_1149->g_146.f0], p_1149->g_624[(p_1149->g_275 + 1)][(p_1149->g_275 + 1)][p_1149->g_146.f0])), (safe_rshift_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((p_1149->g_77[(p_1149->g_45 + 3)] , ((safe_rshift_func_int8_t_s_u(((*l_723) &= (((safe_rshift_func_int16_t_s_u(((*l_815) |= (p_1149->g_77[(p_1149->g_45 + 3)] < (p_1149->g_77[(p_1149->g_275 + 1)] <= (0x36E30B48L & ((*l_814) = (((*l_778) = ((((((safe_rshift_func_uint16_t_u_s((safe_add_func_int32_t_s_s((safe_div_func_uint32_t_u_u(l_810, ((*p_1149->g_62) = p_1149->g_624[(p_1149->g_275 + 1)][(p_1149->g_275 + 1)][p_1149->g_146.f0]))), (p_6 != p_5))), 1)) | l_733) , l_811) == l_813) > p_1149->g_397[0].f0) & p_6)) <= 0x1EL)))))), FAKE_DIVERGE(p_1149->global_2_offset, get_global_id(2), 10))) , (*p_1149->g_742)) != (*l_740))), 4)) != GROUP_DIVERGE(2, 1))), 0x69L)), 5))));
                        return p_1149->g_146.f0;
                    }
                }
            }
        }
        if ((l_816 || (**p_1149->g_380)))
        { /* block id: 420 */
            int64_t l_817[9][4][3];
            int32_t *l_847 = &p_1149->g_75;
            int32_t l_869 = 0x46E1A442L;
            uint64_t **l_873 = &p_1149->g_381[0];
            uint64_t **l_874 = (void*)0;
            union U2 ***l_881[1];
            int32_t l_898 = 0L;
            int32_t l_900 = 0x016A30ACL;
            int32_t l_902 = 0x48AA77AAL;
            int32_t l_903 = 0x0F2DB4A6L;
            int32_t l_906 = 0x2B462C45L;
            int32_t l_907 = 5L;
            int32_t l_908 = 0x3132FC35L;
            int32_t l_909[8];
            int i, j, k;
            for (i = 0; i < 9; i++)
            {
                for (j = 0; j < 4; j++)
                {
                    for (k = 0; k < 3; k++)
                        l_817[i][j][k] = 0x60CE16381C143AC5L;
                }
            }
            for (i = 0; i < 1; i++)
                l_881[i] = &p_1149->g_139[2][0];
            for (i = 0; i < 8; i++)
                l_909[i] = (-1L);
            if ((FAKE_DIVERGE(p_1149->local_1_offset, get_local_id(1), 10) == (l_736[2] , 1UL)))
            { /* block id: 421 */
                int64_t l_818 = 0L;
                uint16_t **l_840 = &p_1149->g_424;
                union U1 l_843[7][9] = {{{0x417A891F600D6E1CL},{0x1313CE63CE00111EL},{0L},{0x1313CE63CE00111EL},{0x417A891F600D6E1CL},{0x417A891F600D6E1CL},{0x1313CE63CE00111EL},{0L},{0x1313CE63CE00111EL}},{{0x417A891F600D6E1CL},{0x1313CE63CE00111EL},{0L},{0x1313CE63CE00111EL},{0x417A891F600D6E1CL},{0x417A891F600D6E1CL},{0x1313CE63CE00111EL},{0L},{0x1313CE63CE00111EL}},{{0x417A891F600D6E1CL},{0x1313CE63CE00111EL},{0L},{0x1313CE63CE00111EL},{0x417A891F600D6E1CL},{0x417A891F600D6E1CL},{0x1313CE63CE00111EL},{0L},{0x1313CE63CE00111EL}},{{0x417A891F600D6E1CL},{0x1313CE63CE00111EL},{0L},{0x1313CE63CE00111EL},{0x417A891F600D6E1CL},{0x417A891F600D6E1CL},{0x1313CE63CE00111EL},{0L},{0x1313CE63CE00111EL}},{{0x417A891F600D6E1CL},{0x1313CE63CE00111EL},{0L},{0x1313CE63CE00111EL},{0x417A891F600D6E1CL},{0x417A891F600D6E1CL},{0x1313CE63CE00111EL},{0L},{0x1313CE63CE00111EL}},{{0x417A891F600D6E1CL},{0x1313CE63CE00111EL},{0L},{0x1313CE63CE00111EL},{0x417A891F600D6E1CL},{0x417A891F600D6E1CL},{0x1313CE63CE00111EL},{0L},{0x1313CE63CE00111EL}},{{0x417A891F600D6E1CL},{0x1313CE63CE00111EL},{0L},{0x1313CE63CE00111EL},{0x417A891F600D6E1CL},{0x417A891F600D6E1CL},{0x1313CE63CE00111EL},{0L},{0x1313CE63CE00111EL}}};
                int32_t *l_867 = &p_1149->g_75;
                union U2 l_884 = {0x3E069CC4AA9E42ADL};
                int32_t l_890 = 0x3D7683E0L;
                int32_t l_891 = 0x2E42613AL;
                int32_t *l_892 = &l_891;
                int32_t *l_893 = &l_712;
                int32_t *l_894 = &l_891;
                int32_t *l_895 = &p_1149->g_75;
                int32_t *l_896 = &l_890;
                int32_t *l_897[2][6][3] = {{{&l_891,(void*)0,&l_891},{&l_891,(void*)0,&l_891},{&l_891,(void*)0,&l_891},{&l_891,(void*)0,&l_891},{&l_891,(void*)0,&l_891},{&l_891,(void*)0,&l_891}},{{&l_891,(void*)0,&l_891},{&l_891,(void*)0,&l_891},{&l_891,(void*)0,&l_891},{&l_891,(void*)0,&l_891},{&l_891,(void*)0,&l_891},{&l_891,(void*)0,&l_891}}};
                int i, j, k;
lbl_864:
                for (p_1149->g_573 = 0; (p_1149->g_573 <= 3); p_1149->g_573 += 1)
                { /* block id: 424 */
                    l_818 = (l_817[2][0][0] != 0x54L);
                    for (p_1149->g_456 = 2; (p_1149->g_456 <= 7); p_1149->g_456 += 1)
                    { /* block id: 428 */
                        (*p_1149->g_62) = p_5;
                    }
                }
                if ((*p_1149->g_62))
                { /* block id: 432 */
                    uint64_t l_823 = 1UL;
                    uint8_t *l_841 = &p_1149->g_136;
                    uint8_t *l_842 = &p_1149->g_229;
                    union U1 *l_845[10] = {(void*)0,&p_1149->g_844,&p_1149->g_844,&p_1149->g_844,(void*)0,(void*)0,&p_1149->g_844,&p_1149->g_844,&p_1149->g_844,(void*)0};
                    int32_t *l_848[5][1];
                    int i, j;
                    for (i = 0; i < 5; i++)
                    {
                        for (j = 0; j < 1; j++)
                            l_848[i][j] = &p_1149->g_156;
                    }
                    (*l_737) |= p_5;
                    (*p_1149->g_62) ^= (safe_div_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_u(((((l_823 >= (safe_sub_func_int32_t_s_s((safe_mod_func_uint64_t_u_u((!(((*p_1149->g_423) = (((safe_sub_func_uint16_t_u_u((safe_lshift_func_int8_t_s_s(0L, ((safe_add_func_int64_t_s_s(((safe_sub_func_int16_t_s_s(p_1149->g_16, (!((safe_sub_func_uint8_t_u_u((safe_sub_func_int64_t_s_s(p_6, ((l_840 == &p_1149->g_424) > 0x0FL))), (((((*l_842) ^= ((*l_841) = (2UL > (~65530UL)))) ^ p_5) <= GROUP_DIVERGE(2, 1)) & 0x0053E7F34E1E9C7CL))) < l_818)))) > p_1149->g_154), p_6)) == p_6))), 0x6872L)) , p_5) , (void*)0)) == &p_1149->g_487)), 1UL)), l_823))) , l_843[1][7]) , p_1149->g_844) , l_818), 3)), p_1149->g_45));
                    if (p_6)
                    { /* block id: 438 */
                        union U2 l_849[4][1][9] = {{{{8L},{0x79DC0270D49C6BB8L},{0x79DC0270D49C6BB8L},{8L},{8L},{0x79DC0270D49C6BB8L},{0x79DC0270D49C6BB8L},{8L},{8L}}},{{{8L},{0x79DC0270D49C6BB8L},{0x79DC0270D49C6BB8L},{8L},{8L},{0x79DC0270D49C6BB8L},{0x79DC0270D49C6BB8L},{8L},{8L}}},{{{8L},{0x79DC0270D49C6BB8L},{0x79DC0270D49C6BB8L},{8L},{8L},{0x79DC0270D49C6BB8L},{0x79DC0270D49C6BB8L},{8L},{8L}}},{{{8L},{0x79DC0270D49C6BB8L},{0x79DC0270D49C6BB8L},{8L},{8L},{0x79DC0270D49C6BB8L},{0x79DC0270D49C6BB8L},{8L},{8L}}}};
                        union U0 **l_856 = &l_716[2][0];
                        union U2 **l_859 = &p_1149->g_140;
                        uint64_t *l_861[1];
                        union U0 **l_863[8] = {&l_716[4][2],&l_716[4][2],&l_716[4][2],&l_716[4][2],&l_716[4][2],&l_716[4][2],&l_716[4][2],&l_716[4][2]};
                        union U0 ***l_862 = &l_863[0];
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                            l_861[i] = (void*)0;
                        p_1149->g_846 = l_845[1];
                        (*l_650) = func_56(l_847, l_848[3][0], l_849[0][0][7], (l_843[1][7].f0 , (((safe_add_func_int8_t_s_s((safe_div_func_int32_t_s_s((-1L), (safe_add_func_uint32_t_u_u(p_6, (l_856 == ((*l_862) = (((((((safe_div_func_int32_t_s_s(((l_860 = &l_736[2]) != (void*)0), p_6)) , (void*)0) != l_861[0]) == p_6) , &p_1149->g_626) != (void*)0) , l_856))))))), p_6)) , p_1149->g_143.f0) , (*l_847))), p_1149);
                    }
                    else
                    { /* block id: 443 */
                        if (p_1149->g_146.f0)
                            goto lbl_864;
                    }
                }
                else
                { /* block id: 446 */
                    uint16_t *l_872 = &p_1149->g_573;
                    for (p_1149->g_402.f0 = (-26); (p_1149->g_402.f0 != 6); p_1149->g_402.f0 = safe_add_func_uint8_t_u_u(p_1149->g_402.f0, 9))
                    { /* block id: 449 */
                        (*l_650) = (p_1149->g_75 , l_867);
                        (*p_1149->g_868) = &p_1149->g_844;
                        if (l_869)
                            continue;
                    }
                    (*l_737) = ((p_6 ^ (safe_sub_func_uint16_t_u_u((((*l_872) = (*l_867)) & ((l_873 = &p_1149->g_381[3]) != (l_874 = &p_1149->g_381[3]))), ((*l_867) || 0x0EL)))) < (*l_867));
                }
                for (p_1149->g_90.f1 = 9; (p_1149->g_90.f1 != 34); p_1149->g_90.f1++)
                { /* block id: 461 */
                    int16_t l_879 = 1L;
                    if (((((*l_847) = 0x04D63859L) <= ((safe_lshift_func_int8_t_s_s((l_879 & p_5), 3)) && 6L)) && ((((safe_unary_minus_func_int32_t_s(((void*)0 == l_881[0]))) == (func_23((safe_add_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), (((*l_847) = ((((*p_1149->g_147) , p_5) ^ (*l_847)) < p_5)) >= p_5))), p_1149->g_155[7][3], l_879, l_884, p_5, p_1149) , 4L)) != 0x32793B14CD167D4AL) || GROUP_DIVERGE(2, 1))))
                    { /* block id: 464 */
                        (*l_737) &= (*p_1149->g_62);
                    }
                    else
                    { /* block id: 466 */
                        uint32_t l_885[6] = {0x70530E11L,0x43AB3C2FL,0x70530E11L,0x70530E11L,0x43AB3C2FL,0x70530E11L};
                        int i;
                        --l_885[1];
                        (*p_1149->g_62) = (safe_lshift_func_uint8_t_u_s((*l_737), 0));
                    }
                    if (p_5)
                        break;
                }
                --l_910;
            }
            else
            { /* block id: 473 */
                int64_t l_931 = 0x3C417BA6F0341D1EL;
                uint32_t ****l_933 = &l_932;
                int32_t l_946[2];
                uint16_t l_947 = 65527UL;
                uint8_t **l_955 = (void*)0;
                uint32_t l_1050 = 4294967286UL;
                int i;
                for (i = 0; i < 2; i++)
                    l_946[i] = 0x3BEEDA23L;
                if (((*l_847) ^ (safe_mul_func_uint8_t_u_u((p_5 & p_5), ((safe_add_func_uint64_t_u_u(1UL, (((((l_920 = p_1149->g_917[0]) == ((*l_933) = ((safe_rshift_func_int16_t_s_u(p_1149->g_77[5], (safe_rshift_func_int8_t_s_s((safe_rshift_func_uint8_t_u_s(((safe_add_func_uint64_t_u_u(2UL, ((safe_div_func_uint64_t_u_u(((**p_1149->g_380) &= (l_931 && (p_1149->g_92 > l_931))), p_5)) | (*l_847)))) != p_6), p_5)), p_1149->g_624[7][2][1])))) , l_932))) & p_5) | 0x4FL) , l_931))) , p_6)))))
                { /* block id: 477 */
                    union U1 *l_934 = &p_1149->g_844;
                    union U1 **l_936[3];
                    int32_t *l_937 = &l_904;
                    int32_t *l_938 = &p_1149->g_75;
                    int32_t *l_939 = (void*)0;
                    int32_t *l_940 = &l_902;
                    int32_t *l_941 = &l_712;
                    int32_t *l_942 = &l_905[0][5][3];
                    int32_t *l_943 = &l_902;
                    int32_t *l_944[5][2] = {{&p_1149->g_156,&p_1149->g_156},{&p_1149->g_156,&p_1149->g_156},{&p_1149->g_156,&p_1149->g_156},{&p_1149->g_156,&p_1149->g_156},{&p_1149->g_156,&p_1149->g_156}};
                    int64_t *l_952 = &l_931;
                    int64_t *l_962 = &p_1149->g_77[5];
                    int64_t **l_961 = &l_962;
                    int16_t *l_969 = &p_1149->g_154;
                    uint8_t ***l_982 = &l_955;
                    int i, j;
                    for (i = 0; i < 3; i++)
                        l_936[i] = (void*)0;
                    (*p_1149->g_868) = l_934;
                    l_947--;
                    (*l_737) |= (safe_mod_func_uint32_t_u_u(((((*l_952) = p_5) || (safe_lshift_func_uint8_t_u_s(p_6, (l_955 != l_956)))) & p_6), (((((safe_rshift_func_int8_t_s_u((+(((((safe_add_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), ((*l_969) &= ((((*l_961) = &l_817[2][0][0]) == (p_1149->g_964[0] = (p_1149->g_963 = &p_1149->g_77[1]))) | ((safe_sub_func_int32_t_s_s(((*l_940) = (p_1149->g_967 != &p_1149->g_968)), 4294967295UL)) >= (*p_1149->g_62)))))) <= 0x71B56736L) == (*l_847)) | GROUP_DIVERGE(1, 1)) , p_5)), 2)) | 0L) | l_946[0]) , 247UL) | (*l_847))));
                    for (l_903 = 0; (l_903 >= 9); l_903 = safe_add_func_int8_t_s_s(l_903, 3))
                    { /* block id: 489 */
                        uint8_t ****l_983 = &p_1149->g_334[3][5];
                        union U2 l_988 = {0x1EF0C55C356050D1L};
                        int64_t l_997 = (-1L);
                        uint8_t *l_998 = &p_1149->g_136;
                        (*l_650) = &l_946[1];
                        atomic_xor(&p_1149->g_atomic_reduction[get_linear_group_id()], ((safe_div_func_int32_t_s_s(((safe_mul_func_uint32_t_u_u((safe_add_func_uint16_t_u_u(3UL, FAKE_DIVERGE(p_1149->local_1_offset, get_local_id(1), 10))), (&p_1149->g_335 != &l_956))) != (((!(safe_div_func_uint8_t_u_u((((l_982 = &p_1149->g_335) == ((*l_983) = (void*)0)) || (safe_sub_func_int32_t_s_s(((func_23((p_5 > (-1L)), ((safe_mod_func_int64_t_s_s((-7L), 18446744073709551615UL)) , FAKE_DIVERGE(p_1149->group_0_offset, get_group_id(0), 10)), p_5, l_988, l_946[1], p_1149) , GROUP_DIVERGE(0, 1)) , 0x70D3CA3BL), 0UL))), 0x0CL))) == 0UL) && p_5)), p_6)) >= 0L) + get_linear_global_id());
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        if (get_linear_local_id() == 0)
                            p_1149->v_collective += p_1149->g_atomic_reduction[get_linear_group_id()];
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        (*l_737) ^= (((safe_div_func_uint64_t_u_u(((**l_873) = ((safe_sub_func_int64_t_s_s((safe_add_func_int16_t_s_s((((-1L) > 65527UL) == ((p_5 || (safe_lshift_func_uint16_t_u_s(l_988.f0, l_931))) == ((++(*l_998)) > (*l_938)))), ((safe_div_func_uint16_t_u_u(l_988.f0, (((((void*)0 != &p_1149->g_140) , (*l_692)) == (void*)0) ^ 0x3C45B7D6184734B1L))) , p_1149->g_155[2][2]))), 4L)) > p_1149->g_144.f0)), (**l_650))) & l_946[1]) ^ p_6);
                    }
                }
                else
                { /* block id: 498 */
                    uint16_t *l_1011[2];
                    int16_t *l_1025 = (void*)0;
                    int32_t l_1026 = (-9L);
                    uint64_t l_1027 = 0xB3D0F84333555EC2L;
                    uint16_t l_1028 = 0x543BL;
                    int32_t *l_1035 = &p_1149->g_78[0];
                    int32_t l_1053 = 0x48EF31B1L;
                    int32_t l_1055 = (-9L);
                    int32_t l_1056 = (-3L);
                    int32_t l_1057 = 0x78C7FE3DL;
                    int32_t l_1058[4][8][2] = {{{0x592A13F5L,1L},{0x592A13F5L,1L},{0x592A13F5L,1L},{0x592A13F5L,1L},{0x592A13F5L,1L},{0x592A13F5L,1L},{0x592A13F5L,1L},{0x592A13F5L,1L}},{{0x592A13F5L,1L},{0x592A13F5L,1L},{0x592A13F5L,1L},{0x592A13F5L,1L},{0x592A13F5L,1L},{0x592A13F5L,1L},{0x592A13F5L,1L},{0x592A13F5L,1L}},{{0x592A13F5L,1L},{0x592A13F5L,1L},{0x592A13F5L,1L},{0x592A13F5L,1L},{0x592A13F5L,1L},{0x592A13F5L,1L},{0x592A13F5L,1L},{0x592A13F5L,1L}},{{0x592A13F5L,1L},{0x592A13F5L,1L},{0x592A13F5L,1L},{0x592A13F5L,1L},{0x592A13F5L,1L},{0x592A13F5L,1L},{0x592A13F5L,1L},{0x592A13F5L,1L}}};
                    int32_t l_1059[6] = {0x26ABAD76L,0x26ABAD76L,0x26ABAD76L,0x26ABAD76L,0x26ABAD76L,0x26ABAD76L};
                    int i, j, k;
                    for (i = 0; i < 2; i++)
                        l_1011[i] = &p_1149->g_16;
                    l_1028 |= ((&p_1149->g_963 != &p_1149->g_963) == (((safe_add_func_uint32_t_u_u(0x8DBEA79EL, ((*l_847) > (((l_1026 &= (safe_sub_func_uint32_t_u_u((safe_mul_func_int16_t_s_s(((safe_div_func_uint16_t_u_u((++p_1149->g_16), ((((~0x27DB1F35L) , (*l_873)) != (void*)0) && ((l_946[1] && (GROUP_DIVERGE(1, 1) || ((((safe_rshift_func_uint8_t_u_u((((safe_sub_func_int32_t_s_s((((((safe_mul_func_int8_t_s_s((safe_add_func_int64_t_s_s((FAKE_DIVERGE(p_1149->local_1_offset, get_local_id(1), 10) ^ (safe_rshift_func_int16_t_s_s((-10L), p_6))), (*p_1149->g_963))), p_5)) <= (*l_737)) , (void*)0) != &p_1149->g_917[0]) != p_6), 0x5B1019F1L)) > p_6) > p_6), l_946[1])) != l_1024) , FAKE_DIVERGE(p_1149->group_0_offset, get_group_id(0), 10)) || 0L))) | p_5)))) & p_6), 0x0122L)), 0x040CD652L))) != 0UL) >= p_6)))) , l_1027) | 0x5D8E039068D00500L));
                    if ((((safe_mul_func_int8_t_s_s(((safe_sub_func_int32_t_s_s(l_1024, (((*l_1035) |= (safe_rshift_func_uint8_t_u_s(p_5, 0))) , p_5))) || (p_6 == ((safe_rshift_func_int16_t_s_s(p_5, 10)) || (((safe_rshift_func_uint16_t_u_s(((((*l_847) != (safe_lshift_func_int16_t_s_s((0x2AB7FDDAB2D7AEECL < (safe_lshift_func_int16_t_s_u(p_1149->g_78[3], ((0x32L < p_5) || p_5)))), 12))) >= l_1028) , (*l_847)), l_1028)) , (*p_1149->g_963)) >= p_6)))), p_1149->g_525)) == l_1027) & FAKE_DIVERGE(p_1149->global_1_offset, get_global_id(1), 10)))
                    { /* block id: 503 */
                        union U1 **l_1045 = (void*)0;
                        (*p_1149->g_1046) = l_1044[2][2];
                        return l_946[1];
                    }
                    else
                    { /* block id: 506 */
                        int32_t *l_1047 = &l_905[0][5][3];
                        int32_t *l_1048 = &l_945[3][5];
                        int32_t *l_1049[5][1] = {{&l_899[0]},{&l_899[0]},{&l_899[0]},{&l_899[0]},{&l_899[0]}};
                        int i, j;
                        ++l_1050;
                        ++l_1060[5][3];
                        return p_5;
                    }
                }
                (*l_737) = p_6;
                (*l_650) = &l_899[6];
            }
        }
        else
        { /* block id: 515 */
            int64_t l_1063 = 0x13F58A594F91FAEDL;
            int32_t *l_1080 = (void*)0;
            uint16_t *l_1092 = &p_1149->g_275;
            int32_t l_1093 = (-8L);
            uint64_t ***l_1104 = (void*)0;
            union U2 l_1109 = {0x2C26A6E749A196FDL};
            uint8_t *l_1117 = &p_1149->g_229;
            uint16_t l_1120[4];
            int32_t *l_1122 = &p_1149->g_156;
            int32_t *l_1123 = &l_899[6];
            int32_t *l_1124[10][7] = {{&l_712,&l_712,&l_905[0][5][3],&l_945[3][2],&l_905[0][5][3],&l_712,&l_712},{&l_712,&l_712,&l_905[0][5][3],&l_945[3][2],&l_905[0][5][3],&l_712,&l_712},{&l_712,&l_712,&l_905[0][5][3],&l_945[3][2],&l_905[0][5][3],&l_712,&l_712},{&l_712,&l_712,&l_905[0][5][3],&l_945[3][2],&l_905[0][5][3],&l_712,&l_712},{&l_712,&l_712,&l_905[0][5][3],&l_945[3][2],&l_905[0][5][3],&l_712,&l_712},{&l_712,&l_712,&l_905[0][5][3],&l_945[3][2],&l_905[0][5][3],&l_712,&l_712},{&l_712,&l_712,&l_905[0][5][3],&l_945[3][2],&l_905[0][5][3],&l_712,&l_712},{&l_712,&l_712,&l_905[0][5][3],&l_945[3][2],&l_905[0][5][3],&l_712,&l_712},{&l_712,&l_712,&l_905[0][5][3],&l_945[3][2],&l_905[0][5][3],&l_712,&l_712},{&l_712,&l_712,&l_905[0][5][3],&l_945[3][2],&l_905[0][5][3],&l_712,&l_712}};
            uint32_t l_1125 = 6UL;
            int i, j;
            for (i = 0; i < 4; i++)
                l_1120[i] = 65533UL;
            (*l_737) ^= l_1063;
            if (((p_1149->g_1064 , (safe_unary_minus_func_int32_t_s((safe_lshift_func_uint16_t_u_s((safe_sub_func_uint64_t_u_u(p_5, (((safe_rshift_func_uint8_t_u_s((safe_sub_func_uint32_t_u_u(FAKE_DIVERGE(p_1149->global_1_offset, get_global_id(1), 10), GROUP_DIVERGE(2, 1))), ((safe_mul_func_int8_t_s_s(0x4EL, (FAKE_DIVERGE(p_1149->local_2_offset, get_local_id(2), 10) | 65527UL))) , (safe_add_func_uint32_t_u_u((safe_mul_func_int16_t_s_s(6L, p_1149->g_136)), (&l_899[6] != l_1080)))))) , (safe_sub_func_int64_t_s_s((safe_mul_func_int8_t_s_s(((safe_div_func_int16_t_s_s((((safe_add_func_int16_t_s_s((safe_rshift_func_uint16_t_u_u(((*l_1092) = (((p_1149->g_1091 , FAKE_DIVERGE(p_1149->group_0_offset, get_group_id(0), 10)) && (**p_1149->g_380)) ^ (*l_737))), FAKE_DIVERGE(p_1149->global_2_offset, get_global_id(2), 10))), FAKE_DIVERGE(p_1149->global_1_offset, get_global_id(1), 10))) >= p_5) & 1L), p_5)) != l_1093), 5L)), l_1094))) != 0x3BCC66E4A0EE4BB9L))), p_1149->g_330[5]))))) == p_5))
            { /* block id: 518 */
                int32_t *l_1106 = &l_904;
                int64_t *l_1107 = &l_736[2].f0;
                (*l_737) = (safe_sub_func_uint32_t_u_u(((***l_920)++), ((((((*l_1107) = ((*p_1149->g_963) ^= (((safe_mod_func_int8_t_s_s(p_1149->g_844.f0, (safe_lshift_func_int16_t_s_u(p_1149->g_1103, p_6)))) || ((*p_1149->g_62) = 0x1BC3499BL)) < ((((+(&p_1149->g_380 == ((*l_737) , l_1104))) >= (((*l_1106) = ((l_1105 != l_1105) <= p_1149->g_1091.f0)) , (*l_1106))) | p_5) != p_5)))) , (*p_1149->g_963)) && (*p_1149->g_963)) == (-2L)) & 7L)));
                l_860 = l_1108;
                (*p_1149->g_62) ^= ((*l_1106) || ((l_1109 , (*l_813)) != (*p_1149->g_967)));
            }
            else
            { /* block id: 527 */
                int8_t *l_1114 = (void*)0;
                int8_t *l_1115 = &p_1149->g_72;
                int32_t l_1121 = 0x0695A65BL;
                (*p_1149->g_62) |= ((p_6 & ((((safe_mod_func_int8_t_s_s(((*l_1115) = (safe_sub_func_int32_t_s_s(p_5, p_6))), ((l_1120[0] = (((*l_956) != (l_1117 = (l_1116 = l_1115))) , ((p_5 == ((**l_692) = (**p_1149->g_380))) > ((4UL <= (safe_add_func_int64_t_s_s((&p_1149->g_334[3][5] == (void*)0), FAKE_DIVERGE(p_1149->global_0_offset, get_global_id(0), 10)))) || 1L)))) , 0x22L))) == (*l_737)) , FAKE_DIVERGE(p_1149->group_1_offset, get_group_id(1), 10)) >= l_1121)) , p_6);
                return l_1121;
            }
            ++l_1125;
        }
    }
    if (((safe_mod_func_int8_t_s_s((safe_div_func_int16_t_s_s(0x2841L, (safe_rshift_func_uint8_t_u_u((safe_sub_func_int32_t_s_s((safe_lshift_func_uint16_t_u_s((+((safe_add_func_int8_t_s_s(p_5, ((void*)0 != (*l_740)))) <= ((((((safe_rshift_func_uint16_t_u_u((((((((void*)0 == &l_1054) , p_1149->g_844) , &p_1149->g_139[7][3]) != &p_1149->g_139[2][0]) <= 0x49C9BFC611F52856L) , p_5), l_1142)) , 1UL) == 2UL) | p_5) != 3UL) && (**p_1149->g_380)))), l_1143)), 0UL)), 5)))), p_5)) == p_6))
    { /* block id: 539 */
        uint8_t l_1145 = 0x7CL;
        for (p_1149->g_248.f0 = 0; (p_1149->g_248.f0 <= 3); p_1149->g_248.f0 += 1)
        { /* block id: 542 */
            for (l_712 = 0; (l_712 <= 2); l_712 += 1)
            { /* block id: 545 */
                uint16_t l_1144[4][10] = {{0x64A5L,0UL,0UL,0x64A5L,1UL,0UL,0UL,1UL,0x64A5L,0UL},{0x64A5L,0UL,0UL,0x64A5L,1UL,0UL,0UL,1UL,0x64A5L,0UL},{0x64A5L,0UL,0UL,0x64A5L,1UL,0UL,0UL,1UL,0x64A5L,0UL},{0x64A5L,0UL,0UL,0x64A5L,1UL,0UL,0UL,1UL,0x64A5L,0UL}};
                int i, j;
                return l_1144[3][6];
            }
        }
        return l_1145;
    }
    else
    { /* block id: 550 */
        return p_6;
    }
}


/* ------------------------------------------ */
/* 
 * reads : p_1149->g_625 p_1149->g_361 p_1149->g_75 p_1149->g_92 p_1149->g_62 p_1149->g_156
 * writes: p_1149->g_625 p_1149->g_156 p_1149->g_75 p_1149->g_77 p_1149->g_90.f0
 */
int16_t  func_11(uint16_t  p_12, uint64_t  p_13, int64_t  p_14, uint32_t  p_15, struct S3 * p_1149)
{ /* block id: 322 */
    volatile uint32_t ***l_627 = &p_1149->g_625[8];
    uint16_t *l_630[4];
    int32_t l_631 = 0x0676F234L;
    int32_t *l_632 = &p_1149->g_75;
    union U1 l_639 = {-8L};
    int64_t *l_642 = &p_1149->g_77[5];
    int64_t *l_643 = &p_1149->g_90.f0;
    uint16_t l_646 = 0xE38AL;
    int i;
    for (i = 0; i < 4; i++)
        l_630[i] = (void*)0;
    (*l_627) = p_1149->g_625[8];
    (*l_632) = ((*p_1149->g_361) = ((safe_rshift_func_uint16_t_u_u((p_12 |= GROUP_DIVERGE(2, 1)), 15)) && l_631));
    (*p_1149->g_62) ^= (safe_div_func_int16_t_s_s(((safe_div_func_int64_t_s_s(((GROUP_DIVERGE(0, 1) != 1L) | ((safe_rshift_func_uint16_t_u_u((((l_632 == l_632) ^ ((((l_639 , (((((*l_643) = ((*l_642) = (safe_mul_func_int16_t_s_s((*l_632), (*l_632))))) , &p_1149->g_147) == &p_1149->g_147) | (safe_div_func_int8_t_s_s(p_1149->g_92, (*l_632))))) , GROUP_DIVERGE(2, 1)) >= l_646) > p_14)) < (*l_632)), (*l_632))) <= 7L)), 0x48B6D2E941DB8C25L)) < 0L), (*l_632)));
    return (*l_632);
}


/* ------------------------------------------ */
/* 
 * reads : p_1149->g_136 p_1149->g_90.f0 p_1149->g_456 p_1149->g_229 p_1149->g_573 p_1149->g_79 p_1149->g_525 p_1149->g_144.f0 p_1149->g_77 p_1149->g_139 p_1149->g_380 p_1149->g_381 p_1149->g_78 p_1149->g_160 p_1149->g_62 p_1149->g_156 p_1149->g_330 p_1149->g_361 p_1149->g_72 p_1149->g_423 p_1149->g_609 p_1149->g_402.f0
 * writes: p_1149->g_136 p_1149->g_155 p_1149->g_229 p_1149->g_154 p_1149->g_573 p_1149->g_79 p_1149->g_156 p_1149->g_72 p_1149->g_140 p_1149->g_424 p_1149->g_608 p_1149->g_330 p_1149->g_77
 */
uint64_t  func_17(union U2  p_18, uint32_t  p_19, union U2  p_20, union U2  p_21, uint32_t  p_22, struct S3 * p_1149)
{ /* block id: 112 */
    uint64_t l_302 = 18446744073709551615UL;
    union U2 l_320 = {0x057C45B1799F5A4CL};
    uint64_t l_324 = 0UL;
    uint32_t l_327[2];
    uint32_t *l_382 = &p_1149->g_160[3];
    int32_t l_425 = 0x6B644CD1L;
    uint32_t l_480[7][2][9] = {{{9UL,0x268FBBF0L,0x1822A2B1L,1UL,4UL,0UL,0xE1ED9327L,0x1822A2B1L,0x7CF580B9L},{9UL,0x268FBBF0L,0x1822A2B1L,1UL,4UL,0UL,0xE1ED9327L,0x1822A2B1L,0x7CF580B9L}},{{9UL,0x268FBBF0L,0x1822A2B1L,1UL,4UL,0UL,0xE1ED9327L,0x1822A2B1L,0x7CF580B9L},{9UL,0x268FBBF0L,0x1822A2B1L,1UL,4UL,0UL,0xE1ED9327L,0x1822A2B1L,0x7CF580B9L}},{{9UL,0x268FBBF0L,0x1822A2B1L,1UL,4UL,0UL,0xE1ED9327L,0x1822A2B1L,0x7CF580B9L},{9UL,0x268FBBF0L,0x1822A2B1L,1UL,4UL,0UL,0xE1ED9327L,0x1822A2B1L,0x7CF580B9L}},{{9UL,0x268FBBF0L,0x1822A2B1L,1UL,4UL,0UL,0xE1ED9327L,0x1822A2B1L,0x7CF580B9L},{9UL,0x268FBBF0L,0x1822A2B1L,1UL,4UL,0UL,0xE1ED9327L,0x1822A2B1L,0x7CF580B9L}},{{9UL,0x268FBBF0L,0x1822A2B1L,1UL,4UL,0UL,0xE1ED9327L,0x1822A2B1L,0x7CF580B9L},{9UL,0x268FBBF0L,0x1822A2B1L,1UL,4UL,0UL,0xE1ED9327L,0x1822A2B1L,0x7CF580B9L}},{{9UL,0x268FBBF0L,0x1822A2B1L,1UL,4UL,0UL,0xE1ED9327L,0x1822A2B1L,0x7CF580B9L},{9UL,0x268FBBF0L,0x1822A2B1L,1UL,4UL,0UL,0xE1ED9327L,0x1822A2B1L,0x7CF580B9L}},{{9UL,0x268FBBF0L,0x1822A2B1L,1UL,4UL,0UL,0xE1ED9327L,0x1822A2B1L,0x7CF580B9L},{9UL,0x268FBBF0L,0x1822A2B1L,1UL,4UL,0UL,0xE1ED9327L,0x1822A2B1L,0x7CF580B9L}}};
    int32_t l_483 = 0x659418DFL;
    int32_t l_484[2][2] = {{0x62A2C89BL,0x62A2C89BL},{0x62A2C89BL,0x62A2C89BL}};
    uint64_t *l_505 = (void*)0;
    int32_t l_544 = 0x022956A8L;
    union U0 **l_568 = &p_1149->g_147;
    uint8_t *l_571 = &p_1149->g_229;
    int16_t *l_572 = &p_1149->g_154;
    uint16_t *l_574 = &p_1149->g_79;
    union U2 *l_576 = &p_1149->g_90;
    int16_t l_599 = 8L;
    union U1 l_619 = {1L};
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_327[i] = 1UL;
    for (p_1149->g_136 = 0; (p_1149->g_136 <= 3); p_1149->g_136 += 1)
    { /* block id: 115 */
        int16_t *l_306 = &p_1149->g_155[8][3];
        int16_t *l_307 = &p_1149->g_154;
        uint16_t *l_314 = &p_1149->g_275;
        uint8_t **l_317 = (void*)0;
        uint8_t *l_319 = &p_1149->g_229;
        uint8_t **l_318 = &l_319;
        int32_t **l_321 = &p_1149->g_62;
        int8_t *l_322 = &p_1149->g_72;
        int64_t *l_323 = &l_320.f0;
        int32_t *l_325 = (void*)0;
        int32_t *l_326 = &p_1149->g_75;
        union U2 ***l_328 = &p_1149->g_139[2][0];
        uint64_t *l_329 = &p_1149->g_330[5];
        uint8_t ***l_331 = &l_318;
        uint32_t l_349[8][10] = {{1UL,8UL,0x8D9338E6L,0x7D5070CEL,1UL,4294967295UL,1UL,0xA0F783CFL,8UL,8UL},{1UL,8UL,0x8D9338E6L,0x7D5070CEL,1UL,4294967295UL,1UL,0xA0F783CFL,8UL,8UL},{1UL,8UL,0x8D9338E6L,0x7D5070CEL,1UL,4294967295UL,1UL,0xA0F783CFL,8UL,8UL},{1UL,8UL,0x8D9338E6L,0x7D5070CEL,1UL,4294967295UL,1UL,0xA0F783CFL,8UL,8UL},{1UL,8UL,0x8D9338E6L,0x7D5070CEL,1UL,4294967295UL,1UL,0xA0F783CFL,8UL,8UL},{1UL,8UL,0x8D9338E6L,0x7D5070CEL,1UL,4294967295UL,1UL,0xA0F783CFL,8UL,8UL},{1UL,8UL,0x8D9338E6L,0x7D5070CEL,1UL,4294967295UL,1UL,0xA0F783CFL,8UL,8UL},{1UL,8UL,0x8D9338E6L,0x7D5070CEL,1UL,4294967295UL,1UL,0xA0F783CFL,8UL,8UL}};
        union U0 *l_396 = &p_1149->g_397[0];
        uint8_t l_409[9][2];
        int32_t l_455[10][8] = {{0x401ACA9AL,0x7EF141F2L,(-1L),0x176C6C08L,(-1L),0x7EF141F2L,0x401ACA9AL,1L},{0x401ACA9AL,0x7EF141F2L,(-1L),0x176C6C08L,(-1L),0x7EF141F2L,0x401ACA9AL,1L},{0x401ACA9AL,0x7EF141F2L,(-1L),0x176C6C08L,(-1L),0x7EF141F2L,0x401ACA9AL,1L},{0x401ACA9AL,0x7EF141F2L,(-1L),0x176C6C08L,(-1L),0x7EF141F2L,0x401ACA9AL,1L},{0x401ACA9AL,0x7EF141F2L,(-1L),0x176C6C08L,(-1L),0x7EF141F2L,0x401ACA9AL,1L},{0x401ACA9AL,0x7EF141F2L,(-1L),0x176C6C08L,(-1L),0x7EF141F2L,0x401ACA9AL,1L},{0x401ACA9AL,0x7EF141F2L,(-1L),0x176C6C08L,(-1L),0x7EF141F2L,0x401ACA9AL,1L},{0x401ACA9AL,0x7EF141F2L,(-1L),0x176C6C08L,(-1L),0x7EF141F2L,0x401ACA9AL,1L},{0x401ACA9AL,0x7EF141F2L,(-1L),0x176C6C08L,(-1L),0x7EF141F2L,0x401ACA9AL,1L},{0x401ACA9AL,0x7EF141F2L,(-1L),0x176C6C08L,(-1L),0x7EF141F2L,0x401ACA9AL,1L}};
        union U1 l_519 = {0x555929D44264D78EL};
        int i, j;
        for (i = 0; i < 9; i++)
        {
            for (j = 0; j < 2; j++)
                l_409[i][j] = 255UL;
        }
        (1 + 1);
    }
    if (((l_484[1][0] = ((FAKE_DIVERGE(p_1149->local_1_offset, get_local_id(1), 10) < p_22) & ((p_21.f0 <= ((safe_sub_func_int8_t_s_s((safe_rshift_func_int16_t_s_s((p_1149->g_155[8][3] = p_1149->g_90.f0), 7)), (safe_rshift_func_uint8_t_u_u((((*l_574) |= (safe_add_func_uint16_t_u_u(FAKE_DIVERGE(p_1149->group_0_offset, get_group_id(0), 10), ((((void*)0 != l_568) || p_22) <= (safe_sub_func_int8_t_s_s(((p_1149->g_456 < ((*l_571) &= GROUP_DIVERGE(2, 1))) < l_327[1]), ((p_1149->g_573 ^= ((*l_572) = 0x0470L)) < l_484[0][0]))))))) >= 0x31A4L), 0)))) >= 0x59E41D44L)) < p_20.f0))) || p_1149->g_525))
    { /* block id: 280 */
        return p_1149->g_144.f0;
    }
    else
    { /* block id: 282 */
        int8_t l_587[4];
        int32_t *l_600[10][8][3] = {{{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0}},{{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0}},{{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0}},{{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0}},{{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0}},{{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0}},{{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0}},{{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0}},{{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0}},{{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0},{&p_1149->g_75,&l_484[1][1],(void*)0}}};
        uint16_t *l_611 = (void*)0;
        int8_t l_621 = 0x0EL;
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_587[i] = 1L;
        for (p_18.f1 = 1; (p_18.f1 <= 5); p_18.f1 += 1)
        { /* block id: 285 */
            union U2 **l_575[2][1];
            union U2 **l_586 = &l_576;
            int i, j;
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 1; j++)
                    l_575[i][j] = &p_1149->g_140;
            }
            l_576 = &l_320;
            if (p_1149->g_77[p_18.f1])
                break;
            for (l_483 = 0; (l_483 <= 3); l_483 += 1)
            { /* block id: 290 */
                union U2 l_579 = {0x2A32509B9BD92CF5L};
                int32_t l_594 = 0x1CE0225CL;
                uint64_t *l_597 = &p_1149->g_330[0];
                for (p_20.f1 = 0; (p_20.f1 <= 3); p_20.f1 += 1)
                { /* block id: 293 */
                    union U2 ***l_580 = &l_575[1][0];
                    uint64_t *l_598[1][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                    int i, j;
                    (*p_1149->g_62) &= ((safe_mul_func_uint16_t_u_u(((p_1149->g_139[(l_483 + 1)][l_483] == ((*l_580) = (l_579 , &p_1149->g_140))) || ((*p_1149->g_380) == (*p_1149->g_380))), p_1149->g_78[p_20.f1])) < (((void*)0 == &p_1149->g_381[0]) , (safe_add_func_uint32_t_u_u((safe_div_func_uint64_t_u_u((safe_unary_minus_func_int16_t_s((l_586 != l_586))), p_1149->g_160[l_483])), 0x1D0EB130L))));
                    if ((*p_1149->g_62))
                    { /* block id: 296 */
                        int32_t **l_601 = &l_600[9][3][1];
                        (*p_1149->g_361) = ((((!((l_587[1] , &p_1149->g_77[1]) == (void*)0)) > (((safe_lshift_func_uint8_t_u_s(0x92L, 0)) ^ ((safe_sub_func_int16_t_s_s(((void*)0 == &p_1149->g_160[l_483]), (l_594 = 1UL))) >= (l_302 || ((((safe_lshift_func_uint8_t_u_u(((l_597 != l_598[0][3]) , 0xD0L), p_20.f1)) , p_21.f0) , l_579.f0) < l_599)))) , 0x5EC2L)) == (**p_1149->g_380)) == p_1149->g_160[l_483]);
                        (*l_601) = l_600[9][3][1];
                        return p_1149->g_77[5];
                    }
                    else
                    { /* block id: 301 */
                        return p_18.f1;
                    }
                }
            }
        }
        for (p_1149->g_72 = 0; (p_1149->g_72 <= 4); p_1149->g_72 += 1)
        { /* block id: 309 */
            union U2 **l_602 = (void*)0;
            union U2 **l_603 = &p_1149->g_140;
            uint16_t *l_606[8] = {(void*)0,&p_1149->g_275,(void*)0,(void*)0,&p_1149->g_275,(void*)0,(void*)0,&p_1149->g_275};
            int64_t *l_607[6][3][10] = {{{&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,(void*)0,(void*)0,&p_1149->g_608,&p_1149->g_608},{&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,(void*)0,(void*)0,&p_1149->g_608,&p_1149->g_608},{&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,(void*)0,(void*)0,&p_1149->g_608,&p_1149->g_608}},{{&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,(void*)0,(void*)0,&p_1149->g_608,&p_1149->g_608},{&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,(void*)0,(void*)0,&p_1149->g_608,&p_1149->g_608},{&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,(void*)0,(void*)0,&p_1149->g_608,&p_1149->g_608}},{{&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,(void*)0,(void*)0,&p_1149->g_608,&p_1149->g_608},{&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,(void*)0,(void*)0,&p_1149->g_608,&p_1149->g_608},{&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,(void*)0,(void*)0,&p_1149->g_608,&p_1149->g_608}},{{&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,(void*)0,(void*)0,&p_1149->g_608,&p_1149->g_608},{&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,(void*)0,(void*)0,&p_1149->g_608,&p_1149->g_608},{&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,(void*)0,(void*)0,&p_1149->g_608,&p_1149->g_608}},{{&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,(void*)0,(void*)0,&p_1149->g_608,&p_1149->g_608},{&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,(void*)0,(void*)0,&p_1149->g_608,&p_1149->g_608},{&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,(void*)0,(void*)0,&p_1149->g_608,&p_1149->g_608}},{{&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,(void*)0,(void*)0,&p_1149->g_608,&p_1149->g_608},{&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,(void*)0,(void*)0,&p_1149->g_608,&p_1149->g_608},{&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,&p_1149->g_608,(void*)0,(void*)0,&p_1149->g_608,&p_1149->g_608}}};
            uint16_t **l_612 = &l_574;
            int32_t l_620 = 1L;
            int64_t *l_622 = &p_1149->g_77[4];
            int i, j, k;
            (*l_603) = &p_20;
            l_425 &= ((p_22 & ((((*p_1149->g_423) = l_606[5]) == (void*)0) == (((*l_622) = (((p_1149->g_608 = 0x399C1D2AD6591708L) , FAKE_DIVERGE(p_1149->local_0_offset, get_local_id(0), 10)) > ((p_1149->g_609 == ((*l_612) = l_611)) | (p_21 , (safe_div_func_uint32_t_u_u((safe_sub_func_uint64_t_u_u(((**p_1149->g_380) ^= p_22), ((safe_mul_func_uint16_t_u_u((l_619 , 0xFB54L), l_620)) && FAKE_DIVERGE(p_1149->local_0_offset, get_local_id(0), 10)))), l_621)))))) < 0x7EE902F74404E775L))) , (*p_1149->g_62));
            return p_1149->g_402.f0;
        }
    }
    return p_19;
}


/* ------------------------------------------ */
/* 
 * reads : p_1149->g_275
 * writes: p_1149->g_275
 */
union U2  func_23(int16_t  p_24, uint32_t  p_25, uint32_t  p_26, union U2  p_27, uint16_t  p_28, struct S3 * p_1149)
{ /* block id: 109 */
    int64_t l_260[5][7] = {{0x4E0DDB56AAC1A399L,0x4E0DDB56AAC1A399L,0x4E0DDB56AAC1A399L,0x4E0DDB56AAC1A399L,0x4E0DDB56AAC1A399L,0x4E0DDB56AAC1A399L,0x4E0DDB56AAC1A399L},{0x4E0DDB56AAC1A399L,0x4E0DDB56AAC1A399L,0x4E0DDB56AAC1A399L,0x4E0DDB56AAC1A399L,0x4E0DDB56AAC1A399L,0x4E0DDB56AAC1A399L,0x4E0DDB56AAC1A399L},{0x4E0DDB56AAC1A399L,0x4E0DDB56AAC1A399L,0x4E0DDB56AAC1A399L,0x4E0DDB56AAC1A399L,0x4E0DDB56AAC1A399L,0x4E0DDB56AAC1A399L,0x4E0DDB56AAC1A399L},{0x4E0DDB56AAC1A399L,0x4E0DDB56AAC1A399L,0x4E0DDB56AAC1A399L,0x4E0DDB56AAC1A399L,0x4E0DDB56AAC1A399L,0x4E0DDB56AAC1A399L,0x4E0DDB56AAC1A399L},{0x4E0DDB56AAC1A399L,0x4E0DDB56AAC1A399L,0x4E0DDB56AAC1A399L,0x4E0DDB56AAC1A399L,0x4E0DDB56AAC1A399L,0x4E0DDB56AAC1A399L,0x4E0DDB56AAC1A399L}};
    int32_t l_261 = (-1L);
    int32_t l_262 = (-1L);
    int32_t l_263 = 0L;
    int32_t *l_264 = &l_261;
    int32_t *l_265 = &l_261;
    int32_t *l_266 = &l_263;
    int32_t *l_267 = &l_261;
    int32_t *l_268 = &p_1149->g_156;
    int32_t *l_269 = &l_262;
    int32_t *l_270 = &p_1149->g_156;
    int32_t *l_271 = &l_263;
    int32_t l_272 = (-1L);
    int32_t *l_273 = (void*)0;
    int32_t *l_274[7];
    union U2 l_278 = {0L};
    int i, j;
    for (i = 0; i < 7; i++)
        l_274[i] = &l_263;
    p_1149->g_275--;
    return l_278;
}


/* ------------------------------------------ */
/* 
 * reads : p_1149->g_45 p_1149->g_16 p_1149->g_92 p_1149->g_229 p_1149->g_62 p_1149->g_156
 * writes: p_1149->g_140 p_1149->g_229 p_1149->g_62
 */
uint8_t  func_31(int64_t  p_32, uint8_t  p_33, union U2  p_34, uint16_t  p_35, int64_t  p_36, struct S3 * p_1149)
{ /* block id: 101 */
    uint16_t *l_242[4][1] = {{&p_1149->g_79},{&p_1149->g_79},{&p_1149->g_79},{&p_1149->g_79}};
    int32_t l_243 = 0L;
    int32_t l_246[9][10][2] = {{{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL}},{{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL}},{{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL}},{{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL}},{{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL}},{{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL}},{{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL}},{{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL}},{{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL},{(-1L),0x53C893FEL}}};
    union U0 *l_247 = &p_1149->g_248;
    uint32_t *l_249 = &p_1149->g_160[3];
    int32_t *l_250 = &l_246[6][7][0];
    int32_t **l_251 = &p_1149->g_62;
    int32_t *l_252 = &l_246[0][5][1];
    int32_t *l_253 = (void*)0;
    int32_t *l_254 = (void*)0;
    int32_t *l_255 = &p_1149->g_156;
    int32_t *l_256 = &l_246[3][4][0];
    uint16_t l_257 = 0x45BDL;
    int i, j, k;
    (*l_251) = func_46((((((*l_250) = (safe_add_func_uint16_t_u_u((safe_div_func_uint16_t_u_u((3UL <= ((safe_rshift_func_uint8_t_u_u((safe_div_func_int8_t_s_s(((((l_243 = (p_35 ^= 0x1735L)) | (p_32 < p_1149->g_45)) != (safe_rshift_func_int16_t_s_u(l_246[0][6][0], (((p_36 || (p_1149->g_16 ^ ((l_247 != (void*)0) < l_246[0][3][1]))) , l_249) != (void*)0)))) && 4UL), l_246[0][6][0])), l_246[8][7][0])) || l_246[0][6][0])), 65535UL)), GROUP_DIVERGE(2, 1)))) , l_250) == l_249) , &p_1149->g_156), l_250, p_32, p_1149->g_92, p_1149);
    (*l_251) = (*l_251);
    l_257--;
    return (**l_251);
}


/* ------------------------------------------ */
/* 
 * reads : p_1149->g_62 p_1149->g_45 p_1149->g_16 p_1149->g_79 p_1149->g_75 p_1149->g_146.f0 p_1149->g_160 p_1149->g_229 p_1149->g_156
 * writes: p_1149->g_72 p_1149->g_79 p_1149->g_62 p_1149->g_75 p_1149->g_140 p_1149->g_229
 */
uint8_t  func_37(uint32_t  p_38, uint16_t  p_39, int64_t  p_40, uint16_t  p_41, int64_t  p_42, struct S3 * p_1149)
{ /* block id: 7 */
    uint64_t l_61 = 18446744073709551615UL;
    int32_t *l_63 = (void*)0;
    union U2 l_64 = {0L};
    int8_t *l_71 = &p_1149->g_72;
    int64_t l_73 = 0x731485A0FF814908L;
    int32_t **l_232 = &p_1149->g_62;
    (*l_232) = func_46(func_51(func_56(((0UL & l_61) , p_1149->g_62), l_63, l_64, (safe_add_func_int64_t_s_s((safe_mod_func_uint32_t_u_u(p_1149->g_45, (~p_42))), (((safe_add_func_int16_t_s_s((-1L), ((((*l_71) = (((((((l_64 , l_63) == p_1149->g_62) || p_38) | 0x5623L) , 4294967295UL) & 0xFC4FF2D4L) < p_1149->g_16)) == l_73) > 0x4E412C21L))) ^ 0L) == 0x32L))), p_1149), l_63, p_38, p_1149->g_146.f0, p_1149), &p_1149->g_156, l_73, p_1149->g_160[1], p_1149);
    return (**l_232);
}


/* ------------------------------------------ */
/* 
 * reads : p_1149->g_229
 * writes: p_1149->g_140 p_1149->g_229
 */
int32_t * func_46(int32_t * p_47, int32_t * p_48, int32_t  p_49, uint32_t  p_50, struct S3 * p_1149)
{ /* block id: 95 */
    union U2 **l_213 = &p_1149->g_140;
    int32_t l_214 = 3L;
    int32_t l_215[10][7] = {{(-6L),(-1L),(-1L),(-6L),0x0CA4D4BFL,0L,(-1L)},{(-6L),(-1L),(-1L),(-6L),0x0CA4D4BFL,0L,(-1L)},{(-6L),(-1L),(-1L),(-6L),0x0CA4D4BFL,0L,(-1L)},{(-6L),(-1L),(-1L),(-6L),0x0CA4D4BFL,0L,(-1L)},{(-6L),(-1L),(-1L),(-6L),0x0CA4D4BFL,0L,(-1L)},{(-6L),(-1L),(-1L),(-6L),0x0CA4D4BFL,0L,(-1L)},{(-6L),(-1L),(-1L),(-6L),0x0CA4D4BFL,0L,(-1L)},{(-6L),(-1L),(-1L),(-6L),0x0CA4D4BFL,0L,(-1L)},{(-6L),(-1L),(-1L),(-6L),0x0CA4D4BFL,0L,(-1L)},{(-6L),(-1L),(-1L),(-6L),0x0CA4D4BFL,0L,(-1L)}};
    int32_t *l_216 = &p_1149->g_75;
    int32_t *l_217 = &l_215[3][0];
    int32_t *l_218 = &l_215[5][3];
    int32_t *l_219 = (void*)0;
    int32_t *l_220 = &l_214;
    int32_t *l_221 = &l_215[5][3];
    int32_t *l_222 = &l_215[8][6];
    int32_t *l_223 = (void*)0;
    int32_t *l_224 = &p_1149->g_156;
    int32_t *l_225 = &p_1149->g_156;
    int32_t *l_226 = &p_1149->g_75;
    int32_t *l_227 = &p_1149->g_75;
    int32_t *l_228[8] = {&l_215[5][3],&l_215[5][3],&l_215[5][3],&l_215[5][3],&l_215[5][3],&l_215[5][3],&l_215[5][3],&l_215[5][3]};
    int i, j;
    (*l_213) = (void*)0;
    --p_1149->g_229;
    return &p_1149->g_156;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_51(int32_t * p_52, int32_t * p_53, int8_t  p_54, uint64_t  p_55, struct S3 * p_1149)
{ /* block id: 93 */
    return &p_1149->g_75;
}


/* ------------------------------------------ */
/* 
 * reads : p_1149->g_79 p_1149->g_75
 * writes: p_1149->g_79 p_1149->g_62 p_1149->g_75
 */
int32_t * func_56(int32_t * p_57, int32_t * p_58, union U2  p_59, uint32_t  p_60, struct S3 * p_1149)
{ /* block id: 9 */
    int32_t *l_74 = &p_1149->g_75;
    int32_t *l_76[9][4][3] = {{{(void*)0,&p_1149->g_75,(void*)0},{(void*)0,&p_1149->g_75,(void*)0},{(void*)0,&p_1149->g_75,(void*)0},{(void*)0,&p_1149->g_75,(void*)0}},{{(void*)0,&p_1149->g_75,(void*)0},{(void*)0,&p_1149->g_75,(void*)0},{(void*)0,&p_1149->g_75,(void*)0},{(void*)0,&p_1149->g_75,(void*)0}},{{(void*)0,&p_1149->g_75,(void*)0},{(void*)0,&p_1149->g_75,(void*)0},{(void*)0,&p_1149->g_75,(void*)0},{(void*)0,&p_1149->g_75,(void*)0}},{{(void*)0,&p_1149->g_75,(void*)0},{(void*)0,&p_1149->g_75,(void*)0},{(void*)0,&p_1149->g_75,(void*)0},{(void*)0,&p_1149->g_75,(void*)0}},{{(void*)0,&p_1149->g_75,(void*)0},{(void*)0,&p_1149->g_75,(void*)0},{(void*)0,&p_1149->g_75,(void*)0},{(void*)0,&p_1149->g_75,(void*)0}},{{(void*)0,&p_1149->g_75,(void*)0},{(void*)0,&p_1149->g_75,(void*)0},{(void*)0,&p_1149->g_75,(void*)0},{(void*)0,&p_1149->g_75,(void*)0}},{{(void*)0,&p_1149->g_75,(void*)0},{(void*)0,&p_1149->g_75,(void*)0},{(void*)0,&p_1149->g_75,(void*)0},{(void*)0,&p_1149->g_75,(void*)0}},{{(void*)0,&p_1149->g_75,(void*)0},{(void*)0,&p_1149->g_75,(void*)0},{(void*)0,&p_1149->g_75,(void*)0},{(void*)0,&p_1149->g_75,(void*)0}},{{(void*)0,&p_1149->g_75,(void*)0},{(void*)0,&p_1149->g_75,(void*)0},{(void*)0,&p_1149->g_75,(void*)0},{(void*)0,&p_1149->g_75,(void*)0}}};
    union U2 *l_89 = &p_1149->g_90;
    int32_t l_210 = 5L;
    int32_t *l_211 = &l_210;
    int32_t *l_212 = (void*)0;
    int i, j, k;
    p_1149->g_79--;
    for (p_1149->g_79 = 0; (p_1149->g_79 <= 5); p_1149->g_79 += 1)
    { /* block id: 13 */
        int32_t **l_82 = &p_1149->g_62;
        uint64_t l_137 = 0x1E098A53124D0BBBL;
        union U0 *l_142[4] = {&p_1149->g_143,&p_1149->g_143,&p_1149->g_143,&p_1149->g_143};
        int32_t l_157 = (-1L);
        union U1 l_167 = {0x45445FD2DC1123E8L};
        union U2 ***l_201[9] = {&p_1149->g_139[3][2],&p_1149->g_139[3][2],&p_1149->g_139[3][2],&p_1149->g_139[3][2],&p_1149->g_139[3][2],&p_1149->g_139[3][2],&p_1149->g_139[3][2],&p_1149->g_139[3][2],&p_1149->g_139[3][2]};
        int i;
        (*l_82) = &p_1149->g_75;
        l_76[3][0][0] = p_57;
        for (p_59.f0 = 1; (p_59.f0 <= 5); p_59.f0 += 1)
        { /* block id: 18 */
            int32_t l_151 = 0x7B38DBA4L;
            int32_t l_152 = 0x7DF757B9L;
            int32_t l_158 = 0x3C433E80L;
            int32_t *l_189[9][8] = {{&p_1149->g_75,&l_158,&l_157,&l_158,&l_158,&l_158,&l_157,&l_158},{&p_1149->g_75,&l_158,&l_157,&l_158,&l_158,&l_158,&l_157,&l_158},{&p_1149->g_75,&l_158,&l_157,&l_158,&l_158,&l_158,&l_157,&l_158},{&p_1149->g_75,&l_158,&l_157,&l_158,&l_158,&l_158,&l_157,&l_158},{&p_1149->g_75,&l_158,&l_157,&l_158,&l_158,&l_158,&l_157,&l_158},{&p_1149->g_75,&l_158,&l_157,&l_158,&l_158,&l_158,&l_157,&l_158},{&p_1149->g_75,&l_158,&l_157,&l_158,&l_158,&l_158,&l_157,&l_158},{&p_1149->g_75,&l_158,&l_157,&l_158,&l_158,&l_158,&l_157,&l_158},{&p_1149->g_75,&l_158,&l_157,&l_158,&l_158,&l_158,&l_157,&l_158}};
            int i, j;
            (1 + 1);
        }
    }
    (*l_74) ^= l_210;
    return l_212;
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S3 c_1150;
    struct S3* p_1149 = &c_1150;
    struct S3 c_1151 = {
        0x351CDCB363F9E923L, // p_1149->g_2
        0x694AL, // p_1149->g_16
        0UL, // p_1149->g_45
        (void*)0, // p_1149->g_62
        1L, // p_1149->g_72
        6L, // p_1149->g_75
        {0x611E7DC6E2FE0F9CL,0x611E7DC6E2FE0F9CL,0x611E7DC6E2FE0F9CL,0x611E7DC6E2FE0F9CL,0x611E7DC6E2FE0F9CL,0x611E7DC6E2FE0F9CL}, // p_1149->g_77
        {(-1L),(-1L),(-1L),(-1L)}, // p_1149->g_78
        0xF316L, // p_1149->g_79
        {0x13564EE88CA977D5L}, // p_1149->g_90
        9L, // p_1149->g_92
        0x11L, // p_1149->g_136
        &p_1149->g_90, // p_1149->g_140
        {{&p_1149->g_140,&p_1149->g_140,&p_1149->g_140,&p_1149->g_140,&p_1149->g_140},{&p_1149->g_140,&p_1149->g_140,&p_1149->g_140,&p_1149->g_140,&p_1149->g_140},{&p_1149->g_140,&p_1149->g_140,&p_1149->g_140,&p_1149->g_140,&p_1149->g_140},{&p_1149->g_140,&p_1149->g_140,&p_1149->g_140,&p_1149->g_140,&p_1149->g_140},{&p_1149->g_140,&p_1149->g_140,&p_1149->g_140,&p_1149->g_140,&p_1149->g_140},{&p_1149->g_140,&p_1149->g_140,&p_1149->g_140,&p_1149->g_140,&p_1149->g_140},{&p_1149->g_140,&p_1149->g_140,&p_1149->g_140,&p_1149->g_140,&p_1149->g_140},{&p_1149->g_140,&p_1149->g_140,&p_1149->g_140,&p_1149->g_140,&p_1149->g_140},{&p_1149->g_140,&p_1149->g_140,&p_1149->g_140,&p_1149->g_140,&p_1149->g_140}}, // p_1149->g_139
        {0xC086913BL}, // p_1149->g_143
        {4294967294UL}, // p_1149->g_144
        {0xCE74501BL}, // p_1149->g_146
        {0x0B4C8DAEL}, // p_1149->g_148
        &p_1149->g_148, // p_1149->g_147
        (-1L), // p_1149->g_154
        {{(-3L),(-3L),(-3L),(-3L),(-3L)},{(-3L),(-3L),(-3L),(-3L),(-3L)},{(-3L),(-3L),(-3L),(-3L),(-3L)},{(-3L),(-3L),(-3L),(-3L),(-3L)},{(-3L),(-3L),(-3L),(-3L),(-3L)},{(-3L),(-3L),(-3L),(-3L),(-3L)},{(-3L),(-3L),(-3L),(-3L),(-3L)},{(-3L),(-3L),(-3L),(-3L),(-3L)},{(-3L),(-3L),(-3L),(-3L),(-3L)}}, // p_1149->g_155
        8L, // p_1149->g_156
        {0xED8970B6L,0xED8970B6L,0xED8970B6L,0xED8970B6L}, // p_1149->g_160
        250UL, // p_1149->g_229
        {4UL}, // p_1149->g_248
        2UL, // p_1149->g_275
        {0x6D4538026A33A6AFL,0x6D4538026A33A6AFL,0x6D4538026A33A6AFL,0x6D4538026A33A6AFL,0x6D4538026A33A6AFL,0x6D4538026A33A6AFL,0x6D4538026A33A6AFL,0x6D4538026A33A6AFL,0x6D4538026A33A6AFL}, // p_1149->g_330
        (void*)0, // p_1149->g_336
        &p_1149->g_336, // p_1149->g_335
        {{&p_1149->g_335,&p_1149->g_335,&p_1149->g_335,&p_1149->g_335,&p_1149->g_335,&p_1149->g_335,&p_1149->g_335},{&p_1149->g_335,&p_1149->g_335,&p_1149->g_335,&p_1149->g_335,&p_1149->g_335,&p_1149->g_335,&p_1149->g_335},{&p_1149->g_335,&p_1149->g_335,&p_1149->g_335,&p_1149->g_335,&p_1149->g_335,&p_1149->g_335,&p_1149->g_335},{&p_1149->g_335,&p_1149->g_335,&p_1149->g_335,&p_1149->g_335,&p_1149->g_335,&p_1149->g_335,&p_1149->g_335}}, // p_1149->g_334
        &p_1149->g_156, // p_1149->g_361
        {&p_1149->g_330[1],&p_1149->g_330[1],&p_1149->g_330[1],&p_1149->g_330[1],&p_1149->g_330[1]}, // p_1149->g_381
        &p_1149->g_381[0], // p_1149->g_380
        {{4294967290UL},{4294967290UL},{4294967290UL}}, // p_1149->g_397
        {0x71D498FDL}, // p_1149->g_402
        {4294967295UL}, // p_1149->g_403
        (void*)0, // p_1149->g_424
        &p_1149->g_424, // p_1149->g_423
        0x0B7A3847L, // p_1149->g_448
        4294967295UL, // p_1149->g_456
        1UL, // p_1149->g_487
        0x005037B548361872L, // p_1149->g_525
        0xD448L, // p_1149->g_573
        1L, // p_1149->g_608
        0x5627L, // p_1149->g_610
        &p_1149->g_610, // p_1149->g_609
        {{{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL}},{{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL}},{{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL}},{{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL}},{{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL}},{{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL}},{{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL}},{{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL}},{{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL}},{{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL},{0xA516429F6B80EA3BL,18446744073709551611UL}}}, // p_1149->g_624
        (void*)0, // p_1149->g_626
        {&p_1149->g_626,&p_1149->g_626,&p_1149->g_626,&p_1149->g_626,&p_1149->g_626,&p_1149->g_626,&p_1149->g_626,&p_1149->g_626,&p_1149->g_626}, // p_1149->g_625
        (void*)0, // p_1149->g_647
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1149->g_649
        &p_1149->g_424, // p_1149->g_742
        {3L}, // p_1149->g_844
        &p_1149->g_844, // p_1149->g_846
        &p_1149->g_846, // p_1149->g_868
        {&p_1149->g_160[3],&p_1149->g_160[3]}, // p_1149->g_919
        &p_1149->g_919[0], // p_1149->g_918
        {&p_1149->g_918,&p_1149->g_918,&p_1149->g_918,&p_1149->g_918,&p_1149->g_918,&p_1149->g_918}, // p_1149->g_917
        (void*)0, // p_1149->g_935
        &p_1149->g_90.f0, // p_1149->g_963
        {&p_1149->g_77[0],&p_1149->g_77[0]}, // p_1149->g_964
        (void*)0, // p_1149->g_968
        &p_1149->g_968, // p_1149->g_967
        &p_1149->g_846, // p_1149->g_1046
        {4294967295UL}, // p_1149->g_1064
        {5UL}, // p_1149->g_1091
        1L, // p_1149->g_1103
        0L, // p_1149->g_1148
        0, // p_1149->v_collective
        sequence_input[get_global_id(0)], // p_1149->global_0_offset
        sequence_input[get_global_id(1)], // p_1149->global_1_offset
        sequence_input[get_global_id(2)], // p_1149->global_2_offset
        sequence_input[get_local_id(0)], // p_1149->local_0_offset
        sequence_input[get_local_id(1)], // p_1149->local_1_offset
        sequence_input[get_local_id(2)], // p_1149->local_2_offset
        sequence_input[get_group_id(0)], // p_1149->group_0_offset
        sequence_input[get_group_id(1)], // p_1149->group_1_offset
        sequence_input[get_group_id(2)], // p_1149->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_1150 = c_1151;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1149);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1149->g_2, "p_1149->g_2", print_hash_value);
    transparent_crc(p_1149->g_16, "p_1149->g_16", print_hash_value);
    transparent_crc(p_1149->g_45, "p_1149->g_45", print_hash_value);
    transparent_crc(p_1149->g_72, "p_1149->g_72", print_hash_value);
    transparent_crc(p_1149->g_75, "p_1149->g_75", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1149->g_77[i], "p_1149->g_77[i]", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1149->g_78[i], "p_1149->g_78[i]", print_hash_value);

    }
    transparent_crc(p_1149->g_79, "p_1149->g_79", print_hash_value);
    transparent_crc(p_1149->g_92, "p_1149->g_92", print_hash_value);
    transparent_crc(p_1149->g_136, "p_1149->g_136", print_hash_value);
    transparent_crc(p_1149->g_143.f0, "p_1149->g_143.f0", print_hash_value);
    transparent_crc(p_1149->g_144.f0, "p_1149->g_144.f0", print_hash_value);
    transparent_crc(p_1149->g_146.f0, "p_1149->g_146.f0", print_hash_value);
    transparent_crc(p_1149->g_148.f0, "p_1149->g_148.f0", print_hash_value);
    transparent_crc(p_1149->g_154, "p_1149->g_154", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1149->g_155[i][j], "p_1149->g_155[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1149->g_156, "p_1149->g_156", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1149->g_160[i], "p_1149->g_160[i]", print_hash_value);

    }
    transparent_crc(p_1149->g_229, "p_1149->g_229", print_hash_value);
    transparent_crc(p_1149->g_248.f0, "p_1149->g_248.f0", print_hash_value);
    transparent_crc(p_1149->g_275, "p_1149->g_275", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1149->g_330[i], "p_1149->g_330[i]", print_hash_value);

    }
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1149->g_397[i].f0, "p_1149->g_397[i].f0", print_hash_value);

    }
    transparent_crc(p_1149->g_402.f0, "p_1149->g_402.f0", print_hash_value);
    transparent_crc(p_1149->g_403.f0, "p_1149->g_403.f0", print_hash_value);
    transparent_crc(p_1149->g_448, "p_1149->g_448", print_hash_value);
    transparent_crc(p_1149->g_456, "p_1149->g_456", print_hash_value);
    transparent_crc(p_1149->g_487, "p_1149->g_487", print_hash_value);
    transparent_crc(p_1149->g_525, "p_1149->g_525", print_hash_value);
    transparent_crc(p_1149->g_573, "p_1149->g_573", print_hash_value);
    transparent_crc(p_1149->g_608, "p_1149->g_608", print_hash_value);
    transparent_crc(p_1149->g_610, "p_1149->g_610", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1149->g_624[i][j][k], "p_1149->g_624[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1149->g_844.f0, "p_1149->g_844.f0", print_hash_value);
    transparent_crc(p_1149->g_1064.f0, "p_1149->g_1064.f0", print_hash_value);
    transparent_crc(p_1149->g_1091.f0, "p_1149->g_1091.f0", print_hash_value);
    transparent_crc(p_1149->g_1103, "p_1149->g_1103", print_hash_value);
    transparent_crc(p_1149->g_1148, "p_1149->g_1148", print_hash_value);
    transparent_crc(p_1149->v_collective, "p_1149->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
