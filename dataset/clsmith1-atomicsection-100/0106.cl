// --atomics 27 ---fake_divergence -g 60,94,1 -l 15,1,1
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


// Seed: 106

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile uint64_t  f0;
   int16_t  f1;
   uint64_t  f2;
   int8_t  f3;
   uint32_t  f4;
   int64_t  f5;
   int32_t  f6;
   uint8_t  f7;
   volatile int32_t  f8;
};

union U1 {
   int64_t  f0;
   volatile struct S0  f1;
   volatile uint64_t  f2;
};

union U2 {
   int64_t  f0;
   int16_t  f1;
   int8_t * volatile  f2;
   struct S0  f3;
   uint8_t  f4;
};

struct S3 {
    int64_t g_10;
    int8_t g_14;
    uint32_t g_16[1];
    int32_t g_59[7];
    int32_t g_62;
    int32_t g_65;
    uint8_t g_74;
    union U2 g_76[10][9];
    int32_t g_91;
    int32_t *g_96;
    int32_t ** volatile g_98;
    struct S0 g_104;
    struct S0 * volatile g_105;
    int8_t *g_113;
    int8_t * volatile * volatile g_112;
    union U2 *g_118;
    union U2 ** volatile g_117;
    struct S0 g_127;
    struct S0 g_137;
    struct S0 * volatile g_163[4];
    struct S0 * volatile g_164;
    struct S0 g_174;
    struct S0 *g_173;
    uint32_t g_200;
    union U2 *g_215;
    union U2 g_217[9][6][4];
    union U2 g_218;
    union U2 g_219;
    union U2 g_220;
    union U2 g_221;
    union U2 g_222;
    union U2 g_223[10];
    union U2 g_224;
    union U2 g_225;
    union U2 g_226;
    union U2 g_227[4][7][5];
    union U2 g_228;
    union U2 g_229;
    union U2 g_230;
    union U2 g_231;
    union U2 g_232;
    union U2 g_233;
    union U2 g_234;
    union U2 g_235;
    union U2 g_236[9][2][9];
    union U2 g_237;
    union U2 g_238;
    union U2 g_239;
    union U2 g_240;
    union U2 g_241;
    union U2 g_242;
    union U2 g_243;
    union U2 g_244;
    int32_t ** volatile g_248;
    int32_t ** volatile g_249;
    uint32_t *g_256;
    uint32_t **g_255[9];
    uint32_t *** volatile g_254[4][10];
    uint32_t *** volatile g_257;
    uint32_t *** volatile g_258;
    int32_t * volatile g_259;
    union U1 g_278[6][7];
    volatile uint8_t g_295;
    uint16_t g_308;
    uint32_t g_314;
    volatile struct S0 g_316;
    volatile struct S0 * volatile g_317;
    struct S0 g_340[10][1];
    struct S0 g_342[4];
    uint8_t g_343[10][7];
    int8_t *g_346;
    uint32_t g_362;
    volatile int8_t *g_365;
    volatile int8_t **g_364;
    volatile int8_t ** volatile *g_363;
    int32_t ** volatile g_434[3];
    int32_t ** volatile g_435;
    int32_t ** volatile g_442;
    int64_t *g_443;
    volatile struct S0 g_475;
    volatile struct S0 g_476;
    struct S0 g_477;
    struct S0 * volatile g_478;
    union U2 g_491;
    volatile struct S0 g_520[7];
    union U2 g_524[10][6];
    int8_t **g_532;
    int8_t ***g_531;
    volatile struct S0 g_538[2];
    int16_t *g_595;
    int16_t **g_594;
    int16_t *** volatile g_596;
    int32_t * volatile *g_599;
    int32_t * volatile ** volatile g_598;
    int8_t ****g_625;
    struct S0 g_662;
    uint32_t g_699;
    int32_t g_741;
    struct S0 g_757;
    uint64_t g_784;
    volatile union U1 g_817[5];
    struct S0 g_829;
    uint32_t ***g_863[7];
    volatile struct S0 g_885;
    int16_t g_923[9][8];
    int16_t ***g_947;
    int16_t ****g_946;
    union U2 g_1014;
    union U1 g_1051;
    union U1 g_1057;
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
union U1  func_1(struct S3 * p_1058);
uint16_t  func_6(int16_t  p_7, int8_t * p_8, int8_t * p_9, struct S3 * p_1058);
int32_t  func_17(int8_t  p_18, int64_t  p_19, uint64_t  p_20, struct S3 * p_1058);
union U2  func_29(int8_t  p_30, int8_t * p_31, struct S3 * p_1058);
int8_t  func_32(uint32_t  p_33, uint32_t  p_34, uint32_t  p_35, int8_t * p_36, int8_t * p_37, struct S3 * p_1058);
union U2  func_39(int8_t * p_40, int8_t * p_41, struct S3 * p_1058);
int8_t * func_42(uint32_t  p_43, int64_t  p_44, int8_t * p_45, int64_t  p_46, uint8_t  p_47, struct S3 * p_1058);
uint32_t  func_48(uint32_t  p_49, struct S3 * p_1058);
int16_t  func_50(int32_t  p_51, int8_t * p_52, int8_t * p_53, int8_t * p_54, struct S3 * p_1058);
struct S0  func_68(uint64_t  p_69, int32_t  p_70, struct S3 * p_1058);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1058->g_10 p_1058->g_829.f8 p_1058->g_757.f8 p_1058->g_595 p_1058->g_477.f1 p_1058->g_96 p_1058->g_59 p_1058->g_76.f0 p_1058->g_594 p_1058->g_599 p_1058->g_259 p_1058->g_174.f3 p_1058->g_226.f0 p_1058->g_885 p_1058->g_238.f0 p_1058->g_340.f5 p_1058->g_520.f2 p_1058->g_757.f1 p_1058->g_817 p_1058->g_342.f1 p_1058->g_137.f5 p_1058->g_946 p_1058->g_662.f1 p_1058->g_256 p_1058->g_200 p_1058->g_113 p_1058->g_104.f3 p_1058->g_174.f2 p_1058->g_104.f5 p_1058->g_278 p_1058->g_538.f2 p_1058->g_477.f7 p_1058->g_104.f2 p_1058->g_228.f0 p_1058->g_443 p_1058->g_62 p_1058->g_174.f4 p_1058->g_741 p_1058->g_1014 p_1058->g_662.f8 p_1058->g_829.f1 p_1058->g_829.f4 p_1058->g_531 p_1058->g_532 p_1058->g_112 p_1058->g_1051 p_1058->g_104.f7 p_1058->g_1057
 * writes: p_1058->g_76.f0 p_1058->g_65 p_1058->g_259 p_1058->g_174.f3 p_1058->g_477.f6 p_1058->g_174.f1 p_1058->g_137.f5 p_1058->g_757.f1 p_1058->g_863 p_1058->g_230.f0 p_1058->g_200 p_1058->g_228.f3.f7 p_1058->g_477.f1 p_1058->g_477.f7 p_1058->g_104.f2 p_1058->g_59 p_1058->g_741 p_1058->g_104.f7
 */
union U1  func_1(struct S3 * p_1058)
{ /* block id: 4 */
    int8_t *l_11 = (void*)0;
    int8_t *l_13 = &p_1058->g_14;
    int8_t **l_12[4][5][8] = {{{&l_13,&l_13,&l_11,&l_13,&l_13,&l_11,(void*)0,&l_11},{&l_13,&l_13,&l_11,&l_13,&l_13,&l_11,(void*)0,&l_11},{&l_13,&l_13,&l_11,&l_13,&l_13,&l_11,(void*)0,&l_11},{&l_13,&l_13,&l_11,&l_13,&l_13,&l_11,(void*)0,&l_11},{&l_13,&l_13,&l_11,&l_13,&l_13,&l_11,(void*)0,&l_11}},{{&l_13,&l_13,&l_11,&l_13,&l_13,&l_11,(void*)0,&l_11},{&l_13,&l_13,&l_11,&l_13,&l_13,&l_11,(void*)0,&l_11},{&l_13,&l_13,&l_11,&l_13,&l_13,&l_11,(void*)0,&l_11},{&l_13,&l_13,&l_11,&l_13,&l_13,&l_11,(void*)0,&l_11},{&l_13,&l_13,&l_11,&l_13,&l_13,&l_11,(void*)0,&l_11}},{{&l_13,&l_13,&l_11,&l_13,&l_13,&l_11,(void*)0,&l_11},{&l_13,&l_13,&l_11,&l_13,&l_13,&l_11,(void*)0,&l_11},{&l_13,&l_13,&l_11,&l_13,&l_13,&l_11,(void*)0,&l_11},{&l_13,&l_13,&l_11,&l_13,&l_13,&l_11,(void*)0,&l_11},{&l_13,&l_13,&l_11,&l_13,&l_13,&l_11,(void*)0,&l_11}},{{&l_13,&l_13,&l_11,&l_13,&l_13,&l_11,(void*)0,&l_11},{&l_13,&l_13,&l_11,&l_13,&l_13,&l_11,(void*)0,&l_11},{&l_13,&l_13,&l_11,&l_13,&l_13,&l_11,(void*)0,&l_11},{&l_13,&l_13,&l_11,&l_13,&l_13,&l_11,(void*)0,&l_11},{&l_13,&l_13,&l_11,&l_13,&l_13,&l_11,(void*)0,&l_11}}};
    int8_t *l_15[10][1];
    int32_t l_878 = (-1L);
    int16_t l_879[7][6][6] = {{{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L}},{{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L}},{{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L}},{{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L}},{{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L}},{{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L}},{{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L},{0x2D29L,0x46A4L,(-1L),0x63CAL,(-10L),0x0564L}}};
    int64_t *l_880[7][4] = {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}};
    uint64_t l_893 = 18446744073709551606UL;
    int32_t l_914 = 0x28239922L;
    int32_t l_915 = 0x021A046BL;
    int32_t l_919 = 0x636E4E59L;
    int32_t l_920 = 0x1168E8E3L;
    int32_t l_922[10][6] = {{(-1L),7L,0x715ADC31L,7L,(-1L),(-1L)},{(-1L),7L,0x715ADC31L,7L,(-1L),(-1L)},{(-1L),7L,0x715ADC31L,7L,(-1L),(-1L)},{(-1L),7L,0x715ADC31L,7L,(-1L),(-1L)},{(-1L),7L,0x715ADC31L,7L,(-1L),(-1L)},{(-1L),7L,0x715ADC31L,7L,(-1L),(-1L)},{(-1L),7L,0x715ADC31L,7L,(-1L),(-1L)},{(-1L),7L,0x715ADC31L,7L,(-1L),(-1L)},{(-1L),7L,0x715ADC31L,7L,(-1L),(-1L)},{(-1L),7L,0x715ADC31L,7L,(-1L),(-1L)}};
    int16_t l_970 = 0x73F9L;
    int32_t l_987 = 0L;
    uint16_t l_994 = 0x4902L;
    uint8_t l_997 = 1UL;
    uint64_t *l_1007 = &p_1058->g_236[8][0][0].f3.f2;
    uint32_t l_1011 = 0x8A1F6EFAL;
    uint32_t *l_1027 = &p_1058->g_16[0];
    int32_t l_1050 = 0x1DB94D84L;
    int i, j, k;
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 1; j++)
            l_15[i][j] = &p_1058->g_14;
    }
    (**p_1058->g_599) = ((safe_lshift_func_int8_t_s_s(((safe_mul_func_int8_t_s_s(6L, (func_6(p_1058->g_10, l_11, (l_15[0][0] = l_11), p_1058) , (p_1058->g_757.f8 >= (p_1058->g_76[5][3].f0 |= (safe_mod_func_int32_t_s_s((l_878 ^ ((*p_1058->g_595) || (l_878 ^ l_879[4][2][2]))), (*p_1058->g_96)))))))) != (**p_1058->g_594)), l_878)) == l_879[2][2][3]);
    (*p_1058->g_599) = &l_878;
    for (p_1058->g_174.f3 = 0; (p_1058->g_174.f3 > (-26)); p_1058->g_174.f3 = safe_sub_func_int16_t_s_s(p_1058->g_174.f3, 3))
    { /* block id: 458 */
        int8_t l_886 = 0L;
        int32_t l_910 = (-7L);
        int32_t l_912 = 1L;
        int32_t l_913 = 8L;
        int32_t l_917 = 0x2596989BL;
        int32_t l_918 = 0x02A822ECL;
        int32_t l_921 = 0x225DE57AL;
        int32_t l_925[5];
        uint16_t l_926 = 0x68BBL;
        int16_t ****l_948[1][1];
        int16_t ****l_949 = &p_1058->g_947;
        int32_t l_950 = (-2L);
        uint8_t *l_965 = &p_1058->g_228.f3.f7;
        uint8_t *l_966 = &p_1058->g_234.f4;
        uint8_t *l_967 = (void*)0;
        uint8_t *l_968 = &p_1058->g_524[9][3].f3.f7;
        uint8_t *l_969[3][7] = {{(void*)0,(void*)0,&p_1058->g_829.f7,&p_1058->g_104.f7,(void*)0,&p_1058->g_104.f7,&p_1058->g_829.f7},{(void*)0,(void*)0,&p_1058->g_829.f7,&p_1058->g_104.f7,(void*)0,&p_1058->g_104.f7,&p_1058->g_829.f7},{(void*)0,(void*)0,&p_1058->g_829.f7,&p_1058->g_104.f7,(void*)0,&p_1058->g_104.f7,&p_1058->g_829.f7}};
        uint32_t l_971 = 0x1AC82C31L;
        int32_t l_1010 = 0x2ED41B5CL;
        int8_t *l_1043 = &p_1058->g_757.f3;
        int i, j;
        for (i = 0; i < 5; i++)
            l_925[i] = 0L;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 1; j++)
                l_948[i][j] = &p_1058->g_947;
        }
        if (((p_1058->g_226.f0 , (((((safe_mul_func_uint16_t_u_u((p_1058->g_885 , l_886), ((-2L) && l_878))) > ((((void*)0 != &l_13) , (safe_lshift_func_int8_t_s_u((safe_lshift_func_uint16_t_u_u((0x4FC173CBL ^ (safe_rshift_func_uint16_t_u_u(p_1058->g_238.f0, 11))), 1)), l_893))) == p_1058->g_340[8][0].f5)) , l_886) , l_893) || p_1058->g_520[4].f2)) == p_1058->g_757.f1))
        { /* block id: 459 */
            for (p_1058->g_477.f6 = 0; (p_1058->g_477.f6 < 11); ++p_1058->g_477.f6)
            { /* block id: 462 */
                return p_1058->g_817[0];
            }
        }
        else
        { /* block id: 465 */
            int32_t l_909 = 0x15F1D1DAL;
            int32_t l_911[9] = {0x1FA2B5A2L,(-10L),0x1FA2B5A2L,0x1FA2B5A2L,(-10L),0x1FA2B5A2L,0x1FA2B5A2L,(-10L),0x1FA2B5A2L};
            int64_t l_916[6][9] = {{0L,0L,4L,0L,1L,0L,4L,0L,0L},{0L,0L,4L,0L,1L,0L,4L,0L,0L},{0L,0L,4L,0L,1L,0L,4L,0L,0L},{0L,0L,4L,0L,1L,0L,4L,0L,0L},{0L,0L,4L,0L,1L,0L,4L,0L,0L},{0L,0L,4L,0L,1L,0L,4L,0L,0L}};
            int8_t l_924[1][9] = {{5L,5L,5L,5L,5L,5L,5L,5L,5L}};
            int i, j;
            if ((atomic_inc(&p_1058->l_atomic_input[15]) == 8))
            { /* block id: 467 */
                int32_t l_897 = 0x38A30EAAL;
                int32_t *l_896 = &l_897;
                int32_t *l_898 = &l_897;
                int32_t *l_899[7];
                int32_t *l_900 = (void*)0;
                uint32_t l_901[5][2] = {{4294967286UL,4294967286UL},{4294967286UL,4294967286UL},{4294967286UL,4294967286UL},{4294967286UL,4294967286UL},{4294967286UL,4294967286UL}};
                int i, j;
                for (i = 0; i < 7; i++)
                    l_899[i] = &l_897;
                l_896 = (void*)0;
                l_900 = (l_899[0] = l_898);
                l_901[2][1]--;
                unsigned int result = 0;
                result += l_897;
                int l_901_i0, l_901_i1;
                for (l_901_i0 = 0; l_901_i0 < 5; l_901_i0++) {
                    for (l_901_i1 = 0; l_901_i1 < 2; l_901_i1++) {
                        result += l_901[l_901_i0][l_901_i1];
                    }
                }
                atomic_add(&p_1058->l_special_values[15], result);
            }
            else
            { /* block id: 472 */
                (1 + 1);
            }
            if (l_886)
                break;
            for (p_1058->g_174.f1 = 1; (p_1058->g_174.f1 <= 6); p_1058->g_174.f1 += 1)
            { /* block id: 478 */
                int32_t *l_904 = &p_1058->g_741;
                int32_t *l_905 = (void*)0;
                int32_t *l_906 = (void*)0;
                int32_t *l_907 = &l_878;
                int32_t *l_908[2][4][9] = {{{&p_1058->g_62,&p_1058->g_59[3],&l_878,&p_1058->g_741,&l_878,&p_1058->g_59[3],&p_1058->g_62,(void*)0,&p_1058->g_62},{&p_1058->g_62,&p_1058->g_59[3],&l_878,&p_1058->g_741,&l_878,&p_1058->g_59[3],&p_1058->g_62,(void*)0,&p_1058->g_62},{&p_1058->g_62,&p_1058->g_59[3],&l_878,&p_1058->g_741,&l_878,&p_1058->g_59[3],&p_1058->g_62,(void*)0,&p_1058->g_62},{&p_1058->g_62,&p_1058->g_59[3],&l_878,&p_1058->g_741,&l_878,&p_1058->g_59[3],&p_1058->g_62,(void*)0,&p_1058->g_62}},{{&p_1058->g_62,&p_1058->g_59[3],&l_878,&p_1058->g_741,&l_878,&p_1058->g_59[3],&p_1058->g_62,(void*)0,&p_1058->g_62},{&p_1058->g_62,&p_1058->g_59[3],&l_878,&p_1058->g_741,&l_878,&p_1058->g_59[3],&p_1058->g_62,(void*)0,&p_1058->g_62},{&p_1058->g_62,&p_1058->g_59[3],&l_878,&p_1058->g_741,&l_878,&p_1058->g_59[3],&p_1058->g_62,(void*)0,&p_1058->g_62},{&p_1058->g_62,&p_1058->g_59[3],&l_878,&p_1058->g_741,&l_878,&p_1058->g_59[3],&p_1058->g_62,(void*)0,&p_1058->g_62}}};
                int i, j, k;
                l_926--;
                for (p_1058->g_137.f5 = 0; (p_1058->g_137.f5 <= 3); p_1058->g_137.f5 += 1)
                { /* block id: 482 */
                    int i;
                    l_911[p_1058->g_137.f5] = (safe_div_func_int64_t_s_s(0x6B6128BFE2E8AD60L, p_1058->g_342[2].f1));
                    l_911[p_1058->g_137.f5] ^= 0x5A5FCB51L;
                    if ((*p_1058->g_96))
                        continue;
                }
                for (l_920 = 6; (l_920 >= 1); l_920 -= 1)
                { /* block id: 489 */
                    uint16_t l_931 = 0x76D1L;
                    int32_t l_951 = 0x4EC0786DL;
                    int32_t l_954 = 0x1D2961A7L;
                    int32_t l_955 = 1L;
                    for (p_1058->g_757.f1 = 3; (p_1058->g_757.f1 >= 0); p_1058->g_757.f1 -= 1)
                    { /* block id: 492 */
                        uint32_t **l_940 = &p_1058->g_256;
                        uint32_t ****l_941 = &p_1058->g_863[1];
                        int32_t l_952 = 0x59E6D87AL;
                        int32_t l_953[7][9][4] = {{{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)}},{{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)}},{{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)}},{{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)}},{{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)}},{{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)}},{{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)},{0x320FC332L,6L,0L,(-7L)}}};
                        uint16_t l_956[6][8] = {{65529UL,0xD9C5L,0x348BL,65528UL,65535UL,65528UL,0x348BL,0xD9C5L},{65529UL,0xD9C5L,0x348BL,65528UL,65535UL,65528UL,0x348BL,0xD9C5L},{65529UL,0xD9C5L,0x348BL,65528UL,65535UL,65528UL,0x348BL,0xD9C5L},{65529UL,0xD9C5L,0x348BL,65528UL,65535UL,65528UL,0x348BL,0xD9C5L},{65529UL,0xD9C5L,0x348BL,65528UL,65535UL,65528UL,0x348BL,0xD9C5L},{65529UL,0xD9C5L,0x348BL,65528UL,65535UL,65528UL,0x348BL,0xD9C5L}};
                        int i, j, k;
                        l_931++;
                        (*l_907) = (safe_lshift_func_int8_t_s_u((~((safe_div_func_int8_t_s_s((FAKE_DIVERGE(p_1058->group_0_offset, get_group_id(0), 10) == (p_1058->g_885.f8 > ((((void*)0 == l_940) & (FAKE_DIVERGE(p_1058->global_1_offset, get_global_id(1), 10) == (((**l_940) ^= ((((*l_941) = (void*)0) == &p_1058->g_255[8]) > ((safe_lshift_func_uint16_t_u_u((0xBBL > ((*l_907) != (p_1058->g_230.f0 = ((((l_948[0][0] = p_1058->g_946) == l_949) < 18446744073709551609UL) > l_922[3][5])))), 6)) > p_1058->g_662.f1))) , (*p_1058->g_113)))) , 0x7A052843E008B580L))), p_1058->g_174.f2)) != (*p_1058->g_113))), p_1058->g_104.f5));
                        (*p_1058->g_599) = l_904;
                        l_956[0][0]--;
                    }
                    l_922[6][0] = 1L;
                }
            }
        }
        if ((((*l_965) = (p_1058->g_278[3][5] , (safe_lshift_func_uint16_t_u_s(l_879[1][5][0], (safe_lshift_func_uint8_t_u_u((safe_add_func_int8_t_s_s(((~((**p_1058->g_594) || 0x43A3L)) | 0x3C95L), l_893)), (++l_971))))))) | GROUP_DIVERGE(2, 1)))
        { /* block id: 508 */
            int32_t l_984 = 1L;
            int32_t l_985 = 4L;
            int32_t l_986 = 0x0715EFEEL;
            int32_t l_988 = (-5L);
            int32_t l_989 = 1L;
            int32_t l_990 = 0x657A9FB0L;
            int32_t l_991[9] = {0x2DC04FA2L,0x2DC04FA2L,0x2DC04FA2L,0x2DC04FA2L,0x2DC04FA2L,0x2DC04FA2L,0x2DC04FA2L,0x2DC04FA2L,0x2DC04FA2L};
            uint64_t *l_998 = &p_1058->g_231.f3.f2;
            uint64_t *l_999 = &p_1058->g_227[1][6][3].f3.f2;
            uint64_t *l_1000 = &p_1058->g_104.f2;
            int16_t l_1005[5][7] = {{2L,0L,2L,2L,0L,2L,2L},{2L,0L,2L,2L,0L,2L,2L},{2L,0L,2L,2L,0L,2L,2L},{2L,0L,2L,2L,0L,2L,2L},{2L,0L,2L,2L,0L,2L,2L}};
            uint64_t **l_1006[5] = {&l_1000,&l_1000,&l_1000,&l_1000,&l_1000};
            int32_t *l_1008 = &l_985;
            uint32_t l_1009 = 2UL;
            int i, j;
            l_990 = (((**p_1058->g_599) = (safe_lshift_func_uint16_t_u_u(((safe_rshift_func_int8_t_s_s((l_1009 = ((safe_div_func_int32_t_s_s(((safe_sub_func_int16_t_s_s(((**p_1058->g_594) = (+0x7D2AL)), p_1058->g_538[1].f2)) <= (((*l_1008) ^= ((~(!((p_1058->g_477.f7--) > (((l_994 , ((((((((safe_mul_func_int8_t_s_s((l_997 != (l_917 ^= (l_879[4][2][2] , ((l_1007 = (((*p_1058->g_96) ^= ((--(*l_1000)) , (safe_div_func_uint64_t_u_u(l_925[4], (l_1005[2][3] = p_1058->g_228.f0))))) , p_1058->g_443)) != (void*)0)))), l_970)) && 0UL) , l_922[8][4]) ^ 255UL) == p_1058->g_226.f0) == p_1058->g_62) , p_1058->g_174.f4) != 0x60B2L)) , GROUP_DIVERGE(2, 1)) == l_988)))) <= FAKE_DIVERGE(p_1058->local_1_offset, get_local_id(1), 10))) ^ l_915)), GROUP_DIVERGE(2, 1))) <= p_1058->g_104.f3)), 2)) > l_1010), 1))) | l_1011);
            if ((**p_1058->g_599))
                break;
        }
        else
        { /* block id: 521 */
            int64_t l_1036 = 0x4279116706B284D0L;
            int8_t *l_1044[2];
            int16_t l_1047 = (-8L);
            int i;
            for (i = 0; i < 2; i++)
                l_1044[i] = &p_1058->g_477.f3;
            (*p_1058->g_96) ^= (safe_sub_func_uint32_t_u_u(((p_1058->g_1014 , (-8L)) || (safe_add_func_int64_t_s_s((l_919 = ((safe_mod_func_int32_t_s_s((safe_lshift_func_int16_t_s_s((safe_mul_func_int8_t_s_s(0L, (p_1058->g_662.f8 != ((safe_rshift_func_uint8_t_u_s((((((void*)0 != l_1027) != p_1058->g_829.f1) || ((safe_rshift_func_int16_t_s_u((safe_div_func_uint16_t_u_u((safe_add_func_uint16_t_u_u(p_1058->g_829.f4, (safe_sub_func_int8_t_s_s(0L, l_1036)))), FAKE_DIVERGE(p_1058->group_1_offset, get_group_id(1), 10))), l_1036)) <= GROUP_DIVERGE(2, 1))) >= l_925[4]), 6)) && 0UL)))), 15)), 0x65FD0F5EL)) != (*p_1058->g_113))), 0x15B470A8E1393C72L))), l_917));
            (**p_1058->g_599) = ((l_950 & (safe_mod_func_int8_t_s_s(((((*p_1058->g_96) = l_1036) , ((safe_rshift_func_uint16_t_u_u((((l_1043 = (**p_1058->g_531)) != l_1044[0]) , ((safe_add_func_uint32_t_u_u(1UL, 0L)) < 0x65L)), 8)) && (l_1036 <= (l_1047 | (*p_1058->g_96))))) , (**p_1058->g_112)), 0x68L))) ^ l_1011);
            (**p_1058->g_599) = (safe_add_func_int32_t_s_s(l_879[0][2][2], l_1050));
            (**p_1058->g_599) |= 0x181CF336L;
        }
        if (l_1010)
            break;
    }
    if (l_893)
    { /* block id: 532 */
        return p_1058->g_1051;
    }
    else
    { /* block id: 534 */
        for (p_1058->g_104.f7 = 21; (p_1058->g_104.f7 >= 59); p_1058->g_104.f7++)
        { /* block id: 537 */
            if ((atomic_inc(&p_1058->l_atomic_input[5]) == 8))
            { /* block id: 539 */
                uint32_t l_1054 = 1UL;
                l_1054--;
                unsigned int result = 0;
                result += l_1054;
                atomic_add(&p_1058->l_special_values[5], result);
            }
            else
            { /* block id: 541 */
                (1 + 1);
            }
        }
    }
    return p_1058->g_1057;
}


/* ------------------------------------------ */
/* 
 * reads : p_1058->g_829.f8
 * writes:
 */
uint16_t  func_6(int16_t  p_7, int8_t * p_8, int8_t * p_9, struct S3 * p_1058)
{ /* block id: 6 */
    uint16_t l_38 = 0xD1B3L;
    int8_t *l_57 = &p_1058->g_14;
    int32_t l_749 = (-7L);
    int32_t l_798[8][6][4] = {{{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL}},{{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL}},{{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL}},{{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL}},{{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL}},{{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL}},{{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL}},{{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL},{0x784D1022L,(-10L),0x3CA0E691L,0x2051FD8FL}}};
    int32_t l_799 = 0x0A5905CEL;
    int32_t l_825[8][5][3] = {{{0L,0x7AB659ECL,0x7AB659ECL},{0L,0x7AB659ECL,0x7AB659ECL},{0L,0x7AB659ECL,0x7AB659ECL},{0L,0x7AB659ECL,0x7AB659ECL},{0L,0x7AB659ECL,0x7AB659ECL}},{{0L,0x7AB659ECL,0x7AB659ECL},{0L,0x7AB659ECL,0x7AB659ECL},{0L,0x7AB659ECL,0x7AB659ECL},{0L,0x7AB659ECL,0x7AB659ECL},{0L,0x7AB659ECL,0x7AB659ECL}},{{0L,0x7AB659ECL,0x7AB659ECL},{0L,0x7AB659ECL,0x7AB659ECL},{0L,0x7AB659ECL,0x7AB659ECL},{0L,0x7AB659ECL,0x7AB659ECL},{0L,0x7AB659ECL,0x7AB659ECL}},{{0L,0x7AB659ECL,0x7AB659ECL},{0L,0x7AB659ECL,0x7AB659ECL},{0L,0x7AB659ECL,0x7AB659ECL},{0L,0x7AB659ECL,0x7AB659ECL},{0L,0x7AB659ECL,0x7AB659ECL}},{{0L,0x7AB659ECL,0x7AB659ECL},{0L,0x7AB659ECL,0x7AB659ECL},{0L,0x7AB659ECL,0x7AB659ECL},{0L,0x7AB659ECL,0x7AB659ECL},{0L,0x7AB659ECL,0x7AB659ECL}},{{0L,0x7AB659ECL,0x7AB659ECL},{0L,0x7AB659ECL,0x7AB659ECL},{0L,0x7AB659ECL,0x7AB659ECL},{0L,0x7AB659ECL,0x7AB659ECL},{0L,0x7AB659ECL,0x7AB659ECL}},{{0L,0x7AB659ECL,0x7AB659ECL},{0L,0x7AB659ECL,0x7AB659ECL},{0L,0x7AB659ECL,0x7AB659ECL},{0L,0x7AB659ECL,0x7AB659ECL},{0L,0x7AB659ECL,0x7AB659ECL}},{{0L,0x7AB659ECL,0x7AB659ECL},{0L,0x7AB659ECL,0x7AB659ECL},{0L,0x7AB659ECL,0x7AB659ECL},{0L,0x7AB659ECL,0x7AB659ECL},{0L,0x7AB659ECL,0x7AB659ECL}}};
    int32_t *l_866 = &l_798[3][2][3];
    int32_t *l_867 = &p_1058->g_65;
    int32_t *l_868 = &l_798[3][2][3];
    int32_t *l_869 = &l_799;
    int32_t *l_870 = &p_1058->g_65;
    int32_t *l_871 = &l_799;
    int32_t *l_872[7][8][3];
    uint8_t l_873[4][8][1] = {{{253UL},{253UL},{253UL},{253UL},{253UL},{253UL},{253UL},{253UL}},{{253UL},{253UL},{253UL},{253UL},{253UL},{253UL},{253UL},{253UL}},{{253UL},{253UL},{253UL},{253UL},{253UL},{253UL},{253UL},{253UL}},{{253UL},{253UL},{253UL},{253UL},{253UL},{253UL},{253UL},{253UL}}};
    int i, j, k;
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 3; k++)
                l_872[i][j][k] = (void*)0;
        }
    }
    for (p_7 = 0; (p_7 <= 0); p_7 += 1)
    { /* block id: 9 */
        int32_t l_760 = 0x5D88ED56L;
        uint64_t l_761[7] = {0xDC124D96B137CA6AL,9UL,0xDC124D96B137CA6AL,0xDC124D96B137CA6AL,9UL,0xDC124D96B137CA6AL,0xDC124D96B137CA6AL};
        int32_t *l_775 = &p_1058->g_741;
        uint32_t l_780[4] = {0xBAE02745L,0xBAE02745L,0xBAE02745L,0xBAE02745L};
        uint64_t *l_783 = &p_1058->g_784;
        uint16_t *l_789 = &p_1058->g_308;
        int8_t l_818 = 0x7CL;
        int32_t *l_819 = (void*)0;
        int32_t *l_820 = &l_799;
        int32_t l_824 = 2L;
        uint16_t l_826[4];
        int i;
        for (i = 0; i < 4; i++)
            l_826[i] = 0xFD6EL;
        (1 + 1);
    }
    l_873[3][3][0]--;
    return p_1058->g_829.f8;
}


/* ------------------------------------------ */
/* 
 * reads : p_1058->g_137.f6 p_1058->g_59 p_1058->g_475.f1 p_1058->g_363 p_1058->g_364 p_1058->g_443 p_1058->g_127.f5 p_1058->g_594 p_1058->g_596 p_1058->g_598 p_1058->g_340.f0 p_1058->g_595 p_1058->g_477.f1 p_1058->g_96 p_1058->g_65 p_1058->g_477.f4 p_1058->g_174.f6 p_1058->g_343 p_1058->g_104.f5 p_1058->g_127.f2 p_1058->g_532 p_1058->g_113 p_1058->g_104.f3 p_1058->g_662 p_1058->g_173 p_1058->g_477.f3 p_1058->g_699
 * writes: p_1058->g_137.f6 p_1058->g_127.f5 p_1058->g_594 p_1058->g_599 p_1058->g_244.f3.f7 p_1058->g_65 p_1058->g_137.f4 p_1058->g_62 p_1058->g_625 p_1058->g_104.f4 p_1058->g_127.f2 p_1058->g_104.f3 p_1058->g_59 p_1058->g_174 p_1058->g_477.f3 p_1058->g_699
 */
int32_t  func_17(int8_t  p_18, int64_t  p_19, uint64_t  p_20, struct S3 * p_1058)
{ /* block id: 265 */
    int32_t *l_564 = &p_1058->g_62;
    int32_t *l_565 = &p_1058->g_59[5];
    int32_t *l_566 = (void*)0;
    int32_t *l_567 = &p_1058->g_65;
    int32_t *l_568 = &p_1058->g_62;
    int32_t *l_569 = &p_1058->g_65;
    int32_t *l_570 = &p_1058->g_59[5];
    int32_t *l_571[7][2][6] = {{{&p_1058->g_59[5],(void*)0,&p_1058->g_59[5],&p_1058->g_59[5],(void*)0,&p_1058->g_59[5]},{&p_1058->g_59[5],(void*)0,&p_1058->g_59[5],&p_1058->g_59[5],(void*)0,&p_1058->g_59[5]}},{{&p_1058->g_59[5],(void*)0,&p_1058->g_59[5],&p_1058->g_59[5],(void*)0,&p_1058->g_59[5]},{&p_1058->g_59[5],(void*)0,&p_1058->g_59[5],&p_1058->g_59[5],(void*)0,&p_1058->g_59[5]}},{{&p_1058->g_59[5],(void*)0,&p_1058->g_59[5],&p_1058->g_59[5],(void*)0,&p_1058->g_59[5]},{&p_1058->g_59[5],(void*)0,&p_1058->g_59[5],&p_1058->g_59[5],(void*)0,&p_1058->g_59[5]}},{{&p_1058->g_59[5],(void*)0,&p_1058->g_59[5],&p_1058->g_59[5],(void*)0,&p_1058->g_59[5]},{&p_1058->g_59[5],(void*)0,&p_1058->g_59[5],&p_1058->g_59[5],(void*)0,&p_1058->g_59[5]}},{{&p_1058->g_59[5],(void*)0,&p_1058->g_59[5],&p_1058->g_59[5],(void*)0,&p_1058->g_59[5]},{&p_1058->g_59[5],(void*)0,&p_1058->g_59[5],&p_1058->g_59[5],(void*)0,&p_1058->g_59[5]}},{{&p_1058->g_59[5],(void*)0,&p_1058->g_59[5],&p_1058->g_59[5],(void*)0,&p_1058->g_59[5]},{&p_1058->g_59[5],(void*)0,&p_1058->g_59[5],&p_1058->g_59[5],(void*)0,&p_1058->g_59[5]}},{{&p_1058->g_59[5],(void*)0,&p_1058->g_59[5],&p_1058->g_59[5],(void*)0,&p_1058->g_59[5]},{&p_1058->g_59[5],(void*)0,&p_1058->g_59[5],&p_1058->g_59[5],(void*)0,&p_1058->g_59[5]}}};
    uint32_t l_572 = 0x944F48C3L;
    int64_t l_590[4][9][6] = {{{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L},{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L},{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L},{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L},{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L},{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L},{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L},{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L},{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L}},{{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L},{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L},{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L},{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L},{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L},{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L},{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L},{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L},{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L}},{{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L},{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L},{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L},{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L},{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L},{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L},{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L},{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L},{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L}},{{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L},{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L},{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L},{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L},{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L},{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L},{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L},{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L},{1L,0x0C9E2AD9EB282849L,0x21F0BAADC1490A22L,0x0E87705C020277ADL,0x21F0BAADC1490A22L,0x0C9E2AD9EB282849L}}};
    int32_t l_605[6];
    int32_t l_632 = 0x46EE3527L;
    uint16_t l_666[9];
    union U1 *l_685[8] = {&p_1058->g_278[0][1],&p_1058->g_278[0][1],&p_1058->g_278[0][1],&p_1058->g_278[0][1],&p_1058->g_278[0][1],&p_1058->g_278[0][1],&p_1058->g_278[0][1],&p_1058->g_278[0][1]};
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_605[i] = 0L;
    for (i = 0; i < 9; i++)
        l_666[i] = 0x8B9FL;
    --l_572;
    for (p_1058->g_137.f6 = 0; (p_1058->g_137.f6 >= 17); p_1058->g_137.f6 = safe_add_func_uint32_t_u_u(p_1058->g_137.f6, 9))
    { /* block id: 269 */
        uint64_t l_587 = 18446744073709551615UL;
        int8_t **l_593 = (void*)0;
        uint32_t *l_619[9][7] = {{&p_1058->g_200,(void*)0,(void*)0,&p_1058->g_200,(void*)0,(void*)0,&p_1058->g_200},{&p_1058->g_200,(void*)0,(void*)0,&p_1058->g_200,(void*)0,(void*)0,&p_1058->g_200},{&p_1058->g_200,(void*)0,(void*)0,&p_1058->g_200,(void*)0,(void*)0,&p_1058->g_200},{&p_1058->g_200,(void*)0,(void*)0,&p_1058->g_200,(void*)0,(void*)0,&p_1058->g_200},{&p_1058->g_200,(void*)0,(void*)0,&p_1058->g_200,(void*)0,(void*)0,&p_1058->g_200},{&p_1058->g_200,(void*)0,(void*)0,&p_1058->g_200,(void*)0,(void*)0,&p_1058->g_200},{&p_1058->g_200,(void*)0,(void*)0,&p_1058->g_200,(void*)0,(void*)0,&p_1058->g_200},{&p_1058->g_200,(void*)0,(void*)0,&p_1058->g_200,(void*)0,(void*)0,&p_1058->g_200},{&p_1058->g_200,(void*)0,(void*)0,&p_1058->g_200,(void*)0,(void*)0,&p_1058->g_200}};
        int32_t l_621[8] = {0x0AE4DCBFL,0x0AE4DCBFL,0x0AE4DCBFL,0x0AE4DCBFL,0x0AE4DCBFL,0x0AE4DCBFL,0x0AE4DCBFL,0x0AE4DCBFL};
        int32_t l_626[10];
        int64_t l_669 = 0x750ADFBCCB7F2842L;
        int i, j;
        for (i = 0; i < 10; i++)
            l_626[i] = (-1L);
        if ((safe_mod_func_int32_t_s_s(((((((*p_1058->g_443) &= ((((safe_rshift_func_uint8_t_u_u((((safe_sub_func_uint32_t_u_u((safe_lshift_func_int8_t_s_u((safe_rshift_func_int16_t_s_s((~l_587), 14)), 0)), 4294967295UL)) || (p_19 , 3UL)) && ((!(((p_18 == ((safe_add_func_uint32_t_u_u(l_590[1][3][4], (*l_565))) <= ((safe_add_func_uint32_t_u_u(p_1058->g_475.f1, l_587)) | l_587))) , (*p_1058->g_363)) != l_593)) | 0xB447305EL)), GROUP_DIVERGE(0, 1))) >= 248UL) | 4L) | p_20)) , (-5L)) || 6L) , l_587) & 3UL), p_20)))
        { /* block id: 271 */
            int64_t l_597 = 0x526C5C55B30444C2L;
            (*p_1058->g_596) = p_1058->g_594;
            return l_597;
        }
        else
        { /* block id: 274 */
            uint8_t *l_604 = &p_1058->g_244.f3.f7;
            (*p_1058->g_598) = &p_1058->g_259;
            (*l_569) = (safe_mul_func_uint16_t_u_u(p_19, (0L <= ((-1L) & (safe_div_func_uint16_t_u_u((((p_1058->g_443 == (void*)0) || ((*l_604) = 246UL)) || ((l_605[5] , (safe_lshift_func_uint8_t_u_u(((*l_604) = (p_1058->g_443 == p_1058->g_443)), GROUP_DIVERGE(0, 1)))) & (-1L))), (-7L)))))));
        }
        for (p_1058->g_137.f4 = 0; (p_1058->g_137.f4 <= 6); ++p_1058->g_137.f4)
        { /* block id: 282 */
            (*l_564) = 0x60DFD1B0L;
        }
        if ((FAKE_DIVERGE(p_1058->global_1_offset, get_global_id(1), 10) | ((safe_rshift_func_int16_t_s_s((l_587 , ((((safe_div_func_int8_t_s_s((((l_587 >= 0x89267ABBB9EA50C2L) && (safe_unary_minus_func_uint64_t_u(((safe_sub_func_int16_t_s_s(p_18, p_20)) | ((void*)0 != &l_593))))) & 0x159E8BA3L), (safe_mul_func_uint16_t_u_u(0xD21FL, p_1058->g_340[8][0].f0)))) > p_18) , l_564) != l_619[7][4])), (*p_1058->g_595))) ^ 18446744073709551607UL)))
        { /* block id: 285 */
            uint16_t *l_620[7] = {&p_1058->g_308,&p_1058->g_308,&p_1058->g_308,&p_1058->g_308,&p_1058->g_308,&p_1058->g_308,&p_1058->g_308};
            int8_t ****l_624 = &p_1058->g_531;
            int32_t l_627 = 0x7C828623L;
            int32_t l_628 = 0x2BBB3CCAL;
            uint16_t l_629 = 0xF673L;
            int i;
            l_626[8] ^= ((~(((l_621[0] = (0xC7A66C01L < (((*p_1058->g_96) ^ (*l_567)) , p_1058->g_477.f4))) | (0x437EL ^ (safe_sub_func_uint32_t_u_u((((((0x087C31D47CF4BD1DL | FAKE_DIVERGE(p_1058->local_2_offset, get_local_id(2), 10)) , l_624) == (p_1058->g_625 = &p_1058->g_531)) && p_1058->g_174.f6) | p_1058->g_343[9][3]), p_18)))) <= p_20)) > p_1058->g_104.f5);
            --l_629;
            if (p_20)
                break;
        }
        else
        { /* block id: 291 */
            int8_t l_633 = 1L;
            int32_t l_634 = 0x1177DBB4L;
            int32_t l_635 = (-1L);
            int32_t l_636 = 0x47C36E3FL;
            int32_t l_637 = 0x46D518EFL;
            uint32_t l_638[3];
            int32_t l_673[5][5] = {{1L,0x341F0C90L,1L,1L,0x341F0C90L},{1L,0x341F0C90L,1L,1L,0x341F0C90L},{1L,0x341F0C90L,1L,1L,0x341F0C90L},{1L,0x341F0C90L,1L,1L,0x341F0C90L},{1L,0x341F0C90L,1L,1L,0x341F0C90L}};
            union U1 **l_686 = (void*)0;
            union U1 **l_687 = &l_685[5];
            int i, j;
            for (i = 0; i < 3; i++)
                l_638[i] = 0x7A8EF7EBL;
            l_638[0]++;
            for (p_1058->g_104.f4 = 0; (p_1058->g_104.f4 <= 48); p_1058->g_104.f4 = safe_add_func_int8_t_s_s(p_1058->g_104.f4, 6))
            { /* block id: 295 */
                uint32_t l_659[4];
                int32_t l_664 = (-5L);
                int32_t l_670 = 0x09D405E0L;
                int32_t l_672 = 0x5648E23AL;
                int32_t l_674 = 1L;
                int32_t l_675 = 0x0018E1EAL;
                int32_t l_677 = 2L;
                int32_t l_678 = 4L;
                uint64_t l_680 = 18446744073709551610UL;
                int i;
                for (i = 0; i < 4; i++)
                    l_659[i] = 0x005A3B34L;
                if ((atomic_inc(&p_1058->g_atomic_input[27 * get_linear_group_id() + 18]) == 7))
                { /* block id: 297 */
                    uint64_t l_643 = 0xF99EF50DD6A42E78L;
                    uint16_t l_644 = 0x8478L;
                    uint32_t l_645 = 8UL;
                    int32_t l_646 = 0L;
                    int64_t l_647 = 0x18DD9C06D4367444L;
                    int32_t *l_648 = &l_646;
                    int16_t l_649 = 0x344DL;
                    uint32_t l_650 = 0xF3D10E32L;
                    l_647 = (l_643 , (l_646 = (l_644 , l_645)));
                    l_648 = (void*)0;
                    l_650 &= l_649;
                    unsigned int result = 0;
                    result += l_643;
                    result += l_644;
                    result += l_645;
                    result += l_646;
                    result += l_647;
                    result += l_649;
                    result += l_650;
                    atomic_add(&p_1058->g_special_values[27 * get_linear_group_id() + 18], result);
                }
                else
                { /* block id: 302 */
                    (1 + 1);
                }
                for (l_636 = 0; (l_636 <= 3); l_636 += 1)
                { /* block id: 307 */
                    int16_t l_663 = 0x15B8L;
                    int32_t l_665 = (-5L);
                    int32_t l_671 = (-1L);
                    int32_t l_676 = 0x44BABD1BL;
                    int32_t l_679[5][3] = {{0x65D01B00L,(-1L),0x65D01B00L},{0x65D01B00L,(-1L),0x65D01B00L},{0x65D01B00L,(-1L),0x65D01B00L},{0x65D01B00L,(-1L),0x65D01B00L},{0x65D01B00L,(-1L),0x65D01B00L}};
                    int i, j;
                    for (p_1058->g_127.f2 = 2; (p_1058->g_127.f2 <= 7); p_1058->g_127.f2 += 1)
                    { /* block id: 310 */
                        int i;
                        (*l_565) = (((void*)0 == (**p_1058->g_596)) , ((safe_lshift_func_int16_t_s_s((-8L), (safe_div_func_int16_t_s_s((l_621[p_1058->g_127.f2] == ((l_621[(l_636 + 3)] | ((**p_1058->g_532) &= (safe_add_func_int16_t_s_s((l_621[(l_636 + 3)] | l_659[3]), (safe_mod_func_int32_t_s_s(p_18, 4294967295UL)))))) > 0xB083L)), 4L)))) <= GROUP_DIVERGE(2, 1)));
                        (*p_1058->g_173) = p_1058->g_662;
                        if (l_621[0])
                            continue;
                        ++l_666[2];
                    }
                    ++l_680;
                    if (l_621[(l_636 + 1)])
                        break;
                    if ((atomic_inc(&p_1058->l_atomic_input[6]) == 4))
                    { /* block id: 320 */
                        int32_t l_683 = 1L;
                        int32_t *l_684 = &l_621[(l_636 + 2)];
                        int i;
                        l_683 = 0x608C41FCL;
                        l_684 = &l_621[(l_636 + 2)];
                        unsigned int result = 0;
                        result += l_683;
                        atomic_add(&p_1058->l_special_values[6], result);
                    }
                    else
                    { /* block id: 323 */
                        (1 + 1);
                    }
                }
            }
            (*l_687) = l_685[5];
        }
        for (p_1058->g_477.f3 = 0; (p_1058->g_477.f3 != (-28)); p_1058->g_477.f3 = safe_sub_func_uint16_t_u_u(p_1058->g_477.f3, 1))
        { /* block id: 332 */
            int8_t l_690 = 0x56L;
            int16_t l_691 = 0x005BL;
            int32_t l_692 = 0x65B39B76L;
            int32_t l_693 = 0L;
            int8_t l_694[9][3] = {{0x51L,0x5CL,(-1L)},{0x51L,0x5CL,(-1L)},{0x51L,0x5CL,(-1L)},{0x51L,0x5CL,(-1L)},{0x51L,0x5CL,(-1L)},{0x51L,0x5CL,(-1L)},{0x51L,0x5CL,(-1L)},{0x51L,0x5CL,(-1L)},{0x51L,0x5CL,(-1L)}};
            int32_t l_695 = 1L;
            int32_t l_696 = (-10L);
            int i, j;
            for (p_1058->g_127.f5 = 6; (p_1058->g_127.f5 >= 1); p_1058->g_127.f5 -= 1)
            { /* block id: 335 */
                int32_t l_697 = 1L;
                int32_t l_698 = 0x33855686L;
                int i;
                --p_1058->g_699;
                if ((atomic_inc(&p_1058->g_atomic_input[27 * get_linear_group_id() + 17]) == 5))
                { /* block id: 338 */
                    uint8_t l_702 = 251UL;
                    int16_t l_720 = 0x036AL;
                    if ((FAKE_DIVERGE(p_1058->local_1_offset, get_local_id(1), 10) , l_702))
                    { /* block id: 339 */
                        int32_t l_704 = 0x3CC8A687L;
                        int32_t *l_703 = &l_704;
                        int32_t *l_705 = &l_704;
                        uint16_t l_706 = 0x54A6L;
                        int32_t l_707 = 1L;
                        uint16_t l_708 = 5UL;
                        uint32_t l_709 = 0x7B5E87F0L;
                        uint16_t l_710 = 1UL;
                        uint32_t l_711 = 4294967295UL;
                        uint32_t l_712 = 0x7476844DL;
                        int8_t l_713[9] = {0L,0x77L,0L,0L,0x77L,0L,0L,0x77L,0L};
                        uint64_t l_714 = 18446744073709551615UL;
                        int i;
                        l_705 = l_703;
                        l_707 = l_706;
                        l_712 &= ((l_711 = (l_710 = (l_708 , l_709))) , (-8L));
                        l_714 |= (l_713[0] = 0x0E45BA00L);
                    }
                    else
                    { /* block id: 347 */
                        struct S0 l_715 = {18446744073709551607UL,0L,3UL,1L,4294967292UL,9L,0x15EDEFE3L,0x78L,6L};/* VOLATILE GLOBAL l_715 */
                        struct S0 l_716 = {0UL,1L,0x9EF3B86014A01D4BL,2L,4294967295UL,0x33354E299860C47CL,-1L,0UL,3L};/* VOLATILE GLOBAL l_716 */
                        uint16_t l_717 = 7UL;
                        l_716 = l_715;
                        --l_717;
                    }
                    if (l_720)
                    { /* block id: 351 */
                        uint32_t l_721 = 1UL;
                        int8_t l_722[8][7] = {{0x61L,1L,1L,8L,0x2BL,0x1EL,0x00L},{0x61L,1L,1L,8L,0x2BL,0x1EL,0x00L},{0x61L,1L,1L,8L,0x2BL,0x1EL,0x00L},{0x61L,1L,1L,8L,0x2BL,0x1EL,0x00L},{0x61L,1L,1L,8L,0x2BL,0x1EL,0x00L},{0x61L,1L,1L,8L,0x2BL,0x1EL,0x00L},{0x61L,1L,1L,8L,0x2BL,0x1EL,0x00L},{0x61L,1L,1L,8L,0x2BL,0x1EL,0x00L}};
                        uint32_t l_723 = 0xF3E998F3L;
                        uint8_t l_724 = 250UL;
                        uint32_t l_725 = 0x317F5BCCL;
                        int32_t l_726 = 9L;
                        int32_t l_729 = 0x0B4A25A8L;
                        int32_t *l_728[5][7] = {{(void*)0,&l_729,(void*)0,(void*)0,&l_729,(void*)0,(void*)0},{(void*)0,&l_729,(void*)0,(void*)0,&l_729,(void*)0,(void*)0},{(void*)0,&l_729,(void*)0,(void*)0,&l_729,(void*)0,(void*)0},{(void*)0,&l_729,(void*)0,(void*)0,&l_729,(void*)0,(void*)0},{(void*)0,&l_729,(void*)0,(void*)0,&l_729,(void*)0,(void*)0}};
                        int32_t **l_727 = &l_728[0][1];
                        int i, j;
                        l_722[4][1] = l_721;
                        l_726 ^= (l_723 , (l_725 |= l_724));
                        l_727 = (void*)0;
                    }
                    else
                    { /* block id: 356 */
                        uint32_t l_730[3];
                        struct S0 *l_731 = (void*)0;
                        struct S0 *l_732 = (void*)0;
                        int8_t l_733 = (-4L);
                        int32_t l_734[4] = {7L,7L,7L,7L};
                        uint32_t l_735 = 0x971E9A2BL;
                        int32_t *l_736 = &l_734[2];
                        int32_t *l_737 = &l_734[2];
                        int32_t l_738 = 0x2828CAC9L;
                        uint8_t l_739 = 0UL;
                        int i;
                        for (i = 0; i < 3; i++)
                            l_730[i] = 0x54A20F34L;
                        l_730[0] &= 0x4176C815L;
                        l_732 = (l_731 = (void*)0);
                        l_737 = (l_736 = (l_733 , (l_734[2] , (l_735 , (void*)0))));
                        l_739 = l_738;
                    }
                    unsigned int result = 0;
                    result += l_702;
                    result += l_720;
                    atomic_add(&p_1058->g_special_values[27 * get_linear_group_id() + 17], result);
                }
                else
                { /* block id: 364 */
                    (1 + 1);
                }
            }
        }
    }
    return p_20;
}


/* ------------------------------------------ */
/* 
 * reads : p_1058->g_524 p_1058->g_173 p_1058->g_174 p_1058->g_491 p_1058->g_127.f7 p_1058->g_308 p_1058->g_59 p_1058->g_104 p_1058->g_538 p_1058->g_218.f0 p_1058->g_258 p_1058->g_255 p_1058->g_256 p_1058->g_228.f0 p_1058->g_74 p_1058->g_14 p_1058->g_239.f0 p_1058->g_340.f6 p_1058->g_118 p_1058->g_76
 * writes: p_1058->g_174 p_1058->g_531 p_1058->g_308 p_1058->g_59 p_1058->g_91 p_1058->g_96 p_1058->g_62
 */
union U2  func_29(int8_t  p_30, int8_t * p_31, struct S3 * p_1058)
{ /* block id: 252 */
    uint32_t l_521 = 0x685A2A2EL;
    uint32_t **l_525 = &p_1058->g_256;
    int8_t **l_526[6][1] = {{&p_1058->g_346},{&p_1058->g_346},{&p_1058->g_346},{&p_1058->g_346},{&p_1058->g_346},{&p_1058->g_346}};
    int64_t *l_528[8] = {&p_1058->g_220.f0,&p_1058->g_220.f0,&p_1058->g_220.f0,&p_1058->g_220.f0,&p_1058->g_220.f0,&p_1058->g_220.f0,&p_1058->g_220.f0,&p_1058->g_220.f0};
    int64_t **l_527 = &l_528[6];
    int8_t ***l_530 = &l_526[5][0];
    int8_t ****l_529[4] = {&l_530,&l_530,&l_530,&l_530};
    uint32_t l_533 = 0x49CE60CDL;
    uint16_t *l_534 = &p_1058->g_308;
    int32_t *l_535 = &p_1058->g_59[0];
    int64_t l_559[1];
    int32_t l_560 = 0x49AF7551L;
    uint8_t l_561 = 5UL;
    int32_t *l_562 = &p_1058->g_62;
    int i, j;
    for (i = 0; i < 1; i++)
        l_559[i] = 0x6D44976E0D6CBA18L;
    (*p_1058->g_173) = func_68(l_521, ((*l_535) ^= (((~(((*l_534) |= (safe_sub_func_int16_t_s_s((l_533 = (p_1058->g_524[9][3] , ((p_1058->g_531 = ((func_39(&p_30, &p_1058->g_14, p_1058) , p_1058->g_127.f7) , (void*)0)) != &p_1058->g_364))), l_521))) <= l_521)) || l_521) ^ l_521)), p_1058);
    (*l_562) = (((safe_add_func_uint8_t_u_u((~p_30), ((p_1058->g_538[1] , (((*l_535) = (((safe_add_func_int64_t_s_s(((safe_add_func_uint8_t_u_u(((((safe_lshift_func_uint16_t_u_s((safe_add_func_uint8_t_u_u((0UL & p_1058->g_218.f0), (safe_sub_func_uint32_t_u_u((((safe_lshift_func_uint16_t_u_u(p_30, 13)) , (safe_div_func_uint32_t_u_u((&p_1058->g_118 == (((!(((safe_mod_func_int8_t_s_s((safe_mul_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_u(p_30, ((**p_1058->g_258) == (void*)0))), p_1058->g_174.f1)), 1L)) != p_1058->g_228.f0) & p_1058->g_74)) , 255UL) , &p_1058->g_215)), (*l_535)))) || p_1058->g_59[1]), 0x25463B0DL)))), 11)) == GROUP_DIVERGE(2, 1)) < (-1L)) , 7UL), (*p_31))) < l_559[0]), p_1058->g_239.f0)) , (*l_535)) > (*l_535))) , l_560)) >= p_1058->g_174.f5))) ^ p_1058->g_340[8][0].f6) <= l_561);
    return (*p_1058->g_118);
}


/* ------------------------------------------ */
/* 
 * reads : p_1058->g_278 p_1058->g_74 p_1058->g_137.f4 p_1058->g_174.f7 p_1058->g_520 p_1058->g_14
 * writes: p_1058->g_74 p_1058->g_174.f7
 */
int8_t  func_32(uint32_t  p_33, uint32_t  p_34, uint32_t  p_35, int8_t * p_36, int8_t * p_37, struct S3 * p_1058)
{ /* block id: 247 */
    uint32_t l_493 = 0x9E9B1A48L;
    uint8_t *l_494 = (void*)0;
    uint8_t *l_495[3][5] = {{&p_1058->g_137.f7,&p_1058->g_174.f7,&p_1058->g_137.f7,&p_1058->g_137.f7,&p_1058->g_174.f7},{&p_1058->g_137.f7,&p_1058->g_174.f7,&p_1058->g_137.f7,&p_1058->g_137.f7,&p_1058->g_174.f7},{&p_1058->g_137.f7,&p_1058->g_174.f7,&p_1058->g_137.f7,&p_1058->g_137.f7,&p_1058->g_174.f7}};
    int32_t l_496 = 9L;
    uint16_t l_499 = 0xB8CFL;
    int32_t l_508 = 3L;
    int32_t l_509 = (-5L);
    int32_t l_510 = 0x1605FE44L;
    int32_t l_511 = 0x10E5A993L;
    int32_t l_512 = 1L;
    int32_t l_513 = 0x2CB7A77CL;
    int32_t l_514 = 5L;
    int32_t l_515[6] = {3L,3L,3L,3L,3L,3L};
    int i, j;
    l_511 = ((p_1058->g_278[1][4] , (1L ^ (l_493 && (((l_493 < (--p_1058->g_74)) || l_499) && (safe_rshift_func_uint8_t_u_u((p_1058->g_137.f4 || (p_33 , (0x37L <= (safe_div_func_uint16_t_u_u((((safe_lshift_func_int16_t_s_u((safe_add_func_uint8_t_u_u((p_1058->g_174.f7--), (safe_mul_func_int8_t_s_s((p_1058->g_520[4] , l_508), (*p_36))))), l_511)) <= p_35) || l_509), l_511))))), 4)))))) < p_1058->g_14);
    return l_511;
}


/* ------------------------------------------ */
/* 
 * reads : p_1058->g_173 p_1058->g_174 p_1058->g_491
 * writes: p_1058->g_174
 */
union U2  func_39(int8_t * p_40, int8_t * p_41, struct S3 * p_1058)
{ /* block id: 242 */
    uint16_t *l_490 = (void*)0;
    uint16_t **l_489 = &l_490;
    (*p_1058->g_173) = (*p_1058->g_173);
    l_489 = l_489;
    return p_1058->g_491;
}


/* ------------------------------------------ */
/* 
 * reads : p_1058->g_137.f6 p_1058->g_105 p_1058->g_104 p_1058->g_435 p_1058->g_96 p_1058->g_59 p_1058->g_174.f7 p_1058->g_231.f0 p_1058->g_174.f3 p_1058->g_113 p_1058->g_477.f6 p_1058->g_127.f4
 * writes: p_1058->g_137.f6 p_1058->g_231.f0 p_1058->g_104.f3 p_1058->g_174.f3 p_1058->g_243.f3.f2 p_1058->g_59 p_1058->g_96
 */
int8_t * func_42(uint32_t  p_43, int64_t  p_44, int8_t * p_45, int64_t  p_46, uint8_t  p_47, struct S3 * p_1058)
{ /* block id: 107 */
    int32_t l_260 = 1L;
    int32_t l_273 = 0x1AB900E7L;
    int8_t l_286 = 6L;
    uint32_t l_287 = 0UL;
    int32_t *l_369 = &l_273;
    int32_t l_429 = 0x27A63DD0L;
    uint32_t l_431 = 0x39EDFA68L;
    int64_t *l_483[10] = {&p_1058->g_242.f0,&p_1058->g_242.f0,&p_1058->g_242.f0,&p_1058->g_242.f0,&p_1058->g_242.f0,&p_1058->g_242.f0,&p_1058->g_242.f0,&p_1058->g_242.f0,&p_1058->g_242.f0,&p_1058->g_242.f0};
    uint64_t *l_484[6];
    uint32_t l_487 = 0UL;
    int32_t **l_488 = &p_1058->g_96;
    int i;
    for (i = 0; i < 6; i++)
        l_484[i] = &p_1058->g_230.f3.f2;
    for (p_1058->g_137.f6 = 3; (p_1058->g_137.f6 >= 0); p_1058->g_137.f6 -= 1)
    { /* block id: 110 */
        int32_t *l_251 = &p_1058->g_59[0];
        uint32_t *l_253 = (void*)0;
        uint32_t **l_252 = &l_253;
        int8_t **l_412 = &p_1058->g_346;
        int32_t l_422 = 0L;
        int32_t l_424 = (-1L);
        (1 + 1);
    }
    (*p_1058->g_96) = ((*p_1058->g_105) , ((((*l_369) <= (*l_369)) , (safe_mod_func_int8_t_s_s((((**p_1058->g_435) | ((safe_div_func_int64_t_s_s((p_1058->g_231.f0 ^= p_1058->g_174.f7), ((((((*p_45) = ((*p_1058->g_113) ^= ((*l_369) == p_1058->g_174.f3))) , (p_1058->g_243.f3.f2 = p_1058->g_477.f6)) == (safe_rshift_func_uint16_t_u_u(0x3ED0L, (*l_369)))) != p_47) & p_1058->g_127.f4))) , (*p_1058->g_96))) == GROUP_DIVERGE(0, 1)), l_487))) , p_47));
    (*l_488) = &l_273;
    return &p_1058->g_14;
}


/* ------------------------------------------ */
/* 
 * reads : p_1058->g_117 p_1058->g_118 p_1058->g_104 p_1058->g_76 p_1058->g_233.f0 p_1058->g_10 p_1058->g_96 p_1058->g_59 p_1058->g_238.f0
 * writes: p_1058->g_215 p_1058->g_91 p_1058->g_96
 */
uint32_t  func_48(uint32_t  p_49, struct S3 * p_1058)
{ /* block id: 103 */
    int8_t *l_203 = (void*)0;
    int16_t *l_207[9][4][5] = {{{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0},{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0},{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0},{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0}},{{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0},{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0},{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0},{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0}},{{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0},{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0},{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0},{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0}},{{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0},{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0},{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0},{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0}},{{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0},{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0},{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0},{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0}},{{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0},{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0},{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0},{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0}},{{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0},{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0},{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0},{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0}},{{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0},{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0},{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0},{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0}},{{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0},{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0},{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0},{&p_1058->g_137.f1,&p_1058->g_127.f1,&p_1058->g_127.f1,&p_1058->g_174.f1,(void*)0}}};
    int32_t l_214 = 0x284AA03BL;
    union U2 *l_216[6][2][9] = {{{&p_1058->g_239,&p_1058->g_233,&p_1058->g_235,&p_1058->g_244,&p_1058->g_235,&p_1058->g_233,&p_1058->g_239,&p_1058->g_225,&p_1058->g_221},{&p_1058->g_239,&p_1058->g_233,&p_1058->g_235,&p_1058->g_244,&p_1058->g_235,&p_1058->g_233,&p_1058->g_239,&p_1058->g_225,&p_1058->g_221}},{{&p_1058->g_239,&p_1058->g_233,&p_1058->g_235,&p_1058->g_244,&p_1058->g_235,&p_1058->g_233,&p_1058->g_239,&p_1058->g_225,&p_1058->g_221},{&p_1058->g_239,&p_1058->g_233,&p_1058->g_235,&p_1058->g_244,&p_1058->g_235,&p_1058->g_233,&p_1058->g_239,&p_1058->g_225,&p_1058->g_221}},{{&p_1058->g_239,&p_1058->g_233,&p_1058->g_235,&p_1058->g_244,&p_1058->g_235,&p_1058->g_233,&p_1058->g_239,&p_1058->g_225,&p_1058->g_221},{&p_1058->g_239,&p_1058->g_233,&p_1058->g_235,&p_1058->g_244,&p_1058->g_235,&p_1058->g_233,&p_1058->g_239,&p_1058->g_225,&p_1058->g_221}},{{&p_1058->g_239,&p_1058->g_233,&p_1058->g_235,&p_1058->g_244,&p_1058->g_235,&p_1058->g_233,&p_1058->g_239,&p_1058->g_225,&p_1058->g_221},{&p_1058->g_239,&p_1058->g_233,&p_1058->g_235,&p_1058->g_244,&p_1058->g_235,&p_1058->g_233,&p_1058->g_239,&p_1058->g_225,&p_1058->g_221}},{{&p_1058->g_239,&p_1058->g_233,&p_1058->g_235,&p_1058->g_244,&p_1058->g_235,&p_1058->g_233,&p_1058->g_239,&p_1058->g_225,&p_1058->g_221},{&p_1058->g_239,&p_1058->g_233,&p_1058->g_235,&p_1058->g_244,&p_1058->g_235,&p_1058->g_233,&p_1058->g_239,&p_1058->g_225,&p_1058->g_221}},{{&p_1058->g_239,&p_1058->g_233,&p_1058->g_235,&p_1058->g_244,&p_1058->g_235,&p_1058->g_233,&p_1058->g_239,&p_1058->g_225,&p_1058->g_221},{&p_1058->g_239,&p_1058->g_233,&p_1058->g_235,&p_1058->g_244,&p_1058->g_235,&p_1058->g_233,&p_1058->g_239,&p_1058->g_225,&p_1058->g_221}}};
    int32_t l_245 = 0x6E7AD544L;
    int i, j, k;
    l_245 ^= (safe_sub_func_uint64_t_u_u((((l_203 != (void*)0) == (safe_div_func_int64_t_s_s(p_49, ((((((((safe_unary_minus_func_int64_t_s((l_207[6][2][4] != (void*)0))) && (p_49 || ((0xAE3A1A55L != (safe_add_func_uint64_t_u_u(((safe_mod_func_uint64_t_u_u((safe_mod_func_uint64_t_u_u(((func_68(l_214, (((p_1058->g_215 = (*p_1058->g_117)) != l_216[3][0][2]) | 1UL), p_1058) , (**p_1058->g_117)) , 1UL), p_1058->g_233.f0)), p_49)) && 0xC9411BC2L), 0x010679324EF4180CL))) <= p_1058->g_10))) || (*p_1058->g_96)) , l_207[6][2][4]) == (void*)0) | p_49) || p_1058->g_238.f0) & 0x2BL)))) > 0UL), p_49));
    return l_245;
}


/* ------------------------------------------ */
/* 
 * reads : p_1058->g_59 p_1058->g_62 p_1058->g_137.f6 p_1058->g_14 p_1058->g_65 p_1058->g_137.f5
 * writes: p_1058->g_59 p_1058->g_62 p_1058->g_76.f0
 */
int16_t  func_50(int32_t  p_51, int8_t * p_52, int8_t * p_53, int8_t * p_54, struct S3 * p_1058)
{ /* block id: 11 */
    int32_t *l_58[9][1] = {{&p_1058->g_59[0]},{&p_1058->g_59[0]},{&p_1058->g_59[0]},{&p_1058->g_59[0]},{&p_1058->g_59[0]},{&p_1058->g_59[0]},{&p_1058->g_59[0]},{&p_1058->g_59[0]},{&p_1058->g_59[0]}};
    int8_t *l_172 = &p_1058->g_14;
    uint64_t l_195 = 0x3935BCD32BE164FBL;
    int i, j;
    p_1058->g_59[0] &= 0x1D90BCC9L;
    for (p_51 = 0; (p_51 < 4); p_51++)
    { /* block id: 15 */
        uint32_t l_88 = 4294967291UL;
        uint8_t l_126 = 0x00L;
        int32_t *l_128 = &p_1058->g_127.f6;
        int32_t l_131 = 0x21AE95A9L;
        int8_t l_171 = 1L;
        uint32_t l_192 = 0xE4556B4DL;
        int16_t *l_193[5][2][8] = {{{&p_1058->g_137.f1,(void*)0,(void*)0,&p_1058->g_137.f1,(void*)0,(void*)0,&p_1058->g_137.f1,&p_1058->g_174.f1},{&p_1058->g_137.f1,(void*)0,(void*)0,&p_1058->g_137.f1,(void*)0,(void*)0,&p_1058->g_137.f1,&p_1058->g_174.f1}},{{&p_1058->g_137.f1,(void*)0,(void*)0,&p_1058->g_137.f1,(void*)0,(void*)0,&p_1058->g_137.f1,&p_1058->g_174.f1},{&p_1058->g_137.f1,(void*)0,(void*)0,&p_1058->g_137.f1,(void*)0,(void*)0,&p_1058->g_137.f1,&p_1058->g_174.f1}},{{&p_1058->g_137.f1,(void*)0,(void*)0,&p_1058->g_137.f1,(void*)0,(void*)0,&p_1058->g_137.f1,&p_1058->g_174.f1},{&p_1058->g_137.f1,(void*)0,(void*)0,&p_1058->g_137.f1,(void*)0,(void*)0,&p_1058->g_137.f1,&p_1058->g_174.f1}},{{&p_1058->g_137.f1,(void*)0,(void*)0,&p_1058->g_137.f1,(void*)0,(void*)0,&p_1058->g_137.f1,&p_1058->g_174.f1},{&p_1058->g_137.f1,(void*)0,(void*)0,&p_1058->g_137.f1,(void*)0,(void*)0,&p_1058->g_137.f1,&p_1058->g_174.f1}},{{&p_1058->g_137.f1,(void*)0,(void*)0,&p_1058->g_137.f1,(void*)0,(void*)0,&p_1058->g_137.f1,&p_1058->g_174.f1},{&p_1058->g_137.f1,(void*)0,(void*)0,&p_1058->g_137.f1,(void*)0,(void*)0,&p_1058->g_137.f1,&p_1058->g_174.f1}}};
        int32_t l_194 = (-6L);
        int i, j, k;
        p_1058->g_59[2] = (l_58[5][0] != l_58[8][0]);
        for (p_1058->g_62 = (-27); (p_1058->g_62 < (-29)); --p_1058->g_62)
        { /* block id: 19 */
            uint16_t l_89 = 0UL;
            int32_t l_115 = (-8L);
            int8_t *l_159 = &p_1058->g_127.f3;
            int64_t *l_175 = &p_1058->g_137.f5;
            (1 + 1);
        }
        p_1058->g_62 &= (safe_mod_func_int64_t_s_s((((safe_add_func_int64_t_s_s((l_194 = (p_1058->g_76[5][3].f0 = ((l_131 = (~(safe_lshift_func_uint8_t_u_s((safe_add_func_int8_t_s_s((safe_sub_func_uint64_t_u_u(((p_1058->g_137.f6 >= ((safe_add_func_int32_t_s_s(p_51, (~((safe_mod_func_uint16_t_u_u(65529UL, 0xECE6L)) | ((safe_mod_func_uint64_t_u_u(p_51, l_171)) == 0x97256219L))))) , p_51)) && (p_51 , l_192)), l_126)), 0xD1L)), 1)))) > p_1058->g_59[0]))), l_192)) >= (*p_53)) >= p_1058->g_65), l_88));
        if (l_195)
            break;
    }
    if ((atomic_inc(&p_1058->l_atomic_input[9]) == 9))
    { /* block id: 96 */
        int32_t l_196 = 9L;
        uint32_t l_197 = 4294967295UL;
        l_197 = l_196;
        unsigned int result = 0;
        result += l_196;
        result += l_197;
        atomic_add(&p_1058->l_special_values[9], result);
    }
    else
    { /* block id: 98 */
        (1 + 1);
    }
    return p_1058->g_137.f5;
}


/* ------------------------------------------ */
/* 
 * reads : p_1058->g_91 p_1058->g_104
 * writes: p_1058->g_91 p_1058->g_96
 */
struct S0  func_68(uint64_t  p_69, int32_t  p_70, struct S3 * p_1058)
{ /* block id: 25 */
    int32_t **l_97 = (void*)0;
    int32_t *l_99 = &p_1058->g_59[0];
    int32_t *l_100[3];
    uint32_t l_101 = 0xA44C349BL;
    int i;
    for (i = 0; i < 3; i++)
        l_100[i] = (void*)0;
    for (p_1058->g_91 = 0; (p_1058->g_91 == (-2)); p_1058->g_91--)
    { /* block id: 28 */
        int32_t *l_94 = &p_1058->g_59[2];
        int32_t **l_95 = &l_94;
        p_1058->g_96 = ((*l_95) = l_94);
    }
    p_1058->g_96 = &p_1058->g_59[0];
    l_101++;
    return p_1058->g_104;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[27];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 27; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[27];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 27; i++)
            l_special_values[i] = 0;
    struct S3 c_1059;
    struct S3* p_1058 = &c_1059;
    struct S3 c_1060 = {
        0x7BCE008FB0B44CF5L, // p_1058->g_10
        0L, // p_1058->g_14
        {0xA603D2CFL}, // p_1058->g_16
        {1L,1L,1L,1L,1L,1L,1L}, // p_1058->g_59
        (-6L), // p_1058->g_62
        0x1529ABC0L, // p_1058->g_65
        0xF9L, // p_1058->g_74
        {{{0x2A50B6C34CEF870AL},{9L},{-4L},{0x066401EE1831F773L},{9L},{0x066401EE1831F773L},{-4L},{9L},{0x2A50B6C34CEF870AL}},{{0x2A50B6C34CEF870AL},{9L},{-4L},{0x066401EE1831F773L},{9L},{0x066401EE1831F773L},{-4L},{9L},{0x2A50B6C34CEF870AL}},{{0x2A50B6C34CEF870AL},{9L},{-4L},{0x066401EE1831F773L},{9L},{0x066401EE1831F773L},{-4L},{9L},{0x2A50B6C34CEF870AL}},{{0x2A50B6C34CEF870AL},{9L},{-4L},{0x066401EE1831F773L},{9L},{0x066401EE1831F773L},{-4L},{9L},{0x2A50B6C34CEF870AL}},{{0x2A50B6C34CEF870AL},{9L},{-4L},{0x066401EE1831F773L},{9L},{0x066401EE1831F773L},{-4L},{9L},{0x2A50B6C34CEF870AL}},{{0x2A50B6C34CEF870AL},{9L},{-4L},{0x066401EE1831F773L},{9L},{0x066401EE1831F773L},{-4L},{9L},{0x2A50B6C34CEF870AL}},{{0x2A50B6C34CEF870AL},{9L},{-4L},{0x066401EE1831F773L},{9L},{0x066401EE1831F773L},{-4L},{9L},{0x2A50B6C34CEF870AL}},{{0x2A50B6C34CEF870AL},{9L},{-4L},{0x066401EE1831F773L},{9L},{0x066401EE1831F773L},{-4L},{9L},{0x2A50B6C34CEF870AL}},{{0x2A50B6C34CEF870AL},{9L},{-4L},{0x066401EE1831F773L},{9L},{0x066401EE1831F773L},{-4L},{9L},{0x2A50B6C34CEF870AL}},{{0x2A50B6C34CEF870AL},{9L},{-4L},{0x066401EE1831F773L},{9L},{0x066401EE1831F773L},{-4L},{9L},{0x2A50B6C34CEF870AL}}}, // p_1058->g_76
        0L, // p_1058->g_91
        &p_1058->g_59[0], // p_1058->g_96
        (void*)0, // p_1058->g_98
        {0x0E0213BFE599A2C1L,0x4B27L,5UL,0x06L,4294967294UL,-1L,3L,252UL,0x6D92668AL}, // p_1058->g_104
        &p_1058->g_104, // p_1058->g_105
        &p_1058->g_104.f3, // p_1058->g_113
        &p_1058->g_113, // p_1058->g_112
        &p_1058->g_76[4][1], // p_1058->g_118
        &p_1058->g_118, // p_1058->g_117
        {1UL,0x5161L,18446744073709551607UL,0x2DL,0x32A9F6D9L,0x5CF2B2128A055764L,0x6FCB1569L,255UL,0x7BC6739BL}, // p_1058->g_127
        {0x319AEFDAD2A3BAFCL,-5L,18446744073709551609UL,4L,0UL,0x5A50BC8C3AFF28C1L,0x37180226L,1UL,1L}, // p_1058->g_137
        {&p_1058->g_127,&p_1058->g_127,&p_1058->g_127,&p_1058->g_127}, // p_1058->g_163
        &p_1058->g_76[5][3].f3, // p_1058->g_164
        {5UL,0x6530L,0x6A6536C698E71E22L,-1L,0xEF458370L,0L,0x1DFA8A07L,0x03L,5L}, // p_1058->g_174
        &p_1058->g_174, // p_1058->g_173
        4294967290UL, // p_1058->g_200
        &p_1058->g_76[5][3], // p_1058->g_215
        {{{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}}},{{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}}},{{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}}},{{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}}},{{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}}},{{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}}},{{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}}},{{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}}},{{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}},{{0x27B6874CD0BB9275L},{0x4FDA778AEBD939EDL},{0L},{0x7EC641DCC9798B30L}}}}, // p_1058->g_217
        {0x504472EFAD2F496AL}, // p_1058->g_218
        {0x09A8E6CA84D639C4L}, // p_1058->g_219
        {0x18BEC9C2DA4460E2L}, // p_1058->g_220
        {0L}, // p_1058->g_221
        {0L}, // p_1058->g_222
        {{0x243F14258210A6BCL},{-8L},{-1L},{-8L},{0x243F14258210A6BCL},{0x243F14258210A6BCL},{-8L},{-1L},{-8L},{0x243F14258210A6BCL}}, // p_1058->g_223
        {0x234216DBF856E9A2L}, // p_1058->g_224
        {1L}, // p_1058->g_225
        {0x26E4B2847284A475L}, // p_1058->g_226
        {{{{-1L},{0x1D4BE2A8E0DA4C1FL},{0x09EC247854B1952EL},{0x79AD659D5D047F32L},{0x606BD36A48ED7FBBL}},{{-1L},{0x1D4BE2A8E0DA4C1FL},{0x09EC247854B1952EL},{0x79AD659D5D047F32L},{0x606BD36A48ED7FBBL}},{{-1L},{0x1D4BE2A8E0DA4C1FL},{0x09EC247854B1952EL},{0x79AD659D5D047F32L},{0x606BD36A48ED7FBBL}},{{-1L},{0x1D4BE2A8E0DA4C1FL},{0x09EC247854B1952EL},{0x79AD659D5D047F32L},{0x606BD36A48ED7FBBL}},{{-1L},{0x1D4BE2A8E0DA4C1FL},{0x09EC247854B1952EL},{0x79AD659D5D047F32L},{0x606BD36A48ED7FBBL}},{{-1L},{0x1D4BE2A8E0DA4C1FL},{0x09EC247854B1952EL},{0x79AD659D5D047F32L},{0x606BD36A48ED7FBBL}},{{-1L},{0x1D4BE2A8E0DA4C1FL},{0x09EC247854B1952EL},{0x79AD659D5D047F32L},{0x606BD36A48ED7FBBL}}},{{{-1L},{0x1D4BE2A8E0DA4C1FL},{0x09EC247854B1952EL},{0x79AD659D5D047F32L},{0x606BD36A48ED7FBBL}},{{-1L},{0x1D4BE2A8E0DA4C1FL},{0x09EC247854B1952EL},{0x79AD659D5D047F32L},{0x606BD36A48ED7FBBL}},{{-1L},{0x1D4BE2A8E0DA4C1FL},{0x09EC247854B1952EL},{0x79AD659D5D047F32L},{0x606BD36A48ED7FBBL}},{{-1L},{0x1D4BE2A8E0DA4C1FL},{0x09EC247854B1952EL},{0x79AD659D5D047F32L},{0x606BD36A48ED7FBBL}},{{-1L},{0x1D4BE2A8E0DA4C1FL},{0x09EC247854B1952EL},{0x79AD659D5D047F32L},{0x606BD36A48ED7FBBL}},{{-1L},{0x1D4BE2A8E0DA4C1FL},{0x09EC247854B1952EL},{0x79AD659D5D047F32L},{0x606BD36A48ED7FBBL}},{{-1L},{0x1D4BE2A8E0DA4C1FL},{0x09EC247854B1952EL},{0x79AD659D5D047F32L},{0x606BD36A48ED7FBBL}}},{{{-1L},{0x1D4BE2A8E0DA4C1FL},{0x09EC247854B1952EL},{0x79AD659D5D047F32L},{0x606BD36A48ED7FBBL}},{{-1L},{0x1D4BE2A8E0DA4C1FL},{0x09EC247854B1952EL},{0x79AD659D5D047F32L},{0x606BD36A48ED7FBBL}},{{-1L},{0x1D4BE2A8E0DA4C1FL},{0x09EC247854B1952EL},{0x79AD659D5D047F32L},{0x606BD36A48ED7FBBL}},{{-1L},{0x1D4BE2A8E0DA4C1FL},{0x09EC247854B1952EL},{0x79AD659D5D047F32L},{0x606BD36A48ED7FBBL}},{{-1L},{0x1D4BE2A8E0DA4C1FL},{0x09EC247854B1952EL},{0x79AD659D5D047F32L},{0x606BD36A48ED7FBBL}},{{-1L},{0x1D4BE2A8E0DA4C1FL},{0x09EC247854B1952EL},{0x79AD659D5D047F32L},{0x606BD36A48ED7FBBL}},{{-1L},{0x1D4BE2A8E0DA4C1FL},{0x09EC247854B1952EL},{0x79AD659D5D047F32L},{0x606BD36A48ED7FBBL}}},{{{-1L},{0x1D4BE2A8E0DA4C1FL},{0x09EC247854B1952EL},{0x79AD659D5D047F32L},{0x606BD36A48ED7FBBL}},{{-1L},{0x1D4BE2A8E0DA4C1FL},{0x09EC247854B1952EL},{0x79AD659D5D047F32L},{0x606BD36A48ED7FBBL}},{{-1L},{0x1D4BE2A8E0DA4C1FL},{0x09EC247854B1952EL},{0x79AD659D5D047F32L},{0x606BD36A48ED7FBBL}},{{-1L},{0x1D4BE2A8E0DA4C1FL},{0x09EC247854B1952EL},{0x79AD659D5D047F32L},{0x606BD36A48ED7FBBL}},{{-1L},{0x1D4BE2A8E0DA4C1FL},{0x09EC247854B1952EL},{0x79AD659D5D047F32L},{0x606BD36A48ED7FBBL}},{{-1L},{0x1D4BE2A8E0DA4C1FL},{0x09EC247854B1952EL},{0x79AD659D5D047F32L},{0x606BD36A48ED7FBBL}},{{-1L},{0x1D4BE2A8E0DA4C1FL},{0x09EC247854B1952EL},{0x79AD659D5D047F32L},{0x606BD36A48ED7FBBL}}}}, // p_1058->g_227
        {0x11BE41BA474D165CL}, // p_1058->g_228
        {0L}, // p_1058->g_229
        {0x3802C973D22CD79FL}, // p_1058->g_230
        {0x06D9D587327DD6E5L}, // p_1058->g_231
        {0x5242A0BCDF9D4AEBL}, // p_1058->g_232
        {-1L}, // p_1058->g_233
        {0x4B5F97AF9E345E44L}, // p_1058->g_234
        {0x077E666062001FA2L}, // p_1058->g_235
        {{{{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L}},{{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L}}},{{{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L}},{{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L}}},{{{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L}},{{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L}}},{{{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L}},{{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L}}},{{{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L}},{{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L}}},{{{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L}},{{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L}}},{{{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L}},{{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L}}},{{{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L}},{{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L}}},{{{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L}},{{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L},{7L},{0x2C1CEFCD2D91674EL},{7L}}}}, // p_1058->g_236
        {-1L}, // p_1058->g_237
        {1L}, // p_1058->g_238
        {3L}, // p_1058->g_239
        {7L}, // p_1058->g_240
        {0x10FA34F1C786D4D2L}, // p_1058->g_241
        {0x398EA8F6F0768CA9L}, // p_1058->g_242
        {0x3E22147C366842C0L}, // p_1058->g_243
        {-9L}, // p_1058->g_244
        (void*)0, // p_1058->g_248
        (void*)0, // p_1058->g_249
        &p_1058->g_200, // p_1058->g_256
        {&p_1058->g_256,&p_1058->g_256,&p_1058->g_256,&p_1058->g_256,&p_1058->g_256,&p_1058->g_256,&p_1058->g_256,&p_1058->g_256,&p_1058->g_256}, // p_1058->g_255
        {{&p_1058->g_255[2],&p_1058->g_255[2],(void*)0,&p_1058->g_255[2],(void*)0,&p_1058->g_255[2],&p_1058->g_255[2],&p_1058->g_255[2],&p_1058->g_255[2],&p_1058->g_255[2]},{&p_1058->g_255[2],&p_1058->g_255[2],(void*)0,&p_1058->g_255[2],(void*)0,&p_1058->g_255[2],&p_1058->g_255[2],&p_1058->g_255[2],&p_1058->g_255[2],&p_1058->g_255[2]},{&p_1058->g_255[2],&p_1058->g_255[2],(void*)0,&p_1058->g_255[2],(void*)0,&p_1058->g_255[2],&p_1058->g_255[2],&p_1058->g_255[2],&p_1058->g_255[2],&p_1058->g_255[2]},{&p_1058->g_255[2],&p_1058->g_255[2],(void*)0,&p_1058->g_255[2],(void*)0,&p_1058->g_255[2],&p_1058->g_255[2],&p_1058->g_255[2],&p_1058->g_255[2],&p_1058->g_255[2]}}, // p_1058->g_254
        (void*)0, // p_1058->g_257
        &p_1058->g_255[1], // p_1058->g_258
        &p_1058->g_65, // p_1058->g_259
        {{{0x269F62E9FA8222B4L},{0x269F62E9FA8222B4L},{0x6B73DFDAE5E6DA14L},{0x1346069A611628A2L},{-6L},{2L},{-9L}},{{0x269F62E9FA8222B4L},{0x269F62E9FA8222B4L},{0x6B73DFDAE5E6DA14L},{0x1346069A611628A2L},{-6L},{2L},{-9L}},{{0x269F62E9FA8222B4L},{0x269F62E9FA8222B4L},{0x6B73DFDAE5E6DA14L},{0x1346069A611628A2L},{-6L},{2L},{-9L}},{{0x269F62E9FA8222B4L},{0x269F62E9FA8222B4L},{0x6B73DFDAE5E6DA14L},{0x1346069A611628A2L},{-6L},{2L},{-9L}},{{0x269F62E9FA8222B4L},{0x269F62E9FA8222B4L},{0x6B73DFDAE5E6DA14L},{0x1346069A611628A2L},{-6L},{2L},{-9L}},{{0x269F62E9FA8222B4L},{0x269F62E9FA8222B4L},{0x6B73DFDAE5E6DA14L},{0x1346069A611628A2L},{-6L},{2L},{-9L}}}, // p_1058->g_278
        252UL, // p_1058->g_295
        5UL, // p_1058->g_308
        0UL, // p_1058->g_314
        {9UL,0x7954L,0xF1F9397BDFBD8FCFL,-1L,0xE6359CC0L,0x47CB94A13B36195DL,0x4C6A8CD0L,1UL,0x3A9322F4L}, // p_1058->g_316
        &p_1058->g_316, // p_1058->g_317
        {{{18446744073709551614UL,0x63EFL,1UL,1L,8UL,0x7B610229D78A3F00L,0x78D316E8L,252UL,0x366B72EFL}},{{18446744073709551614UL,0x63EFL,1UL,1L,8UL,0x7B610229D78A3F00L,0x78D316E8L,252UL,0x366B72EFL}},{{18446744073709551614UL,0x63EFL,1UL,1L,8UL,0x7B610229D78A3F00L,0x78D316E8L,252UL,0x366B72EFL}},{{18446744073709551614UL,0x63EFL,1UL,1L,8UL,0x7B610229D78A3F00L,0x78D316E8L,252UL,0x366B72EFL}},{{18446744073709551614UL,0x63EFL,1UL,1L,8UL,0x7B610229D78A3F00L,0x78D316E8L,252UL,0x366B72EFL}},{{18446744073709551614UL,0x63EFL,1UL,1L,8UL,0x7B610229D78A3F00L,0x78D316E8L,252UL,0x366B72EFL}},{{18446744073709551614UL,0x63EFL,1UL,1L,8UL,0x7B610229D78A3F00L,0x78D316E8L,252UL,0x366B72EFL}},{{18446744073709551614UL,0x63EFL,1UL,1L,8UL,0x7B610229D78A3F00L,0x78D316E8L,252UL,0x366B72EFL}},{{18446744073709551614UL,0x63EFL,1UL,1L,8UL,0x7B610229D78A3F00L,0x78D316E8L,252UL,0x366B72EFL}},{{18446744073709551614UL,0x63EFL,1UL,1L,8UL,0x7B610229D78A3F00L,0x78D316E8L,252UL,0x366B72EFL}}}, // p_1058->g_340
        {{9UL,0x47C1L,0x6880F5C0070678D7L,-10L,4294967295UL,0x2C81817E7BB51946L,0x78D6F025L,4UL,7L},{9UL,0x47C1L,0x6880F5C0070678D7L,-10L,4294967295UL,0x2C81817E7BB51946L,0x78D6F025L,4UL,7L},{9UL,0x47C1L,0x6880F5C0070678D7L,-10L,4294967295UL,0x2C81817E7BB51946L,0x78D6F025L,4UL,7L},{9UL,0x47C1L,0x6880F5C0070678D7L,-10L,4294967295UL,0x2C81817E7BB51946L,0x78D6F025L,4UL,7L}}, // p_1058->g_342
        {{252UL,252UL,252UL,252UL,252UL,252UL,252UL},{252UL,252UL,252UL,252UL,252UL,252UL,252UL},{252UL,252UL,252UL,252UL,252UL,252UL,252UL},{252UL,252UL,252UL,252UL,252UL,252UL,252UL},{252UL,252UL,252UL,252UL,252UL,252UL,252UL},{252UL,252UL,252UL,252UL,252UL,252UL,252UL},{252UL,252UL,252UL,252UL,252UL,252UL,252UL},{252UL,252UL,252UL,252UL,252UL,252UL,252UL},{252UL,252UL,252UL,252UL,252UL,252UL,252UL},{252UL,252UL,252UL,252UL,252UL,252UL,252UL}}, // p_1058->g_343
        (void*)0, // p_1058->g_346
        4294967295UL, // p_1058->g_362
        (void*)0, // p_1058->g_365
        &p_1058->g_365, // p_1058->g_364
        &p_1058->g_364, // p_1058->g_363
        {&p_1058->g_96,&p_1058->g_96,&p_1058->g_96}, // p_1058->g_434
        &p_1058->g_96, // p_1058->g_435
        &p_1058->g_96, // p_1058->g_442
        &p_1058->g_127.f5, // p_1058->g_443
        {18446744073709551610UL,0x35FBL,0x132A8583C150DC9DL,0x62L,4294967291UL,0x2D41D222DFF457AFL,1L,253UL,-1L}, // p_1058->g_475
        {0xE2938C9E105008FCL,0x51F6L,0xFA6C6651280DB3CBL,0x5FL,0xAFCC14CCL,0x57C7639893BE5045L,0L,250UL,8L}, // p_1058->g_476
        {0UL,-2L,18446744073709551615UL,0x73L,1UL,-1L,0x73AE7F0FL,1UL,3L}, // p_1058->g_477
        &p_1058->g_236[8][0][0].f3, // p_1058->g_478
        {1L}, // p_1058->g_491
        {{0x3CD4D8E173503454L,1L,8UL,-5L,4294967295UL,3L,0L,0x23L,0x06634409L},{0x3CD4D8E173503454L,1L,8UL,-5L,4294967295UL,3L,0L,0x23L,0x06634409L},{0x3CD4D8E173503454L,1L,8UL,-5L,4294967295UL,3L,0L,0x23L,0x06634409L},{0x3CD4D8E173503454L,1L,8UL,-5L,4294967295UL,3L,0L,0x23L,0x06634409L},{0x3CD4D8E173503454L,1L,8UL,-5L,4294967295UL,3L,0L,0x23L,0x06634409L},{0x3CD4D8E173503454L,1L,8UL,-5L,4294967295UL,3L,0L,0x23L,0x06634409L},{0x3CD4D8E173503454L,1L,8UL,-5L,4294967295UL,3L,0L,0x23L,0x06634409L}}, // p_1058->g_520
        {{{0x6C11B1386285FF0CL},{9L},{9L},{0x6C11B1386285FF0CL},{0x6C11B1386285FF0CL},{9L}},{{0x6C11B1386285FF0CL},{9L},{9L},{0x6C11B1386285FF0CL},{0x6C11B1386285FF0CL},{9L}},{{0x6C11B1386285FF0CL},{9L},{9L},{0x6C11B1386285FF0CL},{0x6C11B1386285FF0CL},{9L}},{{0x6C11B1386285FF0CL},{9L},{9L},{0x6C11B1386285FF0CL},{0x6C11B1386285FF0CL},{9L}},{{0x6C11B1386285FF0CL},{9L},{9L},{0x6C11B1386285FF0CL},{0x6C11B1386285FF0CL},{9L}},{{0x6C11B1386285FF0CL},{9L},{9L},{0x6C11B1386285FF0CL},{0x6C11B1386285FF0CL},{9L}},{{0x6C11B1386285FF0CL},{9L},{9L},{0x6C11B1386285FF0CL},{0x6C11B1386285FF0CL},{9L}},{{0x6C11B1386285FF0CL},{9L},{9L},{0x6C11B1386285FF0CL},{0x6C11B1386285FF0CL},{9L}},{{0x6C11B1386285FF0CL},{9L},{9L},{0x6C11B1386285FF0CL},{0x6C11B1386285FF0CL},{9L}},{{0x6C11B1386285FF0CL},{9L},{9L},{0x6C11B1386285FF0CL},{0x6C11B1386285FF0CL},{9L}}}, // p_1058->g_524
        &p_1058->g_113, // p_1058->g_532
        &p_1058->g_532, // p_1058->g_531
        {{0x8C11952B29621CD5L,-1L,0UL,-9L,4UL,1L,0x149704FEL,0xFFL,-9L},{0x8C11952B29621CD5L,-1L,0UL,-9L,4UL,1L,0x149704FEL,0xFFL,-9L}}, // p_1058->g_538
        &p_1058->g_477.f1, // p_1058->g_595
        &p_1058->g_595, // p_1058->g_594
        &p_1058->g_594, // p_1058->g_596
        &p_1058->g_259, // p_1058->g_599
        &p_1058->g_599, // p_1058->g_598
        (void*)0, // p_1058->g_625
        {0xDB8CBA9490EE047BL,0L,0UL,-4L,0x60F0EAC6L,4L,-1L,247UL,0x7136AD5DL}, // p_1058->g_662
        3UL, // p_1058->g_699
        0x1FF77190L, // p_1058->g_741
        {18446744073709551607UL,0x3230L,0xA7B87611C9789CC6L,0x20L,0x4400EAE0L,1L,0x4A66882FL,0xD5L,0L}, // p_1058->g_757
        0xF3E3C5E505B5D78FL, // p_1058->g_784
        {{0x19036C8F82C337C0L},{0x19036C8F82C337C0L},{0x19036C8F82C337C0L},{0x19036C8F82C337C0L},{0x19036C8F82C337C0L}}, // p_1058->g_817
        {0xA04B825C0C37775EL,0L,0UL,1L,4294967295UL,0x7C11207FAE4EFD0CL,-2L,246UL,0x408C33FFL}, // p_1058->g_829
        {&p_1058->g_255[8],&p_1058->g_255[8],&p_1058->g_255[8],&p_1058->g_255[8],&p_1058->g_255[8],&p_1058->g_255[8],&p_1058->g_255[8]}, // p_1058->g_863
        {0xAA0B6DD6E9BF7718L,0x51E4L,0x6FBBD9F4CDCD3279L,0x54L,0x4E47FE97L,0x582E18B30D236C92L,0x311B74D0L,255UL,9L}, // p_1058->g_885
        {{0L,(-2L),0x77C4L,0x6E07L,(-2L),0x6E07L,0x77C4L,(-2L)},{0L,(-2L),0x77C4L,0x6E07L,(-2L),0x6E07L,0x77C4L,(-2L)},{0L,(-2L),0x77C4L,0x6E07L,(-2L),0x6E07L,0x77C4L,(-2L)},{0L,(-2L),0x77C4L,0x6E07L,(-2L),0x6E07L,0x77C4L,(-2L)},{0L,(-2L),0x77C4L,0x6E07L,(-2L),0x6E07L,0x77C4L,(-2L)},{0L,(-2L),0x77C4L,0x6E07L,(-2L),0x6E07L,0x77C4L,(-2L)},{0L,(-2L),0x77C4L,0x6E07L,(-2L),0x6E07L,0x77C4L,(-2L)},{0L,(-2L),0x77C4L,0x6E07L,(-2L),0x6E07L,0x77C4L,(-2L)},{0L,(-2L),0x77C4L,0x6E07L,(-2L),0x6E07L,0x77C4L,(-2L)}}, // p_1058->g_923
        (void*)0, // p_1058->g_947
        &p_1058->g_947, // p_1058->g_946
        {-1L}, // p_1058->g_1014
        {-3L}, // p_1058->g_1051
        {0x5E45FFE36B1E3948L}, // p_1058->g_1057
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
    transparent_crc(p_1058->g_10, "p_1058->g_10", print_hash_value);
    transparent_crc(p_1058->g_14, "p_1058->g_14", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1058->g_16[i], "p_1058->g_16[i]", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1058->g_59[i], "p_1058->g_59[i]", print_hash_value);

    }
    transparent_crc(p_1058->g_62, "p_1058->g_62", print_hash_value);
    transparent_crc(p_1058->g_65, "p_1058->g_65", print_hash_value);
    transparent_crc(p_1058->g_74, "p_1058->g_74", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1058->g_76[i][j].f0, "p_1058->g_76[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1058->g_91, "p_1058->g_91", print_hash_value);
    transparent_crc(p_1058->g_104.f0, "p_1058->g_104.f0", print_hash_value);
    transparent_crc(p_1058->g_104.f1, "p_1058->g_104.f1", print_hash_value);
    transparent_crc(p_1058->g_104.f2, "p_1058->g_104.f2", print_hash_value);
    transparent_crc(p_1058->g_104.f3, "p_1058->g_104.f3", print_hash_value);
    transparent_crc(p_1058->g_104.f4, "p_1058->g_104.f4", print_hash_value);
    transparent_crc(p_1058->g_104.f5, "p_1058->g_104.f5", print_hash_value);
    transparent_crc(p_1058->g_104.f6, "p_1058->g_104.f6", print_hash_value);
    transparent_crc(p_1058->g_104.f7, "p_1058->g_104.f7", print_hash_value);
    transparent_crc(p_1058->g_104.f8, "p_1058->g_104.f8", print_hash_value);
    transparent_crc(p_1058->g_127.f0, "p_1058->g_127.f0", print_hash_value);
    transparent_crc(p_1058->g_127.f1, "p_1058->g_127.f1", print_hash_value);
    transparent_crc(p_1058->g_127.f2, "p_1058->g_127.f2", print_hash_value);
    transparent_crc(p_1058->g_127.f3, "p_1058->g_127.f3", print_hash_value);
    transparent_crc(p_1058->g_127.f4, "p_1058->g_127.f4", print_hash_value);
    transparent_crc(p_1058->g_127.f5, "p_1058->g_127.f5", print_hash_value);
    transparent_crc(p_1058->g_127.f6, "p_1058->g_127.f6", print_hash_value);
    transparent_crc(p_1058->g_127.f7, "p_1058->g_127.f7", print_hash_value);
    transparent_crc(p_1058->g_127.f8, "p_1058->g_127.f8", print_hash_value);
    transparent_crc(p_1058->g_137.f0, "p_1058->g_137.f0", print_hash_value);
    transparent_crc(p_1058->g_137.f1, "p_1058->g_137.f1", print_hash_value);
    transparent_crc(p_1058->g_137.f2, "p_1058->g_137.f2", print_hash_value);
    transparent_crc(p_1058->g_137.f3, "p_1058->g_137.f3", print_hash_value);
    transparent_crc(p_1058->g_137.f4, "p_1058->g_137.f4", print_hash_value);
    transparent_crc(p_1058->g_137.f5, "p_1058->g_137.f5", print_hash_value);
    transparent_crc(p_1058->g_137.f6, "p_1058->g_137.f6", print_hash_value);
    transparent_crc(p_1058->g_137.f7, "p_1058->g_137.f7", print_hash_value);
    transparent_crc(p_1058->g_137.f8, "p_1058->g_137.f8", print_hash_value);
    transparent_crc(p_1058->g_174.f0, "p_1058->g_174.f0", print_hash_value);
    transparent_crc(p_1058->g_174.f1, "p_1058->g_174.f1", print_hash_value);
    transparent_crc(p_1058->g_174.f2, "p_1058->g_174.f2", print_hash_value);
    transparent_crc(p_1058->g_174.f3, "p_1058->g_174.f3", print_hash_value);
    transparent_crc(p_1058->g_174.f4, "p_1058->g_174.f4", print_hash_value);
    transparent_crc(p_1058->g_174.f5, "p_1058->g_174.f5", print_hash_value);
    transparent_crc(p_1058->g_174.f6, "p_1058->g_174.f6", print_hash_value);
    transparent_crc(p_1058->g_174.f7, "p_1058->g_174.f7", print_hash_value);
    transparent_crc(p_1058->g_174.f8, "p_1058->g_174.f8", print_hash_value);
    transparent_crc(p_1058->g_200, "p_1058->g_200", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1058->g_217[i][j][k].f0, "p_1058->g_217[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1058->g_218.f0, "p_1058->g_218.f0", print_hash_value);
    transparent_crc(p_1058->g_219.f0, "p_1058->g_219.f0", print_hash_value);
    transparent_crc(p_1058->g_220.f0, "p_1058->g_220.f0", print_hash_value);
    transparent_crc(p_1058->g_221.f0, "p_1058->g_221.f0", print_hash_value);
    transparent_crc(p_1058->g_222.f0, "p_1058->g_222.f0", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1058->g_223[i].f0, "p_1058->g_223[i].f0", print_hash_value);

    }
    transparent_crc(p_1058->g_224.f0, "p_1058->g_224.f0", print_hash_value);
    transparent_crc(p_1058->g_225.f0, "p_1058->g_225.f0", print_hash_value);
    transparent_crc(p_1058->g_226.f0, "p_1058->g_226.f0", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1058->g_227[i][j][k].f0, "p_1058->g_227[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1058->g_228.f0, "p_1058->g_228.f0", print_hash_value);
    transparent_crc(p_1058->g_229.f0, "p_1058->g_229.f0", print_hash_value);
    transparent_crc(p_1058->g_230.f0, "p_1058->g_230.f0", print_hash_value);
    transparent_crc(p_1058->g_231.f0, "p_1058->g_231.f0", print_hash_value);
    transparent_crc(p_1058->g_232.f0, "p_1058->g_232.f0", print_hash_value);
    transparent_crc(p_1058->g_233.f0, "p_1058->g_233.f0", print_hash_value);
    transparent_crc(p_1058->g_234.f0, "p_1058->g_234.f0", print_hash_value);
    transparent_crc(p_1058->g_235.f0, "p_1058->g_235.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_1058->g_236[i][j][k].f0, "p_1058->g_236[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1058->g_237.f0, "p_1058->g_237.f0", print_hash_value);
    transparent_crc(p_1058->g_238.f0, "p_1058->g_238.f0", print_hash_value);
    transparent_crc(p_1058->g_239.f0, "p_1058->g_239.f0", print_hash_value);
    transparent_crc(p_1058->g_240.f0, "p_1058->g_240.f0", print_hash_value);
    transparent_crc(p_1058->g_241.f0, "p_1058->g_241.f0", print_hash_value);
    transparent_crc(p_1058->g_242.f0, "p_1058->g_242.f0", print_hash_value);
    transparent_crc(p_1058->g_243.f0, "p_1058->g_243.f0", print_hash_value);
    transparent_crc(p_1058->g_244.f0, "p_1058->g_244.f0", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1058->g_278[i][j].f0, "p_1058->g_278[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1058->g_295, "p_1058->g_295", print_hash_value);
    transparent_crc(p_1058->g_308, "p_1058->g_308", print_hash_value);
    transparent_crc(p_1058->g_314, "p_1058->g_314", print_hash_value);
    transparent_crc(p_1058->g_316.f0, "p_1058->g_316.f0", print_hash_value);
    transparent_crc(p_1058->g_316.f1, "p_1058->g_316.f1", print_hash_value);
    transparent_crc(p_1058->g_316.f2, "p_1058->g_316.f2", print_hash_value);
    transparent_crc(p_1058->g_316.f3, "p_1058->g_316.f3", print_hash_value);
    transparent_crc(p_1058->g_316.f4, "p_1058->g_316.f4", print_hash_value);
    transparent_crc(p_1058->g_316.f5, "p_1058->g_316.f5", print_hash_value);
    transparent_crc(p_1058->g_316.f6, "p_1058->g_316.f6", print_hash_value);
    transparent_crc(p_1058->g_316.f7, "p_1058->g_316.f7", print_hash_value);
    transparent_crc(p_1058->g_316.f8, "p_1058->g_316.f8", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1058->g_340[i][j].f0, "p_1058->g_340[i][j].f0", print_hash_value);
            transparent_crc(p_1058->g_340[i][j].f1, "p_1058->g_340[i][j].f1", print_hash_value);
            transparent_crc(p_1058->g_340[i][j].f2, "p_1058->g_340[i][j].f2", print_hash_value);
            transparent_crc(p_1058->g_340[i][j].f3, "p_1058->g_340[i][j].f3", print_hash_value);
            transparent_crc(p_1058->g_340[i][j].f4, "p_1058->g_340[i][j].f4", print_hash_value);
            transparent_crc(p_1058->g_340[i][j].f5, "p_1058->g_340[i][j].f5", print_hash_value);
            transparent_crc(p_1058->g_340[i][j].f6, "p_1058->g_340[i][j].f6", print_hash_value);
            transparent_crc(p_1058->g_340[i][j].f7, "p_1058->g_340[i][j].f7", print_hash_value);
            transparent_crc(p_1058->g_340[i][j].f8, "p_1058->g_340[i][j].f8", print_hash_value);

        }
    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1058->g_342[i].f0, "p_1058->g_342[i].f0", print_hash_value);
        transparent_crc(p_1058->g_342[i].f1, "p_1058->g_342[i].f1", print_hash_value);
        transparent_crc(p_1058->g_342[i].f2, "p_1058->g_342[i].f2", print_hash_value);
        transparent_crc(p_1058->g_342[i].f3, "p_1058->g_342[i].f3", print_hash_value);
        transparent_crc(p_1058->g_342[i].f4, "p_1058->g_342[i].f4", print_hash_value);
        transparent_crc(p_1058->g_342[i].f5, "p_1058->g_342[i].f5", print_hash_value);
        transparent_crc(p_1058->g_342[i].f6, "p_1058->g_342[i].f6", print_hash_value);
        transparent_crc(p_1058->g_342[i].f7, "p_1058->g_342[i].f7", print_hash_value);
        transparent_crc(p_1058->g_342[i].f8, "p_1058->g_342[i].f8", print_hash_value);

    }
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1058->g_343[i][j], "p_1058->g_343[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1058->g_362, "p_1058->g_362", print_hash_value);
    transparent_crc(p_1058->g_475.f0, "p_1058->g_475.f0", print_hash_value);
    transparent_crc(p_1058->g_475.f1, "p_1058->g_475.f1", print_hash_value);
    transparent_crc(p_1058->g_475.f2, "p_1058->g_475.f2", print_hash_value);
    transparent_crc(p_1058->g_475.f3, "p_1058->g_475.f3", print_hash_value);
    transparent_crc(p_1058->g_475.f4, "p_1058->g_475.f4", print_hash_value);
    transparent_crc(p_1058->g_475.f5, "p_1058->g_475.f5", print_hash_value);
    transparent_crc(p_1058->g_475.f6, "p_1058->g_475.f6", print_hash_value);
    transparent_crc(p_1058->g_475.f7, "p_1058->g_475.f7", print_hash_value);
    transparent_crc(p_1058->g_475.f8, "p_1058->g_475.f8", print_hash_value);
    transparent_crc(p_1058->g_476.f0, "p_1058->g_476.f0", print_hash_value);
    transparent_crc(p_1058->g_476.f1, "p_1058->g_476.f1", print_hash_value);
    transparent_crc(p_1058->g_476.f2, "p_1058->g_476.f2", print_hash_value);
    transparent_crc(p_1058->g_476.f3, "p_1058->g_476.f3", print_hash_value);
    transparent_crc(p_1058->g_476.f4, "p_1058->g_476.f4", print_hash_value);
    transparent_crc(p_1058->g_476.f5, "p_1058->g_476.f5", print_hash_value);
    transparent_crc(p_1058->g_476.f6, "p_1058->g_476.f6", print_hash_value);
    transparent_crc(p_1058->g_476.f7, "p_1058->g_476.f7", print_hash_value);
    transparent_crc(p_1058->g_476.f8, "p_1058->g_476.f8", print_hash_value);
    transparent_crc(p_1058->g_477.f0, "p_1058->g_477.f0", print_hash_value);
    transparent_crc(p_1058->g_477.f1, "p_1058->g_477.f1", print_hash_value);
    transparent_crc(p_1058->g_477.f2, "p_1058->g_477.f2", print_hash_value);
    transparent_crc(p_1058->g_477.f3, "p_1058->g_477.f3", print_hash_value);
    transparent_crc(p_1058->g_477.f4, "p_1058->g_477.f4", print_hash_value);
    transparent_crc(p_1058->g_477.f5, "p_1058->g_477.f5", print_hash_value);
    transparent_crc(p_1058->g_477.f6, "p_1058->g_477.f6", print_hash_value);
    transparent_crc(p_1058->g_477.f7, "p_1058->g_477.f7", print_hash_value);
    transparent_crc(p_1058->g_477.f8, "p_1058->g_477.f8", print_hash_value);
    transparent_crc(p_1058->g_491.f0, "p_1058->g_491.f0", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1058->g_520[i].f0, "p_1058->g_520[i].f0", print_hash_value);
        transparent_crc(p_1058->g_520[i].f1, "p_1058->g_520[i].f1", print_hash_value);
        transparent_crc(p_1058->g_520[i].f2, "p_1058->g_520[i].f2", print_hash_value);
        transparent_crc(p_1058->g_520[i].f3, "p_1058->g_520[i].f3", print_hash_value);
        transparent_crc(p_1058->g_520[i].f4, "p_1058->g_520[i].f4", print_hash_value);
        transparent_crc(p_1058->g_520[i].f5, "p_1058->g_520[i].f5", print_hash_value);
        transparent_crc(p_1058->g_520[i].f6, "p_1058->g_520[i].f6", print_hash_value);
        transparent_crc(p_1058->g_520[i].f7, "p_1058->g_520[i].f7", print_hash_value);
        transparent_crc(p_1058->g_520[i].f8, "p_1058->g_520[i].f8", print_hash_value);

    }
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_1058->g_524[i][j].f0, "p_1058->g_524[i][j].f0", print_hash_value);

        }
    }
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1058->g_538[i].f0, "p_1058->g_538[i].f0", print_hash_value);
        transparent_crc(p_1058->g_538[i].f1, "p_1058->g_538[i].f1", print_hash_value);
        transparent_crc(p_1058->g_538[i].f2, "p_1058->g_538[i].f2", print_hash_value);
        transparent_crc(p_1058->g_538[i].f3, "p_1058->g_538[i].f3", print_hash_value);
        transparent_crc(p_1058->g_538[i].f4, "p_1058->g_538[i].f4", print_hash_value);
        transparent_crc(p_1058->g_538[i].f5, "p_1058->g_538[i].f5", print_hash_value);
        transparent_crc(p_1058->g_538[i].f6, "p_1058->g_538[i].f6", print_hash_value);
        transparent_crc(p_1058->g_538[i].f7, "p_1058->g_538[i].f7", print_hash_value);
        transparent_crc(p_1058->g_538[i].f8, "p_1058->g_538[i].f8", print_hash_value);

    }
    transparent_crc(p_1058->g_662.f0, "p_1058->g_662.f0", print_hash_value);
    transparent_crc(p_1058->g_662.f1, "p_1058->g_662.f1", print_hash_value);
    transparent_crc(p_1058->g_662.f2, "p_1058->g_662.f2", print_hash_value);
    transparent_crc(p_1058->g_662.f3, "p_1058->g_662.f3", print_hash_value);
    transparent_crc(p_1058->g_662.f4, "p_1058->g_662.f4", print_hash_value);
    transparent_crc(p_1058->g_662.f5, "p_1058->g_662.f5", print_hash_value);
    transparent_crc(p_1058->g_662.f6, "p_1058->g_662.f6", print_hash_value);
    transparent_crc(p_1058->g_662.f7, "p_1058->g_662.f7", print_hash_value);
    transparent_crc(p_1058->g_662.f8, "p_1058->g_662.f8", print_hash_value);
    transparent_crc(p_1058->g_699, "p_1058->g_699", print_hash_value);
    transparent_crc(p_1058->g_741, "p_1058->g_741", print_hash_value);
    transparent_crc(p_1058->g_757.f0, "p_1058->g_757.f0", print_hash_value);
    transparent_crc(p_1058->g_757.f1, "p_1058->g_757.f1", print_hash_value);
    transparent_crc(p_1058->g_757.f2, "p_1058->g_757.f2", print_hash_value);
    transparent_crc(p_1058->g_757.f3, "p_1058->g_757.f3", print_hash_value);
    transparent_crc(p_1058->g_757.f4, "p_1058->g_757.f4", print_hash_value);
    transparent_crc(p_1058->g_757.f5, "p_1058->g_757.f5", print_hash_value);
    transparent_crc(p_1058->g_757.f6, "p_1058->g_757.f6", print_hash_value);
    transparent_crc(p_1058->g_757.f7, "p_1058->g_757.f7", print_hash_value);
    transparent_crc(p_1058->g_757.f8, "p_1058->g_757.f8", print_hash_value);
    transparent_crc(p_1058->g_784, "p_1058->g_784", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1058->g_817[i].f0, "p_1058->g_817[i].f0", print_hash_value);

    }
    transparent_crc(p_1058->g_829.f0, "p_1058->g_829.f0", print_hash_value);
    transparent_crc(p_1058->g_829.f1, "p_1058->g_829.f1", print_hash_value);
    transparent_crc(p_1058->g_829.f2, "p_1058->g_829.f2", print_hash_value);
    transparent_crc(p_1058->g_829.f3, "p_1058->g_829.f3", print_hash_value);
    transparent_crc(p_1058->g_829.f4, "p_1058->g_829.f4", print_hash_value);
    transparent_crc(p_1058->g_829.f5, "p_1058->g_829.f5", print_hash_value);
    transparent_crc(p_1058->g_829.f6, "p_1058->g_829.f6", print_hash_value);
    transparent_crc(p_1058->g_829.f7, "p_1058->g_829.f7", print_hash_value);
    transparent_crc(p_1058->g_829.f8, "p_1058->g_829.f8", print_hash_value);
    transparent_crc(p_1058->g_885.f0, "p_1058->g_885.f0", print_hash_value);
    transparent_crc(p_1058->g_885.f1, "p_1058->g_885.f1", print_hash_value);
    transparent_crc(p_1058->g_885.f2, "p_1058->g_885.f2", print_hash_value);
    transparent_crc(p_1058->g_885.f3, "p_1058->g_885.f3", print_hash_value);
    transparent_crc(p_1058->g_885.f4, "p_1058->g_885.f4", print_hash_value);
    transparent_crc(p_1058->g_885.f5, "p_1058->g_885.f5", print_hash_value);
    transparent_crc(p_1058->g_885.f6, "p_1058->g_885.f6", print_hash_value);
    transparent_crc(p_1058->g_885.f7, "p_1058->g_885.f7", print_hash_value);
    transparent_crc(p_1058->g_885.f8, "p_1058->g_885.f8", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1058->g_923[i][j], "p_1058->g_923[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1058->g_1014.f0, "p_1058->g_1014.f0", print_hash_value);
    transparent_crc(p_1058->g_1051.f0, "p_1058->g_1051.f0", print_hash_value);
    transparent_crc(p_1058->g_1057.f0, "p_1058->g_1057.f0", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 27; i++)
            transparent_crc(p_1058->g_special_values[i + 27 * get_linear_group_id()], "p_1058->g_special_values[i + 27 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 27; i++)
            transparent_crc(p_1058->l_special_values[i], "p_1058->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
